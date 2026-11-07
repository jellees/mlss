	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start init_heap__Fv
init_heap__Fv: @ 08018BC0
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x008
	movs r0, #0x00
	mov r9, r0
	str r0, [sp, #0x000]
	ldr r4, _08018C4C @ =0x03001BD8
	ldr r5, _08018C50 @ =0x080000F4
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r6, r4, r1
	ldr r2, [r5, #0x00]
	subs r2, r2, r6
	lsls r2, r2, #0x09
	lsrs r2, r2, #0x0B
	movs r0, #0xA0
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, sp
	adds r1, r4, #0x0
	bl CpuSet
	mov r0, r9
	str r0, [r4, #0x00]
	str r0, [r4, #0x04]
	ldr r0, [r5, #0x00]
	subs r0, r0, r6
	movs r1, #0x01
	orrs r0, r1
	str r0, [r4, #0x08]
	ldr r0, _08018C54 @ =0x081DD7C8
	ldrb r1, [r0, #0x00]
	mov r8, r1
	strb r1, [r4, #0x0C]
	ldrb r3, [r0, #0x01]
	strb r3, [r4, #0x0D]
	ldrb r6, [r0, #0x02]
	strb r6, [r4, #0x0E]
	ldrb r5, [r0, #0x03]
	strb r5, [r4, #0x0F]
	mov r0, r9
	str r0, [sp, #0x000]
	ldr r4, _08018C58 @ =0x02000C80
	ldr r2, _08018C5C @ =0x0500FCDE
	mov r0, sp
	adds r1, r4, #0x0
	str r3, [sp, #0x004]
	bl CpuSet
	mov r1, r9
	str r1, [r4, #0x00]
	str r1, [r4, #0x04]
	ldr r0, _08018C60 @ =0x0003F379
	str r0, [r4, #0x08]
	ldr r0, _08018C64 @ =0x02000C8C
	mov r1, r8
	strb r1, [r0, #0x00]
	ldr r3, [sp, #0x004]
	strb r3, [r0, #0x01]
	strb r6, [r0, #0x02]
	strb r5, [r0, #0x03]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08018C4C: .4byte 0x03001BD8
_08018C50: .4byte 0x080000F4
_08018C54: .4byte 0x081DD7C8
_08018C58: .4byte 0x02000C80
_08018C5C: .4byte 0x0500FCDE
_08018C60: .4byte 0x0003F379
_08018C64: .4byte 0x02000C8C
