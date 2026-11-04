	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_80461B4__11FieldObjectPP11FieldObject
sub_80461B4__11FieldObjectPP11FieldObject:
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
