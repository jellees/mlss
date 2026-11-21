	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start script_cmd_return__9EventBaseP10ScriptSlot
script_cmd_return__9EventBaseP10ScriptSlot:
	push {lr}
	ldr r2, [r1, #0x10]
	cmp r2, #0x00
	bne _080EB22E
	ldr r0, [r1, #0x00]
	str r0, [r1, #0x04]
	b _080EB234
_080EB22E:
	str r2, [r1, #0x00]
	movs r0, #0x00
	str r0, [r1, #0x10]
_080EB234:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
