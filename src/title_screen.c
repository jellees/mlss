#include "global.h"
#include "common.h"
#include "title_screen.h"

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
    sub_81DA698(cgdw, (void*)BG_CHAR_ADDR(2), (sub_80198B0(dword_83A2B48) >> 2) & 0x1FFFFF);
    sub_81DA698(dword_83A2F98, (void*)BG_SCREEN_ADDR(28), 320);
    zero = 0;
    sub_81DA698((int*)&zero, (void*)0x600E500, 0x10000C0);
    dword_3000C84(dword_83A34B8, cgdw);
    sub_81DA698(cgdw, (void*)BG_CHAR_ADDR(3), (sub_80198B0(dword_83A34B8) >> 2) & 0x1FFFFF);
    sub_81DA698(dword_83A3860, (void*)BG_SCREEN_ADDR(29), 320);
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
    sub_81DA698(&dword_83A3498, (void*)0x2000000 + 0x80, 8);
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
                sub_81DA698(dword_83A3D60, (void*)0x2000000 + 0x80, 8);
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
            if ((gGameState.field_2A & 0xB) != 0) {
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
            if ((gGameState.field_2A & 0xB) == 0) {
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
                    comp->process.definition = &stru_8CDC258;
                    sub_8021FD4(&stru_8CDC258);
                    if (comp->opdr) {
                        process_remove(comp->opdr, 3);
                    }
                    process_remove(&comp->process, 3);
                }
                open_init_8055A00(alloc_Zero(228, 0, "OPEN", 0), 8, "OPEN", 0);
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

// OPEN process state
// 0 = fade in
// 1 = suitcase falling out of sky and opening
// 2 = suitcase closes
// 3 = press start (waiting for input)
// 4 = suitcase opens for game select or options
// 5 = game select
// 6 = chosen (fade out)

// state array indices
// 0 = suitcase
// 1 = MARIO & LUIGI text
// 2 = SUPERSTAR SAGA text
// 3 = (c) 2003 NINTENDO text
// 4 = PRESS START text
// 5 = bean pointer

// suitcase state
// 0 = suitcase falling out of sky
// 1 = suitcase hitting ground and falling straight
// 2 = suitcase falling over
// 3 = suitcase opening
// 4 = text coming out of suitcase
// 5 = suitcase closes
// 6 = go to left
// 7 = bump open sideways

// https://decomp.me/scratch/WOp2S
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/text08055A00.s\"");
#else
struct OPENProcess* open_init_8055A00(struct OPENProcess* open, u8 priority, char* label,
                                      int selection) {
    struct struc_203FFF8* v5;
    void* cgdw;
    u32 i;
    // int sel;
    char* tmp1;
    void (**tmp2)();
    struct Sprite** sprites;

    struct OPENProcess* proc = open;

    // sel = selection;

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
    open->opdr = sub_80572CC(alloc_Zero(0x24, 0, "OPDR", 0), 8, "OPDR", stru_203FFF8.field_0,
                             stru_203FFF8.field_4);
    open->opdr->process.parentProcess = &proc->process;

    open->selection = selection != 0 ? selection - 1 : 0;
    open->flags_0 = 0;
    proc->brightness = 16;
    proc->flags_4 = 0;
    proc->flags_5 = 1;
    proc->states[0] = 0;

    // Why.
    tmp2 = &dword_3000C78;
    tmp1 = "CGDW";
    sprites = proc->sprites;

    proc->states[1] = 0xFF;
    proc->states[2] = 0xFF;
    proc->states[3] = 0xFF;
    proc->states[4] = 0xFF;
    proc->states[5] = 0xFF;

    *tmp2 = 0;

    cgdw = alloc_zero_8018DB4(0x8000, 1, tmp1, 0);
    dword_3000C84(dword_83A3D80, cgdw);
    sub_81DA698(cgdw, (void*)0x6000000, (sub_80198B0(dword_83A3D80) >> 2) & 0x1FFFFF);
    dword_3000C84(dword_83A4874, cgdw);
    sub_81DA698(cgdw, (void*)0x6004000, (sub_80198B0(dword_83A4874) >> 2) & 0x1FFFFF);
    sub_81DA698(dword_83A575C, (void*)0x600C000, 320);
    sub_81DA698(dword_83A5C5C, (void*)0x600D000, 1024);
    sub_81DA698(dword_83A6C5C, (void*)0x600C800, 312);
    free_heap_8018DA8(cgdw);
    sub_8020994(0, 0, 0, 0);

    for (i = 0; i < 9; i += 3) {
        sprites[i + 0] =
            sub_8020DD0(0, word_83A74C0[(i * 2) + 0], word_83A74C0[(i * 2) + 1], -1, -1, -1, -1);
        sub_801E150(sprites[i + 0], 0, -1, 0, 0);

        sprites[i + 1] =
            sub_8020DD0(0, word_83A74C0[(i * 2) + 2], word_83A74C0[(i * 2) + 3], -1, -1, -1, -1);
        sub_801E150(sprites[i + 1], 0, -1, 0, 0);

        sprites[i + 2] =
            sub_8020DD0(0, word_83A74C0[(i * 2) + 4], word_83A74C0[(i * 2) + 5], -1, -1, -1, -1);
        sub_801E150(sprites[i + 2], 0, -1, 0, 0);
    }

    if (selection == 0) {
        proc->xPosSuitcase = 30720;
        proc->yPosSuitcase = 0;
        proc->yVelocitySuitcase = 512;
        sub_801E150(proc->sprites[5], 0, 0, 0, 0);
        proc->sprites[5]->xPosition = 120;
        proc->sprites[5]->yPosition = 0;
        proc->sprites[5]->field_1F_0 = 0;
        proc->sprites[5]->field_1F_2 = 1;
        proc->sprites[5]->field_E = 2;
        sprite_show_8020CBC(proc->sprites[5]);
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

    sub_81DA698(gGameState.field_888_1 == 0 ? dword_83A7300 : dword_83A7140, (void*)0x2000080, 112);

    (*(vu16*)(0x2000000 + 0x80)) = 0x7FFF;
    gGameState.field_2 = -1;
    gGameState.field_0 = -1;
    sub_8018B78(2, open_8056224);
    sub_8019308(0, 41, -1);

    if (selection == 0) {
        open->flags_2 = 0;
        (*(vu16*)(0x2000000 + 0x00)) |= 4673;
    } else {
        open->flags_2 = 2;
        (*(vu16*)(0x2000000 + 0x00)) |= 5953;
    }

    return open;
}
#endif

void open_8055E2C(struct OPENProcess* process) {
    sprite_hide_8021F20(process->sprites[6]);

    sub_801E150(process->sprites[8], 0, 0, 0, 0);
    process->sprites[8]->xPosition = 121;
    process->sprites[8]->yPosition = 80;
    process->sprites[8]->xScale = 256;
    process->sprites[8]->yScale = 256;
    process->sprites[8]->field_1F_0 = 0;
    process->sprites[8]->field_1F_2 = 0;
    process->sprites[8]->field_E = 2;
    sprite_show_8020CBC(process->sprites[8]);

    sub_801E150(process->sprites[5], 2, 0, 0, 0);
    process->sprites[5]->xPosition = 120;
    process->sprites[5]->yPosition = 140;
    process->sprites[5]->field_1F_0 = 0;
    process->sprites[5]->field_1F_2 = 1;
    process->sprites[5]->field_E = 2;
    process->sprites[5]->field_12_4 = 1;
    sprite_show_8020CBC(process->sprites[5]);

    process->xPosSuitcase = 30720;
    process->yPosSuitcase = 35840;
    process->flags_5 = 0;

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

    process->mlTextPosY = 0;
    process->mlTextScaleX = 256;
    process->mlTextScaleY = 256;
    process->states[0] = -1;
}

// https://decomp.me/scratch/WbD37
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/text08055F74.s\"");
#else
void open_8055F74(struct OPENProcess* process, int selection) {
    s16 tmp;

    sprite_hide_8021F20(process->sprites[6]);
    sprite_hide_8021F20(process->sprites[0]);

    tmp = 100;
    sub_801E150(process->sprites[2], 3, 0, 0, 0);
    process->sprites[2]->xPosition = 180;
    process->sprites[2]->yPosition = tmp;
    sprite_show_8020CBC(process->sprites[2]);

    tmp = 120;
    sub_801E150(process->sprites[3], 4, 0, 0, 0);
    process->sprites[3]->xPosition = 180;
    process->sprites[3]->yPosition = tmp;
    sprite_show_8020CBC(process->sprites[3]);

    tmp = 140;
    sub_801E150(process->sprites[4], 5, 0, 0, 0);
    process->sprites[4]->xPosition = 180;
    process->sprites[4]->yPosition = tmp;
    sprite_show_8020CBC(process->sprites[4]);

    sub_801E150(process->sprites[1], 13, 0, 0, 0);
    process->sprites[1]->xPosition = 112;
    process->sprites[1]->yPosition = 92 + 20 * process->selection;
    sprite_show_8020CBC(process->sprites[1]);

    sub_801E150(process->sprites[8], 0, 0, 0, 0);
    process->sprites[8]->xPosition = 121;
    process->sprites[8]->yPosition = 80;
    process->sprites[8]->xScale = 256;
    process->sprites[8]->yScale = 256;
    process->sprites[8]->field_1F_0 = 0;
    process->sprites[8]->field_1F_2 = 0;
    process->sprites[8]->field_E = 2;
    sprite_show_8020CBC(process->sprites[8]);

    tmp = 140;
    sub_801E150(process->sprites[5], 4, 0, 0, 0);
    process->sprites[5]->xPosition = 64;
    process->sprites[5]->yPosition = tmp;
    process->sprites[5]->field_1F_0 = 0;
    process->sprites[5]->field_1F_2 = 1;
    process->sprites[5]->field_E = 2;
    sprite_show_8020CBC(process->sprites[5]);

    tmp = 140;
    sub_801E150(process->sprites[7], 3 * (selection - 1) + 1, 0, 0, 0);
    process->sprites[7]->xPosition = 64;
    process->sprites[7]->yPosition = tmp;
    process->sprites[7]->field_1F_0 = 1;
    process->sprites[7]->field_E = 1;
    sprite_show_8020CBC(process->sprites[7]);

    process->flags_0 = 1;

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

    process->mlTextPosY = 0;
    process->mlTextScaleX = 256;
    process->mlTextScaleY = 256;

    sub_80574FC();
}
#endif
