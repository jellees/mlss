#ifndef GAME_BOY_PLAYER_LOGO_H
#define GAME_BOY_PLAYER_LOGO_H

#include "process.h"

#pragma interface

class GameBoyPlayerLogo : public Process {
public:
    s8 brightness;
    u16 dpadInput;
    u16 previousDpadInput;
    u32 frames;
    u32 previousFrames;
    void (*finishCallback)(void);

    GameBoyPlayerLogo(u8 priority, char* label, void (*finishCallback)(void));
    ~GameBoyPlayerLogo();
    virtual void update();
};

#endif
