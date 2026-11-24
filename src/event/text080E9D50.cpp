#include "global.h"
#include "common.h"
#include "process.h"
#include "sprite.h"
#include "game_mode.h"
#include "event/event.h"
#include "event/text080E9D50.h"
#include "event/field_event_script.h"

// Opens a window (sub_80E5BCC) for arguments[5] (texts per language). arguments[1] is the y position,
// arguments[2] the height index (low byte, word_83BA4B4) and width (next byte, 0 = the text's own
// width). The window is centred horizontally and kept on screen.
s8 EventBase::sub_80E9D50(void* window, EventThread* thread, s32* arguments) {
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
    return true;
}

// Changes the two flags of the process at dword_3000D44 (arguments[0]): 0 clears bit 0 and 3 sets
// bit 1, each disabling the process if neither bit is set afterwards; 1 sets bit 0 (and calls
// sub_801BC40) and 2 clears bit 1, each enabling the process.
s8 EventBase::sub_80E9E10(EventThread* thread, s32* arguments) {
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
    return true;
}

// Raises (arguments[2] = 0) or lowers (1) field_E (arguments[1] = 0) or field_14 (1) of a brother's
// struc_3000FF4 (arguments[0] = 0 or 1, or both if bit 1 is set) by arguments[3], up to its maximum
// and down to 1 for field_E or 0 for field_14.
s8 EventBase::sub_80E9EE0(EventThread* thread, s32* arguments) {
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
    return true;
}

// Sets (arguments[1] = 0) or clears one of the 9 flags (arguments[2]; 9-17 for the second brother) in
// a brother's struc_3000FF4. Does nothing unless arguments[0] is 0. Only the first group matches as
// a ternary (both branches share one store); the other two only match as if/else.
s8 EventBase::sub_80EA064(EventThread* thread, s32* arguments) {
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
    return true;
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
s8 EventBase::sub_80EA144(EventThread* thread, s32* arguments, u32* engineRegisters) {
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
                        result = false;
                    } else {
                        *pointer = value;
                        result = true;
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
                        result = false;
                    } else {
                        result = true;
                    }
                    break;

                case 1:
                    value = *(u16*)((u8*)dword_3000FF4 + 0x88) - *arguments;
                    if (value < 0) {
                        value = 0;
                        result = false;
                    } else {
                        result = true;
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
                        result = true;
                    } else {
                        result = false;
                    }
                    break;

                case 1:
                    if (*pointer & value) {
                        *pointer &= ~value;
                        result = true;
                    } else {
                        result = false;
                    }
                    break;
            }
            break;
    }
    if (destination >= 0) {
        CommonEvent::setVariable(engineRegisters, thread->registers, 0, 0, destination, result);
    }
    return true;
}

// Stores in the script value arguments[0] the coins (arguments[1] = 0xFF), the count of item
// arguments[1] (bits 7-9 select the count array; 0xFF counts as 0) or, for item category 5, its bit
// in the bit array at 0xB2.
//! \bug An unknown item category stores an unset value.
s8 EventBase::sub_80EA358(EventThread* thread, s32* arguments, u32* engineRegisters) {
    s32 destination = *arguments++;
    u32 value;

    if (*arguments == 0xFF) {
        value = *(u16*)((u8*)dword_3000FF4 + 0x88);
    } else {
        switch (*arguments >> 7) {
            case 1:
                value = ((u8*)dword_3000FF4)[(*arguments & 0x7F) + 0xBA];
                break;

            case 2:
                value = ((u8*)dword_3000FF4)[(*arguments & 0x7F) + 0xF2];
                break;

            case 4:
                value = ((u8*)dword_3000FF4)[(*arguments & 0x7F) + 0x8A];
                break;

            case 3:
                value = ((u8*)dword_3000FF4)[(*arguments & 0x7F) + 0xAA];
                break;

            case 6:
                value = ((u8*)dword_3000FF4)[(*arguments & 0x7F) + 0x12A];
                break;

            case 5:
                value =
                    (((u8*)dword_3000FF4)[((*arguments & 0x7F) >> 3) + 0xB2] >> (*arguments % 8)) & 1;
                break;
        }
        if (value == 0xFF) {
            value = 0;
        }
    }

    CommonEvent::setVariable(engineRegisters, thread->registers, 0, 0, destination, value);

    return true;
}

// Steps the counter on top of the thread's counter stack: arguments[0] (without bits 3-4) 3 or 4
// increments or decrements it before the test, 1 or 2 after it. If testCondition
// (arguments[1], arguments[2], counter) holds, the thread jumps to arguments[3]. Bits 3-4 of
// arguments[0] pop the counter: 2 when the condition holds, 3 when it doesn't.
s8 EventBase::sub_80EA478(EventThread* thread, s32* arguments) {
    u8* depth = &thread->field_A6;
    s32* counter = thread->counters + *depth - 1;
    u8 mode = arguments[0] & ~0x18;

    if (mode == 3) {
        (*counter)++;
    } else if (mode == 4) {
        (*counter)--;
    }

    if (testCondition(arguments[1], arguments[2], *counter)) {
        thread->position = (u8*)arguments[3];
        if ((arguments[0] & 0x18) == 0x10) {
            (*depth)--;
            *counter = 0;
            return true;
        }
    } else if ((arguments[0] & 0x18) == 0x18) {
        (*depth)--;
        *counter = 0;
        return true;
    }

    if (mode == 1) {
        (*counter)++;
    } else if (mode == 2) {
        (*counter)--;
    }

    return true;
}

/**
 * Sets the script the thread runs when its current script ends.
 *
 * - position: Start of the script.
 * - end: End of the script (NULL: until it ends itself).
 * - flags: Thread flags to use.
 * - parentIndex: Parent thread (slot 0-3, or field object index + 4; 0xFF: none).
 */
void EventBase::setNextScript(EventThread* thread, u8* position, u8* end, u16 flags, u8 parentIndex) {
    thread->nextPosition = position;
    thread->nextEndPosition = end;
    thread->nextFlags = flags;
    thread->nextParentIndex = parentIndex;
}

/**
 * Sets the script the thread runs and clears its return position.
 *
 * - position: Start of the script.
 * - end: End of the script (NULL: until it ends itself).
 * - flags: Thread flags.
 * - parentIndex: Parent thread (slot 0-3, or field object index + 4; 0xFF: none).
 */
void EventBase::setCurrentScript(EventThread* thread, u8* position, u8* end, u16 flags,
                                 u8 parentIndex) {
    thread->position = position;
    thread->endPosition = end;
    thread->returnPosition = NULL;
    thread->flags = flags;
    thread->parentIndex = parentIndex;
}

// Clears the next script (setNextScript). With flag 8 set it first clears flag 4 of the waiting
// thread.
//! \bug Its callers pass the new script position as the waiting thread.
void EventBase::clearNextScript(EventThread* thread, EventThread* waiting) {
    if (thread->flags & 8) {
        waiting->flags &= ~4;
    }
    thread->nextEndPosition = NULL;
    thread->nextPosition = NULL;
    thread->nextParentIndex = 0;
    thread->nextFlags = 0;
}

// Replaces the next script (setNextScript).
void EventBase::replaceNextScript(EventThread* thread, u8* position, u8* end, u16 flags,
                                  u8 parentIndex) {
    clearNextScript(thread, (EventThread*)position);
    setNextScript(thread, position, end, flags, parentIndex);
}

// Starts a script (setCurrentScript) and clears the next one.
void EventBase::startScript(EventThread* thread, u8* position, u8* end, u16 flags, u8 parentIndex) {
    clearNextScript(thread, (EventThread*)position);
    setCurrentScript(thread, position, end, flags, parentIndex);
}

// Flips the sprite horizontally if flip is set. With frames set the thread waits that many frames
// (waitFrames, flag 0x20) and the animation stops at its end, otherwise it loops. Returns whether
// frames is 0.
u8 EventBase::sub_80EA60C(EventThread* thread, Sprite* sprite, u8 frames, u8 flip) {
    sprite->hFlip ^= flip;
    if (frames) {
        thread->waitFrames = frames;
        thread->flags |= 0x20;
        sprite->animationEndAction = ANIMATION_END_STOP;
    } else {
        sprite->animationEndAction = ANIMATION_END_LOOP;
    }
    return frames == 0;
}

// Direction (0-7, 0 = up, clockwise) from (x, y) to (targetX, targetY). The distances are halved until
// they fit in 16 bits for sub_8199480.
u8 EventBase::sub_80EA670(s32 x, s32 y, s32 targetX, s32 targetY) {
    bool negativeX;
    bool negativeY;

    x = targetX - x;
    y = targetY - y;
    negativeX = false;
    negativeY = false;
    if (x < 0) {
        negativeX = true;
        x = -x;
    }
    if (y < 0) {
        negativeY = true;
        y = -y;
    }
    while ((x | y) & 0xFFFF8000) {
        x >>= 1;
        y >>= 1;
    }
    if (negativeX) {
        x = -x;
    }
    if (negativeY) {
        y = -y;
    }
    return ((sub_8199480(x, y) + 0x50) / 32) & 7;
}

// Converts the direction arguments[0] (0-7, 0 = up, clockwise; 8 and 9 = up and down) and
// distance arguments[1] into x, y and z offsets, in 1/16 pixels if arguments[2] is set.
void EventBase::sub_80EA6D4(s32* arguments, s32* x, s32* y, s32* z) {
    *x = *y = *z = 0;

    switch (*arguments++) {
        case 0:
            *y = -arguments[0];
            break;

        case 1:
            *x = arguments[0];
            *y = -arguments[0];
            break;

        case 2:
            *x = arguments[0];
            break;

        case 3:
            *x = arguments[0];
            *y = arguments[0];
            break;

        case 4:
            *y = arguments[0];
            break;

        case 5:
            *x = -arguments[0];
            *y = arguments[0];
            break;

        case 6:
            *x = -arguments[0];
            break;

        case 7:
            *x = -arguments[0];
            *y = -arguments[0];
            break;

        case 8:
            *z = arguments[0];
            break;

        case 9:
            *z = -arguments[0];
            break;
    }
    if (arguments[1]) {
        *x <<= 4;
        *y <<= 4;
        *z <<= 4;
    }
}

// Counts down the thread's wait (field_9C) and clears flag 0x10 when it ends.
void EventBase::sub_80EA778(EventThread* thread) {
    if (--thread->waitFrames == 0) {
        thread->flags &= ~0x10;
    }
}

// Compares left with right (operations 0-5: ==, !=, <, >, <=, >=) or tests them bitwise (8-10: left
// | right, left & right, left ^ right; 11: !left; 12: ~left). Operations 6, 7 and above 12 are false.
u8 EventBase::testCondition(u8 operation, s32 left, s32 right) {
    switch (operation) {
        case 0:
            return left == right;
        case 1:
            return left != right;
        case 2:
            return left < right;
        case 3:
            return left > right;
        case 4:
            return left <= right;
        case 5:
            return left >= right;
        case 8:
            return (left | right) != 0;
        case 9:
            return (left & right) != 0;
        case 10:
            return (left ^ right) != 0;
        case 11:
            return !left;
        case 12:
            return ~left != 0;
    }

    return false;
}

// Stores gGameState.field_8C0 in the script value arguments[0] if arguments[1] is 0.
//! \bug Any other arguments[1] stores an unset value.
s8 EventBase::sub_80EA854(EventThread* thread, s32* arguments, u32* engineRegisters) {
    u32 value;

    if (arguments[1] == 0) {
        value = gGameState.field_8C0;
    }
    CommonEvent::setVariable(engineRegisters, thread->registers, 0, 0, arguments[0], value);
    return true;
}

// Calls sub_801ABE8(arguments[1], arguments[2], arguments[3]) if arguments[0] is 0.
s8 EventBase::sub_80EA88C(EventThread* thread, s32* arguments) {
    if (*arguments++ == 0) {
        sub_801ABE8(arguments[0], arguments[1], arguments[2]);
    }
    return true;
}

// Resets the game (arguments[0] = 0) or calls sub_801ADC0, sub_801AD80 or sub_801AD3C (1-3).
s8 EventBase::sub_80EA8A4(EventThread* thread, s32* arguments) {
    switch (arguments[0]) {
        case 0:
            reset_game_80189C4();
            break;

        case 1:
            sub_801ADC0();
            break;

        case 2:
            sub_801AD80();
            break;

        case 3:
            sub_801AD3C();
            break;
    }
    return true;
}

// Jumps to arguments[2] if testCondition(arguments[0], arguments[1], compareValue) holds.
s8 EventBase::commandCompareJump(EventThread* thread, s32* arguments) {
    if (testCondition(arguments[0], arguments[1], thread->compareValue)) {
        thread->position = (u8*)arguments[2];
    }
    return true;
}

// Pops the counter stack.
s8 EventBase::sub_80EA904(EventThread* thread) {
    u8* depth = &thread->field_A6;

    (*depth)--;
    *(thread->counters + *depth) = 0;
    return true;
}

/**
 * Sets the value used by commandCompareJump to compare.
 */
s8 EventBase::commandSetCompareValue(EventThread* thread, s32* arguments) {
    thread->compareValue = arguments[0];
    return true;
}

// Pushes arguments[0] on the counter stack.
s8 EventBase::sub_80EA928(EventThread* thread, s32* arguments) {
    u8* depth = &thread->field_A6;

    *(thread->counters + *depth) = arguments[0];
    (*depth)++;
    return true;
}

// Jumps to one of the arguments[0] positions after it, chosen at random (0 = don't jump).
s8 EventBase::sub_80EA940(EventThread* thread, s32* arguments) {
    u8* position = (u8*)arguments[sub_81DD77C(arguments[0], sub_8199F30()) + 1];

    if (position != NULL) {
        thread->position = position;
    }
    return true;
}

// Stores a random value below arguments[1] in the script value arguments[0].
s8 EventBase::sub_80EA968(EventThread* thread, s32* arguments, u32* engineRegisters) {
    CommonEvent::setVariable(engineRegisters, thread->registers, 0, 0, arguments[0],
                             sub_81DD77C(arguments[1], sub_8199F30()));
    return true;
}

// Calls GameMode::sub_801B0AC(arguments[0]).
s8 EventBase::sub_80EA9A8(EventThread* thread, s32* arguments) {
    GameMode::sub_801B0AC(arguments[0]);
    return true;
}

// Jumps to arguments[3] depending on the keys in gGameState.rawInput.repeated masked with arguments[2]:
// arguments[1] 0 checks for none of them, 1 for all of them (switched on as operation 11 or 12 of
// testCondition, !left and ~left). With bit 0 of arguments[0] set the jump
// is taken when the check fails, otherwise when it holds.
s8 EventBase::sub_80EA9B8(EventThread* thread, s32* arguments) {
    u16 keys = gGameState.rawInput.repeated;
    u32 expected = arguments[2];
    u32 mask = expected;

    switch (arguments[1] + 11) {
        case 11:
            expected = 0;
            break;

        case 12:
            expected = ~expected;
            mask = expected;
            break;
    }
    if (arguments[0] & 1) {
        if ((mask & keys) != expected) {
            thread->position = (u8*)arguments[3];
        }
    } else {
        if ((mask & keys) == expected) {
            thread->position = (u8*)arguments[3];
        }
    }
    return true;
}

// Like sub_80EA9B8, but with gGameState.rawInput.held, or rawInput.pressed if arguments[0] >> 1 is 0.
s8 EventBase::sub_80EAA04(EventThread* thread, s32* arguments) {
    u16 keys = gGameState.rawInput.held;
    u32 expected;
    u32 mask;

    if ((arguments[0] >> 1) == 0) {
        keys = gGameState.rawInput.pressed;
    }
    expected = arguments[2];
    mask = expected;
    switch (arguments[1] + 11) {
        case 11:
            expected = 0;
            break;

        case 12:
            expected = ~expected;
            mask = expected;
            break;
    }
    if (arguments[0] & 1) {
        if ((mask & keys) != expected) {
            thread->position = (u8*)arguments[3];
        }
    } else {
        if ((mask & keys) == expected) {
            thread->position = (u8*)arguments[3];
        }
    }
    return true;
}

// Stores gGameState.rawInput.repeated in the script value arguments[0].
s8 EventBase::sub_80EAA5C(EventThread* thread, s32* arguments, u32* engineRegisters) {
    CommonEvent::setVariable(engineRegisters, thread->registers, 0, 0, arguments[0],
                             gGameState.rawInput.repeated);
    return true;
}

// Stores gGameState.rawInput.pressed (arguments[1] = 0), rawInput.held (1) or 0 in the script value
// arguments[0].
s8 EventBase::sub_80EAA84(EventThread* thread, s32* arguments, u32* engineRegisters) {
    u16 keys = arguments[1];

    if (keys == 0) {
        keys = gGameState.rawInput.pressed;
    } else if (keys == 1) {
        keys = gGameState.rawInput.held;
    } else {
        keys = 0;
    }
    CommonEvent::setVariable(engineRegisters, thread->registers, 0, 0, arguments[0], keys);
    return true;
}

// Sets the key mask (gGameState.enabledKeys) to the keys not in arguments[0] and applies it
// (sub_8018818).
s8 EventBase::sub_80EAACC(EventThread* thread, s32* arguments) {
    gGameState.enabledKeys = ~arguments[0] & KEYS_MASK;
    sub_8018818();
    return true;
}

// Sets gGameState.field_78_10 to arguments[0].
s8 EventBase::sub_80EAB00(EventThread* thread, s32* arguments) {
    gGameState.field_78_10 = arguments[0];
    return true;
}

// Sets the flags arguments[1] in gGameState.field_7C (arguments[0] = 0), or sets (1) or clears (2)
// them in gGameState.field_7A.
s8 EventBase::sub_80EAB20(EventThread* thread, s32* arguments) {
    switch (*arguments++) {
        case 0:
            gGameState.field_7C |= arguments[0];
            break;

        case 1:
            gGameState.field_7A |= arguments[0];
            break;

        case 2:
            gGameState.field_7A &= ~arguments[0];
            break;
    }
    return true;
}

// Jumps to arguments[4] if testCondition(arguments[0], arguments[1], arguments[2]) equals
// arguments[3].
s8 EventBase::commandConditionalJump(EventThread* thread, s32* arguments) {
    if (testCondition(arguments[0], arguments[1], arguments[2]) == arguments[3]) {
        thread->position = (u8*)arguments[4];
    }
    return true;
}

/**
 * Calculates arguments[2] OP arguments[3] and stores the result in a variable.
 *
 * - arguments[0]: Variable ID for the result.
 * - arguments[1]: Operation.
 *   - 0 = Assign (arguments[2] only).
 *   - 1 = Add.
 *   - 2 = Subtract.
 *   - 3 = Multiply.
 *   - 4 = Divide.
 *   - 5 = Modulo.
 *   - 6 = Shift left.
 *   - 7 = Shift right (arithmetic).
 *   - 8 = Bitwise AND.
 *   - 9 = Bitwise OR.
 *   - 10 = Bitwise XOR.
 *   - 11 = Logical NOT (arguments[2] only).
 *   - 12 = Bitwise NOT (arguments[2] only).
 * - arguments[2]: Left operand.
 * - arguments[3]: Right operand.
 */
s8 EventBase::commandCalculate(EventThread* thread, s32* arguments, u32* engineRegisters,
                               u32* engineFlags, u32* scriptFlags) {
    switch (arguments[1]) {
        case 0:
            break;

        case 1:
            arguments[2] = arguments[2] + arguments[3];
            break;

        case 2:
            arguments[2] = arguments[2] - arguments[3];
            break;

        case 3:
            arguments[2] = arguments[2] * arguments[3];
            break;

        case 4:
            arguments[2] = arguments[2] / arguments[3];
            break;

        case 5:
            arguments[2] = arguments[2] % arguments[3];
            break;

        case 6:
            arguments[2] = arguments[2] << arguments[3];
            break;

        case 7:
            arguments[2] = arguments[2] >> arguments[3];
            break;

        case 8:
            arguments[2] = arguments[2] & arguments[3];
            break;

        case 9:
            arguments[2] = arguments[2] | arguments[3];
            break;

        case 10:
            arguments[2] = arguments[2] ^ arguments[3];
            break;

        case 11:
            arguments[2] = !arguments[2];
            break;

        case 12:
            arguments[2] = ~arguments[2];
            break;
    }

    CommonEvent::setVariable(engineRegisters, thread->registers, engineFlags, scriptFlags, arguments[0],
                             arguments[2]);
    return true;
}

// Stores field_E (arguments[2] = 0), field_12 (1), field_14 (2) or field_18 (3) of brother
// arguments[1]'s struc_3000FF4 in the script value arguments[0].
//! \bug Any other arguments[2] stores an unset value.
s8 EventBase::sub_80EAC78(EventThread* thread, s32* arguments, u32* engineRegisters) {
    s32 destination = *arguments++;
    struc_3000FF4* entry = &dword_3000FF4[*arguments++];
    u16 value;

    switch (*arguments) {
        case 0:
            value = entry->field_E;
            break;

        case 1:
            value = entry->field_12;
            break;

        case 2:
            value = entry->field_14;
            break;

        case 3:
            value = entry->field_18;
            break;
    }
    CommonEvent::setVariable(engineRegisters, thread->registers, 0, 0, destination, value);
    return true;
}

// Stores field_22 (arguments[1] = 0), field_23 (1), field_25 (2) or field_24 (3) of dword_3000D44
// in the script value arguments[0].
s8 EventBase::sub_80EACDC(EventThread* thread, s32* arguments, u32* engineRegisters) {
    switch (arguments[1]) {
        case 0:
            CommonEvent::setVariable(engineRegisters, thread->registers, 0, 0, arguments[0],
                                     dword_3000D44->field_22);
            break;

        case 1:
            CommonEvent::setVariable(engineRegisters, thread->registers, 0, 0, arguments[0],
                                     dword_3000D44->field_23);
            break;

        case 2:
            CommonEvent::setVariable(engineRegisters, thread->registers, 0, 0, arguments[0],
                                     dword_3000D44->field_25);
            break;

        case 3:
            CommonEvent::setVariable(engineRegisters, thread->registers, 0, 0, arguments[0],
                                     dword_3000D44->field_24);
            break;
    }
    return true;
}

// Sets field_26 and field_27 of dword_3000D44 to arguments[0] and arguments[1].
s8 EventBase::sub_80EAD7C(EventThread* thread, s32* arguments) {
    dword_3000D44->field_26 = *arguments++;
    dword_3000D44->field_27 = *arguments;
    return true;
}

// Sets field_29 of dword_3000D44 to 1 if arguments[0] is 0, otherwise to -1.
s8 EventBase::sub_80EAD98(EventThread* thread, s32* arguments) {
    if (arguments[0] == 0) {
        dword_3000D44->field_29 = 1;
    } else {
        dword_3000D44->field_29 = -1;
    }
    return true;
}

// Calls sub_801BBE4 on dword_3000D44 with arguments[0-2].
s8 EventBase::sub_80EADC4(EventThread* thread, s32* arguments) {
    sub_801BBE4(dword_3000D44, arguments[0], arguments[1], arguments[2]);
    return true;
}

// Uncalled.
s8 EventBase::sub_80EADE8() {
    return true;
}

// Waits (repeats the command, returning false) while an active entry has the id arguments[0]
// (0x3F: any id).
s8 EventBase::sub_80EADEC(struc_3000FC8* entries, EventThread* thread, s32* arguments) {
    s16 i;
    struc_3000FC8Entry* entry;

    for (i = 0, entry = entries->entries; i <= 3; i++, entry++) {
        if (entry->field_F && (entry->field_C == arguments[0] || arguments[0] == 0x3F)) {
            thread->position = thread->commandPosition;
            return false;
        }
    }
    return true;
}

// Uncalled.
s8 EventBase::sub_80EAE2C() {
    return true;
}

// Hides the first active entry with the id arguments[0] (sub_80E8EE0).
s8 EventBase::sub_80EAE30(struc_3000FC8* entries, EventThread* thread, s32* arguments) {
    s16 i;
    struc_3000FC8Entry* entry;

    for (i = 0, entry = entries->entries; i <= 3; i++, entry++) {
        if (entry->field_F && entry->field_C == arguments[0]) {
            sub_80E8EE0(entries, i);
            break;
        }
    }
    return true;
}

// Stores dword_3000FB8->field_30 in the script value arguments[0].
s8 EventBase::sub_80EAE70(EventThread* thread, s32* arguments, u32* engineRegisters) {
    CommonEvent::setVariable(engineRegisters, thread->registers, 0, 0, arguments[0],
                             dword_3000FB8->field_30);
    return true;
}

// Jumps to arguments[1] if dword_3000FB8->field_30 is arguments[0].
s8 EventBase::sub_80EAE9C(EventThread* thread, s32* arguments) {
    if (dword_3000FB8->field_30 == arguments[0]) {
        thread->position = (u8*)arguments[1];
    }
    return true;
}

// Jumps to arguments[1] if bit arguments[0] of windows->field_4->field_1B2 is set.
s8 EventBase::sub_80EAEBC(struc_3000FCC* windows, EventThread* thread, s32* arguments) {
    if ((windows->field_4->field_1B2 >> *arguments++) & 1) {
        thread->position = (u8*)*arguments;
    }
    return true;
}

// Calls sub_8019508(arguments[2], arguments[1]) if arguments[0] is 0.
s8 EventBase::sub_80EAEE0(EventThread* thread, s32* arguments) {
    if (*arguments++ == 0) {
        sub_8019508(arguments[1], arguments[0]);
    }
    return true;
}

/**
 * Plays, stops or waits for a sound effect.
 *
 * - arguments[0]: Action.
 *   - 0 = Play sound effect arguments[1].
 *   - 1 = Stop sound effect arguments[1], or all sound effects if arguments[1] is 0.
 *   - 2 = Wait while sound effect arguments[1] plays (repeats the command until it ends).
 * - arguments[1]: Sound effect ID.
 */
s8 EventBase::commandSoundEffect(EventThread* thread, s32* arguments) {
    switch (*arguments++) {
        case 0:
            play_sfx_80195B4(arguments[0], -1);
            break;

        case 1:
            if (arguments[0]) {
                stop_sfx_80195A8(arguments[0]);
            } else {
                stop_all_sfx_801959C();
            }
            break;

        case 2:
            if (sub_8019588(arguments[0])) {
                thread->position = thread->commandPosition;
                return false;
            }
            break;
    }

    return true;
}

// Music: arguments[0] 0 calls sub_8019308(arguments[1], arguments[2], arguments[3]), 1
// sub_8019650(arguments[1], arguments[3], arguments[2]) (arguments[3] 2 becomes -1 for both), 2 and 3
// sub_80193B4 and sub_8019460 with (arguments[1], arguments[3], arguments[2]).
s8 EventBase::sub_80EAF4C(EventThread* thread, s32* arguments) {
    switch (*arguments++) {
        case 0:
            if (arguments[2] == 2) {
                arguments[2] = -1;
            }
            sub_8019308(arguments[0], arguments[1], arguments[2]);
            break;

        case 1:
            if (arguments[2] == 2) {
                arguments[2] = -1;
            }
            sub_8019650(arguments[0], arguments[2], arguments[1]);
            break;

        case 2:
            sub_80193B4(arguments[0], arguments[2], arguments[1]);
            break;

        case 3:
            sub_8019460(arguments[0], arguments[2], arguments[1]);
            break;
    }
    return true;
}

// Music: arguments[0] 0-1 call sub_8019308(arguments[1], arguments[2], -1 or 0xFF), 2-3
// sub_80193B4(arguments[1], 0xFF or 0, arguments[2]), 4 calls sub_8019628(arguments[2])
// (arguments[1] = 0 or 1) or waits while sub_80195F8(arguments[2]) (2).
s8 EventBase::sub_80EAFB4(EventThread* thread, s32* arguments) {
    switch (*arguments++) {
        case 0:
            sub_8019308(arguments[0], arguments[1], -1);
            break;

        case 1:
            sub_8019308(arguments[0], arguments[1], 0xFF);
            break;

        case 2:
            sub_80193B4(arguments[0], 0xFF, arguments[1]);
            break;

        case 3:
            sub_80193B4(arguments[0], 0, arguments[1]);
            break;

        case 4:
            switch (*arguments++) {
                case 0:
                case 1:
                    sub_8019628(arguments[0]);
                    break;

                case 2:
                    if (sub_80195F8(arguments[0])) {
                        thread->position = thread->commandPosition;
                        return false;
                    }
                    break;
            }
            break;
    }
    return true;
}

// Sets dword_3000FB8->field_32 to arguments[0].
s8 EventBase::sub_80EB048(struc_3000FCC* windows, s32* arguments) {
    dword_3000FB8->field_32 = arguments[0];
    return true;
}

// Calls sub_80E9330(windows, arguments[1]) (arguments[0] = 0) or waits until field_42_2 of window
// arguments[1] is set (1).
s8 EventBase::sub_80EB05C(struc_3000FCC* windows, EventThread* thread, s32* arguments) {
    switch (*arguments++) {
        case 0:
            sub_80E9330(windows, arguments[0]);
            break;

        case 1:
            if (!windows->field_4->entries[arguments[0]].field_42_2) {
                thread->position = thread->commandPosition;
                return false;
            }
            break;
    }
    return true;
}

// Selects window arguments[0] (0-4; sub_80E6FB8 and sub_80E7118 with its bit), or for higher values
// calls sub_80E6E68 and sub_80E7118 with field_1B3. Clears dword_3000FB8->field_31.
s8 EventBase::sub_80EB09C(struc_3000FCC* windows, EventThread* thread, s32* arguments) {
    if (arguments[0] <= 4) {
        sub_80E6FB8(windows, arguments[0]);
        sub_80E7118(windows, 1 << arguments[0]);
    } else {
        sub_80E6E68(windows);
        sub_80E7118(windows, windows->field_4->field_1B3);
    }
    dword_3000FB8->field_31 = 0;
    return true;
}

// Waits (repeats the command, returning false) while bit arguments[0] of field_1B4 is set.
s8 EventBase::commandWaitForUserInput(struc_3000FCC* windows, EventThread* thread, s32* arguments) {
    if ((windows->field_4->field_1B4 >> arguments[0]) & 1) {
        thread->position = thread->commandPosition;
        return false;
    }
    return true;
}

// Opens a window (sub_80E5BCC) like sub_80E9D50, at (arguments[1], arguments[2]). arguments[3] has
// the height index (low byte, word_83BA4B4) and width (next byte); arguments[5] the flags, packed
// into the bits sub_80E5BCC expects.
s8 EventBase::sub_80EB11C(struc_3000FCC* windows, EventThread* thread, s32* arguments) {
    s32 size = arguments[3];
    s32 flags = arguments[5];
    u8 width = size >> 8;
    u8 height = word_83BA4B4[size & 0xFF];
    u16 packed = ((flags << 2) & 0x800) | (((flags - 0x80) << 1) & 0x300) | ((flags << 1) & 0xC0)
                 | (flags & 0x1F);

    sub_80E5BCC(windows, arguments[0], arguments[1], arguments[2], width, height, arguments[4], packed,
                arguments[6], arguments[7]);
    return true;
}

// Uncalled. Opens a window (sub_80E5BCC) with the width and height in arguments[3] (high and low
// byte) and the flags in arguments[5] as they are.
s8 EventBase::sub_80EB1A4(struc_3000FCC* windows, EventThread* thread, s32* arguments) {
    sub_80E5BCC(windows, arguments[0], arguments[1], arguments[2], arguments[3] >> 8, arguments[3],
                arguments[4], arguments[5], arguments[6], arguments[7]);
    return true;
}

// Waits arguments[0] frames (field_9C, flag 0x10; counted down by sub_80EA778).
s8 EventBase::commandWaitFrames(EventThread* thread, s32* arguments) {
    thread->waitFrames = arguments[0];

    if (thread->waitFrames == 0) {
        return true;
    }

    thread->flags |= 0x10;

    return false;
}

// Jumps to arguments[1], saving the current position to return to if arguments[0] is 1.
s8 EventBase::commandCall(EventThread* thread, s32* arguments) {
    if (arguments[0] == 1) {
        thread->returnPosition = thread->position;
    }
    thread->position = (u8*)arguments[1];
    return true;
}

// Returns to the saved position, or ends the script if there is none.
//! Possible fake match: the second test of position (found by the permuter) keeps it live past
//! the if/else, which moves it from r0 to r2; jump optimization removes the test afterwards.
s8 EventBase::commandReturn(EventThread* thread) {
    u8* position = thread->returnPosition;

    if (position == NULL) {
        thread->endPosition = thread->position;
    } else {
        thread->position = position;
        thread->returnPosition = NULL;
    }

    if (position != NULL) {
        return true;
    }

    return true;
}

s8 EventBase::commandEnd(EventThread* thread) {
    thread->endPosition = thread->position;
    thread->returnPosition = NULL;
    return true;
}
