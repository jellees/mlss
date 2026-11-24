#ifndef FIELD_H
#define FIELD_H

#include "process.h"
#include "field/field_player_character.h" // FieldStruct4 (FieldManager::field_20C)

class S_FX;
class FieldProcess803EA00;
class PANM;
class S_MP;
class FieldMonster;
class EVTS;
class BEVS;

#pragma interface

// A room's warp (exit) list entry, 12 bytes (FieldManager::warps, from the table at 0x083AF418 via
// sub_8059EF0). The list ends with the entry that has last set.
struct Warp {
    u8 left; // Trigger rectangle, in cells
    u8 top;
    u8 right;
    u8 bottom;
    u16 isAbsolute : 1; // Otherwise keeps the player's offset within the rectangle (sub_8027D64)
    u16 direction : 3;  // Direction 0-7 the player walks in (FieldPlayerCharacter::findWarp filter)
    u16 fromLedge : 1;  // Compared with FieldObject::field_26_1
    u16 toLedge : 1;
    u16 roomId : 9; // Destination room
    u16 field_4_15 : 1;
    u8 field_6;
    u8 destX; // Destination, in cells
    u8 destY;
    u8 offsetX : 4; // Pixel offset within the destination cell (absolute warps)
    u8 offsetY : 4;
    u8 walkingAnimation : 1;
    u8 last : 1;
    u8 field_A_2 : 6;
    u8 field_B;
};

struct FieldStruct1 {
    struct Sprite* sprite;
    s16 field_4;
    s16 field_6;
};

struct FieldStruct5 {
    u8 pad_0[0x8];
    u8* field_8;
};

// "FMEX" buffer (FieldManager::field_1C).
struct FieldStruct2 {
    struct FieldStruct5* field_0[11];
    void* field_2C[11];
    u8 pad_58[0x4];
    void* field_5C[64];
    void* field_15C[64];
    struct FieldStruct1 field_25C[4];
    u8 field_27C[0x44];
};

// Bean spots from the room's object list (FieldManager::sub_8026C78): entry type 0xA0 is a visible
// bean spot, 0xC0 a hidden treasure. findDigSpot finds the one an object stands on or near.
struct DigSpot {
    u8 hidden
        : 1;    // Hidden treasure (0xC0): Mini Mario finds it (the "!"); visible spots are Luigi only
    u8 dug : 1; // Already dug up (event flag 0x1360 + index)
    u8 field_0_2 : 6;
    u8 tileX; // 16-pixel tiles
    u8 tileY;
    u8 layer;  // z / 2048
    u16 index; // In the room's object list
    u8 pad_6[0x2];
    u8* entry; // The room object entry; bytes 6-7 and 0 go to sub_8116A2C (probably the treasure)
};

// "FMBK" buffer (FieldManager::field_20): a copy of the field state.
struct FieldBackup {
    u8 field_0_0 : 1;
    u8 field_0_1 : 1;
    u8 field_0_2 : 1;
    u8 luigiLeads : 1;
    u8 field_0_4 : 1;
    u8 brothersTogether : 1;
    u8 field_0_6 : 1;
    u8 field_0_7 : 1;
    u8 pad_1[0x3];
    u8 data[0x570];
};

class FieldManager : public Process {
  public:
    FieldStruct2* field_1C;
    FieldBackup* field_20;
    void* field_24;
    FieldObject* objects[32];
    FieldPlayerShotBullet* shotBullets[8]; // "FPSB": Pump Mario's water
    u16* field_C8;
    u16* field_CC;
    struct struc_3000388* field_D0;
    struct RoomHeader* field_D4; // Header of the current room
    u8* field_D8;
    u8* field_DC;             // Count, first index and offset of the 8-byte entries read by sub_8026C78
    struct Warp* warps;       // The current room's warp list
    struct Warp* currentWarp; // The warp being taken (sub_8027D64)
    u32 field_E8;
    u32 field_EC;
    u32 field_F0;
    u16 field_F4;
    u16 field_F6;
    u32 field_F8_0 : 1;
    u32 field_F8_1 : 1;
    u32 field_F8_2 : 1;
    u32 field_F8_3 : 1;
    u32 field_F8_4 : 1;
    u32 field_F8_5 : 1;
    u32 field_F8_6 : 1;
    u32 field_F8_7 : 1;
    u32 field_F9_0 : 2;
    u32 field_F9_2 : 1;
    u32 field_F9_3 : 1;
    u32 field_F9_4 : 1;
    u32 field_F9_5 : 1;
    u32 field_F9_6 : 1;
    u32 field_F9_7 : 1;
    u32 field_FA_0 : 4;
    u32 field_FA_4 : 1;
    u32 field_FA_5 : 5;
    u32 isUnderwater : 1;
    u32 field_FA_11 : 5;
    u16 field_FC_0 : 1;
    u16 field_FC_1 : 1;
    u16 field_FC_2 : 1;
    u16 field_FC_3 : 4;
    s16 field_FC_7 : 4;
    u16 field_FC_11 : 1;
    u16 field_FC_12 : 4;
    u16 field_FE;
    u16 walkSpeed;
    u16 field_102; // Wipe center x
    u16 field_104; // Wipe center y
    u16 field_106; // Wipe radius
    u16 field_108; // Mode passed to sub_8027168
    s8 field_10A;
    u8 objectCount; // Number of used entries in objects
    u8 field_10C;
    u8 field_10D;
    u8 field_10E;
    u8 field_10F;
    u8 field_110;
    u8 field_111;
    u8 field_112;
    u8 field_113;
    u8 field_114;
    u8 field_115;
    u8 field_116;
    u8 field_117;
    u8 field_118;
    u8 field_119;
    u8 field_11A;
    u8 field_11B;
    u8 field_11C;
    u8 field_11D;
    u16 field_11E;
    u16 field_120_0 : 10;
    u16 field_120_10 : 2;
    u16 field_120_12 : 1;
    u16 field_120_13 : 1;
    u16 field_120_14 : 2;
    u16 field_122;
    u16 roomId;
    u16 field_126;
    u16 field_128;
    u8 field_12A;
    s8 field_12B;
    u8 field_12C_0 : 1;
    u8 viewingSignRequested : 1;
    s8 field_12C_2 : 6;
    u8 field_12D_0 : 1;
    u8 field_12D_1 : 1;
    u8 field_12D_2 : 2;
    u8 field_12D_4 : 1;
    u8 field_12D_5 : 1;
    u8 field_12D_6 : 2;
    u16 field_12E;
    u16 field_130;
    u8 pad_132[0x2];
    DigSpot digSpots[16];
    u8 digSpotCount;
    u8 pad_1F5;
    s16 field_1F6;
    u8 field_1F8;
    u8 pad_1F9;
    u16 field_1FA;
    S_FX* field_1FC;
    FieldPlayerCharacter* leader;
    FieldPlayerCharacter* follower;
    u32 field_208_0 : 1;
    u32 field_208_1 : 1;
    u32 luigiLeads : 1;
    u32 field_208_3 : 1;
    // If brothersTogether is false, the leader is separated from the follower and the follower stays
    // where they are.
    u32 brothersTogether : 1;
    u32 field_208_5 : 1;
    u32 field_208_6 : 1;
    u32 field_208_7 : 1;
    u32 field_209_0 : 1;
    u32 field_209_1 : 4;
    u32 field_209_5 : 1;
    u32 field_209_6 : 1;
    u32 field_209_7 : 2;
    u32 field_20A_1 : 1;
    u32 field_20A_2 : 1;
    u32 field_20A_3 : 1;
    u32 field_20A_4 : 1;
    u32 field_20A_5 : 2;
    u32 field_20A_7 : 2;
    u32 field_20B_1 : 1;
    u32 field_20B_2 : 1;
    u32 field_20B_3 : 1;
    u32 field_20B_4 : 1;
    u32 field_20B_5 : 1;
    u32 field_20B_6 : 1;
    u32 field_20B_7 : 1;
    FieldStruct4 field_20C[2];
    void* field_23C;
    u16 field_240;
    u16 field_242;
    u16 field_244;
    u8 field_246_0 : 1;
    u8 field_246_1 : 1;
    u8 brothersForm : 3;
    u8 field_246_5 : 3;
    u8 pad_247;
    s16 field_248;
    s16 field_24A;
    s16 field_24C; // Follower tile x minus leader tile x (jumpOntoBarrel)
    s16 field_24E; // Follower tile y minus leader tile y
    u8 field_250;  // Frame counter (sub_80306A0)
    u8 field_251;
    u8 field_252;
    u8 pad_253;
    s32 field_254;
    u16 field_258;
    s16 field_25A;
    u8 field_25C; // Index of the object the leader climbs onto (sub_80328B4)
    u8 pad_25D[0x4];
    s8 field_261;
    u8 pad_262[0x2];
    u32 field_264;
    u16 field_268;
    u16 field_26A_0 : 7;
    u16 barrelObjectIndex : 6; // Index of the object the player climbs into (enterBarrel)
    u16 shotBulletIndex : 3;   // Next shotBullets slot: counts up for jets, down from 3 for bubbles
    u8 field_26C;
    u8 pad_26D;
    s16 field_26E;
    s16 field_270;
    u16 field_272;
    u16 field_274;
    s16 field_276;
    s16 field_278;
    u16 field_27A;
    u16 field_27C;
    s16 field_27E;
    s16 field_280;
    u16 field_282;
    u16 field_284;
    u16 field_286;
    u16 field_288;
    u8 field_28A;
    u8 field_28B;
    u8 field_28C;
    u8 field_28D;
    u8 field_28E;
    u8 field_28F;
    s8 field_290;
    u8 field_291_0 : 1;
    u8 field_291_1 : 1;
    u8 field_291_2 : 1;
    u8 field_291_3 : 5;
    u8 pad_292[0x2];
    u16 field_294;
    u8 pad_296[0x12];
    u8 field_2A8_0 : 5; // Battle: index of the monster
    u8 field_2A8_5 : 1;
    u8 inBattle : 1;
    u8 field_2A8_7 : 1;
    u8 field_2A9_0 : 1;
    u8 field_2A9_1 : 1;
    u8 field_2A9_2 : 3; // Battle: mode passed to sub_80277C4
    u8 field_2A9_5 : 1;
    u16 field_2A9_6 : 1;
    u8 field_2A9_7 : 1;
    u16 field_2AA;
    u16 field_2AC;
    s8 field_2AE;
    s8 field_2AF;
    u8 field_2B0;
    u8 field_2B1_0 : 2;
    u8 field_2B1_2 : 2;
    u8 field_2B1_4 : 1;
    u8 field_2B1_5 : 3;
    s16 field_2B2;
    s16 field_2B4;
    u8 pad_2B6[0x2];
    u8 field_2B8_0 : 1;
    u8 field_2B8_1 : 3;
    u8 field_2B8_4 : 1;
    u8 field_2B8_5 : 1;
    u8 field_2B8_6 : 1;
    u8 field_2B8_7 : 1;
    s8 field_2B9;
    u8 field_2BA;
    u8 field_2BB;
    s32 field_2BC;
    s32 field_2C0;
    s32 field_2C4;
    s32 field_2C8;
    u32 field_2CC;
    s32 field_2D0;
    s32 field_2D4;
    u8 field_2D8_0 : 5;
    u8 field_2D8_5 : 3;
    u8 pad_2D9;
    u16 followerRoomId;
    s32 field_2DC;
    s32 field_2E0;
    s32 field_2E4;
    s32 field_2E8;
    s16 field_2EC; // Camera pan start
    s16 field_2EE;
    u8 pad_2F0[0x2];
    s16 field_2F2; // Camera pan target
    s16 field_2F4;
    u8 pad_2F6[0x2];
    u16 field_2F8;
    u16 field_2FA;
    u16 field_2FC;
    u8 field_2FE;
    u8 pad_2FF[0x5];
    S_MP* field_304;
    Process* field_308;
    Process* field_30C;
    FieldProcess803EA00* field_310;
    PANM* field_314;
    Process* field_318; // "WIPE"
    EVTS* evts;
    BEVS* bevs;

    FieldManager(u8 priority, char* label, int roomId, bool arg4, bool arg5);
    ~FieldManager();
    virtual void update();
    void sub_80254C0();
    void sub_8025584();
    void sub_802563C();
    void sub_8025ACC();
    u8 sub_8025C04(int index);
    bool sub_8025D24(int type);
    bool sub_8025E94();
    void sub_8025F28();
    int findDigSpot(FieldObject* object);
    void sub_80262CC(int x, int y, int z, int height, int type, bool arg6, bool playSound);
    void sub_802641C(int arg1, int arg2, int arg3, int arg4);
    void sub_80264F4(u16 arg1);
    void sub_80265EC(u16 arg1);
    void make_field_objects_80267C0(int roomId);
    void sub_8026C78();
    void sub_8026E94();
    void sub_8027030(int mode, int arg2, u16 arg3, u16 arg4, u16 arg5);
    void sub_8027168(int mode, int arg2, u16 x, u16 y);
    bool sub_8027378();
    void sub_80273E4();
    void sub_8027558();
    void sub_80275F4();
    void startViewingSign();
    void sub_802772C();
    void sub_80277C4(int mode, FieldPlayerCharacter* player, FieldMonster* monster, bool arg4);
    void update_field_8023DD4();
    void start_battle_8027AC4();
    void sub_8027D64();
    void sub_802814C();
    void sub_8028248();
    void sub_80284B0(int index, int arg2);
    void sub_80286AC(int index);
    void sub_80289BC(FieldPlayerCharacter* player, FieldObject* other);
    void sub_8028AFC(int mode, int relative, int x, int y, u16 speed);
    void sub_8028C40();
    void sub_8028D6C(u16 mask);
    void sub_8028E14(int arg1, int arg2, int arg3);
    void sub_8028E4C();
    bool sub_8028E70();
    void get_fobj_screen_pos(int index, int* x, int* y);
    void sub_8028ED8();
    void sub_8028EE8();
    void sub_8028EF4();
    void sub_8028F2C();
    void sub_8028F40();
    void make_btl_8028F54();
    void sub_8028FBC();
    void sub_8029024(int value);
    void sub_8029030(int arg1, int arg2);
    void requestViewingSign();
    void sub_8029070();
    void sub_8029080();
    void sub_80290CC(int value);
    void sub_80290E0();
    void sub_8029120(u16 high, u16 low);
    void sub_8029170(int arg);
    void sub_80291C8();
    void sub_80291EC(int mode, int arg2, u16 arg3, u16 low, u16 high);
    void sub_80292EC();
    void sub_8029380();
    void sub_80293B8();
    void sub_80293F8(u16 id);
    void sub_8029460();
    void sub_80294A0();
    void sub_802955C();
    void sub_8029624();
    void sub_80296D0();
    void sub_802973C(FieldObject* object, int type, bool arg3, int offset, bool playSound);
    void sub_8029788();
    void sub_80297B8();
    void sub_80297D8(int arg);
    void sub_8029804();
    void sub_8029830();
    void sub_8029878();
    void sub_8029934();
    void changeBrotherForm(int form, bool32 moveStuckFollower);
    void sub_802A4E8();
    void sub_802A608();
    void sub_802A740();
    void sub_802B654(FieldPlayerCharacter* player);
    void sub_802B804(FieldPlayerCharacter* player, bool arg2);
    u8 sub_802BD2C();
    void sub_802BFB0(u8 angle);
    void sub_802C068(struct struc_3000388* arg1);
    void sub_802C208();
    void sub_802C390();
    void sub_802C428(int index, int value);
    void sub_802C4D4(u8 arg1, u8 arg2);
    void sub_802C588(FieldPlayerCharacter* player);
    void sub_802C774(FieldPlayerCharacter* player);
    void sub_802D2F4(FieldPlayerCharacter* player);
    void sub_802D46C(struct struc_3000388* arg);
    void sub_802D544(struct struc_3000388* arg);
    void sub_802D92C();
    void sub_802DA10();
    bool sub_802DC0C(FieldPlayerCharacter* player);
    void sub_802DDB4(FieldPlayerCharacter* player, int index, struct struc_3000388* arg);
    void sub_802DF80(int arg);
    void sub_802E4C8(int arg);
    void sub_802E2F4();
    u8 sub_802E688(bool32 isMole);
    void sub_802E754(u8 arg1, u8 arg2, u8 arg3);
    void sub_802E854(int arg);
    void sub_802EA70();
    void sub_802EC64(int arg);
    void sub_802EF18();
    u8 checkWarps(FieldPlayerCharacter* player, bool arg2, bool arg3, bool arg4);
    void sub_802F498();
    void sub_802F6EC();
    void sub_802F834();
    void sub_802F938();
    void sub_802FAE4(int mode, int arg2);
    void sub_802FD70();
    void sub_80303C4(FieldPlayerCharacter* player);
    void sub_8030484();
    void sub_8031650(FieldPlayerCharacter* player);
    void sub_8034FE8();
    void sub_80306A0();
    void sub_8031234();
    void sub_80313C0();
    void sub_8031518();
    int sub_80316FC();
    void sub_8031768();
    void sub_8032514();
    void sub_80326F4();
    void sub_80328B4();
    void sub_8032A90();
    void hammerIntoGround();
    void digOutOfGround(FieldPlayerCharacter* player);
    void sub_8033E30();
    void sub_8033F5C();
    void enterBarrel(FieldPlayerCharacter* player);
    void breakOutOfBarrel(FieldPlayerCharacter* player);
    void hammerBarrel();
    void jumpOntoBarrel();
    void sub_8034BF4();
    void sub_803A584();
    void sub_80350B4();
    void sub_8035974();
    void sub_8035B98();
    void sub_8035DB0();
    void sub_8036E14();
    void sub_8036F84();
    void sub_80382CC();
    void sub_8039250();
    void sub_8039C9C();
    void sub_803AFCC();
    void sub_803C7D8(FieldPlayerCharacter* player);
    void sub_803C834(FieldPlayerCharacter* player);
    void sub_8027E90(u16 roomId, u16 arg2, u8 direction, int x, int y, int z, int height, int arg8,
                     s8 arg9, bool arg10);
    void sub_8027A04(int arg1, u8 monsterIndex, u8 arg3, int mode, int arg5, int arg6, int arg7,
                     int arg8, int arg9, int arg10);
};

extern "C" {}

#endif
