#pragma implementation "save_menu.h"

#include "global.h"
#include "common.h"
#include "heap.h"
#include "save_menu.h"

inline void* SaveMenu::sub_812A930(void* buf) {
    if (this->field_B1) {
        buf = sub_8122198(buf, dword_3000FF4->field_30, dword_3000FF4->field_6C, this->field_AF & 2);
    } else {
        buf = sub_8122198(buf, this->entry.field_14, this->entry.field_15, this->field_AF & 1);
    }
    return buf;
}

SaveMenu::SaveMenu(u8 priority, char* label, int arg3) : Process(priority, label) {
    this->field_8C = &gGameState.field_3C;
    this->field_A6 = gGameState.field_3C.field_3C_0;
    gGameState.field_3C.field_3C_0 = 0x3FF;
    this->field_A8 = this->field_8C->field_8;
    this->field_A9 = this->field_8C->field_9;
    this->field_8C->field_8 = 10;
    this->field_8C->field_9 = 8;

    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_BLDCNT = 0;
    sub_8017E34();
    gGameState.field_888_5 = 1;
    gGameState.field_888_6 = 1;

    this->tsdr = new (0, "TSDR", 1) SaveMenuRenderer(8, "TSDR");
    this->fade = init_ybpa_process_8114B4C(operator new(0x5C, 0, "FADE", 1), 8, "FADE", 8);
    this->tsdr->parentProcess = this;
}

SaveMenu::~SaveMenu() {
    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_WININ = 0;
    BUFFER_REG_WINOUT = 0;
    BUFFER_REG_BLDCNT = 0;
    gGameState.field_888_5 = 0;
    gGameState.field_888_3 = 0;
    gGameState.field_888_6 = 0;

    if (this->tmev) {
        sub_80FAFD8(this->tmev, 3);
    }

    sub_8021FD4();

    if (this->field_C8) {
        operator delete[](this->field_C8);
    }

    if (this->fade) {
        sub_81166AC(this->fade, 3);
    }

    if (this->tsdr) {
        delete this->tsdr;
    }
}

static inline u8* get_text(u8** texts, int index) {
    return texts[index];
}

static inline u8* get_text_indexed(u8** texts, int index) {
    u8** text = texts + index;
    return *text;
}

#define VRAM_ALIGN_800(offset)                                                                         \
    if (((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_8198350 - (u8*)&loc_8198220)))(offset, 0x800)) {                              \
        offset = (((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(offset, 0x800) << 11) + 0x800;       \
    }

void SaveMenu::update() {
    Process* parent = this->parentProcess;

    switch (this->state) {
        case 0: {
            u8** texts = off_83BADC0[gGameState.field_8C0];
            u8* name;
            int n;

            this->save = dword_3000FFC;
            this->field_AF = 0;
            this->field_B5 = 0;
            this->field_B6 = 0;
            //! Possible fake match: `!(x & 1)` gives different code in C++ (bool), so `== 0`.
            if (((this->save->field_6 >> stru_3000D40.slot) & 1) == 0) {
                this->field_B0 = 1;
                dword_3001034(0, (void*)&this->entry, sizeof(struct LoadMenuEntry));
                this->field_B4 = 0;
            } else {
                u32** font = sub_81980C8(3);

                if (this->save->slots[stru_3000D40.slot].field_0 == 0xFF) {
                    u8** texts2 = off_83BADC0[gGameState.field_8C0];

                    this->field_B0 = 1;
                    dword_3001034(0, (void*)&this->entry, sizeof(struct LoadMenuEntry));
                    this->entry.field_12 = 0xFFFF;
                    name = get_text(texts2, 10);
                } else {
                    this->field_B0 = 0;
                    sub_8127BC8(&this->entry, stru_3000D40.slot);
                    if (this->entry.field_12 == 0x113) {
                        this->field_AF |= 1;
                    }
                    name = sub_8123308(this->entry.field_12);
                }
                this->field_B4 = 0;
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
                        }
                        if (k == 0 && c == 0x20) {
                            this->field_B4 += 2;
                        } else {
                            this->field_B4 =
                                this->field_B4 + (((font[k][(c / 8) + 1] >> ((c & 7) * 4)) & 0xF) + 1);
                        }
                    }
                    this->field_B4 += 2;
                }
            }
            this->field_B3 = 0;
            this->field_AD = 0;
            this->field_AE = 1;
            this->field_B1 = 0;
            this->field_67 = 0;
            this->field_68 = 0;
            this->field_BC = 0;
            this->field_BE = 0;
            this->field_B2 = 0;
            this->field_B7 = 0;
            this->field_B8 = 0;
            this->field_BA = 0;
            this->field_69 = 0;
            this->field_65 = 0;
            this->field_66 = 4;
            this->field_A4 = 0;
            this->field_C8 = operator new[](0x800, 1, "MMSB", 1);
            this->field_AA[0] = 0x2E;
            this->field_AA[1] = 0x3B;
            for (n = 0; get_text(texts, 0)[n] != 0 || get_text(texts, 0)[n - 1] == 0xFF; n++) {
                if (get_text(texts, 0)[n] == 0 && get_text(texts, 0)[n - 1] == 0xFF) {
                    this->field_AA[1] += 13;
                }
            }
            this->field_AA[2] = this->field_AA[1] + 13;
            for (n = 0; get_text(texts, 1)[n] != 0 || get_text(texts, 1)[n - 1] == 0xFF; n++) {
                if (get_text(texts, 1)[n] == 0 && get_text(texts, 1)[n - 1] == 0xFF) {
                    this->field_AA[2] += 13;
                }
            }
            this->state = 1;
            break;
        }
        case 1:
            dword_3000C78 = 0;
            gGameState.field_884 = 0;
            this->field_94 = sub_8127ECC(6, 0);
            this->field_90 = sub_80198B0(this->field_94);
            this->field_98 = alloc_heap_8018CEC(1, this->field_90, "WORK");
            dword_3000C84(this->field_94, this->field_98);
            sub_81229F0(this->field_98);
            this->state = 2;
            break;
        case 2:
            CpuCopy32(this->field_98, (void*)0x6010400, this->field_90);
            free_heap_memory_8018C68(this->field_98);
            this->state = 3;
            break;
        case 3:
            sub_8020994(this->field_90 + 0x400, 0, 0, 0);
            this->state = 4;
            break;
        case 4:
            sub_812936C();
            this->state = 5;
            break;
        case 5:
            this->tmev = (struct Tmev*)sub_80FB080(operator new(0x2C, 0, "TSEV", 0), 7, "TSEV");
            this->tmev->parentProcess = this;
            dword_3001034(0, (void*)(VRAM + 0x8000), 0x4000);
            this->field_6C = sub_80F92DC(this->tmev, 0, 0xF, (void*)(VRAM + 0x8000), 0x4B00,
                                         this->field_C8, 0, 0x7000, 0xF, 1);
            this->field_67 = 3;
            sub_8129C98();
            this->state = 6;
            break;
        case 6:
            this->field_A0 = 0;
            this->field_94 = sub_8127ECC(0x25, 0);
            this->field_9C = sub_80198B0(this->field_94);
            this->field_98 = alloc_heap_8018CEC(1, this->field_9C, "WORK");
            dword_3000C84(this->field_94, this->field_98);
            this->field_94 = sub_8127ECC(gGameState.field_8C0 + 0x26, 0);
            sub_8127E50(this->field_94, (u8*)this->field_98 + 0x1400, 0);
            this->state = 7;
            break;
        case 7:
            CpuCopy32(this->field_98, (void*)(VRAM + this->field_A0), this->field_9C);
            free_heap_memory_8018C68(this->field_98);
            this->field_A0 += this->field_9C;
            VRAM_ALIGN_800(this->field_A0);
            this->state = 8;
            break;
        case 8: {
            u8 ids[2] = { 0x30, 0x2E };
            int i;

            for (i = 0; i < 2; i++) {
                this->field_94 = sub_8127ECC(ids[i], 0);
                this->field_C0[i] = this->field_A0;
                dword_3001034(0, (void*)(VRAM + this->field_A0), 0x800);
                this->field_9C = sub_8127E50(this->field_94, (void*)(VRAM + this->field_A0), 0);
                this->field_A0 += this->field_9C;
                VRAM_ALIGN_800(this->field_A0);
            }
            this->field_94 = sub_8127ECC(ids[1], 0);
            this->field_C0[2] = this->field_A0;
            dword_3001034(0, (void*)(VRAM + this->field_A0), 0x800);
            this->field_9C = sub_8127E50(this->field_94, (void*)(VRAM + this->field_A0), 0);
            this->field_A0 += this->field_9C;
            VRAM_ALIGN_800(this->field_A0);
            sub_8127DB4((void*)(VRAM + this->field_C0[2]), 0xA8, 0x40, 5, 7, 0, 0);
            this->state = 9;
            break;
        }
        case 9: {
            int size;

            if (gGameState.field_888_1 == 0) {
                this->field_94 = sub_8127ECC(0x2B, &size);
            } else {
                this->field_94 = sub_8127ECC(0x2C, &size);
            }
            CpuCopy32(this->field_94, (void*)0x2000080, size);
            gGameState.field_2 = 0xFFFF;
            BUFFER_REG_BG0VOFS = 0;
            BUFFER_REG_BG0HOFS = 0;
            BUFFER_REG_BG2VOFS = 0;
            BUFFER_REG_BG2HOFS = 0;
            BUFFER_REG_BG3HOFS = 0;
            BUFFER_REG_BG3VOFS = 0;
            BUFFER_REG_BG0CNT = BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(26);
            BUFFER_REG_BG3CNT = BGCNT_SCREENBASE((this->field_C0[0] >> 11) & 0x1F) | BGCNT_PRIORITY(2);
            BUFFER_REG_WIN0H = 0x2020;
            BUFFER_REG_WIN0V = 0x8090;
            BUFFER_REG_WININ = 0x1E;
            BUFFER_REG_WINOUT = 0x1F;
            if (this->field_B0) {
                BUFFER_REG_BG2CNT =
                    BGCNT_SCREENBASE((this->field_C0[1] >> 11) & 0x1F) | BGCNT_PRIORITY(2);
                this->field_A2 = 0x3D40;
            } else if (this->field_AF) {
                BUFFER_REG_BG2CNT =
                    BGCNT_SCREENBASE((this->field_C0[2] >> 11) & 0x1F) | BGCNT_PRIORITY(2);
                this->field_A2 = 0x3D40;
            } else {
                this->field_A2 = 0x3940;
            }
            this->state = 10;
            break;
        }
        case 10:
            if (byte_3000C80 == 0) {
                this->field_67 = 1;
                this->field_68 = 0;
                this->field_BC = 0;
                this->state = 11;
            }
            break;
        case 11:
            if (this->field_69 != 1) {
                sub_812A8E0();
            }
            this->state = 12;
            break;
        case 12:
            if (!sub_812A888()) {
                this->state = 13;
            }
            break;
        case 13: {
            u8 result = sub_8128D74();

            if (result == 1) {
                this->state = 18;
            } else if (result == 2) {
                this->state = 14;
            }
            break;
        }
        case 14:
            if (this->field_B3 != 2) {
                break;
            }
            sub_812A42C();
            if (this->field_A4 == 0) {
                if (this->field_B7 != 1) {
                    break;
                }
                if (this->arrows[0]->field_12_3) {
                    sub_8125220(this->field_62, &this->field_63, 0xFF);
                    this->state = 18;
                    break;
                }
                if (this->arrows[0]->field_23 == 9 && this->field_B1 == 0) {
                    play_sfx_80195B4(0xA2, -1);
                    this->field_B1 = 1;
                    if (this->field_B0 & 1) {
                        if (this->field_AF & 2) {
                            BUFFER_REG_BG2CNT =
                                BGCNT_SCREENBASE(this->field_C0[2] >> 11) | BGCNT_PRIORITY(2);
                            this->field_A2 = 0x1D40;
                            BUFFER_REG_DISPCNT = this->field_A2;
                        } else {
                            this->field_A2 = 0x1940;
                            BUFFER_REG_DISPCNT = this->field_A2;
                        }
                        this->field_B0 = 0;
                    } else {
                        if (this->field_AF & 2) {
                            BUFFER_REG_BG2CNT =
                                BGCNT_SCREENBASE(this->field_C0[2] >> 11) | BGCNT_PRIORITY(2);
                            this->field_A2 = 0x1D40;
                            BUFFER_REG_DISPCNT = this->field_A2;
                        } else {
                            this->field_A2 = 0x1940;
                            BUFFER_REG_DISPCNT = this->field_A2;
                        }
                        this->fileSprites[0]->yPosition = 0xB4;
                        this->fileSprites[1]->yPosition = 0xB4;
                    }
                    this->currentSprites[0]->yPosition = 0x68;
                    this->currentSprites[1]->yPosition = 0x68;
                    this->field_67 = 1;
                    this->field_68 = 0;
                    this->field_BC = 0;
                    break;
                }
                if (this->arrows[0]->field_12_4) {
                    int i;

                    gGameState.field_88C_0 = 1;
                    gGameState.field_88A_5 = 1;
                    gGameState.field_88A_3 = 1;
                    for (i = 0; i < 5; i++) {
                        this->arrows[i]->field_12_4 = 0;
                        this->arrows[i]->field_12_1 = 1;
                    }
                }
            } else if (this->field_A4 == 0xFF) {
                if (this->field_B2 == 0) {
                    break;
                }
                this->tsdr->update();
                sub_8017E34();
                this->field_BA = sub_8123DC4(this->field_BA, 8);
                if (this->field_BA == 0xFFFF) {
                    sub_819A43C();
                    this->save->slots[stru_3000D40.slot].field_0 = 0xFF;
                    gGameState.field_88A_5 = 1;
                    gGameState.field_88A_3 = 1;
                    this->field_67 = 1;
                    this->field_68 = 0;
                    this->field_BC = 0;
                    this->field_A4 = 0;
                    BUFFER_REG_WIN0H = 0;
                    this->state = 15;
                } else if (this->field_BA == (stru_3000D40.slot + 1) * 223 + 2) {
                    sub_819A43C();
                    this->field_A4 = 0;
                }
            } else if (++this->field_A4 > 42) {
                this->field_A4 = 0xFF;
                sub_80196E0();
                gGameState.field_88C_0 = 0;
            }
            break;
        case 15:
            if (this->field_3C->yPosition < 0xC0) {
                this->field_3C->yPosition += 4;
            }
            if (this->field_40->yPosition < 0xC0) {
                this->field_40->yPosition += 4;
            }
            if (this->field_44->yPosition < 0xC0) {
                this->field_44->yPosition += 4;
            }
            if (this->field_A4 == 0) {
                gGameState.field_88C_0 = 1;
            } else if (this->field_A4 == 10) {
                sub_8125220(this->field_62, &this->field_63, 0x7F);
            }
            if (++this->field_A4 > 180 && (this->field_8C->field_2 & 3)) {
                this->field_AD = 0;
                this->state = 18;
            }
            break;
        case 18:
            if ((this->field_AD & 0x7F) == 1) {
                sub_812A8AC(0xFFFF);
            } else {
                sub_812A8AC(0);
            }
            this->state = 19;
            break;
        case 19: {
            u8 option;

            if (sub_812A888()) {
                break;
            }
            option = this->field_AD & 0x7F;
            *(u16*)0x2000080 = 0;
            gGameState.field_2 = 1;
            gGameState.field_3C.field_3C_0 = this->field_A6;
            this->field_8C->field_8 = this->field_A8;
            this->field_8C->field_9 = this->field_A9;
            dword_3000C78 = sub_800063C;
            delete this;
            if (option == 1) {
                reset_game_80189C4();
            } else {
                parent->enable();
            }
            break;
        }
    }
}

// Regalloc differs in C++ (spilled locals land in different stack slots); the C version matched.
// The include is agbcc's output for that C version.
// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm(".include \"asm/nonmatching/sub_8128D74.s\"");
#else
u8 SaveMenu::sub_8128D74() {
    struct Process* parent = this->parentProcess;

    if (this->field_AD & 0x80) {
        if (this->field_8C->field_2 & 1) {
            u32** font;
            u8* name;

            if (this->field_AE != 0) {
                play_sfx_80195B4(0x61, -1);
                this->field_AD &= 0x7F;
                this->cursor->yPosition = this->field_AA[this->field_AD];
                this->field_67 = 1;
                this->field_68 = 0;
                this->field_BC = 0;
                return 0;
            }
            font = sub_81980C8(3);
            if ((this->save->field_6 >> stru_3000D40.slot) & 1) {
                this->field_BA = stru_3000D40.slot * 223 + 2;
            }
            sub_8025F28(parent);
            sub_8123BA8(0);
            gGameState.field_88A_5 = 0;
            gGameState.field_88A_3 = 0;
            if (this->save->slots[stru_3000D40.slot]
                    .data.field_4[this->save->slots[stru_3000D40.slot].data.field_0_3]
                    .field_0
                == 0x113) {
                this->field_AF |= 2;
            }
            name = sub_8123308(this->save->slots[stru_3000D40.slot]
                                   .data.field_4[this->save->slots[stru_3000D40.slot].data.field_0_3]
                                   .field_0);
            this->field_B6 = 0;
            this->field_B5 = 0;
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
                    }
                    if (k == 0 && c == 0x20) {
                        this->field_B6 += 2;
                    } else {
                        this->field_B6 =
                            this->field_B6 + (((font[k][(c / 8) + 1] >> ((c & 7) * 4)) & 0xF) + 1);
                    }
                }
                this->field_B5 = this->field_B6;
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
                    }
                    if (k == 0 && c == 0x20) {
                        this->field_B5 += 2;
                    } else {
                        this->field_B5 =
                            this->field_B5 + (((font[k][(c / 8) + 1] >> ((c & 7) * 4)) & 0xF) + 1);
                    }
                }
                this->field_B5 += 2;
            }
            if (!(this->field_B0 & 1)) {
                u8* name1 = sub_8123308(this->entry.field_12);
                name =
                    sub_8123308(this->save->slots[stru_3000D40.slot]
                                    .data.field_4[this->save->slots[stru_3000D40.slot].data.field_0_3]
                                    .field_0);

                if (name1 && name) {
                    if (name1 == name) {
                        this->field_B0 = 0;
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
                                this->field_B0 |= 2;
                                break;
                            }
                            if (c1 != c0) {
                                this->field_B0 |= 4;
                                break;
                            }
                        }
                    }
                }
            }
            this->field_AE = 0x80;
            this->field_A4 = 1;
            this->field_62 = sub_81252BC(&this->field_63, 0x1E);
            sprite_hide_8021F20(this->cursor);
            this->field_B3 = 2;
            this->field_67 = 1;
            this->field_68 = 1;
            this->field_BC = 0;
            if (this->field_B0 & 1) {
                if (this->entry.field_12 == 0xFFFF) {
                    this->entry.field_12 = 0;
                    BUFFER_REG_WIN0H = (this->field_B4 + 0x20) | 0x2000;
                    BUFFER_REG_WIN0V = 0x8090;
                    REG_WIN0H = (this->field_B4 + 0x20) | 0x2000;
                    REG_WIN0V = 0x8090;
                } else {
                    BUFFER_REG_WIN0H = (this->field_B5 + 0x20) | 0x2000;
                    BUFFER_REG_WIN0V = 0x8090;
                    REG_WIN0H = (this->field_B5 + 0x20) | 0x2000;
                    REG_WIN0V = 0x8090;
                }
                BUFFER_REG_WININ = 0x1E;
                BUFFER_REG_WINOUT = 0x1F;
                this->field_B8 = 1;
                this->field_B2 = 1;
            } else if (this->field_B0 & 6) {
                BUFFER_REG_WIN0H = ((this->field_B4 + 0x20) << 8) | (this->field_B4 + 0x20);
                BUFFER_REG_WIN0V = 0x8090;
                BUFFER_REG_WININ = 0x1E;
                BUFFER_REG_WINOUT = 0x1F;
                this->field_40->xPosition = this->field_B4 + 0x20;
                this->field_B8 = 5;
            } else {
                this->field_3C->xPosition = this->field_B5 + 0x28;
                this->field_B8 = 1;
                this->field_B2 = 1;
            }
            play_sfx_80195B4(0x60, -1);
            return 2;
        } else if (this->field_8C->field_2 & 2) {
            play_sfx_80195B4(0x61, -1);
            this->field_AD &= 0x7F;
            this->cursor->yPosition = this->field_AA[this->field_AD];
            this->field_67 = 1;
            this->field_68 = 0;
            this->field_BC = 0;
        } else if (this->field_8C->field_2 & 0x40) {
            if (this->field_AE == 0) {
                this->field_AE = 1;
            } else {
                this->field_AE--;
            }
            this->cursor->yPosition = this->field_AE * 13 + 0x56;
            play_sfx_80195B4(0x5F, -1);
        } else if (this->field_8C->field_2 & 0x80) {
            if (this->field_AE == 1) {
                this->field_AE = 0;
            } else {
                this->field_AE++;
            }
            this->cursor->yPosition = this->field_AE * 13 + 0x56;
            play_sfx_80195B4(0x5F, -1);
        }
    } else {
        if (this->field_8C->field_2 & 2) {
            play_sfx_80195B4(0x61, -1);
            this->field_AD = 2;
            return 1;
        }
        if (this->field_8C->field_2 & 1) {
            if (this->field_AD == 2) {
                play_sfx_80195B4(0x61, -1);
                return 1;
            }
            this->field_AD |= 0x80;
            this->field_AE = 1;
            {
                struct Sprite* cursor = this->cursor;
                s16 y = 0x63;
                cursor->yPosition = y;
            }
            this->field_67 = 1;
            this->field_68 = 0;
            this->field_BC = 0;
            play_sfx_80195B4(0x60, -1);
        } else if (this->field_8C->field_2 & 0x40) {
            if (this->field_AD == 0) {
                this->field_AD = 2;
            } else {
                this->field_AD--;
            }
            this->cursor->yPosition = this->field_AA[this->field_AD];
            play_sfx_80195B4(0x5F, -1);
        } else if (this->field_8C->field_2 & 0x80) {
            if (this->field_AD == 2) {
                this->field_AD = 0;
            } else {
                this->field_AD++;
            }
            this->cursor->yPosition = this->field_AA[this->field_AD];
            play_sfx_80195B4(0x5F, -1);
        }
    }
    return 0;
}
#endif

void SaveMenu::sub_812936C() {
    struct struc_16* parent = (struct struc_16*)this->parentProcess;
    s32 arrowX[5] = { 0xC8, 0x78, 0xE8, 0x60, 0 };
    s32 arrowY[5] = { 0x80, 0x18, 0x88, 0x18, 0 };

    sub_8021574(5, 0x6003, 0, 0, 0, this->field_60, -1);

    this->cursor = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
    sub_801E150(this->cursor, 0, -1, 0, 0);
    sprite_show_8020CBC(this->cursor);
    this->cursor->xPosition = 0x24;
    this->cursor->yPosition = this->field_AA[this->field_AD];
    this->cursor->field_1F_0 = 0;
    this->cursor->field_1F_2 = 0;
    this->cursor->field_1F_4 = 0;
    this->cursor->field_1F_6 = 0;
    this->cursor->field_E = 0xEFFF;
    this->cursor->field_10_1 = 0;
    this->cursor->field_29_1 = 0;
    this->cursor->field_29_5 = 0;

    this->field_3C = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
    sub_801E150(this->field_3C, 1, -1, 0, 0);
    sprite_show_8020CBC(this->field_3C);
    this->field_3C->xPosition = 0x20;
    this->field_3C->yPosition = 0xC0;
    this->field_3C->field_E = 0xEFFF;
    this->field_3C->field_1F_0 = 0;
    this->field_3C->field_1F_2 = 0;
    this->field_3C->field_1F_4 = 0;
    this->field_3C->field_1F_6 = 0;
    this->field_3C->field_10_1 = 0;
    this->field_3C->field_29_1 = 0;
    this->field_3C->field_29_5 = 0;
    this->field_3C->field_12_4 = 1;

    this->field_40 = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
    sub_801E150(this->field_40, 7, -1, 0, 0);
    sprite_show_8020CBC(this->field_40);
    this->field_40->xPosition = 0x20;
    this->field_40->yPosition = 0xC0;
    this->field_40->field_E = 0xEFFF;
    this->field_40->field_1F_0 = 0;
    this->field_40->field_1F_2 = 0;
    this->field_40->field_1F_4 = 0;
    this->field_40->field_1F_6 = 0;
    this->field_40->field_10_1 = 0;
    this->field_40->field_29_1 = 0;
    this->field_40->field_29_5 = 0;
    this->field_40->field_12_4 = 1;

    this->field_44 = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
    sub_801E150(this->field_44, 8, -1, 0, 0);
    sprite_show_8020CBC(this->field_44);
    this->field_44->xPosition = 0x20;
    this->field_44->yPosition = 0xC0;
    this->field_44->field_E = 0xEFFF;
    this->field_44->field_1F_0 = 0;
    this->field_44->field_1F_2 = 0;
    this->field_44->field_1F_4 = 0;
    this->field_44->field_1F_6 = 0;
    this->field_44->field_10_1 = 0;
    this->field_44->field_29_1 = 0;
    this->field_44->field_29_5 = 0;
    this->field_44->field_12_4 = 1;

    {
        int i;

        {
            int i;

            for (i = 0; i < 4; i++) {
                this->arrows[i] = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
                sub_801E150(this->arrows[i], i + 2, -1, 0, 0);
                sprite_show_8020CBC(this->arrows[i]);
                this->arrows[i]->xPosition = arrowX[i];
                this->arrows[i]->yPosition = arrowY[i];
                this->arrows[i]->field_E = 0xEFFF;
                if (i == 0) {
                    this->arrows[0]->field_1F_0 = 0;
                    this->arrows[0]->field_1F_2 = 0;
                    this->arrows[0]->field_1F_4 = 0;
                    this->arrows[0]->field_1F_6 = 0;
                } else {
                    this->arrows[i]->field_1F_0 = 1;
                    this->arrows[i]->field_1F_2 = 1;
                    this->arrows[i]->field_1F_4 = 1;
                    this->arrows[i]->field_1F_6 = 1;
                }
                this->arrows[i]->field_10_1 = 0;
                this->arrows[i]->field_29_1 = 0;
                this->arrows[i]->field_29_5 = 0;
                this->arrows[i]->field_12_4 = 1;
                this->arrows[i]->field_12_1 = 1;
            }
        }
    }

    //! Possible fake match: `!(x & 1)` gives different code in C++ (bool), so `== 0`.
    if ((this->field_B0 & 1) == 0) {
        {
            int i;

            for (i = 0; i < 2; i++) {
                if (this->entry.items[i].id != 0
                    && (this->entry.field_18 == 2 || this->entry.field_18 == i)) {
                    sub_8021574(0, sub_8021EA8(0, this->entry.items[i].id)->field_0_0, 0, 0, 0,
                                this->field_60, -1);
                    this->fileSprites[i] = sub_8020DD0(0, this->entry.items[i].id, 1, -1, -1, -1, -1);
                    sub_801E150(this->fileSprites[i], this->entry.items[i].field_2, -1, 0, 0);
                    sub_801E150(this->fileSprites[i], this->entry.items[i].field_2,
                                this->entry.items[i].field_3, 0, 0);
                    sprite_show_8020CBC(this->fileSprites[i]);
                    this->fileSprites[i]->xPosition = 0xBC - i * 40;
                    this->fileSprites[i]->yPosition = 0x68;
                    this->fileSprites[i]->field_E = 0xEFFF;
                    this->fileSprites[i]->field_1F_0 = 3;
                    this->fileSprites[i]->field_1F_2 = 3;
                    this->fileSprites[i]->field_1F_4 = 3;
                    this->fileSprites[i]->field_1F_6 = 3;
                    this->fileSprites[i]->field_10_1 = 0;
                    this->fileSprites[i]->field_29_1 = 0;
                    this->fileSprites[i]->field_29_5 = 0;
                    this->fileSprites[i]->field_12_4 = 1;
                    this->fileSprites[i]->field_12_1 = 1;
                } else {
                    sub_8021574(5, 0x6002, 0, 0, 0, this->field_60, -1);
                    this->fileSprites[i] = sub_8020DD0(5, 0x6006, 0, -1, -1, -1, -1);
                    sub_801E150(this->fileSprites[i], i, -1, 0, 0);
                    sprite_show_8020CBC(this->fileSprites[i]);
                    this->fileSprites[i]->xPosition = 0xBC - i * 40;
                    this->fileSprites[i]->yPosition = 0x68;
                    this->fileSprites[i]->field_E = 0xEFFF;
                    this->fileSprites[i]->field_1F_0 = 3;
                    this->fileSprites[i]->field_1F_2 = 3;
                    this->fileSprites[i]->field_1F_4 = 3;
                    this->fileSprites[i]->field_1F_6 = 3;
                    this->fileSprites[i]->field_10_1 = 0;
                    this->fileSprites[i]->field_29_1 = 0;
                    this->fileSprites[i]->field_29_5 = 0;
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
                    sub_8021574(5, 0x6002, 0, 0, 0, this->field_60, -1);
                    this->currentSprites[i] = sub_8020DD0(5, 0x6006, 0, -1, -1, -1, -1);
                    sub_801E150(this->currentSprites[i], i, -1, 0, 0);
                    sprite_show_8020CBC(this->currentSprites[i]);
                    this->currentSprites[i]->xPosition = 0xBC - i * 40;
                    this->currentSprites[i]->yPosition = 0xB4;
                    this->currentSprites[i]->field_E = 0xEFFF;
                    this->currentSprites[i]->field_1F_0 = 3;
                    this->currentSprites[i]->field_1F_2 = 3;
                    this->currentSprites[i]->field_1F_4 = 3;
                    this->currentSprites[i]->field_1F_6 = 3;
                    this->currentSprites[i]->field_10_1 = 0;
                    this->currentSprites[i]->field_29_1 = 0;
                    this->currentSprites[i]->field_29_5 = 0;
                } else {
                    sub_8021574(0, sub_8021EA8(0, dword_3000FF8[i].id)->field_0_0, 0, 0, 0,
                                this->field_60, -1);
                    this->currentSprites[i] = sub_8020DD0(0, dword_3000FF8[i].id, 1, -1, -1, -1, -1);
                    sub_801E150(this->currentSprites[i], dword_3000FF8[i].field_2, -1, 0, 0);
                    sub_801E150(this->currentSprites[i], dword_3000FF8[i].field_2,
                                dword_3000FF8[i].field_3, 0, 0);
                    sprite_show_8020CBC(this->currentSprites[i]);
                    this->currentSprites[i]->xPosition = 0xBC - i * 40;
                    this->currentSprites[i]->yPosition = 0xB4;
                    this->currentSprites[i]->field_E = 0xEFFF;
                    this->currentSprites[i]->field_1F_0 = 3;
                    this->currentSprites[i]->field_1F_2 = 3;
                    this->currentSprites[i]->field_1F_4 = 3;
                    this->currentSprites[i]->field_1F_6 = 3;
                    this->currentSprites[i]->field_10_1 = 0;
                    this->currentSprites[i]->field_29_1 = 0;
                    this->currentSprites[i]->field_29_5 = 0;
                    this->currentSprites[i]->field_12_4 = 1;
                    this->currentSprites[i]->field_12_1 = 1;
                }
            }
        }
    }

    sub_8021F7C();
    sub_8020A78();
    dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 0xA14);
}

void* SaveMenu::sub_8129B4C(void* buf) {
    u8 hours;
    u8 minutes;
    u32 time;

    if (this->field_B1) {
        time = ((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
            this->save->slots[stru_3000D40.slot].data.field_6EC, 216000);
        if (time > 99) {
            minutes = 59;
            hours = 99;
        } else {
            hours = time;
            time = ((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                this->save->slots[stru_3000D40.slot].data.field_6EC, 3600);
            minutes = ((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_8198350 - (u8*)&loc_8198220)))(time, 60);
        }
        buf =
            sub_8121F1C(buf, hours, minutes, this->save->slots[stru_3000D40.slot].data.entry.field_10);
        buf = sub_8122098(buf, this->save->slots[stru_3000D40.slot].data.entry.items[0].field_4,
                          this->save->slots[stru_3000D40.slot].data.entry.items[1].field_4);
    } else {
        buf = sub_8121F1C(buf, this->entry.field_16, this->entry.field_17, this->entry.field_10);
        buf = sub_8122098(buf, this->entry.items[0].field_4, this->entry.items[1].field_4);
    }
    return buf;
}

#define SAVE_TMEV_BASE(menu) (*(u32*)((menu)->tmev->field_28->field_4 + 0x194))

#define IWRAM_COPY ((void (*)(void*, void*, int))((u8*)dword_3001034 + (loc_8198154 - loc_81980D8)))

void SaveMenu::sub_8129C98() {
    u8* name;
    u8** texts;

    if (this->field_67 == 1) {
        name = NULL;
        texts = off_83BADC0[gGameState.field_8C0];
        if (this->field_68 != 2) {
            if (this->field_BC == 0) {
                dword_3001034(0, this->field_120, 0xF20);
            }
            if (this->field_BA == 0xFFFF) {
                int n;

                sub_8199D78(&this->field_CC, this->field_120, 11, 0, 0, 0, 0, 2, 9, 4);
                sub_8199D5C(&this->field_CC, 0, 11, (int)get_text(texts, 7));
                for (n = 0; get_text(texts, 7)[n] != 0 || get_text(texts, 7)[n - 1] == 0xFF; n++) {
                    sub_8199624(&this->field_CC);
                }
            } else if (this->field_AE & 0x80) {
                if (this->field_B3 == 2 && this->field_A4 == 0) {
                    int n;

                    sub_8199D78(&this->field_CC, this->field_120, 11, 0, 0, 0, 0, 2, 5, 4);
                    sub_8199D5C(&this->field_CC, 0, 11, (int)get_text(texts, 6));
                    for (n = 0; get_text(texts, 6)[n] != 0 || get_text(texts, 6)[n - 1] == 0xFF; n++) {
                        sub_8199624(&this->field_CC);
                    }
                } else {
                    int lines = 0;
                    int pos;

                    if (this->field_BC == 0) {
                        sub_8199D78(&this->field_CC, this->field_120, 11, 0, 0, 0, 0, 2, 5, 4);
                        sub_8199D5C(&this->field_CC, 0, 11, (int)get_text(texts, 5));
                    }
                    for (pos = this->field_BC;; pos++, this->field_BC++) {
                        if (get_text(texts, 5)[pos] == 0 && get_text(texts, 5)[pos - 1] != 0xFF) {
                            this->field_BC = 0;
                            break;
                        }
                        if (get_text(texts, 5)[pos] == 0 && get_text(texts, 5)[pos - 1] == 0xFF
                            && ++lines == 3) {
                            break;
                        }
                        sub_8199624(&this->field_CC);
                    }
                }
            } else if (this->field_AD & 0x80) {
                int n;

                sub_8199D78(&this->field_CC, this->field_120, 11, 0, 0, 0, 0, 2, 5, 4);
                sub_8199D5C(&this->field_CC, 0, 11,
                            (int)get_text_indexed(texts, (this->field_AD & 0x7F) + 3));
                for (n = 0; get_text_indexed(texts, (this->field_AD & 0x7F) + 3)[n] != 0
                            || get_text_indexed(texts, (this->field_AD & 0x7F) + 3)[n - 1] == 0xFF;
                     n++) {
                    sub_8199624(&this->field_CC);
                }
                sub_8083860(this->field_120, 11, 0, 0x32, texts[8], 5);
                sub_8083860(this->field_120, 11, 0, 0x3F, texts[9], 5);
            } else {
                int lines = 0;
                int n;
                int i;

                sub_8199D78(&this->field_CC, this->field_120, 11, 0, 0, 0, 0, 2, 5, 4);
                sub_8199D5C(&this->field_CC, 0, 11, (int)get_text(texts, 0));
                for (n = 0; get_text(texts, 0)[n] != 0 || get_text(texts, 0)[n - 1] == 0xFF; n++) {
                    if (get_text(texts, 0)[n] == 0 && get_text(texts, 0)[n - 1] == 0xFF) {
                        lines++;
                    }
                    sub_8199624(&this->field_CC);
                }
                sub_8199D78(&this->field_E0, this->field_120, 11, 0, 0, 0, 0, 2, 5, 4);
                sub_8199D5C(&this->field_E0, 0, lines * 13 + 0x18, (int)get_text(texts, 1));
                for (i = 0; get_text(texts, 1)[i] != 0 || get_text(texts, 1)[i - 1] == 0xFF; i++) {
                    if (get_text(texts, 1)[i] == 0 && get_text(texts, 1)[i - 1] == 0xFF) {
                        lines++;
                    }
                    sub_8199624(&this->field_E0);
                }
                sub_8199D78(&this->field_F4, this->field_120, 11, 0, 0, 0, 0, 2, 5, 4);
                sub_8199D5C(&this->field_F4, 0, lines * 13 + 0x25, (int)get_text(texts, 2));
                for (i = 0; get_text(texts, 2)[i] != 0 || get_text(texts, 2)[i - 1] == 0xFF; i++) {
                    if (get_text(texts, 2)[i] == 0 && get_text(texts, 2)[i - 1] == 0xFF) {
                        lines++;
                    }
                    sub_8199624(&this->field_F4);
                }
            }

            if (this->field_BC == 0) {
                IWRAM_COPY(this->field_120, (u8*)this->field_120 - SAVE_TMEV_BASE(this), 0xF20);
            }
        }
        if (this->field_68 != 1) {
            if (this->field_BE) {
                BUFFER_REG_WIN0H = this->field_BE;
                this->field_BE = 0;
                this->field_B2 = 1;
            }
            dword_3001034(0, this->field_124, 0x8A0);
            if (this->field_BA == 0xFFFF || this->entry.field_12 == 0xFFFF) {
                name = get_text(texts, 10);
            } else if (this->field_B8 == 1 || this->field_B7) {
                name =
                    sub_8123308(this->save->slots[stru_3000D40.slot]
                                    .data.field_4[this->save->slots[stru_3000D40.slot].data.field_0_3]
                                    .field_0);
                this->field_B2 = 1;
            //! Possible fake match: `!(x & 1)` gives different code in C++ (bool), so `== 0`.
            } else if ((this->field_B0 & 1) == 0) {
                name = sub_8123308(this->entry.field_12);
            }
            if (name) {
                sub_8199D78(&this->field_108, this->field_124, 0x17, 0, 0, 0, 0, 2, 11, 4);
                sub_8199D5C(&this->field_108, 0, 8, (int)name);
                do {
                    if (this->field_108.field_8[0] == 0xFF && this->field_108.field_8[1] == 0) {
                        this->field_108.field_8 += 2;
                    }
                } while (sub_8199624(&this->field_108) != 0);
            }
            IWRAM_COPY(this->field_124, (u8*)this->field_124 - SAVE_TMEV_BASE(this), 0x8A0);
            this->field_68 = 0;
        }
    } else if (this->field_67 == 2) {
        dword_3001034(0, this->field_120, 0xF20);
        sub_80E9384(this->field_6C, (int)this->field_120 - SAVE_TMEV_BASE(this));
        dword_3001034(0, this->field_124, 0x8A0);
        sub_80E9384(this->field_6C, (int)this->field_124 - SAVE_TMEV_BASE(this));
        dword_3001034(0, this->field_C8, 0x800);
    } else if (this->field_67 == 3) {
        this->field_120 = (u8*)sub_80E9414(this->field_6C, 0xF20) + SAVE_TMEV_BASE(this);
        dword_3001034(0, this->field_120, 0xF20);
        sub_8127DB4(this->field_C8, 0x20, 0x20, 11, 11,
                    sub_8127E38((u32)this->field_120 - SAVE_TMEV_BASE(this)) | 0xE000, 1);
        this->field_124 = (u8*)sub_80E9414(this->field_6C, 0x8A0) + SAVE_TMEV_BASE(this);
        dword_3001034(0, this->field_124, 0x8A0);
        sub_8127DB4(this->field_C8, 0x20, 0x78, 0x17, 3,
                    sub_8127E38((u32)this->field_124 - SAVE_TMEV_BASE(this)) | 0xE000, 1);
    }
    if (this->field_BC == 0) {
        if (this->field_68 == 0) {
            this->field_67 = 0;
        } else {
            this->field_68 = 2;
        }
    }
    IWRAM_COPY(this->field_C8, (void*)0x600D000, 0x800);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812A42C.s\"");
#else
void SaveMenu::sub_812A42C() {
    switch (this->field_B8) {
        case 1:
            if (this->field_3C->yPosition > 0x88) {
                this->field_3C->yPosition -= 4;
                if (this->field_3C->yPosition > 0x88) {
                    break;
                }
            }
            if (this->field_B0) {
                this->field_B8 = 2;
                this->field_3C->yPosition = 0x88;
                this->field_3C->field_12_4 = 0;
            } else {
                this->field_B7 = 1;
                this->field_B8 = 3;
                this->field_3C->yPosition = 0xC0;
                this->field_3C->field_12_4 = 1;
                this->field_44->xPosition = this->field_3C->xPosition;
                this->field_44->yPosition = 0x88;
                this->field_44->field_12_4 = 0;
            }
            break;
        case 2:
            if (this->field_3C->xPosition < this->field_B5 + 0x28) {
                this->field_3C->xPosition++;
                if (this->field_3C->xPosition < this->field_B5 + 0x20) {
                    BUFFER_REG_WIN0H = (this->field_3C->xPosition << 8) | (this->field_B5 + 0x20);
                } else {
                    BUFFER_REG_WIN0H = ((this->field_B5 + 0x20) << 8) | (this->field_B5 + 0x20);
                }
                break;
            }
            this->field_B7 = 1;
            this->field_3C->xPosition = this->field_B5 + 0x28;
            if (this->field_A4) {
                this->field_B8 = 3;
                this->field_3C->yPosition = 0xC0;
                this->field_3C->field_12_4 = 1;
                this->field_44->xPosition = this->field_3C->xPosition;
                this->field_44->yPosition = 0x88;
                this->field_44->field_12_4 = 0;
            } else {
                this->field_3C->yPosition = 0xC0;
                this->field_3C->field_12_4 = 1;
                this->field_44->xPosition = this->field_3C->xPosition;
                this->field_44->yPosition = 0x88;
                this->field_44->field_12_4 = 1;
                this->field_B8 = 4;
            }
            break;
        case 3:
            if (this->field_A4 == 0) {
                this->field_B8 = 4;
                this->field_44->field_12_4 = 1;
            }
            break;
        case 4:
            if (this->field_44->yPosition < 0xC0) {
                this->field_44->yPosition += 4;
            } else {
                this->field_B8 = 4;
                this->field_44->yPosition = 0xC0;
            }
            break;
        case 5:
            if (this->field_40->yPosition > 0x88) {
                this->field_40->yPosition -= 4;
                if (this->field_40->yPosition > 0x88) {
                    break;
                }
            }
            this->field_B8 = 6;
            this->field_40->yPosition = 0x88;
            this->field_40->field_12_4 = 0;
            break;
        case 6:
            if (this->field_40->field_2C)
                ;
            if (this->field_B0 & 2) {
                if (this->field_B6 + 0x20 < this->field_40->xPosition) {
                    this->field_40->xPosition--;
                    BUFFER_REG_WIN0H = (this->field_40->xPosition << 8) | (this->field_B4 + 0x20);
                } else if (this->field_40->xPosition <= this->field_B6 + 0x20) {
                    this->field_B8 = 7;
                    this->field_40->xPosition = this->field_B6 + 0x20;
                    this->field_40->field_12_4 = 1;
                }
            } else if (this->field_B0 & 4) {
                if (this->field_40->xPosition > 0x20) {
                    this->field_40->xPosition--;
                    BUFFER_REG_WIN0H = (this->field_40->xPosition << 8) | (this->field_B4 + 0x20);
                } else {
                    this->field_B8 = 7;
                    this->field_40->xPosition = 0x20;
                    this->field_40->field_12_4 = 1;
                }
            }
            break;
        case 7:
            if (this->field_40->yPosition < 0xC0) {
                this->field_40->yPosition += 4;
                if (this->field_40->yPosition < 0xC0) {
                    break;
                }
            }
            this->field_3C->xPosition = this->field_40->xPosition;
            this->field_40->yPosition = 0xC0;
            if (this->field_B0 & 2) {
                if (this->field_B4 < this->field_B5) {
                    REG_WIN0H = ((this->field_B6 + 0x20) << 8) | (this->field_B5 + 0x20);
                    BUFFER_REG_WIN0H = ((this->field_B6 + 0x20) << 8) | (this->field_B5 + 0x20);
                } else {
                    REG_WIN0H = ((this->field_B6 + 0x20) << 8) | (this->field_B4 + 0x20);
                    BUFFER_REG_WIN0H = ((this->field_B6 + 0x20) << 8) | (this->field_B4 + 0x20);
                }
            } else if (this->field_B0 & 4) {
                if (this->field_B4 < this->field_B5) {
                    REG_WIN0H = (0x20 << 8) | (this->field_B5 + 0x20);
                    BUFFER_REG_WIN0H = (0x20 << 8) | (this->field_B5 + 0x20);
                } else {
                    REG_WIN0H = (0x20 << 8) | (this->field_B4 + 0x20);
                    BUFFER_REG_WIN0H = (0x20 << 8) | (this->field_B4 + 0x20);
                }
            }
        case 8:
            this->field_B8 = 1;
            this->field_67 = 1;
            this->field_68 = 1;
            this->field_BC = 0;
            break;
    }
}
#endif

void SaveMenuRenderer::update() {
    SaveMenu* menu = (SaveMenu*)parentProcess;
    int buf = gGameState.field_880;

    if (menu->state > 4) {
        if (menu->field_67) {
            menu->sub_8129C98();
        }
        if (gGameState.field_888_4 == 0) {
            //! Possible fake match: `!(x & 1)` gives different code in C++ (bool), so `== 0`.
            if ((menu->field_B0 & 1) == 0) {
                buf = (int)menu->sub_812A930((void*)buf);
            }
            sub_8021F7C();
            sub_8020A78();
            dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 0xA14);
            buf = dword_3000D4C(stru_203FFB8.field_3C, buf);
            buf = (int)menu->sub_8129B4C((void*)buf);
            gGameState.field_880 = buf;
        }
    }
}

u8 SaveMenu::sub_812A888() {
    u8 busy = sub_8116620(this->fade);

    if (busy == 0) {
        this->field_69 = busy;
        return 0;
    }
    return 1;
}

void SaveMenu::sub_812A8AC(u16 color) {
    sub_81151E4(this->fade, 4, color, 8, 0xFFFF, 0xFFFF, 0, 0);
    this->field_69 = 1;
}

void SaveMenu::sub_812A8E0() {
    gGameState.field_884 = 0xFFFFFFFF;
    sub_81151E4(this->fade, 0, 0, 8, 0xFFFF, 0xFFFF, 0, 0);
    BUFFER_REG_DISPCNT = this->field_A2;
    this->field_69 = 1;
}
