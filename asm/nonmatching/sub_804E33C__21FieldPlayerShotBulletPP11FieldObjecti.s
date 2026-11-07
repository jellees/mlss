	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804E33C__21FieldPlayerShotBulletPP11FieldObjecti
sub_804E33C__21FieldPlayerShotBulletPP11FieldObjecti:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldrb r3, [r4, #0x00]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	beq _0804E448
	ldr r2, [r4, #0x44]
	adds r1, r2, #0x0
	adds r1, #0x21
	ldrb r0, [r1, #0x00]
	cmp r0, #0x04
	bls _0804E370
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804E448
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	strb r0, [r4, #0x00]
	b _0804E448
_0804E370:
	movs r0, #0x38
	ands r0, r3
	cmp r0, #0x20
	bne _0804E396
	ldrb r1, [r1, #0x00]
	adds r1, #0x05
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_804E6E0__21FieldPlayerShotBulletPP11FieldObjecti
	b _0804E448
_0804E396:
	movs r0, #0x2A
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	movs r0, #0x2C
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x2E]
	adds r0, r0, r1
	strh r0, [r4, #0x2E]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #0x30]
	cmp r0, r1
	bls _0804E3C4
	adds r0, r4, #0x0
	bl sub_804FAF8__21FieldPlayerShotBullet
	b _0804E448
_0804E3C4:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_804E6E0__21FieldPlayerShotBulletPP11FieldObjecti
	adds r0, r4, #0x0
	bl sub_804EA68__21FieldPlayerShotBullet
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0804E3E4
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	beq _0804E442
_0804E3E4:
	ldr r0, [r4, #0x44]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	adds r1, #0x05
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	adds r1, r4, #0x0
	adds r1, #0x3E
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	beq _0804E432
	adds r3, r0, #0x0
	ldr r1, [r4, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	blt _0804E41E
_0804E412:
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	subs r3, r3, r0
	cmp r3, r0
	bge _0804E412
_0804E41E:
	ldr r0, [r4, #0x44]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_801E150
_0804E432:
	ldr r2, [r4, #0x44]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
_0804E442:
	adds r0, r4, #0x0
	bl sub_804F904__21FieldPlayerShotBullet
_0804E448:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
