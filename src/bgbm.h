#ifndef BGBM_H
#define BGBM_H

#include "global.h"

// "BGBM": implemented in asm (asm/text0801B0B8.s). Drawn into by FieldManager::sub_803E070 (battle
// start star) through sub_801DC00/sub_801DD80/sub_801DC4C/...
class BGBM {
  public:
    u8 pad0[0x1C];

    BGBM(u16 arg1, u16 arg2, u8 arg3); // 0x0801BD88
    ~BGBM();                           // 0x0801DF14
};

#endif // BGBM_H
