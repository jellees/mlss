	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_802641C__12FieldManageriiii
sub_802641C__12FieldManageriiii:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r6, [sp, #0x010]
	movs r4, #0x00
	subs r0, r2, #0x4
	cmp r0, #0x07
	bhi _08026438
	lsls r1, r3, #0x04
	ldr r0, _08026434 @ =0x083BBDD0
	adds r0, #0x0C
	b _08026444
	.byte 0x00, 0x00
_08026434: .4byte 0x083BBDD0
_08026438:
	cmp r2, #0x0B
	ble _0802645A
	lsls r1, r3, #0x01
	adds r1, r1, r3
	lsls r1, r1, #0x02
	ldr r0, _08026490 @ =0x083BCDC4
_08026444:
	adds r1, r1, r0
	ldr r0, _08026494 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x00]
_0802645A:
	cmp r4, #0x00
	beq _080264EE
	movs r1, #0xC7
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_80F032C
	ldr r0, [r5, #0x1C]
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r2, r0, r1
	ldr r0, _08026498 @ =0x0839F5C8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xFC
	cmp r1, #0x00
	beq _0802649E
_08026480:
	strb r1, [r2, #0x00]
	adds r0, #0x01
	adds r2, #0x01
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08026480
	b _0802649E
	.byte 0x00, 0x00
_08026490: .4byte 0x083BCDC4
_08026494: .4byte 0x0300034C
_08026498: .4byte 0x0839F5C8
_0802649C:
	adds r4, #0x01
_0802649E:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0802649C
	adds r4, #0x01
	b _080264AE
_080264A8:
	strb r0, [r2, #0x00]
	adds r4, #0x01
	adds r2, #0x01
_080264AE:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080264A8
	movs r1, #0xFF
	strb r1, [r2, #0x00]
	adds r2, #0x01
	movs r0, #0x0C
	strb r0, [r2, #0x00]
	adds r2, #0x01
	movs r0, #0x1E
	strb r0, [r2, #0x00]
	adds r2, #0x01
	strb r1, [r2, #0x00]
	adds r2, #0x01
	movs r0, #0x0A
	strb r0, [r2, #0x00]
	movs r0, #0x00
	strb r0, [r2, #0x01]
	movs r0, #0x01
	ands r6, r0
	lsls r2, r6, #0x01
	ldrb r1, [r3, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r2, #0x85
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x14
	strb r0, [r1, #0x00]
_080264EE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
