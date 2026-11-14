	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start oam_nodes_link
oam_nodes_link:
	push {r4, r5, r6, lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	movs r4, #0x00
	cmp r3, #0x00
	beq _080208D0
	movs r6, #0x01
	movs r5, #0x01
	negs r5, r5
	negs r1, r3
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0802089A
	cmp r1, #0x03
	bge _08020884
	cmp r1, #0x02
	bge _08020872
	strh r6, [r2, #0x06]
	str r5, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x14
	str r0, [r2, #0x10]
	adds r4, r2, #0x0
	subs r3, #0x01
	adds r2, r0, #0x0
_08020872:
	strh r6, [r2, #0x06]
	str r5, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x14
	str r0, [r2, #0x10]
	adds r4, r2, #0x0
	subs r3, #0x01
	adds r2, r0, #0x0
_08020884:
	strh r6, [r2, #0x06]
	str r5, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x14
	str r0, [r2, #0x10]
	adds r4, r2, #0x0
	subs r3, #0x01
	adds r2, r0, #0x0
	cmp r3, #0x00
	beq _080208D0
_0802089A:
	strh r6, [r2, #0x06]
	str r5, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x14
	str r0, [r2, #0x10]
	strh r6, [r0, #0x06]
	str r5, [r0, #0x08]
	str r2, [r0, #0x0C]
	adds r1, r2, #0x0
	adds r1, #0x28
	str r1, [r0, #0x10]
	strh r6, [r1, #0x06]
	str r5, [r1, #0x08]
	str r0, [r1, #0x0C]
	adds r0, #0x28
	str r0, [r1, #0x10]
	strh r6, [r0, #0x06]
	str r5, [r0, #0x08]
	str r1, [r0, #0x0C]
	adds r1, #0x28
	str r1, [r0, #0x10]
	adds r4, r0, #0x0
	subs r3, #0x04
	adds r2, r1, #0x0
	cmp r3, #0x00
	bne _0802089A
_080208D0:
	adds r1, r2, #0x0
	subs r1, #0x14
	movs r0, #0x00
	str r0, [r1, #0x10]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
