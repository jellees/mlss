	thumb_func_start sub_802A740__12FieldManager
sub_802A740__12FieldManager:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	ldr r0, _0802A79C @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _0802A7A0 @ =0x000002A2
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802A7A4
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	movs r4, #0xDA
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x16]
	movs r5, #0x7F
	movs r1, #0x80
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	orrs r0, r5
	strb r0, [r3, #0x16]
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	adds r0, r0, r4
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x16]
	ands r1, r0
	orrs r1, r5
	b _0802A7D0
	.byte 0x00, 0x00
_0802A79C: .4byte 0x03000FC0
_0802A7A0: .4byte 0x000002A2
_0802A7A4:
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r0, [r0, #0x00]
	movs r4, #0xDA
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x16]
	movs r1, #0x80
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r3, #0x16]
	movs r5, #0x81
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r0, [r0, #0x00]
	adds r0, r0, r4
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x16]
	ands r1, r0
_0802A7D0:
	strb r1, [r2, #0x16]
	movs r7, #0xAE
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldrb r1, [r0, #0x00]
	lsrs r0, r1, #0x04
	str r0, [sp, #0x004]
	movs r0, #0x01
	ldr r2, [sp, #0x004]
	ands r2, r0
	str r2, [sp, #0x004]
	movs r3, #0x95
	lsls r3, r3, #0x01
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	movs r4, #0xFB
	adds r4, r4, r6
	mov r10, r4
	cmp r0, #0x00
	beq _0802A8DE
	movs r5, #0x10
	mov r8, r5
	mov r0, r8
	ands r0, r1
	adds r5, r6, #0x0
	adds r5, #0x28
	cmp r0, #0x00
	beq _0802A894
	adds r0, r6, #0x0
	bl sub_802F498__12FieldManager
	subs r7, #0xB8
	adds r0, r6, r7
	ldr r2, [r0, #0x00]
	ldr r4, _0802A974 @ =0x00000353
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r7, #0x02
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802A83A
	mov r0, r10
	ldrb r3, [r0, #0x00]
	lsrs r3, r3, #0x02
	movs r0, #0x01
	eors r3, r0
	ands r3, r0
	adds r0, r2, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_804FB64__20FieldPlayerCharacterPP11FieldObjectUcUc
_0802A83A:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x00
	beq _0802A874
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802A874
	mov r4, r10
	ldrb r3, [r4, #0x00]
	lsrs r3, r3, #0x02
	movs r0, #0x01
	eors r3, r0
	ands r3, r0
	adds r0, r2, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_804FB64__20FieldPlayerCharacterPP11FieldObjectUcUc
_0802A874:
	movs r7, #0x81
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	bge _0802A894
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bne _0802A894
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x18]
	str r0, [r1, #0x18]
_0802A894:
	movs r4, #0x02
	ldr r3, _0802A978 @ =0x0000010B
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	cmp r4, r0
	bge _0802A8C2
	mov r8, r5
	movs r7, #0x08
	adds r7, r7, r5
	mov r9, r7
	adds r7, r6, r3
_0802A8AA:
	mov r1, r9
	adds r1, #0x04
	mov r9, r1
	subs r1, #0x04
	ldm r1!, {r0}
	mov r1, r8
	bl sub_80418E8__11FieldObjectPP11FieldObject
	adds r4, #0x01
	ldrb r2, [r7, #0x00]
	cmp r4, r2
	blt _0802A8AA
_0802A8C2:
	adds r0, r6, #0x0
	bl sub_802563C__12FieldManager
	adds r0, r6, #0x0
	bl sub_8025ACC__12FieldManager
	ldr r0, [r5, #0x00]
	adds r1, r5, #0x0
	bl sub_80418E8__11FieldObjectPP11FieldObject
	ldr r0, [r5, #0x04]
	adds r1, r5, #0x0
	bl sub_80418E8__11FieldObjectPP11FieldObject
_0802A8DE:
	mov r3, r10
	ldrb r1, [r3, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0802A8EC
	b _0802AA38
_0802A8EC:
	movs r7, #0x80
	lsls r7, r7, #0x02
	adds r5, r6, r7
	ldr r2, [r5, #0x00]
	ldr r4, _0802A97C @ =0x000002B5
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r4, #0x0F
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802A906
	b _0802AA38
_0802A906:
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r3, r6, r0
	ldr r0, [r3, #0x00]
	ldr r1, _0802A97C @ =0x000002B5
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802A91E
	b _0802AA38
_0802A91E:
	movs r4, #0x04
	ldsh r0, [r2, r4]
	cmp r0, #0x01
	bgt _0802A936
	movs r0, #0xD7
	lsls r0, r0, #0x02
	adds r1, r2, r0
	ldr r0, [r2, #0x14]
	movs r2, #0xF0
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x00]
_0802A936:
	ldr r2, [r3, #0x00]
	movs r4, #0x04
	ldsh r0, [r2, r4]
	cmp r0, #0x01
	bgt _0802A950
	movs r0, #0xD7
	lsls r0, r0, #0x02
	adds r1, r2, r0
	ldr r0, [r2, #0x14]
	movs r2, #0xF0
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x00]
_0802A950:
	ldr r2, [r5, #0x00]
	movs r4, #0x04
	ldsh r0, [r2, r4]
	cmp r0, #0x04
	bne _0802A980
	ldr r0, [r3, #0x00]
	movs r5, #0x04
	ldsh r0, [r0, r5]
	cmp r0, #0x04
	bne _0802A980
	movs r1, #0x98
	lsls r1, r1, #0x02
	adds r0, r2, r1
	strh r7, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	strh r7, [r0, #0x00]
	b _0802A9B8
_0802A974: .4byte 0x00000353
_0802A978: .4byte 0x0000010B
_0802A97C: .4byte 0x000002B5
_0802A980:
	movs r7, #0x80
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r1, [r0, #0x00]
	movs r2, #0x04
	ldsh r0, [r1, r2]
	cmp r0, #0x01
	ble _0802A9A0
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	movs r4, #0x04
	ldsh r0, [r0, r4]
	cmp r0, #0x01
	bgt _0802A9B8
_0802A9A0:
	movs r2, #0x98
	lsls r2, r2, #0x02
	adds r0, r1, r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	movs r5, #0x81
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	strh r1, [r0, #0x00]
_0802A9B8:
	movs r7, #0x80
	lsls r7, r7, #0x02
	adds r3, r6, r7
	ldr r0, [r3, #0x00]
	ldr r1, _0802A9F8 @ =0x0000023E
	mov r8, r1
	adds r1, r0, r1
	movs r5, #0x98
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldrh r4, [r1, #0x00]
	movs r7, #0x00
	ldsh r2, [r1, r7]
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r2, r0
	bge _0802A9FC
	adds r0, r4, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldr r1, _0802A9F8 @ =0x0000023E
	adds r2, r0, r1
	adds r0, r0, r5
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _0802AA1E
	b _0802AA1C
_0802A9F8: .4byte 0x0000023E
_0802A9FC:
	cmp r2, r0
	ble _0802AA1E
	adds r0, r4, #0x0
	subs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	mov r7, r8
	adds r2, r0, r7
	adds r0, r0, r5
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _0802AA1E
_0802AA1C:
	strh r3, [r2, #0x00]
_0802AA1E:
	movs r5, #0x81
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r1, [r0, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r0, [r0, #0x00]
	ldr r2, _0802AA84 @ =0x0000023E
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	adds r1, r1, r2
	strh r0, [r1, #0x00]
_0802AA38:
	movs r1, #0x95
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	subs r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x04
	bls _0802AA64
	adds r0, r1, #0x0
	cmp r0, #0x0A
	beq _0802AA64
	cmp r0, #0x0B
	beq _0802AA64
	cmp r0, #0x0C
	beq _0802AA64
	cmp r0, #0x0D
	beq _0802AA64
	cmp r0, #0x0E
	beq _0802AA64
	bl _0802B57C
_0802AA64:
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	subs r0, #0x05
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x43
	bls _0802AA7A
	b _0802ABAC
_0802AA7A:
	lsls r0, r0, #0x02
	ldr r1, _0802AA88 @ =0x0802AA8C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0802AA84: .4byte 0x0000023E
_0802AA88: .4byte 0x0802AA8C
	.byte 0x9C, 0xAB, 0x02, 0x08, 0x9C, 0xAB, 0x02, 0x08, 0x9C, 0xAB, 0x02, 0x08, 0x9C, 0xAB, 0x02, 0x08
	.byte 0x9C, 0xAB, 0x02, 0x08, 0x9C, 0xAB, 0x02, 0x08, 0x9C, 0xAB, 0x02, 0x08, 0x9C, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0x9C, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0x9C, 0xAB, 0x02, 0x08, 0x9C, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08, 0xAC, 0xAB, 0x02, 0x08
	.byte 0xAC, 0xAB, 0x02, 0x08, 0x9C, 0xAB, 0x02, 0x08, 0x9C, 0xAB, 0x02, 0x08, 0x9C, 0xAB, 0x02, 0x08
	.byte 0x80, 0x23, 0x9B, 0x00, 0xF0, 0x18, 0x01, 0x68, 0x30, 0x1C, 0x01, 0xF0, 0xE5, 0xFD, 0x64, 0xE0
_0802ABAC:
	adds r0, r6, #0x0
	adds r0, #0xD0
	ldr r1, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_802C068__12FieldManagerP13struc_3000388
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r3, [r0, #0x00]
	ldrh r0, [r3, #0x04]
	subs r0, #0x03
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bhi _0802ABEE
	mov r5, r10
	ldrb r1, [r5, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r2, #0x00
	cmp r0, #0x00
	beq _0802ABDC
	ldr r2, _0802AD0C @ =0xFFFFFE00
_0802ABDC:
	cmp r2, #0x00
	beq _0802ABEE
	movs r7, #0x96
	lsls r7, r7, #0x02
	adds r1, r3, r7
	ldr r0, [r1, #0x00]
	cmp r0, r2
	bge _0802ABEE
	str r2, [r1, #0x00]
_0802ABEE:
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r0, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x28
	bl sub_804FE68
	ldr r2, [r4, #0x00]
	movs r1, #0x04
	ldsh r0, [r2, r1]
	cmp r0, #0x04
	bne _0802AC76
	ldr r3, _0802AD10 @ =0x000002B5
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _0802AC76
	subs r3, #0xA1
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x04
	bne _0802AC58
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0802AC58
	ldr r7, _0802AD14 @ =0x00000355
	adds r1, r2, r7
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802AC58
	ldr r2, [r4, #0x00]
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0802AC58:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	ldr r3, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r0, r3, r0
	movs r4, #0xD7
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	ble _0802AC76
	subs r0, r1, r3
	str r0, [r2, #0x18]
_0802AC76:
	movs r5, #0xAE
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802AC94
	movs r7, #0x80
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r1, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_802B654__12FieldManagerP20FieldPlayerCharacter
_0802AC94:
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r2, [r4, #0x00]
	ldr r1, _0802AD18 @ =0x0000035B
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0802AD60
	movs r3, #0x04
	ldsh r0, [r2, r3]
	cmp r0, #0x04
	bgt _0802AD60
	adds r0, r6, #0x0
	adds r1, r2, #0x0
	bl sub_80261C0__12FieldManagerP11FieldObject
	adds r5, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	beq _0802AD3C
	ldr r3, [r4, #0x00]
	movs r4, #0xDB
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0802ACDE
	ldrh r0, [r2, #0x16]
	cmp r0, #0x54
	beq _0802ACEE
_0802ACDE:
	adds r0, r3, #0x0
	bl sub_80497A8__20FieldPlayerCharacter
	movs r0, #0x00
	movs r1, #0x1E
	movs r2, #0x00
	bl sub_801ABE8
_0802ACEE:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0x00
	beq _0802AD1C
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r3, r6, r5
	ldr r0, [r3, #0x00]
	movs r2, #0xDB
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0xB3
	b _0802AD30
	.byte 0x00, 0x00
_0802AD0C: .4byte 0xFFFFFE00
_0802AD10: .4byte 0x000002B5
_0802AD14: .4byte 0x00000355
_0802AD18: .4byte 0x0000035B
_0802AD1C:
	movs r7, #0x80
	lsls r7, r7, #0x02
	adds r3, r6, r7
	ldr r0, [r3, #0x00]
	movs r2, #0xDB
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
_0802AD30:
	strh r1, [r0, #0x04]
	ldr r0, [r3, #0x00]
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	strh r1, [r0, #0x06]
	b _0802AD60
_0802AD3C:
	ldr r0, [r4, #0x00]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0802AD60
	ldrh r0, [r2, #0x16]
	cmp r0, #0x54
	bne _0802AD60
	adds r0, r2, #0x0
	bl sub_8020D40
	bl sub_801AD3C
_0802AD60:
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r5, r6, r2
	ldr r1, [r5, #0x00]
	adds r0, r6, #0x0
	bl sub_803C7D8__12FieldManagerP20FieldPlayerCharacter
	movs r3, #0xAE
	lsls r3, r3, #0x02
	adds r4, r6, r3
	ldrb r1, [r4, #0x00]
	movs r7, #0x10
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802ADCA
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _0802AD8C
	adds r0, r6, #0x0
	bl sub_802E2F4__12FieldManager
_0802AD8C:
	ldrb r1, [r4, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802ADCA
	ldr r2, [r5, #0x00]
	ldr r1, _0802AE18 @ =0x00000353
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0802ADCA
	movs r3, #0x97
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0802ADCA
	ldr r4, _0802AE1C @ =0x000002B5
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	bne _0802ADCA
	adds r0, r2, #0x0
	bl sub_804FC30__20FieldPlayerCharacter
_0802ADCA:
	movs r5, #0x82
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802AE32
	movs r7, #0x81
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r2, [r0, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0802AE32
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r3, [r0, #0x00]
	movs r4, #0x04
	ldsh r0, [r2, r4]
	cmp r0, #0x01
	bne _0802AE20
	adds r5, #0x36
	adds r0, r2, r5
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _0802AE12
	adds r0, #0x1F
_0802AE12:
	lsrs r1, r0, #0x05
	b _0802AE26
	.byte 0x00, 0x00
_0802AE18: .4byte 0x00000353
_0802AE1C: .4byte 0x000002B5
_0802AE20:
	mov r1, r10
	ldrb r0, [r1, #0x00]
	lsrs r1, r0, #0x03
_0802AE26:
	adds r0, r3, #0x0
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r3, _0802AE54 @ =0x00000239
	adds r0, r2, r3
	strb r1, [r0, #0x00]
_0802AE32:
	movs r4, #0x81
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	subs r0, #0x05
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x43
	bls _0802AE48
	b _0802AF7C
_0802AE48:
	lsls r0, r0, #0x02
	ldr r1, _0802AE58 @ =0x0802AE5C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0802AE54: .4byte 0x00000239
_0802AE58: .4byte 0x0802AE5C
	.byte 0x6C, 0xAF, 0x02, 0x08, 0x6C, 0xAF, 0x02, 0x08, 0x6C, 0xAF, 0x02, 0x08, 0x6C, 0xAF, 0x02, 0x08
	.byte 0x6C, 0xAF, 0x02, 0x08, 0x6C, 0xAF, 0x02, 0x08, 0x6C, 0xAF, 0x02, 0x08, 0x6C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x6C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x6C, 0xAF, 0x02, 0x08, 0x6C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08, 0x7C, 0xAF, 0x02, 0x08
	.byte 0x7C, 0xAF, 0x02, 0x08, 0x6C, 0xAF, 0x02, 0x08, 0x6C, 0xAF, 0x02, 0x08, 0x6C, 0xAF, 0x02, 0x08
	.byte 0x81, 0x25, 0xAD, 0x00, 0x70, 0x19, 0x01, 0x68, 0x30, 0x1C, 0x01, 0xF0, 0xFD, 0xFB, 0x61, 0xE0
_0802AF7C:
	adds r0, r6, #0x0
	bl sub_802C208__12FieldManager
	movs r7, #0x81
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r3, [r0, #0x00]
	ldrh r0, [r3, #0x04]
	subs r0, #0x03
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bhi _0802AFB8
	mov r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r2, #0x00
	cmp r0, #0x00
	beq _0802AFA6
	ldr r2, _0802B0A4 @ =0xFFFFFE00
_0802AFA6:
	cmp r2, #0x00
	beq _0802AFB8
	movs r4, #0x96
	lsls r4, r4, #0x02
	adds r1, r3, r4
	ldr r0, [r1, #0x00]
	cmp r0, r2
	bge _0802AFB8
	str r2, [r1, #0x00]
_0802AFB8:
	movs r5, #0x81
	lsls r5, r5, #0x02
	adds r4, r6, r5
	ldr r0, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x28
	bl sub_804FE68
	ldr r2, [r4, #0x00]
	movs r7, #0x04
	ldsh r0, [r2, r7]
	cmp r0, #0x04
	bne _0802B040
	ldr r1, _0802B0A8 @ =0x000002B5
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _0802B040
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x04
	bne _0802B022
	adds r5, #0x90
	adds r0, r2, r5
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0802B022
	ldr r7, _0802B0AC @ =0x00000355
	adds r1, r2, r7
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802B022
	ldr r2, [r4, #0x00]
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0802B022:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	ldr r3, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r0, r3, r0
	movs r4, #0xD7
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	ble _0802B040
	subs r0, r1, r3
	str r0, [r2, #0x18]
_0802B040:
	movs r5, #0x82
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldrb r4, [r0, #0x00]
	movs r5, #0x10
	adds r0, r5, #0x0
	ands r0, r4
	cmp r0, #0x00
	bne _0802B0B4
	movs r7, #0x81
	lsls r7, r7, #0x02
	adds r4, r6, r7
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_802B654__12FieldManagerP20FieldPlayerCharacter
	movs r1, #0xAE
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802B086
	ldr r2, [r4, #0x00]
	ldr r3, _0802B0B0 @ =0x00000353
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0802B086
	adds r0, r2, #0x0
	bl sub_804FC30__20FieldPlayerCharacter
_0802B086:
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r1, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_803C834__12FieldManagerP20FieldPlayerCharacter
	movs r5, #0x81
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r1, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_803C834__12FieldManagerP20FieldPlayerCharacter
	b _0802B37C
_0802B0A4: .4byte 0xFFFFFE00
_0802B0A8: .4byte 0x000002B5
_0802B0AC: .4byte 0x00000355
_0802B0B0: .4byte 0x00000353
_0802B0B4:
	movs r7, #0xAE
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802B0C6
	b _0802B37C
_0802B0C6:
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r3, [r5, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0802B100
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r2, [r0, #0x00]
	adds r2, #0x60
	movs r7, #0x00
	ldsh r0, [r2, r7]
	adds r0, r3, r0
	movs r1, #0x04
	ands r1, r4
	adds r1, #0x28
	adds r1, r6, r1
	ldr r4, [r2, #0x04]
	movs r2, #0x01
	movs r3, #0x00
	bl _call_via_r4
_0802B100:
	ldr r1, _0802B464 @ =0x00000246
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x0C
	bne _0802B142
	movs r3, #0x87
	lsls r3, r3, #0x01
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	beq _0802B142
	ldr r0, [r5, #0x00]
	movs r4, #0xCE
	lsls r4, r4, #0x02
	adds r1, r0, r4
	ldr r3, [r1, #0x00]
	adds r3, #0x60
	movs r5, #0x00
	ldsh r1, [r3, r5]
	adds r0, r0, r1
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r7, _0802B468 @ =0x0000010F
	adds r2, r6, r7
	ldrb r2, [r2, #0x00]
	ldr r4, [r3, #0x04]
	movs r3, #0x00
	bl _call_via_r4
_0802B142:
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	beq _0802B17C
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	movs r3, #0xCE
	lsls r3, r3, #0x02
	adds r1, r0, r3
	ldr r3, [r1, #0x00]
	adds r3, #0x60
	movs r4, #0x00
	ldsh r1, [r3, r4]
	adds r0, r0, r1
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r5, _0802B46C @ =0x00000111
	adds r2, r6, r5
	ldrb r2, [r2, #0x00]
	ldr r4, [r3, #0x04]
	movs r3, #0x00
	bl _call_via_r4
_0802B17C:
	movs r7, #0x8A
	lsls r7, r7, #0x01
	adds r1, r6, r7
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0802B1A2
	movs r0, #0x8B
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0802B1A2
	movs r2, #0x8D
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	movs r4, #0x00
	cmp r0, #0x00
	beq _0802B1A4
_0802B1A2:
	adds r4, r0, #0x0
_0802B1A4:
	cmp r4, #0x00
	ble _0802B1D6
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	movs r5, #0xCE
	lsls r5, r5, #0x02
	adds r1, r0, r5
	ldr r3, [r1, #0x00]
	adds r3, #0x60
	movs r7, #0x00
	ldsh r1, [r3, r7]
	adds r0, r0, r1
	lsls r1, r4, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r5, _0802B470 @ =0x0000010B
	adds r2, r6, r5
	ldrb r2, [r2, #0x00]
	subs r2, r2, r4
	ldr r4, [r3, #0x04]
	movs r3, #0x00
	bl _call_via_r4
_0802B1D6:
	movs r7, #0x81
	lsls r7, r7, #0x02
	adds r4, r6, r7
	ldr r2, [r4, #0x00]
	ldr r1, _0802B474 @ =0x000002B5
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0802B216
	movs r3, #0x97
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0802B216
	adds r0, r2, #0x0
	bl sub_8046A10__11FieldObject
	ldr r1, [r4, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r0, [r0, #0x00]
	ldr r2, _0802B478 @ =0x0000023E
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	adds r1, r1, r2
	strh r0, [r1, #0x00]
_0802B216:
	movs r5, #0x81
	lsls r5, r5, #0x02
	adds r4, r6, r5
	ldr r0, [r4, #0x00]
	movs r7, #0xCE
	lsls r7, r7, #0x02
	adds r1, r0, r7
	ldr r1, [r1, #0x00]
	adds r1, #0x68
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	adds r0, r6, #0x0
	bl sub_802BD2C__12FieldManager
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x00
	movs r3, #0x00
	bl sub_804FB64__20FieldPlayerCharacterPP11FieldObjectUcUc
	subs r5, #0x04
	adds r0, r6, r5
	ldr r5, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x26
	ldrb r1, [r0, #0x00]
	movs r3, #0x0C
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802B2A0
	ldr r2, [r4, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x26
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802B2A0
	adds r0, r5, #0x0
	adds r0, #0x4E
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x0C
	beq _0802B28E
	adds r0, r2, #0x0
	adds r0, #0x4E
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x0C
	bne _0802B2A0
_0802B28E:
	ldr r0, [r2, #0x34]
	str r0, [r2, #0x0C]
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x38]
	str r0, [r1, #0x10]
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_802DF80
_0802B2A0:
	adds r0, r6, #0x0
	bl sub_802A4E8__12FieldManager
	cmp r7, #0x00
	beq _0802B2B6
	movs r7, #0x81
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r1, [r0, #0x00]
	movs r0, #0x00
	str r0, [r1, #0x18]
_0802B2B6:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0802B30C
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	bne _0802B2E4
	ldr r2, [r1, #0x18]
	cmp r2, #0x00
	ble _0802B2E4
	ldr r0, [r1, #0x14]
	adds r0, r0, r2
	ldr r1, [r1, #0x3C]
	cmp r0, r1
	ble _0802B2FC
_0802B2E4:
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r1, [r0, #0x00]
	movs r4, #0x81
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x14]
	ldr r0, [r0, #0x14]
	cmp r1, r0
	bne _0802B30C
_0802B2FC:
	movs r5, #0x82
	lsls r5, r5, #0x02
	adds r2, r6, r5
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0802B30C:
	movs r7, #0x82
	lsls r7, r7, #0x02
	adds r5, r6, r7
	ldrb r1, [r5, #0x00]
	movs r2, #0x10
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802B36E
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	ldr r3, _0802B47C @ =0x00000359
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802B36E
	subs r7, #0x04
	adds r0, r6, r7
	ldr r3, [r0, #0x00]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0802B36E
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r2, r2, r0
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x18]
	adds r0, r0, r1
	cmp r2, r0
	bge _0802B36E
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	bl sub_8047C18__11FieldObjectP11FieldObject
	cmp r0, #0x00
	beq _0802B36E
	ldrb r0, [r5, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #0x00]
_0802B36E:
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r1, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_803C834__12FieldManagerP20FieldPlayerCharacter
_0802B37C:
	adds r0, r6, #0x0
	adds r0, #0xF9
	ldrb r1, [r0, #0x00]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	bne _0802B3B8
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r1, [r0, #0x00]
	ldr r4, _0802B480 @ =0x00000209
	adds r5, r6, r4
	ldrb r0, [r5, #0x00]
	movs r4, #0x01
	adds r2, r4, #0x0
	ands r2, r0
	adds r0, r6, #0x0
	bl sub_802B804__12FieldManagerP20FieldPlayerCharacterUc
	movs r7, #0x81
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r1, [r0, #0x00]
	ldrb r0, [r5, #0x00]
	ands r4, r0
	adds r0, r6, #0x0
	adds r2, r4, #0x0
	bl sub_802B804__12FieldManagerP20FieldPlayerCharacterUc
_0802B3B8:
	movs r1, #0x95
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _0802B3C6
	b _0802B518
_0802B3C6:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r2, r2, r6
	mov r9, r2
	ldrb r1, [r2, #0x00]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0x08
	beq _0802B3DA
	b _0802B518
_0802B3DA:
	ldr r3, _0802B464 @ =0x00000246
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x0C
	bne _0802B3EA
	b _0802B518
_0802B3EA:
	movs r4, #0x81
	lsls r4, r4, #0x02
	adds r4, r4, r6
	mov r8, r4
	ldr r0, [r4, #0x00]
	bl sub_804D0EC__20FieldPlayerCharacter
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802B400
	b _0802B518
_0802B400:
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r7, r6, r5
	ldr r3, [r7, #0x00]
	ldr r5, [r3, #0x18]
	cmp r5, #0x00
	beq _0802B41C
	movs r1, #0x01
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0802B41C
	b _0802B518
_0802B41C:
	mov r0, r8
	ldr r2, [r0, #0x00]
	ldr r4, [r2, #0x18]
	cmp r4, #0x00
	beq _0802B432
	movs r1, #0x01
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0802B518
_0802B432:
	ldr r1, [r3, #0x14]
	adds r1, r1, r5
	ldr r0, [r2, #0x14]
	adds r0, r0, r4
	cmp r1, r0
	beq _0802B454
	adds r0, r3, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x26
	ldrb r1, [r1, #0x00]
	ands r0, r1
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0802B518
_0802B454:
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	asrs r2, r0, #0x19
	mov r4, r9
	b _0802B484
_0802B464: .4byte 0x00000246
_0802B468: .4byte 0x0000010F
_0802B46C: .4byte 0x00000111
_0802B470: .4byte 0x0000010B
_0802B474: .4byte 0x000002B5
_0802B478: .4byte 0x0000023E
_0802B47C: .4byte 0x00000359
_0802B480: .4byte 0x00000209
_0802B484:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r0, r1
	cmp r2, r0
	bne _0802B518
	ldr r5, _0802B56C @ =0x0000033D
	adds r0, r3, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	asrs r0, r0, #0x19
	cmp r0, r2
	bne _0802B518
	ldr r1, _0802B570 @ =0x00000342
	adds r0, r3, r1
	movs r4, #0x00
	ldsb r4, [r0, r4]
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _0802B518
	adds r0, r3, #0x0
	bl sub_804FC90__20FieldPlayerCharacter
	mov r2, r8
	ldr r0, [r2, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x00]
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	ldrb r2, [r1, #0x14]
	movs r0, #0x14
	ldsb r0, [r1, r0]
	cmp r0, r4
	beq _0802B4E8
	strb r2, [r1, #0x10]
	ldr r0, [r7, #0x00]
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x14]
_0802B4E8:
	mov r5, r8
	ldr r0, [r5, #0x00]
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	ldrb r2, [r1, #0x14]
	movs r0, #0x14
	ldsb r0, [r1, r0]
	cmp r0, r4
	beq _0802B506
	strb r2, [r1, #0x10]
	ldr r0, [r5, #0x00]
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x14]
_0802B506:
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4__12FieldManagerii
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_802E4C8
_0802B518:
	ldr r7, _0802B574 @ =0x00000209
	adds r0, r6, r7
	ldrb r0, [r0, #0x00]
	movs r2, #0x01
	movs r4, #0x01
	ands r4, r0
	cmp r4, #0x00
	bne _0802B59A
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r1, [r5, #0x00]
	mov r7, r10
	ldrb r3, [r7, #0x00]
	lsrs r3, r3, #0x02
	eors r3, r2
	ands r3, r2
	mov r0, sp
	strb r4, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_802EDC4__12FieldManagerP20FieldPlayerCharacteriUcUc
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802B59A
	ldr r1, [r5, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	strh r4, [r0, #0x00]
	ldr r3, _0802B578 @ =0x00000242
	adds r1, r1, r3
	strh r4, [r1, #0x00]
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, r2
	strh r4, [r2, #0x00]
	adds r0, r0, r3
	strh r4, [r0, #0x00]
	b _0802B59A
_0802B56C: .4byte 0x0000033D
_0802B570: .4byte 0x00000342
_0802B574: .4byte 0x00000209
_0802B578: .4byte 0x00000242
_0802B57C:
	.byte 0x30, 0x1C, 0xFA, 0xF7, 0xA5, 0xFA, 0x80, 0x22, 0x92, 0x00, 0xB0, 0x18, 0x00, 0x68, 0x24, 0xF0
	.byte 0x81, 0xFB, 0x81, 0x23, 0x9B, 0x00, 0xF0, 0x18, 0x00, 0x68, 0x24, 0xF0, 0x7B, 0xFB
_0802B59A:
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r4, r6, r5
	ldr r2, [r4, #0x00]
	movs r7, #0x04
	ldsh r0, [r2, r7]
	cmp r0, #0x04
	bgt _0802B5BA
	mov r0, r10
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x02
	movs r0, #0x01
	ands r1, r0
	adds r0, r2, #0x0
	bl sub_80490CC__20FieldPlayerCharacterUc
_0802B5BA:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r2, [r5, #0x00]
	movs r3, #0x04
	ldsh r0, [r2, r3]
	cmp r0, #0x04
	bgt _0802B5DA
	mov r7, r10
	ldrb r1, [r7, #0x00]
	lsrs r1, r1, #0x02
	movs r0, #0x01
	ands r1, r0
	adds r0, r2, #0x0
	bl sub_80490CC__20FieldPlayerCharacterUc
_0802B5DA:
	mov r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0802B640
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802B640
	ldr r3, [r4, #0x00]
	ldr r2, _0802B650 @ =0x000002B5
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r4, #0x0F
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802B640
	ldr r2, [r5, #0x00]
	ldr r5, _0802B650 @ =0x000002B5
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802B640
	movs r7, #0x04
	ldsh r0, [r3, r7]
	cmp r0, #0x01
	bgt _0802B640
	movs r1, #0x04
	ldsh r0, [r2, r1]
	cmp r0, #0x01
	bgt _0802B640
	movs r4, #0x2C
	ldsh r0, [r3, r4]
	cmp r0, #0x04
	beq _0802B638
	movs r5, #0x2C
	ldsh r0, [r2, r5]
	cmp r0, #0x04
	bne _0802B640
_0802B638:
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_802DF80
_0802B640:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0802B650: .4byte 0x000002B5
