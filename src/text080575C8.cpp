#include "global.h"
#include "common.h"
#include "heap.h"
#include "process.h"
#include "text080575C8.h"

S_MP::S_MP(u8 priority, char* label, u16 arg2, s16 scrollX, s16 scrollY, Process* panm)
    : Process(priority, label) {
    s16 i;
    u8 bg1Priority;
    u8 bg2Priority;
    u8 bg3Priority;
    u8 mode;

    this->panm = panm;
    field_1C = -5;
    field_1E = arg2;
    this->scrollX = scrollX;
    this->scrollY = scrollY;

    mapw = new (1, "MAPW", 0) u8[0x3000];
    mpdw = new (1, "MPDW", 0) u8[0x3000];
    mpcl = new (1, "MPCL", 0) u8[0x2800];
    mids = new (1, "MIDS", 0) u8[0x1000];
    midt = new (1, "MIDT", 0) u8[0x400];
    cmpw = new (1, "CMPW", 0) u8[0x2000];

    CpuFastFill(0, mapw, 0x3000);
    CpuFastFill(0, mpdw, 0x3000);
    CpuFastFill(0, mpcl, 0x2800);
    CpuFastFill(0, mids, 0x1000);
    CpuFastFill(0, midt, 0x400);
    CpuFastFill(0, cmpw, 0x2000);

    sub_8059EC8(field_1E & 0x7FFF);

    offsetX[2] = 0;
    offsetY[2] = 0;
    layerFlags[2] = 0;

    if (stru_3000DD0.field_12 & 0x80) {
        offsetX[1] = -((stru_3000DD0.field_12 & 0x70) >> 4) * 480;
    } else {
        offsetX[1] = ((stru_3000DD0.field_12 & 0x70) >> 4) * 480;
    }

    if (stru_3000DD0.field_12 & 0x8) {
        offsetY[1] = -(stru_3000DD0.field_12 & 7) * 320;
    } else {
        offsetY[1] = (stru_3000DD0.field_12 & 7) * 320;
    }

    layerFlags[1] = 0;
    if ((stru_3000DD0.field_C & 0x3000) == 0x1000) {
        layerFlags[1] = 0x80;
        layerFlags[1] |= stru_3000DD0.field_C & 7;
    }
    if (stru_3000DD0.field_C & 0x400) {
        layerFlags[1] |= 0x40;
    }

    if (stru_3000DD0.field_12 & 0x8000) {
        offsetX[0] = -((stru_3000DD0.field_12 & 0x7000) >> 12) * 480;
    } else {
        offsetX[0] = ((stru_3000DD0.field_12 & 0x7000) >> 12) * 480;
    }

    if (stru_3000DD0.field_12 & 0x800) {
        offsetY[0] = -((stru_3000DD0.field_12 & 0x700) >> 8) * 320;
    } else {
        offsetY[0] = ((stru_3000DD0.field_12 & 0x700) >> 8) * 320;
    }

    layerFlags[0] = 0;
    if ((stru_3000DD0.field_C & 0xC000) == 0x4000) {
        layerFlags[0] = 0x80;
        layerFlags[0] |= (stru_3000DD0.field_C & 0x38) >> 3;
    }
    if (stru_3000DD0.field_C & 0x800) {
        layerFlags[0] |= 0x40;
    }

    rateY[2] = 4;
    rateX[2] = 4;

    switch (stru_3000DD0.field_C & 0x300) {
        case 0:
            rateX[0] = 4;
            rateY[0] = 4;
            field_90[0] = 4;
            break;
        case 0x100:
            rateX[0] = 1;
            rateY[0] = 1;
            field_90[0] = 1;
            break;
        case 0x200:
            rateX[0] = 2;
            rateY[0] = 2;
            field_90[0] = 2;
            break;
        case 0x300:
            rateX[0] = 8;
            rateY[0] = 8;
            field_90[0] = 8;
            break;
    }

    if ((stru_3000DD0.field_C & 0x38) == 0x8) {
        rateY[0] = 4;
    } else if ((stru_3000DD0.field_C & 0x38) == 0x10) {
        rateX[0] = 4;
    }

    switch (stru_3000DD0.field_C & 0xC0) {
        case 0:
            rateX[1] = 4;
            rateY[1] = 4;
            field_90[1] = 4;
            break;
        case 0x40:
            rateX[1] = 1;
            rateY[1] = 1;
            field_90[1] = 1;
            break;
        case 0x80:
            rateX[1] = 2;
            rateY[1] = 2;
            field_90[1] = 2;
            break;
        case 0xC0:
            rateX[1] = 8;
            rateY[1] = 8;
            field_90[1] = 8;
            break;
    }

    if ((stru_3000DD0.field_C & 7) == 1) {
        rateY[1] = 4;
    } else if ((stru_3000DD0.field_C & 7) == 2) {
        rateX[1] = 4;
    }

    for (i = 2; i >= 0; i--) {
        if (i != 2 && !(layerFlags[i] & 0x80)) {
            layerX[i] = offsetX[i] + ((field_5A[2] * rateX[i]) >> 2);
            layerY[i] = offsetY[i] + ((field_60[2] * rateY[i]) >> 2);

            if (layerX[i] < 0) {
                layerX[i] = 0;
            } else if (layerX[i] > width[i] - 240) {
                layerX[i] = width[i] - 240;
            }

            if (layerY[i] < 0) {
                layerY[i] = 0;
            } else if (layerY[i] > height[i] - 160) {
                layerY[i] = height[i] - 160;
            }

            field_5A[i] = layerX[i];
            field_60[i] = layerY[i];
        } else {
            layerX[i] = this->scrollX;
            layerY[i] = this->scrollY;
            field_5A[i] = this->scrollX;
            field_60[i] = this->scrollY;
        }
        field_66[i] = 0;
        field_6C[i] = 0;
    }

    mode = stru_3000DD0.field_2 & 0x60;
    bg1Priority = 0;
    bg2Priority = 0;
    bg3Priority = 0;
    switch (mode) {
        case 0:
            bg1Priority = 1;
            bg2Priority = 2;
            bg3Priority = 3;
            break;
        case 0x20:
            bg1Priority = 1;
            bg2Priority = 3;
            bg3Priority = 2;
            break;
        case 0x40:
            bg1Priority = 2;
            bg2Priority = 3;
            bg3Priority = 1;
            break;
    }

    BUFFER_REG_BG1CNT = (BGCNT_TXT512x256 | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(0)) | bg1Priority;
    BUFFER_REG_BG2CNT = (BGCNT_TXT512x256 | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(2)) | bg2Priority;
    BUFFER_REG_BG3CNT = (BGCNT_TXT512x256 | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(4)) | bg3Priority;
    field_578 = 0;
}

S_MP::~S_MP() {
    if (field_584) {
        sub_805C6B8();
    }
    sub_80184F4((void*)VRAM);
    delete[] cmpw;
    delete[] midt;
    delete[] mids;
    delete[] mpcl;
    delete[] mpdw;
    delete[] mapw;
}

void S_MP::sub_8057BE4() {
    u8 bg1Priority;
    u8 bg2Priority;
    u8 bg3Priority;
    u8 mode;

    field_1C = -5;
    field_578 = 1;
    cmpw = new (1, "CMPW", 0) u8[0x2000];
    CpuFastFill(0, cmpw, 0x2000);

    mode = stru_3000DD0.field_2 & 0x60;
    bg1Priority = 0;
    bg2Priority = 0;
    bg3Priority = 0;
    switch (mode) {
        case 0:
            bg1Priority = 1;
            bg2Priority = 2;
            bg3Priority = 3;
            break;
        case 0x20:
            bg1Priority = 1;
            bg2Priority = 3;
            bg3Priority = 2;
            break;
        case 0x40:
            bg1Priority = 2;
            bg2Priority = 3;
            bg3Priority = 1;
            break;
    }

    BUFFER_REG_BG1CNT = (BGCNT_TXT512x256 | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(0)) | bg1Priority;
    BUFFER_REG_BG2CNT = (BGCNT_TXT512x256 | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(2)) | bg2Priority;
    BUFFER_REG_BG3CNT = (BGCNT_TXT512x256 | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(4)) | bg3Priority;
}
