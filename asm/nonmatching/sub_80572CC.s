
	thumb_func_start sub_80572CC
sub_80572CC:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r4, r3, #0x0
	ldr r6, [sp, #0x014]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	bl process_add
	ldr r0, _08057378 @ =0x08CDC248
	str r0, [r7, #0x18]
	adds r5, r7, #0x0
	adds r5, #0x21
	adds r0, r4, #0x0
	movs r1, #0x0A
	bl __umodsi3
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x0A
	bl __udivsi3
	adds r4, r0, #0x0
	subs r5, #0x01
	movs r1, #0x0A
	bl __umodsi3
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x0A
	bl __udivsi3
	adds r4, r0, #0x0
	movs r1, #0x0A
	bl __umodsi3
	strb r0, [r7, #0x1F]
	adds r0, r4, #0x0
	movs r1, #0x0A
	bl __udivsi3
	adds r4, r0, #0x0
	movs r1, #0x0A
	bl __umodsi3
	strb r0, [r7, #0x1E]
	adds r0, r4, #0x0
	movs r1, #0x0A
	bl __udivsi3
	adds r4, r0, #0x0
	movs r1, #0x0A
	bl __umodsi3
	strb r0, [r7, #0x1D]
	adds r0, r4, #0x0
	movs r1, #0x0A
	bl __udivsi3
	movs r1, #0x0A
	bl __umodsi3
	strb r0, [r7, #0x1C]
	adds r5, #0x02
	adds r4, r7, #0x0
	adds r4, #0x23
	adds r0, r6, #0x0
	movs r1, #0x0A
	bl __umodsi3
	strb r0, [r4, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x0A
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x0A
	bl __umodsi3
	strb r0, [r5, #0x00]
	adds r0, r7, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08057378: .4byte 0x08CDC248
