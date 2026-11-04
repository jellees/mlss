#ifndef FIELD_OBJECT_SUBCLASS3_H
#define FIELD_OBJECT_SUBCLASS3_H

#include "field_object.h"

// "FBLK" (from the room's object list) and "SBLK" (created by sub_8026C78 through a second ctor,
// sub_8050940): both store vtable 0x08CDC068. Implemented in asm/field_object_subclass3.s
// (0x080508A8-0x0805139C), which ends with its inline override of slot 4 (0x08051368).
// Interface-only, so that no file emits its vtable or inline members.
#pragma interface

class FieldObjectSubclass3 : public FieldObject {
  public:
    u8 pad_33C[0x14];

    FieldObjectSubclass3(int room, int index);
};

#endif
