#ifndef SPRITE_H
#define SPRITE_H

#ifdef __cplusplus
extern "C" {
#endif

void sub_801DFB0(u8 flags);
void sub_801E150(struct Sprite* sprite, int animation, int arg2, int arg3, int arg4);
void sub_801E3EC(u8* tileMap, u8* file);
void sub_801E68C(struct Sprite* sprite);
struct struc_11* sub_801E80C(struct Sprite* sprite, struct struc_11* arg1, u8* arg2);
struct struc_11* sub_801EEBC(struct struc_11* oam, struct Sprite* sprite, u8** cursor, int count,
                             u8* tiles, s8* matrices, int matrix, u8* depth);
struct struc_11* sub_801F370(struct struc_11* oam, struct Sprite* sprite, u8** cursor, int count,
                             u8* tiles, s8* matrices, int matrix, u8* depth);
struct struc_11* sub_801F7D0(struct struc_11* oam, struct Sprite* sprite, u8** cursor, int count,
                             u8* tiles, s8* matrices, int matrix, u8* depth);
struct struc_11* sub_801FBAC(struct struc_11* oam, struct Sprite* sprite, u8** cursor, int count,
                             u8* tiles, s8* matrices, int matrix, u8* depth);
struct struc_11* sub_801FFA8(struct struc_11* oam, struct Sprite* sprite, u8** cursor, int count,
                             u8* tiles, s8* matrices, int matrix, u8* depth);
struct struc_11* sub_802039C(struct struc_11* oam, struct Sprite* sprite, u8** cursor, int count,
                             u8* tiles, s8* matrices, int matrix, u8* depth);
int sub_8020784(struct struc_11* node, int dest);
void sub_80207A8(struct struc_11* head, struct struc_11* end);
void sub_80207E8(struct struc_11* node, int count);
void sub_802083C(struct struc_11* node, int count);
void sub_80208E0(struct Sprite* sprite);
void sub_80208F4(void);
void sub_8020994(u16 arg0, u8 arg1, u8 arg2, u8 flags);
void sub_8020A78(void);
void sprite_show(struct Sprite* sprite);
void sprite_remove(struct Sprite* sprite);
struct Sprite* sub_8020DD0(int bank, int id, int arg2, int tileCount, int arg4, int bufferSize,
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
                 int bufferSize, int arg6, int arg7);
void sub_8021C24(struct Sprite* sprite);
void* sprite_heap_alloc(int type, int size, u8 bank, u16 index);
void sprite_heap_free(void* p);
void* sprite_heap_search(int type, u8 bank, u16 index);
struct SpriteInfo* sprite_get_info(int bank, int id);
void sprite_restore(struct Sprite* sprite);
void sprite_hide(struct Sprite* sprite);
void sub_8021F7C(void);
void sub_8021FD4(void);

#ifdef __cplusplus
}
#endif

#endif
