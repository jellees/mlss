	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_8045A94__11FieldObjectiiiiiUs
sub_8045A94__11FieldObjectiiiiiUs:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	str r1, [sp, #0x000]
	adds r4, r3, #0x0
	ldr r6, [sp, #0x028]
	ldr r7, [sp, #0x02C]
	ldr r0, [sp, #0x030]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	lsls r4, r4, #0x08
	lsls r6, r6, #0x08
	lsls r7, r7, #0x08
	cmp r2, #0x01
	bne _08045ACC
	ldr r0, [r5, #0x0C]
	adds r4, r4, r0
	ldr r0, [r5, #0x10]
	adds r6, r6, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	adds r7, r7, r0
_08045ACC:
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldr r0, [r5, #0x0C]
	str r0, [r3, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r1, r1, r5
	mov r12, r1
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	movs r2, #0xB1
	lsls r2, r2, #0x02
	adds r2, r2, r5
	mov r8, r2
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r2, r5, r0
	str r4, [r2, #0x00]
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r4, r5, r1
	str r6, [r4, #0x00]
	adds r1, #0x04
	adds r0, r5, r1
	str r7, [r0, #0x00]
	ldr r1, [r3, #0x00]
	asrs r1, r1, #0x08
	ldr r0, [r2, #0x00]
	asrs r0, r0, #0x08
	cmp r1, r0
	bne _08045B44
	mov r2, r12
	ldr r1, [r2, #0x00]
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x00]
	asrs r0, r0, #0x08
	cmp r1, r0
	bne _08045B44
	ldr r3, _08045B40 @ =0x0000020D
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08045B3C
	mov r4, r8
	ldr r0, [r4, #0x00]
	asrs r0, r0, #0x08
	asrs r1, r7, #0x08
	cmp r0, r1
	bne _08045B44
_08045B3C:
	movs r0, #0x00
	b _08045ED8
_08045B40: .4byte 0x0000020D
_08045B44:
	movs r7, #0xB3
	lsls r7, r7, #0x02
	adds r0, r5, r7
	movs r2, #0xAF
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r7, r2, r0
	movs r3, #0xB0
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r1, r5, r4
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r6, r2, r0
	ldr r1, _08045B88 @ =0x0000020D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08045B8C
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r0, r5, r2
	adds r3, #0x04
	adds r1, r5, r3
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r4, r2, r0
	b _08045B8E
_08045B88: .4byte 0x0000020D
_08045B8C:
	movs r4, #0x00
_08045B8E:
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _08045B96
	adds r0, #0xFF
_08045B96:
	asrs r0, r0, #0x08
	mov r10, r0
	adds r1, r6, #0x0
	cmp r6, #0x00
	bge _08045BA2
	adds r1, #0xFF
_08045BA2:
	asrs r1, r1, #0x08
	mov r9, r1
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _08045BAE
	adds r1, #0xFF
_08045BAE:
	asrs r1, r1, #0x08
	mov r8, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r7, r2
	movs r0, #0x80
	lsls r0, r0, #0x06
	cmp r1, r0
	bhi _08045BD2
	ldr r0, _08045C4C @ =0xFFFFF000
	cmp r6, r0
	blt _08045BD2
	cmp r6, r2
	bgt _08045BD2
	cmp r4, r0
	blt _08045BD2
	cmp r4, r2
	ble _08045BD8
_08045BD2:
	mov r7, r10
	mov r6, r9
	mov r4, r8
_08045BD8:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0x0
	asrs r2, r1, #0x08
	adds r1, r0, #0x0
	asrs r0, r1, #0x07
	movs r1, #0x01
	ands r0, r1
	adds r0, r2, r0
	strb r0, [r5, #0x02]
	ldr r2, _08045C50 @ =0x0000020D
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08045C36
	ldr r2, _08045C54 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0x0
	asrs r1, r1, #0x08
	asrs r0, r0, #0x07
	movs r3, #0x01
	ands r0, r3
	adds r0, r1, r0
	strb r0, [r5, #0x03]
_08045C36:
	ldr r4, [sp, #0x000]
	cmp r4, #0x01
	beq _08045C3E
	b _08045E40
_08045C3E:
	ldr r7, [sp, #0x004]
	cmp r7, #0x00
	bne _08045C5C
	ldr r1, _08045C58 @ =0x0000023E
	adds r0, r5, r1
	ldrh r2, [r0, #0x00]
	b _08045C5E
_08045C4C: .4byte 0xFFFFF000
_08045C50: .4byte 0x0000020D
_08045C54: .4byte 0x03001038
_08045C58: .4byte 0x0000023E
_08045C5C:
	ldr r2, [sp, #0x004]
_08045C5E:
	ldr r3, _08045CEC @ =0x0000020D
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08045D08
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r1, _08045CF0 @ =0x08198504
	ldrb r0, [r5, #0x02]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	muls r0, r2
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _08045C88
	ldr r7, _08045CF4 @ =0x00003FFF
	adds r1, r0, r7
_08045C88:
	asrs r1, r1, #0x0E
	cmp r0, #0x00
	bge _08045C92
	ldr r3, _08045CF8 @ =0x00001FFF
	adds r0, r0, r3
_08045C92:
	asrs r0, r0, #0x0D
	movs r3, #0x01
	ands r0, r3
	adds r0, r1, r0
	movs r4, #0xB6
	lsls r4, r4, #0x02
	adds r1, r5, r4
	strh r0, [r1, #0x00]
	ldr r1, _08045CFC @ =0x08198584
	ldrb r0, [r5, #0x02]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r7, #0x00
	ldsh r0, [r0, r7]
	muls r0, r2
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _08045CBA
	ldr r2, _08045CF4 @ =0x00003FFF
	adds r1, r0, r2
_08045CBA:
	asrs r1, r1, #0x0E
	cmp r0, #0x00
	bge _08045CC4
	ldr r4, _08045CF8 @ =0x00001FFF
	adds r0, r0, r4
_08045CC4:
	asrs r0, r0, #0x0D
	ands r0, r3
	adds r0, r1, r0
	negs r0, r0
	ldr r7, _08045D00 @ =0x000002DA
	adds r1, r5, r7
	strh r0, [r1, #0x00]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, _08045D04 @ =0x000002B7
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	subs r0, #0x08
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	b _08045E02
_08045CEC: .4byte 0x0000020D
_08045CF0: .4byte 0x08198504
_08045CF4: .4byte 0x00003FFF
_08045CF8: .4byte 0x00001FFF
_08045CFC: .4byte 0x08198584
_08045D00: .4byte 0x000002DA
_08045D04: .4byte 0x000002B7
_08045D08:
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	ldr r2, _08045E24 @ =0x08198504
	mov r8, r2
	ldrb r0, [r5, #0x02]
	lsls r0, r0, #0x01
	add r0, r8
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r4
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _08045D26
	ldr r7, _08045E28 @ =0x00003FFF
	adds r1, r0, r7
_08045D26:
	asrs r2, r1, #0x0E
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _08045D32
	ldr r3, _08045E2C @ =0x00001FFF
	adds r1, r0, r3
_08045D32:
	asrs r0, r1, #0x0D
	movs r7, #0x01
	mov r9, r7
	mov r1, r9
	ands r0, r1
	adds r0, r2, r0
	ldr r3, _08045E30 @ =0x08198584
	ldrb r1, [r5, #0x03]
	lsls r1, r1, #0x01
	adds r1, r1, r3
	movs r2, #0x00
	ldsh r1, [r1, r2]
	muls r0, r1
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _08045D56
	ldr r7, _08045E28 @ =0x00003FFF
	adds r1, r0, r7
_08045D56:
	asrs r1, r1, #0x0E
	cmp r0, #0x00
	bge _08045D60
	ldr r2, _08045E2C @ =0x00001FFF
	adds r0, r0, r2
_08045D60:
	asrs r0, r0, #0x0D
	movs r6, #0x01
	ands r0, r6
	adds r0, r1, r0
	movs r7, #0xB6
	lsls r7, r7, #0x02
	adds r1, r5, r7
	strh r0, [r1, #0x00]
	ldrb r0, [r5, #0x02]
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	muls r0, r4
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _08045D86
	ldr r2, _08045E28 @ =0x00003FFF
	adds r1, r0, r2
_08045D86:
	asrs r2, r1, #0x0E
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _08045D92
	ldr r7, _08045E2C @ =0x00001FFF
	adds r1, r0, r7
_08045D92:
	asrs r0, r1, #0x0D
	mov r1, r9
	ands r0, r1
	adds r0, r2, r0
	ldrb r1, [r5, #0x03]
	lsls r1, r1, #0x01
	adds r1, r1, r3
	movs r2, #0x00
	ldsh r1, [r1, r2]
	muls r0, r1
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _08045DB0
	ldr r3, _08045E28 @ =0x00003FFF
	adds r1, r0, r3
_08045DB0:
	asrs r1, r1, #0x0E
	cmp r0, #0x00
	bge _08045DBA
	ldr r7, _08045E2C @ =0x00001FFF
	adds r0, r0, r7
_08045DBA:
	asrs r0, r0, #0x0D
	ands r0, r6
	adds r0, r1, r0
	negs r0, r0
	ldr r2, _08045E34 @ =0x000002DA
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	ldrb r0, [r5, #0x03]
	lsls r0, r0, #0x01
	add r0, r8
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r4
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _08045DDE
	ldr r4, _08045E28 @ =0x00003FFF
	adds r1, r0, r4
_08045DDE:
	asrs r1, r1, #0x0E
	cmp r0, #0x00
	bge _08045DE8
	ldr r7, _08045E2C @ =0x00001FFF
	adds r0, r0, r7
_08045DE8:
	asrs r0, r0, #0x0D
	ands r0, r6
	adds r0, r1, r0
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	ldr r3, _08045E38 @ =0x000002B7
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
_08045E02:
	strb r0, [r2, #0x00]
	movs r4, #0xB6
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldrh r1, [r0, #0x00]
	ldr r7, _08045E3C @ =0x00000242
	adds r0, r5, r7
	strh r1, [r0, #0x00]
	ldr r1, _08045E34 @ =0x000002DA
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	b _08045EB8
	.byte 0x00, 0x00
_08045E24: .4byte 0x08198504
_08045E28: .4byte 0x00003FFF
_08045E2C: .4byte 0x00001FFF
_08045E30: .4byte 0x08198584
_08045E34: .4byte 0x000002DA
_08045E38: .4byte 0x000002B7
_08045E3C: .4byte 0x00000242
_08045E40:
	movs r3, #0xB8
	lsls r3, r3, #0x02
	adds r4, r5, r3
	mov r7, sp
	ldrh r7, [r7, #0x04]
	strh r7, [r4, #0x00]
	ldr r2, _08045EE8 @ =0x03001038
	mov r1, r10
	mov r0, r10
	muls r0, r1
	mov r3, r9
	mov r1, r9
	muls r1, r3
	adds r0, r0, r1
	mov r7, r8
	mov r1, r8
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	lsls r0, r0, #0x08
	ldrh r1, [r4, #0x00]
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, _08045EEC @ =0x08198504
	ldrb r0, [r5, #0x02]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r2, #0x0
	muls r1, r0
	cmp r1, #0x00
	bge _08045E8E
	ldr r3, _08045EF0 @ =0x00003FFF
	adds r1, r1, r3
_08045E8E:
	asrs r1, r1, #0x0E
	ldr r4, _08045EF4 @ =0x00000242
	adds r0, r5, r4
	strh r1, [r0, #0x00]
	ldr r1, _08045EF8 @ =0x08198584
	ldrb r0, [r5, #0x02]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r7, #0x00
	ldsh r0, [r0, r7]
	muls r0, r2
	cmp r0, #0x00
	bge _08045EAC
	ldr r1, _08045EF0 @ =0x00003FFF
	adds r0, r0, r1
_08045EAC:
	asrs r0, r0, #0x0E
	negs r0, r0
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r5, r2
	strh r0, [r1, #0x00]
_08045EB8:
	ldr r3, _08045EFC @ =0x000002DE
	adds r1, r5, r3
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r4, _08045F00 @ =0x000002B5
	adds r2, r5, r4
	movs r0, #0x07
	ldr r7, [sp, #0x000]
	ands r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #0x00]
	movs r0, #0x01
_08045ED8:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08045EE8: .4byte 0x03001038
_08045EEC: .4byte 0x08198504
_08045EF0: .4byte 0x00003FFF
_08045EF4: .4byte 0x00000242
_08045EF8: .4byte 0x08198584
_08045EFC: .4byte 0x000002DE
_08045F00: .4byte 0x000002B5
