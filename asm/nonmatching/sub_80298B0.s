	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_80298B0
sub_80298B0:
	push {r4, r5, r6, lr}
	ldr r6, _08029908 @ =0x08029911
	ldr r5, _0802990C @ =0x03000D80
	movs r4, #0x00
	adds r2, r5, #0x4
	subs r1, r5, #0x1
	subs r3, r1, r2
	movs r0, #0x0F
	ands r3, r0
	cmp r2, r1
	ble _080298DE
	cmp r3, #0x00
	beq _080298E6
	cmp r3, #0x0C
	bge _080298DE
	cmp r3, #0x08
	bge _080298DA
	cmp r3, #0x03
	ble _080298E6
	str r4, [r5, #0x04]
	adds r2, r5, #0x0
_080298DA:
	str r4, [r2, #0x00]
	subs r2, #0x04
_080298DE:
	str r4, [r2, #0x00]
	subs r2, #0x04
	cmp r2, r5
	blt _080298FA
_080298E6:
	str r4, [r2, #0x00]
	subs r0, r2, #0x4
	str r4, [r0, #0x00]
	subs r0, #0x04
	str r4, [r0, #0x00]
	subs r0, #0x04
	str r4, [r0, #0x00]
	subs r2, #0x10
	cmp r2, r5
	bge _080298E6
_080298FA:
	movs r0, #0x02
	adds r1, r6, #0x0
	bl runtime_install_interrupt_callback
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08029908: .4byte sub_8029910
_0802990C: .4byte 0x03000D80
