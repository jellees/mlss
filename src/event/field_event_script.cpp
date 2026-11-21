#include "global.h"
#include "common.h"
#include "sprite.h"
#include "field/field.h"
#include "field/field_object.h"
#include "field/field_monster.h"
#include "event/event.h"
#include "event/text080E9D50.h"
#include "event/field_event_script.h"

struc_3000FC8* struc_3000FC8::instance;
struc_3000FCC* struc_3000FCC::instance;
MapEventInfo* MapEventInfo::instance;
BEVS* BEVS::instance;

// Runs the object's script (if it is active) until sub_80EB838 or a command stops it. Inline
// (0x080F1E44 is its out-of-line copy at the end of this file).
inline bool FieldEventScript::sub_80F1E44(FieldObject* object, FieldObjectEvent* script) {
    s32 arguments[13];

    if (!(script->flags & 1)) {
        return false;
    }
    while (sub_80EB838(object, script) == 0) {
        CommonEvent::readCommand(script, arguments, CommonEvent::instance,
                                 (u32*)((u8*)MapEventInfo::instance + 0x4B0),
                                 CommonEvent::instance->fieldEngineFlags, 0);
        if (!executeNextCommand(object, script, arguments)) {
            break;
        }
    }
    return true;
}

// Runs the script of every field object.
//! Possible fake match: the repeated `((FieldManager*)parentProcess)` casts (the second loop's header
//! needs them instead of the `fieldManager` local) and the function-scope `script` shared by both
//! loops. Revisit once the script engine and its globals are decompiled; the script calls also still
//! use guessed prototypes and raw offsets into MapEventInfo/CommonEvent::instance.
void FieldEventScript::sub_80EB248() {
    FieldManager* fieldManager = (FieldManager*)parentProcess;
    s16 count = fieldManager->objectCount;
    FieldObject** objects;
    FieldObjectEvent* script;
    s16 i;

    for (i = 0, objects = fieldManager->objects; i < count; i++, objects++) {
        FieldObject* object = *objects;

        if (!object->field_214_21) {
            script = &object->script;

            if (!(script->flags & 0x1B6)) {
                CommonEvent::setVariable((u32*)((u8*)MapEventInfo::instance + 0x4B0), script->registers,
                                         CommonEvent::instance->fieldEngineFlags, 0, 0x33, i);
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
        if ((object->script.flags & 0x42) && !(object->script.flags & 0x84)) {
            if (!(*objects)->field_214_21) {
                (*objects)->sub_80461B4(((FieldManager*)parentProcess)->objects);
            }
        } else if ((script->flags & 0x484) == 0x400) {
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
        } else if (script->flags & 0x100) {
            if (!(*objects)->field_214_21) {
                ((FieldManager*)parentProcess)->sub_8028C40();
            }
        }
    }
}

void FieldEventScript::sub_80EB490(FieldObject* object, FieldObjectEvent* script) {
    if (object->sprite->animationEndAction != ANIMATION_END_STOP) {
        object->sprite->animationEndAction = ANIMATION_END_STOP;
    }

    if (object->sprite->animationComplete) {
        if (--script->field_9C == 0) {
            if (script->flags & 0x200) {
                object->field_214_0 = 0;
                script->flags &= ~0x220;
                return;
            }

            object->sub_80474D0();
            script->flags ^= 0x20;
        }

        object->sprite->animationEndAction = ANIMATION_END_LOOP;
    }
}

// Starts the script arg in the object's script (type 4) or in one of the four script slots of
// MapEventInfo (types 0-3), but only if that thread isn't running (flags bit 0). Any other
// type picks the first free one in the order object, slot 1, slot 2, slot 3, slot 0.
void FieldEventScript::sub_80EB524(FieldObject* object, u8 type, int arg) {
    EventThread* slot;

    switch (type) {
        case 4:
            if (object != NULL && !(object->script.flags & 1)) {
                sub_80EA5C8(&object->script, (u8*)arg, NULL, 1, 0xFF);
            }
            break;
        case 2:
            slot = &MapEventInfo::instance->scripts[1];
            if (!(slot->flags & 1)) {
                sub_80EA5C8(slot, (u8*)arg, NULL, 1, 0xFF);
                FieldManager* fieldManager = (FieldManager*)parentProcess;
                if (fieldManager->objects[0]->collidesWithObjects) {
                    MapEventInfo::instance->field_55A_6 &= ~1;
                    fieldManager->objects[0]->collidesWithObjects = 0;
                }
                if (fieldManager->objects[1]->collidesWithObjects) {
                    MapEventInfo::instance->field_55A_6 &= ~2;
                    fieldManager->objects[1]->collidesWithObjects = 0;
                }
                if (!MapEventInfo::instance->field_55A_1) {
                    ((FieldManager*)parentProcess)->sub_8028D6C(0x3FF);
                }
                break;
            }
            // fallthrough
        case 3:
            slot = &MapEventInfo::instance->scripts[2];
            if (!(slot->flags & 1) && MapEventInfo::instance->field_55A_0) {
                sub_80EA5C8(slot, (u8*)arg, NULL, 1, 0xFF);
            }
            break;
        case 0:
            slot = &MapEventInfo::instance->scripts[0];
            if (!(slot->flags & 1)) {
                sub_80EA5C8(slot, (u8*)arg, NULL, 1, 0xFF);
            }
            break;
        case 1:
            slot = &MapEventInfo::instance->scripts[3];
            if (!(slot->flags & 1)) {
                sub_80EA5C8(slot, (u8*)arg, NULL, 1, 0xFF);
            }
            break;
        default:
            if (object != NULL && !(object->script.flags & 1)) {
                sub_80EA5C8(&object->script, (u8*)arg, NULL, 1, 0xFF);
                break;
            }
            slot = &MapEventInfo::instance->scripts[1];
            if (!(slot->flags & 1)) {
                sub_80EA5C8(slot, (u8*)arg, NULL, 1, 0xFF);
                FieldManager* fieldManager = (FieldManager*)parentProcess;
                if (fieldManager->objects[0]->collidesWithObjects) {
                    MapEventInfo::instance->field_55A_6 &= ~1;
                    fieldManager->objects[0]->collidesWithObjects = 0;
                }
                if (fieldManager->objects[1]->collidesWithObjects) {
                    MapEventInfo::instance->field_55A_6 &= ~2;
                    fieldManager->objects[1]->collidesWithObjects = 0;
                }
                if (!MapEventInfo::instance->field_55A_1) {
                    ((FieldManager*)parentProcess)->sub_8028D6C(0x3FF);
                }
                break;
            }
            slot = &MapEventInfo::instance->scripts[2];
            if (!(slot->flags & 1) && MapEventInfo::instance->field_55A_0) {
                sub_80EA5C8(slot, (u8*)arg, NULL, 1, 0xFF);
                break;
            }
            slot = &MapEventInfo::instance->scripts[3];
            if (!(slot->flags & 1)) {
                sub_80EA5C8(slot, (u8*)arg, NULL, 1, 0xFF);
                break;
            }
            slot = &MapEventInfo::instance->scripts[0];
            if (!(slot->flags & 1)) {
                sub_80EA5C8(slot, (u8*)arg, NULL, 1, 0xFF);
            }
            break;
    }
}

// Checked before each command of a script (sub_80F1E44 stops when it returns true). Returns false
// while the script hasn't reached endPosition, or after restoring the saved script (savedPosition).
// With flag 8 set it clears flag 4 of the parent script (parentIndex: a slot of MapEventInfo
// for 0-3, field object index + 4 otherwise).
bool FieldEventScript::sub_80EB838(FieldObject* object, FieldObjectEvent* script) {
    if (script->position != script->endPosition) {
        return false;
    }

    if (script->flags & 8) {
        u8 index = script->parentIndex;
        EventThread* other;

        if (index <= 3) {
            other = &MapEventInfo::instance->scripts[index];
        } else {
            // Pointer arithmetic, not objects[index - 4]: g++ only folds the offset for a pointer.
            other = &(*(((FieldManager*)parentProcess)->objects + index - 4))->script;
        }
        other->flags &= ~4;
        script->flags &= ~8;
    }

    if (object == NULL) {
        struct MapEventInfo* p = MapEventInfo::instance;
        u16 index = p->field_548 - 1;

        if (p->field_550 & (1 << index)) {
            p->field_550 &= ~(1 << index);
            FieldObject* fieldObject = *(((FieldManager*)parentProcess)->objects + p->field_544[index]);
            fieldObject->script.flags &= ~0x80;
            fieldObject->previousAngle = p->field_546[index];
            fieldObject->angle = p->field_546[index];
            if (fieldObject->field_20C_4 || fieldObject->field_214_0 == 3
                || fieldObject->field_214_0 == 4) {
                fieldObject->direction = MapEventInfo::instance->field_546[index] >> 5;
            }
        }
    }

    if (script->flags & ~0x403) {
        return true;
    }

    if (script->savedPosition != 0) {
        script->position = script->savedPosition;
        script->endPosition = script->savedEndPosition;
        script->flags = script->savedFlags;
        script->parentIndex = script->savedParentIndex;
        script->savedEndPosition = 0;
        script->savedPosition = 0;
        script->savedFlags = 0;
        script->savedParentIndex = 0;
        return false;
    }

    script->flags &= ~1;
    if (object == NULL) {
        if (MapEventInfo::instance->field_548 == 1) {
            FieldManager* fieldManager = (FieldManager*)parentProcess;
            fieldManager->objects[0]->collidesWithObjects |= ~MapEventInfo::instance->field_55A_6 & 1;
            fieldManager->objects[1]->collidesWithObjects |=
                ~(MapEventInfo::instance->field_55A_6 >> 1) & 1;
        }
        if (!MapEventInfo::instance->field_55A_1) {
            if (MapEventInfo::instance->field_548 == 1) {
                ((FieldManager*)parentProcess)->sub_8028D6C(0);
            }
        } else if (!MapEventInfo::instance->field_55A_2
                   && MapEventInfo::instance->field_55A_3 == MapEventInfo::instance->field_548) {
            ((FieldManager*)parentProcess)->sub_8028D6C(MapEventInfo::instance->field_554[0]);
            MapEventInfo::instance->field_55A_1 = MapEventInfo::instance->field_55A_2 =
                MapEventInfo::instance->field_554[0] != 0;
            MapEventInfo::instance->field_55A_3 = 0;
        }
    }
    return true;
}

// Executes the command that readCommand read (the opcode is script->currentOpcode, its arguments
// are in arguments). Returns the result of the command handler; commands without one return true.
s8 FieldEventScript::executeNextCommand(FieldObject* object, FieldObjectEvent* script, s32* arguments) {
    switch (script->currentOpcode) {
        case 0:
            return commandEnd(script);
        case 1:
            return commandReturn(script);
        case 2:
            return commandCall(script, arguments);
        case 3:
            return commandWaitFrames(script, arguments);
        case 4:
            return sub_80EC970(object, script, arguments, MapEventInfo::instance->field_548);
        case 5:
            return sub_80F1CF8(this, script, arguments);
        case 6:
            return sub_80F1C7C(this, object, script, arguments, MapEventInfo::instance->field_548,
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
            return sub_80F1B14(this, script, arguments, (u8*)MapEventInfo::instance + 0x4B0);
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
            return sub_80ED750(script, arguments);
        case 21:
            return sub_80EB11C(struc_3000FCC::instance, script, arguments);
        case 23:
            return script_cmd_start_dialogue(this, script, arguments);
        case 22:
            return sub_80E9D50(struc_3000FCC::instance, script, arguments);
        case 24:
            return commandWaitForUserInput(struc_3000FCC::instance, script, arguments);
        case 25:
            return sub_80EB09C(struc_3000FCC::instance, script, arguments);
        case 26:
            return sub_80EB05C(struc_3000FCC::instance, script, arguments);
        case 31:
            return sub_80EB048(struc_3000FCC::instance, arguments);
        case 27:
            sub_80E71D0(struc_3000FCC::instance, arguments[0], arguments[1], arguments[2],
                        arguments[3]);
            break;
        case 35:
            return sub_80EAFB4(script, arguments);
        case 36:
            return sub_80EAF4C(script, arguments);
        case 37:
            return sub_80EAEF8(script, arguments);
        case 38:
            return sub_80EAEE0(script, arguments);
        case 28:
            return sub_80EAEBC(struc_3000FCC::instance, script, arguments);
        case 29:
            return sub_80EAE9C(script, arguments);
        case 30:
            return sub_80EAE70(script, arguments, (u32*)((u8*)MapEventInfo::instance + 0x4B0));
        case 32:
            return sub_80EAE30(struc_3000FC8::instance, script, arguments);
        case 33:
            return script_cmd_show_reaction_bubble(this, script, arguments);
        case 34:
            return sub_80EADEC(struc_3000FC8::instance, script, arguments);
        case 39:
            return sub_80EADC4(script, arguments);
        case 40:
            return sub_80EAD98(script, arguments);
        case 41:
            return sub_80EAD7C(script, arguments);
        case 42:
            return sub_80E9E10(script, arguments);
        case 43:
            return sub_80EACDC(script, arguments, (u32*)((u8*)MapEventInfo::instance + 0x4B0));
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
            return sub_80E9EE0(script, arguments);
        case 50:
            return sub_80EA064(script, arguments);
        case 51:
            return sub_80EAC78(script, arguments, (u32*)((u8*)MapEventInfo::instance + 0x4B0));
        case 52:
            return sub_80EA144(script, arguments, (u32*)((u8*)MapEventInfo::instance + 0x4B0));
        case 53:
            return sub_80EA358(script, arguments, (u32*)((u8*)MapEventInfo::instance + 0x4B0));
        case 54:
            return sub_80EAB98(script, arguments, (u32*)((u8*)MapEventInfo::instance + 0x4B0),
                               CommonEvent::instance->fieldEngineFlags, NULL);
        case 55:
            return sub_80EAB20(script, arguments);
        case 57:
            return sub_80EAA84(script, arguments, (u32*)((u8*)MapEventInfo::instance + 0x4B0));
        case 58:
            return sub_80EAA5C(script, arguments, (u32*)((u8*)MapEventInfo::instance + 0x4B0));
        case 59:
            return sub_80EAA04(script, arguments);
        case 60:
            return sub_80EA9B8(script, arguments);
        case 56:
            return sub_80EAB00(script, arguments);
        case 61:
            return sub_80EA9A8(script, arguments);
        case 63:
            return commandConditionalJump(script, arguments);
        case 65:
            return sub_80EA968(script, arguments, (u32*)((u8*)MapEventInfo::instance + 0x4B0));
        case 66:
            return sub_80EA940(script, arguments);
        case 67:
            return sub_80EA928(script, arguments);
        case 70:
            return sub_80EA91C(script, arguments);
        case 68:
            return sub_80EA904(script);
        case 69:
            return sub_80EA478(script, arguments);
        case 71:
            return sub_80EA8DC(script, arguments);
        case 72:
            return sub_80EA8A4(script, arguments);
        case 73:
            return sub_80EA88C(script, arguments);
        case 74:
            return sub_80EA854(script, arguments, (u32*)((u8*)MapEventInfo::instance + 0x4B0));
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
                              arguments[2] != 0, arguments[3], false);
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
            return sub_80ED7D4(object, script, arguments);
        case 118:
            return sub_80ED86C(script, arguments);
        case 119:
            return sub_80ED90C(script, arguments);
        case 120:
            return sub_80F14C4(this, object, script, arguments);
        case 121:
            return sub_80F1490(this, object, script, arguments);
        case 122:
            return sub_80F1478(this, script, arguments);
        case 123:
            return sub_80F143C(this, script, arguments);
        case 124:
            return sub_80ED9A4(object, script, arguments);
        case 125:
            return sub_80EDAB0(script, arguments);
        case 93:
            return sub_80F13A4(this, object, script, arguments);
        case 94:
            return sub_80EDBC4(object, script, arguments);
        case 95:
            return sub_80EDD48(object, script, arguments);
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
            return sub_80EDEB4(object, script, arguments);
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
                              arguments[1] == 0x3F ? MapEventInfo::instance->field_52C : arguments[1],
                              0, arguments[2], arguments[3], arguments[4], arguments[5] & 1,
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
            return true;
        case 177: {
            int value = (arguments[1] << 8) | arguments[0];

            if (arguments[1] != 16 && arguments[0] != 16) {
                value |= 0x40;
            }
            BUFFER_REG_BLDCNT = value;
        } break;
        case 178:
            return sub_80EEF54(this, script, arguments, (u8*)MapEventInfo::instance + 0x4B0);
        case 179:
            return sub_80EF0B0(this, script, arguments, (u8*)MapEventInfo::instance + 0x4B0);
        case 180:
            return sub_80F0678(this, script, arguments, (u8*)MapEventInfo::instance + 0x4B0);
        case 181:
            return sub_80F0618(this, script, arguments, (u8*)MapEventInfo::instance + 0x4B0);
        case 182:
            return sub_80F05DC(this, script, arguments, (u8*)MapEventInfo::instance + 0x4B0);
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

    return true;
}

// Called by sub_80EC970 before it starts a new script on target: calls a FieldObject method for each
// of flags 2, 0x40 and 0x20 of the target's script.
inline void FieldEventScript::sub_80EC970_prepare(FieldObject* target, FieldObjectEvent* targetScript) {
    if (targetScript->flags & 2) {
        target->sub_8046980();
    }
    if (targetScript->flags & 0x40) {
        target->sub_8046A10();
    }
    if (targetScript->flags & 0x20) {
        target->sub_80473DC();
    }
}

// Script command 4: starts the script at arguments[2] on the object arguments[1]. arguments[0] bit 0
// makes this script wait for it (flag 4); modes 2-3 and 6-7 don't pass this script's position, and
// modes 4-7 use sub_80EA584 instead if the target's script is already running. Returns false while
// waiting.
s8 FieldEventScript::sub_80EC970(FieldObject* object, FieldObjectEvent* script, s32* arguments,
                                 u8 index) {
    FieldObject* target = *(((FieldManager*)parentProcess)->objects + arguments[1]);
    FieldObjectEvent* targetScript = &target->script;
    int flags = 1;

    if (object != NULL) {
        index = object->objectIndex + 4;
    }
    if (arguments[0] & flags) {
        script->flags |= 4;
        flags = 9;
    }

    switch (arguments[0]) {
        case 0:
        case 1:
            sub_80EC970_prepare(target, targetScript);
            sub_80EA5C8(targetScript, script->position, (u8*)arguments[2], flags, index);
            script->position = (u8*)arguments[2];
            break;
        case 2:
        case 3:
            sub_80EC970_prepare(target, targetScript);
            sub_80EA5C8(targetScript, (u8*)arguments[2], NULL, flags, index);
            break;
        case 4:
        case 5:
            if (!(targetScript->flags & 1)) {
                sub_80EC970_prepare(target, targetScript);
                sub_80EA5C8(targetScript, script->position, (u8*)arguments[2], flags, index);
            } else {
                sub_80EA584(targetScript, script->position, (u8*)arguments[2], flags, index);
            }
            script->position = (u8*)arguments[2];
            break;
        case 6:
        case 7:
            if (!(targetScript->flags & 1)) {
                sub_80EC970_prepare(target, targetScript);
                sub_80EA5C8(targetScript, (u8*)arguments[2], NULL, flags, index);
            } else {
                sub_80EA584(targetScript, (u8*)arguments[2], NULL, flags, index);
            }
            break;
    }
    return !(script->flags & 4);
}

// Script command 9: starts the script at arguments[1] in slot arguments[0] of MapEventInfo (0 = slot
// 0, 1 = slot 3, 2 = slot 1, 3 = slot 2). Slots 0 and 3 are restarted unconditionally; slots 1 and 2
// only if they aren't running, like FieldEventScript::sub_80EB524 types 2 and 3.
s8 FieldEventScript::sub_80ECB20(FieldObjectEvent* script, s32* arguments) {
    EventThread* slot;
    int type = *arguments++;

    switch (type) {
        case 0:
            slot = &MapEventInfo::instance->scripts[0];
            sub_80EA5C8(slot, (u8*)*arguments, NULL, 1, 0xFF);
            break;
        case 1:
            slot = &MapEventInfo::instance->scripts[3];
            sub_80EA5C8(slot, (u8*)*arguments, NULL, 1, 0xFF);
            break;
        case 2:
            slot = &MapEventInfo::instance->scripts[1];
            if (!(slot->flags & 1)) {
                sub_80EA5C8(slot, (u8*)*arguments, NULL, 1, 0xFF);
                FieldManager* fieldManager = (FieldManager*)parentProcess;
                if (fieldManager->objects[0]->collidesWithObjects) {
                    MapEventInfo::instance->field_55A_6 &= ~1;
                    fieldManager->objects[0]->collidesWithObjects = 0;
                }
                if (fieldManager->objects[1]->collidesWithObjects) {
                    MapEventInfo::instance->field_55A_6 &= ~2;
                    fieldManager->objects[1]->collidesWithObjects = 0;
                }
                if (!MapEventInfo::instance->field_55A_1) {
                    ((FieldManager*)parentProcess)->sub_8028D6C(0x3FF);
                }
                break;
            }
            // fallthrough
        case 3: {
            // Its own variable (not the shared slot): the original keeps it in another register.
            EventThread* slot = &MapEventInfo::instance->scripts[2];
            if (!(slot->flags & 1) && MapEventInfo::instance->field_55A_0) {
                sub_80EA5C8(slot, (u8*)*arguments, NULL, 1, 0xFF);
            }
            break;
        }
    }
    return true;
}

// Script command 10: ends the script in slot arguments[0] of MapEventInfo (0 = slot 0, 1 = slot 3,
// 2 = slot 1, 3 = slot 2; any other value ends this script), and the scripts of the slots and objects
// that are attached to that slot (parentIndex).
//! Possible fake match: the s16 mask local in the field-object loop (found with decomp-permuter).
//! It puts the 0xFFF7 constant first in the loop body, so it's hoisted before the 0xFF one.
s8 FieldEventScript::sub_80ECCB0(FieldObjectEvent* script, s32* arguments) {
    EventThread* slot = script;
    //! \bug Only set for arguments[0] 0-3: when this script is ended, the loops below compare the
    //! uninitialized index.
    u8 index;

    switch (arguments[0]) {
        case 0:
            index = 0;
            slot = &MapEventInfo::instance->scripts[0];
            break;
        case 1:
            index = 3;
            slot = &MapEventInfo::instance->scripts[3];
            break;
        case 2:
            index = 1;
            slot = &MapEventInfo::instance->scripts[1];
            break;
        case 3:
            index = 2;
            slot = &MapEventInfo::instance->scripts[2];
            break;
    }
    slot->endPosition = slot->position;
    slot->flags = 1;

    s16 count;
    EventThread* other = MapEventInfo::instance->scripts;
    for (count = 4; count > 0; other++, count--) {
        if (other->parentIndex == index && other->endPosition != 0) {
            other->endPosition = other->position;
        }
    }

    FieldManager* fieldManager = (FieldManager*)parentProcess;
    count = fieldManager->objectCount;
    FieldObject** objects = fieldManager->objects;
    for (; count > 0; count--, objects++) {
        FieldObject* object = *objects;
        s16 mask = ~8;

        if (object->script.parentIndex == index) {
            object->script.parentIndex = 0xFF;
            object->script.flags &= mask;
        }
    }
    return true;
}

// Script command 80: sets a property of the object to arguments[1], chosen by arguments[0]. Type 4
// turns the collision flags off, or back to the values in the object's record; types 4 and 5 also mark
// a brother in field_55A_6 (sub_80EB838 turns collidesWithObjects back on for unmarked brothers).
s8 FieldEventScript::sub_80ECDA4(FieldObject* object, FieldObjectEvent* script, s32* arguments) {
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
                    object->sub_80472D0(NULL, false);
                    break;
                case 2:
                    object->sub_80472D0(NULL, true);
                    break;
            }
            break;
        case 4: {
            // Pointer arithmetic, not dword_83D6C58[...]: the array form loads the table address
            // earlier.
            u8* header = *(dword_83D6C58 + ((FieldManager*)parentProcess)->field_126);
            u8* record = header - ((header[7] << 8) | header[6]) + object->objectIndex * 0x14;

            if (object->objectIndex <= 1) {
                MapEventInfo::instance->field_55A_6 |= 1 << object->objectIndex;
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
                MapEventInfo::instance->field_55A_6 |= 1 << object->objectIndex;
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
    return true;
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
asm_unified(".include "
            "\"asm/nonmatching/sub_80ED17C__16FieldEventScriptP11FieldObjectP16FieldObjectEventPi.s\"");
#else
s8 FieldEventScript::sub_80ED17C(FieldObject* object, FieldObjectEvent* script, s32* arguments) {
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
                MapEventInfo::instance->field_55A_6 |= 1 << object->objectIndex;
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
    return true;
}
#endif

// Script command 82: sets a property of the object arguments[0] to arguments[2], chosen by arguments[1]
// (like sub_80ECDA4).
s8 FieldEventScript::sub_80ED304(FieldObjectEvent* script, s32* arguments) {
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
                MapEventInfo::instance->field_55A_6 |= 1 << object->objectIndex;
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
    return true;
}

// Script command 83: like sub_80ED304, for other properties. Type 4 sets the collision flags selected
// by the low bits of arguments[2] to its bit 15.
s8 FieldEventScript::sub_80ED4EC(FieldObjectEvent* script, s32* arguments) {
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
                MapEventInfo::instance->field_55A_6 |= 1 << object->objectIndex;
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
    return true;
}

s8 FieldEventScript::sub_80ED6A8(FieldObjectEvent* script, s32* arguments) {
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
    MapEventInfo::instance->field_530 = ((FieldManager*)parentProcess)->field_FA_5;
    return true;
}

s8 FieldEventScript::sub_80ED750(FieldObjectEvent* script, s32* arguments) {
    FieldObject* object = *(((FieldManager*)parentProcess)->objects + arguments[0]);

    object->sub_8047364(0);
    sprite_set_animation(object->sprite, object->sprite->field_21, arguments[1]);
    object->field_214_7 = 0;
    object->field_214_9 = 0;
    object->sprite->animationEndAction = 0;
    object->sprite->hFlip ^= arguments[2];
    return true;
}

u8 FieldEventScript::sub_80ED7D4(FieldObject* object, FieldObjectEvent* script, s32* arguments) {
    object->sub_8047364(1);
    object->sub_8047258(arguments[3]);
    if (arguments[3]) {
        object->field_21C = object->field_218;
        object->field_214_8 = 1;
    }
    object->method18(arguments[0]);
    object->sub_8047154(arguments[1], 0);
    script->flags |= 0x200;
    return sub_80EA60C(script, object->sprite, arguments[3], arguments[2]);
}

u8 FieldEventScript::sub_80ED86C(FieldObjectEvent* script, s32* arguments) {
    FieldObject* object = *(((FieldManager*)parentProcess)->objects + arguments[0]);

    object->sub_8047364(1);
    object->sub_8047258(0);
    if (arguments[4]) {
        object->field_21C = object->field_218;
        object->field_214_8 = 1;
    }
    object->method18(arguments[1]);
    object->sub_8047154(arguments[2], 0);
    object->script.flags |= 0x200;
    return sub_80EA60C(&object->script, object->sprite, arguments[4], arguments[3]);
}

s8 FieldEventScript::sub_80ED90C(FieldObjectEvent* script, s32* arguments) {
    LoadMenuItem* item = dword_3000FF8 + *arguments++;
    u8* header = *(dword_83D6C58 + ((FieldManager*)parentProcess)->field_126);
    u8 animation;
    u8 flip;

    header -= (header[3] << 8) | header[2];
    item->id = *((u16*)header + *arguments++);
    animation = *arguments++;
    sub_803FDBC((item->id >> 12) - 1, item->id & 0xFFF, animation, &animation, &flip);
    item->field_2 = animation;
    item->field_3 = *arguments++;
    item->field_4 = *arguments++;
    item->field_5_0 = *arguments ^ flip;
    item->field_5_1 = 0;
    return true;
}

s8 FieldEventScript::sub_80ED9A4(FieldObject* object, FieldObjectEvent* script, s32* arguments) {
    s32 index = arguments[1];

    MapEventInfo::instance->field_554[index] = arguments[0];
    if (arguments[0]) {
        ((FieldManager*)parentProcess)->sub_8028D6C(arguments[0]);
        if (index == 1) {
            if (object) {
                MapEventInfo::instance->field_55A_3 = object->objectIndex + 4;
            } else {
                MapEventInfo::instance->field_55A_3 = MapEventInfo::instance->field_548;
            }
        }
        MapEventInfo::instance->field_55A_2 = index == 0;
        MapEventInfo::instance->field_55A_1 = 1;
    } else {
        ((FieldManager*)parentProcess)->sub_8028D6C(MapEventInfo::instance->field_554[0]);
        MapEventInfo::instance->field_55A_1 = MapEventInfo::instance->field_554[0] != 0;
        MapEventInfo::instance->field_55A_3 = MapEventInfo::instance->field_554[0] != 0;
    }
    return true;
}

// Script command: jumps to arguments[2] if a property of the object arguments[0] equals bit 0 of
// arguments[1]; the property is chosen by arguments[1] >> 1: 0 spriteActive, 1 the object's script
// running (flags bit 0), 2 field_24_3 or field_24_7, 3 field_24_11, 4 the object is the leader's or
// follower's field_33C_0, 5 field_20C_0.
// https://decomp.me/scratch/TODO
//! Nonmatching: regalloc. result (36 refs) outranks object in global-alloc, so result takes r3 and
//! object goes to ip; the original has object in r3 and result in r4, with each case computing its
//! value in r1 and copying it to r4. Tried result as bool/u8/s8/u16/u32, ternaries, an early
//! initialization, `(x & 1) == (cond != 0)`, xor forms, a bool flag local and an inline helper.
//! decomp-permuter (~/perm/sub_80EDAB0) found nothing in 15 min.
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EDAB0__16FieldEventScriptP16FieldObjectEventPi.s\"");
#else
s8 FieldEventScript::sub_80EDAB0(FieldObjectEvent* script, s32* arguments) {
    FieldObject* object = *(((FieldManager*)parentProcess)->objects + *arguments++);
    FieldObjectEvent* objectScript = &object->script;
    int result;

    switch (*arguments >> 1) {
        case 0:
            result = (*arguments & 1) == object->spriteActive;
            break;
        case 1:
            if (objectScript->flags & 1) {
                result = *arguments & 1;
            } else {
                result = !(*arguments & 1);
            }
            break;
        case 2:
            if (object->field_24_3 | object->field_24_7) {
                result = *arguments & 1;
            } else {
                result = !(*arguments & 1);
            }
            break;
        case 3:
            if (object->field_24_11) {
                result = *arguments & 1;
            } else {
                result = !(*arguments & 1);
            }
            break;
        case 4:
            if ((s8)(((FieldManager*)parentProcess)->leader->field_33C_0 << 1) >> 1
                    == object->objectIndex
                || (s8)(((FieldManager*)parentProcess)->follower->field_33C_0 << 1) >> 1
                       == object->objectIndex) {
                result = *arguments & 1;
            } else {
                result = !(*arguments & 1);
            }
            break;
        case 5:
            result = (*arguments & 1) == object->field_20C_0;
            break;
    }
    if (result) {
        script->position = (u8*)arguments[1];
    }
    return true;
}
#endif

s8 FieldEventScript::sub_80EDBC4(FieldObject* object, FieldObjectEvent* script, s32* arguments) {
    int centerX;
    int centerY;
    int centerZ;
    int moveX;
    int moveY;
    int moveZ;

    if ((arguments[0] >> 4) & 1) {
        arguments[2] <<= 4;
        arguments[3] <<= 4;
    }
    switch (arguments[1]) {
        case 0:
            if (!((arguments[0] >> 1) & 1)) {
                centerX = object->x / 256;
            } else {
                centerX = 0;
            }
            centerY = arguments[2];
            centerZ = arguments[3];
            moveX = 1;
            moveY = 0;
            moveZ = 0;
            break;
        case 1:
            centerX = arguments[2];
            if (!((arguments[0] >> 1) & 1)) {
                centerY = object->y / 256;
            } else {
                centerY = 0;
            }
            centerZ = arguments[3];
            moveX = 0;
            moveY = 1;
            moveZ = 0;
            break;
        case 2:
            centerX = arguments[2];
            centerY = arguments[3];
            if (!((arguments[0] >> 1) & 1)) {
                centerZ = (object->z + object->height) / 256;
            } else {
                centerZ = 0;
            }
            moveX = 0;
            moveY = 0;
            moveZ = 1;
            break;
    }
    if (((arguments[0] >> 2) & 3) == 0) {
        if (arguments[5] & 0x40) {
            arguments[5] = (arguments[5] & 0xF) << 4;
        } else {
            arguments[5] <<= 8;
        }
        if (arguments[5]) {
            object->sub_804794C(arguments[5]);
        }
    }
    if (object->sub_8045F04(((arguments[0] >> 2) & 3) + 3, (arguments[0] >> 1) & 1, centerX, centerY,
                            centerZ, moveX << 8, moveY << 8, moveZ << 8, 0x100, 0x100, 0x100,
                            arguments[4], arguments[5], arguments[0] & 1 ? 1 : -1, -1)) {
        script_enable_flag_2(this, object, script, NULL);
        return false;
    }
    return true;
}

// Like sub_80EDBC4, around the object arguments[2]: the axis chosen by arguments[1] takes the center
// from this object, the other two from arguments[2].
s8 FieldEventScript::sub_80EDD48(FieldObject* object, FieldObjectEvent* script, s32* arguments) {
    FieldObject* other = *(((FieldManager*)parentProcess)->objects + arguments[2]);
    int centerX;
    int centerY;
    int centerZ;
    int moveX;
    int moveY;
    int moveZ;

    switch (arguments[1]) {
        case 0:
            centerX = object->x / 256;
            centerY = other->y / 256;
            centerZ = (other->z + other->height) / 256;
            moveX = 1;
            moveY = 0;
            moveZ = 0;
            break;
        case 1:
            centerX = other->x / 256;
            centerY = object->y / 256;
            centerZ = (other->z + other->height) / 256;
            moveX = 0;
            moveY = 1;
            moveZ = 0;
            break;
        case 2:
            centerX = other->x / 256;
            centerY = other->y / 256;
            centerZ = (object->z + object->height) / 256;
            moveX = 0;
            moveY = 0;
            moveZ = 1;
            break;
    }
    if (((arguments[0] >> 1) & 3) == 0) {
        if (arguments[4] & 0x40) {
            arguments[4] = (arguments[4] & 0xF) << 4;
        } else {
            arguments[4] <<= 8;
        }
        if (arguments[4]) {
            //! \bug Passes the object index arguments[2] instead of the speed arguments[4].
            object->sub_804794C(arguments[2]);
        }
    }
    if (object->sub_8045F04(((arguments[0] >> 1) & 3) + 3, 0, centerX, centerY, centerZ, moveX << 8,
                            moveY << 8, moveZ << 8, 0x100, 0x100, 0x100, arguments[3], arguments[4],
                            arguments[0] & 1 ? 1 : -1, arguments[2])) {
        script_enable_flag_2(this, object, script, NULL);
        return false;
    }
    return true;
}

// Turns the object to a direction chosen by arguments[0]: 0 the direction arguments[1], 1 its direction
// plus arguments[1], 2 towards the object arguments[1] (-1: the leader), 3 a random direction.
s8 FieldEventScript::sub_80EDEB4(FieldObject* object, FieldObjectEvent* script, s32* arguments) {
    u8 direction;

    if (script->flags & 2) {
        object->sub_8046980();
        script->flags &= ~2;
    }
    if (script->flags & 0x40) {
        object->sub_8046A10();
        script->flags &= ~0x40;
    }
    switch (*arguments++) {
        case 0:
            direction = *arguments;
            break;
        case 1:
            direction = (object->direction + *arguments) & 7;
            break;
        case 2: {
            FieldObject* other;

            if (*arguments == -1) {
                *arguments = ((FieldManager*)parentProcess)->luigiLeads;
            }
            other = *(((FieldManager*)parentProcess)->objects + *arguments);
            direction = sub_80EA670(object->x, object->y, other->x, other->y);
            break;
        }
        case 3:
            direction = sub_81DD77C(8, sub_8199F30());
            break;
    }
    object->sub_80478AC(direction);
    return true;
}
