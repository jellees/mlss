#ifndef SYSTEM_SCREENS_H
#define SYSTEM_SCREENS_H

#include "process.h"

#ifdef __cplusplus
extern "C" {
#endif

#define OPTION_FLAGS_SHIFT_EASY_SLEEP     0
#define OPTION_FLAGS_SHIFT_RUMBLE_FEATURE 1
#define OPTION_FLAGS_SHIFT_AUTO_FEATURE   2

#define OPTION_FLAGS_EASY_SLEEP     (1 << OPTION_FLAGS_SHIFT_EASY_SLEEP)
#define OPTION_FLAGS_RUMBLE_FEATURE (1 << OPTION_FLAGS_SHIFT_RUMBLE_FEATURE)
#define OPTION_FLAGS_AUTO_FEATURE   (1 << OPTION_FLAGS_SHIFT_AUTO_FEATURE)

enum OptionScreenStates {
    OPTS_STATE_FADE_IN = 0,
    OPTS_STATE_SELECT_OPTION,
    OPTS_STATE_EASY_SLEEP_CONFIRMATION,
    OPTS_STATE_RUMBLE_FEATURE_CONFIRMATION,
    OPTS_STATE_AUTO_SLEEP_CONFIRMATION,
    OPTS_STATE_SAVE_ERROR,
    OPTS_STATE_SAVE_ERROR_CONFIRMATION,
    OPTS_STATE_LEAVE,
};

#ifdef __cplusplus
}

#pragma interface

class SaveClearScreen : public Process {
public:
    u8 field_1C_0 : 1;
    s8 brightness;
    u8* bwcw;
    u8* field_24;
    u16* bwsw;
    int* bbwf;
    struct struc_15* bbwi;
    Process* bidr;
    int* winw;
    u16 field_3C;
    u8 pad_3E[2];
    struct Popup popup;
    struct Sprite* sprite;

    SaveClearScreen(u8 priority, char* label);
    ~SaveClearScreen();
    virtual void update();
    void showPopup(int width, int height);
};

class MarioBrosSaveError : public Process {
public:
    u8 brightness;
    u8* bwcw;
    u8* field_24;
    u16* bwsw;
    int* bbwf;
    struct struc_15* bbwi;
    int* winw;
    struct Popup popup;

    MarioBrosSaveError(u8 priority, char* label);
    ~MarioBrosSaveError();
    virtual void update();
    void showPopup();
};

extern "C" {
#endif

void popup_draw(struct Popup* popup, u16* map, u8 x, u8 y, u8 width, u8 height, u16 vramOffset);

#ifdef __cplusplus
}
#endif

#endif