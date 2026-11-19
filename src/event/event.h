#ifndef EVENT_H
#define EVENT_H

struct ScriptSlot;

u8* script_read_next_line(ScriptSlot* script, s32* command, void* arg2, void* arg3, void* arg4,
                          int arg5);
u8 sub_80E98C0(u32* arg0, u32* arg1, u16 flag);

#endif // EVENT_H
