#pragma implementation "field.h"

#include "global.h"
#include "common.h"
#include "heap.h"
#include "field.h"

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_fldm_8021FF8.s\"");
#else
FieldManager::FieldManager(u8 priority, char* label, int room, bool arg4, bool arg5)
    : Process(priority, label) {
    FieldManager* fldm = this;
    u8 flag4 = arg4;
    u8 flag5 = arg5;
    Process* process;
    struct EventScriptProcess** script;
    void** buffer;

    fldm->field_F8_1 = (room == -1);

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
    fldm->field_124 = room;
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
    fldm->field_12C_3 = 31;
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
    fldm->field_208_4 = 0;
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
        sub_8057B58(field_304, 3);
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

asm_unified(".include \"asm/nonmatching/update__12FieldManager.s\"");

asm_unified(".include \"asm/nonmatching/update_field_8023DD4.s\"");

void FieldManager::sub_80254C0() {
    CpuCopy32(dword_3000FC0, field_20->data, 0x574);
    field_20->field_0_1 = field_208_0;
    field_20->field_0_2 = field_208_1;
    field_20->luigiLeads = luigiLeads;
    field_20->field_0_4 = field_208_3;
    field_20->field_0_5 = field_208_4;
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
    field_208_4 = field_20->field_0_5;
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
                    if (field_208_4 == 0 || field_246_2 == 3) {
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
                sub_80503CC(*objects++);
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
                    sub_804761C(*objects, 0);
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
            sub_80465D8(*objects);
            (*objects)->method13();
            (*objects)->method14(&this->objects[0], 0);
            sub_804034C(*objects);
            count--;
            objects++;
        }
    }
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025C04__12FieldManageri.s\"");
#else
u8 FieldManager::sub_8025C04(int index) {
    FieldObject* object = objects[index];
    u8 result = 0;
    int left = object->field_C - object->field_272 / 2;
    int top = object->field_10 + object->field_270;
    int z = object->field_14;
    int i;

    if (object->field_18 > 0 || (object->field_18 < 0 && object->field_40 < 0)) {
        z += object->field_18;
    }
    for (i = 0; i < 2; i++) {
        FieldObject* other = objects[i];
        int otherLeft = other->field_C - other->field_272 / 2;
        int otherTop;
        int otherZ;
        int overlap;

        if (otherLeft < left) {
            overlap = otherLeft + other->field_272 - left;
        } else {
            overlap = left + object->field_272 - otherLeft;
        }
        if (overlap > 0) {
            otherTop = other->field_10 + other->field_270;
            if (otherTop > top) {
                overlap = top - (otherTop - other->field_276);
            } else {
                overlap = otherTop - (top - object->field_276);
            }
            if (overlap > 0) {
                otherZ = other->field_14;
                if (other->field_18 > 0 || (other->field_18 < 0 && other->field_40 < 0)) {
                    otherZ += other->field_18;
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
#endif

bool FieldManager::sub_8025D24(int type) {
    if (field_12A > 1) {
        switch (type) {
            case 0:
                if ((field_D0->field_0 & 0x300) == 0 && (field_D0->field_2 & leader->field_368->field_4)) {
                    return 1;
                }
                break;
            case 1:
                if ((field_D0->field_0 & 0x300) == 0 && (field_D0->field_2 & follower->field_368->field_4)) {
                    return 1;
                }
                break;
            case 2:
                if ((field_D0->field_0 & follower->field_368->field_6) == 0 &&
                    (field_D0->field_2 & leader->field_368->field_6)) {
                    return 1;
                }
                break;
            case 3:
                if ((field_D0->field_0 & leader->field_368->field_6) == 0 &&
                    (field_D0->field_2 & follower->field_368->field_6)) {
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

// https://decomp.me/scratch/TODO
// Only register allocation differs. The original masks follower->field_24_0 with an extra `& 7` (the 7
// lives in a register from the first player block), but an explicit `& 7` adds a stack slot.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025F28__12FieldManager.s\"");
#else
void FieldManager::sub_8025F28() {
    struct SaveSlot* slot = &dword_3000FFC->slots[stru_3000D40.slot];
    struct SaveSlotData* data = &slot->data;
    struct SaveSlotPlayer* player;

    data->field_0_0 = field_F8_6;
    data->field_0_1 = field_208_0;
    data->field_0_2 = field_208_1;
    data->luigiLeads = luigiLeads;
    data->field_0_4 = field_208_3;
    data->field_0_5 = field_208_4;
    data->field_0_6 = field_26B_5;
    data->field_0_10 = field_246_2;
    data->field_0_13 = field_FA_5;
    data->field_0_18 = field_208_6;
    data->field_0_19 = field_208_7;
    data->field_0_20 = word_3000D3C;

    player = &data->field_4[luigiLeads];
    player->field_0 = field_124;
    player->field_2_0 = leader->field_24_0;
    player->field_4 = leader->field_C / 256;
    player->field_6 = leader->field_10 / 256;
    player->field_8 = leader->field_14 / 256;
    player->field_A = leader->field_18 / 256;

    player = &data->field_4[luigiLeads ^ 1];
    if (field_2D8_0 == 31) {
        player->field_0 = field_124;
        player->field_2_0 = follower->field_24_0;
        player->field_4 = follower->field_C / 256;
        player->field_6 = follower->field_10 / 256;
        player->field_8 = follower->field_14 / 256;
        player->field_A = follower->field_18 / 256;
    } else {
        player->field_0 = field_2DA;
        player->field_2_0 = field_2D8_5;
        player->field_4 = field_2DC / 256;
        player->field_6 = field_2E0 / 256;
        player->field_8 = field_2E4 / 256;
        player->field_A = field_2E8 / 256;
    }
}
#endif

int FieldManager::sub_80261C0(FieldObject* object) {
    if (field_1F4 != 0) {
        FieldStruct3* entry = field_134;
        s16 x = object->field_C / 256;
        s16 y = object->field_10 / 256;
        s16 z = object->field_14 / 2048;
        int i;

        for (i = 0; i < field_1F4; entry++, i++) {
            if (entry->field_0_1 == 0 && object->field_18 == 0 && z == entry->field_3
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
