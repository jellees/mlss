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
    s8 sub_80E9D50(void* window, EventThread* thread, s32* arguments);
    s8 sub_80E9E10(EventThread* thread, s32* arguments);
    s8 sub_80E9EE0(EventThread* thread, s32* arguments);
    s8 sub_80EA064(EventThread* thread, s32* arguments);
    s8 sub_80EA144(EventThread* thread, s32* arguments, u32* engineRegisters);
    s8 sub_80EA358(EventThread* thread, s32* arguments, u32* engineRegisters);
    s8 sub_80EA478(EventThread* thread, s32* arguments);
    void setNextScript(EventThread* thread, u8* position, u8* end, u16 flags, u8 parentIndex);
    void setCurrentScript(EventThread* thread, u8* position, u8* end, u16 flags, u8 parentIndex);
    void clearNextScript(EventThread* thread, EventThread* waiting);
    void replaceNextScript(EventThread* thread, u8* position, u8* end, u16 flags, u8 parentIndex);
    void startScript(EventThread* thread, u8* position, u8* end, u16 flags, u8 parentIndex);
    u8 sub_80EA60C(EventThread* thread, Sprite* sprite, u8 frames, u8 flip);
    u8 sub_80EA670(s32 x, s32 y, s32 targetX, s32 targetY);
    void sub_80EA6D4(s32* arguments, s32* x, s32* y, s32* z);
    void sub_80EA778(EventThread* thread);
    u8 testCondition(u8 operation, s32 left, s32 right);
    s8 sub_80EA854(EventThread* thread, s32* arguments, u32* engineRegisters);
    s8 sub_80EA88C(EventThread* thread, s32* arguments);
    s8 sub_80EA8A4(EventThread* thread, s32* arguments);
    s8 commandCompareJump(EventThread* thread, s32* arguments);
    s8 sub_80EA904(EventThread* thread);
    s8 commandSetCompareValue(EventThread* thread, s32* arguments);
    s8 sub_80EA928(EventThread* thread, s32* arguments);
    s8 sub_80EA940(EventThread* thread, s32* arguments);
    s8 sub_80EA968(EventThread* thread, s32* arguments, u32* engineRegisters);
    s8 sub_80EA9A8(EventThread* thread, s32* arguments);
    s8 sub_80EA9B8(EventThread* thread, s32* arguments);
    s8 sub_80EAA04(EventThread* thread, s32* arguments);
    s8 sub_80EAA5C(EventThread* thread, s32* arguments, u32* engineRegisters);
    s8 sub_80EAA84(EventThread* thread, s32* arguments, u32* engineRegisters);
    s8 sub_80EAACC(EventThread* thread, s32* arguments);
    s8 sub_80EAB00(EventThread* thread, s32* arguments);
    s8 sub_80EAB20(EventThread* thread, s32* arguments);
    s8 commandConditionalJump(EventThread* thread, s32* arguments);
    s8 commandCalculate(EventThread* thread, s32* arguments, u32* engineRegisters, u32* engineFlags,
                        u32* scriptFlags);
    s8 sub_80EAC78(EventThread* thread, s32* arguments, u32* engineRegisters);
    s8 sub_80EACDC(EventThread* thread, s32* arguments, u32* engineRegisters);
    s8 sub_80EAD7C(EventThread* thread, s32* arguments);
    s8 sub_80EAD98(EventThread* thread, s32* arguments);
    s8 sub_80EADC4(EventThread* thread, s32* arguments);
    s8 sub_80EADE8();
    s8 sub_80EADEC(struc_3000FC8* entries, EventThread* thread, s32* arguments);
    s8 sub_80EAE2C();
    s8 sub_80EAE30(struc_3000FC8* entries, EventThread* thread, s32* arguments);
    s8 sub_80EAE70(EventThread* thread, s32* arguments, u32* engineRegisters);
    s8 sub_80EAE9C(EventThread* thread, s32* arguments);
    s8 sub_80EAEBC(struc_3000FCC* windows, EventThread* thread, s32* arguments);
    s8 sub_80EAEE0(EventThread* thread, s32* arguments);
    s8 commandSoundEffect(EventThread* thread, s32* arguments);
    s8 sub_80EAF4C(EventThread* thread, s32* arguments);
    s8 sub_80EAFB4(EventThread* thread, s32* arguments);
    s8 sub_80EB048(struc_3000FCC* windows, s32* arguments);
    s8 sub_80EB05C(struc_3000FCC* windows, EventThread* thread, s32* arguments);
    s8 sub_80EB09C(struc_3000FCC* windows, EventThread* thread, s32* arguments);
    s8 commandWaitForUserInput(struc_3000FCC* windows, EventThread* thread, s32* arguments);
    s8 sub_80EB11C(struc_3000FCC* windows, EventThread* thread, s32* arguments);
    s8 sub_80EB1A4(struc_3000FCC* windows, EventThread* thread, s32* arguments);
    s8 commandWaitFrames(EventThread* thread, s32* arguments);
    s8 commandCall(EventThread* thread, s32* arguments);
    s8 commandReturn(EventThread* thread);
    s8 commandEnd(EventThread* thread);
};

#endif // TEXT080E9D50_H
