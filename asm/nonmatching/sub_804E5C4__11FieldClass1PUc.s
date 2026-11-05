	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804E5C4__11FieldClass1PUc
sub_804E5C4__11FieldClass1PUc:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	ldrb r1, [r2, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x60
	bne _0804E6CC
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	bge _0804E5E6
	adds r0, #0xFF
_0804E5E6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _0804E5F2
	adds r0, #0xFF
_0804E5F2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #0x14]
	adds r1, r1, r0
	str r0, [sp, #0x01C]
	cmp r1, #0x00
	bge _0804E604
	adds r1, #0xFF
_0804E604:
	asrs r1, r1, #0x08
	str r1, [sp, #0x008]
	ldrh r0, [r2, #0x32]
	lsrs r0, r0, #0x08
	lsls r4, r0, #0x10
	ldrh r0, [r2, #0x36]
	lsrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldrb r0, [r3, #0x04]
	str r0, [sp, #0x010]
	ldrb r0, [r3, #0x06]
	lsls r0, r0, #0x08
	ldrb r1, [r3, #0x05]
	orrs r0, r1
	subs r2, r3, r0
	movs r1, #0x00
	str r1, [sp, #0x014]
	ldr r0, [sp, #0x010]
	cmp r1, r0
	bge _0804E6CC
	lsrs r4, r4, #0x11
	str r4, [sp, #0x018]
_0804E630:
	ldrb r0, [r2, #0x00]
	lsls r4, r0, #0x04
	ldrb r0, [r2, #0x02]
	lsls r0, r0, #0x04
	adds r7, r4, r0
	subs r5, r7, #0x1
	ldrb r0, [r2, #0x01]
	lsls r3, r0, #0x04
	ldrb r0, [r2, #0x03]
	lsls r0, r0, #0x04
	adds r6, r3, r0
	subs r1, r6, #0x1
	mov r12, r1
	ldrb r1, [r2, #0x04]
	movs r0, #0x7F
	ands r0, r1
	lsls r0, r0, #0x03
	mov r9, r0
	ldrb r0, [r2, #0x05]
	movs r1, #0x7F
	ands r1, r0
	movs r0, #0xFF
	lsls r0, r0, #0x03
	mov r8, r0
	cmp r1, #0x7F
	beq _0804E668
	lsls r1, r1, #0x03
	mov r8, r1
_0804E668:
	mov r1, r9
	add r1, r8
	mov r10, r1
	ldrb r1, [r2, #0x06]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0804E68A
	ldr r0, [sp, #0x018]
	subs r4, r4, r0
	adds r5, r5, r0
	subs r3, #0x01
	subs r0, r6, #0x2
	ldr r1, [sp, #0x00C]
	adds r0, r0, r1
	mov r12, r0
	b _0804E690
_0804E68A:
	adds r4, #0x04
	subs r5, r7, #0x5
	adds r3, #0x07
_0804E690:
	ldr r0, [sp, #0x000]
	cmp r0, r4
	blt _0804E6BE
	cmp r0, r5
	bgt _0804E6BE
	ldr r1, [sp, #0x004]
	cmp r1, r3
	blt _0804E6BE
	cmp r1, r12
	bgt _0804E6BE
	ldr r0, [sp, #0x008]
	cmp r0, r9
	blt _0804E6BE
	cmp r0, r10
	bgt _0804E6BE
	mov r1, r8
	cmp r1, #0x00
	bne _0804E6BA
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	bne _0804E6BE
_0804E6BA:
	adds r0, r2, #0x0
	b _0804E6CE
_0804E6BE:
	ldr r1, [sp, #0x014]
	adds r1, #0x01
	str r1, [sp, #0x014]
	adds r2, #0x0B
	ldr r0, [sp, #0x010]
	cmp r1, r0
	blt _0804E630
_0804E6CC:
	movs r0, #0x00
_0804E6CE:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
