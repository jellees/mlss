thumb_func_start opdr_update2
opdr_update2:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r4, [r7, #0x14]
	bl sub_8020A78
	ldr r0, _080572B0 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	adds r4, #0xDC
	ldr r2, [r4, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _08057274
	ldr r3, _080572B4 @ =0x0203FFB8
	ldr r5, [r3, #0x38]
	ldr r1, _080572B8 @ =0x083A75B8
	adds r0, r2, #0x0
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	subs r0, #0x0A
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	str r4, [sp, #0x000]
	movs r6, #0x22
	adds r6, r6, r7
	mov r9, r6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r6, r0, #0x0
	subs r6, #0x22
	mov r8, r3
	movs r2, #0x2B
	adds r4, r7, #0x0
	adds r4, #0x1C
	movs r0, #0x90
	lsls r0, r0, #0x06
	mov r12, r0
	movs r7, #0x80
	lsls r7, r7, #0x17
_080571CA:
	strh r6, [r5, #0x00]
	strh r2, [r5, #0x02]
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x2C
	mov r1, r12
	orrs r0, r1
	strh r0, [r5, #0x04]
	mov r0, r8
	strh r0, [r5, #0x06]
	str r7, [r5, #0x08]
	ldr r5, [r5, #0x10]
	adds r1, r2, #0x7
	adds r0, r3, #0x1
	strh r6, [r5, #0x00]
	strh r1, [r5, #0x02]
	adds r0, r4, r0
	ldrb r0, [r0, #0x00]
	adds r0, #0x2C
	mov r1, r12
	orrs r0, r1
	strh r0, [r5, #0x04]
	mov r0, r8
	strh r0, [r5, #0x06]
	str r7, [r5, #0x08]
	ldr r5, [r5, #0x10]
	adds r1, r2, #0x0
	adds r1, #0x0E
	adds r0, r3, #0x2
	strh r6, [r5, #0x00]
	strh r1, [r5, #0x02]
	adds r0, r4, r0
	ldrb r0, [r0, #0x00]
	adds r0, #0x2C
	mov r1, r12
	orrs r0, r1
	strh r0, [r5, #0x04]
	mov r0, r8
	strh r0, [r5, #0x06]
	str r7, [r5, #0x08]
	ldr r5, [r5, #0x10]
	adds r2, #0x15
	adds r3, #0x03
	cmp r3, #0x05
	ble _080571CA
	movs r4, #0x00
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x00]
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	subs r0, #0x0A
	lsls r0, r0, #0x01
	ldr r2, _080572BC @ =0x083A75C8
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	subs r1, #0x15
	movs r0, #0x40
	movs r6, #0x90
	lsls r6, r6, #0x06
	adds r2, r6, #0x0
	movs r3, #0x80
	lsls r3, r3, #0x17
	strh r1, [r5, #0x00]
	strh r0, [r5, #0x02]
	mov r6, r9
	ldrb r0, [r6, #0x00]
	adds r0, #0x2C
	orrs r0, r2
	strh r0, [r5, #0x04]
	strh r4, [r5, #0x06]
	str r3, [r5, #0x08]
	ldr r5, [r5, #0x10]
	movs r0, #0x47
	strh r1, [r5, #0x00]
	strh r0, [r5, #0x02]
	ldrb r0, [r6, #0x01]
	adds r0, #0x2C
	orrs r0, r2
	strh r0, [r5, #0x04]
	strh r4, [r5, #0x06]
	str r3, [r5, #0x08]
	ldr r5, [r5, #0x10]
	ldr r0, _080572B4 @ =0x0203FFB8
	str r5, [r0, #0x38]
_08057274:
	ldr r2, _080572C0 @ =0x03000D48
	ldr r4, _080572B4 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _080572C4 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _080572C8 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	mov r1, r10
	bl _call_via_r2
	mov r10, r0
	ldr r0, _080572B0 @ =0x0300034C
	movs r6, #0x88
	lsls r6, r6, #0x04
	adds r0, r0, r6
	mov r1, r10
	str r1, [r0, #0x00]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080572B0: .4byte 0x0300034C
_080572B4: .4byte 0x0203FFB8
_080572B8: .4byte 0x083A75B8
_080572BC: .4byte 0x083A75C8
_080572C0: .4byte 0x03000D48
_080572C4: .4byte 0x00000A14
_080572C8: .4byte 0x03000D4C
