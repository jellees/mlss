#ifndef FIELD_OBJECT_H
#define FIELD_OBJECT_H

// Objects on the field (Mario, Luigi, NPCs, ...). The class hierarchy is implemented in asm
// (base class vtable 0x08CDBDE8). Interface-only, so that no file emits its vtable or inline members.
#pragma interface

class FieldObject {
public:
    u8 pad_0[0xC];
    s32 field_C;
    s32 field_10;
    s32 field_14;
    s32 field_18;
    u8 pad_1C[0x8];
    u8 field_24_0 : 3;
    u8 field_24_3 : 5;
    u8 pad_25[0x1B];
    s32 field_40;
    u8 pad_44[0x1D0];
    u8 field_214_0 : 3;
    u8 field_214_3 : 5;
    u8 pad_215[0x5B];
    s16 field_270;
    u16 field_272;
    u16 field_274;
    u16 field_276;
    u8 pad_278[0x1C];
    struct Sprite* sprite;
    u8 pad_298[0xA0];
    // The vtable pointer follows at 0x338.

    virtual void method1();
    virtual void method2();
    virtual void method3();
    virtual void method4();
    virtual void method5();
    virtual void method6(int arg);
    virtual void method7();
    virtual void method8();
    virtual void method9();
    virtual void method10();
    virtual void method11();
    virtual void method12(FieldObject** other, int a, int b);
    virtual void method13();
    virtual void method14(FieldObject** objects, int arg);
};

struct FieldButtons {
    u8 pad_0[0x4];
    u16 field_4;
    u16 field_6;
};

// The objects at FieldManager::field_200 / field_204.
class FieldPlayer : public FieldObject {
public:
    u8 pad_33C[0x2C];
    struct FieldButtons* field_368;
};

extern "C" {
void sub_804761C(FieldObject*, int);
void sub_80503CC(FieldObject*);
void sub_80465D8(FieldObject*);
void sub_804034C(FieldObject*);
}

#endif
