	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start method2__11FieldObjectPUsT1Pv
method2__11FieldObjectPUsT1Pv:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	mov r8, r3
	movs r1, #0xAA
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r4, [r0, #0x00]
	movs r3, #0xAB
	lsls r3, r3, #0x02
	adds r0, r6, r3
	str r2, [r0, #0x00]
	movs r5, #0xCD
	lsls r5, r5, #0x02
	adds r0, r6, r5
	mov r1, r8
	str r1, [r0, #0x00]
	subs r3, #0x14
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0804043C
	movs r5, #0x86
	lsls r5, r5, #0x02
	adds r4, r6, r5
	ldrh r1, [r4, #0x00]
	ldr r2, _08040438 @ =0x00000216
	adds r0, r6, r2
	ldrb r2, [r0, #0x00]
	lsrs r2, r2, #0x01
	ands r2, r3
	subs r3, #0x02
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	adds r5, #0x06
	adds r0, r6, r5
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	movs r0, #0x00
	bl sub_8020DD0
	adds r7, r0, #0x0
	ldrh r1, [r4, #0x00]
	mov r0, r8
	bl sub_81152FC
	movs r2, #0x9B
	lsls r2, r2, #0x02
	b _080404D6
	.byte 0x00, 0x00
_08040438: .4byte 0x00000216
_0804043C:
	ldr r5, _08040498 @ =0x00000222
	adds r1, r6, r5
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080404A0
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r4, r6, r1
	strh r0, [r4, #0x00]
	adds r5, #0x01
	adds r0, r6, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	adds r1, #0x06
	adds r5, r6, r1
	strh r0, [r5, #0x00]
	ldrh r1, [r4, #0x00]
	ldr r2, _0804049C @ =0x00000216
	adds r0, r6, r2
	ldrb r2, [r0, #0x00]
	lsrs r2, r2, #0x01
	ands r2, r3
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	ldrh r0, [r5, #0x00]
	str r0, [sp, #0x008]
	movs r0, #0x00
	bl sub_8020DD0
	adds r7, r0, #0x0
	ldrh r1, [r4, #0x00]
	mov r0, r8
	bl sub_81152FC
	movs r3, #0x9B
	lsls r3, r3, #0x02
	adds r1, r6, r3
	b _080404D8
	.byte 0x00, 0x00
_08040498: .4byte 0x00000222
_0804049C: .4byte 0x00000216
_080404A0:
	ldr r4, _08040574 @ =0x00008006
	ldr r5, _08040578 @ =0x00000216
	adds r0, r6, r5
	ldrb r2, [r0, #0x00]
	lsrs r2, r2, #0x01
	ands r2, r3
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	adds r1, r4, #0x0
	bl sub_8020DD0
	adds r7, r0, #0x0
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r6, r1
	strh r4, [r0, #0x00]
	ldrb r0, [r7, #0x1E]
	lsrs r0, r0, #0x04
	adds r0, #0x01
	lsls r0, r0, #0x0C
	ldrh r1, [r7, #0x1C]
	orrs r0, r1
	ldr r2, _0804057C @ =0x0000021E
_080404D6:
	adds r1, r6, r2
_080404D8:
	strh r0, [r1, #0x00]
	movs r1, #0x00
	movs r3, #0x86
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldrh r2, [r0, #0x00]
	ldr r5, _08040580 @ =0xFFFFEFFF
	adds r0, r2, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _080404F6
	ldr r0, _08040584 @ =0x00001028
	cmp r2, r0
	bne _080404F8
_080404F6:
	movs r1, #0x01
_080404F8:
	ldr r0, _08040578 @ =0x00000216
	adds r4, r6, r0
	lsls r1, r1, #0x07
	ldrb r0, [r4, #0x00]
	movs r2, #0x7F
	mov r8, r2
	ands r2, r0
	orrs r2, r1
	movs r0, #0x41
	negs r0, r0
	ands r2, r0
	strb r2, [r4, #0x00]
	ldr r1, _08040588 @ =0x0839EE60
	ldrb r0, [r7, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1A
	adds r0, r0, r1
	ldrh r1, [r7, #0x16]
	lsls r1, r1, #0x02
	ldr r0, [r0, #0x00]
	adds r3, r0, r1
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x02
	movs r1, #0x0D
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x03
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x04
	movs r2, #0x11
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	movs r5, #0x01
	negs r5, r5
	mov r10, r5
	movs r1, #0xA6
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08040590
	ldr r2, _0804058C @ =0x0000029B
	adds r0, r6, r2
	ldrb r5, [r0, #0x00]
	movs r3, #0xA7
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	mov r10, r0
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1F
	mov r8, r0
	b _080405F2
_08040574: .4byte 0x00008006
_08040578: .4byte 0x00000216
_0804057C: .4byte 0x0000021E
_08040580: .4byte 0xFFFFEFFF
_08040584: .4byte 0x00001028
_08040588: .4byte 0x0839EE60
_0804058C: .4byte 0x0000029B
_08040590:
	ldrb r1, [r3, #0x03]
	movs r0, #0x60
	ands r0, r1
	adds r1, r6, #0x0
	adds r1, #0x55
	cmp r0, #0x00
	beq _080405EC
	ldrb r0, [r1, #0x00]
	cmp r0, #0x07
	bhi _080405EC
	adds r1, r0, #0x0
	adds r3, r6, #0x0
	adds r3, #0x24
	movs r0, #0x07
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x05
	strb r0, [r6, #0x02]
	ldr r2, _080405E8 @ =0x083A05EC
	ldrb r0, [r4, #0x00]
	lsls r1, r0, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x03
	adds r1, r1, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	adds r5, r0, #0x0
	mov r1, r8
	ands r5, r1
	lsrs r0, r0, #0x07
	mov r8, r0
	b _080405F2
_080405E8: .4byte 0x083A05EC
_080405EC:
	ldrb r5, [r1, #0x00]
	movs r2, #0x00
	mov r8, r2
_080405F2:
	movs r4, #0x01
	negs r4, r4
	movs r3, #0x00
	mov r9, r3
	str r3, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl sub_801E150
	cmp r10, r4
	beq _0804061A
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	mov r2, r10
	movs r3, #0x00
	bl sub_801E150
_0804061A:
	ldr r0, [r7, #0x48]
	cmp r0, #0x00
	beq _08040640
	ldr r0, [r0, #0x04]
	bl sub_80198B0
	lsrs r1, r0, #0x05
	ldrh r2, [r7, #0x28]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x17
	cmp r1, r0
	ble _08040640
	ldr r3, _080406E8 @ =0x000001FF
	adds r0, r3, #0x0
	ands r1, r0
	ldr r0, _080406EC @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #0x28]
_08040640:
	movs r4, #0x01
	mov r5, r8
	lsls r2, r5, #0x06
	ldrb r1, [r7, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #0x11]
	movs r0, #0xA6
	lsls r0, r0, #0x02
	adds r3, r6, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080406FC
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1E
	ldrb r2, [r7, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #0x1F]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x02
	movs r2, #0x0D
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #0x1F]
	ldrb r0, [r3, #0x00]
	lsrs r0, r0, #0x06
	lsls r0, r0, #0x01
	ldrb r1, [r7, #0x12]
	adds r2, #0x06
	ands r2, r1
	orrs r2, r0
	strb r2, [r7, #0x12]
	ldr r1, _080406F0 @ =0x00000299
	adds r3, r6, r1
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	ands r0, r4
	lsls r0, r0, #0x03
	movs r1, #0x09
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #0x12]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	ands r0, r4
	lsls r0, r0, #0x04
	movs r2, #0x11
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #0x12]
	ldr r2, _080406F4 @ =0x0000029E
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r7, #0x2A]
	movs r3, #0xA8
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r7, #0x2C]
	ldr r5, _080406F8 @ =0x000002A2
	adds r0, r6, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r7, #0x04]
	movs r1, #0xA9
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r7, #0x06]
	b _08040712
	.byte 0x00, 0x00
_080406E8: .4byte 0x000001FF
_080406EC: .4byte 0xFFFFFE00
_080406F0: .4byte 0x00000299
_080406F4: .4byte 0x0000029E
_080406F8: .4byte 0x000002A2
_080406FC:
	ldrb r1, [r7, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x04
	negs r1, r1
	ands r0, r1
	orrs r0, r4
	strb r0, [r7, #0x1F]
_08040712:
	ldr r2, _08040788 @ =0x00000239
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x20
	strb r1, [r0, #0x00]
	movs r3, #0xA6
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r5, #0x85
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldrb r0, [r0, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x00
	beq _0804074A
	cmp r1, #0x02
	beq _0804074A
	cmp r1, #0x03
	beq _0804074A
	cmp r1, #0x05
	bne _08040752
_0804074A:
	ldrb r0, [r7, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7, #0x12]
_08040752:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r7, [r0, #0x00]
	ldr r2, _0804078C @ =0x00000212
	adds r4, r6, r2
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08040776
	adds r0, r6, #0x0
	bl sub_80415A0__11FieldObject
	ldrb r0, [r4, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
_08040776:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08040788: .4byte 0x00000239
_0804078C: .4byte 0x00000212
