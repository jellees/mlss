	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_8027378__12FieldManager
sub_8027378__12FieldManager:
	push {lr}
	adds r3, r0, #0x0
	adds r1, r3, #0x0
	adds r1, #0xFC
	ldrb r1, [r1, #0x00]
	lsls r2, r1, #0x19
	lsrs r1, r2, #0x1C
	cmp r1, #0x02
	bhi _080273A4
	movs r1, #0xC5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _080273A0
	movs r1, #0x01
_080273A0:
	adds r0, r1, #0x0
	b _080273DE
_080273A4:
	lsrs r1, r2, #0x1C
	subs r1, #0x03
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x02
	bhi _080273C2
	movs r1, #0xFE
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _080273DE
	movs r0, #0x01
	b _080273DE
_080273C2:
	lsrs r1, r2, #0x1C
	subs r1, #0x06
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x01
	bhi _080273DE
	movs r1, #0xC6
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	bl exists__7ProcessP7Process
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080273DE:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
