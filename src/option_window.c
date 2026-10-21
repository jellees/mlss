/**
 * \file option_window.c
 * Possible helper file for options menus. I am not sure whether this should be its own file or part of
 * options_screen.c. Because these functions don't seem to be inlines but normal functions.
 */

#include "global.h"
#include "common.h"
#include "option_screens.h"
#include "option_window.h"

void sub_80541B0(struct BCLRProcess* bclr, int width, int height) {
    int left = 15 - width / 2;
    int top = 10 - height / 2;

    generate_window_bg_8051B98(&bclr->field_40, (u16*)bclr->winw, left, top, width, height, 0xE000);
    off_839EC80[0x4A] |= 0x10;
}

void sub_805420C(struct OPTNProcess* optn) {
    u8 width = word_83A2918[0];
    u8 height = word_83A2918[1];
    u8 left = 15 - width / 2;
    u8 top = 10 - height / 2;

    generate_window_bg_8051B98(&optn->field_48, (u16*)optn->winw, left, top, width, height, 0xC800);
}

void option_screen_set_ok_button(struct OPTNProcess* optn, int width, int height) {
    u8 left = 15 - width / 2;
    u8 top = 10 - height / 2;

    generate_window_bg_8051B98(&optn->field_48, (u16*)optn->winw, left, top, width, height, 0xC800);
    optn->okButtonPosX = left * 8 + width * 4 - 16;
    optn->okButtonPosY = (top + height) * 8 - 22;
}
