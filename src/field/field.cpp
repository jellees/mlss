#pragma implementation "field.h"

#include "global.h"
#include "common.h"
#include "event/event.h"
#include "sprite.h"
#include "heap.h"
#include "field/field.h"
#include "field/field_object.h"
#include "field/field_player_character.h"
#include "asm_processes.h"
#include "text080575C8.h"
#include "field/field_monster.h"
#include "field/field_sprite_layout.h"
#include "field/field_block.h"
#include "event/field_event_script.h"
#include "sign.h"
#include "game_mode.h"
#include "load_menu.h"

FieldManager::FieldManager(u8 priority, char* label, int roomId, bool arg4, bool arg5)
    : Process(priority, label) {
    field_F8_1 = (roomId == -1);

    bevs = new (0, "BEVS", 0) BEVS(7, "BEVS");
    bevs->parentProcess = this;
    bevs->disable();
    evts = new (0, "EVTS", 0) EVTS(6, "EVTS");
    evts->parentProcess = this;
    evts->disable();

    sub_819A138(gGameState.field_8D0, gGameState.field_1C);
    dword_3000D7C = this;
    dword_3000D78 = evts;
    BUFFER_REG_DISPCNT = 0;
    input = &gGameState.input;
    field_1C = new (1, "FMEX", 1) FieldStruct2;
    field_20 = new (1, "FMBK", 1) FieldBackup;
    field_23C = new (1, "PLST", 1) u8[0x1000];
    field_24 = new (1, "PALW", 1) u16[0x200];

    field_F8_2 = 0;
    field_F8_0 = 0;
    field_F9_3 = arg4;
    field_208_0 = 1;
    field_F9_0 = 0;
    field_F9_2 = 0;
    field_F0 = 0;
    currentWarp = 0;
    field_2B8_0 = 0;
    field_2B8_4 = 0;
    field_2B8_5 = 0;
    field_2CC = 0;
    field_11E = 0;
    field_120_0 = 0;
    field_120_10 = 0;
    field_120_12 = 0;
    field_120_13 = 0;
    field_122 = 0;
    this->roomId = roomId;
    field_128 = 0;
    field_FC_7 = 15;
    field_FC_11 = 0;
    field_246_0 = 0;
    battleTransitionActive = false;
    field_291_1 = 0;
    inBattle = 0;
    field_2B9 = 0xFF;
    field_2B8_6 = 0;
    field_12B = -1;
    field_12C_2 = -2;
    viewingSignRequested = false;
    field_12D_0 = 0;
    field_12D_4 = 0;
    field_12D_5 = 0;
    field_FC_2 = 0;
    field_10A = 0;
    field_FC_0 = 0;
    field_12E = 0;
    field_130 = 0;
    field_F9_5 = 0;
    field_F9_4 = arg4 ^ 1;
    field_27A = 0;
    field_27C = 0;
    field_27E = 0;
    field_280 = 0;
    field_282 = 0;
    field_284 = 0;
    field_28A = 0x68;
    field_28B = 0x88;
    field_28C = 0x50;
    field_28D = 0x6A;
    field_28E = 0x26;
    field_28F = 0x6A;
    luigiLeads = 0;
    field_208_3 = 1;
    field_209_0 = 0;
    brothersTogether = 0;
    field_208_5 = 0;
    field_208_6 = 0;
    field_208_7 = 0;
    field_F8_4 = 1;
    field_209_0 = 0;
    field_209_7 = 1;
    field_20A_1 = 0;
    field_20A_2 = 0;
    field_20A_3 = 0;
    field_20A_4 = 0;
    field_20A_5 = 0;
    field_2D8_0 = 31;
    field_240 = 0x1000;
    field_20A_7 = 0;
    field_242 = 0;
    field_244 = 0;
    field_20B_4 = 0;
    field_20B_5 = 0;
    field_20B_6 = 0;
    field_20B_7 = 0;
    field_20B_1 = 1;
    field_209_1 = 0;
    field_209_5 = 0;
    field_209_6 = 0;
    field_F9_7 = 0;
    field_FA_4 = 1;
    field_26C = 0;
    brothersForm = BROTHERS_FORM_NORMAL;
    field_2A9_6 = 0;
    field_2A9_7 = 0;
    field_F8_3 = arg5;
    field_1FA = 0xFF00;
    field_304 = 0;
    field_308 = 0;
    field_30C = 0;
    field_310 = 0;
    field_314 = 0;
    field_1F6 = -1;
    field_1F8 = 0;
    field_2B2 = -2;
    field_318 = 0;
    sub_8029934();
    gGameState.field_88A_5 = 1;
    MapEventInfo::instance->engineRegisters[30] = 0;
    MapEventInfo::instance->engineRegisters[32] = 0;
}

FieldManager::~FieldManager() {
    if (field_314) {
        sub_81166AC(field_314, 3);
    }
    delete field_30C;
    delete field_310;
    if (field_1FC) {
        sub_805CCC0(field_1FC, 3);
    }
    if (field_308) {
        sub_805C73C(field_308, 3);
    }
    if (field_304) {
        delete field_304;
    }
    sub_80292EC();
    operator delete(field_1C);
    operator delete(field_20);
    operator delete(field_23C);
    operator delete(field_24);
    delete evts;
    delete bevs;
    sub_80F0184(evts);
    sprite_context_release();
    runtime_install_interrupt_callback(2, NULL);
    gGameState.field_88A_5 = 0;
}

static inline int getDistance(FieldObject* a, FieldObject* b) {
    int dx = a->x - b->x;
    int dy = a->y - b->y;
    return ((int (*)(int))dword_3001038)(dx * dx + dy * dy);
}

void FieldManager::update() {
    if (field_1FC != NULL && field_1FC->field_A != 0) {
        field_1FC->sub_805CB54();
    }

    if (inBattle && state == 2) {
        if (field_2B4 >= 0) {
            make_btl_8028F54();
        } else if (field_2B2 >= -1) {
            sub_80290CC(field_2B2);
            sub_8029080();
            field_2B2 = -2;
            return;
        } else if (field_2B1_0 == 2 && !field_2A9_0) {
            sub_802814C();
            return;
        }
    }

    switch (state) {
        case 0: {
            *(vu16*)0x2000080 = field_128;
            *(vu16*)PLTT = field_128;
            BUFFER_REG_DISPCNT = 0;
            gGameState.field_884 = 0;
            isUnderwater = 0;
            field_12E = 0;
            field_130 = 0;
            field_27A = 0;
            field_27C = 0;
            field_27E = 0;
            field_280 = 0;
            field_208_1 = 1;
            field_F8_6 = 1;
            field_FA_5 = luigiLeads;
            field_E8 = 0;
            field_EC = 0;
            field_20A_2 = 0;
            field_20B_3 = 0;

            if (field_F8_1) {
                struct SaveSlotData* data = &dword_3000FFC->slots[stru_3000D40.slot].data;

                field_F8_6 = data->field_0_0;
                field_208_0 = data->field_0_1;
                field_208_1 = data->field_0_2;
                luigiLeads = data->luigiLeads;
                field_208_3 = data->field_0_4;
                brothersTogether = data->brothersTogether;
                shotBulletIndex = data->field_0_6;
                brothersForm = data->brothersForm;
                field_FA_5 = data->field_0_13;
                field_208_6 = data->field_0_18;
                field_208_7 = data->field_0_19;
                GameMode::setBuzzerKeys(data->field_0_20);
                MapEventInfo::instance->engineRegisters[30] = luigiLeads;
                MapEventInfo::instance->engineRegisters[32] = field_FA_5;
                {
                    struct SaveSlotPlayer* saved = &data->field_4[luigiLeads];
                    roomId = saved->roomId;
                }
            }

            MapEventInfo::instance->engineRegisters[32] = MapEventInfo::instance->engineRegisters[30];
            field_D4 = &stru_83A78D4[roomId];
            isUnderwater = (field_D4->flags & ROOM_FLAG_UNDERWATER) != 0;
            field_126 = field_D4->objectsIndex;
            field_D8 = sub_80FB7E0(field_D4->mapScriptsIndex);
            field_DC = sub_80FB7F0(field_D4->itemBlocksIndex);
            warps = sub_8059EF0(roomId);
            sub_80EFB18(evts);
            dword_3001034(0, objects, 0x80);
            make_field_objects_80267C0(field_126);

            if (field_F8_1) {
                struct SaveSlotData* data = &dword_3000FFC->slots[stru_3000D40.slot].data;
                struct SaveSlotPlayer* saved = &data->field_4[luigiLeads];
                struct SaveSlotPlayer* followerSaved;

                leader = (FieldPlayerCharacter*)objects[luigiLeads];
                follower = (FieldPlayerCharacter*)objects[luigiLeads ^ 1];
                leader->initialDirection = saved->field_2_0;
                leader->x = saved->field_4 << 8;
                leader->y = saved->field_6 << 8;
                leader->z = saved->field_8 << 8;
                leader->height = saved->field_A << 8;
                leader->blocksBrothers = 0;
                leader->collidesWithBrothers = leader->field_20C_7 = brothersTogether ^ 1;

                followerSaved = &data->field_4[luigiLeads ^ 1];
                if (followerSaved->roomId == roomId) {
                    follower->initialDirection = followerSaved->field_2_0;
                    follower->x = followerSaved->field_4 << 8;
                    follower->y = followerSaved->field_6 << 8;
                    follower->z = followerSaved->field_8 << 8;
                    follower->height = followerSaved->field_A << 8;
                    follower->blocksBrothers = 0;
                    follower->collidesWithBrothers = follower->field_20C_7 = brothersTogether ^ 1;
                    field_2D8_0 = 31;
                } else {
                    field_2D8_0 = luigiLeads ^ 1;
                    followerRoomId = followerSaved->roomId;
                    field_2D8_5 = followerSaved->field_2_0;
                    field_2DC = followerSaved->field_4 << 8;
                    field_2E0 = followerSaved->field_6 << 8;
                    field_2E4 = followerSaved->field_8 << 8;
                    field_2E8 = followerSaved->field_A << 8;
                    follower->field_20C_0 = follower->spriteActive = 0;
                }

                if (brothersForm != BROTHERS_FORM_NORMAL) {
                    switch (brothersForm) {
                        case BROTHERS_FORM_PUMP_MARIO:
                            field_20C[0].field_12 = 0;
                            break;
                        case BROTHERS_FORM_MINI_MARIO:
                            break;
                        case BROTHERS_FORM_MOLE_LUIGI:
                            field_20C[1].field_12 = 0;
                            break;
                        case BROTHERS_FORM_BARREL_LUIGI:
                            field_20C[0].field_12 = 0;
                            break;
                    }
                }

                if (!brothersTogether) {
                    field_20C[luigiLeads ^ 1].field_14 = 0;
                }
            }

            walkSpeed = isUnderwater ? 0x100 : 0x200;
            field_FA_11 = 0x10 >> isUnderwater;
            sub_8026C78();
            state = 1;
            break;
        }

        case 1:
            BUFFER_REG_DISPCNT = 0;
            gGameState.field_884 = 0;
            sub_80E8DE4();
            state = 2;
            break;

        case 2:
            BUFFER_REG_DISPCNT = 0;
            gGameState.field_884 = 0;
            if (field_304 != NULL) {
                field_304->disable();
            }
            field_314 = new (0, "PANM", 0) PANM(8, "PANM", 8);
            field_314->disable();
            state = 3;
            break;

        case 3:
            BUFFER_REG_DISPCNT = 0;
            gGameState.field_884 = 0;
            field_FA_0 = 0;
            field_F0 = 0;
            gGameState.enabledKeys = field_120_0;
            gGameState.field_78_10 = field_120_10;
            gGameState.field_78_12 = field_120_12;
            gGameState.field_78_13 = field_120_13;
            field_120_0 = 0;
            field_120_10 = 0;
            field_120_12 = 0;
            field_120_13 = 0;
            if (dword_3000C78 == NULL) {
                dword_3000C78 = sub_800063C;
            }
            if (field_304 != NULL) {
                field_304->sub_8057BE4();
                field_304->enable();
            } else {
                field_304 = new (0, "S_MP", 0) S_MP(8, "S_MP", roomId, 0, 0, field_314);
            }
            sprite_context_init(0x15C0, 0, 1, 0xBE);
            field_F8_0 = 1;
            state = 4;
            break;

        case 4:
            if (field_304->field_1C != 0) {
                break;
            }
            field_1FC = new (0, "S_FX", 0) S_FX;
            sub_805A0EC(field_304, 2, &field_286, &field_288);
            state = 5;
            break;

        case 5:
            sub_802955C();
            state = 6;
            break;

        case 6:
            if (byte_3000C80 != 0) {
                break;
            }
            sub_80294A0();
            sub_8029460();
            state = 7;
            break;

        case 7:
            sub_80293F8(field_126);
            state = 8;
            break;

        case 8:
            if (byte_3000C80 != 0) {
                break;
            }
            sub_80293B8();
            state = 9;
            break;

        case 9:
            sub_80264F4(field_126);
            state = 10;
            break;

        case 10:
            sub_80265EC(field_126);
            sprites_draw();
            state = 11;
            break;

        case 11:
            sub_80EFA14(evts, 0xA800, 0xB000);
            sub_80F01D4(evts, 0x7000, 0xF);
            state = 12;
            break;

        case 12:
            if (byte_3000C80 != 0) {
                break;
            }
            state = 13;
            break;

        case 13: {
            int i;
            struct PlayerAction leaderStruct;
            struct PlayerAction followerStruct;
            int none;

            if (roomId == 0x1C1) {
                u8* graphics = new (1, "CGDW", 0) u8[sub_80198B0(dword_839EF80)];
                dword_3000C84(dword_839EF80, graphics);
                CpuFastCopy(graphics, (void*)(VRAM + 0xC000), sub_80198B0(dword_839EF80));
                delete[] graphics;
                sub_8018218(dword_839F024, (void*)(VRAM + 0xF000), 0x500, 0x20, 0);
                BUFFER_REG_BG0CNT = 0x1E0C;
                field_F9_2 = 1;
            } else {
                field_F9_2 = 0;
            }

            if (inBattle) {
                FieldMonster* monster;

                if (objects[field_2A8_0]->type == FIELD_OBJECT_TYPE_FMON) {
                    monster = (FieldMonster*)objects[field_2A8_0];
                    if (monster->field_33D_3) {
                        monster->field_344->field_20C_0 = 0;
                        monster->field_344->spriteActive = 0;
                    }
                }

                monster = (FieldMonster*)objects[field_2A8_0];
                switch (field_2B1_0) {
                    case 0:
                        if (!field_2A8_7) {
                            monster->defeat();
                            field_F9_4 = 1;
                        }
                        break;
                    case 1:
                        if (!field_2A9_1 && field_2A8_0 != 0) {
                            monster->survive();
                            field_F9_4 = 1;
                        }
                        break;
                    case 2:
                        if (!field_2A9_0) {
                            field_F9_4 = 1;
                        }
                        break;
                }
            }

            for (i = 0; i < objectCount; i++) {
                if (objects[i]->spriteActive) {
                    objects[i]->method4();
                }
            }

            field_30C = new (0, "FMDR", 0) FMDR(8, "FMDR");
            field_310 = new (0, "FMPR", 0) FieldProcess803EA00(5, "FMPR");

            leader = (FieldPlayerCharacter*)objects[luigiLeads];
            follower = (FieldPlayerCharacter*)objects[luigiLeads ^ 1];
            leader->otherBrother = follower;
            follower->otherBrother = leader;

            if (field_2B8_0) {
                if (leader->field_368->actionMode == ACTION_MODE_HIGH_JUMP
                    || leader->field_368->actionMode == ACTION_MODE_SPIN_JUMP
                    || leader->field_368->actionMode == ACTION_MODE_14
                    || leader->field_368->actionMode == ACTION_MODE_15
                    || leader->field_368->actionMode == ACTION_MODE_FIRE_DASH_LUIGI_ANGRY
                    || leader->field_368->actionMode == ACTION_MODE_THUNDER_TICKLE_MARIO_ANGRY
                    || brothersForm == BROTHERS_FORM_FIRE_DASH
                    || brothersForm == BROTHERS_FORM_THUNDER_TICKLE) {
                    brothersForm = BROTHERS_FORM_NORMAL;
                    changeBrotherForm(BROTHERS_FORM_NORMAL, false);
                }
            }

            if (field_F8_1) {
                if (brothersTogether) {
                    sub_802DF80(0);
                }
            } else if (field_2B8_0) {
                sub_8028248();
            } else if (field_F8_4 && field_F9_3) {
                follower->x = leader->x;
                follower->y = leader->y;
                follower->z = leader->z;
                sub_802E4C8(1);
            }

            if ((field_2B8_0 || field_F8_1) && field_F8_6) {
                sub_80284B0(field_FA_5, 1);
            } else {
                sub_805952C(field_304, field_27A, field_27C);
            }

            field_242 = 0xAE;
            field_244 = 0;

            if (field_2B8_0 || field_F8_1) {
                if (field_2B8_0) {
                    leaderStruct = *((FieldPlayerCharacter*)objects[0])->field_368;
                    followerStruct = *((FieldPlayerCharacter*)objects[1])->field_368;
                }

                switch (brothersForm) {
                    case BROTHERS_FORM_NORMAL:
                        break;

                    case BROTHERS_FORM_PUMP_MARIO: {
                        u8 savedIndex = shotBulletIndex;
                        changeBrotherForm(brothersForm, false);
                        shotBulletIndex = savedIndex;
                        break;
                    }

                    case BROTHERS_FORM_MINI_MARIO:
                    case BROTHERS_FORM_MOLE_LUIGI:
                    case BROTHERS_FORM_BARREL_LUIGI:
                        changeBrotherForm(brothersForm, false);
                        if (leaderStruct.actionMode == ACTION_MODE_MARIO_ON_BARREL) {
                            leader->sub_8049000(SPRITE_ID(0, 69));
                            field_209_7 = 2;
                            field_246_1 = 0;
                            follower->x = leader->x;
                            follower->y = leader->y;
                            follower->z = leader->z;
                            follower->height = leader->height + 0x1700;
                            follower->state = leader->state = 0x55;
                            follower->field_350_14 = leader->field_350_14 = 1;
                            follower->field_358_3 = leader->field_358_3 = 1;
                            follower->field_20C_26 = 0;
                        }
                        break;

                    case BROTHERS_FORM_SURFBOARD_LUIGI:
                        follower->field_368->actionMode = leader->field_368->actionMode =
                            ACTION_MODE_SURFBOARD_LUIGI;
                        follower->state = leader->state = 0xA4;
                        follower->field_358_3 = leader->field_358_3 = 1;
                        follower->field_20C_13 = leader->field_20C_13 = 1;
                        follower->field_210_3 = leader->field_210_3 = 0;
                        follower->field_214_0 = leader->field_214_0 = 1;
                        field_268 = 0;
                        follower->angle = leader->angle;
                        follower->direction = leader->direction;
                        follower->sub_8049000(SPRITE_ID(0, 56));
                        leader->sub_8049000(SPRITE_ID(0, 80));
                        leader->z = leader->height = follower->z = follower->height = 0;
                        field_209_7 = 2;
                        break;
                }

                if (field_2B8_0) {
                    *((FieldPlayerCharacter*)objects[0])->field_368 = leaderStruct;
                    *((FieldPlayerCharacter*)objects[1])->field_368 = followerStruct;
                }
            } else if (field_246_0) {
                brothersForm = BROTHERS_FORM_NORMAL;
                leader->land();
                if (leader->height > 0) {
                    leader->height = 0;
                }
                if (brothersTogether) {
                    follower->land();
                    if (follower->height > 0) {
                        follower->height = 0;
                    }
                }
                changeBrotherForm(BROTHERS_FORM_NORMAL, false);
                leader->method7(1);
                if (brothersTogether) {
                    follower->z = leader->z;
                    follower->height = leader->height;
                    if ((u8)follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256,
                                                  leader->z / 256, walkSpeed)) {
                        while (getDistance(follower, leader) > 0x1000 || sub_802DC0C(follower)) {
                            follower->sub_80461B4(objects);
                            if (!follower->sub_8047B78()) {
                                break;
                            }
                        }
                        follower->sub_8046980();
                    }
                    follower->previousX = follower->x;
                    follower->previousY = follower->y;
                    follower->previousZ = follower->z;
                    follower->previousHeight = follower->height;
                    follower->method7(1);
                }
                field_246_0 = 0;
            }

            sub_80298B0();
            field_304->enable();
            field_314->enable();

            if (!field_F9_7) {
                sub_80EF79C(evts, field_F9_3 ? (field_2CC != 0
                                                    ? (void*)field_2CC
                                                    : (void*)((field_D8[3] << 24) | (field_D8[2] << 16)
                                                              | (field_D8[1] << 8) | field_D8[0]))
                                             : (void*)dword_821F808);
            } else {
                field_F9_7 = 0;
            }

            for (i = 0; i < objectCount; i++) {
                objects[i]->field_290 = field_304;
                if (objects[i]->type == FIELD_OBJECT_TYPE_FMON
                    && ((FieldMonster*)objects[i])->field_344 != NULL) {
                    ((FieldMonster*)objects[i])->field_344->field_290 = field_304;
                }
                if (field_2B8_0 || field_F8_1 || field_F8_4) {
                    objects[i]->method15(1);
                }
            }

            for (i = 0; i < 8; i++) {
                shotBullets[i]->map = field_304;
            }

            none = -1;

            if (brothersForm == BROTHERS_FORM_SURFBOARD_LUIGI) {
                leader->field_230 = leader->field_234 = follower->field_230 = follower->field_234 =
                    none;
            }

            if (inBattle) {
                sub_8019650(0, none, 0x10);
            } else if (field_2B8_0 || field_F8_1 || field_F8_4) {
                switch (field_2B9) {
                    case -2:
                        break;
                    case 0:
                        sub_8019628(0);
                        break;
                    case -3:
                        if (sub_80195F8(0) && field_D4->songId == sub_8019610(0)) {
                            break;
                        }
                    case -1:
                        sub_8019308(0, field_D4->songId, 0);
                        break;
                    default:
                        sub_8019308(0, field_2B9, -1);
                        break;
                }
                if (field_2B9 != 0) {
                    sub_80193B4(0, 0xFF, 0x10);
                }
            }

            field_F8_4 = 0;
            field_F9_3 = 0;
            field_F9_6 = 0;

            field_20C[0].actionButton = luigiLeads == 0 ? A_BUTTON : B_BUTTON;
            field_20C[0].switchButton = luigiLeads == 0 ? R_BUTTON : L_BUTTON;
            sub_803C788(leader);
            if (leader->field_368->field_17_7) {
                sub_8018218(field_1C->field_0[4]->field_8 + 0x1100,
                            (void*)(leader->objectIndex * 0x400 + 0x6010FC0), 0x80, 0x20, 0);
            }

            field_20C[1].actionButton = luigiLeads == 0 ? B_BUTTON : A_BUTTON;
            field_20C[1].switchButton = luigiLeads == 0 ? L_BUTTON : R_BUTTON;
            sub_803C788(follower);
            if (follower->field_368->field_17_7) {
                sub_8018218(field_1C->field_0[4]->field_8 + 0x1100,
                            (void*)(follower->objectIndex * 0x400 + 0x6010FC0), 0x80, 0x20, 0);
            }

            state = 15;
            if (fieldMode != FIELD_MODE_REGROUP) {
                fieldMode = FIELD_MODE_NONE;
            }

            if (inBattle && brothersTogether) {
                sub_802DF80(0);
            }

            sub_802F834();

            if (field_F9_4) {
                if (field_12C_2 != -2) {
                    sub_80193B4(0, 0xFF, 8);
                }
                state = 14;
            } else {
                evts->enable();
                bevs->enable();
                state = 15;
            }

            inBattle = 0;
            field_12C_0 = 0;
            viewingSignRequested = false;
            field_12D_0 = 0;
            field_12D_4 = 0;
            field_12C_2 = -2;
            sub_80297B8();
            sub_801A548();
            dword_3000C78 = NULL;
            byte_3000C24 = 0;
            break;
        }

        case 14:
            sub_8027030(1, 8, 0, 0xFFFF, 0xFFFF);
            evts->enable();
            bevs->enable();
            if (field_2A9_7) {
                int floor;
                int x;
                int y;

                if (leader->field_238 != -1) {
                    floor = objects[leader->field_238]->z + objects[leader->field_238]->height;
                } else {
                    floor = leader->z;
                }
                x = leader->x / 256 - 120;
                y = (leader->y - floor) / 256;
                sub_8028AFC(1, 0, x, y - (leader->airFrames != -1 ? field_28D : field_28F), 0xC00);
                field_2A9_6 = 1;
            }
            state = 15;
            // fallthrough

        case 15:
            update_field_8023DD4();
            break;
    }
}

// Unreferenced data that follows update's strings in .rodata. Probably a string (it ends in '%') from
// an expression the compiler removed.
asm_unified(".section .rodata\n"
            ".align 2, 0\n"
            ".byte 0xFF, 0x0B, 0x01, 0xFF, 0x35, 0xFF, 0x41, 0xFF, 0x25, 0x00, 0x00, 0x00\n"
            ".text");

void FieldManager::update_field_8023DD4() {
    FieldPlayerShotBullet** bullet;
    FieldObject** object;
    FieldObject* other;
    int layer;

    if (field_12B != -1) {
        sub_8028FBC();
        return;
    }

    if (inBattle) {
        start_battle_8027AC4();
        return;
    }

    if (field_12C_2 != -2) {
        sub_8027558();
        return;
    }

    if (field_12C_0) {
        sub_80275F4();
        return;
    }

    if (viewingSignRequested) {
        startViewingSign();
        return;
    }

    if (field_12D_0) {
        sub_802772C();
        return;
    }

    if (field_12D_4) {
        sub_802814C();
        return;
    }

    if (field_12D_5) {
        sub_8028EF4();
        return;
    }

    if (field_10A > 0) {
        field_10A--;
        if ((fieldMode == FIELD_MODE_FADE_IN || fieldMode == FIELD_MODE_NORMAL
             || fieldMode == FIELD_MODE_REGROUP || fieldMode == FIELD_MODE_4
             || fieldMode == FIELD_MODE_PUMP_FORM)
            && field_10A == 0) {
            field_FC_2 = 1;
        }
    }
    field_20A_4 = field_20A_3;
    if (!battleTransitionActive && field_2A9_6) {
        sub_8028C40();
        field_2A9_6 = sub_8028E70();
    }

    switch (fieldMode) {
        case FIELD_MODE_NONE:
            break;

        case FIELD_MODE_FADE_IN:
            if (!sub_8027378() && !field_2B8_4) {
                fieldMode = FIELD_MODE_NORMAL;
                field_F9_4 = 0;
                field_F9_5 = 0;
            }
            break;

        case FIELD_MODE_NORMAL:
            if (field_FC_11 && !sub_8027378()) {
                word_2000272 = field_FE;
                field_FC_11 = 0;
                gGameState.field_2 |= 0x8000;
            }
            GameMode::playBuzzerForKeys();
            sub_8025E94();
            if (!leader->field_358_3 && sub_8025D24(6)) {
                sub_803C720(3);
            }
            if (!field_209_0 && !field_20B_4) {
                sub_802D544(input);
                sub_802D46C(input);
            }
            break;

        case FIELD_MODE_REGROUP:
            follower->sub_80461B4(objects);
            if (!follower->sub_8047B78()) {
                leader->velocityX = leader->velocityY = follower->velocityX = follower->velocityY = 0;
                leader->field_2B6_6 = leader->field_2B6_7 = follower->field_2B6_6 =
                    follower->field_2B6_7 = 0;
                leader->field_350_14 = follower->field_350_14 = 0;
                follower->field_23E = leader->field_23E = leader->field_260;
                brothersTogether = 1;
                sub_802DF80(0);

                switch (brothersForm) {
                    case BROTHERS_FORM_MINI_MARIO:
                        if (follower->objectIndex == BROTHER_MARIO) {
                            field_20B_4 = 1;
                            sub_8035974();
                        }
                        break;

                    case BROTHERS_FORM_MOLE_LUIGI:
                        if (follower->objectIndex == BROTHER_LUIGI) {
                            field_20B_4 = 1;
                            digOutOfGround(follower);
                        }
                        break;

                    case BROTHERS_FORM_BARREL_LUIGI:
                        if (follower->objectIndex == BROTHER_LUIGI) {
                            field_20B_4 = 1;
                            breakOutOfBarrel(follower);
                            leader->field_350_14 = 1;
                        }
                        break;
                }

                fieldMode = FIELD_MODE_NORMAL;
                field_F9_4 = 0;
            }
            break;

        case FIELD_MODE_4:
            sub_8028C40();
            if (!sub_8028E70()) {
                if (follower->field_368->field_14 != -1) {
                    follower->field_368->field_10[0] = follower->field_368->field_14;
                    follower->field_368->field_14 = 0xFF;
                }

                leader->field_368->field_14 = leader->field_368->field_10[0];
                leader->field_368->field_10[0] = 0;

                if (field_FA_5 == luigiLeads) {
                    field_FA_5 = luigiLeads ^ 1;
                }

                luigiLeads ^= 1;
                MapEventInfo::instance->engineRegisters[30] = luigiLeads;
                MapEventInfo::instance->engineRegisters[32] = field_FA_5;
                leader = (FieldPlayerCharacter*)objects[luigiLeads];
                follower = (FieldPlayerCharacter*)objects[luigiLeads ^ 1];
                leader->field_352_7 = 1;
                follower->field_352_7 = 0;
                leader->field_368->actionButton = A_BUTTON;
                leader->field_368->switchButton = R_BUTTON;
                follower->field_368->actionButton = B_BUTTON;
                follower->field_368->switchButton = L_BUTTON;
                leader->field_350_14 = 0;
                follower->field_350_14 = 0;
                sub_802DDB4(leader, 0, 0);
                sub_802DDB4(follower, 0, 0);
                u32 temp = field_E8;
                field_E8 = field_EC;
                field_EC = temp;
                fieldMode = FIELD_MODE_NORMAL;
                field_F9_4 = 0;
            }
            break;

        case FIELD_MODE_PUMP_FORM:
            if (--field_26E <= 0) {
                changeBrotherForm(BROTHERS_FORM_PUMP_MARIO, false);
                leader->field_350_14 = 0;
                follower->field_350_14 = 0;
                fieldMode = FIELD_MODE_NORMAL;
            }
            break;

        case FIELD_MODE_6:
        case FIELD_MODE_WARP:
        case FIELD_MODE_SURFBOARD_WARP:
        case FIELD_MODE_9:
        case FIELD_MODE_MENU:
        case FIELD_MODE_12:
        case FIELD_MODE_SIGN:
        case FIELD_MODE_SHOP:
        case FIELD_MODE_15:
        case FIELD_MODE_ENDING:
        case FIELD_MODE_17:
            if (!field_F9_6) {
                if (!sub_8027378()) {
                    sub_8029888(0, 0);
                    DmaStop(0);
                    field_F9_6 = 1;
                }
                break;
            }

            switch (fieldMode) {
                case FIELD_MODE_WARP:
                case FIELD_MODE_SURFBOARD_WARP:
                    if (brothersForm == BROTHERS_FORM_SURFBOARD_LUIGI
                        && fieldMode != FIELD_MODE_SURFBOARD_WARP) {
                        field_2BB = leader->direction;
                        field_2BA = leader->angle;
                    }
                    leader->field_350_14 = 0;
                    sub_8027D64();
                    field_2B8_6 = fieldMode == FIELD_MODE_SURFBOARD_WARP;
                    break;

                case FIELD_MODE_9:
                    sub_8029024(0);
                    sub_8028FBC();
                    field_F9_4 = 1;
                    break;

                case FIELD_MODE_MENU:
                    sub_80290CC(-1);
                    sub_8027558();
                    field_F9_4 = 1;
                    break;

                case FIELD_MODE_12:
                    sub_8029070();
                    sub_80275F4();
                    field_F9_4 = 1;
                    break;

                case FIELD_MODE_SIGN:
                    requestViewingSign();
                    startViewingSign();
                    field_F9_4 = 1;
                    break;

                case FIELD_MODE_SHOP:
                    sub_8029030(0, 0);
                    sub_802772C();
                    field_F9_4 = 1;
                    break;

                case FIELD_MODE_15:
                    sub_8028F40();
                    sub_802814C();
                    return;

                case FIELD_MODE_ENDING:
                    sub_8028F2C();
                    sub_8028EF4();
                    return;

                case FIELD_MODE_17: {
                    sub_802DDB4(leader, 0, 0);
                    sub_802DDB4(follower, 0, 0);
                    luigiLeads ^= 1;
                    MapEventInfo::instance->engineRegisters[30] = luigiLeads;
                    follower = (FieldPlayerCharacter*)objects[luigiLeads ^ 1];
                    int oldRoomId = followerRoomId;
                    u8 oldDirection = field_2D8_5;
                    s32 oldX = field_2DC;
                    s32 oldY = field_2E0;
                    s32 oldZ = field_2E4;
                    s32 oldHeight = field_2E8;

                    field_2D8_0 = luigiLeads ^ 1;
                    followerRoomId = roomId;
                    field_2D8_5 = follower->direction;
                    field_2DC = follower->x;
                    field_2E0 = follower->y;
                    field_2E4 = follower->z;
                    field_2E8 = follower->height;
                    leader->field_350_14 = 0;
                    follower->field_350_14 = 0;
                    sub_8027E90(oldRoomId, 0, oldDirection, oldX, oldY, oldZ + oldHeight, 0, 0, -1,
                                true);
                    leader->field_352_7 = 1;
                    follower->field_352_7 = 0;
                    break;
                }
            }

            fieldMode = FIELD_MODE_NONE;
            return;

        case FIELD_MODE_BATTLE_TRANSITION:
            if (!field_F9_6) {
                sub_803CB5C();
                if (!isBattleTransitionActive()) {
                    field_F9_6 = 1;
                    if (battleTransitionFromEncounter) {
                        setBattleParameters(field_2AA, field_2A8_0, field_2A8_5 != 0, field_2A9_2, -1,
                                            -1, 0, 0, 0, field_2A9_5);
                        start_battle_8027AC4();
                        fieldMode = FIELD_MODE_NONE;
                        return;
                    }
                }
            }
            break;
    }

    sub_802A608();
    sub_802C390();

    if (fieldMode == FIELD_MODE_NORMAL) {
        if (sub_8025D24(4) && !field_209_0 && leader->airFrames == -1 && follower->airFrames == -1
            && leader->state <= 1 && follower->state <= 1) {
            if (field_208_0) {
                if (brothersTogether) {
                    if (!leader->sub_8047C18(follower)) {
                        play_sfx_80195B4(luigiLeads == 0 ? 0x1B : 9, -1);
                        sub_802E854(0);
                    }
                } else {
                    if (field_2D8_0 == 0x1F) {
                        play_sfx_80195B4(luigiLeads == 0 ? 0x1B : 9, -1);
                    } else if (follower->field_368->field_14 != -1) {
                        follower->field_368->field_10[0] = follower->field_368->field_14;
                        follower->field_368->field_14 = 0xFF;
                    }
                    sub_802EC64(0);
                    if (field_2D8_0 != 0x1F) {
                        leader->field_368->field_14 = leader->field_368->field_10[0];
                        leader->field_368->field_10[0] = 0;
                    }
                }
            } else {
                sub_8029878();
            }
        }

        if (sub_8025D24(5) && CommonEvent::getFlag(CommonEvent::instance->fieldEngineFlags, 0, 0x224)) {
            if (!field_20B_7) {
                sub_8027030(2, 8, 0, 0xFFFF, 0xFFFF);
                play_sfx_80195B4(0x54, -1);
                fieldMode = FIELD_MODE_MENU;
            } else {
                sub_8029878();
            }
        }
    }

    if (!battleTransitionActive || field_290 < 0) {
        object = objects;
        for (int count = objectCount; count != 0; count--, object++) {
            if (*object != NULL) {
                (*object)->method11();
                (*object)->updateFlicker();
            }
        }

        if (field_11A != 0) {
            FieldObject** block = &objects[field_11A];

            for (int blockCount = field_11B; blockCount != 0; blockCount--, block++) {
                if (!(*block)->field_214_21) {
                    sub_8051208(*block, frames);
                }
            }
        }

        if (field_11C != 0) {
            object = &objects[field_11C];
            for (int count = field_11D; count != 0; count--, object++) {
                if (!(*object)->field_2B5_3) {
                    (*object)->updateAirborne();
                }
            }
        }

        if (field_209_0) {
            sub_803C5A4();
        }

        if (!field_2A9_6) {
            if (battleTransitionActive) {
                sub_803CF64();
            } else if (leader->field_358_3) {
                sub_802F938();
            } else {
                sub_802A740();
            }
        }

        sub_802FD70();
        leader->sub_8048174(brothersForm);
        follower->sub_8048174(brothersForm);

        if (field_113 != 0) {
            FieldObject** monster = &objects[field_112];

            for (int monsterCount = field_113; monsterCount != 0; monsterCount--, monster++) {
                ((FieldMonster*)*monster)->sub_8050078();
            }
        }

        bullet = shotBullets;

        for (int count = 8; count != 0; count--, bullet++) {
            (*bullet)->sub_804E33C(objects, objectCount);
        }
    }

    if (!battleTransitionActive || field_290 <= 0) {
        if ((fieldMode != FIELD_MODE_WARP && fieldMode != FIELD_MODE_SURFBOARD_WARP) && field_F8_6
            && field_F9_0 == 0) {
            sub_80286AC(field_FA_5);
        }

        field_27E = field_27A + field_12E;
        field_280 = field_27C + field_130;

        if (field_27E < 0) {
            field_27E = 0;
        } else if (field_27E > field_286 - 240) {
            field_27E = field_286 - 240;
        }

        if (field_280 < 0) {
            field_280 = 0;
        } else if (field_280 > field_288 - 160) {
            field_280 = field_288 - 160;
        }

        object = objects;

        if (!battleTransitionActive) {
            for (int count = objectCount; count != 0; count--, object++) {
                (*object)->method8(field_27E, field_280, objects);
                (*object)->method6(0);
                (*object)->method9();
            }
        } else {
            for (int count = objectCount; count != 0; count--, object++) {
                (*object)->method8(field_27E, field_280, objects);
                (*object)->method9();
            }
        }

        bullet = shotBullets;

        for (int count = 8; count != 0; count--, bullet++) {
            (*bullet)->sub_804FA94(field_27E, field_280);
            (*bullet)->sub_804E450();
        }
    }

    if (!battleTransitionActive || field_290 < 0) {
        if (brothersTogether && leader->y == follower->y) {
            if (field_209_7 == 1) {
                leader->sprite->field_E--;
            } else if (field_209_7 == 2) {
                follower->sprite->field_E--;
            }
        }

        if ((s8)leader->field_1 != -1) {
            other = objects[(s8)leader->field_1];
            layer = other->sprite->field_1F_2 > other->sprite->field_1F_0 ? other->sprite->field_1F_0
                                                                          : other->sprite->field_1F_2;
            if (layer < leader->sprite->field_1F_0) {
                leader->sprite->field_1F_0 = layer;
            }

            if (layer < leader->sprite->field_1F_2) {
                leader->sprite->field_1F_2 = layer;
            }

            if (layer < leader->field_36C->field_1F_0) {
                leader->field_36C->field_1F_0 = layer;
            }

            if (layer < leader->field_36C->field_1F_2) {
                leader->field_36C->field_1F_2 = layer;
            }

            if (leader->sprite->field_E >= other->sprite->field_E) {
                leader->sprite->field_E = other->sprite->field_E - 1;
            }

            if (leader->field_36C->field_E >= other->sprite->field_E) {
                leader->field_36C->field_E = other->sprite->field_E - 1;
            }
        }

        if ((s8)follower->field_1 != -1) {
            other = objects[(s8)follower->field_1];
            layer = other->sprite->field_1F_2 > other->sprite->field_1F_0 ? other->sprite->field_1F_0
                                                                          : other->sprite->field_1F_2;
            if (layer < follower->sprite->field_1F_0) {
                follower->sprite->field_1F_0 = layer;
            }

            if (layer < follower->sprite->field_1F_2) {
                follower->sprite->field_1F_2 = layer;
            }

            if (layer < follower->field_36C->field_1F_0) {
                follower->field_36C->field_1F_0 = layer;
            }

            if (layer < follower->field_36C->field_1F_2) {
                follower->field_36C->field_1F_2 = layer;
            }

            if (follower->sprite->field_E >= other->sprite->field_E) {
                follower->sprite->field_E = other->sprite->field_E - 1;
            }

            if (follower->field_36C->field_E >= other->sprite->field_E) {
                follower->field_36C->field_E = other->sprite->field_E - 1;
            }
        }

        if (leader->y / 256 < follower->y / 256
            || (leader->y / 256 == follower->y / 256 && field_209_7 == 2)) {
            leader->sub_8049C38(objects, objectCount);
            follower->sub_8049C38(objects, objectCount);
        } else {
            follower->sub_8049C38(objects, objectCount);
            FieldPlayerCharacter* player = leader;
            FieldObject** list = objects;
            int listCount;

            if (brothersForm == BROTHERS_FORM_MOLE_LUIGI) {
                list = &objects[1];
            }
            listCount = objectCount;
            if (brothersForm == BROTHERS_FORM_MOLE_LUIGI) {
                listCount--;
            }
            player->sub_8049C38(list, listCount);
        }

        sub_8029624();
        sprites_update();

        if (leader->field_350_0 || leader->field_350_4) {
            field_11E = input->held;
        }
    }

    field_304->sub_8057C9C(field_27E, field_280);

    if (field_FC_2) {
        u8* data = field_1C->field_27C;

        sub_80EF618(evts, field_FC_1 == 0 ? 4 : 0x74, data, 0);
        field_FC_2 = 0;
    }
}

//! \bug Copies 0x574 bytes: 4 more than CommonEvent and FieldBackup::data (0x570 each).
void FieldManager::sub_80254C0() {
    CpuCopy32(CommonEvent::instance, field_20->data, 0x574);
    field_20->field_0_1 = field_208_0;
    field_20->field_0_2 = field_208_1;
    field_20->luigiLeads = luigiLeads;
    field_20->field_0_4 = field_208_3;
    field_20->brothersTogether = brothersTogether;
    field_20->field_0_6 = field_208_6;
    field_20->field_0_7 = field_208_7;
    field_20->field_0_0 = 1;
}

//! \bug Copies 0x574 bytes: 4 more than CommonEvent and FieldBackup::data (0x570 each).
void FieldManager::sub_8025584() {
    CpuCopy32(field_20->data, CommonEvent::instance, 0x574);
    field_208_0 = field_20->field_0_1;
    field_208_1 = field_20->field_0_2;
    luigiLeads = field_20->luigiLeads;
    field_208_3 = field_20->field_0_4;
    brothersTogether = field_20->brothersTogether;
    field_208_6 = field_20->field_0_6;
    field_208_7 = field_20->field_0_7;
    field_20->field_0_0 = 0;
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802563C__12FieldManager.s\"");
#else
void FieldManager::sub_802563C() {
    int start;

    if (field_10E != 0) {
        FieldObject** objects = &this->objects[field_10E];
        int count = field_10F;
        if (count != 0) {
            do {
                if (field_209_0 == 0) {
                    if (brothersForm != BROTHERS_FORM_MOLE_LUIGI) {
                        (*objects)->method12(&this->objects[luigiLeads], 1, 0);
                    }
                    if (brothersTogether == 0 || brothersForm == BROTHERS_FORM_MOLE_LUIGI) {
                        (*objects)->method12(&this->objects[luigiLeads ^ 1], 1, 0);
                    }
                }
                (*objects++)->method12(&this->objects[2], objectCount - 2, 0);
                count--;
            } while (count != 0);
        }
    }

    if (field_110 != 0) {
        FieldObject** objects = &this->objects[field_110];
        int count = field_111;
        if (count != 0) {
            do {
                int index;
                int arg;
                if (brothersForm == BROTHERS_FORM_MOLE_LUIGI) {
                    (*objects)->method12(&this->objects[0], 1, 0);
                    index = 2;
                    arg = objectCount - 2;
                } else {
                    index = 0;
                    arg = objectCount;
                }
                (*objects++)->method12(&this->objects[index], arg, 0);
                count--;
            } while (count != 0);
        }
    }

    if (field_112 != 0) {
        FieldObject** objects = &this->objects[field_112];
        int count = field_113;
        if (count != 0) {
            do {
                int index;
                int arg;
                if (brothersForm == BROTHERS_FORM_BARREL_LUIGI) {
                    index = 1;
                    arg = objectCount - 1;
                } else {
                    index = 2;
                    arg = objectCount - 2;
                }
                (*objects)->method12(&this->objects[index], arg, 0);
                ((FieldMonster*)*objects++)->sub_80503CC();
                count--;
            } while (count != 0);
        }
    }

    if (field_114 != 0) {
        start = field_114;
    } else if (field_116 != 0) {
        start = field_116;
    } else {
        start = 0;
    }
    if (start > 0) {
        FieldObject** objects = &this->objects[start];
        int count = field_115 + field_117;
        if (count != 0) {
            do {
                if ((*objects)->sprite->field_21 == 1 && (*objects)->sprite->animationComplete) {
                    (*objects)->setSpriteActive(false);
                    (*objects)->field_214_0 = 0;
                    sprite_set_animation((*objects)->sprite, 0, 0);
                    (*objects)->sprite->animationEndAction = ANIMATION_END_LOOP;
                    (*objects)->sprite->animationComplete = false;
                }
                count--;
                objects++;
            } while (count != 0);
        }
    }
}
#endif

void FieldManager::sub_8025ACC() {
    int start;

    if (field_10E != 0) {
        start = field_10E;
    } else if (field_110 != 0) {
        start = field_110;
    } else if (field_112 != 0) {
        start = field_112;
    } else if (field_114 != 0) {
        start = field_114;
    } else if (field_116 != 0) {
        start = field_116;
    } else if (field_11A != 0) {
        start = field_11A;
    } else {
        start = 0;
    }
    if (start > 0) {
        FieldObject** objects = &this->objects[start];
        int count = objectCount - start;
        while (count != 0) {
            (*objects)->sub_80465D8();
            (*objects)->method13();
            (*objects)->method14(&this->objects[0], 0);
            (*objects)->sub_804034C();
            count--;
            objects++;
        }
    }
}

u8 FieldManager::sub_8025C04(int index) {
    FieldObject* object = objects[index];
    u8 result = 0;
    int left = object->x - object->field_272 / 2;
    int top = object->y + object->field_270;
    int z = object->z;
    int i;

    if (object->height > 0 || (object->height < 0 && object->previousHeight < 0)) {
        z += object->height;
    }
    for (i = 0; i < 2; i++) {
        FieldObject* other = objects[i];
        int otherLeft = other->x - other->field_272 / 2;
        int otherTop;
        int otherZ;
        int overlap;

        if (otherLeft < left) {
            overlap = otherLeft + other->field_272 - left;
        } else {
            overlap = left + object->field_272 - otherLeft;
        }
        if (overlap > 0) {
            otherTop = other->y + other->field_270;
            if (otherTop > top) {
                overlap = top - (otherTop - other->field_276);
            } else {
                overlap = otherTop - (top - object->field_276);
            }
            if (overlap > 0) {
                otherZ = other->z;
                //! Possible fake match: otherTop is reused for the height (a new variable gives
                //! different registers).
                otherTop = other->height;
                if (otherTop > 0 || (otherTop < 0 && other->previousHeight < 0)) {
                    otherZ += otherTop;
                }
                if (otherZ <= z) {
                    overlap = otherZ + other->field_274 - z;
                } else {
                    overlap = z + object->field_274 - otherZ;
                }
                if (overlap >= 0) {
                    result |= 1 << i;
                }
            }
        }
    }
    return result;
}

bool FieldManager::sub_8025D24(int type) {
    if (fieldMode > FIELD_MODE_FADE_IN) {
        switch (type) {
            case 0:
                if ((input->held & (R_BUTTON | L_BUTTON)) == 0
                    && (input->pressed & leader->field_368->actionButton)) {
                    return 1;
                }
                break;
            case 1:
                if ((input->held & (R_BUTTON | L_BUTTON)) == 0
                    && (input->pressed & follower->field_368->actionButton)) {
                    return 1;
                }
                break;
            case 2:
                if ((input->held & follower->field_368->switchButton) == 0
                    && (input->pressed & leader->field_368->switchButton)) {
                    return 1;
                }
                break;
            case 3:
                if ((input->held & leader->field_368->switchButton) == 0
                    && (input->pressed & follower->field_368->switchButton)) {
                    return 1;
                }
                break;
            case 4:
                if (input->pressed & START_BUTTON) {
                    return 1;
                }
                break;
            case 5:
                if (!(input->held & (R_BUTTON | L_BUTTON)) && input->pressed == SELECT_BUTTON) {
                    return 1;
                }
                break;
            case 6:
                if (((input->held & L_BUTTON) && (input->pressed & R_BUTTON))
                    || ((input->held & R_BUTTON) && (input->pressed & L_BUTTON))) {
                    return 1;
                }
                break;
            case 7:
                if ((gGameState.rawInput.held & (R_BUTTON | L_BUTTON)) == (R_BUTTON | L_BUTTON)) {
                    return 1;
                }
                break;
        }
    }
    return 0;
}

bool FieldManager::sub_8025E94() {
    u16 keys = gGameState.rawInput.pressed;

    if (keys != 0) {
        if (keys == word_839F5A4[(s8)field_1F8]) {
            if (++field_1F8 == 10) {
                field_1F8 = 0;
                field_1F6 = -1;
                return 1;
            }
            field_1F6 = 30;
        } else {
            field_1F8 = 0;
            field_1F6 = -1;
        }
    }
    if (--field_1F6 <= 0) {
        field_1F8 = 0;
        field_1F6 = -1;
    }
    return 0;
}

void FieldManager::sub_8025F28() {
    struct SaveSlot* slot = &dword_3000FFC->slots[stru_3000D40.slot];
    struct SaveSlotData* data = &slot->data;
    struct SaveSlotPlayer* leaderData;
    struct SaveSlotPlayer* followerData;

    data->field_0_0 = field_F8_6;
    data->field_0_1 = field_208_0;
    data->field_0_2 = field_208_1;
    data->luigiLeads = luigiLeads;
    data->field_0_4 = field_208_3;
    data->brothersTogether = brothersTogether;
    data->field_0_6 = shotBulletIndex;
    data->brothersForm = brothersForm;
    data->field_0_13 = field_FA_5;
    data->field_0_18 = field_208_6;
    data->field_0_19 = field_208_7;
    data->field_0_20 = gBuzzerKeys;

    leaderData = &data->field_4[luigiLeads];
    leaderData->roomId = roomId;
    leaderData->field_2_0 = leader->direction;
    leaderData->field_4 = leader->x / 256;
    leaderData->field_6 = leader->y / 256;
    leaderData->field_8 = leader->z / 256;
    leaderData->field_A = leader->height / 256;

    followerData = &data->field_4[luigiLeads ^ 1];
    if (field_2D8_0 == 31) {
        followerData->roomId = roomId;
        followerData->field_2_0 = follower->direction;
        followerData->field_4 = follower->x / 256;
        followerData->field_6 = follower->y / 256;
        followerData->field_8 = follower->z / 256;
        followerData->field_A = follower->height / 256;
    } else {
        followerData->roomId = followerRoomId;
        followerData->field_2_0 = field_2D8_5;
        followerData->field_4 = field_2DC / 256;
        followerData->field_6 = field_2E0 / 256;
        followerData->field_8 = field_2E4 / 256;
        followerData->field_A = field_2E8 / 256;
    }
}

int FieldManager::findDigSpot(FieldObject* object) {
    if (digSpotCount != 0) {
        DigSpot* spot = digSpots;
        s16 x = object->x / 256;
        s16 y = object->y / 256;
        s16 z = object->z / 2048;
        int i;

        for (i = 0; i < digSpotCount; spot++, i++) {
            if (!spot->dug && object->height == 0 && z == spot->layer
                && (object->objectIndex == BROTHER_LUIGI || spot->hidden)) {
                int left = spot->tileX * 16;
                int right = left + 15;
                int top = spot->tileY * 16;
                int bottom = top + 15;

                left += 4;
                right -= 4;
                top += 7;
                if (x >= left && x <= right && y >= top && y <= bottom) {
                    return i;
                }
                left -= 8;
                right += 8;
                top -= 8;
                bottom += 8;
                if (x >= left && x <= right && y >= top && y <= bottom) {
                    return i | 0x80;
                }
            }
        }
    }
    return -1;
}

void FieldManager::sub_80262CC(int x, int y, int z, int height, int type, bool arg6, bool playSound) {
    int i;

    if (type != 0) {
        FieldStruct1* entry = 0;
        int animation = type - 1;

        for (i = 0; i < 4; i++) {
            if (field_1C->field_25C[i].sprite->hidden) {
                entry = &field_1C->field_25C[i];
                break;
            }
        }
        if (entry == 0) {
            int max = -1;
            for (i = 0; i < 4; i++) {
                if (field_1C->field_25C[i].sprite->frame > max) {
                    entry = &field_1C->field_25C[i];
                    max = field_1C->field_25C[i].sprite->frame;
                }
            }
        }
        x /= 256;
        y = (y - z - height) / 256;
        sprite_set_animation(entry->sprite, animation, 0);
        sprite_restore(entry->sprite);
        entry->sprite->animationEndAction = ANIMATION_END_HIDE;
        entry->sprite->field_E = 0x800 - y;
        entry->sprite->field_1F_0 = 1;
        entry->field_4 = x;
        entry->field_6 = y;
        if (playSound) {
            play_sfx_80195B4(byte_839F5B8[type], -1);
        }
    }
}

// Only the order of two instructions differs: in the first branch, the original shifts arg3 before
// loading the table address and adding 12 (pointer arithmetic gives that order for the second table).
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802641C__12FieldManageriiii.s\"");
#else
void FieldManager::sub_802641C(int arg1, int arg2, int arg3, int arg4) {
    u8* text = 0;
    u8* dst;
    u8* src;

    if (arg2 >= 4 && arg2 <= 11) {
        text = *stru_83BBDD0[arg3].field_C[gGameState.field_8C0];
    } else if (arg2 > 11) {
        text = *(stru_83BCDC4 + arg3)->field_0[gGameState.field_8C0];
    }
    if (text != 0) {
        sub_80F032C(evts);
        dst = field_1C->field_27C;
        src = off_839F5C8;
        while (*src != 0) {
            *dst++ = *src++;
        }
        while (*text != 0) {
            text++;
        }
        text++;
        while (*text != 0) {
            *dst++ = *text++;
        }
        *dst++ = 0xFF;
        *dst++ = 0x0C;
        *dst++ = 0x1E;
        *dst++ = 0xFF;
        *dst++ = 0x0A;
        *dst = 0;
        field_FC_1 = arg4;
        field_10A = 20;
    }
}
#endif

void FieldManager::sub_80264F4(u16 arg1) {
    u8 buffer[4];
    u16* entry;
    int i;

    field_CC = sub_80FB790(arg1, &field_10D);
    entry = field_CC;

    for (i = 0; i < field_10D; i++, entry++) {
        sub_8021574(0, *entry, 0, 0, 0, buffer, -1);
    }

    if (brothersForm == BROTHERS_FORM_BARREL_LUIGI) {
        sub_8021574(0, PALETTE_ID(0, 3), 0, 0, 0, buffer, 12);
    } else if (brothersForm == BROTHERS_FORM_PUMP_MARIO) {
        sub_8021574(0, PALETTE_ID(0, 4), 0, 0, 0, buffer, 12);
    }

    sub_8021574(0, PALETTE_ID(7, 3), 0, 0, 0, buffer, 13);
    sub_8021574(0, PALETTE_ID(7, 0), 0, 0, 0, buffer, 14);
    sub_8021574(0, PALETTE_ID(7, 1), 0, 0, 0, buffer, 15);
}

void FieldManager::sub_80265EC(u16 arg1) {
    FieldObject* follower;
    int i;

    for (i = 0; i < 4; i++) {
        field_1C->field_25C[i].sprite = sprite_create(0, SPRITE_ID(7, 9), 1, -1, -1, -1, -1);
        sprite_set_animation(field_1C->field_25C[i].sprite, 0);
    }

    objects[luigiLeads]->method2(field_C8, field_CC, field_314);

    follower = objects[luigiLeads ^ 1];
    if (follower != 0) {
        follower->method2(field_C8, field_CC, field_314);
    }

    for (i = 2; i < objectCount; i++) {
        objects[i]->method2(field_C8, field_CC, field_314);
    }

    for (i = 0; i < 8; i++) {
        shotBullets[i]->sub_804DFE8();
    }
}

void FieldManager::make_field_objects_80267C0(int roomId) {
    get_field_object_count(roomId, &objectCount);
    field_10E = 0;
    field_10F = 0;
    field_112 = 0;
    field_113 = 0;
    field_11A = 0;
    field_11B = 0;
    field_116 = 0;
    field_117 = 0;
    field_114 = 0;
    field_115 = 0;
    field_118 = 0;
    field_119 = 0;
    field_110 = 0;
    field_111 = 0;
    for (int i = 0; i < objectCount; i++) {
        switch (get_field_object_type(roomId, i)) {
            case FIELD_OBJECT_TYPE_FPC: {
                FieldPlayerCharacter* player = new (1, "FPC", 1) FieldPlayerCharacter(roomId, i);

                if (isUnderwater) {
                    player->sub_8047EFC(0x100, 0x100, 0xD2, 13);
                } else {
                    player->sub_8047EFC(0x200, 0x200, 0x52C, 0x75);
                }
                player->field_368 = &field_20C[i];
                objects[i] = player;
                break;
            }
            case FIELD_OBJECT_TYPE_FCHR: {
                FieldObject* object = new (1, "FCHR", 1) FieldObject(roomId, i);

                objects[i] = object;
                if (field_10E == 0) {
                    field_10E = i;
                }
                field_10F++;
                break;
            }
            case FIELD_OBJECT_TYPE_FBRD: {
                // Seems to be various bigger objects. Like boo statues, the magic tree etc.
                FieldObject* object = new (1, "FBRD", 1) FieldObject(roomId, i);

                objects[i] = object;
                if (field_110 == 0) {
                    field_110 = i;
                }
                field_111++;
                break;
            }
            case FIELD_OBJECT_TYPE_FMON: {
                FieldMonster* object = new (1, "FMON", 1) FieldMonster(roomId, i);

                objects[i] = object;
                if (object->field_344 != 0) {
                    object->field_344->objectIndex = i;
                }
                if (field_112 == 0) {
                    field_112 = i;
                }
                field_113++;
                break;
            }
            case FIELD_OBJECT_TYPE_FBRL: {
                // Field barrel, the barrel that luigi can use.
                FieldObject* object = new (1, "FBRL", 1) FieldObject(roomId, i);

                objects[i] = object;
                if (field_114 == 0) {
                    field_114 = i;
                }
                field_115++;
                break;
            }
            case FIELD_OBJECT_TYPE_FRCK: {
                // Field rock, the rocks that you can break in game. They are gone forever once broken.
                FieldObject* object = new (1, "FRCK", 1) FieldObject(roomId, i);

                if (CommonEvent::getFlag(CommonEvent::instance->fieldEngineFlags, 0,
                                         object->field_22C_10 + 0x1160)
                    == 1) {
                    object->field_20C_0 = 0;
                    object->spriteActive = 0;
                }
                object->field_210_5 = 1;
                objects[i] = object;
                if (field_116 == 0) {
                    field_116 = i;
                }
                field_117++;
                break;
            }
            case FIELD_OBJECT_TYPE_FSPL: {
                FieldSpriteLayout* object = new (1, "FSPL", 1) FieldSpriteLayout(roomId, i);

                objects[i] = object;
                if (field_118 == 0) {
                    field_118 = i;
                }
                field_119++;
                break;
            }
            case FIELD_OBJECT_TYPE_FBLK: {
                FieldBlock* object = new (1, "FBLK", 1) FieldBlock(roomId, i);

                objects[i] = object;
                if (field_11A == 0) {
                    field_11A = i;
                }
                field_11B++;
                break;
            }
            default:
                objects[i] = 0;
                break;
        }
        objects[i]->field_210_4 = objects[i]->blocksBrothers;
        objects[i]->field_239 = 16 >> isUnderwater;
        objects[i]->objectIndex = i;
    }
    ((FieldPlayerCharacter*)objects[luigiLeads])->field_352_7 = 1;
    field_11C = field_10E != 0 ? field_10E : field_110 != 0 ? field_110 : field_112;
    field_11D = field_10F + field_111 + field_113;
    for (int i = 0; i < 8; i++) {
        shotBullets[i] = new (1, "FPSB", 1) FieldPlayerShotBullet(i);
    }
}

// Creates the "SBLK" objects and fills digSpots from the entries at field_DC.
void FieldManager::sub_8026C78() {
    u8* header = field_DC;
    u16 index = (header[2] << 8) | header[1];
    int count = header[0];
    int i;
    u8* entry = header - ((header[4] << 8) | header[3]);
    u8 offset;

    digSpotCount = 0;
    for (i = 0; i < count; i++, index++, entry += 8) {
        u8 flags = entry[0];

        switch (flags & ~0x10) {
            case 0x00:
            case 0x20:
            case 0x40: {
                FieldBlock* object = new (1, "SBLK", 1) FieldBlock(entry, index, -1, -1);

                if ((flags & 0x10) && object->field_33C_0) {
                    object->spriteActive = 0;
                }
                object->objectIndex = objectCount;
                objects[objectCount] = object;
                if (field_11A == 0) {
                    field_11A = objectCount;
                }
                field_11B++;
                objectCount++;
                break;
            }
            case 0xA0:
            case 0xC0:
                digSpots[digSpotCount].hidden = flags != 0xA0;
                digSpots[digSpotCount].dug = CommonEvent::getFlag(
                    CommonEvent::instance->fieldEngineFlags, 0, (u16)(index + 0x1360));
                digSpots[digSpotCount].tileX = entry[1];
                digSpots[digSpotCount].tileY = entry[2];
                digSpots[digSpotCount].layer =
                    (offset = entry[5] >> 1,
                     (entry[3] & 0x7F)
                         + ((entry[5] & 0x20) ? (u32)(offset | ~0x1F) >> 3 : offset >> 3));
                digSpots[digSpotCount].index = index;
                digSpots[digSpotCount].entry = entry;
                digSpotCount++;
                break;
        }
    }
}

void FieldManager::sub_8026E94() {
    struct struc_3000D44* process;

    BUFFER_REG_DISPCNT = 0x1F40;
    if (field_291_1) {
        BUFFER_REG_BG0CNT = field_294;
        dword_3001034(0, (void*)0x0600C000, 0x20);
        dword_3001034(0, (void*)0x0600C800, 0x800);
        field_291_1 = 0;
    }
    ((s8*)off_839EC80)[0x01] &= ~0x20;
    if (field_2B8_0) {
        if (field_2B8_4) {
            if ((gGameState.enabledKeys & DPAD_ANY) == DPAD_ANY) {
                sub_802EF18();
            } else if (brothersForm == BROTHERS_FORM_FIRE_DASH) {
                brothersForm = BROTHERS_FORM_NORMAL;
                changeBrotherForm(BROTHERS_FORM_NORMAL, false);
            }
        }
        field_2B8_0 = 0;
    }
    if (field_20A_7 == 2
        || (field_20A_7 == 0
            && !(gGameState.enabledKeys & (A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT)))) {
        field_244 = 0xFFC8;
    }
    if (fieldMode == FIELD_MODE_NONE) {
        fieldMode = FIELD_MODE_FADE_IN;
        field_F8_1 = 0;
        field_F8_2 = 0;
    }
    if (field_FC_0) {
        sub_80193B4(0, field_1FA >> 8, 8);
        field_FC_0 = 0;
    }
    process = dword_3000D44;
    if (process->field_28_0) {
        sub_801BC40(process, process->field_20, process->field_28_2);
    }
    ((Process*)dword_3000D44)->enable();
}

void FieldManager::sub_8027030(int mode, int arg2, u16 arg3, u16 arg4, u16 arg5) {
    switch (mode) {
        case 1:
            sub_8026E94();
        case 2:
            field_128 = arg3;
            sub_80291EC(mode != 1 ? 4 : 0, arg2, arg3, arg4, arg5);
            break;
        case 4:
            if (field_F0 != 0) {
                gGameState.field_0 = field_F0 >> 16;
                gGameState.field_2 = field_F0;
                gGameState.field_884 = field_F0;
                sub_80290E0();
            } else {
                gGameState.field_0 = 0xFFFF;
                gGameState.field_2 = (u16)-1;
                gGameState.field_884 = (u32)-1;
            }
            sub_8026E94();
            field_FE = word_2000272;
            field_FC_11 = 1;
        case 3:
        case 5:
            word_2000272 = 0;
            gGameState.field_2 |= 0x8000;
            sub_805C9DC(field_1FC, mode - 3);
            field_128 = 0;
            break;
    }
    field_FC_3 = mode;
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027168__12FieldManageriiUsUs.s\"");
#else
// Called by script opcode 44 (sub_80F0A30). Like sub_8027030, for modes 6 and 7: starts a "WIPE"
// transition centered on (x, y).
void FieldManager::sub_8027168(int mode, int arg2, u16 x, u16 y) {
    s16 dx;
    s16 dy;
    struct struc_839EC80* buffer;

    sub_80F032C(evts);
    field_10A = 0;
    dword_3001034(0x99999999, (void*)0x0600C000, 0x20);
    dword_3001034(0xF000F000, (void*)0x0600C800, 0x800);
    switch (mode) {
        case 6:
            if (field_F0 != 0) {
                gGameState.field_0 = field_F0 >> 16;
                gGameState.field_2 = field_F0;
                gGameState.field_884 = field_F0;
                sub_80290E0();
            } else {
                gGameState.field_0 = 0xFFFF;
                gGameState.field_2 = (u16)-1;
                gGameState.field_884 = (u32)-1;
            }
            sub_8026E94();
            field_FE = word_2000272;
            field_FC_11 = 1;
        case 7:
            gGameState.field_888_6 = 1;
            field_102 = x;
            field_104 = y;
            field_108 = mode;
            dx = x;
            if (dx <= 0x77) {
                dx = 0xF0 - dx;
            }
            dy = y;
            if (dy <= 0x4F) {
                dy = 0xA0 - dy;
            }
            field_106 = ((int (*)(int))dword_3001038)(dx * dx + dy * dy);
            field_318 = sub_8079D1C(operator new(0x44, 0, "WIPE", 0), 1, "WIPE", mode + 8, arg2,
                                    &field_102, 3, 0x3E, sub_80292A0);
            field_128 = 0;
            break;
    }
    word_2000272 = 0;
    gGameState.field_2 |= 0x8000;
    buffer = (struct struc_839EC80*)off_839EC80;
    buffer->field_12_0 = 0;
    buffer->field_10_0 = 0;
    BUFFER_REG_BG0CNT = 0x190C;
    buffer->field_1_0 = 1;
    field_FC_3 = mode;
}
#endif

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027378__12FieldManager.s\"");
#else
// Whether the transition started by sub_8027030 or sub_8027168 is still running.
bool FieldManager::sub_8027378() {
    if (field_FC_3 <= 2) {
        return sub_8116620(field_314);
    } else if (field_FC_3 >= 3 && field_FC_3 <= 5) {
        return ((u8*)field_1FC)[0xA];
    } else if (field_FC_3 >= 6 && field_FC_3 <= 7) {
        // The original only truncates this result to a byte instead of testing it.
        return Process::exists(field_318);
    }
}
#endif

void FieldManager::sub_80273E4() {
    int i;

    sub_803C610();
    sub_802563C();
    sub_8025ACC();
    field_120_0 = gGameState.enabledKeys;
    field_120_10 = gGameState.field_78_10;
    field_120_12 = gGameState.field_78_12;
    field_120_13 = gGameState.field_78_13;
    if (field_1FC) {
        sub_805CCC0(field_1FC, 3);
        field_1FC = NULL;
    }
    if (field_308) {
        sub_805C73C(field_308, 3);
        field_308 = NULL;
    }
    if (field_310) {
        delete field_310;
        field_310 = NULL;
    }
    if (field_30C) {
        delete field_30C;
        field_30C = NULL;
    }
    sub_80F0184(evts);
    if (field_F8_0) {
        sprite_context_release();
        field_F8_0 = 0;
    }
    if (field_314) {
        sub_81166AC(field_314, 3);
        field_314 = NULL;
    }
    evts->disable();
    bevs->disable();
    disable();
    for (i = 0; i < objectCount; i++) {
        objects[i]->method3();
    }
    field_F9_7 = 1;
}

void FieldManager::sub_8027558() {
    ((Process*)dword_3000D44)->disable();
    sub_801A6B0();
    field_1FA = gGameState.field_89C;
    sub_80193B4(0, 0x80, 8);
    field_FC_0 = 1;
    sub_80273E4();
    sub_805A1A8(field_304);
    field_304->disable();
    runtime_install_interrupt_callback(2, NULL);
    state = 2;
    byte_3000C24 = 2;
    if (dword_3000C78 == NULL) {
        dword_3000C78 = sub_800063C;
    }
    sub_8122BA0(field_12C_2, 0);
}

// Like sub_8027558, but with different arguments for sub_8122BA0.
void FieldManager::sub_80275F4() {
    ((Process*)dword_3000D44)->disable();
    sub_801A6B0();
    field_1FA = gGameState.field_89C;
    sub_80193B4(0, 0x80, 8);
    field_FC_0 = 1;
    sub_80273E4();
    sub_805A1A8(field_304);
    field_304->disable();
    runtime_install_interrupt_callback(2, NULL);
    state = 2;
    byte_3000C24 = 2;
    if (dword_3000C78 == NULL) {
        dword_3000C78 = sub_800063C;
    }
    sub_8122BA0(-1, 1);
}

// Like sub_8027558, but deletes field_304 and starts a "SIGN" process for the current room.
void FieldManager::startViewingSign() {
    sub_801A6B0();
    field_1FA = gGameState.field_89C;
    sub_80193B4(0, 0x80, 8);
    field_FC_0 = 1;
    sub_80273E4();

    if (field_304) {
        delete field_304;
        field_304 = NULL;
    }

    runtime_install_interrupt_callback(2, NULL);

    state = 2;
    byte_3000C24 = 2;

    if (dword_3000C78 == NULL) {
        dword_3000C78 = sub_800063C;
    }

    new (0, "SIGN", 0) Sign(8, "SIGN", roomId);
}

// Like startViewingSign, but ends with sub_812F5A4 instead of the "SIGN" process.
void FieldManager::sub_802772C() {
    sub_801A6B0();
    field_1FA = gGameState.field_89C;
    sub_80193B4(0, 0x80, 8);
    field_FC_0 = 1;
    sub_80273E4();
    if (field_304) {
        delete field_304;
        field_304 = NULL;
    }
    runtime_install_interrupt_callback(2, NULL);
    state = 2;
    byte_3000C24 = 2;
    if (dword_3000C78 == NULL) {
        dword_3000C78 = sub_800063C;
    }
    sub_812F5A4(field_12D_1, field_12D_2);
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(
    ".include "
    "\"asm/nonmatching/startEncounter__12FieldManageriP20FieldPlayerCharacterP12FieldMonsterb.s\"");
#else
// Called when a brother touches a FieldMonster (update__19FieldProcess803EA00). Prepares a battle
// between player and monster.
void FieldManager::startEncounter(int firstStrike, FieldPlayerCharacter* player, FieldMonster* monster,
                                  bool arg4) {
    FieldStruct2* fmex;
    int i;

    stop_all_sfx_801959C();
    sub_80F032C(evts);
    fmex = field_1C;
    for (i = 0; i < 4; i++) {
        if (!fmex->field_25C[i].sprite->hidden) {
            sprite_remove(fmex->field_25C[i].sprite);
        }
    }
    field_10A = 0;
    field_FC_2 = 0;
    field_2A9_2 = firstStrike;
    field_2A8_0 = monster->objectIndex;
    field_2A8_5 = player->field_33C_7;
    field_2A9_5 = player->objectIndex;
    if (!monster->field_33C_7) {
        monster->field_33D_0 = monster->field_214_0;
        monster->field_33C_7 = 1;
    }
    monster->field_214_0 = 0;
    monster->field_33C_0 = 0;
    if (monster->field_344 != NULL && monster->field_344->field_20C_0) {
        if (!monster->field_344->field_33C_1) {
            monster->field_344->field_33C_2 = monster->field_344->field_214_0;
            monster->field_344->field_33C_1 = 1;
        }
        monster->field_344->field_214_0 = 0;
    }
    field_2AA = monster->field_22C_0;
    play_sfx_80195B4(word_839F5F8[field_2A9_2 * 2 + player->objectIndex], -1);
    field_2A9_6 = arg4;
    field_2A9_7 = arg4;
    startBattleTransition(0, 1);
}
#endif

void FieldManager::setBattleParameters(int arg1, u8 monsterIndex, u8 arg3, int firstStrike, int arg5,
                                       int arg6, int arg7, int arg8, int arg9, int arg10) {
    int value = arg3;

    field_2AC = arg1;
    field_2AE = arg5;
    field_2AF = arg6;
    field_2A8_7 = arg7;
    field_2A9_1 = arg8;
    field_2A9_0 = arg9;
    field_2A8_0 = monsterIndex;
    field_2A8_5 = value;
    field_2A9_2 = firstStrike;
    field_2A9_5 = arg10;
    inBattle = 1;
}

void FieldManager::start_battle_8027AC4() {
    int i;

    sub_801A6B0();
    field_2B0 = field_2A9_2;
    if (brothersTogether) {
        field_2B1_2 = luigiLeads;
    } else if (field_208_6) {
        field_2B1_2 = 0;
    } else {
        field_2B1_2 = field_2A9_5 + 2;
    }
    field_2B1_4 = field_2A9_5;
    field_2B4 = -1;
    sub_8019628(0);

    for (i = 0; i < 2; i++) {
        FieldPlayerCharacter* player = i == 0 ? leader : follower;

        if (player->field_298_0) {
            player->field_218 = player->field_356;
            player->direction = player->field_358_0;
            player->sprite->hFlip = player->field_298_1;
            player->sprite->field_1F_0 = player->field_298_2;
            player->sprite->field_1F_2 = player->field_298_4;
            player->sprite->animationEndAction = player->field_298_6;
            player->sprite->animationComplete = player->field_299_0;
            player->sprite->paused = player->field_299_1;
            player->sprite->field_21 = player->field_29B;
            player->sprite->frame = player->field_29C;
            player->sprite->frameTicksLeft = player->field_29E;
            player->sprite->animationTicks = player->field_2A0;
            player->sprite->xScale = player->field_2A2;
            player->sprite->yScale = player->field_2A4;
            player->field_298_0 = 0;
            player->field_212_5 = 0;
        }
    }

    sub_80273E4();
    if (field_304 != NULL) {
        delete field_304;
        field_304 = NULL;
    }
    runtime_install_interrupt_callback(2, NULL);
    state = 2;
    byte_3000C24 = 1;
    if (dword_3000C78 == NULL) {
        dword_3000C78 = sub_800063C;
    }
    init_btl_process_80FC25C(operator new(0x1C, 0, "BTL ", 0), 8, "BTL ", &field_2AC);
}

void FieldManager::sub_8027D64() {
    int x;
    int y;
    u32 i;

    if (!currentWarp->isAbsolute) {
        switch ((u32)currentWarp->direction) {
            case 0:
            case 4:
                x = field_2D0;
                y = 0xF00;
                break;
            case 2:
            case 6:
                x = 0x800;
                y = field_2D4;
                break;
        }
        x += currentWarp->destX << 12;
        y += currentWarp->destY << 12;
    } else {
        x = (currentWarp->destX << 12) + ((currentWarp->offsetX + 8) << 8);
        y = (currentWarp->destY << 12) + ((currentWarp->offsetY * 16 + 240) * 16);
    }

    for (i = 0; i < 8; i++) {
        if (follower->state == word_839F610[i]) {
            changeBrotherForm(BROTHERS_FORM_NORMAL, false);
            break;
        }
    }

    sub_8027E90(currentWarp->roomId, currentWarp->walkingAnimation, currentWarp->direction, x, y,
                currentWarp->toLedge == 0 ? -1 : -2, leader->height > 0x1E00 ? 0x1E00 : leader->height,
                0, -3, true);
    currentWarp = NULL;
}

// A helper to match sub_8027E90. Not an inline member: the inline members of this file all have
// out-of-line copies at its end (sub_803C468-sub_803C898), and none of them is this getter.
static inline u8 getObjectCount(FieldManager* manager) {
    return manager->objectCount;
}

void FieldManager::sub_8027E90(u16 roomId, u16 arg2, u8 direction, int x, int y, int z, int height,
                               int arg8, s8 arg9, bool arg10) {
    int i;

    sub_803C610();
    sub_801A6B0();

    if (arg10 == true && !brothersTogether && !field_208_6 && field_2D8_0 == 0x1F) {
        field_2D8_0 = luigiLeads ^ 1;
        followerRoomId = this->roomId;
        field_2D8_5 = follower->direction;
        field_2DC = follower->x;
        field_2E0 = follower->y;
        field_2E4 = follower->z;
        field_2E8 = follower->height;
    }

    for (i = 0; i < getObjectCount(this); i++) {
        delete objects[i];
    }
    for (i = 0; i < 8; i++) {
        delete shotBullets[i];
    }

    if (field_310) {
        delete field_310;
        field_310 = NULL;
    }
    if (field_30C) {
        delete field_30C;
        field_30C = NULL;
    }
    sub_80F0184(evts);
    sub_80E8DC0();
    if (field_308) {
        sub_805C73C(field_308, 3);
        field_308 = NULL;
    }
    if (field_314) {
        sub_81166AC(field_314, 3);
        field_314 = NULL;
    }
    if (field_1FC) {
        sub_805CCC0(field_1FC, 3);
        field_1FC = NULL;
    }
    if (field_304) {
        delete field_304;
        field_304 = NULL;
    }
    runtime_install_interrupt_callback(2, NULL);
    evts->disable();
    bevs->disable();

    field_2B8_4 = arg2;
    field_2B8_1 = direction;
    field_2BC = x;
    field_2C0 = y;
    field_2C4 = z;
    field_2C8 = height;
    field_2CC = arg8;
    field_2B9 = arg9;
    if (field_F8_0) {
        sprite_context_release();
        field_F8_0 = 0;
    }
    field_2B8_0 = 1;
    field_2B8_6 = 0;
    this->roomId = roomId;
    field_F9_3 = 1;
    field_F8_1 = 0;
    state = 0;
}

void FieldManager::sub_802814C() {
    u8 result;

    sub_801A6B0();
    if (field_12D_4) {
        sub_80273E4();
        if (field_304 != NULL) {
            delete field_304;
            field_304 = NULL;
        }
        runtime_install_interrupt_callback(2, NULL);
        field_12D_4 = 0;
    }

    result = CommonEvent::getGlobalVariable(0x1BE5);
    if (result != 0) {
        disable();
        state = 2;
        sub_8054378(operator new(0x68, 0, "OVER", 0), 8, "OVER", result);
    } else {
        delete this;
        sub_8123340();
        dword_3001034(0, CommonEvent::instance, 0x570);
        if (sub_81251F0()) {
            stru_3000D40.field_0_1 = 1;
            sub_80FC198();
            sub_812335C();
            GameMode::make_fldm_801AF5C(1);
        } else {
            new (0, "LOAD", 0) LoadMenu(8, "LOAD", 0);
        }
    }
}

void FieldManager::sub_8028248() {
    FieldPlayerCharacter* follower = this->follower;
    FieldPlayerCharacter* leader = this->leader;
    int x;
    int y;

    x = field_2BC;
    leader->x = x;
    y = field_2C0;
    leader->y = y;
    leader->height = field_2C8;
    if (field_2C4 >= 0) {
        leader->z = field_2C4;
    } else {
        int floor;
        int ceiling;
        int top;
        struct Coldef* coldef;
        int z;

        leader->field_290 = field_304;
        coldef = sub_803FBA4(field_304, x, y, &floor, &ceiling, &top, true, true);
        if (field_2C4 == -2) {
            z = top;
            leader->field_26_1 = 1;
        } else {
            z = floor;
            leader->field_26_1 = 0;
        }
        leader->z = z;
        leader->coldef = coldef;
    }

    leader->previousX = leader->x;
    leader->previousY = leader->y;
    leader->previousZ = leader->z;
    leader->previousHeight = leader->height;
    leader->direction = field_2B8_1;
    leader->angle = field_2B8_1 << 5;
    leader->method6(1);

    if (follower != NULL) {
        follower->height = leader->height;
        if (brothersTogether || field_208_6) {
            follower->direction = leader->direction;
            brothersTogether = 0;
            sub_802E4C8(1);
            follower->method6(1);
            field_2D8_0 = 0x1F;
        } else if (!field_208_6 && field_2D8_0 != 0x1F) {
            if (followerRoomId == roomId) {
                follower->sub_8047F60(field_2DC, field_2E0, field_2E4 + field_2E8, 1, 0);
                follower->direction = field_2D8_5;
                field_2D8_0 = 0x1F;
            } else {
                follower->setSpriteActive(false);
                follower->sub_804776C(0);
            }
        }
    }

    if (brothersForm == BROTHERS_FORM_SURFBOARD_LUIGI && field_261 != 0) {
        leader->direction = follower->direction = field_2BB;
        follower->angle = field_2BA;
        leader->angle = field_2BA;
    }
}

// https://decomp.me/scratch/4UywW
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80284B0__12FieldManagerii.s\"");
#else
void FieldManager::sub_80284B0(int index, int arg2) {
    if (index >= 0) {
        u16 oldX = field_27A;
        u16 oldY = field_27C;
        FieldObject* object = objects[index];
        u16 screenX = object->x / 256 - oldX;
        u16 screenY = (object->y - object->z - object->height) / 256 - oldY;
        int floor;
        s16 y;

        if ((s16)screenX < field_28A || (s16)screenX > field_28B) {
            field_27A = (s16)screenX + oldX - 120;
        }
        if ((s16)screenY < field_28C || (s16)screenY > field_28D) {
            field_27C = (s16)screenY + field_27C - 96;
        }
        sub_80286AC(-1);

        if (arg2) {
            sub_805952C(field_304, field_27A, field_27C);
        } else if ((s16)oldX != (s16)field_27A || (s16)oldY != (s16)field_27C) {
            u16 dx = oldX - field_27A;
            u16 dy = oldY - field_27C;

            if ((s16)dx < -0x1F || (s16)dx > 0x1F || (s16)dy < -0x1F || (s16)dy > 0x1F) {
                sub_805952C(field_304, field_27A, field_27C);
            } else {
                field_304->sub_8057C9C(field_27A, field_27C);
            }
        }

        field_274 = screenX;
        if (object->airFrames >= 0) {
            floor = object->airStartZ;
        } else {
            floor = object->z;
        }
        if (object->height < 0) {
            floor += object->height;
        }
        y = (object->y - floor) / 256;
        field_278 = y;
        field_276 = y - (object->z + object->height - floor) / 256;
    }
    field_27E = field_27A + field_12E;
    field_280 = field_27C + field_130;
}
#endif

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80286AC__12FieldManageri.s\"");
#else
void FieldManager::sub_80286AC(int index) {
    if (index >= 0) {
        FieldObject* object = objects[index];
        u16 oldX = field_274;
        u16 left;
        u16 right;
        int leftMargin;
        int rightMargin;
        int oldScreenY;
        int newFloor;
        int oldFloor;
        int oldScreenBase;
        int screenBase;
        u16 top;
        s16 topMargin;
        s16 bottomMargin;
        int moved;

        field_274 = object->x / 256;
        left = field_274 - field_27A - object->field_282 / 2;
        right = left + object->field_282;
        leftMargin = field_F9_2 ? 120 : field_28A;
        rightMargin = field_F9_2 ? 120 : field_28B;
        if ((s16)left < leftMargin) {
            if ((s16)field_274 < (s16)oldX) {
                field_27A -= (s16)oldX - field_274;
            }
        } else if ((s16)right > rightMargin) {
            if ((s16)field_274 > (s16)oldX) {
                field_27A += field_274 - (s16)oldX;
            }
        }

        oldScreenY = field_276;
        newFloor = object->airFrames >= 0 ? object->airStartZ : object->z + object->height;
        oldFloor =
            object->airFrames >= 0 ? object->airStartZ : object->previousZ + object->previousHeight;
        oldScreenBase = (object->previousY - oldFloor) / 256;
        screenBase = (object->y - newFloor) / 256;
        field_278 = screenBase;
        field_276 = screenBase - (object->z + object->height - newFloor) / 256;
        top = field_276 - field_27C;
        if (object->airFrames >= 0) {
            topMargin = field_28E;
            bottomMargin = field_28F;
            top -= object->field_283;
        } else {
            topMargin = field_F9_2 ? 100 : field_28C;
            bottomMargin = field_F9_2 ? 100 : field_28D;
        }

        moved = 0;
        if ((s16)top < topMargin && field_276 < oldScreenY) {
            field_27C -= oldScreenY - field_276;
            moved = 1;
        }
        if (!moved) {
            if (object->y > object->previousY) {
                if ((s16)(field_276 - field_27C) > bottomMargin) {
                    if (object->height > 0) {
                        field_27C += field_276 - oldScreenY;
                    } else {
                        field_27C += field_278 - oldScreenBase;
                    }
                } else if (object->airFrames >= 0 && object->z == object->airStartZ
                           && (s16)(field_278 - field_27C) > bottomMargin) {
                    field_27C += field_278 - oldScreenBase;
                }
            } else if (object->z + object->height < object->previousZ + object->previousHeight
                       && (s16)(field_276 - field_27C) > bottomMargin) {
                field_27C += field_276 - oldScreenY;
            }
        }
    }

    if ((s16)field_27A < 0) {
        field_27A = 0;
    } else if ((s16)field_27A > field_286 - 240) {
        field_27A = field_286 - 240;
    }
    if ((s16)field_27C < 0) {
        field_27C = 0;
    } else if ((s16)field_27C > field_288 - 160) {
        field_27C = field_288 - 160;
    }
}
#endif

void FieldManager::sub_80289BC(FieldPlayerCharacter* player, FieldObject* other) {
    int direction = 0;
    int arg5 = 0;

    switch ((u32)player->field_350_0) {
        case 1:
            direction = 4;
            break;
        case 2:
            direction = 6;
            break;
        case 4:
            break;
        case 8:
            direction = 2;
            break;
    }
    switch (player->field_350_4) {
        case 1:
            arg5 = 2;
            break;
        case 2:
            arg5 = 1;
            break;
    }

    if ((s8)player->field_342 == 3) {
        player->field_344 = 0x19;
    } else {
        switch ((s8)player->field_344) {
            case 7:
            case 9:
            case 10:
                if ((s8)player->field_342 == -1) {
                    player->field_344 = 0;
                }
                break;
            case 12:
            case 14:
                if ((s8)player->field_342 == -1) {
                    player->field_344 = 11;
                }
                break;
        }
    }

    sub_80EF874(evts, (s8)(player->field_33C_0 << 1) >> 1, *(u32*)((u8*)other + 0x22C), direction, arg5,
                (s8)player->field_344 != 0x10, (s8)player->field_344);
}

void FieldManager::sub_8028AFC(int mode, int relative, int x, int y, u16 speed) {
    if (relative == 1) {
        x += (s16)field_27A;
        y += (s16)field_27C;
    }
    if (x < 0) {
        x = 0;
    } else if (x > field_286 - 240) {
        x = field_286 - 240;
    }
    if (y < 0) {
        y = 0;
    } else if (y > field_288 - 160) {
        y = field_288 - 160;
    }

    field_2EC = field_27A;
    field_2EE = field_27C;
    field_2F2 = x;
    field_2F4 = y;
    if (mode == 1) {
        int dx = field_2F2 - field_2EC;
        int dy = field_2F4 - field_2EE;

        field_2FC = (((int (*)(int))dword_3001038)(dx * dx + dy * dy) << 8) / (s16)speed;
        field_2FC += 1;
    } else {
        field_2FC = speed;
    }
    field_2FA = 0;
    field_2FE = (u32)ArcTan2((s16)(field_2EE - field_2F4), (s16)(field_2F2 - field_2EC)) >> 8;
    field_F9_0 = mode;
}

void FieldManager::sub_8028C40() {
    if (field_F9_0 != 0) {
        int done;

        field_2FA++;
        field_27A = field_2EC + (field_2F2 - field_2EC) * field_2FA / field_2FC;
        field_27C = field_2EE + (field_2F4 - field_2EE) * field_2FA / field_2FC;

        done = 0;
        if ((field_2F2 >= field_2EC && field_2F2 <= (s16)field_27A)
            || (field_2F2 <= field_2EC && field_2F2 >= (s16)field_27A)) {
            field_27A = field_2F2;
            done = 1;
        }
        if ((field_2F4 >= field_2EE && field_2F4 <= (s16)field_27C)
            || (field_2F4 <= field_2EE && field_2F4 >= (s16)field_27C)) {
            field_27C = field_2F4;
            done |= 2;
        }
        if (done == 3) {
            sub_8028E4C();
        }
    }
}

//! Possible fake match: the value has to pass through an inline that returns it.
//! https://decomp.me/scratch/NW173
static inline u16 identity(u16 value) {
    return value;
}

void FieldManager::sub_8028D6C(u16 mask) {
    u16 enabled = ~mask & 0x3FF;
    u16 previous = gGameState.enabledKeys & enabled;

    gGameState.enabledKeys = identity(enabled);
    if (!field_F8_5) {
        gGameState.input.held |= mask;
        sub_8018818();
        gGameState.input.pressed &= previous;
        gGameState.input.released &= previous;
        gGameState.input.repeated &= previous;
    } else {
        gGameState.input.held = gGameState.rawInput.held & enabled;
        gGameState.input.pressed = gGameState.rawInput.pressed & enabled;
        gGameState.input.released = gGameState.rawInput.released & enabled;
        gGameState.input.repeated = gGameState.rawInput.repeated & enabled;
    }
    field_F8_5 = 1;
}

void FieldManager::sub_8028E14(int arg1, int arg2, int arg3) {
    int buffer;

    if (arg3 != -1) {
        sub_802191C(arg3);
    }
    sub_8021574(arg1, arg2, 0, 0, 0, &buffer, arg3);
}

void FieldManager::sub_8028E4C() {
    field_2F8 = 0;
    field_2FC = 0;
    field_F9_0 = 0;
}

bool FieldManager::sub_8028E70() {
    return field_F9_0;
}

void FieldManager::get_fobj_screen_pos(int index, int* x, int* y) {
    FieldObject* object = objects[index];

    *x = object->x / 256 - field_27E;
    *y = (object->y - object->z - object->height) / 256 - field_280;
}

void FieldManager::sub_8028ED8() {
    field_F8_6 = 0;
}

void FieldManager::sub_8028EE8() {
    field_F8_6 = 1;
}

void FieldManager::sub_8028EF4() {
    sub_801A6B0();
    delete this;
    sub_812F5D8(operator new(0x4AC, 0, "ENDD", 0), 8, "ENDD");
}

void FieldManager::sub_8028F2C() {
    field_12D_5 = 1;
}

void FieldManager::sub_8028F40() {
    field_12D_4 = 1;
}

void FieldManager::make_btl_8028F54() {
    field_2AC = field_2B4;
    field_2B4 = -1;
    disable();
    state = 2;
    byte_3000C24 = 1;
    if (dword_3000C78 == NULL) {
        dword_3000C78 = sub_800063C;
    }
    init_btl_process_80FC25C(operator new(0x1C, 0, "BTL ", 0), 8, "BTL ", &field_2AC);
}

void FieldManager::sub_8028FBC() {
    sub_801A6B0();
    sub_8019628(0);
    sub_80273E4();
    sub_80E8DC0();
    if (field_304 != NULL) {
        delete field_304;
        field_304 = NULL;
    }
    runtime_install_interrupt_callback(2, NULL);
    state = 1;
    if (dword_3000C78 == NULL) {
        dword_3000C78 = sub_800063C;
    }
    sub_815085C(field_12B);
    field_12B = -1;
}

void FieldManager::sub_8029024(int value) {
    field_12B = value;
}

void FieldManager::sub_8029030(int arg1, int arg2) {
    field_12D_0 = 1;
    field_12D_1 = arg1;
    field_12D_2 = arg2;
}

void FieldManager::requestViewingSign() {
    viewingSignRequested = true;
}

void FieldManager::sub_8029070() {
    field_12C_0 = 1;
}

void FieldManager::sub_8029080() {
    disable();
    state = 2;
    byte_3000C24 = 2;
    if (dword_3000C78 == NULL) {
        dword_3000C78 = sub_800063C;
    }
    sub_8122BA0(field_12C_2, 0);
    field_12C_2 = -2;
}

void FieldManager::sub_80290CC(int value) {
    field_12C_2 = value;
}

void FieldManager::sub_80290E0() {
    if (field_F0 != 0) {
        u8* source = (u8*)field_24;
        u8* destination = (u8*)0x2000080;

        do {
            if (field_F0 & 1) {
                CpuFastCopy(source, destination, 0x20);
            }
            source += 0x20;
            destination += 0x20;
            field_F0 >>= 1;
        } while (field_F0 != 0);
    }
}

void FieldManager::sub_8029120(u16 high, u16 low) {
    u32 mask = low | (high << 16);
    u8* source = (u8*)0x2000080;
    u8* destination = (u8*)field_24;
    u32 bit = 1;

    while (mask != 0) {
        if (mask & 1) {
            CpuFastCopy(source, destination, 0x20);
            field_F0 |= bit;
        }
        source += 0x20;
        destination += 0x20;
        bit <<= 1;
        mask >>= 1;
    }
}

void FieldManager::sub_8029170(int arg) {
    switch (field_FC_3) {
        case 1:
            sub_81165CC(field_314, arg);
            field_FC_3 = arg + 1;
            break;
        case 2:
            sub_81165CC(field_314, arg);
            field_FC_3 = 2 - arg;
            break;
    }
}

void FieldManager::sub_80291C8() {
    switch (field_FC_3) {
        case 1:
        case 2:
            sub_8116610(field_314);
            break;
    }
}

void FieldManager::sub_80291EC(int mode, int arg2, u16 arg3, u16 low, u16 high) {
    gGameState.field_884 |= (high << 16) | low;
    if (mode == 0) {
        if (field_F0 != 0) {
            sub_80290E0();
        }
    } else {
        sub_8029120(high, low);
    }
    field_F4 = low;
    field_F6 = high;
    sub_81151E4(field_314, mode, arg3, arg2, low, high, low & 1 ? dword_3000E00 : 0,
                low & 1 ? dword_3000E04 : 0);
}

// Called by the "WIPE" process when it ends. wipeParameters is the pointer given to sub_8079D1C:
// &FieldManager::field_102, so index 3 is field_108 (the wipe mode).
void sub_80292A0(s16* wipeParameters) {
    gGameState.field_888_6 = 0;
    if (wipeParameters[3] == 6) {
        dword_3001034(0, (void*)(VRAM + 0xC000), 0x20);
        BUFFER_REG_BG0CNT = 0x1508;
    }
}

void FieldManager::sub_80292EC() {
    int i;

    for (i = 0; i < objectCount; i++) {
        delete objects[i];
    }
    for (i = 0; i < 8; i++) {
        delete shotBullets[i];
    }
}

void FieldManager::sub_8029380() {
    if (field_112 != 0) {
        FieldObject** object = &objects[2];
        int i;

        for (i = 0; i < field_113; i++) {
            //! Possible fake match: the target calls the out-of-line copy of this inline.
            sub_80507E0__12FieldMonster((FieldMonster*)*object++);
        }
    }
}

void FieldManager::sub_80293B8() {
    u16* entry = field_C8;
    int i;

    for (i = 0; i < field_10C; i++, entry++) {
        field_1C->field_15C[i] = sub_80214A4(0, *entry, -1, 1);
    }
}

void FieldManager::sub_80293F8(u16 id) {
    u16* entry;
    int i;

    field_C8 = sub_80FB7BC(id, &field_10C);
    dword_3000C78 = NULL;
    entry = field_C8;
    for (i = 0; i < field_10C; i++, entry++) {
        field_1C->field_5C[i] = sub_80213A0(0, *entry, -1, 1);
    }
    dword_3000C78 = sub_800063C;
}

void FieldManager::sub_8029460() {
    sub_8018218(field_1C->field_0[0]->field_8, (void*)0x6010400, 0x4C0, 0x20, 0);
    sub_8018218(field_1C->field_0[3]->field_8, (void*)0x60108C0, 0x500, 0x20, 0);
}

void FieldManager::sub_80294A0() {
    u16* entry = word_839F5E2;
    int i;

    for (i = 0; i < 11; i++) {
        field_1C->field_2C[i] = sub_80214A4(0, *entry, -1, 1);
        entry++;
    }
}

void FieldManager::sub_802955C() {
    u16* entry;
    int i;

    dword_3000C78 = NULL;
    entry = word_839F5CC;
    for (i = 0; i < 11; i++) {
        field_1C->field_0[i] = (FieldStruct5*)sub_80213A0(0, *entry, -1, 1);
        entry++;
    }
    dword_3000C78 = sub_800063C;
}

void FieldManager::sub_8029624() {
    FieldStruct2* fmex = field_1C;
    FieldStruct1* entry = fmex->field_25C;
    int i;

    for (i = 0; i < 4; i++, entry++) {
        if (!entry->sprite->hidden) {
            entry->sprite->xPosition = entry->field_4 - field_27E;
            entry->sprite->yPosition = entry->field_6 - field_280;
        }
    }
}

void FieldManager::sub_80296D0() {
    FieldStruct2* fmex = field_1C;
    int i;

    for (i = 0; i < 4; i++) {
        if (!fmex->field_25C[i].sprite->hidden) {
            sprite_remove(fmex->field_25C[i].sprite);
        }
    }
}

void FieldManager::sub_802973C(FieldObject* object, int type, bool arg3, int offset, bool playSound) {
    sub_80262CC(object->x, object->y, object->z, object->height + ((offset * 16 + 240) * 16), type,
                arg3, playSound);
}

static inline int get_Field_FC_7(FieldManager* manager) {
    return manager->field_FC_7;
}

void FieldManager::sub_8029788() {
    if (get_Field_FC_7(this) == 0) {
        field_304->sub_805C6B8();
    }
    field_FC_7 = -1;
}

void FieldManager::sub_80297B8() {
    if (get_Field_FC_7(this) == 0) {
        sub_805BFF0(field_304);
    }
}

void FieldManager::sub_80297D8(int arg) {
    if (arg == 0) {
        sub_805BED8(field_304);
        field_FC_7 = 0;
    }
}

void FieldManager::sub_8029804() {
    field_208_1 = 0;
    leader->field_350_14 = 1;
}

void FieldManager::sub_8029830() {
    field_208_1 = 1;
    leader->field_23E = walkSpeed;
    leader->field_350_14 = 0;
}

void FieldManager::sub_8029878() {
    play_sfx_80195B4(0x50, -1);
}

void sub_8029888(void (*callback)(void), int index) {
    if (dword_3000D80[index] != callback) {
        REG_IME = 0;
        dword_3000D80[index] = callback;
        REG_IME = 1;
    }
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80298B0.s\"");
#else
void sub_80298B0(void) {
    void (**callback)(void) = &dword_3000D80[1];

    do {
        *callback = NULL;
        callback--;
    } while ((int)callback >= (int)dword_3000D80);
    runtime_install_interrupt_callback(2, sub_8029910);
}
#endif

void sub_8029910(void) {
    int i;

    for (i = 0; i < 2; i++) {
        if (dword_3000D80[i] != NULL) {
            dword_3000D80[i]();
        }
    }
}

void FieldManager::sub_8029934() {
    int i;

    dword_3001034(0, field_20C, 0x30);
    for (i = 0; i < 2; i++) {
        field_20C[i].actionMode = ACTION_MODE_NORMAL;
        field_20C[i].field_8[0] = dword_839F900[i][0];
        field_20C[i].field_8[1] = dword_839F900[i][1];
        field_20C[i].field_10[0] = 0;
        field_20C[i].field_10[1] = 0;
        field_20C[i].field_12 = -1;
        field_20C[i].field_13 = -1;
        field_20C[i].field_14 = -1;
        field_20C[i].field_15 = -1;
        field_20C[i].selectedAction = ACTION_JUMP;
        field_20C[i].field_16_0 = 0;
    }
}

static inline void setSpeed(FieldPlayerCharacter* player, const u16& speed) {
    player->field_240 = speed;
    player->field_23E = speed;
    player->field_260 = speed;
}

void FieldManager::changeBrotherForm(int form, bool32 moveStuckFollower) {
    FieldPlayerCharacter* mario;
    FieldPlayerCharacter* luigi;
    u8 buffer[4];

    brothersForm = form;
    field_208_0 = brothersTogether ^ 1;
    field_20B_7 = 0;
    field_209_5 = 0;
    leader->field_352_6 = 0;

    if (leader->objectIndex == BROTHER_MARIO) {
        mario = leader;
        luigi = follower;
    } else {
        luigi = leader;
        mario = follower;
    }

    shotBulletIndex = 0;
    sub_803C610();

    switch (form) {
        case BROTHERS_FORM_NORMAL:
            if (moveStuckFollower && sub_802DC0C(follower)) {
                follower->x = leader->x;
                follower->y = leader->y;
                follower->z = leader->z;
                follower->height = leader->height;
                follower->previousX = leader->previousX;
                follower->previousY = leader->previousY;
                follower->previousZ = leader->previousZ;
                follower->previousHeight = leader->previousHeight;
            }

            if (leader->field_368->actionMode == ACTION_MODE_TALK
                || leader->field_368->actionMode == ACTION_MODE_INTERACT) {
                leader->field_368->field_1 = ACTION_MODE_NORMAL;
            } else {
                leader->field_368->actionMode = ACTION_MODE_NORMAL;
            }

            setSpeed(leader, walkSpeed);

            leader->field_358_3 = 0;
            leader->field_350_14 = 0;
            leader->field_210_1 = 1;
            leader->field_210_2 = 1;
            leader->field_20C_13 = 0;
            leader->field_20C_14 = 1;
            leader->sub_8049000(leader->objectIndex == BROTHER_MARIO ? SPRITE_ID(0, 1)
                                                                     : SPRITE_ID(0, 2));
            leader->sprite->xScale = leader->sprite->yScale = 0x100;
            leader->field_212_6 = 0;
            leader->field_23B = 0;
            leader->isMini = false;
            leader->isMole = false;
            leader->isPump = false;
            leader->isBarrel = false;
            leader->field_350_15 = 0;
            follower->field_35A_0 = 0;
            follower->field_35A_1 = 0;

            if (leader->field_368->field_12 != -1) {
                leader->field_368->field_10[0] = leader->field_368->field_12;
                leader->field_368->field_12 = -1;
            }

            field_208_0 = 1;
            field_20B_4 = 0;

            if (follower->field_368->actionMode == ACTION_MODE_TALK
                || follower->field_368->actionMode == ACTION_MODE_INTERACT) {
                follower->field_368->field_1 = ACTION_MODE_NORMAL;
            } else {
                follower->field_368->actionMode = ACTION_MODE_NORMAL;
            }

            follower->field_358_3 = 0;
            follower->field_350_14 = 0;
            follower->field_20C_13 = 0;
            follower->field_20C_14 = 1;
            follower->sub_8049000(follower->objectIndex == BROTHER_MARIO ? SPRITE_ID(0, 1)
                                                                         : SPRITE_ID(0, 2));
            follower->sprite->xScale = follower->sprite->yScale = 0x100;
            follower->field_212_6 = 0;
            follower->field_23B = 0;
            follower->field_35A_1 = 0;

            if (brothersTogether) {
                if (follower->field_368->field_12 != -1) {
                    follower->field_368->field_10[0] = follower->field_368->field_12;
                    follower->field_368->field_12 = -1;
                }
            } else if (follower->field_368->field_12 != -1) {
                follower->field_368->field_14 = follower->field_368->field_12;
                follower->field_368->field_12 = -1;
            }

            follower->isMini = false;
            follower->isMole = false;
            follower->isPump = false;
            follower->isBarrel = false;
            follower->field_350_15 = 0;

            if (brothersTogether) {
                setSpeed(follower, walkSpeed);
            }
            break;

        case BROTHERS_FORM_PUMP_MARIO:
            if (mario->field_35A_2) {
                mario->sub_80492DC();
            }

            sub_8021574(0, PALETTE_ID(0, 4), 0, 0, 0, buffer, 12);

            if (mario->field_368->actionMode == ACTION_MODE_TALK
                || mario->field_368->actionMode == ACTION_MODE_INTERACT) {
                mario->field_368->field_1 = ACTION_MODE_PUMP_MARIO;
            } else {
                mario->field_368->actionMode = ACTION_MODE_PUMP_MARIO;
            }

            setSpeed(mario, 0x100 >> isUnderwater);

            mario->isMini = false;
            mario->isPump = true;
            mario->sub_8049000(SPRITE_ID(0, 46));

            if (shotBulletIndex == 0) {
                shotBulletIndex = 3;
            }

            if (!brothersTogether && field_2D8_0 == 0x1F) {
                sub_802E4C8(0);
            }

            if (mario->field_368->field_12 == -1) {
                mario->field_368->field_12 = mario->field_368->field_10[0];
            }

            mario->field_368->field_10[0] = 0;

            if (luigi->field_368->actionMode == ACTION_MODE_TALK
                || luigi->field_368->actionMode == ACTION_MODE_INTERACT) {
                luigi->field_368->field_1 = ACTION_MODE_PUMP_MARIO;
            } else {
                luigi->field_368->actionMode = ACTION_MODE_PUMP_MARIO;
            }

            luigi->isMole = false;
            luigi->isBarrel = false;
            luigi->field_350_15 = 0;

            if (brothersTogether) {
                setSpeed(luigi, 0x100 >> isUnderwater);
            }
            break;

        case BROTHERS_FORM_MINI_MARIO:
            if (mario->field_35A_2) {
                mario->sub_80492DC();
            }

            if (mario->field_368->actionMode == ACTION_MODE_TALK
                || mario->field_368->actionMode == ACTION_MODE_INTERACT) {
                mario->field_368->field_1 = ACTION_MODE_MINI_MARIO;
            } else {
                mario->field_368->actionMode = ACTION_MODE_MINI_MARIO;
            }

            setSpeed(mario, 0x200 >> isUnderwater);

            mario->isMini = true;
            mario->isPump = false;
            mario->sub_8049000(SPRITE_ID(0, 40));

            if (luigi->field_368->actionMode == ACTION_MODE_TALK
                || luigi->field_368->actionMode == ACTION_MODE_INTERACT) {
                luigi->field_368->field_1 = ACTION_MODE_MINI_MARIO;
            } else {
                luigi->field_368->actionMode = ACTION_MODE_MINI_MARIO;
            }

            luigi->isMole = false;
            luigi->isBarrel = false;
            luigi->field_350_15 = 0;

            if (brothersTogether) {
                setSpeed(luigi, 0x200 >> isUnderwater);
            }
            break;

        case BROTHERS_FORM_MOLE_LUIGI:
            if (luigi->field_35A_2) {
                luigi->sub_80492DC();
            }

            if (luigi->field_368->actionMode == ACTION_MODE_TALK
                || luigi->field_368->actionMode == ACTION_MODE_INTERACT) {
                luigi->field_368->field_1 = ACTION_MODE_MOLE_LUIGI;
            } else {
                luigi->field_368->actionMode = ACTION_MODE_MOLE_LUIGI;
            }

            setSpeed(luigi, 0x100 >> isUnderwater);

            luigi->sub_8049000(SPRITE_ID(0, 67));
            luigi->isMole = true;
            luigi->isBarrel = false;
            luigi->field_20C_13 = 1;
            luigi->field_210_1 = 0;
            luigi->field_210_2 = 0;
            luigi->field_352_6 = 1;
            luigi->field_350_15 = 0;

            if (brothersTogether || luigi->field_352_7) {
                if (luigi->field_368->field_12 == -1) {
                    luigi->field_368->field_12 = luigi->field_368->field_10[0];
                }
            } else {
                if (luigi->field_368->field_14 != -1) {
                    luigi->field_368->field_12 = luigi->field_368->field_14;
                }

                luigi->field_368->field_14 = luigi->field_368->field_10[0];
            }

            luigi->field_368->field_10[0] = 0;

            if (mario->field_368->actionMode == ACTION_MODE_TALK
                || mario->field_368->actionMode == ACTION_MODE_INTERACT) {
                mario->field_368->field_1 = ACTION_MODE_MOLE_LUIGI;
            } else {
                mario->field_368->actionMode = ACTION_MODE_MOLE_LUIGI;
            }

            mario->isMini = false;
            mario->isPump = false;

            if (brothersTogether) {
                setSpeed(mario, 0x100 >> isUnderwater);
            }
            break;

        case BROTHERS_FORM_BARREL_LUIGI:
            if (luigi->field_35A_2) {
                luigi->sub_80492DC();
            }

            if (luigi->field_368->actionMode == ACTION_MODE_TALK
                || luigi->field_368->actionMode == ACTION_MODE_INTERACT) {
                luigi->field_368->field_1 = ACTION_MODE_BARREL_LUIGI;
            } else {
                luigi->field_368->actionMode = ACTION_MODE_BARREL_LUIGI;
            }

            setSpeed(luigi, 0x100 >> isUnderwater);

            luigi->isMole = false;
            luigi->isBarrel = true;
            luigi->field_350_15 = 1;
            luigi->sub_8049000(SPRITE_ID(0, 70));

            if (brothersTogether || luigi->field_352_7) {
                if (luigi->field_368->field_12 == -1) {
                    luigi->field_368->field_12 = luigi->field_368->field_10[0];
                }
            } else {
                if (luigi->field_368->field_14 != -1) {
                    luigi->field_368->field_12 = luigi->field_368->field_14;
                }
                luigi->field_368->field_14 = luigi->field_368->field_10[0];
            }

            luigi->field_368->field_10[0] = 0;

            if (mario->field_368->actionMode == ACTION_MODE_TALK
                || mario->field_368->actionMode == ACTION_MODE_INTERACT) {
                mario->field_368->field_1 = ACTION_MODE_BARREL_LUIGI;
            } else {
                mario->field_368->actionMode = ACTION_MODE_BARREL_LUIGI;
            }

            mario->isMini = false;
            mario->isPump = false;

            if (brothersTogether) {
                setSpeed(mario, 0x100 >> isUnderwater);
            }
            break;
    }

    field_20A_3 = 0;
    leader->state = 0;
    leader->field_214_0 = 3;

    if (brothersTogether || follower->state > 12) {
        follower->state = 0;
        follower->field_214_0 = 3;
    }

    sprite_remove(leader->field_36C);
    sprite_remove(follower->field_36C);

    sub_802DDB4(leader, 0, 0);
    sub_802DDB4(follower, brothersTogether, 0);
    sub_802DF80(0);
}

void FieldManager::sub_802A4E8() {
    u8 direction = follower->angle >> 5;

    if (leader->field_353_4 != 0) {
        if (leader->field_26_2 == 3) {
            if (leader->field_353_4 == 1) {
                if (follower->field_26_2 != 3) {
                    follower->field_353_4 = 0;
                } else if (leader->airFrames == -1) {
                    if (direction == 6 || direction == 2) {
                        follower->field_353_4 = 0;
                    } else {
                        follower->field_353_4 = 1;
                    }
                } else if (direction == 6 || direction == 2) {
                    follower->field_353_4 = leader->field_353_4;
                } else {
                    follower->field_353_4 = leader->field_353_4 + 1;
                }
            } else if (follower->field_26_2 == 3) {
                if (direction == 6 || direction == 2) {
                    follower->field_353_4 = 1;
                } else {
                    follower->field_353_4 = 2;
                }
            } else {
                follower->field_353_4 = 1;
            }
        } else {
            follower->field_353_4 = leader->field_353_4;
        }
    } else if (follower->field_26_2 == 3) {
        if (direction == 6 || direction == 2) {
            follower->field_353_4 = leader->field_353_4;
        } else {
            follower->field_353_4 = leader->field_353_4 + 1;
        }
    } else {
        follower->field_353_4 = 0;
    }
}

static inline u16 get_3000FF4_Field_E(FieldPlayerCharacter* player) {
    struct struc_3000FF4* entry = dword_3000FF4;

    entry += player->objectIndex;
    return entry->field_E;
}

void FieldManager::sub_802A608() {
    if (leader->field_358_3
        || (gGameState.enabledKeys & (A_BUTTON | B_BUTTON | DPAD_ANY))
               != (A_BUTTON | B_BUTTON | DPAD_ANY)) {
        if (leader->field_35A_2) {
            leader->sub_80492DC();
        }
        if (follower->field_35A_2) {
            follower->sub_80492DC();
        }
        return;
    }

    if (!leader->isMini && !leader->isMole && !leader->isPump && !leader->isBarrel && leader->state == 0
        && get_3000FF4_Field_E(leader) <= 1) {
        leader->sub_804FD3C();
    } else if (leader->field_35A_2) {
        leader->sub_80492DC();
    }

    if (!follower->isMini && !follower->isMole && !follower->isPump && !follower->isBarrel
        && follower->state == 0 && get_3000FF4_Field_E(follower) <= 1) {
        follower->sub_804FD3C();
    } else if (follower->field_35A_2) {
        follower->sub_80492DC();
    }
}

void FieldManager::sub_802A740() {
    u8 field_2B8_4Copy;
    int start;

    if (CommonEvent::getFlag(CommonEvent::instance->fieldEngineFlags, 0, 0x2A2)) {
        leader->field_368->field_16_0 |= 0x7F;
        follower->field_368->field_16_0 |= 0x7F;
    } else {
        leader->field_368->field_16_0 = 0;
        follower->field_368->field_16_0 = 0;
    }
    field_2B8_4Copy = field_2B8_4 != 0;

    if (fieldMode != FIELD_MODE_NONE) {
        if (field_2B8_4) {
            sub_802F498();
            if (!leader->field_353_1) {
                leader->sub_804FB64(objects, 0, !isUnderwater);
            }
            if (brothersTogether && !follower->field_353_1) {
                follower->sub_804FB64(objects, 0, !isUnderwater);
            }
            if (follower->previousHeight < 0 && follower->height == 0) {
                follower->height = leader->height;
            }
        }
        for (int i = 2; i < objectCount; i++) {
            objects[i]->sub_80418E8(objects);
        }
        sub_802563C();
        sub_8025ACC();
        for (int i = 0; i < 2; i++) {
            objects[i]->sub_80418E8(objects);
        }
    }

    if (isUnderwater && !leader->field_2B5_0 && !leader->field_2B5_3 && !follower->field_2B5_0
        && !follower->field_2B5_3) {
        if (leader->state <= 1) {
            leader->field_35C = leader->z + 0x1E00;
        }
        if (follower->state <= 1) {
            follower->field_35C = follower->z + 0x1E00;
        }
        if (leader->state == 4 && follower->state == 4) {
            leader->field_260 = 0x200;
            follower->field_260 = 0x200;
        } else if (leader->state <= 1 || follower->state <= 1) {
            leader->field_260 = 0x100;
            follower->field_260 = 0x100;
        }
        if ((s16)leader->field_23E < (s16)leader->field_260) {
            leader->field_23E += 16;
            if ((s16)leader->field_23E > (s16)leader->field_260) {
                leader->field_23E = leader->field_260;
            }
        } else if ((s16)leader->field_23E > (s16)leader->field_260) {
            leader->field_23E -= 8;
            if ((s16)leader->field_23E < (s16)leader->field_260) {
                leader->field_23E = leader->field_260;
            }
        }
        follower->field_23E = leader->field_23E;
    }

    if ((fieldMode == FIELD_MODE_FADE_IN || fieldMode == FIELD_MODE_NORMAL
         || fieldMode == FIELD_MODE_REGROUP || fieldMode == FIELD_MODE_4
         || fieldMode == FIELD_MODE_PUMP_FORM)
        || fieldMode == FIELD_MODE_BATTLE_TRANSITION || fieldMode == FIELD_MODE_MENU
        || fieldMode == FIELD_MODE_12 || fieldMode == FIELD_MODE_SIGN || fieldMode == FIELD_MODE_SHOP) {
        switch (leader->state) {
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 58:
            case 62:
            case 63:
            case 70:
            case 71:
            case 72:
                sub_802C774(leader);
                break;
            default:
                sub_802C068(input);
                if (leader->state == 3 || leader->state == 4) {
                    int velocityZ = isUnderwater ? -0x200 : 0;
                    if (velocityZ != 0 && leader->velocityZ < velocityZ) {
                        leader->velocityZ = velocityZ;
                    }
                }
                sub_804FE68(leader, objects);
                if (leader->state == 4 && !leader->field_2B5_0 && !leader->field_2B5_3) {
                    if (leader->field_214_0 == 4 && leader->sprite->animationComplete
                        && --leader->field_355 == 0) {
                        leader->field_214_0 = 5;
                    }
                    if (leader->z + leader->height > leader->field_35C) {
                        leader->height = leader->field_35C - leader->z;
                    }
                }
                break;
        }

        if (!field_2B8_4) {
            sub_802B654(leader);
        }

        if (leader->isMini && leader->state <= 4) {
            int result = findDigSpot(leader);
            if (result != -1) {
                if (leader->field_36C->hidden || leader->field_36C->id != 0x54) {
                    leader->sub_80497A8();
                    sub_801ABE8(0, 0x1E, 0);
                }
                if (result & 0x80) {
                    leader->field_36C->xScale = 0xB3;
                    leader->field_36C->yScale = 0xB3;
                } else {
                    leader->field_36C->xScale = 0x100;
                    leader->field_36C->yScale = 0x100;
                }
            } else if (!leader->field_36C->hidden && leader->field_36C->id == 0x54) {
                sprite_remove(leader->field_36C);
                sub_801AD3C();
            }
        }

        sub_803C7D8(leader);
        if (!field_2B8_4) {
            if (!field_2B8_4Copy) {
                sub_802E2F4();
            }
            if (!field_2B8_4 && leader->field_353_3 && leader->airFrames == -1
                && !leader->field_2B5_0) {
                leader->sub_804FC30();
            }
        }

        if (brothersTogether && !follower->field_214_7 && !follower->field_214_8) {
            follower->field_239 = follower->sprite->speed =
                follower->state == 1 ? (s16)follower->field_23E / 32 : field_FA_11;
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
            case 58:
            case 62:
            case 63:
            case 70:
            case 71:
            case 72:
                sub_802C774(follower);
                break;
            default:
                sub_802C208();
                if (follower->state == 3 || follower->state == 4) {
                    int velocityZ = isUnderwater ? -0x200 : 0;
                    if (velocityZ != 0 && follower->velocityZ < velocityZ) {
                        follower->velocityZ = velocityZ;
                    }
                }
                sub_804FE68(follower, objects);
                if (follower->state == 4 && !follower->field_2B5_0 && !follower->field_2B5_3) {
                    if (follower->field_214_0 == 4 && follower->sprite->animationComplete
                        && --follower->field_355 == 0) {
                        follower->field_214_0 = 5;
                    }
                    if (follower->z + follower->height > follower->field_35C) {
                        follower->height = follower->field_35C - follower->z;
                    }
                }
                break;
        }

        if (!brothersTogether) {
            sub_802B654(follower);
            if (!field_2B8_4 && follower->field_353_3) {
                follower->sub_804FC30();
            }
            sub_803C834(leader);
            sub_803C834(follower);
        } else if (!field_2B8_4) {
            u8 resetHeight;

            if (follower->blocksBrothers || follower->collidesWithBrothers) {
                follower->method12(&objects[luigiLeads], 1, 0);
            }
            if (brothersForm == BROTHERS_FORM_MOLE_LUIGI && field_10E != 0) {
                follower->method12(&objects[field_10E], field_10F, 0);
            }
            if (field_110 != 0) {
                follower->method12(&objects[field_110], field_111, 0);
            }
            if (field_114 != 0) {
                start = field_114;
            } else if (field_116 != 0) {
                start = field_116;
            } else if (field_11A != 0) {
                start = field_11A;
            } else {
                start = 0;
            }
            if (start > 0) {
                follower->method12(&objects[start], objectCount - start, 0);
            }
            if (follower->field_2B5_3 && follower->airFrames == -1) {
                follower->sub_8046A10();
                follower->field_23E = leader->field_23E;
            }
            follower->method13();
            resetHeight = sub_802BD2C();
            follower->sub_804FB64(objects, 0, 0);
            if (!leader->field_26_2 && !follower->field_26_2
                && (leader->field_4E_2 == 3 || follower->field_4E_2 == 3)) {
                follower->x = follower->previousX;
                follower->y = follower->previousY;
                sub_802DF80(0);
            }
            sub_802A4E8();
            if (resetHeight) {
                follower->height = 0;
            }
            if (field_208_5) {
                if ((follower->previousHeight == 0 && follower->height > 0
                     && follower->z + follower->height <= follower->previousZ)
                    || leader->z == follower->z) {
                    field_208_5 = 0;
                }
            }
            if (brothersTogether && !leader->field_358_12 && follower->airFrames == -1
                && leader->z + leader->height < follower->z + follower->height
                && leader->sub_8047C18(follower)) {
                field_208_5 = 1;
            }
            sub_803C834(leader);
        }

        if (!field_F9_4 && !field_F9_5) {
            sub_802B804(leader, field_209_0);
            sub_802B804(follower, field_209_0);
        }

        if (fieldMode == FIELD_MODE_NORMAL && field_208_3 && !brothersTogether
            && brothersForm != BROTHERS_FORM_MOLE_LUIGI && !follower->sub_804D0EC()
            && (leader->height == 0 || (s8)leader->field_1 != -1)
            && (follower->height == 0 || (s8)follower->field_1 != -1)
            && (leader->z + leader->height == follower->z + follower->height
                || (leader->field_26_4 & follower->field_26_4))) {
            s8 value = (s8)(leader->field_33C_0 << 1) >> 1;

            if (value == (luigiLeads ^ 1) && (s8)(leader->field_33D_0 << 1) >> 1 == value
                && (s8)leader->field_342 == -1) {
                leader->sub_804FC90();
                follower->field_368->actionMode = leader->field_368->actionMode;
                if (leader->field_368->field_14 != -1) {
                    leader->field_368->field_10[0] = leader->field_368->field_14;
                    leader->field_368->field_14 = -1;
                }
                if (follower->field_368->field_14 != -1) {
                    follower->field_368->field_10[0] = follower->field_368->field_14;
                    follower->field_368->field_14 = -1;
                }
                sub_802C4D4(1, 1);
                sub_802E4C8(0);
            }
        }

        if (!field_209_0 && checkWarps(leader, 1, !isUnderwater, 0)) {
            leader->velocityX = leader->velocityY = 0;
            follower->velocityX = follower->velocityY = 0;
        }
    } else {
        sub_8025ACC();
        leader->sub_804FC90();
        follower->sub_804FC90();
    }

    if (leader->state <= 4) {
        leader->sub_80490CC(isUnderwater);
    }
    if (follower->state <= 4) {
        follower->sub_80490CC(isUnderwater);
    }
    if (isUnderwater && brothersTogether && !leader->field_2B5_0 && !leader->field_2B5_3
        && !follower->field_2B5_0 && !follower->field_2B5_3 && leader->state <= 1
        && follower->state <= 1 && (leader->previousState == 4 || follower->previousState == 4)) {
        sub_802DF80(0);
    }
}

// The inline members sub_803C468-sub_803C898 are emitted out of line at the end of this file, in
// reverse definition order. Each one is defined after its last bl caller in this file and before the
// first function that inlines it.
inline void FieldManager::sub_803C898(int form) {
    changeBrotherForm(form, true);
}

inline void FieldManager::sub_803C834(FieldPlayerCharacter* player) {
    if (player->isMole) {
        player->sub_804DDF4(&objects[2], objectCount - 2);
        if (player->sub_80458B0() && player->field_368->actionMode != ACTION_MODE_7) {
            player->field_368->field_16_0 |= 1;
        }
    }
}

inline void FieldManager::sub_803C7D8(FieldPlayerCharacter* player) {
    int index = player->sub_804FB3C();

    if (index >= 0 && !(field_FA_0 & (1 << index))) {
        sub_805C908(field_304, index);
        field_FA_0 |= 1 << index;
        play_sfx_80195B4(0x53, -1);
    }
}

inline void FieldManager::sub_803C788(FieldPlayerCharacter* player) {
    sub_8018218(field_1C->field_0[4]->field_8 + byte_839F954[player->field_368->selectedAction] * 32,
                (void*)(0x6010DC0 + player->objectIndex * 0x400),
                byte_839F962[player->field_368->selectedAction] * 32, 0x20, 0);
}

inline void FieldManager::sub_803C720(int mask) {
    if (mask & 1) {
        leader->field_368->field_10[0] = 0;
        sub_802DDB4(leader, 0, NULL);
    }
    if (mask & 2) {
        follower->field_368->field_10[1] = 0;
        sub_802DDB4(follower, brothersTogether, NULL);
    }
}
void FieldManager::sub_802B654(FieldPlayerCharacter* player) {
    int start;

    if (player->isMole) {
        if (player->otherBrother != NULL) {
            player->method12((FieldObject**)&player->otherBrother, 1, 0);
        }
        player->method12(objects, objectCount, 1);
    } else {
        if (!field_209_0 && field_10E != 0) {
            player->method12(&objects[field_10E], field_10F, 0);
        }
        if (field_110 != 0) {
            player->method12(&objects[field_110], field_111, 0);
        }
        if (field_112 != 0 && player->objectIndex == BROTHER_LUIGI
            && brothersForm == BROTHERS_FORM_BARREL_LUIGI) {
            start = field_112;
        } else if (field_114 != 0) {
            start = field_114;
        } else if (field_116 != 0) {
            start = field_116;
        } else if (field_11A != 0) {
            start = field_11A;
        } else {
            start = 0;
        }
        if (start > 0) {
            player->method12(&objects[start], objectCount - start, 0);
        }
    }
    player->sub_80465D8();
    player->method13();
    player->sub_804D2CC();
    player->sub_804FB64(objects, 0, 0);
}

void FieldManager::sub_802B804(FieldPlayerCharacter* player, bool arg2) {
    FieldObject** others;
    int count;
    int start;

    if (player != NULL && player->field_33C_0 == 0x7F && player->field_20C_0 && !player->field_214_21
        && player->field_20C_24) {
        player->field_284 = player->x - (player->field_272 >> 1);
        player->field_288 = player->y + player->field_270;
        player->field_28C = (player->height > 0 || (player->height < 0 && player->previousHeight < 0))
                                ? player->z + player->height
                                : player->z;

        if (!brothersTogether && player->collidesWithBrothers) {
            player->sub_804B028(objects[player->objectIndex ^ 1]);
        }

        if (player->collidesWithObjects && !player->isMole) {
            if (player->field_33C_0 == 0x7F && field_112 != 0) {
                others = &objects[field_112];
                for (count = field_113; count != 0; count--, others++) {
                    FieldObject* other = *others;
                    FieldObject* part;

                    if (player->sub_804B028(other)) {
                        player->field_33C_7 = 0;
                        break;
                    }
                    part = ((FieldMonster*)other)->field_344;
                    if (part != NULL && part->field_20C_0 && player->sub_804B028(part)) {
                        player->field_33C_7 = 1;
                        break;
                    }
                }
            }

            if (!arg2 && player->field_33C_0 == 0x7F) {
                if ((!brothersTogether || player->field_352_7
                     || brothersForm == BROTHERS_FORM_MOLE_LUIGI
                     || brothersForm == BROTHERS_FORM_THUNDER_TICKLE)
                    && field_10E != 0) {
                    start = field_10E;
                } else if (field_110 != 0) {
                    start = field_110;
                } else {
                    start = 0;
                }
                if (start > 0) {
                    others = &objects[start];
                    count = field_10F + field_111 - start + 2;
                    while (count != 0) {
                        if (player->sub_804B028(*others) && !player->field_358_3) {
                            FieldObject* other = objects[(s8)(player->field_33C_0 << 1) >> 1];

                            if ((other->type == FIELD_OBJECT_TYPE_FCHR && player->field_352_0)
                                || (other->type == FIELD_OBJECT_TYPE_FBRD && player->field_352_1)) {
                                if (other->type == FIELD_OBJECT_TYPE_FCHR && other->field_20C_1 > 1
                                    && player->height == 0) {
                                    s32 x = player->x;
                                    s32 y = player->y + player->field_270;
                                    s32 otherX = other->x;
                                    s32 otherY = other->y + other->field_270;
                                    s32 halfWidth = (player->field_272 + other->field_272) >> 1;
                                    bool hit = false;

                                    if (x - halfWidth < otherX && x + halfWidth > otherX
                                        && y - player->field_276 < otherY
                                        && y + other->field_276 > otherY) {
                                        hit = true;
                                    } else {
                                        u32 mask;

                                        if (byte_839F94C[player->angle >> 5]
                                            & (mask = player->field_350_0)) {
                                            switch (mask) {
                                                case 1:
                                                case 4:
                                                    if (x + (player->field_272 >> 1)
                                                            > otherX - (other->field_272 >> 1)
                                                        && x - (player->field_272 >> 1)
                                                               < otherX + (other->field_272 >> 1)) {
                                                        hit = true;
                                                    }
                                                    break;
                                                case 2:
                                                case 8:
                                                    if (y > otherY - other->field_276
                                                        && y - player->field_276 < otherY) {
                                                        hit = true;
                                                    }
                                                    break;
                                            }
                                        }
                                    }
                                    if (hit) {
                                        player->field_340 = other->field_20C_1;
                                    }
                                }
                                break;
                            }
                        }
                        count--;
                        others++;
                    }
                }

                if (player->field_33C_0 == 0x7F && field_11A != 0) {
                    FieldObject** group = &objects[field_11A];
                    int groupCount;

                    for (groupCount = field_11B; groupCount != 0; groupCount--, group++) {
                        if (player->sub_804B028(*group)) {
                            break;
                        }
                    }
                }
            }
        }
    }

    if (!field_209_0 && fieldMode >= FIELD_MODE_FADE_IN && fieldMode <= FIELD_MODE_NORMAL
        && (brothersTogether || player->field_352_7)) {
        if (player->field_340 == 2) {
            player->sub_8049BD8(ACTION_MODE_TALK);
            sub_802DDB4(player, player->field_352_7 ? 0 : brothersTogether, 0);
        } else if (player->field_352_7 && player->field_340 == 3) {
            player->sub_8049BD8(ACTION_MODE_INTERACT);
            sub_802DDB4(player, player->field_352_7 ? 0 : brothersTogether, 0);
        } else if (player->field_341 != player->field_340) {
            player->sub_804FC90();
            sub_802DDB4(player, player->field_352_7 ? 0 : brothersTogether, 0);
        }
    } else {
        player->sub_804FC90();
    }
}

u8 FieldManager::sub_802BD2C() {
    u8 result = 0;

    if (brothersTogether) {
        if (leader->x != leader->previousX || leader->y != leader->previousY) {
            s32 dx = leader->x - follower->x;
            s32 dy = leader->y - follower->y;
            bool wasClamped = field_20A_2;

            field_20A_2 = 0;
            if (dx > (s16)field_240) {
                leader->x = follower->x + (s16)field_240;
                field_20A_2 = 1;
            }
            if (dx < -(s16)field_240) {
                leader->x = follower->x - (s16)field_240;
                field_20A_2 = 1;
            }
            if (dy > (s16)field_240) {
                leader->y = follower->y + (s16)field_240;
                field_20A_2 = 1;
            }
            if (dy < -(s16)field_240) {
                leader->y = follower->y - (s16)field_240;
                field_20A_2 = 1;
            }

            if (field_20A_2) {
                sub_802DF80(0);
                if (leader->x == leader->previousX && leader->y == leader->previousY) {
                    if (leader->z == leader->previousZ && leader->height == 0 && follower->height == 0
                        && follower->z + 0x1000 >= leader->z) {
                        bool stuck;

                        field_26C++;
                        stuck = false;
                        if ((brothersForm == BROTHERS_FORM_MINI_MARIO
                             || brothersForm == BROTHERS_FORM_MOLE_LUIGI)
                            && (s8)field_26C == 10
                            && sub_802E688(brothersForm != BROTHERS_FORM_MINI_MARIO)) {
                            stuck = true;
                        }
                        if (stuck) {
                            sub_802E754(0, 1, 1);
                            follower->field_23E = follower->field_260 = walkSpeed;
                            follower->sprite->speed = follower->field_239 = field_FA_11;
                            follower->velocityX = follower->velocityY = 0;
                            {
                                FieldPlayerCharacter* player = leader;

                                follower->field_20C_7 = follower->collidesWithBrothers = 1;
                                player->field_20C_7 = player->collidesWithBrothers = 1;
                            }
                        }
                    } else {
                        field_26C = 0;
                    }
                } else {
                    field_26C = 0;
                }
            } else {
                field_26C = 0;
                if (wasClamped) {
                    follower->x = follower->previousX;
                    follower->y = follower->previousY;
                    sub_802DF80(0);
                }
            }
        } else {
            field_26C = 0;
        }

        if ((s8)field_26C == 0 && follower->field_368->field_15 != -1) {
            follower->field_368->field_10[1] = follower->field_368->field_15;
            follower->field_368->field_15 = -1;
        }
    }

    return result;
}

void FieldManager::sub_802BFB0(u8 angle) {
    s16* vector;
    s32 speed;
    s32 velocityX;
    s32 velocityY;

    leader->angle = angle;
    vector = word_839F584[angle >> 5];
    speed = (s16)leader->field_23E;
    velocityX = (vector[0] * speed / 256) >> leader->field_353_4;
    velocityY = (speed * vector[1] / 256) >> leader->field_353_4;

    if (velocityX > 0) {
        velocityX = (velocityX + 0x3F) & ~0x3F;
    } else if (velocityX < 0) {
        velocityX = -velocityX;
        velocityX = (velocityX + 0x3F) & ~0x3F;
        velocityX = -velocityX;
    }

    if (velocityY > 0) {
        velocityY = (velocityY + 0x3F) & ~0x3F;
    } else if (velocityY < 0) {
        velocityY = -velocityY;
        velocityY = (velocityY + 0x3F) & ~0x3F;
        velocityY = -velocityY;
    }

    leader->velocityX = velocityX;
    leader->velocityY = velocityY;
}

void FieldManager::sub_802C068(struct KeyInput* arg1) {
    int index;
    u8 angle;

    if (field_2B8_4 || leader->field_2B5_0) {
        return;
    }

    if (fieldMode == FIELD_MODE_NORMAL && !leader->field_350_14 && arg1 != NULL) {
        index = (arg1->held & DPAD_ANY) >> 4;
        angle = byte_839F910[index];
        if (angle != 0xFF) {
            sub_802BFB0(angle);
            return;
        }
        if (leader->state == 4) {
            leader->velocityX = leader->field_362;
            leader->velocityY = leader->field_364;
            if (leader->velocityX > 0) {
                leader->velocityX -= 8;
                if (leader->velocityX < 0) {
                    leader->velocityX = 0;
                }
            } else if (leader->velocityX < 0) {
                leader->velocityX += 8;
                if (leader->velocityX > 0) {
                    leader->velocityX = 0;
                }
            }
            if (leader->velocityY > 0) {
                leader->velocityY -= 8;
                if (leader->velocityY < 0) {
                    leader->velocityY = 0;
                }
            } else if (leader->velocityY < 0) {
                leader->velocityY += 8;
                if (leader->velocityY > 0) {
                    leader->velocityY = 0;
                }
            }
            leader->field_23E -= 8;
            if ((s16)leader->field_23E < 0) {
                leader->field_23E = 0;
            }
            follower->field_23E = leader->field_23E;
        } else {
            leader->velocityX = 0;
            leader->velocityY = 0;
        }
    } else {
        leader->velocityX = 0;
        leader->velocityY = 0;
    }
}

void FieldManager::sub_802C208() {
    FieldPlayerCharacter* player;
    FieldPlayerCharacter* other;
    int direction;

    if (!field_20B_2) {
        player = follower;
        other = leader;
        direction = 0;
    } else {
        other = follower;
        player = leader;
        direction = 4;
    }

    if (player->field_2B5_0) {
        return;
    }

    if (!player->field_350_14 && brothersTogether && (other->field_358_12 || field_208_5)) {
        int index = player->field_358_4;

        player->field_358_4 = index + ((s16)player->field_23E >> player->field_353_4) / 64;
        player->velocityX = ((s32(*)[2])field_23C)[player->field_358_4][0] - player->x;
        player->velocityY = ((s32(*)[2])field_23C)[player->field_358_4][1] - player->y;
        if (player->velocityX != 0 || player->velocityY != 0) {
            direction += byte_839F620[ArcTan2(-player->velocityY, player->velocityX) >> 12];
            direction &= 7;
            player->angle = direction << 5;
            if (player->field_214_0 > 2) {
                player->direction = direction;
            }
        }
    } else {
        sub_802C4D4(0, 1);
    }
}

void FieldManager::sub_802C390() {
    if (field_20A_7 == 2
        || (field_20A_7 == 0
            && !(gGameState.enabledKeys & (A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT)))) {
        if ((s16)field_244 > -0x38) {
            field_244 -= 8;
        }
    } else if (field_20A_7 == 1
               || (field_20A_7 == 0
                   && (gGameState.enabledKeys & (A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT)))) {
        if ((s16)field_244 < 0) {
            field_244 += 8;
        }
    }
}

void FieldManager::sub_802C428(int index, int value) {
    FieldPlayerCharacter* player = (FieldPlayerCharacter*)objects[index];
    PlayerAction* data = player->field_368;

    if (player->field_352_7) {
        if (value > 0) {
            value--;
        }
    } else if ((!brothersTogether && value > 0) || data->actionMode == ACTION_MODE_MARIO_ON_BARREL) {
        value--;
    }
    data->field_10[!player->field_352_7] = value;
    sub_803C788(player);
}

void FieldManager::sub_802C4D4(u8 arg1, u8 arg2) {
    FieldPlayerCharacter* second = follower;
    FieldPlayerCharacter* first = leader;
    int value = 0;

    if (arg1) {
        first->velocityX = value;
        first->velocityY = value;
    }
    if (second != NULL && arg2) {
        second->velocityX = value;
        second->velocityY = value;
        if (brothersTogether) {
            s32 dy;

            value = first->x - second->x;
            dy = first->y - second->y;
            if (value != 0 || dy != 0) {
                value = byte_839F620[ArcTan2(-dy, value) >> 12] % 8;
                second->angle = value << 5;
                if (second->field_214_0 > 2) {
                    second->direction = value;
                }
            }
        }
    }
}

void FieldManager::sub_802C588(FieldPlayerCharacter* player) {
    switch (player->field_368->selectedAction) {
        case ACTION_JUMP:
            if ((brothersForm == BROTHERS_FORM_NORMAL || brothersForm == BROTHERS_FORM_MINI_MARIO)
                && isUnderwater) {
                player->field_239 = player->sprite->speed = field_FA_11;
                player->sub_8049224();
            } else {
                int sound;

                player->field_239 = player->sprite->speed = field_FA_11;
                player->startAirborne(player->defaultJumpVelocity, player->defaultGravity, -1);
                player->state = FIELD_OBJECT_STATE_RISING;
                if (player->objectIndex == BROTHER_MARIO) {
                    sound = player->isMini ? 0x2F : 0x2B;
                } else {
                    sound = 0x2B;
                }
                play_sfx_80195B4(sound, -1);
            }
            break;

        case ACTION_HAMMER:
            player->field_239 = player->sprite->speed = field_FA_11;
            player->startHammer(isUnderwater);
            break;

        case ACTION_HAND:
            player->field_239 = player->sprite->speed = field_FA_11;
            player->startHandPower();
            break;

        case ACTION_DIG_OUT: // Luigi comes up from underground.
            player->field_239 = player->sprite->speed = field_FA_11;
            if (player->field_33E != -1 && objects[player->field_33E]->type == FIELD_OBJECT_TYPE_FBRL) {
                enterBarrel(player);
            } else {
                digOutOfGround(player);
            }
            break;

        case ACTION_BREAK_BARREL: // Luigi breaks the barrel.
            player->field_239 = player->sprite->speed = field_FA_11;
            breakOutOfBarrel(player);
            break;

        case ACTION_DISABLED: // Plays buzzer sound.
            sub_8029878();
            break;
    }
}

void FieldManager::sub_802C774(FieldPlayerCharacter* player) {
    switch (player->state) {
        case 58:
            if (--player->field_355 == 0) {
                player->field_368->actionMode = player->otherBrother->field_368->actionMode =
                    ACTION_MODE_NORMAL;
                player->state = player->otherBrother->state = 0;
                {
                    FieldPlayerCharacter* other = player->otherBrother;

                    other->field_23E = walkSpeed;
                    other->field_260 = player->field_23E = walkSpeed;
                    player->field_260 = walkSpeed;
                }
                player->otherBrother->field_358_3 = 0;
                player->field_358_3 = 0;
                player->otherBrother->field_350_14 = 0;
                player->field_350_14 = 0;
                brothersForm = BROTHERS_FORM_NORMAL;
                field_20B_7 = 0;
                field_208_0 = 1;
                player->field_214_0 = 3;
                player->sub_8049000(SPRITE_ID(0, 1));
                shotBullets[0]->sub_804FAF8();
                sub_802DF80(0);
            }
            break;

        case 5: {
            u8 hit = false;

            if (!player->field_353_2) {
                hit = player->sub_804D734(0, objects, objectCount);
            }
            if (player->field_353_2 || hit || player->sub_804DBD0(0)) {
                if (player->isMini) {
                    if (player->field_353_2) {
                        if (player->sprite->frame == 4) {
                            player->state = 9;
                        }
                    } else if (hit) {
                        FieldObject* other = objects[(s8)(player->field_33C_0 << 1) >> 1];

                        if (other->type == FIELD_OBJECT_TYPE_FBRL
                            || (other->type == FIELD_OBJECT_TYPE_FRCK
                                && sub_803C544() > (*(u32*)((u8*)other + 0x22C) & 3))) {
                            player->field_353_2 = 1;
                            if (other->type == FIELD_OBJECT_TYPE_FRCK) {
                                sub_801ABE8(0, 15, 0);
                                play_sfx_80195B4(0x46, -1);
                            }
                        } else {
                            player->state = player->sprite->frame == 3 ? 8 : 9;
                        }
                    } else {
                        player->state = player->sprite->frame == 3 ? 6 : 7;
                    }
                } else {
                    if (player->field_353_2) {
                        if (player->sprite->frame == 4) {
                            player->state = 9;
                        }
                    } else if (hit) {
                        FieldObject* other = objects[(s8)(player->field_33C_0 << 1) >> 1];

                        if (other->type == FIELD_OBJECT_TYPE_FBRL
                            || (other->type == FIELD_OBJECT_TYPE_FRCK
                                && sub_803C544() > (*(u32*)((u8*)other + 0x22C) & 3))) {
                            player->field_353_2 = 1;
                            if (other->type == FIELD_OBJECT_TYPE_FRCK) {
                                sub_801ABE8(0, 15, 0);
                                play_sfx_80195B4(0x46, -1);
                            }
                        } else {
                            player->state = player->sprite->frame == 3 ? 8 : 9;
                        }
                    } else {
                        player->state = player->sprite->frame == 3 ? 6 : 7;
                    }
                }
            }

            if (player->sprite->animationComplete) {
                player->state = 7;
            }
            if (player->state != 5) {
                int animation = player->sprite->field_21;

                if (player->isMini) {
                    if (player->sprite->frame == 3) {
                        animation += 10;
                    } else {
                        animation += 5;
                    }
                } else {
                    if (player->sprite->frame == 3) {
                        animation += 10;
                    } else {
                        animation += 5;
                    }
                }
                sprite_set_animation(player->sprite, animation, 0);
                player->field_355 = 20;
            }
            break;
        }

        case 6:
        case 7:
        case 8:
        case 9:
            if (player->state > 7) {
                player->state -= 2;
            }
            if (player->field_355 != 0 && --player->field_355 == 0) {
                player->sub_804FCD4();
                player->otherBrother->field_350_14 = 0;
            }
            break;

        case 10: {
            if (player->field_355 < 60) {
                u16* entry;
                u32 i;

                player->field_355++;
                entry = word_839F974;
                for (i = 0; i < 4; i++, entry += 2) {
                    if (entry[0] == player->field_355) {
                        sprite_set_animation(player->field_36C, entry[1], 0);
                        if (player->field_355 == 59) {
                            stop_sfx_80195A8(player->objectIndex == BROTHER_MARIO ? 0x157 : 0x87);
                            play_sfx_80195B4(player->objectIndex == BROTHER_MARIO ? 0x158 : 0x156, -1);
                        }
                    }
                }
            }
            player->updateAirborne();
            player->sub_804FB64(objects, 0, 0);
            if (!(input->held & player->field_368->actionButton) || player->airFrames != -1) {
                if (player->airFrames != -1 || player->field_355 < 60) {
                    player->stopHandPower();
                    player->otherBrother->field_350_14 = 0;
                } else {
                    stop_sfx_80195A8(player->objectIndex == BROTHER_MARIO ? 0x158 : 0x156);
                    player->state = 11;
                    player->method7(1);
                    player->sprite->animationEndAction = ANIMATION_END_STOP;
                    play_sfx_80195B4(player->objectIndex == BROTHER_MARIO ? 0x9C : 0x9A, -1);
                }
            }
            break;
        }

        case 11:
            if (player->sprite->animationComplete) {
                if (player->sub_804D734(1, objects, objectCount) || player->sub_804DBD0(1)) {
                    player->field_355 = 5;
                } else {
                    player->field_355 = 40;
                }
                player->field_214_0 = 0;
                player->state = 12;
                sprite_set_animation(player->field_36C, 5, 0);
                player->field_36C->animationEndAction = ANIMATION_END_STOP;
            }
            break;

        case 12:
            if (player->field_36C->field_21 == 5 && player->field_36C->animationComplete) {
                sprite_set_animation(player->field_36C, 6, 0);
            }
            if (player->field_355 != 0 && --player->field_355 == 0) {
                player->stopHandPower();
                player->otherBrother->field_350_14 = 0;
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

        case 63: {
            player->field_355++;
            if (player->field_355 & ((2 << isUnderwater) >> field_20A_1)) {
                player->direction++;
            }
            player->updateAirborne();
            if (field_20A_1) {
                player->updateAirborne();
            }
            player->sub_804FB64(objects, 0, 0);
            if (player->airFrames != -1) {
                break;
            }
            sub_802C4D4(1, 1);
            player->field_214_0 = 3;
            field_20B_7 = 0;
            field_208_0 = 1;
            brothersForm = BROTHERS_FORM_NORMAL;
            player->field_368->actionMode = ACTION_MODE_NORMAL;
            player->state = 0;
            player->field_350_14 = 0;
            player->field_260 = player->field_23E = walkSpeed;
            if (player->otherBrother->field_368->actionMode == ACTION_MODE_TALK
                || player->otherBrother->field_368->actionMode == ACTION_MODE_INTERACT) {
                player->otherBrother->field_368->field_1 = ACTION_MODE_NORMAL;
            } else {
                player->otherBrother->field_368->actionMode = ACTION_MODE_NORMAL;
            }
            player->otherBrother->field_350_14 = 0;
            if (brothersTogether) {
                player->otherBrother->state = 0;
            }
            {
                FieldPlayerCharacter* other = player->otherBrother;

                other->field_23E = walkSpeed;
                other->field_260 = walkSpeed;
            }
            if (player->otherBrother->airFrames != -1) {
                player->otherBrother->field_240 = walkSpeed;
            }
            if (brothersTogether) {
                sub_802DF80(0);
            }
            player->direction = player->angle >> 5;
            field_20B_4 = 0;
            player->field_368->field_10[0] = player->field_368->field_12;
            player->field_368->field_12 = -1;
            sub_802DDB4(player, 0, 0);
            if (!brothersTogether && !player->field_352_7) {
                player->field_368->field_14 = player->field_368->field_10[0];
                player->field_368->field_10[0] = 0;
                sub_802DDB4(player, 0, 0);
            }
            break;
        }

        case 70: // Wait 4 frames before jumping into barrel.
            if (--player->field_355 == 0) {
                player->sub_8049000(SPRITE_ID(0, 70)); // Luigi as a barrel.
                player->jumpToHeight(16, 100, (s16)walkSpeed);
                player->state = 71;
            }
            break;

        case 71: // Update entering barrel jump.
            player->updateAirborne();
            player->sub_804FB64(objects, 0, 0);
            if (player->airFrames == -1) {
                player->state = 0;
                player->field_350_14 = 0;
                player->field_23E = 0x100 >> isUnderwater;
                player->field_260 = player->field_23E;
                player->otherBrother->state = 0;
                player->otherBrother->field_350_14 = 0;
                field_20B_7 = 0;
                if (brothersTogether) {
                    player->otherBrother->field_260 = player->otherBrother->field_23E =
                        0x100 >> isUnderwater;
                    sub_802DF80(0);
                }
            }
            break;

        case 72:
            player->updateAirborne();
            if (field_20A_1) {
                player->updateAirborne();
            }
            player->sub_804FB64(objects, 0, 0);
            if (brothersTogether && player->field_352_7) {
                s32 dx = player->x - player->otherBrother->x;
                s32 dy = player->y - player->otherBrother->y;

                if (((int (*)(int))dword_3001038)(dx * dx + dy * dy) > 0x1000) {
                    field_20B_3 = 1;
                }
            }
            if (player->airFrames == -1) {
                player->method7(1);
                if (player->otherBrother->airFrames == -1) {
                    sub_802D2F4(player);
                    field_20B_4 = 0;
                }
            }
            break;
    }
}

void FieldManager::sub_802D2F4(FieldPlayerCharacter* player) {
    sprite_remove(player->field_36C);
    field_20B_7 = 0;
    field_208_0 = 1;
    brothersForm = BROTHERS_FORM_NORMAL;
    player->field_350_15 = 0;
    player->field_368->actionMode = ACTION_MODE_NORMAL;
    player->state = 0;
    player->field_350_14 = 0;

    if (player->otherBrother->field_368->actionMode == ACTION_MODE_TALK
        || player->otherBrother->field_368->actionMode == ACTION_MODE_INTERACT) {
        player->otherBrother->field_368->field_1 = ACTION_MODE_NORMAL;
    } else {
        player->otherBrother->field_368->actionMode = ACTION_MODE_NORMAL;
    }

    player->isBarrel = false;
    player->field_260 = player->field_23E = walkSpeed;
    player->field_368->field_10[0] = player->field_368->field_12;
    player->field_368->field_12 = -1;
    sub_802DDB4(player, 0, 0);

    if (!brothersTogether && !player->field_352_7) {
        player->field_368->field_14 = player->field_368->field_10[0];
        player->field_368->field_10[0] = 0;
        sub_802DDB4(player, 0, 0);
    }

    player->otherBrother->field_350_14 = 0;

    if (brothersTogether) {
        player->otherBrother->state = 0;
        sub_802DDB4(player->otherBrother, player->field_352_7, 0);
        player->otherBrother->field_260 = player->otherBrother->field_23E = walkSpeed;
        sub_802DF80(0);
    }
}

void FieldManager::sub_802D46C(struct KeyInput* arg) {
    if (!field_2B8_4 && !battleTransitionActive && !leader->field_2B5_3 && arg != NULL
        && follower->state <= 4) {
        if ((isUnderwater && leader->field_368->selectedAction == ACTION_JUMP && leader->state <= 4)
            || leader->state <= 1) {
            if (sub_8025D24(0)) {
                if (!leader->field_368->field_16_7) {
                    sub_802C588(leader);
                } else {
                    sub_8029878();
                }
            }
        }
    }
    sub_802DDB4(leader, 0, arg);
}

void FieldManager::sub_802D544(struct KeyInput* arg) {
    if (!field_2B8_4 && !battleTransitionActive && !follower->field_2B5_3 && arg != NULL
        && ((isUnderwater && follower->field_368->selectedAction == ACTION_JUMP && follower->state <= 4)
            || follower->state <= 1)
        && sub_8025D24(1)) {
        if (!brothersTogether) {
            if ((gGameState.enabledKeys & START_BUTTON) && follower->field_20C_0
                && !follower->field_368->field_16_7) {
                sub_802C588(follower);
            } else {
                sub_8029878();
            }
        } else {
            struct PlayerAction* data = follower->field_368;

            if (data->field_16_7 || data->selectedAction == ACTION_JUMP) {
                if ((brothersForm == BROTHERS_FORM_NORMAL || brothersForm == BROTHERS_FORM_MINI_MARIO
                     || brothersForm == BROTHERS_FORM_MOLE_LUIGI
                     || brothersForm == BROTHERS_FORM_BARREL_LUIGI)
                    && isUnderwater) {
                    follower->field_239 = follower->sprite->speed = field_FA_11;
                    follower->sub_8049224();
                } else {
                    int sound;

                    follower->field_239 = follower->sprite->speed = field_FA_11;
                    follower->startAirborne(follower->defaultJumpVelocity, follower->defaultGravity,
                                            (s16)follower->field_23E);
                    follower->state = FIELD_OBJECT_STATE_RISING;
                    if (follower->objectIndex == BROTHER_MARIO) {
                        sound = follower->isMini ? 0x2F : 0x2B;
                    } else {
                        sound = 0x2B;
                    }
                    play_sfx_80195B4(sound, -1);
                }
            } else if ((u16)leader->state <= 1) {
                switch (data->selectedAction) {
                    case ACTION_JUMP:
                        break;
                    case ACTION_HAMMER:
                        follower->field_239 = follower->sprite->speed = field_FA_11;
                        if (brothersForm == BROTHERS_FORM_MOLE_LUIGI) {
                            follower->startHammer(isUnderwater);
                            leader->field_350_14 = 1;
                        } else {
                            sub_802D92C();
                        }
                        break;
                    case ACTION_HAND:
                        follower->field_239 = follower->sprite->speed = field_FA_11;
                        if (brothersForm == BROTHERS_FORM_MOLE_LUIGI) {
                            follower->startHandPower();
                            leader->field_350_14 = 1;
                        } else {
                            sub_802D92C();
                        }
                        break;
                    case ACTION_HIGH_JUMP:
                        follower->field_239 = follower->sprite->speed = field_FA_11;
                        if (brothersForm == BROTHERS_FORM_PUMP_MARIO) {
                            sub_8031234();
                        } else if (brothersForm == BROTHERS_FORM_MINI_MARIO) {
                            sub_8035B98();
                        } else {
                            sub_8030484();
                        }
                        break;
                    case ACTION_SPIN_JUMP:
                        follower->field_239 = follower->sprite->speed = field_FA_11;
                        if (brothersForm == BROTHERS_FORM_MOLE_LUIGI) {
                            sub_8033E30();
                        } else {
                            sub_8032514();
                        }
                        break;
                    case ACTION_JUMP_ON_BARREL:
                        follower->field_239 = follower->sprite->speed = field_FA_11;
                        jumpOntoBarrel();
                        break;
                }
            }
        }
    }
    sub_802DDB4(follower, brothersTogether, brothersTogether ? arg : NULL);
    if (!brothersTogether && sub_8025D24(3)) {
        sub_8029878();
    }
}

void FieldManager::sub_802D92C() {
    u8 angle;
    int offsetX;
    int offsetY;

    if (!field_209_6 && follower->field_368->selectedAction == ACTION_HAMMER) {
        angle = (leader->direction ^ 4) << 5;
        field_248 = follower->x / 256;
        field_24A = follower->y / 256;
        // An offset away from the direction the leader faces, scaled by field_240, that is never used.
        // agbcc still emits both multiplies: jump2 deletes the sign test of each `/ 0x4000` only
        // after reload, when it no longer deletes the computation feeding it.
        offsetX = (s16)field_240 * word_8198504[angle];
        offsetX /= 0x4000;
        offsetY = (s16)field_240 * word_8198584[angle];
        offsetY /= 0x4000;
    }
    field_20B_7 = 1;
    field_209_5 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->state = leader->state = 13;
}

void FieldManager::sub_802DA10() {
    if (follower->state == 13) {
        follower->sub_80461B4(objects);
        if (!follower->sub_8047B78()) {
            field_209_5 = 0;
        }
        follower->sub_80465D8();
        follower->sub_804FB64(objects, 0, 0);
        if (follower->z + follower->height != leader->z + leader->height) {
            follower->height = leader->z + leader->height - follower->z;
        }
    }
    if (field_209_5) {
        return;
    }
    switch (follower->field_368->selectedAction) {
        case ACTION_HAMMER:
            if (brothersForm == BROTHERS_FORM_NORMAL || brothersForm == BROTHERS_FORM_MINI_MARIO) {
                if (follower->objectIndex == BROTHER_MARIO) {
                    if (CommonEvent::getFlag(CommonEvent::instance->fieldEngineFlags, 0, 0x206)) {
                        hammerIntoGround();
                    } else {
                        sub_8039078();
                    }
                } else {
                    if (CommonEvent::getFlag(CommonEvent::instance->fieldEngineFlags, 0, 0x207)) {
                        sub_8035974();
                    } else {
                        sub_8039078();
                    }
                }
            } else if (brothersForm == BROTHERS_FORM_PUMP_MARIO) {
                sub_80313C0();
            } else if (brothersForm == BROTHERS_FORM_BARREL_LUIGI) {
                hammerBarrel();
            } else {
                follower->startHammer(isUnderwater);
            }
            break;
        case ACTION_HAND:
            if (brothersForm == BROTHERS_FORM_NORMAL) {
                if (follower->objectIndex == BROTHER_MARIO) {
                    if (CommonEvent::getFlag(CommonEvent::instance->fieldEngineFlags, 0, 0x20A)) {
                        sub_8036E14();
                    } else {
                        sub_8039A00();
                    }
                } else {
                    if (CommonEvent::getFlag(CommonEvent::instance->fieldEngineFlags, 0, 0x20B)) {
                        sub_8038140();
                    } else {
                        sub_8039B5C();
                    }
                }
            } else if (brothersForm == BROTHERS_FORM_MINI_MARIO) {
                sub_803A438();
            } else if (brothersForm == BROTHERS_FORM_PUMP_MARIO) {
                sub_8031518();
            } else if (brothersForm == BROTHERS_FORM_BARREL_LUIGI) {
                sub_803A438();
            } else {
                follower->startHandPower();
            }
            break;
        default:
            return;
    }
    leader->field_350_14 = 1;
}

bool FieldManager::sub_802DC0C(FieldPlayerCharacter* player) {
    FieldObject** objects;
    int start;

    if (player->sub_804D18C()) {
        return true;
    }
    if (field_110 != 0) {
        objects = &this->objects[field_110];
        int count = field_111;
        while (count != 0) {
            if (player->sub_804B25C(*objects)) {
                return true;
            }
            count--;
            objects++;
        }
    }
    if (field_114 != 0) {
        start = field_114;
    } else if (field_116 != 0) {
        start = field_116;
    } else {
        start = 0;
    }
    if (start > 0) {
        objects = &this->objects[start];
        int count = field_115 + field_117;
        while (count != 0) {
            if (player->sub_804B25C(*objects)) {
                return true;
            }
            count--;
            objects++;
        }
    }
    return false;
}

void FieldManager::sub_802DDB4(FieldPlayerCharacter* player, int index, struct KeyInput* arg) {
    PlayerAction* data = player->field_368;
    s8* list = data->field_8[index][data->actionMode];
    s8 previous;
    int changed;
    s8 value;
    u16 flag;

    if (list[0] == -1) {
        return;
    }
    previous = data->selectedAction;
    changed = 0;
    if (!player->field_2B5_0 && !player->field_2B5_3 && arg != NULL
        && sub_8025D24((player->field_352_7 ^ 1) + 2)
        && CommonEvent::getFlag(CommonEvent::instance->fieldEngineFlags, 0,
                                word_839F984[player->objectIndex * 2 + index])) {
        do {
            data->field_10[index]++;
            value = list[(s8)data->field_10[index]];
            if (value == -1) {
                data->field_10[index] = 0;
                value = list[0];
            }
            flag = word_839F98C[player->objectIndex * 28 + index * 14 + value];
        } while (flag != 0 && !CommonEvent::getFlag(CommonEvent::instance->fieldEngineFlags, 0, flag));
        changed = 1;
    }
    data->selectedAction = list[(s8)data->field_10[index]];
    if (data->selectedAction != previous) {
        sub_803C788(player);
        if (changed) {
            int sound = byte_839F9FC[player->objectIndex * 28 + index * 14 + data->selectedAction];

            if (sound != 0) {
                play_sfx_80195B4(sound, -1);
            }
        }
    } else if (changed) {
        sub_8029878();
    }
}

void FieldManager::sub_802DF80(int arg) {
    FieldPlayerCharacter* player;
    FieldPlayerCharacter* other;
    int dx;
    int dy;
    int x;
    int y;
    int stepX;
    int stepY;
    int distance;
    int progress;
    int count;
    int shift;
    int i;

    if (!brothersTogether) {
        return;
    }
    field_240 = brothersForm == BROTHERS_FORM_BARREL_LUIGI ? 0x1400 : 0x1000;
    field_20B_2 = arg;
    if (!arg) {
        player = follower;
        other = leader;
    } else {
        other = follower;
        player = leader;
    }
    dx = other->x - player->x;
    dy = other->y - player->y;
    if (dx != 0 || dy != 0) {
        u8 direction = byte_839F620[ArcTan2(-dy, dx) >> 12];

        player->angle = direction << 5;
        if (player->field_214_0 > 2) {
            player->direction = direction;
        }
    }
    player->field_358_4 = 0xFF;
    player->field_358_12 = 0;
    other->field_358_4 = 0;
    other->field_358_12 = 0;
    x = other->x;
    y = other->y;
    stepX = word_839F584[player->angle >> 5][0] / 4;
    //! Possible fake match: [angle >> 5][1] shares the index * 4 with the x step.
    stepY = word_839F584[0][(player->angle >> 5) * 2 + 1] / 4;
    distance = ((int (*)(int))dword_3001038)(dx * dx + dy * dy);
    progress = 0;
    count = ((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
        (s16)field_240, 0x40);
    shift = 0;
    if (other->field_26_2 == 3 && player->field_26_2 == 3) {
        shift = other->field_353_4 != 0;
    }
    other->field_358_4 = count >> shift;
    for (i = other->field_358_4 - 1; i >= 0; i--) {
        ((s32(*)[2])field_23C)[i][0] = x;
        ((s32(*)[2])field_23C)[i][1] = y;
        if (stepX != 0 || stepY != 0) {
            progress += 0x40;
            if (progress > distance) {
                stepY = 0;
                stepX = 0;
            }
            x -= stepX;
            y -= stepY;
        }
    }
}

void FieldManager::sub_802E2F4() {
    FieldPlayerCharacter* player;
    FieldPlayerCharacter* other;
    int x;
    int y;
    int stepX;
    int stepY;
    int dx;
    int dy;
    s16 speed;
    int count;

    if (!brothersTogether) {
        return;
    }
    if (!field_20B_2) {
        player = follower;
        other = leader;
    } else {
        other = follower;
        player = leader;
    }
    if (player->field_2B5_0) {
        return;
    }
    if (field_20B_3 || other->x != other->previousX || other->y != other->previousY
        || other->sub_8047C18(player) < 0) {
        dx = other->x - other->previousX;
        dy = other->y - other->previousY;
        stepX = dx > 0 ? 0x40 : dx < 0 ? -0x40 : 0;
        stepY = dy > 0 ? 0x40 : dy < 0 ? -0x40 : 0;
        x = other->previousX;
        y = other->previousY;
        speed = other->field_23E;
        speed >>= other->field_353_4;
        count = speed / 64;
        while (count != 0) {
            x += stepX;
            y += stepY;
            if (stepX > 0) {
                if (x >= other->x) {
                    stepX = 0;
                }
            } else if (stepX < 0) {
                if (x <= other->x) {
                    stepX = 0;
                }
            }
            if (stepY > 0) {
                if (y >= other->y) {
                    stepY = 0;
                }
            } else if (stepY < 0) {
                if (y <= other->y) {
                    stepY = 0;
                }
            }
            ((s32(*)[2])field_23C)[other->field_358_4][0] = x;
            ((s32(*)[2])field_23C)[other->field_358_4][1] = y;
            other->field_358_4++;
            count--;
        }
        other->field_358_12 = 1;
        field_20B_3 = 0;
    } else {
        other->field_358_12 = 0;
    }
}

void FieldManager::sub_802E4C8(int arg) {
    FieldPlayerCharacter* player;
    FieldPlayerCharacter* other;
    int x;
    int y;
    u8 angle;

    if (brothersTogether) {
        return;
    }
    player = follower;
    other = leader;
    other->blocksBrothers = 0;
    other->field_20C_7 = 0;
    other->collidesWithBrothers = 0;
    player->blocksBrothers = 0;
    player->field_20C_7 = 0;
    player->collidesWithBrothers = 0;
    x = other->x;
    y = other->y;
    angle = (other->direction ^ 4) << 5;
    x += (s16)field_240 * word_8198504[angle] / 0x4000;
    y -= (s16)field_240 * word_8198584[angle] / 0x4000;
    if (brothersForm == BROTHERS_FORM_NORMAL) {
        field_208_0 = 1;
    } else {
        field_208_0 = 0;
    }
    if (!arg
        && (x >= player->x + 0x100 || x <= player->x - 0x100 || y >= player->y + 0x100
            || y <= player->y - 0x100)) {
        player->sub_8045A94(1, 0, x / 256, y / 256, 0, player->field_23E);
        player->field_2B6_7 = 1;
        player->field_2B6_6 = 1;
        other->field_350_14 = 1;
        fieldMode = FIELD_MODE_REGROUP;
    } else {
        player->x = player->previousX = x;
        player->y = player->previousY = y;
        player->z = player->previousZ = other->z;
        player->height = player->previousHeight = other->height;
        other->velocityX = 0;
        other->velocityY = 0;
        brothersTogether = 1;
        sub_802DF80(0);
    }
}

// Checks the collision cell just in front of the leader (cardinal directions only): floor type 3 for
// Mini Mario, 5 or 7 for Mole Luigi. The caller uses it to detect that the follower can't come along.
u8 FieldManager::sub_802E688(bool32 isMole) {
    FieldPlayerCharacter* player = leader;
    int direction = player->angle >> 5;

    if (!(direction & 1)) {
        s32 x = player->previousX;
        s32 y = player->previousY;
        struct Coldef* coldef;

        switch (direction) {
            case 0:
                y += 0x100;
                break;

            case 2:
                x -= player->field_278 / 2;
                break;

            case 4:
                y -= player->field_27C;
                break;

            case 6:
                x -= 0x100;
                x += player->field_278 / 2;
                break;
        }

        coldef = get_coldef_ptr_by_xz(field_304, x / 4096, y / 4096);

        if (!isMole) {
            if (coldef->floorType == 3) {
                return 1;
            }
        } else if (coldef->floorType == 5 || coldef->floorType == 7) {
            return 1;
        }
    }

    return 0;
}

void FieldManager::sub_802E754(u8 arg1, u8 arg2, u8 arg3) {
    if (brothersTogether) {
        if (brothersForm == BROTHERS_FORM_FIRE_DASH || brothersForm == BROTHERS_FORM_THUNDER_TICKLE
            || brothersForm == BROTHERS_FORM_SURFBOARD_LUIGI) {
            changeBrotherForm(BROTHERS_FORM_NORMAL, false);
        }

        brothersTogether = false;
        field_208_6 = arg1;
        field_208_7 = arg3;
        field_208_0 = 1;
        field_20B_1 = arg2;
        leader->collidesWithBrothers = leader->field_20C_7 = leader->blocksBrothers = 0;
        follower->collidesWithBrothers = follower->field_20C_7 = follower->blocksBrothers = 0;
        follower->sprite->speed = 16;
        follower->field_368->field_14 = follower->field_368->field_10[0];
        follower->field_368->field_10[0] = 0;

        sub_802DDB4(follower, 0, NULL);
    }
}

inline void FieldManager::sub_803C6C8(int mask) {
    if (mask & 1) {
        leader->sub_804FC90();
        sub_802DDB4(leader, 0, NULL);
    }
    if (mask & 2) {
        follower->sub_804FC90();
        sub_802DDB4(follower, brothersTogether, NULL);
    }
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802E854__12FieldManageri.s\"");
#else
void FieldManager::sub_802E854(int arg) {
    sub_803C6C8(1);
    leader->field_350_14 = 1;
    follower->field_350_14 = 1;
    leader->field_20C_14 = follower->field_20C_14 = 1;

    if (arg == 0) {
        leader->field_214_0 = 2;
        follower->field_214_0 = 2;
        leader->sub_8045A94(1, 0, follower->x / 256, follower->y / 256, arg, 0x200 >> isUnderwater);
        leader->field_2B6_6 = 1;
        leader->field_2B6_7 = 1;
        follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256, arg, 0x200 >> isUnderwater);
        follower->field_2B6_6 = 1;
        follower->field_2B6_7 = 1;
        field_209_1 = 1;
    } else {
        s32 x = leader->x;
        s32 y = leader->y;
        s32 z = leader->z;

        leader->sub_8047F60(follower->x, follower->y, follower->z, 1, 0);
        follower->sub_8047F60(x, y, z, 1, 0);
    }

    field_F8_7 = field_F8_6;
    if (field_F8_6 && field_FA_5 == luigiLeads) {
        field_F8_6 = 0;
        field_FA_5 ^= 1;
    }
    brothersTogether = false;
    field_208_6 = 1;
    field_209_0 = 1;
}
#endif

void FieldManager::sub_802EA70() {
    u16 trailIndex;

    luigiLeads ^= 1;
    field_209_0 = 0;
    brothersTogether = true;
    field_208_6 = 0;
    field_F8_6 = field_F8_7;
    MapEventInfo::instance->engineRegisters[30] = luigiLeads;
    MapEventInfo::instance->engineRegisters[32] = field_FA_5;
    leader = (FieldPlayerCharacter*)objects[luigiLeads];
    follower = (FieldPlayerCharacter*)objects[luigiLeads ^ 1];
    leader->field_368->actionButton = A_BUTTON;
    leader->field_368->switchButton = R_BUTTON;
    follower->field_368->actionButton = B_BUTTON;
    follower->field_368->switchButton = L_BUTTON;
    trailIndex = leader->field_358_4;
    leader->field_358_4 = follower->field_358_4;
    follower->field_358_4 = trailIndex;
    leader->field_352_7 = 1;
    follower->field_352_7 = 0;
    leader->field_2B6_6 = leader->field_2B6_7 = follower->field_2B6_6 = follower->field_2B6_7 = 0;
    leader->field_214_0 = 3;
    follower->field_214_0 = 3;
    leader->previousX = leader->x;
    leader->previousY = leader->y;
    follower->previousX = follower->x;
    follower->previousY = follower->y;
    leader->field_350_14 = 0;
    follower->field_350_14 = 0;
    sub_802DDB4(leader, 0, NULL);
    sub_802DDB4(follower, 1, NULL);
    field_E8 = field_EC = 0;
}

void FieldManager::sub_802EC64(int arg) {
    sub_803C6C8(1);
    leader->field_350_14 = 1;
    follower->field_350_14 = 1;

    if (field_2D8_0 == 31) {
        if (arg == 0) {
            FieldPlayerCharacter* player = follower;
            s32 top;
            int x;
            int y;

            if (player->field_238 != -1) {
                top = objects[player->field_238]->z + objects[player->field_238]->height;
            } else {
                top = player->z;
            }
            x = follower->x / 256 - 120;
            y = (follower->y - top) / 256;
            sub_8028AFC(1, 0, x, y - (follower->airFrames != -1 ? field_28D : field_28F), 0xC00);
        } else {
            int index = field_FA_5;

            sub_80284B0(index ^ 1, 0);
        }
        fieldMode = FIELD_MODE_4;
    } else {
        sub_8027030(2, arg == 0 ? 16 : 1, 0, 0xFFFF, 0xFFFF);
        leader->field_20C_11 = 0;
        leader->field_20C_14 = 0;
        field_F9_5 = 1;
        fieldMode = FIELD_MODE_17;
    }
}

u8 FieldManager::checkWarps(FieldPlayerCharacter* player, bool arg2, bool arg3, bool arg4) {
    if ((fieldMode == FIELD_MODE_FADE_IN || fieldMode == FIELD_MODE_NORMAL) && !field_F9_4
        && !field_F9_5 && player->field_2B5_0 == 0) {
        currentWarp = player->findWarp(warps, &field_2D0, &field_2D4, arg3, arg4);

        if (currentWarp != NULL) {
            player->field_353_6 = 1;
            if (!player->field_353_7 && arg2 && fieldMode == FIELD_MODE_NORMAL) {
                leader->sub_804FC90();
                follower->sub_804FC90();

                if (brothersTogether && player->sub_8047C18(player->otherBrother)) {
                    field_2B8_5 = 1;
                    field_26E = 60;
                }

                sub_8027030(2, 16, 0, 0xFFFF, 0xFFFF);
                leader->field_350_14 = 1;
                follower->field_350_14 = 1;
                fieldMode = FIELD_MODE_WARP;

                return true;
            }
        }
    }

    return false;
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802EF18__12FieldManager.s\"");
#else
// Only the stack slots of three spilled values differ.
void FieldManager::sub_802EF18() {
    int distance;
    int dx;
    int dy;
    int dz;

    if (brothersForm == BROTHERS_FORM_SURFBOARD_LUIGI && field_264 != 0) {
        return;
    }

    dz = 0;
    follower->field_20C_26 = leader->field_20C_26 = 0;
    if (brothersForm == BROTHERS_FORM_FIRE_DASH) {
        int step = 0x400 >> isUnderwater;
        int count;
        int i;

        distance = 0;
        count = 0;
        for (i = 0; i < 16; i++) {
            distance += step;
            if (++count == 4) {
                if (step > 0) {
                    step -= 0x100 >> isUnderwater;
                }
                count = 0;
            }
        }
        distance /= 256;
        field_20B_6 = 1;
        {
            FieldPlayerCharacter* second = follower;
            FieldPlayerCharacter* first = leader;
            int speed = 0x400 >> isUnderwater;

            first->field_23E = speed;
            second->field_23E = speed;
            first->field_260 = speed;
            second->field_260 = speed;
        }
    } else {
        if (leader->isMini) {
            distance = 32;
        } else if (leader->isPump) {
            distance = 16;
        } else if (leader->isMole) {
            distance = 16;
        } else if (leader->isBarrel) {
            distance = 16;
        } else {
            distance = byte_839FA34[brothersForm];
        }
        if (isUnderwater) {
            distance /= 2;
        }
        if (distance > 32) {
            distance = 32;
        }
    }

    switch (field_2B8_1) {
        case 0:
            dx = 0;
            dy = -distance;
            if (leader->field_26_2 == 3) {
                dz = dy;
            }
            break;
        case 4:
            dx = 0;
            dy = distance;
            if (leader->field_26_2 == 3) {
                dz = dy;
            }
            break;
        case 2:
            dx = distance;
            dy = 0;
            if (leader->field_26_2 == 1) {
                dz = distance;
            } else if (leader->field_26_2 == 2) {
                dz = -dx;
            }
            break;
        case 6:
            dx = -distance;
            dy = 0;
            if (leader->field_26_2 == 1) {
                dz = dx;
            } else if (leader->field_26_2 == 2) {
                dz = distance;
            }
            break;
    }

    leader->x -= dx << 8;
    leader->y -= dy << 8;
    leader->z -= dz << 8;
    if (brothersForm != BROTHERS_FORM_SURFBOARD_LUIGI) {
        leader->sub_804B360(1, 0);
    }
    leader->previousX = leader->x;
    leader->previousY = leader->y;
    leader->previousZ = leader->z;
    leader->previousHeight = leader->height;
    leader->field_26_2 = leader->field_26_4 = leader->field_4E_2 = leader->field_4E_4 = 0;
    if (brothersForm == BROTHERS_FORM_FIRE_DASH) {
        field_26E = 4;
        follower->state = leader->state = 0x71;
    } else {
        leader->field_20C_14 = 0;
        leader->sub_8045A94(2, 1, dx, dy, dz, 16);
    }

    if (brothersForm != BROTHERS_FORM_SURFBOARD_LUIGI) {
        if (brothersTogether) {
            follower->x -= dx << 8;
            follower->y -= dy << 8;
            follower->z -= dz << 8;
            follower->sub_804B360(1, 0);
            follower->previousX = follower->x;
            follower->previousY = follower->y;
            follower->previousZ = follower->z;
            follower->previousHeight = follower->height;
            follower->field_26_2 = follower->field_26_4 = follower->field_4E_2 = follower->field_4E_4 =
                0;
            if (brothersForm <= BROTHERS_FORM_BARREL_LUIGI) {
                follower->field_20C_14 = 0;
                follower->sub_8045A94(2, 1, dx, dy, dz, 16);
            }
        }
        sub_802DF80(0);
    }

    if (brothersForm == BROTHERS_FORM_NORMAL && isUnderwater && leader->height > 0) {
        if (leader->height < 0x100) {
            if (leader->field_20C_0) {
                leader->height = 0;
            }
            if (brothersTogether && follower->field_20C_0) {
                follower->height = 0;
            }
        } else {
            if (leader->field_20C_0) {
                leader->sub_8049000(leader->objectIndex == BROTHER_MARIO
                                        ? (leader->isMini ? SPRITE_ID(0, 60) : SPRITE_ID(0, 59))
                                        : SPRITE_ID(0, 82));
                leader->field_214_0 = 5;
            }
            if (brothersTogether && follower->field_20C_0) {
                follower->sub_8049000(follower->objectIndex == BROTHER_MARIO
                                          ? (follower->isMini ? SPRITE_ID(0, 60) : SPRITE_ID(0, 59))
                                          : SPRITE_ID(0, 82));
                follower->field_214_0 = 5;
            }
        }
    }

    if (field_2B8_5) {
        field_20A_7 = 2;
    }
}
#endif

void FieldManager::sub_802F498() {
    if (!field_2B8_4) {
        return;
    }

    leader->field_20C_11 = 0;
    leader->sub_80461B4(objects);
    leader->sub_80465D8();
    if (!field_2B8_5 && brothersTogether) {
        follower->field_20C_11 = 0;
        follower->sub_80461B4(objects);
        follower->sub_80465D8();
    }

    if (brothersTogether) {
        field_2B8_4 = follower->sub_8047B78();
        if (field_2B8_5 && --field_26E == 0) {
            field_2B8_5 = 0;
        }
    } else {
        field_2B8_4 = leader->sub_8047B78();
    }

    if (!field_2B8_4) {
        if (!isUnderwater) {
            leader->z += leader->height;
            leader->height = 0;
            leader->previousZ += leader->previousHeight;
            leader->previousHeight = 0;
        }
        leader->field_353_1 = 0;
        leader->field_20C_11 = 1;
        leader->field_20C_14 = 1;
        if (brothersTogether) {
            if (!isUnderwater) {
                follower->z += follower->height;
                follower->height = 0;
                follower->previousZ += follower->previousHeight;
                follower->previousHeight = 0;
            }
            follower->field_353_1 = 0;
            follower->field_20C_11 = 1;
            follower->field_20C_14 = 1;
            sub_802DF80(0);
        }
        follower->field_20C_26 = leader->field_20C_26 = 1;
        field_20A_7 = 0;
    } else {
        sub_802F6EC();
    }
}

void FieldManager::sub_802F6EC() {
    int x = leader->x / 256;
    int y = (leader->y - leader->z - leader->height) / 256;
    if (x < 0 || y < 0 || x >= field_286 || y >= field_288) {
        leader->field_353_1 = 1;
    } else {
        leader->field_20C_14 = isUnderwater ^ 1;
        leader->field_353_1 = 0;
    }

    if (brothersTogether) {
        x = follower->x / 256;
        //! \bug Uses the leader's height instead of the follower's.
        y = (follower->y - follower->z - leader->height) / 256;
        if (x < 0 || y < 0 || x >= field_286 || y >= field_288) {
            follower->field_353_1 = 1;
        } else {
            follower->field_20C_14 = isUnderwater ^ 1;
            follower->field_353_1 = 0;
        }
    }
}

inline u8 FieldManager::sub_803C66C(int index) {
    FieldPlayerCharacter* player = (FieldPlayerCharacter*)objects[index];
    PlayerAction* data = player->field_368;
    u8 value = data->field_10[!player->field_352_7];

    if (player->field_352_7 || !brothersTogether || data->actionMode == ACTION_MODE_MARIO_ON_BARREL) {
        value = byte_839F970[value];
    }
    return value;
}

inline void FieldManager::sub_803C638() {
    FieldPlayerCharacter* player = leader;

    if (player->state >= 5 && player->state <= 9) {
        player->sub_804FCD4();
    } else if (player->state >= 10 && player->state <= 12) {
        player->stopHandPower();
    }
}

inline void FieldManager::sub_803C610() {
    stop_sfx_80195A8(0x157);
    stop_sfx_80195A8(0x87);
    stop_sfx_80195A8(0xDB);
    stop_sfx_80195A8(0xDA);
    stop_sfx_80195A8(0xDA);
}

inline void FieldManager::sub_803C5F4(int arg) {
    field_208_3 = arg;
}

inline void FieldManager::sub_803C5A4() {
    leader->sub_80461B4(objects);
    follower->sub_80461B4(objects);
    if (!leader->sub_8047B78() && !follower->sub_8047B78()) {
        sub_802EA70();
        sub_802DF80(0);
    }
}

inline int FieldManager::sub_803C544() {
    return CommonEvent::getFlag(CommonEvent::instance->fieldEngineFlags, 0, 0x205) ? 3
           : CommonEvent::getFlag(CommonEvent::instance->fieldEngineFlags, 0, 0x204)
               ? 2
               : CommonEvent::getFlag(CommonEvent::instance->fieldEngineFlags, 0, 0x203) != 0;
}

inline void FieldManager::sub_803C538(int mode) {
    sub_802FAE4(mode, 1);
}

inline bool FieldManager::sub_803C508() {
    if (leader->state <= 12 && follower->state <= 12) {
        return false;
    }
    return true;
}

inline bool FieldManager::sub_803C4D8() {
    if ((leader->state >= 16 && leader->state <= 24) || (leader->state >= 29 && leader->state <= 33)) {
        return true;
    }
    return false;
}

inline bool FieldManager::sub_803C4A0() {
    if (leader->state == 39 || leader->state == 40) {
        return true;
    }
    field_20A_7 = 0;
    return false;
}

inline bool FieldManager::sub_803C468() {
    if (leader->state == 42 || leader->state == 43) {
        return true;
    }
    field_20A_7 = 0;
    return false;
}

void FieldManager::sub_802F834() {
    int level = sub_803C544();
    SpriteContext* context;

    if (level > 0) {
        level--;
        context = dword_3000D74;
        if ((context->field_C[0] & 0x1FF) == 1 && ((context->field_C[0] >> 9) & 0xF) == 0) {
            *(u16*)0x02000282 = word_839FA3C[gGameState.field_888_1][level];
            gGameState.field_0 |= 1;
        }
        if ((context->field_C[1] & 0x1FF) == 2 && ((context->field_C[1] >> 9) & 0xF) == 0) {
            *(u16*)0x020002A2 = word_839FA3C[gGameState.field_888_1][level];
            gGameState.field_0 |= 2;
        }
    }
}

void FieldManager::sub_802F938() {
    int i;

    if (fieldMode == FIELD_MODE_NONE) {
        return;
    }

    for (i = 2; i < objectCount; i++) {
        objects[i]->sub_80418E8(objects);
    }
    sub_802563C();
    sub_8025ACC();
    for (i = 0; i < 2; i++) {
        objects[i]->sub_80418E8(objects);
    }

    if (field_209_5) {
        sub_802DA10();
    } else {
        switch (leader->field_368->actionMode) {
            case ACTION_MODE_HIGH_JUMP:
                sub_80306A0();
                break;
            case ACTION_MODE_SPIN_JUMP:
                sub_8032A90();
                break;
            case ACTION_MODE_PUMP_MARIO:
                sub_8031768();
                break;
            case ACTION_MODE_MOLE_LUIGI:
            case ACTION_MODE_7:
                sub_8033F5C();
                break;
            case ACTION_MODE_BARREL_LUIGI:
                sub_8034BF4();
                break;
            case ACTION_MODE_MARIO_ON_BARREL:
                sub_80350B4();
                break;
            case ACTION_MODE_MINI_MARIO:
                sub_8035DB0();
                break;
            case ACTION_MODE_FIRE_DASH:
                sub_8036F84();
                break;
            case ACTION_MODE_THUNDER_TICKLE:
                sub_80382CC();
                break;
            case ACTION_MODE_14:
            case ACTION_MODE_15:
                sub_8039250();
                break;
            case ACTION_MODE_FIRE_DASH_LUIGI_ANGRY:
            case ACTION_MODE_THUNDER_TICKLE_MARIO_ANGRY:
                sub_8039C9C();
                break;
            case ACTION_MODE_18:
            case ACTION_MODE_SURFBOARD_LUIGI:
                sub_803AFCC();
                break;
        }
    }

    if ((fieldMode == FIELD_MODE_NONE || fieldMode == FIELD_MODE_FADE_IN
         || fieldMode == FIELD_MODE_NORMAL)
        && !field_F9_4 && !field_F9_5) {
        sub_802B804(leader, false);
        sub_802B804(follower, false);
    } else {
        leader->sub_804FC90();
        follower->sub_804FC90();
    }
}

void FieldManager::sub_802FAE4(int mode, int arg2) {
    if (mode == 1) {
        if (brothersForm != BROTHERS_FORM_MINI_MARIO) {
            return;
        }
        field_20A_1 = 1;
        leader->field_350_14 = 1;
        follower->field_350_14 = 1;
        if (follower->state > 100) {
            return;
        }
        if (arg2 && sub_802DC0C(follower)) {
            follower->x = leader->x;
            follower->y = leader->y;
            follower->z = leader->z;
            follower->height = leader->height;
            follower->previousX = leader->previousX;
            follower->previousY = leader->previousY;
            follower->previousZ = leader->previousZ;
            follower->previousHeight = leader->previousHeight;
        }
        sub_8035974();
        return;
    }

    if (brothersForm == BROTHERS_FORM_MINI_MARIO) {
        return;
    }
    if (leader->field_368->actionMode <= ACTION_MODE_INTERACT) {
        return;
    }
    field_20A_1 = 1;
    leader->field_350_14 = 1;
    follower->field_350_14 = 1;

    switch (brothersForm) {
        case BROTHERS_FORM_NORMAL:
            break;
        case BROTHERS_FORM_PUMP_MARIO:
            if (!leader->field_358_3) {
                sub_8031650(leader);
            }
            break;
        case BROTHERS_FORM_MOLE_LUIGI: {
            FieldPlayerCharacter* mario;

            if (arg2 && sub_802DC0C(follower)) {
                follower->x = leader->x;
                follower->y = leader->y;
                follower->z = leader->z;
                follower->height = leader->height;
                follower->previousX = leader->previousX;
                follower->previousY = leader->previousY;
                follower->previousZ = leader->previousZ;
                follower->previousHeight = leader->previousHeight;
            }
            if (!(objects[1]->state >= 64 && objects[1]->state <= 69)
                && !(objects[1]->state >= 59 && objects[1]->state <= 61)) {
                digOutOfGround((FieldPlayerCharacter*)objects[1]);
            }
            mario = (FieldPlayerCharacter*)objects[0];
            if (mario->field_20C_0) {
                if (mario->state >= 5 && mario->state <= 9) {
                    mario->sub_804FCD4();
                } else if (mario->state >= 10 && mario->state <= 12) {
                    mario->stopHandPower();
                }
            }
            break;
        }
        case BROTHERS_FORM_BARREL_LUIGI:
            if (leader->state >= 73 && leader->state <= 75) {
                break;
            }
            if (leader->field_368->actionMode == ACTION_MODE_MARIO_ON_BARREL) {
                sub_8034FE8();
            } else {
                breakOutOfBarrel((FieldPlayerCharacter*)objects[1]);
            }
            break;
        case 5:
        case 6:
            stop_sfx_80195A8(0x157);
            stop_sfx_80195A8(0x87);
            stop_sfx_80195A8(0xDB);
            stop_sfx_80195A8(0xDA);
            stop_sfx_80195A8(0xDA);
            break;
    }
}

void FieldManager::sub_802FD70() {
    u32 i;
    int floor;
    int ceiling;
    int top;
    u8 mask;

    if (leader->field_358_3) {
        return;
    }

    if (leader->sub_8047C18(follower) || leader->field_26_2 || follower->field_26_2) {
        follower->field_368->field_16_0 |= 0x60;
    }
    if (leader->sub_8047C18(follower) && leader->z + leader->height != follower->z + follower->height) {
        follower->field_368->field_16_0 |= 0x10;
    }
    if (leader->objectIndex == BROTHER_LUIGI && (s8)leader->field_1 != -1) {
        follower->field_368->field_16_0 |= 0x20;
    }
    if (leader->sub_804D0EC()) {
        follower->field_368->field_16_0 |= 0x20;
    }

    if (!leader->isMole) {
        if (leader->direction != follower->direction) {
            follower->field_368->field_16_0 |= 0x60;
        } else {
            switch (leader->direction) {
                case 0:
                    if ((leader->x & ~0xFF) != (follower->x & ~0xFF)
                        || (leader->y & ~0xFF) + 0x1000 > (follower->y & ~0xFF)) {
                        follower->field_368->field_16_0 |= 0x60;
                    }
                    break;
                case 1:
                    if ((leader->x & ~0xFF) - 0xC00 < (follower->x & ~0xFF)
                        || (leader->y & ~0xFF) + 0xC00 > (follower->y & ~0xFF)) {
                        follower->field_368->field_16_0 |= 0x60;
                    }
                    break;
                case 2:
                    if ((leader->y & ~0xFF) != (follower->y & ~0xFF)
                        || (leader->x & ~0xFF) - 0x1000 < (follower->x & ~0xFF)) {
                        follower->field_368->field_16_0 |= 0x60;
                    }
                    break;
                case 3:
                    if ((leader->x & ~0xFF) - 0xC00 < (follower->x & ~0xFF)
                        || (leader->y & ~0xFF) - 0xC00 < (follower->y & ~0xFF)) {
                        follower->field_368->field_16_0 |= 0x60;
                    }
                    break;
                case 4:
                    if ((leader->x & ~0xFF) != (follower->x & ~0xFF)
                        || (leader->y & ~0xFF) - 0x1000 < (follower->y & ~0xFF)) {
                        follower->field_368->field_16_0 |= 0x60;
                    }
                    break;
                case 5:
                    if ((leader->x & ~0xFF) + 0xC00 > (follower->x & ~0xFF)
                        || (leader->y & ~0xFF) - 0xC00 < (follower->y & ~0xFF)) {
                        follower->field_368->field_16_0 |= 0x60;
                    }
                    break;
                case 6:
                    if ((leader->y & ~0xFF) != (follower->y & ~0xFF)
                        || (leader->x & ~0xFF) + 0x1000 > (follower->x & ~0xFF)) {
                        follower->field_368->field_16_0 |= 0x60;
                    }
                    break;
                case 7:
                    if ((leader->x & ~0xFF) + 0xC00 > (follower->x & ~0xFF)
                        || (leader->y & ~0xFF) + 0xC00 > (follower->y & ~0xFF)) {
                        follower->field_368->field_16_0 |= 0x60;
                    }
                    break;
            }
        }
    }

    for (i = 0; i < 4; i++) {
        Coldef* coldef =
            sub_803FBA4(field_304, leader->x + word_839FA48[i * 2], leader->y + word_839FA48[i * 2 + 1],
                        &floor, &ceiling, &top, 0, leader->field_20C_11);

        if (leader->z == floor) {
            if (coldef->primaryShape > 3) {
                follower->field_368->field_16_0 |= 0x60;
            }
            if (brothersForm == BROTHERS_FORM_NORMAL && leader->objectIndex == BROTHER_LUIGI
                && coldef->primaryShape == 1 && coldef->floorType == 1) {
                follower->field_368->field_16_0 |= 0x20;
            }
        } else if (leader->z == top) {
            if (coldef->secondaryShape >= 4 && coldef->secondaryShape <= 6) {
                follower->field_368->field_16_0 |= 0x60;
            }
            if (brothersForm == BROTHERS_FORM_NORMAL && leader->objectIndex == BROTHER_LUIGI
                && coldef->floorType == 1 && coldef->secondaryShape == 1) {
                follower->field_368->field_16_0 |= 0x20;
            }
        } else if (brothersForm == BROTHERS_FORM_NORMAL && leader->objectIndex == BROTHER_LUIGI) {
            follower->field_368->field_16_0 |= 0x20;
        }
    }

    if (field_2B8_4) {
        leader->field_368->field_16_7 = 0;
        follower->field_368->field_16_7 = 0;
        return;
    }

    mask = byte_839F930[leader->field_368->selectedAction * 2];
    leader->field_368->field_16_7 = 0;
    if (mask & leader->field_368->field_16_0) {
        if (!leader->field_368->field_17_7) {
            sub_8018218(field_1C->field_0[4]->field_8 + 0x1100,
                        (void*)(leader->objectIndex * 0x400 + 0x6010FC0), 0x80, 0x20, 0);
        }
        leader->field_368->field_16_7 = 1;
    }

    mask = byte_839F930[follower->field_368->selectedAction * 2 + brothersTogether];
    follower->field_368->field_16_7 = 0;
    if (mask & follower->field_368->field_16_0) {
        if (!follower->field_368->field_17_7) {
            sub_8018218(field_1C->field_0[4]->field_8 + 0x1100,
                        (void*)(follower->objectIndex * 0x400 + 0x6010FC0), 0x80, 0x20, 0);
        }
        follower->field_368->field_16_7 = 1;
    }
}

void FieldManager::sub_80303C4(FieldPlayerCharacter* player) {
    int start;

    if (field_10E && player->field_352_7) {
        start = field_10E;
    } else if (field_110) {
        start = field_110;
    } else {
        start = 0;
    }
    if (start > 0) {
        player->method12(&objects[start], objectCount - start, 0);
    }

    if (field_114) {
        start = field_114;
    } else if (field_116) {
        start = field_116;
    } else if (field_11A) {
        start = field_11A;
    } else {
        start = 0;
    }
    if (start > 0) {
        player->method12(&objects[start], objectCount - start, 0);
    }
}

void FieldManager::sub_8030484() {
    int height;
    int jumpHeight;

    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    field_246_1 = 0;
    field_248 = follower->x / 256;
    field_24A = follower->y / 256;
    follower->x &= ~0xFF;
    follower->y &= ~0xFF;
    follower->previousX = follower->x;
    follower->previousY = follower->y;
    if (follower->x >= leader->x - 0x400 && follower->x <= leader->x + 0x400
        && follower->y >= leader->y - 0x400 && follower->y <= leader->y + 0x400) {
        follower->x = leader->x;
        follower->y = leader->y;
    }

    follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_HIGH_JUMP;
    follower->state = leader->state = 16;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;

    height = 0x20;
    if (leader->z > follower->z && (leader->field_26_4 & follower->field_26_4)) {
        height = leader->z - follower->z + 0x20;
    }
    jumpHeight = (leader->z + leader->height - (follower->z + follower->height)) / 256 + 0x20;
    if (jumpHeight > height) {
        jumpHeight = height;
    }
    follower->jumpToHeight(jumpHeight, 0xEE >> isUnderwater, (s16)walkSpeed);
    follower->sub_8045A94(2, 0, leader->x / 256, leader->y / 256, 0, isUnderwater ? 14 : 8);
    field_20B_7 = 1;
    play_sfx_80195B4(0x2B, -1);
}

void FieldManager::sub_80306A0() {
    s32 offset;
    int x;
    int y;
    int dy;
    u16 speed;
    bool callSub_802DF80;

    switch (follower->state) {
        case 16:
        case 17:
        case 18:
        case 19:
        case 23:
        case 24:
        case 27:
        case 28:
            follower->updateAirborne();
            follower->sub_80461B4(objects);
            if (field_20A_1) {
                follower->updateAirborne();
                follower->sub_80461B4(objects);
            }
            break;
        case 20:
        case 21:
        case 22:
            offset = byte_839F630[(s8)field_250] << 8;
            follower->z = leader->z;
            follower->height = leader->height + offset - 0x400;
            leader->sprite->yScale = offset / 32;
            break;
        case 25:
        case 26:
            sub_802C068(input);
            sub_804FE68(leader, objects);
            break;
    }

    sub_80303C4(leader);
    leader->sub_80465D8();
    leader->method13();
    leader->sub_804FB64(objects, 0, 0);
    if (follower->state >= 25 && follower->state <= 26) {
        follower->field_26_1 = leader->field_26_1;
        follower->angle = leader->angle;
        follower->x = leader->x;
        follower->y = leader->y;
        follower->z = leader->z;
        follower->height = leader->height + 0x1C00;
        follower->field_230 = leader->field_230;
        follower->field_234 = leader->field_234;
    } else {
        sub_80303C4(follower);
        follower->sub_80465D8();
        follower->method13();
        follower->sub_804FB64(objects, 0, 0);
    }

    switch (follower->state) {
        case 16:
            if (follower->velocityZ < 0) {
                if ((follower->field_24_7 & 1) || (follower->field_24_15 & 1)) {
                    follower->state = leader->state = 19;
                    speed = follower->field_2DE;
                    follower->sub_8046980();
                    follower->sub_8045A94(2, 0, field_248, field_24A, 0, speed);
                    follower->field_214_0 = 2;
                } else {
                    follower->state = leader->state = 17;
                }
            }
            if (follower->state == 19) {
                break;
            }
            if (!follower->field_24_3 && !follower->field_24_11) {
                break;
            }
            follower->state = leader->state = 18;
            follower->sub_8046980();
            break;
        case 17:
            if (follower->sub_8047B78()) {
                break;
            }
            if (!follower->sub_804D18C()) {
                follower->state = leader->state = 20;
            } else {
                follower->state = leader->state = 22;
            }
            leader->field_23B = -1;
            follower->field_20C_15 = 0;
            field_250 = 0;
            follower->angle = leader->angle;
            follower->direction = leader->direction;
            follower->field_26_1 = leader->field_26_1;
            follower->x = leader->x;
            follower->y = leader->y;
            break;
        case 20:
            if (field_20A_1 || sub_8025D24(0) || (follower->field_24_7 & 1)
                || (follower->field_24_15 & 1)) {
                follower->state = leader->state = 22;
            } else if (sub_8025D24(1)) {
                if (field_250 >= 4 && field_250 <= 21) {
                    follower->height = leader->height + 0x1C00;
                    leader->sprite->yScale = 0x100;
                    leader->field_23B = 0;
                    follower->field_350_14 = leader->field_350_14 = 0;
                    leader->x &= ~0xFF;
                    leader->y &= ~0xFF;
                    leader->previousX = leader->x;
                    leader->previousY = leader->y;
                    if (isUnderwater) {
                        leader->startAirborne(1000, 32, -1);
                        leader->field_23E = 0x80;
                    } else {
                        leader->startAirborne(0x75E, 117, -1);
                        leader->field_23E = 0x100;
                    }
                    leader->field_274 = leader->field_274 + follower->field_274 - 0x800;
                    leader->field_27A = leader->field_27A + follower->field_27A - 0x800;
                    leader->sprite->xScale = 0x100;
                    follower->state = leader->state = 25;
                    play_sfx_80195B4(0xAC, -1);
                } else {
                    follower->state = leader->state = 21;
                }
            }
            // fallthrough
        case 21:
        case 22:
            if (++field_250 != 25) {
                break;
            }
            if (follower->state == 22) {
                follower->jumpToHeight(4, 0xEE >> isUnderwater, (s16)walkSpeed);
                follower->sub_8045A94(2, 0, field_248, field_24A, 0, isUnderwater ? 16 : 10);
                leader->field_23B = 0;
                follower->field_20C_15 = 1;
                follower->field_214_0 = 2;
                follower->state = leader->state = 27;
            } else {
                if (isUnderwater) {
                    follower->startAirborne(0x387, 53, -1);
                } else {
                    follower->startAirborne(0x52C, 117, -1);
                }
                follower->state = leader->state = 23;
            }
            play_sfx_80195B4(0x2B, -1);
            break;
        case 23:
            if (follower->velocityZ > 0) {
                break;
            }
            follower->state = leader->state = 24;
            break;
        case 24:
            if (follower->height > leader->height + 0x1C00) {
                break;
            }
            follower->state = leader->state = 20;
            field_250 = 0;
            break;
        case 25:
            if ((follower->field_24_7 & 1) || (follower->field_24_15 & 1)) {
                leader->height = follower->height - 0x1C00;
                leader->velocityZ = -leader->velocityZ;
            }
            if (leader->velocityZ < 0) {
                follower->state = leader->state = 26;
            }
            // fallthrough
        case 26:
            if (leader->airFrames != -1) {
                break;
            }
            if ((s8)leader->field_1 != -1
                && objects[(s8)leader->field_1]->type == FIELD_OBJECT_TYPE_FMON) {
                break;
            }
            leader->x &= ~0xFF;
            leader->y &= ~0xFF;
            follower->x &= ~0xFF;
            follower->y &= ~0xFF;
            x = follower->x / 256 + word_839F584[follower->direction ^ 4][0] / 16;
            dy = word_839F584[0][(follower->direction ^ 4) * 2 + 1];
            y = follower->y / 256 + (leader->field_353_4 ? dy / 32 : dy / 16);
            follower->field_350_14 = leader->field_350_14 = 1;
            follower->velocityX = follower->velocityY = 0;
            leader->velocityX = leader->velocityY = 0;
            leader->field_23E = walkSpeed;
            follower->jumpToHeight(4, 0xEE >> isUnderwater, (s16)walkSpeed);
            follower->sub_8045A94(2, 0, x, y, 0, isUnderwater ? 14 : 8);
            follower->field_20C_15 = 1;
            follower->field_214_0 = 2;
            leader->field_274 = leader->field_274 - follower->field_274 + 0x800;
            leader->field_27A = leader->field_27A - follower->field_27A + 0x800;
            follower->field_238 = leader->field_238;
            follower->state = leader->state = 27;
            play_sfx_80195B4(0x2B, -1);
            break;
        case 18:
            if (follower->velocityZ < 0) {
                follower->sub_8046980();
                follower->sub_8045A94(2, 0, field_248, field_24A, 0, isUnderwater ? 14 : 8);
                follower->field_214_0 = 2;
            }
            // fallthrough
        case 27:
            if (follower->velocityZ < 0) {
                follower->state++;
                leader->state++;
            }
            // fallthrough
        case 19:
        case 28:
            if (!field_246_1 && follower->sub_8047C18(leader)) {
                follower->x = follower->previousX & ~0xFF;
                follower->y = follower->previousY & ~0xFF;
                follower->height += follower->z;
                follower->z = follower->previousZ;
                follower->height -= follower->z;
                follower->sub_8046980();
                follower->field_238 = follower->field_354;
                field_246_1 = 1;
            }
            if (follower->airFrames != -1) {
                break;
            }
            callSub_802DF80 = false;
            if (follower->state == 28) {
                callSub_802DF80 = true;
            }
            follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_NORMAL;
            follower->state = leader->state = 0;
            follower->field_358_3 = leader->field_358_3 = 0;
            follower->field_350_14 = leader->field_350_14 = 0;
            follower->field_214_0 = 3;
            follower->sub_8046980();
            follower->angle = follower->direction << 5;
            field_20B_7 = 0;
            if (callSub_802DF80) {
                sub_802DF80(0);
            }
            break;
    }
}

void FieldManager::sub_8031234() {
    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    field_246_1 = 0;
    field_248 = follower->x / 256;
    field_24A = follower->y / 256;
    follower->state = leader->state = 46;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->jumpToHeight((leader->z - follower->z) / 256 + 0x20, 0xEE >> isUnderwater,
                           (s16)walkSpeed);
    follower->sub_8045A94(2, 0, leader->x / 256, leader->y / 256, 0, isUnderwater ? 16 : 10);
    leader->field_239 = leader->sprite->speed = follower->field_239 = follower->sprite->speed =
        field_FA_11;
    field_20B_7 = 1;
    play_sfx_80195B4(0x2B, -1); // Jump sound.
}

void FieldManager::sub_80313C0() {
    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    follower->field_212_6 = 1;
    follower->state = leader->state = 55;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->field_20C_13 = 1;
    follower->field_35A_1 = 0;
    follower->field_214_0 = 4;
    follower->sub_8049000(SPRITE_ID(0, 63)); // Luigi swinging his hammer.
    follower->jumpToHeight(16, 0xEE >> isUnderwater, (s16)walkSpeed);
    leader->field_239 = leader->sprite->speed = follower->field_239 = follower->sprite->speed =
        field_FA_11;
    follower->sprite->animationEndAction = ANIMATION_END_STOP;
    field_20B_7 = 1;
    play_sfx_80195B4(0x3C, -1); // Hammer sound.
}

void FieldManager::sub_8031518() {
    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    follower->state = leader->state = 58;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->field_214_0 = 4;
    follower->sub_8049000(SPRITE_ID(0, 65)); // Luigi pushing.
    leader->field_214_0 = 4;
    leader->sub_8049000(SPRITE_ID(0, 48)); // Pump mario spitting out.
    leader->field_239 = leader->sprite->speed = follower->field_239 = follower->sprite->speed =
        field_FA_11;
    shotBullets[0]->sub_804E0D8(4, leader, 0);
    field_26E = 70;
    field_20B_7 = 1;
    play_sfx_80195B4(0x56, -1);
}

void FieldManager::sub_8031650(FieldPlayerCharacter* player) {
    sub_802C4D4(1, 1);
    player->state = 58;
    player->field_350_14 = 1;
    player->field_23B = 0;
    player->field_214_0 = 4;
    player->sub_8049000(SPRITE_ID(0, 48));
    player->field_239 = player->sprite->speed = field_FA_11;
    shotBullets[0]->sub_804E0D8(4, leader, 0);
    player->field_355 = 70;
    field_20B_7 = 1;
    play_sfx_80195B4(0x56, -1);
}

// Unreferenced.
int FieldManager::sub_80316FC() {
    int i;

    for (i = 0; i < 8; i++) {
        if (shotBullets[i]->active) {
            if (shotBullets[i]->type == FIELD_PLAYER_SHOT_BULLET_JET) {
                return 2;
            }
            return shotBullets[i]->type == FIELD_PLAYER_SHOT_BULLET_BUBBLE ? 3 : 4;
        }
    }
    return brothersForm == BROTHERS_FORM_PUMP_MARIO;
}

static inline void setBrothersSpeed(FieldPlayerCharacter* leader, FieldPlayerCharacter* follower,
                                    const u16& speed) {
    leader->field_23E = speed;
    follower->field_23E = speed;
    leader->field_260 = speed;
    follower->field_260 = speed;
}

static inline void setBrothersSpeeds(FieldPlayerCharacter* leader, FieldPlayerCharacter* follower,
                                     const u16& speed) {
    leader->field_240 = speed;
    follower->field_240 = speed;
    setBrothersSpeed(leader, follower, speed);
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8031768__12FieldManager.s\"");
#else
// Squashes the leader and lifts the follower on top of him by step field_250 (sub_8031768).
static inline void sub_8031768_squash(FieldManager* field) {
    s32 offset = word_839FA78[(8 - (s8)field->field_250) * 2] << 8;

    field->follower->height = offset - 0x400;
    field->leader->sprite->yScale = offset >> 5;
    field->leader->sprite->xScale = word_839FA78[(8 - (s8)field->field_250) * 2 + 1];
}

void FieldManager::sub_8031768() {
    bool callSub_802DF80;

    if (follower->state == 58) {
        if (--field_26E != 0) {
            return;
        }
        follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_NORMAL;
        follower->state = leader->state = 0;
        {
            FieldPlayerCharacter* f = follower;
            FieldPlayerCharacter* l = leader;

            f->field_23E = l->field_23E = walkSpeed;
            f->field_260 = l->field_260 = walkSpeed;
        }
        follower->field_358_3 = leader->field_358_3 = 0;
        follower->field_350_14 = leader->field_350_14 = 0;
        leader->isPump = 0;
        brothersForm = BROTHERS_FORM_NORMAL;
        field_208_0 = 1;
        field_20B_7 = 0;
        follower->field_214_0 = 3;
        follower->sub_8049000(SPRITE_ID(0, 2));
        leader->field_214_0 = 3;
        leader->sub_8049000(SPRITE_ID(0, 1));
        leader->field_368->field_10[0] = leader->field_368->field_12;
        leader->field_368->field_12 = -1;
        sub_802DDB4(leader, 0, 0);
        shotBullets[0]->sub_804FAF8();
        sub_802DF80(0);
        return;
    }

    if (follower->state >= 55 && follower->state <= 57) {
        leader->sub_80465D8();
        switch (follower->state) {
            case 55:
                follower->updateAirborne();
                if (field_20A_1) {
                    follower->updateAirborne();
                }
                if (!field_209_6 && follower->z + follower->height < leader->z + leader->height) {
                    follower->height = leader->z + leader->height - follower->z;
                }
                if (follower->sprite->frameTicksLeft <= field_FA_11) {
                    leader->sprite->yScale = word_839FA58[follower->sprite->frame];
                    if (follower->sprite->frame == 4) {
                        shotBulletIndex--;
                        shotBullets[shotBulletIndex]->sub_804E0D8(3, leader, 0);
                        play_sfx_80195B4(0x57, -1);
                    }
                }
                if (!follower->sprite->animationComplete) {
                    break;
                }
                field_26E = 20;
                sprite_set_animation(follower->sprite, follower->sprite->field_21 + 5, 0, NULL, 0);
                follower->state = leader->state = 56;
                break;
            case 56:
                field_26E -= 1 << field_20A_1;
                if (field_26E > 0) {
                    break;
                }
                field_26E = 0;
                leader->sprite->yScale = 0x100;
                follower->field_214_0 = 3;
                follower->sub_8049000(SPRITE_ID(0, 2));
                if (!field_209_6) {
                    follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256, leader->z / 256,
                                          walkSpeed);
                }
                follower->state = leader->state = 57;
                follower->field_212_6 = 0;
                if (shotBulletIndex != 0) {
                    break;
                }
                leader->sub_8049000(SPRITE_ID(0, 1));
                leader->sprite->yScale = 0x100;
                break;
            case 57:
                if ((!sub_802DC0C(follower) && follower->height == 0) || !follower->sub_8047B78()) {
                    if (follower->sub_8047B78() == true) {
                        follower->x &= ~0xFF;
                        follower->y &= ~0xFF;
                    }
                    follower->sub_8046980();
                    follower->state = leader->state = 0;
                    follower->field_358_3 = leader->field_358_3 = 0;
                    follower->field_350_14 = leader->field_350_14 = 0;
                    follower->field_20C_13 = 0;
                    follower->field_20C_14 = 1;
                    follower->field_35A_1 = 0;
                    sub_802DF80(0);
                    field_20B_7 = 0;
                    if (shotBulletIndex == 0) {
                        follower->field_368->actionMode = leader->field_368->actionMode =
                            ACTION_MODE_NORMAL;
                        setBrothersSpeeds(leader, follower, walkSpeed);
                        leader->isPump = 0;
                        leader->field_368->field_10[0] = leader->field_368->field_12;
                        leader->field_368->field_12 = -1;
                        sub_802DDB4(leader, 0, 0);
                        field_208_0 = 1;
                        brothersForm = BROTHERS_FORM_NORMAL;
                    } else if (field_20A_1) {
                        sub_8031650(leader);
                    }
                } else {
                    follower->sub_80461B4(objects);
                    follower->sub_80465D8();
                    follower->sub_804FB64(objects, 0, 0);
                }
                break;
        }
        return;
    }

    switch (follower->state) {
        case 46:
        case 47:
        case 48:
        case 49:
        case 53:
        case 54:
            follower->updateAirborne();
            follower->sub_80461B4(objects);
            if (field_20A_1) {
                follower->updateAirborne();
                follower->sub_80461B4(objects);
            }
            break;
        case 50:
            field_250--;
            field_26E--;
            if ((s8)field_250 >= 0) {
                sub_8031768_squash(this);
            }
            break;
        case 51:
            field_26E--;
            break;
        case 52:
            field_250++;
            sub_8031768_squash(this);
            break;
    }

    sub_80303C4(leader);
    leader->sub_80465D8();
    leader->method13();
    leader->sub_804FB64(objects, 0, 0);
    sub_80303C4(follower);
    follower->sub_80465D8();
    follower->method13();
    follower->sub_804FB64(objects, 0, 0);

    switch (follower->state) {
        case 46:
            if (follower->velocityZ < 0) {
                if ((follower->field_24_7 & 1) || (follower->field_24_15 & 1)) {
                    u16 speed;

                    follower->state = leader->state = 49;
                    speed = follower->field_2DE;
                    follower->sub_8046980();
                    follower->sub_8045A94(2, 0, field_248, field_24A, 0, speed);
                    follower->field_214_0 = 2;
                } else {
                    follower->state = leader->state = 47;
                }
            }
            if (follower->state == 49) {
                break;
            }
            if (!follower->field_24_3 && !follower->field_24_11) {
                break;
            }
            follower->state = leader->state = 48;
            follower->sub_8046980();
            break;
        case 47:
            if (follower->sub_8047B78()) {
                break;
            }
            follower->state = leader->state = 50;
            field_250 = 8;
            follower->angle = leader->angle;
            follower->direction = leader->direction;
            field_272 = 4;
            break;
        case 50:
            if (--field_272 == 0) {
                play_sfx_80195B4(0x56, -1);
            }
            if ((s8)field_250 >= 0) {
                break;
            }
            follower->state = leader->state = 51;
            shotBulletIndex = 0;
            field_26E = 60;
            break;
        case 51:
            if (field_26E < 0) {
                field_208_0 = 1;
                leader->sub_8049000(SPRITE_ID(0, 1));
                leader->field_218 = SPRITE_ID(0, 1);
                leader->field_214_7 = 0;
                leader->field_214_6 = 0;
                follower->state = leader->state = 52;
            } else {
                shotBullets[shotBulletIndex]->sub_804E0D8(2, leader, field_26E / 4);
                shotBulletIndex++;
            }
            break;
        case 52:
            if ((s8)field_250 != 8) {
                break;
            }
            follower->jumpToHeight(4, 0xEE >> isUnderwater, (s16)walkSpeed);
            follower->sub_8045A94(2, 0, field_248, field_24A, 0, isUnderwater ? 16 : 10);
            follower->field_214_0 = 2;
            follower->state = leader->state = 53;
            break;
        case 48:
            if (follower->velocityZ < 0) {
                follower->sub_8046980();
                follower->sub_8045A94(2, 0, field_248, field_24A, 0, isUnderwater ? 14 : 8);
                follower->field_214_0 = 2;
            }
            // fallthrough
        case 53:
            if (follower->velocityZ < 0) {
                follower->state++;
                leader->state++;
            }
            // fallthrough
        case 49:
        case 54:
            if (!field_246_1 && follower->sub_8047C18(leader)) {
                follower->x = follower->previousX;
                follower->y = follower->previousY;
                follower->z = follower->previousZ;
                follower->height = follower->previousHeight;
                follower->sub_8046980();
                field_246_1 = 1;
            }
            if (follower->airFrames != -1) {
                break;
            }
            if (follower->state == 54) {
                follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_NORMAL;
                {
                    FieldPlayerCharacter* f = follower;
                    FieldPlayerCharacter* l = leader;

                    f->field_23E = l->field_23E = walkSpeed;
                    f->field_260 = l->field_260 = walkSpeed;
                }
                leader->isPump = 0;
                leader->field_368->field_10[0] = leader->field_368->field_12;
                leader->field_368->field_12 = -1;
                sub_802DDB4(leader, 0, 0);
                shotBulletIndex = 0;
                brothersForm = BROTHERS_FORM_NORMAL;
                callSub_802DF80 = true;
            } else {
                callSub_802DF80 = false;
            }
            follower->state = leader->state = 0;
            follower->field_358_3 = leader->field_358_3 = 0;
            follower->field_350_14 = leader->field_350_14 = 0;
            follower->field_214_0 = 3;
            follower->sub_8046980();
            follower->angle = follower->direction << 5;
            field_20B_7 = 0;
            if (callSub_802DF80) {
                sub_802DF80(0);
            }
            if (field_20A_1) {
                sub_8031650(leader);
            }
            break;
    }
}
#endif

void FieldManager::sub_8032514() {
    int height;
    int jumpHeight;

    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    field_246_1 = 0;
    field_248 = follower->x / 256;
    field_24A = follower->y / 256;
    follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_SPIN_JUMP;
    follower->state = leader->state = 29;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    field_258 = 0;
    field_246_5 = leader->direction;

    height = 0x24;
    if (leader->z + leader->height > follower->z + follower->height
        && (leader->field_26_4 & follower->field_26_4)) {
        height = leader->z - follower->z + 0x24;
    }
    jumpHeight = (leader->z + leader->height - (follower->z + follower->height)) / 256 + 0x24;
    if (jumpHeight > height) {
        jumpHeight = height;
    }
    follower->jumpToHeight(jumpHeight, 0xEE >> isUnderwater, (s16)walkSpeed);
    follower->sub_8045A94(2, 0, leader->x / 256, leader->y / 256, 0, isUnderwater ? 14 : 8);
    field_20B_7 = 1;
    play_sfx_80195B4(0x2B, -1);
}

void FieldManager::sub_80326F4() {
    int height;
    int otherHeight;
    FieldObject* other;
    FieldObject* target;

    if (leader->state != 35 && leader->state != 41) {
        return;
    }
    height = (leader->z + leader->height) / 256;
    other = objects[(s8)(leader->field_33C_0 << 1) >> 1];
    otherHeight = (other->z + other->height) / 256;
    if (height + 8 < otherHeight || height - 8 > otherHeight) {
        return;
    }
    follower->state = leader->state = 39;
    follower->field_350_14 = leader->field_350_14 = 1;
    target = objects[(s8)(leader->field_33C_0 << 1) >> 1];
    leader->sub_8045A94(1, 0, target->x / 256, target->y / 256, (leader->z + leader->height) / 256, 0);
    field_20A_7 = 1;
    leader->collidesWithObjects = 1;
    leader->field_20C_12 = 0;
    leader->sprite->field_1F_0 = leader->sprite->field_1F_2 =
        objects[(s8)(leader->field_33C_0 << 1) >> 1]->sprite->field_1F_2;
    follower->field_20C_12 = 0;
    follower->sprite->field_1F_0 = follower->sprite->field_1F_2 =
        objects[(s8)(leader->field_33C_0 << 1) >> 1]->sprite->field_1F_0;
    stop_sfx_80195A8(0x5D);
    play_sfx_80195B4(0x8E, -1);
}

void FieldManager::sub_80328B4() {
    int index;
    FieldObject* other;

    if (!(leader->state >= 33 && leader->state <= 36) && leader->state != 44) {
        return;
    }
    index = (s8)(leader->field_33C_0 << 1) >> 1;
    other = objects[index];
    field_25C = index;
    field_254 = other->z + other->height + 0x6000;
    follower->state = leader->state = 42;
    follower->field_350_14 = leader->field_350_14 = 1;
    leader->sub_8045A94(1, 0, other->x / 256, other->y / 256, (leader->z + leader->height) / 256, 0);
    field_20A_7 = 1;
    field_252 = 2;
    leader->collidesWithObjects = 1;
    leader->field_20C_12 = 0;
    leader->sprite->field_1F_0 = leader->sprite->field_1F_2 = other->sprite->field_1F_2;
    follower->field_20C_12 = 0;
    follower->sprite->field_1F_0 = follower->sprite->field_1F_2 = other->sprite->field_1F_2;
    other->sprite->field_1F_0 = other->sprite->field_1F_2 - 1;
    other->field_20C_12 = 0;
    leader->field_20C_14 = 0;
    follower->field_214_0 = leader->field_214_0 = 2;
}

void FieldManager::sub_8032A90() {
    u8 angle;
    int direction;
    int x;
    int y;
    int dy;
    bool callSub_802DF80;

    switch (follower->state) {
        case 29:
        case 30:
        case 31:
        case 32:
        case 37:
        case 38:
            follower->updateAirborne();
            follower->sub_80461B4(objects);
            if (field_20A_1) {
                follower->updateAirborne();
                follower->sub_80461B4(objects);
            }
            break;
        case 33:
            direction = (input->held & DPAD_ANY) >> 4;
            angle = byte_839F910[direction];
            if (angle != 0xFF) {
                leader->angle = angle;
                field_246_5 = angle >> 5;
            }
            break;
        case 34:
            leader->height += 0x200;
            break;
        case 35:
            field_251--;
            sub_802C068(input);
            sub_804FE68(leader, objects);
            if (leader->velocityX != 0 || leader->velocityY != 0) {
                field_246_5 = leader->angle >> 5;
            }
            break;
        case 36:
            leader->updateAirborne();
            break;
        case 39:
            leader->sub_80461B4(objects);
            break;
        case 41:
            field_251--;
            // fallthrough
        case 40:
            direction = (input->held & DPAD_ANY) >> 4;
            if (word_839F524[direction * 2] != 0 || word_839F524[direction * 2 + 1] != 0) {
                field_258 = direction;
                follower->field_350_14 = leader->field_350_14 = 0;
            }
            if (follower->state == 41) {
                leader->velocityX = (s16)leader->field_23E * word_839F524[field_258 * 2] / 256;
                leader->velocityY = (s16)leader->field_23E * word_839F524[field_258 * 2 + 1] / 256;
                sub_804FE68(leader, objects);
            }
            break;
        case 42:
            leader->sub_80461B4(objects);
            break;
        case 44:
            sub_802C068(input);
            sub_804FE68(leader, objects);
            if (leader->velocityX != 0 || leader->velocityY != 0) {
                field_246_5 = leader->angle >> 5;
            }
            break;
    }

    sub_80303C4(leader);
    leader->sub_80465D8();
    leader->method13();
    if (leader->state != 34) {
        leader->sub_804FB64(objects, 0, 0);
    }

    if ((follower->state >= 33 && follower->state <= 36)
        || (follower->state >= 39 && follower->state <= 41)
        || (follower->state >= 42 && follower->state <= 44)) {
        if (follower->state > 33 && --field_252 == 0) {
            leader->direction++;
            if (follower->state > 41) {
                field_252 = 2;
            } else {
                field_252 = leader->state > 39 ? 1 : 2;
                field_252 <<= isUnderwater;
            }
        }
        follower->field_26_1 = leader->field_26_1;
        follower->angle = leader->angle;
        follower->direction = leader->direction;
        follower->x = leader->x;
        follower->y = leader->y;
        follower->z = leader->z;
        follower->height = leader->height + 0x2000;
        follower->field_230 = leader->field_230;
        follower->field_234 = leader->field_234;
    } else {
        sub_80303C4(follower);
        follower->sub_80465D8();
        follower->method13();
        follower->sub_804FB64(objects, 0, 0);
    }

    switch (follower->state) {
        case 29:
            if (follower->velocityZ < 0) {
                if ((follower->field_24_7 & 1) || (follower->field_24_15 & 1)) {
                    u16 speed;

                    follower->state = leader->state = 32;
                    speed = follower->field_2DE;
                    follower->sub_8046980();
                    follower->sub_8045A94(2, 0, field_248, field_24A, 0, speed);
                    follower->field_214_0 = 2;
                } else {
                    follower->state = leader->state = 30;
                }
            }
            if (follower->state == 32) {
                break;
            }
            if (!follower->field_24_3 && !follower->field_24_11) {
                break;
            }
            follower->state = leader->state = 31;
            follower->sub_8046980();
            break;
        case 30:
            if (follower->sub_8047B78()) {
                break;
            }
            follower->field_20C_15 = 0;
            follower->state = leader->state = 33;
            break;
        case 33:
            if (field_20A_1 || sub_8025D24(0)) {
                follower->jumpToHeight(4, 0xEE >> isUnderwater, (s16)walkSpeed);
                follower->sub_8045A94(2, 0, field_248, field_24A, 0, isUnderwater ? 14 : 8);
                follower->field_20C_15 = 1;
                follower->field_214_0 = 2;
                leader->angle = leader->direction << 5;
                leader->field_214_0 = 3;
                follower->field_238 = leader->field_238;
                follower->state = leader->state = 37;
                play_sfx_80195B4(0x2B, -1);
            } else if (sub_8025D24(1)) {
                field_252 = 2 << isUnderwater;
                field_254 = leader->z + leader->height + 0xC00;
                leader->field_20C_14 = 0;
                follower->field_353_3 = leader->field_353_3 = 0;
                follower->field_353_4 = leader->field_353_4 = 0;
                follower->field_214_0 = leader->field_214_0 = 2;
                follower->state = leader->state = 34;
                play_sfx_80195B4(0x5D, -1);
            }
            break;
        case 34:
            if (leader->z + leader->height < field_254) {
                break;
            }
            leader->height = field_254 - leader->z;
            field_251 = 0x30 << isUnderwater;
            follower->field_350_14 = leader->field_350_14 = 0;
            leader->airStartZ = leader->z;
            leader->airStartHeight = leader->height;
            leader->field_23E = 0x200 >> isUnderwater;
            leader->field_274 = leader->field_274 + follower->field_274 - 0x800;
            leader->field_27A = leader->field_27A + follower->field_27A - 0x800;
            follower->state = leader->state = 35;
            break;
        case 41:
            if (leader->field_33C_0 == 0x7F) {
                follower->field_20C_12 = 1;
                leader->field_20C_12 = 1;
            }
            // fallthrough
        case 35:
            if (!field_20A_1 && (s8)field_251 != 0) {
                break;
            }
            leader->field_20C_14 = 1;
            leader->field_23E = walkSpeed;
            follower->field_350_14 = leader->field_350_14 = 1;
            follower->state = leader->state = 36;
            break;
        case 36:
        case 44:
            if (leader->airFrames != -1) {
                break;
            }
            if ((s8)leader->field_1 != -1
                && objects[(s8)leader->field_1]->type == FIELD_OBJECT_TYPE_FMON) {
                break;
            }
            follower->direction = leader->direction = field_246_5;
            follower->angle = leader->angle = field_246_5 << 5;
            leader->sub_804FC30();
            x = follower->x / 256 + word_839F584[follower->direction ^ 4][0] / 16;
            dy = word_839F584[0][(follower->direction ^ 4) * 2 + 1];
            y = follower->y / 256 + (leader->field_353_4 ? dy / 32 : dy / 16);
            follower->jumpToHeight(4, 0xEE >> isUnderwater, (s16)walkSpeed);
            follower->sub_8045A94(2, 0, x, y, 0, isUnderwater ? 14 : 8);
            follower->field_20C_15 = 1;
            follower->field_353_3 = leader->field_353_3 = 1;
            follower->velocityX = follower->velocityY = 0;
            leader->velocityX = leader->velocityY = 0;
            leader->field_274 = leader->field_274 - follower->field_274 + 0x800;
            leader->field_27A = leader->field_27A - follower->field_27A + 0x800;
            leader->angle = leader->direction << 5;
            leader->field_214_0 = 3;
            follower->field_238 = leader->field_238;
            follower->state = leader->state = 37;
            play_sfx_80195B4(0x2B, -1);
            break;
        case 31:
            if (follower->velocityZ < 0) {
                follower->sub_8046980();
                follower->sub_8045A94(2, 0, field_248, field_24A, 0, isUnderwater ? 14 : 8);
                follower->field_214_0 = 2;
            }
            // fallthrough
        case 37:
            if (follower->velocityZ < 0) {
                follower->state++;
                leader->state++;
            }
            // fallthrough
        case 32:
        case 38:
            if (!field_246_1 && follower->sub_8047C18(leader)) {
                follower->x = follower->previousX & ~0xFF;
                follower->y = follower->previousY & ~0xFF;
                follower->height += follower->z;
                follower->z = follower->previousZ;
                follower->height -= follower->z;
                follower->sub_8046980();
                follower->field_238 = follower->field_354;
                field_246_1 = 1;
            }
            if (follower->airFrames != -1) {
                break;
            }
            callSub_802DF80 = false;
            if (follower->state == 38) {
                callSub_802DF80 = true;
            }
            follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_NORMAL;
            follower->state = leader->state = 0;
            follower->field_358_3 = leader->field_358_3 = 0;
            follower->field_350_14 = leader->field_350_14 = 0;
            follower->field_214_0 = 3;
            follower->sub_8046980();
            follower->angle = follower->direction << 5;
            field_20B_7 = 0;
            if (callSub_802DF80) {
                sub_802DF80(0);
            }
            break;
        case 39:
            if (leader->sub_8047B78()) {
                break;
            }
            follower->state = leader->state = 40;
            field_251 = 20;
            field_252 = 1;
            break;
        case 40:
            if (!(gGameState.rawInput.pressed & DPAD_ANY)) {
                break;
            }
            follower->state = leader->state = 41;
            leader->field_23E = 0x300 >> isUnderwater;
            field_251 = 64;
            stop_sfx_80195A8(0x8E);
            play_sfx_80195B4(0x5D, -1);
            break;
        case 42:
            if (leader->sub_8047B78()) {
                break;
            }
            follower->state = leader->state = 43;
            field_26E = 8;
            field_25A = 0x80;
            break;
        case 43:
            leader->height += field_25A;
            if (leader->z + leader->height >= field_254) {
                follower->state = leader->state = 44;
                leader->field_20C_14 = 1;
                objects[field_25C]->field_20C_12 = 1;
                objects[field_25C]->field_214_24 = 1;
                follower->field_20C_12 = 1;
                leader->field_20C_12 = 1;
                leader->startAirborne(0x11A, 10, -1);
                follower->field_350_14 = leader->field_350_14 = 0;
            } else if (field_25A <= 0x1FF && --field_26E == 0) {
                switch (field_25A) {
                    case 0x80:
                        field_25A = 0x100;
                        break;
                    case 0x100:
                        field_25A = 0x200;
                        break;
                }
                field_26E = 8;
            }
            break;
    }
}

void FieldManager::hammerIntoGround() {
    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_MOLE_LUIGI;
    follower->state = leader->state = 59;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    leader->isMole = 1;
    leader->field_20C_13 = 1;
    leader->field_210_1 = 0;
    leader->field_210_2 = 0;
    follower->field_212_6 = 1;
    follower->field_20C_13 = 1;
    follower->field_35A_1 = 1;
    field_208_0 = 0;
    field_20B_7 = 1;
    follower->field_214_0 = 4;
    follower->sub_8049000(SPRITE_ID(0, 37));
    follower->jumpToHeight(16, 0xEE >> isUnderwater, (s16)walkSpeed);
    follower->sprite->animationEndAction = ANIMATION_END_STOP;
    leader->field_368->field_12 = leader->field_368->field_10[0];
    leader->field_368->field_10[0] = 0;
    brothersForm = BROTHERS_FORM_MOLE_LUIGI;
    play_sfx_80195B4(0x3C, -1);
    field_272 = !isUnderwater ? 10 : 20;
}

/**
 * Performs Luigi digging himself out of the ground. Also handles digging up whatever lies at that spot.
 */
void FieldManager::digOutOfGround(FieldPlayerCharacter* player) {
    int index;
    DigSpot* spot;
    u16 result;
    int type;
    int flag;
    int arg3;
    FieldObject* other;
    Coldef* coldef;

    sub_802C4D4(1, 1);
    player->isMole = 0;
    player->field_210_1 = 1;
    player->field_210_2 = 1;
    player->state = 62;
    player->field_350_14 = 1;
    if (brothersTogether) {
        if (player->field_352_7) {
            sub_803C6C8(2);
        }
        player->otherBrother->field_350_14 = 1;
    }
    player->field_352_6 = 0;
    player->field_214_0 = 4;
    player->sub_8049000(SPRITE_ID(0, 68));
    player->sprite->animationEndAction = ANIMATION_END_STOP;
    player->sprite->speed = field_FA_11 << field_20A_1;
    field_20B_7 = 1;
    play_sfx_80195B4(0x38, -1);
    if (field_20A_1) {
        return;
    }

    index = findDigSpot(player);
    if (index != -1 && !(index & 0x80)) {
        spot = &digSpots[index];
        spot->dug = 1;
        result =
            sub_8116A2C((spot->entry[7] << 8) | spot->entry[6], spot->entry[0], player->objectIndex);
        type = result & 0xF;
        flag = (result >> 4) & 1;
        arg3 = (result >> 5) & 0x7F;
        //! Possible fake match: flag's value recomputed for the call instead of passing flag (permuter)
        sub_80262CC(spot->tileX * 0x1000 + 0x800, spot->tileY * 0x1000 - 0x800, spot->layer << 11,
                    0xC00, type, (result >> 4) & 1, 1);
        sub_802641C(1, type, arg3, player->sprite->yPosition < 64);
        if (flag) {
            CommonEvent::setFlag(CommonEvent::instance->fieldEngineFlags, 0, 0x1360 + spot->index, 1);
            if (!spot->hidden) {
                coldef = get_coldef_ptr_by_xz(field_304, spot->tileX, spot->tileY);
                sub_805C8A4(field_304, coldef->tileFlags);
            }
        }
    }

    if (player->field_33E != -1) {
        other = objects[player->field_33E];
        if (other->type == FIELD_OBJECT_TYPE_FMON) {
            ((FieldMonster*)other)->sub_804FFCC();
            player->sub_80499B8();
        } else {
            other->jumpToHeight(0x30, -1, (s16)walkSpeed);
        }
    }
}

void FieldManager::sub_8033E30() {
    sub_802C4D4(1, 1);
    field_248 = follower->x / 256;
    field_24A = follower->y / 256;
    follower->state = leader->state = 64;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->jumpToHeight((leader->z - follower->z) / 256 + 0x14, 0xEE >> isUnderwater,
                           (s16)walkSpeed);
    follower->sub_8045A94(2, 0, leader->x / 256, leader->y / 256, 0, isUnderwater ? 18 : 12);
    field_20B_7 = 1;
    play_sfx_80195B4(0x2B, -1);
}

void FieldManager::sub_8033F5C() {
    switch (leader->state) {
        case 59:
            follower->updateAirborne();
            if (!field_209_6 && follower->z + follower->height < leader->z + leader->height) {
                follower->height = leader->z + leader->height - follower->z;
            }
            if (follower->sprite->frameTicksLeft == field_FA_11) {
                if (follower->sprite->frame == 3) {
                    leader->field_214_0 = 4;
                    leader->sub_8049000(SPRITE_ID(0, 66));
                }
                if (follower->sprite->frame == 6) {
                    leader->field_214_0 = 3;
                    leader->sub_8049000(SPRITE_ID(0, 67));
                    leader->field_352_6 = 1;
                }
                leader->sprite->yScale = word_839FA9C[follower->sprite->frame];
            }
            if (!follower->sprite->animationComplete) {
                break;
            }
            field_26E = 20;
            sprite_set_animation(follower->sprite, follower->sprite->field_21 + 5, 0, NULL, 0);
            follower->state = leader->state = 60;
            break;
        case 60:
            if (--field_26E != 0) {
                break;
            }
            follower->field_214_0 = 3;
            follower->sub_8049000(SPRITE_ID(0, 1));
            {
                FieldPlayerCharacter* f = follower;
                FieldPlayerCharacter* l = leader;
                s32 speed = (s16)walkSpeed >> isUnderwater;

                l->field_23E = speed;
                f->field_23E = speed;
                l->field_260 = speed;
                f->field_260 = speed;
            }
            follower->field_212_6 = 0;
            leader->sprite->yScale = 0x100;
            follower->field_20C_14 = 0;
            if (!field_209_6) {
                follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256, leader->z / 256,
                                      walkSpeed);
            }
            follower->state = leader->state = 61;
            break;
        case 61:
            if ((!sub_802DC0C(follower) && follower->height == 0) || !follower->sub_8047B78()) {
                if (follower->sub_8047B78() == true) {
                    follower->x &= ~0xFF;
                    follower->y &= ~0xFF;
                }
                follower->sub_8046980();
                follower->state = leader->state = 0;
                follower->field_358_3 = leader->field_358_3 = 0;
                follower->field_350_14 = leader->field_350_14 = 0;
                follower->field_20C_13 = 0;
                follower->field_20C_14 = 1;
                follower->field_35A_1 = 0;
                field_20A_3 = 0;
                field_20B_7 = 0;
                {
                    FieldPlayerCharacter* f = follower;
                    FieldPlayerCharacter* l = leader;
                    s32 speed = 0x100 >> isUnderwater;

                    l->field_23E = speed;
                    f->field_23E = speed;
                    l->field_260 = speed;
                    f->field_260 = speed;
                }
                sub_802DF80(0);
                if (field_20A_1) {
                    digOutOfGround(leader);
                }
            } else {
                follower->sub_80461B4(objects);
                follower->sub_80465D8();
                follower->sub_804FB64(objects, 0, 0);
            }
            break;
        case 64:
        case 65:
        case 66:
        case 67:
        case 68:
        case 69:
            sub_803C834(leader);
            follower->updateAirborne();
            follower->sub_80461B4(objects);
            if (field_20A_1) {
                follower->updateAirborne();
                follower->sub_80461B4(objects);
            }
            sub_80303C4(follower);
            follower->sub_80465D8();
            follower->method13();
            follower->sub_804FB64(objects, 0, 0);
            switch (follower->state) {
                case 64:
                    if (follower->velocityZ < 0) {
                        follower->state = leader->state = 65;
                    }
                    if ((follower->field_24_7 & 1) || (follower->field_24_15 & 1)) {
                        follower->state = leader->state = 67;
                        follower->sub_8046980();
                    } else if (follower->field_24_3 || follower->field_24_11) {
                        follower->state = leader->state = 66;
                        follower->sub_8046980();
                    }
                    break;
                case 65:
                    if (follower->sub_8047B78()) {
                        break;
                    }
                    follower->jumpToHeight(20, 0xEE >> isUnderwater, (s16)walkSpeed);
                    follower->sub_8045A94(2, 0, field_248, field_24A, 0, isUnderwater ? 18 : 12);
                    leader->field_23B = 0;
                    follower->field_20C_15 = 1;
                    follower->field_214_0 = 2;
                    follower->state = leader->state = 68;
                    break;
                case 66:
                case 68:
                    if (follower->velocityZ < 0) {
                        follower->state++;
                        leader->state++;
                    }
                    // fallthrough
                case 67:
                case 69:
                    if (follower->height > 0 && follower->field_29 == -1) {
                        break;
                    }
                    follower->state = leader->state = 0;
                    follower->field_358_3 = leader->field_358_3 = 0;
                    follower->field_350_14 = leader->field_350_14 = 0;
                    follower->field_214_0 = 3;
                    follower->sub_8046980();
                    {
                        FieldPlayerCharacter* f = follower;
                        FieldPlayerCharacter* l = leader;
                        s32 speed = 0x100 >> isUnderwater;

                        l->field_23E = speed;
                        f->field_23E = speed;
                        l->field_260 = speed;
                        f->field_260 = speed;
                    }
                    field_20B_7 = 0;
                    sub_802DF80(0);
                    if (field_20A_1) {
                        digOutOfGround(leader);
                    }
                    break;
            }
            break;
    }

    if (leader->state >= 59 && leader->state <= 60) {
        if (--field_272 == 0) {
            play_sfx_80195B4(0x38, -1);
        }
    }
}

void FieldManager::enterBarrel(FieldPlayerCharacter* player) {
    objects[player->field_33E]->sub_804776C(0);
    objects[player->field_33E]->setSpriteActive(0);
    barrelObjectIndex = player->field_33E;
    sub_802C4D4(1, 1);
    player->field_368->actionMode = ACTION_MODE_BARREL_LUIGI;
    player->state = 70;
    player->field_350_14 = 1;
    if (brothersTogether) {
        player->otherBrother->field_368->actionMode = ACTION_MODE_BARREL_LUIGI;
        player->otherBrother->field_350_14 = 1;
    }
    player->isMole = 0;
    player->isBarrel = 1;
    player->field_20C_13 = 0;
    player->field_210_1 = 1;
    player->field_210_2 = 1;
    player->field_350_15 = 1;
    field_20B_7 = 1;
    player->field_352_6 = 0;
    player->x = objects[player->field_33E]->x;
    player->y = objects[player->field_33E]->y;
    player->field_355 = 4;
    player->sub_8049000(SPRITE_ID(0, 69));
    brothersForm = BROTHERS_FORM_BARREL_LUIGI;
    sub_802DF80(0);
    play_sfx_80195B4(0x38, -1);
}

void FieldManager::breakOutOfBarrel(FieldPlayerCharacter* player) {
    sub_802C4D4(1, 1);
    player->state = 72;
    player->field_350_14 = 1;
    if (brothersTogether) {
        if (player->field_352_7) {
            sub_803C6C8(2);
        }
        player->otherBrother->field_350_14 = 1;
    }
    player->sub_8049000(SPRITE_ID(0, 2)); // Normal luigi sprite.
    player->jumpToHeight(24, 0x75, (s16)walkSpeed);
    player->showBarrelBreakingSprite();
    player->field_36C->speed = field_FA_11 << field_20A_1;
    field_20B_7 = 1;
    play_sfx_80195B4(0x46, -1);
}

void FieldManager::hammerBarrel() {
    sub_802C4D4(1, 1);
    follower->state = leader->state = 73;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->field_20C_13 = 1;
    follower->field_214_0 = 4;
    follower->sub_8049000(SPRITE_ID(0, 37));
    follower->sprite->animationEndAction = ANIMATION_END_STOP;
    follower->field_212_6 = 1;
    follower->sprite->speed = field_FA_11 << field_20A_1;
    field_20B_7 = 1;
    play_sfx_80195B4(0x3C, -1);
}

void FieldManager::jumpOntoBarrel() {
    sub_802C4D4(1, 1);
    leader->sub_8049000(SPRITE_ID(0, 69));
    field_246_1 = 0;
    field_248 = follower->x / 256;
    field_24A = follower->y / 256;
    field_24C = field_248 - leader->x / 256;
    field_24E = field_24A - leader->y / 256;
    follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_MARIO_ON_BARREL;
    follower->state = leader->state = 81;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->jumpToHeight((leader->z - follower->z) / 256 + 0x1A, 0xEE >> isUnderwater,
                           (s16)walkSpeed);
    follower->sub_8045A94(2, 0, leader->x / 256, leader->y / 256, 0, isUnderwater ? 16 : 10);
    field_20B_7 = 1;
    play_sfx_80195B4(0x2B, -1);
}

void FieldManager::sub_8034BF4() {
    switch (leader->state) {
        case 73:
            follower->updateAirborne();
            if (field_20A_1) {
                follower->updateAirborne();
            }
            if (!field_209_6 && follower->z + follower->height < leader->z + leader->height) {
                follower->height = leader->z + leader->height - follower->z;
            }
            if (follower->sprite->frame != 3 || follower->sprite->frameTicksLeft > field_FA_11) {
                break;
            }
            field_26E = 20;
            sprite_set_animation(follower->sprite, follower->sprite->field_21 + 10, 0, NULL, 0);
            leader->sub_8049000(SPRITE_ID(0, 2));
            leader->showBarrelBreakingSprite();
            follower->state = leader->state = 74;
            break;
        case 74:
            field_26E--;
            if (field_20A_1) {
                field_26E--;
            }
            if (field_26E > 0) {
                break;
            }
            follower->field_214_0 = 3;
            follower->sub_8049000(SPRITE_ID(0, 1));
            follower->field_212_6 = 0;
            leader->field_214_0 = 3;
            sprite_remove(leader->field_36C);
            leader->field_350_15 = 0;
            follower->field_20C_14 = 0;
            {
                FieldPlayerCharacter* f = follower;
                FieldPlayerCharacter* l = leader;

                f->field_23E = l->field_23E = walkSpeed;
                f->field_260 = l->field_260 = walkSpeed;
            }
            if (!field_209_6) {
                follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256, leader->z / 256,
                                      walkSpeed);
            }
            follower->state = leader->state = 75;
            break;
        case 75:
            if ((!sub_802DC0C(follower) && follower->height == 0) || !follower->sub_8047B78()) {
                if (follower->sub_8047B78() == true) {
                    follower->x &= ~0xFF;
                    follower->y &= ~0xFF;
                }
                follower->sub_8046980();
                field_208_0 = 1;
                brothersForm = BROTHERS_FORM_NORMAL;
                follower->field_20C_13 = 0;
                follower->field_20C_14 = 1;
                follower->field_35A_1 = 0;
                field_20B_7 = 0;
                sub_802DF80(0);
                follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_NORMAL;
                follower->state = leader->state = 0;
                follower->field_358_3 = leader->field_358_3 = 0;
                follower->field_350_14 = leader->field_350_14 = 0;
                leader->isBarrel = 0;
                leader->field_368->field_10[0] = leader->field_368->field_12;
                leader->field_368->field_12 = -1;
                sub_802DDB4(leader, 0, 0);
            } else {
                follower->sub_80461B4(objects);
                follower->sub_80465D8();
                follower->sub_804FB64(objects, 0, 0);
            }
            break;
        case 77:
        case 78:
        case 79:
        case 80:
            sub_803A584();
            break;
    }
}

void FieldManager::sub_8034FE8() {
    follower->jumpToHeight(4, 0xEE >> isUnderwater, (s16)walkSpeed);
    follower->sub_8045A94(2, 1, field_24C, field_24E, 0, isUnderwater ? 16 : 10);
    leader->field_23B = 0;
    follower->field_20C_26 = 1;
    follower->state = leader->state = 86;
    field_209_7 = 0;
    field_20B_7 = 1;
    play_sfx_80195B4(0x2B, -1);
}

void FieldManager::sub_80350B4() {
    switch (follower->state) {
        case 81:
        case 82:
        case 83:
        case 84:
        case 86:
        case 87:
            follower->updateAirborne();
            follower->sub_80461B4(objects);
            break;
        case 85: {
            int index = (input->held & DPAD_ANY) >> 4;
            u8 angle = byte_839F910[index];

            if (angle != 0xFF) {
                follower->angle = angle;
            }
            break;
        }
    }

    sub_80303C4(leader);
    leader->sub_80465D8();
    leader->method13();
    leader->sub_804FB64(objects, 0, 0);

    switch (follower->state) {
        case 5:
            if (!follower->sub_804D734(0, objects, objectCount)) {
                if (follower->sub_804DBD0(0)) {
                    follower->state = follower->sprite->frame == 3 ? 6 : 7;
                }
            } else {
                follower->state = follower->sprite->frame == 3 ? 8 : 9;
            }
            if (follower->sprite->animationComplete) {
                follower->state = 7;
            }
            if (follower->state != 5) {
                sprite_set_animation(
                    follower->sprite,
                    follower->sprite->field_21 + (follower->sprite->frame == 3 ? 10 : 5), 0);
                follower->field_355 = 20;
            }
            break;

        case 6:
        case 7:
        case 8:
        case 9:
            if (follower->state > 7) {
                follower->state -= 2;
            }
            if (follower->field_355 != 0 && --follower->field_355 == 0) {
                follower->sub_804FCD4();
                follower->state = 85;
                leader->field_350_14 = 0;
            }
            break;

        case 10:
            if (follower->field_355 < 60) {
                u16* entry;
                u32 i;

                follower->field_355++;
                entry = word_839FABC;
                for (i = 0; i < 4; i++, entry += 2) {
                    if (entry[0] == follower->field_355) {
                        sprite_set_animation(follower->field_36C, entry[1], 0);
                        if (follower->field_355 == 59) {
                            stop_sfx_80195A8(follower->objectIndex == BROTHER_MARIO ? 0x157 : 0x87);
                            play_sfx_80195B4(follower->objectIndex == BROTHER_MARIO ? 0x158 : 0x156,
                                             -1);
                        }
                    }
                }
            }
            if (!(input->held & follower->field_368->actionButton)) {
                if (follower->field_355 < 60) {
                    follower->stopHandPower();
                    follower->state = 85;
                    leader->field_350_14 = 0;
                } else {
                    stop_sfx_80195A8(follower->objectIndex == BROTHER_MARIO ? 0x158 : 0x156);
                    follower->state = 11;
                    follower->method7(1);
                    follower->sprite->animationEndAction = ANIMATION_END_STOP;
                    play_sfx_80195B4(follower->objectIndex == BROTHER_MARIO ? 0x9C : 0x9A, -1);
                }
            }
            break;

        case 11:
            if (follower->sprite->animationComplete) {
                if (follower->sub_804D734(1, objects, objectCount) || follower->sub_804DBD0(1)) {
                    follower->field_355 = 5;
                } else {
                    follower->field_355 = 40;
                }
                follower->field_214_0 = 0;
                follower->state = 12;
                sprite_set_animation(follower->field_36C, 5, 0);
                follower->field_36C->animationEndAction = ANIMATION_END_STOP;
            }
            break;

        case 12:
            if (follower->field_36C->field_21 == 5 && follower->field_36C->animationComplete) {
                sprite_set_animation(follower->field_36C, 6, 0);
            }
            if (follower->field_355 != 0 && --follower->field_355 == 0) {
                follower->stopHandPower();
                follower->state = 85;
                leader->field_350_14 = 0;
            }
            break;
    }

    sub_80303C4(follower);
    follower->sub_80465D8();
    follower->method13();
    follower->sub_804FB64(objects, 0, 0);

    switch (follower->state) {
        case 81:
            if (follower->velocityZ < 0) {
                follower->state = leader->state = 82;
            }
            if ((follower->field_24_7 & 1) || (follower->field_24_15 & 1)) {
                follower->state = leader->state = 84;
                follower->sub_8046980();
            } else if (follower->field_24_3 || follower->field_24_11) {
                follower->state = leader->state = 83;
                follower->sub_8046980();
            }
            break;
        case 82:
            if (follower->z + follower->height <= leader->z + leader->height + 0x1600) {
                follower->height = leader->z + leader->height + 0x1600 - follower->z;
            }
            if (follower->sub_8047B78()) {
                break;
            }
            follower->land();
            follower->height = leader->height + 0x1700;
            field_20B_7 = 0;
            follower->field_20C_26 = 0;
            field_209_7 = 2;
            follower->state = leader->state = 85;
            break;
        case 85:
            follower->x += leader->x - leader->previousX;
            follower->y += leader->y - leader->previousY;
            follower->z += leader->z - leader->previousZ;
            follower->height += leader->height - leader->previousHeight;
            if (fieldMode != FIELD_MODE_NORMAL) {
                break;
            }
            if (sub_8025D24(0)) {
                sub_8029878();
            }
            if (!sub_8025D24(1)) {
                break;
            }
            switch (follower->field_368->selectedAction) {
                case ACTION_HAMMER:
                    follower->startHammer(isUnderwater);
                    leader->field_350_14 = 1;
                    break;
                case ACTION_HAND:
                    follower->startHandPower();
                    leader->field_350_14 = 1;
                    break;
                case ACTION_JUMP_OFF_BARREL:
                    sub_8034FE8();
                    break;
            }
            break;
        case 83:
        case 86:
            if (follower->velocityZ < 0) {
                follower->state++;
                leader->state++;
            }
            // fallthrough
        case 84:
        case 87:
            if (!field_246_1 && follower->sub_8047C18(leader)) {
                follower->x = follower->previousX;
                follower->y = follower->previousY;
                follower->z = follower->previousZ;
                follower->height = follower->previousHeight;
                follower->sub_8046980();
                field_246_1 = 1;
            }
            if (follower->height > 0 && follower->field_29 == -1) {
                break;
            }
            follower->sub_8046980();
            follower->land();
            follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_BARREL_LUIGI;
            follower->state = leader->state = 0;
            follower->field_358_3 = leader->field_358_3 = 0;
            follower->field_350_14 = leader->field_350_14 = 0;
            follower->field_214_0 = 3;
            leader->sub_8049000(SPRITE_ID(0, 70));
            field_20B_7 = 0;
            sub_802DF80(0);
            if (field_20A_1) {
                breakOutOfBarrel(leader);
            } else {
                sub_802DDB4(follower, 1, 0);
            }
            break;
    }
}

void FieldManager::sub_8035974() {
    FieldPlayerCharacter* mario;
    FieldPlayerCharacter* luigi;

    if (leader->objectIndex == BROTHER_MARIO) {
        mario = leader;
        luigi = follower;
        sub_802C4D4(1, 1);
        sub_803C6C8(1);
    } else {
        mario = follower;
        luigi = leader;
    }
    if (brothersForm == BROTHERS_FORM_MINI_MARIO) {
        luigi->state = mario->state = 92;
        if (!mario->field_36C->hidden && mario->field_36C->id == 0x54) {
            sprite_remove(mario->field_36C);
        }
        field_272 = !isUnderwater ? 30 : 20;
    } else {
        luigi->state = mario->state = 89;
        field_272 = !isUnderwater ? 10 : 20;
    }
    luigi->field_368->actionMode = mario->field_368->actionMode = ACTION_MODE_MINI_MARIO;
    mario->field_350_14 = 1;
    luigi->field_350_14 = 1;
    mario->field_358_3 = 1;
    luigi->field_358_3 = 1;
    luigi->field_20C_13 = 1;
    luigi->field_35A_1 = 1;
    luigi->field_212_6 = 1;
    field_208_0 = 0;
    field_20B_7 = 1;
    luigi->field_214_0 = 1;
    if (leader->objectIndex == BROTHER_LUIGI) {
        luigi->direction += 4;
    }
    luigi->sub_8049000(SPRITE_ID(0, 63));
    luigi->jumpToHeight(16, 0xEE >> isUnderwater, (s16)walkSpeed);
    luigi->sprite->animationEndAction = ANIMATION_END_STOP;
    luigi->sprite->speed = field_FA_11 << field_20A_1;
    brothersForm = BROTHERS_FORM_MINI_MARIO;
    play_sfx_80195B4(0x3C, -1);
}

void FieldManager::sub_8035B98() {
    s32 maxHeight;
    s32 height;

    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    field_246_1 = 0;
    field_248 = follower->x / 256;
    field_24A = follower->y / 256;
    follower->x &= ~0xFF;
    follower->y &= ~0xFF;
    follower->previousX = follower->x;
    follower->previousY = follower->y;
    if (follower->x >= leader->x - 0x400 && follower->x <= leader->x + 0x400
        && follower->y >= leader->y - 0x400 && follower->y <= leader->y + 0x400) {
        follower->x = leader->x;
        follower->y = leader->y;
    }
    follower->state = leader->state = 101;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    maxHeight = 0x30;
    if (leader->z + leader->height > follower->z + follower->height
        && (leader->field_26_4 & follower->field_26_4)) {
        maxHeight = leader->z + leader->height - (follower->z + follower->height) + 0x30;
    }
    height = (leader->z + leader->height - (follower->z + follower->height)) / 256 + 0x30;
    if (height > maxHeight) {
        height = maxHeight;
    }
    follower->jumpToHeight(height, isUnderwater ? 0x35 : 0x6B, (s16)walkSpeed);
    follower->sub_8045A94(2, 0, leader->x / 256, leader->y / 256, 0, isUnderwater ? 16 : 10);
    field_20B_7 = 1;
    play_sfx_80195B4(0x2B, -1);
}

void FieldManager::sub_8035DB0() {
    if (follower->state > 100) {
        switch (follower->state) {
            case 101:
            case 102:
            case 103:
            case 105:
            case 106:
                follower->updateAirborne();
                follower->sub_80461B4(objects);
                leader->updateAirborne();
                if (field_20A_1) {
                    follower->updateAirborne();
                    follower->sub_80461B4(objects);
                    leader->updateAirborne();
                }
                break;
        }

        sub_80303C4(leader);
        leader->sub_80465D8();
        leader->method13();
        leader->sub_804FB64(objects, 0, 0);
        follower->sub_80465D8();
        sub_80303C4(follower);
        follower->method13();
        follower->sub_804FB64(objects, 0, 0);

        switch (follower->state) {
            case 101:
                if (follower->velocityZ < 0
                    && ((follower->field_24_7 & 1) || (follower->field_24_15 & 1))) {
                    u16 speed;

                    follower->state = leader->state = 103;
                    speed = follower->field_2DE;
                    follower->sub_8046980();
                    follower->sub_8045A94(2, 0, field_248, field_24A, 0, speed);
                    follower->sub_8049000(SPRITE_ID(0, 2));
                    follower->field_214_0 = 2;
                }
                if (follower->state != 103 && (follower->field_24_3 || follower->field_24_11)) {
                    follower->state = leader->state = 102;
                    follower->sub_8046980();
                    follower->sub_8049000(SPRITE_ID(0, 2));
                }
                if (!field_20A_1 && leader->airFrames == -1 && sub_8025D24(0)) {
                    leader->jumpToHeight(32, 0x75, (s16)walkSpeed);
                    play_sfx_80195B4(0x2F, -1);
                }
                if (follower->state != 101) {
                    break;
                }
                if (leader->airFrames != -1 && follower->airFrames != -1
                    && follower->z + follower->height <= leader->z + leader->height) {
                    s32 height = 64 - (follower->height - leader->airStartHeight) / 256;

                    follower->direction = leader->direction;
                    follower->angle = leader->angle;
                    follower->sub_8049000(SPRITE_ID(0, 74));
                    follower->jumpToHeight(height, isUnderwater ? 48 : 97, (s16)walkSpeed);
                    leader->velocityZ = 0;
                    if (dword_3000FF4[1].field_E > 1) {
                        if (dword_3000FF4[2].field_10 < 9999) {
                            dword_3000FF4[2].field_10++;
                        }
                        dword_3000FF4[1].field_E--;
                        sub_802973C(leader, 1, true, 0, false);
                        play_sfx_80195B4(0x2C, -1);
                    } else {
                        play_sfx_80195B4(0x104, -1);
                    }
                }
                leader->method7(1);
                if (leader->airFrames != -1 || follower->velocityZ >= 0
                    || follower->z + follower->height
                           > leader->z + leader->height + leader->field_274) {
                    break;
                }
                follower->sub_8049000(SPRITE_ID(0, 2));
                follower->height = leader->z + leader->height + leader->field_274 - follower->z;
                follower->field_350_14 = leader->field_350_14 = 1;
                follower->state = leader->state = 104;
                break;
            case 104:
                follower->jumpToHeight(4, 0xEE >> isUnderwater, (s16)walkSpeed);
                follower->sub_8045A94(2, 0, field_248, field_24A, 0, isUnderwater ? 16 : 10);
                follower->field_20C_15 = 1;
                follower->field_214_0 = 2;
                follower->state = leader->state = 105;
                break;
            case 102:
            case 105:
                if (follower->velocityZ < 0) {
                    follower->state++;
                    leader->state++;
                }
                // fallthrough
            case 103:
            case 106:
                if (!field_246_1 && follower->sub_8047C18(leader)) {
                    follower->x = follower->previousX;
                    follower->y = follower->previousY;
                    follower->z = follower->previousZ;
                    follower->height = follower->previousHeight;
                    follower->sub_8046980();
                    field_246_1 = 1;
                }
                if (follower->height > 0 && follower->field_29 == -1) {
                    break;
                }
                follower->state = leader->state = 0;
                follower->field_358_3 = leader->field_358_3 = 0;
                follower->field_350_14 = leader->field_350_14 = 0;
                follower->field_214_0 = 3;
                follower->sub_8046980();
                follower->angle = follower->direction << 5;
                sub_802DF80(0);
                field_20B_7 = 0;
                if (field_20A_1) {
                    sub_8035974();
                }
                break;
        }
    } else {
        FieldPlayerCharacter* mario;
        FieldPlayerCharacter* luigi;

        if (leader->objectIndex == BROTHER_MARIO) {
            mario = leader;
            luigi = follower;
        } else {
            mario = follower;
            luigi = leader;
        }
        sub_80303C4(mario);
        if (luigi->state == 94) {
            luigi->height += 0x400 << field_20A_1;
        } else if (luigi->state == 89 || luigi->state == 92
                   || (luigi->state == 95 && luigi->field_214_0 == 0)) {
            luigi->updateAirborne();
            if (field_20A_1) {
                luigi->updateAirborne();
            }
            if (!field_209_6 && luigi->z + luigi->height < mario->z + mario->height) {
                luigi->height = mario->z + mario->height - luigi->z;
            }
        }
        sub_80303C4(luigi);

        switch (follower->state) {
            case 89:
                if (follower->field_238 == -1) {
                    follower->field_238 = follower->field_354;
                }
                if (follower->sprite->frameTicksLeft == field_FA_11) {
                    leader->sprite->yScale = word_839FACC[follower->sprite->frame];
                }
                if (leader->sprite->yScale <= 255) {
                    leader->field_23B = -1;
                }
                if (!follower->sprite->animationComplete) {
                    break;
                }
                field_26E = 20;
                sprite_set_animation(follower->sprite, follower->sprite->field_21 + 5, 0);
                follower->state = leader->state = 90;
                break;
            case 90:
                if (--field_26E != 0) {
                    break;
                }
                follower->field_214_0 = 3;
                follower->sub_8049000(SPRITE_ID(0, 2));
                leader->sub_8049000(SPRITE_ID(0, 40));
                {
                    FieldPlayerCharacter* f = follower;
                    FieldPlayerCharacter* l = leader;
                    s32 speed = 0x200 >> isUnderwater;

                    l->field_23E = speed;
                    f->field_23E = speed;
                    l->field_260 = speed;
                    f->field_260 = speed;
                }
                leader->sprite->yScale = 0x100;
                leader->field_23B = 0;
                follower->field_212_6 = 0;
                follower->field_20C_14 = 0;
                if (!field_209_6) {
                    follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256,
                                          (leader->z + leader->height) / 256, walkSpeed);
                }
                follower->state = leader->state = 91;
                break;
            case 91:
                if ((!sub_802DC0C(follower) && (follower->height == 0 || (s8)follower->field_1 != -1))
                    || !follower->sub_8047B78()) {
                    if (follower->sub_8047B78() == true) {
                        follower->x &= ~0xFF;
                        follower->y &= ~0xFF;
                    }
                    follower->sub_8046980();
                    follower->state = leader->state = 0;
                    follower->field_358_3 = leader->field_358_3 = 0;
                    follower->field_350_14 = leader->field_350_14 = 0;
                    follower->field_20C_13 = 0;
                    follower->field_20C_14 = 1;
                    follower->field_35A_1 = 0;
                    leader->isMini = 1;
                    field_20B_7 = 0;
                    field_20A_3 = 0;
                    follower->sub_804FB64(objects, 0, 0);
                    sub_802DF80(0);
                } else {
                    follower->sub_80461B4(objects);
                    follower->sub_80465D8();
                    follower->sub_804FB64(objects, 0, 0);
                }
                break;
            case 92:
                if (luigi->field_238 == -1) {
                    luigi->field_238 = luigi->field_354;
                }
                if (luigi->sprite->frameTicksLeft == field_FA_11 << field_20A_1) {
                    mario->sprite->yScale = word_839FAEC[follower->sprite->frame];
                }
                if (mario->sprite->yScale <= 255) {
                    mario->field_23B = -1;
                }
                if (!luigi->sprite->animationComplete) {
                    break;
                }
                luigi->state = mario->state = 93;
                luigi->field_214_0 = 0;
                luigi->sprite->animationEndAction = ANIMATION_END_STOP;
                mario->sprite->animationEndAction = ANIMATION_END_STOP;
                mario->field_214_0 = 3;
                mario->sub_8049000(SPRITE_ID(0, 1));
                mario->sprite->yScale = byte_839F65A[0] << 4;
                mario->sprite->xScale = byte_839F649[0] << 4;
                field_26E = 0;
                break;
            case 93:
                mario->sprite->xScale = byte_839F649[field_26E] << 4;
                field_26E += 1 << field_20A_1;
                if ((u16)field_26E <= 16) {
                    break;
                }
                luigi->state = mario->state = 94;
                luigi->field_214_0 = 0;
                field_26E = 0;
                field_270 = 0;
                luigi->field_20C_14 = 0;
                break;
            case 94:
                mario->sprite->yScale = byte_839F65A[field_26E] << 4;
                if (mario->sprite->yScale > 255) {
                    mario->field_23B = 0;
                }
                if ((u16)field_26E <= 16) {
                    field_26E += 1 << field_20A_1;
                }
                field_270 += 0x400 << field_20A_1;
                if (field_270 <= 0x11FF) {
                    break;
                }
                luigi->state = mario->state = 95;
                luigi->field_214_0 = 1;
                luigi->sprite->speed = -(field_FA_11 << field_20A_1);
                luigi->field_20C_14 = 1;
                break;
            case 95:
                mario->sprite->yScale = byte_839F65A[field_26E] << 4;
                if (mario->sprite->yScale > 255) {
                    mario->field_23B = 0;
                }
                if (luigi->field_214_0 == 0) {
                    if (!field_209_6 && luigi->height <= mario->z + mario->height - luigi->z) {
                        luigi->height = mario->z + mario->height - luigi->z;
                        luigi->airFrames = -1;
                    }
                } else if (field_26E == 14) {
                    luigi->field_214_0 = 0;
                    luigi->sub_8049000(SPRITE_ID(0, 2));
                    luigi->field_212_6 = 0;
                    luigi->startAirborne(0);
                    luigi->airStartZ = mario->z;
                }
                if ((u16)field_26E <= 16) {
                    field_26E += 1 << field_20A_1;
                    if ((u16)field_26E <= 16) {
                        break;
                    }
                }
                if (luigi->airFrames != -1) {
                    break;
                }
                luigi->field_214_0 = 3;
                {
                    FieldPlayerCharacter* f = follower;
                    FieldPlayerCharacter* l = leader;

                    f->field_23E = l->field_23E = walkSpeed;
                    f->field_260 = l->field_260 = walkSpeed;
                }
                mario->sprite->yScale = 0x100;
                mario->field_23B = 0;
                if (leader->objectIndex == BROTHER_MARIO && !field_209_6) {
                    luigi->field_20C_14 = 0;
                    luigi->sub_8045A94(1, 0, mario->x / 256, mario->y / 256,
                                       (mario->z + mario->height) / 256, walkSpeed);
                }
                luigi->state = mario->state = 96;
                break;
            case 96:
                if ((!sub_802DC0C(luigi) && (luigi->height == 0 || (s8)luigi->field_1 != -1))
                    || !luigi->sub_8047B78()) {
                    if (luigi->sub_8047B78() == true) {
                        luigi->x &= ~0xFF;
                        luigi->y &= ~0xFF;
                    }
                    luigi->sub_8046980();
                    luigi->field_368->actionMode = mario->field_368->actionMode = ACTION_MODE_NORMAL;
                    luigi->state = mario->state = 0;
                    luigi->field_358_3 = mario->field_358_3 = 0;
                    luigi->field_350_14 = mario->field_350_14 = 0;
                    luigi->field_20C_13 = 0;
                    luigi->field_20C_14 = 1;
                    luigi->field_35A_1 = 0;
                    mario->isMini = 0;
                    field_20A_3 = 0;
                    field_20B_7 = 0;
                    field_208_0 = 1;
                    brothersForm = BROTHERS_FORM_NORMAL;
                    field_20B_4 = 0;
                    luigi->sub_804FB64(objects, 0, 0);
                    sub_802DF80(0);
                    if (luigi->height < 0) {
                        luigi->height = 0;
                    }
                } else {
                    luigi->sub_80461B4(objects);
                    luigi->sub_80465D8();
                    luigi->sub_804FB64(objects, 0, 0);
                }
                break;
            case 97:
            case 98:
            case 99:
            case 100:
                sub_803A584();
                break;
        }

        if (follower->state >= 89 && follower->state <= 90) {
            if (--field_272 == 0) {
                play_sfx_80195B4(0, -1);
            }
        } else if (follower->state >= 92 && follower->state <= 95) {
            if (--field_272 == 0) {
                play_sfx_80195B4(0xD6, -1);
            }
        }
    }
}

void FieldManager::sub_8036E14() {
    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_FIRE_DASH;
    follower->state = leader->state = 108;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->field_35A_1 = 1;
    follower->showHandPowerSprite(2);
    field_26E = 0;
    field_208_0 = 0;
    field_20B_7 = 1;
    leader->field_214_0 = 4;
    leader->sub_8049000(SPRITE_ID(0, 77));
    follower->field_214_0 = 4;
    follower->sub_8049000(SPRITE_ID(0, 38));
    leader->field_239 = leader->sprite->speed = 8;
    brothersForm = BROTHERS_FORM_FIRE_DASH;
    play_sfx_80195B4(0x157, -1);
}

void FieldManager::sub_8036F84() {
    u8 moved = false;
    u8 action;

    if (field_2B8_4) {
        leader->field_20C_11 = 0;
        follower->field_20C_11 = 0;
    }
    switch (leader->state) {
        case 108:
        case 109:
        case 110:
            break;
        case 111:
        case 112:
        case 113:
            if (leader->field_350_14) {
                break;
            }
            // fallthrough
        case 116:
            sub_802BFB0(leader->angle);
            sub_804FE68(leader, objects);
            moved = true;
            break;
    }
    if (field_2B8_4) {
        sub_802F6EC();
        if (!leader->field_353_1) {
            leader->sub_804FB64(objects, 0, 1);
        }
        sub_802E2F4();
    } else {
        sub_80303C4(leader);
        leader->sub_80465D8();
        leader->method13();
        if (moved) {
            leader->sub_804D2CC();
            leader->sub_804FB64(objects, 0, 0);
            sub_803C7D8(leader);
            sub_802E2F4();
            if (leader->field_353_3) {
                leader->sub_804FC30();
            }
        } else if (leader->state == 117) {
            leader->sub_804FB64(objects, 0, 0);
        }
    }

    if (((leader->state >= 111 && leader->state <= 113) || leader->state == 117)
        && leader->airFrames >= 0) {
        leader->field_214_0 = 3;
        leader->state = 116;
        leader->sub_8049000(SPRITE_ID(0, 2));
        follower->field_20C_14 = 1;
        sprite_remove(follower->field_36C);
    }
    if (leader->state == 116 && leader->airFrames == -1) {
        leader->velocityX = leader->velocityY = 0;
        leader->state = 117;
    }

    switch (follower->state) {
        case 108:
        case 109:
        case 110:
            break;
        case 111:
        case 112:
        case 113:
        case 116:
            sub_802C208();
            sub_804FE68(follower, objects);
            break;
    }
    if (field_2B8_4) {
        if (!follower->field_353_1) {
            follower->sub_804FB64(objects, 0, 1);
        }
    } else {
        sub_80303C4(follower);
        follower->sub_80465D8();
        follower->method13();
        follower->sub_804FB64(objects, 0, 0);
        sub_802A4E8();
        if (leader->state <= 115 && leader->airFrames == -1) {
            follower->airFrames = -1;
        }
    }

    action = 0;
    switch (follower->state) {
        case 108:
            if (field_26E < 60) {
                u16* entry;
                u32 i;

                field_26E++;
                entry = word_839FB0C;
                for (i = 0; i < 4; i++, entry += 3) {
                    if (entry[0] == field_26E) {
                        sprite_set_animation(follower->field_36C, entry[1], 0);
                        leader->field_239 = leader->sprite->speed = entry[2];
                        if (field_26E == 59) {
                            stop_sfx_80195A8(0x157);
                            play_sfx_80195B4(0x158, -1);
                        }
                    }
                }
            }
            if (field_20A_1) {
                action = 3;
                break;
            }
            if (input->held & follower->field_368->actionButton) {
                break;
            }
            if (field_26E < 60) {
                stop_sfx_80195A8(0x157);
                action = 3;
            } else {
                stop_sfx_80195A8(0x158);
                follower->state = leader->state = 109;
                follower->method7(1);
                follower->sprite->animationEndAction = ANIMATION_END_STOP;
                play_sfx_80195B4(0x9C, -1);
            }
            break;

        case 109:
            if (!follower->sprite->animationComplete) {
                break;
            }
            follower->field_214_0 = 0;
            follower->state = leader->state = 110;
            sprite_set_animation(follower->field_36C, 5, 0);
            follower->field_36C->animationEndAction = ANIMATION_END_STOP;
            break;

        case 110:
            if (follower->field_36C->field_21 != 5 || !follower->field_36C->animationComplete) {
                break;
            }
            {
                FieldPlayerCharacter* f = follower;
                FieldPlayerCharacter* l = leader;

                f->field_23E = l->field_23E = 0x100;
                f->field_260 = l->field_260 = 0x100;
            }
            follower->field_350_14 = leader->field_350_14 = 0;
            field_26E = 4;
            leader->state = follower->state = 111;
            sub_802DF80(0);
            follower->field_214_0 = 4;
            sprite_set_animation(follower->field_36C, 7, 0);
            leader->sub_8049000(SPRITE_ID(0, 78));
            follower->sub_8049000(SPRITE_ID(0, 51));
            field_20A_3 = 0;
            leader->field_239 = leader->sprite->speed = field_FA_11;
            play_sfx_80195B4(0xDB, -1);
            break;

        case 111:
        case 113:
            if (leader->state <= 115) {
                if (field_20A_1) {
                    {
                        FieldPlayerCharacter* f = follower;
                        FieldPlayerCharacter* l = leader;

                        f->field_23E = l->field_23E = 0;
                        f->field_260 = l->field_260 = 0;
                    }
                    action = 3;
                } else if (--field_26E == 0) {
                    leader->field_23E = (s16)leader->field_23E
                                        + ((follower->state == 111 ? 0x100 : -0x100) >> isUnderwater);
                    {
                        FieldPlayerCharacter* f = follower;
                        FieldPlayerCharacter* l = leader;

                        f->field_23E = l->field_23E;
                        l->field_260 = l->field_23E;
                        f->field_260 = l->field_23E;
                    }
                    if ((s16)leader->field_23E <= 0) {
                        {
                            FieldPlayerCharacter* f = follower;
                            FieldPlayerCharacter* l = leader;

                            f->field_23E = l->field_23E = 0;
                            f->field_260 = l->field_260 = 0;
                        }
                        action = 3;
                    } else if ((s16)leader->field_23E == (0x400 >> isUnderwater)) {
                        leader->state = follower->state = 112;
                    } else {
                        field_26E = 4;
                    }
                }
            }
            // fallthrough
        case 112:
            if (follower->airFrames >= 0) {
                follower->field_214_0 = 3;
                follower->state = 116;
                follower->sub_8049000(SPRITE_ID(0, 1));
                break;
            }
            if (field_20A_1) {
                action = 3;
                break;
            }
            if (fieldMode > FIELD_MODE_NORMAL) {
                break;
            }
            if (sub_8025D24(4) || sub_8025D24(1) || sub_8025D24(2) || sub_8025D24(3)) {
                sub_8029878();
            }
            if (leader->z + leader->height == leader->previousZ + leader->previousHeight
                && (leader->height == 0 || (s8)leader->field_1 != -1)
                && (follower->height == 0 || (s8)follower->field_1 != -1)
                && (leader->field_24_3 || leader->field_24_11)
                && ((leader->velocityX != 0 && leader->velocityY != 0)
                    || (leader->x == leader->previousX && leader->y == leader->previousY))) {
                stop_sfx_80195A8(0xDB);
                if (leader->state == 112) {
                    u8 stopped = false;

                    if (leader->velocityX == 0) {
                        s32 dy = leader->y - leader->previousY;

                        if (leader->velocityY < 0) {
                            if (dy > leader->velocityY) {
                                stopped = true;
                            }
                        } else if (dy < leader->velocityY) {
                            stopped = true;
                        }
                    } else if (leader->velocityY == 0) {
                        s32 dx = leader->x - leader->previousX;

                        if (leader->velocityX < 0) {
                            if (dx > leader->velocityX) {
                                stopped = true;
                            }
                        } else if (dx < leader->velocityX) {
                            stopped = true;
                        }
                    }
                    if (leader->field_24_3) {
                        if (stopped) {
                            if (leader->x == leader->previousX && leader->y == leader->previousY) {
                                if (objects[(s8)(leader->field_33C_0 << 1) >> 1]->type
                                    == FIELD_OBJECT_TYPE_FRCK) {
                                    follower->state = leader->state = 114;
                                } else {
                                    action = 3;
                                }
                            }
                        } else if ((leader->x == leader->previousX && leader->velocityX != 0)
                                   || (leader->y == leader->previousY && leader->velocityY != 0)) {
                            action = 3;
                        }
                    } else {
                        struct Coldef* coldef = leader->field_224;

                        if (coldef->solid
                            && coldef->primaryHeight + coldef->gap + coldef->secondaryHeight <= 1) {
                            action = 3;
                        } else if (stopped) {
                            follower->state = leader->state = 114;
                        } else {
                            action = 3;
                        }
                    }
                    if (follower->state == 114) {
                        leader->sub_8049000(SPRITE_ID(0, 73));
                        sprite_remove(follower->field_36C);
                        follower->direction = leader->direction;
                        follower->x = leader->x - word_839F584[leader->direction][0] * 4;
                        follower->y = leader->y - word_839F584[0][leader->direction * 2 + 1] * 4;
                        field_26E = 15;
                        field_272 = 8;
                    }
                } else if (leader->state == 111) {
                    action = 3;
                }
            } else if (follower->state == 112) {
                u16 keys = input->held & DPAD_ANY;

                if (keys) {
                    u16* entry = word_839FB24[leader->direction];
                    int i;

                    for (i = 3; i != 0; i--, entry++) {
                        if (keys == *entry) {
                            break;
                        }
                    }
                    if (i == 0) {
                        action = 1;
                    }
                }
                if (input->held & leader->field_368->actionButton) {
                    action = 1;
                }
            }
            if (follower->state <= 112 && leader->field_26_2) {
                action = 1;
            }
            break;

        case 114:
            if (--field_272 == 0) {
                play_sfx_80195B4(0x43, -1);
            }
            if (--field_26E != 0) {
                break;
            }
            follower->x = leader->x - word_839F584[leader->direction][0] * 16;
            follower->y = leader->y - word_839F584[0][leader->direction * 2 + 1] * 16;
            follower->state = leader->state = 115;
            field_26E = 20;
            leader->method7(1);
            sub_801ABE8(0, 20, 0);
            break;

        case 115:
            if (--field_26E != 0) {
                break;
            }
            {
                FieldPlayerCharacter* f = follower;
                FieldPlayerCharacter* l = leader;

                f->field_23E = l->field_23E = walkSpeed;
                f->field_260 = l->field_260 = walkSpeed;
            }
            action = 3;
            break;

        case 116:
            if (follower->airFrames == -1) {
                follower->state = 117;
            }
            break;

        case 118:
            if ((!sub_802DC0C(follower) && (follower->height == 0 || (s8)follower->field_1 != -1))
                || !follower->sub_8047B78()) {
                if (follower->sub_8047B78() == true) {
                    follower->x &= ~0xFF;
                    follower->y &= ~0xFF;
                }
                follower->sub_8046980();
                action = 3;
            } else {
                follower->sub_80461B4(objects);
                follower->sub_80465D8();
                follower->sub_804FB64(objects, 0, 0);
            }
            break;
    }

    if (leader->state <= 115 && follower->state <= 115) {
        checkWarps(leader, true, true, false);
        if (follower->field_35A_1) {
            follower->field_35A_1 = follower->sub_804D18C();
            follower->field_20C_13 = follower->field_35A_1;
        }
    }
    if (leader->state == 117 && follower->state == 117) {
        action = 3;
    }
    if ((fieldMode == FIELD_MODE_NONE || fieldMode == FIELD_MODE_FADE_IN
         || fieldMode == FIELD_MODE_NORMAL || fieldMode == FIELD_MODE_MENU)
        && action != 0) {
        if (action == 1) {
            leader->field_23E -= 0x100;
            {
                FieldPlayerCharacter* f = follower;
                FieldPlayerCharacter* l = leader;

                f->field_23E = l->field_23E;
                l->field_260 = l->field_23E;
                f->field_260 = l->field_23E;
            }
            field_26E = 4;
            leader->state = follower->state = 113;
        } else {
            {
                FieldPlayerCharacter* f = follower;
                FieldPlayerCharacter* l = leader;

                f->field_23E = l->field_23E = walkSpeed;
                f->field_260 = l->field_260 = walkSpeed;
            }
            follower->angle = follower->direction << 5;
            leader->angle = leader->direction << 5;
            follower->field_214_0 = 3;
            leader->field_214_0 = 3;
            follower->sub_8049000(SPRITE_ID(0, 1));
            leader->sub_8049000(SPRITE_ID(0, 2));
            sprite_remove(follower->field_36C);
            leader->field_239 = leader->sprite->speed = field_FA_11;
            stop_sfx_80195A8(0x158);
            stop_sfx_80195A8(0xDB);
            if (!field_2B8_4 && action == 2) {
                follower->field_20C_14 = 0;
                follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256, leader->z / 256,
                                      walkSpeed);
                follower->state = leader->state = 118;
            } else {
                follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_NORMAL;
                follower->state = leader->state = 0;
                follower->field_350_14 = leader->field_350_14 = 0;
                follower->field_358_3 = leader->field_358_3 = 0;
                follower->field_20C_13 = 0;
                follower->field_20C_14 = 1;
                follower->field_35A_1 = 0;
                brothersForm = BROTHERS_FORM_NORMAL;
                field_208_0 = 1;
                field_20B_7 = 0;
                field_20A_3 = 0;
                if (field_20B_6) {
                    field_20B_6 = 0;
                    field_2B8_4 = 0;
                    leader->field_20C_11 = 1;
                    follower->field_20C_11 = 1;
                }
                follower->field_20C_26 = leader->field_20C_26 = 1;
                sub_802DF80(0);
            }
        }
    }
    if (follower->state >= 111 && follower->state <= 113) {
        follower->sprite->speed = (s16)follower->field_23E / 16;
    } else {
        follower->sprite->speed = field_FA_11;
    }
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8038140__12FieldManager.s\"");
#else
void FieldManager::sub_8038140() {
    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_THUNDER_TICKLE;
    follower->state = leader->state = 119;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->field_20C_13 = 1;
    follower->field_20C_14 = 0;
    follower->field_35A_0 = 1;
    follower->field_35A_1 = 1;
    follower->showHandPowerSprite(2);
    field_26A_6 = 0;
    field_26E = 0;
    field_208_0 = 0;
    field_20B_7 = 1;
    leader->field_214_0 = 4;
    leader->sub_8049000(SPRITE_ID(0, 52));
    follower->field_214_0 = 4;
    follower->sub_8049000(SPRITE_ID(0, 64));
    brothersForm = BROTHERS_FORM_THUNDER_TICKLE;
    play_sfx_80195B4(0x87, -1);
}
#endif

void FieldManager::sub_80382CC() {
    int action;

    if (fieldMode > FIELD_MODE_FADE_IN) {
        if (leader->state >= 122 && leader->state <= 123 && follower->state >= 122
            && follower->state <= 123) {
            s16 velocityX = 0;
            s16 velocityY = 0;
            u8 angle;

            if (!leader->field_350_14 && input != NULL) {
                int index = (input->held & DPAD_ANY) >> 4;

                angle = byte_839F910[index];
                if (angle != 0xFF) {
                    velocityX = word_839F524[index * 2];
                    velocityY = word_839F524[index * 2 + 1];
                }
            }
            leader->velocityX = follower->velocityX = velocityX;
            leader->velocityY = follower->velocityY = velocityY;
            if (velocityX != 0 || velocityY != 0) {
                leader->state = follower->state = 123;
                leader->angle = follower->angle = angle;
            } else {
                leader->state = follower->state = 122;
            }
        } else if (leader->state == 125 || follower->state == 125) {
            sub_802C208();
        }

        sub_804FE68(leader, objects);
        sub_804FE68(follower, objects);
        if (leader->field_353_7 || follower->field_353_7) {
            leader->field_353_7 = follower->field_353_7 = 1;
        }
        if (!checkWarps(leader, leader->state == 123, true, false)) {
            checkWarps(follower, leader->state == 123, true, false);
        }

        {
            FieldPlayerCharacter* first;
            FieldPlayerCharacter* second;
            s32 x;
            s32 y;

            if (follower->state == 124 || follower->state > 125) {
                first = follower;
                second = leader;
            } else {
                first = leader;
                second = follower;
            }
            x = first->x;
            y = first->y;
            sub_80303C4(first);
            first->sub_80465D8();
            second->sub_80465D8();
            first->method13();
            second->x -= x - first->x;
            second->y -= y - first->y;
            x = second->x;
            y = second->y;
            sub_80303C4(second);
            second->method13();
            if (second->state == 125 && second->field_24_11) {
                second->x = first->x;
                second->y = first->y;
            } else {
                first->x -= x - second->x;
                first->y -= y - second->y;
            }
        }
        leader->sub_804FB64(objects, 0, 0);
        follower->sub_804FB64(objects, 0, 0);
        sub_803C7D8(leader);
        sub_803C7D8(follower);
    }

    action = 0;
    switch (leader->state) {
        case 124:
            if (leader->airFrames == -1) {
                leader->state = 126;
            } else if (follower->state == 125) {
                sub_802E2F4();
            }
            break;
        case 125:
            if (leader->airFrames >= 0) {
                leader->state = 124;
                leader->velocityX = leader->velocityY = 0;
            }
            break;
    }
    switch (follower->state) {
        case 124:
            if (follower->airFrames == -1) {
                follower->state = 126;
            } else if (leader->state == 125) {
                sub_802E2F4();
            }
            break;
        case 125:
            if (follower->airFrames >= 0) {
                follower->state = 124;
                follower->velocityX = follower->velocityY = 0;
            }
            break;
    }

    if (leader->state == 126 && follower->state == 126) {
        action = 2;
    } else if (leader->field_26_2 || follower->field_26_2) {
        action = 2;
    } else if (fieldMode == FIELD_MODE_NONE || fieldMode == FIELD_MODE_FADE_IN
               || fieldMode == FIELD_MODE_NORMAL) {
        switch (follower->state) {
            case 119:
                if (field_26E < 60) {
                    u16* entry;
                    u32 i;

                    field_26E++;
                    entry = word_839FB54;
                    for (i = 0; i < 4; i++, entry += 2) {
                        if (entry[0] == field_26E) {
                            sprite_set_animation(follower->field_36C, entry[1], 0);
                            if (field_26E == 59) {
                                stop_sfx_80195A8(0x87);
                                play_sfx_80195B4(0x156, -1);
                            }
                        }
                    }
                }
                if (field_20A_1) {
                    action = 2;
                    break;
                }
                if (input->held & follower->field_368->actionButton) {
                    break;
                }
                if (field_26E < 60) {
                    stop_sfx_80195A8(0x87);
                    action = 2;
                } else {
                    stop_sfx_80195A8(0x156);
                    follower->state = leader->state = 120;
                    follower->method7(1);
                    follower->sprite->animationEndAction = ANIMATION_END_STOP;
                    play_sfx_80195B4(0xDA, -1);
                }
                break;

            case 120:
                if (!follower->sprite->animationComplete) {
                    break;
                }
                follower->field_214_0 = 0;
                follower->state = leader->state = 121;
                sprite_set_animation(follower->field_36C, 5, 0);
                follower->field_36C->animationEndAction = ANIMATION_END_STOP;
                break;

            case 121: {
                FieldObject** object;
                int i;

                if (follower->field_36C->field_21 != 5 || !follower->field_36C->animationComplete) {
                    break;
                }
                follower->field_350_14 = leader->field_350_14 = 0;
                leader->state = follower->state = 122;
                sub_802DF80(0);
                leader->field_214_0 = 1;
                follower->field_214_0 = 2;
                sprite_set_animation(follower->field_36C, 6, 0);
                leader->sub_8049000(SPRITE_ID(0, 53));
                follower->sub_8049000(SPRITE_ID(0, 76));
                field_26E = 240;
                follower->field_35A_1 = follower->sub_804D18C();
                follower->field_20C_13 = follower->field_35A_1;
                for (object = &objects[2], i = 0; i < objectCount - 2; i++, object++) {
                    if (follower->sub_804B25C(*object)) {
                        break;
                    }
                }
                if (i == objectCount - 2) {
                    follower->field_35A_0 = 0;
                }
                field_20A_3 = 0;
                break;
            }

            case 122:
            case 123:
                if (fieldMode == FIELD_MODE_NONE || fieldMode == FIELD_MODE_FADE_IN) {
                    break;
                }
                if (sub_8025D24(4) || sub_8025D24(0) || sub_8025D24(1) || sub_8025D24(2)
                    || sub_8025D24(3)) {
                    sub_8029878();
                }
                if (leader->airFrames >= 0) {
                    leader->state = 124;
                } else if (follower->airFrames >= 0) {
                    sub_802DF80(1);
                    leader->state = 125;
                    field_208_5 = 1;
                }
                if (follower->airFrames >= 0) {
                    follower->state = 124;
                } else if (leader->airFrames >= 0) {
                    if (follower->sub_804D18C()) {
                        follower->x = leader->x;
                        follower->y = leader->y;
                        follower->z = leader->z;
                        follower->height = leader->height;
                    }
                    sub_802DF80(0);
                    follower->state = 125;
                    field_208_5 = 1;
                }
                if (follower->height == 0) {
                    follower->field_20C_14 = 1;
                }
                if (follower->field_35A_1) {
                    follower->field_35A_1 = follower->sub_804D18C();
                    follower->field_20C_13 = follower->field_35A_1;
                }
                if (follower->field_35A_0) {
                    FieldObject** object;
                    int i;

                    for (object = &objects[2], i = 0; i < objectCount - 2; i++, object++) {
                        if (follower->sub_804B25C(*object)) {
                            break;
                        }
                    }
                    if (i == objectCount - 2) {
                        follower->field_35A_0 = 0;
                    }
                }
                if (leader->state > 123 || follower->state > 123) {
                    follower->sub_8049000(SPRITE_ID(0, 2));
                    leader->sub_8049000(SPRITE_ID(0, 1));
                    follower->field_214_0 = 2;
                    leader->field_214_0 = 2;
                    sprite_remove(follower->field_36C);
                    follower->field_20C_14 = 1;
                    {
                        FieldPlayerCharacter* l = leader;
                        FieldPlayerCharacter* f = follower;

                        f->velocityX = f->velocityY = 0;
                        l->velocityX = l->velocityY = 0;
                    }
                    stop_sfx_80195A8(0xDA);
                } else {
                    if (!field_26A_6) {
                        field_26E--;
                    }
                    if (field_20A_1 || field_26E <= 0) {
                        action = 2;
                    }
                }
                break;

            case 127:
                if ((!sub_802DC0C(follower) && (follower->height == 0 || (s8)follower->field_1 != -1))
                    || !follower->sub_8047B78()) {
                    if (follower->sub_8047B78() == true) {
                        follower->x &= ~0xFF;
                        follower->y &= ~0xFF;
                    }
                    follower->sub_8046980();
                    action = 2;
                } else {
                    follower->sub_80461B4(objects);
                    follower->sub_80465D8();
                    follower->sub_804FB64(objects, 0, 0);
                }
                break;
        }
    }

    if (action == 0) {
        return;
    }
    {
        FieldPlayerCharacter* f = follower;
        FieldPlayerCharacter* l = leader;

        f->field_23E = l->field_23E = walkSpeed;
        f->field_260 = l->field_260 = walkSpeed;
    }
    follower->angle = follower->direction << 5;
    leader->angle = leader->direction << 5;
    follower->field_214_0 = 3;
    leader->field_214_0 = 3;
    follower->sub_8049000(SPRITE_ID(0, 2));
    leader->sub_8049000(SPRITE_ID(0, 1));
    sprite_remove(follower->field_36C);
    stop_sfx_80195A8(0x156);
    stop_sfx_80195A8(0xDA);
    if (action == 1) {
        follower->field_20C_14 = 0;
        leader->velocityX = follower->velocityX = 0;
        leader->velocityY = follower->velocityY = 0;
        follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256,
                              (leader->z + leader->height) / 256, walkSpeed);
        follower->state = leader->state = 127;
    } else {
        follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_NORMAL;
        follower->state = leader->state = 0;
        follower->field_350_14 = leader->field_350_14 = 0;
        follower->field_358_3 = leader->field_358_3 = 0;
        follower->field_20C_13 = 0;
        follower->field_20C_14 = 1;
        follower->field_35A_0 = 0;
        follower->field_35A_1 = 0;
        brothersForm = BROTHERS_FORM_NORMAL;
        field_20B_7 = 0;
        field_208_0 = 1;
        field_20A_3 = 0;
        sub_802DF80(0);
    }
}

void FieldManager::sub_8039078() {
    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    if (leader->objectIndex == BROTHER_MARIO) {
        follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_15;
        follower->state = leader->state = 136;
    } else {
        follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_14;
        follower->state = leader->state = 128;
    }
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->field_212_6 = 1;
    follower->field_20C_13 = 1;
    follower->field_35A_1 = 1;
    field_208_0 = 0;
    field_20B_7 = 1;
    follower->field_214_0 = 4;
    follower->sub_8049000(follower->objectIndex == BROTHER_MARIO ? SPRITE_ID(0, 37) : SPRITE_ID(0, 63));
    follower->jumpToHeight(((leader->z + leader->height) - (follower->z + follower->height)) / 256 + 16,
                           0xEE >> isUnderwater, (s16)walkSpeed);
    follower->sprite->animationEndAction = ANIMATION_END_STOP;
    field_26E = 0;
    field_272 = 30;
    play_sfx_80195B4(0x3C, -1);
}

void FieldManager::sub_8039250() {
    if ((follower->state >= 128 && follower->state <= 131)
        || (follower->state >= 136 && follower->state <= 139)) {
        s8* table = leader->objectIndex == BROTHER_MARIO ? byte_839F730 : byte_839F6CE;
        int divisor = leader->objectIndex == BROTHER_MARIO ? 32 : 36;
        //! Possible fake match: a literal 48 gets folded into `field_26E <= 47` (cmp #47; bgt),
        //! the target has cmp #48; bge.
        int lastStep = 48;

        leader->sprite->xScale = table[field_26E * 2] * 16;
        leader->sprite->yScale = table[field_26E * 2 + 1] * 256 / divisor;
        leader->field_23B = leader->sprite->yScale < 0x100 ? -1 : 0;
        if (field_26E < lastStep) {
            field_26E++;
        }
    }

    switch (follower->state) {
        case 128:
        case 136:
            follower->updateAirborne();
            if (!field_209_6 && follower->z + follower->height < leader->z + leader->height) {
                follower->height = leader->z + leader->height - follower->z;
            }
            if (follower->sprite->animationComplete) {
                leader->state++;
                follower->state++;
                field_270 = 16;
                follower->field_214_0 = 0;
                follower->sprite->animationEndAction = ANIMATION_END_STOP;
            }
            break;

        case 129:
        case 137:
            if (--field_270 == 0) {
                leader->state++;
                follower->state++;
                follower->field_214_0 = 0;
            }
            break;

        case 130:
        case 138:
            follower->height += 0x400;
            if ((field_270 += 0x400) > 0x11FF) {
                leader->state++;
                follower->state++;
                follower->field_214_0 = 1;
                follower->sprite->speed = -16;
            }
            break;

        case 131:
        case 139:
            if (follower->field_214_0 == 0) {
                follower->updateAirborne();
                if (!field_209_6 && follower->z + follower->height < leader->z + leader->height) {
                    follower->height = leader->z + leader->height - follower->z;
                    follower->airFrames = -1;
                }
            } else if (follower->sprite->frame == 0) {
                follower->field_214_0 = 0;
                follower->sub_8049000(follower->objectIndex == BROTHER_MARIO ? SPRITE_ID(0, 1)
                                                                             : SPRITE_ID(0, 2));
                follower->field_212_6 = 0;
                follower->startAirborne(0, -1, -1);
                follower->airStartZ = leader->z;
            }
            if (field_26E == 48 && follower->airFrames == -1) {
                leader->state++;
                follower->state++;
                follower->field_212_6 = 0;
                field_208_0 = 1;
                leader->sprite->xScale = 0x100;
                leader->sprite->yScale = 0x100;
                leader->field_23B = 0;
                follower->field_214_0 = 3;
                leader->field_214_0 = 3;
                if (follower->objectIndex == BROTHER_MARIO) {
                    follower->sub_8049000(SPRITE_ID(0, 1));
                    leader->sub_8049000(SPRITE_ID(0, 2));
                } else {
                    follower->sub_8049000(SPRITE_ID(0, 2));
                    leader->sub_8049000(SPRITE_ID(0, 1));
                }
                field_26E = 8;
            }
            break;

        case 132:
        case 140:
            if (--field_26E == 0) {
                leader->state++;
                follower->state++;
                leader->direction += 4;
                leader->startAirborne(0x27A, 0x75, -1);
                leader->field_214_0 = 1;
            }
            break;

        case 133:
        case 141:
            leader->updateAirborne();
            leader->sub_80465D8();
            leader->sub_804FB64(objects, 0, 0);
            if (leader->airFrames == -1) {
                leader->state++;
                follower->state++;
                leader->sub_8049000(leader->objectIndex == BROTHER_MARIO ? SPRITE_ID(0, 102)
                                                                         : SPRITE_ID(0, 132));
                field_26E = 60;
                play_sfx_80195B4(leader->objectIndex == BROTHER_MARIO ? 0xF0 : 0xFE, -1);
            }
            break;

        case 134:
        case 142:
            if (--field_26E == 0) {
                {
                    FieldPlayerCharacter* f = follower;
                    FieldPlayerCharacter* l = leader;

                    l->field_214_0 = 3;
                    f->field_214_0 = 3;
                }
                if (follower->objectIndex == BROTHER_MARIO) {
                    follower->sub_8049000(SPRITE_ID(0, 1));
                    leader->sub_8049000(SPRITE_ID(0, 2));
                } else {
                    follower->sub_8049000(SPRITE_ID(0, 2));
                    leader->sub_8049000(SPRITE_ID(0, 1));
                }
                follower->field_20C_14 = 0;
                if (!field_209_6) {
                    follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256, leader->z / 256,
                                          follower->field_23E);
                }
                leader->state++;
                follower->state++;
            }
            break;

        case 135:
        case 143:
            if ((!sub_802DC0C(follower) && (follower->height == 0 || (s8)follower->field_1 != -1))
                || !follower->sub_8047B78()) {
                if (follower->sub_8047B78() == true) {
                    follower->x &= ~0xFF;
                    follower->y &= ~0xFF;
                }
                follower->sub_8046980();
                follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_NORMAL;
                follower->state = leader->state = 0;
                follower->field_358_3 = leader->field_358_3 = 0;
                follower->field_350_14 = leader->field_350_14 = 0;
                follower->field_20C_13 = 0;
                follower->field_20C_14 = 1;
                follower->field_35A_1 = 0;
                field_20B_7 = 0;
                field_20A_3 = 0;
                sub_802DF80(0);
            } else {
                follower->sub_80461B4(objects);
                follower->sub_80465D8();
                follower->sub_804FB64(objects, 0, 0);
            }
            break;
    }

    if (--field_272 == 0) {
        play_sfx_80195B4(0xD6, -1);
    }
}

void FieldManager::sub_8039A00() {
    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_FIRE_DASH_LUIGI_ANGRY;
    follower->state = leader->state = 144;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->field_20C_13 = 1;
    follower->field_35A_1 = 1;
    follower->showHandPowerSprite(2);
    field_26E = 0;
    field_208_0 = 0;
    field_20B_7 = 1;
    leader->field_214_0 = 4;
    leader->sub_8049000(SPRITE_ID(0, 77));
    follower->field_214_0 = 4;
    follower->sub_8049000(SPRITE_ID(0, 38));
    leader->field_239 = leader->sprite->speed = 8;
    play_sfx_80195B4(0x157, -1);
}

void FieldManager::sub_8039B5C() {
    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    follower->field_368->actionMode = leader->field_368->actionMode =
        ACTION_MODE_THUNDER_TICKLE_MARIO_ANGRY;
    follower->state = leader->state = 152;
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->field_20C_13 = 1;
    follower->field_35A_1 = 1;
    follower->showHandPowerSprite(2);
    field_26E = 0;
    field_208_0 = 0;
    field_20B_7 = 1;
    leader->field_214_0 = 4;
    leader->sub_8049000(SPRITE_ID(0, 52));
    follower->field_214_0 = 4;
    follower->sub_8049000(SPRITE_ID(0, 64));
    play_sfx_80195B4(0x87, -1);
}

void FieldManager::sub_8039C9C() {
    int action;

    sub_80303C4(leader);
    sub_80303C4(follower);
    action = 0;
    switch (follower->state) {
        case 144:
        case 152:
            if (field_26E < 60) {
                u16* entry;
                //! Possible fake match: with a literal 4, `i < 4` is folded into `i <= 3` and the
                //! reversed loop counts 3..0 (bge) instead of the target's 4..1 (bne).
                int count = 4;
                int i;

                field_26E++;
                entry = follower->state == 144 ? word_839FB64 : word_839FB7C;
                for (i = 0; i < count; i++, entry += 3) {
                    if (entry[0] == field_26E) {
                        sprite_set_animation(follower->field_36C, entry[1], 0);
                        leader->field_239 = leader->sprite->speed = entry[2];
                        if (field_26E == 59) {
                            stop_sfx_80195A8(follower->objectIndex == BROTHER_MARIO ? 0x157 : 0x87);
                            play_sfx_80195B4(follower->objectIndex == BROTHER_MARIO ? 0x158 : 0x156,
                                             -1);
                        }
                    }
                }
            }
            if (input->held & follower->field_368->actionButton) {
                break;
            }
            if (field_26E < 60) {
                stop_sfx_80195A8(follower->objectIndex == BROTHER_MARIO ? 0x157 : 0x87);
                action = 1;
            } else {
                stop_sfx_80195A8(follower->objectIndex == BROTHER_MARIO ? 0x158 : 0x156);
                follower->state++;
                leader->state++;
                follower->method7(1);
                follower->sprite->animationEndAction = ANIMATION_END_STOP;
                play_sfx_80195B4(follower->objectIndex == BROTHER_MARIO ? 0x9C : 0x9A, -1);
            }
            break;

        case 145:
        case 153:
            if (follower->sprite->animationComplete) {
                follower->field_214_0 = 0;
                follower->state++;
                leader->state++;
                sprite_set_animation(follower->field_36C, 5, 0);
                follower->field_36C->animationEndAction = ANIMATION_END_STOP;
            }
            break;

        case 146:
        case 154:
            if (follower->field_36C->field_21 == 5 && follower->field_36C->animationComplete) {
                leader->state++;
                follower->state++;
                leader->sub_8049000(leader->objectIndex == BROTHER_MARIO ? SPRITE_ID(0, 53)
                                                                         : SPRITE_ID(0, 78));
                sprite_remove(follower->field_36C);
                leader->field_239 = leader->sprite->speed = field_FA_11;
                leader->startAirborne(0x52C, 0x75, -1);
                play_sfx_80195B4(leader->objectIndex == BROTHER_MARIO ? 0x11 : 0x23, -1);
            }
            break;

        case 147:
        case 155:
            leader->updateAirborne();
            leader->sub_80465D8();
            leader->sub_804FB64(objects, 0, 0);
            if (leader->airFrames == -1) {
                leader->state++;
                follower->state++;
                follower->field_214_0 = 3;
                leader->field_214_0 = 3;
                if (leader->objectIndex == BROTHER_MARIO) {
                    leader->sub_8049000(SPRITE_ID(0, 1));
                    follower->sub_8049000(SPRITE_ID(0, 2));
                } else {
                    leader->sub_8049000(SPRITE_ID(0, 2));
                    follower->sub_8049000(SPRITE_ID(0, 1));
                }
                field_26E = 8;
            }
            break;

        case 148:
        case 156:
            if (--field_26E == 0) {
                leader->direction += 4;
                leader->startAirborne(0x27A, 0x75, -1);
                leader->field_214_0 = 1;
                leader->state++;
                follower->state++;
            }
            break;

        case 149:
        case 157:
            leader->updateAirborne();
            leader->sub_80465D8();
            leader->sub_804FB64(objects, 0, 0);
            if (leader->airFrames == -1) {
                leader->sub_8049000(leader->objectIndex == BROTHER_MARIO ? SPRITE_ID(0, 102)
                                                                         : SPRITE_ID(0, 132));
                leader->state++;
                follower->state++;
                field_26E = 60;
                stop_sfx_80195A8(follower->objectIndex == BROTHER_MARIO ? 0x9C : 0x9A);
                play_sfx_80195B4(leader->objectIndex == BROTHER_MARIO ? 0xF0 : 0xFE, -1);
            }
            break;

        case 150:
        case 158:
            if (--field_26E == 0) {
                action = 1;
            }
            break;

        case 151:
        case 159:
            if ((!sub_802DC0C(follower) && (follower->height == 0 || (s8)follower->field_1 != -1))
                || !follower->sub_8047B78()) {
                if (follower->sub_8047B78() == true) {
                    follower->x &= ~0xFF;
                    follower->y &= ~0xFF;
                }
                follower->sub_8046980();
                follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_NORMAL;
                follower->state = leader->state = 0;
                follower->field_358_3 = leader->field_358_3 = 0;
                follower->field_350_14 = leader->field_350_14 = 0;
                follower->field_20C_13 = 0;
                follower->field_20C_14 = 1;
                follower->field_35A_1 = 0;
                field_20A_3 = 0;
                sub_802DF80(0);
            } else {
                follower->sub_80461B4(objects);
                follower->sub_80465D8();
                follower->sub_804FB64(objects, 0, 0);
            }
            break;
    }

    if (action == 0) {
        return;
    }
    field_208_0 = 1;
    field_20B_7 = 0;
    if (leader->objectIndex == BROTHER_MARIO) {
        leader->state = follower->state = 159;
    } else {
        leader->state = follower->state = 151;
    }
    follower->field_214_0 = 3;
    leader->field_214_0 = 3;
    if (leader->objectIndex == BROTHER_MARIO) {
        leader->sub_8049000(SPRITE_ID(0, 1));
        follower->sub_8049000(SPRITE_ID(0, 2));
    } else {
        leader->sub_8049000(SPRITE_ID(0, 2));
        follower->sub_8049000(SPRITE_ID(0, 1));
    }
    sprite_remove(follower->field_36C);
    leader->field_239 = leader->sprite->speed = field_FA_11;
    follower->field_20C_14 = 0;
    if (!field_209_6) {
        follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256, leader->z / 256, walkSpeed);
    }
}

void FieldManager::sub_803A438() {
    sub_802C4D4(1, 1);
    sub_803C6C8(1);
    if (leader->objectIndex == BROTHER_MARIO) {
        follower->state = leader->state = 97;
    } else {
        follower->state = leader->state = 77;
    }
    follower->field_350_14 = leader->field_350_14 = 1;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->field_20C_13 = 1;
    follower->field_35A_1 = 1;
    follower->showHandPowerSprite(2);
    field_26E = 0;
    field_20B_7 = 1;
    field_20A_3 = 1;
    leader->direction = follower->direction;
    follower->field_214_0 = 4;
    follower->sub_8049000(leader->objectIndex == BROTHER_MARIO ? SPRITE_ID(0, 64) : SPRITE_ID(0, 38));
    play_sfx_80195B4(follower->objectIndex == BROTHER_MARIO ? 0x157 : 0x87, -1);
}

void FieldManager::sub_803A584() {
    switch (follower->state) {
        case 77:
        case 97:
            if (field_26E < 60) {
                u16* entry;
                //! Possible fake match: with a literal 4, `i < 4` is folded into `i <= 3` and the
                //! reversed loop counts 3..0 (bge) instead of the target's 4..1 (bne).
                int count = 4;
                int i;

                field_26E++;
                //! \bug Copied from sub_8039C9C: the states here are 77 and 97, never 144, so
                //! word_839FBAC is always used.
                entry = follower->state == 144 ? word_839FB94 : word_839FBAC;
                for (i = 0; i < count; i++, entry += 3) {
                    if (entry[0] == field_26E) {
                        sprite_set_animation(follower->field_36C, entry[1], 0);
                        leader->field_239 = leader->sprite->speed = entry[2];
                        if (field_26E == 59) {
                            stop_sfx_80195A8(follower->objectIndex == BROTHER_MARIO ? 0x157 : 0x87);
                            play_sfx_80195B4(follower->objectIndex == BROTHER_MARIO ? 0x158 : 0x156,
                                             -1);
                        }
                    }
                }
            }
            if (input->held & follower->field_368->actionButton) {
                break;
            }
            if (field_26E < 60) {
                stop_sfx_80195A8(follower->objectIndex == BROTHER_MARIO ? 0x157 : 0x87);
                sprite_remove(follower->field_36C);
                follower->field_214_0 = 3;
                follower->sub_8049000(leader->objectIndex == BROTHER_MARIO ? SPRITE_ID(0, 2)
                                                                           : SPRITE_ID(0, 1));
                follower->field_20C_14 = 0;
                follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256, leader->z / 256,
                                      follower->field_23E);
                follower->state += 3;
                leader->state += 3;
            } else {
                stop_sfx_80195A8(follower->objectIndex == BROTHER_MARIO ? 0x158 : 0x156);
                follower->state++;
                leader->state++;
                follower->method7(1);
                follower->sprite->animationEndAction = ANIMATION_END_STOP;
                play_sfx_80195B4(follower->objectIndex == BROTHER_MARIO ? 0x9C : 0x9A, -1);
            }
            break;

        case 78:
        case 98:
            if (follower->sprite->animationComplete) {
                field_26E = 40;
                follower->field_214_0 = 0;
                follower->state++;
                leader->state++;
                sprite_set_animation(follower->field_36C, 5, 0);
                follower->field_36C->animationEndAction = ANIMATION_END_STOP;
            }
            break;

        case 79:
        case 99: {
            Sprite* sprite = follower->field_36C;

            if (sprite->field_21 == 5 && sprite->animationComplete) {
                sprite_set_animation(sprite, 6, 0);
            }
            if (field_26E != 0 && --field_26E == 0) {
                sprite_remove(follower->field_36C);
                follower->field_214_0 = 3;
                follower->sub_8049000(leader->objectIndex == BROTHER_MARIO ? SPRITE_ID(0, 2)
                                                                           : SPRITE_ID(0, 1));
                follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256, 0, follower->field_23E);
                follower->state++;
                leader->state++;
                stop_sfx_80195A8(follower->objectIndex == BROTHER_MARIO ? 0x157 : 0x87);
            }
            break;
        }

        case 80:
        case 100:
            if ((!sub_802DC0C(follower) && (follower->height == 0 || (s8)follower->field_1 != -1))
                || !follower->sub_8047B78()) {
                if (follower->sub_8047B78() == true) {
                    follower->x &= ~0xFF;
                    follower->y &= ~0xFF;
                }
                follower->sub_8046980();
                follower->state = leader->state = 0;
                follower->field_350_14 = leader->field_350_14 = 0;
                follower->field_358_3 = leader->field_358_3 = 0;
                follower->field_20C_13 = 0;
                follower->field_20C_14 = 1;
                follower->field_35A_1 = 0;
                field_20B_7 = 0;
                field_20A_3 = 0;
                sub_802DF80(0);
            } else {
                follower->sub_80461B4(objects);
                follower->sub_80465D8();
                follower->sub_804FB64(objects, 0, 0);
            }
            break;
    }
}

void FieldManager::sub_803AAE4() {
    sub_802C4D4(1, 1);
    follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_SURFBOARD_LUIGI;
    follower->state = leader->state = 161;
    follower->field_358_3 = leader->field_358_3 = 1;
    follower->field_214_0 = leader->field_214_0 = 1;
    follower->sub_8049000(SPRITE_ID(0, 55));
    leader->sub_8049000(SPRITE_ID(0, 79));
    follower->sub_8040804(true, 1, -1);
    leader->sub_8040804(true, 2, -1);
    follower->field_20C_11 = leader->field_20C_11 = 0;
    leader->velocityX = 0x99;
    leader->velocityY = 0;
    leader->field_230 = leader->field_234 = follower->field_230 = follower->field_234 = -1;
    follower->field_214_13 = 14;
    field_26E = 0;
    field_264 = 0;
    field_268 = 0;
    field_261 = 0;
    field_26A_2 = 0;
    field_209_7 = 2;
    brothersForm = BROTHERS_FORM_SURFBOARD_LUIGI;
    play_sfx_80195B4(0x59, -1);
}

void FieldManager::sub_803AC8C() {
    brothersTogether = 1;
    sub_802C4D4(1, 1);
    sub_803C6C8(3);
    follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_18;
    follower->state = leader->state = 160;
    follower->field_358_3 = leader->field_358_3 = 1;
    leader->field_368->field_12 = leader->field_368->field_10[0];
    leader->field_368->field_10[0] = 0;
    follower->field_368->field_15 = follower->field_368->field_10[1];
    follower->field_368->field_10[1] = 0;
    field_208_0 = 0;
    field_209_7 = 2;
    brothersForm = BROTHERS_FORM_SURFBOARD_LUIGI;
}

void FieldManager::sub_803ADA8(bool arg) {
    FieldObject* object;

    follower->state = leader->state = 168;
    object = objects[(s8)(leader->field_33C_0 << 1) >> 1];
    leader->sub_8045A94(1, 0, object->x / 256, object->y / 256, 0, 0x200);
    field_26A_1 = arg;
    field_20B_7 = 1;
}

void FieldManager::sub_803AE38() {
    brothersTogether = 0;
    follower->field_368->actionMode = leader->field_368->actionMode = ACTION_MODE_NORMAL;
    follower->state = leader->state = 0;
    follower->field_350_14 = leader->field_350_14 = 0;
    follower->field_358_3 = leader->field_358_3 = 0;
    follower->field_210_3 = leader->field_210_3 = 1;
    follower->field_20C_13 = leader->field_20C_13 = 0;
    {
        FieldPlayerCharacter* l = leader;

        l->field_23E = walkSpeed;
        l->field_260 = walkSpeed;
    }
    field_208_0 = 1;
    follower->field_214_0 = 3;
    leader->field_214_0 = 3;
    field_209_7 = 0;
    brothersForm = BROTHERS_FORM_NORMAL;
    leader->field_368->field_10[0] = leader->field_368->field_12;
    leader->field_368->field_12 = -1;
    follower->field_368->field_10[1] = follower->field_368->field_15;
    follower->field_368->field_15 = -1;
    follower->sub_8049000(SPRITE_ID(0, 1));
    leader->sub_8049000(SPRITE_ID(0, 2));
    sub_802E4C8(1);
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803AFCC__12FieldManager.s\"");
#else
void FieldManager::sub_803AFCC() {
    if (follower->field_368->actionMode == ACTION_MODE_18) {
        if (follower->airFrames >= 0) {
            follower->method7(1);
        }
    } else {
        if (fieldMode != FIELD_MODE_NONE && field_2B8_4) {
            leader->field_20C_11 = 0;
            leader->sub_80461B4(objects);
            leader->sub_80465D8();
            field_2B8_4 = leader->sub_8047B78();
            if (!field_2B8_4) {
                leader->field_20C_11 = 1;
                leader->field_20C_14 = 1;
                leader->field_20C_13 = 0;
                follower->field_20C_26 = leader->field_20C_26 = 1;
            }
        }

        if (fieldMode > FIELD_MODE_FADE_IN) {
            switch (follower->state) {
                case 161:
                    sub_804FE68(leader, objects);
                    field_26E += leader->velocityX;
                    if (field_26E > 0x1FFF) {
                        follower->field_20C_11 = leader->field_20C_11 = 1;
                        follower->field_20C_13 = leader->field_20C_13 = 1;
                        follower->field_210_3 = leader->field_210_3 = 0;
                        {
                            FieldPlayerCharacter* l = leader;

                            l->field_23E = l->field_260 = 0;
                        }
                        follower->state = leader->state = 162;
                        follower->method7(1);
                        follower->sprite->animationEndAction = ANIMATION_END_STOP;
                        field_26E = 0;
                    }
                    break;

                case 162:
                    if (leader->sprite->animationComplete) {
                        follower->state = leader->state = 163;
                        follower->method7(1);
                        follower->sprite->animationEndAction = ANIMATION_END_STOP;
                        play_sfx_80195B4(0x58, -1);
                    }
                    break;

                case 163:
                    if (!leader->sprite->animationComplete) {
                        break;
                    }
                    follower->sub_8049000(SPRITE_ID(0, 56));
                    leader->sub_8049000(SPRITE_ID(0, 80));
                    follower->field_20C_13 = leader->field_20C_13 = 0;
                    follower->state = leader->state = 164;
                    // fallthrough
                case 164:
                    if (fieldMode == FIELD_MODE_NORMAL) {
                        if (leader->height == 0 && sub_8025D24(0)) {
                            if (field_26A_2) {
                                leader->startAirborne(0x200, 0x3F, (s16)leader->field_23E);
                                field_26A_3 = 1;
                            } else {
                                leader->startAirborne(0x3F8, 0x3F, (s16)leader->field_23E);
                                field_26A_3 = 0;
                            }
                            play_sfx_80195B4(0x2B, -1);
                        }
                        if (sub_8025D24(4) || sub_8025D24(1)) {
                            sub_8029878();
                        }
                    }
                    if (leader->airFrames != -1) {
                        follower->state = leader->state = 165;
                    }
                    // fallthrough
                case 165:
                case 166:
                case 167:
                    if (follower->state == 167) {
                        leader->field_23E -= leader->direction == leader->angle >> 5 ? 12 : 128;
                        if ((s16)leader->field_23E < 0) {
                            leader->field_23E = 0;
                        }
                    }
                    if (field_26E > 0) {
                        field_26E--;
                    }
                    if (fieldMode == FIELD_MODE_NORMAL && leader->field_2B5_0 == 0
                        && leader->field_2B5_3 == 0) {
                        if (field_26E == 0 && (s16)leader->field_23E > 24) {
                            if (leader->state == 164) {
                                u16* keys = word_839FBE4[leader->direction];
                                int i;

                                for (i = 0; i < 4; i++) {
                                    if ((input->held & DPAD_ANY) == keys[i]) {
                                        leader->direction += byte_839FC24[i] / 32;
                                        break;
                                    }
                                }
                            } else if (leader->state == 165 || leader->state == 166) {
                                u8 angle = byte_839F910[(input->held & DPAD_ANY) >> 4];

                                if (angle != 0xFF) {
                                    leader->direction = angle >> 5;
                                }
                            }
                        }
                        if (leader->state == 164 && field_261 == 0) {
                            leader->angle = leader->direction << 5;
                        }
                        field_26A_2 = 0;
                        if ((s16)leader->field_23E > 0xFF && field_261 == 0) {
                            u16* keys = word_839FC28[leader->direction];
                            int i;

                            for (i = 0; i < 3; i++) {
                                if ((input->held & DPAD_ANY) == keys[i]) {
                                    field_26A_2 = 1;
                                    leader->field_23E -= 12;
                                    if ((s16)leader->field_23E < 0x100) {
                                        leader->field_23E = 0x100;
                                    }
                                    break;
                                }
                            }
                        }
                        if (leader->state == 164 && !field_26A_2) {
                            leader->field_23E += 25;
                            if ((s16)leader->field_23E > 0x300) {
                                leader->field_23E = 0x300;
                            }
                        }
                    }
                    if (field_261 != 0) {
                        s32 previous;

                        field_268 = ArcTan2((s16)leader->field_23E, 0x1D);
                        if (field_261 < 0) {
                            field_268 = -field_268;
                        }
                        previous = field_264;
                        field_264 += field_268;
                        leader->angle = field_264 / 256 + field_260;
                        if (field_261 > 0) {
                            if (previous <= 0x1554) {
                                if (field_264 > 0x1554) {
                                    leader->direction = (field_260 >> 5) + 1;
                                }
                            } else if (previous <= 0x3554 && field_264 > 0x3554) {
                                leader->direction = (field_260 >> 5) + 2;
                            }
                        } else {
                            if (previous > -0x1555) {
                                if (field_264 <= -0x1555) {
                                    leader->direction = (field_260 >> 5) - 1;
                                }
                            } else if (previous > -0x3555 && field_264 <= -0x3555) {
                                leader->direction = (field_260 >> 5) - 2;
                            }
                        }
                        if ((field_261 > 0 && field_261 * 256 <= field_264)
                            || (field_261 < 0 && field_261 * 256 >= field_264)) {
                            leader->angle = field_261 + field_260;
                            leader->direction = leader->angle >> 5;
                            field_261 = 0;
                            field_268 = 0;
                            field_264 = 0;
                        }
                    }
                    leader->velocityX = (s16)leader->field_23E * word_8198504[leader->angle] / 0x4000;
                    leader->velocityY = -(s16)leader->field_23E * word_8198584[leader->angle] / 0x4000;
                    sub_804FE68(leader, objects);
                    switch (follower->state) {
                        case 165:
                            if (leader->velocityZ < 0) {
                                follower->state = leader->state = 166;
                            }
                            break;
                        case 166:
                            if (leader->airFrames == -1) {
                                follower->state = leader->state = 167;
                                play_sfx_80195B4(0x57, -1);
                            } else if (leader->velocityZ > 0) {
                                follower->state = leader->state = 165;
                            }
                            break;
                        case 167:
                            if (leader->sprite->animationComplete) {
                                follower->state = leader->state = 164;
                            } else if (leader->velocityZ > 0) {
                                follower->state = leader->state = 165;
                            }
                            break;
                    }
                    if (leader->state != leader->previousState
                        || leader->direction != leader->previousDirection) {
                        leader->method7(1);
                        follower->method7(1);
                        if (leader->state == 167) {
                            leader->sprite->animationEndAction = ANIMATION_END_STOP;
                            follower->sprite->animationEndAction = ANIMATION_END_STOP;
                        }
                    }
                    break;

                case 168:
                    leader->sub_80461B4(objects);
                    if (!leader->sub_8047B78()) {
                        field_26E = 60;
                        follower->state = leader->state = 169;
                    }
                    break;

                case 169:
                    if (field_26E % 2 == 0) {
                        leader->direction++;
                    }
                    if (field_26E > 0) {
                        field_26E--;
                    }
                    if (field_26E == 0) {
                        follower->state = leader->state = 170;
                        follower->sub_8049000(SPRITE_ID(0, 57));
                        leader->sub_8049000(SPRITE_ID(0, 81));
                        follower->sub_8040804(true, -1, -1);
                        leader->sub_8040804(true, -1, -1);
                        follower->sprite->animationEndAction = ANIMATION_END_STOP;
                        leader->sprite->animationEndAction = ANIMATION_END_STOP;
                    }
                    break;

                case 170:
                    if (leader->sprite->animationComplete) {
                        leader->setSpriteActive(false);
                        leader->sub_804776C(0);
                    }
                    if (follower->sprite->animationComplete) {
                        follower->setSpriteActive(false);
                        follower->sub_804776C(0);
                    }
                    if (!leader->spriteActive && !follower->spriteActive && field_26A_1) {
                        SurfboardExit* exit;

                        for (exit = stru_839FBC4; exit->roomId != roomId; exit++) {
                        }
                        currentWarp = &exit->warp;
                        sub_803AE38();
                        sub_8027030(2, 16, 0, 0xFFFF, 0xFFFF);
                        leader->field_350_14 = 1;
                        follower->field_350_14 = 1;
                        field_20B_7 = 0;
                        fieldMode = FIELD_MODE_SURFBOARD_WARP;
                    }
                    break;

                case 171:
                    if (field_26E > 0xFFF) {
                        leader->field_23E -= 8;
                        if ((s16)leader->field_23E < 8) {
                            leader->field_23E = 8;
                        }
                        leader->velocityX =
                            (s16)leader->field_23E * word_8198504[leader->angle] / 0x4000;
                        leader->velocityY =
                            -(s16)leader->field_23E * word_8198584[leader->angle] / 0x4000;
                    }
                    field_26E += leader->field_23E;
                    sub_804FE68(leader, objects);
                    if (field_26E > 0x4FFF) {
                        follower->field_210_3 = leader->field_210_3 = 1;
                        follower->field_20C_13 = leader->field_20C_13 = 0;
                        leader->field_214_0 = 3;
                        follower->sub_8049000(SPRITE_ID(0, 1));
                        follower->sub_8045A94(2, 1, -word_8198504[leader->angle] * 24 / 0x4000,
                                              word_8198584[leader->angle] * 24 / 0x4000, 0, 25);
                        follower->sub_8047B08(1, 32);
                        follower->state = leader->state = 172;
                        follower->method7(1);
                        play_sfx_80195B4(0x2B, -1);
                    }
                    break;

                case 172:
                    if (follower->velocityZ < 0) {
                        follower->state = leader->state = 173;
                        follower->method7(1);
                    }
                    // fallthrough
                case 173:
                    follower->sub_80461B4(objects);
                    follower->sub_80465D8();
                    follower->sub_804FB64(objects, 0, 0);
                    if (follower->airFrames == -1) {
                        follower->sub_8046980();
                        follower->angle = follower->direction << 5;
                        follower->field_214_0 = 3;
                        leader->field_214_0 = 1;
                        follower->state = leader->state = 174;
                        leader->method7(1);
                        leader->sprite->animationEndAction = ANIMATION_END_STOP;
                    }
                    break;

                case 174:
                    if (leader->sprite->animationComplete) {
                        follower->field_214_0 = 1;
                        leader->field_214_0 = 0;
                        follower->state = leader->state = 175;
                        follower->sub_8049000(SPRITE_ID(0, 56));
                        follower->method7(1);
                        follower->sprite->animationEndAction = ANIMATION_END_STOP;
                    }
                    break;

                case 175:
                    if (follower->sprite->animationComplete) {
                        follower->field_214_0 = 1;
                        leader->field_214_0 = 1;
                        follower->state = leader->state = 176;
                        follower->method7(1);
                        leader->method7(1);
                        leader->sprite->animationEndAction = ANIMATION_END_STOP;
                        play_sfx_80195B4(0xD7, -1);
                    }
                    break;

                case 176:
                    if (leader->sprite->animationComplete) {
                        s32 x;
                        s32 y;
                        u8 angle;

                        follower->field_214_0 = 3;
                        leader->field_214_0 = 3;
                        leader->direction += 4;
                        leader->angle = leader->direction << 5;
                        follower->sub_8049000(SPRITE_ID(0, 1));
                        leader->sub_8049000(SPRITE_ID(0, 2));
                        stop_sfx_80195A8(0xD7);
                        x = leader->x;
                        y = leader->y;
                        angle = (leader->direction ^ 4) << 5;
                        x += (s16)field_240 * word_8198504[angle] / 0x4000;
                        y -= (s16)field_240 * word_8198584[angle] / 0x4000;
                        follower->sub_8045A94(1, 0, x / 256, y / 256, 0, follower->field_23E);
                        follower->field_2B6_6 = follower->field_2B6_7 = 1;
                        leader->field_350_14 = 1;
                        leader->velocityY = 0;
                        leader->velocityX = 0;
                        follower->state = leader->state = 177;
                    }
                    break;

                case 177:
                    follower->sub_80461B4(objects);
                    follower->sub_80465D8();
                    if (!follower->sub_8047B78()) {
                        follower->sub_8046980();
                        sub_803AE38();
                        return;
                    }
                    break;

                case 178:
                    break;
            }
        }

        if ((fieldMode == FIELD_MODE_NONE || fieldMode == FIELD_MODE_FADE_IN
             || fieldMode == FIELD_MODE_NORMAL || fieldMode == FIELD_MODE_WARP
             || fieldMode == FIELD_MODE_MENU)
            && !field_2B8_4 && follower->state > 163 && follower->state <= 167) {
            s32 height = leader->height;
            u8 walls;

            leader->height = 0;
            walls = leader->method13();
            leader->height = height;
            if (follower->state == 164 && walls) {
                if (!(leader->direction & 1) && (walls >> (leader->direction >> 1)) & 1) {
                    bool ok;

                    if (leader->direction == 0 || leader->direction == 6 || leader->direction == 2) {
                        s32 x;
                        s32 y;
                        int i;

                        x = leader->x
                            + (leader->direction == 2 ? leader->field_278 : -leader->field_278) / 2;
                        y = leader->y + leader->field_270 - leader->field_27C;
                        switch (leader->direction) {
                            case 0:
                                y -= 0x100;
                                break;
                            case 6:
                                x -= 0x100;
                                break;
                            case 2:
                                x += 0x100;
                                break;
                        }
                        ok = true;
                        x = (x + 0xFF) & ~0xFF;
                        y = (y + 0xFF) & ~0xFF;
                        for (i = 0; i < 2; i++) {
                            struct Coldef* cell =
                                get_coldef_ptr_by_xz(field_304, x / 0x1000, y / 0x1000);

                            if (cell->floorType != 2
                                || (leader->direction == 0 && cell->primaryShape != 6)
                                || (leader->direction == 6 && cell->primaryShape != 5)
                                || (leader->direction == 2 && cell->primaryShape != 4)) {
                                ok = false;
                                break;
                            }
                            if (leader->direction == 0) {
                                x += leader->field_278;
                            } else {
                                y += leader->field_27C;
                            }
                        }
                    } else {
                        ok = false;
                    }
                    if (ok) {
                        field_26E = 0;
                        leader->angle = leader->direction << 5;
                        leader->velocityX = 0x200 * word_8198504[leader->angle] / 0x4000;
                        leader->velocityY = -word_8198584[leader->angle] * 0x200 / 0x4000;
                        leader->field_23E = 0x200;
                        leader->field_260 = 0x200;
                        follower->state = leader->state = 171;
                        follower->method7(1);
                        leader->method7(1);
                        play_sfx_80195B4(0x8A, -1);
                    } else {
                        leader->field_23E = 25;
                    }
                } else {
                    leader->field_23E = 25;
                }
            }
            if (leader->height < 0) {
                leader->height = 0;
            }
            if (leader->state == 164) {
                checkWarps(leader, true, true, true);
            }
        }

        if (follower->state <= 171) {
            follower->x = leader->x;
            follower->y = leader->y;
            follower->z = leader->z;
            follower->height = leader->height;
            follower->direction = leader->direction;
            follower->angle = leader->angle;
        }
    }
    leader->sub_80465D8();
    follower->sub_80465D8();
}
#endif

void FieldManager::sub_803C424() {
    follower->state = leader->state = 178;
}

bool FieldManager::sub_803C440() {
    return leader->field_344 == 28 || leader->field_344 == 21;
}
