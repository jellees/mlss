#pragma implementation "field.h"

#include "global.h"
#include "common.h"
#include "field.h"

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_fldm_8021FF8.s\"");
#else
FieldManager::FieldManager(u8 priority, char* label, int room, bool arg4, bool arg5)
    : Process(priority, label) {
    FieldManager* fldm = this;
    u8 flag4 = arg4;
    u8 flag5 = arg5;
    Process* process;
    struct EventScriptProcess** script;
    void** buffer;

    fldm->field_F8_1 = (room == -1);

    script = &fldm->bevs;
    *script = bevs_process_init_80F048C(operator new(sizeof(struct EventScriptProcess), 0, "BEVS", 0), 1,
                                        7, "BEVS");
    process = (*script)->process;
    process->parentProcess = this;
    process->disable();
    script = &fldm->evts;
    *script = evts_process_init_80EF3FC(operator new(sizeof(struct EventScriptProcess), 0, "EVTS", 0), 1,
                                        6, "EVTS");
    process = (*script)->process;
    process->parentProcess = this;
    process->disable();

    sub_819A138(gGameState.field_8D0, gGameState.field_1C);
    dword_3000D7C = fldm;
    dword_3000D78 = *script;
    BUFFER_REG_DISPCNT = 0;
    fldm->field_D0 = &gGameState.field_3C;
    fldm->field_1C = operator new(0x2C0, 1, "FMEX", 1);
    fldm->field_20 = operator new(0x574, 1, "FMBK", 1);
    buffer = &fldm->field_23C;
    *buffer = operator new[](0x1000, 1, "PLST", 1);
    fldm->field_24 = operator new[](0x400, 1, "PALW", 1);

    fldm->field_F8_2 = 0;
    fldm->field_F8_0 = 0;
    fldm->field_F9_3 = flag4;
    fldm->field_208_0 = 1;
    fldm->field_F9_0 = 0;
    fldm->field_F9_2 = 0;
    fldm->field_F0 = 0;
    fldm->field_E4 = 0;
    fldm->field_2B8_0 = 0;
    fldm->field_2B8_4 = 0;
    fldm->field_2B8_5 = 0;
    fldm->field_2CC = 0;
    fldm->field_11E = 0;
    fldm->field_120_0 = 0;
    fldm->field_120_10 = 0;
    fldm->field_120_12 = 0;
    fldm->field_120_13 = 0;
    fldm->field_122 = 0;
    fldm->field_124 = room;
    fldm->field_128 = 0;
    fldm->field_FC_7 = 15;
    fldm->field_FC_11 = 0;
    fldm->field_246_0 = 0;
    fldm->field_291_0 = 0;
    fldm->field_291_1 = 0;
    fldm->field_2A8_6 = 0;
    fldm->field_2B9 = 0xFF;
    fldm->field_2B8_6 = 0;
    fldm->field_12B = -1;
    fldm->field_12C_3 = 31;
    fldm->field_12C_1 = 0;
    fldm->field_12D_0 = 0;
    fldm->field_12D_4 = 0;
    fldm->field_12D_5 = 0;
    fldm->field_FC_2 = 0;
    fldm->field_10A = 0;
    fldm->field_FC_0 = 0;
    fldm->field_12E = 0;
    fldm->field_130 = 0;
    fldm->field_F9_5 = 0;
    fldm->field_F9_4 = flag4 ^ 1;
    fldm->field_27A = 0;
    fldm->field_27C = 0;
    fldm->field_27E = 0;
    fldm->field_280 = 0;
    fldm->field_282 = 0;
    fldm->field_284 = 0;
    fldm->field_28A = 0x68;
    fldm->field_28B = 0x88;
    fldm->field_28C = 0x50;
    fldm->field_28D = 0x6A;
    fldm->field_28E = 0x26;
    fldm->field_28F = 0x6A;
    fldm->field_208_2 = 2;
    fldm->field_209_0 = 0;
    fldm->field_208_4 = 0;
    fldm->field_208_5 = 0;
    fldm->field_208_6 = 0;
    fldm->field_208_7 = 0;
    fldm->field_F8_4 = 1;
    fldm->field_209_0 = 0;
    fldm->field_209_7 = 1;
    fldm->field_20A_1 = 0;
    fldm->field_20A_2 = 0;
    fldm->field_20A_3 = 0;
    fldm->field_20A_4 = 0;
    fldm->field_20A_5 = 0;
    fldm->field_2D8_0 = 31;
    fldm->field_240 = 0x1000;
    fldm->field_20A_7 = 0;
    fldm->field_242 = 0;
    fldm->field_244 = 0;
    fldm->field_20B_4 = 0;
    fldm->field_20B_5 = 0;
    fldm->field_20B_6 = 0;
    fldm->field_20B_7 = 0;
    fldm->field_20B_1 = 1;
    fldm->field_209_1 = 0;
    fldm->field_209_5 = 0;
    fldm->field_209_6 = 0;
    fldm->field_F9_7 = 0;
    fldm->field_FA_4 = 1;
    fldm->field_26C = 0;
    fldm->field_246_2 = 0;
    fldm->field_2A9_6 = 0;
    fldm->field_2A9_7 = 0;
    fldm->field_F8_3 = flag5;
    fldm->field_1FA = 0xFF00;
    fldm->field_304 = 0;
    fldm->field_308 = 0;
    fldm->field_30C = 0;
    fldm->field_310 = 0;
    fldm->field_314 = 0;
    fldm->field_1F6 = 0xFFFF;
    fldm->field_1F8 = 0;
    fldm->field_2B2 = -2;
    fldm->field_318 = 0;
    sub_8029934(fldm);
    gGameState.field_88A_5 = 1;
    dword_3000FD0->field_528 = 0;
    dword_3000FD0->field_530 = 0;
}
#endif

FieldManager::~FieldManager() {
    if (field_314) {
        sub_81166AC(field_314, 3);
    }
    delete field_30C;
    delete field_310;
    if (field_1FC) {
        sub_805CCC0(field_1FC, 3);
    }
    if (field_308) {
        sub_805C73C(field_308, 3);
    }
    if (field_304) {
        sub_8057B58(field_304, 3);
    }
    sub_80292EC(this);
    operator delete(field_1C);
    operator delete(field_20);
    operator delete(field_23C);
    operator delete(field_24);
    if (evts) {
        sub_80F034C(evts, 3);
    }
    if (bevs) {
        sub_80F0420(bevs, 3);
    }
    sub_80F0184(evts);
    sub_8021FD4();
    runtime_install_interrupt_callback(2, NULL);
    gGameState.field_88A_5 = 0;
}
