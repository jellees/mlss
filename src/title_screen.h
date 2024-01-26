#ifndef TITLE_SCREEN_H
#define TITLE_SCREEN_H

#include "process.h"

enum TitleScreenStates {
    // Fade in from white.
    TS_STATE_FADE_IN = 0,
    // Suitcase falls out of sky and opens, revealing logo.
    TS_STATE_SUITCASE_FALLING,
    // Waits a few frames and then show PRESS START.
    TS_STATE_PRESS_START_SHOW,
    // Wait for player input for press start.
    TS_STATE_PRESS_START_WAIT,
    // Suitcase opening animation.
    TS_STATE_SUITCASE_OPENS,
    // Wait for player to select game.
    TS_STATE_GAME_SELECT,
    // Player has chosen, load next process and fade out.
    TS_STATE_FADE_OUT
};

enum TitleScreenElements {
    TS_ELEMENT_SUITCASE = 0,
    TS_ELEMENT_ML_TEXT,
    TS_ELEMENT_SS_TEXT,
    TS_ELEMENT_LICENSE_TEXT,
    TS_ELEMENT_PRESS_START_TEXT,
    TS_ELEMENT_POINTER,

    TS_ELEMENT_COUNT
};

enum TitleScreenSprites {
    TS_SPRITE_PRESS_START_TEXT = 0,
    TS_SPRITE_BEAN_POINTER,
    TS_SPRITE_ML_GAME_TEXT, // Mario & Luigi logo.
    TS_SPRITE_MB_GAME_TEXT, // Mario bros logo.
    TS_SPRITE_OPTIONS_TEXT,
    TS_SPRITE_SUITCASE,
    TS_SPRITE_NINTENDO_TEXT,
    TS_SPRITE_SUITCASE_VISUAL, // The contents of the suitcase.
    TS_SPRITE_SS_TEXT,
};

enum TitleScreenSuitcaseVisualStates {
    TS_SV_STATE_APPEAR = 0,
    TS_SV_STATE_IDLE,
    TS_SV_STATE_DISAPPEAR,
};

struct COMPProcess
{
    struct Process process;
    s8 brightness;
    u8 flags : 1;
    s32 verticalOffset;
    s32 xPosMario;
    s32 xPosLuigi;
    s32 yPosMario;
    s32 yPosLuigi;
    s32 acceleration;
    s32 velocity;
    struct Process* opdr;
    struct Sprite* mario;
    struct Sprite* luigi;
    struct Sprite* alphaDreamLogo;
};

struct TitleScreen
{
    struct Process process;
    s8 brightness;
    u8 suitcaseVisualState : 2;
    // Index to the state after fade in.
    u8 entryStateIdx : 2;
    bool8 isSkippingSuitcaseAnim : 1;
    bool8 skipSuitcaseAnim : 1;
    // Index used for game selection text sprites.
    u8 spriteIdx : 2;

    int xPosSuitcase;
    int yPosSuitcase;
    s16 xVelocitySuitcase;
    s16 yVelocitySuitcase;

    s16 mlTextProgression;
    int mlTextPosY;
    int mlTextScaleX;
    int mlTextScaleY;

    s16 ssTextProgression;
    int ssTextPosY;
    int ssTextScaleX;
    int ssTextScaleY;

    s16 nTextProgression;
    int nTextPosY;
    int nTextScaleX;
    int nTextScaleY;

    s16 psTextVelocity;
    int psTextPosY;

    int beanPosX;
    int beanPosY;
    s16 beanVelocityX;
    s16 beanVelocityY;

    char pad1[16];

    s8 states[6];
    u16 timer;

    char pad2[12];

    struct BgAffineSrcData mlTextAffineSrc;
    struct BgAffineDstData mlTextAffineDst;
    struct OPDRProcess* opdr;
    s8 selection;
    struct Sprite* sprites[9];
};

#endif