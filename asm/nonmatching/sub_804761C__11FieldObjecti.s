	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804761C__11FieldObjecti
sub_804761C__11FieldObjecti:
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
