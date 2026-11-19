#pragma implementation "event.h"
#include "global.h"
#include "common.h"
#include "heap.h"
#include "event/event.h"

CommonEvent* CommonEvent::instance;
u32 (*CommonEvent::dword_3000FC4)(ScriptSlot* script, s16* bitPosition, int bitCount);

// Reads the next command of the script: stores its opcode in field_A7 and decodes its arguments
// into command, then returns the new read position. The arguments are bit-packed (bitPosition is
// the position in the current byte, 8 = byte-aligned); the tables in instance give their count
// and sizes per opcode. The first value read is a mask of the arguments that are variable numbers
// to look up (sub_80E9CA8, which uses shared, flags and flags2) instead of literal values. arg2 is
// unused (the callers pass instance).
//! Possible fake match: the `slot` copy of `script` (the original keeps the parameter on the stack
//! for the sub_80E9CA8 call and a copy in r5 for everything else).
u8* CommonEvent::script_read_next_line(ScriptSlot* script, s32* command, void* arg2, u32* shared,
                                       u32* flags, u32* flags2) {
    ScriptSlot* slot = script;
    s16 bitPosition = 8;
    u32 variableMask;
    int count;
    u8* sizes;
    u8* signs;
    s16 i;
    u8* position = slot->field_0;

    if (position != 0) {
        slot->field_14 = position;
        slot->field_A7 = *position;
        slot->field_0 = position + 1;

        count = instance->field_560[slot->field_A7];
        if (count != 0) {
            variableMask = dword_3000FC4(slot, &bitPosition, count);
        }
        if (instance->field_55C[slot->field_A7] != 0) {
            *command++ = dword_3000FC4(slot, &bitPosition, 13);
        }
        if (count != 0) {
            u16 offset = instance->field_56C[slot->field_A7];

            sizes = instance->field_564 + offset;
            signs = instance->field_568 + offset;

            for (i = 0; i < count; i++) {
                if (!(*sizes & 0x80)) {
                    s32 value = dword_3000FC4(slot, &bitPosition, *sizes);

                    *command = value;
                    // Variable, signed value or unsigned value
                    if (variableMask & (1 << i)) {
                        *command = sub_80E9CA8(shared, script->field_18, flags, flags2, value);
                    } else if (*signs == 1) {
                        if ((value >> (*sizes - 1)) & 1) {
                            *command = (-1 << *sizes) | value;
                        }
                    }
                } else {
                    // Byte-aligned 32-bit value
                    if (bitPosition != 8) {
                        slot->field_0++;
                    }
                    *command = *slot->field_0++;
                    *command |= *slot->field_0++ << 8;
                    *command |= *slot->field_0++ << 16;
                    *command |= *slot->field_0++ << 24;
                    bitPosition = 8;
                }
                sizes++;
                signs++;
                command++;
            }
        }
        if (bitPosition != 8) {
            slot->field_0++;
        }
    }
    return slot->field_0;
}

// Returns the value of a flag. Flags up to 0x1B5F are in instance, 0x1B60-0x1B7F in arg0 and
// 0x1B80-0x1B8F in arg1 (or in arg0, after the others, if arg1 is null).
//! Possible fake match: the result has to be stored in `flag` (a separate local doesn't match).
u8 CommonEvent::sub_80E98C0(u32* arg0, u32* arg1, u16 flag) {
    if (flag < 0x1B60) {
        u16 bit = flag & 0x1F;

        flag = (instance->field_20[flag >> 5] >> bit) & 1;
    } else if (flag < 0x1B80) {
        u16 index = flag - 0x1B60;
        u16 bit = index & 0x1F;

        flag = (arg0[index >> 5] >> bit) & 1;
    } else if (flag < 0x1B90) {
        if (arg1 != 0) {
            u16 index = flag - 0x1B80;
            u16 bit = index & 0x1F;

            flag = (arg1[index >> 5] >> bit) & 1;
        } else {
            u16 index = flag - 0x1B60;
            u16 bit = index & 0x1F;

            flag = (arg0[index >> 5] >> bit) & 1;
        }
    } else {
        return 0;
    }
    return flag;
}

// Sets the value of a flag (see sub_80E98C0 for where the flags are).
void CommonEvent::sub_80E9958(u32* arg0, u32* arg1, u16 flag, u8 value) {
    u32* word;
    u16 bit;

    if (flag < 0x1B60) {
        word = &instance->field_20[flag >> 5];
    } else if (flag < 0x1B80) {
        flag -= 0x1B60;
        word = &arg0[flag >> 5];
    } else if (flag < 0x1B90) {
        if (arg1 != 0) {
            flag -= 0x1B80;
            word = &arg1[flag >> 5];
        } else {
            flag -= 0x1B60;
            word = &arg0[flag >> 5];
        }
    } else {
        return;
    }
    bit = flag & 0x1F;
    *word = (*word & ~(1 << bit)) | ((value & 1) << bit);
}

// Returns the value of a script variable: a byte for 0x1B90-0x1CD7, a halfword for 0x1CD8-0x1D17.
// There is no lower bound check (sub_80E9CA8 only passes 0x1B90 and up).
u16 CommonEvent::sub_80E99E0(u16 id) {
    u16 value;

    if (id < 0x1CB8) {
        id -= 0x1B90;
        value = instance->field_414[id];
    } else if (id < 0x1CD8) {
        id -= 0x1CB8;
        value = instance->field_53C[id];
    } else if (id < 0x1D18) {
        id -= 0x1CD8;
        value = instance->field_394[id];
    } else {
        value = 0;
    }
    return value;
}

// Sets a script variable (see sub_80E99E0); the byte variables keep the low 8 bits of value.
void CommonEvent::sub_80E9A6C(u16 id, u16 value) {
    if (id < 0x1CB8) {
        id -= 0x1B90;
        instance->field_414[id] = value;
    } else if (id < 0x1CD8) {
        id -= 0x1CB8;
        instance->field_53C[id] = value;
    } else if (id < 0x1D18) {
        id -= 0x1CD8;
        instance->field_394[id] = value;
    }
}

// Frees the IWRAM copy of the script bit reader.
void CommonEvent::sub_80E9AF8() {
    heap_free((void*)dword_3000FC4);
}

// Allocates the script state and clears it. Inline (as is destroy), so its out-of-line copy comes
// after every other function of this file, but its "ACEV" is emitted here, before "MADO".
inline void CommonEvent::create() {
    instance = (CommonEvent*)heap_alloc(1, 0x570, "ACEV");
    dword_3001034(0, instance, 0x570);
}

// Frees the script state.
inline void CommonEvent::destroy() {
    heap_free(instance);
    instance = 0;
}

// Copies the script bit reader (ARM code) to IWRAM, which is faster than ROM, and points
// dword_3000FC4 at the copy.
void CommonEvent::sub_80E9B0C() {
    dword_3000FC4 = (u32 (*)(ScriptSlot*, s16*, int))heap_alloc(0, sub_8001010 - sub_8000F9C, "MADO");
    CPU_COPY(sub_8000F9C, dword_3000FC4, (u32)(sub_8001010 - sub_8000F9C), 16);
}

// Decrements a halfword script variable (0x1CD8-0x1D17, see sub_80E99E0), stopping at 0, and
// returns the new value. Unused.
u16 CommonEvent::sub_80E9B48(u16 id) {
    if (id < 0x1D18) {
        u16 value;

        id -= 0x1CD8;
        value = instance->field_394[id];
        if (value != 0) {
            value--;
        }
        instance->field_394[id] = value;
        return value;
    }
    return 0;
}

// Increments a halfword script variable, stopping at 0xFFFF, and returns the new value.
u16 CommonEvent::sub_80E9B8C(u16 id) {
    if (id < 0x1D18) {
        u16 value;

        id -= 0x1CD8;
        value = instance->field_394[id];
        if (value < 0xFFFF) {
            value++;
        }
        instance->field_394[id] = value;
        return value;
    }
    return 0;
}

// Sets a script local (see sub_80E9C14).
void CommonEvent::sub_80E9BD8(u32* shared, u32* local, s16 id, u32 value) {
    if (id < 0x10) {
        local[id] = value;
    } else if (id < 0x35) {
        shared[id - 0x10] = value;
    } else {
        instance->field_0[id - 0x35] = value;
    }
}

// Returns a script local: 0-0xF are the script's own (local, ScriptSlot::field_18), 0x10-0x34 are
// in shared (dword_3000FD0 + 0x4B0 for field scripts) and 0x35-0x3C in instance. There is no
// upper bound check (sub_80E9CA8 only passes up to 0x3C).
u32 CommonEvent::sub_80E9C14(u32* shared, u32* local, s16 id) {
    if (id < 0x10) {
        return local[id];
    } else if (id < 0x35) {
        return shared[id - 0x10];
    } else {
        return instance->field_0[id - 0x35];
    }
}

// Sets a script value by ID: a local (0-0x3C, sub_80E9BD8), else ID - 0x3D is a flag (sub_80E9958,
// with flags/flags2 as its extra flag words) or a variable (sub_80E9A6C). The counterpart of
// sub_80E9CA8.
void CommonEvent::sub_80E9C4C(u32* shared, u32* local, u32* flags, u32* flags2, s16 id, u32 value) {
    if (id <= 0x3C) {
        sub_80E9BD8(shared, local, id, value);
    } else {
        id -= 0x3D;
        if (id <= 0x1B8F) {
            sub_80E9958(flags, flags2, id, value);
        } else if (id <= 0x1D17) {
            sub_80E9A6C(id, value);
        }
    }
}

// Returns a script value by ID (see sub_80E9C4C): a local, a flag or a variable; 0 for an invalid ID.
u32 CommonEvent::sub_80E9CA8(u32* shared, u32* local, u32* flags, u32* flags2, s16 id) {
    if (id <= 0x3C) {
        return sub_80E9C14(shared, local, id);
    }
    id -= 0x3D;
    if (id <= 0x1B8F) {
        return sub_80E98C0(flags, flags2, id);
    } else if (id <= 0x1D17) {
        return sub_80E99E0(id);
    }
    return 0;
}
