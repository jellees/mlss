#ifndef GAME_BOY_PLAYER_LOGO_H
#define GAME_BOY_PLAYER_LOGO_H

#include "process.h"

struct GameBoyPlayerLogo {
    struct Process process;
    s8 brightness;
    u16 dpadInput;
    u16 previousDpadInput;
    u32 frames;
    u32 previousFrames;
    void (*finishCallback)(void);
};

#endif