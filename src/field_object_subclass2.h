#ifndef FIELD_OBJECT_SUBCLASS2_H
#define FIELD_OBJECT_SUBCLASS2_H

#include "field_object.h"

// "FSPL". Implemented in asm/text0805139C.s (from 0x0805139C). Interface-only, so that no file emits
// its vtable or inline members.
#pragma interface

class FieldObjectSubclass2 : public FieldObject {
  public:
    FieldObjectSubclass2(int room, int index);
};

#endif
