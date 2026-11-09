#ifndef FIELD_SPRITE_LAYOUT_H
#define FIELD_SPRITE_LAYOUT_H

#include "field_object.h"

// "FSPL", probably Field Sprite Layout: UI-like sprites placed in the field, such as the field minigame
// shirts and toys, tutorial icons, button prompts and digits. Implemented in asm/field_sprite_layout.s
// (from 0x0805139C). Interface-only, so that no file emits its vtable or inline members.
#pragma interface

class FieldSpriteLayout : public FieldObject {
  public:
    FieldSpriteLayout(int roomId, int index);
};

#endif
