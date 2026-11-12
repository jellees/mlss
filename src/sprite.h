#ifndef SPRITE_H
#define SPRITE_H

#ifdef __cplusplus
extern "C" {
#endif

void sub_801DFB0(u8 flags);
void sub_801E150(struct Sprite* sprite, int animation, int arg2, int arg3, int arg4);
void sub_801E3EC(u8* tileMap, u8* file);
void sub_801E68C(struct Sprite* sprite);
struct struc_Sprite34* sub_801E80C(struct Sprite* sprite, struct struc_Sprite34* arg1, void* arg2);

#ifdef __cplusplus
}
#endif

#endif
