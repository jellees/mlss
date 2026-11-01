	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start fldm_update_8022658
fldm_update_8022658: @ 08022658
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x058
	adds r7, r0, #0x0
	movs r1, #0xFE
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0802267E
	ldrb r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _0802267E
	adds r0, r1, #0x0
	bl sub_805CB54
_0802267E:
	movs r2, #0xAA
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08022708
	ldrb r0, [r7, #0x00]
	cmp r0, #0x02
	bne _08022708
	movs r3, #0xAD
	lsls r3, r3, #0x02
	adds r0, r7, r3
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	blt _080226AA
	adds r0, r7, #0x0
	bl make_btl_8028F54
	b _08022708
_080226AA:
	ldr r5, _080226D0 @ =0x000002B2
	adds r4, r7, r5
	movs r6, #0x00
	ldsh r1, [r4, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	blt _080226D8
	adds r0, r7, #0x0
	bl sub_80290CC
	adds r0, r7, #0x0
	bl sub_8029080
	ldr r0, _080226D4 @ =0x0000FFFE
	strh r0, [r4, #0x00]
	bl _08023DBC
	lsls r0, r0, #0x00
_080226D0: .4byte 0x000002B2
_080226D4: .4byte 0x0000FFFE
_080226D8:
	ldr r1, _08022700 @ =0x000002B1
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x02
	bne _08022708
	ldr r2, _08022704 @ =0x000002A9
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08022708
	adds r0, r7, #0x0
	bl sub_802814C
	bl _08023DBC
	lsls r0, r0, #0x00
_08022700: .4byte 0x000002B1
_08022704: .4byte 0x000002A9
_08022708:
	ldrb r0, [r7, #0x00]
	cmp r0, #0x0F
	bls _08022712
	bl _08023DBC
_08022712:
	lsls r0, r0, #0x02
	ldr r1, _0802271C @ =0x08022720
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0802271C: .4byte _08022720
_08022720:
	.4byte _08022760
	.4byte _08022D28
	.4byte _08022D50
	.4byte _08022DAC
	.4byte _08022ED4
	.4byte _08022F24
	.4byte _08022F32
	.4byte _08022F58
	.4byte _08022F6E
	.4byte _08022F8C
	.4byte _08022FA2
	.4byte _08022FBC
	.4byte _08022FE4
	.4byte _08022FFC
	.4byte _08023CDC
	.4byte _08023DB6
_08022760:
	ldr r1, _08022B44 @ =0x02000080
	movs r3, #0x94
	lsls r3, r3, #0x01
	adds r2, r7, r3
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x13
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08022B48 @ =0x0300034C
	ldr r4, _08022B4C @ =0x00000884
	adds r0, r0, r4
	movs r2, #0x00
	str r2, [r0, #0x00]
	adds r4, r7, #0x0
	adds r4, #0xFB
	ldrb r1, [r4, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	movs r5, #0x97
	lsls r5, r5, #0x01
	adds r0, r7, r5
	strh r2, [r0, #0x00]
	movs r6, #0x98
	lsls r6, r6, #0x01
	adds r0, r7, r6
	strh r2, [r0, #0x00]
	ldr r1, _08022B50 @ =0x0000027A
	adds r0, r7, r1
	strh r2, [r0, #0x00]
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r0, r7, r3
	strh r2, [r0, #0x00]
	ldr r5, _08022B54 @ =0x0000027E
	adds r0, r7, r5
	strh r2, [r0, #0x00]
	movs r6, #0xA0
	lsls r6, r6, #0x02
	adds r0, r7, r6
	strh r2, [r0, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0, #0x00]
	movs r1, #0x02
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #0x00]
	adds r3, r7, #0x0
	adds r3, #0xF8
	str r3, [sp, #0x03C]
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r5, r8
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x1D
	movs r6, #0xFA
	adds r6, r6, r7
	mov r9, r6
	movs r0, #0x1F
	mov r12, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x05
	ldrh r3, [r6, #0x00]
	ldr r0, _08022B58 @ =0xFFFFFC1F
	ands r0, r3
	orrs r0, r1
	strh r0, [r6, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xE8
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	ldr r1, _08022B5C @ =0x0000020A
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _08022B60 @ =0x0000020B
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r5, #0x09
	negs r5, r5
	mov r10, r5
	mov r0, r10
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r6, [sp, #0x03C]
	ldrb r3, [r6, #0x00]
	movs r0, #0x02
	ands r0, r3
	str r4, [sp, #0x050]
	cmp r0, #0x00
	bne _08022838
	b _08022974
_08022838:
	ldr r2, _08022B64 @ =0x03000FFC
	ldr r0, _08022B68 @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x10
	ldr r4, [r2, #0x00]
	adds r4, r4, r0
	adds r6, r4, #0x4
	ldrb r1, [r4, #0x04]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x06
	subs r5, #0x38
	adds r0, r5, #0x0
	ands r0, r3
	orrs r0, r1
	ldr r1, [sp, #0x03C]
	strb r0, [r1, #0x00]
	ldrb r0, [r4, #0x04]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	mov r3, r8
	ldrb r2, [r3, #0x00]
	movs r1, #0x02
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r0, [r4, #0x04]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x01
	movs r2, #0x03
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	ldrb r0, [r4, #0x04]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	movs r3, #0x05
	negs r3, r3
	ands r3, r2
	orrs r3, r0
	mov r0, r8
	strb r3, [r0, #0x00]
	ldrb r0, [r4, #0x04]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x03
	mov r1, r10
	ands r1, r3
	orrs r1, r0
	mov r2, r8
	strb r1, [r2, #0x00]
	ldrb r0, [r4, #0x04]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x04
	movs r2, #0x11
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	mov r3, r8
	strb r1, [r3, #0x00]
	ldrh r1, [r4, #0x04]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1D
	ldr r0, _08022B6C @ =0x0000026B
	adds r3, r7, r0
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r0, [r6, #0x01]
	ldr r1, _08022B70 @ =0x00000246
	adds r3, r7, r1
	movs r1, #0x1C
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, [r4, #0x04]
	lsls r1, r1, #0x0E
	lsrs r1, r1, #0x1B
	mov r2, r12
	ands r1, r2
	lsls r1, r1, #0x05
	mov r3, r9
	ldrh r2, [r3, #0x00]
	ldr r0, _08022B58 @ =0xFFFFFC1F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x00]
	ldrb r0, [r6, #0x02]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x06
	mov r4, r8
	ldrb r1, [r4, #0x00]
	ands r5, r1
	orrs r5, r0
	strb r5, [r4, #0x00]
	ldrb r0, [r6, #0x02]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x07
	movs r1, #0x7F
	ands r5, r1
	orrs r5, r0
	strb r5, [r4, #0x00]
	ldrh r0, [r6, #0x02]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x16
	bl sub_801B0AC
	ldr r0, _08022B74 @ =0x03000FD0
	ldr r1, [r0, #0x00]
	movs r5, #0xA5
	lsls r5, r5, #0x03
	adds r2, r1, r5
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	str r0, [r2, #0x00]
	movs r0, #0xA6
	lsls r0, r0, #0x03
	adds r1, r1, r0
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1B
	str r0, [r1, #0x00]
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x04
	adds r6, r6, r0
	ldrh r1, [r6, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x01
	adds r0, r7, r3
	strh r1, [r0, #0x00]
_08022974:
	ldr r0, _08022B74 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r4, #0xA6
	lsls r4, r4, #0x03
	adds r1, r0, r4
	movs r5, #0xA5
	lsls r5, r5, #0x03
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0xD4
	movs r6, #0x92
	lsls r6, r6, #0x01
	adds r6, r6, r7
	mov r10, r6
	ldrh r1, [r6, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	ldr r1, _08022B78 @ =0x083A78D4
	adds r0, r0, r1
	str r0, [r4, #0x00]
	ldrb r1, [r0, #0x02]
	lsrs r1, r1, #0x04
	movs r0, #0x01
	mov r9, r0
	movs r2, #0x01
	add r3, sp, #0x040
	strb r2, [r3, #0x00]
	ands r1, r0
	lsls r1, r1, #0x02
	ldr r5, [sp, #0x050]
	ldrb r2, [r5, #0x00]
	subs r0, #0x06
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrh r0, [r0, #0x10]
	movs r1, #0x93
	lsls r1, r1, #0x01
	adds r6, r7, r1
	strh r0, [r6, #0x00]
	ldr r0, [r4, #0x00]
	ldrh r0, [r0, #0x0E]
	bl sub_80FB7E0
	adds r1, r7, #0x0
	adds r1, #0xD8
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldrh r0, [r0, #0x16]
	bl sub_80FB7F0
	adds r1, r7, #0x0
	adds r1, #0xDC
	str r0, [r1, #0x00]
	mov r2, r10
	ldrh r0, [r2, #0x00]
	bl sub_8059EF0
	adds r1, r7, #0x0
	adds r1, #0xE0
	str r0, [r1, #0x00]
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	bl sub_80EFB18
	ldr r0, _08022B7C @ =0x03001034
	adds r5, r7, #0x0
	adds r5, #0x28
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x80
	bl _call_via_r3
	ldrh r1, [r6, #0x00]
	adds r0, r7, #0x0
	bl make_field_objects_80267C0
	ldr r4, [sp, #0x03C]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08022A2A
	b _08022CE0
_08022A2A:
	ldr r1, _08022B64 @ =0x03000FFC
	ldr r0, _08022B68 @ =0x03000D40
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r4, r0, #0x03
	subs r4, r4, r0
	lsls r4, r4, #0x05
	subs r4, r4, r0
	lsls r4, r4, #0x03
	ldr r0, [r1, #0x00]
	adds r4, r4, r0
	adds r4, #0x14
	mov r6, r8
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	lsls r2, r0, #0x01
	adds r2, r2, r0
	lsls r2, r2, #0x02
	adds r2, #0x04
	adds r2, r4, r2
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r3, r7, r1
	lsls r0, r0, #0x02
	adds r0, r5, r0
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r6, r7, r0
	mov r1, r8
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	mov r1, r9
	eors r0, r1
	lsls r0, r0, #0x02
	adds r0, r5, r0
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	ldr r1, [r3, #0x00]
	ldrb r0, [r2, #0x02]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, #0x55
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	movs r5, #0x04
	ldsh r0, [r2, r5]
	lsls r0, r0, #0x08
	str r0, [r1, #0x0C]
	ldr r1, [r3, #0x00]
	movs r5, #0x06
	ldsh r0, [r2, r5]
	lsls r0, r0, #0x08
	str r0, [r1, #0x10]
	ldr r1, [r3, #0x00]
	movs r5, #0x08
	ldsh r0, [r2, r5]
	lsls r0, r0, #0x08
	str r0, [r1, #0x14]
	ldr r1, [r3, #0x00]
	movs r5, #0x0A
	ldsh r0, [r2, r5]
	lsls r0, r0, #0x08
	str r0, [r1, #0x18]
	ldr r1, [r3, #0x00]
	movs r5, #0x83
	lsls r5, r5, #0x02
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1F
	mov r2, r9
	eors r1, r2
	adds r3, r3, r5
	lsls r5, r1, #0x07
	ldrb r2, [r3, #0x00]
	movs r0, #0x7F
	mov r12, r0
	ands r0, r2
	orrs r0, r5
	mov r2, r9
	ands r1, r2
	add r5, sp, #0x040
	ldrb r5, [r5, #0x00]
	ands r1, r5
	lsls r1, r1, #0x06
	movs r5, #0x41
	negs r5, r5
	ands r0, r5
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r8
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1D
	lsrs r2, r0, #0x1F
	adds r1, r2, #0x0
	mov r3, r9
	eors r1, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x04
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	mov r1, r10
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	bne _08022BDA
	ldr r1, [r6, #0x00]
	ldrb r0, [r4, #0x02]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, #0x55
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	movs r2, #0x04
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x0C]
	ldr r1, [r6, #0x00]
	movs r3, #0x06
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x08
	str r0, [r1, #0x10]
	ldr r1, [r6, #0x00]
	movs r2, #0x08
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	b _08022B80
	.byte 0x00, 0x00
_08022B44: .4byte 0x02000080
_08022B48: .4byte 0x0300034C
_08022B4C: .4byte 0x00000884
_08022B50: .4byte 0x0000027A
_08022B54: .4byte 0x0000027E
_08022B58: .4byte 0xFFFFFC1F
_08022B5C: .4byte 0x0000020A
_08022B60: .4byte 0x0000020B
_08022B64: .4byte 0x03000FFC
_08022B68: .4byte 0x03000D40
_08022B6C: .4byte 0x0000026B
_08022B70: .4byte 0x00000246
_08022B74: .4byte 0x03000FD0
_08022B78: .4byte 0x083A78D4
_08022B7C: .4byte 0x03001034
_08022B80:
	str r0, [r1, #0x14]
	ldr r1, [r6, #0x00]
	movs r3, #0x0A
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x08
	str r0, [r1, #0x18]
	ldr r1, [r6, #0x00]
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [r6, #0x00]
	mov r6, r8
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1F
	mov r0, r9
	eors r1, r0
	adds r3, r3, r4
	lsls r4, r1, #0x07
	ldrb r2, [r3, #0x00]
	mov r0, r12
	ands r0, r2
	orrs r0, r4
	mov r2, r9
	ands r1, r2
	add r4, sp, #0x040
	ldrb r4, [r4, #0x00]
	ands r1, r4
	lsls r1, r1, #0x06
	ands r0, r5
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r5, #0xB6
	lsls r5, r5, #0x02
	adds r2, r7, r5
	ldrb r0, [r2, #0x00]
	movs r1, #0x1F
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _08022C60
_08022BDA:
	movs r0, #0xB6
	lsls r0, r0, #0x02
	adds r3, r7, r0
	add r1, sp, #0x040
	ldrb r1, [r1, #0x00]
	eors r2, r1
	ldrb r1, [r3, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	ldrh r1, [r4, #0x00]
	ldr r2, _08022C80 @ =0x000002DA
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	ldrb r1, [r4, #0x02]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x18
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r1, r7, r3
	movs r5, #0x04
	ldsh r0, [r4, r5]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	movs r0, #0xB8
	lsls r0, r0, #0x02
	adds r1, r7, r0
	movs r2, #0x06
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r3, #0x08
	adds r1, r7, r3
	movs r5, #0x08
	ldsh r0, [r4, r5]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	movs r0, #0xBA
	lsls r0, r0, #0x02
	adds r1, r7, r0
	movs r2, #0x0A
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r4, _08022C84 @ =0x0000020F
	adds r3, r1, r4
	ldrb r2, [r3, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x00]
	movs r5, #0x83
	lsls r5, r5, #0x02
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_08022C60:
	ldr r6, _08022C88 @ =0x00000246
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x00
	beq _08022CB4
	lsls r0, r1, #0x1B
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	beq _08022CB4
	cmp r0, #0x02
	bgt _08022C8C
	cmp r0, #0x01
	beq _08022C96
	b _08022CB4
_08022C80: .4byte 0x000002DA
_08022C84: .4byte 0x0000020F
_08022C88: .4byte 0x00000246
_08022C8C:
	cmp r0, #0x03
	beq _08022CA0
	cmp r0, #0x04
	beq _08022CAC
	b _08022CB4
_08022C96:
	ldr r0, _08022C9C @ =0x0000021E
	adds r1, r7, r0
	b _08022CB0
_08022C9C: .4byte 0x0000021E
_08022CA0:
	ldr r2, _08022CA8 @ =0x00000236
	adds r1, r7, r2
	b _08022CB0
	.byte 0x00, 0x00
_08022CA8: .4byte 0x00000236
_08022CAC:
	ldr r3, _08022D24 @ =0x0000021E
	adds r1, r7, r3
_08022CB0:
	movs r0, #0x00
	strb r0, [r1, #0x00]
_08022CB4:
	movs r4, #0x82
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	bne _08022CE0
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r0, r1
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, r7, r1
	movs r5, #0x88
	lsls r5, r5, #0x02
	adds r1, r1, r5
	strb r2, [r1, #0x00]
_08022CE0:
	ldr r6, [sp, #0x050]
	ldrb r1, [r6, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r1, r2, #0x0
	cmp r0, #0x00
	beq _08022CF8
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r3, #0x0
_08022CF8:
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r7, r4
	strh r1, [r0, #0x00]
	ldr r5, [sp, #0x050]
	ldrb r2, [r5, #0x00]
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x10
	asrs r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x07
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	adds r0, r7, #0x0
	bl sub_8026C78
	movs r0, #0x01
	strb r0, [r7, #0x00]
	bl _08023DBC
_08022D24: .4byte 0x0000021E
_08022D28:
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08022D48 @ =0x0300034C
	ldr r6, _08022D4C @ =0x00000884
	adds r0, r0, r6
	movs r1, #0x00
	str r1, [r0, #0x00]
	bl sub_80E8DE4
	movs r0, #0x02
	strb r0, [r7, #0x00]
	bl _08023DBC
	lsls r0, r0, #0x00
_08022D48: .4byte 0x0300034C
_08022D4C: .4byte 0x00000884
_08022D50:
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08022DA0 @ =0x0300034C
	ldr r1, _08022DA4 @ =0x00000884
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08022D72
	bl process_disable
_08022D72:
	movs r3, #0xC5
	lsls r3, r3, #0x02
	adds r5, r7, r3
	ldr r4, _08022DA8 @ =0x081E25E4
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	str r0, [r5, #0x00]
	bl process_disable
	movs r0, #0x03
	strb r0, [r7, #0x00]
	bl _08023DBC
	lsls r0, r0, #0x00
_08022DA0: .4byte 0x0300034C
_08022DA4: .4byte 0x00000884
_08022DA8: .4byte 0x081E25E4
_08022DAC:
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r6, _08022E64 @ =0x0300034C
	ldr r4, _08022E68 @ =0x00000884
	adds r0, r6, r4
	movs r2, #0x00
	str r2, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0xFA
	ldrb r1, [r3, #0x00]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xF0
	str r2, [r0, #0x00]
	movs r5, #0x90
	lsls r5, r5, #0x01
	adds r5, r5, r7
	mov r10, r5
	ldrh r0, [r5, #0x00]
	mov r9, r0
	mov r2, r9
	lsls r1, r2, #0x16
	adds r3, r6, #0x0
	adds r3, #0x78
	lsrs r1, r1, #0x16
	ldrh r2, [r3, #0x00]
	ldr r5, _08022E6C @ =0xFFFFFC00
	adds r0, r5, #0x0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x00]
	ldr r3, _08022E70 @ =0x00000121
	adds r3, r3, r7
	mov r12, r3
	ldrb r4, [r3, #0x00]
	adds r6, #0x79
	movs r1, #0x0C
	ands r1, r4
	ldrb r3, [r6, #0x00]
	movs r2, #0x0D
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r3
	orrs r0, r1
	movs r1, #0x10
	ands r1, r4
	movs r3, #0x11
	negs r3, r3
	mov r8, r3
	ands r0, r3
	orrs r0, r1
	movs r1, #0x20
	ands r1, r4
	subs r3, #0x10
	ands r0, r3
	orrs r0, r1
	strb r0, [r6, #0x00]
	mov r4, r9
	ands r5, r4
	mov r6, r10
	strh r5, [r6, #0x00]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	ands r2, r0
	mov r4, r8
	ands r2, r4
	ands r2, r3
	strb r2, [r1, #0x00]
	ldr r1, _08022E74 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08022E4A
	ldr r0, _08022E78 @ =0x0800063C
	str r0, [r1, #0x00]
_08022E4A:
	movs r5, #0xC1
	lsls r5, r5, #0x02
	adds r6, r7, r5
	ldr r5, [r6, #0x00]
	cmp r5, #0x00
	beq _08022E7C
	adds r0, r5, #0x0
	bl sub_8057BE4
	ldr r0, [r6, #0x00]
	bl process_enable
	b _08022EAA
_08022E64: .4byte 0x0300034C
_08022E68: .4byte 0x00000884
_08022E6C: .4byte 0xFFFFFC00
_08022E70: .4byte 0x00000121
_08022E74: .4byte 0x03000C78
_08022E78: .4byte 0x0800063C
_08022E7C:
	ldr r0, _08022ECC @ =0x0000059C
	ldr r4, _08022ED0 @ =0x081E25EC
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldrh r3, [r1, #0x00]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r5, #0xC5
	lsls r5, r5, #0x02
	adds r1, r7, r5
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x008]
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_80575C8
	str r0, [r6, #0x00]
_08022EAA:
	movs r0, #0xAE
	lsls r0, r0, #0x05
	movs r1, #0x00
	movs r2, #0x01
	movs r3, #0xBE
	bl sub_8020994
	adds r2, r7, #0x0
	adds r2, #0xF8
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x04
	strb r0, [r7, #0x00]
	bl _08023DBC
_08022ECC: .4byte 0x0000059C
_08022ED0: .4byte 0x081E25EC
_08022ED4:
	movs r6, #0xC1
	lsls r6, r6, #0x02
	adds r5, r7, r6
	ldr r0, [r5, #0x00]
	movs r1, #0x1C
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08022EE8
	bl _08023DBC
_08022EE8:
	movs r2, #0xFE
	lsls r2, r2, #0x01
	adds r4, r7, r2
	ldr r2, _08022F1C @ =0x081E25F4
	movs r0, #0x0C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_805CCD8
	str r0, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r3, _08022F20 @ =0x00000286
	adds r2, r7, r3
	movs r4, #0xA2
	lsls r4, r4, #0x02
	adds r3, r7, r4
	movs r1, #0x02
	bl sub_805A0EC
	movs r0, #0x05
	strb r0, [r7, #0x00]
	bl _08023DBC
	lsls r0, r0, #0x00
_08022F1C: .4byte 0x081E25F4
_08022F20: .4byte 0x00000286
_08022F24:
	adds r0, r7, #0x0
	bl sub_802955C
	movs r0, #0x06
	strb r0, [r7, #0x00]
	bl _08023DBC
_08022F32:
	ldr r0, _08022F54 @ =0x03000C80
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08022F3E
	bl _08023DBC
_08022F3E:
	adds r0, r7, #0x0
	bl sub_80294A0
	adds r0, r7, #0x0
	bl sub_8029460
	movs r0, #0x07
	strb r0, [r7, #0x00]
	bl _08023DBC
	lsls r0, r0, #0x00
_08022F54: .4byte 0x03000C80
_08022F58:
	movs r5, #0x93
	lsls r5, r5, #0x01
	adds r0, r7, r5
	ldrh r1, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_80293F8
	movs r0, #0x08
	strb r0, [r7, #0x00]
	bl _08023DBC
_08022F6E:
	ldr r0, _08022F88 @ =0x03000C80
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08022F7A
	bl _08023DBC
_08022F7A:
	adds r0, r7, #0x0
	bl sub_80293B8
	movs r0, #0x09
	strb r0, [r7, #0x00]
	bl _08023DBC
_08022F88: .4byte 0x03000C80
_08022F8C:
	movs r6, #0x93
	lsls r6, r6, #0x01
	adds r0, r7, r6
	ldrh r1, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_80264F4
	movs r0, #0x0A
	strb r0, [r7, #0x00]
	bl _08023DBC
_08022FA2:
	movs r1, #0x93
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r1, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_80265EC
	bl sub_8020A78
	movs r0, #0x0B
	strb r0, [r7, #0x00]
	bl _08023DBC
_08022FBC:
	movs r2, #0xC7
	lsls r2, r2, #0x02
	adds r4, r7, r2
	ldr r0, [r4, #0x00]
	movs r1, #0xA8
	lsls r1, r1, #0x08
	movs r2, #0xB0
	lsls r2, r2, #0x08
	bl sub_80EFA14
	ldr r0, [r4, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x07
	movs r2, #0x0F
	bl sub_80F01D4
	movs r0, #0x0C
	strb r0, [r7, #0x00]
	bl _08023DBC
_08022FE4:
	ldr r0, _08022FF8 @ =0x03000C80
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08022FF0
	bl _08023DBC
_08022FF0:
	movs r0, #0x0D
	strb r0, [r7, #0x00]
	bl _08023DBC
_08022FF8: .4byte 0x03000C80
_08022FFC:
	movs r3, #0x92
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r1, [r0, #0x00]
	ldr r0, _08023074 @ =0x000001C1
	cmp r1, r0
	bne _08023098
	ldr r4, _08023078 @ =0x0839EF80
	adds r0, r4, #0x0
	bl sub_80198B0
	ldr r2, _0802307C @ =0x081E25FC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r6, r0, #0x0
	ldr r0, _08023080 @ =0x03000C84
	ldr r2, [r0, #0x00]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r5, _08023084 @ =0x0600C000
	adds r0, r4, #0x0
	bl sub_80198B0
	adds r2, r0, #0x0
	lsls r2, r2, #0x09
	lsrs r2, r2, #0x0B
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl CpuFastSet
	cmp r6, #0x00
	beq _0802304A
	adds r0, r6, #0x0
	bl free_heap_8018D9C
_0802304A:
	ldr r0, _08023088 @ =0x0839F024
	ldr r1, _0802308C @ =0x0600F000
	movs r2, #0xA0
	lsls r2, r2, #0x03
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r1, _08023090 @ =0x02000008
	ldr r4, _08023094 @ =0x00001E0C
	adds r0, r4, #0x0
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xF9
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	str r2, [sp, #0x04C]
	b _080230A8
_08023074: .4byte 0x000001C1
_08023078: .4byte 0x0839EF80
_0802307C: .4byte 0x081E25FC
_08023080: .4byte 0x03000C84
_08023084: .4byte 0x0600C000
_08023088: .4byte 0x0839F024
_0802308C: .4byte 0x0600F000
_08023090: .4byte 0x02000008
_08023094: .4byte 0x00001E0C
_08023098:
	adds r0, r7, #0x0
	adds r0, #0xF9
	ldrb r2, [r0, #0x00]
	movs r1, #0x05
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	str r0, [sp, #0x04C]
_080230A8:
	movs r5, #0xAA
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r6, r7, #0x0
	adds r6, #0x28
	str r6, [sp, #0x044]
	cmp r0, #0x00
	beq _080231B0
	lsls r2, r1, #0x1B
	lsrs r0, r2, #0x19
	adds r0, r6, r0
	ldr r0, [r0, #0x00]
	ldr r1, _08023138 @ =0x0000020E
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _0802310E
	lsrs r0, r2, #0x19
	adds r0, r6, r0
	ldr r3, [r0, #0x00]
	ldr r2, _0802313C @ =0x0000033D
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0802310E
	movs r4, #0xD1
	lsls r4, r4, #0x02
	adds r3, r3, r4
	ldr r1, [r3, #0x00]
	subs r5, #0x9C
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	ldr r6, _08023140 @ =0x0000020F
	adds r1, r1, r6
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_0802310E:
	movs r1, #0xAA
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x1B
	lsrs r0, r0, #0x19
	ldr r3, [sp, #0x044]
	adds r0, r3, r0
	ldr r3, [r0, #0x00]
	ldr r4, _08023144 @ =0x000002B1
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _08023168
	cmp r0, #0x01
	bgt _08023148
	cmp r0, #0x00
	beq _0802314E
	b _080231B0
_08023138: .4byte 0x0000020E
_0802313C: .4byte 0x0000033D
_08023140: .4byte 0x0000020F
_08023144: .4byte 0x000002B1
_08023148:
	cmp r0, #0x02
	beq _08023198
	b _080231B0
_0802314E:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	bne _080231B0
	adds r0, r3, #0x0
	bl sub_80501EC
	ldr r5, [sp, #0x04C]
	ldrb r0, [r5, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #0x00]
	b _080231B0
_08023168:
	ldr r6, _08023194 @ =0x000002A9
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080231B0
	movs r0, #0x1F
	ands r0, r2
	cmp r0, #0x00
	beq _080231B0
	adds r0, r3, #0x0
	bl sub_80502C8
	ldr r1, [sp, #0x04C]
	ldrb r0, [r1, #0x00]
	movs r1, #0x10
	orrs r0, r1
	ldr r2, [sp, #0x04C]
	strb r0, [r2, #0x00]
	b _080231B0
	.byte 0x00, 0x00
_08023194: .4byte 0x000002A9
_08023198:
	ldr r3, _08023310 @ =0x000002A9
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080231B0
	ldr r4, [sp, #0x04C]
	ldrb r0, [r4, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x00]
_080231B0:
	movs r5, #0x00
	ldr r6, _08023314 @ =0x0000010B
	adds r0, r7, r6
	adds r1, r7, #0x0
	adds r1, #0xF8
	str r1, [sp, #0x048]
	movs r2, #0xA8
	adds r2, r2, r7
	mov r10, r2
	ldrb r0, [r0, #0x00]
	cmp r5, r0
	bge _080231FC
	ldr r4, [sp, #0x044]
_080231CA:
	ldr r2, [r4, #0x00]
	ldr r3, _08023318 @ =0x0000020F
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080231EE
	movs r6, #0xCE
	lsls r6, r6, #0x02
	adds r0, r2, r6
	ldr r1, [r0, #0x00]
	movs r3, #0x20
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x24]
	bl _call_via_r1
_080231EE:
	adds r4, #0x04
	adds r5, #0x01
	ldr r6, _08023314 @ =0x0000010B
	adds r0, r7, r6
	ldrb r0, [r0, #0x00]
	cmp r5, r0
	blt _080231CA
_080231FC:
	movs r0, #0xC3
	lsls r0, r0, #0x02
	adds r6, r7, r0
	ldr r5, _0802331C @ =0x081E2604
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl process_add
	ldr r0, _08023320 @ =0x08CDBDD8
	str r0, [r4, #0x18]
	str r4, [r6, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r6, r7, r1
	ldr r5, _08023324 @ =0x081E260C
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x05
	adds r2, r5, #0x0
	bl process_add
	ldr r0, _08023328 @ =0x08CDBDC8
	str r0, [r4, #0x18]
	str r4, [r6, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r5, r7, r2
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	ldr r4, [sp, #0x044]
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	movs r6, #0x81
	lsls r6, r6, #0x02
	adds r4, r7, r6
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r2, #0x01
	eors r0, r2
	lsls r0, r0, #0x02
	ldr r1, [sp, #0x044]
	adds r0, r1, r0
	ldr r3, [r0, #0x00]
	str r3, [r4, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0xE2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	ldr r1, [r5, #0x00]
	str r1, [r0, #0x00]
	movs r3, #0xAE
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	ands r2, r0
	cmp r2, #0x00
	beq _080232EA
	ldr r0, [r5, #0x00]
	movs r4, #0xDA
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x00]
	subs r0, r1, #0x3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _080232D2
	adds r0, r1, #0x0
	cmp r0, #0x0E
	beq _080232D2
	cmp r0, #0x0F
	beq _080232D2
	cmp r0, #0x10
	beq _080232D2
	cmp r0, #0x11
	beq _080232D2
	ldr r5, _0802332C @ =0x00000246
	adds r0, r7, r5
	ldrb r0, [r0, #0x00]
	movs r1, #0x1C
	ands r1, r0
	cmp r1, #0x14
	beq _080232D2
	cmp r1, #0x18
	bne _080232EA
_080232D2:
	ldr r6, _0802332C @ =0x00000246
	adds r2, r7, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8029A0C
_080232EA:
	ldr r0, [sp, #0x048]
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08023330
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08023384
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_802DF80
	b _08023384
_08023310: .4byte 0x000002A9
_08023314: .4byte 0x0000010B
_08023318: .4byte 0x0000020F
_0802331C: .4byte 0x081E2604
_08023320: .4byte 0x08CDBDD8
_08023324: .4byte 0x081E260C
_08023328: .4byte 0x08CDBDC8
_0802332C: .4byte 0x00000246
_08023330:
	movs r2, #0xAE
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08023348
	adds r0, r7, #0x0
	bl sub_8028248
	b _08023384
_08023348:
	ldr r3, [sp, #0x048]
	ldrh r2, [r3, #0x00]
	movs r1, #0x81
	lsls r1, r1, #0x04
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, r1
	bne _08023384
	movs r4, #0x81
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldr r3, [r2, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r1, r7, r5
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x0C]
	str r0, [r3, #0x0C]
	ldr r3, [r2, #0x00]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r3, #0x10]
	ldr r2, [r2, #0x00]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x14]
	str r0, [r2, #0x14]
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_802E4C8
_08023384:
	movs r6, #0xAE
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080233A0
	ldr r0, [sp, #0x048]
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080233C0
_080233A0:
	ldr r2, [sp, #0x048]
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080233C0
	adds r0, r7, #0x0
	adds r0, #0xFA
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1B
	adds r0, r7, #0x0
	movs r2, #0x01
	bl sub_80284B0
	b _080233DA
_080233C0:
	movs r3, #0xC1
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r4, _08023414 @ =0x0000027A
	adds r1, r7, r4
	ldrh r1, [r1, #0x00]
	movs r5, #0x9F
	lsls r5, r5, #0x02
	adds r2, r7, r5
	ldrh r2, [r2, #0x00]
	bl sub_805952C
_080233DA:
	ldr r6, _08023418 @ =0x00000242
	adds r1, r7, r6
	movs r2, #0x00
	movs r0, #0xAE
	strh r0, [r1, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r7, r1
	strh r2, [r0, #0x00]
	movs r2, #0xAE
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802341C
	ldr r4, [sp, #0x048]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08023410
	b _080236E0
_08023410:
	b _08023440
	.byte 0x00, 0x00
_08023414: .4byte 0x0000027A
_08023418: .4byte 0x00000242
_0802341C:
	ldr r0, [r7, #0x28]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	add r1, sp, #0x00C
	ldr r0, [r0, #0x00]
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldr r0, [r7, #0x2C]
	adds r0, r0, r2
	add r1, sp, #0x024
	ldr r0, [r0, #0x00]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
_08023440:
	ldr r3, _0802345C @ =0x00000246
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1D
	cmp r0, #0x07
	bls _08023450
	b _08023698
_08023450:
	lsls r0, r0, #0x02
	ldr r1, _08023460 @ =0x08023464
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0802345C: .4byte 0x00000246
_08023460: .4byte _08023464
_08023464:
	.4byte _08023698
	.4byte _08023484
	.4byte _080234B4
	.4byte _080234B4
	.4byte _080234B4
	.4byte _08023698
	.4byte _08023698
	.4byte _0802358C
_08023484:
	ldr r4, _080234AC @ =0x0000026B
	adds r5, r7, r4
	ldrb r4, [r5, #0x00]
	lsrs r4, r4, #0x05
	ldr r6, _080234B0 @ =0x00000246
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1D
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8029A0C
	lsls r4, r4, #0x05
	ldrb r1, [r5, #0x00]
	movs r0, #0x1F
	ands r0, r1
	orrs r0, r4
	strb r0, [r5, #0x00]
	b _08023698
_080234AC: .4byte 0x0000026B
_080234B0: .4byte 0x00000246
_080234B4:
	ldr r0, _08023578 @ =0x00000246
	adds r4, r7, r0
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1D
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8029A0C
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0A
	beq _080234D0
	b _08023698
_080234D0:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r5, r7, r1
	ldr r0, [r5, #0x00]
	ldr r1, _0802357C @ =0x00001045
	bl sub_8049000
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldr r0, [r2, #0x00]
	ldr r1, _08023580 @ =0xFFFE7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x09
	orrs r0, r1
	str r0, [r2, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	movs r6, #0x81
	lsls r6, r6, #0x02
	adds r4, r7, r6
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x0C]
	str r0, [r1, #0x0C]
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r1, #0x10]
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x14]
	str r0, [r1, #0x14]
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x18]
	movs r2, #0xB8
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x18]
	ldr r2, [r4, #0x00]
	ldr r1, [r5, #0x00]
	movs r0, #0x55
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r4, #0x00]
	ldr r1, [r5, #0x00]
	ldr r6, _08023584 @ =0x00000351
	adds r1, r1, r6
	ldrb r0, [r1, #0x00]
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r6
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldr r1, [r5, #0x00]
	movs r5, #0xD6
	lsls r5, r5, #0x02
	adds r1, r1, r5
	ldrb r0, [r1, #0x00]
	movs r3, #0x08
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r5
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	ldr r3, _08023588 @ =0x0000020F
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	b _08023698
	.byte 0x00, 0x00
_08023578: .4byte 0x00000246
_0802357C: .4byte 0x00001045
_08023580: .4byte 0xFFFE7FFF
_08023584: .4byte 0x00000351
_08023588: .4byte 0x0000020F
_0802358C:
	movs r4, #0x81
	lsls r4, r4, #0x02
	adds r4, r4, r7
	mov r8, r4
	ldr r0, [r4, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r6, r7, r5
	ldr r0, [r6, #0x00]
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x00
	mov r9, r0
	movs r0, #0x13
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldr r1, [r6, #0x00]
	movs r0, #0xA4
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r4, #0x00]
	ldr r1, [r6, #0x00]
	movs r4, #0xD6
	lsls r4, r4, #0x02
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x08
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	mov r1, r8
	ldr r2, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r4, _080236D0 @ =0x0000020D
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	mov r2, r8
	ldr r3, [r2, #0x00]
	ldr r2, [r6, #0x00]
	adds r5, #0x10
	adds r2, r2, r5
	ldrb r4, [r2, #0x00]
	movs r1, #0x09
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r4
	strb r0, [r2, #0x00]
	adds r3, r3, r5
	ldrb r0, [r3, #0x00]
	ands r1, r0
	strb r1, [r3, #0x00]
	mov r3, r8
	ldr r4, [r3, #0x00]
	ldr r1, [r6, #0x00]
	adds r5, #0x04
	adds r1, r1, r5
	ldrb r3, [r1, #0x00]
	movs r2, #0x08
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r3
	movs r3, #0x01
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r4, r4, r5
	ldrb r1, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x00]
	movs r4, #0x9A
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r5, r9
	strh r5, [r0, #0x00]
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x02]
	strb r0, [r1, #0x02]
	mov r1, r8
	ldr r3, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	adds r3, #0x24
	lsrs r0, r0, #0x1D
	ldrb r1, [r3, #0x00]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldr r1, _080236D4 @ =0x00001038
	bl sub_8049000
	ldr r0, [r6, #0x00]
	ldr r1, _080236D8 @ =0x00001050
	bl sub_8049000
	ldr r1, [r6, #0x00]
	mov r3, r8
	ldr r0, [r3, #0x00]
	mov r4, r9
	str r4, [r0, #0x18]
	str r4, [r0, #0x14]
	str r4, [r1, #0x18]
	str r4, [r1, #0x14]
	movs r5, #0x82
	lsls r5, r5, #0x02
	adds r2, r7, r5
	ldr r0, [r2, #0x00]
	ldr r1, _080236DC @ =0xFFFE7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x09
	orrs r0, r1
	str r0, [r2, #0x00]
_08023698:
	movs r6, #0xAE
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080236AA
	b _0802387A
_080236AA:
	ldr r0, [r7, #0x28]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	add r0, sp, #0x00C
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldr r0, [r7, #0x2C]
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	add r0, sp, #0x024
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	b _0802387A
_080236D0: .4byte 0x0000020D
_080236D4: .4byte 0x00001038
_080236D8: .4byte 0x00001050
_080236DC: .4byte 0xFFFE7FFF
_080236E0:
	ldr r6, _080237D0 @ =0x00000246
	adds r2, r7, r6
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080236F0
	b _0802387A
_080236F0:
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	bl sub_8047EB8
	ldr r4, [r4, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	ble _0802370E
	str r5, [r4, #0x18]
_0802370E:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08023734
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r4, r7, r2
	ldr r0, [r4, #0x00]
	bl sub_8047EB8
	ldr r4, [r4, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	ble _08023734
	str r5, [r4, #0x18]
_08023734:
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8029A0C
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r4, r7, r3
	ldr r0, [r4, #0x00]
	movs r5, #0xCE
	lsls r5, r5, #0x02
	adds r1, r0, r5
	ldr r2, [r1, #0x00]
	movs r6, #0x38
	ldsh r1, [r2, r6]
	adds r0, r0, r1
	ldr r2, [r2, #0x3C]
	movs r1, #0x01
	bl _call_via_r2
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802376E
	b _0802386C
_0802376E:
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r2, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x14]
	str r0, [r2, #0x14]
	ldr r2, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x18]
	str r0, [r2, #0x18]
	ldr r1, [r1, #0x00]
	ldr r2, [r4, #0x00]
	ldr r3, [r2, #0x0C]
	cmp r3, #0x00
	bge _08023790
	adds r3, #0xFF
_08023790:
	asrs r3, r3, #0x08
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _0802379A
	adds r0, #0xFF
_0802379A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r2, #0x14]
	cmp r0, #0x00
	bge _080237A6
	adds r0, #0xFF
_080237A6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8045A94
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08023836
	movs r5, #0x81
	lsls r5, r5, #0x02
	adds r4, r7, r5
	ldr r5, _080237D4 @ =0x03001038
	b _080237EC
	.byte 0x00, 0x00
_080237D0: .4byte 0x00000246
_080237D4: .4byte 0x03001038
_080237D8:
	ldr r0, [r4, #0x00]
	ldr r1, [sp, #0x044]
	bl sub_80461B4
	ldr r0, [r4, #0x00]
	bl sub_8047B78
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802382A
_080237EC:
	ldr r1, [r4, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldr r3, [r0, #0x00]
	ldr r2, [r1, #0x0C]
	ldr r0, [r3, #0x0C]
	subs r2, r2, r0
	ldr r1, [r1, #0x10]
	ldr r0, [r3, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	muls r0, r2
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	adds r0, r0, r1
	ldr r1, [r5, #0x00]
	bl _call_via_r1
	movs r1, #0x80
	lsls r1, r1, #0x05
	cmp r0, r1
	bgt _080237D8
	ldr r1, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_802DC0C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080237D8
_0802382A:
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	bl sub_8046980
_08023836:
	movs r4, #0x81
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x0C]
	str r0, [r1, #0x34]
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x10]
	str r0, [r1, #0x38]
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x14]
	str r0, [r1, #0x3C]
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x18]
	str r0, [r1, #0x40]
	ldr r0, [r2, #0x00]
	movs r5, #0xCE
	lsls r5, r5, #0x02
	adds r1, r0, r5
	ldr r2, [r1, #0x00]
	movs r6, #0x38
	ldsh r1, [r2, r6]
	adds r0, r0, r1
	ldr r2, [r2, #0x3C]
	movs r1, #0x01
	bl _call_via_r2
_0802386C:
	ldr r0, _080238DC @ =0x00000246
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0802387A:
	bl sub_80298B0
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	bl process_enable
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	bl process_enable
	ldr r3, [sp, #0x04C]
	ldrb r1, [r3, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080238F0
	movs r4, #0xC7
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r3, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080238E0
	movs r5, #0xB3
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _080238E2
	adds r0, r7, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x03]
	lsls r2, r0, #0x18
	ldrb r0, [r1, #0x02]
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x08
	orrs r2, r0
	ldrb r0, [r1, #0x00]
	orrs r2, r0
	b _080238E2
	.byte 0x00, 0x00
_080238DC: .4byte 0x00000246
_080238E0:
	ldr r2, _080238EC @ =0x0821F808
_080238E2:
	adds r0, r3, #0x0
	adds r1, r2, #0x0
	bl sub_80EF79C
	b _080238F8
_080238EC: .4byte 0x0821F808
_080238F0:
	movs r0, #0x7F
	ands r0, r1
	ldr r6, [sp, #0x04C]
	strb r0, [r6, #0x00]
_080238F8:
	movs r5, #0x00
	ldr r1, _08023A10 @ =0x0000010B
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r5, r0
	bge _08023986
	movs r3, #0xA4
	lsls r3, r3, #0x02
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r2, r2, r7
	mov r8, r2
	ldr r4, [sp, #0x044]
_08023912:
	ldr r2, [r4, #0x00]
	adds r1, r2, r3
	mov r6, r8
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	ldr r1, _08023A14 @ =0x0000020E
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _0802393E
	movs r6, #0xD1
	lsls r6, r6, #0x02
	adds r0, r2, r6
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0802393E
	adds r1, r0, r3
	mov r2, r8
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
_0802393E:
	movs r6, #0xAE
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0802395A
	ldr r0, [sp, #0x048]
	ldrb r1, [r0, #0x00]
	movs r0, #0x12
	ands r0, r1
	cmp r0, #0x00
	beq _08023978
_0802395A:
	ldr r0, [r4, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	adds r2, #0x78
	movs r6, #0x00
	ldsh r1, [r2, r6]
	adds r0, r0, r1
	ldr r2, [r2, #0x04]
	movs r1, #0x01
	str r3, [sp, #0x054]
	bl _call_via_r2
	ldr r3, [sp, #0x054]
_08023978:
	adds r4, #0x04
	adds r5, #0x01
	ldr r1, _08023A10 @ =0x0000010B
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r5, r0
	blt _08023912
_08023986:
	movs r3, #0xC1
	lsls r3, r3, #0x02
	adds r2, r7, r3
	mov r4, r10
	ldr r1, [r4, #0x00]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x40]
	ldr r1, [r4, #0x04]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x40]
	ldr r1, [r4, #0x08]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x40]
	ldr r1, [r4, #0x0C]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x40]
	ldr r1, [r4, #0x10]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x40]
	ldr r1, [r4, #0x14]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x40]
	ldr r1, [r4, #0x18]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x40]
	ldr r1, [r4, #0x1C]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x40]
	movs r5, #0x01
	negs r5, r5
	ldr r6, _08023A18 @ =0x00000246
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x1C
	bne _080239F2
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r2, [r0, #0x00]
	adds r1, #0x30
	adds r4, r2, r1
	subs r3, #0xD0
	adds r2, r2, r3
	subs r6, #0x42
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	adds r1, r0, r1
	adds r0, r0, r3
	str r5, [r0, #0x00]
	str r5, [r1, #0x00]
	str r5, [r2, #0x00]
	str r5, [r4, #0x00]
_080239F2:
	movs r1, #0xAA
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08023A1C
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x10
	bl sub_8019650
	b _08023AC2
	.byte 0x00, 0x00
_08023A10: .4byte 0x0000010B
_08023A14: .4byte 0x0000020E
_08023A18: .4byte 0x00000246
_08023A1C:
	movs r2, #0xAE
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08023A38
	ldr r3, [sp, #0x048]
	ldrb r1, [r3, #0x00]
	movs r0, #0x12
	ands r0, r1
	cmp r0, #0x00
	beq _08023AC2
_08023A38:
	ldr r4, _08023A54 @ =0x000002B9
	adds r0, r7, r4
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	beq _08023AAA
	cmp r1, r0
	bgt _08023A58
	subs r0, #0x01
	cmp r1, r0
	beq _08023A68
	b _08023A98
_08023A54: .4byte 0x000002B9
_08023A58:
	cmp r1, r5
	beq _08023A86
	cmp r1, #0x00
	bne _08023A98
	movs r0, #0x00
	bl sub_8019628
	b _08023AAA
_08023A68:
	movs r0, #0x00
	bl sub_80195F8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08023A86
	adds r0, r7, #0x0
	adds r0, #0xD4
	ldr r0, [r0, #0x00]
	ldrb r4, [r0, #0x14]
	movs r0, #0x00
	bl sub_8019610
	cmp r4, r0
	beq _08023AAA
_08023A86:
	adds r0, r7, #0x0
	adds r0, #0xD4
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x14]
	movs r0, #0x00
	movs r2, #0x00
	bl sub_8019308
	b _08023AAA
_08023A98:
	ldr r5, _08023C44 @ =0x000002B9
	adds r0, r7, r5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	bl sub_8019308
_08023AAA:
	ldr r6, _08023C44 @ =0x000002B9
	adds r0, r7, r6
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	beq _08023AC2
	movs r0, #0x00
	movs r1, #0xFF
	movs r2, #0x10
	bl sub_80193B4
_08023AC2:
	ldr r0, [sp, #0x048]
	ldrb r1, [r0, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	ldr r1, [sp, #0x048]
	strb r0, [r1, #0x00]
	ldr r2, [sp, #0x04C]
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r5, r7, r3
	ldrb r1, [r5, #0x00]
	movs r6, #0x04
	adds r0, r6, #0x0
	ands r0, r1
	movs r1, #0x02
	cmp r0, #0x00
	bne _08023AF8
	movs r1, #0x01
_08023AF8:
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r0, r7, r4
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r1, r2, #0x0
	cmp r0, #0x00
	bne _08023B16
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r3, #0x0
_08023B16:
	ldr r4, _08023C48 @ =0x00000212
	adds r0, r7, r4
	strh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	mov r8, r0
	adds r4, r7, r0
	ldr r1, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_803C788
	ldr r4, [r4, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	mov r9, r1
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x17]
	movs r2, #0x80
	mov r10, r2
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _08023B6A
	ldr r0, [r7, #0x1C]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0x08]
	movs r3, #0x88
	lsls r3, r3, #0x05
	adds r0, r0, r3
	adds r1, r4, #0x0
	adds r1, #0x54
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x0A
	ldr r4, _08023C4C @ =0x06010FC0
	adds r1, r1, r4
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r2, #0x80
	movs r3, #0x20
	bl sub_8018218
_08023B6A:
	ldrb r1, [r5, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	movs r1, #0x01
	cmp r0, #0x00
	bne _08023B78
	movs r1, #0x02
_08023B78:
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r1, r4, #0x0
	cmp r0, #0x00
	bne _08023B92
	mov r1, r8
_08023B92:
	ldr r6, _08023C50 @ =0x0000022A
	adds r0, r7, r6
	strh r1, [r0, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r1, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_803C788
	ldr r4, [r4, #0x00]
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x17]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _08023BDC
	ldr r0, [r7, #0x1C]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0x08]
	movs r2, #0x88
	lsls r2, r2, #0x05
	adds r0, r0, r2
	adds r1, r4, #0x0
	adds r1, #0x54
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x0A
	ldr r3, _08023C4C @ =0x06010FC0
	adds r1, r1, r3
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r2, #0x80
	movs r3, #0x20
	bl sub_8018218
_08023BDC:
	movs r0, #0x0F
	strb r0, [r7, #0x00]
	movs r6, #0x95
	lsls r6, r6, #0x01
	adds r1, r7, r6
	ldrb r0, [r1, #0x00]
	cmp r0, #0x03
	beq _08023BF0
	movs r0, #0x00
	strb r0, [r1, #0x00]
_08023BF0:
	movs r1, #0xAA
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08023C12
	ldrb r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08023C12
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_802DF80
_08023C12:
	adds r0, r7, #0x0
	bl sub_802F834
	ldr r2, [sp, #0x04C]
	ldrb r1, [r2, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08023C54
	movs r3, #0x96
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0xFC
	ands r0, r1
	cmp r0, #0xF8
	beq _08023C3E
	movs r0, #0x00
	movs r1, #0xFF
	movs r2, #0x08
	bl sub_80193B4
_08023C3E:
	movs r0, #0x0E
	b _08023C72
	.byte 0x00, 0x00
_08023C44: .4byte 0x000002B9
_08023C48: .4byte 0x00000212
_08023C4C: .4byte 0x06010FC0
_08023C50: .4byte 0x0000022A
_08023C54:
	movs r4, #0xC7
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl process_enable
	movs r5, #0xC8
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl process_enable
	movs r0, #0x0F
_08023C72:
	strb r0, [r7, #0x00]
	movs r6, #0xAA
	lsls r6, r6, #0x02
	adds r2, r7, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x96
	lsls r0, r0, #0x01
	adds r3, r7, r0
	ldrb r2, [r3, #0x00]
	movs r1, #0x02
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	movs r2, #0x03
	negs r2, r2
	ands r0, r2
	strb r0, [r3, #0x00]
	ldr r4, _08023CD0 @ =0x0000012D
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	ands r1, r0
	movs r0, #0x11
	negs r0, r0
	ands r1, r0
	strb r1, [r2, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x03
	ands r0, r1
	movs r1, #0xF8
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	bl sub_80297B8
	bl sub_801A548
	ldr r0, _08023CD4 @ =0x03000C78
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _08023CD8 @ =0x03000C24
	strb r1, [r0, #0x00]
	b _08023DBC
	.byte 0x00, 0x00
_08023CD0: .4byte 0x0000012D
_08023CD4: .4byte 0x03000C78
_08023CD8: .4byte 0x03000C24
_08023CDC:
	ldr r0, _08023D44 @ =0x0000FFFF
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x08
	movs r3, #0x00
	bl sub_8027030
	movs r5, #0xC7
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl process_enable
	movs r6, #0xC8
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl process_enable
	ldr r1, _08023D48 @ =0x000002A9
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08023DB2
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r3, [r0, #0x00]
	movs r4, #0x8E
	lsls r4, r4, #0x02
	adds r2, r3, r4
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08023D4C
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r1, r1, r0
	b _08023D4E
_08023D44: .4byte 0x0000FFFF
_08023D48: .4byte 0x000002A9
_08023D4C:
	ldr r1, [r3, #0x14]
_08023D4E:
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _08023D5E
	adds r0, #0xFF
_08023D5E:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x78
	ldr r0, [r2, #0x10]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08023D6E
	adds r0, #0xFF
_08023D6E:
	asrs r4, r0, #0x08
	movs r6, #0x97
	lsls r6, r6, #0x02
	adds r0, r2, r6
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08023D8C
	ldr r1, _08023D88 @ =0x0000028D
	adds r0, r7, r1
	b _08023D90
	.byte 0x00, 0x00
_08023D88: .4byte 0x0000028D
_08023D8C:
	ldr r2, _08023DCC @ =0x0000028F
	adds r0, r7, r2
_08023D90:
	ldrb r0, [r0, #0x00]
	subs r0, r4, r0
	str r0, [sp, #0x000]
	movs r0, #0xC0
	lsls r0, r0, #0x04
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8028AFC
	ldr r3, _08023DD0 @ =0x000002A9
	adds r2, r7, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_08023DB2:
	movs r0, #0x0F
	strb r0, [r7, #0x00]
_08023DB6:
	adds r0, r7, #0x0
	bl update_field_8023DD4
_08023DBC:
	add sp, #0x058
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08023DCC: .4byte 0x0000028F
_08023DD0: .4byte 0x000002A9
	thumb_func_start update_field_8023DD4
update_field_8023DD4: @ 08023DD4
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
	bl sub_8028FBC
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
	bl start_battle_8027AC4
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
	bl sub_8027558
	bl _080254A2
_08023E34:
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08023E48
	mov r0, r10
	bl sub_80275F4
	bl _080254A2
_08023E48:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08023E5A
	mov r0, r10
	bl sub_8027688
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
	bl sub_802772C
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
	bl sub_8028C40
	mov r0, r10
	bl sub_8028E70
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
	bl sub_8027378
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
	bl sub_8027378
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
	bl sub_8025E94
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
	bl sub_8025D24
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
	bl sub_80461B4
	ldr r0, [r6, #0x00]
	bl sub_8047B78
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
	bl sub_8028C40
	mov r0, r10
	bl sub_8028E70
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
	bl sub_8027378
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
	bl sub_8027D64
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
	bl sub_8029024
	mov r0, r10
	bl sub_8028FBC
	b _0802451E
_080244E0:
	movs r1, #0x01
	negs r1, r1
	mov r0, r10
	bl sub_80290CC
	mov r0, r10
	bl sub_8027558
	b _0802451E
_080244F2:
	mov r0, r10
	bl sub_8029070
	mov r0, r10
	bl sub_80275F4
	b _0802451E
_08024500:
	mov r0, r10
	bl sub_8029060
	mov r0, r10
	bl sub_8027688
	b _0802451E
_0802450E:
	mov r0, r10
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8029030
	mov r0, r10
	bl sub_802772C
_0802451E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x00]
	b _080246B8
_08024528:
	mov r0, r10
	bl sub_8028F40
_0802452E:
	mov r0, r10
	bl sub_802814C
	bl _080254A2
_08024538:
	mov r0, r10
	bl sub_8028F2C
_0802453E:
	mov r0, r10
	bl sub_8028EF4
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
	bl sub_8027E90
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
	bl sub_8027A04
	mov r0, r10
	bl start_battle_8027AC4
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
	bl sub_8025D24
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
	bl sub_8047C18
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
	bl sub_8025D24
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
	bl sub_8027030
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
	bl sub_80402C4
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
	bl sub_80402C4
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
	bl sub_80402C4
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
	bl sub_80402C4
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
	bl sub_80402C4
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
	bl sub_80402C4
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
	bl sub_80402C4
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
	bl sub_8048174
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1D
	bl sub_8048174
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
	bl sub_8050078
	subs r4, #0x01
_08024CD6:
	ldm r5!, {r0}
	bl sub_8050078
	subs r4, #0x01
_08024CDE:
	ldm r5!, {r0}
	bl sub_8050078
	subs r4, #0x01
	cmp r4, #0x00
	beq _08024D0A
_08024CEA:
	ldr r0, [r5, #0x00]
	bl sub_8050078
	ldr r0, [r5, #0x04]
	bl sub_8050078
	ldr r0, [r5, #0x08]
	bl sub_8050078
	ldr r0, [r5, #0x0C]
	bl sub_8050078
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
	bl sub_804E33C
	ldr r0, [r6, #0x00]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r3, [sp, #0x03C]
	ldr r0, [r3, #0x08]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r6, [sp, #0x03C]
	ldr r0, [r6, #0x0C]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r0, [r6, #0x10]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r0, [r6, #0x14]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r0, [r6, #0x18]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
	ldr r0, [r6, #0x1C]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_804E33C
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
	bl sub_80286AC
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
	bl sub_804FA94
	ldr r0, [r6, #0x00]
	bl sub_804E450
	ldr r0, [r6, #0x04]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	movs r3, #0x00
	ldsh r2, [r4, r3]
	bl sub_804FA94
	ldr r0, [r6, #0x04]
	bl sub_804E450
	ldr r0, [r6, #0x08]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	movs r3, #0x00
	ldsh r2, [r4, r3]
	bl sub_804FA94
	ldr r0, [r6, #0x08]
	bl sub_804E450
	ldr r0, [r6, #0x0C]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	movs r3, #0x00
	ldsh r2, [r4, r3]
	bl sub_804FA94
	ldr r0, [r6, #0x0C]
	bl sub_804E450
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
	bl sub_8049C38
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldrb r2, [r4, #0x00]
	ldr r1, [sp, #0x038]
	bl sub_8049C38
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
	bl sub_8049C38
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
	bl sub_8049C38
_08025412:
	mov r0, r10
	bl sub_8029624
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
	bl sub_8057C9C
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
	thumb_func_start sub_80254C0
sub_80254C0:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0802557C @ =0x03000FC0
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x20]
	adds r1, #0x04
	ldr r2, _08025580 @ =0x0400015D
	bl CpuSet
	ldr r5, [r4, #0x20]
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x01
	ldrb r2, [r5, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r5, [r4, #0x20]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x02
	ldrb r2, [r5, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r5, [r4, #0x20]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x03
	ldrb r2, [r5, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r5, [r4, #0x20]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x04
	ldrb r2, [r5, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r5, [r4, #0x20]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x05
	ldrb r2, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r5, [r4, #0x20]
	ldrb r0, [r3, #0x00]
	movs r6, #0x01
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r5, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r5, [r4, #0x20]
	ldrb r1, [r3, #0x00]
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x07
	ldrb r2, [r5, #0x00]
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r1, [r4, #0x20]
	ldrb r0, [r1, #0x00]
	orrs r0, r6
	strb r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0802557C: .4byte 0x03000FC0
_08025580: .4byte 0x0400015D
	thumb_func_start sub_8025584
sub_8025584:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x20]
	adds r0, #0x04
	ldr r1, _08025634 @ =0x03000FC0
	ldr r1, [r1, #0x00]
	ldr r2, _08025638 @ =0x0400015D
	bl CpuSet
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r4, r5, r1
	lsrs r0, r0, #0x1F
	ldrb r2, [r4, #0x00]
	movs r6, #0x02
	negs r6, r6
	adds r1, r6, #0x0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x01
	movs r2, #0x03
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x00]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	movs r1, #0x05
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x03
	movs r3, #0x09
	negs r3, r3
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #0x00]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x04
	movs r2, #0x11
	negs r2, r2
	ands r2, r3
	orrs r2, r0
	strb r2, [r4, #0x00]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r1, r0
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r1, [r5, #0x20]
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x07
	movs r2, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r1, [r5, #0x20]
	ldrb r0, [r1, #0x00]
	ands r6, r0
	strb r6, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08025634: .4byte 0x03000FC0
_08025638: .4byte 0x0400015D
	thumb_func_start sub_802563C
sub_802563C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	movs r0, #0x87
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0802572C
	lsls r0, r0, #0x02
	adds r0, #0x28
	adds r5, r6, r0
	ldr r1, _08025798 @ =0x0000010F
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	mov r8, r0
	cmp r0, #0x00
	beq _0802572C
	movs r2, #0x01
	mov r10, r2
_0802566C:
	ldr r3, _0802579C @ =0x00000209
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	bne _080256FA
	ldr r4, _080257A0 @ =0x00000246
	adds r7, r6, r4
	ldrb r1, [r7, #0x00]
	movs r0, #0x1C
	mov r9, r0
	ands r0, r1
	cmp r0, #0x0C
	beq _080256B6
	ldr r0, [r5, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r3, [r1, #0x00]
	adds r3, #0x60
	movs r4, #0x00
	ldsh r1, [r3, r4]
	adds r0, r0, r1
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldrb r2, [r1, #0x00]
	movs r1, #0x04
	ands r1, r2
	adds r1, #0x28
	adds r1, r6, r1
	ldr r4, [r3, #0x04]
	movs r2, #0x01
	movs r3, #0x00
	bl _call_via_r4
_080256B6:
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldrb r3, [r0, #0x00]
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	beq _080256D0
	ldrb r1, [r7, #0x00]
	mov r0, r9
	ands r0, r1
	cmp r0, #0x0C
	bne _080256FA
_080256D0:
	ldr r0, [r5, #0x00]
	movs r4, #0xCE
	lsls r4, r4, #0x02
	adds r1, r0, r4
	ldr r2, [r1, #0x00]
	adds r2, #0x60
	movs r4, #0x00
	ldsh r1, [r2, r4]
	adds r0, r0, r1
	lsls r1, r3, #0x1D
	lsrs r1, r1, #0x1F
	mov r3, r10
	eors r1, r3
	lsls r1, r1, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r4, [r2, #0x04]
	movs r2, #0x01
	movs r3, #0x00
	bl _call_via_r4
_080256FA:
	ldm r5!, {r0}
	movs r4, #0xCE
	lsls r4, r4, #0x02
	adds r1, r0, r4
	ldr r3, [r1, #0x00]
	adds r3, #0x60
	movs r2, #0x00
	ldsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r4, _080257A4 @ =0x0000010B
	adds r1, r6, r4
	ldrb r2, [r1, #0x00]
	subs r2, #0x02
	ldr r4, [r3, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x30
	movs r3, #0x00
	bl _call_via_r4
	movs r0, #0x01
	negs r0, r0
	add r8, r0
	mov r1, r8
	cmp r1, #0x00
	bne _0802566C
_0802572C:
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0802573A
	b _080258C0
_0802573A:
	lsls r0, r0, #0x02
	adds r0, #0x28
	adds r7, r6, r0
	ldr r3, _080257A8 @ =0x00000111
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	mov r8, r0
	cmp r0, #0x00
	bne _0802574E
	b _080258C0
_0802574E:
	ldr r4, _080257A4 @ =0x0000010B
	adds r4, r4, r6
	mov r9, r4
	movs r0, #0x01
	mov r5, r8
	ands r0, r5
	cmp r0, #0x00
	beq _080257DC
	ldr r1, _080257A0 @ =0x00000246
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x0C
	bne _080257AC
	ldr r0, [r7, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r1, [r1, #0x00]
	adds r1, #0x60
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r4, [r1, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x01
	movs r3, #0x00
	bl _call_via_r4
	movs r4, #0x02
	mov r5, r9
	ldrb r0, [r5, #0x00]
	subs r3, r0, #0x2
	b _080257B2
	.byte 0x00, 0x00
_08025798: .4byte 0x0000010F
_0802579C: .4byte 0x00000209
_080257A0: .4byte 0x00000246
_080257A4: .4byte 0x0000010B
_080257A8: .4byte 0x00000111
_080257AC:
	movs r4, #0x00
	mov r0, r9
	ldrb r3, [r0, #0x00]
_080257B2:
	ldm r7!, {r0}
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	adds r2, #0x60
	movs r5, #0x00
	ldsh r1, [r2, r5]
	adds r0, r0, r1
	lsls r1, r4, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r4, [r2, #0x04]
	adds r2, r3, #0x0
	movs r3, #0x00
	bl _call_via_r4
	movs r0, #0x01
	negs r0, r0
	add r8, r0
	b _080258BA
_080257DC:
	ldr r2, _08025814 @ =0x00000246
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x0C
	bne _08025818
	ldr r0, [r7, #0x00]
	movs r3, #0xCE
	lsls r3, r3, #0x02
	adds r1, r0, r3
	ldr r2, [r1, #0x00]
	adds r2, #0x60
	movs r4, #0x00
	ldsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r4, [r2, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x01
	movs r3, #0x00
	bl _call_via_r4
	movs r4, #0x02
	mov r5, r9
	ldrb r0, [r5, #0x00]
	subs r3, r0, #0x2
	b _0802581E
_08025814: .4byte 0x00000246
_08025818:
	movs r4, #0x00
	mov r0, r9
	ldrb r3, [r0, #0x00]
_0802581E:
	mov r10, r7
	mov r1, r10
	adds r1, #0x04
	mov r10, r1
	subs r1, #0x04
	ldm r1!, {r0}
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	adds r2, #0x60
	movs r5, #0x00
	ldsh r1, [r2, r5]
	adds r0, r0, r1
	lsls r1, r4, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r4, [r2, #0x04]
	adds r2, r3, #0x0
	movs r3, #0x00
	bl _call_via_r4
	ldr r1, _08025884 @ =0x00000246
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x0C
	bne _08025888
	ldr r0, [r7, #0x04]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	adds r2, #0x60
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, [r2, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x01
	movs r3, #0x00
	bl _call_via_r4
	movs r4, #0x02
	mov r5, r9
	ldrb r0, [r5, #0x00]
	subs r3, r0, #0x2
	b _0802588E
	.byte 0x00, 0x00
_08025884: .4byte 0x00000246
_08025888:
	movs r4, #0x00
	mov r0, r9
	ldrb r3, [r0, #0x00]
_0802588E:
	mov r1, r10
	ldr r0, [r1, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	adds r2, #0x60
	movs r5, #0x00
	ldsh r1, [r2, r5]
	adds r0, r0, r1
	lsls r1, r4, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r4, [r2, #0x04]
	adds r2, r3, #0x0
	movs r3, #0x00
	bl _call_via_r4
	movs r0, #0x02
	negs r0, r0
	add r8, r0
	adds r7, #0x08
_080258BA:
	mov r1, r8
	cmp r1, #0x00
	bne _080257DC
_080258C0:
	movs r2, #0x89
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080258CE
	b _08025A04
_080258CE:
	lsls r0, r0, #0x02
	adds r0, #0x28
	adds r0, r0, r6
	mov r9, r0
	ldr r3, _08025908 @ =0x00000113
	adds r0, r6, r3
	ldrb r7, [r0, #0x00]
	cmp r7, #0x00
	bne _080258E2
	b _08025A04
_080258E2:
	ldr r4, _0802590C @ =0x0000010B
	adds r4, r4, r6
	mov r8, r4
	movs r0, #0x01
	ands r0, r7
	cmp r0, #0x00
	beq _08025954
	ldr r5, _08025910 @ =0x00000246
	adds r0, r6, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x10
	bne _08025914
	movs r4, #0x01
	mov r1, r8
	ldrb r0, [r1, #0x00]
	subs r3, r0, #0x1
	b _0802591C
_08025908: .4byte 0x00000113
_0802590C: .4byte 0x0000010B
_08025910: .4byte 0x00000246
_08025914:
	movs r4, #0x02
	mov r2, r8
	ldrb r0, [r2, #0x00]
	subs r3, r0, #0x2
_0802591C:
	mov r5, r9
	ldr r0, [r5, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	adds r2, #0x60
	movs r5, #0x00
	ldsh r1, [r2, r5]
	adds r0, r0, r1
	lsls r1, r4, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r4, [r2, #0x04]
	adds r2, r3, #0x0
	movs r3, #0x00
	bl _call_via_r4
	mov r1, r9
	adds r1, #0x04
	mov r9, r1
	subs r1, #0x04
	ldm r1!, {r0}
	bl sub_80503CC
	subs r7, #0x01
	cmp r7, #0x00
	beq _08025A04
_08025954:
	ldr r2, _0802596C @ =0x00000246
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x10
	bne _08025970
	movs r4, #0x01
	mov r3, r8
	ldrb r0, [r3, #0x00]
	subs r3, r0, #0x1
	b _08025978
_0802596C: .4byte 0x00000246
_08025970:
	movs r4, #0x02
	mov r5, r8
	ldrb r0, [r5, #0x00]
	subs r3, r0, #0x2
_08025978:
	mov r1, r9
	ldr r0, [r1, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	adds r2, #0x60
	movs r5, #0x00
	ldsh r1, [r2, r5]
	adds r0, r0, r1
	lsls r1, r4, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r4, [r2, #0x04]
	adds r2, r3, #0x0
	movs r3, #0x00
	bl _call_via_r4
	mov r0, r9
	adds r1, r0, #0x0
	ldm r1!, {r0}
	str r1, [sp, #0x004]
	bl sub_80503CC
	ldr r2, _080259C0 @ =0x00000246
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x10
	bne _080259C4
	movs r4, #0x01
	mov r3, r8
	ldrb r0, [r3, #0x00]
	subs r3, r0, #0x1
	b _080259CC
_080259C0: .4byte 0x00000246
_080259C4:
	movs r4, #0x02
	mov r5, r8
	ldrb r0, [r5, #0x00]
	subs r3, r0, #0x2
_080259CC:
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	adds r2, #0x60
	movs r1, #0x00
	ldsh r5, [r2, r1]
	mov r10, r5
	add r0, r10
	lsls r1, r4, #0x02
	adds r1, #0x28
	adds r1, r6, r1
	ldr r4, [r2, #0x04]
	adds r2, r3, #0x0
	movs r3, #0x00
	bl _call_via_r4
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	bl sub_80503CC
	subs r7, #0x02
	movs r3, #0x08
	add r9, r3
	cmp r7, #0x00
	bne _08025954
_08025A04:
	movs r4, #0x8A
	lsls r4, r4, #0x01
	adds r1, r6, r4
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025A1E
	movs r5, #0x8B
	lsls r5, r5, #0x01
	adds r2, r6, r5
	ldrb r0, [r2, #0x00]
	movs r1, #0x00
	cmp r0, #0x00
	beq _08025A20
_08025A1E:
	adds r1, r0, #0x0
_08025A20:
	cmp r1, #0x00
	ble _08025AB2
	lsls r0, r1, #0x02
	adds r0, #0x28
	adds r5, r6, r0
	ldr r1, _08025AC4 @ =0x00000115
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	ldr r2, _08025AC8 @ =0x00000117
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	adds r4, r1, r0
	cmp r4, #0x00
	beq _08025AB2
	movs r6, #0xA5
	lsls r6, r6, #0x02
_08025A40:
	ldr r2, [r5, #0x00]
	adds r0, r2, r6
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08025AAA
	ldrb r1, [r1, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08025AAA
	adds r0, r2, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r2, [r5, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	movs r3, #0x08
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x12]
	movs r3, #0x07
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x12]
	subs r3, #0x02
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
_08025AAA:
	subs r4, #0x01
	adds r5, #0x04
	cmp r4, #0x00
	bne _08025A40
_08025AB2:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08025AC4: .4byte 0x00000115
_08025AC8: .4byte 0x00000117
	thumb_func_start sub_8025ACC
sub_8025ACC:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	movs r0, #0x87
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r3, #0x89
	lsls r3, r3, #0x01
	adds r1, r6, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r0, #0x8A
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r2, #0x8B
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r3, #0x8D
	lsls r3, r3, #0x01
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x00
	cmp r0, #0x00
	beq _08025B1C
_08025B1A:
	adds r1, r0, #0x0
_08025B1C:
	cmp r1, #0x00
	ble _08025BFA
	lsls r0, r1, #0x02
	adds r0, #0x28
	adds r4, r6, r0
	ldr r2, _08025C00 @ =0x0000010B
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	subs r5, r0, r1
	cmp r5, #0x00
	beq _08025BFA
	movs r7, #0xCE
	lsls r7, r7, #0x02
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08025B7E
	ldr r0, [r4, #0x00]
	bl sub_80465D8
	ldr r0, [r4, #0x00]
	adds r1, r0, r7
	ldr r1, [r1, #0x00]
	adds r1, #0x68
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	ldr r0, [r4, #0x00]
	adds r1, r0, r7
	ldr r1, [r1, #0x00]
	adds r1, #0x70
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x00
	bl _call_via_r3
	ldm r4!, {r0}
	bl sub_804034C
	subs r5, #0x01
	cmp r5, #0x00
	beq _08025BFA
_08025B7E:
	ldr r0, [r4, #0x00]
	bl sub_80465D8
	ldr r0, [r4, #0x00]
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	adds r2, #0x68
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	ldr r0, [r4, #0x00]
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	adds r2, #0x70
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x00
	bl _call_via_r3
	ldr r0, [r4, #0x00]
	bl sub_804034C
	ldr r0, [r4, #0x04]
	bl sub_80465D8
	ldr r0, [r4, #0x04]
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	adds r2, #0x68
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	adds r2, #0x70
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x00
	bl _call_via_r3
	ldr r0, [r4, #0x04]
	bl sub_804034C
	subs r5, #0x02
	adds r4, #0x08
	cmp r5, #0x00
	bne _08025B7E
_08025BFA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08025C00: .4byte 0x0000010B
	thumb_func_start sub_8025C04
sub_8025C04:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r2, r0, #0x0
	lsls r1, r1, #0x02
	adds r0, #0x28
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r0, #0x00
	mov r8, r0
	ldr r1, _08025C88 @ =0x00000272
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [r4, #0x0C]
	subs r1, r1, r0
	mov r12, r1
	movs r3, #0x9C
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r7, r0, r1
	ldr r5, [r4, #0x14]
	ldr r1, [r4, #0x18]
	cmp r1, #0x00
	bgt _08025C4C
	cmp r1, #0x00
	bge _08025C4E
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08025C4E
_08025C4C:
	adds r5, r5, r1
_08025C4E:
	movs r6, #0x00
	adds r2, #0x28
	str r2, [sp, #0x008]
	ldr r0, _08025C8C @ =0x00000276
	mov r10, r0
	mov r1, r10
	adds r1, r4, r1
	str r1, [sp, #0x000]
	movs r2, #0x9D
	lsls r2, r2, #0x02
	mov r9, r2
	mov r3, r9
	adds r3, r4, r3
	str r3, [sp, #0x004]
_08025C6A:
	lsls r0, r6, #0x02
	ldr r1, [sp, #0x008]
	adds r0, r1, r0
	ldr r3, [r0, #0x00]
	ldr r2, _08025C88 @ =0x00000272
	adds r0, r3, r2
	ldrh r2, [r0, #0x00]
	lsrs r1, r2, #0x01
	ldr r0, [r3, #0x0C]
	subs r1, r0, r1
	cmp r1, r12
	bge _08025C90
	adds r0, r1, r2
	mov r1, r12
	b _08025C98
_08025C88: .4byte 0x00000272
_08025C8C: .4byte 0x00000276
_08025C90:
	ldr r2, _08025CBC @ =0x00000272
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	add r0, r12
_08025C98:
	subs r0, r0, r1
	cmp r0, #0x00
	ble _08025D0A
	movs r1, #0x9C
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r3, #0x10]
	adds r1, r0, r1
	cmp r1, r7
	ble _08025CC0
	mov r2, r10
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	subs r0, r1, r0
	subs r0, r7, r0
	b _08025CC8
_08025CBC: .4byte 0x00000272
_08025CC0:
	ldr r2, [sp, #0x000]
	ldrh r0, [r2, #0x00]
	subs r0, r7, r0
	subs r0, r1, r0
_08025CC8:
	cmp r0, #0x00
	ble _08025D0A
	ldr r2, [r3, #0x14]
	ldr r1, [r3, #0x18]
	cmp r1, #0x00
	bgt _08025CDE
	cmp r1, #0x00
	bge _08025CE0
	ldr r0, [r3, #0x40]
	cmp r0, #0x00
	bge _08025CE0
_08025CDE:
	adds r2, r2, r1
_08025CE0:
	cmp r2, r5
	bgt _08025CF0
	mov r1, r9
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	adds r0, r2, r0
	subs r0, r0, r5
	b _08025CF8
_08025CF0:
	ldr r3, [sp, #0x004]
	ldrh r0, [r3, #0x00]
	adds r0, r5, r0
	subs r0, r0, r2
_08025CF8:
	cmp r0, #0x00
	blt _08025D0A
	movs r0, #0x01
	lsls r0, r6
	mov r1, r8
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08025D0A:
	adds r6, #0x01
	cmp r6, #0x01
	ble _08025C6A
	mov r0, r8
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8025D24
sub_8025D24:
	push {lr}
	adds r2, r0, #0x0
	movs r3, #0x95
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bhi _08025D36
	b _08025E88
_08025D36:
	cmp r1, #0x07
	bls _08025D3C
	b _08025E88
_08025D3C:
	lsls r0, r1, #0x02
	ldr r1, _08025D48 @ =0x08025D4C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08025D48: .4byte _08025D4C
_08025D4C:
	.4byte _08025D6C
	.4byte _08025D96
	.4byte _08025DBE
	.4byte _08025DF4
	.4byte _08025E2A
	.4byte _08025E3E
	.4byte _08025E54
	.4byte _08025E78
_08025D6C:
	adds r0, r2, #0x0
	adds r0, #0xD0
	ldr r3, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08025D80
	b _08025E88
_08025D80:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r3, #0x02]
	ldrh r0, [r0, #0x04]
	b _08025E34
_08025D96:
	adds r0, r2, #0x0
	adds r0, #0xD0
	ldr r3, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08025E88
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r3, #0x02]
	ldrh r0, [r0, #0x04]
	b _08025E34
_08025DBE:
	adds r0, r2, #0x0
	adds r0, #0xD0
	ldr r3, [r0, #0x00]
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	ldrh r0, [r0, #0x06]
	ands r0, r1
	cmp r0, #0x00
	bne _08025E88
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r3, #0x02]
	ldrh r0, [r0, #0x06]
	b _08025E34
_08025DF4:
	adds r0, r2, #0x0
	adds r0, #0xD0
	ldr r3, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	ldrh r0, [r0, #0x06]
	ands r0, r1
	cmp r0, #0x00
	bne _08025E88
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r3, #0x02]
	ldrh r0, [r0, #0x06]
	b _08025E34
_08025E2A:
	adds r0, r2, #0x0
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x02]
	movs r0, #0x08
_08025E34:
	ands r0, r1
	cmp r0, #0x00
	beq _08025E88
_08025E3A:
	movs r0, #0x01
	b _08025E8A
_08025E3E:
	adds r0, r2, #0x0
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	ldr r1, _08025E50 @ =0xFFFF0300
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x0B
	b _08025E84
_08025E50: .4byte 0xFFFF0300
_08025E54:
	adds r0, r2, #0x0
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x00]
	ldr r1, _08025E70 @ =0x01000200
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, r1
	beq _08025E3A
	ldr r0, _08025E74 @ =0x02000100
	ands r2, r0
	cmp r2, r0
	bne _08025E88
	b _08025E3A
_08025E70: .4byte 0x01000200
_08025E74: .4byte 0x02000100
_08025E78:
	ldr r0, _08025E90 @ =0x0300034C
	ldrh r2, [r0, #0x28]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r1, #0x0
	ands r0, r2
_08025E84:
	cmp r0, r1
	beq _08025E3A
_08025E88:
	movs r0, #0x00
_08025E8A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08025E90: .4byte 0x0300034C
	thumb_func_start sub_8025E94
sub_8025E94:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r0, _08025ED8 @ =0x0300034C
	ldrh r4, [r0, #0x2A]
	cmp r4, #0x00
	beq _08025EFC
	ldr r1, _08025EDC @ =0x0839F5A4
	movs r0, #0xFC
	lsls r0, r0, #0x01
	adds r2, r3, r0
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r4, r0
	bne _08025EEE
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x0A
	bne _08025EE4
	movs r0, #0x00
	strb r0, [r2, #0x00]
	movs r0, #0xFB
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldr r0, _08025EE0 @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0x01
	b _08025F1C
	.byte 0x00, 0x00
_08025ED8: .4byte 0x0300034C
_08025EDC: .4byte 0x0839F5A4
_08025EE0: .4byte 0x0000FFFF
_08025EE4:
	movs r0, #0xFB
	lsls r0, r0, #0x01
	adds r1, r3, r0
	movs r0, #0x1E
	b _08025EFA
_08025EEE:
	movs r0, #0x00
	strb r0, [r2, #0x00]
	movs r0, #0xFB
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldr r0, _08025F24 @ =0x0000FFFF
_08025EFA:
	strh r0, [r1, #0x00]
_08025EFC:
	movs r1, #0xFB
	lsls r1, r1, #0x01
	adds r2, r3, r1
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08025F1A
	adds r1, #0x02
	adds r0, r3, r1
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _08025F24 @ =0x0000FFFF
	strh r0, [r2, #0x00]
_08025F1A:
	movs r0, #0x00
_08025F1C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08025F24: .4byte 0x0000FFFF
	thumb_func_start sub_8025F28
sub_8025F28:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r12, r0
	ldr r2, _0802612C @ =0x03000FFC
	ldr r0, _08026130 @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x10
	ldr r4, [r2, #0x00]
	adds r4, r4, r0
	adds r7, r4, #0x4
	mov r0, r12
	adds r0, #0xF8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	ldrb r2, [r4, #0x04]
	movs r1, #0x02
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x04]
	movs r6, #0x82
	lsls r6, r6, #0x02
	add r6, r12
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x01
	movs r2, #0x03
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x04]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	movs r3, #0x05
	negs r3, r3
	adds r1, r3, #0x0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x04]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x03
	movs r2, #0x09
	negs r2, r2
	mov r8, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x04]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x04
	movs r1, #0x11
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x04]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x05
	movs r2, #0x21
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x04]
	ldr r0, _08026134 @ =0x0000026B
	add r0, r12
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x05
	lsls r1, r1, #0x06
	ldrh r2, [r4, #0x04]
	ldr r0, _08026138 @ =0xFFFFFE3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x04]
	ldr r0, _0802613C @ =0x00000246
	add r0, r12
	ldrb r0, [r0, #0x00]
	movs r1, #0x1C
	ands r1, r0
	ldrb r2, [r7, #0x01]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x01]
	mov r0, r12
	adds r0, #0xFA
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	movs r5, #0x1F
	lsrs r0, r0, #0x1B
	lsls r0, r0, #0x0D
	ldr r1, [r4, #0x04]
	ldr r2, _08026140 @ =0xFFFC1FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #0x04]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	ldrb r1, [r7, #0x02]
	ands r3, r1
	orrs r3, r0
	strb r3, [r7, #0x02]
	ldrb r0, [r6, #0x00]
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x03
	mov r1, r8
	ands r3, r1
	orrs r3, r0
	strb r3, [r7, #0x02]
	ldr r0, _08026144 @ =0x03000D3C
	ldrh r1, [r0, #0x00]
	ldr r2, _08026148 @ =0x000003FF
	adds r0, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x04
	ldrh r2, [r7, #0x02]
	ldr r0, _0802614C @ =0xFFFFC00F
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x04
	adds r3, r7, r0
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r12
	mov r9, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r3, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r12
	ldr r0, [r4, #0x00]
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	movs r2, #0x07
	mov r10, r2
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x02]
	movs r0, #0x08
	negs r0, r0
	mov r8, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x02]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x0C]
	cmp r0, #0x00
	bge _08026088
	adds r0, #0xFF
_08026088:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x04]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08026096
	adds r0, #0xFF
_08026096:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x06]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x14]
	cmp r0, #0x00
	bge _080260A4
	adds r0, #0xFF
_080260A4:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x08]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x18]
	cmp r0, #0x00
	bge _080260B2
	adds r0, #0xFF
_080260B2:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x0A]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x04
	adds r4, r7, r0
	movs r1, #0xB6
	lsls r1, r1, #0x02
	add r1, r12
	ldrb r0, [r1, #0x00]
	ands r5, r0
	cmp r5, #0x1F
	bne _08026150
	mov r1, r9
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x00]
	movs r3, #0x81
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r3, #0x00]
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	mov r2, r10
	ands r1, r2
	ldrb r2, [r4, #0x02]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x02]
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x0C]
	cmp r0, #0x00
	bge _08026106
	adds r0, #0xFF
_08026106:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x04]
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08026114
	adds r0, #0xFF
_08026114:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x06]
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x14]
	cmp r0, #0x00
	bge _08026122
	adds r0, #0xFF
_08026122:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x08]
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x18]
	b _080261A4
_0802612C: .4byte 0x03000FFC
_08026130: .4byte 0x03000D40
_08026134: .4byte 0x0000026B
_08026138: .4byte 0xFFFFFE3F
_0802613C: .4byte 0x00000246
_08026140: .4byte 0xFFFC1FFF
_08026144: .4byte 0x03000D3C
_08026148: .4byte 0x000003FF
_0802614C: .4byte 0xFFFFC00F
_08026150:
	ldr r0, _080261BC @ =0x000002DA
	add r0, r12
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x05
	ldrb r2, [r4, #0x02]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x02]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08026174
	adds r0, #0xFF
_08026174:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x04]
	movs r0, #0xB8
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08026186
	adds r0, #0xFF
_08026186:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x06]
	movs r0, #0xB9
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08026198
	adds r0, #0xFF
_08026198:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x08]
	movs r0, #0xBA
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
_080261A4:
	cmp r0, #0x00
	bge _080261AA
	adds r0, #0xFF
_080261AA:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x0A]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080261BC: .4byte 0x000002DA
	thumb_func_start sub_80261C0
sub_80261C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r2, r0, #0x0
	mov r12, r1
	movs r0, #0xFA
	lsls r0, r0, #0x01
	adds r1, r2, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080262B8
	movs r3, #0x9A
	lsls r3, r3, #0x01
	adds r7, r2, r3
	mov r2, r12
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _080261EC
	adds r0, #0xFF
_080261EC:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	mov r3, r12
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _080261FC
	adds r0, #0xFF
_080261FC:
	lsls r0, r0, #0x08
	lsrs r2, r0, #0x10
	mov r3, r12
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _0802620C
	ldr r3, _08026284 @ =0x000007FF
	adds r0, r0, r3
_0802620C:
	lsls r0, r0, #0x05
	lsrs r0, r0, #0x10
	movs r6, #0x00
	ldrb r1, [r1, #0x00]
	cmp r6, r1
	bge _080262B8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r10, r0
	lsls r2, r2, #0x10
	mov r8, r2
	mov r9, r1
_08026224:
	ldrb r1, [r7, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080262B0
	mov r2, r12
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _080262B0
	ldrb r3, [r7, #0x03]
	cmp r10, r3
	bne _080262B0
	mov r0, r12
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0802624E
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080262B0
_0802624E:
	ldrb r0, [r7, #0x01]
	lsls r2, r0, #0x04
	adds r4, r2, #0x0
	adds r4, #0x0F
	ldrb r0, [r7, #0x02]
	lsls r3, r0, #0x04
	adds r5, r3, #0x0
	adds r5, #0x0F
	adds r2, #0x04
	subs r4, #0x04
	adds r3, #0x07
	ldr r1, [sp, #0x000]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	str r0, [sp, #0x004]
	cmp r1, r2
	blt _08026288
	cmp r1, r4
	bgt _08026288
	mov r0, r8
	asrs r1, r0, #0x10
	cmp r1, r3
	blt _08026288
	cmp r1, r5
	bgt _08026288
	adds r0, r6, #0x0
	b _080262BC
_08026284: .4byte 0x000007FF
_08026288:
	subs r2, #0x08
	adds r4, #0x08
	subs r3, #0x08
	adds r5, #0x08
	ldr r1, [sp, #0x004]
	asrs r0, r1, #0x10
	cmp r0, r2
	blt _080262B0
	cmp r0, r4
	bgt _080262B0
	mov r2, r8
	asrs r0, r2, #0x10
	cmp r0, r3
	blt _080262B0
	cmp r0, r5
	bgt _080262B0
	movs r0, #0x80
	orrs r6, r0
	adds r0, r6, #0x0
	b _080262BC
_080262B0:
	adds r7, #0x0C
	adds r6, #0x01
	cmp r6, r9
	blt _08026224
_080262B8:
	movs r0, #0x01
	negs r0, r0
_080262BC:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80262CC
sub_80262CC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	mov r8, r1
	adds r5, r2, #0x0
	mov r12, r3
	add r0, sp, #0x030
	ldrb r0, [r0, #0x00]
	mov r10, r0
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	bne _080262EE
	b _08026406
_080262EE:
	movs r6, #0x00
	subs r0, #0x01
	mov r9, r0
	movs r3, #0x00
	ldr r1, [r4, #0x1C]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r7, r1, r2
	adds r0, r7, #0x0
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x12]
	movs r0, #0x20
	ands r0, r2
	adds r4, r1, #0x0
	mov r1, r12
	subs r1, r5, r1
	mov r12, r1
	cmp r0, #0x00
	beq _08026318
	adds r6, r7, #0x0
	b _0802633C
_08026318:
	adds r3, #0x01
	cmp r3, #0x03
	bgt _0802633C
	lsls r2, r3, #0x03
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r4, r1
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08026318
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r2, r1
	adds r6, r4, r0
_0802633C:
	cmp r6, #0x00
	bne _0802638E
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r1, r4, r0
	adds r5, r1, #0x0
	ldr r0, [r1, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, r2
	ble _0802635A
	adds r6, r1, #0x0
	adds r2, r0, #0x0
_0802635A:
	movs r3, #0x99
	lsls r3, r3, #0x02
	ldr r0, [r1, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, r2
	ble _0802636C
	adds r6, r4, r3
	adds r2, r0, #0x0
_0802636C:
	movs r3, #0x9B
	lsls r3, r3, #0x02
	ldr r0, [r5, #0x10]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, r2
	ble _0802637E
	adds r6, r4, r3
	adds r2, r0, #0x0
_0802637E:
	movs r3, #0x9D
	lsls r3, r3, #0x02
	ldr r0, [r5, #0x18]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, r2
	ble _0802638E
	adds r6, r4, r3
_0802638E:
	mov r0, r8
	cmp r0, #0x00
	bge _08026396
	adds r0, #0xFF
_08026396:
	asrs r0, r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x024]
	mov r1, r12
	subs r2, r1, r0
	cmp r2, #0x00
	bge _080263A6
	adds r2, #0xFF
_080263A6:
	asrs r5, r2, #0x08
	ldr r0, [r6, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	mov r1, r9
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x00]
	bl sub_8021ED8
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r6, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	subs r0, r0, r5
	strh r0, [r1, #0x0E]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x1F]
	mov r0, r8
	strh r0, [r6, #0x04]
	strh r5, [r6, #0x06]
	mov r1, r10
	cmp r1, #0x00
	beq _08026406
	ldr r0, _08026418 @ =0x0839F5B8
	ldr r2, [sp, #0x028]
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08026406:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08026418: .4byte 0x0839F5B8
	thumb_func_start sub_802641C
sub_802641C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r6, [sp, #0x010]
	movs r4, #0x00
	subs r0, r2, #0x4
	cmp r0, #0x07
	bhi _08026438
	lsls r1, r3, #0x04
	ldr r0, _08026434 @ =0x083BBDD0
	adds r0, #0x0C
	b _08026444
	.byte 0x00, 0x00
_08026434: .4byte 0x083BBDD0
_08026438:
	cmp r2, #0x0B
	ble _0802645A
	lsls r1, r3, #0x01
	adds r1, r1, r3
	lsls r1, r1, #0x02
	ldr r0, _08026490 @ =0x083BCDC4
_08026444:
	adds r1, r1, r0
	ldr r0, _08026494 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x00]
_0802645A:
	cmp r4, #0x00
	beq _080264EE
	movs r1, #0xC7
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_80F032C
	ldr r0, [r5, #0x1C]
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r2, r0, r1
	ldr r0, _08026498 @ =0x0839F5C8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xFC
	cmp r1, #0x00
	beq _0802649E
_08026480:
	strb r1, [r2, #0x00]
	adds r0, #0x01
	adds r2, #0x01
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08026480
	b _0802649E
	.byte 0x00, 0x00
_08026490: .4byte 0x083BCDC4
_08026494: .4byte 0x0300034C
_08026498: .4byte 0x0839F5C8
_0802649C:
	adds r4, #0x01
_0802649E:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0802649C
	adds r4, #0x01
	b _080264AE
_080264A8:
	strb r0, [r2, #0x00]
	adds r4, #0x01
	adds r2, #0x01
_080264AE:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080264A8
	movs r1, #0xFF
	strb r1, [r2, #0x00]
	adds r2, #0x01
	movs r0, #0x0C
	strb r0, [r2, #0x00]
	adds r2, #0x01
	movs r0, #0x1E
	strb r0, [r2, #0x00]
	adds r2, #0x01
	strb r1, [r2, #0x00]
	adds r2, #0x01
	movs r0, #0x0A
	strb r0, [r2, #0x00]
	movs r0, #0x00
	strb r0, [r2, #0x01]
	movs r0, #0x01
	ands r6, r0
	lsls r2, r6, #0x01
	ldrb r1, [r3, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r2, #0x85
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x14
	strb r0, [r1, #0x00]
_080264EE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_80264F4
sub_80264F4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r7, r0, #0x0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08026568 @ =0x0000010D
	adds r4, r7, r1
	adds r1, r4, #0x0
	bl sub_80FB790
	adds r1, r7, #0x0
	adds r1, #0xCC
	str r0, [r1, #0x00]
	adds r5, r0, #0x0
	movs r6, #0x00
	ldrb r4, [r4, #0x00]
	cmp r6, r4
	bge _08026540
_08026518:
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	adds r6, #0x01
	adds r5, #0x02
	ldr r1, _08026568 @ =0x0000010D
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	blt _08026518
_08026540:
	ldr r1, _0802656C @ =0x00000246
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	movs r2, #0x1C
	ands r2, r0
	cmp r2, #0x10
	bne _08026574
	ldr r1, _08026570 @ =0x00001003
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0C
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	b _08026590
_08026568: .4byte 0x0000010D
_0802656C: .4byte 0x00000246
_08026570: .4byte 0x00001003
_08026574:
	cmp r2, #0x04
	bne _08026590
	ldr r1, _080265E0 @ =0x00001004
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0C
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
_08026590:
	ldr r1, _080265E4 @ =0x00008003
	movs r4, #0x00
	str r4, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0D
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r4, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0E
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r1, _080265E8 @ =0x00008001
	str r4, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0F
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080265E0: .4byte 0x00001004
_080265E4: .4byte 0x00008003
_080265E8: .4byte 0x00008001
	thumb_func_start sub_80265EC
sub_80265EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	movs r6, #0x00
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _080267B8 @ =0x00008009
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	ldr r1, [r7, #0x1C]
	movs r5, #0x00
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r1, r1, r2
	str r0, [r1, #0x00]
	str r6, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _080267B8 @ =0x00008009
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	ldr r1, [r7, #0x1C]
	movs r3, #0x99
	lsls r3, r3, #0x02
	adds r1, r1, r3
	str r0, [r1, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _080267B8 @ =0x00008009
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	ldr r1, [r7, #0x1C]
	movs r6, #0x9B
	lsls r6, r6, #0x02
	adds r1, r1, r6
	str r0, [r1, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _080267B8 @ =0x00008009
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	ldr r1, [r7, #0x1C]
	movs r2, #0x9D
	lsls r2, r2, #0x02
	adds r1, r1, r2
	str r0, [r1, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r3, r3, r7
	mov r9, r3
	ldrb r1, [r3, #0x00]
	movs r0, #0x04
	ands r0, r1
	adds r5, r7, #0x0
	adds r5, #0x28
	adds r0, r5, r0
	ldr r0, [r0, #0x00]
	adds r6, #0xCC
	adds r1, r0, r6
	ldr r4, [r1, #0x00]
	movs r2, #0x10
	ldsh r1, [r4, r2]
	adds r0, r0, r1
	movs r3, #0xC8
	adds r3, r3, r7
	mov r8, r3
	ldr r1, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xCC
	str r6, [sp, #0x00C]
	ldr r2, [r6, #0x00]
	movs r3, #0xC5
	lsls r3, r3, #0x02
	adds r3, r3, r7
	mov r10, r3
	ldr r6, [r3, #0x00]
	mov r12, r6
	ldr r4, [r4, #0x14]
	mov r3, r12
	bl _call_via_r4
	mov r1, r9
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r0, r1
	lsls r0, r0, #0x02
	adds r5, r5, r0
	ldr r5, [r5, #0x00]
	mov r9, r8
	ldr r2, [sp, #0x00C]
	mov r8, r2
	cmp r5, #0x00
	beq _08026724
	movs r3, #0xCE
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r4, [r0, #0x00]
	movs r6, #0x10
	ldsh r0, [r4, r6]
	adds r0, r5, r0
	mov r2, r9
	ldr r1, [r2, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	mov r5, r10
	ldr r3, [r5, #0x00]
	ldr r4, [r4, #0x14]
	bl _call_via_r4
_08026724:
	movs r6, #0x02
	ldr r1, _080267BC @ =0x0000010B
	adds r0, r7, r1
	adds r5, r7, #0x0
	adds r5, #0xA8
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	bge _08026776
	movs r2, #0x30
	adds r2, r2, r7
	mov r10, r2
_0802673A:
	mov r3, r10
	adds r3, #0x04
	mov r10, r3
	subs r3, #0x04
	ldm r3!, {r0}
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r4, [r1, #0x00]
	movs r3, #0x10
	ldsh r1, [r4, r3]
	adds r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	movs r3, #0xC5
	lsls r3, r3, #0x02
	ldr r2, [r3, r7]
	mov r12, r2
	ldr r4, [r4, #0x14]
	mov r3, r8
	ldr r2, [r3, #0x00]
	mov r3, r12
	bl _call_via_r4
	adds r6, #0x01
	ldr r1, _080267BC @ =0x0000010B
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	blt _0802673A
_08026776:
	ldr r0, [r5, #0x00]
	bl sub_804DFE8
	ldr r0, [r5, #0x04]
	bl sub_804DFE8
	ldr r0, [r5, #0x08]
	bl sub_804DFE8
	ldr r0, [r5, #0x0C]
	bl sub_804DFE8
	ldr r0, [r5, #0x10]
	bl sub_804DFE8
	ldr r0, [r5, #0x14]
	bl sub_804DFE8
	ldr r0, [r5, #0x18]
	bl sub_804DFE8
	ldr r0, [r5, #0x1C]
	bl sub_804DFE8
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080267B8: .4byte 0x00008009
_080267BC: .4byte 0x0000010B
	thumb_func_start make_field_objects_80267C0
make_field_objects_80267C0: @ 080267C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	mov r8, r1
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08026860 @ =0x0000010B
	adds r4, r5, r1
	adds r1, r4, #0x0
	bl get_field_object_count
	movs r2, #0x87
	lsls r2, r2, #0x01
	adds r0, r5, r2
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x03
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x07
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	subs r2, #0x05
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	subs r2, #0x03
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x03
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	subs r2, #0x09
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	movs r7, #0x00
	ldrb r4, [r4, #0x00]
	cmp r7, r4
	blt _0802683C
	b _08026B84
_0802683C:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	bl get_field_object_type
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x07
	bls _08026854
	b _08026B24
_08026854:
	lsls r0, r0, #0x02
	ldr r1, _08026864 @ =0x08026868
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08026860: .4byte 0x0000010B
_08026864: .4byte _08026868
_08026868:
	.4byte _08026888
	.4byte _08026900
	.4byte _0802693C
	.4byte _08026978
	.4byte _080269C8
	.4byte _08026A04
	.4byte _08026AA0
	.4byte _08026ADC
_08026888:
	movs r0, #0xE3
	lsls r0, r0, #0x02
	ldr r2, _080268C4 @ =0x081E2620
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_Zero
	mov r1, r8
	adds r2, r7, #0x0
	bl sub_8048064
	adds r4, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xFB
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080268C8
	movs r2, #0x80
	lsls r2, r2, #0x01
	movs r0, #0x0D
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0xD2
	bl sub_8047EFC
	b _080268DA
_080268C4: .4byte 0x081E2620
_080268C8:
	movs r2, #0x80
	lsls r2, r2, #0x02
	ldr r3, _080268FC @ =0x0000052C
	movs r0, #0x75
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8047EFC
_080268DA:
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r1, r4, r2
	lsls r0, r7, #0x01
	adds r0, r0, r7
	lsls r0, r0, #0x03
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r5, r0
	str r0, [r1, #0x00]
	lsls r1, r7, #0x02
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	str r4, [r0, #0x00]
	b _08026B36
_080268FC: .4byte 0x0000052C
_08026900:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	ldr r2, _08026934 @ =0x081E2624
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_Zero
	mov r1, r8
	adds r2, r7, #0x0
	bl init_fobj_803FEB8
	lsls r2, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r0, #0x87
	lsls r0, r0, #0x01
	adds r3, r5, r0
	ldrb r0, [r3, #0x00]
	adds r1, r2, #0x0
	cmp r0, #0x00
	bne _08026930
	strb r7, [r3, #0x00]
_08026930:
	ldr r2, _08026938 @ =0x0000010F
	b _08026B0E
_08026934: .4byte 0x081E2624
_08026938: .4byte 0x0000010F
_0802693C:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	ldr r2, _08026970 @ =0x081E262C
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_Zero
	mov r1, r8
	adds r2, r7, #0x0
	bl init_fobj_803FEB8
	lsls r2, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r3, r5, r0
	ldrb r0, [r3, #0x00]
	adds r1, r2, #0x0
	cmp r0, #0x00
	bne _0802696C
	strb r7, [r3, #0x00]
_0802696C:
	ldr r2, _08026974 @ =0x00000111
	b _08026B0E
_08026970: .4byte 0x081E262C
_08026974: .4byte 0x00000111
_08026978:
	movs r0, #0xD2
	lsls r0, r0, #0x02
	ldr r2, _080269C0 @ =0x081E2634
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_Zero
	mov r1, r8
	adds r2, r7, #0x0
	bl sub_804FEC8
	lsls r2, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r2, #0x0
	cmp r0, #0x00
	beq _080269AA
	adds r0, #0x54
	strb r7, [r0, #0x00]
_080269AA:
	movs r2, #0x89
	lsls r2, r2, #0x01
	adds r3, r5, r2
	ldrb r0, [r3, #0x00]
	cmp r0, #0x00
	bne _080269B8
	strb r7, [r3, #0x00]
_080269B8:
	ldr r0, _080269C4 @ =0x00000113
	adds r3, r5, r0
	b _08026B10
	.byte 0x00, 0x00
_080269C0: .4byte 0x081E2634
_080269C4: .4byte 0x00000113
_080269C8:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	ldr r2, _080269FC @ =0x081E263C
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_Zero
	mov r1, r8
	adds r2, r7, #0x0
	bl init_fobj_803FEB8
	lsls r2, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r3, r5, r1
	ldrb r0, [r3, #0x00]
	adds r1, r2, #0x0
	cmp r0, #0x00
	bne _080269F8
	strb r7, [r3, #0x00]
_080269F8:
	ldr r2, _08026A00 @ =0x00000115
	b _08026B0E
_080269FC: .4byte 0x081E263C
_08026A00: .4byte 0x00000115
_08026A04:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	ldr r2, _08026A90 @ =0x081E2644
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_Zero
	mov r1, r8
	adds r2, r7, #0x0
	bl init_fobj_803FEB8
	adds r4, r0, #0x0
	ldr r0, _08026A94 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x8B
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	lsls r2, r2, #0x0A
	lsrs r2, r2, #0x14
	movs r1, #0x8B
	lsls r1, r1, #0x05
	adds r2, r2, r1
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08026A64
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08026A98 @ =0x0000020F
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08026A64:
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	lsls r1, r7, #0x02
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	str r4, [r0, #0x00]
	movs r2, #0x8B
	lsls r2, r2, #0x01
	adds r3, r5, r2
	ldrb r0, [r3, #0x00]
	cmp r0, #0x00
	bne _08026A8A
	strb r7, [r3, #0x00]
_08026A8A:
	ldr r0, _08026A9C @ =0x00000117
	adds r3, r5, r0
	b _08026B10
_08026A90: .4byte 0x081E2644
_08026A94: .4byte 0x03000FC0
_08026A98: .4byte 0x0000020F
_08026A9C: .4byte 0x00000117
_08026AA0:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	ldr r2, _08026AD4 @ =0x081E264C
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_Zero
	mov r1, r8
	adds r2, r7, #0x0
	bl sub_805139C
	lsls r2, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r1, #0x8C
	lsls r1, r1, #0x01
	adds r3, r5, r1
	ldrb r0, [r3, #0x00]
	adds r1, r2, #0x0
	cmp r0, #0x00
	bne _08026AD0
	strb r7, [r3, #0x00]
_08026AD0:
	ldr r2, _08026AD8 @ =0x00000119
	b _08026B0E
_08026AD4: .4byte 0x081E264C
_08026AD8: .4byte 0x00000119
_08026ADC:
	movs r0, #0xD4
	lsls r0, r0, #0x02
	ldr r2, _08026B1C @ =0x081E2654
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_Zero
	mov r1, r8
	adds r2, r7, #0x0
	bl sub_80508A8
	lsls r2, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r0, #0x8D
	lsls r0, r0, #0x01
	adds r3, r5, r0
	ldrb r0, [r3, #0x00]
	adds r1, r2, #0x0
	cmp r0, #0x00
	bne _08026B0C
	strb r7, [r3, #0x00]
_08026B0C:
	ldr r2, _08026B20 @ =0x0000011B
_08026B0E:
	adds r3, r5, r2
_08026B10:
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	strb r0, [r3, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xFB
	b _08026B36
_08026B1C: .4byte 0x081E2654
_08026B20: .4byte 0x0000011B
_08026B24:
	lsls r0, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r0
	movs r2, #0x00
	str r2, [r1, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xFB
	adds r1, r0, #0x0
_08026B36:
	adds r4, r5, #0x0
	adds r4, #0x28
	adds r4, r4, r1
	ldr r2, [r4, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r3, r2, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x10
	asrs r1, r0
	ldr r0, _08026C58 @ =0x00000239
	adds r2, r2, r0
	strb r1, [r2, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x54
	strb r7, [r0, #0x00]
	adds r7, #0x01
	ldr r1, _08026C5C @ =0x0000010B
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	cmp r7, r0
	bge _08026B84
	b _0802683C
_08026B84:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	movs r1, #0x04
	ands r1, r0
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, _08026C60 @ =0x00000352
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0x87
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08026BC4
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08026BC4
	movs r1, #0x89
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
_08026BC4:
	movs r2, #0x8E
	lsls r2, r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	ldr r0, _08026C64 @ =0x0000010F
	adds r2, r5, r0
	ldr r1, _08026C68 @ =0x00000111
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	ldrb r2, [r2, #0x00]
	adds r1, r1, r2
	ldr r2, _08026C6C @ =0x00000113
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _08026C70 @ =0x0000011D
	adds r2, r5, r1
	strb r0, [r2, #0x00]
	movs r6, #0x00
	adds r5, #0xA8
_08026BEC:
	movs r0, #0x4C
	movs r1, #0x01
	ldr r2, _08026C74 @ =0x081E265C
	movs r3, #0x01
	bl alloc_Zero
	adds r1, r6, #0x0
	bl sub_804FB28
	str r0, [r5, #0x00]
	adds r4, r6, #0x1
	movs r0, #0x4C
	movs r1, #0x01
	ldr r2, _08026C74 @ =0x081E265C
	movs r3, #0x01
	bl alloc_Zero
	adds r1, r4, #0x0
	bl sub_804FB28
	str r0, [r5, #0x04]
	adds r4, r6, #0x2
	movs r0, #0x4C
	movs r1, #0x01
	ldr r2, _08026C74 @ =0x081E265C
	movs r3, #0x01
	bl alloc_Zero
	adds r1, r4, #0x0
	bl sub_804FB28
	str r0, [r5, #0x08]
	adds r4, r6, #0x3
	movs r0, #0x4C
	movs r1, #0x01
	ldr r2, _08026C74 @ =0x081E265C
	movs r3, #0x01
	bl alloc_Zero
	adds r1, r4, #0x0
	bl sub_804FB28
	str r0, [r5, #0x0C]
	adds r5, #0x10
	adds r6, #0x04
	cmp r6, #0x07
	ble _08026BEC
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08026C58: .4byte 0x00000239
_08026C5C: .4byte 0x0000010B
_08026C60: .4byte 0x00000352
_08026C64: .4byte 0x0000010F
_08026C68: .4byte 0x00000111
_08026C6C: .4byte 0x00000113
_08026C70: .4byte 0x0000011D
_08026C74: .4byte 0x081E265C
	thumb_func_start sub_8026C78
sub_8026C78:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x02]
	lsls r0, r0, #0x08
	ldrb r1, [r2, #0x01]
	orrs r1, r0
	mov r8, r1
	ldrb r3, [r2, #0x00]
	ldrb r0, [r2, #0x04]
	lsls r0, r0, #0x08
	ldrb r1, [r2, #0x03]
	orrs r0, r1
	subs r7, r2, r0
	movs r2, #0xFA
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x00
	strb r0, [r1, #0x00]
	cmp r3, #0x00
	bne _08026CB0
	b _08026E80
_08026CB0:
	movs r4, #0x01
	mov r10, r4
	adds r6, r1, #0x0
	mov r9, r3
_08026CB8:
	ldrb r4, [r7, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r4
	cmp r0, #0x40
	beq _08026CDC
	cmp r0, #0x40
	bgt _08026CD2
	cmp r0, #0x00
	beq _08026CDC
	cmp r0, #0x20
	beq _08026CDC
	b _08026E66
_08026CD2:
	cmp r0, #0xA0
	beq _08026D6C
	cmp r0, #0xC0
	beq _08026D6C
	b _08026E66
_08026CDC:
	movs r0, #0xD4
	lsls r0, r0, #0x02
	movs r1, #0x01
	ldr r2, _08026D5C @ =0x081E2664
	movs r3, #0x01
	bl alloc_Zero
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x000]
	adds r1, r7, #0x0
	mov r2, r8
	bl sub_8050940
	adds r3, r0, #0x0
	movs r0, #0x10
	ands r4, r0
	cmp r4, #0x00
	beq _08026D22
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _08026D22
	ldr r2, _08026D60 @ =0x0000020F
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r4, #0x03
	negs r4, r4
	adds r2, r4, #0x0
	ands r1, r2
	strb r1, [r0, #0x00]
_08026D22:
	ldr r0, _08026D64 @ =0x0000010B
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x54
	strb r1, [r0, #0x00]
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	str r3, [r0, #0x00]
	movs r4, #0x8D
	lsls r4, r4, #0x01
	adds r1, r5, r4
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08026D4A
	ldrb r0, [r2, #0x00]
	strb r0, [r1, #0x00]
_08026D4A:
	ldr r0, _08026D68 @ =0x0000011B
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	b _08026E66
_08026D5C: .4byte 0x081E2664
_08026D60: .4byte 0x0000020F
_08026D64: .4byte 0x0000010B
_08026D68: .4byte 0x0000011B
_08026D6C:
	ldrb r0, [r6, #0x00]
	lsls r3, r0, #0x01
	adds r3, r3, r0
	lsls r3, r3, #0x02
	adds r3, r5, r3
	movs r0, #0xA0
	eors r0, r4
	negs r1, r0
	orrs r1, r0
	lsrs r1, r1, #0x1F
	movs r2, #0x9A
	lsls r2, r2, #0x01
	adds r3, r3, r2
	mov r4, r10
	ands r1, r4
	ldrb r0, [r3, #0x00]
	movs r4, #0x02
	negs r4, r4
	adds r2, r4, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08026E28 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x9B
	lsls r2, r2, #0x05
	add r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x00
	bl sub_80E98C0
	ldrb r1, [r6, #0x00]
	lsls r2, r1, #0x01
	adds r2, r2, r1
	lsls r2, r2, #0x02
	adds r2, r5, r2
	movs r4, #0x9A
	lsls r4, r4, #0x01
	adds r2, r2, r4
	mov r3, r10
	ands r3, r0
	lsls r3, r3, #0x01
	ldrb r0, [r2, #0x00]
	movs r4, #0x03
	negs r4, r4
	adds r1, r4, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r5, r0
	ldrb r1, [r7, #0x01]
	ldr r2, _08026E2C @ =0x00000135
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r5, r0
	ldrb r1, [r7, #0x02]
	movs r4, #0x9B
	lsls r4, r4, #0x01
	adds r0, r0, r4
	strb r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r5
	mov r12, r0
	ldrb r1, [r7, #0x05]
	lsrs r0, r1, #0x01
	lsls r3, r0, #0x18
	lsrs r4, r3, #0x18
	ldrb r0, [r7, #0x03]
	movs r2, #0x7F
	ands r2, r0
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08026E30
	movs r0, #0x20
	negs r0, r0
	orrs r0, r4
	lsrs r0, r0, #0x03
	b _08026E32
_08026E28: .4byte 0x03000FC0
_08026E2C: .4byte 0x00000135
_08026E30:
	lsrs r0, r3, #0x1B
_08026E32:
	adds r0, r2, r0
	ldr r1, _08026E90 @ =0x00000137
	add r1, r12
	strb r0, [r1, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r5, r0
	movs r1, #0x9C
	lsls r1, r1, #0x01
	adds r0, r0, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	movs r4, #0x9E
	lsls r4, r4, #0x01
	adds r0, r5, r4
	adds r0, r0, r1
	str r7, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	adds r0, #0x01
	strb r0, [r6, #0x00]
_08026E66:
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r7, #0x08
	mov r1, r9
	cmp r1, #0x00
	beq _08026E80
	b _08026CB8
_08026E80:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08026E90: .4byte 0x00000137
	thumb_func_start sub_8026E94
sub_8026E94:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r2, #0xFA
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _08026F24 @ =0x00000291
	adds r6, r5, r0
	ldrb r1, [r6, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08026EE4
	ldr r1, _08026F28 @ =0x02000008
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r4, _08026F2C @ =0x03001034
	ldr r1, _08026F30 @ =0x0600C000
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	movs r2, #0x20
	bl _call_via_r3
	ldr r1, _08026F34 @ =0x0600C800
	movs r2, #0x80
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldrb r1, [r6, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_08026EE4:
	ldr r0, _08026F38 @ =0x0839EC80
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x01]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x01]
	movs r1, #0xAE
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08026F70
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08026F60
	ldr r0, _08026F3C @ =0x0300034C
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0xF0
	bne _08026F40
	adds r0, r5, #0x0
	bl sub_802EF18
	b _08026F60
_08026F24: .4byte 0x00000291
_08026F28: .4byte 0x02000008
_08026F2C: .4byte 0x03001034
_08026F30: .4byte 0x0600C000
_08026F34: .4byte 0x0600C800
_08026F38: .4byte 0x0839EC80
_08026F3C: .4byte 0x0300034C
_08026F40:
	ldr r0, _0802701C @ =0x00000246
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x14
	bne _08026F60
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8029A0C
_08026F60:
	movs r1, #0xAE
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08026F70:
	ldr r2, _08027020 @ =0x0000020A
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x01
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	beq _08026F9A
	cmp r1, #0x00
	bne _08026FA4
	ldr r0, _08027024 @ =0x0300034C
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r0, #0x33
	ands r0, r1
	cmp r0, #0x00
	bne _08026FA4
_08026F9A:
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, _08027028 @ =0x0000FFC8
	strh r0, [r1, #0x00]
_08026FA4:
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08026FC6
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xF8
	ldrb r1, [r2, #0x00]
	subs r0, #0x04
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
_08026FC6:
	adds r4, r5, #0x0
	adds r4, #0xFC
	ldrb r1, [r4, #0x00]
	movs r6, #0x01
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08026FF2
	movs r1, #0xFD
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x08
	movs r0, #0x00
	movs r2, #0x08
	bl sub_80193B4
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_08026FF2:
	ldr r4, _0802702C @ =0x03000D44
	ldr r3, [r4, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x28
	ldrb r2, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _08027010
	ldrh r1, [r3, #0x20]
	lsls r2, r2, #0x1A
	lsrs r2, r2, #0x1C
	adds r0, r3, #0x0
	bl sub_801BC40
_08027010:
	ldr r0, [r4, #0x00]
	bl process_enable
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0802701C: .4byte 0x00000246
_08027020: .4byte 0x0000020A
_08027024: .4byte 0x0300034C
_08027028: .4byte 0x0000FFC8
_0802702C: .4byte 0x03000D44
	thumb_func_start sub_8027030
sub_8027030:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	ldr r0, [sp, #0x024]
	ldr r1, [sp, #0x028]
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	subs r0, r6, #0x1
	cmp r0, #0x04
	bhi _08027132
	lsls r0, r0, #0x02
	ldr r1, _08027064 @ =0x08027068
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08027064: .4byte _08027068
_08027068:
	.4byte _0802707C
	.4byte _08027082
	.4byte _08027102
	.4byte _080270AA
	.4byte _08027102
_0802707C:
	adds r0, r5, #0x0
	bl sub_8026E94
_08027082:
	movs r1, #0x94
	lsls r1, r1, #0x01
	adds r0, r5, r1
	strh r4, [r0, #0x00]
	movs r0, #0x01
	eors r0, r6
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1F
	movs r0, #0x04
	ands r1, r0
	mov r3, r8
	str r3, [sp, #0x000]
	str r7, [sp, #0x004]
	adds r0, r5, #0x0
	mov r2, r9
	adds r3, r4, #0x0
	bl sub_80291EC
	b _08027132
_080270AA:
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _080270D4
	ldr r0, _080270CC @ =0x0300034C
	lsrs r1, r2, #0x10
	strh r1, [r0, #0x00]
	strh r2, [r0, #0x02]
	ldr r1, _080270D0 @ =0x00000884
	adds r0, r0, r1
	str r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_80290E0
	b _080270E6
	.byte 0x00, 0x00
_080270CC: .4byte 0x0300034C
_080270D0: .4byte 0x00000884
_080270D4:
	ldr r1, _08027158 @ =0x0300034C
	ldr r0, _0802715C @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strh r0, [r1, #0x02]
	ldr r3, _08027160 @ =0x00000884
	adds r1, r1, r3
	str r0, [r1, #0x00]
_080270E6:
	adds r0, r5, #0x0
	bl sub_8026E94
	ldr r0, _08027164 @ =0x02000272
	ldrh r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xFD
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_08027102:
	ldr r1, _08027164 @ =0x02000272
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r2, _08027158 @ =0x0300034C
	ldrh r0, [r2, #0x02]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r1, r3, #0x0
	orrs r0, r1
	movs r4, #0x00
	strh r0, [r2, #0x02]
	movs r1, #0xFE
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	subs r1, r6, #0x3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_805C9DC
	movs r3, #0x94
	lsls r3, r3, #0x01
	adds r0, r5, r3
	strh r4, [r0, #0x00]
_08027132:
	adds r3, r5, #0x0
	adds r3, #0xFC
	movs r0, #0x0F
	ands r6, r0
	lsls r2, r6, #0x03
	ldrb r1, [r3, #0x00]
	movs r0, #0x79
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08027158: .4byte 0x0300034C
_0802715C: .4byte 0x0000FFFF
_08027160: .4byte 0x00000884
_08027164: .4byte 0x02000272
	thumb_func_start sub_8027168
sub_8027168:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	ldr r0, [sp, #0x030]
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0xC7
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	bl sub_80F032C
	movs r2, #0x85
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldr r4, _080271C0 @ =0x03001034
	ldr r0, _080271C4 @ =0x99999999
	ldr r1, _080271C8 @ =0x0600C000
	ldr r3, [r4, #0x00]
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, _080271CC @ =0xF000F000
	ldr r1, _080271D0 @ =0x0600C800
	movs r2, #0x80
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	bl _call_via_r3
	cmp r6, #0x06
	beq _080271D4
	cmp r6, #0x07
	beq _0802722E
	b _080272EC
_080271C0: .4byte 0x03001034
_080271C4: .4byte 0x99999999
_080271C8: .4byte 0x0600C000
_080271CC: .4byte 0xF000F000
_080271D0: .4byte 0x0600C800
_080271D4:
	adds r0, r7, #0x0
	adds r0, #0xF0
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _080271FC
	ldr r0, _080271F4 @ =0x0300034C
	lsrs r1, r2, #0x10
	strh r1, [r0, #0x00]
	strh r2, [r0, #0x02]
	ldr r3, _080271F8 @ =0x00000884
	adds r0, r0, r3
	str r2, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_80290E0
	b _08027212
_080271F4: .4byte 0x0300034C
_080271F8: .4byte 0x00000884
_080271FC:
	ldr r1, _08027348 @ =0x0300034C
	ldr r0, _0802734C @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strh r0, [r1, #0x02]
	ldr r0, _08027350 @ =0x00000884
	adds r1, r1, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
_08027212:
	adds r0, r7, #0x0
	bl sub_8026E94
	ldr r0, _08027354 @ =0x02000272
	ldrh r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xFD
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0802722E:
	ldr r1, _08027348 @ =0x0300034C
	ldr r2, _08027358 @ =0x00000888
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r3, #0x81
	lsls r3, r3, #0x01
	adds r0, r7, r3
	strh r5, [r0, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x01
	adds r0, r7, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	adds r3, #0x06
	adds r0, r7, r3
	strh r6, [r0, #0x00]
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x77
	bgt _08027262
	movs r0, #0xF0
	subs r0, r0, r1
	lsls r0, r0, #0x10
_08027262:
	lsrs r0, r0, #0x10
	adds r3, r0, #0x0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x4F
	bgt _08027276
	movs r0, #0xA0
	subs r0, r0, r2
	lsls r0, r0, #0x10
_08027276:
	lsrs r1, r0, #0x10
	ldr r2, _0802735C @ =0x03001038
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r3, r0, #0x0
	muls r3, r0
	adds r0, r3, #0x0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r3, #0x00
	mov r8, r3
	strh r0, [r1, #0x00]
	movs r0, #0xC6
	lsls r0, r0, #0x02
	adds r5, r7, r0
	ldr r4, _08027360 @ =0x081E266C
	movs r0, #0x44
	movs r1, #0x00
	adds r2, r4, #0x0
	bl alloc_Zero
	adds r3, r6, #0x0
	adds r3, #0x08
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r2, r9
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x000]
	movs r2, #0x81
	lsls r2, r2, #0x01
	adds r1, r7, r2
	str r1, [sp, #0x004]
	movs r1, #0x03
	str r1, [sp, #0x008]
	movs r1, #0x3E
	str r1, [sp, #0x00C]
	ldr r1, _08027364 @ =0x080292A1
	str r1, [sp, #0x010]
	movs r1, #0x01
	adds r2, r4, #0x0
	bl sub_8079D1C
	str r0, [r5, #0x00]
	movs r3, #0x94
	lsls r3, r3, #0x01
	adds r0, r7, r3
	mov r1, r8
	strh r1, [r0, #0x00]
_080272EC:
	ldr r1, _08027354 @ =0x02000272
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r2, _08027348 @ =0x0300034C
	ldrh r0, [r2, #0x02]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x02]
	ldr r0, _08027368 @ =0x0839EC80
	ldr r2, [r0, #0x00]
	ldrh r3, [r2, #0x12]
	ldr r1, _0802736C @ =0xFFFFFE00
	adds r0, r1, #0x0
	ands r0, r3
	strh r0, [r2, #0x12]
	ldrh r0, [r2, #0x10]
	ands r1, r0
	strh r1, [r2, #0x10]
	ldr r1, _08027370 @ =0x02000008
	ldr r3, _08027374 @ =0x0000190C
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	ldrb r0, [r2, #0x01]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x01]
	adds r3, r7, #0x0
	adds r3, #0xFC
	movs r0, #0x0F
	ands r6, r0
	lsls r2, r6, #0x03
	ldrb r1, [r3, #0x00]
	movs r0, #0x79
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08027348: .4byte 0x0300034C
_0802734C: .4byte 0x0000FFFF
_08027350: .4byte 0x00000884
_08027354: .4byte 0x02000272
_08027358: .4byte 0x00000888
_0802735C: .4byte 0x03001038
_08027360: .4byte 0x081E266C
_08027364: .4byte sub_80292A0
_08027368: .4byte 0x0839EC80
_0802736C: .4byte 0xFFFFFE00
_08027370: .4byte 0x02000008
_08027374: .4byte 0x0000190C
	thumb_func_start sub_8027378
sub_8027378:
	push {lr}
	adds r3, r0, #0x0
	adds r1, r3, #0x0
	adds r1, #0xFC
	ldrb r1, [r1, #0x00]
	lsls r2, r1, #0x19
	lsrs r1, r2, #0x1C
	cmp r1, #0x02
	bhi _080273A4
	movs r1, #0xC5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _080273A0
	movs r1, #0x01
_080273A0:
	adds r0, r1, #0x0
	b _080273DE
_080273A4:
	lsrs r1, r2, #0x1C
	subs r1, #0x03
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x02
	bhi _080273C2
	movs r1, #0xFE
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _080273DE
	movs r0, #0x01
	b _080273DE
_080273C2:
	lsrs r1, r2, #0x1C
	subs r1, #0x06
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x01
	bhi _080273DE
	movs r1, #0xC6
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	bl process_exists
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080273DE:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80273E4
sub_80273E4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	bl sub_803C610
	adds r0, r5, #0x0
	bl sub_802563C
	adds r0, r5, #0x0
	bl sub_8025ACC
	ldr r3, _08027508 @ =0x0300034C
	adds r0, r3, #0x0
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r4, r5, r0
	lsrs r1, r1, #0x16
	ldrh r2, [r4, #0x00]
	ldr r0, _0802750C @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r3, #0x79
	ldrb r3, [r3, #0x00]
	ldr r1, _08027510 @ =0x00000121
	adds r4, r5, r1
	movs r1, #0x0C
	ands r1, r3
	ldrb r2, [r4, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x10
	ands r1, r3
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	movs r1, #0x20
	ands r1, r3
	subs r2, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r2, #0xFE
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08027458
	movs r1, #0x03
	bl sub_805CCC0
	movs r0, #0x00
	str r0, [r4, #0x00]
_08027458:
	movs r3, #0xC2
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0802746E
	movs r1, #0x03
	bl sub_805C73C
	movs r0, #0x00
	str r0, [r4, #0x00]
_0802746E:
	movs r0, #0xC4
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _0802748A
	ldr r0, _08027514 @ =0x08CDBDC8
	str r0, [r1, #0x18]
	adds r0, r1, #0x0
	movs r1, #0x03
	bl process_remove
	movs r0, #0x00
	str r0, [r4, #0x00]
_0802748A:
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080274A0
	movs r1, #0x03
	bl process_remove
	movs r0, #0x00
	str r0, [r4, #0x00]
_080274A0:
	movs r2, #0xC7
	lsls r2, r2, #0x02
	adds r6, r5, r2
	ldr r0, [r6, #0x00]
	bl sub_80F0184
	adds r4, r5, #0x0
	adds r4, #0xF8
	ldrb r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080274C8
	bl sub_8021FD4
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080274C8:
	movs r3, #0xC5
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080274DE
	movs r1, #0x03
	bl sub_81166AC
	movs r0, #0x00
	str r0, [r4, #0x00]
_080274DE:
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x00]
	bl process_disable
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl process_disable
	adds r0, r5, #0x0
	bl process_disable
	movs r4, #0x00
	ldr r2, _08027518 @ =0x0000010B
	adds r0, r5, r2
	adds r6, r5, #0x0
	adds r6, #0xF9
	b _08027540
	.byte 0x00, 0x00
_08027508: .4byte 0x0300034C
_0802750C: .4byte 0xFFFFFC00
_08027510: .4byte 0x00000121
_08027514: .4byte 0x08CDBDC8
_08027518: .4byte 0x0000010B
_0802751C:
	lsls r1, r4, #0x02
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r3, #0xCE
	lsls r3, r3, #0x02
	adds r1, r0, r3
	ldr r2, [r1, #0x00]
	movs r3, #0x18
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x1C]
	bl _call_via_r1
	adds r4, #0x01
	ldr r1, _08027554 @ =0x0000010B
	adds r0, r5, r1
_08027540:
	ldrb r0, [r0, #0x00]
	cmp r4, r0
	blt _0802751C
	ldrb r0, [r6, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r6, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08027554: .4byte 0x0000010B
	thumb_func_start sub_8027558
sub_8027558:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080275DC @ =0x03000D44
	ldr r0, [r0, #0x00]
	bl process_disable
	bl sub_801A6B0
	ldr r0, _080275E0 @ =0x0300034C
	ldr r1, _080275E4 @ =0x0000089C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xFD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	movs r1, #0x80
	movs r2, #0x08
	bl sub_80193B4
	adds r2, r5, #0x0
	adds r2, #0xFC
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_80273E4
	movs r0, #0xC1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	bl sub_805A1A8
	ldr r0, [r4, #0x00]
	bl process_disable
	movs r0, #0x02
	movs r1, #0x00
	bl runtime_install_interrupt_callback
	movs r1, #0x02
	strb r1, [r5, #0x00]
	ldr r0, _080275E8 @ =0x03000C24
	strb r1, [r0, #0x00]
	ldr r1, _080275EC @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080275C2
	ldr r0, _080275F0 @ =0x0800063C
	str r0, [r1, #0x00]
_080275C2:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1A
	movs r1, #0x00
	bl sub_8122BA0
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080275DC: .4byte 0x03000D44
_080275E0: .4byte 0x0300034C
_080275E4: .4byte 0x0000089C
_080275E8: .4byte 0x03000C24
_080275EC: .4byte 0x03000C78
_080275F0: .4byte 0x0800063C
	thumb_func_start sub_80275F4
sub_80275F4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08027670 @ =0x03000D44
	ldr r0, [r0, #0x00]
	bl process_disable
	bl sub_801A6B0
	ldr r0, _08027674 @ =0x0300034C
	ldr r1, _08027678 @ =0x0000089C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xFD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	movs r1, #0x80
	movs r2, #0x08
	bl sub_80193B4
	adds r2, r5, #0x0
	adds r2, #0xFC
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_80273E4
	movs r0, #0xC1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	bl sub_805A1A8
	ldr r0, [r4, #0x00]
	bl process_disable
	movs r0, #0x02
	movs r1, #0x00
	bl runtime_install_interrupt_callback
	movs r1, #0x02
	strb r1, [r5, #0x00]
	ldr r0, _0802767C @ =0x03000C24
	strb r1, [r0, #0x00]
	ldr r1, _08027680 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0802765E
	ldr r0, _08027684 @ =0x0800063C
	str r0, [r1, #0x00]
_0802765E:
	movs r0, #0x01
	negs r0, r0
	movs r1, #0x01
	bl sub_8122BA0
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08027670: .4byte 0x03000D44
_08027674: .4byte 0x0300034C
_08027678: .4byte 0x0000089C
_0802767C: .4byte 0x03000C24
_08027680: .4byte 0x03000C78
_08027684: .4byte 0x0800063C
	thumb_func_start sub_8027688
sub_8027688:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_801A6B0
	ldr r0, _08027714 @ =0x0300034C
	ldr r1, _08027718 @ =0x0000089C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xFD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	movs r1, #0x80
	movs r2, #0x08
	bl sub_80193B4
	adds r2, r5, #0x0
	adds r2, #0xFC
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_80273E4
	movs r0, #0xC1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080276D2
	movs r1, #0x03
	bl sub_8057B58
	movs r0, #0x00
	str r0, [r4, #0x00]
_080276D2:
	movs r0, #0x02
	movs r1, #0x00
	bl runtime_install_interrupt_callback
	movs r0, #0x02
	strb r0, [r5, #0x00]
	ldr r1, _0802771C @ =0x03000C24
	strb r0, [r1, #0x00]
	ldr r1, _08027720 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080276EE
	ldr r0, _08027724 @ =0x0800063C
	str r0, [r1, #0x00]
_080276EE:
	ldr r4, _08027728 @ =0x081E2674
	movs r0, #0x4C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r3, [r1, #0x00]
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_8051628
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08027714: .4byte 0x0300034C
_08027718: .4byte 0x0000089C
_0802771C: .4byte 0x03000C24
_08027720: .4byte 0x03000C78
_08027724: .4byte 0x0800063C
_08027728: .4byte 0x081E2674
	thumb_func_start sub_802772C
sub_802772C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_801A6B0
	ldr r0, _080277AC @ =0x0300034C
	ldr r1, _080277B0 @ =0x0000089C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xFD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	movs r1, #0x80
	movs r2, #0x08
	bl sub_80193B4
	adds r2, r5, #0x0
	adds r2, #0xFC
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_80273E4
	movs r0, #0xC1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08027776
	movs r1, #0x03
	bl sub_8057B58
	movs r0, #0x00
	str r0, [r4, #0x00]
_08027776:
	movs r0, #0x02
	movs r1, #0x00
	bl runtime_install_interrupt_callback
	movs r0, #0x02
	strb r0, [r5, #0x00]
	ldr r1, _080277B4 @ =0x03000C24
	strb r0, [r1, #0x00]
	ldr r1, _080277B8 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08027792
	ldr r0, _080277BC @ =0x0800063C
	str r0, [r1, #0x00]
_08027792:
	ldr r1, _080277C0 @ =0x0000012D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1F
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	bl sub_812F5A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080277AC: .4byte 0x0300034C
_080277B0: .4byte 0x0000089C
_080277B4: .4byte 0x03000C24
_080277B8: .4byte 0x03000C78
_080277BC: .4byte 0x0800063C
_080277C0: .4byte 0x0000012D
	thumb_func_start sub_80277C4
sub_80277C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	mov r8, r1
	mov r10, r2
	adds r7, r3, #0x0
	add r0, sp, #0x028
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x000]
	bl stop_all_sfx_801959C
	movs r1, #0xC7
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	bl sub_80F032C
	ldr r4, [r6, #0x1C]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r5, #0x20
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802780A
	adds r0, r2, #0x0
	bl sub_8020D40
_0802780A:
	movs r3, #0x00
	mov r9, r3
	movs r1, #0x99
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08027826
	adds r0, r2, #0x0
	bl sub_8020D40
_08027826:
	movs r2, #0x9B
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802783E
	adds r0, r2, #0x0
	bl sub_8020D40
_0802783E:
	movs r3, #0x9D
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08027856
	adds r0, r2, #0x0
	bl sub_8020D40
_08027856:
	movs r1, #0x85
	lsls r1, r1, #0x01
	adds r0, r6, r1
	mov r2, r9
	strb r2, [r0, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xFC
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080279F0 @ =0x000002A9
	adds r3, r6, r0
	movs r1, #0x07
	mov r9, r1
	mov r2, r8
	mov r0, r9
	ands r2, r0
	lsls r2, r2, #0x02
	ldrb r1, [r3, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x54
	movs r2, #0xAA
	lsls r2, r2, #0x02
	adds r4, r6, r2
	movs r0, #0x1F
	ldrb r1, [r1, #0x00]
	ands r1, r0
	ldrb r2, [r4, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0xCF
	lsls r1, r1, #0x02
	mov r12, r1
	mov r1, r10
	add r1, r12
	ldrb r2, [r1, #0x00]
	movs r5, #0x01
	lsrs r2, r2, #0x07
	lsls r2, r2, #0x05
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x00]
	mov r4, r10
	adds r4, #0x54
	ldrb r0, [r4, #0x00]
	ands r0, r5
	lsls r0, r0, #0x05
	ldrb r2, [r3, #0x00]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	mov r2, r12
	adds r5, r7, r2
	ldrb r1, [r5, #0x00]
	movs r0, #0x80
	ands r0, r1
	str r4, [sp, #0x004]
	cmp r0, #0x00
	bne _0802790A
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	ldr r0, _080279F4 @ =0x0000033D
	adds r3, r7, r0
	mov r2, r9
	ands r1, r2
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r0, [r5, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x00]
_0802790A:
	movs r3, #0x85
	lsls r3, r3, #0x02
	mov r8, r3
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	mov r10, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r3, r7, r1
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _08027984
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08027984
	mov r0, r12
	adds r5, r2, r0
	ldrb r4, [r5, #0x00]
	movs r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	bne _08027978
	mov r1, r8
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	mov r2, r9
	ands r0, r2
	lsls r0, r0, #0x02
	movs r1, #0x1D
	negs r1, r1
	ands r1, r4
	orrs r1, r0
	strb r1, [r5, #0x00]
	ldr r1, [r3, #0x00]
	add r1, r12
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
_08027978:
	ldr r0, [r3, #0x00]
	add r0, r8
	ldrb r2, [r0, #0x00]
	mov r1, r10
	ands r1, r2
	strb r1, [r0, #0x00]
_08027984:
	movs r3, #0x8B
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, _080279F8 @ =0x000003FF
	ands r0, r1
	ldr r2, _080279FC @ =0x000002AA
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r1, _08027A00 @ =0x0839F5F8
	adds r3, #0x7D
	adds r4, r6, r3
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1D
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x004]
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	movs r0, #0x01
	ldr r2, [sp, #0x000]
	ands r2, r0
	lsls r3, r2, #0x06
	ldrb r1, [r4, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	lsls r2, r2, #0x07
	movs r1, #0x7F
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x01
	bl sub_803C8A4
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080279F0: .4byte 0x000002A9
_080279F4: .4byte 0x0000033D
_080279F8: .4byte 0x000003FF
_080279FC: .4byte 0x000002AA
_08027A00: .4byte 0x0839F5F8
	thumb_func_start sub_8027A04
sub_8027A04:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, [sp, #0x028]
	ldr r7, [sp, #0x02C]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r6, #0xAB
	lsls r6, r6, #0x02
	adds r4, r0, r6
	strh r1, [r4, #0x00]
	ldr r4, _08027ABC @ =0x000002AE
	adds r1, r0, r4
	mov r6, sp
	ldrb r6, [r6, #0x1C]
	strb r6, [r1, #0x00]
	adds r4, #0x01
	adds r1, r0, r4
	add r6, sp, #0x020
	ldrb r6, [r6, #0x00]
	strb r6, [r1, #0x00]
	movs r1, #0xAA
	lsls r1, r1, #0x02
	adds r1, r1, r0
	mov r8, r1
	ldr r4, [sp, #0x024]
	lsls r6, r4, #0x07
	ldrb r4, [r1, #0x00]
	movs r1, #0x7F
	ands r1, r4
	orrs r1, r6
	mov r6, r8
	strb r1, [r6, #0x00]
	ldr r1, _08027AC0 @ =0x000002A9
	adds r0, r0, r1
	movs r6, #0x01
	ands r5, r6
	lsls r5, r5, #0x01
	ldrb r4, [r0, #0x00]
	movs r1, #0x03
	negs r1, r1
	ands r1, r4
	orrs r1, r5
	ands r7, r6
	movs r4, #0x02
	negs r4, r4
	ands r1, r4
	orrs r1, r7
	strb r1, [r0, #0x00]
	movs r1, #0x1F
	ands r2, r1
	mov r1, r8
	ldrb r4, [r1, #0x00]
	movs r1, #0x20
	negs r1, r1
	ands r1, r4
	orrs r1, r2
	ands r3, r6
	lsls r3, r3, #0x05
	movs r4, #0x21
	negs r4, r4
	ands r1, r4
	orrs r1, r3
	mov r2, r8
	strb r1, [r2, #0x00]
	movs r1, #0x07
	ldr r3, [sp, #0x018]
	ands r3, r1
	lsls r3, r3, #0x02
	ldrb r2, [r0, #0x00]
	movs r1, #0x1D
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	ldr r2, [sp, #0x030]
	ands r2, r6
	lsls r2, r2, #0x05
	ands r1, r4
	orrs r1, r2
	strb r1, [r0, #0x00]
	mov r3, r8
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08027ABC: .4byte 0x000002AE
_08027AC0: .4byte 0x000002A9
	thumb_func_start start_battle_8027AC4
start_battle_8027AC4: @ 08027AC4
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	bl sub_801A6B0
	ldr r3, _08027B00 @ =0x000002A9
	add r3, r8
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1D
	movs r1, #0xAC
	lsls r1, r1, #0x02
	add r1, r8
	strb r0, [r1, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r2, [r0, #0x00]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0x00
	beq _08027B08
	ldr r3, _08027B04 @ =0x000002B1
	add r3, r8
	movs r1, #0x04
	ands r1, r2
	b _08027B36
_08027B00: .4byte 0x000002A9
_08027B04: .4byte 0x000002B1
_08027B08:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _08027B24
	ldr r2, _08027B20 @ =0x000002B1
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08027B42
_08027B20: .4byte 0x000002B1
_08027B24:
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	adds r1, #0x02
	ldr r3, _08027B84 @ =0x000002B1
	add r3, r8
	movs r0, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
_08027B36:
	ldrb r2, [r3, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08027B42:
	ldr r0, _08027B88 @ =0x000002A9
	add r0, r8
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	ldr r3, _08027B84 @ =0x000002B1
	add r3, r8
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xAD
	lsls r1, r1, #0x02
	add r1, r8
	ldr r0, _08027B8C @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0x00
	bl sub_8019628
	movs r0, #0x00
	mov r9, r0
	movs r1, #0x03
	mov r10, r1
_08027B76:
	mov r2, r9
	cmp r2, #0x00
	bne _08027B90
	movs r0, #0x80
	lsls r0, r0, #0x02
	b _08027B94
	.byte 0x00, 0x00
_08027B84: .4byte 0x000002B1
_08027B88: .4byte 0x000002A9
_08027B8C: .4byte 0x0000FFFF
_08027B90:
	movs r0, #0x81
	lsls r0, r0, #0x02
_08027B94:
	add r0, r8
	ldr r6, [r0, #0x00]
	movs r0, #0xA6
	lsls r0, r0, #0x02
	adds r7, r6, r0
	ldrb r1, [r7, #0x00]
	movs r2, #0x01
	mov r12, r2
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08027BAE
	b _08027CD2
_08027BAE:
	ldr r1, _08027D44 @ =0x00000356
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	movs r2, #0x86
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	adds r3, r6, #0x0
	adds r3, #0x24
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r4, r6, r2
	ldr r3, [r4, #0x00]
	ldrb r1, [r7, #0x00]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1F
	mov r0, r12
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r3, [r4, #0x00]
	ldrb r1, [r7, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	mov r2, r10
	ands r1, r2
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r4, #0x00]
	ldrb r1, [r7, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1E
	mov r0, r10
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r4, #0x00]
	ldrb r1, [r7, #0x00]
	lsrs r1, r1, #0x06
	mov r2, r10
	ands r1, r2
	lsls r1, r1, #0x01
	ldrb r2, [r3, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r3, [r4, #0x00]
	ldr r0, _08027D48 @ =0x00000299
	adds r5, r6, r0
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	mov r2, r12
	ands r1, r2
	lsls r1, r1, #0x03
	ldrb r2, [r3, #0x12]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r3, [r4, #0x00]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1F
	mov r0, r12
	ands r1, r0
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r1, [r4, #0x00]
	ldr r2, _08027D4C @ =0x0000029B
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	adds r1, #0x21
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	adds r2, #0x01
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	adds r1, #0x23
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	adds r2, #0x02
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x2A]
	ldr r1, [r4, #0x00]
	adds r2, #0x02
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x2C]
	ldr r1, [r4, #0x00]
	adds r2, #0x02
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x04]
	ldr r1, [r4, #0x00]
	adds r2, #0x02
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x06]
	ldrb r1, [r7, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r7, #0x00]
	ldr r0, _08027D50 @ =0x00000212
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08027CD2:
	movs r1, #0x01
	add r9, r1
	mov r2, r9
	cmp r2, #0x01
	bgt _08027CDE
	b _08027B76
_08027CDE:
	mov r0, r8
	bl sub_80273E4
	movs r4, #0xC1
	lsls r4, r4, #0x02
	add r4, r8
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08027CFA
	movs r1, #0x03
	bl sub_8057B58
	movs r0, #0x00
	str r0, [r4, #0x00]
_08027CFA:
	movs r0, #0x02
	movs r1, #0x00
	bl runtime_install_interrupt_callback
	movs r0, #0x02
	mov r1, r8
	strb r0, [r1, #0x00]
	ldr r0, _08027D54 @ =0x03000C24
	movs r2, #0x01
	strb r2, [r0, #0x00]
	ldr r1, _08027D58 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08027D1A
	ldr r0, _08027D5C @ =0x0800063C
	str r0, [r1, #0x00]
_08027D1A:
	ldr r4, _08027D60 @ =0x081E267C
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r3, #0xAB
	lsls r3, r3, #0x02
	add r3, r8
	movs r1, #0x08
	adds r2, r4, #0x0
	bl init_btl_process_80FC25C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08027D44: .4byte 0x00000356
_08027D48: .4byte 0x00000299
_08027D4C: .4byte 0x0000029B
_08027D50: .4byte 0x00000212
_08027D54: .4byte 0x03000C24
_08027D58: .4byte 0x03000C78
_08027D5C: .4byte 0x0800063C
_08027D60: .4byte 0x081E267C
	thumb_func_start sub_8027D64
sub_8027D64:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x01C
	adds r5, r0, #0x0
	adds r6, r5, #0x0
	adds r6, #0xE4
	ldr r3, [r6, #0x00]
	ldrb r1, [r3, #0x04]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08027DCA
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	beq _08027DA8
	cmp r0, #0x02
	bhi _08027D90
	cmp r0, #0x00
	beq _08027D9A
	b _08027DB4
_08027D90:
	cmp r0, #0x04
	beq _08027D9A
	cmp r0, #0x06
	beq _08027DA8
	b _08027DB4
_08027D9A:
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	movs r7, #0xF0
	lsls r7, r7, #0x04
	b _08027DB4
_08027DA8:
	movs r4, #0x80
	lsls r4, r4, #0x04
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r7, [r0, #0x00]
_08027DB4:
	adds r2, r5, #0x0
	adds r2, #0xE4
	ldr r1, [r2, #0x00]
	ldrb r0, [r1, #0x07]
	lsls r0, r0, #0x0C
	adds r4, r4, r0
	ldrb r0, [r1, #0x08]
	lsls r0, r0, #0x0C
	adds r7, r7, r0
	adds r6, r2, #0x0
	b _08027DEC
_08027DCA:
	ldrb r2, [r3, #0x07]
	lsls r2, r2, #0x0C
	ldrb r1, [r3, #0x09]
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x14
	movs r4, #0x80
	lsls r4, r4, #0x04
	adds r0, r0, r4
	adds r4, r2, r0
	ldrb r0, [r3, #0x08]
	lsls r0, r0, #0x0C
	lsrs r1, r1, #0x04
	lsls r1, r1, #0x08
	movs r2, #0xF0
	lsls r2, r2, #0x04
	adds r1, r1, r2
	adds r7, r0, r1
_08027DEC:
	movs r3, #0x00
	add r0, sp, #0x018
	mov r8, r0
	b _08027DF6
_08027DF4:
	adds r3, #0x01
_08027DF6:
	cmp r3, #0x07
	bhi _08027E1C
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	ldsh r2, [r0, r1]
	ldr r1, _08027E48 @ =0x0839F610
	lsls r0, r3, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bne _08027DF4
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8029A0C
_08027E1C:
	ldr r1, [r6, #0x00]
	ldrh r0, [r1, #0x04]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x17
	mov r12, r0
	ldrb r0, [r1, #0x0A]
	lsls r0, r0, #0x1F
	lsrs r2, r0, #0x1F
	ldrb r0, [r1, #0x04]
	lsls r0, r0, #0x1C
	lsrs r3, r0, #0x1D
	str r4, [sp, #0x000]
	str r7, [sp, #0x004]
	ldrb r1, [r1, #0x04]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08027E4C
	movs r0, #0x01
	negs r0, r0
	b _08027E50
	.byte 0x00, 0x00
_08027E48: .4byte 0x0839F610
_08027E4C:
	movs r0, #0x02
	negs r0, r0
_08027E50:
	str r0, [sp, #0x008]
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x18]
	movs r1, #0xF0
	lsls r1, r1, #0x05
	cmp r0, r1
	ble _08027E66
	adds r0, r1, #0x0
_08027E66:
	str r0, [sp, #0x00C]
	movs r4, #0x00
	str r4, [sp, #0x010]
	movs r0, #0x03
	negs r0, r0
	str r0, [sp, #0x014]
	movs r0, #0x01
	mov r1, r8
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	mov r1, r12
	bl sub_8027E90
	str r4, [r6, #0x00]
	add sp, #0x01C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8027E90
sub_8027E90:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [sp, #0x040]
	add r4, sp, #0x044
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x000]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r10, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x004]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x008]
	ldrb r4, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_803C610
	bl sub_801A6B0
	cmp r4, #0x01
	bne _08027F54
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _08027F54
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r4, r5, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x1F
	ands r3, r2
	cmp r3, #0x1F
	bne _08027F54
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	movs r0, #0x1F
	ands r1, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	ldr r2, _08027F70 @ =0x000002DA
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x18
	ldrb r1, [r4, #0x00]
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xB8
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r1, #0x00]
	adds r3, #0x08
	adds r1, r5, r3
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xBA
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x18]
	str r0, [r1, #0x00]
_08027F54:
	movs r6, #0x00
	ldr r1, _08027F74 @ =0x0000010B
	adds r0, r5, r1
	adds r7, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xA8
	movs r2, #0xF8
	adds r2, r2, r5
	mov r8, r2
	movs r3, #0xF9
	adds r3, r3, r5
	mov r9, r3
	b _08027F9E
	.byte 0x00, 0x00
_08027F70: .4byte 0x000002DA
_08027F74: .4byte 0x0000010B
_08027F78:
	lsls r1, r6, #0x02
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08027F9C
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r0, #0x00]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08027F9C:
	adds r6, #0x01
_08027F9E:
	ldrb r0, [r7, #0x00]
	cmp r6, r0
	blt _08027F78
	ldr r0, [r4, #0x00]
	bl free_heap_8018DA8
	movs r6, #0x00
	ldr r0, [r4, #0x04]
	bl free_heap_8018DA8
	ldr r0, [r4, #0x08]
	bl free_heap_8018DA8
	ldr r0, [r4, #0x0C]
	bl free_heap_8018DA8
	ldr r0, [r4, #0x10]
	bl free_heap_8018DA8
	ldr r0, [r4, #0x14]
	bl free_heap_8018DA8
	ldr r0, [r4, #0x18]
	bl free_heap_8018DA8
	ldr r0, [r4, #0x1C]
	bl free_heap_8018DA8
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _08027FF0
	ldr r0, _08028148 @ =0x08CDBDC8
	str r0, [r1, #0x18]
	adds r0, r1, #0x0
	movs r1, #0x03
	bl process_remove
	str r6, [r4, #0x00]
_08027FF0:
	movs r2, #0xC3
	lsls r2, r2, #0x02
	adds r4, r5, r2
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08028004
	movs r1, #0x03
	bl process_remove
	str r6, [r4, #0x00]
_08028004:
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r7, r5, r3
	ldr r0, [r7, #0x00]
	bl sub_80F0184
	bl sub_80E8DC0
	movs r0, #0xC2
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08028028
	movs r1, #0x03
	bl sub_805C73C
	str r6, [r4, #0x00]
_08028028:
	movs r1, #0xC5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0802803C
	movs r1, #0x03
	bl sub_81166AC
	str r6, [r4, #0x00]
_0802803C:
	movs r2, #0xFE
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08028050
	movs r1, #0x03
	bl sub_805CCC0
	str r6, [r4, #0x00]
_08028050:
	movs r3, #0xC1
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08028064
	movs r1, #0x03
	bl sub_8057B58
	str r6, [r4, #0x00]
_08028064:
	movs r0, #0x02
	movs r1, #0x00
	bl runtime_install_interrupt_callback
	ldr r0, [r7, #0x00]
	ldr r0, [r0, #0x00]
	bl process_disable
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl process_disable
	movs r2, #0xAE
	lsls r2, r2, #0x02
	adds r6, r5, r2
	movs r7, #0x01
	mov r1, r10
	ands r1, r7
	lsls r1, r1, #0x04
	ldrb r2, [r6, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x07
	ldr r3, [sp, #0x004]
	ands r1, r3
	lsls r1, r1, #0x01
	movs r2, #0x0F
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x00]
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [sp, #0x02C]
	str r0, [r1, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r0, [sp, #0x030]
	str r0, [r1, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldr r0, [sp, #0x034]
	str r0, [r1, #0x00]
	movs r0, #0xB2
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [sp, #0x038]
	str r0, [r1, #0x00]
	adds r2, #0x0C
	adds r1, r5, r2
	ldr r0, [sp, #0x03C]
	str r0, [r1, #0x00]
	subs r3, #0x0B
	adds r0, r5, r3
	mov r1, sp
	ldrb r1, [r1, #0x08]
	strb r1, [r0, #0x00]
	mov r4, r8
	ldrb r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08028100
	bl sub_8021FD4
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_08028100:
	ldrb r0, [r6, #0x00]
	orrs r0, r7
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r6, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r5, r2
	movs r2, #0x00
	mov r3, sp
	ldrh r3, [r3, #0x00]
	strh r3, [r0, #0x00]
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x08
	orrs r0, r1
	mov r3, r9
	strb r0, [r3, #0x00]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	mov r1, r8
	strb r0, [r1, #0x00]
	strb r2, [r5, #0x00]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08028148: .4byte 0x08CDBDC8
	thumb_func_start sub_802814C
sub_802814C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	bl sub_801A6B0
	ldr r0, _080281C4 @ =0x0000012D
	adds r6, r4, r0
	ldrb r1, [r6, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08028190
	adds r0, r4, #0x0
	bl sub_80273E4
	movs r0, #0xC1
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _0802817E
	movs r1, #0x03
	bl sub_8057B58
	movs r0, #0x00
	str r0, [r5, #0x00]
_0802817E:
	movs r0, #0x02
	movs r1, #0x00
	bl runtime_install_interrupt_callback
	ldrb r1, [r6, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_08028190:
	ldr r0, _080281C8 @ =0x00001BE5
	bl sub_80E99E0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	beq _080281D0
	adds r0, r4, #0x0
	bl process_disable
	movs r0, #0x02
	strb r0, [r4, #0x00]
	ldr r4, _080281CC @ =0x081E2684
	movs r0, #0x68
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	adds r3, r5, #0x0
	bl sub_8054378
	b _0802823E
	.byte 0x00, 0x00
_080281C4: .4byte 0x0000012D
_080281C8: .4byte 0x00001BE5
_080281CC: .4byte 0x081E2684
_080281D0:
	cmp r4, #0x00
	beq _080281DC
	adds r0, r4, #0x0
	movs r1, #0x03
	bl sub_8022554
_080281DC:
	bl sub_8123340
	ldr r3, _08028218 @ =0x03001034
	ldr r0, _0802821C @ =0x03000FC0
	ldr r1, [r0, #0x00]
	movs r2, #0xAE
	lsls r2, r2, #0x03
	ldr r3, [r3, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	bl sub_81251F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08028224
	ldr r0, _08028220 @ =0x03000D40
	ldrb r1, [r0, #0x00]
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x00]
	bl sub_80FC198
	bl sub_812335C
	movs r0, #0x01
	bl make_fldm_801AF5C
	b _0802823E
	.byte 0x00, 0x00
_08028218: .4byte 0x03001034
_0802821C: .4byte 0x03000FC0
_08028220: .4byte 0x03000D40
_08028224:
	movs r0, #0xB2
	lsls r0, r0, #0x01
	ldr r4, _08028244 @ =0x081E268C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x00
	bl load_init_812538C
_0802823E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08028244: .4byte 0x081E268C
	thumb_func_start sub_8028248
sub_8028248:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r6, r0, #0x0
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r5, [r0, #0x00]
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r7, [r0, #0x00]
	str r7, [r5, #0x0C]
	adds r1, #0xBC
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	str r3, [r5, #0x10]
	adds r2, #0xC8
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x18]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	blt _08028292
	str r0, [r5, #0x14]
	b _080282EE
_08028292:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r2, r5, r1
	movs r0, #0xC1
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	ldr r0, [r1, #0x00]
	add r1, sp, #0x014
	str r1, [sp, #0x000]
	add r1, sp, #0x018
	str r1, [sp, #0x004]
	add r1, sp, #0x008
	movs r2, #0x01
	strb r2, [r1, #0x00]
	add r1, sp, #0x00C
	strb r2, [r1, #0x00]
	adds r1, r7, #0x0
	adds r2, r3, #0x0
	add r3, sp, #0x010
	bl sub_803FBA4
	adds r7, r0, #0x0
	ldr r1, [r4, #0x00]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _080282DA
	ldr r3, [sp, #0x018]
	adds r2, r5, #0x0
	adds r2, #0x26
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	b _080282E8
_080282DA:
	ldr r3, [sp, #0x010]
	adds r2, r5, #0x0
	adds r2, #0x26
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
_080282E8:
	strb r0, [r2, #0x00]
	str r3, [r5, #0x14]
	str r7, [r5, #0x20]
_080282EE:
	ldr r0, [r5, #0x0C]
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x40]
	movs r1, #0xAE
	lsls r1, r1, #0x02
	adds r3, r6, r1
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1C
	adds r4, r5, #0x0
	adds r4, #0x24
	movs r0, #0x07
	mov r2, sp
	strb r0, [r2, #0x1C]
	lsrs r1, r1, #0x1D
	ldrb r2, [r4, #0x00]
	movs r0, #0x08
	negs r0, r0
	mov r10, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1D
	lsls r0, r0, #0x05
	strb r0, [r5, #0x02]
	movs r7, #0xCE
	lsls r7, r7, #0x02
	adds r0, r5, r7
	ldr r1, [r0, #0x00]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0x34]
	movs r1, #0x01
	bl _call_via_r2
	mov r9, r4
	mov r3, r8
	cmp r3, #0x00
	beq _08028440
	ldr r0, [r5, #0x18]
	str r0, [r3, #0x18]
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	beq _080283AE
	mov r2, r9
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	adds r3, #0x24
	mov r0, sp
	ldrb r0, [r0, #0x1C]
	ands r1, r0
	ldrb r2, [r3, #0x00]
	mov r0, r10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_802E4C8
	mov r1, r8
	adds r0, r1, r7
	ldr r1, [r0, #0x00]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	add r0, r8
	ldr r2, [r1, #0x34]
	movs r1, #0x01
	bl _call_via_r2
	movs r3, #0xB6
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x1F
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _08028440
_080283AE:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r12, r0
	cmp r0, #0x00
	bne _08028440
	movs r0, #0xB6
	lsls r0, r0, #0x02
	adds r7, r6, r0
	ldrb r1, [r7, #0x00]
	movs r0, #0x1F
	ands r0, r1
	cmp r0, #0x1F
	beq _08028440
	ldr r1, _0802842C @ =0x000002DA
	adds r0, r6, r1
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	bne _08028430
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r1, [r0, #0x00]
	movs r2, #0xB8
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	adds r3, #0x08
	adds r0, r6, r3
	adds r3, #0x04
	adds r4, r6, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	mov r0, r12
	str r0, [sp, #0x004]
	mov r0, r8
	bl sub_8047F60
	ldrb r1, [r7, #0x00]
	lsrs r1, r1, #0x05
	mov r3, r8
	adds r3, #0x24
	mov r2, sp
	ldrb r2, [r2, #0x1C]
	ands r1, r2
	ldrb r2, [r3, #0x00]
	mov r0, r10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r0, [r7, #0x00]
	movs r1, #0x1F
	orrs r0, r1
	strb r0, [r7, #0x00]
	b _08028440
_0802842C: .4byte 0x000002DA
_08028430:
	mov r0, r8
	movs r1, #0x00
	bl sub_804761C
	mov r0, r8
	movs r1, #0x00
	bl sub_804776C
_08028440:
	ldr r3, _080284A0 @ =0x00000246
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x1C
	bne _08028490
	ldr r1, _080284A4 @ =0x00000261
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	beq _08028490
	ldr r2, _080284A8 @ =0x000002BB
	adds r0, r6, r2
	ldrb r2, [r0, #0x00]
	mov r4, r8
	adds r4, #0x24
	movs r0, #0x07
	ands r2, r0
	ldrb r3, [r4, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x00]
	mov r3, r9
	ldrb r0, [r3, #0x00]
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r0, _080284AC @ =0x000002BA
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	mov r2, r8
	strb r0, [r2, #0x02]
	ldrb r0, [r1, #0x00]
	strb r0, [r5, #0x02]
_08028490:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080284A0: .4byte 0x00000246
_080284A4: .4byte 0x00000261
_080284A8: .4byte 0x000002BB
_080284AC: .4byte 0x000002BA
	thumb_func_start sub_80284B0
sub_80284B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	mov r10, r2
	cmp r1, #0x00
	bge _080284C4
	b _08028666
_080284C4:
	ldr r0, _08028578 @ =0x0000027A
	adds r3, r4, r0
	ldrh r6, [r3, #0x00]
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	mov r8, r0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	cmp r0, #0x00
	bge _080284E6
	adds r0, #0xFF
_080284E6:
	asrs r0, r0, #0x08
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	subs r0, r0, r1
	ldr r1, [r5, #0x18]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08028500
	adds r0, #0xFF
_08028500:
	asrs r0, r0, #0x08
	mov r7, r8
	subs r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r7, _0802857C @ =0x0000028A
	adds r0, r4, r7
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	blt _08028524
	adds r7, #0x01
	adds r0, r4, r7
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	ble _0802852A
_08028524:
	adds r0, r1, r6
	subs r0, #0x78
	strh r0, [r3, #0x00]
_0802852A:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	movs r1, #0xA3
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	blt _08028544
	ldr r3, _08028580 @ =0x0000028D
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	ble _08028552
_08028544:
	movs r7, #0x9F
	lsls r7, r7, #0x02
	adds r1, r4, r7
	ldrh r0, [r1, #0x00]
	adds r0, r2, r0
	subs r0, #0x60
	strh r0, [r1, #0x00]
_08028552:
	movs r1, #0x01
	negs r1, r1
	adds r0, r4, #0x0
	bl sub_80286AC
	mov r0, r10
	cmp r0, #0x00
	beq _08028584
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r2, _08028578 @ =0x0000027A
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	movs r3, #0x9F
	lsls r3, r3, #0x02
	b _080285EE
	.byte 0x00, 0x00
_08028578: .4byte 0x0000027A
_0802857C: .4byte 0x0000028A
_08028580: .4byte 0x0000028D
_08028584:
	ldr r7, _080285F8 @ =0x0000027A
	adds r3, r4, r7
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	ldrh r0, [r3, #0x00]
	mov r10, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	mov r7, r8
	lsls r6, r7, #0x10
	cmp r2, r0
	bne _080285AC
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r4, r1
	asrs r1, r6, #0x10
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r1, r0
	beq _08028610
_080285AC:
	mov r1, r10
	subs r0, r2, r1
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r7, r4, r2
	ldrh r2, [r7, #0x00]
	asrs r1, r6, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	movs r2, #0xF8
	lsls r2, r2, #0x0D
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	cmp r0, #0x3E
	bhi _080285DE
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x1F
	bgt _080285DE
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _080285FC
_080285DE:
	movs r3, #0xC1
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r0, [r0, #0x00]
	ldr r7, _080285F8 @ =0x0000027A
	adds r1, r4, r7
	ldrh r1, [r1, #0x00]
	subs r3, #0x88
_080285EE:
	adds r2, r4, r3
	ldrh r2, [r2, #0x00]
	bl sub_805952C
	b _08028610
_080285F8: .4byte 0x0000027A
_080285FC:
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x00
	ldsh r1, [r3, r2]
	movs r3, #0x00
	ldsh r2, [r7, r3]
	bl sub_8057C9C
_08028610:
	movs r7, #0x9D
	lsls r7, r7, #0x02
	adds r0, r4, r7
	mov r1, r9
	strh r1, [r0, #0x00]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _08028630
	movs r3, #0x93
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r2, [r0, #0x00]
	b _08028632
_08028630:
	ldr r2, [r5, #0x14]
_08028632:
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _0802863A
	adds r2, r2, r0
_0802863A:
	ldr r0, [r5, #0x10]
	subs r0, r0, r2
	cmp r0, #0x00
	bge _08028644
	adds r0, #0xFF
_08028644:
	asrs r3, r0, #0x08
	movs r7, #0x9E
	lsls r7, r7, #0x02
	adds r0, r4, r7
	strh r3, [r0, #0x00]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	subs r0, r0, r2
	cmp r0, #0x00
	bge _0802865C
	adds r0, #0xFF
_0802865C:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	ldr r2, _080286A0 @ =0x00000276
	adds r1, r4, r2
	strh r0, [r1, #0x00]
_08028666:
	ldr r3, _080286A4 @ =0x0000027A
	adds r1, r4, r3
	movs r7, #0x97
	lsls r7, r7, #0x01
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r2, _080286A8 @ =0x0000027E
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	adds r3, #0x02
	adds r1, r4, r3
	adds r7, #0x02
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080286A0: .4byte 0x00000276
_080286A4: .4byte 0x0000027A
_080286A8: .4byte 0x0000027E
	thumb_func_start sub_80286AC
sub_80286AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	cmp r1, #0x00
	bge _080286BA
	b _08028956
_080286BA:
	lsls r1, r1, #0x02
	adds r0, #0x28
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldrh r2, [r1, #0x00]
	mov r12, r2
	ldr r0, [r3, #0x0C]
	cmp r0, #0x00
	bge _080286D4
	adds r0, #0xFF
_080286D4:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r5, _0802870C @ =0x0000027A
	adds r1, r4, r5
	ldrh r1, [r1, #0x00]
	subs r0, r0, r1
	ldr r2, _08028710 @ =0x00000282
	adds r1, r3, r2
	ldrb r1, [r1, #0x00]
	lsrs r2, r1, #0x01
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r2, r4, #0x0
	adds r2, #0xF9
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x00
	bne _08028718
	ldr r1, _08028714 @ =0x0000028A
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	b _0802871A
_0802870C: .4byte 0x0000027A
_08028710: .4byte 0x00000282
_08028714: .4byte 0x0000028A
_08028718:
	movs r0, #0x78
_0802871A:
	adds r2, r0, #0x0
	ldrb r1, [r7, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08028734
	ldr r1, _08028730 @ =0x0000028B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	b _08028736
	.byte 0x00, 0x00
_08028730: .4byte 0x0000028B
_08028734:
	movs r1, #0x78
_08028736:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	bge _08028768
	movs r2, #0x9D
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r5, [r0, #0x00]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r2, r12
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08028792
	ldr r1, _08028764 @ =0x0000027A
	adds r2, r4, r1
	subs r1, r0, r5
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	b _08028792
	.byte 0x00, 0x00
_08028764: .4byte 0x0000027A
_08028768:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _08028792
	movs r2, #0x9D
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r2, [r0, #0x00]
	movs r5, #0x00
	ldsh r1, [r0, r5]
	mov r5, r12
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08028792
	ldr r5, _080287B0 @ =0x0000027A
	adds r1, r4, r5
	subs r0, r2, r0
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
_08028792:
	ldr r5, _080287B4 @ =0x00000276
	adds r0, r4, r5
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r12, r1
	subs r5, #0x1A
	adds r0, r3, r5
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _080287B8
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r2, [r0, #0x00]
	b _080287BE
_080287B0: .4byte 0x0000027A
_080287B4: .4byte 0x00000276
_080287B8:
	ldr r1, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r2, r1, r0
_080287BE:
	movs r5, #0x97
	lsls r5, r5, #0x02
	adds r0, r3, r5
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _080287D4
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	b _080287DA
_080287D4:
	ldr r1, [r3, #0x3C]
	ldr r0, [r3, #0x40]
	adds r1, r1, r0
_080287DA:
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _080287E4
	adds r0, #0xFF
_080287E4:
	asrs r0, r0, #0x08
	mov r8, r0
	ldr r0, [r3, #0x10]
	subs r0, r0, r2
	cmp r0, #0x00
	bge _080287F2
	adds r0, #0xFF
_080287F2:
	asrs r5, r0, #0x08
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	strh r5, [r0, #0x00]
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x18]
	adds r0, r0, r1
	subs r0, r0, r2
	cmp r0, #0x00
	bge _0802880A
	adds r0, #0xFF
_0802880A:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	ldr r2, _08028848 @ =0x00000276
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	movs r5, #0x9F
	lsls r5, r5, #0x02
	adds r1, r4, r5
	ldrh r1, [r1, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _0802884C
	adds r5, #0x12
	adds r0, r4, r5
	ldrb r6, [r0, #0x00]
	adds r1, #0x33
	adds r0, r4, r1
	ldrb r7, [r0, #0x00]
	subs r5, #0x0B
	adds r0, r3, r5
	ldrb r0, [r0, #0x00]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08028880
_08028848: .4byte 0x00000276
_0802884C:
	ldrb r1, [r7, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08028860
	movs r1, #0xA3
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	b _08028862
_08028860:
	movs r0, #0x64
_08028862:
	adds r6, r0, #0x0
	ldrb r1, [r7, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0802887C
	ldr r5, _08028878 @ =0x0000028D
	adds r0, r4, r5
	ldrb r1, [r0, #0x00]
	b _0802887E
	.byte 0x00, 0x00
_08028878: .4byte 0x0000028D
_0802887C:
	movs r1, #0x64
_0802887E:
	adds r7, r1, #0x0
_08028880:
	movs r5, #0x00
	lsls r1, r2, #0x10
	lsls r0, r6, #0x10
	cmp r1, r0
	bge _080288AA
	ldr r0, _080288E0 @ =0x00000276
	adds r1, r4, r0
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r12
	bge _080288AA
	movs r5, #0x9F
	lsls r5, r5, #0x02
	adds r2, r4, r5
	ldrh r1, [r1, #0x00]
	mov r0, r12
	subs r1, r0, r1
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	movs r5, #0x01
_080288AA:
	cmp r5, #0x00
	bne _08028956
	ldr r1, [r3, #0x10]
	ldr r0, [r3, #0x38]
	cmp r1, r0
	ble _08028926
	ldr r1, _080288E0 @ =0x00000276
	adds r0, r4, r1
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r5, r4, r2
	ldrh r6, [r0, #0x00]
	ldrh r2, [r5, #0x00]
	subs r0, r6, r2
	lsls r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r7, r1, #0x10
	cmp r0, r1
	ble _080288F4
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	ble _080288E4
	mov r3, r12
	subs r0, r6, r3
	adds r0, r2, r0
	b _08028954
	.byte 0x00, 0x00
_080288E0: .4byte 0x00000276
_080288E4:
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	mov r3, r8
	subs r0, r0, r3
	adds r0, r2, r0
	b _08028954
_080288F4:
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _08028956
	subs r1, #0x10
	adds r0, r3, r1
	ldr r1, [r3, #0x14]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bne _08028956
	movs r3, #0x9E
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldrh r1, [r0, #0x00]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	ble _08028956
	mov r3, r8
	subs r0, r1, r3
	adds r0, r2, r0
	b _08028954
_08028926:
	ldr r2, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r2, r2, r0
	ldr r0, [r3, #0x3C]
	ldr r1, [r3, #0x40]
	adds r0, r0, r1
	cmp r2, r0
	bge _08028956
	ldr r5, _08028968 @ =0x00000276
	adds r0, r4, r5
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r5, r4, r1
	ldrh r2, [r0, #0x00]
	ldrh r3, [r5, #0x00]
	subs r0, r2, r3
	lsls r0, r0, #0x10
	lsls r1, r7, #0x10
	cmp r0, r1
	ble _08028956
	mov r1, r12
	subs r0, r2, r1
	adds r0, r3, r0
_08028954:
	strh r0, [r5, #0x00]
_08028956:
	ldr r3, _0802896C @ =0x0000027A
	adds r2, r4, r3
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _08028970
	movs r0, #0x00
	strh r0, [r2, #0x00]
	b _08028982
_08028968: .4byte 0x00000276
_0802896C: .4byte 0x0000027A
_08028970:
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r3, _08028998 @ =0x00000286
	adds r1, r4, r3
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _08028982
	strh r1, [r2, #0x00]
_08028982:
	movs r5, #0x9F
	lsls r5, r5, #0x02
	adds r2, r4, r5
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _0802899C
	movs r0, #0x00
	strh r0, [r2, #0x00]
	b _080289B0
	.byte 0x00, 0x00
_08028998: .4byte 0x00000286
_0802899C:
	movs r3, #0x00
	ldsh r0, [r2, r3]
	movs r5, #0xA2
	lsls r5, r5, #0x02
	adds r1, r4, r5
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _080289B0
	strh r1, [r2, #0x00]
_080289B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80289BC
sub_80289BC:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r3, r1, #0x0
	movs r6, #0x00
	movs r4, #0x00
	movs r1, #0xD4
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, #0x02
	beq _080289F0
	cmp r0, #0x02
	bhi _080289E2
	cmp r0, #0x01
	beq _080289EC
	b _080289F6
_080289E2:
	cmp r0, #0x04
	beq _080289F6
	cmp r0, #0x08
	beq _080289F4
	b _080289F6
_080289EC:
	movs r6, #0x04
	b _080289F6
_080289F0:
	movs r6, #0x06
	b _080289F6
_080289F4:
	movs r6, #0x02
_080289F6:
	movs r1, #0xD4
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _08028A0C
	cmp r0, #0x02
	beq _08028A10
	b _08028A12
_08028A0C:
	movs r4, #0x02
	b _08028A12
_08028A10:
	movs r4, #0x01
_08028A12:
	ldr r1, _08028A2C @ =0x00000342
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x03
	bne _08028A30
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r1, r3, r0
	movs r0, #0x19
	b _08028AA8
	.byte 0x00, 0x00
_08028A2C: .4byte 0x00000342
_08028A30:
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x07
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x07
	bhi _08028AAA
	lsls r0, r0, #0x02
	ldr r1, _08028A4C @ =0x08028A50
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08028A4C: .4byte _08028A50
_08028A50:
	.4byte _08028A70
	.4byte _08028AAA
	.4byte _08028A70
	.4byte _08028A70
	.4byte _08028AAA
	.4byte _08028A90
	.4byte _08028AAA
	.4byte _08028A90
_08028A70:
	ldr r1, _08028A8C @ =0x00000342
	adds r0, r3, r1
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08028AAA
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r1, r3, r0
	movs r0, #0x00
	b _08028AA8
	.byte 0x00, 0x00
_08028A8C: .4byte 0x00000342
_08028A90:
	ldr r1, _08028AF8 @ =0x00000342
	adds r0, r3, r1
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08028AAA
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r1, r3, r0
	movs r0, #0x0B
_08028AA8:
	strb r0, [r1, #0x00]
_08028AAA:
	movs r1, #0xC7
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r5, #0xCF
	lsls r5, r5, #0x02
	adds r1, r3, r5
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x19
	asrs r1, r1, #0x01
	lsrs r1, r1, #0x18
	movs r5, #0x8B
	lsls r5, r5, #0x02
	adds r2, r2, r5
	ldr r2, [r2, #0x00]
	str r4, [sp, #0x000]
	movs r4, #0xD1
	lsls r4, r4, #0x02
	adds r5, r3, r4
	movs r4, #0x00
	ldsb r4, [r5, r4]
	movs r3, #0x10
	eors r4, r3
	negs r3, r4
	orrs r3, r4
	lsrs r3, r3, #0x1F
	str r3, [sp, #0x004]
	movs r3, #0x00
	ldsb r3, [r5, r3]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x008]
	adds r3, r6, #0x0
	bl sub_80EF874
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08028AF8: .4byte 0x00000342
	thumb_func_start sub_8028AFC
sub_8028AFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	ldr r1, [sp, #0x018]
	ldr r0, [sp, #0x01C]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r2, #0x01
	bne _08028B2A
	ldr r2, _08028B34 @ =0x0000027A
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r3, r3, r0
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, r1, r0
_08028B2A:
	cmp r3, #0x00
	bge _08028B38
	movs r3, #0x00
	b _08028B46
	.byte 0x00, 0x00
_08028B34: .4byte 0x0000027A
_08028B38:
	ldr r2, _08028B50 @ =0x00000286
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	subs r0, #0xF0
	cmp r3, r0
	ble _08028B46
	adds r3, r0, #0x0
_08028B46:
	cmp r1, #0x00
	bge _08028B54
	movs r1, #0x00
	b _08028B64
	.byte 0x00, 0x00
_08028B50: .4byte 0x00000286
_08028B54:
	movs r2, #0xA2
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	subs r0, #0xA0
	cmp r1, r0
	ble _08028B64
	adds r1, r0, #0x0
_08028B64:
	ldr r2, _08028BCC @ =0x0000027A
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r2, #0x72
	adds r6, r4, r2
	strh r0, [r6, #0x00]
	subs r2, #0x70
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r2, #0x72
	adds r5, r4, r2
	strh r0, [r5, #0x00]
	adds r2, #0x04
	adds r0, r4, r2
	strh r3, [r0, #0x00]
	adds r2, #0x02
	adds r3, r4, r2
	strh r1, [r3, #0x00]
	cmp r7, #0x01
	bne _08028BD4
	movs r1, #0x00
	ldsh r2, [r0, r1]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	subs r2, r2, r0
	movs r0, #0x00
	ldsh r1, [r3, r0]
	movs r3, #0x00
	ldsh r0, [r5, r3]
	subs r1, r1, r0
	ldr r3, _08028BD0 @ =0x03001038
	adds r0, r2, #0x0
	muls r0, r2
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	lsls r0, r0, #0x08
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl __divsi3
	movs r2, #0xBF
	lsls r2, r2, #0x02
	adds r1, r4, r2
	adds r0, #0x01
	strh r0, [r1, #0x00]
	b _08028BDE
_08028BCC: .4byte 0x0000027A
_08028BD0: .4byte 0x03001038
_08028BD4:
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r0, r4, r3
	mov r1, r8
	strh r1, [r0, #0x00]
_08028BDE:
	ldr r2, _08028C34 @ =0x000002FA
	adds r1, r4, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r3, _08028C38 @ =0x000002EE
	adds r0, r4, r3
	subs r2, #0x06
	adds r1, r4, r2
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, #0x04
	adds r1, r4, r3
	subs r3, #0x06
	adds r2, r4, r3
	ldrh r1, [r1, #0x00]
	ldrh r2, [r2, #0x00]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsrs r0, r0, #0x08
	ldr r2, _08028C3C @ =0x000002FE
	adds r1, r4, r2
	strb r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xF9
	movs r0, #0x03
	ands r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08028C34: .4byte 0x000002FA
_08028C38: .4byte 0x000002EE
_08028C3C: .4byte 0x000002FE
	thumb_func_start sub_8028C40
sub_8028C40:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0x0
	adds r0, #0xF9
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _08028D4C
	ldr r0, _08028D5C @ =0x000002FA
	adds r4, r7, r0
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r1, #0xBB
	lsls r1, r1, #0x02
	adds r1, r1, r7
	mov r10, r1
	ldr r2, _08028D60 @ =0x000002F2
	adds r2, r2, r7
	mov r9, r2
	movs r3, #0x00
	ldsh r0, [r2, r3]
	movs r2, #0x00
	ldsh r1, [r1, r2]
	subs r0, r0, r1
	ldrh r1, [r4, #0x00]
	muls r0, r1
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r3, r3, r7
	mov r8, r3
	ldrh r1, [r3, #0x00]
	bl __divsi3
	mov r2, r10
	ldrh r1, [r2, #0x00]
	adds r1, r1, r0
	ldr r3, _08028D64 @ =0x0000027A
	adds r6, r7, r3
	strh r1, [r6, #0x00]
	ldr r0, _08028D68 @ =0x000002EE
	adds r5, r7, r0
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r3, #0x00
	ldsh r1, [r5, r3]
	subs r0, r0, r1
	ldrh r1, [r4, #0x00]
	muls r0, r1
	mov r4, r8
	ldrh r1, [r4, #0x00]
	bl __divsi3
	ldrh r1, [r5, #0x00]
	adds r1, r1, r0
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	movs r3, #0x00
	mov r4, r9
	movs r0, #0x00
	ldsh r1, [r4, r0]
	mov r4, r10
	movs r0, #0x00
	ldsh r2, [r4, r0]
	cmp r1, r2
	blt _08028CE2
	movs r4, #0x00
	ldsh r0, [r6, r4]
	cmp r1, r0
	ble _08028CEA
	cmp r1, r2
	bgt _08028CF8
_08028CE2:
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r1, r0
	blt _08028CF8
_08028CEA:
	ldr r3, _08028D60 @ =0x000002F2
	adds r0, r7, r3
	ldrh r1, [r0, #0x00]
	ldr r4, _08028D64 @ =0x0000027A
	adds r0, r7, r4
	strh r1, [r0, #0x00]
	movs r3, #0x01
_08028CF8:
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r2, _08028D68 @ =0x000002EE
	adds r1, r7, r2
	movs r4, #0x00
	ldsh r2, [r0, r4]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	cmp r2, r1
	blt _08028D20
	movs r4, #0x9F
	lsls r4, r4, #0x02
	adds r0, r7, r4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r2, r0
	ble _08028D2E
	cmp r2, r1
	bgt _08028D42
_08028D20:
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r2, r0
	blt _08028D42
_08028D2E:
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrh r1, [r0, #0x00]
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	movs r0, #0x02
	orrs r3, r0
_08028D42:
	cmp r3, #0x03
	bne _08028D4C
	adds r0, r7, #0x0
	bl sub_8028E4C
_08028D4C:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08028D5C: .4byte 0x000002FA
_08028D60: .4byte 0x000002F2
_08028D64: .4byte 0x0000027A
_08028D68: .4byte 0x000002EE
	thumb_func_start sub_8028D6C
sub_8028D6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r12, r1
	ldr r0, _08028DD4 @ =0x000003FF
	adds r3, r0, #0x0
	adds r0, r3, #0x0
	bics r0, r1
	adds r7, r0, #0x0
	ldr r5, _08028DD8 @ =0x0300034C
	adds r4, r5, #0x0
	adds r4, #0x78
	ldrh r2, [r4, #0x00]
	lsls r0, r2, #0x16
	lsrs r6, r0, #0x16
	ands r6, r7
	adds r1, r7, #0x0
	ands r1, r3
	ldr r0, _08028DDC @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x00]
	mov r0, r8
	adds r0, #0xF8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08028DE0
	ldrh r1, [r5, #0x3C]
	mov r0, r12
	orrs r0, r1
	strh r0, [r5, #0x3C]
	bl sub_8018818
	ldrh r0, [r5, #0x3E]
	ands r0, r6
	strh r0, [r5, #0x3E]
	adds r1, r5, #0x0
	adds r1, #0x40
	ldrh r0, [r1, #0x00]
	ands r0, r6
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	ands r6, r0
	strh r6, [r1, #0x00]
	b _08028DFE
	.byte 0x00, 0x00
_08028DD4: .4byte 0x000003FF
_08028DD8: .4byte 0x0300034C
_08028DDC: .4byte 0xFFFFFC00
_08028DE0:
	ldrh r0, [r5, #0x28]
	ands r0, r7
	strh r0, [r5, #0x3C]
	ldrh r0, [r5, #0x2A]
	ands r0, r7
	strh r0, [r5, #0x3E]
	ldrh r0, [r5, #0x2C]
	ands r0, r7
	adds r1, r5, #0x0
	adds r1, #0x40
	strh r0, [r1, #0x00]
	ldrh r0, [r5, #0x2E]
	ands r0, r7
	adds r1, #0x02
	strh r0, [r1, #0x00]
_08028DFE:
	mov r0, r8
	adds r0, #0xF8
	ldrb r1, [r0, #0x00]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8028E14
sub_8028E14:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	adds r4, r3, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	beq _08028E2C
	adds r0, r4, #0x0
	bl sub_802191C
_08028E2C:
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8028E4C
sub_8028E4C:
	adds r2, r0, #0x0
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	adds r2, #0xF9
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_8028E70
sub_8028E70:
	push {lr}
	adds r0, #0xF9
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	adds r1, r0, #0x0
	cmp r0, #0x00
	beq _08028E82
	movs r1, #0x01
_08028E82:
	adds r0, r1, #0x0
	pop {r1}
	bx r1
	thumb_func_start get_fobj_screen_pos
get_fobj_screen_pos: @ 08028E88
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r2, #0x0
	lsls r1, r1, #0x02
	adds r0, #0x28
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _08028E9E
	adds r0, #0xFF
_08028E9E:
	asrs r0, r0, #0x08
	ldr r6, _08028ED4 @ =0x0000027E
	adds r1, r4, r6
	movs r6, #0x00
	ldsh r1, [r1, r6]
	subs r0, r0, r1
	str r0, [r5, #0x00]
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	subs r0, r0, r1
	ldr r1, [r2, #0x18]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08028EBC
	adds r0, #0xFF
_08028EBC:
	asrs r0, r0, #0x08
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r6, #0x00
	ldsh r1, [r1, r6]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08028ED4: .4byte 0x0000027E
	thumb_func_start sub_8028ED8
sub_8028ED8:
	adds r0, #0xF8
	ldrb r2, [r0, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_8028EE8
sub_8028EE8:
	adds r0, #0xF8
	ldrb r1, [r0, #0x00]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x00]
	bx lr
	thumb_func_start sub_8028EF4
sub_8028EF4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_801A6B0
	cmp r4, #0x00
	beq _08028F08
	adds r0, r4, #0x0
	movs r1, #0x03
	bl sub_8022554
_08028F08:
	ldr r0, _08028F24 @ =0x000004AC
	ldr r4, _08028F28 @ =0x081E2694
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_812F5D8
	pop {r4}
	pop {r0}
	bx r0
_08028F24: .4byte 0x000004AC
_08028F28: .4byte 0x081E2694
	thumb_func_start sub_8028F2C
sub_8028F2C:
	ldr r1, _08028F3C @ =0x0000012D
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	bx lr
	.byte 0x00, 0x00
_08028F3C: .4byte 0x0000012D
	thumb_func_start sub_8028F40
sub_8028F40:
	ldr r1, _08028F50 @ =0x0000012D
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	bx lr
	.byte 0x00, 0x00
_08028F50: .4byte 0x0000012D
	thumb_func_start make_btl_8028F54
make_btl_8028F54: @ 08028F54
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0xAD
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	movs r2, #0xAB
	lsls r2, r2, #0x02
	adds r5, r4, r2
	strh r0, [r5, #0x00]
	ldr r0, _08028FA8 @ =0x0000FFFF
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl process_disable
	movs r0, #0x02
	strb r0, [r4, #0x00]
	ldr r1, _08028FAC @ =0x03000C24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r1, _08028FB0 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08028F88
	ldr r0, _08028FB4 @ =0x0800063C
	str r0, [r1, #0x00]
_08028F88:
	ldr r4, _08028FB8 @ =0x081E267C
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	adds r3, r5, #0x0
	bl init_btl_process_80FC25C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08028FA8: .4byte 0x0000FFFF
_08028FAC: .4byte 0x03000C24
_08028FB0: .4byte 0x03000C78
_08028FB4: .4byte 0x0800063C
_08028FB8: .4byte 0x081E267C
	thumb_func_start sub_8028FBC
sub_8028FBC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_801A6B0
	movs r0, #0x00
	bl sub_8019628
	adds r0, r4, #0x0
	bl sub_80273E4
	bl sub_80E8DC0
	movs r0, #0xC1
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08028FEA
	movs r1, #0x03
	bl sub_8057B58
	movs r0, #0x00
	str r0, [r5, #0x00]
_08028FEA:
	movs r0, #0x02
	movs r1, #0x00
	bl runtime_install_interrupt_callback
	movs r0, #0x01
	strb r0, [r4, #0x00]
	ldr r1, _08029018 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08029002
	ldr r0, _0802901C @ =0x0800063C
	str r0, [r1, #0x00]
_08029002:
	ldr r0, _08029020 @ =0x0000012B
	adds r4, r4, r0
	movs r0, #0x00
	ldsb r0, [r4, r0]
	bl sub_815085C
	movs r0, #0xFF
	strb r0, [r4, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08029018: .4byte 0x03000C78
_0802901C: .4byte 0x0800063C
_08029020: .4byte 0x0000012B
	thumb_func_start sub_8029024
sub_8029024:
	ldr r2, _0802902C @ =0x0000012B
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	bx lr
_0802902C: .4byte 0x0000012B
	thumb_func_start sub_8029030
sub_8029030:
	ldr r3, _0802905C @ =0x0000012D
	adds r3, r3, r0
	mov r12, r3
	ldrb r0, [r3, #0x00]
	movs r3, #0x01
	orrs r0, r3
	ands r1, r3
	lsls r1, r1, #0x01
	movs r3, #0x03
	negs r3, r3
	ands r0, r3
	orrs r0, r1
	movs r1, #0x03
	ands r2, r1
	lsls r2, r2, #0x02
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	mov r1, r12
	strb r0, [r1, #0x00]
	bx lr
_0802905C: .4byte 0x0000012D
	thumb_func_start sub_8029060
sub_8029060:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x00]
	bx lr
	thumb_func_start sub_8029070
sub_8029070:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	bx lr
	thumb_func_start sub_8029080
sub_8029080:
	push {r4, lr}
	adds r4, r0, #0x0
	bl process_disable
	movs r0, #0x02
	strb r0, [r4, #0x00]
	ldr r1, _080290C0 @ =0x03000C24
	strb r0, [r1, #0x00]
	ldr r1, _080290C4 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0802909C
	ldr r0, _080290C8 @ =0x0800063C
	str r0, [r1, #0x00]
_0802909C:
	movs r0, #0x96
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1A
	movs r1, #0x00
	bl sub_8122BA0
	ldrb r1, [r4, #0x00]
	movs r0, #0x03
	ands r0, r1
	movs r1, #0xF8
	orrs r0, r1
	strb r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_080290C0: .4byte 0x03000C24
_080290C4: .4byte 0x03000C78
_080290C8: .4byte 0x0800063C
	thumb_func_start sub_80290CC
sub_80290CC:
	movs r2, #0x96
	lsls r2, r2, #0x01
	adds r0, r0, r2
	lsls r1, r1, #0x02
	ldrb r3, [r0, #0x00]
	movs r2, #0x03
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #0x00]
	bx lr
	thumb_func_start sub_80290E0
sub_80290E0:
	push {r4, r5, r6, lr}
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0xF0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08029116
	ldr r5, [r1, #0x24]
	ldr r6, _0802911C @ =0x02000080
	adds r4, r2, #0x0
_080290F4:
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08029108
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x08
	bl CpuFastSet
_08029108:
	adds r5, #0x20
	adds r6, #0x20
	ldr r0, [r4, #0x00]
	lsrs r0, r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080290F4
_08029116:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0802911C: .4byte 0x02000080
	thumb_func_start sub_8029120
sub_8029120:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r1, r1, #0x10
	orrs r4, r1
	ldr r3, _0802916C @ =0x02000080
	ldr r5, [r0, #0x24]
	movs r7, #0x01
	cmp r4, #0x00
	beq _08029162
	adds r6, r0, #0x0
	adds r6, #0xF0
_0802913A:
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _08029156
	adds r0, r3, #0x0
	adds r1, r5, #0x0
	movs r2, #0x08
	str r3, [sp, #0x000]
	bl CpuFastSet
	ldr r0, [r6, #0x00]
	orrs r0, r7
	str r0, [r6, #0x00]
	ldr r3, [sp, #0x000]
_08029156:
	adds r3, #0x20
	adds r5, #0x20
	lsls r7, r7, #0x01
	lsrs r4, r4, #0x01
	cmp r4, #0x00
	bne _0802913A
_08029162:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802916C: .4byte 0x02000080
	thumb_func_start sub_8029170
sub_8029170:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r5, #0xFC
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	cmp r0, #0x01
	beq _0802918A
	cmp r0, #0x02
	beq _0802919C
	b _080291C0
_0802918A:
	movs r1, #0xC5
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x0
	bl sub_81165CC
	adds r1, r4, #0x1
	b _080291AE
_0802919C:
	movs r1, #0xC5
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x0
	bl sub_81165CC
	movs r1, #0x02
	subs r1, r1, r4
_080291AE:
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x03
	ldrb r2, [r5, #0x00]
	movs r0, #0x79
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
_080291C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80291C8
sub_80291C8:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0xFC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	cmp r0, #0x02
	bgt _080291E8
	cmp r0, #0x01
	blt _080291E8
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	bl sub_8116610
_080291E8:
	pop {r0}
	bx r0
	thumb_func_start sub_80291EC
sub_80291EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	mov r8, r2
	ldr r0, [sp, #0x02C]
	ldr r2, [sp, #0x030]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r2, #0x10
	ldr r1, _08029234 @ =0x0300034C
	ldr r0, _08029238 @ =0x00000884
	adds r1, r1, r0
	lsrs r6, r2, #0x10
	orrs r2, r5
	ldr r0, [r1, #0x00]
	orrs r0, r2
	str r0, [r1, #0x00]
	cmp r7, #0x00
	bne _0802923C
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08029246
	adds r0, r4, #0x0
	bl sub_80290E0
	b _08029246
	.byte 0x00, 0x00
_08029234: .4byte 0x0300034C
_08029238: .4byte 0x00000884
_0802923C:
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_8029120
_08029246:
	adds r0, r4, #0x0
	adds r0, #0xF4
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	movs r1, #0xC5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	lsls r0, r7, #0x18
	lsrs r1, r0, #0x18
	mov r3, r8
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	str r5, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08029272
	ldr r0, _08029298 @ =0x03000E00
	ldr r0, [r0, #0x00]
_08029272:
	str r0, [sp, #0x008]
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08029280
	ldr r0, _0802929C @ =0x03000E04
	ldr r0, [r0, #0x00]
_08029280:
	str r0, [sp, #0x00C]
	adds r0, r2, #0x0
	mov r2, r9
	bl sub_81151E4
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08029298: .4byte 0x03000E00
_0802929C: .4byte 0x03000E04
	thumb_func_start sub_80292A0
sub_80292A0:
	push {lr}
	ldr r2, _080292D4 @ =0x0300034C
	ldr r1, _080292D8 @ =0x00000888
	adds r2, r2, r1
	ldrb r3, [r2, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r3
	strb r1, [r2, #0x00]
	movs r2, #0x06
	ldsh r0, [r0, r2]
	cmp r0, #0x06
	bne _080292D0
	ldr r0, _080292DC @ =0x03001034
	ldr r1, _080292E0 @ =0x0600C000
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	movs r2, #0x20
	bl _call_via_r3
	ldr r1, _080292E4 @ =0x02000008
	ldr r2, _080292E8 @ =0x00001508
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
_080292D0:
	pop {r0}
	bx r0
_080292D4: .4byte 0x0300034C
_080292D8: .4byte 0x00000888
_080292DC: .4byte 0x03001034
_080292E0: .4byte 0x0600C000
_080292E4: .4byte 0x02000008
_080292E8: .4byte 0x00001508
	thumb_func_start sub_80292EC
sub_80292EC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r5, #0x00
	b _0802931A
_080292F4:
	lsls r1, r5, #0x02
	adds r0, r4, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08029318
	movs r3, #0xCE
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r1, [r0, #0x00]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08029318:
	adds r5, #0x01
_0802931A:
	ldr r1, _0802937C @ =0x0000010B
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r5, r0
	blt _080292F4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xB4
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xB8
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xBC
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xC0
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802937C: .4byte 0x0000010B
	thumb_func_start sub_8029380
sub_8029380:
	push {r4, r5, r6, lr}
	adds r1, r0, #0x0
	movs r2, #0x89
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080293B0
	adds r6, r1, #0x0
	adds r6, #0x30
	movs r4, #0x00
	adds r2, #0x01
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r4, r0
	bge _080293B0
	adds r5, r1, r2
_080293A2:
	ldm r6!, {r0}
	bl sub_80507E0
	adds r4, #0x01
	ldrb r0, [r5, #0x00]
	cmp r4, r0
	blt _080293A2
_080293B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80293B8
sub_80293B8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r0, #0xC8
	ldr r5, [r0, #0x00]
	movs r4, #0x00
	b _080293E4
_080293C4:
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r2, r4, #0x02
	movs r3, #0xAE
	lsls r3, r3, #0x01
	adds r1, r1, r3
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r4, #0x01
	adds r5, #0x02
_080293E4:
	movs r1, #0x86
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r4, r0
	blt _080293C4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80293F8
sub_80293F8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x86
	lsls r1, r1, #0x01
	adds r4, r7, r1
	adds r1, r4, #0x0
	bl sub_80FB7BC
	adds r1, r7, #0x0
	adds r1, #0xC8
	str r0, [r1, #0x00]
	ldr r2, _08029458 @ =0x03000C78
	movs r1, #0x00
	str r1, [r2, #0x00]
	adds r6, r0, #0x0
	movs r5, #0x00
	ldrb r4, [r4, #0x00]
	cmp r5, r4
	bge _0802944A
_08029422:
	ldrh r1, [r6, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r2, r5, #0x02
	adds r1, #0x5C
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r5, #0x01
	adds r6, #0x02
	movs r1, #0x86
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r5, r0
	blt _08029422
_0802944A:
	ldr r1, _08029458 @ =0x03000C78
	ldr r0, _0802945C @ =0x0800063C
	str r0, [r1, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08029458: .4byte 0x03000C78
_0802945C: .4byte 0x0800063C
	thumb_func_start sub_8029460
sub_8029460:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x1C]
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x08]
	ldr r1, _08029498 @ =0x06010400
	movs r2, #0x98
	lsls r2, r2, #0x03
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r0, [r5, #0x1C]
	ldr r0, [r0, #0x0C]
	ldr r0, [r0, #0x08]
	ldr r1, _0802949C @ =0x060108C0
	movs r2, #0xA0
	lsls r2, r2, #0x03
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08029498: .4byte 0x06010400
_0802949C: .4byte 0x060108C0
	thumb_func_start sub_80294A0
sub_80294A0:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r5, _08029558 @ =0x0839F5E2
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	str r0, [r1, #0x2C]
	adds r5, #0x02
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	str r0, [r1, #0x30]
	adds r5, #0x02
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	str r0, [r1, #0x34]
	adds r5, #0x02
	movs r7, #0x03
_080294E4:
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r2, r7, #0x02
	adds r1, #0x2C
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r4, r7, #0x1
	ldrh r1, [r5, #0x02]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r4, r4, #0x02
	adds r1, #0x2C
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r7, #0x2
	ldrh r1, [r5, #0x04]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r4, r4, #0x02
	adds r1, #0x2C
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r7, #0x3
	ldrh r1, [r5, #0x06]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r4, r4, #0x02
	adds r1, #0x2C
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r5, #0x08
	adds r7, #0x04
	cmp r7, #0x0A
	ble _080294E4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08029558: .4byte 0x0839F5E2
	thumb_func_start sub_802955C
sub_802955C:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r1, _08029618 @ =0x03000C78
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r5, _0802961C @ =0x0839F5CC
	ldrh r1, [r5, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	str r0, [r1, #0x00]
	adds r5, #0x02
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	str r0, [r1, #0x04]
	adds r5, #0x02
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	str r0, [r1, #0x08]
	adds r5, #0x02
	movs r6, #0x03
_080295A4:
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r2, r6, #0x02
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r4, r6, #0x1
	ldrh r1, [r5, #0x02]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r4, r4, #0x02
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r6, #0x2
	ldrh r1, [r5, #0x04]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r4, r4, #0x02
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r6, #0x3
	ldrh r1, [r5, #0x06]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r4, r4, #0x02
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r5, #0x08
	adds r6, #0x04
	cmp r6, #0x0A
	ble _080295A4
	ldr r1, _08029618 @ =0x03000C78
	ldr r0, _08029620 @ =0x0800063C
	str r0, [r1, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08029618: .4byte 0x03000C78
_0802961C: .4byte 0x0839F5CC
_08029620: .4byte 0x0800063C
	thumb_func_start sub_8029624
sub_8029624:
	push {r4, r5, r6, lr}
	ldr r1, [r0, #0x1C]
	mov r12, r1
	movs r3, #0x97
	lsls r3, r3, #0x02
	add r3, r12
	movs r6, #0x20
	ldr r1, _080296CC @ =0x0000027E
	adds r4, r0, r1
	adds r1, #0x02
	adds r5, r0, r1
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08029658
	ldrh r0, [r3, #0x04]
	ldrh r1, [r4, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldrh r0, [r3, #0x06]
	ldrh r1, [r5, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x02]
_08029658:
	movs r3, #0x99
	lsls r3, r3, #0x02
	add r3, r12
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802967C
	ldrh r0, [r3, #0x04]
	ldrh r1, [r4, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldrh r0, [r3, #0x06]
	ldrh r1, [r5, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x02]
_0802967C:
	movs r3, #0x9B
	lsls r3, r3, #0x02
	add r3, r12
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080296A0
	ldrh r0, [r3, #0x04]
	ldrh r1, [r4, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldrh r0, [r3, #0x06]
	ldrh r1, [r5, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x02]
_080296A0:
	movs r3, #0x9D
	lsls r3, r3, #0x02
	add r3, r12
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080296C4
	ldrh r0, [r3, #0x04]
	ldrh r1, [r4, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldrh r0, [r3, #0x06]
	ldrh r1, [r5, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x02]
_080296C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080296CC: .4byte 0x0000027E
	thumb_func_start sub_80296D0
sub_80296D0:
	push {r4, r5, lr}
	ldr r4, [r0, #0x1C]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r5, #0x20
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080296EE
	adds r0, r2, #0x0
	bl sub_8020D40
_080296EE:
	movs r1, #0x99
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08029706
	adds r0, r2, #0x0
	bl sub_8020D40
_08029706:
	movs r1, #0x9B
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802971E
	adds r0, r2, #0x0
	bl sub_8020D40
_0802971E:
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08029736
	adds r0, r2, #0x0
	bl sub_8020D40
_08029736:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_802973C
sub_802973C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	ldr r5, [sp, #0x02C]
	add r4, sp, #0x030
	ldrb r4, [r4, #0x00]
	ldr r6, [r1, #0x0C]
	ldr r7, [r1, #0x10]
	mov r8, r7
	ldr r7, [r1, #0x14]
	mov r9, r7
	lsls r5, r5, #0x08
	movs r7, #0xF0
	lsls r7, r7, #0x04
	adds r5, r5, r7
	ldr r1, [r1, #0x18]
	adds r1, r1, r5
	str r1, [sp, #0x000]
	str r2, [sp, #0x004]
	add r1, sp, #0x008
	strb r3, [r1, #0x00]
	add r1, sp, #0x00C
	strb r4, [r1, #0x00]
	adds r1, r6, #0x0
	mov r2, r8
	mov r3, r9
	bl sub_80262CC
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8029788
sub_8029788:
	push {r4, lr}
	adds r1, r0, #0x0
	adds r4, r1, #0x0
	adds r4, #0xFC
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x15
	asrs r0, r0, #0x1C
	cmp r0, #0x00
	bne _080297A6
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	bl sub_805C6B8
_080297A6:
	ldrh r0, [r4, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x03
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80297B8
sub_80297B8:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x15
	asrs r0, r0, #0x1C
	cmp r0, #0x00
	bne _080297D4
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	bl sub_805BFF0
_080297D4:
	pop {r0}
	bx r0
	thumb_func_start sub_80297D8
sub_80297D8:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r1, #0x00
	bne _080297F8
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_805BED8
	adds r2, r4, #0x0
	adds r2, #0xFC
	ldrh r1, [r2, #0x00]
	ldr r0, _08029800 @ =0xFFFFF87F
	ands r0, r1
	strh r0, [r2, #0x00]
_080297F8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08029800: .4byte 0xFFFFF87F
	thumb_func_start sub_8029804
sub_8029804:
	adds r3, r0, #0x0
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldr r0, _0802982C @ =0x00000351
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x00]
	bx lr
_0802982C: .4byte 0x00000351
	thumb_func_start sub_8029830
sub_8029830:
	push {r4, lr}
	adds r3, r0, #0x0
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r2, r3, r4
	ldr r0, [r2, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r1, r3, r4
	ldrh r1, [r1, #0x00]
	ldr r3, _08029870 @ =0x0000023E
	adds r0, r0, r3
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	ldr r4, _08029874 @ =0x00000351
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08029870: .4byte 0x0000023E
_08029874: .4byte 0x00000351
	thumb_func_start sub_8029878
sub_8029878:
	push {lr}
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x50
	bl play_sfx_80195B4
	pop {r0}
	bx r0
	thumb_func_start sub_8029888
sub_8029888:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, _080298A8 @ =0x03000D80
	lsls r1, r1, #0x02
	adds r2, r1, r0
	ldr r0, [r2, #0x00]
	cmp r0, r3
	beq _080298A4
	ldr r0, _080298AC @ =0x04000208
	movs r1, #0x00
	strh r1, [r0, #0x00]
	str r3, [r2, #0x00]
	movs r1, #0x01
	strh r1, [r0, #0x00]
_080298A4:
	pop {r0}
	bx r0
_080298A8: .4byte 0x03000D80
_080298AC: .4byte 0x04000208
	thumb_func_start sub_80298B0
sub_80298B0:
	push {r4, r5, r6, lr}
	ldr r6, _08029908 @ =0x08029911
	ldr r5, _0802990C @ =0x03000D80
	movs r4, #0x00
	adds r2, r5, #0x4
	subs r1, r5, #0x1
	subs r3, r1, r2
	movs r0, #0x0F
	ands r3, r0
	cmp r2, r1
	ble _080298DE
	cmp r3, #0x00
	beq _080298E6
	cmp r3, #0x0C
	bge _080298DE
	cmp r3, #0x08
	bge _080298DA
	cmp r3, #0x03
	ble _080298E6
	str r4, [r5, #0x04]
	adds r2, r5, #0x0
_080298DA:
	str r4, [r2, #0x00]
	subs r2, #0x04
_080298DE:
	str r4, [r2, #0x00]
	subs r2, #0x04
	cmp r2, r5
	blt _080298FA
_080298E6:
	str r4, [r2, #0x00]
	subs r0, r2, #0x4
	str r4, [r0, #0x00]
	subs r0, #0x04
	str r4, [r0, #0x00]
	subs r0, #0x04
	str r4, [r0, #0x00]
	subs r2, #0x10
	cmp r2, r5
	bge _080298E6
_080298FA:
	movs r0, #0x02
	adds r1, r6, #0x0
	bl runtime_install_interrupt_callback
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08029908: .4byte sub_8029910
_0802990C: .4byte 0x03000D80
	thumb_func_start sub_8029910
sub_8029910:
	push {r4, lr}
	ldr r4, _08029930 @ =0x03000D80
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0802991E
	bl _call_via_r0
_0802991E:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _08029928
	bl _call_via_r0
_08029928:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08029930: .4byte 0x03000D80
	thumb_func_start sub_8029934
sub_8029934:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	ldr r0, _080299F8 @ =0x03001034
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	movs r2, #0x30
	bl _call_via_r3
	movs r7, #0x00
	movs r5, #0xFF
	ldr r6, _080299FC @ =0x0839F900
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r4, r0
	movs r1, #0x00
	mov r8, r1
	movs r2, #0x86
	lsls r2, r2, #0x02
	adds r2, r2, r4
	mov r9, r2
	movs r0, #0x80
	negs r0, r0
	mov r10, r0
	movs r1, #0x01
	mov r12, r1
_08029974:
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strb r7, [r0, #0x00]
	ldr r0, [r6, #0x00]
	str r0, [r3, #0x00]
	mov r1, r9
	add r1, r8
	ldr r0, [r6, #0x04]
	str r0, [r1, #0x00]
	movs r1, #0x87
	lsls r1, r1, #0x02
	adds r0, r4, r1
	strb r7, [r0, #0x00]
	adds r2, #0x11
	adds r0, r4, r2
	strb r7, [r0, #0x00]
	ldr r0, _08029A00 @ =0x0000021E
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	ldr r1, _08029A04 @ =0x0000020E
	adds r0, r4, r1
	strb r7, [r0, #0x00]
	ldr r0, _08029A08 @ =0x00000222
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	mov r0, r10
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r6, #0x08
	adds r3, #0x18
	adds r4, #0x18
	movs r1, #0x18
	add r8, r1
	movs r2, #0x01
	negs r2, r2
	add r12, r2
	mov r0, r12
	cmp r0, #0x00
	bge _08029974
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080299F8: .4byte 0x03001034
_080299FC: .4byte 0x0839F900
_08029A00: .4byte 0x0000021E
_08029A04: .4byte 0x0000020E
_08029A08: .4byte 0x00000222
	thumb_func_start sub_8029A0C
sub_8029A0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	mov r8, r2
	ldr r0, _08029A94 @ =0x00000246
	adds r3, r7, r0
	movs r0, #0x07
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r3, r7, r1
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x1B
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	subs r0, #0x03
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r6, _08029A98 @ =0x0000020B
	adds r2, r7, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08029A9C @ =0x00000209
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r3, r7, r1
	ldr r1, [r3, #0x00]
	ldr r2, _08029AA0 @ =0x00000352
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08029AA4
	adds r5, r1, #0x0
	subs r6, #0x07
	adds r0, r7, r6
	ldr r6, [r0, #0x00]
	b _08029AAE
	.byte 0x00, 0x00
_08029A94: .4byte 0x00000246
_08029A98: .4byte 0x0000020B
_08029A9C: .4byte 0x00000209
_08029AA0: .4byte 0x00000352
_08029AA4:
	adds r6, r1, #0x0
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
_08029AAE:
	ldr r0, _08029AD4 @ =0x0000026B
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	bl sub_803C610
	cmp r4, #0x04
	bls _08029AC8
	bl _0802A412
_08029AC8:
	lsls r0, r4, #0x02
	ldr r1, _08029AD8 @ =0x08029ADC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08029AD4: .4byte 0x0000026B
_08029AD8: .4byte _08029ADC
_08029ADC:
	.4byte _08029AF0
	.4byte _08029EB0
	.4byte _0802A028
	.4byte _0802A128
	.4byte _0802A2BC
_08029AF0:
	mov r1, r8
	cmp r1, #0x00
	beq _08029B50
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r4, r7, r2
	ldr r1, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_802DC0C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08029B50
	ldr r2, [r4, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x02
	adds r1, r7, r6
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x0C]
	str r0, [r2, #0x0C]
	ldr r2, [r4, #0x00]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r2, #0x10]
	ldr r2, [r4, #0x00]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x14]
	str r0, [r2, #0x14]
	ldr r2, [r4, #0x00]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x18]
	str r0, [r2, #0x18]
	ldr r2, [r4, #0x00]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x34]
	str r0, [r2, #0x34]
	ldr r2, [r4, #0x00]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [r2, #0x38]
	ldr r2, [r4, #0x00]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x3C]
	str r0, [r2, #0x3C]
	ldr r2, [r4, #0x00]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x40]
	str r0, [r2, #0x40]
_08029B50:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _08029B72
	movs r0, #0x00
	strb r0, [r1, #0x01]
	b _08029B76
_08029B72:
	movs r0, #0x00
	strb r0, [r1, #0x00]
_08029B76:
	movs r6, #0x80
	lsls r6, r6, #0x02
	adds r4, r7, r6
	ldr r1, [r4, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r2, r7, r5
	ldrh r3, [r2, #0x00]
	adds r6, #0x40
	adds r0, r1, r6
	movs r6, #0x00
	mov r9, r6
	strh r3, [r0, #0x00]
	ldrh r3, [r2, #0x00]
	ldr r6, _08029CFC @ =0x0000023E
	adds r0, r1, r6
	strh r3, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x02
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r6, #0xD6
	lsls r6, r6, #0x02
	adds r1, r1, r6
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	mov r10, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	ldr r2, _08029D00 @ =0x00000351
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r6, #0x41
	negs r6, r6
	adds r0, r6, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x00]
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	subs r3, #0x03
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	mov r8, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	ldr r1, _08029D04 @ =0x00001002
	cmp r0, #0x00
	bne _08029C12
	subs r1, #0x01
_08029C12:
	adds r0, r2, #0x0
	bl sub_8049000
	ldr r0, [r4, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	strh r5, [r0, #0x06]
	strh r5, [r0, #0x04]
	ldr r1, [r4, #0x00]
	ldr r2, _08029D08 @ =0x00000212
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	adds r0, r6, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, _08029D0C @ =0x0000023B
	adds r0, r0, r1
	mov r2, r9
	strb r2, [r0, #0x00]
	ldr r1, [r4, #0x00]
	ldr r3, _08029D10 @ =0x0000035B
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	mov r0, r10
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x11
	negs r0, r0
	mov r12, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	adds r0, r6, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	ldr r2, _08029D00 @ =0x00000351
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r6, #0x81
	lsls r6, r6, #0x02
	adds r5, r7, r6
	ldr r1, [r5, #0x00]
	subs r3, #0x01
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r6, #0xDA
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x00]
	ldrb r3, [r2, #0x12]
	movs r1, #0x12
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08029CCA
	strb r3, [r2, #0x10]
	ldr r0, [r4, #0x00]
	adds r0, r0, r6
	ldr r1, [r0, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x12]
_08029CCA:
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08029D14 @ =0x0000020B
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	mov r0, r12
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _08029D18
	mov r2, r9
	strb r2, [r1, #0x01]
	b _08029D1C
_08029CFC: .4byte 0x0000023E
_08029D00: .4byte 0x00000351
_08029D04: .4byte 0x00001002
_08029D08: .4byte 0x00000212
_08029D0C: .4byte 0x0000023B
_08029D10: .4byte 0x0000035B
_08029D14: .4byte 0x0000020B
_08029D18:
	mov r4, r9
	strb r4, [r1, #0x00]
_08029D1C:
	movs r6, #0x81
	lsls r6, r6, #0x02
	adds r4, r7, r6
	ldr r1, [r4, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	ldr r2, _08029DE4 @ =0x00000351
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r5, #0x41
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	ldr r3, _08029DE8 @ =0x0000020D
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	ldr r1, _08029DEC @ =0x00001002
	cmp r0, #0x00
	bne _08029D72
	subs r1, #0x01
_08029D72:
	adds r0, r2, #0x0
	bl sub_8049000
	ldr r0, [r4, #0x00]
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r1, [r0, #0x00]
	movs r3, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	strh r0, [r1, #0x04]
	ldr r1, [r4, #0x00]
	ldr r0, _08029DF0 @ =0x00000212
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	adds r0, r5, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, _08029DF4 @ =0x0000023B
	adds r0, r0, r1
	strb r3, [r0, #0x00]
	ldr r1, [r4, #0x00]
	ldr r2, _08029DF8 @ =0x0000035A
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	subs r6, #0x8C
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08029DFC
	ldr r0, [r4, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r3, [r2, #0x12]
	movs r1, #0x12
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08029E20
	strb r3, [r2, #0x10]
	ldr r0, [r4, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	b _08029E1A
_08029DE4: .4byte 0x00000351
_08029DE8: .4byte 0x0000020D
_08029DEC: .4byte 0x00001002
_08029DF0: .4byte 0x00000212
_08029DF4: .4byte 0x0000023B
_08029DF8: .4byte 0x0000035A
_08029DFC:
	ldr r0, [r4, #0x00]
	movs r6, #0xDA
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x00]
	ldrb r3, [r2, #0x12]
	movs r1, #0x12
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08029E20
	strb r3, [r2, #0x14]
	ldr r0, [r4, #0x00]
	adds r0, r0, r6
_08029E1A:
	ldr r1, [r0, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x12]
_08029E20:
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r1, [r4, #0x00]
	ldr r3, _08029EA8 @ =0x0000035B
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	ldr r2, _08029EAC @ =0x00000351
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r6, #0x82
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08029E80
	b _0802A412
_08029E80:
	ldr r1, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrh r3, [r2, #0x00]
	movs r4, #0x90
	lsls r4, r4, #0x02
	adds r0, r1, r4
	strh r3, [r0, #0x00]
	ldrh r3, [r2, #0x00]
	adds r6, #0x36
	adds r0, r1, r6
	strh r3, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x02
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	b _0802A412
	.byte 0x00, 0x00
_08029EA8: .4byte 0x0000035B
_08029EAC: .4byte 0x00000351
_08029EB0:
	ldr r4, _08029EF8 @ =0x0000035A
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08029EC4
	adds r0, r5, #0x0
	bl sub_80492DC
_08029EC4:
	ldr r1, _08029EFC @ =0x00001004
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0C
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _08029F00
	movs r0, #0x05
	strb r0, [r1, #0x01]
	b _08029F04
	.byte 0x00, 0x00
_08029EF8: .4byte 0x0000035A
_08029EFC: .4byte 0x00001004
_08029F00:
	movs r0, #0x05
	strb r0, [r1, #0x00]
_08029F04:
	adds r4, r7, #0x0
	adds r4, #0xFB
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x80
	lsls r1, r1, #0x01
	asrs r1, r0
	movs r2, #0x90
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	subs r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r2, #0x22
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r0, _08029FB8 @ =0x0000035B
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08029FBC @ =0x0000102E
	adds r0, r5, #0x0
	bl sub_8049000
	ldr r1, _08029FC0 @ =0x0000026B
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0xE0
	ands r0, r1
	mov r8, r4
	cmp r0, #0x00
	bne _08029F5C
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	strb r0, [r2, #0x00]
_08029F5C:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08029F84
	movs r4, #0xB6
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x1F
	ands r0, r1
	cmp r0, #0x1F
	bne _08029F84
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_802E4C8
_08029F84:
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldr r5, [r2, #0x00]
	movs r1, #0x12
	ldsb r1, [r5, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08029F9C
	ldrb r0, [r5, #0x10]
	strb r0, [r5, #0x12]
_08029F9C:
	ldr r1, [r2, #0x00]
	movs r0, #0x00
	strb r0, [r1, #0x10]
	adds r0, r6, r3
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _08029FC4
	movs r0, #0x05
	strb r0, [r1, #0x01]
	b _08029FC8
_08029FB8: .4byte 0x0000035B
_08029FBC: .4byte 0x0000102E
_08029FC0: .4byte 0x0000026B
_08029FC4:
	movs r0, #0x05
	strb r0, [r1, #0x00]
_08029FC8:
	ldr r0, _0802A01C @ =0x0000035B
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0802A020 @ =0x00000351
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08029FFA
	b _0802A412
_08029FFA:
	mov r4, r8
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x80
	lsls r1, r1, #0x01
	asrs r1, r0
	adds r2, #0x38
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	ldr r4, _0802A024 @ =0x0000023E
	adds r0, r6, r4
	strh r1, [r0, #0x00]
	adds r2, #0x20
	adds r0, r6, r2
	b _0802A410
	.byte 0x00, 0x00
_0802A01C: .4byte 0x0000035B
_0802A020: .4byte 0x00000351
_0802A024: .4byte 0x0000023E
_0802A028:
	ldr r4, _0802A058 @ =0x0000035A
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0802A03C
	adds r0, r5, #0x0
	bl sub_80492DC
_0802A03C:
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0802A05C
	movs r0, #0x0B
	strb r0, [r1, #0x01]
	b _0802A060
	.byte 0x00, 0x00
_0802A058: .4byte 0x0000035A
_0802A05C:
	movs r0, #0x0B
	strb r0, [r1, #0x00]
_0802A060:
	adds r4, r7, #0x0
	adds r4, #0xFB
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x80
	lsls r1, r1, #0x02
	asrs r1, r0
	movs r2, #0x90
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	subs r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r2, #0x22
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r0, _0802A0BC @ =0x0000035B
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0802A0C0 @ =0x00001028
	adds r0, r5, #0x0
	bl sub_8049000
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r4
	cmp r0, #0x01
	bhi _0802A0C4
	movs r0, #0x0B
	strb r0, [r1, #0x01]
	b _0802A0C8
	.byte 0x00, 0x00
_0802A0BC: .4byte 0x0000035B
_0802A0C0: .4byte 0x00001028
_0802A0C4:
	movs r0, #0x0B
	strb r0, [r1, #0x00]
_0802A0C8:
	ldr r4, _0802A11C @ =0x0000035B
	adds r2, r6, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0802A120 @ =0x00000351
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802A0FA
	b _0802A412
_0802A0FA:
	mov r2, r8
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x80
	lsls r1, r1, #0x02
	asrs r1, r0
	movs r4, #0x90
	lsls r4, r4, #0x02
	adds r0, r6, r4
	strh r1, [r0, #0x00]
	ldr r2, _0802A124 @ =0x0000023E
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r4, #0x20
	adds r0, r6, r4
	b _0802A410
_0802A11C: .4byte 0x0000035B
_0802A120: .4byte 0x00000351
_0802A124: .4byte 0x0000023E
_0802A128:
	ldr r1, _0802A158 @ =0x0000035A
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0802A13C
	adds r0, r6, #0x0
	bl sub_80492DC
_0802A13C:
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0802A15C
	movs r0, #0x06
	strb r0, [r1, #0x01]
	b _0802A160
	.byte 0x00, 0x00
_0802A158: .4byte 0x0000035A
_0802A15C:
	movs r0, #0x06
	strb r0, [r1, #0x00]
_0802A160:
	adds r4, r7, #0x0
	adds r4, #0xFB
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x80
	lsls r1, r1, #0x01
	asrs r1, r0
	movs r2, #0x90
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	subs r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r2, #0x22
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	ldr r1, _0802A210 @ =0x00001043
	adds r0, r6, #0x0
	bl sub_8049000
	ldr r0, _0802A214 @ =0x0000035B
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0802A218 @ =0x0000020D
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0802A21C @ =0x00000352
	adds r3, r6, r1
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0802A220 @ =0x00000351
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	mov r8, r4
	cmp r0, #0x00
	bne _0802A1F4
	ldrb r1, [r3, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0802A224
_0802A1F4:
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	movs r1, #0x12
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0802A242
	ldrb r0, [r2, #0x10]
	strb r0, [r2, #0x12]
	b _0802A242
	.byte 0x00, 0x00
_0802A210: .4byte 0x00001043
_0802A214: .4byte 0x0000035B
_0802A218: .4byte 0x0000020D
_0802A21C: .4byte 0x00000352
_0802A220: .4byte 0x00000351
_0802A224:
	movs r4, #0xDA
	lsls r4, r4, #0x02
	adds r3, r6, r4
	ldr r2, [r3, #0x00]
	ldrb r4, [r2, #0x14]
	movs r1, #0x14
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0802A23C
	strb r4, [r2, #0x12]
_0802A23C:
	ldr r1, [r3, #0x00]
	ldrb r0, [r1, #0x10]
	strb r0, [r1, #0x14]
_0802A242:
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	movs r0, #0x00
	strb r0, [r2, #0x10]
	adds r1, r5, r1
	ldr r1, [r1, #0x00]
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0802A264
	movs r0, #0x06
	strb r0, [r1, #0x01]
	b _0802A268
_0802A264:
	movs r0, #0x06
	strb r0, [r1, #0x00]
_0802A268:
	ldr r6, _0802A2B4 @ =0x0000035B
	adds r2, r5, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802A28E
	b _0802A412
_0802A28E:
	mov r2, r8
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x80
	lsls r1, r1, #0x01
	asrs r1, r0
	movs r4, #0x90
	lsls r4, r4, #0x02
	adds r0, r5, r4
	strh r1, [r0, #0x00]
	ldr r6, _0802A2B8 @ =0x0000023E
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x02
	adds r0, r5, r2
	b _0802A410
	.byte 0x00, 0x00
_0802A2B4: .4byte 0x0000035B
_0802A2B8: .4byte 0x0000023E
_0802A2BC:
	ldr r4, _0802A2EC @ =0x0000035A
	adds r0, r6, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0802A2D0
	adds r0, r6, #0x0
	bl sub_80492DC
_0802A2D0:
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0802A2F0
	movs r0, #0x09
	strb r0, [r1, #0x01]
	b _0802A2F4
	.byte 0x00, 0x00
_0802A2EC: .4byte 0x0000035A
_0802A2F0:
	movs r0, #0x09
	strb r0, [r1, #0x00]
_0802A2F4:
	adds r4, r7, #0x0
	adds r4, #0xFB
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x80
	lsls r1, r1, #0x01
	asrs r1, r0
	movs r2, #0x90
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	subs r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r2, #0x22
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	ldr r0, _0802A378 @ =0x0000035B
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0802A37C @ =0x00000351
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0802A380 @ =0x00001046
	adds r0, r6, #0x0
	bl sub_8049000
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	mov r8, r4
	cmp r0, #0x00
	bne _0802A35E
	ldr r4, _0802A384 @ =0x00000352
	adds r0, r6, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0802A388
_0802A35E:
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	movs r1, #0x12
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0802A3A6
	ldrb r0, [r2, #0x10]
	strb r0, [r2, #0x12]
	b _0802A3A6
_0802A378: .4byte 0x0000035B
_0802A37C: .4byte 0x00000351
_0802A380: .4byte 0x00001046
_0802A384: .4byte 0x00000352
_0802A388:
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r3, r6, r2
	ldr r2, [r3, #0x00]
	ldrb r4, [r2, #0x14]
	movs r1, #0x14
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0802A3A0
	strb r4, [r2, #0x12]
_0802A3A0:
	ldr r1, [r3, #0x00]
	ldrb r0, [r1, #0x10]
	strb r0, [r1, #0x14]
_0802A3A6:
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	movs r0, #0x00
	strb r0, [r2, #0x10]
	adds r1, r5, r1
	ldr r1, [r1, #0x00]
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0802A3C8
	movs r0, #0x09
	strb r0, [r1, #0x01]
	b _0802A3CC
_0802A3C8:
	movs r0, #0x09
	strb r0, [r1, #0x00]
_0802A3CC:
	ldr r4, _0802A4DC @ =0x0000035B
	adds r2, r5, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0x82
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802A412
	mov r1, r8
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x80
	lsls r1, r1, #0x01
	asrs r1, r0
	movs r2, #0x90
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r4, _0802A4E0 @ =0x0000023E
	adds r0, r5, r4
	strh r1, [r0, #0x00]
	adds r6, #0x58
	adds r0, r5, r6
_0802A410:
	strh r1, [r0, #0x00]
_0802A412:
	ldr r0, _0802A4E4 @ =0x0000020A
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r0, [r1, #0x00]
	movs r6, #0x00
	strh r6, [r0, #0x04]
	ldr r1, [r1, #0x00]
	movs r5, #0x85
	lsls r5, r5, #0x02
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r4, #0x08
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	movs r3, #0x03
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802A464
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	ldsh r0, [r0, r1]
	cmp r0, #0x0C
	ble _0802A47C
_0802A464:
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r0, [r1, #0x00]
	strh r6, [r0, #0x04]
	ldr r1, [r1, #0x00]
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	adds r0, r4, #0x0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x00]
_0802A47C:
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r6, r7, r4
	ldr r0, [r6, #0x00]
	movs r4, #0xDB
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8020D40
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r5, r7, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8020D40
	ldr r1, [r6, #0x00]
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	ldr r1, [r5, #0x00]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r2, [r0, #0x00]
	lsls r2, r2, #0x1B
	lsrs r2, r2, #0x1F
	adds r0, r7, #0x0
	movs r3, #0x00
	bl sub_802DDB4
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_802DF80
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802A4DC: .4byte 0x0000035B
_0802A4E0: .4byte 0x0000023E
_0802A4E4: .4byte 0x0000020A

	.section .rodata
	.align 2, 0

	.byte 0x50, 0x41, 0x4E, 0x4D, 0x00, 0x00, 0x00, 0x00, 0x53, 0x5F, 0x4D, 0x50, 0x00, 0x00, 0x00, 0x00
	.byte 0x53, 0x5F, 0x46, 0x58, 0x00, 0x00, 0x00, 0x00, 0x43, 0x47, 0x44, 0x57, 0x00, 0x00, 0x00, 0x00
	.byte 0x46, 0x4D, 0x44, 0x52, 0x00, 0x00, 0x00, 0x00, 0x46, 0x4D, 0x50, 0x52, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x0B, 0x01, 0xFF, 0x35, 0xFF, 0x41, 0xFF, 0x25, 0x00, 0x00, 0x00, 0x46, 0x50, 0x43, 0x00
	.byte 0x46, 0x43, 0x48, 0x52, 0x00, 0x00, 0x00, 0x00, 0x46, 0x42, 0x52, 0x44, 0x00, 0x00, 0x00, 0x00
	.byte 0x46, 0x4D, 0x4F, 0x4E, 0x00, 0x00, 0x00, 0x00, 0x46, 0x42, 0x52, 0x4C, 0x00, 0x00, 0x00, 0x00
	.byte 0x46, 0x52, 0x43, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x46, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.byte 0x46, 0x42, 0x4C, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x46, 0x50, 0x53, 0x42, 0x00, 0x00, 0x00, 0x00
	.byte 0x53, 0x42, 0x4C, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x57, 0x49, 0x50, 0x45, 0x00, 0x00, 0x00, 0x00
	.byte 0x53, 0x49, 0x47, 0x4E, 0x00, 0x00, 0x00, 0x00, 0x42, 0x54, 0x4C, 0x20, 0x00, 0x00, 0x00, 0x00
	.byte 0x4F, 0x56, 0x45, 0x52, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x4F, 0x41, 0x44, 0x00, 0x00, 0x00, 0x00
	.byte 0x45, 0x4E, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00
