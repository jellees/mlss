	.include "asm/macros.inc"

	.syntax unified

	.section .rodata
	.align 2, 0

	.byte 0x42, 0x47, 0x42, 0x4D, 0x00, 0x00, 0x00, 0x00 @ "BGBM"
	.byte 0x50, 0x42, 0x55, 0x46, 0x00, 0x00, 0x00, 0x00 @ "PBUF"
	.byte 0x53, 0x42, 0x55, 0x46, 0x00, 0x00, 0x00, 0x00 @ "SBUF"
	.byte 0x53, 0x5A, 0x42, 0x46, 0x00, 0x00, 0x00, 0x00 @ "SZBF"

	.text
	thumb_func_start sub_803E070__12FieldManager
sub_803E070__12FieldManager:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x04
	bls _0803E092
	bl _0803E9BC
_0803E092:
	lsls r0, r0, #0x02
	ldr r1, _0803E09C @ =0x0803E0A0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0803E09C: .4byte 0x0803E0A0
	.byte 0xB4, 0xE0, 0x03, 0x08, 0x8C, 0xE1, 0x03, 0x08, 0xC4, 0xE2, 0x03, 0x08, 0xDC, 0xE3, 0x03, 0x08
	.byte 0x58, 0xE9, 0x03, 0x08
_0803E0B4:
	ldr r1, _0803E16C @ =0x0300034C
	ldr r2, _0803E170 @ =0x00000888
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _0803E174 @ =0x0839EC80
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x01]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x01]
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r5, r7, r3
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x00]
	bl disable__7Process
	movs r6, #0xC5
	lsls r6, r6, #0x02
	adds r4, r7, r6
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0803E0F0
	movs r1, #0x03
	bl sub_81166AC
_0803E0F0:
	movs r6, #0x00
	str r6, [r4, #0x00]
	ldr r0, [r5, #0x00]
	bl sub_80F0184
	movs r0, #0xFE
	lsls r0, r0, #0x01
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0803E10C
	movs r1, #0x03
	bl sub_805CCC0
_0803E10C:
	str r6, [r4, #0x00]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r4, r7, r1
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0803E120
	movs r1, #0x03
	bl _._4S_MP
_0803E120:
	str r6, [r4, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r4, r7, r2
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _0803E13A
	ldr r0, _0803E178 @ =0x08CDBDC8
	str r0, [r1, #0x18]
	adds r0, r1, #0x0
	movs r1, #0x03
	bl _._7Process
_0803E13A:
	str r6, [r4, #0x00]
	ldr r2, _0803E17C @ =0x0000FFFF
	adds r0, r7, #0x0
	adds r1, r2, #0x0
	bl sub_8029120__12FieldManagerUsUs
	movs r0, #0x00
	movs r1, #0x00
	bl sub_8029888
	ldr r1, _0803E180 @ =0x040000B0
	ldrh r2, [r1, #0x0A]
	ldr r0, _0803E184 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r2, [r1, #0x0A]
	ldr r0, _0803E188 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r1, r7, r3
	b _0803E3CA
	.byte 0x00, 0x00
_0803E16C: .4byte 0x0300034C
_0803E170: .4byte 0x00000888
_0803E174: .4byte 0x0839EC80
_0803E178: .4byte 0x08CDBDC8
_0803E17C: .4byte 0x0000FFFF
_0803E180: .4byte 0x040000B0
_0803E184: .4byte 0x0000C5FF
_0803E188: .4byte 0x00007FFF
_0803E18C:
	movs r5, #0xC3
	lsls r5, r5, #0x02
	adds r4, r7, r5
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0803E19E
	movs r1, #0x03
	bl _._7Process
_0803E19E:
	movs r0, #0x00
	str r0, [r4, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xF8
	ldr r0, _0803E290 @ =0x0300034C
	movs r4, #0x0D
	negs r4, r4
	adds r2, r0, #0x0
	adds r2, #0x85
	movs r3, #0x04
	movs r5, #0x7F
_0803E1B4:
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0803E1C8
	ldrb r1, [r2, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
_0803E1C8:
	ldrb r0, [r2, #0x08]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0803E1DC
	ldrb r1, [r2, #0x08]
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x08]
_0803E1DC:
	ldrb r0, [r2, #0x10]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0803E1F0
	ldrb r1, [r2, #0x10]
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x10]
_0803E1F0:
	ldrb r0, [r2, #0x18]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0803E204
	ldrb r1, [r2, #0x18]
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x18]
_0803E204:
	adds r2, #0x20
	subs r5, #0x04
	cmp r5, #0x00
	bge _0803E1B4
	ldrb r1, [r6, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0803E224
	bl sprite_context_release__Fv
	ldrb r1, [r6, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_0803E224:
	ldr r4, _0803E294 @ =0x03000D88
	ldr r2, _0803E298 @ =0x081E269C
	movs r0, #0x1C
	movs r1, #0x00
	movs r3, #0x01
	bl __nw__FUliPcUc
	movs r1, #0xB0
	lsls r1, r1, #0x08
	movs r2, #0xA8
	lsls r2, r2, #0x08
	movs r3, #0x0F
	bl __4BGBMUsUsUc
	str r0, [r4, #0x00]
	ldr r4, _0803E29C @ =0x03000D8C
	ldr r2, _0803E2A0 @ =0x081E26A4
	movs r0, #0x78
	movs r1, #0x00
	movs r3, #0x01
	bl __vn__FUliPcUc
	str r0, [r4, #0x00]
	ldr r4, _0803E2A4 @ =0x03000D90
	ldr r2, _0803E2A8 @ =0x081E26AC
	movs r0, #0x1A
	movs r1, #0x00
	movs r3, #0x01
	bl __vn__FUliPcUc
	str r0, [r4, #0x00]
	ldr r4, _0803E2AC @ =0x03000D94
	ldr r2, _0803E2B0 @ =0x081E26B4
	movs r0, #0x34
	movs r1, #0x00
	movs r3, #0x01
	bl __vn__FUliPcUc
	str r0, [r4, #0x00]
	ldr r0, _0803E2B4 @ =0x03000D98
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _0803E2B8 @ =0x03000D99
	strb r1, [r0, #0x00]
	ldr r0, _0803E2BC @ =0x03000D9A
	strb r1, [r0, #0x00]
	ldr r1, _0803E2C0 @ =0x03000D9C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r6, #0xA4
	lsls r6, r6, #0x02
	adds r1, r7, r6
	b _0803E3CA
	.byte 0x00, 0x00
_0803E290: .4byte 0x0300034C
_0803E294: .4byte 0x03000D88
_0803E298: .4byte 0x081E269C
_0803E29C: .4byte 0x03000D8C
_0803E2A0: .4byte 0x081E26A4
_0803E2A4: .4byte 0x03000D90
_0803E2A8: .4byte 0x081E26AC
_0803E2AC: .4byte 0x03000D94
_0803E2B0: .4byte 0x081E26B4
_0803E2B4: .4byte 0x03000D98
_0803E2B8: .4byte 0x03000D99
_0803E2BC: .4byte 0x03000D9A
_0803E2C0: .4byte 0x03000D9C
_0803E2C4:
	ldr r0, _0803E32C @ =0x03000D88
	ldr r0, [r0, #0x00]
	bl sub_801DE8C
	ldr r4, _0803E330 @ =0x0839EC80
	ldr r2, [r4, #0x00]
	ldrh r3, [r2, #0x12]
	ldr r1, _0803E334 @ =0xFFFFFE00
	adds r0, r1, #0x0
	ands r0, r3
	strh r0, [r2, #0x12]
	ldrh r0, [r2, #0x10]
	ands r1, r0
	strh r1, [r2, #0x10]
	ldr r1, _0803E338 @ =0x02000008
	ldr r2, _0803E33C @ =0x00001508
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _0803E340 @ =0x0839FE44
	ldr r1, _0803E344 @ =0x02000260
	ldr r2, _0803E348 @ =0x04000008
	bl CpuSet
	ldr r2, _0803E34C @ =0x0300034C
	ldrh r1, [r2, #0x02]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x02]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x01]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x01]
	movs r4, #0x82
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrb r3, [r0, #0x00]
	movs r0, #0x50
	ands r0, r3
	cmp r0, #0x00
	beq _0803E358
	ldr r1, _0803E350 @ =0x0839FE64
	ldr r5, _0803E354 @ =0x000002A9
	adds r0, r7, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1D
	lsls r0, r0, #0x01
	adds r0, r0, r1
	b _0803E384
_0803E32C: .4byte 0x03000D88
_0803E330: .4byte 0x0839EC80
_0803E334: .4byte 0xFFFFFE00
_0803E338: .4byte 0x02000008
_0803E33C: .4byte 0x00001508
_0803E340: .4byte 0x0839FE44
_0803E344: .4byte 0x02000260
_0803E348: .4byte 0x04000008
_0803E34C: .4byte 0x0300034C
_0803E350: .4byte 0x0839FE64
_0803E354: .4byte 0x000002A9
_0803E358:
	ldr r6, _0803E390 @ =0x00000291
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0803E39C
	ldr r3, _0803E394 @ =0x0839FE64
	ldr r1, _0803E398 @ =0x000002A9
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	lsls r1, r2, #0x1A
	lsrs r1, r1, #0x1F
	adds r1, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	lsls r2, r2, #0x1B
	lsrs r2, r2, #0x1D
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r3
_0803E384:
	ldrh r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _0803E3C4
_0803E390: .4byte 0x00000291
_0803E394: .4byte 0x0839FE64
_0803E398: .4byte 0x000002A9
_0803E39C:
	ldr r2, _0803E3D4 @ =0x0839FE64
	lsls r0, r3, #0x1D
	lsrs r0, r0, #0x1F
	adds r0, #0x01
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x01
	ldr r3, _0803E3D8 @ =0x000002A9
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	lsls r1, r1, #0x01
	adds r1, r1, r2
	ldrh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0803E3C4:
	movs r4, #0xA4
	lsls r4, r4, #0x02
	adds r1, r7, r4
_0803E3CA:
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	b _0803E9BC
	.byte 0x00, 0x00
_0803E3D4: .4byte 0x0839FE64
_0803E3D8: .4byte 0x000002A9
_0803E3DC:
	ldr r5, _0803E438 @ =0x03000D9C
	mov r9, r5
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0xEF
	ble _0803E45C
	ldr r0, _0803E43C @ =0x0300034C
	ldr r1, _0803E440 @ =0x00000884
	adds r0, r0, r1
	movs r2, #0x00
	mov r8, r2
	str r2, [r0, #0x00]
	ldr r4, _0803E444 @ =0x03001034
	ldr r5, _0803E448 @ =0x03DE03DE
	ldr r1, _0803E44C @ =0x02000080
	movs r6, #0x80
	lsls r6, r6, #0x03
	ldr r3, [r4, #0x00]
	adds r0, r5, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
	movs r1, #0xA0
	lsls r1, r1, #0x13
	ldr r3, [r4, #0x00]
	adds r0, r5, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r1, r7, r3
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x00
	mov r5, r8
	mov r4, r9
	strh r5, [r4, #0x00]
	ldr r0, _0803E450 @ =0x03000D98
	strb r1, [r0, #0x00]
	ldr r0, _0803E454 @ =0x03000D99
	strb r1, [r0, #0x00]
	ldr r0, _0803E458 @ =0x03000D9A
	strb r1, [r0, #0x00]
	b _0803E9BC
_0803E438: .4byte 0x03000D9C
_0803E43C: .4byte 0x0300034C
_0803E440: .4byte 0x00000884
_0803E444: .4byte 0x03001034
_0803E448: .4byte 0x03DE03DE
_0803E44C: .4byte 0x02000080
_0803E450: .4byte 0x03000D98
_0803E454: .4byte 0x03000D99
_0803E458: .4byte 0x03000D9A
_0803E45C:
	ldr r0, _0803E654 @ =0x03000D88
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	bl sub_801DC00
	ldr r0, _0803E658 @ =0x0839FD4A
	ldr r4, _0803E65C @ =0x03000D8C
	ldr r1, [r4, #0x00]
	movs r2, #0x3C
	bl CpuSet
	ldr r4, [r4, #0x00]
	movs r6, #0x00
	mov r10, r6
	ldr r0, _0803E660 @ =0x08198584
	mov r9, r0
	ldr r1, _0803E664 @ =0x08198504
	mov r8, r1
_0803E480:
	ldr r2, _0803E668 @ =0x03000D98
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x01
	mov r3, r9
	adds r0, r1, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	movs r6, #0x02
	ldsh r5, [r4, r6]
	adds r2, r0, #0x0
	muls r2, r5
	add r1, r8
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r6, #0x04
	ldsh r3, [r4, r6]
	muls r0, r3
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0803E4AC
	ldr r1, _0803E66C @ =0x00003FFF
	adds r0, r0, r1
_0803E4AC:
	asrs r0, r0, #0x0E
	strh r0, [r4, #0x02]
	ldr r2, _0803E668 @ =0x03000D98
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x01
	mov r6, r8
	adds r0, r1, r6
	movs r6, #0x00
	ldsh r2, [r0, r6]
	negs r0, r5
	muls r2, r0
	add r1, r9
	movs r5, #0x00
	ldsh r0, [r1, r5]
	muls r0, r3
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0803E4D4
	ldr r6, _0803E66C @ =0x00003FFF
	adds r0, r0, r6
_0803E4D4:
	asrs r0, r0, #0x0E
	strh r0, [r4, #0x04]
	ldr r6, _0803E670 @ =0x03000D99
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x01
	mov r2, r9
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r2, #0x00
	ldsh r5, [r4, r2]
	adds r2, r0, #0x0
	muls r2, r5
	add r1, r8
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x04
	ldsh r3, [r4, r1]
	muls r0, r3
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0803E504
	ldr r2, _0803E66C @ =0x00003FFF
	adds r0, r0, r2
_0803E504:
	asrs r0, r0, #0x0E
	strh r0, [r4, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x01
	mov r6, r8
	adds r0, r1, r6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r2, r0, #0x0
	muls r2, r5
	add r1, r9
	movs r5, #0x00
	ldsh r0, [r1, r5]
	muls r0, r3
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0803E52A
	ldr r6, _0803E66C @ =0x00003FFF
	adds r0, r0, r6
_0803E52A:
	asrs r6, r0, #0x0E
	strh r6, [r4, #0x04]
	ldr r7, _0803E674 @ =0x03000D9A
	ldrb r1, [r7, #0x00]
	lsls r1, r1, #0x01
	mov r2, r9
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r2, #0x00
	ldsh r5, [r4, r2]
	adds r2, r0, #0x0
	muls r2, r5
	add r1, r8
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x02
	ldsh r3, [r4, r1]
	muls r0, r3
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0803E55A
	ldr r2, _0803E66C @ =0x00003FFF
	adds r0, r0, r2
_0803E55A:
	asrs r0, r0, #0x0E
	strh r0, [r4, #0x00]
	ldrb r1, [r7, #0x00]
	lsls r1, r1, #0x01
	mov r2, r8
	adds r0, r1, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r2, r0, #0x0
	muls r2, r5
	add r1, r9
	movs r5, #0x00
	ldsh r0, [r1, r5]
	muls r0, r3
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0803E580
	ldr r1, _0803E66C @ =0x00003FFF
	adds r0, r0, r1
_0803E580:
	asrs r0, r0, #0x0E
	strh r0, [r4, #0x02]
	ldr r2, _0803E678 @ =0xFFFFF800
	adds r0, r6, r2
	strh r0, [r4, #0x04]
	ldr r7, _0803E67C @ =0x03001038
	ldr r1, _0803E680 @ =0x0819832C
	ldr r0, _0803E684 @ =0x08198220
	subs r5, r1, r0
	ldr r2, [r7, #0x00]
	adds r2, r2, r5
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x0B
	negs r0, r0
	movs r6, #0x04
	ldsh r1, [r4, r6]
	bl _call_via_r2
	ldr r6, _0803E688 @ =0x03000D9C
	movs r2, #0x00
	ldsh r1, [r6, r2]
	muls r0, r1
	cmp r0, #0x00
	bge _0803E5B4
	adds r0, #0x0F
_0803E5B4:
	asrs r0, r0, #0x04
	strh r0, [r4, #0x00]
	ldr r2, [r7, #0x00]
	adds r2, r2, r5
	movs r3, #0x02
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x0B
	negs r0, r0
	movs r5, #0x04
	ldsh r1, [r4, r5]
	bl _call_via_r2
	movs r2, #0x00
	ldsh r1, [r6, r2]
	muls r0, r1
	cmp r0, #0x00
	bge _0803E5D8
	adds r0, #0x0F
_0803E5D8:
	asrs r1, r0, #0x04
	ldrh r0, [r4, #0x00]
	adds r0, #0x78
	strh r0, [r4, #0x00]
	adds r1, #0x50
	strh r1, [r4, #0x02]
	adds r4, #0x06
	movs r3, #0x01
	add r10, r3
	mov r5, r10
	cmp r5, #0x13
	bhi _0803E5F2
	b _0803E480
_0803E5F2:
	ldr r1, _0803E68C @ =0x03000D90
	ldr r7, [r1, #0x00]
	ldr r0, _0803E690 @ =0x03000D94
	ldr r4, [r0, #0x00]
	ldr r6, _0803E694 @ =0x0839FDC2
	mov r8, r6
	movs r6, #0x00
	ldr r0, _0803E65C @ =0x03000D8C
	mov r9, r0
	mov r10, r1
_0803E606:
	strb r6, [r7, #0x00]
	adds r7, #0x01
	mov r1, r8
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0803E698
	ldrb r1, [r1, #0x01]
	mov r2, r9
	ldr r3, [r2, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r5, #0x04
	ldsh r0, [r0, r5]
	mov r1, r8
	ldrb r2, [r1, #0x02]
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x01
	adds r1, r1, r3
	movs r2, #0x04
	ldsh r1, [r1, r2]
	adds r0, r0, r1
	mov r5, r8
	ldrb r2, [r5, #0x03]
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x01
	adds r1, r1, r3
	movs r2, #0x04
	ldsh r1, [r1, r2]
	adds r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	strh r0, [r4, #0x00]
	adds r4, #0x02
	b _0803E6EE
_0803E654: .4byte 0x03000D88
_0803E658: .4byte 0x0839FD4A
_0803E65C: .4byte 0x03000D8C
_0803E660: .4byte 0x08198584
_0803E664: .4byte 0x08198504
_0803E668: .4byte 0x03000D98
_0803E66C: .4byte 0x00003FFF
_0803E670: .4byte 0x03000D99
_0803E674: .4byte 0x03000D9A
_0803E678: .4byte 0xFFFFF800
_0803E67C: .4byte 0x03001038
_0803E680: .4byte 0x0819832C
_0803E684: .4byte 0x08198220
_0803E688: .4byte 0x03000D9C
_0803E68C: .4byte 0x03000D90
_0803E690: .4byte 0x03000D94
_0803E694: .4byte 0x0839FDC2
_0803E698:
	adds r5, r4, #0x0
	mov r3, r8
	ldrb r1, [r3, #0x01]
	mov r4, r9
	ldr r3, [r4, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r1, #0x04
	ldsh r2, [r0, r1]
	mov r4, r8
	ldrb r1, [r4, #0x02]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r1, #0x04
	ldsh r0, [r0, r1]
	adds r2, r2, r0
	ldrb r1, [r4, #0x03]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r4, #0x04
	ldsh r0, [r0, r4]
	adds r2, r2, r0
	mov r0, r8
	ldrb r1, [r0, #0x04]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r1, #0x04
	ldsh r0, [r0, r1]
	adds r0, r2, r0
	adds r4, r5, #0x2
	cmp r0, #0x00
	bge _0803E6EA
	adds r0, #0x03
_0803E6EA:
	asrs r0, r0, #0x02
	strh r0, [r5, #0x00]
_0803E6EE:
	movs r2, #0x05
	add r8, r2
	adds r6, #0x01
	cmp r6, #0x19
	bls _0803E606
	ldr r3, _0803E854 @ =0x03000D94
	mov r12, r3
_0803E6FC:
	movs r6, #0x00
	mov r4, r10
	ldr r7, [r4, #0x00]
	mov r8, r6
	ldrb r4, [r7, #0x00]
	mov r5, r12
	ldr r2, [r5, #0x00]
	lsls r1, r4, #0x01
	adds r1, r1, r2
	ldrb r3, [r7, #0x01]
	lsls r0, r3, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r1, r0
	ble _0803E726
	strb r3, [r7, #0x00]
	strb r4, [r7, #0x01]
	movs r6, #0x01
_0803E726:
	adds r7, #0x01
	movs r0, #0x01
	add r8, r0
	mov r1, r8
	cmp r1, #0x18
	bhi _0803E7CC
_0803E732:
	ldrb r4, [r7, #0x00]
	mov r3, r12
	ldr r2, [r3, #0x00]
	lsls r1, r4, #0x01
	adds r1, r1, r2
	ldrb r3, [r7, #0x01]
	lsls r0, r3, #0x01
	adds r0, r0, r2
	movs r5, #0x00
	ldsh r1, [r1, r5]
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r1, r0
	ble _0803E754
	strb r3, [r7, #0x00]
	strb r4, [r7, #0x01]
	movs r6, #0x01
_0803E754:
	adds r5, r7, #0x1
	ldrb r4, [r7, #0x01]
	mov r3, r12
	ldr r2, [r3, #0x00]
	lsls r1, r4, #0x01
	adds r1, r1, r2
	ldrb r3, [r5, #0x01]
	lsls r0, r3, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r1, r0
	ble _0803E778
	strb r3, [r7, #0x01]
	strb r4, [r5, #0x01]
	movs r6, #0x01
_0803E778:
	adds r5, r7, #0x2
	ldrb r4, [r7, #0x02]
	mov r3, r12
	ldr r2, [r3, #0x00]
	lsls r1, r4, #0x01
	adds r1, r1, r2
	ldrb r3, [r5, #0x01]
	lsls r0, r3, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r1, r0
	ble _0803E79C
	strb r3, [r7, #0x02]
	strb r4, [r5, #0x01]
	movs r6, #0x01
_0803E79C:
	adds r5, r7, #0x3
	ldrb r4, [r7, #0x03]
	mov r3, r12
	ldr r2, [r3, #0x00]
	lsls r1, r4, #0x01
	adds r1, r1, r2
	ldrb r3, [r5, #0x01]
	lsls r0, r3, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r1, r0
	ble _0803E7C0
	strb r3, [r7, #0x03]
	strb r4, [r5, #0x01]
	movs r6, #0x01
_0803E7C0:
	adds r7, #0x04
	movs r3, #0x04
	add r8, r3
	mov r4, r8
	cmp r4, #0x18
	bls _0803E732
_0803E7CC:
	cmp r6, #0x00
	bne _0803E6FC
	mov r5, r10
	ldr r7, [r5, #0x00]
	movs r6, #0x00
	mov r9, r6
_0803E7D8:
	ldrb r1, [r7, #0x00]
	adds r7, #0x01
	lsls r0, r1, #0x02
	adds r0, r0, r1
	ldr r1, _0803E858 @ =0x0839FDC2
	adds r0, r0, r1
	mov r8, r0
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0803E864
	ldr r0, _0803E85C @ =0x03000D88
	ldr r0, [r0, #0x00]
	mov r1, r8
	ldrb r3, [r1, #0x01]
	ldr r1, _0803E860 @ =0x03000D8C
	ldr r6, [r1, #0x00]
	lsls r2, r3, #0x01
	adds r2, r2, r3
	lsls r2, r2, #0x01
	adds r2, r2, r6
	movs r3, #0x00
	ldsh r1, [r2, r3]
	movs r4, #0x02
	ldsh r2, [r2, r4]
	mov r5, r8
	ldrb r3, [r5, #0x02]
	lsls r4, r3, #0x01
	adds r4, r4, r3
	lsls r4, r4, #0x01
	adds r4, r4, r6
	movs r5, #0x00
	ldsh r3, [r4, r5]
	movs r5, #0x02
	ldsh r4, [r4, r5]
	str r4, [sp, #0x000]
	mov r4, r8
	ldrb r5, [r4, #0x03]
	lsls r4, r5, #0x01
	adds r4, r4, r5
	lsls r4, r4, #0x01
	adds r4, r4, r6
	movs r5, #0x00
	ldsh r4, [r4, r5]
	str r4, [sp, #0x004]
	mov r4, r8
	ldrb r5, [r4, #0x03]
	lsls r4, r5, #0x01
	adds r4, r4, r5
	lsls r4, r4, #0x01
	adds r4, r4, r6
	movs r5, #0x02
	ldsh r4, [r4, r5]
	str r4, [sp, #0x008]
	movs r4, #0x0F
	str r4, [sp, #0x00C]
	add r5, sp, #0x010
	movs r4, #0x01
	strb r4, [r5, #0x00]
	bl sub_801DD80
	b _0803E8EC
	.byte 0x00, 0x00
_0803E854: .4byte 0x03000D94
_0803E858: .4byte 0x0839FDC2
_0803E85C: .4byte 0x03000D88
_0803E860: .4byte 0x03000D8C
_0803E864:
	ldr r0, _0803E938 @ =0x03000D88
	ldr r0, [r0, #0x00]
	mov r6, r8
	ldrb r3, [r6, #0x01]
	ldr r1, _0803E93C @ =0x03000D8C
	ldr r6, [r1, #0x00]
	lsls r2, r3, #0x01
	adds r2, r2, r3
	lsls r2, r2, #0x01
	adds r2, r2, r6
	movs r3, #0x00
	ldsh r1, [r2, r3]
	movs r4, #0x02
	ldsh r2, [r2, r4]
	mov r5, r8
	ldrb r3, [r5, #0x02]
	lsls r4, r3, #0x01
	adds r4, r4, r3
	lsls r4, r4, #0x01
	adds r4, r4, r6
	movs r5, #0x00
	ldsh r3, [r4, r5]
	movs r5, #0x02
	ldsh r4, [r4, r5]
	str r4, [sp, #0x000]
	mov r4, r8
	ldrb r5, [r4, #0x03]
	lsls r4, r5, #0x01
	adds r4, r4, r5
	lsls r4, r4, #0x01
	adds r4, r4, r6
	movs r5, #0x00
	ldsh r4, [r4, r5]
	str r4, [sp, #0x004]
	mov r4, r8
	ldrb r5, [r4, #0x03]
	lsls r4, r5, #0x01
	adds r4, r4, r5
	lsls r4, r4, #0x01
	adds r4, r4, r6
	movs r5, #0x02
	ldsh r4, [r4, r5]
	str r4, [sp, #0x008]
	mov r4, r8
	ldrb r5, [r4, #0x04]
	lsls r4, r5, #0x01
	adds r4, r4, r5
	lsls r4, r4, #0x01
	adds r4, r4, r6
	movs r5, #0x00
	ldsh r4, [r4, r5]
	str r4, [sp, #0x00C]
	mov r4, r8
	ldrb r5, [r4, #0x04]
	lsls r4, r5, #0x01
	adds r4, r4, r5
	lsls r4, r4, #0x01
	adds r4, r4, r6
	movs r5, #0x02
	ldsh r4, [r4, r5]
	str r4, [sp, #0x010]
	movs r4, #0x08
	str r4, [sp, #0x014]
	add r5, sp, #0x018
	movs r4, #0x01
	strb r4, [r5, #0x00]
	bl sub_801DC4C
_0803E8EC:
	movs r6, #0x01
	add r9, r6
	mov r0, r9
	cmp r0, #0x19
	bhi _0803E8F8
	b _0803E7D8
_0803E8F8:
	ldr r4, _0803E938 @ =0x03000D88
	ldr r0, [r4, #0x00]
	bl sub_801DC38
	ldr r0, [r4, #0x00]
	bl sub_801DB58
	ldr r2, _0803E940 @ =0x03000D9E
	ldr r0, _0803E944 @ =0x0300034C
	ldr r1, _0803E948 @ =0x000008C1
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
	ldr r1, _0803E94C @ =0x03000D9C
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	ldrh r3, [r1, #0x00]
	adds r0, r0, r3
	strh r0, [r1, #0x00]
	ldr r1, _0803E950 @ =0x03000D99
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	ldrb r4, [r1, #0x00]
	adds r0, r0, r4
	strb r0, [r1, #0x00]
	ldr r1, _0803E954 @ =0x03000D9A
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	ldrb r5, [r1, #0x00]
	adds r0, r0, r5
	strb r0, [r1, #0x00]
	b _0803E9BC
_0803E938: .4byte 0x03000D88
_0803E93C: .4byte 0x03000D8C
_0803E940: .4byte 0x03000D9E
_0803E944: .4byte 0x0300034C
_0803E948: .4byte 0x000008C1
_0803E94C: .4byte 0x03000D9C
_0803E950: .4byte 0x03000D99
_0803E954: .4byte 0x03000D9A
_0803E958:
	ldr r0, _0803E9CC @ =0x03000D94
	ldr r0, [r0, #0x00]
	bl __builtin_delete
	ldr r0, _0803E9D0 @ =0x03000D90
	ldr r0, [r0, #0x00]
	bl __builtin_delete
	ldr r0, _0803E9D4 @ =0x03000D8C
	ldr r0, [r0, #0x00]
	bl __builtin_delete
	ldr r0, _0803E9D8 @ =0x03000D88
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0803E97E
	movs r1, #0x03
	bl _._4BGBM
_0803E97E:
	ldr r6, _0803E9DC @ =0x00000291
	adds r3, r7, r6
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r1, _0803E9E0 @ =0x0300034C
	ldr r0, _0803E9E4 @ =0x00000888
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r2, _0803E9E8 @ =0x000002B6
	adds r1, r7, r2
	ldr r0, _0803E9EC @ =0x000003DE
	strh r0, [r1, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0803E9BC
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl enable__7Process
_0803E9BC:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0803E9CC: .4byte 0x03000D94
_0803E9D0: .4byte 0x03000D90
_0803E9D4: .4byte 0x03000D8C
_0803E9D8: .4byte 0x03000D88
_0803E9DC: .4byte 0x00000291
_0803E9E0: .4byte 0x0300034C
_0803E9E4: .4byte 0x00000888
_0803E9E8: .4byte 0x000002B6
_0803E9EC: .4byte 0x000003DE
