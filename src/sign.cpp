#pragma implementation "sign.h"

#include "global.h"
#include "common.h"
#include "sprite.h"
#include "heap.h"
#include "process.h"
#include "sign.h"

Sign::Sign(u8 priority, char* label, u16 roomId) : Process(priority, label) {
    struct SignMapEntry* entry;
    Process* process;

    BUFFER_REG_DISPCNT = 0;
    gGameState.field_884 = 0;
    this->roomId = roomId;
    mapRoomId = 0x200;
    scrollX = 0;
    scrollY = 0;
    width = 0;
    height = 0;
    mapPositionX = 120;
    mapPositionY = 80;

    for (entry = stru_83A0D2C; entry->roomId != 0xFFFF; entry++) {
        if (entry->roomId == roomId) {
            mapRoomId = entry->mapRoomId;
            mapPositionX = entry->mapPositionX;
            mapPositionY = entry->mapPositionY;
            break;
        }
    }

    renderer = new (0, "SBDR", 1) SignRenderer(8, "SBDR");
    renderer->parentProcess = this;
    renderer->disable();

    // This could possibly be an inline helper of some sort. We should keep an eye on this.
    process = init_ybpa_process_8114B4C(operator new(0x5C, 0, "PANM", 0), 8, "PANM", 8);
    panm = process;
    process->parentProcess = this;
    process->disable();

    map = new (0, "S_MP", 0) S_MP(8, "S_MP", mapRoomId, scrollX, scrollY, panm);
    map->parentProcess = this;

    sub_8020994(0x15C0, 0, 1, 0x80);
}

inline Sign::~Sign() {
    sub_8021FD4();
    if (map) {
        delete map;
    }
    if (renderer) {
        delete renderer;
    }
    if (panm) {
        sub_81166AC(panm, 3);
    }
}

void Sign::update() {
    int i;

    switch (state) {
        case 0:
            if (*(s16*)((u8*)map + 0x1C) != 0) {
                break;
            }

            for (i = 0; i < 4; i++) {
                arrows[i] = sub_8020DD0(0, SPRITE_ID(7, 254), 1, -1, -1, -1, -1);
                sub_801E150(arrows[i], i, -1, 0, 0);
                arrows[i]->xPosition = word_83A0E64[i * 2];
                arrows[i]->yPosition = word_83A0E64[i * 2 + 1];
            }

            youAreHere = sub_8020DD0(0, SPRITE_ID(7, 253), 1, -1, -1, -1, -1);
            sub_801E150(youAreHere, 0, -1, 0, 0);
            youAreHere->field_1F_0 = 2;
            renderer->enable();
            sub_805A0EC(map, 2, &width, &height);
            state = 1;
            break;

        case 1:
            if (byte_3000C80 != 0) {
                break;
            }

            panm->enable();
            sprite_show(youAreHere);
            scrollX = mapPositionX - 120;
            scrollY = mapPositionY - 88;
            sub_8051ACC();
            sub_8051A00();
            state = 2;
            break;

        case 2:
            if (youAreHere->field_13_0 != 0) {
                break;
            }

            gGameState.field_884 = 0xFFFFFFFF;
            sub_81151E4(panm, 0, 0, 16, 0xFFFF, 0xFFFF, 0, 0);
            BUFFER_REG_DISPCNT =
                DISPCNT_OBJ_1D_MAP | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON;
            state = 3;
            break;

        case 3:
            if (sub_8116620(panm) == 0) {
                state = 4;
            }
            break;

        case 4:
            if (gGameState.field_2A & B_BUTTON) {
                sub_81151E4(panm, 4, 0, 16, 0xFFFF, 0xFFFF, 0, 0);
                play_sfx_80195B4(0x61, -1);
                state = 5;
            } else {
                int direction = (gGameState.inputPressed & DPAD_ANY) >> 4;
                scrollX += byte_83A0E74[direction * 2];
                scrollY += byte_83A0E74[direction * 2 + 1];
            }
            sub_8051ACC();
            sub_8051A00();
            break;

        case 5:
            if (sub_8116620(panm) == 0) {
                parentProcess->enable();
                delete this;
            }
            break;
    }

    if (state >= 3 && state <= 5) {
        sub_8021F7C();
    }
}

void Sign::sub_8051A00() {
    youAreHere->xPosition = mapPositionX - scrollX;
    youAreHere->yPosition = mapPositionY - scrollY;

    if (scrollY == 0) {
        sprite_hide(arrows[0]);
    } else {
        sprite_show(arrows[0]);
    }

    if (scrollX == width - 240) {
        sprite_hide(arrows[1]);
    } else {
        sprite_show(arrows[1]);
    }

    if (scrollY == height - 160) {
        sprite_hide(arrows[2]);
    } else {
        sprite_show(arrows[2]);
    }

    if (scrollX == 0) {
        sprite_hide(arrows[3]);
    } else {
        sprite_show(arrows[3]);
    }
}

void SignRenderer::update() {
    int var1 = gGameState.oamCursor;
    sub_8020A78();
    gOamNodesSort(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 2580);
    var1 = gOamNodesCopy(stru_203FFB8.field_3C, var1);
    gGameState.oamCursor = var1;
}

void Sign::sub_8051ACC() {
    if (scrollX < 0) {
        scrollX = 0;
    } else if (scrollX > width - 240) {
        scrollX = width - 240;
    }

    if (scrollY < 0) {
        scrollY = 0;
    } else if (scrollY > height - 160) {
        scrollY = height - 160;
    }

    map->sub_8057C9C(scrollX, scrollY);
}
