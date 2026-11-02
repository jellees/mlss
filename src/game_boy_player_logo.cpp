#include "global.h"
#include "common.h"
#include "process.h"
#include "game_boy_player_logo.h"

GameBoyPlayerLogo::GameBoyPlayerLogo(u8 priority, char* label, void (*finishCallback)(void))
    : Process(priority, label) {
    gGameState.field_88A_3 = 0;
    brightness = 16;
    this->finishCallback = finishCallback;
    dpadInput = 0;
    previousDpadInput = 0;
    frames = 0;
    previousFrames = 0;
    CpuFastSet(dword_81DD7F4, (void*)0x2000080, 128);
    sub_8018218(dword_81DD9F4, (void*)BG_CHAR_ADDR(2), sizeof(dword_81DD9F4), 32, 0);
    sub_8018218(dword_81E19F4, (void*)BG_SCREEN_ADDR(0), sizeof(dword_81E19F4), 32, 0);
    gGameState.field_884 |= 0xFFFF;
    gGameState.field_2 = 0xFFFF;
    sub_8017E34();
    BUFFER_REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    BUFFER_REG_BLDY = 16;
    BUFFER_REG_BG0CNT = BGCNT_CHARBASE(2) | BGCNT_256COLOR;
    BUFFER_REG_DISPCNT = DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON;
}

inline GameBoyPlayerLogo::~GameBoyPlayerLogo() {
    gGameState.field_88A_3 = 1;
    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_BLDCNT = 0;
}

void GameBoyPlayerLogo::update() {
    u16 dpadHeld;

    switch (state) {
        case 0:
            brightness--;
            BUFFER_REG_BLDY = brightness;
            if (brightness == 0) {
                brightness = 50;
                state++;
            }
            break;

        case 1:
            brightness--;
            if (brightness == 0) {
                brightness = 16;
                state++;
            }
            break;

        case 2:
            brightness--;
            BUFFER_REG_BLDY = 16 - brightness;
            if (brightness == 0) {
                delete this;

                if (finishCallback != NULL) {
                    finishCallback();
                }

                return;
            }
    }

    previousDpadInput = dpadInput;
    dpadInput = DPAD_ANY & ~REG_KEYINPUT;
    dpadHeld = dpadInput & ~previousDpadInput & DPAD_ANY;

    if (dpadHeld == DPAD_ANY) {
        previousFrames = frames;
        frames = Process::frames;
        if (previousFrames != 0 && frames - previousFrames < 4) {
            gGameState.field_888_1 = 1;
            stru_3000D18.field_0_1 = 0;
        }
    }
}
