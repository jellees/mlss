	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804E6E0__11FieldClass1PP11FieldObjecti
sub_804E6E0__11FieldClass1PP11FieldObjecti:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	mov r12, r0
	adds r3, r1, #0x0
	str r2, [sp, #0x000]
	ldrh r0, [r0, #0x38]
	lsrs r0, r0, #0x01
	mov r2, r12
	ldr r1, [r2, #0x08]
	subs r1, r1, r0
	str r1, [sp, #0x004]
	ldr r4, [r2, #0x0C]
	str r4, [sp, #0x008]
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #0x14]
	adds r1, r1, r0
	str r1, [sp, #0x00C]
	movs r0, #0x00
	ldr r5, [sp, #0x000]
	cmp r0, r5
	blt _0804E714
	b _0804EA4C
_0804E714:
	ldm r3!, {r7}
	movs r1, #0x00
	str r1, [sp, #0x010]
	adds r0, #0x01
	str r0, [sp, #0x024]
	str r3, [sp, #0x020]
_0804E720:
	mov r2, r12
	ldr r0, [r2, #0x48]
	adds r0, #0x54
	adds r1, r7, #0x0
	adds r1, #0x54
	ldrb r0, [r0, #0x00]
	str r1, [sp, #0x01C]
	ldrb r4, [r1, #0x00]
	cmp r0, r4
	bne _0804E736
	b _0804EA08
_0804E736:
	movs r5, #0x83
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0804E748
	b _0804EA08
_0804E748:
	ldr r1, _0804E794 @ =0x00000216
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804E758
	b _0804EA08
_0804E758:
	ldr r2, _0804E798 @ =0x00000272
	adds r0, r7, r2
	ldrh r2, [r0, #0x00]
	ldr r4, _0804E79C @ =0x00000276
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	mov r10, r0
	adds r5, #0x68
	adds r0, r7, r5
	ldrh r4, [r0, #0x00]
	mov r0, r12
	ldrh r0, [r0, #0x3C]
	mov r8, r0
	mov r1, r12
	ldrh r3, [r1, #0x3A]
	lsrs r1, r2, #0x01
	ldr r0, [r7, #0x0C]
	subs r1, r0, r1
	mov r5, r12
	ldrh r5, [r5, #0x38]
	str r5, [sp, #0x028]
	mov r5, r8
	str r5, [sp, #0x02C]
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x004]
	cmp r1, r0
	bge _0804E7A0
	adds r0, r1, r2
	ldr r1, [sp, #0x004]
	b _0804E7A6
_0804E794: .4byte 0x00000216
_0804E798: .4byte 0x00000272
_0804E79C: .4byte 0x00000276
_0804E7A0:
	ldr r2, [sp, #0x004]
	ldr r5, [sp, #0x028]
	adds r0, r2, r5
_0804E7A6:
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0804E7AE
	b _0804EA08
_0804E7AE:
	ldr r0, [r7, #0x10]
	mov r9, r0
	mov r1, r9
	str r1, [sp, #0x014]
	ldr r2, [sp, #0x008]
	cmp r9, r2
	ble _0804E7C4
	mov r5, r10
	subs r0, r1, r5
	subs r0, r2, r0
	b _0804E7CE
_0804E7C4:
	ldr r1, [sp, #0x008]
	mov r2, r8
	subs r0, r1, r2
	mov r5, r9
	subs r0, r5, r0
_0804E7CE:
	cmp r0, #0x00
	bgt _0804E7D4
	b _0804EA08
_0804E7D4:
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	ldr r0, [sp, #0x00C]
	cmp r1, r0
	bgt _0804E7E6
	adds r0, r1, r4
	ldr r1, [sp, #0x00C]
	b _0804E7EA
_0804E7E6:
	ldr r2, [sp, #0x00C]
	adds r0, r2, r3
_0804E7EA:
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0804E7F2
	b _0804EA08
_0804E7F2:
	ldr r3, [r7, #0x34]
	mov r4, r8
	asrs r2, r4, #0x1F
	subs r0, r4, r2
	asrs r0, r0, #0x01
	mov r5, r12
	ldr r1, [r5, #0x1C]
	subs r5, r1, r0
	mov r0, r10
	lsrs r1, r0, #0x01
	ldr r0, [r7, #0x38]
	subs r4, r0, r1
	mov r1, r12
	ldr r6, [r1, #0x18]
	cmp r6, r3
	bne _0804E846
	cmp r5, r4
	bne _0804E846
	ldrb r1, [r1, #0x01]
	lsls r0, r1, #0x1A
	lsrs r0, r0, #0x1D
	adds r2, r1, #0x0
	cmp r0, #0x01
	bls _0804E840
	cmp r0, #0x02
	bhi _0804E82C
	movs r6, #0x08
	movs r4, #0x02
	b _0804E93E
_0804E82C:
	cmp r0, #0x05
	bhi _0804E836
	movs r6, #0x04
	movs r4, #0x01
	b _0804E93E
_0804E836:
	cmp r0, #0x06
	bhi _0804E840
	movs r6, #0x02
	movs r4, #0x08
	b _0804E93E
_0804E840:
	movs r6, #0x01
	movs r4, #0x04
	b _0804E93E
_0804E846:
	mov r0, r8
	add r0, r10
	asrs r1, r0, #0x01
	adds r0, r4, r1
	cmp r5, r0
	bge _0804E8D8
	subs r0, r4, r1
	cmp r5, r0
	ble _0804E8D8
	ldr r3, [sp, #0x018]
	cmp r6, r3
	bge _0804E89C
	movs r6, #0x02
	movs r4, #0x08
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0804E874
	b _0804E984
_0804E874:
	mov r5, r12
	ldrb r1, [r5, #0x01]
	movs r0, #0x80
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0804E93E
	ldr r1, _0804E898 @ =0x00000272
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	ldr r5, [sp, #0x028]
	adds r0, r5, r0
	asrs r0, r0, #0x01
	subs r0, r3, r0
	mov r1, r12
	str r0, [r1, #0x08]
	b _0804E93E
	.byte 0x00, 0x00
_0804E898: .4byte 0x00000272
_0804E89C:
	movs r6, #0x08
	movs r4, #0x02
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804E984
	mov r5, r12
	ldrb r1, [r5, #0x01]
	movs r0, #0x80
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0804E93E
	ldr r1, _0804E8D4 @ =0x00000272
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	ldr r5, [sp, #0x028]
	adds r0, r5, r0
	asrs r0, r0, #0x01
	ldr r1, [sp, #0x018]
	adds r0, r1, r0
	mov r5, r12
	str r0, [r5, #0x08]
	b _0804E93E
_0804E8D4: .4byte 0x00000272
_0804E8D8:
	mov r1, r8
	subs r0, r1, r2
	asrs r0, r0, #0x01
	ldr r2, [sp, #0x014]
	subs r0, r2, r0
	cmp r5, r0
	ble _0804E90E
	movs r6, #0x01
	movs r4, #0x04
	movs r5, #0x83
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804E984
	mov r0, r12
	ldrb r1, [r0, #0x01]
	movs r0, #0x80
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0804E93E
	ldr r0, [sp, #0x02C]
	add r0, r9
	b _0804E93A
_0804E90E:
	movs r6, #0x04
	movs r4, #0x01
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804E984
	mov r5, r12
	ldrb r1, [r5, #0x01]
	movs r0, #0x80
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0804E93E
	ldr r1, _0804EA5C @ =0x00000276
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	mov r5, r9
	subs r0, r5, r0
_0804E93A:
	mov r1, r12
	str r0, [r1, #0x0C]
_0804E93E:
	movs r5, #0x83
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804E984
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _0804E984
	mov r0, r12
	ldrb r2, [r0, #0x02]
	lsls r1, r2, #0x1C
	lsrs r1, r1, #0x1C
	orrs r1, r6
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x02]
	adds r3, r7, #0x0
	adds r3, #0x24
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	orrs r1, r4
	lsls r1, r1, #0x03
	movs r0, #0x79
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0804E984:
	mov r2, r12
	ldr r0, [r2, #0x48]
	movs r4, #0xD4
	lsls r4, r4, #0x02
	mov r8, r4
	adds r2, r0, r4
	ldrb r1, [r2, #0x00]
	movs r5, #0x0F
	mov r9, r5
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	beq _0804E9A6
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0804EA08
_0804E9A6:
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r12
	ldr r4, [r0, #0x48]
	ldr r1, [sp, #0x01C]
	ldrb r0, [r1, #0x00]
	movs r5, #0xCF
	lsls r5, r5, #0x02
	adds r4, r4, r5
	movs r1, #0x7F
	adds r2, r1, #0x0
	ands r2, r0
	ldrb r3, [r4, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x00]
	mov r2, r12
	ldr r0, [r2, #0x48]
	adds r0, r0, r5
	ldr r4, [sp, #0x010]
	lsls r3, r4, #0x07
	ldrb r2, [r0, #0x00]
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	mov r5, r12
	ldr r2, [r5, #0x48]
	add r2, r8
	ldrb r3, [r2, #0x00]
	lsls r1, r3, #0x1C
	lsrs r1, r1, #0x1C
	orrs r1, r6
	mov r0, r9
	ands r1, r0
	movs r0, #0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x48]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	ldr r2, _0804EA60 @ =0x00000342
	adds r1, r1, r2
	strb r0, [r1, #0x00]
_0804EA08:
	ldr r4, _0804EA64 @ =0x0000020E
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _0804EA40
	movs r5, #0xD1
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0804EA40
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804EA40
	adds r7, r3, #0x0
	ldr r2, [sp, #0x010]
	adds r2, #0x01
	str r2, [sp, #0x010]
	cmp r2, #0x01
	bgt _0804EA40
	b _0804E720
_0804EA40:
	ldr r0, [sp, #0x024]
	ldr r3, [sp, #0x020]
	ldr r4, [sp, #0x000]
	cmp r0, r4
	bge _0804EA4C
	b _0804E714
_0804EA4C:
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804EA5C: .4byte 0x00000276
_0804EA60: .4byte 0x00000342
_0804EA64: .4byte 0x0000020E
