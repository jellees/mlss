#ifndef FIELD_MONSTER_H
#define FIELD_MONSTER_H

#include "field_object.h"

// "FMON" (Field Monster). Implemented in src/field_monster.cpp (0x0804FE68-0x080508A8), which also
// emits the vtables (FieldMonster 0x08CDBF28, FieldObjectSubclass4 0x08CDBFC8) and the inline members.
#pragma interface

// "FMCH". Created by FieldMonster's constructor and stored in FieldMonster::field_344.
class FieldObjectSubclass4 : public FieldObject {
  public:
    u32 field_33C_0 : 1;
    u32 field_33C_1 : 1;
    u32 field_33C_2 : 3;
    u32 field_33C_5 : 27;
    u8 pad_340[0x4];
    FieldObject* owner;

    FieldObjectSubclass4(int roomId, int index, u8 arg3, FieldObject* owner); // 0x080504BC
};

class FieldMonster : public FieldObject {
  public:
    u32 field_33C_0 : 1;
    u32 field_33C_1 : 2;
    u32 field_33C_3 : 1;
    u32 field_33C_4 : 3;
    u32 field_33C_7 : 1;
    u32 field_33D_0 : 3;
    u32 field_33D_3 : 5;
    u32 field_33E_0 : 2;
    u32 field_33E_2 : 1;
    u32 field_33E_3 : 1;
    u32 field_33E_4 : 1;
    u32 field_33E_5 : 3;
    u8 field_33F;
    s8 field_340;
    FieldObjectSubclass4* field_344;

    FieldMonster(int roomId, int index); // 0x0804FEC8
    void sub_804FFCC();                // 0x0804FFCC
    void sub_8050078();                // 0x08050078
    void sub_80501EC();                // 0x080501EC
    void sub_80502C8();                // 0x080502C8
    void sub_80503CC();                // 0x080503CC

    // Overridden vtable slots; the others are inherited from FieldObject. Each override calls the
    // FieldObject version and then forwards the call to field_344. All of these are inline and emitted
    // at the end of field_monster.cpp, in reverse definition order.
    virtual ~FieldMonster() { // slot 1, 0x08050850
        delete field_344;
    }
    void sub_80507E0() { // 0x080507E0
        sub_80E9958((u8*)dword_3000FC0 + 0x38C, 0, field_22C_10 + 0x960, 0);
        if (field_33E_4) {
            field_344->field_20C_0 = 1;
            method4();
        }
    }
    virtual void method2(u16* arg1, u16* arg2, void* arg3) { // 0x080507A4
        FieldObject::method2(arg1, arg2, arg3);
        if (field_344 != NULL) {
            field_344->method2(arg1, arg2, arg3);
        }
    }
    virtual void method3() { // 0x08050774
        FieldObject::method3();
        if (field_344 != NULL) {
            field_344->method3();
        }
    }
    virtual void method6(int arg) { // 0x08050740
        FieldObject::method6(arg);
        if (field_344 != NULL) {
            field_344->method6(arg);
        }
    }
    virtual void method5() { // 0x08050710
        FieldObject::method5();
        if (field_344 != NULL) {
            field_344->method5();
        }
    }
    virtual void method4() { // 0x080506D0
        FieldObject::method4();
        if (field_344 != NULL && field_344->field_20C_0) {
            field_344->method4();
        }
    }
    virtual void method8(s16 cameraX, s16 cameraY, FieldObject** objects) { // 0x0805068C
        FieldObject::method8(cameraX, cameraY, objects);
        if (field_344 != NULL) {
            field_344->method8(cameraX, cameraY, objects);
        }
    }
    virtual void method9() { // 0x0805065C
        FieldObject::method9();
        if (field_344 != NULL) {
            field_344->method9();
        }
    }
    virtual void method17() { // 0x0805062C
        FieldObject::method17();
        if (field_344 != NULL) {
            field_344->method17();
        }
    }
    virtual struct struc_Oam* method10(struct struc_Oam* oam, FieldObject** objects) { // 0x080505F4
        struct struc_Oam* result = FieldObject::method10(oam, objects);
        if (field_344 != NULL) {
            result = field_344->method10(oam, objects);
        }
        return result;
    }
    virtual void method11() { // 0x080505C4
        FieldObject::method11();
        if (field_344 != NULL) {
            field_344->method11();
        }
    }
    virtual void method12(FieldObject** others, int count, u8 flag) { // 0x08050584
        FieldObject::method12(others, count, flag);
        if (field_344 != NULL) {
            field_344->method12(others, count, flag);
        }
    }
    virtual int method13() { // 0x08050554
        int result = FieldObject::method13();
        if (field_344 != NULL) {
            result = field_344->method13();
        }
        return result;
    }
    virtual void method14(FieldObject** objects, u8 arg) { // 0x08050518
        FieldObject::method14(objects, arg);
        if (field_344 != NULL) {
            field_344->method14(objects, arg);
        }
    }
};

extern "C" {
void sub_804FE68(FieldObject*);
}

#endif
