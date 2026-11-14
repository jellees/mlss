	.include "asm/macros.inc"

	.syntax unified

	.text

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
