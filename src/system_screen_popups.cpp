/**
 * \file system_screen_popups.c
 * Possible helper file for the popups of the system screens. I am not sure whether this should be its
 * own file or part of system_screens.c. Because these functions don't seem to be inlines but normal
 * functions.
 */

#include "global.h"
#include "common.h"
#include "system_screens.h"
#include "system_screen_popups.h"

void save_clear_show_popup(struct SaveClearScreen* bclr, int width, int height) {
    int left = 15 - width / 2;
    int top = 10 - height / 2;

    popup_draw(&bclr->popup, (u16*)bclr->winw, left, top, width, height, 0xE000);
    off_839EC80[0x4A] |= 0x10;
}

void options_show_save_error_popup(struct OptionsMenu* optn) {
    u8 width = word_83A2918[0];
    u8 height = word_83A2918[1];
    u8 left = 15 - width / 2;
    u8 top = 10 - height / 2;

    popup_draw(&optn->popup, (u16*)optn->winw, left, top, width, height, 0xC800);
}

void options_show_info_popup(struct OptionsMenu* optn, int width, int height) {
    u8 left = 15 - width / 2;
    u8 top = 10 - height / 2;

    popup_draw(&optn->popup, (u16*)optn->winw, left, top, width, height, 0xC800);
    optn->okButtonPosX = left * 8 + width * 4 - 16;
    optn->okButtonPosY = (top + height) * 8 - 22;
}
