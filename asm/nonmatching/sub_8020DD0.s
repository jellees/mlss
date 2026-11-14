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
