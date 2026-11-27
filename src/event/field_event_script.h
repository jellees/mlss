#ifndef FIELD_EVENT_SCRIPT_H
#define FIELD_EVENT_SCRIPT_H

#include "process.h"
#include "event/text080E9D50.h"

class FieldObject;
struct FieldObjectEvent;

// Event script processes of the field. Implemented in src/field_event_script.cpp and
// asm/field_event_script.s (0x080EB248-0x080F1EE8), whose data holds the vtables of EVTS
// (0x08CDC2F8) and BEVS (0x08CDC308). Interface-only, so that no file emits them.
#pragma interface

// Common base of EVTS and BEVS, which derive from it virtually: their offset 0 is the pointer to
// this subobject (at +4), and their constructors take g++'s hidden __in_chrg argument. It doesn't
// override anything, so g++ reuses Process's vtable for it (the constructors store _vt.7Process
// after constructing it). EventBase is an empty second base at +0x1C (sizeof 1 without
// -fnew-abi), so the command handlers get this + 0x1C.
class FieldEventScript : public Process, public EventBase {
  public:
    FieldEventScript(u8 priority, char* label) : Process(priority, label) {
    }
    void sub_80EB248();
    void sub_80EB490(FieldObject* object, FieldObjectEvent* script);
    s8 executeNextCommand(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80EC970(FieldObject* object, FieldObjectEvent* script, s32* arguments, u8 index);
    void sub_80EC970_prepare(FieldObject* target,
                             FieldObjectEvent* targetScript); // inline, in the .cpp
    s8 sub_80ECB20(FieldObjectEvent* script, s32* arguments);
    s8 sub_80ECCB0(FieldObjectEvent* script, s32* arguments);
    s8 sub_80ECDA4(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80ED17C(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80ED304(FieldObjectEvent* script, s32* arguments);
    s8 sub_80ED4EC(FieldObjectEvent* script, s32* arguments);
    s8 sub_80ED6A8(FieldObjectEvent* script, s32* arguments);
    s8 sub_80ED750(FieldObjectEvent* script, s32* arguments);
    u8 sub_80ED7D4(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    u8 sub_80ED86C(FieldObjectEvent* script, s32* arguments);
    s8 sub_80ED90C(FieldObjectEvent* script, s32* arguments);
    s8 sub_80ED9A4(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80EDAB0(FieldObjectEvent* script, s32* arguments);
    s8 sub_80EDBC4(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80EDD48(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80EDEB4(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80EDF90(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80EE028(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80EE140(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80EE1A4(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80EE26C(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80EE440(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    s8 sub_80EE4CC(FieldObject* object, FieldObjectEvent* script, s32* arguments);
    bool sub_80EB838(FieldObject* object, FieldObjectEvent* script);
    void sub_80EB524(FieldObject* object, u8 type, int arg);
    bool sub_80F1E44(FieldObject* object, FieldObjectEvent* script); // inline, in the .cpp
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
    static BEVS* instance; // Set by the constructor

    BEVS(u8 priority, char* label); // 0x080F048C
    ~BEVS();                        // 0x080F0420
    virtual void update();          // 0x080EF34C
};

// Event state of the map ("MEVI", 0x560 bytes): the four global script threads and field state.
// Allocated by the EVTS constructor (0x080EF3FC).
struct MapEventInfo {
    struct EventThread scripts[4];
    u8 pad_2A0[0x288];
    u32 field_528;
    u8 field_52C;
    u8 pad_52D[0x3];
    u32 field_530;
    u8 pad_534[0x10];
    u8 field_544[2]; // Object indices, one per entry of field_550
    u8 field_546[2]; // Angles
    u8 field_548;
    u8 pad_549[0x7];
    u32 field_550; // Bit mask
    u16 field_554[2];
    u8 pad_558[0x2];
    u16 field_55A_0 : 1;
    u16 field_55A_1 : 1;
    u16 field_55A_2 : 1;
    u16 field_55A_3 : 3;
    u16 field_55A_6 : 2;

    static MapEventInfo* instance;
};

// The pointers of field_event_script.o's .bss (0x03000FC8-0x03000FD7) are static members, which agbcp
// emits in reverse class-declaration order: keep BEVS, MapEventInfo, struc_3000FCC, struc_3000FC8 in
// this order.

// A 0x4C-byte entry of struc_3000FCC::field_4 (windows? see sub_80E9D50)
struct struc_3000FCCEntry {
    u8 pad_0[0x42];
    u8 field_42_0 : 2;
    u8 field_42_2 : 1; // sub_80EB05C waits until it is set
    u8 pad_43[0x9];
};

struct struc_3000FCCData {
    struct struc_3000FCCEntry entries[5]; // Count unknown (at least the ones before field_1B2)
    u8 pad_17C[0x36];
    u8 field_1B2; // Flags tested by sub_80EAEBC
    u8 field_1B3; // Passed to sub_80E7118 by sub_80EB09C
    u8 field_1B4; // Flags: commandWaitForUserInput waits while one is set
};

struct struc_3000FCC {
    u32 field_0;
    struct struc_3000FCCData* field_4;

    static struc_3000FCC* instance;
};

// An entry of struc_3000FC8 (4 of them, 16 bytes each)
struct struc_3000FC8Entry {
    struct Sprite* sprite;
    u8 pad_4[0x8];
    u8 field_C; // Id (sub_80EADEC, sub_80EAE30)
    u8 pad_D[0x2];
    u8 field_F; // Active
};

struct struc_3000FC8 {
    struct struc_3000FC8Entry* entries;

    static struc_3000FC8* instance;
};

#endif
