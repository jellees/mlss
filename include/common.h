#include "global.h"

// Structs
struct Process;

struct ProcessDefinition {
    u32 field_0;
    void (*field_4)(struct Process* process);
    s16 offset;
    u16 field_A;
    void (*update)(struct Process* process);
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
};

// Function prototypes
void free_heap_8018DA8(void* ptr);

// IWRAM
extern struct GameState gGameState;

// ROM
extern struct ProcessDefinition stru_8CDBD68;
