	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_80213A0
sub_80213A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0x0
	adds r4, r2, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r10, r3
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080213C6
	asrs r0, r1, #0x0C
	subs r6, r0, #0x1
	ldr r0, _08021444 @ =0x00000FFF
	ands r1, r0
_080213C6:
	ldr r0, _08021448 @ =0x0839EE60
	lsls r2, r6, #0x02
	adds r0, r2, r0
	lsls r1, r1, #0x02
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _08021494
	lsls r1, r0, #0x05
	lsrs r1, r1, #0x17
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x17
	mov r8, r0
	ldr r0, _0802144C @ =0x0839EE8C
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	ldr r0, _08021450 @ =0x0839EEB8
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	mov r2, r8
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	mov r9, r1
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _08021424
	ldrb r1, [r3, #0x04]
	ldrb r2, [r3, #0x05]
	movs r0, #0x01
	ands r0, r2
	lsls r0, r0, #0x08
	orrs r1, r0
	adds r5, r1, #0x1
	mov r0, r9
	bl sub_80198B0
	lsrs r4, r0, #0x05
	cmp r4, r5
	bge _08021424
	adds r4, r5, #0x0
_08021424:
	lsls r4, r4, #0x05
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	mov r6, r8
	movs r0, #0x02
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sprite_heap_search
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _08021454
	mov r0, r10
	cmp r0, #0x00
	bne _0802148A
	b _08021494
_08021444: .4byte 0x00000FFF
_08021448: .4byte 0x0839EE60
_0802144C: .4byte 0x0839EE8C
_08021450: .4byte 0x0839EEB8
_08021454:
	adds r4, #0x10
	movs r0, #0x02
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	adds r3, r6, #0x0
	bl sprite_heap_alloc
	adds r5, r0, #0x0
	ldr r0, _08021490 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
	movs r0, #0x01
	str r0, [r5, #0x00]
	mov r2, r9
	str r2, [r5, #0x04]
	adds r0, r5, #0x0
	adds r0, #0x10
	str r0, [r5, #0x08]
	movs r0, #0x00
	str r0, [r5, #0x0C]
	adds r0, r5, #0x0
	bl sub_8019808
_0802148A:
	adds r0, r5, #0x0
	b _08021496
	.byte 0x00, 0x00
_08021490: .4byte 0x03001034
_08021494:
	movs r0, #0x00
_08021496:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
