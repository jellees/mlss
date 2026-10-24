#include "global.h"
#include "common.h"
#include "load_menu.h"
#include "title_screen.h"

struct LoadMenu* load_init_812538C(struct LoadMenu* menu, u8 priority, char* label, u16 arg3) {
    process_add(&menu->process, priority, label);
    menu->process.definition = &stru_8CDC3B8;
    menu->field_E4 = arg3;

    menu->field_50 = &gGameState.field_3C;
    menu->field_F7 = menu->field_50->field_8;
    menu->field_F8 = menu->field_50->field_9;
    menu->field_50->field_8 = 10;
    menu->field_50->field_9 = 8;

    //! Possible fake match. These could be remnants of debug lines.
    //! E.g. if (menu->tld) DEBUG_PRINT("");
    if (menu->tld);
    menu->tld = tld_init_8127A94(alloc_Zero(sizeof(struct Process), 0, "TLD", 0), 8, "TLD");
    if (menu->fade);
    menu->fade = init_ybpa_process_8114B4C(alloc_Zero(0x5C, 0, "FADE", 1), 8, "FADE", 8);
    menu->fade->parentProcess = menu->tld->parentProcess = &menu->process;

    sub_8017E34();
    gGameState.field_888_5 = 1;
    gGameState.field_888_6 = 1;
    BUFFER_REG_DISPCNT = 0;
    return menu;
}

void sub_8125464(struct LoadMenu* menu, int flags) {
    menu->process.definition = &stru_8CDC3B8;
    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_WININ = 0;
    BUFFER_REG_WINOUT = 0;
    BUFFER_REG_BLDCNT = 0;
    gGameState.field_888_5 = 0;
    gGameState.field_888_3 = 0;
    gGameState.field_888_6 = 0;

    if (menu->field_160) {
        sub_80FAFD8(menu->field_160, 3);
    }

    sub_8021FD4();

    if (menu->field_54) {
        free_heap_8018D9C(menu->field_54);
    }

    if (menu->fade) {
        sub_81166AC(menu->fade, 3);
    }

    if (menu->tld) {
        process_remove(menu->tld, 3);
    }

    process_remove(&menu->process, flags);
}

// Look at this, has possible modulo and division functions in here.
#define VRAM_ALIGN_800(offset)                                                                         \
    if ((dword_3001038 + (&loc_8198350 - &loc_8198220))(offset, 0x800)) {                              \
        offset = ((dword_3001038 + (&loc_819832C - &loc_8198220))(offset, 0x800) << 11) + 0x800;       \
    }

void sub_81254FC(struct LoadMenu* menu) {
    int i;
    u8 result;

    switch (menu->process.state) {
        case 0:
            menu->save = dword_3000FFC;
            menu->field_F9 = 0;
            menu->field_FA = 0;
            menu->field_FB = 0;
            menu->field_EA = 0;
            menu->field_F0 = 0;
            menu->field_EC = 0;
            menu->field_EE = 0;
            menu->field_F2 = 0;
            menu->field_F1 = menu->save->field_6;
            sub_812791C(menu);
            menu->field_54 = alloc_zero_8018DB4(0x800, 1, "MMSB", 1);
            menu->process.state = 1;
            break;

        case 1:
            dword_3000C78 = 0;
            gGameState.field_884 = 0;
            menu->field_C8 = sub_8127ECC(6, 0);
            menu->field_D0 = sub_80198B0(menu->field_C8);
            menu->field_CC = alloc_heap_8018CEC(1, menu->field_D0, "WORK");
            dword_3000C84(menu->field_C8, menu->field_CC);
            menu->process.state = 2;
            break;

        case 2:
            sub_81229F0(menu->field_CC);
            CpuCopy32(menu->field_CC, (void*)0x6010400, menu->field_D0);
            free_heap_memory_8018C68(menu->field_CC);
            menu->process.state = 3;
            break;

        case 3:
            sub_8020994(menu->field_D0 + 0x400, 0, 0, 0);
            sub_80213A0(5, 0x6005, -1, 1);
            menu->process.state = 4;
            break;

        case 4:
            sub_8126C3C(menu);
            if (menu->field_F2 == 0) {
                menu->process.state = 6;
            }
            break;

        case 6:
            menu->field_D8 = 0;
            BUFFER_REG_BG0VOFS = 0;
            BUFFER_REG_BG0HOFS = 0;
            BUFFER_REG_BG1HOFS = 0;
            BUFFER_REG_BG1VOFS = 0;
            BUFFER_REG_BG2HOFS = BUFFER_REG_BG2VOFS = 0;
            BUFFER_REG_BG3VOFS = 0;
            BUFFER_REG_BG3HOFS = 0;
            menu->field_C8 = sub_8127ECC(0x25, 0);
            dword_3001034(0, (void*)(VRAM + menu->field_D8), 0x8000);
            menu->field_D4 = sub_8127E50(menu->field_C8, (void*)(VRAM + menu->field_D8), 0);
            menu->field_C8 = sub_8127ECC(gGameState.field_8C0 + 0x26, 0);
            sub_8127E50(menu->field_C8, (void*)(VRAM + 0x1400 + menu->field_D8), 0);
            menu->field_D8 += menu->field_D4;
            VRAM_ALIGN_800(menu->field_D8);
            menu->process.state = 8;
            break;

        case 8:
            menu->field_C8 = sub_8127ECC(0x2F, 0);
            menu->field_DA = menu->field_D8;
            dword_3001034(0, (void*)(VRAM + menu->field_D8), 0x800);
            menu->field_D4 = sub_8127E50(menu->field_C8, (void*)(VRAM + menu->field_D8), 0);
            menu->field_D8 += menu->field_D4;
            VRAM_ALIGN_800(menu->field_D8);

            menu->field_C8 = sub_8127ECC(0x2E, 0);
            menu->field_DC = menu->field_D8;
            dword_3001034(0, (void*)(VRAM + menu->field_D8), 0x800);
            menu->field_D4 = sub_8127E50(menu->field_C8, (void*)(VRAM + menu->field_D8), 0);
            menu->field_D8 += menu->field_D4;
            VRAM_ALIGN_800(menu->field_D8);

            menu->field_C8 = sub_8127ECC(0x2E, 0);
            menu->field_DE = menu->field_D8;
            dword_3001034(0, (void*)(VRAM + menu->field_D8), 0x800);
            menu->field_D4 = sub_8127E50(menu->field_C8, (void*)(VRAM + menu->field_D8), 0);
            menu->field_D8 += menu->field_D4;
            VRAM_ALIGN_800(menu->field_D8);

            sub_8127DB4((void*)(VRAM + menu->field_DE), 0xA8, 0x40, 5, 7, 0, 0);
            menu->process.state = 9;
            break;

        case 9:
            if (gGameState.field_888_1 == 0) {
                menu->field_C8 = sub_8127ECC(0x2B, &menu->field_D4);
            } else {
                menu->field_C8 = sub_8127ECC(0x2C, &menu->field_D4);
            }
            CpuCopy32(menu->field_C8, (void*)0x2000080, menu->field_D4);
            gGameState.field_2 = 0xFFFF;
            BUFFER_REG_BG0CNT = BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(26);
            BUFFER_REG_BG3CNT = BGCNT_SCREENBASE((menu->field_DA >> 11) & 0x1F) | BGCNT_PRIORITY(2);
            BUFFER_REG_BG2CNT = BGCNT_SCREENBASE((menu->field_DC >> 11) & 0x1F) | BGCNT_PRIORITY(2);
            if (!(menu->field_F1 & 1)) {
                menu->field_E6 = 0x1D40;
            } else if (menu->field_F3 & 1) {
                BUFFER_REG_BG2CNT = BGCNT_SCREENBASE((menu->field_DE >> 11) & 0x1F) | BGCNT_PRIORITY(2);
                menu->field_E6 = 0x1D40;
            } else {
                menu->field_E6 = 0x1940;
            }
            menu->process.state = 5;
            break;

        case 5:
            if (menu->field_F2 == 0) {
                sub_80E8DE4();
                menu->field_F2 = 1;
                break;
            }
            //! Possible fake match.
            if (menu->field_160);
            menu->field_160 = sub_80FB080(alloc_Zero(0x2C, 0, "TMEV", 0), 7, "TMEV");
            menu->field_160->process.parentProcess = &menu->process;
            dword_3001034(0, (void*)(VRAM + 0x8000), 0x20);
            menu->field_60 = sub_80F92DC(menu->field_160, 0, 0xF, (void*)(VRAM + 0x8000), 0x4B00, menu->field_54,
                                         0, 0x7000, 0xF, 1);
            menu->field_EE = 3;
            sub_8127238(menu);
            menu->field_F2 = 0;
            menu->process.state = 10;
            break;

        case 10:
            if (byte_3000C80 == 0) {
                menu->process.state = 11;
                menu->field_EE = 1;
            }
            break;

        case 11:
            if (menu->field_EF != 1) {
                sub_8127B20(menu);
            }
            menu->process.state = 12;
            break;

        case 12:
            if (!sub_8127AB0(menu)) {
                menu->process.state = 13;
            }
            break;

        case 13:
            if (menu->field_F0) {
                if (menu->field_EC == 0) {
                    gGameState.field_88C_0 = 1;
                }
                if (++menu->field_EC > 20) {
                    sub_8125220(menu->field_F4, &menu->field_F5, 0xFF);
                    menu->field_F0 = 0;
                    menu->field_EC = 0;
                }
            }
            result = sub_8126520(menu);
            if (result == 1) {
                menu->process.state = 14;
            } else if (result == 2) {
                menu->process.state = 19;
            }
            break;

        case 14:
            if (menu->field_EC == 0xFFFF) {
                menu->field_E8 = sub_8123DC4(menu->field_E8, 8);
                if (menu->field_E8 == 0xFFFF) {
                    if (menu->field_F0 == 3) {
                        for (i = 0; i < 2; i++) {
                            sub_8021308(menu->sprites[menu->field_FA * 2 + i]);
                        }
                    }
                    if (menu->field_F0 == 2) {
                        stru_3000D40.slot = menu->field_154[menu->field_FB - 1];
                        menu->field_FA = menu->field_154[menu->field_FB - 1];
                        sub_8123BA8(1);
                    }
                    stru_3000D40.slot = 0;
                    menu->field_F1 = menu->save->field_6;
                    menu->save->slots[menu->field_FA].field_0 = 0xFF;
                    menu->field_F9 = 0;
                    menu->field_FB = 0;
                    menu->field_EE = 1;
                    sub_812791C(menu);
                    menu->field_E6 = 0x1D40;
                    BUFFER_REG_DISPCNT = menu->field_E6;
                    sub_819A43C();
                    gGameState.field_88A_5 = 1;
                    gGameState.field_88A_3 = 1;
                    menu->field_F0 = 0;
                    menu->field_EC = 0;
                    menu->process.state = 15;
                } else if (menu->field_E8 == (stru_3000D40.slot + 1) * 223 + 2) {
                    if (menu->field_F0 == 3) {
                        for (i = 0; i < 2; i++) {
                            sub_8021308(menu->sprites[menu->field_FA * 2 + i]);
                        }
                        stru_3000D40.slot = 0;
                        menu->field_F1 = menu->save->field_6;
                        menu->field_F9 = 0;
                        menu->field_FB = 0;
                        sprite_show_8020CBC(menu->cursor);
                        menu->cursor->xPosition = menu->field_FA * 32 + 32;
                        menu->cursor->yPosition = 22;
                        menu->field_EE = 1;
                        sub_812791C(menu);
                        BUFFER_REG_BG2CNT = (menu->field_DC >> 11) << 8 | 2;
                        menu->field_E6 = 0x1D40;
                        BUFFER_REG_DISPCNT = menu->field_E6;
                        sub_819A43C();
                        gGameState.field_88A_5 = 1;
                        gGameState.field_88A_3 = 1;
                        menu->field_F0 = 1;
                        menu->field_EC = 0;
                        menu->process.state = 13;
                    } else if (menu->field_F0 == 2) {
                        CpuCopy32(&menu->entries[menu->field_FA],
                                  &menu->entries[menu->field_154[menu->field_FB - 1]],
                                  sizeof(struct LoadMenuEntry));
                        for (i = 0; i < 2; i++) {
                            if (menu->entries[menu->field_154[menu->field_FB - 1]].items[i].id != 0
                                && (menu->entries[menu->field_154[menu->field_FB - 1]].field_18 == 2
                                    || menu->entries[menu->field_154[menu->field_FB - 1]].field_18
                                           == i)) {
                                menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i] =
                                    sub_8020DD0(
                                        0,
                                        menu->entries[menu->field_154[menu->field_FB - 1]].items[i].id,
                                        1, -1, -1, -1, -1);
                                sub_801E150(
                                    menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i],
                                    menu->entries[menu->field_154[menu->field_FB - 1]].items[i].field_2,
                                    -1, 0, 0);
                                sub_801E150(
                                    menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i],
                                    menu->entries[menu->field_154[menu->field_FB - 1]].items[i].field_2,
                                    menu->entries[menu->field_154[menu->field_FB - 1]].items[i].field_3,
                                    0, 0);
                                sprite_show_8020CBC(
                                    menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]);
                                menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->xPosition =
                                    0xBC - i * 40;
                                menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->yPosition =
                                    0xB4;
                                menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->field_12_4 =
                                    1;
                                menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->field_12_1 =
                                    1;
                            } else {
                                sub_8021574(5, 0x6002, 0, 0, 0, menu->field_4C, -1);
                                menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i] =
                                    sub_8020DD0(5, 0x6006, 1, -1, -1, -1, -1);
                                sub_801E150(menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i],
                                            i, -1, 0, 0);
                                sprite_show_8020CBC(
                                    menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]);
                                menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->xPosition =
                                    0xBC - i * 40;
                                menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->yPosition =
                                    0xB4;
                            }
                            menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->field_E =
                                0xEFFF;
                            menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->field_1F_0 = 3;
                            menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->field_1F_2 = 3;
                            menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->field_1F_4 = 3;
                            menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->field_1F_6 = 3;
                            menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->field_10_1 = 0;
                            menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->field_29_1 = 0;
                            menu->sprites[menu->field_154[menu->field_FB - 1] * 2 + i]->field_29_5 = 0;
                        }
                        stru_3000D40.slot = 0;
                        menu->field_F1 = menu->save->field_6;
                        menu->field_F9 = 0;
                        menu->field_FB = 0;
                        sprite_show_8020CBC(menu->cursor);
                        menu->cursor->xPosition = menu->field_FA * 32 + 32;
                        menu->cursor->yPosition = 22;
                        menu->field_EE = 1;
                        sub_812791C(menu);
                        sub_819A43C();
                        gGameState.field_88A_5 = 1;
                        gGameState.field_88A_3 = 1;
                        menu->field_F0 = 1;
                        menu->field_EC = 0;
                        menu->process.state = 13;
                    }
                }
            } else if (++menu->field_EC > 42) {
                if (menu->field_F0 == 3) {
                    menu->field_EC |= 0xFFFF;
                    stru_3000D40.slot = menu->field_FA;
                    sub_8123BA8(1);
                    menu->field_E8 = 0;
                    sub_80196E0();
                } else if (menu->field_F0 == 2) {
                    menu->field_EC |= 0xFFFF;
                    stru_3000D40.slot = menu->field_154[menu->field_FB - 1];
                    CpuCopy16(&menu->save->slots[menu->field_FA].data,
                              &menu->save->slots[menu->field_154[menu->field_FB - 1]].data,
                              sizeof(struct SaveSlotData));
                    sub_8123BA8(2);
                    menu->field_E8 = 0;
                    sub_80196E0();
                }
                gGameState.field_88C_0 = 0;
            }
            break;

        case 15:
            if (menu->field_F0 == 0) {
                menu->field_F0 = 1;
                gGameState.field_88C_0 = 1;
            } else if (menu->field_EC == 20) {
                sub_8125220(menu->field_F4, &menu->field_F5, 0xFF);
            }
            if (++menu->field_EC > 180 && (menu->field_50->field_2 & 3)) {
                menu->field_E8 = 0;
                menu->field_EC = 0;
                menu->field_F0 = 0;
                menu->field_EE = 1;
                sprite_show_8020CBC(menu->cursor);
                menu->cursor->xPosition = menu->field_FA * 32 + 32;
                menu->cursor->yPosition = 22;
                menu->process.state = 13;
            }
            break;

        case 19:
            if (menu->field_F0) {
                sub_8127ADC(menu, 0xFFFF);
            } else {
                sub_8127ADC(menu, 0);
            }
            menu->process.state = 20;
            break;

        case 20:
            if (sub_8127AB0(menu)) {
                break;
            }
            dword_3001034(0, menu->field_58, 0xF20);
            sub_80E9384(menu->field_60,
                        (int)menu->field_58 - *(u32*)(menu->field_160->field_28->field_4 + 0x194));
            dword_3001034(0, menu->field_54, 0x800);
            *(u16*)0x2000080 = 0;
            gGameState.field_2 = 1;
            menu->field_50->field_8 = menu->field_F7;
            menu->field_50->field_9 = menu->field_F8;
            sub_80E8DC0();
            dword_3000C78 = sub_800063C;
            if (menu->field_F0) {
                if (menu) {
                    sub_8125464(menu, 3);
                }
                sub_801AFA0();
                title_screen_create(alloc_Zero(sizeof(struct TitleScreen), 0, "OPEN", 0), 8, "OPEN", 1);
            } else if ((menu->field_F1 >> menu->field_FA) & 1) {
                stru_3000D40.slot = menu->field_FA;
                stru_3000D40.field_0_1 = 1;
                if (menu) {
                    sub_8125464(menu, 3);
                }
                sub_80FC198();
                sub_812335C();
                sub_8018A4C(menu->save->slots[stru_3000D40.slot].data.field_6EC);
                make_fldm_801AF5C(1);
            } else {
                stru_3000D40.slot = menu->field_FA;
                stru_3000D40.field_0_1 = 0;
                DMA_FILL(3, 0, &menu->save->slots[menu->field_FA].data, sizeof(struct SaveSlotData),
                         32);
                if (menu) {
                    sub_8125464(menu, 3);
                }
                sub_812335C();
                sub_8122BFC();
                make_fldm_801AF5C(0);
            }
            break;
    }
}

//! 10 diff lines left. The empty `if (menu->field_EE);` in the FB & 0x20 cancel path (likely a
//! removed debug print, like `if (menu->tld);` in load_init_812538C) fixes the reload register
//! choices there, but keeps &field_EE in r8 until the store; the original recomputes it at the store.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8126520.s\"");
#else
u8 sub_8126520(struct LoadMenu* menu) {
    int i;
    int option;

    if (menu->field_EA != 0) {
        if (++menu->field_EA > 180) {
            if (menu->field_50->field_2 & 3) {
                menu->field_EA = 0;
                menu->field_EE = 1;
                sprite_show_8020CBC(menu->cursor);
            } else if (menu->field_EA > 300) {
                menu->field_EA = 0;
                menu->field_EE = 1;
                sprite_show_8020CBC(menu->cursor);
            }
        }
        return 0;
    }

    if (menu->field_F2) {
        if (!((menu->field_F1 >> menu->field_FA) & 1)) {
            BUFFER_REG_BG2CNT = (menu->field_DC >> 11) << 8 | 2;
            menu->field_E6 = 0x1D40;
        } else if ((menu->field_F3 >> menu->field_FA) & 1) {
            BUFFER_REG_BG2CNT = (menu->field_DE >> 11) << 8 | 2;
            menu->field_E6 = 0x1D40;
        } else {
            menu->field_E6 = 0x1940;
        }
        BUFFER_REG_DISPCNT = menu->field_E6;
        menu->field_EE = 1;
        menu->field_F2 = 0;
        return 0;
    }

    if (menu->field_50->field_2 & 1) {
        if (menu->field_F9 != 0) {
            if (menu->field_FB != 0) {
                if (menu->field_FB & 0x10) {
                    if (menu->field_FB & 0xF) {
                        play_sfx_80195B4(0x60, -1);
                        menu->field_EE = 1;
                        menu->field_FB = 0x20;
                        menu->cursor->xPosition = 0x2E;
                        menu->cursor->yPosition = 0x60;
                    } else {
                        play_sfx_80195B4(0x61, -1);
                        menu->field_FB = 0;
                        menu->cursor->xPosition = 0x22;
                        menu->cursor->yPosition = (menu->field_F9 - 1) * 12 + 0x28;
                        menu->field_EE = 1;
                    }
                } else {
                    if (menu->field_FB & 0x20) {
                        if (menu->field_FB == 0x21) {
                            menu->field_F4 = sub_81252BC(&menu->field_F5, 0x1E);
                            menu->field_F0 = 3;
                            menu->field_EE = 1;
                            menu->field_EC = 0;
                        } else {
                            if (menu->field_EE);
                            play_sfx_80195B4(0x61, -1);
                            menu->field_FB = 0;
                            menu->cursor->xPosition = 0x22;
                            menu->cursor->yPosition = (menu->field_F9 - 1) * 12 + 0x28;
                            menu->field_EE = 1;
                            return 0;
                        }
                    } else {
                        menu->field_F4 = sub_81252BC(&menu->field_F5, 0x1E);
                        menu->field_F0 = 2;
                        menu->field_EE = 1;
                        menu->field_EC = 0;
                    }
                    play_sfx_80195B4(0x60, -1);
                    sprite_hide_8021F20(menu->cursor);
                    gGameState.field_88A_5 = 0;
                    gGameState.field_88A_3 = 0;
                    return 1;
                }
            } else {

                option = menu->field_F9;
                switch (option - 1) {
                    case 0:
                        play_sfx_80195B4(0x60, -1);
                        return 2;
                    case 1:
                        if (menu->field_154[3] == 0) {
                            menu->field_EA = 1;
                            sprite_hide_8021F20(menu->cursor);
                        } else {
                            play_sfx_80195B4(0x60, -1);
                            menu->field_FB = 1;
                            menu->cursor->xPosition = menu->field_154[option - 2] * 32 + 32;
                            menu->cursor->yPosition = 22;
                        }
                        menu->field_EE = 1;
                        break;
                    case 2:
                        play_sfx_80195B4(0x60, -1);
                        menu->field_EE = 1;
                        menu->field_FB = 0x10;
                        menu->cursor->xPosition = 0x2E;
                        menu->cursor->yPosition = 0x60;
                        break;
                    case 3:
                        play_sfx_80195B4(0x61, -1);
                        menu->cursor->xPosition = menu->field_FA * 32 + 32;
                        menu->cursor->yPosition = 22;
                        menu->field_F9 = 0;
                        menu->field_EE = 1;
                        break;
                }
            }
        } else {
            play_sfx_80195B4(0x60, -1);
            menu->field_EE = 1;
            menu->field_F9 = 1;
            menu->cursor->xPosition = 0x22;
            menu->cursor->yPosition = (menu->field_F9 - 1) * 12 + 0x28;
        }
    } else if (menu->field_50->field_2 & 2) {
        if (menu->field_F9 != 0) {
            play_sfx_80195B4(0x61, -1);
            if (menu->field_FB != 0) {
                menu->field_FB = 0;
                menu->cursor->xPosition = 0x22;
                menu->cursor->yPosition = (menu->field_F9 - 1) * 12 + 0x28;
            } else {
                menu->field_F9 = 0;
                menu->cursor->xPosition = menu->field_FA * 32 + 32;
                menu->cursor->yPosition = 22;
            }
            menu->field_EE = 1;
        } else {
            play_sfx_80195B4(0x61, -1);
            menu->field_F0 = 1;
            return 2;
        }
    } else if (menu->field_FB & 0x30) {
        if (menu->field_50->field_2 & 0x80) {
            if (menu->field_FB & 0xF) {
                menu->field_FB &= ~0xF;
            } else {
                menu->field_FB = (menu->field_FB & ~0xF) + 1;
            }
            play_sfx_80195B4(0x5F, -1);
            menu->cursor->xPosition = 0x2E;
            menu->cursor->yPosition = 0x60 - (menu->field_FB & 0xF) * 13;
        } else if (menu->field_50->field_2 & 0x40) {
            if (menu->field_FB & 0xF) {
                menu->field_FB &= ~0xF;
            } else {
                menu->field_FB = (menu->field_FB & ~0xF) + 1;
            }
            play_sfx_80195B4(0x5F, -1);
            menu->cursor->xPosition = 0x2E;
            menu->cursor->yPosition = 0x60 - (menu->field_FB & 0xF) * 13;
        }
    } else {
        if (menu->field_50->field_6 & 0x20) {
            if (menu->field_F9 == 0) {
                play_sfx_80195B4(0x5F, -1);
                if ((menu->field_F1 >> menu->field_FA) & 1) {
                    menu->sprites[menu->field_FA * 2]->yPosition = 0xB4;
                    menu->sprites[menu->field_FA * 2 + 1]->yPosition = 0xB4;
                }
                if (--menu->field_FA < 0) {
                    menu->field_FA = 2;
                }
                if ((menu->field_F1 >> menu->field_FA) & 1) {
                    menu->sprites[menu->field_FA * 2]->yPosition = 0x68;
                    menu->sprites[menu->field_FA * 2 + 1]->yPosition = 0x68;
                }
                menu->cursor->xPosition = menu->field_FA * 32 + 32;
                menu->cursor->yPosition = 22;
                menu->field_F2 = 1;
            } else if (menu->field_FB != 0) {
                if (menu->field_154[3] == 2) {
                    play_sfx_80195B4(0x5F, -1);
                }
                if (--menu->field_FB <= 0) {
                    menu->field_FB = menu->field_154[3];
                }
                menu->cursor->xPosition = menu->field_154[menu->field_FB - 1] * 32 + 32;
                menu->cursor->yPosition = 22;
            }
        } else if (menu->field_50->field_6 & 0x10) {
            if (menu->field_F9 == 0) {
                play_sfx_80195B4(0x5F, -1);
                if ((menu->field_F1 >> menu->field_FA) & 1) {
                    menu->sprites[menu->field_FA * 2]->yPosition = 0xB4;
                    menu->sprites[menu->field_FA * 2 + 1]->yPosition = 0xB4;
                }
                if (++menu->field_FA > 2) {
                    menu->field_FA = 0;
                }
                if ((menu->field_F1 >> menu->field_FA) & 1) {
                    for (i = 0; i < 2; i++) {
                        menu->sprites[menu->field_FA * 2]->yPosition = 0x68;
                        menu->sprites[menu->field_FA * 2 + 1]->yPosition = 0x68;
                    }
                }
                menu->cursor->xPosition = menu->field_FA * 32 + 32;
                menu->cursor->yPosition = 22;
                menu->field_F2 = 1;
            } else if (menu->field_FB != 0) {
                if (menu->field_154[3] == 2) {
                    play_sfx_80195B4(0x5F, -1);
                }
                if (++menu->field_FB >= menu->field_154[3] + 1) {
                    menu->field_FB = 1;
                }
                menu->cursor->xPosition = menu->field_154[menu->field_FB - 1] * 32 + 32;
                menu->cursor->yPosition = 22;
            }
        } else if (menu->field_50->field_6 & 0x40) {
            if (menu->field_F9 != 0 && menu->field_FB == 0) {
                play_sfx_80195B4(0x5F, -1);
                if ((menu->field_F1 >> menu->field_FA) & 1) {
                    if (--menu->field_F9 <= 0) {
                        menu->field_F9 = 4;
                    }
                } else if (menu->field_F9 == 1) {
                    menu->field_F9 = 4;
                } else {
                    menu->field_F9 = 1;
                }
                menu->cursor->xPosition = 0x22;
                menu->cursor->yPosition = (menu->field_F9 - 1) * 12 + 0x28;
            }
        } else if (menu->field_50->field_6 & 0x80) {
            if (menu->field_F9 != 0 && menu->field_FB == 0) {
                play_sfx_80195B4(0x5F, -1);
                if ((menu->field_F1 >> menu->field_FA) & 1) {
                    if (++menu->field_F9 > 4) {
                        menu->field_F9 = 1;
                    }
                } else if (menu->field_F9 == 4) {
                    menu->field_F9 = 1;
                } else {
                    menu->field_F9 = 4;
                }
                menu->cursor->xPosition = 0x22;
                menu->cursor->yPosition = (menu->field_F9 - 1) * 12 + 0x28;
            }
        }
    }
    return 0;
}
#endif

void sub_8126C3C(struct LoadMenu* menu) {
    s32 arrowX[4] = { 0x70, 0xE8, 0x58, 0xE0 };
    s32 arrowY[4] = { 0x68, 0x88, 0x68, 0x50 };

    if (menu->field_F2 == 0) {
        sub_8021574(5, 0x6003, 0, 0, 0, menu->field_4C, -1);
        menu->cursor = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
        sub_801E150(menu->cursor, 0, -1, 0, 0);
        sprite_show_8020CBC(menu->cursor);
        menu->cursor->xPosition = menu->field_FA * 32 + 32;
        menu->cursor->yPosition = 22;
        menu->cursor->field_E = 0xEFFF;
        menu->cursor->field_1F_0 = 0;
        menu->cursor->field_1F_2 = 0;
        menu->cursor->field_1F_4 = 0;
        menu->cursor->field_1F_6 = 0;
        menu->cursor->field_10_1 = 0;
        menu->cursor->field_29_1 = 0;
        menu->cursor->field_29_5 = 0;
        menu->field_F2 = 1;
    } else if (menu->field_F2 == 1) {
        menu->arrows[menu->field_EC] = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
        sub_801E150(menu->arrows[menu->field_EC], menu->field_EC + 3, -1, 0, 0);
        sprite_show_8020CBC(menu->arrows[menu->field_EC]);
        menu->arrows[menu->field_EC]->xPosition = arrowX[menu->field_EC];
        menu->arrows[menu->field_EC]->yPosition = arrowY[menu->field_EC];
        menu->arrows[menu->field_EC]->field_E = 0xEFFF;
        menu->arrows[menu->field_EC]->field_1F_0 = 1;
        menu->arrows[menu->field_EC]->field_1F_2 = 1;
        menu->arrows[menu->field_EC]->field_1F_4 = 1;
        menu->arrows[menu->field_EC]->field_1F_6 = 1;
        menu->arrows[menu->field_EC]->field_10_1 = 0;
        menu->arrows[menu->field_EC]->field_29_1 = 0;
        menu->arrows[menu->field_EC]->field_29_5 = 0;
        menu->arrows[menu->field_EC]->field_12_4 = 1;
        menu->arrows[menu->field_EC]->field_12_1 = 1;
        if (++menu->field_EC == 4) {
            menu->field_F2 = 2;
        }
    } else {
        int slot;
        int i;

        for (slot = 0; slot < 3; slot++) {
            for (i = 0; i < 2; i++) {
                if (menu->entries[slot].items[i].id != 0
                    && (menu->entries[slot].field_18 == 2 || menu->entries[slot].field_18 == i)) {
                    menu->sprites[slot * 2 + i] =
                        sub_8020DD0(0, menu->entries[slot].items[i].id, 1, -1, -1, -1, -1);
                    sub_801E150(menu->sprites[slot * 2 + i], menu->entries[slot].items[i].field_2, -1,
                                0, 0);
                    sub_801E150(menu->sprites[slot * 2 + i], menu->entries[slot].items[i].field_2,
                                menu->entries[slot].items[i].field_3, 0, 0);
                    sprite_show_8020CBC(menu->sprites[slot * 2 + i]);
                    menu->sprites[slot * 2 + i]->xPosition = 0xBC - i * 40;
                    menu->sprites[slot * 2 + i]->yPosition = slot != 0 ? 0xB4 : 0x68;
                    menu->sprites[slot * 2 + i]->field_E = 0xEFFF;
                    menu->sprites[slot * 2 + i]->field_1F_0 = 3;
                    menu->sprites[slot * 2 + i]->field_1F_2 = 3;
                    menu->sprites[slot * 2 + i]->field_1F_4 = 3;
                    menu->sprites[slot * 2 + i]->field_1F_6 = 3;
                    menu->sprites[slot * 2 + i]->field_10_1 = 0;
                    menu->sprites[slot * 2 + i]->field_29_1 = 0;
                    menu->sprites[slot * 2 + i]->field_29_5 = 0;
                    menu->sprites[slot * 2 + i]->field_12_4 = 1;
                    menu->sprites[slot * 2 + i]->field_12_1 = 1;
                } else if ((menu->field_F1 >> slot) & 1) {
                    sub_8021574(5, 0x6002, 0, 0, 0, menu->field_4C, -1);
                    menu->sprites[slot * 2 + i] = sub_8020DD0(5, 0x6006, 1, -1, -1, -1, -1);
                    sub_801E150(menu->sprites[slot * 2 + i], i, -1, 0, 0);
                    sprite_show_8020CBC(menu->sprites[slot * 2 + i]);
                    menu->sprites[slot * 2 + i]->xPosition = 0xBC - i * 40;
                    menu->sprites[slot * 2 + i]->yPosition = slot != 0 ? 0xB4 : 0x68;
                    menu->sprites[slot * 2 + i]->field_E = 0xEFFF;
                    menu->sprites[slot * 2 + i]->field_1F_0 = 3;
                    menu->sprites[slot * 2 + i]->field_1F_2 = 3;
                    menu->sprites[slot * 2 + i]->field_1F_4 = 3;
                    menu->sprites[slot * 2 + i]->field_1F_6 = 3;
                    menu->sprites[slot * 2 + i]->field_10_1 = 0;
                    menu->sprites[slot * 2 + i]->field_29_1 = 0;
                    menu->sprites[slot * 2 + i]->field_29_5 = 0;
                } else {
                    menu->sprites[slot * 2 + i] = NULL;
                }
            }
        }
        sub_8021F7C();
        sub_8020A78();
        dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 0xA14);
        menu->field_F2 = 0;
        menu->field_EC = 0;
    }
}

void* sub_81270E4(struct LoadMenu* menu, void* buf) {
    int slot;
    int a;
    int b;
    int c;
    int d;

    buf = sub_8121F1C(buf, menu->entries[menu->field_FA].field_16,
                      menu->entries[menu->field_FA].field_17, menu->entries[menu->field_FA].field_10);
    buf = sub_8122098(buf, menu->entries[menu->field_FA].items[0].field_4,
                      menu->entries[menu->field_FA].items[1].field_4);

    for (slot = 0; slot < 3; slot++) {
        a = 8;
        b = 13;
        c = 0x52;
        d = 1;
        if (menu->field_FA == slot) {
            a = 0;
            b = 6;
            c = 0x42;
            d = 0;
        }
        if (!((menu->field_F1 >> slot) & 1)) {
            buf = sub_8122A20(buf, slot * 32 + 0x18, a, 0, d, 2, c + 0x20, 2, 3, 0, 0);
        } else {
            buf = sub_8122A20(buf, slot * 32 + 0x20, b, 0, 1, 0, slot * 2 + 0x92, 2, 3, 0, 0);
            buf = sub_8122A20(buf, slot * 32 + 0x18, a, 0, d, 2, c + 0x38, 2, 3, 0, 0);
        }
    }
    return buf;
}

#define TMEV_BASE(menu) (*(u32*)((menu)->field_160->field_28->field_4 + 0x194))

void sub_8127238(struct LoadMenu* menu) {
    u8** texts;
    int i;

    if (menu->field_EE == 1) {
        texts = off_83BADAC[gGameState.field_8C0];
        dword_3001034(0, menu->field_58, 0xF20);
        if (menu->field_F0 > 1) {
            u8 index = (menu->field_F0 & 1) * 4 + 7;
            int n;

            sub_8199D78(&menu->field_64, menu->field_58, 11, 0, 0, 0, 0, 2, 5, 4);
            sub_8199D5C(&menu->field_64, 0, 4, (int)texts[index]);
            for (n = 0; texts[index][n] != 0 || texts[index][n - 1] == 0xFF; n++) {
                sub_8199624(&menu->field_64);
            }
        } else if (menu->field_EA != 0) {
            int n;

            sub_8199D78(&menu->field_64, menu->field_58, 11, 0, 0, 0, 0, 2, 9, 4);
            sub_8199D5C(&menu->field_64, 0, 4, (int)texts[8]);
            for (n = 0; texts[8][n] != 0 || texts[8][n - 1] == 0xFF; n++) {
                sub_8199624(&menu->field_64);
            }
        } else if (menu->field_E8 == 0xFFFF) {
            u8** texts2 = off_83BADC0[gGameState.field_8C0];
            int n;

            sub_8199D78(&menu->field_64, menu->field_58, 11, 0, 0, 0, 0, 2, 9, 4);
            sub_8199D5C(&menu->field_64, 0, 11, (int)texts2[7]);
            for (n = 0; texts[7][n] != 0 || texts2[7][n - 1] == 0xFF; n++) {
                sub_8199624(&menu->field_64);
            }
        } else if (menu->field_FB & 0x20) {
            int n;

            sub_8199D78(&menu->field_64, menu->field_58, 11, 0, 0, 0, 0, 2, 9, 4);
            sub_8199D5C(&menu->field_64, 0, 4, (int)texts[10]);
            for (n = 0; texts[10][n] != 0 || texts[10][n - 1] == 0xFF; n++) {
                sub_8199624(&menu->field_64);
            }
            sub_8083860(menu->field_58, 11, 12, 0x30, texts[12], 5);
            sub_8083860(menu->field_58, 11, 12, 0x3C, texts[13], 5);
        } else if (menu->field_FB & 0x10) {
            int n;

            sub_8199D78(&menu->field_64, menu->field_58, 11, 0, 0, 0, 0, 2, 5, 4);
            sub_8199D5C(&menu->field_64, 0, 4, (int)texts[9]);
            for (n = 0; texts[9][n] != 0 || texts[9][n - 1] == 0xFF; n++) {
                sub_8199624(&menu->field_64);
            }
            sub_8083860(menu->field_58, 11, 12, 0x30, texts[12], 5);
            sub_8083860(menu->field_58, 11, 12, 0x3C, texts[13], 5);
        } else if (menu->field_FB != 0) {
            int n;

            sub_8199D78(&menu->field_64, menu->field_58, 11, 0, 0, 0, 0, 2, 5, 4);
            sub_8199D5C(&menu->field_64, 0, 4, (int)texts[6]);
            for (n = 0; texts[6][n] != 0 || texts[6][n - 1] == 0xFF; n++) {
                sub_8199624(&menu->field_64);
            }
        } else {
            for (i = 0; i < 4; i++) {
                if (((menu->field_F1 >> menu->field_FA) & 1) || i == 0 || i == 3) {
                    sub_8083860(menu->field_58, 11, 0, i * 12 + 4, texts[i], 5);
                }
            }
        }
        sub_8018218(menu->field_58, (u8*)menu->field_58 - TMEV_BASE(menu), 0xF20, 0x20, 0);

        dword_3001034(0, menu->field_5C, 0x8A0);
        if (menu->entries[menu->field_FA].field_12 == 0xFFFF) {
            u8** texts2 = off_83BADC0[gGameState.field_8C0];

            sub_8199D78(&menu->field_B4, menu->field_5C, 0x17, 0, 0, 0, 0, 2, 11, 4);
            sub_8199D5C(&menu->field_B4, 0, 8, (int)texts2[10]);
            do {
                if (menu->field_B4.field_8[0] == 0xFF && menu->field_B4.field_8[1] == 0) {
                    menu->field_B4.field_8 += 2;
                }
            } while (sub_8199624(&menu->field_B4) != 0);
        } else if ((menu->field_F1 >> menu->field_FA) & 1) {
            sub_8199D78(&menu->field_B4, menu->field_5C, 0x17, 0, 0, 0, 0, 2, 11, 4);
            sub_8199D5C(&menu->field_B4, 0, 8,
                        (int)sub_8123308(menu->entries[menu->field_FA].field_12));
            do {
                if (menu->field_B4.field_8[0] == 0xFF && menu->field_B4.field_8[1] == 0) {
                    menu->field_B4.field_8 += 2;
                }
            } while (sub_8199624(&menu->field_B4) != 0);
        }
        sub_8018218(menu->field_5C, (u8*)menu->field_5C - TMEV_BASE(menu), 0x8A0, 0x20, 0);
    } else if (menu->field_EE == 2) {
        dword_3001034(0, menu->field_58, 0xF20);
        sub_80E9384(menu->field_60, (int)menu->field_58 - TMEV_BASE(menu));
        dword_3001034(0, menu->field_5C, 0x8A0);
        sub_80E9384(menu->field_60, (int)menu->field_5C - TMEV_BASE(menu));
        dword_3001034(0, menu->field_54, 0x800);
    } else if (menu->field_EE == 3) {
        menu->field_58 = (u8*)sub_80E9414(menu->field_60, 0xF20) + TMEV_BASE(menu);
        dword_3001034(0, menu->field_58, 0xF20);
        sub_8127DB4(menu->field_54, 0x20, 0x20, 11, 11,
                    sub_8127E38((u32)menu->field_58 - TMEV_BASE(menu)) | 0xE000, 1);
        menu->field_5C = (u8*)sub_80E9414(menu->field_60, 0x8A0) + TMEV_BASE(menu);
        dword_3001034(0, menu->field_5C, 0x8A0);
        sub_8127DB4(menu->field_54, 0x20, 0x78, 0x17, 3,
                    sub_8127E38((u32)menu->field_5C - TMEV_BASE(menu)) | 0xE000, 1);
    }
    menu->field_EE = 0;
    ((void (*)(void*, void*, int))((u8*)dword_3001034 + (loc_8198154 - loc_81980D8)))(
        menu->field_54, (void*)0x600D000, 0x800);
}

void sub_812791C(struct LoadMenu* menu) {
    int slot;

    menu->field_154[3] = 0;
    menu->field_F3 = 0;
    for (slot = 0; slot < 3; slot++) {
        if (!((menu->field_F1 >> slot) & 1)) {
            struct LoadMenuEntry* entry = &menu->entries[slot];

            menu->field_154[menu->field_154[3]] = slot;
            menu->field_154[3]++;
            CpuFill16(0, entry, sizeof(struct LoadMenuEntry));
            entry->field_17 = 0;
            if (menu->save->slots[slot].field_0 == 0xFF) {
                entry->field_12 = 0xFFFF;
            }
        } else {
            sub_8127BC8(&menu->entries[slot], slot);
            if (menu->entries[slot].field_12 == 0x113) {
                menu->field_F3 |= 1 << slot;
            }
        }
    }
}

inline void* sub_8127B90(struct LoadMenu* menu, void* buf) {
    return sub_8122198(buf, menu->entries[menu->field_FA].field_14,
                       menu->entries[menu->field_FA].field_15, menu->field_F3 & (1 << menu->field_FA));
}

void tld_update_81279D8(struct Process* tld) {
    int buf = gGameState.field_880;
    struct LoadMenu* menu = (struct LoadMenu*)tld->parentProcess;

    if (menu->process.state > 3) {
        if (menu->field_EE) {
            sub_8127238(menu);
        }
        if ((menu->field_F1 >> menu->field_FA) & 1) {
            buf = (int)sub_8127B90(menu, (void*)buf);
        }
        sub_8021F7C();
        sub_8020A78();
        dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 0xA14);
        buf = dword_3000D4C(stru_203FFB8.field_3C, buf);
        buf = (int)sub_81270E4(menu, (void*)buf);
        gGameState.field_880 = buf;
    }
}

struct Process* tld_init_8127A94(struct Process* tld, u8 priority, char* label) {
    process_add(tld, priority, label);
    tld->definition = &stru_8CDC3C8;
    return tld;
}

u8 sub_8127AB0(struct LoadMenu* menu) {

    u8 busy = sub_8116620(menu->fade);

    if (busy == 0) {
        menu->field_EF = busy;
        return 0;
    }
    return 1;
}

void sub_8127ADC(struct LoadMenu* menu, u16 color) {
    sub_81151E4(menu->fade, 4, color, 0x10, 0xFFFF, 0xFFFF, 0, 0);
    sub_80193B4(0, 0, 0x10);
    menu->field_EF = 1;
}

void sub_8127B20(struct LoadMenu* menu) {
    gGameState.field_884 = -1;
    sub_81151E4(menu->fade, 0, menu->field_E4, 0x10, 0xFFFF, 0xFFFF, 0, 0);
    sub_8019308(0, 0x1E, 0);
    sub_80193B4(0, 0xFF, 0x10);
    BUFFER_REG_DISPCNT = menu->field_E6;
    menu->field_EF = 1;
}
