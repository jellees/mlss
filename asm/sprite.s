	.include "asm/macros.inc"

	.syntax unified
	.text


	thumb_func_start sub_8020DD0
sub_8020DD0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	str r0, [sp, #0x010]
	mov r10, r1
	str r2, [sp, #0x014]
	mov r8, r3
	ldr r0, [sp, #0x054]
	mov r9, r0
	ldr r6, [sp, #0x05C]
	movs r4, #0x01
	negs r4, r4
	cmp r10, r4
	bne _08020DF4
	b _08021026
_08020DF4:
	movs r3, #0xF0
	lsls r3, r3, #0x08
	mov r0, r10
	ands r0, r3
	cmp r0, #0x00
	beq _08020E0C
	asrs r0, r1, #0x0C
	subs r0, #0x01
	str r0, [sp, #0x010]
	ldr r0, _08020E3C @ =0x00000FFF
	ands r1, r0
	mov r10, r1
_08020E0C:
	ldr r0, _08020E40 @ =0x0839EE60
	ldr r5, [sp, #0x010]
	lsls r2, r5, #0x02
	adds r0, r2, r0
	mov r5, r10
	lsls r1, r5, #0x02
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsrs r0, r1, #0x1F
	str r0, [sp, #0x018]
	lsls r0, r1, #0x05
	lsrs r0, r0, #0x17
	str r0, [sp, #0x01C]
	lsls r0, r1, #0x0E
	lsrs r0, r0, #0x17
	str r0, [sp, #0x020]
	cmp r6, r4
	bne _08020E44
	ldr r3, [sp, #0x010]
	str r3, [sp, #0x024]
	lsls r0, r1, #0x17
	lsrs r6, r0, #0x17
	b _08020E60
_08020E3C: .4byte 0x00000FFF
_08020E40: .4byte 0x0839EE60
_08020E44:
	adds r0, r6, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _08020E5C
	asrs r0, r6, #0x0C
	subs r0, #0x01
	str r0, [sp, #0x024]
	ldr r0, _08020E58 @ =0x00000FFF
	ands r6, r0
	b _08020E60
_08020E58: .4byte 0x00000FFF
_08020E5C:
	ldr r5, [sp, #0x010]
	str r5, [sp, #0x024]
_08020E60:
	ldr r0, _08020EBC @ =0x0839EE8C
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldr r7, [r0, #0x00]
	ldr r0, _08020EC0 @ =0x0839EEB8
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	ldr r5, [sp, #0x020]
	lsls r0, r5, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [sp, #0x028]
	ldr r0, _08020EC4 @ =0x0839EF3C
	ldr r1, [sp, #0x024]
	lsls r2, r1, #0x02
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x02C]
	ldr r0, _08020EC8 @ =0x0300034C
	ldr r3, _08020ECC @ =0x00000888
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	ldr r3, _08020ED0 @ =0x0839EEE4
	cmp r0, #0x02
	bne _08020EDC
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08020EDC
	ldr r0, _08020ED4 @ =0x0203FFB8
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08020EDC
	ldr r0, _08020ED8 @ =0x0839EF10
	adds r0, r2, r0
	b _08020EDE
_08020EBC: .4byte 0x0839EE8C
_08020EC0: .4byte 0x0839EEB8
_08020EC4: .4byte 0x0839EF3C
_08020EC8: .4byte 0x0300034C
_08020ECC: .4byte 0x00000888
_08020ED0: .4byte 0x0839EEE4
_08020ED4: .4byte 0x0203FFB8
_08020ED8: .4byte 0x0839EF10
_08020EDC:
	adds r0, r2, r3
_08020EDE:
	ldr r1, [r0, #0x00]
	lsls r0, r6, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x030]
	movs r0, #0x01
	negs r0, r0
	cmp r8, r0
	bne _08020F18
	ldrb r0, [r7, #0x04]
	ldrb r2, [r7, #0x05]
	movs r1, #0x01
	ands r1, r2
	lsls r1, r1, #0x08
	orrs r0, r1
	adds r4, r0, #0x1
	ldr r5, [sp, #0x018]
	cmp r5, #0x00
	bne _08020F0E
	ldr r0, [sp, #0x028]
	bl sub_80198B0
	lsrs r3, r0, #0x05
	b _08020F10
_08020F0E:
	movs r3, #0x00
_08020F10:
	mov r8, r3
	cmp r8, r4
	bge _08020F18
	mov r8, r4
_08020F18:
	movs r0, #0x01
	negs r0, r0
	cmp r9, r0
	bne _08020F34
	ldr r0, [sp, #0x014]
	cmp r0, #0x01
	bne _08020F32
	ldrb r0, [r7, #0x03]
	lsrs r0, r0, #0x01
	mov r9, r0
	movs r1, #0x01
	add r9, r1
	b _08020F34
_08020F32:
	mov r9, r8
_08020F34:
	mov r2, r8
	lsls r2, r2, #0x05
	mov r8, r2
	mov r3, r9
	lsls r3, r3, #0x05
	mov r9, r3
	ldrb r1, [r7, #0x00]
	ldrb r0, [r7, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	subs r1, r7, r1
	ldrb r2, [r7, #0x06]
	movs r0, #0x7F
	ands r0, r2
	adds r2, r0, #0x1
	ldrb r1, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	ldr r5, [sp, #0x058]
	cmp r5, r0
	bne _08020F66
	adds r0, r2, #0x0
	muls r0, r1
	adds r0, #0x01
	str r0, [sp, #0x058]
_08020F66:
	ldr r0, [sp, #0x058]
	adds r0, #0x03
	str r0, [sp, #0x058]
	movs r0, #0x04
	negs r0, r0
	ldr r1, [sp, #0x058]
	ands r1, r0
	str r1, [sp, #0x058]
	movs r0, #0x01
	movs r1, #0x6C
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_heap_alloc
	adds r5, r0, #0x0
	ldr r0, _08021008 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x6C
	bl _call_via_r3
	ldrb r0, [r5, #0x10]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0x78
	strh r0, [r5, #0x00]
	movs r0, #0x50
	strh r0, [r5, #0x02]
	adds r0, #0xB0
	strh r0, [r5, #0x04]
	strh r0, [r5, #0x06]
	strh r0, [r5, #0x08]
	strh r0, [r5, #0x0A]
	ldrb r0, [r5, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #0x12]
	ldr r3, [sp, #0x02C]
	lsls r2, r3, #0x04
	ldrb r1, [r5, #0x13]
	movs r3, #0x0F
	movs r4, #0x0F
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x13]
	mov r0, r10
	strh r0, [r5, #0x16]
	mov r1, sp
	ldrh r1, [r1, #0x1C]
	strh r1, [r5, #0x1A]
	mov r2, sp
	ldrh r2, [r2, #0x20]
	strh r2, [r5, #0x18]
	strh r6, [r5, #0x1C]
	ldr r0, [sp, #0x010]
	ands r0, r3
	str r0, [sp, #0x010]
	ldrb r1, [r5, #0x1E]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	ldr r1, [sp, #0x010]
	orrs r0, r1
	ldr r2, [sp, #0x024]
	lsls r1, r2, #0x04
	ands r0, r4
	orrs r0, r1
	strb r0, [r5, #0x1E]
	mov r3, r9
	strh r3, [r5, #0x30]
	mov r0, r8
	str r0, [sp, #0x000]
	ldr r1, [sp, #0x014]
	cmp r1, #0x01
	bne _0802100C
	ldr r2, [sp, #0x058]
	str r2, [sp, #0x004]
	b _08021010
_08021008: .4byte 0x03001034
_0802100C:
	movs r0, #0x00
	str r0, [sp, #0x004]
_08021010:
	ldr r3, [sp, #0x018]
	str r3, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	adds r0, r5, #0x0
	ldr r1, [sp, #0x028]
	adds r2, r7, #0x0
	ldr r3, [sp, #0x030]
	bl sub_8021AC8
	b _08021068
_08021026:
	movs r0, #0x01
	movs r1, #0x6C
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_heap_alloc
	adds r5, r0, #0x0
	ldr r0, _08021074 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x6C
	bl _call_via_r3
	ldrb r0, [r5, #0x10]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0x78
	strh r0, [r5, #0x00]
	movs r0, #0x50
	strh r0, [r5, #0x02]
	adds r0, #0xB0
	strh r0, [r5, #0x04]
	strh r0, [r5, #0x06]
	strh r0, [r5, #0x08]
	strh r0, [r5, #0x0A]
	ldrb r0, [r5, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #0x12]
	ldr r0, _08021078 @ =0x0000FFFF
	strh r0, [r5, #0x16]
_08021068:
	ldr r1, _0802107C @ =0x0203FFB8
	ldr r0, [r1, #0x30]
	cmp r0, #0x00
	bne _08021080
	str r5, [r1, #0x30]
	b _0802108A
_08021074: .4byte 0x03001034
_08021078: .4byte 0x0000FFFF
_0802107C: .4byte 0x0203FFB8
_08021080:
	ldr r0, [r1, #0x34]
	ldr r0, [r0, #0x68]
	str r0, [r5, #0x68]
	ldr r0, [r1, #0x34]
	str r5, [r0, #0x68]
_0802108A:
	ldr r0, [r1, #0x34]
	str r0, [r5, #0x64]
	str r5, [r1, #0x34]
	ldrb r0, [r1, #0x01]
	adds r0, #0x01
	strb r0, [r1, #0x01]
	adds r0, r5, #0x0
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80210A8
sub_80210A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	adds r5, r0, #0x0
	mov r9, r1
	str r2, [sp, #0x010]
	str r3, [sp, #0x014]
	ldr r0, [sp, #0x054]
	mov r8, r0
	ldr r1, [sp, #0x05C]
	mov r10, r1
	ldr r7, [sp, #0x060]
	ldrh r0, [r5, #0x16]
	ldr r4, _0802116C @ =0x0000FFFF
	cmp r0, r4
	beq _0802111C
	ldrb r1, [r5, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08021116
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r5, #0x12]
	adds r0, r5, #0x0
	movs r1, #0x02
	bl sub_8021A18
	cmp r0, #0x00
	bne _08021116
	ldr r3, _08021170 @ =0x0203FFC4
	ldrh r2, [r5, #0x14]
	cmp r2, #0x00
	beq _08021116
	movs r0, #0x80
	lsls r0, r0, #0x07
	mov r12, r0
	movs r6, #0x01
_080210FA:
	ldrh r1, [r3, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x00
	beq _0802110E
	adds r0, r2, #0x0
	ands r0, r6
	cmp r0, #0x00
	beq _0802110E
	strh r4, [r3, #0x00]
_0802110E:
	adds r3, #0x02
	asrs r2, r2, #0x01
	cmp r2, #0x00
	bne _080210FA
_08021116:
	adds r0, r5, #0x0
	bl sub_8021C24
_0802111C:
	movs r3, #0xF0
	lsls r3, r3, #0x08
	ldr r0, [sp, #0x010]
	ands r0, r3
	cmp r0, #0x00
	beq _08021136
	ldr r1, [sp, #0x010]
	asrs r0, r1, #0x0C
	subs r0, #0x01
	mov r9, r0
	ldr r0, _08021174 @ =0x00000FFF
	ands r1, r0
	str r1, [sp, #0x010]
_08021136:
	ldr r0, _08021178 @ =0x0839EE60
	mov r4, r9
	lsls r2, r4, #0x02
	adds r0, r2, r0
	ldr r4, [sp, #0x010]
	lsls r1, r4, #0x02
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsrs r0, r1, #0x1F
	str r0, [sp, #0x018]
	lsls r0, r1, #0x05
	lsrs r0, r0, #0x17
	str r0, [sp, #0x01C]
	lsls r0, r1, #0x0E
	lsrs r0, r0, #0x17
	str r0, [sp, #0x020]
	movs r0, #0x01
	negs r0, r0
	cmp r7, r0
	bne _0802117C
	mov r3, r9
	str r3, [sp, #0x024]
	lsls r0, r1, #0x17
	lsrs r7, r0, #0x17
	b _08021198
	.byte 0x00, 0x00
_0802116C: .4byte 0x0000FFFF
_08021170: .4byte 0x0203FFC4
_08021174: .4byte 0x00000FFF
_08021178: .4byte 0x0839EE60
_0802117C:
	adds r0, r7, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _08021194
	asrs r0, r7, #0x0C
	subs r0, #0x01
	str r0, [sp, #0x024]
	ldr r0, _08021190 @ =0x00000FFF
	ands r7, r0
	b _08021198
_08021190: .4byte 0x00000FFF
_08021194:
	mov r4, r9
	str r4, [sp, #0x024]
_08021198:
	ldr r0, _080211F4 @ =0x0839EE8C
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	ldr r0, _080211F8 @ =0x0839EEB8
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	ldr r4, [sp, #0x020]
	lsls r0, r4, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [sp, #0x028]
	ldr r0, _080211FC @ =0x0839EF3C
	ldr r1, [sp, #0x024]
	lsls r2, r1, #0x02
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	adds r0, r0, r7
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x02C]
	ldr r0, _08021200 @ =0x0300034C
	ldr r3, _08021204 @ =0x00000888
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	ldr r3, _08021208 @ =0x0839EEE4
	cmp r0, #0x02
	bne _08021214
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08021214
	ldr r0, _0802120C @ =0x0203FFB8
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08021214
	ldr r0, _08021210 @ =0x0839EF10
	adds r0, r2, r0
	b _08021216
_080211F4: .4byte 0x0839EE8C
_080211F8: .4byte 0x0839EEB8
_080211FC: .4byte 0x0839EF3C
_08021200: .4byte 0x0300034C
_08021204: .4byte 0x00000888
_08021208: .4byte 0x0839EEE4
_0802120C: .4byte 0x0203FFB8
_08021210: .4byte 0x0839EF10
_08021214:
	adds r0, r2, r3
_08021216:
	ldr r1, [r0, #0x00]
	lsls r0, r7, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x030]
	movs r0, #0x01
	negs r0, r0
	cmp r8, r0
	bne _08021250
	ldrb r0, [r6, #0x04]
	ldrb r2, [r6, #0x05]
	movs r1, #0x01
	ands r1, r2
	lsls r1, r1, #0x08
	orrs r0, r1
	adds r4, r0, #0x1
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bne _08021246
	ldr r0, [sp, #0x028]
	bl sub_80198B0
	lsrs r0, r0, #0x05
	b _08021248
_08021246:
	movs r0, #0x00
_08021248:
	mov r8, r0
	cmp r8, r4
	bge _08021250
	mov r8, r4
_08021250:
	movs r3, #0x01
	negs r3, r3
	ldr r0, [sp, #0x058]
	mov r1, r8
	lsls r1, r1, #0x05
	mov r8, r1
	ldrb r1, [r6, #0x00]
	ldrb r0, [r6, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	subs r1, r6, r1
	ldrb r2, [r6, #0x06]
	movs r0, #0x7F
	ands r0, r2
	adds r2, r0, #0x1
	ldrb r0, [r1, #0x00]
	cmp r10, r3
	bne _0802127A
	muls r0, r2
	adds r0, #0x01
	mov r10, r0
_0802127A:
	movs r2, #0x03
	add r10, r2
	movs r0, #0x04
	negs r0, r0
	mov r3, r10
	ands r3, r0
	mov r10, r3
	ldrb r1, [r5, #0x12]
	subs r0, #0x03
	ands r0, r1
	strb r0, [r5, #0x12]
	ldr r4, [sp, #0x02C]
	lsls r2, r4, #0x04
	ldrb r1, [r5, #0x13]
	movs r3, #0x0F
	movs r4, #0x0F
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x13]
	mov r0, sp
	ldrh r0, [r0, #0x10]
	strh r0, [r5, #0x16]
	mov r1, sp
	ldrh r1, [r1, #0x1C]
	strh r1, [r5, #0x1A]
	mov r2, sp
	ldrh r2, [r2, #0x20]
	strh r2, [r5, #0x18]
	strh r7, [r5, #0x1C]
	mov r0, r9
	ands r0, r3
	mov r9, r0
	ldrb r1, [r5, #0x1E]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	mov r1, r9
	orrs r0, r1
	ldr r2, [sp, #0x024]
	lsls r1, r2, #0x04
	ands r0, r4
	orrs r0, r1
	strb r0, [r5, #0x1E]
	mov r3, r8
	str r3, [sp, #0x000]
	ldr r4, [sp, #0x014]
	cmp r4, #0x01
	bne _080212E0
	mov r0, r10
	b _080212E2
_080212E0:
	movs r0, #0x00
_080212E2:
	str r0, [sp, #0x004]
	ldr r1, [sp, #0x018]
	str r1, [sp, #0x008]
	movs r0, #0x01
	str r0, [sp, #0x00C]
	adds r0, r5, #0x0
	ldr r1, [sp, #0x028]
	adds r2, r6, #0x0
	ldr r3, [sp, #0x030]
	bl sub_8021AC8
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8021308
sub_8021308:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08021356
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x12]
	adds r0, r4, #0x0
	movs r1, #0x02
	bl sub_8021A18
	cmp r0, #0x00
	bne _08021356
	ldr r3, _0802136C @ =0x0203FFC4
	ldrh r2, [r4, #0x14]
	cmp r2, #0x00
	beq _08021356
	movs r7, #0x80
	lsls r7, r7, #0x07
	movs r6, #0x01
	ldr r0, _08021370 @ =0x0000FFFF
	adds r5, r0, #0x0
_0802133A:
	ldrh r1, [r3, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802134E
	adds r0, r2, #0x0
	ands r0, r6
	cmp r0, #0x00
	beq _0802134E
	strh r5, [r3, #0x00]
_0802134E:
	adds r3, #0x02
	asrs r2, r2, #0x01
	cmp r2, #0x00
	bne _0802133A
_08021356:
	adds r0, r4, #0x0
	bl sub_8021C24
	ldr r5, _08021374 @ =0x0203FFB8
	ldr r1, [r4, #0x64]
	cmp r1, #0x00
	beq _08021378
	ldr r0, [r4, #0x68]
	str r0, [r1, #0x68]
	b _0802137C
	.byte 0x00, 0x00
_0802136C: .4byte 0x0203FFC4
_08021370: .4byte 0x0000FFFF
_08021374: .4byte 0x0203FFB8
_08021378:
	ldr r0, [r4, #0x68]
	str r0, [r5, #0x30]
_0802137C:
	ldr r1, [r4, #0x68]
	cmp r1, #0x00
	beq _08021388
	ldr r0, [r4, #0x64]
	str r0, [r1, #0x64]
	b _0802138C
_08021388:
	ldr r0, [r4, #0x64]
	str r0, [r5, #0x34]
_0802138C:
	adds r0, r4, #0x0
	bl sprite_heap_free
	ldrb r0, [r5, #0x01]
	subs r0, #0x01
	strb r0, [r5, #0x01]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80213A0
sub_80213A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0x0
	adds r4, r2, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r10, r3
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080213C6
	asrs r0, r1, #0x0C
	subs r6, r0, #0x1
	ldr r0, _08021444 @ =0x00000FFF
	ands r1, r0
_080213C6:
	ldr r0, _08021448 @ =0x0839EE60
	lsls r2, r6, #0x02
	adds r0, r2, r0
	lsls r1, r1, #0x02
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _08021494
	lsls r1, r0, #0x05
	lsrs r1, r1, #0x17
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x17
	mov r8, r0
	ldr r0, _0802144C @ =0x0839EE8C
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	ldr r0, _08021450 @ =0x0839EEB8
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	mov r2, r8
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	mov r9, r1
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _08021424
	ldrb r1, [r3, #0x04]
	ldrb r2, [r3, #0x05]
	movs r0, #0x01
	ands r0, r2
	lsls r0, r0, #0x08
	orrs r1, r0
	adds r5, r1, #0x1
	mov r0, r9
	bl sub_80198B0
	lsrs r4, r0, #0x05
	cmp r4, r5
	bge _08021424
	adds r4, r5, #0x0
_08021424:
	lsls r4, r4, #0x05
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	mov r6, r8
	movs r0, #0x02
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sprite_heap_search
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _08021454
	mov r0, r10
	cmp r0, #0x00
	bne _0802148A
	b _08021494
_08021444: .4byte 0x00000FFF
_08021448: .4byte 0x0839EE60
_0802144C: .4byte 0x0839EE8C
_08021450: .4byte 0x0839EEB8
_08021454:
	adds r4, #0x10
	movs r0, #0x02
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	adds r3, r6, #0x0
	bl sprite_heap_alloc
	adds r5, r0, #0x0
	ldr r0, _08021490 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
	movs r0, #0x01
	str r0, [r5, #0x00]
	mov r2, r9
	str r2, [r5, #0x04]
	adds r0, r5, #0x0
	adds r0, #0x10
	str r0, [r5, #0x08]
	movs r0, #0x00
	str r0, [r5, #0x0C]
	adds r0, r5, #0x0
	bl sub_8019808
_0802148A:
	adds r0, r5, #0x0
	b _08021496
	.byte 0x00, 0x00
_08021490: .4byte 0x03001034
_08021494:
	movs r0, #0x00
_08021496:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80214A4
sub_80214A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r9, r3
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r0, r4
	cmp r0, #0x00
	beq _080214CA
	asrs r0, r4, #0x0C
	subs r7, r0, #0x1
	ldr r0, _0802154C @ =0x00000FFF
	ands r4, r0
_080214CA:
	ldr r0, _08021550 @ =0x0839EE60
	lsls r1, r7, #0x02
	adds r0, r1, r0
	lsls r2, r4, #0x02
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x05
	lsrs r3, r0, #0x17
	ldr r0, _08021554 @ =0x0839EE8C
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	ldrb r1, [r5, #0x02]
	ldrb r0, [r5, #0x03]
	lsls r0, r0, #0x08
	orrs r1, r0
	cmp r1, #0x00
	bne _08021562
	ldrb r1, [r5, #0x00]
	ldrb r0, [r5, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	subs r1, r5, r1
	ldrb r2, [r5, #0x06]
	movs r0, #0x7F
	ands r0, r2
	adds r2, r0, #0x1
	ldrb r1, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	bne _08021516
	adds r0, r2, #0x0
	muls r0, r1
	adds r6, r0, #0x1
_08021516:
	adds r6, #0x03
	movs r0, #0x04
	negs r0, r0
	ands r6, r0
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r7, r3, #0x0
	movs r0, #0x03
	mov r1, r8
	adds r2, r7, #0x0
	bl sprite_heap_search
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08021558
	movs r0, #0x03
	adds r1, r6, #0x0
	mov r2, r8
	adds r3, r7, #0x0
	bl sprite_heap_alloc
	adds r4, r0, #0x0
	adds r1, r5, #0x0
	bl sub_801E3EC
	b _08021564
_0802154C: .4byte 0x00000FFF
_08021550: .4byte 0x0839EE60
_08021554: .4byte 0x0839EE8C
_08021558:
	mov r0, r9
	cmp r0, #0x00
	bne _08021564
	movs r0, #0x00
	b _08021566
_08021562:
	subs r4, r5, r1
_08021564:
	adds r0, r4, #0x0
_08021566:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8021574
sub_8021574:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x000]
	mov r9, r1
	str r2, [sp, #0x004]
	str r3, [sp, #0x008]
	ldr r4, [sp, #0x03C]
	ldr r1, _08021618 @ =0x0203FFB8
	movs r0, #0x00
	mov r10, r0
	movs r7, #0x00
	movs r0, #0xF0
	lsls r0, r0, #0x08
	mov r2, r9
	ands r0, r2
	cmp r0, #0x00
	beq _080215AA
	asrs r0, r2, #0x0C
	subs r0, #0x01
	str r0, [sp, #0x000]
	ldr r0, _0802161C @ =0x00000FFF
	ands r2, r0
	mov r9, r2
_080215AA:
	ldrb r1, [r1, #0x04]
	mov r8, r1
	mov r6, r8
	cmp r6, #0x0F
	ble _080215B6
	b _08021724
_080215B6:
	lsls r0, r6, #0x01
	ldr r1, _08021620 @ =0x0203FFC4
	adds r1, r1, r0
	mov r12, r1
	movs r0, #0x10
	subs r0, r0, r6
	movs r2, #0x01
	ands r0, r2
	cmp r6, #0x10
	bge _080215CE
	cmp r0, #0x00
	beq _0802164A
_080215CE:
	mov r0, r12
	ldrh r2, [r0, #0x00]
	lsls r1, r2, #0x10
	ldr r0, _08021624 @ =0x0000FFFF
	cmp r2, r0
	beq _08021634
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _0802162C
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _08021640
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	ldr r0, _08021628 @ =0x000003FF
	ands r0, r2
	ldr r2, [sp, #0x000]
	cmp r2, r1
	bne _08021640
	cmp r9, r0
	bne _08021640
	cmp r3, #0x00
	bne _08021640
	movs r0, #0x01
	mov r1, r8
	lsls r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _08021640
	.byte 0x00, 0x00
_08021618: .4byte 0x0203FFB8
_0802161C: .4byte 0x00000FFF
_08021620: .4byte 0x0203FFC4
_08021624: .4byte 0x0000FFFF
_08021628: .4byte 0x000003FF
_0802162C:
	cmp r4, r8
	bne _08021640
	movs r0, #0x01
	b _0802190A
_08021634:
	movs r0, #0x01
	mov r2, r8
	lsls r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_08021640:
	movs r0, #0x02
	add r12, r0
	adds r6, #0x01
	cmp r6, #0x0F
	bgt _08021724
_0802164A:
	mov r1, r12
	ldrh r2, [r1, #0x00]
	lsls r1, r2, #0x10
	ldr r0, _08021694 @ =0x0000FFFF
	cmp r2, r0
	beq _080216A4
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _0802169C
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _080216B2
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	ldr r0, _08021698 @ =0x000003FF
	ands r0, r2
	ldr r2, [sp, #0x000]
	cmp r2, r1
	bne _080216B2
	cmp r9, r0
	bne _080216B2
	cmp r3, #0x00
	bne _080216B2
	movs r0, #0x01
	lsls r0, r6
	orrs r7, r0
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	b _080216B2
	.byte 0x00, 0x00
_08021694: .4byte 0x0000FFFF
_08021698: .4byte 0x000003FF
_0802169C:
	cmp r4, r6
	bne _080216B2
	movs r0, #0x01
	b _0802190A
_080216A4:
	movs r0, #0x01
	lsls r0, r6
	mov r1, r10
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_080216B2:
	adds r3, r6, #0x1
	mov r0, r12
	ldrh r2, [r0, #0x02]
	lsls r1, r2, #0x10
	ldr r0, _080216FC @ =0x0000FFFF
	cmp r2, r0
	beq _0802170C
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _08021704
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _0802171A
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	ldr r0, _08021700 @ =0x000003FF
	ands r0, r2
	ldr r2, [sp, #0x000]
	cmp r2, r1
	bne _0802171A
	cmp r9, r0
	bne _0802171A
	cmp r5, #0x00
	bne _0802171A
	movs r0, #0x01
	lsls r0, r3
	orrs r7, r0
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	b _0802171A
_080216FC: .4byte 0x0000FFFF
_08021700: .4byte 0x000003FF
_08021704:
	cmp r4, r3
	bne _0802171A
	movs r0, #0x01
	b _0802190A
_0802170C:
	movs r0, #0x01
	lsls r0, r3
	mov r1, r10
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_0802171A:
	movs r2, #0x04
	add r12, r2
	adds r6, #0x02
	cmp r6, #0x0F
	ble _0802164A
_08021724:
	cmp r7, #0x00
	beq _0802172A
	b _08021904
_0802172A:
	ldr r0, _08021768 @ =0x0839EF3C
	ldr r1, [sp, #0x000]
	lsls r2, r1, #0x02
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	add r0, r9
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	ldr r0, _0802176C @ =0x0300034C
	ldr r1, _08021770 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	ldr r3, _08021774 @ =0x0839EEE4
	cmp r0, #0x02
	bne _08021780
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08021780
	ldr r0, _08021778 @ =0x0203FFB8
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08021780
	ldr r0, _0802177C @ =0x0839EF10
	adds r0, r2, r0
	b _08021782
	.byte 0x00, 0x00
_08021768: .4byte 0x0839EF3C
_0802176C: .4byte 0x0300034C
_08021770: .4byte 0x00000888
_08021774: .4byte 0x0839EEE4
_08021778: .4byte 0x0203FFB8
_0802177C: .4byte 0x0839EF10
_08021780:
	adds r0, r2, r3
_08021782:
	ldr r1, [r0, #0x00]
	mov r2, r9
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _08021796
	mov r4, r8
_08021796:
	movs r0, #0x00
	str r0, [sp, #0x010]
	ldr r1, [sp, #0x00C]
	cmp r0, r1
	blt _080217A2
	b _080218E6
_080217A2:
	ldr r0, [sp, #0x004]
	lsls r0, r0, #0x0F
	mov r8, r0
	ldr r0, [sp, #0x034]
	lsls r0, r0, #0x0E
	mov r1, r8
	orrs r1, r0
	adds r6, r2, #0x0
	ldr r2, [sp, #0x000]
	lsls r0, r2, #0x0A
	orrs r1, r0
	mov r0, r9
	orrs r1, r0
	mov r8, r1
	movs r0, #0x01
	ldr r1, [sp, #0x00C]
	ands r0, r1
	cmp r1, #0x00
	ble _080217CC
	cmp r0, #0x00
	beq _08021830
_080217CC:
	mov r0, r10
	asrs r0, r4
	movs r1, #0x01
	b _080217E0
_080217D4:
	adds r4, #0x01
	cmp r4, #0x10
	bne _080217DC
	b _080218FC
_080217DC:
	mov r0, r10
	asrs r0, r4
_080217E0:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080217D4
	movs r5, #0x01
	lsls r5, r4
	orrs r7, r5
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x01
	ldr r2, _08021824 @ =0x0203FFC4
	adds r0, r0, r2
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bne _08021818
	lsls r1, r4, #0x05
	ldr r0, _08021828 @ =0x02000280
	adds r1, r1, r0
	adds r0, r6, #0x0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0802182C @ =0x0300034C
	ldrh r0, [r1, #0x00]
	orrs r5, r0
	strh r5, [r1, #0x00]
_08021818:
	adds r4, #0x01
	adds r6, #0x20
	ldr r1, [sp, #0x010]
	adds r1, #0x01
	b _080218DE
	.byte 0x00, 0x00
_08021824: .4byte 0x0203FFC4
_08021828: .4byte 0x02000280
_0802182C: .4byte 0x0300034C
_08021830:
	mov r0, r10
	asrs r0, r4
	movs r1, #0x01
	b _08021842
_08021838:
	adds r4, #0x01
	cmp r4, #0x10
	beq _080218FC
	mov r0, r10
	asrs r0, r4
_08021842:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08021838
	movs r5, #0x01
	lsls r5, r4
	orrs r7, r5
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x01
	ldr r1, _08021888 @ =0x0203FFC4
	adds r0, r0, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	ldr r0, [sp, #0x008]
	cmp r0, #0x00
	bne _0802187A
	lsls r1, r4, #0x05
	ldr r2, _0802188C @ =0x02000280
	adds r1, r1, r2
	adds r0, r6, #0x0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _08021890 @ =0x0300034C
	ldrh r0, [r1, #0x00]
	orrs r5, r0
	strh r5, [r1, #0x00]
_0802187A:
	adds r4, #0x01
	adds r2, r6, #0x0
	adds r2, #0x20
	mov r0, r10
	asrs r0, r4
	movs r1, #0x01
	b _0802189E
_08021888: .4byte 0x0203FFC4
_0802188C: .4byte 0x02000280
_08021890: .4byte 0x0300034C
_08021894:
	adds r4, #0x01
	cmp r4, #0x10
	beq _080218FC
	mov r0, r10
	asrs r0, r4
_0802189E:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08021894
	movs r5, #0x01
	lsls r5, r4
	orrs r7, r5
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x01
	ldr r1, _080218F0 @ =0x0203FFC4
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r0, [sp, #0x008]
	cmp r0, #0x00
	bne _080218D6
	lsls r1, r4, #0x05
	ldr r0, _080218F4 @ =0x02000280
	adds r1, r1, r0
	adds r0, r2, #0x0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _080218F8 @ =0x0300034C
	ldrh r0, [r1, #0x00]
	orrs r5, r0
	strh r5, [r1, #0x00]
_080218D6:
	adds r4, #0x01
	adds r6, #0x40
	ldr r1, [sp, #0x010]
	adds r1, #0x02
_080218DE:
	str r1, [sp, #0x010]
	ldr r2, [sp, #0x00C]
	cmp r1, r2
	blt _08021830
_080218E6:
	ldr r0, [sp, #0x038]
	strh r7, [r0, #0x00]
	movs r0, #0x00
	b _0802190A
	.byte 0x00, 0x00
_080218F0: .4byte 0x0203FFC4
_080218F4: .4byte 0x02000280
_080218F8: .4byte 0x0300034C
_080218FC:
	ldr r1, [sp, #0x038]
	strh r7, [r1, #0x00]
	movs r0, #0x01
	b _0802190A
_08021904:
	ldr r2, [sp, #0x038]
	strh r7, [r2, #0x00]
	movs r0, #0x02
_0802190A:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_802191C
sub_802191C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08021A0C @ =0x0203FFB8
	adds r6, r3, #0x0
	adds r6, #0x0C
	movs r2, #0x00
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	lsls r1, r0, #0x10
	ldr r4, _08021A10 @ =0x0000FFFF
	cmp r0, r4
	beq _080219FC
	lsrs r1, r1, #0x1A
	mov r12, r1
	movs r1, #0x0F
	mov r10, r1
	mov r2, r10
	mov r1, r12
	ands r2, r1
	mov r12, r2
	ldr r1, _08021A14 @ =0x000003FF
	adds r7, r1, #0x0
	ands r7, r0
	movs r5, #0x00
	ldrb r3, [r3, #0x04]
	cmp r3, #0x0F
	bgt _080219FA
	mov r8, r4
	mov r9, r1
	lsls r0, r3, #0x01
	adds r4, r0, r6
	movs r0, #0x10
	subs r0, r0, r3
	movs r6, #0x01
	ands r0, r6
	cmp r3, #0x10
	bge _08021972
	cmp r0, #0x00
	beq _080219A0
_08021972:
	ldrh r2, [r4, #0x00]
	lsls r0, r2, #0x10
	cmp r2, r8
	beq _08021998
	lsrs r0, r0, #0x1A
	mov r1, r10
	ands r0, r1
	mov r1, r9
	ands r1, r2
	cmp r12, r0
	bne _08021998
	cmp r7, r1
	bne _08021998
	mov r2, r8
	strh r2, [r4, #0x00]
	adds r0, r6, #0x0
	lsls r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08021998:
	adds r4, #0x02
	adds r3, #0x01
	cmp r3, #0x0F
	bgt _080219FA
_080219A0:
	ldrh r2, [r4, #0x00]
	lsls r1, r2, #0x10
	cmp r2, r8
	beq _080219C8
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	mov r0, r9
	ands r0, r2
	cmp r12, r1
	bne _080219C8
	cmp r7, r0
	bne _080219C8
	mov r0, r8
	strh r0, [r4, #0x00]
	movs r0, #0x01
	lsls r0, r3
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080219C8:
	adds r6, r3, #0x1
	ldrh r2, [r4, #0x02]
	lsls r1, r2, #0x10
	cmp r2, r8
	beq _080219F2
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	mov r0, r9
	ands r0, r2
	cmp r12, r1
	bne _080219F2
	cmp r7, r0
	bne _080219F2
	mov r1, r8
	strh r1, [r4, #0x02]
	movs r0, #0x01
	lsls r0, r6
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080219F2:
	adds r4, #0x04
	adds r3, #0x02
	cmp r3, #0x0F
	ble _080219A0
_080219FA:
	adds r2, r5, #0x0
_080219FC:
	adds r0, r2, #0x0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08021A0C: .4byte 0x0203FFB8
_08021A10: .4byte 0x0000FFFF
_08021A14: .4byte 0x000003FF
	thumb_func_start sub_8021A18
sub_8021A18:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08021A60 @ =0x0203FFB8
	ldr r3, [r0, #0x30]
	cmp r3, #0x00
	beq _08021ABE
	cmp r5, #0x02
	bne _08021A68
	ldr r2, _08021A64 @ =0x00F0FFFF
	movs r5, #0x20
_08021A2E:
	cmp r3, r4
	beq _08021A56
	ldrb r1, [r3, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08021A56
	adds r0, r3, #0x0
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08021A56
	ldr r1, [r3, #0x1C]
	ands r1, r2
	ldr r0, [r4, #0x1C]
	ands r0, r2
	cmp r1, r0
	beq _08021AB4
_08021A56:
	ldr r3, [r3, #0x68]
	cmp r3, #0x00
	bne _08021A2E
	b _08021ABE
	.byte 0x00, 0x00
_08021A60: .4byte 0x0203FFB8
_08021A64: .4byte 0x00F0FFFF
_08021A68:
	movs r6, #0x0F
_08021A6A:
	cmp r3, r4
	beq _08021AB8
	ldrb r0, [r3, #0x1E]
	ldrb r2, [r4, #0x1E]
	adds r1, r6, #0x0
	ands r1, r0
	adds r0, r6, #0x0
	ands r0, r2
	cmp r1, r0
	bne _08021AB8
	cmp r5, #0x00
	bne _08021A8A
	ldrh r0, [r3, #0x18]
	ldrh r1, [r4, #0x18]
	cmp r0, r1
	beq _08021AB4
_08021A8A:
	cmp r5, #0x01
	bne _08021A96
	ldrh r0, [r3, #0x1A]
	ldrh r1, [r4, #0x1A]
	cmp r0, r1
	beq _08021AB4
_08021A96:
	cmp r5, #0x03
	bne _08021AA2
	ldrh r0, [r3, #0x2E]
	ldrh r1, [r4, #0x2E]
	cmp r0, r1
	beq _08021AB4
_08021AA2:
	cmp r5, #0x04
	bne _08021AB8
	ldrh r0, [r3, #0x18]
	ldrh r1, [r4, #0x18]
	cmp r0, r1
	bne _08021AB8
	ldr r0, [r3, #0x44]
	cmp r0, #0x00
	bne _08021AB8
_08021AB4:
	adds r0, r3, #0x0
	b _08021AC0
_08021AB8:
	ldr r3, [r3, #0x68]
	cmp r3, #0x00
	bne _08021A6A
_08021ABE:
	movs r0, #0x00
_08021AC0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8021AC8
sub_8021AC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	mov r8, r1
	adds r7, r2, #0x0
	mov r9, r3
	ldr r0, [sp, #0x024]
	cmp r0, #0x00
	bne _08021B64
	ldrb r0, [r4, #0x1E]
	lsls r1, r0, #0x1C
	lsrs r5, r1, #0x1C
	ldrh r2, [r4, #0x18]
	ldr r1, _08021B38 @ =0x0203FFB8
	ldr r1, [r1, #0x2C]
	adds r3, r0, #0x0
	adds r6, r2, #0x0
_08021AEE:
	ldrb r0, [r1, #0x0C]
	cmp r0, #0x02
	bne _08021B00
	ldrb r0, [r1, #0x0D]
	cmp r0, r5
	bne _08021B00
	ldrh r0, [r1, #0x0E]
	cmp r0, r2
	beq _08021B3C
_08021B00:
	ldr r1, [r1, #0x04]
	cmp r1, #0x00
	bne _08021AEE
	movs r1, #0x00
_08021B08:
	cmp r1, #0x00
	bne _08021B44
	ldr r1, [sp, #0x01C]
	adds r1, #0x10
	lsls r2, r3, #0x1C
	lsrs r2, r2, #0x1C
	movs r0, #0x02
	adds r3, r6, #0x0
	bl sprite_heap_alloc
	str r0, [r4, #0x48]
	mov r1, r8
	str r1, [r4, #0x50]
	adds r0, #0x10
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_80208E0
	ldrb r0, [r4, #0x13]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r4, #0x13]
	b _08021B6E
	.byte 0x00, 0x00
_08021B38: .4byte 0x0203FFB8
_08021B3C:
	ldr r0, [r1, #0x08]
	subs r0, #0x10
	subs r1, r1, r0
	b _08021B08
_08021B44:
	str r1, [r4, #0x48]
	ldr r0, [r1, #0x04]
	str r0, [r4, #0x50]
	adds r0, r1, #0x0
	adds r0, #0x10
	str r0, [r4, #0x4C]
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x13]
	b _08021B6E
_08021B5C:
	ldr r0, [r1, #0x08]
	subs r0, #0x10
	subs r2, r1, r0
	b _08021BAA
_08021B64:
	mov r2, r8
	str r2, [r4, #0x4C]
	movs r0, #0x00
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
_08021B6E:
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	beq _08021BDE
	ldrb r1, [r7, #0x02]
	ldrb r0, [r7, #0x03]
	lsls r0, r0, #0x08
	orrs r1, r0
	cmp r1, #0x00
	bne _08021BD8
	ldrb r0, [r4, #0x1E]
	lsls r1, r0, #0x1C
	lsrs r5, r1, #0x1C
	ldrh r2, [r4, #0x1A]
	ldr r1, _08021BC8 @ =0x0203FFB8
	ldr r1, [r1, #0x2C]
	adds r3, r0, #0x0
	adds r6, r2, #0x0
_08021B90:
	ldrb r0, [r1, #0x0C]
	cmp r0, #0x03
	bne _08021BA2
	ldrb r0, [r1, #0x0D]
	cmp r0, r5
	bne _08021BA2
	ldrh r0, [r1, #0x0E]
	cmp r0, r2
	beq _08021B5C
_08021BA2:
	ldr r1, [r1, #0x04]
	cmp r1, #0x00
	bne _08021B90
	movs r2, #0x00
_08021BAA:
	cmp r2, #0x00
	bne _08021BCC
	lsls r2, r3, #0x1C
	lsrs r2, r2, #0x1C
	movs r0, #0x03
	ldr r1, [sp, #0x020]
	adds r3, r6, #0x0
	bl sprite_heap_alloc
	adds r2, r0, #0x0
	ldrb r0, [r4, #0x13]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r4, #0x13]
	b _08021BDA
_08021BC8: .4byte 0x0203FFB8
_08021BCC:
	ldrb r1, [r4, #0x13]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x13]
	b _08021BDA
_08021BD8:
	subs r2, r7, r1
_08021BDA:
	str r2, [r4, #0x44]
	b _08021C0C
_08021BDE:
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	bne _08021C0C
	adds r0, r4, #0x0
	movs r1, #0x04
	bl sub_8021A18
	cmp r0, #0x00
	bne _08021C04
	ldr r1, _08021C00 @ =0x0203FFC0
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x2E]
	ldr r2, [sp, #0x01C]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	b _08021C08
	.byte 0x00, 0x00
_08021C00: .4byte 0x0203FFC0
_08021C04:
	ldrh r0, [r0, #0x2E]
	strh r0, [r4, #0x2E]
_08021C08:
	movs r0, #0x00
	str r0, [r4, #0x44]
_08021C0C:
	str r7, [r4, #0x38]
	mov r0, r9
	str r0, [r4, #0x54]
	movs r0, #0x00
	str r0, [r4, #0x58]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8021C24
sub_8021C24:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	beq _08021C56
	ldrb r1, [r4, #0x13]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08021C56
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8021A18
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08021C4E
	ldr r0, [r4, #0x48]
	bl sprite_heap_free
	b _08021C56
_08021C4E:
	ldrb r0, [r2, #0x13]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x13]
_08021C56:
	ldr r1, [r4, #0x44]
	cmp r1, #0x00
	beq _08021C92
	ldr r0, _08021C84 @ =0x07FFFFFF
	cmp r1, r0
	bhi _08021CB4
	ldrb r1, [r4, #0x13]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08021CB4
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8021A18
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08021C88
	ldr r0, [r4, #0x44]
	bl sprite_heap_free
	b _08021CB4
	.byte 0x00, 0x00
_08021C84: .4byte 0x07FFFFFF
_08021C88:
	ldrb r0, [r2, #0x13]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x13]
	b _08021CB4
_08021C92:
	ldr r5, _08021CBC @ =0x0203FFB8
	ldrh r0, [r4, #0x2E]
	ldrh r1, [r4, #0x30]
	adds r0, r0, r1
	ldrh r1, [r5, #0x08]
	cmp r0, r1
	bne _08021CB4
	adds r0, r4, #0x0
	movs r1, #0x03
	bl sub_8021A18
	cmp r0, #0x00
	bne _08021CB4
	ldrh r0, [r5, #0x08]
	ldrh r1, [r4, #0x30]
	subs r0, r0, r1
	strh r0, [r5, #0x08]
_08021CB4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08021CBC: .4byte 0x0203FFB8
	thumb_func_start sprite_heap_alloc
sprite_heap_alloc:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	ldr r0, _08021D0C @ =0x0203FFB8
	ldr r1, [r0, #0x2C]
	adds r4, #0x0F
	movs r0, #0x10
	negs r0, r0
	ands r4, r0
	adds r4, #0x10
_08021CDC:
	ldr r2, [r1, #0x08]
	ldrb r3, [r1, #0x0C]
	cmp r3, #0x00
	bne _08021D38
	cmp r2, r4
	blt _08021D38
	adds r0, r4, #0x0
	adds r0, #0x10
	cmp r2, r0
	bcc _08021D10
	subs r2, r1, r4
	str r1, [r2, #0x00]
	ldr r0, [r1, #0x04]
	str r0, [r2, #0x04]
	cmp r0, #0x00
	beq _08021CFE
	str r2, [r0, #0x00]
_08021CFE:
	ldr r0, [r1, #0x08]
	subs r0, r0, r4
	str r0, [r2, #0x08]
	strb r3, [r2, #0x0C]
	str r2, [r1, #0x04]
	str r4, [r1, #0x08]
	b _08021D12
_08021D0C: .4byte 0x0203FFB8
_08021D10:
	str r2, [r1, #0x08]
_08021D12:
	movs r4, #0x00
	strb r5, [r1, #0x0C]
	strb r6, [r1, #0x0D]
	movs r2, #0x00
	strh r7, [r1, #0x0E]
	ldr r0, [r1, #0x08]
	subs r0, #0x10
	subs r0, r1, r0
	cmp r5, #0x02
	beq _08021D30
	cmp r5, #0x02
	ble _08021D40
	cmp r5, #0x03
	beq _08021D34
	b _08021D40
_08021D30:
	str r4, [r0, #0x00]
	b _08021D40
_08021D34:
	strb r2, [r0, #0x00]
	b _08021D40
_08021D38:
	ldr r1, [r1, #0x04]
	cmp r1, #0x00
	bne _08021CDC
	movs r0, #0x00
_08021D40:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sprite_heap_free
sprite_heap_free:
	push {r4, lr}
	cmp r0, #0x00
	beq _08021D92
	subs r0, #0x10
	ldr r2, [r0, #0x00]
	ldr r4, [r2, #0x00]
	ldr r3, [r2, #0x04]
	movs r0, #0x00
	strb r0, [r2, #0x0C]
	cmp r3, #0x00
	beq _08021D76
	ldrb r0, [r3, #0x0C]
	cmp r0, #0x00
	bne _08021D76
	ldr r0, [r2, #0x08]
	ldr r1, [r3, #0x08]
	adds r0, r0, r1
	str r0, [r2, #0x08]
	ldr r0, [r3, #0x04]
	str r0, [r2, #0x04]
	cmp r0, #0x00
	beq _08021D76
	str r2, [r0, #0x00]
_08021D76:
	cmp r4, #0x00
	beq _08021D92
	ldrb r0, [r4, #0x0C]
	cmp r0, #0x00
	bne _08021D92
	ldr r0, [r4, #0x08]
	ldr r1, [r2, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r4, #0x04]
	cmp r0, #0x00
	beq _08021D92
	str r4, [r0, #0x00]
_08021D92:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sprite_heap_search
sprite_heap_search:
	push {r4, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _08021DC4 @ =0x0203FFB8
	ldr r3, [r0, #0x2C]
_08021DA8:
	ldrb r0, [r3, #0x0C]
	cmp r0, r4
	bne _08021DC8
	ldrb r0, [r3, #0x0D]
	cmp r0, r1
	bne _08021DC8
	ldrh r0, [r3, #0x0E]
	cmp r0, r2
	bne _08021DC8
	ldr r0, [r3, #0x08]
	subs r0, #0x10
	subs r0, r3, r0
	b _08021DD0
	.byte 0x00, 0x00
_08021DC4: .4byte 0x0203FFB8
_08021DC8:
	ldr r3, [r3, #0x04]
	cmp r3, #0x00
	bne _08021DA8
	movs r0, #0x00
_08021DD0:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x80, 0x46, 0x8C, 0x46, 0x2D, 0x48
	.byte 0x01, 0x1C, 0x0C, 0x31, 0x00, 0x25, 0x03, 0x79, 0x0F, 0x2B, 0x4D, 0xDC, 0x2B, 0x4F, 0x2B, 0x48
	.byte 0x81, 0x46, 0x58, 0x00, 0x44, 0x18, 0x10, 0x20, 0xC0, 0x1A, 0x01, 0x26, 0x30, 0x40, 0x10, 0x2B
	.byte 0x01, 0xDA, 0x00, 0x28, 0x15, 0xD0, 0x22, 0x88, 0x11, 0x04, 0xBA, 0x42, 0x0D, 0xD0, 0x89, 0x0E
	.byte 0x0F, 0x20, 0x01, 0x40, 0x48, 0x46, 0x10, 0x40, 0x88, 0x45, 0x06, 0xD1, 0x84, 0x45, 0x04, 0xD1
	.byte 0x27, 0x80, 0x30, 0x1C, 0x98, 0x40, 0x00, 0x04, 0x05, 0x0C, 0x02, 0x34, 0x01, 0x33, 0x0F, 0x2B
	.byte 0x2A, 0xDC, 0x22, 0x88, 0x11, 0x04, 0xBA, 0x42, 0x0E, 0xD0, 0x89, 0x0E, 0x0F, 0x20, 0x01, 0x40
	.byte 0x48, 0x46, 0x10, 0x40, 0x88, 0x45, 0x07, 0xD1, 0x84, 0x45, 0x05, 0xD1, 0x27, 0x80, 0x01, 0x20
	.byte 0x98, 0x40, 0x05, 0x43, 0x28, 0x04, 0x05, 0x0C, 0x5E, 0x1C, 0x62, 0x88, 0x11, 0x04, 0xBA, 0x42
	.byte 0x0E, 0xD0, 0x89, 0x0E, 0x0F, 0x20, 0x01, 0x40, 0x48, 0x46, 0x10, 0x40, 0x88, 0x45, 0x07, 0xD1
	.byte 0x84, 0x45, 0x05, 0xD1, 0x67, 0x80, 0x01, 0x20, 0xB0, 0x40, 0x05, 0x43, 0x28, 0x04, 0x05, 0x0C
	.byte 0x04, 0x34, 0x02, 0x33, 0x0F, 0x2B, 0xD4, 0xDD, 0x28, 0x1C, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xB8, 0xFF, 0x03, 0x02, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0x03
	.byte 0x00, 0x00
	thumb_func_start sub_8021EA8
sub_8021EA8:
	push {lr}
	adds r3, r0, #0x0
	adds r2, r1, #0x0
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	beq _08021EC0
	asrs r0, r2, #0x0C
	subs r3, r0, #0x1
	ldr r0, _08021ED0 @ =0x00000FFF
	ands r2, r0
_08021EC0:
	ldr r1, _08021ED4 @ =0x0839EE60
	lsls r0, r3, #0x02
	adds r0, r0, r1
	lsls r1, r2, #0x02
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	pop {r1}
	bx r1
_08021ED0: .4byte 0x00000FFF
_08021ED4: .4byte 0x0839EE60
	thumb_func_start sub_8021ED8
sub_8021ED8:
	push {lr}
	adds r2, r0, #0x0
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08021F1C
	ldr r1, [r2, #0x64]
	ldr r0, [r2, #0x68]
	cmp r1, r0
	bne _08021F16
	ldr r1, _08021EFC @ =0x0203FFB8
	ldr r0, [r1, #0x30]
	cmp r0, #0x00
	bne _08021F00
	str r2, [r1, #0x30]
	b _08021F0A
	.byte 0x00, 0x00
_08021EFC: .4byte 0x0203FFB8
_08021F00:
	ldr r0, [r1, #0x34]
	ldr r0, [r0, #0x68]
	str r0, [r2, #0x68]
	ldr r0, [r1, #0x34]
	str r2, [r0, #0x68]
_08021F0A:
	ldr r0, [r1, #0x34]
	str r0, [r2, #0x64]
	str r2, [r1, #0x34]
	ldrb r0, [r1, #0x01]
	adds r0, #0x01
	strb r0, [r1, #0x01]
_08021F16:
	adds r0, r2, #0x0
	bl sprite_show_8020CBC
_08021F1C:
	pop {r0}
	bx r0
	thumb_func_start sprite_hide_8021F20
sprite_hide_8021F20:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08021F6E
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x12]
	adds r0, r4, #0x0
	movs r1, #0x02
	bl sub_8021A18
	cmp r0, #0x00
	bne _08021F6E
	ldr r3, _08021F74 @ =0x0203FFC4
	ldrh r2, [r4, #0x14]
	cmp r2, #0x00
	beq _08021F6E
	movs r6, #0x80
	lsls r6, r6, #0x07
	movs r5, #0x01
	ldr r0, _08021F78 @ =0x0000FFFF
	adds r4, r0, #0x0
_08021F52:
	ldrh r1, [r3, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08021F66
	adds r0, r2, #0x0
	ands r0, r5
	cmp r0, #0x00
	beq _08021F66
	strh r4, [r3, #0x00]
_08021F66:
	adds r3, #0x02
	asrs r2, r2, #0x01
	cmp r2, #0x00
	bne _08021F52
_08021F6E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08021F74: .4byte 0x0203FFC4
_08021F78: .4byte 0x0000FFFF
	thumb_func_start sub_8021F7C
sub_8021F7C:
	push {r4, r5, lr}
	ldr r0, _08021FB8 @ =0x0203FFB8
	ldr r4, [r0, #0x30]
	cmp r4, #0x00
	beq _08021FCC
_08021F86:
	ldr r5, [r4, #0x68]
	adds r0, r4, #0x0
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08021FC6
	adds r0, r4, #0x0
	bl sub_801E68C
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08021FC6
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08021FBC
	adds r0, r4, #0x0
	bl sprite_hide_8021F20
	b _08021FC6
	.byte 0x00, 0x00
_08021FB8: .4byte 0x0203FFB8
_08021FBC:
	cmp r0, #0x06
	bne _08021FC6
	adds r0, r4, #0x0
	bl sub_8021308
_08021FC6:
	adds r4, r5, #0x0
	cmp r4, #0x00
	bne _08021F86
_08021FCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8021FD4
sub_8021FD4:
	push {lr}
	ldr r0, _08021FF0 @ =0x0203FFB8
	ldr r0, [r0, #0x3C]
	cmp r0, #0x00
	beq _08021FE2
	bl __builtin_vec_delete
_08021FE2:
	bl sub_80208F4
	ldr r1, _08021FF4 @ =0x03000D74
	movs r0, #0x00
	str r0, [r1, #0x00]
	pop {r0}
	bx r0
_08021FF0: .4byte 0x0203FFB8
_08021FF4: .4byte 0x03000D74

	.data
	.align 2, 0

	.byte 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x40, 0x40, 0x10, 0x08, 0x20, 0x08, 0x20, 0x10, 0x40, 0x20
	.byte 0x08, 0x10, 0x08, 0x20, 0x10, 0x20, 0x20, 0x40, 0xBD, 0xEE, 0x01, 0x08, 0x71, 0xF3, 0x01, 0x08
	.byte 0xD1, 0xF7, 0x01, 0x08, 0xAD, 0xFB, 0x01, 0x08, 0xA9, 0xFF, 0x01, 0x08, 0x9D, 0x03, 0x02, 0x08
	.byte 0x00, 0x05, 0x80, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04
	.4byte sAosaLabel, sAosbLabel, sAoscLabel, sAosdLabel, sAoseLabel, sAosfLabel
	.byte 0x06, 0x05, 0x04, 0x04, 0x03, 0x03, 0x00, 0x00, 0xFC, 0xC2, 0x3C, 0x08
	.byte 0x68, 0x47, 0x4F, 0x08, 0x2C, 0xCC, 0x3C, 0x08, 0x68, 0x53, 0x4F, 0x08, 0xEC, 0xA0, 0x51, 0x08
	.byte 0x8C, 0x8D, 0x51, 0x08, 0xE0, 0xB5, 0x4F, 0x08, 0xD0, 0x03, 0x3D, 0x08, 0x08, 0x60, 0x3D, 0x08
	.byte 0xE8, 0x91, 0x51, 0x08, 0x14, 0x53, 0x4F, 0x08, 0xA0, 0xC5, 0x3C, 0x08, 0x50, 0x4A, 0x4F, 0x08
	.byte 0xEC, 0xD1, 0x3C, 0x08, 0xBC, 0x59, 0x4F, 0x08, 0x24, 0xA1, 0x51, 0x08, 0xA8, 0x8D, 0x51, 0x08
	.byte 0x38, 0xB6, 0x4F, 0x08, 0x38, 0x09, 0x3D, 0x08, 0xB0, 0x60, 0x3D, 0x08, 0x94, 0x92, 0x51, 0x08
	.byte 0x18, 0x53, 0x4F, 0x08, 0xBC, 0x02, 0x52, 0x08, 0x1C, 0x75, 0x98, 0x08, 0x7C, 0x7A, 0x57, 0x08
	.byte 0x3C, 0x3A, 0x9C, 0x08, 0x8C, 0x35, 0xA7, 0x08, 0xE4, 0x2C, 0xA6, 0x08, 0x98, 0x46, 0x9F, 0x08
	.byte 0xB8, 0xC7, 0x5F, 0x08, 0xC4, 0x20, 0x64, 0x08, 0xE0, 0x6C, 0xA6, 0x08, 0x38, 0x36, 0x9C, 0x08
	.byte 0xB4, 0xCB, 0x3C, 0x08, 0x4C, 0x52, 0x4F, 0x08, 0x6C, 0xFE, 0x3C, 0x08, 0xC8, 0xAC, 0x4F, 0x08
	.byte 0x9C, 0xAF, 0x51, 0x08, 0xC4, 0x91, 0x51, 0x08, 0x00, 0xB8, 0x4F, 0x08, 0xC0, 0x56, 0x3D, 0x08
	.byte 0xF8, 0x6A, 0x3D, 0x08, 0xF0, 0x9F, 0x51, 0x08, 0x5C, 0x53, 0x4F, 0x08, 0xE8, 0xCB, 0x3C, 0x08
	.byte 0xA4, 0x52, 0x4F, 0x08, 0xD0, 0x00, 0x3D, 0x08, 0x6C, 0xB0, 0x4F, 0x08, 0xD0, 0xAF, 0x51, 0x08
	.byte 0xD4, 0x91, 0x51, 0x08, 0x08, 0xB8, 0x4F, 0x08, 0xE0, 0x5A, 0x3D, 0x08, 0x94, 0x6B, 0x3D, 0x08
	.byte 0x60, 0xA0, 0x51, 0x08, 0x60, 0x53, 0x4F, 0x08, 0x1C, 0xCC, 0x3C, 0x08, 0xFC, 0x52, 0x4F, 0x08
	.byte 0x34, 0x03, 0x3D, 0x08, 0x10, 0xB4, 0x4F, 0x08, 0x04, 0xB0, 0x51, 0x08, 0xE4, 0x91, 0x51, 0x08
	.byte 0x10, 0xB8, 0x4F, 0x08, 0x00, 0x5F, 0x3D, 0x08, 0x30, 0x6C, 0x3D, 0x08, 0xD0, 0xA0, 0x51, 0x08
	.byte 0x64, 0x53, 0x4F, 0x08
