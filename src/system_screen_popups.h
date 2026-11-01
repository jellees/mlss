#ifndef SYSTEM_SCREEN_POPUPS_H
#define SYSTEM_SCREEN_POPUPS_H

struct SaveClearScreen;
struct OptionsMenu;

void save_clear_show_popup(struct SaveClearScreen* bclr, int width, int height);
void options_show_save_error_popup(struct OptionsMenu* optn);
void options_show_info_popup(struct OptionsMenu* optn, int width, int height);

#endif
