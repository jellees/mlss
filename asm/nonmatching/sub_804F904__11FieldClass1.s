	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804F904__11FieldClass1
sub_804F904__11FieldClass1:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	ldr r1, [r7, #0x08]
	ldr r0, [r7, #0x18]
	cmp r1, r0
	bne _0804F932
	ldr r1, [r7, #0x0C]
	ldr r0, [r7, #0x1C]
	cmp r1, r0
	bne _0804F932
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x20]
	cmp r1, r0
	bne _0804F932
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x24]
	cmp r1, r0
	beq _0804FA1E
_0804F932:
	ldr r0, _0804F9D0 @ =0x00FFFFFF
	mov r10, r0
	movs r1, #0x00
	mov r9, r1
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x14]
	adds r1, r1, r0
	str r1, [sp, #0x01C]
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x08]
	ldr r2, [r7, #0x0C]
	add r3, sp, #0x014
	mov r8, r3
	str r3, [sp, #0x000]
	add r6, sp, #0x018
	str r6, [sp, #0x004]
	add r5, sp, #0x008
	movs r3, #0x01
	strb r3, [r5, #0x00]
	add r4, sp, #0x00C
	strb r3, [r4, #0x00]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	mov r12, r6
	adds r6, r4, #0x0
	cmp r0, #0x00
	blt _0804F972
	lsls r0, r1, #0x0C
	lsrs r0, r0, #0x1C
_0804F972:
	ldr r4, [sp, #0x010]
	ldr r0, [sp, #0x018]
	cmp r9, r0
	bge _0804F97C
	mov r9, r0
_0804F97C:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x08]
	ldr r2, _0804F9D4 @ =0xFFFFFF00
	adds r1, r1, r2
	ldrh r2, [r7, #0x32]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x0C]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r2, r3
	ldrh r3, [r7, #0x36]
	subs r2, r2, r3
	mov r3, r8
	str r3, [sp, #0x000]
	mov r3, r12
	str r3, [sp, #0x004]
	movs r3, #0x00
	strb r3, [r5, #0x00]
	movs r3, #0x01
	strb r3, [r6, #0x00]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	blt _0804F9B8
	cmp r10, r0
	ble _0804F9B8
	mov r10, r0
_0804F9B8:
	ldr r0, _0804F9D0 @ =0x00FFFFFF
	ldr r0, [sp, #0x01C]
	movs r1, #0x00
	mov r2, r9
	cmp r2, #0x00
	ble _0804F9DE
	cmp r4, r9
	blt _0804F9D8
	cmp r4, r0
	ble _0804F9DE
	b _0804F9E2
	.byte 0x00, 0x00
_0804F9D0: .4byte 0x00FFFFFF
_0804F9D4: .4byte 0xFFFFFF00
_0804F9D8:
	cmp r9, r0
	bgt _0804F9DE
	movs r1, #0x01
_0804F9DE:
	cmp r1, #0x00
	beq _0804F9FC
_0804F9E2:
	mov r3, r9
	subs r0, r0, r3
	str r0, [r7, #0x14]
	cmp r0, #0x00
	bge _0804F9F0
	movs r0, #0x00
	str r0, [r7, #0x14]
_0804F9F0:
	mov r0, r9
	str r0, [r7, #0x10]
	ldrb r0, [r7, #0x01]
	movs r1, #0x40
	orrs r0, r1
	b _0804FA1C
_0804F9FC:
	subs r0, r0, r4
	str r0, [r7, #0x14]
	cmp r0, #0x00
	bge _0804FA06
	str r1, [r7, #0x14]
_0804FA06:
	str r4, [r7, #0x10]
	ldr r0, [r7, #0x14]
	adds r0, r4, r0
	cmp r0, #0x00
	bge _0804FA14
	str r1, [r7, #0x14]
	str r1, [r7, #0x10]
_0804FA14:
	ldrb r1, [r7, #0x01]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
_0804FA1C:
	strb r0, [r7, #0x01]
_0804FA1E:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
