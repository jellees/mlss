	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_8020A78
sub_8020A78:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	ldr r0, _08020B80 @ =0x0203FFB8
	mov r8, r0
	ldr r4, [r0, #0x30]
	movs r0, #0x00
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r1, _08020B84 @ =0x03000D50
	mov r2, r8
	ldr r0, [r2, #0x3C]
	ldr r2, [r1, #0x00]
	movs r1, #0x82
	bl _call_via_r2
	cmp r4, #0x00
	bne _08020AA4
	b _08020CAC
_08020AA4:
	mov r3, r8
	ldrh r3, [r3, #0x08]
	mov r10, r3
	mov r0, r8
	ldrb r0, [r0, #0x06]
	str r0, [sp, #0x000]
	mov r1, r8
	ldr r0, [r1, #0x3C]
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x004]
_08020AB8:
	adds r2, r4, #0x0
	adds r2, #0x29
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	bne _08020ACA
	b _08020C9E
_08020ACA:
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08020BB2
	ldr r3, [r2, #0x30]
	ldrb r0, [r4, #0x10]
	mov r9, r0
	adds r2, #0x02
	str r2, [sp, #0x008]
	cmp r3, r4
	beq _08020B5C
	movs r1, #0x0F
	mov r12, r1
	ldr r7, _08020B88 @ =0x0000FFFF
	movs r6, #0xC0
_08020AEC:
	ldrb r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08020B52
	ldrb r0, [r3, #0x1E]
	ldrb r2, [r4, #0x1E]
	mov r1, r12
	ands r1, r0
	mov r0, r12
	ands r0, r2
	cmp r1, r0
	bne _08020B52
	ldrh r0, [r3, #0x1A]
	ldrh r2, [r4, #0x1A]
	adds r1, r7, #0x0
	ands r1, r0
	adds r0, r7, #0x0
	ands r0, r2
	cmp r1, r0
	bne _08020B52
	adds r0, r3, #0x0
	adds r0, #0x22
	adds r1, r4, #0x0
	adds r1, #0x22
	ldrb r0, [r0, #0x00]
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bne _08020B52
	ldr r1, [r3, #0x04]
	ldr r0, [r4, #0x04]
	cmp r1, r0
	bne _08020B52
	ldr r1, [r3, #0x08]
	ldr r0, [r4, #0x08]
	cmp r1, r0
	bne _08020B52
	movs r2, #0x0C
	ldsh r1, [r3, r2]
	movs r2, #0x0C
	ldsh r0, [r4, r2]
	cmp r1, r0
	bne _08020B52
	ldrb r0, [r3, #0x11]
	ldrb r2, [r4, #0x11]
	adds r1, r6, #0x0
	ands r1, r0
	adds r0, r6, #0x0
	ands r0, r2
	cmp r1, r0
	beq _08020B62
_08020B52:
	ldr r3, [r3, #0x68]
	cmp r3, #0x00
	beq _08020B5C
	cmp r3, r4
	bne _08020AEC
_08020B5C:
	movs r0, #0x00
	cmp r0, #0x00
	beq _08020B8C
_08020B62:
	ldrb r0, [r3, #0x10]
	movs r1, #0x3E
	ands r1, r0
	movs r2, #0x3F
	negs r2, r2
	adds r0, r2, #0x0
	mov r3, r9
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r5, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r5, #0x00]
	b _08020BDA
_08020B80: .4byte 0x0203FFB8
_08020B84: .4byte 0x03000D50
_08020B88: .4byte 0x0000FFFF
_08020B8C:
	movs r0, #0x1F
	ldr r1, [sp, #0x000]
	ands r1, r0
	lsls r1, r1, #0x01
	movs r2, #0x3F
	negs r2, r2
	adds r0, r2, #0x0
	mov r3, r9
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r5, #0x00]
	adds r2, #0x36
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r5, #0x00]
	b _08020BDA
_08020BAE:
	movs r7, #0x01
	b _08020C44
_08020BB2:
	movs r0, #0x1F
	ldr r2, [sp, #0x000]
	ands r2, r0
	lsls r2, r2, #0x01
	ldrb r0, [r4, #0x10]
	movs r3, #0x3F
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x10]
	ldrb r0, [r5, #0x00]
	movs r2, #0x09
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r5, #0x00]
	mov r3, r8
	adds r3, #0x02
	str r3, [sp, #0x008]
_08020BDA:
	movs r7, #0x00
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	beq _08020C6E
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08020C5E
	mov r1, r8
	ldr r3, [r1, #0x30]
	cmp r3, r4
	beq _08020C40
	movs r6, #0x0F
	movs r2, #0x22
	adds r2, r2, r4
	mov r12, r2
_08020BFE:
	ldr r0, [r3, #0x48]
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08020C36
	ldrb r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08020C36
	ldrb r0, [r3, #0x1E]
	ldrb r2, [r4, #0x1E]
	adds r1, r6, #0x0
	ands r1, r0
	adds r0, r6, #0x0
	ands r0, r2
	cmp r1, r0
	bne _08020C36
	ldr r1, [r3, #0x18]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bne _08020C36
	adds r0, r3, #0x0
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	mov r1, r12
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	beq _08020BAE
_08020C36:
	ldr r3, [r3, #0x68]
	cmp r3, #0x00
	beq _08020C40
	cmp r3, r4
	bne _08020BFE
_08020C40:
	cmp r7, #0x00
	beq _08020C50
_08020C44:
	ldrh r0, [r3, #0x2E]
	strh r0, [r4, #0x2E]
	ldrb r0, [r5, #0x00]
	movs r1, #0x04
	orrs r0, r1
	b _08020C6C
_08020C50:
	mov r2, r10
	strh r2, [r4, #0x2E]
	ldrb r0, [r5, #0x00]
	movs r3, #0x05
	negs r3, r3
	adds r1, r3, #0x0
	b _08020C6A
_08020C5E:
	mov r0, r10
	strh r0, [r4, #0x2E]
	ldrb r0, [r5, #0x00]
	movs r2, #0x05
	negs r2, r2
	adds r1, r2, #0x0
_08020C6A:
	ands r0, r1
_08020C6C:
	strb r0, [r5, #0x00]
_08020C6E:
	adds r0, r4, #0x0
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x008]
	bl sub_801E80C
	str r0, [sp, #0x004]
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1C
	ldr r3, [sp, #0x000]
	adds r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	beq _08020C9E
	cmp r7, #0x00
	bne _08020C9E
	ldrh r0, [r4, #0x30]
	add r0, r10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_08020C9E:
	ldr r4, [r4, #0x68]
	cmp r4, #0x00
	beq _08020CA6
	b _08020AB8
_08020CA6:
	ldr r0, [sp, #0x004]
	mov r1, r8
	str r0, [r1, #0x38]
_08020CAC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
