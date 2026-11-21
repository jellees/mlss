#ifndef EVENT_H
#define EVENT_H

#pragma interface

#define SCRIPT_REGISTER_COUNT 16
#define ENGINE_REGISTER_COUNT 37
#define COMMON_REGISTER_COUNT 8
#define ENGINE_REGISTER_START SCRIPT_REGISTER_COUNT
#define COMMON_REGISTER_START (ENGINE_REGISTER_START + ENGINE_REGISTER_COUNT)
#define REGISTER_COUNT        (COMMON_REGISTER_START + COMMON_REGISTER_COUNT)

#define SAVED_FLAG_COUNT  7008
#define ENGINE_FLAG_COUNT 32
#define SCRIPT_FLAG_COUNT 16
#define ENGINE_FLAG_START SAVED_FLAG_COUNT
#define SCRIPT_FLAG_START (ENGINE_FLAG_START + ENGINE_FLAG_COUNT)
#define FLAG_COUNT        (SCRIPT_FLAG_START + SCRIPT_FLAG_COUNT)

#define SAVED_BYTE_VARIABLE_COUNT     296
#define TEMPORARY_BYTE_VARIABLE_COUNT 32
#define HALFWORD_VARIABLE_COUNT       64
#define SAVED_BYTE_VARIABLE_START     FLAG_COUNT
#define TEMPORARY_BYTE_VARIABLE_START (SAVED_BYTE_VARIABLE_START + SAVED_BYTE_VARIABLE_COUNT)
#define HALFWORD_VARIABLE_START       (TEMPORARY_BYTE_VARIABLE_START + TEMPORARY_BYTE_VARIABLE_COUNT)
#define GLOBAL_VARIABLE_END           (HALFWORD_VARIABLE_START + HALFWORD_VARIABLE_COUNT)

// Size of the result variable ID.
#define RESULT_VARIABLE_BITS 13

// If the size has its most significant bit set, the argument is a 32-bit value (e.g. a pointer).
#define ARGUMENT_ALIGNED_WORD 0x80

struct ScriptSlot;

class CommonEvent {
  public:
    u32 registers[COMMON_REGISTER_COUNT];
    u32 savedFlags[SAVED_FLAG_COUNT / 32];
    u32 fieldEngineFlags[2];
    u16 halfwordVariables[HALFWORD_VARIABLE_COUNT];
    u8 savedByteVariables[SAVED_BYTE_VARIABLE_COUNT];
    u8 temporaryByteVariables[TEMPORARY_BYTE_VARIABLE_COUNT];
    u8* hasResultVariable;
    u8* argumentCount;
    u8* argumentSizes;
    u8* argumentSigns;
    u16* argumentPropertyIndex;

    static CommonEvent* instance;

    static u8* readCommand(ScriptSlot* script, s32* arguments, void* unused, u32* engineRegisters,
                           u32* engineFlags, u32* scriptFlags);
    static u8 getFlag(u32* engineFlags, u32* scriptFlags, u16 flag);
    static void setFlag(u32* engineFlags, u32* scriptFlags, u16 flag, u8 value);
    static u16 getGlobalVariable(u16 id);
    static void setGlobalVariable(u16 id, u16 value);
    static void removeScriptReader();
    static void initScriptReader();
    static u16 decGlobalVariable(u16 id);
    static u16 incGlobalVariable(u16 id);
    static void setRegister(u32* engineRegisters, u32* scriptRegisters, s16 id, u32 value);
    static u32 getRegister(u32* engineRegisters, u32* scriptRegisters, s16 id);
    static void setVariable(u32* engineRegisters, u32* scriptRegisters, u32* engineFlags,
                            u32* scriptFlags, s16 id, u32 value);
    static u32 getVariable(u32* engineRegisters, u32* scriptRegisters, u32* engineFlags,
                           u32* scriptFlags, s16 id);
    static void create();
    static void destroy();
};

#endif // EVENT_H
