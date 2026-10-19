#include "global.h"
#include "common.h"
#include "title_screen.h"

inline void title_screen_destroy(struct TitleScreen* titleScreen, int flags) {
    titleScreen->process.definition = &stru_8CDC238;
    DmaStop(0);
    runtime_install_interrupt_callback(2, 0);

    if (titleScreen->mbsv) {
        process_remove(&titleScreen->mbsv->process, 3);
    }

    free_heap_8018DA8(dword_3000DA0);
    sub_8021FD4();
    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 |= 1;
    BUFFER_REG_DISPCNT = 0;
    gGameState.field_31 = 2;
    sub_8017E34();
    process_remove(&titleScreen->process, flags);
}

inline void sprite_renderer_update(void) {
    int var1 = gGameState.field_880;
    sub_8020A78();
    dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 2580);
    var1 = dword_3000D4C(stru_203FFB8.field_3C, var1);
    gGameState.field_880 = var1;
}

inline void company_intro_destroy(struct CompanyIntro* intro, int flags) {
    intro->process.definition = &stru_8CDC258;
    sub_8021FD4();
    if (intro->opdr) {
        process_remove(intro->opdr, 3);
    }
    process_remove(&intro->process, flags);
}

struct CompanyIntro* company_intro_create(struct CompanyIntro* intro, u8 priority, char* label) {
    struct Process* renderer;
    void* cgdw;
    struct struc_203FFF8* v11;
    vu32 zero;

    process_add(&intro->process, priority, label);
    intro->process.definition = &stru_8CDC258;

    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 = 1;
    BUFFER_REG_DISPCNT = 0;
    sub_8017E34();

    renderer = (struct Process*)alloc_Zero(sizeof(struct Process), 0, "OPDR", 0);
    process_add(renderer, 8, "OPDR");
    renderer->definition = &stru_8CDC268;
    intro->opdr = renderer;
    renderer->parentProcess = &intro->process;

    dword_3000C78 = 0;
    sub_8020994(0, 0, 0, 0x80);
    stru_203FFB8.field_0_2 = 1;

    intro->mario = sub_8020DD0(2, 4097, 1, -1, -1, -1, -1);
    sub_801E150(intro->mario, 12, -1, 0, 0);
    intro->mario->xPosition = 80;
    intro->mario->yPosition = -35;
    intro->mario->field_11_6 = 1;

    intro->luigi = sub_8020DD0(2, 4098, 1, -1, -1, -1, -1);
    sub_801E150(intro->luigi, 12, -1, 0, 0);
    intro->luigi->xPosition = 160;
    intro->luigi->yPosition = -35;

    intro->alphaDreamLogo = sub_8020DD0(7, 33103, 1, -1, -1, -1, -1);
    sub_801E150(intro->alphaDreamLogo, 0, -1, 0, 0);
    intro->alphaDreamLogo->xPosition = 120;
    intro->alphaDreamLogo->yPosition = 74;

    sub_80213A0(0, 4109, -1, 1);
    sub_80213A0(0, 4110, -1, 1);
    intro->xPosMario = 20480;
    intro->yPosMario = -8960;
    intro->xPosLuigi = 40960;
    intro->yPosLuigi = -8960;

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

    intro->verticalOffset = 25344;
    CpuFastSet(&dword_83A3498, (void*)0x2000000 + 0x80, 8);
    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 = -1;

    sprite_show_8020CBC(intro->mario);
    sprite_show_8020CBC(intro->luigi);

    intro->velocity = 0;
    intro->acceleration = 117;
    intro->flags = 1;
    intro->process.state = 0;

    BUFFER_REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_OBJ_ON;

    return intro;
}

void company_intro_update(struct CompanyIntro* intro) {
    switch (intro->process.state) {
        case 0:
            intro->yPosMario += intro->velocity;
            intro->yPosLuigi += intro->velocity;
            intro->verticalOffset -= intro->velocity;
            intro->velocity = intro->velocity + intro->acceleration;
            if (intro->verticalOffset <= 0) {
                intro->brightness = 16;
                intro->verticalOffset = 0;
                intro->velocity = -1324;
                play_sfx_80195B4(134, -1);
                intro->process.state = 1;
            }
            break;

        case 1:
            if (intro->brightness > 10) {
                intro->verticalOffset ^= 512;
            } else {
                intro->verticalOffset ^= 256;
            }
            intro->brightness--;
            if (intro->brightness == 0) {
                intro->brightness = 100;
                BUFFER_REG_BG0VOFS = 0;
                intro->process.state = 2;
            }
            break;

        case 2:
            if (intro->brightness == 80) {
                play_sfx_80195B4(221, -1);
            }
            intro->brightness--;
            if (intro->brightness == 0) {
                intro->brightness = 16;
                BUFFER_REG_BLDCNT = 191;
                BUFFER_REG_BLDY = 0;
                intro->process.state = 3;
            }
            break;

        case 3:
            intro->brightness--;
            BUFFER_REG_BLDY = 16 - intro->brightness;
            if (intro->brightness == 0) {
                sprite_hide_8021F20(intro->mario);
                sprite_hide_8021F20(intro->luigi);
                CpuFastSet(dword_83A3D60, (void*)0x2000000 + 0x80, 8);
                gGameState.field_2 = -1;
                BUFFER_REG_BG0CNT = BGCNT_CHARBASE(3) | BGCNT_SCREENBASE(29);
                sprite_show_8020CBC(intro->alphaDreamLogo);
                intro->alphaDreamLogo->field_12_4 = 1;
                intro->brightness = 16;
                intro->process.state = 4;
            }
            break;

        case 4:
            intro->brightness--;
            BUFFER_REG_BLDY = intro->brightness;
            if (gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) {
                intro->brightness = 16 - intro->brightness;
                intro->process.state = 6;
            } else if (intro->brightness == 0) {
                intro->brightness = 120;
                intro->alphaDreamLogo->field_12_4 = 0;
                intro->alphaDreamLogo->field_12_1 = 1;
                intro->process.state = 5;
            }
            break;

        case 5:
            if ((gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) == 0) {
                intro->brightness--;
                if (intro->brightness != 0) {
                    break;
                }
            }
            intro->brightness = 16;
            intro->process.state = 6;
            break;

        case 6:
            intro->brightness--;
            BUFFER_REG_BLDY = 16 - intro->brightness;
            if (intro->brightness == 0) {
                if (intro) {
                    company_intro_destroy(intro, 3);
                }
                title_screen_create(alloc_Zero(sizeof(struct TitleScreen), 0, "OPEN", 0), 8, "OPEN", 0);
                return;
            }
            break;
    }

    if (intro->process.state < 3) {
        if (intro->process.state != 0 && intro->flags) {
            intro->xPosMario -= 384;
            intro->xPosLuigi += 384;
            intro->yPosMario += intro->velocity;
            intro->yPosLuigi += intro->velocity;
            intro->velocity += intro->acceleration;
            if (intro->yPosMario >= 24064) {
                bool32 temp;
                intro->yPosMario = 24064;
                intro->yPosLuigi = 24064;
                sub_80210A8(intro->mario, 2, 4109, 1, -1, -1, -1, -1);
                sub_801E150(intro->mario, 0, -1, 0, 0);
                sprite_show_8020CBC(intro->mario);
                temp = intro->mario->field_11_6;
                temp ^= 1;
                intro->mario->field_11_6 = temp;
                intro->mario->field_12_1 = 1;

                sub_80210A8(intro->luigi, 2, 4110, 1, -1, -1, -1, -1);
                sub_801E150(intro->luigi, 0, -1, 0, 0);
                sprite_show_8020CBC(intro->luigi);
                intro->luigi->field_12_1 = 1;
                intro->flags = 0;
            }
        }
        BUFFER_REG_BG0VOFS = intro->verticalOffset / 256;
        intro->mario->xPosition = intro->xPosMario / 256;
        intro->mario->yPosition = intro->yPosMario / 256;
        intro->luigi->xPosition = intro->xPosLuigi / 256;
        intro->luigi->yPosition = intro->yPosLuigi / 256;
    }

    sub_8021F7C();
}

struct TitleScreen* title_screen_create(struct TitleScreen* titleScreen, u8 priority, char* label,
                                        int selection) {
    struct struc_203FFF8* v5;
    void* cgdw;
    u32 i;

    process_add(&titleScreen->process, priority, label);
    titleScreen->process.definition = &stru_8CDC238;

    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 = 1;
    BUFFER_REG_DISPCNT = 0;
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
        struct MarioBrosScoreVisual** p = &titleScreen->mbsv;
        *p = mario_bros_score_visual_create(alloc_Zero(0x24, 0, "OPDR", 0), 8, "OPDR",
                                            stru_203FFF8.field_0, stru_203FFF8.field_4);
        (*p)->process.parentProcess = &titleScreen->process;
    }

    titleScreen->selection = selection != 0 ? selection - 1 : 0;
    titleScreen->suitcaseVisualState = TS_SV_STATE_APPEAR;
    titleScreen->brightness = 16;
    titleScreen->isSkippingSuitcaseAnim = 0;
    titleScreen->skipSuitcaseAnim = 1;
    titleScreen->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_FALLING;
    for (i = TS_ITEM_ML_LOGO; i < TS_ITEM_COUNT; i++) {
        titleScreen->states[i] = -1;
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
        titleScreen->sprites[i] =
            sub_8020DD0(0, word_83A74C0[i * 2], word_83A74C0[i * 2 + 1], -1, -1, -1, -1);
        sub_801E150(titleScreen->sprites[i], 0, -1, 0, 0);
    }

    if (selection == 0) {
        titleScreen->xPosSuitcase = 30720;
        titleScreen->yPosSuitcase = 0;
        titleScreen->yVelocitySuitcase = 512;
        sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE], 0, 0, 0, 0);
        titleScreen->sprites[TS_SPRITE_SUITCASE]->xPosition = 120;
        titleScreen->sprites[TS_SPRITE_SUITCASE]->yPosition = 0;
        titleScreen->sprites[TS_SPRITE_SUITCASE]->field_1F_0 = 0;
        titleScreen->sprites[TS_SPRITE_SUITCASE]->field_1F_2 = 1;
        titleScreen->sprites[TS_SPRITE_SUITCASE]->field_E = 2;
        sprite_show_8020CBC(titleScreen->sprites[TS_SPRITE_SUITCASE]);
    } else {
        title_screen_prepare_game_select(titleScreen, selection);
    }

    dword_3000C78 = sub_800063C;

    BUFFER_REG_BLDCNT = 191;
    BUFFER_REG_BLDY = 16;
    BUFFER_REG_BG0CNT = 6146;
    BUFFER_REG_BG1CNT = 23043;
    BUFFER_REG_BG2CNT = 22916;
    BUFFER_REG_BG0HOFS = 0;
    BUFFER_REG_BG0VOFS = 0;
    BUFFER_REG_BG1HOFS = 0;
    BUFFER_REG_BG1VOFS = 0;

    CpuFastSet(gGameState.field_888_1 == 0 ? dword_83A7140 : dword_83A7300, (void*)0x2000080, 112);

    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 = -1;
    gGameState.field_0 = -1;
    runtime_install_interrupt_callback(2, title_screen_scroll_background_hblank);
    sub_8019308(0, 41, -1);

    if (selection == 0) {
        titleScreen->entryStateIdx = 0;
        BUFFER_REG_DISPCNT |= 4673;
    } else {
        titleScreen->entryStateIdx = 2;
        BUFFER_REG_DISPCNT |= 5953;
    }

    return titleScreen;
}

void title_screen_prepare_press_start(struct TitleScreen* titleScreen) {
    sprite_hide_8021F20(titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]);

    sub_801E150(titleScreen->sprites[TS_SPRITE_SS_TEXT], 0, 0, 0, 0);
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->xPosition = 121;
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->yPosition = 80;
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->xScale = 256;
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->yScale = 256;
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->field_1F_0 = 0;
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->field_1F_2 = 0;
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->field_E = 2;
    sprite_show_8020CBC(titleScreen->sprites[TS_SPRITE_SS_TEXT]);

    sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE], 2, 0, 0, 0);
    titleScreen->sprites[TS_SPRITE_SUITCASE]->xPosition = 120;
    titleScreen->sprites[TS_SPRITE_SUITCASE]->yPosition = 140;
    titleScreen->sprites[TS_SPRITE_SUITCASE]->field_1F_0 = 0;
    titleScreen->sprites[TS_SPRITE_SUITCASE]->field_1F_2 = 1;
    titleScreen->sprites[TS_SPRITE_SUITCASE]->field_E = 2;
    titleScreen->sprites[TS_SPRITE_SUITCASE]->field_12_4 = 1;
    sprite_show_8020CBC(titleScreen->sprites[TS_SPRITE_SUITCASE]);

    titleScreen->xPosSuitcase = 30720;
    titleScreen->yPosSuitcase = 35840;
    titleScreen->skipSuitcaseAnim = FALSE;

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

    titleScreen->mlTextPosY = 0;
    titleScreen->mlTextScaleX = 256;
    titleScreen->mlTextScaleY = 256;
    titleScreen->states[TS_ITEM_SUITCASE] = -1;
}

void title_screen_prepare_game_select(struct TitleScreen* titleScreen, int selection) {
    int i;

    sprite_hide_8021F20(titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]);
    sprite_hide_8021F20(titleScreen->sprites[TS_SPRITE_PRESS_START_TEXT]);

    for (i = 0; i < 3; i++) {
        sub_801E150(titleScreen->sprites[TS_SPRITE_ML_GAME_TEXT + i], 3 + i, 0, 0, 0);
        titleScreen->sprites[TS_SPRITE_ML_GAME_TEXT + i]->xPosition = 180;
        titleScreen->sprites[TS_SPRITE_ML_GAME_TEXT + i]->yPosition = 100 + i * 20;
        sprite_show_8020CBC(titleScreen->sprites[TS_SPRITE_ML_GAME_TEXT + i]);
    }

    sub_801E150(titleScreen->sprites[TS_SPRITE_BEAN_POINTER], 13, 0, 0, 0);
    titleScreen->sprites[TS_SPRITE_BEAN_POINTER]->xPosition = 112;
    titleScreen->sprites[TS_SPRITE_BEAN_POINTER]->yPosition = 92 + 20 * titleScreen->selection;
    sprite_show_8020CBC(titleScreen->sprites[TS_SPRITE_BEAN_POINTER]);

    sub_801E150(titleScreen->sprites[TS_SPRITE_SS_TEXT], 0, 0, 0, 0);
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->xPosition = 121;
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->yPosition = 80;
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->xScale = 256;
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->yScale = 256;
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->field_1F_0 = 0;
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->field_1F_2 = 0;
    titleScreen->sprites[TS_SPRITE_SS_TEXT]->field_E = 2;
    sprite_show_8020CBC(titleScreen->sprites[TS_SPRITE_SS_TEXT]);

    sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE], 4, 0, 0, 0);
    titleScreen->sprites[TS_SPRITE_SUITCASE]->xPosition = 64;
    titleScreen->sprites[TS_SPRITE_SUITCASE]->yPosition = 140;
    titleScreen->sprites[TS_SPRITE_SUITCASE]->field_1F_0 = 0;
    titleScreen->sprites[TS_SPRITE_SUITCASE]->field_1F_2 = 1;
    titleScreen->sprites[TS_SPRITE_SUITCASE]->field_E = 2;
    sprite_show_8020CBC(titleScreen->sprites[TS_SPRITE_SUITCASE]);

    sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL], 3 * (selection - 1) + 1, 0, 0, 0);
    titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->xPosition = 64;
    titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->yPosition = 140;
    titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_1F_0 = 1;
    titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_E = 1;
    sprite_show_8020CBC(titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]);

    titleScreen->suitcaseVisualState = TS_SV_STATE_IDLE;

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

    BUFFER_REG_BG2HOFS = 0;
    BUFFER_REG_BG2VOFS = 0;
    BUFFER_REG_BG2PA = 256;
    BUFFER_REG_BG2PB = 0;
    BUFFER_REG_BG2PC = 0;
    BUFFER_REG_BG2PD = 256;
    BUFFER_REG_BG2X = 0;
    BUFFER_REG_BG2Y = 0;

    titleScreen->mlTextPosY = 0;
    titleScreen->mlTextScaleX = 256;
    titleScreen->mlTextScaleY = 256;

    multiplayer_serial_enable();
}

void title_screen_scroll_background_hblank(void) {
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

void title_screen_update(struct TitleScreen* titleScreen) {
    int i, j;

    sub_8021F7C();

    switch (titleScreen->process.state) {
        case TS_STATE_FADE_IN:
            titleScreen->brightness--;
            BUFFER_REG_BLDY = titleScreen->brightness;
            if (titleScreen->brightness == 0) {
                titleScreen->process.state = byte_83A74E9[titleScreen->entryStateIdx];
                if (titleScreen->process.state == TS_STATE_PRESS_START_SHOW) {
                    titleScreen->brightness = 60;
                }
            }
            break;

        case TS_STATE_TITLE_ANIMATION:
            for (i = 0; i < TS_ITEM_COUNT; i++) {
                if (titleScreen->states[i] < 0) {
                    continue;
                }

                switch (i) {
                    case TS_ITEM_SUITCASE:
                        switch (titleScreen->states[TS_ITEM_SUITCASE]) {
                            case TS_ITEM_SC_STATE_FALLING:
                                titleScreen->yPosSuitcase += titleScreen->yVelocitySuitcase;
                                titleScreen->yVelocitySuitcase += 32;
                                if (titleScreen->yPosSuitcase > 35839) {
                                    titleScreen->yPosSuitcase = 35840;
                                    sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE], 1, 0, 0, 0);
                                    titleScreen->sprites[TS_SPRITE_SUITCASE]->field_12_1 = 1;
                                    titleScreen->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_HIT_GROUND;
                                }
                                break;

                            case TS_ITEM_SC_STATE_HIT_GROUND:
                                if (titleScreen->sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE], 2, 0, 0, 0);
                                    titleScreen->sprites[TS_SPRITE_SUITCASE]->field_12_1 = 1;
                                    titleScreen->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_FALL_OVER;
                                }
                                break;

                            case TS_ITEM_SC_STATE_FALL_OVER:
                                if (titleScreen->sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE], 3, 0, 0, 0);
                                    titleScreen->sprites[TS_SPRITE_SUITCASE]->field_12_1 = 1;
                                    titleScreen->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_OPEN;
                                }
                                break;

                            case TS_ITEM_SC_STATE_OPEN:
                                if (titleScreen->sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE], 4, 0, 0, 0);
                                    BUFFER_REG_DISPCNT |= DISPCNT_BG2_ON;
                                    titleScreen->mlTextProgression = 2560;
                                    titleScreen->mlTextPosY = 37120;
                                    titleScreen->mlTextScaleX = 51;
                                    titleScreen->mlTextScaleY = 51;
                                    titleScreen->mlTextAffineSrc.texX = 30720;
                                    titleScreen->mlTextAffineSrc.texY = 0x4000;
                                    titleScreen->mlTextAffineSrc.scrX = 120;
                                    titleScreen->mlTextAffineSrc.scrY = 64;
                                    titleScreen->mlTextAffineSrc.sx = 256;
                                    titleScreen->mlTextAffineSrc.sy = 256;
                                    titleScreen->mlTextAffineSrc.alpha = 0;
                                    titleScreen->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_OPEN_WAIT;
                                    titleScreen->states[TS_ITEM_ML_LOGO] = 0;
                                    titleScreen->timer = 0;
                                }
                                break;

                            case TS_ITEM_SC_STATE_OPEN_WAIT:
                                if (titleScreen->timer < 0xFFFF) {
                                    switch (titleScreen->timer) {
                                        case 32:
                                            titleScreen->ssTextProgression = 2470;
                                            titleScreen->ssTextPosY = 37376;
                                            titleScreen->ssTextScaleX = 51;
                                            titleScreen->ssTextScaleY = 51;
                                            sub_801E150(titleScreen->sprites[TS_SPRITE_SS_TEXT], 0, 0,
                                                        0, 0);
                                            titleScreen->sprites[TS_SPRITE_SS_TEXT]->xPosition = 121;
                                            titleScreen->sprites[TS_SPRITE_SS_TEXT]->yPosition = 146;
                                            titleScreen->sprites[TS_SPRITE_SS_TEXT]->xScale = 51;
                                            titleScreen->sprites[TS_SPRITE_SS_TEXT]->yScale = 51;
                                            titleScreen->sprites[TS_SPRITE_SS_TEXT]->field_1F_0 = 1;
                                            titleScreen->sprites[TS_SPRITE_SS_TEXT]->field_1F_2 = 1;
                                            titleScreen->sprites[TS_SPRITE_SS_TEXT]->field_E = 0;
                                            sprite_show_8020CBC(
                                                titleScreen->sprites[TS_SPRITE_SS_TEXT]);
                                            titleScreen->states[TS_ITEM_SS_TEXT] = 0;
                                            break;

                                        case 64:
                                            titleScreen->nTextProgression = 1945;
                                            titleScreen->nTextPosY = 36608;
                                            titleScreen->nTextScaleX = 51;
                                            titleScreen->nTextScaleY = 51;
                                            sub_801E150(titleScreen->sprites[TS_SPRITE_LICENSE_TEXT], 0,
                                                        0, 0, 0);
                                            titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]->xPosition =
                                                118;
                                            titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]->yPosition =
                                                143;
                                            titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]->xScale = 51;
                                            titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]->yScale = 51;
                                            titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]->field_1F_0 =
                                                1;
                                            titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]->field_1F_2 =
                                                1;
                                            titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]->field_E = 0;
                                            sprite_show_8020CBC(
                                                titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]);
                                            titleScreen->states[TS_ITEM_LICENSE_TEXT] = 0;
                                            break;
                                    }
                                    titleScreen->timer++;
                                }
                                break;

                            case TS_ITEM_SC_STATE_CLOSE:
                                if (titleScreen->sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE], 2, 0, 0, 0);
                                    titleScreen->sprites[TS_SPRITE_SUITCASE]->field_12_4 = 1;
                                    sprite_hide_8021F20(titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]);
                                    titleScreen->states[TS_ITEM_SUITCASE] = -1;
                                    BUFFER_REG_BG0CNT = BGCNT_PRIORITY(2) | BGCNT_SCREENBASE(24);
                                    BUFFER_REG_BG0HOFS = 0;
                                    BUFFER_REG_BG0VOFS = 0;
                                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                                    if (!titleScreen->isSkippingSuitcaseAnim) {
                                        titleScreen->brightness = 60;
                                        titleScreen->process.state = TS_STATE_PRESS_START_SHOW;
                                    }
                                }
                                break;
                        }
                        titleScreen->sprites[TS_SPRITE_SUITCASE]->xPosition =
                            titleScreen->xPosSuitcase / 256;
                        titleScreen->sprites[TS_SPRITE_SUITCASE]->yPosition =
                            titleScreen->yPosSuitcase / 256;
                        break;

                    case TS_ITEM_ML_LOGO:
                        switch (titleScreen->states[TS_ITEM_ML_LOGO]) {
                            case 0:
                                titleScreen->mlTextProgression -= 98;
                                titleScreen->mlTextPosY -= titleScreen->mlTextProgression;
                                titleScreen->mlTextScaleX += 5;
                                titleScreen->mlTextScaleY = titleScreen->mlTextScaleX;
                                if (titleScreen->mlTextScaleX > 255) {
                                    BUFFER_REG_BG2CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(1)
                                                        | BGCNT_256COLOR | BGCNT_SCREENBASE(25)
                                                        | BGCNT_AFF256x256;
                                    titleScreen->mlTextScaleX = 256;
                                    titleScreen->states[TS_ITEM_ML_LOGO] = 1;
                                    titleScreen->mlTextProgression = 0;
                                }
                                break;

                            case 1:
                                titleScreen->mlTextScaleX =
                                    word_83A74EC[2 * titleScreen->mlTextProgression];
                                titleScreen->mlTextScaleY =
                                    word_83A74EC[2 * titleScreen->mlTextProgression + 1];
                                titleScreen->mlTextProgression++;
                                // Is the cast really necessary here?
                                if ((u16)titleScreen->mlTextProgression == 17) {
                                    titleScreen->states[TS_ITEM_ML_LOGO] = -1;
                                }
                                break;
                        }
                        titleScreen->mlTextAffineSrc.sx =
                            (dword_3001038 + (&loc_819832C - &loc_8198220))(0x10000,
                                                                            titleScreen->mlTextScaleX);
                        titleScreen->mlTextAffineSrc.sy =
                            (dword_3001038 + (&loc_819832C - &loc_8198220))(0x10000,
                                                                            titleScreen->mlTextScaleY);
                        titleScreen->mlTextAffineSrc.scrY = titleScreen->mlTextPosY / 256;
                        BgAffineSet(&titleScreen->mlTextAffineSrc, &titleScreen->mlTextAffineDst, 1);
                        BUFFER_REG_BG2PA = titleScreen->mlTextAffineDst.pa;
                        BUFFER_REG_BG2PB = titleScreen->mlTextAffineDst.pb;
                        BUFFER_REG_BG2PC = titleScreen->mlTextAffineDst.pc;
                        BUFFER_REG_BG2PD = titleScreen->mlTextAffineDst.pd;
                        BUFFER_REG_BG2X = titleScreen->mlTextAffineDst.dx;
                        BUFFER_REG_BG2Y = titleScreen->mlTextAffineDst.dy;
                        break;

                    case TS_ITEM_SS_TEXT:
                        switch (titleScreen->states[TS_ITEM_SS_TEXT]) {
                            case 0:
                                titleScreen->ssTextProgression -= 98;
                                titleScreen->ssTextPosY -= titleScreen->ssTextProgression;
                                titleScreen->ssTextScaleX += 5;
                                titleScreen->ssTextScaleY = titleScreen->ssTextScaleX;
                                if (titleScreen->ssTextScaleX > 255) {
                                    titleScreen->ssTextScaleX = 256;
                                    titleScreen->states[TS_ITEM_SS_TEXT] = 1;
                                    titleScreen->ssTextProgression = 0;
                                }
                                break;

                            case 1:
                                titleScreen->ssTextScaleX =
                                    word_83A7530[2 * titleScreen->ssTextProgression];
                                titleScreen->ssTextScaleY =
                                    word_83A7530[2 * titleScreen->ssTextProgression + 1];
                                titleScreen->ssTextProgression++;
                                if ((u16)titleScreen->ssTextProgression == 17) {
                                    titleScreen->states[TS_ITEM_SS_TEXT] = -1;
                                }
                                break;
                        }
                        titleScreen->sprites[TS_SPRITE_SS_TEXT]->yPosition =
                            titleScreen->ssTextPosY / 256;
                        titleScreen->sprites[TS_SPRITE_SS_TEXT]->xScale = titleScreen->ssTextScaleX;
                        titleScreen->sprites[TS_SPRITE_SS_TEXT]->yScale = titleScreen->ssTextScaleY;
                        break;

                    case TS_ITEM_LICENSE_TEXT:
                        switch (titleScreen->states[TS_ITEM_LICENSE_TEXT]) {
                            case 0:
                                titleScreen->nTextProgression -= 98;
                                if (titleScreen->nTextProgression < 0) {
                                    titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]->field_1F_0 =
                                        titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]->field_1F_2 = 0;
                                }
                                titleScreen->nTextPosY -= titleScreen->nTextProgression;
                                titleScreen->nTextScaleX += 5;
                                titleScreen->nTextScaleY = titleScreen->nTextScaleX;
                                if (titleScreen->nTextScaleX > 255) {
                                    titleScreen->nTextScaleX = 256;
                                    titleScreen->states[TS_ITEM_LICENSE_TEXT] = 1;
                                    titleScreen->nTextProgression = 0;
                                }
                                break;

                            case 1:
                                titleScreen->nTextScaleX =
                                    word_83A7574[2 * titleScreen->nTextProgression];
                                titleScreen->nTextScaleY =
                                    word_83A7574[2 * titleScreen->nTextProgression + 1];
                                titleScreen->nTextProgression++;
                                if ((u16)titleScreen->nTextProgression == 17) {
                                    sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE], 5, 0, 0, 0);
                                    titleScreen->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_CLOSE;
                                    titleScreen->skipSuitcaseAnim = FALSE;
                                    titleScreen->states[TS_ITEM_LICENSE_TEXT] = -1;
                                }
                                break;
                        }
                        titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]->yPosition =
                            titleScreen->nTextPosY / 256;
                        titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]->xScale = titleScreen->nTextScaleX;
                        titleScreen->sprites[TS_SPRITE_LICENSE_TEXT]->yScale = titleScreen->nTextScaleY;
                        break;
                }
            }

            if (!titleScreen->isSkippingSuitcaseAnim) {
                if (titleScreen->skipSuitcaseAnim
                    && gGameState.field_2A & (A_BUTTON | B_BUTTON | SELECT_BUTTON | START_BUTTON)) {
                    titleScreen->isSkippingSuitcaseAnim = TRUE;
                    titleScreen->brightness = 16;
                }
            } else {
                titleScreen->brightness--;
                BUFFER_REG_BLDY = 16 - titleScreen->brightness;
                if (titleScreen->brightness == 0) {
                    titleScreen->process.state = TS_STATE_FADE_IN;
                    titleScreen->entryStateIdx = 1;
                    titleScreen->brightness = 16;
                    title_screen_prepare_press_start(titleScreen);
                    BUFFER_REG_DISPCNT |= DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON
                                          | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
                }
            }
            break;

        case TS_STATE_PRESS_START_SHOW:
            titleScreen->brightness--;
            if (titleScreen->brightness == 0) {
                titleScreen->psTextPosY = 30720;
                sub_801E150(titleScreen->sprites[TS_SPRITE_PRESS_START_TEXT], 0, 0, 0, 0);
                titleScreen->sprites[TS_SPRITE_PRESS_START_TEXT]->xPosition = 120;
                titleScreen->sprites[TS_SPRITE_PRESS_START_TEXT]->yPosition = 120;
                titleScreen->sprites[TS_SPRITE_PRESS_START_TEXT]->field_1F_0 = 0;
                titleScreen->sprites[TS_SPRITE_PRESS_START_TEXT]->field_1F_2 = 0;
                titleScreen->sprites[TS_SPRITE_PRESS_START_TEXT]->field_E = 0;
                sprite_show_8020CBC(titleScreen->sprites[TS_SPRITE_PRESS_START_TEXT]);
                titleScreen->process.state = TS_STATE_PRESS_START_WAIT;
            }
            break;

        case TS_STATE_PRESS_START_WAIT:
            if (gGameState.field_2A & (A_BUTTON | START_BUTTON)) {
                titleScreen->psTextVelocity = 0;
                titleScreen->states[TS_ITEM_PRESS_START_TEXT] = 2;
                titleScreen->xVelocitySuitcase = 0;
                titleScreen->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_MOVE_LEFT;
                play_sfx_80195B4(96, -1);
                titleScreen->process.state = TS_STATE_SUITCASE_OPENS;
            }
            break;

        case TS_STATE_SUITCASE_OPENS:
            for (j = 0; j < TS_ITEM_COUNT; j++) {
                if (titleScreen->states[j] < 0) {
                    continue;
                }

                switch (j) {
                    case TS_ITEM_SUITCASE:
                        switch (titleScreen->states[TS_ITEM_SUITCASE]) {
                            case TS_ITEM_SC_STATE_MOVE_LEFT:
                                titleScreen->xVelocitySuitcase -= 102;
                                titleScreen->xPosSuitcase += titleScreen->xVelocitySuitcase;
                                if (titleScreen->xPosSuitcase <= 0x2000) {
                                    titleScreen->xPosSuitcase = 0x4000;
                                    sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE], 6, 0, 0, 0);
                                    titleScreen->timer = 0;
                                    titleScreen->states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_BUMP_OPEN;
                                }
                                break;

                            case TS_ITEM_SC_STATE_BUMP_OPEN:
                                if (titleScreen->sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE], 4, 0, 0, 0);
                                    titleScreen->states[TS_ITEM_SUITCASE] = -1;
                                }

                                if (titleScreen->timer < 0xFFFF) {
                                    if (titleScreen->timer == 15) {
                                        titleScreen->beanPosX = 0x4000;
                                        titleScreen->beanPosY = 33280;
                                        titleScreen->beanVelocityX = 384;
                                        titleScreen->beanVelocityY = 1536;
                                        sub_801E150(titleScreen->sprites[TS_SPRITE_BEAN_POINTER], 11, 0,
                                                    0, 0);
                                        titleScreen->sprites[TS_SPRITE_BEAN_POINTER]->xPosition = 64;
                                        titleScreen->sprites[TS_SPRITE_BEAN_POINTER]->yPosition = 130;
                                        titleScreen->sprites[TS_SPRITE_BEAN_POINTER]->field_1F_0 = 0;
                                        titleScreen->sprites[TS_SPRITE_BEAN_POINTER]->field_1F_2 = 0;
                                        titleScreen->sprites[TS_SPRITE_BEAN_POINTER]->field_E = 0;
                                        sprite_show_8020CBC(
                                            titleScreen->sprites[TS_SPRITE_BEAN_POINTER]);
                                        titleScreen->states[TS_ITEM_POINTER] = 0;
                                    }
                                    titleScreen->timer++;
                                }
                                break;
                        }
                        titleScreen->sprites[TS_SPRITE_SUITCASE]->xPosition =
                            titleScreen->xPosSuitcase / 256;
                        titleScreen->sprites[TS_SPRITE_SUITCASE]->yPosition =
                            titleScreen->yPosSuitcase / 256;
                        break;

                    case TS_ITEM_PRESS_START_TEXT:
                        if (titleScreen->states[TS_ITEM_PRESS_START_TEXT] == 2) {
                            titleScreen->psTextVelocity -= 98;
                            titleScreen->psTextPosY -= titleScreen->psTextVelocity;
                            if (titleScreen->psTextPosY > 45055) {
                                sprite_hide_8021F20(titleScreen->sprites[TS_SPRITE_PRESS_START_TEXT]);
                                titleScreen->states[TS_ITEM_PRESS_START_TEXT] = -1;
                            }
                        }
                        titleScreen->sprites[TS_SPRITE_PRESS_START_TEXT]->yPosition =
                            titleScreen->psTextPosY / 256;
                        break;

                    case TS_ITEM_POINTER:
                        switch (titleScreen->states[TS_ITEM_POINTER]) {
                            case 0:
                                titleScreen->beanVelocityY -= 98;
                                titleScreen->beanPosY -= titleScreen->beanVelocityY;
                                titleScreen->beanPosX += titleScreen->beanVelocityX;
                                if (titleScreen->beanVelocityY < 0 && titleScreen->beanPosY > 35839) {
                                    titleScreen->beanPosY = 35840;
                                    titleScreen->spriteIdx = 2;
                                    titleScreen->states[TS_ITEM_POINTER] = 1;
                                }
                                break;

                            case 1:
                                if (titleScreen->beanPosY / 256 <= 20 * titleScreen->spriteIdx + 92) {
                                    sub_801E150(titleScreen->sprites[titleScreen->spriteIdx + 2],
                                                titleScreen->spriteIdx + 3, 0, 0, 0);
                                    titleScreen->sprites[titleScreen->spriteIdx + 2]->xPosition = 180;
                                    titleScreen->sprites[titleScreen->spriteIdx + 2]->yPosition =
                                        20 * titleScreen->spriteIdx + 100;
                                    sprite_show_8020CBC(
                                        titleScreen->sprites[titleScreen->spriteIdx + 2]);

                                    if (titleScreen->spriteIdx == 0) {
                                        sub_801E150(titleScreen->sprites[TS_SPRITE_BEAN_POINTER], 12, 0,
                                                    0, 0);
                                        titleScreen->states[TS_ITEM_POINTER] = 2;
                                    } else {
                                        titleScreen->spriteIdx--;
                                    }
                                }

                                if (titleScreen->states[TS_ITEM_POINTER] == 1) {
                                    titleScreen->beanPosY -= 1536;
                                }
                                break;

                            case 2:
                                if (titleScreen->sprites[TS_SPRITE_BEAN_POINTER]->field_12_3) {
                                    sub_801E150(titleScreen->sprites[TS_SPRITE_BEAN_POINTER], 13, 0, 0,
                                                0);
                                    sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL], 0, 0,
                                                0, 0);
                                    titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->xPosition = 64;
                                    titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->yPosition = 140;
                                    titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_1F_0 = 1;
                                    titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_E = 1;
                                    sprite_show_8020CBC(
                                        titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]);
                                    titleScreen->suitcaseVisualState = TS_SV_STATE_APPEAR;

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

                                    multiplayer_serial_enable();
                                    titleScreen->process.state = TS_STATE_GAME_SELECT;
                                }
                                break;
                        }
                        titleScreen->sprites[TS_SPRITE_BEAN_POINTER]->xPosition =
                            titleScreen->beanPosX / 256;
                        titleScreen->sprites[TS_SPRITE_BEAN_POINTER]->yPosition =
                            titleScreen->beanPosY / 256;
                        break;
                }
            }
            break;

        case TS_STATE_GAME_SELECT:
            if (gGameState.field_2A & (A_BUTTON | START_BUTTON)) {
                BUFFER_REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
                BUFFER_REG_BLDY = 0;
                titleScreen->brightness = 16;
                play_sfx_80195B4(96, -1);
                sub_80193B4(0, 0, 16);
                titleScreen->process.state = TS_STATE_FADE_OUT;
            } else {
                s8 selection = titleScreen->selection;
                if (gGameState.field_2E & DPAD_UP) {
                    titleScreen->selection--;
                    if (titleScreen->selection < 0) {
                        titleScreen->selection = 2;
                    }
                    play_sfx_80195B4(95, -1);
                } else if (gGameState.field_2E & DPAD_DOWN) {
                    titleScreen->selection++;
                    if (titleScreen->selection > 2) {
                        titleScreen->selection = 0;
                    }
                    play_sfx_80195B4(95, -1);
                }

                if (titleScreen->selection != selection) {
                    if (titleScreen->suitcaseVisualState != TS_SV_STATE_DISAPPEAR) {
                        sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL], 3 * selection + 2,
                                    0, 0, 0);
                    }
                    titleScreen->suitcaseVisualState = TS_SV_STATE_DISAPPEAR;
                    titleScreen->sprites[TS_SPRITE_BEAN_POINTER]->yPosition =
                        20 * titleScreen->selection + 92;
                }
            }
            break;

        case TS_STATE_FADE_OUT:
            titleScreen->brightness--;
            BUFFER_REG_BLDY = 16 - titleScreen->brightness;
            if (titleScreen->brightness != 0) {
                break;
            }

            if (titleScreen != NULL) {
                title_screen_destroy(titleScreen, 3);
            }

            switch (titleScreen->selection) {
                case 0:
                    multiplayer_serial_disable();
                    sub_801AFE4(0);
                    BUFFER_REG_BLDCNT = 0;
                    load_init_812538C(alloc_Zero(356, 0, "LOAD", 0), 8, "LOAD", 0xFFFF);
                    return;

                case 1:
                    stru_203FFF8.field_7_0 = 1;
                    BUFFER_REG_BLDCNT = 0;
                    sub_81DA6C8(64);
                    return;

                case 2:
                    multiplayer_serial_disable();
                    optn_init(alloc_Zero(84, 0, "OPTN", 0), 8, "OPTN", 0);
                    return;

                default:
                    return;
            }
            break;
    }

    switch (titleScreen->suitcaseVisualState) {
        case TS_SV_STATE_APPEAR:
            if (titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_12_3) {
                sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL],
                            3 * titleScreen->selection + 1, 0, 0, 0);
                titleScreen->suitcaseVisualState = TS_SV_STATE_IDLE;
            }
            break;

        case TS_SV_STATE_DISAPPEAR:
            if (titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_12_3) {
                sub_801E150(titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL], 3 * titleScreen->selection,
                            0, 0, 0);
                titleScreen->suitcaseVisualState = TS_SV_STATE_APPEAR;
            }
            break;
    }
}

void mario_bros_score_visual_update(struct MarioBrosScoreVisual* scoreVisual) {
    struct TitleScreen* titleScreen;
    int var1;

    titleScreen = (struct TitleScreen*)scoreVisual->process.parentProcess;
    sub_8020A78();
    var1 = gGameState.field_880;

    if ((u8)(titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_20[1] - 3) <= 2) {
        struct struc_11* var11;
        struct struc_203FFB8* s;
        int y2;
        int i;
        s16 t;
        int j;

        s = &stru_203FFB8;
        var11 = s->field_38;
        t = word_83A75B8[titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_22 - 10];
        for (i = 0; i < 6; i++) {
            var11->field_0 = t - 34;
            var11->field_2 = 43 + i * 7;
            var11->field_4 = (scoreVisual->topScore[i] + 44) | 0x2400;
            var11->field_6 = 0;
            var11->field_8 = 0x40000000;
            var11 = var11->field_10;
        }

        y2 = word_83A75C8[titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_22 - 10] - 21;
        for (j = 0; j < 2; j++) {
            var11->field_0 = y2;
            var11->field_2 = 64 + j * 7;
            var11->field_4 = (scoreVisual->pScore[j] + 44) | 0x2400;
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

/**
 * Initialises the process for the Mario Bros Score visual on the title screen.
 */
struct MarioBrosScoreVisual* mario_bros_score_visual_create(struct MarioBrosScoreVisual* scoreVisual,
                                                            u8 priority, char* label, u32 topScore,
                                                            u8 pScore) {
    int i;

    process_add(&scoreVisual->process, priority, label);
    scoreVisual->process.definition = &stru_8CDC248;

    for (i = 5; i >= 0; i--) {
        scoreVisual->topScore[i] = topScore % 10;
        topScore /= 10;
    }

    for (i = 1; i >= 0; i--) {
        scoreVisual->pScore[i] = pScore % 10;
        pScore /= 10;
    }

    return scoreVisual;
}

inline struct Process* sprite_renderer_create(struct Process* renderer, u8 priority, char* label) {
    process_add(renderer, priority, label);
    renderer->definition = &stru_8CDC268;
    return renderer;
}
