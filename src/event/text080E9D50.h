#ifndef TEXT080E9D50_H
#define TEXT080E9D50_H

// Script command handlers shared by the field, battle and menu scripts (name unknown; the file
// starts at 0x080E9D50). Only the first function is C so far; the rest is in asm/event/event.s.

struct ScriptSlot;

s8 sub_80E9D50(void* engine, void* window, ScriptSlot* script, s32* arguments);
s8 sub_80E9E10(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80E9EE0(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EA064(void* engine, ScriptSlot* script, s32* arguments);
s8 sub_80EA144(void* engine, ScriptSlot* script, s32* arguments, u32* engineLocals);

#endif // TEXT080E9D50_H
