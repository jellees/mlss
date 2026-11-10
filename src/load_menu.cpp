#pragma implementation "load_menu.h"

#include "global.h"
#include "common.h"
#include "heap.h"
#include "game_mode.h"
#include "load_menu.h"
#include "title_screen.h"

LoadMenu::LoadMenu(u8 priority, char* label, u16 arg3) : Process(priority, label) {
    this->field_E4 = arg3;

    this->field_50 = &gGameState.field_3C;
    this->field_F7 = this->field_50->field_8;
    this->field_F8 = this->field_50->field_9;
    this->field_50->field_8 = 10;
    this->field_50->field_9 = 8;

    //! Possible fake match. These could be remnants of debug lines.
    //! E.g. if (this->tld) DEBUG_PRINT("");
    if (this->tld)
        ;
    this->tld = new (0, "TLD", 0) LoadMenuRenderer(8, "TLD");
    if (this->fade)
        ;
    this->fade = init_ybpa_process_8114B4C(operator new(0x5C, 0, "FADE", 1), 8, "FADE", 8);
    this->fade->parentProcess = this->tld->parentProcess = this;

    sub_8017E34();
    gGameState.field_888_5 = 1;
    gGameState.field_888_6 = 1;
    BUFFER_REG_DISPCNT = 0;
}

LoadMenu::~LoadMenu() {
    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_WININ = 0;
    BUFFER_REG_WINOUT = 0;
    BUFFER_REG_BLDCNT = 0;
    gGameState.field_888_5 = 0;
    gGameState.field_888_3 = 0;
    gGameState.field_888_6 = 0;

    if (this->field_160) {
        sub_80FAFD8(this->field_160, 3);
    }

    sub_8021FD4();

    if (this->field_54) {
        operator delete[](this->field_54);
    }

    if (this->fade) {
        sub_81166AC(this->fade, 3);
    }

    if (this->tld) {
        delete this->tld;
    }
}

// Look at this, has possible modulo and division functions in here.
#define VRAM_ALIGN_800(offset)                                                                         \
    if (((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_8198350 - (u8*)&loc_8198220)))(offset,    \
                                                                                            0x800)) {  \
        offset = (((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))( \
                      offset, 0x800)                                                                   \
                  << 11)                                                                               \
                 + 0x800;                                                                              \
    }

void LoadMenu::update() {
    int i;
    u8 result;

    switch (this->state) {
        case 0:
            this->save = dword_3000FFC;
            this->field_F9 = 0;
            this->field_FA = 0;
            this->field_FB = 0;
            this->field_EA = 0;
            this->field_F0 = 0;
            this->field_EC = 0;
            this->field_EE = 0;
            this->field_F2 = 0;
            this->field_F1 = this->save->field_6;
            sub_812791C();
            this->field_54 = operator new[](0x800, 1, "MMSB", 1);
            this->state = 1;
            break;

        case 1:
            dword_3000C78 = 0;
            gGameState.field_884 = 0;
            this->field_C8 = sub_8127ECC(6, 0);
            this->field_D0 = sub_80198B0((int*)this->field_C8);
            this->field_CC = alloc_heap_8018CEC(1, this->field_D0, "WORK");
            dword_3000C84((int*)this->field_C8, this->field_CC);
            this->state = 2;
            break;

        case 2:
            sub_81229F0(this->field_CC);
            CpuCopy32(this->field_CC, (void*)0x6010400, this->field_D0);
            free_heap_memory_8018C68(this->field_CC);
            this->state = 3;
            break;

        case 3:
            sub_8020994(this->field_D0 + 0x400, 0, 0, 0);
            sub_80213A0(5, 0x6005, -1, 1);
            this->state = 4;
            break;

        case 4:
            sub_8126C3C();
            if (this->field_F2 == 0) {
                this->state = 6;
            }
            break;

        case 6:
            this->field_D8 = 0;
            BUFFER_REG_BG0VOFS = 0;
            BUFFER_REG_BG0HOFS = 0;
            BUFFER_REG_BG1HOFS = 0;
            BUFFER_REG_BG1VOFS = 0;
            BUFFER_REG_BG2HOFS = BUFFER_REG_BG2VOFS = 0;
            BUFFER_REG_BG3VOFS = 0;
            BUFFER_REG_BG3HOFS = 0;
            this->field_C8 = sub_8127ECC(0x25, 0);
            dword_3001034(0, (void*)(VRAM + this->field_D8), 0x8000);
            this->field_D4 = sub_8127E50(this->field_C8, (void*)(VRAM + this->field_D8), 0);
            this->field_C8 = sub_8127ECC(gGameState.field_8C0 + 0x26, 0);
            sub_8127E50(this->field_C8, (void*)(VRAM + 0x1400 + this->field_D8), 0);
            this->field_D8 += this->field_D4;
            VRAM_ALIGN_800(this->field_D8);
            this->state = 8;
            break;

        case 8:
            this->field_C8 = sub_8127ECC(0x2F, 0);
            this->field_DA = this->field_D8;
            dword_3001034(0, (void*)(VRAM + this->field_D8), 0x800);
            this->field_D4 = sub_8127E50(this->field_C8, (void*)(VRAM + this->field_D8), 0);
            this->field_D8 += this->field_D4;
            VRAM_ALIGN_800(this->field_D8);

            this->field_C8 = sub_8127ECC(0x2E, 0);
            this->field_DC = this->field_D8;
            dword_3001034(0, (void*)(VRAM + this->field_D8), 0x800);
            this->field_D4 = sub_8127E50(this->field_C8, (void*)(VRAM + this->field_D8), 0);
            this->field_D8 += this->field_D4;
            VRAM_ALIGN_800(this->field_D8);

            this->field_C8 = sub_8127ECC(0x2E, 0);
            this->field_DE = this->field_D8;
            dword_3001034(0, (void*)(VRAM + this->field_D8), 0x800);
            this->field_D4 = sub_8127E50(this->field_C8, (void*)(VRAM + this->field_D8), 0);
            this->field_D8 += this->field_D4;
            VRAM_ALIGN_800(this->field_D8);

            sub_8127DB4((void*)(VRAM + this->field_DE), 0xA8, 0x40, 5, 7, 0, 0);
            this->state = 9;
            break;

        case 9:
            if (gGameState.field_888_1 == 0) {
                this->field_C8 = sub_8127ECC(0x2B, &this->field_D4);
            } else {
                this->field_C8 = sub_8127ECC(0x2C, &this->field_D4);
            }
            CpuCopy32(this->field_C8, (void*)0x2000080, this->field_D4);
            gGameState.field_2 = 0xFFFF;
            BUFFER_REG_BG0CNT = BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(26);
            BUFFER_REG_BG3CNT = BGCNT_SCREENBASE((this->field_DA >> 11) & 0x1F) | BGCNT_PRIORITY(2);
            BUFFER_REG_BG2CNT = BGCNT_SCREENBASE((this->field_DC >> 11) & 0x1F) | BGCNT_PRIORITY(2);
            //! Possible fake match: `!(x & 1)` gives different code in C++ (bool), so `== 0`.
            if ((this->field_F1 & 1) == 0) {
                this->field_E6 = 0x1D40;
            } else if (this->field_F3 & 1) {
                BUFFER_REG_BG2CNT = BGCNT_SCREENBASE((this->field_DE >> 11) & 0x1F) | BGCNT_PRIORITY(2);
                this->field_E6 = 0x1D40;
            } else {
                this->field_E6 = 0x1940;
            }
            this->state = 5;
            break;

        case 5:
            if (this->field_F2 == 0) {
                sub_80E8DE4();
                this->field_F2 = 1;
                break;
            }
            //! Possible fake match.
            if (this->field_160)
                ;
            this->field_160 = (struct Tmev*)sub_80FB080(operator new(0x2C, 0, "TMEV", 0), 7, "TMEV");
            this->field_160->parentProcess = this;
            dword_3001034(0, (void*)(VRAM + 0x8000), 0x20);
            this->field_60 = sub_80F92DC(this->field_160, 0, 0xF, (void*)(VRAM + 0x8000), 0x4B00,
                                         this->field_54, 0, 0x7000, 0xF, 1);
            this->field_EE = 3;
            sub_8127238();
            this->field_F2 = 0;
            this->state = 10;
            break;

        case 10:
            if (byte_3000C80 == 0) {
                this->state = 11;
                this->field_EE = 1;
            }
            break;

        case 11:
            if (this->field_EF != 1) {
                sub_8127B20();
            }
            this->state = 12;
            break;

        case 12:
            if (!sub_8127AB0()) {
                this->state = 13;
            }
            break;

        case 13:
            if (this->field_F0) {
                if (this->field_EC == 0) {
                    gGameState.field_88C_0 = 1;
                }
                if (++this->field_EC > 20) {
                    sub_8125220(this->field_F4, &this->field_F5, 0xFF);
                    this->field_F0 = 0;
                    this->field_EC = 0;
                }
            }
            result = sub_8126520();
            if (result == 1) {
                this->state = 14;
            } else if (result == 2) {
                this->state = 19;
            }
            break;

        case 14:
            if (this->field_EC == 0xFFFF) {
                this->field_E8 = sub_8123DC4(this->field_E8, 8);
                if (this->field_E8 == 0xFFFF) {
                    if (this->field_F0 == 3) {
                        for (i = 0; i < 2; i++) {
                            sub_8021308(this->sprites[this->field_FA * 2 + i]);
                        }
                    }
                    if (this->field_F0 == 2) {
                        stru_3000D40.slot = this->field_154[this->field_FB - 1];
                        this->field_FA = this->field_154[this->field_FB - 1];
                        sub_8123BA8(1);
                    }
                    stru_3000D40.slot = 0;
                    this->field_F1 = this->save->field_6;
                    this->save->slots[this->field_FA].field_0 = 0xFF;
                    this->field_F9 = 0;
                    this->field_FB = 0;
                    this->field_EE = 1;
                    sub_812791C();
                    this->field_E6 = 0x1D40;
                    BUFFER_REG_DISPCNT = this->field_E6;
                    sub_819A43C();
                    gGameState.field_88A_5 = 1;
                    gGameState.field_88A_3 = 1;
                    this->field_F0 = 0;
                    this->field_EC = 0;
                    this->state = 15;
                } else if (this->field_E8 == (stru_3000D40.slot + 1) * 223 + 2) {
                    if (this->field_F0 == 3) {
                        for (i = 0; i < 2; i++) {
                            sub_8021308(this->sprites[this->field_FA * 2 + i]);
                        }
                        stru_3000D40.slot = 0;
                        this->field_F1 = this->save->field_6;
                        this->field_F9 = 0;
                        this->field_FB = 0;
                        sprite_show_8020CBC(this->cursor);
                        this->cursor->xPosition = this->field_FA * 32 + 32;
                        this->cursor->yPosition = 22;
                        this->field_EE = 1;
                        sub_812791C();
                        BUFFER_REG_BG2CNT = (this->field_DC >> 11) << 8 | 2;
                        this->field_E6 = 0x1D40;
                        BUFFER_REG_DISPCNT = this->field_E6;
                        sub_819A43C();
                        gGameState.field_88A_5 = 1;
                        gGameState.field_88A_3 = 1;
                        this->field_F0 = 1;
                        this->field_EC = 0;
                        this->state = 13;
                    } else if (this->field_F0 == 2) {
                        CpuCopy32(&this->entries[this->field_FA],
                                  &this->entries[this->field_154[this->field_FB - 1]],
                                  sizeof(struct LoadMenuEntry));
                        for (i = 0; i < 2; i++) {
                            if (this->entries[this->field_154[this->field_FB - 1]].items[i].id != 0
                                && (this->entries[this->field_154[this->field_FB - 1]].field_18 == 2
                                    || this->entries[this->field_154[this->field_FB - 1]].field_18
                                           == i)) {
                                this->sprites[this->field_154[this->field_FB - 1] * 2 + i] =
                                    sub_8020DD0(
                                        0,
                                        this->entries[this->field_154[this->field_FB - 1]].items[i].id,
                                        1, -1, -1, -1, -1);
                                sub_801E150(
                                    this->sprites[this->field_154[this->field_FB - 1] * 2 + i],
                                    this->entries[this->field_154[this->field_FB - 1]].items[i].field_2,
                                    -1, 0, 0);
                                sub_801E150(
                                    this->sprites[this->field_154[this->field_FB - 1] * 2 + i],
                                    this->entries[this->field_154[this->field_FB - 1]].items[i].field_2,
                                    this->entries[this->field_154[this->field_FB - 1]].items[i].field_3,
                                    0, 0);
                                sprite_show_8020CBC(
                                    this->sprites[this->field_154[this->field_FB - 1] * 2 + i]);
                                this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->xPosition =
                                    0xBC - i * 40;
                                this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->yPosition =
                                    0xB4;
                                this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->field_12_4 =
                                    1;
                                this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->field_12_1 =
                                    1;
                            } else {
                                sub_8021574(5, 0x6002, 0, 0, 0, this->field_4C, -1);
                                this->sprites[this->field_154[this->field_FB - 1] * 2 + i] =
                                    sub_8020DD0(5, 0x6006, 1, -1, -1, -1, -1);
                                sub_801E150(this->sprites[this->field_154[this->field_FB - 1] * 2 + i],
                                            i, -1, 0, 0);
                                sprite_show_8020CBC(
                                    this->sprites[this->field_154[this->field_FB - 1] * 2 + i]);
                                this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->xPosition =
                                    0xBC - i * 40;
                                this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->yPosition =
                                    0xB4;
                            }
                            this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->field_E =
                                0xEFFF;
                            this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->field_1F_0 = 3;
                            this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->field_1F_2 = 3;
                            this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->field_1F_4 = 3;
                            this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->field_1F_6 = 3;
                            this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->field_10_1 = 0;
                            this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->field_28_9 = 0;
                            this->sprites[this->field_154[this->field_FB - 1] * 2 + i]->field_28_13 = 0;
                        }
                        stru_3000D40.slot = 0;
                        this->field_F1 = this->save->field_6;
                        this->field_F9 = 0;
                        this->field_FB = 0;
                        sprite_show_8020CBC(this->cursor);
                        this->cursor->xPosition = this->field_FA * 32 + 32;
                        this->cursor->yPosition = 22;
                        this->field_EE = 1;
                        sub_812791C();
                        sub_819A43C();
                        gGameState.field_88A_5 = 1;
                        gGameState.field_88A_3 = 1;
                        this->field_F0 = 1;
                        this->field_EC = 0;
                        this->state = 13;
                    }
                }
            } else if (++this->field_EC > 42) {
                if (this->field_F0 == 3) {
                    this->field_EC |= 0xFFFF;
                    stru_3000D40.slot = this->field_FA;
                    sub_8123BA8(1);
                    this->field_E8 = 0;
                    sub_80196E0();
                } else if (this->field_F0 == 2) {
                    this->field_EC |= 0xFFFF;
                    stru_3000D40.slot = this->field_154[this->field_FB - 1];
                    CpuCopy16(&this->save->slots[this->field_FA].data,
                              &this->save->slots[this->field_154[this->field_FB - 1]].data,
                              sizeof(struct SaveSlotData));
                    sub_8123BA8(2);
                    this->field_E8 = 0;
                    sub_80196E0();
                }
                gGameState.field_88C_0 = 0;
            }
            break;

        case 15:
            if (this->field_F0 == 0) {
                this->field_F0 = 1;
                gGameState.field_88C_0 = 1;
            } else if (this->field_EC == 20) {
                sub_8125220(this->field_F4, &this->field_F5, 0xFF);
            }
            if (++this->field_EC > 180 && (this->field_50->field_2 & 3)) {
                this->field_E8 = 0;
                this->field_EC = 0;
                this->field_F0 = 0;
                this->field_EE = 1;
                sprite_show_8020CBC(this->cursor);
                this->cursor->xPosition = this->field_FA * 32 + 32;
                this->cursor->yPosition = 22;
                this->state = 13;
            }
            break;

        case 19:
            if (this->field_F0) {
                sub_8127ADC(0xFFFF);
            } else {
                sub_8127ADC(0);
            }
            this->state = 20;
            break;

        case 20:
            if (sub_8127AB0()) {
                break;
            }
            dword_3001034(0, this->field_58, 0xF20);
            sub_80E9384(this->field_60,
                        (int)this->field_58 - *(u32*)(this->field_160->field_28->field_4 + 0x194));
            dword_3001034(0, this->field_54, 0x800);
            *(u16*)0x2000080 = 0;
            gGameState.field_2 = 1;
            this->field_50->field_8 = this->field_F7;
            this->field_50->field_9 = this->field_F8;
            sub_80E8DC0();
            dword_3000C78 = sub_800063C;
            if (this->field_F0) {
                delete this;
                sub_801AFA0();
                new (0, "OPEN", 0) TitleScreen(8, "OPEN", 1);
            } else if ((this->field_F1 >> this->field_FA) & 1) {
                stru_3000D40.slot = this->field_FA;
                stru_3000D40.field_0_1 = 1;
                delete this;
                sub_80FC198();
                sub_812335C();
                sub_8018A4C(this->save->slots[stru_3000D40.slot].data.field_6EC);
                make_fldm_801AF5C(1);
            } else {
                stru_3000D40.slot = this->field_FA;
                stru_3000D40.field_0_1 = 0;
                DMA_FILL(3, 0, &this->save->slots[this->field_FA].data, sizeof(struct SaveSlotData),
                         32);
                delete this;
                sub_812335C();
                sub_8122BFC();
                make_fldm_801AF5C(0);
            }
            break;
    }
}

u8 LoadMenu::sub_8126520() {
    int i;
    int option;

    if (this->field_EA != 0) {
        if (++this->field_EA > 180) {
            if (this->field_50->field_2 & 3) {
                this->field_EA = 0;
                this->field_EE = 1;
                sprite_show_8020CBC(this->cursor);
            } else if (this->field_EA > 300) {
                this->field_EA = 0;
                this->field_EE = 1;
                sprite_show_8020CBC(this->cursor);
            }
        }
        return 0;
    }

    if (this->field_F2) {
        //! Possible fake match: `!(x & 1)` gives different code in C++ (bool), so `== 0`.
        if (((this->field_F1 >> this->field_FA) & 1) == 0) {
            BUFFER_REG_BG2CNT = (this->field_DC >> 11) << 8 | 2;
            this->field_E6 = 0x1D40;
        } else if ((this->field_F3 >> this->field_FA) & 1) {
            BUFFER_REG_BG2CNT = (this->field_DE >> 11) << 8 | 2;
            this->field_E6 = 0x1D40;
        } else {
            this->field_E6 = 0x1940;
        }
        BUFFER_REG_DISPCNT = this->field_E6;
        this->field_EE = 1;
        this->field_F2 = 0;
        return 0;
    }

    if (this->field_50->field_2 & 1) {
        if (this->field_F9 != 0) {
            if (this->field_FB != 0) {
                if (this->field_FB & 0x10) {
                    if (this->field_FB & 0xF) {
                        play_sfx_80195B4(0x60, -1);
                        this->field_EE = 1;
                        this->field_FB = 0x20;
                        this->cursor->xPosition = 0x2E;
                        this->cursor->yPosition = 0x60;
                    } else {
                        play_sfx_80195B4(0x61, -1);
                        this->field_FB = 0;
                        this->cursor->xPosition = 0x22;
                        this->cursor->yPosition = (this->field_F9 - 1) * 12 + 0x28;
                        this->field_EE = 1;
                    }
                } else {
                    if (this->field_FB & 0x20) {
                        if (this->field_FB == 0x21) {
                            this->field_F4 = sub_81252BC(&this->field_F5, 0x1E);
                            this->field_F0 = 3;
                            this->field_EE = 1;
                            this->field_EC = 0;
                            play_sfx_80195B4(0x60, -1);
                            sprite_hide_8021F20(this->cursor);
                            gGameState.field_88A_5 = 0;
                            gGameState.field_88A_3 = 0;
                            return 1;
                        } else {
                            play_sfx_80195B4(0x61, -1);
                            this->field_FB = 0;
                            this->cursor->xPosition = 0x22;
                            this->cursor->yPosition = (this->field_F9 - 1) * 12 + 0x28;
                            this->field_EE = 1;
                        }
                    } else {
                        this->field_F4 = sub_81252BC(&this->field_F5, 0x1E);
                        this->field_F0 = 2;
                        this->field_EE = 1;
                        this->field_EC = 0;
                        play_sfx_80195B4(0x60, -1);
                        sprite_hide_8021F20(this->cursor);
                        gGameState.field_88A_5 = 0;
                        gGameState.field_88A_3 = 0;
                        return 1;
                    }
                }
            } else {

                option = this->field_F9;
                switch (option - 1) {
                    case 0:
                        play_sfx_80195B4(0x60, -1);
                        return 2;
                    case 1:
                        if (this->field_154[3] == 0) {
                            this->field_EA = 1;
                            sprite_hide_8021F20(this->cursor);
                        } else {
                            play_sfx_80195B4(0x60, -1);
                            this->field_FB = 1;
                            this->cursor->xPosition = this->field_154[option - 2] * 32 + 32;
                            this->cursor->yPosition = 22;
                        }
                        this->field_EE = 1;
                        break;
                    case 2:
                        play_sfx_80195B4(0x60, -1);
                        this->field_EE = 1;
                        this->field_FB = 0x10;
                        this->cursor->xPosition = 0x2E;
                        this->cursor->yPosition = 0x60;
                        break;
                    case 3:
                        play_sfx_80195B4(0x61, -1);
                        this->cursor->xPosition = this->field_FA * 32 + 32;
                        this->cursor->yPosition = 22;
                        this->field_F9 = 0;
                        this->field_EE = 1;
                        break;
                }
            }
        } else {
            play_sfx_80195B4(0x60, -1);
            this->field_EE = 1;
            this->field_F9 = 1;
            this->cursor->xPosition = 0x22;
            this->cursor->yPosition = (this->field_F9 - 1) * 12 + 0x28;
        }
    } else if (this->field_50->field_2 & 2) {
        if (this->field_F9 != 0) {
            play_sfx_80195B4(0x61, -1);
            if (this->field_FB != 0) {
                this->field_FB = 0;
                this->cursor->xPosition = 0x22;
                this->cursor->yPosition = (this->field_F9 - 1) * 12 + 0x28;
            } else {
                this->field_F9 = 0;
                this->cursor->xPosition = this->field_FA * 32 + 32;
                this->cursor->yPosition = 22;
            }
            this->field_EE = 1;
        } else {
            play_sfx_80195B4(0x61, -1);
            this->field_F0 = 1;
            return 2;
        }
    } else if (this->field_FB & 0x30) {
        if (this->field_50->field_2 & 0x80) {
            if (this->field_FB & 0xF) {
                this->field_FB &= ~0xF;
            } else {
                this->field_FB = (this->field_FB & ~0xF) + 1;
            }
            play_sfx_80195B4(0x5F, -1);
            this->cursor->xPosition = 0x2E;
            this->cursor->yPosition = 0x60 - (this->field_FB & 0xF) * 13;
        } else if (this->field_50->field_2 & 0x40) {
            if (this->field_FB & 0xF) {
                this->field_FB &= ~0xF;
            } else {
                this->field_FB = (this->field_FB & ~0xF) + 1;
            }
            play_sfx_80195B4(0x5F, -1);
            this->cursor->xPosition = 0x2E;
            this->cursor->yPosition = 0x60 - (this->field_FB & 0xF) * 13;
        }
    } else {
        if (this->field_50->field_6 & 0x20) {
            if (this->field_F9 == 0) {
                play_sfx_80195B4(0x5F, -1);
                if ((this->field_F1 >> this->field_FA) & 1) {
                    this->sprites[this->field_FA * 2]->yPosition = 0xB4;
                    this->sprites[this->field_FA * 2 + 1]->yPosition = 0xB4;
                }
                if (--this->field_FA < 0) {
                    this->field_FA = 2;
                }
                if ((this->field_F1 >> this->field_FA) & 1) {
                    this->sprites[this->field_FA * 2]->yPosition = 0x68;
                    this->sprites[this->field_FA * 2 + 1]->yPosition = 0x68;
                }
                this->cursor->xPosition = this->field_FA * 32 + 32;
                this->cursor->yPosition = 22;
                this->field_F2 = 1;
            } else if (this->field_FB != 0) {
                if (this->field_154[3] == 2) {
                    play_sfx_80195B4(0x5F, -1);
                }
                if (--this->field_FB <= 0) {
                    this->field_FB = this->field_154[3];
                }
                this->cursor->xPosition = this->field_154[this->field_FB - 1] * 32 + 32;
                this->cursor->yPosition = 22;
            }
        } else if (this->field_50->field_6 & 0x10) {
            if (this->field_F9 == 0) {
                play_sfx_80195B4(0x5F, -1);
                if ((this->field_F1 >> this->field_FA) & 1) {
                    this->sprites[this->field_FA * 2]->yPosition = 0xB4;
                    this->sprites[this->field_FA * 2 + 1]->yPosition = 0xB4;
                }
                if (++this->field_FA > 2) {
                    this->field_FA = 0;
                }
                if ((this->field_F1 >> this->field_FA) & 1) {
                    for (i = 0; i < 2; i++) {
                        this->sprites[this->field_FA * 2]->yPosition = 0x68;
                        this->sprites[this->field_FA * 2 + 1]->yPosition = 0x68;
                    }
                }
                this->cursor->xPosition = this->field_FA * 32 + 32;
                this->cursor->yPosition = 22;
                this->field_F2 = 1;
            } else if (this->field_FB != 0) {
                if (this->field_154[3] == 2) {
                    play_sfx_80195B4(0x5F, -1);
                }
                if (++this->field_FB >= this->field_154[3] + 1) {
                    this->field_FB = 1;
                }
                this->cursor->xPosition = this->field_154[this->field_FB - 1] * 32 + 32;
                this->cursor->yPosition = 22;
            }
        } else if (this->field_50->field_6 & 0x40) {
            if (this->field_F9 != 0 && this->field_FB == 0) {
                play_sfx_80195B4(0x5F, -1);
                if ((this->field_F1 >> this->field_FA) & 1) {
                    if (--this->field_F9 <= 0) {
                        this->field_F9 = 4;
                    }
                } else if (this->field_F9 == 1) {
                    this->field_F9 = 4;
                } else {
                    this->field_F9 = 1;
                }
                this->cursor->xPosition = 0x22;
                this->cursor->yPosition = (this->field_F9 - 1) * 12 + 0x28;
            }
        } else if (this->field_50->field_6 & 0x80) {
            if (this->field_F9 != 0 && this->field_FB == 0) {
                play_sfx_80195B4(0x5F, -1);
                if ((this->field_F1 >> this->field_FA) & 1) {
                    if (++this->field_F9 > 4) {
                        this->field_F9 = 1;
                    }
                } else if (this->field_F9 == 4) {
                    this->field_F9 = 1;
                } else {
                    this->field_F9 = 4;
                }
                this->cursor->xPosition = 0x22;
                this->cursor->yPosition = (this->field_F9 - 1) * 12 + 0x28;
            }
        }
    }
    return 0;
}

void LoadMenu::sub_8126C3C() {
    s32 arrowX[4] = { 0x70, 0xE8, 0x58, 0xE0 };
    s32 arrowY[4] = { 0x68, 0x88, 0x68, 0x50 };
    int index;

    if (this->field_F2 == 0) {
        sub_8021574(5, 0x6003, 0, 0, 0, this->field_4C, -1);
        this->cursor = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
        sub_801E150(this->cursor, 0, -1, 0, 0);
        sprite_show_8020CBC(this->cursor);
        this->cursor->xPosition = this->field_FA * 32 + 32;
        this->cursor->yPosition = 22;
        this->cursor->field_E = 0xEFFF;
        this->cursor->field_1F_0 = 0;
        this->cursor->field_1F_2 = 0;
        this->cursor->field_1F_4 = 0;
        this->cursor->field_1F_6 = 0;
        this->cursor->field_10_1 = 0;
        this->cursor->field_28_9 = 0;
        this->cursor->field_28_13 = 0;
        this->field_F2 = 1;
    } else if (this->field_F2 == 1) {
        this->arrows[this->field_EC] = sub_8020DD0(5, 0x6005, 0, -1, -1, -1, -1);
        sub_801E150(this->arrows[this->field_EC], this->field_EC + 3, -1, 0, 0);
        sprite_show_8020CBC(this->arrows[this->field_EC]);
        this->arrows[this->field_EC]->xPosition = arrowX[this->field_EC];
        this->arrows[this->field_EC]->yPosition = arrowY[this->field_EC];
        this->arrows[this->field_EC]->field_E = 0xEFFF;
        this->arrows[this->field_EC]->field_1F_0 = 1;
        this->arrows[this->field_EC]->field_1F_2 = 1;
        this->arrows[this->field_EC]->field_1F_4 = 1;
        this->arrows[this->field_EC]->field_1F_6 = 1;
        this->arrows[this->field_EC]->field_10_1 = 0;
        this->arrows[this->field_EC]->field_28_9 = 0;
        this->arrows[this->field_EC]->field_28_13 = 0;
        this->arrows[this->field_EC]->field_12_4 = 1;
        this->arrows[this->field_EC]->field_12_1 = 1;
        if (++this->field_EC == 4) {
            this->field_F2 = 2;
        }
    } else {
        int slot;
        int i;

        for (slot = 0; slot < 3; slot++) {
            for (i = 0; i < 2; i++) {
                index = slot * 2 + i;
                if (this->entries[slot].items[i].id != 0
                    && (this->entries[slot].field_18 == 2 || this->entries[slot].field_18 == i)) {
                    this->sprites[index] =
                        sub_8020DD0(0, this->entries[slot].items[i].id, 1, -1, -1, -1, -1);
                    sub_801E150(this->sprites[index], this->entries[slot].items[i].field_2, -1, 0, 0);
                    sub_801E150(this->sprites[index], this->entries[slot].items[i].field_2,
                                this->entries[slot].items[i].field_3, 0, 0);
                    sprite_show_8020CBC(this->sprites[index]);
                    this->sprites[index]->xPosition = 0xBC - i * 40;
                    this->sprites[index]->yPosition = slot != 0 ? 0xB4 : 0x68;
                    this->sprites[index]->field_E = 0xEFFF;
                    this->sprites[index]->field_1F_0 = 3;
                    this->sprites[index]->field_1F_2 = 3;
                    this->sprites[index]->field_1F_4 = 3;
                    this->sprites[index]->field_1F_6 = 3;
                    this->sprites[index]->field_10_1 = 0;
                    this->sprites[index]->field_28_9 = 0;
                    this->sprites[index]->field_28_13 = 0;
                    this->sprites[index]->field_12_4 = 1;
                    this->sprites[index]->field_12_1 = 1;
                } else if ((this->field_F1 >> slot) & 1) {
                    sub_8021574(5, 0x6002, 0, 0, 0, this->field_4C, -1);
                    this->sprites[index] = sub_8020DD0(5, 0x6006, 1, -1, -1, -1, -1);
                    sub_801E150(this->sprites[index], i, -1, 0, 0);
                    sprite_show_8020CBC(this->sprites[index]);
                    this->sprites[index]->xPosition = 0xBC - i * 40;
                    this->sprites[index]->yPosition = slot != 0 ? 0xB4 : 0x68;
                    this->sprites[index]->field_E = 0xEFFF;
                    this->sprites[index]->field_1F_0 = 3;
                    this->sprites[index]->field_1F_2 = 3;
                    this->sprites[index]->field_1F_4 = 3;
                    this->sprites[index]->field_1F_6 = 3;
                    this->sprites[index]->field_10_1 = 0;
                    this->sprites[index]->field_28_9 = 0;
                    this->sprites[index]->field_28_13 = 0;
                } else {
                    this->sprites[index] = NULL;
                }
            }
        }
        sub_8021F7C();
        sub_8020A78();
        dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 0xA14);
        this->field_F2 = 0;
        this->field_EC = 0;
    }
}

void* LoadMenu::sub_81270E4(void* buf) {
    int slot;
    int a;
    int b;
    int c;
    int d;

    buf = sub_8121F1C(buf, this->entries[this->field_FA].field_16,
                      this->entries[this->field_FA].field_17, this->entries[this->field_FA].field_10);
    buf = sub_8122098(buf, this->entries[this->field_FA].items[0].field_4,
                      this->entries[this->field_FA].items[1].field_4);

    for (slot = 0; slot < 3; slot++) {
        a = 8;
        b = 13;
        c = 0x52;
        d = 1;
        if (this->field_FA == slot) {
            a = 0;
            b = 6;
            c = 0x42;
            d = 0;
        }
        //! Possible fake match: `!(x & 1)` gives different code in C++ (bool), so `== 0`.
        if (((this->field_F1 >> slot) & 1) == 0) {
            buf = sub_8122A20(buf, slot * 32 + 0x18, a, 0, d, 2, c + 0x20, 2, 3, 0, 0);
        } else {
            buf = sub_8122A20(buf, slot * 32 + 0x20, b, 0, 1, 0, slot * 2 + 0x92, 2, 3, 0, 0);
            buf = sub_8122A20(buf, slot * 32 + 0x18, a, 0, d, 2, c + 0x38, 2, 3, 0, 0);
        }
    }
    return buf;
}

#define TMEV_BASE(menu) (*(u32*)((menu)->field_160->field_28->field_4 + 0x194))

void LoadMenu::sub_8127238() {
    u8** texts;
    int i;

    if (this->field_EE == 1) {
        texts = off_83BADAC[gGameState.field_8C0];
        dword_3001034(0, this->field_58, 0xF20);
        if (this->field_F0 > 1) {
            u8 index = (this->field_F0 & 1) * 4 + 7;
            int n;

            sub_8199D78(&this->field_64, this->field_58, 11, 0, 0, 0, 0, 2, 5, 4);
            sub_8199D5C(&this->field_64, 0, 4, (int)texts[index]);
            for (n = 0; texts[index][n] != 0 || texts[index][n - 1] == 0xFF; n++) {
                sub_8199624(&this->field_64);
            }
        } else if (this->field_EA != 0) {
            int n;

            sub_8199D78(&this->field_64, this->field_58, 11, 0, 0, 0, 0, 2, 9, 4);
            sub_8199D5C(&this->field_64, 0, 4, (int)texts[8]);
            for (n = 0; texts[8][n] != 0 || texts[8][n - 1] == 0xFF; n++) {
                sub_8199624(&this->field_64);
            }
        } else if (this->field_E8 == 0xFFFF) {
            u8** texts2 = off_83BADC0[gGameState.field_8C0];
            int n;

            sub_8199D78(&this->field_64, this->field_58, 11, 0, 0, 0, 0, 2, 9, 4);
            sub_8199D5C(&this->field_64, 0, 11, (int)texts2[7]);
            for (n = 0; texts[7][n] != 0 || texts2[7][n - 1] == 0xFF; n++) {
                sub_8199624(&this->field_64);
            }
        } else if (this->field_FB & 0x20) {
            int n;

            sub_8199D78(&this->field_64, this->field_58, 11, 0, 0, 0, 0, 2, 9, 4);
            sub_8199D5C(&this->field_64, 0, 4, (int)texts[10]);
            for (n = 0; texts[10][n] != 0 || texts[10][n - 1] == 0xFF; n++) {
                sub_8199624(&this->field_64);
            }
            sub_8083860(this->field_58, 11, 12, 0x30, texts[12], 5);
            sub_8083860(this->field_58, 11, 12, 0x3C, texts[13], 5);
        } else if (this->field_FB & 0x10) {
            int n;

            sub_8199D78(&this->field_64, this->field_58, 11, 0, 0, 0, 0, 2, 5, 4);
            sub_8199D5C(&this->field_64, 0, 4, (int)texts[9]);
            for (n = 0; texts[9][n] != 0 || texts[9][n - 1] == 0xFF; n++) {
                sub_8199624(&this->field_64);
            }
            sub_8083860(this->field_58, 11, 12, 0x30, texts[12], 5);
            sub_8083860(this->field_58, 11, 12, 0x3C, texts[13], 5);
        } else if (this->field_FB != 0) {
            int n;

            sub_8199D78(&this->field_64, this->field_58, 11, 0, 0, 0, 0, 2, 5, 4);
            sub_8199D5C(&this->field_64, 0, 4, (int)texts[6]);
            for (n = 0; texts[6][n] != 0 || texts[6][n - 1] == 0xFF; n++) {
                sub_8199624(&this->field_64);
            }
        } else {
            for (i = 0; i < 4; i++) {
                if (((this->field_F1 >> this->field_FA) & 1) || i == 0 || i == 3) {
                    sub_8083860(this->field_58, 11, 0, i * 12 + 4, texts[i], 5);
                }
            }
        }
        sub_8018218(this->field_58, (u8*)this->field_58 - TMEV_BASE(this), 0xF20, 0x20, 0);

        dword_3001034(0, this->field_5C, 0x8A0);
        if (this->entries[this->field_FA].field_12 == 0xFFFF) {
            u8** texts2 = off_83BADC0[gGameState.field_8C0];

            sub_8199D78(&this->field_B4, this->field_5C, 0x17, 0, 0, 0, 0, 2, 11, 4);
            sub_8199D5C(&this->field_B4, 0, 8, (int)texts2[10]);
            do {
                if (this->field_B4.field_8[0] == 0xFF && this->field_B4.field_8[1] == 0) {
                    this->field_B4.field_8 += 2;
                }
            } while (sub_8199624(&this->field_B4) != 0);
        } else if ((this->field_F1 >> this->field_FA) & 1) {
            sub_8199D78(&this->field_B4, this->field_5C, 0x17, 0, 0, 0, 0, 2, 11, 4);
            sub_8199D5C(&this->field_B4, 0, 8,
                        (int)sub_8123308(this->entries[this->field_FA].field_12));
            do {
                if (this->field_B4.field_8[0] == 0xFF && this->field_B4.field_8[1] == 0) {
                    this->field_B4.field_8 += 2;
                }
            } while (sub_8199624(&this->field_B4) != 0);
        }
        sub_8018218(this->field_5C, (u8*)this->field_5C - TMEV_BASE(this), 0x8A0, 0x20, 0);
    } else if (this->field_EE == 2) {
        dword_3001034(0, this->field_58, 0xF20);
        sub_80E9384(this->field_60, (int)this->field_58 - TMEV_BASE(this));
        dword_3001034(0, this->field_5C, 0x8A0);
        sub_80E9384(this->field_60, (int)this->field_5C - TMEV_BASE(this));
        dword_3001034(0, this->field_54, 0x800);
    } else if (this->field_EE == 3) {
        this->field_58 = (u8*)sub_80E9414(this->field_60, 0xF20) + TMEV_BASE(this);
        dword_3001034(0, this->field_58, 0xF20);
        sub_8127DB4(this->field_54, 0x20, 0x20, 11, 11,
                    sub_8127E38((u32)this->field_58 - TMEV_BASE(this)) | 0xE000, 1);
        this->field_5C = (u8*)sub_80E9414(this->field_60, 0x8A0) + TMEV_BASE(this);
        dword_3001034(0, this->field_5C, 0x8A0);
        sub_8127DB4(this->field_54, 0x20, 0x78, 0x17, 3,
                    sub_8127E38((u32)this->field_5C - TMEV_BASE(this)) | 0xE000, 1);
    }
    this->field_EE = 0;
    ((void (*)(void*, void*, int))((u8*)dword_3001034 + (loc_8198154 - loc_81980D8)))(
        this->field_54, (void*)0x600D000, 0x800);
}

void LoadMenu::sub_812791C() {
    int slot;

    this->field_154[3] = 0;
    this->field_F3 = 0;
    for (slot = 0; slot < 3; slot++) {
        //! Possible fake match: `!(x & 1)` gives different code in C++ (bool), so `== 0`.
        if (((this->field_F1 >> slot) & 1) == 0) {
            struct LoadMenuEntry* entry = &this->entries[slot];

            this->field_154[this->field_154[3]] = slot;
            this->field_154[3]++;
            CpuFill16(0, entry, sizeof(struct LoadMenuEntry));
            entry->field_17 = 0;
            if (this->save->slots[slot].field_0 == 0xFF) {
                entry->field_12 = 0xFFFF;
            }
        } else {
            sub_8127BC8(&this->entries[slot], slot);
            if (this->entries[slot].field_12 == 0x113) {
                this->field_F3 |= 1 << slot;
            }
        }
    }
}

inline void* LoadMenu::sub_8127B90(void* buf) {
    return sub_8122198(buf, this->entries[this->field_FA].field_14,
                       this->entries[this->field_FA].field_15, this->field_F3 & (1 << this->field_FA));
}

void LoadMenuRenderer::update() {
    int buf = gGameState.field_880;
    LoadMenu* menu = (LoadMenu*)parentProcess;

    if (menu->state > 3) {
        if (menu->field_EE) {
            menu->sub_8127238();
        }
        if ((menu->field_F1 >> menu->field_FA) & 1) {
            buf = (int)menu->sub_8127B90((void*)buf);
        }
        sub_8021F7C();
        sub_8020A78();
        dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 0xA14);
        buf = dword_3000D4C(stru_203FFB8.field_3C, buf);
        buf = (int)menu->sub_81270E4((void*)buf);
        gGameState.field_880 = buf;
    }
}

LoadMenuRenderer::LoadMenuRenderer(u8 priority, char* label) : Process(priority, label) {
}

u8 LoadMenu::sub_8127AB0() {

    u8 busy = sub_8116620(this->fade);

    if (busy == 0) {
        this->field_EF = busy;
        return 0;
    }
    return 1;
}

void LoadMenu::sub_8127ADC(u16 color) {
    sub_81151E4(this->fade, 4, color, 0x10, 0xFFFF, 0xFFFF, 0, 0);
    sub_80193B4(0, 0, 0x10);
    this->field_EF = 1;
}

void LoadMenu::sub_8127B20() {
    gGameState.field_884 = 0xFFFFFFFF;
    sub_81151E4(this->fade, 0, this->field_E4, 0x10, 0xFFFF, 0xFFFF, 0, 0);
    sub_8019308(0, 0x1E, 0);
    sub_80193B4(0, 0xFF, 0x10);
    BUFFER_REG_DISPCNT = this->field_E6;
    this->field_EF = 1;
}
