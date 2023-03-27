#ifndef PROCESS_H
#define PROCESS_H

#define PROCESS_REMOVE_FLAGS_NOTHING 0
#define PROCESS_REMOVE_FLAGS_FREE    1

struct Process* process_add(struct Process* process, u8 priority, char* label);
void process_execute_all(void);
bool32 process_exists(struct Process* process);
void process_enable_all(void);
void process_disable_all(void);
void process_enable(struct Process* process);
void process_disable(struct Process* process);
void process_remove(struct Process* process, u32 flags);

#endif
