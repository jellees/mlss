	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804B360__20FieldPlayerCharacterUcUc
sub_804B360__20FieldPlayerCharacterUcUc:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x0C4
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x034]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x038]
	cmp r1, #0x00
	beq _0804B380
	b _0804B49A
_0804B380:
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0804B396
	bl _0804C670
_0804B396:
	ldr r2, _0804B474 @ =0x00000216
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r2, #0x20
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0804B3AA
	bl _0804C670
_0804B3AA:
	ldr r4, _0804B478 @ =0x0000020D
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0804B49A
	movs r5, #0x84
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0804B49A
	ldr r0, [r7, #0x34]
	ldr r3, [r7, #0x0C]
	ldr r4, [r7, #0x10]
	cmp r3, r0
	bne _0804B3EC
	ldr r0, [r7, #0x38]
	cmp r4, r0
	bne _0804B3EC
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x3C]
	cmp r1, r0
	bne _0804B3EC
	ldr r0, [r7, #0x18]
	ldr r2, [r7, #0x40]
	cmp r0, r2
	bne _0804B3EC
	bl _0804C670
_0804B3EC:
	movs r6, #0xA4
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	add r1, sp, #0x014
	str r1, [sp, #0x000]
	add r1, sp, #0x018
	str r1, [sp, #0x004]
	add r2, sp, #0x008
	movs r1, #0x00
	strb r1, [r2, #0x00]
	ldr r2, _0804B478 @ =0x0000020D
	adds r1, r7, r2
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	movs r2, #0x01
	ands r1, r2
	add r2, sp, #0x00C
	strb r1, [r2, #0x00]
	adds r1, r3, #0x0
	adds r2, r4, #0x0
	add r3, sp, #0x010
	bl sub_803FBA4
	str r0, [r7, #0x20]
	movs r3, #0x00
	ldr r2, [sp, #0x018]
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	beq _0804B436
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	cmp r0, r2
	blt _0804B436
	movs r3, #0x01
_0804B436:
	adds r2, r7, #0x0
	adds r2, #0x26
	lsls r3, r3, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r3, #0x8C
	lsls r3, r3, #0x02
	adds r1, r7, r3
	ldr r0, [r7, #0x0C]
	str r0, [r1, #0x00]
	movs r4, #0x8D
	lsls r4, r4, #0x02
	adds r1, r7, r4
	ldr r0, [r7, #0x10]
	str r0, [r1, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	ands r0, r1
	str r2, [sp, #0x0BC]
	cmp r0, #0x00
	beq _0804B47C
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	ldr r1, [sp, #0x018]
	b _0804B484
	.byte 0x00, 0x00
_0804B474: .4byte 0x00000216
_0804B478: .4byte 0x0000020D
_0804B47C:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	ldr r1, [sp, #0x010]
_0804B484:
	subs r0, r0, r1
	str r0, [r7, #0x18]
	str r1, [r7, #0x14]
	ldr r5, [sp, #0x0BC]
	ldrb r1, [r5, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
	bl _0804C670
_0804B49A:
	ldr r1, [r7, #0x0C]
	ldr r0, [r7, #0x34]
	ldr r5, [r7, #0x14]
	ldr r4, [r7, #0x3C]
	ldr r2, [r7, #0x40]
	cmp r1, r0
	bne _0804B4C4
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x38]
	cmp r1, r0
	bne _0804B4C4
	cmp r5, r4
	bne _0804B4C4
	ldr r3, [r7, #0x18]
	cmp r3, r2
	bne _0804B4C4
	ldr r6, [sp, #0x034]
	cmp r6, #0x00
	bne _0804B4C4
	bl _0804C600
_0804B4C4:
	movs r0, #0x00
	str r0, [sp, #0x040]
	ldr r1, _0804B574 @ =0x00FFFFFF
	str r1, [sp, #0x044]
	mov r10, r0
	movs r3, #0x00
	str r3, [sp, #0x060]
	movs r6, #0x00
	str r6, [sp, #0x064]
	adds r4, r4, r2
	str r4, [sp, #0x068]
	ldr r1, _0804B578 @ =0x0000027A
	adds r0, r7, r1
	ldrh r1, [r0, #0x00]
	adds r2, r4, r1
	str r2, [sp, #0x06C]
	ldr r0, [r7, #0x18]
	adds r5, r5, r0
	str r5, [sp, #0x070]
	adds r1, r5, r1
	str r1, [sp, #0x074]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	add r4, sp, #0x01C
	mov r8, r4
	add r5, sp, #0x020
	str r5, [sp, #0x000]
	mov r6, sp
	adds r6, #0x24
	str r6, [sp, #0x0C0]
	str r6, [sp, #0x004]
	add r5, sp, #0x008
	movs r4, #0x01
	strb r4, [r5, #0x00]
	subs r3, #0x83
	ldrb r6, [r3, r7]
	mov r12, r6
	mov r6, r12
	lsrs r3, r6, #0x03
	ands r3, r4
	add r4, sp, #0x00C
	strb r3, [r4, #0x00]
	mov r3, r8
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x048]
	ldr r2, [r3, #0x00]
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	str r5, [sp, #0x0B4]
	str r4, [sp, #0x0B8]
	cmp r0, #0x03
	bls _0804B544
	ldr r1, [sp, #0x048]
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r1, r4
	str r1, [sp, #0x048]
_0804B544:
	movs r5, #0x84
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804B57C
	ldr r6, [sp, #0x024]
	str r6, [sp, #0x04C]
	cmp r6, #0x00
	blt _0804B584
	lsls r0, r2, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x03
	bls _0804B584
	cmp r0, #0x06
	bhi _0804B584
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r6, r6, r0
	str r6, [sp, #0x04C]
	b _0804B584
	.byte 0x00, 0x00
_0804B574: .4byte 0x00FFFFFF
_0804B578: .4byte 0x0000027A
_0804B57C:
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x024]
	str r0, [sp, #0x04C]
_0804B584:
	ldr r5, [sp, #0x01C]
	ldr r1, [r7, #0x0C]
	str r1, [sp, #0x050]
	ldr r2, [r7, #0x10]
	str r2, [sp, #0x054]
	str r3, [sp, #0x03C]
	ldr r0, [sp, #0x024]
	cmp r10, r0
	bge _0804B59E
	mov r10, r0
	str r1, [sp, #0x058]
	str r2, [sp, #0x05C]
	str r3, [sp, #0x040]
_0804B59E:
	ldr r3, _0804B8CC @ =0x0000027E
	adds r4, r7, r3
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [sp, #0x050]
	subs r6, r1, r0
	ldr r2, [sp, #0x054]
	mov r9, r2
	adds r3, #0x12
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	add r1, sp, #0x020
	str r1, [sp, #0x000]
	add r2, sp, #0x024
	str r2, [sp, #0x004]
	movs r2, #0x01
	ldr r3, [sp, #0x0B4]
	strb r2, [r3, #0x00]
	ldr r3, _0804B8D0 @ =0x0000020D
	adds r1, r7, r3
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r2, [sp, #0x0B8]
	strb r1, [r2, #0x00]
	adds r1, r6, #0x0
	ldr r2, [sp, #0x054]
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldrb r1, [r3, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x05
	bne _0804B5F0
	ldrh r1, [r4, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [sp, #0x01C]
	subs r0, r0, r1
	str r0, [sp, #0x01C]
_0804B5F0:
	ldr r0, [sp, #0x01C]
	ldr r4, [sp, #0x048]
	cmp r4, r0
	bge _0804B61E
	ldr r1, [sp, #0x04C]
	cmp r1, r0
	bgt _0804B61E
	cmp r5, r0
	bge _0804B61E
	adds r5, r0, #0x0
	str r6, [sp, #0x050]
	str r3, [sp, #0x03C]
	movs r2, #0x01
	str r2, [sp, #0x060]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804B61E
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r4, r5, r4
	str r4, [sp, #0x048]
_0804B61E:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804B6C6
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x05
	bne _0804B646
	ldr r2, _0804B8CC @ =0x0000027E
	adds r0, r7, r2
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [sp, #0x024]
	subs r0, r0, r1
	str r0, [sp, #0x024]
_0804B646:
	ldr r0, [sp, #0x024]
	ldr r4, [sp, #0x048]
	cmp r4, r0
	bge _0804B67C
	ldr r1, [sp, #0x04C]
	cmp r1, r0
	bge _0804B67C
	cmp r10, r0
	bge _0804B67C
	mov r10, r0
	str r6, [sp, #0x058]
	mov r2, r9
	str r2, [sp, #0x05C]
	str r3, [sp, #0x040]
	movs r3, #0x01
	str r3, [sp, #0x064]
	ldr r4, [sp, #0x040]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804B67C
	movs r6, #0x80
	lsls r6, r6, #0x05
	add r6, r10
	str r6, [sp, #0x04C]
_0804B67C:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r2
	ldr r2, [r7, #0x10]
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r3, #0x00
	ldr r6, [sp, #0x0B4]
	strb r3, [r6, #0x00]
	ldr r4, _0804B8D0 @ =0x0000020D
	adds r3, r7, r4
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	movs r4, #0x01
	ands r3, r4
	ldr r6, [sp, #0x0B8]
	strb r3, [r6, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	blt _0804B6C6
	ldr r1, [sp, #0x044]
	cmp r1, r0
	ble _0804B6C6
	str r0, [sp, #0x044]
_0804B6C6:
	ldr r1, [r7, #0x0C]
	ldr r2, _0804B8D4 @ =0xFFFFFF00
	adds r1, r1, r2
	ldr r3, _0804B8CC @ =0x0000027E
	adds r4, r7, r3
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x01
	adds r6, r1, r0
	ldr r0, [r7, #0x10]
	mov r9, r0
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r2, #0x01
	ldr r1, [sp, #0x0B4]
	strb r2, [r1, #0x00]
	ldr r3, _0804B8D0 @ =0x0000020D
	adds r1, r7, r3
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r2, [sp, #0x0B8]
	strb r1, [r2, #0x00]
	adds r1, r6, #0x0
	mov r2, r9
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldrb r1, [r3, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x04
	bne _0804B724
	ldr r1, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	str r1, [sp, #0x01C]
_0804B724:
	ldr r0, [sp, #0x01C]
	ldr r1, [sp, #0x048]
	cmp r1, r0
	bge _0804B756
	ldr r2, [sp, #0x04C]
	cmp r2, r0
	bgt _0804B756
	cmp r5, r0
	bge _0804B756
	adds r5, r0, #0x0
	str r6, [sp, #0x050]
	mov r4, r9
	str r4, [sp, #0x054]
	str r3, [sp, #0x03C]
	movs r0, #0x02
	str r0, [sp, #0x060]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804B756
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r1, r5, r1
	str r1, [sp, #0x048]
_0804B756:
	movs r2, #0x84
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804B808
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x04
	bne _0804B784
	ldr r0, [sp, #0x024]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	adds r2, #0x6E
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x01
	subs r0, r0, r1
	str r0, [sp, #0x024]
_0804B784:
	ldr r0, [sp, #0x024]
	ldr r4, [sp, #0x048]
	cmp r4, r0
	bge _0804B7BA
	ldr r1, [sp, #0x04C]
	cmp r1, r0
	bge _0804B7BA
	cmp r10, r0
	bge _0804B7BA
	mov r10, r0
	str r6, [sp, #0x058]
	mov r2, r9
	str r2, [sp, #0x05C]
	str r3, [sp, #0x040]
	movs r3, #0x02
	str r3, [sp, #0x064]
	ldr r4, [sp, #0x040]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804B7BA
	movs r6, #0x80
	lsls r6, r6, #0x05
	add r6, r10
	str r6, [sp, #0x04C]
_0804B7BA:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, _0804B8D4 @ =0xFFFFFF00
	adds r1, r1, r2
	movs r3, #0x9E
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r6, sp, #0x024
	str r6, [sp, #0x004]
	movs r3, #0x00
	ldr r4, [sp, #0x0B4]
	strb r3, [r4, #0x00]
	ldr r6, _0804B8D0 @ =0x0000020D
	adds r3, r7, r6
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	movs r4, #0x01
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	blt _0804B808
	ldr r6, [sp, #0x044]
	cmp r6, r0
	ble _0804B808
	str r0, [sp, #0x044]
_0804B808:
	movs r0, #0xA4
	lsls r0, r0, #0x02
	adds r0, r7, r0
	str r0, [sp, #0x078]
	ldr r6, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, _0804B8D8 @ =0xFFFFF000
	ands r1, r2
	cmp r1, #0x00
	bge _0804B820
	ldr r0, _0804B8DC @ =0x00000FFF
	adds r1, r1, r0
_0804B820:
	lsls r0, r1, #0x04
	asrs r3, r0, #0x10
	ldr r1, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	mov r9, r4
	add r1, r9
	movs r0, #0xA0
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldrh r0, [r4, #0x00]
	subs r1, r1, r0
	ands r1, r2
	cmp r1, #0x00
	bge _0804B842
	ldr r0, _0804B8DC @ =0x00000FFF
	adds r1, r1, r0
_0804B842:
	lsls r2, r1, #0x04
	asrs r2, r2, #0x10
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	bl get_coldef_ptr_by_xz
	mov r8, r0
	movs r1, #0x00
	str r1, [sp, #0x07C]
	ldr r2, _0804B8CC @ =0x0000027E
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [r7, #0x0C]
	subs r6, r1, r0
	ldr r0, [r7, #0x10]
	add r0, r9
	ldrh r1, [r4, #0x00]
	subs r0, r0, r1
	mov r9, r0
	ldr r3, [sp, #0x078]
	ldr r0, [r3, #0x00]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r1, sp, #0x024
	str r1, [sp, #0x004]
	movs r2, #0x01
	ldr r3, [sp, #0x0B4]
	strb r2, [r3, #0x00]
	ldr r4, _0804B8D0 @ =0x0000020D
	adds r1, r7, r4
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r2, [sp, #0x0B8]
	strb r1, [r2, #0x00]
	adds r1, r6, #0x0
	mov r2, r9
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldrb r1, [r3, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804B8B2
	ldr r2, [r3, #0x00]
	ldr r0, _0804B8E0 @ =0x000F007F
	ands r0, r2
	ldr r1, _0804B8E4 @ =0x00030043
	cmp r0, r1
	beq _0804B8B2
	lsls r0, r2, #0x01
	lsrs r0, r0, #0x1E
	str r0, [sp, #0x07C]
_0804B8B2:
	ldrb r0, [r3, #0x00]
	movs r4, #0x07
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x05
	bne _0804B8E8
	ldr r4, _0804B8CC @ =0x0000027E
	adds r0, r7, r4
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [sp, #0x01C]
	b _0804B938
	.byte 0x00, 0x00
_0804B8CC: .4byte 0x0000027E
_0804B8D0: .4byte 0x0000020D
_0804B8D4: .4byte 0xFFFFFF00
_0804B8D8: .4byte 0xFFFFF000
_0804B8DC: .4byte 0x00000FFF
_0804B8E0: .4byte 0x000F007F
_0804B8E4: .4byte 0x00030043
_0804B8E8:
	cmp r1, #0x04
	bne _0804B924
	ldr r1, _0804B91C @ =0x0000027E
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [sp, #0x01C]
	adds r2, r1, r0
	str r2, [sp, #0x01C]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x04
	beq _0804B93C
	mov r4, r8
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x04
	beq _0804B93C
	ldr r0, _0804B920 @ =0xFFFFF000
	ands r2, r0
	str r2, [sp, #0x01C]
	b _0804B93C
	.byte 0x00, 0x00
_0804B91C: .4byte 0x0000027E
_0804B920: .4byte 0xFFFFF000
_0804B924:
	cmp r1, #0x06
	bne _0804B93C
	ldr r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
_0804B938:
	subs r0, r0, r1
	str r0, [sp, #0x01C]
_0804B93C:
	ldr r0, [sp, #0x01C]
	ldr r4, [sp, #0x048]
	cmp r4, r0
	bge _0804B95C
	ldr r1, [sp, #0x04C]
	cmp r1, r0
	bgt _0804B95C
	cmp r5, r0
	bge _0804B95C
	adds r5, r0, #0x0
	str r6, [sp, #0x050]
	mov r2, r9
	str r2, [sp, #0x054]
	str r3, [sp, #0x03C]
	movs r4, #0x03
	str r4, [sp, #0x060]
_0804B95C:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804BA54
	ldrb r0, [r3, #0x02]
	movs r4, #0x0F
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x05
	bne _0804B988
	ldr r2, _0804B984 @ =0x0000027E
	adds r0, r7, r2
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [sp, #0x024]
	b _0804B9D8
_0804B984: .4byte 0x0000027E
_0804B988:
	cmp r1, #0x04
	bne _0804B9C4
	ldr r1, _0804B9BC @ =0x0000027E
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [sp, #0x024]
	adds r2, r1, r0
	str r2, [sp, #0x024]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x04
	beq _0804B9DC
	mov r0, r8
	ldrb r1, [r0, #0x02]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x04
	beq _0804B9DC
	ldr r0, _0804B9C0 @ =0xFFFFF000
	ands r2, r0
	str r2, [sp, #0x024]
	b _0804B9DC
	.byte 0x00, 0x00
_0804B9BC: .4byte 0x0000027E
_0804B9C0: .4byte 0xFFFFF000
_0804B9C4:
	cmp r1, #0x06
	bne _0804B9DC
	ldr r0, [sp, #0x024]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
_0804B9D8:
	subs r0, r0, r1
	str r0, [sp, #0x024]
_0804B9DC:
	ldr r0, [sp, #0x024]
	ldr r4, [sp, #0x048]
	cmp r4, r0
	bge _0804B9FC
	ldr r1, [sp, #0x04C]
	cmp r1, r0
	bge _0804B9FC
	cmp r10, r0
	bge _0804B9FC
	mov r10, r0
	str r6, [sp, #0x058]
	mov r2, r9
	str r2, [sp, #0x05C]
	str r3, [sp, #0x040]
	movs r3, #0x03
	str r3, [sp, #0x064]
_0804B9FC:
	movs r4, #0xA4
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r1, r7, r6
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r2
	ldr r2, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r2, r3
	subs r4, #0x14
	adds r3, r7, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	add r6, sp, #0x020
	str r6, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r3, #0x00
	ldr r4, [sp, #0x0B4]
	strb r3, [r4, #0x00]
	ldr r6, _0804BAE8 @ =0x0000020D
	adds r3, r7, r6
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	movs r4, #0x01
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	blt _0804BA54
	ldr r6, [sp, #0x044]
	cmp r6, r0
	ble _0804BA54
	str r0, [sp, #0x044]
_0804BA54:
	movs r0, #0x00
	str r0, [sp, #0x080]
	ldr r1, [r7, #0x0C]
	ldr r2, _0804BAEC @ =0xFFFFFF00
	adds r1, r1, r2
	ldr r3, _0804BAF0 @ =0x0000027E
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r6, r1, r0
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
	subs r0, r0, r1
	mov r9, r0
	adds r3, #0x12
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r1, sp, #0x024
	str r1, [sp, #0x004]
	movs r2, #0x01
	ldr r3, [sp, #0x0B4]
	strb r2, [r3, #0x00]
	ldr r4, _0804BAE8 @ =0x0000020D
	adds r1, r7, r4
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r2, [sp, #0x0B8]
	strb r1, [r2, #0x00]
	adds r1, r6, #0x0
	mov r2, r9
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldrb r1, [r3, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804BAC6
	ldr r2, [r3, #0x00]
	ldr r0, _0804BAF4 @ =0x000F007F
	ands r0, r2
	ldr r1, _0804BAF8 @ =0x00030043
	cmp r0, r1
	beq _0804BAC6
	lsls r0, r2, #0x01
	lsrs r0, r0, #0x1E
	str r0, [sp, #0x080]
_0804BAC6:
	movs r4, #0x00
	mov r8, r4
	ldrb r0, [r3, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x04
	bne _0804BAFC
	ldr r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r2, _0804BAF0 @ =0x0000027E
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x01
	b _0804BB40
	.byte 0x00, 0x00
_0804BAE8: .4byte 0x0000020D
_0804BAEC: .4byte 0xFFFFFF00
_0804BAF0: .4byte 0x0000027E
_0804BAF4: .4byte 0x000F007F
_0804BAF8: .4byte 0x00030043
_0804BAFC:
	cmp r1, #0x05
	bne _0804BB2C
	ldr r1, [sp, #0x01C]
	ldr r4, _0804BB24 @ =0xFFFFFF00
	adds r1, r1, r4
	ldr r2, _0804BB28 @ =0x0000027E
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	str r1, [sp, #0x01C]
	ldr r0, [sp, #0x07C]
	ldr r4, [sp, #0x080]
	ands r0, r4
	cmp r0, #0x00
	beq _0804BB54
	movs r0, #0x80
	lsls r0, r0, #0x05
	b _0804BB52
	.byte 0x00, 0x00
_0804BB24: .4byte 0xFFFFFF00
_0804BB28: .4byte 0x0000027E
_0804BB2C:
	cmp r1, #0x06
	bne _0804BB46
	ldr r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
_0804BB40:
	subs r0, r0, r1
	str r0, [sp, #0x01C]
	b _0804BB54
_0804BB46:
	ldr r0, [sp, #0x07C]
	ldr r4, [sp, #0x080]
	ands r0, r4
	cmp r0, #0x00
	beq _0804BB54
	ldr r0, _0804BBAC @ =0xFFFFF000
_0804BB52:
	mov r8, r0
_0804BB54:
	ldr r1, [sp, #0x01C]
	ldr r2, [sp, #0x048]
	cmp r2, r1
	bge _0804BB78
	ldr r4, [sp, #0x04C]
	cmp r4, r1
	bgt _0804BB78
	mov r2, r8
	adds r0, r1, r2
	cmp r5, r0
	bge _0804BB78
	adds r5, r1, #0x0
	str r6, [sp, #0x050]
	mov r4, r9
	str r4, [sp, #0x054]
	str r3, [sp, #0x03C]
	movs r0, #0x04
	str r0, [sp, #0x060]
_0804BB78:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0804BB8A
	b _0804BCA2
_0804BB8A:
	movs r2, #0x00
	mov r8, r2
	ldrb r0, [r3, #0x02]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x04
	bne _0804BBB4
	ldr r0, [sp, #0x024]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	ldr r2, _0804BBB0 @ =0x0000027E
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x01
	b _0804BC0C
	.byte 0x00, 0x00
_0804BBAC: .4byte 0xFFFFF000
_0804BBB0: .4byte 0x0000027E
_0804BBB4:
	cmp r1, #0x05
	bne _0804BBF8
	ldr r4, _0804BBEC @ =0x0000027E
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, _0804BBF0 @ =0xFFFFFF00
	adds r2, r0, r1
	ldr r1, [sp, #0x024]
	ldr r0, _0804BBF4 @ =0x00000FFF
	ands r0, r1
	cmp r0, #0x00
	beq _0804BC20
	movs r4, #0x80
	lsls r4, r4, #0x05
	subs r0, r4, r0
	cmp r0, r2
	ble _0804BC20
	adds r0, r1, r2
	str r0, [sp, #0x024]
	ldr r2, [sp, #0x07C]
	ldr r0, [sp, #0x080]
	ands r2, r0
	cmp r2, #0x00
	beq _0804BC20
	mov r8, r4
	b _0804BC20
	.byte 0x00, 0x00
_0804BBEC: .4byte 0x0000027E
_0804BBF0: .4byte 0xFFFFFF00
_0804BBF4: .4byte 0x00000FFF
_0804BBF8:
	cmp r1, #0x06
	bne _0804BC12
	ldr r0, [sp, #0x024]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldrh r1, [r1, #0x00]
_0804BC0C:
	subs r0, r0, r1
	str r0, [sp, #0x024]
	b _0804BC20
_0804BC12:
	ldr r4, [sp, #0x07C]
	ldr r0, [sp, #0x080]
	ands r4, r0
	cmp r4, #0x00
	beq _0804BC20
	ldr r1, _0804BD0C @ =0xFFFFF000
	mov r8, r1
_0804BC20:
	ldr r1, [sp, #0x024]
	ldr r2, [sp, #0x048]
	cmp r2, r1
	bge _0804BC44
	ldr r4, [sp, #0x04C]
	cmp r4, r1
	bge _0804BC44
	mov r2, r8
	adds r0, r1, r2
	cmp r10, r0
	bge _0804BC44
	mov r10, r1
	str r6, [sp, #0x058]
	mov r4, r9
	str r4, [sp, #0x05C]
	str r3, [sp, #0x040]
	movs r6, #0x04
	str r6, [sp, #0x064]
_0804BC44:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, _0804BD10 @ =0xFFFFFF00
	adds r1, r1, r2
	movs r3, #0x9E
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r2, r2, r4
	movs r6, #0x9F
	lsls r6, r6, #0x02
	adds r3, r7, r6
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r3, #0x00
	ldr r6, [sp, #0x0B4]
	strb r3, [r6, #0x00]
	ldr r4, _0804BD14 @ =0x0000020D
	adds r3, r7, r4
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	movs r4, #0x01
	ands r3, r4
	ldr r6, [sp, #0x0B8]
	strb r3, [r6, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	blt _0804BCA2
	ldr r1, [sp, #0x044]
	cmp r1, r0
	ble _0804BCA2
	str r0, [sp, #0x044]
_0804BCA2:
	ldr r0, _0804BD18 @ =0x00FFFFFF
	ldr r2, [sp, #0x044]
	cmp r2, r0
	bne _0804BCAE
	movs r3, #0x00
	str r3, [sp, #0x044]
_0804BCAE:
	ldr r6, [sp, #0x070]
	movs r4, #0x00
	mov r9, r4
	ldr r0, [sp, #0x068]
	cmp r6, r0
	ble _0804BD30
	ldr r1, _0804BD14 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804BD4E
	ldr r2, [sp, #0x044]
	cmp r2, #0x00
	ble _0804BD4E
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r2, r3
	ldr r4, [sp, #0x06C]
	cmp r4, r0
	bge _0804BD20
	ldr r0, [sp, #0x074]
	cmp r0, r2
	ble _0804BD20
	ldr r1, _0804BD1C @ =0x0000027A
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	subs r6, r2, r0
	movs r2, #0x01
	mov r9, r2
	movs r3, #0x97
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _0804BD4E
	movs r4, #0x96
	lsls r4, r4, #0x02
	adds r1, r7, r4
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0804BD4E
	negs r0, r0
	str r0, [r1, #0x00]
	b _0804BD4E
	.byte 0x00, 0x00
_0804BD0C: .4byte 0xFFFFF000
_0804BD10: .4byte 0xFFFFFF00
_0804BD14: .4byte 0x0000020D
_0804BD18: .4byte 0x00FFFFFF
_0804BD1C: .4byte 0x0000027A
_0804BD20:
	ldr r0, [sp, #0x06C]
	cmp r0, r10
	blt _0804BD4E
	ldr r1, [sp, #0x070]
	cmp r1, r10
	bge _0804BD4E
_0804BD2C:
	mov r6, r10
	b _0804BD4E
_0804BD30:
	ldr r2, [sp, #0x068]
	cmp r6, r2
	bge _0804BD4E
	mov r3, r10
	cmp r3, #0x00
	ble _0804BD46
	ldr r4, [sp, #0x06C]
	cmp r4, r10
	ble _0804BD46
	cmp r6, r10
	blt _0804BD2C
_0804BD46:
	ldr r0, [sp, #0x070]
	cmp r0, r5
	bge _0804BD4E
	adds r6, r5, #0x0
_0804BD4E:
	movs r4, #0x00
	ldr r1, [sp, #0x040]
	ldr r3, [r1, #0x00]
	lsls r2, r3, #0x01
	adds r1, r7, #0x0
	adds r1, #0x26
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r2
	lsrs r0, r0, #0x1E
	str r1, [sp, #0x0BC]
	cmp r0, #0x00
	beq _0804BD70
	ldr r2, _0804BD84 @ =0x0000023E
	adds r0, r7, r2
	movs r1, #0x00
	ldsh r4, [r0, r1]
_0804BD70:
	movs r1, #0x00
	mov r2, r10
	cmp r2, #0x00
	ble _0804BD90
	cmp r5, r10
	blt _0804BD88
	cmp r5, r6
	ble _0804BD90
	b _0804BD96
	.byte 0x00, 0x00
_0804BD84: .4byte 0x0000023E
_0804BD88:
	adds r0, r6, r4
	cmp r10, r0
	bgt _0804BD90
	movs r1, #0x01
_0804BD90:
	cmp r1, #0x00
	bne _0804BD96
	b _0804C1D2
_0804BD96:
	lsls r0, r3, #0x0C
	lsrs r3, r0, #0x1C
	subs r0, r3, #0x4
	cmp r0, #0x02
	bls _0804BDA2
	b _0804C098
_0804BDA2:
	ldr r4, [sp, #0x040]
	ldrb r1, [r4, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x10
	bne _0804BDB0
	b _0804C098
_0804BDB0:
	subs r1, r3, #0x3
	movs r0, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	ldr r5, [sp, #0x0BC]
	ldrb r2, [r5, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r0, [sp, #0x064]
	cmp r0, #0x02
	beq _0804BE2C
	cmp r0, #0x02
	bgt _0804BDD6
	cmp r0, #0x01
	beq _0804BDE4
	b _0804C0A4
_0804BDD6:
	ldr r1, [sp, #0x064]
	cmp r1, #0x03
	beq _0804BEA8
	cmp r1, #0x04
	bne _0804BDE2
	b _0804BF54
_0804BDE2:
	b _0804C0A4
_0804BDE4:
	ldr r2, [sp, #0x040]
	ldrb r0, [r2, #0x02]
	movs r1, #0x0F
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804BDF8
	b _0804BFF0
_0804BDF8:
	cmp r1, #0x06
	beq _0804BDFE
	b _0804C0A4
_0804BDFE:
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r2, _0804BE28 @ =0x0000027E
	adds r1, r7, r2
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r2
	ldr r2, [r7, #0x10]
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r4, #0x01
	add r5, sp, #0x064
	ldrb r3, [r5, #0x00]
	ldr r5, [sp, #0x0B4]
	strb r3, [r5, #0x00]
	b _0804BE82
_0804BE28: .4byte 0x0000027E
_0804BE2C:
	ldr r1, [sp, #0x040]
	ldrb r0, [r1, #0x02]
	movs r1, #0x0F
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804BE54
	ldr r2, _0804BE4C @ =0x00000FFF
	add r10, r2
	ldr r0, _0804BE50 @ =0xFFFFF000
	mov r3, r10
	ands r3, r0
	mov r10, r3
	b _0804C0A4
_0804BE4C: .4byte 0x00000FFF
_0804BE50: .4byte 0xFFFFF000
_0804BE54:
	cmp r1, #0x06
	beq _0804BE5A
	b _0804C0A4
_0804BE5A:
	movs r4, #0xA4
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r5, _0804BE9C @ =0xFFFFFF00
	adds r1, r1, r5
	ldr r3, _0804BEA0 @ =0x0000027E
	adds r2, r7, r3
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r5, sp, #0x024
	str r5, [sp, #0x004]
	movs r4, #0x01
	ldr r3, [sp, #0x0B4]
	strb r4, [r3, #0x00]
_0804BE82:
	ldr r5, _0804BEA4 @ =0x0000020D
	adds r3, r7, r5
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r5, [sp, #0x024]
	mov r10, r5
	b _0804C0A4
_0804BE9C: .4byte 0xFFFFFF00
_0804BEA0: .4byte 0x0000027E
_0804BEA4: .4byte 0x0000020D
_0804BEA8:
	ldr r1, [sp, #0x040]
	ldrb r0, [r1, #0x02]
	movs r5, #0x0F
	adds r1, r5, #0x0
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804BF24
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r2, r3
	movs r4, #0xA0
	lsls r4, r4, #0x02
	adds r3, r7, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	mov r12, r2
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r2, [sp, #0x0B4]
	strb r4, [r2, #0x00]
	ldr r3, _0804BF20 @ =0x0000020D
	ldrb r2, [r3, r7]
	mov r8, r2
	mov r2, r8
	lsrs r3, r2, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	mov r2, r12
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x040]
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804BFBE
	ldr r2, [sp, #0x040]
	ldrb r1, [r2, #0x02]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x05
	bne _0804BFF4
	b _0804BFF0
_0804BF20: .4byte 0x0000020D
_0804BF24:
	cmp r1, #0x06
	beq _0804BF2A
	b _0804C0A4
_0804BF2A:
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r2, _0804BF50 @ =0x0000027E
	adds r1, r7, r2
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r2
	ldr r2, [r7, #0x10]
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r4, #0x01
	ldr r5, [sp, #0x0B4]
	strb r4, [r5, #0x00]
	b _0804C034
_0804BF50: .4byte 0x0000027E
_0804BF54:
	ldr r2, [sp, #0x040]
	ldrb r0, [r2, #0x02]
	movs r5, #0x0F
	adds r1, r5, #0x0
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804C008
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r2, r2, r4
	movs r4, #0xA0
	lsls r4, r4, #0x02
	adds r3, r7, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	mov r12, r2
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r2, [sp, #0x0B4]
	strb r4, [r2, #0x00]
	ldr r3, _0804BFDC @ =0x0000020D
	ldrb r2, [r3, r7]
	mov r8, r2
	mov r2, r8
	lsrs r3, r2, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	mov r2, r12
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x040]
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804BFE4
_0804BFBE:
	ldr r0, _0804BFE0 @ =0xFFFFF000
	add r0, r10
	ldr r1, [sp, #0x01C]
	cmp r1, r0
	blt _0804BFD4
	movs r0, #0x80
	lsls r0, r0, #0x05
	add r0, r10
	mov r10, r1
	cmp r10, r0
	blt _0804C0A4
_0804BFD4:
	ldr r1, [sp, #0x024]
	mov r10, r1
	b _0804C0A4
	.byte 0x00, 0x00
_0804BFDC: .4byte 0x0000020D
_0804BFE0: .4byte 0xFFFFF000
_0804BFE4:
	ldr r2, [sp, #0x040]
	ldrb r1, [r2, #0x02]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _0804BFF4
_0804BFF0:
	ldr r3, _0804C000 @ =0x00000FFF
	add r10, r3
_0804BFF4:
	ldr r0, _0804C004 @ =0xFFFFF000
	mov r4, r10
	ands r4, r0
	mov r10, r4
	b _0804C0A4
	.byte 0x00, 0x00
_0804C000: .4byte 0x00000FFF
_0804C004: .4byte 0xFFFFF000
_0804C008:
	cmp r1, #0x06
	bne _0804C0A4
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, _0804C078 @ =0xFFFFFF00
	adds r1, r1, r2
	ldr r3, _0804C07C @ =0x0000027E
	adds r2, r7, r3
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r5, sp, #0x024
	str r5, [sp, #0x004]
	movs r4, #0x01
	ldr r3, [sp, #0x0B4]
	strb r4, [r3, #0x00]
_0804C034:
	ldr r5, _0804C080 @ =0x0000020D
	adds r3, r7, r5
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r5, [sp, #0x040]
	ldr r1, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C088
	ldr r0, _0804C084 @ =0xFFFFF000
	add r0, r10
	ldr r1, [sp, #0x01C]
	cmp r1, r0
	blt _0804C070
	movs r0, #0x80
	lsls r0, r0, #0x05
	add r0, r10
	mov r10, r1
	cmp r10, r0
	blt _0804C0A4
_0804C070:
	ldr r0, [sp, #0x024]
	mov r10, r0
	b _0804C0A4
	.byte 0x00, 0x00
_0804C078: .4byte 0xFFFFFF00
_0804C07C: .4byte 0x0000027E
_0804C080: .4byte 0x0000020D
_0804C084: .4byte 0xFFFFF000
_0804C088:
	ldr r0, _0804C094 @ =0xFFFFF000
	mov r1, r10
	ands r1, r0
	mov r10, r1
	b _0804C0A4
	.byte 0x00, 0x00
_0804C094: .4byte 0xFFFFF000
_0804C098:
	ldr r2, [sp, #0x0BC]
	ldrb r1, [r2, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0804C0A4:
	mov r3, r10
	subs r2, r6, r3
	ldr r4, _0804C0C8 @ =0x0000020D
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804C0D0
	ldr r5, _0804C0CC @ =0x0000023E
	adds r0, r7, r5
	movs r6, #0x00
	ldsh r0, [r0, r6]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r0, r3
	b _0804C0D2
	.byte 0x00, 0x00
_0804C0C8: .4byte 0x0000020D
_0804C0CC: .4byte 0x0000023E
_0804C0D0:
	movs r1, #0x00
_0804C0D2:
	ldr r4, [sp, #0x034]
	cmp r4, #0x00
	bne _0804C10C
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0804C10C
	cmp r2, r1
	bgt _0804C10C
	ldr r5, _0804C1B4 @ =0x0000020D
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0804C10A
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bne _0804C10C
	ldr r6, [sp, #0x040]
	ldr r1, [r6, #0x00]
	lsls r1, r1, #0x01
	ldr r3, [sp, #0x0BC]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C10C
_0804C10A:
	movs r2, #0x00
_0804C10C:
	cmp r2, #0x00
	ble _0804C134
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bne _0804C134
	movs r4, #0x96
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	negs r0, r0
	cmp r0, r2
	blt _0804C134
	ldr r5, _0804C1B4 @ =0x0000020D
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804C134
	movs r2, #0x00
_0804C134:
	str r2, [r7, #0x18]
	mov r6, r10
	str r6, [r7, #0x14]
	ldr r1, [sp, #0x0BC]
	ldrb r0, [r1, #0x00]
	movs r1, #0x02
	orrs r0, r1
	ldr r2, [sp, #0x0BC]
	strb r0, [r2, #0x00]
	movs r3, #0x8C
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r4, [sp, #0x058]
	str r4, [r0, #0x00]
	movs r5, #0x8D
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r6, [sp, #0x05C]
	str r6, [r0, #0x00]
	ldr r0, [sp, #0x040]
	str r0, [r7, #0x20]
	ldr r1, _0804C1B4 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	movs r2, #0x84
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	orrs r1, r0
	cmp r1, #0x00
	beq _0804C1A6
	ldr r3, [sp, #0x040]
	ldrb r1, [r3, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804C1A6
	ldrb r2, [r3, #0x00]
	movs r0, #0x07
	ands r0, r2
	cmp r0, #0x03
	beq _0804C1A6
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x03
	beq _0804C1A6
	movs r0, #0x78
	ands r0, r2
	cmp r0, #0x40
	bne _0804C1B8
_0804C1A6:
	ldr r4, [sp, #0x0BC]
	ldrb r1, [r4, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	b _0804C5B0
_0804C1B4: .4byte 0x0000020D
_0804C1B8:
	ldr r5, [sp, #0x040]
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	ldr r6, [sp, #0x0BC]
	ldrb r2, [r6, #0x00]
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r6, #0x00]
	b _0804C5B0
_0804C1D2:
	ldr r1, [sp, #0x03C]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x1D
	lsrs r2, r0, #0x1D
	subs r0, r2, #0x4
	cmp r0, #0x02
	bls _0804C1E2
	b _0804C470
_0804C1E2:
	ldrb r1, [r1, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x10
	bne _0804C1EE
	b _0804C470
_0804C1EE:
	subs r1, r2, #0x3
	movs r0, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	ldr r3, [sp, #0x0BC]
	ldrb r2, [r3, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r4, [sp, #0x060]
	cmp r4, #0x02
	beq _0804C274
	cmp r4, #0x02
	bgt _0804C214
	cmp r4, #0x01
	beq _0804C222
	b _0804C47E
_0804C214:
	ldr r0, [sp, #0x060]
	cmp r0, #0x03
	beq _0804C2C0
	cmp r0, #0x04
	bne _0804C220
	b _0804C370
_0804C220:
	b _0804C47E
_0804C222:
	ldr r1, [sp, #0x03C]
	ldrb r0, [r1, #0x00]
	movs r1, #0x07
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804C240
_0804C234:
	ldr r2, _0804C23C @ =0x00000FFF
	adds r5, r5, r2
	b _0804C410
	.byte 0x00, 0x00
_0804C23C: .4byte 0x00000FFF
_0804C240:
	cmp r1, #0x06
	beq _0804C246
	b _0804C47E
_0804C246:
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r4, _0804C270 @ =0x0000027E
	adds r1, r7, r4
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r2
	ldr r2, [r7, #0x10]
	add r5, sp, #0x020
	str r5, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	add r5, sp, #0x060
	ldrb r3, [r5, #0x00]
	ldr r5, [sp, #0x0B4]
	strb r3, [r5, #0x00]
	b _0804C44C
_0804C270: .4byte 0x0000027E
_0804C274:
	ldr r1, [sp, #0x03C]
	ldrb r0, [r1, #0x00]
	movs r1, #0x07
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _0804C234
	cmp r1, #0x06
	beq _0804C28C
	b _0804C47E
_0804C28C:
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r4, _0804C2B8 @ =0xFFFFFF00
	adds r1, r1, r4
	ldr r5, _0804C2BC @ =0x0000027E
	adds r2, r7, r5
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r4, #0x01
	ldr r5, [sp, #0x0B4]
	strb r4, [r5, #0x00]
	b _0804C44C
	.byte 0x00, 0x00
_0804C2B8: .4byte 0xFFFFFF00
_0804C2BC: .4byte 0x0000027E
_0804C2C0:
	ldr r1, [sp, #0x03C]
	ldrb r0, [r1, #0x00]
	movs r2, #0x07
	mov r8, r2
	mov r1, r8
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804C340
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r2, r2, r4
	movs r4, #0xA0
	lsls r4, r4, #0x02
	adds r3, r7, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	mov r12, r2
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r2, [sp, #0x0B4]
	strb r4, [r2, #0x00]
	ldr r3, _0804C33C @ =0x0000020D
	ldrb r2, [r3, r7]
	mov r10, r2
	mov r2, r10
	lsrs r3, r2, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	mov r2, r12
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x03C]
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804C3DC
	ldr r3, [sp, #0x03C]
	ldrb r1, [r3, #0x00]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x05
	bne _0804C410
	b _0804C40C
	.byte 0x00, 0x00
_0804C33C: .4byte 0x0000020D
_0804C340:
	cmp r1, #0x06
	beq _0804C346
	b _0804C47E
_0804C346:
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r2, _0804C36C @ =0x0000027E
	adds r1, r7, r2
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r2
	ldr r2, [r7, #0x10]
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r4, #0x01
	ldr r5, [sp, #0x0B4]
	strb r4, [r5, #0x00]
	b _0804C44C
_0804C36C: .4byte 0x0000027E
_0804C370:
	ldr r1, [sp, #0x03C]
	ldrb r0, [r1, #0x00]
	movs r2, #0x07
	mov r8, r2
	mov r1, r8
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804C420
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r2, r2, r4
	movs r4, #0xA0
	lsls r4, r4, #0x02
	adds r3, r7, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	mov r12, r2
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r2, [sp, #0x0B4]
	strb r4, [r2, #0x00]
	ldr r3, _0804C3F8 @ =0x0000020D
	ldrb r2, [r3, r7]
	mov r10, r2
	mov r2, r10
	lsrs r3, r2, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	mov r2, r12
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x03C]
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C400
_0804C3DC:
	ldr r1, _0804C3FC @ =0xFFFFF000
	adds r0, r5, r1
	ldr r1, [sp, #0x01C]
	cmp r1, r0
	blt _0804C3F2
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r5, r2
	adds r5, r1, #0x0
	cmp r5, r0
	blt _0804C47E
_0804C3F2:
	ldr r5, [sp, #0x024]
	b _0804C47E
	.byte 0x00, 0x00
_0804C3F8: .4byte 0x0000020D
_0804C3FC: .4byte 0xFFFFF000
_0804C400:
	ldr r3, [sp, #0x03C]
	ldrb r1, [r3, #0x00]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x04
	bne _0804C410
_0804C40C:
	ldr r4, _0804C418 @ =0x00000FFF
	adds r5, r5, r4
_0804C410:
	ldr r0, _0804C41C @ =0xFFFFF000
	ands r5, r0
	b _0804C47E
	.byte 0x00, 0x00
_0804C418: .4byte 0x00000FFF
_0804C41C: .4byte 0xFFFFF000
_0804C420:
	cmp r1, #0x06
	bne _0804C47E
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, _0804C464 @ =0xFFFFFF00
	adds r1, r1, r2
	ldr r3, _0804C468 @ =0x0000027E
	adds r2, r7, r3
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r5, sp, #0x024
	str r5, [sp, #0x004]
	movs r4, #0x01
	ldr r3, [sp, #0x0B4]
	strb r4, [r3, #0x00]
_0804C44C:
	ldr r5, _0804C46C @ =0x0000020D
	adds r3, r7, r5
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x0B8]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r5, [sp, #0x01C]
	b _0804C47E
_0804C464: .4byte 0xFFFFFF00
_0804C468: .4byte 0x0000027E
_0804C46C: .4byte 0x0000020D
_0804C470:
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	ldr r1, [sp, #0x0BC]
	strb r0, [r1, #0x00]
_0804C47E:
	subs r2, r6, r5
	ldr r3, _0804C4A0 @ =0x0000020D
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804C4A8
	ldr r4, _0804C4A4 @ =0x0000023E
	adds r0, r7, r4
	movs r6, #0x00
	ldsh r0, [r0, r6]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r0, r3
	b _0804C4AA
	.byte 0x00, 0x00
_0804C4A0: .4byte 0x0000020D
_0804C4A4: .4byte 0x0000023E
_0804C4A8:
	movs r1, #0x00
_0804C4AA:
	ldr r4, [sp, #0x034]
	cmp r4, #0x00
	bne _0804C4E4
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0804C4E4
	cmp r2, r1
	bgt _0804C4E4
	ldr r6, _0804C594 @ =0x0000020D
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0804C4E2
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bne _0804C4E4
	ldr r0, [sp, #0x03C]
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x01
	ldr r3, [sp, #0x0BC]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C4E4
_0804C4E2:
	movs r2, #0x00
_0804C4E4:
	cmp r2, #0x00
	ble _0804C50C
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bne _0804C50C
	movs r4, #0x96
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	negs r0, r0
	cmp r0, r2
	blt _0804C50C
	ldr r6, _0804C594 @ =0x0000020D
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804C50C
	movs r2, #0x00
_0804C50C:
	str r2, [r7, #0x18]
	str r5, [r7, #0x14]
	adds r0, r5, r2
	cmp r0, #0x00
	bge _0804C51C
	movs r0, #0x00
	str r0, [r7, #0x18]
	str r0, [r7, #0x14]
_0804C51C:
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	ldr r1, [sp, #0x0BC]
	strb r0, [r1, #0x00]
	movs r2, #0x8C
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r3, [sp, #0x050]
	str r3, [r0, #0x00]
	movs r4, #0x8D
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r5, [sp, #0x054]
	str r5, [r0, #0x00]
	ldr r6, [sp, #0x03C]
	str r6, [r7, #0x20]
	ldr r1, _0804C594 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	subs r2, #0x20
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	orrs r1, r0
	cmp r1, #0x00
	beq _0804C586
	ldrb r1, [r6, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804C586
	ldrb r2, [r6, #0x00]
	movs r0, #0x07
	ands r0, r2
	cmp r0, #0x03
	beq _0804C586
	ldrb r1, [r6, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x03
	beq _0804C586
	movs r0, #0x78
	ands r0, r2
	cmp r0, #0x40
	bne _0804C598
_0804C586:
	ldr r3, [sp, #0x0BC]
	ldrb r1, [r3, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	b _0804C5B0
_0804C594: .4byte 0x0000020D
_0804C598:
	ldr r4, [sp, #0x03C]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	ldr r5, [sp, #0x0BC]
	ldrb r2, [r5, #0x00]
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x00]
_0804C5B0:
	movs r6, #0x97
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _0804C5CE
	movs r0, #0x94
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r1, [r7, #0x3C]
	ldr r0, [r7, #0x14]
	subs r1, r1, r0
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
_0804C5CE:
	mov r1, r9
	cmp r1, #0x00
	beq _0804C5EC
	ldr r0, [r7, #0x24]
	ldr r1, _0804C5E8 @ =0xFFFE7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r7, #0x24]
	ldr r3, [r7, #0x18]
	b _0804C600
	.byte 0x00, 0x00
_0804C5E8: .4byte 0xFFFE7FFF
_0804C5EC:
	ldr r3, [r7, #0x18]
	cmp r3, #0x00
	bne _0804C600
	ldr r0, [r7, #0x24]
	ldr r1, _0804C650 @ =0xFFFE7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x09
	orrs r0, r1
	str r0, [r7, #0x24]
_0804C600:
	cmp r3, #0x00
	ble _0804C670
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r2, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	bne _0804C670
	ldr r4, _0804C654 @ =0x0000020D
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804C670
	movs r0, #0x01
	ldsb r0, [r7, r0]
	cmp r0, r2
	bne _0804C670
	ldr r5, [sp, #0x034]
	cmp r5, #0x00
	bne _0804C6BC
	ldr r6, _0804C658 @ =0x0000023E
	adds r0, r7, r6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r3, r0
	bgt _0804C65C
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r1, [r0, #0x00]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	beq _0804C65C
	str r5, [r7, #0x18]
	b _0804C670
	.byte 0x00, 0x00
_0804C650: .4byte 0xFFFE7FFF
_0804C654: .4byte 0x0000020D
_0804C658: .4byte 0x0000023E
_0804C65C:
	movs r2, #0x01
	negs r2, r2
	ldr r3, _0804C838 @ =0x0000023E
	adds r0, r7, r3
	movs r4, #0x00
	ldsh r3, [r0, r4]
	adds r0, r7, #0x0
	movs r1, #0x00
	bl startAirborne__11FieldObjectiii
_0804C670:
	ldr r5, [sp, #0x034]
	cmp r5, #0x00
	bne _0804C6BC
	ldr r6, _0804C83C @ =0x0000020D
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0804C68A
	ldr r0, [sp, #0x038]
	cmp r0, #0x00
	beq _0804C6EA
_0804C68A:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	movs r4, #0x01
	ands r4, r0
	cmp r4, #0x00
	bne _0804C6BC
	adds r0, r7, #0x0
	bl sub_804D18C__20FieldPlayerCharacter
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0804C6BC
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	str r4, [r7, #0x18]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r1, r7, r2
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
_0804C6BC:
	ldr r3, [sp, #0x038]
	cmp r3, #0x00
	beq _0804C6EA
	ldr r4, _0804C83C @ =0x0000020D
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804C6EA
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	ble _0804C6EA
	movs r5, #0x97
	lsls r5, r5, #0x02
	adds r1, r7, r5
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	blt _0804C6EA
	movs r0, #0x00
	str r0, [r7, #0x18]
	subs r0, #0x01
	str r0, [r1, #0x00]
_0804C6EA:
	ldr r6, _0804C83C @ =0x0000020D
	adds r0, r7, r6
	ldrb r0, [r0, #0x00]
	mov r12, r0
	movs r0, #0x08
	mov r1, r12
	ands r0, r1
	cmp r0, #0x00
	bne _0804C700
	bl _0804D0D8
_0804C700:
	ldr r1, [r7, #0x18]
	ldr r2, [r7, #0x40]
	cmp r1, #0x00
	bne _0804C710
	cmp r2, #0x00
	bne _0804C710
	bl _0804D0D8
_0804C710:
	ldr r0, [r7, #0x14]
	adds r4, r0, r1
	ldr r0, [r7, #0x3C]
	adds r0, r0, r2
	cmp r4, r0
	blt _0804C720
	bl _0804D0D8
_0804C720:
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [r7, #0x0C]
	subs r3, r0, r1
	str r3, [sp, #0x084]
	ldr r2, _0804C840 @ =0xFFFFFF00
	adds r0, r0, r2
	adds r0, r0, r1
	adds r0, #0xFF
	ands r0, r2
	str r0, [sp, #0x088]
	ldr r3, [r7, #0x10]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r1, r3, r5
	movs r6, #0x9F
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [sp, #0x08C]
	adds r3, #0xFF
	ands r3, r2
	str r3, [sp, #0x090]
	mov r10, r4
	cmp r4, #0x00
	bge _0804C760
	movs r0, #0x00
	mov r10, r0
_0804C760:
	movs r1, #0x00
	str r1, [sp, #0x094]
	movs r2, #0x00
	str r2, [sp, #0x098]
	movs r3, #0x00
	str r3, [sp, #0x09C]
	movs r4, #0x00
	str r4, [sp, #0x0A0]
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	add r6, sp, #0x028
	mov r8, r6
	add r1, sp, #0x02C
	mov r9, r1
	str r1, [sp, #0x000]
	add r6, sp, #0x030
	str r6, [sp, #0x004]
	add r5, sp, #0x008
	movs r2, #0x01
	strb r2, [r5, #0x00]
	mov r3, r12
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x1B
	ands r1, r2
	add r4, sp, #0x00C
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x084]
	ldr r2, [sp, #0x08C]
	mov r3, r8
	bl sub_803FBA4
	str r0, [sp, #0x0A4]
	adds r1, r7, #0x0
	adds r1, #0x26
	ldrb r3, [r1, #0x00]
	movs r0, #0x0C
	ands r0, r3
	str r5, [sp, #0x0B4]
	str r4, [sp, #0x0B8]
	str r1, [sp, #0x0BC]
	mov r5, r8
	mov r4, r9
	cmp r0, #0x00
	bne _0804C7FE
	ldr r0, [sp, #0x0A4]
	ldr r2, [r0, #0x00]
	lsls r1, r2, #0x01
	lsls r0, r3, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804C7FE
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804C7E2
	ldr r0, [sp, #0x028]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	ldr r1, _0804C844 @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x028]
_0804C7E2:
	ldr r2, [sp, #0x0A4]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804C7FE
	ldr r0, [sp, #0x030]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	ldr r1, _0804C844 @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x030]
_0804C7FE:
	mov r0, r10
	cmp r0, #0x00
	ble _0804C874
	ldr r2, [sp, #0x028]
	cmp r10, r2
	bge _0804C874
	movs r3, #0x00
	ldr r0, [sp, #0x0A4]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804C862
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	mov r8, r1
	ldr r1, [sp, #0x0A4]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	mov r1, r8
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C848
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804C862
	.byte 0x00, 0x00
_0804C838: .4byte 0x0000023E
_0804C83C: .4byte 0x0000020D
_0804C840: .4byte 0xFFFFFF00
_0804C844: .4byte 0xFFFFF000
_0804C848:
	ldr r0, [sp, #0x0A4]
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	subs r0, #0x05
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804C862
	movs r0, #0x01
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	str r1, [sp, #0x09C]
_0804C862:
	mov r1, r10
	adds r0, r1, r3
	cmp r2, r0
	blt _0804C8FA
	movs r0, #0x01
	ldr r2, [sp, #0x0A0]
	orrs r2, r0
	str r2, [sp, #0x0A0]
	b _0804C8FA
_0804C874:
	ldr r0, [sp, #0x02C]
	cmp r10, r0
	blt _0804C8FA
	ldr r2, [sp, #0x030]
	cmp r10, r2
	bge _0804C8FA
	movs r3, #0x00
	ldr r0, [sp, #0x0A4]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804C8C8
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	mov r8, r1
	ldr r1, [sp, #0x0A4]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	mov r1, r8
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C8AC
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804C8E2
_0804C8AC:
	ldr r0, [sp, #0x0A4]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	subs r0, #0x05
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804C8E2
	movs r0, #0x01
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	str r1, [sp, #0x09C]
	b _0804C8E2
_0804C8C8:
	ldr r0, [sp, #0x0A4]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0E
	bne _0804C8E2
	ldr r1, [sp, #0x0A4]
	ldr r0, [r1, #0x00]
	movs r1, #0xF0
	lsls r1, r1, #0x0C
	ands r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x098]
_0804C8E2:
	mov r1, r10
	adds r0, r1, r3
	cmp r2, r0
	blt _0804C8FA
	movs r0, #0x01
	ldr r2, [sp, #0x0A0]
	orrs r2, r0
	str r2, [sp, #0x0A0]
	movs r0, #0x01
	ldr r3, [sp, #0x094]
	orrs r3, r0
	str r3, [sp, #0x094]
_0804C8FA:
	ldr r0, [sp, #0x098]
	cmp r0, #0x00
	beq _0804C902
	b _0804CD70
_0804C902:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r4, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r2, #0x01
	ldr r3, [sp, #0x0B4]
	strb r2, [r3, #0x00]
	ldr r3, _0804C9B4 @ =0x0000020D
	adds r1, r7, r3
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r2, [sp, #0x0B8]
	strb r1, [r2, #0x00]
	ldr r1, [sp, #0x088]
	ldr r2, [sp, #0x08C]
	adds r3, r5, #0x0
	bl sub_803FBA4
	str r0, [sp, #0x0A8]
	ldr r0, [sp, #0x0BC]
	ldrb r3, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r3
	cmp r0, #0x00
	bne _0804C97C
	ldr r1, [sp, #0x0A8]
	ldr r2, [r1, #0x00]
	lsls r1, r2, #0x01
	lsls r0, r3, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804C97C
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804C960
	ldr r0, [sp, #0x028]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	ldr r1, _0804C9B8 @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x028]
_0804C960:
	ldr r3, [sp, #0x0A8]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804C97C
	ldr r0, [sp, #0x030]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	ldr r1, _0804C9B8 @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x030]
_0804C97C:
	mov r2, r10
	cmp r2, #0x00
	ble _0804C9EE
	ldr r2, [sp, #0x028]
	cmp r10, r2
	bge _0804C9EE
	movs r3, #0x00
	ldr r0, [sp, #0x0A8]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804C9D8
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	mov r8, r1
	ldr r1, [sp, #0x0A8]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	mov r1, r8
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804C9BC
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804C9D8
_0804C9B4: .4byte 0x0000020D
_0804C9B8: .4byte 0xFFFFF000
_0804C9BC:
	ldr r1, [sp, #0x0A8]
	ldrb r0, [r1, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x04
	beq _0804C9CC
	cmp r1, #0x06
	bne _0804C9D8
_0804C9CC:
	movs r0, #0x02
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x09C]
_0804C9D8:
	mov r1, r10
	adds r0, r1, r3
	cmp r2, r0
	blt _0804CA7E
	movs r0, #0x02
	ldr r2, [sp, #0x0A0]
	orrs r2, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x0A0]
	b _0804CA7E
_0804C9EE:
	ldr r0, [sp, #0x02C]
	cmp r10, r0
	blt _0804CA7E
	ldr r2, [sp, #0x030]
	cmp r10, r2
	bge _0804CA7E
	movs r3, #0x00
	ldr r0, [sp, #0x0A8]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804CA44
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	mov r8, r1
	ldr r1, [sp, #0x0A8]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	mov r1, r8
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804CA26
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804CA5E
_0804CA26:
	ldr r1, [sp, #0x0A8]
	ldrb r0, [r1, #0x02]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x04
	beq _0804CA36
	cmp r1, #0x06
	bne _0804CA5E
_0804CA36:
	movs r0, #0x02
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x09C]
	b _0804CA5E
_0804CA44:
	ldr r0, [sp, #0x0A8]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0C
	bne _0804CA5E
	ldr r1, [sp, #0x0A8]
	ldr r0, [r1, #0x00]
	movs r1, #0xF0
	lsls r1, r1, #0x0C
	ands r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x098]
_0804CA5E:
	mov r1, r10
	adds r0, r1, r3
	cmp r2, r0
	blt _0804CA7E
	movs r0, #0x02
	ldr r2, [sp, #0x0A0]
	orrs r2, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x0A0]
	movs r0, #0x02
	ldr r3, [sp, #0x094]
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x094]
_0804CA7E:
	ldr r0, [sp, #0x098]
	cmp r0, #0x00
	beq _0804CA86
	b _0804CD70
_0804CA86:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r4, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r2, #0x01
	ldr r3, [sp, #0x0B4]
	strb r2, [r3, #0x00]
	ldr r3, _0804CB38 @ =0x0000020D
	adds r1, r7, r3
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r2, [sp, #0x0B8]
	strb r1, [r2, #0x00]
	ldr r1, [sp, #0x084]
	ldr r2, [sp, #0x090]
	adds r3, r5, #0x0
	bl sub_803FBA4
	str r0, [sp, #0x0AC]
	ldr r0, [sp, #0x0BC]
	ldrb r3, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r3
	cmp r0, #0x00
	bne _0804CB00
	ldr r1, [sp, #0x0AC]
	ldr r2, [r1, #0x00]
	lsls r1, r2, #0x01
	lsls r0, r3, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804CB00
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804CAE4
	ldr r0, [sp, #0x028]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	ldr r1, _0804CB3C @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x028]
_0804CAE4:
	ldr r3, [sp, #0x0AC]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804CB00
	ldr r0, [sp, #0x030]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	ldr r1, _0804CB3C @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x030]
_0804CB00:
	mov r2, r10
	cmp r2, #0x00
	ble _0804CB74
	ldr r2, [sp, #0x028]
	cmp r10, r2
	bge _0804CB74
	movs r3, #0x00
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804CB5E
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	mov r8, r1
	ldr r1, [sp, #0x0AC]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	mov r1, r8
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804CB40
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804CB5E
_0804CB38: .4byte 0x0000020D
_0804CB3C: .4byte 0xFFFFF000
_0804CB40:
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	subs r0, #0x05
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804CB5E
	movs r0, #0x04
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x09C]
_0804CB5E:
	mov r1, r10
	adds r0, r1, r3
	cmp r2, r0
	blt _0804CC06
	movs r0, #0x04
	ldr r2, [sp, #0x0A0]
	orrs r2, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x0A0]
	b _0804CC06
_0804CB74:
	ldr r0, [sp, #0x02C]
	cmp r10, r0
	blt _0804CC06
	ldr r2, [sp, #0x030]
	cmp r10, r2
	bge _0804CC06
	movs r3, #0x00
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804CBCC
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	mov r8, r1
	ldr r1, [sp, #0x0AC]
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	mov r1, r8
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804CBAC
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804CBE6
_0804CBAC:
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	subs r0, #0x05
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804CBE6
	movs r0, #0x04
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x09C]
	b _0804CBE6
_0804CBCC:
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0F
	bne _0804CBE6
	ldr r1, [sp, #0x0AC]
	ldr r0, [r1, #0x00]
	movs r1, #0xF0
	lsls r1, r1, #0x0C
	ands r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x098]
_0804CBE6:
	mov r1, r10
	adds r0, r1, r3
	cmp r2, r0
	blt _0804CC06
	movs r0, #0x04
	ldr r2, [sp, #0x0A0]
	orrs r2, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x0A0]
	movs r0, #0x04
	ldr r3, [sp, #0x094]
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x094]
_0804CC06:
	ldr r0, [sp, #0x098]
	cmp r0, #0x00
	beq _0804CC0E
	b _0804CD70
_0804CC0E:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r4, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r2, #0x01
	ldr r3, [sp, #0x0B4]
	strb r2, [r3, #0x00]
	ldr r4, _0804CCBC @ =0x0000020D
	adds r1, r7, r4
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x03
	ands r1, r2
	ldr r6, [sp, #0x0B8]
	strb r1, [r6, #0x00]
	ldr r1, [sp, #0x088]
	ldr r2, [sp, #0x090]
	adds r3, r5, #0x0
	bl sub_803FBA4
	str r0, [sp, #0x0B0]
	ldr r0, [sp, #0x0BC]
	ldrb r3, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r3
	cmp r0, #0x00
	bne _0804CC88
	ldr r1, [sp, #0x0B0]
	ldr r2, [r1, #0x00]
	lsls r1, r2, #0x01
	lsls r0, r3, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804CC88
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804CC6C
	ldr r0, [sp, #0x028]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	ldr r1, _0804CCC0 @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x028]
_0804CC6C:
	ldr r3, [sp, #0x0B0]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804CC88
	ldr r0, [sp, #0x030]
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r0, r0, r4
	ldr r1, _0804CCC0 @ =0xFFFFF000
	ands r0, r1
	str r0, [sp, #0x030]
_0804CC88:
	mov r5, r10
	cmp r5, #0x00
	ble _0804CCF6
	ldr r2, [sp, #0x028]
	cmp r10, r2
	bge _0804CCF6
	movs r3, #0x00
	ldr r6, [sp, #0x0B0]
	ldrb r1, [r6, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804CCE0
	ldr r0, [sp, #0x0BC]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	ldr r0, [r6, #0x00]
	lsls r0, r0, #0x01
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804CCC4
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804CCE0
	.byte 0x00, 0x00
_0804CCBC: .4byte 0x0000020D
_0804CCC0: .4byte 0xFFFFF000
_0804CCC4:
	ldr r1, [sp, #0x0B0]
	ldrb r0, [r1, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x04
	beq _0804CCD4
	cmp r1, #0x06
	bne _0804CCE0
_0804CCD4:
	movs r0, #0x08
	ldr r4, [sp, #0x09C]
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x09C]
_0804CCE0:
	mov r5, r10
	adds r0, r5, r3
	cmp r2, r0
	blt _0804CD70
	movs r0, #0x08
	ldr r6, [sp, #0x0A0]
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x0A0]
	b _0804CD70
_0804CCF6:
	ldr r0, [sp, #0x02C]
	cmp r10, r0
	blt _0804CD70
	ldr r2, [sp, #0x030]
	cmp r10, r2
	bge _0804CD70
	movs r3, #0x00
	ldr r0, [sp, #0x0B0]
	ldrb r1, [r0, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _0804CD48
	ldr r4, [sp, #0x0BC]
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x1A
	ldr r5, [sp, #0x0B0]
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804CD2A
	movs r3, #0x80
	lsls r3, r3, #0x05
	b _0804CD50
_0804CD2A:
	ldr r6, [sp, #0x0B0]
	ldrb r0, [r6, #0x02]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x04
	beq _0804CD3A
	cmp r1, #0x06
	bne _0804CD50
_0804CD3A:
	movs r0, #0x08
	ldr r1, [sp, #0x09C]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x09C]
	b _0804CD50
_0804CD48:
	ldr r4, [sp, #0x0B0]
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
_0804CD50:
	mov r5, r10
	adds r0, r5, r3
	cmp r2, r0
	blt _0804CD70
	movs r0, #0x08
	ldr r6, [sp, #0x0A0]
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x0A0]
	movs r0, #0x08
	ldr r1, [sp, #0x094]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x094]
_0804CD70:
	ldr r2, [sp, #0x0A0]
	cmp r2, #0x00
	bne _0804CD78
	b _0804D0D8
_0804CD78:
	movs r3, #0x00
	movs r1, #0x03
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x03
	bne _0804CD88
	movs r3, #0x01
	b _0804CD94
_0804CD88:
	movs r1, #0x0C
	ldr r0, [sp, #0x0A0]
	ands r0, r1
	cmp r0, #0x0C
	bne _0804CD94
	movs r3, #0x04
_0804CD94:
	movs r1, #0x05
	ldr r0, [sp, #0x0A0]
	ands r0, r1
	cmp r0, #0x05
	bne _0804CDA4
	movs r0, #0x08
	orrs r3, r0
	b _0804CDB6
_0804CDA4:
	movs r1, #0x0A
	ldr r0, [sp, #0x0A0]
	ands r0, r1
	cmp r0, #0x0A
	bne _0804CDB6
	movs r0, #0x02
	orrs r3, r0
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
_0804CDB6:
	cmp r3, #0x00
	bne _0804CE10
	ldr r4, [sp, #0x0A0]
	ldr r5, [sp, #0x09C]
	bics r4, r5
	str r4, [sp, #0x0A0]
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _0804CDD4
	ldr r1, _0804CE58 @ =0x083A0A58
	ldrb r0, [r7, #0x02]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
_0804CDD4:
	movs r0, #0x02
	ldr r6, [sp, #0x0A0]
	ands r0, r6
	cmp r0, #0x00
	beq _0804CDE8
	ldr r1, _0804CE5C @ =0x083A0A60
	ldrb r0, [r7, #0x02]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
_0804CDE8:
	movs r0, #0x04
	ldr r1, [sp, #0x0A0]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CDFC
	ldr r1, _0804CE60 @ =0x083A0A68
	ldrb r0, [r7, #0x02]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
_0804CDFC:
	movs r0, #0x08
	ldr r2, [sp, #0x0A0]
	ands r0, r2
	cmp r0, #0x00
	beq _0804CE10
	ldr r1, _0804CE64 @ =0x083A0A70
	ldrb r0, [r7, #0x02]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
_0804CE10:
	movs r1, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0804CED4
	ldr r4, [sp, #0x08C]
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r2, r4, r5
	ldr r0, _0804CE68 @ =0xFFFFF000
	ands r2, r0
	ldr r0, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CE3A
	ldr r6, [sp, #0x0A4]
	ldrb r1, [r6, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x08
	beq _0804CE50
_0804CE3A:
	movs r0, #0x02
	ldr r1, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CE70
	ldr r4, [sp, #0x0A8]
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x08
	bne _0804CE70
_0804CE50:
	ldr r5, _0804CE6C @ =0xFFFFF800
	adds r2, r2, r5
	b _0804CEB6
	.byte 0x00, 0x00
_0804CE58: .4byte 0x083A0A58
_0804CE5C: .4byte 0x083A0A60
_0804CE60: .4byte 0x083A0A68
_0804CE64: .4byte 0x083A0A70
_0804CE68: .4byte 0xFFFFF000
_0804CE6C: .4byte 0xFFFFF800
_0804CE70:
	movs r0, #0x01
	ldr r6, [sp, #0x094]
	ands r0, r6
	cmp r0, #0x00
	beq _0804CE94
	ldr r0, [sp, #0x0A4]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0E
	bne _0804CE94
	ldr r0, _0804CE90 @ =0x00000FFF
	ldr r1, [sp, #0x084]
	ands r0, r1
	subs r2, r2, r0
	b _0804CEB6
_0804CE90: .4byte 0x00000FFF
_0804CE94:
	movs r0, #0x02
	ldr r4, [sp, #0x094]
	ands r0, r4
	cmp r0, #0x00
	beq _0804CEB6
	ldr r5, [sp, #0x0A8]
	ldrb r1, [r5, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0C
	bne _0804CEB6
	ldr r6, _0804CEC8 @ =0xFFFFF000
	adds r1, r2, r6
	ldr r0, _0804CECC @ =0x00000FFF
	ldr r2, [sp, #0x088]
	ands r0, r2
	adds r2, r1, r0
_0804CEB6:
	movs r4, #0x9F
	lsls r4, r4, #0x02
	adds r1, r7, r4
	ldr r5, _0804CED0 @ =0xFFFFFF00
	adds r0, r2, r5
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	b _0804CF68
	.byte 0x00, 0x00
_0804CEC8: .4byte 0xFFFFF000
_0804CECC: .4byte 0x00000FFF
_0804CED0: .4byte 0xFFFFFF00
_0804CED4:
	movs r1, #0x04
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0804CF6A
	ldr r2, _0804CF18 @ =0xFFFFF000
	ldr r6, [sp, #0x090]
	ands r2, r6
	ldr r0, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CEF8
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x09
	beq _0804CF0E
_0804CEF8:
	movs r0, #0x08
	ldr r1, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CF1C
	ldr r4, [sp, #0x0B0]
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x09
	bne _0804CF1C
_0804CF0E:
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r2, r2, r5
	b _0804CF64
	.byte 0x00, 0x00
_0804CF18: .4byte 0xFFFFF000
_0804CF1C:
	movs r0, #0x04
	ldr r6, [sp, #0x094]
	ands r0, r6
	cmp r0, #0x00
	beq _0804CF40
	ldr r0, [sp, #0x0AC]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0F
	bne _0804CF40
	ldr r0, _0804CF3C @ =0x00000FFF
	ldr r1, [sp, #0x084]
	ands r0, r1
	adds r2, r2, r0
	b _0804CF64
_0804CF3C: .4byte 0x00000FFF
_0804CF40:
	movs r0, #0x08
	ldr r4, [sp, #0x094]
	ands r0, r4
	cmp r0, #0x00
	beq _0804CF64
	ldr r5, [sp, #0x0B0]
	ldrb r1, [r5, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _0804CF64
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r2, r6
	ldr r0, _0804CFB4 @ =0x00000FFF
	ldr r2, [sp, #0x088]
	ands r0, r2
	subs r2, r1, r0
_0804CF64:
	ldr r4, _0804CFB8 @ =0xFFFFFF00
	adds r0, r2, r4
_0804CF68:
	str r0, [r7, #0x10]
_0804CF6A:
	movs r4, #0x08
	adds r0, r3, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0804D020
	ldr r5, [sp, #0x084]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r2, r5, r6
	ldr r0, _0804CFBC @ =0xFFFFF000
	ands r2, r0
	movs r0, #0x01
	ldr r1, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CF96
	ldr r3, [sp, #0x0A4]
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0B
	beq _0804CFAC
_0804CF96:
	movs r0, #0x04
	ldr r4, [sp, #0x094]
	ands r0, r4
	cmp r0, #0x00
	beq _0804CFC4
	ldr r5, [sp, #0x0AC]
	ldrb r1, [r5, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0B
	bne _0804CFC4
_0804CFAC:
	ldr r6, _0804CFC0 @ =0xFFFFF800
	adds r2, r2, r6
	b _0804D00A
	.byte 0x00, 0x00
_0804CFB4: .4byte 0x00000FFF
_0804CFB8: .4byte 0xFFFFFF00
_0804CFBC: .4byte 0xFFFFF000
_0804CFC0: .4byte 0xFFFFF800
_0804CFC4:
	movs r0, #0x01
	ldr r1, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804CFE8
	ldr r3, [sp, #0x0A4]
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0E
	bne _0804CFE8
	ldr r0, _0804CFE4 @ =0x00000FFF
	ldr r4, [sp, #0x08C]
	ands r4, r0
	subs r2, r2, r4
	b _0804D00A
_0804CFE4: .4byte 0x00000FFF
_0804CFE8:
	movs r0, #0x04
	ldr r5, [sp, #0x094]
	ands r5, r0
	cmp r5, #0x00
	beq _0804D00A
	ldr r6, [sp, #0x0AC]
	ldrb r1, [r6, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0F
	bne _0804D00A
	ldr r0, _0804D018 @ =0xFFFFF000
	adds r1, r2, r0
	ldr r0, _0804D01C @ =0x00000FFF
	ldr r2, [sp, #0x090]
	ands r2, r0
	adds r2, r1, r2
_0804D00A:
	movs r3, #0x9E
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r0, r2, r0
	b _0804D0B8
_0804D018: .4byte 0xFFFFF000
_0804D01C: .4byte 0x00000FFF
_0804D020:
	movs r1, #0x02
	ands r3, r1
	cmp r3, #0x00
	beq _0804D0BA
	ldr r2, _0804D060 @ =0xFFFFF000
	ldr r5, [sp, #0x088]
	ands r2, r5
	ldr r0, [sp, #0x094]
	ands r0, r1
	cmp r0, #0x00
	beq _0804D042
	ldr r6, [sp, #0x0A8]
	ldrb r1, [r6, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0A
	beq _0804D056
_0804D042:
	ldr r0, [sp, #0x094]
	ands r0, r4
	cmp r0, #0x00
	beq _0804D064
	ldr r0, [sp, #0x0B0]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0A
	bne _0804D064
_0804D056:
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r2, r2, r1
	b _0804D0AC
	.byte 0x00, 0x00
_0804D060: .4byte 0xFFFFF000
_0804D064:
	movs r0, #0x02
	ldr r3, [sp, #0x094]
	ands r0, r3
	cmp r0, #0x00
	beq _0804D088
	ldr r4, [sp, #0x0A8]
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0C
	bne _0804D088
	ldr r0, _0804D084 @ =0x00000FFF
	ldr r5, [sp, #0x08C]
	ands r5, r0
	adds r2, r2, r5
	b _0804D0AC
_0804D084: .4byte 0x00000FFF
_0804D088:
	movs r0, #0x08
	ldr r6, [sp, #0x094]
	ands r6, r0
	cmp r6, #0x00
	beq _0804D0AC
	ldr r0, [sp, #0x0B0]
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _0804D0AC
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r1, r2, r3
	ldr r0, _0804D0E8 @ =0x00000FFF
	ldr r4, [sp, #0x090]
	ands r4, r0
	subs r2, r1, r4
_0804D0AC:
	movs r5, #0x9E
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r0, r2, r0
_0804D0B8:
	str r0, [r7, #0x0C]
_0804D0BA:
	adds r3, r7, #0x0
	adds r3, #0x25
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	ldr r6, [sp, #0x0A0]
	orrs r1, r6
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x79
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0804D0D8:
	add sp, #0x0C4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804D0E8: .4byte 0x00000FFF
