#include "global.h"

#ifdef __cplusplus
extern "C" {
#endif

// Structs
// Defined in src/process.h.
struct Process;

struct struc_3000388 {
    u16 field_0;
    u16 field_2;
    u16 field_4;
    u16 field_6;
    u8 field_8;
    u8 field_9;
    u8 pad2[0x32];
    u16 field_3C_0 : 10;
    u16 field_3C_10 : 6;
    u8 pad3[2];
};

struct GameState {
    u16 field_0;
    u16 field_2;
    u32 field_4;
    u8 gap8[4];
    struct Process* startProcessLink;
    struct Process* nextProcess;
    struct Process* currentProcess;
    u8 processCount;
    u32 field_1C;
    u32 gap20;
    u32 playTime;
    u16 inputPressed;
    u16 field_2A;
    u16 field_2C;
    u16 field_2E;
    u8 field_30;
    u8 field_31;

    // ...
    u8 pad1[0xA];
    struct struc_3000388 field_3C;
    u8 pad1_2[0x804];

    int field_880;
    u32 field_884;
    u16 field_888_0 : 1;
    u16 field_888_1 : 2;
    u16 field_888_3 : 1;
    u16 field_888_4 : 1;
    u16 field_888_5 : 1;
    u16 field_888_6 : 1;
    u16 field_888_7 : 1;
    u16 field_889 : 8;
    s32 field_88A_0 : 3;
    s32 field_88A_3 : 1;
    u32 field_88A_4 : 1;
    u32 field_88A_5 : 1;
    s32 field_88A_6 : 2;
    u32 field_88B_0 : 1;
    u32 field_88B_1 : 7;
    u8 field_88C_0 : 1;
    u8 field_88C_1 : 7;
    u8 pad2[0x33];
    u8 field_8C0;
    u8 pad3[0xF];
    void* field_8D0;
};

struct struc_3000D18 {
    u8 field_0_0 : 1;
    u8 field_0_1 : 3;
    u32 field_4;
    u32 field_8;
    u32 field_C;
};

struct struc_Sprite48 {
    u8 pad_0[0x4];
    void* field_4;
};

// Entries of off_839EE60[][]
struct struc_839EE60 {
    u32 field_0_0 : 28;
    u32 field_0_28 : 1;
    u32 field_0_29 : 2;
    u32 field_0_31 : 1;
};

struct struc_Sprite34 {
    u8 pad_0[0x8];
    u32 field_8;
};

// An OAM buffer entry, linked to the next one (FieldObject::method10)
struct struc_Oam {
    union {
        struct OamData oam;
        u16 attr[4];
    } data;
    u32 field_8;
    u8 pad_C[0x4];
    struct struc_Oam* next;
};

// Entries of stru_83A065C
struct struc_83A065C {
    s8 x;
    s8 y;
    u16 attr0;
    u16 attr1;
    u16 attr2;
};

// Collision map cell (get_coldef_ptr_by_xz)
struct Coldef {
    u32 primaryShape : 3;
    u32 floorType : 4;
    u32 solid : 1;
    u32 primaryHeight : 4;
    u32 gap : 4;
    u32 secondaryShape : 4;
    u32 secondaryHeight : 4;
    u32 primaryPriority : 2;
    u32 secondaryPriority : 2;
    u32 priorityOverride : 1;
    u32 tileFlags : 2;
    u32 heightScale : 1;
};

struct Sprite {
    s16 xPosition;
    s16 yPosition;
    s16 xScale;
    s16 yScale;
    s16 field_8;
    s16 field_A;
    s16 field_C;
    u16 field_E;
    u32 field_10_0 : 1;
    u32 field_10_1 : 5;
    u32 field_10_6 : 2;
    u32 field_11_0 : 6;
    u32 field_11_6 : 1;
    u32 field_11_7 : 1;
    u32 field_12_0 : 1;
    u32 field_12_1 : 2;
    u32 field_12_3 : 1;
    u32 field_12_4 : 1;
    u32 field_12_5 : 1;
    u32 field_12_6 : 1;
    u32 field_12_7 : 1;
    u32 field_13_0 : 4;
    u32 field_13_4 : 4;
    u16 field_14;
    u16 field_16;
    u16 field_18;
    u16 field_1A;
    u16 field_1C;
    u8 field_1E_0 : 4;
    u8 field_1E_4 : 4;
    u8 field_1F_0 : 2;
    u8 field_1F_2 : 2;
    u8 field_1F_4 : 2;
    u8 field_1F_6 : 2;
    u8 field_20[2];
    u8 field_22;
    u8 field_23;
    u8 field_24;
    u8 field_25; // Frame count (FieldPlayerShotBullet::sub_804DFE8)
    u8 pad26[2];
    u16 field_28_0 : 9;
    u16 field_28_9 : 1;
    u16 field_28_10 : 3;
    u16 field_28_13 : 1;
    u16 field_28_14 : 2;
    u16 field_2A;
    s16 field_2C;
    u8 pad2E[0x6];
    struct struc_Sprite34* field_34;
    u8 pad38[0x10];
    struct struc_Sprite48* field_48;
};

struct struc_203FFF8 {
    u32 field_0;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 field_7_0 : 2;
    u8 field_7_2 : 1;
    u8 field_7_3 : 1;
    u8 field_7_4 : 3;
    u8 field_7_7 : 1;
};

struct LoadMenuItem {
    u16 id;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 pad5[3];
};

struct LoadMenuEntry {
    struct LoadMenuItem items[2];
    u16 field_10;
    u16 field_12;
    u8 field_14;
    u8 field_15;
    u8 field_16;
    u8 field_17;
    u8 field_18;
    u8 pad19[3];
};

struct TmevData {
    u8 pad0[4];
    u8* field_4;
};

struct SaveSlotPlayer {
    u16 field_0;
    u8 field_2_0 : 3;
    u8 field_2_3 : 5;
    u8 pad3;
    s16 field_4;
    s16 field_6;
    s16 field_8;
    s16 field_A;
};

struct SaveSlotData {
    u32 field_0_0 : 1;
    u32 field_0_1 : 1;
    u32 field_0_2 : 1;
    u32 luigiLeads : 1;
    u32 field_0_4 : 1;
    u32 brothersTogether : 1;
    u32 field_0_6 : 3;
    u32 field_0_9 : 1;
    u32 field_0_10 : 3;
    u32 field_0_13 : 5;
    u32 field_0_18 : 1;
    u32 field_0_19 : 1;
    u32 field_0_20 : 10;
    u32 field_0_30 : 2;
    struct SaveSlotPlayer field_4[2];
    u8 pad1C[0x78];
    struct LoadMenuEntry entry;
    u8 padB0[0x63C];
    u32 field_6EC;
};

struct SaveSlot {
    u8 field_0;
    struct SaveSlotData data;
    u32 field_6F4;
};

struct EeprStruct1 {
    char name[6];
    u8 field_6;
    u8 field_7;
    u8 field_8_0 : 3;
    u8 field_8_3 : 1;
    u8 field_8_4 : 1;
    u8 field_8_5 : 1;
    u8 field_8_6 : 1;
    u8 pad9[7];
    struct SaveSlot slots[3];
};

struct struc_3000FF4 {
    u8 pad0[0x30];
    u8 field_30;
    u8 pad31[0x3B];
    u8 field_6C;
};

struct struc_8021EA8 {
    u32 field_0_0 : 9;
    u32 field_0_9 : 23;
};

struct struc_3000FD0 {
    u8 pad_0[0x528];
    u32 field_528;
    u8 pad_52C[0x4];
    u32 field_530;
};

struct struc_3000D40 {
    u16 field_0_0 : 1;
    u16 field_0_1 : 1;
    u16 slot : 2;
};

struct struc_11 {
    u16 field_0;
    u16 field_2;
    u16 field_4;
    u16 field_6;
    u32 field_8;
    u32 field_C;
    struct struc_11* field_10;
};

struct struc_203FFB8 {
    u8 field_0_0 : 2;
    u8 field_0_2 : 1;
    u8 field_1;
    u8 field_2;
    u8 field_3;

    u8 pad1[0x34];

    struct struc_11* field_38;
    u32 field_3C;
};

struct Popup {
    // Made this a bitfield to match options_update.
    u8 isClosing : 1;
    s8 zoomFrame;
    u8 x;
    u8 y;
    u8 width;
    u8 height;
};

struct struc_15 {
    u32 field_0;
    u32 field_4;
    // Probably a char string but not sure.
    u8* field_8;
    u8 field_C;
    u8 field_D;
    u8 field_E;
    u8 field_F;
    u8 field_10;
    u8 field_11;
    u8 field_12;
    u8 field_13;
};

struct struc_83BBDD0 {
    u8 pad_0[0xC];
    u8*** field_C;
};

struct struc_83BCDC4 {
    u8*** field_0;
    u8 pad_4[0x8];
};

// Parent process of the save menu; the real type is unknown.
struct struc_16 {
    u8 pad0[0x208];
    u8 field_208_0 : 2;
    u8 luigiLeads : 1;
    u8 field_208_3 : 1;
    u8 brothersTogether : 1;
    u8 field_208_5 : 1;
    u8 field_208_6 : 1;
    u8 field_208_7 : 1;
};

// ORST (options/open-screen runtime data) — 340 bytes, tagged "ORST"
struct ORSTData {
    s32 field_0[5]; /* palette scroll accumulators, fixed-point */
    u16 field_14;   /* BG1HOFS value */
    u16 field_16;   /* BG0HOFS source for DMA */
    u8 _pad[316];
};

// Function prototypes
void sub_800063C();
void sub_8017E34(void);
void sub_8018218(void*, void*, size_t, int, int);
void runtime_install_interrupt_callback(int, void (*)(void));
void sub_80193B4(int, int, int);
void stop_sfx_80195A8(int);
void play_sfx_80195B4(int, int);
u32 sub_80198B0(void*);
u16 sub_81152FC(void*, u16);
u16 sub_81DA690(s16, s16);
void sub_801B5A0(void*, int, int, int, int, int, int, int, int, int);
void sub_801B390(void*, u8, int*, int*, int*);
void sub_8116654(void*, u8);
struct Coldef* get_coldef_ptr_by_xz(void* map, s16 x, s16 z);
struct Coldef* sub_803FBA4(void* map, int x, int y, int* floor, int* ceiling, int* top, bool arg6,
                           bool arg7);
void sub_8116680(void*, u8);
u8 sub_8114C1C(void*, u8, u16, u8, u16, u16);
void sub_8115048(void*, u8, u8);
void sub_8020D40(struct Sprite*);
void sub_8019308(int, int, int);
void sub_801A548(void);
void sub_81994EC(int*, void*);
void sub_801A6B0(void);
void sub_801ABE8(u16, u16, int);
void sub_801E150(struct Sprite*, int, int, int, int);
void sub_8021ED8(struct Sprite*);
u16* sub_80FB790(u16, u8*);
void sub_8020994(u16, int, int, int);
void sub_8020A78(void);
void sprite_show_8020CBC(struct Sprite*);
struct Sprite* sub_8020DD0(int, int, int, int, int, int, int);
void sub_80210A8(struct Sprite*, int, int, int, int, int, int, int);
void sub_80213A0(int, int, int, int);
void sprite_hide_8021F20(struct Sprite*);
void sub_8021F7C(void);
void sub_812418C(void);
u16 sub_8124270(u16, int);
void sub_8021FD4(void);
void sub_80FAFD8(void*, int);
void sub_81166AC(struct Process*, int);
void popup_animate(struct Popup*);
void title_screen_scroll_background_hblank(void);
int sub_812454C(void);
struct struc_203FFF8* sub_81251DC();
struct Process* init_ybpa_process_8114B4C(void*, u8, char*, u8);
void* sub_8127ECC(int, int*);
int sub_8127E50(void*, void*, int);
void sub_81229F0(void*);
void sub_8127DB4(void*, int, int, int, int, u16, u8);
void sub_80E8DE4(void);
void sub_80E8DC0(void);
void* sub_80FB080(void*, u8, char*);
void* sub_80F92DC(void*, int, int, void*, int, void*, int, int, int, int);
void sub_80E9384(void*, int);
void sub_8125220(u8, u8*, u8);
u8 sub_81252BC(u8*, u8);
void* sub_8121F1C(void*, u8, u8, u16);
void* sub_8122098(void*, u8, u8);
void* sub_8122A20(void*, s16, s16, u8, u8, u8, u16, u8, u8, u8, u8);
void sub_8083860(void*, u8, u16, u16, u8*, u8);
u8* sub_8123308(u16);
void* sub_80E9414(void*, int);
u16 sub_8127E38(u32);
void sub_81151E4(void*, u8, u16, u16, u16, u16, u8, u8);
u8 sub_8116620(void*);
void* sub_8122198(void*, u8, u8, u8);
u16 sub_8123DC4(u16, int);
void sub_8021308(struct Sprite*);
void sub_8123BA8(int);
void sub_819A43C(void);
void sub_8021574(int, int, int, int, int, void*, int);
u32** sub_81980C8(int);
void sub_8127BC8(struct LoadMenuEntry*, u8);
void reset_game_80189C4(void);
struct struc_8021EA8* sub_8021EA8(int, int);
void sub_80196E0(void);
void sub_80FC198(void);
void sub_812335C(void);
void sub_8018A4C(u32);
struct EventScriptProcess* bevs_process_init_80F048C(void*, int, u8, char*);
struct EventScriptProcess* evts_process_init_80EF3FC(void*, int, u8, char*);
void sub_819A138(void*, u32);
void sub_8057B58(struct Process*, u32);
void sub_805C73C(struct Process*, u32);
void sub_805CCC0(struct Process*, u32);
void sub_80F0184(struct EventScriptProcess*);
void sub_80F032C(struct EventScriptProcess*);
u8 sub_80E98C0(void*, int, int);
void sub_80E9958(void*, int, int, int);
void get_field_object_count(u16 room, u8* count);
void init_fobj_with_data_80FB128(u16 room, u8 index, void* object);
u8 get_field_object_type(u16 room, u8 index);
u8 sub_80FB6D4(u16 room, u8* arg1, void* object);
void sub_80FB448(u8 arg0, void* owner, void* object);
void sub_80F034C(struct EventScriptProcess*, u32);
void sub_80F0420(struct EventScriptProcess*, u32);
void sub_80FC1F8(void);
void sub_80E9AF8(void);
void sub_80E9B0C(void);
void sub_80E9D04(void);
void sub_80E9D1C(void);
void sub_801BD30(void);
void sub_801BD50(int);
void sub_8122BFC(void);
u16 sub_8199624(struct struc_15*);
void sub_8199D5C(struct struc_15*, int, u8, int);
void sub_8199D78(struct struc_15*, void*, int, int, int, int, int, int, int, int);
void sub_81DA6C8(int);

// EWRAM
extern struct struc_203FFB8 stru_203FFB8;
extern struct struc_203FFF8 stru_203FFF8;
extern u16 word_203FFC4[];

// IWRAM
extern void (*dword_3000D48)(int, int);
extern int (*dword_3000D4C)(int, int);
extern struct ORSTData* dword_3000DA0;
extern struct EeprStruct1* dword_3000FFC;
extern struct struc_3000FF4* dword_3000FF4;
extern struct LoadMenuItem* dword_3000FF8;
extern u8 byte_3000C80;
extern struct struc_3000D40 stru_3000D40;
extern struct FieldManager* dword_3000D7C;
extern struct EventScriptProcess* dword_3000D78;
extern struct struc_3000FD0* dword_3000FD0;
extern void* dword_3000FC0;
extern u16 word_3000D3C;
extern void* dword_3000FB8;
extern struct GameState gGameState;
extern void (*dword_3000C78)();
extern void (*dword_3000C84)(void*, void*);
extern struct struc_3000D18 stru_3000D18;
extern void (*dword_3001034)(int, void*, int);
extern int (*dword_3001038)();

// ROM
extern int loc_8198220();
extern int loc_819832C(int, int);
extern int loc_8198350(int, int);
extern u8 loc_81980D8[];
extern u8 loc_8198154[];
extern u8** off_83BADAC[];
extern u8** off_83BADC0[];
extern u8 dword_81DD7F4[];
extern u8 dword_81DD9F4[16384];
extern u8 dword_81E19F4[1280];
extern u16 word_83A2900[];
extern u16 word_83A290C[];
extern u16 word_83A2918[];
extern u16 word_83A2944[];
extern u16 word_83A2958[];
extern u16 word_83A291C[];
extern int* off_83A2920[];
extern int* off_83A292C[];
extern int* off_83A2964[];
extern int dword_84E8B18;
extern int dword_84E8A28;
extern u16 word_83A2978[];
extern int dword_83A2B48[];
extern int dword_83A2F98[];
extern int dword_83A3498[];
extern int dword_83A34B8[];
extern int dword_83A3860[];
extern int dword_83A3D60[];
extern int dword_83A3D80[];
extern int dword_83A4874[];
extern int dword_83A575C[];
extern int dword_83A5C5C[];
extern int dword_83A6C5C[];
extern int dword_83A7140[];
extern int dword_83A7300[];
extern u16 word_83A74C0[];
extern u8 byte_83A74E9[];
extern u8 dword_83A74E4[];
extern s16 word_83A74EC[];
extern s16 word_83A7530[];
extern s16 word_83A7574[];
extern s16 word_83A75B8[];
extern s16 word_83A75C8[];
extern u8* off_839EC80;
extern u16 word_839F5A4[]; // Up, Up, Down, Down, Left, Right, Left, Right, B, A
extern u8 byte_839F5B8[];
extern struct struc_839EE60* off_839EE60[];
extern u8 byte_83A05EC[];
extern u8 byte_83A061C[];
extern u8 byte_83A0636[];
extern s8 byte_83A0656[];
extern s8* off_83A09DC[]; // Indexed by [FieldObject::field_54][state] (FieldPlayerCharacter::sub_8048174)
extern u8* off_83A086C[]; // Indexed by [!FieldPlayerCharacter::field_352_7][state]
extern s8 byte_83A09E4[][8][3]; // FieldPlayerCharacter::field_372-374 per animation and direction
extern u16 word_83A0A2C[]; // FieldPlayerCharacter::sub_804A124: corner masks that may match
extern u8 byte_83A0A2E[];
extern u8 byte_83A0A38[]; // FieldPlayerCharacter::sub_804FC30, indexed by (angle / 32) * 4 + field_26_2
extern u8 byte_83A0A58[8]; // FieldPlayerCharacter::sub_804B360 push directions per angle / 32 for a single blocked corner
extern u8 byte_83A0A60[8];
extern u8 byte_83A0A68[8];
extern u8 byte_83A0A70[8];
extern u16 word_83A0C5A[]; // FieldPlayerShotBullet animations, indexed by type - 2
extern u16 word_83A0C60[]; // FieldPlayerShotBullet tables, indexed by type - 2
extern s8 byte_83A0CD6[8][4]; // FieldPlayerShotBullet::sub_804EA68: sides to check per direction, ended by -1
extern s16 word_83A0C66[];
extern u8 byte_83A0C6C[];
extern s16 word_83A0C70[];
extern s16 word_83A0C76[];
extern s16 word_839F564[]; // Direction vectors
extern u8 byte_801349C[][7]; // Packed sprite boxes, indexed by Sprite::field_16
extern s16 word_83A0B88[][8][6]; // FieldPlayerCharacter::sub_804DBD0 probe offsets
extern s16 word_83A0A78[][2][8][4]; // FieldPlayerCharacter::sub_804D734 hammer boxes per mode, half and direction
extern u8 byte_83A0B78[8]; // Sides hit per direction (this object)
extern u8 byte_83A0B80[8]; // Sides hit per direction (the other object)
extern u8 byte_83A0C48[]; // FieldPlayerCharacter::sub_804DBD0: 9 pairs of offset indices
extern struct struc_83A065C stru_83A065C[];
extern u8* off_83A069C[];
extern s8 byte_83A06C0[8][4];
extern s16 word_83A06E0[][2];
extern s16 word_8198504[];
extern s16 word_8198584[];
extern u8* off_839F5C8;
extern struct struc_83BBDD0 stru_83BBDD0[];
extern struct struc_83BCDC4 stru_83BCDC4[];
extern int dword_83A0E94[];
extern int dword_83A1F60[];
extern u32 dword_83A13A0[];
extern u32 dword_83A1BA0[];
extern u32 dword_83A1D80[];
extern u32 off_83A2880[];
extern u32 off_83A28C0[];
extern u32 off_851F9E8[];
extern u8 sub_8198784[];
extern u8 sub_819941C[];

#ifdef __cplusplus
}
#endif
