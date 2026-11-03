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
    sub_8047EFC(this, 0x200, 0x200, 0x52C, 0x75);
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
        field_213_1 = changed;
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
    field_213_5 = field_258 > 0;
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
    field_213_5 = field_258 > 0;
}

void FieldObject::sub_80402C4() {
    if (field_25C >= 0) {
        height += field_258;
        field_258 -= field_248;
        if (field_20C_13 == 0) {
            if (height <= 0) {
                sub_8047EB8(this);
                height = 0;
            } else {
                field_25C++;
            }
        } else if (z + height <= field_24C) {
            sub_8047EB8(this);
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
asm_unified(".include \"asm/nonmatching/sub_8040804__11FieldObjectUcii.s\"");
#else
void FieldObject::sub_8040804(u8 mode, int animation, int flag) {
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
            sub_8047DC8(this, 0xFF);
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

// https://decomp.me/scratch/TODO
// Mostly register and stack-slot allocation differs (e.g. `this` is r4 in the original); in this version
// two identical "landing" blocks also get merged where the original keeps them apart.
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
                sub_8046A10(this);
            } else if (field_25C >= 0) {
                field_25C = -1;
                field_213_5 = 0;
                field_250 = -1;
                field_24C = -1;
                field_23E = field_240;
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

                if (previousTop - depth < otherPreviousTop && previousTop > otherPreviousTop - otherDepth) {
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
        sub_8046980(this);
        sub_8046A10(this);
    }
}
#endif

asm_unified(".include \"asm/nonmatching/sub_8041FFC.s\"");

asm_unified(".include \"asm/nonmatching/sub_8044630.s\"");

struct Coldef* FieldObject::sub_80457E8(s16 cellX, s16 cellY, int* height1, int* height2, int* height3) {
    struct Coldef* coldef = get_coldef_ptr_by_xz(field_290, cellX, cellY);
    int value;

    if (coldef->floorType != 15) {
        value = (coldef->primaryHeight << 11) << coldef->heightScale;
        *height1 = value;
        if (field_210_6 && (coldef->secondaryHeight != 0 || (coldef->solid & field_210_3))) {
            value += (coldef->gap << 11) << coldef->heightScale;
            *height2 = value;
            *height3 = !(coldef->solid & field_210_3) ? value + ((coldef->secondaryHeight << 11) << coldef->heightScale)
                                                         : 0x7FFFFFFF;
        } else {
            *height3 = -1;
            *height2 = -1;
        }
    } else {
        *height1 = 0x7FFFFFFF;
        *height3 = -1;
        *height2 = -1;
    }
    return coldef;
}
