	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_802E854__12FieldManageri
sub_802E854__12FieldManageri:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r9, r0
	mov r8, r1
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r9
	ldr r0, [r4, #0x00]
	bl sub_804FC90__20FieldPlayerCharacter
	ldr r1, [r4, #0x00]
	mov r0, r9
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4__12FieldManagerP20FieldPlayerCharacteriP13struc_3000388
	movs r5, #0x80
	lsls r5, r5, #0x02
	add r5, r9
	ldr r1, [r5, #0x00]
	ldr r2, _0802E9A4 @ =0x00000351
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r3, #0x40
	mov r10, r3
	mov r4, r10
	orrs r0, r4
	strb r0, [r1, #0x00]
	movs r7, #0x81
	lsls r7, r7, #0x02
	add r7, r9
	ldr r1, [r7, #0x00]
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r2, [r5, #0x00]
	ldr r1, [r7, #0x00]
	ldr r3, _0802E9A8 @ =0x0000020D
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	strb r0, [r2, #0x00]
	mov r0, r8
	cmp r0, #0x00
	bne _0802E9B4
	ldr r2, [r5, #0x00]
	movs r4, #0x85
	lsls r4, r4, #0x02
	adds r2, r2, r4
	ldrb r3, [r2, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	movs r3, #0x02
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x00]
	adds r0, r0, r4
	ldrb r2, [r0, #0x00]
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	ldr r2, [r5, #0x00]
	ldr r0, [r7, #0x00]
	ldr r3, [r0, #0x0C]
	cmp r3, #0x00
	bge _0802E8F0
	adds r3, #0xFF
_0802E8F0:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _0802E8FA
	adds r0, #0xFF
_0802E8FA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	mov r4, r8
	str r4, [sp, #0x004]
	mov r6, r9
	adds r6, #0xFB
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r0, #0x80
	lsls r0, r0, #0x02
	asrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8045A94__11FieldObjectiiiiiUs
	ldr r1, [r5, #0x00]
	ldr r4, _0802E9AC @ =0x000002B6
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x80
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r2, [r7, #0x00]
	ldr r0, [r5, #0x00]
	ldr r3, [r0, #0x0C]
	cmp r3, #0x00
	bge _0802E948
	adds r3, #0xFF
_0802E948:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _0802E952
	adds r0, #0xFF
_0802E952:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	mov r0, r8
	str r0, [sp, #0x004]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r0, #0x80
	lsls r0, r0, #0x02
	asrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8045A94__11FieldObjectiiiiiUs
	ldr r1, [r7, #0x00]
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x00]
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x80
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r2, _0802E9B0 @ =0x00000209
	add r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	negs r0, r0
	ands r0, r1
	movs r4, #0x02
	orrs r0, r4
	strb r0, [r2, #0x00]
	b _0802E9E4
	.byte 0x00, 0x00
_0802E9A4: .4byte 0x00000351
_0802E9A8: .4byte 0x0000020D
_0802E9AC: .4byte 0x000002B6
_0802E9B0: .4byte 0x00000209
_0802E9B4:
	ldr r0, [r5, #0x00]
	ldr r5, [r0, #0x0C]
	ldr r6, [r0, #0x10]
	ldr r1, [r0, #0x14]
	mov r8, r1
	ldr r3, [r7, #0x00]
	ldr r1, [r3, #0x0C]
	ldr r2, [r3, #0x10]
	ldr r3, [r3, #0x14]
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	bl sub_8047F60__11FieldObjectiiiii
	ldr r0, [r7, #0x00]
	movs r1, #0x01
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	mov r3, r8
	bl sub_8047F60__11FieldObjectiiiii
_0802E9E4:
	mov r4, r9
	adds r4, #0xF8
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x07
	movs r2, #0x7F
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _0802EA36
	mov r3, r9
	adds r3, #0xFA
	ldrh r1, [r3, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1B
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	cmp r1, r0
	bne _0802EA36
	movs r0, #0x41
	negs r0, r0
	ands r2, r0
	strb r2, [r4, #0x00]
	ldrh r2, [r3, #0x00]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1B
	movs r0, #0x01
	eors r1, r0
	lsls r1, r1, #0x05
	ldr r0, _0802EA68 @ =0xFFFFFC1F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x00]
_0802EA36:
	movs r2, #0x82
	lsls r2, r2, #0x02
	add r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0802EA6C @ =0x00000209
	add r2, r9
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802EA68: .4byte 0xFFFFFC1F
_0802EA6C: .4byte 0x00000209
