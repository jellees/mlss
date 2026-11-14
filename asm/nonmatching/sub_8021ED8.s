	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_8021ED8
sub_8021ED8:
	push {lr}
	adds r2, r0, #0x0
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08021F1C
	ldr r1, [r2, #0x64]
	ldr r0, [r2, #0x68]
	cmp r1, r0
	bne _08021F16
	ldr r1, _08021EFC @ =0x0203FFB8
	ldr r0, [r1, #0x30]
	cmp r0, #0x00
	bne _08021F00
	str r2, [r1, #0x30]
	b _08021F0A
	.byte 0x00, 0x00
_08021EFC: .4byte 0x0203FFB8
_08021F00:
	ldr r0, [r1, #0x34]
	ldr r0, [r0, #0x68]
	str r0, [r2, #0x68]
	ldr r0, [r1, #0x34]
	str r2, [r0, #0x68]
_08021F0A:
	ldr r0, [r1, #0x34]
	str r0, [r2, #0x64]
	str r2, [r1, #0x34]
	ldrb r0, [r1, #0x01]
	adds r0, #0x01
	strb r0, [r1, #0x01]
_08021F16:
	adds r0, r2, #0x0
	bl sprite_show_8020CBC
_08021F1C:
	pop {r0}
	bx r0
