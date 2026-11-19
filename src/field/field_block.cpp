#include "global.h"
#include "common.h"
#include "field/field_block.h"

FieldBlock::FieldBlock(int roomId, int index) : FieldObject(roomId, index) {
    field_33C_0 = 1;
    field_33C_3 = 0;
    field_33C_1 = 0;
    field_33C_2 = 0;
    field_33C_6 = 0;
    field_23B = 0;
    field_33E_1 = 0xFF;
    field_340 = 1;
    field_342 = 0xFFFF;
    field_344 = -1;
    field_348 = 0;
    field_34C = 0;
}

FieldBlock::FieldBlock(u8* data, u16 dataIndex, int roomId, int index) : FieldObject(roomId, index) {
    int x = ((data[1] << 4) + ((data[3] >> 7) | ((data[4] << 1) & 0x1E) | ((data[4] & 8) ? ~0x1F : 0)))
            << 8;
    int y = ((data[2] << 4) + ((data[4] >> 4) | ((data[5] << 4) & 0x10) | ((data[5] & 1) ? ~0x1F : 0)))
            << 8;
    int z = (((data[3] & 0x7F) << 3) + ((data[5] >> 1) | ((data[5] & 0x20) ? ~0x1F : 0))) << 8;

    sub_8047F60(x, y, z, 0, 0);
    spriteActive = 1;
    field_20C_26 = 1;
    field_20C_1 = 0;
    field_20C_4 = 0;
    blocksBrothers = 1;
    collidesWithBrothers = 1;
    field_20C_7 = 1;
    collidesWithObjects = 0;
    blocksObjects = 0;
    field_20C_11 = 0;
    field_20C_12 = 1;
    field_20C_13 = 0;
    field_20C_14 = 0;
    field_20C_15 = 3;
    field_20C_18 = 1;
    type = FIELD_OBJECT_TYPE_FBLK;
    field_20C_23 = 0;
    field_222 = 0;
    field_223 = 0;
    field_214_17 = 0;
    initialDirection = 0;
    field_228 = 0;
    // Clears all three field_22C bitfields with a single word store; assigning them one by one gives
    // three read-modify-writes. The original probably had a different type for this word.
    *(u32*)((u8*)this + 0x22C) = 0;
    field_20C_0 = 1;
    field_20C_24 = 0;
    field_214_0 = 1;
    if (sub_80E98C0((u8*)dword_3000FC0 + 0x38C, 0, (u16)(dataIndex + 0x1360)) == 0) {
        field_33C_3 = data[0] == 0x20 ? 2 : data[0] == 0x40 ? 1 : 0;
        field_33C_0 = 1;
    } else {
        field_33C_0 = 0;
    }
    field_33C_1 = 0;
    field_33C_2 = 1;
    field_33C_6 = 0;
    field_23B = 0;
    field_33E_1 = 0xFF;
    field_340 = 1;
    field_342 = 0xFFFF;
    field_344 = dataIndex;
    field_348 = data;
    field_34C = 0;
}
