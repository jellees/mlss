#ifndef TEXT080E9D50_H
#define TEXT080E9D50_H

// Script command handlers shared by the field, battle and menu scripts (file name unknown; the file
// starts at 0x080E9D50, ends after commandEnd).
//
// EventBase has no data members: the script engines derive from it as a second base, right
// after Process (FieldEventScript at +0x1C; the battle and menu script code also passes +0x1C), so
// every handler gets an unused this. Without -fnew-abi an empty base still takes 1 byte (padded to 4).

struct EventThread;
struct Sprite;
struct struc_3000FC8;
struct struc_3000FCC;

class EventBase {
  public:
    s8 sub_80E9D50(void* window, EventThread* script, s32* arguments);
    s8 sub_80E9E10(EventThread* script, s32* arguments);
    s8 sub_80E9EE0(EventThread* script, s32* arguments);
    s8 sub_80EA064(EventThread* script, s32* arguments);
    s8 sub_80EA144(EventThread* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EA358(EventThread* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EA478(EventThread* script, s32* arguments);
    void sub_80EA514(EventThread* script, u8* position, u8* end, u16 flags, u8 index);
    void sub_80EA530(EventThread* script, u8* position, u8* end, u16 flags, u8 index);
    void sub_80EA550(EventThread* script, EventThread* waiting);
    void sub_80EA584(EventThread* script, u8* position, u8* end, u16 flags, u8 index);
    void sub_80EA5C8(EventThread* script, u8* position, u8* end, u16 flags, u8 index);
    u8 sub_80EA60C(EventThread* script, Sprite* sprite, u8 frames, u8 flip);
    u8 sub_80EA670(s32 x, s32 y, s32 targetX, s32 targetY);
    void sub_80EA6D4(s32* arguments, s32* x, s32* y, s32* z);
    void sub_80EA778(EventThread* script);
    u8 testCondition(u8 operation, s32 left, s32 right);
    s8 sub_80EA854(EventThread* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EA88C(EventThread* script, s32* arguments);
    s8 sub_80EA8A4(EventThread* script, s32* arguments);
    s8 sub_80EA8DC(EventThread* script, s32* arguments);
    s8 sub_80EA904(EventThread* script);
    s8 sub_80EA91C(EventThread* script, s32* arguments);
    s8 sub_80EA928(EventThread* script, s32* arguments);
    s8 sub_80EA940(EventThread* script, s32* arguments);
    s8 sub_80EA968(EventThread* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EA9A8(EventThread* script, s32* arguments);
    s8 sub_80EA9B8(EventThread* script, s32* arguments);
    s8 sub_80EAA04(EventThread* script, s32* arguments);
    s8 sub_80EAA5C(EventThread* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EAA84(EventThread* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EAACC(EventThread* script, s32* arguments);
    s8 sub_80EAB00(EventThread* script, s32* arguments);
    s8 sub_80EAB20(EventThread* script, s32* arguments);
    s8 commandConditionalJump(EventThread* script, s32* arguments);
    s8 sub_80EAB98(EventThread* script, s32* arguments, u32* engineRegisters, u32* engineFlags,
                   u32* scriptFlags);
    s8 sub_80EAC78(EventThread* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EACDC(EventThread* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EAD7C(EventThread* script, s32* arguments);
    s8 sub_80EAD98(EventThread* script, s32* arguments);
    s8 sub_80EADC4(EventThread* script, s32* arguments);
    s8 sub_80EADE8();
    s8 sub_80EADEC(struc_3000FC8* entries, EventThread* script, s32* arguments);
    s8 sub_80EAE2C();
    s8 sub_80EAE30(struc_3000FC8* entries, EventThread* script, s32* arguments);
    s8 sub_80EAE70(EventThread* script, s32* arguments, u32* engineRegisters);
    s8 sub_80EAE9C(EventThread* script, s32* arguments);
    s8 sub_80EAEBC(struc_3000FCC* windows, EventThread* script, s32* arguments);
    s8 sub_80EAEE0(EventThread* script, s32* arguments);
    s8 sub_80EAEF8(EventThread* script, s32* arguments);
    s8 sub_80EAF4C(EventThread* script, s32* arguments);
    s8 sub_80EAFB4(EventThread* script, s32* arguments);
    s8 sub_80EB048(struc_3000FCC* windows, s32* arguments);
    s8 sub_80EB05C(struc_3000FCC* windows, EventThread* script, s32* arguments);
    s8 sub_80EB09C(struc_3000FCC* windows, EventThread* script, s32* arguments);
    s8 commandWaitForUserInput(struc_3000FCC* windows, EventThread* script, s32* arguments);
    s8 sub_80EB11C(struc_3000FCC* windows, EventThread* script, s32* arguments);
    s8 sub_80EB1A4(struc_3000FCC* windows, EventThread* script, s32* arguments);
    s8 commandWaitFrames(EventThread* script, s32* arguments);
    s8 commandCall(EventThread* script, s32* arguments);
    s8 commandReturn(EventThread* script);
    s8 commandEnd(EventThread* script);
};

#endif // TEXT080E9D50_H
