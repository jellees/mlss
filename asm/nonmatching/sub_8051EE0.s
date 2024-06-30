	.syntax unified
	.text
    
	thumb_func_start sub_8051EE0
sub_8051EE0:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	movs r0, #0x01
	ldsb r0, [r3, r0]
	cmp r0, #0x00
	beq _08051FA2
	ldrb r4, [r3, #0x04]
	adds r2, r0, #0x0
	adds r0, r4, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _08051EFA
	adds r0, #0x0F
_08051EFA:
	asrs r0, r0, #0x04
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r3, #0x05]
	muls r0, r2
	cmp r0, #0x00
	bge _08051F0A
	adds r0, #0x0F
_08051F0A:
	asrs r2, r0, #0x04
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r5, _08051F74 @ =0x0839EC80
	ldr r1, [r5, #0x00]
	lsrs r0, r4, #0x01
	ldrb r4, [r3, #0x02]
	adds r0, r0, r4
	adds r0, r6, r0
	adds r1, #0x40
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	ldrb r0, [r3, #0x04]
	lsrs r0, r0, #0x01
	ldrb r4, [r3, #0x02]
	adds r0, r0, r4
	subs r0, r0, r6
	adds r1, #0x41
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	ldrb r0, [r3, #0x05]
	lsrs r0, r0, #0x01
	ldrb r4, [r3, #0x03]
	adds r0, r0, r4
	adds r0, r2, r0
	adds r1, #0x44
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	ldrb r0, [r3, #0x05]
	lsrs r0, r0, #0x01
	ldrb r4, [r3, #0x03]
	adds r0, r0, r4
	subs r0, r0, r2
	adds r1, #0x45
	strb r0, [r1, #0x00]
	ldrb r0, [r3, #0x00]
	movs r4, #0x01
	ands r4, r0
	cmp r4, #0x00
	bne _08051F7E
	ldrb r1, [r3, #0x01]
	movs r0, #0x01
	ldsb r0, [r3, r0]
	cmp r0, #0x08
	bne _08051F78
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x01]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x01]
	strb r4, [r3, #0x01]
	b _08051FA2
_08051F74: .4byte 0x0839EC80
_08051F78:
	adds r0, r1, #0x1
	strb r0, [r3, #0x01]
	b _08051FA2
_08051F7E:
	ldrb r0, [r3, #0x01]
	subs r0, #0x01
	strb r0, [r3, #0x01]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08051FA2
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x01]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x01]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r1, [r2, #0x00]
	ldr r0, _08051FA8 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2, #0x00]
_08051FA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08051FA8: .4byte 0x0000FDFF
