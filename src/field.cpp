#pragma implementation "field.h"

#include "global.h"
#include "common.h"
#include "sprite.h"
#include "heap.h"
#include "field.h"
#include "asm_processes.h"
#include "text080575C8.h"
#include "field_object.h"
#include "field_player_character.h"
#include "field_monster.h"
#include "field_sprite_layout.h"
#include "field_block.h"
#include "field_event_script.h"
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
    field_D0 = &gGameState.field_3C;
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
    field_291_0 = 0;
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
    dword_3000FD0->field_528 = 0;
    dword_3000FD0->field_530 = 0;
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

static inline u8 isUnderwaterRoom(FieldManager* manager) {
    return (manager->field_D4->flags & ROOM_FLAG_UNDERWATER) != 0;
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
                sub_801B0AC(data->field_0_20);
                dword_3000FD0->field_528 = luigiLeads;
                dword_3000FD0->field_530 = field_FA_5;
                {
                    struct SaveSlotPlayer* saved = &data->field_4[luigiLeads];
                    roomId = saved->roomId;
                }
            }

            dword_3000FD0->field_530 = dword_3000FD0->field_528;
            field_D4 = &stru_83A78D4[roomId];
            isUnderwater = isUnderwaterRoom(this);
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
            gGameState.field_3C.field_3C_0 = field_120_0;
            gGameState.field_3C.field_3C_10 = field_120_10;
            gGameState.field_3C.field_3C_12 = field_120_12;
            gGameState.field_3C.field_3C_13 = field_120_13;
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
            struct FieldStruct4 leaderStruct;
            struct FieldStruct4 followerStruct;
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
                if (leader->field_368->field_0 == 3 || leader->field_368->field_0 == 4
                    || leader->field_368->field_0 == 0xE || leader->field_368->field_0 == 0xF
                    || leader->field_368->field_0 == 0x10 || leader->field_368->field_0 == 0x11
                    || brothersForm == 5 || brothersForm == 6) {
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
                        if (leaderStruct.field_0 == 10) {
                            leader->sub_8049000(0x1045);
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
                        follower->field_368->field_0 = leader->field_368->field_0 = 0x13;
                        follower->state = leader->state = 0xA4;
                        follower->field_358_3 = leader->field_358_3 = 1;
                        follower->field_20C_13 = leader->field_20C_13 = 1;
                        follower->field_210_3 = leader->field_210_3 = 0;
                        follower->field_214_0 = leader->field_214_0 = 1;
                        field_268 = 0;
                        follower->angle = leader->angle;
                        follower->direction = leader->direction;
                        follower->sub_8049000(0x1038);
                        leader->sub_8049000(0x1050);
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

            field_20C[0].field_4 = luigiLeads == 0 ? 1 : 2;
            field_20C[0].field_6 = luigiLeads == 0 ? 0x100 : 0x200;
            sub_803C788(this, leader);
            if (leader->field_368->field_17_7) {
                sub_8018218(field_1C->field_0[4]->field_8 + 0x1100,
                            (void*)(leader->objectIndex * 0x400 + 0x6010FC0), 0x80, 0x20, 0);
            }

            field_20C[1].field_4 = luigiLeads == 0 ? 2 : 1;
            field_20C[1].field_6 = luigiLeads == 0 ? 0x200 : 0x100;
            sub_803C788(this, follower);
            if (follower->field_368->field_17_7) {
                sub_8018218(field_1C->field_0[4]->field_8 + 0x1100,
                            (void*)(follower->objectIndex * 0x400 + 0x6010FC0), 0x80, 0x20, 0);
            }

            state = 15;
            if (field_12A != 3) {
                field_12A = 0;
            }

            if (inBattle && brothersTogether) {
                sub_802DF80(0);
            }

            sub_802F834(this);

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
        if ((field_12A == 1 || field_12A == 2 || field_12A == 3 || field_12A == 4 || field_12A == 5)
            && field_10A == 0) {
            field_FC_2 = 1;
        }
    }
    field_20A_4 = field_20A_3;
    if (!field_291_0 && field_2A9_6) {
        sub_8028C40();
        field_2A9_6 = sub_8028E70();
    }

    switch (field_12A) {
        case 0:
            break;

        case 1:
            if (!sub_8027378() && !field_2B8_4) {
                field_12A = 2;
                field_F9_4 = 0;
                field_F9_5 = 0;
            }
            break;

        case 2:
            if (field_FC_11 && !sub_8027378()) {
                word_2000272 = field_FE;
                field_FC_11 = 0;
                gGameState.field_2 |= 0x8000;
            }
            sub_801B084();
            sub_8025E94();
            if (!leader->field_358_3 && sub_8025D24(6)) {
                sub_803C720(this, 3);
            }
            if (!field_209_0 && !field_20B_4) {
                sub_802D544(field_D0);
                sub_802D46C(field_D0);
            }
            break;

        case 3:
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
                            sub_8035974(this);
                        }
                        break;

                    case BROTHERS_FORM_MOLE_LUIGI:
                        if (follower->objectIndex == BROTHER_LUIGI) {
                            field_20B_4 = 1;
                            sub_8033B98(this, follower);
                        }
                        break;

                    case BROTHERS_FORM_BARREL_LUIGI:
                        if (follower->objectIndex == BROTHER_LUIGI) {
                            field_20B_4 = 1;
                            sub_8034870(this, follower);
                            leader->field_350_14 = 1;
                        }
                        break;
                }

                field_12A = 2;
                field_F9_4 = 0;
            }
            break;

        case 4:
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
                dword_3000FD0->field_528 = luigiLeads;
                dword_3000FD0->field_530 = field_FA_5;
                leader = (FieldPlayerCharacter*)objects[luigiLeads];
                follower = (FieldPlayerCharacter*)objects[luigiLeads ^ 1];
                leader->field_352_7 = 1;
                follower->field_352_7 = 0;
                leader->field_368->field_4 = 1;
                leader->field_368->field_6 = 0x100;
                follower->field_368->field_4 = 2;
                follower->field_368->field_6 = 0x200;
                leader->field_350_14 = 0;
                follower->field_350_14 = 0;
                sub_802DDB4(leader, 0, 0);
                sub_802DDB4(follower, 0, 0);
                u32 temp = field_E8;
                field_E8 = field_EC;
                field_EC = temp;
                field_12A = 2;
                field_F9_4 = 0;
            }
            break;

        case 5:
            if (--field_26E <= 0) {
                changeBrotherForm(BROTHERS_FORM_PUMP_MARIO, false);
                leader->field_350_14 = 0;
                follower->field_350_14 = 0;
                field_12A = 2;
            }
            break;

        case 6:
        case 7:
        case 8:
        case 9:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
            if (!field_F9_6) {
                if (!sub_8027378()) {
                    sub_8029888(0, 0);
                    DmaStop(0);
                    field_F9_6 = 1;
                }
                break;
            }

            switch (field_12A) {
                case 7:
                case 8:
                    if (brothersForm == BROTHERS_FORM_SURFBOARD_LUIGI && field_12A != 8) {
                        field_2BB = leader->direction;
                        field_2BA = leader->angle;
                    }
                    leader->field_350_14 = 0;
                    sub_8027D64();
                    field_2B8_6 = field_12A == 8;
                    break;

                case 9:
                    sub_8029024(0);
                    sub_8028FBC();
                    field_F9_4 = 1;
                    break;

                case 11:
                    sub_80290CC(-1);
                    sub_8027558();
                    field_F9_4 = 1;
                    break;

                case 12:
                    sub_8029070();
                    sub_80275F4();
                    field_F9_4 = 1;
                    break;

                case 13:
                    requestViewingSign();
                    startViewingSign();
                    field_F9_4 = 1;
                    break;

                case 14:
                    sub_8029030(0, 0);
                    sub_802772C();
                    field_F9_4 = 1;
                    break;

                case 15:
                    sub_8028F40();
                    sub_802814C();
                    return;

                case 16:
                    sub_8028F2C();
                    sub_8028EF4();
                    return;

                case 17: {
                    sub_802DDB4(leader, 0, 0);
                    sub_802DDB4(follower, 0, 0);
                    luigiLeads ^= 1;
                    dword_3000FD0->field_528 = luigiLeads;
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

            field_12A = 0;
            return;

        case 10:
            if (!field_F9_6) {
                sub_803CB5C(this);
                if (!sub_803E9F0(this)) {
                    field_F9_6 = 1;
                    if (field_291_2) {
                        sub_8027A04(field_2AA, field_2A8_0, field_2A8_5 != 0, field_2A9_2, -1, -1, 0, 0,
                                    0, field_2A9_5);
                        start_battle_8027AC4();
                        field_12A = 0;
                        return;
                    }
                }
            }
            break;
    }

    sub_802A608();
    sub_802C390();

    if (field_12A == 2) {
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

        if (sub_8025D24(5) && sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, 0x224)) {
            if (!field_20B_7) {
                sub_8027030(2, 8, 0, 0xFFFF, 0xFFFF);
                play_sfx_80195B4(0x54, -1);
                field_12A = 11;
            } else {
                sub_8029878();
            }
        }
    }

    if (!field_291_0 || field_290 < 0) {
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
            sub_803C5A4(this);
        }

        if (!field_2A9_6) {
            if (field_291_0) {
                sub_803CF64(this);
            } else if (leader->field_358_3) {
                sub_802F938(this);
            } else {
                sub_802A740();
            }
        }

        sub_802FD70(this);
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

    if (!field_291_0 || field_290 <= 0) {
        if ((field_12A != 7 && field_12A != 8) && field_F8_6 && field_F9_0 == 0) {
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

        if (!field_291_0) {
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

    if (!field_291_0 || field_290 < 0) {
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
            field_11E = field_D0->field_0;
        }
    }

    field_304->sub_8057C9C(field_27E, field_280);

    if (field_FC_2) {
        u8* data = field_1C->field_27C;

        sub_80EF618(evts, field_FC_1 == 0 ? 4 : 0x74, data, 0);
        field_FC_2 = 0;
    }
}

void FieldManager::sub_80254C0() {
    CpuCopy32(dword_3000FC0, field_20->data, 0x574);
    field_20->field_0_1 = field_208_0;
    field_20->field_0_2 = field_208_1;
    field_20->luigiLeads = luigiLeads;
    field_20->field_0_4 = field_208_3;
    field_20->brothersTogether = brothersTogether;
    field_20->field_0_6 = field_208_6;
    field_20->field_0_7 = field_208_7;
    field_20->field_0_0 = 1;
}

void FieldManager::sub_8025584() {
    CpuCopy32(field_20->data, dword_3000FC0, 0x574);
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
    if (field_12A > 1) {
        switch (type) {
            case 0:
                if ((field_D0->field_0 & 0x300) == 0
                    && (field_D0->field_2 & leader->field_368->field_4)) {
                    return 1;
                }
                break;
            case 1:
                if ((field_D0->field_0 & 0x300) == 0
                    && (field_D0->field_2 & follower->field_368->field_4)) {
                    return 1;
                }
                break;
            case 2:
                if ((field_D0->field_0 & follower->field_368->field_6) == 0
                    && (field_D0->field_2 & leader->field_368->field_6)) {
                    return 1;
                }
                break;
            case 3:
                if ((field_D0->field_0 & leader->field_368->field_6) == 0
                    && (field_D0->field_2 & follower->field_368->field_6)) {
                    return 1;
                }
                break;
            case 4:
                if (field_D0->field_2 & 8) {
                    return 1;
                }
                break;
            // field_0 (held) and field_2 (pressed) are read together as one word.
            case 5:
                if ((*(u32*)field_D0 & 0xFFFF0300) == 0x40000) {
                    return 1;
                }
                break;
            case 6: {
                u32 keys = *(u32*)field_D0;
                if ((keys & 0x01000200) == 0x01000200 || (keys & 0x02000100) == 0x02000100) {
                    return 1;
                }
                break;
            }
            case 7:
                if ((gGameState.inputPressed & 0x300) == 0x300) {
                    return 1;
                }
                break;
        }
    }
    return 0;
}

bool FieldManager::sub_8025E94() {
    u16 input = gGameState.field_2A;

    if (input != 0) {
        if (input == word_839F5A4[(s8)field_1F8]) {
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
    data->field_0_20 = word_3000D3C;

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

int FieldManager::sub_80261C0(FieldObject* object) {
    if (field_1F4 != 0) {
        FieldStruct3* entry = field_134;
        s16 x = object->x / 256;
        s16 y = object->y / 256;
        s16 z = object->z / 2048;
        int i;

        for (i = 0; i < field_1F4; entry++, i++) {
            if (entry->field_0_1 == 0 && object->height == 0 && z == entry->field_3
                && (object->objectIndex == BROTHER_LUIGI || entry->field_0_0)) {
                int left = entry->field_1 * 16;
                int right = left + 15;
                int top = entry->field_2 * 16;
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

                if (sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, object->field_22C_10 + 0x1160) == 1) {
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

// Creates the "SBLK" objects and fills field_134 from the entries at field_DC.
void FieldManager::sub_8026C78() {
    u8* header = field_DC;
    u16 index = (header[2] << 8) | header[1];
    int count = header[0];
    int i;
    u8* entry = header - ((header[4] << 8) | header[3]);
    u8 offset;

    field_1F4 = 0;
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
                field_134[field_1F4].field_0_0 = flags != 0xA0;
                field_134[field_1F4].field_0_1 =
                    sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, (u16)(index + 0x1360));
                field_134[field_1F4].field_1 = entry[1];
                field_134[field_1F4].field_2 = entry[2];
                field_134[field_1F4].field_3 =
                    (offset = entry[5] >> 1,
                     (entry[3] & 0x7F)
                         + ((entry[5] & 0x20) ? (u32)(offset | ~0x1F) >> 3 : offset >> 3));
                field_134[field_1F4].field_4 = index;
                field_134[field_1F4].field_8 = entry;
                field_1F4++;
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
            if ((gGameState.field_3C.field_3C_0 & 0xF0) == 0xF0) {
                sub_802EF18();
            } else if (brothersForm == 5) {
                brothersForm = BROTHERS_FORM_NORMAL;
                changeBrotherForm(BROTHERS_FORM_NORMAL, false);
            }
        }
        field_2B8_0 = 0;
    }
    if (field_20A_7 == 2 || (field_20A_7 == 0 && !(gGameState.field_3C.field_3C_0 & 0x33))) {
        field_244 = 0xFFC8;
    }
    if (field_12A == 0) {
        field_12A = 1;
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
// Not called anywhere. Like sub_8027030, for modes 6 and 7: starts a "WIPE" transition centered on (x,
// y).
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

    sub_803C610(this);
    sub_802563C();
    sub_8025ACC();
    field_120_0 = gGameState.field_3C.field_3C_0;
    field_120_10 = gGameState.field_3C.field_3C_10;
    field_120_12 = gGameState.field_3C.field_3C_12;
    field_120_13 = gGameState.field_3C.field_3C_13;
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
    "\"asm/nonmatching/sub_80277C4__12FieldManageriP20FieldPlayerCharacterP12FieldMonsterb.s\"");
#else
// Not called anywhere. Prepares a battle between player and monster.
void FieldManager::sub_80277C4(int mode, FieldPlayerCharacter* player, FieldMonster* monster,
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
    field_2A9_2 = mode;
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
    sub_803C8A4(this, 0, 1);
}
#endif

void FieldManager::sub_8027A04(int arg1, u8 monsterIndex, u8 arg3, int mode, int arg5, int arg6,
                               int arg7, int arg8, int arg9, int arg10) {
    int value = arg3;

    field_2AC = arg1;
    field_2AE = arg5;
    field_2AF = arg6;
    field_2A8_7 = arg7;
    field_2A9_1 = arg8;
    field_2A9_0 = arg9;
    field_2A8_0 = monsterIndex;
    field_2A8_5 = value;
    field_2A9_2 = mode;
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

// A helper to match sub_8027E90. We need to see if this is emitted at the end of the file or whether
// this is really just a static inline like this. It cannot be part of the class definition because then
// it would be emitted.
static inline u8 getObjectCount(FieldManager* manager) {
    return manager->objectCount;
}

void FieldManager::sub_8027E90(u16 roomId, u16 arg2, u8 direction, int x, int y, int z, int height,
                               int arg8, s8 arg9, bool arg10) {
    int i;

    sub_803C610(this);
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

    result = sub_80E99E0(0x1BE5);
    if (result != 0) {
        disable();
        state = 2;
        sub_8054378(operator new(0x68, 0, "OVER", 0), 8, "OVER", result);
    } else {
        delete this;
        sub_8123340();
        dword_3001034(0, dword_3000FC0, 0x570);
        if (sub_81251F0()) {
            stru_3000D40.field_0_1 = 1;
            sub_80FC198();
            sub_812335C();
            make_fldm_801AF5C(1);
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
    u16 previous = gGameState.field_3C.field_3C_0 & enabled;

    gGameState.field_3C.field_3C_0 = identity(enabled);
    if (!field_F8_5) {
        gGameState.field_3C.field_0 |= mask;
        sub_8018818();
        gGameState.field_3C.field_2 &= previous;
        gGameState.field_3C.field_4 &= previous;
        gGameState.field_3C.field_6 &= previous;
    } else {
        gGameState.field_3C.field_0 = gGameState.inputPressed & enabled;
        gGameState.field_3C.field_2 = gGameState.field_2A & enabled;
        gGameState.field_3C.field_4 = gGameState.field_2C & enabled;
        gGameState.field_3C.field_6 = gGameState.field_2E & enabled;
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
        field_20C[i].field_0 = 0;
        field_20C[i].field_8[0] = dword_839F900[i][0];
        field_20C[i].field_8[1] = dword_839F900[i][1];
        field_20C[i].field_10[0] = 0;
        field_20C[i].field_10[1] = 0;
        field_20C[i].field_12 = -1;
        field_20C[i].field_13 = -1;
        field_20C[i].field_14 = -1;
        field_20C[i].field_15 = -1;
        field_20C[i].field_2 = 0;
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
    sub_803C610(this);

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

            if (leader->field_368->field_0 == 1 || leader->field_368->field_0 == 2) {
                leader->field_368->field_1 = 0;
            } else {
                leader->field_368->field_0 = 0;
            }

            setSpeed(leader, walkSpeed);

            leader->field_358_3 = 0;
            leader->field_350_14 = 0;
            leader->field_210_1 = 1;
            leader->field_210_2 = 1;
            leader->field_20C_13 = 0;
            leader->field_20C_14 = 1;
            leader->sub_8049000(leader->objectIndex == BROTHER_MARIO ? 0x1001 : 0x1002);
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

            if (follower->field_368->field_0 == 1 || follower->field_368->field_0 == 2) {
                follower->field_368->field_1 = 0;
            } else {
                follower->field_368->field_0 = 0;
            }

            follower->field_358_3 = 0;
            follower->field_350_14 = 0;
            follower->field_20C_13 = 0;
            follower->field_20C_14 = 1;
            follower->sub_8049000(follower->objectIndex == BROTHER_MARIO ? 0x1001 : 0x1002);
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

            if (mario->field_368->field_0 == 1 || mario->field_368->field_0 == 2) {
                mario->field_368->field_1 = 5;
            } else {
                mario->field_368->field_0 = 5;
            }

            setSpeed(mario, 0x100 >> isUnderwater);

            mario->isMini = false;
            mario->isPump = true;
            mario->sub_8049000(0x102E);

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

            if (luigi->field_368->field_0 == 1 || luigi->field_368->field_0 == 2) {
                luigi->field_368->field_1 = 5;
            } else {
                luigi->field_368->field_0 = 5;
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

            if (mario->field_368->field_0 == 1 || mario->field_368->field_0 == 2) {
                mario->field_368->field_1 = 11;
            } else {
                mario->field_368->field_0 = 11;
            }

            setSpeed(mario, 0x200 >> isUnderwater);

            mario->isMini = true;
            mario->isPump = false;
            mario->sub_8049000(0x1028);

            if (luigi->field_368->field_0 == 1 || luigi->field_368->field_0 == 2) {
                luigi->field_368->field_1 = 11;
            } else {
                luigi->field_368->field_0 = 11;
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

            if (luigi->field_368->field_0 == 1 || luigi->field_368->field_0 == 2) {
                luigi->field_368->field_1 = 6;
            } else {
                luigi->field_368->field_0 = 6;
            }

            setSpeed(luigi, 0x100 >> isUnderwater);

            luigi->sub_8049000(0x1043);
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

            if (mario->field_368->field_0 == 1 || mario->field_368->field_0 == 2) {
                mario->field_368->field_1 = 6;
            } else {
                mario->field_368->field_0 = 6;
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

            if (luigi->field_368->field_0 == 1 || luigi->field_368->field_0 == 2) {
                luigi->field_368->field_1 = 9;
            } else {
                luigi->field_368->field_0 = 9;
            }

            setSpeed(luigi, 0x100 >> isUnderwater);

            luigi->isMole = false;
            luigi->isBarrel = true;
            luigi->field_350_15 = 1;
            luigi->sub_8049000(0x1046);

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

            if (mario->field_368->field_0 == 1 || mario->field_368->field_0 == 2) {
                mario->field_368->field_1 = 9;
            } else {
                mario->field_368->field_0 = 9;
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
    if (leader->field_358_3 || (gGameState.field_3C.field_3C_0 & 0xF3) != 0xF3) {
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

    if (sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, 0x2A2)) {
        leader->field_368->field_16_0 |= 0x7F;
        follower->field_368->field_16_0 |= 0x7F;
    } else {
        leader->field_368->field_16_0 = 0;
        follower->field_368->field_16_0 = 0;
    }
    field_2B8_4Copy = field_2B8_4 != 0;

    if (field_12A != 0) {
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

    if ((field_12A >= 1 && field_12A <= 5) || field_12A == 10 || field_12A == 11 || field_12A == 12
        || field_12A == 13 || field_12A == 14) {
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
                sub_802C068(field_D0);
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
            int result = sub_80261C0(leader);
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

        if (field_12A == 2 && field_208_3 && !brothersTogether
            && brothersForm != BROTHERS_FORM_MOLE_LUIGI && !follower->sub_804D0EC()
            && (leader->height == 0 || (s8)leader->field_1 != -1)
            && (follower->height == 0 || (s8)follower->field_1 != -1)
            && (leader->z + leader->height == follower->z + follower->height
                || (leader->field_26_4 & follower->field_26_4))) {
            s8 value = (s8)(leader->field_33C_0 << 1) >> 1;

            if (value == (luigiLeads ^ 1) && (s8)(leader->field_33D_0 << 1) >> 1 == value
                && (s8)leader->field_342 == -1) {
                leader->sub_804FC90();
                follower->field_368->field_0 = leader->field_368->field_0;
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
                     || brothersForm == BROTHERS_FORM_MOLE_LUIGI || brothersForm == 6)
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
                                    bool hit = FALSE;

                                    if (x - halfWidth < otherX && x + halfWidth > otherX
                                        && y - player->field_276 < otherY
                                        && y + other->field_276 > otherY) {
                                        hit = TRUE;
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
                                                        hit = TRUE;
                                                    }
                                                    break;
                                                case 2:
                                                case 8:
                                                    if (y > otherY - other->field_276
                                                        && y - player->field_276 < otherY) {
                                                        hit = TRUE;
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

    if (!field_209_0 && field_12A != 0 && field_12A <= 2 && (brothersTogether || player->field_352_7)) {
        if (player->field_340 == 2) {
            player->sub_8049BD8(1);
            sub_802DDB4(player, player->field_352_7 ? 0 : brothersTogether, 0);
        } else if (player->field_352_7 && player->field_340 == 3) {
            player->sub_8049BD8(2);
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
                        stuck = FALSE;
                        if ((brothersForm == BROTHERS_FORM_MINI_MARIO
                             || brothersForm == BROTHERS_FORM_MOLE_LUIGI)
                            && (s8)field_26C == 10
                            && sub_802E688(brothersForm != BROTHERS_FORM_MINI_MARIO)) {
                            stuck = TRUE;
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

void FieldManager::sub_802C068(struct struc_3000388* arg1) {
    int index;
    u8 angle;

    if (field_2B8_4 || leader->field_2B5_0) {
        return;
    }

    if (field_12A == 2 && !leader->field_350_14 && arg1 != NULL) {
        index = (arg1->field_0 & 0xF0) >> 4;
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
    if (field_20A_7 == 2 || (field_20A_7 == 0 && !(gGameState.field_3C.field_3C_0 & 0x33))) {
        if ((s16)field_244 > -0x38) {
            field_244 -= 8;
        }
    } else if (field_20A_7 == 1 || (field_20A_7 == 0 && (gGameState.field_3C.field_3C_0 & 0x33))) {
        if ((s16)field_244 < 0) {
            field_244 += 8;
        }
    }
}

void FieldManager::sub_802C428(int index, int value) {
    FieldPlayerCharacter* player = (FieldPlayerCharacter*)objects[index];
    FieldStruct4* data = player->field_368;

    if (player->field_352_7) {
        if (value > 0) {
            value--;
        }
    } else if ((!brothersTogether && value > 0) || data->field_0 == 10) {
        value--;
    }
    data->field_10[!player->field_352_7] = value;
    sub_8018218(field_1C->field_0[4]->field_8 + byte_839F954[player->field_368->field_2] * 32,
                (void*)(0x6010DC0 + player->objectIndex * 0x400),
                byte_839F962[player->field_368->field_2] * 32, 0x20, 0);
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
    switch (player->field_368->field_2) {
        case 0:
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

        case 1:
            player->field_239 = player->sprite->speed = field_FA_11;
            player->startHammer(isUnderwater);
            break;

        case 2:
            player->field_239 = player->sprite->speed = field_FA_11;
            player->startHandPower();
            break;

        case 8: // Luigi comes up from underground.
            player->field_239 = player->sprite->speed = field_FA_11;
            if (player->field_33E != -1 && objects[player->field_33E]->type == FIELD_OBJECT_TYPE_FBRL) {
                sub_80346FC(this, player);
            } else {
                sub_8033B98(this, player);
            }
            break;

        case 10: // Luigi breaks the barrel.
            player->field_239 = player->sprite->speed = field_FA_11;
            sub_8034870(this, player);
            break;

        case 13: // Plays buzzer sound.
            sub_8029878();
            break;
    }
}

void FieldManager::sub_802C774(FieldPlayerCharacter* player) {
    switch (player->state) {
        case 58:
            if (--player->field_355 == 0) {
                player->field_368->field_0 = player->otherBrother->field_368->field_0 = 0;
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
                player->sub_8049000(0x1001);
                shotBullets[0]->sub_804FAF8();
                sub_802DF80(0);
            }
            break;

        case 5: {
            u8 hit = FALSE;

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
                                && sub_803C544(this) > (*(u32*)((u8*)other + 0x22C) & 3))) {
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
                                && sub_803C544(this) > (*(u32*)((u8*)other + 0x22C) & 3))) {
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
            if (!(field_D0->field_0 & player->field_368->field_4) || player->airFrames != -1) {
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
                player->sub_8049000(0x1002);
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
            player->field_368->field_0 = 0;
            player->state = 0;
            player->field_350_14 = 0;
            player->field_260 = player->field_23E = walkSpeed;
            if (player->otherBrother->field_368->field_0 == 1
                || player->otherBrother->field_368->field_0 == 2) {
                player->otherBrother->field_368->field_1 = 0;
            } else {
                player->otherBrother->field_368->field_0 = 0;
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

        case 70:
            if (--player->field_355 == 0) {
                player->sub_8049000(0x1046);
                player->jumpToHeight(16, 100, (s16)walkSpeed);
                player->state = 71;
            }
            break;

        case 71:
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
    player->field_368->field_0 = 0;
    player->state = 0;
    player->field_350_14 = 0;

    if (player->otherBrother->field_368->field_0 == 1
        || player->otherBrother->field_368->field_0 == 2) {
        player->otherBrother->field_368->field_1 = 0;
    } else {
        player->otherBrother->field_368->field_0 = 0;
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

void FieldManager::sub_802D46C(struct struc_3000388* arg) {
    if (!field_2B8_4 && !field_291_0 && !leader->field_2B5_3 && arg != NULL && follower->state <= 4) {
        if ((isUnderwater && leader->field_368->field_2 == 0 && leader->state <= 4)
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

void FieldManager::sub_802D544(struct struc_3000388* arg) {
    if (!field_2B8_4 && !field_291_0 && !follower->field_2B5_3 && arg != NULL
        && ((isUnderwater && follower->field_368->field_2 == 0 && follower->state <= 4)
            || follower->state <= 1)
        && sub_8025D24(1)) {
        if (!brothersTogether) {
            if ((gGameState.field_3C.field_3C_0 & 8) && follower->field_20C_0
                && !follower->field_368->field_16_7) {
                sub_802C588(follower);
            } else {
                sub_8029878();
            }
        } else {
            struct FieldStruct4* data = follower->field_368;

            if (data->field_16_7 || data->field_2 == 0) {
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
                switch (data->field_2) {
                    case 0:
                        break;
                    case 1:
                        follower->field_239 = follower->sprite->speed = field_FA_11;
                        if (brothersForm == BROTHERS_FORM_MOLE_LUIGI) {
                            follower->startHammer(isUnderwater);
                            leader->field_350_14 = 1;
                        } else {
                            sub_802D92C();
                        }
                        break;
                    case 2:
                        follower->field_239 = follower->sprite->speed = field_FA_11;
                        if (brothersForm == BROTHERS_FORM_MOLE_LUIGI) {
                            follower->startHandPower();
                            leader->field_350_14 = 1;
                        } else {
                            sub_802D92C();
                        }
                        break;
                    case 4:
                        follower->field_239 = follower->sprite->speed = field_FA_11;
                        if (brothersForm == BROTHERS_FORM_PUMP_MARIO) {
                            sub_8031234(this);
                        } else if (brothersForm == BROTHERS_FORM_MINI_MARIO) {
                            sub_8035B98(this);
                        } else {
                            sub_8030484(this);
                        }
                        break;
                    case 3:
                        follower->field_239 = follower->sprite->speed = field_FA_11;
                        if (brothersForm == BROTHERS_FORM_MOLE_LUIGI) {
                            sub_8033E30(this);
                        } else {
                            sub_8032514(this);
                        }
                        break;
                    case 7:
                        follower->field_239 = follower->sprite->speed = field_FA_11;
                        sub_8034A5C(this);
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

    if (!field_209_6 && follower->field_368->field_2 == 1) {
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
    switch (follower->field_368->field_2) {
        case 1:
            if (brothersForm == BROTHERS_FORM_NORMAL || brothersForm == BROTHERS_FORM_MINI_MARIO) {
                if (follower->objectIndex == BROTHER_MARIO) {
                    if (sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, 0x206)) {
                        sub_80339B8(this);
                    } else {
                        sub_8039078(this);
                    }
                } else {
                    if (sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, 0x207)) {
                        sub_8035974(this);
                    } else {
                        sub_8039078(this);
                    }
                }
            } else if (brothersForm == BROTHERS_FORM_PUMP_MARIO) {
                sub_80313C0(this);
            } else if (brothersForm == BROTHERS_FORM_BARREL_LUIGI) {
                sub_803495C(this);
            } else {
                follower->startHammer(isUnderwater);
            }
            break;
        case 2:
            if (brothersForm == BROTHERS_FORM_NORMAL) {
                if (follower->objectIndex == BROTHER_MARIO) {
                    if (sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, 0x20A)) {
                        sub_8036E14(this);
                    } else {
                        sub_8039A00(this);
                    }
                } else {
                    if (sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, 0x20B)) {
                        sub_8038140(this);
                    } else {
                        sub_8039B5C(this);
                    }
                }
            } else if (brothersForm == BROTHERS_FORM_MINI_MARIO) {
                sub_803A438(this);
            } else if (brothersForm == BROTHERS_FORM_PUMP_MARIO) {
                sub_8031518(this);
            } else if (brothersForm == BROTHERS_FORM_BARREL_LUIGI) {
                sub_803A438(this);
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

void FieldManager::sub_802DDB4(FieldPlayerCharacter* player, int index, struct struc_3000388* arg) {
    FieldStruct4* data = player->field_368;
    s8* list = data->field_8[index][data->field_0];
    s8 previous;
    int changed;
    s8 value;
    u16 flag;

    if (list[0] == -1) {
        return;
    }
    previous = data->field_2;
    changed = 0;
    if (!player->field_2B5_0 && !player->field_2B5_3 && arg != NULL
        && sub_8025D24((player->field_352_7 ^ 1) + 2)
        && sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, word_839F984[player->objectIndex * 2 + index])) {
        do {
            data->field_10[index]++;
            value = list[(s8)data->field_10[index]];
            if (value == -1) {
                data->field_10[index] = 0;
                value = list[0];
            }
            flag = word_839F98C[player->objectIndex * 28 + index * 14 + value];
        } while (flag != 0 && !sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, flag));
        changed = 1;
    }
    data->field_2 = list[(s8)data->field_10[index]];
    if (data->field_2 != previous) {
        sub_8018218(field_1C->field_0[4]->field_8 + byte_839F954[player->field_368->field_2] * 32,
                    (void*)(0x6010DC0 + player->objectIndex * 0x400),
                    byte_839F962[player->field_368->field_2] * 32, 0x20, 0);
        if (changed) {
            int sound = byte_839F9FC[player->objectIndex * 28 + index * 14 + data->field_2];

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
        field_12A = 3;
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
        if (brothersForm == 5 || brothersForm == 6 || brothersForm == BROTHERS_FORM_SURFBOARD_LUIGI) {
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

static inline void resetLeader(FieldManager* manager) {
    manager->leader->sub_804FC90();
    manager->sub_802DDB4(manager->leader, 0, NULL);
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802E854__12FieldManageri.s\"");
#else
void FieldManager::sub_802E854(int arg) {
    resetLeader(this);
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
    dword_3000FD0->field_528 = luigiLeads;
    dword_3000FD0->field_530 = field_FA_5;
    leader = (FieldPlayerCharacter*)objects[luigiLeads];
    follower = (FieldPlayerCharacter*)objects[luigiLeads ^ 1];
    leader->field_368->field_4 = 1;
    leader->field_368->field_6 = 0x100;
    follower->field_368->field_4 = 2;
    follower->field_368->field_6 = 0x200;
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
    resetLeader(this);
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
        field_12A = 4;
    } else {
        sub_8027030(2, arg == 0 ? 16 : 1, 0, 0xFFFF, 0xFFFF);
        leader->field_20C_11 = 0;
        leader->field_20C_14 = 0;
        field_F9_5 = 1;
        field_12A = 17;
    }
}

u8 FieldManager::checkWarps(FieldPlayerCharacter* player, bool arg2, bool arg3, bool arg4) {
    if ((u8)(field_12A - 1) <= 1 && !field_F9_4 && !field_F9_5 && player->field_2B5_0 == 0) {
        currentWarp = player->findWarp(warps, &field_2D0, &field_2D4, arg3, arg4);

        if (currentWarp != NULL) {
            player->field_353_6 = 1;
            if (!player->field_353_7 && arg2 && field_12A == 2) {
                leader->sub_804FC90();
                follower->sub_804FC90();

                if (brothersTogether && player->sub_8047C18(player->otherBrother)) {
                    field_2B8_5 = 1;
                    field_26E = 60;
                }

                sub_8027030(2, 16, 0, 0xFFFF, 0xFFFF);
                leader->field_350_14 = 1;
                follower->field_350_14 = 1;
                field_12A = 7;

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
    if (brothersForm == 5) {
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
    if (brothersForm == 5) {
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
                leader->sub_8049000(
                    leader->objectIndex == BROTHER_MARIO ? (leader->isMini ? 0x103C : 0x103B) : 0x1052);
                leader->field_214_0 = 5;
            }
            if (brothersTogether && follower->field_20C_0) {
                follower->sub_8049000(follower->objectIndex == BROTHER_MARIO
                                          ? (follower->isMini ? 0x103C : 0x103B)
                                          : 0x1052);
                follower->field_214_0 = 5;
            }
        }
    }

    if (field_2B8_5) {
        field_20A_7 = 2;
    }
}
#endif
