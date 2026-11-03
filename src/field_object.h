#ifndef FIELD_OBJECT_H
#define FIELD_OBJECT_H

// Objects on the field (Mario, Luigi, NPCs, ...). The class hierarchy is implemented in asm
// (base class vtable 0x08CDBDE8); FieldObject's own file is asm/field_object.s (0x0803FEB8-0x08048064),
// ending with its inline virtual members in reverse slot order (19 ... 1 = ~FieldObject). Interface-only,
// so that no file emits its vtable or inline members.
#pragma interface

// FieldObject::state. The base class only sets the generic values below (sub_804034C, from the physics);
// subclasses use higher values for their own actions (FieldPlayerCharacter: 4, 5 = hammer, 7 = hammer
// hits, 10, ...). method6 re-applies the animation when it changes.
enum FieldObjectState {
    FIELD_OBJECT_STATE_IDLE,
    FIELD_OBJECT_STATE_MOVING,
    FIELD_OBJECT_STATE_RISING,
    FIELD_OBJECT_STATE_FALLING,
};

class FieldObject {
public:
    u8 pad_0;
    u8 field_1;
    u8 angle; // Facing angle 0-255 (direction = angle / 32)
    u8 pad_3;
    s16 state; // enum FieldObjectState
    s16 field_6;
    s16 field_8;
    s16 field_A;
    s32 x;
    s32 y;
    s32 z; // Height of the floor the object is on
    s32 height; // Height above that floor (the vertical position is z + height)
    u8 pad_1C[0x8];
    u8 direction : 3; // Facing direction 0-7
    u8 field_24_3 : 5;
    u8 pad_25;
    u8 field_26_0 : 1;
    u8 field_26_1 : 1;
    u8 field_26_2 : 6;
    u8 pad_27;
    u8 field_28;
    s8 field_29;
    u8 pad_2A[0x2];
    s16 previousState; // method5's copy of state (0x28 bytes later)
    u8 pad_2E[0x6];
    s32 previousX; // method5 copies the first 0x28 bytes here
    s32 previousY;
    s32 previousZ;
    s32 previousHeight;
    u8 pad_44[0x8];
    u8 previousDirection : 3; // method5's copy of direction (0x28 bytes later)
    u8 field_4C_3 : 5;
    u8 pad_4D[0x3];
    s16 field_50;
    s16 field_52;
    u8 field_54;
    u8 initialDirection; // Starting direction, used by method2
    u8 pad_56[0x1B6];
    u32 field_20C_0 : 1;
    u32 field_20C_1 : 4;
    u32 field_20C_5 : 1;
    u32 field_20C_6 : 2;
    u32 field_20C_8 : 4;
    u32 field_20C_12 : 1;
    u32 field_20C_13 : 1;
    u32 field_20C_14 : 1;
    u32 field_20C_15 : 3;
    u32 field_20C_18 : 1;
    u32 field_20C_19 : 3;
    u32 field_20C_22 : 1;
    u32 field_20C_23 : 1;
    u32 field_20C_24 : 1;
    u32 field_20C_25 : 1;
    u32 field_20C_26 : 1;
    u32 field_20C_27 : 5;
    u8 field_210_0 : 1;
    u8 field_210_1 : 1;
    u8 field_210_2 : 1;
    u8 field_210_3 : 1;
    u8 field_210_4 : 1;
    u8 field_210_5 : 1;
    u8 field_210_6 : 1;
    u8 field_210_7 : 1;
    u8 field_211_0 : 1;
    u8 field_211_1 : 7;
    u8 field_212_0 : 5;
    u8 field_212_5 : 1;
    u8 field_212_6 : 1;
    u8 field_212_7 : 1;
    u8 field_213_0 : 1;
    u8 field_213_1 : 4;
    u8 field_213_5 : 1;
    u8 field_213_6 : 2;
    u32 field_214_0 : 3;
    u32 field_214_3 : 10;
    u32 field_214_13 : 4;
    u32 field_214_17 : 1;
    u32 field_214_18 : 2;
    u32 field_214_20 : 1;
    u32 field_214_21 : 1;
    u32 field_214_22 : 1;
    u32 field_214_23 : 1;
    u32 field_214_24 : 1;
    u32 field_214_25 : 7;
    u16 field_218;
    u8 pad_21A[0x4];
    u16 field_21E;
    u8 pad_220[0x2];
    u8 field_222;
    u8 field_223;
    u8 pad_224[0x8];
    u32 field_22C_0 : 10;
    u32 field_22C_10 : 12;
    u32 field_22C_22 : 10;
    s32 field_230;
    s32 field_234;
    s8 field_238;
    u8 field_239;
    s8 field_23A;
    s8 field_23B;
    u8 field_23C;
    u8 field_23D;
    u16 field_23E;
    u16 field_240;
    s16 velocityX;
    s16 velocityY;
    u8 pad_246[0x2];
    s32 field_248;
    s32 field_24C;
    s32 field_250;
    s32 field_254;
    s32 field_258;
    s32 field_25C;
    u8 pad_260[0x2];
    u16 field_262;
    s16 field_264;
    s16 field_266;
    s16 field_268;
    u8 pad_26A[0x2];
    u16 field_26C;
    u8 field_26E;
    u8 pad_26F;
    s16 field_270;
    u16 field_272;
    u16 field_274;
    u16 field_276;
    u16 field_278;
    u16 field_27A;
    u16 field_27C;
    u16 field_27E;
    u16 field_280;
    u8 field_282;
    u8 field_283;
    u8 pad_284[0xC];
    void* field_290;
    struct Sprite* sprite;
    u8 field_298_0 : 1;
    u8 field_298_1 : 1;
    u8 field_298_2 : 2;
    u8 field_298_4 : 2;
    u8 field_298_6 : 2;
    u8 field_299_0 : 1;
    u8 field_299_1 : 1;
    u8 field_299_2 : 6;
    u8 pad_29A;
    u8 field_29B;
    u8 field_29C;
    u8 pad_29D;
    u16 field_29E;
    u16 field_2A0;
    u16 field_2A2;
    u16 field_2A4;
    u8 pad_2A6[0x2];
    u16* field_2A8;
    u16* field_2AC;
    u8 pad_2B0[0x5];
    u8 field_2B5_0 : 3;
    u8 field_2B5_3 : 5;
    u8 pad_2B6;
    u8 field_2B7_0 : 3;
    u8 field_2B7_3 : 5;
    u8 field_2B8_0 : 3;
    u8 field_2B8_3 : 5;
    u8 pad_2B9[0x7B];
    void* field_334;
    // The vtable pointer follows at 0x338.

    FieldObject(int room, int index);
    void sub_80400B0(int arg1, int arg2, int arg3);
    void sub_80401F0(int arg1, int arg2, int arg3);
    void sub_80402C4();
    void sub_804034C();
    void sub_80415A0();
    void sub_8040790();
    void sub_8040804(u8 mode, int animation, int flag);
    virtual ~FieldObject() {
    }
    virtual void method2(u16* arg1, u16* arg2, void* arg3); // 0x080403C4
    virtual void method3(); // 0x080409F4
    virtual void method4();
    virtual void method5(); // 0x08040020
    virtual void method6(int arg); // 0x08040AE0
    virtual void method7(u8 force); // 0x08040C50
    virtual void method8(u16 cameraX, u16 cameraY, FieldObject** objects); // 0x08040CF4
    virtual void method9(); // 0x08040FA0
    virtual struct struc_Oam* method10(struct struc_Oam* oam, FieldObject** objects); // 0x08041368
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
void sub_8047EFC(FieldObject*, int, int, int, int);
void sub_8047EB8(FieldObject*);
void sub_8047DC8(FieldObject*, int);
}

#endif
