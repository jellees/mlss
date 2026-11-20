#ifndef TEXT080E9D50_H
#define TEXT080E9D50_H

// Script command handlers shared by the field, battle and menu scripts (name unknown; the file
// starts at 0x080E9D50, ends after script_cmd_end).

struct ScriptSlot;
struct Sprite;
struct struc_3000FC8;
struct struc_3000FCC;

s8 sub_80E9D50(void* engine, void* window, ScriptSlot* script, s32* arguments);
s8 sub_80E9E10(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80E9EE0(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EA064(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EA144(void* engine, ScriptSlot* script, s32* arguments, u32* engineRegisters);
s8 sub_80EA358(void* engine, ScriptSlot* script, s32* arguments, u32* engineRegisters);
s8 sub_80EA478(void* engine, ScriptSlot* script, s32* arguments);
void sub_80EA514(void* engine, ScriptSlot* script, u8* position, u8* end, u16 flags, u8 index);
void sub_80EA530(void* engine, ScriptSlot* script, u8* position, u8* end, u16 flags, u8 index);
void sub_80EA550(void* engine, ScriptSlot* script, ScriptSlot* waiting);
void sub_80EA584(void* engine, ScriptSlot* script, u8* position, u8* end, u16 flags, u8 index);
void sub_80EA5C8(void* engine, ScriptSlot* script, u8* position, u8* end, u16 flags, u8 index);
u8 sub_80EA60C(void* engine, ScriptSlot* script, Sprite* sprite, u8 frames, u8 flip);
u8 sub_80EA670(void* engine, s32 x, s32 y, s32 targetX, s32 targetY);
void sub_80EA6D4(void* engine, s32* arguments, s32* x, s32* y, s32* z);
void sub_80EA778(void* engine, ScriptSlot* script);
bool script_test_condition(void* engine, u8 operation, s32 left, s32 right);
s8 sub_80EA854(void* engine, ScriptSlot* script, s32* arguments, u32* engineRegisters);
s8 sub_80EA88C(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EA8A4(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EA8DC(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EA904(void* engine, ScriptSlot* script);
s8 sub_80EA91C(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EA928(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EA940(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EA968(void* engine, ScriptSlot* script, s32* arguments, u32* engineRegisters);
s8 sub_80EA9A8(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EA9B8(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EAA04(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EAA5C(void* engine, ScriptSlot* script, s32* arguments, u32* engineRegisters);
s8 sub_80EAA84(void* engine, ScriptSlot* script, s32* arguments, u32* engineRegisters);
s8 sub_80EAACC(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EAB00(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EAB20(void* engine, ScriptSlot* script, s32* arguments);
s8 script_cmd_conditional_jump(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EAB98(void* engine, ScriptSlot* script, s32* arguments, u32* engineRegisters, u32* engineFlags,
               u32* scriptFlags);
s8 sub_80EAC78(void* engine, ScriptSlot* script, s32* arguments, u32* engineRegisters);
s8 sub_80EACDC(void* engine, ScriptSlot* script, s32* arguments, u32* engineRegisters);
s8 sub_80EAD7C(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EAD98(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EADC4(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EADE8();
s8 sub_80EADEC(void* engine, struc_3000FC8* entries, ScriptSlot* script, s32* arguments);
s8 sub_80EAE2C();
s8 sub_80EAE30(void* engine, struc_3000FC8* entries, ScriptSlot* script, s32* arguments);
s8 sub_80EAE70(void* engine, ScriptSlot* script, s32* arguments, u32* engineRegisters);
s8 sub_80EAE9C(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EAEBC(void* engine, struc_3000FCC* windows, ScriptSlot* script, s32* arguments);
s8 sub_80EAEE0(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EAEF8(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EAF4C(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EAFB4(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EB048(void* engine, struc_3000FCC* windows, s32* arguments);
s8 sub_80EB05C(void* engine, struc_3000FCC* windows, ScriptSlot* script, s32* arguments);
s8 sub_80EB09C(void* engine, struc_3000FCC* windows, ScriptSlot* script, s32* arguments);
s8 script_cmd_wait_for_user_input(void* engine, struc_3000FCC* windows, ScriptSlot* script,
                                  s32* arguments);
s8 sub_80EB11C(void* engine, struc_3000FCC* windows, ScriptSlot* script, s32* arguments);
s8 sub_80EB1A4(void* engine, struc_3000FCC* windows, ScriptSlot* script, s32* arguments);
s8 script_cmd_wait_frames(void* engine, ScriptSlot* script, s32* arguments);
s8 script_cmd_call(void* engine, ScriptSlot* script, s32* arguments);
s8 script_cmd_return(void* engine, ScriptSlot* script);
s8 script_cmd_end(void* engine, ScriptSlot* script);

#endif // TEXT080E9D50_H
