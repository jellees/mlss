	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_804FE68
sub_804FE68:
	push {r4, lr}
	adds r2, r0, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804FEB8
	ldr r4, _0804FEC0 @ =0x000002B5
	adds r3, r2, r4
	ldrb r1, [r3, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	bne _0804FEA8
	ldr r1, _0804FEC4 @ =0x00000242
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
_0804FEA8:
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0804FEB8
	adds r0, r2, #0x0
	bl sub_80402C4
_0804FEB8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0804FEC0: .4byte 0x000002B5
_0804FEC4: .4byte 0x00000242
	thumb_func_start __20FieldObjectSubclass1ii
__20FieldObjectSubclass1ii:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	bl __11FieldObjectii
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, _0804FFBC @ =gVTable_8CDBF28
	str r0, [r1, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r7, #0x02
	negs r7, r7
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0x0
	add r1, sp, #0x004
	adds r2, r5, #0x0
	bl sub_80FB6D4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0804FF2C
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r4, r5, r2
	movs r0, #0xD2
	lsls r0, r0, #0x02
	ldr r2, _0804FFC0 @ =0x081E26BC
	movs r1, #0x01
	movs r3, #0x01
	bl __nw__FUliPcUc
	movs r1, #0x01
	negs r1, r1
	add r2, sp, #0x004
	ldrb r3, [r2, #0x00]
	str r5, [sp, #0x000]
	adds r2, r6, #0x0
	bl sub_80504BC
	str r0, [r4, #0x00]
_0804FF2C:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x07
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0804FFC4 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x8B
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r2, [r1, #0x00]
	lsls r2, r2, #0x0A
	lsrs r2, r2, #0x14
	movs r1, #0x96
	lsls r1, r1, #0x04
	adds r2, r2, r1
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0804FFB0
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0804FFC8 @ =0x0000020F
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r4, #0x03
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r3, r5, r2
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _0804FFB0
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r3, #0x00]
	ldr r2, _0804FFC8 @ =0x0000020F
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	adds r0, r4, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
_0804FFB0:
	adds r0, r5, #0x0
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0804FFBC: .4byte gVTable_8CDBF28
_0804FFC0: .4byte 0x081E26BC
_0804FFC4: .4byte 0x03000FC0
_0804FFC8: .4byte 0x0000020F
	thumb_func_start sub_804FFCC
sub_804FFCC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _0805006C @ =0x0000033E
	adds r4, r5, r0
	ldrb r0, [r4, #0x00]
	movs r1, #0x04
	negs r1, r1
	ands r1, r0
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r4, #0x00]
	ldr r0, _08050070 @ =0x0000020D
	adds r3, r5, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r0, r2
	lsls r0, r0, #0x02
	movs r2, #0x05
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r3, r5, r1
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r5, #0x02]
	ldr r2, _08050074 @ =0x0000033F
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	bne _08050042
	movs r0, #0x08
	orrs r2, r0
	strb r2, [r3, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x19
	movs r1, #0x71
	negs r1, r1
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
_08050042:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r3, #0x01
	negs r3, r3
	adds r0, r5, #0x0
	movs r1, #0x40
	movs r2, #0x20
	bl sub_80400B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805006C: .4byte 0x0000033E
_08050070: .4byte 0x0000020D
_08050074: .4byte 0x0000033F
	thumb_func_start sub_8050078
sub_8050078:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r1, _080500A8 @ =0x02000001
	ands r0, r1
	cmp r0, r1
	beq _0805008E
	b _080501E0
_0805008E:
	ldr r0, _080500AC @ =0x0000033E
	adds r3, r5, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1E
	lsrs r2, r0, #0x1E
	cmp r2, #0x02
	beq _080500E0
	cmp r2, #0x02
	bhi _080500B0
	cmp r2, #0x01
	beq _080500B6
	b _080501E0
	.byte 0x00, 0x00
_080500A8: .4byte 0x02000001
_080500AC: .4byte 0x0000033E
_080500B0:
	cmp r2, #0x03
	beq _08050100
	b _080501E0
_080500B6:
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _080500D8
	movs r1, #0x00
	movs r0, #0x80
	strb r0, [r5, #0x02]
	str r1, [r5, #0x18]
	movs r0, #0xD0
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r0, #0x03
	strb r0, [r1, #0x00]
	ldrb r1, [r3, #0x00]
	subs r0, #0x07
	ands r0, r1
	movs r1, #0x02
	b _080500FA
_080500D8:
	ldrb r0, [r5, #0x02]
	adds r0, #0x10
	strb r0, [r5, #0x02]
	b _080501E0
_080500E0:
	movs r0, #0xD0
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080501E0
	movs r0, #0x3C
	strb r0, [r1, #0x00]
	ldrb r0, [r3, #0x00]
	movs r1, #0x03
_080500FA:
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _080501E0
_08050100:
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	subs r1, #0x01
	strb r1, [r0, #0x00]
	lsls r0, r1, #0x18
	asrs r6, r0, #0x18
	cmp r6, #0x00
	bne _080501A4
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	ldr r0, _08050158 @ =0x0000020D
	adds r3, r5, r0
	movs r4, #0x01
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, _0805015C @ =0x0000033F
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	strb r0, [r5, #0x02]
	ldr r1, _08050160 @ =0x0000023A
	adds r0, r5, r1
	strb r6, [r0, #0x00]
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	adds r2, r0, #0x0
	orrs r2, r4
	strb r2, [r1, #0x00]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _08050168
	lsls r1, r2, #0x19
	ldr r0, _08050164 @ =0x0000033D
	b _0805016E
_08050158: .4byte 0x0000020D
_0805015C: .4byte 0x0000033F
_08050160: .4byte 0x0000023A
_08050164: .4byte 0x0000033D
_08050168:
	lsls r1, r2, #0x19
	movs r0, #0x85
	lsls r0, r0, #0x02
_0805016E:
	adds r3, r5, r0
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080501A0 @ =0x0000033E
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _080501E0
	.byte 0x00, 0x00
_080501A0: .4byte 0x0000033E
_080501A4:
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, #0x01
	beq _080501CC
	cmp r0, #0x01
	bgt _080501B6
	cmp r0, #0x00
	beq _080501C0
	b _080501E0
_080501B6:
	cmp r0, #0x02
	beq _080501C0
	cmp r0, #0x03
	beq _080501D8
	b _080501E0
_080501C0:
	ldr r0, _080501C8 @ =0x0000023A
	adds r1, r5, r0
	movs r0, #0x00
	b _080501DE
_080501C8: .4byte 0x0000023A
_080501CC:
	ldr r0, _080501D4 @ =0x0000023A
	adds r1, r5, r0
	movs r0, #0xFF
	b _080501DE
_080501D4: .4byte 0x0000023A
_080501D8:
	ldr r0, _080501E8 @ =0x0000023A
	adds r1, r5, r0
	movs r0, #0x01
_080501DE:
	strb r0, [r1, #0x00]
_080501E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080501E8: .4byte 0x0000023A
	thumb_func_start sub_80501EC
sub_80501EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	movs r0, #0x83
	lsls r0, r0, #0x02
	mov r9, r0
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r3, #0x02
	negs r3, r3
	mov r8, r3
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r7, #0xA5
	lsls r7, r7, #0x02
	adds r0, r4, r7
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x12]
	movs r5, #0x10
	orrs r0, r5
	strb r0, [r1, #0x12]
	movs r6, #0xCE
	lsls r6, r6, #0x02
	adds r0, r4, r6
	ldr r1, [r0, #0x00]
	adds r1, #0x80
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x04]
	movs r1, #0x02
	bl _call_via_r2
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _0805028E
	ldr r1, _080502C0 @ =0x0000020F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0805028E
	add r2, r9
	ldrb r1, [r2, #0x00]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, r0, r7
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x12]
	orrs r0, r5
	strb r0, [r1, #0x12]
	ldr r0, [r3, #0x00]
	adds r1, r0, r6
	ldr r1, [r1, #0x00]
	adds r1, #0x80
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #0x04]
	movs r1, #0x02
	bl _call_via_r2
_0805028E:
	ldr r0, _080502C4 @ =0x03000FC0
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
	movs r3, #0x96
	lsls r3, r3, #0x04
	adds r2, r2, r3
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80E9958
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080502C0: .4byte 0x0000020F
_080502C4: .4byte 0x03000FC0
	thumb_func_start sub_80502C8
sub_80502C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	movs r0, #0x83
	lsls r0, r0, #0x02
	mov r8, r0
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r7, #0x02
	negs r7, r7
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r6, r5, r1
	ldrb r1, [r6, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r6, #0x00]
	ldr r2, _080503B4 @ =0x0000033E
	adds r1, r5, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	ands r0, r2
	cmp r0, #0x00
	beq _08050358
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r4, #0x00
	str r4, [r5, #0x18]
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1D
	ldr r0, _080503B8 @ =0x0000020D
	adds r3, r5, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, _080503BC @ =0x0000033F
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	strb r0, [r5, #0x02]
	ldr r2, _080503C0 @ =0x0000023A
	adds r0, r5, r2
	strb r4, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x19
	ldr r0, _080503C4 @ =0x0000033D
	adds r3, r5, r0
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_08050358:
	movs r4, #0xCE
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r1, [r0, #0x00]
	adds r1, #0x80
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0x04]
	movs r1, #0x01
	bl _call_via_r2
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _080503AA
	ldr r1, _080503C8 @ =0x0000020F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080503AA
	add r2, r8
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r0, r4
	ldr r1, [r1, #0x00]
	adds r1, #0x80
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #0x04]
	movs r1, #0x01
	bl _call_via_r2
_080503AA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080503B4: .4byte 0x0000033E
_080503B8: .4byte 0x0000020D
_080503BC: .4byte 0x0000033F
_080503C0: .4byte 0x0000023A
_080503C4: .4byte 0x0000033D
_080503C8: .4byte 0x0000020F
	thumb_func_start sub_80503CC
sub_80503CC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	movs r0, #0xCF
	lsls r0, r0, #0x02
	mov r12, r0
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x00
	beq _080504A8
	ldr r1, _080504B0 @ =0x00000212
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080504A8
	cmp r2, #0x04
	bne _08050498
	movs r7, #0x83
	lsls r7, r7, #0x02
	adds r1, r5, r7
	ldrb r0, [r1, #0x00]
	movs r3, #0x01
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0805045C
	ldr r1, _080504B4 @ =0x0000020F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r6, #0x02
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805045C
	adds r1, r2, r7
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r3, [r4, #0x00]
	mov r1, r12
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805045C
	lsls r1, r1, #0x1B
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r3, r0
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, [r4, #0x00]
	add r1, r12
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_0805045C:
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldrb r1, [r4, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08050490
	ldr r1, _080504B8 @ =0x0000033D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r5, r0
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r4, #0x00]
_08050490:
	ldrb r0, [r4, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x00]
_08050498:
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080504A8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080504B0: .4byte 0x00000212
_080504B4: .4byte 0x0000020F
_080504B8: .4byte 0x0000033D
	thumb_func_start sub_80504BC
sub_80504BC:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r3, #0x0
	ldr r6, [sp, #0x010]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl __11FieldObjectii
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, _08050510 @ =gVTable_8CDBFC8
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_80FB448
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08050514 @ =0x0000020F
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	str r6, [r0, #0x00]
	adds r0, r5, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08050510: .4byte gVTable_8CDBFC8
_08050514: .4byte 0x0000020F
	thumb_func_start sub_8050518
sub_8050518:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	adds r2, r5, #0x0
	bl sub_8047C68
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _0805054E
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x70
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #0x04]
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl _call_via_r3
_0805054E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8050554
sub_8050554:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8041FFC
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _0805057E
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
_0805057E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_8050584
sub_8050584:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	adds r3, r5, #0x0
	bl sub_8041A2C
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _080505BE
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x60
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r4, [r1, #0x04]
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	adds r3, r5, #0x0
	bl _call_via_r4
_080505BE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80505C4
sub_80505C4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8047CE8
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _080505EE
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x58
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
_080505EE:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80505F4
sub_80505F4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	bl sub_8041368
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _08050626
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x50
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #0x04]
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
_08050626:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_805062C
sub_805062C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80459C0
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _08050656
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x88
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
_08050656:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_805065C
sub_805065C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8040FA0
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _08050686
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x48
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
_08050686:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_805068C
sub_805068C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r7, r3, #0x0
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_8040CF4
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _080506CA
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x40
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r4, [r1, #0x04]
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl _call_via_r4
_080506CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80506D0
sub_80506D0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8047FDC
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _08050708
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08050708
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	movs r2, #0x20
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x24]
	bl _call_via_r1
_08050708:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8050710
sub_8050710:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8040020
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _08050738
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x28
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x2C]
	bl _call_via_r1
_08050738:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8050740
sub_8050740:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8040AE0
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _0805076C
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x34]
	adds r1, r5, #0x0
	bl _call_via_r2
_0805076C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8050774
sub_8050774:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80409F4
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _0805079C
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x18
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x1C]
	bl _call_via_r1
_0805079C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80507A4
sub_80507A4:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	adds r7, r3, #0x0
	bl sub_80403C4
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _080507D8
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x10
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r4, [r1, #0x14]
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	adds r3, r7, #0x0
	bl _call_via_r4
_080507D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80507E0
sub_80507E0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08050848 @ =0x03000FC0
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
	movs r1, #0x96
	lsls r1, r1, #0x04
	adds r2, r2, r1
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9958
	ldr r2, _0805084C @ =0x0000033E
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08050840
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x20
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x24]
	bl _call_via_r1
_08050840:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08050848: .4byte 0x03000FC0
_0805084C: .4byte 0x0000033E
	thumb_func_start sub_8050850
sub_8050850:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, _080508A0 @ =gVTable_8CDBF28
	str r1, [r0, #0x00]
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08050882
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
_08050882:
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, _080508A4 @ =0x08CDBDE8
	str r0, [r1, #0x00]
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _0805089A
	adds r0, r4, #0x0
	bl __builtin_delete
_0805089A:
	pop {r4, r5}
	pop {r0}
	bx r0
_080508A0: .4byte gVTable_8CDBF28
_080508A4: .4byte 0x08CDBDE8

	.data
	.align 2, 0

gVTable_8CDBF28:
	.4byte 0, 0
	.4byte 0, sub_8050850
	.4byte 0, sub_80507A4
	.4byte 0, sub_8050774
	.4byte 0, sub_80506D0
	.4byte 0, sub_8050710
	.4byte 0, sub_8050740
	.4byte 0, sub_8040C50
	.4byte 0, sub_805068C
	.4byte 0, sub_805065C
	.4byte 0, sub_80505F4
	.4byte 0, sub_80505C4
	.4byte 0, sub_8050584
	.4byte 0, sub_8050554
	.4byte 0, sub_8050518
	.4byte 0, sub_8044630
	.4byte 0, sub_8047B98
	.4byte 0, sub_805062C
	.4byte 0, sub_8047858
	.4byte 0, sub_8047804

gVTable_8CDBFC8:
	.4byte 0, 0
	.4byte 0, sub_81DD5D4
	.4byte 0, sub_80403C4
	.4byte 0, sub_80409F4
	.4byte 0, sub_8047FDC
	.4byte 0, sub_8040020
	.4byte 0, sub_8040AE0
	.4byte 0, sub_8040C50
	.4byte 0, sub_8040CF4
	.4byte 0, sub_8040FA0
	.4byte 0, sub_8041368
	.4byte 0, sub_8047CE8
	.4byte 0, sub_8041A2C
	.4byte 0, sub_8041FFC
	.4byte 0, sub_8047C68
	.4byte 0, sub_8044630
	.4byte 0, sub_8047B98
	.4byte 0, sub_80459C0
	.4byte 0, sub_8047858
	.4byte 0, sub_8047804
