#include "global.h"
#include "common.h"
#include "sprite.h"
#include "heap.h"
#include "asm_processes.h"
#include "bgbm.h"
#include "text080575C8.h"
#include "field/field.h"
#include "field/field_object.h"
#include "field/field_player_character.h"
#include "field/field_monster.h"
#include "event/field_event_script.h"

void FieldManager::startBattleTransition(int unused, bool fromEncounter) {
    battleTransitionActive = true;
    field_292 = 0;
    field_290 = -2;
    field_291_3 = 2;
    battleTransitionFromEncounter = fromEncounter;
    leader->field_350_14 = follower->field_350_14 = 1;
    sub_80193B4(0, 0, 16);
    if (fromEncounter) {
        evts->disable();
        if (field_2A9_2) {
            FieldPlayerCharacter* player = (FieldPlayerCharacter*)objects[field_2A9_5];
            FieldObject* target = objects[field_2A8_0];
            s32 x;
            s32 y;

            if (field_2A8_5) {
                target = ((FieldMonster*)target)->field_344;
            }
            x = target->sprite->xPosition;
            y = target->sprite->yPosition;
            switch (field_2A9_2) {
                case 1:
                case 5:
                    player->jumpToHeight(16, -1, -1);
                    player->sub_8049AB4(0, 0);
                    player->field_36C->animationEndAction = ANIMATION_END_HIDE;
                    if (player->field_218 == SPRITE_ID(0, 1) || player->field_218 == SPRITE_ID(0, 40)
                        || player->field_218 == SPRITE_ID(0, 2)) {
                        Sprite* sprite = player->sprite;

                        sprite_set_animation(sprite, (u8)(sprite->field_21 % 5) + 5, 0);
                    }
                    player->field_36C->xPosition = x + 1;
                    player->field_36C->yPosition = y - target->field_283 + 2;
                    break;
                case 2:
                    player->sub_8049AB4(0, 1);
                    player->field_36C->xPosition = x + 1;
                    player->field_36C->yPosition = y - target->field_283 + 2;
                    break;
                case 4:
                    player->sub_8049AB4(1, 0);
                    break;
                case 3:
                    player->sub_8046A10();
                    player->jumpToHeight(16, -1, -1);
                    player->sub_8049AB4(1, 0);
                    break;
            }
        }
        if (field_2A9_6) {
            s32 height;

            if (follower->field_238 != -1) {
                height = objects[follower->field_238]->z + objects[follower->field_238]->height;
            } else {
                height = follower->z;
            }
            sub_8028AFC(1, 0, follower->x / 256 - 120,
                        (follower->y - height) / 256
                            - (follower->airFrames != -1 ? field_28D : field_28F),
                        0xC00);
        }
    } else {
        field_2A9_2 = 0;
    }
    fieldMode = FIELD_MODE_BATTLE_TRANSITION;
}

void FieldManager::sub_803CB5C() {
    FieldPlayerCharacter* player;

    if (!battleTransitionActive) {
        return;
    }
    if (field_2A9_6) {
        sub_8028C40();
        field_2A9_6 = sub_8028E70();
    }
    player = (FieldPlayerCharacter*)objects[field_2A9_5];
    if (field_290 == -2) {
        FieldObject* target = objects[field_2A8_0];
        s32 x;
        s32 y;

        if (field_2A8_5) {
            target = ((FieldMonster*)target)->field_344;
        }
        x = target->sprite->xPosition;
        y = target->sprite->yPosition;
        switch (field_2A9_2) {
            case 1:
            case 5:
                if (player->velocityZ < 0) {
                    player->land();
                }
                if (player->field_36C->hidden) {
                    field_292 = 0;
                    field_290 = -1;
                    break;
                }
                player->field_36C->xPosition = x + 1;
                player->field_36C->yPosition = y - objects[field_2A8_0]->field_283 + 2;
                break;
            case 2:
                if (++field_292 == 30) {
                    field_292 = 0;
                    field_290 = -1;
                    break;
                }
                player->field_36C->xPosition = x + 1;
                player->field_36C->yPosition = y - objects[field_2A8_0]->field_283 + 2;
                break;
            case 4:
                if (++field_292 == 15) {
                    field_292 = 0;
                    field_290 = -1;
                }
                break;
            case 3:
                if (player->velocityZ < 0) {
                    player->land();
                    field_292 = 0;
                    field_290 = -1;
                }
                break;
            default:
                field_290 = -1;
                break;
        }
        if (field_290 == -1) {
            if (leader->field_358_3) {
                leader->sub_8046980();
                leader->sub_8046A10();
                follower->sub_8046980();
                follower->sub_8046A10();
            }
            switch (leader->field_368->actionMode) {
                case ACTION_MODE_PUMP_MARIO:
                    if (leader->field_358_3) {
                        sub_803DF9C(leader);
                    } else {
                        sub_803DF00(leader);
                    }
                    break;
                case ACTION_MODE_MOLE_LUIGI:
                    if (leader->field_358_3) {
                        sub_803DF9C((FieldPlayerCharacter*)objects[1]);
                    } else if (brothersTogether || player->objectIndex == BROTHER_LUIGI) {
                        sub_803DBE4((FieldPlayerCharacter*)objects[1]);
                    } else {
                        field_290 = 0;
                    }
                    break;
                case ACTION_MODE_BARREL_LUIGI:
                    if (brothersTogether) {
                        sub_803DD68((FieldPlayerCharacter*)objects[1]);
                    } else {
                        field_290 = 0;
                    }
                    break;
                case ACTION_MODE_MARIO_ON_BARREL:
                    sub_803DE2C();
                    break;
                case ACTION_MODE_MINI_MARIO:
                    if (follower->state > 100) {
                        sub_803DC88((FieldPlayerCharacter*)objects[0]);
                    } else if (leader->field_358_3) {
                        sub_803DF9C((FieldPlayerCharacter*)objects[0]);
                    } else if (brothersTogether || player->objectIndex == BROTHER_MARIO) {
                        sub_803DC88((FieldPlayerCharacter*)objects[0]);
                    } else {
                        field_290 = 0;
                    }
                    break;
                case ACTION_MODE_FIRE_DASH:
                case ACTION_MODE_THUNDER_TICKLE:
                case ACTION_MODE_14:
                case ACTION_MODE_15:
                case ACTION_MODE_FIRE_DASH_LUIGI_ANGRY:
                case ACTION_MODE_THUNDER_TICKLE_MARIO_ANGRY:
                    field_290 = 0;
                    field_246_0 = 1;
                    break;
                default:
                    field_290 = 0;
                    break;
            }
        }
    } else if (field_290 != -1 && !field_2A9_6) {
        sub_803E070();
        if (battleTransitionActive) {
            field_292++;
        } else {
            sprite_remove(player->field_36C);
            fieldMode = FIELD_MODE_NONE;
            leader->field_350_14 = follower->field_350_14 = 0;
        }
    }
}

void FieldManager::sub_803CF64() {
    if (leader->field_358_3) {
        sub_803D6D8();
        return;
    }
    switch (leader->state) {
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 15:
        case 58:
        case 62:
        case 63:
        case 70:
        case 71:
        case 72:
        case 107:
            sub_803D05C(leader);
            break;
        default:
            leader->sprite->paused = 1;
            sub_804FE68(leader, objects);
            break;
    }
    switch (follower->state) {
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 15:
        case 58:
        case 62:
        case 63:
        case 70:
        case 71:
        case 72:
        case 107:
            sub_803D05C(follower);
            break;
        default:
            follower->sprite->paused = 1;
            sub_804FE68(follower, objects);
            break;
    }
}

void FieldManager::sub_803D05C(FieldPlayerCharacter* player) {
    switch (player->state) {
        case 10:
            if (player->field_355 < 60) {
                u16* entry;
                u32 i;

                player->field_355++;
                entry = word_839FC58;
                for (i = 0; i < 4; i++, entry += 2) {
                    if (entry[0] == player->field_355) {
                        sprite_set_animation(player->field_36C, entry[1], 0);
                    }
                }
            }
            if (input->held & player->field_368->actionButton) {
                break;
            }
            if (player->field_355 < 60) {
                player->stopHandPower();
                player->otherBrother->field_350_14 = 0;
                break;
            }
            player->state = 11;
            player->method7(1);
            player->sprite->animationEndAction = ANIMATION_END_STOP;
            break;

        case 11:
            if (!player->sprite->animationComplete) {
                break;
            }
            if (player->sub_804D734(1, objects, objectCount) || player->sub_804DBD0(1)) {
                player->field_355 = 5;
            } else {
                player->field_355 = 40;
            }
            player->field_214_0 = 0;
            player->state = 12;
            sprite_set_animation(player->field_36C, 5, 0);
            player->field_36C->animationEndAction = ANIMATION_END_STOP;
            break;

        case 12: {
            Sprite* sprite = player->field_36C;

            if (sprite->field_21 == 5 && sprite->animationComplete) {
                sprite_set_animation(sprite, 6, 0);
            }
            if (player->field_355 != 0 && --player->field_355 == 0) {
                player->stopHandPower();
                player->otherBrother->field_350_14 = 0;
            }
            break;
        }

        case 58:
            if (--player->field_355 == 0) {
                player->sub_8049000(SPRITE_ID(0, 1));
                shotBullets[0]->sub_804FAF8();
                field_290 = 0;
                field_246_0 = 1;
            }
            break;

        case 62:
            if (player->sprite->animationComplete) {
                player->field_214_0 = 2;
                player->direction = 5;
                player->jumpToHeight(12, 0x75 >> isUnderwater, -1);
                player->sub_8049000(SPRITE_ID(0, 2));
                player->field_20C_13 = 0;
                player->field_355 = 0;
                player->state = 63;
            }
            break;

        case 63:
            player->field_355++;
            if (player->field_355 & ((2 << isUnderwater) >> field_20A_1)) {
                player->direction++;
            }
            player->updateAirborne();
            player->sub_804FB64(objects, 0, 0);
            player->method7(1);
            if (player->velocityZ < 0) {
                player->height = player->previousHeight;
                if (player->direction == player->angle >> 5) {
                    field_290 = 0;
                    field_246_0 = 1;
                }
            }
            break;

        case 72:
            player->updateAirborne();
            player->sub_804FB64(objects, 0, 0);
            player->method7(1);
            if (player->velocityZ < 0) {
                player->height = player->previousHeight;
                player->field_350_15 = 0;
                field_290 = 0;
                field_246_0 = 1;
            }
            break;

        case 107: {
            u8 step = byte_839FC68[player->field_355 / 4];
            u8 last = step & 0x80;
            u8 animation = player->sprite->field_21;
            u8 frame = player->sprite->frame;
            u8 index = step & 0x7F;

            player->sub_8049000(word_839FC74[index + player->field_358_13 * 2]);
            sprite_set_animation(player->sprite, animation, frame);
            player->sprite->yScale = word_839FC74[index + player->field_358_13 * 2 + 1];
            if (last) {
                field_290 = 0;
                field_246_0 = 1;
            } else {
                player->field_355++;
            }
            break;
        }

        case 15:
            if (player->flickerTimer == 0) {
                field_290 = 0;
                field_246_0 = 1;
            }
            break;

        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
            break;
    }
}

void FieldManager::sub_803D6D8() {
    switch (follower->state) {
        case 16:
        case 17:
        case 18:
        case 19:
        case 23:
        case 24:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 37:
        case 38:
        case 59:
        case 64:
        case 65:
        case 66:
        case 67:
        case 68:
        case 69:
        case 81:
        case 82:
        case 83:
        case 84:
        case 86:
        case 87:
        case 89:
        case 92:
        case 93:
        case 94:
        case 95:
            follower->updateAirborne();
            follower->sub_804FB64(objects, 0, 0);
            break;

        case 25:
        case 26:
        case 36:
            leader->updateAirborne();
            leader->sub_804FB64(objects, 0, 0);
            follower->field_26_1 = leader->field_26_1;
            follower->direction = leader->direction;
            follower->angle = leader->angle;
            follower->x = leader->x;
            follower->y = leader->y;
            follower->z = leader->z;
            follower->height = leader->height + 0x1C00;
            follower->field_230 = leader->field_230;
            follower->field_234 = leader->field_234;
            break;

        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
        case 106:
            leader->updateAirborne();
            leader->sub_804FB64(objects, 0, 0);
            break;

        case 107: {
            u8 step = byte_839FCB0[leader->field_355 / 4];
            u8 last = step & 0x80;
            u8 animation = leader->sprite->field_21;
            u8 frame = leader->sprite->frame;
            u8 index = step & 0x7F;

            leader->sub_8049000(word_839FCBC[index + leader->field_358_13 * 2]);
            sprite_set_animation(leader->sprite, animation, frame);
            leader->sprite->yScale = word_839FCBC[index + leader->field_358_13 * 2 + 1];
            if (last) {
                field_290 = 0;
                field_246_0 = 1;
            } else {
                leader->field_355++;
            }
            break;
        }

        case 72:
        case 88:
            leader->updateAirborne();
            leader->sub_804FB64(objects, 0, 0);
            if (leader->velocityZ < 0) {
                leader->height = leader->previousHeight;
                field_290 = 0;
                field_246_0 = 1;
            }
            break;

        case 15:
            follower->sprite->paused = 1;
            if (leader->flickerTimer == -1) {
                follower->field_20C_11 = 1;
                follower->field_20C_13 = 0;
                follower->field_20C_14 = 1;
                field_290 = 0;
                field_246_0 = 1;
            }
            break;

        default:
            leader->updateAirborne();
            leader->sub_804FB64(objects, 0, 0);
            follower->updateAirborne();
            follower->sub_804FB64(objects, 0, 0);
            break;
    }
}

void FieldManager::sub_803DB0C(FieldPlayerCharacter* player) {
    u8 step = byte_839FCF8[player->field_355 / 4];
    u8 last = step & 0x80;
    u8 animation = player->sprite->field_21;
    u8 frame = player->sprite->frame;
    u8 index = step & 0x7F;

    player->sub_8049000(word_839FD04[index + player->field_358_13 * 2]);
    sprite_set_animation(player->sprite, animation, frame);
    player->sprite->yScale = word_839FD04[index + player->field_358_13 * 2 + 1];
    if (last) {
        field_290 = 0;
        field_246_0 = 1;
    } else {
        player->field_355++;
    }
}

void FieldManager::sub_803DBE4(FieldPlayerCharacter* player) {
    sub_802C4D4(1, 1);
    player->isMole = 0;
    player->field_210_1 = 1;
    player->field_210_2 = 1;
    player->state = 62;
    player->field_350_14 = 1;
    player->field_23B = 0;
    player->field_352_6 = 0;
    player->field_214_0 = 4;
    player->sub_8049000(SPRITE_ID(0, 68));
    player->sprite->animationEndAction = ANIMATION_END_STOP;
    play_sfx_80195B4(0x38, -1);
}

void FieldManager::sub_803DC88(FieldPlayerCharacter* player) {
    u32 i;

    for (i = 0; i < 5; i++) {
        if (word_839FD40[i] == player->field_218) {
            player->field_358_13 = i;
            break;
        }
    }
    sub_802C4D4(1, 1);
    player->field_214_0 = 0;
    player->state = 107;
    player->field_350_14 = 1;
    player->field_23B = 0;
    if (player->field_358_3) {
        player->otherBrother->state = 107;
        player->otherBrother->field_350_14 = 1;
        player->otherBrother->field_23B = 0;
    }
    player->field_355 = 0;
    play_sfx_80195B4(0x4A, -1);
}

void FieldManager::sub_803DD68(FieldPlayerCharacter* player) {
    sub_802C4D4(1, 1);
    player->state = 72;
    player->field_350_14 = 1;
    player->field_23B = 0;
    if (player->field_358_3) {
        player->otherBrother->state = 72;
        player->otherBrother->field_350_14 = 1;
        player->otherBrother->field_23B = 0;
    }
    player->sub_8049000(SPRITE_ID(0, 2));
    player->jumpToHeight(24, 0x75, (s16)walkSpeed);
    player->method7(1);
    player->field_23B = 0;
    player->showBarrelBreakingSprite();
    player->field_36C->speed = field_FA_11;
    play_sfx_80195B4(0x46, -1);
}

void FieldManager::sub_803DE2C() {
    sub_802C4D4(1, 1);
    follower->state = leader->state = 88;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_23B = leader->field_23B = 0;
    leader->sub_8049000(SPRITE_ID(0, 2));
    leader->jumpToHeight(24, 0x75, (s16)walkSpeed);
    leader->method7(1);
    field_209_7 = 0;
    leader->showBarrelBreakingSprite();
    leader->field_36C->speed = field_FA_11;
    play_sfx_80195B4(0x46, -1);
}

void FieldManager::sub_803DF00(FieldPlayerCharacter* player) {
    sub_802C4D4(1, 1);
    player->state = 58;
    player->field_350_14 = 1;
    player->field_23B = 0;
    player->field_214_0 = 4;
    player->sub_8049000(SPRITE_ID(0, 48));
    player->field_239 = player->sprite->speed = field_FA_11;
    shotBullets[0]->sub_804E0D8(4, leader, 0);
    player->field_355 = 70;
    play_sfx_80195B4(0x56, -1);
}

void FieldManager::sub_803DF9C(FieldPlayerCharacter* player) {
    int i;

    player->state = 15;
    if (player->field_358_3) {
        player->otherBrother->state = 15;
    }
    for (i = 0; i < 8; i++) {
        shotBullets[i]->sub_804FAF8();
    }
    player->sub_8049000(player->objectIndex == BROTHER_MARIO ? SPRITE_ID(0, 1) : SPRITE_ID(0, 2));
    player->sprite->xScale = player->sprite->yScale = 0x100;
    player->field_23B = 0;
    player->startFlicker(FIELD_OBJECT_FLICKER_IN);
    play_sfx_80195B4(0x49, -1);
}

// https://decomp.me/scratch/TODO
// Only differs in case 1's OAM loop: the original reloads each byte for the objMode store (4 more
// ldrb), as if the test and the store used different address expressions that loop.c merged later.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803E070__12FieldManager.s\"");
#else
void FieldManager::sub_803E070() {
    switch (field_290) {
        case 0:
            gGameState.field_888_4 = 1;
            ((struct struc_839EC80*)off_839EC80)->field_1_0 = 0;
            evts->disable();
            if (field_314) {
                sub_81166AC(field_314, 3);
            }
            field_314 = NULL;
            sub_80F0184(evts);
            if (field_1FC) {
                sub_805CCC0(field_1FC, 3);
            }
            field_1FC = NULL;
            delete field_304;
            field_304 = NULL;
            delete field_310;
            field_310 = NULL;
            sub_8029120(0xFFFF, 0xFFFF);
            sub_8029888(NULL, 0);
            DmaStop(0);
            field_290++;
            break;

        case 1: {
            int i;

            delete field_30C;
            field_30C = NULL;
            for (i = 0; i < 128; i++) {
                if (gGameState.oamBuffers[0][i].objMode == 0) {
                    gGameState.oamBuffers[0][i].objMode = 1;
                }
            }
            if (field_F8_0) {
                sprite_context_release();
                field_F8_0 = 0;
            }
            dword_3000D88 = new (0, "BGBM", 1) BGBM(0xB000, 0xA800, 15);
            dword_3000D8C = new (0, "PBUF", 1) s16[60];
            dword_3000D90 = new (0, "SBUF", 1) u8[26];
            dword_3000D94 = new (0, "SZBF", 1) s16[26];
            byte_3000D98 = 0;
            byte_3000D99 = 0;
            byte_3000D9A = 0;
            word_3000D9C = 0;
            field_290++;
            break;
        }

        case 2: {
            struct struc_839EC80* buffer;

            sub_801DE8C(dword_3000D88);
            buffer = (struct struc_839EC80*)off_839EC80;
            buffer->field_12_0 = 0;
            buffer->field_10_0 = 0;
            BUFFER_REG_BG0CNT = 0x1508;
            CpuSet(word_839FE44, (void*)0x02000260, 0x04000008);
            gGameState.field_2 |= 0x8000;
            ((struct struc_839EC80*)off_839EC80)->field_1_0 = 1;
            if (brothersTogether || field_208_6) {
                play_sfx_80195B4(word_839FE64[field_2A9_2], -1);
            } else if (battleTransitionFromEncounter) {
                play_sfx_80195B4(word_839FE64[(field_2A9_5 + 1) * 6 + field_2A9_2], -1);
            } else {
                play_sfx_80195B4(word_839FE64[(luigiLeads + 1) * 6 + field_2A9_2], -1);
            }
            field_290++;
            break;
        }

        case 3: {
            s16* vertex;
            u8* order;
            s16* depth;
            u8* face;
            u32 i;
            u32 j;
            u32 k;
            u32 l;
            int swapped;

            if (word_3000D9C > 0xEF) {
                gGameState.field_884 = 0;
                dword_3001034(0x03DE03DE, (void*)0x02000080, 0x400);
                dword_3001034(0x03DE03DE, (void*)0x05000000, 0x400);
                field_290++;
                word_3000D9C = 0;
                byte_3000D98 = 0;
                byte_3000D99 = 0;
                byte_3000D9A = 0;
                break;
            }
            sub_801DC00(dword_3000D88, 0);
            CpuSet(word_839FD4A, dword_3000D8C, 0x3C);
            vertex = dword_3000D8C;
            for (i = 0; i < 20; vertex += 3, i++) {
                s32 z1;
                s32 y1;
                s32 y3;
                s32 x3;
                s32 z2;
                s32 x2;
                s32 z;

                vertex[1] = (word_8198584[byte_3000D98] * (y1 = vertex[1])
                             + word_8198504[byte_3000D98] * (z1 = vertex[2]))
                            / 0x4000;
                vertex[2] =
                    (word_8198504[byte_3000D98] * -y1 + word_8198584[byte_3000D98] * z1) / 0x4000;
                vertex[0] = (word_8198584[byte_3000D99] * (x2 = vertex[0])
                             - word_8198504[byte_3000D99] * (z2 = vertex[2]))
                            / 0x4000;
                vertex[2] = z =
                    (word_8198504[byte_3000D99] * x2 + word_8198584[byte_3000D99] * z2) / 0x4000;
                vertex[0] = (word_8198584[byte_3000D9A] * (x3 = vertex[0])
                             - word_8198504[byte_3000D9A] * (y3 = vertex[1]))
                            / 0x4000;
                vertex[1] =
                    (word_8198504[byte_3000D9A] * x3 + word_8198584[byte_3000D9A] * y3) / 0x4000;
                vertex[2] = z - 0x800;
                vertex[0] =
                    ((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                        -(vertex[0] << 11), vertex[2])
                    * word_3000D9C / 16;
                {
                    s32 screenY = ((int (*)(int, int))((u8*)dword_3001038
                                                       + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                                      -(vertex[1] << 11), vertex[2])
                                  * word_3000D9C / 16;

                    vertex[0] += 120;
                    vertex[1] = screenY + 80;
                }
            }
            order = dword_3000D90;
            depth = dword_3000D94;
            face = byte_839FDC2[0];
            for (j = 0; j < 26; face += 5, j++) {
                *order++ = j;
                if (face[0] == 0) {
                    *depth++ = (dword_3000D8C[face[1] * 3 + 2] + dword_3000D8C[face[2] * 3 + 2]
                                + dword_3000D8C[face[3] * 3 + 2])
                               / 3;
                } else {
                    *depth++ = (dword_3000D8C[face[1] * 3 + 2] + dword_3000D8C[face[2] * 3 + 2]
                                + dword_3000D8C[face[3] * 3 + 2] + dword_3000D8C[face[4] * 3 + 2])
                               / 4;
                }
            }
            do {
                swapped = 0;
                order = dword_3000D90;
                for (k = 0; k < 25; order++, k++) {
                    if (dword_3000D94[order[0]] > dword_3000D94[order[1]]) {
                        u8 temp = order[0];

                        order[0] = order[1];
                        order[1] = temp;
                        swapped = 1;
                    }
                }
            } while (swapped);
            order = dword_3000D90;
            for (l = 0; l < 26; l++) {
                u8 index = *order++;

                face = byte_839FDC2[index];
                if (face[0] == 0) {
                    sub_801DD80(dword_3000D88, dword_3000D8C[face[1] * 3],
                                dword_3000D8C[face[1] * 3 + 1], dword_3000D8C[face[2] * 3],
                                dword_3000D8C[face[2] * 3 + 1], dword_3000D8C[face[3] * 3],
                                dword_3000D8C[face[3] * 3 + 1], 15, true);
                } else {
                    sub_801DC4C(dword_3000D88, dword_3000D8C[face[1] * 3],
                                dword_3000D8C[face[1] * 3 + 1], dword_3000D8C[face[2] * 3],
                                dword_3000D8C[face[2] * 3 + 1], dword_3000D8C[face[3] * 3],
                                dword_3000D8C[face[3] * 3 + 1], dword_3000D8C[face[4] * 3],
                                dword_3000D8C[face[4] * 3 + 1], 8, true);
                }
            }
            sub_801DC38(dword_3000D88);
            sub_801DB58(dword_3000D88);
            byte_3000D9E = gGameState.field_8C1;
            word_3000D9C += byte_3000D9E * 4;
            byte_3000D99 += byte_3000D9E * 4;
            byte_3000D9A += byte_3000D9E * 4;
            break;
        }

        case 4:
            operator delete(dword_3000D94);
            operator delete(dword_3000D90);
            operator delete(dword_3000D8C);
            delete dword_3000D88;
            battleTransitionActive = false;
            gGameState.field_888_4 = 0;
            field_2B6 = 0x3DE;
            if (!battleTransitionFromEncounter) {
                evts->enable();
            }
            break;
    }
}
#endif

bool FieldManager::isBattleTransitionActive() {
    return battleTransitionActive;
}
