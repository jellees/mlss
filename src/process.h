#ifndef PROCESS_H
#define PROCESS_H

#define PROCESS_REMOVE_FLAGS_NOTHING 0
#define PROCESS_REMOVE_FLAGS_FREE    1
#define PROCESS_REMOVE_FLAGS_UNKNOWN 2

#ifdef __cplusplus
#pragma interface

// Declared outside extern "C": inside it, agbcp drops the destructor's vtable reset and delete.
class Process {
  public:
    u8 state;
    u8 priority;
    s16 flag : 1;
    s16 wait : 1;
    s16 executeMax : 4;
    u16 executeCounter : 4;
    u16 processCount : 6;
    u32 frames;
    char label[4];
    Process* previousProcess;
    Process* nextProcess;
    Process* parentProcess;
    // The vtable pointer follows at 0x18.

    Process(u8 priority, char* label);
    ~Process();
    virtual void update() = 0;
    void enable();
    void disable();
    static void executeAll();
    static bool32 exists(Process* process);
    static void enableAll();
    static void disableAll();
};
#else
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

// C declarations of the members of class Process, bound to the mangled names.
struct Process* process_add(struct Process* process, u8 priority, char* label) asm("__7ProcessUcPc");
void process_execute_all(void) asm("executeAll__7Process");
bool32 process_exists(struct Process* process) asm("exists__7ProcessP7Process");
void process_enable_all(void) asm("enableAll__7Process");
void process_disable_all(void) asm("disableAll__7Process");
void process_enable(struct Process* process) asm("enable__7Process");
void process_disable(struct Process* process) asm("disable__7Process");
void process_remove(struct Process* process, u32 flags) asm("_._7Process");
#endif

#endif
