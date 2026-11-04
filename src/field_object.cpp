#pragma implementation "field_object.h"
#include "global.h"
#include "common.h"
#include "field_object.h"
#include "field_player_character.h"

FieldObject::FieldObject(int room, int index) {
    field_1 = 0xFF;
    field_29 = -1;
    field_20C_0 = 1;
    field_20C_19 = 1;
    field_20C_25 = 1;
    field_210_0 = 0;
    field_210_1 = 1;
    field_210_2 = 1;
    field_210_3 = 1;
    field_210_6 = 1;
    field_2B5_0 = 0;
    field_2B7_3 = 31;
    field_2B8_0 = 7;
    field_214_0 = 3;
    field_214_13 = 14;
    field_214_17 = 1;
    field_214_18 = 0;
    field_230 = -1;
    field_234 = -1;
    field_238 = -1;
    field_239 = 16;
    field_23D = 0;
    field_26C = 0xFFFF;
    field_26E = 0xFF;
    field_268 = -1;
    sub_8047EFC(0x200, 0x200, 0x52C, 0x75);
    if (room != -1) {
        init_fobj_with_data_80FB128(room, index, this);
    }
}

void FieldObject::method5() {
    u32 changed;

    if (field_214_21 == 0) {
        //! \bug Copies the first 0x28 bytes to field_28 *before* comparing them, so `changed` is always
        //! 0.
        CpuCopy32(this, &field_28, 0x28);
        changed = previousX != x;
        if (previousY != y) {
            changed |= 2;
        }
        if (previousZ != z) {
            changed |= 4;
        }
        if (previousHeight != height) {
            changed |= 8;
        }
        field_212_9 = changed;
        field_50 = sprite->xPosition;
        field_52 = sprite->yPosition;
    }
}

void FieldObject::sub_80400B0(int arg1, int arg2, int arg3) {
    int speed;
    int distance;

    field_248 = arg2 == -1 ? field_266 : arg2;
    if (arg1 == -1) {
        field_254 = field_258 = field_264;
    } else if (arg1 == 0) {
        field_254 = field_258 = 0;
    } else if (arg1 == 30) {
        field_254 = field_258 = 0x52C;
    } else {
        arg1 <<= 8;
        speed = 0;
        distance = 0;
        do {
            speed += field_248;
            distance += speed;
        } while (distance < arg1);
        distance -= arg1;
        if (distance > 0) {
            distance <<= 8;
            distance /= speed;
            speed -= field_248 * distance / 256;
        }
        field_254 = speed;
        field_258 = speed;
    }
    field_212_13 = field_258 > 0;
    field_25C = 0;
    field_24C = z + height;
    field_250 = height;
    field_240 = field_23E;
    if (arg3 == -1) {
        field_23E = field_262;
    } else {
        field_23E = arg3;
    }
}

void FieldObject::sub_80401F0(int arg1, int arg2, int arg3) {
    field_248 = arg2 == -1 ? field_266 : arg2;
    field_254 = arg1 == -1 ? field_264 : arg1;
    field_258 = field_254;
    field_25C = 0;
    field_24C = z + height;
    field_250 = height;
    field_240 = field_23E;
    if (arg3 == -1) {
        field_23E = field_262;
    } else {
        field_23E = arg3;
    }
    field_212_13 = field_258 > 0;
}

void FieldObject::sub_80402C4() {
    if (field_25C >= 0) {
        height += field_258;
        field_258 -= field_248;
        if (field_20C_13 == 0) {
            if (height <= 0) {
                sub_8047EB8();
                height = 0;
            } else {
                field_25C++;
            }
        } else if (z + height <= field_24C) {
            sub_8047EB8();
            if (z + height < 0) {
                height = -z;
            }
        } else {
            field_25C++;
        }
    }
}

void FieldObject::sub_804034C() {
    if (field_20C_0 && field_214_21 == 0) {
        if (field_25C >= 0) {
            if (z + height >= previousZ + previousHeight) {
                state = FIELD_OBJECT_STATE_RISING;
            } else {
                state = FIELD_OBJECT_STATE_FALLING;
            }
        } else if (velocityX != 0 || velocityY != 0) {
            state = FIELD_OBJECT_STATE_MOVING;
        } else {
            state = FIELD_OBJECT_STATE_IDLE;
        }
    }
}

// https://decomp.me/scratch/TODO
// Only constant sharing differs: the original tests field_298_0 with its own 1 but shares another 1 for
// the `& 1` of the copied 1-bit fields, and derives some masks from each other (-7 from -13).
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/method2__11FieldObjectPUsT1Pv.s\"");
#else
void FieldObject::method2(u16* arg1, u16* arg2, void* arg3) {
    struct Sprite* sprite;
    struct struc_839EE60* entry;
    int animation;
    int animation2;
    int flag;

    field_2A8 = arg1;
    field_2AC = arg2;
    field_334 = arg3;
    if (field_298_0) {
        sprite = sub_8020DD0(0, field_218, field_214_17 != 0, -1, -1, -1, field_21E);
        field_26C = sub_81152FC(arg3, field_218);
    } else if (field_222 != 0xFF) {
        field_218 = arg1[field_222];
        field_21E = arg2[field_223];
        sprite = sub_8020DD0(0, field_218, field_214_17 != 0, -1, -1, -1, field_21E);
        field_26C = sub_81152FC(arg3, field_218);
    } else {
        sprite = sub_8020DD0(0, 0x8006, field_214_17 != 0, -1, -1, -1, -1);
        field_218 = 0x8006;
        field_21E = (sprite->field_1E_4 + 1) << 12 | sprite->field_1C;
    }
    field_214_23 = field_218 == 0x1001 || field_218 == 0x1002 || field_218 == 0x1028;
    field_214_22 = 0;
    entry = &off_839EE60[sprite->field_1E_0][sprite->field_16];
    field_214_18 = entry->field_0_29;
    field_214_20 = entry->field_0_28;
    animation2 = -1;
    if (field_298_0) {
        animation = field_29B;
        animation2 = field_29C;
        flag = field_298_1;
    } else if (entry->field_0_29 != 0 && initialDirection <= 7) {
        u8 value;

        direction = initialDirection;
        angle = direction << 5;
        value = byte_83A05EC[field_214_18 * 16 + field_214_20 * 8 + direction];
        animation = value & 0x7F;
        flag = value >> 7;
    } else {
        animation = initialDirection;
        flag = 0;
    }
    sub_801E150(sprite, animation, -1, 0, 0);
    if (animation2 != -1) {
        sub_801E150(sprite, animation, animation2, 0, 0);
    }
    if (sprite->field_48 != 0) {
        int value = sub_80198B0(sprite->field_48->field_4) >> 5;

        if (value > sprite->field_28_0) {
            sprite->field_28_0 = value;
        }
    }
    sprite->field_11_6 = flag;
    if (field_298_0) {
        sprite->field_1F_0 = field_298_2;
        sprite->field_1F_2 = field_298_4;
        sprite->field_12_1 = field_298_6;
        sprite->field_12_3 = field_299_0;
        sprite->field_12_4 = field_299_1;
        sprite->field_2A = field_29E;
        sprite->field_2C = field_2A0;
        sprite->xScale = field_2A2;
        sprite->yScale = field_2A4;
    } else {
        sprite->field_1F_2 = 1;
        sprite->field_1F_0 = 1;
    }
    sprite->field_20[0] = field_239;
    field_298_0 = 0;
    if (field_214_0 == 0 || field_214_0 == 2 || field_214_0 == 3 || field_214_0 == 5) {
        sprite->field_12_4 = 1;
    }
    this->sprite = sprite;
    if (field_212_5 == 0) {
        sub_80415A0();
        field_212_5 = 1;
    }
}
#endif

//! Possible fake match: field_214_17 is passed as `field_214_17 != 0` here and in method2 (the original
//! reads it as `(x >> 1) & 1`); the source probably passed the result of an inline bool getter.
void FieldObject::sub_8040790() {
    field_214_23 = field_218 == 0x1001 || field_218 == 0x1002 || field_218 == 0x1028;
    sub_80210A8(sprite, 0, field_218, field_214_17 != 0, -1, -1, -1, field_21E);
}

// https://decomp.me/scratch/TODO
// Only the registers of the sprite / size values in the field_48 block differ.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8040804__11FieldObjectbii.s\"");
#else
void FieldObject::sub_8040804(bool mode, int animation, int flag) {
    struct struc_839EE60* entry;
    u8 value;

    if (mode == 0) {
        field_26C = sub_81152FC(field_334, (sprite->field_1E_0 + 1) << 12 | sprite->field_16);
        field_214_22 = 0;
    }
    entry = &off_839EE60[sprite->field_1E_0][sprite->field_16];
    field_214_18 = entry->field_0_29;
    field_214_20 = entry->field_0_28;
    value = byte_83A05EC[field_214_18 * 16 + field_214_20 * 8 + direction];
    if (animation == -1) {
        animation = value & 0x7F;
    }
    if (flag == -1) {
        flag = value >> 7;
    }
    sub_801E150(sprite, animation, mode == 1 ? -1 : 0, 0, 0);
    if (mode == 1 && sprite->field_48 != 0) {
        int size = sub_80198B0(sprite->field_48->field_4) >> 5;

        if (size > sprite->field_28_0) {
            sprite->field_28_0 = size;
        }
    }
    sprite->field_11_6 = flag;
    if (field_214_0 == 0 || field_214_0 == 2 || field_214_0 == 3 || field_214_0 == 5) {
        sprite->field_12_4 = 1;
    }
    sprite->field_20[0] = field_239;
    if (field_20C_25) {
        int value2 = sprite->field_12_1;

        sub_8021ED8(sprite);
        sprite->field_12_1 = value2;
        if (mode != 0 && field_20C_22) {
            sub_8047DC8(0xFF);
        }
    }
    sub_80415A0();
}
#endif

//! Possible fake match: the `& 1` on the field_299_1 copy only places the constant 1 (used for
//! field_298_0) where the original has it.
void FieldObject::method3() {
    field_298_1 = sprite->field_11_6;
    field_298_2 = sprite->field_1F_0;
    field_298_4 = sprite->field_1F_2;
    field_298_6 = sprite->field_12_1;
    field_299_0 = sprite->field_12_3;
    field_299_1 = sprite->field_12_4 & 1;
    field_29B = sprite->field_20[1];
    field_29C = sprite->field_23;
    field_29E = sprite->field_2A;
    field_2A0 = sprite->field_2C;
    field_2A2 = sprite->xScale;
    field_2A4 = sprite->yScale;
    field_298_0 = 1;
}

void FieldObject::method6(int arg) {
    int changed;
    int flag;

    if (field_20C_0 && field_20C_25 && field_214_21 == 0) {
        if (field_214_0 > 2) {
            u8* table = byte_83A0636;
            int index = angle >> 4;
            int value;

            if (field_214_18 != 1) {
                index += 16;
            }
            value = table[index];
            direction = value;
        }
        changed = arg;
        flag = 0;
        switch (field_214_0) {
            case 0:
            case 1:
            case 4:
                if (direction != previousDirection) {
                    changed = 1;
                }
                if (field_214_0 == 0) {
                    flag = 1;
                }
                break;
            case 2:
            case 3:
            case 5:
                if (state != previousState || direction != previousDirection) {
                    changed = 1;
                }
                if ((velocityX == 0 && velocityY == 0) || field_214_0 == 5) {
                    flag = 1;
                }
                break;
        }
        if (changed) {
            int value = sprite->field_12_1;

            method7(1);
            sprite->field_12_1 = value;
        }
        sprite->field_12_4 = flag;
    }
}

void FieldObject::method7(u8 force) {
    int animation;
    int flag;

    if (field_214_18 == 0) {
        animation = sprite->field_20[1];
        flag = 0;
    } else {
        u8 value = byte_83A05EC[field_214_18 * 16 + field_214_20 * 8 + direction];

        animation = value & 0x7F;
        flag = value >> 7;
    }
    if (sprite->field_20[1] != animation || sprite->field_11_6 != flag || force) {
        sub_801E150(sprite, animation, 0, 0, 0);
        sprite->field_11_6 = flag;
    }
}

void FieldObject::method8(u16 cameraX, u16 cameraY, FieldObject** objects) {
    int screenX;
    int screenY;
    u16 spriteX;
    u16 spriteY;

    if (field_222 == 0xFF) {
        return;
    }
    screenX = x / 256 - (s16)cameraX;
    field_6 = screenX;
    screenY = (y - z) / 256 - (s16)cameraY - byte_83A0656[field_20C_15];
    field_8 = screenY;
    spriteX = field_6 + field_23A;
    spriteY = (screenY - height / 256) + byte_83A0656[field_20C_15] + (field_23B + 1);
    sprite->xPosition = spriteX;
    sprite->yPosition = spriteY;
    sprite->field_E = field_214_13 << 12 | (0x800 - y / 256);
    if (field_20C_15 <= 2) {
        FieldObject* other = field_238 >= 0 ? objects[field_238] : 0;

        if (other != 0) {
            field_A = (other->height - (z - other->z) + other->field_274) / 256;
        } else {
            field_A = 0;
        }
    } else {
        field_A = 0;
    }
    // Type 7 objects are FieldPlayerCharacters.
    if (field_20C_19 == 7 && ((FieldPlayerCharacter*)this)->field_33C_2) {
        return;
    }
    if (field_211_0 != 0
        || ((s16)spriteX >= -16 - field_282 && (s16)spriteX <= field_282 + 256
            && (s16)spriteY <= field_283 + 0xD0
            && (field_8 <= (s16)spriteY || field_8 >= -16 - field_283))) {
        field_214_21 = 0;
        if (field_20C_25 && sprite->field_12_5) {
            int value;

            field_214_24 = 1;
            value = sprite->field_12_1;
            sub_8021ED8(sprite);
            sprite->field_12_1 = value;
            if (field_26E != 0xFF) {
                sub_8116654(field_334, field_26E);
            }
        }
    } else {
        field_214_21 = field_20C_18 ^ 1;
        if (field_20C_25 && sprite->field_12_5 == 0) {
            if (field_26E != 0xFF) {
                sub_8116680(field_334, field_26E);
            }
            field_23D = 0;
            sub_8020D40(sprite);
        }
    }
}

// https://decomp.me/scratch/TODO
// Only register allocation differs (e.g. `right` and the constant 3 swap r7/r8), which adds a few movs.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/method9__11FieldObject.s\"");
#else
void FieldObject::method9() {
    u16 width;
    int boxHeight;
    int row;
    int col;
    int layer0;
    int layer1;
    struct Coldef* coldef;

    if (!(field_20C_12 && field_20C_25) || field_214_21) {
        return;
    }
    if (field_214_24 == 0 && x == previousX && y == previousY && z == previousZ
        && height == previousHeight) {
        return;
    }
    width = field_278 >> 8;
    boxHeight = field_27C >> 8;
    if (field_210_7) {
        int cellX = x / 256;
        int cellY = y / 256;
        int right = (cellX + ((width >> 1) - 1)) / 16;
        int top = (cellY - boxHeight) / 16;

        for (row = cellY / 16; row >= top; row--) {
            for (col = (cellX - (width >> 1)) / 16; col <= right; col++) {
                coldef = get_coldef_ptr_by_xz(field_290, col, row);
                if (coldef->priorityOverride) {
                    sprite->field_1F_0 = sprite->field_1F_2 = field_23C =
                        field_26_1 ? coldef->secondaryPriority : coldef->primaryPriority;
                    return;
                }
            }
        }
    }
    if (field_230 >= 0) {
        col = field_230;
        row = field_234;
    } else {
        col = x;
        row = y;
    }
    col /= 4096;
    row /= 4096;
    coldef = get_coldef_ptr_by_xz(field_290, col, row);
    if (field_26_1) {
        layer1 = layer0 = coldef->secondaryPriority;
        field_23C = layer1;
    } else {
        int half;
        int column;
        int end;

        layer1 = layer0 = coldef->primaryPriority;
        half = width >> 1;
        column = (x - half * 256) / 4096;
        end = (x + (half - 1) * 256) / 4096;
        for (; column <= end; column++) {
            coldef = get_coldef_ptr_by_xz(field_290, column, row);
            if (coldef->secondaryHeight == 0 && coldef->primaryPriority > layer0) {
                layer1 = layer0 = coldef->primaryPriority;
                col = column;
                if (coldef->priorityOverride) {
                    break;
                }
            }
        }
        field_23C = layer1;
        row = y / 4096;
        end = (y - height) / 4096 - 1;
        for (;;) {
            int layer;

            row--;
            layer = get_coldef_ptr_by_xz(field_290, col, row)->primaryPriority;
            if (layer0 > layer) {
                layer0 = layer;
            }
            if (row <= end) {
                break;
            }
            if (layer1 > layer) {
                layer1 = layer;
            }
        }
    }
    sprite->field_1F_0 = layer0 > 0 ? layer0 : 2;
    sprite->field_1F_2 = layer1 > 0 ? layer1 : 2;
    if (field_23C < sprite->field_1F_2) {
        field_23C = sprite->field_1F_2;
    }
    field_214_24 = 0;
}
#endif

struct struc_Oam* FieldObject::method10(struct struc_Oam* oam, FieldObject** objects) {
    u16 oamX;
    s16 oamY;
    struct Sprite* other;
    int layer;

    if (field_20C_0 && field_20C_25 && field_214_21 == 0) {
        if (field_20C_15 != 0 && field_20C_26
            && ((field_212_6 && height >= 0)
                || (height > 0 && (field_20C_15 > 2 || (s8)field_1 == -1)))) {
            switch (field_20C_15) {
                case 1:
                case 2: {
                    s16 distance = height / 256 - field_A;

                    if (distance <= 10) {
                        field_23D = 1;
                    } else if (distance <= 20) {
                        field_23D = 2;
                    } else {
                        field_23D = 3;
                    }
                    if (field_20C_15 == 2) {
                        field_23D += 3;
                    }
                    break;
                }
                case 3:
                    field_23D = 7;
                    break;
                case 4:
                    field_23D = 8;
                    break;
            }
        } else {
            field_23D = 0;
        }
        if (field_23D != 0) {
            oamX = stru_83A065C[field_23D - 1].x + field_6;
            oamY = (field_8 - field_A) + stru_83A065C[field_23D - 1].y;
            if ((u16)(oamX + 16) <= 272 && oamY >= -16 && oamY <= 176) {
                other = field_238 >= 0 ? objects[field_238]->sprite : 0;
                layer = field_23C;
                if (other != 0) {
                    if (layer > other->field_1F_0) {
                        layer = other->field_1F_0;
                    }
                    if (layer > other->field_1F_2) {
                        layer = other->field_1F_2;
                    }
                    oam->field_8 = other->field_34->field_8 - 1;
                } else {
                    oam->field_8 = layer << 30 | 0x3FFFC000;
                }
                oam->data.attr[0] = stru_83A065C[field_23D - 1].attr0 | (oamY & 0xFF);
                //! Possible fake match: the original masks x to 9 bits with a shift pair (maybe a
                //! macro).
                oam->data.attr[1] = stru_83A065C[field_23D - 1].attr1 | ((u32)(oamX << 23) >> 23);
                oam->data.attr[2] = layer << 10 | 0xF000 | stru_83A065C[field_23D - 1].attr2;
                oam->data.oam.affineParam = 0;
                oam = oam->next;
            }
        }
    }
    return oam;
}

void FieldObject::sub_80415A0() {
    u8* entry = off_83A069C[sprite->field_1E_0];

    if (entry != 0) {
        // 7-byte entries of 5- and 6-bit values, packed from the most significant bit.
        entry += sprite->field_16 * 7;
        field_272 = ((((entry[0] >> 3) << 1) & 0x3F) + 2) * 256;
        field_274 = ((((entry[0] << 3) | (entry[1] >> 5)) & 0x3F) + 1) * 256;
        field_276 = ((((entry[1] << 1) | (entry[2] >> 7)) & 0x3F) + 1) * 256;
        field_278 = ((((entry[2] >> 2) << 1) & 0x3F) + 2) * 256;
        field_27A = ((((entry[2] << 4) | (entry[3] >> 4)) & 0x3F) + 1) * 256;
        field_27C = ((((entry[3] << 2) | (entry[4] >> 6)) & 0x3F) + 1) * 256;
        field_270 = (entry[4] & 0x3F) * 256;
        field_282 = (((entry[5] >> 3) << 1) & 0x3F) + 2;
        field_283 = (((entry[5] << 3) | (entry[6] >> 5)) & 0x3F) + 1;
        if (field_270 & 0x20) {
            field_270 |= 0xC0;
        }
    } else {
        field_272 = 0x1000;
        field_274 = 0x2000;
        field_276 = 0x800;
        field_278 = 0x1000;
        field_27A = 0x2000;
        field_27C = 0x800;
        field_270 = 0;
        field_282 = 16;
        field_283 = 32;
    }
    field_27E = field_278;
    field_280 = field_27C;
    if (field_20C_19 == 0) {
        field_27E = field_278 - 0x800;
        field_280 = field_27C - 0x200;
    }
}

// https://decomp.me/scratch/TODO
// Only the registers of size2 and size3 are swapped.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804173C__11FieldObjectiUcUcUc.s\"");
#else
void FieldObject::sub_804173C(int set, u8 size1, u8 size2, u8 size3) {
    u8* entry = off_83A069C[sprite->field_1E_0];

    if (entry != 0) {
        entry += sprite->field_16 * 7;
        if (set == 0) {
            field_272 = size1 ? size1 * 256 : ((((entry[0] >> 3) << 1) & 0x3F) + 2) * 256;
            field_274 = size2 ? size2 * 256 : ((((entry[0] << 3) | (entry[1] >> 5)) & 0x3F) + 1) * 256;
            field_276 = size3 ? size3 * 256 : ((((entry[1] << 1) | (entry[2] >> 7)) & 0x3F) + 1) * 256;
        } else {
            field_278 = size1 ? size1 * 256 : ((((entry[2] >> 2) << 1) & 0x3F) + 2) * 256;
            field_27A = size2 ? size2 * 256 : ((((entry[2] << 4) | (entry[3] >> 4)) & 0x3F) + 1) * 256;
            field_27C = size3 ? size3 * 256 : ((((entry[3] << 2) | (entry[4] >> 6)) & 0x3F) + 1) * 256;
        }
    } else if (set == 0) {
        field_272 = size1 ? size1 * 256 : 0x1000;
        field_274 = size2 ? size2 * 256 : 0x2000;
        field_276 = size3 ? size3 * 256 : 0x800;
    } else {
        field_278 = size1 ? size1 * 256 : 0x1000;
        field_27A = size2 ? size2 * 256 : 0x2000;
        field_27C = size3 ? size3 * 256 : 0x800;
    }
}
#endif

void FieldObject::sub_80418E8(FieldObject** objects) {
    FieldObject* other;
    u16 width;
    u16 otherWidth;
    u16 depth;
    u16 otherDepth;
    int left;
    int otherLeft;
    int top;
    int otherTop;
    int overlap;

    if (field_20C_0 && field_214_21 == 0 && field_29 != -1 && field_20C_14 && field_25C <= 0
        && z + height <= previousZ + previousHeight && field_258 <= 0) {
        other = objects[field_29];
        if (other->field_20C_0) {
            x += other->x - other->previousX;
            y += other->y - other->previousY;
            z = other->z;
            height = other->height + other->field_274;
            width = field_272;
            otherWidth = other->field_272;
            left = x - width / 2;
            otherLeft = other->x - otherWidth / 2;
            if (otherLeft < left) {
                overlap = otherLeft + otherWidth - left;
            } else {
                overlap = left + width - otherLeft;
            }
            if (overlap > 0) {
                depth = field_276;
                otherDepth = other->field_276;
                top = y + field_270;
                otherTop = other->y + other->field_270;
                if (otherTop > top) {
                    overlap = top - (otherTop - otherDepth);
                } else {
                    overlap = otherTop - (top - depth);
                }
                if (overlap > 0 && (s8)field_1 == -1) {
                    field_1 = field_29;
                    field_25C = -1;
                }
            }
        }
    }
}

// Inline members. Earlier functions and other files call them; later ones inline them (sub_8047EB8 in
// method12 and sub_8046A10, sub_8047E7C in method13 and sub_80461B4). Their out-of-line copies are
// emitted at the end of the file in reverse order of definition (0x08047DC8-0x08047FDC), which fixes
// this order: sub_8047F60, sub_8047EFC, sub_8047EB8, sub_8047E7C, sub_8047E50, sub_8047DC8.
inline void FieldObject::sub_8047F60(int newX, int newY, int newHeight, int savePrevious,
                                     int relative) {
    if (relative == 0) {
        x = newX;
        y = newY;
        height = newHeight;
    } else {
        x += newX;
        y += newY;
        height += z + newHeight;
    }
    z = 0;
    if (savePrevious) {
        previousX = x;
        previousY = y;
        previousZ = 0;
        previousHeight = height;
        if (field_290 != NULL) {
            method15(1);
        }
    }
    field_214_24 = 1;
}

inline void FieldObject::sub_8047EFC(u16 speed, u16 arg2, s16 arg3, s16 arg4) {
    field_23E = speed;
    field_260 = speed;
    field_262 = arg2;
    field_264 = arg3;
    field_266 = arg4;
    field_254 = 0;
    field_25C = -1;
    field_24C = -1;
    field_250 = -1;
}

inline void FieldObject::sub_8047EB8() {
    field_25C = -1;
    field_212_13 = 0;
    field_24C = field_250 = -1;
    field_23E = field_240;
}

inline int FieldObject::sub_8047E7C() {
    if (y == previousY && x == previousX) {
        return -1;
    }
    return sub_81DA690(previousY - y, x - previousX);
}

// https://decomp.me/scratch/TODO
// Mostly register and stack-slot allocation differs (e.g. `this` is r4 in the original); in this
// version two identical "landing" blocks also get merged where the original keeps them apart.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/method12__11FieldObjectPP11FieldObjectiUc.s\"");
#else
void FieldObject::method12(FieldObject** others, int count, u8 flag) {
    int left;
    int top;
    int bottom;
    int n;
    FieldObject* other;
    int pushThis;
    int pushOther;
    int otherWidth;
    int otherDepth;
    int offset;
    int otherOffset;
    int thisTop;
    int width;
    int depth;
    int otherLeft;
    int otherTop;
    int otherBottom;
    int overlap;
    int otherX;
    int otherY;
    int sideThis;
    int sideOther;
    int verticalThis;
    int verticalOther;

    if (!field_20C_0 || field_214_21 || !(field_20C_6 | field_20C_8)) {
        return;
    }
    left = x - field_272 / 2;
    top = y;
    bottom = z;
    if (height > 0 || (height < 0 && previousHeight < 0)) {
        bottom += height;
    }
    n = field_20C_8 ? count : 2;
    for (; n != 0; n--, others++) {
        other = *others;
        if (field_54 == other->field_54) {
            continue;
        }
        if (flag && !other->field_210_5) {
            continue;
        }
        if (!other->field_20C_0) {
            continue;
        }
        if (other->field_214_21 && other->field_54 != field_29) {
            continue;
        }
        if (other->field_29 == field_54) {
            continue;
        }
        if (other->field_20C_19 == 0) {
            pushThis = field_20C_6 & other->field_20C_9;
            pushOther = field_20C_5 & other->field_20C_8;
        } else {
            pushThis = field_20C_8 & other->field_20C_9;
            pushOther = field_20C_9 & other->field_20C_8;
        }
        if (!pushThis) {
            continue;
        }

        otherWidth = other->field_272;
        otherLeft = other->x - otherWidth / 2;
        width = field_272;
        otherX = other->x;
        if (otherLeft < left) {
            overlap = otherLeft + otherWidth - left;
        } else {
            overlap = left + width - otherLeft;
        }
        if (overlap <= 0) {
            break;
        }

        otherOffset = other->field_270;
        otherDepth = other->field_276;
        otherTop = other->y + otherOffset;
        offset = field_270;
        depth = field_276;
        thisTop = top + offset;
        otherY = other->y;
        if (otherTop > thisTop) {
            overlap = thisTop - (otherTop - otherDepth);
        } else {
            overlap = otherTop - (thisTop - depth);
        }
        if (overlap <= 0) {
            break;
        }

        otherBottom = other->z;
        if (other->height > 0 || (other->height < 0 && other->previousHeight < 0)) {
            otherBottom += other->height;
        }
        if (otherBottom <= bottom) {
            overlap = otherBottom + other->field_274 - bottom;
        } else {
            overlap = bottom + field_274 - otherBottom;
        }
        if (overlap < 0) {
            break;
        }

        sideThis = 0;
        sideOther = 0;
        verticalThis = 0;
        verticalOther = 0;
        if (field_29 == other->field_54) {
            verticalThis = 2;
            verticalOther = 1;
        } else {
            int previousBottom = previousZ + previousHeight;

            if (previousBottom + field_274 <= otherBottom) {
                verticalThis = 1;
                verticalOther = 2;
            } else if (previousBottom >= otherBottom + other->field_274) {
                verticalThis = 2;
                verticalOther = 1;
            }
        }

        if (verticalThis == 2) {
            // Landing on top of the other object.
            if (field_29 != other->field_54) {
                height = (height + overlap) & ~0xFF;
            }
            field_238 = other->field_54;
            field_1 = other->field_54;
            if (field_2B5_3) {
                sub_8046A10();
            } else if (field_25C >= 0) {
                sub_8047EB8();
            }
        } else if (verticalThis == 1) {
            // Hitting the other object from below.
            if (field_4C_7 != 1 && other->field_29 != field_54) {
                height -= overlap;
                if (field_25C >= 0 && field_258 > 0) {
                    field_258 = -field_258;
                }
            }
        } else {
            int previousX = this->previousX;
            int previousY = this->previousY;
            int otherPreviousX = other->previousX;
            int otherPreviousY = other->previousY;

            if (previousX == otherPreviousX && previousY == otherPreviousY) {
                if (direction <= 1) {
                    sideThis = 1;
                    sideOther = 4;
                } else if (direction <= 2) {
                    sideThis = 8;
                    sideOther = 2;
                } else if (direction <= 5) {
                    sideThis = 4;
                    sideOther = 1;
                } else if (direction <= 6) {
                    sideThis = 2;
                    sideOther = 8;
                } else {
                    sideThis = 1;
                    sideOther = 4;
                }
            } else {
                int previousTop = previousY + offset;
                int otherPreviousTop = otherPreviousY + otherOffset;

                if (previousTop - depth < otherPreviousTop
                    && previousTop > otherPreviousTop - otherDepth) {
                    if (previousX < otherPreviousX) {
                        sideThis = 2;
                        sideOther = 8;
                    } else {
                        sideThis = 8;
                        sideOther = 2;
                    }
                } else if (previousY > otherPreviousY) {
                    sideThis = 1;
                    sideOther = 4;
                } else {
                    sideThis = 4;
                    sideOther = 1;
                }
            }
            if (sideThis == 8) {
                if (x < previousX) {
                    int newX = otherX + ((otherWidth + width) >> 1);

                    if (newX > previousX) {
                        newX = previousX;
                    }
                    if (newX > x) {
                        x = newX;
                    }
                }
            } else if (sideThis == 2) {
                if (x > previousX) {
                    int newX = otherX - ((otherWidth + width) >> 1);

                    if (newX < previousX) {
                        newX = previousX;
                    }
                    if (newX < x) {
                        x = newX;
                    }
                }
            } else if (sideThis == 1) {
                if (y < previousY) {
                    int newY = otherY + (depth + otherOffset - offset);

                    if (newY > previousY) {
                        newY = previousY;
                    }
                    if (newY > y) {
                        y = newY;
                    }
                }
            } else if (y > previousY) {
                int newY = otherY + (otherOffset - otherDepth - offset);

                if (newY < previousY) {
                    newY = previousY;
                }
                if (newY < y) {
                    y = newY;
                }
            }
        }

        if (pushThis) {
            field_24_3 |= sideThis;
            field_24_7 |= verticalThis;
            if (field_0 == -1) {
                field_0 = other->field_54;
            }
            if (other->field_20C_19 == 0) {
                field_24_9 = 1;
            } else {
                field_24_10 = 1;
            }
        }
        if (pushOther) {
            other->field_24_3 |= sideOther;
            other->field_24_7 |= verticalOther;
            //! \bug Probably meant to set other->field_0, like the block above does for this object.
            if (field_0 == -1) {
                field_0 = other->field_54;
            }
            other->field_24_10 = 1;
        }
    }
    if (field_24_3 && field_2B5_0 && field_2B6_6) {
        sub_8046980();
        sub_8046A10();
    }
}
#endif

// https://decomp.me/scratch/TODO
// Same calls and control flow; mostly register and stack allocation differs (e.g. the original keeps
// newY in r10), plus the 8-11 shape switches of the "below" checks, which the original compiles as
// switches but which are much further off when written as one.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/method13__11FieldObject.s\"");
#else
// Wall collision: moves the object back out of the collision cells it walked into since the previous
// frame. The sides of the bounding box are checked in the order given by byte_83A06C0 for the movement
// direction (0 back, 1 front, 2 left, 3 right, 4-7 the corner cells), in two passes: the cells the box
// overlapped before moving, then one cell further. Returns the sides that were hit (field_24_11:
// 1 back, 2 right, 4 front, 8 left).
int FieldObject::method13() {
    int moveAngle;
    int direction;
    int previousLeft;
    int previousRight;
    int previousBack;
    int previousFront;
    int previousTop;
    int left;
    int right;
    int back;
    int front;
    int bottom;
    int topEdge;
    int pass;
    const s8* steps;
    int step;
    int newX;
    int newY;
    int moved;
    int cellX;
    int cellY;
    int last;
    struct Coldef* cell;
    int floor;
    int ceiling;
    int top;
    int adjust;
    int colLeft;
    int colRight;
    int rowBack;
    int rowFront;
    int d;
    int edge;
    u8 flag;
    int e;

    if (!field_20C_0 || field_214_21 || !field_20C_11) {
        return field_24_11;
    }
    if (x == previousX && y == previousY) {
        return field_24_11;
    }
    moveAngle = sub_8047E7C();
    if (moveAngle == -1) {
        return field_24_11;
    }

    previousLeft = previousX - field_278 / 2;
    previousRight = previousLeft + field_278;
    previousBack = previousY + 0x100 - field_27C;
    previousFront = previousY + 0x100;
    previousTop = previousZ + previousHeight + field_27A;
    left = x - field_278 / 2;
    right = left + field_278;
    back = y + 0x100 - field_27C;
    front = back + field_27C;
    bottom = z;
    if (!field_20C_13) {
        bottom += height;
    }
    topEdge = bottom + field_27A;
    field_224 = NULL;

    direction = moveAngle >> 13;
    if (moveAngle & 0x3FFF) {
        direction |= 1;
    }

    for (pass = 0; pass < 2; pass++) {
        steps = byte_83A06C0[direction];
        do {
            newX = x;
            newY = y;
            moved = 0;
            step = *steps++;
            if (step > 3 && (pass == 0 || field_24_11)) {
                break;
            }
            switch (step) {
                case 0: { // Back side.
                    int cellY;
                    int last;
                    cellX = previousLeft / 0x1000;
                    cellY = previousBack / 0x1000 - pass;
                    last = (previousRight - 1) / 0x1000;
                    if (cellX > last) {
                        break;
                    }
                back_loop:
                    {
                        cell = sub_80457E8(cellX, cellY, &floor, &ceiling, &top);
                        if (pass != 0) {
                            adjust = 0;
                            if (cell->primaryShape > 3) {
                                if (field_20C_13 && !field_210_0) {
                                    floor += 0x400;
                                } else if (cell->tileFlags & field_26_4) {
                                    adjust = 0x1000;
                                } else if (cellX << 12 <= x && (cellX + 1) << 12 > x) {
                                    if (cell->primaryShape == 4) {
                                        floor += x & 0xF00;
                                    } else if (cell->primaryShape == 5) {
                                        floor += 0x1000 - (x & 0xF00);
                                    }
                                } else {
                                    adjust = field_278 / 2;
                                }
                            } else if (cell->tileFlags & field_26_4) {
                                adjust = 0x1000;
                            }
                            if ((floor - adjust > previousZ && floor - adjust > bottom)
                                || (!field_210_1 && floor == previousZ && cell->primaryShape == 1
                                    && cell->floorType == 1)) {
                                edge = (cellY + 1) << 12;
                                if (edge > back) {
                                    goto hit_back;
                                }
                            }
                        }
                        if (field_210_6) {
                            adjust = 0;
                            if (pass != 0) {
                                if (cell->secondaryShape - 4 <= 2u) {
                                    if (field_20C_13 && !field_210_0) {
                                        top += 0x400;
                                    } else if (cell->tileFlags & field_26_4) {
                                        adjust = 0x1000;
                                    } else if (cellX << 12 <= x && (cellX + 1) << 12 > x) {
                                        if (cell->secondaryShape == 4) {
                                            top += x & 0xF00;
                                        } else if (cell->secondaryShape == 5) {
                                            top += 0x1000 - (x & 0xF00);
                                        }
                                    } else {
                                        adjust = field_278 / 2;
                                    }
                                } else if (cell->tileFlags & field_26_4) {
                                    adjust = 0x1000;
                                }
                            }
                            if ((pass != 0 || cell->secondaryShape > 7)
                                && ((ceiling >= 0 && ceiling < topEdge && top - adjust > bottom
                                     && ceiling < previousTop && top - adjust > previousZ)
                                    || (!field_210_1 && top == previousZ && cell->floorType == 1
                                        && cell->secondaryShape == 1))) {
                                colLeft = cellX << 12;
                                colRight = (cellX + 1) << 12;
                                rowFront = (cellY + 1) << 12;
                                if (cell->secondaryShape == 14 && cellX == previousLeft / 0x1000) {
                                    d = left - colLeft;
                                    if (rowFront - back - d > 0) {
                                        rowBack = rowFront - 0x1000;
                                        e = back - rowBack;
                                        newX = d + (0x1000 - e - d) / 2 + colLeft + field_278 / 2;
                                        newY = e + (0x1000 - d - e) / 2 + rowBack - 0x100 + field_27C;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 1;
                                    }
                                } else if (cell->secondaryShape == 12 && cellX == last) {
                                    if (rowFront - back - (colRight - right) > 0) {
                                        rowBack = rowFront - 0x1000;
                                        d = right - colLeft;
                                        e = back - rowBack;
                                        newX = e + (d - e) / 2 + colLeft - field_278 / 2;
                                        newY = d + (e - d) / 2 + rowBack - 0x100 + field_27C;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 1;
                                    }
                                } else if (field_210_2
                                           || (cell->floorType != 5 && cell->floorType != 7)) {
                                    flag = pass;
                                    switch (cell->secondaryShape) {
                                        case 8:
                                            rowFront -= 0x800;
                                            flag = TRUE;
                                            break;
                                        case 9: // Dead store: only the rows' front edge is used here.
                                            rowBack += 0x800;
                                            break;
                                        case 10:
                                            colLeft += 0x800;
                                            flag = TRUE;
                                            break;
                                        case 11:
                                            colRight -= 0x800;
                                            flag = TRUE;
                                            break;
                                    }
                                    if (flag
                                        && ((colLeft < previousRight && colRight > left)
                                            || (colRight > previousLeft && colLeft < right))
                                        && rowFront <= previousBack && rowFront > back) {
                                        newY = rowFront - 0x100 + field_27C;
                                        moved |= 2;
                                        field_224 = cell;
                                        field_24_11 |= 1;
                                    }
                                }
                            }
                        }
                    back_below:
                        if (field_20C_13 && floor < previousZ
                            && !(field_210_0 && (cell->tileFlags & field_26_4))) {
                            if (ceiling == -1 || top != previousZ) {
                                if ((cellY + 1) << 12 > back) {
                                    newY = ((cellY + 1) << 12) - 0x100 + field_27C;
                                    moved |= 2;
                                    field_224 = cell;
                                    field_24_11 |= 1;
                                    break;
                                }
                            } else if (field_210_6) {
                                colLeft = cellX << 12;
                                colRight = (cellX + 1) << 12;
                                rowFront = (cellY + 1) << 12;
                                if (cell->secondaryShape == 13 && cellX == previousLeft / 0x1000) {
                                    d = left - colLeft;
                                    if (rowFront - back - d > 0) {
                                        rowBack = rowFront - 0x1000;
                                        e = back - rowBack;
                                        newX = d + (0x1000 - e - d) / 2 + colLeft + field_278 / 2;
                                        newY = e + (0x1000 - d - e) / 2 + rowBack - 0x100 + field_27C;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 1;
                                    }
                                } else if (cell->secondaryShape == 15 && cellX == last) {
                                    if (rowFront - back - (colRight - right) > 0) {
                                        rowBack = rowFront - 0x1000;
                                        d = right - colLeft;
                                        e = back - rowBack;
                                        newX = e + (d - e) / 2 + colLeft - field_278 / 2;
                                        newY = d + (e - d) / 2 + rowBack - 0x100 + field_27C;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 1;
                                    }
                                } else if (cell->secondaryShape >= 9 && cell->secondaryShape <= 11) {
                                    if (cell->secondaryShape == 9) {
                                        rowFront -= 0x800;
                                    } else if (cell->secondaryShape == 10) {
                                        colRight -= 0x800;
                                    } else {
                                        colLeft += 0x800;
                                    }
                                    if (((colLeft < previousRight && colRight > left)
                                         || (colRight > previousLeft && colLeft < right))
                                        && rowFront <= previousBack && rowFront > back) {
                                        newY = rowFront - 0x100 + field_27C;
                                        moved |= 2;
                                        field_224 = cell;
                                        field_24_11 |= 1;
                                    }
                                }
                            }
                        }
                        cellX++;
                    }
                    if (cellX <= last) {
                        goto back_loop;
                    }
                    break;
                }
                case 1: { // Front side.
                    int cellY;
                    int last;
                    cellX = previousLeft / 0x1000;
                    cellY = (previousFront - 1) / 0x1000 + pass;
                    last = (previousRight - 1) / 0x1000;
                    if (cellX > last) {
                        break;
                    }
                front_loop:
                    {
                        cell = sub_80457E8(cellX, cellY, &floor, &ceiling, &top);
                        if (pass != 0) {
                            adjust = 0;
                            if (cell->primaryShape > 3) {
                                if (field_20C_13 && !field_210_0) {
                                    floor += 0x400;
                                } else if (cell->tileFlags & field_26_4) {
                                    adjust = 0x1000;
                                } else if (cellX << 12 <= x && (cellX + 1) << 12 > x) {
                                    if (cell->primaryShape == 4) {
                                        floor += x & 0xF00;
                                    } else if (cell->primaryShape == 5) {
                                        floor += 0x1000 - (x & 0xF00);
                                    }
                                } else {
                                    adjust = field_278 / 2;
                                }
                            } else if (cell->tileFlags & field_26_4) {
                                adjust = 0x1000;
                            }
                            if ((floor - adjust > previousZ && floor - adjust > bottom)
                                || (!field_210_1 && floor == previousZ && cell->primaryShape == 1
                                    && cell->floorType == 1)) {
                                edge = cellY << 12;
                                if (edge < front) {
                                    goto hit_front;
                                }
                            }
                        }
                        if (field_210_6) {
                            adjust = 0;
                            if (pass != 0) {
                                if (cell->secondaryShape - 4 <= 2u) {
                                    if (field_20C_13 && !field_210_0) {
                                        top += 0x400;
                                    } else if (cell->tileFlags & field_26_4) {
                                        adjust = 0x1000;
                                    } else if (cellX << 12 <= x && (cellX + 1) << 12 > x) {
                                        if (cell->secondaryShape == 4) {
                                            top += x & 0xF00;
                                        } else if (cell->secondaryShape == 5) {
                                            top += 0x1000 - (x & 0xF00);
                                        }
                                    } else {
                                        adjust = field_278 / 2;
                                    }
                                } else if (cell->tileFlags & field_26_4) {
                                    adjust = 0x1000;
                                }
                            }
                            if ((pass != 0 || cell->secondaryShape > 7)
                                && ((ceiling >= 0 && ceiling < topEdge && top - adjust > bottom
                                     && ceiling < previousTop && top - adjust > previousZ)
                                    || (!field_210_1 && top == previousZ && cell->floorType == 1
                                        && cell->secondaryShape == 1))) {
                                colLeft = cellX << 12;
                                colRight = (cellX + 1) << 12;
                                rowBack = cellY << 12;
                                if (cell->secondaryShape == 15 && cellX == previousLeft / 0x1000) {
                                    e = front - rowBack;
                                    d = left - colLeft;
                                    if (e - d > 0) {
                                        newX = (d - e) / 2 + e + colLeft + field_278 / 2;
                                        newY = d + (e - d) / 2 + rowBack - 0x100;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 4;
                                    }
                                } else if (cell->secondaryShape == 13 && cellX == last) {
                                    e = front - rowBack;
                                    if (e - (colRight - right) > 0) {
                                        d = right - colLeft;
                                        newX = d + (0x1000 - e - d) / 2 + colLeft - field_278 / 2;
                                        newY = e + (0x1000 - d - e) / 2 + rowBack - 0x100;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 4;
                                    }
                                } else if (field_210_2
                                           || (cell->floorType != 5 && cell->floorType != 7)) {
                                    flag = pass;
                                    switch (cell->secondaryShape) {
                                        case 9:
                                            rowBack += 0x800;
                                            flag = TRUE;
                                            break;
                                        case 10:
                                            colLeft += 0x800;
                                            flag = TRUE;
                                            break;
                                        case 11:
                                            colRight -= 0x800;
                                            flag = TRUE;
                                            break;
                                    }
                                    if (flag
                                        && ((colLeft < previousRight && colRight > left)
                                            || (colRight > previousLeft && colLeft < right))
                                        && rowBack >= previousFront && rowBack < front) {
                                        newY = rowBack - 0x100;
                                        moved |= 2;
                                        field_224 = cell;
                                        field_24_11 |= 4;
                                    }
                                }
                            }
                        }
                    front_below:
                        if (field_20C_13 && floor < previousZ
                            && !(field_210_0 && (cell->tileFlags & field_26_4))) {
                            if (ceiling == -1 || top != previousZ) {
                                if (cellY << 12 < front) {
                                    newY = (cellY << 12) - 0x100;
                                    moved |= 2;
                                    field_224 = cell;
                                    field_24_11 |= 4;
                                    break;
                                }
                            } else if (field_210_6) {
                                colLeft = cellX << 12;
                                colRight = (cellX + 1) << 12;
                                rowBack = cellY << 12;
                                if (cell->secondaryShape == 12 && cellX == previousLeft / 0x1000) {
                                    e = front - rowBack;
                                    d = left - colLeft;
                                    if (e - d > 0) {
                                        newX = (d - e) / 2 + e + colLeft + field_278 / 2;
                                        newY = d + (e - d) / 2 + rowBack - 0x100;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 4;
                                    }
                                } else if (cell->secondaryShape == 14 && cellX == last) {
                                    e = front - rowBack;
                                    if (e - (colRight - right) > 0) {
                                        d = right - colLeft;
                                        newX = d + (0x1000 - e - d) / 2 + colLeft - field_278 / 2;
                                        newY = e + (0x1000 - d - e) / 2 + rowBack - 0x100;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 4;
                                    }
                                } else if (cell->secondaryShape == 8 || cell->secondaryShape == 10
                                           || cell->secondaryShape == 11) {
                                    if (cell->secondaryShape == 8) {
                                        rowBack += 0x800;
                                    } else if (cell->secondaryShape == 10) {
                                        colRight -= 0x800;
                                    } else {
                                        colLeft += 0x800;
                                    }
                                    if (((colLeft < previousRight && colRight > left)
                                         || (colRight > previousLeft && colLeft < right))
                                        && rowBack >= previousFront && rowBack < front) {
                                        newY = rowBack - 0x100;
                                        moved |= 2;
                                        field_224 = cell;
                                        field_24_11 |= 4;
                                    }
                                }
                            }
                        }
                        cellX++;
                    }
                    if (cellX <= last) {
                        goto front_loop;
                    }
                    break;
                }
                case 2: { // Left side.
                    int cellX;
                    int last;
                    cellX = previousLeft / 0x1000 - pass;
                    cellY = previousBack / 0x1000;
                    last = (previousFront - 1) / 0x1000;
                    if (cellY > last) {
                        break;
                    }
                left_loop:
                    {
                        cell = sub_80457E8(cellX, cellY, &floor, &ceiling, &top);
                        if (pass != 0) {
                            adjust = 0;
                            if (cell->primaryShape > 3) {
                                if (field_20C_13 && !field_210_0) {
                                    floor += 0x400;
                                } else if (cell->tileFlags & field_26_4) {
                                    adjust = 0x1000;
                                } else if (cellY << 12 <= y && (cellY + 1) << 12 >= (y & ~0xFF)) {
                                    if (cell->primaryShape == 6) {
                                        floor += 0x1000 - (y & 0xF00);
                                    } else if (cell->primaryShape == 4) {
                                        floor += 0x1000;
                                    }
                                } else {
                                    adjust = field_27C;
                                }
                            } else if (cell->tileFlags & field_26_4) {
                                adjust = 0x1000;
                            }
                            if ((floor - adjust > previousZ && floor - adjust > bottom)
                                || (!field_210_1 && floor == previousZ && cell->primaryShape == 1
                                    && cell->floorType == 1)) {
                                edge = (cellX + 1) << 12;
                                if (edge > left) {
                                    goto hit_left;
                                }
                            }
                        }
                        if (field_210_6) {
                            adjust = 0;
                            if (pass != 0) {
                                if (cell->secondaryShape - 4 <= 2u) {
                                    if (field_20C_13 && !field_210_0) {
                                        top += 0x400;
                                    } else if (cell->tileFlags & field_26_4) {
                                        adjust = 0x1000;
                                    } else if (cellY << 12 <= y && (cellY + 1) << 12 >= (y & ~0xFF)) {
                                        if (cell->secondaryShape == 6) {
                                            top += 0x1000 - (y & 0xF00);
                                        } else if (cell->secondaryShape == 4) {
                                            top += 0x1000;
                                        }
                                    } else {
                                        adjust = field_27C;
                                    }
                                } else if (cell->tileFlags & field_26_4) {
                                    adjust = 0x1000;
                                }
                            }
                            if ((pass != 0 || cell->secondaryShape > 7)
                                && ((ceiling >= 0 && ceiling < topEdge && top - adjust > bottom
                                     && ceiling < previousTop && top - adjust > previousZ)
                                    || (!field_210_1 && top == previousZ && cell->floorType == 1
                                        && cell->secondaryShape == 1))) {
                                rowBack = cellY << 12;
                                rowFront = (cellY + 1) << 12;
                                colRight = (cellX + 1) << 12;
                                if (cell->secondaryShape == 14 && cellY == previousBack / 0x1000) {
                                    d = back - rowBack;
                                    if (colRight - left - d > 0) {
                                        colLeft = colRight - 0x1000;
                                        e = left - colLeft;
                                        newX = e + (0x1000 - d - e) / 2 + field_278 / 2 + colLeft;
                                        newY = d + (0x1000 - e - d) / 2 - 0x100 + field_27C + rowBack;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 8;
                                    }
                                } else if (cell->secondaryShape == 15 && cellY == last) {
                                    if (colRight - left - (rowFront - front) > 0) {
                                        colLeft = colRight - 0x1000;
                                        e = left - colLeft;
                                        d = front - rowBack;
                                        newX = d + (e - d) / 2 + colLeft + field_278 / 2;
                                        newY = e + (d - e) / 2 + rowBack - 0x100;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 8;
                                    }
                                } else if (field_210_2
                                           || (cell->floorType != 5 && cell->floorType != 7)) {
                                    flag = pass;
                                    switch (cell->secondaryShape) {
                                        case 8:
                                            rowFront -= 0x800;
                                            flag = TRUE;
                                            break;
                                        case 9:
                                            rowBack += 0x800;
                                            flag = TRUE;
                                            break;
                                        case 10: // Dead store: only the column's right edge is used
                                                 // here.
                                            colLeft += 0x800;
                                            break;
                                        case 11:
                                            colRight -= 0x800;
                                            flag = TRUE;
                                            break;
                                    }
                                    if (flag
                                        && ((rowBack < previousFront && rowFront > back)
                                            || (rowFront > previousBack && rowBack < front))
                                        && colRight <= previousLeft && colRight > left) {
                                        newX = colRight + field_278 / 2;
                                        moved |= 1;
                                        field_224 = cell;
                                        field_24_11 |= 8;
                                    }
                                }
                            }
                        }
                    left_below:
                        if (field_20C_13 && floor < previousZ
                            && !(field_210_0 && (cell->tileFlags & field_26_4))) {
                            if (ceiling == -1 || top != previousZ) {
                                if ((cellX + 1) << 12 > left) {
                                    newX = ((cellX + 1) << 12) + field_278 / 2;
                                    moved |= 1;
                                    field_224 = cell;
                                    field_24_11 |= 8;
                                    break;
                                }
                            } else if (field_210_6) {
                                rowBack = cellY << 12;
                                rowFront = (cellY + 1) << 12;
                                colRight = (cellX + 1) << 12;
                                if (cell->secondaryShape == 13 && cellY == previousBack / 0x1000) {
                                    d = back - rowBack;
                                    if (colRight - left - d > 0) {
                                        colLeft = colRight - 0x1000;
                                        e = left - colLeft;
                                        newX = e + (0x1000 - d - e) / 2 + field_278 / 2 + colLeft;
                                        newY = d + (0x1000 - e - d) / 2 - 0x100 + field_27C + rowBack;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 8;
                                    }
                                } else if (cell->secondaryShape == 12 && cellY == last) {
                                    if (colRight - left - (rowFront - front) > 0) {
                                        colLeft = colRight - 0x1000;
                                        e = left - colLeft;
                                        d = front - rowBack;
                                        newX = d + (e - d) / 2 + colLeft + field_278 / 2;
                                        newY = e + (d - e) / 2 + rowBack - 0x100;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 8;
                                    }
                                } else if (cell->secondaryShape >= 8 && cell->secondaryShape <= 10) {
                                    if (cell->secondaryShape == 8) {
                                        rowBack += 0x800;
                                    } else if (cell->secondaryShape == 9) {
                                        rowFront -= 0x800;
                                    } else {
                                        colRight -= 0x800;
                                    }
                                    if (((rowBack < previousFront && rowFront > back)
                                         || (rowFront > previousBack && rowBack < front))
                                        && colRight <= previousLeft && colRight > left) {
                                        newX = colRight + field_278 / 2;
                                        moved |= 1;
                                        field_224 = cell;
                                        field_24_11 |= 8;
                                    }
                                }
                            }
                        }
                        cellY++;
                    }
                    if (cellY <= last) {
                        goto left_loop;
                    }
                    break;
                }
                case 3: { // Right side.
                    int cellX;
                    int last;
                    cellX = (previousRight - 1) / 0x1000 + pass;
                    cellY = previousBack / 0x1000;
                    last = (previousFront - 1) / 0x1000;
                    if (cellY > last) {
                        break;
                    }
                right_loop:
                    {
                        cell = sub_80457E8(cellX, cellY, &floor, &ceiling, &top);
                        if (pass != 0) {
                            adjust = 0;
                            if (cell->primaryShape > 3) {
                                if (field_20C_13 && !field_210_0) {
                                    floor += 0x400;
                                } else if (cell->tileFlags & field_26_4) {
                                    adjust = 0x1000;
                                } else if (cellY << 12 <= y && (cellY + 1) << 12 >= (y & ~0xFF)) {
                                    if (cell->primaryShape == 6) {
                                        floor += 0x1000 - (y & 0xF00);
                                    } else if (cell->primaryShape == 5) {
                                        floor += 0x1000;
                                    }
                                } else {
                                    adjust = field_27C;
                                }
                            } else if (cell->tileFlags & field_26_4) {
                                adjust = 0x1000;
                            }
                            if ((floor - adjust > previousZ && floor - adjust > bottom)
                                || (!field_210_1 && floor == previousZ && cell->primaryShape == 1
                                    && cell->floorType == 1)) {
                                edge = cellX << 12;
                                if (edge < right) {
                                    goto hit_right;
                                }
                            }
                        }
                        if (field_210_6) {
                            adjust = 0;
                            if (pass != 0) {
                                if (cell->secondaryShape - 4 <= 2u) {
                                    if (field_20C_13 && !field_210_0) {
                                        top += 0x400;
                                    } else if (cell->tileFlags & field_26_4) {
                                        adjust = 0x1000;
                                    } else if (cellY << 12 <= y && (cellY + 1) << 12 >= (y & ~0xFF)) {
                                        if (cell->secondaryShape == 6) {
                                            top += 0x1000 - (y & 0xF00);
                                        } else if (cell->secondaryShape == 5) {
                                            top += 0x1000;
                                        }
                                    } else {
                                        adjust = field_27C;
                                    }
                                } else if (cell->tileFlags & field_26_4) {
                                    adjust = 0x1000;
                                }
                            }
                            if ((pass != 0 || cell->secondaryShape > 7)
                                && ((ceiling >= 0 && ceiling < topEdge && top - adjust > bottom
                                     && ceiling < previousTop && top - adjust > previousZ)
                                    || (!field_210_1 && top == previousZ && cell->floorType == 1
                                        && cell->secondaryShape == 1))) {
                                rowBack = cellY << 12;
                                rowFront = (cellY + 1) << 12;
                                colLeft = cellX << 12;
                                if (cell->secondaryShape == 12 && cellY == previousBack / 0x1000) {
                                    d = right - colLeft;
                                    e = back - rowBack;
                                    if (d - e > 0) {
                                        newX = e + (d - e) / 2 + colLeft - field_278 / 2;
                                        newY = d + (e - d) / 2 + rowBack - 0x100 + field_27C;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 2;
                                    }
                                } else if (cell->secondaryShape == 13 && cellY == last) {
                                    d = right - colLeft;
                                    if (d - (rowFront - front) > 0) {
                                        e = front - rowBack;
                                        newX = d + (0x1000 - e - d) / 2 + colLeft - field_278 / 2;
                                        newY = e + (0x1000 - d - e) / 2 + rowBack - 0x100;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 2;
                                    }
                                } else if (field_210_2
                                           || (cell->floorType != 5 && cell->floorType != 7)) {
                                    flag = pass;
                                    switch (cell->secondaryShape) {
                                        case 8:
                                            rowFront -= 0x800;
                                            flag = TRUE;
                                            break;
                                        case 9:
                                            rowBack += 0x800;
                                            flag = TRUE;
                                            break;
                                        case 10:
                                            colLeft += 0x800;
                                            flag = TRUE;
                                            break;
                                    }
                                    if (flag
                                        && ((rowBack < previousFront && rowFront > back)
                                            || (rowFront > previousBack && rowBack < front))
                                        && colLeft >= previousRight && colLeft < right) {
                                        newX = colLeft - field_278 / 2;
                                        moved |= 1;
                                        field_224 = cell;
                                        field_24_11 |= 2;
                                    }
                                }
                            }
                        }
                    right_below:
                        if (field_20C_13 && floor < previousZ
                            && !(field_210_0 && (cell->tileFlags & field_26_4))) {
                            if (ceiling == -1 || top != previousZ) {
                                if (cellX << 12 < right) {
                                    newX = (cellX << 12) - field_278 / 2;
                                    moved |= 1;
                                    field_224 = cell;
                                    field_24_11 |= 2;
                                    break;
                                }
                            } else if (field_210_6) {
                                rowBack = cellY << 12;
                                rowFront = (cellY + 1) << 12;
                                colLeft = cellX << 12;
                                if (cell->secondaryShape == 15 && cellY == previousBack / 0x1000) {
                                    d = right - colLeft;
                                    e = back - rowBack;
                                    if (d - e > 0) {
                                        newX = e + (d - e) / 2 + colLeft - field_278 / 2;
                                        newY = d + (e - d) / 2 + rowBack - 0x100 + field_27C;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 2;
                                    }
                                } else if (cell->secondaryShape == 14 && cellY == last) {
                                    d = right - colLeft;
                                    if (d - (rowFront - front) > 0) {
                                        e = front - rowBack;
                                        newX = d + (0x1000 - e - d) / 2 + colLeft - field_278 / 2;
                                        newY = e + (0x1000 - d - e) / 2 + rowBack - 0x100;
                                        moved = 3;
                                        field_224 = cell;
                                        field_24_11 |= 2;
                                    }
                                } else if (cell->secondaryShape == 8 || cell->secondaryShape == 9
                                           || cell->secondaryShape == 11) {
                                    if (cell->secondaryShape == 8) {
                                        rowBack += 0x800;
                                    } else if (cell->secondaryShape == 9) {
                                        rowFront -= 0x800;
                                    } else {
                                        colLeft += 0x800;
                                    }
                                    if (((rowBack < previousFront && rowFront > back)
                                         || (rowFront > previousBack && rowBack < front))
                                        && colLeft >= previousRight && colLeft < right) {
                                        newX = colLeft - field_278 / 2;
                                        moved |= 1;
                                        field_224 = cell;
                                        field_24_11 |= 2;
                                    }
                                }
                            }
                        }
                        cellY++;
                    }
                    if (cellY <= last) {
                        goto right_loop;
                    }
                    break;
                }
                case 4: { // Back-left corner cell.
                    cellX = previousLeft / 0x1000 - 1;
                    cellY = previousBack / 0x1000 - 1;
                    if ((cellX + 1) << 12 <= left || (cellY + 1) << 12 <= back) {
                        break;
                    }
                    cell = sub_80457E8(cellX, cellY, &floor, &ceiling, &top);
                    adjust = 0;
                    if (cell->primaryShape > 3 && field_20C_13 && !field_210_0) {
                        floor += 0x400;
                    } else if (cell->tileFlags & field_26_4) {
                        adjust = 0x1000;
                    }
                    if (floor - adjust > previousZ && floor - adjust > bottom
                        && (cellY + 1) << 12 > back) {
                        newY = ((cellY + 1) << 12) - 0x100 + field_27C;
                        moved |= 2;
                        field_224 = cell;
                        field_24_11 |= 1;
                        break;
                    }
                    if (!field_210_6) {
                        break;
                    }
                    adjust = 0;
                    if (cell->secondaryShape - 4 <= 2u && field_20C_13 && !field_210_0) {
                        top += 0x400;
                    } else if (cell->tileFlags & field_26_4) {
                        adjust = 0x1000;
                    }
                    if (ceiling >= 0 && ceiling < previousTop && top - adjust > previousZ
                        && ceiling < topEdge && top - adjust > bottom && (cellY + 1) << 12 > back) {
                        newY = ((cellY + 1) << 12) - 0x100 + field_27C;
                        moved |= 2;
                        field_224 = cell;
                        field_24_11 |= 1;
                    }
                    break;
                }
                case 5: { // Back-right corner cell.
                    cellX = (previousRight - 0x100) / 0x1000 + 1;
                    cellY = previousBack / 0x1000 - 1;
                    if (cellX << 12 >= right || (cellY + 1) << 12 <= back) {
                        break;
                    }
                    cell = sub_80457E8(cellX, cellY, &floor, &ceiling, &top);
                    adjust = 0;
                    if (cell->primaryShape > 3 && field_20C_13 && !field_210_0) {
                        floor += 0x400;
                    } else if (cell->tileFlags & field_26_4) {
                        adjust = 0x1000;
                    }
                    if (floor - adjust > previousZ && floor - adjust > bottom
                        && (cellY + 1) << 12 > back) {
                        newY = ((cellY + 1) << 12) - 0x100 + field_27C;
                        moved |= 2;
                        field_224 = cell;
                        field_24_11 |= 1;
                        break;
                    }
                    if (!field_210_6) {
                        break;
                    }
                    adjust = 0;
                    if (cell->secondaryShape - 4 <= 2u && field_20C_13 && !field_210_0) {
                        top += 0x400;
                    } else if (cell->tileFlags & field_26_4) {
                        adjust = 0x1000;
                    }
                    if (ceiling >= 0 && ceiling < previousTop && top - adjust > previousZ
                        && ceiling < topEdge && top - adjust > bottom && (cellY + 1) << 12 > back) {
                        newY = ((cellY + 1) << 12) - 0x100 + field_27C;
                        moved |= 2;
                        field_224 = cell;
                        field_24_11 |= 1;
                    }
                    break;
                }
                case 6: { // Front-left corner cell.
                    cellX = previousLeft / 0x1000 - 1;
                    cellY = (previousFront - 0x100) / 0x1000 + 1;
                    if ((cellX + 1) << 12 <= left || cellY << 12 >= front) {
                        break;
                    }
                    cell = sub_80457E8(cellX, cellY, &floor, &ceiling, &top);
                    adjust = 0;
                    if (cell->primaryShape > 3 && field_20C_13 && !field_210_0) {
                        floor += 0x400;
                    } else if (cell->tileFlags & field_26_4) {
                        adjust = 0x1000;
                    }
                    if (floor - adjust > previousZ && floor - adjust > bottom && cellY << 12 < front) {
                        newY = (cellY << 12) - 0x100;
                        moved |= 2;
                        field_224 = cell;
                        field_24_11 |= 4;
                        break;
                    }
                    if (!field_210_6) {
                        break;
                    }
                    adjust = 0;
                    if (cell->secondaryShape - 4 <= 2u && field_20C_13 && !field_210_0) {
                        top += 0x400;
                    } else if (cell->tileFlags & field_26_4) {
                        adjust = 0x1000;
                    }
                    if (ceiling >= 0 && ceiling < previousTop && top - adjust > previousZ
                        && ceiling < topEdge && top - adjust > bottom && cellY << 12 < front) {
                        newY = (cellY << 12) - 0x100;
                        moved |= 2;
                        field_224 = cell;
                        field_24_11 |= 4;
                    }
                    break;
                }
                case 7: { // Front-right corner cell.
                    cellX = (previousRight - 0x100) / 0x1000 + 1;
                    cellY = (previousFront - 0x100) / 0x1000 + 1;
                    if (cellX << 12 >= right || cellY << 12 >= front) {
                        break;
                    }
                    cell = sub_80457E8(cellX, cellY, &floor, &ceiling, &top);
                    adjust = 0;
                    if (cell->primaryShape > 3 && field_20C_13 && !field_210_0) {
                        floor += 0x400;
                    } else if (cell->tileFlags & field_26_4) {
                        adjust = 0x1000;
                    }
                    if (floor - adjust > previousZ && floor - adjust > bottom && cellY << 12 < front) {
                        newY = (cellY << 12) - 0x100;
                        moved |= 2;
                        field_224 = cell;
                        field_24_11 |= 4;
                        break;
                    }
                    if (!field_210_6) {
                        break;
                    }
                    adjust = 0;
                    if (cell->secondaryShape - 4 <= 2u && field_20C_13 && !field_210_0) {
                        top += 0x400;
                    } else if (cell->tileFlags & field_26_4) {
                        adjust = 0x1000;
                    }
                    if (ceiling >= 0 && ceiling < previousTop && top - adjust > previousZ
                        && ceiling < topEdge && top - adjust > bottom && cellY << 12 < front) {
                        newY = (cellY << 12) - 0x100;
                        moved |= 2;
                        field_224 = cell;
                        field_24_11 |= 4;
                    }
                    break;
                }

                hit_back:
                    newY = edge - 0x100 + field_27C;
                    moved |= 2;
                    field_224 = cell;
                    field_24_11 |= 1;
                    break;
                hit_front:
                    newY = edge - 0x100;
                    moved |= 2;
                    field_224 = cell;
                    field_24_11 |= 4;
                    break;
                hit_left:
                    newX = edge + field_278 / 2;
                    moved |= 1;
                    field_224 = cell;
                    field_24_11 |= 8;
                    break;
                hit_right:
                    newX = edge - field_278 / 2;
                    moved |= 1;
                    field_224 = cell;
                    field_24_11 |= 2;
                    break;
            }

            if (moved & 1) {
                x = newX;
                left = x - field_278 / 2;
                right = left + field_278;
            }
            if (moved & 2) {
                y = newY;
                back = y + 0x100 - field_27C;
                front = back + field_27C;
            }
        } while (*steps != -1);
    }

    if (field_24_11 && field_2B5_0 && field_2B6_7) {
        sub_8046980();
    }
    return field_24_11;
}
#endif

// https://decomp.me/scratch/TODO
// Same calls and control flow, but register allocation differs (`this` is r6 in the original) and
// some duplicated blocks of the two switches are shared and ordered differently.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/method15__11FieldObjectUc.s\"");
#else
// Finds the floor (and the secondary surface) under the object by probing the collision map at
// five points around it, then puts the object on the best one.
void FieldObject::method15(u8 force) {
    int landed;
    struct Coldef* topCell;
    int bestTop;
    int floorProbe;
    u8 topProbe;
    int previousBase;
    int previousLimit;
    int current;
    int floor;
    int ceiling;
    int top;
    struct Coldef* probe;
    int floorLimit;
    int topLimit;
    int bestFloor;
    int floorX;
    int floorY;
    struct Coldef* floorCell;
    int topX;
    int topY;
    int probeX;
    int probeY;
    struct Coldef* below;
    int flagsLeft;
    int flagsRight;
    int adjust;
    int result;
    int tolerance;
    int useTop;
    int newHeight;

    if (force == 0) {
        if (!field_20C_0 || field_214_21) {
            return;
        }
        if (field_20C_13 && !field_210_0) {
            int cellFloor;
            int cellCeiling;
            int cellTop;

            if (x == previousX && y == previousY && z == previousZ && height == previousHeight) {
                return;
            }
            coldef = sub_803FBA4(field_290, x, y, &cellFloor, &cellCeiling, &cellTop, 0, field_20C_11);
            field_26_1 = cellTop != -1 && z + height >= cellTop;
            field_230 = x;
            field_234 = y;
            if (field_26_1) {
                height = z + height - cellTop;
                z = cellTop;
            } else {
                height = z + height - cellFloor;
                z = cellFloor;
            }
            field_26_4 = 0;
            return;
        }
    }

    if (x != previousX || y != previousY || z != previousZ || height != previousHeight || force != 0) {
        landed = 0;
        topCell = NULL;
        bestTop = 0;
        floorProbe = 0;
        topProbe = 0;
        previousBase = previousZ + previousHeight;
        previousLimit = previousBase + field_27A;
        current = z + height;

        // Probe 0: the center.
        probe = sub_803FBA4(field_290, x, y, &floor, &ceiling, &top, !field_20C_13 || field_210_0,
                            field_20C_11);
        floorLimit = floor;
        if (probe->primaryShape > 3) {
            floorLimit += 0x1000;
        }
        if (field_210_6) {
            topLimit = top;
            if (top >= 0 && probe->secondaryShape > 3 && probe->secondaryShape <= 6) {
                topLimit += 0x1000;
            }
        } else {
            top = -1;
            topLimit = -1;
        }
        bestFloor = floor;
        floorX = x;
        floorY = y;
        floorCell = probe;
        if (bestTop < top) {
            bestTop = top;
            topX = x;
            topY = y;
            topCell = probe;
        }

        // Probe 1: the left edge.
        probeX = x - field_27E / 2;
        probeY = y;
        probe = sub_803FBA4(field_290, probeX, probeY, &floor, &ceiling, &top,
                            !field_20C_13 || field_210_0, field_20C_11);
        if (probe->primaryShape == 5) {
            floor -= field_27E / 2;
        }
        if (floorLimit < floor && topLimit <= floor && bestFloor < floor) {
            bestFloor = floor;
            floorX = probeX;
            floorY = probeY;
            floorCell = probe;
            floorProbe = 1;
            if (probe->primaryShape > 3) {
                floorLimit = bestFloor + 0x1000;
            }
        }
        if (field_210_6) {
            if (probe->secondaryShape == 5) {
                top -= field_27E / 2;
            }
            if (floorLimit < top && topLimit < top && bestTop < top) {
                bestTop = top;
                topX = probeX;
                topY = probeY;
                topCell = probe;
                topProbe = 1;
                if (probe->secondaryShape - 4 <= 2u) {
                    topLimit = bestTop + 0x1000;
                }
            }
        }

        // Probe 2: the right edge.
        probeX = x + (field_27E / 2 - 0x100);
        probeY = y;
        probe = sub_803FBA4(field_290, probeX, probeY, &floor, &ceiling, &top,
                            !field_20C_13 || field_210_0, field_20C_11);
        if (probe->primaryShape == 4) {
            floor += 0x100 - field_27E / 2;
        }
        if (floorLimit < floor && topLimit <= floor && bestFloor < floor) {
            bestFloor = floor;
            floorX = probeX;
            floorY = probeY;
            floorCell = probe;
            floorProbe = 2;
            if (probe->primaryShape > 3) {
                floorLimit = bestFloor + 0x1000;
            }
        }
        if (field_210_6) {
            if (probe->secondaryShape == 4) {
                top += 0x100 - field_27E / 2;
            }
            if (floorLimit < top && topLimit < top && bestTop < top) {
                bestTop = top;
                topX = probeX;
                topY = probeY;
                topCell = probe;
                topProbe = 2;
                if (probe->secondaryShape - 4 <= 2u) {
                    topLimit = bestTop + 0x1000;
                }
            }
        }

        // Probes 3 and 4: the back corners.
        below = get_coldef_ptr_by_xz(field_290, (x & ~0xFFF) / 0x1000,
                                     ((y + 0x100 - field_280) & ~0xFFF) / 0x1000);
        flagsLeft = 0;
        probeX = x - field_27E / 2;
        probeY = y + 0x100 - field_280;
        probe = sub_803FBA4(field_290, probeX, probeY, &floor, &ceiling, &top,
                            !field_20C_13 || field_210_0, field_20C_11);
        if (probe->tileFlags
            && !(probe->primaryShape == 3 && probe->floorType == 8 && probe->secondaryShape == 3)) {
            flagsLeft = probe->tileFlags;
        }
        if (probe->primaryShape == 5) {
            floor -= field_27E / 2;
        } else if (probe->primaryShape == 4) {
            floor += field_27E / 2;
            if (below->primaryShape != 4 && below->secondaryShape != 4) {
                floor &= ~0xFFF;
            }
        } else if (probe->primaryShape == 6) {
            floor += 0x100 - field_280;
        }
        if (floorLimit < floor && topLimit <= floor && bestFloor < floor) {
            bestFloor = floor;
            floorX = probeX;
            floorY = probeY;
            floorCell = probe;
            floorProbe = 3;
        }
        if (field_210_6) {
            if (probe->secondaryShape == 5) {
                top -= field_27E / 2;
            } else if (probe->secondaryShape == 4) {
                top += field_27E / 2;
                if (below->primaryShape != 4 && below->secondaryShape != 4) {
                    top &= ~0xFFF;
                }
            } else if (probe->secondaryShape == 6) {
                top += 0x100 - field_280;
            }
            if (floorLimit < top && topLimit < top && bestTop < top) {
                bestTop = top;
                topX = probeX;
                topY = probeY;
                topCell = probe;
                topProbe = 3;
            }
        }

        flagsRight = 0;
        probeX = x + (field_27E / 2 - 0x100);
        probeY = y + 0x100 - field_280;
        probe = sub_803FBA4(field_290, probeX, probeY, &floor, &ceiling, &top,
                            !field_20C_13 || field_210_0, field_20C_11);
        if (probe->tileFlags
            && !(probe->primaryShape == 3 && probe->floorType == 8 && probe->secondaryShape == 3)) {
            flagsRight = probe->tileFlags;
        }
        adjust = 0;
        if (probe->primaryShape == 4) {
            floor += 0x100 - field_27E / 2;
        } else if (probe->primaryShape == 5) {
            floor += field_27E / 2 - 0x100;
            if (flagsLeft & flagsRight) {
                adjust = 0x1000;
            }
        } else if (probe->primaryShape == 6) {
            floor += 0x100 - field_280;
        } else if (flagsLeft & flagsRight) {
            adjust = -0x1000;
        }
        if (floorLimit < floor && topLimit <= floor && bestFloor < floor + adjust) {
            bestFloor = floor;
            floorX = probeX;
            floorY = probeY;
            floorCell = probe;
            floorProbe = 4;
        }
        if (field_210_6) {
            adjust = 0;
            if (probe->secondaryShape == 4) {
                top += 0x100 - field_27E / 2;
            } else if (probe->secondaryShape == 5) {
                int offset = field_27E / 2 - 0x100;
                int fraction = top & 0xFFF;

                if (fraction != 0 && 0x1000 - fraction > offset) {
                    top += offset;
                    if (flagsLeft & flagsRight) {
                        adjust = 0x1000;
                    }
                }
            } else if (probe->secondaryShape == 6) {
                top += 0x100 - field_280;
            } else if (flagsLeft & flagsRight) {
                adjust = -0x1000;
            }
            if (floorLimit < top && topLimit < top && bestTop < top + adjust) {
                bestTop = top;
                topX = probeX;
                topY = probeY;
                topCell = probe;
                topProbe = 4;
            }
        }

        // Only step up onto a higher surface when coming from below it.
        result = current;
        if (current < previousBase) {
            if (bestTop > 0 && previousLimit > bestTop && current < bestTop) {
                result = bestTop;
            } else if (current < bestFloor) {
                result = bestFloor;
            }
        }

        tolerance = 0;
        if (topCell->tileFlags & field_26_4) {
            tolerance = (s16)field_23E;
        }
        useTop = FALSE;
        if (bestTop > 0) {
            if (bestFloor >= bestTop) {
                useTop = bestFloor > result;
            } else if (bestTop <= result + tolerance) {
                useTop = TRUE;
            }
        }

        if (useTop) {
            if (topCell->secondaryShape - 4 <= 2u) {
                field_26_2 = topCell->secondaryShape - 3;
                switch (topProbe) {
                    case 1:
                        if ((u8)(topCell->secondaryShape - 4) <= 1) {
                            bestTop += 0xFFF;
                            bestTop &= ~0xFFF;
                        } else if (topCell->secondaryShape == 6) {
                            sub_803FBA4(field_290, x - field_27E / 2, y, &floor, &ceiling, &top,
                                        topProbe, field_20C_11);
                            bestTop = top;
                        }
                        break;
                    case 2:
                        if ((u8)(topCell->secondaryShape - 4) <= 1) {
                            bestTop += 0xFFF;
                            bestTop &= ~0xFFF;
                        } else if (topCell->secondaryShape == 6) {
                            sub_803FBA4(field_290, x + (field_27E / 2 - 0x100), y, &floor, &ceiling,
                                        &top, 1, field_20C_11);
                            bestTop = top;
                        }
                        break;
                    case 3:
                        if ((u8)(topCell->secondaryShape - 4) <= 1) {
                            probe = sub_803FBA4(field_290, x, y + 0x100 - field_280, &floor, &ceiling,
                                                &top, 1, field_20C_11);
                            if (probe->tileFlags & topCell->tileFlags) {
                                if (floor < bestTop - 0x1000 || floor >= bestTop + 0x1000) {
                                    bestTop = top;
                                } else {
                                    bestTop = floor;
                                }
                            } else {
                                if (topCell->secondaryShape == 5) {
                                    bestTop += 0xFFF;
                                }
                                bestTop &= ~0xFFF;
                            }
                        } else if (topCell->secondaryShape == 6) {
                            probe = sub_803FBA4(field_290, x - field_27E / 2, y, &floor, &ceiling, &top,
                                                1, field_20C_11);
                            if (probe->tileFlags & topCell->tileFlags) {
                                if (floor < bestTop - 0x1000 || floor >= bestTop + 0x1000) {
                                    bestTop = top;
                                } else {
                                    bestTop = floor;
                                }
                            } else {
                                bestTop &= ~0xFFF;
                            }
                        }
                        break;
                    case 4:
                        if ((u8)(topCell->secondaryShape - 4) <= 1) {
                            probe = sub_803FBA4(field_290, x, y + 0x100 - field_280, &floor, &ceiling,
                                                &top, 1, field_20C_11);
                            if (probe->tileFlags & topCell->tileFlags) {
                                if (floor < bestTop - 0x1000 || floor >= bestTop + 0x1000) {
                                    bestTop = top;
                                } else {
                                    bestTop = floor;
                                }
                            } else {
                                if (topCell->secondaryShape == 4) {
                                    bestTop += 0xFFF;
                                }
                                bestTop &= ~0xFFF;
                            }
                        } else if (topCell->secondaryShape == 6) {
                            probe = sub_803FBA4(field_290, x + (field_27E / 2 - 0x100), y, &floor,
                                                &ceiling, &top, 1, field_20C_11);
                            if (probe->tileFlags & topCell->tileFlags) {
                                if (floor < bestTop - 0x1000 || floor >= bestTop + 0x1000) {
                                    bestTop = top;
                                } else {
                                    bestTop = floor;
                                }
                            } else {
                                bestTop &= ~0xFFF;
                            }
                        }
                        break;
                }
            } else {
                field_26_2 = 0;
            }

            newHeight = result - bestTop;
            if (force == 0 && height == 0 && newHeight <= (s16)field_23E + 0x100
                && (field_20C_11 || (previousHeight == 0 && (topCell->tileFlags & field_26_4)))) {
                newHeight = 0;
            }
            height = newHeight;
            z = bestTop;
            field_26_1 = 1;
            field_230 = topX;
            field_234 = topY;
            coldef = topCell;
            // The original computes this test without branches, like `(field_20C_13 ^ 1) |
            // field_210_0`.
            if (((field_20C_13 ^ 1) | field_210_0) && topCell->tileFlags && topCell->primaryShape != 3
                && topCell->secondaryShape != 3 && topCell->floorType != 8) {
                field_26_4 = topCell->tileFlags;
            } else {
                field_26_4 = 0;
            }
        } else {
            if (floorCell->primaryShape - 4 <= 2u) {
                field_26_2 = floorCell->primaryShape - 3;
                switch (floorProbe) {
                    case 1:
                        if ((u8)(floorCell->primaryShape - 4) <= 1) {
                            bestFloor += 0xFFF;
                            bestFloor &= ~0xFFF;
                        } else if (floorCell->primaryShape == 6) {
                            sub_803FBA4(field_290, x - field_27E / 2, y, &floor, &ceiling, &top,
                                        floorProbe, field_20C_11);
                            bestFloor = floor;
                        }
                        break;
                    case 2:
                        if ((u8)(floorCell->primaryShape - 4) <= 1) {
                            bestFloor += 0xFFF;
                            bestFloor &= ~0xFFF;
                        } else if (floorCell->primaryShape == 6) {
                            sub_803FBA4(field_290, x + (field_27E / 2 - 0x100), y, &floor, &ceiling,
                                        &top, 1, field_20C_11);
                            bestFloor = floor;
                        }
                        break;
                    case 3:
                        if ((u8)(floorCell->primaryShape - 4) <= 1) {
                            probe = sub_803FBA4(field_290, x, y + 0x100 - field_280, &floor, &ceiling,
                                                &top, 1, field_20C_11);
                            if (probe->tileFlags & floorCell->tileFlags) {
                                if (floor < bestFloor - 0x1000 || floor >= bestFloor + 0x1000) {
                                    bestFloor = top;
                                } else {
                                    bestFloor = floor;
                                }
                            } else {
                                if (floorCell->primaryShape == 5) {
                                    bestFloor += 0xFFF;
                                }
                                bestFloor &= ~0xFFF;
                            }
                        } else if (floorCell->primaryShape == 6) {
                            sub_803FBA4(field_290, x - field_27E / 2, y, &floor, &ceiling, &top, 1,
                                        field_20C_11);
                            bestFloor = floor;
                        }
                        break;
                    case 4:
                        if ((u8)(floorCell->primaryShape - 4) <= 1) {
                            probe = sub_803FBA4(field_290, x, y + 0x100 - field_280, &floor, &ceiling,
                                                &top, 1, field_20C_11);
                            if (probe->tileFlags & floorCell->tileFlags) {
                                if (floor < bestFloor - 0x1000 || floor >= bestFloor + 0x1000) {
                                    bestFloor = top;
                                } else {
                                    bestFloor = floor;
                                }
                            } else {
                                if (floorCell->primaryShape == 4) {
                                    bestFloor += 0xFFF;
                                }
                                bestFloor &= ~0xFFF;
                            }
                        } else if (floorCell->primaryShape == 6) {
                            sub_803FBA4(field_290, x + (field_27E / 2 - 0x100), y, &floor, &ceiling,
                                        &top, 1, field_20C_11);
                            bestFloor = floor;
                        }
                        break;
                }
            } else {
                field_26_2 = 0;
            }

            newHeight = result - bestFloor;
            if (force == 0 && height == 0 && newHeight <= (s16)field_23E + 0x100
                && (field_20C_11 || (previousHeight == 0 && (floorCell->tileFlags & field_26_4)))) {
                newHeight = 0;
            }
            height = newHeight;
            z = bestFloor;
            if (z + height < 0) {
                height = 0;
                z = 0;
            }
            field_26_1 = 0;
            field_230 = floorX;
            field_234 = floorY;
            coldef = floorCell;
            if (((field_20C_13 ^ 1) | field_210_0) && floorCell->tileFlags
                && floorCell->primaryShape != 3 && floorCell->secondaryShape != 3
                && floorCell->floorType != 8) {
                field_26_4 = floorCell->tileFlags;
            } else {
                field_26_4 = 0;
            }
        }
        if (field_25C >= 0) {
            field_250 += previousZ - z;
        }
        if (landed) {
            field_24_15 = 1;
        } else if (height == 0) {
            field_24_15 = 2;
        }
    }

    if (height > 0 && field_25C == -1 && field_20C_14 && (s8)field_1 == field_25C && force == 0) {
        if (height <= (s16)field_23E && field_26_4) {
            height = 0;
        } else {
            sub_80401F0(0, -1, (s16)field_23E);
        }
    }
}
#endif

struct Coldef* FieldObject::sub_80457E8(int cellX, int cellY, int* floor, int* ceiling, int* top) {
    struct Coldef* coldef = get_coldef_ptr_by_xz(field_290, cellX, cellY);
    int level;

    if (coldef->floorType != 15) {
        // Primary floor
        level = (coldef->primaryHeight << 11) << coldef->heightScale;
        *floor = level;

        // Secondary floor: the block above the gap, or a wall up to the sky for solid cells
        if (field_210_6 && (coldef->secondaryHeight != 0 || (coldef->solid & field_210_3))) {
            level += (coldef->gap << 11) << coldef->heightScale;
            *ceiling = level;
            *top = (coldef->solid & field_210_3)
                       ? 0x7FFFFFFF
                       : level + ((coldef->secondaryHeight << 11) << coldef->heightScale);
        } else {
            *top = -1;
            *ceiling = -1;
        }
    } else {
        // No floor at all
        *floor = 0x7FFFFFFF;
        *top = -1;
        *ceiling = -1;
    }

    return coldef;
}

// https://decomp.me/scratch/TODO
// Only register allocation differs (the original spills the loop counter to the stack).
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80458B0__11FieldObject.s\"");
#else
int FieldObject::sub_80458B0() {
    int floor;
    int ceiling;
    int top;
    u32 i;

    for (i = 0; i < 10; i++) {
        struct Coldef* coldef = sub_803FBA4(field_290, x + word_83A06E0[i][0], y + word_83A06E0[i][1],
                                            &floor, &ceiling, &top, 0, field_20C_11);

        if ((coldef->floorType == 5 || coldef->floorType == 7) && top > z && ceiling <= z + field_27A) {
            return 1;
        }
    }
    return 0;
}
#endif

void FieldObject::method17() {
    if (field_212_7 != 0) {
        if (--field_2B4 == 0) {
            if (field_20C_25) {
                sub_804761C(0);
                field_2B0 += field_212_7 == 1 ? -2 : 2;
                field_2B4 = field_2B0[0];
            } else {
                sub_804761C(1);
                field_2B4 = field_2B0[1];
            }
        }
        if (field_2B4 == -1) {
            sub_804761C(field_212_7 == 1);
            field_212_7 = 0;
            sprite->field_12_1 = field_212_14;
        }
    }
}

// https://decomp.me/scratch/TODO
// Only register allocation in the 3D velocity branch differs.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8045A94__11FieldObjectiiiiiUs.s\"");
#else
int FieldObject::sub_8045A94(int mode, int relative, int targetX, int targetY, int targetZ, u16 speed) {
    int dx;
    int dy;
    int dz;
    int pixelX;
    int pixelY;
    int pixelZ;
    int result;

    targetX <<= 8;
    targetY <<= 8;
    targetZ <<= 8;
    if (relative == 1) {
        targetX += x;
        targetY += y;
        targetZ += z + height;
    }
    field_2BC = x;
    field_2C0 = y;
    field_2C4 = z + height;
    field_2CC = targetX;
    field_2D0 = targetY;
    field_2D4 = targetZ;
    if (field_2BC >> 8 == field_2CC >> 8 && field_2C0 >> 8 == field_2D0 >> 8
        && (field_20C_14 || field_2C4 >> 8 == targetZ >> 8)) {
        return 0;
    }

    dx = field_2CC - field_2BC;
    dy = field_2C0 - field_2D0;
    if (!field_20C_14) {
        dz = field_2D4 - field_2C4;
    } else {
        dz = 0;
    }
    pixelX = dx / 256;
    pixelY = dy / 256;
    pixelZ = dz / 256;
    if (dx < -0x1000 || dx > 0x1000 || dy < -0x1000 || dy > 0x1000 || dz < -0x1000 || dz > 0x1000) {
        dx = pixelX;
        dy = pixelY;
        dz = pixelZ;
    }
    result = sub_81DA690(dy, dx);
    angle = result / 256 + ((result / 128) & 1);
    if (!field_20C_14) {
        result = sub_81DA690(((int (*)(int))dword_3001038)(dx * dx + dy * dy), dz);
        field_3 = result / 256 + ((result / 128) & 1);
    }

    if (mode == 1) {
        u16 value = speed != 0 ? speed : field_23E;

        if (field_20C_14) {
            int s = (s16)value;

            field_2D8 = (word_8198504[angle] * s) / 0x4000 + (((word_8198504[angle] * s) / 0x2000) & 1);
            field_2DA =
                -((word_8198584[angle] * s) / 0x4000 + (((word_8198584[angle] * s) / 0x2000) & 1));
            field_2DC = 0;
            field_2B7_0 = 4;
        } else {
            int s = (s16)value;
            int part;

            part = (word_8198504[angle] * s) / 0x4000 + (((word_8198504[angle] * s) / 0x2000) & 1);
            field_2D8 = (part * word_8198584[field_3]) / 0x4000
                        + (((part * word_8198584[field_3]) / 0x2000) & 1);
            part = (word_8198584[angle] * s) / 0x4000 + (((word_8198584[angle] * s) / 0x2000) & 1);
            field_2DA = -((part * word_8198584[field_3]) / 0x4000
                          + (((part * word_8198584[field_3]) / 0x2000) & 1));
            field_2DC =
                (word_8198504[field_3] * s) / 0x4000 + (((word_8198504[field_3] * s) / 0x2000) & 1);
            field_2B7_0 = 0;
        }
        velocityX = field_2D8;
        velocityY = field_2DA;
    } else {
        s16 v;

        field_2E0 = speed;
        v = (((int (*)(int))dword_3001038)(pixelX * pixelX + pixelY * pixelY + pixelZ * pixelZ) << 8)
            / field_2E0;
        velocityX = (v * word_8198504[angle]) / 0x4000;
        velocityY = -((word_8198584[angle] * v) / 0x4000);
    }
    field_2DE = 0;
    field_2B5_0 = mode;
    return 1;
}
#endif

// https://decomp.me/scratch/TODO
// Only register and stack allocation differs (the original keeps `relative` in a register).
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8045F04__11FieldObjectiiiiiiiiUsUsUsUsUsii.s\"");
#else
int FieldObject::sub_8045F04(int mode, int relative, int centerX, int centerY, int centerZ, int arg6,
                             int arg7, int arg8, u16 arg9, u16 arg10, u16 arg11, u16 angle, u16 speed,
                             int direction, int flags) {
    int dz;

    if (mode == 4 && angle == 0) {
        return 0;
    }
    centerX <<= 8;
    centerY <<= 8;
    centerZ <<= 8;
    if (relative == 1) {
        centerX += x;
        centerY += y;
        centerZ += z + height;
    }
    field_2BC = x;
    field_2C0 = y;
    field_2C4 = z + height;
    if (centerX == field_2BC && centerY == field_2C0 && centerZ == field_2C4) {
        return 0;
    }
    field_2E4 = centerX;
    field_2E8 = centerY;
    field_2EC = centerZ;
    if (direction >= 0) {
        direction = 1;
    } else {
        direction = -1;
    }
    field_2F0 = angle * direction << 8;
    field_2F4 = 0;
    if (mode == 4) {
        field_2E0 = speed;
    } else {
        if (mode == 3) {
            int dx;
            int dy;
            int radius;

            if (speed == 0) {
                speed = field_23E;
            }
            dx = (field_2E4 - field_2BC) * (256 - arg6) / 256;
            dy = (field_2E8 - field_2C0) * (256 - arg7) / 256;
            dz = (field_2EC - field_2C4) * (256 - arg8) / 256;
            radius = ((int (*)(int))dword_3001038)(dx * dx + dy * dy + dz * dz);
            // 0x3243 is pi * 0x1000: the time for one turn is the circumference divided by the speed.
            radius = (radius << 1) * 0x3243;
            radius = ((int (*)(int, int))((u8*)dword_3001038
                                          + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(radius, speed);
            speed = ((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                0x10000000, radius);
        }
        field_2F8 = speed * direction;
    }
    field_2DE = 0;
    field_2B5_0 = mode;
    field_2B7_3 = flags;
    field_2B8_0 = (flags >> 5) & 7;
    if (!field_20C_14 && field_25C == -1) {
        dz = field_2C4 - centerZ;
    } else {
        dz = 0;
    }
    sub_801B5A0(field_1EC, field_2BC - centerX, field_2C0 - centerY, dz, arg6, arg7, arg8, arg9, arg10,
                arg11);
    return 1;
}
#endif

// https://decomp.me/scratch/TODO
// Mostly register allocation differs, plus how the packed object index (field_2B7_3 | field_2B8_0 << 5)
// is computed: the original masks with a shared 7 where this extracts the bitfield with shifts.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80461B4__11FieldObjectPP11FieldObject.s\"");
#else
void FieldObject::sub_80461B4(FieldObject** objects) {
    if (!field_20C_0) {
        return;
    }
    if (field_2B5_0 != 0) {
        int delta;

        field_2DE++;
        switch ((u32)field_2B5_0) {
            case 1:
                if (!(field_2B7_0 & 1) && field_2CC != field_2BC) {
                    x += field_2D8;
                }
                if (!(field_2B7_0 & 2) && field_2D0 != field_2C0) {
                    y += field_2DA;
                }
                if (!(field_2B7_0 & 4) && field_2D4 != field_2C4 && field_25C == -1) {
                    height += field_2DC;
                }
                break;
            case 2:
                x = field_2BC
                    + ((int (*)(int, int))((u8*)dword_3001038
                                           + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                        (field_2CC - field_2BC) * field_2DE, field_2E0);
                y = field_2C0
                    + ((int (*)(int, int))((u8*)dword_3001038
                                           + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                        (field_2D0 - field_2C0) * field_2DE, field_2E0);
                if (!field_20C_14 && field_25C == -1) {
                    height = field_2C4
                             + ((int (*)(int, int))((u8*)dword_3001038
                                                    + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                                 (field_2D4 - field_2C4) * field_2DE, field_2E0)
                             - previousZ;
                }
                break;
            case 3:
            case 4:
            case 5: {
                int offsetX;
                int offsetY;
                int offsetZ;
                int newAngle;

                if (field_2B5_0 == 4) {
                    field_2F4 = ((int (*)(int, int))((u8*)dword_3001038
                                                     + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                        field_2F0 * field_2DE, field_2E0);
                } else {
                    field_2F4 += field_2F8;
                }
                if (field_2F0 > 0) {
                    if (field_2F4 > field_2F0) {
                        field_2F4 = field_2F0;
                    }
                } else if (field_2F0 < 0 && field_2F4 < field_2F0) {
                    field_2F4 = field_2F0;
                }
                sub_801B390(field_1EC, field_2F4 / 256, &offsetX, &offsetY, &offsetZ);
                if ((s8)(field_2B8_0 << 5 | field_2B7_3) >= 0) {
                    field_2E4 = objects[(s8)(field_2B8_0 << 5 | field_2B7_3)]->x;
                    field_2E8 = objects[(s8)(field_2B8_0 << 5 | field_2B7_3)]->y;
                    field_2EC = objects[(s8)(field_2B8_0 << 5 | field_2B7_3)]->z
                                + objects[(s8)(field_2B8_0 << 5 | field_2B7_3)]->height;
                }
                x = field_2E4 + offsetX;
                y = field_2E8 + offsetY;
                if (!field_20C_14 && field_25C == -1) {
                    z = 0;
                    height = field_2EC + offsetZ;
                }
                if (previousX != x || previousY != y) {
                    velocityX = previousX - x;
                    velocityY = previousY - y;
                }
                newAngle = sub_8047E7C();
                if (newAngle != -1) {
                    angle = newAngle / 256;
                }
                break;
            }
        }
        delta = 0;
        switch ((u32)field_4E_2) {
            case 1:
                delta = x - previousX;
                break;
            case 2:
                delta = previousX - x;
                break;
            case 3:
                delta = previousY - y;
                break;
        }
        if (delta != 0) {
            z += delta;
            height -= delta;
            if (height < 0) {
                height = 0;
            }
        }
    }
    if (field_2B5_3) {
        sub_80402C4();
    }
}
#endif

void FieldObject::sub_80465D8() {
    if (field_20C_0) {
        switch (field_2B5_0) {
            case 1: {
                int velocity1;
                int velocity2;
                int velocity3;
                int axis;

                if (!(field_2B7_0 & 1)
                    && ((field_2CC >= field_2BC && field_2CC <= x)
                        || (field_2CC <= field_2BC && field_2CC >= x))) {
                    x = field_2CC;
                    field_2B7_0 |= 1;
                }
                if (!(field_2B7_0 & 2)
                    && ((field_2D0 >= field_2C0 && field_2D0 <= y)
                        || (field_2D0 <= field_2C0 && field_2D0 >= y))) {
                    y = field_2D0;
                    field_2B7_0 |= 2;
                }
                if (!(field_2B7_0 & 4) && !field_20C_14 && field_25C == -1
                    && ((field_2D4 >= field_2C4 && field_2D4 <= z + height)
                        || (field_2D4 <= field_2C4 && field_2D4 >= z + height))) {
                    height = field_2D4;
                    z = 0;
                    field_2B7_0 |= 4;
                }
                velocity1 = field_2D8 < 0 ? -field_2D8 : field_2D8;
                velocity2 = field_2DA < 0 ? -field_2DA : field_2DA;
                velocity3 = field_2DC < 0 ? -field_2DC : field_2DC;
                if (velocity1 >= velocity2) {
                    axis = velocity1 >= velocity3 ? 1 : 4;
                } else {
                    axis = velocity2 >= velocity3 ? 2 : 4;
                }
                if (field_2B7_0 & axis) {
                    x = field_2CC;
                    y = field_2D0;
                    if (!field_20C_14 && field_25C == -1) {
                        height = field_2D4 - z;
                    }
                    sub_8046980();
                }
                break;
            }
            case 3:
            case 5:
                if (field_2F0 > 0) {
                    if (field_2F4 >= field_2F0) {
                        sub_8046980();
                    }
                } else if (field_2F0 < 0 && field_2F4 <= field_2F0) {
                    sub_8046980();
                }
                break;
            case 2:
            case 4:
                if (field_2DE >= field_2E0) {
                    sub_8046980();
                }
                break;
        }
        if (field_2B5_3 && field_25C == -1) {
            sub_8046A10();
        }
    }
    if (field_20C_25) {
        if (field_2B5_4 && sprite->xScale == field_302[0]) {
            field_2B5_4 = 0;
        }
        if (field_2B5_6 && sprite->yScale == field_302[1]) {
            field_2B5_6 = 0;
        }
        //! \bug field_8 and field_A are compared with the xScale/yScale targets (slots 0 and 1) instead
        //! of their own (slots 2 and 3).
        if (field_2B6_0 && sprite->field_8 == field_302[0]) {
            field_2B6_0 = 0;
        }
        if (field_2B6_2 && sprite->field_A == field_302[1]) {
            field_2B6_2 = 0;
        }
        if (field_2B6_4 && field_322 + field_32C == field_328) {
            field_2B6_4 = 0;
        }
    }
}

void FieldObject::sub_8046980() {
    if (field_2B5_0) {
        // Round the position to the nearest pixel.
        x = (x + ((x & 0x80) << 1)) & ~0xFF;
        y = (y + ((y & 0x80) << 1)) & ~0xFF;
        if (!field_20C_14) {
            z = (z + ((z & 0x80) << 1)) & ~0xFF;
            height = (height + ((height & 0x80) << 1)) & ~0xFF;
        }
        field_2E0 = 0;
        velocityX = 0;
        velocityY = 0;
        field_2B5_0 = 0;
    }
}

void FieldObject::sub_8046A10() {
    if (field_2B5_3) {
        sub_8047EB8();
        if (field_268 != -1) {
            field_266 = field_268;
            field_268 = -1;
        }
        field_2B5_3 = 0;
    }
}

int FieldObject::sub_8046A90(int mode, int relative, u16 target, u16 speed) {
    if (relative == 1) {
        s16 value = target;

        target = value + sprite->xScale;
    }
    field_2FA[0] = sprite->xScale;
    field_302[0] = target;
    if (field_2FA[0] == (s16)target) {
        return 0;
    }
    if (mode == 1) {
        field_30A[0] = field_2FA[0] < (s16)target ? speed : -speed;
    } else {
        field_31A[0] = speed;
    }
    field_312[0] = 0;
    field_2B5_4 = mode;
    return 1;
}

int FieldObject::sub_8046B30(int mode, int relative, u16 target, u16 speed) {
    if (relative == 1) {
        s16 value = target;

        target = value + sprite->yScale;
    }
    field_2FA[1] = sprite->yScale;
    field_302[1] = target;
    if (field_2FA[1] == (s16)target) {
        return 0;
    }
    if (mode == 1) {
        field_30A[1] = field_2FA[1] < (s16)target ? speed : -speed;
    } else {
        field_31A[1] = speed;
    }
    field_312[1] = 0;
    field_2B5_6 = mode;
    return 1;
}

// Not called anywhere.
int FieldObject::sub_8046BC8(int mode, int relative, u16 target, u16 speed) {
    if (relative == 1) {
        s16 value = target;

        target = value + sprite->field_8;
    }
    //! \bug Stores the start and target in slot 0 (the xScale slot) instead of slot 2.
    field_2FA[0] = sprite->field_8;
    field_302[0] = target;
    if (field_2FA[2] == field_302[2]) {
        return 0;
    }
    if (mode == 1) {
        field_30A[2] = field_2FA[2] < field_302[2] ? speed : -speed;
    } else {
        field_31A[2] = speed;
    }
    field_312[2] = 0;
    field_2B6_0 = mode;
    return 1;
}

// Not called anywhere.
int FieldObject::sub_8046C78(int mode, int relative, u16 target, u16 speed) {
    if (relative == 1) {
        s16 value = target;

        target = value + sprite->field_A;
    }
    field_2FA[3] = sprite->field_A;
    field_302[3] = target;
    if (field_2FA[3] == (s16)target) {
        return 0;
    }
    if (mode == 1) {
        field_30A[3] = field_2FA[3] < (s16)target ? speed : -speed;
    } else {
        field_31A[3] = speed;
    }
    field_312[3] = 0;
    field_2B6_2 = mode;
    return 1;
}

void FieldObject::sub_8046D18() {
    if (field_20C_25) {
        if (field_2B5_4 == 1) {
            field_312[0]++;
            sprite->xScale += field_30A[0];
            if (field_30A[0] > 0) {
                if (sprite->xScale > field_302[0]) {
                    sprite->xScale = field_302[0];
                }
            } else if (sprite->xScale < field_302[0]) {
                sprite->xScale = field_302[0];
            }
        } else if (field_2B5_4 == 2) {
            field_312[0]++;
            sprite->xScale =
                field_2FA[0]
                + ((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                    (field_302[0] - field_2FA[0]) * field_312[0], field_31A[0]);
        }
        if (field_2B5_6 == 1) {
            field_312[1]++;
            sprite->yScale += field_30A[1];
            if (field_30A[1] > 0) {
                if (sprite->yScale > field_302[1]) {
                    sprite->yScale = field_302[1];
                }
            } else if (sprite->yScale < field_302[1]) {
                sprite->yScale = field_302[1];
            }
        } else if (field_2B5_6 == 2) {
            field_312[1]++;
            sprite->yScale =
                field_2FA[1]
                + ((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                    (field_302[1] - field_2FA[1]) * field_312[1], field_31A[1]);
        }
        if (field_2B6_0 == 1) {
            field_312[2]++;
            sprite->field_8 += field_30A[2];
            if (field_30A[2] > 0) {
                if (sprite->field_8 > field_302[2]) {
                    sprite->field_8 = field_302[2];
                }
            } else if (sprite->field_8 < field_302[2]) {
                sprite->field_8 = field_302[2];
            }
        } else if (field_2B6_0 == 2) {
            field_312[2]++;
            sprite->field_8 =
                field_2FA[2]
                + ((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                    (field_302[2] - field_2FA[2]) * field_312[2], field_31A[2]);
        }
        if (field_2B6_2 == 1) {
            field_312[3]++;
            sprite->field_A += field_30A[3];
            if (field_30A[3] > 0) {
                if (sprite->field_A > field_302[3]) {
                    sprite->field_A = field_302[3];
                }
            } else if (sprite->field_A < field_302[3]) {
                sprite->field_A = field_302[3];
            }
        } else if (field_2B6_2 == 2) {
            field_312[3]++;
            sprite->field_A =
                field_2FA[3]
                + ((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                    (field_302[3] - field_2FA[3]) * field_312[3], field_31A[3]);
        }
        if (field_2B6_4 == 1) {
            field_330++;
            field_32C += field_324;
            if (field_328 > 0) {
                if (field_32C > field_328) {
                    field_32C = field_328;
                }
            } else if (field_328 < 0 && field_32C < field_328) {
                field_32C = field_328;
            }
            sprite->field_C = field_322 + field_32C;
        } else if (field_2B6_4 == 2) {
            field_330++;
            field_32C =
                ((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(
                    (field_328 - field_322) * field_330, field_332);
            sprite->field_C = field_322 + field_32C;
        }
    }
}

void FieldObject::sub_8047154(int animation, int arg2) {
    int base = 0;
    int flag = 0;

    if (field_214_18) {
        u8 value;

        if (!field_214_20) {
            // Only some directions are drawn, the others are mirrored.
            if (field_214_18 == 1) {
                base = animation / 4 * 3;
                animation %= 4;
                animation *= 2;
            } else {
                base = animation / 8 * 5;
                animation %= 8;
            }
        } else if (field_214_18 == 1) {
            base = animation / 4 * 4;
            animation %= 4;
            animation *= 2;
        } else {
            base = animation / 8 * 8;
            animation %= 8;
        }
        direction = animation;
        previousDirection = animation;
        value = byte_83A05EC[field_214_18 * 16 + field_214_20 * 8 + animation];
        animation = value & 0x7F;
        flag = value >> 7;
    }
    sub_801E150(sprite, base + animation, arg2, 0, 0);
    sprite->field_11_6 = flag;
}

void FieldObject::sub_8047258(int slot) {
    if (slot == 0) {
        field_220 = sprite->field_20[1];
        field_214_11 = sprite->field_11_6;
        field_214_9 = 1;
    } else {
        field_221 = sprite->field_20[1];
        field_214_12 = sprite->field_11_6;
        field_214_10 = 1;
    }
}

void FieldObject::sub_80472D0(FieldObject* other, bool32 above) {
    if (other != 0) {
        field_214_13 = other->field_214_13;
        if (above) {
            if (field_214_13 <= 14) {
                field_214_13++;
            }
        } else if (field_214_13 != 0) {
            field_214_13--;
        }
    } else if (above) {
        field_214_13 = 15;
    } else {
        field_214_13 = 0;
    }
}

void FieldObject::sub_8047364(u8 type) {
    field_214_3 = field_214_0;
    field_214_0 = type;
    if (field_214_0 > 2) {
        angle = direction << 5;
        if (field_214_0 == 3) {
            sub_801E150(sprite, sprite->field_20[1], 0, 0, 0);
        }
    }
    field_214_6 = 1;
}

void FieldObject::sub_80473DC() {
    if (field_214_6) {
        field_214_0 = field_214_3;
        if (field_214_0 > 2) {
            angle = direction << 5;
        }
        field_214_6 = 0;
    }
    if (field_214_7 && field_21A != field_218) {
        field_218 = field_21A;
        sub_8040790();
    }
    sub_8040804(field_214_7, field_214_9 ? field_220 : -1, field_214_9 ? (int)field_214_11 : -1);
    field_214_7 = 0;
    field_214_9 = 0;
    method7(1);
}

void FieldObject::sub_80474D0() {
    if (field_214_6) {
        field_214_0 = field_214_3;
        if (field_214_0 > 2) {
            angle = direction << 5;
        }
        field_214_6 = 0;
    }
    if (field_214_8 && field_21C != field_218) {
        field_218 = field_21C;
        sub_8040790();
    }
    sub_8040804(field_214_8, field_214_10 ? field_221 : -1, field_214_10 ? (int)field_214_12 : -1);
    field_214_8 = 0;
    field_214_10 = 0;
}

void FieldObject::sub_80475A0(int slot) {
    int bank = (*(word_203FFC4 + slot) >> 10) & 0xF;
    int value = *(word_203FFC4 + slot) & 0x3FF;
    u32 i;

    field_21E = (bank + 1) << 12 | value;
    sprite->field_1E_4 = bank;
    sprite->field_1C = value;
    sprite->field_14 = 0;
    for (i = 0; i < sprite->field_13_4; i++, slot++) {
        sprite->field_14 |= 1 << slot;
    }
}

inline void FieldObject::sub_8047E50(u16 value) {
    field_26C = value;
    field_20C_22 = 1;
    sub_8047DC8(field_26E);
}

// Defined inline here, so that sub_8040804 calls it while sub_804761C inlines it; the out-of-line
// copy is emitted at the end of the file (0x08047DC8).
inline void FieldObject::sub_8047DC8(u8 arg) {
    if (field_26C != 0xFFFF) {
        int i = 0;

        // Index of the lowest bit set in the sprite's palette slot mask.
        while (!((sprite->field_14 >> i) & 1)) {
            i++;
        }
        field_26E = sub_8114C1C(field_334, arg, field_26C, i + 16, 0xFFFF, 0xFFFF);
        field_214_22 = 1;
    }
}

void FieldObject::sub_804761C(int enable) {
    if (field_222 == 0xFF || field_20C_25 == enable) {
        return;
    }
    field_20C_25 = enable;
    if (enable) {
        int value = sprite->field_12_1;

        sub_8021ED8(sprite);
        sprite->field_12_1 = value;
        if (field_20C_22) {
            if (field_26E != 0xFF) {
                sub_8116654(field_334, field_26E);
            } else {
                sub_8047DC8(0xFF);
            }
        }
    } else {
        if (field_26E != 0xFF) {
            sub_8116680(field_334, field_26E);
        }
        field_23D = enable;
        sub_8020D40(sprite);
    }
}

void FieldObject::sub_804776C(int value) {
    field_20C_0 = value;
}

void FieldObject::sub_8047784() {
    field_20C_12 = 1;
    field_214_24 = 1;
}

void FieldObject::sub_80477A8(int a, int b) {
    field_20C_12 = 0;
    sprite->field_1F_0 = a;
    sprite->field_1F_2 = b;
    field_23C = b;
}

void FieldObject::method19(u8 index) {
    u16 value = field_2A8[index];

    field_21C = field_218;
    field_218 = value;
    if (field_21C != value) {
        sub_8040790();
        sub_8040804(1, -1, -1);
    }
    field_214_8 = 1;
}

void FieldObject::method18(u8 index) {
    u16 value = field_2A8[index];

    field_21A = field_218;
    field_218 = value;
    if (field_21A != value) {
        sub_8040790();
        sub_8040804(1, -1, -1);
    }
    field_214_7 = 1;
}

void FieldObject::sub_80478AC(u8 newDirection) {
    direction = newDirection;
    angle = newDirection << 5;
    previousDirection = direction;
    previousAngle = angle;
    method7(0);
}

void FieldObject::sub_804790C(u8 value) {
    field_239 = value;
    sprite->field_20[0] = value;
}

void FieldObject::sub_8047928() {
    sub_801E150(sprite, sprite->field_20[1], 0, 0, 0);
}

void FieldObject::sub_804794C(u16 value) {
    field_23E = value;
}

void FieldObject::sub_8047958() {
    field_2B6_4 = 0;
}

void FieldObject::sub_804796C() {
    field_2B6_2 = 0;
}

void FieldObject::sub_8047980() {
    field_2B6_0 = 0;
}

void FieldObject::sub_8047994() {
    field_2B5_6 = 0;
}

void FieldObject::sub_80479A8() {
    field_2B5_4 = 0;
}

bool FieldObject::sub_80479BC() {
    return field_2B6_4 != 0;
}

bool FieldObject::sub_80479DC() {
    return field_2B6_2 != 0;
}

bool FieldObject::sub_80479FC() {
    return field_2B6_0 != 0;
}

bool FieldObject::sub_8047A1C() {
    return field_2B5_6 != 0;
}

bool FieldObject::sub_8047A3C() {
    return field_2B5_4 != 0;
}

int FieldObject::sub_8047A5C(int mode, u16 distance, int sign, u16 speed) {
    if (mode == 2 && distance == 0) {
        return 0;
    }
    field_322 = sprite->field_C;
    if (sign >= 0) {
        sign = 1;
    } else {
        sign = -1;
    }
    field_328 = (sign << 8) * distance;
    if (mode == 1) {
        field_324 = speed * sign;
    } else {
        field_332 = speed;
    }
    field_32C = 0;
    field_330 = 0;
    field_2B6_4 = mode;
    return 1;
}

bool FieldObject::sub_8047AF4() {
    return field_2B5_3;
}

void FieldObject::sub_8047B08(int mode, int animation) {
    int saved = (s16)field_23E;

    if (mode == 0) {
        sub_80401F0(animation, -1, -1);
    } else {
        sub_80400B0(animation, -1, -1);
    }
    field_23E = saved;
    field_2B5_3 = 1;
}

void FieldObject::sub_8047B5C(s16 value) {
    field_268 = field_266;
    field_266 = value;
}

bool FieldObject::sub_8047B78() {
    return field_2B5_0 != 0;
}

void FieldObject::method16(int mode) {
    field_212_14 = sprite->field_12_1;
    field_212_7 = mode;
    // (duration, value) pairs between two 0xFF terminators, walked backwards in mode 1.
    field_2B0 = mode == 1 ? byte_83A061C + 0x17 : byte_83A061C + 1;
    field_2B4 = field_2B0[0];
    sub_804761C(0);
}

int FieldObject::sub_8047C18(FieldObject* other) {
    if (field_1C != other->field_1C) {
        if ((!field_26_2 && !other->field_26_2) || !(coldef->tileFlags & other->coldef->tileFlags)) {
            return field_1C - other->field_1C;
        }
    }
    return 0;
}

void FieldObject::method14(FieldObject** objects, u8 arg) {
    FieldObject* other;
    int top;

    method15(arg);
    other = NULL;
    if (field_238 != -1) {
        other = objects[field_238];
        if (z >= other->z + other->height + other->field_274) {
            field_29 = -1;
            field_1 = 0xFF;
            field_238 = -1;
            other = NULL;
        }
    }
    top = z;
    if (other != NULL) {
        top += other->height + other->field_274;
    }
    field_1C = top;
}

void FieldObject::method11() {
    field_0 = -1;
    field_1 = 0xFF;
    field_238 = -1;
    field_24_3 = 0;
    field_24_7 = 0;
    field_24_9 = 0;
    field_24_10 = 0;
    field_24_11 = 0;
    field_24_15 = 0;
}

void FieldObject::sub_8047D44() {
    sub_8116654(field_334, field_26E);
}

void FieldObject::sub_8047D64() {
    sub_8116680(field_334, field_26E);
}

void FieldObject::sub_8047D84(u8 arg) {
    sub_8115048(field_334, field_26E, arg);
    field_20C_22 = 0;
    field_26E = 0xFF;
    field_26C = 0xFFFF;
}
