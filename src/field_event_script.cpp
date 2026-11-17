#include "global.h"
#include "common.h"
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
