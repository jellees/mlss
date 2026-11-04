	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start method15__11FieldObjectUc
method15__11FieldObjectUc:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x074
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x028]
	cmp r1, #0x00
	beq _0804464A
	b _08044762
_0804464A:
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08044660
	bl _080457D4
_08044660:
	ldr r2, _0804473C @ =0x00000216
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r2, #0x20
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08044674
	bl _080457D4
_08044674:
	ldr r4, _08044740 @ =0x0000020D
	adds r0, r6, r4
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08044762
	movs r5, #0x84
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08044762
	ldr r0, [r6, #0x34]
	ldr r3, [r6, #0x0C]
	ldr r4, [r6, #0x10]
	cmp r3, r0
	bne _080446B6
	ldr r0, [r6, #0x38]
	cmp r4, r0
	bne _080446B6
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x3C]
	cmp r1, r0
	bne _080446B6
	ldr r1, [r6, #0x18]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	bne _080446B6
	bl _080457D4
_080446B6:
	movs r7, #0xA4
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r0, [r0, #0x00]
	add r1, sp, #0x014
	str r1, [sp, #0x000]
	add r1, sp, #0x018
	str r1, [sp, #0x004]
	add r2, sp, #0x008
	movs r1, #0x00
	strb r1, [r2, #0x00]
	ldr r2, _08044740 @ =0x0000020D
	adds r1, r6, r2
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
	str r0, [r6, #0x20]
	movs r3, #0x00
	ldr r2, [sp, #0x018]
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	beq _08044700
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r0, r0, r1
	cmp r0, r2
	blt _08044700
	movs r3, #0x01
_08044700:
	adds r2, r6, #0x0
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
	adds r1, r6, r3
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r4, #0x8D
	lsls r4, r4, #0x02
	adds r1, r6, r4
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	ands r0, r1
	mov r8, r2
	cmp r0, #0x00
	beq _08044744
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r0, r0, r1
	ldr r1, [sp, #0x018]
	b _0804474C
_0804473C: .4byte 0x00000216
_08044740: .4byte 0x0000020D
_08044744:
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r0, r0, r1
	ldr r1, [sp, #0x010]
_0804474C:
	subs r0, r0, r1
	str r0, [r6, #0x18]
	str r1, [r6, #0x14]
	mov r5, r8
	ldrb r1, [r5, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
	bl _080457D4
_08044762:
	ldr r1, [r6, #0x0C]
	ldr r0, [r6, #0x34]
	ldr r5, [r6, #0x14]
	ldr r4, [r6, #0x3C]
	ldr r3, [r6, #0x40]
	cmp r1, r0
	bne _0804478C
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x38]
	cmp r1, r0
	bne _0804478C
	cmp r5, r4
	bne _0804478C
	ldr r2, [r6, #0x18]
	cmp r2, r3
	bne _0804478C
	ldr r7, [sp, #0x028]
	cmp r7, #0x00
	bne _0804478C
	bl _08045764
_0804478C:
	movs r0, #0x00
	str r0, [sp, #0x02C]
	movs r7, #0x00
	movs r1, #0x00
	str r1, [sp, #0x048]
	movs r2, #0x00
	str r2, [sp, #0x04C]
	adds r4, r4, r3
	str r4, [sp, #0x050]
	ldr r3, _0804485C @ =0x0000027A
	adds r0, r6, r3
	ldrh r0, [r0, #0x00]
	adds r0, r4, r0
	str r0, [sp, #0x054]
	ldr r0, [r6, #0x18]
	adds r5, r5, r0
	str r5, [sp, #0x058]
	movs r4, #0xA4
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r0, [r0, #0x00]
	mov r9, r0
	ldr r5, [r6, #0x0C]
	mov r10, r5
	ldr r0, [r6, #0x10]
	mov r12, r0
	add r1, sp, #0x01C
	mov r8, r1
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r2, sp, #0x024
	str r2, [sp, #0x004]
	movs r4, #0x00
	ldr r5, _08044860 @ =0x0000020D
	adds r0, r6, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080447EC
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080447EE
_080447EC:
	movs r4, #0x01
_080447EE:
	add r5, sp, #0x008
	strb r4, [r5, #0x00]
	ldr r2, _08044860 @ =0x0000020D
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	movs r1, #0x01
	ands r0, r1
	add r4, sp, #0x00C
	strb r0, [r4, #0x00]
	mov r0, r9
	mov r1, r10
	mov r2, r12
	mov r3, r8
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x030]
	ldr r2, [r3, #0x00]
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	str r5, [sp, #0x06C]
	str r4, [sp, #0x070]
	cmp r0, #0x03
	bls _0804482C
	ldr r1, [sp, #0x030]
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r1, r4
	str r1, [sp, #0x030]
_0804482C:
	movs r5, #0x84
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08044864
	ldr r0, [sp, #0x024]
	str r0, [sp, #0x034]
	cmp r0, #0x00
	blt _0804486C
	lsls r0, r2, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x03
	bls _0804486C
	cmp r0, #0x06
	bhi _0804486C
	ldr r1, [sp, #0x034]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r1, r2
	str r1, [sp, #0x034]
	b _0804486C
_0804485C: .4byte 0x0000027A
_08044860: .4byte 0x0000020D
_08044864:
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x024]
	str r0, [sp, #0x034]
_0804486C:
	ldr r5, [sp, #0x01C]
	ldr r4, [r6, #0x0C]
	str r4, [sp, #0x038]
	ldr r0, [r6, #0x10]
	str r0, [sp, #0x03C]
	mov r10, r3
	ldr r0, [sp, #0x024]
	cmp r7, r0
	bge _0804488A
	adds r7, r0, #0x0
	str r4, [sp, #0x040]
	ldr r1, [sp, #0x03C]
	str r1, [sp, #0x044]
	mov r2, r10
	str r2, [sp, #0x02C]
_0804488A:
	ldr r3, _08044BA8 @ =0x0000027E
	adds r0, r6, r3
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r4, [sp, #0x038]
	subs r4, r4, r0
	mov r9, r4
	ldr r0, [sp, #0x03C]
	mov r8, r0
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	add r3, sp, #0x01C
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r0, sp, #0x024
	str r0, [sp, #0x004]
	movs r2, #0x00
	subs r1, #0x83
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080448CE
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080448D0
_080448CE:
	movs r2, #0x01
_080448D0:
	ldr r0, [sp, #0x06C]
	strb r2, [r0, #0x00]
	ldr r1, _08044BAC @ =0x0000020D
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	movs r1, #0x01
	ands r0, r1
	ldr r2, [sp, #0x070]
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldrb r1, [r3, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x05
	bne _08044908
	ldr r4, _08044BA8 @ =0x0000027E
	adds r0, r6, r4
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [sp, #0x01C]
	subs r0, r0, r1
	str r0, [sp, #0x01C]
_08044908:
	ldr r0, [sp, #0x01C]
	ldr r1, [sp, #0x030]
	cmp r1, r0
	bge _0804493C
	ldr r2, [sp, #0x034]
	cmp r2, r0
	bgt _0804493C
	cmp r5, r0
	bge _0804493C
	adds r5, r0, #0x0
	mov r4, r9
	str r4, [sp, #0x038]
	mov r0, r8
	str r0, [sp, #0x03C]
	mov r10, r3
	movs r1, #0x01
	str r1, [sp, #0x048]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804493C
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r2, r5, r2
	str r2, [sp, #0x030]
_0804493C:
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804499A
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x05
	bne _08044964
	ldr r1, _08044BA8 @ =0x0000027E
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [sp, #0x024]
	subs r0, r0, r1
	str r0, [sp, #0x024]
_08044964:
	ldr r0, [sp, #0x024]
	ldr r2, [sp, #0x030]
	cmp r2, r0
	bge _0804499A
	ldr r4, [sp, #0x034]
	cmp r4, r0
	bge _0804499A
	cmp r7, r0
	bge _0804499A
	adds r7, r0, #0x0
	mov r0, r9
	str r0, [sp, #0x040]
	mov r1, r8
	str r1, [sp, #0x044]
	str r3, [sp, #0x02C]
	movs r2, #0x01
	str r2, [sp, #0x04C]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _0804499A
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r3, r7, r3
	str r3, [sp, #0x034]
_0804499A:
	ldr r1, [r6, #0x0C]
	ldr r4, _08044BB0 @ =0xFFFFFF00
	adds r1, r1, r4
	ldr r2, _08044BA8 @ =0x0000027E
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	mov r9, r1
	ldr r3, [r6, #0x10]
	mov r8, r3
	movs r4, #0xA4
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r4, [r0, #0x00]
	add r3, sp, #0x01C
	add r0, sp, #0x020
	str r0, [sp, #0x000]
	add r1, sp, #0x024
	str r1, [sp, #0x004]
	movs r2, #0x00
	ldr r1, _08044BAC @ =0x0000020D
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080449E2
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080449E4
_080449E2:
	movs r2, #0x01
_080449E4:
	ldr r0, [sp, #0x06C]
	strb r2, [r0, #0x00]
	ldr r1, _08044BAC @ =0x0000020D
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	movs r1, #0x01
	ands r0, r1
	ldr r2, [sp, #0x070]
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldrb r1, [r3, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x04
	bne _08044A22
	ldr r0, [sp, #0x01C]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	ldr r2, _08044BA8 @ =0x0000027E
	adds r1, r6, r2
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x01
	subs r0, r0, r1
	str r0, [sp, #0x01C]
_08044A22:
	ldr r0, [sp, #0x01C]
	ldr r4, [sp, #0x030]
	cmp r4, r0
	bge _08044A56
	ldr r1, [sp, #0x034]
	cmp r1, r0
	bgt _08044A56
	cmp r5, r0
	bge _08044A56
	adds r5, r0, #0x0
	mov r2, r9
	str r2, [sp, #0x038]
	mov r4, r8
	str r4, [sp, #0x03C]
	mov r10, r3
	movs r0, #0x02
	str r0, [sp, #0x048]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _08044A56
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r1, r5, r1
	str r1, [sp, #0x030]
_08044A56:
	movs r2, #0x84
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08044ABA
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x04
	bne _08044A84
	ldr r0, [sp, #0x024]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	adds r2, #0x6E
	adds r1, r6, r2
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x01
	subs r0, r0, r1
	str r0, [sp, #0x024]
_08044A84:
	ldr r0, [sp, #0x024]
	ldr r4, [sp, #0x030]
	cmp r4, r0
	bge _08044ABA
	ldr r1, [sp, #0x034]
	cmp r1, r0
	bge _08044ABA
	cmp r7, r0
	bge _08044ABA
	adds r7, r0, #0x0
	mov r2, r9
	str r2, [sp, #0x040]
	mov r4, r8
	str r4, [sp, #0x044]
	str r3, [sp, #0x02C]
	movs r0, #0x02
	str r0, [sp, #0x04C]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	cmp r0, #0x02
	bhi _08044ABA
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r1, r7, r1
	str r1, [sp, #0x034]
_08044ABA:
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r2, r6, r2
	str r2, [sp, #0x060]
	ldr r3, [r2, #0x00]
	mov r8, r3
	ldr r1, [r6, #0x0C]
	ldr r2, _08044BB4 @ =0xFFFFF000
	ands r1, r2
	cmp r1, #0x00
	bge _08044AD4
	ldr r0, _08044BB8 @ =0x00000FFF
	adds r1, r1, r0
_08044AD4:
	lsls r0, r1, #0x04
	asrs r3, r0, #0x10
	ldr r1, [r6, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r1, r1, r4
	movs r0, #0xA0
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldrh r0, [r4, #0x00]
	subs r1, r1, r0
	ands r1, r2
	cmp r1, #0x00
	bge _08044AF4
	ldr r0, _08044BB8 @ =0x00000FFF
	adds r1, r1, r0
_08044AF4:
	lsls r2, r1, #0x04
	asrs r2, r2, #0x10
	mov r0, r8
	adds r1, r3, #0x0
	bl get_coldef_ptr_by_xz
	str r0, [sp, #0x05C]
	movs r1, #0x00
	str r1, [sp, #0x064]
	ldr r2, _08044BA8 @ =0x0000027E
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [r6, #0x0C]
	subs r1, r1, r0
	mov r9, r1
	ldr r0, [r6, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	ldrh r1, [r4, #0x00]
	subs r0, r0, r1
	mov r8, r0
	ldr r0, [sp, #0x060]
	ldr r4, [r0, #0x00]
	add r3, sp, #0x01C
	add r1, sp, #0x020
	str r1, [sp, #0x000]
	add r2, sp, #0x024
	str r2, [sp, #0x004]
	movs r2, #0x00
	ldr r1, _08044BAC @ =0x0000020D
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08044B50
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08044B52
_08044B50:
	movs r2, #0x01
_08044B52:
	ldr r0, [sp, #0x06C]
	strb r2, [r0, #0x00]
	ldr r1, _08044BAC @ =0x0000020D
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	movs r1, #0x01
	ands r0, r1
	ldr r2, [sp, #0x070]
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldrb r1, [r3, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _08044B8E
	ldr r2, [r3, #0x00]
	ldr r0, _08044BBC @ =0x000F007F
	ands r0, r2
	ldr r1, _08044BC0 @ =0x00030043
	cmp r0, r1
	beq _08044B8E
	lsls r0, r2, #0x01
	lsrs r0, r0, #0x1E
	str r0, [sp, #0x064]
_08044B8E:
	ldrb r0, [r3, #0x00]
	movs r4, #0x07
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x05
	bne _08044BC4
	ldr r4, _08044BA8 @ =0x0000027E
	adds r0, r6, r4
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [sp, #0x01C]
	b _08044C14
	.byte 0x00, 0x00
_08044BA8: .4byte 0x0000027E
_08044BAC: .4byte 0x0000020D
_08044BB0: .4byte 0xFFFFFF00
_08044BB4: .4byte 0xFFFFF000
_08044BB8: .4byte 0x00000FFF
_08044BBC: .4byte 0x000F007F
_08044BC0: .4byte 0x00030043
_08044BC4:
	cmp r1, #0x04
	bne _08044C00
	ldr r1, _08044BF8 @ =0x0000027E
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [sp, #0x01C]
	adds r2, r1, r0
	str r2, [sp, #0x01C]
	ldr r0, [sp, #0x05C]
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x04
	beq _08044C18
	ldr r4, [sp, #0x05C]
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x04
	beq _08044C18
	ldr r0, _08044BFC @ =0xFFFFF000
	ands r2, r0
	str r2, [sp, #0x01C]
	b _08044C18
	.byte 0x00, 0x00
_08044BF8: .4byte 0x0000027E
_08044BFC: .4byte 0xFFFFF000
_08044C00:
	cmp r1, #0x06
	bne _08044C18
	ldr r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldrh r1, [r1, #0x00]
_08044C14:
	subs r0, r0, r1
	str r0, [sp, #0x01C]
_08044C18:
	ldr r0, [sp, #0x01C]
	ldr r4, [sp, #0x030]
	cmp r4, r0
	bge _08044C3A
	ldr r1, [sp, #0x034]
	cmp r1, r0
	bgt _08044C3A
	cmp r5, r0
	bge _08044C3A
	adds r5, r0, #0x0
	mov r2, r9
	str r2, [sp, #0x038]
	mov r4, r8
	str r4, [sp, #0x03C]
	mov r10, r3
	movs r0, #0x03
	str r0, [sp, #0x048]
_08044C3A:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08044CDE
	ldrb r0, [r3, #0x02]
	movs r4, #0x0F
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x05
	bne _08044C68
	ldr r2, _08044C64 @ =0x0000027E
	adds r0, r6, r2
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldr r0, [sp, #0x024]
	b _08044CB8
	.byte 0x00, 0x00
_08044C64: .4byte 0x0000027E
_08044C68:
	cmp r1, #0x04
	bne _08044CA4
	ldr r1, _08044C9C @ =0x0000027E
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [sp, #0x024]
	adds r2, r1, r0
	str r2, [sp, #0x024]
	ldr r0, [sp, #0x05C]
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x04
	beq _08044CBC
	ldr r0, [sp, #0x05C]
	ldrb r1, [r0, #0x02]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x04
	beq _08044CBC
	ldr r0, _08044CA0 @ =0xFFFFF000
	ands r2, r0
	str r2, [sp, #0x024]
	b _08044CBC
	.byte 0x00, 0x00
_08044C9C: .4byte 0x0000027E
_08044CA0: .4byte 0xFFFFF000
_08044CA4:
	cmp r1, #0x06
	bne _08044CBC
	ldr r0, [sp, #0x024]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldrh r1, [r1, #0x00]
_08044CB8:
	subs r0, r0, r1
	str r0, [sp, #0x024]
_08044CBC:
	ldr r0, [sp, #0x024]
	ldr r4, [sp, #0x030]
	cmp r4, r0
	bge _08044CDE
	ldr r1, [sp, #0x034]
	cmp r1, r0
	bge _08044CDE
	cmp r7, r0
	bge _08044CDE
	adds r7, r0, #0x0
	mov r2, r9
	str r2, [sp, #0x040]
	mov r4, r8
	str r4, [sp, #0x044]
	str r3, [sp, #0x02C]
	movs r0, #0x03
	str r0, [sp, #0x04C]
_08044CDE:
	movs r1, #0x00
	str r1, [sp, #0x068]
	ldr r1, [r6, #0x0C]
	ldr r2, _08044D98 @ =0xFFFFFF00
	adds r1, r1, r2
	ldr r3, _08044D9C @ =0x0000027E
	adds r0, r6, r3
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	mov r9, r1
	ldr r0, [r6, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldrh r1, [r1, #0x00]
	subs r0, r0, r1
	mov r8, r0
	adds r3, #0x12
	adds r0, r6, r3
	ldr r4, [r0, #0x00]
	add r3, sp, #0x01C
	add r0, sp, #0x020
	str r0, [sp, #0x000]
	add r1, sp, #0x024
	str r1, [sp, #0x004]
	movs r2, #0x00
	ldr r1, _08044DA0 @ =0x0000020D
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08044D38
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08044D3A
_08044D38:
	movs r2, #0x01
_08044D3A:
	ldr r0, [sp, #0x06C]
	strb r2, [r0, #0x00]
	ldr r1, _08044DA0 @ =0x0000020D
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	movs r1, #0x01
	ands r0, r1
	ldr r2, [sp, #0x070]
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldrb r1, [r3, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _08044D76
	ldr r2, [r3, #0x00]
	ldr r0, _08044DA4 @ =0x000F007F
	ands r0, r2
	ldr r1, _08044DA8 @ =0x00030043
	cmp r0, r1
	beq _08044D76
	lsls r0, r2, #0x01
	lsrs r0, r0, #0x1E
	str r0, [sp, #0x068]
_08044D76:
	movs r4, #0x00
	mov r12, r4
	ldrb r0, [r3, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x04
	bne _08044DAC
	ldr r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r2, _08044D9C @ =0x0000027E
	adds r1, r6, r2
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x01
	b _08044DF0
	.byte 0x00, 0x00
_08044D98: .4byte 0xFFFFFF00
_08044D9C: .4byte 0x0000027E
_08044DA0: .4byte 0x0000020D
_08044DA4: .4byte 0x000F007F
_08044DA8: .4byte 0x00030043
_08044DAC:
	cmp r1, #0x05
	bne _08044DDC
	ldr r1, [sp, #0x01C]
	ldr r4, _08044DD4 @ =0xFFFFFF00
	adds r1, r1, r4
	ldr r2, _08044DD8 @ =0x0000027E
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	str r1, [sp, #0x01C]
	ldr r0, [sp, #0x064]
	ldr r4, [sp, #0x068]
	ands r0, r4
	cmp r0, #0x00
	beq _08044E04
	movs r0, #0x80
	lsls r0, r0, #0x05
	b _08044E02
	.byte 0x00, 0x00
_08044DD4: .4byte 0xFFFFFF00
_08044DD8: .4byte 0x0000027E
_08044DDC:
	cmp r1, #0x06
	bne _08044DF6
	ldr r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldrh r1, [r1, #0x00]
_08044DF0:
	subs r0, r0, r1
	str r0, [sp, #0x01C]
	b _08044E04
_08044DF6:
	ldr r0, [sp, #0x064]
	ldr r4, [sp, #0x068]
	ands r0, r4
	cmp r0, #0x00
	beq _08044E04
	ldr r0, _08044E5C @ =0xFFFFF000
_08044E02:
	mov r12, r0
_08044E04:
	ldr r1, [sp, #0x01C]
	ldr r2, [sp, #0x030]
	cmp r2, r1
	bge _08044E2A
	ldr r4, [sp, #0x034]
	cmp r4, r1
	bgt _08044E2A
	mov r2, r12
	adds r0, r1, r2
	cmp r5, r0
	bge _08044E2A
	adds r5, r1, #0x0
	mov r4, r9
	str r4, [sp, #0x038]
	mov r0, r8
	str r0, [sp, #0x03C]
	mov r10, r3
	movs r1, #0x04
	str r1, [sp, #0x048]
_08044E2A:
	movs r2, #0x84
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08044EF2
	movs r4, #0x00
	mov r12, r4
	ldrb r0, [r3, #0x02]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x04
	bne _08044E60
	ldr r0, [sp, #0x024]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	adds r2, #0x6E
	adds r1, r6, r2
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x01
	b _08044EB8
	.byte 0x00, 0x00
_08044E5C: .4byte 0xFFFFF000
_08044E60:
	cmp r1, #0x05
	bne _08044EA4
	ldr r4, _08044E98 @ =0x0000027E
	adds r0, r6, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, _08044E9C @ =0xFFFFFF00
	adds r2, r0, r1
	ldr r1, [sp, #0x024]
	ldr r0, _08044EA0 @ =0x00000FFF
	ands r0, r1
	cmp r0, #0x00
	beq _08044ECC
	movs r4, #0x80
	lsls r4, r4, #0x05
	subs r0, r4, r0
	cmp r0, r2
	ble _08044ECC
	adds r0, r1, r2
	str r0, [sp, #0x024]
	ldr r2, [sp, #0x064]
	ldr r0, [sp, #0x068]
	ands r2, r0
	cmp r2, #0x00
	beq _08044ECC
	mov r12, r4
	b _08044ECC
	.byte 0x00, 0x00
_08044E98: .4byte 0x0000027E
_08044E9C: .4byte 0xFFFFFF00
_08044EA0: .4byte 0x00000FFF
_08044EA4:
	cmp r1, #0x06
	bne _08044EBE
	ldr r0, [sp, #0x024]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldrh r1, [r1, #0x00]
_08044EB8:
	subs r0, r0, r1
	str r0, [sp, #0x024]
	b _08044ECC
_08044EBE:
	ldr r4, [sp, #0x064]
	ldr r0, [sp, #0x068]
	ands r4, r0
	cmp r4, #0x00
	beq _08044ECC
	ldr r1, _08044F10 @ =0xFFFFF000
	mov r12, r1
_08044ECC:
	ldr r1, [sp, #0x024]
	ldr r2, [sp, #0x030]
	cmp r2, r1
	bge _08044EF2
	ldr r4, [sp, #0x034]
	cmp r4, r1
	bge _08044EF2
	mov r2, r12
	adds r0, r1, r2
	cmp r7, r0
	bge _08044EF2
	adds r7, r1, #0x0
	mov r4, r9
	str r4, [sp, #0x040]
	mov r0, r8
	str r0, [sp, #0x044]
	str r3, [sp, #0x02C]
	movs r1, #0x04
	str r1, [sp, #0x04C]
_08044EF2:
	ldr r2, [sp, #0x058]
	mov r9, r2
	ldr r3, [sp, #0x050]
	cmp r9, r3
	bge _08044F1C
	cmp r7, #0x00
	ble _08044F14
	ldr r4, [sp, #0x054]
	cmp r4, r7
	ble _08044F14
	cmp r9, r7
	bge _08044F14
	mov r9, r7
	b _08044F1C
	.byte 0x00, 0x00
_08044F10: .4byte 0xFFFFF000
_08044F14:
	ldr r0, [sp, #0x058]
	cmp r0, r5
	bge _08044F1C
	mov r9, r5
_08044F1C:
	movs r4, #0x00
	ldr r1, [sp, #0x02C]
	ldr r3, [r1, #0x00]
	lsls r2, r3, #0x01
	adds r1, r6, #0x0
	adds r1, #0x26
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r2
	lsrs r0, r0, #0x1E
	mov r8, r1
	cmp r0, #0x00
	beq _08044F3E
	ldr r2, _08044F50 @ =0x0000023E
	adds r0, r6, r2
	movs r1, #0x00
	ldsh r4, [r0, r1]
_08044F3E:
	movs r1, #0x00
	cmp r7, #0x00
	ble _08044F5E
	cmp r5, r7
	blt _08044F54
	cmp r5, r9
	ble _08044F5E
	b _08044F64
	.byte 0x00, 0x00
_08044F50: .4byte 0x0000023E
_08044F54:
	mov r2, r9
	adds r0, r2, r4
	cmp r7, r0
	bgt _08044F5E
	movs r1, #0x01
_08044F5E:
	cmp r1, #0x00
	bne _08044F64
	b _08045388
_08044F64:
	lsls r0, r3, #0x0C
	lsrs r1, r0, #0x1C
	subs r0, r1, #0x4
	cmp r0, #0x02
	bls _08044F70
	b _080452B0
_08044F70:
	subs r1, #0x03
	movs r0, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	mov r3, r8
	ldrb r2, [r3, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r4, [sp, #0x04C]
	cmp r4, #0x02
	beq _08045008
	cmp r4, #0x02
	bgt _08044F96
	cmp r4, #0x01
	beq _08044FA4
	b _080452BC
_08044F96:
	ldr r5, [sp, #0x04C]
	cmp r5, #0x03
	beq _0804506C
	cmp r5, #0x04
	bne _08044FA2
	b _08045184
_08044FA2:
	b _080452BC
_08044FA4:
	ldr r1, [sp, #0x02C]
	ldrb r0, [r1, #0x02]
	movs r1, #0x0F
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _08044FC0
_08044FB6:
	ldr r2, _08044FBC @ =0x00000FFF
	adds r7, r7, r2
	b _080452A4
_08044FBC: .4byte 0x00000FFF
_08044FC0:
	cmp r1, #0x06
	beq _08044FC6
	b _080452BC
_08044FC6:
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	ldr r4, _08045000 @ =0x0000027E
	adds r1, r6, r4
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r6, #0x0C]
	subs r1, r1, r2
	ldr r2, [r6, #0x10]
	add r5, sp, #0x020
	str r5, [sp, #0x000]
	add r7, sp, #0x024
	str r7, [sp, #0x004]
	movs r4, #0x01
	add r3, sp, #0x04C
	ldrb r5, [r3, #0x00]
	ldr r3, [sp, #0x06C]
	strb r5, [r3, #0x00]
	ldr r5, _08045004 @ =0x0000020D
	adds r3, r6, r5
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r7, [sp, #0x070]
	strb r3, [r7, #0x00]
	b _08045056
	.byte 0x00, 0x00
_08045000: .4byte 0x0000027E
_08045004: .4byte 0x0000020D
_08045008:
	ldr r1, [sp, #0x02C]
	ldrb r0, [r1, #0x02]
	movs r1, #0x0F
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _08044FB6
	cmp r1, #0x06
	beq _08045020
	b _080452BC
_08045020:
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r4, _08045060 @ =0xFFFFFF00
	adds r1, r1, r4
	ldr r5, _08045064 @ =0x0000027E
	adds r2, r6, r5
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r6, #0x10]
	add r7, sp, #0x020
	str r7, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r5, [sp, #0x06C]
	strb r4, [r5, #0x00]
	ldr r7, _08045068 @ =0x0000020D
	adds r3, r6, r7
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x070]
	strb r3, [r4, #0x00]
_08045056:
	add r3, sp, #0x01C
	bl sub_803FBA4
_0804505C:
	ldr r7, [sp, #0x024]
	b _080452BC
_08045060: .4byte 0xFFFFFF00
_08045064: .4byte 0x0000027E
_08045068: .4byte 0x0000020D
_0804506C:
	ldr r5, [sp, #0x02C]
	ldrb r0, [r5, #0x02]
	movs r5, #0x0F
	adds r1, r5, #0x0
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _08045108
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r2, r3
	movs r4, #0xA0
	lsls r4, r4, #0x02
	adds r3, r6, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	mov r12, r2
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r2, [sp, #0x06C]
	strb r4, [r2, #0x00]
	ldr r3, _080450F0 @ =0x0000020D
	ldrb r2, [r3, r6]
	mov r10, r2
	mov r2, r10
	lsrs r3, r2, #0x03
	ands r3, r4
	ldr r4, [sp, #0x070]
	strb r3, [r4, #0x00]
	mov r2, r12
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x02C]
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _080450F8
	ldr r1, _080450F4 @ =0xFFFFF000
	adds r0, r7, r1
	ldr r1, [sp, #0x01C]
	cmp r1, r0
	blt _0804505C
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r7, r2
	adds r7, r1, #0x0
	cmp r7, r0
	bge _080450EE
	b _080452BC
_080450EE:
	b _0804505C
_080450F0: .4byte 0x0000020D
_080450F4: .4byte 0xFFFFF000
_080450F8:
	ldr r3, [sp, #0x02C]
	ldrb r1, [r3, #0x02]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x05
	beq _08045106
	b _080452A4
_08045106:
	b _0804521C
_08045108:
	cmp r1, #0x06
	beq _0804510E
	b _080452BC
_0804510E:
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r0, [r0, #0x00]
	ldr r2, _08045178 @ =0x0000027E
	adds r1, r6, r2
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r6, #0x0C]
	subs r1, r1, r2
	ldr r2, [r6, #0x10]
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r4, #0x01
	ldr r5, [sp, #0x06C]
	strb r4, [r5, #0x00]
	ldr r5, _0804517C @ =0x0000020D
	adds r3, r6, r5
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x070]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r5, [sp, #0x02C]
	ldr r1, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804515A
	b _080452A4
_0804515A:
	ldr r1, _08045180 @ =0xFFFFF000
	adds r0, r7, r1
	ldr r1, [sp, #0x01C]
	cmp r1, r0
	bge _08045166
	b _0804505C
_08045166:
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r7, r2
	adds r7, r1, #0x0
	cmp r7, r0
	bge _08045174
	b _080452BC
_08045174:
	b _0804505C
	.byte 0x00, 0x00
_08045178: .4byte 0x0000027E
_0804517C: .4byte 0x0000020D
_08045180: .4byte 0xFFFFF000
_08045184:
	ldr r3, [sp, #0x02C]
	ldrb r0, [r3, #0x02]
	movs r5, #0x0F
	adds r1, r5, #0x0
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _08045228
	movs r4, #0xA4
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r2, r3
	subs r4, #0x10
	adds r3, r6, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	mov r12, r2
	add r2, sp, #0x020
	str r2, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r2, [sp, #0x06C]
	strb r4, [r2, #0x00]
	ldr r3, _08045208 @ =0x0000020D
	ldrb r2, [r3, r6]
	mov r10, r2
	mov r2, r10
	lsrs r3, r2, #0x03
	ands r3, r4
	ldr r4, [sp, #0x070]
	strb r3, [r4, #0x00]
	mov r2, r12
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r0, [sp, #0x02C]
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08045210
	ldr r1, _0804520C @ =0xFFFFF000
	adds r0, r7, r1
	ldr r1, [sp, #0x01C]
	cmp r1, r0
	bge _080451F8
	b _0804505C
_080451F8:
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r7, r2
	adds r7, r1, #0x0
	cmp r7, r0
	blt _080452BC
	b _0804505C
	.byte 0x00, 0x00
_08045208: .4byte 0x0000020D
_0804520C: .4byte 0xFFFFF000
_08045210:
	ldr r3, [sp, #0x02C]
	ldrb r1, [r3, #0x02]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _080452A4
_0804521C:
	ldr r4, _08045224 @ =0x00000FFF
	adds r7, r7, r4
	b _080452A4
	.byte 0x00, 0x00
_08045224: .4byte 0x00000FFF
_08045228:
	cmp r1, #0x06
	bne _080452BC
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r2, _08045294 @ =0xFFFFFF00
	adds r1, r1, r2
	ldr r3, _08045298 @ =0x0000027E
	adds r2, r6, r3
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r6, #0x10]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r5, sp, #0x024
	str r5, [sp, #0x004]
	movs r4, #0x01
	ldr r3, [sp, #0x06C]
	strb r4, [r3, #0x00]
	ldr r5, _0804529C @ =0x0000020D
	adds r3, r6, r5
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x070]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	ldr r5, [sp, #0x02C]
	ldr r1, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _080452A4
	ldr r1, _080452A0 @ =0xFFFFF000
	adds r0, r7, r1
	ldr r1, [sp, #0x01C]
	cmp r1, r0
	bge _08045286
	b _0804505C
_08045286:
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r7, r2
	adds r7, r1, #0x0
	cmp r7, r0
	blt _080452BC
	b _0804505C
_08045294: .4byte 0xFFFFFF00
_08045298: .4byte 0x0000027E
_0804529C: .4byte 0x0000020D
_080452A0: .4byte 0xFFFFF000
_080452A4:
	ldr r0, _080452AC @ =0xFFFFF000
	ands r7, r0
	b _080452BC
	.byte 0x00, 0x00
_080452AC: .4byte 0xFFFFF000
_080452B0:
	mov r3, r8
	ldrb r1, [r3, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
_080452BC:
	mov r4, r9
	subs r2, r4, r7
	ldr r5, [sp, #0x028]
	cmp r5, #0x00
	bne _08045308
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bne _08045308
	ldr r1, _08045380 @ =0x0000023E
	adds r0, r6, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	cmp r2, r0
	bgt _08045308
	ldr r5, _08045384 @ =0x0000020D
	adds r0, r6, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08045306
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bne _08045308
	ldr r0, [sp, #0x02C]
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x01
	mov r3, r8
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08045308
_08045306:
	movs r2, #0x00
_08045308:
	str r2, [r6, #0x18]
	str r7, [r6, #0x14]
	mov r4, r8
	ldrb r0, [r4, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r5, #0x8C
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r7, [sp, #0x040]
	str r7, [r0, #0x00]
	movs r1, #0x8D
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [sp, #0x044]
	str r2, [r0, #0x00]
	ldr r3, [sp, #0x02C]
	str r3, [r6, #0x20]
	ldr r4, _08045384 @ =0x0000020D
	adds r0, r6, r4
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	subs r5, #0x20
	adds r0, r6, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	orrs r1, r0
	cmp r1, #0x00
	bne _0804534E
	b _080456E4
_0804534E:
	ldrb r1, [r3, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	bne _0804535A
	b _080456E4
_0804535A:
	ldrb r2, [r3, #0x00]
	movs r0, #0x07
	ands r0, r2
	cmp r0, #0x03
	bne _08045366
	b _080456E4
_08045366:
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x03
	bne _08045372
	b _080456E4
_08045372:
	movs r0, #0x78
	ands r0, r2
	cmp r0, #0x40
	bne _0804537C
	b _080456E4
_0804537C:
	ldr r1, [sp, #0x02C]
	b _080456FE
_08045380: .4byte 0x0000023E
_08045384: .4byte 0x0000020D
_08045388:
	mov r4, r10
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r1, r0, #0x1D
	subs r0, r1, #0x4
	cmp r0, #0x02
	bls _08045398
	b _08045610
_08045398:
	subs r1, #0x03
	movs r0, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	mov r7, r8
	ldrb r2, [r7, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x00]
	ldr r0, [sp, #0x048]
	cmp r0, #0x02
	beq _08045430
	cmp r0, #0x02
	bgt _080453BE
	cmp r0, #0x01
	beq _080453CC
	b _0804561E
_080453BE:
	ldr r1, [sp, #0x048]
	cmp r1, #0x03
	beq _08045468
	cmp r1, #0x04
	bne _080453CA
	b _0804551C
_080453CA:
	b _0804561E
_080453CC:
	mov r2, r10
	ldrb r0, [r2, #0x00]
	movs r1, #0x07
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _080453E8
	ldr r3, _080453E4 @ =0x00000FFF
	adds r5, r5, r3
	b _080455B0
_080453E4: .4byte 0x00000FFF
_080453E8:
	cmp r1, #0x06
	beq _080453EE
	b _0804561E
_080453EE:
	movs r4, #0xA4
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r0, [r0, #0x00]
	ldr r5, _08045428 @ =0x0000027E
	adds r1, r6, r5
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r6, #0x0C]
	subs r1, r1, r2
	ldr r2, [r6, #0x10]
	add r7, sp, #0x020
	str r7, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	add r5, sp, #0x048
	ldrb r7, [r5, #0x00]
	ldr r5, [sp, #0x06C]
	strb r7, [r5, #0x00]
	ldr r7, _0804542C @ =0x0000020D
	adds r3, r6, r7
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x070]
	strb r3, [r4, #0x00]
	b _080455FA
	.byte 0x00, 0x00
_08045428: .4byte 0x0000027E
_0804542C: .4byte 0x0000020D
_08045430:
	mov r7, r10
	ldrb r0, [r7, #0x00]
	movs r1, #0x07
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0804544C
	ldr r0, _08045448 @ =0x00000FFF
	adds r5, r5, r0
	b _080455B0
_08045448: .4byte 0x00000FFF
_0804544C:
	cmp r1, #0x06
	beq _08045452
	b _0804561E
_08045452:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r2, _08045464 @ =0xFFFFFF00
	adds r1, r1, r2
	b _080455D2
	.byte 0x00, 0x00
_08045464: .4byte 0xFFFFFF00
_08045468:
	mov r1, r10
	ldrb r0, [r1, #0x00]
	movs r1, #0x07
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _080454DC
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r2, r3
	movs r4, #0xA0
	lsls r4, r4, #0x02
	adds r3, r6, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	add r7, sp, #0x020
	str r7, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r7, [sp, #0x06C]
	strb r4, [r7, #0x00]
	ldr r7, _080454D8 @ =0x0000020D
	adds r3, r6, r7
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x070]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	mov r7, r10
	ldr r1, [r7, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804557E
	mov r3, r10
	ldrb r1, [r3, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x05
	bne _080455B0
	b _080455AC
_080454D8: .4byte 0x0000020D
_080454DC:
	cmp r1, #0x06
	beq _080454E2
	b _0804561E
_080454E2:
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r0, [r0, #0x00]
	ldr r7, _08045518 @ =0x0000027E
	adds r1, r6, r7
	ldrh r2, [r1, #0x00]
	lsrs r2, r2, #0x01
	ldr r1, [r6, #0x0C]
	subs r1, r1, r2
	ldr r2, [r6, #0x10]
	add r3, sp, #0x020
	str r3, [sp, #0x000]
	add r4, sp, #0x024
	str r4, [sp, #0x004]
	movs r4, #0x01
	ldr r5, [sp, #0x06C]
	strb r4, [r5, #0x00]
	subs r7, #0x71
	adds r3, r6, r7
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x070]
	strb r3, [r4, #0x00]
	b _080455FA
	.byte 0x00, 0x00
_08045518: .4byte 0x0000027E
_0804551C:
	mov r7, r10
	ldrb r0, [r7, #0x00]
	movs r1, #0x07
	ands r1, r0
	subs r0, r1, #0x4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _080455C0
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r2, r3
	movs r4, #0xA0
	lsls r4, r4, #0x02
	adds r3, r6, r4
	ldrh r3, [r3, #0x00]
	subs r2, r2, r3
	add r7, sp, #0x020
	str r7, [sp, #0x000]
	add r3, sp, #0x024
	str r3, [sp, #0x004]
	movs r4, #0x01
	ldr r7, [sp, #0x06C]
	strb r4, [r7, #0x00]
	ldr r7, _08045598 @ =0x0000020D
	adds r3, r6, r7
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r4, [sp, #0x070]
	strb r3, [r4, #0x00]
	add r3, sp, #0x01C
	bl sub_803FBA4
	adds r3, r0, #0x0
	mov r7, r10
	ldr r1, [r7, #0x00]
	ldr r0, [r3, #0x00]
	ands r0, r1
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _080455A0
_0804557E:
	ldr r1, _0804559C @ =0xFFFFF000
	adds r0, r5, r1
	ldr r1, [sp, #0x01C]
	cmp r1, r0
	blt _08045594
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r5, r2
	adds r5, r1, #0x0
	cmp r5, r0
	blt _0804561E
_08045594:
	ldr r5, [sp, #0x024]
	b _0804561E
_08045598: .4byte 0x0000020D
_0804559C: .4byte 0xFFFFF000
_080455A0:
	mov r3, r10
	ldrb r1, [r3, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x04
	bne _080455B0
_080455AC:
	ldr r4, _080455B8 @ =0x00000FFF
	adds r5, r5, r4
_080455B0:
	ldr r0, _080455BC @ =0xFFFFF000
	ands r5, r0
	b _0804561E
	.byte 0x00, 0x00
_080455B8: .4byte 0x00000FFF
_080455BC: .4byte 0xFFFFF000
_080455C0:
	cmp r1, #0x06
	bne _0804561E
	movs r5, #0xA4
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r7, _08045604 @ =0xFFFFFF00
	adds r1, r1, r7
_080455D2:
	ldr r3, _08045608 @ =0x0000027E
	adds r2, r6, r3
	ldrh r2, [r2, #0x00]
	lsrs r2, r2, #0x01
	adds r1, r1, r2
	ldr r2, [r6, #0x10]
	add r4, sp, #0x020
	str r4, [sp, #0x000]
	add r5, sp, #0x024
	str r5, [sp, #0x004]
	movs r4, #0x01
	ldr r7, [sp, #0x06C]
	strb r4, [r7, #0x00]
	ldr r5, _0804560C @ =0x0000020D
	adds r3, r6, r5
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	ands r3, r4
	ldr r7, [sp, #0x070]
	strb r3, [r7, #0x00]
_080455FA:
	add r3, sp, #0x01C
	bl sub_803FBA4
	ldr r5, [sp, #0x01C]
	b _0804561E
_08045604: .4byte 0xFFFFFF00
_08045608: .4byte 0x0000027E
_0804560C: .4byte 0x0000020D
_08045610:
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	mov r1, r8
	strb r0, [r1, #0x00]
_0804561E:
	mov r3, r9
	subs r2, r3, r5
	ldr r4, [sp, #0x028]
	cmp r4, #0x00
	bne _0804566A
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bne _0804566A
	ldr r7, _080456F4 @ =0x0000023E
	adds r0, r6, r7
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	cmp r2, r0
	bgt _0804566A
	ldr r4, _080456F8 @ =0x0000020D
	adds r0, r6, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08045668
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bne _0804566A
	mov r7, r10
	ldr r1, [r7, #0x00]
	lsls r1, r1, #0x01
	mov r3, r8
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804566A
_08045668:
	movs r2, #0x00
_0804566A:
	str r2, [r6, #0x18]
	str r5, [r6, #0x14]
	adds r0, r5, r2
	cmp r0, #0x00
	bge _0804567A
	movs r0, #0x00
	str r0, [r6, #0x18]
	str r0, [r6, #0x14]
_0804567A:
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0x8C
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r5, [sp, #0x038]
	str r5, [r0, #0x00]
	movs r7, #0x8D
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r1, [sp, #0x03C]
	str r1, [r0, #0x00]
	mov r2, r10
	str r2, [r6, #0x20]
	ldr r3, _080456F8 @ =0x0000020D
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	subs r4, #0x20
	adds r0, r6, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	orrs r1, r0
	cmp r1, #0x00
	beq _080456E4
	ldrb r1, [r2, #0x03]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x00
	beq _080456E4
	ldrb r2, [r2, #0x00]
	movs r0, #0x07
	ands r0, r2
	cmp r0, #0x03
	beq _080456E4
	mov r5, r10
	ldrb r1, [r5, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x03
	beq _080456E4
	movs r0, #0x78
	ands r0, r2
	cmp r0, #0x40
	bne _080456FC
_080456E4:
	mov r7, r8
	ldrb r1, [r7, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r7, #0x00]
	b _08045714
	.byte 0x00, 0x00
_080456F4: .4byte 0x0000023E
_080456F8: .4byte 0x0000020D
_080456FC:
	mov r1, r10
_080456FE:
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	mov r3, r8
	ldrb r2, [r3, #0x00]
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
_08045714:
	movs r4, #0x97
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _08045732
	movs r5, #0x94
	lsls r5, r5, #0x02
	adds r2, r6, r5
	ldr r1, [r6, #0x3C]
	ldr r0, [r6, #0x14]
	subs r1, r1, r0
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
_08045732:
	movs r0, #0x00
	cmp r0, #0x00
	beq _08045750
	ldr r0, [r6, #0x24]
	ldr r1, _0804574C @ =0xFFFE7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r6, #0x24]
	ldr r2, [r6, #0x18]
	b _08045764
	.byte 0x00, 0x00
_0804574C: .4byte 0xFFFE7FFF
_08045750:
	ldr r2, [r6, #0x18]
	cmp r2, #0x00
	bne _08045764
	ldr r0, [r6, #0x24]
	ldr r1, _080457B4 @ =0xFFFE7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x09
	orrs r0, r1
	str r0, [r6, #0x24]
_08045764:
	cmp r2, #0x00
	ble _080457D4
	movs r7, #0x97
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldr r3, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r3, r0
	bne _080457D4
	ldr r1, _080457B8 @ =0x0000020D
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080457D4
	movs r0, #0x01
	ldsb r0, [r6, r0]
	cmp r0, r3
	bne _080457D4
	ldr r3, [sp, #0x028]
	cmp r3, #0x00
	bne _080457D4
	ldr r4, _080457BC @ =0x0000023E
	adds r0, r6, r4
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r2, r0
	bgt _080457C0
	adds r0, r6, #0x0
	adds r0, #0x26
	ldrb r1, [r0, #0x00]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	beq _080457C0
	str r3, [r6, #0x18]
	b _080457D4
	.byte 0x00, 0x00
_080457B4: .4byte 0xFFFE7FFF
_080457B8: .4byte 0x0000020D
_080457BC: .4byte 0x0000023E
_080457C0:
	movs r2, #0x01
	negs r2, r2
	ldr r7, _080457E4 @ =0x0000023E
	adds r0, r6, r7
	movs r1, #0x00
	ldsh r3, [r0, r1]
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_80401F0__11FieldObjectiii
_080457D4:
	add sp, #0x074
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080457E4: .4byte 0x0000023E
