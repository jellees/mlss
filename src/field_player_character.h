#ifndef FIELD_PLAYER_CHARACTER_H
#define FIELD_PLAYER_CHARACTER_H

#include "field_object.h"

// "FPC" (Field Player Character): Mario and Luigi (FieldManager::objects[0] / [1], and leader /
// follower). Implemented in asm/field_player_character.s (0x08048064-0x0804FE68), vtable 0x08CDBE88.
// That file also holds FieldClass1 ("FPSB"). Interface-only, so that no file emits its vtable or inline
// members.
#pragma interface

// FieldManager::field_20C[2], one per player character (FieldPlayerCharacter::field_368).
struct FieldStruct4 {
    u8 pad_0[0x4];
    u16 field_4;
    u16 field_6;
    u8 pad_8[0x10];
};

class FieldPlayerCharacter : public FieldObject {
  public:
    u8 field_33C_0 : 2;
    u8 field_33C_2 : 1;
    u8 field_33C_3 : 5;
    u8 pad_33D[0x15];
    u8 field_352_0 : 7;
    u8 field_352_7 : 1;
    u8 pad_353[0x15];
    struct FieldStruct4* field_368;
    u8 pad_36C[0x20];

    FieldPlayerCharacter(int room, int index); // 0x08048064

    // Overridden vtable slots; the others are inherited from FieldObject. The destructor (slot 1) is
    // compiler-generated (a linkonce copy at 0x081DD5B0).
    virtual void method2(u16* arg1, u16* arg2, void* arg3);                // 0x0804857C
    virtual void method3();                                                // 0x08048704
    virtual void method5();                                                // 0x080482E0
    virtual void method7(u8 force);                                        // 0x080487F0
    virtual void method8(u16 cameraX, u16 cameraY, FieldObject** objects); // 0x08048438
    virtual void method11();                                               // 0x0804A4C8
    virtual void method12(FieldObject** other, int a, int b);              // 0x0804A5D4
    virtual void method13();                                               // 0x0804FBDC
    virtual void method18(); // 0x0804FDF4 (inline: emitted at the file end)
    virtual void method19(); // 0x0804FD80 (inline: emitted at the file end)
};

// "FPSB" (FieldManager::field_A8). A plain class without virtual functions.
class FieldClass1 {
  public:
    u8 pad_0[0x4C];

    FieldClass1(int index); // 0x0804FB28
};

extern "C" {
void sub_804DFE8(FieldClass1*);
}

#endif
