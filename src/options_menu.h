#ifndef OPTIONS_MENU_H
#define OPTIONS_MENU_H

#include "system_screens.h"

//! These classes' inline members and vtables are not emitted in the ROM next to their code like
//! other classes' (no out-of-line ~OptionsMenu or renderer constructors), so this header is
//! interface-only and their vtables are asm data (asm/vtables08CDC1F8.s). How the original produced
//! this is not known yet.
#pragma interface

class OptionsMenu : public Process {
  public:
    s8 brightness;
    s8 field_1D;
    Process* odtr;
    u8* bwcw;
    u8* field_28;
    u8* field_2C;
    u16* bwsw;
    int* bbwf;
    struct struc_15* bbwi;
    s8 options_0 : 1;
    s8 options_1 : 3;
    u8 options_4 : 3;
    s8 selection;
    int* winw;
    u8 okButtonPosX;
    u8 okButtonPosY;
    struct Popup popup;
    struct Sprite* sprite;

    OptionsMenu(u8 priority, char* label, int a4);
    ~OptionsMenu();
    virtual void update();
    int save();
    void drawLabels(int a2);
    void drawInfoMessages(int a1);
    void drawSaveError();
    void showSaveErrorPopup();
    void showInfoPopup(int width, int height);
};

class OptionsRenderer : public Process {
  public:
    OptionsRenderer(u8 priority, char* label) : Process(priority, label) {
    }
    virtual void update();
};

#endif
