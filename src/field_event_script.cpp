#include "global.h"
#include "common.h"
#include "sprite.h"
#include "field.h"
#include "field_object.h"
#include "field_monster.h"
#include "field_event_script.h"

// Runs the object's script (if it is active) until sub_80EB838 or a command stops it. Inline
// (0x080F1E44 is its out-of-line copy at the end of this file).
inline bool FieldEventScript::sub_80F1E44(FieldObject* object, ScriptContext* script) {
    s32 command[13];

    if (!(script->field_A0 & 1)) {
        return FALSE;
    }
    while (sub_80EB838(object, script) == 0) {
        script_read_next_line(script, command, dword_3000FC0, (u8*)dword_3000FD0 + 0x4B0,
                              (u8*)dword_3000FC0 + 0x38C, 0);
        if (!executeNextCommand(object, script, command)) {
            break;
        }
    }
    return TRUE;
}

// Runs the script of every field object.
//! Possible fake match: the repeated `((FieldManager*)parentProcess)` casts (the second loop's header
//! needs them instead of the `fieldManager` local) and the function-scope `script` shared by both
//! loops. Revisit once the script engine and its globals are decompiled; the script calls also still
//! use guessed prototypes and raw offsets into dword_3000FD0/dword_3000FC0.
void FieldEventScript::sub_80EB248() {
    FieldManager* fieldManager = (FieldManager*)parentProcess;
    s16 count = fieldManager->field_10B;
    FieldObject** objects;
    ScriptContext* script;
    s16 i;

    for (i = 0, objects = fieldManager->objects; i < count; i++, objects++) {
        FieldObject* object = *objects;

        if (!object->field_214_21) {
            script = &object->script;

            if (!(script->field_A0 & 0x1B6)) {
                sub_80E9C4C((u8*)dword_3000FD0 + 0x4B0, script->field_18, (u8*)dword_3000FC0 + 0x38C, 0,
                            0x33, i);
                sub_80F1E44(*objects, script);
            }
        }
    }

    for (i = ((FieldManager*)parentProcess)->field_10B,
        objects = ((FieldManager*)parentProcess)->objects;
         i > 0; i--, objects++) {
        FieldObject* object = *objects;
        script = &object->script;

        object->sub_8046D18();
        if ((object->script.field_A0 & 0x42) && !(object->script.field_A0 & 0x84)) {
            if (!(*objects)->field_214_21) {
                (*objects)->sub_80461B4(((FieldManager*)parentProcess)->objects);
            }
        } else if ((script->field_A0 & 0x484) == 0x400) {
            FieldObject* current = *objects;

            if (current->field_20C_0
                && (!current->field_214_21
                    || (current->field_20C_19 == 3 && ((FieldMonster*)current)->field_344 != NULL
                        && ((FieldMonster*)current)->field_344->field_20C_0))
                && (current->field_20C_19 != 3
                    || (((FieldMonster*)current)->field_33C_0 == 1
                        && ((FieldMonster*)current)->field_33C_1 == 0))) {
                current->script.field_140((FieldManager*)parentProcess, current);
            }
        } else if (script->field_A0 & 0x100) {
            if (!(*objects)->field_214_21) {
                ((FieldManager*)parentProcess)->sub_8028C40();
            }
        }
    }
}

void FieldEventScript::sub_80EB490(FieldObject* object, ScriptContext* script) {
    if (object->sprite->animationEndAction != ANIMATION_END_STOP) {
        object->sprite->animationEndAction = ANIMATION_END_STOP;
    }

    if (object->sprite->animationComplete) {
        if (--script->field_9C == 0) {
            if (script->field_A0 & 0x200) {
                object->field_214_0 = 0;
                script->field_A0 &= ~0x220;
                return;
            }

            object->sub_80474D0();
            script->field_A0 ^= 0x20;
        }

        object->sprite->animationEndAction = ANIMATION_END_LOOP;
    }
}

// Starts the script arg in the object's script context (type 4) or in one of the four script slots of
// dword_3000FD0 (types 0-3), but only if that context isn't running (field_A0 bit 0). Any other
// type picks the first free one in the order object, slot 1, slot 2, slot 3, slot 0.
void FieldEventScript::sub_80EB524(FieldObject* object, u8 type, void* arg) {
    ScriptSlot* slot;

    switch (type) {
        case 4:
            if (object != NULL && !(object->script.field_A0 & 1)) {
                sub_80EA5C8(&field_1C, &object->script, arg, 0, 1, 0xFF);
            }
            break;
        case 2:
            slot = &dword_3000FD0->scripts[1];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, arg, 0, 1, 0xFF);
                FieldManager* fieldManager = (FieldManager*)parentProcess;
                if (fieldManager->objects[0]->field_20C_8) {
                    dword_3000FD0->field_55A_6 &= ~1;
                    fieldManager->objects[0]->field_20C_8 = 0;
                }
                if (fieldManager->objects[1]->field_20C_8) {
                    dword_3000FD0->field_55A_6 &= ~2;
                    fieldManager->objects[1]->field_20C_8 = 0;
                }
                if (!dword_3000FD0->field_55A_1) {
                    ((FieldManager*)parentProcess)->sub_8028D6C(0x3FF);
                }
                break;
            }
            // fallthrough
        case 3:
            slot = &dword_3000FD0->scripts[2];
            if (!(slot->field_A0 & 1) && dword_3000FD0->field_55A_0) {
                sub_80EA5C8(&field_1C, slot, arg, 0, 1, 0xFF);
            }
            break;
        case 0:
            slot = &dword_3000FD0->scripts[0];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, arg, 0, 1, 0xFF);
            }
            break;
        case 1:
            slot = &dword_3000FD0->scripts[3];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, arg, 0, 1, 0xFF);
            }
            break;
        default:
            if (object != NULL && !(object->script.field_A0 & 1)) {
                sub_80EA5C8(&field_1C, &object->script, arg, 0, 1, 0xFF);
                break;
            }
            slot = &dword_3000FD0->scripts[1];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, arg, 0, 1, 0xFF);
                FieldManager* fieldManager = (FieldManager*)parentProcess;
                if (fieldManager->objects[0]->field_20C_8) {
                    dword_3000FD0->field_55A_6 &= ~1;
                    fieldManager->objects[0]->field_20C_8 = 0;
                }
                if (fieldManager->objects[1]->field_20C_8) {
                    dword_3000FD0->field_55A_6 &= ~2;
                    fieldManager->objects[1]->field_20C_8 = 0;
                }
                if (!dword_3000FD0->field_55A_1) {
                    ((FieldManager*)parentProcess)->sub_8028D6C(0x3FF);
                }
                break;
            }
            slot = &dword_3000FD0->scripts[2];
            if (!(slot->field_A0 & 1) && dword_3000FD0->field_55A_0) {
                sub_80EA5C8(&field_1C, slot, arg, 0, 1, 0xFF);
                break;
            }
            slot = &dword_3000FD0->scripts[3];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, arg, 0, 1, 0xFF);
                break;
            }
            slot = &dword_3000FD0->scripts[0];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, arg, 0, 1, 0xFF);
            }
            break;
    }
}

// Checked before each command of a script (sub_80F1E44 stops when it returns TRUE). Returns FALSE
// while the script hasn't reached field_4, or after restoring the saved script in field_8. With
// flag 8 set it clears flag 4 of the script context selected by field_A4 (a slot of dword_3000FD0
// for 0-3, field object index + 4 otherwise).
bool FieldEventScript::sub_80EB838(FieldObject* object, ScriptContext* script) {
    if (script->field_0 != script->field_4) {
        return FALSE;
    }

    if (script->field_A0 & 8) {
        u8 index = script->field_A4;
        ScriptSlot* other;

        if (index <= 3) {
            other = &dword_3000FD0->scripts[index];
        } else {
            // Pointer arithmetic, not objects[index - 4]: g++ only folds the offset for a pointer.
            other = &(*(((FieldManager*)parentProcess)->objects + index - 4))->script;
        }
        other->field_A0 &= ~4;
        script->field_A0 &= ~8;
    }

    if (object == NULL) {
        struct struc_3000FD0* p = dword_3000FD0;
        u16 index = p->field_548 - 1;

        if (p->field_550 & (1 << index)) {
            p->field_550 &= ~(1 << index);
            FieldObject* fieldObject = *(((FieldManager*)parentProcess)->objects + p->field_544[index]);
            fieldObject->script.field_A0 &= ~0x80;
            fieldObject->previousAngle = p->field_546[index];
            fieldObject->angle = p->field_546[index];
            if (fieldObject->field_20C_4 || fieldObject->field_214_0 == 3
                || fieldObject->field_214_0 == 4) {
                fieldObject->direction = dword_3000FD0->field_546[index] >> 5;
            }
        }
    }

    if (script->field_A0 & ~0x403) {
        return TRUE;
    }

    if (script->field_8 != 0) {
        script->field_0 = script->field_8;
        script->field_4 = script->field_C;
        script->field_A0 = script->field_A2;
        script->field_A4 = script->field_A5;
        script->field_C = 0;
        script->field_8 = 0;
        script->field_A2 = 0;
        script->field_A5 = 0;
        return FALSE;
    }

    script->field_A0 &= ~1;
    if (object == NULL) {
        if (dword_3000FD0->field_548 == 1) {
            FieldManager* fieldManager = (FieldManager*)parentProcess;
            fieldManager->objects[0]->field_20C_8 |= ~dword_3000FD0->field_55A_6 & 1;
            fieldManager->objects[1]->field_20C_8 |= ~(dword_3000FD0->field_55A_6 >> 1) & 1;
        }
        if (!dword_3000FD0->field_55A_1) {
            if (dword_3000FD0->field_548 == 1) {
                ((FieldManager*)parentProcess)->sub_8028D6C(0);
            }
        } else if (!dword_3000FD0->field_55A_2
                   && dword_3000FD0->field_55A_3 == dword_3000FD0->field_548) {
            ((FieldManager*)parentProcess)->sub_8028D6C(dword_3000FD0->field_554);
            dword_3000FD0->field_55A_1 = dword_3000FD0->field_55A_2 = dword_3000FD0->field_554 != 0;
            dword_3000FD0->field_55A_3 = 0;
        }
    }
    return TRUE;
}

// Executes the command that script_read_next_line read into command (its arguments; the opcode is
// script->field_A7). Returns the result of the command handler; commands without one return TRUE.
s8 FieldEventScript::executeNextCommand(FieldObject* object, ScriptContext* script, s32* command) {
    switch (script->field_A7) {
        case 0:
            return script_cmd_end(&field_1C, script);
        case 1:
            return script_cmd_return(&field_1C, script);
        case 2:
            return script_cmd_call(&field_1C, script, command);
        case 3:
            return script_cmd_wait_frames(&field_1C, script, command);
        case 4:
            return sub_80EC970(this, object, script, command, dword_3000FD0->field_548);
        case 5:
            return sub_80F1CF8(this, script, command);
        case 6:
            return sub_80F1C7C(this, object, script, command, dword_3000FD0->field_548,
                               ((FieldManager*)parentProcess)->field_10B);
        case 7:
            return sub_80F1C34(this, script, command);
        case 8:
            return sub_80F1C0C(this, script, command);
        case 9:
            return sub_80ECB20(this, script, command);
        case 10:
            return sub_80ECCB0(this, script, command);
        case 11:
            return sub_80F1BA4(this, script, command);
        case 12:
            return sub_80F1B14(this, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 13:
            return sub_80F131C(this, object, script, command);
        case 14:
            return sub_80F12C8(this, object, script, command);
        case 15:
            return sub_80F11D0(this, object, script, command);
        case 16:
            return sub_80F18C4(this, object, script, command);
        case 17:
            return sub_80F1858(this, object, script, command);
        case 18:
            return sub_80F1648(this, script, command);
        case 19:
            return sub_80F15DC(this, script, command);
        case 20:
            return sub_80ED750(this, script, command);
        case 21:
            return sub_80EB11C(&field_1C, dword_3000FCC, script, command);
        case 23:
            return script_cmd_start_dialogue(this, script, command);
        case 22:
            return sub_80E9D50(&field_1C, dword_3000FCC, script, command);
        case 24:
            return script_cmd_wait_for_user_input(&field_1C, dword_3000FCC, script, command);
        case 25:
            return sub_80EB09C(&field_1C, dword_3000FCC, script, command);
        case 26:
            return sub_80EB05C(&field_1C, dword_3000FCC, script, command);
        case 31:
            return sub_80EB048(&field_1C, dword_3000FCC, command);
        case 27:
            sub_80E71D0(dword_3000FCC, command[0], command[1], command[2], command[3]);
            break;
        case 35:
            return sub_80EAFB4(&field_1C, script, command);
        case 36:
            return sub_80EAF4C(&field_1C, script, command);
        case 37:
            return sub_80EAEF8(&field_1C, script, command);
        case 38:
            return sub_80EAEE0(&field_1C, script, command);
        case 28:
            return sub_80EAEBC(&field_1C, dword_3000FCC, script, command);
        case 29:
            return sub_80EAE9C(&field_1C, script, command);
        case 30:
            return sub_80EAE70(&field_1C, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 32:
            return sub_80EAE30(&field_1C, dword_3000FC8, script, command);
        case 33:
            return script_cmd_show_reaction_bubble(this, script, command);
        case 34:
            return sub_80EADEC(&field_1C, dword_3000FC8, script, command);
        case 39:
            return sub_80EADC4(&field_1C, script, command);
        case 40:
            return sub_80EAD98(&field_1C, script, command);
        case 41:
            return sub_80EAD7C(&field_1C, script, command);
        case 42:
            return sub_80E9E10(&field_1C, script, command);
        case 43:
            return sub_80EACDC(&field_1C, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 44:
            return sub_80F0A30(this, script, command);
        case 45:
            return sub_80F09E8(this, script, command);
        case 46:
            return sub_80F09A8(this, script, command);
        case 47:
            return sub_80F0984(this, script);
        case 48:
            return sub_80F095C(this, script, command);
        case 49:
            return sub_80E9EE0(&field_1C, script, command);
        case 50:
            return sub_80EA064(&field_1C, script, command);
        case 51:
            return sub_80EAC78(&field_1C, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 52:
            return sub_80EA144(&field_1C, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 53:
            return sub_80EA358(&field_1C, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 54:
            return sub_80EAB98(&field_1C, script, command, (u8*)dword_3000FD0 + 0x4B0,
                               (u8*)dword_3000FC0 + 0x38C, 0);
        case 55:
            return sub_80EAB20(&field_1C, script, command);
        case 57:
            return sub_80EAA84(&field_1C, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 58:
            return sub_80EAA5C(&field_1C, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 59:
            return sub_80EAA04(&field_1C, script, command);
        case 60:
            return sub_80EA9B8(&field_1C, script, command);
        case 56:
            return sub_80EAB00(&field_1C, script, command);
        case 61:
            return sub_80EA9A8(&field_1C, script, command);
        case 63:
            return script_cmd_conditional_jump(&field_1C, script, command);
        case 65:
            return sub_80EA968(&field_1C, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 66:
            return sub_80EA940(&field_1C, script, command);
        case 67:
            return sub_80EA928(&field_1C, script, command);
        case 70:
            return sub_80EA91C(&field_1C, script, command);
        case 68:
            return sub_80EA904(&field_1C, script);
        case 69:
            return sub_80EA478(&field_1C, script, command);
        case 71:
            return sub_80EA8DC(&field_1C, script, command);
        case 72:
            return sub_80EA8A4(&field_1C, script, command);
        case 73:
            return sub_80EA88C(&field_1C, script, command);
        case 74:
            return sub_80EA854(&field_1C, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 75:
            return sub_80F1AEC(this, script, command);
        case 76:
            return sub_80F1AE4(this, script, command);
        case 80:
            return sub_80ECDA4(this, object, script, command);
        case 81:
            return sub_80ED17C(this, object, script, command);
        case 82:
            return sub_80ED304(this, script, command);
        case 83:
            return sub_80ED4EC(this, script, command);
        case 84:
            return sub_80F1AA4(this, object, script, command);
        case 88:
            return sub_80F1A7C(this, object, script, command);
        case 89:
            return sub_80F1A3C(this, object, script, command);
        case 90:
            object->sub_804173C(command[0], command[1], command[3], command[2]);
            break;
        case 91:
            return sub_80F1A1C(this, object, script, command);
        case 92:
            ((FieldManager*)parentProcess)
                ->sub_802973C(((FieldManager*)parentProcess)->objects[command[0]], command[1],
                              command[2] != 0, command[3], FALSE);
            break;
        case 85:
            object->sub_80477A8(command[0], command[1]);
            break;
        case 86:
            object->sub_8047784();
            break;
        case 87:
            ((FieldManager*)parentProcess)->sub_8028E14(0, command[0], command[1]);
            break;
        case 109:
            object->sub_80473DC();
            break;
        case 110:
            object->sub_8047364(command[0]);
            break;
        case 111:
            return sub_80F17F4(this, script, command);
        case 112:
            return sub_80ED6A8(this, script, command);
        case 105:
            return sub_80F1998(this, object, script, command);
        case 106:
            return sub_80F1934(this, object, script, command);
        case 107:
            return sub_80F1738(this, script, command);
        case 108:
            return sub_80F16C0(this, script, command);
        case 113:
            return sub_80F17DC(this, script, command);
        case 114:
            return script_cmd_80F17C4(this, script, command);
        case 115:
            return sub_80F155C(this, object, script, command);
        case 116:
            return sub_80F14D4(this, script, command);
        case 117:
            return sub_80ED7D4(this, object, script, command);
        case 118:
            return sub_80ED86C(this, script, command);
        case 119:
            return sub_80ED90C(this, script, command);
        case 120:
            return sub_80F14C4(this, object, script, command);
        case 121:
            return sub_80F1490(this, object, script, command);
        case 122:
            return sub_80F1478(this, script, command);
        case 123:
            return sub_80F143C(this, script, command);
        case 124:
            return sub_80ED9A4(this, object, script, command);
        case 125:
            return sub_80EDAB0(this, script, command);
        case 93:
            return sub_80F13A4(this, object, script, command);
        case 94:
            return sub_80EDBC4(this, object, script, command);
        case 95:
            return sub_80EDD48(this, object, script, command);
        case 96:
            return sub_80F1230(this, object, script, command);
        case 97:
            return sub_80F1170(this, object, script, command);
        case 98:
            return sub_80F112C(this, object, script, command);
        case 99:
            return sub_80F110C(this, object, script, command);
        case 100:
            return sub_80F10E0(this, script, command);
        case 101:
            return sub_80EDEB4(this, object, script, command);
        case 102:
            return sub_80F1088(this, object, script, command);
        case 103:
            return sub_80F1054(this, object, script, command);
        case 104:
            return sub_80F0FA0(this, object, script, command);
        case 126:
            return sub_80EDF90(this, object, script, command);
        case 127:
            return sub_80EE028(this, object, script, command);
        case 128:
            return sub_80F0F60(this, object, script, command);
        case 129:
            return sub_80EE140(this, object, script, command);
        case 130:
            return sub_80EE1A4(this, object, script, command);
        case 131:
            return sub_80EE26C(this, object, script, command);
        case 132:
            return sub_80F0EEC(this, object, script, command);
        case 133:
            return sub_80EE440(this, object, script, command);
        case 134:
            return sub_80EE4CC(this, object, script, command);
        case 135:
            return sub_80F0E80(this, script, command);
        case 136:
            return sub_80F0E18(this, script, command);
        case 137:
            return sub_80F0DA0(this, script, command);
        case 138:
            return sub_80EE594(this, script, command);
        case 139:
            return sub_80F0D38(this, script, command);
        case 140:
            return sub_80F0CC4(this, script, command);
        case 141:
            return sub_80EE624(this, object, script, command);
        case 142:
            return sub_80F0C08(this, object);
        case 143:
            return sub_80F0BF0(this, script, command);
        case 144:
            return sub_80F0BD8(this, script, command);
        case 145:
            return sub_80F0BC0(this, script, command);
        case 146:
            return sub_80F0BA4(this, script, command);
        case 147:
            return sub_80EE73C(this, script, command);
        case 148:
            return sub_80F0B80(this, script, command);
        case 149:
            return sub_80F0B4C(this, script, command);
        case 150:
            return sub_80F0B0C(this, script, command);
        case 151:
            return sub_80F0AE0(this, script, command);
        case 152:
            ((FieldManager*)parentProcess)
                ->sub_8027A04(command[0], command[1] == 0x3F ? dword_3000FD0->field_52C : command[1], 0,
                              command[2], command[3], command[4], command[5] & 1, (command[5] >> 1) & 1,
                              (command[5] >> 2) & 1, command[6]);
            return 0;
        case 153:
            ((FieldManager*)parentProcess)->sub_8029024(command[0]);
            return 0;
        case 156:
            ((FieldManager*)parentProcess)->requestViewingSign();
            return 0;
        case 154:
            return sub_80F0938(this, script, command);
        case 157:
            return sub_80F0914(this, script, command);
        case 158:
            return sub_80F08C0(this, script, command);
        case 155:
            ((FieldManager*)parentProcess)->sub_8029030(command[0], command[1]);
            return 0;
        case 159:
            return sub_80F08A0(this, script, command);
        case 160:
            return sub_80EEC18(this, script, command);
        case 161:
            return sub_80F087C(this, script, command);
        case 163:
            return sub_80F0814(this, script, command);
        case 164:
            return sub_80F0794(this, script, command);
        case 165:
            return sub_80F0780(this, script, command);
        case 78:
        case 166:
            return sub_80EECD0(this, script, command);
        case 167:
            return sub_80F0744(this, script, command);
        case 168:
            return sub_80F0724(this, script);
        case 169:
            return sub_80EEE08(this, script, command);
        case 170:
            ((FieldManager*)parentProcess)->sub_802C428(command[0], command[1]);
            break;
        case 162:
            ((FieldManager*)parentProcess)->field_20A_7 = command[0];
            break;
        case 171:
            sub_802FAE4((FieldManager*)parentProcess, command[0], 0);
            break;
        case 172:
            sub_803C538((FieldManager*)parentProcess, command[0]);
            break;
        case 173:
            return sub_80F0704(this, script);
        case 174:
            return sub_80EEECC(this, script, command);
        case 175:
            return sub_80F06EC(this, script, command);
        case 176:
            BUFFER_REG_BLDALPHA = (command[1] << 8) | command[0];
            // return instead of break: decides which of cases 162 and 176 keeps the shared tail.
            return TRUE;
        case 177: {
            int value = (command[1] << 8) | command[0];

            if (command[1] != 16 && command[0] != 16) {
                value |= 0x40;
            }
            BUFFER_REG_BLDCNT = value;
        } break;
        case 178:
            return sub_80EEF54(this, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 179:
            return sub_80EF0B0(this, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 180:
            return sub_80F0678(this, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 181:
            return sub_80F0618(this, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 182:
            return sub_80F05DC(this, script, command, (u8*)dword_3000FD0 + 0x4B0);
        case 183:
            return sub_80F056C(this, script, command);
        case 184:
            return sub_80EF220(this, script, command);
        case 185:
            return sub_80EF27C(this, script, command);
        case 186:
            return sub_80EF2EC(this, object, script, command);
        case 187:
            return sub_80F0540(this, object, script, command);
        case 188:
            return sub_80F04F8(this, object, script, command);
    }

    return TRUE;
}
