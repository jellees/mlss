	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8127E50
sub_8127E50:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	adds r4, r2, #0x0
	bl sub_80198B0
	adds r5, r0, #0x0
	cmp r4, #0x00
	beq _08127E84
	ldr r2, _08127E7C @ =0x08210F64
	movs r0, #0x01
	adds r1, r5, #0x0
	bl alloc_heap_8018CEC
	adds r7, r0, #0x0
	ldr r0, _08127E80 @ =0x03000C84
	ldr r2, [r0, #0x00]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl _call_via_r2
	b _08127EBC
_08127E7C: .4byte 0x08210F64
_08127E80: .4byte 0x03000C84
_08127E84:
	ldr r2, _08127EC4 @ =0x08210F64
	movs r0, #0x01
	adds r1, r5, #0x0
	bl alloc_heap_8018CEC
	adds r4, r0, #0x0
	ldr r0, _08127EC8 @ =0x03000C84
	ldr r2, [r0, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	adds r2, r5, #0x0
	cmp r5, #0x00
	bge _08127EA4
	adds r2, r5, #0x3
_08127EA4:
	lsls r2, r2, #0x09
	lsrs r2, r2, #0x0B
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl CpuSet
	adds r0, r4, #0x0
	bl free_heap_memory_8018C68
_08127EBC:
	adds r0, r5, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08127EC4: .4byte 0x08210F64
_08127EC8: .4byte 0x03000C84
	thumb_func_start sub_8127ECC
sub_8127ECC:
	push {r4, lr}
	adds r4, r1, #0x0
	lsls r3, r0, #0x02
	ldr r2, _08127EF4 @ =0x08A57994
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	adds r1, r0, r2
	cmp r4, #0x00
	beq _08127EEA
	adds r0, r2, #0x4
	adds r0, r3, r0
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	subs r0, r0, r1
	str r0, [r4, #0x00]
_08127EEA:
	adds r0, r1, #0x0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08127EF4: .4byte 0x08A57994
