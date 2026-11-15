#ifndef SPRITE_H
#define SPRITE_H

#define OAM_NODE_COUNT 130

typedef void (*SpriteCallback)(struct Sprite*, int);
typedef struct OamNode* (*SpriteDrawRoutine)(struct OamNode*, struct Sprite*, u8**, int, u8*, s8*, int,
                                             u8*);
typedef void (*OamNodesSortRoutine)(struct OamNode* head, struct OamNode* end);
typedef u16* (*OamNodesCopyRoutine)(struct OamNode* head, u16* dest);
typedef void (*OamNodesResetRoutine)(struct OamNode* head, int count);

struct Sprite {
    s16 xPosition;
    s16 yPosition;
    s16 xScale;
    s16 yScale;
    s16 field_8;
    s16 field_A;
    s16 field_C;
    u16 field_E;
    u32 field_10_0 : 1;
    u32 field_10_1 : 5;
    u32 field_10_6 : 4;
    u32 field_11_2 : 2;
    u32 field_11_4 : 1;
    u32 field_11_5 : 1;
    u32 hFlip : 1;
    u32 vFlip : 1;
    u32 field_12_0 : 1;
    u32 field_12_1 : 2;
    u32 field_12_3 : 1;
    u32 field_12_4 : 1;
    u32 hidden : 1;
    u32 field_12_6 : 2;
    u32 field_13_0 : 2;
    u32 field_13_2 : 1; // field_48 is a sprite heap tile buffer
    u32 field_13_3 : 1; // field_44 is a sprite heap tile map
    u32 paletteCount : 4;
    u16 field_14;
    u16 id;
    u16 tilesIndex;
    u16 animationIndex;
    u16 paletteIndex;
    u8 bank : 4;
    u8 paletteBank : 4;
    u8 field_1F_0 : 2;
    u8 field_1F_2 : 2;
    u8 field_1F_4 : 2;
    u8 field_1F_6 : 2;
    s8 field_20;
    u8 field_21; // Animation index (sprite_play_animation)
    u8 field_22;
    u8 field_23;
    u8 field_24;
    u8 field_25; // Frame count (FieldPlayerShotBullet::sub_804DFE8)
    u8 field_26;
    u8 field_27;
    u16 field_28_0 : 9;
    u16 field_28_9 : 1;
    u16 field_28_10 : 1;
    u16 field_28_11 : 1;
    u16 field_28_12 : 1;
    u16 field_28_13 : 1;
    u16 active : 1;
    u16 field_28_15 : 1;
    s16 field_2A;
    s16 field_2C;
    u16 field_2E;
    u16 field_30;
    u8 pad32[0x2];
    struct OamNode* field_34;
    u8* field_38; // Animation file (sprite_play_animation)
    u8* field_3C;
    u8* field_40;
    u8* field_44;
    struct DecompressJob* field_48; // Tile decompression (sub_80208E0)
    u8* field_4C;
    void* field_50;
    void* field_54;
    u8* field_58;
    SpriteCallback onAnimationFinished; // Called by sprite_update (see there for when)
    int callbackArgument;
    struct Sprite* previous; // Previous sprite in gSpriteContext's list
    struct Sprite* next;     // Next sprite in gSpriteContext's list
};

// One OBJ waiting to go into OAM. A pool of OAM_NODE_COUNT is set up by oam_nodes_init; each frame
// gOamNodesReset frees them, the sprite draw routines fill them, gOamNodesSort sorts them by sortKey
// and gOamNodesCopy copies the used ones to gGameState.oamBuffers.
struct OamNode {
    u16 attr0;
    u16 attr1;
    u16 attr2;
    bool16 unused;
    u32 sortKey; // priority << 30 | Sprite::field_E << 14 | depth << 7 | index
    struct OamNode* previous;
    struct OamNode* next;
};

struct SpriteContext {
    u8 field_0_0 : 1;
    u8 field_0_1 : 1;
    u8 field_0_2 : 1;
    u8 field_1;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 pad7;
    u16 field_8;
    u16 field_A;
    u16 field_C[16];
    struct SpriteHeapBlock* field_2C;
    struct Sprite* field_30; // First sprite of the list (linked by Sprite::previous/next)
    struct Sprite* field_34; // Last sprite of the list
    struct OamNode* field_38;
    struct OamNode* oamNodes; // Pool of OAM_NODE_COUNT OAM sort nodes (sprite_context_init)
};

extern struct SpriteInfo* dSpriteInfo[11];

extern OamNodesSortRoutine gOamNodesSort;
extern OamNodesCopyRoutine gOamNodesCopy;

void sprite_play_animation(struct Sprite* sprite, int animation, int frame,
                           SpriteCallback onAnimationFinished, int callbackArgument);
void sub_801E3EC(u8* tileMap, u8* file);
void sprite_update(struct Sprite* sprite);
struct OamNode* sprite_draw(struct Sprite* sprite, struct OamNode* arg1, u8* arg2);
u16* oam_nodes_copy(struct OamNode* head, u16* dest);
void oam_nodes_sort(struct OamNode* head, struct OamNode* end);
void oam_nodes_reset(struct OamNode* head, int count);
void oam_nodes_init(struct OamNode* node, int count);
void sub_80208E0(struct Sprite* sprite);
void sprite_context_init(u16 arg0, u8 arg1, u8 arg2, u8 flags);
void sprites_draw(void);
void sprite_show(struct Sprite* sprite);
void sprite_remove(struct Sprite* sprite);
struct Sprite* sprite_create(int bank, int id, int useTileMap, int tileCount, int vramTileCount,
                             int bufferSize, int palette);
void sprite_change(struct Sprite* sprite, int bank, int id, int useTileMap, int tileCount,
                   int vramTileCount, int bufferSize, int palette);
void sprite_destroy(struct Sprite* sprite);
void* sub_80213A0(int bank, int id, int tileCount, u8 arg3);
void* sub_80214A4(int bank, int id, int size, u8 arg3);
int sub_8021574(int bank, int palette, int arg2, int arg3, int arg4, void* mask, int slot);
u16 sub_802191C(int index);
struct Sprite* sub_8021A18(struct Sprite* sprite, int type);
void sub_8021AC8(struct Sprite* sprite, u8* tiles, u8* animation, void* palette, int tileSize,
                 int bufferSize, int uncompressed, int arg7);
void sub_8021C24(struct Sprite* sprite);
void* sprite_heap_alloc(int type, int size, u8 bank, u16 index);
void sprite_heap_free(void* p);
void* sprite_heap_search(int type, u8 bank, u16 index);
struct SpriteInfo* sprite_get_info(int bank, int id);
void sprite_restore(struct Sprite* sprite);
void sprite_hide(struct Sprite* sprite);
void sprites_update(void);
void sprite_context_release(void);

#endif
