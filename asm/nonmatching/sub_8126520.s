	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8126520
sub_8126520:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	adds r3, r4, #0x0
	adds r3, #0xEA
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08126582
	adds r1, r0, #0x1
	strh r1, [r3, #0x00]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xB4
	bhi _08126544
	b _08126C2C
_08126544:
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0x02]
	movs r2, #0x03
	ands r2, r0
	cmp r2, #0x00
	beq _08126564
	movs r0, #0x00
	strh r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xEE
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x1C]
	bl sprite_show_8020CBC
	b _08126C2C
_08126564:
	lsls r1, r1, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08126570
	b _08126C2C
_08126570:
	strh r2, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xEE
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x1C]
	bl sprite_show_8020CBC
	b _08126C2C
_08126582:
	adds r0, r4, #0x0
	adds r0, #0xF2
	ldrb r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	beq _0812661C
	subs r0, #0x01
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xFA
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	asrs r0, r1
	movs r2, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _081265C8
	ldr r2, _081265C4 @ =0x0200000C
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xE6
	movs r0, #0xEA
	lsls r0, r0, #0x05
	b _08126600
	.byte 0x00, 0x00
_081265C4: .4byte 0x0200000C
_081265C8:
	adds r0, r4, #0x0
	adds r0, #0xF3
	ldrb r0, [r0, #0x00]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0x00
	beq _081265F8
	ldr r2, _081265F4 @ =0x0200000C
	adds r0, r4, #0x0
	adds r0, #0xDE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xE6
	movs r0, #0xEA
	lsls r0, r0, #0x05
	b _08126600
	.byte 0x00, 0x00
_081265F4: .4byte 0x0200000C
_081265F8:
	adds r1, r4, #0x0
	adds r1, #0xE6
	movs r0, #0xCA
	lsls r0, r0, #0x05
_08126600:
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x12
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xEE
	movs r2, #0x00
	movs r0, #0x01
	strb r0, [r1, #0x00]
	mov r0, r10
	strb r2, [r0, #0x00]
	b _08126C2C
_0812661C:
	ldr r6, [r4, #0x50]
	ldrh r1, [r6, #0x02]
	movs r2, #0x01
	mov r9, r2
	movs r0, #0x01
	mov r8, r0
	mov r5, r8
	ands r5, r1
	cmp r5, #0x00
	bne _08126632
	b _08126836
_08126632:
	adds r7, r4, #0x0
	adds r7, #0xF9
	movs r0, #0x00
	ldsb r0, [r7, r0]
	cmp r0, #0x00
	bne _08126640
	b _08126814
_08126640:
	adds r6, r4, #0x0
	adds r6, #0xFB
	ldrb r1, [r6, #0x00]
	movs r2, #0x00
	ldsb r2, [r6, r2]
	cmp r2, #0x00
	bne _08126650
	b _0812675C
_08126650:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	cmp r5, #0x00
	beq _081266A0
	movs r5, #0x0F
	ands r5, r1
	cmp r5, #0x00
	beq _0812667A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r1, r9
	strb r1, [r0, #0x00]
	movs r0, #0x20
	b _081267D4
_0812667A:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	strb r5, [r6, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	movs r1, #0x00
	ldsb r1, [r7, r1]
	subs r1, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x28
	strh r0, [r2, #0x02]
	b _0812680A
_081266A0:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x00
	beq _08126704
	cmp r2, #0x21
	bne _081266D6
	adds r0, r4, #0x0
	adds r0, #0xF5
	movs r1, #0x1E
	bl sub_81252BC
	adds r1, r4, #0x0
	adds r1, #0xF4
	strb r0, [r1, #0x00]
	subs r1, #0x04
	movs r0, #0x03
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r1, r9
	strb r1, [r0, #0x00]
	subs r0, #0x02
	strh r5, [r0, #0x00]
	b _08126728
_081266D6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	strb r5, [r6, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	movs r1, #0x00
	ldsb r1, [r7, r1]
	subs r1, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x28
	strh r0, [r2, #0x02]
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r1, r9
	strb r1, [r0, #0x00]
	b _08126C2C
_08126704:
	adds r0, r4, #0x0
	adds r0, #0xF5
	movs r1, #0x1E
	bl sub_81252BC
	adds r1, r4, #0x0
	adds r1, #0xF4
	strb r0, [r1, #0x00]
	subs r1, #0x04
	movs r0, #0x02
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r2, r9
	strb r2, [r0, #0x00]
	subs r0, #0x02
	mov r1, r8
	strh r1, [r0, #0x00]
_08126728:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, [r4, #0x1C]
	bl sprite_hide_8021F20
	ldr r2, _08126754 @ =0x0300034C
	ldr r0, _08126758 @ =0x0000088A
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	b _08126C2E
	.byte 0x00, 0x00
_08126754: .4byte 0x0300034C
_08126758: .4byte 0x0000088A
_0812675C:
	movs r5, #0x00
	ldsb r5, [r7, r5]
	subs r0, r5, #0x1
	cmp r0, #0x01
	beq _08126788
	cmp r0, #0x01
	bgt _08126770
	cmp r0, #0x00
	beq _0812677A
	b _08126C2C
_08126770:
	cmp r0, #0x02
	beq _081267C0
	cmp r0, #0x03
	beq _081267E4
	b _08126C2C
_0812677A:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	movs r0, #0x02
	b _08126C2E
_08126788:
	ldr r1, _081267A0 @ =0x00000157
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081267A4
	mov r2, r8
	strh r2, [r3, #0x00]
	ldr r0, [r4, #0x1C]
	bl sprite_hide_8021F20
	b _08126896
	.byte 0x00, 0x00
_081267A0: .4byte 0x00000157
_081267A4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	mov r0, r9
	strb r0, [r6, #0x00]
	ldr r1, [r4, #0x1C]
	adds r0, r4, r5
	movs r2, #0xA9
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	b _0812688A
_081267C0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r1, r9
	strb r1, [r0, #0x00]
	movs r0, #0x10
_081267D4:
	strb r0, [r6, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x2E
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x60
	strh r0, [r1, #0x02]
	b _08126C2C
_081267E4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	ldr r1, [r4, #0x1C]
	adds r0, r4, #0x0
	adds r0, #0xFA
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x05
	adds r0, #0x20
	movs r2, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
	strb r2, [r7, #0x00]
_0812680A:
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r2, r9
	strb r2, [r0, #0x00]
	b _08126C2C
_08126814:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r1, r9
	strb r1, [r0, #0x00]
	strb r1, [r7, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	movs r1, #0x00
	ldsb r1, [r7, r1]
	b _08126C20
_08126836:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _081268B6
	adds r6, r4, #0x0
	adds r6, #0xF9
	movs r0, #0x00
	ldsb r0, [r6, r0]
	cmp r0, #0x00
	beq _081268A0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xFB
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	beq _0812687C
	strb r5, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	movs r1, #0x00
	ldsb r1, [r6, r1]
	subs r1, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x28
	strh r0, [r2, #0x02]
	b _08126896
_0812687C:
	strb r0, [r6, #0x00]
	ldr r1, [r4, #0x1C]
	adds r0, r4, #0x0
	adds r0, #0xFA
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0812688A:
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
_08126896:
	adds r1, r4, #0x0
	adds r1, #0xEE
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _08126C2C
_081268A0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xF0
	mov r2, r9
	strb r2, [r0, #0x00]
	movs r0, #0x02
	b _08126C2E
_081268B6:
	adds r5, r4, #0x0
	adds r5, #0xFB
	ldrb r2, [r5, #0x00]
	movs r0, #0x30
	ands r0, r2
	adds r7, r5, #0x0
	cmp r0, #0x00
	beq _08126950
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812690A
	movs r0, #0x0F
	ands r0, r2
	cmp r0, #0x00
	beq _081268DE
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	b _081268E6
_081268DE:
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	adds r0, #0x01
_081268E6:
	strb r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	ldr r1, [r4, #0x1C]
	movs r0, #0x2E
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	ldrb r1, [r7, #0x00]
	movs r0, #0x0F
	ands r0, r1
	movs r1, #0x0D
	muls r1, r0
	movs r0, #0x60
	subs r0, r0, r1
	b _08126C2A
_0812690A:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08126914
	b _08126C2C
_08126914:
	movs r0, #0x0F
	ands r0, r2
	cmp r0, #0x00
	beq _08126924
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	b _0812692C
_08126924:
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	adds r0, #0x01
_0812692C:
	strb r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	ldr r1, [r4, #0x1C]
	movs r0, #0x2E
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	ldrb r1, [r7, #0x00]
	movs r0, #0x0F
	ands r0, r1
	movs r1, #0x0D
	muls r1, r0
	movs r0, #0x60
	subs r0, r0, r1
	b _08126C2A
_08126950:
	ldrh r1, [r6, #0x06]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08126A34
	adds r0, r4, #0x0
	adds r0, #0xF9
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	bne _08126A00
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r5, r4, #0x0
	adds r5, #0xF1
	ldrb r0, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xFA
	movs r1, #0x00
	ldsb r1, [r3, r1]
	asrs r0, r1
	mov r2, r8
	ands r0, r2
	cmp r0, #0x00
	beq _081269A8
	lsls r0, r1, #0x03
	adds r1, r4, #0x0
	adds r1, #0x20
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	movs r2, #0xB4
	strh r2, [r0, #0x02]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	strh r2, [r0, #0x02]
_081269A8:
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _081269B8
	movs r0, #0x02
	strb r0, [r3, #0x00]
_081269B8:
	ldrb r0, [r5, #0x00]
	movs r1, #0x00
	ldsb r1, [r3, r1]
	asrs r0, r1
	mov r2, r8
	ands r0, r2
	cmp r0, #0x00
	beq _081269E6
	lsls r0, r1, #0x03
	adds r1, r4, #0x0
	adds r1, #0x20
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	movs r2, #0x68
	strh r2, [r0, #0x02]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	strh r2, [r0, #0x02]
_081269E6:
	ldr r1, [r4, #0x1C]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
	mov r1, r9
	mov r0, r10
	strb r1, [r0, #0x00]
	b _08126C2C
_08126A00:
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _08126A08
	b _08126C2C
_08126A08:
	ldr r2, _08126A30 @ =0x00000157
	adds r6, r4, r2
	ldrb r0, [r6, #0x00]
	cmp r0, #0x02
	bne _08126A1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_08126A1C:
	ldrb r0, [r5, #0x00]
	subs r0, #0x01
	strb r0, [r5, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	ble _08126A2A
	b _08126B32
_08126A2A:
	ldrb r0, [r6, #0x00]
	strb r0, [r5, #0x00]
	b _08126B32
_08126A30: .4byte 0x00000157
_08126A34:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08126A3E
	b _08126B58
_08126A3E:
	adds r0, r4, #0x0
	adds r0, #0xF9
	movs r7, #0x00
	ldsb r7, [r0, r7]
	cmp r7, #0x00
	bne _08126B00
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r3, r4, #0x0
	adds r3, #0xF1
	ldrb r0, [r3, #0x00]
	adds r6, r4, #0x0
	adds r6, #0xFA
	movs r1, #0x00
	ldsb r1, [r6, r1]
	asrs r0, r1
	mov r2, r8
	ands r0, r2
	adds r5, r6, #0x0
	cmp r0, #0x00
	beq _08126A8C
	lsls r0, r1, #0x03
	adds r1, r4, #0x0
	adds r1, #0x20
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	movs r2, #0xB4
	strh r2, [r0, #0x02]
	movs r0, #0x00
	ldsb r0, [r5, r0]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	strh r2, [r0, #0x02]
_08126A8C:
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x02
	ble _08126A9C
	strb r7, [r5, #0x00]
_08126A9C:
	ldrb r0, [r3, #0x00]
	movs r3, #0x00
	ldsb r3, [r5, r3]
	asrs r0, r3
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	beq _08126AE6
	adds r1, r4, #0x0
	adds r1, #0x20
	movs r2, #0x68
	lsls r0, r3, #0x03
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	strh r2, [r0, #0x02]
	movs r0, #0x00
	ldsb r0, [r5, r0]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x02
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	strh r2, [r0, #0x02]
	movs r0, #0x00
	ldsb r0, [r5, r0]
	lsls r0, r0, #0x03
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	strh r2, [r0, #0x02]
	movs r0, #0x00
	ldsb r0, [r5, r0]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	strh r2, [r0, #0x02]
_08126AE6:
	ldr r1, [r4, #0x1C]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
	mov r0, r8
	mov r2, r10
	strb r0, [r2, #0x00]
	b _08126C2C
_08126B00:
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _08126B08
	b _08126C2C
_08126B08:
	ldr r1, _08126B50 @ =0x00000157
	adds r6, r4, r1
	ldrb r0, [r6, #0x00]
	cmp r0, #0x02
	bne _08126B1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_08126B1C:
	ldrb r1, [r5, #0x00]
	adds r1, #0x01
	strb r1, [r5, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r6, #0x00]
	adds r0, #0x01
	cmp r1, r0
	blt _08126B32
	mov r2, r9
	strb r2, [r5, #0x00]
_08126B32:
	ldr r1, [r4, #0x1C]
	movs r0, #0x00
	ldsb r0, [r5, r0]
	adds r0, r4, r0
	ldr r2, _08126B54 @ =0x00000153
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
	b _08126C2C
	.byte 0x00, 0x00
_08126B50: .4byte 0x00000157
_08126B54: .4byte 0x00000153
_08126B58:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08126BB4
	adds r0, r4, #0x0
	adds r0, #0xF9
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r5, r0, #0x0
	cmp r1, #0x00
	beq _08126C2C
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _08126C2C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xF1
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xFA
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	beq _08126BA6
	ldrb r0, [r5, #0x00]
	subs r0, #0x01
	strb r0, [r5, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bgt _08126C14
	b _08126C10
_08126BA6:
	movs r0, #0x00
	ldsb r0, [r5, r0]
	cmp r0, #0x01
	beq _08126C10
_08126BAE:
	mov r2, r9
	strb r2, [r5, #0x00]
	b _08126C14
_08126BB4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08126C2C
	adds r0, r4, #0x0
	adds r0, #0xF9
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r5, r0, #0x0
	cmp r1, #0x00
	beq _08126C2C
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _08126C2C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xF1
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xFA
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	beq _08126C04
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x04
	ble _08126C14
	b _08126BAE
_08126C04:
	movs r0, #0x00
	ldsb r0, [r5, r0]
	cmp r0, #0x04
	bne _08126C10
	mov r0, r9
	b _08126C12
_08126C10:
	movs r0, #0x04
_08126C12:
	strb r0, [r5, #0x00]
_08126C14:
	ldr r1, [r4, #0x1C]
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	movs r1, #0x00
	ldsb r1, [r5, r1]
_08126C20:
	subs r1, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x28
_08126C2A:
	strh r0, [r2, #0x02]
_08126C2C:
	movs r0, #0x00
_08126C2E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
