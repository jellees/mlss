#include "global.h"
#include "common.h"
#include "heap.h"
#include "sprite.h"

// Size of a ROM routine delimited by name and name##_end.
#define ROUTINE_SIZE(name) ((u32)(name##_end - name))

// Copies the ARM routines and the sprite routines selected by flags (bit i = routine i) to IWRAM.
void sub_801DFB0(u8 flags) {
    int i;

    dword_3000D48 = (void (*)(int, int))alloc_heap_8018CEC(
        0, ROUTINE_SIZE(arm_8000850) + ROUTINE_SIZE(arm_80008B8) + ROUTINE_SIZE(arm_80008F0), "ANMA");
    CpuCopy32(arm_8000850, dword_3000D48, ROUTINE_SIZE(arm_8000850));
    dword_3000D4C = (int (*)(int, int))((u8*)dword_3000D48 + ROUTINE_SIZE(arm_8000850));
    CpuCopy32(arm_80008B8, dword_3000D4C, ROUTINE_SIZE(arm_80008B8));
    dword_3000D50 = (u8*)dword_3000D4C + ROUTINE_SIZE(arm_80008B8);
    CpuCopy32(arm_80008F0, dword_3000D50, ROUTINE_SIZE(arm_80008F0));

    CpuFill32(0, dword_3000D58, sizeof(dword_3000D58));
    for (i = 0; i < 6; i++) {
        if ((flags >> i) & 1) {
            dword_3000D58[i] = (u8*)alloc_heap_8018CEC(0, word_839EE34[i], off_839EE40[i]);
            CpuCopy32(off_839EE1C[i], dword_3000D58[i], word_839EE34[i]);
            // Thumb bit
            dword_3000D58[i] = dword_3000D58[i] + 1;
        } else {
            dword_3000D58[i] = off_839EE1C[i];
        }
    }
    byte_3000D70 = flags;
}

void sub_801E150(struct Sprite* sprite, int animation, int arg2, int arg3, int arg4) {
    u8* file = sprite->field_38;
    u8* base = file - (file[0] | (file[1] << 8));
    u32 value = file[4] | (file[5] << 8);
    u8* entry;
    u8 frameCount;
    u8 flags;
    u8* frame;

    sprite->field_27 = (value >> 9) + 1;
    sprite->field_28_0 = (value & 0x1FF) + 1;
    sprite->field_11_5 = file[6] >> 7;
    sprite->field_26 = (file[6] & 0x7F) + 1;
    sprite->field_24 = file[7];
    entry = file + (file[animation * 2 + 8] | (file[animation * 2 + 9] << 8));
    sprite->field_12_4 = 0;
    sprite->field_12_1 = 0;
    sprite->field_5C = arg3;
    sprite->field_60 = arg4;

    if (arg2 == -1) {
        sprite->field_23 = 0;
        sprite->field_12_3 = 0;
        sprite->field_12_5 = 1;
        sprite->field_20 = 0x10;
        if (sprite->field_44 != 0 && sprite->field_44[0] != 1) {
            sub_801E3EC(sprite->field_44, file);
        }
        if (sprite->field_50 != 0 && sprite->field_48->field_0 == 1
            && (sprite->field_28_13 || dword_3000C78 != sub_800063C)) {
            int size = sprite->field_28_0 << 5;
            int used = sub_80198B0(sprite->field_50);
            if (size - used > 0) {
                dword_3001034(0, sprite->field_4C + used, size - used);
                sprite->field_28_0 = used / 32;
            }
            dword_3000C84(sprite->field_48->field_4, sprite->field_48->field_8);
            sprite->field_48->field_0 = 0;
            sprite->field_50 = 0;
            sprite->field_12_6 = gGameState.field_888_5 + 1;
        }
        if (sprite->field_50 == 0 && sprite->field_44 == 0) {
            sprite->field_12_6 = gGameState.field_888_5 + 1;
        }
        if (sprite->field_54 != 0) {
            sprite->field_13_0 = gGameState.field_888_5 + 1;
        }
    } else {
        sprite->field_23 = arg2;
    }

    frameCount = entry[0];
    if (frameCount == 0 && ((flags = entry[1]) & 0xC0)) {
        entry = file + (file[(flags & 0x3F) * 2 + 8] | (file[(flags & 0x3F) * 2 + 9] << 8));
        sprite->field_11_6 = flags >> 6;
        sprite->field_11_7 = flags >> 7;
        frameCount = entry[0];
    }
    frame = entry + (sprite->field_23 * 2 + 1);
    sprite->field_22 = frame[0];
    sprite->field_2A = (frame[1] << 4) + (sprite->field_20 < 0 ? -sprite->field_20 : sprite->field_20);
    sprite->field_21 = animation;
    sprite->field_25 = frameCount;
    sprite->field_2C = 0;
    sprite->field_3C = entry;
    sprite->field_40 = base + (base[sprite->field_22 * 2 + 1] | (base[sprite->field_22 * 2 + 2] << 8));
    sprite->field_28_14 = 1;
}
