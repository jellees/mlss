#pragma implementation "field_player_character.h"
#include "global.h"
#include "common.h"
#include "field_player_character.h"
#include "field_monster.h"

FieldPlayerCharacter::FieldPlayerCharacter(int room, int index) : FieldObject(room, index) {
    field_355 = 0;
    field_33C_0 = 0x7F;
    field_33D_0 = 0x7F;
    field_33E = -1;
    field_346 = 14;
    field_347 = 7;
    field_340 = 0;
    field_350_14 = 0;
    field_358_3 = 0;
    field_358_4 = 0;
    field_358_12 = 0;
    field_352_0 = 0;
    field_352_1 = 0;
    field_352_2 = 0;
    field_352_3 = 0;
    field_352_4 = 0;
    field_352_5 = 0;
    field_211_0 = 1;
    field_210_7 = 1;
    field_353_3 = 1;
    field_36C = NULL;
}

void FieldPlayerCharacter::sub_8048174(int arg) {
    int value = off_83A09DC[field_54][state];

    if ((state >= 0 && state <= 4) || state == 13) {
        switch (arg) {
            case 0:
                if (value == 1 && !field_212_13) {
                    value = 0;
                }
                break;
            case 1:
                if (field_54 == 0) {
                    value = 23;
                }
                break;
            case 2:
                if (field_54 == 0) {
                    if (value == 1 && field_212_13) {
                        value = 15;
                    } else {
                        value = 11;
                    }
                }
                break;
            case 3:
                if (field_54 == 1) {
                    value = 16;
                }
                break;
            case 4:
                if (field_54 == 1) {
                    value = 18;
                }
                break;
            case 5:
                break;
            case 6:
                break;
        }
    }
    if (field_54 == 0 && arg == 2) {
        if (value == 7) {
            value = 12;
        } else if (value == 9) {
            value = 14;
        }
    }
    if (value == 7) {
        if (field_345 == 8 || field_343 != -1 || previousState == 6 || previousState == 7) {
            value = 8;
        }
    } else if (value == 12) {
        if (field_345 == 13 || field_343 != -1 || previousState == 6 || previousState == 7) {
            value = 13;
        }
    }
    field_344 = value;
}

void FieldPlayerCharacter::method5() {
    FieldObject::method5();
    field_33D_0 = field_33C_0;
    field_350_13 = field_350_6;
    field_33D_7 = field_33C_7;
    field_33F = field_33E;
    field_341 = field_340;
    field_343 = field_342;
    field_350_7 = field_350_0;
    field_350_11 = field_350_4;
    field_345 = field_344;
    field_354 = field_238;
    field_362 = velocityX;
    field_364 = velocityY;
    field_353_7 = field_353_6;
    field_368->field_17_0 = field_368->field_16_0;
    field_368->field_17_7 = field_368->field_16_7;
    field_368->field_16_0 = 0;
}

void FieldPlayerCharacter::method8(s16 cameraX, s16 cameraY, FieldObject** objects) {
    if (field_352_6) {
        if (field_20C_25 && !field_214_21) {
            field_6 = x / 256 - cameraX;
            field_8 = (y - z) / 256 - cameraY - 3;
            sprite->xPosition = field_6 + field_23A;
            sprite->yPosition = field_8 - height / 256 + 4 + field_23B;
            sprite->field_E = 0xFFFF;
            field_A = 0;
        }
    } else {
        FieldObject::method8(cameraX, cameraY, objects);
    }
    if (!field_36C->field_12_5 && field_353_0) {
        field_36C->xPosition = sprite->xPosition + field_372;
        field_36C->yPosition = sprite->yPosition + field_373;
        field_36C->field_E = sprite->field_E + field_374;
        field_36C->field_1F_0 = sprite->field_1F_0;
    }
}

void FieldPlayerCharacter::method2(u16* arg1, u16* arg2, void* arg3) {
    FieldObject::method2(arg1, arg2, arg3);
    if (field_378_0) {
        field_36C = sub_8020DD0(0, field_370, 1, -1, -1, -1, -1);
        sub_801E150(field_36C, field_37B, -1, 0, 0);
        sub_801E150(field_36C, field_37B, field_37C, 0, 0);
        sub_8021ED8(field_36C);
        field_36C->field_11_6 = field_378_1;
        field_36C->field_1F_0 = field_378_2;
        field_36C->field_1F_2 = field_378_4;
        field_36C->field_12_1 = field_378_6;
        field_36C->field_12_3 = field_379_0;
        field_36C->field_12_4 = field_379_1;
        field_36C->field_2A = field_37E;
        field_36C->field_2C = field_380;
        field_36C->xScale = field_382;
        field_36C->yScale = field_384;
        field_378_0 = 0;
    } else {
        field_36C = sub_8020DD0(0, -1, 1, -1, -1, -1, -1);
    }
}

void FieldPlayerCharacter::method3() {
    FieldObject::method3();
    if (!field_36C->field_12_5) {
        field_378_1 = field_36C->field_11_6;
        field_378_2 = field_36C->field_1F_0;
        field_378_4 = field_36C->field_1F_2;
        field_378_6 = field_36C->field_12_1;
        field_379_0 = field_36C->field_12_3;
        field_379_1 = field_36C->field_12_4;
        field_37B = field_36C->field_20[1];
        field_37C = field_36C->field_23;
        field_37E = field_36C->field_2A;
        field_380 = field_36C->field_2C;
        field_382 = field_36C->xScale;
        field_384 = field_36C->yScale;
        field_378_0 = 1;
    }
}

void FieldPlayerCharacter::method7(u8 force) {
    u8 animation;
    int flag;

    if (state >= 0 && state <= 3) {
        int arg = 0;

        if (field_214_18 == 0) {
            animation = sprite->field_20[1];
            flag = 0;
        } else {
            u8 value = byte_83A05EC[field_214_18 * 16 + field_214_20 * 8 + direction];

            animation = value & 0x7F;
            flag = value >> 7;
            if (field_214_23 && (field_214_0 == 2 || field_214_0 == 3) && (state == 2 || state == 3)) {
                animation += (state - 1) * 5;
            }
        }
        if (state == 1 && previousState == 0 && (field_214_0 == 2 || field_214_0 == 3)) {
            arg = 1;
        }
        if (sprite->field_20[1] != animation || sprite->field_11_6 != flag || force) {
            sub_801E150(sprite, animation, arg, 0, 0);
            sprite->field_11_6 = flag;
        }
    } else {
        u8 value = byte_83A05EC[field_214_18 * 16 + field_214_20 * 8 + direction];

        animation = value & 0x7F;
        flag = value >> 7;
        if (field_352_7) {
            switch (state) {
                case 6:
                case 8:
                    animation += 10;
                    break;
                case 7:
                case 9:
                    animation += 5;
                    break;
                case 11:
                case 12:
                    animation += 5;
                    break;
                case 20:
                    animation += 20;
                    break;
                case 25:
                case 26:
                    animation += 15;
                    break;
                case 33:
                case 34:
                case 35:
                case 36:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                    animation += 15;
                    break;
                case 63:
                case 133:
                case 141:
                case 149:
                case 157:
                    animation += 5;
                    break;
                case 116:
                case 124:
                    animation += 10;
                    break;
                case 72:
                case 88:
                case 101:
                    if (field_214_23 && airFrames >= 0) {
                        if (velocityZ > 0) {
                            animation += 5;
                        } else if (velocityZ < 0) {
                            animation += 10;
                        }
                    }
                    break;
                case 115:
                    animation += 5;
                    break;
                case 161:
                    animation += 2;
                    break;
                case 172:
                case 173:
                    animation += 5;
                    break;
                case 165:
                case 166:
                    animation += 10;
                    break;
                case 167:
                    animation += 15;
                    break;
                case 169:
                    animation += 30;
                    break;
                case 171:
                    animation += 30;
                    break;
                case 174:
                    animation += 20;
                    break;
                case 176:
                    animation += 25;
                    break;
            }
        } else {
            switch (state) {
                case 11:
                case 12:
                case 78:
                case 98:
                case 109:
                case 110:
                case 120:
                case 121:
                case 145:
                case 146:
                case 153:
                case 154:
                    animation += 5;
                    break;
                case 16:
                case 18:
                case 23:
                case 27:
                case 29:
                case 31:
                case 37:
                case 46:
                case 48:
                case 53:
                case 63:
                case 64:
                case 66:
                case 68:
                case 81:
                case 83:
                case 86:
                case 102:
                case 105:
                case 172:
                    animation += 5;
                    break;
                case 17:
                case 19:
                case 24:
                case 28:
                case 30:
                case 32:
                case 38:
                case 47:
                case 49:
                case 54:
                case 65:
                case 67:
                case 69:
                case 82:
                case 84:
                case 87:
                case 103:
                case 106:
                case 116:
                case 124:
                case 173:
                    animation += 10;
                    break;
                case 101:
                case 160:
                    if (field_214_23 && airFrames >= 0) {
                        if (velocityZ > 0) {
                            animation += 5;
                        } else if (velocityZ < 0) {
                            animation += 10;
                        }
                    }
                    break;
                case 20:
                case 25:
                case 26:
                    animation += 20;
                    break;
                case 161:
                    animation += 1;
                    break;
                case 162:
                    animation += 2;
                    break;
                case 163:
                    animation += 3;
                    break;
                case 165:
                case 166:
                    animation += 10;
                    break;
                case 167:
                    animation += 15;
                    break;
                case 175:
                    animation += 20;
                    break;
                case 33:
                case 34:
                case 35:
                case 36:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 176:
                    animation += 25;
                    break;
            }
        }
        if (sprite->field_20[1] != animation || sprite->field_11_6 != flag || force) {
            sub_801E150(sprite, animation, 0, 0, 0);
            sprite->field_11_6 = flag;
        }
    }
}

void FieldPlayerCharacter::sub_8049000(u16 animation) {
    if (field_218 != animation) {
        field_218 = animation;
        if (field_26E != 0xFF) {
            sub_8115048(field_334, field_26E, 0);
            field_26C = 0xFFFF;
            field_26E = 0xFF;
        }
        field_214_23 = field_218 == 0x1001 || field_218 == 0x1002 || field_218 == 0x1028;
        sub_80210A8(sprite, 0, field_218, 1, -1, -1, -1, -1);
        field_21E = (sprite->field_1E_4 + 1) << 12 | sprite->field_1C;
        sub_8040804(true, -1, -1);
    }
}

void FieldPlayerCharacter::sub_80490CC(u8 arg) {
    if (field_20C_0 && !field_214_21) {
        if (airFrames >= 0) {
            if (arg != 0 && !field_2B5_0 && !field_2B5_3) {
                state = 4;
                sub_8049000(field_54 == 0 ? (field_35A_11 ? 0x103C : 0x103B) : 0x1052);
                if (field_214_0 != 4) {
                    field_214_0 = 5;
                }
            } else if (z + height >= previousZ + previousHeight) {
                state = 2;
            } else {
                state = 3;
            }
        } else if (velocityX != 0 || velocityY != 0) {
            state = 1;
        } else {
            state = 0;
        }
        if (arg != 0 && !field_2B5_0 && !field_2B5_3 && previousState == 4 && state != 4) {
            sub_8049000(field_54 == 0 ? (field_35A_11 ? 0x1028 : 0x1001) : 0x1002);
            field_214_0 = 3;
        }
    }
}

void FieldPlayerCharacter::sub_8049224() {
    field_214_0 = 4;
    if (state != 4) {
        sub_8049000(field_54 == 0 ? (field_35A_11 ? 0x103C : 0x103B) : 0x1052);
    } else if (sprite->field_12_4) {
        sub_8040804(true, -1, -1);
    }
    startAirborne(defaultJumpVelocity, defaultGravity, -1);
    field_355 = 1;
    state = 4;
    play_sfx_80195B4(0xD7, -1);
}

void FieldPlayerCharacter::sub_80492DC() {
    if ((field_54 == 0 && field_218 == 0x103E) || (field_54 == 1 && field_218 == 0x1053)) {
        field_214_0 = 3;
        sub_8049000(field_54 == 0 ? (field_35A_11 ? 0x1028 : 0x1001) : 0x1002);
    }
    field_35A_2 = 0;
}

void FieldPlayerCharacter::sub_8049370(u8 arg) {
    field_214_0 = 4;
    sub_8049000(field_54 == 0 ? (field_35A_11 ? 0x1029 : 0x1025) : 0x103F);
    sprite->field_12_1 = 1;
    if (arg == 0) {
        play_sfx_80195B4(0x3C, -1);
    } else {
        play_sfx_80195B4(0x3C, -1);
    }
    state = 5;
    field_212_6 = 1;
    field_358_12 = 0;
    field_353_2 = 0;
}

void FieldPlayerCharacter::sub_8049430() {
    field_214_0 = 4;
    sub_8049000(field_54 == 0 ? (field_35A_11 ? 0x102A : 0x1026) : 0x1040);
    sub_804955C(field_368->field_0 == 11);
    play_sfx_80195B4(field_54 == 0 ? 0x157 : 0x87, -1);
    state = 10;
    field_355 = 0;
    field_358_12 = 0;
}

void FieldPlayerCharacter::sub_80494D4() {
    field_214_0 = 3;
    sub_8020D40(field_36C);
    sub_8049000(field_54 == 0 ? (field_35A_11 ? 0x1028 : 0x1001) : 0x1002);
    stop_sfx_80195A8(field_54 == 0 ? 0x157 : 0x87);
    stop_sfx_80195A8(field_54 == 0 ? 0x158 : 0x156);
    state = 0;
}

void FieldPlayerCharacter::sub_804955C(int type) {
    s8(*offsets)[3];

    field_370 = field_54 == 0 ? 0x1059 : 0x105A;
    sub_80210A8(field_36C, 0, field_370, 1, -1, -1, -1, -1);
    sub_801E150(field_36C, 0, -1, 0, 0);
    sub_8021ED8(field_36C);
    offsets = byte_83A09E4[type];
    field_353_0 = 1;
    field_372 = offsets[direction][0];
    field_373 = offsets[direction][1];
    field_374 = offsets[direction][2];
    field_36C->field_11_6 = 0;
    field_36C->field_1F_0 = sprite->field_1F_0;
    field_36C->field_1F_2 = sprite->field_1F_2;
    field_36C->xPosition = sprite->xPosition + field_372;
    field_36C->yPosition = sprite->yPosition + field_373;
    field_36C->field_E = sprite->field_E + field_374;
    field_36C->field_12_1 = 0;
}

void FieldPlayerCharacter::sub_80496B4() {
    field_370 = 0x1045;
    sub_80210A8(field_36C, 0, 0x1045, 1, -1, -1, -1, -1);
    sub_801E150(field_36C, 1, -1, 0, 0);
    sub_8021ED8(field_36C);
    field_353_0 = 1;
    field_372 = 0;
    field_373 = 0;
    field_374 = -4;
    field_36C->field_11_6 = 0;
    field_36C->field_1F_0 = sprite->field_1F_0;
    field_36C->field_1F_2 = sprite->field_1F_2;
    field_36C->xPosition = sprite->xPosition;
    field_36C->yPosition = sprite->yPosition;
    field_36C->field_E = sprite->field_E;
    field_36C->field_12_1 = 2;
}

void FieldPlayerCharacter::sub_80497A8() {
    field_370 = 0x1054;
    sub_80210A8(field_36C, 0, 0x1054, 1, -1, -1, -1, -1);
    sub_801E150(field_36C, 0, -1, 0, 0);
    sub_8021ED8(field_36C);
    field_353_0 = 1;
    field_372 = 0;
    field_373 = -16;
    field_374 = -4;
    field_36C->field_11_6 = 0;
    field_36C->field_1F_0 = sprite->field_1F_0;
    field_36C->field_1F_2 = sprite->field_1F_2;
    field_36C->xPosition = sprite->xPosition + field_372;
    field_36C->yPosition = sprite->yPosition + field_373;
    field_36C->field_E = sprite->field_E + field_374;
    field_36C->field_12_1 = 0;
}

void FieldPlayerCharacter::sub_80498B0() {
    field_370 = 0x8004;
    sub_80210A8(field_36C, 0, field_370, 1, -1, -1, -1, -1);
    sub_801E150(field_36C, 0, -1, 0, 0);
    sub_8021ED8(field_36C);
    field_353_0 = 1;
    field_372 = 0;
    field_373 = -32;
    field_374 = -4;
    field_36C->field_11_6 = 0;
    field_36C->field_1F_0 = sprite->field_1F_0;
    field_36C->field_1F_2 = sprite->field_1F_2;
    field_36C->xPosition = sprite->xPosition + field_372;
    field_36C->yPosition = sprite->yPosition + field_373;
    field_36C->field_E = sprite->field_E + field_374;
    field_36C->field_12_1 = 0;
}

void FieldPlayerCharacter::sub_80499B8() {
    field_370 = 0x800B;
    sub_80210A8(field_36C, 2, field_370, 1, -1, -1, -1, -1);
    sub_801E150(field_36C, 2, -1, 0, 0);
    sub_8021ED8(field_36C);
    field_353_0 = 0;
    field_372 = 0;
    field_373 = 0;
    field_374 = 0;
    field_36C->field_11_6 = 0;
    field_36C->field_1F_0 = sprite->field_1F_0;
    field_36C->field_1F_2 = sprite->field_1F_2;
    field_36C->xPosition = sprite->xPosition;
    field_36C->yPosition = sprite->yPosition;
    field_36C->field_E = sprite->field_E;
    field_36C->field_12_1 = 2;
}

void FieldPlayerCharacter::sub_8049AB4(int mode, int animation) {
    switch (mode) {
        case 0:
            field_370 = 0x800B;
            sub_80210A8(field_36C, 2, field_370, 1, -1, -1, -1, -1);
            sub_801E150(field_36C, animation, -1, 0, 0);
            sub_8021ED8(field_36C);
            field_353_0 = 0;
            field_36C->field_11_6 = 0;
            field_36C->field_1F_0 = sprite->field_1F_0;
            field_36C->field_1F_2 = sprite->field_1F_2;
            field_36C->field_E = sprite->field_E;
            break;
        case 1:
            FieldObject::method3();
            field_356 = field_218;
            field_358_0 = direction;
            sub_8049000(field_54 == 0 ? (field_35A_11 ? 0x103D : 0x1032) : 0x104B);
            break;
    }
}

void FieldPlayerCharacter::sub_8049BD8(int value) {
    if (field_368->field_0 != value) {
        if (field_368->field_13 == -1) {
            field_368->field_1 = field_368->field_0;
            field_368->field_13 = field_368->field_10[!field_352_7];
        }
        field_368->field_0 = value;
        field_368->field_10[!field_352_7] = 0;
    }
}

// Sorts the sprites of this player character and the overlapping objects of the other brother.
void FieldPlayerCharacter::sub_8049C38(FieldObject** objects, int count) {
    int i;

    if (field_214_21 || !field_20C_12 || !field_20C_25) {
        return;
    }
    for (i = 0; i < count; i++, objects++) {
        FieldObject* other = *objects;

        if (field_54 == other->field_54 || other->field_214_21 || !other->field_20C_12
            || !other->field_20C_25) {
            continue;
        }
        if (field_6 - field_282 / 2 >= other->field_6 + other->field_282 / 2
            || field_6 + field_282 / 2 <= other->field_6 - other->field_282 / 2) {
            continue;
        }
        if (sprite->yPosition >= other->sprite->yPosition + other->field_283
            || sprite->yPosition <= other->sprite->yPosition - other->field_283) {
            continue;
        }
        if (!((y / 256 < other->y / 256 && z + height < other->z + other->height + other->field_274)
              || field_352_6)) {
            if (sprite->yPosition - 16 < other->sprite->yPosition
                && sprite->field_1F_2 > other->sprite->field_1F_2) {
                sprite->field_1F_2 = other->sprite->field_1F_2;
            }
            if (sprite->yPosition - field_283 < other->sprite->yPosition - 16
                && sprite->field_1F_0 > other->sprite->field_1F_0) {
                sprite->field_1F_0 = other->sprite->field_1F_0;
            }
            if (sprite->yPosition - 16 > other->sprite->yPosition
                && sprite->field_1F_0 > other->sprite->field_1F_2) {
                sprite->field_1F_0 = other->sprite->field_1F_2;
            }
            if (sprite->yPosition < other->sprite->yPosition
                && sprite->field_1F_2 > other->sprite->field_1F_0) {
                sprite->field_1F_2 = other->sprite->field_1F_0;
            }
            if (field_214_13 == other->field_214_13 && sprite->field_E >= other->sprite->field_E) {
                sprite->field_E = other->sprite->field_E - 1;
            }
        } else {
            if (other->sprite->yPosition - 16 < sprite->yPosition
                && other->sprite->field_1F_2 > sprite->field_1F_2) {
                other->sprite->field_1F_2 = sprite->field_1F_2;
                other->field_214_24 = 1;
            }
            if (other->sprite->yPosition - other->field_283 < sprite->yPosition - 16
                && other->sprite->field_1F_0 > sprite->field_1F_0) {
                other->sprite->field_1F_0 = sprite->field_1F_0;
                other->field_214_24 = 1;
            }
            if (other->sprite->yPosition - 16 > sprite->yPosition
                && other->sprite->field_1F_0 > sprite->field_1F_2) {
                other->sprite->field_1F_0 = sprite->field_1F_2;
                other->field_214_24 = 1;
            }
            if (other->sprite->yPosition < sprite->yPosition
                && other->sprite->field_1F_2 > sprite->field_1F_0) {
                other->sprite->field_1F_2 = sprite->field_1F_0;
                other->field_214_24 = 1;
            }
            if (other->field_214_13 == field_214_13 && other->sprite->field_E >= sprite->field_E) {
                other->sprite->field_E = sprite->field_E - 1;
            }
        }
    }
}

// Returns the box of data that contains this player character, if any. Each box is 11 bytes: x, y,
// width, depth (16-pixel units), z, height (8-pixel units; 0x7F = 0xFF) and a type.
u8* FieldPlayerCharacter::sub_8049FF4(u8* data) {
    if (field_20C_0 && field_20C_24) {
        int px = x / 256;
        int py = y / 256;
        int pz = (z + height) / 256;
        u16 halfWidth = field_278 >> 8;
        int depth = field_27C >> 8;
        int count = data[4];
        u8* box = data - (data[6] << 8 | data[5]);
        int i;

        for (i = 0; i < count; i++, box += 11) {
            int left = box[0] * 16;
            int right = left + box[2] * 16 - 1;
            int top = box[1] * 16;
            int bottom = top + box[3] * 16 - 1;
            int low = (box[4] & 0x7F) * 8;
            int boxHeight = (box[5] & 0x7F) == 0x7F ? 0xFF * 8 : (box[5] & 0x7F) * 8;
            int high = low + boxHeight;

            if ((box[6] & 3) == 0) {
                left -= halfWidth / 2;
                right += halfWidth / 2;
                top -= 1;
                bottom += depth - 1;
            } else {
                left += 4;
                right -= 4;
                top += 7;
            }
            if (px >= left && px <= right && py >= top && py <= bottom && pz >= low && pz <= high
                && (boxHeight != 0 || height <= 0)) {
                return box;
            }
        }
    }
    return NULL;
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804A124__20FieldPlayerCharacterP12FieldStruct6PiT2bT4.s\"");
#else
// Finds the cell rectangle in entries that this player character stands in.
struct FieldStruct6* FieldPlayerCharacter::sub_804A124(struct FieldStruct6* entries, int* outX,
                                                       int* outY, bool grounded, bool filtered) {
    int left;
    int right;
    int top;
    int bottom;
    u8 corners;
    int cellZ;
    int floor;
    int ceiling;
    int objectTop;
    u8* directions;

    if (grounded && height != 0) {
        return NULL;
    }
    if (entries == NULL) {
        return NULL;
    }
    left = x - ((field_346 / 2) << 8);
    right = left + ((field_346 - 1) << 8);
    //! \bug top is used before it is set.
    if (left < 0 || top < 0) {
        return NULL;
    }
    top = y - ((field_347 - 1) << 8);
    bottom = top + ((field_347 - 1) << 8);
    corners = 0;
    cellZ = z / 4096;
    sub_803FBA4(field_290, left, top, &floor, &ceiling, &objectTop, corners, field_20C_11);
    if (cellZ == floor / 4096 || (objectTop != -1 && cellZ == objectTop / 4096)) {
        corners |= 1;
    }
    sub_803FBA4(field_290, right, top, &floor, &ceiling, &objectTop, 0, field_20C_11);
    if (cellZ == floor / 4096 || (objectTop != -1 && cellZ == objectTop / 4096)) {
        corners |= 2;
    }
    sub_803FBA4(field_290, left, bottom, &floor, &ceiling, &objectTop, 0, field_20C_11);
    if (cellZ == floor / 4096 || (objectTop != -1 && cellZ == objectTop / 4096)) {
        corners |= 4;
    }
    sub_803FBA4(field_290, right, bottom, &floor, &ceiling, &objectTop, 0, field_20C_11);
    if (cellZ == floor / 4096 || (objectTop != -1 && cellZ == objectTop / 4096)) {
        corners |= 8;
    }
    if (((word_83A0A2C[0] >> corners) & 1) == 0) {
        return NULL;
    }
    left /= 4096;
    right /= 4096;
    top /= 4096;
    bottom /= 4096;
    switch (corners) {
        case 1:
            right = left;
            bottom = top;
            break;
        case 2:
        case 8:
            left = right;
            top = bottom;
            break;
        case 3:
            bottom = top;
            break;
        case 4:
            right = left;
            top = bottom;
            break;
        case 5:
            right = left;
            break;
        case 10:
            left = right;
            break;
        case 12:
            top = bottom;
            break;
        case 15:
            break;
    }
    if (filtered) {
        directions = &byte_83A0A2E[direction];
    }
    while (TRUE) {
        if (left >= entries->left && right <= entries->right && top >= entries->top
            && bottom <= entries->bottom && field_26_1 == entries->layer) {
            if (!filtered) {
                *outX = x - (entries->left << 12);
                *outY = y - (entries->top << 12);
                return entries;
            } else {
                u8 type = entries->type;

                if (directions[0] == type || directions[1] == type || directions[2] == type) {
                    *outX = x - (entries->left << 12);
                    *outY = y - (entries->top << 12);
                    return entries;
                }
            }
        }
        if (entries->last) {
            return NULL;
        }
        entries++;
    }
}
#endif

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/method11__20FieldPlayerCharacter.s\"");
#else
void FieldPlayerCharacter::method11() {
    u8 flags;

    FieldObject::method11();
    field_33C_0 = 0x7F;
    field_350_6 = 0;
    field_33C_7 = 0;
    field_350_0 = 0;
    field_350_4 = 0;
    field_33E = -1;
    field_340 = 0;
    field_342 = 0xFF;
    field_353_6 = 0;
    if (field_350_15) {
        flags = 2;
    } else {
        flags = off_83A086C[field_352_7 ^ 1][state];
    }
    field_352_0 = flags;
    flags >>= 1;
    field_352_1 = flags;
    flags >>= 1;
    field_352_2 = flags;
    flags >>= 1;
    field_352_3 = flags;
    flags >>= 1;
    field_352_4 = flags;
    flags >>= 1;
    field_352_5 = flags;
}
#endif

// The IWRAM copy of the division routine (loc_819832C), as in FieldObject.
#define IWRAM_DIV(a, b) (((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(a, b))

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/method12__20FieldPlayerCharacterPP11FieldObjectiUc.s\"");
#else
// Like FieldObject::method12 (collisions with the other objects), with a second pass into a FieldMonster's
// FMCH, the closest object below in field_238, landing only on objects with field_20C_23, and a "squeeze"
// mode (1: this object is above the other, 2: below) that scales the boxes by the height overlap.
void FieldPlayerCharacter::method12(FieldObject** others, int count, u8 flag) {
    int left;
    int top;
    int bottom;
    u16 heightAbove;
    int n;

    if (!field_20C_0 || field_214_21 || !(field_20C_6 | field_20C_8)) {
        return;
    }
    left = x - field_272 / 2;
    top = y;
    bottom = z;
    if (height > 0 || (height < 0 && previousHeight < 0)) {
        bottom += height;
    }
    if (field_238 != -1) {
        heightAbove = (z + height) - (others[field_238]->z + others[field_238]->height);
    } else {
        heightAbove = 0;
    }
    n = field_20C_8 ? count : 2;
    for (; n != 0; n--, others++) {
        FieldObject* other = *others;
        int pass;

        if (field_54 == other->field_54) {
            continue;
        }
        if (flag && !other->field_210_5) {
            continue;
        }
        for (pass = 0; pass <= 1; pass++) {
            int pushThis;
            int pushOther;
            int otherWidth;
            int otherDepth;
            int otherOffset;
            int width;
            int depth;
            int offset;
            int otherLeft;
            int thisLeft;
            int otherTop;
            int thisTop;
            int otherBottom;
            int overlap;
            int sideThis;
            int sideOther;
            int verticalThis;
            int verticalOther;
            int mode;

            if (!other->field_20C_0) {
                goto next;
            }
            if (other->field_214_21 && other->field_54 != field_29) {
                goto next;
            }
            if (other->field_29 == field_54) {
                goto next;
            }
            if (other->field_20C_19 == 0) {
                pushThis = field_20C_6 & other->field_20C_5;
                pushOther = field_20C_5 & other->field_20C_6;
            } else {
                pushThis = field_20C_8 & other->field_20C_5;
                pushOther = field_20C_9 & other->field_20C_6;
            }
            if (!pushThis) {
                goto next;
            }

            otherWidth = other->field_272;
            otherLeft = other->x - otherWidth / 2;
            width = field_272;
            thisLeft = left;
            if (otherLeft < thisLeft) {
                overlap = otherLeft + otherWidth - thisLeft;
            } else {
                overlap = thisLeft + width - otherLeft;
            }
            if (overlap <= 0) {
                goto next;
            }
            otherOffset = other->field_270;
            otherDepth = other->field_276;
            otherTop = other->y + otherOffset;
            offset = field_270;
            depth = field_276;
            thisTop = top + offset;
            if (otherTop > thisTop) {
                overlap = thisTop - (otherTop - otherDepth);
            } else {
                overlap = otherTop - (thisTop - depth);
            }
            if (overlap <= 0) {
                goto next;
            }

            otherBottom = other->z;
            if (other->height > 0 || (other->height < 0 && other->previousHeight < 0)) {
                otherBottom += other->height;
            }
            if (otherBottom <= bottom) {
                int otherTopZ = otherBottom + other->field_274;

                overlap = otherTopZ - bottom;
                if (overlap <= 0) {
                    if (otherTopZ >= z && (field_238 == -1 || -overlap < (s16)heightAbove)) {
                        heightAbove = -overlap;
                        field_238 = other->field_54;
                    }
                    if (overlap < 0) {
                        goto next;
                    }
                }
            } else {
                overlap = bottom + field_274 - otherBottom;
                if (overlap < 0) {
                    goto next;
                }
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

            if (other->field_20C_23 && verticalThis == 2) {
                // Landing on top of the other object.
                if (field_29 != other->field_54) {
                    height = (height + overlap) & ~0xFF;
                }
                field_238 = other->field_54;
                field_1 = other->field_54;
                heightAbove = 0;
                if (field_2B5_3) {
                    sub_8046A10();
                } else if (airFrames >= 0) {
                    land();
                }
            } else if (verticalThis == 1) {
                // Hitting the other object from below.
                if (field_4C_7 != 1 && other->field_29 != field_54) {
                    height -= overlap;
                    if (airFrames >= 0 && velocityZ > 0) {
                        velocityZ = -velocityZ;
                    }
                }
            } else {
                int previousX;
                int otherPreviousX;
                int previousY;
                int otherPreviousY;

                mode = 0;
                if (!other->field_20C_23) {
                    if (otherBottom <= bottom && previousHeight > 0) {
                        otherWidth = IWRAM_DIV(otherWidth * overlap, other->field_274);
                        otherLeft = other->x - otherWidth / 2;
                        otherDepth = IWRAM_DIV(otherDepth * overlap, other->field_274);
                        otherOffset = IWRAM_DIV(otherOffset * overlap, other->field_274);
                        otherTop = other->y + otherOffset;
                        mode = 1;
                    } else if (verticalThis == 0 && bottom <= otherBottom && other->previousHeight > 0) {
                        width = IWRAM_DIV(width * overlap, field_274);
                        thisLeft = x - width / 2;
                        depth = IWRAM_DIV(depth * overlap, field_274);
                        offset = IWRAM_DIV(offset * overlap, field_274);
                        thisTop = y + offset;
                        mode = 2;
                    }
                    if (mode != 0) {
                        if (otherLeft < thisLeft) {
                            overlap = otherLeft + otherWidth - thisLeft;
                        } else {
                            overlap = thisLeft + width - otherLeft;
                        }
                        if (overlap <= 0) {
                            goto next;
                        }
                        if (otherTop > thisTop) {
                            overlap = thisTop - (otherTop - otherDepth);
                        } else {
                            overlap = otherTop - (thisTop - depth);
                        }
                        if (overlap <= 0) {
                            goto next;
                        }
                    }
                }

                previousX = this->previousX;
                otherPreviousX = other->previousX;
                previousY = this->previousY;
                otherPreviousY = other->previousY;
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
                    int previousDepth = depth;
                    int otherPreviousDepth = otherDepth;
                    int previousOffset = offset;
                    int otherPreviousOffset = otherOffset;
                    int previousTop;
                    int otherPreviousTop;

                    if (mode == 1) {
                        int scale = other->previousZ + other->previousHeight + other->field_274
                                    - (this->previousZ + this->previousHeight);

                        otherPreviousDepth = IWRAM_DIV(other->field_276 * scale, other->field_274);
                        otherPreviousOffset = IWRAM_DIV(other->field_270 * scale, other->field_274);
                    } else if (mode == 2) {
                        int scale = this->previousZ + this->previousHeight + field_274
                                    - (other->previousZ + other->previousHeight);

                        previousDepth = IWRAM_DIV(field_276 * scale, field_274);
                        previousOffset = IWRAM_DIV(field_270 * scale, field_274);
                    }
                    previousTop = previousY + previousOffset;
                    otherPreviousTop = otherPreviousY + otherPreviousOffset;
                    if (previousTop - previousDepth < otherPreviousTop
                        && previousTop > otherPreviousTop - otherPreviousDepth) {
                        if (this->previousX < other->previousX) {
                            sideThis = 2;
                            sideOther = 8;
                        } else {
                            sideThis = 8;
                            sideOther = 2;
                        }
                    } else if (this->previousY > other->previousY) {
                        sideThis = 1;
                        sideOther = 4;
                    } else {
                        sideThis = 4;
                        sideOther = 1;
                    }
                }

                if (sideThis == 8) {
                    if (x < this->previousX || (mode == 1 && this->previousHeight > 0)) {
                        int limit;
                        int base;
                        int newX;

                        if (pushOther || (field_20C_14 && (height > 0 || this->previousHeight > 0))) {
                            limit = other->x + ((other->field_272 + field_272) >> 1);
                            base = other->x;
                        } else {
                            limit = this->previousX;
                            base = other->x;
                        }
                        newX = base + (otherWidth + width) / 2;
                        if (newX > limit) {
                            newX = limit;
                        }
                        if (newX > x) {
                            x = newX;
                        }
                    }
                } else if (sideThis == 2) {
                    if (x > this->previousX || (mode == 1 && this->previousHeight > 0)) {
                        int limit;
                        int base;
                        int newX;

                        if (pushOther || (field_20C_14 && (height > 0 || this->previousHeight > 0))) {
                            limit = other->x - ((other->field_272 + field_272) >> 1);
                            base = other->x;
                        } else {
                            limit = this->previousX;
                            base = other->x;
                        }
                        newX = base - (otherWidth + width) / 2;
                        if (newX < limit) {
                            newX = limit;
                        }
                        if (newX < x) {
                            x = newX;
                        }
                    }
                } else if (sideThis == 1) {
                    if (y < this->previousY || (mode == 1 && this->previousHeight > 0)) {
                        int limit;
                        int base;
                        int newY;

                        if (pushOther || (field_20C_14 && (height > 0 || this->previousHeight > 0))) {
                            limit = other->y + (other->field_270 + field_276 - field_270);
                            base = other->y;
                        } else {
                            limit = this->previousY;
                            base = other->y;
                        }
                        newY = base + (otherOffset + depth - offset);
                        if (newY > limit) {
                            newY = limit;
                        }
                        if (newY > y) {
                            y = newY;
                        }
                    }
                } else if (y > this->previousY || (mode == 1 && this->previousHeight > 0)) {
                    int limit;
                    int base;
                    int newY;

                    if (pushOther || (field_20C_14 && (height > 0 || this->previousHeight > 0))) {
                        limit = other->y + (other->field_270 - other->field_276 - field_270);
                        base = other->y;
                    } else {
                        limit = this->previousY;
                        base = other->y;
                    }
                    newY = base + (otherOffset - otherDepth - offset);
                    if (newY < limit) {
                        newY = limit;
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
                other->field_24_9 = 1;
            }
        next:
            if (other->field_20C_19 == 3 && ((FieldMonster*)other)->field_344 != NULL
                && ((FieldMonster*)other)->field_344->field_20C_0) {
                other = ((FieldMonster*)other)->field_344;
            } else {
                break;
            }
        }
    }
    if (field_24_3 && field_2B5_0 && field_2B6_6) {
        sub_8046980();
        sub_8046A10();
    }
}
#endif

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804B028__20FieldPlayerCharacterP11FieldObject.s\"");
#else
// Returns the sides (bits 0-3) and vertical contact (bits 4-5) of this player character's collision box
// against other.
u8 FieldPlayerCharacter::sub_804B028(FieldObject* other) {
    u16 width;
    int depth;
    u16 boxHeight;
    u16 otherWidth;
    u16 otherDepth;
    u16 otherHeight;
    int otherLeft;
    int otherX;
    int overlapX;
    int otherTop;
    int overlapY;
    int otherBottom;
    int overlapZ;
    u8 sides;
    int vertical;
    int previousTop;
    int otherPreviousTop;

    if (!other->field_20C_0 || other->field_214_21 || !other->field_20C_7) {
        return 0;
    }
    width = field_272;
    depth = field_276;
    boxHeight = field_274;
    otherWidth = other->field_272;
    otherDepth = other->field_276;
    otherHeight = other->field_274;
    otherLeft = other->x - (otherWidth >> 1);
    otherX = other->x;
    if (otherLeft < field_284) {
        overlapX = otherLeft + otherWidth - field_284;
    } else {
        overlapX = field_284 + width - otherLeft;
    }
    if (overlapX < 0) {
        return 0;
    }
    otherTop = other->y + other->field_270;
    if (otherTop > field_288) {
        overlapY = field_288 - (otherTop - otherDepth);
    } else {
        overlapY = otherTop - (field_288 - depth);
    }
    if (overlapY < 0) {
        return 0;
    }
    if (overlapY == 0 && overlapX == 0) {
        return 0;
    }
    otherBottom = other->z;
    if (other->height > 0 || (other->height < 0 && other->previousHeight < 0)) {
        otherBottom += other->height;
    }
    if (otherBottom <= field_28C) {
        overlapZ = otherBottom + otherHeight - field_28C;
    } else {
        overlapZ = field_28C + boxHeight - otherBottom;
    }
    if (overlapZ < 0) {
        return 0;
    }

    sides = 0;
    vertical = 0;
    if (field_29 == other->field_54) {
        vertical = 2;
    } else if (overlapX > 0 && overlapY > 0) {
        int previousBottom = previousZ + previousHeight;

        if (previousBottom + boxHeight <= otherBottom) {
            vertical = 1;
        } else if (previousBottom >= otherBottom + otherHeight) {
            vertical = 2;
        }
    }
    previousTop = previousY + field_270 - depth / 2;
    otherPreviousTop = other->previousY + other->field_270 - (otherDepth >> 1);
    if (previousX == other->previousX && previousTop == otherPreviousTop) {
        if (direction <= 1) {
            sides |= 1;
        } else if (direction <= 2) {
            sides |= 8;
        } else if (direction <= 5) {
            sides |= 4;
        } else if (direction <= 6) {
            sides |= 2;
        } else {
            sides |= 1;
        }
    } else {
        int half = (depth + otherDepth) >> 1;

        if (previousTop < otherPreviousTop + half && previousTop > otherPreviousTop - half) {
            if (previousX < otherX) {
                sides |= 2;
            } else {
                sides |= 8;
            }
        } else if (previousTop > otherTop - depth / 2) {
            sides |= 1;
        } else {
            sides |= 4;
        }
    }
    field_33C_0 = other->field_54;
    field_350_0 = sides;
    field_350_4 = vertical;
    return sides | vertical << 4;
}
#endif

// Returns whether this player character's collision box overlaps other.
bool FieldPlayerCharacter::sub_804B25C(FieldObject* other) {
    u16 width;
    u16 depth;
    u16 boxHeight;
    u16 otherWidth;
    u16 otherDepth;
    u16 otherHeight;
    int edge;
    int overlap;

    if (!other->field_20C_0 || other->field_214_21 || !other->field_20C_5
        || (s8)field_1 == other->field_54) {
        return FALSE;
    }
    width = field_272;
    depth = field_276;
    boxHeight = field_274;
    otherWidth = other->field_272;
    otherDepth = other->field_276;
    otherHeight = other->field_274;
    edge = other->x - (otherWidth >> 1);
    if (edge < field_284) {
        overlap = edge + otherWidth - field_284;
    } else {
        overlap = field_284 + width - edge;
    }
    if (overlap <= 0) {
        return FALSE;
    }
    edge = other->y + other->field_270;
    if (edge > field_288) {
        overlap = field_288 - (edge - otherDepth);
    } else {
        overlap = edge - (field_288 - depth);
    }
    if (overlap <= 0) {
        return FALSE;
    }
    edge = other->z;
    if (other->height > 0 || (other->height < 0 && other->previousHeight < 0)) {
        edge += other->height;
    }
    if (edge <= field_28C) {
        overlap = edge + otherHeight - field_28C;
    } else {
        overlap = field_28C + boxHeight - edge;
    }
    if (overlap <= 0) {
        return FALSE;
    }
    return TRUE;
}

asm_unified(".include \"asm/nonmatching/sub_804B360__20FieldPlayerCharacterUcUc.s\"");
bool FieldPlayerCharacter::sub_804D0EC() {
    if (field_54 == 0 && field_35A_11) {
        if (get_coldef_ptr_by_xz(field_290, previousX / 4096, previousY / 4096)->floorType == 3) {
            return TRUE;
        }
        if (get_coldef_ptr_by_xz(field_290, previousX / 4096, (previousY - field_27C) / 4096)->floorType
            == 3) {
            return TRUE;
        }
    }
    return FALSE;
}

// Returns whether any corner of this player character's box is inside a wall.
bool FieldPlayerCharacter::sub_804D18C() {
    int left = x - field_278 / 2;
    int right = left + (field_278 - 0x100);
    int top = y - (field_27C - 0x100);
    int bottom = y;
    int low = z + height;
    int high;
    int floor;
    int ceiling;
    int objectTop;

    if (low < 0) {
        low = 0;
    }
    high = field_27A + low;
    sub_803FBA4(field_290, left, top, &floor, &ceiling, &objectTop, TRUE, TRUE);
    if (low < floor || (low < objectTop && high >= ceiling)) {
        return TRUE;
    }
    sub_803FBA4(field_290, right, top, &floor, &ceiling, &objectTop, TRUE, TRUE);
    if (low < floor || (low < objectTop && high >= ceiling)) {
        return TRUE;
    }
    sub_803FBA4(field_290, left, bottom, &floor, &ceiling, &objectTop, TRUE, TRUE);
    if (low < floor || (low < objectTop && high >= ceiling)) {
        return TRUE;
    }
    sub_803FBA4(field_290, right, bottom, &floor, &ceiling, &objectTop, TRUE, TRUE);
    if (low < floor || (low < objectTop && high >= ceiling)) {
        return TRUE;
    }
    return FALSE;
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804D2CC__20FieldPlayerCharacter.s\"");
#else
// Slides this player character around a corner: when it walks straight into a wall that blocks only one
// side of it, it moves onto the free cell row or column. Returns the direction to move in, or -1.
int FieldPlayerCharacter::sub_804D2CC() {
    u8 sides;
    u8 count;
    u8 mask;
    int i;
    int blocked;
    int bottom;
    int top;
    int floor;
    int ceiling;
    int objectTop;

    sides = field_24_11;
    if (sides == 0 || field_4C_3 != 0) {
        return -1;
    }
    if (velocityX != 0 && velocityY != 0) {
        return -1;
    }
    mask = 1;
    count = sides & mask;
    for (i = 4; ; ) {
        mask <<= 1;
        if (--i == 0) {
            break;
        }
        if (sides & mask) {
            if (++count == 2) {
                break;
            }
        }
    }
    if (count != 1) {
        return -1;
    }
    blocked = 0;
    bottom = z + height;
    top = bottom + field_27A;
    if (velocityX != 0) {
        int probeX;
        int probeY;
        int probeY2;

        if (field_34C != y) {
            return -1;
        }
        if (velocityX < 0) {
            probeX = field_348 - (field_278 >> 1);
        } else {
            probeX = field_348 + -0x100 + (field_278 >> 1) + 0xFF;
            probeX &= ~0xFF;
        }
        probeY = field_34C + 0x100;
        probeY2 = probeY;
        probeY -= field_27C;
        probeY2 = ((probeY2 + 0xFF) & ~0xFF) - 0x100;
        sub_803FBA4(field_290, probeX, probeY, &floor, &ceiling, &objectTop, TRUE, field_20C_11);
        if (bottom < floor || (ceiling >= 0 && top > ceiling && bottom < objectTop)
            || (field_20C_13 && bottom > floor && bottom != objectTop)) {
            blocked |= 1;
        }
        sub_803FBA4(field_290, probeX, probeY2, &floor, &ceiling, &objectTop, TRUE, field_20C_11);
        if (bottom < floor || (ceiling >= 0 && top > ceiling && bottom < objectTop)
            || (field_20C_13 && bottom > floor && bottom != objectTop)) {
            blocked |= 8;
        }
        if (blocked == 1) {
            y = (y + 0x100) & ~0xFF;
            return 4;
        }
        if (blocked == 8) {
            y = ((y + 0xFF) & ~0xFF) - 0x100;
            return 0;
        }
    } else if (velocityY != 0) {
        int probeY;
        int left;
        int right;

        if (field_348 != x) {
            return -1;
        }
        if (velocityY > 0) {
            probeY = y + 0x100;
        } else {
            probeY = y - field_27C;
        }
        left = x - (field_278 >> 1);
        right = left + field_278 + 0xFF;
        right &= ~0xFF;
        sub_803FBA4(field_290, left, probeY, &floor, &ceiling, &objectTop, TRUE, field_20C_11);
        if (bottom < floor || (ceiling >= 0 && top > ceiling && bottom < objectTop)
            || (field_20C_13 && bottom > floor && bottom != objectTop)) {
            blocked |= 1;
        }
        sub_803FBA4(field_290, x - 0x100, probeY, &floor, &ceiling, &objectTop, TRUE, field_20C_11);
        if (bottom < floor || (ceiling >= 0 && top > ceiling && bottom < objectTop)
            || (field_20C_13 && bottom > floor && bottom != objectTop)) {
            blocked |= 2;
        }
        sub_803FBA4(field_290, x, probeY, &floor, &ceiling, &objectTop, TRUE, field_20C_11);
        if (bottom < floor || (ceiling >= 0 && top > ceiling && bottom < objectTop)
            || (field_20C_13 && bottom > floor && bottom != objectTop)) {
            blocked |= 4;
        }
        sub_803FBA4(field_290, right, probeY, &floor, &ceiling, &objectTop, TRUE, field_20C_11);
        if (bottom < floor || (ceiling >= 0 && top > ceiling && bottom < objectTop)
            || (field_20C_13 && bottom > floor && bottom != objectTop)) {
            blocked |= 8;
        }
        if (blocked == 1) {
            x = (x + 0x200) & ~0x1FF;
            return 2;
        }
        if (blocked == 8) {
            x = (x - 0x100) & ~0x1FF;
            return 6;
        }
    }
    return -1;
}
#endif
// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804D734__20FieldPlayerCharacteriPP11FieldObjecti.s\"");
#else
// Hammer hits (mode 0, or 1 for ?) on objects: like sub_804DBD0 for the walls, with one box from
// word_83A0A78 for FieldMonsters and one for the other objects. Returns whether an object was hit.
bool FieldPlayerCharacter::sub_804D734(int mode, FieldObject** objects, int count) {
    int high;
    int low;
    int left;
    int left2;
    int right;
    int right2;
    int top;
    int top2;
    int bottom;
    int bottom2;

    if (mode != 1 && !(field_35A_11 && sprite->field_23 > 2 && sprite->field_23 <= 4)
        && !(sprite->field_23 == 3 || sprite->field_23 == 4)) {
        return FALSE;
    }
    if (mode == 0) {
        if (field_35A_11) {
            switch (sprite->field_23) {
                case 3:
                    high = 0x1800;
                    low = 0x100;
                    break;
                case 4:
                    high = 0x1000;
                    low = 0;
                    break;
            }
        } else {
            switch (sprite->field_23) {
                case 3:
                    high = 0x2800;
                    low = 0x1000;
                    break;
                case 4:
                    high = 0x1000;
                    low = 0;
                    break;
            }
        }
    } else if (field_35A_11) {
        high = 0x1000;
        low = 0x100;
    } else {
        high = 0x2000;
        low = 0x100;
    }
    left = x + word_83A0A78[mode][0][direction][0];
    right = x + word_83A0A78[mode][0][direction][1];
    top = y + word_83A0A78[mode][0][direction][2];
    bottom = y + word_83A0A78[mode][0][direction][3];
    left2 = x + word_83A0A78[mode][1][direction][0];
    right2 = x + word_83A0A78[mode][1][direction][1];
    top2 = y + word_83A0A78[mode][1][direction][2];
    bottom2 = y + word_83A0A78[mode][1][direction][3];
    high += z + height;
    low += z + height;
    for (; count != 0; count--, objects++) {
        FieldObject* other = *objects;
        int pass;

        for (pass = 0; pass <= 1; pass++) {
            int otherLeft;
            int otherBottom;

            if (other->field_54 == field_54 || !other->field_20C_0 || other->field_214_21
                || other->field_20C_19 == 6 || !(other->field_20C_5 || other->field_20C_7)) {
                goto next;
            }
            if (other->field_20C_19 == 3) {
                otherLeft = other->x - (other->field_272 >> 1);
                if (left >= otherLeft + other->field_272 || right <= otherLeft) {
                    goto next;
                }
                otherBottom = other->y + other->field_270;
                if (top <= otherBottom - other->field_276 || bottom >= otherBottom) {
                    goto next;
                }
            } else {
                otherLeft = other->x - (other->field_272 >> 1);
                if (left2 >= otherLeft + other->field_272 || right2 <= otherLeft) {
                    goto next;
                }
                otherBottom = other->y + other->field_270;
                if (top2 <= otherBottom - other->field_276 || bottom2 >= otherBottom) {
                    goto next;
                }
            }
            otherBottom = other->z + other->height;
            if (low >= otherBottom + other->field_274 || high <= otherBottom) {
                goto next;
            }
            if (mode == 0 ? field_20C_8 & other->field_210_4 : field_20C_8 & other->field_20C_5) {
                field_24_3 |= byte_83A0B78[direction];
            }
            if (other->field_20C_6 & field_20C_9) {
                //! \bug Pushes the first object rather than the FieldMonster's FMCH.
                (*objects)->field_24_3 |= byte_83A0B80[direction];
            }
            if (field_20C_24 && (field_20C_8 & other->field_20C_7) && field_350_0 == 0) {
                field_33C_0 = other->field_54;
                field_33C_7 = pass;
                field_350_0 = byte_83A0B78[direction];
                field_342 = mode;
            }
            if (mode == 0 ? other->field_210_4 : other->field_20C_5) {
                return TRUE;
            }
        next:
            if (other->field_20C_19 == 3 && ((FieldMonster*)other)->field_344 != NULL
                && ((FieldMonster*)other)->field_344->field_20C_0) {
                other = ((FieldMonster*)other)->field_344;
            } else {
                break;
            }
        }
    }
    return FALSE;
}
#endif
// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804DBD0__20FieldPlayerCharacteri.s\"");
#else
bool FieldPlayerCharacter::sub_804DBD0(int mode) {
    s16* offsets;
    int high;
    int low;
    u32 i;
    int floor;
    int ceiling;
    int objectTop;

    if (mode != 1 && !(field_35A_11 && sprite->field_23 > 2 && sprite->field_23 <= 4)
        && !(sprite->field_23 == 3 || sprite->field_23 == 4)) {
        return FALSE;
    }
    offsets = word_83A0B88[mode][direction];
    if (mode == 0) {
        if (field_35A_11) {
            switch (sprite->field_23) {
                case 3:
                    high = 0x1800;
                    low = 0x100;
                    break;
                case 4:
                    high = 0x1000;
                    low = 0;
                    break;
            }
        } else {
            switch (sprite->field_23) {
                case 3:
                    high = 0x2800;
                    low = 0x1000;
                    break;
                case 4:
                    high = 0x1000;
                    low = 0;
                    break;
            }
        }
    } else if (field_35A_11) {
        high = 0x1000;
        low = 0x100;
    } else {
        high = 0x2000;
        low = 0x100;
    }
    high += z;
    low += z;
    for (i = 0; i < 9; i++) {
        int probeX = x + offsets[byte_83A0C48[i][0]];
        int probeY = y + offsets[byte_83A0C48[i][1]];
        struct Coldef* coldef =
            sub_803FBA4(field_290, probeX, probeY, &floor, &ceiling, &objectTop, TRUE, field_20C_11);

        if (low <= floor) {
            if (mode != 0 || coldef->floorType != 8 || !(coldef->tileFlags & 1)) {
                return TRUE;
            }
        } else if (ceiling >= 0 && low <= objectTop && high > ceiling) {
            if ((coldef->solid & field_20C_11)
                && coldef->primaryHeight + coldef->gap == -coldef->secondaryHeight) {
                continue;
            }
            if (mode == 0 && coldef->floorType == 8 && !(coldef->tileFlags & 2)) {
                continue;
            }
            return TRUE;
        }
    }
    return FALSE;
}
#endif

// These are inline: sub_804DDF4 inlines sub_804FC90, and g++ emits the out-of-line copies at the end of the
// file in reverse definition order (0x0804FC90, 0x0804FCD4, 0x0804FD3C).
inline void FieldPlayerCharacter::sub_804FD3C() {
    field_214_0 = 4;
    sub_8049000(field_54 == 0 ? 0x103E : 0x1053);
    field_35A_2 = 1;
}

inline void FieldPlayerCharacter::sub_804FCD4() {
    field_214_0 = 3;
    sub_8049000(field_54 == 0 ? (field_35A_11 ? 0x1028 : 0x1001) : 0x1002);
    state = 0;
    field_212_6 = 0;
}

inline void FieldPlayerCharacter::sub_804FC90() {
    if (field_368->field_13 != -1) {
        field_368->field_0 = field_368->field_1;
        field_368->field_10[!field_352_7] = field_368->field_13;
        field_368->field_13 = -1;
    }
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804DDF4__20FieldPlayerCharacterPP11FieldObjecti.s\"");
#else
// Finds the object this player character stands on (field_33E) among objects, and the one it stands on
// top of with field_20C_1 > 1 (field_33C).
void FieldPlayerCharacter::sub_804DDF4(FieldObject** objects, int count) {
    int left = x - field_272 / 2;
    int top = y + field_270;
    FieldObject* found = NULL;
    int i;

    for (i = 0; i < count; i++, objects++) {
        FieldObject* other = *objects;
        int pass;

        for (pass = 0; pass <= 1; pass++) {
            if (other->field_20C_0 && other->field_20C_7) {
                u16 otherWidth = other->field_272;
                u16 otherDepth = other->field_276;
                u16 width = field_272;
                u16 depth = field_276;
                int edge = other->x - (otherWidth >> 1);
                int overlap;

                if (edge < left) {
                    overlap = edge + otherWidth - left;
                } else {
                    overlap = left + width - edge;
                }
                if (overlap > 0) {
                    edge = other->y + other->field_270;
                    if (edge > top) {
                        overlap = top - (edge - otherDepth);
                    } else {
                        overlap = edge - (top - depth);
                    }
                    if (overlap > 0) {
                        int distance = other->z + other->height - z;

                        if (other->field_20C_5 ? distance <= 0x2800 : distance <= 0) {
                            field_33E = other->field_54;
                            found = other;
                            if (other->field_20C_1 > 1) {
                                field_33C_0 = other->field_54;
                                field_33C_7 = pass;
                            }
                            break;
                        }
                    }
                }
            }
            if (other->field_20C_19 == 3 && ((FieldMonster*)other)->field_344 != NULL
                && ((FieldMonster*)other)->field_344->field_20C_0) {
                other = ((FieldMonster*)other)->field_344;
            } else {
                break;
            }
        }
    }
    sub_804FC90();
    if (found != NULL && !found->field_20C_10) {
        field_368->field_16_0 |= 1;
    }
}
#endif
void FieldPlayerShotBullet::sub_804DFE8() {
    u16 animationSet;
    int buffer;
    u8 value;
    int animation;
    int flag;

    if (!active) {
        sprite = sub_8020DD0(0, -1, 1, -1, -1, -1, -1);
        return;
    }
    animationSet = word_83A0C5A[type - 2];
    sub_8021574(0, 0x1004, 0, 0, 0, &buffer, 12);
    sprite = sub_8020DD0(0, animationSet, 1, -1, -1, -1, -1);
    value = byte_83A05EC[direction + 32];
    animation = value & 0x7F;
    flag = value >> 7;
    sub_801E150(sprite, animation, -1, 0, 0);
    sub_8021ED8(sprite);
    if (frame != 0) {
        int i = frame;

        while (i >= sprite->field_25) {
            i -= sprite->field_25;
        }
        sub_801E150(sprite, animation, i, 0, 0);
    }
    sprite->field_11_6 = flag;
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804E0D8__21FieldPlayerShotBulletiP11FieldObjecti.s\"");
#else
void FieldPlayerShotBullet::sub_804E0D8(int type, FieldObject* owner, int frame) {
    u8 value;
    int animation;
    int flag;
    u8* box;
    struct Sprite* newSprite;
    u16 animationSet;

    this->type = type;
    type -= 2;
    animationSet = word_83A0C5A[type];
    sub_80210A8(sprite, 0, animationSet, 1, -1, -1, -1, -1);
    newSprite = sprite;
    direction = owner->direction;
    value = byte_83A05EC[direction + 32];
    animation = value & 0x7F;
    flag = value >> 7;
    sub_801E150(newSprite, animation, -1, 0, 0);
    sub_8021ED8(sprite);
    if (frame != 0) {
        this->frame = frame;
        while (frame >= sprite->field_25) {
            frame -= sprite->field_25;
        }
        sub_801E150(sprite, animation, frame, 0, 0);
    }
    sprite->field_11_6 = flag;
    x = previousX = owner->x;
    y = previousY = owner->y;
    z = previousZ = owner->z;
    height = previousHeight = owner->height + word_83A0C70[type];
    box = byte_801349C[sprite->field_16];
    hitWidth = (((box[0] >> 3 << 1) & 0x3F) + 2) << 8;
    hitHeight = ((((box[0] << 3) | (box[1] >> 5)) & 0x3F) + 1) << 8;
    hitDepth = ((((box[1] << 1) | (box[2] >> 7)) & 0x3F) + 1) << 8;
    boxWidth = (((box[2] >> 2 << 1) & 0x3F) + 2) << 8;
    boxHeight = ((((box[2] << 4) | (box[3] >> 4)) & 0x3F) + 1) << 8;
    boxDepth = ((((box[3] << 2) | (box[4] >> 6)) & 0x3F) + 1) << 8;
    speed = word_83A0C60[type];
    velocityX = speed * word_839F564[direction][0] / 256;
    velocityY = speed * word_839F564[direction][1] / 256;
    duration = word_83A0C66[type] << 8;
    x = owner->x + word_83A0C76[type][direction][0];
    y = owner->y + word_83A0C76[type][direction][1];
    layer = direction >= 3 && direction <= 5 ? 13 : 14;
    map = owner->field_290;
    pushes = byte_83A0C6C[type];
    active = 1;
    timer = 0;
    sides = 0;
    wallSides = 0;
    this->owner = owner;
}
#endif

void FieldPlayerShotBullet::sub_804E33C(FieldObject** objects, int count) {
    if (!active) {
        return;
    }
    if (sprite->field_20[1] > 4) {
        if (sprite->field_12_5) {
            active = 0;
        }
        return;
    }
    if (type == FIELD_PLAYER_SHOT_BULLET_SPIT) {
        sub_801E150(sprite, sprite->field_20[1] + 5, 0, 0, 0);
        sub_804E6E0(objects, count);
        return;
    }
    x += velocityX;
    y += velocityY;
    if ((timer += speed) > duration) {
        sub_804FAF8();
        return;
    }
    sub_804E6E0(objects, count);
    if (sub_804EA68() || sides) {
        sub_801E150(sprite, sprite->field_20[1] + 5, 0, 0, 0);
        if (frame != 0) {
            int i = frame;

            while (i >= sprite->field_25) {
                i -= sprite->field_25;
            }
            sub_801E150(sprite, sprite->field_20[1], i, 0, 0);
        }
        sprite->field_12_1 = 2;
    }
    sub_804F904();
}

// Picks the sprite priority from the collision cells around this object.
void FieldPlayerShotBullet::sub_804E450() {
    int cellX = x / 4096;
    int cellY = y / 4096;
    struct Coldef* coldef = get_coldef_ptr_by_xz(map, cellX, cellY);
    u32 priority;

    if (onTop) {
        priority = coldef->secondaryPriority;
    } else {
        int i;
        int end;
        int last;

        priority = coldef->primaryPriority;
        i = (x - 0x800) / 4096;
        end = (x + 0x700) / 4096;
        for (; i <= end; i++) {
            coldef = get_coldef_ptr_by_xz(map, i, cellY);
            if (coldef->secondaryHeight == 0 && coldef->primaryPriority > priority) {
                priority = coldef->primaryPriority;
                cellX = i;
                if (coldef->priorityOverride) {
                    break;
                }
            }
        }
        cellY = y / 4096;
        last = (y - height) / 4096 - 1;
        while (TRUE) {
            cellY--;
            coldef = get_coldef_ptr_by_xz(map, cellX, cellY);
            if ((int)priority > (int)coldef->primaryPriority) {
                priority = coldef->primaryPriority;
            }
            if (cellY <= last) {
                break;
            }
        }
    }
    sprite->field_1F_0 = priority;
}

// Like FieldPlayerCharacter::sub_8049FF4: returns the box of data that contains this object, if any.
u8* FieldPlayerShotBullet::sub_804E5C4(u8* data) {
    if (active && type == FIELD_PLAYER_SHOT_BULLET_SPIT) {
        int px = x / 256;
        int py = y / 256;
        int pz = (z + height) / 256;
        u16 halfWidth = boxWidth >> 8;
        int depth = boxDepth >> 8;
        int count = data[4];
        u8* box = data - (data[6] << 8 | data[5]);
        int i;

        for (i = 0; i < count; i++, box += 11) {
            int left = box[0] * 16;
            int right = left + box[2] * 16 - 1;
            int top = box[1] * 16;
            int bottom = top + box[3] * 16 - 1;
            int low = (box[4] & 0x7F) * 8;
            int boxHeight = (box[5] & 0x7F) == 0x7F ? 0xFF * 8 : (box[5] & 0x7F) * 8;
            int high = low + boxHeight;

            if ((box[6] & 3) == 0) {
                left -= halfWidth / 2;
                right += halfWidth / 2;
                top -= 1;
                bottom += depth - 1;
            } else {
                left += 4;
                right -= 4;
                top += 7;
            }
            if (px >= left && px <= right && py >= top && py <= bottom && pz >= low && pz <= high
                && (boxHeight != 0 || height == 0)) {
                return box;
            }
        }
    }
    return NULL;
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804E6E0__21FieldPlayerShotBulletPP11FieldObjecti.s\"");
#else
// Checks this object's box against the objects (and a FieldMonster's FMCH) and reports hits to the
// owner.
void FieldPlayerShotBullet::sub_804E6E0(FieldObject** objects, int count) {
    int left = x - (hitWidth >> 1);
    int top = y;
    int bottom = z + height;
    int i;

    for (i = 0; i < count; i++) {
        FieldObject* other = *objects++;
        int n;

        for (n = 0; n <= 1; n++) {
            u16 otherWidth;
            u16 otherDepth;
            u16 otherHeight;
            int depth;
            u16 boxHeight;
            int width;
            int otherX;
            int otherY;
            int edge;
            int overlap;
            int previousTop;
            int otherPreviousTop;
            int side;
            int otherSide;
            FieldPlayerCharacter* player;

            if (owner->field_54 == other->field_54 || !other->field_20C_0 || other->field_214_21) {
                goto next;
            }
            otherWidth = other->field_272;
            otherDepth = other->field_276;
            otherHeight = other->field_274;
            depth = hitDepth;
            boxHeight = hitHeight;
            edge = other->x - (otherWidth >> 1);
            width = hitWidth;
            otherX = other->x;
            if (edge < left) {
                overlap = edge + otherWidth - left;
            } else {
                overlap = left + width - edge;
            }
            if (overlap <= 0) {
                goto next;
            }
            otherY = other->y;
            if (otherY > top) {
                overlap = top - (otherY - otherDepth);
            } else {
                overlap = otherY - (top - depth);
            }
            if (overlap <= 0) {
                goto next;
            }
            edge = other->z + other->height;
            if (edge <= bottom) {
                overlap = edge + otherHeight - bottom;
            } else {
                overlap = bottom + boxHeight - edge;
            }
            if (overlap <= 0) {
                goto next;
            }

            previousTop = previousY - depth / 2;
            otherPreviousTop = other->previousY - (otherDepth >> 1);
            if (previousX == other->previousX && previousTop == otherPreviousTop) {
                if (direction <= 1) {
                    side = 1;
                    otherSide = 4;
                } else if (direction <= 2) {
                    side = 8;
                    otherSide = 2;
                } else if (direction <= 5) {
                    side = 4;
                    otherSide = 1;
                } else if (direction <= 6) {
                    side = 2;
                    otherSide = 8;
                } else {
                    side = 1;
                    otherSide = 4;
                }
            } else {
                int half = (depth + otherDepth) >> 1;

                if (previousTop < otherPreviousTop + half && previousTop > otherPreviousTop - half) {
                    if (previousX < otherX) {
                        side = 2;
                        otherSide = 8;
                        if (other->field_20C_5 && pushes) {
                            x = otherX - ((width + other->field_272) >> 1);
                        }
                    } else {
                        side = 8;
                        otherSide = 2;
                        if (other->field_20C_5 && pushes) {
                            x = otherX + ((width + other->field_272) >> 1);
                        }
                    }
                } else if (previousTop > otherY - depth / 2) {
                    side = 1;
                    otherSide = 4;
                    if (other->field_20C_5 && pushes) {
                        y = depth + otherY;
                    }
                } else {
                    side = 4;
                    otherSide = 1;
                    if (other->field_20C_5 && pushes) {
                        y = otherY - other->field_276;
                    }
                }
            }
            if (other->field_20C_5 && pushes) {
                sides |= side;
                other->field_24_3 |= otherSide;
            }
            player = (FieldPlayerCharacter*)owner;
            if (player->field_350_0 == 0 || !player->field_350_6) {
                player->field_350_6 = 1;
                ((FieldPlayerCharacter*)owner)->field_33C_0 = other->field_54;
                ((FieldPlayerCharacter*)owner)->field_33C_7 = n;
                ((FieldPlayerCharacter*)owner)->field_350_0 |= side;
                ((FieldPlayerCharacter*)owner)->field_342 = type;
            }
        next:
            if (other->field_20C_19 == 3 && ((FieldMonster*)other)->field_344 != NULL
                && ((FieldMonster*)other)->field_344->field_20C_0) {
                other = ((FieldMonster*)other)->field_344;
            } else {
                break;
            }
        }
    }
}
#endif

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804EA68__21FieldPlayerShotBullet.s\"");
#else
// Moves this shot out of the walls it ran into since the previous frame, one side at a time (the sides
// moving in the shot's direction, from byte_83A0CD6). Pass 2 looks one cell further and also checks the
// corners when no wall was hit. Slopes (shapes 12-15) slide it diagonally. Returns the sides hit.
u8 FieldPlayerShotBullet::sub_804EA68() {
    int previousLeft;
    int previousRight;
    int previousTop;
    int previousBottom;
    int left;
    int right;
    int top;
    int bottom;
    int low;
    int high;
    int dir;
    int pass;
    s8* sides;
    int newX;
    int newY;
    int flags;
    int floor;
    int ceiling;
    int objectTop;
    struct Coldef* coldef;

    if (pushes) {
        previousLeft = previousX - (boxWidth / 2);
        previousRight = previousLeft + boxWidth;
        previousTop = previousY - (boxDepth - 0x100);
        previousBottom = previousY + 0x100;
        left = x - (boxWidth / 2);
        right = left + boxWidth;
        top = y - (boxDepth - 0x100);
        bottom = top + boxDepth;
        low = z + height;
        high = low + boxHeight;
        dir = direction;
        for (pass = 0; pass < 2; pass++) {
            sides = byte_83A0CD6[dir];
            do {
                int side;

                newX = x;
                newY = y;
                flags = 0;
                side = *sides++;
                if (side > 3 && (pass == 0 || wallSides != 0)) {
                    break;
                }
                switch (side) {
                    case 0: { // Top edge
                        int cellX = previousLeft / 4096;
                        int cellY = previousTop / 4096 - pass;
                        int last = (previousRight - 0x100) / 4096;

                        for (; cellX <= last; cellX++) {
                            int cellLeft;
                            int cellRight;
                            int cellBottom;
                            int solid;

                            coldef = sub_804FA30(cellX, cellY, &floor, &ceiling, &objectTop);
                            if (pass != 0 && floor > previousZ && floor > low
                                && (cellY + 1) << 12 > top) {
                                newY = ((cellY + 1) << 12) - 0x100 + boxDepth;
                                flags |= 2;
                                wallSides |= 1;
                                goto apply;
                            }
                            if (pass == 0 && coldef->secondaryShape <= 7) {
                                continue;
                            }
                            if (ceiling < 0 || ceiling >= high || objectTop <= low
                                || ceiling >= previousZ + previousHeight + boxHeight
                                || objectTop <= previousZ) {
                                continue;
                            }
                            cellLeft = cellX << 12;
                            cellRight = (cellX + 1) << 12;
                            cellBottom = (cellY + 1) << 12;
                            if (coldef->secondaryShape == 14 && cellX == previousLeft / 4096) {
                                int cellTop;

                                if ((cellBottom - top) - (left - cellLeft) <= 0) {
                                    continue;
                                }
                                cellTop = cellBottom - 0x1000;
                                newX = (left - cellLeft)
                                       + (0x1000 - (top - cellTop) - (left - cellLeft)) / 2 + cellLeft
                                       + (boxWidth / 2);
                                newX &= ~0xFF;
                                newY = ((top - cellTop)
                                        + (0x1000 - (left - cellLeft) - (top - cellTop)) / 2 + cellTop
                                        - 0x100 + boxDepth)
                                       & ~0xFF;
                                flags = 3;
                                wallSides |= 1;
                            } else if (coldef->secondaryShape == 12 && cellX == last) {
                                int cellTop;

                                if ((cellBottom - top) - (cellRight - right) <= 0) {
                                    continue;
                                }
                                cellTop = cellBottom - 0x1000;
                                newX = (top - cellTop) + ((right - cellLeft) - (top - cellTop)) / 2
                                       + cellLeft - (boxWidth / 2);
                                newX &= ~0xFF;
                                newY = ((right - cellLeft) + ((top - cellTop) - (right - cellLeft)) / 2
                                        + cellTop - 0x100 + boxDepth)
                                       & ~0xFF;
                                flags = 3;
                                wallSides |= 1;
                            } else {
                                if (coldef->floorType == 6 || coldef->floorType == 7) {
                                    continue;
                                }
                                solid = pass;
                                switch (coldef->secondaryShape) {
                                    case 8:
                                        cellBottom -= 0x800;
                                        solid = TRUE;
                                        break;
                                    case 9:
                                        break;
                                    case 10:
                                        cellLeft += 0x800;
                                        solid = TRUE;
                                        break;
                                    case 11:
                                        cellRight -= 0x800;
                                        solid = TRUE;
                                        break;
                                }
                                if (!solid) {
                                    continue;
                                }
                                if (!((cellLeft < previousRight && cellRight > left)
                                      || (cellRight > previousLeft && cellLeft < right))) {
                                    continue;
                                }
                                if (cellBottom > previousTop || cellBottom <= top) {
                                    continue;
                                }
                                newY = cellBottom - 0x100 + boxDepth;
                                flags |= 2;
                                wallSides |= 1;
                            }
                        }
                        break;
                    }
                    case 1: { // Bottom edge
                        int cellX = previousLeft / 4096;
                        int cellY = (previousBottom - 0x100) / 4096 + pass;
                        int last = (previousRight - 0x100) / 4096;

                        for (; cellX <= last; cellX++) {
                            int cellLeft;
                            int cellRight;
                            int cellTop;
                            int solid;

                            coldef = sub_804FA30(cellX, cellY, &floor, &ceiling, &objectTop);
                            if (pass != 0 && floor > previousZ && floor > low && cellY << 12 < bottom) {
                                newY = (cellY << 12) - 0x100;
                                flags |= 2;
                                wallSides |= 4;
                                goto apply;
                            }
                            if (pass == 0 && coldef->secondaryShape <= 7) {
                                continue;
                            }
                            if (ceiling < 0 || ceiling >= high || objectTop <= low
                                || ceiling >= previousZ + previousHeight + boxHeight
                                || objectTop <= previousZ) {
                                continue;
                            }
                            cellLeft = cellX << 12;
                            cellRight = (cellX + 1) << 12;
                            cellTop = cellY << 12;
                            if (coldef->secondaryShape == 15 && cellX == previousLeft / 4096) {
                                if ((bottom - cellTop) - (left - cellLeft) <= 0) {
                                    continue;
                                }
                                newX = (bottom - cellTop) + ((left - cellLeft) - (bottom - cellTop)) / 2
                                       + cellLeft + (boxWidth / 2);
                                newX &= ~0xFF;
                                newY = ((left - cellLeft) + ((bottom - cellTop) - (left - cellLeft)) / 2
                                        + cellTop - 0x100)
                                       & ~0xFF;
                                flags = 3;
                                wallSides |= 4;
                            } else if (coldef->secondaryShape == 13 && cellX == last) {
                                if ((bottom - cellTop) - (cellRight - right) <= 0) {
                                    continue;
                                }
                                newX = (right - cellLeft)
                                       + (0x1000 - (bottom - cellTop) - (right - cellLeft)) / 2
                                       + cellLeft - (boxWidth / 2);
                                newX &= ~0xFF;
                                newY = ((bottom - cellTop)
                                        + (0x1000 - (right - cellLeft) - (bottom - cellTop)) / 2
                                        + cellTop - 0x100)
                                       & ~0xFF;
                                flags = 3;
                                wallSides |= 4;
                            } else {
                                if (coldef->floorType == 6 || coldef->floorType == 7) {
                                    continue;
                                }
                                solid = pass;
                                switch (coldef->secondaryShape) {
                                    case 8:
                                        break;
                                    case 9:
                                        cellTop += 0x800;
                                        solid = TRUE;
                                        break;
                                    case 10:
                                        cellLeft += 0x800;
                                        solid = TRUE;
                                        break;
                                    case 11:
                                        cellRight -= 0x800;
                                        solid = TRUE;
                                        break;
                                }
                                if (!solid) {
                                    continue;
                                }
                                if (!((cellLeft < previousRight && cellRight > left)
                                      || (cellRight > previousLeft && cellLeft < right))) {
                                    continue;
                                }
                                if (cellTop < previousBottom || cellTop >= bottom) {
                                    continue;
                                }
                                newY = cellTop - 0x100;
                                flags |= 2;
                                wallSides |= 4;
                            }
                        }
                        break;
                    }
                    case 2: { // Left edge
                        int cellX = previousLeft / 4096 - pass;
                        int cellY = previousTop / 4096;
                        int last = (previousBottom - 0x100) / 4096;

                        for (; cellY <= last; cellY++) {
                            int cellLeft;
                            int cellRight;
                            int cellTop;
                            int cellBottom;
                            int solid;

                            coldef = sub_804FA30(cellX, cellY, &floor, &ceiling, &objectTop);
                            if (pass != 0 && floor > previousZ && floor > low
                                && (cellX + 1) << 12 > left) {
                                newX = ((cellX + 1) << 12) + (boxWidth / 2);
                                flags |= 1;
                                wallSides |= 8;
                                goto apply;
                            }
                            if (pass == 0 && coldef->secondaryShape <= 7) {
                                continue;
                            }
                            if (ceiling < 0 || ceiling >= high || objectTop <= low
                                || ceiling >= previousZ + previousHeight + boxHeight
                                || objectTop <= previousZ) {
                                continue;
                            }
                            cellTop = cellY << 12;
                            cellBottom = (cellY + 1) << 12;
                            cellRight = (cellX + 1) << 12;
                            if (coldef->secondaryShape == 14 && cellY == previousTop / 4096) {
                                if ((cellRight - left) - (top - cellTop) <= 0) {
                                    continue;
                                }
                                cellLeft = cellRight - 0x1000;
                                newX = (left - cellLeft)
                                       + (0x1000 - (top - cellTop) - (left - cellLeft)) / 2
                                       + (boxWidth / 2) + cellLeft;
                                newX &= ~0xFF;
                                newY = (top - cellTop)
                                       + (0x1000 - (left - cellLeft) - (top - cellTop)) / 2 - 0x100
                                       + boxDepth + cellTop;
                                newY &= ~0xFF;
                                flags = 3;
                                wallSides |= 8;
                            } else if (coldef->secondaryShape == 15 && cellY == last) {
                                if ((cellRight - left) - (cellBottom - bottom) <= 0) {
                                    continue;
                                }
                                cellLeft = cellRight - 0x1000;
                                newX = (bottom - cellTop) + ((left - cellLeft) - (bottom - cellTop)) / 2
                                       + cellLeft + (boxWidth / 2);
                                newX &= ~0xFF;
                                newY = ((left - cellLeft) + ((bottom - cellTop) - (left - cellLeft)) / 2
                                        + cellTop - 0x100)
                                       & ~0xFF;
                                flags = 3;
                                wallSides |= 8;
                            } else {
                                if (coldef->floorType == 6 || coldef->floorType == 7) {
                                    continue;
                                }
                                solid = pass;
                                switch (coldef->secondaryShape) {
                                    case 8:
                                        cellBottom -= 0x800;
                                        solid = TRUE;
                                        break;
                                    case 9:
                                        cellTop += 0x800;
                                        solid = TRUE;
                                        break;
                                    case 10:
                                        break;
                                    case 11:
                                        cellRight -= 0x800;
                                        solid = TRUE;
                                        break;
                                }
                                if (!solid) {
                                    continue;
                                }
                                if (!((cellTop < previousBottom && cellBottom > top)
                                      || (cellBottom > previousTop && cellTop < bottom))) {
                                    continue;
                                }
                                if (cellRight > previousLeft || cellRight <= left) {
                                    continue;
                                }
                                newX = cellRight + (boxWidth / 2);
                                flags |= 1;
                                wallSides |= 8;
                            }
                        }
                        break;
                    }
                    case 3: { // Right edge
                        int cellX = (previousRight - 0x100) / 4096 + pass;
                        int cellY = previousTop / 4096;
                        int last = (previousBottom - 0x100) / 4096;

                        for (; cellY <= last; cellY++) {
                            int cellLeft;
                            int cellTop;
                            int cellBottom;
                            int solid;

                            coldef = sub_804FA30(cellX, cellY, &floor, &ceiling, &objectTop);
                            if (pass != 0 && floor > previousZ && floor > low && cellX << 12 < right) {
                                newX = (cellX << 12) - (boxWidth / 2);
                                flags |= 1;
                                wallSides |= 2;
                                goto apply;
                            }
                            if (pass == 0 && coldef->secondaryShape <= 7) {
                                continue;
                            }
                            if (ceiling < 0 || ceiling >= high || objectTop <= low
                                || ceiling >= previousZ + previousHeight + boxHeight
                                || objectTop <= previousZ) {
                                continue;
                            }
                            cellTop = cellY << 12;
                            cellBottom = (cellY + 1) << 12;
                            cellLeft = cellX << 12;
                            if (coldef->secondaryShape == 12 && cellY == previousTop / 4096) {
                                if ((right - cellLeft) - (top - cellTop) <= 0) {
                                    continue;
                                }
                                newX = (top - cellTop) + ((right - cellLeft) - (top - cellTop)) / 2
                                       + cellLeft - (boxWidth / 2);
                                newX &= ~0xFF;
                                newY = ((right - cellLeft) + ((top - cellTop) - (right - cellLeft)) / 2
                                        + cellTop - 0x100 + boxDepth)
                                       & ~0xFF;
                                flags = 3;
                                wallSides |= 2;
                            } else if (coldef->secondaryShape == 13 && cellY == last) {
                                if ((right - cellLeft) - (cellBottom - bottom) <= 0) {
                                    continue;
                                }
                                newX = (right - cellLeft)
                                       + (0x1000 - (bottom - cellTop) - (right - cellLeft)) / 2
                                       + cellLeft - (boxWidth / 2);
                                newX &= ~0xFF;
                                newY = ((bottom - cellTop)
                                        + (0x1000 - (right - cellLeft) - (bottom - cellTop)) / 2
                                        + cellTop - 0x100)
                                       & ~0xFF;
                                flags = 3;
                                wallSides |= 2;
                            } else {
                                if (coldef->floorType == 6 || coldef->floorType == 7) {
                                    continue;
                                }
                                solid = pass;
                                switch (coldef->secondaryShape) {
                                    case 8:
                                        cellBottom -= 0x800;
                                        solid = TRUE;
                                        break;
                                    case 9:
                                        cellTop += 0x800;
                                        solid = TRUE;
                                        break;
                                    case 10:
                                        cellLeft += 0x800;
                                        solid = TRUE;
                                        break;
                                }
                                if (!solid) {
                                    continue;
                                }
                                if (!((cellTop < previousBottom && cellBottom > top)
                                      || (cellBottom > previousTop && cellTop < bottom))) {
                                    continue;
                                }
                                if (cellLeft < previousRight || cellLeft >= right) {
                                    continue;
                                }
                                newX = cellLeft - (boxWidth / 2);
                                flags |= 1;
                                wallSides |= 2;
                            }
                        }
                        break;
                    }
                    case 4: { // Top left corner
                        int cellX = previousLeft / 4096 - 1;
                        int cellY = previousTop / 4096 - 1;

                        if ((cellX + 1) << 12 > left && (cellY + 1) << 12 > top) {
                            sub_804FA30(cellX, cellY, &floor, &ceiling, &objectTop);
                            if (floor > previousZ && floor > low) {
                                newY = ((cellY + 1) << 12) - 0x100 + boxDepth;
                                flags |= 2;
                                wallSides |= 1;
                            } else if (ceiling >= 0 && ceiling < previousZ + previousHeight + boxHeight
                                       && objectTop > previousZ && ceiling < high && objectTop > low
                                       && (cellY + 1) << 12 > top) {
                                newY = ((cellY + 1) << 12) - 0x100 + boxDepth;
                                flags |= 2;
                                wallSides |= 1;
                            }
                        }
                        break;
                    }
                    case 5: { // Top right corner
                        int cellX = (previousRight - 0x100) / 4096 + 1;
                        int cellY = previousTop / 4096 - 1;

                        if (cellX << 12 < right && (cellY + 1) << 12 > top) {
                            sub_804FA30(cellX, cellY, &floor, &ceiling, &objectTop);
                            if (floor > previousZ && floor > low) {
                                newY = ((cellY + 1) << 12) - 0x100 + boxDepth;
                                flags |= 2;
                                wallSides |= 1;
                            } else if (ceiling >= 0 && ceiling < previousZ + previousHeight + boxHeight
                                       && objectTop > previousZ && ceiling < high && objectTop > low
                                       && (cellY + 1) << 12 > top) {
                                newY = ((cellY + 1) << 12) - 0x100 + boxDepth;
                                flags |= 2;
                                wallSides |= 1;
                            }
                        }
                        break;
                    }
                    case 6: { // Bottom left corner
                        int cellX = previousLeft / 4096 - 1;
                        int cellY = (previousBottom - 0x100) / 4096 + 1;

                        if ((cellX + 1) << 12 > left && cellY << 12 < bottom) {
                            sub_804FA30(cellX, cellY, &floor, &ceiling, &objectTop);
                            if (floor > previousZ && floor > low) {
                                newY = (cellY << 12) - 0x100;
                                flags |= 2;
                                wallSides |= 4;
                            } else if (ceiling >= 0 && ceiling < previousZ + previousHeight + boxHeight
                                       && objectTop > previousZ && ceiling < high && objectTop > low
                                       && cellY << 12 < bottom) {
                                newY = (cellY << 12) - 0x100;
                                flags |= 2;
                                wallSides |= 4;
                            }
                        }
                        break;
                    }
                    case 7: { // Bottom right corner
                        int cellX = (previousRight - 0x100) / 4096 + 1;
                        int cellY = (previousBottom - 0x100) / 4096 + 1;

                        if (cellX << 12 < right && cellY << 12 < bottom) {
                            sub_804FA30(cellX, cellY, &floor, &ceiling, &objectTop);
                            if (floor > previousZ && floor > low) {
                                newY = (cellY << 12) - 0x100;
                                flags |= 2;
                                wallSides |= 4;
                            } else if (ceiling >= 0 && ceiling < previousZ + previousHeight + boxHeight
                                       && objectTop > previousZ && ceiling < high && objectTop > low
                                       && cellY << 12 < bottom) {
                                newY = (cellY << 12) - 0x100;
                                flags |= 2;
                                wallSides |= 4;
                            }
                        }
                        break;
                    }
                }
            apply:
                if (flags & 1) {
                    x = newX;
                    left = newX - (boxWidth / 2);
                    right = left + boxWidth;
                }
                if (flags & 2) {
                    y = newY;
                    top = 0x100 + newY - boxDepth;
                    bottom = top + boxDepth;
                }
            } while (*sides != -1);
        }
    }
    return wallSides;
}
#endif

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804F904__21FieldPlayerShotBullet.s\"");
#else
// Puts this object on the floor below it.
void FieldPlayerShotBullet::sub_804F904() {
    int lowestCeiling;
    int highestTop;
    int bottom;
    int floor;
    int ceiling;
    int objectTop;
    struct Coldef* coldef;
    u32 shape;
    int baseFloor;
    bool above;

    if (x == previousX && y == previousY && z == previousZ && height == previousHeight) {
        return;
    }
    lowestCeiling = 0xFFFFFF;
    highestTop = 0;
    bottom = z + height;
    coldef = sub_803FBA4(map, x, y, &floor, &ceiling, &objectTop, TRUE, TRUE);
    if (objectTop >= 0) {
        shape = coldef->secondaryShape;
    }
    baseFloor = floor;
    if (highestTop < objectTop) {
        highestTop = objectTop;
    }
    sub_803FBA4(map, x - 0x100 + (boxWidth >> 1), y + 0x100 - boxDepth, &floor, &ceiling, &objectTop,
                FALSE, TRUE);
    if (ceiling >= 0 && lowestCeiling > ceiling) {
        lowestCeiling = ceiling;
    }
    above = FALSE;
    if (highestTop > 0) {
        if (baseFloor >= highestTop) {
            if (baseFloor > bottom) {
                above = TRUE;
            }
        } else if (highestTop <= bottom) {
            above = TRUE;
        }
    }
    if (above) {
        height = bottom - highestTop;
        if (height < 0) {
            height = 0;
        }
        z = highestTop;
        onTop = 1;
    } else {
        height = bottom - baseFloor;
        if (height < 0) {
            height = 0;
        }
        z = baseFloor;
        if (baseFloor + height < 0) {
            height = 0;
            z = 0;
        }
        onTop = 0;
    }
}
#endif

struct Coldef* FieldPlayerShotBullet::sub_804FA30(int cellX, int cellY, int* floor, int* ceiling,
                                                  int* top) {
    struct Coldef* coldef = get_coldef_ptr_by_xz(map, cellX, cellY);

    *floor = (coldef->primaryHeight << 11) << coldef->heightScale;
    if (coldef->secondaryHeight != 0) {
        *ceiling = *floor + ((coldef->gap << 11) << coldef->heightScale);
        *top = *ceiling + ((coldef->secondaryHeight << 11) << coldef->heightScale);
    } else {
        *ceiling = *top = -1;
    }
    return coldef;
}

void FieldPlayerShotBullet::sub_804FA94(s16 cameraX, s16 cameraY) {
    sprite->xPosition = x / 256 - cameraX;
    sprite->yPosition = (y - z - height) / 256 - cameraY;
    sprite->field_E = layer << 12 | (0x800 - y / 256);
}

void FieldPlayerShotBullet::sub_804FAF8() {
    sub_8020D40(sprite);
    active = 0;
}

void FieldPlayerShotBullet::sub_804FB14() {
    previousX = x;
    previousY = y;
    previousZ = z;
    previousHeight = height;
}

FieldPlayerShotBullet::FieldPlayerShotBullet(int index) {
    this->index = index;
}

int FieldPlayerCharacter::sub_804FB3C() {
    if (coldef->primaryShape == 3 || coldef->secondaryShape == 3) {
        return coldef->tileFlags;
    }
    return -1;
}

void FieldPlayerCharacter::sub_804FB64(FieldObject** objects, u8 arg1, u8 arg2) {
    FieldObject* below;

    sub_804B360(arg1, arg2);
    below = NULL;
    if (field_238 != -1) {
        below = objects[field_238];
        if (z >= below->z + below->height + below->field_274) {
            field_29 = -1;
            field_1 = 0xFF;
            field_238 = -1;
            below = NULL;
        }
    }
    field_1C = below != NULL ? z + (below->height + below->field_274) : z;
}

int FieldPlayerCharacter::method13() {
    u8 result = 0;

    if (field_20C_0 && field_20C_11 && !field_35A_1) {
        field_348 = x;
        field_34C = y;
        result = FieldObject::method13();
    }
    return result;
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FC30__20FieldPlayerCharacter.s\"");
#else
void FieldPlayerCharacter::sub_804FC30() {
    if (airFrames == -1 && field_2B5_0 == 0) {
        field_353_4 = byte_83A0A38[angle >> 5][field_26_2];
    }
}
#endif

