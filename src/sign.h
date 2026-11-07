#ifndef SIGN_H
#define SIGN_H

#include "process.h"
#include "text080575C8.h"

// "SIGN": the map shown when the player reads a sign on the field (created by
// FieldManager::sub_8027688). The screen fades to black, then into the map, which can be scrolled; B
// fades back out.
#pragma interface

// "SBDR": the renderer of the sign (parentProcess is the Sign). Its update is the same as
// SpriteRenderer::update and the other renderers'.
class SignRenderer : public Process {
  public:
    SignRenderer(u8 priority, char* label) : Process(priority, label) {
    }
    ~SignRenderer() {
    }
    virtual void update();
};

// Entries of stru_83A0D2C, terminated by room 0xFFFF.
// Should check where these entries are stored in rom later. Maybe they are part of this file.
struct SignMapEntry {
    u16 roomId;
    u16 mapRoomId;
    u16 centerX;
    u16 centerY;
};

class Sign : public Process {
  public:
    s16 scrollX;
    s16 scrollY;
    u16 width;
    u16 height;
    u16 mapRoomId;   // Room whose map is shown: 0x200 unless roomId is in stru_83A0D2C
    u16 centerX; // 120 unless the room is in stru_83A0D2C
    u16 centerY; // 80 unless the room is in stru_83A0D2C
    u16 roomId;
    // Scroll arrows: up (shown unless scrollY is 0), right (unless scrollX is width - 240), down
    // (unless scrollY is height - 160) and left (unless scrollX is 0)
    struct Sprite* arrows[4];
    struct Sprite* field_3C; // Positioned at center - scroll
    SignRenderer* renderer;  // "SBDR"
    S_MP* map;               // "S_MP"
    Process* panm;           // "PANM", made by init_ybpa_process_8114B4C

    Sign(u8 priority, char* label, u16 roomId);
    ~Sign();
    virtual void update();
    void sub_8051A00();
    void sub_8051ACC();
};

#endif
