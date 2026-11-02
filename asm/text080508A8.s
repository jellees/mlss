	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80508A8
sub_80508A8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl init_fobj_803FEB8
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
	thumb_func_start sub_8050940
sub_8050940:
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
	bl init_fobj_803FEB8
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
	bl sub_8047F60
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
	bl sub_80403C4
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
	bl sub_80415A0
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
	bl sub_80409F4
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
	thumb_func_start sub_805139C
sub_805139C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	bl init_fobj_803FEB8
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, _0805141C @ =0x08CDC108
	str r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r6, #0x41
	negs r6, r6
	ands r0, r6
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08051420 @ =0x0000020D
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	movs r3, #0x02
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	subs r1, #0x06
	ands r0, r1
	subs r1, #0x08
	ands r0, r1
	ands r0, r6
	strb r0, [r5, #0x00]
	ldr r0, [r2, #0x00]
	ldr r1, _08051424 @ =0xFFFC7FFF
	ands r0, r1
	str r0, [r2, #0x00]
	ldr r0, _08051428 @ =0x0000020E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0805142C @ =0x0000020F
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	ands r3, r0
	strb r3, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	ldr r1, _08051430 @ =0xFFFE1FFF
	ands r0, r1
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0805141C: .4byte 0x08CDC108
_08051420: .4byte 0x0000020D
_08051424: .4byte 0xFFFC7FFF
_08051428: .4byte 0x0000020E
_0805142C: .4byte 0x0000020F
_08051430: .4byte 0xFFFE1FFF
	thumb_func_start sub_8051434
sub_8051434:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, _08051480 @ =0x0000020F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0805147A
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldr r3, [r1, #0x00]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _08051456
	adds r0, #0xFF
_08051456:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	ldr r3, [r1, #0x00]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08051464
	adds r0, #0xFF
_08051464:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x02]
	ldr r1, [r1, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0F
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0C
	strh r0, [r1, #0x0E]
_0805147A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051480: .4byte 0x0000020F
	thumb_func_start sub_8051484
sub_8051484:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80403C4
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x1F]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	thumb_func_start nullsub_20
nullsub_20: @ 080514B0
	bx lr
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	thumb_func_start nullsub_19
nullsub_19: @ 080514B8
	bx lr
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	thumb_func_start nullsub_18
nullsub_18: @ 080514C0
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_80514C4
sub_80514C4:
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r6, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x98
	lsls r2, r2, #0x01
	adds r1, r6, r2
	adds r1, r1, r0
	ldrh r4, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r5, r5, r0
	movs r3, #0x00
	ldsh r2, [r5, r3]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_813A5C8
	ldr r0, _08051530 @ =0x00000242
	adds r3, r6, r0
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08051534
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08051536
	.byte 0x00, 0x00
_08051530: .4byte 0x00000242
_08051534:
	movs r0, #0xFF
_08051536:
	strb r0, [r6, #0x02]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08051558 @ =0x0805155D
	str r0, [r7, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051558: .4byte sub_805155C
	thumb_func_start sub_805155C
sub_805155C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139F08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08051594
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _080515CC
_08051594:
	cmp r6, #0x00
	bne _080515CC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r5, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r5, r1
	strh r6, [r0, #0x00]
	adds r2, #0x70
	adds r0, r5, r2
	strh r6, [r0, #0x00]
	ldr r0, _080515D4 @ =0x0813B1E9
	str r0, [r7, #0x00]
	ldr r0, _080515D8 @ =0x080514C5
	str r0, [r7, #0x0C]
_080515CC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080515D4: .4byte sub_813B1E8
_080515D8: .4byte sub_80514C4
	thumb_func_start sub_80515DC
sub_80515DC:
	push {r4, lr}
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08051600 @ =0x08051615
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08051604 @ =0x080514C5
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08051600: .4byte sub_8051614
_08051604: .4byte sub_80514C4
	thumb_func_start sub_8051608
sub_8051608:
	push {lr}
	bl sub_80515DC
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8051614
sub_8051614:
	push {lr}
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r2, r1, r3
	ldr r3, [r2, #0x00]
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8051628
sub_8051628:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	bl process_add
	ldr r0, _08051684 @ =0x08CDC1A8
	str r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08051688 @ =0x0300034C
	ldr r1, _0805168C @ =0x00000884
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	strh r4, [r6, #0x2A]
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r6, #0x24]
	strh r1, [r6, #0x1C]
	strh r1, [r6, #0x1E]
	strh r1, [r6, #0x20]
	strh r1, [r6, #0x22]
	movs r0, #0x78
	strh r0, [r6, #0x26]
	movs r0, #0x50
	strh r0, [r6, #0x28]
	ldr r1, _08051690 @ =0x083A0D2C
	ldrh r0, [r1, #0x00]
	ldr r2, _08051694 @ =0x0000FFFF
	cmp r0, r2
	beq _080516A0
_08051672:
	cmp r0, r4
	bne _08051698
	ldrh r0, [r1, #0x02]
	strh r0, [r6, #0x24]
	ldrh r0, [r1, #0x04]
	strh r0, [r6, #0x26]
	ldrh r0, [r1, #0x06]
	strh r0, [r6, #0x28]
	b _080516A0
_08051684: .4byte 0x08CDC1A8
_08051688: .4byte 0x0300034C
_0805168C: .4byte 0x00000884
_08051690: .4byte 0x083A0D2C
_08051694: .4byte 0x0000FFFF
_08051698:
	adds r1, #0x08
	ldrh r0, [r1, #0x00]
	cmp r0, r2
	bne _08051672
_080516A0:
	ldr r5, _0805172C @ =0x081E26C4
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x01
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl process_add
	ldr r0, _08051730 @ =0x08CDC1B8
	str r0, [r4, #0x18]
	str r4, [r6, #0x40]
	str r6, [r4, #0x14]
	adds r0, r4, #0x0
	bl process_disable
	ldr r4, _08051734 @ =0x081E26CC
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	str r0, [r6, #0x48]
	str r6, [r0, #0x14]
	bl process_disable
	ldr r0, _08051738 @ =0x0000059C
	ldr r4, _0805173C @ =0x081E26D4
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	ldrh r3, [r6, #0x24]
	movs r2, #0x1C
	ldsh r1, [r6, r2]
	str r1, [sp, #0x000]
	movs r2, #0x1E
	ldsh r1, [r6, r2]
	str r1, [sp, #0x004]
	ldr r1, [r6, #0x48]
	str r1, [sp, #0x008]
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_80575C8
	str r0, [r6, #0x44]
	str r6, [r0, #0x14]
	movs r0, #0xAE
	lsls r0, r0, #0x05
	movs r1, #0x00
	movs r2, #0x01
	movs r3, #0x80
	bl sub_8020994
	adds r0, r6, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0805172C: .4byte 0x081E26C4
_08051730: .4byte 0x08CDC1B8
_08051734: .4byte 0x081E26CC
_08051738: .4byte 0x0000059C
_0805173C: .4byte 0x081E26D4
	thumb_func_start sub_8051740
sub_8051740:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	ldrb r0, [r7, #0x00]
	cmp r0, #0x05
	bls _08051756
	b _080519D8
_08051756:
	lsls r0, r0, #0x02
	ldr r1, _08051760 @ =0x08051764
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08051760: .4byte 0x08051764
	.byte 0x7C, 0x17, 0x05, 0x08, 0x78, 0x18, 0x05, 0x08, 0xB0, 0x18, 0x05, 0x08, 0x00, 0x19, 0x05, 0x08
	.byte 0x12, 0x19, 0x05, 0x08, 0x88, 0x19, 0x05, 0x08, 0x78, 0x6C, 0x1C, 0x21, 0x40, 0x5E, 0x00, 0x28
	.byte 0x00, 0xD0, 0x27, 0xE1, 0x00, 0x22, 0x92, 0x46, 0x3B, 0x1C, 0x20, 0x33, 0x04, 0x93, 0x38, 0x1C
	.byte 0x22, 0x30, 0x05, 0x90, 0x01, 0x25, 0x6D, 0x42, 0x3E, 0x1C, 0x2C, 0x36, 0x32, 0x49, 0x88, 0x46
	.byte 0x00, 0x95, 0x01, 0x95, 0x02, 0x95, 0x00, 0x20, 0x30, 0x49, 0x01, 0x22, 0x2B, 0x1C, 0xCF, 0xF7
	.byte 0x0D, 0xFB, 0x30, 0x60, 0x00, 0x22, 0x00, 0x92, 0x51, 0x46, 0x2A, 0x1C, 0x00, 0x23, 0xCC, 0xF7
	.byte 0xC5, 0xFC, 0x31, 0x68, 0x43, 0x46, 0x18, 0x88, 0x08, 0x80, 0x31, 0x68, 0x58, 0x88, 0x48, 0x80
	.byte 0x04, 0x20, 0x40, 0x44, 0x81, 0x46, 0x54, 0x46, 0x01, 0x34, 0x00, 0x95, 0x01, 0x95, 0x02, 0x95
	.byte 0x00, 0x20, 0x22, 0x49, 0x01, 0x22, 0x2B, 0x1C, 0xCF, 0xF7, 0xF0, 0xFA, 0x70, 0x60, 0x00, 0x21
	.byte 0x00, 0x91, 0x21, 0x1C, 0x2A, 0x1C, 0x00, 0x23, 0xCC, 0xF7, 0xA8, 0xFC, 0x71, 0x68, 0x42, 0x46
	.byte 0x90, 0x88, 0x08, 0x80, 0x71, 0x68, 0x4B, 0x46, 0x58, 0x88, 0x48, 0x80, 0x08, 0x36, 0x08, 0x20
	.byte 0x80, 0x44, 0x02, 0x21, 0x8A, 0x44, 0x52, 0x46, 0x03, 0x2A, 0xC1, 0xDD, 0x14, 0x49, 0x01, 0x24
	.byte 0x64, 0x42, 0x00, 0x94, 0x01, 0x94, 0x02, 0x94, 0x00, 0x20, 0x01, 0x22, 0x23, 0x1C, 0xCF, 0xF7
	.byte 0xCD, 0xFA, 0xF8, 0x63, 0x00, 0x23, 0x00, 0x93, 0x00, 0x21, 0x22, 0x1C, 0xCC, 0xF7, 0x86, 0xFC
	.byte 0xFA, 0x6B, 0xD1, 0x7F, 0x04, 0x20, 0x40, 0x42, 0x08, 0x40, 0x02, 0x21, 0x08, 0x43, 0xD0, 0x77
	.byte 0x38, 0x6C, 0xC8, 0xF7, 0xE1, 0xF9, 0x78, 0x6C, 0x02, 0x21, 0x04, 0x9A, 0x05, 0x9B, 0x08, 0xF0
	.byte 0x43, 0xFC, 0x01, 0x20, 0x38, 0x70, 0xB5, 0xE0, 0x64, 0x0E, 0x3A, 0x08, 0xFE, 0x80, 0x00, 0x00
	.byte 0xFD, 0x80, 0x00, 0x00, 0x0C, 0x48, 0x00, 0x78, 0x00, 0x28, 0x00, 0xD0, 0xAA, 0xE0, 0xB8, 0x6C
	.byte 0xC8, 0xF7, 0xCA, 0xF9, 0xF8, 0x6B, 0xCF, 0xF7, 0x17, 0xFA, 0xF8, 0x8C, 0x78, 0x38, 0xB8, 0x83
	.byte 0x38, 0x8D, 0x58, 0x38, 0xF8, 0x83, 0x38, 0x1C, 0x00, 0xF0, 0x16, 0xF9, 0x38, 0x1C, 0x00, 0xF0
	.byte 0xAD, 0xF8, 0x02, 0x20, 0x38, 0x70, 0x95, 0xE0, 0x80, 0x0C, 0x00, 0x03, 0xF8, 0x6B, 0xC0, 0x7C
	.byte 0x03, 0x24, 0x22, 0x1C, 0x02, 0x40, 0x00, 0x2A, 0x00, 0xD0, 0x8B, 0xE0, 0x0C, 0x48, 0x0D, 0x49
	.byte 0x40, 0x18, 0x01, 0x21, 0x49, 0x42, 0x01, 0x60, 0xB8, 0x6C, 0x0B, 0x49, 0x00, 0x91, 0x01, 0x91
	.byte 0x02, 0x92, 0x03, 0x92, 0x00, 0x21, 0x00, 0x22, 0x10, 0x23, 0xC3, 0xF0, 0x81, 0xFC, 0x80, 0x21
	.byte 0x89, 0x04, 0xF2, 0x22, 0x52, 0x01, 0x10, 0x1C, 0x08, 0x80, 0x3C, 0x70, 0x72, 0xE0, 0x00, 0x00
	.byte 0x4C, 0x03, 0x00, 0x03, 0x84, 0x08, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xB8, 0x6C, 0xC4, 0xF0
	.byte 0x8D, 0xFE, 0x00, 0x06, 0x00, 0x28, 0x65, 0xD1, 0x04, 0x20, 0x38, 0x70, 0x62, 0xE0, 0x0D, 0x4A
	.byte 0x51, 0x8D, 0x02, 0x20, 0x08, 0x40, 0x00, 0x28, 0x18, 0xD0, 0xB8, 0x6C, 0x0A, 0x49, 0x00, 0x91
	.byte 0x01, 0x91, 0x00, 0x21, 0x02, 0x91, 0x03, 0x91, 0x04, 0x21, 0x00, 0x22, 0x10, 0x23, 0xC3, 0xF0
	.byte 0x57, 0xFC, 0x01, 0x21, 0x49, 0x42, 0x61, 0x20, 0xC7, 0xF7, 0x3A, 0xFE, 0x05, 0x20, 0x38, 0x70
	.byte 0x17, 0xE0, 0x00, 0x00, 0x4C, 0x03, 0x00, 0x03, 0xFF, 0xFF, 0x00, 0x00, 0x10, 0x8D, 0xF0, 0x21
	.byte 0x01, 0x40, 0x0B, 0x4A, 0xC9, 0x08, 0x88, 0x18, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0xBB, 0x8B
	.byte 0xC0, 0x18, 0xB8, 0x83, 0x01, 0x31, 0x89, 0x18, 0x00, 0x20, 0x08, 0x56, 0xF9, 0x8B, 0x40, 0x18
	.byte 0xF8, 0x83, 0x38, 0x1C, 0x00, 0xF0, 0xA8, 0xF8, 0x38, 0x1C, 0x00, 0xF0, 0x3F, 0xF8, 0x29, 0xE0
	.byte 0x74, 0x0E, 0x3A, 0x08, 0xB8, 0x6C, 0xC4, 0xF0, 0x49, 0xFE, 0x00, 0x06, 0x00, 0x28, 0x21, 0xD1
	.byte 0x78, 0x69, 0xC8, 0xF7, 0x41, 0xF9, 0x00, 0x2F, 0x1C, 0xD0, 0x16, 0x48, 0xB8, 0x61, 0xD0, 0xF7
	.byte 0x17, 0xFB, 0x78, 0x6C, 0x00, 0x28, 0x02, 0xD0, 0x03, 0x21, 0x06, 0xF0, 0xD3, 0xF8, 0x39, 0x6C
	.byte 0x00, 0x29, 0x05, 0xD0, 0x10, 0x48, 0x88, 0x61, 0x08, 0x1C, 0x03, 0x21, 0xC8, 0xF7, 0x3C, 0xF9
	.byte 0xB8, 0x6C, 0x00, 0x28, 0x02, 0xD0, 0x03, 0x21, 0xC4, 0xF0, 0x6E, 0xFE, 0x38, 0x1C, 0x03, 0x21
	.byte 0xC8, 0xF7, 0x32, 0xF9
_080519D8:
	ldrb r0, [r7, #0x00]
	subs r0, #0x03
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _080519E8
	bl sub_8021F7C
_080519E8:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0xA8, 0xC1, 0xCD, 0x08, 0xB8, 0xC1, 0xCD, 0x08
	thumb_func_start sub_8051A00
sub_8051A00:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x3C]
	ldrh r0, [r4, #0x26]
	ldrh r1, [r4, #0x1C]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x3C]
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1E]
	subs r0, r0, r1
	strh r0, [r2, #0x02]
	movs r1, #0x1E
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bne _08051A28
	ldr r0, [r4, #0x2C]
	bl sprite_hide_8021F20
	b _08051A2E
_08051A28:
	ldr r0, [r4, #0x2C]
	bl sprite_show_8020CBC
_08051A2E:
	movs r0, #0x1C
	ldsh r1, [r4, r0]
	ldrh r0, [r4, #0x20]
	subs r0, #0xF0
	cmp r1, r0
	bne _08051A42
	ldr r0, [r4, #0x30]
	bl sprite_hide_8021F20
	b _08051A48
_08051A42:
	ldr r0, [r4, #0x30]
	bl sprite_show_8020CBC
_08051A48:
	movs r0, #0x1E
	ldsh r1, [r4, r0]
	ldrh r0, [r4, #0x22]
	subs r0, #0xA0
	cmp r1, r0
	bne _08051A5C
	ldr r0, [r4, #0x34]
	bl sprite_hide_8021F20
	b _08051A62
_08051A5C:
	ldr r0, [r4, #0x34]
	bl sprite_show_8020CBC
_08051A62:
	movs r1, #0x1C
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bne _08051A72
	ldr r0, [r4, #0x38]
	bl sprite_hide_8021F20
	b _08051A78
_08051A72:
	ldr r0, [r4, #0x38]
	bl sprite_show_8020CBC
_08051A78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8051A80
sub_8051A80:
	push {r4, r5, r6, lr}
	ldr r4, _08051AB8 @ =0x0300034C
	movs r0, #0x88
	lsls r0, r0, #0x04
	adds r4, r4, r0
	ldr r6, [r4, #0x00]
	bl sub_8020A78
	ldr r2, _08051ABC @ =0x03000D48
	ldr r5, _08051AC0 @ =0x0203FFB8
	ldr r0, [r5, #0x3C]
	ldr r3, _08051AC4 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _08051AC8 @ =0x03000D4C
	ldr r0, [r5, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	str r6, [r4, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051AB8: .4byte 0x0300034C
_08051ABC: .4byte 0x03000D48
_08051AC0: .4byte 0x0203FFB8
_08051AC4: .4byte 0x00000A14
_08051AC8: .4byte 0x03000D4C
	thumb_func_start sub_8051ACC
sub_8051ACC:
	push {lr}
	adds r2, r0, #0x0
	movs r1, #0x1C
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08051ADC
	movs r0, #0x00
	b _08051AE8
_08051ADC:
	movs r3, #0x1C
	ldsh r1, [r2, r3]
	ldrh r0, [r2, #0x20]
	subs r0, #0xF0
	cmp r1, r0
	ble _08051AEA
_08051AE8:
	strh r0, [r2, #0x1C]
_08051AEA:
	movs r1, #0x1E
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08051AF6
	movs r0, #0x00
	b _08051B02
_08051AF6:
	movs r3, #0x1E
	ldsh r1, [r2, r3]
	ldrh r0, [r2, #0x22]
	subs r0, #0xA0
	cmp r1, r0
	ble _08051B04
_08051B02:
	strh r0, [r2, #0x1E]
_08051B04:
	ldr r0, [r2, #0x44]
	movs r3, #0x1C
	ldsh r1, [r2, r3]
	movs r3, #0x1E
	ldsh r2, [r2, r3]
	bl sub_8057C9C
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x10, 0x48, 0xA0, 0x61, 0xD0, 0xF7, 0x57, 0xFA
	.byte 0x60, 0x6C, 0x00, 0x28, 0x02, 0xD0, 0x03, 0x21, 0x06, 0xF0, 0x13, 0xF8, 0x21, 0x6C, 0x00, 0x29
	.byte 0x05, 0xD0, 0x0A, 0x48, 0x88, 0x61, 0x08, 0x1C, 0x03, 0x21, 0xC8, 0xF7, 0x7C, 0xF8, 0xA0, 0x6C
	.byte 0x00, 0x28, 0x02, 0xD0, 0x03, 0x21, 0xC4, 0xF0, 0xAE, 0xFD, 0x20, 0x1C, 0x29, 0x1C, 0xC8, 0xF7
	.byte 0x72, 0xF8, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA8, 0xC1, 0xCD, 0x08, 0xB8, 0xC1
	.byte 0xCD, 0x08, 0x00, 0xB5, 0x03, 0x4A, 0x82, 0x61, 0xC8, 0xF7, 0x65, 0xF8, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0x00, 0xB8, 0xC1, 0xCD, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x09, 0x06, 0x09, 0x0E, 0xC7, 0xF7
	.byte 0x10, 0xFF, 0x02, 0x48, 0xA0, 0x61, 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xB8, 0xC1
	.byte 0xCD, 0x08
