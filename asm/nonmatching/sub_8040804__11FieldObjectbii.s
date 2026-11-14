	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_8040804__11FieldObjectbii
sub_8040804__11FieldObjectbii:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r7, r2, #0x0
	mov r8, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r9, r1
	cmp r1, #0x00
	bne _0804085C
	movs r1, #0xCD
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r2, [r1, #0x00]
	ldrb r1, [r2, #0x1E]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r1, r1, r3
	ldrh r2, [r2, #0x16]
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_81152FC
	movs r4, #0x9B
	lsls r4, r4, #0x02
	adds r1, r6, r4
	strh r0, [r1, #0x00]
	ldr r0, _080409D4 @ =0x00000216
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0804085C:
	ldr r2, _080409D8 @ =0x0839EE60
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r1, [r5, #0x00]
	ldrb r0, [r1, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1A
	adds r0, r0, r2
	ldrh r1, [r1, #0x16]
	lsls r1, r1, #0x02
	ldr r3, [r0, #0x00]
	adds r3, r3, r1
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x01
	ldr r2, _080409D4 @ =0x00000216
	adds r4, r6, r2
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x02
	ldrb r1, [r4, #0x00]
	movs r2, #0x0D
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x03
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x04
	movs r1, #0x11
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r3, _080409DC @ =0x083A05EC
	lsls r2, r1, #0x1C
	lsrs r2, r2, #0x1E
	lsls r2, r2, #0x04
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x03
	adds r2, r2, r1
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r2, r2, r0
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	movs r3, #0x01
	negs r3, r3
	cmp r7, r3
	bne _080408CC
	movs r7, #0x7F
	ands r7, r0
_080408CC:
	cmp r8, r3
	bne _080408D4
	lsrs r0, r0, #0x07
	mov r8, r0
_080408D4:
	ldr r1, [r5, #0x00]
	movs r2, #0x00
	mov r4, r9
	cmp r4, #0x01
	bne _080408E0
	adds r2, r3, #0x0
_080408E0:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r7, #0x0
	movs r3, #0x00
	bl sub_801E150
	mov r0, r9
	cmp r0, #0x01
	bne _0804091E
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x48]
	cmp r0, #0x00
	beq _0804091E
	ldr r0, [r0, #0x04]
	bl sub_80198B0
	lsrs r1, r0, #0x05
	ldr r3, [r5, #0x00]
	ldrh r2, [r3, #0x28]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x17
	cmp r1, r0
	ble _0804091E
	ldr r4, _080409E0 @ =0x000001FF
	adds r0, r4, #0x0
	ands r1, r0
	ldr r0, _080409E4 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x28]
_0804091E:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	movs r0, #0x01
	mov r2, r8
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x00
	beq _08040956
	cmp r1, #0x02
	beq _08040956
	cmp r1, #0x03
	beq _08040956
	cmp r1, #0x05
	bne _08040966
_08040956:
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
_08040966:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r0, [r5, #0x00]
	ldr r2, _080409E8 @ =0x00000239
	adds r1, r6, r2
	ldrb r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r3, _080409EC @ =0x0000020F
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080409BE
	ldr r0, [r5, #0x00]
	ldrb r4, [r0, #0x12]
	lsls r4, r4, #0x1D
	lsrs r4, r4, #0x1E
	bl sprite_restore
	ldr r2, [r5, #0x00]
	lsls r4, r4, #0x01
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x12]
	mov r4, r9
	cmp r4, #0x00
	beq _080409BE
	ldr r1, _080409F0 @ =0x0000020E
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080409BE
	adds r0, r6, #0x0
	movs r1, #0xFF
	bl sub_8047DC8__11FieldObjectUc
_080409BE:
	adds r0, r6, #0x0
	bl sub_80415A0__11FieldObject
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080409D4: .4byte 0x00000216
_080409D8: .4byte 0x0839EE60
_080409DC: .4byte 0x083A05EC
_080409E0: .4byte 0x000001FF
_080409E4: .4byte 0xFFFFFE00
_080409E8: .4byte 0x00000239
_080409EC: .4byte 0x0000020F
_080409F0: .4byte 0x0000020E
