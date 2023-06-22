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

#endif