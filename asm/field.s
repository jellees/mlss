	.include "asm/macros.inc"

	.syntax unified
	.text

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
	bl __nw__FUliPcUc
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
	bl enable__7Process
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
	bl __nw__FUliPcUc
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
	bl exists__7ProcessP7Process
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
	bl sub_802563C__12FieldManager
	adds r0, r5, #0x0
	bl sub_8025ACC__12FieldManager
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
	bl _._7Process
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
	bl _._7Process
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
	bl disable__7Process
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl disable__7Process
	adds r0, r5, #0x0
	bl disable__7Process
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
	bl disable__7Process
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
	bl disable__7Process
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
	bl disable__7Process
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
	bl disable__7Process
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
	bl __nw__FUliPcUc
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
	bl __nw__FUliPcUc
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
	bl __builtin_delete
	movs r6, #0x00
	ldr r0, [r4, #0x04]
	bl __builtin_delete
	ldr r0, [r4, #0x08]
	bl __builtin_delete
	ldr r0, [r4, #0x0C]
	bl __builtin_delete
	ldr r0, [r4, #0x10]
	bl __builtin_delete
	ldr r0, [r4, #0x14]
	bl __builtin_delete
	ldr r0, [r4, #0x18]
	bl __builtin_delete
	ldr r0, [r4, #0x1C]
	bl __builtin_delete
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
	bl _._7Process
	str r6, [r4, #0x00]
_08027FF0:
	movs r2, #0xC3
	lsls r2, r2, #0x02
	adds r4, r5, r2
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08028004
	movs r1, #0x03
	bl _._7Process
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
	bl disable__7Process
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl disable__7Process
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
	bl disable__7Process
	movs r0, #0x02
	strb r0, [r4, #0x00]
	ldr r4, _080281CC @ =0x081E2684
	movs r0, #0x68
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl __nw__FUliPcUc
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
	bl _._12FieldManager
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
	bl __nw__FUliPcUc
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x00
	bl __8LoadMenuUcPcUs
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
	bl sub_804761C__11FieldObjecti
	mov r0, r8
	movs r1, #0x00
	bl sub_804776C__11FieldObjecti
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
	bl _._12FieldManager
_08028F08:
	ldr r0, _08028F24 @ =0x000004AC
	ldr r4, _08028F28 @ =0x081E2694
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl __nw__FUliPcUc
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
	bl disable__7Process
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
	bl __nw__FUliPcUc
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
	bl disable__7Process
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
	bl __builtin_delete
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	bl __builtin_delete
	adds r0, r4, #0x0
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	bl __builtin_delete
	adds r0, r4, #0x0
	adds r0, #0xB4
	ldr r0, [r0, #0x00]
	bl __builtin_delete
	adds r0, r4, #0x0
	adds r0, #0xB8
	ldr r0, [r0, #0x00]
	bl __builtin_delete
	adds r0, r4, #0x0
	adds r0, #0xBC
	ldr r0, [r0, #0x00]
	bl __builtin_delete
	adds r0, r4, #0x0
	adds r0, #0xC0
	ldr r0, [r0, #0x00]
	bl __builtin_delete
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldr r0, [r0, #0x00]
	bl __builtin_delete
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
	bl sub_80262CC__12FieldManageriiiiibT6
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

	.byte 0x53, 0x42, 0x4C, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x57, 0x49, 0x50, 0x45, 0x00, 0x00, 0x00, 0x00
	.byte 0x53, 0x49, 0x47, 0x4E, 0x00, 0x00, 0x00, 0x00, 0x42, 0x54, 0x4C, 0x20, 0x00, 0x00, 0x00, 0x00
	.byte 0x4F, 0x56, 0x45, 0x52, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x4F, 0x41, 0x44, 0x00, 0x00, 0x00, 0x00
	.byte 0x45, 0x4E, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00
