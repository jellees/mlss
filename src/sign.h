#ifndef SIGN_H
#define SIGN_H

#include "process.h"

// "SIGN": the map shown when the player reads a sign on the field (created by
// FieldManager::sub_8027688). The screen fades to black, then into the map, which can be scrolled; B
// fades back out. Implemented in asm/sign.s (0x08051628-0x08051B98, vtables 0x08CDC1A8 and 0x08CDC1B8).
// Interface-only, so that no file emits the vtables or inline members.
#pragma interface

// "SBDR": the renderer of the sign (parentProcess is the Sign). Its update is the same as
// SpriteRenderer::update and the other renderers' (a shared inline function).
class SignRenderer : public Process {
  public:
    SignRenderer(u8 priority, char* label);
    ~SignRenderer();
    virtual void update();
};

class Sign : public Process {
  public:
    s16 scrollX;
    s16 scrollY;
    u16 width;
    u16 height;
    u16 zoom;    // 0x200 unless the room is in the table at 0x083A0D2C
    u16 centerX; // 120 unless the room is in the table at 0x083A0D2C
    u16 centerY; // 80 unless the room is in the table at 0x083A0D2C
    u16 room;
    struct Sprite* arrowUp;    // Shown unless scrollY is 0
    struct Sprite* arrowRight; // Shown unless scrollX is width - 240
    struct Sprite* arrowDown;  // Shown unless scrollY is height - 160
    struct Sprite* arrowLeft;  // Shown unless scrollX is 0
    s16* field_3C;
    SignRenderer* renderer; // "SBDR"
    Process* map;           // "S_MP"
    Process* panm;          // "PANM", made by init_ybpa_process_8114B4C

    Sign(u8 priority, char* label, u16 room);
    ~Sign();
    virtual void update();
    void sub_8051A00();
    void sub_8051ACC();
};

#endif
