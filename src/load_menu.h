#ifndef LOAD_MENU_H
#define LOAD_MENU_H

#include "process.h"

struct LoadMenu {
    struct Process process;
    u8 pad0[0x34];
    struct struc_3000388* field_50;
    void* field_54;
    u8 pad1[0x8C];
    u16 field_E4;
    u8 pad2[0x11];
    u8 field_F7;
    u8 field_F8;
    u8 pad3[0x5F];
    struct Process* tld;
    struct Process* fade;
    void* field_160;
};

struct LoadMenu* load_init_812538C(struct LoadMenu*, u8, char*, u16);
void sub_8125464(struct LoadMenu*, int);

#endif
