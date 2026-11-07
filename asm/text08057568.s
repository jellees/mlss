	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8057568
sub_8057568:
	push {r4, r5, lr}
	bl sub_81251DC
	adds r2, r0, #0x0
	ldr r0, [r2, #0x00]
	ldrb r4, [r2, #0x04]
	movs r3, #0x00
	ldr r5, _080575B8 @ =0x0203FFF8
	ldr r1, [r5, #0x00]
	cmp r1, r0
	bls _08057582
	movs r3, #0x01
	str r1, [r2, #0x00]
_08057582:
	ldrb r0, [r5, #0x04]
	cmp r0, r4
	bls _0805758C
	movs r3, #0x01
	strb r0, [r2, #0x04]
_0805758C:
	cmp r3, #0x00
	beq _080575C0
	adds r0, r2, #0x0
	movs r1, #0x00
	bl sub_8124740
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _080575B2
	bl sub_81251DC
	ldr r2, _080575BC @ =0x00004E20
	str r2, [r0, #0x00]
	movs r1, #0x03
	strb r1, [r0, #0x04]
	str r2, [r5, #0x00]
	ldrb r0, [r0, #0x04]
	strb r0, [r5, #0x04]
_080575B2:
	adds r0, r4, #0x0
	b _080575C2
	.byte 0x00, 0x00
_080575B8: .4byte 0x0203FFF8
_080575BC: .4byte 0x00004E20
_080575C0:
	movs r0, #0x01
_080575C2:
	pop {r4, r5}
	pop {r1}
	bx r1
