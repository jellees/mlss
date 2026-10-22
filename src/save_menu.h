#ifndef SAVE_MENU_H
#define SAVE_MENU_H

#include "process.h"

struct SaveMenu {
    struct Process process;
    struct Process* tsdr;
    struct Process* fade;
    u8 pad0[0x68];
    struct struc_3000388* field_8C;
    u8 pad1[0x16];
    u16 field_A6;
    u8 field_A8;
    u8 field_A9;
    u8 pad2[0x7E];
};

struct SaveMenu* sub_8127EF8(struct SaveMenu*, u8, char*, int);

#endif
