#ifndef FIELD_H
#define FIELD_H

#include "process.h"
#include "asm_processes.h"

// Handle returned by bevs_process_init_80F048C and evts_process_init_80EF3FC.
struct EventScriptProcess {
    struct Process* process;
    u8 data[0x20];
};

#pragma interface

class FieldManager : public Process {
public:
    void* field_1C;
    void* field_20;
    void* field_24;
    u8 pad_28[0xA8];
    struct struc_3000388* field_D0;
    u8 pad_D4[0x10];
    u32 field_E4;
    u8 pad_E8[0x8];
    u32 field_F0;
    u8 pad_F4[0x4];
    u8 field_F8_0 : 1;
    u8 field_F8_1 : 1;
    u8 field_F8_2 : 1;
    u8 field_F8_3 : 1;
    u8 field_F8_4 : 1;
    u8 field_F8_5 : 3;
    u8 field_F9_0 : 2;
    u8 field_F9_2 : 1;
    u8 field_F9_3 : 1;
    u8 field_F9_4 : 1;
    u8 field_F9_5 : 1;
    u8 field_F9_6 : 1;
    u8 field_F9_7 : 1;
    u8 field_FA_0 : 4;
    u8 field_FA_4 : 1;
    u8 field_FA_5 : 3;
    u8 field_FB;
    u16 field_FC_0 : 1;
    u16 field_FC_1 : 1;
    u16 field_FC_2 : 1;
    u16 field_FC_3 : 4;
    u16 field_FC_7 : 4;
    u16 field_FC_11 : 1;
    u16 field_FC_12 : 4;
    u8 pad_FE[0xC];
    u8 field_10A;
    u8 pad_10B[0x13];
    u16 field_11E;
    u16 field_120_0 : 10;
    u16 field_120_10 : 2;
    u16 field_120_12 : 1;
    u16 field_120_13 : 1;
    u16 field_120_14 : 2;
    u16 field_122;
    u16 field_124;
    u16 field_126;
    u16 field_128;
    u8 field_12A;
    s8 field_12B;
    u8 field_12C_0 : 1;
    u8 field_12C_1 : 1;
    u8 field_12C_2 : 1;
    u8 field_12C_3 : 5;
    u8 field_12D_0 : 1;
    u8 field_12D_1 : 3;
    u8 field_12D_4 : 1;
    u8 field_12D_5 : 1;
    u8 field_12D_6 : 2;
    u16 field_12E;
    u16 field_130;
    u8 pad_132[0xC4];
    u16 field_1F6;
    u8 field_1F8;
    u8 pad_1F9;
    u16 field_1FA;
    Process* field_1FC;
    u8 pad_200[0x8];
    u8 field_208_0 : 1;
    u8 field_208_1 : 1;
    u8 field_208_2 : 2;
    u8 field_208_4 : 1;
    u8 field_208_5 : 1;
    u8 field_208_6 : 1;
    u8 field_208_7 : 1;
    u8 field_209_0 : 1;
    u8 field_209_1 : 4;
    u8 field_209_5 : 1;
    u8 field_209_6 : 1;
    u32 field_209_7 : 2;
    u8 field_20A_1 : 1;
    u8 field_20A_2 : 1;
    u8 field_20A_3 : 1;
    u8 field_20A_4 : 1;
    u8 field_20A_5 : 2;
    u16 field_20A_7 : 2;
    u8 field_20B_1 : 1;
    u8 field_20B_2 : 2;
    u8 field_20B_4 : 1;
    u8 field_20B_5 : 1;
    u8 field_20B_6 : 1;
    u8 field_20B_7 : 1;
    u8 pad_20C[0x30];
    void* field_23C;
    u16 field_240;
    u16 field_242;
    u16 field_244;
    u8 field_246_0 : 1;
    u8 field_246_1 : 1;
    u8 field_246_2 : 3;
    u8 field_246_5 : 3;
    u8 pad_247[0x25];
    u8 field_26C;
    u8 pad_26D[0xD];
    u16 field_27A;
    u16 field_27C;
    u16 field_27E;
    u16 field_280;
    u16 field_282;
    u16 field_284;
    u8 pad_286[0x4];
    u8 field_28A;
    u8 field_28B;
    u8 field_28C;
    u8 field_28D;
    u8 field_28E;
    u8 field_28F;
    u8 pad_290;
    u8 field_291_0 : 1;
    u8 field_291_1 : 1;
    u8 field_291_2 : 6;
    u8 pad_292[0x16];
    u8 field_2A8_0 : 6;
    u8 field_2A8_6 : 1;
    u8 field_2A8_7 : 1;
    u8 field_2A9_0 : 6;
    u8 field_2A9_6 : 1;
    u8 field_2A9_7 : 1;
    u8 pad_2AA[0x8];
    s16 field_2B2;
    u8 pad_2B4[0x4];
    u8 field_2B8_0 : 1;
    u8 field_2B8_1 : 3;
    u8 field_2B8_4 : 1;
    u8 field_2B8_5 : 1;
    u8 field_2B8_6 : 1;
    u8 field_2B8_7 : 1;
    u8 field_2B9;
    u8 pad_2BA[0x12];
    u32 field_2CC;
    u8 pad_2D0[0x8];
    u8 field_2D8_0 : 5;
    u8 field_2D8_5 : 3;
    u8 pad_2D9[0x2B];
    Process* field_304;
    Process* field_308;
    Process* field_30C;
    FieldProcess803EA00* field_310;
    Process* field_314;
    u32 field_318;
    struct EventScriptProcess* evts;
    struct EventScriptProcess* bevs;

    FieldManager(u8 priority, char* label, int room, bool arg4, bool arg5);
    ~FieldManager();
    virtual void update();
};

extern "C" {
void sub_8029934(FieldManager*);
void sub_80292EC(FieldManager*);
}

#endif
