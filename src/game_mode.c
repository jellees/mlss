#include "global.h"
#include "common.h"
#include "game_mode.h"
#include "system_screens.h"
#include "title_screen.h"

static const char sFieldLabel[];

void sub_801AF50(void) {
    sub_80FC1F8();
}

void make_fldm_801AF5C(int fromSave) {
    struct FldmFlag arg4 = { 1 }, arg5 = { 0 };
    init_fldm_8021FF8(alloc_Zero(0x324, 0, (char*)sFieldLabel, 0), 8, (char*)sFieldLabel,
                      !fromSave ? 0x73 : -1, arg4, arg5);
}

void sub_801AFA0(void) {
    if (stru_3000D40.field_0_0) {
        sub_80E9AF8();
        sub_80E9D04();
        sub_801BD30();
        CpuFill32(0, &stru_3000D40, sizeof(stru_3000D40));
        stru_3000D40.field_0_0 = 0;
    }
}

void sub_801AFE4(int arg0) {
    if (!stru_3000D40.field_0_0) {
        sub_801BD50(1);
        sub_80E9D1C();
        sub_80E9B0C();
        stru_3000D40.field_0_0 = 1;
    }
}

void sub_801B014(void) {
    sub_801AFA0();
    if (dword_3000FB8) {
        sub_80E8DC0();
    }
    sub_801AFE4(0);
}

void sub_801B034(void) {
    if (gGameState.inputPressed == (L_BUTTON | R_BUTTON | SELECT_BUTTON | B_BUTTON | A_BUTTON)) {
        save_clear_create(alloc_Zero(sizeof(struct SaveClearScreen), 0, "BCLR", 0), 8, "BCLR");
    } else {
        company_intro_create(alloc_Zero(sizeof(struct CompanyIntro), 0, "COMP", 0), 8, "COMP");
    }
}

void sub_801B084(void) {
    if (gGameState.field_2A & word_3000D3C) {
        play_sfx_80195B4(0x50, -1);
    }
}

void sub_801B0AC(u16 mask) {
    word_3000D3C = mask;
}

//! Possible fake match.
// Defined after the other functions so it is emitted after "BCLR" and "COMP" in .rodata.
static const char sFieldLabel[] = "FLDM";
