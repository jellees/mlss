	.include "asm/macros.inc"

	.syntax unified

	.section .rodata
	.align 2, 0

	.byte 0x53, 0x42, 0x4C, 0x4B, 0x00, 0x00, 0x00, 0x00 @ "SBLK"

	.text

	thumb_func_start sub_8026C78__12FieldManager
sub_8026C78__12FieldManager:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x02]
	lsls r0, r0, #0x08
	ldrb r1, [r2, #0x01]
	orrs r1, r0
	mov r8, r1
	ldrb r3, [r2, #0x00]
	ldrb r0, [r2, #0x04]
	lsls r0, r0, #0x08
	ldrb r1, [r2, #0x03]
	orrs r0, r1
	subs r7, r2, r0
	movs r2, #0xFA
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x00
	strb r0, [r1, #0x00]
	cmp r3, #0x00
	bne _08026CB0
	b _08026E80
_08026CB0:
	movs r4, #0x01
	mov r10, r4
	adds r6, r1, #0x0
	mov r9, r3
_08026CB8:
	ldrb r4, [r7, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r4
	cmp r0, #0x40
	beq _08026CDC
	cmp r0, #0x40
	bgt _08026CD2
	cmp r0, #0x00
	beq _08026CDC
	cmp r0, #0x20
	beq _08026CDC
	b _08026E66
_08026CD2:
	cmp r0, #0xA0
	beq _08026D6C
	cmp r0, #0xC0
	beq _08026D6C
	b _08026E66
_08026CDC:
	movs r0, #0xD4
	lsls r0, r0, #0x02
	movs r1, #0x01
	ldr r2, _08026D5C @ =0x081E2664
	movs r3, #0x01
	bl __nw__FUliPcUc
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x000]
	adds r1, r7, #0x0
	mov r2, r8
	bl __10FieldBlockPUcUsii
	adds r3, r0, #0x0
	movs r0, #0x10
	ands r4, r0
	cmp r4, #0x00
	beq _08026D22
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _08026D22
	ldr r2, _08026D60 @ =0x0000020F
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r4, #0x03
	negs r4, r4
	adds r2, r4, #0x0
	ands r1, r2
	strb r1, [r0, #0x00]
_08026D22:
	ldr r0, _08026D64 @ =0x0000010B
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x54
	strb r1, [r0, #0x00]
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	str r3, [r0, #0x00]
	movs r4, #0x8D
	lsls r4, r4, #0x01
	adds r1, r5, r4
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08026D4A
	ldrb r0, [r2, #0x00]
	strb r0, [r1, #0x00]
_08026D4A:
	ldr r0, _08026D68 @ =0x0000011B
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	b _08026E66
_08026D5C: .4byte 0x081E2664
_08026D60: .4byte 0x0000020F
_08026D64: .4byte 0x0000010B
_08026D68: .4byte 0x0000011B
_08026D6C:
	ldrb r0, [r6, #0x00]
	lsls r3, r0, #0x01
	adds r3, r3, r0
	lsls r3, r3, #0x02
	adds r3, r5, r3
	movs r0, #0xA0
	eors r0, r4
	negs r1, r0
	orrs r1, r0
	lsrs r1, r1, #0x1F
	movs r2, #0x9A
	lsls r2, r2, #0x01
	adds r3, r3, r2
	mov r4, r10
	ands r1, r4
	ldrb r0, [r3, #0x00]
	movs r4, #0x02
	negs r4, r4
	adds r2, r4, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08026E28 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x9B
	lsls r2, r2, #0x05
	add r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x00
	bl sub_80E98C0
	ldrb r1, [r6, #0x00]
	lsls r2, r1, #0x01
	adds r2, r2, r1
	lsls r2, r2, #0x02
	adds r2, r5, r2
	movs r4, #0x9A
	lsls r4, r4, #0x01
	adds r2, r2, r4
	mov r3, r10
	ands r3, r0
	lsls r3, r3, #0x01
	ldrb r0, [r2, #0x00]
	movs r4, #0x03
	negs r4, r4
	adds r1, r4, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r5, r0
	ldrb r1, [r7, #0x01]
	ldr r2, _08026E2C @ =0x00000135
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r5, r0
	ldrb r1, [r7, #0x02]
	movs r4, #0x9B
	lsls r4, r4, #0x01
	adds r0, r0, r4
	strb r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r5
	mov r12, r0
	ldrb r1, [r7, #0x05]
	lsrs r0, r1, #0x01
	lsls r3, r0, #0x18
	lsrs r4, r3, #0x18
	ldrb r0, [r7, #0x03]
	movs r2, #0x7F
	ands r2, r0
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08026E30
	movs r0, #0x20
	negs r0, r0
	orrs r0, r4
	lsrs r0, r0, #0x03
	b _08026E32
_08026E28: .4byte 0x03000FC0
_08026E2C: .4byte 0x00000135
_08026E30:
	lsrs r0, r3, #0x1B
_08026E32:
	adds r0, r2, r0
	ldr r1, _08026E90 @ =0x00000137
	add r1, r12
	strb r0, [r1, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r5, r0
	movs r1, #0x9C
	lsls r1, r1, #0x01
	adds r0, r0, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	movs r4, #0x9E
	lsls r4, r4, #0x01
	adds r0, r5, r4
	adds r0, r0, r1
	str r7, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	adds r0, #0x01
	strb r0, [r6, #0x00]
_08026E66:
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r7, #0x08
	mov r1, r9
	cmp r1, #0x00
	beq _08026E80
	b _08026CB8
_08026E80:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08026E90: .4byte 0x00000137
