	thumb_func_start sub_8056224
sub_8056224:
	push {r4, r5, r6, r7, lr}
	ldr r2, _0805629C @ =0x03000DA0
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x00]
	subs r0, #0x40
	str r0, [r1, #0x00]
	ldr r0, [r1, #0x04]
	subs r0, #0x80
	str r0, [r1, #0x04]
	ldr r0, [r1, #0x08]
	subs r0, #0x40
	str r0, [r1, #0x08]
	ldr r0, [r1, #0x0C]
	subs r0, #0x20
	str r0, [r1, #0x0C]
	movs r6, #0x00
	adds r4, r1, #0x0
	adds r4, #0x14
	movs r5, #0x00
	ldr r7, _080562A0 @ =0x083A74E4
_0805624C:
	ldr r0, [r2, #0x00]
	lsls r1, r5, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805625A
	adds r0, #0xFF
_0805625A:
	lsls r0, r0, #0x08
	lsrs r1, r0, #0x10
	adds r0, r5, r7
	ldrb r3, [r0, #0x00]
	adds r5, #0x01
	cmp r6, r3
	bhi _08056276
_08056268:
	strh r1, [r4, #0x00]
	adds r0, r6, #0x1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r4, #0x02
	cmp r6, r3
	bls _08056268
_08056276:
	cmp r5, #0x04
	ble _0805624C
	ldr r4, _080562A4 @ =0x04000014
	ldr r1, [r2, #0x00]
	ldrh r0, [r1, #0x14]
	strh r0, [r4, #0x00]
	ldr r2, _080562A8 @ =0x040000B0
	ldr r3, _080562AC @ =0x040000BA
	movs r0, #0x00
	strh r0, [r3, #0x00]
	adds r1, #0x16
	str r1, [r2, #0x00]
	str r4, [r2, #0x04]
	ldr r0, _080562B0 @ =0xA2400001
	str r0, [r2, #0x08]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805629C: .4byte 0x03000DA0
_080562A0: .4byte 0x083A74E4
_080562A4: .4byte 0x04000014
_080562A8: .4byte 0x040000B0
_080562AC: .4byte 0x040000BA
_080562B0: .4byte 0xA2400001
