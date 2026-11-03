#ifndef FIELD_OBJECT_H
#define FIELD_OBJECT_H

// Objects on the field (Mario, Luigi, NPCs, ...). The class hierarchy is implemented in asm
// (base class vtable 0x08CDBDE8); FieldObject's own file is asm/field_object.s (0x0803FEB8-0x08048064),
// ending with its inline virtual members in reverse slot order (19 ... 1 = ~FieldObject). Interface-only,
// so that no file emits its vtable or inline members.
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
    u8 pad_44[0x10];
    u8 field_54;
    u8 pad_55[0x1B7];
    u8 field_20C_0 : 1;
    u8 field_20C_1 : 4;
    u8 field_20C_5 : 1;
    u8 field_20C_6 : 2;
    u8 pad_20D[0x2];
    u8 field_20F_0 : 1;
    u8 field_20F_1 : 1;
    u8 field_20F_2 : 6;
    u8 field_210_0 : 4;
    u8 field_210_4 : 1;
    u8 field_210_5 : 1;
    u8 field_210_6 : 2;
    u8 pad_211[0x3];
    u8 field_214_0 : 3;
    u8 field_214_3 : 5;
    u8 pad_215[0x17];
    u32 field_22C_0 : 10;
    u32 field_22C_10 : 12;
    u32 field_22C_22 : 10;
    u8 pad_230[0x9];
    u8 field_239;
    u8 pad_23A[0x36];
    s16 field_270;
    u16 field_272;
    u16 field_274;
    u16 field_276;
    u8 pad_278[0x1C];
    struct Sprite* sprite;
    u8 pad_298[0xA0];
    // The vtable pointer follows at 0x338.

    FieldObject(int room, int index);
    virtual ~FieldObject() {
    }
    virtual void method2(void* arg1, u16* arg2, void* arg3);
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
    virtual void method15();
    virtual void method16();
    virtual void method17();
    virtual void method18();
    virtual void method19();
};

// "FSPL"
class FieldObjectSubclass2 : public FieldObject {
public:
    FieldObjectSubclass2(int room, int index);
};

// "FBLK" (from the room's object list) and "SBLK" (created by sub_8026C78 through a second ctor,
// sub_8050940): both store vtable 0x08CDC068. Implemented in asm/field_object_subclass3.s
// (0x080508A8-0x0805139C), which ends with its inline override of slot 4 (0x08051368).
class FieldObjectSubclass3 : public FieldObject {
public:
    u8 pad_33C[0x14];

    FieldObjectSubclass3(int room, int index);
};

extern "C" {
void sub_804761C(FieldObject*, int);
void sub_80465D8(FieldObject*);
void sub_804034C(FieldObject*);
void sub_8047EFC(FieldObject*, int, int, int, int);
}

#endif
