	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804A124__20FieldPlayerCharacterP12FieldStruct6PiT2bT4
sub_804A124__20FieldPlayerCharacterP12FieldStruct6PiT2bT4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	adds r7, r0, #0x0
	mov r9, r1
	str r2, [sp, #0x01C]
	str r3, [sp, #0x020]
	add r0, sp, #0x060
	add r1, sp, #0x064
	ldrb r0, [r0, #0x00]
	ldrb r1, [r1, #0x00]
	str r1, [sp, #0x024]
	cmp r0, #0x00
	beq _0804A14E
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	beq _0804A14E
	b _0804A4B6
_0804A14E:
	mov r0, r9
	cmp r0, #0x00
	bne _0804A156
	b _0804A4B6
_0804A156:
	ldr r1, _0804A394 @ =0x00000346
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsrs r0, r1, #0x01
	lsls r0, r0, #0x08
	ldr r2, [r7, #0x0C]
	subs r2, r2, r0
	mov r10, r2
	subs r1, #0x01
	lsls r1, r1, #0x08
	add r1, r10
	str r1, [sp, #0x028]
	cmp r2, #0x00
	bge _0804A174
	b _0804A4B6
_0804A174:
	ldr r2, [sp, #0x02C]
	cmp r2, #0x00
	bge _0804A17C
	b _0804A4B6
_0804A17C:
	ldr r1, _0804A398 @ =0x00000347
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x10]
	subs r1, r1, r0
	str r1, [sp, #0x02C]
	adds r0, r1, r0
	str r0, [sp, #0x030]
	movs r2, #0x00
	str r2, [sp, #0x034]
	ldr r0, [r7, #0x14]
	cmp r0, #0x00
	bge _0804A19E
	ldr r1, _0804A39C @ =0x00000FFF
	adds r0, r0, r1
_0804A19E:
	asrs r0, r0, #0x0C
	str r0, [sp, #0x038]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	add r1, sp, #0x014
	mov r8, r1
	str r1, [sp, #0x000]
	add r6, sp, #0x018
	str r6, [sp, #0x004]
	add r5, sp, #0x008
	add r2, sp, #0x034
	ldrb r2, [r2, #0x00]
	strb r2, [r5, #0x00]
	ldr r2, _0804A3A0 @ =0x0000020D
	adds r1, r7, r2
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	movs r2, #0x01
	ands r1, r2
	add r4, sp, #0x00C
	strb r1, [r4, #0x00]
	mov r1, r10
	ldr r2, [sp, #0x02C]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0804A1E0
	ldr r1, _0804A39C @ =0x00000FFF
	adds r0, r0, r1
_0804A1E0:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x038]
	cmp r2, r0
	beq _0804A204
	ldr r1, [sp, #0x018]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804A20C
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0804A1FC
	ldr r1, _0804A39C @ =0x00000FFF
	adds r0, r0, r1
_0804A1FC:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x038]
	cmp r2, r0
	bne _0804A20C
_0804A204:
	movs r0, #0x01
	ldr r1, [sp, #0x034]
	orrs r1, r0
	str r1, [sp, #0x034]
_0804A20C:
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	mov r1, r8
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x00
	strb r1, [r5, #0x00]
	subs r2, #0x83
	adds r1, r7, r2
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	movs r2, #0x01
	ands r1, r2
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x028]
	ldr r2, [sp, #0x02C]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0804A240
	ldr r1, _0804A39C @ =0x00000FFF
	adds r0, r0, r1
_0804A240:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x038]
	cmp r2, r0
	beq _0804A264
	ldr r1, [sp, #0x018]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804A270
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0804A25C
	ldr r1, _0804A39C @ =0x00000FFF
	adds r0, r0, r1
_0804A25C:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x038]
	cmp r2, r0
	bne _0804A270
_0804A264:
	movs r0, #0x02
	ldr r1, [sp, #0x034]
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x034]
_0804A270:
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	mov r1, r8
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x00
	strb r1, [r5, #0x00]
	subs r2, #0x83
	adds r1, r7, r2
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	movs r2, #0x01
	ands r1, r2
	strb r1, [r4, #0x00]
	mov r1, r10
	ldr r2, [sp, #0x030]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0804A2A4
	ldr r1, _0804A39C @ =0x00000FFF
	adds r0, r0, r1
_0804A2A4:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x038]
	cmp r2, r0
	beq _0804A2C8
	ldr r1, [sp, #0x018]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804A2D4
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0804A2C0
	ldr r1, _0804A39C @ =0x00000FFF
	adds r0, r0, r1
_0804A2C0:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x038]
	cmp r2, r0
	bne _0804A2D4
_0804A2C8:
	movs r0, #0x04
	ldr r1, [sp, #0x034]
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x034]
_0804A2D4:
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	mov r1, r8
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x00
	strb r1, [r5, #0x00]
	subs r2, #0x83
	adds r1, r7, r2
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	movs r2, #0x01
	ands r1, r2
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x028]
	ldr r2, [sp, #0x030]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0804A308
	ldr r1, _0804A39C @ =0x00000FFF
	adds r0, r0, r1
_0804A308:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x038]
	cmp r2, r0
	beq _0804A32C
	ldr r1, [sp, #0x018]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804A338
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0804A324
	ldr r1, _0804A39C @ =0x00000FFF
	adds r0, r0, r1
_0804A324:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x038]
	cmp r2, r0
	bne _0804A338
_0804A32C:
	movs r0, #0x08
	ldr r1, [sp, #0x034]
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x034]
_0804A338:
	ldr r0, _0804A3A4 @ =0x083A0A2C
	ldrh r0, [r0, #0x00]
	ldr r2, [sp, #0x034]
	asrs r0, r2
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0804A34A
	b _0804A4B6
_0804A34A:
	mov r0, r10
	cmp r0, #0x00
	bge _0804A354
	ldr r0, _0804A39C @ =0x00000FFF
	add r0, r10
_0804A354:
	asrs r0, r0, #0x0C
	mov r10, r0
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	bge _0804A362
	ldr r1, _0804A39C @ =0x00000FFF
	adds r0, r0, r1
_0804A362:
	asrs r0, r0, #0x0C
	str r0, [sp, #0x028]
	ldr r0, [sp, #0x02C]
	cmp r0, #0x00
	bge _0804A370
	ldr r2, _0804A39C @ =0x00000FFF
	adds r0, r0, r2
_0804A370:
	asrs r0, r0, #0x0C
	str r0, [sp, #0x02C]
	ldr r0, [sp, #0x030]
	cmp r0, #0x00
	bge _0804A37E
	ldr r1, _0804A39C @ =0x00000FFF
	adds r0, r0, r1
_0804A37E:
	asrs r0, r0, #0x0C
	str r0, [sp, #0x030]
	ldr r0, [sp, #0x034]
	subs r0, #0x01
	cmp r0, #0x0E
	bhi _0804A414
	lsls r0, r0, #0x02
	ldr r1, _0804A3A8 @ =_0804A3AC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0804A394: .4byte 0x00000346
_0804A398: .4byte 0x00000347
_0804A39C: .4byte 0x00000FFF
_0804A3A0: .4byte 0x0000020D
_0804A3A4: .4byte 0x083A0A2C
_0804A3A8: .4byte _0804A3AC
_0804A3AC:
	.4byte _0804A3E8
	.4byte _0804A3EE
	.4byte _0804A3F4
	.4byte _0804A3FA
	.4byte _0804A400
	.4byte _0804A414
	.4byte _0804A414
	.4byte _0804A3EE
	.4byte _0804A414
	.4byte _0804A406
	.4byte _0804A414
	.4byte _0804A410
	.4byte _0804A414
	.4byte _0804A414
	.4byte _0804A414
_0804A3E8:
	mov r2, r10
	str r2, [sp, #0x028]
	b _0804A3F4
_0804A3EE:
	ldr r1, [sp, #0x028]
	mov r10, r1
	b _0804A410
_0804A3F4:
	ldr r0, [sp, #0x02C]
	str r0, [sp, #0x030]
	b _0804A414
_0804A3FA:
	mov r1, r10
	str r1, [sp, #0x028]
	b _0804A410
_0804A400:
	mov r0, r10
	str r0, [sp, #0x028]
	b _0804A414
_0804A406:
	ldr r0, [sp, #0x028]
	mov r10, r0
	b _0804A414
_0804A40C:
	lsls r1, r4, #0x0C
	b _0804A48A
_0804A410:
	ldr r2, [sp, #0x030]
	str r2, [sp, #0x02C]
_0804A414:
	ldr r0, [sp, #0x024]
	cmp r0, #0x00
	beq _0804A42A
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	ldr r1, _0804A484 @ =0x083A0A2E
	adds r0, r0, r1
	str r0, [sp, #0x03C]
_0804A42A:
	mov r1, r9
	ldrb r3, [r1, #0x00]
	adds r4, r3, #0x0
	cmp r10, r3
	bcc _0804A4A4
	ldr r2, [sp, #0x028]
	ldrb r0, [r1, #0x02]
	cmp r2, r0
	bhi _0804A4A4
	ldr r2, [sp, #0x02C]
	ldrb r0, [r1, #0x01]
	cmp r2, r0
	bcc _0804A4A4
	ldr r2, [sp, #0x030]
	ldrb r0, [r1, #0x03]
	cmp r2, r0
	bhi _0804A4A4
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1F
	mov r0, r9
	ldrb r2, [r0, #0x04]
	lsls r0, r2, #0x1B
	lsrs r0, r0, #0x1F
	cmp r1, r0
	bne _0804A4A4
	ldr r1, [sp, #0x024]
	cmp r1, #0x00
	beq _0804A488
	lsls r0, r2, #0x1C
	lsrs r1, r0, #0x1D
	ldr r2, [sp, #0x03C]
	ldrb r0, [r2, #0x00]
	cmp r0, r1
	beq _0804A40C
	ldrb r0, [r2, #0x01]
	cmp r0, r1
	beq _0804A40C
	ldrb r0, [r2, #0x02]
	cmp r0, r1
	beq _0804A40C
	b _0804A4A4
	.byte 0x00, 0x00
_0804A484: .4byte 0x083A0A2E
_0804A488:
	lsls r1, r3, #0x0C
_0804A48A:
	ldr r0, [r7, #0x0C]
	subs r0, r0, r1
	ldr r1, [sp, #0x01C]
	str r0, [r1, #0x00]
	mov r2, r9
	ldrb r1, [r2, #0x01]
	lsls r1, r1, #0x0C
	ldr r0, [r7, #0x10]
	subs r0, r0, r1
	ldr r1, [sp, #0x020]
	str r0, [r1, #0x00]
	mov r0, r9
	b _0804A4B8
_0804A4A4:
	mov r2, r9
	ldrb r1, [r2, #0x0A]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0804A4B6
	movs r0, #0x0C
	add r9, r0
	b _0804A42A
_0804A4B6:
	movs r0, #0x00
_0804A4B8:
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
