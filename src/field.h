#ifndef FIELD_H
#define FIELD_H

#include "process.h"
#include "asm_processes.h"
#include "text080575C8.h"
#include "field_object.h"
#include "field_player_character.h"
#include "field_monster.h"
#include "field_object_subclass2.h"
#include "field_object_subclass3.h"

// Handle returned by bevs_process_init_80F048C and evts_process_init_80EF3FC.
struct EventScriptProcess {
    struct Process* process;
    u8 data[0x20];
};

#pragma interface

struct FieldStruct1 {
    struct Sprite* sprite;
    s16 field_4;
    s16 field_6;
};

// "FMEX" buffer (FieldManager::field_1C).
struct FieldStruct2 {
    u8 pad_0[0x25C];
    struct FieldStruct1 field_25C[4];
    u8 field_27C[0x44];
};

// Entries of FieldManager::field_134.
struct FieldStruct3 {
    u8 field_0_0 : 1;
    u8 field_0_1 : 1;
    u8 field_0_2 : 6;
    u8 field_1;
    u8 field_2;
    u8 field_3;
    u16 field_4;
    u8 pad_6[0x2];
    u8* field_8;
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
    u8 pad_D4[0x8];
    u8* field_DC; // Count, first index and offset of the 8-byte entries read by sub_8026C78
    u8 pad_E0[0x4];
    u32 field_E4;
    u8 pad_E8[0x8];
    u32 field_F0;
    u8 pad_F4[0x4];
    u8 field_F8_0 : 1;
    u8 field_F8_1 : 1;
    u8 field_F8_2 : 1;
    u8 field_F8_3 : 1;
    u8 field_F8_4 : 1;
    u8 field_F8_5 : 1;
    u8 field_F8_6 : 1;
    u8 field_F8_7 : 1;
    u8 field_F9_0 : 2;
    u8 field_F9_2 : 1;
    u8 field_F9_3 : 1;
    u8 field_F9_4 : 1;
    u8 field_F9_5 : 1;
    u8 field_F9_6 : 1;
    u8 field_F9_7 : 1;
    u16 field_FA_0 : 4;
    u16 field_FA_4 : 1;
    u16 field_FA_5 : 5;
    u16 field_FA_10 : 1;
    u16 field_FA_11 : 5;
    u16 field_FC_0 : 1;
    u16 field_FC_1 : 1;
    u16 field_FC_2 : 1;
    u16 field_FC_3 : 4;
    u16 field_FC_7 : 4;
    u16 field_FC_11 : 1;
    u16 field_FC_12 : 4;
    u16 field_FE;
    u8 pad_100[0x2];
    u16 field_102; // Wipe center x
    u16 field_104; // Wipe center y
    u16 field_106; // Wipe radius
    u16 field_108; // Mode passed to sub_8027168
    u8 field_10A;
    u8 field_10B;
    u8 pad_10C;
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
    u8 field_12C_1 : 1;
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
    FieldStruct3 field_134[16];
    u8 field_1F4;
    u8 pad_1F5;
    s16 field_1F6;
    u8 field_1F8;
    u8 pad_1F9;
    u16 field_1FA;
    Process* field_1FC;
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
    u32 field_20B_2 : 2;
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
    u8 field_246_2 : 3;
    u8 field_246_5 : 3;
    u8 pad_247[0x24];
    u8 field_26B_0 : 5;
    u8 shotBulletIndex : 3; // Next shotBullets slot: counts up for jets, down from 3 for bubbles
    u8 field_26C;
    u8 pad_26D[0xD];
    u16 field_27A;
    u16 field_27C;
    u16 field_27E;
    u16 field_280;
    u16 field_282;
    u16 field_284;
    u8 pad_286[0x4];
    u8 field_28A;
    u8 field_28B;
    u8 field_28C;
    u8 field_28D;
    u8 field_28E;
    u8 field_28F;
    u8 pad_290;
    u8 field_291_0 : 1;
    u8 field_291_1 : 1;
    u8 field_291_2 : 6;
    u8 pad_292[0x2];
    u16 field_294;
    u8 pad_296[0x12];
    u8 field_2A8_0 : 5; // Battle: index of the monster
    u8 field_2A8_5 : 1;
    u8 field_2A8_6 : 1;
    u8 field_2A8_7 : 1;
    u8 field_2A9_0 : 2;
    u8 field_2A9_2 : 3; // Battle: mode passed to sub_80277C4
    u8 field_2A9_5 : 1;
    u8 field_2A9_6 : 1;
    u8 field_2A9_7 : 1;
    u16 field_2AA;
    u8 pad_2AC[0x6];
    s16 field_2B2;
    u8 pad_2B4[0x4];
    u8 field_2B8_0 : 1;
    u8 field_2B8_1 : 3;
    u8 field_2B8_4 : 1;
    u8 field_2B8_5 : 1;
    u8 field_2B8_6 : 1;
    u8 field_2B8_7 : 1;
    u8 field_2B9;
    u8 pad_2BA[0x12];
    u32 field_2CC;
    u8 pad_2D0[0x8];
    u8 field_2D8_0 : 5;
    u8 field_2D8_5 : 3;
    u8 pad_2D9;
    u16 followerRoomId;
    s32 field_2DC;
    s32 field_2E0;
    s32 field_2E4;
    s32 field_2E8;
    u8 pad_2EC[0x18];
    S_MP* field_304;
    Process* field_308;
    Process* field_30C;
    FieldProcess803EA00* field_310;
    Process* field_314;
    Process* field_318; // "WIPE"
    struct EventScriptProcess* evts;
    struct EventScriptProcess* bevs;

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
    int sub_80261C0(FieldObject* object);
    void sub_80262CC(int x, int y, int z, int height, int type, bool arg6, bool playSound);
    void sub_802641C(int arg1, int arg2, int arg3, int arg4);
    void sub_80264F4(u16 arg1);
    void sub_80265EC();
    void make_field_objects_80267C0(int roomId);
    void sub_8026C78();
    void sub_8026E94();
    void sub_8027030(int mode, int arg2, u16 arg3, u16 arg4, u16 arg5);
    void sub_8027168(int mode, int arg2, u16 x, u16 y);
    bool sub_8027378();
    void sub_80273E4();
    void sub_8027558();
    void sub_80275F4();
    void sub_8027688();
    void sub_802772C();
    void sub_80277C4(int mode, FieldPlayerCharacter* player, FieldMonster* monster, bool arg4);
};

extern "C" {
void sub_8029934(FieldManager*);
void sub_80292EC(FieldManager*);
}

#endif
