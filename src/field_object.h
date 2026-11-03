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

struct FieldStruct4 {
    u8 pad_0[0x4];
    u16 field_4;
    u16 field_6;
    u8 pad_8[0x10];
};

// "FPC" (Field Player Character): Mario and Luigi (FieldManager::objects[0] / [1], and leader / follower).
class FieldPlayerCharacter : public FieldObject {
public:
    u8 pad_33C[0x16];
    u8 field_352_0 : 7;
    u8 field_352_7 : 1;
    u8 pad_353[0x15];
    struct FieldStruct4* field_368;
    u8 pad_36C[0x20];

    FieldPlayerCharacter(int room, int index);
};

// "FMON"
class FieldObjectSubclass1 : public FieldObject {
public:
    u8 pad_33C[0x8];
    FieldObject* field_344;

    FieldObjectSubclass1(int room, int index);
};

// "FSPL"
class FieldObjectSubclass2 : public FieldObject {
public:
    FieldObjectSubclass2(int room, int index);
};

// "FBLK"
class FieldObjectSubclass3 : public FieldObject {
public:
    u8 pad_33C[0x14];

    FieldObjectSubclass3(int room, int index);
};

// "FPSB" (FieldManager::field_A8)
class FieldClass1 {
public:
    u8 pad_0[0x4C];

    FieldClass1(int index);
};

extern "C" {
void sub_804761C(FieldObject*, int);
void sub_80503CC(FieldObject*);
void sub_80465D8(FieldObject*);
void sub_804034C(FieldObject*);
void sub_804DFE8(FieldClass1*);
void sub_8047EFC(FieldPlayerCharacter*, int, int, int, int);
}

#endif
