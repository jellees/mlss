	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start __20FieldPlayerCharacterii
__20FieldPlayerCharacterii:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	bl __11FieldObjectii
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, _08048144 @ =0x08CDBE88
	str r0, [r1, #0x00]
	ldr r1, _08048148 @ =0x00000355
	adds r0, r4, r1
	movs r6, #0x00
	strb r6, [r0, #0x00]
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x7F
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _0804814C @ =0x0000033D
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _08048150 @ =0x0000033E
	adds r1, r4, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	ldr r0, _08048154 @ =0x00000346
	adds r1, r4, r0
	movs r0, #0x0E
	strb r0, [r1, #0x00]
	ldr r0, _08048158 @ =0x00000347
	adds r1, r4, r0
	movs r0, #0x07
	strb r0, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r4, r1
	strb r6, [r0, #0x00]
	ldr r0, _0804815C @ =0x00000351
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldrb r2, [r1, #0x00]
	movs r5, #0x09
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldrh r2, [r1, #0x00]
	ldr r0, _08048160 @ =0xFFFFF00F
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, _08048164 @ =0x00000359
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r3, #0x11
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08048168 @ =0x00000352
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	subs r1, #0x02
	ands r0, r1
	ands r0, r5
	ands r0, r3
	subs r1, #0x1C
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0804816C @ =0x00000211
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08048170 @ =0x00000353
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r6, [r0, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08048144: .4byte 0x08CDBE88
_08048148: .4byte 0x00000355
_0804814C: .4byte 0x0000033D
_08048150: .4byte 0x0000033E
_08048154: .4byte 0x00000346
_08048158: .4byte 0x00000347
_0804815C: .4byte 0x00000351
_08048160: .4byte 0xFFFFF00F
_08048164: .4byte 0x00000359
_08048168: .4byte 0x00000352
_0804816C: .4byte 0x00000211
_08048170: .4byte 0x00000353
	thumb_func_start sub_8048174
sub_8048174:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	adds r6, r1, #0x0
	ldr r1, _080481B4 @ =0x083A09DC
	adds r4, r3, #0x0
	adds r4, #0x54
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	movs r2, #0x04
	ldsh r1, [r3, r2]
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	movs r2, #0x00
	ldsb r2, [r0, r2]
	ldrh r0, [r3, #0x04]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x04
	bls _080481A4
	asrs r0, r1, #0x10
	adds r5, r4, #0x0
	cmp r0, #0x0D
	bne _0804824E
_080481A4:
	adds r5, r4, #0x0
	cmp r6, #0x06
	bhi _0804824E
	lsls r0, r6, #0x02
	ldr r1, _080481B8 @ =0x080481BC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080481B4: .4byte 0x083A09DC
_080481B8: .4byte 0x080481BC
	.byte 0xD8, 0x81, 0x04, 0x08, 0xF8, 0x81, 0x04, 0x08, 0x08, 0x82, 0x04, 0x08, 0x30, 0x82, 0x04, 0x08
	.byte 0x40, 0x82, 0x04, 0x08, 0x4E, 0x82, 0x04, 0x08, 0x4E, 0x82, 0x04, 0x08, 0x1D, 0x1C, 0x54, 0x35
	.byte 0x01, 0x2A, 0x36, 0xD1, 0x04, 0x49, 0x58, 0x18, 0x01, 0x78, 0x20, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x2F, 0xD1, 0x00, 0x22, 0x2D, 0xE0, 0x00, 0x00, 0x13, 0x02, 0x00, 0x00, 0x18, 0x1C, 0x54, 0x30
	.byte 0x01, 0x78, 0x05, 0x1C, 0x00, 0x29, 0x30, 0xD1, 0x17, 0x22, 0x22, 0xE0, 0x18, 0x1C, 0x54, 0x30
	.byte 0x01, 0x78, 0x05, 0x1C, 0x00, 0x29, 0x28, 0xD1, 0x01, 0x2A, 0x07, 0xD1, 0x04, 0x4A, 0x98, 0x18
	.byte 0x01, 0x78, 0x20, 0x20, 0x08, 0x40, 0x0F, 0x22, 0x00, 0x28, 0x12, 0xD1, 0x0B, 0x22, 0x10, 0xE0
	.byte 0x13, 0x02, 0x00, 0x00, 0x18, 0x1C, 0x54, 0x30, 0x01, 0x78, 0x05, 0x1C, 0x01, 0x29, 0x08, 0xD1
	.byte 0x10, 0x22, 0x06, 0xE0, 0x18, 0x1C, 0x54, 0x30, 0x01, 0x78, 0x05, 0x1C, 0x01, 0x29, 0x00, 0xD1
	.byte 0x12, 0x22
_0804824E:
	ldrb r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08048266
	cmp r6, #0x02
	bne _08048266
	cmp r2, #0x07
	bne _08048260
	movs r2, #0x0C
	b _08048266
_08048260:
	cmp r2, #0x09
	bne _08048266
	movs r2, #0x0E
_08048266:
	cmp r2, #0x07
	bne _0804829C
	ldr r1, _08048298 @ =0x00000345
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x08
	beq _08048294
	subs r1, #0x02
	adds r0, r3, r1
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08048294
	movs r1, #0x2C
	ldsh r0, [r3, r1]
	cmp r0, #0x06
	beq _08048294
	cmp r0, #0x07
	bne _080482CC
_08048294:
	movs r2, #0x08
	b _080482CC
_08048298: .4byte 0x00000345
_0804829C:
	cmp r2, #0x0C
	bne _080482CC
	ldr r1, _080482DC @ =0x00000345
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x0D
	beq _080482CA
	subs r1, #0x02
	adds r0, r3, r1
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080482CA
	movs r1, #0x2C
	ldsh r0, [r3, r1]
	cmp r0, #0x06
	beq _080482CA
	cmp r0, #0x07
	bne _080482CC
_080482CA:
	movs r2, #0x0D
_080482CC:
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	strb r2, [r0, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080482DC: .4byte 0x00000345
	thumb_func_start sub_80482E0
sub_80482E0:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0x0
	bl method5__11FieldObject
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x19
	ldr r2, _0804841C @ =0x0000033D
	adds r3, r4, r2
	lsrs r1, r1, #0x19
	ldrb r2, [r3, #0x00]
	movs r0, #0x80
	negs r0, r0
	mov r8, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xD4
	lsls r1, r1, #0x02
	adds r6, r4, r1
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x19
	ldr r2, _08048420 @ =0x00000351
	adds r2, r2, r4
	mov r9, r2
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x05
	ldrb r2, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r9
	strb r0, [r1, #0x00]
	ldrb r1, [r5, #0x00]
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x07
	ldrb r2, [r3, #0x00]
	movs r5, #0x7F
	adds r0, r5, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r2, _08048424 @ =0x0000033E
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	ldr r1, _08048428 @ =0x00000342
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x15
	ldrh r2, [r6, #0x00]
	ldr r0, _0804842C @ =0xFFFFF87F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x03
	mov r0, r9
	ldrb r2, [r0, #0x00]
	movs r0, #0x19
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r9
	strb r0, [r1, #0x00]
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	movs r1, #0x8E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	adds r2, #0x0F
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	ldr r1, _08048430 @ =0x00000242
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	adds r2, #0x0E
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r0, _08048434 @ =0x00000353
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x07
	adds r0, r5, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldr r3, [r4, #0x00]
	ldrb r0, [r3, #0x16]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	adds r1, r5, #0x0
	ands r1, r0
	ldrb r2, [r3, #0x17]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x17]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x16]
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x07
	ldrb r2, [r1, #0x17]
	ands r5, r2
	orrs r5, r0
	strb r5, [r1, #0x17]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x16]
	mov r2, r8
	ands r2, r0
	strb r2, [r1, #0x16]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0804841C: .4byte 0x0000033D
_08048420: .4byte 0x00000351
_08048424: .4byte 0x0000033E
_08048428: .4byte 0x00000342
_0804842C: .4byte 0xFFFFF87F
_08048430: .4byte 0x00000242
_08048434: .4byte 0x00000353
	thumb_func_start sub_8048438
sub_8048438:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _080484DC @ =0x00000352
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080484F0
	ldr r6, _080484E0 @ =0x0000020F
	adds r0, r4, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080484FE
	ldr r1, _080484E4 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	bne _080484FE
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	bge _0804847A
	adds r1, #0xFF
_0804847A:
	asrs r1, r1, #0x08
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r3, r1, r0
	strh r3, [r4, #0x06]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08048490
	adds r1, #0xFF
_08048490:
	asrs r1, r1, #0x08
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	subs r1, #0x03
	strh r1, [r4, #0x08]
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r2, r4, r5
	ldr r1, [r2, #0x00]
	subs r5, #0x5A
	adds r0, r4, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	strh r0, [r1, #0x00]
	ldr r3, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080484BC
	adds r0, #0xFF
_080484BC:
	asrs r0, r0, #0x08
	ldrh r1, [r4, #0x08]
	subs r1, r1, r0
	ldr r5, _080484E8 @ =0x0000023B
	adds r0, r4, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x04
	adds r1, r1, r0
	strh r1, [r3, #0x02]
	ldr r1, [r2, #0x00]
	ldr r0, _080484EC @ =0x0000FFFF
	strh r0, [r1, #0x0E]
	strh r6, [r4, #0x0A]
	b _080484FE
_080484DC: .4byte 0x00000352
_080484E0: .4byte 0x0000020F
_080484E4: .4byte 0x00000216
_080484E8: .4byte 0x0000023B
_080484EC: .4byte 0x0000FFFF
_080484F0:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0x0
	bl method8__11FieldObjectUsUsPP11FieldObject
_080484FE:
	movs r6, #0xDB
	lsls r6, r6, #0x02
	adds r5, r4, r6
	ldr r3, [r5, #0x00]
	ldrb r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08048572
	ldr r1, _08048578 @ =0x00000353
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08048572
	subs r6, #0xD8
	adds r2, r4, r6
	ldr r1, [r2, #0x00]
	adds r6, #0xDE
	adds r0, r4, r6
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	ldr r3, [r5, #0x00]
	ldr r1, [r2, #0x00]
	adds r6, #0x01
	adds r0, r4, r6
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1, #0x02]
	adds r0, r0, r1
	strh r0, [r3, #0x02]
	ldr r3, [r5, #0x00]
	ldr r1, [r2, #0x00]
	adds r6, #0x01
	adds r0, r4, r6
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1, #0x0E]
	adds r0, r0, r1
	strh r0, [r3, #0x0E]
	ldr r3, [r5, #0x00]
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
_08048572:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08048578: .4byte 0x00000353
	thumb_func_start sub_804857C
sub_804857C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	bl method2__11FieldObjectPUsT1Pv
	movs r0, #0xDE
	lsls r0, r0, #0x02
	adds r0, r0, r7
	mov r9, r0
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	mov r10, r2
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080485A6
	b _080486D8
_080485A6:
	movs r3, #0xDC
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrh r1, [r0, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r5, r7, r1
	str r0, [r5, #0x00]
	ldr r2, _080486CC @ =0x0000037B
	adds r6, r7, r2
	ldrb r1, [r6, #0x00]
	movs r3, #0x00
	mov r8, r3
	str r3, [sp, #0x000]
	adds r2, r4, #0x0
	bl sub_801E150
	ldr r0, [r5, #0x00]
	ldrb r1, [r6, #0x00]
	movs r3, #0xDF
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r2, [r2, #0x00]
	mov r3, r8
	str r3, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sub_8021ED8
	ldr r3, [r5, #0x00]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1F
	mov r2, r10
	ands r1, r2
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r3, [r5, #0x00]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r5, #0x00]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x01
	ldrb r2, [r3, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r3, [r5, #0x00]
	ldr r1, _080486D0 @ =0x00000379
	adds r4, r7, r1
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	mov r2, r10
	ands r1, r2
	lsls r1, r1, #0x03
	ldrb r2, [r3, #0x12]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r3, [r5, #0x00]
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1F
	mov r0, r10
	ands r1, r0
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r1, [r5, #0x00]
	ldr r2, _080486D4 @ =0x0000037E
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x2A]
	ldr r1, [r5, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x2C]
	ldr r1, [r5, #0x00]
	adds r2, #0x04
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x04]
	ldr r1, [r5, #0x00]
	adds r3, #0x04
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x06]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	mov r1, r9
	strb r0, [r1, #0x00]
	b _080486F4
	.byte 0x00, 0x00
_080486CC: .4byte 0x0000037B
_080486D0: .4byte 0x00000379
_080486D4: .4byte 0x0000037E
_080486D8:
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	adds r1, r3, #0x0
	movs r2, #0x01
	bl sub_8020DD0
	movs r2, #0xDB
	lsls r2, r2, #0x02
	adds r1, r7, r2
	str r0, [r1, #0x00]
_080486F4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8048704
sub_8048704:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	bl method3__11FieldObject
	movs r0, #0xDB
	lsls r0, r0, #0x02
	adds r6, r7, r0
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080487E2
	ldrb r0, [r2, #0x11]
	lsls r0, r0, #0x19
	movs r1, #0xDE
	lsls r1, r1, #0x02
	adds r4, r7, r1
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x01
	ldrb r2, [r4, #0x00]
	movs r5, #0x03
	negs r5, r5
	adds r1, r5, #0x0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1C
	movs r2, #0x0D
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x06
	movs r2, #0x3F
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1C
	ldr r1, _080487E8 @ =0x00000379
	adds r3, r7, r1
	lsrs r0, r0, #0x1F
	ldrb r2, [r3, #0x00]
	movs r1, #0x02
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1B
	movs r2, #0x01
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x01
	ands r1, r5
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	ldr r3, _080487EC @ =0x0000037B
	adds r0, r7, r3
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, #0x23
	ldrb r1, [r0, #0x00]
	adds r3, #0x01
	adds r0, r7, r3
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrh r1, [r0, #0x2A]
	adds r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrh r1, [r0, #0x2C]
	adds r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrh r1, [r0, #0x04]
	adds r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrh r1, [r0, #0x06]
	adds r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldrb r0, [r4, #0x00]
	orrs r0, r2
	strb r0, [r4, #0x00]
_080487E2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080487E8: .4byte 0x00000379
_080487EC: .4byte 0x0000037B
	thumb_func_start sub_80487F0
sub_80487F0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r12, r1
	ldrh r5, [r4, #0x04]
	cmp r5, #0x03
	bhi _080488E4
	movs r7, #0x00
	ldr r1, _08048820 @ =0x00000216
	adds r0, r4, r1
	ldrb r3, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r3
	cmp r0, #0x00
	bne _08048824
	adds r1, #0x7E
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	ldrb r2, [r0, #0x00]
	movs r6, #0x00
	b _08048882
_08048820: .4byte 0x00000216
_08048824:
	ldr r2, _080488E0 @ =0x083A05EC
	lsls r1, r3, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	lsls r0, r3, #0x1B
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x7F
	ands r2, r0
	lsrs r6, r0, #0x07
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0x00
	beq _08048882
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	subs r0, #0x02
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _08048882
	subs r0, r5, #0x2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bhi _08048882
	movs r0, #0x04
	ldsh r1, [r4, r0]
	subs r1, #0x01
	lsls r0, r1, #0x02
	adds r0, r0, r1
	adds r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08048882:
	movs r1, #0x04
	ldsh r0, [r4, r1]
	cmp r0, #0x01
	bne _080488AA
	movs r1, #0x2C
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bne _080488AA
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	subs r0, #0x02
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _080488AA
	movs r7, #0x01
_080488AA:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r2
	bne _080488CE
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	cmp r0, r6
	bne _080488CE
	mov r0, r12
	cmp r0, #0x00
	bne _080488CE
	b _08048FF6
_080488CE:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r2, #0x0
	adds r2, r7, #0x0
	b _08048FE0
_080488E0: .4byte 0x083A05EC
_080488E4:
	ldr r2, _08048938 @ =0x083A05EC
	ldr r1, _0804893C @ =0x00000216
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x7F
	ands r2, r0
	lsrs r6, r0, #0x07
	ldr r1, _08048940 @ =0x00000352
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08048920
	b _08048C86
_08048920:
	subs r0, r5, #0x6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xAA
	bls _0804892C
	b _08048FAE
_0804892C:
	lsls r0, r0, #0x02
	ldr r1, _08048944 @ =0x08048948
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08048938: .4byte 0x083A05EC
_0804893C: .4byte 0x00000216
_08048940: .4byte 0x00000352
_08048944: .4byte 0x08048948
	.byte 0xF4, 0x8B, 0x04, 0x08, 0xFA, 0x8B, 0x04, 0x08, 0xF4, 0x8B, 0x04, 0x08, 0xFA, 0x8B, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xFE, 0x8B, 0x04, 0x08, 0xFE, 0x8B, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x02, 0x8C, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x08, 0x8C, 0x04, 0x08
	.byte 0x08, 0x8C, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x0E, 0x8C, 0x04, 0x08
	.byte 0x0E, 0x8C, 0x04, 0x08, 0x0E, 0x8C, 0x04, 0x08, 0x0E, 0x8C, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0x0E, 0x8C, 0x04, 0x08, 0x0E, 0x8C, 0x04, 0x08, 0x0E, 0x8C, 0x04, 0x08
	.byte 0x0E, 0x8C, 0x04, 0x08, 0x0E, 0x8C, 0x04, 0x08, 0x0E, 0x8C, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0x14, 0x8C, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x1E, 0x8C, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x1E, 0x8C, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x1E, 0x8C, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0x5C, 0x8C, 0x04, 0x08, 0x18, 0x8C, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x18, 0x8C, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x14, 0x8C, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x14, 0x8C, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x14, 0x8C, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x14, 0x8C, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x60, 0x8C, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x68, 0x8C, 0x04, 0x08
	.byte 0x68, 0x8C, 0x04, 0x08, 0x6E, 0x8C, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x74, 0x8C, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0x7A, 0x8C, 0x04, 0x08, 0x64, 0x8C, 0x04, 0x08, 0x64, 0x8C, 0x04, 0x08
	.byte 0x80, 0x8C, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xA6, 0x8F, 0x04, 0x08, 0x10, 0x1C, 0x0A, 0x30
	.byte 0xD7, 0xE1, 0x50, 0x1D, 0xD5, 0xE1, 0x50, 0x1D, 0xD3, 0xE1, 0x10, 0x1C, 0x14, 0x30, 0xD0, 0xE1
	.byte 0x10, 0x1C, 0x0F, 0x30, 0xCD, 0xE1, 0x10, 0x1C, 0x0F, 0x30, 0xCA, 0xE1, 0x50, 0x1D, 0xC8, 0xE1
	.byte 0x10, 0x1C, 0x0A, 0x30, 0xC5, 0xE1, 0x0B, 0x49, 0x60, 0x18, 0x01, 0x78, 0x80, 0x20, 0x08, 0x40
	.byte 0x00, 0x28, 0x00, 0xD1, 0xBF, 0xE1, 0x97, 0x21, 0x89, 0x00, 0x60, 0x18, 0x00, 0x68, 0x00, 0x28
	.byte 0x00, 0xDA, 0xB8, 0xE1, 0x04, 0x39, 0x60, 0x18, 0x00, 0x68, 0x00, 0x28, 0x04, 0xDD, 0x50, 0x1D
	.byte 0xAF, 0xE1, 0x00, 0x00, 0x16, 0x02, 0x00, 0x00, 0x00, 0x28, 0x00, 0xDB, 0xAB, 0xE1, 0x10, 0x1C
	.byte 0x0A, 0x30, 0xA6, 0xE1, 0x50, 0x1D, 0xA4, 0xE1, 0x90, 0x1C, 0xA2, 0xE1, 0x50, 0x1D, 0xA0, 0xE1
	.byte 0x10, 0x1C, 0x0A, 0x30, 0x9D, 0xE1, 0x10, 0x1C, 0x0F, 0x30, 0x9A, 0xE1, 0x10, 0x1C, 0x1E, 0x30
	.byte 0x97, 0xE1, 0x10, 0x1C, 0x1E, 0x30, 0x94, 0xE1, 0x10, 0x1C, 0x14, 0x30, 0x91, 0xE1
_08048C86:
	adds r0, r5, #0x0
	subs r0, #0x0B
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xA5
	bls _08048C94
	b _08048FAE
_08048C94:
	lsls r0, r0, #0x02
	ldr r1, _08048CA0 @ =0x08048CA4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08048CA0: .4byte 0x08048CA4
	.byte 0x3C, 0x8F, 0x04, 0x08, 0x3C, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08
	.byte 0x44, 0x8F, 0x04, 0x08, 0x82, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08, 0x82, 0x8F, 0x04, 0x08, 0x82, 0x8F, 0x04, 0x08
	.byte 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08
	.byte 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08, 0xA6, 0x8F, 0x04, 0x08, 0xA6, 0x8F, 0x04, 0x08
	.byte 0xA6, 0x8F, 0x04, 0x08, 0xA6, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08
	.byte 0xA6, 0x8F, 0x04, 0x08, 0xA6, 0x8F, 0x04, 0x08, 0xA6, 0x8F, 0x04, 0x08, 0xA6, 0x8F, 0x04, 0x08
	.byte 0xA6, 0x8F, 0x04, 0x08, 0xA6, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08
	.byte 0x44, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0x40, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08
	.byte 0x44, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x3C, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08
	.byte 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08
	.byte 0x44, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x3C, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x4A, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08
	.byte 0x44, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x3C, 0x8F, 0x04, 0x08, 0x3C, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0x3C, 0x8F, 0x04, 0x08, 0x3C, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x3C, 0x8F, 0x04, 0x08, 0x3C, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x3C, 0x8F, 0x04, 0x08, 0x3C, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0x4A, 0x8F, 0x04, 0x08, 0x88, 0x8F, 0x04, 0x08, 0x8C, 0x8F, 0x04, 0x08
	.byte 0x90, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0x94, 0x8F, 0x04, 0x08, 0x94, 0x8F, 0x04, 0x08
	.byte 0x9A, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xAE, 0x8F, 0x04, 0x08, 0x40, 0x8F, 0x04, 0x08, 0x44, 0x8F, 0x04, 0x08, 0xAE, 0x8F, 0x04, 0x08
	.byte 0xA0, 0x8F, 0x04, 0x08, 0xA6, 0x8F, 0x04, 0x08, 0x50, 0x1D, 0x34, 0xE0, 0x50, 0x1D, 0x32, 0xE0
	.byte 0x10, 0x1C, 0x0A, 0x30, 0x2F, 0xE0, 0x0A, 0x49, 0x60, 0x18, 0x01, 0x78, 0x80, 0x20, 0x08, 0x40
	.byte 0x00, 0x28, 0x2A, 0xD0, 0x97, 0x21, 0x89, 0x00, 0x60, 0x18, 0x00, 0x68, 0x00, 0x28, 0x24, 0xDB
	.byte 0x04, 0x39, 0x60, 0x18, 0x00, 0x68, 0x00, 0x28, 0x04, 0xDD, 0x50, 0x1D, 0x1B, 0xE0, 0x00, 0x00
	.byte 0x16, 0x02, 0x00, 0x00, 0x00, 0x28, 0x18, 0xDA, 0x10, 0x1C, 0x0A, 0x30, 0x13, 0xE0, 0x10, 0x1C
	.byte 0x14, 0x30, 0x10, 0xE0, 0x50, 0x1C, 0x0E, 0xE0, 0x90, 0x1C, 0x0C, 0xE0, 0xD0, 0x1C, 0x0A, 0xE0
	.byte 0x10, 0x1C, 0x0A, 0x30, 0x07, 0xE0, 0x10, 0x1C, 0x0F, 0x30, 0x04, 0xE0, 0x10, 0x1C, 0x14, 0x30
	.byte 0x01, 0xE0, 0x10, 0x1C, 0x19, 0x30, 0x00, 0x06, 0x02, 0x0E
_08048FAE:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r2
	bne _08048FD0
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	cmp r0, r6
	bne _08048FD0
	mov r0, r12
	cmp r0, #0x00
	beq _08048FF6
_08048FD0:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r2, #0x0
	movs r2, #0x00
_08048FE0:
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r4, #0x00]
	lsls r3, r6, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x11]
_08048FF6:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8049000
sub_8049000:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x86
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldrh r0, [r5, #0x00]
	cmp r0, r1
	beq _080490AC
	strh r1, [r5, #0x00]
	ldr r1, _080490B4 @ =0x0000026E
	adds r4, r6, r1
	ldrb r0, [r4, #0x00]
	cmp r0, #0xFF
	beq _08049040
	movs r2, #0xCD
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	movs r2, #0x00
	bl sub_8115048
	movs r0, #0x9B
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r0, _080490B8 @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0xFF
	strb r0, [r4, #0x00]
_08049040:
	movs r3, #0x00
	ldrh r1, [r5, #0x00]
	ldr r2, _080490BC @ =0xFFFFEFFF
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _08049056
	ldr r0, _080490C0 @ =0x00001028
	cmp r1, r0
	bne _08049058
_08049056:
	movs r3, #0x01
_08049058:
	ldr r0, _080490C4 @ =0x00000216
	adds r2, r6, r0
	lsls r3, r3, #0x07
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r0, [r5, #0x00]
	movs r2, #0x86
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldrh r2, [r1, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80210A8
	ldr r1, [r5, #0x00]
	ldrb r0, [r1, #0x1E]
	lsrs r0, r0, #0x04
	adds r0, #0x01
	lsls r0, r0, #0x0C
	ldrh r1, [r1, #0x1C]
	orrs r0, r1
	ldr r2, _080490C8 @ =0x0000021E
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x01
	adds r2, r4, #0x0
	adds r3, r4, #0x0
	bl sub_8040804__11FieldObjectbii
_080490AC:
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080490B4: .4byte 0x0000026E
_080490B8: .4byte 0x0000FFFF
_080490BC: .4byte 0xFFFFEFFF
_080490C0: .4byte 0x00001028
_080490C4: .4byte 0x00000216
_080490C8: .4byte 0x0000021E
	thumb_func_start sub_80490CC
sub_80490CC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080490E8
	b _08049218
_080490E8:
	ldr r1, _08049138 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080490F8
	b _08049218
_080490F8:
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _08049188
	cmp r5, #0x00
	beq _08049170
	adds r1, #0x59
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _08049170
	movs r0, #0x04
	strh r0, [r4, #0x04]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08049144
	ldr r1, _0804913C @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _08049140 @ =0x0000103B
	cmp r0, #0x00
	beq _08049146
	adds r1, #0x01
	b _08049146
_08049138: .4byte 0x00000216
_0804913C: .4byte 0x0000035B
_08049140: .4byte 0x0000103B
_08049144:
	ldr r1, _0804916C @ =0x00001052
_08049146:
	adds r0, r4, #0x0
	bl sub_8049000
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x04
	beq _080491AE
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _080491AE
	.byte 0x00, 0x00
_0804916C: .4byte 0x00001052
_08049170:
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r2, r2, r0
	ldr r0, [r4, #0x3C]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	cmp r2, r0
	blt _08049184
	movs r0, #0x02
	b _080491AC
_08049184:
	movs r0, #0x03
	b _080491AC
_08049188:
	ldr r1, _080491A8 @ =0x00000242
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080491A2
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080491AC
_080491A2:
	strh r2, [r4, #0x04]
	b _080491AE
	.byte 0x00, 0x00
_080491A8: .4byte 0x00000242
_080491AC:
	strh r0, [r4, #0x04]
_080491AE:
	cmp r5, #0x00
	beq _08049218
	ldr r1, _080491F0 @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _08049218
	movs r1, #0x2C
	ldsh r0, [r4, r1]
	cmp r0, #0x04
	bne _08049218
	movs r1, #0x04
	ldsh r0, [r4, r1]
	cmp r0, #0x04
	beq _08049218
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080491FC
	ldr r1, _080491F4 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _080491F8 @ =0x00001001
	cmp r0, #0x00
	beq _080491FE
	adds r1, #0x27
	b _080491FE
	.byte 0x00, 0x00
_080491F0: .4byte 0x000002B5
_080491F4: .4byte 0x0000035B
_080491F8: .4byte 0x00001001
_080491FC:
	ldr r1, _08049220 @ =0x00001002
_080491FE:
	adds r0, r4, #0x0
	bl sub_8049000
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
_08049218:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08049220: .4byte 0x00001002
	thumb_func_start sub_8049224
sub_8049224:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x04
	ldsh r0, [r5, r1]
	cmp r0, #0x04
	beq _0804927C
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0804926C
	ldr r2, _08049264 @ =0x0000035B
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _08049268 @ =0x0000103B
	cmp r0, #0x00
	beq _0804926E
	adds r1, #0x01
	b _0804926E
	.byte 0x00, 0x00
_08049264: .4byte 0x0000035B
_08049268: .4byte 0x0000103B
_0804926C:
	ldr r1, _08049278 @ =0x00001052
_0804926E:
	adds r0, r5, #0x0
	bl sub_8049000
	b _0804929C
	.byte 0x00, 0x00
_08049278: .4byte 0x00001052
_0804927C:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0804929C
	movs r3, #0x01
	negs r3, r3
	adds r0, r5, #0x0
	movs r1, #0x01
	adds r2, r3, #0x0
	bl sub_8040804__11FieldObjectbii
_0804929C:
	movs r1, #0x99
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r3, _080492D4 @ =0x00000266
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r2, [r0, r3]
	movs r4, #0x01
	negs r4, r4
	adds r0, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80401F0__11FieldObjectiii
	ldr r0, _080492D8 @ =0x00000355
	adds r1, r5, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r0, #0x04
	strh r0, [r5, #0x04]
	movs r0, #0xD7
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	pop {r4, r5}
	pop {r0}
	bx r0
_080492D4: .4byte 0x00000266
_080492D8: .4byte 0x00000355
	thumb_func_start sub_80492DC
sub_80492DC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x54
	ldrb r2, [r0, #0x00]
	cmp r2, #0x00
	bne _080492F6
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _0804933C @ =0x0000103E
	cmp r1, r0
	beq _08049308
_080492F6:
	cmp r2, #0x01
	bne _08049354
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _08049340 @ =0x00001053
	cmp r1, r0
	bne _08049354
_08049308:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0804934C
	ldr r1, _08049344 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _08049348 @ =0x00001001
	cmp r0, #0x00
	beq _0804934E
	adds r1, #0x27
	b _0804934E
	.byte 0x00, 0x00
_0804933C: .4byte 0x0000103E
_08049340: .4byte 0x00001053
_08049344: .4byte 0x0000035B
_08049348: .4byte 0x00001001
_0804934C:
	ldr r1, _08049368 @ =0x00001002
_0804934E:
	adds r0, r4, #0x0
	bl sub_8049000
_08049354:
	ldr r0, _0804936C @ =0x0000035A
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08049368: .4byte 0x00001002
_0804936C: .4byte 0x0000035A
	thumb_func_start sub_8049370
sub_8049370:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080493B4
	ldr r1, _080493AC @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _080493B0 @ =0x00001025
	cmp r0, #0x00
	beq _080493B6
	adds r1, #0x04
	b _080493B6
	.byte 0x00, 0x00
_080493AC: .4byte 0x0000035B
_080493B0: .4byte 0x00001025
_080493B4:
	ldr r1, _080493E4 @ =0x0000103F
_080493B6:
	adds r0, r4, #0x0
	bl sub_8049000
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	cmp r5, #0x00
	bne _080493E8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3C
	bl play_sfx_80195B4
	b _080493F2
	.byte 0x00, 0x00
_080493E4: .4byte 0x0000103F
_080493E8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3C
	bl play_sfx_80195B4
_080493F2:
	movs r0, #0x05
	strh r0, [r4, #0x04]
	ldr r0, _08049424 @ =0x00000212
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08049428 @ =0x00000359
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0804942C @ =0x00000353
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08049424: .4byte 0x00000212
_08049428: .4byte 0x00000359
_0804942C: .4byte 0x00000353
	thumb_func_start sub_8049430
sub_8049430:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08049470
	ldr r1, _08049468 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _0804946C @ =0x00001026
	cmp r0, #0x00
	beq _08049474
	adds r1, #0x04
	b _08049474
	.byte 0x00, 0x00
_08049468: .4byte 0x0000035B
_0804946C: .4byte 0x00001026
_08049470:
	movs r1, #0x82
	lsls r1, r1, #0x05
_08049474:
	adds r0, r4, #0x0
	bl sub_8049000
	movs r1, #0x00
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0B
	bne _0804948C
	movs r1, #0x01
_0804948C:
	adds r0, r4, #0x0
	bl sub_804955C
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	movs r2, #0x87
	cmp r0, #0x00
	bne _080494A0
	adds r2, #0xD0
_080494A0:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
	movs r1, #0x00
	movs r0, #0x0A
	strh r0, [r4, #0x04]
	ldr r2, _080494CC @ =0x00000355
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	ldr r0, _080494D0 @ =0x00000359
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080494CC: .4byte 0x00000355
_080494D0: .4byte 0x00000359
	thumb_func_start sub_80494D4
sub_80494D4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8020D40
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08049520
	ldr r1, _08049518 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _0804951C @ =0x00001001
	cmp r0, #0x00
	beq _08049522
	adds r1, #0x27
	b _08049522
	.byte 0x00, 0x00
_08049518: .4byte 0x0000035B
_0804951C: .4byte 0x00001001
_08049520:
	ldr r1, _08049558 @ =0x00001002
_08049522:
	adds r0, r4, #0x0
	bl sub_8049000
	adds r5, r4, #0x0
	adds r5, #0x54
	ldrb r0, [r5, #0x00]
	movs r1, #0x87
	cmp r0, #0x00
	bne _08049536
	adds r1, #0xD0
_08049536:
	adds r0, r1, #0x0
	bl stop_sfx_80195A8
	ldrb r0, [r5, #0x00]
	movs r1, #0xAB
	lsls r1, r1, #0x01
	cmp r0, #0x00
	bne _08049548
	adds r1, #0x02
_08049548:
	adds r0, r1, #0x0
	bl stop_sfx_80195A8
	movs r0, #0x00
	strh r0, [r4, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
_08049558: .4byte 0x00001002
	thumb_func_start sub_804955C
sub_804955C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	ldr r1, _080496A0 @ =0x0000105A
	adds r2, r1, #0x0
	cmp r0, #0x00
	bne _0804957A
	ldr r3, _080496A4 @ =0x00001059
	adds r2, r3, #0x0
_0804957A:
	movs r4, #0xDC
	lsls r4, r4, #0x02
	adds r1, r7, r4
	movs r0, #0x00
	mov r8, r0
	strh r2, [r1, #0x00]
	movs r3, #0xDB
	lsls r3, r3, #0x02
	adds r5, r7, r3
	ldr r0, [r5, #0x00]
	ldrh r2, [r1, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80210A8
	ldr r0, [r5, #0x00]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sub_8021ED8
	lsls r2, r6, #0x01
	adds r2, r2, r6
	lsls r2, r2, #0x03
	ldr r0, _080496A8 @ =0x083A09E4
	adds r2, r2, r0
	ldr r4, _080496AC @ =0x00000353
	adds r3, r7, r4
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x24
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	lsls r0, r1, #0x01
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ldr r1, _080496B0 @ =0x00000372
	adds r1, r1, r7
	mov r9, r1
	strb r0, [r1, #0x00]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	lsls r0, r1, #0x01
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #0x01]
	adds r4, #0x20
	adds r4, r4, r7
	mov r8, r4
	strb r0, [r4, #0x00]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	lsls r0, r1, #0x01
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #0x02]
	movs r1, #0xDD
	lsls r1, r1, #0x02
	adds r1, r1, r7
	mov r12, r1
	strb r0, [r1, #0x00]
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r4, [r5, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r7, r0
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r4, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r2, [r5, #0x00]
	ldr r1, [r3, #0x00]
	mov r4, r9
	movs r0, #0x00
	ldsb r0, [r4, r0]
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldr r1, [r3, #0x00]
	mov r4, r8
	movs r0, #0x00
	ldsb r0, [r4, r0]
	ldrh r1, [r1, #0x02]
	adds r0, r0, r1
	strh r0, [r2, #0x02]
	ldr r2, [r5, #0x00]
	ldr r1, [r3, #0x00]
	mov r3, r12
	movs r0, #0x00
	ldsb r0, [r3, r0]
	ldrh r1, [r1, #0x0E]
	adds r0, r0, r1
	strh r0, [r2, #0x0E]
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080496A0: .4byte 0x0000105A
_080496A4: .4byte 0x00001059
_080496A8: .4byte 0x083A09E4
_080496AC: .4byte 0x00000353
_080496B0: .4byte 0x00000372
	thumb_func_start sub_80496B4
sub_80496B4:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x010
	adds r5, r0, #0x0
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r1, #0x00
	mov r9, r1
	movs r1, #0x00
	mov r8, r1
	ldr r2, _08049798 @ =0x00001045
	strh r2, [r0, #0x00]
	movs r0, #0xDB
	lsls r0, r0, #0x02
	adds r6, r5, r0
	ldr r0, [r6, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r3, #0x01
	bl sub_80210A8
	ldr r0, [r6, #0x00]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x01
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x00]
	bl sub_8021ED8
	ldr r0, _0804979C @ =0x00000353
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _080497A0 @ =0x00000372
	adds r0, r5, r1
	mov r1, r9
	strb r1, [r0, #0x00]
	ldr r1, _080497A4 @ =0x00000373
	adds r0, r5, r1
	mov r1, r9
	strb r1, [r0, #0x00]
	movs r1, #0xDD
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r1, #0xFC
	strb r1, [r0, #0x00]
	ldr r3, [r6, #0x00]
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x11]
	ldr r3, [r6, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r5, r0
	ldr r0, [r5, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	ldrb r2, [r3, #0x1F]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x1F]
	ldr r3, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrh r0, [r0, #0x0E]
	strh r0, [r1, #0x0E]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08049798: .4byte 0x00001045
_0804979C: .4byte 0x00000353
_080497A0: .4byte 0x00000372
_080497A4: .4byte 0x00000373
	thumb_func_start sub_80497A8
sub_80497A8:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x010
	adds r5, r0, #0x0
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x00
	mov r9, r3
	movs r1, #0x00
	mov r8, r1
	ldr r2, _080498A4 @ =0x00001054
	strh r2, [r0, #0x00]
	movs r3, #0xDB
	lsls r3, r3, #0x02
	adds r6, r5, r3
	ldr r0, [r6, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r3, #0x01
	bl sub_80210A8
	ldr r0, [r6, #0x00]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x00]
	bl sub_8021ED8
	ldr r3, _080498A8 @ =0x00000353
	adds r2, r5, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080498AC @ =0x00000372
	adds r4, r5, r0
	mov r1, r9
	strb r1, [r4, #0x00]
	adds r3, #0x20
	adds r3, r3, r5
	mov r8, r3
	movs r0, #0xF0
	strb r0, [r3, #0x00]
	movs r0, #0xDD
	lsls r0, r0, #0x02
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xFC
	strb r1, [r0, #0x00]
	ldr r3, [r6, #0x00]
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x11]
	ldr r3, [r6, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r5, r0
	ldr r0, [r5, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	ldrb r2, [r3, #0x1F]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x1F]
	ldr r3, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	movs r0, #0x00
	ldsb r0, [r4, r0]
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	mov r3, r8
	movs r0, #0x00
	ldsb r0, [r3, r0]
	ldrh r1, [r1, #0x02]
	adds r0, r0, r1
	strh r0, [r2, #0x02]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	mov r3, r9
	movs r0, #0x00
	ldsb r0, [r3, r0]
	ldrh r1, [r1, #0x0E]
	adds r0, r0, r1
	strh r0, [r2, #0x0E]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080498A4: .4byte 0x00001054
_080498A8: .4byte 0x00000353
_080498AC: .4byte 0x00000372
	.byte 0x70, 0xB5, 0x4E, 0x46, 0x45, 0x46, 0x60, 0xB4, 0x84, 0xB0, 0x05, 0x1C, 0xDC, 0x21, 0x89, 0x00
	.byte 0x68, 0x18, 0x00, 0x23, 0x99, 0x46, 0x00, 0x21, 0x88, 0x46, 0x38, 0x4A, 0x02, 0x80, 0xDB, 0x23
	.byte 0x9B, 0x00, 0xEE, 0x18, 0x30, 0x68, 0x01, 0x24, 0x64, 0x42, 0x00, 0x94, 0x01, 0x94, 0x02, 0x94
	.byte 0x03, 0x94, 0x01, 0x23, 0xD7, 0xF7, 0xE0, 0xFB, 0x30, 0x68, 0x41, 0x46, 0x00, 0x91, 0x00, 0x21
	.byte 0x22, 0x1C, 0x00, 0x23, 0xD4, 0xF7, 0x2C, 0xFC, 0x30, 0x68, 0xD8, 0xF7, 0xED, 0xFA, 0x2C, 0x4B
	.byte 0xEA, 0x18, 0x10, 0x78, 0x01, 0x21, 0x08, 0x43, 0x10, 0x70, 0x2A, 0x48, 0x2C, 0x18, 0x49, 0x46
	.byte 0x21, 0x70, 0x20, 0x33, 0x5B, 0x19, 0x98, 0x46, 0xE0, 0x20, 0x18, 0x70, 0xDD, 0x20, 0x80, 0x00
	.byte 0x40, 0x19, 0x81, 0x46, 0xFC, 0x21, 0x01, 0x70, 0x33, 0x68, 0x5A, 0x7C, 0x41, 0x20, 0x40, 0x42
	.byte 0x10, 0x40, 0x58, 0x74, 0x33, 0x68, 0xA5, 0x20, 0x80, 0x00, 0x2D, 0x18, 0x28, 0x68, 0xC0, 0x7F
	.byte 0x80, 0x07, 0x80, 0x0F, 0xDA, 0x7F, 0x11, 0x40, 0x01, 0x43, 0xD9, 0x77, 0x33, 0x68, 0x28, 0x68
	.byte 0xC0, 0x7F, 0x0C, 0x21, 0x01, 0x40, 0xDA, 0x7F, 0x0D, 0x20, 0x40, 0x42, 0x10, 0x40, 0x08, 0x43
	.byte 0xD8, 0x77, 0x32, 0x68, 0x29, 0x68, 0x00, 0x20, 0x20, 0x56, 0x09, 0x88, 0x40, 0x18, 0x10, 0x80
	.byte 0x32, 0x68, 0x29, 0x68, 0x43, 0x46, 0x00, 0x20, 0x18, 0x56, 0x49, 0x88, 0x40, 0x18, 0x50, 0x80
	.byte 0x32, 0x68, 0x29, 0x68, 0x4B, 0x46, 0x00, 0x20, 0x18, 0x56, 0xC9, 0x89, 0x40, 0x18, 0xD0, 0x81
	.byte 0x32, 0x68, 0x91, 0x7C, 0x07, 0x20, 0x40, 0x42, 0x08, 0x40, 0x90, 0x74, 0x04, 0xB0, 0x18, 0xBC
	.byte 0x98, 0x46, 0xA1, 0x46, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x04, 0x80, 0x00, 0x00
	.byte 0x53, 0x03, 0x00, 0x00, 0x72, 0x03, 0x00, 0x00
	thumb_func_start sub_80499B8
sub_80499B8:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x010
	adds r5, r0, #0x0
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r1, #0x00
	mov r8, r1
	movs r1, #0x00
	mov r9, r1
	ldr r2, _08049AA4 @ =0x0000800B
	strh r2, [r0, #0x00]
	movs r0, #0xDB
	lsls r0, r0, #0x02
	adds r6, r5, r0
	ldr r0, [r6, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x02
	movs r3, #0x01
	bl sub_80210A8
	ldr r0, [r6, #0x00]
	mov r1, r9
	str r1, [sp, #0x000]
	movs r1, #0x02
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x00]
	bl sub_8021ED8
	ldr r0, _08049AA8 @ =0x00000353
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08049AAC @ =0x00000372
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0, #0x00]
	ldr r1, _08049AB0 @ =0x00000373
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0, #0x00]
	movs r1, #0xDD
	lsls r1, r1, #0x02
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r3, [r6, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r5, r0
	ldr r0, [r5, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r3, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x00]
	ldrh r0, [r0, #0x0E]
	strh r0, [r1, #0x0E]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08049AA4: .4byte 0x0000800B
_08049AA8: .4byte 0x00000353
_08049AAC: .4byte 0x00000372
_08049AB0: .4byte 0x00000373
	thumb_func_start sub_8049AB4
sub_8049AB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	mov r8, r2
	cmp r7, #0x00
	beq _08049ACC
	cmp r7, #0x01
	beq _08049B64
	b _08049BC8
_08049ACC:
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, _08049B5C @ =0x0000800B
	strh r2, [r0, #0x00]
	movs r0, #0xDB
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r0, [r5, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x02
	movs r3, #0x01
	bl sub_80210A8
	ldr r0, [r5, #0x00]
	str r7, [sp, #0x000]
	mov r1, r8
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sub_8021ED8
	ldr r1, _08049B60 @ =0x00000353
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r4, [r5, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r3, r6, r2
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r4, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r1, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrh r0, [r0, #0x0E]
	strh r0, [r1, #0x0E]
	b _08049BC8
_08049B5C: .4byte 0x0000800B
_08049B60: .4byte 0x00000353
_08049B64:
	adds r0, r6, #0x0
	bl method3__11FieldObject
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	ldr r2, _08049BB4 @ =0x00000356
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	movs r0, #0xD6
	lsls r0, r0, #0x02
	adds r3, r6, r0
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08049BC0
	ldr r1, _08049BB8 @ =0x0000035B
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _08049BBC @ =0x00001032
	cmp r0, #0x00
	beq _08049BC2
	adds r1, #0x0B
	b _08049BC2
	.byte 0x00, 0x00
_08049BB4: .4byte 0x00000356
_08049BB8: .4byte 0x0000035B
_08049BBC: .4byte 0x00001032
_08049BC0:
	ldr r1, _08049BD4 @ =0x0000104B
_08049BC2:
	adds r0, r6, #0x0
	bl sub_8049000
_08049BC8:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08049BD4: .4byte 0x0000104B
	thumb_func_start sub_8049BD8
sub_8049BD8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	movs r0, #0xDA
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r3, [r2, #0x00]
	cmp r3, r6
	beq _08049C2C
	movs r1, #0x13
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08049C12
	strb r3, [r2, #0x01]
	ldr r2, [r4, #0x00]
	ldr r1, _08049C34 @ =0x00000352
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x07
	movs r0, #0x01
	eors r1, r0
	adds r0, r2, #0x0
	adds r0, #0x10
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x13]
_08049C12:
	ldr r0, [r4, #0x00]
	movs r3, #0x00
	strb r6, [r0, #0x00]
	ldr r2, [r4, #0x00]
	ldr r1, _08049C34 @ =0x00000352
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x07
	movs r1, #0x01
	eors r0, r1
	adds r2, #0x10
	adds r2, r2, r0
	strb r3, [r2, #0x00]
_08049C2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08049C34: .4byte 0x00000352
	thumb_func_start sub_8049C38
sub_8049C38:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	str r1, [sp, #0x000]
	ldr r0, _08049E6C @ =0x00000216
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08049C58
	b _08049FDA
_08049C58:
	movs r0, #0x83
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldr r1, _08049E70 @ =0x02001000
	ands r0, r1
	cmp r0, r1
	beq _08049C6A
	b _08049FDA
_08049C6A:
	cmp r2, #0x00
	bgt _08049C70
	b _08049FDA
_08049C70:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	mov r10, r0
	mov r1, r8
	add r1, r10
	mov r9, r1
	str r2, [sp, #0x004]
	ldr r2, _08049E74 @ =0x00000283
	add r2, r8
	str r2, [sp, #0x008]
_08049C84:
	ldr r3, [sp, #0x000]
	ldr r6, [r3, #0x00]
	mov r0, r8
	adds r0, #0x54
	adds r1, r6, #0x0
	adds r1, #0x54
	ldrb r0, [r0, #0x00]
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bne _08049C9A
	b _08049FC8
_08049C9A:
	ldr r4, _08049E6C @ =0x00000216
	adds r0, r6, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08049CAA
	b _08049FC8
_08049CAA:
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, _08049E70 @ =0x02001000
	ands r0, r1
	cmp r0, r1
	beq _08049CBC
	b _08049FC8
_08049CBC:
	mov r2, r8
	movs r3, #0x06
	ldsh r7, [r2, r3]
	ldr r1, _08049E78 @ =0x00000282
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsrs r5, r0, #0x01
	subs r2, r7, r5
	movs r0, #0x06
	ldsh r4, [r6, r0]
	adds r1, r6, r1
	ldrb r0, [r1, #0x00]
	lsrs r3, r0, #0x01
	adds r0, r4, r3
	cmp r2, r0
	blt _08049CDE
	b _08049FC8
_08049CDE:
	adds r1, r7, r5
	subs r0, r4, r3
	cmp r1, r0
	bgt _08049CE8
	b _08049FC8
_08049CE8:
	mov r1, r9
	ldr r7, [r1, #0x00]
	movs r2, #0x02
	ldsh r5, [r7, r2]
	mov r3, r10
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r1, #0x02
	ldsh r4, [r0, r1]
	ldr r2, _08049E74 @ =0x00000283
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	adds r0, r4, r1
	cmp r5, r0
	blt _08049D0A
	b _08049FC8
_08049D0A:
	subs r0, r4, r1
	cmp r5, r0
	bgt _08049D12
	b _08049FC8
_08049D12:
	mov r3, r8
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _08049D1C
	adds r0, #0xFF
_08049D1C:
	asrs r1, r0, #0x08
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	bge _08049D26
	adds r0, #0xFF
_08049D26:
	asrs r0, r0, #0x08
	cmp r1, r0
	bge _08049D4E
	mov r0, r8
	ldr r3, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r3, r3, r0
	str r3, [sp, #0x00C]
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	movs r3, #0x9D
	lsls r3, r3, #0x02
	adds r2, r6, r3
	adds r0, r0, r1
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	ldr r1, [sp, #0x00C]
	cmp r1, r0
	bge _08049D4E
	b _08049E80
_08049D4E:
	ldr r0, _08049E7C @ =0x00000352
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08049D5E
	b _08049E80
_08049D5E:
	adds r0, r5, #0x0
	subs r0, #0x10
	cmp r0, r4
	bge _08049D8A
	ldrb r3, [r7, #0x1F]
	lsls r0, r3, #0x1C
	mov r2, r12
	ldrb r1, [r2, #0x1F]
	lsls r2, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsrs r1, r2, #0x1E
	cmp r0, r1
	bls _08049D8A
	adds r0, r1, #0x0
	movs r1, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r7, #0x1F]
_08049D8A:
	mov r4, r9
	ldr r3, [r4, #0x00]
	movs r0, #0x02
	ldsh r1, [r3, r0]
	ldr r2, [sp, #0x008]
	ldrb r0, [r2, #0x00]
	subs r1, r1, r0
	mov r4, r10
	adds r0, r6, r4
	ldr r2, [r0, #0x00]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	subs r0, #0x10
	cmp r1, r0
	bge _08049DC4
	ldrb r4, [r3, #0x1F]
	lsls r1, r4, #0x1E
	ldrb r0, [r2, #0x1F]
	lsls r0, r0, #0x1E
	cmp r1, r0
	bls _08049DC4
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
_08049DC4:
	mov r0, r9
	ldr r3, [r0, #0x00]
	movs r1, #0x02
	ldsh r0, [r3, r1]
	subs r0, #0x10
	mov r2, r10
	adds r1, r6, r2
	ldr r2, [r1, #0x00]
	movs r4, #0x02
	ldsh r1, [r2, r4]
	cmp r0, r1
	ble _08049DFC
	ldrb r4, [r3, #0x1F]
	lsls r0, r4, #0x1E
	ldrb r1, [r2, #0x1F]
	lsls r2, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsrs r1, r2, #0x1E
	cmp r0, r1
	bls _08049DFC
	adds r0, r1, #0x0
	movs r1, #0x03
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
_08049DFC:
	mov r0, r9
	ldr r3, [r0, #0x00]
	mov r1, r10
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	movs r4, #0x02
	ldsh r1, [r3, r4]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	cmp r1, r0
	bge _08049E34
	ldrb r4, [r3, #0x1F]
	lsls r0, r4, #0x1C
	ldrb r1, [r2, #0x1F]
	lsls r2, r1, #0x1E
	lsrs r0, r0, #0x1E
	lsrs r1, r2, #0x1E
	cmp r0, r1
	bls _08049E34
	adds r0, r1, #0x0
	movs r1, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
_08049E34:
	movs r0, #0x85
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x09
	ands r1, r2
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	ands r0, r2
	cmp r1, r0
	beq _08049E52
	b _08049FC8
_08049E52:
	mov r4, r9
	ldr r2, [r4, #0x00]
	mov r1, r10
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x0E]
	ldrh r0, [r2, #0x0E]
	cmp r0, r1
	bcs _08049E66
	b _08049FC8
_08049E66:
	subs r0, r1, #0x1
	strh r0, [r2, #0x0E]
	b _08049FC8
_08049E6C: .4byte 0x00000216
_08049E70: .4byte 0x02001000
_08049E74: .4byte 0x00000283
_08049E78: .4byte 0x00000282
_08049E7C: .4byte 0x00000352
_08049E80:
	mov r2, r10
	adds r0, r6, r2
	ldr r3, [r0, #0x00]
	movs r4, #0x02
	ldsh r1, [r3, r4]
	subs r1, #0x10
	mov r0, r9
	ldr r2, [r0, #0x00]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	cmp r1, r0
	bge _08049EC6
	ldrb r4, [r3, #0x1F]
	lsls r0, r4, #0x1C
	ldrb r1, [r2, #0x1F]
	lsls r2, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsrs r1, r2, #0x1E
	cmp r0, r1
	bls _08049EC6
	adds r0, r1, #0x0
	movs r1, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r0, _08049FEC @ =0x00000217
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08049EC6:
	mov r1, r10
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	movs r2, #0x02
	ldsh r1, [r3, r2]
	ldr r4, _08049FF0 @ =0x00000283
	adds r0, r6, r4
	ldrb r0, [r0, #0x00]
	subs r1, r1, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	subs r0, #0x10
	cmp r1, r0
	bge _08049F0E
	ldrb r4, [r3, #0x1F]
	lsls r1, r4, #0x1E
	ldrb r0, [r2, #0x1F]
	lsls r0, r0, #0x1E
	cmp r1, r0
	bls _08049F0E
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r0, _08049FEC @ =0x00000217
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08049F0E:
	mov r1, r10
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	movs r2, #0x02
	ldsh r1, [r3, r2]
	subs r1, #0x10
	mov r4, r9
	ldr r2, [r4, #0x00]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	cmp r1, r0
	ble _08049F52
	ldrb r4, [r3, #0x1F]
	lsls r0, r4, #0x1E
	ldrb r1, [r2, #0x1F]
	lsls r2, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsrs r1, r2, #0x1E
	cmp r0, r1
	bls _08049F52
	adds r0, r1, #0x0
	movs r1, #0x03
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r0, _08049FEC @ =0x00000217
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08049F52:
	mov r1, r10
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	mov r4, r9
	ldr r2, [r4, #0x00]
	movs r0, #0x02
	ldsh r1, [r3, r0]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	cmp r1, r0
	bge _08049F96
	ldrb r4, [r3, #0x1F]
	lsls r0, r4, #0x1C
	ldrb r1, [r2, #0x1F]
	lsls r2, r1, #0x1E
	lsrs r0, r0, #0x1E
	lsrs r1, r2, #0x1E
	cmp r0, r1
	bls _08049F96
	adds r0, r1, #0x0
	movs r1, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r0, _08049FEC @ =0x00000217
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08049F96:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x09
	ands r1, r2
	movs r0, #0x85
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ands r0, r2
	cmp r1, r0
	bne _08049FC8
	mov r2, r10
	adds r0, r6, r2
	ldr r1, [r0, #0x00]
	mov r3, r9
	ldr r0, [r3, #0x00]
	ldrh r3, [r0, #0x0E]
	ldrh r0, [r1, #0x0E]
	cmp r0, r3
	bcc _08049FC8
	subs r0, r3, #0x1
	strh r0, [r1, #0x0E]
_08049FC8:
	ldr r4, [sp, #0x004]
	subs r4, #0x01
	str r4, [sp, #0x004]
	ldr r0, [sp, #0x000]
	adds r0, #0x04
	str r0, [sp, #0x000]
	cmp r4, #0x00
	beq _08049FDA
	b _08049C84
_08049FDA:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08049FEC: .4byte 0x00000217
_08049FF0: .4byte 0x00000283
	thumb_func_start sub_8049FF4
sub_8049FF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldr r1, _0804A0CC @ =0x01000001
	ands r0, r1
	cmp r0, r1
	beq _0804A016
	b _0804A112
_0804A016:
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _0804A01E
	adds r0, #0xFF
_0804A01E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _0804A02A
	adds r0, #0xFF
_0804A02A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r1, r1, r0
	str r0, [sp, #0x01C]
	cmp r1, #0x00
	bge _0804A03C
	adds r1, #0xFF
_0804A03C:
	asrs r1, r1, #0x08
	str r1, [sp, #0x008]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x08
	lsls r4, r0, #0x10
	adds r1, #0x04
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldrb r0, [r3, #0x04]
	str r0, [sp, #0x010]
	ldrb r0, [r3, #0x06]
	lsls r0, r0, #0x08
	ldrb r1, [r3, #0x05]
	orrs r0, r1
	subs r2, r3, r0
	movs r1, #0x00
	str r1, [sp, #0x014]
	ldr r0, [sp, #0x010]
	cmp r1, r0
	bge _0804A112
	lsrs r4, r4, #0x11
	str r4, [sp, #0x018]
_0804A072:
	ldrb r0, [r2, #0x00]
	lsls r4, r0, #0x04
	ldrb r0, [r2, #0x02]
	lsls r0, r0, #0x04
	adds r7, r4, r0
	subs r5, r7, #0x1
	ldrb r0, [r2, #0x01]
	lsls r3, r0, #0x04
	ldrb r0, [r2, #0x03]
	lsls r0, r0, #0x04
	adds r6, r3, r0
	subs r1, r6, #0x1
	mov r12, r1
	ldrb r1, [r2, #0x04]
	movs r0, #0x7F
	ands r0, r1
	lsls r0, r0, #0x03
	mov r9, r0
	ldrb r0, [r2, #0x05]
	movs r1, #0x7F
	ands r1, r0
	movs r0, #0xFF
	lsls r0, r0, #0x03
	mov r8, r0
	cmp r1, #0x7F
	beq _0804A0AA
	lsls r1, r1, #0x03
	mov r8, r1
_0804A0AA:
	mov r1, r9
	add r1, r8
	mov r10, r1
	ldrb r1, [r2, #0x06]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0804A0D0
	ldr r0, [sp, #0x018]
	subs r4, r4, r0
	adds r5, r5, r0
	subs r3, #0x01
	subs r0, r6, #0x2
	ldr r1, [sp, #0x00C]
	adds r0, r0, r1
	mov r12, r0
	b _0804A0D6
_0804A0CC: .4byte 0x01000001
_0804A0D0:
	adds r4, #0x04
	subs r5, r7, #0x5
	adds r3, #0x07
_0804A0D6:
	ldr r0, [sp, #0x000]
	cmp r0, r4
	blt _0804A104
	cmp r0, r5
	bgt _0804A104
	ldr r1, [sp, #0x004]
	cmp r1, r3
	blt _0804A104
	cmp r1, r12
	bgt _0804A104
	ldr r0, [sp, #0x008]
	cmp r0, r9
	blt _0804A104
	cmp r0, r10
	bgt _0804A104
	mov r1, r8
	cmp r1, #0x00
	bne _0804A100
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	bgt _0804A104
_0804A100:
	adds r0, r2, #0x0
	b _0804A114
_0804A104:
	ldr r1, [sp, #0x014]
	adds r1, #0x01
	str r1, [sp, #0x014]
	adds r2, #0x0B
	ldr r0, [sp, #0x010]
	cmp r1, r0
	blt _0804A072
_0804A112:
	movs r0, #0x00
_0804A114:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_804A124
sub_804A124:
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
	ldr r1, _0804A3A8 @ =0x0804A3AC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0804A394: .4byte 0x00000346
_0804A398: .4byte 0x00000347
_0804A39C: .4byte 0x00000FFF
_0804A3A0: .4byte 0x0000020D
_0804A3A4: .4byte 0x083A0A2C
_0804A3A8: .4byte 0x0804A3AC
	.byte 0xE8, 0xA3, 0x04, 0x08, 0xEE, 0xA3, 0x04, 0x08, 0xF4, 0xA3, 0x04, 0x08, 0xFA, 0xA3, 0x04, 0x08
	.byte 0x00, 0xA4, 0x04, 0x08, 0x14, 0xA4, 0x04, 0x08, 0x14, 0xA4, 0x04, 0x08, 0xEE, 0xA3, 0x04, 0x08
	.byte 0x14, 0xA4, 0x04, 0x08, 0x06, 0xA4, 0x04, 0x08, 0x14, 0xA4, 0x04, 0x08, 0x10, 0xA4, 0x04, 0x08
	.byte 0x14, 0xA4, 0x04, 0x08, 0x14, 0xA4, 0x04, 0x08, 0x14, 0xA4, 0x04, 0x08, 0x52, 0x46, 0x0A, 0x92
	.byte 0x02, 0xE0, 0x0A, 0x99, 0x8A, 0x46, 0x0D, 0xE0, 0x0B, 0x98, 0x0C, 0x90, 0x0C, 0xE0, 0x51, 0x46
	.byte 0x0A, 0x91, 0x07, 0xE0, 0x50, 0x46, 0x0A, 0x90, 0x06, 0xE0, 0x0A, 0x98, 0x82, 0x46, 0x03, 0xE0
_0804A40C:
	lsls r1, r4, #0x0C
	b _0804A48A
	.byte 0x0C, 0x9A, 0x0B, 0x92
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
	thumb_func_start sub_804A4C8
sub_804A4C8:
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
	thumb_func_start sub_804A5D4
sub_804A5D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x084
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x000]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _0804A600
	bl _0804B008
_0804A600:
	ldr r3, _0804A684 @ =0x00000216
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804A612
	bl _0804B008
_0804A612:
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	ldr r5, _0804A688 @ =0x0000020D
	adds r0, r7, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	orrs r1, r0
	cmp r1, #0x00
	bne _0804A62A
	bl _0804B008
_0804A62A:
	ldr r1, _0804A68C @ =0x00000272
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r0
	str r1, [sp, #0x004]
	ldr r2, [r7, #0x10]
	str r2, [sp, #0x008]
	ldr r3, [r7, #0x14]
	str r3, [sp, #0x00C]
	adds r5, r3, #0x0
	ldr r2, [r7, #0x18]
	cmp r2, #0x00
	bgt _0804A652
	cmp r2, #0x00
	bge _0804A658
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _0804A658
_0804A652:
	ldr r0, [sp, #0x00C]
	adds r0, r0, r2
	str r0, [sp, #0x00C]
_0804A658:
	movs r1, #0x8E
	lsls r1, r1, #0x02
	adds r3, r7, r1
	movs r1, #0x00
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804A690
	adds r2, r5, r2
	adds r0, r1, #0x0
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	b _0804A692
	.byte 0x00, 0x00
_0804A684: .4byte 0x00000216
_0804A688: .4byte 0x0000020D
_0804A68C: .4byte 0x00000272
_0804A690:
	movs r0, #0x00
_0804A692:
	str r0, [sp, #0x010]
	ldr r2, _0804A794 @ =0x0000020D
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	movs r2, #0x02
	cmp r0, #0x00
	beq _0804A6A6
	adds r2, r6, #0x0
_0804A6A6:
	adds r3, r7, #0x0
	adds r3, #0x24
	str r3, [sp, #0x070]
	cmp r2, #0x00
	bne _0804A6B4
	bl _0804AFD4
_0804A6B4:
	adds r5, r7, #0x0
	adds r5, #0x54
	str r5, [sp, #0x014]
	ldr r0, _0804A798 @ =0x00000272
	adds r0, r7, r0
	str r0, [sp, #0x044]
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r1, r7, r1
	str r1, [sp, #0x04C]
_0804A6C8:
	adds r5, r4, #0x0
	ldm r5!, {r3}
	mov r8, r3
	str r5, [sp, #0x06C]
	mov r1, r8
	adds r1, #0x54
	ldr r3, [sp, #0x014]
	ldrb r0, [r3, #0x00]
	subs r5, r2, #0x1
	str r5, [sp, #0x074]
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bne _0804A6E6
	bl _0804AFC8
_0804A6E6:
	ldr r0, [sp, #0x000]
	cmp r0, #0x00
	beq _0804A700
	movs r0, #0x84
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0804A700
	bl _0804AFC8
_0804A700:
	movs r1, #0x00
	str r1, [sp, #0x018]
	subs r2, #0x01
	str r2, [sp, #0x074]
	adds r4, #0x04
	str r4, [sp, #0x06C]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r2, r7, r2
	str r2, [sp, #0x024]
	movs r3, #0x9C
	lsls r3, r3, #0x02
	adds r3, r7, r3
	str r3, [sp, #0x048]
_0804A71C:
	movs r0, #0x83
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r3, [r0, #0x00]
	movs r0, #0x01
	ands r0, r3
	cmp r0, #0x00
	bne _0804A730
	bl _0804AF8E
_0804A730:
	ldr r0, _0804A79C @ =0x00000216
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804A756
	mov r0, r8
	adds r0, #0x54
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _0804A756
	bl _0804AF8E
_0804A756:
	mov r0, r8
	adds r0, #0x29
	movs r1, #0x00
	ldsb r1, [r0, r1]
	str r0, [sp, #0x078]
	ldr r4, [sp, #0x014]
	ldrb r4, [r4, #0x00]
	cmp r1, r4
	bne _0804A76C
	bl _0804AF8E
_0804A76C:
	ldr r0, _0804A7A0 @ =0x0000020E
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _0804A7A4
	ldr r5, [sp, #0x024]
	ldrb r2, [r5, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1F
	ands r0, r1
	str r0, [sp, #0x01C]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1F
	lsls r2, r2, #0x1A
	b _0804A7BC
	.byte 0x00, 0x00
_0804A794: .4byte 0x0000020D
_0804A798: .4byte 0x00000272
_0804A79C: .4byte 0x00000216
_0804A7A0: .4byte 0x0000020E
_0804A7A4:
	ldr r1, _0804A7F4 @ =0x0000020D
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	lsls r1, r2, #0x1F
	lsrs r1, r1, #0x1F
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1F
	ands r0, r1
	str r0, [sp, #0x01C]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1F
	lsls r2, r2, #0x1E
_0804A7BC:
	lsrs r2, r2, #0x1F
	ands r2, r0
	str r2, [sp, #0x020]
	ldr r2, [sp, #0x01C]
	cmp r2, #0x00
	bne _0804A7CA
	b _0804AF8E
_0804A7CA:
	ldr r0, _0804A7F8 @ =0x00000272
	add r0, r8
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x028]
	lsrs r1, r0, #0x01
	mov r3, r8
	ldr r0, [r3, #0x0C]
	subs r0, r0, r1
	str r0, [sp, #0x040]
	ldr r4, [sp, #0x044]
	ldrh r4, [r4, #0x00]
	str r4, [sp, #0x034]
	ldr r5, [sp, #0x004]
	mov r10, r5
	cmp r0, r10
	bge _0804A7FC
	ldr r1, [sp, #0x028]
	adds r0, r0, r1
	subs r0, r0, r5
	b _0804A804
	.byte 0x00, 0x00
_0804A7F4: .4byte 0x0000020D
_0804A7F8: .4byte 0x00000272
_0804A7FC:
	ldr r0, [sp, #0x034]
	add r0, r10
	ldr r2, [sp, #0x040]
	subs r0, r0, r2
_0804A804:
	cmp r0, #0x00
	bgt _0804A80A
	b _0804AF8E
_0804A80A:
	movs r0, #0x9C
	lsls r0, r0, #0x02
	add r0, r8
	movs r4, #0x00
	ldsh r3, [r0, r4]
	str r3, [sp, #0x030]
	ldr r1, _0804A844 @ =0x00000276
	mov r5, r8
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x02C]
	ldr r0, [r5, #0x10]
	adds r5, r0, r3
	ldr r0, [sp, #0x048]
	movs r2, #0x00
	ldsh r0, [r0, r2]
	str r0, [sp, #0x03C]
	adds r1, r7, r1
	ldrh r1, [r1, #0x00]
	str r1, [sp, #0x038]
	ldr r3, [sp, #0x008]
	adds r3, r3, r0
	mov r9, r3
	cmp r5, r9
	ble _0804A848
	ldr r4, [sp, #0x02C]
	subs r0, r5, r4
	subs r0, r3, r0
	b _0804A850
_0804A844: .4byte 0x00000276
_0804A848:
	mov r1, r9
	ldr r2, [sp, #0x038]
	subs r0, r1, r2
	subs r0, r5, r0
_0804A850:
	cmp r0, #0x00
	bgt _0804A856
	b _0804AF8E
_0804A856:
	ldr r4, [sp, #0x00C]
	mov r3, r8
	ldr r2, [r3, #0x14]
	ldr r1, [r3, #0x18]
	cmp r1, #0x00
	bgt _0804A86C
	cmp r1, #0x00
	bge _0804A86E
	ldr r0, [r3, #0x40]
	cmp r0, #0x00
	bge _0804A86E
_0804A86C:
	adds r2, r2, r1
_0804A86E:
	adds r3, r2, #0x0
	cmp r3, r4
	bgt _0804A8BC
	movs r0, #0x9D
	lsls r0, r0, #0x02
	add r0, r8
	ldrh r0, [r0, #0x00]
	adds r1, r3, r0
	subs r6, r1, r4
	cmp r6, #0x00
	bgt _0804A8CA
	ldr r0, [r7, #0x14]
	cmp r1, r0
	blt _0804A8C4
	movs r0, #0x8E
	lsls r0, r0, #0x02
	adds r2, r7, r0
	movs r1, #0x00
	ldsb r1, [r2, r1]
	mov r12, r1
	negs r1, r6
	movs r0, #0x01
	negs r0, r0
	cmp r12, r0
	beq _0804A8AC
	ldr r0, [sp, #0x010]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r12, r0
	cmp r1, r12
	bge _0804A8C4
_0804A8AC:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	mov r0, r8
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
	b _0804A8C4
_0804A8BC:
	ldr r1, [sp, #0x04C]
	ldrh r0, [r1, #0x00]
	adds r0, r4, r0
	subs r6, r0, r3
_0804A8C4:
	cmp r6, #0x00
	bge _0804A8CA
	b _0804AF8E
_0804A8CA:
	movs r2, #0x00
	str r2, [sp, #0x050]
	movs r0, #0x00
	str r0, [sp, #0x054]
	movs r1, #0x00
	str r1, [sp, #0x058]
	str r2, [sp, #0x05C]
	adds r0, r7, #0x0
	adds r0, #0x29
	movs r2, #0x00
	ldsb r2, [r0, r2]
	mov r1, r8
	adds r1, #0x54
	str r1, [sp, #0x07C]
	mov r12, r0
	ldrb r0, [r1, #0x00]
	cmp r2, r0
	bne _0804A8F8
	movs r1, #0x02
	str r1, [sp, #0x058]
	movs r2, #0x01
	str r2, [sp, #0x05C]
	b _0804A928
_0804A8F8:
	ldr r1, [r7, #0x3C]
	ldr r0, [r7, #0x40]
	adds r1, r1, r0
	ldr r2, [sp, #0x04C]
	ldrh r0, [r2, #0x00]
	adds r0, r1, r0
	cmp r0, r3
	bgt _0804A912
	movs r0, #0x01
	str r0, [sp, #0x058]
	movs r1, #0x02
	str r1, [sp, #0x05C]
	b _0804A928
_0804A912:
	movs r0, #0x9D
	lsls r0, r0, #0x02
	add r0, r8
	ldrh r0, [r0, #0x00]
	adds r0, r3, r0
	cmp r1, r0
	blt _0804A928
	movs r2, #0x02
	str r2, [sp, #0x058]
	movs r0, #0x01
	str r0, [sp, #0x05C]
_0804A928:
	ldr r0, _0804A980 @ =0x0000020E
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0804A9A2
	ldr r1, [sp, #0x058]
	cmp r1, #0x02
	bne _0804A9A2
	mov r2, r12
	movs r0, #0x00
	ldsb r0, [r2, r0]
	ldr r3, [sp, #0x07C]
	ldrb r3, [r3, #0x00]
	cmp r0, r3
	beq _0804A954
	ldr r0, [r7, #0x18]
	adds r0, r0, r6
	ldr r1, _0804A984 @ =0xFFFFFF00
	ands r0, r1
	str r0, [r7, #0x18]
_0804A954:
	ldr r4, [sp, #0x07C]
	ldrb r1, [r4, #0x00]
	movs r5, #0x8E
	lsls r5, r5, #0x02
	adds r0, r7, r5
	strb r1, [r0, #0x00]
	ldrb r0, [r4, #0x00]
	strb r0, [r7, #0x01]
	movs r0, #0x00
	str r0, [sp, #0x010]
	ldr r1, _0804A988 @ =0x000002B5
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804A98C
	adds r0, r7, #0x0
	bl sub_8046A10__11FieldObject
	b _0804AEC4
	.byte 0x00, 0x00
_0804A980: .4byte 0x0000020E
_0804A984: .4byte 0xFFFFFF00
_0804A988: .4byte 0x000002B5
_0804A98C:
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0804A99A
	b _0804AEC4
_0804A99A:
	adds r0, r7, #0x0
	bl sub_8047EB8
	b _0804AEC4
_0804A9A2:
	ldr r0, [sp, #0x058]
	cmp r0, #0x01
	bne _0804A9F4
	adds r0, r7, #0x0
	adds r0, #0x4C
	ldrh r1, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x80
	bne _0804A9BC
	b _0804AEC4
_0804A9BC:
	ldr r3, [sp, #0x078]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	ldr r4, [sp, #0x014]
	ldrb r4, [r4, #0x00]
	cmp r0, r4
	bne _0804A9CC
	b _0804AEC4
_0804A9CC:
	ldr r0, [r7, #0x18]
	subs r0, r0, r6
	str r0, [r7, #0x18]
	movs r5, #0x97
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0804A9E0
	b _0804AEC4
_0804A9E0:
	movs r0, #0x96
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0804A9EE
	b _0804AEC4
_0804A9EE:
	negs r0, r0
	str r0, [r1, #0x00]
	b _0804AEC4
_0804A9F4:
	movs r1, #0x00
	str r1, [sp, #0x060]
	ldr r0, _0804AA78 @ =0x0000020E
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0804AA08
	b _0804AB4A
_0804AA08:
	cmp r3, r4
	bgt _0804AA88
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804AA88
	ldr r4, _0804AA7C @ =0x08198220
	ldr r2, _0804AA80 @ =0x0819832C
	subs r4, r2, r4
	ldr r3, _0804AA84 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r5, [sp, #0x028]
	adds r0, r5, #0x0
	muls r0, r6
	movs r5, #0x9D
	lsls r5, r5, #0x02
	add r5, r8
	ldrh r1, [r5, #0x00]
	bl _call_via_r2
	str r0, [sp, #0x028]
	lsrs r0, r0, #0x1F
	ldr r1, [sp, #0x028]
	adds r0, r1, r0
	asrs r0, r0, #0x01
	mov r2, r8
	ldr r1, [r2, #0x0C]
	subs r1, r1, r0
	str r1, [sp, #0x040]
	ldr r3, _0804AA84 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x02C]
	adds r0, r1, #0x0
	muls r0, r6
	ldrh r1, [r5, #0x00]
	bl _call_via_r2
	str r0, [sp, #0x02C]
	ldr r3, _0804AA84 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r4, [sp, #0x030]
	adds r0, r4, #0x0
	muls r0, r6
	ldrh r1, [r5, #0x00]
	bl _call_via_r2
	str r0, [sp, #0x030]
	mov r5, r8
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #0x030]
	adds r5, r0, r1
	movs r2, #0x01
	str r2, [sp, #0x060]
	b _0804AB02
_0804AA78: .4byte 0x0000020E
_0804AA7C: .4byte 0x08198220
_0804AA80: .4byte 0x0819832C
_0804AA84: .4byte 0x03001038
_0804AA88:
	ldr r0, [sp, #0x058]
	cmp r0, #0x00
	bne _0804AAFC
	cmp r4, r3
	bgt _0804AAFC
	mov r1, r8
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	ble _0804AAFC
	ldr r4, _0804AB14 @ =0x08198220
	ldr r2, _0804AB18 @ =0x0819832C
	subs r4, r2, r4
	ldr r3, _0804AB1C @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x034]
	adds r0, r1, #0x0
	muls r0, r6
	ldr r3, [sp, #0x04C]
	ldrh r1, [r3, #0x00]
	bl _call_via_r2
	str r0, [sp, #0x034]
	lsrs r0, r0, #0x1F
	ldr r1, [sp, #0x034]
	adds r0, r1, r0
	asrs r0, r0, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r0
	mov r10, r1
	ldr r3, _0804AB1C @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x038]
	adds r0, r1, #0x0
	muls r0, r6
	ldr r3, [sp, #0x04C]
	ldrh r1, [r3, #0x00]
	bl _call_via_r2
	str r0, [sp, #0x038]
	ldr r0, _0804AB1C @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x03C]
	adds r0, r1, #0x0
	muls r0, r6
	ldr r3, [sp, #0x04C]
	ldrh r1, [r3, #0x00]
	bl _call_via_r2
	str r0, [sp, #0x03C]
	ldr r0, [r7, #0x10]
	ldr r4, [sp, #0x03C]
	adds r0, r0, r4
	mov r9, r0
	movs r0, #0x02
	str r0, [sp, #0x060]
_0804AAFC:
	ldr r1, [sp, #0x060]
	cmp r1, #0x00
	beq _0804AB4A
_0804AB02:
	ldr r2, [sp, #0x040]
	cmp r2, r10
	bge _0804AB20
	ldr r3, [sp, #0x028]
	adds r0, r2, r3
	mov r4, r10
	subs r0, r0, r4
	b _0804AB28
	.byte 0x00, 0x00
_0804AB14: .4byte 0x08198220
_0804AB18: .4byte 0x0819832C
_0804AB1C: .4byte 0x03001038
_0804AB20:
	ldr r0, [sp, #0x034]
	add r0, r10
	ldr r1, [sp, #0x040]
	subs r0, r0, r1
_0804AB28:
	cmp r0, #0x00
	bgt _0804AB2E
	b _0804AF8E
_0804AB2E:
	cmp r5, r9
	ble _0804AB3C
	ldr r2, [sp, #0x02C]
	subs r0, r5, r2
	mov r3, r9
	subs r0, r3, r0
	b _0804AB44
_0804AB3C:
	mov r4, r9
	ldr r1, [sp, #0x038]
	subs r0, r4, r1
	subs r0, r5, r0
_0804AB44:
	cmp r0, #0x00
	bgt _0804AB4A
	b _0804AF8E
_0804AB4A:
	ldr r1, [r7, #0x34]
	mov r2, r8
	ldr r0, [r2, #0x34]
	ldr r3, [r7, #0x38]
	str r3, [sp, #0x064]
	ldr r4, [r2, #0x38]
	str r4, [sp, #0x068]
	cmp r1, r0
	bne _0804AB98
	cmp r3, r4
	bne _0804AB98
	ldr r5, [sp, #0x070]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x01
	bhi _0804AB76
	movs r0, #0x01
	str r0, [sp, #0x050]
	movs r1, #0x04
	str r1, [sp, #0x054]
	b _0804ACC2
_0804AB76:
	cmp r0, #0x02
	bhi _0804AB7C
	b _0804AC9C
_0804AB7C:
	cmp r0, #0x05
	bhi _0804AB8A
	movs r4, #0x04
	str r4, [sp, #0x050]
	movs r5, #0x01
	str r5, [sp, #0x054]
	b _0804ACC2
_0804AB8A:
	cmp r0, #0x06
	bls _0804AC80
	movs r2, #0x01
	str r2, [sp, #0x050]
	movs r3, #0x04
	str r3, [sp, #0x054]
	b _0804ACC2
_0804AB98:
	ldr r4, [sp, #0x038]
	mov r9, r4
	ldr r5, [sp, #0x02C]
	mov r10, r5
	ldr r3, [sp, #0x03C]
	ldr r6, [sp, #0x030]
	ldr r0, [sp, #0x060]
	cmp r0, #0x01
	bne _0804AC10
	ldr r2, [r7, #0x3C]
	ldr r0, [r7, #0x40]
	adds r2, r2, r0
	mov r1, r8
	ldr r4, [r1, #0x3C]
	ldr r0, [r1, #0x40]
	adds r4, r4, r0
	movs r6, #0x9D
	lsls r6, r6, #0x02
	add r6, r8
	ldrh r1, [r6, #0x00]
	adds r4, r4, r1
	subs r4, r4, r2
	ldr r5, _0804AC00 @ =0x08198220
	ldr r2, _0804AC04 @ =0x0819832C
	subs r5, r2, r5
	ldr r0, _0804AC08 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	ldr r0, _0804AC0C @ =0x00000276
	add r0, r8
	ldrh r0, [r0, #0x00]
	muls r0, r4
	str r3, [sp, #0x080]
	bl _call_via_r2
	mov r10, r0
	ldr r1, _0804AC08 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	movs r0, #0x9C
	lsls r0, r0, #0x02
	add r0, r8
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r0, r4
	ldrh r1, [r6, #0x00]
	bl _call_via_r2
	adds r6, r0, #0x0
	ldr r3, [sp, #0x080]
	b _0804AC5E
	.byte 0x00, 0x00
_0804AC00: .4byte 0x08198220
_0804AC04: .4byte 0x0819832C
_0804AC08: .4byte 0x03001038
_0804AC0C: .4byte 0x00000276
_0804AC10:
	ldr r0, [sp, #0x060]
	cmp r0, #0x02
	bne _0804AC5E
	ldr r4, [r7, #0x3C]
	ldr r0, [r7, #0x40]
	adds r4, r4, r0
	mov r1, r8
	ldr r2, [r1, #0x3C]
	ldr r0, [r1, #0x40]
	adds r2, r2, r0
	ldr r3, [sp, #0x04C]
	ldrh r1, [r3, #0x00]
	adds r4, r4, r1
	subs r4, r4, r2
	ldr r5, _0804AC8C @ =0x08198220
	ldr r0, _0804AC90 @ =0x0819832C
	subs r5, r0, r5
	ldr r3, _0804AC94 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	ldr r3, _0804AC98 @ =0x00000276
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	muls r0, r4
	bl _call_via_r2
	mov r9, r0
	ldr r0, _0804AC94 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	ldr r1, [sp, #0x048]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	muls r0, r4
	ldr r4, [sp, #0x04C]
	ldrh r1, [r4, #0x00]
	bl _call_via_r2
	adds r3, r0, #0x0
_0804AC5E:
	ldr r5, [sp, #0x064]
	adds r2, r5, r3
	mov r1, r9
	subs r0, r2, r1
	ldr r3, [sp, #0x068]
	adds r1, r3, r6
	cmp r0, r1
	bge _0804ACA6
	mov r4, r10
	subs r0, r1, r4
	cmp r2, r0
	ble _0804ACA6
	ldr r1, [r7, #0x34]
	mov r5, r8
	ldr r0, [r5, #0x34]
	cmp r1, r0
	bge _0804AC9C
_0804AC80:
	movs r0, #0x02
	str r0, [sp, #0x050]
	movs r1, #0x08
	str r1, [sp, #0x054]
	b _0804ACC2
	.byte 0x00, 0x00
_0804AC8C: .4byte 0x08198220
_0804AC90: .4byte 0x0819832C
_0804AC94: .4byte 0x03001038
_0804AC98: .4byte 0x00000276
_0804AC9C:
	movs r2, #0x08
	str r2, [sp, #0x050]
	movs r3, #0x02
	str r3, [sp, #0x054]
	b _0804ACC2
_0804ACA6:
	ldr r1, [r7, #0x38]
	mov r4, r8
	ldr r0, [r4, #0x38]
	cmp r1, r0
	ble _0804ACBA
	movs r5, #0x01
	str r5, [sp, #0x050]
	movs r0, #0x04
	str r0, [sp, #0x054]
	b _0804ACC2
_0804ACBA:
	movs r1, #0x04
	str r1, [sp, #0x050]
	movs r2, #0x01
	str r2, [sp, #0x054]
_0804ACC2:
	ldr r3, [sp, #0x050]
	cmp r3, #0x08
	bne _0804AD44
	ldr r4, [r7, #0x0C]
	ldr r2, [r7, #0x34]
	cmp r4, r2
	blt _0804ACE0
	ldr r5, [sp, #0x060]
	cmp r5, #0x01
	beq _0804ACD8
	b _0804AEC4
_0804ACD8:
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bgt _0804ACE0
	b _0804AEC4
_0804ACE0:
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bne _0804AD00
	ldr r1, _0804AD18 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804AD20
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0804AD00
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804AD20
_0804AD00:
	ldr r0, _0804AD1C @ =0x00000272
	add r0, r8
	ldrh r0, [r0, #0x00]
	ldr r2, [sp, #0x044]
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r3, r8
	ldr r1, [r3, #0x0C]
	adds r3, r1, r0
	adds r2, r1, #0x0
	b _0804AD26
_0804AD18: .4byte 0x0000020D
_0804AD1C: .4byte 0x00000272
_0804AD20:
	adds r3, r2, #0x0
	mov r5, r8
	ldr r2, [r5, #0x0C]
_0804AD26:
	ldr r1, [sp, #0x028]
	ldr r5, [sp, #0x034]
	adds r0, r1, r5
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r0, r2, r0
	cmp r0, r3
	ble _0804AD3A
	adds r0, r3, #0x0
_0804AD3A:
	cmp r0, r4
	bgt _0804AD40
	b _0804AEC4
_0804AD40:
	str r0, [r7, #0x0C]
	b _0804AEC4
_0804AD44:
	ldr r0, [sp, #0x050]
	cmp r0, #0x02
	bne _0804ADC8
	ldr r4, [r7, #0x0C]
	ldr r2, [r7, #0x34]
	cmp r4, r2
	bgt _0804AD62
	ldr r1, [sp, #0x060]
	cmp r1, #0x01
	beq _0804AD5A
	b _0804AEC4
_0804AD5A:
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bgt _0804AD62
	b _0804AEC4
_0804AD62:
	ldr r3, [sp, #0x020]
	cmp r3, #0x00
	bne _0804AD82
	ldr r5, _0804AD9C @ =0x0000020D
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804ADA4
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0804AD82
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804ADA4
_0804AD82:
	ldr r0, _0804ADA0 @ =0x00000272
	add r0, r8
	ldrh r0, [r0, #0x00]
	ldr r2, [sp, #0x044]
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r3, r8
	ldr r1, [r3, #0x0C]
	subs r3, r1, r0
	adds r2, r1, #0x0
	b _0804ADAA
	.byte 0x00, 0x00
_0804AD9C: .4byte 0x0000020D
_0804ADA0: .4byte 0x00000272
_0804ADA4:
	adds r3, r2, #0x0
	mov r5, r8
	ldr r2, [r5, #0x0C]
_0804ADAA:
	ldr r1, [sp, #0x028]
	ldr r5, [sp, #0x034]
	adds r0, r1, r5
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r0, r2, r0
	cmp r0, r3
	bge _0804ADBE
	adds r0, r3, #0x0
_0804ADBE:
	cmp r0, r4
	blt _0804ADC4
	b _0804AEC4
_0804ADC4:
	str r0, [r7, #0x0C]
	b _0804AEC4
_0804ADC8:
	ldr r0, [sp, #0x050]
	cmp r0, #0x01
	bne _0804AE48
	ldr r3, [r7, #0x10]
	ldr r2, [r7, #0x38]
	cmp r3, r2
	blt _0804ADE2
	ldr r1, [sp, #0x060]
	cmp r1, #0x01
	bne _0804AEC4
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804AEC4
_0804ADE2:
	ldr r4, [sp, #0x020]
	cmp r4, #0x00
	bne _0804AE02
	ldr r5, _0804AE24 @ =0x0000020D
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804AE2C
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0804AE02
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804AE2C
_0804AE02:
	movs r0, #0x9C
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, _0804AE28 @ =0x00000276
	adds r1, r7, r2
	movs r4, #0x00
	ldsh r0, [r0, r4]
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r5, [sp, #0x048]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	subs r0, r0, r1
	mov r4, r8
	ldr r1, [r4, #0x10]
	adds r2, r1, r0
	b _0804AE30
_0804AE24: .4byte 0x0000020D
_0804AE28: .4byte 0x00000276
_0804AE2C:
	mov r5, r8
	ldr r1, [r5, #0x10]
_0804AE30:
	ldr r4, [sp, #0x030]
	ldr r5, [sp, #0x038]
	adds r0, r4, r5
	ldr r4, [sp, #0x03C]
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	ble _0804AE42
	adds r0, r2, #0x0
_0804AE42:
	cmp r0, r3
	ble _0804AEC4
	b _0804AEC2
_0804AE48:
	ldr r3, [r7, #0x10]
	ldr r2, [r7, #0x38]
	cmp r3, r2
	bgt _0804AE5C
	ldr r5, [sp, #0x060]
	cmp r5, #0x01
	bne _0804AEC4
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804AEC4
_0804AE5C:
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bne _0804AE7C
	ldr r1, _0804AEA0 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804AEA8
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0804AE7C
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804AEA8
_0804AE7C:
	movs r0, #0x9C
	lsls r0, r0, #0x02
	add r0, r8
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, _0804AEA4 @ =0x00000276
	add r0, r8
	ldrh r0, [r0, #0x00]
	subs r1, r1, r0
	ldr r4, [sp, #0x048]
	movs r5, #0x00
	ldsh r0, [r4, r5]
	subs r1, r1, r0
	mov r2, r8
	ldr r0, [r2, #0x10]
	adds r2, r0, r1
	adds r1, r0, #0x0
	b _0804AEAC
_0804AEA0: .4byte 0x0000020D
_0804AEA4: .4byte 0x00000276
_0804AEA8:
	mov r4, r8
	ldr r1, [r4, #0x10]
_0804AEAC:
	ldr r5, [sp, #0x030]
	ldr r4, [sp, #0x02C]
	subs r0, r5, r4
	ldr r5, [sp, #0x03C]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	bge _0804AEBE
	adds r0, r2, #0x0
_0804AEBE:
	cmp r0, r3
	bge _0804AEC4
_0804AEC2:
	str r0, [r7, #0x10]
_0804AEC4:
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	beq _0804AF38
	ldr r1, [sp, #0x070]
	ldrb r2, [r1, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	ldr r3, [sp, #0x050]
	orrs r0, r3
	lsls r0, r0, #0x03
	movs r4, #0x79
	negs r4, r4
	adds r1, r4, #0x0
	ands r2, r1
	orrs r2, r0
	ldr r5, [sp, #0x070]
	strb r2, [r5, #0x00]
	ldrh r2, [r7, #0x24]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1E
	ldr r1, [sp, #0x058]
	orrs r0, r1
	lsls r0, r0, #0x07
	ldr r3, _0804AF24 @ =0xFFFFFE7F
	adds r1, r3, #0x0
	ands r2, r1
	orrs r2, r0
	strh r2, [r7, #0x24]
	movs r0, #0x00
	ldsb r0, [r7, r0]
	adds r4, #0x78
	cmp r0, r4
	bne _0804AF0C
	ldr r5, [sp, #0x07C]
	ldrb r0, [r5, #0x00]
	strb r0, [r7, #0x00]
_0804AF0C:
	ldr r0, _0804AF28 @ =0x0000020E
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _0804AF2C
	adds r2, r7, #0x0
	adds r2, #0x25
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	b _0804AF34
_0804AF24: .4byte 0xFFFFFE7F
_0804AF28: .4byte 0x0000020E
_0804AF2C:
	adds r2, r7, #0x0
	adds r2, #0x25
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
_0804AF34:
	orrs r0, r1
	strb r0, [r2, #0x00]
_0804AF38:
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	beq _0804AF8E
	mov r3, r8
	adds r3, #0x24
	ldrb r2, [r3, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	ldr r1, [sp, #0x054]
	orrs r0, r1
	lsls r0, r0, #0x03
	movs r4, #0x79
	negs r4, r4
	adds r1, r4, #0x0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	mov r5, r8
	ldrh r2, [r5, #0x24]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1E
	ldr r1, [sp, #0x05C]
	orrs r0, r1
	lsls r0, r0, #0x07
	ldr r3, _0804B018 @ =0xFFFFFE7F
	adds r1, r3, #0x0
	ands r2, r1
	orrs r2, r0
	strh r2, [r5, #0x24]
	movs r0, #0x00
	ldsb r0, [r7, r0]
	adds r4, #0x78
	cmp r0, r4
	bne _0804AF82
	ldr r5, [sp, #0x07C]
	ldrb r0, [r5, #0x00]
	strb r0, [r7, #0x00]
_0804AF82:
	mov r2, r8
	adds r2, #0x25
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
_0804AF8E:
	ldr r0, _0804B01C @ =0x0000020E
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _0804AFC8
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r8
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0804AFC8
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804AFC8
	mov r8, r3
	ldr r2, [sp, #0x018]
	adds r2, #0x01
	str r2, [sp, #0x018]
	cmp r2, #0x01
	bgt _0804AFC8
	bl _0804A71C
_0804AFC8:
	ldr r2, [sp, #0x074]
	ldr r4, [sp, #0x06C]
	cmp r2, #0x00
	beq _0804AFD4
	bl _0804A6C8
_0804AFD4:
	ldr r3, [sp, #0x070]
	ldrb r1, [r3, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	beq _0804B008
	ldr r4, _0804B020 @ =0x000002B5
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _0804B008
	ldr r5, _0804B024 @ =0x000002B6
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804B008
	adds r0, r7, #0x0
	bl sub_8046980__11FieldObject
	adds r0, r7, #0x0
	bl sub_8046A10__11FieldObject
_0804B008:
	add sp, #0x084
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804B018: .4byte 0xFFFFFE7F
_0804B01C: .4byte 0x0000020E
_0804B020: .4byte 0x000002B5
_0804B024: .4byte 0x000002B6
	thumb_func_start sub_804B028
sub_804B028:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r12, r0
	adds r6, r1, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r2, [r0, #0x00]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _0804B04A
	b _0804B24A
_0804B04A:
	ldr r3, _0804B0A8 @ =0x00000216
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804B05A
	b _0804B24A
_0804B05A:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	bne _0804B064
	b _0804B24A
_0804B064:
	adds r3, #0x5C
	mov r4, r12
	adds r0, r4, r3
	ldrh r5, [r0, #0x00]
	ldr r2, _0804B0AC @ =0x00000276
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r3, r6, r3
	ldrh r4, [r3, #0x00]
	adds r2, r6, r2
	ldrh r2, [r2, #0x00]
	mov r10, r2
	adds r1, r6, r1
	ldrh r1, [r1, #0x00]
	str r1, [sp, #0x010]
	lsrs r0, r4, #0x01
	ldr r1, [r6, #0x0C]
	subs r3, r1, r0
	movs r0, #0xA1
	lsls r0, r0, #0x02
	add r0, r12
	ldr r2, [r0, #0x00]
	str r1, [sp, #0x008]
	cmp r3, r2
	bge _0804B0B0
	adds r0, r3, r4
	subs r4, r0, r2
	b _0804B0B4
_0804B0A8: .4byte 0x00000216
_0804B0AC: .4byte 0x00000276
_0804B0B0:
	adds r0, r2, r5
	subs r4, r0, r3
_0804B0B4:
	cmp r4, #0x00
	bge _0804B0BA
	b _0804B24A
_0804B0BA:
	movs r5, #0x9C
	lsls r5, r5, #0x02
	adds r0, r6, r5
	movs r7, #0x00
	ldsh r1, [r0, r7]
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0xA2
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	cmp r8, r1
	ble _0804B0E0
	mov r2, r8
	mov r3, r10
	subs r0, r2, r3
	subs r3, r1, r0
	b _0804B0E8
_0804B0E0:
	mov r5, r9
	subs r0, r1, r5
	mov r7, r8
	subs r3, r7, r0
_0804B0E8:
	cmp r3, #0x00
	bge _0804B0EE
	b _0804B24A
_0804B0EE:
	cmp r3, #0x00
	bne _0804B0F8
	cmp r4, #0x00
	bne _0804B0F8
	b _0804B24A
_0804B0F8:
	ldr r2, [r6, #0x14]
	ldr r1, [r6, #0x18]
	cmp r1, #0x00
	bgt _0804B10A
	cmp r1, #0x00
	bge _0804B10C
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0804B10C
_0804B10A:
	adds r2, r2, r1
_0804B10C:
	movs r0, #0xA3
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	cmp r2, r1
	bgt _0804B120
	ldr r5, [sp, #0x010]
	adds r0, r2, r5
	subs r0, r0, r1
	b _0804B126
_0804B120:
	ldr r7, [sp, #0x000]
	adds r0, r1, r7
	subs r0, r0, r2
_0804B126:
	cmp r0, #0x00
	bge _0804B12C
	b _0804B24A
_0804B12C:
	movs r5, #0x00
	movs r0, #0x00
	str r0, [sp, #0x004]
	mov r0, r12
	adds r0, #0x29
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0x54
	str r0, [sp, #0x00C]
	ldrb r7, [r0, #0x00]
	cmp r1, r7
	beq _0804B16C
	cmp r4, #0x00
	ble _0804B170
	cmp r3, #0x00
	ble _0804B170
	mov r1, r12
	ldr r0, [r1, #0x3C]
	ldr r1, [r1, #0x40]
	adds r1, r0, r1
	ldr r3, [sp, #0x000]
	adds r0, r1, r3
	cmp r0, r2
	bgt _0804B164
	movs r4, #0x01
	str r4, [sp, #0x004]
	b _0804B170
_0804B164:
	ldr r7, [sp, #0x010]
	adds r0, r2, r7
	cmp r1, r0
	blt _0804B170
_0804B16C:
	movs r0, #0x02
	str r0, [sp, #0x004]
_0804B170:
	ldr r4, [r6, #0x34]
	movs r2, #0x9C
	lsls r2, r2, #0x02
	mov r1, r12
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	ldr r1, [r1, #0x38]
	adds r1, r1, r0
	mov r7, r9
	asrs r3, r7, #0x1F
	subs r0, r7, r3
	asrs r0, r0, #0x01
	subs r7, r1, r0
	adds r2, r6, r2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	mov r2, r10
	lsrs r1, r2, #0x01
	subs r2, r0, r1
	mov r0, r12
	ldr r6, [r0, #0x34]
	cmp r6, r4
	bne _0804B1C8
	cmp r7, r2
	bne _0804B1C8
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x01
	bls _0804B1F6
	cmp r0, #0x02
	bhi _0804B1BC
	movs r0, #0x08
	b _0804B1FE
_0804B1BC:
	cmp r0, #0x05
	bls _0804B1FC
	cmp r0, #0x06
	bhi _0804B1F6
	movs r0, #0x02
	b _0804B1FE
_0804B1C8:
	mov r0, r9
	add r0, r10
	asrs r1, r0, #0x01
	adds r0, r2, r1
	cmp r7, r0
	bge _0804B1E8
	subs r0, r2, r1
	cmp r7, r0
	ble _0804B1E8
	ldr r1, [sp, #0x008]
	cmp r6, r1
	bge _0804B1E4
	movs r0, #0x02
	b _0804B1FE
_0804B1E4:
	movs r0, #0x08
	b _0804B1FE
_0804B1E8:
	mov r2, r9
	subs r0, r2, r3
	asrs r0, r0, #0x01
	mov r3, r8
	subs r0, r3, r0
	cmp r7, r0
	ble _0804B1FC
_0804B1F6:
	movs r0, #0x01
	orrs r5, r0
	b _0804B204
_0804B1FC:
	movs r0, #0x04
_0804B1FE:
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_0804B204:
	ldr r4, [sp, #0x00C]
	ldrb r0, [r4, #0x00]
	movs r3, #0xCF
	lsls r3, r3, #0x02
	add r3, r12
	movs r1, #0x7F
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r3, #0xD4
	lsls r3, r3, #0x02
	add r3, r12
	movs r0, #0x0F
	adds r1, r5, #0x0
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	ldr r7, [sp, #0x004]
	lsls r2, r7, #0x04
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	orrs r5, r0
	adds r0, r5, #0x0
	b _0804B24C
_0804B24A:
	movs r0, #0x00
_0804B24C:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_804B25C
sub_804B25C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r3, [r0, #0x00]
	movs r0, #0x01
	ands r0, r3
	cmp r0, #0x00
	beq _0804B350
	ldr r2, _0804B2DC @ =0x00000216
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r2, #0x20
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0804B350
	adds r0, r2, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _0804B350
	movs r1, #0x01
	ldsb r1, [r5, r1]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	beq _0804B350
	ldr r3, _0804B2E0 @ =0x00000272
	adds r0, r5, r3
	ldrh r6, [r0, #0x00]
	ldr r2, _0804B2E4 @ =0x00000276
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	mov r12, r0
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	mov r9, r0
	adds r3, r4, r3
	ldrh r3, [r3, #0x00]
	adds r2, r4, r2
	ldrh r7, [r2, #0x00]
	adds r1, r4, r1
	ldrh r1, [r1, #0x00]
	mov r8, r1
	lsrs r1, r3, #0x01
	ldr r0, [r4, #0x0C]
	subs r2, r0, r1
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	cmp r2, r1
	bge _0804B2E8
	adds r0, r2, r3
	subs r0, r0, r1
	b _0804B2EC
_0804B2DC: .4byte 0x00000216
_0804B2E0: .4byte 0x00000272
_0804B2E4: .4byte 0x00000276
_0804B2E8:
	adds r0, r1, r6
	subs r0, r0, r2
_0804B2EC:
	cmp r0, #0x00
	ble _0804B350
	movs r2, #0x9C
	lsls r2, r2, #0x02
	adds r0, r4, r2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r2, r0, r1
	movs r1, #0xA2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	cmp r2, r1
	ble _0804B310
	subs r0, r2, r7
	subs r0, r1, r0
	b _0804B316
_0804B310:
	mov r3, r12
	subs r0, r1, r3
	subs r0, r2, r0
_0804B316:
	cmp r0, #0x00
	ble _0804B350
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0x18]
	cmp r1, #0x00
	bgt _0804B32C
	cmp r1, #0x00
	bge _0804B32E
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0804B32E
_0804B32C:
	adds r2, r2, r1
_0804B32E:
	movs r1, #0xA3
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	cmp r2, r1
	bgt _0804B342
	mov r3, r8
	adds r0, r2, r3
	subs r0, r0, r1
	b _0804B348
_0804B342:
	mov r3, r9
	adds r0, r1, r3
	subs r0, r0, r2
_0804B348:
	cmp r0, #0x00
	ble _0804B350
	movs r0, #0x01
	b _0804B352
_0804B350:
	movs r0, #0x00
_0804B352:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_804B360
sub_804B360:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x0C4
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x034]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x038]
	cmp r1, #0x00
	beq _0804B380
	b _0804B49A
_0804B380:
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0804B396
	bl _0804C670
_0804B396:
	ldr r2, _0804B474 @ =0x00000216
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r2, #0x20
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0804B3AA
	bl _0804C670
_0804B3AA:
	ldr r4, _0804B478 @ =0x0000020D
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0804B49A
	movs r5, #0x84
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0804B49A
	ldr r0, [r7, #0x34]
	ldr r3, [r7, #0x0C]
	ldr r4, [r7, #0x10]
	cmp r3, r0
	bne _0804B3EC
	ldr r0, [r7, #0x38]
	cmp r4, r0
	bne _0804B3EC
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x3C]
	cmp r1, r0
	bne _0804B3EC
	ldr r0, [r7, #0x18]
	ldr r2, [r7, #0x40]
	cmp r0, r2
	bne _0804B3EC
	bl _0804C670
_0804B3EC:
	movs r6, #0xA4
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	add r1, sp, #0x014
	str r1, [sp, #0x000]
	add r1, sp, #0x018
	str r1, [sp, #0x004]
	add r2, sp, #0x008
	movs r1, #0x00
	strb r1, [r2, #0x00]
	ldr r2, _0804B478 @ =0x0000020D
	adds r1, r7, r2
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	movs r2, #0x01
	ands r1, r2
	add r2, sp, #0x00C
	strb r1, [r2, #0x00]
	adds r1, r3, #0x0
	adds r2, r4, #0x0
	add r3, sp, #0x010
	bl sub_803FBA4
	str r0, [r7, #0x20]
	movs r3, #0x00
	ldr r2, [sp, #0x018]
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	beq _0804B436
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	cmp r0, r2
	blt _0804B436
	movs r3, #0x01
_0804B436:
	adds r2, r7, #0x0
	adds r2, #0x26
	lsls r3, r3, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r3, #0x8C
	lsls r3, r3, #0x02
	adds r1, r7, r3
	ldr r0, [r7, #0x0C]
	str r0, [r1, #0x00]
	movs r4, #0x8D
	lsls r4, r4, #0x02
	adds r1, r7, r4
	ldr r0, [r7, #0x10]
	str r0, [r1, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	ands r0, r1
	str r2, [sp, #0x0BC]
	cmp r0, #0x00
	beq _0804B47C
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	ldr r1, [sp, #0x018]
	b _0804B484
	.byte 0x00, 0x00
_0804B474: .4byte 0x00000216
_0804B478: .4byte 0x0000020D
_0804B47C:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	ldr r1, [sp, #0x010]
_0804B484:
	subs r0, r0, r1
	str r0, [r7, #0x18]
	str r1, [r7, #0x14]
	ldr r5, [sp, #0x0BC]
	ldrb r1, [r5, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
	bl _0804C670
_0804B49A:
	ldr r1, [r7, #0x0C]
	ldr r0, [r7, #0x34]
	ldr r5, [r7, #0x14]
	ldr r4, [r7, #0x3C]
	ldr r2, [r7, #0x40]
	cmp r1, r0
	bne _0804B4C4
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x38]
	cmp r1, r0
	bne _0804B4C4
	cmp r5, r4
	bne _0804B4C4
	ldr r3, [r7, #0x18]
	cmp r3, r2
	bne _0804B4C4
	ldr r6, [sp, #0x034]
	cmp r6, #0x00
	bne _0804B4C4
	bl _0804C600
_0804B4C4:
	movs r0, #0x00
	str r0, [sp, #0x040]
	ldr r1, _0804B574 @ =0x00FFFFFF
	str r1, [sp, #0x044]
	mov r10, r0
	movs r3, #0x00
	str r3, [sp, #0x060]
	movs r6, #0x00
	str r6, [sp, #0x064]
	adds r4, r4, r2
	str r4, [sp, #0x068]
	ldr r1, _0804B578 @ =0x0000027A
	adds r0, r7, r1
	ldrh r1, [r0, #0x00]
	adds r2, r4, r1
	str r2, [sp, #0x06C]
	ldr r0, [r7, #0x18]
	adds r5, r5, r0
	str r5, [sp, #0x070]
	adds r1, r5, r1
	str r1, [sp, #0x074]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	add r4, sp, #0x01C
	mov r8, r4
	add r5, sp, #0x020
	str r5, [sp, #0x000]
	mov r6, sp
	adds r6, #0x24
	str r6, [sp, #0x0C0]
	str r6, [sp, #0x004]
	add r5, sp, #0x008
	movs r4, #0x01
	strb r4, [r5, #0x00]
	subs r3, #0x83
	ldrb r6, [r3, r7]
	mov r12, r6
	mov r6, r12
	lsrs r3, r6, #0x03
	ands r3, r4
	add r4, sp, #0x00C
	strb r3, [r4, #0x00]
	mov r3, r8
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x048]
	ldr r2, [r3, #0x00]
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	str r5, [sp, #0x0B4]
	str r4, [sp, #0x0B8]
	cmp r0, #0x03
	bls _0804B544
	ldr r1, [sp, #0x048]
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r1, r4
	str r1, [sp, #0x048]
_0804B544:
	movs r5, #0x84
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804B57C
	ldr r6, [sp, #0x024]
	str r6, [sp, #0x04C]
	cmp r6, #0x00
	blt _0804B584
	lsls r0, r2, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x03
	bls _0804B584
	cmp r0, #0x06
	bhi _0804B584
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r6, r6, r0
	str r6, [sp, #0x04C]
	b _0804B584
	.byte 0x00, 0x00
_0804B574: .4byte 0x00FFFFFF
_0804B578: .4byte 0x0000027A
_0804B57C:
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x024]
	str r0, [sp, #0x04C]
_0804B584:
	ldr r5, [sp, #0x01C]
	ldr r1, [r7, #0x0C]
	str r1, [sp, #0x050]
	ldr r2, [r7, #0x10]
	str r2, [sp, #0x054]
	str r3, [sp, #0x03C]
	ldr r0, [sp, #0x024]
	cmp r10, r0
	bge _0804B59E
	mov r10, r0
	str r1, [sp, #0x058]
	str r2, [sp, #0x05C]
	str r3, [sp, #0x040]
_0804B59E:
	ldr r3, _0804B8CC @ =0x0000027E
	adds r4, r7, r3
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [sp, #0x050]
	subs r6, r1, r0
	ldr r2, [sp, #0x054]
	mov r9, r2
	adds r3, #0x12
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	add r1, sp, #0x020
	str r1, [sp, #0x000]
	add r2, sp, #0x024
	str r2, [sp, #0x004]
	movs r2, #0x01
	ldr r3, [sp, #0x0B4]
	strb r2, [r3, #0x00]
	ldr r3, _0804B8D0 @ =0x0000020D
	adds r1, r7, r3
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r2, [sp, #0x0B8]
	strb r1, [r2, #0x00]
	adds r1, r6, #0x0
	ldr r2, [sp, #0x054]
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldrb r1, [r3, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x05
	bne _0804B5F0
	ldrh r1, [r4, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [sp, #0x01C]
	subs r0, r0, r1
	str r0, [sp, #0x01C]
_0804B5F0:
	ldr r0, [sp, #0x01C]
	ldr r4, [sp, #0x048]
	cmp r4, r0
	bge _0804B61E
	ldr r1, [sp, #0x04C]
	cmp r1, r0
	bgt _0804B61E
	cmp r5, r0
	bge _0804B61E
	adds r5, r0, #0x0
	str r6, [sp, #0x050]
	str r3, [sp, #0x03C]
	movs r2, #0x01
	str r2, [sp, #0x060]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804B61E
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r4, r5, r4
	str r4, [sp, #0x048]
_0804B61E:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804B6C6
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x05
	bne _0804B646
	ldr r2, _0804B8CC @ =0x0000027E
	adds r0, r7, r2
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [sp, #0x024]
	subs r0, r0, r1
	str r0, [sp, #0x024]
_0804B646:
	ldr r0, [sp, #0x024]
	ldr r4, [sp, #0x048]
	cmp r4, r0
	bge _0804B67C
	ldr r1, [sp, #0x04C]
	cmp r1, r0
	bge _0804B67C
	cmp r10, r0
	bge _0804B67C
	mov r10, r0
	str r6, [sp, #0x058]
	mov r2, r9
	str r2, [sp, #0x05C]
	str r3, [sp, #0x040]
	movs r3, #0x01
	str r3, [sp, #0x064]
	ldr r4, [sp, #0x040]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804B67C
	movs r6, #0x80
	lsls r6, r6, #0x05
	add r6, r10
	str r6, [sp, #0x04C]
_0804B67C:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r2
	ldr r2, [r7, #0x10]
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r3, #0x00
	ldr r6, [sp, #0x0B4]
	strb r3, [r6, #0x00]
	ldr r4, _0804B8D0 @ =0x0000020D
	adds r3, r7, r4
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	movs r4, #0x01
	ands r3, r4
	ldr r6, [sp, #0x0B8]
	strb r3, [r6, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	blt _0804B6C6
	ldr r1, [sp, #0x044]
	cmp r1, r0
	ble _0804B6C6
	str r0, [sp, #0x044]
_0804B6C6:
	ldr r1, [r7, #0x0C]
	ldr r2, _0804B8D4 @ =0xFFFFFF00
	adds r1, r1, r2
	ldr r3, _0804B8CC @ =0x0000027E
	adds r4, r7, r3
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x01
	adds r6, r1, r0
	ldr r0, [r7, #0x10]
	mov r9, r0
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r2, #0x01
	ldr r1, [sp, #0x0B4]
	strb r2, [r1, #0x00]
	ldr r3, _0804B8D0 @ =0x0000020D
	adds r1, r7, r3
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r2, [sp, #0x0B8]
	strb r1, [r2, #0x00]
	adds r1, r6, #0x0
	mov r2, r9
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldrb r1, [r3, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x04
	bne _0804B724
	ldr r1, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	str r1, [sp, #0x01C]
_0804B724:
	ldr r0, [sp, #0x01C]
	ldr r1, [sp, #0x048]
	cmp r1, r0
	bge _0804B756
	ldr r2, [sp, #0x04C]
	cmp r2, r0
	bgt _0804B756
	cmp r5, r0
	bge _0804B756
	adds r5, r0, #0x0
	str r6, [sp, #0x050]
	mov r4, r9
	str r4, [sp, #0x054]
	str r3, [sp, #0x03C]
	movs r0, #0x02
	str r0, [sp, #0x060]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804B756
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r1, r5, r1
	str r1, [sp, #0x048]
_0804B756:
	movs r2, #0x84
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804B808
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x04
	bne _0804B784
	ldr r0, [sp, #0x024]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	adds r2, #0x6E
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x01
	subs r0, r0, r1
	str r0, [sp, #0x024]
_0804B784:
	ldr r0, [sp, #0x024]
	ldr r4, [sp, #0x048]
	cmp r4, r0
	bge _0804B7BA
	ldr r1, [sp, #0x04C]
	cmp r1, r0
	bge _0804B7BA
	cmp r10, r0
	bge _0804B7BA
	mov r10, r0
	str r6, [sp, #0x058]
	mov r2, r9
	str r2, [sp, #0x05C]
	str r3, [sp, #0x040]
	movs r3, #0x02
	str r3, [sp, #0x064]
	ldr r4, [sp, #0x040]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804B7BA
	movs r6, #0x80
	lsls r6, r6, #0x05
	add r6, r10
	str r6, [sp, #0x04C]
_0804B7BA:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, _0804B8D4 @ =0xFFFFFF00
	adds r1, r1, r2
	movs r3, #0x9E
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r6, sp, #0x024
	str r6, [sp, #0x004]
	movs r3, #0x00
	ldr r4, [sp, #0x0B4]
	strb r3, [r4, #0x00]
	ldr r6, _0804B8D0 @ =0x0000020D
	adds r3, r7, r6
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	movs r4, #0x01
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	blt _0804B808
	ldr r6, [sp, #0x044]
	cmp r6, r0
	ble _0804B808
	str r0, [sp, #0x044]
_0804B808:
	movs r0, #0xA4
	lsls r0, r0, #0x02
	adds r0, r7, r0
	str r0, [sp, #0x078]
	ldr r6, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, _0804B8D8 @ =0xFFFFF000
	ands r1, r2
	cmp r1, #0x00
	bge _0804B820
	ldr r0, _0804B8DC @ =0x00000FFF
	adds r1, r1, r0
_0804B820:
	lsls r0, r1, #0x04
	asrs r3, r0, #0x10
	ldr r1, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	mov r9, r4
	add r1, r9
	movs r0, #0xA0
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldrh r0, [r4, #0x00]
	subs r1, r1, r0
	ands r1, r2
	cmp r1, #0x00
	bge _0804B842
	ldr r0, _0804B8DC @ =0x00000FFF
	adds r1, r1, r0
_0804B842:
	lsls r2, r1, #0x04
	asrs r2, r2, #0x10
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	bl get_coldef_ptr_by_xz
	mov r8, r0
	movs r1, #0x00
	str r1, [sp, #0x07C]
	ldr r2, _0804B8CC @ =0x0000027E
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [r7, #0x0C]
	subs r6, r1, r0
	ldr r0, [r7, #0x10]
	add r0, r9
	ldrh r1, [r4, #0x00]
	subs r0, r0, r1
	mov r9, r0
	ldr r3, [sp, #0x078]
	ldr r0, [r3, #0x00]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r1, sp, #0x024
	str r1, [sp, #0x004]
	movs r2, #0x01
	ldr r3, [sp, #0x0B4]
	strb r2, [r3, #0x00]
	ldr r4, _0804B8D0 @ =0x0000020D
	adds r1, r7, r4
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r2, [sp, #0x0B8]
	strb r1, [r2, #0x00]
	adds r1, r6, #0x0
	mov r2, r9
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldrb r1, [r3, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804B8B2
	ldr r2, [r3, #0x00]
	ldr r0, _0804B8E0 @ =0x000F007F
	ands r0, r2
	ldr r1, _0804B8E4 @ =0x00030043
	cmp r0, r1
	beq _0804B8B2
	lsls r0, r2, #0x01
	lsrs r0, r0, #0x1E
	str r0, [sp, #0x07C]
_0804B8B2:
	ldrb r0, [r3, #0x00]
	movs r4, #0x07
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x05
	bne _0804B8E8
	ldr r4, _0804B8CC @ =0x0000027E
	adds r0, r7, r4
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [sp, #0x01C]
	b _0804B938
	.byte 0x00, 0x00
_0804B8CC: .4byte 0x0000027E
_0804B8D0: .4byte 0x0000020D
_0804B8D4: .4byte 0xFFFFFF00
_0804B8D8: .4byte 0xFFFFF000
_0804B8DC: .4byte 0x00000FFF
_0804B8E0: .4byte 0x000F007F
_0804B8E4: .4byte 0x00030043
_0804B8E8:
	cmp r1, #0x04
	bne _0804B924
	ldr r1, _0804B91C @ =0x0000027E
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [sp, #0x01C]
	adds r2, r1, r0
	str r2, [sp, #0x01C]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x04
	beq _0804B93C
	mov r4, r8
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x04
	beq _0804B93C
	ldr r0, _0804B920 @ =0xFFFFF000
	ands r2, r0
	str r2, [sp, #0x01C]
	b _0804B93C
	.byte 0x00, 0x00
_0804B91C: .4byte 0x0000027E
_0804B920: .4byte 0xFFFFF000
_0804B924:
	cmp r1, #0x06
	bne _0804B93C
	ldr r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
_0804B938:
	subs r0, r0, r1
	str r0, [sp, #0x01C]
_0804B93C:
	ldr r0, [sp, #0x01C]
	ldr r4, [sp, #0x048]
	cmp r4, r0
	bge _0804B95C
	ldr r1, [sp, #0x04C]
	cmp r1, r0
	bgt _0804B95C
	cmp r5, r0
	bge _0804B95C
	adds r5, r0, #0x0
	str r6, [sp, #0x050]
	mov r2, r9
	str r2, [sp, #0x054]
	str r3, [sp, #0x03C]
	movs r4, #0x03
	str r4, [sp, #0x060]
_0804B95C:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804BA54
	ldrb r0, [r3, #0x02]
	movs r4, #0x0F
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x05
	bne _0804B988
	ldr r2, _0804B984 @ =0x0000027E
	adds r0, r7, r2
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [sp, #0x024]
	b _0804B9D8
_0804B984: .4byte 0x0000027E
_0804B988:
	cmp r1, #0x04
	bne _0804B9C4
	ldr r1, _0804B9BC @ =0x0000027E
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [sp, #0x024]
	adds r2, r1, r0
	str r2, [sp, #0x024]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x04
	beq _0804B9DC
	mov r0, r8
	ldrb r1, [r0, #0x02]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x04
	beq _0804B9DC
	ldr r0, _0804B9C0 @ =0xFFFFF000
	ands r2, r0
	str r2, [sp, #0x024]
	b _0804B9DC
	.byte 0x00, 0x00
_0804B9BC: .4byte 0x0000027E
_0804B9C0: .4byte 0xFFFFF000
_0804B9C4:
	cmp r1, #0x06
	bne _0804B9DC
	ldr r0, [sp, #0x024]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
_0804B9D8:
	subs r0, r0, r1
	str r0, [sp, #0x024]
_0804B9DC:
	ldr r0, [sp, #0x024]
	ldr r4, [sp, #0x048]
	cmp r4, r0
	bge _0804B9FC
	ldr r1, [sp, #0x04C]
	cmp r1, r0
	bge _0804B9FC
	cmp r10, r0
	bge _0804B9FC
	mov r10, r0
	str r6, [sp, #0x058]
	mov r2, r9
	str r2, [sp, #0x05C]
	str r3, [sp, #0x040]
	movs r3, #0x03
	str r3, [sp, #0x064]
_0804B9FC:
	movs r4, #0xA4
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r1, r7, r6
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r2
	ldr r2, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r2, r3
	subs r4, #0x14
	adds r3, r7, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	add r6, sp, #0x020
	str r6, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r3, #0x00
	ldr r4, [sp, #0x0B4]
	strb r3, [r4, #0x00]
	ldr r6, _0804BAE8 @ =0x0000020D
	adds r3, r7, r6
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	movs r4, #0x01
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	blt _0804BA54
	ldr r6, [sp, #0x044]
	cmp r6, r0
	ble _0804BA54
	str r0, [sp, #0x044]
_0804BA54:
	movs r0, #0x00
	str r0, [sp, #0x080]
	ldr r1, [r7, #0x0C]
	ldr r2, _0804BAEC @ =0xFFFFFF00
	adds r1, r1, r2
	ldr r3, _0804BAF0 @ =0x0000027E
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r6, r1, r0
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
	subs r0, r0, r1
	mov r9, r0
	adds r3, #0x12
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r1, sp, #0x024
	str r1, [sp, #0x004]
	movs r2, #0x01
	ldr r3, [sp, #0x0B4]
	strb r2, [r3, #0x00]
	ldr r4, _0804BAE8 @ =0x0000020D
	adds r1, r7, r4
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r2, [sp, #0x0B8]
	strb r1, [r2, #0x00]
	adds r1, r6, #0x0
	mov r2, r9
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldrb r1, [r3, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804BAC6
	ldr r2, [r3, #0x00]
	ldr r0, _0804BAF4 @ =0x000F007F
	ands r0, r2
	ldr r1, _0804BAF8 @ =0x00030043
	cmp r0, r1
	beq _0804BAC6
	lsls r0, r2, #0x01
	lsrs r0, r0, #0x1E
	str r0, [sp, #0x080]
_0804BAC6:
	movs r4, #0x00
	mov r8, r4
	ldrb r0, [r3, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x04
	bne _0804BAFC
	ldr r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r2, _0804BAF0 @ =0x0000027E
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x01
	b _0804BB40
	.byte 0x00, 0x00
_0804BAE8: .4byte 0x0000020D
_0804BAEC: .4byte 0xFFFFFF00
_0804BAF0: .4byte 0x0000027E
_0804BAF4: .4byte 0x000F007F
_0804BAF8: .4byte 0x00030043
_0804BAFC:
	cmp r1, #0x05
	bne _0804BB2C
	ldr r1, [sp, #0x01C]
	ldr r4, _0804BB24 @ =0xFFFFFF00
	adds r1, r1, r4
	ldr r2, _0804BB28 @ =0x0000027E
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	str r1, [sp, #0x01C]
	ldr r0, [sp, #0x07C]
	ldr r4, [sp, #0x080]
	ands r0, r4
	cmp r0, #0x00
	beq _0804BB54
	movs r0, #0x80
	lsls r0, r0, #0x05
	b _0804BB52
	.byte 0x00, 0x00
_0804BB24: .4byte 0xFFFFFF00
_0804BB28: .4byte 0x0000027E
_0804BB2C:
	cmp r1, #0x06
	bne _0804BB46
	ldr r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
_0804BB40:
	subs r0, r0, r1
	str r0, [sp, #0x01C]
	b _0804BB54
_0804BB46:
	ldr r0, [sp, #0x07C]
	ldr r4, [sp, #0x080]
	ands r0, r4
	cmp r0, #0x00
	beq _0804BB54
	ldr r0, _0804BBAC @ =0xFFFFF000
_0804BB52:
	mov r8, r0
_0804BB54:
	ldr r1, [sp, #0x01C]
	ldr r2, [sp, #0x048]
	cmp r2, r1
	bge _0804BB78
	ldr r4, [sp, #0x04C]
	cmp r4, r1
	bgt _0804BB78
	mov r2, r8
	adds r0, r1, r2
	cmp r5, r0
	bge _0804BB78
	adds r5, r1, #0x0
	str r6, [sp, #0x050]
	mov r4, r9
	str r4, [sp, #0x054]
	str r3, [sp, #0x03C]
	movs r0, #0x04
	str r0, [sp, #0x060]
_0804BB78:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0804BB8A
	b _0804BCA2
_0804BB8A:
	movs r2, #0x00
	mov r8, r2
	ldrb r0, [r3, #0x02]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x04
	bne _0804BBB4
	ldr r0, [sp, #0x024]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	ldr r2, _0804BBB0 @ =0x0000027E
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x01
	b _0804BC0C
	.byte 0x00, 0x00
_0804BBAC: .4byte 0xFFFFF000
_0804BBB0: .4byte 0x0000027E
_0804BBB4:
	cmp r1, #0x05
	bne _0804BBF8
	ldr r4, _0804BBEC @ =0x0000027E
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, _0804BBF0 @ =0xFFFFFF00
	adds r2, r0, r1
	ldr r1, [sp, #0x024]
	ldr r0, _0804BBF4 @ =0x00000FFF
	ands r0, r1
	cmp r0, #0x00
	beq _0804BC20
	movs r4, #0x80
	lsls r4, r4, #0x05
	subs r0, r4, r0
	cmp r0, r2
	ble _0804BC20
	adds r0, r1, r2
	str r0, [sp, #0x024]
	ldr r2, [sp, #0x07C]
	ldr r0, [sp, #0x080]
	ands r2, r0
	cmp r2, #0x00
	beq _0804BC20
	mov r8, r4
	b _0804BC20
	.byte 0x00, 0x00
_0804BBEC: .4byte 0x0000027E
_0804BBF0: .4byte 0xFFFFFF00
_0804BBF4: .4byte 0x00000FFF
_0804BBF8:
	cmp r1, #0x06
	bne _0804BC12
	ldr r0, [sp, #0x024]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
_0804BC0C:
	subs r0, r0, r1
	str r0, [sp, #0x024]
	b _0804BC20
_0804BC12:
	ldr r4, [sp, #0x07C]
	ldr r0, [sp, #0x080]
	ands r4, r0
	cmp r4, #0x00
	beq _0804BC20
	ldr r1, _0804BD0C @ =0xFFFFF000
	mov r8, r1
_0804BC20:
	ldr r1, [sp, #0x024]
	ldr r2, [sp, #0x048]
	cmp r2, r1
	bge _0804BC44
	ldr r4, [sp, #0x04C]
	cmp r4, r1
	bge _0804BC44
	mov r2, r8
	adds r0, r1, r2
	cmp r10, r0
	bge _0804BC44
	mov r10, r1
	str r6, [sp, #0x058]
	mov r4, r9
	str r4, [sp, #0x05C]
	str r3, [sp, #0x040]
	movs r6, #0x04
	str r6, [sp, #0x064]
_0804BC44:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, _0804BD10 @ =0xFFFFFF00
	adds r1, r1, r2
	movs r3, #0x9E
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r2, r2, r4
	movs r6, #0x9F
	lsls r6, r6, #0x02
	adds r3, r7, r6
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r3, #0x00
	ldr r6, [sp, #0x0B4]
	strb r3, [r6, #0x00]
	ldr r4, _0804BD14 @ =0x0000020D
	adds r3, r7, r4
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	movs r4, #0x01
	ands r3, r4
	ldr r6, [sp, #0x0B8]
	strb r3, [r6, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	blt _0804BCA2
	ldr r1, [sp, #0x044]
	cmp r1, r0
	ble _0804BCA2
	str r0, [sp, #0x044]
_0804BCA2:
	ldr r0, _0804BD18 @ =0x00FFFFFF
	ldr r2, [sp, #0x044]
	cmp r2, r0
	bne _0804BCAE
	movs r3, #0x00
	str r3, [sp, #0x044]
_0804BCAE:
	ldr r6, [sp, #0x070]
	movs r4, #0x00
	mov r9, r4
	ldr r0, [sp, #0x068]
	cmp r6, r0
	ble _0804BD30
	ldr r1, _0804BD14 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804BD4E
	ldr r2, [sp, #0x044]
	cmp r2, #0x00
	ble _0804BD4E
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r2, r3
	ldr r4, [sp, #0x06C]
	cmp r4, r0
	bge _0804BD20
	ldr r0, [sp, #0x074]
	cmp r0, r2
	ble _0804BD20
	ldr r1, _0804BD1C @ =0x0000027A
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	subs r6, r2, r0
	movs r2, #0x01
	mov r9, r2
	movs r3, #0x97
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _0804BD4E
	movs r4, #0x96
	lsls r4, r4, #0x02
	adds r1, r7, r4
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0804BD4E
	negs r0, r0
	str r0, [r1, #0x00]
	b _0804BD4E
	.byte 0x00, 0x00
_0804BD0C: .4byte 0xFFFFF000
_0804BD10: .4byte 0xFFFFFF00
_0804BD14: .4byte 0x0000020D
_0804BD18: .4byte 0x00FFFFFF
_0804BD1C: .4byte 0x0000027A
_0804BD20:
	ldr r0, [sp, #0x06C]
	cmp r0, r10
	blt _0804BD4E
	ldr r1, [sp, #0x070]
	cmp r1, r10
	bge _0804BD4E
_0804BD2C:
	mov r6, r10
	b _0804BD4E
_0804BD30:
	ldr r2, [sp, #0x068]
	cmp r6, r2
	bge _0804BD4E
	mov r3, r10
	cmp r3, #0x00
	ble _0804BD46
	ldr r4, [sp, #0x06C]
	cmp r4, r10
	ble _0804BD46
	cmp r6, r10
	blt _0804BD2C
_0804BD46:
	ldr r0, [sp, #0x070]
	cmp r0, r5
	bge _0804BD4E
	adds r6, r5, #0x0
_0804BD4E:
	movs r4, #0x00
	ldr r1, [sp, #0x040]
	ldr r3, [r1, #0x00]
	lsls r2, r3, #0x01
	adds r1, r7, #0x0
	adds r1, #0x26
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r2
	lsrs r0, r0, #0x1E
	str r1, [sp, #0x0BC]
	cmp r0, #0x00
	beq _0804BD70
	ldr r2, _0804BD84 @ =0x0000023E
	adds r0, r7, r2
	movs r1, #0x00
	ldsh r4, [r0, r1]
_0804BD70:
	movs r1, #0x00
	mov r2, r10
	cmp r2, #0x00
	ble _0804BD90
	cmp r5, r10
	blt _0804BD88
	cmp r5, r6
	ble _0804BD90
	b _0804BD96
	.byte 0x00, 0x00
_0804BD84: .4byte 0x0000023E
_0804BD88:
	adds r0, r6, r4
	cmp r10, r0
	bgt _0804BD90
	movs r1, #0x01
_0804BD90:
	cmp r1, #0x00
	bne _0804BD96
	b _0804C1D2
_0804BD96:
	lsls r0, r3, #0x0C
	lsrs r3, r0, #0x1C
	subs r0, r3, #0x4
	cmp r0, #0x02
	bls _0804BDA2
	b _0804C098
_0804BDA2:
	ldr r4, [sp, #0x040]
	ldrb r1, [r4, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x10
	bne _0804BDB0
	b _0804C098
_0804BDB0:
	subs r1, r3, #0x3
	movs r0, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	ldr r5, [sp, #0x0BC]
	ldrb r2, [r5, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r0, [sp, #0x064]
	cmp r0, #0x02
	beq _0804BE2C
	cmp r0, #0x02
	bgt _0804BDD6
	cmp r0, #0x01
	beq _0804BDE4
	b _0804C0A4
_0804BDD6:
	ldr r1, [sp, #0x064]
	cmp r1, #0x03
	beq _0804BEA8
	cmp r1, #0x04
	bne _0804BDE2
	b _0804BF54
_0804BDE2:
	b _0804C0A4
_0804BDE4:
	ldr r2, [sp, #0x040]
	ldrb r0, [r2, #0x02]
	movs r1, #0x0F
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804BDF8
	b _0804BFF0
_0804BDF8:
	cmp r1, #0x06
	beq _0804BDFE
	b _0804C0A4
_0804BDFE:
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r2, _0804BE28 @ =0x0000027E
	adds r1, r7, r2
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r2
	ldr r2, [r7, #0x10]
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r4, #0x01
	add r5, sp, #0x064
	ldrb r3, [r5, #0x00]
	ldr r5, [sp, #0x0B4]
	strb r3, [r5, #0x00]
	b _0804BE82
_0804BE28: .4byte 0x0000027E
_0804BE2C:
	ldr r1, [sp, #0x040]
	ldrb r0, [r1, #0x02]
	movs r1, #0x0F
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804BE54
	ldr r2, _0804BE4C @ =0x00000FFF
	add r10, r2
	ldr r0, _0804BE50 @ =0xFFFFF000
	mov r3, r10
	ands r3, r0
	mov r10, r3
	b _0804C0A4
_0804BE4C: .4byte 0x00000FFF
_0804BE50: .4byte 0xFFFFF000
_0804BE54:
	cmp r1, #0x06
	beq _0804BE5A
	b _0804C0A4
_0804BE5A:
	movs r4, #0xA4
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r5, _0804BE9C @ =0xFFFFFF00
	adds r1, r1, r5
	ldr r3, _0804BEA0 @ =0x0000027E
	adds r2, r7, r3
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r5, sp, #0x024
	str r5, [sp, #0x004]
	movs r4, #0x01
	ldr r3, [sp, #0x0B4]
	strb r4, [r3, #0x00]
_0804BE82:
	ldr r5, _0804BEA4 @ =0x0000020D
	adds r3, r7, r5
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r5, [sp, #0x024]
	mov r10, r5
	b _0804C0A4
_0804BE9C: .4byte 0xFFFFFF00
_0804BEA0: .4byte 0x0000027E
_0804BEA4: .4byte 0x0000020D
_0804BEA8:
	ldr r1, [sp, #0x040]
	ldrb r0, [r1, #0x02]
	movs r5, #0x0F
	adds r1, r5, #0x0
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804BF24
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r2, r3
	movs r4, #0xA0
	lsls r4, r4, #0x02
	adds r3, r7, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	mov r12, r2
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r2, [sp, #0x0B4]
	strb r4, [r2, #0x00]
	ldr r3, _0804BF20 @ =0x0000020D
	ldrb r2, [r3, r7]
	mov r8, r2
	mov r2, r8
	lsrs r3, r2, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	mov r2, r12
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x040]
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804BFBE
	ldr r2, [sp, #0x040]
	ldrb r1, [r2, #0x02]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x05
	bne _0804BFF4
	b _0804BFF0
_0804BF20: .4byte 0x0000020D
_0804BF24:
	cmp r1, #0x06
	beq _0804BF2A
	b _0804C0A4
_0804BF2A:
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r2, _0804BF50 @ =0x0000027E
	adds r1, r7, r2
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r2
	ldr r2, [r7, #0x10]
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r4, #0x01
	ldr r5, [sp, #0x0B4]
	strb r4, [r5, #0x00]
	b _0804C034
_0804BF50: .4byte 0x0000027E
_0804BF54:
	ldr r2, [sp, #0x040]
	ldrb r0, [r2, #0x02]
	movs r5, #0x0F
	adds r1, r5, #0x0
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804C008
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r2, r2, r4
	movs r4, #0xA0
	lsls r4, r4, #0x02
	adds r3, r7, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	mov r12, r2
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r2, [sp, #0x0B4]
	strb r4, [r2, #0x00]
	ldr r3, _0804BFDC @ =0x0000020D
	ldrb r2, [r3, r7]
	mov r8, r2
	mov r2, r8
	lsrs r3, r2, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	mov r2, r12
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x040]
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804BFE4
_0804BFBE:
	ldr r0, _0804BFE0 @ =0xFFFFF000
	add r0, r10
	ldr r1, [sp, #0x01C]
	cmp r1, r0
	blt _0804BFD4
	movs r0, #0x80
	lsls r0, r0, #0x05
	add r0, r10
	mov r10, r1
	cmp r10, r0
	blt _0804C0A4
_0804BFD4:
	ldr r1, [sp, #0x024]
	mov r10, r1
	b _0804C0A4
	.byte 0x00, 0x00
_0804BFDC: .4byte 0x0000020D
_0804BFE0: .4byte 0xFFFFF000
_0804BFE4:
	ldr r2, [sp, #0x040]
	ldrb r1, [r2, #0x02]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _0804BFF4
_0804BFF0:
	ldr r3, _0804C000 @ =0x00000FFF
	add r10, r3
_0804BFF4:
	ldr r0, _0804C004 @ =0xFFFFF000
	mov r4, r10
	ands r4, r0
	mov r10, r4
	b _0804C0A4
	.byte 0x00, 0x00
_0804C000: .4byte 0x00000FFF
_0804C004: .4byte 0xFFFFF000
_0804C008:
	cmp r1, #0x06
	bne _0804C0A4
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, _0804C078 @ =0xFFFFFF00
	adds r1, r1, r2
	ldr r3, _0804C07C @ =0x0000027E
	adds r2, r7, r3
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r5, sp, #0x024
	str r5, [sp, #0x004]
	movs r4, #0x01
	ldr r3, [sp, #0x0B4]
	strb r4, [r3, #0x00]
_0804C034:
	ldr r5, _0804C080 @ =0x0000020D
	adds r3, r7, r5
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r5, [sp, #0x040]
	ldr r1, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C088
	ldr r0, _0804C084 @ =0xFFFFF000
	add r0, r10
	ldr r1, [sp, #0x01C]
	cmp r1, r0
	blt _0804C070
	movs r0, #0x80
	lsls r0, r0, #0x05
	add r0, r10
	mov r10, r1
	cmp r10, r0
	blt _0804C0A4
_0804C070:
	ldr r0, [sp, #0x024]
	mov r10, r0
	b _0804C0A4
	.byte 0x00, 0x00
_0804C078: .4byte 0xFFFFFF00
_0804C07C: .4byte 0x0000027E
_0804C080: .4byte 0x0000020D
_0804C084: .4byte 0xFFFFF000
_0804C088:
	ldr r0, _0804C094 @ =0xFFFFF000
	mov r1, r10
	ands r1, r0
	mov r10, r1
	b _0804C0A4
	.byte 0x00, 0x00
_0804C094: .4byte 0xFFFFF000
_0804C098:
	ldr r2, [sp, #0x0BC]
	ldrb r1, [r2, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0804C0A4:
	mov r3, r10
	subs r2, r6, r3
	ldr r4, _0804C0C8 @ =0x0000020D
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804C0D0
	ldr r5, _0804C0CC @ =0x0000023E
	adds r0, r7, r5
	movs r6, #0x00
	ldsh r0, [r0, r6]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r0, r3
	b _0804C0D2
	.byte 0x00, 0x00
_0804C0C8: .4byte 0x0000020D
_0804C0CC: .4byte 0x0000023E
_0804C0D0:
	movs r1, #0x00
_0804C0D2:
	ldr r4, [sp, #0x034]
	cmp r4, #0x00
	bne _0804C10C
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0804C10C
	cmp r2, r1
	bgt _0804C10C
	ldr r5, _0804C1B4 @ =0x0000020D
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0804C10A
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bne _0804C10C
	ldr r6, [sp, #0x040]
	ldr r1, [r6, #0x00]
	lsls r1, r1, #0x01
	ldr r3, [sp, #0x0BC]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C10C
_0804C10A:
	movs r2, #0x00
_0804C10C:
	cmp r2, #0x00
	ble _0804C134
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bne _0804C134
	movs r4, #0x96
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	negs r0, r0
	cmp r0, r2
	blt _0804C134
	ldr r5, _0804C1B4 @ =0x0000020D
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804C134
	movs r2, #0x00
_0804C134:
	str r2, [r7, #0x18]
	mov r6, r10
	str r6, [r7, #0x14]
	ldr r1, [sp, #0x0BC]
	ldrb r0, [r1, #0x00]
	movs r1, #0x02
	orrs r0, r1
	ldr r2, [sp, #0x0BC]
	strb r0, [r2, #0x00]
	movs r3, #0x8C
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r4, [sp, #0x058]
	str r4, [r0, #0x00]
	movs r5, #0x8D
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r6, [sp, #0x05C]
	str r6, [r0, #0x00]
	ldr r0, [sp, #0x040]
	str r0, [r7, #0x20]
	ldr r1, _0804C1B4 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	movs r2, #0x84
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	orrs r1, r0
	cmp r1, #0x00
	beq _0804C1A6
	ldr r3, [sp, #0x040]
	ldrb r1, [r3, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804C1A6
	ldrb r2, [r3, #0x00]
	movs r0, #0x07
	ands r0, r2
	cmp r0, #0x03
	beq _0804C1A6
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x03
	beq _0804C1A6
	movs r0, #0x78
	ands r0, r2
	cmp r0, #0x40
	bne _0804C1B8
_0804C1A6:
	ldr r4, [sp, #0x0BC]
	ldrb r1, [r4, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	b _0804C5B0
_0804C1B4: .4byte 0x0000020D
_0804C1B8:
	ldr r5, [sp, #0x040]
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	ldr r6, [sp, #0x0BC]
	ldrb r2, [r6, #0x00]
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r6, #0x00]
	b _0804C5B0
_0804C1D2:
	ldr r1, [sp, #0x03C]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x1D
	lsrs r2, r0, #0x1D
	subs r0, r2, #0x4
	cmp r0, #0x02
	bls _0804C1E2
	b _0804C470
_0804C1E2:
	ldrb r1, [r1, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x10
	bne _0804C1EE
	b _0804C470
_0804C1EE:
	subs r1, r2, #0x3
	movs r0, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	ldr r3, [sp, #0x0BC]
	ldrb r2, [r3, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r4, [sp, #0x060]
	cmp r4, #0x02
	beq _0804C274
	cmp r4, #0x02
	bgt _0804C214
	cmp r4, #0x01
	beq _0804C222
	b _0804C47E
_0804C214:
	ldr r0, [sp, #0x060]
	cmp r0, #0x03
	beq _0804C2C0
	cmp r0, #0x04
	bne _0804C220
	b _0804C370
_0804C220:
	b _0804C47E
_0804C222:
	ldr r1, [sp, #0x03C]
	ldrb r0, [r1, #0x00]
	movs r1, #0x07
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804C240
_0804C234:
	ldr r2, _0804C23C @ =0x00000FFF
	adds r5, r5, r2
	b _0804C410
	.byte 0x00, 0x00
_0804C23C: .4byte 0x00000FFF
_0804C240:
	cmp r1, #0x06
	beq _0804C246
	b _0804C47E
_0804C246:
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r4, _0804C270 @ =0x0000027E
	adds r1, r7, r4
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r2
	ldr r2, [r7, #0x10]
	add r5, sp, #0x020
	str r5, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	add r5, sp, #0x060
	ldrb r3, [r5, #0x00]
	ldr r5, [sp, #0x0B4]
	strb r3, [r5, #0x00]
	b _0804C44C
_0804C270: .4byte 0x0000027E
_0804C274:
	ldr r1, [sp, #0x03C]
	ldrb r0, [r1, #0x00]
	movs r1, #0x07
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _0804C234
	cmp r1, #0x06
	beq _0804C28C
	b _0804C47E
_0804C28C:
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r4, _0804C2B8 @ =0xFFFFFF00
	adds r1, r1, r4
	ldr r5, _0804C2BC @ =0x0000027E
	adds r2, r7, r5
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r4, #0x01
	ldr r5, [sp, #0x0B4]
	strb r4, [r5, #0x00]
	b _0804C44C
	.byte 0x00, 0x00
_0804C2B8: .4byte 0xFFFFFF00
_0804C2BC: .4byte 0x0000027E
_0804C2C0:
	ldr r1, [sp, #0x03C]
	ldrb r0, [r1, #0x00]
	movs r2, #0x07
	mov r8, r2
	mov r1, r8
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804C340
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r2, r2, r4
	movs r4, #0xA0
	lsls r4, r4, #0x02
	adds r3, r7, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	mov r12, r2
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r2, [sp, #0x0B4]
	strb r4, [r2, #0x00]
	ldr r3, _0804C33C @ =0x0000020D
	ldrb r2, [r3, r7]
	mov r10, r2
	mov r2, r10
	lsrs r3, r2, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	mov r2, r12
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x03C]
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804C3DC
	ldr r3, [sp, #0x03C]
	ldrb r1, [r3, #0x00]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x05
	bne _0804C410
	b _0804C40C
	.byte 0x00, 0x00
_0804C33C: .4byte 0x0000020D
_0804C340:
	cmp r1, #0x06
	beq _0804C346
	b _0804C47E
_0804C346:
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r2, _0804C36C @ =0x0000027E
	adds r1, r7, r2
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r2
	ldr r2, [r7, #0x10]
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r4, #0x01
	ldr r5, [sp, #0x0B4]
	strb r4, [r5, #0x00]
	b _0804C44C
_0804C36C: .4byte 0x0000027E
_0804C370:
	ldr r1, [sp, #0x03C]
	ldrb r0, [r1, #0x00]
	movs r2, #0x07
	mov r8, r2
	mov r1, r8
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804C420
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r2, r2, r4
	movs r4, #0xA0
	lsls r4, r4, #0x02
	adds r3, r7, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	mov r12, r2
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r2, [sp, #0x0B4]
	strb r4, [r2, #0x00]
	ldr r3, _0804C3F8 @ =0x0000020D
	ldrb r2, [r3, r7]
	mov r10, r2
	mov r2, r10
	lsrs r3, r2, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	mov r2, r12
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x03C]
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C400
_0804C3DC:
	ldr r1, _0804C3FC @ =0xFFFFF000
	adds r0, r5, r1
	ldr r1, [sp, #0x01C]
	cmp r1, r0
	blt _0804C3F2
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r5, r2
	adds r5, r1, #0x0
	cmp r5, r0
	blt _0804C47E
_0804C3F2:
	ldr r5, [sp, #0x024]
	b _0804C47E
	.byte 0x00, 0x00
_0804C3F8: .4byte 0x0000020D
_0804C3FC: .4byte 0xFFFFF000
_0804C400:
	ldr r3, [sp, #0x03C]
	ldrb r1, [r3, #0x00]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x04
	bne _0804C410
_0804C40C:
	ldr r4, _0804C418 @ =0x00000FFF
	adds r5, r5, r4
_0804C410:
	ldr r0, _0804C41C @ =0xFFFFF000
	ands r5, r0
	b _0804C47E
	.byte 0x00, 0x00
_0804C418: .4byte 0x00000FFF
_0804C41C: .4byte 0xFFFFF000
_0804C420:
	cmp r1, #0x06
	bne _0804C47E
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, _0804C464 @ =0xFFFFFF00
	adds r1, r1, r2
	ldr r3, _0804C468 @ =0x0000027E
	adds r2, r7, r3
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r5, sp, #0x024
	str r5, [sp, #0x004]
	movs r4, #0x01
	ldr r3, [sp, #0x0B4]
	strb r4, [r3, #0x00]
_0804C44C:
	ldr r5, _0804C46C @ =0x0000020D
	adds r3, r7, r5
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r5, [sp, #0x01C]
	b _0804C47E
_0804C464: .4byte 0xFFFFFF00
_0804C468: .4byte 0x0000027E
_0804C46C: .4byte 0x0000020D
_0804C470:
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	ldr r1, [sp, #0x0BC]
	strb r0, [r1, #0x00]
_0804C47E:
	subs r2, r6, r5
	ldr r3, _0804C4A0 @ =0x0000020D
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804C4A8
	ldr r4, _0804C4A4 @ =0x0000023E
	adds r0, r7, r4
	movs r6, #0x00
	ldsh r0, [r0, r6]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r0, r3
	b _0804C4AA
	.byte 0x00, 0x00
_0804C4A0: .4byte 0x0000020D
_0804C4A4: .4byte 0x0000023E
_0804C4A8:
	movs r1, #0x00
_0804C4AA:
	ldr r4, [sp, #0x034]
	cmp r4, #0x00
	bne _0804C4E4
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0804C4E4
	cmp r2, r1
	bgt _0804C4E4
	ldr r6, _0804C594 @ =0x0000020D
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0804C4E2
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bne _0804C4E4
	ldr r0, [sp, #0x03C]
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x01
	ldr r3, [sp, #0x0BC]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C4E4
_0804C4E2:
	movs r2, #0x00
_0804C4E4:
	cmp r2, #0x00
	ble _0804C50C
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bne _0804C50C
	movs r4, #0x96
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	negs r0, r0
	cmp r0, r2
	blt _0804C50C
	ldr r6, _0804C594 @ =0x0000020D
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804C50C
	movs r2, #0x00
_0804C50C:
	str r2, [r7, #0x18]
	str r5, [r7, #0x14]
	adds r0, r5, r2
	cmp r0, #0x00
	bge _0804C51C
	movs r0, #0x00
	str r0, [r7, #0x18]
	str r0, [r7, #0x14]
_0804C51C:
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	ldr r1, [sp, #0x0BC]
	strb r0, [r1, #0x00]
	movs r2, #0x8C
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r3, [sp, #0x050]
	str r3, [r0, #0x00]
	movs r4, #0x8D
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r5, [sp, #0x054]
	str r5, [r0, #0x00]
	ldr r6, [sp, #0x03C]
	str r6, [r7, #0x20]
	ldr r1, _0804C594 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	subs r2, #0x20
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	orrs r1, r0
	cmp r1, #0x00
	beq _0804C586
	ldrb r1, [r6, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804C586
	ldrb r2, [r6, #0x00]
	movs r0, #0x07
	ands r0, r2
	cmp r0, #0x03
	beq _0804C586
	ldrb r1, [r6, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x03
	beq _0804C586
	movs r0, #0x78
	ands r0, r2
	cmp r0, #0x40
	bne _0804C598
_0804C586:
	ldr r3, [sp, #0x0BC]
	ldrb r1, [r3, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	b _0804C5B0
_0804C594: .4byte 0x0000020D
_0804C598:
	ldr r4, [sp, #0x03C]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	ldr r5, [sp, #0x0BC]
	ldrb r2, [r5, #0x00]
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x00]
_0804C5B0:
	movs r6, #0x97
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _0804C5CE
	movs r0, #0x94
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r1, [r7, #0x3C]
	ldr r0, [r7, #0x14]
	subs r1, r1, r0
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
_0804C5CE:
	mov r1, r9
	cmp r1, #0x00
	beq _0804C5EC
	ldr r0, [r7, #0x24]
	ldr r1, _0804C5E8 @ =0xFFFE7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r7, #0x24]
	ldr r3, [r7, #0x18]
	b _0804C600
	.byte 0x00, 0x00
_0804C5E8: .4byte 0xFFFE7FFF
_0804C5EC:
	ldr r3, [r7, #0x18]
	cmp r3, #0x00
	bne _0804C600
	ldr r0, [r7, #0x24]
	ldr r1, _0804C650 @ =0xFFFE7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x09
	orrs r0, r1
	str r0, [r7, #0x24]
_0804C600:
	cmp r3, #0x00
	ble _0804C670
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r2, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	bne _0804C670
	ldr r4, _0804C654 @ =0x0000020D
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804C670
	movs r0, #0x01
	ldsb r0, [r7, r0]
	cmp r0, r2
	bne _0804C670
	ldr r5, [sp, #0x034]
	cmp r5, #0x00
	bne _0804C6BC
	ldr r6, _0804C658 @ =0x0000023E
	adds r0, r7, r6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r3, r0
	bgt _0804C65C
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r1, [r0, #0x00]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	beq _0804C65C
	str r5, [r7, #0x18]
	b _0804C670
	.byte 0x00, 0x00
_0804C650: .4byte 0xFFFE7FFF
_0804C654: .4byte 0x0000020D
_0804C658: .4byte 0x0000023E
_0804C65C:
	movs r2, #0x01
	negs r2, r2
	ldr r3, _0804C838 @ =0x0000023E
	adds r0, r7, r3
	movs r4, #0x00
	ldsh r3, [r0, r4]
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_80401F0__11FieldObjectiii
_0804C670:
	ldr r5, [sp, #0x034]
	cmp r5, #0x00
	bne _0804C6BC
	ldr r6, _0804C83C @ =0x0000020D
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0804C68A
	ldr r0, [sp, #0x038]
	cmp r0, #0x00
	beq _0804C6EA
_0804C68A:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	movs r4, #0x01
	ands r4, r0
	cmp r4, #0x00
	bne _0804C6BC
	adds r0, r7, #0x0
	bl sub_804D18C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0804C6BC
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	str r4, [r7, #0x18]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r1, r7, r2
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
_0804C6BC:
	ldr r3, [sp, #0x038]
	cmp r3, #0x00
	beq _0804C6EA
	ldr r4, _0804C83C @ =0x0000020D
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804C6EA
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	ble _0804C6EA
	movs r5, #0x97
	lsls r5, r5, #0x02
	adds r1, r7, r5
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	blt _0804C6EA
	movs r0, #0x00
	str r0, [r7, #0x18]
	subs r0, #0x01
	str r0, [r1, #0x00]
_0804C6EA:
	ldr r6, _0804C83C @ =0x0000020D
	adds r0, r7, r6
	ldrb r0, [r0, #0x00]
	mov r12, r0
	movs r0, #0x08
	mov r1, r12
	ands r0, r1
	cmp r0, #0x00
	bne _0804C700
	bl _0804D0D8
_0804C700:
	ldr r1, [r7, #0x18]
	ldr r2, [r7, #0x40]
	cmp r1, #0x00
	bne _0804C710
	cmp r2, #0x00
	bne _0804C710
	bl _0804D0D8
_0804C710:
	ldr r0, [r7, #0x14]
	adds r4, r0, r1
	ldr r0, [r7, #0x3C]
	adds r0, r0, r2
	cmp r4, r0
	blt _0804C720
	bl _0804D0D8
_0804C720:
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [r7, #0x0C]
	subs r3, r0, r1
	str r3, [sp, #0x084]
	ldr r2, _0804C840 @ =0xFFFFFF00
	adds r0, r0, r2
	adds r0, r0, r1
	adds r0, #0xFF
	ands r0, r2
	str r0, [sp, #0x088]
	ldr r3, [r7, #0x10]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r1, r3, r5
	movs r6, #0x9F
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [sp, #0x08C]
	adds r3, #0xFF
	ands r3, r2
	str r3, [sp, #0x090]
	mov r10, r4
	cmp r4, #0x00
	bge _0804C760
	movs r0, #0x00
	mov r10, r0
_0804C760:
	movs r1, #0x00
	str r1, [sp, #0x094]
	movs r2, #0x00
	str r2, [sp, #0x098]
	movs r3, #0x00
	str r3, [sp, #0x09C]
	movs r4, #0x00
	str r4, [sp, #0x0A0]
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	add r6, sp, #0x028
	mov r8, r6
	add r1, sp, #0x02C
	mov r9, r1
	str r1, [sp, #0x000]
	add r6, sp, #0x030
	str r6, [sp, #0x004]
	add r5, sp, #0x008
	movs r2, #0x01
	strb r2, [r5, #0x00]
	mov r3, r12
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x1B
	ands r1, r2
	add r4, sp, #0x00C
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x084]
	ldr r2, [sp, #0x08C]
	mov r3, r8
	bl sub_803FBA4
	str r0, [sp, #0x0A4]
	adds r1, r7, #0x0
	adds r1, #0x26
	ldrb r3, [r1, #0x00]
	movs r0, #0x0C
	ands r0, r3
	str r5, [sp, #0x0B4]
	str r4, [sp, #0x0B8]
	str r1, [sp, #0x0BC]
	mov r5, r8
	mov r4, r9
	cmp r0, #0x00
	bne _0804C7FE
	ldr r0, [sp, #0x0A4]
	ldr r2, [r0, #0x00]
	lsls r1, r2, #0x01
	lsls r0, r3, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804C7FE
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804C7E2
	ldr r0, [sp, #0x028]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	ldr r1, _0804C844 @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x028]
_0804C7E2:
	ldr r2, [sp, #0x0A4]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804C7FE
	ldr r0, [sp, #0x030]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	ldr r1, _0804C844 @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x030]
_0804C7FE:
	mov r0, r10
	cmp r0, #0x00
	ble _0804C874
	ldr r2, [sp, #0x028]
	cmp r10, r2
	bge _0804C874
	movs r3, #0x00
	ldr r0, [sp, #0x0A4]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804C862
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	mov r8, r1
	ldr r1, [sp, #0x0A4]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	mov r1, r8
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C848
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804C862
	.byte 0x00, 0x00
_0804C838: .4byte 0x0000023E
_0804C83C: .4byte 0x0000020D
_0804C840: .4byte 0xFFFFFF00
_0804C844: .4byte 0xFFFFF000
_0804C848:
	ldr r0, [sp, #0x0A4]
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	subs r0, #0x05
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804C862
	movs r0, #0x01
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	str r1, [sp, #0x09C]
_0804C862:
	mov r1, r10
	adds r0, r1, r3
	cmp r2, r0
	blt _0804C8FA
	movs r0, #0x01
	ldr r2, [sp, #0x0A0]
	orrs r2, r0
	str r2, [sp, #0x0A0]
	b _0804C8FA
_0804C874:
	ldr r0, [sp, #0x02C]
	cmp r10, r0
	blt _0804C8FA
	ldr r2, [sp, #0x030]
	cmp r10, r2
	bge _0804C8FA
	movs r3, #0x00
	ldr r0, [sp, #0x0A4]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804C8C8
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	mov r8, r1
	ldr r1, [sp, #0x0A4]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	mov r1, r8
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C8AC
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804C8E2
_0804C8AC:
	ldr r0, [sp, #0x0A4]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	subs r0, #0x05
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804C8E2
	movs r0, #0x01
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	str r1, [sp, #0x09C]
	b _0804C8E2
_0804C8C8:
	ldr r0, [sp, #0x0A4]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0E
	bne _0804C8E2
	ldr r1, [sp, #0x0A4]
	ldr r0, [r1, #0x00]
	movs r1, #0xF0
	lsls r1, r1, #0x0C
	ands r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x098]
_0804C8E2:
	mov r1, r10
	adds r0, r1, r3
	cmp r2, r0
	blt _0804C8FA
	movs r0, #0x01
	ldr r2, [sp, #0x0A0]
	orrs r2, r0
	str r2, [sp, #0x0A0]
	movs r0, #0x01
	ldr r3, [sp, #0x094]
	orrs r3, r0
	str r3, [sp, #0x094]
_0804C8FA:
	ldr r0, [sp, #0x098]
	cmp r0, #0x00
	beq _0804C902
	b _0804CD70
_0804C902:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r4, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r2, #0x01
	ldr r3, [sp, #0x0B4]
	strb r2, [r3, #0x00]
	ldr r3, _0804C9B4 @ =0x0000020D
	adds r1, r7, r3
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r2, [sp, #0x0B8]
	strb r1, [r2, #0x00]
	ldr r1, [sp, #0x088]
	ldr r2, [sp, #0x08C]
	adds r3, r5, #0x0
	bl sub_803FBA4
	str r0, [sp, #0x0A8]
	ldr r0, [sp, #0x0BC]
	ldrb r3, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r3
	cmp r0, #0x00
	bne _0804C97C
	ldr r1, [sp, #0x0A8]
	ldr r2, [r1, #0x00]
	lsls r1, r2, #0x01
	lsls r0, r3, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804C97C
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804C960
	ldr r0, [sp, #0x028]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	ldr r1, _0804C9B8 @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x028]
_0804C960:
	ldr r3, [sp, #0x0A8]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804C97C
	ldr r0, [sp, #0x030]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	ldr r1, _0804C9B8 @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x030]
_0804C97C:
	mov r2, r10
	cmp r2, #0x00
	ble _0804C9EE
	ldr r2, [sp, #0x028]
	cmp r10, r2
	bge _0804C9EE
	movs r3, #0x00
	ldr r0, [sp, #0x0A8]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804C9D8
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	mov r8, r1
	ldr r1, [sp, #0x0A8]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	mov r1, r8
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C9BC
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804C9D8
_0804C9B4: .4byte 0x0000020D
_0804C9B8: .4byte 0xFFFFF000
_0804C9BC:
	ldr r1, [sp, #0x0A8]
	ldrb r0, [r1, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x04
	beq _0804C9CC
	cmp r1, #0x06
	bne _0804C9D8
_0804C9CC:
	movs r0, #0x02
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x09C]
_0804C9D8:
	mov r1, r10
	adds r0, r1, r3
	cmp r2, r0
	blt _0804CA7E
	movs r0, #0x02
	ldr r2, [sp, #0x0A0]
	orrs r2, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x0A0]
	b _0804CA7E
_0804C9EE:
	ldr r0, [sp, #0x02C]
	cmp r10, r0
	blt _0804CA7E
	ldr r2, [sp, #0x030]
	cmp r10, r2
	bge _0804CA7E
	movs r3, #0x00
	ldr r0, [sp, #0x0A8]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804CA44
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	mov r8, r1
	ldr r1, [sp, #0x0A8]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	mov r1, r8
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804CA26
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804CA5E
_0804CA26:
	ldr r1, [sp, #0x0A8]
	ldrb r0, [r1, #0x02]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x04
	beq _0804CA36
	cmp r1, #0x06
	bne _0804CA5E
_0804CA36:
	movs r0, #0x02
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x09C]
	b _0804CA5E
_0804CA44:
	ldr r0, [sp, #0x0A8]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0C
	bne _0804CA5E
	ldr r1, [sp, #0x0A8]
	ldr r0, [r1, #0x00]
	movs r1, #0xF0
	lsls r1, r1, #0x0C
	ands r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x098]
_0804CA5E:
	mov r1, r10
	adds r0, r1, r3
	cmp r2, r0
	blt _0804CA7E
	movs r0, #0x02
	ldr r2, [sp, #0x0A0]
	orrs r2, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x0A0]
	movs r0, #0x02
	ldr r3, [sp, #0x094]
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x094]
_0804CA7E:
	ldr r0, [sp, #0x098]
	cmp r0, #0x00
	beq _0804CA86
	b _0804CD70
_0804CA86:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r4, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r2, #0x01
	ldr r3, [sp, #0x0B4]
	strb r2, [r3, #0x00]
	ldr r3, _0804CB38 @ =0x0000020D
	adds r1, r7, r3
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r2, [sp, #0x0B8]
	strb r1, [r2, #0x00]
	ldr r1, [sp, #0x084]
	ldr r2, [sp, #0x090]
	adds r3, r5, #0x0
	bl sub_803FBA4
	str r0, [sp, #0x0AC]
	ldr r0, [sp, #0x0BC]
	ldrb r3, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r3
	cmp r0, #0x00
	bne _0804CB00
	ldr r1, [sp, #0x0AC]
	ldr r2, [r1, #0x00]
	lsls r1, r2, #0x01
	lsls r0, r3, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804CB00
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804CAE4
	ldr r0, [sp, #0x028]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	ldr r1, _0804CB3C @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x028]
_0804CAE4:
	ldr r3, [sp, #0x0AC]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804CB00
	ldr r0, [sp, #0x030]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	ldr r1, _0804CB3C @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x030]
_0804CB00:
	mov r2, r10
	cmp r2, #0x00
	ble _0804CB74
	ldr r2, [sp, #0x028]
	cmp r10, r2
	bge _0804CB74
	movs r3, #0x00
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804CB5E
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	mov r8, r1
	ldr r1, [sp, #0x0AC]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	mov r1, r8
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804CB40
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804CB5E
_0804CB38: .4byte 0x0000020D
_0804CB3C: .4byte 0xFFFFF000
_0804CB40:
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	subs r0, #0x05
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804CB5E
	movs r0, #0x04
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x09C]
_0804CB5E:
	mov r1, r10
	adds r0, r1, r3
	cmp r2, r0
	blt _0804CC06
	movs r0, #0x04
	ldr r2, [sp, #0x0A0]
	orrs r2, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x0A0]
	b _0804CC06
_0804CB74:
	ldr r0, [sp, #0x02C]
	cmp r10, r0
	blt _0804CC06
	ldr r2, [sp, #0x030]
	cmp r10, r2
	bge _0804CC06
	movs r3, #0x00
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804CBCC
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	mov r8, r1
	ldr r1, [sp, #0x0AC]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	mov r1, r8
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804CBAC
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804CBE6
_0804CBAC:
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	subs r0, #0x05
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804CBE6
	movs r0, #0x04
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x09C]
	b _0804CBE6
_0804CBCC:
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0F
	bne _0804CBE6
	ldr r1, [sp, #0x0AC]
	ldr r0, [r1, #0x00]
	movs r1, #0xF0
	lsls r1, r1, #0x0C
	ands r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x098]
_0804CBE6:
	mov r1, r10
	adds r0, r1, r3
	cmp r2, r0
	blt _0804CC06
	movs r0, #0x04
	ldr r2, [sp, #0x0A0]
	orrs r2, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x0A0]
	movs r0, #0x04
	ldr r3, [sp, #0x094]
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x094]
_0804CC06:
	ldr r0, [sp, #0x098]
	cmp r0, #0x00
	beq _0804CC0E
	b _0804CD70
_0804CC0E:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r4, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r2, #0x01
	ldr r3, [sp, #0x0B4]
	strb r2, [r3, #0x00]
	ldr r4, _0804CCBC @ =0x0000020D
	adds r1, r7, r4
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r6, [sp, #0x0B8]
	strb r1, [r6, #0x00]
	ldr r1, [sp, #0x088]
	ldr r2, [sp, #0x090]
	adds r3, r5, #0x0
	bl sub_803FBA4
	str r0, [sp, #0x0B0]
	ldr r0, [sp, #0x0BC]
	ldrb r3, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r3
	cmp r0, #0x00
	bne _0804CC88
	ldr r1, [sp, #0x0B0]
	ldr r2, [r1, #0x00]
	lsls r1, r2, #0x01
	lsls r0, r3, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804CC88
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804CC6C
	ldr r0, [sp, #0x028]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	ldr r1, _0804CCC0 @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x028]
_0804CC6C:
	ldr r3, [sp, #0x0B0]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804CC88
	ldr r0, [sp, #0x030]
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r0, r0, r4
	ldr r1, _0804CCC0 @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x030]
_0804CC88:
	mov r5, r10
	cmp r5, #0x00
	ble _0804CCF6
	ldr r2, [sp, #0x028]
	cmp r10, r2
	bge _0804CCF6
	movs r3, #0x00
	ldr r6, [sp, #0x0B0]
	ldrb r1, [r6, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804CCE0
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	ldr r0, [r6, #0x00]
	lsls r0, r0, #0x01
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804CCC4
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804CCE0
	.byte 0x00, 0x00
_0804CCBC: .4byte 0x0000020D
_0804CCC0: .4byte 0xFFFFF000
_0804CCC4:
	ldr r1, [sp, #0x0B0]
	ldrb r0, [r1, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x04
	beq _0804CCD4
	cmp r1, #0x06
	bne _0804CCE0
_0804CCD4:
	movs r0, #0x08
	ldr r4, [sp, #0x09C]
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x09C]
_0804CCE0:
	mov r5, r10
	adds r0, r5, r3
	cmp r2, r0
	blt _0804CD70
	movs r0, #0x08
	ldr r6, [sp, #0x0A0]
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x0A0]
	b _0804CD70
_0804CCF6:
	ldr r0, [sp, #0x02C]
	cmp r10, r0
	blt _0804CD70
	ldr r2, [sp, #0x030]
	cmp r10, r2
	bge _0804CD70
	movs r3, #0x00
	ldr r0, [sp, #0x0B0]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804CD48
	ldr r4, [sp, #0x0BC]
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1A
	ldr r5, [sp, #0x0B0]
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804CD2A
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804CD50
_0804CD2A:
	ldr r6, [sp, #0x0B0]
	ldrb r0, [r6, #0x02]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x04
	beq _0804CD3A
	cmp r1, #0x06
	bne _0804CD50
_0804CD3A:
	movs r0, #0x08
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x09C]
	b _0804CD50
_0804CD48:
	ldr r4, [sp, #0x0B0]
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
_0804CD50:
	mov r5, r10
	adds r0, r5, r3
	cmp r2, r0
	blt _0804CD70
	movs r0, #0x08
	ldr r6, [sp, #0x0A0]
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x0A0]
	movs r0, #0x08
	ldr r1, [sp, #0x094]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x094]
_0804CD70:
	ldr r2, [sp, #0x0A0]
	cmp r2, #0x00
	bne _0804CD78
	b _0804D0D8
_0804CD78:
	movs r3, #0x00
	movs r1, #0x03
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x03
	bne _0804CD88
	movs r3, #0x01
	b _0804CD94
_0804CD88:
	movs r1, #0x0C
	ldr r0, [sp, #0x0A0]
	ands r0, r1
	cmp r0, #0x0C
	bne _0804CD94
	movs r3, #0x04
_0804CD94:
	movs r1, #0x05
	ldr r0, [sp, #0x0A0]
	ands r0, r1
	cmp r0, #0x05
	bne _0804CDA4
	movs r0, #0x08
	orrs r3, r0
	b _0804CDB6
_0804CDA4:
	movs r1, #0x0A
	ldr r0, [sp, #0x0A0]
	ands r0, r1
	cmp r0, #0x0A
	bne _0804CDB6
	movs r0, #0x02
	orrs r3, r0
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
_0804CDB6:
	cmp r3, #0x00
	bne _0804CE10
	ldr r4, [sp, #0x0A0]
	ldr r5, [sp, #0x09C]
	bics r4, r5
	str r4, [sp, #0x0A0]
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _0804CDD4
	ldr r1, _0804CE58 @ =0x083A0A58
	ldrb r0, [r7, #0x02]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
_0804CDD4:
	movs r0, #0x02
	ldr r6, [sp, #0x0A0]
	ands r0, r6
	cmp r0, #0x00
	beq _0804CDE8
	ldr r1, _0804CE5C @ =0x083A0A60
	ldrb r0, [r7, #0x02]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
_0804CDE8:
	movs r0, #0x04
	ldr r1, [sp, #0x0A0]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CDFC
	ldr r1, _0804CE60 @ =0x083A0A68
	ldrb r0, [r7, #0x02]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
_0804CDFC:
	movs r0, #0x08
	ldr r2, [sp, #0x0A0]
	ands r0, r2
	cmp r0, #0x00
	beq _0804CE10
	ldr r1, _0804CE64 @ =0x083A0A70
	ldrb r0, [r7, #0x02]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
_0804CE10:
	movs r1, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0804CED4
	ldr r4, [sp, #0x08C]
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r2, r4, r5
	ldr r0, _0804CE68 @ =0xFFFFF000
	ands r2, r0
	ldr r0, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CE3A
	ldr r6, [sp, #0x0A4]
	ldrb r1, [r6, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x08
	beq _0804CE50
_0804CE3A:
	movs r0, #0x02
	ldr r1, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CE70
	ldr r4, [sp, #0x0A8]
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x08
	bne _0804CE70
_0804CE50:
	ldr r5, _0804CE6C @ =0xFFFFF800
	adds r2, r2, r5
	b _0804CEB6
	.byte 0x00, 0x00
_0804CE58: .4byte 0x083A0A58
_0804CE5C: .4byte 0x083A0A60
_0804CE60: .4byte 0x083A0A68
_0804CE64: .4byte 0x083A0A70
_0804CE68: .4byte 0xFFFFF000
_0804CE6C: .4byte 0xFFFFF800
_0804CE70:
	movs r0, #0x01
	ldr r6, [sp, #0x094]
	ands r0, r6
	cmp r0, #0x00
	beq _0804CE94
	ldr r0, [sp, #0x0A4]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0E
	bne _0804CE94
	ldr r0, _0804CE90 @ =0x00000FFF
	ldr r1, [sp, #0x084]
	ands r0, r1
	subs r2, r2, r0
	b _0804CEB6
_0804CE90: .4byte 0x00000FFF
_0804CE94:
	movs r0, #0x02
	ldr r4, [sp, #0x094]
	ands r0, r4
	cmp r0, #0x00
	beq _0804CEB6
	ldr r5, [sp, #0x0A8]
	ldrb r1, [r5, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0C
	bne _0804CEB6
	ldr r6, _0804CEC8 @ =0xFFFFF000
	adds r1, r2, r6
	ldr r0, _0804CECC @ =0x00000FFF
	ldr r2, [sp, #0x088]
	ands r0, r2
	adds r2, r1, r0
_0804CEB6:
	movs r4, #0x9F
	lsls r4, r4, #0x02
	adds r1, r7, r4
	ldr r5, _0804CED0 @ =0xFFFFFF00
	adds r0, r2, r5
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	b _0804CF68
	.byte 0x00, 0x00
_0804CEC8: .4byte 0xFFFFF000
_0804CECC: .4byte 0x00000FFF
_0804CED0: .4byte 0xFFFFFF00
_0804CED4:
	movs r1, #0x04
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0804CF6A
	ldr r2, _0804CF18 @ =0xFFFFF000
	ldr r6, [sp, #0x090]
	ands r2, r6
	ldr r0, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CEF8
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x09
	beq _0804CF0E
_0804CEF8:
	movs r0, #0x08
	ldr r1, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CF1C
	ldr r4, [sp, #0x0B0]
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x09
	bne _0804CF1C
_0804CF0E:
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r2, r2, r5
	b _0804CF64
	.byte 0x00, 0x00
_0804CF18: .4byte 0xFFFFF000
_0804CF1C:
	movs r0, #0x04
	ldr r6, [sp, #0x094]
	ands r0, r6
	cmp r0, #0x00
	beq _0804CF40
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0F
	bne _0804CF40
	ldr r0, _0804CF3C @ =0x00000FFF
	ldr r1, [sp, #0x084]
	ands r0, r1
	adds r2, r2, r0
	b _0804CF64
_0804CF3C: .4byte 0x00000FFF
_0804CF40:
	movs r0, #0x08
	ldr r4, [sp, #0x094]
	ands r0, r4
	cmp r0, #0x00
	beq _0804CF64
	ldr r5, [sp, #0x0B0]
	ldrb r1, [r5, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _0804CF64
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r2, r6
	ldr r0, _0804CFB4 @ =0x00000FFF
	ldr r2, [sp, #0x088]
	ands r0, r2
	subs r2, r1, r0
_0804CF64:
	ldr r4, _0804CFB8 @ =0xFFFFFF00
	adds r0, r2, r4
_0804CF68:
	str r0, [r7, #0x10]
_0804CF6A:
	movs r4, #0x08
	adds r0, r3, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0804D020
	ldr r5, [sp, #0x084]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r2, r5, r6
	ldr r0, _0804CFBC @ =0xFFFFF000
	ands r2, r0
	movs r0, #0x01
	ldr r1, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CF96
	ldr r3, [sp, #0x0A4]
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0B
	beq _0804CFAC
_0804CF96:
	movs r0, #0x04
	ldr r4, [sp, #0x094]
	ands r0, r4
	cmp r0, #0x00
	beq _0804CFC4
	ldr r5, [sp, #0x0AC]
	ldrb r1, [r5, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0B
	bne _0804CFC4
_0804CFAC:
	ldr r6, _0804CFC0 @ =0xFFFFF800
	adds r2, r2, r6
	b _0804D00A
	.byte 0x00, 0x00
_0804CFB4: .4byte 0x00000FFF
_0804CFB8: .4byte 0xFFFFFF00
_0804CFBC: .4byte 0xFFFFF000
_0804CFC0: .4byte 0xFFFFF800
_0804CFC4:
	movs r0, #0x01
	ldr r1, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CFE8
	ldr r3, [sp, #0x0A4]
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0E
	bne _0804CFE8
	ldr r0, _0804CFE4 @ =0x00000FFF
	ldr r4, [sp, #0x08C]
	ands r4, r0
	subs r2, r2, r4
	b _0804D00A
_0804CFE4: .4byte 0x00000FFF
_0804CFE8:
	movs r0, #0x04
	ldr r5, [sp, #0x094]
	ands r5, r0
	cmp r5, #0x00
	beq _0804D00A
	ldr r6, [sp, #0x0AC]
	ldrb r1, [r6, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0F
	bne _0804D00A
	ldr r0, _0804D018 @ =0xFFFFF000
	adds r1, r2, r0
	ldr r0, _0804D01C @ =0x00000FFF
	ldr r2, [sp, #0x090]
	ands r2, r0
	adds r2, r1, r2
_0804D00A:
	movs r3, #0x9E
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r0, r2, r0
	b _0804D0B8
_0804D018: .4byte 0xFFFFF000
_0804D01C: .4byte 0x00000FFF
_0804D020:
	movs r1, #0x02
	ands r3, r1
	cmp r3, #0x00
	beq _0804D0BA
	ldr r2, _0804D060 @ =0xFFFFF000
	ldr r5, [sp, #0x088]
	ands r2, r5
	ldr r0, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804D042
	ldr r6, [sp, #0x0A8]
	ldrb r1, [r6, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0A
	beq _0804D056
_0804D042:
	ldr r0, [sp, #0x094]
	ands r0, r4
	cmp r0, #0x00
	beq _0804D064
	ldr r0, [sp, #0x0B0]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0A
	bne _0804D064
_0804D056:
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r2, r2, r1
	b _0804D0AC
	.byte 0x00, 0x00
_0804D060: .4byte 0xFFFFF000
_0804D064:
	movs r0, #0x02
	ldr r3, [sp, #0x094]
	ands r0, r3
	cmp r0, #0x00
	beq _0804D088
	ldr r4, [sp, #0x0A8]
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0C
	bne _0804D088
	ldr r0, _0804D084 @ =0x00000FFF
	ldr r5, [sp, #0x08C]
	ands r5, r0
	adds r2, r2, r5
	b _0804D0AC
_0804D084: .4byte 0x00000FFF
_0804D088:
	movs r0, #0x08
	ldr r6, [sp, #0x094]
	ands r6, r0
	cmp r6, #0x00
	beq _0804D0AC
	ldr r0, [sp, #0x0B0]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _0804D0AC
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r1, r2, r3
	ldr r0, _0804D0E8 @ =0x00000FFF
	ldr r4, [sp, #0x090]
	ands r4, r0
	subs r2, r1, r4
_0804D0AC:
	movs r5, #0x9E
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r0, r2, r0
_0804D0B8:
	str r0, [r7, #0x0C]
_0804D0BA:
	adds r3, r7, #0x0
	adds r3, #0x25
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	ldr r6, [sp, #0x0A0]
	orrs r1, r6
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x79
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0804D0D8:
	add sp, #0x0C4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804D0E8: .4byte 0x00000FFF
	thumb_func_start sub_804D0EC
sub_804D0EC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0804D184
	ldr r1, _0804D17C @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804D184
	movs r0, #0xA4
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x34]
	cmp r0, #0x00
	bge _0804D118
	ldr r1, _0804D180 @ =0x00000FFF
	adds r0, r0, r1
_0804D118:
	lsls r0, r0, #0x04
	asrs r1, r0, #0x10
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _0804D126
	ldr r0, _0804D180 @ =0x00000FFF
	adds r2, r2, r0
_0804D126:
	lsls r2, r2, #0x04
	asrs r2, r2, #0x10
	adds r0, r3, #0x0
	bl get_coldef_ptr_by_xz
	ldrb r1, [r0, #0x00]
	movs r6, #0x78
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x18
	beq _0804D176
	ldr r5, [r5, #0x00]
	ldr r0, [r4, #0x34]
	cmp r0, #0x00
	bge _0804D148
	ldr r1, _0804D180 @ =0x00000FFF
	adds r0, r0, r1
_0804D148:
	lsls r0, r0, #0x04
	asrs r3, r0, #0x10
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0804D160
	ldr r1, _0804D180 @ =0x00000FFF
	adds r0, r0, r1
_0804D160:
	lsls r2, r0, #0x04
	asrs r2, r2, #0x10
	adds r0, r5, #0x0
	adds r1, r3, #0x0
	bl get_coldef_ptr_by_xz
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x18
	bne _0804D184
_0804D176:
	movs r0, #0x01
	b _0804D186
	.byte 0x00, 0x00
_0804D17C: .4byte 0x0000035B
_0804D180: .4byte 0x00000FFF
_0804D184:
	movs r0, #0x00
_0804D186:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_804D18C
sub_804D18C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	mov r9, r0
	movs r0, #0x9E
	lsls r0, r0, #0x02
	add r0, r9
	ldrh r2, [r0, #0x00]
	lsrs r1, r2, #0x01
	mov r3, r9
	ldr r0, [r3, #0x0C]
	subs r0, r0, r1
	str r0, [sp, #0x01C]
	ldr r1, _0804D2B0 @ =0xFFFFFF00
	adds r0, r0, r1
	adds r0, r0, r2
	str r0, [sp, #0x020]
	ldr r2, [r3, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r2, r3
	movs r0, #0x9F
	lsls r0, r0, #0x02
	add r0, r9
	ldrh r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [sp, #0x024]
	str r2, [sp, #0x028]
	mov r0, r9
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r7, r1, r0
	cmp r7, #0x00
	bge _0804D1D8
	movs r7, #0x00
_0804D1D8:
	ldr r0, _0804D2B4 @ =0x0000027A
	add r0, r9
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	mov r10, r0
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	add r1, sp, #0x014
	mov r8, r1
	str r1, [sp, #0x000]
	add r6, sp, #0x018
	str r6, [sp, #0x004]
	add r5, sp, #0x008
	movs r1, #0x01
	strb r1, [r5, #0x00]
	add r4, sp, #0x00C
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x01C]
	ldr r2, [sp, #0x024]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r7, r0
	blt _0804D2AA
	ldr r0, [sp, #0x018]
	cmp r7, r0
	bge _0804D21A
	ldr r0, [sp, #0x014]
	cmp r10, r0
	bge _0804D2AA
_0804D21A:
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	mov r2, r8
	str r2, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x01
	strb r1, [r5, #0x00]
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x020]
	ldr r2, [sp, #0x024]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r7, r0
	blt _0804D2AA
	ldr r0, [sp, #0x018]
	cmp r7, r0
	bge _0804D24A
	ldr r0, [sp, #0x014]
	cmp r10, r0
	bge _0804D2AA
_0804D24A:
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	mov r3, r8
	str r3, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x01
	strb r1, [r5, #0x00]
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x01C]
	ldr r2, [sp, #0x028]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r7, r0
	blt _0804D2AA
	ldr r0, [sp, #0x018]
	cmp r7, r0
	bge _0804D27A
	ldr r0, [sp, #0x014]
	cmp r10, r0
	bge _0804D2AA
_0804D27A:
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	mov r1, r8
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x01
	strb r1, [r5, #0x00]
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x020]
	ldr r2, [sp, #0x028]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r7, r0
	blt _0804D2AA
	ldr r0, [sp, #0x018]
	cmp r7, r0
	bge _0804D2B8
	ldr r0, [sp, #0x014]
	cmp r10, r0
	blt _0804D2B8
_0804D2AA:
	movs r0, #0x01
	b _0804D2BA
	.byte 0x00, 0x00
_0804D2B0: .4byte 0xFFFFFF00
_0804D2B4: .4byte 0x0000027A
_0804D2B8:
	movs r0, #0x00
_0804D2BA:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
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
	thumb_func_start sub_804D734
sub_804D734:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x04C
	mov r12, r0
	mov r10, r1
	str r2, [sp, #0x000]
	str r3, [sp, #0x004]
	cmp r1, #0x01
	beq _0804D786
	ldr r0, _0804D7B0 @ =0x0000035B
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804D76E
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0804D76E
	cmp r0, #0x04
	bls _0804D786
_0804D76E:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _0804D786
	b _0804DBBA
_0804D786:
	mov r0, r10
	cmp r0, #0x00
	bne _0804D7FE
	ldr r0, _0804D7B0 @ =0x0000035B
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804D7CE
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _0804D7B4
	cmp r0, #0x04
	beq _0804D7C2
	b _0804D82C
_0804D7B0: .4byte 0x0000035B
_0804D7B4:
	movs r1, #0xC0
	lsls r1, r1, #0x05
	str r1, [sp, #0x008]
	movs r2, #0x80
	lsls r2, r2, #0x01
	str r2, [sp, #0x00C]
	b _0804D82C
_0804D7C2:
	movs r3, #0x80
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	b _0804D82C
_0804D7CE:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _0804D7E4
	cmp r0, #0x04
	beq _0804D7F2
	b _0804D82C
_0804D7E4:
	movs r6, #0xA0
	lsls r6, r6, #0x06
	str r6, [sp, #0x008]
	movs r7, #0x80
	lsls r7, r7, #0x05
	str r7, [sp, #0x00C]
	b _0804D82C
_0804D7F2:
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [sp, #0x008]
	movs r1, #0x00
	str r1, [sp, #0x00C]
	b _0804D82C
_0804D7FE:
	ldr r0, _0804D81C @ =0x0000035B
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804D820
	movs r2, #0x80
	lsls r2, r2, #0x05
	str r2, [sp, #0x008]
	movs r3, #0x80
	lsls r3, r3, #0x01
	str r3, [sp, #0x00C]
	b _0804D82C
	.byte 0x00, 0x00
_0804D81C: .4byte 0x0000035B
_0804D820:
	movs r4, #0x80
	lsls r4, r4, #0x06
	str r4, [sp, #0x008]
	movs r6, #0x80
	lsls r6, r6, #0x01
	str r6, [sp, #0x00C]
_0804D82C:
	ldr r5, _0804D99C @ =0x083A0A78
	mov r7, r12
	adds r7, #0x24
	str r7, [sp, #0x044]
	ldrb r2, [r7, #0x00]
	lsls r2, r2, #0x1D
	lsrs r2, r2, #0x1D
	lsls r0, r2, #0x03
	str r0, [sp, #0x048]
	mov r3, r10
	lsls r1, r3, #0x07
	adds r0, r0, r1
	adds r0, r0, r5
	movs r4, #0x00
	ldsh r0, [r0, r4]
	mov r6, r12
	ldr r6, [r6, #0x0C]
	mov r9, r6
	add r0, r9
	str r0, [sp, #0x010]
	lsls r2, r2, #0x02
	adds r4, r2, #0x1
	lsls r4, r4, #0x01
	adds r0, r4, r1
	adds r0, r0, r5
	movs r7, #0x00
	ldsh r0, [r0, r7]
	add r0, r9
	str r0, [sp, #0x018]
	adds r3, r2, #0x2
	lsls r3, r3, #0x01
	adds r0, r3, r1
	adds r0, r0, r5
	movs r6, #0x00
	ldsh r0, [r0, r6]
	mov r7, r12
	ldr r7, [r7, #0x10]
	mov r8, r7
	add r0, r8
	str r0, [sp, #0x020]
	adds r2, #0x03
	lsls r2, r2, #0x01
	adds r1, r2, r1
	adds r1, r1, r5
	movs r6, #0x00
	ldsh r0, [r1, r6]
	add r0, r8
	str r0, [sp, #0x028]
	mov r7, r10
	lsls r1, r7, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x06
	ldr r0, [sp, #0x048]
	adds r6, r0, r1
	adds r0, r6, r5
	movs r6, #0x00
	ldsh r0, [r0, r6]
	add r0, r9
	str r0, [sp, #0x014]
	adds r4, r4, r1
	adds r4, r4, r5
	movs r7, #0x00
	ldsh r0, [r4, r7]
	add r0, r9
	str r0, [sp, #0x01C]
	adds r3, r3, r1
	adds r3, r3, r5
	movs r4, #0x00
	ldsh r0, [r3, r4]
	add r0, r8
	str r0, [sp, #0x024]
	adds r2, r2, r1
	adds r2, r2, r5
	movs r6, #0x00
	ldsh r0, [r2, r6]
	add r0, r8
	str r0, [sp, #0x02C]
	mov r7, r12
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	ldr r1, [sp, #0x008]
	adds r1, r1, r0
	str r1, [sp, #0x008]
	ldr r2, [sp, #0x00C]
	adds r2, r2, r0
	str r2, [sp, #0x00C]
	ldr r3, [sp, #0x004]
	str r3, [sp, #0x030]
	cmp r3, #0x00
	bne _0804D8E4
	b _0804DBBA
_0804D8E4:
	adds r4, r7, #0x0
	adds r4, #0x54
	str r4, [sp, #0x03C]
	movs r6, #0x83
	lsls r6, r6, #0x02
	mov r9, r6
	ldr r7, [sp, #0x044]
	mov r8, r7
	movs r0, #0xCF
	lsls r0, r0, #0x02
	add r0, r12
	str r0, [sp, #0x038]
_0804D8FC:
	ldr r1, [sp, #0x000]
	ldr r5, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x034]
_0804D904:
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r1, [r0, #0x00]
	str r0, [sp, #0x040]
	ldr r3, [sp, #0x03C]
	ldrb r3, [r3, #0x00]
	cmp r1, r3
	bne _0804D916
	b _0804DB72
_0804D916:
	mov r4, r9
	adds r0, r5, r4
	ldrb r2, [r0, #0x00]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _0804D926
	b _0804DB72
_0804D926:
	ldr r6, _0804D9A0 @ =0x00000216
	adds r0, r5, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804D936
	b _0804DB72
_0804D936:
	ldr r7, _0804D9A4 @ =0x0000020E
	adds r0, r5, r7
	ldrb r0, [r0, #0x00]
	movs r1, #0x38
	ands r1, r0
	cmp r1, #0x30
	bne _0804D946
	b _0804DB72
_0804D946:
	movs r0, #0xA0
	ands r0, r2
	cmp r0, #0x00
	bne _0804D950
	b _0804DB72
_0804D950:
	cmp r1, #0x18
	bne _0804D9AC
	ldr r1, _0804D9A8 @ =0x00000272
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	lsrs r2, r1, #0x01
	ldr r0, [r5, #0x0C]
	subs r0, r0, r2
	adds r1, r0, r1
	ldr r2, [sp, #0x010]
	cmp r2, r1
	blt _0804D96A
	b _0804DB72
_0804D96A:
	ldr r3, [sp, #0x018]
	cmp r3, r0
	bgt _0804D972
	b _0804DB72
_0804D972:
	movs r4, #0x9C
	lsls r4, r4, #0x02
	adds r0, r5, r4
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r5, #0x10]
	adds r1, r0, r1
	adds r7, #0x68
	adds r0, r5, r7
	ldrh r0, [r0, #0x00]
	subs r0, r1, r0
	ldr r2, [sp, #0x020]
	cmp r2, r0
	bgt _0804D990
	b _0804DB72
_0804D990:
	ldr r3, [sp, #0x028]
	cmp r3, r1
	blt _0804D998
	b _0804DB72
_0804D998:
	b _0804D9F0
	.byte 0x00, 0x00
_0804D99C: .4byte 0x083A0A78
_0804D9A0: .4byte 0x00000216
_0804D9A4: .4byte 0x0000020E
_0804D9A8: .4byte 0x00000272
_0804D9AC:
	ldr r4, _0804DA34 @ =0x00000272
	adds r0, r5, r4
	ldrh r1, [r0, #0x00]
	lsrs r2, r1, #0x01
	ldr r0, [r5, #0x0C]
	subs r0, r0, r2
	adds r1, r0, r1
	ldr r6, [sp, #0x014]
	cmp r6, r1
	blt _0804D9C2
	b _0804DB72
_0804D9C2:
	ldr r7, [sp, #0x01C]
	cmp r7, r0
	bgt _0804D9CA
	b _0804DB72
_0804D9CA:
	movs r1, #0x9C
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x10]
	adds r1, r0, r1
	ldr r3, _0804DA38 @ =0x00000276
	adds r0, r5, r3
	ldrh r0, [r0, #0x00]
	subs r0, r1, r0
	ldr r4, [sp, #0x024]
	cmp r4, r0
	bgt _0804D9E8
	b _0804DB72
_0804D9E8:
	ldr r6, [sp, #0x02C]
	cmp r6, r1
	blt _0804D9F0
	b _0804DB72
_0804D9F0:
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	movs r7, #0x9D
	lsls r7, r7, #0x02
	adds r0, r5, r7
	ldrh r0, [r0, #0x00]
	adds r0, r1, r0
	ldr r2, [sp, #0x00C]
	cmp r2, r0
	blt _0804DA08
	b _0804DB72
_0804DA08:
	ldr r3, [sp, #0x008]
	cmp r3, r1
	bgt _0804DA10
	b _0804DB72
_0804DA10:
	ldr r0, _0804DA3C @ =0x0000020D
	add r0, r12
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r1, r0, #0x1F
	mov r4, r10
	cmp r4, #0x00
	bne _0804DA40
	movs r6, #0x84
	lsls r6, r6, #0x02
	adds r0, r5, r6
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	bne _0804DA50
	b _0804DA76
_0804DA34: .4byte 0x00000272
_0804DA38: .4byte 0x00000276
_0804DA3C: .4byte 0x0000020D
_0804DA40:
	mov r7, r9
	adds r0, r5, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	beq _0804DA76
_0804DA50:
	mov r0, r8
	ldrb r2, [r0, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	ldr r3, _0804DB4C @ =0x083A0B78
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	orrs r1, r0
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x79
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r4, r8
	strb r0, [r4, #0x00]
_0804DA76:
	mov r6, r9
	adds r6, r5, r6
	str r6, [sp, #0x044]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	ldr r6, _0804DB50 @ =0x0000020D
	add r6, r12
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	beq _0804DABE
	ldr r7, [sp, #0x000]
	ldr r3, [r7, #0x00]
	adds r3, #0x24
	ldrb r4, [r3, #0x00]
	lsls r1, r4, #0x19
	lsrs r1, r1, #0x1C
	ldr r2, _0804DB54 @ =0x083A0B80
	mov r7, r8
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	orrs r1, r0
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x79
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x00]
_0804DABE:
	ldr r0, _0804DB58 @ =0x0000020F
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804DB34
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	ldr r2, [sp, #0x044]
	ldrb r0, [r2, #0x00]
	lsrs r0, r0, #0x07
	ands r1, r0
	cmp r1, #0x00
	beq _0804DB34
	movs r4, #0xD4
	lsls r4, r4, #0x02
	add r4, r12
	ldrb r1, [r4, #0x00]
	movs r6, #0x0F
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _0804DB34
	ldr r3, [sp, #0x040]
	ldrb r0, [r3, #0x00]
	movs r3, #0x7F
	adds r1, r3, #0x0
	ands r1, r0
	ldr r7, [sp, #0x038]
	ldrb r2, [r7, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	ldr r2, [sp, #0x034]
	lsls r1, r2, #0x07
	ands r0, r3
	orrs r0, r1
	strb r0, [r7, #0x00]
	mov r3, r8
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	ldr r7, _0804DB4C @ =0x083A0B78
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	ands r1, r6
	ldrb r2, [r4, #0x00]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _0804DB5C @ =0x00000342
	add r0, r12
	mov r1, r10
	strb r1, [r0, #0x00]
_0804DB34:
	mov r2, r10
	cmp r2, #0x00
	bne _0804DB60
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0804DB6E
	b _0804DB72
_0804DB4C: .4byte 0x083A0B78
_0804DB50: .4byte 0x0000020D
_0804DB54: .4byte 0x083A0B80
_0804DB58: .4byte 0x0000020F
_0804DB5C: .4byte 0x00000342
_0804DB60:
	mov r4, r9
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804DB72
_0804DB6E:
	movs r0, #0x01
	b _0804DBBC
_0804DB72:
	ldr r6, _0804DBCC @ =0x0000020E
	adds r0, r5, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _0804DBA8
	movs r7, #0xD1
	lsls r7, r7, #0x02
	adds r0, r5, r7
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0804DBA8
	mov r1, r9
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804DBA8
	adds r5, r2, #0x0
	ldr r2, [sp, #0x034]
	adds r2, #0x01
	str r2, [sp, #0x034]
	cmp r2, #0x01
	bgt _0804DBA8
	b _0804D904
_0804DBA8:
	ldr r3, [sp, #0x030]
	subs r3, #0x01
	str r3, [sp, #0x030]
	ldr r4, [sp, #0x000]
	adds r4, #0x04
	str r4, [sp, #0x000]
	cmp r3, #0x00
	beq _0804DBBA
	b _0804D8FC
_0804DBBA:
	movs r0, #0x00
_0804DBBC:
	add sp, #0x04C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0804DBCC: .4byte 0x0000020E
	thumb_func_start sub_804DBD0
sub_804DBD0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	cmp r7, #0x01
	beq _0804DC1E
	ldr r1, _0804DC64 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804DC06
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0804DC06
	cmp r0, #0x04
	bls _0804DC1E
_0804DC06:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _0804DC1E
	b _0804DDE0
_0804DC1E:
	lsls r2, r7, #0x01
	adds r2, r2, r7
	lsls r2, r2, #0x05
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, _0804DC68 @ =0x083A0B88
	adds r0, r0, r1
	adds r2, r2, r0
	str r2, [sp, #0x01C]
	cmp r7, #0x00
	bne _0804DCB4
	ldr r1, _0804DC64 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804DC86
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _0804DC6C
	cmp r0, #0x04
	beq _0804DC7A
	b _0804DCE0
_0804DC64: .4byte 0x0000035B
_0804DC68: .4byte 0x083A0B88
_0804DC6C:
	movs r3, #0xC0
	lsls r3, r3, #0x05
	mov r10, r3
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r9, r0
	b _0804DCE0
_0804DC7A:
	movs r1, #0x80
	lsls r1, r1, #0x05
	mov r10, r1
	movs r2, #0x00
	mov r9, r2
	b _0804DCE0
_0804DC86:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _0804DC9C
	cmp r0, #0x04
	beq _0804DCA8
	b _0804DCE0
_0804DC9C:
	movs r0, #0xA0
	lsls r0, r0, #0x06
	mov r10, r0
	movs r1, #0x80
	lsls r1, r1, #0x05
	b _0804DCDE
_0804DCA8:
	movs r2, #0x80
	lsls r2, r2, #0x05
	mov r10, r2
	movs r3, #0x00
	mov r9, r3
	b _0804DCE0
_0804DCB4:
	ldr r1, _0804DCD0 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804DCD4
	movs r2, #0x80
	lsls r2, r2, #0x05
	mov r10, r2
	movs r3, #0x80
	lsls r3, r3, #0x01
	mov r9, r3
	b _0804DCE0
_0804DCD0: .4byte 0x0000035B
_0804DCD4:
	movs r0, #0x80
	lsls r0, r0, #0x06
	mov r10, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
_0804DCDE:
	mov r9, r1
_0804DCE0:
	ldr r0, [r4, #0x14]
	add r10, r0
	add r9, r0
	movs r2, #0x00
	str r2, [sp, #0x020]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x024]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x028]
	mov r1, sp
	adds r1, #0x08
	str r1, [sp, #0x02C]
	mov r2, sp
	adds r2, #0x0C
	str r2, [sp, #0x030]
	movs r6, #0x01
	ldr r3, _0804DD80 @ =0x0000020D
	adds r3, r3, r4
	mov r8, r3
	ldr r5, _0804DD84 @ =0x083A0C48
_0804DD0C:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x01C]
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	ldr r1, [r4, #0x0C]
	adds r1, r1, r0
	str r1, [sp, #0x034]
	ldrb r0, [r5, #0x01]
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x01C]
	adds r0, r0, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r2, [r4, #0x10]
	adds r2, r2, r0
	mov r12, r2
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldr r3, [sp, #0x024]
	str r3, [sp, #0x000]
	ldr r1, [sp, #0x028]
	str r1, [sp, #0x004]
	ldr r2, [sp, #0x02C]
	strb r6, [r2, #0x00]
	mov r1, r8
	ldrb r1, [r1, #0x00]
	lsrs r3, r1, #0x03
	ands r3, r6
	ldr r2, [sp, #0x030]
	strb r3, [r2, #0x00]
	ldr r1, [sp, #0x034]
	mov r2, r12
	add r3, sp, #0x010
	bl sub_803FBA4
	adds r2, r0, #0x0
	ldr r0, [sp, #0x010]
	cmp r9, r0
	bgt _0804DD88
	cmp r7, #0x00
	bne _0804DDCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x40
	bne _0804DDCC
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	eors r0, r6
	ands r0, r6
	cmp r0, #0x00
	beq _0804DDD4
	b _0804DDCC
_0804DD80: .4byte 0x0000020D
_0804DD84: .4byte 0x083A0C48
_0804DD88:
	ldr r1, [sp, #0x014]
	cmp r1, #0x00
	blt _0804DDD4
	ldr r0, [sp, #0x018]
	cmp r9, r0
	bgt _0804DDD4
	cmp r10, r1
	ble _0804DDD4
	ldr r2, [r2, #0x00]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x1F
	mov r3, r8
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	beq _0804DDBE
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1C
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x1C
	adds r0, r0, r1
	lsls r1, r2, #0x08
	lsrs r1, r1, #0x1C
	cmn r0, r1
	beq _0804DDD4
_0804DDBE:
	cmp r7, #0x00
	bne _0804DDCC
	ldr r0, _0804DDD0 @ =0x40000078
	ands r2, r0
	subs r0, #0x38
	cmp r2, r0
	beq _0804DDD4
_0804DDCC:
	movs r0, #0x01
	b _0804DDE2
_0804DDD0: .4byte 0x40000078
_0804DDD4:
	adds r5, #0x02
	ldr r0, [sp, #0x020]
	adds r0, #0x01
	str r0, [sp, #0x020]
	cmp r0, #0x08
	bls _0804DD0C
_0804DDE0:
	movs r0, #0x00
_0804DDE2:
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_804DDF4
sub_804DDF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	adds r3, r1, #0x0
	str r2, [sp, #0x000]
	ldr r4, _0804DE84 @ =0x00000272
	adds r2, r7, r4
	ldrh r0, [r2, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r0
	mov r8, r1
	movs r1, #0x9C
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	mov r12, r0
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r1, r0, #0x0
	ldr r5, [sp, #0x000]
	cmp r1, r5
	blt _0804DE32
	b _0804DF64
_0804DE32:
	movs r1, #0x83
	lsls r1, r1, #0x02
	mov r10, r1
	str r2, [sp, #0x008]
	ldr r2, _0804DE88 @ =0x00000276
	adds r2, r7, r2
	str r2, [sp, #0x00C]
	adds r4, #0xCA
	adds r4, r7, r4
	str r4, [sp, #0x010]
_0804DE46:
	ldm r3!, {r2}
	movs r5, #0x00
	mov r9, r5
	adds r0, #0x01
	str r0, [sp, #0x014]
	str r3, [sp, #0x018]
_0804DE52:
	mov r1, r10
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x81
	ands r0, r1
	cmp r0, #0x81
	bne _0804DF24
	ldr r3, _0804DE84 @ =0x00000272
	adds r0, r2, r3
	ldrh r3, [r0, #0x00]
	ldr r4, _0804DE88 @ =0x00000276
	adds r0, r2, r4
	ldrh r6, [r0, #0x00]
	ldr r5, [sp, #0x008]
	ldrh r4, [r5, #0x00]
	ldr r0, [sp, #0x00C]
	ldrh r5, [r0, #0x00]
	lsrs r1, r3, #0x01
	ldr r0, [r2, #0x0C]
	subs r1, r0, r1
	cmp r1, r8
	bge _0804DE8C
	adds r0, r1, r3
	mov r1, r8
	b _0804DE90
_0804DE84: .4byte 0x00000272
_0804DE88: .4byte 0x00000276
_0804DE8C:
	mov r3, r8
	adds r0, r3, r4
_0804DE90:
	subs r0, r0, r1
	cmp r0, #0x00
	ble _0804DF24
	movs r4, #0x9C
	lsls r4, r4, #0x02
	adds r0, r2, r4
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r2, #0x10]
	adds r1, r0, r1
	cmp r1, r12
	ble _0804DEB0
	subs r0, r1, r6
	mov r4, r12
	subs r0, r4, r0
	b _0804DEB6
_0804DEB0:
	mov r3, r12
	subs r0, r3, r5
	subs r0, r1, r0
_0804DEB6:
	cmp r0, #0x00
	ble _0804DF24
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r1, r1, r0
	ldr r0, [r7, #0x14]
	subs r3, r1, r0
	mov r4, r10
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804DEDC
	movs r0, #0xA0
	lsls r0, r0, #0x06
	cmp r3, r0
	ble _0804DEE0
	b _0804DF24
_0804DEDC:
	cmp r3, #0x00
	bgt _0804DF24
_0804DEE0:
	adds r3, r2, #0x0
	adds r3, #0x54
	ldrb r1, [r3, #0x00]
	ldr r5, _0804DF20 @ =0x0000033E
	adds r0, r7, r5
	strb r1, [r0, #0x00]
	str r2, [sp, #0x004]
	adds r0, r2, #0x0
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1D
	cmp r0, #0x01
	bls _0804DF58
	ldrb r0, [r3, #0x00]
	movs r1, #0x7F
	ands r1, r0
	ldr r0, [sp, #0x010]
	ldrb r2, [r0, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r2, r9
	lsls r1, r2, #0x07
	movs r3, #0x7F
	ands r0, r3
	orrs r0, r1
	ldr r4, [sp, #0x010]
	strb r0, [r4, #0x00]
	b _0804DF58
	.byte 0x00, 0x00
_0804DF20: .4byte 0x0000033E
_0804DF24:
	ldr r5, _0804DFDC @ =0x0000020E
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _0804DF58
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0804DF58
	mov r3, r10
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804DF58
	movs r4, #0x01
	add r9, r4
	mov r5, r9
	cmp r5, #0x01
	bgt _0804DF58
	b _0804DE52
_0804DF58:
	ldr r0, [sp, #0x014]
	ldr r3, [sp, #0x018]
	ldr r1, [sp, #0x000]
	cmp r0, r1
	bge _0804DF64
	b _0804DE46
_0804DF64:
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r3, r7, r2
	ldr r2, [r3, #0x00]
	movs r1, #0x13
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804DF9A
	ldrb r0, [r2, #0x01]
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldr r4, _0804DFE0 @ =0x00000352
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x07
	movs r0, #0x01
	eors r1, r0
	adds r0, r2, #0x0
	adds r0, #0x10
	adds r0, r0, r1
	ldrb r1, [r2, #0x13]
	strb r1, [r0, #0x00]
	ldr r1, [r3, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x13]
_0804DF9A:
	ldr r5, [sp, #0x004]
	cmp r5, #0x00
	beq _0804DFCA
	ldr r1, _0804DFE4 @ =0x0000020D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0804DFCA
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x16]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x19
	movs r1, #0x01
	orrs r1, r0
	movs r0, #0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x16]
_0804DFCA:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0804DFDC: .4byte 0x0000020E
_0804DFE0: .4byte 0x00000352
_0804DFE4: .4byte 0x0000020D
	thumb_func_start sub_804DFE8
sub_804DFE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldrb r2, [r7, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	bne _0804E014
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	adds r1, r3, #0x0
	movs r2, #0x01
	bl sub_8020DD0
	str r0, [r7, #0x44]
	b _0804E0C0
_0804E014:
	ldr r1, _0804E0CC @ =0x083A0C5A
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1D
	subs r0, #0x02
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r5, [r0, #0x00]
	ldr r1, _0804E0D0 @ =0x00001004
	movs r0, #0x00
	mov r8, r0
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0C
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x44]
	ldr r2, _0804E0D4 @ =0x083A05EC
	ldrb r1, [r7, #0x01]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	adds r1, #0x20
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	movs r5, #0x7F
	ands r5, r1
	lsrs r6, r1, #0x07
	mov r1, r8
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x44]
	bl sub_8021ED8
	adds r1, r7, #0x0
	adds r1, #0x3E
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	beq _0804E0B0
	adds r2, r0, #0x0
	ldr r1, [r7, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	blt _0804E0A2
_0804E096:
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	subs r2, r2, r0
	cmp r2, r0
	bge _0804E096
_0804E0A2:
	ldr r0, [r7, #0x44]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
_0804E0B0:
	ldr r2, [r7, #0x44]
	lsls r3, r6, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x11]
_0804E0C0:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804E0CC: .4byte 0x083A0C5A
_0804E0D0: .4byte 0x00001004
_0804E0D4: .4byte 0x083A05EC
	thumb_func_start sub_804E0D8
sub_804E0D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	mov r8, r1
	mov r9, r2
	adds r6, r3, #0x0
	movs r0, #0x07
	mov r10, r0
	mov r2, r10
	ands r1, r2
	lsls r1, r1, #0x03
	ldrb r2, [r7, #0x00]
	movs r4, #0x39
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r0, #0x02
	negs r0, r0
	add r8, r0
	ldr r1, _0804E314 @ =0x083A0C5A
	mov r2, r8
	lsls r0, r2, #0x01
	adds r0, r0, r1
	ldrh r2, [r0, #0x00]
	ldr r0, [r7, #0x44]
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80210A8
	ldr r0, [r7, #0x44]
	mov r1, r9
	adds r1, #0x24
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	mov r2, r10
	ands r1, r2
	lsls r1, r1, #0x03
	ldrb r2, [r7, #0x01]
	ands r4, r2
	orrs r4, r1
	strb r4, [r7, #0x01]
	ldr r1, _0804E318 @ =0x083A05EC
	lsls r4, r4, #0x1A
	lsrs r4, r4, #0x1D
	adds r4, #0x20
	adds r4, r4, r1
	ldrb r1, [r4, #0x00]
	movs r4, #0x7F
	ands r4, r1
	lsrs r1, r1, #0x07
	mov r10, r1
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x44]
	bl sub_8021ED8
	cmp r6, #0x00
	beq _0804E19E
	adds r0, r7, #0x0
	adds r0, #0x3E
	strb r6, [r0, #0x00]
	ldr r1, [r7, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	blt _0804E18E
_0804E182:
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	subs r6, r6, r0
	cmp r6, r0
	bge _0804E182
_0804E18E:
	ldr r0, [r7, #0x44]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_801E150
_0804E19E:
	ldr r2, [r7, #0x44]
	mov r4, r10
	lsls r3, r4, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x11]
	mov r0, r9
	ldr r6, [r0, #0x0C]
	str r6, [r7, #0x18]
	str r6, [r7, #0x08]
	ldr r1, [r0, #0x10]
	mov r12, r1
	str r1, [r7, #0x1C]
	str r1, [r7, #0x0C]
	ldr r0, [r0, #0x14]
	str r0, [r7, #0x20]
	str r0, [r7, #0x10]
	ldr r0, _0804E31C @ =0x083A0C70
	mov r2, r8
	lsls r5, r2, #0x01
	adds r0, r5, r0
	movs r4, #0x00
	ldsh r1, [r0, r4]
	mov r2, r9
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x24]
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x44]
	ldrh r0, [r0, #0x16]
	lsls r2, r0, #0x03
	subs r2, r2, r0
	ldr r0, _0804E320 @ =0x0801349C
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	lsrs r0, r0, #0x03
	movs r3, #0x3F
	lsls r0, r0, #0x09
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r0, r4
	strh r0, [r7, #0x38]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x03
	ldrb r1, [r2, #0x01]
	lsrs r1, r1, #0x05
	orrs r0, r1
	ands r0, r3
	adds r0, #0x01
	lsls r0, r0, #0x08
	strh r0, [r7, #0x3A]
	ldrb r0, [r2, #0x01]
	lsls r0, r0, #0x01
	ldrb r1, [r2, #0x02]
	lsrs r1, r1, #0x07
	orrs r0, r1
	ands r0, r3
	adds r0, #0x01
	lsls r0, r0, #0x08
	strh r0, [r7, #0x3C]
	ldrb r0, [r2, #0x02]
	lsrs r0, r0, #0x02
	lsls r0, r0, #0x01
	ands r0, r3
	adds r0, #0x02
	lsls r0, r0, #0x08
	strh r0, [r7, #0x32]
	ldrb r0, [r2, #0x02]
	lsls r0, r0, #0x04
	ldrb r1, [r2, #0x03]
	lsrs r1, r1, #0x04
	orrs r0, r1
	ands r0, r3
	adds r0, #0x01
	lsls r0, r0, #0x08
	strh r0, [r7, #0x34]
	ldrb r0, [r2, #0x03]
	lsls r0, r0, #0x02
	ldrb r1, [r2, #0x04]
	lsrs r1, r1, #0x06
	orrs r0, r1
	ands r0, r3
	adds r0, #0x01
	lsls r0, r0, #0x08
	strh r0, [r7, #0x36]
	ldr r0, _0804E324 @ =0x083A0C60
	adds r0, r5, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r7, #0x28]
	movs r0, #0x28
	ldsh r1, [r7, r0]
	ldr r2, _0804E328 @ =0x0839F564
	ldrb r0, [r7, #0x01]
	lsls r0, r0, #0x1A
	lsrs r3, r0, #0x1D
	lsls r0, r3, #0x02
	adds r0, r0, r2
	movs r4, #0x00
	ldsh r0, [r0, r4]
	muls r0, r1
	cmp r0, #0x00
	bge _0804E272
	adds r0, #0xFF
_0804E272:
	asrs r0, r0, #0x08
	strh r0, [r7, #0x2A]
	movs r0, #0x28
	ldsh r1, [r7, r0]
	lsls r4, r3, #0x01
	adds r0, r4, #0x1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	cmp r0, #0x00
	bge _0804E28E
	adds r0, #0xFF
_0804E28E:
	asrs r0, r0, #0x08
	strh r0, [r7, #0x2C]
	ldr r0, _0804E32C @ =0x083A0C66
	adds r0, r5, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	strh r0, [r7, #0x30]
	ldr r2, _0804E330 @ =0x083A0C76
	mov r0, r8
	lsls r1, r0, #0x04
	adds r1, r1, r4
	lsls r0, r1, #0x01
	adds r0, r0, r2
	movs r4, #0x00
	ldsh r0, [r0, r4]
	adds r0, r6, r0
	str r0, [r7, #0x08]
	adds r1, #0x01
	lsls r1, r1, #0x01
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r0, [r1, r2]
	add r0, r12
	str r0, [r7, #0x0C]
	subs r0, r3, #0x3
	movs r2, #0x0E
	cmp r0, #0x02
	bhi _0804E2CA
	movs r2, #0x0D
_0804E2CA:
	lsls r2, r2, #0x07
	ldrh r1, [r7, #0x00]
	ldr r0, _0804E334 @ =0xFFFFF87F
	ands r0, r1
	orrs r0, r2
	strh r0, [r7, #0x00]
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x40]
	ldr r0, _0804E338 @ =0x083A0C6C
	add r0, r8
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x07
	ldrb r2, [r7, #0x01]
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x01]
	ldrb r0, [r7, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r0, #0x00
	strh r0, [r7, #0x2E]
	strb r0, [r7, #0x02]
	mov r4, r9
	str r4, [r7, #0x48]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804E314: .4byte 0x083A0C5A
_0804E318: .4byte 0x083A05EC
_0804E31C: .4byte 0x083A0C70
_0804E320: .4byte 0x0801349C
_0804E324: .4byte 0x083A0C60
_0804E328: .4byte 0x0839F564
_0804E32C: .4byte 0x083A0C66
_0804E330: .4byte 0x083A0C76
_0804E334: .4byte 0xFFFFF87F
_0804E338: .4byte 0x083A0C6C
	thumb_func_start sub_804E33C
sub_804E33C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldrb r3, [r4, #0x00]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	beq _0804E448
	ldr r2, [r4, #0x44]
	adds r1, r2, #0x0
	adds r1, #0x21
	ldrb r0, [r1, #0x00]
	cmp r0, #0x04
	bls _0804E370
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804E448
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	strb r0, [r4, #0x00]
	b _0804E448
_0804E370:
	movs r0, #0x38
	ands r0, r3
	cmp r0, #0x20
	bne _0804E396
	ldrb r1, [r1, #0x00]
	adds r1, #0x05
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_804E6E0
	b _0804E448
_0804E396:
	movs r0, #0x2A
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	movs r0, #0x2C
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x2E]
	adds r0, r0, r1
	strh r0, [r4, #0x2E]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #0x30]
	cmp r0, r1
	bls _0804E3C4
	adds r0, r4, #0x0
	bl sub_804FAF8
	b _0804E448
_0804E3C4:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_804E6E0
	adds r0, r4, #0x0
	bl sub_804EA68
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0804E3E4
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	beq _0804E442
_0804E3E4:
	ldr r0, [r4, #0x44]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	adds r1, #0x05
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	adds r1, r4, #0x0
	adds r1, #0x3E
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	beq _0804E432
	adds r3, r0, #0x0
	ldr r1, [r4, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	blt _0804E41E
_0804E412:
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	subs r3, r3, r0
	cmp r3, r0
	bge _0804E412
_0804E41E:
	ldr r0, [r4, #0x44]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_801E150
_0804E432:
	ldr r2, [r4, #0x44]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
_0804E442:
	adds r0, r4, #0x0
	bl sub_804F904
_0804E448:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_804E450
sub_804E450:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0x0
	ldr r1, [r6, #0x08]
	cmp r1, #0x00
	bge _0804E466
	ldr r0, _0804E49C @ =0x00000FFF
	adds r1, r1, r0
_0804E466:
	asrs r7, r1, #0x0C
	ldr r2, [r6, #0x0C]
	cmp r2, #0x00
	bge _0804E472
	ldr r1, _0804E49C @ =0x00000FFF
	adds r2, r2, r1
_0804E472:
	asrs r4, r2, #0x0C
	ldr r0, [r6, #0x40]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r4, r4, #0x10
	mov r9, r4
	mov r2, r9
	asrs r2, r2, #0x10
	mov r10, r2
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldrb r1, [r6, #0x01]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804E4A0
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x04
	lsrs r5, r0, #0x1E
	b _0804E5A2
_0804E49C: .4byte 0x00000FFF
_0804E4A0:
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r5, r0, #0x1E
	ldr r0, [r6, #0x08]
	ldr r3, _0804E4E8 @ =0xFFFFF800
	adds r1, r0, r3
	cmp r1, #0x00
	bge _0804E4B4
	ldr r2, _0804E4EC @ =0x000007FF
	adds r1, r0, r2
_0804E4B4:
	asrs r4, r1, #0x0C
	movs r3, #0xE0
	lsls r3, r3, #0x03
	adds r1, r0, r3
	cmp r1, #0x00
	bge _0804E4C4
	ldr r2, _0804E4F0 @ =0x000016FF
	adds r1, r0, r2
_0804E4C4:
	asrs r1, r1, #0x0C
	mov r8, r1
	cmp r4, r8
	bgt _0804E560
	adds r1, #0x01
	subs r2, r1, r4
	movs r0, #0x01
	ands r2, r0
	cmp r4, r1
	bge _0804E4DC
	cmp r2, #0x00
	beq _0804E4F4
_0804E4DC:
	ldr r0, [r6, #0x40]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r2, r10
	b _0804E532
	.byte 0x00, 0x00
_0804E4E8: .4byte 0xFFFFF800
_0804E4EC: .4byte 0x000007FF
_0804E4F0: .4byte 0x000016FF
_0804E4F4:
	ldr r0, [r6, #0x40]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r3, r9
	asrs r2, r3, #0x10
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldrb r1, [r2, #0x02]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	bne _0804E526
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r0, r0, #0x1E
	cmp r0, r5
	bls _0804E526
	adds r5, r0, #0x0
	adds r7, r4, #0x0
	ldrb r1, [r2, #0x03]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0804E560
_0804E526:
	adds r4, #0x01
	ldr r0, [r6, #0x40]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r3, r9
	asrs r2, r3, #0x10
_0804E532:
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldrb r1, [r2, #0x02]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	bne _0804E55A
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r0, r0, #0x1E
	cmp r0, r5
	bls _0804E55A
	adds r5, r0, #0x0
	adds r7, r4, #0x0
	ldrb r1, [r2, #0x03]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0804E560
_0804E55A:
	adds r4, #0x01
	cmp r4, r8
	ble _0804E4F4
_0804E560:
	ldr r1, [r6, #0x0C]
	adds r2, r1, #0x0
	cmp r1, #0x00
	bge _0804E56C
	ldr r0, _0804E5C0 @ =0x00000FFF
	adds r2, r1, r0
_0804E56C:
	asrs r4, r2, #0x0C
	ldr r0, [r6, #0x14]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0804E57A
	ldr r1, _0804E5C0 @ =0x00000FFF
	adds r0, r0, r1
_0804E57A:
	asrs r0, r0, #0x0C
	subs r0, #0x01
	mov r8, r0
	lsls r7, r7, #0x10
_0804E582:
	subs r4, #0x01
	ldr r0, [r6, #0x40]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	asrs r1, r7, #0x10
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r0, r0, #0x1E
	cmp r5, r0
	ble _0804E59E
	adds r5, r0, #0x0
_0804E59E:
	cmp r4, r8
	bgt _0804E582
_0804E5A2:
	ldr r2, [r6, #0x44]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2, #0x1F]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0804E5C0: .4byte 0x00000FFF
	thumb_func_start sub_804E5C4
sub_804E5C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	ldrb r1, [r2, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x60
	bne _0804E6CC
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	bge _0804E5E6
	adds r0, #0xFF
_0804E5E6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _0804E5F2
	adds r0, #0xFF
_0804E5F2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #0x14]
	adds r1, r1, r0
	str r0, [sp, #0x01C]
	cmp r1, #0x00
	bge _0804E604
	adds r1, #0xFF
_0804E604:
	asrs r1, r1, #0x08
	str r1, [sp, #0x008]
	ldrh r0, [r2, #0x32]
	lsrs r0, r0, #0x08
	lsls r4, r0, #0x10
	ldrh r0, [r2, #0x36]
	lsrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldrb r0, [r3, #0x04]
	str r0, [sp, #0x010]
	ldrb r0, [r3, #0x06]
	lsls r0, r0, #0x08
	ldrb r1, [r3, #0x05]
	orrs r0, r1
	subs r2, r3, r0
	movs r1, #0x00
	str r1, [sp, #0x014]
	ldr r0, [sp, #0x010]
	cmp r1, r0
	bge _0804E6CC
	lsrs r4, r4, #0x11
	str r4, [sp, #0x018]
_0804E630:
	ldrb r0, [r2, #0x00]
	lsls r4, r0, #0x04
	ldrb r0, [r2, #0x02]
	lsls r0, r0, #0x04
	adds r7, r4, r0
	subs r5, r7, #0x1
	ldrb r0, [r2, #0x01]
	lsls r3, r0, #0x04
	ldrb r0, [r2, #0x03]
	lsls r0, r0, #0x04
	adds r6, r3, r0
	subs r1, r6, #0x1
	mov r12, r1
	ldrb r1, [r2, #0x04]
	movs r0, #0x7F
	ands r0, r1
	lsls r0, r0, #0x03
	mov r9, r0
	ldrb r0, [r2, #0x05]
	movs r1, #0x7F
	ands r1, r0
	movs r0, #0xFF
	lsls r0, r0, #0x03
	mov r8, r0
	cmp r1, #0x7F
	beq _0804E668
	lsls r1, r1, #0x03
	mov r8, r1
_0804E668:
	mov r1, r9
	add r1, r8
	mov r10, r1
	ldrb r1, [r2, #0x06]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0804E68A
	ldr r0, [sp, #0x018]
	subs r4, r4, r0
	adds r5, r5, r0
	subs r3, #0x01
	subs r0, r6, #0x2
	ldr r1, [sp, #0x00C]
	adds r0, r0, r1
	mov r12, r0
	b _0804E690
_0804E68A:
	adds r4, #0x04
	subs r5, r7, #0x5
	adds r3, #0x07
_0804E690:
	ldr r0, [sp, #0x000]
	cmp r0, r4
	blt _0804E6BE
	cmp r0, r5
	bgt _0804E6BE
	ldr r1, [sp, #0x004]
	cmp r1, r3
	blt _0804E6BE
	cmp r1, r12
	bgt _0804E6BE
	ldr r0, [sp, #0x008]
	cmp r0, r9
	blt _0804E6BE
	cmp r0, r10
	bgt _0804E6BE
	mov r1, r8
	cmp r1, #0x00
	bne _0804E6BA
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	bne _0804E6BE
_0804E6BA:
	adds r0, r2, #0x0
	b _0804E6CE
_0804E6BE:
	ldr r1, [sp, #0x014]
	adds r1, #0x01
	str r1, [sp, #0x014]
	adds r2, #0x0B
	ldr r0, [sp, #0x010]
	cmp r1, r0
	blt _0804E630
_0804E6CC:
	movs r0, #0x00
_0804E6CE:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_804E6E0
sub_804E6E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	mov r12, r0
	adds r3, r1, #0x0
	str r2, [sp, #0x000]
	ldrh r0, [r0, #0x38]
	lsrs r0, r0, #0x01
	mov r2, r12
	ldr r1, [r2, #0x08]
	subs r1, r1, r0
	str r1, [sp, #0x004]
	ldr r4, [r2, #0x0C]
	str r4, [sp, #0x008]
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #0x14]
	adds r1, r1, r0
	str r1, [sp, #0x00C]
	movs r0, #0x00
	ldr r5, [sp, #0x000]
	cmp r0, r5
	blt _0804E714
	b _0804EA4C
_0804E714:
	ldm r3!, {r7}
	movs r1, #0x00
	str r1, [sp, #0x010]
	adds r0, #0x01
	str r0, [sp, #0x024]
	str r3, [sp, #0x020]
_0804E720:
	mov r2, r12
	ldr r0, [r2, #0x48]
	adds r0, #0x54
	adds r1, r7, #0x0
	adds r1, #0x54
	ldrb r0, [r0, #0x00]
	str r1, [sp, #0x01C]
	ldrb r4, [r1, #0x00]
	cmp r0, r4
	bne _0804E736
	b _0804EA08
_0804E736:
	movs r5, #0x83
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0804E748
	b _0804EA08
_0804E748:
	ldr r1, _0804E794 @ =0x00000216
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804E758
	b _0804EA08
_0804E758:
	ldr r2, _0804E798 @ =0x00000272
	adds r0, r7, r2
	ldrh r2, [r0, #0x00]
	ldr r4, _0804E79C @ =0x00000276
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	mov r10, r0
	adds r5, #0x68
	adds r0, r7, r5
	ldrh r4, [r0, #0x00]
	mov r0, r12
	ldrh r0, [r0, #0x3C]
	mov r8, r0
	mov r1, r12
	ldrh r3, [r1, #0x3A]
	lsrs r1, r2, #0x01
	ldr r0, [r7, #0x0C]
	subs r1, r0, r1
	mov r5, r12
	ldrh r5, [r5, #0x38]
	str r5, [sp, #0x028]
	mov r5, r8
	str r5, [sp, #0x02C]
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x004]
	cmp r1, r0
	bge _0804E7A0
	adds r0, r1, r2
	ldr r1, [sp, #0x004]
	b _0804E7A6
_0804E794: .4byte 0x00000216
_0804E798: .4byte 0x00000272
_0804E79C: .4byte 0x00000276
_0804E7A0:
	ldr r2, [sp, #0x004]
	ldr r5, [sp, #0x028]
	adds r0, r2, r5
_0804E7A6:
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0804E7AE
	b _0804EA08
_0804E7AE:
	ldr r0, [r7, #0x10]
	mov r9, r0
	mov r1, r9
	str r1, [sp, #0x014]
	ldr r2, [sp, #0x008]
	cmp r9, r2
	ble _0804E7C4
	mov r5, r10
	subs r0, r1, r5
	subs r0, r2, r0
	b _0804E7CE
_0804E7C4:
	ldr r1, [sp, #0x008]
	mov r2, r8
	subs r0, r1, r2
	mov r5, r9
	subs r0, r5, r0
_0804E7CE:
	cmp r0, #0x00
	bgt _0804E7D4
	b _0804EA08
_0804E7D4:
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	ldr r0, [sp, #0x00C]
	cmp r1, r0
	bgt _0804E7E6
	adds r0, r1, r4
	ldr r1, [sp, #0x00C]
	b _0804E7EA
_0804E7E6:
	ldr r2, [sp, #0x00C]
	adds r0, r2, r3
_0804E7EA:
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0804E7F2
	b _0804EA08
_0804E7F2:
	ldr r3, [r7, #0x34]
	mov r4, r8
	asrs r2, r4, #0x1F
	subs r0, r4, r2
	asrs r0, r0, #0x01
	mov r5, r12
	ldr r1, [r5, #0x1C]
	subs r5, r1, r0
	mov r0, r10
	lsrs r1, r0, #0x01
	ldr r0, [r7, #0x38]
	subs r4, r0, r1
	mov r1, r12
	ldr r6, [r1, #0x18]
	cmp r6, r3
	bne _0804E846
	cmp r5, r4
	bne _0804E846
	ldrb r1, [r1, #0x01]
	lsls r0, r1, #0x1A
	lsrs r0, r0, #0x1D
	adds r2, r1, #0x0
	cmp r0, #0x01
	bls _0804E840
	cmp r0, #0x02
	bhi _0804E82C
	movs r6, #0x08
	movs r4, #0x02
	b _0804E93E
_0804E82C:
	cmp r0, #0x05
	bhi _0804E836
	movs r6, #0x04
	movs r4, #0x01
	b _0804E93E
_0804E836:
	cmp r0, #0x06
	bhi _0804E840
	movs r6, #0x02
	movs r4, #0x08
	b _0804E93E
_0804E840:
	movs r6, #0x01
	movs r4, #0x04
	b _0804E93E
_0804E846:
	mov r0, r8
	add r0, r10
	asrs r1, r0, #0x01
	adds r0, r4, r1
	cmp r5, r0
	bge _0804E8D8
	subs r0, r4, r1
	cmp r5, r0
	ble _0804E8D8
	ldr r3, [sp, #0x018]
	cmp r6, r3
	bge _0804E89C
	movs r6, #0x02
	movs r4, #0x08
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0804E874
	b _0804E984
_0804E874:
	mov r5, r12
	ldrb r1, [r5, #0x01]
	movs r0, #0x80
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0804E93E
	ldr r1, _0804E898 @ =0x00000272
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	ldr r5, [sp, #0x028]
	adds r0, r5, r0
	asrs r0, r0, #0x01
	subs r0, r3, r0
	mov r1, r12
	str r0, [r1, #0x08]
	b _0804E93E
	.byte 0x00, 0x00
_0804E898: .4byte 0x00000272
_0804E89C:
	movs r6, #0x08
	movs r4, #0x02
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804E984
	mov r5, r12
	ldrb r1, [r5, #0x01]
	movs r0, #0x80
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0804E93E
	ldr r1, _0804E8D4 @ =0x00000272
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	ldr r5, [sp, #0x028]
	adds r0, r5, r0
	asrs r0, r0, #0x01
	ldr r1, [sp, #0x018]
	adds r0, r1, r0
	mov r5, r12
	str r0, [r5, #0x08]
	b _0804E93E
_0804E8D4: .4byte 0x00000272
_0804E8D8:
	mov r1, r8
	subs r0, r1, r2
	asrs r0, r0, #0x01
	ldr r2, [sp, #0x014]
	subs r0, r2, r0
	cmp r5, r0
	ble _0804E90E
	movs r6, #0x01
	movs r4, #0x04
	movs r5, #0x83
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804E984
	mov r0, r12
	ldrb r1, [r0, #0x01]
	movs r0, #0x80
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0804E93E
	ldr r0, [sp, #0x02C]
	add r0, r9
	b _0804E93A
_0804E90E:
	movs r6, #0x04
	movs r4, #0x01
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804E984
	mov r5, r12
	ldrb r1, [r5, #0x01]
	movs r0, #0x80
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0804E93E
	ldr r1, _0804EA5C @ =0x00000276
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	mov r5, r9
	subs r0, r5, r0
_0804E93A:
	mov r1, r12
	str r0, [r1, #0x0C]
_0804E93E:
	movs r5, #0x83
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804E984
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _0804E984
	mov r0, r12
	ldrb r2, [r0, #0x02]
	lsls r1, r2, #0x1C
	lsrs r1, r1, #0x1C
	orrs r1, r6
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x02]
	adds r3, r7, #0x0
	adds r3, #0x24
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	orrs r1, r4
	lsls r1, r1, #0x03
	movs r0, #0x79
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0804E984:
	mov r2, r12
	ldr r0, [r2, #0x48]
	movs r4, #0xD4
	lsls r4, r4, #0x02
	mov r8, r4
	adds r2, r0, r4
	ldrb r1, [r2, #0x00]
	movs r5, #0x0F
	mov r9, r5
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	beq _0804E9A6
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0804EA08
_0804E9A6:
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r12
	ldr r4, [r0, #0x48]
	ldr r1, [sp, #0x01C]
	ldrb r0, [r1, #0x00]
	movs r5, #0xCF
	lsls r5, r5, #0x02
	adds r4, r4, r5
	movs r1, #0x7F
	adds r2, r1, #0x0
	ands r2, r0
	ldrb r3, [r4, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x00]
	mov r2, r12
	ldr r0, [r2, #0x48]
	adds r0, r0, r5
	ldr r4, [sp, #0x010]
	lsls r3, r4, #0x07
	ldrb r2, [r0, #0x00]
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	mov r5, r12
	ldr r2, [r5, #0x48]
	add r2, r8
	ldrb r3, [r2, #0x00]
	lsls r1, r3, #0x1C
	lsrs r1, r1, #0x1C
	orrs r1, r6
	mov r0, r9
	ands r1, r0
	movs r0, #0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x48]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	ldr r2, _0804EA60 @ =0x00000342
	adds r1, r1, r2
	strb r0, [r1, #0x00]
_0804EA08:
	ldr r4, _0804EA64 @ =0x0000020E
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _0804EA40
	movs r5, #0xD1
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0804EA40
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804EA40
	adds r7, r3, #0x0
	ldr r2, [sp, #0x010]
	adds r2, #0x01
	str r2, [sp, #0x010]
	cmp r2, #0x01
	bgt _0804EA40
	b _0804E720
_0804EA40:
	ldr r0, [sp, #0x024]
	ldr r3, [sp, #0x020]
	ldr r4, [sp, #0x000]
	cmp r0, r4
	bge _0804EA4C
	b _0804E714
_0804EA4C:
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804EA5C: .4byte 0x00000276
_0804EA60: .4byte 0x00000342
_0804EA64: .4byte 0x0000020E
	thumb_func_start sub_804EA68
sub_804EA68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x084
	adds r6, r0, #0x0
	ldrb r7, [r6, #0x01]
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0x00
	bne _0804EA84
	bl _0804F8EA
_0804EA84:
	ldrh r2, [r6, #0x32]
	lsrs r4, r2, #0x01
	ldr r0, [r6, #0x18]
	subs r0, r0, r4
	str r0, [sp, #0x014]
	adds r0, r0, r2
	str r0, [sp, #0x018]
	ldr r0, [r6, #0x1C]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	ldrh r1, [r6, #0x36]
	subs r5, r0, r1
	str r5, [sp, #0x01C]
	str r0, [sp, #0x020]
	ldrh r5, [r6, #0x34]
	ldr r0, [r6, #0x08]
	subs r0, r0, r4
	str r0, [sp, #0x024]
	adds r2, r0, r2
	str r2, [sp, #0x028]
	ldr r0, [r6, #0x0C]
	adds r0, r0, r3
	subs r0, r0, r1
	str r0, [sp, #0x02C]
	adds r1, r0, r1
	str r1, [sp, #0x030]
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x14]
	adds r1, r1, r0
	str r1, [sp, #0x034]
	adds r5, r1, r5
	str r5, [sp, #0x038]
	lsls r0, r7, #0x1A
	lsrs r0, r0, #0x1D
	str r0, [sp, #0x03C]
	movs r7, #0x00
	str r7, [sp, #0x040]
	ldr r0, [sp, #0x03C]
	lsls r1, r0, #0x02
	ldr r0, _0804EB08 @ =0x083A0CD6
	adds r1, r1, r0
	str r1, [sp, #0x044]
	ldr r1, [r6, #0x08]
	mov r10, r1
	ldr r2, [r6, #0x0C]
	mov r9, r2
	movs r3, #0x00
	str r3, [sp, #0x048]
	ldr r4, [sp, #0x044]
	movs r2, #0x00
	ldsb r2, [r4, r2]
	adds r4, #0x01
	str r4, [sp, #0x044]
	ldr r5, [sp, #0x040]
	adds r5, #0x01
	str r5, [sp, #0x078]
	cmp r2, #0x03
	ble _0804EB0C
	ldr r7, [sp, #0x040]
	cmp r7, #0x00
	bne _0804EB04
	bl _0804F8DC
_0804EB04:
	bl _0804F8CE
_0804EB08:
	lsrs r6, r2, #0x13
	lsrs r2, r7, #0x20
_0804EB0C:
	cmp r2, #0x07
	bls _0804EB14
	bl _0804F864
_0804EB14:
	lsls r0, r2, #0x02
	ldr r1, _0804EB20 @ =0x0804EB24
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0804EB20: .4byte 0x0804EB24
	.byte 0x44, 0xEB, 0x04, 0x08, 0xC8, 0xED, 0x04, 0x08, 0x2C, 0xF0, 0x04, 0x08, 0x98, 0xF2, 0x04, 0x08
	.byte 0xF2, 0xF4, 0x04, 0x08, 0xC0, 0xF5, 0x04, 0x08, 0x94, 0xF6, 0x04, 0x08, 0x4C, 0xF7, 0x04, 0x08
	.byte 0x05, 0x99, 0x00, 0x29, 0x01, 0xDA, 0x51, 0x48, 0x09, 0x18, 0x0D, 0x13, 0x07, 0x98, 0x00, 0x28
	.byte 0x01, 0xDA, 0x4E, 0x49, 0x40, 0x18, 0x00, 0x13, 0x10, 0x9A, 0x80, 0x1A, 0x13, 0x90, 0x4C, 0x49
	.byte 0x06, 0x9B, 0x58, 0x18, 0x00, 0x28, 0x01, 0xDA, 0x4A, 0x4C, 0x18, 0x19, 0x00, 0x13, 0x14, 0x90
	.byte 0x85, 0x42, 0x01, 0xDD, 0x00, 0xF0, 0x74, 0xFE, 0x03, 0xA8, 0x00, 0x90, 0x04, 0xA8, 0x01, 0x90
	.byte 0x30, 0x1C, 0x29, 0x1C, 0x13, 0x9A, 0x02, 0xAB, 0x00, 0xF0, 0x50, 0xFF, 0x80, 0x46, 0x10, 0x9F
	.byte 0x00, 0x2F, 0x11, 0xD0, 0x02, 0x99, 0x30, 0x6A, 0x81, 0x42, 0x0A, 0xDD, 0x0D, 0x98, 0x81, 0x42
	.byte 0x07, 0xDD, 0x13, 0x98, 0x01, 0x30, 0x00, 0x03, 0x0B, 0x99, 0x88, 0x42, 0x01, 0xDD, 0x00, 0xF0
	.byte 0xFF, 0xFD, 0x10, 0x9A, 0x00, 0x2A, 0x08, 0xD1, 0x43, 0x46, 0x18, 0x68, 0x00, 0x03, 0x00, 0x0F
	.byte 0x6C, 0x1C, 0x1F, 0x94, 0x07, 0x28, 0x00, 0xD8, 0xF1, 0xE0, 0x03, 0x9A, 0x6F, 0x1C, 0x1F, 0x97
	.byte 0x00, 0x2A, 0x00, 0xDA, 0xEB, 0xE0, 0x0E, 0x98, 0x82, 0x42, 0x00, 0xDB, 0xE7, 0xE0, 0x04, 0x9B
	.byte 0x0D, 0x99, 0x8B, 0x42, 0x00, 0xDC, 0xE2, 0xE0, 0x31, 0x6A, 0x70, 0x6A, 0x08, 0x18, 0xB4, 0x8E
	.byte 0x00, 0x19, 0x82, 0x42, 0x00, 0xDB, 0xDA, 0xE0, 0x8B, 0x42, 0x00, 0xDC, 0xD7, 0xE0, 0x2F, 0x03
	.byte 0x1F, 0x98, 0x02, 0x03, 0x13, 0x98, 0x01, 0x30, 0x04, 0x03, 0x43, 0x46, 0x99, 0x78, 0x0F, 0x20
	.byte 0x84, 0x46, 0x08, 0x40, 0x20, 0xAB, 0x19, 0x70, 0x0E, 0x28, 0x3F, 0xD1, 0x05, 0x98, 0x00, 0x28
	.byte 0x01, 0xDA, 0x1A, 0x49, 0x40, 0x18, 0x00, 0x13, 0x85, 0x42, 0x37, 0xD1, 0x0B, 0x9A, 0xA0, 0x1A
	.byte 0x09, 0x9B, 0xDD, 0x1B, 0x40, 0x1B, 0x00, 0x28, 0x00, 0xDC, 0xB8, 0xE0, 0x16, 0x48, 0x24, 0x18
	.byte 0x13, 0x1B, 0x80, 0x22, 0x52, 0x01, 0xD1, 0x1A, 0x49, 0x1B, 0xC8, 0x0F, 0x09, 0x18, 0x49, 0x10
	.byte 0x69, 0x18, 0xC9, 0x19, 0x70, 0x8E, 0x40, 0x08, 0x09, 0x18, 0x8A, 0x46, 0x0C, 0x4F, 0x39, 0x40
	.byte 0x8A, 0x46, 0x52, 0x1B, 0xD2, 0x1A, 0xD0, 0x0F, 0x12, 0x18, 0x52, 0x10, 0x9B, 0x18, 0x1B, 0x19
	.byte 0xDB, 0x19, 0xF0, 0x8E, 0xC0, 0x18, 0x38, 0x40, 0x81, 0x46, 0x03, 0x21, 0x12, 0x91, 0xB2, 0x78
	.byte 0x11, 0x09, 0x01, 0x20, 0x01, 0x43, 0x09, 0x01, 0x60, 0x46, 0x8D, 0xE0, 0xFF, 0x0F, 0x00, 0x00
	.byte 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x0E, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0x0F, 0x23, 0x9C, 0x46
	.byte 0x60, 0x46, 0x20, 0xA9, 0x09, 0x78, 0x08, 0x40, 0x0C, 0x28, 0x35, 0xD1, 0x14, 0x9B, 0x9D, 0x42
	.byte 0x32, 0xD1, 0x0B, 0x9D, 0x61, 0x1B, 0x0A, 0x9B, 0xD0, 0x1A, 0x09, 0x1A, 0x00, 0x29, 0x76, 0xDD
	.byte 0x13, 0x4D, 0x64, 0x19, 0xDB, 0x1B, 0x0B, 0x98, 0x02, 0x1B, 0x99, 0x1A, 0xC8, 0x0F, 0x09, 0x18
	.byte 0x49, 0x10, 0x51, 0x18, 0xC9, 0x19, 0x70, 0x8E, 0x40, 0x08, 0x09, 0x1A, 0x8A, 0x46, 0x0D, 0x4D
	.byte 0x29, 0x40, 0x8A, 0x46, 0xD2, 0x1A, 0xD0, 0x0F, 0x12, 0x18, 0x52, 0x10, 0x9B, 0x18, 0x1B, 0x19
	.byte 0x5B, 0x19, 0xF7, 0x8E, 0xFF, 0x18, 0x38, 0x1C, 0x28, 0x40, 0x81, 0x46, 0x03, 0x21, 0x12, 0x91
	.byte 0xB2, 0x78, 0x11, 0x09, 0x01, 0x20, 0x01, 0x43, 0x09, 0x01, 0x60, 0x46, 0x4C, 0xE0, 0x00, 0x00
	.byte 0x00, 0xF0, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0x43, 0x46, 0x18, 0x78, 0x78, 0x21, 0x01, 0x40
	.byte 0x30, 0x29, 0x44, 0xD0, 0x38, 0x29, 0x42, 0xD0, 0x10, 0x99, 0x18, 0x68, 0x00, 0x03, 0x00, 0x0F
	.byte 0x09, 0x28, 0x16, 0xD0, 0x09, 0x28, 0x02, 0xD8, 0x08, 0x28, 0x05, 0xD0, 0x11, 0xE0, 0x0A, 0x28
	.byte 0x08, 0xD0, 0x0B, 0x28, 0x0A, 0xD0, 0x0C, 0xE0, 0x01, 0x4D, 0x64, 0x19, 0x0B, 0xE0, 0x00, 0x00
	.byte 0x00, 0xF8, 0xFF, 0xFF, 0x80, 0x20, 0x00, 0x01, 0x3F, 0x18, 0x04, 0xE0, 0x17, 0x49, 0x52, 0x18
	.byte 0x01, 0x21, 0x00, 0x29, 0x23, 0xD0, 0x06, 0x9B, 0x9F, 0x42, 0x02, 0xDA, 0x09, 0x9D, 0xAA, 0x42
	.byte 0x05, 0xDC, 0x05, 0x98, 0x82, 0x42, 0x1A, 0xDD, 0x0A, 0x99, 0x8F, 0x42, 0x17, 0xDA, 0x07, 0x9A
	.byte 0x94, 0x42, 0x14, 0xDC, 0x0B, 0x9B, 0x9C, 0x42, 0x11, 0xDD, 0x0D, 0x4D, 0x60, 0x19, 0xF7, 0x8E
	.byte 0x3F, 0x18, 0xB9, 0x46, 0x02, 0x20, 0x12, 0x99, 0x01, 0x43, 0x12, 0x91, 0xB2, 0x78, 0x11, 0x09
	.byte 0x01, 0x20, 0x01, 0x43, 0x09, 0x01, 0x0F, 0x20, 0x10, 0x40, 0x08, 0x43, 0xB0, 0x70, 0x1F, 0x9D
	.byte 0x14, 0x9A, 0x95, 0x42, 0x00, 0xDC, 0xDF, 0xE6, 0x00, 0xF0, 0x52, 0xFD, 0x00, 0xF8, 0xFF, 0xFF
	.byte 0x00, 0xFF, 0xFF, 0xFF, 0x05, 0x99, 0x00, 0x29, 0x01, 0xDA, 0x4E, 0x4B, 0xC9, 0x18, 0x0D, 0x13
	.byte 0x4D, 0x49, 0x08, 0x9C, 0x60, 0x18, 0x00, 0x28, 0x01, 0xDA, 0x4C, 0x4F, 0xE0, 0x19, 0x00, 0x13
	.byte 0x10, 0x9A, 0x80, 0x18, 0x15, 0x90, 0x06, 0x9B, 0x58, 0x18, 0x00, 0x28, 0x01, 0xDA, 0x47, 0x4C
	.byte 0x18, 0x19, 0x00, 0x13, 0x16, 0x90, 0x85, 0x42, 0x01, 0xDD, 0x00, 0xF0, 0x31, 0xFD, 0x03, 0xA8
	.byte 0x00, 0x90, 0x04, 0xA8, 0x01, 0x90, 0x30, 0x1C, 0x29, 0x1C, 0x15, 0x9A, 0x02, 0xAB, 0x00, 0xF0
	.byte 0x0D, 0xFE, 0x80, 0x46, 0x10, 0x9F, 0x00, 0x2F, 0x10, 0xD0, 0x02, 0x99, 0x30, 0x6A, 0x81, 0x42
	.byte 0x09, 0xDD, 0x0D, 0x98, 0x81, 0x42, 0x06, 0xDD, 0x15, 0x99, 0x08, 0x03, 0x0C, 0x9A, 0x90, 0x42
	.byte 0x01, 0xDA, 0x00, 0xF0, 0xCD, 0xFC, 0x10, 0x9B, 0x00, 0x2B, 0x08, 0xD1, 0x44, 0x46, 0x20, 0x68
	.byte 0x00, 0x03, 0x00, 0x0F, 0x6F, 0x1C, 0x1B, 0x97, 0x07, 0x28, 0x00, 0xD8, 0xE0, 0xE0, 0x03, 0x9A
	.byte 0x68, 0x1C, 0x1B, 0x90, 0x00, 0x2A, 0x00, 0xDA, 0xDA, 0xE0, 0x0E, 0x99, 0x8A, 0x42, 0x00, 0xDB
	.byte 0xD6, 0xE0, 0x04, 0x9B, 0x0D, 0x9C, 0xA3, 0x42, 0x00, 0xDC, 0xD1, 0xE0, 0x31, 0x6A, 0x70, 0x6A
	.byte 0x08, 0x18, 0xB7, 0x8E, 0xC0, 0x19, 0x82, 0x42, 0x00, 0xDB, 0xC9, 0xE0, 0x8B, 0x42, 0x00, 0xDC
	.byte 0xC6, 0xE0, 0x2C, 0x03, 0x1B, 0x98, 0x02, 0x03, 0x15, 0x99, 0x09, 0x03, 0x8C, 0x46, 0x43, 0x46
	.byte 0x98, 0x78, 0x0F, 0x27, 0x07, 0x40, 0x20, 0xA9, 0x08, 0x70, 0x0F, 0x2F, 0x38, 0xD1, 0x05, 0x98
	.byte 0x00, 0x28, 0x01, 0xDA, 0x17, 0x4B, 0xC0, 0x18, 0x00, 0x13, 0x85, 0x42, 0x30, 0xD1, 0x0C, 0x9D
	.byte 0x60, 0x46, 0x2A, 0x1A, 0x09, 0x99, 0x0D, 0x1B, 0x53, 0x1B, 0x00, 0x2B, 0x00, 0xDC, 0xA7, 0xE0
	.byte 0xA9, 0x1A, 0xC8, 0x0F, 0x09, 0x18, 0x49, 0x10, 0x51, 0x18, 0x09, 0x19, 0x70, 0x8E, 0x40, 0x08
	.byte 0x09, 0x18, 0x8A, 0x46, 0x52, 0x46, 0x0C, 0x4C, 0x22, 0x40, 0x92, 0x46, 0xD8, 0x0F, 0x18, 0x18
	.byte 0x40, 0x10, 0x28, 0x18, 0x60, 0x44, 0x24, 0x18, 0x07, 0x4D, 0x2C, 0x40, 0xA1, 0x46, 0x03, 0x20
	.byte 0x12, 0x90, 0xB2, 0x78, 0x11, 0x09, 0x04, 0x20, 0x01, 0x43, 0x09, 0x01, 0x17, 0x40, 0x0F, 0x43
	.byte 0xB7, 0x70, 0x85, 0xE0, 0xFF, 0x0F, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x0E, 0x00, 0x00
	.byte 0x0F, 0x27, 0x38, 0x1C, 0x20, 0xA9, 0x09, 0x78, 0x08, 0x40, 0x0D, 0x28, 0x34, 0xD1, 0x16, 0x9B
	.byte 0x9D, 0x42, 0x31, 0xD1, 0x0C, 0x98, 0x61, 0x46, 0x45, 0x1A, 0x0A, 0x9B, 0xD0, 0x1A, 0x28, 0x1A
	.byte 0x00, 0x28, 0x6D, 0xDD, 0x1B, 0x1B, 0x80, 0x22, 0x52, 0x01, 0x51, 0x1B, 0xC9, 0x1A, 0xC8, 0x0F
	.byte 0x09, 0x18, 0x49, 0x10, 0x59, 0x18, 0x09, 0x19, 0x70, 0x8E, 0x40, 0x08, 0x09, 0x1A, 0x8A, 0x46
	.byte 0x54, 0x46, 0x0C, 0x48, 0x04, 0x40, 0xA2, 0x46, 0xD2, 0x1A, 0x52, 0x1B, 0xD0, 0x0F, 0x12, 0x18
	.byte 0x52, 0x10, 0xAA, 0x18, 0x62, 0x44, 0x07, 0x49, 0x89, 0x18, 0x06, 0x4A, 0x11, 0x40, 0x89, 0x46
	.byte 0x03, 0x23, 0x12, 0x93, 0xB2, 0x78, 0x11, 0x09, 0x04, 0x20, 0x01, 0x43, 0x09, 0x01, 0x38, 0x1C
	.byte 0x43, 0xE0, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x45, 0x46, 0x28, 0x78, 0x78, 0x21, 0x01, 0x40
	.byte 0x30, 0x29, 0x3D, 0xD0, 0x38, 0x29, 0x3B, 0xD0, 0x10, 0x99, 0x28, 0x68, 0x00, 0x03, 0x00, 0x0F
	.byte 0x09, 0x28, 0x06, 0xD0, 0x09, 0x28, 0x0F, 0xD9, 0x0A, 0x28, 0x06, 0xD0, 0x0B, 0x28, 0x08, 0xD0
	.byte 0x0A, 0xE0, 0x80, 0x27, 0x3F, 0x01, 0xBC, 0x44, 0x08, 0xE0, 0x80, 0x20, 0x00, 0x01, 0x24, 0x18
	.byte 0x04, 0xE0, 0x17, 0x49, 0x52, 0x18, 0x01, 0x21, 0x00, 0x29, 0x21, 0xD0, 0x06, 0x9B, 0x9C, 0x42
	.byte 0x02, 0xDA, 0x09, 0x9D, 0xAA, 0x42, 0x05, 0xDC, 0x05, 0x9F, 0xBA, 0x42, 0x18, 0xDD, 0x0A, 0x98
	.byte 0x84, 0x42, 0x15, 0xDA, 0x08, 0x99, 0x8C, 0x45, 0x12, 0xDB, 0x0C, 0x9A, 0x94, 0x45, 0x0F, 0xDA
	.byte 0x0C, 0x4B, 0x63, 0x44, 0x99, 0x46, 0x02, 0x20, 0x12, 0x9C, 0x04, 0x43, 0x12, 0x94, 0xB2, 0x78
	.byte 0x11, 0x09, 0x04, 0x20, 0x01, 0x43, 0x09, 0x01, 0x0F, 0x20, 0x10, 0x40, 0x08, 0x43, 0xB0, 0x70
	.byte 0x1B, 0x9D, 0x16, 0x9F, 0xBD, 0x42, 0x00, 0xDC, 0xF1, 0xE6, 0x00, 0xF0, 0x21, 0xFC, 0x00, 0x00
	.byte 0x00, 0xF8, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0x05, 0x98, 0x00, 0x28, 0x01, 0xDA, 0x4F, 0x49
	.byte 0x40, 0x18, 0x00, 0x13, 0x10, 0x9A, 0x80, 0x1A, 0x17, 0x90, 0x07, 0x9A, 0x00, 0x2A, 0x01, 0xDA
	.byte 0x4A, 0x4B, 0xD2, 0x18, 0x15, 0x13, 0x4A, 0x49, 0x08, 0x9C, 0x60, 0x18, 0x00, 0x28, 0x01, 0xDA
	.byte 0x48, 0x4F, 0xE0, 0x19, 0x00, 0x13, 0x18, 0x90, 0x85, 0x42, 0x01, 0xDD, 0x00, 0xF0, 0x00, 0xFC
	.byte 0x03, 0xA8, 0x00, 0x90, 0x04, 0xA8, 0x01, 0x90, 0x30, 0x1C, 0x17, 0x99, 0x2A, 0x1C, 0x02, 0xAB
	.byte 0x00, 0xF0, 0xDC, 0xFC, 0x80, 0x46, 0x10, 0x98, 0x00, 0x28, 0x10, 0xD0, 0x02, 0x99, 0x30, 0x6A
	.byte 0x81, 0x42, 0x09, 0xDD, 0x0D, 0x9A, 0x91, 0x42, 0x06, 0xDD, 0x17, 0x98, 0x01, 0x30, 0x01, 0x03
	.byte 0x09, 0x9B, 0x99, 0x42, 0x00, 0xDD, 0xA5, 0xE3, 0x10, 0x9C, 0x00, 0x2C, 0x08, 0xD1, 0x47, 0x46
	.byte 0x38, 0x68, 0x00, 0x03, 0x00, 0x0F, 0x69, 0x1C, 0x1C, 0x91, 0x07, 0x28, 0x00, 0xD8, 0xE9, 0xE0
	.byte 0x03, 0x9A, 0x6B, 0x1C, 0x1C, 0x93, 0x00, 0x2A, 0x00, 0xDA, 0xE3, 0xE0, 0x0E, 0x9C, 0xA2, 0x42
	.byte 0x00, 0xDB, 0xDF, 0xE0, 0x04, 0x9B, 0x0D, 0x9F, 0xBB, 0x42, 0x00, 0xDC, 0xDA, 0xE0, 0x31, 0x6A
	.byte 0x70, 0x6A, 0x08, 0x18, 0xB4, 0x8E, 0x00, 0x19, 0x82, 0x42, 0x00, 0xDB, 0xD2, 0xE0, 0x8B, 0x42
	.byte 0x00, 0xDC, 0xCF, 0xE0, 0x2F, 0x03, 0xBC, 0x46, 0x1C, 0x98, 0x02, 0x03, 0x17, 0x98, 0x01, 0x30
	.byte 0x04, 0x03, 0x43, 0x46, 0x99, 0x78, 0x0F, 0x20, 0x08, 0x40, 0x0E, 0x28, 0x3E, 0xD1, 0x07, 0x98
	.byte 0x00, 0x28, 0x01, 0xDA, 0x19, 0x4F, 0xC0, 0x19, 0x00, 0x13, 0x85, 0x42, 0x36, 0xD1, 0x09, 0x99
	.byte 0x60, 0x1A, 0x0B, 0x9A, 0x63, 0x46, 0xD5, 0x1A, 0x40, 0x1B, 0x00, 0x28, 0x00, 0xDC, 0xB1, 0xE0
	.byte 0x15, 0x4F, 0xE4, 0x19, 0x0B, 0x1B, 0x80, 0x22, 0x52, 0x01, 0x51, 0x1B, 0xC9, 0x1A, 0xC8, 0x0F
	.byte 0x09, 0x18, 0x49, 0x10, 0x59, 0x18, 0x70, 0x8E, 0x40, 0x08, 0x09, 0x18, 0x09, 0x19, 0x8A, 0x46
	.byte 0x50, 0x46, 0x0B, 0x49, 0x08, 0x40, 0x82, 0x46, 0xD2, 0x1A, 0x52, 0x1B, 0xD0, 0x0F, 0x12, 0x18
	.byte 0x52, 0x10, 0xAA, 0x18, 0x52, 0x18, 0xF3, 0x8E, 0xD2, 0x18, 0x62, 0x44, 0x91, 0x46, 0x4C, 0x46
	.byte 0x0C, 0x40, 0xA1, 0x46, 0x03, 0x25, 0x12, 0x95, 0x83, 0xE0, 0x00, 0x00, 0xFF, 0x0F, 0x00, 0x00
	.byte 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x0E, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0x0F, 0x27, 0x0F, 0x40
	.byte 0x0F, 0x2F, 0x35, 0xD1, 0x18, 0x98, 0x85, 0x42, 0x32, 0xD1, 0x09, 0x9B, 0xE1, 0x1A, 0x0C, 0x9D
	.byte 0x50, 0x1B, 0x09, 0x1A, 0x00, 0x29, 0x75, 0xDD, 0x13, 0x48, 0x24, 0x18, 0x1B, 0x1B, 0x61, 0x46
	.byte 0x6A, 0x1A, 0x99, 0x1A, 0xC8, 0x0F, 0x09, 0x18, 0x49, 0x10, 0x51, 0x18, 0x09, 0x19, 0x70, 0x8E
	.byte 0x40, 0x08, 0x09, 0x18, 0x8A, 0x46, 0x54, 0x46, 0x0C, 0x4D, 0x2C, 0x40, 0xA2, 0x46, 0xD2, 0x1A
	.byte 0xD0, 0x0F, 0x12, 0x18, 0x52, 0x10, 0x9B, 0x18, 0x63, 0x44, 0xED, 0x18, 0x07, 0x48, 0x05, 0x40
	.byte 0xA9, 0x46, 0x03, 0x21, 0x12, 0x91, 0xB2, 0x78, 0x11, 0x09, 0x08, 0x20, 0x01, 0x43, 0x09, 0x01
	.byte 0x17, 0x40, 0x0F, 0x43, 0xB7, 0x70, 0x4D, 0xE0, 0x00, 0xF0, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF
	.byte 0x43, 0x46, 0x18, 0x78, 0x78, 0x21, 0x01, 0x40, 0x30, 0x29, 0x43, 0xD0, 0x38, 0x29, 0x41, 0xD0
	.byte 0x10, 0x99, 0x18, 0x68, 0x00, 0x03, 0x00, 0x0F, 0x09, 0x28, 0x0F, 0xD0, 0x09, 0x28, 0x02, 0xD8
	.byte 0x08, 0x28, 0x05, 0xD0, 0x11, 0xE0, 0x0A, 0x28, 0x0F, 0xD0, 0x0B, 0x28, 0x0A, 0xD0, 0x0C, 0xE0
	.byte 0x01, 0x4D, 0x52, 0x19, 0x0B, 0xE0, 0x00, 0x00, 0x00, 0xF8, 0xFF, 0xFF, 0x80, 0x27, 0x3F, 0x01
	.byte 0xBC, 0x44, 0x04, 0xE0, 0x16, 0x48, 0x24, 0x18, 0x01, 0x21, 0x00, 0x29, 0x22, 0xD0, 0x08, 0x99
	.byte 0x8C, 0x45, 0x02, 0xDA, 0x0B, 0x9B, 0x9A, 0x42, 0x05, 0xDC, 0x07, 0x9D, 0xAA, 0x42, 0x19, 0xDD
	.byte 0x0C, 0x9F, 0xBC, 0x45, 0x16, 0xDA, 0x05, 0x98, 0x84, 0x42, 0x13, 0xDC, 0x09, 0x99, 0x8C, 0x42
	.byte 0x10, 0xDD, 0x70, 0x8E, 0x40, 0x08, 0x24, 0x18, 0xA2, 0x46, 0x01, 0x20, 0x12, 0x9A, 0x02, 0x43
	.byte 0x12, 0x92, 0xB2, 0x78, 0x11, 0x09, 0x08, 0x20, 0x01, 0x43, 0x09, 0x01, 0x0F, 0x20, 0x10, 0x40
	.byte 0x08, 0x43, 0xB0, 0x70, 0x1C, 0x9D, 0x18, 0x9B, 0x9D, 0x42, 0x00, 0xDC, 0xE8, 0xE6, 0xE7, 0xE2
	.byte 0x00, 0xF8, 0xFF, 0xFF, 0x4E, 0x49, 0x06, 0x9C, 0x60, 0x18, 0x00, 0x28, 0x01, 0xDA, 0x4D, 0x4D
	.byte 0x60, 0x19, 0x00, 0x13, 0x10, 0x9F, 0xC0, 0x19, 0x19, 0x90, 0x07, 0x9A, 0x00, 0x2A, 0x01, 0xDA
	.byte 0x49, 0x48, 0x12, 0x18, 0x15, 0x13, 0x08, 0x9A, 0x50, 0x18, 0x00, 0x28, 0x01, 0xDA, 0x45, 0x4B
	.byte 0xD0, 0x18, 0x00, 0x13, 0x1A, 0x90, 0x85, 0x42, 0x00, 0xDD, 0xC9, 0xE2, 0x03, 0xA8, 0x00, 0x90
	.byte 0x04, 0xA8, 0x01, 0x90, 0x30, 0x1C, 0x19, 0x99, 0x2A, 0x1C, 0x02, 0xAB, 0x00, 0xF0, 0xA6, 0xFB
	.byte 0x80, 0x46, 0x10, 0x9C, 0x00, 0x2C, 0x0F, 0xD0, 0x02, 0x99, 0x30, 0x6A, 0x81, 0x42, 0x08, 0xDD
	.byte 0x0D, 0x9F, 0xB9, 0x42, 0x05, 0xDD, 0x19, 0x98, 0x01, 0x03, 0x0A, 0x9A, 0x91, 0x42, 0x00, 0xDA
	.byte 0x7C, 0xE2, 0x10, 0x9B, 0x00, 0x2B, 0x08, 0xD1, 0x44, 0x46, 0x20, 0x68, 0x00, 0x03, 0x00, 0x0F
	.byte 0x6F, 0x1C, 0x1D, 0x97, 0x07, 0x28, 0x00, 0xD8, 0xE3, 0xE0, 0x03, 0x9A, 0x68, 0x1C, 0x1D, 0x90
	.byte 0x00, 0x2A, 0x00, 0xDA, 0xDD, 0xE0, 0x0E, 0x99, 0x8A, 0x42, 0x00, 0xDB, 0xD9, 0xE0, 0x04, 0x9B
	.byte 0x0D, 0x9C, 0xA3, 0x42, 0x00, 0xDC, 0xD4, 0xE0, 0x31, 0x6A, 0x70, 0x6A, 0x08, 0x18, 0xB7, 0x8E
	.byte 0xC0, 0x19, 0x82, 0x42, 0x00, 0xDB, 0xCC, 0xE0, 0x8B, 0x42, 0x00, 0xDC, 0xC9, 0xE0, 0x2F, 0x03
	.byte 0x1D, 0x98, 0x02, 0x03, 0x19, 0x99, 0x0C, 0x03, 0x43, 0x46, 0x99, 0x78, 0x0F, 0x20, 0x84, 0x46
	.byte 0x08, 0x40, 0x20, 0xAB, 0x19, 0x70, 0x0C, 0x28, 0x38, 0xD1, 0x07, 0x98, 0x00, 0x28, 0x01, 0xDA
	.byte 0x19, 0x49, 0x40, 0x18, 0x00, 0x13, 0x85, 0x42, 0x30, 0xD1, 0x0A, 0x9A, 0x13, 0x1B, 0x0B, 0x9D
	.byte 0xEA, 0x1B, 0x98, 0x1A, 0x00, 0x28, 0x00, 0xDC, 0xAB, 0xE0, 0xC1, 0x0F, 0x41, 0x18, 0x49, 0x10
	.byte 0x51, 0x18, 0x09, 0x19, 0x70, 0x8E, 0x40, 0x08, 0x09, 0x1A, 0x8A, 0x46, 0x50, 0x46, 0x0C, 0x49
	.byte 0x08, 0x40, 0x82, 0x46, 0xD0, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x18, 0x18, 0xC0, 0x19
	.byte 0x07, 0x4A, 0x80, 0x18, 0xF3, 0x8E, 0x1B, 0x18, 0x13, 0x40, 0x99, 0x46, 0x03, 0x24, 0x12, 0x94
	.byte 0xB2, 0x78, 0x11, 0x09, 0x02, 0x20, 0x01, 0x43, 0x09, 0x01, 0x60, 0x46, 0x86, 0xE0, 0x00, 0x00
	.byte 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x0E, 0x00, 0x00, 0xFF, 0x0F, 0x00, 0x00, 0x0F, 0x20, 0x84, 0x46
	.byte 0x20, 0xA9, 0x09, 0x78, 0x08, 0x40, 0x0D, 0x28, 0x32, 0xD1, 0x1A, 0x9B, 0x9D, 0x42, 0x2F, 0xD1
	.byte 0x0A, 0x98, 0x05, 0x1B, 0x0C, 0x99, 0x50, 0x1A, 0x28, 0x1A, 0x00, 0x28, 0x71, 0xDD, 0xCB, 0x1B
	.byte 0x80, 0x22, 0x52, 0x01, 0xD1, 0x1A, 0x49, 0x1B, 0xC8, 0x0F, 0x09, 0x18, 0x49, 0x10, 0x69, 0x18
	.byte 0x09, 0x19, 0x70, 0x8E, 0x40, 0x08, 0x09, 0x1A, 0x8A, 0x46, 0x54, 0x46, 0x0B, 0x48, 0x04, 0x40
	.byte 0xA2, 0x46, 0x52, 0x1B, 0xD2, 0x1A, 0xD0, 0x0F, 0x12, 0x18, 0x52, 0x10, 0x9B, 0x18, 0xDB, 0x19
	.byte 0x06, 0x49, 0xC9, 0x18, 0x05, 0x4A, 0x11, 0x40, 0x89, 0x46, 0x03, 0x23, 0x12, 0x93, 0xB2, 0x78
	.byte 0x11, 0x09, 0x02, 0x20, 0x01, 0x43, 0x09, 0x01, 0x60, 0x46, 0x47, 0xE0, 0x00, 0xFF, 0xFF, 0xFF
	.byte 0x45, 0x46, 0x28, 0x78, 0x78, 0x21, 0x01, 0x40, 0x30, 0x29, 0x42, 0xD0, 0x38, 0x29, 0x40, 0xD0
	.byte 0x10, 0x99, 0x28, 0x68, 0x00, 0x03, 0x00, 0x0F, 0x09, 0x28, 0x0D, 0xD0, 0x09, 0x28, 0x02, 0xD8
	.byte 0x08, 0x28, 0x03, 0xD0, 0x10, 0xE0, 0x0A, 0x28, 0x0A, 0xD0, 0x0D, 0xE0, 0x01, 0x48, 0x12, 0x18
	.byte 0x0C, 0xE0, 0x00, 0x00, 0x00, 0xF8, 0xFF, 0xFF, 0x80, 0x21, 0x09, 0x01, 0x7F, 0x18, 0x05, 0xE0
	.byte 0x80, 0x23, 0x1B, 0x01, 0xE4, 0x18, 0x01, 0x21, 0x00, 0x29, 0x22, 0xD0, 0x08, 0x9D, 0xAF, 0x42
	.byte 0x02, 0xDA, 0x0B, 0x98, 0x82, 0x42, 0x05, 0xDC, 0x07, 0x99, 0x8A, 0x42, 0x19, 0xDD, 0x0C, 0x9A
	.byte 0x97, 0x42, 0x16, 0xDA, 0x06, 0x9B, 0x9C, 0x42, 0x13, 0xDB, 0x0A, 0x9D, 0xAC, 0x42, 0x10, 0xDA
	.byte 0x70, 0x8E, 0x40, 0x08, 0x24, 0x1A, 0xA2, 0x46, 0x01, 0x20, 0x12, 0x9F, 0x07, 0x43, 0x12, 0x97
	.byte 0xB2, 0x78, 0x11, 0x09, 0x02, 0x20, 0x01, 0x43, 0x09, 0x01, 0x0F, 0x20, 0x10, 0x40, 0x08, 0x43
	.byte 0xB0, 0x70, 0x1D, 0x9D, 0x1A, 0x98, 0x85, 0x42, 0x00, 0xDC, 0xEF, 0xE6, 0xB8, 0xE1, 0x05, 0x98
	.byte 0x00, 0x28, 0x01, 0xDA, 0x18, 0x49, 0x40, 0x18, 0x00, 0x13, 0x41, 0x1E, 0x07, 0x9A, 0x00, 0x2A
	.byte 0x01, 0xDA, 0x15, 0x4B, 0xD2, 0x18, 0x12, 0x13, 0x54, 0x1E, 0x00, 0x03, 0x09, 0x9D, 0xA8, 0x42
	.byte 0x00, 0xDC, 0xA5, 0xE1, 0x15, 0x03, 0x0B, 0x9F, 0xBD, 0x42, 0x00, 0xDC, 0xA0, 0xE1, 0x03, 0xA8
	.byte 0x00, 0x90, 0x04, 0xA8, 0x01, 0x90, 0x30, 0x1C, 0x22, 0x1C, 0x02, 0xAB, 0x00, 0xF0, 0x7E, 0xFA
	.byte 0x02, 0x99, 0x30, 0x6A, 0x81, 0x42, 0x13, 0xDD, 0x0D, 0x98, 0x81, 0x42, 0x10, 0xDD, 0x07, 0x49
	.byte 0x68, 0x18, 0xF2, 0x8E, 0x12, 0x18, 0x91, 0x46, 0x02, 0x20, 0x12, 0x9B, 0x03, 0x43, 0x12, 0x93
	.byte 0xB2, 0x78, 0x11, 0x09, 0x01, 0x20, 0x7D, 0xE1, 0xFF, 0x0F, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF
	.byte 0x03, 0x9A, 0x00, 0x2A, 0x00, 0xDA, 0x7B, 0xE1, 0x31, 0x6A, 0x70, 0x6A, 0x08, 0x18, 0xB5, 0x8E
	.byte 0x40, 0x19, 0x82, 0x42, 0x00, 0xDB, 0x73, 0xE1, 0x04, 0x98, 0x88, 0x42, 0x00, 0xDC, 0x6F, 0xE1
	.byte 0x0E, 0x9F, 0xBA, 0x42, 0x00, 0xDB, 0x6B, 0xE1, 0x0D, 0x99, 0x88, 0x42, 0x00, 0xDC, 0x67, 0xE1
	.byte 0x60, 0x1C, 0x00, 0x03, 0x0B, 0x9A, 0x90, 0x42, 0x00, 0xDC, 0x61, 0xE1, 0x06, 0x4B, 0xC0, 0x18
	.byte 0xF4, 0x8E, 0x24, 0x18, 0xA1, 0x46, 0x02, 0x20, 0x12, 0x9D, 0x05, 0x43, 0x12, 0x95, 0xB2, 0x78
	.byte 0x11, 0x09, 0x01, 0x20, 0x4E, 0xE1, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x1A, 0x4F, 0x06, 0x99
	.byte 0xC8, 0x19, 0x00, 0x28, 0x01, 0xDA, 0x19, 0x4A, 0x88, 0x18, 0x00, 0x13, 0x41, 0x1C, 0x07, 0x98
	.byte 0x00, 0x28, 0x01, 0xDA, 0x16, 0x4B, 0xC0, 0x18, 0x02, 0x13, 0x54, 0x1E, 0x08, 0x03, 0x0A, 0x9D
	.byte 0xA8, 0x42, 0x00, 0xDB, 0x3C, 0xE1, 0x15, 0x03, 0x0B, 0x98, 0x85, 0x42, 0x00, 0xDC, 0x37, 0xE1
	.byte 0x03, 0xA8, 0x00, 0x90, 0x04, 0xA8, 0x01, 0x90, 0x30, 0x1C, 0x22, 0x1C, 0x02, 0xAB, 0x00, 0xF0
	.byte 0x15, 0xFA, 0x02, 0x99, 0x30, 0x6A, 0x81, 0x42, 0x14, 0xDD, 0x0D, 0x9A, 0x91, 0x42, 0x11, 0xDD
	.byte 0xE8, 0x19, 0xF3, 0x8E, 0x1B, 0x18, 0x99, 0x46, 0x02, 0x20, 0x12, 0x9C, 0x04, 0x43, 0x12, 0x94
	.byte 0xB2, 0x78, 0x11, 0x09, 0x01, 0x20, 0x15, 0xE1, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x0E, 0x00, 0x00
	.byte 0xFF, 0x0F, 0x00, 0x00, 0x03, 0x9A, 0x00, 0x2A, 0x00, 0xDA, 0x11, 0xE1, 0x31, 0x6A, 0x70, 0x6A
	.byte 0x08, 0x18, 0xB5, 0x8E, 0x40, 0x19, 0x82, 0x42, 0x00, 0xDB, 0x09, 0xE1, 0x04, 0x98, 0x88, 0x42
	.byte 0x00, 0xDC, 0x05, 0xE1, 0x0E, 0x9F, 0xBA, 0x42, 0x00, 0xDB, 0x01, 0xE1, 0x0D, 0x99, 0x88, 0x42
	.byte 0x00, 0xDC, 0xFD, 0xE0, 0x60, 0x1C, 0x00, 0x03, 0x0B, 0x9A, 0x90, 0x42, 0x00, 0xDC, 0xF7, 0xE0
	.byte 0x06, 0x4B, 0xC0, 0x18, 0xF4, 0x8E, 0x24, 0x18, 0xA1, 0x46, 0x02, 0x20, 0x12, 0x9D, 0x05, 0x43
	.byte 0x12, 0x95, 0xB2, 0x78, 0x11, 0x09, 0x01, 0x20, 0xE4, 0xE0, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF
	.byte 0x05, 0x98, 0x00, 0x28, 0x01, 0xDA, 0x16, 0x4F, 0xC0, 0x19, 0x03, 0x13, 0x59, 0x1E, 0x15, 0x4C
	.byte 0x08, 0x9A, 0x10, 0x19, 0x00, 0x28, 0x01, 0xDA, 0x13, 0x4D, 0x50, 0x19, 0x00, 0x13, 0x42, 0x1C
	.byte 0x18, 0x03, 0x09, 0x9F, 0xB8, 0x42, 0x00, 0xDC, 0xD2, 0xE0, 0x15, 0x03, 0x0C, 0x98, 0x85, 0x42
	.byte 0x00, 0xDB, 0xCD, 0xE0, 0x03, 0xA8, 0x00, 0x90, 0x04, 0xA8, 0x01, 0x90, 0x30, 0x1C, 0x02, 0xAB
	.byte 0x00, 0xF0, 0xAC, 0xF9, 0x02, 0x99, 0x30, 0x6A, 0x81, 0x42, 0x0F, 0xDD, 0x0D, 0x9A, 0x91, 0x42
	.byte 0x0C, 0xDD, 0x2D, 0x19, 0xA9, 0x46, 0x02, 0x20, 0x12, 0x9B, 0x03, 0x43, 0x12, 0x93, 0xAE, 0xE0
	.byte 0xFF, 0x0F, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x0E, 0x00, 0x00, 0x03, 0x9A, 0x00, 0x2A
	.byte 0x00, 0xDA, 0xAD, 0xE0, 0x31, 0x6A, 0x70, 0x6A, 0x08, 0x18, 0xB4, 0x8E, 0x00, 0x19, 0x82, 0x42
	.byte 0x00, 0xDB, 0xA5, 0xE0, 0x04, 0x98, 0x88, 0x42, 0x00, 0xDC, 0xA1, 0xE0, 0x0E, 0x9F, 0xBA, 0x42
	.byte 0x00, 0xDB, 0x9D, 0xE0, 0x0D, 0x99, 0x88, 0x42, 0x00, 0xDC, 0x99, 0xE0, 0x0C, 0x9A, 0x95, 0x42
	.byte 0x00, 0xDB, 0x95, 0xE0, 0x03, 0x4B, 0x5B, 0x19, 0x99, 0x46, 0x02, 0x20, 0x12, 0x9C, 0x04, 0x43
	.byte 0x12, 0x94, 0x84, 0xE0, 0x00, 0xFF, 0xFF, 0xFF, 0x17, 0x4C, 0x06, 0x9D, 0x28, 0x19, 0x00, 0x28
	.byte 0x01, 0xDA, 0x16, 0x4F, 0xE8, 0x19, 0x00, 0x13, 0x41, 0x1C, 0x08, 0x9A, 0x10, 0x19, 0x00, 0x28
	.byte 0x01, 0xDA, 0x12, 0x4B, 0xD0, 0x18, 0x00, 0x13, 0x42, 0x1C, 0x08, 0x03, 0x0A, 0x9D, 0xA8, 0x42
	.byte 0x76, 0xDA, 0x15, 0x03, 0x0C, 0x9F, 0xBD, 0x42, 0x72, 0xDA, 0x03, 0xA8, 0x00, 0x90, 0x04, 0xA8
	.byte 0x01, 0x90, 0x30, 0x1C, 0x02, 0xAB, 0x00, 0xF0, 0x51, 0xF9, 0x02, 0x99, 0x30, 0x6A, 0x81, 0x42
	.byte 0x40, 0xDD, 0x0D, 0x98, 0x81, 0x42, 0x3D, 0xDD, 0x2D, 0x19, 0xA9, 0x46, 0x02, 0x20, 0x12, 0x99
	.byte 0x01, 0x43, 0x12, 0x91, 0x53, 0xE0, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x0E, 0x00, 0x00
	.byte 0x06, 0x4A, 0x80, 0x18, 0xF3, 0x8E, 0x1B, 0x18, 0x99, 0x46, 0x02, 0x20, 0x12, 0x9C, 0x04, 0x43
	.byte 0x12, 0x94, 0xB2, 0x78, 0x11, 0x09, 0x01, 0x20, 0x44, 0xE0, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF
	.byte 0x03, 0x4D, 0x2D, 0x18, 0xA9, 0x46, 0x02, 0x20, 0x12, 0x9F, 0x07, 0x43, 0x12, 0x97, 0x36, 0xE0
	.byte 0x00, 0xFF, 0xFF, 0xFF, 0x70, 0x8E, 0x40, 0x08, 0x09, 0x18, 0x8A, 0x46, 0x01, 0x20, 0x12, 0x99
	.byte 0x01, 0x43, 0x12, 0x91, 0xB2, 0x78, 0x11, 0x09, 0x08, 0x20, 0x2B, 0xE0, 0x70, 0x8E, 0x40, 0x08
	.byte 0x09, 0x1A, 0x8A, 0x46, 0x01, 0x20, 0x12, 0x9A, 0x02, 0x43, 0x12, 0x92, 0xB2, 0x78, 0x11, 0x09
	.byte 0x02, 0x20, 0x1F, 0xE0, 0x03, 0x9A, 0x00, 0x2A, 0x22, 0xDB, 0x31, 0x6A, 0x70, 0x6A, 0x08, 0x18
	.byte 0xB3, 0x8E, 0xC0, 0x18, 0x82, 0x42, 0x1B, 0xDA, 0x04, 0x98, 0x88, 0x42, 0x18, 0xDD, 0x0E, 0x9C
	.byte 0xA2, 0x42, 0x15, 0xDA, 0x0D, 0x9F, 0xB8, 0x42, 0x12, 0xDD, 0x0C, 0x98, 0x85, 0x42, 0x0F, 0xDA
	.byte 0x2E, 0x49, 0x49, 0x19, 0x89, 0x46, 0x02, 0x20, 0x12, 0x9A, 0x02, 0x43, 0x12, 0x92, 0xB2, 0x78
	.byte 0x11, 0x09, 0x04, 0x20, 0x01, 0x43, 0x09, 0x01, 0x0F, 0x20, 0x10, 0x40, 0x08, 0x43, 0xB0, 0x70
_0804F864:
	.byte 0x01, 0x20, 0x12, 0x9B, 0x18, 0x40, 0x00, 0x28, 0x07, 0xD0, 0x54, 0x46, 0xB4, 0x60, 0x71, 0x8E
	.byte 0x48, 0x08, 0x24, 0x1A, 0x09, 0x94, 0x61, 0x18, 0x0A, 0x91, 0x02, 0x20, 0x12, 0x9D, 0x05, 0x40
	.byte 0x00, 0x2D, 0x09, 0xD0, 0x4F, 0x46, 0xF7, 0x60, 0x80, 0x21, 0x49, 0x00, 0x49, 0x44, 0xF0, 0x8E
	.byte 0x09, 0x1A, 0x0B, 0x91, 0x08, 0x18, 0x0C, 0x90, 0x11, 0x98, 0x00, 0x21, 0x41, 0x56, 0x01, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x18, 0xD0, 0xB1, 0x68, 0x8A, 0x46, 0xF2, 0x68, 0x91, 0x46, 0x00, 0x23
	.byte 0x12, 0x93, 0x11, 0x9C, 0x00, 0x22, 0xA2, 0x56, 0x01, 0x34, 0x11, 0x94, 0x03, 0x2A, 0x01, 0xDC
	.byte 0xFF, 0xF7, 0x22, 0xF9, 0x10, 0x9D, 0x00, 0x2D, 0x06, 0xD0
_0804F8CE:
	.byte 0xB1, 0x78, 0xF0, 0x20, 0x08, 0x40, 0x00, 0x28, 0x01, 0xD1, 0xFF, 0xF7, 0x18, 0xF9
_0804F8DC:
	.byte 0x1E, 0x9F, 0x10, 0x97, 0x38, 0x1C, 0x01, 0x28, 0x01, 0xDC, 0xFF, 0xF7, 0xF3, 0xF8
_0804F8EA:
	.byte 0xB0, 0x78, 0x00, 0x09, 0x21, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF
	thumb_func_start sub_804F904
sub_804F904:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	ldr r1, [r7, #0x08]
	ldr r0, [r7, #0x18]
	cmp r1, r0
	bne _0804F932
	ldr r1, [r7, #0x0C]
	ldr r0, [r7, #0x1C]
	cmp r1, r0
	bne _0804F932
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x20]
	cmp r1, r0
	bne _0804F932
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x24]
	cmp r1, r0
	beq _0804FA1E
_0804F932:
	ldr r0, _0804F9D0 @ =0x00FFFFFF
	mov r10, r0
	movs r1, #0x00
	mov r9, r1
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x14]
	adds r1, r1, r0
	str r1, [sp, #0x01C]
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x08]
	ldr r2, [r7, #0x0C]
	add r3, sp, #0x014
	mov r8, r3
	str r3, [sp, #0x000]
	add r6, sp, #0x018
	str r6, [sp, #0x004]
	add r5, sp, #0x008
	movs r3, #0x01
	strb r3, [r5, #0x00]
	add r4, sp, #0x00C
	strb r3, [r4, #0x00]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	mov r12, r6
	adds r6, r4, #0x0
	cmp r0, #0x00
	blt _0804F972
	lsls r0, r1, #0x0C
	lsrs r0, r0, #0x1C
_0804F972:
	ldr r4, [sp, #0x010]
	ldr r0, [sp, #0x018]
	cmp r9, r0
	bge _0804F97C
	mov r9, r0
_0804F97C:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x08]
	ldr r2, _0804F9D4 @ =0xFFFFFF00
	adds r1, r1, r2
	ldrh r2, [r7, #0x32]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x0C]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r2, r3
	ldrh r3, [r7, #0x36]
	subs r2, r2, r3
	mov r3, r8
	str r3, [sp, #0x000]
	mov r3, r12
	str r3, [sp, #0x004]
	movs r3, #0x00
	strb r3, [r5, #0x00]
	movs r3, #0x01
	strb r3, [r6, #0x00]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	blt _0804F9B8
	cmp r10, r0
	ble _0804F9B8
	mov r10, r0
_0804F9B8:
	ldr r0, _0804F9D0 @ =0x00FFFFFF
	ldr r0, [sp, #0x01C]
	movs r1, #0x00
	mov r2, r9
	cmp r2, #0x00
	ble _0804F9DE
	cmp r4, r9
	blt _0804F9D8
	cmp r4, r0
	ble _0804F9DE
	b _0804F9E2
	.byte 0x00, 0x00
_0804F9D0: .4byte 0x00FFFFFF
_0804F9D4: .4byte 0xFFFFFF00
_0804F9D8:
	cmp r9, r0
	bgt _0804F9DE
	movs r1, #0x01
_0804F9DE:
	cmp r1, #0x00
	beq _0804F9FC
_0804F9E2:
	mov r3, r9
	subs r0, r0, r3
	str r0, [r7, #0x14]
	cmp r0, #0x00
	bge _0804F9F0
	movs r0, #0x00
	str r0, [r7, #0x14]
_0804F9F0:
	mov r0, r9
	str r0, [r7, #0x10]
	ldrb r0, [r7, #0x01]
	movs r1, #0x40
	orrs r0, r1
	b _0804FA1C
_0804F9FC:
	subs r0, r0, r4
	str r0, [r7, #0x14]
	cmp r0, #0x00
	bge _0804FA06
	str r1, [r7, #0x14]
_0804FA06:
	str r4, [r7, #0x10]
	ldr r0, [r7, #0x14]
	adds r0, r4, r0
	cmp r0, #0x00
	bge _0804FA14
	str r1, [r7, #0x14]
	str r1, [r7, #0x10]
_0804FA14:
	ldrb r1, [r7, #0x01]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
_0804FA1C:
	strb r0, [r7, #0x01]
_0804FA1E:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_804FA30
sub_804FA30:
	push {r4, r5, r6, lr}
	adds r4, r3, #0x0
	ldr r5, [sp, #0x010]
	ldr r6, [sp, #0x014]
	ldr r0, [r0, #0x40]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl get_coldef_ptr_by_xz
	adds r3, r0, #0x0
	ldr r1, [r3, #0x00]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1C
	lsls r2, r0, #0x0B
	lsrs r1, r1, #0x1F
	lsls r2, r1
	str r2, [r4, #0x00]
	ldrb r1, [r3, #0x02]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	beq _0804FA82
	ldr r0, [r3, #0x00]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x1C
	lsls r1, r1, #0x0B
	lsrs r0, r0, #0x1F
	lsls r1, r0
	adds r1, r2, r1
	str r1, [r5, #0x00]
	ldr r2, [r3, #0x00]
	lsls r0, r2, #0x08
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0B
	lsrs r2, r2, #0x1F
	lsls r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x00]
	b _0804FA8A
_0804FA82:
	movs r0, #0x01
	negs r0, r0
	str r0, [r6, #0x00]
	str r0, [r5, #0x00]
_0804FA8A:
	adds r0, r3, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_804FA94
sub_804FA94:
	push {r4, lr}
	adds r3, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r2, [r3, #0x44]
	ldr r1, [r3, #0x08]
	cmp r1, #0x00
	bge _0804FAAA
	adds r1, #0xFF
_0804FAAA:
	asrs r1, r1, #0x08
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x00]
	ldr r2, [r3, #0x44]
	ldr r0, [r3, #0x0C]
	ldr r1, [r3, #0x10]
	subs r0, r0, r1
	ldr r1, [r3, #0x14]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0804FAC6
	adds r0, #0xFF
_0804FAC6:
	asrs r0, r0, #0x08
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r2, #0x02]
	ldr r4, [r3, #0x44]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1C
	lsls r2, r0, #0x0C
	ldr r0, [r3, #0x0C]
	cmp r0, #0x00
	bge _0804FAE2
	adds r0, #0xFF
_0804FAE2:
	asrs r1, r0, #0x08
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	subs r0, r0, r1
	orrs r2, r0
	strh r2, [r4, #0x0E]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_804FAF8
sub_804FAF8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x44]
	bl sub_8020D40
	ldrb r1, [r4, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_804FB14
sub_804FB14:
	ldr r1, [r0, #0x08]
	str r1, [r0, #0x18]
	ldr r1, [r0, #0x0C]
	str r1, [r0, #0x1C]
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x24]
	bx lr
	.byte 0x00, 0x00
	thumb_func_start __11FieldClass1i
__11FieldClass1i:
	movs r2, #0x07
	ands r1, r2
	ldrb r3, [r0, #0x00]
	movs r2, #0x08
	negs r2, r2
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_804FB3C
sub_804FB3C:
	push {lr}
	ldr r2, [r0, #0x20]
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x03
	beq _0804FB54
	ldrb r1, [r2, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x03
	bne _0804FB5C
_0804FB54:
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	b _0804FB60
_0804FB5C:
	movs r0, #0x01
	negs r0, r0
_0804FB60:
	pop {r1}
	bx r1
	thumb_func_start sub_804FB64
sub_804FB64:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r1, r2, #0x0
	adds r2, r3, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_804B360
	movs r4, #0x00
	movs r0, #0x8E
	lsls r0, r0, #0x02
	adds r3, r5, r0
	movs r1, #0x00
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804FBBE
	adds r0, r1, #0x0
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	movs r6, #0x9D
	lsls r6, r6, #0x02
	adds r2, r4, r6
	adds r0, r0, r1
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	ldr r1, [r5, #0x14]
	cmp r1, r0
	blt _0804FBBE
	adds r1, r5, #0x0
	adds r1, #0x29
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strb r0, [r5, #0x01]
	strb r0, [r3, #0x00]
	movs r4, #0x00
_0804FBBE:
	ldr r3, [r5, #0x14]
	cmp r4, #0x00
	beq _0804FBD2
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	adds r3, r3, r0
_0804FBD2:
	str r3, [r5, #0x1C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_804FBDC
sub_804FBDC:
	push {r4, lr}
	adds r3, r0, #0x0
	movs r4, #0x00
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrh r2, [r0, #0x00]
	ldr r1, _0804FC28 @ =0x00000801
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, r1
	bne _0804FC20
	ldr r1, _0804FC2C @ =0x0000035A
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0804FC20
	movs r0, #0xD2
	lsls r0, r0, #0x02
	adds r1, r3, r0
	ldr r0, [r3, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xD3
	lsls r0, r0, #0x02
	adds r1, r3, r0
	ldr r0, [r3, #0x10]
	str r0, [r1, #0x00]
	adds r0, r3, #0x0
	bl method13__11FieldObject
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0804FC20:
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
_0804FC28: .4byte 0x00000801
_0804FC2C: .4byte 0x0000035A
	thumb_func_start sub_804FC30
sub_804FC30:
	push {lr}
	adds r3, r0, #0x0
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0804FC80
	ldr r1, _0804FC84 @ =0x000002B5
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	bne _0804FC80
	ldr r2, _0804FC88 @ =0x083A0A38
	ldrb r1, [r3, #0x02]
	lsrs r1, r1, #0x05
	lsls r1, r1, #0x02
	adds r0, r3, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	ldr r0, _0804FC8C @ =0x00000353
	adds r3, r3, r0
	movs r0, #0x03
	ands r1, r0
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0804FC80:
	pop {r0}
	bx r0
_0804FC84: .4byte 0x000002B5
_0804FC88: .4byte 0x083A0A38
_0804FC8C: .4byte 0x00000353
	thumb_func_start sub_804FC90
sub_804FC90:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0xDA
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldr r2, [r3, #0x00]
	movs r1, #0x13
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804FCCA
	ldrb r0, [r2, #0x01]
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldr r1, _0804FCD0 @ =0x00000352
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x07
	movs r0, #0x01
	eors r1, r0
	adds r0, r2, #0x0
	adds r0, #0x10
	adds r0, r0, r1
	ldrb r1, [r2, #0x13]
	strb r1, [r0, #0x00]
	ldr r1, [r3, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x13]
_0804FCCA:
	pop {r4}
	pop {r0}
	bx r0
_0804FCD0: .4byte 0x00000352
	thumb_func_start sub_804FCD4
sub_804FCD4:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0804FD14
	ldr r1, _0804FD0C @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _0804FD10 @ =0x00001001
	cmp r0, #0x00
	beq _0804FD16
	adds r1, #0x27
	b _0804FD16
	.byte 0x00, 0x00
_0804FD0C: .4byte 0x0000035B
_0804FD10: .4byte 0x00001001
_0804FD14:
	ldr r1, _0804FD34 @ =0x00001002
_0804FD16:
	adds r0, r4, #0x0
	bl sub_8049000
	movs r0, #0x00
	strh r0, [r4, #0x04]
	ldr r0, _0804FD38 @ =0x00000212
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0804FD34: .4byte 0x00001002
_0804FD38: .4byte 0x00000212
	thumb_func_start sub_804FD3C
sub_804FD3C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r5, #0x04
	orrs r0, r5
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	ldr r1, _0804FD78 @ =0x00001053
	cmp r0, #0x00
	bne _0804FD62
	subs r1, #0x15
_0804FD62:
	adds r0, r4, #0x0
	bl sub_8049000
	ldr r0, _0804FD7C @ =0x0000035A
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0804FD78: .4byte 0x00001053
_0804FD7C: .4byte 0x0000035A
	thumb_func_start sub_804FD80
sub_804FD80:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r5, r0, #0x1D
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r6, r0, #0x1D
	ldrh r1, [r4, #0x04]
	subs r0, r1, #0x5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x04
	bhi _0804FDB2
	adds r0, r4, #0x0
	bl sub_804FCD4
	b _0804FDC4
_0804FDB2:
	adds r0, r1, #0x0
	subs r0, #0x0A
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x02
	bhi _0804FDC4
	adds r0, r4, #0x0
	bl sub_80494D4
_0804FDC4:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	orrs r5, r0
	strb r5, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r0, [r2, #0x00]
	ands r1, r0
	orrs r1, r6
	strb r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_8047804__11FieldObjectUc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_804FDF4
sub_804FDF4:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r5, r0, #0x1D
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r6, r0, #0x1D
	ldrh r1, [r4, #0x04]
	subs r0, r1, #0x5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x04
	bhi _0804FE26
	adds r0, r4, #0x0
	bl sub_804FCD4
	b _0804FE38
_0804FE26:
	adds r0, r1, #0x0
	subs r0, #0x0A
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x02
	bhi _0804FE38
	adds r0, r4, #0x0
	bl sub_80494D4
_0804FE38:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	orrs r5, r0
	strb r5, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r0, [r2, #0x00]
	ands r1, r0
	orrs r1, r6
	strb r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_8047858__11FieldObjectUc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
