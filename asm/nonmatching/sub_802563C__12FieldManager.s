	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_802563C__12FieldManager
sub_802563C__12FieldManager:
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
	bl sub_804761C__11FieldObjecti
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
