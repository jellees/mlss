#ifndef EVENT_H
#define EVENT_H

#pragma interface

// Script variable IDs: 0-0x3C are registers (getRegister): unsaved 32-bit values. The others are
// REGISTER_COUNT + a flag (getFlag) or global variable (getGlobalVariable) number.
#define SCRIPT_REGISTER_COUNT 16 // Per script (ScriptSlot::registers)
#define ENGINE_REGISTER_COUNT 37 // Per engine (engineRegisters)
#define COMMON_REGISTER_COUNT 8  // All engines (CommonEvent::registers)
#define ENGINE_REGISTER_START SCRIPT_REGISTER_COUNT
#define COMMON_REGISTER_START (ENGINE_REGISTER_START + ENGINE_REGISTER_COUNT)
#define REGISTER_COUNT        (COMMON_REGISTER_START + COMMON_REGISTER_COUNT)

// Flag numbers. Only the saved flags are part of the save data.
#define SAVED_FLAG_COUNT  7008 // CommonEvent::field_20
#define ENGINE_FLAG_COUNT 32   // engineFlags
#define SCRIPT_FLAG_COUNT 16   // scriptFlags (or the second word of engineFlags)
#define ENGINE_FLAG_START SAVED_FLAG_COUNT
#define SCRIPT_FLAG_START (ENGINE_FLAG_START + ENGINE_FLAG_COUNT)
#define FLAG_COUNT        (SCRIPT_FLAG_START + SCRIPT_FLAG_COUNT)

// Global variable numbers, which continue after the flags. The saved byte and halfword variables are
// part of the save data.
#define SAVED_BYTE_VARIABLE_COUNT     296
#define TEMPORARY_BYTE_VARIABLE_COUNT 32
#define HALFWORD_VARIABLE_COUNT       64
#define SAVED_BYTE_VARIABLE_START     FLAG_COUNT
#define TEMPORARY_BYTE_VARIABLE_START (SAVED_BYTE_VARIABLE_START + SAVED_BYTE_VARIABLE_COUNT)
#define HALFWORD_VARIABLE_START       (TEMPORARY_BYTE_VARIABLE_START + TEMPORARY_BYTE_VARIABLE_COUNT)
#define GLOBAL_VARIABLE_END           (HALFWORD_VARIABLE_START + HALFWORD_VARIABLE_COUNT)

// Script commands (readCommand)
#define RESULT_VARIABLE_BITS  13   // Size of the result variable ID that precedes the arguments
#define ARGUMENT_ALIGNED_WORD 0x80 // Argument size flag: a byte-aligned u32, not a bit field

struct ScriptSlot;

// The script state shared by the field, battle and menu scripts ("ACEV": probably "common event"):
// flags, variables, registers and the command decoding tables. There is one instance, created by
// create(). All functions of event.cpp are static members; they use the instance pointer, never a
// this pointer.
class CommonEvent {
  public:
    // Registers 0x35-0x3C. Field scripts use them to pass values to battle scripts (e.g. the index of
    // the field object that starts a battle), since the engine registers don't survive the switch.
    u32 registers[COMMON_REGISTER_COUNT];
    u32 field_20[SAVED_FLAG_COUNT / 32];         // Flags 0-0x1B5F
    u32 field_38C[2];                            // Flags 0x1B60-0x1B8F (passed to getFlag)
    u16 field_394[HALFWORD_VARIABLE_COUNT];      // Variables 0x1CD8-0x1D17 (getGlobalVariable)
    u8 field_414[SAVED_BYTE_VARIABLE_COUNT];     // Variables 0x1B90-0x1CB7
    u8 field_53C[TEMPORARY_BYTE_VARIABLE_COUNT]; // Variables 0x1CB8-0x1CD7
    u8* field_55C;     // Per opcode: whether a 13-bit value precedes the arguments
    u8* argumentCount; // Per opcode: argument count
    u8* field_564;     // Per argument: size in bits (bit 7: raw 32-bit value)
    u8* field_568;     // Per argument: 1 = signed
    u16* field_56C;    // Per opcode: index of its first argument in field_564/field_568

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
