#include "global.h"
#include "common.h"
#include "title_screen.h"

inline void sub_805737C(struct TitleScreen* ts, int flags) {
    ts->process.definition = &stru_8CDC238;
    DmaStop(0);
    sub_8018B78(2, 0);

    if (ts->mbsv) {
        process_remove(&ts->mbsv->process, 3);
    }

    free_heap_8018DA8(dword_3000DA0);
    sub_8021FD4();
    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 |= 1;
    BUFFER_REG_DISPCNT = 0;
    gGameState.field_31 = 2;
    sub_8017E34();
    process_remove(&ts->process, flags);
}

inline void opdr_update(void) {
    int var1 = gGameState.field_880;
    sub_8020A78();
    dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 2580);
    var1 = dword_3000D4C(stru_203FFB8.field_3C, var1);
    gGameState.field_880 = var1;
}

inline void sub_8057458(struct COMPProcess* comp, int flags) {
    comp->process.definition = &stru_8CDC258;
    sub_8021FD4();
    if (comp->opdr) {
        process_remove(comp->opdr, 3);
    }
    process_remove(&comp->process, flags);
}

struct COMPProcess* comp_init(struct COMPProcess* comp, u8 priority, char* label) {
    struct Process* opdr;
    void* cgdw;
    struct struc_203FFF8* v11;
    vu32 zero;

    process_add(&comp->process, priority, label);
    comp->process.definition = &stru_8CDC258;

    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 = 1;
    BUFFER_REG_DISPCNT = 0;
    sub_8017E34();

    opdr = (struct Process*)alloc_Zero(sizeof(struct Process), 0, "OPDR", 0);
    process_add(opdr, 8, "OPDR");
    opdr->definition = &stru_8CDC268;
    comp->opdr = opdr;
    opdr->parentProcess = &comp->process;

    dword_3000C78 = 0;
    sub_8020994(0, 0, 0, 0x80);
    stru_203FFB8.field_0_2 = 1;

    comp->mario = sub_8020DD0(2, 4097, 1, -1, -1, -1, -1);
    sub_801E150(comp->mario, 12, -1, 0, 0);
    comp->mario->xPosition = 80;
    comp->mario->yPosition = -35;
    comp->mario->field_11_6 = 1;

    comp->luigi = sub_8020DD0(2, 4098, 1, -1, -1, -1, -1);
    sub_801E150(comp->luigi, 12, -1, 0, 0);
    comp->luigi->xPosition = 160;
    comp->luigi->yPosition = -35;

    comp->alphaDreamLogo = sub_8020DD0(7, 33103, 1, -1, -1, -1, -1);
    sub_801E150(comp->alphaDreamLogo, 0, -1, 0, 0);
    comp->alphaDreamLogo->xPosition = 120;
    comp->alphaDreamLogo->yPosition = 74;

    sub_80213A0(0, 4109, -1, 1);
    sub_80213A0(0, 4110, -1, 1);
    comp->xPosMario = 20480;
    comp->yPosMario = -8960;
    comp->xPosLuigi = 40960;
    comp->yPosLuigi = -8960;

    cgdw = alloc_zero_8018DB4(0x8000, 1, "CGDW", 0);
    dword_3000C84(dword_83A2B48, cgdw);
    CpuFastSet(cgdw, (void*)BG_CHAR_ADDR(2), (sub_80198B0(dword_83A2B48) >> 2) & 0x1FFFFF);
    CpuFastSet(dword_83A2F98, (void*)BG_SCREEN_ADDR(28), 320);
    zero = 0;
    CpuFastSet((int*)&zero, (void*)0x600E500, 0x10000C0);
    dword_3000C84(dword_83A34B8, cgdw);
    CpuFastSet(cgdw, (void*)BG_CHAR_ADDR(3), (sub_80198B0(dword_83A34B8) >> 2) & 0x1FFFFF);
    CpuFastSet(dword_83A3860, (void*)BG_SCREEN_ADDR(29), 320);
    free_heap_8018DA8(cgdw);

    dword_3000C78 = sub_800063C;
    v11 = sub_81251DC();
    stru_203FFF8.field_0 = v11->field_0;
    stru_203FFF8.field_4 = v11->field_4;
    stru_203FFF8.field_7_0 = 0;
    stru_203FFF8.field_7_2 = dword_3000FFC->field_8_3;
    stru_203FFF8.field_7_3 = dword_3000FFC->field_8_5;
    stru_203FFF8.field_7_4 = dword_3000FFC->field_8_0;
    stru_203FFF8.field_7_7 = gGameState.field_888_1;

    BUFFER_REG_BG0CNT = BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(28);
    BUFFER_REG_BG0HOFS = 0;
    BUFFER_REG_BG0VOFS = 99;

    comp->verticalOffset = 25344;
    CpuFastSet(&dword_83A3498, (void*)0x2000000 + 0x80, 8);
    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 = -1;

    sprite_show_8020CBC(comp->mario);
    sprite_show_8020CBC(comp->luigi);

    comp->velocity = 0;
    comp->acceleration = 117;
    comp->flags = 1;
    comp->process.state = 0;

    BUFFER_REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_OBJ_ON;

    return comp;
}

void comp_update(struct COMPProcess* comp) {
    switch (comp->process.state) {
        case 0:
            comp->yPosMario += comp->velocity;
            comp->yPosLuigi += comp->velocity;
            comp->verticalOffset -= comp->velocity;
            comp->velocity = comp->velocity + comp->acceleration;
            if (comp->verticalOffset <= 0) {
                comp->brightness = 16;
                comp->verticalOffset = 0;
                comp->velocity = -1324;
                play_sfx_80195B4(134, -1);
                comp->process.state = 1;
            }
            break;

        case 1:
            if (comp->brightness > 10) {
                comp->verticalOffset ^= 512;
            } else {
                comp->verticalOffset ^= 256;
            }
            comp->brightness--;
            if (comp->brightness == 0) {
                comp->brightness = 100;
                BUFFER_REG_BG0VOFS = 0;
                comp->process.state = 2;
            }
            break;

        case 2:
            if (comp->brightness == 80) {
                play_sfx_80195B4(221, -1);
            }
            comp->brightness--;
            if (comp->brightness == 0) {
                comp->brightness = 16;
                BUFFER_REG_BLDCNT = 191;
                BUFFER_REG_BLDY = 0;
                comp->process.state = 3;
            }
            break;

        case 3:
            comp->brightness--;
            BUFFER_REG_BLDY = 16 - comp->brightness;
            if (comp->brightness == 0) {
                sprite_hide_8021F20(comp->mario);
                sprite_hide_8021F20(comp->luigi);
                CpuFastSet(dword_83A3D60, (void*)0x2000000 + 0x80, 8);
                gGameState.field_2 = -1;
                BUFFER_REG_BG0CNT = BGCNT_CHARBASE(3) | BGCNT_SCREENBASE(29);
                sprite_show_8020CBC(comp->alphaDreamLogo);
                comp->alphaDreamLogo->field_12_4 = 1;
                comp->brightness = 16;
                comp->process.state = 4;
            }
            break;

        case 4:
            comp->brightness--;
            BUFFER_REG_BLDY = comp->brightness;
            if (gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) {
                comp->brightness = 16 - comp->brightness;
                comp->process.state = 6;
            } else if (comp->brightness == 0) {
                comp->brightness = 120;
                comp->alphaDreamLogo->field_12_4 = 0;
                comp->alphaDreamLogo->field_12_1 = 1;
                comp->process.state = 5;
            }
            break;

        case 5:
            if ((gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) == 0) {
                comp->brightness--;
                if (comp->brightness != 0) {
                    break;
                }
            }
            comp->brightness = 16;
            comp->process.state = 6;
            break;

        case 6:
            comp->brightness--;
            BUFFER_REG_BLDY = 16 - comp->brightness;
            if (comp->brightness == 0) {
                if (comp) {
                    sub_8057458(comp, 3);
                }
                open_init_8055A00(alloc_Zero(sizeof(struct TitleScreen), 0, "OPEN", 0), 8, "OPEN", 0);
                return;
            }
            break;
    }

    if (comp->process.state < 3) {
        if (comp->process.state != 0 && comp->flags) {
            comp->xPosMario -= 384;
            comp->xPosLuigi += 384;
            comp->yPosMario += comp->velocity;
            comp->yPosLuigi += comp->velocity;
            comp->velocity += comp->acceleration;
            if (comp->yPosMario >= 24064) {
                bool32 temp;
                comp->yPosMario = 24064;
                comp->yPosLuigi = 24064;
                sub_80210A8(comp->mario, 2, 4109, 1, -1, -1, -1, -1);
                sub_801E150(comp->mario, 0, -1, 0, 0);
                sprite_show_8020CBC(comp->mario);
                temp = comp->mario->field_11_6;
                temp ^= 1;
                comp->mario->field_11_6 = temp;
                comp->mario->field_12_1 = 1;

                sub_80210A8(comp->luigi, 2, 4110, 1, -1, -1, -1, -1);
                sub_801E150(comp->luigi, 0, -1, 0, 0);
                sprite_show_8020CBC(comp->luigi);
                comp->luigi->field_12_1 = 1;
                comp->flags = 0;
            }
        }
        BUFFER_REG_BG0VOFS = comp->verticalOffset / 256;
        comp->mario->xPosition = comp->xPosMario / 256;
        comp->mario->yPosition = comp->yPosMario / 256;
        comp->luigi->xPosition = comp->xPosLuigi / 256;
        comp->luigi->yPosition = comp->yPosLuigi / 256;
    }

    sub_8021F7C();
}

struct TitleScreen* open_init_8055A00(struct TitleScreen* open, u8 priority, char* label,
                                      int selection) {
    struct struc_203FFF8* v5;
    void* cgdw;
    u32 i;

    process_add(&open->process, priority, label);
    open->process.definition = &stru_8CDC238;

    (*(vu16*)(0x2000000 + 0x80)) = 0x7FFF;
    gGameState.field_2 = 1;
    (*(vu16*)(0x2000000 + 0x0)) = 0;
    sub_8017E34();
    gGameState.field_31 = 8;

    v5 = sub_81251DC();
    stru_203FFF8.field_0 = v5->field_0;
    stru_203FFF8.field_4 = v5->field_4;
    stru_203FFF8.field_7_0 = 0;
    stru_203FFF8.field_7_2 = dword_3000FFC->field_8_3;
    stru_203FFF8.field_7_3 = dword_3000FFC->field_8_5;
    stru_203FFF8.field_7_4 = dword_3000FFC->field_8_0;
    stru_203FFF8.field_7_7 = gGameState.field_888_1;

    dword_3000DA0 = alloc_Zero(340, 0, "ORST", 1);
    {
        struct MarioBrosScoreVisual** p = &open->mbsv;
        *p = mbsv_init(alloc_Zero(0x24, 0, "OPDR", 0), 8, "OPDR", stru_203FFF8.field_0,
                       stru_203FFF8.field_4);
        (*p)->process.parentProcess = &open->process;
    }

    open->selection = selection != 0 ? selection - 1 : 0;
    open->suitcaseVisualState = 0;
    open->brightness = 16;
    open->isSkippingSuitcaseAnim = 0;
    open->skipSuitcaseAnim = 1;
    open->states[0] = 0;
    for (i = 1; i < 6; i++) {
        open->states[i] = -1;
    }

    dword_3000C78 = 0;

    cgdw = alloc_zero_8018DB4(0x8000, 1, "CGDW", 0);
    dword_3000C84(dword_83A3D80, cgdw);
    CpuFastSet(cgdw, (void*)0x6000000, (sub_80198B0(dword_83A3D80) >> 2) & 0x1FFFFF);
    dword_3000C84(dword_83A4874, cgdw);
    CpuFastSet(cgdw, (void*)0x6004000, (sub_80198B0(dword_83A4874) >> 2) & 0x1FFFFF);
    CpuFastSet(dword_83A575C, (void*)0x600C000, 320);
    CpuFastSet(dword_83A5C5C, (void*)0x600D000, 1024);
    CpuFastSet(dword_83A6C5C, (void*)0x600C800, 312);
    free_heap_8018DA8(cgdw);
    sub_8020994(0, 0, 0, 0);

    for (i = 0; i < 9; i++) {
        open->sprites[i] = sub_8020DD0(0, word_83A74C0[i * 2], word_83A74C0[i * 2 + 1], -1, -1, -1, -1);
        sub_801E150(open->sprites[i], 0, -1, 0, 0);
    }

    if (selection == 0) {
        open->xPosSuitcase = 30720;
        open->yPosSuitcase = 0;
        open->yVelocitySuitcase = 512;
        sub_801E150(open->sprites[5], 0, 0, 0, 0);
        open->sprites[5]->xPosition = 120;
        open->sprites[5]->yPosition = 0;
        open->sprites[5]->field_1F_0 = 0;
        open->sprites[5]->field_1F_2 = 1;
        open->sprites[5]->field_E = 2;
        sprite_show_8020CBC(open->sprites[5]);
    } else {
        open_8055F74(open, selection);
    }

    dword_3000C78 = sub_800063C;

    (*(vu16*)(0x2000000 + 0x50)) = 191;
    (*(vu16*)(0x2000000 + 0x54)) = 16;
    (*(vu16*)(0x2000000 + 0x08)) = 6146;
    (*(vu16*)(0x2000000 + 0x0A)) = 23043;
    (*(vu16*)(0x2000000 + 0x0C)) = 22916;
    (*(vu16*)(0x2000000 + 0x10)) = 0;
    (*(vu16*)(0x2000000 + 0x12)) = 0;
    (*(vu16*)(0x2000000 + 0x14)) = 0;
    (*(vu16*)(0x2000000 + 0x16)) = 0;

    CpuFastSet(gGameState.field_888_1 == 0 ? dword_83A7140 : dword_83A7300, (void*)0x2000080, 112);

    (*(vu16*)(0x2000000 + 0x80)) = 0x7FFF;
    gGameState.field_2 = -1;
    gGameState.field_0 = -1;
    sub_8018B78(2, sub_8056224);
    sub_8019308(0, 41, -1);

    if (selection == 0) {
        open->entryStateIdx = 0;
        (*(vu16*)(0x2000000 + 0x00)) |= 4673;
    } else {
        open->entryStateIdx = 2;
        (*(vu16*)(0x2000000 + 0x00)) |= 5953;
    }

    return open;
}

void open_8055E2C(struct TitleScreen* ts) {
    sprite_hide_8021F20(ts->sprites[TS_SPRITE_LICENSE_TEXT]);

    sub_801E150(ts->sprites[TS_SPRITE_SS_TEXT], 0, 0, 0, 0);
    ts->sprites[TS_SPRITE_SS_TEXT]->xPosition = 121;
    ts->sprites[TS_SPRITE_SS_TEXT]->yPosition = 80;
    ts->sprites[TS_SPRITE_SS_TEXT]->xScale = 256;
    ts->sprites[TS_SPRITE_SS_TEXT]->yScale = 256;
    ts->sprites[TS_SPRITE_SS_TEXT]->field_1F_0 = 0;
    ts->sprites[TS_SPRITE_SS_TEXT]->field_1F_2 = 0;
    ts->sprites[TS_SPRITE_SS_TEXT]->field_E = 2;
    sprite_show_8020CBC(ts->sprites[TS_SPRITE_SS_TEXT]);

    sub_801E150(ts->sprites[TS_SPRITE_SUITCASE], 2, 0, 0, 0);
    ts->sprites[TS_SPRITE_SUITCASE]->xPosition = 120;
    ts->sprites[TS_SPRITE_SUITCASE]->yPosition = 140;
    ts->sprites[TS_SPRITE_SUITCASE]->field_1F_0 = 0;
    ts->sprites[TS_SPRITE_SUITCASE]->field_1F_2 = 1;
    ts->sprites[TS_SPRITE_SUITCASE]->field_E = 2;
    ts->sprites[TS_SPRITE_SUITCASE]->field_12_4 = 1;
    sprite_show_8020CBC(ts->sprites[TS_SPRITE_SUITCASE]);

    ts->xPosSuitcase = 30720;
    ts->yPosSuitcase = 35840;
    ts->skipSuitcaseAnim = FALSE;

    BUFFER_REG_BG2HOFS = 0;
    BUFFER_REG_BG2VOFS = 0;
    BUFFER_REG_BG2PA = 256;
    BUFFER_REG_BG2PB = 0;
    BUFFER_REG_BG2PC = 0;
    BUFFER_REG_BG2PD = 256;
    BUFFER_REG_BG2X = 0;
    BUFFER_REG_BG2Y = 0;
    BUFFER_REG_BG0CNT = BGCNT_PRIORITY(2) | BGCNT_SCREENBASE(24);
    BUFFER_REG_BG0HOFS = 0;
    BUFFER_REG_BG0VOFS = 0;
    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;

    ts->mlTextPosY = 0;
    ts->mlTextScaleX = 256;
    ts->mlTextScaleY = 256;
    ts->states[TS_ITEM_SUITCASE] = -1;
}

void open_8055F74(struct TitleScreen* ts, int selection) {
    int i;

    sprite_hide_8021F20(ts->sprites[6]);
    sprite_hide_8021F20(ts->sprites[0]);

    for (i = 0; i < 3; i++) {
        sub_801E150(ts->sprites[2 + i], 3 + i, 0, 0, 0);
        ts->sprites[2 + i]->xPosition = 180;
        ts->sprites[2 + i]->yPosition = 100 + i * 20;
        sprite_show_8020CBC(ts->sprites[2 + i]);
    }

    sub_801E150(ts->sprites[1], 13, 0, 0, 0);
    ts->sprites[1]->xPosition = 112;
    ts->sprites[1]->yPosition = 92 + 20 * ts->selection;
    sprite_show_8020CBC(ts->sprites[1]);

    sub_801E150(ts->sprites[8], 0, 0, 0, 0);
    ts->sprites[8]->xPosition = 121;
    ts->sprites[8]->yPosition = 80;
    ts->sprites[8]->xScale = 256;
    ts->sprites[8]->yScale = 256;
    ts->sprites[8]->field_1F_0 = 0;
    ts->sprites[8]->field_1F_2 = 0;
    ts->sprites[8]->field_E = 2;
    sprite_show_8020CBC(ts->sprites[8]);

    sub_801E150(ts->sprites[5], 4, 0, 0, 0);
    ts->sprites[5]->xPosition = 64;
    ts->sprites[5]->yPosition = 140;
    ts->sprites[5]->field_1F_0 = 0;
    ts->sprites[5]->field_1F_2 = 1;
    ts->sprites[5]->field_E = 2;
    sprite_show_8020CBC(ts->sprites[5]);

    sub_801E150(ts->sprites[7], 3 * (selection - 1) + 1, 0, 0, 0);
    ts->sprites[7]->xPosition = 64;
    ts->sprites[7]->yPosition = 140;
    ts->sprites[7]->field_1F_0 = 1;
    ts->sprites[7]->field_E = 1;
    sprite_show_8020CBC(ts->sprites[7]);

    ts->suitcaseVisualState = 1;

    off_839EC80[0x01] |= 0x20;
    off_839EC80[0x40] = 0xF0;
    off_839EC80[0x41] = 0x00;
    off_839EC80[0x44] = 0xA0;
    off_839EC80[0x45] = 0x90;

    off_839EC80[0x48] |= 1;
    off_839EC80[0x48] |= 2;
    off_839EC80[0x48] |= 4;
    off_839EC80[0x48] |= 8;
    *(s8*)&off_839EC80[0x48] &= 0xEF;
    off_839EC80[0x48] |= 0x20;

    off_839EC80[0x4A] |= 1;
    off_839EC80[0x4A] |= 2;
    off_839EC80[0x4A] |= 4;
    off_839EC80[0x4A] |= 8;
    off_839EC80[0x4A] |= 0x10;
    off_839EC80[0x4A] |= 0x20;

    (*(vu16*)(0x2000000 + 0x18)) = 0;
    (*(vu16*)(0x2000000 + 0x1A)) = 0;
    (*(vu16*)(0x2000000 + 0x20)) = 256;
    (*(vu16*)(0x2000000 + 0x22)) = 0;
    (*(vu16*)(0x2000000 + 0x24)) = 0;
    (*(vu16*)(0x2000000 + 0x26)) = 256;
    (*(vu32*)(0x2000000 + 0x28)) = 0;
    (*(vu32*)(0x2000000 + 0x2C)) = 0;

    ts->mlTextPosY = 0;
    ts->mlTextScaleX = 256;
    ts->mlTextScaleY = 256;

    sub_80574FC();
}

void sub_8056224(void) {
    u16* dst;
    s32 i;
    u8 j;
    const u8* table;
    s32 value;
    u16 out;
    u8 limit;
    dword_3000DA0->field_0[0] -= 0x40;
    dword_3000DA0->field_0[1] -= 0x80;
    dword_3000DA0->field_0[2] -= 0x40;
    dword_3000DA0->field_0[3] -= 0x20;
    j = 0;
    dst = &dword_3000DA0->field_14;
    i = 0;
    table = dword_83A74E4;
    do {
        value = dword_3000DA0->field_0[i];
        if (value < 0) {
            value += 0xFF;
        }
        value <<= 8;
        out = ((u32)value) >> 16;
        limit = *(const u8*)((u32)i + (u32)table);
        while (j <= limit) {
            *dst = out;
            j = (u8)(j + 1);
            dst++;
        }

        i += 1;
    } while (i <= 4);
    {
        vu16* bg = (vu16*)0x04000014;
        struct ORSTData* data = dword_3000DA0;
        vu32* dma;
        *bg = data->field_14;
        dma = (vu32*)0x040000B0;
        *((vu16*)0x040000BA) = 0;
        dma[0] = (u32)(&data->field_16);
        dma[1] = (u32)bg;
        dma[2] = 0xA2400001;
    }
}


void open_update(struct TitleScreen* ts) {
    int i, j;

    sub_8021F7C();

    switch (ts->process.state) {
        case TS_STATE_FADE_IN:
            ts->brightness--;
            BUFFER_REG_BLDY = ts->brightness;
            if (ts->brightness == 0) {
                ts->process.state = byte_83A74E9[ts->entryStateIdx];
                if (ts->process.state == TS_STATE_PRESS_START_SHOW) {
                    ts->brightness = 60;
                }
            }
            break;

        case TS_STATE_TITLE_ANIMATION:
            for (i = 0; i < TS_ITEM_COUNT; i++) {
                if (ts->states[i] < 0) {
                    continue;
                }

                switch (i) {
                    case TS_ITEM_SUITCASE:
                        switch (ts->states[TS_ITEM_SUITCASE]) {
                            case TS_ITEM_SC_STATE_FALLING:
                                ts->yPosSuitcase += ts->yVelocitySuitcase;
                                ts->yVelocitySuitcase += 32;
                                if (ts->yPosSuitcase > 35839) {
                                    ts->yPosSuitcase = 35840;
                                    sub_801E150(ts->sprites[TS_SPRITE_SUITCASE], 1, 0, 0, 0);
                                    ts->sprites[TS_SPRITE_SUITCASE]->field_12_1 = 1;
                                    ts->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_HIT_GROUND;
                                }
                                break;

                            case TS_ITEM_SC_STATE_HIT_GROUND:
                                if (ts->sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(ts->sprites[TS_SPRITE_SUITCASE], 2, 0, 0, 0);
                                    ts->sprites[TS_SPRITE_SUITCASE]->field_12_1 = 1;
                                    ts->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_FALL_OVER;
                                }
                                break;

                            case TS_ITEM_SC_STATE_FALL_OVER:
                                if (ts->sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(ts->sprites[TS_SPRITE_SUITCASE], 3, 0, 0, 0);
                                    ts->sprites[TS_SPRITE_SUITCASE]->field_12_1 = 1;
                                    ts->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_OPEN;
                                }
                                break;

                            case TS_ITEM_SC_STATE_OPEN:
                                if (ts->sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(ts->sprites[TS_SPRITE_SUITCASE], 4, 0, 0, 0);
                                    BUFFER_REG_DISPCNT |= DISPCNT_BG2_ON;
                                    ts->mlTextProgression = 2560;
                                    ts->mlTextPosY = 37120;
                                    ts->mlTextScaleX = 51;
                                    ts->mlTextScaleY = 51;
                                    ts->mlTextAffineSrc.texX = 30720;
                                    ts->mlTextAffineSrc.texY = 0x4000;
                                    ts->mlTextAffineSrc.scrX = 120;
                                    ts->mlTextAffineSrc.scrY = 64;
                                    ts->mlTextAffineSrc.sx = 256;
                                    ts->mlTextAffineSrc.sy = 256;
                                    ts->mlTextAffineSrc.alpha = 0;
                                    ts->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_OPEN_WAIT;
                                    ts->states[TS_ITEM_ML_LOGO] = 0;
                                    ts->timer = 0;
                                }
                                break;

                            case TS_ITEM_SC_STATE_OPEN_WAIT:
                                if (ts->timer < 0xFFFF) {
                                    switch (ts->timer) {
                                        case 32:
                                            ts->ssTextProgression = 2470;
                                            ts->ssTextPosY = 37376;
                                            ts->ssTextScaleX = 51;
                                            ts->ssTextScaleY = 51;
                                            sub_801E150(ts->sprites[TS_SPRITE_SS_TEXT], 0, 0, 0, 0);
                                            ts->sprites[TS_SPRITE_SS_TEXT]->xPosition = 121;
                                            ts->sprites[TS_SPRITE_SS_TEXT]->yPosition = 146;
                                            ts->sprites[TS_SPRITE_SS_TEXT]->xScale = 51;
                                            ts->sprites[TS_SPRITE_SS_TEXT]->yScale = 51;
                                            ts->sprites[TS_SPRITE_SS_TEXT]->field_1F_0 = 1;
                                            ts->sprites[TS_SPRITE_SS_TEXT]->field_1F_2 = 1;
                                            ts->sprites[TS_SPRITE_SS_TEXT]->field_E = 0;
                                            sprite_show_8020CBC(ts->sprites[TS_SPRITE_SS_TEXT]);
                                            ts->states[TS_ITEM_SS_TEXT] = 0;
                                            break;

                                        case 64:
                                            ts->nTextProgression = 1945;
                                            ts->nTextPosY = 36608;
                                            ts->nTextScaleX = 51;
                                            ts->nTextScaleY = 51;
                                            sub_801E150(ts->sprites[TS_SPRITE_LICENSE_TEXT], 0, 0, 0,
                                                        0);
                                            ts->sprites[TS_SPRITE_LICENSE_TEXT]->xPosition = 118;
                                            ts->sprites[TS_SPRITE_LICENSE_TEXT]->yPosition = 143;
                                            ts->sprites[TS_SPRITE_LICENSE_TEXT]->xScale = 51;
                                            ts->sprites[TS_SPRITE_LICENSE_TEXT]->yScale = 51;
                                            ts->sprites[TS_SPRITE_LICENSE_TEXT]->field_1F_0 = 1;
                                            ts->sprites[TS_SPRITE_LICENSE_TEXT]->field_1F_2 = 1;
                                            ts->sprites[TS_SPRITE_LICENSE_TEXT]->field_E = 0;
                                            sprite_show_8020CBC(ts->sprites[TS_SPRITE_LICENSE_TEXT]);
                                            ts->states[TS_ITEM_LICENSE_TEXT] = 0;
                                            break;
                                    }
                                    ts->timer++;
                                }
                                break;

                            case TS_ITEM_SC_STATE_CLOSE:
                                if (ts->sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(ts->sprites[TS_SPRITE_SUITCASE], 2, 0, 0, 0);
                                    ts->sprites[TS_SPRITE_SUITCASE]->field_12_4 = 1;
                                    sprite_hide_8021F20(ts->sprites[TS_SPRITE_LICENSE_TEXT]);
                                    ts->states[TS_ITEM_SUITCASE] = -1;
                                    BUFFER_REG_BG0CNT = BGCNT_PRIORITY(2) | BGCNT_SCREENBASE(24);
                                    BUFFER_REG_BG0HOFS = 0;
                                    BUFFER_REG_BG0VOFS = 0;
                                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                                    if (!ts->isSkippingSuitcaseAnim) {
                                        ts->brightness = 60;
                                        ts->process.state = TS_STATE_PRESS_START_SHOW;
                                    }
                                }
                                break;
                        }
                        ts->sprites[TS_SPRITE_SUITCASE]->xPosition = ts->xPosSuitcase / 256;
                        ts->sprites[TS_SPRITE_SUITCASE]->yPosition = ts->yPosSuitcase / 256;
                        break;

                    case TS_ITEM_ML_LOGO:
                        switch (ts->states[TS_ITEM_ML_LOGO]) {
                            case 0:
                                ts->mlTextProgression -= 98;
                                ts->mlTextPosY -= ts->mlTextProgression;
                                ts->mlTextScaleX += 5;
                                ts->mlTextScaleY = ts->mlTextScaleX;
                                if (ts->mlTextScaleX > 255) {
                                    BUFFER_REG_BG2CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(1)
                                                        | BGCNT_256COLOR | BGCNT_SCREENBASE(25)
                                                        | BGCNT_AFF256x256;
                                    ts->mlTextScaleX = 256;
                                    ts->states[TS_ITEM_ML_LOGO] = 1;
                                    ts->mlTextProgression = 0;
                                }
                                break;

                            case 1:
                                ts->mlTextScaleX = word_83A74EC[2 * ts->mlTextProgression];
                                ts->mlTextScaleY = word_83A74EC[2 * ts->mlTextProgression + 1];
                                ts->mlTextProgression++;
                                // Is the cast really necessary here?
                                if ((u16)ts->mlTextProgression == 17) {
                                    ts->states[TS_ITEM_ML_LOGO] = -1;
                                }
                                break;
                        }
                        ts->mlTextAffineSrc.sx =
                            (dword_3001038 + (&loc_819832C - &loc_8198220))(0x10000, ts->mlTextScaleX);
                        ts->mlTextAffineSrc.sy =
                            (dword_3001038 + (&loc_819832C - &loc_8198220))(0x10000, ts->mlTextScaleY);
                        ts->mlTextAffineSrc.scrY = ts->mlTextPosY / 256;
                        BgAffineSet(&ts->mlTextAffineSrc, &ts->mlTextAffineDst, 1);
                        BUFFER_REG_BG2PA = ts->mlTextAffineDst.pa;
                        BUFFER_REG_BG2PB = ts->mlTextAffineDst.pb;
                        BUFFER_REG_BG2PC = ts->mlTextAffineDst.pc;
                        BUFFER_REG_BG2PD = ts->mlTextAffineDst.pd;
                        BUFFER_REG_BG2X = ts->mlTextAffineDst.dx;
                        BUFFER_REG_BG2Y = ts->mlTextAffineDst.dy;
                        break;

                    case TS_ITEM_SS_TEXT:
                        switch (ts->states[TS_ITEM_SS_TEXT]) {
                            case 0:
                                ts->ssTextProgression -= 98;
                                ts->ssTextPosY -= ts->ssTextProgression;
                                ts->ssTextScaleX += 5;
                                ts->ssTextScaleY = ts->ssTextScaleX;
                                if (ts->ssTextScaleX > 255) {
                                    ts->ssTextScaleX = 256;
                                    ts->states[TS_ITEM_SS_TEXT] = 1;
                                    ts->ssTextProgression = 0;
                                }
                                break;

                            case 1:
                                ts->ssTextScaleX = word_83A7530[2 * ts->ssTextProgression];
                                ts->ssTextScaleY = word_83A7530[2 * ts->ssTextProgression + 1];
                                ts->ssTextProgression++;
                                if ((u16)ts->ssTextProgression == 17) {
                                    ts->states[TS_ITEM_SS_TEXT] = -1;
                                }
                                break;
                        }
                        ts->sprites[TS_SPRITE_SS_TEXT]->yPosition = ts->ssTextPosY / 256;
                        ts->sprites[TS_SPRITE_SS_TEXT]->xScale = ts->ssTextScaleX;
                        ts->sprites[TS_SPRITE_SS_TEXT]->yScale = ts->ssTextScaleY;
                        break;

                    case TS_ITEM_LICENSE_TEXT:
                        switch (ts->states[TS_ITEM_LICENSE_TEXT]) {
                            case 0:
                                ts->nTextProgression -= 98;
                                if (ts->nTextProgression < 0) {
                                    ts->sprites[TS_SPRITE_LICENSE_TEXT]->field_1F_0 =
                                        ts->sprites[TS_SPRITE_LICENSE_TEXT]->field_1F_2 = 0;
                                }
                                ts->nTextPosY -= ts->nTextProgression;
                                ts->nTextScaleX += 5;
                                ts->nTextScaleY = ts->nTextScaleX;
                                if (ts->nTextScaleX > 255) {
                                    ts->nTextScaleX = 256;
                                    ts->states[TS_ITEM_LICENSE_TEXT] = 1;
                                    ts->nTextProgression = 0;
                                }
                                break;

                            case 1:
                                ts->nTextScaleX = word_83A7574[2 * ts->nTextProgression];
                                ts->nTextScaleY = word_83A7574[2 * ts->nTextProgression + 1];
                                ts->nTextProgression++;
                                if ((u16)ts->nTextProgression == 17) {
                                    sub_801E150(ts->sprites[TS_SPRITE_SUITCASE], 5, 0, 0, 0);
                                    ts->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_CLOSE;
                                    ts->skipSuitcaseAnim = FALSE;
                                    ts->states[TS_ITEM_LICENSE_TEXT] = -1;
                                }
                                break;
                        }
                        ts->sprites[TS_SPRITE_LICENSE_TEXT]->yPosition = ts->nTextPosY / 256;
                        ts->sprites[TS_SPRITE_LICENSE_TEXT]->xScale = ts->nTextScaleX;
                        ts->sprites[TS_SPRITE_LICENSE_TEXT]->yScale = ts->nTextScaleY;
                        break;
                }
            }

            if (!ts->isSkippingSuitcaseAnim) {
                if (ts->skipSuitcaseAnim
                    && gGameState.field_2A & (A_BUTTON | B_BUTTON | SELECT_BUTTON | START_BUTTON)) {
                    ts->isSkippingSuitcaseAnim = TRUE;
                    ts->brightness = 16;
                }
            } else {
                ts->brightness--;
                BUFFER_REG_BLDY = 16 - ts->brightness;
                if (ts->brightness == 0) {
                    ts->process.state = TS_STATE_FADE_IN;
                    ts->entryStateIdx = 1;
                    ts->brightness = 16;
                    open_8055E2C(ts);
                    BUFFER_REG_DISPCNT |= DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON
                                          | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
                }
            }
            break;

        case TS_STATE_PRESS_START_SHOW:
            ts->brightness--;
            if (ts->brightness == 0) {
                ts->psTextPosY = 30720;
                sub_801E150(ts->sprites[TS_SPRITE_PRESS_START_TEXT], 0, 0, 0, 0);
                ts->sprites[TS_SPRITE_PRESS_START_TEXT]->xPosition = 120;
                ts->sprites[TS_SPRITE_PRESS_START_TEXT]->yPosition = 120;
                ts->sprites[TS_SPRITE_PRESS_START_TEXT]->field_1F_0 = 0;
                ts->sprites[TS_SPRITE_PRESS_START_TEXT]->field_1F_2 = 0;
                ts->sprites[TS_SPRITE_PRESS_START_TEXT]->field_E = 0;
                sprite_show_8020CBC(ts->sprites[TS_SPRITE_PRESS_START_TEXT]);
                ts->process.state = TS_STATE_PRESS_START_WAIT;
            }
            break;

        case TS_STATE_PRESS_START_WAIT:
            if (gGameState.field_2A & (A_BUTTON | START_BUTTON)) {
                ts->psTextVelocity = 0;
                ts->states[TS_ITEM_PRESS_START_TEXT] = 2;
                ts->xVelocitySuitcase = 0;
                ts->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_MOVE_LEFT;
                play_sfx_80195B4(96, -1);
                ts->process.state = TS_STATE_SUITCASE_OPENS;
            }
            break;

        case TS_STATE_SUITCASE_OPENS:
            for (j = 0; j < TS_ITEM_COUNT; j++) {
                if (ts->states[j] < 0) {
                    continue;
                }

                switch (j) {
                    case TS_ITEM_SUITCASE:
                        switch (ts->states[TS_ITEM_SUITCASE]) {
                            case TS_ITEM_SC_STATE_MOVE_LEFT:
                                ts->xVelocitySuitcase -= 102;
                                ts->xPosSuitcase += ts->xVelocitySuitcase;
                                if (ts->xPosSuitcase <= 0x2000) {
                                    ts->xPosSuitcase = 0x4000;
                                    sub_801E150(ts->sprites[TS_SPRITE_SUITCASE], 6, 0, 0, 0);
                                    ts->timer = 0;
                                    ts->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_BUMP_OPEN;
                                }
                                break;

                            case TS_ITEM_SC_STATE_BUMP_OPEN:
                                if (ts->sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(ts->sprites[TS_SPRITE_SUITCASE], 4, 0, 0, 0);
                                    ts->states[TS_ITEM_SUITCASE] = -1;
                                }

                                if (ts->timer < 0xFFFF) {
                                    if (ts->timer == 15) {
                                        ts->beanPosX = 0x4000;
                                        ts->beanPosY = 33280;
                                        ts->beanVelocityX = 384;
                                        ts->beanVelocityY = 1536;
                                        sub_801E150(ts->sprites[TS_SPRITE_BEAN_POINTER], 11, 0, 0, 0);
                                        ts->sprites[TS_SPRITE_BEAN_POINTER]->xPosition = 64;
                                        ts->sprites[TS_SPRITE_BEAN_POINTER]->yPosition = 130;
                                        ts->sprites[TS_SPRITE_BEAN_POINTER]->field_1F_0 = 0;
                                        ts->sprites[TS_SPRITE_BEAN_POINTER]->field_1F_2 = 0;
                                        ts->sprites[TS_SPRITE_BEAN_POINTER]->field_E = 0;
                                        sprite_show_8020CBC(ts->sprites[TS_SPRITE_BEAN_POINTER]);
                                        ts->states[TS_ITEM_POINTER] = 0;
                                    }
                                    ts->timer++;
                                }
                                break;
                        }
                        ts->sprites[TS_SPRITE_SUITCASE]->xPosition = ts->xPosSuitcase / 256;
                        ts->sprites[TS_SPRITE_SUITCASE]->yPosition = ts->yPosSuitcase / 256;
                        break;

                    case TS_ITEM_PRESS_START_TEXT:
                        if (ts->states[TS_ITEM_PRESS_START_TEXT] == 2) {
                            ts->psTextVelocity -= 98;
                            ts->psTextPosY -= ts->psTextVelocity;
                            if (ts->psTextPosY > 45055) {
                                sprite_hide_8021F20(ts->sprites[TS_SPRITE_PRESS_START_TEXT]);
                                ts->states[TS_ITEM_PRESS_START_TEXT] = -1;
                            }
                        }
                        ts->sprites[TS_SPRITE_PRESS_START_TEXT]->yPosition = ts->psTextPosY / 256;
                        break;

                    case TS_ITEM_POINTER:
                        switch (ts->states[TS_ITEM_POINTER]) {
                            case 0:
                                ts->beanVelocityY -= 98;
                                ts->beanPosY -= ts->beanVelocityY;
                                ts->beanPosX += ts->beanVelocityX;
                                if (ts->beanVelocityY < 0 && ts->beanPosY > 35839) {
                                    ts->beanPosY = 35840;
                                    ts->spriteIdx = 2;
                                    ts->states[TS_ITEM_POINTER] = 1;
                                }
                                break;

                            case 1:
                                if (ts->beanPosY / 256 <= 20 * ts->spriteIdx + 92) {
                                    sub_801E150(ts->sprites[ts->spriteIdx + 2], ts->spriteIdx + 3, 0, 0,
                                                0);
                                    ts->sprites[ts->spriteIdx + 2]->xPosition = 180;
                                    ts->sprites[ts->spriteIdx + 2]->yPosition =
                                        20 * ts->spriteIdx + 100;
                                    sprite_show_8020CBC(ts->sprites[ts->spriteIdx + 2]);

                                    if (ts->spriteIdx == 0) {
                                        sub_801E150(ts->sprites[TS_SPRITE_BEAN_POINTER], 12, 0, 0, 0);
                                        ts->states[TS_ITEM_POINTER] = 2;
                                    } else {
                                        ts->spriteIdx--;
                                    }
                                }

                                if (ts->states[TS_ITEM_POINTER] == 1) {
                                    ts->beanPosY -= 1536;
                                }
                                break;

                            case 2:
                                if (ts->sprites[TS_SPRITE_BEAN_POINTER]->field_12_3) {
                                    sub_801E150(ts->sprites[TS_SPRITE_BEAN_POINTER], 13, 0, 0, 0);
                                    sub_801E150(ts->sprites[TS_SPRITE_SUITCASE_VISUAL], 0, 0, 0, 0);
                                    ts->sprites[TS_SPRITE_SUITCASE_VISUAL]->xPosition = 64;
                                    ts->sprites[TS_SPRITE_SUITCASE_VISUAL]->yPosition = 140;
                                    ts->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_1F_0 = 1;
                                    ts->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_E = 1;
                                    sprite_show_8020CBC(ts->sprites[TS_SPRITE_SUITCASE_VISUAL]);
                                    ts->suitcaseVisualState = TS_SV_STATE_APPEAR;

                                    off_839EC80[REG_OFFSET_DISPCNT + 1] |= DISPCNT_WIN0_ON >> 8;
                                    off_839EC80[REG_OFFSET_WIN0H] = 240;
                                    off_839EC80[REG_OFFSET_WIN0H + 1] = 0;
                                    off_839EC80[REG_OFFSET_WIN0V] = 160;
                                    off_839EC80[REG_OFFSET_WIN0V + 1] = 144;
                                    off_839EC80[REG_OFFSET_WININ] |= WININ_WIN0_BG0;
                                    off_839EC80[REG_OFFSET_WININ] |= WININ_WIN0_BG1;
                                    off_839EC80[REG_OFFSET_WININ] |= WININ_WIN0_BG2;
                                    off_839EC80[REG_OFFSET_WININ] |= WININ_WIN0_BG3;
                                    *(s8*)&off_839EC80[REG_OFFSET_WININ] &= ~WININ_WIN0_OBJ;
                                    off_839EC80[REG_OFFSET_WININ] |= WININ_WIN0_CLR;
                                    off_839EC80[REG_OFFSET_WINOUT] |= WINOUT_WIN01_BG0;
                                    off_839EC80[REG_OFFSET_WINOUT] |= WINOUT_WIN01_BG1;
                                    off_839EC80[REG_OFFSET_WINOUT] |= WINOUT_WIN01_BG2;
                                    off_839EC80[REG_OFFSET_WINOUT] |= WINOUT_WIN01_BG3;
                                    off_839EC80[REG_OFFSET_WINOUT] |= WINOUT_WIN01_OBJ;
                                    off_839EC80[REG_OFFSET_WINOUT] |= WINOUT_WIN01_CLR;

                                    sub_80574FC();
                                    ts->process.state = TS_STATE_GAME_SELECT;
                                }
                                break;
                        }
                        ts->sprites[TS_SPRITE_BEAN_POINTER]->xPosition = ts->beanPosX / 256;
                        ts->sprites[TS_SPRITE_BEAN_POINTER]->yPosition = ts->beanPosY / 256;
                        break;
                }
            }
            break;

        case TS_STATE_GAME_SELECT:
            if (gGameState.field_2A & (A_BUTTON | START_BUTTON)) {
                BUFFER_REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
                BUFFER_REG_BLDY = 0;
                ts->brightness = 16;
                play_sfx_80195B4(96, -1);
                sub_80193B4(0, 0, 16);
                ts->process.state = TS_STATE_FADE_OUT;
            } else {
                s8 selection = ts->selection;
                if (gGameState.field_2E & DPAD_UP) {
                    ts->selection--;
                    if (ts->selection < 0) {
                        ts->selection = 2;
                    }
                    play_sfx_80195B4(95, -1);
                } else if (gGameState.field_2E & DPAD_DOWN) {
                    ts->selection++;
                    if (ts->selection > 2) {
                        ts->selection = 0;
                    }
                    play_sfx_80195B4(95, -1);
                }

                if (ts->selection != selection) {
                    if (ts->suitcaseVisualState != TS_SV_STATE_DISAPPEAR) {
                        sub_801E150(ts->sprites[TS_SPRITE_SUITCASE_VISUAL], 3 * selection + 2, 0, 0, 0);
                    }
                    ts->suitcaseVisualState = TS_SV_STATE_DISAPPEAR;
                    ts->sprites[TS_SPRITE_BEAN_POINTER]->yPosition = 20 * ts->selection + 92;
                }
            }
            break;

        case TS_STATE_FADE_OUT:
            ts->brightness--;
            BUFFER_REG_BLDY = 16 - ts->brightness;
            if (ts->brightness != 0) {
                break;
            }

            if (ts != NULL) {
                sub_805737C(ts, 3);
            }

            switch (ts->selection) {
                case 0:
                    sub_80574B4();
                    sub_801AFE4(0);
                    BUFFER_REG_BLDCNT = 0;
                    //! Change this when other function is matching too.
                    load_init_812538C(alloc_Zero(356, 0, "LOAD", 0), 8,
                                      "LOAD", 0xFFFF);
                    return;

                case 1:
                    stru_203FFF8.field_7_0 = 1;
                    BUFFER_REG_BLDCNT = 0;
                    sub_81DA6C8(64);
                    return;

                case 2:
                    sub_80574B4();
                    //! Change this when other function is matching too.
                    optn_init(alloc_Zero(84, 0, "OPTN", 0), 8,
                              "OPTN", 0);
                    return;

                default:
                    return;
            }
            break;
    }

    switch (ts->suitcaseVisualState) {
        case TS_SV_STATE_APPEAR:
            if (ts->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_12_3) {
                sub_801E150(ts->sprites[TS_SPRITE_SUITCASE_VISUAL], 3 * ts->selection + 1, 0, 0, 0);
                ts->suitcaseVisualState = TS_SV_STATE_IDLE;
            }
            break;

        case TS_SV_STATE_DISAPPEAR:
            if (ts->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_12_3) {
                sub_801E150(ts->sprites[TS_SPRITE_SUITCASE_VISUAL], 3 * ts->selection, 0, 0, 0);
                ts->suitcaseVisualState = TS_SV_STATE_APPEAR;
            }
            break;
    }
}

void opdr_update2(struct MarioBrosScoreVisual* opdr) {
    struct TitleScreen* ts;
    int var1;

    ts = (struct TitleScreen*)opdr->process.parentProcess;
    sub_8020A78();
    var1 = gGameState.field_880;

    if ((u8)(ts->sprites[7]->field_20[1] - 3) <= 2) {
        struct struc_11* var11;
        struct struc_203FFB8* s;
        int y2;
        int i;
        s16 t;
        int j;

        s = &stru_203FFB8;
        var11 = s->field_38;
        t = word_83A75B8[ts->sprites[7]->field_22 - 10];
        for (i = 0; i < 6; i++) {
            var11->field_0 = t - 34;
            var11->field_2 = 43 + i * 7;
            var11->field_4 = (opdr->topScore[i] + 44) | 0x2400;
            var11->field_6 = 0;
            var11->field_8 = 0x40000000;
            var11 = var11->field_10;
        }

        y2 = word_83A75C8[ts->sprites[7]->field_22 - 10] - 21;
        for (j = 0; j < 2; j++) {
            var11->field_0 = y2;
            var11->field_2 = 64 + j * 7;
            var11->field_4 = (opdr->pScore[j] + 44) | 0x2400;
            var11->field_6 = 0;
            var11->field_8 = 0x40000000;
            var11 = var11->field_10;
        }

        s->field_38 = var11;
    }

    dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 2580);
    var1 = dword_3000D4C(stru_203FFB8.field_3C, var1);
    gGameState.field_880 = var1;
}

static inline char* write_number_to_string_and_advance(char* string, u32* value) {
    *string = *value % 10;
    *value /= 10;
    return string - 1;
}

/**
 * Initialises the process for the Mario Bros Score visual on the title screen.
 */
struct MarioBrosScoreVisual* mbsv_init(struct MarioBrosScoreVisual* mbsv, u8 priority, char* label,
                                       u32 topScore, u8 pScore) {
    char* topScoreStr;
    char* pScoreHigher;
    char* pScoreLower;

    process_add(&mbsv->process, priority, label);
    mbsv->process.definition = &stru_8CDC248;

    topScoreStr = &mbsv->topScore[5];
    topScoreStr = write_number_to_string_and_advance(topScoreStr, &topScore);
    topScoreStr = write_number_to_string_and_advance(topScoreStr, &topScore);
    topScoreStr = write_number_to_string_and_advance(topScoreStr, &topScore);
    topScoreStr = write_number_to_string_and_advance(topScoreStr, &topScore);
    topScoreStr = write_number_to_string_and_advance(topScoreStr, &topScore);
    topScoreStr = write_number_to_string_and_advance(topScoreStr, &topScore);

    pScoreLower = &mbsv->pScore[0];
    pScoreHigher = &mbsv->pScore[1];
    *pScoreHigher = pScore % 10;
    pScore /= 10;
    *pScoreLower = pScore % 10;

    return mbsv;
}

inline struct Process* sub_8057484(struct Process* opdr, u8 priority, char* label) {
    process_add(opdr, priority, label);
    opdr->definition = &stru_8CDC268;
    return opdr;
}

inline void sub_80574A0(void) {
    REG_SIOMLT_SEND = 0xFEFE;
}

inline void sub_80574B4(void) {
    REG_IME = 0;
    REG_IE &= ~INTR_FLAG_SERIAL;
    REG_IF |= INTR_FLAG_SERIAL;
    REG_IME = 1;

    REG_IME = 0;
    REG_SIOCNT = SIO_MULTI_MODE | SIO_115200_BPS;
    REG_IME = 1;
}

inline void sub_80574FC(void) {
    sub_8018B78(1, sub_80574A0);

    REG_IME = 0;
    REG_RCNT = 0;
    REG_SIOCNT = SIO_MULTI_MODE;
    REG_SIOCNT |= SIO_INTR_ENABLE | SIO_115200_BPS;
    REG_SIOMLT_SEND = 0xFEFE;
    REG_IME = 1;

    REG_IME = 0;
    REG_IE |= INTR_FLAG_SERIAL;
    REG_IF |= INTR_FLAG_SERIAL;
    REG_IME = 1;
}
