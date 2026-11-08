#pragma implementation "field.h"

#include "global.h"
#include "common.h"
#include "heap.h"
#include "field.h"
#include "sign.h"
#include "game_mode.h"

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_fldm_8021FF8.s\"");
#else
FieldManager::FieldManager(u8 priority, char* label, int roomId, bool arg4, bool arg5)
    : Process(priority, label) {
    FieldManager* fldm = this;
    u8 flag4 = arg4;
    u8 flag5 = arg5;
    Process* process;
    struct EventScriptProcess** script;
    void** buffer;

    fldm->field_F8_1 = (roomId == -1);

    script = &fldm->bevs;
    *script = bevs_process_init_80F048C(operator new(sizeof(struct EventScriptProcess), 0, "BEVS", 0),
                                        1, 7, "BEVS");
    process = (*script)->process;
    process->parentProcess = this;
    process->disable();
    script = &fldm->evts;
    *script = evts_process_init_80EF3FC(operator new(sizeof(struct EventScriptProcess), 0, "EVTS", 0),
                                        1, 6, "EVTS");
    process = (*script)->process;
    process->parentProcess = this;
    process->disable();

    sub_819A138(gGameState.field_8D0, gGameState.field_1C);
    dword_3000D7C = fldm;
    dword_3000D78 = *script;
    BUFFER_REG_DISPCNT = 0;
    fldm->field_D0 = &gGameState.field_3C;
    fldm->field_1C = (FieldStruct2*)operator new(0x2C0, 1, "FMEX", 1);
    fldm->field_20 = (FieldBackup*)operator new(0x574, 1, "FMBK", 1);
    buffer = &fldm->field_23C;
    *buffer = operator new[](0x1000, 1, "PLST", 1);
    fldm->field_24 = operator new[](0x400, 1, "PALW", 1);

    fldm->field_F8_2 = 0;
    fldm->field_F8_0 = 0;
    fldm->field_F9_3 = flag4;
    fldm->field_208_0 = 1;
    fldm->field_F9_0 = 0;
    fldm->field_F9_2 = 0;
    fldm->field_F0 = 0;
    fldm->field_E4 = 0;
    fldm->field_2B8_0 = 0;
    fldm->field_2B8_4 = 0;
    fldm->field_2B8_5 = 0;
    fldm->field_2CC = 0;
    fldm->field_11E = 0;
    fldm->field_120_0 = 0;
    fldm->field_120_10 = 0;
    fldm->field_120_12 = 0;
    fldm->field_120_13 = 0;
    fldm->field_122 = 0;
    fldm->roomId = roomId;
    fldm->field_128 = 0;
    fldm->field_FC_7 = 15;
    fldm->field_FC_11 = 0;
    fldm->field_246_0 = 0;
    fldm->field_291_0 = 0;
    fldm->field_291_1 = 0;
    fldm->field_2A8_6 = 0;
    fldm->field_2B9 = 0xFF;
    fldm->field_2B8_6 = 0;
    fldm->field_12B = -1;
    fldm->field_12C_2 = -2;
    fldm->field_12C_1 = 0;
    fldm->field_12D_0 = 0;
    fldm->field_12D_4 = 0;
    fldm->field_12D_5 = 0;
    fldm->field_FC_2 = 0;
    fldm->field_10A = 0;
    fldm->field_FC_0 = 0;
    fldm->field_12E = 0;
    fldm->field_130 = 0;
    fldm->field_F9_5 = 0;
    fldm->field_F9_4 = flag4 ^ 1;
    fldm->field_27A = 0;
    fldm->field_27C = 0;
    fldm->field_27E = 0;
    fldm->field_280 = 0;
    fldm->field_282 = 0;
    fldm->field_284 = 0;
    fldm->field_28A = 0x68;
    fldm->field_28B = 0x88;
    fldm->field_28C = 0x50;
    fldm->field_28D = 0x6A;
    fldm->field_28E = 0x26;
    fldm->field_28F = 0x6A;
    fldm->luigiLeads = 0;
    fldm->field_208_3 = 1;
    fldm->field_209_0 = 0;
    fldm->brothersTogether = 0;
    fldm->field_208_5 = 0;
    fldm->field_208_6 = 0;
    fldm->field_208_7 = 0;
    fldm->field_F8_4 = 1;
    fldm->field_209_0 = 0;
    fldm->field_209_7 = 1;
    fldm->field_20A_1 = 0;
    fldm->field_20A_2 = 0;
    fldm->field_20A_3 = 0;
    fldm->field_20A_4 = 0;
    fldm->field_20A_5 = 0;
    fldm->field_2D8_0 = 31;
    fldm->field_240 = 0x1000;
    fldm->field_20A_7 = 0;
    fldm->field_242 = 0;
    fldm->field_244 = 0;
    fldm->field_20B_4 = 0;
    fldm->field_20B_5 = 0;
    fldm->field_20B_6 = 0;
    fldm->field_20B_7 = 0;
    fldm->field_20B_1 = 1;
    fldm->field_209_1 = 0;
    fldm->field_209_5 = 0;
    fldm->field_209_6 = 0;
    fldm->field_F9_7 = 0;
    fldm->field_FA_4 = 1;
    fldm->field_26C = 0;
    fldm->field_246_2 = 0;
    fldm->field_2A9_6 = 0;
    fldm->field_2A9_7 = 0;
    fldm->field_F8_3 = flag5;
    fldm->field_1FA = 0xFF00;
    fldm->field_304 = 0;
    fldm->field_308 = 0;
    fldm->field_30C = 0;
    fldm->field_310 = 0;
    fldm->field_314 = 0;
    fldm->field_1F6 = -1;
    fldm->field_1F8 = 0;
    fldm->field_2B2 = -2;
    fldm->field_318 = 0;
    sub_8029934(fldm);
    gGameState.field_88A_5 = 1;
    dword_3000FD0->field_528 = 0;
    dword_3000FD0->field_530 = 0;
}
#endif

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
    sub_80292EC(this);
    operator delete(field_1C);
    operator delete(field_20);
    operator delete(field_23C);
    operator delete(field_24);
    if (evts) {
        sub_80F034C(evts, 3);
    }
    if (bevs) {
        sub_80F0420(bevs, 3);
    }
    sub_80F0184(evts);
    sub_8021FD4();
    runtime_install_interrupt_callback(2, NULL);
    gGameState.field_88A_5 = 0;
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/update__12FieldManager.s\"");
#else
static inline int getDistance(FieldObject* a, FieldObject* b) {
    int dx = a->x - b->x;
    int dy = a->y - b->y;
    return ((int (*)(int))dword_3001038)(dx * dx + dy * dy);
}

void FieldManager::update() {
    if (field_1FC != NULL && field_1FC->field_A != 0) {
        field_1FC->sub_805CB54();
    }

    if (field_2A8_6 && state == 2) {
        if (field_2B4 >= 0) {
            make_btl_8028F54(this);
        } else if (field_2B2 >= -1) {
            sub_80290CC(this);
            sub_8029080(this);
            field_2B2 = -2;
            return;
        } else if (field_2B1_0 == 2 && !field_2A9_0) {
            sub_802814C(this);
            return;
        }
    }

    switch (state) {
        case 0: {
            *(vu16*)0x2000080 = field_128;
            *(vu16*)PLTT = field_128;
            BUFFER_REG_DISPCNT = 0;
            gGameState.field_884 = 0;
            field_FA_10 = 0;
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
                field_246_2 = data->field_0_10;
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
            field_FA_10 = (field_D4->field_2 & 0x10) != 0;
            field_126 = field_D4->field_10;
            field_D8 = sub_80FB7E0(field_D4->field_E);
            field_DC = sub_80FB7F0(field_D4->field_16);
            field_E0 = sub_8059EF0(roomId);
            sub_80EFB18(evts);
            dword_3001034(0, objects, 0x80);
            make_field_objects_80267C0(field_126);

            if (field_F8_1) {
                struct SaveSlotData* data = &dword_3000FFC->slots[stru_3000D40.slot].data;
                struct SaveSlotPlayer* saved = &data->field_4[luigiLeads];

                leader = (FieldPlayerCharacter*)objects[luigiLeads];
                follower = (FieldPlayerCharacter*)objects[luigiLeads ^ 1];
                leader->initialDirection = saved->field_2_0;
                leader->x = saved->field_4 << 8;
                leader->y = saved->field_6 << 8;
                leader->z = saved->field_8 << 8;
                leader->height = saved->field_A << 8;
                leader->field_20C_5 = 0;
                leader->field_20C_6 = leader->field_20C_7 = brothersTogether ^ 1;

                saved = &data->field_4[luigiLeads ^ 1];
                if (saved->roomId == roomId) {
                    follower->initialDirection = saved->field_2_0;
                    follower->x = saved->field_4 << 8;
                    follower->y = saved->field_6 << 8;
                    follower->z = saved->field_8 << 8;
                    follower->height = saved->field_A << 8;
                    follower->field_20C_5 = 0;
                    follower->field_20C_6 = follower->field_20C_7 = brothersTogether ^ 1;
                    field_2D8_0 = 31;
                } else {
                    field_2D8_0 = !luigiLeads;
                    followerRoomId = saved->roomId;
                    field_2D8_5 = saved->field_2_0;
                    field_2DC = saved->field_4 << 8;
                    field_2E0 = saved->field_6 << 8;
                    field_2E4 = saved->field_8 << 8;
                    field_2E8 = saved->field_A << 8;
                    follower->field_20C_25 = 0;
                    follower->field_20C_0 = 0;
                }

                if (field_246_2 != 0) {
                    switch (field_246_2) {
                        case 1:
                            field_20C[0].field_12 = 0;
                            break;
                        case 2:
                            break;
                        case 3:
                            field_20C[1].field_12 = 0;
                            break;
                        case 4:
                            field_20C[0].field_12 = 0;
                            break;
                    }
                }

                if (!brothersTogether) {
                    field_20C[luigiLeads ^ 1].field_14 = 0;
                }
            }

            field_100 = field_FA_10 ? 0x100 : 0x200;
            field_FA_11 = 0x10 >> field_FA_10;
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
            sub_8020994(0x15C0, 0, 1, 0xBE);
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
            sub_802955C(this);
            state = 6;
            break;

        case 6:
            if (byte_3000C80 != 0) {
                break;
            }
            sub_80294A0(this);
            sub_8029460(this);
            state = 7;
            break;

        case 7:
            sub_80293F8(this, field_126);
            state = 8;
            break;

        case 8:
            if (byte_3000C80 != 0) {
                break;
            }
            sub_80293B8(this);
            state = 9;
            break;

        case 9:
            sub_80264F4(field_126);
            state = 10;
            break;

        case 10:
            sub_80265EC(field_126);
            sub_8020A78();
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

            if (field_2A8_6) {
                FieldMonster* monster;

                if (objects[field_2A8_0]->field_20C_19 == 3) {
                    monster = (FieldMonster*)objects[field_2A8_0];
                    if (monster->field_33D_3) {
                        monster->field_344->field_20C_0 = 0;
                        monster->field_344->field_20C_25 = 0;
                    }
                }

                monster = (FieldMonster*)objects[field_2A8_0];
                switch (field_2B1_0) {
                    case 0:
                        if (!field_2A8_7) {
                            monster->sub_80501EC();
                            field_F9_4 = 1;
                        }
                        break;
                    case 1:
                        if (!field_2A9_1 && field_2A8_0 != 0) {
                            monster->sub_80502C8();
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

            for (i = 0; i < field_10B; i++) {
                if (objects[i]->field_20C_25) {
                    objects[i]->method4();
                }
            }

            field_30C = new (0, "FMDR", 0) FMDR(8, "FMDR");
            field_310 = new (0, "FMPR", 0) FieldProcess803EA00(5, "FMPR");

            leader = (FieldPlayerCharacter*)objects[luigiLeads];
            follower = (FieldPlayerCharacter*)objects[luigiLeads ^ 1];
            leader->field_388 = follower;
            follower->field_388 = leader;

            if (field_2B8_0) {
                s16 value = leader->field_368->field_0;
                if ((u8)(value - 3) <= 1 || value == 0xE || value == 0xF || value == 0x10
                    || value == 0x11
                    || field_246_2 == 5 || field_246_2 == 6) {
                    field_246_2 = 0;
                    sub_8029A0C(this, 0, 0);
                }
            }

            if (field_F8_1) {
                if (brothersTogether) {
                    sub_802DF80(this, 0);
                }
            } else if (field_2B8_0) {
                sub_8028248(this);
            } else if (field_F8_4 && field_F9_3) {
                follower->x = leader->x;
                follower->y = leader->y;
                follower->z = leader->z;
                sub_802E4C8(this, 1);
            }

            if ((field_2B8_0 || field_F8_1) && field_F8_6) {
                sub_80284B0(this, field_FA_5, 1);
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

                switch (field_246_2) {
                    case 0:
                        break;
                    case 1: {
                        u8 savedIndex = shotBulletIndex;
                        sub_8029A0C(this, field_246_2, 0);
                        shotBulletIndex = savedIndex;
                        break;
                    }
                    case 2:
                    case 3:
                    case 4:
                        sub_8029A0C(this, field_246_2, 0);
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
                    case 7:
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
                field_246_2 = 0;
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
                sub_8029A0C(this, 0, 0);
                leader->method7(1);
                if (brothersTogether) {
                    follower->z = leader->z;
                    follower->height = leader->height;
                    if ((u8)follower->sub_8045A94(1, 0, leader->x / 256, leader->y / 256,
                                                  leader->z / 256,
                                                  field_100)) {
                        while (getDistance(follower, leader) > 0x1000
                               || sub_802DC0C(this, follower)) {
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

            for (i = 0; i < field_10B; i++) {
                objects[i]->field_290 = field_304;
                if (objects[i]->field_20C_19 == 3 && ((FieldMonster*)objects[i])->field_344 != NULL) {
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

            if (field_246_2 == 7) {
                leader->field_230 = leader->field_234 = follower->field_230 = follower->field_234 = none;
            }

            if (field_2A8_6) {
                sub_8019650(0, none, 0x10);
            } else if (field_2B8_0 || field_F8_1 || field_F8_4) {
                switch (field_2B9) {
                    case -2:
                        break;
                    case 0:
                        sub_8019628(0);
                        break;
                    case -3:
                        if (sub_80195F8(0) && field_D4->field_14 == sub_8019610(0)) {
                            break;
                        }
                    case -1:
                        sub_8019308(0, field_D4->field_14, 0);
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
                sub_8018218(field_1C->field_10->field_8 + 0x1100,
                            (void*)(leader->field_54 * 0x400 + 0x6010FC0),
                            0x80, 0x20, 0);
            }

            field_20C[1].field_4 = luigiLeads == 0 ? 2 : 1;
            field_20C[1].field_6 = luigiLeads == 0 ? 0x200 : 0x100;
            sub_803C788(this, follower);
            if (follower->field_368->field_17_7) {
                sub_8018218(field_1C->field_10->field_8 + 0x1100,
                            (void*)(follower->field_54 * 0x400 + 0x6010FC0),
                            0x80, 0x20, 0);
            }

            state = 15;
            if (field_12A != 3) {
                field_12A = 0;
            }

            if (field_2A8_6 && brothersTogether) {
                sub_802DF80(this, 0);
            }

            sub_802F834(this);

            if (field_F9_4) {
                if (field_12C_2 != -2) {
                    sub_80193B4(0, 0xFF, 8);
                }
                state = 14;
            } else {
                evts->process->enable();
                bevs->process->enable();
                state = 15;
            }

            field_2A8_6 = 0;
            field_12C_0 = 0;
            field_12C_1 = 0;
            field_12D_0 = 0;
            field_12D_4 = 0;
            field_12C_2 = -2;
            sub_80297B8(this);
            sub_801A548();
            dword_3000C78 = NULL;
            byte_3000C24 = 0;
            break;
        }

        case 14:
            sub_8027030(1, 8, 0, 0xFFFF, 0xFFFF);
            evts->process->enable();
            bevs->process->enable();
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
                sub_8028AFC(this, 1, 0, x, y - (leader->airFrames != -1 ? field_28D : field_28F), 0xC00);
                field_2A9_6 = 1;
            }
            state = 15;
            // fallthrough

        case 15:
            update_field_8023DD4(this);
            break;
    }
}
#endif

asm_unified(".include \"asm/nonmatching/update_field_8023DD4.s\"");

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
                    if (field_246_2 != 3) {
                        (*objects)->method12(&this->objects[luigiLeads], 1, 0);
                    }
                    if (brothersTogether == 0 || field_246_2 == 3) {
                        (*objects)->method12(&this->objects[luigiLeads ^ 1], 1, 0);
                    }
                }
                (*objects++)->method12(&this->objects[2], field_10B - 2, 0);
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
                if (field_246_2 == 3) {
                    (*objects)->method12(&this->objects[0], 1, 0);
                    index = 2;
                    arg = field_10B - 2;
                } else {
                    index = 0;
                    arg = field_10B;
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
                if (field_246_2 == 4) {
                    index = 1;
                    arg = field_10B - 1;
                } else {
                    index = 2;
                    arg = field_10B - 2;
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
                if ((*objects)->sprite->field_20[1] == 1 && (*objects)->sprite->field_12_3) {
                    (*objects)->sub_804761C(0);
                    (*objects)->field_214_0 = 0;
                    sub_801E150((*objects)->sprite, 0, 0, 0, 0);
                    (*objects)->sprite->field_12_1 = 0;
                    (*objects)->sprite->field_12_3 = 0;
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
        int count = field_10B - start;
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
    data->field_0_10 = field_246_2;
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
                && (object->field_54 == 1 || entry->field_0_0)) {
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
            if (field_1C->field_25C[i].sprite->field_12_5) {
                entry = &field_1C->field_25C[i];
                break;
            }
        }
        if (entry == 0) {
            int max = -1;
            for (i = 0; i < 4; i++) {
                if (field_1C->field_25C[i].sprite->field_23 > max) {
                    entry = &field_1C->field_25C[i];
                    max = field_1C->field_25C[i].sprite->field_23;
                }
            }
        }
        x /= 256;
        y = (y - z - height) / 256;
        sub_801E150(entry->sprite, animation, 0, 0, 0);
        sub_8021ED8(entry->sprite);
        entry->sprite->field_12_1 = 2;
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

    if (field_246_2 == 4) {
        sub_8021574(0, 0x1003, 0, 0, 0, buffer, 12);
    } else if (field_246_2 == 1) {
        sub_8021574(0, 0x1004, 0, 0, 0, buffer, 12);
    }

    sub_8021574(0, 0x8003, 0, 0, 0, buffer, 13);
    sub_8021574(0, 0x8000, 0, 0, 0, buffer, 14);
    sub_8021574(0, 0x8001, 0, 0, 0, buffer, 15);
}

void FieldManager::sub_80265EC(u16 arg1) {
    FieldObject* follower;
    int i;

    for (i = 0; i < 4; i++) {
        field_1C->field_25C[i].sprite = sub_8020DD0(0, 0x8009, 1, -1, -1, -1, -1);
        sub_801E150(field_1C->field_25C[i].sprite, 0, -1, 0, 0);
    }

    objects[luigiLeads]->method2(field_C8, field_CC, field_314);

    follower = objects[luigiLeads ^ 1];
    if (follower != 0) {
        follower->method2(field_C8, field_CC, field_314);
    }

    for (i = 2; i < field_10B; i++) {
        objects[i]->method2(field_C8, field_CC, field_314);
    }

    for (i = 0; i < 8; i++) {
        shotBullets[i]->sub_804DFE8();
    }
}

// Same instructions, but the original passes i * 4 and &field_FB into the code after the switch from
// every case (and shares the field_X++ increments), where this recomputes them after one shared block.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/make_field_objects_80267C0__12FieldManageri.s\"");
#else
void FieldManager::make_field_objects_80267C0(int roomId) {
    FieldObject* object;
    int i;

    get_field_object_count(roomId, &field_10B);
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
    for (i = 0; i < field_10B; i++) {
        switch (get_field_object_type(roomId, i)) {
            case 0: {
                FieldPlayerCharacter* player = new (1, "FPC", 1) FieldPlayerCharacter(roomId, i);

                if (field_FA_10) {
                    player->sub_8047EFC(0x100, 0x100, 0xD2, 13);
                } else {
                    player->sub_8047EFC(0x200, 0x200, 0x52C, 0x75);
                }
                player->field_368 = &field_20C[i];
                objects[i] = player;
                break;
            }
            case 1:
                object = new (1, "FCHR", 1) FieldObject(roomId, i);
                objects[i] = object;
                if (field_10E == 0) {
                    field_10E = i;
                }
                field_10F++;
                break;
            case 2:
                object = new (1, "FBRD", 1) FieldObject(roomId, i);
                objects[i] = object;
                if (field_110 == 0) {
                    field_110 = i;
                }
                field_111++;
                break;
            case 3: {
                FieldMonster* object = new (1, "FMON", 1) FieldMonster(roomId, i);

                objects[i] = object;
                if (object->field_344 != 0) {
                    object->field_344->field_54 = i;
                }
                if (field_112 == 0) {
                    field_112 = i;
                }
                field_113++;
                break;
            }
            case 4:
                object = new (1, "FBRL", 1) FieldObject(roomId, i);
                objects[i] = object;
                if (field_114 == 0) {
                    field_114 = i;
                }
                field_115++;
                break;
            case 5: {
                FieldObject* object = new (1, "FRCK", 1) FieldObject(roomId, i);

                if (sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, object->field_22C_10 + 0x1160) == 1) {
                    object->field_20C_0 = 0;
                    object->field_20C_25 = 0;
                }
                object->field_210_5 = 1;
                objects[i] = object;
                if (field_116 == 0) {
                    field_116 = i;
                }
                field_117++;
                break;
            }
            case 6:
                object = new (1, "FSPL", 1) FieldObjectSubclass2(roomId, i);
                objects[i] = object;
                if (field_118 == 0) {
                    field_118 = i;
                }
                field_119++;
                break;
            case 7:
                object = new (1, "FBLK", 1) FieldObjectSubclass3(roomId, i);
                objects[i] = object;
                if (field_11A == 0) {
                    field_11A = i;
                }
                field_11B++;
                break;
            default:
                objects[i] = 0;
                break;
        }
        objects[i]->field_210_4 = objects[i]->field_20C_5;
        objects[i]->field_239 = 16 >> field_FA_10;
        objects[i]->field_54 = i;
    }
    ((FieldPlayerCharacter*)objects[luigiLeads])->field_352_7 = 1;
    if (field_10E != 0) {
        field_11C = field_10E;
    } else if (field_110 != 0) {
        field_11C = field_110;
    } else {
        field_11C = field_112;
    }
    field_11D = field_10F + field_111 + field_113;
    for (i = 0; i < 8; i++) {
        shotBullets[i] = new (1, "FPSB", 1) FieldPlayerShotBullet(i);
    }
}
#endif

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8026C78__12FieldManager.s\"");
#else
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
                FieldObjectSubclass3* object =
                    new (1, "SBLK", 1) FieldObjectSubclass3(entry, index, -1, -1);

                if ((flags & 0x10) && object->field_33C_0) {
                    object->field_20C_25 = 0;
                }
                object->field_54 = field_10B;
                objects[field_10B] = object;
                if (field_11A == 0) {
                    field_11A = field_10B;
                }
                field_11B++;
                field_10B++;
                break;
            }
            case 0xA0:
            case 0xC0:
                field_134[field_1F4].field_0_0 = flags != 0xA0;
                field_134[field_1F4].field_0_1 =
                    sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, (u16)(index + 0x1360));
                field_134[field_1F4].field_1 = entry[1];
                field_134[field_1F4].field_2 = entry[2];
                offset = (u8)(entry[5] >> 1);
                field_134[field_1F4].field_3 =
                    (entry[3] & 0x7F) + ((entry[5] & 0x20) ? (u32)(offset | ~0x1F) >> 3 : offset >> 3);
                field_134[field_1F4].field_4 = index;
                field_134[field_1F4].field_8 = entry;
                field_1F4++;
                break;
        }
    }
}
#endif

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
                sub_802EF18(this);
            } else if (field_246_2 == 5) {
                field_246_2 = 0;
                sub_8029A0C(this, 0, 0);
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
            sub_80291EC(this, mode != 1 ? 4 : 0, arg2, arg3, arg4, arg5);
            break;
        case 4:
            if (field_F0 != 0) {
                gGameState.field_0 = field_F0 >> 16;
                gGameState.field_2 = field_F0;
                gGameState.field_884 = field_F0;
                sub_80290E0(this);
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
                sub_80290E0(this);
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
        sub_8021FD4();
        field_F8_0 = 0;
    }
    if (field_314) {
        sub_81166AC(field_314, 3);
        field_314 = NULL;
    }
    evts->process->disable();
    bevs->process->disable();
    disable();
    for (i = 0; i < field_10B; i++) {
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
void FieldManager::sub_8027688() {
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

// Like sub_8027688, but ends with sub_812F5A4 instead of the "SIGN" process.
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
        if (!fmex->field_25C[i].sprite->field_12_5) {
            sub_8020D40(fmex->field_25C[i].sprite);
        }
    }
    field_10A = 0;
    field_FC_2 = 0;
    field_2A9_2 = mode;
    field_2A8_0 = monster->field_54;
    field_2A8_5 = player->field_33C_7;
    field_2A9_5 = player->field_54;
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
    play_sfx_80195B4(word_839F5F8[field_2A9_2 * 2 + player->field_54], -1);
    field_2A9_6 = arg4;
    field_2A9_7 = arg4;
    sub_803C8A4(this, 0, 1);
}
#endif
