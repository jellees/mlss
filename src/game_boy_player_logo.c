#include "global.h"
#include "common.h"
#include "process.h"
#include "game_boy_player_logo.h"

struct GameBoyPlayerLogo* gbpl_init(struct GameBoyPlayerLogo* gbpl, u8 priority, char* label,
                                    void (*finishCallback)(void)) {
    process_add(&gbpl->process, priority, label);
    gbpl->process.definition = &stru_8CDBD78;
    gGameState.field_88A_3 = 0;
    gbpl->brightness = 16;
    gbpl->finishCallback = finishCallback;
    gbpl->dpadInput = 0;
    gbpl->previousDpadInput = 0;
    gbpl->frames = 0;
    gbpl->previousFrames = 0;
    CpuFastSet(dword_81DD7F4, (void*)0x2000080, 128);
    sub_8018218(dword_81DD9F4, (void*)BG_CHAR_ADDR(2), sizeof(dword_81DD9F4), 32, 0);
    sub_8018218(dword_81E19F4, (void*)BG_SCREEN_ADDR(0), sizeof(dword_81E19F4), 32, 0);
    gGameState.field_884 |= 0xFFFF;
    gGameState.field_2 = -1;
    sub_8017E34();
    BUFFER_REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    BUFFER_REG_BLDY = 16;
    BUFFER_REG_BG0CNT = BGCNT_CHARBASE(2) | BGCNT_256COLOR;
    BUFFER_REG_DISPCNT = DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON;
    return gbpl;
}

void gbpl_update(struct GameBoyPlayerLogo* gbpl) {
    u16 dpadHeld;

    switch (gbpl->process.state) {
        case 0:
            gbpl->brightness--;
            BUFFER_REG_BLDY = gbpl->brightness;
            if (gbpl->brightness == 0) {
                gbpl->brightness = 50;
                gbpl->process.state++;
            }
            break;

        case 1:
            gbpl->brightness--;
            if (gbpl->brightness == 0) {
                gbpl->brightness = 16;
                gbpl->process.state++;
            }
            break;

        case 2:
            gbpl->brightness--;
            BUFFER_REG_BLDY = 16 - gbpl->brightness;
            if (gbpl->brightness == 0) {
                if (gbpl != NULL) {
                    gbpl->process.definition = &stru_8CDBD78;
                    gGameState.field_88A_3 = 1;
                    BUFFER_REG_DISPCNT = 0;
                    BUFFER_REG_BLDCNT = 0;
                    process_remove(&gbpl->process,
                                   PROCESS_REMOVE_FLAGS_FREE | PROCESS_REMOVE_FLAGS_UNKNOWN);
                }

                if (gbpl->finishCallback != NULL) {
                    gbpl->finishCallback();
                }

                return;
            }
    }

    gbpl->previousDpadInput = gbpl->dpadInput;
    gbpl->dpadInput = DPAD_ANY & ~REG_KEYINPUT;
    dpadHeld = gbpl->dpadInput & ~gbpl->previousDpadInput & DPAD_ANY;

    if (dpadHeld == DPAD_ANY) {
        gbpl->previousFrames = gbpl->frames;
        gbpl->frames = gbpl->process.frames;
        if (gbpl->previousFrames != 0 && gbpl->frames - gbpl->previousFrames < 4) {
            gGameState.field_888_1 = 1;
            stru_3000D18.field_0_1 = 0;
        }
    }
}
