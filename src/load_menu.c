#include "global.h"
#include "common.h"
#include "load_menu.h"
#include "title_screen.h"

struct LoadMenu* load_init_812538C(struct LoadMenu* menu, u8 priority, char* label, u16 arg3) {
    struct Process** tld;
    struct Process** fade;

    process_add(&menu->process, priority, label);
    menu->process.definition = &stru_8CDC3B8;
    menu->field_E4 = arg3;

    menu->field_50 = &gGameState.field_3C;
    menu->field_F7 = menu->field_50->field_8;
    menu->field_F8 = menu->field_50->field_9;
    menu->field_50->field_8 = 10;
    menu->field_50->field_9 = 8;

    //! Possible fake match.
    tld = &menu->tld;
    *tld = tld_init_8127A94(alloc_Zero(sizeof(struct Process), 0, "TLD", 0), 8, "TLD");
    fade = &menu->fade;
    *fade = init_ybpa_process_8114B4C(alloc_Zero(0x5C, 0, "FADE", 1), 8, "FADE", 8);
    (*fade)->parentProcess = (*tld)->parentProcess = &menu->process;

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
    struct Tmev** tmev;

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
            tmev = &menu->field_160;
            *tmev = sub_80FB080(alloc_Zero(0x2C, 0, "TMEV", 0), 7, "TMEV");
            (*tmev)->process.parentProcess = &menu->process;
            dword_3001034(0, (void*)(VRAM + 0x8000), 0x20);
            menu->field_60 = sub_80F92DC(*tmev, 0, 0xF, (void*)(VRAM + 0x8000), 0x4B00, menu->field_54,
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
