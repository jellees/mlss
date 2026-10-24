#include "global.h"
#include "common.h"
#include "save_menu.h"

inline void* sub_812A930(struct SaveMenu* menu, void* buf) {
    if (menu->field_B1) {
        buf = sub_8122198(buf, dword_3000FF4->field_30, dword_3000FF4->field_6C, menu->field_AF & 2);
    } else {
        buf = sub_8122198(buf, menu->entry.field_14, menu->entry.field_15, menu->field_AF & 1);
    }
    return buf;
}

inline struct Process* tsdr_create(struct Process* tsdr, u8 priority, char* label) {
    process_add(tsdr, priority, label);
    tsdr->definition = &stru_8CDC3E8;
    return tsdr;
}

struct SaveMenu* sub_8127EF8(struct SaveMenu* menu, u8 priority, char* label, int arg3) {
    process_add(&menu->process, priority, label);
    menu->process.definition = &stru_8CDC3D8;

    menu->field_8C = &gGameState.field_3C;
    menu->field_A6 = gGameState.field_3C.field_3C_0;
    gGameState.field_3C.field_3C_0 = 0x3FF;
    menu->field_A8 = menu->field_8C->field_8;
    menu->field_A9 = menu->field_8C->field_9;
    menu->field_8C->field_8 = 10;
    menu->field_8C->field_9 = 8;

    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_BLDCNT = 0;
    sub_8017E34();
    gGameState.field_888_5 = 1;
    gGameState.field_888_6 = 1;

    menu->tsdr = tsdr_create(alloc_Zero(sizeof(struct Process), 0, "TSDR", 1), 8, "TSDR");
    menu->fade = init_ybpa_process_8114B4C(alloc_Zero(0x5C, 0, "FADE", 1), 8, "FADE", 8);
    menu->tsdr->parentProcess = &menu->process;
    return menu;
}

void sub_8127FC4(struct SaveMenu* menu, int flags) {
    menu->process.definition = &stru_8CDC3D8;
    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_WININ = 0;
    BUFFER_REG_WINOUT = 0;
    BUFFER_REG_BLDCNT = 0;
    gGameState.field_888_5 = 0;
    gGameState.field_888_3 = 0;
    gGameState.field_888_6 = 0;

    if (menu->tmev) {
        sub_80FAFD8(menu->tmev, 3);
    }

    sub_8021FD4();

    if (menu->field_C8) {
        free_heap_8018D9C(menu->field_C8);
    }

    if (menu->fade) {
        sub_81166AC(menu->fade, 3);
    }

    if (menu->tsdr) {
        process_remove(menu->tsdr, 3);
    }

    process_remove(&menu->process, flags);
}

static inline u8* get_text(u8** texts, int index) {
    return texts[index];
}

#define VRAM_ALIGN_800(offset)                                                                         \
    if ((dword_3001038 + (&loc_8198350 - &loc_8198220))(offset, 0x800)) {                              \
        offset = ((dword_3001038 + (&loc_819832C - &loc_8198220))(offset, 0x800) << 11) + 0x800;       \
    }

void sub_812804C(struct SaveMenu* menu) {
    struct Process* parent = menu->process.parentProcess;

    switch (menu->process.state) {
        case 0: {
            u8** texts = off_83BADC0[gGameState.field_8C0];
            u8* name;
            int n;

            menu->save = dword_3000FFC;
            menu->field_AF = 0;
            menu->field_B5 = 0;
            menu->field_B6 = 0;
            if (!((menu->save->field_6 >> stru_3000D40.slot) & 1)) {
                menu->field_B0 = 1;
                dword_3001034(0, (void*)&menu->entry, sizeof(struct LoadMenuEntry));
                menu->field_B4 = 0;
            } else {
                u32** font = sub_81980C8(3);

                if (menu->save->slots[stru_3000D40.slot].field_0 == 0xFF) {
                    u8** texts2 = off_83BADC0[gGameState.field_8C0];

                    menu->field_B0 = 1;
                    dword_3001034(0, (void*)&menu->entry, sizeof(struct LoadMenuEntry));
                    menu->entry.field_12 = 0xFFFF;
                    name = get_text(texts2, 10);
                } else {
                    menu->field_B0 = 0;
                    sub_8127BC8(&menu->entry, stru_3000D40.slot);
                    if (menu->entry.field_12 == 0x113) {
                        menu->field_AF |= 1;
                    }
                    name = sub_8123308(menu->entry.field_12);
                }
                menu->field_B4 = 0;
                if (name) {
                    while (*name != 0) {
                        int k;
                        int c;

                        do {
                            c = *name++;
                        } while (c == 0xFF);
                        k = 0xFF - c;
                        if (k > 1) {
                            k = 0;
                        } else {
                            if (font[k] == NULL) {
                                continue;
                            }
                            c = *name++;
                            if (k != 0) {
                                goto add;
                            }
                        }
                        if (c == 0x20) {
                            menu->field_B4 += 2;
                            continue;
                        }
                    add:
                        menu->field_B4 =
                            menu->field_B4 + (((font[k][(c / 8) + 1] >> ((c & 7) * 4)) & 0xF) + 1);
                    }
                    menu->field_B4 += 2;
                }
            }
            menu->field_B3 = 0;
            menu->field_AD = 0;
            menu->field_AE = 1;
            menu->field_B1 = 0;
            menu->field_67 = 0;
            menu->field_68 = 0;
            menu->field_BC = 0;
            menu->field_BE = 0;
            menu->field_B2 = 0;
            menu->field_B7 = 0;
            menu->field_B8 = 0;
            menu->field_BA = 0;
            menu->field_69 = 0;
            menu->field_65 = 0;
            menu->field_66 = 4;
            menu->field_A4 = 0;
            menu->field_C8 = alloc_zero_8018DB4(0x800, 1, "MMSB", 1);
            menu->field_AA[0] = 0x2E;
            menu->field_AA[1] = 0x3B;
            for (n = 0; get_text(texts, 0)[n] != 0 || get_text(texts, 0)[n - 1] == 0xFF; n++) {
                if (get_text(texts, 0)[n] == 0 && get_text(texts, 0)[n - 1] == 0xFF) {
                    menu->field_AA[1] += 13;
                }
            }
            menu->field_AA[2] = menu->field_AA[1] + 13;
            for (n = 0; get_text(texts, 1)[n] != 0 || get_text(texts, 1)[n - 1] == 0xFF; n++) {
                if (get_text(texts, 1)[n] == 0 && get_text(texts, 1)[n - 1] == 0xFF) {
                    menu->field_AA[2] += 13;
                }
            }
            menu->process.state = 1;
            break;
        }
        case 1:
            dword_3000C78 = 0;
            gGameState.field_884 = 0;
            menu->field_94 = sub_8127ECC(6, 0);
            menu->field_90 = sub_80198B0(menu->field_94);
            menu->field_98 = alloc_heap_8018CEC(1, menu->field_90, "WORK");
            dword_3000C84(menu->field_94, menu->field_98);
            sub_81229F0(menu->field_98);
            menu->process.state = 2;
            break;
        case 2:
            CpuCopy32(menu->field_98, (void*)0x6010400, menu->field_90);
            free_heap_memory_8018C68(menu->field_98);
            menu->process.state = 3;
            break;
        case 3:
            sub_8020994(menu->field_90 + 0x400, 0, 0, 0);
            menu->process.state = 4;
            break;
        case 4:
            sub_812936C(menu);
            menu->process.state = 5;
            break;
        case 5:
            menu->tmev = sub_80FB080(alloc_Zero(0x2C, 0, "TSEV", 0), 7, "TSEV");
            menu->tmev->process.parentProcess = &menu->process;
            dword_3001034(0, (void*)(VRAM + 0x8000), 0x4000);
            menu->field_6C = sub_80F92DC(menu->tmev, 0, 0xF, (void*)(VRAM + 0x8000), 0x4B00,
                                         menu->field_C8, 0, 0x7000, 0xF, 1);
            menu->field_67 = 3;
            sub_8129C98(menu);
            menu->process.state = 6;
            break;
        case 6:
            menu->field_A0 = 0;
            menu->field_94 = sub_8127ECC(0x25, 0);
            menu->field_9C = sub_80198B0(menu->field_94);
            menu->field_98 = alloc_heap_8018CEC(1, menu->field_9C, "WORK");
            dword_3000C84(menu->field_94, menu->field_98);
            menu->field_94 = sub_8127ECC(gGameState.field_8C0 + 0x26, 0);
            sub_8127E50(menu->field_94, (u8*)menu->field_98 + 0x1400, 0);
            menu->process.state = 7;
            break;
        case 7:
            CpuCopy32(menu->field_98, (void*)(VRAM + menu->field_A0), menu->field_9C);
            free_heap_memory_8018C68(menu->field_98);
            menu->field_A0 += menu->field_9C;
            VRAM_ALIGN_800(menu->field_A0);
            menu->process.state = 8;
            break;
        case 8: {
            u8 ids[2] = { 0x30, 0x2E };
            int i;

            for (i = 0; i < 2; i++) {
                menu->field_94 = sub_8127ECC(ids[i], 0);
                menu->field_C0[i] = menu->field_A0;
                dword_3001034(0, (void*)(VRAM + menu->field_A0), 0x800);
                menu->field_9C = sub_8127E50(menu->field_94, (void*)(VRAM + menu->field_A0), 0);
                menu->field_A0 += menu->field_9C;
                VRAM_ALIGN_800(menu->field_A0);
            }
            menu->field_94 = sub_8127ECC(ids[1], 0);
            menu->field_C0[2] = menu->field_A0;
            dword_3001034(0, (void*)(VRAM + menu->field_A0), 0x800);
            menu->field_9C = sub_8127E50(menu->field_94, (void*)(VRAM + menu->field_A0), 0);
            menu->field_A0 += menu->field_9C;
            VRAM_ALIGN_800(menu->field_A0);
            sub_8127DB4((void*)(VRAM + menu->field_C0[2]), 0xA8, 0x40, 5, 7, 0, 0);
            menu->process.state = 9;
            break;
        }
        case 9: {
            int size;

            if (gGameState.field_888_1 == 0) {
                menu->field_94 = sub_8127ECC(0x2B, &size);
            } else {
                menu->field_94 = sub_8127ECC(0x2C, &size);
            }
            CpuCopy32(menu->field_94, (void*)0x2000080, size);
            gGameState.field_2 = 0xFFFF;
            BUFFER_REG_BG0VOFS = 0;
            BUFFER_REG_BG0HOFS = 0;
            BUFFER_REG_BG2VOFS = 0;
            BUFFER_REG_BG2HOFS = 0;
            BUFFER_REG_BG3HOFS = 0;
            BUFFER_REG_BG3VOFS = 0;
            BUFFER_REG_BG0CNT = BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(26);
            BUFFER_REG_BG3CNT = BGCNT_SCREENBASE((menu->field_C0[0] >> 11) & 0x1F) | BGCNT_PRIORITY(2);
            BUFFER_REG_WIN0H = 0x2020;
            BUFFER_REG_WIN0V = 0x8090;
            BUFFER_REG_WININ = 0x1E;
            BUFFER_REG_WINOUT = 0x1F;
            if (menu->field_B0) {
                BUFFER_REG_BG2CNT =
                    BGCNT_SCREENBASE((menu->field_C0[1] >> 11) & 0x1F) | BGCNT_PRIORITY(2);
                menu->field_A2 = 0x3D40;
            } else if (menu->field_AF) {
                BUFFER_REG_BG2CNT =
                    BGCNT_SCREENBASE((menu->field_C0[2] >> 11) & 0x1F) | BGCNT_PRIORITY(2);
                menu->field_A2 = 0x3D40;
            } else {
                menu->field_A2 = 0x3940;
            }
            menu->process.state = 10;
            break;
        }
        case 10:
            if (byte_3000C80 == 0) {
                menu->field_67 = 1;
                menu->field_68 = 0;
                menu->field_BC = 0;
                menu->process.state = 11;
            }
            break;
        case 11:
            if (menu->field_69 != 1) {
                sub_812A8E0(menu);
            }
            menu->process.state = 12;
            break;
        case 12:
            if (!sub_812A888(menu)) {
                menu->process.state = 13;
            }
            break;
        case 13: {
            u8 result = sub_8128D74(menu);

            if (result == 1) {
                menu->process.state = 18;
            } else if (result == 2) {
                menu->process.state = 14;
            }
            break;
        }
        case 14:
            if (menu->field_B3 != 2) {
                break;
            }
            sub_812A42C(menu);
            if (menu->field_A4 == 0) {
                if (menu->field_B7 != 1) {
                    break;
                }
                if (menu->arrows[0]->field_12_3) {
                    sub_8125220(menu->field_62, &menu->field_63, 0xFF);
                    menu->process.state = 18;
                    break;
                }
                if (menu->arrows[0]->field_23 == 9 && menu->field_B1 == 0) {
                    play_sfx_80195B4(0xA2, -1);
                    menu->field_B1 = 1;
                    if (menu->field_B0 & 1) {
                        if (menu->field_AF & 2) {
                            BUFFER_REG_BG2CNT =
                                BGCNT_SCREENBASE(menu->field_C0[2] >> 11) | BGCNT_PRIORITY(2);
                            menu->field_A2 = 0x1D40;
                            BUFFER_REG_DISPCNT = menu->field_A2;
                        } else {
                            menu->field_A2 = 0x1940;
                            BUFFER_REG_DISPCNT = menu->field_A2;
                        }
                        menu->field_B0 = 0;
                    } else {
                        if (menu->field_AF & 2) {
                            BUFFER_REG_BG2CNT =
                                BGCNT_SCREENBASE(menu->field_C0[2] >> 11) | BGCNT_PRIORITY(2);
                            menu->field_A2 = 0x1D40;
                            BUFFER_REG_DISPCNT = menu->field_A2;
                        } else {
                            menu->field_A2 = 0x1940;
                            BUFFER_REG_DISPCNT = menu->field_A2;
                        }
                        menu->fileSprites[0]->yPosition = 0xB4;
                        menu->fileSprites[1]->yPosition = 0xB4;
                    }
                    menu->currentSprites[0]->yPosition = 0x68;
                    menu->currentSprites[1]->yPosition = 0x68;
                    menu->field_67 = 1;
                    menu->field_68 = 0;
                    menu->field_BC = 0;
                    break;
                }
                if (menu->arrows[0]->field_12_4) {
                    int i;

                    gGameState.field_88C_0 = 1;
                    gGameState.field_88A_5 = 1;
                    gGameState.field_88A_3 = 1;
                    for (i = 0; i < 5; i++) {
                        menu->arrows[i]->field_12_4 = 0;
                        menu->arrows[i]->field_12_1 = 1;
                    }
                }
            } else if (menu->field_A4 == 0xFF) {
                if (menu->field_B2 == 0) {
                    break;
                }
                menu->tsdr->definition->update((u8*)menu->tsdr + menu->tsdr->definition->offset);
                sub_8017E34();
                menu->field_BA = sub_8123DC4(menu->field_BA, 8);
                if (menu->field_BA == 0xFFFF) {
                    sub_819A43C();
                    menu->save->slots[stru_3000D40.slot].field_0 = 0xFF;
                    gGameState.field_88A_5 = 1;
                    gGameState.field_88A_3 = 1;
                    menu->field_67 = 1;
                    menu->field_68 = 0;
                    menu->field_BC = 0;
                    menu->field_A4 = 0;
                    BUFFER_REG_WIN0H = 0;
                    menu->process.state = 15;
                } else if (menu->field_BA == (stru_3000D40.slot + 1) * 223 + 2) {
                    sub_819A43C();
                    menu->field_A4 = 0;
                }
            } else if (++menu->field_A4 > 42) {
                menu->field_A4 = 0xFF;
                sub_80196E0();
                gGameState.field_88C_0 = 0;
            }
            break;
        case 15:
            if (menu->field_3C->yPosition < 0xC0) {
                menu->field_3C->yPosition += 4;
            }
            if (menu->field_40->yPosition < 0xC0) {
                menu->field_40->yPosition += 4;
            }
            if (menu->field_44->yPosition < 0xC0) {
                menu->field_44->yPosition += 4;
            }
            if (menu->field_A4 == 0) {
                gGameState.field_88C_0 = 1;
            } else if (menu->field_A4 == 10) {
                sub_8125220(menu->field_62, &menu->field_63, 0x7F);
            }
            if (++menu->field_A4 > 180 && (menu->field_8C->field_2 & 3)) {
                menu->field_AD = 0;
                menu->process.state = 18;
            }
            break;
        case 18:
            if ((menu->field_AD & 0x7F) == 1) {
                sub_812A8AC(menu, 0xFFFF);
            } else {
                sub_812A8AC(menu, 0);
            }
            menu->process.state = 19;
            break;
        case 19: {
            u8 option;

            if (sub_812A888(menu)) {
                break;
            }
            option = menu->field_AD & 0x7F;
            *(u16*)0x2000080 = 0;
            gGameState.field_2 = 1;
            gGameState.field_3C.field_3C_0 = menu->field_A6;
            menu->field_8C->field_8 = menu->field_A8;
            menu->field_8C->field_9 = menu->field_A9;
            dword_3000C78 = sub_800063C;
            if (menu) {
                sub_8127FC4(menu, 3);
            }
            if (option == 1) {
                reset_game_80189C4();
            } else {
                process_enable(parent);
            }
            break;
        }
    }
}

u8 sub_8128D74(struct SaveMenu* menu) {
    struct Process* parent = menu->process.parentProcess;

    if (menu->field_AD & 0x80) {
        if (menu->field_8C->field_2 & 1) {
            u32** font;
            u8* name;

            if (menu->field_AE != 0) {
                play_sfx_80195B4(0x61, -1);
                menu->field_AD &= 0x7F;
                menu->cursor->yPosition = menu->field_AA[menu->field_AD];
                menu->field_67 = 1;
                menu->field_68 = 0;
                menu->field_BC = 0;
                return 0;
            }
            font = sub_81980C8(3);
            if ((menu->save->field_6 >> stru_3000D40.slot) & 1) {
                menu->field_BA = stru_3000D40.slot * 223 + 2;
            }
            sub_8025F28(parent);
            sub_8123BA8(0);
            gGameState.field_88A_5 = 0;
            gGameState.field_88A_3 = 0;
            if (menu->save->slots[stru_3000D40.slot]
                    .data.field_4[menu->save->slots[stru_3000D40.slot].data.field_0_3]
                    .field_0
                == 0x113) {
                menu->field_AF |= 2;
            }
            name = sub_8123308(menu->save->slots[stru_3000D40.slot]
                                   .data.field_4[menu->save->slots[stru_3000D40.slot].data.field_0_3]
                                   .field_0);
            menu->field_B6 = 0;
            menu->field_B5 = 0;
            if (name) {
                while (*name != 0) {
                    int k;
                    int c;

                    do {
                        c = *name++;
                    } while (c == 0xFF);
                    k = 0xFF - c;
                    if (k == 0xFF) {
                        break;
                    }
                    if (k > 1) {
                        k = 0;
                    } else {
                        if (font[k] == NULL) {
                            continue;
                        }
                        c = *name++;
                        if (k != 0) {
                            goto addB6;
                        }
                    }
                    if (c == 0x20) {
                        menu->field_B6 += 2;
                        continue;
                    }
                addB6:
                    menu->field_B6 =
                        menu->field_B6 + (((font[k][(c / 8) + 1] >> ((c & 7) * 4)) & 0xF) + 1);
                }
                menu->field_B5 = menu->field_B6;
                while (*name != 0) {
                    int k;
                    int c;

                    do {
                        c = *name++;
                    } while (c == 0xFF);
                    k = 0xFF - c;
                    if (k == 0xFF) {
                        break;
                    }
                    if (k > 1) {
                        k = 0;
                    } else {
                        if (font[k] == NULL) {
                            continue;
                        }
                        c = *name++;
                        if (k != 0) {
                            goto addB5;
                        }
                    }
                    if (c == 0x20) {
                        menu->field_B5 += 2;
                        continue;
                    }
                addB5:
                    menu->field_B5 =
                        menu->field_B5 + (((font[k][(c / 8) + 1] >> ((c & 7) * 4)) & 0xF) + 1);
                }
                menu->field_B5 += 2;
            }
            if (!(menu->field_B0 & 1)) {
                u8* name1 = sub_8123308(menu->entry.field_12);
                name =
                    sub_8123308(menu->save->slots[stru_3000D40.slot]
                                    .data.field_4[menu->save->slots[stru_3000D40.slot].data.field_0_3]
                                    .field_0);

                if (name1 && name) {
                    if (name1 == name) {
                        menu->field_B0 = 0;
                    } else {
                        while (*name != 0 || *name1 != 0) {
                            int c1;
                            int c0;

                            do {
                                c1 = *name++;
                            } while (c1 == 0xFF);
                            do {
                                c0 = *name1++;
                            } while (c0 == 0xFF);
                            if (c1 == 0 && c0 == 0) {
                                menu->field_B0 |= 2;
                                break;
                            }
                            if (c1 != c0) {
                                menu->field_B0 |= 4;
                                break;
                            }
                        }
                    }
                }
            }
            menu->field_AE = 0x80;
            menu->field_A4 = 1;
            menu->field_62 = sub_81252BC(&menu->field_63, 0x1E);
            sprite_hide_8021F20(menu->cursor);
            menu->field_B3 = 2;
            menu->field_67 = 1;
            menu->field_68 = 1;
            menu->field_BC = 0;
            if (menu->field_B0 & 1) {
                if (menu->entry.field_12 == 0xFFFF) {
                    menu->entry.field_12 = 0;
                    BUFFER_REG_WIN0H = (menu->field_B4 + 0x20) | 0x2000;
                    BUFFER_REG_WIN0V = 0x8090;
                    REG_WIN0H = (menu->field_B4 + 0x20) | 0x2000;
                    REG_WIN0V = 0x8090;
                } else {
                    BUFFER_REG_WIN0H = (menu->field_B5 + 0x20) | 0x2000;
                    BUFFER_REG_WIN0V = 0x8090;
                    REG_WIN0H = (menu->field_B5 + 0x20) | 0x2000;
                    REG_WIN0V = 0x8090;
                }
                BUFFER_REG_WININ = 0x1E;
                BUFFER_REG_WINOUT = 0x1F;
                menu->field_B8 = 1;
                menu->field_B2 = 1;
            } else if (menu->field_B0 & 6) {
                BUFFER_REG_WIN0H = ((menu->field_B4 + 0x20) << 8) | (menu->field_B4 + 0x20);
                BUFFER_REG_WIN0V = 0x8090;
                BUFFER_REG_WININ = 0x1E;
                BUFFER_REG_WINOUT = 0x1F;
                menu->field_40->xPosition = menu->field_B4 + 0x20;
                menu->field_B8 = 5;
            } else {
                menu->field_3C->xPosition = menu->field_B5 + 0x28;
                menu->field_B8 = 1;
                menu->field_B2 = 1;
            }
            play_sfx_80195B4(0x60, -1);
            return 2;
        } else if (menu->field_8C->field_2 & 2) {
            play_sfx_80195B4(0x61, -1);
            menu->field_AD &= 0x7F;
            menu->cursor->yPosition = menu->field_AA[menu->field_AD];
            menu->field_67 = 1;
            menu->field_68 = 0;
            menu->field_BC = 0;
        } else if (menu->field_8C->field_2 & 0x40) {
            if (menu->field_AE == 0) {
                menu->field_AE = 1;
            } else {
                menu->field_AE--;
            }
            menu->cursor->yPosition = menu->field_AE * 13 + 0x56;
            play_sfx_80195B4(0x5F, -1);
        } else if (menu->field_8C->field_2 & 0x80) {
            if (menu->field_AE == 1) {
                menu->field_AE = 0;
            } else {
                menu->field_AE++;
            }
            menu->cursor->yPosition = menu->field_AE * 13 + 0x56;
            play_sfx_80195B4(0x5F, -1);
        }
    } else {
        if (menu->field_8C->field_2 & 2) {
            play_sfx_80195B4(0x61, -1);
            menu->field_AD = 2;
            return 1;
        }
        if (menu->field_8C->field_2 & 1) {
            if (menu->field_AD == 2) {
                play_sfx_80195B4(0x61, -1);
                return 1;
            }
            menu->field_AD |= 0x80;
            menu->field_AE = 1;
            {
                struct Sprite* cursor = menu->cursor;
                s16 y = 0x63;
                cursor->yPosition = y;
            }
            menu->field_67 = 1;
            menu->field_68 = 0;
            menu->field_BC = 0;
            play_sfx_80195B4(0x60, -1);
        } else if (menu->field_8C->field_2 & 0x40) {
            if (menu->field_AD == 0) {
                menu->field_AD = 2;
            } else {
                menu->field_AD--;
            }
            menu->cursor->yPosition = menu->field_AA[menu->field_AD];
            play_sfx_80195B4(0x5F, -1);
        } else if (menu->field_8C->field_2 & 0x80) {
            if (menu->field_AD == 2) {
                menu->field_AD = 0;
            } else {
                menu->field_AD++;
            }
            menu->cursor->yPosition = menu->field_AA[menu->field_AD];
            play_sfx_80195B4(0x5F, -1);
        }
    }
    return 0;
}

void sub_812936C(struct SaveMenu* menu) {
    struct struc_16* parent = (struct struc_16*)menu->process.parentProcess;
    s32 arrowX[5] = { 0xC8, 0x78, 0xE8, 0x60, 0 };
    s32 arrowY[5] = { 0x80, 0x18, 0x88, 0x18, 0 };

    sub_8021574(5, 0x6003, 0, 0, 0, menu->field_60, -1);

    menu->cursor = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
    sub_801E150(menu->cursor, 0, -1, 0, 0);
    sprite_show_8020CBC(menu->cursor);
    menu->cursor->xPosition = 0x24;
    menu->cursor->yPosition = menu->field_AA[menu->field_AD];
    menu->cursor->field_1F_0 = 0;
    menu->cursor->field_1F_2 = 0;
    menu->cursor->field_1F_4 = 0;
    menu->cursor->field_1F_6 = 0;
    menu->cursor->field_E = 0xEFFF;
    menu->cursor->field_10_1 = 0;
    menu->cursor->field_29_1 = 0;
    menu->cursor->field_29_5 = 0;

    menu->field_3C = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
    sub_801E150(menu->field_3C, 1, -1, 0, 0);
    sprite_show_8020CBC(menu->field_3C);
    menu->field_3C->xPosition = 0x20;
    menu->field_3C->yPosition = 0xC0;
    menu->field_3C->field_E = 0xEFFF;
    menu->field_3C->field_1F_0 = 0;
    menu->field_3C->field_1F_2 = 0;
    menu->field_3C->field_1F_4 = 0;
    menu->field_3C->field_1F_6 = 0;
    menu->field_3C->field_10_1 = 0;
    menu->field_3C->field_29_1 = 0;
    menu->field_3C->field_29_5 = 0;
    menu->field_3C->field_12_4 = 1;

    menu->field_40 = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
    sub_801E150(menu->field_40, 7, -1, 0, 0);
    sprite_show_8020CBC(menu->field_40);
    menu->field_40->xPosition = 0x20;
    menu->field_40->yPosition = 0xC0;
    menu->field_40->field_E = 0xEFFF;
    menu->field_40->field_1F_0 = 0;
    menu->field_40->field_1F_2 = 0;
    menu->field_40->field_1F_4 = 0;
    menu->field_40->field_1F_6 = 0;
    menu->field_40->field_10_1 = 0;
    menu->field_40->field_29_1 = 0;
    menu->field_40->field_29_5 = 0;
    menu->field_40->field_12_4 = 1;

    menu->field_44 = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
    sub_801E150(menu->field_44, 8, -1, 0, 0);
    sprite_show_8020CBC(menu->field_44);
    menu->field_44->xPosition = 0x20;
    menu->field_44->yPosition = 0xC0;
    menu->field_44->field_E = 0xEFFF;
    menu->field_44->field_1F_0 = 0;
    menu->field_44->field_1F_2 = 0;
    menu->field_44->field_1F_4 = 0;
    menu->field_44->field_1F_6 = 0;
    menu->field_44->field_10_1 = 0;
    menu->field_44->field_29_1 = 0;
    menu->field_44->field_29_5 = 0;
    menu->field_44->field_12_4 = 1;

    {
        int i;

        {
            int i;

            for (i = 0; i < 4; i++) {
                menu->arrows[i] = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
                sub_801E150(menu->arrows[i], i + 2, -1, 0, 0);
                sprite_show_8020CBC(menu->arrows[i]);
                menu->arrows[i]->xPosition = arrowX[i];
                menu->arrows[i]->yPosition = arrowY[i];
                menu->arrows[i]->field_E = 0xEFFF;
                if (i == 0) {
                    menu->arrows[0]->field_1F_0 = 0;
                    menu->arrows[0]->field_1F_2 = 0;
                    menu->arrows[0]->field_1F_4 = 0;
                    menu->arrows[0]->field_1F_6 = 0;
                } else {
                    menu->arrows[i]->field_1F_0 = 1;
                    menu->arrows[i]->field_1F_2 = 1;
                    menu->arrows[i]->field_1F_4 = 1;
                    menu->arrows[i]->field_1F_6 = 1;
                }
                menu->arrows[i]->field_10_1 = 0;
                menu->arrows[i]->field_29_1 = 0;
                menu->arrows[i]->field_29_5 = 0;
                menu->arrows[i]->field_12_4 = 1;
                menu->arrows[i]->field_12_1 = 1;
            }
        }
    }

    if (!(menu->field_B0 & 1)) {
        {
            int i;

            for (i = 0; i < 2; i++) {
                if (menu->entry.items[i].id != 0
                    && (menu->entry.field_18 == 2 || menu->entry.field_18 == i)) {
                    sub_8021574(0, sub_8021EA8(0, menu->entry.items[i].id)->field_0_0, 0, 0, 0,
                                menu->field_60, -1);
                    menu->fileSprites[i] = sub_8020DD0(0, menu->entry.items[i].id, 1, -1, -1, -1, -1);
                    sub_801E150(menu->fileSprites[i], menu->entry.items[i].field_2, -1, 0, 0);
                    sub_801E150(menu->fileSprites[i], menu->entry.items[i].field_2,
                                menu->entry.items[i].field_3, 0, 0);
                    sprite_show_8020CBC(menu->fileSprites[i]);
                    menu->fileSprites[i]->xPosition = 0xBC - i * 40;
                    menu->fileSprites[i]->yPosition = 0x68;
                    menu->fileSprites[i]->field_E = 0xEFFF;
                    menu->fileSprites[i]->field_1F_0 = 3;
                    menu->fileSprites[i]->field_1F_2 = 3;
                    menu->fileSprites[i]->field_1F_4 = 3;
                    menu->fileSprites[i]->field_1F_6 = 3;
                    menu->fileSprites[i]->field_10_1 = 0;
                    menu->fileSprites[i]->field_29_1 = 0;
                    menu->fileSprites[i]->field_29_5 = 0;
                    menu->fileSprites[i]->field_12_4 = 1;
                    menu->fileSprites[i]->field_12_1 = 1;
                } else {
                    sub_8021574(5, 0x6002, 0, 0, 0, menu->field_60, -1);
                    menu->fileSprites[i] = sub_8020DD0(5, 0x6006, 0, -1, -1, -1, -1);
                    sub_801E150(menu->fileSprites[i], i, -1, 0, 0);
                    sprite_show_8020CBC(menu->fileSprites[i]);
                    menu->fileSprites[i]->xPosition = 0xBC - i * 40;
                    menu->fileSprites[i]->yPosition = 0x68;
                    menu->fileSprites[i]->field_E = 0xEFFF;
                    menu->fileSprites[i]->field_1F_0 = 3;
                    menu->fileSprites[i]->field_1F_2 = 3;
                    menu->fileSprites[i]->field_1F_4 = 3;
                    menu->fileSprites[i]->field_1F_6 = 3;
                    menu->fileSprites[i]->field_10_1 = 0;
                    menu->fileSprites[i]->field_29_1 = 0;
                    menu->fileSprites[i]->field_29_5 = 0;
                }
            }
        }
    }

    {
        int i;

        {
            int i;

            for (i = 0; i < 2; i++) {
                if (dword_3000FF8[i].id == 0
                    || (!parent->field_208_4 && !parent->field_208_6 && parent->field_208_2 != i)) {
                    sub_8021574(5, 0x6002, 0, 0, 0, menu->field_60, -1);
                    menu->currentSprites[i] = sub_8020DD0(5, 0x6006, 0, -1, -1, -1, -1);
                    sub_801E150(menu->currentSprites[i], i, -1, 0, 0);
                    sprite_show_8020CBC(menu->currentSprites[i]);
                    menu->currentSprites[i]->xPosition = 0xBC - i * 40;
                    menu->currentSprites[i]->yPosition = 0xB4;
                    menu->currentSprites[i]->field_E = 0xEFFF;
                    menu->currentSprites[i]->field_1F_0 = 3;
                    menu->currentSprites[i]->field_1F_2 = 3;
                    menu->currentSprites[i]->field_1F_4 = 3;
                    menu->currentSprites[i]->field_1F_6 = 3;
                    menu->currentSprites[i]->field_10_1 = 0;
                    menu->currentSprites[i]->field_29_1 = 0;
                    menu->currentSprites[i]->field_29_5 = 0;
                } else {
                    sub_8021574(0, sub_8021EA8(0, dword_3000FF8[i].id)->field_0_0, 0, 0, 0,
                                menu->field_60, -1);
                    menu->currentSprites[i] = sub_8020DD0(0, dword_3000FF8[i].id, 1, -1, -1, -1, -1);
                    sub_801E150(menu->currentSprites[i], dword_3000FF8[i].field_2, -1, 0, 0);
                    sub_801E150(menu->currentSprites[i], dword_3000FF8[i].field_2,
                                dword_3000FF8[i].field_3, 0, 0);
                    sprite_show_8020CBC(menu->currentSprites[i]);
                    menu->currentSprites[i]->xPosition = 0xBC - i * 40;
                    menu->currentSprites[i]->yPosition = 0xB4;
                    menu->currentSprites[i]->field_E = 0xEFFF;
                    menu->currentSprites[i]->field_1F_0 = 3;
                    menu->currentSprites[i]->field_1F_2 = 3;
                    menu->currentSprites[i]->field_1F_4 = 3;
                    menu->currentSprites[i]->field_1F_6 = 3;
                    menu->currentSprites[i]->field_10_1 = 0;
                    menu->currentSprites[i]->field_29_1 = 0;
                    menu->currentSprites[i]->field_29_5 = 0;
                    menu->currentSprites[i]->field_12_4 = 1;
                    menu->currentSprites[i]->field_12_1 = 1;
                }
            }
        }
    }

    sub_8021F7C();
    sub_8020A78();
    dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 0xA14);
}

void* sub_8129B4C(struct SaveMenu* menu, void* buf) {
    u8 hours;
    u8 minutes;
    u32 time;

    if (menu->field_B1) {
        time = (dword_3001038 + (&loc_819832C - &loc_8198220))(
            menu->save->slots[stru_3000D40.slot].data.field_6EC, 216000);
        if (time > 99) {
            minutes = 59;
            hours = 99;
        } else {
            hours = time;
            time = (dword_3001038 + (&loc_819832C - &loc_8198220))(
                menu->save->slots[stru_3000D40.slot].data.field_6EC, 3600);
            minutes = (dword_3001038 + (&loc_8198350 - &loc_8198220))(time, 60);
        }
        buf =
            sub_8121F1C(buf, hours, minutes, menu->save->slots[stru_3000D40.slot].data.entry.field_10);
        buf = sub_8122098(buf, menu->save->slots[stru_3000D40.slot].data.entry.items[0].field_4,
                          menu->save->slots[stru_3000D40.slot].data.entry.items[1].field_4);
    } else {
        buf = sub_8121F1C(buf, menu->entry.field_16, menu->entry.field_17, menu->entry.field_10);
        buf = sub_8122098(buf, menu->entry.items[0].field_4, menu->entry.items[1].field_4);
    }
    return buf;
}

#define SAVE_TMEV_BASE(menu) (*(u32*)((menu)->tmev->field_28->field_4 + 0x194))
#define IWRAM_COPY ((void (*)(void*, void*, int))((u8*)dword_3001034 + (loc_8198154 - loc_81980D8)))

// https://decomp.me/scratch/TODO
//! 54 diff lines. Reading the texts through get_text() (inlining adds block boundaries that change
//! GCC's loop rotation) fixed the line-counting loops, and field_BE being volatile explains its extra
//! loads. Still off: the typewriter loop's entry test isn't duplicated (the original has two separate
//! `field_BC = 0` stores) and the argument order around the sub_8083860 calls.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8129C98.s\"");
#else
void sub_8129C98(struct SaveMenu* menu) {
    u8* name;
    u8** texts;

    if (menu->field_67 == 1) {
        name = NULL;
        texts = off_83BADC0[gGameState.field_8C0];
        if (menu->field_68 != 2) {
            if (menu->field_BC == 0) {
                dword_3001034(0, menu->field_120, 0xF20);
            }
            if (menu->field_BA == 0xFFFF) {
                int n;

                sub_8199D78(&menu->field_CC, menu->field_120, 11, 0, 0, 0, 0, 2, 9, 4);
                sub_8199D5C(&menu->field_CC, 0, 11, (int)get_text(texts, 7));
                for (n = 0; get_text(texts, 7)[n] != 0 || get_text(texts, 7)[n - 1] == 0xFF; n++) {
                    sub_8199624(&menu->field_CC);
                }
            } else if (menu->field_AE & 0x80) {
                if (menu->field_B3 == 2 && menu->field_A4 == 0) {
                    int n;

                    sub_8199D78(&menu->field_CC, menu->field_120, 11, 0, 0, 0, 0, 2, 5, 4);
                    sub_8199D5C(&menu->field_CC, 0, 11, (int)get_text(texts, 6));
                    for (n = 0; get_text(texts, 6)[n] != 0 || get_text(texts, 6)[n - 1] == 0xFF; n++) {
                        sub_8199624(&menu->field_CC);
                    }
                } else {
                    int lines = 0;
                    int pos;

                    if (menu->field_BC == 0) {
                        sub_8199D78(&menu->field_CC, menu->field_120, 11, 0, 0, 0, 0, 2, 5, 4);
                        sub_8199D5C(&menu->field_CC, 0, 11, (int)get_text(texts, 5));
                    }
                    for (pos = menu->field_BC;
                         get_text(texts, 5)[pos] != 0 || get_text(texts, 5)[pos - 1] == 0xFF;
                         pos++, menu->field_BC++) {
                        if (get_text(texts, 5)[pos] == 0 && get_text(texts, 5)[pos - 1] == 0xFF
                            && ++lines == 3) {
                            goto copy;
                        }
                        sub_8199624(&menu->field_CC);
                    }
                    menu->field_BC = 0;
                }
            } else if (menu->field_AD & 0x80) {
                int n;

                sub_8199D78(&menu->field_CC, menu->field_120, 11, 0, 0, 0, 0, 2, 5, 4);
                sub_8199D5C(&menu->field_CC, 0, 11, (int)get_text(texts, (menu->field_AD & 0x7F) + 3));
                for (n = 0; get_text(texts, (menu->field_AD & 0x7F) + 3)[n] != 0
                            || get_text(texts, (menu->field_AD & 0x7F) + 3)[n - 1] == 0xFF;
                     n++) {
                    sub_8199624(&menu->field_CC);
                }
                sub_8083860(menu->field_120, 11, 0, 0x32, get_text(texts, 8), 5);
                sub_8083860(menu->field_120, 11, 0, 0x3F, get_text(texts, 9), 5);
            } else {
                int lines = 0;
                int n;

                sub_8199D78(&menu->field_CC, menu->field_120, 11, 0, 0, 0, 0, 2, 5, 4);
                sub_8199D5C(&menu->field_CC, 0, 11, (int)get_text(texts, 0));
                for (n = 0; get_text(texts, 0)[n] != 0 || get_text(texts, 0)[n - 1] == 0xFF; n++) {
                    if (get_text(texts, 0)[n] == 0 && get_text(texts, 0)[n - 1] == 0xFF) {
                        lines++;
                    }
                    sub_8199624(&menu->field_CC);
                }
                sub_8199D78(&menu->field_E0, menu->field_120, 11, 0, 0, 0, 0, 2, 5, 4);
                sub_8199D5C(&menu->field_E0, 0, lines * 13 + 0x18, (int)get_text(texts, 1));
                for (n = 0; get_text(texts, 1)[n] != 0 || get_text(texts, 1)[n - 1] == 0xFF; n++) {
                    if (get_text(texts, 1)[n] == 0 && get_text(texts, 1)[n - 1] == 0xFF) {
                        lines++;
                    }
                    sub_8199624(&menu->field_E0);
                }
                sub_8199D78(&menu->field_F4, menu->field_120, 11, 0, 0, 0, 0, 2, 5, 4);
                sub_8199D5C(&menu->field_F4, 0, lines * 13 + 0x25, (int)get_text(texts, 2));
                for (n = 0; get_text(texts, 2)[n] != 0 || get_text(texts, 2)[n - 1] == 0xFF; n++) {
                    if (get_text(texts, 2)[n] == 0 && get_text(texts, 2)[n - 1] == 0xFF) {
                        lines++;
                    }
                    sub_8199624(&menu->field_F4);
                }
            }
        copy:
            if (menu->field_BC == 0) {
                IWRAM_COPY(menu->field_120, (u8*)menu->field_120 - SAVE_TMEV_BASE(menu), 0xF20);
            }
        }
        if (menu->field_68 != 1) {
            if (menu->field_BE) {
                BUFFER_REG_WIN0H = menu->field_BE;
                menu->field_BE = 0;
                menu->field_B2 = 1;
            }
            dword_3001034(0, menu->field_124, 0x8A0);
            if (menu->field_BA == 0xFFFF || menu->entry.field_12 == 0xFFFF) {
                name = get_text(texts, 10);
            } else if (menu->field_B8 == 1 || menu->field_B7) {
                name =
                    sub_8123308(menu->save->slots[stru_3000D40.slot]
                                    .data.field_4[menu->save->slots[stru_3000D40.slot].data.field_0_3]
                                    .field_0);
                menu->field_B2 = 1;
            } else if (!(menu->field_B0 & 1)) {
                name = sub_8123308(menu->entry.field_12);
            }
            if (name) {
                sub_8199D78(&menu->field_108, menu->field_124, 0x17, 0, 0, 0, 0, 2, 11, 4);
                sub_8199D5C(&menu->field_108, 0, 8, (int)name);
                do {
                    if (menu->field_108.field_8[0] == 0xFF && menu->field_108.field_8[1] == 0) {
                        menu->field_108.field_8 += 2;
                    }
                } while (sub_8199624(&menu->field_108) != 0);
            }
            IWRAM_COPY(menu->field_124, (u8*)menu->field_124 - SAVE_TMEV_BASE(menu), 0x8A0);
            menu->field_68 = 0;
        }
    } else if (menu->field_67 == 2) {
        dword_3001034(0, menu->field_120, 0xF20);
        sub_80E9384(menu->field_6C, (int)menu->field_120 - SAVE_TMEV_BASE(menu));
        dword_3001034(0, menu->field_124, 0x8A0);
        sub_80E9384(menu->field_6C, (int)menu->field_124 - SAVE_TMEV_BASE(menu));
        dword_3001034(0, menu->field_C8, 0x800);
    } else if (menu->field_67 == 3) {
        menu->field_120 = (u8*)sub_80E9414(menu->field_6C, 0xF20) + SAVE_TMEV_BASE(menu);
        dword_3001034(0, menu->field_120, 0xF20);
        sub_8127DB4(menu->field_C8, 0x20, 0x20, 11, 11,
                    sub_8127E38((u32)menu->field_120 - SAVE_TMEV_BASE(menu)) | 0xE000, 1);
        menu->field_124 = (u8*)sub_80E9414(menu->field_6C, 0x8A0) + SAVE_TMEV_BASE(menu);
        dword_3001034(0, menu->field_124, 0x8A0);
        sub_8127DB4(menu->field_C8, 0x20, 0x78, 0x17, 3,
                    sub_8127E38((u32)menu->field_124 - SAVE_TMEV_BASE(menu)) | 0xE000, 1);
    }
    if (menu->field_BC == 0) {
        if (menu->field_68 == 0) {
            menu->field_67 = 0;
        } else {
            menu->field_68 = 2;
        }
    }
    IWRAM_COPY(menu->field_C8, (void*)0x600D000, 0x800);
}
#endif

// https://decomp.me/scratch/TODO
//! Only difference: state 6 starts with a dead `ldrsh` of field_40->field_2C (movs r4, #0x2C;
//! ldrsh r0, [r2, r4]) that the original keeps. An empty `if (...);` gets the sprite pointer load
//! right but the read itself is deleted.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812A42C.s\"");
#else
void sub_812A42C(struct SaveMenu* menu) {
    switch (menu->field_B8) {
        case 1:
            if (menu->field_3C->yPosition > 0x88) {
                menu->field_3C->yPosition -= 4;
                if (menu->field_3C->yPosition > 0x88) {
                    break;
                }
            }
            if (menu->field_B0) {
                menu->field_B8 = 2;
                menu->field_3C->yPosition = 0x88;
                menu->field_3C->field_12_4 = 0;
            } else {
                menu->field_B7 = 1;
                menu->field_B8 = 3;
                menu->field_3C->yPosition = 0xC0;
                menu->field_3C->field_12_4 = 1;
                menu->field_44->xPosition = menu->field_3C->xPosition;
                menu->field_44->yPosition = 0x88;
                menu->field_44->field_12_4 = 0;
            }
            break;
        case 2:
            if (menu->field_3C->xPosition < menu->field_B5 + 0x28) {
                menu->field_3C->xPosition++;
                if (menu->field_3C->xPosition < menu->field_B5 + 0x20) {
                    BUFFER_REG_WIN0H = (menu->field_3C->xPosition << 8) | (menu->field_B5 + 0x20);
                } else {
                    BUFFER_REG_WIN0H = ((menu->field_B5 + 0x20) << 8) | (menu->field_B5 + 0x20);
                }
                break;
            }
            menu->field_B7 = 1;
            menu->field_3C->xPosition = menu->field_B5 + 0x28;
            if (menu->field_A4) {
                menu->field_B8 = 3;
                menu->field_3C->yPosition = 0xC0;
                menu->field_3C->field_12_4 = 1;
                menu->field_44->xPosition = menu->field_3C->xPosition;
                menu->field_44->yPosition = 0x88;
                menu->field_44->field_12_4 = 0;
            } else {
                menu->field_3C->yPosition = 0xC0;
                menu->field_3C->field_12_4 = 1;
                menu->field_44->xPosition = menu->field_3C->xPosition;
                menu->field_44->yPosition = 0x88;
                menu->field_44->field_12_4 = 1;
                menu->field_B8 = 4;
            }
            break;
        case 3:
            if (menu->field_A4 == 0) {
                menu->field_B8 = 4;
                menu->field_44->field_12_4 = 1;
            }
            break;
        case 4:
            if (menu->field_44->yPosition < 0xC0) {
                menu->field_44->yPosition += 4;
            } else {
                menu->field_B8 = 4;
                menu->field_44->yPosition = 0xC0;
            }
            break;
        case 5:
            if (menu->field_40->yPosition > 0x88) {
                menu->field_40->yPosition -= 4;
                if (menu->field_40->yPosition > 0x88) {
                    break;
                }
            }
            menu->field_B8 = 6;
            menu->field_40->yPosition = 0x88;
            menu->field_40->field_12_4 = 0;
            break;
        case 6:
            if (menu->field_40->field_2C)
                ;
            if (menu->field_B0 & 2) {
                if (menu->field_B6 + 0x20 < menu->field_40->xPosition) {
                    menu->field_40->xPosition--;
                    BUFFER_REG_WIN0H = (menu->field_40->xPosition << 8) | (menu->field_B4 + 0x20);
                } else if (menu->field_40->xPosition <= menu->field_B6 + 0x20) {
                    menu->field_B8 = 7;
                    menu->field_40->xPosition = menu->field_B6 + 0x20;
                    menu->field_40->field_12_4 = 1;
                }
            } else if (menu->field_B0 & 4) {
                if (menu->field_40->xPosition > 0x20) {
                    menu->field_40->xPosition--;
                    BUFFER_REG_WIN0H = (menu->field_40->xPosition << 8) | (menu->field_B4 + 0x20);
                } else {
                    menu->field_B8 = 7;
                    menu->field_40->xPosition = 0x20;
                    menu->field_40->field_12_4 = 1;
                }
            }
            break;
        case 7:
            if (menu->field_40->yPosition < 0xC0) {
                menu->field_40->yPosition += 4;
                if (menu->field_40->yPosition < 0xC0) {
                    break;
                }
            }
            menu->field_3C->xPosition = menu->field_40->xPosition;
            menu->field_40->yPosition = 0xC0;
            if (menu->field_B0 & 2) {
                if (menu->field_B4 < menu->field_B5) {
                    REG_WIN0H = ((menu->field_B6 + 0x20) << 8) | (menu->field_B5 + 0x20);
                    BUFFER_REG_WIN0H = ((menu->field_B6 + 0x20) << 8) | (menu->field_B5 + 0x20);
                } else {
                    REG_WIN0H = ((menu->field_B6 + 0x20) << 8) | (menu->field_B4 + 0x20);
                    BUFFER_REG_WIN0H = ((menu->field_B6 + 0x20) << 8) | (menu->field_B4 + 0x20);
                }
            } else if (menu->field_B0 & 4) {
                if (menu->field_B4 < menu->field_B5) {
                    REG_WIN0H = (0x20 << 8) | (menu->field_B5 + 0x20);
                    BUFFER_REG_WIN0H = (0x20 << 8) | (menu->field_B5 + 0x20);
                } else {
                    REG_WIN0H = (0x20 << 8) | (menu->field_B4 + 0x20);
                    BUFFER_REG_WIN0H = (0x20 << 8) | (menu->field_B4 + 0x20);
                }
            }
        case 8:
            menu->field_B8 = 1;
            menu->field_67 = 1;
            menu->field_68 = 1;
            menu->field_BC = 0;
            break;
    }
}
#endif

void sub_812A7A0(struct Process* tsdr) {
    struct SaveMenu* menu = (struct SaveMenu*)tsdr->parentProcess;
    int buf = gGameState.field_880;

    if (menu->process.state > 4) {
        if (menu->field_67) {
            sub_8129C98(menu);
        }
        if (gGameState.field_888_4 == 0) {
            if (!(menu->field_B0 & 1)) {
                buf = (int)sub_812A930(menu, (void*)buf);
            }
            sub_8021F7C();
            sub_8020A78();
            dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 0xA14);
            buf = dword_3000D4C(stru_203FFB8.field_3C, buf);
            buf = (int)sub_8129B4C(menu, (void*)buf);
            gGameState.field_880 = buf;
        }
    }
}

u8 sub_812A888(struct SaveMenu* menu) {
    u8 busy = sub_8116620(menu->fade);

    if (busy == 0) {
        menu->field_69 = busy;
        return 0;
    }
    return 1;
}

void sub_812A8AC(struct SaveMenu* menu, u16 color) {
    sub_81151E4(menu->fade, 4, color, 8, 0xFFFF, 0xFFFF, 0, 0);
    menu->field_69 = 1;
}

void sub_812A8E0(struct SaveMenu* menu) {
    gGameState.field_884 = -1;
    sub_81151E4(menu->fade, 0, 0, 8, 0xFFFF, 0xFFFF, 0, 0);
    BUFFER_REG_DISPCNT = menu->field_A2;
    menu->field_69 = 1;
}
