	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start alloc_heap_8018CEC__FiUiPc
alloc_heap_8018CEC__FiUiPc: @ 08018CEC
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	cmp r4, #0x00
	beq _08018D94
	ldr r5, _08018D64 @ =0x02000C80
	cmp r0, #0x00
	bne _08018CFE
	ldr r5, _08018D68 @ =0x03001BD8
_08018CFE:
	adds r4, #0x03
	movs r0, #0x04
	negs r0, r0
	ands r4, r0
	movs r2, #0x01
_08018D08:
	ldr r1, [r5, #0x08]
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _08018D8E
	adds r3, r4, #0x0
	adds r3, #0x10
	mov r12, r3
	cmp r1, r3
	bcc _08018D8E
	movs r0, #0x02
	negs r0, r0
	ands r1, r0
	adds r0, r4, #0x0
	adds r0, #0x20
	cmp r1, r0
	bls _08018D70
	adds r3, r5, r3
	adds r0, r1, #0x0
	subs r0, #0x10
	subs r0, r0, r4
	orrs r0, r2
	str r0, [r3, #0x08]
	str r5, [r3, #0x00]
	ldr r4, [r5, #0x04]
	str r4, [r3, #0x04]
	adds r2, r5, #0x0
	adds r2, #0x0C
	adds r7, r5, #0x0
	adds r7, #0x10
	ldr r1, _08018D6C @ =0x081DD7C8
	ldrb r0, [r1, #0x00]
	strb r0, [r3, #0x0C]
	ldrb r0, [r1, #0x01]
	strb r0, [r3, #0x0D]
	ldrb r0, [r1, #0x02]
	strb r0, [r3, #0x0E]
	ldrb r0, [r1, #0x03]
	strb r0, [r3, #0x0F]
	cmp r4, #0x00
	beq _08018D5C
	str r3, [r4, #0x00]
_08018D5C:
	mov r0, r12
	str r0, [r5, #0x08]
	str r3, [r5, #0x04]
	b _08018D7A
_08018D64: .4byte 0x02000C80
_08018D68: .4byte 0x03001BD8
_08018D6C: .4byte 0x081DD7C8
_08018D70:
	str r1, [r5, #0x08]
	adds r2, r5, #0x0
	adds r2, #0x0C
	adds r7, r5, #0x0
	adds r7, #0x10
_08018D7A:
	ldrb r0, [r6, #0x00]
	strb r0, [r2, #0x00]
	ldrb r0, [r6, #0x01]
	strb r0, [r2, #0x01]
	ldrb r0, [r6, #0x02]
	strb r0, [r2, #0x02]
	ldrb r0, [r6, #0x03]
	strb r0, [r2, #0x03]
	adds r0, r7, #0x0
	b _08018D96
_08018D8E:
	ldr r5, [r5, #0x04]
	cmp r5, #0x00
	bne _08018D08
_08018D94:
	movs r0, #0x00
_08018D96:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
