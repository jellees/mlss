	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_802EF18__12FieldManager
sub_802EF18__12FieldManager:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r6, r0, #0x0
	ldr r0, _0802F058 @ =0x00000246
	adds r0, r0, r6
	mov r12, r0
	ldrb r1, [r0, #0x00]
	movs r2, #0x1C
	mov r9, r2
	mov r0, r9
	ands r0, r1
	cmp r0, #0x1C
	bne _0802EF48
	movs r3, #0x99
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0802EF48
	b _0802F47C
_0802EF48:
	movs r7, #0x00
	mov r10, r7
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r7, r6, r2
	ldr r2, [r7, #0x00]
	ldr r5, _0802F05C @ =0x0000020F
	adds r2, r2, r5
	ldrb r4, [r2, #0x00]
	movs r1, #0x05
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r4
	strb r0, [r2, #0x00]
	adds r3, r3, r5
	ldrb r0, [r3, #0x00]
	ands r1, r0
	strb r1, [r3, #0x00]
	mov r0, r12
	ldrb r3, [r0, #0x00]
	mov r0, r9
	ands r0, r3
	cmp r0, #0x14
	bne _0802F068
	adds r1, r6, #0x0
	adds r1, #0xFB
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r3, #0x80
	lsls r3, r3, #0x03
	asrs r3, r0
	movs r5, #0x00
	movs r0, #0x00
	str r1, [sp, #0x018]
	adds r2, r1, #0x0
	movs r4, #0x80
	lsls r4, r4, #0x01
	movs r7, #0x0F
_0802EF9E:
	adds r5, r5, r3
	adds r0, #0x01
	cmp r0, #0x04
	bne _0802EFB8
	cmp r3, #0x00
	ble _0802EFB6
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	adds r0, r4, #0x0
	asrs r0, r1
	subs r3, r3, r0
_0802EFB6:
	movs r0, #0x00
_0802EFB8:
	adds r5, r5, r3
	adds r0, #0x01
	cmp r0, #0x04
	bne _0802EFD2
	cmp r3, #0x00
	ble _0802EFD0
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	adds r0, r4, #0x0
	asrs r0, r1
	subs r3, r3, r0
_0802EFD0:
	movs r0, #0x00
_0802EFD2:
	adds r5, r5, r3
	adds r0, #0x01
	cmp r0, #0x04
	bne _0802EFEC
	cmp r3, #0x00
	ble _0802EFEA
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	adds r0, r4, #0x0
	asrs r0, r1
	subs r3, r3, r0
_0802EFEA:
	movs r0, #0x00
_0802EFEC:
	adds r5, r5, r3
	adds r0, #0x01
	cmp r0, #0x04
	bne _0802F006
	cmp r3, #0x00
	ble _0802F004
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	adds r0, r4, #0x0
	asrs r0, r1
	subs r3, r3, r0
_0802F004:
	movs r0, #0x00
_0802F006:
	subs r7, #0x04
	cmp r7, #0x00
	bge _0802EF9E
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0802F014
	adds r0, #0xFF
_0802F014:
	asrs r5, r0, #0x08
	ldr r1, _0802F060 @ =0x0000020B
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r4, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r3, [r0, #0x00]
	ldr r7, [sp, #0x018]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r2, #0x80
	lsls r2, r2, #0x03
	asrs r2, r0
	ldr r0, _0802F064 @ =0x0000023E
	adds r1, r3, r0
	strh r2, [r1, #0x00]
	adds r0, r4, r0
	strh r2, [r0, #0x00]
	movs r0, #0x98
	lsls r0, r0, #0x02
	adds r3, r3, r0
	strh r2, [r3, #0x00]
	adds r4, r4, r0
	strh r2, [r4, #0x00]
	b _0802F0C4
_0802F058: .4byte 0x00000246
_0802F05C: .4byte 0x0000020F
_0802F060: .4byte 0x0000020B
_0802F064: .4byte 0x0000023E
_0802F068:
	ldr r0, [r7, #0x00]
	ldr r1, _0802F07C @ =0x0000035B
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	beq _0802F080
	movs r5, #0x20
	b _0802F0A8
_0802F07C: .4byte 0x0000035B
_0802F080:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	bne _0802F098
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0x00
	bne _0802F098
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _0802F09C
_0802F098:
	movs r5, #0x10
	b _0802F0A8
_0802F09C:
	ldr r1, _0802F0E0 @ =0x0839FA34
	lsls r0, r3, #0x1B
	lsrs r0, r0, #0x1D
	adds r0, r0, r1
	movs r5, #0x00
	ldsb r5, [r0, r5]
_0802F0A8:
	adds r2, r6, #0x0
	adds r2, #0xFB
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	str r2, [sp, #0x018]
	cmp r0, #0x00
	beq _0802F0BE
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r5, r0, #0x01
_0802F0BE:
	cmp r5, #0x20
	ble _0802F0C4
	movs r5, #0x20
_0802F0C4:
	movs r2, #0xAE
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	beq _0802F11C
	cmp r0, #0x02
	bgt _0802F0E4
	cmp r0, #0x00
	beq _0802F0EE
	b _0802F16A
	.byte 0x00, 0x00
_0802F0E0: .4byte 0x0839FA34
_0802F0E4:
	cmp r0, #0x04
	beq _0802F0FE
	cmp r0, #0x06
	beq _0802F142
	b _0802F16A
_0802F0EE:
	movs r3, #0x00
	str r3, [sp, #0x00C]
	negs r5, r5
	mov r8, r5
	movs r7, #0x80
	lsls r7, r7, #0x02
	adds r0, r6, r7
	b _0802F10A
_0802F0FE:
	movs r0, #0x00
	str r0, [sp, #0x00C]
	mov r8, r5
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, r1
_0802F10A:
	ldr r0, [r0, #0x00]
	adds r0, #0x26
	ldrb r1, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x0C
	bne _0802F16A
	mov r10, r8
	b _0802F16A
_0802F11C:
	str r5, [sp, #0x00C]
	movs r2, #0x00
	mov r8, r2
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	movs r1, #0x0C
	ands r1, r0
	cmp r1, #0x04
	beq _0802F168
	cmp r1, #0x08
	bne _0802F16A
	ldr r7, [sp, #0x00C]
	negs r7, r7
	mov r10, r7
	b _0802F16A
_0802F142:
	negs r0, r5
	str r0, [sp, #0x00C]
	movs r1, #0x00
	mov r8, r1
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	movs r1, #0x0C
	ands r1, r0
	cmp r1, #0x04
	bne _0802F164
	ldr r3, [sp, #0x00C]
	mov r10, r3
	b _0802F16A
_0802F164:
	cmp r1, #0x08
	bne _0802F16A
_0802F168:
	mov r10, r5
_0802F16A:
	movs r7, #0x80
	lsls r7, r7, #0x02
	adds r5, r6, r7
	ldr r1, [r5, #0x00]
	ldr r0, [sp, #0x00C]
	lsls r4, r0, #0x08
	ldr r0, [r1, #0x0C]
	subs r0, r0, r4
	str r0, [r1, #0x0C]
	ldr r1, [r5, #0x00]
	mov r2, r8
	lsls r3, r2, #0x08
	ldr r0, [r1, #0x10]
	subs r0, r0, r3
	str r0, [r1, #0x10]
	ldr r1, [r5, #0x00]
	mov r7, r10
	lsls r2, r7, #0x08
	ldr r0, [r1, #0x14]
	subs r0, r0, r2
	str r0, [r1, #0x14]
	ldr r0, _0802F21C @ =0x00000246
	adds r0, r6, r0
	str r0, [sp, #0x01C]
	ldrb r1, [r0, #0x00]
	movs r7, #0x1C
	mov r9, r7
	mov r0, r9
	ands r0, r1
	str r3, [sp, #0x010]
	str r2, [sp, #0x014]
	cmp r0, #0x1C
	beq _0802F1B6
	ldr r0, [r5, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	bl sub_804B360__20FieldPlayerCharacterUcUc
_0802F1B6:
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x0C]
	str r0, [r1, #0x34]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x10]
	str r0, [r1, #0x38]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x14]
	str r0, [r1, #0x3C]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x18]
	str r0, [r1, #0x40]
	ldr r2, [r5, #0x00]
	movs r0, #0x4E
	adds r0, r0, r2
	mov r12, r0
	ldrb r3, [r0, #0x00]
	movs r1, #0x31
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	movs r3, #0x0D
	negs r3, r3
	ands r0, r3
	mov r7, r12
	strb r0, [r7, #0x00]
	adds r2, #0x26
	ldrb r0, [r2, #0x00]
	ands r1, r0
	ands r1, r3
	strb r1, [r2, #0x00]
	ldr r0, [sp, #0x01C]
	ldrb r1, [r0, #0x00]
	mov r0, r9
	ands r0, r1
	cmp r0, #0x14
	bne _0802F224
	ldr r2, _0802F220 @ =0x0000026E
	adds r1, r6, r2
	movs r0, #0x04
	strh r0, [r1, #0x00]
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r2, [r0, #0x00]
	ldr r1, [r5, #0x00]
	movs r0, #0x71
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	b _0802F24C
	.byte 0x00, 0x00
_0802F21C: .4byte 0x00000246
_0802F220: .4byte 0x0000026E
_0802F224:
	ldr r1, [r5, #0x00]
	ldr r7, _0802F37C @ =0x0000020D
	adds r1, r1, r7
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	mov r1, r8
	str r1, [sp, #0x000]
	mov r2, r10
	str r2, [sp, #0x004]
	movs r1, #0x10
	str r1, [sp, #0x008]
	movs r1, #0x02
	movs r2, #0x01
	ldr r3, [sp, #0x00C]
	bl sub_8045A94__11FieldObjectiiiiiUs
_0802F24C:
	ldr r3, _0802F380 @ =0x00000246
	adds r7, r6, r3
	ldrb r1, [r7, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x1C
	beq _0802F30C
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x10
	mov r9, r2
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	beq _0802F304
	subs r3, #0x42
	adds r5, r6, r3
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x0C]
	subs r0, r0, r4
	str r0, [r1, #0x0C]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x10]
	ldr r2, [sp, #0x010]
	subs r0, r0, r2
	str r0, [r1, #0x10]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x14]
	ldr r3, [sp, #0x014]
	subs r0, r0, r3
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	bl sub_804B360__20FieldPlayerCharacterUcUc
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x0C]
	str r0, [r1, #0x34]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x10]
	str r0, [r1, #0x38]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x14]
	str r0, [r1, #0x3C]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x18]
	str r0, [r1, #0x40]
	ldr r2, [r5, #0x00]
	adds r4, r2, #0x0
	adds r4, #0x4E
	ldrb r3, [r4, #0x00]
	movs r1, #0x31
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	movs r3, #0x0D
	negs r3, r3
	ands r0, r3
	strb r0, [r4, #0x00]
	adds r2, #0x26
	ldrb r0, [r2, #0x00]
	ands r1, r0
	ands r1, r3
	strb r1, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1D
	cmp r0, #0x04
	bhi _0802F304
	ldr r1, [r5, #0x00]
	ldr r7, _0802F37C @ =0x0000020D
	adds r1, r1, r7
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	mov r1, r8
	str r1, [sp, #0x000]
	mov r2, r10
	str r2, [sp, #0x004]
	mov r3, r9
	str r3, [sp, #0x008]
	movs r1, #0x02
	movs r2, #0x01
	ldr r3, [sp, #0x00C]
	bl sub_8045A94__11FieldObjectiiiiiUs
_0802F304:
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_802DF80__12FieldManageri
_0802F30C:
	ldr r7, _0802F380 @ =0x00000246
	adds r0, r6, r7
	ldrb r0, [r0, #0x00]
	movs r3, #0x1C
	ands r3, r0
	cmp r3, #0x00
	beq _0802F31C
	b _0802F458
_0802F31C:
	ldr r0, [sp, #0x018]
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0802F32A
	b _0802F458
_0802F32A:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bgt _0802F33A
	b _0802F458
_0802F33A:
	cmp r0, #0xFF
	bgt _0802F384
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r5, #0x01
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802F352
	str r3, [r2, #0x18]
_0802F352:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802F458
	movs r7, #0x81
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r2, [r0, #0x00]
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802F458
	str r3, [r2, #0x18]
	b _0802F458
	.byte 0x00, 0x00
_0802F37C: .4byte 0x0000020D
_0802F380: .4byte 0x00000246
_0802F384:
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0802F3E0
	adds r0, r2, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0802F3BC
	ldr r3, _0802F3B4 @ =0x0000035B
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _0802F3B8 @ =0x0000103B
	cmp r0, #0x00
	beq _0802F3BE
	adds r1, #0x01
	b _0802F3BE
	.byte 0x00, 0x00
_0802F3B4: .4byte 0x0000035B
_0802F3B8: .4byte 0x0000103B
_0802F3BC:
	ldr r1, _0802F428 @ =0x00001052
_0802F3BE:
	adds r0, r2, #0x0
	bl sub_8049000__20FieldPlayerCharacterUs
	movs r7, #0x80
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r2, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0802F3E0:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802F458
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	movs r3, #0x83
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0802F458
	adds r0, r2, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0802F434
	ldr r7, _0802F42C @ =0x0000035B
	adds r0, r2, r7
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _0802F430 @ =0x0000103B
	cmp r0, #0x00
	beq _0802F436
	adds r1, #0x01
	b _0802F436
	.byte 0x00, 0x00
_0802F428: .4byte 0x00001052
_0802F42C: .4byte 0x0000035B
_0802F430: .4byte 0x0000103B
_0802F434:
	ldr r1, _0802F48C @ =0x00001052
_0802F436:
	adds r0, r2, #0x0
	bl sub_8049000__20FieldPlayerCharacterUs
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0802F458:
	movs r7, #0xAE
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0802F47C
	ldr r0, _0802F490 @ =0x0000020A
	adds r2, r6, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _0802F494 @ =0xFFFFFE7F
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
_0802F47C:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0802F48C: .4byte 0x00001052
_0802F490: .4byte 0x0000020A
_0802F494: .4byte 0xFFFFFE7F
	thumb_func_start sub_802F498__12FieldManager
