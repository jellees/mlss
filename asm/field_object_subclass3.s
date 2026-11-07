	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start __20FieldObjectSubclass3ii
__20FieldObjectSubclass3ii:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl __11FieldObjectii
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, _08050928 @ =0x08CDC068
	str r0, [r1, #0x00]
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x39
	negs r1, r1
	ands r0, r1
	adds r1, #0x36
	ands r0, r1
	subs r1, #0x02
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r0, _0805092C @ =0xFFFFFC3F
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r5, _08050930 @ =0x0000023B
	adds r0, r4, r5
	movs r3, #0x00
	strb r3, [r0, #0x00]
	ldr r0, _08050934 @ =0x0000033E
	adds r2, r4, r0
	ldrh r0, [r2, #0x00]
	subs r5, #0x3D
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r5, _08050938 @ =0x00000342
	adds r1, r4, r5
	ldr r0, _0805093C @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x01
	negs r0, r0
	strh r0, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	adds r5, #0x0A
	adds r0, r4, r5
	str r3, [r0, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_08050928: .4byte 0x08CDC068
_0805092C: .4byte 0xFFFFFC3F
_08050930: .4byte 0x0000023B
_08050934: .4byte 0x0000033E
_08050938: .4byte 0x00000342
_0805093C: .4byte 0x0000FFFF
	thumb_func_start __20FieldObjectSubclass3PUcUsii
__20FieldObjectSubclass3PUcUsii:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	mov r9, r1
	adds r1, r3, #0x0
	ldr r3, [sp, #0x02C]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x008]
	adds r2, r3, #0x0
	bl __11FieldObjectii
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldr r0, _08050AEC @ =0x08CDC068
	str r0, [r1, #0x00]
	mov r1, r9
	ldrb r0, [r1, #0x03]
	lsrs r3, r0, #0x07
	ldrb r2, [r1, #0x04]
	lsls r0, r2, #0x01
	movs r1, #0x1E
	ands r0, r1
	orrs r3, r0
	mov r4, r9
	ldrb r0, [r4, #0x01]
	lsls r1, r0, #0x04
	movs r0, #0x08
	ands r2, r0
	cmp r2, #0x00
	beq _0805098C
	subs r0, #0x28
	orrs r3, r0
_0805098C:
	adds r0, r1, r3
	lsls r6, r0, #0x08
	mov r1, r9
	ldrb r0, [r1, #0x04]
	lsrs r3, r0, #0x04
	ldrb r2, [r1, #0x05]
	lsls r0, r2, #0x04
	movs r1, #0x10
	ands r0, r1
	orrs r3, r0
	mov r4, r9
	ldrb r0, [r4, #0x02]
	lsls r1, r0, #0x04
	movs r0, #0x01
	ands r2, r0
	cmp r2, #0x00
	beq _080509B2
	subs r0, #0x21
	orrs r3, r0
_080509B2:
	adds r0, r1, r3
	lsls r5, r0, #0x08
	mov r0, r9
	ldrb r2, [r0, #0x05]
	lsrs r3, r2, #0x01
	ldrb r1, [r0, #0x03]
	movs r0, #0x7F
	ands r0, r1
	lsls r1, r0, #0x03
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _080509D2
	movs r0, #0x20
	negs r0, r0
	orrs r3, r0
_080509D2:
	adds r0, r1, r3
	lsls r3, r0, #0x08
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_8047F60__11FieldObjectiiiii
	ldr r1, _08050AF0 @ =0x0000020F
	adds r6, r7, r1
	ldrb r0, [r6, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r2, #0x04
	mov r8, r2
	mov r3, r8
	orrs r0, r3
	strb r0, [r6, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r5, r7, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x0F
	negs r0, r0
	ands r0, r1
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r1, _08050AF4 @ =0x0000020D
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r3, #0x02
	negs r3, r3
	mov r10, r3
	mov r0, r10
	ands r0, r1
	subs r3, #0x01
	ands r0, r3
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, _08050AF8 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x09
	orrs r0, r1
	str r0, [r5, #0x00]
	ldr r0, _08050AFC @ =0x0000020E
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	mov r1, r8
	orrs r0, r1
	movs r1, #0x38
	orrs r0, r1
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08050B00 @ =0x00000222
	adds r0, r7, r2
	strb r4, [r0, #0x00]
	ldr r1, _08050B04 @ =0x00000223
	adds r0, r7, r1
	strb r4, [r0, #0x00]
	subs r2, #0x0C
	adds r1, r7, r2
	ldrb r0, [r1, #0x00]
	ands r3, r0
	strb r3, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x55
	strb r4, [r0, #0x00]
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r0, r7, r3
	str r4, [r0, #0x00]
	movs r1, #0x8B
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r4, [r0, #0x00]
	ldrb r0, [r5, #0x00]
	movs r3, #0x01
	orrs r0, r3
	strb r0, [r5, #0x00]
	ldrb r1, [r6, #0x00]
	mov r0, r10
	ands r0, r1
	strb r0, [r6, #0x00]
	movs r4, #0x85
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _08050B08 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r3, [sp, #0x008]
	movs r4, #0x9B
	lsls r4, r4, #0x05
	adds r2, r3, r4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08050B28
	mov r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, #0x20
	beq _08050B0C
	movs r2, #0x00
	cmp r0, #0x40
	bne _08050B0E
	movs r2, #0x01
	b _08050B0E
	.byte 0x00, 0x00
_08050AEC: .4byte 0x08CDC068
_08050AF0: .4byte 0x0000020F
_08050AF4: .4byte 0x0000020D
_08050AF8: .4byte 0xFFFC7FFF
_08050AFC: .4byte 0x0000020E
_08050B00: .4byte 0x00000222
_08050B04: .4byte 0x00000223
_08050B08: .4byte 0x03000FC0
_08050B0C:
	movs r2, #0x02
_08050B0E:
	movs r4, #0xCF
	lsls r4, r4, #0x02
	adds r3, r7, r4
	lsls r2, r2, #0x03
	ldrb r1, [r3, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _08050B36
_08050B28:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	mov r0, r10
	ands r0, r1
	strb r0, [r2, #0x00]
_08050B36:
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r0, _08050BAC @ =0xFFFFFC3F
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _08050BB0 @ =0x0000023B
	adds r0, r7, r2
	movs r3, #0x00
	strb r3, [r0, #0x00]
	ldr r4, _08050BB4 @ =0x0000033E
	adds r2, r7, r4
	ldrh r0, [r2, #0x00]
	movs r4, #0xFF
	lsls r4, r4, #0x01
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x02
	adds r1, r7, r0
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r2, _08050BB8 @ =0x00000342
	adds r1, r7, r2
	ldr r0, _08050BBC @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r4, #0xD1
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r1, sp
	ldrh r1, [r1, #0x08]
	strh r1, [r0, #0x00]
	adds r2, #0x06
	adds r0, r7, r2
	mov r4, r9
	str r4, [r0, #0x00]
	movs r1, #0xD3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r3, [r0, #0x00]
	adds r0, r7, #0x0
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08050BAC: .4byte 0xFFFFFC3F
_08050BB0: .4byte 0x0000023B
_08050BB4: .4byte 0x0000033E
_08050BB8: .4byte 0x00000342
_08050BBC: .4byte 0x0000FFFF
	thumb_func_start sub_8050BC0
sub_8050BC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r0, r0, r6
	mov r8, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x00
	bne _08050CA0
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl method2__11FieldObjectPUsT1Pv
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x08
	cmp r0, r1
	bne _08050BFC
	b _08050DA2
_08050BFC:
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	movs r3, #0xD3
	lsls r3, r3, #0x02
	adds r5, r6, r3
	str r0, [r5, #0x00]
	str r7, [sp, #0x000]
	movs r1, #0x03
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08050C32
	b _08050DA2
_08050C32:
	ldr r1, [r5, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r6, r0
	ldr r0, [r3, #0x00]
	ldrh r0, [r0, #0x0E]
	strh r0, [r1, #0x0E]
	ldr r4, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r4, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r4, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	ldrb r2, [r4, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r1, [r5, #0x00]
	ldr r0, [r3, #0x00]
	str r0, [r5, #0x00]
	str r1, [r3, #0x00]
	b _08050DA2
_08050CA0:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08050CC4
	ldr r0, _08050CC0 @ =0x083A0CF8
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	lsls r2, r1, #0x02
	adds r2, r2, r0
	ldrh r2, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x01
	adds r1, r1, r0
	ldrh r7, [r1, #0x00]
	b _08050CCA
_08050CC0: .4byte 0x083A0CF8
_08050CC4:
	movs r2, #0x80
	lsls r2, r2, #0x08
	movs r7, #0x03
_08050CCA:
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x02
	adds r1, r2, #0x0
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	adds r5, r0, #0x0
	ldr r1, _08050D60 @ =0x00000216
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x48]
	cmp r0, #0x00
	beq _08050D2C
	ldr r0, [r0, #0x04]
	bl sub_80198B0
	lsrs r1, r0, #0x05
	ldrh r2, [r5, #0x28]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x17
	cmp r1, r0
	ble _08050D2C
	ldr r3, _08050D64 @ =0x000001FF
	adds r0, r3, #0x0
	ands r1, r0
	ldr r0, _08050D68 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #0x28]
_08050D2C:
	movs r0, #0xA6
	lsls r0, r0, #0x02
	adds r3, r6, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08050D6C
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1E
	ldrb r2, [r5, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1F]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x02
	movs r2, #0x0D
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1F]
	b _08050D84
_08050D60: .4byte 0x00000216
_08050D64: .4byte 0x000001FF
_08050D68: .4byte 0xFFFFFE00
_08050D6C:
	ldrb r1, [r5, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x04
	negs r1, r1
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r5, #0x1F]
_08050D84:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r5, [r0, #0x00]
	movs r3, #0xA6
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	bl sub_80415A0__11FieldObject
_08050DA2:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8050DB0
sub_8050DB0:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x05
	ands r0, r1
	cmp r0, #0x00
	bne _08050EA0
	movs r3, #0xD3
	lsls r3, r3, #0x02
	adds r6, r7, r3
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _08050EA0
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	movs r1, #0xA6
	lsls r1, r1, #0x02
	adds r4, r7, r1
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x01
	ldrb r2, [r4, #0x00]
	movs r5, #0x03
	negs r5, r5
	adds r1, r5, #0x0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1C
	movs r2, #0x0D
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x06
	movs r2, #0x3F
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1C
	ldr r1, _08050E98 @ =0x00000299
	adds r3, r7, r1
	lsrs r0, r0, #0x1F
	ldrb r2, [r3, #0x00]
	movs r1, #0x02
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1B
	movs r2, #0x01
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x01
	ands r1, r5
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	ldr r3, _08050E9C @ =0x0000029B
	adds r0, r7, r3
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, #0x23
	ldrb r1, [r0, #0x00]
	adds r3, #0x01
	adds r0, r7, r3
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrh r1, [r0, #0x2A]
	adds r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrh r1, [r0, #0x2C]
	adds r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrh r1, [r0, #0x04]
	adds r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrh r1, [r0, #0x06]
	adds r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldrb r0, [r4, #0x00]
	orrs r0, r2
	strb r0, [r4, #0x00]
	b _08050EA6
	.byte 0x00, 0x00
_08050E98: .4byte 0x00000299
_08050E9C: .4byte 0x0000029B
_08050EA0:
	adds r0, r7, #0x0
	bl method3__11FieldObject
_08050EA6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8050EAC
sub_8050EAC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r2, r1, #0x0
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	ldrb r1, [r3, #0x07]
	lsls r1, r1, #0x08
	ldrb r0, [r3, #0x06]
	orrs r0, r1
	ldrb r1, [r3, #0x00]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_8116A2C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r5, r0, #0x15
	movs r0, #0x7F
	ands r5, r0
	movs r0, #0x0F
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ands r0, r3
	lsls r0, r0, #0x06
	ldrh r1, [r2, #0x00]
	ldr r4, _08050F28 @ =0xFFFFFC3F
	ands r4, r1
	orrs r4, r0
	strh r4, [r2, #0x00]
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	beq _08050FC8
	movs r0, #0xF0
	lsls r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _08050F70
	lsls r0, r4, #0x16
	lsrs r0, r0, #0x1C
	cmp r0, #0x02
	bhi _08050F70
	cmp r5, #0x01
	bls _08050F48
	ldr r3, _08050F2C @ =0x00000342
	adds r2, r6, r3
	movs r0, #0x00
	ldsh r1, [r2, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08050F30
	lsls r0, r5, #0x04
	adds r0, r0, r5
	strh r0, [r2, #0x00]
	subs r1, r5, #0x1
	movs r2, #0xD0
	lsls r2, r2, #0x02
	b _08050F54
_08050F28: .4byte 0xFFFFFC3F
_08050F2C: .4byte 0x00000342
_08050F30:
	movs r3, #0xD0
	lsls r3, r3, #0x02
	adds r1, r6, r3
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bne _08050F58
	strh r0, [r2, #0x00]
	b _08050F58
_08050F48:
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r6, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r2, _08050F68 @ =0x00000342
_08050F54:
	adds r0, r6, r2
	strh r1, [r0, #0x00]
_08050F58:
	movs r3, #0xCF
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r1, [r0, #0x00]
	ldr r2, _08050F6C @ =0xFFFE03FF
	ands r1, r2
	str r1, [r0, #0x00]
	b _08050F92
_08050F68: .4byte 0x00000342
_08050F6C: .4byte 0xFFFE03FF
_08050F70:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r2, r6, r0
	lsls r3, r5, #0x0A
	ldr r0, [r2, #0x00]
	ldr r1, _08050FBC @ =0xFFFE03FF
	ands r0, r1
	orrs r0, r3
	str r0, [r2, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r6, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r2, _08050FC0 @ =0x00000342
	adds r0, r6, r2
	strh r1, [r0, #0x00]
_08050F92:
	ldr r0, _08050FC4 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	adds r0, r0, r3
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r1, r6, r2
	movs r3, #0x9B
	lsls r3, r3, #0x05
	adds r2, r3, #0x0
	ldrh r1, [r1, #0x00]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80E9958
	movs r0, #0x01
	b _08050FCA
_08050FBC: .4byte 0xFFFE03FF
_08050FC0: .4byte 0x00000342
_08050FC4: .4byte 0x03000FC0
_08050FC8:
	movs r0, #0x00
_08050FCA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_8050FD0
sub_8050FD0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldrb r1, [r4, #0x00]
	movs r2, #0x01
	mov r8, r2
	mov r0, r8
	ands r0, r1
	cmp r0, #0x00
	beq _08050FF0
	b _08051114
_08050FF0:
	movs r0, #0x01
	orrs r1, r0
	strb r1, [r4, #0x00]
	movs r3, #0xD3
	lsls r3, r3, #0x02
	adds r5, r6, r3
	ldr r7, [r5, #0x00]
	cmp r7, #0x00
	beq _0805109C
	movs r0, #0x39
	negs r0, r0
	ands r1, r0
	strb r1, [r4, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r0, [r4, #0x00]
	bl sub_8020D40
	ldr r0, [r5, #0x00]
	bl sub_8021ED8
	ldr r1, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrh r0, [r0, #0x0E]
	strh r0, [r1, #0x0E]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r2, [r5, #0x00]
	ldr r0, [r4, #0x00]
	str r0, [r5, #0x00]
	str r2, [r4, #0x00]
	ldr r1, _08051098 @ =0x0000020F
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08051114
	adds r0, r2, #0x0
	bl sub_8020D40
	b _08051114
_08051098: .4byte 0x0000020F
_0805109C:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	ldr r2, _08051120 @ =0x083A0CF8
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x01
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	str r7, [sp, #0x000]
	movs r2, #0x01
	movs r3, #0x00
	bl sub_801E150
	ldr r0, _08051124 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	adds r0, r0, r3
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r1, r6, r2
	movs r3, #0x9B
	lsls r3, r3, #0x05
	adds r2, r3, #0x0
	ldrh r1, [r1, #0x00]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9958
	ldrh r1, [r4, #0x00]
	ldr r0, _08051128 @ =0xFFFFFC3F
	ands r0, r1
	strh r0, [r4, #0x00]
	ldr r1, _0805112C @ =0x0000023B
	adds r0, r6, r1
	strb r7, [r0, #0x00]
	ldr r3, _08051130 @ =0x0000033E
	adds r2, r6, r3
	ldrh r0, [r2, #0x00]
	movs r3, #0xFF
	lsls r3, r3, #0x01
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r6, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	ldr r3, _08051134 @ =0x00000342
	adds r1, r6, r3
	ldr r0, _08051138 @ =0x0000FFFF
	strh r0, [r1, #0x00]
_08051114:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08051120: .4byte 0x083A0CF8
_08051124: .4byte 0x03000FC0
_08051128: .4byte 0xFFFFFC3F
_0805112C: .4byte 0x0000023B
_08051130: .4byte 0x0000033E
_08051134: .4byte 0x00000342
_08051138: .4byte 0x0000FFFF
	thumb_func_start sub_805113C
sub_805113C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r2, r0, #0x0
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r3, r2, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08051200
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r3, _080511E8 @ =0x0000023B
	adds r1, r2, r3
	movs r0, #0x00
	strb r0, [r1, #0x00]
	movs r0, #0xD3
	lsls r0, r0, #0x02
	adds r5, r2, r0
	ldr r1, [r5, #0x00]
	cmp r1, #0x00
	beq _080511EC
	adds r3, #0x59
	adds r4, r2, r3
	ldr r0, [r4, #0x00]
	bl sub_8020D40
	ldr r0, [r5, #0x00]
	bl sub_8021ED8
	ldr r1, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrh r0, [r0, #0x0E]
	strh r0, [r1, #0x0E]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r1, [r5, #0x00]
	ldr r0, [r4, #0x00]
	str r0, [r5, #0x00]
	str r1, [r4, #0x00]
	b _08051200
	.byte 0x00, 0x00
_080511E8: .4byte 0x0000023B
_080511EC:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_08051200:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8051208
sub_8051208:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r6, r4, r0
	ldrb r2, [r6, #0x00]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	beq _080512C8
	ldr r2, _08051244 @ =0x0000033E
	adds r3, r4, r2
	ldrh r2, [r3, #0x00]
	movs r5, #0xFF
	lsls r5, r5, #0x01
	adds r0, r5, #0x0
	ands r0, r2
	cmp r0, r5
	bne _08051250
	ldr r2, _08051248 @ =0x083A0D14
	lsrs r0, r1, #0x03
	movs r1, #0x03
	ands r0, r1
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	ldr r3, _0805124C @ =0x0000023B
	adds r0, r4, r3
	strb r1, [r0, #0x00]
	b _080512A2
_08051244: .4byte 0x0000033E
_08051248: .4byte 0x083A0D14
_0805124C: .4byte 0x0000023B
_08051250:
	lsls r0, r2, #0x17
	asrs r0, r0, #0x18
	cmp r0, #0x00
	blt _080512A2
	adds r1, r0, #0x1
	movs r0, #0xFF
	ands r1, r0
	lsls r1, r1, #0x01
	ldr r0, _080512B8 @ =0xFFFFFE01
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x00]
	ldr r1, _080512BC @ =0x083A0D18
	lsls r0, r0, #0x17
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ldr r2, _080512C0 @ =0x0000023B
	adds r1, r4, r2
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080512A2
	ldrh r1, [r3, #0x00]
	adds r0, r5, #0x0
	orrs r0, r1
	strh r0, [r3, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _080512A2
	ldr r3, _080512C4 @ =0x00000342
	adds r0, r4, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080512A2
	adds r0, r4, #0x0
	bl sub_805113C
_080512A2:
	ldr r2, _080512C4 @ =0x00000342
	adds r1, r4, r2
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _08051320
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08051320
	.byte 0x00, 0x00
_080512B8: .4byte 0xFFFFFE01
_080512BC: .4byte 0x083A0D18
_080512C0: .4byte 0x0000023B
_080512C4: .4byte 0x00000342
_080512C8:
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	beq _08051320
	ldr r0, _08051328 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r3, #0x9B
	lsls r3, r3, #0x05
	adds r2, r3, #0x0
	ldrh r1, [r1, #0x00]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _08051320
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r2, _0805132C @ =0x083A0CF8
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x01
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	str r3, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_08051320:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08051328: .4byte 0x03000FC0
_0805132C: .4byte 0x083A0CF8
	thumb_func_start sub_8051330
sub_8051330:
	push {lr}
	adds r2, r0, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08051356
	ldr r0, _0805135C @ =0x0000023B
	adds r1, r2, r0
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldr r1, _08051360 @ =0x0000033E
	adds r2, r2, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _08051364 @ =0xFFFFFE01
	ands r0, r1
	strh r0, [r2, #0x00]
_08051356:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805135C: .4byte 0x0000023B
_08051360: .4byte 0x0000033E
_08051364: .4byte 0xFFFFFE01
	thumb_func_start sub_8051368
sub_8051368:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08051394 @ =0x0000020F
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8021ED8
	ldr r0, _08051398 @ =0x0000023D
	adds r4, r4, r0
	movs r0, #0x07
	strb r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051394: .4byte 0x0000020F
_08051398: .4byte 0x0000023D
