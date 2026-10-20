#include "global.h"
#include "common.h"
#include "process.h"
#include "title_screen.h"
#include "option_screens.h"

void generate_window_bg_8051B98(struct WindowAttr* attr, u16* map, u8 x, u8 y, u8 width, u8 height,
                                u16 vramOffset) {
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

    attr->field_0_0 = 0;
    attr->field_1 = 1;
    attr->xStart = x * 8;
    attr->yStart = y * 8;
    attr->xSize = width * 8;
    attr->ySize = height * 8;

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

void sub_8051EE0(struct WindowAttr* arg0) {
    u8 xOff, yOff;
    s32 xSize;
    s32 ySize;
    s32 xySize;

    if (arg0->field_1 == 0)
        return;

    xSize = arg0->xSize * arg0->field_1;
    if (xSize < 0)
        xSize += 0xF;
    xOff = xSize >> 4;

    ySize = arg0->ySize * arg0->field_1;
    if (ySize < 0)
        ySize += 0xF;
    yOff = ySize >> 4;

    {
        u8* ptr = *(u8**)0x0839EC80;
        ySize = (arg0->xSize >> 1) + arg0->xStart;
        xySize = xOff + ySize;
        ptr += 0x40;
        *ptr = xySize;
    }

    {
        u8* ptr = *(u8**)0x0839EC80;
        xSize = (arg0->xSize >> 1) + arg0->xStart;
        xSize = xSize - xOff;
        ptr += 0x41;
        *ptr = xSize;
    }

    {
        u8* ptr = *(u8**)0x0839EC80;
        xSize = (arg0->ySize >> 1) + arg0->yStart;
        ySize = yOff + xSize;
        ptr += 0x44;
        *ptr = ySize;
    }

    {
        u8* ptr = *(u8**)0x0839EC80;
        xSize = (arg0->ySize >> 1) + arg0->yStart;
        xSize = xSize - yOff;
        ptr += 0x45;
        *ptr = xSize;
    }

    if (!arg0->field_0_0) {
        if (arg0->field_1 == 8) {
            (*(s8**)0x0839EC80)[1] &= 0xDF;
            arg0->field_1 = 0;
        } else {
            arg0->field_1++;
        }
    } else {
        if (--arg0->field_1 == 0) {
            (*(s8**)0x0839EC80)[1] &= 0xDF;
            BUFFER_REG_DISPCNT &= 0xFDFF;
        }
    }
}

struct OPTNProcess* optn_init(struct OPTNProcess* optn, u8 priority, char* label, int a4) {
    struct Process* odtr;
    u16* cgdw;
    u16* v10;
    int v11;

    u16* v21;
    int v22;

    volatile int v31;
    int i;

    process_add(&optn->process, priority, label);
    optn->process.definition = &stru_8CDC1F8;

    BUFFER_REG_BLDCNT = 191;
    BUFFER_REG_BLDY = 16;
    BUFFER_REG_DISPCNT = 0;

    sub_8017E34();

    gGameState.field_31 = 8;
    optn->options_0 = a4;

    sub_801A548();

    odtr = (struct Process*)alloc_Zero(0x1C, 0, "OTDR", 0);
    process_add(odtr, 8, "OTDR");
    odtr->definition = &stru_8CDC208;
    optn->odtr = odtr;
    odtr->parentProcess = &optn->process;

    optn->selection = 0;
    optn->brightness = 16;
    optn->winw = alloc_zero_8018DB4(2048, 1, "WINW", 0);
    optn->options_4 =
        gGameState.field_88A_4 | gGameState.field_88B_0 << 1 | dword_3000FFC->field_8_5 << 2;
    optn->field_1D = 0;

    dword_3001034(0, (void*)&optn->field_48, 8);
    cgdw = alloc_zero_8018DB4(0x8000, 1, "CGDW", 0);
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
        free_heap_8018D9C(cgdw);
    }

    sub_8020994(0x3000, 8, 0, 0x80u);

    optn->sprite = sub_8020DD0(5, 24581, 1, -1, -1, -1, -1);
    sub_801E150(optn->sprite, 0, -1, 0, 0);
    sprite_show_8020CBC(optn->sprite);
    optn->sprite->xPosition = 40;
    optn->sprite->yPosition = 55;

    if (gGameState.field_888_1 == 0) {
        CpuFastSet(off_83A2880, (void*)0x2000280, 16);
        CpuFastSet(dword_83A1BA0, (void*)0x2000080, 120);
    } else {
        CpuFastSet(off_83A28C0, (void*)0x2000280, 16);
        CpuFastSet(dword_83A1D80, (void*)0x2000080, 120);
    }

    gGameState.field_0 = -1;
    gGameState.field_2 = -1;

    optn->bbwf = alloc_zero_8018DB4(sub_819941C - sub_8198784, 0, "BBWF", 1);
    sub_81994EC(optn->bbwf, off_851F9E8);
    optn->bbwi = alloc_Zero(20, 0, "BBWI", 1);
    optn->bwcw = alloc_zero_8018DB4(115231, 1, "BWCW", 1);
    optn->field_28 = (u8*)((int)&optn->bwcw[31] & 0xFFFFFFE0);
    optn->field_2C = &optn->field_28[57600];

    optn->bwsw = alloc_zero_8018DB4(3840, 1, "BWSW", 1);
    v21 = &optn->bwsw[192];
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
    CpuFastSet(optn->bwsw, (void*)0x600D000, 512);

    v31 = 0;
    CpuFastSet((void*)&v31, (void*)0x6004000, 0x1000008);
    sub_8052B54(optn, 0);
    dword_3001034(0, (void*)optn->field_2C, 57600);

    for (i = 1; i < 8; i++) {
        sub_8052C50(optn, i);
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

    return optn;
}

void optn_update(struct OPTNProcess* optn) {
    switch (optn->process.state) {
        case OPTS_STATE_FADE_IN:
            optn->brightness--;
            BUFFER_REG_BLDY = optn->brightness;
            if (optn->brightness == 0) {
                optn->process.state = OPTS_STATE_SELECT_OPTION;
            }
            break;

        case OPTS_STATE_SELECT_OPTION:
            if (optn->field_1D > 0) {
                optn->field_1D--;
            }
            if (optn->field_48.field_1 > 0) {
                sub_8051EE0(&optn->field_48);
                break;
            }
            if (optn->field_1D != 0 || gGameState.field_2A & A_BUTTON) {
                break;
            }
            if (gGameState.field_2A & B_BUTTON) {
                if ((bool8)try_save_options(optn)) {
                    optn->brightness = 16;
                    sub_80193B4(0, 0, 16);
                    optn->process.state = OPTS_STATE_LEAVE;
                } else {
                    optn->process.state = OPTS_STATE_SAVE_ERROR;
                }
                break;
            }
            if (gGameState.field_2E & DPAD_UP) {
                optn->selection--;
                if (optn->selection < 0) {
                    optn->selection = 2;
                }
                play_sfx_80195B4(95, -1);
            } else if (gGameState.field_2E & DPAD_DOWN) {
                optn->selection++;
                if (optn->selection > 2) {
                    optn->selection = 0;
                }
                play_sfx_80195B4(95, -1);
            }
            optn->sprite->yPosition = 24 * optn->selection + 55;
            switch (optn->selection) {
                case 0:
                    if ((optn->options_4 ^ OPTION_FLAGS_EASY_SLEEP) & OPTION_FLAGS_EASY_SLEEP) {
                        if (gGameState.field_2A & DPAD_LEFT) {
                            optn->options_4 |= OPTION_FLAGS_EASY_SLEEP;
                            option_screen_set_ok_button(optn, word_83A2900[0], word_83A2900[1]);
                            play_sfx_80195B4(95, -1);
                            optn->process.state = OPTS_STATE_EASY_SLEEP_CONFIRMATION;
                        }
                    } else {
                        if (gGameState.field_2A & DPAD_RIGHT) {
                            optn->options_4 &= ~OPTION_FLAGS_EASY_SLEEP;
                            play_sfx_80195B4(95, -1);
                        }
                    }
                    break;

                case 1:
                    if (gGameState.field_888_1 == 1) {
                        if (!(optn->options_4 & OPTION_FLAGS_RUMBLE_FEATURE)) {
                            if (gGameState.field_2A & DPAD_LEFT) {
                                optn->options_4 |= OPTION_FLAGS_RUMBLE_FEATURE;
                                option_screen_set_ok_button(optn, word_83A2900[2], word_83A2900[3]);
                                play_sfx_80195B4(95, -1);
                                optn->process.state = OPTS_STATE_RUMBLE_FEATURE_CONFIRMATION;
                            }
                        } else {
                            if (gGameState.field_2A & DPAD_RIGHT) {
                                optn->options_4 &= ~OPTION_FLAGS_RUMBLE_FEATURE;
                                gGameState.field_88B_0 = 0;
                                play_sfx_80195B4(95, -1);
                            }
                        }
                    }
                    break;

                case 2:
                    if (!(optn->options_4 & OPTION_FLAGS_AUTO_FEATURE)) {
                        if (gGameState.field_2A & DPAD_LEFT) {
                            optn->options_4 |= OPTION_FLAGS_AUTO_FEATURE;
                            option_screen_set_ok_button(optn, word_83A2900[4], word_83A2900[5]);
                            play_sfx_80195B4(95, -1);
                            optn->process.state = OPTS_STATE_AUTO_SLEEP_CONFIRMATION;
                        }
                    } else {
                        if (gGameState.field_2A & DPAD_RIGHT) {
                            optn->options_4 &= ~OPTION_FLAGS_AUTO_FEATURE;
                            play_sfx_80195B4(95, -1);
                        }
                    }
                    break;
            }
            break;

        case OPTS_STATE_EASY_SLEEP_CONFIRMATION:
            if (optn->field_48.field_1 == 0) {
                if (gGameState.field_2A & A_BUTTON) {
                    optn->sprite->xPosition = 40;
                    optn->sprite->yPosition = 24 * optn->selection + 55;
                    off_839EC80[REG_OFFSET_DISPCNT + 1] |= DISPCNT_HBLANK_INTERVAL;
                    optn->field_48.field_0_0 = 1;
                    optn->field_48.field_1 = 7;
                    BUFFER_REG_DISPCNT &= ~DISPCNT_BG0_ON;
                    play_sfx_80195B4(96, -1);
                    optn->process.state = OPTS_STATE_SELECT_OPTION;
                }
            } else {
                sub_8051EE0(&optn->field_48);

                if (optn->field_48.field_1 == 6) {
                    sub_8018218(optn->field_2C, (void*)0x6004020, 0x4B00, 32, 0);
                } else if (optn->field_48.field_1 == 7) {
                    sub_8018218(optn->bwsw, (void*)0x600C000, 0x500, 32, 0);
                } else if (optn->field_48.field_1 == 0) {
                    optn->sprite->xPosition = optn->okButtonPosX + 6;
                    optn->sprite->yPosition = optn->okButtonPosY + 7;
                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                }
            }
            break;

        case OPTS_STATE_RUMBLE_FEATURE_CONFIRMATION:
            if (optn->field_48.field_1 == 0) {
                if (gGameState.field_2A & A_BUTTON) {
                    optn->sprite->xPosition = 40;
                    optn->sprite->yPosition = 24 * optn->selection + 55;
                    off_839EC80[REG_OFFSET_DISPCNT + 1] |= DISPCNT_HBLANK_INTERVAL;
                    optn->field_48.field_0_0 = 1;
                    optn->field_48.field_1 = 7;
                    BUFFER_REG_DISPCNT &= ~DISPCNT_BG0_ON;
                    gGameState.field_88B_0 = 1;
                    optn->field_1D = 16;
                    sub_801ABE8(0, 16, 0);
                    play_sfx_80195B4(96, -1);
                    optn->process.state = OPTS_STATE_SELECT_OPTION;
                }
            } else {
                sub_8051EE0(&optn->field_48);
                if (optn->field_48.field_1 == 6) {
                    sub_8018218(optn->field_2C + 0x4B00, (void*)0x6004020, 0x4B00, 32, 0);
                } else if (optn->field_48.field_1 == 7) {
                    sub_8018218(optn->bwsw + 0x280, (void*)0x600C000, 0x500, 32, 0);
                } else if (optn->field_48.field_1 == 0) {
                    optn->sprite->xPosition = optn->okButtonPosX + 6;
                    optn->sprite->yPosition = optn->okButtonPosY + 7;
                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                }
            }
            break;

        case OPTS_STATE_AUTO_SLEEP_CONFIRMATION:
            if (optn->field_48.field_1 == 0) {
                if (gGameState.field_2A & A_BUTTON) {
                    optn->sprite->xPosition = 40;
                    optn->sprite->yPosition = 24 * optn->selection + 55;
                    off_839EC80[REG_OFFSET_DISPCNT + 1] |= DISPCNT_HBLANK_INTERVAL;
                    optn->field_48.field_0_0 = 1;
                    optn->field_48.field_1 = 7;
                    BUFFER_REG_DISPCNT &= ~DISPCNT_BG0_ON;
                    play_sfx_80195B4(96, -1);
                    optn->process.state = OPTS_STATE_SELECT_OPTION;
                }
            } else {
                sub_8051EE0(&optn->field_48);
                if (optn->field_48.field_1 == 6) {
                    sub_8018218(optn->field_2C + 0x9600, (void*)0x6004020, 0x4B00, 32, 0);
                } else if (optn->field_48.field_1 == 7) {
                    sub_8018218(optn->bwsw + 0x500, (void*)0x600C000, 0x500, 32, 0);
                } else if (optn->field_48.field_1 == 0) {
                    optn->sprite->xPosition = optn->okButtonPosX + 6;
                    optn->sprite->yPosition = optn->okButtonPosY + 7;
                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                }
            }
            break;

        case OPTS_STATE_SAVE_ERROR:
            sub_8052EFC(optn);
            sub_805420C(optn);
            optn->brightness = 240;
            optn->process.state = OPTS_STATE_SAVE_ERROR_CONFIRMATION;
            break;

        case OPTS_STATE_SAVE_ERROR_CONFIRMATION:
            if (optn->field_48.field_1 == 0) {
                optn->brightness--;
                if (optn->brightness == 0
                    || gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) {
                    optn->brightness = 16;
                    sub_80193B4(0, 0, 16);
                    optn->process.state = OPTS_STATE_LEAVE;
                }
            } else {
                sub_8051EE0(&optn->field_48);
                if (optn->field_48.field_1 == 6) {
                    sub_8018218(optn->field_2C, (void*)0x6004020, 0x4B00, 32, 0);
                } else if (optn->field_48.field_1 == 7) {
                    sub_8018218(optn->bwsw, (void*)0x600C000, 0x500, 32, 0);
                } else if (optn->field_48.field_1 == 0) {
                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                }
            }
            break;

        case OPTS_STATE_LEAVE:
            optn->brightness--;
            BUFFER_REG_BLDY = 16 - optn->brightness;
            if (optn->brightness == 0) {
                if (optn) {
                    optn->process.definition = &stru_8CDC1F8;
                    sub_8021FD4();
                    if (optn->odtr) {
                        process_remove(optn->odtr, 3);
                    }
                    if (optn->winw) {
                        free_heap_8018D9C(optn->winw);
                    }
                    if (optn->bwcw) {
                        free_heap_8018D9C(optn->bwcw);
                    }
                    if (optn->bwsw) {
                        free_heap_8018D9C(optn->bwsw);
                    }
                    if (optn->bbwf) {
                        free_heap_8018D9C(optn->bbwf);
                    }
                    free_heap_8018DA8((void*)optn->bbwi);
                    sub_801A6B0();
                    gGameState.field_31 = 2;
                    BUFFER_REG_DISPCNT = 0;
                    BUFFER_REG_BLDCNT = BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_NONE;
                    process_remove(&optn->process, 3);
                }

                title_screen_create(alloc_Zero(sizeof(struct TitleScreen), 0, "OPEN", 0), 8, "OPEN", 3);
                return;
            }
            break;
    }

    sub_8021F7C();
}

int try_save_options(struct OPTNProcess* optn) {
    gGameState.field_88A_4 = ((optn->options_4 >> OPTION_FLAGS_SHIFT_EASY_SLEEP) & 1) != 0;
    gGameState.field_88B_0 = ((optn->options_4 >> OPTION_FLAGS_SHIFT_RUMBLE_FEATURE) & 1) != 0;
    dword_3000FFC->field_8_3 = ((optn->options_4 >> OPTION_FLAGS_SHIFT_EASY_SLEEP) & 1) != 0;
    dword_3000FFC->field_8_4 = ((optn->options_4 >> OPTION_FLAGS_SHIFT_RUMBLE_FEATURE) & 1) != 0;
    dword_3000FFC->field_8_5 = ((optn->options_4 >> OPTION_FLAGS_SHIFT_AUTO_FEATURE) & 1) != 0;

    return sub_812454C();
}

void sub_8052B54(struct OPTNProcess* optn, int a2) {
    int i;

    dword_3001034(0, (void*)optn->field_28, 6144);

    for (i = 0; i < 3; i++) {
        if (gGameState.field_888_1 != 1 && i == 1) {
            sub_8199D78(optn->bbwi, optn->field_28, 32, 4, 0, 0, 1, 2, 7, 0);
        } else {
            sub_8199D78(optn->bbwi, optn->field_28, 32, 4, 0, 0, 1, 2, 5, 0);
        }
        sub_8199D5C(optn->bbwi, 0, 16 * i + 2, *off_83A2920[i] + 2);
        do {
            u8* v5 = optn->bbwi->field_8;
            if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
                optn->bbwi->field_8 += 3;
            }
        } while (sub_8199624(optn->bbwi) != 0);
    }

    if (a2) {
        sub_8018218((void*)optn->field_28, (void*)0x6001000, 6144, 32, 0);
    } else {
        CpuFastSet((void*)optn->field_28, (void*)0x6001000, 0x600);
    }
}

void sub_8052C50(struct OPTNProcess* optn, int a1) {
    int i;

    if (a1 <= 1) {
        dword_3001034(0, (void*)optn->field_2C, 0xE100);
        dword_3001034(0, (void*)optn->bwsw, 0xF00);
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

            sub_8199D78(optn->bbwi, optn->field_2C + j * 5 * 0xF00, (s16)width, (u8)odd, zero, zero, 1,
                        2, 5, zero);
            sub_8199D5C(optn->bbwi, 0, y0 + yOff, text0 + 2);
            do {
                u8* v5 = optn->bbwi->field_8;
                if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
                    optn->bbwi->field_8 += 3;
                }
            } while (sub_8199624(optn->bbwi) != 0);

            dst = &optn->bwsw[j * 5 * 128];
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
            sub_8199D78(optn->bbwi, optn->field_2C + j * 5 * 0xF00, (s16)width, (u8)odd, 0, 0, 1, 2, 5,
                        0);
            sub_8199D5C(optn->bbwi, 0, y1 + yOff, text1 + 2);
            do {
                u8* v5 = optn->bbwi->field_8;
                if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
                    optn->bbwi->field_8 += 3;
                }
            } while (sub_8199624(optn->bbwi) != 0);
        }
    }
}

void sub_8052EFC(struct OPTNProcess* optn) {
    u16* dst;
    u16 tile;
    int y;
    int x;
    u16 width;
    u16 yPos;
    int text;
    int zero;

    dword_3001034(0, (void*)optn->field_2C, 0x4B00);
    dword_3001034(0, (void*)optn->bwsw, 0x500);

    zero = 0;
    width = word_83A2918[0];
    yPos = word_83A291C[1];
    text = dword_84E8B18;
    sub_8199D78(optn->bbwi, optn->field_2C, (s16)width, (u8)word_83A291C[0], zero, zero, 1, 2, 5, 3);
    sub_8199D5C(optn->bbwi, 0, yPos + 1, text + 2);
    do {
        u8* v5 = optn->bbwi->field_8;
        if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
            optn->bbwi->field_8 += 3;
        }
    } while (sub_8199624(optn->bbwi) != 0);

    dst = optn->bwsw;
    tile = 0xE001;
    for (y = 0; y < 16; y++) {
        dst += (30 - (s16)width) / 2;
        for (x = 0; x < (s16)width; x++) {
            *dst++ = tile++;
        }
        dst += (30 - (s16)width) / 2 + 2;
    }
}

void sub_805306C(struct Process* odtr) {
    struct OPTNProcess* optn;
    u16* oam;
    u8 y;
    int i;
    int leftPalette;
    int rightPalette;

    optn = (struct OPTNProcess*)odtr->parentProcess;
    oam = (u16*)gGameState.field_880;
    y = 48;

    if (optn->field_48.field_1 == 0) {
        switch (optn->process.state) {
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
    dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 2580);
    oam = (u16*)dword_3000D4C(stru_203FFB8.field_3C, (int)oam);

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

    gGameState.field_880 = (int)oam;
}

struct BCLRProcess* bclr_init(struct BCLRProcess* bclr, u8 priority, char* label) {
    struct Process* bidr;
    u16* cgdw;
    u16* scdw;
    u8* strw;
    int i;
    int k;
    volatile int zero;
    int tileNum;

    process_add(&bclr->process, priority, label);
    bclr->process.definition = &stru_8CDC1D8;

    BUFFER_REG_BLDCNT = 191;
    BUFFER_REG_BLDY = 16;
    BUFFER_REG_DISPCNT = 0;
    sub_8017E34();

    gGameState.field_31 = 2;
    gGameState.field_888_5 = 1;
    gGameState.field_888_6 = 1;

    bidr = (struct Process*)alloc_Zero(0x1C, 0, "BIDR", 0);
    process_add(bidr, 8, "BIDR");
    bidr->definition = &stru_8CDC1E8;
    bclr->bidr = bidr;
    bidr->parentProcess = &bclr->process;

    bclr->field_1C_0 = 1;
    bclr->field_3C = 0;
    bclr->brightness = 16;
    bclr->winw = alloc_zero_8018DB4(0x800, 1, "WINW", 0);

    cgdw = alloc_zero_8018DB4(0x8000, 1, "CGDW", 0);
    dword_3000C84(dword_83A0E94, cgdw);
    CpuFastSet(cgdw, (void*)0x6000000, (sub_80198B0(dword_83A0E94) >> 2) & 0x1FFFFF);
    if (cgdw) {
        free_heap_8018D9C(cgdw);
    }

    scdw = alloc_zero_8018DB4(0x800, 1, "SCDW", 1);
    for (i = 15, tileNum = 0x107B; i >= 0; i--) {
        scdw[0x167 + i] = tileNum;
        tileNum--;
    }
    CpuFastSet(scdw, (void*)0x600E800, 0x200);
    if (scdw) {
        free_heap_8018D9C(scdw);
    }

    sub_8020994(0x2000, 8, 0, 0);

    bclr->sprite = sub_8020DD0(5, 0x6005, 1, -1, -1, -1, -1);
    sub_801E150(bclr->sprite, 0, -1, 0, 0);
    sprite_show_8020CBC(bclr->sprite);
    bclr->sprite->xPosition = 140;
    bclr->sprite->yPosition = 90;

    if (gGameState.field_888_1 == 0) {
        CpuFastSet(dword_83A1BA0, (void*)0x2000080, 120);
    } else {
        CpuFastSet(dword_83A1D80, (void*)0x2000080, 120);
    }
    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 = -1;

    bclr->bbwf = alloc_zero_8018DB4(sub_819941C - sub_8198784, 0, "BBWF", 1);
    sub_81994EC(bclr->bbwf, off_851F9E8);
    bclr->bbwi = alloc_Zero(20, 0, "BBWI", 1);
    bclr->bwcw = alloc_zero_8018DB4(0x12C1F, 1, "BWCW", 1);
    bclr->field_24 = (u8*)((int)&bclr->bwcw[31] & 0xFFFFFFE0);
    bclr->bwsw = alloc_zero_8018DB4(0x2800, 1, "BWSW", 1);

    zero = 0;
    CpuFastSet((void*)&zero, (void*)0x6004000, 0x1000008);

    strw = alloc_zero_8018DB4(0x100, 0, "STRW", 0);
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

        sub_8199D78(bclr->bbwi, bclr->field_24 + k * 0x3C00, (s16)width, 0, 0, 0, 1, 2, 5, 3);
        sub_8199D5C(bclr->bbwi, 0, textY, (int)strw);
        do {
            u8* v5 = bclr->bbwi->field_8;
            if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
                bclr->bbwi->field_8 += 3;
            }
        } while (sub_8199624(bclr->bbwi) != 0);

        dst = &bclr->bwsw[k * 1024];
        tile = 0xE001;
        for (row = 0; row < 16; row++) {
            dst += (30 - (s16)width) / 2;
            for (column = 0; column < (s16)width; column++) {
                *dst++ = tile++;
            }
            dst += (30 - (s16)width) / 2 + 2;
        }
    }
    free_heap_8018D9C(strw);

    CpuFastSet(bclr->field_24, (void*)0x6004020, 0xF00);
    CpuFastSet(bclr->bwsw, (void*)0x6002000, 0x200);

    BUFFER_REG_BG0CNT = 0x406;
    BUFFER_REG_BG1CNT = 0x1C02;
    BUFFER_REG_BG2CNT = 0x1D01;
    BUFFER_REG_BG0HOFS = 0;
    BUFFER_REG_BG0VOFS = 0;
    BUFFER_REG_BG1HOFS = 0;
    BUFFER_REG_BG1VOFS = 0;
    BUFFER_REG_BG2HOFS = 0;
    BUFFER_REG_BG2VOFS = 0;

    sub_80541B0(bclr, word_83A2944[0], word_83A2944[1]);

    BUFFER_REG_BLDCNT = 191;
    BUFFER_REG_BLDY = 0;
    BUFFER_REG_DISPCNT = 0x3340;

    return bclr;
}

void sub_80536E8(struct BCLRProcess* bclr, int flags) {
    bclr->process.definition = &stru_8CDC1D8;
    if (bclr->bidr) {
        process_remove(bclr->bidr, 3);
    }
    if (bclr->winw) {
        free_heap_8018D9C(bclr->winw);
    }
    if (bclr->bwcw) {
        free_heap_8018D9C(bclr->bwcw);
    }
    if (bclr->bwsw) {
        free_heap_8018D9C(bclr->bwsw);
    }
    if (bclr->bbwf) {
        free_heap_8018D9C(bclr->bbwf);
    }
    free_heap_8018DA8(bclr->bbwi);
    sub_8021FD4();

    gGameState.field_888_5 = 0;
    gGameState.field_888_6 = 0;
    gGameState.field_888_3 = 0;
    gGameState.field_31 = 2;
    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_BLDCNT = 0;
    process_remove(&bclr->process, flags);
}

void bclr_update_8053778(struct BCLRProcess* bclr) {
    u16 progress;

    switch (bclr->process.state) {
        case 0:
            if (bclr->field_40.field_1 > 0) {
                sub_8051EE0(&bclr->field_40);
                if (bclr->field_40.field_1 == 0) {
                    if (bclr->field_40.field_0_0) {
                        sub_8018218(bclr->field_24 + 0x3C00, (void*)0x6004020, 0x3C00, 0, 32);
                        sub_8018218(bclr->bwsw + 0x400, (void*)0x6002000, 0x800, 0, 32);
                        bclr->field_1C_0 = 1;
                        sub_80541B0(bclr, word_83A2944[2], word_83A2944[3]);
                        bclr->sprite->yPosition = 98;
                        bclr->process.state = 1;
                    }
                }
            } else if (gGameState.field_2A & A_BUTTON) {
                off_839EC80[REG_OFFSET_DISPCNT + 1] |= 0x20;
                bclr->field_40.field_0_0 = 1;
                bclr->field_40.field_1 = 7;
                play_sfx_80195B4(96, -1);
                if (bclr->field_1C_0) {
                    bclr->process.state = 5;
                }
            } else if (gGameState.field_2A & (DPAD_RIGHT | DPAD_LEFT)) {
                bclr->field_1C_0 ^= 1;
                play_sfx_80195B4(95, -1);
            }
            bclr->sprite->xPosition = !bclr->field_1C_0 ? 100 : 140;
            break;

        case 1:
            if (bclr->field_40.field_1 > 0) {
                sub_8051EE0(&bclr->field_40);
                if (bclr->field_40.field_1 == 1) {
                    if (bclr->field_40.field_0_0) {
                        sub_8018218(bclr->field_24 + 0x7800, (void*)0x6004020, 0x3C00, 0, 32);
                        sub_8018218(bclr->bwsw + 0x800, (void*)0x6002000, 0x800, 0, 32);
                    }
                }
                if (bclr->field_40.field_1 == 0) {
                    if (bclr->field_40.field_0_0) {
                        sub_80541B0(bclr, word_83A2944[4], word_83A2944[5]);
                        off_839EC80[0x4A] |= 0x10;
                        sprite_hide_8021F20(bclr->sprite);
                        bclr->process.state = 2;
                    }
                }
            } else if (gGameState.field_2A & A_BUTTON) {
                off_839EC80[REG_OFFSET_DISPCNT + 1] |= 0x20;
                bclr->field_40.field_0_0 = 1;
                bclr->field_40.field_1 = 7;
                play_sfx_80195B4(96, -1);
                if (bclr->field_1C_0) {
                    bclr->process.state = 5;
                }
            } else if (gGameState.field_2A & (DPAD_RIGHT | DPAD_LEFT)) {
                bclr->field_1C_0 ^= 1;
                play_sfx_80195B4(95, -1);
            }
            bclr->sprite->xPosition = !bclr->field_1C_0 ? 100 : 140;
            break;

        case 2:
            if (bclr->field_40.field_1 > 0) {
                sub_8051EE0(&bclr->field_40);
                if (bclr->field_40.field_1 != 0) {
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
                progress = sub_8124270(bclr->field_3C, 8);
                if (progress == 0xFFFF) {
                    gGameState.field_88C_0 = 1;
                    gGameState.field_8C0 = 0;
                    gGameState.field_88A_4 = 0;
                    gGameState.field_88B_0 = 0;
                    gGameState.field_88A_3 = 1;
                    sub_8018218(bclr->field_24 + 0xF000, (void*)0x6004020, 0x3C00, 0, 32);
                    sub_8018218(bclr->bwsw + 0x1000, (void*)0x6002000, 0x800, 0, 32);
                    bclr->brightness = 240;
                    BUFFER_REG_DISPCNT &= 0xFBFF;
                    bclr->process.state = 4;
                } else {
                    bclr->field_3C = progress;
                    {
                        u8* ptr = off_839EC80;
                        //! Possible fake match: the target re-reads field_3C after storing it.
                        u8 value = (*(vu16*)&bclr->field_3C >> 3) + 56;
                        ptr += 0x42;
                        *ptr = value;
                    }
                    if (bclr->field_3C == 0x400) {
                        gGameState.field_88C_0 = 1;
                        gGameState.field_8C0 = 0;
                        gGameState.field_88A_4 = 0;
                        gGameState.field_88B_0 = 0;
                        gGameState.field_88A_3 = 1;
                        ((s8*)off_839EC80)[REG_OFFSET_DISPCNT + 1] &= ~0x40;
                        sub_8018218(bclr->field_24 + 0xB400, (void*)0x6004020, 0x3C00, 0, 32);
                        sub_8018218(bclr->bwsw + 0xC00, (void*)0x6002000, 0x800, 0, 32);
                        bclr->brightness = 240;
                        bclr->process.state = 3;
                    }
                }
            }
            break;

        case 3:
        case 4:
            if (--bclr->brightness == 0 || gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) {
                off_839EC80[REG_OFFSET_DISPCNT + 1] |= 0x20;
                ((s8*)off_839EC80)[0x4A] &= ~1;
                ((s8*)off_839EC80)[0x4A] &= ~2;
                ((s8*)off_839EC80)[0x4A] &= ~4;
                bclr->field_40.field_0_0 = 1;
                bclr->field_40.field_1 = 7;
                bclr->process.state = 5;
            }
            break;

        case 5:
            sub_8051EE0(&bclr->field_40);
            if (bclr->field_40.field_1 == 0) {
                if (bclr) {
                    sub_80536E8(bclr, 3);
                }
                company_intro_create(alloc_Zero(0x4C, 0, "OPEN", 0), 8, "COMP");
                return;
            }
            break;
    }

    sub_8021F7C();
}

struct MBERProcess* sub_8053CB4(struct MBERProcess* mber, u8 priority, char* label) {
    u16* cgdw;
    volatile int zero;
    int text;
    u16 width;
    u16* dst;
    u16 tile;
    int row;
    int column;

    process_add(&mber->process, priority, label);
    mber->process.definition = &stru_8CDC1C8;

    BUFFER_REG_BLDCNT = 191;
    BUFFER_REG_BLDY = 16;
    BUFFER_REG_DISPCNT = 0;
    sub_8017E34();

    mber->brightness = 240;
    mber->winw = alloc_zero_8018DB4(0x800, 1, "WINW", 0);

    cgdw = alloc_zero_8018DB4(0x8000, 1, "CGDW", 0);
    dword_3000C84(dword_83A0E94, cgdw);
    CpuFastSet(cgdw, (void*)0x6000000, (sub_80198B0(dword_83A0E94) >> 2) & 0x1FFFFF);
    if (cgdw) {
        free_heap_8018D9C(cgdw);
    }

    if (gGameState.field_888_1 == 0) {
        CpuFastSet(dword_83A1BA0, (void*)0x2000080, 120);
    } else {
        CpuFastSet(dword_83A1D80, (void*)0x2000080, 120);
    }
    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 = -1;

    mber->bbwf = alloc_zero_8018DB4(sub_819941C - sub_8198784, 0, "BBWF", 1);
    sub_81994EC(mber->bbwf, off_851F9E8);
    mber->bbwi = alloc_Zero(20, 0, "BBWI", 1);
    mber->bwcw = alloc_zero_8018DB4(0x1001F, 1, "BWCW", 1);
    mber->field_24 = (u8*)((int)&mber->bwcw[31] & 0xFFFFFFE0);
    mber->bwsw = alloc_zero_8018DB4(0x2000, 1, "BWSW", 1);

    zero = 0;
    CpuFastSet((void*)&zero, (void*)0x6004000, 0x1000008);

    text = dword_84E8A28;
    width = word_83A2978[0];
    sub_8199D78(mber->bbwi, mber->field_24, width, 0, 0, 0, 1, 2, 5, 0);
    sub_8199D5C(mber->bbwi, 0, 72, text + 2);
    do {
        u8* v5 = mber->bbwi->field_8;
        if (v5[0] == 255 && v5[1] == 11 && v5[2] == 1) {
            mber->bbwi->field_8 += 3;
        }
    } while (sub_8199624(mber->bbwi) != 0);

    dst = mber->bwsw;
    tile = 0xE001;
    for (row = 0; row < 16; row++) {
        dst += (30 - width) / 2;
        for (column = 0; column < width; column++) {
            *dst++ = tile++;
        }
        dst += (30 - width) / 2 + 2;
    }

    CpuFastSet(mber->field_24, (void*)0x6004020, 0x1000);
    CpuFastSet(mber->bwsw, (void*)0x6002000, 0x200);

    BUFFER_REG_BG0CNT = 0x406;
    BUFFER_REG_BG1CNT = 0x1C02;
    BUFFER_REG_BG0HOFS = 0;
    BUFFER_REG_BG0VOFS = 0;
    BUFFER_REG_BG1HOFS = 0;
    BUFFER_REG_BG1VOFS = 0;
    sub_80540B0(mber);

    BUFFER_REG_BLDCNT = 191;
    BUFFER_REG_BLDY = 0;
    BUFFER_REG_DISPCNT = 0x3340;
    return mber;
}

inline void mber_destroy(struct MBERProcess* mber, int flags) {
    mber->process.definition = &stru_8CDC1C8;
    if (mber->winw) {
        free_heap_8018D9C(mber->winw);
    }
    if (mber->bwcw) {
        free_heap_8018D9C(mber->bwcw);
    }
    if (mber->bwsw) {
        free_heap_8018D9C(mber->bwsw);
    }
    if (mber->bbwf) {
        free_heap_8018D9C(mber->bbwf);
    }
    free_heap_8018DA8(mber->bbwi);
    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_BLDCNT = 0;
    process_remove(&mber->process, flags);
}

void sub_8053FC4(struct MBERProcess* mber) {
    switch (mber->process.state) {
        case 0:
            if (mber->field_38.field_1 > 0) {
                sub_8051EE0(&mber->field_38);
            } else if (--mber->brightness == 0
                       || gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) {
                off_839EC80[REG_OFFSET_DISPCNT + 1] |= 0x20;
                mber->field_38.field_0_0 = 1;
                mber->field_38.field_1 = 7;
                mber->process.state = 1;
            }
            break;

        case 1:
            sub_8051EE0(&mber->field_38);
            if (mber->field_38.field_1 == 0) {
                if (mber) {
                    mber_destroy(mber, 3);
                }
                title_screen_create(alloc_Zero(0xE4, 0, "OPEN", 0), 8, "OPEN", 2);
            }
            break;
    }
}

void sub_80540B0(struct MBERProcess* mber) {
    u8 width = word_83A2978[0];
    u8 height = word_83A2978[1];
    u8 left = 15 - width / 2;
    u8 top = 10 - height / 2;

    generate_window_bg_8051B98(&mber->field_38, (u16*)mber->winw, left, top, width, height, 0xE000);
    off_839EC80[0x4A] |= 0x10;
}

inline void option_screen_sprite_renderer_update(void) {
    int var1 = gGameState.field_880;
    sub_8020A78();
    dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 2580);
    var1 = dword_3000D4C(stru_203FFB8.field_3C, var1);
    gGameState.field_880 = var1;
}

inline void sub_80541B0(struct BCLRProcess* bclr, int width, int height) {
    int left = 15 - width / 2;
    int top = 10 - height / 2;

    generate_window_bg_8051B98(&bclr->field_40, (u16*)bclr->winw, left, top, width, height, 0xE000);
    off_839EC80[0x4A] |= 0x10;
}

inline void sub_805420C(struct OPTNProcess* optn) {
    u8 width = word_83A2918[0];
    u8 height = word_83A2918[1];
    u8 left = 15 - width / 2;
    u8 top = 10 - height / 2;

    generate_window_bg_8051B98(&optn->field_48, (u16*)optn->winw, left, top, width, height, 0xC800);
}

inline void option_screen_set_ok_button(struct OPTNProcess* optn, int width, int height) {
    u8 left = 15 - width / 2;
    u8 top = 10 - height / 2;

    generate_window_bg_8051B98(&optn->field_48, (u16*)optn->winw, left, top, width, height, 0xC800);
    optn->okButtonPosX = left * 8 + width * 4 - 16;
    optn->okButtonPosY = (top + height) * 8 - 22;
}
