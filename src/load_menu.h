#ifndef LOAD_MENU_H
#define LOAD_MENU_H

#include "process.h"

struct LoadMenuItem {
    u16 id;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 pad5[3];
};

struct LoadMenuEntry {
    struct LoadMenuItem items[2];
    u16 field_10;
    u16 field_12;
    u8 field_14;
    u8 field_15;
    u8 field_16;
    u8 field_17;
    u8 field_18;
    u8 pad19[3];
};

struct TmevData {
    u8 pad0[4];
    u8* field_4;
};

struct Tmev {
    struct Process process;
    u8 pad1C[0xC];
    struct TmevData* field_28;
};

struct LoadMenu {
    struct Process process;
    struct Sprite* cursor;
    struct Sprite* sprites[6];
    struct Sprite* arrows[4];
    struct EeprStruct1* save;
    u8 field_4C[4];
    struct struc_3000388* field_50;
    void* field_54;
    void* field_58;
    void* field_5C;
    void* field_60;
    struct struc_15 field_64;
    u8 pad78[0x3C];
    struct struc_15 field_B4;
    void* field_C8;
    void* field_CC;
    int field_D0;
    int field_D4;
    u16 field_D8;
    u16 field_DA;
    u16 field_DC;
    u16 field_DE;
    u8 padE0[4];
    u16 field_E4;
    u16 field_E6;
    u16 field_E8;
    u16 field_EA;
    u16 field_EC;
    u8 field_EE;
    u8 field_EF;
    u8 field_F0;
    u8 field_F1;
    u8 field_F2;
    u8 field_F3;
    u8 field_F4;
    u8 field_F5;
    u8 padF6;
    u8 field_F7;
    u8 field_F8;
    s8 field_F9;
    s8 field_FA;
    s8 field_FB;
    u8 padFC[4];
    struct LoadMenuEntry entries[3];
    u8 field_154[4];
    struct Process* tld;
    struct Process* fade;
    struct Tmev* field_160;
};

struct LoadMenu* load_init_812538C(struct LoadMenu*, u8, char*, u16);
void sub_8125464(struct LoadMenu*, int);
void sub_81254FC(struct LoadMenu*);
u8 sub_8126520(struct LoadMenu*);
void sub_8126C3C(struct LoadMenu*);
void* sub_81270E4(struct LoadMenu*, void*);
void sub_8127238(struct LoadMenu*);
void sub_812791C(struct LoadMenu*);
void tld_update_81279D8(struct Process*);
struct Process* tld_init_8127A94(struct Process*, u8, char*);
u8 sub_8127AB0(struct LoadMenu*);
void sub_8127ADC(struct LoadMenu*, u16);
void sub_8127B20(struct LoadMenu*);
void sub_8127BC8(struct LoadMenuEntry*, u8);

#endif
