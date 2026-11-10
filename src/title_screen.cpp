#pragma implementation "title_screen.h"

#include "global.h"
#include "common.h"
#include "heap.h"
#include "game_mode.h"
#include "load_menu.h"
#include "multiplayer_serial.h"
#include "title_screen.h"
#include "options_menu.h"

CompanyIntro::CompanyIntro(u8 priority, char* label) : Process(priority, label) {
    Process* renderer;
    void* cgdw;
    struct struc_203FFF8* v11;
    vu32 zero;

    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 = 1;
    BUFFER_REG_DISPCNT = 0;
    sub_8017E34();

    renderer = new (0, "OPDR", 0) SpriteRenderer(8, "OPDR");
    opdr = renderer;
    renderer->parentProcess = this;

    dword_3000C78 = 0;
    sub_8020994(0, 0, 0, 0x80);
    stru_203FFB8.field_0_2 = 1;

    mario = sub_8020DD0(2, 4097, 1, -1, -1, -1, -1);
    sub_801E150(mario, 12, -1, 0, 0);
    mario->xPosition = 80;
    mario->yPosition = -35;
    mario->field_11_6 = 1;

    luigi = sub_8020DD0(2, 4098, 1, -1, -1, -1, -1);
    sub_801E150(luigi, 12, -1, 0, 0);
    luigi->xPosition = 160;
    luigi->yPosition = -35;

    alphaDreamLogo = sub_8020DD0(7, 33103, 1, -1, -1, -1, -1);
    sub_801E150(alphaDreamLogo, 0, -1, 0, 0);
    alphaDreamLogo->xPosition = 120;
    alphaDreamLogo->yPosition = 74;

    sub_80213A0(0, 4109, -1, 1);
    sub_80213A0(0, 4110, -1, 1);
    xPosMario = 20480;
    yPosMario = -8960;
    xPosLuigi = 40960;
    yPosLuigi = -8960;

    cgdw = new (1, "CGDW", 0) u8[0x8000];
    dword_3000C84(dword_83A2B48, cgdw);
    CpuFastSet(cgdw, (void*)BG_CHAR_ADDR(2), (sub_80198B0(dword_83A2B48) >> 2) & 0x1FFFFF);
    CpuFastSet(dword_83A2F98, (void*)BG_SCREEN_ADDR(28), 320);
    zero = 0;
    CpuFastSet((int*)&zero, (void*)0x600E500, 0x10000C0);
    dword_3000C84(dword_83A34B8, cgdw);
    CpuFastSet(cgdw, (void*)BG_CHAR_ADDR(3), (sub_80198B0(dword_83A34B8) >> 2) & 0x1FFFFF);
    CpuFastSet(dword_83A3860, (void*)BG_SCREEN_ADDR(29), 320);
    operator delete(cgdw);

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

    verticalOffset = 25344;
    CpuFastSet(&dword_83A3498, (void*)(0x2000000 + 0x80), 8);
    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 = 0xFFFF;

    sprite_show_8020CBC(mario);
    sprite_show_8020CBC(luigi);

    velocity = 0;
    acceleration = 117;
    flags = 1;
    state = 0;

    BUFFER_REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_OBJ_ON;
}

inline CompanyIntro::~CompanyIntro() {
    sub_8021FD4();
    if (opdr) {
        delete opdr;
    }
}

void CompanyIntro::update() {
    switch (state) {
        case 0:
            yPosMario += velocity;
            yPosLuigi += velocity;
            verticalOffset -= velocity;
            velocity = velocity + acceleration;
            if (verticalOffset <= 0) {
                brightness = 16;
                verticalOffset = 0;
                velocity = -1324;
                play_sfx_80195B4(134, -1);
                state = 1;
            }
            break;

        case 1:
            if (brightness > 10) {
                verticalOffset ^= 512;
            } else {
                verticalOffset ^= 256;
            }
            brightness--;
            if (brightness == 0) {
                brightness = 100;
                BUFFER_REG_BG0VOFS = 0;
                state = 2;
            }
            break;

        case 2:
            if (brightness == 80) {
                play_sfx_80195B4(221, -1);
            }
            brightness--;
            if (brightness == 0) {
                brightness = 16;
                BUFFER_REG_BLDCNT = 191;
                BUFFER_REG_BLDY = 0;
                state = 3;
            }
            break;

        case 3:
            brightness--;
            BUFFER_REG_BLDY = 16 - brightness;
            if (brightness == 0) {
                sprite_hide_8021F20(mario);
                sprite_hide_8021F20(luigi);
                CpuFastSet(dword_83A3D60, (void*)(0x2000000 + 0x80), 8);
                gGameState.field_2 = 0xFFFF;
                BUFFER_REG_BG0CNT = BGCNT_CHARBASE(3) | BGCNT_SCREENBASE(29);
                sprite_show_8020CBC(alphaDreamLogo);
                alphaDreamLogo->field_12_4 = 1;
                brightness = 16;
                state = 4;
            }
            break;

        case 4:
            brightness--;
            BUFFER_REG_BLDY = brightness;
            if (gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) {
                brightness = 16 - brightness;
                state = 6;
            } else if (brightness == 0) {
                brightness = 120;
                alphaDreamLogo->field_12_4 = 0;
                alphaDreamLogo->field_12_1 = 1;
                state = 5;
            }
            break;

        case 5:
            if ((gGameState.field_2A & (A_BUTTON | B_BUTTON | START_BUTTON)) == 0) {
                brightness--;
                if (brightness != 0) {
                    break;
                }
            }
            brightness = 16;
            state = 6;
            break;

        case 6:
            brightness--;
            BUFFER_REG_BLDY = 16 - brightness;
            if (brightness == 0) {
                delete this;
                new (0, "OPEN", 0) TitleScreen(8, "OPEN", 0);
                return;
            }
            break;
    }

    if (state < 3) {
        if (state != 0 && flags) {
            xPosMario -= 384;
            xPosLuigi += 384;
            yPosMario += velocity;
            yPosLuigi += velocity;
            velocity += acceleration;
            if (yPosMario >= 24064) {
                bool32 temp;
                yPosMario = 24064;
                yPosLuigi = 24064;
                sub_80210A8(mario, 2, 4109, 1, -1, -1, -1, -1);
                sub_801E150(mario, 0, -1, 0, 0);
                sprite_show_8020CBC(mario);
                temp = mario->field_11_6;
                temp ^= 1;
                mario->field_11_6 = temp;
                mario->field_12_1 = 1;

                sub_80210A8(luigi, 2, 4110, 1, -1, -1, -1, -1);
                sub_801E150(luigi, 0, -1, 0, 0);
                sprite_show_8020CBC(luigi);
                luigi->field_12_1 = 1;
                flags = 0;
            }
        }
        BUFFER_REG_BG0VOFS = verticalOffset / 256;
        mario->xPosition = xPosMario / 256;
        mario->yPosition = yPosMario / 256;
        luigi->xPosition = xPosLuigi / 256;
        luigi->yPosition = yPosLuigi / 256;
    }

    sub_8021F7C();
}

inline void SpriteRenderer::update() {
    int var1 = gGameState.field_880;
    sub_8020A78();
    dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 2580);
    var1 = dword_3000D4C(stru_203FFB8.field_3C, var1);
    gGameState.field_880 = var1;
}

TitleScreen::TitleScreen(u8 priority, char* label, int selection) : Process(priority, label) {
    struct struc_203FFF8* v5;
    void* cgdw;
    u32 i;

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

    dword_3000DA0 = new (0, "ORST", 1) ORSTData;
    mbsv =
        new (0, "OPDR", 0) MarioBrosScoreVisual(8, "OPDR", stru_203FFF8.field_0, stru_203FFF8.field_4);
    mbsv->parentProcess = this;

    this->selection = selection != 0 ? selection - 1 : 0;
    suitcaseVisualState = TS_SV_STATE_APPEAR;
    brightness = 16;
    isSkippingSuitcaseAnim = 0;
    skipSuitcaseAnim = 1;
    states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_FALLING;
    for (i = TS_ITEM_ML_LOGO; i < TS_ITEM_COUNT; i++) {
        states[i] = -1;
    }

    dword_3000C78 = 0;

    cgdw = new (1, "CGDW", 0) u8[0x8000];
    dword_3000C84(dword_83A3D80, cgdw);
    CpuFastSet(cgdw, (void*)0x6000000, (sub_80198B0(dword_83A3D80) >> 2) & 0x1FFFFF);
    dword_3000C84(dword_83A4874, cgdw);
    CpuFastSet(cgdw, (void*)0x6004000, (sub_80198B0(dword_83A4874) >> 2) & 0x1FFFFF);
    CpuFastSet(dword_83A575C, (void*)0x600C000, 320);
    CpuFastSet(dword_83A5C5C, (void*)0x600D000, 1024);
    CpuFastSet(dword_83A6C5C, (void*)0x600C800, 312);
    operator delete(cgdw);
    sub_8020994(0, 0, 0, 0);

    for (i = 0; i < 9; i++) {
        sprites[i] = sub_8020DD0(0, word_83A74C0[i * 2], word_83A74C0[i * 2 + 1], -1, -1, -1, -1);
        sub_801E150(sprites[i], 0, -1, 0, 0);
    }

    if (selection == 0) {
        xPosSuitcase = 30720;
        yPosSuitcase = 0;
        yVelocitySuitcase = 512;
        sub_801E150(sprites[TS_SPRITE_SUITCASE], 0, 0, 0, 0);
        sprites[TS_SPRITE_SUITCASE]->xPosition = 120;
        sprites[TS_SPRITE_SUITCASE]->yPosition = 0;
        sprites[TS_SPRITE_SUITCASE]->field_1F_0 = 0;
        sprites[TS_SPRITE_SUITCASE]->field_1F_2 = 1;
        sprites[TS_SPRITE_SUITCASE]->field_E = 2;
        sprite_show_8020CBC(sprites[TS_SPRITE_SUITCASE]);
    } else {
        prepareGameSelect(selection);
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
    gGameState.field_2 = 0xFFFF;
    gGameState.field_0 = 0xFFFF;
    runtime_install_interrupt_callback(2, title_screen_scroll_background_hblank);
    sub_8019308(0, 41, -1);

    if (selection == 0) {
        entryStateIdx = 0;
        BUFFER_REG_DISPCNT |= 4673;
    } else {
        entryStateIdx = 2;
        BUFFER_REG_DISPCNT |= 5953;
    }
}

inline TitleScreen::~TitleScreen() {
    DmaStop(0);
    runtime_install_interrupt_callback(2, 0);

    if (mbsv) {
        delete mbsv;
    }

    delete dword_3000DA0;
    sub_8021FD4();
    BUFFER_REG_SOUNDCNT_L = 0x7FFF;
    gGameState.field_2 |= 1;
    BUFFER_REG_DISPCNT = 0;
    gGameState.field_31 = 2;
    sub_8017E34();
}

void TitleScreen::preparePressStart() {
    sprite_hide_8021F20(sprites[TS_SPRITE_LICENSE_TEXT]);

    sub_801E150(sprites[TS_SPRITE_SS_TEXT], 0, 0, 0, 0);
    sprites[TS_SPRITE_SS_TEXT]->xPosition = 121;
    sprites[TS_SPRITE_SS_TEXT]->yPosition = 80;
    sprites[TS_SPRITE_SS_TEXT]->xScale = 256;
    sprites[TS_SPRITE_SS_TEXT]->yScale = 256;
    sprites[TS_SPRITE_SS_TEXT]->field_1F_0 = 0;
    sprites[TS_SPRITE_SS_TEXT]->field_1F_2 = 0;
    sprites[TS_SPRITE_SS_TEXT]->field_E = 2;
    sprite_show_8020CBC(sprites[TS_SPRITE_SS_TEXT]);

    sub_801E150(sprites[TS_SPRITE_SUITCASE], 2, 0, 0, 0);
    sprites[TS_SPRITE_SUITCASE]->xPosition = 120;
    sprites[TS_SPRITE_SUITCASE]->yPosition = 140;
    sprites[TS_SPRITE_SUITCASE]->field_1F_0 = 0;
    sprites[TS_SPRITE_SUITCASE]->field_1F_2 = 1;
    sprites[TS_SPRITE_SUITCASE]->field_E = 2;
    sprites[TS_SPRITE_SUITCASE]->field_12_4 = 1;
    sprite_show_8020CBC(sprites[TS_SPRITE_SUITCASE]);

    xPosSuitcase = 30720;
    yPosSuitcase = 35840;
    skipSuitcaseAnim = FALSE;

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

    mlTextPosY = 0;
    mlTextScaleX = 256;
    mlTextScaleY = 256;
    states[TS_ITEM_SUITCASE] = -1;
}

void TitleScreen::prepareGameSelect(int selection) {
    int i;

    sprite_hide_8021F20(sprites[TS_SPRITE_LICENSE_TEXT]);
    sprite_hide_8021F20(sprites[TS_SPRITE_PRESS_START_TEXT]);

    for (i = 0; i < 3; i++) {
        sub_801E150(sprites[TS_SPRITE_ML_GAME_TEXT + i], 3 + i, 0, 0, 0);
        sprites[TS_SPRITE_ML_GAME_TEXT + i]->xPosition = 180;
        sprites[TS_SPRITE_ML_GAME_TEXT + i]->yPosition = 100 + i * 20;
        sprite_show_8020CBC(sprites[TS_SPRITE_ML_GAME_TEXT + i]);
    }

    sub_801E150(sprites[TS_SPRITE_BEAN_POINTER], 13, 0, 0, 0);
    sprites[TS_SPRITE_BEAN_POINTER]->xPosition = 112;
    sprites[TS_SPRITE_BEAN_POINTER]->yPosition = 92 + 20 * this->selection;
    sprite_show_8020CBC(sprites[TS_SPRITE_BEAN_POINTER]);

    sub_801E150(sprites[TS_SPRITE_SS_TEXT], 0, 0, 0, 0);
    sprites[TS_SPRITE_SS_TEXT]->xPosition = 121;
    sprites[TS_SPRITE_SS_TEXT]->yPosition = 80;
    sprites[TS_SPRITE_SS_TEXT]->xScale = 256;
    sprites[TS_SPRITE_SS_TEXT]->yScale = 256;
    sprites[TS_SPRITE_SS_TEXT]->field_1F_0 = 0;
    sprites[TS_SPRITE_SS_TEXT]->field_1F_2 = 0;
    sprites[TS_SPRITE_SS_TEXT]->field_E = 2;
    sprite_show_8020CBC(sprites[TS_SPRITE_SS_TEXT]);

    sub_801E150(sprites[TS_SPRITE_SUITCASE], 4, 0, 0, 0);
    sprites[TS_SPRITE_SUITCASE]->xPosition = 64;
    sprites[TS_SPRITE_SUITCASE]->yPosition = 140;
    sprites[TS_SPRITE_SUITCASE]->field_1F_0 = 0;
    sprites[TS_SPRITE_SUITCASE]->field_1F_2 = 1;
    sprites[TS_SPRITE_SUITCASE]->field_E = 2;
    sprite_show_8020CBC(sprites[TS_SPRITE_SUITCASE]);

    sub_801E150(sprites[TS_SPRITE_SUITCASE_VISUAL], 3 * (selection - 1) + 1, 0, 0, 0);
    sprites[TS_SPRITE_SUITCASE_VISUAL]->xPosition = 64;
    sprites[TS_SPRITE_SUITCASE_VISUAL]->yPosition = 140;
    sprites[TS_SPRITE_SUITCASE_VISUAL]->field_1F_0 = 1;
    sprites[TS_SPRITE_SUITCASE_VISUAL]->field_E = 1;
    sprite_show_8020CBC(sprites[TS_SPRITE_SUITCASE_VISUAL]);

    suitcaseVisualState = TS_SV_STATE_IDLE;

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

    mlTextPosY = 0;
    mlTextScaleX = 256;
    mlTextScaleY = 256;

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

void TitleScreen::update() {
    int i, j;

    sub_8021F7C();

    switch (state) {
        case TS_STATE_FADE_IN:
            brightness--;
            BUFFER_REG_BLDY = brightness;
            if (brightness == 0) {
                state = byte_83A74E9[entryStateIdx];
                if (state == TS_STATE_PRESS_START_SHOW) {
                    brightness = 60;
                }
            }
            break;

        case TS_STATE_TITLE_ANIMATION:
            for (i = 0; i < TS_ITEM_COUNT; i++) {
                if (states[i] < 0) {
                    continue;
                }

                switch (i) {
                    case TS_ITEM_SUITCASE:
                        switch (states[TS_ITEM_SUITCASE]) {
                            case TS_ITEM_SC_STATE_FALLING:
                                yPosSuitcase += yVelocitySuitcase;
                                yVelocitySuitcase += 32;
                                if (yPosSuitcase > 35839) {
                                    yPosSuitcase = 35840;
                                    sub_801E150(sprites[TS_SPRITE_SUITCASE], 1, 0, 0, 0);
                                    sprites[TS_SPRITE_SUITCASE]->field_12_1 = 1;
                                    states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_HIT_GROUND;
                                }
                                break;

                            case TS_ITEM_SC_STATE_HIT_GROUND:
                                if (sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(sprites[TS_SPRITE_SUITCASE], 2, 0, 0, 0);
                                    sprites[TS_SPRITE_SUITCASE]->field_12_1 = 1;
                                    states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_FALL_OVER;
                                }
                                break;

                            case TS_ITEM_SC_STATE_FALL_OVER:
                                if (sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(sprites[TS_SPRITE_SUITCASE], 3, 0, 0, 0);
                                    sprites[TS_SPRITE_SUITCASE]->field_12_1 = 1;
                                    states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_OPEN;
                                }
                                break;

                            case TS_ITEM_SC_STATE_OPEN:
                                if (sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(sprites[TS_SPRITE_SUITCASE], 4, 0, 0, 0);
                                    BUFFER_REG_DISPCNT |= DISPCNT_BG2_ON;
                                    mlTextProgression = 2560;
                                    mlTextPosY = 37120;
                                    mlTextScaleX = 51;
                                    mlTextScaleY = 51;
                                    mlTextAffineSrc.texX = 30720;
                                    mlTextAffineSrc.texY = 0x4000;
                                    mlTextAffineSrc.scrX = 120;
                                    mlTextAffineSrc.scrY = 64;
                                    mlTextAffineSrc.sx = 256;
                                    mlTextAffineSrc.sy = 256;
                                    mlTextAffineSrc.alpha = 0;
                                    states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_OPEN_WAIT;
                                    states[TS_ITEM_ML_LOGO] = 0;
                                    timer = 0;
                                }
                                break;

                            case TS_ITEM_SC_STATE_OPEN_WAIT:
                                if (timer < 0xFFFF) {
                                    switch (timer) {
                                        case 32:
                                            ssTextProgression = 2470;
                                            ssTextPosY = 37376;
                                            ssTextScaleX = 51;
                                            ssTextScaleY = 51;
                                            sub_801E150(sprites[TS_SPRITE_SS_TEXT], 0, 0, 0, 0);
                                            sprites[TS_SPRITE_SS_TEXT]->xPosition = 121;
                                            sprites[TS_SPRITE_SS_TEXT]->yPosition = 146;
                                            sprites[TS_SPRITE_SS_TEXT]->xScale = 51;
                                            sprites[TS_SPRITE_SS_TEXT]->yScale = 51;
                                            sprites[TS_SPRITE_SS_TEXT]->field_1F_0 = 1;
                                            sprites[TS_SPRITE_SS_TEXT]->field_1F_2 = 1;
                                            sprites[TS_SPRITE_SS_TEXT]->field_E = 0;
                                            sprite_show_8020CBC(sprites[TS_SPRITE_SS_TEXT]);
                                            states[TS_ITEM_SS_TEXT] = 0;
                                            break;

                                        case 64:
                                            nTextProgression = 1945;
                                            nTextPosY = 36608;
                                            nTextScaleX = 51;
                                            nTextScaleY = 51;
                                            sub_801E150(sprites[TS_SPRITE_LICENSE_TEXT], 0, 0, 0, 0);
                                            sprites[TS_SPRITE_LICENSE_TEXT]->xPosition = 118;
                                            sprites[TS_SPRITE_LICENSE_TEXT]->yPosition = 143;
                                            sprites[TS_SPRITE_LICENSE_TEXT]->xScale = 51;
                                            sprites[TS_SPRITE_LICENSE_TEXT]->yScale = 51;
                                            sprites[TS_SPRITE_LICENSE_TEXT]->field_1F_0 = 1;
                                            sprites[TS_SPRITE_LICENSE_TEXT]->field_1F_2 = 1;
                                            sprites[TS_SPRITE_LICENSE_TEXT]->field_E = 0;
                                            sprite_show_8020CBC(sprites[TS_SPRITE_LICENSE_TEXT]);
                                            states[TS_ITEM_LICENSE_TEXT] = 0;
                                            break;
                                    }
                                    timer++;
                                }
                                break;

                            case TS_ITEM_SC_STATE_CLOSE:
                                if (sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(sprites[TS_SPRITE_SUITCASE], 2, 0, 0, 0);
                                    sprites[TS_SPRITE_SUITCASE]->field_12_4 = 1;
                                    sprite_hide_8021F20(sprites[TS_SPRITE_LICENSE_TEXT]);
                                    states[TS_ITEM_SUITCASE] = -1;
                                    BUFFER_REG_BG0CNT = BGCNT_PRIORITY(2) | BGCNT_SCREENBASE(24);
                                    BUFFER_REG_BG0HOFS = 0;
                                    BUFFER_REG_BG0VOFS = 0;
                                    BUFFER_REG_DISPCNT |= DISPCNT_BG0_ON;
                                    if (!isSkippingSuitcaseAnim) {
                                        brightness = 60;
                                        state = TS_STATE_PRESS_START_SHOW;
                                    }
                                }
                                break;
                        }
                        sprites[TS_SPRITE_SUITCASE]->xPosition = xPosSuitcase / 256;
                        sprites[TS_SPRITE_SUITCASE]->yPosition = yPosSuitcase / 256;
                        break;

                    case TS_ITEM_ML_LOGO:
                        switch (states[TS_ITEM_ML_LOGO]) {
                            case 0:
                                mlTextProgression -= 98;
                                mlTextPosY -= mlTextProgression;
                                mlTextScaleX += 5;
                                mlTextScaleY = mlTextScaleX;
                                if (mlTextScaleX > 255) {
                                    BUFFER_REG_BG2CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(1)
                                                        | BGCNT_256COLOR | BGCNT_SCREENBASE(25)
                                                        | BGCNT_AFF256x256;
                                    mlTextScaleX = 256;
                                    states[TS_ITEM_ML_LOGO] = 1;
                                    mlTextProgression = 0;
                                }
                                break;

                            case 1:
                                mlTextScaleX = word_83A74EC[2 * mlTextProgression];
                                mlTextScaleY = word_83A74EC[2 * mlTextProgression + 1];
                                mlTextProgression++;
                                // Is the cast really necessary here?
                                if ((u16)mlTextProgression == 17) {
                                    states[TS_ITEM_ML_LOGO] = -1;
                                }
                                break;
                        }
                        mlTextAffineSrc.sx = ((int (*)(int, int))(
                            (u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                            0x10000, mlTextScaleX);
                        mlTextAffineSrc.sy = ((int (*)(int, int))(
                            (u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                            0x10000, mlTextScaleY);
                        mlTextAffineSrc.scrY = mlTextPosY / 256;
                        BgAffineSet(&mlTextAffineSrc, &mlTextAffineDst, 1);
                        BUFFER_REG_BG2PA = mlTextAffineDst.pa;
                        BUFFER_REG_BG2PB = mlTextAffineDst.pb;
                        BUFFER_REG_BG2PC = mlTextAffineDst.pc;
                        BUFFER_REG_BG2PD = mlTextAffineDst.pd;
                        BUFFER_REG_BG2X = mlTextAffineDst.dx;
                        BUFFER_REG_BG2Y = mlTextAffineDst.dy;
                        break;

                    case TS_ITEM_SS_TEXT:
                        switch (states[TS_ITEM_SS_TEXT]) {
                            case 0:
                                ssTextProgression -= 98;
                                ssTextPosY -= ssTextProgression;
                                ssTextScaleX += 5;
                                ssTextScaleY = ssTextScaleX;
                                if (ssTextScaleX > 255) {
                                    ssTextScaleX = 256;
                                    states[TS_ITEM_SS_TEXT] = 1;
                                    ssTextProgression = 0;
                                }
                                break;

                            case 1:
                                ssTextScaleX = word_83A7530[2 * ssTextProgression];
                                ssTextScaleY = word_83A7530[2 * ssTextProgression + 1];
                                ssTextProgression++;
                                if ((u16)ssTextProgression == 17) {
                                    states[TS_ITEM_SS_TEXT] = -1;
                                }
                                break;
                        }
                        sprites[TS_SPRITE_SS_TEXT]->yPosition = ssTextPosY / 256;
                        sprites[TS_SPRITE_SS_TEXT]->xScale = ssTextScaleX;
                        sprites[TS_SPRITE_SS_TEXT]->yScale = ssTextScaleY;
                        break;

                    case TS_ITEM_LICENSE_TEXT:
                        switch (states[TS_ITEM_LICENSE_TEXT]) {
                            case 0:
                                nTextProgression -= 98;
                                if (nTextProgression < 0) {
                                    sprites[TS_SPRITE_LICENSE_TEXT]->field_1F_0 =
                                        sprites[TS_SPRITE_LICENSE_TEXT]->field_1F_2 = 0;
                                }
                                nTextPosY -= nTextProgression;
                                nTextScaleX += 5;
                                nTextScaleY = nTextScaleX;
                                if (nTextScaleX > 255) {
                                    nTextScaleX = 256;
                                    states[TS_ITEM_LICENSE_TEXT] = 1;
                                    nTextProgression = 0;
                                }
                                break;

                            case 1:
                                nTextScaleX = word_83A7574[2 * nTextProgression];
                                nTextScaleY = word_83A7574[2 * nTextProgression + 1];
                                nTextProgression++;
                                if ((u16)nTextProgression == 17) {
                                    sub_801E150(sprites[TS_SPRITE_SUITCASE], 5, 0, 0, 0);
                                    states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_CLOSE;
                                    skipSuitcaseAnim = FALSE;
                                    states[TS_ITEM_LICENSE_TEXT] = -1;
                                }
                                break;
                        }
                        sprites[TS_SPRITE_LICENSE_TEXT]->yPosition = nTextPosY / 256;
                        sprites[TS_SPRITE_LICENSE_TEXT]->xScale = nTextScaleX;
                        sprites[TS_SPRITE_LICENSE_TEXT]->yScale = nTextScaleY;
                        break;
                }
            }

            if (!isSkippingSuitcaseAnim) {
                if (skipSuitcaseAnim
                    && gGameState.field_2A & (A_BUTTON | B_BUTTON | SELECT_BUTTON | START_BUTTON)) {
                    isSkippingSuitcaseAnim = TRUE;
                    brightness = 16;
                }
            } else {
                brightness--;
                BUFFER_REG_BLDY = 16 - brightness;
                if (brightness == 0) {
                    state = TS_STATE_FADE_IN;
                    entryStateIdx = 1;
                    brightness = 16;
                    preparePressStart();
                    BUFFER_REG_DISPCNT |= DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON
                                          | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
                }
            }
            break;

        case TS_STATE_PRESS_START_SHOW:
            brightness--;
            if (brightness == 0) {
                psTextPosY = 30720;
                sub_801E150(sprites[TS_SPRITE_PRESS_START_TEXT], 0, 0, 0, 0);
                sprites[TS_SPRITE_PRESS_START_TEXT]->xPosition = 120;
                sprites[TS_SPRITE_PRESS_START_TEXT]->yPosition = 120;
                sprites[TS_SPRITE_PRESS_START_TEXT]->field_1F_0 = 0;
                sprites[TS_SPRITE_PRESS_START_TEXT]->field_1F_2 = 0;
                sprites[TS_SPRITE_PRESS_START_TEXT]->field_E = 0;
                sprite_show_8020CBC(sprites[TS_SPRITE_PRESS_START_TEXT]);
                state = TS_STATE_PRESS_START_WAIT;
            }
            break;

        case TS_STATE_PRESS_START_WAIT:
            if (gGameState.field_2A & (A_BUTTON | START_BUTTON)) {
                psTextVelocity = 0;
                states[TS_ITEM_PRESS_START_TEXT] = 2;
                xVelocitySuitcase = 0;
                states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_MOVE_LEFT;
                play_sfx_80195B4(96, -1);
                state = TS_STATE_SUITCASE_OPENS;
            }
            break;

        case TS_STATE_SUITCASE_OPENS:
            for (j = 0; j < TS_ITEM_COUNT; j++) {
                if (states[j] < 0) {
                    continue;
                }

                switch (j) {
                    case TS_ITEM_SUITCASE:
                        switch (states[TS_ITEM_SUITCASE]) {
                            case TS_ITEM_SC_STATE_MOVE_LEFT:
                                xVelocitySuitcase -= 102;
                                xPosSuitcase += xVelocitySuitcase;
                                if (xPosSuitcase <= 0x2000) {
                                    xPosSuitcase = 0x4000;
                                    sub_801E150(sprites[TS_SPRITE_SUITCASE], 6, 0, 0, 0);
                                    timer = 0;
                                    states[TS_ITEM_SUITCASE] = TS_ITEM_SC_STATE_BUMP_OPEN;
                                }
                                break;

                            case TS_ITEM_SC_STATE_BUMP_OPEN:
                                if (sprites[TS_SPRITE_SUITCASE]->field_12_3) {
                                    sub_801E150(sprites[TS_SPRITE_SUITCASE], 4, 0, 0, 0);
                                    states[TS_ITEM_SUITCASE] = -1;
                                }

                                if (timer < 0xFFFF) {
                                    if (timer == 15) {
                                        beanPosX = 0x4000;
                                        beanPosY = 33280;
                                        beanVelocityX = 384;
                                        beanVelocityY = 1536;
                                        sub_801E150(sprites[TS_SPRITE_BEAN_POINTER], 11, 0, 0, 0);
                                        sprites[TS_SPRITE_BEAN_POINTER]->xPosition = 64;
                                        sprites[TS_SPRITE_BEAN_POINTER]->yPosition = 130;
                                        sprites[TS_SPRITE_BEAN_POINTER]->field_1F_0 = 0;
                                        sprites[TS_SPRITE_BEAN_POINTER]->field_1F_2 = 0;
                                        sprites[TS_SPRITE_BEAN_POINTER]->field_E = 0;
                                        sprite_show_8020CBC(sprites[TS_SPRITE_BEAN_POINTER]);
                                        states[TS_ITEM_POINTER] = 0;
                                    }
                                    timer++;
                                }
                                break;
                        }
                        sprites[TS_SPRITE_SUITCASE]->xPosition = xPosSuitcase / 256;
                        sprites[TS_SPRITE_SUITCASE]->yPosition = yPosSuitcase / 256;
                        break;

                    case TS_ITEM_PRESS_START_TEXT:
                        if (states[TS_ITEM_PRESS_START_TEXT] == 2) {
                            psTextVelocity -= 98;
                            psTextPosY -= psTextVelocity;
                            if (psTextPosY > 45055) {
                                sprite_hide_8021F20(sprites[TS_SPRITE_PRESS_START_TEXT]);
                                states[TS_ITEM_PRESS_START_TEXT] = -1;
                            }
                        }
                        sprites[TS_SPRITE_PRESS_START_TEXT]->yPosition = psTextPosY / 256;
                        break;

                    case TS_ITEM_POINTER:
                        switch (states[TS_ITEM_POINTER]) {
                            case 0:
                                beanVelocityY -= 98;
                                beanPosY -= beanVelocityY;
                                beanPosX += beanVelocityX;
                                if (beanVelocityY < 0 && beanPosY > 35839) {
                                    beanPosY = 35840;
                                    spriteIdx = 2;
                                    states[TS_ITEM_POINTER] = 1;
                                }
                                break;

                            case 1:
                                if (beanPosY / 256 <= 20 * spriteIdx + 92) {
                                    sub_801E150(sprites[spriteIdx + 2], spriteIdx + 3, 0, 0, 0);
                                    sprites[spriteIdx + 2]->xPosition = 180;
                                    sprites[spriteIdx + 2]->yPosition = 20 * spriteIdx + 100;
                                    sprite_show_8020CBC(sprites[spriteIdx + 2]);

                                    if (spriteIdx == 0) {
                                        sub_801E150(sprites[TS_SPRITE_BEAN_POINTER], 12, 0, 0, 0);
                                        states[TS_ITEM_POINTER] = 2;
                                    } else {
                                        spriteIdx--;
                                    }
                                }

                                if (states[TS_ITEM_POINTER] == 1) {
                                    beanPosY -= 1536;
                                }
                                break;

                            case 2:
                                if (sprites[TS_SPRITE_BEAN_POINTER]->field_12_3) {
                                    sub_801E150(sprites[TS_SPRITE_BEAN_POINTER], 13, 0, 0, 0);
                                    sub_801E150(sprites[TS_SPRITE_SUITCASE_VISUAL], 0, 0, 0, 0);
                                    sprites[TS_SPRITE_SUITCASE_VISUAL]->xPosition = 64;
                                    sprites[TS_SPRITE_SUITCASE_VISUAL]->yPosition = 140;
                                    sprites[TS_SPRITE_SUITCASE_VISUAL]->field_1F_0 = 1;
                                    sprites[TS_SPRITE_SUITCASE_VISUAL]->field_E = 1;
                                    sprite_show_8020CBC(sprites[TS_SPRITE_SUITCASE_VISUAL]);
                                    suitcaseVisualState = TS_SV_STATE_APPEAR;

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
                                    state = TS_STATE_GAME_SELECT;
                                }
                                break;
                        }
                        sprites[TS_SPRITE_BEAN_POINTER]->xPosition = beanPosX / 256;
                        sprites[TS_SPRITE_BEAN_POINTER]->yPosition = beanPosY / 256;
                        break;
                }
            }
            break;

        case TS_STATE_GAME_SELECT:
            if (gGameState.field_2A & (A_BUTTON | START_BUTTON)) {
                BUFFER_REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
                BUFFER_REG_BLDY = 0;
                brightness = 16;
                play_sfx_80195B4(96, -1);
                sub_80193B4(0, 0, 16);
                state = TS_STATE_FADE_OUT;
            } else {
                s8 selection = this->selection;
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

                if (this->selection != selection) {
                    if (suitcaseVisualState != TS_SV_STATE_DISAPPEAR) {
                        sub_801E150(sprites[TS_SPRITE_SUITCASE_VISUAL], 3 * selection + 2, 0, 0, 0);
                    }
                    suitcaseVisualState = TS_SV_STATE_DISAPPEAR;
                    sprites[TS_SPRITE_BEAN_POINTER]->yPosition = 20 * this->selection + 92;
                }
            }
            break;

        case TS_STATE_FADE_OUT:
            brightness--;
            BUFFER_REG_BLDY = 16 - brightness;
            if (brightness != 0) {
                break;
            }

            delete this;

            switch (this->selection) {
                case 0:
                    multiplayer_serial_disable();
                    sub_801AFE4(0);
                    BUFFER_REG_BLDCNT = 0;
                    new (0, "LOAD", 0) LoadMenu(8, "LOAD", 0xFFFF);
                    return;

                case 1:
                    stru_203FFF8.field_7_0 = 1;
                    BUFFER_REG_BLDCNT = 0;
                    SoftResetRom(64);
                    return;

                case 2:
                    multiplayer_serial_disable();
                    new (0, "OPTN", 0) OptionsMenu(8, "OPTN", 0);
                    return;

                default:
                    return;
            }
            break;
    }

    switch (suitcaseVisualState) {
        case TS_SV_STATE_APPEAR:
            if (sprites[TS_SPRITE_SUITCASE_VISUAL]->field_12_3) {
                sub_801E150(sprites[TS_SPRITE_SUITCASE_VISUAL], 3 * this->selection + 1, 0, 0, 0);
                suitcaseVisualState = TS_SV_STATE_IDLE;
            }
            break;

        case TS_SV_STATE_DISAPPEAR:
            if (sprites[TS_SPRITE_SUITCASE_VISUAL]->field_12_3) {
                sub_801E150(sprites[TS_SPRITE_SUITCASE_VISUAL], 3 * this->selection, 0, 0, 0);
                suitcaseVisualState = TS_SV_STATE_APPEAR;
            }
            break;
    }
}

void MarioBrosScoreVisual::update() {
    TitleScreen* titleScreen;
    int var1;

    titleScreen = (TitleScreen*)parentProcess;
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
            var11->field_4 = (topScore[i] + 44) | 0x2400;
            var11->field_6 = 0;
            var11->field_8 = 0x40000000;
            var11 = var11->field_10;
        }

        y2 = word_83A75C8[titleScreen->sprites[TS_SPRITE_SUITCASE_VISUAL]->field_22 - 10] - 21;
        for (j = 0; j < 2; j++) {
            var11->field_0 = y2;
            var11->field_2 = 64 + j * 7;
            var11->field_4 = (pScore[j] + 44) | 0x2400;
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
MarioBrosScoreVisual::MarioBrosScoreVisual(u8 priority, char* label, u32 topScore, u8 pScore)
    : Process(priority, label) {
    int i;

    for (i = 5; i >= 0; i--) {
        this->topScore[i] = topScore % 10;
        topScore /= 10;
    }

    for (i = 1; i >= 0; i--) {
        this->pScore[i] = pScore % 10;
        pScore /= 10;
    }
}
