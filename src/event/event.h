#ifndef EVENT_H
#define EVENT_H

#pragma interface

// The script state at dword_3000FC0: flags, variables, locals and the command decoding tables.
// create() allocates only 0x570 bytes, although field.cpp copies 0x574.
struct struc_3000FC0 {
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

    static void create();  // inline, in the .cpp
    static void destroy(); // inline, in the .cpp
};

struct ScriptSlot;

extern struc_3000FC0* dword_3000FC0;
// Reads the next bitCount bits of a script: an IWRAM copy of the ARM function sub_8000F9C
// (sub_80E9B0C).
extern u32 (*dword_3000FC4)(ScriptSlot* script, s16* bitPosition, int bitCount);

u8* script_read_next_line(ScriptSlot* script, s32* command, void* arg2, u32* shared, u32* flags,
                          u32* flags2);
u8 sub_80E98C0(u32* arg0, u32* arg1, u16 flag);
void sub_80E9958(u32* arg0, u32* arg1, u16 flag, u8 value);
u16 sub_80E99E0(u16 id);
void sub_80E9A6C(u16 id, u16 value);
void sub_80E9AF8();
void sub_80E9B0C();
u16 sub_80E9B48(u16 id);
u16 sub_80E9B8C(u16 id);
void sub_80E9BD8(u32* shared, u32* local, s16 id, u32 value);
u32 sub_80E9C14(u32* shared, u32* local, s16 id);
void sub_80E9C4C(u32* shared, u32* local, u32* flags, u32* flags2, s16 id, u32 value);
u32 sub_80E9CA8(u32* shared, u32* local, u32* flags, u32* flags2, s16 id);

#endif // EVENT_H
