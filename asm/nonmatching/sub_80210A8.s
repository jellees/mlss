	.include "asm/macros.inc"

	.syntax unified

	.text

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
