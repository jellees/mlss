#include "global.h"

// Structs
struct Process;

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
    s16 field_2;
    u32 field_4;
    u8 gap8[4];
    struct Process* startProcessLink;
    struct Process* nextProcess;
    struct Process* currentProcess;
    u8 processCount;
    u32 field_1C;

    // ...
    u8 pad1[0x864];

    u32 field_884;
    s8 field_888_0 : 1;
    s8 field_888_1 : 2;
    s8 field_888_3 : 1;
    s8 field_889;
    // possible flags
    s8 field_88A_0 : 3;
    s8 field_88A_4 : 1;
};

struct struc_3000D18
{
    u8 field_0_0 : 1;
    u8 field_0_1 : 3;
    u8 field_1[3];
    u32 field_4;
    u32 field_8;
    u32 field_C;
};

// Function prototypes
void sub_8017E34(void);
void sub_8018218(void*, void*, size_t, int, int);
void free_heap_8018DA8(void* ptr);
void sub_81DA698(void*, void*, size_t);

// IWRAM
extern struct GameState gGameState;
extern struct struc_3000D18 stru_3000D18;

// ROM
extern u8 dword_81DD7F4[];
extern u8 dword_81DD9F4[16384];
extern u8 dword_81E19F4[1280];
extern struct ProcessDefinition stru_8CDBD68;
extern struct ProcessDefinition stru_8CDBD78;
