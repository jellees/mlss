#include "global.h"
#include "common.h"
#include "event/event.h"

// Reads the next command of the script: stores its opcode in field_A7 and decodes its arguments
// into command, then returns the new read position. The arguments are bit-packed (bitPosition is
// the position in the current byte, 8 = byte-aligned); the tables in dword_3000FC0 give their count
// and sizes per opcode. The first value read is a mask of the arguments that are variable numbers
// to look up (sub_80E9CA8, which uses arg3-arg5) instead of literal values. arg2 is unused (the
// callers pass dword_3000FC0).
//! Possible fake match: the `slot` copy of `script` (the original keeps the parameter on the stack
//! for the sub_80E9CA8 call and a copy in r5 for everything else).
u8* script_read_next_line(ScriptSlot* script, s32* command, void* arg2, void* arg3, void* arg4,
                          int arg5) {
    ScriptSlot* slot = script;
    s16 bitPosition = 8;
    u32 variableMask;
    int count;
    u8* sizes;
    u8* signs;
    s16 i;
    u8* position = slot->field_0;

    if (position != 0) {
        slot->field_14 = position;
        slot->field_A7 = *position;
        slot->field_0 = position + 1;

        count = dword_3000FC0->field_560[slot->field_A7];
        if (count != 0) {
            variableMask = dword_3000FC4(slot, &bitPosition, count);
        }
        if (dword_3000FC0->field_55C[slot->field_A7] != 0) {
            *command++ = dword_3000FC4(slot, &bitPosition, 13);
        }
        if (count != 0) {
            u16 offset = dword_3000FC0->field_56C[slot->field_A7];

            sizes = dword_3000FC0->field_564 + offset;
            signs = dword_3000FC0->field_568 + offset;

            for (i = 0; i < count; i++) {
                if (!(*sizes & 0x80)) {
                    s32 value = dword_3000FC4(slot, &bitPosition, *sizes);

                    *command = value;
                    // Variable, signed value or unsigned value
                    if (variableMask & (1 << i)) {
                        *command = sub_80E9CA8(arg3, script->field_18, arg4, arg5, value);
                    } else if (*signs == 1) {
                        if ((value >> (*sizes - 1)) & 1) {
                            *command = (-1 << *sizes) | value;
                        }
                    }
                } else {
                    // Byte-aligned 32-bit value
                    if (bitPosition != 8) {
                        slot->field_0++;
                    }
                    *command = *slot->field_0++;
                    *command |= *slot->field_0++ << 8;
                    *command |= *slot->field_0++ << 16;
                    *command |= *slot->field_0++ << 24;
                    bitPosition = 8;
                }
                sizes++;
                signs++;
                command++;
            }
        }
        if (bitPosition != 8) {
            slot->field_0++;
        }
    }
    return slot->field_0;
}
