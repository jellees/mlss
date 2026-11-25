#ifndef FIELD_PLAYER_CHARACTER_H
#define FIELD_PLAYER_CHARACTER_H

#include "field/field_object.h"

struct Warp;

// "FPC" (Field Player Character): Mario and Luigi (FieldManager::objects[0] / [1], and leader /
// follower). Implemented in src/field_player_character.cpp (0x08048064-0x0804FE68), which also emits
// the vtable (0x08CDBE88), the inline members and the implicit destructor (0x081DD5B0). That file also
// holds FieldPlayerShotBullet ("FPSB").
#pragma interface

// FieldObject::objectIndex of the brothers: they always occupy the first two slots
enum Brother {
    BROTHER_MARIO = 0,
    BROTHER_LUIGI = 1,
};

enum BrothersForm {
    BROTHERS_FORM_NORMAL = 0,
    BROTHERS_FORM_PUMP_MARIO = 1,
    BROTHERS_FORM_MINI_MARIO = 2,
    BROTHERS_FORM_MOLE_LUIGI = 3,
    BROTHERS_FORM_BARREL_LUIGI = 4,
    BROTHERS_FORM_FIRE_DASH = 5,
    BROTHERS_FORM_THUNDER_TICKLE = 6,
    BROTHERS_FORM_SURFBOARD_LUIGI = 7,
};

// PlayerAction::actionMode. Picks the per-frame handler in FieldManager::sub_802F938 (no entry: the
// normal field update).
enum PlayerActionMode {
    ACTION_MODE_NORMAL = 0,
    ACTION_MODE_TALK = 1,         // Temporary (sub_8049BD8 when field_340 == 2); restored from field_1
    ACTION_MODE_INTERACT = 2,     // Temporary (sub_8049BD8 when field_340 == 3 and field_352_7)
    ACTION_MODE_HIGH_JUMP = 3,    // sub_8030484 (ACTION_HIGH_JUMP), handler sub_80306A0
    ACTION_MODE_SPIN_JUMP = 4,    // sub_8032514 (ACTION_SPIN_JUMP), handler sub_8032A90
    ACTION_MODE_PUMP_MARIO = 5,   // changeBrotherForm, handler sub_8031768
    ACTION_MODE_MOLE_LUIGI = 6,   // hammerIntoGround, changeBrotherForm, handler sub_8033F5C
    ACTION_MODE_7 = 7,            // Also handled by sub_8033F5C
    ACTION_MODE_BARREL_LUIGI = 9, // enterBarrel, changeBrotherForm, handler sub_8034BF4
    ACTION_MODE_MARIO_ON_BARREL = 10,            // jumpOntoBarrel, handler sub_80350B4
    ACTION_MODE_MINI_MARIO = 11,                 // sub_8035974, changeBrotherForm, handler sub_8035DB0
    ACTION_MODE_FIRE_DASH = 12,                  // sub_8036E14, handler sub_8036F84
    ACTION_MODE_THUNDER_TICKLE = 13,             // sub_8038140, handler sub_80382CC
    ACTION_MODE_14 = 14,                         // Handler sub_8039250
    ACTION_MODE_15 = 15,                         // Handler sub_8039250
    ACTION_MODE_FIRE_DASH_LUIGI_ANGRY = 16,      // When fire dash is not yet unlocked.
    ACTION_MODE_THUNDER_TICKLE_MARIO_ANGRY = 17, // When thunder tickle is not yet unlocked
    ACTION_MODE_18 = 18,                         // Handler sub_803AFCC
    ACTION_MODE_SURFBOARD_LUIGI =
        19, // Room load with BROTHERS_FORM_SURFBOARD_LUIGI, handler sub_803AFCC
};

// PlayerAction::selectedAction: what the action button does (the HUD action icon).
enum PlayerActionType {
    ACTION_JUMP = 0,
    ACTION_HAMMER = 1,
    ACTION_HAND = 2,
    ACTION_SPIN_JUMP = 3,
    ACTION_HIGH_JUMP = 4,
    ACTION_TALK = 5,
    ACTION_INTERACT = 6,
    ACTION_JUMP_ON_BARREL = 7,
    ACTION_DIG_OUT = 8,
    ACTION_JUMP_OFF_BARREL = 9,
    ACTION_BREAK_BARREL = 10,
    ACTION_SURFBOARD_11 = 11,
    ACTION_SURFBOARD_JUMP = 12,
    ACTION_DISABLED = 13,
};

// A brother's action state and controls: FieldManager::field_20C[2], one per player character
// (FieldPlayerCharacter::field_368).
struct PlayerAction {
    u8 actionMode;     // Selects the per-frame handler (FieldManager::sub_802F938), e.g. 9: barrel
    u8 field_1;        // Previous actionMode (FieldPlayerCharacter::sub_8049BD8)
    u8 selectedAction; // Run by the action button (1: hammer, 2: hand power, ...)
    u8 pad_3;
    u16 actionButton; // Key mask: 1 (A) for the brother in front, 2 (B) for the one behind
    u16 switchButton; // Key mask: 0x100 (R) for the leader, 0x200 (L) for the follower
    s8** field_8[2];  // Lists of selectedAction values, ended by -1, per actionMode (dword_839F900)
    u8 field_10[2];   // Indexed by !FieldPlayerCharacter::field_352_7
    s8 field_12 : 8;
    s8 field_13 : 8;
    s8 field_14 : 8;
    s8 field_15 : 8;
    u8 field_16_0 : 7;
    u8 field_16_7 : 1;
    u8 field_17_0 : 7; // FieldPlayerCharacter::method5's copy of field_16_0
    u8 field_17_7 : 1; // FieldPlayerCharacter::method5's copy of field_16_7
};

class FieldPlayerCharacter : public FieldObject {
  public:
    u8 field_33C_0 : 7;
    u8 field_33C_7 : 1;
    u16 field_33D_0 : 7; // method5's copy of field_33C_0
    u16 field_33D_7 : 1; // method5's copy of field_33C_7
    s8 field_33E;
    s8 field_33F; // method5's copy of field_33E
    u8 field_340;
    u8 field_341; // method5's copy of field_340
    u8 field_342;
    s8 field_343; // method5's copy of field_342
    u8 field_344;
    s8 field_345; // method5's copy of field_344
    u8 field_346;
    u8 field_347;
    s32 field_348; // x and y saved by method13
    s32 field_34C;
    u16 field_350_0 : 4;
    u16 field_350_4 : 2;
    u16 field_350_6 : 1;
    u16 field_350_7 : 4;  // method5's copy of field_350_0
    u16 field_350_11 : 2; // method5's copy of field_350_4
    u16 field_350_13 : 1; // method5's copy of field_350_6
    u16 field_350_14 : 1;
    u16 field_350_15 : 1;
    u32 field_352_0 : 1;
    u32 field_352_1 : 1;
    u32 field_352_2 : 1;
    u32 field_352_3 : 1;
    u32 field_352_4 : 1;
    u32 field_352_5 : 1;
    u32 field_352_6 : 1;
    u32 field_352_7 : 1;
    u32 field_353_0 : 1; // field_36C follows sprite (method8)
    u32 field_353_1 : 1;
    u32 field_353_2 : 1;
    u32 field_353_3 : 1;
    u32 field_353_4 : 2; // Set from byte_83A0A38 (sub_804FC30)
    u32 field_353_6 : 1;
    u32 field_353_7 : 1; // method5's copy of field_353_6
    s8 field_354;        // method5's copy of field_238
    s8 field_355;
    u16 field_356;       // Saved field_218 (sub_8049AB4)
    u16 field_358_0 : 3; // Saved direction (sub_8049AB4)
    u16 field_358_3 : 1;
    u16 field_358_4 : 8;
    u16 field_358_12 : 1;
    u16 field_358_13 : 3;
    u16 field_35A_0 : 1;
    u32 field_35A_1 : 1;
    u16 field_35A_2 : 1;
    u16 field_35A_3 : 8;
    u16 isMini : 1;
    u16 isMole : 1;
    u16 isPump : 1;
    u16 isBarrel : 1;
    u16 field_35A_15 : 1;
    s32 field_35C;
    u8 pad_360[0x2];
    s16 field_362; // method5's copy of velocityX
    s16 field_364; // method5's copy of velocityY
    u8 pad_366[0x2];
    struct PlayerAction* field_368;
    // A second sprite that follows the main one (method8), saved and restored through the fields below
    // (method2).
    struct Sprite* field_36C;
    u16 field_370;
    s8 field_372; // Offsets from sprite (method8)
    s8 field_373;
    s8 field_374;
    u8 pad_375[0x3];
    u8 field_378_0 : 1; // Restore field_36C's state in method2
    u8 field_378_1 : 1;
    u8 field_378_2 : 2;
    u8 field_378_4 : 2;
    u8 field_378_6 : 2;
    u8 field_379_0 : 1;
    u8 field_379_1 : 1;
    u8 field_379_2 : 6;
    u8 field_37A;
    u8 field_37B;
    u8 field_37C;
    u8 pad_37D;
    u16 field_37E;
    u16 field_380;
    u16 field_382;
    u16 field_384;
    u8 pad_386[0x2];
    FieldPlayerCharacter* otherBrother;

    FieldPlayerCharacter(int roomId, int index);                  // 0x08048064
    void sub_8048174(int form);                                   // 0x08048174
    void sub_8049000(u16 spriteId);                               // 0x08049000
    void sub_80490CC(bool arg);                                   // 0x080490CC
    void sub_8049224();                                           // 0x08049224
    void sub_80492DC();                                           // 0x080492DC
    void startHammer(bool arg);                                   // 0x08049370
    void startHandPower();                                        // 0x08049430
    void stopHandPower();                                         // 0x080494D4
    void showHandPowerSprite(int type);                           // 0x0804955C
    void showBarrelBreakingSprite();                              // 0x080496B4
    void sub_80497A8();                                           // 0x080497A8
    void showExclamationBalloon();                                // 0x080498B0 (uncalled)
    void sub_80499B8();                                           // 0x080499B8
    void sub_8049AB4(int mode, int animation);                    // 0x08049AB4
    void sub_8049BD8(int value);                                  // 0x08049BD8
    void sub_8049C38(FieldObject** objects, int count);           // 0x08049C38
    u8 sub_804B028(FieldObject* other);                           // 0x0804B028
    bool sub_804B25C(FieldObject* other);                         // 0x0804B25C
    void sub_804B360(u8 arg1, u8 arg2);                           // 0x0804B360
    bool sub_804D0EC();                                           // 0x0804D0EC
    bool sub_804D18C();                                           // 0x0804D18C
    int sub_804D2CC();                                            // 0x0804D2CC
    bool sub_804D734(int mode, FieldObject** objects, int count); // 0x0804D734
    bool sub_804DBD0(int mode);                                   // 0x0804DBD0
    void sub_804DDF4(FieldObject** objects, int count);           // 0x0804DDF4
    int sub_804FB3C();                                            // 0x0804FB3C
    void sub_804FB64(FieldObject** objects, u8 arg1, bool arg2);  // 0x0804FB64
    void sub_804FC30();                                           // 0x0804FC30
    void sub_804FC90();                                           // 0x0804FC90
    void sub_804FD3C();                                           // 0x0804FD3C
    u8* sub_8049FF4(u8* data);                                    // 0x08049FF4
    struct Warp* findWarp(struct Warp* warps, int* outX, int* outY, bool grounded,
                          bool filtered); // 0x0804A124
    void sub_804FCD4();                   // 0x0804FCD4

    // Overridden vtable slots; the others are inherited from FieldObject. The destructor (slot 1) is
    // compiler-generated (a linkonce copy at 0x081DD5B0).
    virtual void method2(u16* arg1, u16* arg2, void* arg3);                // 0x0804857C
    virtual void method3();                                                // 0x08048704
    virtual void method5();                                                // 0x080482E0
    virtual void method7(u8 force);                                        // 0x080487F0
    virtual void method8(s16 cameraX, s16 cameraY, FieldObject** objects); // 0x08048438
    virtual void method11();                                               // 0x0804A4C8
    virtual void method12(FieldObject** others, int count, u8 flag);       // 0x0804A5D4
    virtual int method13();                                                // 0x0804FBDC
    virtual void method18(u8 index) {                                      // 0x0804FDF4
        u32 savedField = field_214_0;
        u32 savedDirection = direction;

        if (state >= 5 && state <= 9) {
            sub_804FCD4();
        } else if (state >= 10 && state <= 12) {
            stopHandPower();
        }
        field_214_0 = savedField;
        direction = savedDirection;
        FieldObject::method18(index);
    }
    virtual void method19(u8 index) { // 0x0804FD80
        u32 savedField = field_214_0;
        u32 savedDirection = direction;

        if (state >= 5 && state <= 9) {
            sub_804FCD4();
        } else if (state >= 10 && state <= 12) {
            stopHandPower();
        }
        field_214_0 = savedField;
        direction = savedDirection;
        FieldObject::method19(index);
    }
};

// "FPSB" (Field Player Shot Bullet): the water that Luigi gets out of Pump Mario.
// FieldManager::shotBullets[8] holds the pool. A plain class without virtual functions, implemented
// between the FieldPlayerCharacter functions (0x0804DFE8-0x0804FB3C). Each shot moves along the owner's
// direction, despawns after its duration, collides with walls and floors and reports hits on objects to
// its owner (FieldPlayerCharacter::field_33C_0 etc.).
enum FieldPlayerShotBulletType {
    // Luigi jumps: a column of droplets. One spawns per frame, round-robin through all 8 slots
    // (FieldManager::shotBulletIndex counts up); each lives about 6 frames.
    FIELD_PLAYER_SHOT_BULLET_JET = 2,
    // Luigi's hammer: up to three slow water bubbles, in slots 2, 1, 0 (shotBulletIndex counts down
    // from 3).
    FIELD_PLAYER_SHOT_BULLET_BUBBLE = 3,
    // Luigi's hand: Mario spits the water out in place (slot 0), used to water plants.
    FIELD_PLAYER_SHOT_BULLET_SPIT = 4,
};

class FieldPlayerShotBullet {
  public:
    u32 index : 3;
    u32 type : 3; // enum FieldPlayerShotBulletType
    u32 active : 1;
    u32 layer : 4; // Sprite layer, like FieldObject::field_214_13
    u32 direction : 3;
    u32 onTop : 1;     // Standing on the secondary floor (sub_804F904)
    u32 pushes : 1;    // Pushes the objects it hits (byte_83A0C6C)
    u32 sides : 4;     // Sides where it hit an object (sub_804E6E0)
    u32 wallSides : 4; // Sides where it hit a wall (sub_804EA68)
    u32 field_3 : 8;   // Unused
    u8 pad_4[0x4];     // Unused
    s32 x;
    s32 y;
    s32 z;
    s32 height;
    s32 previousX; // sub_804FB14's copies
    s32 previousY;
    s32 previousZ;
    s32 previousHeight;
    s16 speed; // Distance per frame (word_83A0C60)
    s16 velocityX;
    s16 velocityY;
    u16 timer;    // Distance travelled
    u16 duration; // Range (word_83A0C66 << 8)
    // Boxes unpacked from byte_801349C (sub_804E0D8): one for walls and floors, one for hitting
    // objects.
    u16 boxWidth;
    u16 boxHeight;
    u16 boxDepth;
    u16 hitWidth;
    u16 hitHeight;
    u16 hitDepth;
    s8 frame;  // Animation frame to restore (sub_804DFE8)
    S_MP* map; // The owner's collision map (FieldObject::field_290)
    struct Sprite* sprite;
    FieldObject* owner;

    FieldPlayerShotBullet(int index);                                                     // 0x0804FB28
    void sub_804DFE8();                                                                   // 0x0804DFE8
    void sub_804E0D8(int type, FieldObject* owner, int frame);                            // 0x0804E0D8
    void sub_804E33C(FieldObject** objects, int count);                                   // 0x0804E33C
    void sub_804E450();                                                                   // 0x0804E450
    u8* sub_804E5C4(u8* data);                                                            // 0x0804E5C4
    void sub_804E6E0(FieldObject** objects, int count);                                   // 0x0804E6E0
    u8 sub_804EA68();                                                                     // 0x0804EA68
    void sub_804F904();                                                                   // 0x0804F904
    struct Coldef* sub_804FA30(int cellX, int cellY, int* floor, int* ceiling, int* top); // 0x0804FA30
    void sub_804FA94(s16 cameraX, s16 cameraY);                                           // 0x0804FA94
    void sub_804FAF8();                                                                   // 0x0804FAF8
    void sub_804FB14();                                                                   // 0x0804FB14
};

#endif
