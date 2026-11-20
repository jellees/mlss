#include "global.h"
#include "common.h"
#include "process.h"
#include "event/event.h"
#include "event/text080E9D50.h"

// Opens a window (sub_80E5BCC) for arguments[5] (texts per language). arguments[1] is the y position,
// arguments[2] the height index (low byte, word_83BA4B4) and width (next byte, 0 = the text's own
// width). The window is centred horizontally and kept on screen.
s8 sub_80E9D50(void* engine, void* window, ScriptSlot* script, s32* arguments) {
    s32 y = arguments[1];
    u16 flags = ((arguments[3] << 8) & 0x800) | (arguments[3] & 3);
    u16 height = word_83BA4B4[(u8)arguments[2]];
    u16 width = (arguments[2] >> 8) & 0xFF;
    s32 x;

    if (width == 0) {
        width = (sub_80E9310(window, (u8**)arguments[5]) >> 16) & 0xFF;
    }
    x = 0x70 - (width + 2) * 4;
    if (x < 0) {
        x = 10;
    } else if (x > 0xE8 - width * 8) {
        x = 0xE8 - width * 8;
    }
    if (y < 0) {
        y = 10;
    } else if (y > 0x94 - height * 8) {
        y = 0x94 - height * 8;
    }
    sub_80E5BCC(window, arguments[0], x, y, width, height, 0, flags, arguments[4], arguments[5]);
    return TRUE;
}

// Changes the two flags of the process at dword_3000D44 (arguments[0]): 0 clears bit 0 and 3 sets
// bit 1, each disabling the process if neither bit is set afterwards; 1 sets bit 0 (and calls
// sub_801BC40) and 2 clears bit 1, each enabling the process.
s8 sub_80E9E10(void* engine, ScriptSlot* script, s32* arguments) {
    switch (*arguments) {
        case 0:
            dword_3000D44->field_28_0 = 0;
            if (!(dword_3000D44->field_28_0 | dword_3000D44->field_28_1)) {
                ((Process*)dword_3000D44)->disable();
            }
            break;

        case 1:
            dword_3000D44->field_28_0 = 1;
            sub_801BC40(dword_3000D44, dword_3000D44->field_20, dword_3000D44->field_28_2);
            ((Process*)dword_3000D44)->enable();
            break;

        case 2:
            dword_3000D44->field_28_1 = 0;
            ((Process*)dword_3000D44)->enable();
            break;

        case 3:
            dword_3000D44->field_28_1 = 1;
            if (!(dword_3000D44->field_28_0 | dword_3000D44->field_28_1)) {
                ((Process*)dword_3000D44)->disable();
            }
            break;
    }
    return TRUE;
}

// Raises (arguments[2] = 0) or lowers (1) field_E (arguments[1] = 0) or field_14 (1) of a brother's
// struc_3000FF4 (arguments[0] = 0 or 1, or both if bit 1 is set) by arguments[3], up to its maximum
// and down to 1 for field_E or 0 for field_14.
s8 sub_80E9EE0(void* engine, ScriptSlot* script, s32* arguments) {
    s16 i;
    struc_3000FF4* entry;
    s16 value;

    if (!(arguments[0] & 2)) {
        entry = &dword_3000FF4[arguments[0]];

        arguments++;
        switch (*arguments++) {
            case 0: {
                value = entry->field_E;

                switch (*arguments++) {
                    case 0:
                        value += *arguments;
                        if (value > entry->field_12) {
                            value = entry->field_12;
                        }
                        break;

                    case 1:
                        value -= *arguments;
                        if (value <= 0) {
                            value = 1;
                        }
                        break;
                }
                entry->field_E = value;
                break;
            }

            case 1: {
                value = entry->field_14;

                switch (*arguments++) {
                    case 0:
                        value += *arguments;
                        if (value > entry->field_18) {
                            value = entry->field_18;
                        }
                        break;

                    case 1:
                        value -= *arguments;
                        if (value < 0) {
                            value = 0;
                        }
                        break;
                }
                entry->field_14 = value;
                break;
            }
        }
    } else {
        entry = dword_3000FF4;

        arguments++;
        switch (*arguments++) {
            case 0:
                switch (*arguments++) {
                    case 0:
                        for (i = 2; i > 0; i--, entry++) {
                            value = entry->field_E + *arguments;

                            if (value > entry->field_12) {
                                value = entry->field_12;
                            }
                            entry->field_E = value;
                        }
                        break;

                    case 1:
                        for (i = 2; i > 0; i--, entry++) {
                            value = entry->field_E - *arguments;

                            if (value <= 0) {
                                value = 1;
                            }
                            entry->field_E = value;
                        }
                        break;
                }
                break;

            case 1:
                switch (*arguments++) {
                    case 0:
                        for (i = 2; i > 0; i--, entry++) {
                            value = entry->field_14 + *arguments;

                            if (value > entry->field_18) {
                                value = entry->field_18;
                            }
                            entry->field_14 = value;
                        }
                        break;

                    case 1:
                        for (i = 2; i > 0; i--, entry++) {
                            value = entry->field_14 - *arguments;

                            if (value < 0) {
                                value = 0;
                            }
                            entry->field_14 = value;
                        }
                        break;
                }
                break;
        }
    }
    return TRUE;
}

// Sets (arguments[1] = 0) or clears one of the 9 flags (arguments[2]; 9-17 for the second brother) in
// a brother's struc_3000FF4. Does nothing unless arguments[0] is 0. Only the first group matches as
// a ternary (both branches share one store); the other two only match as if/else.
s8 sub_80EA064(void* engine, ScriptSlot* script, s32* arguments) {
    if (*arguments++ == 0) {
        struc_3000FF4* entry = dword_3000FF4;
        u16 clear = *arguments++;
        s16 index = *arguments;

        if (index > 8) {
            entry++;
            index -= 9;
        }
        if (index <= 2) {
            entry->field_7_2 =
                clear ? entry->field_7_2 & ~(1 << index) : entry->field_7_2 | (1 << index);
        } else if (index <= 5) {
            index -= 3;
            if (clear) {
                entry->field_8_0 &= ~(1 << index);
            } else {
                entry->field_8_0 |= 1 << index;
            }
        } else {
            index -= 6;
            if (clear) {
                entry->field_8_6 &= ~(1 << index);
            } else {
                entry->field_8_6 |= 1 << index;
            }
        }
    }
    return TRUE;
}

// Changes the inventory in the dword_3000FF4 block and stores whether it worked in the script
// value arguments[0] (unless it is negative). arguments[1] is the mode:
// 0: add (arguments[3] = 0, via sub_8122E30) or remove (1) arguments[4] of item arguments[2], whose
//    bits 7-9 select the count array (category 5 is the bit array of mode 2 instead);
// 1: add (arguments[3] = 0) or remove (1) arguments[4] coins (0-9999);
// 2: set (arguments[3] = 0) or clear (1) bit arguments[2] of the bit array at 0xB2, if it isn't
// already.
//! \bug An unknown item category uses an unset count pointer, and an unknown operation in mode 1
//! stores an unset value.
//! Possible fake match: the goto from item category 5 into mode 2. The case bodies are laid out in
//! the order 0, 1, 2, so case 0 can't fall through into case 2 (156-165 lines off), and a copy of
//! the bit code in category 5 would still have to skip the count code after the inner switch,
//! which unknown categories run.
s8 sub_80EA144(void* engine, ScriptSlot* script, s32* arguments, u32* engineLocals) {
    s32 destination = *arguments++;
    bool result;
    s16 value;
    u8* pointer;

    switch (*arguments++) {
        case 0: {
            s32 id = *arguments++;

            switch (id >> 7) {
                case 1:
                    pointer = (u8*)dword_3000FF4 + ((id & 0x7F) + 0xBA);
                    break;

                case 2:
                    pointer = (u8*)dword_3000FF4 + ((id & 0x7F) + 0xF2);
                    break;

                case 4:
                    pointer = (u8*)dword_3000FF4 + ((id & 0x7F) + 0x8A);
                    break;

                case 3:
                    pointer = (u8*)dword_3000FF4 + ((id & 0x7F) + 0xAA);
                    break;

                case 6:
                    pointer = (u8*)dword_3000FF4 + ((id & 0x7F) + 0x12A);
                    break;

                case 5:
                    arguments--;
                    goto bits;
            }
            value = *pointer == 0xFF ? 0 : *pointer;
            switch (*arguments++) {
                case 0:
                    value += *arguments;
                    sub_8122E30(id >> 7, id & 0x7F, *arguments);
                    result = *pointer == value;
                    break;

                case 1:
                    value -= *arguments;
                    if (value < 0) {
                        *pointer = 0;
                        result = FALSE;
                    } else {
                        *pointer = value;
                        result = TRUE;
                    }
                    break;
            }
            break;
        }

        case 1:
            arguments++;
            switch (*arguments++) {
                case 0:
                    value = *(u16*)((u8*)dword_3000FF4 + 0x88) + *arguments;
                    if (value > 9999) {
                        value = 9999;
                        result = FALSE;
                    } else {
                        result = TRUE;
                    }
                    break;

                case 1:
                    value = *(u16*)((u8*)dword_3000FF4 + 0x88) - *arguments;
                    if (value < 0) {
                        value = 0;
                        result = FALSE;
                    } else {
                        result = TRUE;
                    }
                    break;
            }
            *(u16*)((u8*)dword_3000FF4 + 0x88) = value;
            break;

        case 2:
        bits:
            pointer = (u8*)dword_3000FF4 + (((arguments[0] & 0x7F) / 8) + 0xB2);
            value = 1 << (arguments[0] % 8);

            switch (arguments[1]) {
                case 0:
                    if (!(*pointer & value)) {
                        *pointer |= value;
                        result = TRUE;
                    } else {
                        result = FALSE;
                    }
                    break;

                case 1:
                    if (*pointer & value) {
                        *pointer &= ~value;
                        result = TRUE;
                    } else {
                        result = FALSE;
                    }
                    break;
            }
            break;
    }
    if (destination >= 0) {
        CommonEvent::setVariable(engineLocals, script->field_18, 0, 0, destination, result);
    }
    return TRUE;
}
