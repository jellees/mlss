/**
 * \file system_screen_popups.cpp
 * Possible helper file for the popups of the system screens. I am not sure whether this should be its
 * own file or part of system_screens.c. Because these functions don't seem to be inlines but normal
 * functions.
 */

#include "global.h"
#include "common.h"
#include "system_screens.h"
#include "system_screen_popups.h"
#include "options_menu.h"

void SaveClearScreen::showPopup(int width, int height) {
    int left = 15 - width / 2;
    int top = 10 - height / 2;

    popup_draw(&this->popup, (u16*)this->winw, left, top, width, height, 0xE000);
    off_839EC80[0x4A] |= 0x10;
}

void OptionsMenu::showSaveErrorPopup() {
    u8 width = word_83A2918[0];
    u8 height = word_83A2918[1];
    u8 left = 15 - width / 2;
    u8 top = 10 - height / 2;

    popup_draw(&this->popup, (u16*)this->winw, left, top, width, height, 0xC800);
}

void OptionsMenu::showInfoPopup(int width, int height) {
    u8 left = 15 - width / 2;
    u8 top = 10 - height / 2;

    popup_draw(&this->popup, (u16*)this->winw, left, top, width, height, 0xC800);
    this->okButtonPosX = left * 8 + width * 4 - 16;
    this->okButtonPosY = (top + height) * 8 - 22;
}
