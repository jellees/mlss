#include "global.h"
#include "common.h"
#include "save_menu.h"

// Should be non static once the whole file matches.
static inline struct Process* tsdr_create(struct Process* tsdr, u8 priority, char* label) {
    process_add(tsdr, priority, label);
    tsdr->definition = &stru_8CDC3E8;
    return tsdr;
}

struct SaveMenu* sub_8127EF8(struct SaveMenu* menu, u8 priority, char* label, int arg3) {
    process_add(&menu->process, priority, label);
    menu->process.definition = &stru_8CDC3D8;

    menu->field_8C = &gGameState.field_3C;
    menu->field_A6 = gGameState.field_3C.field_3C_0;
    gGameState.field_3C.field_3C_0 = 0x3FF;
    menu->field_A8 = menu->field_8C->field_8;
    menu->field_A9 = menu->field_8C->field_9;
    menu->field_8C->field_8 = 10;
    menu->field_8C->field_9 = 8;

    BUFFER_REG_DISPCNT = 0;
    BUFFER_REG_BLDCNT = 0;
    sub_8017E34();
    gGameState.field_888_5 = 1;
    gGameState.field_888_6 = 1;

    menu->tsdr = tsdr_create(alloc_Zero(sizeof(struct Process), 0, "TSDR", 1), 8, "TSDR");
    menu->fade = init_ybpa_process_8114B4C(alloc_Zero(0x5C, 0, "FADE", 1), 8, "FADE", 8);
    menu->tsdr->parentProcess = &menu->process;
    return menu;
}
