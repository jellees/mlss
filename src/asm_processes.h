#ifndef ASM_PROCESSES_H
#define ASM_PROCESSES_H

#include "process.h"

// Process subclasses implemented in asm. Interface-only, so that no file emits their inline
// members or vtables (those are in the ROM with the asm code).
#pragma interface

// The TMEV process (asm, created by sub_80FB080).
class Tmev : public Process {
  public:
    u8 pad1C[0xC];
    struct TmevData* field_28;

    Tmev(u8 priority, char* label);
};

// Process at FieldManager::field_310, implemented in asm (update at 0x0803EA00; its vtable
// 0x08CDBDC8 belongs to that file).
class FieldProcess803EA00 : public Process {
  public:
    FieldProcess803EA00(u8 priority, char* label) : Process(priority, label) {
    }
    ~FieldProcess803EA00() {
    }
    virtual void update();
};

// "FMDR": process at FieldManager::field_30C, implemented in asm (update at 0x0803F4FC).
class FMDR : public Process {
  public:
    FMDR(u8 priority, char* label) : Process(priority, label) {
    }
    virtual void update();
};

// "PANM"/"FADE": screen fade process, implemented in asm (constructor 0x08114B4C).
class PANM : public Process {
  public:
    u8 pad1C[0x40];

    PANM(u8 priority, char* label, u8 arg3);
    virtual void update();
};

// "S_FX": map effect owned by the FieldManager (field_1FC), implemented in asm/text080575C8.s.
class S_FX {
  public:
    u8 pad0[0xA];
    u8 field_A;
    u8 padB;

    S_FX();
    void sub_805CB54();
};

#endif
