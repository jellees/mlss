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
            dword_3000D58[i] =
                (SpriteDrawRoutine)alloc_heap_8018CEC(0, word_839EE34[i], off_839EE40[i]);
            CpuCopy32(off_839EE1C[i], dword_3000D58[i], word_839EE34[i]);
            // Thumb bit
            dword_3000D58[i] = (SpriteDrawRoutine)((u8*)dword_3000D58[i] + 1);
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
    sprite->field_5C = (void (*)(struct Sprite*, int))arg3;
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

// Heap labels of the sprite routine copies (off_839EE40)
extern const char sAosaLabel[] = "AOSA";
extern const char sAosbLabel[] = "AOSB";
extern const char sAoscLabel[] = "AOSC";
extern const char sAosdLabel[] = "AOSD";
extern const char sAoseLabel[] = "AOSE";
extern const char sAosfLabel[] = "AOSF";

// (first tile, tile count, offset in the packed tile order) of one tile range
typedef u16 TileInfo[3];

enum {
    TILE_INFO_FIRST,
    TILE_INFO_COUNT,
    TILE_INFO_OFFSET,
};

// Fills tileMap (Sprite::field_44): byte 0 = 1 (built), then stride bytes per frame with the tile index
// of each of its records remapped to the packed tile order.
void sub_801E3EC(u8* tileMap, u8* file) {
    u8* base = file - (file[0] | (file[1] << 8));
    int stride = (file[6] & 0x7F) + 1;
    int count = base[0];
    TileInfo* tiles = new (0, "TINF", 0) TileInfo[128];
    int i;

    *tileMap++ = 1;
    for (i = 0; i < count; i++) {
        u8* p = base + (base[i * 2 + 1] | (base[i * 2 + 2] << 8));
        int n = *p++;
        int type;
        int recordSize;
        int tileCount;
        u8* q;
        u16 offset;
        TileInfo* tile;
        TileInfo* search;
        int j;
        int j2;
        int k;
        int value;
        u16 start;

        if (n & 0x80) {
            n &= 0x7F;
            p += n * 6;
            n = *p++;
        }
        type = *p++;
        recordSize = byte_839EE58[type];
        q = p + n * recordSize;
        tileCount = *q++;
        offset = 0;
        tile = tiles;
        for (j = 0; j < tileCount; j++, q += 3, tile++) {
            (*tile)[TILE_INFO_FIRST] = q[0] | (q[1] << 8);
            (*tile)[TILE_INFO_COUNT] = q[2];
            (*tile)[TILE_INFO_OFFSET] = offset;
            offset += q[2];
        }

        for (k = 0; k < n; k++, p += recordSize) {
            switch (type) {
                case 0:
                    value = p[4] + ((p[5] & 3) << 8);
                    break;
                case 1:
                    value = p[3] + ((p[4] & 1) << 8);
                    break;
                case 3:
                    value = p[2] + ((p[3] & 1) << 8);
                    break;
                case 4:
                    value = p[2] & 0x7F;
                    break;
                case 2:
                case 5:
                    value = p[2];
                    break;
            }
            search = tiles;
            for (j2 = 0; j2 < tileCount; j2++, search++) {
                start = (*search)[TILE_INFO_FIRST];
                if (value >= start && value < start + (*search)[TILE_INFO_COUNT]) {
                    tileMap[k] = value - start + (*search)[TILE_INFO_OFFSET];
                    break;
                }
            }
        }
        tileMap += stride;
    }
    delete[] tiles;
}

static inline SpriteCallback getCallback(struct Sprite* sprite) {
    return sprite->field_5C;
}

void sub_801E68C(struct Sprite* sprite) {
    SpriteCallback callback;

    if ((sprite->field_48 == 0 || sprite->field_48->field_0 == 0)
        && (sprite->field_44 == 0 || sprite->field_44[0] == 1) && !sprite->field_12_4
        && !sprite->field_12_5) {
        int wrapped = sprite->field_12_3;
        u8* entry;
        int frameCount;
        int timer;
        int remaining;
        int frame;
        int image;
        int speed;
        int update;
        u8* data;

        sprite->field_12_3 = 0;
        entry = sprite->field_3C;
        frameCount = sprite->field_25;
        timer = sprite->field_2C;
        remaining = sprite->field_2A;
        frame = sprite->field_23;
        image = sprite->field_22;
        speed = sprite->field_20 < 0 ? -sprite->field_20 : sprite->field_20;
        timer += speed;
        remaining -= speed;
        while (remaining <= 0) {
            if (sprite->field_20 > 0) {
                if (++frame >= frameCount) {
                    frame = 0;
                    timer = 0;
                    sprite->field_12_3 = wrapped ^ 1;
                }
            } else {
                if (--frame < 0) {
                    frame = frameCount - 1;
                    timer = 0;
                    sprite->field_12_3 = wrapped ^ 1;
                }
            }
            data = entry + (frame * 2 + 1);
            image = data[0];
            remaining += data[1] << 4;
        }

        update = 1;
        if (sprite->field_12_3) {
            if (sprite->field_12_1 == 1) {
                sprite->field_12_4 = 1;
                frame = frameCount - 1;
                data = entry + (frame * 2 + 1);
                image = data[0];
                remaining = 1;
                timer = 0;
            } else if (sprite->field_12_1 == 2) {
                sprite->field_12_5 = 1;
                update = 0;
            }
        }
        if (update) {
            u8* file = sprite->field_38;
            u8* base = file - (file[0] | (file[1] << 8));

            sprite->field_40 = base + (base[image * 2 + 1] | (base[image * 2 + 2] << 8));
            sprite->field_2C = timer;
            sprite->field_2A = remaining;
            sprite->field_23 = frame;
            sprite->field_22 = image;
        }
    }
    callback = getCallback(sprite);
    if (callback != 0 && (sprite->field_28_9 || (sprite->field_12_3 && !sprite->field_12_5))) {
        callback(sprite, sprite->field_60);
    }
}

// The IWRAM copy of the division routine (loc_819832C), as in FieldObject.
#define IWRAM_DIV(a, b)                                                                                \
    (((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(a, b))

struct struc_11* sub_801E80C(struct Sprite* sprite, struct struc_11* arg1, u8* arg2) {
    if (sprite->field_50 != 0) {
        if (sprite->field_48->field_0 == 1) {
            int size = sprite->field_28_0 << 5;
            int done = sub_80198B0(sprite->field_50);
            int remaining = size - done;

            if (remaining > 0) {
                CpuFastFill(0, sprite->field_4C + done, remaining);
                sprite->field_28_0 = done / 32;
            }
            sub_8019808((struct BackgroundJob*)sprite->field_48);
        } else if (sprite->field_48->field_0 == 0) {
            sprite->field_50 = 0;
            sprite->field_12_6 = gGameState.field_888_5 + 1;
        }
    }

    if ((sprite->field_48 == 0 || sprite->field_48->field_0 == 0)
        && (sprite->field_44 == 0 || sprite->field_44[0] == 1)) {
        if (sprite->field_44 == 0 && sprite->field_12_6 != 0) {
            if (sprite->field_12_6 == 1) {
                sub_8018218(sprite->field_4C, (u8*)OBJ_VRAM0 + sprite->field_2E,
                            sprite->field_10_0 ? sprite->field_30 : sprite->field_28_0 << 5, 0x20, 0);
            }
            sprite->field_12_6--;
        }
        if (sprite->field_44 != 0) {
            sprite->field_30 = 0;
        }

        if (!sprite->field_12_5) {
            s8 matrices[4];
            u8* cursor;
            u8* p;
            int matrix;
            u8* tiles;
            int count;
            int renderer;
            int i;

            if (sprite->field_13_0 != 0) {
                if (sprite->field_13_0 == 1) {
                    int bit = 0;
                    int mask = sprite->field_14;
                    int j;

                    for (j = 0; j < sprite->field_13_4; j++) {
                        while (!(mask & 1)) {
                            bit++;
                            mask >>= 1;
                        }
                        CpuCopy32((u8*)sprite->field_54 + j * 32, (void*)(0x02000280 + bit * 32), 32);
                        gGameState.field_0 |= 1 << bit;
                        bit++;
                        mask >>= 1;
                    }
                }
                sprite->field_13_0--;
            }

            matrix = sprite->field_10_1;
            sprite->field_10_6 = 0;
            if (sprite->field_44 != 0) {
                tiles = &sprite->field_44[sprite->field_22 * sprite->field_26 + 1];
            } else {
                tiles = 0;
            }

            p = sprite->field_40;
            count = *p++;
            if (count & 0x80) {
                count &= 0x7F;
                if (!sprite->field_28_11) {
                    u16* dest = &gGameState.field_80[gGameState.field_888_3][matrix * 4].affineParam;

                    for (i = 0; i < count; i++, p += 6) {
                        struct ObjAffineSrcData src;
                        s16 x;
                        s16 y;
                        s16 rotation;
                        s16 scale;

                        x = p[2] | (p[3] << 8);
                        x = IWRAM_DIV(0x1000000, sprite->xScale * x);
                        if (sprite->field_11_6) {
                            x = -x;
                        }
                        src.xScale = x;
                        y = p[4] | (p[5] << 8);
                        y = IWRAM_DIV(0x1000000, sprite->yScale * y);
                        if (sprite->field_11_7) {
                            y = -y;
                        }
                        src.yScale = y;
                        rotation = p[0] | (p[1] << 8);
                        if (sprite->field_11_6) {
                            rotation = -rotation;
                        }
                        if (sprite->field_11_7) {
                            rotation = -rotation;
                        }
                        src.rotation = sprite->field_C - rotation;
                        ObjAffineSet(&src, dest, 1, 8);
                        scale = sprite->field_8;
                        if (scale != 0x100) {
                            dest[0] = IWRAM_DIV((s16)dest[0] << 8, scale);
                            dest[8] = IWRAM_DIV((s16)dest[8] << 8, scale);
                        }
                        scale = sprite->field_A;
                        if (scale != 0x100) {
                            dest[4] = IWRAM_DIV((s16)dest[4] << 8, scale);
                            dest[12] = IWRAM_DIV((s16)dest[12] << 8, scale);
                        }
                        dest += 16;
                        matrix++;
                        sprite->field_10_6++;
                    }
                } else {
                    p += count * 6;
                    matrix += count;
                    sprite->field_10_6 += count;
                }
                count = *p++;
            }

            renderer = *p++;
            cursor = p;
            // All four slots set to -1 with one word store
            *(int*)matrices = -1;
            sprite->field_34 = arg1;
            arg1 = dword_3000D58[renderer](arg1, sprite, &cursor, count, tiles, matrices, matrix, arg2);
            p = cursor;

            if (!sprite->field_28_11) {
                u16* base = &gGameState.field_80[gGameState.field_888_3][0].affineParam;

                for (i = 0; i < 4; i++) {
                    if (matrices[i] != -1) {
                        struct ObjAffineSrcData src;
                        u16* dest = base + matrices[i] * 16;
                        s16 x;
                        s16 y;
                        s16 scale;

                        x = sprite->xScale;
                        if (x != 0x100) {
                            x = IWRAM_DIV(0x10000, x);
                        }
                        if (i & 1) {
                            x = -x;
                        }
                        src.xScale = x;
                        y = sprite->yScale;
                        if (y != 0x100) {
                            y = IWRAM_DIV(0x10000, y);
                        }
                        if (i & 2) {
                            y = -y;
                        }
                        src.yScale = y;
                        src.rotation = sprite->field_C;
                        ObjAffineSet(&src, dest, 1, 8);
                        scale = sprite->field_8;
                        if (scale != 0x100) {
                            dest[0] = IWRAM_DIV((s16)dest[0] << 8, scale);
                            dest[8] = IWRAM_DIV((s16)dest[8] << 8, scale);
                        }
                        scale = sprite->field_A;
                        if (scale != 0x100) {
                            dest[4] = IWRAM_DIV((s16)dest[4] << 8, scale);
                            dest[12] = IWRAM_DIV((s16)dest[12] << 8, scale);
                        }
                    }
                }
            }

            if (tiles != 0) {
                u8* list = gGameState.field_888_5 ? sprite->field_58 : p;
                int total = 0;
                int skip = sprite->field_28_10;

                if (list != 0) {
                    int n = *list++;
                    int vram = sprite->field_2E;

                    for (i = 0; i < n; i++, list += 3) {
                        int tile = list[0] | ((list[1] & 3) << 8);
                        int size = list[2] * 32;

                        if (!skip) {
                            sub_8018218(sprite->field_4C + tile * 32, (u8*)OBJ_VRAM0 + vram, size, 0x20,
                                        0);
                        }
                        vram += size;
                        total += size;
                    }
                }
                sprite->field_30 = total;
                sprite->field_58 = gGameState.field_888_5 ? p : 0;
            }
        }
    }
    return arg1;
}

// Sprite routine 0 (off_839EE1C[0]): adds one OAM entry per object of the frame.
struct struc_11* sub_801EEBC(struct struc_11* oam, struct Sprite* sprite, u8** cursor, int count,
                             u8* tiles, s8* matrices, int matrix, u8* depth) {
    u16 palettes[16];
    u8 priorities[4];
    u16* palette = palettes;
    int bit = 0;
    int mask = sprite->field_14;
    int mode;
    u8* entry;
    int i;
    int affine;
    int objMode;
    int flip;

    while (mask != 0) {
        if (mask & 1) {
            *palette++ = bit << 12;
        }
        bit++;
        mask >>= 1;
    }

    if ((sprite->field_C != 0 && !sprite->field_28_15) || sprite->xScale > 0x100
        || sprite->yScale > 0x100 || sprite->field_8 > 0x100 || sprite->field_A > 0x100) {
        mode = 3;
    } else if (*(u32*)&sprite->xScale != 0x01000100) {
        mode = 1;
    } else {
        mode = *(u32*)&sprite->field_8 != 0x01000100;
    }

    priorities[0] = sprite->field_1F_0;
    priorities[1] = sprite->field_1F_2;
    priorities[2] = sprite->field_1F_4;
    priorities[3] = sprite->field_1F_6;

    entry = *cursor;
    for (i = 0; i < count; i++, entry += 6) {
        int width;
        int height;
        int x;
        int y;
        u8* size;

        affine = entry[1] & 3;
        objMode = 3;
        if (mode != 3) {
            objMode = mode;
            if (affine != 0) {
                objMode = affine;
            }
        }

        size = &byte_839EE04[(entry[1] >> 6) * 8 + (entry[3] >> 6) * 2];
        width = size[0];
        height = size[1];
        x = entry[2];
        if (entry[3] & 1) {
            x |= 0xFFFFFF00;
        }
        y = (s8)entry[0];
        if (affine == 3) {
            x += width / 2;
            y += height / 2;
        }

        if (sprite->xScale != 0x100) {
            width <<= 8;
            x *= sprite->xScale;
            x -= (width - sprite->xScale * width / 256) / 2;
            x /= 256;
            width /= 256;
        }
        if (sprite->field_11_6) {
            x = -x - width;
        }
        if (sprite->yScale != 0x100) {
            height <<= 8;
            y *= sprite->yScale;
            y -= (height - sprite->yScale * height / 256) / 2;
            y /= 256;
            height /= 256;
        }
        if (sprite->field_11_7) {
            y = -y - height;
        }

        if (sprite->field_C != 0) {
            int halfWidth = width / 2;
            int halfHeight = height / 2;
            int angle = (u16)sprite->field_C >> 8;
            int centerX = x + halfWidth;
            int centerY = y + halfHeight;

            x = (centerX * word_8198584[angle] + centerY * word_8198504[angle]) / 0x4000 - halfWidth;
            y = (-centerX * word_8198504[angle] + centerY * word_8198584[angle]) / 0x4000 - halfHeight;
        }

        if (*(u32*)&sprite->field_8 != 0x01000100) {
            x = x * sprite->field_8 / 256;
            x -= (width - width * sprite->field_8 / 256) / 2;
            y = y * sprite->field_A / 256;
            y -= (height - height * sprite->field_A / 256) / 2;
        }

        if (objMode == 3) {
            x -= width / 2;
            y -= height / 2;
            width *= 2;
            height *= 2;
        }

        x += sprite->xPosition;
        y += sprite->yPosition;
        if (x >= -width && x <= 239 && y >= -height && y <= 159) {
            int priority = priorities[(entry[5] >> 2) & 3];
            int priorityBits = priority << 10;
            int paletteIndex;
            int tile;
            int attribute;
            u16* attributes;

            oam->field_8 = (priority << 30) | (sprite->field_E << 14) | (*depth << 7) | i;
            (*depth)++;
            if (objMode != 0 && affine == 0) {
                flip = ((entry[3] >> 4) & 3) ^ (sprite->field_11_6 | (sprite->field_11_7 << 1));
                if (matrices[flip] == -1) {
                    matrices[flip] = matrix;
                    matrix++;
                    sprite->field_10_6++;
                }
            }
            oam->field_6 = 0;
            attributes = &oam->field_0;
            if (sprite->field_11_2) {
                attribute = sprite->field_11_2 << 10;
            } else {
                attribute = (entry[1] & 0xC) << 8;
            }
            attributes[0] = attribute
                            | ((((entry[1] & 0xF0) | objMode) << 8) | (sprite->field_11_4 << 12))
                            | (y & 0xFF);
            if (objMode != 0) {
                int sizeBits = (entry[3] & 0xC0) << 8;
                int xBits = x & 0x1FF;
                int matrixBits;

                if (affine == 0) {
                    matrixBits = matrices[flip] << 9;
                } else {
                    matrixBits = (sprite->field_10_1 + ((entry[3] & 0x3E) >> 1)) << 9;
                }
                attributes[1] = matrixBits | sizeBits | xBits;
            } else {
                attributes[1] = ((entry[3] & 0xC0) | ((entry[3] & 0x10) ^ (sprite->field_11_6 << 4))
                                 | ((entry[3] & 0x20) ^ (sprite->field_11_7 << 5)))
                                    << 8
                                | (x & 0x1FF);
            }
            paletteIndex = entry[5] >> 4;
            if (tiles == 0) {
                tile = entry[4] | ((entry[5] & 3) << 8);
            } else {
                tile = *tiles;
            }
            attributes[2] = priorityBits | palettes[paletteIndex] | ((sprite->field_2E >> 5) + tile);
            oam = oam->field_10;
        }
        if (tiles != 0) {
            tiles++;
        }
    }
    *cursor = entry;
    return oam;
}

// Sprite routine 1 (off_839EE1C[1]): like routine 0, with 5-byte frame objects.
struct struc_11* sub_801F370(struct struc_11* oam, struct Sprite* sprite, u8** cursor, int count,
                             u8* tiles, s8* matrices, int matrix, u8* depth) {
    u16 palettes[16];
    u16* palette = palettes;
    int bit = 0;
    int mask = sprite->field_14;
    int mode;
    u8* entry;
    int i;
    int affine;
    int objMode;
    int flip;

    while (mask != 0) {
        if (mask & 1) {
            *palette++ = bit << 12;
        }
        bit++;
        mask >>= 1;
    }

    if ((sprite->field_C != 0 && !sprite->field_28_15) || sprite->xScale > 0x100
        || sprite->yScale > 0x100 || sprite->field_8 > 0x100 || sprite->field_A > 0x100) {
        mode = 3;
    } else if (*(u32*)&sprite->xScale != 0x01000100) {
        mode = 1;
    } else {
        mode = *(u32*)&sprite->field_8 != 0x01000100;
    }

    entry = *cursor;
    for (i = 0; i < count; i++, entry += 5) {
        int width;
        int height;
        int x;
        int y;
        u8* size;

        affine = (entry[4] >> 2) & 3;
        objMode = 3;
        if (mode != 3) {
            objMode = mode;
            if (affine != 0) {
                objMode = affine;
            }
        }

        size = &byte_839EE04[(entry[4] >> 4) * 2];
        width = size[0];
        height = size[1];
        x = (s8)entry[0];
        y = (s8)entry[1];
        if (affine == 3) {
            x += width / 2;
            y += height / 2;
        }

        if (sprite->xScale != 0x100) {
            width <<= 8;
            x *= sprite->xScale;
            x -= (width - sprite->xScale * width / 256) / 2;
            x /= 256;
            width /= 256;
        }
        if (sprite->field_11_6) {
            x = -x - width;
        }
        if (sprite->yScale != 0x100) {
            height <<= 8;
            y *= sprite->yScale;
            y -= (height - sprite->yScale * height / 256) / 2;
            y /= 256;
            height /= 256;
        }
        if (sprite->field_11_7) {
            y = -y - height;
        }

        if (sprite->field_C != 0) {
            int halfWidth = width / 2;
            int halfHeight = height / 2;
            int angle = (u16)sprite->field_C >> 8;
            int centerX = x + halfWidth;
            int centerY = y + halfHeight;

            x = (centerX * word_8198584[angle] + centerY * word_8198504[angle]) / 0x4000 - halfWidth;
            y = (-centerX * word_8198504[angle] + centerY * word_8198584[angle]) / 0x4000 - halfHeight;
        }

        if (*(u32*)&sprite->field_8 != 0x01000100) {
            x = x * sprite->field_8 / 256;
            x -= (width - width * sprite->field_8 / 256) / 2;
            y = y * sprite->field_A / 256;
            y -= (height - height * sprite->field_A / 256) / 2;
        }

        if (objMode == 3) {
            x -= width / 2;
            y -= height / 2;
            width *= 2;
            height *= 2;
        }

        x += sprite->xPosition;
        y += sprite->yPosition;
        if (x >= -width && x <= 239 && y >= -height && y <= 159) {
            int priorityBits;
            int paletteIndex;
            int tile;
            u16* attributes;

            if ((entry[4] >> 1) & 1) {
                priorityBits = sprite->field_1F_2 << 10;
            } else {
                priorityBits = sprite->field_1F_0 << 10;
            }
            oam->field_8 = (priorityBits << 20) | (sprite->field_E << 14) | (*depth << 7) | i;
            (*depth)++;
            if (objMode != 0 && affine == 0) {
                flip = ((entry[2] >> 2) & 3) ^ (sprite->field_11_6 | (sprite->field_11_7 << 1));
                if (matrices[flip] == -1) {
                    matrices[flip] = matrix;
                    matrix++;
                    sprite->field_10_6++;
                }
            }
            oam->field_6 = 0;
            attributes = &oam->field_0;
            // OBJ mode, mosaic and 8bpp bits (field_11_2, field_11_4, field_11_5), read as one halfword
            attributes[0] = (*(u16*)((u8*)sprite + 0x10) & 0x3C00) | ((entry[4] & 0xC0) << 8)
                            | (objMode << 8) | (y & 0xFF);
            if (objMode != 0) {
                int sizeBits = (entry[4] & 0x30) << 10;
                int xBits = x & 0x1FF;
                int matrixNum;

                if (affine == 0) {
                    matrixNum = matrices[flip];
                } else {
                    matrixNum = sprite->field_10_1 + (entry[2] & 0xF);
                }
                attributes[1] = (matrixNum << 9) | sizeBits | xBits;
            } else {
                attributes[1] = ((entry[4] & 0x30)
                                 | (((entry[2] & 4) ^ (sprite->field_11_6 << 2))
                                    | ((entry[2] & 8) ^ (sprite->field_11_7 << 3))))
                                    << 10
                                | (x & 0x1FF);
            }
            paletteIndex = entry[2] >> 4;
            if (tiles == 0) {
                tile = entry[3] | ((entry[4] & 1) << 8);
            } else {
                tile = *tiles;
            }
            attributes[2] = priorityBits | palettes[paletteIndex] | ((sprite->field_2E >> 5) + tile);
            oam = oam->field_10;
        }
        if (tiles != 0) {
            tiles++;
        }
    }
    *cursor = entry;
    return oam;
}

// Sprite routine 2 (off_839EE1C[2]): 4-byte frame objects without their own affine mode.
struct struc_11* sub_801F7D0(struct struc_11* oam, struct Sprite* sprite, u8** cursor, int count,
                             u8* tiles, s8* matrices, int matrix, u8* depth) {
    u16 palettes[16];
    u16* palette = palettes;
    int bit = 0;
    int mask = sprite->field_14;
    int mode;
    int priorityBits;
    u8* entry;
    int i;
    u8 flags;
    int flip;

    while (mask != 0) {
        if (mask & 1) {
            *palette++ = bit << 12;
        }
        bit++;
        mask >>= 1;
    }

    if ((sprite->field_C != 0 && !sprite->field_28_15) || sprite->xScale > 0x100
        || sprite->yScale > 0x100 || sprite->field_8 > 0x100 || sprite->field_A > 0x100) {
        mode = 3;
    } else {
        mode = 1;
        if (sprite->field_C == 0 && *(u32*)&sprite->xScale == 0x01000100) {
            mode = *(u32*)&sprite->field_8 != 0x01000100;
        }
    }

    priorityBits = sprite->field_1F_0 << 10;
    entry = *cursor;
    for (i = 0; i < count; i++, entry += 4) {
        int width;
        int height;
        int x;
        int y;
        u8* size;

        flags = entry[3];
        size = &byte_839EE04[(flags >> 4) * 2];
        width = size[0];
        height = size[1];
        x = (s8)entry[0];
        y = (s8)entry[1];

        if (sprite->xScale != 0x100) {
            width <<= 8;
            x *= sprite->xScale;
            x -= (width - sprite->xScale * width / 256) / 2;
            x /= 256;
            width /= 256;
        }
        if (sprite->field_11_6) {
            x = -x - width;
        }
        if (sprite->yScale != 0x100) {
            height <<= 8;
            y *= sprite->yScale;
            y -= (height - sprite->yScale * height / 256) / 2;
            y /= 256;
            height /= 256;
        }
        if (sprite->field_11_7) {
            y = -y - height;
        }

        if (sprite->field_C != 0) {
            int halfWidth = width / 2;
            int halfHeight = height / 2;
            int angle = (u16)sprite->field_C >> 8;
            int centerX = x + halfWidth;
            int centerY = y + halfHeight;

            x = (centerX * word_8198584[angle] + centerY * word_8198504[angle]) / 0x4000 - halfWidth;
            y = (-centerX * word_8198504[angle] + centerY * word_8198584[angle]) / 0x4000 - halfHeight;
        }

        if (*(u32*)&sprite->field_8 != 0x01000100) {
            x = x * sprite->field_8 / 256;
            x -= (width - width * sprite->field_8 / 256) / 2;
            y = y * sprite->field_A / 256;
            y -= (height - height * sprite->field_A / 256) / 2;
        }

        if (mode == 3) {
            x -= width / 2;
            y -= height / 2;
            width *= 2;
            height *= 2;
        }

        x += sprite->xPosition;
        y += sprite->yPosition;
        if (x >= -width && x <= 239 && y >= -height && y <= 159) {
            int paletteIndex;
            int tile;
            u16* attributes;

            oam->field_8 = (priorityBits << 20) | (sprite->field_E << 14) | (*depth << 7) | i;
            (*depth)++;
            if (mode != 0) {
                flip = ((flags >> 2) & 3) ^ (sprite->field_11_6 | (sprite->field_11_7 << 1));
                if (matrices[flip] == -1) {
                    matrices[flip] = matrix;
                    matrix++;
                    sprite->field_10_6++;
                }
            }
            oam->field_6 = 0;
            attributes = &oam->field_0;
            // OBJ mode, mosaic and 8bpp bits (field_11_2, field_11_4, field_11_5), read as one halfword
            attributes[0] = (*(u16*)((u8*)sprite + 0x10) & 0x3C00) | ((flags & 0xC0) << 8) | (mode << 8)
                            | (y & 0xFF);
            if (mode != 0) {
                oam->field_2 = ((flags & 0x30) << 10) | (matrices[flip] << 9) | (x & 0x1FF);
            } else {
                oam->field_2 =
                    ((flags & 0x3C) ^ ((sprite->field_11_6 << 2) | (sprite->field_11_7 << 3))) << 10
                    | (x & 0x1FF);
            }
            paletteIndex = flags & 3;
            if (tiles == 0) {
                tile = entry[2];
            } else {
                tile = *tiles;
            }
            attributes[2] = priorityBits | palettes[paletteIndex] | ((sprite->field_2E >> 5) + tile);
            oam = oam->field_10;
        }
        if (tiles != 0) {
            tiles++;
        }
    }
    *cursor = entry;
    return oam;
}

// Sprite routine 3 (off_839EE1C[3]): like routine 2, with one palette for the whole sprite.
struct struc_11* sub_801FBAC(struct struc_11* oam, struct Sprite* sprite, u8** cursor, int count,
                             u8* tiles, s8* matrices, int matrix, u8* depth) {
    int palette = 0;
    int mask = sprite->field_14;
    int mode;
    u8* entry;
    int i;
    u8 flags;
    int flip;

    while (!(mask & 1)) {
        palette++;
        mask >>= 1;
    }
    palette <<= 12;

    if ((sprite->field_C != 0 && !sprite->field_28_15) || sprite->xScale > 0x100
        || sprite->yScale > 0x100 || sprite->field_8 > 0x100 || sprite->field_A > 0x100) {
        mode = 3;
    } else {
        mode = 1;
        if (sprite->field_C == 0 && *(u32*)&sprite->xScale == 0x01000100) {
            mode = *(u32*)&sprite->field_8 != 0x01000100;
        }
    }

    entry = *cursor;
    for (i = 0; i < count; i++, entry += 4) {
        int width;
        int height;
        int x;
        int y;
        u8* size;

        flags = entry[3];
        size = &byte_839EE04[(flags >> 4) * 2];
        width = size[0];
        height = size[1];
        x = (s8)entry[0];
        y = (s8)entry[1];

        if (sprite->xScale != 0x100) {
            width <<= 8;
            x *= sprite->xScale;
            x -= (width - sprite->xScale * width / 256) / 2;
            x /= 256;
            width /= 256;
        }
        if (sprite->field_11_6) {
            x = -x - width;
        }
        if (sprite->yScale != 0x100) {
            height <<= 8;
            y *= sprite->yScale;
            y -= (height - sprite->yScale * height / 256) / 2;
            y /= 256;
            height /= 256;
        }
        if (sprite->field_11_7) {
            y = -y - height;
        }

        if (sprite->field_C != 0) {
            int halfWidth = width / 2;
            int halfHeight = height / 2;
            int angle = (u16)sprite->field_C >> 8;
            int centerX = x + halfWidth;
            int centerY = y + halfHeight;

            x = (centerX * word_8198584[angle] + centerY * word_8198504[angle]) / 0x4000 - halfWidth;
            //! Possible fake match: y holds the cosine before its new value is computed (permuter)
            y = word_8198584[angle];
            y = (-centerX * word_8198504[angle] + centerY * y) / 0x4000 - halfHeight;
        }

        if (*(u32*)&sprite->field_8 != 0x01000100) {
            x = x * sprite->field_8 / 256;
            x -= (width - width * sprite->field_8 / 256) / 2;
            y = y * sprite->field_A / 256;
            y -= (height - height * sprite->field_A / 256) / 2;
        }

        if (mode == 3) {
            x -= width / 2;
            y -= height / 2;
            width *= 2;
            height *= 2;
        }

        x += sprite->xPosition;
        y += sprite->yPosition;
        if (x >= -width && x <= 239 && y >= -height && y <= 159) {
            int priorityBits;
            int tile;
            u16* attributes;

            if ((flags >> 1) & 1) {
                priorityBits = sprite->field_1F_2 << 10;
            } else {
                priorityBits = sprite->field_1F_0 << 10;
            }

            oam->field_8 = (priorityBits << 20) | (sprite->field_E << 14) | (*depth << 7) | i;
            (*depth)++;
            if (mode != 0) {
                flip = ((flags >> 2) & 3) ^ (sprite->field_11_6 | (sprite->field_11_7 << 1));
                if (matrices[flip] == -1) {
                    matrices[flip] = matrix;
                    matrix++;
                    sprite->field_10_6++;
                }
            }
            oam->field_6 = 0;
            attributes = &oam->field_0;
            // OBJ mode, mosaic and 8bpp bits (field_11_2, field_11_4, field_11_5), read as one halfword
            attributes[0] = (*(u16*)((u8*)sprite + 0x10) & 0x3C00) | ((flags & 0xC0) << 8) | (mode << 8)
                            | (y & 0xFF);
            if (mode != 0) {
                oam->field_2 = ((flags & 0x30) << 10) | (matrices[flip] << 9) | (x & 0x1FF);
            } else {
                oam->field_2 =
                    ((flags & 0x3C) ^ ((sprite->field_11_6 << 2) | (sprite->field_11_7 << 3))) << 10
                    | (x & 0x1FF);
            }
            if (tiles == 0) {
                tile = entry[2] | ((flags & 1) << 8);
            } else {
                tile = *tiles;
            }
            attributes[2] = priorityBits | palette | ((sprite->field_2E >> 5) + tile);
            oam = oam->field_10;
        }
        if (tiles != 0) {
            tiles++;
        }
    }
    *cursor = entry;
    return oam;
}

// Sprite routine 4 (off_839EE1C[4]): 3-byte frame objects, one palette for the whole sprite.
struct struc_11* sub_801FFA8(struct struc_11* oam, struct Sprite* sprite, u8** cursor, int count,
                             u8* tiles, s8* matrices, int matrix, u8* depth) {
    int palette = 0;
    int mask = sprite->field_14;
    int mode;
    int priorityBits;
    u8* entry;
    int i;
    u8 shapeX;
    u8 sizeY;
    u8 tileFlip;
    int flip;

    while (!(mask & 1)) {
        palette++;
        mask >>= 1;
    }
    palette <<= 12;

    if ((sprite->field_C != 0 && !sprite->field_28_15) || sprite->xScale > 0x100
        || sprite->yScale > 0x100 || sprite->field_8 > 0x100 || sprite->field_A > 0x100) {
        mode = 3;
    } else {
        mode = 1;
        if (sprite->field_C == 0 && *(u32*)&sprite->xScale == 0x01000100) {
            mode = *(u32*)&sprite->field_8 != 0x01000100;
        }
    }

    priorityBits = sprite->field_1F_0 << 10;
    entry = *cursor;
    for (i = 0; i < count; i++, entry += 3) {
        int width;
        int height;
        int x;
        int y;
        u8* size;

        shapeX = entry[0];
        sizeY = entry[1];
        tileFlip = entry[2];
        size = &byte_839EE04[(shapeX >> 6) * 8 + (sizeY >> 6) * 2];
        width = size[0];
        height = size[1];
        x = shapeX & 0x3F;
        if (x & 0x20) {
            x |= ~0x3F;
        }
        y = sizeY & 0x3F;
        if (y & 0x20) {
            y |= ~0x3F;
        }

        if (sprite->xScale != 0x100) {
            width <<= 8;
            x *= sprite->xScale;
            x -= (width - sprite->xScale * width / 256) / 2;
            x /= 256;
            width /= 256;
        }
        if (sprite->field_11_6) {
            x = -x - width;
        }
        if (sprite->yScale != 0x100) {
            height <<= 8;
            y *= sprite->yScale;
            y -= (height - sprite->yScale * height / 256) / 2;
            y /= 256;
            height /= 256;
        }
        if (sprite->field_11_7) {
            y = -y - height;
        }

        if (sprite->field_C != 0) {
            int halfWidth = width / 2;
            int halfHeight = height / 2;
            int angle = (u16)sprite->field_C >> 8;
            int centerX = x + halfWidth;
            int centerY = y + halfHeight;

            x = (centerX * word_8198584[angle] + centerY * word_8198504[angle]) / 0x4000 - halfWidth;
            y = (-centerX * word_8198504[angle] + centerY * word_8198584[angle]) / 0x4000 - halfHeight;
        }

        if (*(u32*)&sprite->field_8 != 0x01000100) {
            x = x * sprite->field_8 / 256;
            x -= (width - width * sprite->field_8 / 256) / 2;
            y = y * sprite->field_A / 256;
            y -= (height - height * sprite->field_A / 256) / 2;
        }

        if (mode == 3) {
            x -= width / 2;
            y -= height / 2;
            width *= 2;
            height *= 2;
        }

        x += sprite->xPosition;
        y += sprite->yPosition;
        if (x >= -width && x <= 239 && y >= -height && y <= 159) {
            int tile;
            u16* attributes;

            oam->field_8 = (priorityBits << 20) | (sprite->field_E << 14) | (*depth << 7) | i;
            (*depth)++;
            flip = (tileFlip >> 7) ^ (sprite->field_11_6 | (sprite->field_11_7 << 1));
            if (mode != 0) {
                if (matrices[flip] == -1) {
                    matrices[flip] = matrix;
                    matrix++;
                    sprite->field_10_6++;
                }
            }
            oam->field_6 = 0;
            attributes = &oam->field_0;
            // OBJ mode, mosaic and 8bpp bits (field_11_2, field_11_4, field_11_5), read as one halfword
            attributes[0] = (*(u16*)((u8*)sprite + 0x10) & 0x3C00) | ((shapeX & 0xC0) << 8)
                            | (mode << 8) | (y & 0xFF);
            if (mode != 0) {
                oam->field_2 = ((sizeY & 0xC0) << 8) | (matrices[flip] << 9) | (x & 0x1FF);
            } else {
                oam->field_2 = ((sizeY & 0xC0) << 8) | (flip << 12) | (x & 0x1FF);
            }
            if (tiles == 0) {
                tile = tileFlip & 0x7F;
            } else {
                tile = *tiles;
            }
            attributes[2] = palette | priorityBits | ((sprite->field_2E >> 5) + tile);
            oam = oam->field_10;
        }
        if (tiles != 0) {
            tiles++;
        }
    }
    *cursor = entry;
    return oam;
}

// Sprite routine 5 (off_839EE1C[5]): like routine 4, with an 8-bit tile and no flip bit per object.
struct struc_11* sub_802039C(struct struc_11* oam, struct Sprite* sprite, u8** cursor, int count,
                             u8* tiles, s8* matrices, int matrix, u8* depth) {
    int palette = 0;
    int mask = sprite->field_14;
    int mode;
    int priorityBits;
    u8* entry;
    int i;
    u8 shapeX;
    u8 sizeY;
    u8 tileNumber;
    int flip;

    while (!(mask & 1)) {
        palette++;
        mask >>= 1;
    }
    palette <<= 12;

    if ((sprite->field_C != 0 && !sprite->field_28_15) || sprite->xScale > 0x100
        || sprite->yScale > 0x100 || sprite->field_8 > 0x100 || sprite->field_A > 0x100) {
        mode = 3;
    } else {
        mode = 1;
        if (sprite->field_C == 0 && *(u32*)&sprite->xScale == 0x01000100) {
            mode = *(u32*)&sprite->field_8 != 0x01000100;
        }
    }

    priorityBits = sprite->field_1F_0 << 10;
    entry = *cursor;
    for (i = 0; i < count; i++, entry += 3) {
        int width;
        int height;
        int x;
        int y;
        u8* size;

        shapeX = entry[0];
        sizeY = entry[1];
        tileNumber = entry[2];
        size = &byte_839EE04[(shapeX >> 6) * 8 + (sizeY >> 6) * 2];
        width = size[0];
        height = size[1];
        x = shapeX & 0x3F;
        if (x & 0x20) {
            x |= ~0x3F;
        }
        y = sizeY & 0x3F;
        if (y & 0x20) {
            y |= ~0x3F;
        }

        if (sprite->xScale != 0x100) {
            width <<= 8;
            x *= sprite->xScale;
            x -= (width - sprite->xScale * width / 256) / 2;
            x /= 256;
            width /= 256;
        }
        if (sprite->field_11_6) {
            x = -x - width;
        }
        if (sprite->yScale != 0x100) {
            height <<= 8;
            y *= sprite->yScale;
            y -= (height - sprite->yScale * height / 256) / 2;
            y /= 256;
            height /= 256;
        }
        if (sprite->field_11_7) {
            y = -y - height;
        }

        if (sprite->field_C != 0) {
            int halfWidth = width / 2;
            int halfHeight = height / 2;
            int angle = (u16)sprite->field_C >> 8;
            int centerX = x + halfWidth;
            int centerY = y + halfHeight;

            x = (centerX * word_8198584[angle] + centerY * word_8198504[angle]) / 0x4000 - halfWidth;
            y = (-centerX * word_8198504[angle] + centerY * word_8198584[angle]) / 0x4000 - halfHeight;
        }

        if (*(u32*)&sprite->field_8 != 0x01000100) {
            x = x * sprite->field_8 / 256;
            x -= (width - width * sprite->field_8 / 256) / 2;
            y = y * sprite->field_A / 256;
            y -= (height - height * sprite->field_A / 256) / 2;
        }

        if (mode == 3) {
            x -= width / 2;
            y -= height / 2;
            width *= 2;
            height *= 2;
        }

        x += sprite->xPosition;
        y += sprite->yPosition;
        if (x >= -width && x <= 239 && y >= -height && y <= 159) {
            int tile;
            u16* attributes;

            oam->field_8 = (priorityBits << 20) | (sprite->field_E << 14) | (*depth << 7) | i;
            (*depth)++;
            flip = sprite->field_11_6 | (sprite->field_11_7 << 1);
            if (mode != 0) {
                if (matrices[flip] == -1) {
                    matrices[flip] = matrix;
                    matrix++;
                    sprite->field_10_6++;
                }
            }
            oam->field_6 = 0;
            attributes = &oam->field_0;
            // OBJ mode, mosaic and 8bpp bits (field_11_2, field_11_4, field_11_5), read as one halfword
            attributes[0] = (*(u16*)((u8*)sprite + 0x10) & 0x3C00) | ((shapeX & 0xC0) << 8)
                            | (mode << 8) | (y & 0xFF);
            if (mode != 0) {
                oam->field_2 = ((sizeY & 0xC0) << 8) | (matrices[flip] << 9) | (x & 0x1FF);
            } else {
                oam->field_2 = ((sizeY & 0xC0) << 8) | (flip << 12) | (x & 0x1FF);
            }
            tile = tileNumber;
            if (tiles != 0) {
                tile = *tiles;
            }
            attributes[2] = palette | priorityBits | ((sprite->field_2E >> 5) + tile);
            oam = oam->field_10;
        }
        if (tiles != 0) {
            tiles++;
        }
    }
    *cursor = entry;
    return oam;
}

// Thumb version of arm_80008B8 (dword_3000D4C): copies attributes 0-2 of the used nodes after head to
// dest.
int sub_8020784(struct struc_11* node, int dest) {
    u16* out = (u16*)dest;

    while ((node = node->field_10) != 0) {
        if (node->field_6 == 0) {
            u32 attributes = *(u32*)&node->field_0;
            u16 attribute2 = node->field_4;

            *(u32*)out = attributes;
            out[2] = attribute2;
            out += 4;
        }
    }
    return (int)out;
}

// Thumb version of arm_8000850 (dword_3000D48): insertion sort of the list by field_8, up to end.
void sub_80207A8(struct struc_11* head, struct struc_11* end) {
    struct struc_11* node = head->field_10;

    do {
        struct struc_11* previous = node->field_C;
        struct struc_11* moved = 0;

        while (previous->field_8 > node->field_8) {
            struct struc_11* before = previous->field_C;
            struct struc_11* after = node->field_10;

            before->field_10 = node;
            after->field_C = previous;
            node->field_C = before;
            previous->field_C = node;
            previous->field_10 = after;
            node->field_10 = previous;
            moved = previous;
            previous = node->field_C;
        }
        if (moved != 0) {
            node = moved->field_10;
        } else {
            node = node->field_10;
        }
    } while (node != end);
}

// Thumb version of arm_80008F0 (dword_3000D50): resets a pool of count nodes, all but the head unused.
void sub_80207E8(struct struc_11* node, int count) {
    count--;
    node->field_8 = 0;
    node++;
    while (count != 0) {
        node->field_6 = 1;
        count--;
        node++;
    }
}

// Links a pool of count nodes into a list; all nodes start unused with the highest sort key.
// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802083C.s\"");
#else
void sub_802083C(struct struc_11* node, int count) {
    struct struc_11* previous = 0;

    while (count != 0) {
        node->field_6 = 1;
        node->field_8 = 0xFFFFFFFF;
        node->field_C = previous;
        node->field_10 = node + 1;
        previous = node;
        count--;
        node++;
    }
    node[-1].field_10 = 0;
}
#endif

// Queues the upload of the sprite's tiles (field_50 to field_4C) as a background job.
void sub_80208E0(struct Sprite* sprite) {
    struct struc_Sprite48* job = sprite->field_48;

    job->field_0 = 1;
    job->field_4 = sprite->field_50;
    job->field_8 = sprite->field_4C;
    job->field_C = 0;
}

// Frees the IWRAM routines copied by sub_801DFB0.
void sub_80208F4(void) {
    int i;

    free_heap_memory_8018C68(dword_3000D48);
    dword_3000D48 = 0;
    dword_3000D4C = 0;
    dword_3000D50 = 0;
    for (i = 0; i < 6; i++) {
        if ((byte_3000D70 >> i) & 1) {
            SpriteDrawRoutine* slot = &dword_3000D58[i];

            // Thumb bit
            *slot = (SpriteDrawRoutine)((u8*)*slot - 1);
            free_heap_memory_8018C68(*slot);
            *slot = 0;
        }
    }
    byte_3000D70 = 0;
}

// Sets up the sprite system: clears stru_203FFB8, copies the sprite routines selected by flags to IWRAM
// and allocates the pool of OAM sort nodes.
void sub_8020994(u16 arg0, u8 arg1, u8 arg2, u8 flags) {
    struct struc_203FFB8* system = &stru_203FFB8;
    struct struc_203FFA8* heap = &stru_203FFA8;
    int i;

    dword_3000D74 = system;
    heap->field_4 = 0;
    heap->field_0 = 0;
    heap->field_8 = 0x3FFB8;
    heap->field_C = 0;
    dword_3001034(0, system, sizeof(*system));
    system->field_8 = system->field_A = arg0;
    //! Possible fake match (permuter): the do-while(0) may be what's left of a macro
    do {
        system->field_3 = system->field_4 = arg1;
        system->field_5 = system->field_6 = arg2;
    } while (0);
    system->field_2C = heap;
    for (i = 0; i < 16; i++) {
        system->field_C[i] |= 0xFFFF;
    }
    system->field_3C = (u32) new ((flags >> 7) ^ 1, "OAME", 0) struct struc_11[0x82];
    sub_801DFB0(flags);
    sub_802083C((struct struc_11*)system->field_3C, 0x82);
}
