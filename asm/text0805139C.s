	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start __20FieldObjectSubclass2ii
__20FieldObjectSubclass2ii:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	bl __11FieldObjectii
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, _0805141C @ =0x08CDC108
	str r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r6, #0x41
	negs r6, r6
	ands r0, r6
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08051420 @ =0x0000020D
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	movs r3, #0x02
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	subs r1, #0x06
	ands r0, r1
	subs r1, #0x08
	ands r0, r1
	ands r0, r6
	strb r0, [r5, #0x00]
	ldr r0, [r2, #0x00]
	ldr r1, _08051424 @ =0xFFFC7FFF
	ands r0, r1
	str r0, [r2, #0x00]
	ldr r0, _08051428 @ =0x0000020E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0805142C @ =0x0000020F
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	ands r3, r0
	strb r3, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	ldr r1, _08051430 @ =0xFFFE1FFF
	ands r0, r1
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0805141C: .4byte 0x08CDC108
_08051420: .4byte 0x0000020D
_08051424: .4byte 0xFFFC7FFF
_08051428: .4byte 0x0000020E
_0805142C: .4byte 0x0000020F
_08051430: .4byte 0xFFFE1FFF
	thumb_func_start sub_8051434
sub_8051434:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, _08051480 @ =0x0000020F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0805147A
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldr r3, [r1, #0x00]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _08051456
	adds r0, #0xFF
_08051456:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	ldr r3, [r1, #0x00]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08051464
	adds r0, #0xFF
_08051464:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x02]
	ldr r1, [r1, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0F
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0C
	strh r0, [r1, #0x0E]
_0805147A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051480: .4byte 0x0000020F
	thumb_func_start sub_8051484
sub_8051484:
	push {r4, lr}
	adds r4, r0, #0x0
	bl method2__11FieldObjectPUsT1Pv
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x1F]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	thumb_func_start nullsub_20
nullsub_20: @ 080514B0
	bx lr
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	thumb_func_start nullsub_19
nullsub_19: @ 080514B8
	bx lr
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	thumb_func_start nullsub_18
nullsub_18: @ 080514C0
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_80514C4
sub_80514C4:
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r6, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x98
	lsls r2, r2, #0x01
	adds r1, r6, r2
	adds r1, r1, r0
	ldrh r4, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r5, r5, r0
	movs r3, #0x00
	ldsh r2, [r5, r3]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_813A5C8
	ldr r0, _08051530 @ =0x00000242
	adds r3, r6, r0
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08051534
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08051536
	.byte 0x00, 0x00
_08051530: .4byte 0x00000242
_08051534:
	movs r0, #0xFF
_08051536:
	strb r0, [r6, #0x02]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08051558 @ =0x0805155D
	str r0, [r7, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051558: .4byte sub_805155C
	thumb_func_start sub_805155C
sub_805155C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139F08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08051594
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
	b _080515CC
_08051594:
	cmp r6, #0x00
	bne _080515CC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r5, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r5, r1
	strh r6, [r0, #0x00]
	adds r2, #0x70
	adds r0, r5, r2
	strh r6, [r0, #0x00]
	ldr r0, _080515D4 @ =0x0813B1E9
	str r0, [r7, #0x00]
	ldr r0, _080515D8 @ =0x080514C5
	str r0, [r7, #0x0C]
_080515CC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080515D4: .4byte sub_813B1E8
_080515D8: .4byte sub_80514C4
	thumb_func_start sub_80515DC
sub_80515DC:
	push {r4, lr}
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08051600 @ =0x08051615
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08051604 @ =0x080514C5
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08051600: .4byte sub_8051614
_08051604: .4byte sub_80514C4
	thumb_func_start sub_8051608
sub_8051608:
	push {lr}
	bl sub_80515DC
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8051614
sub_8051614:
	push {lr}
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r2, r1, r3
	ldr r3, [r2, #0x00]
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
