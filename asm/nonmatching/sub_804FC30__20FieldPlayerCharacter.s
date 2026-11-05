	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804FC30__20FieldPlayerCharacter
sub_804FC30__20FieldPlayerCharacter:
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
