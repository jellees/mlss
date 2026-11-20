#pragma implementation "game_mode.h"
#include "global.h"
#include "common.h"
#include "event/event.h"
#include "heap.h"
#include "field/field.h"
#include "game_mode.h"
#include "system_screens.h"
#include "title_screen.h"

inline void GameMode::sub_801B0AC(u16 mask) {
    word_3000D3C = mask;
}

inline void GameMode::sub_801B084() {
    if (gGameState.field_2A & word_3000D3C) {
        play_sfx_80195B4(0x50, -1);
    }
}

inline void GameMode::sub_801B034() {
    if (gGameState.inputPressed == (L_BUTTON | R_BUTTON | SELECT_BUTTON | B_BUTTON | A_BUTTON)) {
        new (0, "BCLR", 0) SaveClearScreen(8, "BCLR");
    } else {
        new (0, "COMP", 0) CompanyIntro(8, "COMP");
    }
}

void GameMode::sub_801AF50() {
    sub_80FC1F8();
}

void GameMode::make_fldm_801AF5C(int fromSave) {
    new (0, "FLDM", 0) FieldManager(8, "FLDM", !fromSave ? 0x73 : -1, true, false);
}

void GameMode::sub_801AFA0() {
    if (stru_3000D40.field_0_0) {
        CommonEvent::removeScriptReader();
        CommonEvent::destroy();
        sub_801BD30();
        CpuFill32(0, &stru_3000D40, sizeof(stru_3000D40));
        stru_3000D40.field_0_0 = 0;
    }
}

void GameMode::sub_801AFE4(int arg0) {
    if (!stru_3000D40.field_0_0) {
        sub_801BD50(1);
        CommonEvent::create();
        CommonEvent::initScriptReader();
        stru_3000D40.field_0_0 = 1;
    }
}

void GameMode::sub_801B014() {
    sub_801AFA0();
    if (dword_3000FB8) {
        sub_80E8DC0();
    }
    sub_801AFE4(0);
}
