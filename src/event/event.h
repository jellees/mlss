#ifndef EVENT_H
#define EVENT_H

#pragma interface

struct ScriptSlot;

// The script state shared by the field, battle and menu scripts ("ACEV": probably "common event"):
// flags, variables, locals and the command decoding tables. There is one instance, created by
// create() (which allocates only 0x570 bytes, although field.cpp copies 0x574). All functions of
// event.cpp are static members; they use the instance pointer, never a this pointer.
class CommonEvent {
  public:
    u32 field_0[8];      // Script locals 0x35-0x3C (sub_80E9C14)
    u32 field_20[0xDB];  // Flags 0-0x1B5F
    u32 field_38C[2];    // Flags 0x1B60-0x1B8F (passed to sub_80E98C0)
    u16 field_394[0x40]; // Variables 0x1CD8-0x1D17 (sub_80E99E0)
    u8 field_414[0x128]; // Variables 0x1B90-0x1CB7
    u8 field_53C[0x20];  // Variables 0x1CB8-0x1CD7
    u8* field_55C;       // Per opcode: whether a 13-bit value precedes the arguments
    u8* field_560;       // Per opcode: argument count
    u8* field_564;       // Per argument: size in bits (bit 7: raw 32-bit value)
    u8* field_568;       // Per argument: 1 = signed
    u16* field_56C;      // Per opcode: index of its first argument in field_564/field_568
    u32 field_570;

    // Static data members are emitted in reverse declaration order: instance is at 0x03000FC0,
    // dword_3000FC4 at 0x03000FC4.
    // Reads the next bitCount bits of a script: an IWRAM copy of the ARM function sub_8000F9C
    // (sub_80E9B0C).
    static u32 (*dword_3000FC4)(ScriptSlot* script, s16* bitPosition, int bitCount);
    static CommonEvent* instance;

    static u8* script_read_next_line(ScriptSlot* script, s32* command, void* arg2, u32* shared,
                                     u32* flags, u32* flags2);
    static u8 sub_80E98C0(u32* arg0, u32* arg1, u16 flag);
    static void sub_80E9958(u32* arg0, u32* arg1, u16 flag, u8 value);
    static u16 sub_80E99E0(u16 id);
    static void sub_80E9A6C(u16 id, u16 value);
    static void sub_80E9AF8();
    static void sub_80E9B0C();
    static u16 sub_80E9B48(u16 id);
    static u16 sub_80E9B8C(u16 id);
    static void sub_80E9BD8(u32* shared, u32* local, s16 id, u32 value);
    static u32 sub_80E9C14(u32* shared, u32* local, s16 id);
    static void sub_80E9C4C(u32* shared, u32* local, u32* flags, u32* flags2, s16 id, u32 value);
    static u32 sub_80E9CA8(u32* shared, u32* local, u32* flags, u32* flags2, s16 id);
    static void create();  // inline, in the .cpp
    static void destroy(); // inline, in the .cpp
};

#endif // EVENT_H
