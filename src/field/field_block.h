#ifndef FIELD_BLOCK_H
#define FIELD_BLOCK_H

#include "field/field_object.h"

// "FBLK" (from the room's object list) and "SBLK" (created by sub_8026C78 through the second ctor),
// both store vtable 0x08CDC068. Implemented in src/field_block.cpp and asm/field_block.s
// (0x080508A8-0x0805139C), which ends with its inline override of slot 4 (0x08051368).
// Interface-only, so that no file emits its vtable or inline members.
#pragma interface

class FieldBlock : public FieldObject {
  public:
    u16 field_33C_0 : 1;
    u16 field_33C_1 : 1;
    u16 field_33C_2 : 1;
    u16 field_33C_3 : 3;
    u16 field_33C_6 : 4;
    u16 field_33C_10 : 6;
    u16 field_33E_0 : 1;
    u16 field_33E_1 : 8;
    u16 field_33E_9 : 7;
    u16 field_340;
    u16 field_342;
    s16 field_344;
    u8 pad_346[0x2];
    u8* field_348; // SBLK: the 8-byte entry it was created from
    u32 field_34C;

    FieldBlock(int roomId, int index);
    FieldBlock(u8* data, u16 dataIndex, int roomId, int index);
};

#endif
