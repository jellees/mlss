#pragma implementation "system_screens.h"

#include "global.h"
#include "common.h"
#include "sprite.h"
#include "heap.h"
#include "process.h"
#include "title_screen.h"
#include "system_screens.h"
#include "system_screen_popups.h"
#include "options_menu.h"

// Sprite renderer of the save clear screen. Its inline update is only emitted for the vtable, as
// weak code (linked right after this file's .text).
class SaveClearRenderer : public Process {
  public:
    SaveClearRenderer(u8 priority, char* label) : Process(priority, label) {
    }
    virtual void update() {
        int var1 = gGameState.oamCursor;
        sub_8020A78();
        gOamNodesSort(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 2580);
        var1 = gOamNodesCopy(stru_203FFB8.field_3C, var1);
        gGameState.oamCursor = var1;
    }
};

inline MarioBrosSaveError::~MarioBrosSaveError() {
    if (this->winw) {
        operator delete[](this->winw);
    }
    if (this->bwcw) {
        operator delete[](this->bwcw);
    }
    if (this->bwsw) {
        operator delete[](this->bwsw);
    }
    if (this->bbwf) {
        operator delete[](this->bbwf);
    }
    operator delete(this->bbwi);
    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_BLDCNT = 0;
}

inline OptionsMenu::~OptionsMenu() {
    sub_8021FD4();
    if (this->odtr) {
        delete this->odtr;
    }
    if (this->winw) {
        operator delete[](this->winw);
    }
    if (this->bwcw) {
        operator delete[](this->bwcw);
    }
    if (this->bwsw) {
        operator delete[](this->bwsw);
    }
    if (this->bbwf) {
        operator delete[](this->bbwf);
    }
    operator delete((void*)this->bbwi);
    sub_801A6B0();
    gGameState.field_31 = 2;
    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_BLDCNT = BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_NONE;
}

void popup_draw(struct Popup* popup, u16* map, u8 x, u8 y, u8 width, u8 height, u16 vramOffset) {
    int row;
    int column;
    int i;
    int j;
    u16* top;
    u16* bottom;
    u16* left;
    u16* right;
    int innerHeight;

    dword_3001034(0, (void*)map, 0x800);

    map[y * 32 + x] = 0x68;
    map[y * 32 + x + width - 1] = 0x468;
    map[(y + height - 1) * 32 + x] = 0x868;
    map[(y + height - 1) * 32 + x + width - 1] = 0xC68;

    top = &map[y * 32 + x + 1];
    bottom = &map[(y + height - 1) * 32 + x + 1];
    for (i = 0; i < width - 2; i++) {
        *top++ = 0x69;
        *bottom++ = 0x869;
    }

    left = &map[(y + 1) * 32 + x];
    right = &map[(y + 1) * 32 + x + width - 1];
    innerHeight = height - 2;
    for (j = 0; j < innerHeight; j++) {
        *left = 0x6A;
        *right = 0x46A;
        left += 32;
        right += 32;
    }

    for (row = 0; row < innerHeight; row++) {
        u16* tile = &map[(y + row + 1) * 32 + x + 1];

        for (column = 0; column < width - 2; column++) {
            *tile++ = 0x6B;
        }
    }

    sub_8018218(map, (void*)(0x6000000 + vramOffset), 0x800, 32, 0);

    popup->isClosing = 0;
    popup->zoomFrame = 1;
    popup->x = x * 8;
    popup->y = y * 8;
    popup->width = width * 8;
    popup->height = height * 8;

    off_839EC80[REG_OFFSET_DISPCNT + 1] |= 0x20;
    {
        u8* ptr = off_839EC80;
        u8 value = x + (width >> 1);
        ptr += 0x40;
        *ptr = value;
    }
    {
        u8* ptr = off_839EC80;
        ptr += 0x41;
        *ptr = x + (width >> 1);
    }
    {
        u8* ptr = off_839EC80;
        u8 value = y + (height >> 1);
        ptr += 0x44;
        *ptr = value;
    }
    {
        u8* ptr = off_839EC80;
        ptr += 0x45;
        *ptr = y + (height >> 1);
    }

    off_839EC80[0x48] |= 1;
    off_839EC80[0x48] |= 2;
    off_839EC80[0x48] |= 4;
    off_839EC80[0x48] |= 8;
    off_839EC80[0x48] |= 0x10;
    ((s8*)off_839EC80)[0x48] &= ~0x20;

    ((s8*)off_839EC80)[0x4A] &= ~1;
    ((s8*)off_839EC80)[0x4A] &= ~2;
    off_839EC80[0x4A] |= 4;
    off_839EC80[0x4A] |= 8;
    off_839EC80[0x4A] |= 0x10;
    ((s8*)off_839EC80)[0x4A] &= ~0x20;

    BUFFER_REG_DISPCNT |= 0x200;
}

void popup_animate(struct Popup* popup) {
    u8 xOff, yOff;
    s32 xSize;
    s32 ySize;
    s32 xySize;

    if (popup->zoomFrame == 0)
        return;

    xSize = popup->width * popup->zoomFrame;
    if (xSize < 0)
        xSize += 0xF;
    xOff = xSize >> 4;

    ySize = popup->height * popup->zoomFrame;
    if (ySize < 0)
        ySize += 0xF;
    yOff = ySize >> 4;

    {
        u8* ptr = *(u8**)0x0839EC80;
        ySize = (popup->width >> 1) + popup->x;
        xySize = xOff + ySize;
        ptr += 0x40;
        *ptr = xySize;
    }

    {
        u8* ptr = *(u8**)0x0839EC80;
        xSize = (popup->width >> 1) + popup->x;
        xSize = xSize - xOff;
        ptr += 0x41;
        *ptr = xSize;
    }

    {
        u8* ptr = *(u8**)0x0839EC80;
        xSize = (popup->height >> 1) + popup->y;
        ySize = yOff + xSize;
        ptr += 0x44;
        *ptr = ySize;
    }

    {
        u8* ptr = *(u8**)0x0839EC80;
        xSize = (popup->height >> 1) + popup->y;
        xSize = xSize - yOff;
        ptr += 0x45;
        *ptr = xSize;
    }

    if (!popup->isClosing) {
        if (popup->zoomFrame == 8) {
            (*(s8**)0x0839EC80)[1] &= 0xDF;
            popup->zoomFrame = 0;
        } else {
            popup->zoomFrame++;
        }
    } else {
        if (--popup->zoomFrame == 0) {
            (*(s8**)0x0839EC80)[1] &= 0xDF;
            BUFFER_REG_DISPCNT &= 0xFDFF;
        }
    }
}

OptionsMenu::OptionsMenu(u8 priority, char* label, int a4) : Process(priority, label) {
    Process* odtr;
    u16* cgdw;
    u16* v10;
    int v11;

    u16* v21;
    int v22;

    volatile int v31;
    int i;

    BUFFER_REG_BLDCNT = 191;
    BUFFER_REG_BLDY = 16;
    BUFFER_REG_DISPCNT = 0;

    sub_8017E34();

    gGameState.field_31 = 8;
    this->options_0 = a4;

    sub_801A548();

    odtr = new (0, "OTDR", 0) OptionsRenderer(8, "OTDR");
    this->odtr = odtr;
    odtr->parentProcess = this;

    this->selection = 0;
    this->brightness = 16;
    this->winw = (int*)operator new[](2048, 1, "WINW", 0);
    this->options_4 =
        gGameState.field_88A_4 | gGameState.field_88B_0 << 1 | dword_3000FFC->field_8_5 << 2;
    this->field_1D = 0;

    dword_3001034(0, (void*)&this->popup, 8);
    cgdw = (u16*)operator new[](0x8000, 1, "CGDW", 0);
    dword_3000C84(dword_83A0E94, cgdw);
    CpuFastSet(cgdw, (void*)0x6000000, (sub_80198B0(dword_83A0E94) >> 2) & 0x1FFFFF);
    dword_3000C84(dword_83A1F60, cgdw);
    CpuFastSet(cgdw, (void*)0x6010000, (sub_80198B0(dword_83A1F60) >> 2) & 0x1FFFFF);

    // Set background map.
    CpuFastSet(dword_83A13A0, cgdw, 512);
    v10 = &cgdw[192];
    v11 = 3;
    while (v11 != 0) {
        u16* v13;
        u16* v14;
        int i;

        // Corners.
        v10[4] = 1;
        v10[36] = 3;
        v10[25] = 1025;
        v10[57] = 1027;

        // Top and bottom row.
        v13 = &v10[37];
        v14 = &v10[5];
        for (i = 0; i < 20; i++) {
            v14[i] = 2;  // Top
            v13[i] = 17; // Bottom
        }

        // Skip to next row.
        v11--;
        v10 = &v10[96];
    }
    CpuFastSet(cgdw, (void*)0x600D800, 512);
    if (cgdw) {
        operator delete[](cgdw);
    }

    sub_8020994(0x3000, 8, 0, 0x80u);

    this->sprite = sub_8020DD0(5, SPRITE_ID(5, 5), 1, -1, -1, -1, -1);
    sub_801E150(this->sprite, 0, -1, 0, 0);
    sprite_show(this->sprite);
    this->sprite->xPosition = 40;
    this->sprite->yPosition = 55;

    if (gGameState.field_888_1 == 0) {
        CpuFastSet(off_83A2880, (void*)0x2000280, 16);
        CpuFastSet(dword_83A1BA0, (void*)0x2000080, 120);
    } else {
        CpuFastSet(off_83A28C0, (void*)0x2000280, 16);
        CpuFastSet(dword_83A1D80, (void*)0x2000080, 120);
    }

    gGameState.field_0 = 0xFFFF;
    gGameState.field_2 = 0xFFFF;

    this->bbwf = (int*)operator new[](sub_819941C - sub_8198784, 0, "BBWF", 1);
    sub_81994EC(this->bbwf, off_851F9E8);
    this->bbwi = (struct struc_15*)operator new(20, 0, "BBWI", 1);
    this->bwcw = (u8*)operator new[](115231, 1, "BWCW", 1);
    this->field_28 = (u8*)((int)&this->bwcw[31] & 0xFFFFFFE0);
    this->field_2C = &this->field_28[57600];

    this->bwsw = (u16*)operator new[](3840, 1, "BWSW", 1);
    v21 = &this->bwsw[192];
    v22 = 0;
    while (v22 < 3) {
        u16 v23;
        u16* v26;
        u16* v27;
        int j;

        v23 = ((v22 << 6) + 128) | 0xE000;
        v26 = &v21[36];
        v27 = &v21[4];

        for (j = 0; j < 22; j++, v23++) {
            v27[j] = v23;
            v26[j] = v23 + 32;
        }
        v22++;
        v21 = &v21[96];
    }
    CpuFastSet(this->bwsw, (void*)0x600D000, 512);

    v31 = 0;
    CpuFastSet((void*)&v31, (void*)0x6004000, 0x1000008);
    drawLabels(0);
    dword_3001034(0, (void*)this->field_2C, 57600);

    for (i = 1; i < 8; i++) {
        drawInfoMessages(i);
        sub_8017E34();
    }
    sub_801A548();

    BUFFER_REG_BG0CNT = 0x1805;
    BUFFER_REG_BG1CNT = 0x1901;
    BUFFER_REG_BG2CNT = 0x1A03;
    BUFFER_REG_BG3CNT = 0x1B03;
    BUFFER_REG_BG0HOFS = 0;
    BUFFER_REG_BG0VOFS = 0;
    BUFFER_REG_BG1HOFS = 0;
    BUFFER_REG_BG1VOFS = 0;
    BUFFER_REG_BG2HOFS = 0;
    BUFFER_REG_BG2VOFS = 0;
    BUFFER_REG_BG3HOFS = 0;
    BUFFER_REG_BG3VOFS = 0;
    BUFFER_REG_DISPCNT = 0x1C40;

    sub_8019308(0, 30, -1);
    sub_80193B4(0, 0xFFu, 0x10u);
}

void OptionsMenu::update() {
    switch (this->state) {
        case OPTS_STATE_FADE_IN:
            this->brightness--;
            BUFFER_REG_BLDY = this->brightness;
            if (this->brightness == 0) {
                this->state = OPTS_STATE_SELECT_OPTION;
            }
            break;

        case OPTS_STATE_SELECT_OPTION:
            if (this->field_1D > 0) {
                this->field_1D--;
            }
            if (this->popup.zoomFrame > 0) {
                popup_animate(&this->popup);
                break;
            }
            if (this->field_1D != 0 || gGameState.field_2A & A_BUTTON) {
                break;
            }
            if (gGameState.field_2A & B_BUTTON) {
                if ((bool8)save()) {
                    this->brightness = 16;
                    sub_80193B4(0, 0, 16);
                    this->state = OPTS_STATE_LEAVE;
                } else {
                    this->state = OPTS_STATE_SAVE_ERROR;
                }
                break;
            }
            if (gGameState.field_2E & DPAD_UP) {
                this->selection--;
                if (this->selection < 0) {
                    this->selection = 2;
                }
                play_sfx_80195B4(95, -1);
            } else if (gGameState.field_2E & DPAD_DOWN) {
                this->selection++;
                if (this->selection > 2) {
                    this->selection = 0;
                }
                play_sfx_80195B4(95, -1);
            }
            this->sprite->yPosition = 24 * this->selection + 55;
            switch (this->selection) {
                case 0:
                    if ((this->options_4 ^ OPTION_FLAGS_EASY_SLEEP) & OPTION_FLAGS_EASY_SLEEP) {
                        if (gGameState.field_2A & DPAD_LEFT) {
                            this->options_4 |= OPTION_FLAGS_EASY_SLEEP;
                            showInfoPopup(word_83A2900[0], word_83A2900[1]);
                            play_sfx_80195B4(95, -1);
                            this->state = OPTS_STATE_EASY_SLEEP_CONFIRMATION;
                        }
                    } else {
                        if (gGameState.field_2A & DPAD_RIGHT) {
                            this->options_4 &= ~OPTION_FLAGS_EASY_SLEEP;
                            play_sfx_80195B4(95, -1);
                        }
                    }
                    break;

                case 1:
                    if (gGameState.field_888_1 == 1) {
                        if (!(this->options_4 & OPTION_FLAGS_RUMBLE_FEATURE)) {
                            if (gGameState.field_2A & DPAD_LEFT) {
                                this->options_4 |= OPTION_FLAGS_RUMBLE_FEATURE;
                                showInfoPopup(word_83A2900[2], word_83A2900[3]);
                                play_sfx_80195B4(95, -1);
                                this->state = OPTS_STATE_RUMBLE_FEATURE_CONFIRMATION;
                            }
                        } else {
                            if (gGameState.field_2A & DPAD_RIGHT) {
                                this->options_4 &= ~OPTION_FLAGS_RUMBLE_FEATURE;
                                gGameState.field_88B_0 = 0;
                                play_sfx_80195B4(95, -1);
                            }
                        }
                    }
                    break;

                case 2:
                    if (!(this->options_4 & OPTION_FLAGS_AUTO_FEATURE)) {
                        if (gGameState.field_2A & DPAD_LEFT) {
                            this->options_4 |= OPTION_FLAGS_AUTO_FEATURE;
                            showInfoPopup(word_83A2900[4], word_83A2900[5]);
                            play_sfx_80195B4(95, -1);
                            this->state = OPTS_STATE_AUTO_SLEEP_CONFIRMATION;
                        }
                    } else {
                        if (gGameState.field_2A & DPAD_RIGHT) {
                            this->options_4 &= ~OPTION_FLAGS_AUTO_FEATURE;
                            play_sfx_80195B4(95, -1);
                        }
                    }
                    break;
            }
            break;

        case OPTS_STATE_EASY_SLEEP_CONFIRMATION:
            if (this->popup.zoomFrame == 0) {
                if (gGameState.field_2A & A_BUTTON) {
                    this->sprite->xPosition = 40;
                    this->sprite->yPosition = 24 * this->selection + 55;
                    off_839EC80[REG_OFFSET_DISPCNT + 1] |= DISPCNT_HBLANK_INTERVAL;
                    this->popup.isClosing = 1;
                    this->popup.zoomFrame = 7;
                    BUFFER_REG_DISPCNT &= ~DISPCNT_BG0_ON;
                    play_sfx_80195B4(96, -1);
                    this->state = OPTS_STATE_SELECT_OPTION;
                }
            } else {
                popup_animate(&this->popup);

                if (this->popup.zoomFrame == 6) {
                    sub_8018218(this->field_2C, (void*)0x6004020, 0x4B00, 32, 0);
                } else if (this->popup.zoomFrame == 7) {
                    sub_8018218(this->bwsw, (void*)0x600C000, 0x500, 32, 0);
                } else if (this->popup.zoomFrame == 0) {
                    this->sprite->xPosition = this->okButtonPosX + 6;
                    this->sprite->yPosition = this->okButtonPosY + 7;
                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                }
            }
            break;

        case OPTS_STATE_RUMBLE_FEATURE_CONFIRMATION:
            if (this->popup.zoomFrame == 0) {
                if (gGameState.field_2A & A_BUTTON) {
                    this->sprite->xPosition = 40;
                    this->sprite->yPosition = 24 * this->selection + 55;
                    off_839EC80[REG_OFFSET_DISPCNT + 1] |= DISPCNT_HBLANK_INTERVAL;
                    this->popup.isClosing = 1;
                    this->popup.zoomFrame = 7;
                    BUFFER_REG_DISPCNT &= ~DISPCNT_BG0_ON;
                    gGameState.field_88B_0 = 1;
                    this->field_1D = 16;
                    sub_801ABE8(0, 16, 0);
                    play_sfx_80195B4(96, -1);
                    this->state = OPTS_STATE_SELECT_OPTION;
                }
            } else {
                popup_animate(&this->popup);
                if (this->popup.zoomFrame == 6) {
                    sub_8018218(this->field_2C + 0x4B00, (void*)0x6004020, 0x4B00, 32, 0);
                } else if (this->popup.zoomFrame == 7) {
                    sub_8018218(this->bwsw + 0x280, (void*)0x600C000, 0x500, 32, 0);
                } else if (this->popup.zoomFrame == 0) {
                    this->sprite->xPosition = this->okButtonPosX + 6;
                    this->sprite->yPosition = this->okButtonPosY + 7;
                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                }
            }
            break;

        case OPTS_STATE_AUTO_SLEEP_CONFIRMATION:
            if (this->popup.zoomFrame == 0) {
                if (gGameState.field_2A & A_BUTTON) {
                    this->sprite->xPosition = 40;
                    this->sprite->yPosition = 24 * this->selection + 55;
                    off_839EC80[REG_OFFSET_DISPCNT + 1] |= DISPCNT_HBLANK_INTERVAL;
                    this->popup.isClosing = 1;
                    this->popup.zoomFrame = 7;
                    BUFFER_REG_DISPCNT &= ~DISPCNT_BG0_ON;
                    play_sfx_80195B4(96, -1);
                    this->state = OPTS_STATE_SELECT_OPTION;
                }
            } else {
                popup_animate(&this->popup);
                if (this->popup.zoomFrame == 6) {
                    sub_8018218(this->field_2C + 0x9600, (void*)0x6004020, 0x4B00, 32, 0);
                } else if (this->popup.zoomFrame == 7) {
                    sub_8018218(this->bwsw + 0x500, (void*)0x600C000, 0x500, 32, 0);
                } else if (this->popup.zoomFrame == 0) {
                    this->sprite->xPosition = this->okButtonPosX + 6;
                    this->sprite->yPosition = this->okButtonPosY + 7;
                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                }
            }
            break;

        case OPTS_STATE_SAVE_ERROR:
            drawSaveError();
            showSaveErrorPopup();
            this->brightness = 240;
            this->state = OPTS_STATE_SAVE_ERROR_CONFIRMATION;
            break;

        case OPTS_STATE_SAVE_ERROR_CONFIRMATION:
            if (this->popup.zoomFrame == 0) {
                this->brightness--;
                if (this->brightness == 0
                    || gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) {
                    this->brightness = 16;
                    sub_80193B4(0, 0, 16);
                    this->state = OPTS_STATE_LEAVE;
                }
            } else {
                popup_animate(&this->popup);
                if (this->popup.zoomFrame == 6) {
                    sub_8018218(this->field_2C, (void*)0x6004020, 0x4B00, 32, 0);
                } else if (this->popup.zoomFrame == 7) {
                    sub_8018218(this->bwsw, (void*)0x600C000, 0x500, 32, 0);
                } else if (this->popup.zoomFrame == 0) {
                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                }
            }
            break;

        case OPTS_STATE_LEAVE:
            this->brightness--;
            BUFFER_REG_BLDY = 16 - this->brightness;
            if (this->brightness == 0) {
                delete this;

                new (0, "OPEN", 0) TitleScreen(8, "OPEN", 3);
                return;
            }
            break;
    }

    sub_8021F7C();
}

int OptionsMenu::save() {
    gGameState.field_88A_4 = ((this->options_4 >> OPTION_FLAGS_SHIFT_EASY_SLEEP) & 1) != 0;
    gGameState.field_88B_0 = ((this->options_4 >> OPTION_FLAGS_SHIFT_RUMBLE_FEATURE) & 1) != 0;
    dword_3000FFC->field_8_3 = ((this->options_4 >> OPTION_FLAGS_SHIFT_EASY_SLEEP) & 1) != 0;
    dword_3000FFC->field_8_4 = ((this->options_4 >> OPTION_FLAGS_SHIFT_RUMBLE_FEATURE) & 1) != 0;
    dword_3000FFC->field_8_5 = ((this->options_4 >> OPTION_FLAGS_SHIFT_AUTO_FEATURE) & 1) != 0;

    return sub_812454C();
}

void OptionsMenu::drawLabels(int a2) {
    int i;

    dword_3001034(0, (void*)this->field_28, 6144);

    for (i = 0; i < 3; i++) {
        if (gGameState.field_888_1 != 1 && i == 1) {
            sub_8199D78(this->bbwi, this->field_28, 32, 4, 0, 0, 1, 2, 7, 0);
        } else {
            sub_8199D78(this->bbwi, this->field_28, 32, 4, 0, 0, 1, 2, 5, 0);
        }
        sub_8199D5C(this->bbwi, 0, 16 * i + 2, *off_83A2920[i] + 2);
        do {
            u8* v5 = this->bbwi->field_8;
            if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
                this->bbwi->field_8 += 3;
            }
        } while (sub_8199624(this->bbwi) != 0);
    }

    if (a2) {
        sub_8018218((void*)this->field_28, (void*)0x6001000, 6144, 32, 0);
    } else {
        CpuFastSet((void*)this->field_28, (void*)0x6001000, 0x600);
    }
}

void OptionsMenu::drawInfoMessages(int a1) {
    int i;

    if (a1 <= 1) {
        dword_3001034(0, (void*)this->field_2C, 0xE100);
        dword_3001034(0, (void*)this->bwsw, 0xF00);
        if (a1 == 1) {
            return;
        }
    }

    i = 0;
    if (a1 != 0) {
        i = a1 - 2;
    }
    for (; a1 != 0 ? i <= a1 - 2 : i <= 5; i++) {
        int j;
        int text0;
        int text1;
        u16 yOff;
        u16 y1;
        u16 y0;
        u16 width;
        int odd;
        int zero;
        int even;
        u16* hp;
        int k;

        j = i / 2;
        zero = 0;
        text0 = *off_83A292C[j * 2];
        k = j * 2 + 1;
        text1 = *off_83A292C[k];
        width = word_83A2900[j * 2] - 4;
        hp = &word_83A2900[k];
        y0 = word_83A290C[j * 2];
        y1 = word_83A290C[k];
        yOff = 80 - (s16)*hp * 4;
        odd = ((s16)width & 1) ? 4 : 0;
        even = (u16)(i ^ 1) & 1;

        if (even) {
            u16* dst;
            u16 tile;
            int y;

            sub_8199D78(this->bbwi, this->field_2C + j * 5 * 0xF00, (s16)width, (u8)odd, zero, zero, 1,
                        2, 5, zero);
            sub_8199D5C(this->bbwi, 0, y0 + yOff, text0 + 2);
            do {
                u8* v5 = this->bbwi->field_8;
                if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
                    this->bbwi->field_8 += 3;
                }
            } while (sub_8199624(this->bbwi) != 0);

            dst = &this->bwsw[j * 5 * 128];
            tile = 0xE001;
            for (y = 0; y < 16; y++) {
                int x;

                dst += (30 - (s16)width) / 2;
                for (x = 0; x < (s16)width; x++) {
                    *dst++ = tile++;
                }
                dst += (30 - (s16)width) / 2 + 2;
            }
        } else {
            sub_8199D78(this->bbwi, this->field_2C + j * 5 * 0xF00, (s16)width, (u8)odd, 0, 0, 1, 2, 5,
                        0);
            sub_8199D5C(this->bbwi, 0, y1 + yOff, text1 + 2);
            do {
                u8* v5 = this->bbwi->field_8;
                if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
                    this->bbwi->field_8 += 3;
                }
            } while (sub_8199624(this->bbwi) != 0);
        }
    }
}

void OptionsMenu::drawSaveError() {
    u16* dst;
    u16 tile;
    int y;
    int x;
    u16 width;
    u16 yPos;
    int text;
    int zero;

    dword_3001034(0, (void*)this->field_2C, 0x4B00);
    dword_3001034(0, (void*)this->bwsw, 0x500);

    zero = 0;
    width = word_83A2918[0];
    yPos = word_83A291C[1];
    text = dword_84E8B18;
    sub_8199D78(this->bbwi, this->field_2C, (s16)width, (u8)word_83A291C[0], zero, zero, 1, 2, 5, 3);
    sub_8199D5C(this->bbwi, 0, yPos + 1, text + 2);
    do {
        u8* v5 = this->bbwi->field_8;
        if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
            this->bbwi->field_8 += 3;
        }
    } while (sub_8199624(this->bbwi) != 0);

    dst = this->bwsw;
    tile = 0xE001;
    for (y = 0; y < 16; y++) {
        dst += (30 - (s16)width) / 2;
        for (x = 0; x < (s16)width; x++) {
            *dst++ = tile++;
        }
        dst += (30 - (s16)width) / 2 + 2;
    }
}

void OptionsRenderer::update() {
    OptionsMenu* optn;
    u16* oam;
    u8 y;
    int i;
    int leftPalette;
    int rightPalette;

    optn = (OptionsMenu*)parentProcess;
    oam = (u16*)gGameState.oamCursor;
    y = 48;

    if (optn->popup.zoomFrame == 0) {
        switch (optn->state) {
            case 2:
            case 3:
            case 4:
                oam[0] = optn->okButtonPosY | 0x4000;
                oam[1] = optn->okButtonPosX | 0x8000;
                oam[2] = 0x78;
                oam += 4;
                break;
        }
    }

    sub_8020A78();
    gOamNodesSort(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 2580);
    oam = (u16*)gOamNodesCopy(stru_203FFB8.field_3C, (int)oam);

    for (i = 0; i <= 2; i++, y += 24) {
        if (gGameState.field_888_1 != 1 && i == 1) {
            leftPalette = 1;
        } else {
            leftPalette = (u16)((optn->options_4 >> i) ^ 1) & 1;
        }
        oam[0] = y | 0x4000;
        oam[1] = 0x8098;
        oam[2] = (leftPalette << 12) | 0xC00;
        oam += 4;

        rightPalette = leftPalette;
        if (gGameState.field_888_1 == 1 || i != 1) {
            rightPalette ^= 1;
        }
        oam[0] = y | 0x4000;
        oam[1] = 0x80B0;
        oam[2] = (rightPalette << 12) | 0xC08;
        oam += 4;
    }

    oam[0] = 0x4042;
    oam[1] = 0x4020;
    oam[2] = 0xC20;
    oam += 4;
    oam[0] = 0x4042;
    oam[1] = 0x4040;
    oam[2] = 0xC24;
    oam += 4;
    oam[0] = 0x405A;
    oam[1] = 0x4020;
    oam[2] = 0xCC0;
    oam += 4;
    oam[0] = 0x405A;
    oam[1] = 0x4040;
    oam[2] = 0xCC4;
    oam += 4;
    oam[0] = 0x4000;
    oam[1] = 0x8010;
    oam[2] = 0x1C80;
    oam += 4;
    oam[0] = 0x4000;
    oam[1] = 0x8030;
    oam[2] = 0x1C88;
    oam += 4;

    gGameState.oamCursor = (int)oam;
}

SaveClearScreen::SaveClearScreen(u8 priority, char* label) : Process(priority, label) {
    Process* bidr;
    u16* cgdw;
    u16* scdw;
    u8* strw;
    int i;
    int k;
    volatile int zero;
    int tileNum;

    BUFFER_REG_BLDCNT = 191;
    BUFFER_REG_BLDY = 16;
    BUFFER_REG_DISPCNT = 0;
    sub_8017E34();

    gGameState.field_31 = 2;
    gGameState.field_888_5 = 1;
    gGameState.field_888_6 = 1;

    bidr = new (0, "BIDR", 0) SaveClearRenderer(8, "BIDR");
    this->bidr = bidr;
    bidr->parentProcess = this;

    this->field_1C_0 = 1;
    this->field_3C = 0;
    this->brightness = 16;
    this->winw = (int*)operator new[](0x800, 1, "WINW", 0);

    cgdw = (u16*)operator new[](0x8000, 1, "CGDW", 0);
    dword_3000C84(dword_83A0E94, cgdw);
    CpuFastSet(cgdw, (void*)0x6000000, (sub_80198B0(dword_83A0E94) >> 2) & 0x1FFFFF);
    if (cgdw) {
        operator delete[](cgdw);
    }

    scdw = (u16*)operator new[](0x800, 1, "SCDW", 1);
    for (i = 15, tileNum = 0x107B; i >= 0; i--) {
        scdw[0x167 + i] = tileNum;
        tileNum--;
    }
    CpuFastSet(scdw, (void*)0x600E800, 0x200);
    if (scdw) {
        operator delete[](scdw);
    }

    sub_8020994(0x2000, 8, 0, 0);

    this->sprite = sub_8020DD0(5, SPRITE_ID(5, 5), 1, -1, -1, -1, -1);
    sub_801E150(this->sprite, 0, -1, 0, 0);
    sprite_show(this->sprite);
    this->sprite->xPosition = 140;
    this->sprite->yPosition = 90;

    if (gGameState.field_888_1 == 0) {
        CpuFastSet(dword_83A1BA0, (void*)0x2000080, 120);
    } else {
        CpuFastSet(dword_83A1D80, (void*)0x2000080, 120);
    }
    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 = 0xFFFF;

    this->bbwf = (int*)operator new[](sub_819941C - sub_8198784, 0, "BBWF", 1);
    sub_81994EC(this->bbwf, off_851F9E8);
    this->bbwi = (struct struc_15*)operator new(20, 0, "BBWI", 1);
    this->bwcw = (u8*)operator new[](0x12C1F, 1, "BWCW", 1);
    this->field_24 = (u8*)((int)&this->bwcw[31] & 0xFFFFFFE0);
    this->bwsw = (u16*)operator new[](0x2800, 1, "BWSW", 1);

    zero = 0;
    CpuFastSet((void*)&zero, (void*)0x6004000, 0x1000008);

    strw = (u8*)operator new[](0x100, 0, "STRW", 0);
    for (k = 0; k < 5; k++) {
        u16 textY;
        u16 width;
        int text;
        u16* dst;
        u16 tile;
        int row;
        int column;

        textY = word_83A2958[k];
        width = word_83A2944[k * 2];
        text = *off_83A2964[k];
        strw[0] = 0xFF;
        strw[1] = 0x35;
        CpuSet((void*)(text + 2), strw + 2, 0x7F);

        sub_8199D78(this->bbwi, this->field_24 + k * 0x3C00, (s16)width, 0, 0, 0, 1, 2, 5, 3);
        sub_8199D5C(this->bbwi, 0, textY, (int)strw);
        do {
            u8* v5 = this->bbwi->field_8;
            if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
                this->bbwi->field_8 += 3;
            }
        } while (sub_8199624(this->bbwi) != 0);

        dst = &this->bwsw[k * 1024];
        tile = 0xE001;
        for (row = 0; row < 16; row++) {
            dst += (30 - (s16)width) / 2;
            for (column = 0; column < (s16)width; column++) {
                *dst++ = tile++;
            }
            dst += (30 - (s16)width) / 2 + 2;
        }
    }
    operator delete[](strw);

    CpuFastSet(this->field_24, (void*)0x6004020, 0xF00);
    CpuFastSet(this->bwsw, (void*)0x6002000, 0x200);

    BUFFER_REG_BG0CNT = 0x406;
    BUFFER_REG_BG1CNT = 0x1C02;
    BUFFER_REG_BG2CNT = 0x1D01;
    BUFFER_REG_BG0HOFS = 0;
    BUFFER_REG_BG0VOFS = 0;
    BUFFER_REG_BG1HOFS = 0;
    BUFFER_REG_BG1VOFS = 0;
    BUFFER_REG_BG2HOFS = 0;
    BUFFER_REG_BG2VOFS = 0;

    showPopup(word_83A2944[0], word_83A2944[1]);

    BUFFER_REG_BLDCNT = 191;
    BUFFER_REG_BLDY = 0;
    BUFFER_REG_DISPCNT = 0x3340;
}

SaveClearScreen::~SaveClearScreen() {
    if (this->bidr) {
        delete this->bidr;
    }
    if (this->winw) {
        operator delete[](this->winw);
    }
    if (this->bwcw) {
        operator delete[](this->bwcw);
    }
    if (this->bwsw) {
        operator delete[](this->bwsw);
    }
    if (this->bbwf) {
        operator delete[](this->bbwf);
    }
    operator delete(this->bbwi);
    sub_8021FD4();

    gGameState.field_888_5 = 0;
    gGameState.field_888_6 = 0;
    gGameState.field_888_3 = 0;
    gGameState.field_31 = 2;
    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_BLDCNT = 0;
}

void SaveClearScreen::update() {
    u16 progress;

    switch (this->state) {
        case 0:
            if (this->popup.zoomFrame > 0) {
                popup_animate(&this->popup);
                if (this->popup.zoomFrame == 0) {
                    if (this->popup.isClosing) {
                        sub_8018218(this->field_24 + 0x3C00, (void*)0x6004020, 0x3C00, 0, 32);
                        sub_8018218(this->bwsw + 0x400, (void*)0x6002000, 0x800, 0, 32);
                        this->field_1C_0 = 1;
                        showPopup(word_83A2944[2], word_83A2944[3]);
                        this->sprite->yPosition = 98;
                        this->state = 1;
                    }
                }
            } else if (gGameState.field_2A & A_BUTTON) {
                off_839EC80[REG_OFFSET_DISPCNT + 1] |= 0x20;
                this->popup.isClosing = 1;
                this->popup.zoomFrame = 7;
                play_sfx_80195B4(96, -1);
                if (this->field_1C_0) {
                    this->state = 5;
                }
            } else if (gGameState.field_2A & (DPAD_RIGHT | DPAD_LEFT)) {
                this->field_1C_0 ^= 1;
                play_sfx_80195B4(95, -1);
            }
            this->sprite->xPosition = !this->field_1C_0 ? 100 : 140;
            break;

        case 1:
            if (this->popup.zoomFrame > 0) {
                popup_animate(&this->popup);
                if (this->popup.zoomFrame == 1) {
                    if (this->popup.isClosing) {
                        sub_8018218(this->field_24 + 0x7800, (void*)0x6004020, 0x3C00, 0, 32);
                        sub_8018218(this->bwsw + 0x800, (void*)0x6002000, 0x800, 0, 32);
                    }
                }
                if (this->popup.zoomFrame == 0) {
                    if (this->popup.isClosing) {
                        showPopup(word_83A2944[4], word_83A2944[5]);
                        off_839EC80[0x4A] |= 0x10;
                        sprite_hide(this->sprite);
                        this->state = 2;
                    }
                }
            } else if (gGameState.field_2A & A_BUTTON) {
                off_839EC80[REG_OFFSET_DISPCNT + 1] |= 0x20;
                this->popup.isClosing = 1;
                this->popup.zoomFrame = 7;
                play_sfx_80195B4(96, -1);
                if (this->field_1C_0) {
                    this->state = 5;
                }
            } else if (gGameState.field_2A & (DPAD_RIGHT | DPAD_LEFT)) {
                this->field_1C_0 ^= 1;
                play_sfx_80195B4(95, -1);
            }
            this->sprite->xPosition = !this->field_1C_0 ? 100 : 140;
            break;

        case 2:
            if (this->popup.zoomFrame > 0) {
                popup_animate(&this->popup);
                if (this->popup.zoomFrame != 0) {
                    break;
                }
                sub_812418C();
                off_839EC80[REG_OFFSET_DISPCNT + 1] |= 0x40;
                off_839EC80[0x42] = 56;
                off_839EC80[0x43] = 56;
                off_839EC80[0x46] = 160;
                off_839EC80[0x47] = 0;
                off_839EC80[0x49] |= 1;
                off_839EC80[0x49] |= 2;
                off_839EC80[0x49] |= 4;
                off_839EC80[0x49] |= 8;
                off_839EC80[0x49] |= 0x10;
                ((s8*)off_839EC80)[0x49] &= ~0x20;
                off_839EC80[0x4A] |= 1;
                off_839EC80[0x4A] |= 2;
                ((s8*)off_839EC80)[0x4A] &= ~4;
                off_839EC80[0x4A] |= 8;
                off_839EC80[0x4A] |= 0x10;
                ((s8*)off_839EC80)[0x4A] &= ~0x20;
                BUFFER_REG_DISPCNT |= 0x400;
                gGameState.field_88A_3 = 0;
                gGameState.field_88C_0 = 0;
            } else {
                progress = sub_8124270(this->field_3C, 8);
                if (progress == 0xFFFF) {
                    gGameState.field_88C_0 = 1;
                    gGameState.field_8C0 = 0;
                    gGameState.field_88A_4 = 0;
                    gGameState.field_88B_0 = 0;
                    gGameState.field_88A_3 = 1;
                    sub_8018218(this->field_24 + 0xF000, (void*)0x6004020, 0x3C00, 0, 32);
                    sub_8018218(this->bwsw + 0x1000, (void*)0x6002000, 0x800, 0, 32);
                    this->brightness = 240;
                    BUFFER_REG_DISPCNT &= 0xFBFF;
                    this->state = 4;
                } else {
                    this->field_3C = progress;
                    {
                        u8* ptr = off_839EC80;
                        //! Possible fake match: the target re-reads field_3C after storing it.
                        u8 value = (*(vu16*)&this->field_3C >> 3) + 56;
                        ptr += 0x42;
                        *ptr = value;
                    }
                    if (this->field_3C == 0x400) {
                        gGameState.field_88C_0 = 1;
                        gGameState.field_8C0 = 0;
                        gGameState.field_88A_4 = 0;
                        gGameState.field_88B_0 = 0;
                        gGameState.field_88A_3 = 1;
                        ((s8*)off_839EC80)[REG_OFFSET_DISPCNT + 1] &= ~0x40;
                        sub_8018218(this->field_24 + 0xB400, (void*)0x6004020, 0x3C00, 0, 32);
                        sub_8018218(this->bwsw + 0xC00, (void*)0x6002000, 0x800, 0, 32);
                        this->brightness = 240;
                        this->state = 3;
                    }
                }
            }
            break;

        case 3:
        case 4:
            if (--this->brightness == 0 || gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) {
                off_839EC80[REG_OFFSET_DISPCNT + 1] |= 0x20;
                ((s8*)off_839EC80)[0x4A] &= ~1;
                ((s8*)off_839EC80)[0x4A] &= ~2;
                ((s8*)off_839EC80)[0x4A] &= ~4;
                this->popup.isClosing = 1;
                this->popup.zoomFrame = 7;
                this->state = 5;
            }
            break;

        case 5:
            popup_animate(&this->popup);
            if (this->popup.zoomFrame == 0) {
                delete this;
                new (0, "OPEN", 0) CompanyIntro(8, "COMP");
                return;
            }
            break;
    }

    sub_8021F7C();
}

MarioBrosSaveError::MarioBrosSaveError(u8 priority, char* label) : Process(priority, label) {
    u16* cgdw;
    volatile int zero;
    int text;
    u16 width;
    u16* dst;
    u16 tile;
    int row;
    int column;

    BUFFER_REG_BLDCNT = 191;
    BUFFER_REG_BLDY = 16;
    BUFFER_REG_DISPCNT = 0;
    sub_8017E34();

    this->brightness = 240;
    this->winw = (int*)operator new[](0x800, 1, "WINW", 0);

    cgdw = (u16*)operator new[](0x8000, 1, "CGDW", 0);
    dword_3000C84(dword_83A0E94, cgdw);
    CpuFastSet(cgdw, (void*)0x6000000, (sub_80198B0(dword_83A0E94) >> 2) & 0x1FFFFF);
    if (cgdw) {
        operator delete[](cgdw);
    }

    if (gGameState.field_888_1 == 0) {
        CpuFastSet(dword_83A1BA0, (void*)0x2000080, 120);
    } else {
        CpuFastSet(dword_83A1D80, (void*)0x2000080, 120);
    }
    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 = 0xFFFF;

    this->bbwf = (int*)operator new[](sub_819941C - sub_8198784, 0, "BBWF", 1);
    sub_81994EC(this->bbwf, off_851F9E8);
    this->bbwi = (struct struc_15*)operator new(20, 0, "BBWI", 1);
    this->bwcw = (u8*)operator new[](0x1001F, 1, "BWCW", 1);
    this->field_24 = (u8*)((int)&this->bwcw[31] & 0xFFFFFFE0);
    this->bwsw = (u16*)operator new[](0x2000, 1, "BWSW", 1);

    zero = 0;
    CpuFastSet((void*)&zero, (void*)0x6004000, 0x1000008);

    text = dword_84E8A28;
    width = word_83A2978[0];
    sub_8199D78(this->bbwi, this->field_24, width, 0, 0, 0, 1, 2, 5, 0);
    sub_8199D5C(this->bbwi, 0, 72, text + 2);
    do {
        u8* v5 = this->bbwi->field_8;
        if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
            this->bbwi->field_8 += 3;
        }
    } while (sub_8199624(this->bbwi) != 0);

    dst = this->bwsw;
    tile = 0xE001;
    for (row = 0; row < 16; row++) {
        dst += (30 - width) / 2;
        for (column = 0; column < width; column++) {
            *dst++ = tile++;
        }
        dst += (30 - width) / 2 + 2;
    }

    CpuFastSet(this->field_24, (void*)0x6004020, 0x1000);
    CpuFastSet(this->bwsw, (void*)0x6002000, 0x200);

    BUFFER_REG_BG0CNT = 0x406;
    BUFFER_REG_BG1CNT = 0x1C02;
    BUFFER_REG_BG0HOFS = 0;
    BUFFER_REG_BG0VOFS = 0;
    BUFFER_REG_BG1HOFS = 0;
    BUFFER_REG_BG1VOFS = 0;
    showPopup();

    BUFFER_REG_BLDCNT = 191;
    BUFFER_REG_BLDY = 0;
    BUFFER_REG_DISPCNT = 0x3340;
}

void MarioBrosSaveError::update() {
    switch (this->state) {
        case 0:
            if (this->popup.zoomFrame > 0) {
                popup_animate(&this->popup);
            } else if (--this->brightness == 0
                       || gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) {
                off_839EC80[REG_OFFSET_DISPCNT + 1] |= 0x20;
                this->popup.isClosing = 1;
                this->popup.zoomFrame = 7;
                this->state = 1;
            }
            break;

        case 1:
            popup_animate(&this->popup);
            if (this->popup.zoomFrame == 0) {
                delete this;
                new (0, "OPEN", 0) TitleScreen(8, "OPEN", 2);
            }
            break;
    }
}

void MarioBrosSaveError::showPopup() {
    u8 width = word_83A2978[0];
    u8 height = word_83A2978[1];
    u8 left = 15 - width / 2;
    u8 top = 10 - height / 2;

    popup_draw(&this->popup, (u16*)this->winw, left, top, width, height, 0xE000);
    off_839EC80[0x4A] |= 0x10;
}
