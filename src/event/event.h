#ifndef EVENT_H
#define EVENT_H

#pragma interface

// Script variable IDs: 0-0x3C are local variables (getLocalVariable), the others are
// LOCAL_VARIABLE_COUNT + a flag (getFlag) or global variable (getGlobalVariable) number.
#define SCRIPT_LOCAL_VARIABLE_COUNT 16 // Per script (ScriptSlot::locals)
#define ENGINE_LOCAL_VARIABLE_COUNT 37 // Per engine (engineLocals)
#define COMMON_LOCAL_VARIABLE_COUNT 8  // All engines (CommonEvent::field_0)
#define ENGINE_LOCAL_VARIABLE_START SCRIPT_LOCAL_VARIABLE_COUNT
#define COMMON_LOCAL_VARIABLE_START (ENGINE_LOCAL_VARIABLE_START + ENGINE_LOCAL_VARIABLE_COUNT)
#define LOCAL_VARIABLE_COUNT        (COMMON_LOCAL_VARIABLE_START + COMMON_LOCAL_VARIABLE_COUNT)

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
#define RESULT_VARIABLE_BITS 13   // Size of the result variable ID that precedes the arguments
#define ARGUMENT_SIZE_RAW    0x80 // Argument size entry: a byte-aligned 32-bit value

struct ScriptSlot;

// The script state shared by the field, battle and menu scripts ("ACEV": probably "common event"):
// flags, variables, locals and the command decoding tables. There is one instance, created by
// create(). All functions of event.cpp are static members; they use the instance pointer, never a
// this pointer.
class CommonEvent {
  public:
    u32 field_0[COMMON_LOCAL_VARIABLE_COUNT];    // Script locals 0x35-0x3C (getLocalVariable)
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

    static u8* readCommand(ScriptSlot* script, s32* arguments, void* arg2, u32* engineLocals,
                           u32* engineFlags, u32* scriptFlags);
    static u8 getFlag(u32* engineFlags, u32* scriptFlags, u16 flag);
    static void setFlag(u32* engineFlags, u32* scriptFlags, u16 flag, u8 value);
    static u16 getGlobalVariable(u16 id);
    static void setGlobalVariable(u16 id, u16 value);
    static void removeScriptReader();
    static void initScriptReader();
    static u16 decGlobalVariable(u16 id);
    static u16 incGlobalVariable(u16 id);
    static void setLocalVariable(u32* engineLocals, u32* scriptLocals, s16 id, u32 value);
    static u32 getLocalVariable(u32* engineLocals, u32* scriptLocals, s16 id);
    static void setVariable(u32* engineLocals, u32* scriptLocals, u32* engineFlags, u32* scriptFlags,
                            s16 id, u32 value);
    static u32 getVariable(u32* engineLocals, u32* scriptLocals, u32* engineFlags, u32* scriptFlags,
                           s16 id);
    static void create();
    static void destroy();
};

#endif // EVENT_H
