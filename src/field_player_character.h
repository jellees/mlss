#ifndef FIELD_PLAYER_CHARACTER_H
#define FIELD_PLAYER_CHARACTER_H

#include "field_object.h"

// "FPC" (Field Player Character): Mario and Luigi (FieldManager::objects[0] / [1], and leader /
// follower). Implemented in src/field_player_character.cpp (0x08048064-0x0804FE68), which also emits the
// vtable (0x08CDBE88), the inline members and the implicit destructor (0x081DD5B0). That file also holds
// FieldPlayerShotBullet ("FPSB").
#pragma interface

// FieldManager::field_20C[2], one per player character (FieldPlayerCharacter::field_368).
struct FieldStruct4 {
    u8 field_0;
    u8 field_1; // Previous field_0 (FieldPlayerCharacter::sub_8049BD8)
    u8 pad_2[0x2];
    u16 field_4;
    u16 field_6;
    u8 pad_8[0x8];
    u8 field_10[2]; // Indexed by !FieldPlayerCharacter::field_352_7
    u8 field_12;
    s8 field_13;
    u8 pad_14[0x2];
    u8 field_16_0 : 7;
    u8 field_16_7 : 1;
    u8 field_17_0 : 7; // FieldPlayerCharacter::method5's copy of field_16_0
    u8 field_17_7 : 1; // FieldPlayerCharacter::method5's copy of field_16_7
};

// 12-byte cell rectangles (FieldPlayerCharacter::sub_804A124). The list ends with the entry that has last set.
struct FieldStruct6 {
    u32 left : 8; // In cells
    u32 top : 8;
    u32 right : 8;
    u32 bottom : 8;
    u32 field_4_0 : 1;
    u32 type : 3;
    u32 layer : 1; // Compared with FieldObject::field_26_1
    u32 field_4_5 : 27;
    u32 field_8 : 16;
    u32 field_A_0 : 1;
    u32 last : 1;
    u32 field_A_2 : 14;
};

class FieldPlayerCharacter : public FieldObject {
  public:
    u16 field_33C_0 : 7;
    u16 field_33C_7 : 1;
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
    u8 field_352_0 : 1;
    u8 field_352_1 : 1;
    u8 field_352_2 : 1;
    u8 field_352_3 : 1;
    u8 field_352_4 : 1;
    u8 field_352_5 : 1;
    u8 field_352_6 : 1;
    u8 field_352_7 : 1;
    u8 field_353_0 : 1; // field_36C follows sprite (method8)
    u8 field_353_1 : 1;
    u8 field_353_2 : 1;
    u8 field_353_3 : 1;
    u8 field_353_4 : 2; // Set from byte_83A0A38 (sub_804FC30)
    u8 field_353_6 : 1;
    u8 field_353_7 : 1; // method5's copy of field_353_6
    s8 field_354;       // method5's copy of field_238
    u8 field_355;
    u16 field_356; // Saved field_218 (sub_8049AB4)
    u16 field_358_0 : 3; // Saved direction (sub_8049AB4)
    u16 field_358_3 : 1;
    u16 field_358_4 : 8;
    u16 field_358_12 : 1;
    u16 field_358_13 : 3;
    u16 field_35A_0 : 1;
    u16 field_35A_1 : 1;
    u16 field_35A_2 : 1;
    u16 field_35A_3 : 8;
    u16 field_35A_11 : 1;
    u16 field_35A_12 : 4;
    u8 pad_35C[0x6];
    s16 field_362; // method5's copy of velocityX
    s16 field_364; // method5's copy of velocityY
    u8 pad_366[0x2];
    struct FieldStruct4* field_368;
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
    u8 pad_386[0x6];

    FieldPlayerCharacter(int room, int index); // 0x08048064
    void sub_8048174(int arg);                  // 0x08048174
    void sub_8049000(u16 animation);            // 0x08049000
    void sub_80490CC(u8 arg);                   // 0x080490CC
    void sub_8049224();                         // 0x08049224
    void sub_80492DC();                         // 0x080492DC
    void sub_8049370(u8 arg);                   // 0x08049370
    void sub_8049430();                         // 0x08049430
    void sub_80494D4();                         // 0x080494D4
    void sub_804955C(int type);                 // 0x0804955C
    void sub_80496B4();                         // 0x080496B4
    void sub_80497A8();                         // 0x080497A8
    void sub_80498B0();                         // 0x080498B0 (uncalled)
    void sub_80499B8();                         // 0x080499B8
    void sub_8049AB4(int mode, int animation);  // 0x08049AB4
    void sub_8049BD8(int value);                // 0x08049BD8
    void sub_8049C38(FieldObject** objects, int count); // 0x08049C38
    u8 sub_804B028(FieldObject* other);                 // 0x0804B028
    bool sub_804B25C(FieldObject* other);               // 0x0804B25C
    void sub_804B360(u8 arg1, u8 arg2);                 // 0x0804B360
    bool sub_804D0EC();                                 // 0x0804D0EC
    bool sub_804D18C();                                 // 0x0804D18C
    int sub_804D2CC();                                  // 0x0804D2CC
    bool sub_804D734(int mode, FieldObject** objects, int count); // 0x0804D734
    bool sub_804DBD0(int mode);                         // 0x0804DBD0
    void sub_804DDF4(FieldObject** objects, int count); // 0x0804DDF4
    int sub_804FB3C();                                  // 0x0804FB3C
    void sub_804FB64(FieldObject** objects, u8 arg1, u8 arg2); // 0x0804FB64
    void sub_804FC30();                                 // 0x0804FC30
    void sub_804FC90();                                 // 0x0804FC90
    void sub_804FD3C();                                 // 0x0804FD3C
    u8* sub_8049FF4(u8* data);                          // 0x08049FF4
    struct FieldStruct6* sub_804A124(struct FieldStruct6* entries, int* outX, int* outY, bool grounded,
                                     bool filtered); // 0x0804A124
    void sub_804FCD4();                         // 0x0804FCD4

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
    virtual void method18(u8 index) { // 0x0804FDF4
        u32 savedField = field_214_0;
        u32 savedDirection = direction;

        if (state >= 5 && state <= 9) {
            sub_804FCD4();
        } else if (state >= 10 && state <= 12) {
            sub_80494D4();
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
            sub_80494D4();
        }
        field_214_0 = savedField;
        direction = savedDirection;
        FieldObject::method19(index);
    }
};

// "FPSB" (Field Player Shot Bullet): the water that Luigi gets out of Pump Mario. FieldManager::shotBullets[8]
// holds the pool. A plain class without virtual functions, implemented between the FieldPlayerCharacter functions
// (0x0804DFE8-0x0804FB3C). Each shot moves along the owner's direction, despawns after its duration, collides
// with walls and floors and reports hits on objects to its owner (FieldPlayerCharacter::field_33C_0 etc.).
enum FieldPlayerShotBulletType {
    // Luigi jumps: a column of droplets. One spawns per frame, round-robin through all 8 slots
    // (FieldManager::shotBulletIndex counts up); each lives about 6 frames.
    FIELD_PLAYER_SHOT_BULLET_JET = 2,
    // Luigi's hammer: up to three slow water bubbles, in slots 2, 1, 0 (shotBulletIndex counts down from 3).
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
    // Boxes unpacked from byte_801349C (sub_804E0D8): one for walls and floors, one for hitting objects.
    u16 boxWidth;
    u16 boxHeight;
    u16 boxDepth;
    u16 hitWidth;
    u16 hitHeight;
    u16 hitDepth;
    s8 frame; // Animation frame to restore (sub_804DFE8)
    void* map; // The owner's collision map (FieldObject::field_290)
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
