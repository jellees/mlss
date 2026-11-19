#ifndef EVENT_H
#define EVENT_H

struct ScriptSlot;

u8* script_read_next_line(ScriptSlot* script, s32* command, void* arg2, void* arg3, void* arg4,
                          int arg5);

#endif // EVENT_H
