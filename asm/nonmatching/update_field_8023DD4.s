	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start update_field_8023DD4__12FieldManager
update_field_8023DD4__12FieldManager: @ 08023DD4
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x048
	mov r10, r0
	ldr r0, _08023DFC @ =0x0000012B
	add r0, r10
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08023E00
	mov r0, r10
	bl sub_8028FBC__12FieldManager
	bl _080254A2
_08023DFC: .4byte 0x0000012B
_08023E00:
	movs r0, #0xAA
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08023E1A
	mov r0, r10
	bl start_battle_8027AC4__12FieldManager
	bl _080254A2
_08023E1A:
	movs r0, #0x96
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0xFC
	ands r0, r1
	cmp r0, #0xF8
	beq _08023E34
	mov r0, r10
	bl sub_8027558__12FieldManager
	bl _080254A2
_08023E34:
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08023E48
	mov r0, r10
	bl sub_80275F4__12FieldManager
	bl _080254A2
_08023E48:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08023E5A
	mov r0, r10
	bl sub_8027688__12FieldManager
	bl _080254A2
_08023E5A:
	ldr r0, _08023E74 @ =0x0000012D
	add r0, r10
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08023E78
	mov r0, r10
	bl sub_802772C__12FieldManager
	bl _080254A2
	lsls r0, r0, #0x00
_08023E74: .4byte 0x0000012D
_08023E78:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08023E82
	b _0802452E
_08023E82:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08023E8C
	b _0802453E
_08023E8C:
	movs r1, #0x85
	lsls r1, r1, #0x01
	add r1, r10
	ldrb r2, [r1, #0x00]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	ble _08023EC4
	subs r2, #0x01
	strb r2, [r1, #0x00]
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x04
	bhi _08023EC4
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _08023EC4
	mov r0, r10
	adds r0, #0xFC
	ldrb r1, [r0, #0x00]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x00]
_08023EC4:
	ldr r3, _08023F30 @ =0x0000020A
	add r3, r10
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x1C
	movs r5, #0x01
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x04
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08023F34 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08023F16
	ldr r4, _08023F38 @ =0x000002A9
	add r4, r10
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08023F16
	mov r0, r10
	bl sub_8028C40__12FieldManager
	mov r0, r10
	bl sub_8028E70__12FieldManager
	adds r1, r5, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r4, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
_08023F16:
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	cmp r0, #0x11
	bls _08023F26
	bl _0802476C
_08023F26:
	lsls r0, r0, #0x02
	ldr r1, _08023F3C @ =0x08023F40
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08023F30: .4byte 0x0000020A
_08023F34: .4byte 0x00000291
_08023F38: .4byte 0x000002A9
_08023F3C: .4byte _08023F40
_08023F40:
	.4byte _0802476C
	.4byte _08023F88
	.4byte _08023FC4
	.4byte _0802406C
	.4byte _080241C4
	.4byte _08024350
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080246D8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
	.4byte _080243A8
_08023F88:
	mov r0, r10
	bl sub_8027378__12FieldManager
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08023F98
	bl _0802476C
_08023F98:
	movs r0, #0xAE
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08023FAA
	b _0802476C
_08023FAA:
	movs r1, #0x95
	lsls r1, r1, #0x01
	add r1, r10
	movs r0, #0x02
	strb r0, [r1, #0x00]
	mov r2, r10
	adds r2, #0xF9
	ldrb r1, [r2, #0x00]
	subs r0, #0x13
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	b _08024338
_08023FC4:
	mov r4, r10
	adds r4, #0xFD
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08024000
	mov r0, r10
	bl sub_8027378__12FieldManager
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08024000
	ldr r1, _08024060 @ =0x02000272
	mov r0, r10
	adds r0, #0xFE
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	ldr r2, _08024064 @ =0x0300034C
	ldrh r1, [r2, #0x02]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x02]
_08024000:
	bl sub_801B084
	mov r0, r10
	bl sub_8025E94__12FieldManager
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r4, #0xD6
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08024038
	mov r0, r10
	movs r1, #0x06
	bl sub_8025D24__12FieldManageri
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08024038
	mov r0, r10
	movs r1, #0x03
	bl sub_803C720
_08024038:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r1, _08024068 @ =0x10000100
	ands r0, r1
	cmp r0, #0x00
	beq _0802404A
	b _0802476C
_0802404A:
	mov r4, r10
	adds r4, #0xD0
	ldr r1, [r4, #0x00]
	mov r0, r10
	bl sub_802D544
	ldr r1, [r4, #0x00]
	mov r0, r10
	bl sub_802D46C
	b _0802476C
_08024060: .4byte 0x02000272
_08024064: .4byte 0x0300034C
_08024068: .4byte 0x10000100
_0802406C:
	movs r6, #0x81
	lsls r6, r6, #0x02
	add r6, r10
	ldr r0, [r6, #0x00]
	mov r1, r10
	adds r1, #0x28
	bl sub_80461B4__11FieldObjectPP11FieldObject
	ldr r0, [r6, #0x00]
	bl sub_8047B78__11FieldObject
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _0802408C
	b _0802476C
_0802408C:
	movs r7, #0x80
	lsls r7, r7, #0x02
	add r7, r10
	ldr r3, [r7, #0x00]
	ldr r1, [r6, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	strh r4, [r0, #0x00]
	ldr r0, _0802412C @ =0x00000242
	adds r1, r1, r0
	strh r4, [r1, #0x00]
	adds r2, r3, r2
	strh r4, [r2, #0x00]
	adds r3, r3, r0
	strh r4, [r3, #0x00]
	ldr r4, [r7, #0x00]
	ldr r3, [r6, #0x00]
	ldr r5, _08024130 @ =0x000002B6
	adds r3, r3, r5
	ldrb r2, [r3, #0x00]
	movs r1, #0x7F
	adds r0, r1, #0x0
	ands r0, r2
	movs r2, #0x41
	negs r2, r2
	ands r0, r2
	strb r0, [r3, #0x00]
	adds r4, r4, r5
	ldrb r0, [r4, #0x00]
	ands r1, r0
	ands r1, r2
	strb r1, [r4, #0x00]
	ldr r4, [r7, #0x00]
	ldr r1, [r6, #0x00]
	adds r5, #0x9B
	adds r1, r1, r5
	ldrb r3, [r1, #0x00]
	adds r0, r2, #0x0
	ands r0, r3
	strb r0, [r1, #0x00]
	adds r4, r4, r5
	ldrb r0, [r4, #0x00]
	ands r2, r0
	strb r2, [r4, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, [r7, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x02
	adds r4, r0, r2
	ldrh r3, [r4, #0x00]
	subs r2, #0x22
	adds r0, r0, r2
	strh r3, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x02
	add r1, r10
	ldrb r0, [r1, #0x00]
	movs r4, #0x10
	orrs r0, r4
	strb r0, [r1, #0x00]
	mov r0, r10
	movs r1, #0x00
	bl sub_802DF80
	ldr r0, _08024134 @ =0x00000246
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	beq _08024160
	cmp r0, #0x03
	bgt _08024138
	cmp r0, #0x02
	beq _0802413E
	b _080241AC
_0802412C: .4byte 0x00000242
_08024130: .4byte 0x000002B6
_08024134: .4byte 0x00000246
_08024138:
	cmp r0, #0x04
	beq _08024184
	b _080241AC
_0802413E:
	ldr r0, [r6, #0x00]
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080241AC
	ldr r1, _0802415C @ =0x0000020B
	add r1, r10
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	mov r0, r10
	bl sub_8035974
	b _080241AC
	.byte 0x00, 0x00
_0802415C: .4byte 0x0000020B
_08024160:
	ldr r0, [r6, #0x00]
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _080241AC
	ldr r0, _08024180 @ =0x0000020B
	add r0, r10
	ldrb r1, [r0, #0x00]
	orrs r1, r4
	strb r1, [r0, #0x00]
	ldr r1, [r6, #0x00]
	mov r0, r10
	bl sub_8033B98
	b _080241AC
	.byte 0x00, 0x00
_08024180: .4byte 0x0000020B
_08024184:
	ldr r0, [r6, #0x00]
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _080241AC
	ldr r1, _080241C0 @ =0x0000020B
	add r1, r10
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	mov r0, r10
	bl sub_8034870
	ldr r1, [r7, #0x00]
	adds r1, r1, r5
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x00]
_080241AC:
	movs r1, #0x95
	lsls r1, r1, #0x01
	add r1, r10
	movs r0, #0x02
	strb r0, [r1, #0x00]
	mov r2, r10
	adds r2, #0xF9
	ldrb r1, [r2, #0x00]
	subs r0, #0x13
	b _08024338
_080241C0: .4byte 0x0000020B
_080241C4:
	mov r0, r10
	bl sub_8028C40__12FieldManager
	mov r0, r10
	bl sub_8028E70__12FieldManager
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _080241DA
	b _0802476C
_080241DA:
	movs r7, #0x81
	lsls r7, r7, #0x02
	add r7, r10
	ldr r0, [r7, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	mov r8, r3
	add r0, r8
	ldr r2, [r0, #0x00]
	ldrb r3, [r2, #0x14]
	movs r1, #0x14
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0802420A
	strb r3, [r2, #0x10]
	ldr r0, [r7, #0x00]
	movs r6, #0xDA
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r1, [r0, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x14]
_0802420A:
	movs r0, #0x80
	lsls r0, r0, #0x02
	mov r9, r0
	mov r6, r10
	add r6, r9
	ldr r0, [r6, #0x00]
	add r0, r8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x10]
	strb r0, [r1, #0x14]
	ldr r0, [r6, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	strb r4, [r0, #0x10]
	mov r5, r10
	adds r5, #0xFA
	ldrh r2, [r5, #0x00]
	lsls r0, r2, #0x16
	lsrs r1, r0, #0x1B
	movs r3, #0x82
	lsls r3, r3, #0x02
	add r3, r10
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	cmp r1, r0
	bne _0802424E
	movs r0, #0x01
	eors r1, r0
	lsls r1, r1, #0x05
	ldr r0, _08024340 @ =0xFFFFFC1F
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #0x00]
_0802424E:
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1F
	movs r4, #0x01
	eors r1, r4
	lsls r1, r1, #0x02
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, _08024344 @ =0x03000FD0
	ldr r1, [r1, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x03
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	str r0, [r2, r1]
	movs r0, #0xA6
	lsls r0, r0, #0x03
	adds r1, r1, r0
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1B
	str r0, [r1, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x04
	ands r0, r1
	mov r1, r10
	adds r1, #0x28
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	eors r0, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	str r0, [r7, #0x00]
	ldr r2, [r6, #0x00]
	ldr r3, _08024348 @ =0x00000352
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	strh r4, [r0, #0x04]
	ldr r0, [r6, #0x00]
	add r0, r8
	ldr r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	ldr r0, [r7, #0x00]
	add r0, r8
	ldr r1, [r0, #0x00]
	movs r5, #0x02
	movs r0, #0x02
	strh r0, [r1, #0x04]
	ldr r0, [r7, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	mov r1, r9
	strh r1, [r0, #0x06]
	ldr r2, [r6, #0x00]
	ldr r4, _0802434C @ =0x00000351
	adds r2, r2, r4
	ldrb r3, [r2, #0x00]
	movs r1, #0x41
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x00]
	adds r0, r0, r4
	ldrb r2, [r0, #0x00]
	ands r1, r2
	strb r1, [r0, #0x00]
	ldr r1, [r6, #0x00]
	mov r0, r10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	ldr r1, [r7, #0x00]
	mov r0, r10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	mov r2, r10
	adds r2, #0xE8
	ldr r3, [r2, #0x00]
	mov r1, r10
	adds r1, #0xEC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	str r3, [r1, #0x00]
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	strb r5, [r0, #0x00]
	adds r2, #0x11
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
_08024338:
	ands r0, r1
	strb r0, [r2, #0x00]
	b _0802476C
	.byte 0x00, 0x00
_08024340: .4byte 0xFFFFFC1F
_08024344: .4byte 0x03000FD0
_08024348: .4byte 0x00000352
_0802434C: .4byte 0x00000351
_08024350:
	ldr r1, _080243A0 @ =0x0000026E
	add r1, r10
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08024362
	b _0802476C
_08024362:
	mov r0, r10
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8029A0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r1, [r0, #0x00]
	ldr r4, _080243A4 @ =0x00000351
	adds r1, r1, r4
	ldrb r3, [r1, #0x00]
	movs r2, #0x41
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r3
	strb r0, [r1, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	ands r2, r1
	strb r2, [r0, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x01
	add r1, r10
	movs r0, #0x02
	strb r0, [r1, #0x00]
	b _0802476C
_080243A0: .4byte 0x0000026E
_080243A4: .4byte 0x00000351
_080243A8:
	mov r2, r10
	adds r2, #0xF9
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	bne _080243F8
	mov r0, r10
	bl sub_8027378__12FieldManager
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080243C6
	b _0802476C
_080243C6:
	movs r0, #0x00
	movs r1, #0x00
	bl sub_8029888
	ldr r1, _080243EC @ =0x040000B0
	ldrh r2, [r1, #0x0A]
	ldr r0, _080243F0 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r2, [r1, #0x0A]
	ldr r0, _080243F4 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
	b _0802476C
_080243EC: .4byte 0x040000B0
_080243F0: .4byte 0x0000C5FF
_080243F4: .4byte 0x00007FFF
_080243F8:
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	subs r0, #0x07
	cmp r0, #0x0A
	bls _08024408
	b _080246B8
_08024408:
	lsls r0, r0, #0x02
	ldr r1, _08024414 @ =0x08024418
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08024414: .4byte _08024418
_08024418:
	.4byte _08024444
	.4byte _08024444
	.4byte _080244D0
	.4byte _080246B8
	.4byte _080244E0
	.4byte _080244F2
	.4byte _08024500
	.4byte _0802450E
	.4byte _08024528
	.4byte _08024538
	.4byte _08024548
_08024444:
	ldr r0, _080244C0 @ =0x00000246
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x1C
	bne _0802447E
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	beq _0802447E
	movs r2, #0x80
	lsls r2, r2, #0x02
	add r2, r10
	ldr r0, [r2, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	ldr r1, _080244C4 @ =0x000002BB
	add r1, r10
	strb r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x02]
	ldr r0, _080244C8 @ =0x000002BA
	add r0, r10
	strb r1, [r0, #0x00]
_0802447E:
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r1, [r0, #0x00]
	ldr r2, _080244CC @ =0x00000351
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r4, #0x41
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	mov r0, r10
	bl sub_8027D64__12FieldManager
	movs r3, #0x00
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _080244AC
	movs r3, #0x01
_080244AC:
	movs r2, #0xAE
	lsls r2, r2, #0x02
	add r2, r10
	lsls r3, r3, #0x06
	ldrb r1, [r2, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	b _080246B8
_080244C0: .4byte 0x00000246
_080244C4: .4byte 0x000002BB
_080244C8: .4byte 0x000002BA
_080244CC: .4byte 0x00000351
_080244D0:
	mov r0, r10
	movs r1, #0x00
	bl sub_8029024__12FieldManageri
	mov r0, r10
	bl sub_8028FBC__12FieldManager
	b _0802451E
_080244E0:
	movs r1, #0x01
	negs r1, r1
	mov r0, r10
	bl sub_80290CC__12FieldManageri
	mov r0, r10
	bl sub_8027558__12FieldManager
	b _0802451E
_080244F2:
	mov r0, r10
	bl sub_8029070__12FieldManager
	mov r0, r10
	bl sub_80275F4__12FieldManager
	b _0802451E
_08024500:
	mov r0, r10
	bl sub_8029060__12FieldManager
	mov r0, r10
	bl sub_8027688__12FieldManager
	b _0802451E
_0802450E:
	mov r0, r10
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8029030__12FieldManagerii
	mov r0, r10
	bl sub_802772C__12FieldManager
_0802451E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x00]
	b _080246B8
_08024528:
	mov r0, r10
	bl sub_8028F40__12FieldManager
_0802452E:
	mov r0, r10
	bl sub_802814C__12FieldManager
	bl _080254A2
_08024538:
	mov r0, r10
	bl sub_8028F2C__12FieldManager
_0802453E:
	mov r0, r10
	bl sub_8028EF4__12FieldManager
	bl _080254A2
_08024548:
	movs r3, #0x80
	lsls r3, r3, #0x02
	add r3, r10
	str r3, [sp, #0x01C]
	ldr r1, [r3, #0x00]
	mov r0, r10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	movs r4, #0x81
	lsls r4, r4, #0x02
	add r4, r10
	mov r8, r4
	ldr r1, [r4, #0x00]
	mov r0, r10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	movs r4, #0x82
	lsls r4, r4, #0x02
	add r4, r10
	ldrb r2, [r4, #0x00]
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1F
	movs r6, #0x01
	add r0, sp, #0x044
	strb r6, [r0, #0x00]
	movs r3, #0x01
	eors r1, r3
	lsls r1, r1, #0x02
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r1, _080246C8 @ =0x03000FD0
	ldr r1, [r1, #0x00]
	movs r6, #0xA5
	lsls r6, r6, #0x03
	adds r1, r1, r6
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	eors r0, r3
	lsls r0, r0, #0x02
	mov r1, r10
	adds r1, #0x28
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r7, _080246CC @ =0x000002DA
	add r7, r10
	ldrh r1, [r7, #0x00]
	movs r5, #0xB6
	lsls r5, r5, #0x02
	add r5, r10
	ldrb r2, [r5, #0x00]
	lsrs r3, r2, #0x05
	movs r6, #0xB7
	lsls r6, r6, #0x02
	add r6, r10
	mov r12, r6
	ldr r0, [r6, #0x00]
	str r0, [sp, #0x020]
	movs r6, #0xB8
	lsls r6, r6, #0x02
	add r6, r10
	str r6, [sp, #0x028]
	ldr r0, [r6, #0x00]
	str r0, [sp, #0x024]
	movs r6, #0xB9
	lsls r6, r6, #0x02
	add r6, r10
	str r6, [sp, #0x02C]
	ldr r0, [r6, #0x00]
	mov r9, r0
	movs r6, #0xBA
	lsls r6, r6, #0x02
	add r6, r10
	str r6, [sp, #0x034]
	ldr r0, [r6, #0x00]
	str r0, [sp, #0x030]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	add r4, sp, #0x044
	ldrb r6, [r4, #0x00]
	eors r6, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r6
	strb r0, [r5, #0x00]
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	strh r0, [r7, #0x00]
	mov r6, r8
	ldr r0, [r6, #0x00]
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	lsls r2, r2, #0x1D
	lsrs r2, r2, #0x18
	ldrb r4, [r5, #0x00]
	movs r0, #0x1F
	ands r0, r4
	orrs r0, r2
	strb r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x0C]
	mov r2, r12
	str r0, [r2, #0x00]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x10]
	ldr r4, [sp, #0x028]
	str r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	ldr r6, [sp, #0x02C]
	str r0, [r6, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x18]
	ldr r4, [sp, #0x034]
	str r0, [r4, #0x00]
	ldr r6, [sp, #0x01C]
	ldr r4, [r6, #0x00]
	ldr r6, _080246D0 @ =0x00000351
	adds r4, r4, r6
	ldrb r5, [r4, #0x00]
	movs r2, #0x41
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r5
	strb r0, [r4, #0x00]
	mov r4, r8
	ldr r0, [r4, #0x00]
	adds r0, r0, r6
	ldrb r4, [r0, #0x00]
	ands r2, r4
	strb r2, [r0, #0x00]
	ldr r6, [sp, #0x020]
	str r6, [sp, #0x000]
	ldr r0, [sp, #0x024]
	str r0, [sp, #0x004]
	ldr r2, [sp, #0x030]
	add r9, r2
	mov r4, r9
	str r4, [sp, #0x008]
	movs r6, #0x00
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x018
	movs r2, #0x01
	strb r2, [r0, #0x00]
	mov r0, r10
	movs r2, #0x00
	bl sub_8027E90__12FieldManagerUsUsUciiiiiScb
	ldr r3, [sp, #0x01C]
	ldr r2, [r3, #0x00]
	ldr r3, _080246D4 @ =0x00000352
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r4, r8
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r2
	strb r0, [r1, #0x00]
_080246B8:
	movs r1, #0x95
	lsls r1, r1, #0x01
	add r1, r10
	movs r0, #0x00
	strb r0, [r1, #0x00]
	bl _080254A2
	lsls r0, r0, #0x00
_080246C8: .4byte 0x03000FD0
_080246CC: .4byte 0x000002DA
_080246D0: .4byte 0x00000351
_080246D4: .4byte 0x00000352
_080246D8:
	mov r4, r10
	adds r4, #0xF9
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0802476C
	mov r0, r10
	bl sub_803CB5C
	mov r0, r10
	bl sub_803E9F0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _0802476C
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _08024760 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0802476C
	ldr r0, _08024764 @ =0x000002AA
	add r0, r10
	ldrh r1, [r0, #0x00]
	movs r0, #0xAA
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r3, [r0, #0x00]
	lsls r2, r3, #0x1B
	lsrs r2, r2, #0x1B
	lsrs r3, r3, #0x05
	movs r0, #0x01
	ands r3, r0
	ldr r0, _08024768 @ =0x000002A9
	add r0, r10
	ldrb r4, [r0, #0x00]
	lsls r0, r4, #0x1B
	lsrs r0, r0, #0x1D
	str r0, [sp, #0x000]
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r5, [sp, #0x014]
	lsls r4, r4, #0x1A
	lsrs r4, r4, #0x1F
	str r4, [sp, #0x018]
	mov r0, r10
	bl sub_8027A04__12FieldManagerUsUcUciiiiiii
	mov r0, r10
	bl start_battle_8027AC4__12FieldManager
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	strb r5, [r0, #0x00]
	bl _080254A2
_08024760: .4byte 0x00000291
_08024764: .4byte 0x000002AA
_08024768: .4byte 0x000002A9
_0802476C:
	mov r0, r10
	bl sub_802A608
	mov r0, r10
	bl sub_802C390
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _08024786
	b _08024922
_08024786:
	mov r0, r10
	movs r1, #0x04
	bl sub_8025D24__12FieldManageri
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08024796
	b _080248B2
_08024796:
	ldr r0, _0802482C @ =0x00000209
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r6, #0x01
	mov r8, r6
	mov r0, r8
	ands r0, r1
	cmp r0, #0x00
	beq _080247AA
	b _080248B2
_080247AA:
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r4, [r0, #0x00]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080248B2
	movs r7, #0x81
	lsls r7, r7, #0x02
	add r7, r10
	ldr r3, [r7, #0x00]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r6, [r0, #0x00]
	cmp r6, r1
	bne _080248B2
	movs r1, #0x04
	ldsh r0, [r4, r1]
	cmp r0, #0x01
	bgt _080248B2
	movs r2, #0x04
	ldsh r0, [r3, r2]
	cmp r0, #0x01
	bgt _080248B2
	movs r5, #0x82
	lsls r5, r5, #0x02
	add r5, r10
	ldrb r2, [r5, #0x00]
	mov r0, r8
	ands r0, r2
	cmp r0, #0x00
	beq _080248AC
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0x00
	beq _08024830
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	bl sub_8047C18__11FieldObjectP11FieldObject
	cmp r0, #0x00
	bne _080248B2
	ldrb r1, [r5, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r1, #0x09
	cmp r0, #0x00
	bne _08024818
	movs r1, #0x1B
_08024818:
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	mov r0, r10
	movs r1, #0x00
	bl sub_802E854
	b _080248B2
	.byte 0x00, 0x00
_0802482C: .4byte 0x00000209
_08024830:
	movs r0, #0xB6
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x1F
	ands r0, r1
	cmp r0, #0x1F
	bne _08024856
	movs r0, #0x04
	ands r0, r2
	movs r1, #0x09
	cmp r0, #0x00
	bne _0802484C
	movs r1, #0x1B
_0802484C:
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	b _08024874
_08024856:
	movs r4, #0xDA
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r1, [r0, #0x00]
	ldrb r2, [r1, #0x14]
	movs r0, #0x14
	ldsb r0, [r1, r0]
	cmp r0, r6
	beq _08024874
	strb r2, [r1, #0x10]
	ldr r0, [r7, #0x00]
	adds r0, r0, r4
	ldr r1, [r0, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x14]
_08024874:
	mov r0, r10
	movs r1, #0x00
	bl sub_802EC64
	movs r0, #0xB6
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x1F
	ands r0, r1
	cmp r0, #0x1F
	beq _080248B2
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r10
	ldr r0, [r4, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x10]
	movs r3, #0x00
	strb r1, [r0, #0x14]
	ldr r0, [r4, #0x00]
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	strb r3, [r0, #0x10]
	b _080248B2
_080248AC:
	mov r0, r10
	bl sub_8029878
_080248B2:
	mov r0, r10
	movs r1, #0x05
	bl sub_8025D24__12FieldManageri
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08024922
	ldr r0, _08024910 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r6, #0xE3
	lsls r6, r6, #0x02
	adds r0, r0, r6
	movs r2, #0x89
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08024922
	ldr r0, _08024914 @ =0x0000020B
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0802491C
	ldr r0, _08024918 @ =0x0000FFFF
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	mov r0, r10
	movs r1, #0x02
	movs r2, #0x08
	movs r3, #0x00
	bl sub_8027030__12FieldManageriiUsUsUs
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r1, #0x95
	lsls r1, r1, #0x01
	add r1, r10
	movs r0, #0x0B
	strb r0, [r1, #0x00]
	b _08024922
_08024910: .4byte 0x03000FC0
_08024914: .4byte 0x0000020B
_08024918: .4byte 0x0000FFFF
_0802491C:
	mov r0, r10
	bl sub_8029878
_08024922:
	ldr r0, _08024C28 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802494A
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, r10
	adds r1, #0xFC
	str r1, [sp, #0x040]
	cmp r0, #0x00
	blt _0802494A
	b _08024D64
_0802494A:
	mov r7, r10
	adds r7, #0x28
	ldr r0, _08024C2C @ =0x0000010B
	add r0, r10
	ldrb r4, [r0, #0x00]
	mov r3, r10
	adds r3, #0xFC
	str r3, [sp, #0x040]
	str r7, [sp, #0x038]
	mov r6, r10
	adds r6, #0xA8
	str r6, [sp, #0x03C]
	cmp r4, #0x00
	beq _08024A0C
	movs r5, #0xCE
	lsls r5, r5, #0x02
	negs r0, r4
	ands r0, r2
	cmp r0, #0x00
	beq _080249AC
	mov r0, r10
	ldr r2, [r0, #0x28]
	cmp r2, #0x00
	beq _080249A2
	adds r0, r2, r5
	ldr r1, [r0, #0x00]
	adds r1, #0x58
	movs r3, #0x00
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	mov r6, r10
	ldr r0, [r6, #0x28]
	adds r1, r0, r5
	ldr r1, [r1, #0x00]
	adds r1, #0x88
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #0x04]
	bl _call_via_r1
_080249A2:
	subs r4, #0x01
	mov r7, r10
	adds r7, #0x2C
	cmp r4, #0x00
	beq _08024A0C
_080249AC:
	ldr r2, [r7, #0x00]
	cmp r2, #0x00
	beq _080249D8
	adds r0, r2, r5
	ldr r1, [r0, #0x00]
	adds r1, #0x58
	movs r6, #0x00
	ldsh r0, [r1, r6]
	adds r0, r2, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	ldr r0, [r7, #0x00]
	adds r1, r0, r5
	ldr r2, [r1, #0x00]
	adds r2, #0x88
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
_080249D8:
	ldr r2, [r7, #0x04]
	cmp r2, #0x00
	beq _08024A04
	adds r0, r2, r5
	ldr r1, [r0, #0x00]
	adds r1, #0x58
	movs r6, #0x00
	ldsh r0, [r1, r6]
	adds r0, r2, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	ldr r0, [r7, #0x04]
	adds r1, r0, r5
	ldr r2, [r1, #0x00]
	adds r2, #0x88
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
_08024A04:
	subs r4, #0x02
	adds r7, #0x08
	cmp r4, #0x00
	bne _080249AC
_08024A0C:
	movs r1, #0x8D
	lsls r1, r1, #0x01
	add r1, r10
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08024B0A
	lsls r0, r0, #0x02
	adds r0, #0x28
	mov r6, r10
	adds r4, r6, r0
	ldr r0, _08024C30 @ =0x0000011B
	add r0, r10
	ldrb r5, [r0, #0x00]
	cmp r5, #0x00
	beq _08024B0A
	negs r1, r5
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08024A98
	cmp r1, #0x03
	bge _08024A76
	cmp r1, #0x02
	bge _08024A58
	ldr r2, [r4, #0x00]
	ldr r1, _08024C34 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08024A54
	ldr r1, [r6, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024A54:
	subs r5, #0x01
	adds r4, #0x04
_08024A58:
	ldr r2, [r4, #0x00]
	ldr r3, _08024C34 @ =0x00000216
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08024A72
	mov r6, r10
	ldr r1, [r6, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024A72:
	subs r5, #0x01
	adds r4, #0x04
_08024A76:
	ldr r2, [r4, #0x00]
	ldr r1, _08024C34 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08024A90
	mov r3, r10
	ldr r1, [r3, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024A90:
	subs r5, #0x01
	adds r4, #0x04
	cmp r5, #0x00
	beq _08024B0A
_08024A98:
	ldr r2, [r4, #0x00]
	ldr r6, _08024C34 @ =0x00000216
	adds r0, r2, r6
	ldrb r1, [r0, #0x00]
	movs r6, #0x20
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024AB4
	mov r0, r10
	ldr r1, [r0, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024AB4:
	ldr r2, [r4, #0x04]
	ldr r1, _08024C34 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024ACE
	mov r3, r10
	ldr r1, [r3, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024ACE:
	ldr r2, [r4, #0x08]
	ldr r1, _08024C34 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024AE8
	mov r3, r10
	ldr r1, [r3, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024AE8:
	ldr r2, [r4, #0x0C]
	ldr r1, _08024C34 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024B02
	mov r3, r10
	ldr r1, [r3, #0x04]
	adds r0, r2, #0x0
	bl sub_8051208
_08024B02:
	subs r5, #0x04
	adds r4, #0x10
	cmp r5, #0x00
	bne _08024A98
_08024B0A:
	movs r1, #0x8E
	lsls r1, r1, #0x01
	add r1, r10
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08024BEE
	lsls r0, r0, #0x02
	adds r0, #0x28
	mov r4, r10
	adds r7, r4, r0
	ldr r0, _08024C38 @ =0x0000011D
	add r0, r10
	ldrb r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08024BEE
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08024B8C
	cmp r1, #0x03
	bge _08024B6E
	cmp r1, #0x02
	bge _08024B54
	ldr r2, [r7, #0x00]
	ldr r6, _08024C3C @ =0x000002B5
	adds r0, r2, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08024B50
	adds r0, r2, #0x0
	bl updateAirborne__11FieldObject
_08024B50:
	subs r4, #0x01
	adds r7, #0x04
_08024B54:
	ldr r2, [r7, #0x00]
	ldr r1, _08024C3C @ =0x000002B5
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08024B6A
	adds r0, r2, #0x0
	bl updateAirborne__11FieldObject
_08024B6A:
	subs r4, #0x01
	adds r7, #0x04
_08024B6E:
	ldr r2, [r7, #0x00]
	ldr r3, _08024C3C @ =0x000002B5
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08024B84
	adds r0, r2, #0x0
	bl updateAirborne__11FieldObject
_08024B84:
	subs r4, #0x01
	adds r7, #0x04
	cmp r4, #0x00
	beq _08024BEE
_08024B8C:
	ldr r2, [r7, #0x00]
	ldr r6, _08024C3C @ =0x000002B5
	adds r0, r2, r6
	ldrb r1, [r0, #0x00]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024BA4
	adds r0, r2, #0x0
	bl updateAirborne__11FieldObject
_08024BA4:
	ldr r2, [r7, #0x04]
	ldr r1, _08024C3C @ =0x000002B5
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024BBA
	adds r0, r2, #0x0
	bl updateAirborne__11FieldObject
_08024BBA:
	ldr r2, [r7, #0x08]
	ldr r3, _08024C3C @ =0x000002B5
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024BD0
	adds r0, r2, #0x0
	bl updateAirborne__11FieldObject
_08024BD0:
	ldr r2, [r7, #0x0C]
	ldr r6, _08024C3C @ =0x000002B5
	adds r0, r2, r6
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08024BE6
	adds r0, r2, #0x0
	bl updateAirborne__11FieldObject
_08024BE6:
	subs r4, #0x04
	adds r7, #0x10
	cmp r4, #0x00
	bne _08024B8C
_08024BEE:
	ldr r0, _08024C40 @ =0x00000209
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r4, #0x01
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08024C04
	mov r0, r10
	bl sub_803C5A4
_08024C04:
	ldr r0, _08024C44 @ =0x000002A9
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08024C6E
	ldr r0, _08024C28 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08024C48
	mov r0, r10
	bl sub_803CF64
	b _08024C6E
_08024C28: .4byte 0x00000291
_08024C2C: .4byte 0x0000010B
_08024C30: .4byte 0x0000011B
_08024C34: .4byte 0x00000216
_08024C38: .4byte 0x0000011D
_08024C3C: .4byte 0x000002B5
_08024C40: .4byte 0x00000209
_08024C44: .4byte 0x000002A9
_08024C48:
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08024C68
	mov r0, r10
	bl sub_802F938
	b _08024C6E
_08024C68:
	mov r0, r10
	bl sub_802A740
_08024C6E:
	mov r0, r10
	bl sub_802FD70
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r4, _08024DF4 @ =0x00000246
	add r4, r10
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1D
	bl sub_8048174__20FieldPlayerCharacteri
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1D
	bl sub_8048174__20FieldPlayerCharacteri
	ldr r1, _08024DF8 @ =0x00000113
	add r1, r10
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08024D0A
	movs r0, #0x89
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, #0x28
	mov r2, r10
	adds r5, r2, r0
	ldrb r4, [r1, #0x00]
	cmp r4, #0x00
	beq _08024D0A
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08024CEA
	cmp r1, #0x03
	bge _08024CDE
	cmp r1, #0x02
	bge _08024CD6
	ldm r5!, {r0}
	bl sub_8050078__12FieldMonster
	subs r4, #0x01
_08024CD6:
	ldm r5!, {r0}
	bl sub_8050078__12FieldMonster
	subs r4, #0x01
_08024CDE:
	ldm r5!, {r0}
	bl sub_8050078__12FieldMonster
	subs r4, #0x01
	cmp r4, #0x00
	beq _08024D0A
_08024CEA:
	ldr r0, [r5, #0x00]
	bl sub_8050078__12FieldMonster
	ldr r0, [r5, #0x04]
	bl sub_8050078__12FieldMonster
	ldr r0, [r5, #0x08]
	bl sub_8050078__12FieldMonster
	ldr r0, [r5, #0x0C]
	bl sub_8050078__12FieldMonster
	subs r4, #0x04
	adds r5, #0x10
	cmp r4, #0x00
	bne _08024CEA
_08024D0A:
	ldr r6, [sp, #0x03C]
	ldr r4, _08024DFC @ =0x0000010B
	add r4, r10
	ldm r6!, {r0}
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C__21FieldPlayerShotBulletPP11FieldObjecti
	ldr r0, [r6, #0x00]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C__21FieldPlayerShotBulletPP11FieldObjecti
	ldr r3, [sp, #0x03C]
	ldr r0, [r3, #0x08]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C__21FieldPlayerShotBulletPP11FieldObjecti
	ldr r6, [sp, #0x03C]
	ldr r0, [r6, #0x0C]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C__21FieldPlayerShotBulletPP11FieldObjecti
	ldr r0, [r6, #0x10]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C__21FieldPlayerShotBulletPP11FieldObjecti
	ldr r0, [r6, #0x14]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C__21FieldPlayerShotBulletPP11FieldObjecti
	ldr r0, [r6, #0x18]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C__21FieldPlayerShotBulletPP11FieldObjecti
	ldr r0, [r6, #0x1C]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C__21FieldPlayerShotBulletPP11FieldObjecti
_08024D64:
	ldr r0, _08024E00 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08024D84
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	ble _08024D84
	b _0802510E
_08024D84:
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	subs r0, #0x07
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _08024DB6
	mov r0, r10
	adds r0, #0xF8
	ldrh r1, [r0, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x40
	bne _08024DB6
	mov r0, r10
	adds r0, #0xFA
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1B
	mov r0, r10
	bl sub_80286AC__12FieldManageri
_08024DB6:
	ldr r1, _08024E04 @ =0x0000027A
	add r1, r10
	movs r0, #0x97
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r2, _08024E08 @ =0x0000027E
	add r2, r10
	strh r0, [r2, #0x00]
	movs r1, #0x9F
	lsls r1, r1, #0x02
	add r1, r10
	movs r0, #0x98
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xA0
	lsls r1, r1, #0x02
	add r1, r10
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08024E0C
	movs r0, #0x00
	strh r0, [r2, #0x00]
	b _08024E1E
_08024DF4: .4byte 0x00000246
_08024DF8: .4byte 0x00000113
_08024DFC: .4byte 0x0000010B
_08024E00: .4byte 0x00000291
_08024E04: .4byte 0x0000027A
_08024E08: .4byte 0x0000027E
_08024E0C:
	movs r3, #0x00
	ldsh r0, [r2, r3]
	ldr r1, _08024E34 @ =0x00000286
	add r1, r10
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _08024E1E
	strh r1, [r2, #0x00]
_08024E1E:
	movs r2, #0xA0
	lsls r2, r2, #0x02
	add r2, r10
	movs r4, #0x00
	ldsh r0, [r2, r4]
	cmp r0, #0x00
	bge _08024E38
	movs r0, #0x00
	strh r0, [r2, #0x00]
	b _08024E4C
	.byte 0x00, 0x00
_08024E34: .4byte 0x00000286
_08024E38:
	movs r6, #0x00
	ldsh r0, [r2, r6]
	movs r1, #0xA2
	lsls r1, r1, #0x02
	add r1, r10
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _08024E4C
	strh r1, [r2, #0x00]
_08024E4C:
	mov r7, r10
	adds r7, #0x28
	ldr r0, _08024FA0 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	str r7, [sp, #0x038]
	cmp r0, #0x00
	beq _08024E64
	b _08024FAC
_08024E64:
	ldr r0, _08024FA4 @ =0x0000010B
	add r0, r10
	ldrb r0, [r0, #0x00]
	mov r8, r0
	mov r0, r10
	adds r0, #0xA8
	str r0, [sp, #0x03C]
	mov r1, r8
	cmp r1, #0x00
	bne _08024E7A
	b _080250A8
_08024E7A:
	movs r3, #0xCE
	lsls r3, r3, #0x02
	mov r9, r3
	negs r0, r1
	ands r0, r2
	cmp r0, #0x00
	beq _08024EF0
	mov r4, r10
	ldr r0, [r4, #0x28]
	adds r1, r0, r3
	ldr r3, [r1, #0x00]
	adds r3, #0x40
	movs r6, #0x00
	ldsh r1, [r3, r6]
	adds r0, r0, r1
	ldr r1, _08024FA8 @ =0x0000027E
	add r1, r10
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0xA0
	lsls r2, r2, #0x02
	add r2, r10
	movs r4, #0x00
	ldsh r2, [r2, r4]
	ldr r4, [r3, #0x04]
	adds r3, r7, #0x0
	bl _call_via_r4
	mov r6, r10
	ldr r0, [r6, #0x28]
	mov r2, r9
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x30
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x34]
	movs r1, #0x00
	bl _call_via_r2
	ldr r0, [r6, #0x28]
	mov r4, r9
	adds r1, r0, r4
	ldr r1, [r1, #0x00]
	adds r1, #0x48
	movs r6, #0x00
	ldsh r2, [r1, r6]
	adds r0, r0, r2
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	movs r0, #0x01
	negs r0, r0
	add r8, r0
	adds r7, #0x04
	mov r1, r8
	cmp r1, #0x00
	bne _08024EF0
	b _080250A8
_08024EF0:
	ldr r0, [r7, #0x00]
	mov r2, r9
	adds r1, r0, r2
	ldr r3, [r1, #0x00]
	adds r3, #0x40
	movs r4, #0x00
	ldsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r6, _08024FA8 @ =0x0000027E
	add r6, r10
	movs r2, #0x00
	ldsh r1, [r6, r2]
	movs r5, #0xA0
	lsls r5, r5, #0x02
	add r5, r10
	movs r4, #0x00
	ldsh r2, [r5, r4]
	ldr r4, [r3, #0x04]
	ldr r3, [sp, #0x038]
	bl _call_via_r4
	ldr r0, [r7, #0x00]
	mov r2, r9
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x30
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x34]
	movs r1, #0x00
	bl _call_via_r2
	ldr r0, [r7, #0x00]
	mov r4, r9
	adds r1, r0, r4
	ldr r2, [r1, #0x00]
	adds r2, #0x48
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	ldr r0, [r7, #0x04]
	adds r1, r0, r4
	ldr r3, [r1, #0x00]
	adds r3, #0x40
	movs r4, #0x00
	ldsh r1, [r3, r4]
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r1, [r6, r2]
	movs r4, #0x00
	ldsh r2, [r5, r4]
	ldr r4, [r3, #0x04]
	ldr r3, [sp, #0x038]
	bl _call_via_r4
	ldr r0, [r7, #0x04]
	mov r6, r9
	adds r1, r0, r6
	ldr r2, [r1, #0x00]
	movs r3, #0x30
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x34]
	movs r1, #0x00
	bl _call_via_r2
	ldr r0, [r7, #0x04]
	adds r1, r0, r6
	ldr r2, [r1, #0x00]
	adds r2, #0x48
	movs r4, #0x00
	ldsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	movs r6, #0x02
	negs r6, r6
	add r8, r6
	adds r7, #0x08
	mov r0, r8
	cmp r0, #0x00
	bne _08024EF0
	b _080250A8
	.byte 0x00, 0x00
_08024FA0: .4byte 0x00000291
_08024FA4: .4byte 0x0000010B
_08024FA8: .4byte 0x0000027E
_08024FAC:
	ldr r0, _0802501C @ =0x0000010B
	add r0, r10
	ldrb r0, [r0, #0x00]
	mov r8, r0
	mov r1, r10
	adds r1, #0xA8
	str r1, [sp, #0x03C]
	cmp r0, #0x00
	beq _080250A8
	movs r3, #0xCE
	lsls r3, r3, #0x02
	mov r9, r3
	negs r0, r0
	ands r0, r2
	cmp r0, #0x00
	beq _08025024
	mov r4, r10
	ldr r0, [r4, #0x28]
	adds r1, r0, r3
	ldr r3, [r1, #0x00]
	adds r3, #0x40
	movs r6, #0x00
	ldsh r1, [r3, r6]
	adds r0, r0, r1
	ldr r1, _08025020 @ =0x0000027E
	add r1, r10
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0xA0
	lsls r2, r2, #0x02
	add r2, r10
	movs r4, #0x00
	ldsh r2, [r2, r4]
	ldr r4, [r3, #0x04]
	ldr r3, [sp, #0x038]
	bl _call_via_r4
	mov r6, r10
	ldr r0, [r6, #0x28]
	mov r2, r9
	adds r1, r0, r2
	ldr r1, [r1, #0x00]
	adds r1, #0x48
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	movs r4, #0x01
	negs r4, r4
	add r8, r4
	mov r7, r10
	adds r7, #0x2C
	b _080250A2
	.byte 0x00, 0x00
_0802501C: .4byte 0x0000010B
_08025020: .4byte 0x0000027E
_08025024:
	ldr r0, [r7, #0x00]
	mov r2, r9
	adds r1, r0, r2
	ldr r3, [r1, #0x00]
	adds r3, #0x40
	movs r4, #0x00
	ldsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r6, _08025170 @ =0x0000027E
	add r6, r10
	movs r2, #0x00
	ldsh r1, [r6, r2]
	movs r5, #0xA0
	lsls r5, r5, #0x02
	add r5, r10
	movs r4, #0x00
	ldsh r2, [r5, r4]
	ldr r4, [r3, #0x04]
	ldr r3, [sp, #0x038]
	bl _call_via_r4
	ldr r0, [r7, #0x00]
	mov r2, r9
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	adds r2, #0x48
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	ldr r0, [r7, #0x04]
	mov r4, r9
	adds r1, r0, r4
	ldr r3, [r1, #0x00]
	adds r3, #0x40
	movs r2, #0x00
	ldsh r1, [r3, r2]
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r1, [r6, r4]
	movs r6, #0x00
	ldsh r2, [r5, r6]
	ldr r4, [r3, #0x04]
	ldr r3, [sp, #0x038]
	bl _call_via_r4
	ldr r0, [r7, #0x04]
	mov r2, r9
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	adds r2, #0x48
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	movs r4, #0x02
	negs r4, r4
	add r8, r4
	adds r7, #0x08
_080250A2:
	mov r6, r8
	cmp r6, #0x00
	bne _08025024
_080250A8:
	ldr r6, [sp, #0x03C]
	movs r7, #0x08
_080250AC:
	ldr r0, [r6, #0x00]
	ldr r5, _08025170 @ =0x0000027E
	add r5, r10
	movs r2, #0x00
	ldsh r1, [r5, r2]
	movs r4, #0xA0
	lsls r4, r4, #0x02
	add r4, r10
	movs r3, #0x00
	ldsh r2, [r4, r3]
	bl sub_804FA94__21FieldPlayerShotBulletss
	ldr r0, [r6, #0x00]
	bl sub_804E450__21FieldPlayerShotBullet
	ldr r0, [r6, #0x04]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	movs r3, #0x00
	ldsh r2, [r4, r3]
	bl sub_804FA94__21FieldPlayerShotBulletss
	ldr r0, [r6, #0x04]
	bl sub_804E450__21FieldPlayerShotBullet
	ldr r0, [r6, #0x08]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	movs r3, #0x00
	ldsh r2, [r4, r3]
	bl sub_804FA94__21FieldPlayerShotBulletss
	ldr r0, [r6, #0x08]
	bl sub_804E450__21FieldPlayerShotBullet
	ldr r0, [r6, #0x0C]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	movs r3, #0x00
	ldsh r2, [r4, r3]
	bl sub_804FA94__21FieldPlayerShotBulletss
	ldr r0, [r6, #0x0C]
	bl sub_804E450__21FieldPlayerShotBullet
	subs r7, #0x04
	adds r6, #0x10
	cmp r7, #0x00
	bne _080250AC
_0802510E:
	ldr r0, _08025174 @ =0x00000291
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0802512E
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	blt _0802512E
	b _08025444
_0802512E:
	movs r4, #0x82
	lsls r4, r4, #0x02
	add r4, r10
	ldrb r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802518E
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r2, [r0, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r3, [r0, #0x00]
	ldr r1, [r2, #0x10]
	ldr r0, [r3, #0x10]
	cmp r1, r0
	bne _0802518E
	ldr r1, [r4, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x09
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	bne _08025178
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r2, r4
	b _08025186
	.byte 0x00, 0x00
_08025170: .4byte 0x0000027E
_08025174: .4byte 0x00000291
_08025178:
	movs r0, #0x80
	lsls r0, r0, #0x09
	cmp r1, r0
	bne _0802518E
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r0, r3, r6
_08025186:
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x0E]
	subs r0, #0x01
	strh r0, [r1, #0x0E]
_0802518E:
	movs r5, #0x80
	lsls r5, r5, #0x02
	add r5, r10
	ldr r3, [r5, #0x00]
	movs r1, #0x01
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	mov r2, r10
	adds r2, #0x28
	str r2, [sp, #0x038]
	cmp r1, r0
	beq _0802527C
	movs r0, #0x01
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x02
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	mov r8, r4
	adds r7, r0, r4
	ldr r0, [r7, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r1, r0, #0x1E
	lsrs r1, r1, #0x1E
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	cmp r0, r1
	bls _080251CC
	adds r0, r1, #0x0
_080251CC:
	adds r2, r0, #0x0
	mov r6, r8
	adds r0, r3, r6
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1E
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _080251EE
	movs r0, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_080251EE:
	ldr r0, [r5, #0x00]
	add r0, r8
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1C
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _08025210
	movs r0, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_08025210:
	ldr r0, [r5, #0x00]
	movs r6, #0xDB
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1E
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _08025234
	movs r0, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_08025234:
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1C
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _08025254
	movs r0, #0x03
	ands r2, r0
	lsls r1, r2, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_08025254:
	ldr r0, [r5, #0x00]
	add r0, r8
	ldr r2, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrh r1, [r0, #0x0E]
	ldrh r0, [r2, #0x0E]
	cmp r0, r1
	bcc _08025268
	subs r0, r1, #0x1
	strh r0, [r2, #0x0E]
_08025268:
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r2, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrh r1, [r0, #0x0E]
	ldrh r0, [r2, #0x0E]
	cmp r0, r1
	bcc _0802527C
	subs r0, r1, #0x1
	strh r0, [r2, #0x0E]
_0802527C:
	movs r5, #0x81
	lsls r5, r5, #0x02
	add r5, r10
	ldr r3, [r5, #0x00]
	movs r1, #0x01
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08025364
	adds r0, r1, #0x0
	lsls r0, r0, #0x02
	ldr r1, [sp, #0x038]
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	mov r8, r2
	adds r7, r0, r2
	ldr r0, [r7, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r1, r0, #0x1E
	lsrs r1, r1, #0x1E
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	cmp r0, r1
	bls _080252B4
	adds r0, r1, #0x0
_080252B4:
	adds r2, r0, #0x0
	mov r4, r8
	adds r0, r3, r4
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1E
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _080252D6
	movs r0, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_080252D6:
	ldr r0, [r5, #0x00]
	add r0, r8
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1C
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _080252F8
	movs r0, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_080252F8:
	ldr r0, [r5, #0x00]
	movs r6, #0xDB
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1E
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _0802531C
	movs r0, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_0802531C:
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldrb r3, [r4, #0x1F]
	lsls r0, r3, #0x1C
	lsrs r0, r0, #0x1E
	cmp r2, r0
	bge _0802533C
	movs r0, #0x03
	ands r2, r0
	lsls r1, r2, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
_0802533C:
	ldr r0, [r5, #0x00]
	add r0, r8
	ldr r2, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrh r1, [r0, #0x0E]
	ldrh r0, [r2, #0x0E]
	cmp r0, r1
	bcc _08025350
	subs r0, r1, #0x1
	strh r0, [r2, #0x0E]
_08025350:
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r2, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrh r1, [r0, #0x0E]
	ldrh r0, [r2, #0x0E]
	cmp r0, r1
	bcc _08025364
	subs r0, r1, #0x1
	strh r0, [r2, #0x0E]
_08025364:
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x10]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _08025376
	adds r0, #0xFF
_08025376:
	asrs r3, r0, #0x08
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x10]
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _0802538A
	adds r1, #0xFF
_0802538A:
	asrs r1, r1, #0x08
	cmp r3, r1
	blt _080253AA
	cmp r3, r1
	bne _080253D4
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x09
	cmp r0, r1
	bne _080253D4
_080253AA:
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r4, _080253D0 @ =0x0000010B
	add r4, r10
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_8049C38__20FieldPlayerCharacterPP11FieldObjecti
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_8049C38__20FieldPlayerCharacterPP11FieldObjecti
	b _08025412
_080253D0: .4byte 0x0000010B
_080253D4:
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r5, _080254B4 @ =0x0000010B
	add r5, r10
	ldrb r2, [r5, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_8049C38__20FieldPlayerCharacterPP11FieldObjecti
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r3, [r0, #0x00]
	ldr r1, [sp, #0x038]
	ldr r0, _080254B8 @ =0x00000246
	add r0, r10
	ldrb r0, [r0, #0x00]
	movs r4, #0x1C
	ands r4, r0
	cmp r4, #0x0C
	bne _08025404
	mov r1, r10
	adds r1, #0x2C
_08025404:
	ldrb r2, [r5, #0x00]
	cmp r4, #0x0C
	bne _0802540C
	subs r2, #0x01
_0802540C:
	adds r0, r3, #0x0
	bl sub_8049C38__20FieldPlayerCharacterPP11FieldObjecti
_08025412:
	mov r0, r10
	bl sub_8029624__12FieldManager
	bl sub_8021F7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r6, #0xD4
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x3F
	ands r0, r1
	cmp r0, #0x00
	beq _08025444
	mov r0, r10
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	add r1, r10
	strh r0, [r1, #0x00]
_08025444:
	movs r0, #0xC1
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r1, _080254BC @ =0x0000027E
	add r1, r10
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0xA0
	lsls r2, r2, #0x02
	add r2, r10
	movs r3, #0x00
	ldsh r2, [r2, r3]
	bl sub_8057C9C__4S_MPss
	ldr r4, [sp, #0x040]
	ldrb r7, [r4, #0x00]
	movs r0, #0x04
	ands r0, r7
	cmp r0, #0x00
	beq _080254A2
	mov r6, r10
	ldr r0, [r6, #0x1C]
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r3, r0, r1
	movs r0, #0xC7
	lsls r0, r0, #0x02
	add r0, r10
	ldr r2, [r0, #0x00]
	movs r0, #0x02
	ands r0, r7
	movs r1, #0x74
	cmp r0, #0x00
	bne _0802548C
	movs r1, #0x04
_0802548C:
	adds r0, r2, #0x0
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_80EF618
	ldr r2, [sp, #0x040]
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080254A2:
	add sp, #0x048
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080254B4: .4byte 0x0000010B
_080254B8: .4byte 0x00000246
_080254BC: .4byte 0x0000027E
