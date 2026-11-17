#ifndef FIELD_EVENT_SCRIPT_H
#define FIELD_EVENT_SCRIPT_H

#include "process.h"

class FieldObject;
struct ScriptContext;

// Event script processes of the field. Implemented in src/field_event_script.cpp and
// asm/field_event_script.s (0x080EB248-0x080F1EE8), whose data holds the vtables of EVTS
// (0x08CDC2F8) and BEVS (0x08CDC308). Interface-only, so that no file emits them.
#pragma interface

// Common base of EVTS and BEVS, which derive from it virtually: their offset 0 is the pointer to
// this subobject (at +4), and their constructors take g++'s hidden __in_chrg argument. It doesn't
// override anything, so g++ reuses Process's vtable for it (the constructors store _vt.7Process
// after constructing it).
class FieldEventScript : public Process {
  public:
    u32 field_1C;

    FieldEventScript(u8 priority, char* label) : Process(priority, label) {
    }
    void sub_80EB248();
    void sub_80EB490(FieldObject* object, ScriptContext* script);
    void sub_80EB524(FieldObject* object, u8 type, void* arg);
    bool sub_80F1E44(FieldObject* object, ScriptContext* script); // inline, in the .cpp
};

// "EVTS": runs the scripts of the field objects. Created by FieldManager's constructor
// (FieldManager::evts).
class EVTS : virtual public FieldEventScript {
  public:
    EVTS(u8 priority, char* label); // 0x080EF3FC
    ~EVTS();                        // 0x080F034C
    virtual void update();          // 0x080EF500
};

// "BEVS". Created by FieldManager's constructor (FieldManager::bevs).
class BEVS : virtual public FieldEventScript {
  public:
    BEVS(u8 priority, char* label); // 0x080F048C
    ~BEVS();                        // 0x080F0420
    virtual void update();          // 0x080EF34C
};

#endif
