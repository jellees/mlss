	.include "asm/macros.inc"

	.syntax unified
	.text

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
	bl sub_805C6B8__4S_MP
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
	bl sub_8049000__20FieldPlayerCharacterUs
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
	bl sub_8049000__20FieldPlayerCharacterUs
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
	bl sub_80492DC__20FieldPlayerCharacter
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
	bl sub_8049000__20FieldPlayerCharacterUs
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
	bl sub_80492DC__20FieldPlayerCharacter
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
	bl sub_8049000__20FieldPlayerCharacterUs
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
	bl sub_80492DC__20FieldPlayerCharacter
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
	bl sub_8049000__20FieldPlayerCharacterUs
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
	bl sub_80492DC__20FieldPlayerCharacter
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
	bl sub_8049000__20FieldPlayerCharacterUs
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

