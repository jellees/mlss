#include "global.h"
#include "common.h"
#include "heap.h"
#include "sprite.h"

// Size of a ROM routine delimited by name and name##_end.
#define ROUTINE_SIZE(name) ((u32)(name##_end - name))

// Copies the ARM routines and the sprite routines selected by flags (bit i = routine i) to IWRAM.
void sub_801DFB0(u8 flags) {
    int i;

    gOamNodesSort = (void (*)(int, int))alloc_heap_8018CEC(
        0, ROUTINE_SIZE(arm_8000850) + ROUTINE_SIZE(arm_80008B8) + ROUTINE_SIZE(arm_80008F0), "ANMA");
    CpuCopy32(arm_8000850, gOamNodesSort, ROUTINE_SIZE(arm_8000850));
    gOamNodesCopy = (int (*)(int, int))((u8*)gOamNodesSort + ROUTINE_SIZE(arm_8000850));
    CpuCopy32(arm_80008B8, gOamNodesCopy, ROUTINE_SIZE(arm_80008B8));
    gOamNodesReset = (void (*)(u32, int))((u8*)gOamNodesCopy + ROUTINE_SIZE(arm_80008B8));
    CpuCopy32(arm_80008F0, gOamNodesReset, ROUTINE_SIZE(arm_80008F0));

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
        sprite->hidden = true;
        sprite->field_20 = 0x10;
        if (sprite->field_44 != 0 && sprite->field_44[0] != 1) {
            sub_801E3EC(sprite->field_44, file);
        }
        if (sprite->field_50 != 0 && sprite->field_48->status == 1
            && (sprite->field_28_13 || dword_3000C78 != sub_800063C)) {
            int size = sprite->field_28_0 << 5;
            int used = sub_80198B0(sprite->field_50);
            if (size - used > 0) {
                dword_3001034(0, sprite->field_4C + used, size - used);
                sprite->field_28_0 = used / 32;
            }
            dword_3000C84(sprite->field_48->src, sprite->field_48->dest);
            sprite->field_48->status = 0;
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
    sprite->active = true;
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

    if ((sprite->field_48 == 0 || sprite->field_48->status == 0)
        && (sprite->field_44 == 0 || sprite->field_44[0] == 1) && !sprite->field_12_4
        && !sprite->hidden) {
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
                sprite->hidden = true;
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
    if (callback != 0 && (sprite->field_28_9 || (sprite->field_12_3 && !sprite->hidden))) {
        callback(sprite, sprite->field_60);
    }
}

// The IWRAM copy of the division routine (loc_819832C), as in FieldObject.
#define IWRAM_DIV(a, b)                                                                                \
    (((int (*)(int, int))((u8*)dword_3001038 + ((u8*)&loc_819832C - (u8*)&loc_8198220)))(a, b))

struct OamNode* sub_801E80C(struct Sprite* sprite, struct OamNode* arg1, u8* arg2) {
    if (sprite->field_50 != 0) {
        if (sprite->field_48->status == 1) {
            int size = sprite->field_28_0 << 5;
            int done = sub_80198B0(sprite->field_50);
            int remaining = size - done;

            if (remaining > 0) {
                CpuFastFill(0, sprite->field_4C + done, remaining);
                sprite->field_28_0 = done / 32;
            }
            sub_8019808(sprite->field_48);
        } else if (sprite->field_48->status == 0) {
            sprite->field_50 = 0;
            sprite->field_12_6 = gGameState.field_888_5 + 1;
        }
    }

    if ((sprite->field_48 == 0 || sprite->field_48->status == 0)
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

        if (!sprite->hidden) {
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
                    u16* dest = &gGameState.oamBuffers[gGameState.field_888_3][matrix * 4].affineParam;

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
                u16* base = &gGameState.oamBuffers[gGameState.field_888_3][0].affineParam;

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
struct OamNode* sub_801EEBC(struct OamNode* oam, struct Sprite* sprite, u8** cursor, int count,
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
    int affineMode;
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
        mode = ST_OAM_AFFINE_DOUBLE;
    } else if (*(u32*)&sprite->xScale != 0x01000100) {
        mode = ST_OAM_AFFINE_NORMAL;
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
        affineMode = ST_OAM_AFFINE_DOUBLE;
        if (mode != ST_OAM_AFFINE_DOUBLE) {
            affineMode = mode;
            if (affine != ST_OAM_AFFINE_OFF) {
                affineMode = affine;
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
        if (affine == ST_OAM_AFFINE_DOUBLE) {
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

        if (affineMode == ST_OAM_AFFINE_DOUBLE) {
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

            oam->sortKey = (priority << 30) | (sprite->field_E << 14) | (*depth << 7) | i;
            (*depth)++;
            if (affineMode != ST_OAM_AFFINE_OFF && affine == ST_OAM_AFFINE_OFF) {
                flip = ((entry[3] >> 4) & 3) ^ (sprite->field_11_6 | (sprite->field_11_7 << 1));
                if (matrices[flip] == -1) {
                    matrices[flip] = matrix;
                    matrix++;
                    sprite->field_10_6++;
                }
            }
            oam->unused = false;
            attributes = &oam->attr0;
            if (sprite->field_11_2) {
                attribute = sprite->field_11_2 << 10;
            } else {
                attribute = (entry[1] & 0xC) << 8;
            }
            attributes[0] = attribute
                            | ((((entry[1] & 0xF0) | affineMode) << 8) | (sprite->field_11_4 << 12))
                            | (y & 0xFF);
            if (affineMode != ST_OAM_AFFINE_OFF) {
                int sizeBits = (entry[3] & 0xC0) << 8;
                int xBits = x & 0x1FF;
                int matrixBits;

                if (affine == ST_OAM_AFFINE_OFF) {
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
            oam = oam->next;
        }
        if (tiles != 0) {
            tiles++;
        }
    }
    *cursor = entry;
    return oam;
}

// Sprite routine 1 (off_839EE1C[1]): like routine 0, with 5-byte frame objects.
struct OamNode* sub_801F370(struct OamNode* oam, struct Sprite* sprite, u8** cursor, int count,
                            u8* tiles, s8* matrices, int matrix, u8* depth) {
    u16 palettes[16];
    u16* palette = palettes;
    int bit = 0;
    int mask = sprite->field_14;
    int mode;
    u8* entry;
    int i;
    int affine;
    int affineMode;
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
        mode = ST_OAM_AFFINE_DOUBLE;
    } else if (*(u32*)&sprite->xScale != 0x01000100) {
        mode = ST_OAM_AFFINE_NORMAL;
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
        affineMode = ST_OAM_AFFINE_DOUBLE;
        if (mode != ST_OAM_AFFINE_DOUBLE) {
            affineMode = mode;
            if (affine != ST_OAM_AFFINE_OFF) {
                affineMode = affine;
            }
        }

        size = &byte_839EE04[(entry[4] >> 4) * 2];
        width = size[0];
        height = size[1];
        x = (s8)entry[0];
        y = (s8)entry[1];
        if (affine == ST_OAM_AFFINE_DOUBLE) {
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

        if (affineMode == ST_OAM_AFFINE_DOUBLE) {
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
            oam->sortKey = (priorityBits << 20) | (sprite->field_E << 14) | (*depth << 7) | i;
            (*depth)++;
            if (affineMode != ST_OAM_AFFINE_OFF && affine == ST_OAM_AFFINE_OFF) {
                flip = ((entry[2] >> 2) & 3) ^ (sprite->field_11_6 | (sprite->field_11_7 << 1));
                if (matrices[flip] == -1) {
                    matrices[flip] = matrix;
                    matrix++;
                    sprite->field_10_6++;
                }
            }
            oam->unused = false;
            attributes = &oam->attr0;
            // OBJ mode, mosaic and 8bpp bits (field_11_2, field_11_4, field_11_5), read as one halfword
            attributes[0] = (*(u16*)((u8*)sprite + 0x10) & 0x3C00) | ((entry[4] & 0xC0) << 8)
                            | (affineMode << 8) | (y & 0xFF);
            if (affineMode != ST_OAM_AFFINE_OFF) {
                int sizeBits = (entry[4] & 0x30) << 10;
                int xBits = x & 0x1FF;
                int matrixNum;

                if (affine == ST_OAM_AFFINE_OFF) {
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
            oam = oam->next;
        }
        if (tiles != 0) {
            tiles++;
        }
    }
    *cursor = entry;
    return oam;
}

// Sprite routine 2 (off_839EE1C[2]): 4-byte frame objects without their own affine mode.
struct OamNode* sub_801F7D0(struct OamNode* oam, struct Sprite* sprite, u8** cursor, int count,
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
        mode = ST_OAM_AFFINE_DOUBLE;
    } else {
        mode = ST_OAM_AFFINE_NORMAL;
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

        if (mode == ST_OAM_AFFINE_DOUBLE) {
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

            oam->sortKey = (priorityBits << 20) | (sprite->field_E << 14) | (*depth << 7) | i;
            (*depth)++;
            if (mode != ST_OAM_AFFINE_OFF) {
                flip = ((flags >> 2) & 3) ^ (sprite->field_11_6 | (sprite->field_11_7 << 1));
                if (matrices[flip] == -1) {
                    matrices[flip] = matrix;
                    matrix++;
                    sprite->field_10_6++;
                }
            }
            oam->unused = false;
            attributes = &oam->attr0;
            // OBJ mode, mosaic and 8bpp bits (field_11_2, field_11_4, field_11_5), read as one halfword
            attributes[0] = (*(u16*)((u8*)sprite + 0x10) & 0x3C00) | ((flags & 0xC0) << 8) | (mode << 8)
                            | (y & 0xFF);
            if (mode != ST_OAM_AFFINE_OFF) {
                oam->attr1 = ((flags & 0x30) << 10) | (matrices[flip] << 9) | (x & 0x1FF);
            } else {
                oam->attr1 = ((flags & 0x3C) ^ ((sprite->field_11_6 << 2) | (sprite->field_11_7 << 3)))
                                 << 10
                             | (x & 0x1FF);
            }
            paletteIndex = flags & 3;
            if (tiles == 0) {
                tile = entry[2];
            } else {
                tile = *tiles;
            }
            attributes[2] = priorityBits | palettes[paletteIndex] | ((sprite->field_2E >> 5) + tile);
            oam = oam->next;
        }
        if (tiles != 0) {
            tiles++;
        }
    }
    *cursor = entry;
    return oam;
}

// Sprite routine 3 (off_839EE1C[3]): like routine 2, with one palette for the whole sprite.
struct OamNode* sub_801FBAC(struct OamNode* oam, struct Sprite* sprite, u8** cursor, int count,
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
        mode = ST_OAM_AFFINE_DOUBLE;
    } else {
        mode = ST_OAM_AFFINE_NORMAL;
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

        if (mode == ST_OAM_AFFINE_DOUBLE) {
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

            oam->sortKey = (priorityBits << 20) | (sprite->field_E << 14) | (*depth << 7) | i;
            (*depth)++;
            if (mode != ST_OAM_AFFINE_OFF) {
                flip = ((flags >> 2) & 3) ^ (sprite->field_11_6 | (sprite->field_11_7 << 1));
                if (matrices[flip] == -1) {
                    matrices[flip] = matrix;
                    matrix++;
                    sprite->field_10_6++;
                }
            }
            oam->unused = false;
            attributes = &oam->attr0;
            // OBJ mode, mosaic and 8bpp bits (field_11_2, field_11_4, field_11_5), read as one halfword
            attributes[0] = (*(u16*)((u8*)sprite + 0x10) & 0x3C00) | ((flags & 0xC0) << 8) | (mode << 8)
                            | (y & 0xFF);
            if (mode != ST_OAM_AFFINE_OFF) {
                oam->attr1 = ((flags & 0x30) << 10) | (matrices[flip] << 9) | (x & 0x1FF);
            } else {
                oam->attr1 = ((flags & 0x3C) ^ ((sprite->field_11_6 << 2) | (sprite->field_11_7 << 3)))
                                 << 10
                             | (x & 0x1FF);
            }
            if (tiles == 0) {
                tile = entry[2] | ((flags & 1) << 8);
            } else {
                tile = *tiles;
            }
            attributes[2] = priorityBits | palette | ((sprite->field_2E >> 5) + tile);
            oam = oam->next;
        }
        if (tiles != 0) {
            tiles++;
        }
    }
    *cursor = entry;
    return oam;
}

// Sprite routine 4 (off_839EE1C[4]): 3-byte frame objects, one palette for the whole sprite.
struct OamNode* sub_801FFA8(struct OamNode* oam, struct Sprite* sprite, u8** cursor, int count,
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
        mode = ST_OAM_AFFINE_DOUBLE;
    } else {
        mode = ST_OAM_AFFINE_NORMAL;
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

        if (mode == ST_OAM_AFFINE_DOUBLE) {
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

            oam->sortKey = (priorityBits << 20) | (sprite->field_E << 14) | (*depth << 7) | i;
            (*depth)++;
            flip = (tileFlip >> 7) ^ (sprite->field_11_6 | (sprite->field_11_7 << 1));
            if (mode != ST_OAM_AFFINE_OFF) {
                if (matrices[flip] == -1) {
                    matrices[flip] = matrix;
                    matrix++;
                    sprite->field_10_6++;
                }
            }
            oam->unused = false;
            attributes = &oam->attr0;
            // OBJ mode, mosaic and 8bpp bits (field_11_2, field_11_4, field_11_5), read as one halfword
            attributes[0] = (*(u16*)((u8*)sprite + 0x10) & 0x3C00) | ((shapeX & 0xC0) << 8)
                            | (mode << 8) | (y & 0xFF);
            if (mode != ST_OAM_AFFINE_OFF) {
                oam->attr1 = ((sizeY & 0xC0) << 8) | (matrices[flip] << 9) | (x & 0x1FF);
            } else {
                oam->attr1 = ((sizeY & 0xC0) << 8) | (flip << 12) | (x & 0x1FF);
            }
            if (tiles == 0) {
                tile = tileFlip & 0x7F;
            } else {
                tile = *tiles;
            }
            attributes[2] = palette | priorityBits | ((sprite->field_2E >> 5) + tile);
            oam = oam->next;
        }
        if (tiles != 0) {
            tiles++;
        }
    }
    *cursor = entry;
    return oam;
}

// Sprite routine 5 (off_839EE1C[5]): like routine 4, with an 8-bit tile and no flip bit per object.
struct OamNode* sub_802039C(struct OamNode* oam, struct Sprite* sprite, u8** cursor, int count,
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
        mode = ST_OAM_AFFINE_DOUBLE;
    } else {
        mode = ST_OAM_AFFINE_NORMAL;
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

        if (mode == ST_OAM_AFFINE_DOUBLE) {
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

            oam->sortKey = (priorityBits << 20) | (sprite->field_E << 14) | (*depth << 7) | i;
            (*depth)++;
            flip = sprite->field_11_6 | (sprite->field_11_7 << 1);
            if (mode != ST_OAM_AFFINE_OFF) {
                if (matrices[flip] == -1) {
                    matrices[flip] = matrix;
                    matrix++;
                    sprite->field_10_6++;
                }
            }
            oam->unused = false;
            attributes = &oam->attr0;
            // OBJ mode, mosaic and 8bpp bits (field_11_2, field_11_4, field_11_5), read as one halfword
            attributes[0] = (*(u16*)((u8*)sprite + 0x10) & 0x3C00) | ((shapeX & 0xC0) << 8)
                            | (mode << 8) | (y & 0xFF);
            if (mode != ST_OAM_AFFINE_OFF) {
                oam->attr1 = ((sizeY & 0xC0) << 8) | (matrices[flip] << 9) | (x & 0x1FF);
            } else {
                oam->attr1 = ((sizeY & 0xC0) << 8) | (flip << 12) | (x & 0x1FF);
            }
            tile = tileNumber;
            if (tiles != 0) {
                tile = *tiles;
            }
            attributes[2] = palette | priorityBits | ((sprite->field_2E >> 5) + tile);
            oam = oam->next;
        }
        if (tiles != 0) {
            tiles++;
        }
    }
    *cursor = entry;
    return oam;
}

// Thumb version of arm_80008B8 (gOamNodesCopy): copies attributes 0-2 of the used nodes after head to
// dest.
int oam_nodes_copy(struct OamNode* node, int dest) {
    u16* out = (u16*)dest;

    while ((node = node->next) != 0) {
        if (!node->unused) {
            u32 attributes = *(u32*)&node->attr0;
            u16 attribute2 = node->attr2;

            *(u32*)out = attributes;
            out[2] = attribute2;
            out += 4;
        }
    }
    return (int)out;
}

// Thumb version of arm_8000850 (gOamNodesSort): insertion sort of the list by field_8, up to end.
void oam_nodes_sort(struct OamNode* head, struct OamNode* end) {
    struct OamNode* node = head->next;

    do {
        struct OamNode* previous = node->previous;
        struct OamNode* moved = 0;

        while (previous->sortKey > node->sortKey) {
            struct OamNode* before = previous->previous;
            struct OamNode* after = node->next;

            before->next = node;
            after->previous = previous;
            node->previous = before;
            previous->previous = node;
            previous->next = after;
            node->next = previous;
            moved = previous;
            previous = node->previous;
        }
        if (moved != 0) {
            node = moved->next;
        } else {
            node = node->next;
        }
    } while (node != end);
}

// Thumb version of arm_80008F0 (gOamNodesReset): resets a pool of count nodes, all but the head unused.
void oam_nodes_reset(struct OamNode* node, int count) {
    count--;
    node->sortKey = 0;
    node++;
    while (count != 0) {
        node->unused = true;
        count--;
        node++;
    }
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/oam_nodes_init.s\"");
#else
// Links a pool of count nodes into a list; all nodes start unused with the highest sort key.
void oam_nodes_init(struct OamNode* node, int count) {
    struct OamNode* previous = 0;

    while (count != 0) {
        node->unused = true;
        node->sortKey = 0xFFFFFFFF;
        node->previous = previous;
        node->next = node + 1;
        previous = node;
        count--;
        node++;
    }
    node[-1].next = 0;
}
#endif

// Queues the upload of the sprite's tiles (field_50 to field_4C) as a background job.
void sub_80208E0(struct Sprite* sprite) {
    struct DecompressJob* job = sprite->field_48;

    job->status = 1;
    job->src = sprite->field_50;
    job->dest = sprite->field_4C;
    job->field_C = 0;
}

// Frees the IWRAM routines copied by sub_801DFB0.
void sub_80208F4(void) {
    int i;

    free_heap_memory_8018C68(gOamNodesSort);
    gOamNodesSort = 0;
    gOamNodesCopy = 0;
    gOamNodesReset = 0;
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
    struct SpriteHeapBlock* heap = &gSpriteHeap;
    int i;

    dword_3000D74 = system;
    heap->next = 0;
    heap->previous = 0;
    heap->size = 0x3FFB8;
    heap->type = SPRITE_HEAP_FREE;
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
    system->field_3C = (u32) new ((flags >> 7) ^ 1, "OAME", 0) struct OamNode[0x82];
    sub_801DFB0(flags);
    oam_nodes_init((struct OamNode*)system->field_3C, 0x82);
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8020A78.s\"");
#else
// Builds the OAM list for the frame: gives every shown sprite its affine matrices and VRAM tiles
// (shared with an earlier sprite that looks the same) and draws it.
void sub_8020A78(void) {
    struct struc_203FFB8* system = &stru_203FFB8;
    struct Sprite* sprite = system->field_30;
    u16 vram;
    u8 matrix;
    struct OamNode* oam;

    system->field_2 = 0;
    gOamNodesReset(system->field_3C, 0x82);
    if (sprite == 0) {
        return;
    }
    vram = system->field_8;
    matrix = system->field_6;
    oam = ((struct OamNode*)system->field_3C)->next;
    do {
        if (sprite->active) {
            struct Sprite* other;
            int shared;

            if (system->field_0_1) {
                int found = 0;

                other = system->field_30;
                while (other != sprite) {
                    // field_11 & 0xC0: both flip bits (field_11_6, field_11_7)
                    if (!other->hidden && other->field_1E_0 == sprite->field_1E_0
                        && other->field_1A == sprite->field_1A && other->field_22 == sprite->field_22
                        && *(u32*)&other->xScale == *(u32*)&sprite->xScale
                        && *(u32*)&other->field_8 == *(u32*)&sprite->field_8
                        && other->field_C == sprite->field_C
                        && (*((u8*)other + 0x11) & 0xC0) == (*((u8*)sprite + 0x11) & 0xC0)) {
                        found = 1;
                        break;
                    }
                    other = other->field_68;
                    if (other == 0) {
                        break;
                    }
                }
                if (found) {
                    sprite->field_10_1 = other->field_10_1;
                    sprite->field_28_11 = 1;
                } else {
                    sprite->field_10_1 = matrix;
                    sprite->field_28_11 = 0;
                }
            } else {
                sprite->field_10_1 = matrix;
                sprite->field_28_11 = 0;
            }

            shared = 0;
            if (sprite->field_44 != 0) {
                if (system->field_0_0) {
                    other = system->field_30;
                    while (other != sprite) {
                        if (other->field_48->status == 0 && !other->hidden
                            && other->field_1E_0 == sprite->field_1E_0
                            && *(u32*)&other->field_18 == *(u32*)&sprite->field_18
                            && other->field_22 == sprite->field_22) {
                            shared = 1;
                            break;
                        }
                        other = other->field_68;
                        if (other == 0) {
                            break;
                        }
                    }
                }
                if (shared) {
                    sprite->field_2E = other->field_2E;
                    sprite->field_28_10 = 1;
                } else {
                    sprite->field_2E = vram;
                    sprite->field_28_10 = 0;
                }
            }
            oam = sub_801E80C(sprite, oam, &system->field_2);
            matrix += sprite->field_10_6;
            if (sprite->field_44 != 0 && !shared) {
                vram += sprite->field_30;
            }
        }
        sprite = sprite->field_68;
    } while (sprite != 0);
    system->field_38 = oam;
}
#endif

// Shows a hidden sprite again and reloads its palettes.
void sprite_show(struct Sprite* sprite) {
    if (sprite->hidden) {
        sprite->hidden = false;
        sprite->field_12_1 = 0;
        if (sprite->field_54 != 0) {
            if (sub_8021574(sprite->field_1E_4, sprite->field_1C, sprite->field_28_12, 1, 1,
                            &sprite->field_14, -1)
                == 2) {
                sprite->field_13_0 = 0;
            } else {
                sprite->field_13_0 = gGameState.field_888_5 + 1;
            }
        }
    }
}

// Hides a sprite: frees its palette slots and removes it from the sprite list.
void sprite_remove(struct Sprite* sprite) {
    struct struc_203FFB8* system;

    if (!sprite->hidden) {
        sprite->hidden = true;
        if (sub_8021A18(sprite, 2) == 0) {
            u16* slot = stru_203FFB8.field_C;
            int mask = sprite->field_14;

            while (mask != 0) {
                if ((*slot & 0x4000) && (mask & 1)) {
                    *slot = 0xFFFF;
                }
                slot++;
                mask >>= 1;
            }
        }
        system = &stru_203FFB8;
        if (sprite->field_64 != 0) {
            sprite->field_64->field_68 = sprite->field_68;
        } else {
            system->field_30 = sprite->field_68;
        }
        if (sprite->field_68 != 0) {
            sprite->field_68->field_64 = sprite->field_64;
        } else {
            system->field_34 = sprite->field_64;
        }
        sprite->field_68 = 0;
        sprite->field_64 = 0;
        system->field_1--;
    }
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8020DD0.s\"");
#else
// Creates a sprite and adds it to the end of the sprite list. id -1 makes an empty sprite; ids and
// palettes with bits 12-15 set select the bank (bits 12-15 minus 1) themselves.
//
struct Sprite* sub_8020DD0(int bank, int id, int arg2, int tileCount, int arg4, int bufferSize,
                           int palette) {
    struct Sprite* sprite;
    struct struc_203FFB8* system;

    if (id != -1) {
        struct SpriteInfo* info;
        int flag;
        int animationIndex;
        int tilesIndex;
        int paletteBank;
        u8* animation;
        u8* tiles;
        int paletteCount;
        void** paletteTable;
        void* paletteData;
        u8* base;
        int frames;
        int records;
        int recordSize;

        if (id & 0xF000) {
            bank = (id >> 12) - 1;
            id &= 0xFFF;
        }
        info = &gSpriteInfo[bank][id];
        flag = info->uncompressed;
        animationIndex = info->animation;
        tilesIndex = info->tiles;
        if (palette == -1) {
            paletteBank = bank;
            palette = info->palette;
        } else if (palette & 0xF000) {
            paletteBank = (palette >> 12) - 1;
            palette &= 0xFFF;
        } else {
            paletteBank = bank;
        }
        animation = gSpriteAnimations[bank][animationIndex];
        tiles = (u8*)gSpriteTiles[bank] + gSpriteTiles[bank][tilesIndex];
        paletteCount = gSpritePaletteCounts[paletteBank][palette];
        if (gGameState.field_888_1 == 1 && gSpritePalettes[paletteBank] != 0
            && !stru_203FFB8.field_0_2) {
            paletteTable = off_839EF10[paletteBank];
        } else {
            paletteTable = gSpritePalettes[paletteBank];
        }
        paletteData = paletteTable[palette];

        if (tileCount == -1) {
            frames = (animation[4] | ((animation[5] & 1) << 8)) + 1;
            if (!flag) {
                tileCount = sub_80198B0(tiles) >> 5;
            } else {
                tileCount = 0;
            }
            if (tileCount < frames) {
                tileCount = frames;
            }
        }
        if (arg4 == -1) {
            if (arg2 == 1) {
                arg4 = (animation[3] >> 1) + 1;
            } else {
                arg4 = tileCount;
            }
        }
        tileCount *= 32;
        arg4 *= 32;
        base = animation - (animation[0] | (animation[1] << 8));
        records = (animation[6] & 0x7F) + 1;
        recordSize = base[0];
        if (bufferSize == -1) {
            bufferSize = records * recordSize + 1;
        }
        bufferSize += 3;
        bufferSize &= ~3;

        sprite = (struct Sprite*)sprite_heap_alloc(SPRITE_HEAP_SPRITE, 0x6C, 0, 0);
        dword_3001034(0, sprite, 0x6C);
        sprite->field_10_0 = 1;
        sprite->xPosition = 120;
        sprite->yPosition = 80;
        sprite->xScale = 0x100;
        sprite->yScale = 0x100;
        sprite->field_8 = 0x100;
        sprite->field_A = 0x100;
        sprite->hidden = true;
        sprite->field_13_4 = paletteCount;
        sprite->field_16 = id;
        sprite->field_1A = animationIndex;
        sprite->field_18 = tilesIndex;
        sprite->field_1C = palette;
        sprite->field_1E_0 = bank;
        sprite->field_1E_4 = paletteBank;
        sprite->field_30 = arg4;
        sub_8021AC8(sprite, tiles, animation, paletteData, tileCount, arg2 == 1 ? bufferSize : 0, flag,
                    0);
    } else {
        sprite = (struct Sprite*)sprite_heap_alloc(SPRITE_HEAP_SPRITE, 0x6C, 0, 0);
        dword_3001034(0, sprite, 0x6C);
        sprite->field_10_0 = 1;
        sprite->xPosition = 120;
        sprite->yPosition = 80;
        sprite->xScale = 0x100;
        sprite->yScale = 0x100;
        sprite->field_8 = 0x100;
        sprite->field_A = 0x100;
        sprite->hidden = true;
        sprite->field_16 = 0xFFFF;
    }

    system = &stru_203FFB8;
    if (system->field_30 == 0) {
        system->field_30 = sprite;
    } else {
        sprite->field_68 = system->field_34->field_68;
        system->field_34->field_68 = sprite;
    }
    sprite->field_64 = system->field_34;
    system->field_34 = sprite;
    system->field_1++;
    return sprite;
}
#endif

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80210A8.s\"");
#else
// Gives an existing sprite new graphics (see sub_8020DD0 for the parameters).
//
void sub_80210A8(struct Sprite* sprite, int bank, int id, int arg3, int tileCount, int arg5,
                 int bufferSize, int palette) {
    struct SpriteInfo* info;
    int flag;
    int animationIndex;
    int tilesIndex;
    int paletteBank;
    u8* animation;
    u8* tiles;
    int paletteCount;
    void** paletteTable;
    void* paletteData;
    u8* base;
    int frames;
    int records;
    int recordSize;

    if (sprite->field_16 != 0xFFFF) {
        if (!sprite->hidden) {
            sprite->hidden = true;
            if (sub_8021A18(sprite, 2) == 0) {
                u16* slot = stru_203FFB8.field_C;
                int mask = sprite->field_14;

                while (mask != 0) {
                    if ((*slot & 0x4000) && (mask & 1)) {
                        *slot = 0xFFFF;
                    }
                    slot++;
                    mask >>= 1;
                }
            }
        }
        sub_8021C24(sprite);
    }

    if (id & 0xF000) {
        bank = (id >> 12) - 1;
        id &= 0xFFF;
    }
    info = &gSpriteInfo[bank][id];
    flag = info->uncompressed;
    animationIndex = info->animation;
    tilesIndex = info->tiles;
    if (palette == -1) {
        paletteBank = bank;
        palette = info->palette;
    } else if (palette & 0xF000) {
        paletteBank = (palette >> 12) - 1;
        palette &= 0xFFF;
    } else {
        paletteBank = bank;
    }
    animation = gSpriteAnimations[bank][animationIndex];
    tiles = (u8*)gSpriteTiles[bank] + gSpriteTiles[bank][tilesIndex];
    paletteCount = gSpritePaletteCounts[paletteBank][palette];
    if (gGameState.field_888_1 == 1 && gSpritePalettes[paletteBank] != 0 && !stru_203FFB8.field_0_2) {
        paletteTable = off_839EF10[paletteBank];
    } else {
        paletteTable = gSpritePalettes[paletteBank];
    }
    paletteData = paletteTable[palette];

    if (tileCount == -1) {
        frames = (animation[4] | ((animation[5] & 1) << 8)) + 1;
        tileCount = !flag ? sub_80198B0(tiles) >> 5 : 0;
        if (tileCount < frames) {
            tileCount = frames;
        }
    }
    // arg5 is unused, but this dead code is what leaves the original's lone load of it
    if (arg5 == -1) {
        arg5 = tileCount;
    }
    tileCount *= 32;
    base = animation - (animation[0] | (animation[1] << 8));
    records = (animation[6] & 0x7F) + 1;
    recordSize = base[0];
    if (bufferSize == -1) {
        bufferSize = recordSize * records + 1;
    }
    bufferSize += 3;
    bufferSize &= ~3;

    sprite->field_12_1 = 0;
    sprite->field_13_4 = paletteCount;
    sprite->field_16 = id;
    sprite->field_1A = animationIndex;
    sprite->field_18 = tilesIndex;
    sprite->field_1C = palette;
    sprite->field_1E_0 = bank;
    sprite->field_1E_4 = paletteBank;
    sub_8021AC8(sprite, tiles, animation, paletteData, tileCount, arg3 == 1 ? bufferSize : 0, flag, 1);
}
#endif

// Destroys a sprite: hides it, removes it from the sprite list and frees it.
void sprite_destroy(struct Sprite* sprite) {
    struct struc_203FFB8* system;

    if (!sprite->hidden) {
        sprite->hidden = true;
        if (sub_8021A18(sprite, 2) == 0) {
            u16* slot = stru_203FFB8.field_C;
            int mask = sprite->field_14;

            while (mask != 0) {
                if ((*slot & 0x4000) && (mask & 1)) {
                    *slot = 0xFFFF;
                }
                slot++;
                mask >>= 1;
            }
        }
    }
    sub_8021C24(sprite);
    system = &stru_203FFB8;
    if (sprite->field_64 != 0) {
        sprite->field_64->field_68 = sprite->field_68;
    } else {
        system->field_30 = sprite->field_68;
    }
    if (sprite->field_68 != 0) {
        sprite->field_68->field_64 = sprite->field_64;
    } else {
        system->field_34 = sprite->field_64;
    }
    sprite_heap_free(sprite);
    system->field_1--;
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80213A0.s\"");
#else
// Loads a sprite's tiles into a shared buffer (or finds the buffer loaded before) with a background
// job. Returns 0 for sprites without such tiles, and for an existing buffer unless arg3 is set.
void* sub_80213A0(int bank, int id, int tileCount, u8 arg3) {
    struct SpriteInfo* info;
    int animationIndex;
    int tilesIndex;
    u8* animation;
    u8* tiles;
    struct DecompressJob* job;

    if (id & 0xF000) {
        bank = (id >> 12) - 1;
        id &= 0xFFF;
    }
    info = &gSpriteInfo[bank][id];
    // Bit 31 (uncompressed) tested as the sign of the whole word
    if (*(s32*)info >= 0) {
        animationIndex = info->animation;
        tilesIndex = info->tiles;
        animation = gSpriteAnimations[bank][animationIndex];
        tiles = (u8*)gSpriteTiles[bank] + gSpriteTiles[bank][tilesIndex];
        if (tileCount == -1) {
            int frames = (animation[4] | ((animation[5] & 1) << 8)) + 1;

            tileCount = sub_80198B0(tiles) >> 5;
            if (tileCount < frames) {
                tileCount = frames;
            }
        }
        tileCount *= 32;
        job = (struct DecompressJob*)sprite_heap_search(SPRITE_HEAP_TILES, bank, tilesIndex);
        if (job == 0) {
            tileCount += 16;
            job = (struct DecompressJob*)sprite_heap_alloc(SPRITE_HEAP_TILES, tileCount, bank,
                                                           tilesIndex);
            dword_3001034(0, job, tileCount);
            job->status = 1;
            job->src = tiles;
            job->dest = job + 1;
            job->field_C = 0;
            sub_8019808(job);
        } else if (!arg3) {
            return 0;
        }
        return job;
    }
    return 0;
}
#endif

// Returns a sprite's tile map: the one in its animation file, or one built by sub_801E3EC in a shared
// buffer (0 for an existing buffer unless arg3 is set).
void* sub_80214A4(int bank, int id, int size, u8 arg3) {
    struct SpriteInfo* info;
    int animationIndex;
    u8* animation;
    int offset;
    u8* base;
    int records;
    int recordSize;
    u8* map;

    if (id & 0xF000) {
        bank = (id >> 12) - 1;
        id &= 0xFFF;
    }
    info = &gSpriteInfo[bank][id];
    animationIndex = info->animation;
    animation = gSpriteAnimations[bank][animationIndex];
    offset = animation[2] | (animation[3] << 8);
    if (offset == 0) {
        base = animation - (animation[0] | (animation[1] << 8));
        records = (animation[6] & 0x7F) + 1;
        recordSize = base[0];
        if (size == -1) {
            size = records * recordSize + 1;
        }
        size += 3;
        size &= ~3;
        map = (u8*)sprite_heap_search(SPRITE_HEAP_TILE_MAP, bank, animationIndex);
        if (map == 0) {
            map = (u8*)sprite_heap_alloc(SPRITE_HEAP_TILE_MAP, size, bank, animationIndex);
            sub_801E3EC(map, animation);
        } else if (!arg3) {
            return 0;
        }
    } else {
        map = animation - offset;
    }
    return map;
}

// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021574.s\"");
#else
// Finds or loads a palette in the 16 OBJ palette slots (stru_203FFB8.field_C, from field_4 on). Returns
// 2 if it is already loaded, 1 if the requested slot is taken or the slots run out, else 0; *mask gets
// the slots.
int sub_8021574(int bank, int palette, int arg2, int arg3, int arg4, void* mask, int slot) {
    struct struc_203FFB8* system = &stru_203FFB8;
    u16 free = 0;
    u16 used = 0;
    int start;
    int i;
    u16* entry;
    int count;
    void** paletteTable;
    u8* paletteData;
    u16 value;

    if (palette & 0xF000) {
        bank = (palette >> 12) - 1;
        palette &= 0xFFF;
    }
    start = system->field_4;
    for (i = start, entry = &stru_203FFB8.field_C[start]; i < 16; i++, entry++) {
        if (*entry != 0xFFFF) {
            if (slot == -1) {
                if (arg2 == 0) {
                    u16 flag = *entry & 0x8000;
                    int entryBank = (*entry >> 10) & 0xF;
                    int entryPalette = *entry & 0x3FF;

                    if (bank == entryBank && palette == entryPalette && flag == 0) {
                        used |= 1 << i;
                    }
                }
            } else if (slot == i) {
                return 1;
            }
        } else {
            free |= 1 << i;
        }
    }
    if (used != 0) {
        *(u16*)mask = used;
        return 2;
    }

    count = gSpritePaletteCounts[bank][palette];
    if (gGameState.field_888_1 == 1 && gSpritePalettes[bank] != 0 && !stru_203FFB8.field_0_2) {
        paletteTable = off_839EF10[bank];
    } else {
        paletteTable = gSpritePalettes[bank];
    }
    paletteData = (u8*)paletteTable[palette];
    if (slot == -1) {
        slot = start;
    }
    value = (arg2 << 15) | (arg4 << 14) | (bank << 10) | palette;
    for (i = 0; i < count; i++) {
        u16 bit;

        while (!((free >> slot) & 1)) {
            slot++;
            if (slot == 16) {
                *(u16*)mask = used;
                return 1;
            }
        }
        bit = 1 << slot;
        used |= bit;
        stru_203FFB8.field_C[slot] = value;
        if (arg3 == 0) {
            CpuCopy16(paletteData, (void*)(0x02000280 + slot * 32), 32);
            gGameState.field_0 |= bit;
        }
        slot++;
        paletteData += 32;
    }
    *(u16*)mask = used;
    return 0;
}
#endif

// Frees every palette slot that holds the same palette as slot index; returns the freed slots.
u16 sub_802191C(int index) {
    struct struc_203FFB8* system = &stru_203FFB8;
    u16* slots = system->field_C;
    u16 result = 0;

    if (slots[index] != 0xFFFF) {
        int bank = (slots[index] >> 10) & 0xF;
        int palette = slots[index] & 0x3FF;
        u16 freed = 0;
        int i;

        for (i = system->field_4; i < 16; i++) {
            if (slots[i] != 0xFFFF) {
                int slotBank = (slots[i] >> 10) & 0xF;
                int slotPalette = slots[i] & 0x3FF;

                if (bank == slotBank && palette == slotPalette) {
                    slots[i] = 0xFFFF;
                    freed |= 1 << i;
                }
            }
        }
        result = freed;
    }
    return result;
}

// Finds another sprite that shares something with sprite: 0 tiles, 1 animation, 2 palette (shown
// sprites only), 3 VRAM tiles, 4 tiles without a tile buffer.
struct Sprite* sub_8021A18(struct Sprite* sprite, int type) {
    struct Sprite* other = stru_203FFB8.field_30;

    if (other != 0) {
        if (type == 2) {
            do {
                // field_1C and field_1E_4: the palette
                if (other != sprite && !other->hidden && !other->field_28_12
                    && (*(u32*)&other->field_1C & 0x00F0FFFF)
                           == (*(u32*)&sprite->field_1C & 0x00F0FFFF)) {
                    return other;
                }
                other = other->field_68;
            } while (other != 0);
        } else {
            do {
                if (other != sprite && other->field_1E_0 == sprite->field_1E_0) {
                    if (type == 0 && other->field_18 == sprite->field_18) {
                        return other;
                    }
                    if (type == 1 && other->field_1A == sprite->field_1A) {
                        return other;
                    }
                    if (type == 3 && other->field_2E == sprite->field_2E) {
                        return other;
                    }
                    if (type == 4 && other->field_18 == sprite->field_18 && other->field_44 == 0) {
                        //! Possible fake match (permuter): makes this the return block the others jump
                        //! to
                        do {
                            return other;
                        } while (0);
                    }
                }
                other = other->field_68;
            } while (other != 0);
        }
    }
    return 0;
}

// TODO: decompile
asm_unified(".include \"asm/nonmatching/sub_8021AC8.s\"");

// TODO: decompile
asm_unified(".include \"asm/nonmatching/sub_8021C24.s\"");

// TODO: decompile
asm_unified(".include \"asm/nonmatching/sprite_heap_alloc.s\"");

// Frees a sprite heap block and merges it with free neighbours.
void sprite_heap_free(void* p) {
    if (p != 0) {
        struct SpriteHeapBlock* block = ((struct SpriteHeapBlock*)((u8*)p - 16))->previous;
        struct SpriteHeapBlock* previous = block->previous;
        struct SpriteHeapBlock* next = block->next;

        block->type = SPRITE_HEAP_FREE;
        if (next != 0 && next->type == SPRITE_HEAP_FREE) {
            block->size += next->size;
            block->next = next->next;
            if (block->next != 0) {
                block->next->previous = block;
            }
        }
        if (previous != 0 && previous->type == SPRITE_HEAP_FREE) {
            previous->size += block->size;
            previous->next = block->next;
            if (previous->next != 0) {
                previous->next->previous = previous;
            }
        }
    }
}

// Finds the data of the sprite heap block with this type, bank and index.
void* sprite_heap_search(int type, u8 bank, u16 index) {
    struct SpriteHeapBlock* block = stru_203FFB8.field_2C;

    do {
        if (block->type == type && block->bank == bank && block->index == index) {
            return (u8*)block - (block->size - 16);
        }
        block = block->next;
    } while (block != 0);
    return 0;
}

// TODO: decompile
asm_unified(".include \"asm/nonmatching/sub_8021DD8.s\"");

// Returns the gSpriteInfo entry of a sprite (bits 12-15 of id, if set, select the bank).
struct SpriteInfo* sprite_get_info(int bank, int id) {
    if (id & 0xF000) {
        bank = (id >> 12) - 1;
        id &= 0xFFF;
    }
    return &gSpriteInfo[bank][id];
}

// Shows a hidden sprite, adding it back to the end of the sprite list if it isn't in it.
void sprite_restore(struct Sprite* sprite) {
    if (sprite->hidden) {
        if (sprite->field_64 == sprite->field_68) {
            struct struc_203FFB8* system = &stru_203FFB8;

            if (system->field_30 == 0) {
                system->field_30 = sprite;
            } else {
                struct Sprite* last = system->field_34;

                sprite->field_68 = last->field_68;
                //! Possible fake match (permuter): storing sprite through last makes field_34 reload
                last = sprite;
                system->field_34->field_68 = last;
            }
            sprite->field_64 = system->field_34;
            system->field_34 = sprite;
            system->field_1++;
        }
        sprite_show(sprite);
    }
}

// Hides a sprite and frees its palette slots, but keeps it in the sprite list.
void sprite_hide(struct Sprite* sprite) {
    if (!sprite->hidden) {
        sprite->hidden = true;
        if (sub_8021A18(sprite, 2) == 0) {
            u16* slot = stru_203FFB8.field_C;
            int mask = sprite->field_14;

            while (mask != 0) {
                if ((*slot & 0x4000) && (mask & 1)) {
                    *slot = 0xFFFF;
                }
                slot++;
                mask >>= 1;
            }
        }
    }
}

// Animates all sprites; field_12_1 says what happens at the end of an animation (2: hide, 3: destroy).
void sub_8021F7C(void) {
    struct Sprite* sprite = stru_203FFB8.field_30;

    while (sprite != 0) {
        struct Sprite* next = sprite->field_68;

        if (sprite->active) {
            sub_801E68C(sprite);
            if (sprite->field_12_3) {
                if (sprite->field_12_1 == 2) {
                    sprite_hide(sprite);
                } else if (sprite->field_12_1 == 3) {
                    sprite_destroy(sprite);
                }
            }
        }
        sprite = next;
    }
}

// Shuts the sprite system down.
void sub_8021FD4(void) {
    delete[] (struct OamNode*)stru_203FFB8.field_3C;
    sub_80208F4();
    dword_3000D74 = 0;
}
