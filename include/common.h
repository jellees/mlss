#include "global.h"

// Structs
struct ProcessDefinition {
    u32 field_0;
    void (*field_4)(void*);
    s16 offset;
    u16 field_A;
    void (*update)(void*);
};

struct Process {
    u8 state;
    u8 priority;
    s16 flag : 1;
    s16 wait : 1;
    s16 executeMax : 4;
    u16 executeCounter : 4;
    u16 processCount : 6;
    u32 frames;
    char label[4];
    struct Process* previousProcess;
    struct Process* nextProcess;
    struct Process* parentProcess;
    struct ProcessDefinition* definition;
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
    u8 pad1[0x84E];

    int field_880;
    u32 field_884;
    s32 field_888_0 : 1;
    u8 field_888_1 : 2;
    s32 field_888_3 : 1;
    u32 field_888_4 : 4;
    s32 field_889 : 8;
    // possible flags
    s32 field_88A_0 : 3;
    s32 field_88A_3 : 1;
    u32 field_88A_4 : 1;
    s32 field_88A_5 : 3;
    u32 field_88B_0 : 1;
    u32 field_88B_1 : 7;
};

struct struc_3000D18
{
    u8 field_0_0 : 1;
    u8 field_0_1 : 3;
    u32 field_4;
    u32 field_8;
    u32 field_C;
};

struct Sprite
{
    s16 xPosition;
    s16 yPosition;
    s16 xScale;
    s16 yScale;
    s16 field_8;
    s16 field_A;
    u8 pad[2];
    s16 field_E;
    u8 field_10;
    u8 field_11_0 : 6;
    u8 field_11_6 : 1;
    u8 field_11_7 : 1;
    u8 field_12_0 : 1;
    u8 field_12_1 : 2;
    u8 field_12_3 : 1;
    u8 field_12_4 : 1;
    u8 field_12_5 : 3;
    u8 field_13;
    u8 field_14;
    u8 field_15;
    u16 field_16;
    u16 field_18;
    u16 field_1A;
    u16 field_1C;
    u8 field_1E;
    u8 field_1F_0 : 2;
    u8 field_1F_2 : 2;
    u8 field_20[2];
    u8 field_22;
};

struct struc_203FFF8
{
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

struct EeprStruct1{
    char name[8];
    u8 field_8_0 : 3;
    u8 field_8_3 : 1;
    u8 field_8_4 : 1;
    u8 field_8_5 : 1;
    u8 field_8_6 : 1;
};

struct MarioBrosScoreVisual
{
    struct Process process;
    char topScore[6];
    char pScore[2];
};

struct struc_11
{
    u16 field_0;
    u16 field_2;
    u16 field_4;
    u16 field_6;
    u32 field_8;
    u32 field_C;
    struct struc_11* field_10;
};

struct struc_203FFB8
{
    u8 field_0_0 : 2;
    u8 field_0_2 : 1;
    u8 field_1;
    u8 field_2;
    u8 field_3;

    u8 pad1[0x34];

    struct struc_11* field_38;
    u32 field_3C;
};

struct WindowAttr
{
    // Made this a bitfield to match optn_update.
    u8 field_0_0 : 1;
    s8 field_1;
    u8 xStart;
    u8 yStart;
    u8 xSize;
    u8 ySize;
};

struct OPTNProcess
{
    struct Process process;
    s8 brightness;
    s8 field_1D;
    struct Process* odtr;
    u8* bwcw;
    u8* field_28;
    u8* field_2C;
    u16* bwsw;
    int* bbwf;
    int* bbwi;
    s8 options_0 : 1;
    s8 options_1 : 3;
    u8 options_4 : 3;
    s8 selection;
    int* winw;
    u8 okButtonPosX;
    u8 okButtonPosY;
    struct WindowAttr field_48;
    struct Sprite* sprite;
};

// Function prototypes
void sub_800063C();
void sub_8017E34(void);
void sub_8018218(void*, void*, size_t, int, int);
void sub_8018B78(int, void (*)(void));
void free_heap_8018D9C(void*);
void free_heap_8018DA8(void* ptr);
void* alloc_zero_8018DB4(int, bool32, char*, int);
void* alloc_Zero(int, bool32, char*, int);
void sub_80193B4(int, int, int);
void play_sfx_80195B4(int, int);
u32 sub_80198B0(int*);
void sub_801A6B0(void);
void sub_801ABE8(u16, u16, int);
void sub_801AFE4(int);
void sub_801E150(struct Sprite*, int, int, int, int);
void sub_8020994(int, int, int, int);
void sub_8020A78(void);
void sprite_show_8020CBC(struct Sprite*);
struct Sprite* sub_8020DD0(int, int, int, int, int, int, int);
void sub_80210A8(struct Sprite*, int, int, int, int, int, int, int);
void sub_80213A0(int, int, int, int);
void sprite_hide_8021F20(struct Sprite*);
void sub_8021F7C(void);
void sub_8021FD4(void);
void sub_8051EE0(struct WindowAttr*);
struct OPTNProcess* optn_init(struct OPTNProcess*, u8, char*, int);
int sub_8052A8C(struct OPTNProcess*);
void sub_8052EFC(struct OPTNProcess*);
void sub_805420C(struct OPTNProcess*);
void option_screen_set_ok_button(struct OPTNProcess*, int, int);
void open_init_8055A00(void*, int, char*, int);
void open_8056224();
void sub_80574B4(void);
void sub_80574FC(void);
int sub_812454C(void);
struct struc_203FFF8* sub_81251DC();
struct Process* sub_812538C(struct Process*, u8, char*, int);
void sub_81DA6C8(int);

// EWRAM
extern struct struc_203FFB8 stru_203FFB8;
extern struct struc_203FFF8 stru_203FFF8;

// IWRAM
extern void (*dword_3000D48)(int,int);
extern int (*dword_3000D4C)(int,int);
extern int* dword_3000DA0;
extern struct EeprStruct1* dword_3000FFC;
extern struct GameState gGameState;
extern void (*dword_3000C78)();
extern void (*dword_3000C84)(int*, void*);
extern struct struc_3000D18 stru_3000D18;
extern int (*dword_3001038)();

// ROM
extern int loc_8198220();
extern int loc_819832C(int, int);
extern u8 dword_81DD7F4[];
extern u8 dword_81DD9F4[16384];
extern u8 dword_81E19F4[1280];
extern u16 word_83A2900[];
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
extern s16 word_83A74EC[];
extern s16 word_83A7530[];
extern s16 word_83A7574[];
extern s16 word_83A75B8[];
extern s16 word_83A75C8[];
extern u8* off_839EC80;
extern struct ProcessDefinition stru_8CDBD68;
extern struct ProcessDefinition stru_8CDBD78;
extern struct ProcessDefinition stru_8CDC1F8;
extern struct ProcessDefinition stru_8CDC238;
extern struct ProcessDefinition stru_8CDC248;
extern struct ProcessDefinition stru_8CDC258;
extern struct ProcessDefinition stru_8CDC268;
