	.include "asm/macros.inc"

	.syntax unified

	.section .rodata
	.align 2, 0

	.byte 0x50, 0x41, 0x4E, 0x4D, 0x00, 0x00, 0x00, 0x00, 0x53, 0x5F, 0x4D, 0x50, 0x00, 0x00, 0x00, 0x00
	.byte 0x53, 0x5F, 0x46, 0x58, 0x00, 0x00, 0x00, 0x00, 0x43, 0x47, 0x44, 0x57, 0x00, 0x00, 0x00, 0x00
	.byte 0x46, 0x4D, 0x44, 0x52, 0x00, 0x00, 0x00, 0x00, 0x46, 0x4D, 0x50, 0x52, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x0B, 0x01, 0xFF, 0x35, 0xFF, 0x41, 0xFF, 0x25, 0x00, 0x00, 0x00

	.text

	thumb_func_start update__12FieldManager
update__12FieldManager: @ 08022658
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
	bl make_field_objects_80267C0__12FieldManageri
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
	bl disable__7Process
_08022D72:
	movs r3, #0xC5
	lsls r3, r3, #0x02
	adds r5, r7, r3
	ldr r4, _08022DA8 @ =0x081E25E4
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl __nw__FUliPcUc
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	str r0, [r5, #0x00]
	bl disable__7Process
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
	bl enable__7Process
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
	bl __nw__FUliPcUc
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
	bl __nw__FUliPcUc
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
	bl sub_80264F4__12FieldManagerUs
	movs r0, #0x0A
	strb r0, [r7, #0x00]
	bl _08023DBC
_08022FA2:
	movs r1, #0x93
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r1, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_80265EC__12FieldManager
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
	bl __vn__FUliPcUc
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
	bl __builtin_vec_delete
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
	bl sub_80501EC__12FieldMonster
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
	bl sub_80502C8__12FieldMonster
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
	bl __nw__FUliPcUc
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl __7ProcessUcPc
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
	bl __nw__FUliPcUc
	adds r4, r0, #0x0
	movs r1, #0x05
	adds r2, r5, #0x0
	bl __7ProcessUcPc
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
	bl sub_8049000__20FieldPlayerCharacterUs
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
	bl sub_8049000__20FieldPlayerCharacterUs
	ldr r0, [r6, #0x00]
	ldr r1, _080236D8 @ =0x00001050
	bl sub_8049000__20FieldPlayerCharacterUs
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
	bl land__11FieldObject
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
	bl land__11FieldObject
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
	bl sub_8045A94__11FieldObjectiiiiiUs
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
	bl sub_80461B4__11FieldObjectPP11FieldObject
	ldr r0, [r4, #0x00]
	bl sub_8047B78__11FieldObject
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
	bl sub_8046980__11FieldObject
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
	bl enable__7Process
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	bl enable__7Process
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
	bl enable__7Process
	movs r5, #0xC8
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl enable__7Process
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
	bl enable__7Process
	movs r6, #0xC8
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl enable__7Process
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
