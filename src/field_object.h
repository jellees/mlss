#ifndef FIELD_OBJECT_H
#define FIELD_OBJECT_H

// Objects on the field (Mario, Luigi, NPCs, ...). FieldObject is implemented in src/field_object.cpp
// (0x0803FEB8-0x08048064), which has `#pragma implementation` for this header: it emits the vtable
// (0x08CDBDE8) and the out-of-line copies of the inline members at the end of its .text. g++ emits
// those in reverse order of definition: the inline members defined in field_object.cpp (sub_8047DC8
// first, method4 last), then the ones defined in this class (~FieldObject).
#pragma interface

#include "text080575C8.h"

// FieldObject::state. The base class only sets the generic values below (sub_804034C, from the
// physics); subclasses use higher values for their own actions (FieldPlayerCharacter: 4, 5 = hammer, 7
// = hammer hits, 10, ...). method6 re-applies the animation when it changes.
enum FieldObjectState {
    FIELD_OBJECT_STATE_IDLE,
    FIELD_OBJECT_STATE_MOVING,
    FIELD_OBJECT_STATE_RISING,
    FIELD_OBJECT_STATE_FALLING,
};

// FieldObject::flickerMode (startFlicker/updateFlicker): blinks the sprite on and off using the span
// lengths in byte_83A061C.
enum FieldObjectFlickerMode {
    FIELD_OBJECT_FLICKER_NONE,
    // Walks the table backwards: visible spans grow (2 -> 8 frames) and the object ends visible.
    FIELD_OBJECT_FLICKER_IN,
    // Walks the table forwards: visible spans shrink (8 -> 2 frames) and the object ends hidden.
    FIELD_OBJECT_FLICKER_OUT,
};

class FieldObject {
  public:
    s8 field_0;
    u8 field_1;
    u8 angle; // Facing angle 0-255 (direction = angle / 32)
    u8 field_3;
    s16 state; // enum FieldObjectState
    s16 field_6;
    s16 field_8;
    s16 field_A;
    s32 x;
    s32 y;
    s32 z;                 // Height of the floor the object is on
    s32 height;            // Height above that floor (the vertical position is z + height)
    s32 field_1C;          // Sort key (sub_8047C18): z plus the height of the object below (method14)
    struct Coldef* coldef; // Collision cell the object stands on (method15)
    u32 direction : 3;     // Facing direction 0-7
    u32 field_24_3 : 4;
    u32 field_24_7 : 2;
    u32 field_24_9 : 1;
    u32 field_24_10 : 1;
    u32 field_24_11 : 4;
    u32 field_24_15 : 2;
    u32 field_26_1 : 1;
    u32 field_26_2 : 2;
    u32 field_26_4 : 2;
    u32 field_26_6 : 2;
    u32 pad_27 : 8;
    u8 field_28;
    s8 field_29;
    u8 previousAngle; // method5's copy of angle (0x28 bytes later)
    u8 pad_2B;
    s16 previousState; // method5's copy of state (0x28 bytes later)
    u8 pad_2E[0x6];
    s32 previousX; // method5 copies the first 0x28 bytes here
    s32 previousY;
    s32 previousZ;
    s32 previousHeight;
    u8 pad_44[0x8];
    u32 previousDirection : 3; // method5's copy of direction (0x28 bytes later)
    u32 field_4C_3 : 4;
    u32 field_4C_7 : 2;
    u32 field_4C_9 : 7;
    u32 field_4E_0 : 2;
    u32 field_4E_2 : 2;
    u32 field_4E_4 : 4;
    u32 pad_4F : 8;
    s16 field_50;
    s16 field_52;
    u8 field_54;
    u8 initialDirection; // Starting direction, used by method2
    u8 pad_56[0x196];
    u8 field_1EC[0x20];
    u32 field_20C_0 : 1;
    u32 field_20C_1 : 3;
    u32 field_20C_4 : 1;
    u32 field_20C_5 : 1;
    u32 field_20C_6 : 1;
    u32 field_20C_7 : 1;
    u32 field_20C_8 : 1;
    u32 field_20C_9 : 1;
    u32 field_20C_10 : 1;
    u32 field_20C_11 : 1;
    u32 field_20C_12 : 1;
    u32 field_20C_13 : 1;
    u32 field_20C_14 : 1;
    u32 field_20C_15 : 3;
    u32 field_20C_18 : 1;
    u32 field_20C_19 : 3;
    u32 field_20C_22 : 1;
    u32 field_20C_23 : 1;
    u32 field_20C_24 : 1;
    u32 spriteActive : 1;
    u32 field_20C_26 : 1;
    u32 field_20C_27 : 5;
    u32 field_210_0 : 1;
    u32 field_210_1 : 1;
    u32 field_210_2 : 1;
    u32 field_210_3 : 1;
    u32 field_210_4 : 1;
    u32 field_210_5 : 1;
    u32 field_210_6 : 1;
    u32 field_210_7 : 1;
    u32 field_211_0 : 1;
    u32 field_211_1 : 7;
    u32 field_212_0 : 5;
    u32 field_212_5 : 1;
    u32 field_212_6 : 1;
    u32 flickerMode : 2; // enum FieldObjectFlickerMode
    u32 field_212_9 : 4;
    u32 field_212_13 : 1;
    u32 field_212_14 : 2;
    u32 field_214_0 : 3;
    u32 field_214_3 : 3;
    u32 field_214_6 : 1;
    u32 field_214_7 : 1;
    u32 field_214_8 : 1;
    u32 field_214_9 : 1;
    u32 field_214_10 : 1;
    u32 field_214_11 : 1;
    u32 field_214_12 : 1;
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
    u16 field_21A;
    u16 field_21C;
    u16 field_21E;
    u8 field_220;
    u8 field_221;
    u8 field_222;
    u8 field_223;
    struct Coldef* field_224; // Last wall cell hit (method13)
    u8 pad_228[0x4];
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
    s32 gravity;
    // The absolute height you become airborne at.
    s32 airStartZ;
    // The height from the floor you become airborne at.
    s32 airStartHeight;
    s32 jumpVelocity;
    s32 velocityZ;
    s32 airFrames;
    u16 field_260;
    u16 field_262;
    s16 defaultJumpVelocity;
    s16 defaultGravity;
    s16 savedDefaultGravity;
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
    s32 field_284; // Collision box left, top and bottom (FieldPlayerCharacter::sub_804B028)
    s32 field_288;
    s32 field_28C;
    S_MP* field_290;
    struct Sprite* sprite;
    u32 field_298_0 : 1;
    u32 field_298_1 : 1;
    u32 field_298_2 : 2;
    u32 field_298_4 : 2;
    u32 field_298_6 : 2;
    u32 field_299_0 : 1;
    u32 field_299_1 : 1;
    u32 field_299_2 : 6;
    u32 pad_29A : 8;
    u32 field_29B : 8;
    u8 field_29C;
    u8 pad_29D;
    u16 field_29E;
    u16 field_2A0;
    u16 field_2A2;
    u16 field_2A4;
    u8 pad_2A6[0x2];
    u16* field_2A8;
    u16* field_2AC;
    u8* flickerDurations;
    s32 flickerTimer : 8;
    u32 field_2B5_0 : 3;
    u32 field_2B5_3 : 1;
    u32 field_2B5_4 : 2;
    u32 field_2B5_6 : 2;
    u32 field_2B6_0 : 2;
    u32 field_2B6_2 : 2;
    u32 field_2B6_4 : 2;
    u32 field_2B6_6 : 1;
    u32 field_2B6_7 : 1;
    u32 field_2B7_0 : 3;
    u32 field_2B7_3 : 5;
    u32 field_2B8_0 : 3;
    u32 field_2B8_3 : 5;
    u32 field_2B8_8 : 24;
    s32 field_2BC;
    s32 field_2C0;
    s32 field_2C4;
    u8 pad_2C8[0x4];
    s32 field_2CC;
    s32 field_2D0;
    s32 field_2D4;
    s16 field_2D8;
    s16 field_2DA;
    s16 field_2DC;
    u16 field_2DE;
    u16 field_2E0;
    u8 pad_2E2[0x2];
    s32 field_2E4;
    s32 field_2E8;
    s32 field_2EC;
    s32 field_2F0;
    s32 field_2F4;
    s16 field_2F8;
    // Four sprite value animations: xScale, yScale, field_8, field_A (sub_8046A90 ...).
    s16 field_2FA[4]; // start
    s16 field_302[4]; // target
    s16 field_30A[4]; // step per frame
    u16 field_312[4]; // frame counter
    u16 field_31A[4]; // duration
    // Fifth animation, of sprite->field_C through a 32-bit offset.
    s16 field_322; // base
    s16 field_324; // step per frame
    u8 pad_326[0x2];
    s32 field_328; // target offset
    s32 field_32C; // current offset
    u16 field_330; // frame counter
    u16 field_332; // duration
    void* field_334;
    // The vtable pointer follows at 0x338.

    FieldObject(int roomId, int index);
    void jumpToHeight(int jumpHeight = -1, int gravity = -1, int arg3 = -1);
    void startAirborne(int jumpVelocity = -1, int gravity = -1, int arg3 = -1);
    void updateAirborne();
    void sub_804034C();
    void sub_80415A0();
    void sub_804173C(int set, u8 size1, u8 size2, u8 size3);
    void sub_80418E8(FieldObject** objects);
    struct Coldef* sub_80457E8(int cellX, int cellY, int* floor, int* ceiling, int* top);
    int sub_80458B0();
    int sub_8045A94(int mode, int relative, int targetX, int targetY, int targetZ, u16 speed);
    int sub_8045F04(int mode, int relative, int centerX, int centerY, int centerZ, int arg6, int arg7,
                    int arg8, u16 arg9, u16 arg10, u16 arg11, u16 angle, u16 speed, int direction,
                    int flags);
    void sub_80461B4(FieldObject** objects);
    void sub_80465D8();
    void sub_8046980();
    void sub_8046A10();
    int sub_8046A90(int mode, int relative, u16 target, u16 speed);
    int sub_8046B30(int mode, int relative, u16 target, u16 speed);
    int sub_8046BC8(int mode, int relative, u16 target, u16 speed);
    int sub_8046C78(int mode, int relative, u16 target, u16 speed);
    void sub_8046D18();
    void sub_8047154(int animation, int arg2);
    void sub_8047258(int slot);
    void sub_80472D0(FieldObject* other, bool32 above);
    void sub_8047364(u8 type);
    void sub_80473DC();
    void sub_80474D0();
    void sub_80475A0(int slot);
    void setSpriteActive(bool32 enable);
    void sub_8047DC8(u8 arg);
    void sub_804776C(int value);
    void sub_8047784();
    void sub_80477A8(int a, int b);
    void sub_80478AC(u8 newDirection);
    void sub_804790C(u8 value);
    void sub_8047928();
    void sub_804794C(u16 value);
    void sub_8047958();
    void sub_804796C();
    void sub_8047980();
    void sub_8047994();
    void sub_80479A8();
    bool sub_80479BC();
    bool sub_80479DC();
    bool sub_80479FC();
    bool sub_8047A1C();
    bool sub_8047A3C();
    int sub_8047A5C(int mode, u16 distance, int sign, u16 speed);
    bool sub_8047AF4();

    void sub_8047E50(u16 value);
    int sub_8047E7C();
    void land();
    void sub_8047EFC(u16 speed, u16 arg2, s16 arg3, s16 arg4);
    void sub_8047F60(int newX, int newY, int newHeight, int savePrevious, int relative);
    void sub_8047B08(int mode, int velocityOrHeight);
    void sub_8047B5C(s16 value);
    bool sub_8047B78();
    int sub_8047C18(FieldObject* other);
    void sub_8047D44();
    void sub_8047D64();
    void sub_8047D84(u8 arg);
    void sub_8040790();
    void sub_8040804(bool mode, int animation, int flag);
    virtual ~FieldObject() {
    }
    virtual void method2(u16* arg1, u16* arg2, void* arg3); // 0x080403C4
    virtual void method3();                                 // 0x080409F4
    virtual void method4();                                 // 0x08047FDC, inline in field_object.cpp
    virtual void method5();                                 // 0x08040020
    virtual void method6(int arg);                          // 0x08040AE0
    virtual void method7(u8 force);                         // 0x08040C50
    virtual void method8(s16 cameraX, s16 cameraY, FieldObject** objects);        // 0x08040CF4
    virtual void method9();                                                       // 0x08040FA0
    virtual struct OamNode* method10(struct OamNode* oam, FieldObject** objects); // 0x08041368
    virtual void method11();                                                      // 0x08047CE8
    virtual void method12(FieldObject** others, int count, u8 flag);              // 0x08041A2C
    virtual int method13();                                                       // 0x08041FFC
    virtual void method14(FieldObject** objects, u8 arg);                         // 0x08047C68
    virtual void method15(u8 arg);                                                // 0x08044630
    virtual void startFlicker(FieldObjectFlickerMode mode);                       // 0x08047B98
    virtual void updateFlicker();                                                 // 0x080459C0
    virtual void method18(u8 index);                                              // 0x08047858
    virtual void method19(u8 index);                                              // 0x08047804
};

#endif
