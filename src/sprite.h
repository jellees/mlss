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
void sub_8020A78(void);
void sub_8020D40(struct Sprite* sprite);
int sub_8021A18(struct Sprite* sprite, int arg1);
void sub_8021C24(struct Sprite* sprite);
void* sprite_heap_alloc(int arg0, int size, u8 arg2, u16 arg3);
void* sprite_heap_search(int arg0, u8 arg1, u16 arg2);
void sprite_heap_free(void* p);
void sub_8021AC8(struct Sprite* sprite, u8* tiles, u8* animation, void* palette, int tileSize,
                 int bufferSize, int arg6, int arg7);

#ifdef __cplusplus
}
#endif

#endif
