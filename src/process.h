#ifndef PROCESS_H
#define PROCESS_H

#define PROCESS_REMOVE_FLAGS_NOTHING 0
#define PROCESS_REMOVE_FLAGS_FREE    1

extern struct Process* process_add(struct Process* process, u8 priority, char* label);
extern void process_execute_all(void);
extern bool32 process_exists(struct Process* process);
extern void process_enable_all(void);
extern void process_disable_all(void);
extern void process_enable(struct Process* process);
extern void process_disable(struct Process* process);
extern void process_remove(struct Process* process, u32 flags);

#endif