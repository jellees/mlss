#include "global.h"
#include "common.h"
#include "process.h"
#include "title_screen.h"
#include "option_screens.h"

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/generate_window_bg_8051B98.s\"");
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051EE0.s\"");
#endif

// https://decomp.me/scratch/PDUDz
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/optn_init.s\"");
#else
struct OPTNProcess* optn_init(struct OPTNProcess* optn, u8 priority, char* label, int a4) {
    struct Process* odtr;
    u16* cgdw;
    u16* v10;
    int v11;

    u16* v21;
    int v22;

    volatile int v31;

    process_add(&optn->process, priority, label);
    optn->process.definition = &stru_8CDC1F8;

    (*(vu16*)(0x2000000 + 0x50)) = 191;
    (*(vu16*)(0x2000000 + 0x54)) = 16;
    (*(vu16*)(0x2000000 + 0x00)) = 0;

    sub_8017E34();

    gGameState.field_31 = 8;
    optn->options_0 = a4;

    sub_801A548();

    odtr = (struct Process*)alloc_Zero(0x1C, 0, "ODTR", 0);
    process_add(odtr, 8, "ODTR");
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
        i = 0;
        while (i <= 19) {
            v14[i + 0] = 2;  // Top
            v13[i + 0] = 17; // Bottom
            v14[i + 1] = 2;
            v13[i + 1] = 17;
            v14[i + 2] = 2;
            v13[i + 2] = 17;
            v14[i + 3] = 2;
            v13[i + 3] = 17;
            v14[i + 4] = 2;
            v13[i + 4] = 17;
            v14[i + 5] = 2;
            v13[i + 5] = 17;
            v14[i + 6] = 2;
            v13[i + 6] = 17;
            v14[i + 7] = 2;
            v13[i + 7] = 17;
            v14[i + 8] = 2;
            v13[i + 8] = 17;
            v14[i + 9] = 2;
            v13[i + 9] = 17;
            i += 10;
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

    optn->bbwf = alloc_zero_8018DB4(sub_8198784 - sub_819941C, 0, "BBWF", 1);
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

        for (j = 0; j < 21;) {
            v27[0] = v23;
            v26[0] = v23 + 32;
            v23++;
            v27[1] = v23;
            v26[1] = v23 + 32;
            v27 += 2;
            v26 += 2;
            j += 2;
            v23++;
        }
        v22++;
        v21 = &v21[96];
    }
    CpuFastSet(optn->bwsw, (void*)0x600D000, 512);

    v31 = 0;
    CpuFastSet((void*)&v31, (void*)0x6004000, 0x1000008);
    sub_8052B54(optn, 0);
    dword_3001034(0, (void*)optn->field_2C, 57600);

    sub_8052C50(optn, 1);
    sub_8017E34();
    sub_8052C50(optn, 2);
    sub_8017E34();
    sub_8052C50(optn, 3);
    sub_8017E34();
    sub_8052C50(optn, 4);
    sub_8017E34();
    sub_8052C50(optn, 5);
    sub_8017E34();
    sub_8052C50(optn, 6);
    sub_8017E34();
    sub_8052C50(optn, 7);
    sub_8017E34();
    sub_801A548();

    (*(vu16*)(0x2000000 + 0x08)) = 0x1805;
    (*(vu16*)(0x2000000 + 0x0A)) = 0x1901;
    (*(vu16*)(0x2000000 + 0x0C)) = 0x1A03;
    (*(vu16*)(0x2000000 + 0x0E)) = 0x1B03;
    (*(vu16*)(0x2000000 + 0x10)) = 0;
    (*(vu16*)(0x2000000 + 0x12)) = 0;
    (*(vu16*)(0x2000000 + 0x14)) = 0;
    (*(vu16*)(0x2000000 + 0x16)) = 0;
    (*(vu16*)(0x2000000 + 0x18)) = 0;
    (*(vu16*)(0x2000000 + 0x1A)) = 0;
    (*(vu16*)(0x2000000 + 0x1C)) = 0;
    (*(vu16*)(0x2000000 + 0x1E)) = 0;
    (*(vu16*)(0x2000000 + 0x00)) = 0x1C40;

    sub_8019308(0, 30, -1);
    sub_80193B4(0, 0xFFu, 0x10u);

    return optn;
}
#endif

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
                if (sub_8052A8C(optn)) {
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
                    if ((optn->options_4 ^ OPTION_EASY_SLEEP) & OPTION_EASY_SLEEP) {
                        if (gGameState.field_2A & DPAD_LEFT) {
                            optn->options_4 |= OPTION_EASY_SLEEP;
                            option_screen_set_ok_button(optn, word_83A2900[0], word_83A2900[1]);
                            play_sfx_80195B4(95, -1);
                            optn->process.state = OPTS_STATE_EASY_SLEEP_CONFIRMATION;
                        }
                    } else {
                        if (gGameState.field_2A & DPAD_RIGHT) {
                            optn->options_4 &= ~OPTION_EASY_SLEEP;
                            play_sfx_80195B4(95, -1);
                        }
                    }
                    break;

                case 1:
                    if (gGameState.field_888_1 == 1) {
                        if (!(optn->options_4 & OPTION_RUMBLE_FEATURE)) {
                            if (gGameState.field_2A & DPAD_LEFT) {
                                optn->options_4 |= OPTION_RUMBLE_FEATURE;
                                option_screen_set_ok_button(optn, word_83A2900[2], word_83A2900[3]);
                                play_sfx_80195B4(95, -1);
                                optn->process.state = OPTS_STATE_RUMBLE_FEATURE_CONFIRMATION;
                            }
                        } else {
                            if (gGameState.field_2A & DPAD_RIGHT) {
                                optn->options_4 &= ~OPTION_RUMBLE_FEATURE;
                                gGameState.field_88B_0 = 0;
                                play_sfx_80195B4(95, -1);
                            }
                        }
                    }
                    break;

                case 2:
                    if (!(optn->options_4 & OPTION_AUTO_FEATURE)) {
                        if (gGameState.field_2A & DPAD_LEFT) {
                            optn->options_4 |= OPTION_AUTO_FEATURE;
                            option_screen_set_ok_button(optn, word_83A2900[4], word_83A2900[5]);
                            play_sfx_80195B4(95, -1);
                            optn->process.state = OPTS_STATE_AUTO_SLEEP_CONFIRMATION;
                        }
                    } else {
                        if (gGameState.field_2A & DPAD_RIGHT) {
                            optn->options_4 &= ~OPTION_AUTO_FEATURE;
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
                //! Fix this when other functions are also matching.
                open_init_8055A00(
                    alloc_Zero(sizeof(struct TitleScreen), 0, (char*)0x081E2714 /*"OPEN"*/, 0), 8,
                    (char*)0x081E2714 /*"OPEN"*/, 3);
                return;
            }
            break;
    }

    sub_8021F7C();
}
