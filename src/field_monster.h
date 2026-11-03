#ifndef FIELD_MONSTER_H
#define FIELD_MONSTER_H

#include "field_object.h"

// "FMON" (Field Monster). Implemented in asm/field_monster.s (0x0804FE68-0x080508A8), vtable 0x08CDBF28.
// Interface-only, so that no file emits its vtable or inline members.
#pragma interface

class FieldMonster : public FieldObject {
public:
    u8 pad_33C[0x8];
    FieldObject* field_344;

    FieldMonster(int room, int index); // 0x0804FEC8

    // Overridden vtable slots; the others are inherited from FieldObject. All overrides are inline and
    // emitted at the end of the file, in reverse slot order.
    virtual ~FieldMonster() { // slot 1, 0x08050850
    }
    virtual void method2(void* arg1, u16* arg2, void* arg3);  // 0x080507A4
    virtual void method3();                                    // 0x08050774
    virtual void method4();                                    // 0x080506D0
    virtual void method5();                                    // 0x08050710
    virtual void method6(int arg);                             // 0x08050740
    virtual void method8();                                    // 0x0805068C
    virtual void method9();                                    // 0x0805065C
    virtual void method10();                                   // 0x080505F4
    virtual void method11();                                   // 0x080505C4
    virtual void method12(FieldObject** other, int a, int b);  // 0x08050584
    virtual void method13();                                   // 0x08050554
    virtual void method14(FieldObject** objects, int arg);     // 0x08050518
    virtual void method17();                                   // 0x0805062C
};

extern "C" {
void sub_804FE68(FieldObject*);
void sub_80503CC(FieldObject*);
}

#endif
