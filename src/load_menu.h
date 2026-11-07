#ifndef LOAD_MENU_H
#define LOAD_MENU_H

#include "process.h"
#include "asm_processes.h"

#pragma interface

// Renderer process of the load menu ("TLD").
class LoadMenuRenderer : public Process {
  public:
    LoadMenuRenderer(u8 priority, char* label);
    virtual void update();
};

class LoadMenu : public Process {
  public:
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
    Process* tld;
    struct Process* fade;
    struct Tmev* field_160;

    LoadMenu(u8 priority, char* label, u16 arg3);
    ~LoadMenu();
    virtual void update();
    u8 sub_8126520();
    void sub_8126C3C();
    void* sub_81270E4(void* buf);
    void sub_8127238();
    void sub_812791C();
    u8 sub_8127AB0();
    void sub_8127ADC(u16 color);
    void sub_8127B20();
    void* sub_8127B90(void* buf);
};

#endif
