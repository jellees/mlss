#ifndef TITLE_SCREEN_H
#define TITLE_SCREEN_H

#include "process.h"

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

struct OPENProcess
{
    struct Process process;
    s8 brightness;
    u8 flags_0 : 2;
    u8 flags_2 : 2;
    u8 flags_4 : 1;
    u8 flags_5 : 1;

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

    u8 states[6];
    s16 timer;

    char pad2[12];

    struct BgAffineSrcData mlTextAffineSrc;
    struct BgAffineDstData mlTextAffineDst;
    struct OPDRProcess* opdr;
    s8 selection;
    // struct Sprite* pressStartText;
    // struct Sprite* beanPointer;
    // struct Sprite* marioLuigiGameText;
    // struct Sprite* marioBrosGameText;
    // struct Sprite* optionsText;
    // struct Sprite* suitcase;
    // struct Sprite* nintendoText;
    // struct Sprite* selectionVisual;
    // struct Sprite* superstarSagaText;
    struct Sprite* sprites[9];
};

#endif