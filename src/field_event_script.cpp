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
    u8 command[0x34];

    if (!(script->field_A0 & 1)) {
        return FALSE;
    }
    while (sub_80EB838(this, object, script) == 0) {
        script_read_next_line(script, command, dword_3000FC0, (u8*)dword_3000FD0 + 0x4B0,
                              (u8*)dword_3000FC0 + 0x38C, 0);
        if (!fld_script_execute_next_command(this, object, script, command)) {
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
