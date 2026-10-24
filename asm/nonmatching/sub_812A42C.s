	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_812A42C
sub_812A42C:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r0, #0xB8
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r0, #0x07
	bls _0812A43C
	b _0812A790
_0812A43C:
	lsls r0, r0, #0x02
	ldr r1, _0812A448 @ =0x0812A44C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0812A448: .4byte _0812A44C
_0812A44C: @ jump table
	.4byte _0812A46C @ case 1
	.4byte _0812A4D4 @ case 2
	.4byte _0812A592 @ case 3
	.4byte _0812A5AA @ case 4
	.4byte _0812A5CC @ case 5
	.4byte _0812A602 @ case 6
	.4byte _0812A68E @ case 7
	.4byte _0812A77A @ case 8
_0812A46C:
	ldr r1, [r3, #0x3C]
	ldrh r2, [r1, #0x02]
	movs r4, #0x02
	ldsh r0, [r1, r4]
	cmp r0, #0x88
	ble _0812A488
	subs r0, r2, #0x4
	strh r0, [r1, #0x02]
	ldr r0, [r3, #0x3C]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r0, #0x88
	ble _0812A488
	b _0812A790
_0812A488:
	adds r0, r3, #0x0
	adds r0, #0xB0
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812A4A4
	adds r1, r3, #0x0
	adds r1, #0xB8
	movs r0, #0x02
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x3C]
	movs r0, #0x88
	strh r0, [r1, #0x02]
	ldr r2, [r3, #0x3C]
	b _0812A5F8
_0812A4A4:
	adds r1, r3, #0x0
	adds r1, #0xB7
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0x03
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x3C]
	movs r0, #0xC0
	strh r0, [r1, #0x02]
	ldr r2, [r3, #0x3C]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r3, #0x44]
	ldr r0, [r3, #0x3C]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x44]
	movs r0, #0x88
	strh r0, [r1, #0x02]
	ldr r2, [r3, #0x44]
	b _0812A5F8
_0812A4D4:
	ldr r2, [r3, #0x3C]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	movs r4, #0xB5
	adds r4, r4, r3
	mov r12, r4
	ldrb r0, [r4, #0x00]
	adds r0, #0x28
	cmp r1, r0
	bge _0812A51C
	ldrh r0, [r2, #0x00]
	adds r0, #0x01
	strh r0, [r2, #0x00]
	ldr r3, [r3, #0x3C]
	movs r5, #0x00
	ldsh r1, [r3, r5]
	ldrb r0, [r4, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x20
	cmp r1, r2
	bge _0812A50C
	ldr r1, _0812A508 @ =0x02000040
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x08
	b _0812A510
	.byte 0x00, 0x00
_0812A508: .4byte 0x02000040
_0812A50C:
	ldr r1, _0812A518 @ =0x02000040
	lsls r0, r2, #0x08
_0812A510:
	orrs r0, r2
	strh r0, [r1, #0x00]
	b _0812A790
	.byte 0x00, 0x00
_0812A518: .4byte 0x02000040
_0812A51C:
	adds r1, r3, #0x0
	adds r1, #0xB7
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x3C]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	adds r0, #0x28
	strh r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xA4
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812A562
	adds r1, r3, #0x0
	adds r1, #0xB8
	movs r0, #0x03
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x3C]
	movs r0, #0xC0
	strh r0, [r1, #0x02]
	ldr r2, [r3, #0x3C]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r3, #0x44]
	ldr r0, [r3, #0x3C]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x44]
	movs r0, #0x88
	strh r0, [r1, #0x02]
	ldr r2, [r3, #0x44]
	b _0812A5F8
_0812A562:
	ldr r1, [r3, #0x3C]
	movs r0, #0xC0
	strh r0, [r1, #0x02]
	ldr r1, [r3, #0x3C]
	ldrb r0, [r1, #0x12]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x12]
	ldr r1, [r3, #0x44]
	ldr r0, [r3, #0x3C]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x44]
	movs r0, #0x88
	strh r0, [r1, #0x02]
	ldr r1, [r3, #0x44]
	ldrb r0, [r1, #0x12]
	orrs r0, r2
	strb r0, [r1, #0x12]
	adds r1, r3, #0x0
	adds r1, #0xB8
	movs r0, #0x04
	strb r0, [r1, #0x00]
	b _0812A790
_0812A592:
	adds r0, r3, #0x0
	adds r0, #0xA4
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812A59E
	b _0812A790
_0812A59E:
	adds r1, r3, #0x0
	adds r1, #0xB8
	movs r0, #0x04
	strb r0, [r1, #0x00]
	ldr r2, [r3, #0x44]
	b _0812A684
_0812A5AA:
	ldr r1, [r3, #0x44]
	ldrh r2, [r1, #0x02]
	movs r4, #0x02
	ldsh r0, [r1, r4]
	cmp r0, #0xBF
	bgt _0812A5BC
	adds r0, r2, #0x4
	strh r0, [r1, #0x02]
	b _0812A790
_0812A5BC:
	adds r1, r3, #0x0
	adds r1, #0xB8
	movs r0, #0x04
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x44]
	movs r0, #0xC0
	strh r0, [r1, #0x02]
	b _0812A790
_0812A5CC:
	ldr r1, [r3, #0x40]
	ldrh r2, [r1, #0x02]
	movs r5, #0x02
	ldsh r0, [r1, r5]
	cmp r0, #0x88
	ble _0812A5E8
	subs r0, r2, #0x4
	strh r0, [r1, #0x02]
	ldr r0, [r3, #0x40]
	movs r1, #0x02
	ldsh r0, [r0, r1]
	cmp r0, #0x88
	ble _0812A5E8
	b _0812A790
_0812A5E8:
	adds r1, r3, #0x0
	adds r1, #0xB8
	movs r0, #0x06
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x40]
	movs r0, #0x88
	strh r0, [r1, #0x02]
	ldr r2, [r3, #0x40]
_0812A5F8:
	ldrb r1, [r2, #0x12]
	subs r0, #0x99
	ands r0, r1
	strb r0, [r2, #0x12]
	b _0812A790
_0812A602:
	ldr r2, [r3, #0x40]
	movs r4, #0x2C
	ldsh r0, [r2, r4]
	adds r0, r3, #0x0
	adds r0, #0xB0
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812A642
	adds r4, r3, #0x0
	adds r4, #0xB6
	ldrb r0, [r4, #0x00]
	adds r0, #0x20
	movs r5, #0x00
	ldsh r1, [r2, r5]
	cmp r0, r1
	bge _0812A62C
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	b _0812A658
_0812A62C:
	cmp r1, r0
	ble _0812A632
	b _0812A790
_0812A632:
	adds r1, r3, #0x0
	adds r1, #0xB8
	movs r0, #0x07
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x40]
	ldrb r0, [r4, #0x00]
	adds r0, #0x20
	b _0812A680
_0812A642:
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0812A64C
	b _0812A790
_0812A64C:
	ldrh r1, [r2, #0x00]
	movs r4, #0x00
	ldsh r0, [r2, r4]
	cmp r0, #0x20
	ble _0812A674
	subs r0, r1, #0x1
_0812A658:
	strh r0, [r2, #0x00]
	ldr r2, _0812A670 @ =0x02000040
	ldr r0, [r3, #0x40]
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xB4
	ldrb r0, [r0, #0x00]
	adds r0, #0x20
	orrs r1, r0
	strh r1, [r2, #0x00]
	b _0812A790
_0812A670: .4byte 0x02000040
_0812A674:
	adds r1, r3, #0x0
	adds r1, #0xB8
	movs r0, #0x07
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x40]
	movs r0, #0x20
_0812A680:
	strh r0, [r1, #0x00]
	ldr r2, [r3, #0x40]
_0812A684:
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _0812A790
_0812A68E:
	ldr r1, [r3, #0x40]
	ldrh r2, [r1, #0x02]
	movs r5, #0x02
	ldsh r0, [r1, r5]
	cmp r0, #0xBF
	bgt _0812A6A8
	adds r0, r2, #0x4
	strh r0, [r1, #0x02]
	ldr r0, [r3, #0x40]
	movs r1, #0x02
	ldsh r0, [r0, r1]
	cmp r0, #0xBF
	ble _0812A790
_0812A6A8:
	ldr r1, [r3, #0x3C]
	ldr r0, [r3, #0x40]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x40]
	movs r0, #0xC0
	strh r0, [r1, #0x02]
	adds r0, r3, #0x0
	adds r0, #0xB0
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812A728
	adds r5, r3, #0x0
	adds r5, #0xB4
	adds r4, r3, #0x0
	adds r4, #0xB5
	ldrb r0, [r5, #0x00]
	ldrb r2, [r4, #0x00]
	cmp r0, r2
	bcs _0812A6FC
	ldr r2, _0812A6F4 @ =0x04000040
	adds r5, #0x02
	ldrb r0, [r5, #0x00]
	adds r0, #0x20
	lsls r0, r0, #0x08
	ldrb r1, [r4, #0x00]
	adds r1, #0x20
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0812A6F8 @ =0x02000040
	ldrb r0, [r5, #0x00]
	adds r0, #0x20
	lsls r0, r0, #0x08
	ldrb r1, [r4, #0x00]
	adds r1, #0x20
	b _0812A776
_0812A6F4: .4byte 0x04000040
_0812A6F8: .4byte 0x02000040
_0812A6FC:
	ldr r2, _0812A720 @ =0x04000040
	adds r4, r3, #0x0
	adds r4, #0xB6
	ldrb r0, [r4, #0x00]
	adds r0, #0x20
	lsls r0, r0, #0x08
	ldrb r1, [r5, #0x00]
	adds r1, #0x20
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0812A724 @ =0x02000040
	ldrb r0, [r4, #0x00]
	adds r0, #0x20
	lsls r0, r0, #0x08
	ldrb r1, [r5, #0x00]
	adds r1, #0x20
	b _0812A776
	.byte 0x00, 0x00
_0812A720: .4byte 0x04000040
_0812A724: .4byte 0x02000040
_0812A728:
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0812A77A
	adds r4, r3, #0x0
	adds r4, #0xB4
	movs r5, #0xB5
	adds r5, r5, r3
	ldrb r0, [r4, #0x00]
	ldrb r1, [r5, #0x00]
	cmp r0, r1
	bcs _0812A760
	ldr r2, _0812A758 @ =0x04000040
	ldrb r0, [r5, #0x00]
	adds r0, #0x20
	movs r4, #0x80
	lsls r4, r4, #0x06
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0812A75C @ =0x02000040
	ldrb r0, [r5, #0x00]
	b _0812A774
	.byte 0x00, 0x00
_0812A758: .4byte 0x04000040
_0812A75C: .4byte 0x02000040
_0812A760:
	ldr r2, _0812A798 @ =0x04000040
	ldrb r0, [r4, #0x00]
	adds r0, #0x20
	movs r5, #0x80
	lsls r5, r5, #0x06
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0812A79C @ =0x02000040
	ldrb r0, [r4, #0x00]
_0812A774:
	adds r0, #0x20
_0812A776:
	orrs r0, r1
	strh r0, [r2, #0x00]
_0812A77A:
	adds r0, r3, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	movs r1, #0x01
	strb r1, [r0, #0x00]
	subs r0, #0x51
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x54
	strh r2, [r0, #0x00]
_0812A790:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0812A798: .4byte 0x04000040
_0812A79C: .4byte 0x02000040
