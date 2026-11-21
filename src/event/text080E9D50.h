#ifndef TEXT080E9D50_H
#define TEXT080E9D50_H

// Script command handlers shared by the field, battle and menu scripts (file name unknown; the file
// starts at 0x080E9D50, ends after script_cmd_end).
//
// EventBase has no data members: the script engines derive from it as a second base, right
// after Process (FieldEventScript at +0x1C; the battle and menu script code also passes +0x1C), so
// every handler gets an unused this. Without -fnew-abi an empty base still takes 1 byte (padded to 4).

struct ScriptSlot;
struct Sprite;
struct struc_3000FC8;
struct struc_3000FCC;

class EventBase {
  public:
    s8 sub_80E9D50(void* window, ScriptSlot* script, s32* arguments);
    s8 sub_80E9E10(ScriptSlot* script, s32* arguments);
    s8 sub_80E9EE0(ScriptSlot* script, s32* arguments);
    s8 sub_80EA064(ScriptSlot* script, s32* arguments);
    s8 sub_80EA144(ScriptSlot* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EA358(ScriptSlot* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EA478(ScriptSlot* script, s32* arguments);
    void sub_80EA514(ScriptSlot* script, u8* position, u8* end, u16 flags, u8 index);
    void sub_80EA530(ScriptSlot* script, u8* position, u8* end, u16 flags, u8 index);
    void sub_80EA550(ScriptSlot* script, ScriptSlot* waiting);
    void sub_80EA584(ScriptSlot* script, u8* position, u8* end, u16 flags, u8 index);
    void sub_80EA5C8(ScriptSlot* script, u8* position, u8* end, u16 flags, u8 index);
    u8 sub_80EA60C(ScriptSlot* script, Sprite* sprite, u8 frames, u8 flip);
    u8 sub_80EA670(s32 x, s32 y, s32 targetX, s32 targetY);
    void sub_80EA6D4(s32* arguments, s32* x, s32* y, s32* z);
    void sub_80EA778(ScriptSlot* script);
    u8 script_test_condition(u8 operation, s32 left, s32 right);
    s8 sub_80EA854(ScriptSlot* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EA88C(ScriptSlot* script, s32* arguments);
    s8 sub_80EA8A4(ScriptSlot* script, s32* arguments);
    s8 sub_80EA8DC(ScriptSlot* script, s32* arguments);
    s8 sub_80EA904(ScriptSlot* script);
    s8 sub_80EA91C(ScriptSlot* script, s32* arguments);
    s8 sub_80EA928(ScriptSlot* script, s32* arguments);
    s8 sub_80EA940(ScriptSlot* script, s32* arguments);
    s8 sub_80EA968(ScriptSlot* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EA9A8(ScriptSlot* script, s32* arguments);
    s8 sub_80EA9B8(ScriptSlot* script, s32* arguments);
    s8 sub_80EAA04(ScriptSlot* script, s32* arguments);
    s8 sub_80EAA5C(ScriptSlot* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EAA84(ScriptSlot* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EAACC(ScriptSlot* script, s32* arguments);
    s8 sub_80EAB00(ScriptSlot* script, s32* arguments);
    s8 sub_80EAB20(ScriptSlot* script, s32* arguments);
    s8 script_cmd_conditional_jump(ScriptSlot* script, s32* arguments);
    s8 sub_80EAB98(ScriptSlot* script, s32* arguments, u32* engineRegisters, u32* engineFlags,
                   u32* scriptFlags);
    s8 sub_80EAC78(ScriptSlot* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EACDC(ScriptSlot* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EAD7C(ScriptSlot* script, s32* arguments);
    s8 sub_80EAD98(ScriptSlot* script, s32* arguments);
    s8 sub_80EADC4(ScriptSlot* script, s32* arguments);
    s8 sub_80EADE8();
    s8 sub_80EADEC(struc_3000FC8* entries, ScriptSlot* script, s32* arguments);
    s8 sub_80EAE2C();
    s8 sub_80EAE30(struc_3000FC8* entries, ScriptSlot* script, s32* arguments);
    s8 sub_80EAE70(ScriptSlot* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EAE9C(ScriptSlot* script, s32* arguments);
    s8 sub_80EAEBC(struc_3000FCC* windows, ScriptSlot* script, s32* arguments);
    s8 sub_80EAEE0(ScriptSlot* script, s32* arguments);
    s8 sub_80EAEF8(ScriptSlot* script, s32* arguments);
    s8 sub_80EAF4C(ScriptSlot* script, s32* arguments);
    s8 sub_80EAFB4(ScriptSlot* script, s32* arguments);
    s8 sub_80EB048(struc_3000FCC* windows, s32* arguments);
    s8 sub_80EB05C(struc_3000FCC* windows, ScriptSlot* script, s32* arguments);
    s8 sub_80EB09C(struc_3000FCC* windows, ScriptSlot* script, s32* arguments);
    s8 script_cmd_wait_for_user_input(struc_3000FCC* windows, ScriptSlot* script, s32* arguments);
    s8 sub_80EB11C(struc_3000FCC* windows, ScriptSlot* script, s32* arguments);
    s8 sub_80EB1A4(struc_3000FCC* windows, ScriptSlot* script, s32* arguments);
    s8 script_cmd_wait_frames(ScriptSlot* script, s32* arguments);
    s8 script_cmd_call(ScriptSlot* script, s32* arguments);
    s8 script_cmd_return(ScriptSlot* script);
    s8 script_cmd_end(ScriptSlot* script);
};

#endif // TEXT080E9D50_H
