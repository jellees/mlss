	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start method11__20FieldPlayerCharacter
method11__20FieldPlayerCharacter:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl method11__11FieldObject
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x7F
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xD4
	lsls r1, r1, #0x02
	adds r3, r5, r1
	ldrb r1, [r3, #0x00]
	movs r4, #0x41
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r2, _0804A540 @ =0x0000033E
	adds r1, r5, r2
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r2, #0x04
	adds r1, r5, r2
	subs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, _0804A544 @ =0x00000353
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	ands r4, r0
	strb r4, [r1, #0x00]
	ldr r1, _0804A548 @ =0x00000351
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0804A54C
	movs r3, #0x02
	b _0804A568
	.byte 0x00, 0x00
_0804A540: .4byte 0x0000033E
_0804A544: .4byte 0x00000353
_0804A548: .4byte 0x00000351
_0804A54C:
	ldr r2, _0804A5CC @ =0x083A086C
	ldr r1, _0804A5D0 @ =0x00000352
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x07
	movs r1, #0x01
	eors r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	movs r2, #0x04
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
_0804A568:
	movs r4, #0x01
	ldr r0, _0804A5D0 @ =0x00000352
	adds r5, r5, r0
	adds r1, r3, #0x0
	ands r1, r4
	ldrb r2, [r5, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	lsrs r3, r3, #0x01
	adds r1, r3, #0x0
	ands r1, r4
	lsls r1, r1, #0x01
	movs r2, #0x03
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	lsrs r3, r3, #0x01
	adds r1, r3, #0x0
	ands r1, r4
	lsls r1, r1, #0x02
	subs r2, #0x02
	ands r0, r2
	orrs r0, r1
	lsrs r3, r3, #0x01
	adds r1, r3, #0x0
	ands r1, r4
	lsls r1, r1, #0x03
	subs r2, #0x04
	ands r0, r2
	orrs r0, r1
	lsrs r3, r3, #0x01
	adds r1, r3, #0x0
	ands r1, r4
	lsls r1, r1, #0x04
	subs r2, #0x08
	ands r0, r2
	orrs r0, r1
	lsrs r3, r3, #0x01
	ands r3, r4
	lsls r2, r3, #0x05
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0804A5CC: .4byte 0x083A086C
_0804A5D0: .4byte 0x00000352
