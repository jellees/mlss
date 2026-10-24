#ifndef SAVE_MENU_H
#define SAVE_MENU_H

#include "process.h"

struct SaveMenu {
    struct Process process;
    struct Process* tsdr;
    struct Process* fade;
    struct Tmev* tmev;
    struct Sprite* cursor;
    struct Sprite* fileSprites[2];
    struct Sprite* currentSprites[2];
    struct Sprite* field_3C;
    struct Sprite* field_40;
    struct Sprite* field_44;
    struct Sprite* arrows[5];
    struct EeprStruct1* save;
    u8 field_60[2];
    u8 field_62;
    u8 field_63;
    u8 pad64;
    u8 field_65;
    u8 field_66;
    u8 field_67;
    u8 field_68;
    u8 field_69;
    u8 pad6A[2];
    void* field_6C;
    struct LoadMenuEntry entry;
    struct struc_3000388* field_8C;
    int field_90;
    void* field_94;
    void* field_98;
    int field_9C;
    u16 field_A0;
    u16 field_A2;
    u16 field_A4;
    u16 field_A6;
    u8 field_A8;
    u8 field_A9;
    u8 field_AA[3];
    u8 field_AD;
    u8 field_AE;
    u8 field_AF;
    u8 field_B0;
    u8 field_B1;
    u8 field_B2;
    u8 field_B3;
    u8 field_B4;
    u8 field_B5;
    u8 field_B6;
    u8 field_B7;
    u8 field_B8;
    u8 padB9;
    u16 field_BA;
    u16 field_BC;
    vu16 field_BE;
    u16 field_C0[3];
    u8 padC6[2];
    void* field_C8;
    struct struc_15 field_CC;
    struct struc_15 field_E0;
    struct struc_15 field_F4;
    struct struc_15 field_108;
    u8 pad11C[4];
    void* field_120;
    void* field_124;
};

struct SaveMenu* sub_8127EF8(struct SaveMenu*, u8, char*, int);
void sub_8127FC4(struct SaveMenu*, int);
void sub_812936C(struct SaveMenu*);
void sub_812804C(struct SaveMenu*);
u8 sub_8128D74(struct SaveMenu*);
void* sub_8129B4C(struct SaveMenu*, void*);
void sub_8129C98(struct SaveMenu*);
void sub_812A42C(struct SaveMenu*);
void sub_812A7A0(struct Process*);
u8 sub_812A888(struct SaveMenu*);
void sub_812A8AC(struct SaveMenu*, u16);
void sub_812A8E0(struct SaveMenu*);

#endif
