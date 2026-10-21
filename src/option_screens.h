#ifndef OPTION_SCREENS_H
#define OPTION_SCREENS_H

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

struct BCLRProcess {
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
    struct WindowAttr field_40;
    struct Sprite* sprite;
};

struct MBERProcess {
    struct Process process;     // 0x00
    u8 brightness;              // 0x1C
    u8* bwcw;                   // 0x20
    u8* field_24;               // 0x24
    u16* bwsw;                  // 0x28
    int* bbwf;                  // 0x2C
    struct struc_15* bbwi;      // 0x30
    int* winw;                  // 0x34
    struct WindowAttr field_38; // 0x38
};

struct BCLRProcess* bclr_init(struct BCLRProcess* bclr, u8 priority, char* label);
void sub_80536E8(struct BCLRProcess* bclr, int flags);
void bclr_update_8053778(struct BCLRProcess* bclr);
struct MBERProcess* sub_8053CB4(struct MBERProcess* mber, u8 priority, char* label);
void sub_8053FC4(struct MBERProcess* mber);
void sub_80540B0(struct MBERProcess* mber);
void generate_window_bg_8051B98(struct WindowAttr* attr, u16* map, u8 x, u8 y, u8 width, u8 height,
                                u16 vramOffset);

#endif