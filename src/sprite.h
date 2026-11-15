#ifndef SPRITE_H
#define SPRITE_H

// Size of gSpriteContext.oamNodes: the list head and one node per OBJ that can be drawn in a frame.
#define OAM_NODE_COUNT 130

#ifdef __cplusplus
extern "C" {
#endif

extern struct SpriteInfo* dSpriteInfo[11];

void sub_801E150(struct Sprite* sprite, int animation, int arg2, SpriteCallback arg3, int arg4);
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
struct Sprite* sprite_create(int bank, int id, int arg2, int tileCount, int arg4, int bufferSize,
                             int palette);
void sub_80210A8(struct Sprite* sprite, int bank, int id, int arg3, int tileCount, int arg5,
                 int bufferSize, int palette);
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

#ifdef __cplusplus
}
#endif

#endif
