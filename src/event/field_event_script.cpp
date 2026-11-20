#include "global.h"
#include "common.h"
#include "sprite.h"
#include "field/field.h"
#include "field/field_object.h"
#include "field/field_monster.h"
#include "event/event.h"
#include "event/text080E9D50.h"
#include "event/field_event_script.h"

// Runs the object's script (if it is active) until sub_80EB838 or a command stops it. Inline
// (0x080F1E44 is its out-of-line copy at the end of this file).
inline bool FieldEventScript::sub_80F1E44(FieldObject* object, ScriptContext* script) {
    s32 arguments[13];

    if (!(script->field_A0 & 1)) {
        return FALSE;
    }
    while (sub_80EB838(object, script) == 0) {
        CommonEvent::readCommand(script, arguments, CommonEvent::instance,
                                 (u32*)((u8*)dword_3000FD0 + 0x4B0), CommonEvent::instance->field_38C,
                                 0);
        if (!executeNextCommand(object, script, arguments)) {
            break;
        }
    }
    return TRUE;
}

// Runs the script of every field object.
//! Possible fake match: the repeated `((FieldManager*)parentProcess)` casts (the second loop's header
//! needs them instead of the `fieldManager` local) and the function-scope `script` shared by both
//! loops. Revisit once the script engine and its globals are decompiled; the script calls also still
//! use guessed prototypes and raw offsets into dword_3000FD0/CommonEvent::instance.
void FieldEventScript::sub_80EB248() {
    FieldManager* fieldManager = (FieldManager*)parentProcess;
    s16 count = fieldManager->objectCount;
    FieldObject** objects;
    ScriptContext* script;
    s16 i;

    for (i = 0, objects = fieldManager->objects; i < count; i++, objects++) {
        FieldObject* object = *objects;

        if (!object->field_214_21) {
            script = &object->script;

            if (!(script->field_A0 & 0x1B6)) {
                CommonEvent::setVariable((u32*)((u8*)dword_3000FD0 + 0x4B0), script->registers,
                                         CommonEvent::instance->field_38C, 0, 0x33, i);
                sub_80F1E44(*objects, script);
            }
        }
    }

    for (i = ((FieldManager*)parentProcess)->objectCount,
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
                    || (current->type == FIELD_OBJECT_TYPE_FMON
                        && ((FieldMonster*)current)->field_344 != NULL
                        && ((FieldMonster*)current)->field_344->field_20C_0))
                && (current->type != FIELD_OBJECT_TYPE_FMON
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
void FieldEventScript::sub_80EB524(FieldObject* object, u8 type, int arg) {
    ScriptSlot* slot;

    switch (type) {
        case 4:
            if (object != NULL && !(object->script.field_A0 & 1)) {
                sub_80EA5C8(&field_1C, &object->script, (u8*)arg, NULL, 1, 0xFF);
            }
            break;
        case 2:
            slot = &dword_3000FD0->scripts[1];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, (u8*)arg, NULL, 1, 0xFF);
                FieldManager* fieldManager = (FieldManager*)parentProcess;
                if (fieldManager->objects[0]->collidesWithObjects) {
                    dword_3000FD0->field_55A_6 &= ~1;
                    fieldManager->objects[0]->collidesWithObjects = 0;
                }
                if (fieldManager->objects[1]->collidesWithObjects) {
                    dword_3000FD0->field_55A_6 &= ~2;
                    fieldManager->objects[1]->collidesWithObjects = 0;
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
                sub_80EA5C8(&field_1C, slot, (u8*)arg, NULL, 1, 0xFF);
            }
            break;
        case 0:
            slot = &dword_3000FD0->scripts[0];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, (u8*)arg, NULL, 1, 0xFF);
            }
            break;
        case 1:
            slot = &dword_3000FD0->scripts[3];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, (u8*)arg, NULL, 1, 0xFF);
            }
            break;
        default:
            if (object != NULL && !(object->script.field_A0 & 1)) {
                sub_80EA5C8(&field_1C, &object->script, (u8*)arg, NULL, 1, 0xFF);
                break;
            }
            slot = &dword_3000FD0->scripts[1];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, (u8*)arg, NULL, 1, 0xFF);
                FieldManager* fieldManager = (FieldManager*)parentProcess;
                if (fieldManager->objects[0]->collidesWithObjects) {
                    dword_3000FD0->field_55A_6 &= ~1;
                    fieldManager->objects[0]->collidesWithObjects = 0;
                }
                if (fieldManager->objects[1]->collidesWithObjects) {
                    dword_3000FD0->field_55A_6 &= ~2;
                    fieldManager->objects[1]->collidesWithObjects = 0;
                }
                if (!dword_3000FD0->field_55A_1) {
                    ((FieldManager*)parentProcess)->sub_8028D6C(0x3FF);
                }
                break;
            }
            slot = &dword_3000FD0->scripts[2];
            if (!(slot->field_A0 & 1) && dword_3000FD0->field_55A_0) {
                sub_80EA5C8(&field_1C, slot, (u8*)arg, NULL, 1, 0xFF);
                break;
            }
            slot = &dword_3000FD0->scripts[3];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, (u8*)arg, NULL, 1, 0xFF);
                break;
            }
            slot = &dword_3000FD0->scripts[0];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, (u8*)arg, NULL, 1, 0xFF);
            }
            break;
    }
}

// Checked before each command of a script (sub_80F1E44 stops when it returns TRUE). Returns FALSE
// while the script hasn't reached field_4, or after restoring the saved script in field_8. With
// flag 8 set it clears flag 4 of the script context selected by field_A4 (a slot of dword_3000FD0
// for 0-3, field object index + 4 otherwise).
bool FieldEventScript::sub_80EB838(FieldObject* object, ScriptContext* script) {
    if (script->position != script->field_4) {
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
        script->position = script->field_8;
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
            fieldManager->objects[0]->collidesWithObjects |= ~dword_3000FD0->field_55A_6 & 1;
            fieldManager->objects[1]->collidesWithObjects |= ~(dword_3000FD0->field_55A_6 >> 1) & 1;
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

// Executes the command that readCommand read (the opcode is script->currentOpcode, its arguments
// are in arguments). Returns the result of the command handler; commands without one return TRUE.
s8 FieldEventScript::executeNextCommand(FieldObject* object, ScriptContext* script, s32* arguments) {
    switch (script->currentOpcode) {
        case 0:
            return script_cmd_end(&field_1C, script);
        case 1:
            return script_cmd_return(&field_1C, script);
        case 2:
            return script_cmd_call(&field_1C, script, arguments);
        case 3:
            return script_cmd_wait_frames(&field_1C, script, arguments);
        case 4:
            return sub_80EC970(object, script, arguments, dword_3000FD0->field_548);
        case 5:
            return sub_80F1CF8(this, script, arguments);
        case 6:
            return sub_80F1C7C(this, object, script, arguments, dword_3000FD0->field_548,
                               ((FieldManager*)parentProcess)->objectCount);
        case 7:
            return sub_80F1C34(this, script, arguments);
        case 8:
            return sub_80F1C0C(this, script, arguments);
        case 9:
            return sub_80ECB20(script, arguments);
        case 10:
            return sub_80ECCB0(script, arguments);
        case 11:
            return sub_80F1BA4(this, script, arguments);
        case 12:
            return sub_80F1B14(this, script, arguments, (u8*)dword_3000FD0 + 0x4B0);
        case 13:
            return sub_80F131C(this, object, script, arguments);
        case 14:
            return sub_80F12C8(this, object, script, arguments);
        case 15:
            return sub_80F11D0(this, object, script, arguments);
        case 16:
            return sub_80F18C4(this, object, script, arguments);
        case 17:
            return sub_80F1858(this, object, script, arguments);
        case 18:
            return sub_80F1648(this, script, arguments);
        case 19:
            return sub_80F15DC(this, script, arguments);
        case 20:
            return sub_80ED750(this, script, arguments);
        case 21:
            return sub_80EB11C(&field_1C, dword_3000FCC, script, arguments);
        case 23:
            return script_cmd_start_dialogue(this, script, arguments);
        case 22:
            return sub_80E9D50(&field_1C, dword_3000FCC, script, arguments);
        case 24:
            return script_cmd_wait_for_user_input(&field_1C, dword_3000FCC, script, arguments);
        case 25:
            return sub_80EB09C(&field_1C, dword_3000FCC, script, arguments);
        case 26:
            return sub_80EB05C(&field_1C, dword_3000FCC, script, arguments);
        case 31:
            return sub_80EB048(&field_1C, dword_3000FCC, arguments);
        case 27:
            sub_80E71D0(dword_3000FCC, arguments[0], arguments[1], arguments[2], arguments[3]);
            break;
        case 35:
            return sub_80EAFB4(&field_1C, script, arguments);
        case 36:
            return sub_80EAF4C(&field_1C, script, arguments);
        case 37:
            return sub_80EAEF8(&field_1C, script, arguments);
        case 38:
            return sub_80EAEE0(&field_1C, script, arguments);
        case 28:
            return sub_80EAEBC(&field_1C, dword_3000FCC, script, arguments);
        case 29:
            return sub_80EAE9C(&field_1C, script, arguments);
        case 30:
            return sub_80EAE70(&field_1C, script, arguments, (u32*)((u8*)dword_3000FD0 + 0x4B0));
        case 32:
            return sub_80EAE30(&field_1C, dword_3000FC8, script, arguments);
        case 33:
            return script_cmd_show_reaction_bubble(this, script, arguments);
        case 34:
            return sub_80EADEC(&field_1C, dword_3000FC8, script, arguments);
        case 39:
            return sub_80EADC4(&field_1C, script, arguments);
        case 40:
            return sub_80EAD98(&field_1C, script, arguments);
        case 41:
            return sub_80EAD7C(&field_1C, script, arguments);
        case 42:
            return sub_80E9E10(&field_1C, script, arguments);
        case 43:
            return sub_80EACDC(&field_1C, script, arguments, (u32*)((u8*)dword_3000FD0 + 0x4B0));
        case 44:
            return sub_80F0A30(this, script, arguments);
        case 45:
            return sub_80F09E8(this, script, arguments);
        case 46:
            return sub_80F09A8(this, script, arguments);
        case 47:
            return sub_80F0984(this, script);
        case 48:
            return sub_80F095C(this, script, arguments);
        case 49:
            return sub_80E9EE0(&field_1C, script, arguments);
        case 50:
            return sub_80EA064(&field_1C, script, arguments);
        case 51:
            return sub_80EAC78(&field_1C, script, arguments, (u32*)((u8*)dword_3000FD0 + 0x4B0));
        case 52:
            return sub_80EA144(&field_1C, script, arguments, (u32*)((u8*)dword_3000FD0 + 0x4B0));
        case 53:
            return sub_80EA358(&field_1C, script, arguments, (u32*)((u8*)dword_3000FD0 + 0x4B0));
        case 54:
            return sub_80EAB98(&field_1C, script, arguments, (u32*)((u8*)dword_3000FD0 + 0x4B0),
                               CommonEvent::instance->field_38C, NULL);
        case 55:
            return sub_80EAB20(&field_1C, script, arguments);
        case 57:
            return sub_80EAA84(&field_1C, script, arguments, (u32*)((u8*)dword_3000FD0 + 0x4B0));
        case 58:
            return sub_80EAA5C(&field_1C, script, arguments, (u32*)((u8*)dword_3000FD0 + 0x4B0));
        case 59:
            return sub_80EAA04(&field_1C, script, arguments);
        case 60:
            return sub_80EA9B8(&field_1C, script, arguments);
        case 56:
            return sub_80EAB00(&field_1C, script, arguments);
        case 61:
            return sub_80EA9A8(&field_1C, script, arguments);
        case 63:
            return script_cmd_conditional_jump(&field_1C, script, arguments);
        case 65:
            return sub_80EA968(&field_1C, script, arguments, (u32*)((u8*)dword_3000FD0 + 0x4B0));
        case 66:
            return sub_80EA940(&field_1C, script, arguments);
        case 67:
            return sub_80EA928(&field_1C, script, arguments);
        case 70:
            return sub_80EA91C(&field_1C, script, arguments);
        case 68:
            return sub_80EA904(&field_1C, script);
        case 69:
            return sub_80EA478(&field_1C, script, arguments);
        case 71:
            return sub_80EA8DC(&field_1C, script, arguments);
        case 72:
            return sub_80EA8A4(&field_1C, script, arguments);
        case 73:
            return sub_80EA88C(&field_1C, script, arguments);
        case 74:
            return sub_80EA854(&field_1C, script, arguments, (u32*)((u8*)dword_3000FD0 + 0x4B0));
        case 75:
            return sub_80F1AEC(this, script, arguments);
        case 76:
            return sub_80F1AE4(this, script, arguments);
        case 80:
            return sub_80ECDA4(object, script, arguments);
        case 81:
            return sub_80ED17C(object, script, arguments);
        case 82:
            return sub_80ED304(script, arguments);
        case 83:
            return sub_80ED4EC(script, arguments);
        case 84:
            return sub_80F1AA4(this, object, script, arguments);
        case 88:
            return sub_80F1A7C(this, object, script, arguments);
        case 89:
            return sub_80F1A3C(this, object, script, arguments);
        case 90:
            object->sub_804173C(arguments[0], arguments[1], arguments[3], arguments[2]);
            break;
        case 91:
            return sub_80F1A1C(this, object, script, arguments);
        case 92:
            ((FieldManager*)parentProcess)
                ->sub_802973C(((FieldManager*)parentProcess)->objects[arguments[0]], arguments[1],
                              arguments[2] != 0, arguments[3], FALSE);
            break;
        case 85:
            object->sub_80477A8(arguments[0], arguments[1]);
            break;
        case 86:
            object->sub_8047784();
            break;
        case 87:
            ((FieldManager*)parentProcess)->sub_8028E14(0, arguments[0], arguments[1]);
            break;
        case 109:
            object->sub_80473DC();
            break;
        case 110:
            object->sub_8047364(arguments[0]);
            break;
        case 111:
            return sub_80F17F4(this, script, arguments);
        case 112:
            return sub_80ED6A8(script, arguments);
        case 105:
            return sub_80F1998(this, object, script, arguments);
        case 106:
            return sub_80F1934(this, object, script, arguments);
        case 107:
            return sub_80F1738(this, script, arguments);
        case 108:
            return sub_80F16C0(this, script, arguments);
        case 113:
            return sub_80F17DC(this, script, arguments);
        case 114:
            return script_cmd_80F17C4(this, script, arguments);
        case 115:
            return sub_80F155C(this, object, script, arguments);
        case 116:
            return sub_80F14D4(this, script, arguments);
        case 117:
            return sub_80ED7D4(this, object, script, arguments);
        case 118:
            return sub_80ED86C(this, script, arguments);
        case 119:
            return sub_80ED90C(this, script, arguments);
        case 120:
            return sub_80F14C4(this, object, script, arguments);
        case 121:
            return sub_80F1490(this, object, script, arguments);
        case 122:
            return sub_80F1478(this, script, arguments);
        case 123:
            return sub_80F143C(this, script, arguments);
        case 124:
            return sub_80ED9A4(this, object, script, arguments);
        case 125:
            return sub_80EDAB0(this, script, arguments);
        case 93:
            return sub_80F13A4(this, object, script, arguments);
        case 94:
            return sub_80EDBC4(this, object, script, arguments);
        case 95:
            return sub_80EDD48(this, object, script, arguments);
        case 96:
            return sub_80F1230(this, object, script, arguments);
        case 97:
            return sub_80F1170(this, object, script, arguments);
        case 98:
            return sub_80F112C(this, object, script, arguments);
        case 99:
            return sub_80F110C(this, object, script, arguments);
        case 100:
            return sub_80F10E0(this, script, arguments);
        case 101:
            return sub_80EDEB4(this, object, script, arguments);
        case 102:
            return sub_80F1088(this, object, script, arguments);
        case 103:
            return sub_80F1054(this, object, script, arguments);
        case 104:
            return sub_80F0FA0(this, object, script, arguments);
        case 126:
            return sub_80EDF90(this, object, script, arguments);
        case 127:
            return sub_80EE028(this, object, script, arguments);
        case 128:
            return sub_80F0F60(this, object, script, arguments);
        case 129:
            return sub_80EE140(this, object, script, arguments);
        case 130:
            return sub_80EE1A4(this, object, script, arguments);
        case 131:
            return sub_80EE26C(this, object, script, arguments);
        case 132:
            return sub_80F0EEC(this, object, script, arguments);
        case 133:
            return sub_80EE440(this, object, script, arguments);
        case 134:
            return sub_80EE4CC(this, object, script, arguments);
        case 135:
            return sub_80F0E80(this, script, arguments);
        case 136:
            return sub_80F0E18(this, script, arguments);
        case 137:
            return sub_80F0DA0(this, script, arguments);
        case 138:
            return sub_80EE594(this, script, arguments);
        case 139:
            return sub_80F0D38(this, script, arguments);
        case 140:
            return sub_80F0CC4(this, script, arguments);
        case 141:
            return sub_80EE624(this, object, script, arguments);
        case 142:
            return sub_80F0C08(this, object);
        case 143:
            return sub_80F0BF0(this, script, arguments);
        case 144:
            return sub_80F0BD8(this, script, arguments);
        case 145:
            return sub_80F0BC0(this, script, arguments);
        case 146:
            return sub_80F0BA4(this, script, arguments);
        case 147:
            return sub_80EE73C(this, script, arguments);
        case 148:
            return sub_80F0B80(this, script, arguments);
        case 149:
            return sub_80F0B4C(this, script, arguments);
        case 150:
            return sub_80F0B0C(this, script, arguments);
        case 151:
            return sub_80F0AE0(this, script, arguments);
        case 152:
            ((FieldManager*)parentProcess)
                ->sub_8027A04(arguments[0],
                              arguments[1] == 0x3F ? dword_3000FD0->field_52C : arguments[1], 0,
                              arguments[2], arguments[3], arguments[4], arguments[5] & 1,
                              (arguments[5] >> 1) & 1, (arguments[5] >> 2) & 1, arguments[6]);
            return 0;
        case 153:
            ((FieldManager*)parentProcess)->sub_8029024(arguments[0]);
            return 0;
        case 156:
            ((FieldManager*)parentProcess)->requestViewingSign();
            return 0;
        case 154:
            return sub_80F0938(this, script, arguments);
        case 157:
            return sub_80F0914(this, script, arguments);
        case 158:
            return sub_80F08C0(this, script, arguments);
        case 155:
            ((FieldManager*)parentProcess)->sub_8029030(arguments[0], arguments[1]);
            return 0;
        case 159:
            return sub_80F08A0(this, script, arguments);
        case 160:
            return sub_80EEC18(this, script, arguments);
        case 161:
            return sub_80F087C(this, script, arguments);
        case 163:
            return sub_80F0814(this, script, arguments);
        case 164:
            return sub_80F0794(this, script, arguments);
        case 165:
            return sub_80F0780(this, script, arguments);
        case 78:
        case 166:
            return sub_80EECD0(this, script, arguments);
        case 167:
            return sub_80F0744(this, script, arguments);
        case 168:
            return sub_80F0724(this, script);
        case 169:
            return sub_80EEE08(this, script, arguments);
        case 170:
            ((FieldManager*)parentProcess)->sub_802C428(arguments[0], arguments[1]);
            break;
        case 162:
            ((FieldManager*)parentProcess)->field_20A_7 = arguments[0];
            break;
        case 171:
            sub_802FAE4((FieldManager*)parentProcess, arguments[0], 0);
            break;
        case 172:
            sub_803C538((FieldManager*)parentProcess, arguments[0]);
            break;
        case 173:
            return sub_80F0704(this, script);
        case 174:
            return sub_80EEECC(this, script, arguments);
        case 175:
            return sub_80F06EC(this, script, arguments);
        case 176:
            BUFFER_REG_BLDALPHA = (arguments[1] << 8) | arguments[0];
            // return instead of break: decides which of cases 162 and 176 keeps the shared tail.
            return TRUE;
        case 177: {
            int value = (arguments[1] << 8) | arguments[0];

            if (arguments[1] != 16 && arguments[0] != 16) {
                value |= 0x40;
            }
            BUFFER_REG_BLDCNT = value;
        } break;
        case 178:
            return sub_80EEF54(this, script, arguments, (u8*)dword_3000FD0 + 0x4B0);
        case 179:
            return sub_80EF0B0(this, script, arguments, (u8*)dword_3000FD0 + 0x4B0);
        case 180:
            return sub_80F0678(this, script, arguments, (u8*)dword_3000FD0 + 0x4B0);
        case 181:
            return sub_80F0618(this, script, arguments, (u8*)dword_3000FD0 + 0x4B0);
        case 182:
            return sub_80F05DC(this, script, arguments, (u8*)dword_3000FD0 + 0x4B0);
        case 183:
            return sub_80F056C(this, script, arguments);
        case 184:
            return sub_80EF220(this, script, arguments);
        case 185:
            return sub_80EF27C(this, script, arguments);
        case 186:
            return sub_80EF2EC(this, object, script, arguments);
        case 187:
            return sub_80F0540(this, object, script, arguments);
        case 188:
            return sub_80F04F8(this, object, script, arguments);
    }

    return TRUE;
}

// Called by sub_80EC970 before it starts a new script on target: calls a FieldObject method for each
// of flags 2, 0x40 and 0x20 of the target's script.
inline void FieldEventScript::sub_80EC970_prepare(FieldObject* target, ScriptContext* targetScript) {
    if (targetScript->field_A0 & 2) {
        target->sub_8046980();
    }
    if (targetScript->field_A0 & 0x40) {
        target->sub_8046A10();
    }
    if (targetScript->field_A0 & 0x20) {
        target->sub_80473DC();
    }
}

// Script command 4: starts the script at arguments[2] on the object arguments[1]. arguments[0] bit 0
// makes this script wait for it (flag 4); modes 2-3 and 6-7 don't pass this script's position, and
// modes 4-7 use sub_80EA584 instead if the target's script is already running. Returns FALSE while
// waiting.
s8 FieldEventScript::sub_80EC970(FieldObject* object, ScriptContext* script, s32* arguments, u8 index) {
    FieldObject* target = *(((FieldManager*)parentProcess)->objects + arguments[1]);
    ScriptContext* targetScript = &target->script;
    int flags = 1;

    if (object != NULL) {
        index = object->objectIndex + 4;
    }
    if (arguments[0] & flags) {
        script->field_A0 |= 4;
        flags = 9;
    }

    switch (arguments[0]) {
        case 0:
        case 1:
            sub_80EC970_prepare(target, targetScript);
            sub_80EA5C8(&field_1C, targetScript, script->position, (u8*)arguments[2], flags, index);
            script->position = (u8*)arguments[2];
            break;
        case 2:
        case 3:
            sub_80EC970_prepare(target, targetScript);
            sub_80EA5C8(&field_1C, targetScript, (u8*)arguments[2], NULL, flags, index);
            break;
        case 4:
        case 5:
            if (!(targetScript->field_A0 & 1)) {
                sub_80EC970_prepare(target, targetScript);
                sub_80EA5C8(&field_1C, targetScript, script->position, (u8*)arguments[2], flags, index);
            } else {
                sub_80EA584(&field_1C, targetScript, script->position, (u8*)arguments[2], flags, index);
            }
            script->position = (u8*)arguments[2];
            break;
        case 6:
        case 7:
            if (!(targetScript->field_A0 & 1)) {
                sub_80EC970_prepare(target, targetScript);
                sub_80EA5C8(&field_1C, targetScript, (u8*)arguments[2], NULL, flags, index);
            } else {
                sub_80EA584(&field_1C, targetScript, (u8*)arguments[2], NULL, flags, index);
            }
            break;
    }
    return !(script->field_A0 & 4);
}

// Script command 9: starts the script at arguments[1] in slot arguments[0] of dword_3000FD0 (0 = slot
// 0, 1 = slot 3, 2 = slot 1, 3 = slot 2). Slots 0 and 3 are restarted unconditionally; slots 1 and 2
// only if they aren't running, like FieldEventScript::sub_80EB524 types 2 and 3.
s8 FieldEventScript::sub_80ECB20(ScriptContext* script, s32* arguments) {
    ScriptSlot* slot;
    int type = *arguments++;

    switch (type) {
        case 0:
            slot = &dword_3000FD0->scripts[0];
            sub_80EA5C8(&field_1C, slot, (u8*)*arguments, NULL, 1, 0xFF);
            break;
        case 1:
            slot = &dword_3000FD0->scripts[3];
            sub_80EA5C8(&field_1C, slot, (u8*)*arguments, NULL, 1, 0xFF);
            break;
        case 2:
            slot = &dword_3000FD0->scripts[1];
            if (!(slot->field_A0 & 1)) {
                sub_80EA5C8(&field_1C, slot, (u8*)*arguments, NULL, 1, 0xFF);
                FieldManager* fieldManager = (FieldManager*)parentProcess;
                if (fieldManager->objects[0]->collidesWithObjects) {
                    dword_3000FD0->field_55A_6 &= ~1;
                    fieldManager->objects[0]->collidesWithObjects = 0;
                }
                if (fieldManager->objects[1]->collidesWithObjects) {
                    dword_3000FD0->field_55A_6 &= ~2;
                    fieldManager->objects[1]->collidesWithObjects = 0;
                }
                if (!dword_3000FD0->field_55A_1) {
                    ((FieldManager*)parentProcess)->sub_8028D6C(0x3FF);
                }
                break;
            }
            // fallthrough
        case 3: {
            // Its own variable (not the shared slot): the original keeps it in another register.
            ScriptSlot* slot = &dword_3000FD0->scripts[2];
            if (!(slot->field_A0 & 1) && dword_3000FD0->field_55A_0) {
                sub_80EA5C8(&field_1C, slot, (u8*)*arguments, NULL, 1, 0xFF);
            }
            break;
        }
    }
    return TRUE;
}

// Script command 10: ends the script in slot arguments[0] of dword_3000FD0 (0 = slot 0, 1 = slot 3,
// 2 = slot 1, 3 = slot 2; any other value ends this script), and the scripts of the slots and objects
// that are attached to that slot (field_A4).
//! Possible fake match: the s16 mask local in the field-object loop (found with decomp-permuter).
//! It puts the 0xFFF7 constant first in the loop body, so it's hoisted before the 0xFF one.
s8 FieldEventScript::sub_80ECCB0(ScriptContext* script, s32* arguments) {
    ScriptSlot* slot = script;
    //! \bug Only set for arguments[0] 0-3: when this script is ended, the loops below compare the
    //! uninitialized index.
    u8 index;

    switch (arguments[0]) {
        case 0:
            index = 0;
            slot = &dword_3000FD0->scripts[0];
            break;
        case 1:
            index = 3;
            slot = &dword_3000FD0->scripts[3];
            break;
        case 2:
            index = 1;
            slot = &dword_3000FD0->scripts[1];
            break;
        case 3:
            index = 2;
            slot = &dword_3000FD0->scripts[2];
            break;
    }
    slot->field_4 = slot->position;
    slot->field_A0 = 1;

    s16 count;
    ScriptSlot* other = dword_3000FD0->scripts;
    for (count = 4; count > 0; other++, count--) {
        if (other->field_A4 == index && other->field_4 != 0) {
            other->field_4 = other->position;
        }
    }

    FieldManager* fieldManager = (FieldManager*)parentProcess;
    count = fieldManager->objectCount;
    FieldObject** objects = fieldManager->objects;
    for (; count > 0; count--, objects++) {
        FieldObject* object = *objects;
        s16 mask = ~8;

        if (object->script.field_A4 == index) {
            object->script.field_A4 = 0xFF;
            object->script.field_A0 &= mask;
        }
    }
    return TRUE;
}

// Script command 80: sets a property of the object to arguments[1], chosen by arguments[0]. Type 4
// turns the collision flags off, or back to the values in the object's record; types 4 and 5 also mark
// a brother in field_55A_6 (sub_80EB838 turns collidesWithObjects back on for unmarked brothers).
s8 FieldEventScript::sub_80ECDA4(FieldObject* object, ScriptContext* script, s32* arguments) {
    switch (*arguments++) {
        case 1:
            object->sub_804776C(*arguments);
            // fallthrough
        case 0:
            object->setSpriteActive(*arguments);
            break;
        case 2:
            object->field_20C_11 = *arguments;
            break;
        case 3:
            switch (*arguments) {
                case 0:
                    object->field_214_13 = 14;
                    break;
                case 1:
                    object->sub_80472D0(NULL, FALSE);
                    break;
                case 2:
                    object->sub_80472D0(NULL, TRUE);
                    break;
            }
            break;
        case 4: {
            // Pointer arithmetic, not dword_83D6C58[...]: the array form loads the table address
            // earlier.
            u8* header = *(dword_83D6C58 + ((FieldManager*)parentProcess)->field_126);
            u8* record = header - ((header[7] << 8) | header[6]) + object->objectIndex * 0x14;

            if (object->objectIndex <= 1) {
                dword_3000FD0->field_55A_6 |= 1 << object->objectIndex;
                object->blocksBrothers = 0;
                object->collidesWithBrothers = 0;
                object->field_20C_7 = 0;
            } else {
                object->blocksBrothers = *arguments ? (record[0x10] >> 5) & 1 : 0;
                object->collidesWithBrothers = *arguments ? (record[0x10] >> 6) & 1 : 0;
                object->field_20C_7 = *arguments ? (record[0x10] >> 7) & 1 : 0;
            }
            object->collidesWithObjects = *arguments ? record[0x11] & 1 : 0;
            object->blocksObjects = *arguments ? (record[0x11] >> 1) & 1 : 0;
            break;
        }
        case 5:
            if (object->objectIndex <= 1) {
                dword_3000FD0->field_55A_6 |= 1 << object->objectIndex;
            }
            object->collidesWithBrothers = *arguments;
            object->field_20C_7 = *arguments;
            object->collidesWithObjects = *arguments;
            object->blocksObjects = *arguments;
            break;
        case 6:
            object->field_20C_24 = *arguments;
            break;
        case 7:
            object->field_20C_14 = *arguments;
            break;
        case 8:
            object->field_20C_13 = *arguments;
            break;
        case 9:
            object->field_20C_26 = *arguments;
            break;
        case 10:
            object->field_20C_18 = *arguments;
            break;
        case 11:
            object->sub_804776C(*arguments);
            break;
        case 12:
            object->sprite->field_11_2 = *arguments;
            break;
        case 13:
            object->field_210_0 = *arguments;
            break;
        case 14:
            object->field_210_4 = *arguments;
            break;
        case 15:
            object->field_20C_4 = *arguments;
            break;
        case 16:
            object->field_210_3 = *arguments;
            break;
        case 17:
            object->field_211_0 = *arguments;
            break;
        case 18:
            if (*arguments) {
                ((FieldMonster*)object)->field_33D_4 |= 1;
            } else {
                ((FieldMonster*)object)->field_33D_4 &= ~1;
            }
            break;
    }
    return TRUE;
}

// Script command 81, chosen by arguments[0]: 0 calls sub_80472D0 with the field object arguments[2];
// 1 calls sub_804790C or sub_804794C with a value decoded from arguments[2]; 2 sets the collision
// flags selected by the mask arguments[2] to arguments[1] (like sub_80ECDA4 type 5, marking a brother);
// 3 sets field_20C_1 and 4 sets field_270 to arguments[1].
// https://decomp.me/scratch/TODO
//! Nonmatching: in case 1, the original does each sign-extending shift pair in place (lsls r1, r1, #28;
//! asrs r1, r1, #24), this goes through r0. decomp-permuter (~/perm/sub_80ED17C) found nothing in 15
//! min.
#ifndef NONMATCHING
asm_unified(
    ".include \"asm/nonmatching/sub_80ED17C__16FieldEventScriptP11FieldObjectP13ScriptContextPi.s\"");
#else
s8 FieldEventScript::sub_80ED17C(FieldObject* object, ScriptContext* script, s32* arguments) {
    s32 value = arguments[2];

    switch (*arguments++) {
        case 0:
            object->sub_80472D0(*(((FieldManager*)parentProcess)->objects + value), *arguments);
            break;
        case 1:
            if (*arguments++) {
                s32 speed = *arguments;

                object->sub_804790C(speed & 0x40 ? speed & 0xF : (s8)(speed << 4));
            } else {
                s32 speed = *arguments;

                object->sub_804794C(speed & 0x40 ? (speed & 0xF) << 4 : (s8)speed << 8);
            }
            break;
        case 2:
            if (object->objectIndex <= 1) {
                dword_3000FD0->field_55A_6 |= 1 << object->objectIndex;
            }
            if ((value >> 4) & 1) {
                object->blocksBrothers = *arguments;
            }
            if ((value >> 3) & 1) {
                object->collidesWithBrothers = *arguments;
            }
            if ((value >> 2) & 1) {
                object->field_20C_7 = *arguments;
            }
            if ((value >> 1) & 1) {
                object->collidesWithObjects = *arguments;
            }
            if (value & 1) {
                object->blocksObjects = *arguments;
            }
            break;
        case 3:
            object->field_20C_1 = value;
            break;
        case 4:
            object->field_270 = value;
            break;
    }
    return TRUE;
}
#endif

// Script command 82: sets a property of the object arguments[0] to arguments[2], chosen by arguments[1]
// (like sub_80ECDA4).
s8 FieldEventScript::sub_80ED304(ScriptContext* script, s32* arguments) {
    FieldObject* object = *(((FieldManager*)parentProcess)->objects + *arguments++);

    switch (*arguments++) {
        case 0:
            object->setSpriteActive(*arguments);
            break;
        case 1:
            object->field_20C_18 = *arguments;
            break;
        case 2:
            object->field_20C_4 = *arguments;
            break;
        case 3: {
            // Pointer arithmetic, not dword_83D6C58[...]: the array form loads the table address
            // earlier.
            u8* header = *(dword_83D6C58 + ((FieldManager*)parentProcess)->field_126);
            u8* record = header - ((header[7] << 8) | header[6]) + object->objectIndex * 0x14;

            if (object->objectIndex <= 1) {
                dword_3000FD0->field_55A_6 |= 1 << object->objectIndex;
                object->blocksBrothers = 0;
                object->collidesWithBrothers = 0;
                object->field_20C_7 = 0;
            } else {
                object->blocksBrothers = *arguments ? (record[0x10] >> 5) & 1 : 0;
                object->collidesWithBrothers = *arguments ? (record[0x10] >> 6) & 1 : 0;
                object->field_20C_7 = *arguments ? (record[0x10] >> 7) & 1 : 0;
            }
            object->collidesWithObjects = *arguments ? record[0x11] & 1 : 0;
            object->blocksObjects = *arguments ? (record[0x11] >> 1) & 1 : 0;
            break;
        }
        case 4:
            if (*arguments) {
                ((FieldMonster*)object)->field_33D_4 |= 1;
            } else {
                ((FieldMonster*)object)->field_33D_4 &= ~1;
            }
            break;
    }
    return TRUE;
}

// Script command 83: like sub_80ED304, for other properties. Type 4 sets the collision flags selected
// by the low bits of arguments[2] to its bit 15.
s8 FieldEventScript::sub_80ED4EC(ScriptContext* script, s32* arguments) {
    FieldObject* object;

    switch (*arguments++) {
        case 0:
            if (*arguments & 0x40) {
                object = *(((FieldManager*)parentProcess)->objects
                           + ((FieldManager*)parentProcess)->luigiLeads);
            } else {
                object = *(((FieldManager*)parentProcess)->objects + *arguments);
            }
            if (arguments[1] & 0x40) {
                object->sub_804794C((arguments[1] & 0xF) << 4);
            } else {
                object->sub_804794C((s8)arguments[1] << 8);
            }
            break;
        case 1:
            object = *(((FieldManager*)parentProcess)->objects + *arguments++);
            object->sprite->field_11_2 = *arguments;
            break;
        case 2:
            object = *(((FieldManager*)parentProcess)->objects + *arguments++);
            object->field_20C_1 = *arguments;
            break;
        case 3:
            object = *(((FieldManager*)parentProcess)->objects + *arguments++);
            object->field_270 = *arguments;
            break;
        case 4: {
            int value;

            object = *(((FieldManager*)parentProcess)->objects + *arguments++);
            value = (*arguments >> 15) & 1;
            if (object->objectIndex <= 1) {
                dword_3000FD0->field_55A_6 |= 1 << object->objectIndex;
            }
            if ((*arguments >> 4) & 1) {
                object->blocksBrothers = value;
            }
            if ((*arguments >> 3) & 1) {
                object->collidesWithBrothers = value;
            }
            if ((*arguments >> 2) & 1) {
                object->field_20C_7 = value;
            }
            if ((*arguments >> 1) & 1) {
                object->collidesWithObjects = value;
            }
            if (*arguments & 1) {
                object->blocksObjects = value;
            }
            break;
        }
    }
    return TRUE;
}

s8 FieldEventScript::sub_80ED6A8(ScriptContext* script, s32* arguments) {
    if (arguments[0] != 0xFF) {
        ((FieldManager*)parentProcess)->field_FA_5 = arguments[0];
        ((FieldManager*)parentProcess)->sub_8028EE8();
    } else {
        ((FieldManager*)parentProcess)->field_FA_5 = ((FieldManager*)parentProcess)->luigiLeads;
        ((FieldManager*)parentProcess)->field_F8_6 = arguments[1];
    }
    if (((FieldManager*)parentProcess)->field_F8_6) {
        ((FieldManager*)parentProcess)->sub_80284B0(((FieldManager*)parentProcess)->field_FA_5, 0);
    }
    dword_3000FD0->field_530 = ((FieldManager*)parentProcess)->field_FA_5;
    return TRUE;
}
