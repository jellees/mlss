#include "global.h"
#include "common.h"
#include "load_menu.h"

struct LoadMenu* load_init_812538C(struct LoadMenu* menu, u8 priority, char* label, u16 arg3) {
    struct Process** tld;
    struct Process** fade;

    process_add(&menu->process, priority, label);
    menu->process.definition = &stru_8CDC3B8;
    menu->field_E4 = arg3;

    menu->field_50 = &gGameState.field_3C;
    menu->field_F7 = menu->field_50->field_8;
    menu->field_F8 = menu->field_50->field_9;
    menu->field_50->field_8 = 10;
    menu->field_50->field_9 = 8;

    tld = &menu->tld;
    *tld = tld_init_8127A94(alloc_Zero(sizeof(struct Process), 0, "TLD", 0), 8, "TLD");
    fade = &menu->fade;
    *fade = init_ybpa_process_8114B4C(alloc_Zero(0x5C, 0, "FADE", 1), 8, "FADE", 8);
    (*fade)->parentProcess = (*tld)->parentProcess = &menu->process;

    sub_8017E34();
    gGameState.field_888_5 = 1;
    gGameState.field_888_6 = 1;
    BUFFER_REG_DISPCNT = 0;
    return menu;
}
