	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8045A94
sub_8045A94:
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
	thumb_func_start sub_8045F04
sub_8045F04:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	str r1, [sp, #0x018]
	adds r5, r2, #0x0
	mov r8, r3
	ldr r0, [sp, #0x048]
	mov r9, r0
	ldr r1, [sp, #0x04C]
	mov r10, r1
	ldr r0, [sp, #0x05C]
	ldr r1, [sp, #0x060]
	ldr r2, [sp, #0x064]
	ldr r3, [sp, #0x068]
	ldr r4, [sp, #0x06C]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x020]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x024]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r12, r3
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	ldr r2, [sp, #0x018]
	cmp r2, #0x04
	bne _08045F50
	cmp r3, #0x00
	beq _08045FA6
_08045F50:
	mov r3, r8
	lsls r3, r3, #0x08
	mov r8, r3
	mov r0, r9
	lsls r0, r0, #0x08
	mov r9, r0
	mov r1, r10
	lsls r1, r1, #0x08
	mov r10, r1
	ldr r2, [r7, #0x0C]
	cmp r5, #0x01
	bne _08045F76
	add r8, r2
	ldr r0, [r7, #0x10]
	add r9, r0
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	add r10, r0
_08045F76:
	movs r5, #0xAF
	lsls r5, r5, #0x02
	adds r3, r7, r5
	str r2, [r3, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r0, [r7, #0x10]
	str r0, [r4, #0x00]
	movs r1, #0xB1
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	ldr r0, [r3, #0x00]
	cmp r8, r0
	bne _08045FAA
	ldr r0, [r4, #0x00]
	cmp r9, r0
	bne _08045FAA
	cmp r10, r1
	bne _08045FAA
_08045FA6:
	movs r0, #0x00
	b _080461A4
_08045FAA:
	movs r2, #0xB9
	lsls r2, r2, #0x02
	adds r0, r7, r2
	mov r3, r8
	str r3, [r0, #0x00]
	movs r5, #0xBA
	lsls r5, r5, #0x02
	adds r0, r7, r5
	mov r1, r9
	str r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r7, r2
	mov r3, r10
	str r3, [r0, #0x00]
	ldr r5, [sp, #0x070]
	cmp r5, #0x00
	blt _08045FD2
	movs r0, #0x01
	str r0, [sp, #0x070]
	b _08045FD8
_08045FD2:
	movs r1, #0x01
	negs r1, r1
	str r1, [sp, #0x070]
_08045FD8:
	movs r2, #0xBC
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r3, [sp, #0x070]
	mov r0, r12
	muls r0, r3
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	movs r5, #0xBD
	lsls r5, r5, #0x02
	adds r1, r7, r5
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x018]
	cmp r0, #0x04
	bne _08046002
	movs r1, #0xB8
	lsls r1, r1, #0x02
	adds r0, r7, r1
	strh r6, [r0, #0x00]
	b _080460C4
_08046002:
	ldr r2, [sp, #0x018]
	cmp r2, #0x03
	bne _080460B6
	cmp r6, #0x00
	bne _08046012
	ldr r3, _08046160 @ =0x0000023E
	adds r0, r7, r3
	ldrh r6, [r0, #0x00]
_08046012:
	movs r5, #0xB9
	lsls r5, r5, #0x02
	adds r0, r7, r5
	movs r1, #0xAF
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x01
	ldr r3, [sp, #0x050]
	subs r0, r2, r3
	muls r0, r1
	cmp r0, #0x00
	bge _08046034
	adds r0, #0xFF
_08046034:
	asrs r4, r0, #0x08
	movs r5, #0xBA
	lsls r5, r5, #0x02
	adds r0, r7, r5
	movs r3, #0xB0
	lsls r3, r3, #0x02
	adds r1, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	ldr r5, [sp, #0x054]
	subs r1, r2, r5
	muls r0, r1
	cmp r0, #0x00
	bge _08046054
	adds r0, #0xFF
_08046054:
	asrs r3, r0, #0x08
	movs r1, #0xBB
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r5, #0xB1
	lsls r5, r5, #0x02
	adds r1, r7, r5
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	ldr r5, [sp, #0x058]
	subs r1, r2, r5
	muls r0, r1
	cmp r0, #0x00
	bge _08046074
	adds r0, #0xFF
_08046074:
	asrs r2, r0, #0x08
	ldr r5, _08046164 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r5, #0x00]
	bl _call_via_r1
	lsls r0, r0, #0x01
	ldr r1, _08046168 @ =0x00003243
	muls r0, r1
	ldr r4, _0804616C @ =0x0819832C
	ldr r1, _08046170 @ =0x08198220
	subs r4, r4, r1
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r1, r0, #0x0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x80
	lsls r0, r0, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080460B6:
	ldr r0, [sp, #0x070]
	adds r1, r6, #0x0
	muls r1, r0
	movs r2, #0xBE
	lsls r2, r2, #0x02
	adds r0, r7, r2
	strh r1, [r0, #0x00]
_080460C4:
	ldr r3, _08046174 @ =0x000002DE
	adds r1, r7, r3
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r5, _08046178 @ =0x000002B5
	adds r3, r7, r5
	movs r6, #0x07
	ldr r0, [sp, #0x018]
	ands r0, r6
	str r0, [sp, #0x018]
	ldrb r1, [r3, #0x00]
	movs r2, #0x08
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r1
	ldr r1, [sp, #0x018]
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0x1F
	ldr r3, [sp, #0x074]
	ands r1, r3
	ldr r0, _0804617C @ =0x000002B7
	adds r5, r7, r0
	lsls r1, r1, #0x03
	ldrb r3, [r5, #0x00]
	movs r4, #0x07
	adds r0, r4, #0x0
	ands r0, r3
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r1, [sp, #0x074]
	lsrs r0, r1, #0x05
	ands r0, r4
	movs r5, #0xAE
	lsls r5, r5, #0x02
	adds r3, r7, r5
	ands r0, r6
	ldrb r1, [r3, #0x00]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	movs r6, #0xF6
	lsls r6, r6, #0x01
	adds r5, r7, r6
	movs r1, #0xAF
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	mov r2, r8
	subs r4, r0, r2
	movs r3, #0xB0
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	mov r6, r9
	subs r2, r0, r6
	subs r1, #0xAF
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08046180
	subs r3, #0x64
	adds r0, r7, r3
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08046180
	movs r6, #0xB1
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	mov r1, r10
	subs r3, r0, r1
	b _08046182
	.byte 0x00, 0x00
_08046160: .4byte 0x0000023E
_08046164: .4byte 0x03001038
_08046168: .4byte 0x00003243
_0804616C: .4byte 0x0819832C
_08046170: .4byte 0x08198220
_08046174: .4byte 0x000002DE
_08046178: .4byte 0x000002B5
_0804617C: .4byte 0x000002B7
_08046180:
	movs r3, #0x00
_08046182:
	ldr r6, [sp, #0x050]
	str r6, [sp, #0x000]
	ldr r0, [sp, #0x054]
	str r0, [sp, #0x004]
	ldr r1, [sp, #0x058]
	str r1, [sp, #0x008]
	ldr r6, [sp, #0x01C]
	str r6, [sp, #0x00C]
	ldr r0, [sp, #0x020]
	str r0, [sp, #0x010]
	ldr r1, [sp, #0x024]
	str r1, [sp, #0x014]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_801B5A0
	movs r0, #0x01
_080461A4:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80461B4
sub_80461B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r4, #0x01
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080461D6
	b _080465C6
_080461D6:
	ldr r3, _08046208 @ =0x000002B5
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080461E8
	b _080465B2
_080461E8:
	ldr r0, _0804620C @ =0x000002DE
	adds r6, r5, r0
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bne _080461FE
	b _08046314
_080461FE:
	cmp r0, #0x02
	bhi _08046210
	cmp r0, #0x01
	beq _0804625C
	b _08046568
_08046208: .4byte 0x000002B5
_0804620C: .4byte 0x000002DE
_08046210:
	cmp r0, #0x05
	bls _08046216
	b _08046568
_08046216:
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x04
	beq _08046220
	b _080463D4
_08046220:
	ldr r2, _08046250 @ =0x03001038
	ldr r0, _08046254 @ =0x0819832C
	ldr r1, _08046258 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0xBC
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrh r1, [r6, #0x00]
	ldr r0, [r0, #0x00]
	muls r0, r1
	movs r3, #0xB8
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r2, #0xBD
	lsls r2, r2, #0x02
	adds r1, r5, r2
	str r0, [r1, #0x00]
	b _080463EA
	.byte 0x00, 0x00
_08046250: .4byte 0x03001038
_08046254: .4byte 0x0819832C
_08046258: .4byte 0x08198220
_0804625C:
	ldr r3, _08046310 @ =0x000002B7
	adds r0, r5, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	eors r0, r4
	ands r0, r4
	cmp r0, #0x00
	beq _08046290
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0xAF
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	cmp r2, r0
	beq _08046290
	adds r3, #0x21
	adds r0, r5, r3
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x0C]
	adds r0, r0, r1
	str r0, [r5, #0x0C]
_08046290:
	ldr r3, _08046310 @ =0x000002B7
	adds r0, r5, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080462C4
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	cmp r2, r0
	beq _080462C4
	adds r3, #0x23
	adds r0, r5, r3
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
_080462C4:
	ldr r3, _08046310 @ =0x000002B7
	adds r0, r5, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _080462D8
	b _08046568
_080462D8:
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0xB1
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	cmp r2, r0
	bne _080462EE
	b _08046568
_080462EE:
	subs r3, #0x5B
	adds r0, r5, r3
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _080462FE
	b _08046568
_080462FE:
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	b _08046568
_08046310: .4byte 0x000002B7
_08046314:
	ldr r3, _080463C4 @ =0x03001038
	mov r9, r3
	ldr r1, _080463C8 @ =0x0819832C
	ldr r0, _080463CC @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	ldrh r1, [r6, #0x00]
	muls r0, r1
	movs r1, #0xB8
	lsls r1, r1, #0x02
	adds r7, r5, r1
	ldrh r1, [r7, #0x00]
	bl _call_via_r2
	ldr r1, [r4, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x0C]
	mov r3, r9
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0xB0
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	ldrh r1, [r6, #0x00]
	muls r0, r1
	ldrh r1, [r7, #0x00]
	bl _call_via_r2
	ldr r1, [r4, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x10]
	ldr r1, _080463D0 @ =0x0000020D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08046384
	b _08046568
_08046384:
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08046396
	b _08046568
_08046396:
	mov r3, r9
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	ldrh r1, [r6, #0x00]
	muls r0, r1
	ldrh r1, [r7, #0x00]
	bl _call_via_r2
	ldr r1, [r4, #0x00]
	adds r1, r1, r0
	ldr r0, [r5, #0x3C]
	subs r1, r1, r0
	str r1, [r5, #0x18]
	b _08046568
_080463C4: .4byte 0x03001038
_080463C8: .4byte 0x0819832C
_080463CC: .4byte 0x08198220
_080463D0: .4byte 0x0000020D
_080463D4:
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
_080463EA:
	movs r1, #0xBC
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	ble _08046404
	movs r3, #0xBD
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldr r0, [r2, #0x00]
	cmp r0, r1
	ble _08046416
	b _08046414
_08046404:
	cmp r1, #0x00
	bge _08046416
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	cmp r0, r1
	bge _08046416
_08046414:
	str r1, [r2, #0x00]
_08046416:
	movs r1, #0xF6
	lsls r1, r1, #0x01
	adds r2, r5, r1
	movs r3, #0xBD
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0804642A
	adds r0, #0xFF
_0804642A:
	asrs r1, r0, #0x08
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r3, sp, #0x008
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	add r2, sp, #0x004
	bl sub_801B390
	ldr r0, _08046534 @ =0x000002B7
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	lsrs r1, r1, #0x03
	movs r2, #0xAE
	lsls r2, r2, #0x02
	adds r3, r5, r2
	ldrb r0, [r3, #0x00]
	movs r6, #0x07
	ands r0, r6
	lsls r0, r0, #0x05
	orrs r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	blt _080464AC
	adds r2, #0x2C
	adds r1, r5, r2
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xBA
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r4, #0x00]
	lsrs r1, r1, #0x03
	ldrb r0, [r3, #0x00]
	ands r0, r6
	lsls r0, r0, #0x05
	orrs r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x16
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r2, #0x00]
	movs r1, #0xBB
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r4, #0x00]
	lsrs r1, r1, #0x03
	ldrb r0, [r3, #0x00]
	ands r0, r6
	lsls r0, r0, #0x05
	orrs r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x16
	adds r0, r0, r7
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
_080464AC:
	movs r2, #0xB9
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	ldr r1, [sp, #0x004]
	adds r0, r0, r1
	str r0, [r5, #0x0C]
	movs r3, #0xBA
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [sp, #0x008]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r1, _08046538 @ =0x0000020D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	bne _080464F8
	subs r3, #0x8C
	adds r0, r5, r3
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080464F8
	str r2, [r5, #0x14]
	movs r1, #0xBB
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r1, [sp, #0x00C]
	adds r0, r0, r1
	str r0, [r5, #0x18]
_080464F8:
	ldr r3, [r5, #0x34]
	ldr r2, [r5, #0x0C]
	cmp r3, r2
	bne _08046508
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	beq _0804651E
_08046508:
	subs r1, r3, r2
	ldr r2, _0804653C @ =0x00000242
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r1, r5, r3
	strh r0, [r1, #0x00]
_0804651E:
	ldr r3, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r1, [r5, #0x34]
	ldr r0, [r5, #0x38]
	cmp r2, r0
	bne _08046540
	cmp r3, r1
	bne _08046540
	movs r1, #0x01
	negs r1, r1
	b _08046554
_08046534: .4byte 0x000002B7
_08046538: .4byte 0x0000020D
_0804653C: .4byte 0x00000242
_08046540:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r3, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08046554:
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08046568
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _08046564
	adds r0, #0xFF
_08046564:
	asrs r0, r0, #0x08
	strb r0, [r5, #0x02]
_08046568:
	movs r1, #0x00
	adds r0, r5, #0x0
	adds r0, #0x4E
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	cmp r0, #0x02
	beq _0804658E
	cmp r0, #0x02
	bhi _08046582
	cmp r0, #0x01
	beq _08046588
	b _0804659A
_08046582:
	cmp r0, #0x03
	beq _08046594
	b _0804659A
_08046588:
	ldr r1, [r5, #0x0C]
	ldr r0, [r5, #0x34]
	b _08046598
_0804658E:
	ldr r1, [r5, #0x34]
	ldr r0, [r5, #0x0C]
	b _08046598
_08046594:
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0x10]
_08046598:
	subs r1, r1, r0
_0804659A:
	cmp r1, #0x00
	beq _080465B2
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x18]
	subs r0, r0, r1
	str r0, [r5, #0x18]
	cmp r0, #0x00
	bge _080465B2
	movs r0, #0x00
	str r0, [r5, #0x18]
_080465B2:
	ldr r1, _080465D4 @ =0x000002B5
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080465C6
	adds r0, r5, #0x0
	bl sub_80402C4__11FieldObject
_080465C6:
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080465D4: .4byte 0x000002B5
	thumb_func_start sub_80465D8
sub_80465D8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080465EE
	b _08046866
_080465EE:
	ldr r2, _0804660C @ =0x000002B5
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	subs r0, #0x01
	cmp r0, #0x04
	bls _08046600
	b _08046842
_08046600:
	lsls r0, r0, #0x02
	ldr r1, _08046610 @ =0x08046614
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0804660C: .4byte 0x000002B5
_08046610: .4byte 0x08046614
	.byte 0x28, 0x66, 0x04, 0x08, 0x2A, 0x68, 0x04, 0x08, 0xF8, 0x67, 0x04, 0x08, 0x2A, 0x68, 0x04, 0x08
	.byte 0xF8, 0x67, 0x04, 0x08, 0x58, 0x4B, 0xE0, 0x18, 0x00, 0x78, 0x40, 0x07, 0x40, 0x0F, 0x01, 0x21
	.byte 0x48, 0x40, 0x08, 0x40, 0x00, 0x28, 0x20, 0xD0, 0xB3, 0x25, 0xAD, 0x00, 0x60, 0x19, 0xAF, 0x26
	.byte 0xB6, 0x00, 0xA1, 0x19, 0x00, 0x68, 0x09, 0x68, 0xE2, 0x68, 0x88, 0x42, 0x03, 0xDB, 0x90, 0x42
	.byte 0x03, 0xDD, 0x88, 0x42, 0x11, 0xDC, 0x90, 0x42, 0x0F, 0xDB, 0xB3, 0x21, 0x89, 0x00, 0x60, 0x18
	.byte 0x00, 0x68, 0xE0, 0x60, 0x48, 0x4A, 0xA3, 0x18, 0x1A, 0x78, 0x51, 0x07, 0x49, 0x0F, 0x01, 0x20
	.byte 0x01, 0x43, 0x09, 0x38, 0x10, 0x40, 0x08, 0x43, 0x18, 0x70, 0x43, 0x4B, 0xE0, 0x18, 0x00, 0x78
	.byte 0x40, 0x07, 0x40, 0x0F, 0x02, 0x21, 0x08, 0x40, 0x00, 0x28, 0x20, 0xD1, 0xB4, 0x25, 0xAD, 0x00
	.byte 0x60, 0x19, 0xB0, 0x26, 0xB6, 0x00, 0xA1, 0x19, 0x00, 0x68, 0x09, 0x68, 0x22, 0x69, 0x88, 0x42
	.byte 0x03, 0xDB, 0x90, 0x42, 0x03, 0xDD, 0x88, 0x42, 0x11, 0xDC, 0x90, 0x42, 0x0F, 0xDB, 0xB4, 0x21
	.byte 0x89, 0x00, 0x60, 0x18, 0x00, 0x68, 0x20, 0x61, 0x33, 0x4A, 0xA3, 0x18, 0x1A, 0x78, 0x51, 0x07
	.byte 0x49, 0x0F, 0x02, 0x20, 0x01, 0x43, 0x0A, 0x38, 0x10, 0x40, 0x08, 0x43, 0x18, 0x70, 0x2E, 0x4B
	.byte 0xE0, 0x18, 0x00, 0x78, 0x40, 0x07, 0x40, 0x0F, 0x04, 0x21, 0x08, 0x40, 0x00, 0x28, 0x34, 0xD1
	.byte 0x2A, 0x4D, 0x60, 0x19, 0x01, 0x78, 0x40, 0x20, 0x08, 0x40, 0x00, 0x28, 0x2D, 0xD1, 0x97, 0x26
	.byte 0xB6, 0x00, 0xA0, 0x19, 0x01, 0x68, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x25, 0xD1, 0xB5, 0x21
	.byte 0x89, 0x00, 0x60, 0x18, 0xB1, 0x22, 0x92, 0x00, 0xA1, 0x18, 0x02, 0x68, 0x09, 0x68, 0x65, 0x69
	.byte 0xA3, 0x69, 0x8A, 0x42, 0x04, 0xDB, 0xE8, 0x18, 0x82, 0x42, 0x04, 0xDD, 0x8A, 0x42, 0x14, 0xDC
	.byte 0xE8, 0x18, 0x82, 0x42, 0x11, 0xDB, 0xB5, 0x23, 0x9B, 0x00, 0xE0, 0x18, 0x00, 0x68, 0xA0, 0x61
	.byte 0x00, 0x20, 0x60, 0x61, 0x14, 0x4D, 0x63, 0x19, 0x1A, 0x78, 0x51, 0x07, 0x49, 0x0F, 0x04, 0x20
	.byte 0x01, 0x43, 0x0C, 0x38, 0x10, 0x40, 0x08, 0x43, 0x18, 0x70, 0xB6, 0x26, 0xB6, 0x00, 0xA0, 0x19
	.byte 0x00, 0x21, 0x42, 0x5E, 0x00, 0x2A, 0x00, 0xDA, 0x52, 0x42, 0x0D, 0x4B, 0xE0, 0x18, 0x00, 0x25
	.byte 0x41, 0x5F, 0x00, 0x29, 0x00, 0xDA, 0x49, 0x42, 0xB7, 0x26, 0xB6, 0x00, 0xA0, 0x19, 0x00, 0x23
	.byte 0xC0, 0x5E, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x8A, 0x42, 0x0B, 0xDB, 0x04, 0x23, 0x82, 0x42
	.byte 0x0C, 0xDB, 0x01, 0x23, 0x0A, 0xE0, 0x00, 0x00, 0xB7, 0x02, 0x00, 0x00, 0x0D, 0x02, 0x00, 0x00
	.byte 0xDA, 0x02, 0x00, 0x00, 0x04, 0x23, 0x81, 0x42, 0x00, 0xDB, 0x02, 0x23, 0x13, 0x4D, 0x60, 0x19
	.byte 0x00, 0x78, 0x40, 0x07, 0x40, 0x0F, 0x18, 0x40, 0x00, 0x28, 0x48, 0xD0, 0xB3, 0x26, 0xB6, 0x00
	.byte 0xA0, 0x19, 0x00, 0x68, 0xE0, 0x60, 0xB4, 0x21, 0x89, 0x00, 0x60, 0x18, 0x00, 0x68, 0x20, 0x61
	.byte 0x0B, 0x4A, 0xA0, 0x18, 0x01, 0x78, 0x40, 0x20, 0x08, 0x40, 0x00, 0x28, 0x27, 0xD1, 0x97, 0x23
	.byte 0x9B, 0x00, 0xE0, 0x18, 0x01, 0x68, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x1F, 0xD1, 0x1D, 0x35
	.byte 0x60, 0x19, 0x00, 0x68, 0x61, 0x69, 0x40, 0x1A, 0xA0, 0x61, 0x18, 0xE0, 0xB7, 0x02, 0x00, 0x00
	.byte 0x0D, 0x02, 0x00, 0x00, 0xBC, 0x26, 0xB6, 0x00, 0xA0, 0x19, 0x01, 0x68, 0x00, 0x29, 0x06, 0xDD
	.byte 0xBD, 0x22, 0x92, 0x00, 0xA0, 0x18, 0x00, 0x68, 0x88, 0x42, 0x18, 0xDB, 0x07, 0xE0, 0x00, 0x29
	.byte 0x15, 0xDA, 0xBD, 0x23, 0x9B, 0x00, 0xE0, 0x18, 0x00, 0x68, 0x88, 0x42, 0x0F, 0xDC, 0x20, 0x1C
	.byte 0x00, 0xF0, 0xAC, 0xF8, 0x0B, 0xE0, 0x4F, 0x4D, 0x60, 0x19, 0xB8, 0x26, 0xB6, 0x00, 0xA1, 0x19
	.byte 0x00, 0x88, 0x09, 0x88, 0x88, 0x42, 0x02, 0xD3, 0x20, 0x1C, 0x00, 0xF0, 0x9F, 0xF8
_08046842:
	ldr r1, _0804696C @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08046866
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08046866
	adds r0, r4, #0x0
	bl sub_8046A10
_08046866:
	ldr r3, _08046970 @ =0x0000020F
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08046962
	ldr r6, _0804696C @ =0x000002B5
	adds r5, r4, r6
	ldrb r3, [r5, #0x00]
	movs r0, #0x30
	ands r0, r3
	cmp r0, #0x00
	beq _080468A2
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r2, _08046974 @ =0x00000302
	adds r1, r4, r2
	movs r6, #0x04
	ldsh r2, [r0, r6]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r2, r0
	bne _080468A2
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	strb r0, [r5, #0x00]
_080468A2:
	ldr r0, _0804696C @ =0x000002B5
	adds r5, r4, r0
	ldrb r3, [r5, #0x00]
	movs r0, #0xC0
	ands r0, r3
	cmp r0, #0x00
	beq _080468D0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r6, #0x06
	ldsh r2, [r0, r6]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r2, r0
	bne _080468D0
	movs r0, #0x3F
	ands r0, r3
	strb r0, [r5, #0x00]
_080468D0:
	ldr r0, _08046978 @ =0x000002B6
	adds r5, r4, r0
	ldrb r3, [r5, #0x00]
	movs r0, #0x03
	ands r0, r3
	cmp r0, #0x00
	beq _080468FE
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r2, _08046974 @ =0x00000302
	adds r1, r4, r2
	movs r6, #0x08
	ldsh r2, [r0, r6]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r2, r0
	bne _080468FE
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	strb r0, [r5, #0x00]
_080468FE:
	ldr r0, _08046978 @ =0x000002B6
	adds r5, r4, r0
	ldrb r3, [r5, #0x00]
	movs r0, #0x0C
	ands r0, r3
	cmp r0, #0x00
	beq _0804692E
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r6, #0x0A
	ldsh r2, [r0, r6]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r2, r0
	bne _0804692E
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	strb r0, [r5, #0x00]
_0804692E:
	ldr r0, _08046978 @ =0x000002B6
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0x00
	beq _08046962
	ldr r1, _0804697C @ =0x00000322
	adds r0, r4, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r6, #0xCB
	lsls r6, r6, #0x02
	adds r0, r4, r6
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	movs r5, #0xCA
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bne _08046962
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x00]
_08046962:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0xDE, 0x02, 0x00, 0x00
_0804696C: .4byte 0x000002B5
_08046970: .4byte 0x0000020F
_08046974: .4byte 0x00000302
_08046978: .4byte 0x000002B6
_0804697C: .4byte 0x00000322
	thumb_func_start sub_8046980
sub_8046980:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r0, _08046A04 @ =0x000002B5
	adds r5, r2, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _080469FC
	ldr r1, [r2, #0x0C]
	movs r4, #0x80
	adds r0, r1, #0x0
	ands r0, r4
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldr r3, _08046A08 @ =0xFFFFFF00
	ands r1, r3
	str r1, [r2, #0x0C]
	ldr r1, [r2, #0x10]
	adds r0, r1, #0x0
	ands r0, r4
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ands r1, r3
	str r1, [r2, #0x10]
	ldr r1, _08046A0C @ =0x0000020D
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _080469DC
	ldr r1, [r2, #0x14]
	adds r0, r1, #0x0
	ands r0, r4
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ands r1, r3
	str r1, [r2, #0x14]
	ldr r1, [r2, #0x18]
	adds r0, r1, #0x0
	ands r0, r4
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ands r1, r3
	str r1, [r2, #0x18]
_080469DC:
	movs r3, #0xB8
	lsls r3, r3, #0x02
	adds r0, r2, r3
	movs r1, #0x00
	strh r1, [r0, #0x00]
	subs r3, #0x9E
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	adds r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_080469FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08046A04: .4byte 0x000002B5
_08046A08: .4byte 0xFFFFFF00
_08046A0C: .4byte 0x0000020D
	thumb_func_start sub_8046A10
sub_8046A10:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _08046A80 @ =0x000002B5
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08046A7A
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0x01
	negs r3, r3
	str r3, [r0, #0x00]
	ldr r6, _08046A84 @ =0x00000213
	adds r2, r4, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x93
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r4, r2
	str r3, [r0, #0x00]
	str r3, [r1, #0x00]
	adds r6, #0x2D
	adds r0, r4, r6
	ldrh r1, [r0, #0x00]
	subs r2, #0x12
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	adds r6, #0x28
	adds r1, r4, r6
	ldrh r2, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, r3
	beq _08046A70
	ldr r3, _08046A88 @ =0x00000266
	adds r0, r4, r3
	strh r2, [r0, #0x00]
	ldr r0, _08046A8C @ =0x0000FFFF
	strh r0, [r1, #0x00]
_08046A70:
	ldrb r1, [r5, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_08046A7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08046A80: .4byte 0x000002B5
_08046A84: .4byte 0x00000213
_08046A88: .4byte 0x00000266
_08046A8C: .4byte 0x0000FFFF
	thumb_func_start sub_8046A90
sub_8046A90:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, [sp, #0x014]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, r5, #0x0
	cmp r2, #0x01
	bne _08046ABA
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x04]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08046ABA:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	adds r2, #0x66
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	adds r2, #0x08
	adds r0, r4, r2
	strh r3, [r0, #0x00]
	movs r0, #0x00
	ldsh r2, [r1, r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bne _08046AE0
	movs r0, #0x00
	b _08046B1E
_08046AE0:
	cmp r6, #0x01
	bne _08046AF8
	adds r1, r5, #0x0
	cmp r2, r0
	blt _08046AEC
	negs r1, r5
_08046AEC:
	ldr r2, _08046AF4 @ =0x0000030A
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	b _08046AFE
_08046AF4: .4byte 0x0000030A
_08046AF8:
	ldr r1, _08046B24 @ =0x0000031A
	adds r0, r4, r1
	strh r7, [r0, #0x00]
_08046AFE:
	ldr r2, _08046B28 @ =0x00000312
	adds r1, r4, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08046B2C @ =0x000002B5
	adds r3, r4, r0
	movs r0, #0x03
	ands r6, r0
	lsls r2, r6, #0x04
	ldrb r1, [r3, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r0, #0x01
_08046B1E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08046B24: .4byte 0x0000031A
_08046B28: .4byte 0x00000312
_08046B2C: .4byte 0x000002B5
	thumb_func_start sub_8046B30
sub_8046B30:
	push {r4, r5, r6, lr}
	mov r12, r0
	adds r6, r1, #0x0
	ldr r0, [sp, #0x010]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0x0
	cmp r2, #0x01
	bne _08046B5A
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x06]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08046B5A:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x06]
	movs r1, #0xBF
	lsls r1, r1, #0x02
	add r1, r12
	strh r0, [r1, #0x00]
	movs r0, #0xC1
	lsls r0, r0, #0x02
	add r0, r12
	strh r3, [r0, #0x00]
	movs r0, #0x00
	ldsh r2, [r1, r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bne _08046B84
	movs r0, #0x00
	b _08046BBE
_08046B84:
	cmp r6, #0x01
	bne _08046B9A
	adds r1, r4, #0x0
	cmp r2, r0
	blt _08046B90
	negs r1, r4
_08046B90:
	movs r0, #0xC3
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	b _08046BA2
_08046B9A:
	movs r0, #0xC7
	lsls r0, r0, #0x02
	add r0, r12
	strh r5, [r0, #0x00]
_08046BA2:
	movs r1, #0xC5
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r2, _08046BC4 @ =0x000002B5
	add r2, r12
	lsls r3, r6, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r0, #0x01
_08046BBE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08046BC4: .4byte 0x000002B5
	.byte 0xF0, 0xB5, 0x04, 0x1C, 0x0E, 0x1C, 0x05, 0x98, 0x1B, 0x04, 0x1B, 0x0C, 0x00, 0x04, 0x05, 0x0C
	.byte 0x2F, 0x1C, 0x01, 0x2A, 0x09, 0xD1, 0xA5, 0x21, 0x89, 0x00, 0x60, 0x18, 0x01, 0x68, 0x18, 0x04
	.byte 0x00, 0x14, 0x09, 0x89, 0x40, 0x18, 0x00, 0x04, 0x03, 0x0C, 0xA5, 0x22, 0x92, 0x00, 0xA0, 0x18
	.byte 0x00, 0x68, 0x01, 0x89, 0x66, 0x32, 0xA0, 0x18, 0x01, 0x80, 0x07, 0x49, 0x60, 0x18, 0x03, 0x80
	.byte 0x04, 0x32, 0xA0, 0x18, 0x05, 0x4B, 0xE1, 0x18, 0x00, 0x23, 0xC2, 0x5E, 0x00, 0x23, 0xC8, 0x5E
	.byte 0x82, 0x42, 0x05, 0xD1, 0x00, 0x20, 0x21, 0xE0, 0x02, 0x03, 0x00, 0x00, 0x06, 0x03, 0x00, 0x00
	.byte 0x01, 0x2E, 0x09, 0xD1, 0x29, 0x1C, 0x82, 0x42, 0x00, 0xDB, 0x69, 0x42, 0x01, 0x4A, 0xA0, 0x18
	.byte 0x01, 0x80, 0x04, 0xE0, 0x0E, 0x03, 0x00, 0x00, 0x0A, 0x4B, 0xE0, 0x18, 0x07, 0x80, 0x0A, 0x48
	.byte 0x21, 0x18, 0x00, 0x20, 0x08, 0x80, 0x09, 0x49, 0x62, 0x18, 0x03, 0x20, 0x06, 0x40, 0x11, 0x78
	.byte 0x04, 0x20, 0x40, 0x42, 0x08, 0x40, 0x30, 0x43, 0x10, 0x70, 0x01, 0x20, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x1E, 0x03, 0x00, 0x00, 0x16, 0x03, 0x00, 0x00, 0xB6, 0x02, 0x00, 0x00
	.byte 0x70, 0xB5, 0x84, 0x46, 0x0D, 0x1C, 0x04, 0x98, 0x1B, 0x04, 0x1B, 0x0C, 0x00, 0x04, 0x04, 0x0C
	.byte 0x26, 0x1C, 0x01, 0x2A, 0x09, 0xD1, 0xA5, 0x20, 0x80, 0x00, 0x60, 0x44, 0x01, 0x68, 0x18, 0x04
	.byte 0x00, 0x14, 0x49, 0x89, 0x40, 0x18, 0x00, 0x04, 0x03, 0x0C, 0xA5, 0x20, 0x80, 0x00, 0x60, 0x44
	.byte 0x00, 0x68, 0x40, 0x89, 0xC0, 0x21, 0x89, 0x00, 0x61, 0x44, 0x08, 0x80, 0xC2, 0x20, 0x80, 0x00
	.byte 0x60, 0x44, 0x03, 0x80, 0x00, 0x20, 0x0A, 0x5E, 0x18, 0x04, 0x00, 0x14, 0x82, 0x42, 0x01, 0xD1
	.byte 0x00, 0x20, 0x1F, 0xE0, 0x01, 0x2D, 0x08, 0xD1, 0x21, 0x1C, 0x82, 0x42, 0x00, 0xDB, 0x61, 0x42
	.byte 0xC4, 0x20, 0x80, 0x00, 0x60, 0x44, 0x01, 0x80, 0x03, 0xE0, 0xC8, 0x20, 0x80, 0x00, 0x60, 0x44
	.byte 0x06, 0x80, 0xC6, 0x21, 0x89, 0x00, 0x61, 0x44, 0x00, 0x20, 0x08, 0x80, 0x07, 0x4B, 0x63, 0x44
	.byte 0x03, 0x20, 0x05, 0x40, 0xAA, 0x00, 0x19, 0x78, 0x0D, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x43
	.byte 0x18, 0x70, 0x01, 0x20, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xB6, 0x02, 0x00, 0x00
	thumb_func_start sub_8046D18
sub_8046D18:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r1, _08046D78 @ =0x0000020F
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08046D2C
	b _0804713A
_08046D2C:
	ldr r2, _08046D7C @ =0x000002B5
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	bne _08046DA8
	ldr r3, _08046D80 @ =0x00000312
	adds r1, r5, r3
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	ldr r6, _08046D84 @ =0x0000030A
	adds r2, r5, r6
	ldrh r0, [r2, #0x00]
	ldrh r4, [r1, #0x04]
	adds r0, r0, r4
	strh r0, [r1, #0x04]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	ble _08046D8C
	ldr r2, [r3, #0x00]
	ldr r1, _08046D88 @ =0x00000302
	adds r0, r5, r1
	movs r3, #0x04
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _08046DF0
	strh r3, [r2, #0x04]
	b _08046DF0
_08046D78: .4byte 0x0000020F
_08046D7C: .4byte 0x000002B5
_08046D80: .4byte 0x00000312
_08046D84: .4byte 0x0000030A
_08046D88: .4byte 0x00000302
_08046D8C:
	ldr r2, [r3, #0x00]
	ldr r6, _08046DA4 @ =0x00000302
	adds r0, r5, r6
	movs r3, #0x04
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _08046DF0
	strh r3, [r2, #0x04]
	b _08046DF0
_08046DA4: .4byte 0x00000302
_08046DA8:
	cmp r1, #0x20
	bne _08046DF0
	ldr r6, _08046E44 @ =0x00000312
	adds r3, r5, r6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _08046E48 @ =0x03001038
	ldr r0, _08046E4C @ =0x0819832C
	ldr r1, _08046E50 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, _08046E54 @ =0x00000302
	adds r0, r5, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	subs r6, #0x18
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r0, [r4, r6]
	subs r1, r1, r0
	ldrh r0, [r3, #0x00]
	muls r0, r1
	ldr r3, _08046E58 @ =0x0000031A
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x04]
_08046DF0:
	ldr r1, _08046E5C @ =0x000002B5
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x40
	bne _08046E7A
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	movs r6, #0xC3
	lsls r6, r6, #0x02
	adds r2, r5, r6
	ldrh r0, [r2, #0x00]
	ldrh r4, [r1, #0x06]
	adds r0, r0, r4
	strh r0, [r1, #0x06]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	ble _08046E60
	ldr r2, [r3, #0x00]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x06
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _08046EC8
	strh r3, [r2, #0x06]
	b _08046EC8
	.byte 0x00, 0x00
_08046E44: .4byte 0x00000312
_08046E48: .4byte 0x03001038
_08046E4C: .4byte 0x0819832C
_08046E50: .4byte 0x08198220
_08046E54: .4byte 0x00000302
_08046E58: .4byte 0x0000031A
_08046E5C: .4byte 0x000002B5
_08046E60:
	ldr r2, [r3, #0x00]
	movs r6, #0xC1
	lsls r6, r6, #0x02
	adds r0, r5, r6
	movs r3, #0x06
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _08046EC8
	strh r3, [r2, #0x06]
	b _08046EC8
_08046E7A:
	cmp r1, #0x80
	bne _08046EC8
	movs r6, #0xC5
	lsls r6, r6, #0x02
	adds r3, r5, r6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _08046F14 @ =0x03001038
	ldr r0, _08046F18 @ =0x0819832C
	ldr r1, _08046F1C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	subs r6, #0x18
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r0, [r4, r6]
	subs r1, r1, r0
	ldrh r0, [r3, #0x00]
	muls r0, r1
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x06]
_08046EC8:
	ldr r1, _08046F20 @ =0x000002B6
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x01
	bne _08046F4C
	ldr r2, _08046F24 @ =0x00000316
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	ldr r6, _08046F28 @ =0x0000030E
	adds r2, r5, r6
	ldrh r0, [r2, #0x00]
	ldrh r4, [r1, #0x08]
	adds r0, r0, r4
	strh r0, [r1, #0x08]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	ble _08046F30
	ldr r2, [r3, #0x00]
	ldr r1, _08046F2C @ =0x00000306
	adds r0, r5, r1
	movs r3, #0x08
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _08046F94
	strh r3, [r2, #0x08]
	b _08046F94
_08046F14: .4byte 0x03001038
_08046F18: .4byte 0x0819832C
_08046F1C: .4byte 0x08198220
_08046F20: .4byte 0x000002B6
_08046F24: .4byte 0x00000316
_08046F28: .4byte 0x0000030E
_08046F2C: .4byte 0x00000306
_08046F30:
	ldr r2, [r3, #0x00]
	ldr r6, _08046F48 @ =0x00000306
	adds r0, r5, r6
	movs r3, #0x08
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _08046F94
	strh r3, [r2, #0x08]
	b _08046F94
_08046F48: .4byte 0x00000306
_08046F4C:
	cmp r1, #0x02
	bne _08046F94
	ldr r6, _08046FE8 @ =0x00000316
	adds r3, r5, r6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _08046FEC @ =0x03001038
	ldr r0, _08046FF0 @ =0x0819832C
	ldr r1, _08046FF4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, _08046FF8 @ =0x00000306
	adds r0, r5, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	subs r6, #0x18
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r0, [r4, r6]
	subs r1, r1, r0
	ldrh r0, [r3, #0x00]
	muls r0, r1
	ldr r3, _08046FFC @ =0x0000031E
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x08]
_08046F94:
	ldr r1, _08047000 @ =0x000002B6
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x0C
	ands r1, r0
	cmp r1, #0x04
	bne _0804701E
	movs r2, #0xC6
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	movs r6, #0xC4
	lsls r6, r6, #0x02
	adds r2, r5, r6
	ldrh r0, [r2, #0x00]
	ldrh r4, [r1, #0x0A]
	adds r0, r0, r4
	strh r0, [r1, #0x0A]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	ble _08047004
	ldr r2, [r3, #0x00]
	movs r1, #0xC2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x0A
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _0804706C
	strh r3, [r2, #0x0A]
	b _0804706C
	.byte 0x00, 0x00
_08046FE8: .4byte 0x00000316
_08046FEC: .4byte 0x03001038
_08046FF0: .4byte 0x0819832C
_08046FF4: .4byte 0x08198220
_08046FF8: .4byte 0x00000306
_08046FFC: .4byte 0x0000031E
_08047000: .4byte 0x000002B6
_08047004:
	ldr r2, [r3, #0x00]
	movs r6, #0xC2
	lsls r6, r6, #0x02
	adds r0, r5, r6
	movs r3, #0x0A
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _0804706C
	strh r3, [r2, #0x0A]
	b _0804706C
_0804701E:
	cmp r1, #0x08
	bne _0804706C
	movs r6, #0xC6
	lsls r6, r6, #0x02
	adds r3, r5, r6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _080470AC @ =0x03001038
	ldr r0, _080470B0 @ =0x0819832C
	ldr r1, _080470B4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0xC2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	subs r6, #0x18
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r0, [r4, r6]
	subs r1, r1, r0
	ldrh r0, [r3, #0x00]
	muls r0, r1
	movs r3, #0xC8
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x0A]
_0804706C:
	ldr r1, _080470B8 @ =0x000002B6
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	bne _080470E8
	movs r2, #0xCC
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r2, r5, r3
	movs r4, #0xC9
	lsls r4, r4, #0x02
	adds r0, r5, r4
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r2, #0x00]
	adds r1, r0, r1
	str r1, [r2, #0x00]
	subs r3, #0x04
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	ble _080470BC
	cmp r1, r0
	ble _080470C6
	b _080470C4
_080470AC: .4byte 0x03001038
_080470B0: .4byte 0x0819832C
_080470B4: .4byte 0x08198220
_080470B8: .4byte 0x000002B6
_080470BC:
	cmp r0, #0x00
	bge _080470C6
	cmp r1, r0
	bge _080470C6
_080470C4:
	str r0, [r2, #0x00]
_080470C6:
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r3, [r0, #0x00]
	ldr r6, _080470E4 @ =0x00000322
	adds r2, r5, r6
	movs r1, #0xCB
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x0C]
	b _0804713A
	.byte 0x00, 0x00
_080470E4: .4byte 0x00000322
_080470E8:
	cmp r1, #0x20
	bne _0804713A
	movs r2, #0xCC
	lsls r2, r2, #0x02
	adds r3, r5, r2
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _08047140 @ =0x03001038
	ldr r0, _08047144 @ =0x0819832C
	ldr r1, _08047148 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r4, #0xCA
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r6, _0804714C @ =0x00000322
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r1, [r4, r6]
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	ldrh r1, [r3, #0x00]
	muls r0, r1
	ldr r3, _08047150 @ =0x00000332
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xCB
	lsls r6, r6, #0x02
	adds r1, r5, r6
	str r0, [r1, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x0C]
_0804713A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08047140: .4byte 0x03001038
_08047144: .4byte 0x0819832C
_08047148: .4byte 0x08198220
_0804714C: .4byte 0x00000322
_08047150: .4byte 0x00000332
	thumb_func_start sub_8047154
sub_8047154:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r12, r2
	movs r6, #0x00
	mov r8, r6
	ldr r1, _08047198 @ =0x00000216
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	movs r1, #0x0C
	ands r1, r2
	cmp r1, #0x00
	beq _0804721C
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0x00
	bne _080471B0
	cmp r1, #0x04
	bne _0804719C
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08047188
	adds r0, r5, #0x3
_08047188:
	asrs r0, r0, #0x02
	lsls r1, r0, #0x01
	adds r6, r1, r0
	lsls r0, r0, #0x02
	subs r5, r5, r0
	lsls r5, r5, #0x01
	b _080471D4
	.byte 0x00, 0x00
_08047198: .4byte 0x00000216
_0804719C:
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080471A4
	adds r0, r5, #0x7
_080471A4:
	asrs r0, r0, #0x03
	lsls r1, r0, #0x02
	adds r6, r1, r0
	lsls r0, r0, #0x03
	subs r5, r5, r0
	b _080471D4
_080471B0:
	cmp r1, #0x04
	bne _080471C6
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080471BC
	adds r0, r5, #0x3
_080471BC:
	asrs r0, r0, #0x02
	lsls r6, r0, #0x02
	subs r5, r5, r6
	lsls r5, r5, #0x01
	b _080471D4
_080471C6:
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080471CE
	adds r0, r5, #0x7
_080471CE:
	asrs r0, r0, #0x03
	lsls r6, r0, #0x03
	subs r5, r5, r6
_080471D4:
	adds r4, r7, #0x0
	adds r4, #0x24
	movs r0, #0x07
	adds r2, r5, #0x0
	ands r2, r0
	ldrb r3, [r4, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x4C
	ldrb r0, [r3, #0x00]
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r2, _08047250 @ =0x083A05EC
	ldr r1, _08047254 @ =0x00000216
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r5
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	movs r5, #0x7F
	ands r5, r0
	lsrs r0, r0, #0x07
	mov r8, r0
_0804721C:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	adds r1, r6, r5
	movs r2, #0x00
	str r2, [sp, #0x000]
	mov r2, r12
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r4, #0x00]
	mov r1, r8
	lsls r3, r1, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x11]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08047250: .4byte 0x083A05EC
_08047254: .4byte 0x00000216
	thumb_func_start sub_8047258
sub_8047258:
	push {r4, lr}
	adds r3, r0, #0x0
	cmp r1, #0x00
	bne _08047294
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	movs r4, #0x88
	lsls r4, r4, #0x02
	adds r0, r3, r4
	strb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x11]
	lsls r1, r1, #0x19
	ldr r0, _08047290 @ =0x00000215
	adds r3, r3, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x03
	ldrb r2, [r3, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x02
	b _080472C0
_08047290: .4byte 0x00000215
_08047294:
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r2, r3, r4
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	subs r4, #0x73
	adds r0, r3, r4
	strb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x11]
	lsls r1, r1, #0x19
	ldr r0, _080472CC @ =0x00000215
	adds r3, r3, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x04
_080472C0:
	orrs r0, r1
	strb r0, [r3, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080472CC: .4byte 0x00000215
	thumb_func_start sub_80472D0
sub_80472D0:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	adds r0, r1, #0x0
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _08047336
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r4, r3, r1
	movs r7, #0x0F
	movs r0, #0xF0
	lsls r0, r0, #0x09
	ands r2, r0
	ldr r3, [r4, #0x00]
	ldr r5, _08047314 @ =0xFFFE1FFF
	ands r3, r5
	orrs r3, r2
	str r3, [r4, #0x00]
	cmp r6, #0x00
	beq _08047318
	lsls r0, r3, #0x0F
	lsrs r0, r0, #0x1C
	cmp r0, #0x0E
	bhi _08047358
	adds r1, r0, #0x1
	ands r1, r7
	lsls r1, r1, #0x0D
	adds r0, r5, #0x0
	ands r0, r3
	orrs r0, r1
	str r0, [r4, #0x00]
	b _08047358
_08047314: .4byte 0xFFFE1FFF
_08047318:
	movs r0, #0xF0
	lsls r0, r0, #0x09
	ands r0, r3
	cmp r0, #0x00
	beq _08047358
	lsls r0, r3, #0x0F
	lsrs r0, r0, #0x1C
	subs r0, #0x01
	ands r0, r7
	lsls r0, r0, #0x0D
	adds r1, r5, #0x0
	ands r1, r3
	orrs r1, r0
	str r1, [r4, #0x00]
	b _08047358
_08047336:
	cmp r6, #0x00
	beq _0804734A
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x09
	orrs r1, r2
	b _08047356
_0804734A:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldr r2, _08047360 @ =0xFFFE1FFF
	ands r1, r2
_08047356:
	str r1, [r0, #0x00]
_08047358:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047360: .4byte 0xFFFE1FFF
	thumb_func_start sub_8047364
sub_8047364:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldrb r3, [r5, #0x00]
	lsls r2, r3, #0x1D
	movs r4, #0x07
	lsrs r2, r2, #0x1A
	movs r0, #0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	ands r1, r4
	movs r2, #0x08
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bls _080473C4
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	strb r0, [r6, #0x02]
	ldrb r1, [r5, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x03
	bne _080473C4
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
_080473C4:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80473DC
sub_80473DC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _0804741A
	lsls r1, r2, #0x1A
	lsrs r1, r1, #0x1D
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bls _08047410
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	strb r0, [r4, #0x02]
_08047410:
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
_0804741A:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08047442
	ldr r2, _08047464 @ =0x0000021A
	adds r0, r4, r2
	subs r2, #0x02
	adds r1, r4, r2
	ldrh r0, [r0, #0x00]
	ldrh r2, [r1, #0x00]
	cmp r0, r2
	beq _08047442
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8040790__11FieldObject
_08047442:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsrs r5, r0, #0x07
	ldr r2, _08047468 @ =0x00000215
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0804746C
	movs r1, #0x88
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r2, [r0, #0x00]
	b _08047470
_08047464: .4byte 0x0000021A
_08047468: .4byte 0x00000215
_0804746C:
	movs r2, #0x01
	negs r2, r2
_08047470:
	ldr r1, _08047484 @ =0x00000215
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08047488
	lsls r0, r1, #0x1C
	lsrs r3, r0, #0x1F
	b _0804748C
_08047484: .4byte 0x00000215
_08047488:
	movs r3, #0x01
	negs r3, r3
_0804748C:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_8040804__11FieldObjectUcii
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _080474CC @ =0x00000215
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x3C]
	movs r1, #0x01
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
_080474CC: .4byte 0x00000215
	thumb_func_start sub_80474D0
sub_80474D0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _0804750E
	lsls r1, r2, #0x1A
	lsrs r1, r1, #0x1D
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bls _08047504
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	strb r0, [r4, #0x02]
_08047504:
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
_0804750E:
	ldr r1, _08047550 @ =0x00000215
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08047536
	movs r2, #0x87
	lsls r2, r2, #0x02
	adds r0, r4, r2
	subs r2, #0x04
	adds r1, r4, r2
	ldrh r0, [r0, #0x00]
	ldrh r2, [r1, #0x00]
	cmp r0, r2
	beq _08047536
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8040790__11FieldObject
_08047536:
	ldr r1, _08047550 @ =0x00000215
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r5, #0x01
	ands r5, r1
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08047558
	ldr r2, _08047554 @ =0x00000221
	adds r0, r4, r2
	ldrb r2, [r0, #0x00]
	b _0804755C
_08047550: .4byte 0x00000215
_08047554: .4byte 0x00000221
_08047558:
	movs r2, #0x01
	negs r2, r2
_0804755C:
	ldr r1, _08047570 @ =0x00000215
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08047574
	lsls r0, r1, #0x1B
	lsrs r3, r0, #0x1F
	b _08047578
_08047570: .4byte 0x00000215
_08047574:
	movs r3, #0x01
	negs r3, r3
_08047578:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_8040804__11FieldObjectUcii
	ldr r0, _0804759C @ =0x00000215
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0804759C: .4byte 0x00000215
	thumb_func_start sub_80475A0
sub_80475A0:
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0x0
	lsls r1, r7, #0x01
	ldr r2, _08047610 @ =0x0203FFC4
	adds r1, r1, r2
	ldrh r2, [r1, #0x00]
	lsrs r3, r2, #0x0A
	movs r1, #0x0F
	ands r3, r1
	ldr r4, _08047614 @ =0x000003FF
	ands r4, r2
	adds r1, r3, #0x1
	lsls r1, r1, #0x0C
	orrs r1, r4
	ldr r5, _08047618 @ =0x0000021E
	adds r2, r0, r5
	movs r5, #0x00
	strh r1, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r6, r0, r1
	ldr r2, [r6, #0x00]
	lsls r3, r3, #0x04
	ldrb r1, [r2, #0x1E]
	movs r0, #0x0F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x1E]
	ldr r0, [r6, #0x00]
	strh r4, [r0, #0x1C]
	ldr r0, [r6, #0x00]
	strh r5, [r0, #0x14]
	movs r4, #0x00
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x13]
	lsrs r0, r0, #0x04
	cmp r4, r0
	bcs _0804760A
	adds r3, r6, #0x0
	movs r5, #0x01
_080475F0:
	ldr r2, [r3, #0x00]
	adds r0, r5, #0x0
	lsls r0, r7
	ldrh r1, [r2, #0x14]
	orrs r0, r1
	strh r0, [r2, #0x14]
	adds r4, #0x01
	adds r7, #0x01
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x13]
	lsrs r0, r0, #0x04
	cmp r4, r0
	bcc _080475F0
_0804760A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08047610: .4byte 0x0203FFC4
_08047614: .4byte 0x000003FF
_08047618: .4byte 0x0000021E
	thumb_func_start sub_804761C
sub_804761C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	ldr r1, _080476A8 @ =0x00000222
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _08047634
	b _08047758
_08047634:
	ldr r2, _080476AC @ =0x0000020F
	adds r3, r6, r2
	ldrb r2, [r3, #0x00]
	lsls r0, r2, #0x1E
	lsrs r0, r0, #0x1F
	cmp r0, r4
	bne _08047644
	b _08047758
_08047644:
	movs r0, #0x01
	mov r8, r0
	adds r1, r4, #0x0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #0x01
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	cmp r4, #0x00
	beq _08047730
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r0, [r5, #0x00]
	ldrb r4, [r0, #0x12]
	lsls r4, r4, #0x1D
	lsrs r4, r4, #0x1E
	bl sub_8021ED8
	ldr r2, [r5, #0x00]
	lsls r4, r4, #0x01
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x12]
	ldr r2, _080476B0 @ =0x0000020E
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08047758
	ldr r0, _080476B4 @ =0x0000026E
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080476B8
	movs r2, #0xCD
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r1, #0x00]
	bl sub_8116654
	b _08047758
_080476A8: .4byte 0x00000222
_080476AC: .4byte 0x0000020F
_080476B0: .4byte 0x0000020E
_080476B4: .4byte 0x0000026E
_080476B8:
	movs r1, #0x9B
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrh r2, [r0, #0x00]
	ldr r1, _08047728 @ =0x0000FFFF
	adds r7, r0, #0x0
	cmp r2, r1
	beq _08047758
	movs r3, #0x00
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x14]
	adds r0, r1, #0x0
	mov r2, r8
	eors r0, r2
	ands r0, r2
	movs r2, #0xCD
	lsls r2, r2, #0x02
	adds r4, r6, r2
	subs r2, #0xC6
	adds r2, r2, r6
	mov r8, r2
	ldr r2, _0804772C @ =0x00000216
	adds r5, r6, r2
	cmp r0, #0x00
	beq _08047702
	adds r2, r1, #0x0
	movs r1, #0x01
_080476F4:
	adds r3, #0x01
	adds r0, r2, #0x0
	asrs r0, r3
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080476F4
_08047702:
	ldr r0, [r4, #0x00]
	ldrh r2, [r7, #0x00]
	adds r3, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _08047728 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0xFF
	bl sub_8114C1C
	mov r1, r8
	strb r0, [r1, #0x00]
	ldrb r0, [r5, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5, #0x00]
	b _08047758
	.byte 0x00, 0x00
_08047728: .4byte 0x0000FFFF
_0804772C: .4byte 0x00000216
_08047730:
	ldr r2, _08047764 @ =0x0000026E
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08047746
	adds r2, #0xC6
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r1, #0x00]
	bl sub_8116680
_08047746:
	ldr r1, _08047768 @ =0x0000023D
	adds r0, r6, r1
	strb r4, [r0, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	bl sub_8020D40
_08047758:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08047764: .4byte 0x0000026E
_08047768: .4byte 0x0000023D
	thumb_func_start sub_804776C
sub_804776C:
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r0, r2
	movs r2, #0x01
	ands r1, r2
	ldrb r3, [r0, #0x00]
	movs r2, #0x02
	negs r2, r2
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #0x00]
	bx lr
	thumb_func_start sub_8047784
sub_8047784:
	ldr r1, _080477A0 @ =0x0000020D
	adds r3, r0, r1
	ldrb r1, [r3, #0x00]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, _080477A4 @ =0x00000217
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_080477A0: .4byte 0x0000020D
_080477A4: .4byte 0x00000217
	thumb_func_start sub_80477A8
sub_80477A8:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r3, _08047800 @ =0x0000020D
	adds r5, r0, r3
	ldrb r4, [r5, #0x00]
	movs r3, #0x11
	negs r3, r3
	ands r3, r4
	strb r3, [r5, #0x00]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r6, r0, r3
	ldr r5, [r6, #0x00]
	movs r3, #0x03
	mov r8, r3
	mov r3, r8
	ands r1, r3
	ldrb r4, [r5, #0x1F]
	movs r3, #0x04
	negs r3, r3
	ands r3, r4
	orrs r3, r1
	strb r3, [r5, #0x1F]
	ldr r5, [r6, #0x00]
	adds r3, r2, #0x0
	mov r1, r8
	ands r3, r1
	lsls r3, r3, #0x02
	ldrb r4, [r5, #0x1F]
	movs r1, #0x0D
	negs r1, r1
	ands r1, r4
	orrs r1, r3
	strb r1, [r5, #0x1F]
	movs r3, #0x8F
	lsls r3, r3, #0x02
	adds r0, r0, r3
	strb r2, [r0, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08047800: .4byte 0x0000020D
	thumb_func_start sub_8047804
sub_8047804:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	movs r2, #0xAA
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	movs r5, #0x86
	lsls r5, r5, #0x02
	adds r2, r4, r5
	ldrh r0, [r2, #0x00]
	adds r5, #0x04
	adds r1, r4, r5
	strh r0, [r1, #0x00]
	strh r3, [r2, #0x00]
	ldrh r0, [r1, #0x00]
	cmp r0, r3
	beq _08047842
	adds r0, r4, #0x0
	bl sub_8040790__11FieldObject
	movs r3, #0x01
	negs r3, r3
	adds r0, r4, #0x0
	movs r1, #0x01
	adds r2, r3, #0x0
	bl sub_8040804__11FieldObjectUcii
_08047842:
	ldr r1, _08047854 @ =0x00000215
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08047854: .4byte 0x00000215
	thumb_func_start sub_8047858
sub_8047858:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	movs r2, #0xAA
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	movs r5, #0x86
	lsls r5, r5, #0x02
	adds r2, r4, r5
	ldrh r0, [r2, #0x00]
	adds r5, #0x02
	adds r1, r4, r5
	strh r0, [r1, #0x00]
	strh r3, [r2, #0x00]
	ldrh r0, [r1, #0x00]
	cmp r0, r3
	beq _08047896
	adds r0, r4, #0x0
	bl sub_8040790__11FieldObject
	movs r3, #0x01
	negs r3, r3
	adds r0, r4, #0x0
	movs r1, #0x01
	adds r2, r3, #0x0
	bl sub_8040804__11FieldObjectUcii
_08047896:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80478AC
sub_80478AC:
	push {r4, r5, r6, lr}
	mov r12, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r4, r12
	adds r4, #0x24
	movs r6, #0x07
	adds r3, r1, #0x0
	ands r3, r6
	ldrb r5, [r4, #0x00]
	movs r2, #0x08
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r5
	orrs r0, r3
	strb r0, [r4, #0x00]
	lsls r1, r1, #0x05
	mov r0, r12
	strb r1, [r0, #0x02]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	mov r3, r12
	adds r3, #0x4C
	ands r0, r6
	ldrb r1, [r3, #0x00]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	mov r1, r12
	ldrb r0, [r1, #0x02]
	adds r1, #0x2A
	strb r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	add r0, r12
	ldr r2, [r1, #0x3C]
	movs r1, #0x00
	bl _call_via_r2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_804790C
sub_804790C:
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _08047924 @ =0x00000239
	adds r2, r0, r3
	strb r1, [r2, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	bx lr
_08047924: .4byte 0x00000239
	thumb_func_start sub_8047928
sub_8047928:
	push {lr}
	add sp, #-0x004
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	add sp, #0x004
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_804794C
sub_804794C:
	ldr r2, _08047954 @ =0x0000023E
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	bx lr
_08047954: .4byte 0x0000023E
	thumb_func_start sub_8047958
sub_8047958:
	ldr r1, _08047968 @ =0x000002B6
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	bx lr
_08047968: .4byte 0x000002B6
	.byte 0x03, 0x49, 0x40, 0x18, 0x02, 0x78, 0x0D, 0x21, 0x49, 0x42, 0x11, 0x40, 0x01, 0x70, 0x70, 0x47
	.byte 0xB6, 0x02, 0x00, 0x00, 0x03, 0x49, 0x40, 0x18, 0x02, 0x78, 0x04, 0x21, 0x49, 0x42, 0x11, 0x40
	.byte 0x01, 0x70, 0x70, 0x47, 0xB6, 0x02, 0x00, 0x00
	thumb_func_start sub_8047994
sub_8047994:
	ldr r1, _080479A4 @ =0x000002B5
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	movs r1, #0x3F
	ands r1, r2
	strb r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_080479A4: .4byte 0x000002B5
	thumb_func_start sub_80479A8
sub_80479A8:
	ldr r1, _080479B8 @ =0x000002B5
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	bx lr
_080479B8: .4byte 0x000002B5
	thumb_func_start sub_80479BC
sub_80479BC:
	push {lr}
	ldr r1, _080479D8 @ =0x000002B6
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x30
	ands r0, r1
	adds r1, r0, #0x0
	cmp r0, #0x00
	beq _080479D0
	movs r1, #0x01
_080479D0:
	adds r0, r1, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080479D8: .4byte 0x000002B6
	.byte 0x00, 0xB5, 0x06, 0x49, 0x40, 0x18, 0x01, 0x78, 0x0C, 0x20, 0x08, 0x40, 0x01, 0x1C, 0x00, 0x28
	.byte 0x00, 0xD0, 0x01, 0x21, 0x08, 0x1C, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xB6, 0x02, 0x00, 0x00
	.byte 0x00, 0xB5, 0x06, 0x49, 0x40, 0x18, 0x01, 0x78, 0x03, 0x20, 0x08, 0x40, 0x01, 0x1C, 0x00, 0x28
	.byte 0x00, 0xD0, 0x01, 0x21, 0x08, 0x1C, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xB6, 0x02, 0x00, 0x00
	thumb_func_start sub_8047A1C
sub_8047A1C:
	push {lr}
	ldr r1, _08047A38 @ =0x000002B5
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0xC0
	ands r0, r1
	adds r1, r0, #0x0
	cmp r0, #0x00
	beq _08047A30
	movs r1, #0x01
_08047A30:
	adds r0, r1, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08047A38: .4byte 0x000002B5
	thumb_func_start sub_8047A3C
sub_8047A3C:
	push {lr}
	ldr r1, _08047A58 @ =0x000002B5
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x30
	ands r0, r1
	adds r1, r0, #0x0
	cmp r0, #0x00
	beq _08047A50
	movs r1, #0x01
_08047A50:
	adds r0, r1, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08047A58: .4byte 0x000002B5
	thumb_func_start sub_8047A5C
sub_8047A5C:
	push {r4, r5, lr}
	mov r12, r0
	adds r4, r1, #0x0
	ldr r0, [sp, #0x00C]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r4, #0x02
	bne _08047A78
	cmp r2, #0x00
	bne _08047A78
	movs r0, #0x00
	b _08047AE6
_08047A78:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x0C]
	ldr r0, _08047A90 @ =0x00000322
	add r0, r12
	strh r1, [r0, #0x00]
	cmp r3, #0x00
	blt _08047A94
	movs r3, #0x01
	b _08047A98
_08047A90: .4byte 0x00000322
_08047A94:
	movs r3, #0x01
	negs r3, r3
_08047A98:
	movs r0, #0xCA
	lsls r0, r0, #0x02
	add r0, r12
	lsls r1, r3, #0x08
	muls r1, r2
	str r1, [r0, #0x00]
	cmp r4, #0x01
	bne _08047AB6
	adds r1, r5, #0x0
	muls r1, r3
	movs r0, #0xC9
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	b _08047ABC
_08047AB6:
	ldr r0, _08047AEC @ =0x00000332
	add r0, r12
	strh r5, [r0, #0x00]
_08047ABC:
	movs r0, #0xCB
	lsls r0, r0, #0x02
	add r0, r12
	movs r1, #0x00
	str r1, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	ldr r3, _08047AF0 @ =0x000002B6
	add r3, r12
	movs r0, #0x03
	ands r4, r0
	lsls r2, r4, #0x04
	ldrb r1, [r3, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r0, #0x01
_08047AE6:
	pop {r4, r5}
	pop {r1}
	bx r1
_08047AEC: .4byte 0x00000332
_08047AF0: .4byte 0x000002B6
	thumb_func_start sub_8047AF4
sub_8047AF4:
	ldr r1, _08047B04 @ =0x000002B5
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	movs r1, #0x01
	ands r0, r1
	bx lr
	.byte 0x00, 0x00
_08047B04: .4byte 0x000002B5
	thumb_func_start sub_8047B08
sub_8047B08:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r3, _08047B28 @ =0x0000023E
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r5, [r0, r3]
	cmp r1, #0x00
	bne _08047B2C
	movs r3, #0x01
	negs r3, r3
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	adds r2, r3, #0x0
	bl sub_80401F0__11FieldObjectiii
	b _08047B3A
_08047B28: .4byte 0x0000023E
_08047B2C:
	movs r3, #0x01
	negs r3, r3
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	adds r2, r3, #0x0
	bl sub_80400B0__11FieldObjectiii
_08047B3A:
	ldr r1, _08047B54 @ =0x0000023E
	adds r0, r4, r1
	strh r5, [r0, #0x00]
	ldr r3, _08047B58 @ =0x000002B5
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047B54: .4byte 0x0000023E
_08047B58: .4byte 0x000002B5
	thumb_func_start sub_8047B5C
sub_8047B5C:
	push {r4, lr}
	ldr r2, _08047B74 @ =0x00000266
	adds r3, r0, r2
	ldrh r2, [r3, #0x00]
	movs r4, #0x9A
	lsls r4, r4, #0x02
	adds r0, r0, r4
	strh r2, [r0, #0x00]
	strh r1, [r3, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08047B74: .4byte 0x00000266
	thumb_func_start sub_8047B78
sub_8047B78:
	push {lr}
	ldr r1, _08047B94 @ =0x000002B5
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	adds r1, r0, #0x0
	cmp r0, #0x00
	beq _08047B8C
	movs r1, #0x01
_08047B8C:
	adds r0, r1, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08047B94: .4byte 0x000002B5
	thumb_func_start sub_8047B98
sub_8047B98:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x12]
	lsls r2, r2, #0x1D
	lsrs r2, r2, #0x1E
	ldr r0, _08047BE0 @ =0x00000213
	adds r4, r5, r0
	lsls r2, r2, #0x06
	ldrb r3, [r4, #0x00]
	movs r0, #0x3F
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x00]
	ldr r2, _08047BE4 @ =0x00000212
	adds r4, r5, r2
	movs r0, #0x03
	adds r2, r1, #0x0
	ands r2, r0
	lsls r2, r2, #0x07
	ldrh r3, [r4, #0x00]
	ldr r0, _08047BE8 @ =0xFFFFFE7F
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x02
	adds r2, r5, r0
	cmp r1, #0x01
	bne _08047BF0
	ldr r0, _08047BEC @ =0x083A0633
	b _08047BF2
	.byte 0x00, 0x00
_08047BE0: .4byte 0x00000213
_08047BE4: .4byte 0x00000212
_08047BE8: .4byte 0xFFFFFE7F
_08047BEC: .4byte 0x083A0633
_08047BF0:
	ldr r0, _08047C14 @ =0x083A061D
_08047BF2:
	str r0, [r2, #0x00]
	movs r1, #0xAC
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x00]
	movs r2, #0xAD
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	pop {r4, r5}
	pop {r0}
	bx r0
_08047C14: .4byte 0x083A061D
	thumb_func_start sub_8047C18
sub_8047C18:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	ldr r1, [r2, #0x1C]
	ldr r0, [r3, #0x1C]
	cmp r1, r0
	beq _08047C5E
	adds r0, r2, #0x0
	adds r0, #0x26
	ldrb r1, [r0, #0x00]
	movs r4, #0x0C
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08047C44
	adds r0, r3, #0x0
	adds r0, #0x26
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08047C56
_08047C44:
	ldr r0, [r2, #0x20]
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x20]
	ldr r0, [r0, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _08047C5E
_08047C56:
	ldr r0, [r2, #0x1C]
	ldr r1, [r3, #0x1C]
	subs r0, r0, r1
	b _08047C60
_08047C5E:
	movs r0, #0x00
_08047C60:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8047C68
sub_8047C68:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	adds r2, #0x78
	movs r3, #0x00
	ldsh r0, [r2, r3]
	adds r0, r5, r0
	ldr r2, [r2, #0x04]
	bl _call_via_r2
	movs r4, #0x00
	movs r0, #0x8E
	lsls r0, r0, #0x02
	adds r3, r5, r0
	movs r1, #0x00
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08047CCC
	adds r0, r1, #0x0
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	movs r6, #0x9D
	lsls r6, r6, #0x02
	adds r2, r4, r6
	adds r0, r0, r1
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	ldr r1, [r5, #0x14]
	cmp r1, r0
	blt _08047CCC
	adds r1, r5, #0x0
	adds r1, #0x29
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strb r0, [r5, #0x01]
	strb r0, [r3, #0x00]
	movs r4, #0x00
_08047CCC:
	ldr r3, [r5, #0x14]
	cmp r4, #0x00
	beq _08047CE0
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	adds r3, r3, r0
_08047CE0:
	str r3, [r5, #0x1C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8047CE8
sub_8047CE8:
	mov r12, r0
	movs r0, #0xFF
	mov r1, r12
	strb r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strb r0, [r1, #0x01]
	movs r1, #0x8E
	lsls r1, r1, #0x02
	add r1, r12
	strb r0, [r1, #0x00]
	mov r2, r12
	adds r2, #0x24
	ldrb r1, [r2, #0x00]
	movs r3, #0x79
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r0, r12
	ldrh r1, [r0, #0x24]
	ldr r0, _08047D3C @ =0xFFFFFE7F
	ands r0, r1
	mov r1, r12
	strh r0, [r1, #0x24]
	adds r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	ands r0, r3
	strb r0, [r2, #0x00]
	mov r1, r12
	ldr r0, [r1, #0x24]
	ldr r1, _08047D40 @ =0xFFFE7FFF
	ands r0, r1
	mov r1, r12
	str r0, [r1, #0x24]
	bx lr
_08047D3C: .4byte 0xFFFFFE7F
_08047D40: .4byte 0xFFFE7FFF
	thumb_func_start sub_8047D44
sub_8047D44:
	push {lr}
	movs r2, #0xCD
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	ldr r1, _08047D60 @ =0x0000026E
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_8116654
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047D60: .4byte 0x0000026E
	thumb_func_start sub_8047D64
sub_8047D64:
	push {lr}
	movs r2, #0xCD
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	ldr r1, _08047D80 @ =0x0000026E
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_8116680
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047D80: .4byte 0x0000026E
	thumb_func_start sub_8047D84
sub_8047D84:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0xCD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	subs r1, #0xC6
	adds r5, r4, r1
	ldrb r1, [r5, #0x00]
	bl sub_8115048
	ldr r0, _08047DC0 @ =0x0000020E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xFF
	strb r0, [r5, #0x00]
	movs r1, #0x9B
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldr r0, _08047DC4 @ =0x0000FFFF
	strh r0, [r4, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08047DC0: .4byte 0x0000020E
_08047DC4: .4byte 0x0000FFFF
	thumb_func_start sub_8047DC8
sub_8047DC8:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r1, #0x9B
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _08047DF4 @ =0x0000FFFF
	cmp r1, r0
	beq _08047E3A
	movs r3, #0x00
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrh r2, [r0, #0x14]
	movs r1, #0x01
	adds r0, r2, #0x0
	b _08047DFE
	.byte 0x00, 0x00
_08047DF4: .4byte 0x0000FFFF
_08047DF8:
	adds r3, #0x01
	adds r0, r2, #0x0
	asrs r0, r3
_08047DFE:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08047DF8
	movs r1, #0xCD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x9B
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldrh r2, [r1, #0x00]
	adds r3, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _08047E44 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r1, r5, #0x0
	bl sub_8114C1C
	ldr r2, _08047E48 @ =0x0000026E
	adds r1, r4, r2
	strb r0, [r1, #0x00]
	ldr r0, _08047E4C @ =0x00000216
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_08047E3A:
	add sp, #0x008
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047E44: .4byte 0x0000FFFF
_08047E48: .4byte 0x0000026E
_08047E4C: .4byte 0x00000216
	thumb_func_start sub_8047E50
sub_8047E50:
	push {lr}
	movs r3, #0x9B
	lsls r3, r3, #0x02
	adds r2, r0, r3
	strh r1, [r2, #0x00]
	ldr r1, _08047E74 @ =0x0000020E
	adds r3, r0, r1
	ldrb r1, [r3, #0x00]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r2, _08047E78 @ =0x0000026E
	adds r1, r0, r2
	ldrb r1, [r1, #0x00]
	bl sub_8047DC8
	pop {r0}
	bx r0
_08047E74: .4byte 0x0000020E
_08047E78: .4byte 0x0000026E
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x69, 0x90, 0x6B, 0x81, 0x42, 0x06, 0xD1, 0xD1, 0x68, 0x50, 0x6B
	.byte 0x81, 0x42, 0x02, 0xD1, 0x01, 0x20, 0x40, 0x42, 0x0D, 0xE0, 0x90, 0x6B, 0x11, 0x69, 0x40, 0x1A
	.byte 0x00, 0x04, 0x00, 0x14, 0xD1, 0x68, 0x52, 0x6B, 0x89, 0x1A, 0x09, 0x04, 0x09, 0x14, 0x92, 0xF1
	.byte 0xF1, 0xFB, 0x00, 0x04, 0x00, 0x0C, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	thumb_func_start sub_8047EB8
sub_8047EB8:
	mov r12, r0
	movs r0, #0x97
	lsls r0, r0, #0x02
	add r0, r12
	movs r2, #0x01
	negs r2, r2
	str r2, [r0, #0x00]
	ldr r3, _08047EF4 @ =0x00000213
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0x94
	lsls r0, r0, #0x02
	add r0, r12
	str r2, [r0, #0x00]
	str r2, [r1, #0x00]
	movs r0, #0x90
	lsls r0, r0, #0x02
	add r0, r12
	ldrh r1, [r0, #0x00]
	ldr r0, _08047EF8 @ =0x0000023E
	add r0, r12
	strh r1, [r0, #0x00]
	bx lr
_08047EF4: .4byte 0x00000213
_08047EF8: .4byte 0x0000023E
	thumb_func_start sub_8047EFC
sub_8047EFC:
	push {r4, r5, lr}
	mov r12, r0
	ldr r5, [sp, #0x00C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08047F54 @ =0x0000023E
	add r0, r12
	movs r4, #0x00
	strh r1, [r0, #0x00]
	movs r0, #0x98
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	ldr r0, _08047F58 @ =0x00000262
	add r0, r12
	strh r2, [r0, #0x00]
	movs r0, #0x99
	lsls r0, r0, #0x02
	add r0, r12
	strh r3, [r0, #0x00]
	ldr r0, _08047F5C @ =0x00000266
	add r0, r12
	strh r5, [r0, #0x00]
	movs r0, #0x95
	lsls r0, r0, #0x02
	add r0, r12
	str r4, [r0, #0x00]
	movs r0, #0x97
	lsls r0, r0, #0x02
	add r0, r12
	movs r1, #0x01
	negs r1, r1
	str r1, [r0, #0x00]
	movs r0, #0x93
	lsls r0, r0, #0x02
	add r0, r12
	str r1, [r0, #0x00]
	movs r0, #0x94
	lsls r0, r0, #0x02
	add r0, r12
	str r1, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08047F54: .4byte 0x0000023E
_08047F58: .4byte 0x00000262
_08047F5C: .4byte 0x00000266
	thumb_func_start sub_8047F60
sub_8047F60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [sp, #0x00C]
	cmp r0, #0x00
	bne _08047F72
	str r1, [r4, #0x0C]
	str r2, [r4, #0x10]
	str r3, [r4, #0x18]
	b _08047F88
_08047F72:
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r1, r1, r3
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
_08047F88:
	movs r1, #0x00
	str r1, [r4, #0x14]
	ldr r0, [sp, #0x008]
	cmp r0, #0x00
	beq _08047FC4
	ldr r0, [r4, #0x0C]
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x38]
	str r1, [r4, #0x3C]
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x40]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08047FC4
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x78
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x04]
	movs r1, #0x01
	bl _call_via_r2
_08047FC4:
	ldr r1, _08047FD8 @ =0x00000217
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047FD8: .4byte 0x00000217
	thumb_func_start sub_8047FDC
sub_8047FDC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r1, _08048034 @ =0x00000222
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0804802E
	ldr r0, _08048038 @ =0x0000020F
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r0, [r5, #0x00]
	ldrb r4, [r0, #0x12]
	lsls r4, r4, #0x1D
	lsrs r4, r4, #0x1E
	bl sub_8021ED8
	ldr r2, [r5, #0x00]
	lsls r4, r4, #0x01
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x12]
	ldr r1, _0804803C @ =0x0000020E
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804802E
	adds r0, r6, #0x0
	movs r1, #0xFF
	bl sub_8047DC8
_0804802E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08048034: .4byte 0x00000222
_08048038: .4byte 0x0000020F
_0804803C: .4byte 0x0000020E
	thumb_func_start sub_8048040
sub_8048040:
	push {lr}
	adds r3, r0, #0x0
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, _08048060 @ =0x08CDBDE8
	str r0, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804805C
	adds r0, r3, #0x0
	bl __builtin_delete
_0804805C:
	pop {r0}
	bx r0
_08048060: .4byte 0x08CDBDE8
