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
    FieldProcess803EA00(u8 priority, char* label);
    ~FieldProcess803EA00() {
    }
    virtual void update();
};

#endif
