#pragma implementation "event.h"

#include "global.h"
#include "common.h"
#include "heap.h"
#include "event/event.h"

CommonEvent* CommonEvent::instance;

static u32 (*sScriptReader)(ScriptSlot* script, s16* bitPosition, int bitCount);

/**
 * Reads the next command.
 *
 * If the command returns a result, the first argument contains the unresolved variable ID for that
 * result.
 *
 * \param arguments The decoded arguments that are part of this opcode.
 * \param engineRegisters The registers 0x10-0x34 of the script engine (field, battle or menu).
 */
u8* CommonEvent::readCommand(ScriptSlot* script, s32* arguments, void* unused, u32* engineRegisters,
                             u32* engineFlags, u32* scriptFlags) {
    ScriptSlot* slot = script;
    s16 bitPosition = 8;
    u32 variableMask;
    int count;
    u8* sizes;
    u8* signs;
    s16 i;

    u8* position = slot->position;

    if (position != 0) {
        slot->commandPosition = position;
        slot->currentOpcode = *position;
        slot->position = position + 1;

        count = instance->argumentCount[slot->currentOpcode];

        if (count != 0) {
            variableMask = sScriptReader(slot, &bitPosition, count);
        }

        if (instance->hasResultVariable[slot->currentOpcode] != 0) {
            *arguments++ = sScriptReader(slot, &bitPosition, RESULT_VARIABLE_BITS);
        }

        if (count != 0) {
            u16 offset = instance->argumentPropertyIndex[slot->currentOpcode];

            sizes = instance->argumentSizes + offset;
            signs = instance->argumentSigns + offset;

            for (i = 0; i < count; i++) {

                // Check if the size of this argument is NOT a 32-bit value.
                if (!(*sizes & ARGUMENT_ALIGNED_WORD)) {
                    s32 value = sScriptReader(slot, &bitPosition, *sizes);

                    // First read the value as a literal.
                    *arguments = value;

                    if (variableMask & (1 << i)) {

                        // Value is a variable ID and retrieves the variable.
                        *arguments = getVariable(engineRegisters, script->registers, engineFlags,
                                                 scriptFlags, value);
                    } else if (*signs == 1) {

                        // Value is a signed literal. Check for the most significant bit. If true the
                        // value signed bit gets extended to make it a proper signed 32-bit.
                        if ((value >> (*sizes - 1)) & 1) {
                            *arguments = (-1 << *sizes) | value;
                        }
                    }
                } else {

                    // Align position to the next byte.
                    if (bitPosition != 8) {
                        slot->position++;
                    }

                    *arguments = *slot->position++;
                    *arguments |= *slot->position++ << 8;
                    *arguments |= *slot->position++ << 16;
                    *arguments |= *slot->position++ << 24;
                    bitPosition = 8;
                }

                sizes++;
                signs++;
                arguments++;
            }
        }

        if (bitPosition != 8) {
            slot->position++;
        }
    }

    return slot->position;
}

/**
 * Gets flag number 0x0000-0x1B8F.
 */
u8 CommonEvent::getFlag(u32* engineFlags, u32* scriptFlags, u16 flag) {
    if (flag < ENGINE_FLAG_START) {
        u16 bit = flag & 0x1F;

        flag = (instance->savedFlags[flag >> 5] >> bit) & 1;
    } else if (flag < SCRIPT_FLAG_START) {
        u16 index = flag - ENGINE_FLAG_START;
        u16 bit = index & 0x1F;

        flag = (engineFlags[index >> 5] >> bit) & 1;
    } else if (flag < FLAG_COUNT) {
        if (scriptFlags != 0) {
            u16 index = flag - SCRIPT_FLAG_START;
            u16 bit = index & 0x1F;

            flag = (scriptFlags[index >> 5] >> bit) & 1;
        } else {
            u16 index = flag - ENGINE_FLAG_START;
            u16 bit = index & 0x1F;

            flag = (engineFlags[index >> 5] >> bit) & 1;
        }
    } else {
        return 0;
    }
    return flag;
}

/**
 * Sets flag number 0x0000-0x1B8F.
 */
void CommonEvent::setFlag(u32* engineFlags, u32* scriptFlags, u16 flag, u8 value) {
    u32* word;
    u16 bit;

    if (flag < ENGINE_FLAG_START) {
        word = &instance->savedFlags[flag >> 5];
    } else if (flag < SCRIPT_FLAG_START) {
        flag -= ENGINE_FLAG_START;
        word = &engineFlags[flag >> 5];
    } else if (flag < FLAG_COUNT) {
        if (scriptFlags != 0) {
            flag -= SCRIPT_FLAG_START;
            word = &scriptFlags[flag >> 5];
        } else {
            flag -= ENGINE_FLAG_START;
            word = &engineFlags[flag >> 5];
        }
    } else {
        return;
    }
    bit = flag & 0x1F;
    *word = (*word & ~(1 << bit)) | ((value & 1) << bit);
}

/**
 * Sets global variable number 0x1B90-0x1D17.
 */
u16 CommonEvent::getGlobalVariable(u16 id) {
    u16 value;

    if (id < TEMPORARY_BYTE_VARIABLE_START) {
        id -= SAVED_BYTE_VARIABLE_START;
        value = instance->savedByteVariables[id];
    } else if (id < HALFWORD_VARIABLE_START) {
        id -= TEMPORARY_BYTE_VARIABLE_START;
        value = instance->temporaryByteVariables[id];
    } else if (id < GLOBAL_VARIABLE_END) {
        id -= HALFWORD_VARIABLE_START;
        value = instance->halfwordVariables[id];
    } else {
        value = 0;
    }
    return value;
}

/**
 * Gets global variable number 0x1B90-0x1D17.
 */
void CommonEvent::setGlobalVariable(u16 id, u16 value) {
    if (id < TEMPORARY_BYTE_VARIABLE_START) {
        id -= SAVED_BYTE_VARIABLE_START;
        instance->savedByteVariables[id] = value;
    } else if (id < HALFWORD_VARIABLE_START) {
        id -= TEMPORARY_BYTE_VARIABLE_START;
        instance->temporaryByteVariables[id] = value;
    } else if (id < GLOBAL_VARIABLE_END) {
        id -= HALFWORD_VARIABLE_START;
        instance->halfwordVariables[id] = value;
    }
}

/**
 * Frees IWRAM copy of the script reader.
 */
void CommonEvent::removeScriptReader() {
    heap_free((void*)sScriptReader);
}

/**
 * Initializes the global script state.
 */
inline void CommonEvent::create() {
    instance = (CommonEvent*)heap_alloc(1, sizeof(CommonEvent), "ACEV");
    dword_3001034(0, instance, sizeof(CommonEvent));
}

/**
 * Destroys the global script state.
 */
inline void CommonEvent::destroy() {
    heap_free(instance);
    instance = 0;
}

/**
 * Copies a copy of the script reader to IWRAM.
 */
void CommonEvent::initScriptReader() {
    sScriptReader = (u32 (*)(ScriptSlot*, s16*, int))heap_alloc(0, sub_8001010 - sub_8000F9C, "MADO");
    CPU_COPY(sub_8000F9C, sScriptReader, (u32)(sub_8001010 - sub_8000F9C), 16);
}

/**
 * Decrements a halfword script variable for locations 0x1CD8-0x1D17.
 */
u16 CommonEvent::decGlobalVariable(u16 id) {
    if (id < GLOBAL_VARIABLE_END) {
        u16 value;

        id -= HALFWORD_VARIABLE_START;
        value = instance->halfwordVariables[id];
        if (value != 0) {
            value--;
        }
        instance->halfwordVariables[id] = value;
        return value;
    }
    return 0;
}

/**
 * Increments a halfword script variable for locations 0x1CD8-0x1D17.
 */
u16 CommonEvent::incGlobalVariable(u16 id) {
    if (id < GLOBAL_VARIABLE_END) {
        u16 value;

        id -= HALFWORD_VARIABLE_START;
        value = instance->halfwordVariables[id];
        if (value < 0xFFFF) {
            value++;
        }
        instance->halfwordVariables[id] = value;
        return value;
    }
    return 0;
}

/**
 * Sets register value from space 0x0000-0x003C.
 */
void CommonEvent::setRegister(u32* engineRegisters, u32* scriptRegisters, s16 id, u32 value) {
    if (id < ENGINE_REGISTER_START) {
        scriptRegisters[id] = value;
    } else if (id < COMMON_REGISTER_START) {
        engineRegisters[id - ENGINE_REGISTER_START] = value;
    } else {
        instance->registers[id - COMMON_REGISTER_START] = value;
    }
}

/**
 * Gets register value from space 0x0000-0x003C.
 */
u32 CommonEvent::getRegister(u32* engineRegisters, u32* scriptRegisters, s16 id) {
    if (id < ENGINE_REGISTER_START) {
        return scriptRegisters[id];
    } else if (id < COMMON_REGISTER_START) {
        return engineRegisters[id - ENGINE_REGISTER_START];
    } else {
        return instance->registers[id - COMMON_REGISTER_START];
    }
}

/**
 * Resolves variable ID and sets value at location.
 *
 * Registers:   0x0000-0x003C.
 * Flags:       0x003D-0x1BCC.
 * Variables:   0x1BCD-0x1D54.
 */
void CommonEvent::setVariable(u32* engineRegisters, u32* scriptRegisters, u32* engineFlags,
                              u32* scriptFlags, s16 id, u32 value) {
    if (id < REGISTER_COUNT) {
        setRegister(engineRegisters, scriptRegisters, id, value);
    } else {
        id -= REGISTER_COUNT;

        if (id < FLAG_COUNT) {
            setFlag(engineFlags, scriptFlags, id, value);
        } else if (id < GLOBAL_VARIABLE_END) {
            setGlobalVariable(id, value);
        }
    }
}

/**
 * Resolves variable ID and returns value from that location.
 *
 * Registers:   0x0000-0x003C.
 * Flags:       0x003D-0x1BCC.
 * Variables:   0x1BCD-0x1D54.
 */
u32 CommonEvent::getVariable(u32* engineRegisters, u32* scriptRegisters, u32* engineFlags,
                             u32* scriptFlags, s16 id) {
    if (id < REGISTER_COUNT) {
        return getRegister(engineRegisters, scriptRegisters, id);
    }

    id -= REGISTER_COUNT;

    if (id < FLAG_COUNT) {
        return getFlag(engineFlags, scriptFlags, id);
    } else if (id < GLOBAL_VARIABLE_END) {
        return getGlobalVariable(id);
    }

    return 0;
}
