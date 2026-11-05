	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804D2CC
sub_804D2CC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	adds r7, r0, #0x0
	adds r0, #0x25
	ldrb r4, [r0, #0x00]
	movs r2, #0x78
	adds r0, r2, #0x0
	ands r0, r4
	cmp r0, #0x00
	bne _0804D2EA
	b _0804D720
_0804D2EA:
	adds r0, r7, #0x0
	adds r0, #0x4C
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0804D2FA
	b _0804D720
_0804D2FA:
	ldr r1, _0804D394 @ =0x00000242
	adds r0, r7, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _0804D316
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r7, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0804D316
	b _0804D720
_0804D316:
	movs r2, #0x01
	movs r3, #0x04
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1C
	adds r1, r0, #0x0
	ands r1, r2
	adds r4, r0, #0x0
_0804D324:
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	subs r3, #0x01
	cmp r3, #0x00
	beq _0804D340
	adds r0, r4, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _0804D324
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x02
	bne _0804D324
_0804D340:
	cmp r1, #0x01
	beq _0804D346
	b _0804D720
_0804D346:
	movs r2, #0x00
	str r2, [sp, #0x01C]
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	mov r9, r1
	ldr r3, _0804D398 @ =0x0000027A
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	add r0, r9
	str r0, [sp, #0x020]
	ldr r4, _0804D394 @ =0x00000242
	adds r0, r7, r4
	movs r1, #0x00
	ldsh r2, [r0, r1]
	cmp r2, #0x00
	bne _0804D36A
	b _0804D4E4
_0804D36A:
	adds r3, #0xD2
	adds r0, r7, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x10]
	cmp r1, r0
	beq _0804D378
	b _0804D720
_0804D378:
	cmp r2, #0x00
	bge _0804D39C
	movs r4, #0xD2
	lsls r4, r4, #0x02
	adds r1, r7, r4
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [r1, #0x00]
	subs r1, r1, r0
	mov r10, r1
	b _0804D3BE
_0804D394: .4byte 0x00000242
_0804D398: .4byte 0x0000027A
_0804D39C:
	movs r3, #0xD2
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r1, [r0, #0x00]
	ldr r2, _0804D4C0 @ =0xFFFFFF00
	adds r1, r1, r2
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	adds r1, #0xFF
	mov r10, r1
	mov r0, r10
	ands r0, r2
	mov r10, r0
_0804D3BE:
	movs r1, #0xD3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r1, r7, r3
	ldrh r2, [r1, #0x00]
	subs r2, r0, r2
	adds r0, #0xFF
	ldr r1, _0804D4C0 @ =0xFFFFFF00
	ands r0, r1
	adds r4, r1, #0x0
	adds r4, r0, r4
	str r4, [sp, #0x024]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	add r3, sp, #0x014
	mov r8, r3
	str r3, [sp, #0x000]
	add r6, sp, #0x018
	str r6, [sp, #0x004]
	add r5, sp, #0x008
	movs r3, #0x01
	strb r3, [r5, #0x00]
	ldr r4, _0804D4C4 @ =0x0000020D
	adds r1, r7, r4
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r3
	add r4, sp, #0x00C
	strb r1, [r4, #0x00]
	mov r1, r10
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r9, r0
	blt _0804D442
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	blt _0804D428
	ldr r1, [sp, #0x020]
	cmp r1, r0
	ble _0804D428
	ldr r0, [sp, #0x018]
	cmp r9, r0
	blt _0804D442
_0804D428:
	ldr r2, _0804D4C4 @ =0x0000020D
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804D446
	ldr r0, [sp, #0x010]
	cmp r9, r0
	ble _0804D446
	ldr r0, [sp, #0x018]
	cmp r9, r0
	beq _0804D446
_0804D442:
	movs r3, #0x01
	str r3, [sp, #0x01C]
_0804D446:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	mov r2, r8
	str r2, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r2, #0x01
	strb r2, [r5, #0x00]
	ldr r3, _0804D4C4 @ =0x0000020D
	adds r1, r7, r3
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	strb r1, [r4, #0x00]
	mov r1, r10
	ldr r2, [sp, #0x024]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r9, r0
	blt _0804D4A0
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	blt _0804D486
	ldr r4, [sp, #0x020]
	cmp r4, r0
	ble _0804D486
	ldr r0, [sp, #0x018]
	cmp r9, r0
	blt _0804D4A0
_0804D486:
	ldr r1, _0804D4C4 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804D4A8
	ldr r0, [sp, #0x010]
	cmp r9, r0
	ble _0804D4A8
	ldr r0, [sp, #0x018]
	cmp r9, r0
	beq _0804D4A8
_0804D4A0:
	movs r0, #0x08
	ldr r2, [sp, #0x01C]
	orrs r2, r0
	str r2, [sp, #0x01C]
_0804D4A8:
	ldr r3, [sp, #0x01C]
	cmp r3, #0x01
	bne _0804D4C8
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	ldr r1, _0804D4C0 @ =0xFFFFFF00
	ands r0, r1
	str r0, [r7, #0x10]
	movs r0, #0x04
	b _0804D724
_0804D4C0: .4byte 0xFFFFFF00
_0804D4C4: .4byte 0x0000020D
_0804D4C8:
	ldr r0, [sp, #0x01C]
	cmp r0, #0x08
	beq _0804D4D0
	b _0804D720
_0804D4D0:
	ldr r0, [r7, #0x10]
	adds r0, #0xFF
	ldr r1, _0804D4E0 @ =0xFFFFFF00
	ands r0, r1
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r0, #0x00
	b _0804D724
_0804D4E0: .4byte 0xFFFFFF00
_0804D4E4:
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bne _0804D4F4
	b _0804D720
_0804D4F4:
	movs r3, #0xD2
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r3, [r7, #0x0C]
	cmp r0, r3
	beq _0804D504
	b _0804D720
_0804D504:
	cmp r1, #0x00
	ble _0804D514
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r4, r4, r0
	mov r10, r4
	b _0804D522
_0804D514:
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrh r1, [r0, #0x00]
	ldr r0, [r7, #0x10]
	subs r0, r0, r1
	mov r10, r0
_0804D522:
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	lsrs r1, r0, #0x01
	subs r1, r3, r1
	str r3, [sp, #0x028]
	adds r0, r1, r0
	adds r0, #0xFF
	str r0, [sp, #0x02C]
	ldr r0, _0804D6F4 @ =0xFFFFFF00
	ldr r3, [sp, #0x02C]
	ands r3, r0
	str r3, [sp, #0x02C]
	movs r4, #0xA4
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	add r2, sp, #0x014
	mov r8, r2
	str r2, [sp, #0x000]
	add r6, sp, #0x018
	str r6, [sp, #0x004]
	add r5, sp, #0x008
	movs r3, #0x01
	strb r3, [r5, #0x00]
	subs r4, #0x83
	adds r2, r7, r4
	ldrb r2, [r2, #0x00]
	lsrs r2, r2, #0x03
	ands r2, r3
	add r4, sp, #0x00C
	strb r2, [r4, #0x00]
	mov r2, r10
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r9, r0
	blt _0804D59E
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	blt _0804D584
	ldr r1, [sp, #0x020]
	cmp r1, r0
	ble _0804D584
	ldr r0, [sp, #0x018]
	cmp r9, r0
	blt _0804D59E
_0804D584:
	ldr r2, _0804D6F8 @ =0x0000020D
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804D5A2
	ldr r0, [sp, #0x010]
	cmp r9, r0
	ble _0804D5A2
	ldr r0, [sp, #0x018]
	cmp r9, r0
	beq _0804D5A2
_0804D59E:
	movs r3, #0x01
	str r3, [sp, #0x01C]
_0804D5A2:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r3, _0804D6F4 @ =0xFFFFFF00
	ldr r2, [sp, #0x028]
	adds r3, r2, r3
	str r3, [sp, #0x030]
	mov r1, r8
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r3, #0x01
	strb r3, [r5, #0x00]
	ldr r2, _0804D6F8 @ =0x0000020D
	ldrb r1, [r2, r7]
	mov r12, r1
	mov r1, r12
	lsrs r2, r1, #0x03
	ands r2, r3
	strb r2, [r4, #0x00]
	ldr r1, [sp, #0x030]
	mov r2, r10
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r9, r0
	blt _0804D606
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	blt _0804D5EC
	ldr r2, [sp, #0x020]
	cmp r2, r0
	ble _0804D5EC
	ldr r0, [sp, #0x018]
	cmp r9, r0
	blt _0804D606
_0804D5EC:
	ldr r3, _0804D6F8 @ =0x0000020D
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804D60E
	ldr r0, [sp, #0x010]
	cmp r9, r0
	ble _0804D60E
	ldr r0, [sp, #0x018]
	cmp r9, r0
	beq _0804D60E
_0804D606:
	movs r0, #0x02
	ldr r1, [sp, #0x01C]
	orrs r1, r0
	str r1, [sp, #0x01C]
_0804D60E:
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	mov r3, r8
	str r3, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r2, #0x01
	strb r2, [r5, #0x00]
	ldr r3, _0804D6F8 @ =0x0000020D
	adds r1, r7, r3
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x028]
	mov r2, r10
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r9, r0
	blt _0804D668
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	blt _0804D64E
	ldr r1, [sp, #0x020]
	cmp r1, r0
	ble _0804D64E
	ldr r0, [sp, #0x018]
	cmp r9, r0
	blt _0804D668
_0804D64E:
	ldr r2, _0804D6F8 @ =0x0000020D
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804D674
	ldr r0, [sp, #0x010]
	cmp r9, r0
	ble _0804D674
	ldr r0, [sp, #0x018]
	cmp r9, r0
	beq _0804D674
_0804D668:
	movs r0, #0x04
	ldr r3, [sp, #0x01C]
	orrs r3, r0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x01C]
_0804D674:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	mov r2, r8
	str r2, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r2, #0x01
	strb r2, [r5, #0x00]
	ldr r3, _0804D6F8 @ =0x0000020D
	adds r1, r7, r3
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x02C]
	mov r2, r10
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r9, r0
	blt _0804D6CE
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	blt _0804D6B4
	ldr r4, [sp, #0x020]
	cmp r4, r0
	ble _0804D6B4
	ldr r0, [sp, #0x018]
	cmp r9, r0
	blt _0804D6CE
_0804D6B4:
	ldr r1, _0804D6F8 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804D6DA
	ldr r0, [sp, #0x010]
	cmp r9, r0
	ble _0804D6DA
	ldr r0, [sp, #0x018]
	cmp r9, r0
	beq _0804D6DA
_0804D6CE:
	movs r0, #0x08
	ldr r2, [sp, #0x01C]
	orrs r2, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x01C]
_0804D6DA:
	ldr r3, [sp, #0x01C]
	cmp r3, #0x01
	bne _0804D700
	ldr r0, [r7, #0x0C]
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r1, _0804D6FC @ =0xFFFFFE00
	ands r0, r1
	str r0, [r7, #0x0C]
	movs r0, #0x02
	b _0804D724
	.byte 0x00, 0x00
_0804D6F4: .4byte 0xFFFFFF00
_0804D6F8: .4byte 0x0000020D
_0804D6FC: .4byte 0xFFFFFE00
_0804D700:
	ldr r0, [sp, #0x01C]
	cmp r0, #0x08
	bne _0804D720
	ldr r0, [r7, #0x0C]
	ldr r1, _0804D718 @ =0xFFFFFF00
	adds r0, r0, r1
	ldr r1, _0804D71C @ =0xFFFFFE00
	ands r0, r1
	str r0, [r7, #0x0C]
	movs r0, #0x06
	b _0804D724
	.byte 0x00, 0x00
_0804D718: .4byte 0xFFFFFF00
_0804D71C: .4byte 0xFFFFFE00
_0804D720:
	movs r0, #0x01
	negs r0, r0
_0804D724:
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
