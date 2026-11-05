#pragma implementation "field_monster.h"
#include "global.h"
#include "common.h"
#include "heap.h"
#include "field_monster.h"

void sub_804FE68(FieldObject* object) {
    if (object->field_20C_0) {
        if (object->field_2B5_0 == 0) {
            object->x += object->velocityX;
            object->y += object->velocityY;
        }
        if (object->field_2B5_3 == 0) {
            object->updateAirborne();
        }
    }
}

FieldMonster::FieldMonster(int room, int index) : FieldObject(room, index) {
    u8 arg;

    field_210_0 = 0;
    if (sub_80FB6D4(room, &arg, this)) {
        field_344 = new (1, "FMCH", 1) FieldObjectSubclass4(-1, index, arg, this);
    }
    field_33C_0 = 1;
    field_33C_1 = 0;
    if (sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, field_22C_10 + 0x960) == 1) {
        field_20C_0 = 0;
        field_20C_25 = 0;
        if (field_344 != NULL) {
            field_344->field_20C_0 = 0;
            field_344->field_20C_25 = 0;
        }
    }
}

void FieldMonster::sub_804FFCC() {
    field_33E_0 = 1;
    field_33E_2 = field_20C_13;
    field_20C_13 = 0;
    field_33C_0 = 0;
    field_33F = angle;
    if (field_33C_3 == 0) {
        field_33C_3 = 1;
        field_33C_4 = field_214_0;
    }
    field_214_0 = 5;
    jumpToHeight(0x40, 0x20);
}

void FieldMonster::sub_8050078() {
    if (!field_20C_0 || !field_20C_25) {
        return;
    }
    switch (field_33E_0) {
        case 1:
            if (height <= 0) {
                angle = 0x80;
                height = 0;
                field_340 = 3;
                field_33E_0 = 2;
            } else {
                angle += 0x10;
            }
            break;
        case 2:
            if (--field_340 == 0) {
                field_340 = 60;
                field_33E_0 = 3;
            }
            break;
        case 3:
            if (--field_340 == 0) {
                field_20C_13 = field_33E_2;
                angle = field_33F;
                field_23A = 0;
                field_33C_0 = 1;
                if (field_33C_7) {
                    field_33D_0 = field_33C_4;
                } else {
                    field_214_0 = field_33C_4;
                }
                field_33C_3 = 0;
                field_33E_0 = 0;
            } else {
                switch (field_340 & 3) {
                    case 0:
                    case 2:
                        field_23A = 0;
                        break;
                    case 1:
                        field_23A = -1;
                        break;
                    case 3:
                        field_23A = 1;
                        break;
                }
            }
            break;
    }
}

void FieldMonster::sub_80501EC() {
    field_20C_0 = 0;
    field_33C_1 = 1;
    sprite->field_12_4 = 1;
    method16(2);
    if (field_344 != NULL && field_344->field_20C_25) {
        field_344->field_20C_0 = 0;
        field_344->sprite->field_12_4 = 1;
        field_344->method16(2);
    }
    sub_80E9958((u8*)dword_3000FC0 + 0x38C, 0, field_22C_10 + 0x960, 1);
}

void FieldMonster::sub_80502C8() {
    field_20C_0 = 0;
    field_33C_1 = 2;
    if (field_33E_0 != 0) {
        field_33E_0 = 0;
        height = 0;
        field_20C_13 = field_33E_2;
        angle = field_33F;
        field_23A = 0;
        field_33D_0 = field_33C_4;
        field_33C_3 = 0;
    }
    method16(1);
    if (field_344 != NULL && field_344->field_20C_25) {
        field_344->field_20C_0 = 0;
        field_344->method16(1);
    }
}

void FieldMonster::sub_80503CC() {
    if (field_33C_1 != 0 && field_212_7 == 0) {
        if (field_33C_1 == 2) {
            field_20C_0 = 1;
            if (field_344 != NULL && field_344->field_20C_25) {
                field_344->field_20C_0 = 1;
                if (field_344->field_33C_1) {
                    field_344->field_214_0 = field_344->field_33C_2;
                    field_344->field_33C_1 = 0;
                }
            }
            if (field_33C_7) {
                field_214_0 = field_33D_0;
                field_33C_7 = 0;
            }
            field_33C_0 = 1;
        }
        field_33C_1 = 0;
    }
}

FieldObjectSubclass4::FieldObjectSubclass4(int room, int index, u8 arg3, FieldObject* owner)
    : FieldObject(room, index) {
    sub_80FB448(arg3, owner, this);
    field_20C_0 = 0;
    field_20C_25 = 0;
    this->owner = owner;
}
