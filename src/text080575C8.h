#ifndef TEXT080575C8_H
#define TEXT080575C8_H

#include "process.h"

// Map file at 0x080575C8 (name unknown). Only S_MP's constructor is C so far; the rest of the file
// is in asm/text080575C8.s. Interface-only: the vtables are still asm data.
#pragma interface

// "S_MP": a three-layer scrollable map (made by the sign). Layer 2 follows the scroll position;
// layers 0 and 1 scroll at a rate relative to it (in quarters) plus an offset, unless locked.
class S_MP : public Process {
  public:
    s16 field_1C;
    u16 field_1E;
    u16 field_20;
    s16 scrollX;
    s16 scrollY;
    u8 pad26[0x10];
    u16 width[3];
    u16 height[3];
    u16 field_42[3];
    u16 field_48[3];
    s16 layerX[3];
    s16 layerY[3];
    s16 field_5A[3];
    s16 field_60[3];
    s16 field_66[3];
    s16 field_6C[3];
    s16 offsetX[3];
    s16 offsetY[3];
    s16 rateX[3]; // In quarters (4 = same speed as layer 2)
    s16 rateY[3];
    u8 layerFlags[3]; // 0x80: locked to the scroll position
    u8 pad8D[3];
    u8 field_90[3];
    u8* mapw;     // "MAPW"
    u8* mpdw;     // "MPDW"
    u8* mids;     // "MIDS"
    u8* midt;     // "MIDT"
    u8* cmpw;     // "CMPW"
    u8* mpcl;     // "MPCL"
    u8 padAC[0x4CC];
    u8 field_578;
    Process* panm; // 0x57C
    u8 pad580[0x4];
    u8 field_584; // Set while sub_805C6B8 has something to clean up
    u8 pad585[0x17];

    S_MP(u8 priority, char* label, u16 arg2, s16 scrollX, s16 scrollY, Process* panm);
    ~S_MP();
    virtual void update();
    void sub_8059EC8(u16 arg1);
    void sub_8057BE4();
    void sub_805C6B8();
};

#endif
