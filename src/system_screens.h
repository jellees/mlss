#ifndef SYSTEM_SCREENS_H
#define SYSTEM_SCREENS_H

#define OPTION_FLAGS_SHIFT_EASY_SLEEP     0
#define OPTION_FLAGS_SHIFT_RUMBLE_FEATURE 1
#define OPTION_FLAGS_SHIFT_AUTO_FEATURE   2

#define OPTION_FLAGS_EASY_SLEEP     (1 << OPTION_FLAGS_SHIFT_EASY_SLEEP)
#define OPTION_FLAGS_RUMBLE_FEATURE (1 << OPTION_FLAGS_SHIFT_RUMBLE_FEATURE)
#define OPTION_FLAGS_AUTO_FEATURE   (1 << OPTION_FLAGS_SHIFT_AUTO_FEATURE)

enum OptionScreenStates {
    OPTS_STATE_FADE_IN = 0,
    OPTS_STATE_SELECT_OPTION,
    OPTS_STATE_EASY_SLEEP_CONFIRMATION,
    OPTS_STATE_RUMBLE_FEATURE_CONFIRMATION,
    OPTS_STATE_AUTO_SLEEP_CONFIRMATION,
    OPTS_STATE_SAVE_ERROR,
    OPTS_STATE_SAVE_ERROR_CONFIRMATION,
    OPTS_STATE_LEAVE,
};

struct SaveClearScreen {
    struct Process process;
    u8 field_1C_0 : 1;
    s8 brightness;
    u8* bwcw;
    u8* field_24;
    u16* bwsw;
    int* bbwf;
    struct struc_15* bbwi;
    struct Process* bidr;
    int* winw;
    u16 field_3C;
    u8 pad_3E[2];
    struct Popup popup;
    struct Sprite* sprite;
};

struct MarioBrosSaveError {
    struct Process process;
    u8 brightness;
    u8* bwcw;
    u8* field_24;
    u16* bwsw;
    int* bbwf;
    struct struc_15* bbwi;
    int* winw;
    struct Popup popup;
};

struct SaveClearScreen* save_clear_create(struct SaveClearScreen* bclr, u8 priority, char* label);
void save_clear_destroy(struct SaveClearScreen* bclr, int flags);
void save_clear_update(struct SaveClearScreen* bclr);
struct MarioBrosSaveError* mario_bros_save_error_create(struct MarioBrosSaveError* mber, u8 priority,
                                                        char* label);
void mario_bros_save_error_update(struct MarioBrosSaveError* mber);
void mario_bros_save_error_show_popup(struct MarioBrosSaveError* mber);
void popup_draw(struct Popup* popup, u16* map, u8 x, u8 y, u8 width, u8 height, u16 vramOffset);

#endif