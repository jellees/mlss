	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_801E3EC
sub_801E3EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	str r0, [sp, #0x000]
	ldrb r2, [r1, #0x00]
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x08
	orrs r2, r0
	subs r2, r1, r2
	str r2, [sp, #0x004]
	ldrb r1, [r1, #0x06]
	movs r0, #0x7F
	ands r0, r1
	adds r0, #0x01
	str r0, [sp, #0x008]
	ldrb r0, [r2, #0x00]
	str r0, [sp, #0x00C]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ldr r2, _0801E5C0 @ =0x081E25A4
	movs r1, #0x00
	movs r3, #0x00
	bl __vn__FUliPcUc
	mov r9, r0
	movs r0, #0x01
	ldr r1, [sp, #0x000]
	strb r0, [r1, #0x00]
	adds r1, #0x01
	str r1, [sp, #0x000]
	movs r2, #0x00
	ldr r3, [sp, #0x00C]
	cmp r2, r3
	blt _0801E438
	b _0801E670
_0801E438:
	lsls r0, r2, #0x01
	ldr r6, [sp, #0x004]
	adds r0, r0, r6
	ldrb r1, [r0, #0x01]
	ldrb r0, [r0, #0x02]
	lsls r0, r0, #0x08
	orrs r1, r0
	adds r5, r6, r1
	ldrb r0, [r5, #0x00]
	mov r10, r0
	adds r5, #0x01
	movs r0, #0x80
	mov r1, r10
	ands r0, r1
	cmp r0, #0x00
	beq _0801E46C
	movs r0, #0x7F
	ands r1, r0
	mov r10, r1
	lsls r0, r1, #0x01
	add r0, r10
	lsls r0, r0, #0x01
	adds r5, r5, r0
	ldrb r3, [r5, #0x00]
	mov r10, r3
	adds r5, #0x01
_0801E46C:
	ldrb r6, [r5, #0x00]
	str r6, [sp, #0x010]
	adds r5, #0x01
	ldr r0, _0801E5C4 @ =0x0839EE58
	adds r0, r6, r0
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x014]
	adds r1, r0, #0x0
	mov r0, r10
	muls r0, r1
	adds r3, r5, r0
	ldrb r6, [r3, #0x00]
	str r6, [sp, #0x018]
	adds r3, #0x01
	movs r6, #0x00
	mov r4, r9
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x008]
	adds r0, r0, r1
	str r0, [sp, #0x01C]
	adds r2, #0x01
	str r2, [sp, #0x020]
	ldr r2, [sp, #0x018]
	cmp r2, #0x00
	bne _0801E4A0
	b _0801E5AA
_0801E4A0:
	mov r8, r2
	negs r1, r2
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0801E518
	cmp r1, #0x03
	bge _0801E4F0
	cmp r1, #0x02
	bge _0801E4CE
	ldrb r0, [r3, #0x00]
	ldrb r1, [r3, #0x01]
	lsls r1, r1, #0x08
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldrb r0, [r3, #0x02]
	strh r0, [r4, #0x02]
	strh r6, [r4, #0x04]
	ldrb r6, [r3, #0x02]
	subs r2, #0x01
	mov r8, r2
	adds r3, #0x03
	adds r4, #0x06
_0801E4CE:
	ldrb r1, [r3, #0x00]
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r4, #0x00]
	ldrb r0, [r3, #0x02]
	strh r0, [r4, #0x02]
	strh r6, [r4, #0x04]
	ldrb r0, [r3, #0x02]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x01
	negs r0, r0
	add r8, r0
	adds r3, #0x03
	adds r4, #0x06
_0801E4F0:
	ldrb r1, [r3, #0x00]
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r4, #0x00]
	ldrb r0, [r3, #0x02]
	strh r0, [r4, #0x02]
	strh r6, [r4, #0x04]
	ldrb r0, [r3, #0x02]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r1, #0x01
	negs r1, r1
	add r8, r1
	adds r3, #0x03
	adds r4, #0x06
	mov r2, r8
	cmp r2, #0x00
	beq _0801E5AA
_0801E518:
	ldrb r1, [r3, #0x00]
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r4, #0x00]
	ldrb r0, [r3, #0x02]
	strh r0, [r4, #0x02]
	strh r6, [r4, #0x04]
	ldrb r0, [r3, #0x02]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r3, #0x3
	adds r0, r4, #0x6
	mov r12, r0
	ldrb r1, [r3, #0x03]
	ldrb r0, [r2, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r4, #0x06]
	ldrb r0, [r2, #0x02]
	mov r1, r12
	strh r0, [r1, #0x02]
	strh r6, [r1, #0x04]
	ldrb r0, [r2, #0x02]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r3, #0x6
	mov r12, r2
	adds r2, r4, #0x0
	adds r2, #0x0C
	ldrb r1, [r3, #0x06]
	mov r0, r12
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x08
	str r0, [sp, #0x024]
	orrs r1, r0
	strh r1, [r4, #0x0C]
	mov r1, r12
	ldrb r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	strh r6, [r2, #0x04]
	ldrb r0, [r1, #0x02]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r3, #0x0
	adds r2, #0x09
	movs r0, #0x12
	adds r0, r0, r4
	mov r12, r0
	ldrb r1, [r3, #0x09]
	ldrb r0, [r2, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r4, #0x12]
	ldrb r0, [r2, #0x02]
	mov r1, r12
	strh r0, [r1, #0x02]
	strh r6, [r1, #0x04]
	ldrb r0, [r2, #0x02]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r2, #0x04
	negs r2, r2
	add r8, r2
	adds r3, #0x0C
	adds r4, #0x18
	mov r0, r8
	cmp r0, #0x00
	bne _0801E518
_0801E5AA:
	movs r4, #0x00
	cmp r4, r10
	bge _0801E662
_0801E5B0:
	ldr r1, [sp, #0x010]
	cmp r1, #0x05
	bhi _0801E60A
	lsls r0, r1, #0x02
	ldr r1, _0801E5C8 @ =0x0801E5CC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0801E5C0: .4byte 0x081E25A4
_0801E5C4: .4byte 0x0839EE58
_0801E5C8: .4byte 0x0801E5CC
	.byte 0xE4, 0xE5, 0x01, 0x08, 0xEC, 0xE5, 0x01, 0x08, 0x08, 0xE6, 0x01, 0x08, 0xF2, 0xE5, 0x01, 0x08
	.byte 0x00, 0xE6, 0x01, 0x08, 0x08, 0xE6, 0x01, 0x08, 0x2A, 0x79, 0x69, 0x79, 0x03, 0x20, 0x05, 0xE0
	.byte 0xEA, 0x78, 0x29, 0x79, 0x01, 0xE0, 0xAA, 0x78, 0xE9, 0x78, 0x01, 0x20, 0x08, 0x40, 0x00, 0x02
	.byte 0x17, 0x18, 0x04, 0xE0, 0xA8, 0x78, 0x7F, 0x27, 0x07, 0x40, 0x00, 0xE0, 0xAF, 0x78
_0801E60A:
	mov r3, r9
	movs r1, #0x00
	adds r2, r4, #0x1
	mov r8, r2
	ldr r6, [sp, #0x014]
	adds r5, r5, r6
	ldr r0, [sp, #0x018]
	cmp r1, r0
	bge _0801E65C
	ldrh r2, [r3, #0x00]
	cmp r7, r2
	blt _0801E638
	ldrh r0, [r3, #0x02]
	adds r0, r2, r0
	cmp r7, r0
	bge _0801E638
	ldr r3, [sp, #0x000]
	adds r1, r3, r4
	subs r0, r7, r2
	mov r6, r9
	ldrb r6, [r6, #0x04]
	adds r0, r0, r6
	b _0801E65A
_0801E638:
	adds r1, #0x01
	adds r3, #0x06
	ldr r0, [sp, #0x018]
	cmp r1, r0
	bge _0801E65C
	ldrh r2, [r3, #0x00]
	cmp r7, r2
	blt _0801E638
	ldrh r0, [r3, #0x02]
	adds r0, r2, r0
	cmp r7, r0
	bge _0801E638
	ldr r6, [sp, #0x000]
	adds r1, r6, r4
	subs r0, r7, r2
	ldrb r3, [r3, #0x04]
	adds r0, r0, r3
_0801E65A:
	strb r0, [r1, #0x00]
_0801E65C:
	mov r4, r8
	cmp r4, r10
	blt _0801E5B0
_0801E662:
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x000]
	ldr r2, [sp, #0x020]
	ldr r1, [sp, #0x00C]
	cmp r2, r1
	bge _0801E670
	b _0801E438
_0801E670:
	mov r2, r9
	cmp r2, #0x00
	beq _0801E67C
	mov r0, r9
	bl __builtin_vec_delete
_0801E67C:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_801E68C
sub_801E68C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r12, r0
	ldr r0, [r0, #0x48]
	cmp r0, #0x00
	beq _0801E6A8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0801E6A8
	b _0801E7CE
_0801E6A8:
	mov r1, r12
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _0801E6B8
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0801E6B8
	b _0801E7CE
_0801E6B8:
	mov r2, r12
	ldrb r1, [r2, #0x12]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	beq _0801E6C6
	b _0801E7CE
_0801E6C6:
	lsls r0, r1, #0x1C
	lsrs r7, r0, #0x1F
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r2, #0x3C]
	mov r10, r0
	mov r0, r12
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0x2C
	ldsh r6, [r2, r1]
	movs r0, #0x2A
	ldsh r5, [r2, r0]
	adds r2, #0x23
	ldrb r4, [r2, #0x00]
	mov r1, r12
	adds r1, #0x22
	ldrb r0, [r1, #0x00]
	mov r8, r0
	mov r0, r12
	adds r0, #0x20
	movs r3, #0x00
	ldsb r3, [r0, r3]
	str r2, [sp, #0x008]
	str r1, [sp, #0x004]
	str r0, [sp, #0x000]
	cmp r3, #0x00
	bge _0801E706
	negs r3, r3
_0801E706:
	adds r6, r6, r3
	subs r5, r5, r3
	cmp r5, #0x00
	bgt _0801E75A
	movs r0, #0x01
	eors r7, r0
	lsls r2, r7, #0x03
	movs r3, #0x09
	negs r3, r3
_0801E718:
	ldr r1, [sp, #0x000]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	ble _0801E72C
	adds r4, #0x01
	cmp r4, r9
	blt _0801E746
	movs r4, #0x00
	b _0801E736
_0801E72C:
	subs r4, #0x01
	cmp r4, #0x00
	bge _0801E746
	mov r4, r9
	subs r4, #0x01
_0801E736:
	movs r6, #0x00
	mov r0, r12
	ldrb r1, [r0, #0x12]
	adds r0, r3, #0x0
	ands r0, r1
	orrs r0, r2
	mov r1, r12
	strb r0, [r1, #0x12]
_0801E746:
	lsls r0, r4, #0x01
	adds r0, #0x01
	add r0, r10
	ldrb r1, [r0, #0x00]
	mov r8, r1
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x04
	adds r5, r5, r0
	cmp r5, #0x00
	ble _0801E718
_0801E75A:
	movs r2, #0x01
	mov r0, r12
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0801E79A
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0801E78C
	movs r0, #0x10
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x12]
	mov r4, r9
	subs r4, #0x01
	lsls r0, r4, #0x01
	adds r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	mov r8, r0
	movs r5, #0x01
	movs r6, #0x00
	b _0801E79A
_0801E78C:
	cmp r0, #0x04
	bne _0801E79A
	movs r0, #0x20
	orrs r0, r1
	mov r2, r12
	strb r0, [r2, #0x12]
	movs r2, #0x00
_0801E79A:
	cmp r2, #0x00
	beq _0801E7CE
	mov r0, r12
	ldr r1, [r0, #0x38]
	ldrb r2, [r1, #0x00]
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x08
	orrs r2, r0
	subs r1, r1, r2
	mov r2, r8
	lsls r0, r2, #0x01
	adds r0, r0, r1
	ldrb r2, [r0, #0x01]
	ldrb r0, [r0, #0x02]
	lsls r0, r0, #0x08
	orrs r2, r0
	adds r1, r1, r2
	mov r0, r12
	str r1, [r0, #0x40]
	strh r6, [r0, #0x2C]
	strh r5, [r0, #0x2A]
	ldr r1, [sp, #0x008]
	strb r4, [r1, #0x00]
	mov r0, r8
	ldr r2, [sp, #0x004]
	strb r0, [r2, #0x00]
_0801E7CE:
	mov r1, r12
	ldr r0, [r1, #0x5C]
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _0801E7FA
	mov r0, r12
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0801E7F2
	mov r0, r12
	ldrb r1, [r0, #0x12]
	movs r0, #0x28
	ands r0, r1
	cmp r0, #0x08
	bne _0801E7FA
_0801E7F2:
	mov r0, r12
	ldr r1, [r0, #0x60]
	bl _call_via_r2
_0801E7FA:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_801E80C
sub_801E80C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x054
	adds r7, r0, #0x0
	str r1, [sp, #0x02C]
	str r2, [sp, #0x030]
	ldr r1, [r7, #0x50]
	cmp r1, #0x00
	beq _0801E89C
	ldr r0, [r7, #0x48]
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0801E87C
	ldrh r4, [r7, #0x28]
	lsls r4, r4, #0x17
	lsrs r4, r4, #0x12
	adds r0, r1, #0x0
	bl sub_80198B0
	adds r5, r0, #0x0
	subs r2, r4, r5
	cmp r2, #0x00
	ble _0801E86E
	movs r0, #0x00
	str r0, [sp, #0x010]
	ldr r1, [r7, #0x4C]
	adds r1, r1, r5
	lsls r2, r2, #0x09
	lsrs r2, r2, #0x0B
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	add r0, sp, #0x010
	bl CpuFastSet
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _0801E860
	adds r0, #0x1F
_0801E860:
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x17
	ldrh r2, [r7, #0x28]
	ldr r1, _0801E878 @ =0xFFFFFE00
	ands r1, r2
	orrs r1, r0
	strh r1, [r7, #0x28]
_0801E86E:
	ldr r0, [r7, #0x48]
	bl sub_8019808
	b _0801E89C
	.byte 0x00, 0x00
_0801E878: .4byte 0xFFFFFE00
_0801E87C:
	cmp r0, #0x00
	bne _0801E89C
	str r0, [r7, #0x50]
	ldr r0, _0801E8BC @ =0x0300034C
	ldr r1, _0801E8C0 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	adds r1, #0x01
	lsls r1, r1, #0x06
	ldrb r2, [r7, #0x12]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x12]
_0801E89C:
	ldr r0, [r7, #0x48]
	cmp r0, #0x00
	beq _0801E8AA
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0801E8AA
	b _0801EE80
_0801E8AA:
	ldr r2, [r7, #0x44]
	cmp r2, #0x00
	beq _0801E8C4
	ldrb r0, [r2, #0x00]
	cmp r0, #0x01
	beq _0801E8B8
	b _0801EE80
_0801E8B8:
	b _0801E916
	.byte 0x00, 0x00
_0801E8BC: .4byte 0x0300034C
_0801E8C0: .4byte 0x00000888
_0801E8C4:
	ldrb r0, [r7, #0x12]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x00
	beq _0801E912
	cmp r1, #0x40
	bne _0801E900
	ldr r4, [r7, #0x4C]
	ldrh r1, [r7, #0x2E]
	ldr r0, _0801E8E8 @ =0x06010000
	adds r3, r1, r0
	ldrb r1, [r7, #0x10]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801E8EC
	ldrh r2, [r7, #0x30]
	b _0801E8F2
_0801E8E8: .4byte 0x06010000
_0801E8EC:
	ldrh r0, [r7, #0x28]
	lsls r0, r0, #0x17
	lsrs r2, r0, #0x12
_0801E8F2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	movs r3, #0x20
	bl sub_8018218
_0801E900:
	ldrb r2, [r7, #0x12]
	lsrs r1, r2, #0x06
	subs r1, #0x01
	lsls r1, r1, #0x06
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x12]
	ldr r2, [r7, #0x44]
_0801E912:
	cmp r2, #0x00
	beq _0801E91A
_0801E916:
	movs r0, #0x00
	strh r0, [r7, #0x30]
_0801E91A:
	ldrb r1, [r7, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0801E926
	b _0801EE80
_0801E926:
	ldrb r0, [r7, #0x13]
	movs r1, #0x03
	ands r1, r0
	adds r3, r7, #0x0
	adds r3, #0x29
	str r3, [sp, #0x048]
	mov r4, sp
	adds r4, #0x20
	str r4, [sp, #0x050]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x04C]
	cmp r1, #0x00
	beq _0801E9B8
	cmp r1, #0x01
	bne _0801E9A0
	movs r6, #0x00
	ldrh r4, [r7, #0x14]
	movs r2, #0x00
	lsrs r0, r0, #0x04
	cmp r2, r0
	bcs _0801E9A0
	ldr r0, _0801E9E0 @ =0x0300034C
	mov r9, r0
_0801E956:
	movs r1, #0x01
	adds r0, r4, #0x0
	eors r0, r1
	ands r0, r1
	lsls r5, r2, #0x05
	ldr r3, [r7, #0x54]
	adds r2, #0x01
	mov r8, r2
	cmp r0, #0x00
	beq _0801E978
_0801E96A:
	adds r6, #0x01
	asrs r4, r4, #0x01
	adds r0, r4, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0801E96A
_0801E978:
	adds r0, r3, r5
	lsls r1, r6, #0x05
	ldr r2, _0801E9E4 @ =0x02000280
	adds r1, r1, r2
	ldr r2, _0801E9E8 @ =0x04000008
	bl CpuSet
	movs r0, #0x01
	lsls r0, r6
	mov r3, r9
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	strh r0, [r3, #0x00]
	adds r6, #0x01
	asrs r4, r4, #0x01
	mov r2, r8
	ldrb r0, [r7, #0x13]
	lsrs r0, r0, #0x04
	cmp r2, r0
	bcc _0801E956
_0801E9A0:
	ldrb r2, [r7, #0x13]
	lsls r1, r2, #0x1E
	lsrs r1, r1, #0x1E
	subs r1, #0x01
	movs r0, #0x03
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x13]
	ldr r2, [r7, #0x44]
_0801E9B8:
	ldrb r0, [r7, #0x10]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1B
	str r0, [sp, #0x034]
	ldrh r1, [r7, #0x10]
	ldr r0, _0801E9EC @ =0xFFFFFC3F
	ands r0, r1
	strh r0, [r7, #0x10]
	cmp r2, #0x00
	beq _0801E9F0
	adds r0, r7, #0x0
	adds r0, #0x22
	ldrb r1, [r0, #0x00]
	adds r0, #0x04
	ldrb r0, [r0, #0x00]
	muls r0, r1
	adds r0, #0x01
	adds r2, r2, r0
	str r2, [sp, #0x038]
	b _0801E9F4
_0801E9E0: .4byte 0x0300034C
_0801E9E4: .4byte 0x02000280
_0801E9E8: .4byte 0x04000008
_0801E9EC: .4byte 0xFFFFFC3F
_0801E9F0:
	movs r4, #0x00
	str r4, [sp, #0x038]
_0801E9F4:
	ldr r0, [r7, #0x40]
	mov r9, r0
	ldrb r3, [r0, #0x00]
	movs r1, #0x01
	add r9, r1
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0x00
	bne _0801EA08
	b _0801EBF4
_0801EA08:
	movs r0, #0x7F
	ands r3, r0
	ldr r2, [sp, #0x048]
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0801EA1A
	b _0801EBC8
_0801EA1A:
	ldr r2, _0801EBA8 @ =0x0300034C
	ldr r4, _0801EBAC @ =0x00000888
	adds r0, r2, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	ldr r4, [sp, #0x034]
	lsls r1, r4, #0x05
	adds r2, #0x80
	adds r1, r1, r2
	adds r0, r0, r1
	adds r5, r0, #0x6
	cmp r3, #0x00
	bne _0801EA3A
	b _0801EBEC
_0801EA3A:
	ldr r1, _0801EBB0 @ =0x0819832C
	ldr r0, _0801EBB4 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	mov r10, r3
_0801EA44:
	mov r0, r9
	ldrb r1, [r0, #0x02]
	ldrb r0, [r0, #0x03]
	lsls r0, r0, #0x08
	orrs r1, r0
	ldr r3, _0801EBB8 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r4, #0x04
	ldsh r0, [r7, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0801EA7A
	lsls r0, r2, #0x10
	negs r0, r0
	lsrs r2, r0, #0x10
_0801EA7A:
	ldr r6, _0801EBBC @ =0xFFFF0000
	ldr r0, [sp, #0x018]
	ands r0, r6
	orrs r0, r2
	str r0, [sp, #0x018]
	mov r0, r9
	ldrb r1, [r0, #0x04]
	ldrb r0, [r0, #0x05]
	lsls r0, r0, #0x08
	orrs r1, r0
	ldr r3, _0801EBB8 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r4, #0x06
	ldsh r0, [r7, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r3, [r7, #0x11]
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _0801EABE
	lsls r0, r2, #0x10
	negs r0, r0
	lsrs r2, r0, #0x10
_0801EABE:
	lsls r2, r2, #0x10
	ldr r1, _0801EBC0 @ =0x0000FFFF
	ldr r0, [sp, #0x018]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x018]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	beq _0801EAE2
	lsls r0, r1, #0x10
	negs r0, r0
	lsrs r1, r0, #0x10
_0801EAE2:
	cmp r4, #0x00
	beq _0801EAEC
	lsls r0, r1, #0x10
	negs r0, r0
	lsrs r1, r0, #0x10
_0801EAEC:
	ldrh r2, [r7, #0x0C]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r0, sp, #0x018
	ldr r1, [r0, #0x04]
	ands r1, r6
	orrs r1, r2
	str r1, [r0, #0x04]
	adds r1, r5, #0x0
	movs r2, #0x01
	movs r3, #0x08
	bl ObjAffineSet
	movs r1, #0x08
	ldsh r4, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #0x11
	asrs r6, r2, #0x10
	cmp r4, r6
	beq _0801EB42
	ldr r3, _0801EBB8 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x00]
	ldr r3, _0801EBB8 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r1, #0x10
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x10]
_0801EB42:
	movs r2, #0x0A
	ldsh r4, [r7, r2]
	cmp r4, r6
	beq _0801EB72
	ldr r3, _0801EBB8 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r1, #0x08
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x08]
	ldr r3, _0801EBB8 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r1, #0x18
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x18]
_0801EB72:
	adds r5, #0x20
	ldr r2, [sp, #0x034]
	adds r2, #0x01
	str r2, [sp, #0x034]
	ldrh r2, [r7, #0x10]
	lsls r0, r2, #0x16
	lsrs r0, r0, #0x1C
	adds r0, #0x01
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x06
	ldr r3, _0801EBC4 @ =0xFFFFFC3F
	adds r1, r3, #0x0
	ands r2, r1
	orrs r2, r0
	strh r2, [r7, #0x10]
	movs r4, #0x01
	negs r4, r4
	add r10, r4
	movs r0, #0x06
	add r9, r0
	mov r1, r10
	cmp r1, #0x00
	beq _0801EBA4
	b _0801EA44
_0801EBA4:
	b _0801EBEC
	.byte 0x00, 0x00
_0801EBA8: .4byte 0x0300034C
_0801EBAC: .4byte 0x00000888
_0801EBB0: .4byte 0x0819832C
_0801EBB4: .4byte 0x08198220
_0801EBB8: .4byte 0x03001038
_0801EBBC: .4byte 0xFFFF0000
_0801EBC0: .4byte 0x0000FFFF
_0801EBC4: .4byte 0xFFFFFC3F
_0801EBC8:
	lsls r0, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x01
	add r9, r0
	ldr r2, [sp, #0x034]
	adds r2, r2, r3
	str r2, [sp, #0x034]
	ldrh r2, [r7, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, r1, r3
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _0801EE94 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #0x10]
_0801EBEC:
	mov r4, r9
	ldrb r3, [r4, #0x00]
	movs r0, #0x01
	add r9, r0
_0801EBF4:
	mov r2, r9
	ldrb r1, [r2, #0x00]
	movs r4, #0x01
	add r9, r4
	mov r0, r9
	str r0, [sp, #0x020]
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x014]
	ldr r2, [sp, #0x02C]
	str r2, [r7, #0x34]
	ldr r0, _0801EE98 @ =0x03000D58
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r4, [sp, #0x038]
	str r4, [sp, #0x000]
	ldr r0, [sp, #0x04C]
	str r0, [sp, #0x004]
	ldr r2, [sp, #0x034]
	str r2, [sp, #0x008]
	ldr r4, [sp, #0x030]
	str r4, [sp, #0x00C]
	ldr r4, [r1, #0x00]
	ldr r0, [sp, #0x02C]
	adds r1, r7, #0x0
	ldr r2, [sp, #0x050]
	bl _call_via_r4
	str r0, [sp, #0x02C]
	ldr r0, [sp, #0x020]
	mov r9, r0
	ldr r2, [sp, #0x048]
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0801EC40
	b _0801ED6C
_0801EC40:
	ldr r1, _0801EE9C @ =0x0300034C
	ldr r3, _0801EEA0 @ =0x00000888
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r1, #0x86
	adds r0, r0, r1
	str r0, [sp, #0x03C]
	movs r4, #0x00
	mov r10, r4
	ldr r1, _0801EEA4 @ =0x0819832C
	ldr r0, _0801EEA8 @ =0x08198220
	subs r6, r1, r0
_0801EC5E:
	ldr r2, [sp, #0x04C]
	add r2, r10
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0801ED60
	adds r0, r1, #0x0
	lsls r0, r0, #0x05
	ldr r1, [sp, #0x03C]
	adds r5, r1, r0
	ldrh r2, [r7, #0x04]
	movs r3, #0x04
	ldsh r1, [r7, r3]
	movs r4, #0x80
	lsls r4, r4, #0x01
	mov r8, r4
	cmp r1, r8
	beq _0801EC98
	ldr r0, _0801EEAC @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r0, #0x80
	lsls r0, r0, #0x09
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801EC98:
	movs r0, #0x01
	mov r1, r10
	ands r0, r1
	cmp r0, #0x00
	beq _0801ECA8
	lsls r0, r2, #0x10
	negs r0, r0
	lsrs r2, r0, #0x10
_0801ECA8:
	ldr r4, _0801EEB0 @ =0xFFFF0000
	ldr r0, [sp, #0x024]
	ands r0, r4
	orrs r0, r2
	str r0, [sp, #0x024]
	ldrh r2, [r7, #0x06]
	movs r3, #0x06
	ldsh r1, [r7, r3]
	cmp r1, r8
	beq _0801ECCE
	ldr r0, _0801EEAC @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r0, #0x80
	lsls r0, r0, #0x09
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801ECCE:
	movs r0, #0x02
	mov r1, r10
	ands r0, r1
	cmp r0, #0x00
	beq _0801ECDE
	lsls r0, r2, #0x10
	negs r0, r0
	lsrs r2, r0, #0x10
_0801ECDE:
	lsls r2, r2, #0x10
	ldr r1, _0801EEB4 @ =0x0000FFFF
	ldr r0, [sp, #0x024]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x024]
	ldrh r2, [r7, #0x0C]
	add r0, sp, #0x024
	ldr r1, [r0, #0x04]
	ands r1, r4
	orrs r1, r2
	str r1, [r0, #0x04]
	adds r1, r5, #0x0
	movs r2, #0x01
	movs r3, #0x08
	bl ObjAffineSet
	movs r2, #0x08
	ldsh r4, [r7, r2]
	cmp r4, r8
	beq _0801ED30
	ldr r3, _0801EEAC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x00]
	ldr r3, _0801EEAC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	movs r1, #0x10
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x10]
_0801ED30:
	movs r2, #0x0A
	ldsh r4, [r7, r2]
	cmp r4, r8
	beq _0801ED60
	ldr r3, _0801EEAC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	movs r1, #0x08
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x08]
	ldr r3, _0801EEAC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	movs r1, #0x18
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x18]
_0801ED60:
	movs r2, #0x01
	add r10, r2
	mov r3, r10
	cmp r3, #0x03
	bgt _0801ED6C
	b _0801EC5E
_0801ED6C:
	ldr r4, [sp, #0x038]
	cmp r4, #0x00
	bne _0801ED74
	b _0801EE80
_0801ED74:
	ldr r0, _0801EE9C @ =0x0300034C
	ldr r1, _0801EEA0 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	mov r5, r9
	cmp r0, #0x00
	beq _0801ED88
	ldr r5, [r7, #0x58]
_0801ED88:
	movs r2, #0x00
	str r2, [sp, #0x040]
	ldr r3, [sp, #0x048]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	mov r8, r0
	cmp r5, #0x00
	beq _0801EE64
	ldrb r4, [r5, #0x00]
	str r4, [sp, #0x044]
	adds r5, #0x01
	ldrh r6, [r7, #0x2E]
	cmp r2, r4
	bge _0801EE64
	mov r10, r4
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _0801EDEC
	ldrb r2, [r5, #0x00]
	ldrb r0, [r5, #0x01]
	movs r1, #0x03
	ands r1, r0
	lsls r1, r1, #0x08
	orrs r2, r1
	ldrb r0, [r5, #0x02]
	lsls r4, r0, #0x05
	mov r0, r8
	cmp r0, #0x00
	bne _0801EDDC
	lsls r1, r2, #0x05
	ldr r0, [r7, #0x4C]
	adds r0, r0, r1
	ldr r2, _0801EEB8 @ =0x06010000
	adds r1, r6, r2
	ldr r3, [sp, #0x040]
	str r3, [sp, #0x000]
	adds r2, r4, #0x0
	movs r3, #0x20
	bl sub_8018218
_0801EDDC:
	adds r6, r6, r4
	str r4, [sp, #0x040]
	ldr r4, [sp, #0x044]
	subs r4, #0x01
	mov r10, r4
	adds r5, #0x03
	cmp r4, #0x00
	beq _0801EE64
_0801EDEC:
	ldrb r3, [r5, #0x00]
	ldrb r0, [r5, #0x01]
	movs r1, #0x03
	ands r1, r0
	lsls r1, r1, #0x08
	orrs r3, r1
	ldrb r0, [r5, #0x02]
	lsls r2, r0, #0x05
	adds r4, r2, #0x0
	mov r0, r8
	cmp r0, #0x00
	bne _0801EE18
	lsls r1, r3, #0x05
	ldr r0, [r7, #0x4C]
	adds r0, r0, r1
	ldr r3, _0801EEB8 @ =0x06010000
	adds r1, r6, r3
	mov r3, r8
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_0801EE18:
	adds r6, r6, r4
	ldr r0, [sp, #0x040]
	adds r0, r0, r4
	str r0, [sp, #0x040]
	adds r2, r5, #0x3
	ldrb r3, [r5, #0x03]
	ldrb r1, [r2, #0x01]
	movs r0, #0x03
	ands r0, r1
	lsls r0, r0, #0x08
	orrs r3, r0
	ldrb r0, [r2, #0x02]
	lsls r4, r0, #0x05
	mov r1, r8
	cmp r1, #0x00
	bne _0801EE4E
	lsls r1, r3, #0x05
	ldr r0, [r7, #0x4C]
	adds r0, r0, r1
	ldr r2, _0801EEB8 @ =0x06010000
	adds r1, r6, r2
	mov r3, r8
	str r3, [sp, #0x000]
	adds r2, r4, #0x0
	movs r3, #0x20
	bl sub_8018218
_0801EE4E:
	adds r6, r6, r4
	ldr r0, [sp, #0x040]
	adds r0, r0, r4
	str r0, [sp, #0x040]
	movs r1, #0x02
	negs r1, r1
	add r10, r1
	adds r5, #0x06
	mov r2, r10
	cmp r2, #0x00
	bne _0801EDEC
_0801EE64:
	add r3, sp, #0x040
	ldrh r3, [r3, #0x00]
	strh r3, [r7, #0x30]
	ldr r0, _0801EE9C @ =0x0300034C
	ldr r4, _0801EEA0 @ =0x00000888
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	movs r1, #0x00
	cmp r0, #0x00
	beq _0801EE7E
	mov r1, r9
_0801EE7E:
	str r1, [r7, #0x58]
_0801EE80:
	ldr r0, [sp, #0x02C]
	add sp, #0x054
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0801EE94: .4byte 0xFFFFFC3F
_0801EE98: .4byte 0x03000D58
_0801EE9C: .4byte 0x0300034C
_0801EEA0: .4byte 0x00000888
_0801EEA4: .4byte 0x0819832C
_0801EEA8: .4byte 0x08198220
_0801EEAC: .4byte 0x03001038
_0801EEB0: .4byte 0xFFFF0000
_0801EEB4: .4byte 0x0000FFFF
_0801EEB8: .4byte 0x06010000
	thumb_func_start sub_801EEBC
sub_801EEBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x04C
	str r0, [sp, #0x024]
	mov r9, r1
	str r2, [sp, #0x028]
	str r3, [sp, #0x02C]
	mov r2, sp
	movs r3, #0x00
	ldrh r1, [r1, #0x14]
	mov r0, sp
	adds r0, #0x20
	str r0, [sp, #0x048]
	cmp r1, #0x00
	beq _0801EEF8
	movs r4, #0x01
_0801EEE2:
	adds r0, r1, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0801EEF0
	lsls r0, r3, #0x0C
	strh r0, [r2, #0x00]
	adds r2, #0x02
_0801EEF0:
	adds r3, #0x01
	asrs r1, r1, #0x01
	cmp r1, #0x00
	bne _0801EEE2
_0801EEF8:
	mov r1, r9
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	beq _0801EF10
	mov r0, r9
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0801EF36
_0801EF10:
	mov r3, r9
	movs r7, #0x04
	ldsh r0, [r3, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0801EF36
	movs r2, #0x06
	ldsh r0, [r3, r2]
	cmp r0, r1
	bgt _0801EF36
	movs r7, #0x08
	ldsh r0, [r3, r7]
	cmp r0, r1
	bgt _0801EF36
	movs r2, #0x0A
	ldsh r0, [r3, r2]
	cmp r0, r1
	ble _0801EF3C
_0801EF36:
	movs r3, #0x03
	str r3, [sp, #0x030]
	b _0801EF56
_0801EF3C:
	mov r7, r9
	ldr r2, [r7, #0x04]
	ldr r0, _0801F230 @ =0x01000100
	movs r1, #0x01
	str r1, [sp, #0x030]
	cmp r2, r0
	bne _0801EF56
	ldr r1, [r7, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x030]
_0801EF56:
	mov r2, r9
	ldrb r1, [r2, #0x1F]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1E
	ldr r3, [sp, #0x048]
	strb r0, [r3, #0x00]
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1E
	strb r0, [r3, #0x01]
	lsls r0, r1, #0x1A
	lsrs r0, r0, #0x1E
	strb r0, [r3, #0x02]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1E
	strb r1, [r3, #0x03]
	ldr r7, [sp, #0x028]
	ldr r7, [r7, #0x00]
	str r7, [sp, #0x034]
	movs r0, #0x00
	str r0, [sp, #0x038]
	ldr r1, [sp, #0x02C]
	cmp r0, r1
	blt _0801EF86
	b _0801F358
_0801EF86:
	ldr r2, [sp, #0x034]
	ldrb r0, [r2, #0x01]
	movs r3, #0x03
	ands r3, r0
	str r3, [sp, #0x03C]
	movs r7, #0x03
	str r7, [sp, #0x040]
	adds r1, r0, #0x0
	ldr r0, [sp, #0x030]
	cmp r0, #0x03
	beq _0801EFA4
	str r0, [sp, #0x040]
	cmp r3, #0x00
	beq _0801EFA4
	str r3, [sp, #0x040]
_0801EFA4:
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x03
	ldr r3, [sp, #0x034]
	ldrb r2, [r3, #0x03]
	lsrs r0, r2, #0x06
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldr r7, _0801F234 @ =0x0839EE04
	adds r1, r1, r7
	ldrb r3, [r1, #0x00]
	ldrb r4, [r1, #0x01]
	ldr r0, [sp, #0x034]
	ldrb r6, [r0, #0x02]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	beq _0801EFCA
	ldr r0, _0801F238 @ =0xFFFFFF00
	orrs r6, r0
_0801EFCA:
	ldr r1, [sp, #0x034]
	movs r5, #0x00
	ldsb r5, [r1, r5]
	ldr r2, [sp, #0x03C]
	cmp r2, #0x03
	bne _0801EFE6
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	adds r6, r6, r0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	adds r5, r5, r0
_0801EFE6:
	mov r7, r9
	movs r1, #0x04
	ldsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #0x01
	cmp r0, r2
	beq _0801F020
	lsls r3, r3, #0x08
	muls r6, r0
	muls r0, r3
	cmp r0, #0x00
	bge _0801F000
	adds r0, #0xFF
_0801F000:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r6, r6, r0
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0801F014
	adds r0, #0xFF
_0801F014:
	asrs r6, r0, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0801F01E
	adds r0, #0xFF
_0801F01E:
	asrs r3, r0, #0x08
_0801F020:
	mov r2, r9
	ldrb r1, [r2, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0801F032
	negs r0, r6
	subs r6, r0, r3
_0801F032:
	mov r7, r9
	movs r1, #0x06
	ldsh r0, [r7, r1]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _0801F072
	lsls r4, r4, #0x08
	mov r1, r9
	movs r7, #0x06
	ldsh r0, [r1, r7]
	muls r5, r0
	muls r0, r4
	cmp r0, #0x00
	bge _0801F052
	adds r0, #0xFF
_0801F052:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r5, r5, r0
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0801F066
	adds r0, #0xFF
_0801F066:
	asrs r5, r0, #0x08
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0801F070
	adds r0, #0xFF
_0801F070:
	asrs r4, r0, #0x08
_0801F072:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _0801F07E
	negs r0, r5
	subs r5, r0, r4
_0801F07E:
	mov r1, r9
	ldrh r0, [r1, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _0801F0E4
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	mov r8, r0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r2, r8
	adds r7, r6, r2
	add r5, r10
	mov r12, r5
	lsls r1, r1, #0x01
	ldr r2, _0801F23C @ =0x08198584
	adds r0, r1, r2
	movs r2, #0x00
	ldsh r5, [r0, r2]
	adds r2, r7, #0x0
	muls r2, r5
	ldr r0, _0801F240 @ =0x08198504
	adds r1, r1, r0
	movs r0, #0x00
	ldsh r1, [r1, r0]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0801F0C6
	ldr r2, _0801F244 @ =0x00003FFF
	adds r0, r0, r2
_0801F0C6:
	asrs r0, r0, #0x0E
	mov r2, r8
	subs r6, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r5
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0801F0DE
	ldr r7, _0801F244 @ =0x00003FFF
	adds r0, r0, r7
_0801F0DE:
	asrs r0, r0, #0x0E
	mov r1, r10
	subs r5, r0, r1
_0801F0E4:
	mov r2, r9
	ldr r1, [r2, #0x08]
	ldr r0, _0801F230 @ =0x01000100
	cmp r1, r0
	beq _0801F13C
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F0FC
	adds r0, #0xFF
_0801F0FC:
	asrs r6, r0, #0x08
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F108
	adds r0, #0xFF
_0801F108:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r6, r6, r0
	mov r0, r9
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F124
	adds r0, #0xFF
_0801F124:
	asrs r5, r0, #0x08
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F130
	adds r0, #0xFF
_0801F130:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r5, r5, r0
_0801F13C:
	ldr r7, [sp, #0x040]
	cmp r7, #0x03
	bne _0801F156
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	subs r6, r6, r0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	subs r5, r5, r0
	lsls r3, r3, #0x01
	lsls r4, r4, #0x01
_0801F156:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r6, r6, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r5, r5, r0
	cmn r6, r3
	bge _0801F16A
	b _0801F338
_0801F16A:
	cmp r6, #0xEF
	ble _0801F170
	b _0801F338
_0801F170:
	cmn r5, r4
	bge _0801F176
	b _0801F338
_0801F176:
	cmp r5, #0x9F
	ble _0801F17C
	b _0801F338
_0801F17C:
	ldr r1, [sp, #0x034]
	ldrb r0, [r1, #0x05]
	lsrs r0, r0, #0x02
	movs r2, #0x03
	ands r0, r2
	ldr r3, [sp, #0x048]
	adds r0, r3, r0
	ldrb r1, [r0, #0x00]
	lsls r7, r1, #0x0A
	mov r8, r7
	lsls r1, r1, #0x1E
	mov r3, r9
	ldrh r0, [r3, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r7, [sp, #0x078]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r0, [sp, #0x038]
	orrs r1, r0
	ldr r3, [sp, #0x024]
	str r1, [r3, #0x08]
	ldrb r0, [r7, #0x00]
	adds r0, #0x01
	strb r0, [r7, #0x00]
	ldr r7, [sp, #0x040]
	cmp r7, #0x00
	beq _0801F20E
	ldr r0, [sp, #0x03C]
	cmp r0, #0x00
	bne _0801F20E
	ldr r1, [sp, #0x034]
	ldrb r0, [r1, #0x03]
	lsrs r0, r0, #0x04
	ands r0, r2
	str r0, [sp, #0x044]
	mov r2, r9
	ldrb r0, [r2, #0x11]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r1, r0
	ldr r3, [sp, #0x044]
	eors r3, r1
	str r3, [sp, #0x044]
	ldr r7, [sp, #0x070]
	adds r2, r7, r3
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0801F20E
	add r0, sp, #0x074
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
	ldr r1, [sp, #0x074]
	adds r1, #0x01
	str r1, [sp, #0x074]
	mov r3, r9
	ldrh r2, [r3, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _0801F248 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x10]
_0801F20E:
	movs r0, #0x00
	ldr r7, [sp, #0x024]
	strh r0, [r7, #0x06]
	ldr r7, [sp, #0x024]
	mov r0, r9
	ldrb r1, [r0, #0x11]
	movs r2, #0x0C
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0801F24C
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsls r2, r0, #0x0A
	ldr r3, [sp, #0x034]
	ldrb r1, [r3, #0x01]
	b _0801F256
_0801F230: .4byte 0x01000100
_0801F234: .4byte 0x0839EE04
_0801F238: .4byte 0xFFFFFF00
_0801F23C: .4byte 0x08198584
_0801F240: .4byte 0x08198504
_0801F244: .4byte 0x00003FFF
_0801F248: .4byte 0xFFFFFC3F
_0801F24C:
	ldr r0, [sp, #0x034]
	ldrb r1, [r0, #0x01]
	adds r0, r2, #0x0
	ands r0, r1
	lsls r2, r0, #0x08
_0801F256:
	movs r0, #0xF0
	ands r0, r1
	ldr r1, [sp, #0x040]
	orrs r0, r1
	lsls r0, r0, #0x08
	mov r3, r9
	ldrb r1, [r3, #0x11]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x0C
	orrs r0, r1
	orrs r2, r0
	movs r0, #0xFF
	ands r5, r0
	orrs r2, r5
	strh r2, [r7, #0x00]
	ldr r0, [sp, #0x040]
	cmp r0, #0x00
	beq _0801F2BE
	ldr r1, [sp, #0x034]
	ldrb r2, [r1, #0x03]
	movs r0, #0xC0
	ands r0, r2
	lsls r4, r0, #0x08
	ldr r3, _0801F2A0 @ =0x000001FF
	ands r3, r6
	ldr r0, [sp, #0x03C]
	cmp r0, #0x00
	bne _0801F2A4
	ldr r1, [sp, #0x070]
	ldr r2, [sp, #0x044]
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x09
	b _0801F2B6
_0801F2A0: .4byte 0x000001FF
_0801F2A4:
	mov r0, r9
	ldrb r1, [r0, #0x10]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1B
	movs r0, #0x3E
	ands r0, r2
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x09
_0801F2B6:
	orrs r0, r4
	orrs r0, r3
	strh r0, [r7, #0x02]
	b _0801F2F8
_0801F2BE:
	ldr r1, [sp, #0x034]
	ldrb r4, [r1, #0x03]
	movs r2, #0xC0
	ands r2, r4
	movs r1, #0x10
	ands r1, r4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, r9
	ldrb r3, [r0, #0x11]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x04
	eors r1, r0
	orrs r2, r1
	movs r0, #0x20
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r3, r3, #0x07
	lsls r3, r3, #0x05
	eors r0, r3
	orrs r2, r0
	lsls r2, r2, #0x08
	ldr r1, _0801F314 @ =0x000001FF
	adds r0, r1, #0x0
	ands r6, r0
	orrs r2, r6
	strh r2, [r7, #0x02]
_0801F2F8:
	ldr r3, [sp, #0x034]
	ldrb r2, [r3, #0x05]
	lsrs r3, r2, #0x04
	ldr r0, [sp, #0x06C]
	cmp r0, #0x00
	bne _0801F318
	ldr r0, [sp, #0x034]
	ldrb r1, [r0, #0x04]
	movs r0, #0x03
	ands r0, r2
	lsls r0, r0, #0x08
	orrs r1, r0
	b _0801F31C
	.byte 0x00, 0x00
_0801F314: .4byte 0x000001FF
_0801F318:
	ldr r2, [sp, #0x06C]
	ldrb r1, [r2, #0x00]
_0801F31C:
	lsls r0, r3, #0x01
	add r0, sp
	ldrh r0, [r0, #0x00]
	mov r3, r8
	orrs r3, r0
	mov r2, r9
	ldrh r0, [r2, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	orrs r3, r0
	strh r3, [r7, #0x04]
	ldr r3, [sp, #0x024]
	ldr r3, [r3, #0x10]
	str r3, [sp, #0x024]
_0801F338:
	ldr r7, [sp, #0x06C]
	cmp r7, #0x00
	beq _0801F344
	adds r0, r7, #0x0
	adds r0, #0x01
	str r0, [sp, #0x06C]
_0801F344:
	ldr r1, [sp, #0x038]
	adds r1, #0x01
	str r1, [sp, #0x038]
	ldr r2, [sp, #0x034]
	adds r2, #0x06
	str r2, [sp, #0x034]
	ldr r3, [sp, #0x02C]
	cmp r1, r3
	bge _0801F358
	b _0801EF86
_0801F358:
	ldr r7, [sp, #0x034]
	ldr r0, [sp, #0x028]
	str r7, [r0, #0x00]
	ldr r0, [sp, #0x024]
	add sp, #0x04C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_801F370
sub_801F370:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
	str r0, [sp, #0x020]
	mov r8, r1
	str r2, [sp, #0x024]
	str r3, [sp, #0x028]
	mov r2, sp
	movs r3, #0x00
	ldrh r1, [r1, #0x14]
	cmp r1, #0x00
	beq _0801F3A6
	movs r4, #0x01
_0801F390:
	adds r0, r1, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0801F39E
	lsls r0, r3, #0x0C
	strh r0, [r2, #0x00]
	adds r2, #0x02
_0801F39E:
	adds r3, #0x01
	asrs r1, r1, #0x01
	cmp r1, #0x00
	bne _0801F390
_0801F3A6:
	mov r1, r8
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	beq _0801F3BE
	mov r0, r8
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0801F3E4
_0801F3BE:
	mov r3, r8
	movs r7, #0x04
	ldsh r0, [r3, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0801F3E4
	movs r2, #0x06
	ldsh r0, [r3, r2]
	cmp r0, r1
	bgt _0801F3E4
	movs r7, #0x08
	ldsh r0, [r3, r7]
	cmp r0, r1
	bgt _0801F3E4
	movs r2, #0x0A
	ldsh r0, [r3, r2]
	cmp r0, r1
	ble _0801F3EA
_0801F3E4:
	movs r3, #0x03
	str r3, [sp, #0x02C]
	b _0801F404
_0801F3EA:
	mov r7, r8
	ldr r2, [r7, #0x04]
	ldr r0, _0801F608 @ =0x01000100
	movs r1, #0x01
	str r1, [sp, #0x02C]
	cmp r2, r0
	bne _0801F404
	ldr r1, [r7, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x02C]
_0801F404:
	ldr r2, [sp, #0x024]
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x030]
	movs r3, #0x00
	str r3, [sp, #0x034]
	ldr r7, [sp, #0x028]
	cmp r3, r7
	blt _0801F416
	b _0801F7B8
_0801F416:
	ldr r0, [sp, #0x030]
	ldrb r1, [r0, #0x04]
	lsrs r2, r1, #0x02
	movs r0, #0x03
	ands r2, r0
	str r2, [sp, #0x038]
	movs r3, #0x03
	str r3, [sp, #0x03C]
	ldr r7, [sp, #0x02C]
	cmp r7, #0x03
	beq _0801F434
	str r7, [sp, #0x03C]
	cmp r2, #0x00
	beq _0801F434
	str r2, [sp, #0x03C]
_0801F434:
	lsrs r0, r1, #0x04
	lsls r0, r0, #0x01
	ldr r1, _0801F60C @ =0x0839EE04
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
	ldrb r5, [r0, #0x01]
	ldr r2, [sp, #0x030]
	movs r6, #0x00
	ldsb r6, [r2, r6]
	movs r4, #0x01
	ldsb r4, [r2, r4]
	ldr r7, [sp, #0x038]
	cmp r7, #0x03
	bne _0801F458
	lsrs r0, r3, #0x01
	adds r6, r6, r0
	lsrs r0, r5, #0x01
	adds r4, r4, r0
_0801F458:
	mov r1, r8
	movs r2, #0x04
	ldsh r0, [r1, r2]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _0801F492
	lsls r3, r3, #0x08
	muls r6, r0
	muls r0, r3
	cmp r0, #0x00
	bge _0801F472
	adds r0, #0xFF
_0801F472:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r6, r6, r0
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0801F486
	adds r0, #0xFF
_0801F486:
	asrs r6, r0, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0801F490
	adds r0, #0xFF
_0801F490:
	asrs r3, r0, #0x08
_0801F492:
	mov r7, r8
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0801F4A4
	negs r0, r6
	subs r6, r0, r3
_0801F4A4:
	mov r1, r8
	movs r7, #0x06
	ldsh r0, [r1, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	beq _0801F4E4
	lsls r5, r5, #0x08
	mov r7, r8
	movs r1, #0x06
	ldsh r0, [r7, r1]
	muls r4, r0
	muls r0, r5
	cmp r0, #0x00
	bge _0801F4C4
	adds r0, #0xFF
_0801F4C4:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0801F4D8
	adds r0, #0xFF
_0801F4D8:
	asrs r4, r0, #0x08
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0801F4E2
	adds r0, #0xFF
_0801F4E2:
	asrs r5, r0, #0x08
_0801F4E4:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _0801F4F0
	negs r0, r4
	subs r4, r0, r5
_0801F4F0:
	mov r2, r8
	ldrh r0, [r2, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _0801F556
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	mov r9, r0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r0, r9
	adds r7, r6, r0
	add r4, r10
	mov r12, r4
	lsls r1, r1, #0x01
	ldr r2, _0801F610 @ =0x08198584
	adds r0, r1, r2
	movs r2, #0x00
	ldsh r4, [r0, r2]
	adds r2, r7, #0x0
	muls r2, r4
	ldr r0, _0801F614 @ =0x08198504
	adds r1, r1, r0
	movs r0, #0x00
	ldsh r1, [r1, r0]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0801F538
	ldr r2, _0801F618 @ =0x00003FFF
	adds r0, r0, r2
_0801F538:
	asrs r0, r0, #0x0E
	mov r2, r9
	subs r6, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0801F550
	ldr r7, _0801F618 @ =0x00003FFF
	adds r0, r0, r7
_0801F550:
	asrs r0, r0, #0x0E
	mov r1, r10
	subs r4, r0, r1
_0801F556:
	mov r2, r8
	ldr r1, [r2, #0x08]
	ldr r0, _0801F608 @ =0x01000100
	cmp r1, r0
	beq _0801F5AE
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F56E
	adds r0, #0xFF
_0801F56E:
	asrs r6, r0, #0x08
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F57A
	adds r0, #0xFF
_0801F57A:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r6, r6, r0
	mov r0, r8
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F596
	adds r0, #0xFF
_0801F596:
	asrs r4, r0, #0x08
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F5A2
	adds r0, #0xFF
_0801F5A2:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
_0801F5AE:
	ldr r7, [sp, #0x03C]
	cmp r7, #0x03
	bne _0801F5C8
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	subs r6, r6, r0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	subs r4, r4, r0
	lsls r3, r3, #0x01
	lsls r5, r5, #0x01
_0801F5C8:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r6, r6, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r4, r4, r0
	cmn r6, r3
	bge _0801F5DC
	b _0801F79A
_0801F5DC:
	cmp r6, #0xEF
	ble _0801F5E2
	b _0801F79A
_0801F5E2:
	cmn r4, r5
	bge _0801F5E8
	b _0801F79A
_0801F5E8:
	cmp r4, #0x9F
	ble _0801F5EE
	b _0801F79A
_0801F5EE:
	ldr r1, [sp, #0x030]
	ldrb r0, [r1, #0x04]
	lsrs r0, r0, #0x01
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801F61C
	mov r2, r8
	ldrb r0, [r2, #0x1F]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r5, r0, #0x0A
	b _0801F624
_0801F608: .4byte 0x01000100
_0801F60C: .4byte 0x0839EE04
_0801F610: .4byte 0x08198584
_0801F614: .4byte 0x08198504
_0801F618: .4byte 0x00003FFF
_0801F61C:
	mov r3, r8
	ldrb r0, [r3, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r5, r0, #0x14
_0801F624:
	lsls r1, r5, #0x14
	mov r7, r8
	ldrh r0, [r7, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r2, [sp, #0x070]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r3, [sp, #0x034]
	orrs r1, r3
	ldr r7, [sp, #0x020]
	str r1, [r7, #0x08]
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x03C]
	cmp r0, #0x00
	beq _0801F6A2
	ldr r1, [sp, #0x038]
	cmp r1, #0x00
	bne _0801F6A2
	ldr r2, [sp, #0x030]
	ldrb r0, [r2, #0x02]
	lsrs r0, r0, #0x02
	str r0, [sp, #0x040]
	movs r0, #0x03
	ldr r3, [sp, #0x040]
	ands r3, r0
	mov r7, r8
	ldrb r0, [r7, #0x11]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r1, r0
	eors r3, r1
	str r3, [sp, #0x040]
	ldr r0, [sp, #0x068]
	adds r2, r0, r3
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0801F6A2
	add r1, sp, #0x06C
	ldrb r1, [r1, #0x00]
	strb r1, [r2, #0x00]
	ldr r2, [sp, #0x06C]
	adds r2, #0x01
	str r2, [sp, #0x06C]
	ldrh r2, [r7, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _0801F6F8 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #0x10]
_0801F6A2:
	movs r0, #0x00
	ldr r3, [sp, #0x020]
	strh r0, [r3, #0x06]
	ldr r7, [sp, #0x020]
	mov r1, r8
	ldrh r0, [r1, #0x10]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ands r1, r0
	ldr r3, [sp, #0x030]
	ldrb r2, [r3, #0x04]
	movs r0, #0xC0
	ands r0, r2
	lsls r0, r0, #0x08
	orrs r1, r0
	ldr r2, [sp, #0x03C]
	lsls r0, r2, #0x08
	orrs r1, r0
	movs r0, #0xFF
	ands r4, r0
	orrs r1, r4
	adds r3, r7, #0x0
	strh r1, [r3, #0x00]
	cmp r2, #0x00
	beq _0801F71C
	ldr r0, [sp, #0x030]
	ldrb r1, [r0, #0x04]
	movs r0, #0x30
	ands r0, r1
	lsls r4, r0, #0x0A
	ldr r3, _0801F6FC @ =0x000001FF
	ands r3, r6
	ldr r1, [sp, #0x038]
	cmp r1, #0x00
	bne _0801F700
	ldr r2, [sp, #0x068]
	ldr r1, [sp, #0x040]
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0801F712
	.byte 0x00, 0x00
_0801F6F8: .4byte 0xFFFFFC3F
_0801F6FC: .4byte 0x000001FF
_0801F700:
	mov r2, r8
	ldrb r0, [r2, #0x10]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1B
	ldr r1, [sp, #0x030]
	ldrb r2, [r1, #0x02]
	movs r1, #0x0F
	ands r1, r2
	adds r0, r0, r1
_0801F712:
	lsls r0, r0, #0x09
	orrs r0, r4
	orrs r0, r3
	strh r0, [r7, #0x02]
	b _0801F75A
_0801F71C:
	ldr r2, [sp, #0x030]
	ldrb r0, [r2, #0x04]
	movs r3, #0x30
	ands r3, r0
	ldrb r4, [r2, #0x02]
	movs r1, #0x04
	ands r1, r4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, r8
	ldrb r2, [r0, #0x11]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	eors r1, r0
	movs r0, #0x08
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r2, r2, #0x07
	lsls r2, r2, #0x03
	eors r0, r2
	orrs r1, r0
	orrs r3, r1
	lsls r3, r3, #0x0A
	ldr r1, _0801F778 @ =0x000001FF
	adds r0, r1, #0x0
	ands r6, r0
	orrs r3, r6
	ldr r2, [sp, #0x020]
	strh r3, [r2, #0x02]
_0801F75A:
	ldr r3, [sp, #0x030]
	ldrb r0, [r3, #0x02]
	lsrs r3, r0, #0x04
	ldr r0, [sp, #0x064]
	cmp r0, #0x00
	bne _0801F77C
	ldr r1, [sp, #0x030]
	ldrb r2, [r1, #0x03]
	ldrb r1, [r1, #0x04]
	movs r0, #0x01
	ands r0, r1
	lsls r0, r0, #0x08
	orrs r2, r0
	b _0801F780
	.byte 0x00, 0x00
_0801F778: .4byte 0x000001FF
_0801F77C:
	ldr r0, [sp, #0x064]
	ldrb r2, [r0, #0x00]
_0801F780:
	lsls r0, r3, #0x01
	add r0, sp
	ldrh r0, [r0, #0x00]
	orrs r5, r0
	mov r1, r8
	ldrh r0, [r1, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r2
	orrs r5, r0
	strh r5, [r7, #0x04]
	ldr r2, [sp, #0x020]
	ldr r2, [r2, #0x10]
	str r2, [sp, #0x020]
_0801F79A:
	ldr r3, [sp, #0x064]
	cmp r3, #0x00
	beq _0801F7A4
	adds r3, #0x01
	str r3, [sp, #0x064]
_0801F7A4:
	ldr r7, [sp, #0x034]
	adds r7, #0x01
	str r7, [sp, #0x034]
	ldr r0, [sp, #0x030]
	adds r0, #0x05
	str r0, [sp, #0x030]
	ldr r1, [sp, #0x028]
	cmp r7, r1
	bge _0801F7B8
	b _0801F416
_0801F7B8:
	ldr r2, [sp, #0x030]
	ldr r3, [sp, #0x024]
	str r2, [r3, #0x00]
	ldr r0, [sp, #0x020]
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_801F7D0
sub_801F7D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
	str r0, [sp, #0x020]
	mov r8, r1
	str r2, [sp, #0x024]
	str r3, [sp, #0x028]
	mov r2, sp
	movs r4, #0x00
	ldrh r1, [r1, #0x14]
	cmp r1, #0x00
	beq _0801F806
	movs r5, #0x01
_0801F7F0:
	adds r0, r1, #0x0
	ands r0, r5
	cmp r0, #0x00
	beq _0801F7FE
	lsls r0, r4, #0x0C
	strh r0, [r2, #0x00]
	adds r2, #0x02
_0801F7FE:
	adds r4, #0x01
	asrs r1, r1, #0x01
	cmp r1, #0x00
	bne _0801F7F0
_0801F806:
	mov r0, r8
	movs r1, #0x0C
	ldsh r2, [r0, r1]
	cmp r2, #0x00
	beq _0801F81C
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0801F842
_0801F81C:
	mov r3, r8
	movs r4, #0x04
	ldsh r0, [r3, r4]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0801F842
	movs r7, #0x06
	ldsh r0, [r3, r7]
	cmp r0, r1
	bgt _0801F842
	movs r4, #0x08
	ldsh r0, [r3, r4]
	cmp r0, r1
	bgt _0801F842
	movs r7, #0x0A
	ldsh r0, [r3, r7]
	cmp r0, r1
	ble _0801F846
_0801F842:
	movs r0, #0x03
	b _0801F862
_0801F846:
	movs r1, #0x01
	str r1, [sp, #0x02C]
	cmp r2, #0x00
	bne _0801F864
	mov r3, r8
	ldr r2, [r3, #0x04]
	ldr r0, _0801FAFC @ =0x01000100
	cmp r2, r0
	bne _0801F864
	ldr r1, [r3, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
_0801F862:
	str r0, [sp, #0x02C]
_0801F864:
	mov r4, r8
	ldrb r0, [r4, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x14
	str r0, [sp, #0x030]
	ldr r7, [sp, #0x024]
	ldr r7, [r7, #0x00]
	str r7, [sp, #0x034]
	movs r0, #0x00
	str r0, [sp, #0x038]
	ldr r1, [sp, #0x028]
	cmp r0, r1
	blt _0801F880
	b _0801FB94
_0801F880:
	ldr r2, [sp, #0x034]
	ldrb r2, [r2, #0x03]
	str r2, [sp, #0x03C]
	lsrs r0, r2, #0x04
	lsls r0, r0, #0x01
	ldr r3, _0801FB00 @ =0x0839EE04
	adds r0, r0, r3
	ldrb r4, [r0, #0x00]
	ldrb r6, [r0, #0x01]
	ldr r7, [sp, #0x034]
	movs r5, #0x00
	ldsb r5, [r7, r5]
	movs r3, #0x01
	ldsb r3, [r7, r3]
	mov r1, r8
	movs r2, #0x04
	ldsh r0, [r1, r2]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _0801F8D6
	lsls r4, r4, #0x08
	muls r5, r0
	muls r0, r4
	cmp r0, #0x00
	bge _0801F8B6
	adds r0, #0xFF
_0801F8B6:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r5, r5, r0
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0801F8CA
	adds r0, #0xFF
_0801F8CA:
	asrs r5, r0, #0x08
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0801F8D4
	adds r0, #0xFF
_0801F8D4:
	asrs r4, r0, #0x08
_0801F8D6:
	mov r7, r8
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0801F8E8
	negs r0, r5
	subs r5, r0, r4
_0801F8E8:
	mov r1, r8
	movs r7, #0x06
	ldsh r0, [r1, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	beq _0801F928
	lsls r6, r6, #0x08
	mov r7, r8
	movs r1, #0x06
	ldsh r0, [r7, r1]
	muls r3, r0
	muls r0, r6
	cmp r0, #0x00
	bge _0801F908
	adds r0, #0xFF
_0801F908:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0801F91C
	adds r0, #0xFF
_0801F91C:
	asrs r3, r0, #0x08
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0801F926
	adds r0, #0xFF
_0801F926:
	asrs r6, r0, #0x08
_0801F928:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _0801F934
	negs r0, r3
	subs r3, r0, r6
_0801F934:
	mov r2, r8
	ldrh r0, [r2, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _0801F99A
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	mov r9, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r0, r9
	adds r7, r5, r0
	add r3, r10
	mov r12, r3
	lsls r1, r1, #0x01
	ldr r2, _0801FB04 @ =0x08198584
	adds r0, r1, r2
	movs r2, #0x00
	ldsh r3, [r0, r2]
	adds r2, r7, #0x0
	muls r2, r3
	ldr r0, _0801FB08 @ =0x08198504
	adds r1, r1, r0
	movs r0, #0x00
	ldsh r1, [r1, r0]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0801F97C
	ldr r2, _0801FB0C @ =0x00003FFF
	adds r0, r0, r2
_0801F97C:
	asrs r0, r0, #0x0E
	mov r2, r9
	subs r5, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0801F994
	ldr r3, _0801FB0C @ =0x00003FFF
	adds r0, r0, r3
_0801F994:
	asrs r0, r0, #0x0E
	mov r7, r10
	subs r3, r0, r7
_0801F99A:
	mov r0, r8
	ldr r1, [r0, #0x08]
	ldr r0, _0801FAFC @ =0x01000100
	cmp r1, r0
	beq _0801F9F4
	mov r2, r8
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F9B4
	adds r0, #0xFF
_0801F9B4:
	asrs r5, r0, #0x08
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F9C0
	adds r0, #0xFF
_0801F9C0:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r5, r5, r0
	mov r0, r8
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F9DC
	adds r0, #0xFF
_0801F9DC:
	asrs r3, r0, #0x08
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F9E8
	adds r0, #0xFF
_0801F9E8:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
_0801F9F4:
	ldr r7, [sp, #0x02C]
	cmp r7, #0x03
	bne _0801FA0E
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	subs r5, r5, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	subs r3, r3, r0
	lsls r4, r4, #0x01
	lsls r6, r6, #0x01
_0801FA0E:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r5, r5, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r3, r3, r0
	cmn r5, r4
	bge _0801FA22
	b _0801FB74
_0801FA22:
	cmp r5, #0xEF
	ble _0801FA28
	b _0801FB74
_0801FA28:
	cmn r3, r6
	bge _0801FA2E
	b _0801FB74
_0801FA2E:
	cmp r3, #0x9F
	ble _0801FA34
	b _0801FB74
_0801FA34:
	ldr r0, [sp, #0x030]
	lsls r1, r0, #0x14
	mov r2, r8
	ldrh r0, [r2, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r4, [sp, #0x070]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r7, [sp, #0x038]
	orrs r1, r7
	ldr r0, [sp, #0x020]
	str r1, [r0, #0x08]
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldr r1, [sp, #0x02C]
	cmp r1, #0x00
	beq _0801FAAA
	ldr r2, [sp, #0x03C]
	lsrs r2, r2, #0x02
	str r2, [sp, #0x040]
	movs r0, #0x03
	ands r2, r0
	mov r4, r8
	ldrb r0, [r4, #0x11]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r1, r0
	eors r2, r1
	str r2, [sp, #0x040]
	ldr r7, [sp, #0x068]
	adds r2, r7, r2
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0801FAAA
	add r0, sp, #0x06C
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
	ldr r1, [sp, #0x06C]
	adds r1, #0x01
	str r1, [sp, #0x06C]
	ldrh r2, [r4, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _0801FB10 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x10]
_0801FAAA:
	movs r0, #0x00
	ldr r2, [sp, #0x020]
	strh r0, [r2, #0x06]
	ldr r4, [sp, #0x020]
	mov r7, r8
	ldrh r0, [r7, #0x10]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ands r1, r0
	movs r0, #0xC0
	ldr r2, [sp, #0x03C]
	ands r0, r2
	lsls r0, r0, #0x08
	orrs r1, r0
	ldr r7, [sp, #0x02C]
	lsls r0, r7, #0x08
	orrs r1, r0
	movs r0, #0xFF
	ands r3, r0
	orrs r1, r3
	strh r1, [r4, #0x00]
	cmp r7, #0x00
	beq _0801FB18
	movs r1, #0x30
	ands r1, r2
	lsls r1, r1, #0x0A
	ldr r2, [sp, #0x068]
	ldr r3, [sp, #0x040]
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x09
	orrs r1, r0
	ldr r7, _0801FB14 @ =0x000001FF
	adds r0, r7, #0x0
	ands r5, r0
	orrs r1, r5
	ldr r0, [sp, #0x020]
	strh r1, [r0, #0x02]
	b _0801FB3E
_0801FAFC: .4byte 0x01000100
_0801FB00: .4byte 0x0839EE04
_0801FB04: .4byte 0x08198584
_0801FB08: .4byte 0x08198504
_0801FB0C: .4byte 0x00003FFF
_0801FB10: .4byte 0xFFFFFC3F
_0801FB14: .4byte 0x000001FF
_0801FB18:
	movs r2, #0x3C
	ldr r1, [sp, #0x03C]
	ands r2, r1
	mov r3, r8
	ldrb r1, [r3, #0x11]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x03
	orrs r0, r1
	eors r2, r0
	lsls r2, r2, #0x0A
	ldr r7, _0801FB50 @ =0x000001FF
	adds r0, r7, #0x0
	ands r5, r0
	orrs r2, r5
	ldr r0, [sp, #0x020]
	strh r2, [r0, #0x02]
_0801FB3E:
	movs r0, #0x03
	ldr r1, [sp, #0x03C]
	ands r0, r1
	ldr r2, [sp, #0x064]
	cmp r2, #0x00
	bne _0801FB54
	ldr r3, [sp, #0x034]
	ldrb r2, [r3, #0x02]
	b _0801FB58
_0801FB50: .4byte 0x000001FF
_0801FB54:
	ldr r7, [sp, #0x064]
	ldrb r2, [r7, #0x00]
_0801FB58:
	lsls r0, r0, #0x01
	add r0, sp
	ldrh r0, [r0, #0x00]
	ldr r1, [sp, #0x030]
	orrs r1, r0
	mov r3, r8
	ldrh r0, [r3, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r2
	orrs r1, r0
	strh r1, [r4, #0x04]
	ldr r4, [sp, #0x020]
	ldr r4, [r4, #0x10]
	str r4, [sp, #0x020]
_0801FB74:
	ldr r7, [sp, #0x064]
	cmp r7, #0x00
	beq _0801FB80
	adds r0, r7, #0x0
	adds r0, #0x01
	str r0, [sp, #0x064]
_0801FB80:
	ldr r1, [sp, #0x038]
	adds r1, #0x01
	str r1, [sp, #0x038]
	ldr r2, [sp, #0x034]
	adds r2, #0x04
	str r2, [sp, #0x034]
	ldr r3, [sp, #0x028]
	cmp r1, r3
	bge _0801FB94
	b _0801F880
_0801FB94:
	ldr r4, [sp, #0x034]
	ldr r7, [sp, #0x024]
	str r4, [r7, #0x00]
	ldr r0, [sp, #0x020]
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_801FBAC
sub_801FBAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	str r0, [sp, #0x000]
	mov r8, r1
	str r2, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldrh r2, [r1, #0x14]
	movs r1, #0x01
	b _0801FBD2
_0801FBCA:
	ldr r3, [sp, #0x00C]
	adds r3, #0x01
	str r3, [sp, #0x00C]
	asrs r2, r2, #0x01
_0801FBD2:
	adds r0, r2, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0801FBCA
	ldr r4, [sp, #0x00C]
	lsls r4, r4, #0x0C
	str r4, [sp, #0x00C]
	mov r7, r8
	movs r0, #0x0C
	ldsh r2, [r7, r0]
	cmp r2, #0x00
	beq _0801FBFA
	mov r0, r8
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0801FC22
_0801FBFA:
	mov r1, r8
	movs r3, #0x04
	ldsh r0, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0801FC22
	mov r4, r8
	movs r7, #0x06
	ldsh r0, [r4, r7]
	cmp r0, r1
	bgt _0801FC22
	movs r3, #0x08
	ldsh r0, [r4, r3]
	cmp r0, r1
	bgt _0801FC22
	movs r7, #0x0A
	ldsh r0, [r4, r7]
	cmp r0, r1
	ble _0801FC26
_0801FC22:
	movs r0, #0x03
	b _0801FC42
_0801FC26:
	movs r1, #0x01
	str r1, [sp, #0x010]
	cmp r2, #0x00
	bne _0801FC44
	mov r3, r8
	ldr r2, [r3, #0x04]
	ldr r0, _0801FE20 @ =0x01000100
	cmp r2, r0
	bne _0801FC44
	ldr r1, [r3, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
_0801FC42:
	str r0, [sp, #0x010]
_0801FC44:
	ldr r4, [sp, #0x004]
	ldr r4, [r4, #0x00]
	str r4, [sp, #0x014]
	movs r7, #0x00
	str r7, [sp, #0x018]
	ldr r0, [sp, #0x008]
	cmp r7, r0
	blt _0801FC56
	b _0801FF8E
_0801FC56:
	ldr r1, [sp, #0x014]
	ldrb r1, [r1, #0x03]
	str r1, [sp, #0x01C]
	lsrs r0, r1, #0x04
	lsls r0, r0, #0x01
	ldr r2, _0801FE24 @ =0x0839EE04
	adds r0, r0, r2
	ldrb r3, [r0, #0x00]
	ldrb r4, [r0, #0x01]
	ldr r7, [sp, #0x014]
	movs r6, #0x00
	ldsb r6, [r7, r6]
	movs r5, #0x01
	ldsb r5, [r7, r5]
	mov r1, r8
	movs r2, #0x04
	ldsh r0, [r1, r2]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _0801FCAC
	lsls r3, r3, #0x08
	muls r6, r0
	muls r0, r3
	cmp r0, #0x00
	bge _0801FC8C
	adds r0, #0xFF
_0801FC8C:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r6, r6, r0
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0801FCA0
	adds r0, #0xFF
_0801FCA0:
	asrs r6, r0, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0801FCAA
	adds r0, #0xFF
_0801FCAA:
	asrs r3, r0, #0x08
_0801FCAC:
	mov r7, r8
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0801FCBE
	negs r0, r6
	subs r6, r0, r3
_0801FCBE:
	mov r1, r8
	movs r7, #0x06
	ldsh r0, [r1, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	beq _0801FCFE
	lsls r4, r4, #0x08
	mov r7, r8
	movs r1, #0x06
	ldsh r0, [r7, r1]
	muls r5, r0
	muls r0, r4
	cmp r0, #0x00
	bge _0801FCDE
	adds r0, #0xFF
_0801FCDE:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r5, r5, r0
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0801FCF2
	adds r0, #0xFF
_0801FCF2:
	asrs r5, r0, #0x08
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0801FCFC
	adds r0, #0xFF
_0801FCFC:
	asrs r4, r0, #0x08
_0801FCFE:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _0801FD0A
	negs r0, r5
	subs r5, r0, r4
_0801FD0A:
	mov r2, r8
	ldrh r0, [r2, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _0801FD70
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	mov r9, r0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r0, r9
	adds r7, r6, r0
	add r5, r10
	mov r12, r5
	lsls r1, r1, #0x01
	ldr r2, _0801FE28 @ =0x08198584
	adds r0, r1, r2
	movs r2, #0x00
	ldsh r5, [r0, r2]
	adds r2, r7, #0x0
	muls r2, r5
	ldr r0, _0801FE2C @ =0x08198504
	adds r1, r1, r0
	movs r0, #0x00
	ldsh r1, [r1, r0]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0801FD52
	ldr r2, _0801FE30 @ =0x00003FFF
	adds r0, r0, r2
_0801FD52:
	asrs r0, r0, #0x0E
	mov r2, r9
	subs r6, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r5
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0801FD6A
	ldr r7, _0801FE30 @ =0x00003FFF
	adds r0, r0, r7
_0801FD6A:
	asrs r0, r0, #0x0E
	mov r1, r10
	subs r5, r0, r1
_0801FD70:
	mov r2, r8
	ldr r1, [r2, #0x08]
	ldr r0, _0801FE20 @ =0x01000100
	cmp r1, r0
	beq _0801FDC8
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801FD88
	adds r0, #0xFF
_0801FD88:
	asrs r6, r0, #0x08
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801FD94
	adds r0, #0xFF
_0801FD94:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r6, r6, r0
	mov r0, r8
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801FDB0
	adds r0, #0xFF
_0801FDB0:
	asrs r5, r0, #0x08
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801FDBC
	adds r0, #0xFF
_0801FDBC:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r5, r5, r0
_0801FDC8:
	ldr r7, [sp, #0x010]
	cmp r7, #0x03
	bne _0801FDE2
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	subs r6, r6, r0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	subs r5, r5, r0
	lsls r3, r3, #0x01
	lsls r4, r4, #0x01
_0801FDE2:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r6, r6, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r5, r5, r0
	cmn r6, r3
	bge _0801FDF6
	b _0801FF6E
_0801FDF6:
	cmp r6, #0xEF
	ble _0801FDFC
	b _0801FF6E
_0801FDFC:
	cmn r5, r4
	bge _0801FE02
	b _0801FF6E
_0801FE02:
	cmp r5, #0x9F
	ble _0801FE08
	b _0801FF6E
_0801FE08:
	ldr r1, [sp, #0x01C]
	lsrs r0, r1, #0x01
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801FE34
	mov r2, r8
	ldrb r0, [r2, #0x1F]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r4, r0, #0x0A
	b _0801FE3C
_0801FE20: .4byte 0x01000100
_0801FE24: .4byte 0x0839EE04
_0801FE28: .4byte 0x08198584
_0801FE2C: .4byte 0x08198504
_0801FE30: .4byte 0x00003FFF
_0801FE34:
	mov r3, r8
	ldrb r0, [r3, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r4, r0, #0x14
_0801FE3C:
	lsls r1, r4, #0x14
	mov r7, r8
	ldrh r0, [r7, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r2, [sp, #0x050]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r3, [sp, #0x018]
	orrs r1, r3
	ldr r7, [sp, #0x000]
	str r1, [r7, #0x08]
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	beq _0801FEB6
	ldr r1, [sp, #0x01C]
	lsrs r1, r1, #0x02
	str r1, [sp, #0x020]
	movs r0, #0x03
	ands r1, r0
	str r1, [sp, #0x020]
	mov r2, r8
	ldrb r0, [r2, #0x11]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r1, r0
	ldr r3, [sp, #0x020]
	eors r3, r1
	str r3, [sp, #0x020]
	ldr r7, [sp, #0x048]
	adds r2, r7, r3
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0801FEB6
	add r0, sp, #0x04C
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
	ldr r1, [sp, #0x04C]
	adds r1, #0x01
	str r1, [sp, #0x04C]
	mov r3, r8
	ldrh r2, [r3, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _0801FF0C @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x10]
_0801FEB6:
	movs r0, #0x00
	ldr r7, [sp, #0x000]
	strh r0, [r7, #0x06]
	ldr r7, [sp, #0x000]
	mov r1, r8
	ldrh r0, [r1, #0x10]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ands r1, r0
	movs r0, #0xC0
	ldr r2, [sp, #0x01C]
	ands r0, r2
	lsls r0, r0, #0x08
	orrs r1, r0
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x08
	orrs r1, r0
	movs r0, #0xFF
	ands r5, r0
	orrs r1, r5
	adds r0, r7, #0x0
	strh r1, [r0, #0x00]
	cmp r3, #0x00
	beq _0801FF14
	movs r1, #0x30
	ands r1, r2
	lsls r1, r1, #0x0A
	ldr r2, [sp, #0x048]
	ldr r3, [sp, #0x020]
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x09
	orrs r1, r0
	ldr r2, _0801FF10 @ =0x000001FF
	adds r0, r2, #0x0
	ands r6, r0
	orrs r1, r6
	ldr r3, [sp, #0x000]
	strh r1, [r3, #0x02]
	b _0801FF3A
	.byte 0x00, 0x00
_0801FF0C: .4byte 0xFFFFFC3F
_0801FF10: .4byte 0x000001FF
_0801FF14:
	movs r2, #0x3C
	ldr r0, [sp, #0x01C]
	ands r2, r0
	mov r3, r8
	ldrb r1, [r3, #0x11]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x03
	orrs r0, r1
	eors r2, r0
	lsls r2, r2, #0x0A
	ldr r1, _0801FF50 @ =0x000001FF
	adds r0, r1, #0x0
	ands r6, r0
	orrs r2, r6
	ldr r3, [sp, #0x000]
	strh r2, [r3, #0x02]
_0801FF3A:
	ldr r0, [sp, #0x044]
	cmp r0, #0x00
	bne _0801FF54
	ldr r2, [sp, #0x014]
	ldrb r1, [r2, #0x02]
	movs r0, #0x01
	ldr r3, [sp, #0x01C]
	ands r3, r0
	lsls r0, r3, #0x08
	orrs r1, r0
	b _0801FF58
_0801FF50: .4byte 0x000001FF
_0801FF54:
	ldr r0, [sp, #0x044]
	ldrb r1, [r0, #0x00]
_0801FF58:
	ldr r2, [sp, #0x00C]
	orrs r4, r2
	mov r3, r8
	ldrh r0, [r3, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	orrs r4, r0
	strh r4, [r7, #0x04]
	ldr r4, [sp, #0x000]
	ldr r4, [r4, #0x10]
	str r4, [sp, #0x000]
_0801FF6E:
	ldr r7, [sp, #0x044]
	cmp r7, #0x00
	beq _0801FF7A
	adds r0, r7, #0x0
	adds r0, #0x01
	str r0, [sp, #0x044]
_0801FF7A:
	ldr r1, [sp, #0x018]
	adds r1, #0x01
	str r1, [sp, #0x018]
	ldr r2, [sp, #0x014]
	adds r2, #0x04
	str r2, [sp, #0x014]
	ldr r3, [sp, #0x008]
	cmp r1, r3
	bge _0801FF8E
	b _0801FC56
_0801FF8E:
	ldr r4, [sp, #0x014]
	ldr r7, [sp, #0x004]
	str r4, [r7, #0x00]
	ldr r0, [sp, #0x000]
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_801FFA8
sub_801FFA8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	str r0, [sp, #0x000]
	mov r8, r1
	str r2, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldrh r2, [r1, #0x14]
	movs r1, #0x01
	b _0801FFCE
_0801FFC6:
	ldr r3, [sp, #0x00C]
	adds r3, #0x01
	str r3, [sp, #0x00C]
	asrs r2, r2, #0x01
_0801FFCE:
	adds r0, r2, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0801FFC6
	ldr r4, [sp, #0x00C]
	lsls r4, r4, #0x0C
	str r4, [sp, #0x00C]
	mov r7, r8
	movs r0, #0x0C
	ldsh r2, [r7, r0]
	cmp r2, #0x00
	beq _0801FFF6
	mov r0, r8
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0802001E
_0801FFF6:
	mov r1, r8
	movs r3, #0x04
	ldsh r0, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0802001E
	mov r4, r8
	movs r7, #0x06
	ldsh r0, [r4, r7]
	cmp r0, r1
	bgt _0802001E
	movs r3, #0x08
	ldsh r0, [r4, r3]
	cmp r0, r1
	bgt _0802001E
	movs r7, #0x0A
	ldsh r0, [r4, r7]
	cmp r0, r1
	ble _08020022
_0802001E:
	movs r0, #0x03
	b _0802003E
_08020022:
	movs r1, #0x01
	str r1, [sp, #0x010]
	cmp r2, #0x00
	bne _08020040
	mov r3, r8
	ldr r2, [r3, #0x04]
	ldr r0, _08020304 @ =0x01000100
	cmp r2, r0
	bne _08020040
	ldr r1, [r3, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
_0802003E:
	str r0, [sp, #0x010]
_08020040:
	mov r4, r8
	ldrb r0, [r4, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x14
	str r0, [sp, #0x014]
	ldr r7, [sp, #0x004]
	ldr r7, [r7, #0x00]
	str r7, [sp, #0x018]
	movs r0, #0x00
	str r0, [sp, #0x01C]
	ldr r1, [sp, #0x008]
	cmp r0, r1
	blt _0802005C
	b _08020382
_0802005C:
	ldr r2, [sp, #0x018]
	ldrb r2, [r2, #0x00]
	str r2, [sp, #0x020]
	ldr r3, [sp, #0x018]
	ldrb r3, [r3, #0x01]
	str r3, [sp, #0x024]
	ldr r4, [sp, #0x018]
	ldrb r4, [r4, #0x02]
	str r4, [sp, #0x028]
	lsrs r0, r2, #0x06
	lsls r0, r0, #0x03
	lsrs r1, r3, #0x06
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r7, _08020308 @ =0x0839EE04
	adds r0, r0, r7
	ldrb r5, [r0, #0x00]
	ldrb r6, [r0, #0x01]
	adds r3, r2, #0x0
	movs r0, #0x3F
	ands r3, r0
	adds r0, r3, #0x0
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08020096
	movs r0, #0x40
	negs r0, r0
	orrs r3, r0
_08020096:
	ldr r4, [sp, #0x024]
	movs r2, #0x3F
	ands r4, r2
	adds r0, r4, #0x0
	movs r7, #0x20
	ands r0, r7
	cmp r0, #0x00
	beq _080200AC
	movs r0, #0x40
	negs r0, r0
	orrs r4, r0
_080200AC:
	mov r1, r8
	movs r2, #0x04
	ldsh r0, [r1, r2]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _080200E6
	lsls r5, r5, #0x08
	muls r3, r0
	muls r0, r5
	cmp r0, #0x00
	bge _080200C6
	adds r0, #0xFF
_080200C6:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080200DA
	adds r0, #0xFF
_080200DA:
	asrs r3, r0, #0x08
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080200E4
	adds r0, #0xFF
_080200E4:
	asrs r5, r0, #0x08
_080200E6:
	mov r7, r8
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _080200F8
	negs r0, r3
	subs r3, r0, r5
_080200F8:
	mov r1, r8
	movs r7, #0x06
	ldsh r0, [r1, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	beq _08020138
	lsls r6, r6, #0x08
	mov r7, r8
	movs r1, #0x06
	ldsh r0, [r7, r1]
	muls r4, r0
	muls r0, r6
	cmp r0, #0x00
	bge _08020118
	adds r0, #0xFF
_08020118:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0802012C
	adds r0, #0xFF
_0802012C:
	asrs r4, r0, #0x08
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _08020136
	adds r0, #0xFF
_08020136:
	asrs r6, r0, #0x08
_08020138:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _08020144
	negs r0, r4
	subs r4, r0, r6
_08020144:
	mov r2, r8
	ldrh r0, [r2, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _080201AA
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	mov r9, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r0, r9
	adds r7, r3, r0
	add r4, r10
	mov r12, r4
	lsls r1, r1, #0x01
	ldr r2, _0802030C @ =0x08198584
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r4, [r0, r3]
	adds r2, r7, #0x0
	muls r2, r4
	ldr r0, _08020310 @ =0x08198504
	adds r1, r1, r0
	movs r3, #0x00
	ldsh r1, [r1, r3]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0802018C
	ldr r2, _08020314 @ =0x00003FFF
	adds r0, r0, r2
_0802018C:
	asrs r0, r0, #0x0E
	mov r2, r9
	subs r3, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080201A4
	ldr r4, _08020314 @ =0x00003FFF
	adds r0, r0, r4
_080201A4:
	asrs r0, r0, #0x0E
	mov r7, r10
	subs r4, r0, r7
_080201AA:
	mov r0, r8
	ldr r1, [r0, #0x08]
	ldr r0, _08020304 @ =0x01000100
	cmp r1, r0
	beq _08020204
	mov r2, r8
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080201C4
	adds r0, #0xFF
_080201C4:
	asrs r3, r0, #0x08
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080201D0
	adds r0, #0xFF
_080201D0:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
	mov r0, r8
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080201EC
	adds r0, #0xFF
_080201EC:
	asrs r4, r0, #0x08
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080201F8
	adds r0, #0xFF
_080201F8:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
_08020204:
	ldr r7, [sp, #0x010]
	cmp r7, #0x03
	bne _0802021E
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	subs r3, r3, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	subs r4, r4, r0
	lsls r5, r5, #0x01
	lsls r6, r6, #0x01
_0802021E:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r3, r3, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r4, r4, r0
	cmn r3, r5
	bge _08020232
	b _08020364
_08020232:
	cmp r3, #0xEF
	ble _08020238
	b _08020364
_08020238:
	cmn r4, r6
	bge _0802023E
	b _08020364
_0802023E:
	cmp r4, #0x9F
	ble _08020244
	b _08020364
_08020244:
	ldr r0, [sp, #0x014]
	lsls r1, r0, #0x14
	mov r2, r8
	ldrh r0, [r2, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r7, [sp, #0x058]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r0, [sp, #0x01C]
	orrs r1, r0
	ldr r2, [sp, #0x000]
	str r1, [r2, #0x08]
	ldrb r0, [r7, #0x00]
	adds r0, #0x01
	strb r0, [r7, #0x00]
	ldr r7, [sp, #0x028]
	lsrs r5, r7, #0x07
	mov r1, r8
	ldrb r0, [r1, #0x11]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r1, r0
	eors r5, r1
	ldr r2, [sp, #0x010]
	cmp r2, #0x00
	beq _080202B4
	ldr r7, [sp, #0x050]
	adds r2, r7, r5
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080202B4
	add r0, sp, #0x054
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
	ldr r1, [sp, #0x054]
	adds r1, #0x01
	str r1, [sp, #0x054]
	mov r7, r8
	ldrh r2, [r7, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _08020318 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #0x10]
_080202B4:
	movs r0, #0x00
	ldr r1, [sp, #0x000]
	strh r0, [r1, #0x06]
	ldr r6, [sp, #0x000]
	mov r2, r8
	ldrh r0, [r2, #0x10]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ands r1, r0
	movs r2, #0xC0
	ldr r7, [sp, #0x020]
	ands r7, r2
	lsls r0, r7, #0x08
	orrs r1, r0
	ldr r7, [sp, #0x010]
	lsls r0, r7, #0x08
	orrs r1, r0
	movs r0, #0xFF
	ands r4, r0
	orrs r1, r4
	strh r1, [r6, #0x00]
	cmp r7, #0x00
	beq _08020320
	ldr r0, [sp, #0x024]
	ands r0, r2
	lsls r1, r0, #0x08
	ldr r2, [sp, #0x050]
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x09
	orrs r1, r0
	ldr r4, _0802031C @ =0x000001FF
	adds r0, r4, #0x0
	ands r3, r0
	orrs r1, r3
	ldr r7, [sp, #0x000]
	strh r1, [r7, #0x02]
	b _08020336
_08020304: .4byte 0x01000100
_08020308: .4byte 0x0839EE04
_0802030C: .4byte 0x08198584
_08020310: .4byte 0x08198504
_08020314: .4byte 0x00003FFF
_08020318: .4byte 0xFFFFFC3F
_0802031C: .4byte 0x000001FF
_08020320:
	ldr r0, [sp, #0x024]
	ands r0, r2
	lsls r0, r0, #0x08
	lsls r1, r5, #0x0C
	orrs r0, r1
	ldr r2, _08020344 @ =0x000001FF
	adds r1, r2, #0x0
	ands r3, r1
	orrs r0, r3
	ldr r3, [sp, #0x000]
	strh r0, [r3, #0x02]
_08020336:
	ldr r4, [sp, #0x04C]
	cmp r4, #0x00
	bne _08020348
	movs r2, #0x7F
	ldr r7, [sp, #0x028]
	ands r2, r7
	b _0802034C
_08020344: .4byte 0x000001FF
_08020348:
	ldr r0, [sp, #0x04C]
	ldrb r2, [r0, #0x00]
_0802034C:
	ldr r1, [sp, #0x00C]
	ldr r3, [sp, #0x014]
	orrs r1, r3
	mov r4, r8
	ldrh r0, [r4, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r2
	orrs r1, r0
	strh r1, [r6, #0x04]
	ldr r7, [sp, #0x000]
	ldr r7, [r7, #0x10]
	str r7, [sp, #0x000]
_08020364:
	ldr r0, [sp, #0x04C]
	cmp r0, #0x00
	beq _0802036E
	adds r0, #0x01
	str r0, [sp, #0x04C]
_0802036E:
	ldr r1, [sp, #0x01C]
	adds r1, #0x01
	str r1, [sp, #0x01C]
	ldr r2, [sp, #0x018]
	adds r2, #0x03
	str r2, [sp, #0x018]
	ldr r3, [sp, #0x008]
	cmp r1, r3
	bge _08020382
	b _0802005C
_08020382:
	ldr r4, [sp, #0x018]
	ldr r7, [sp, #0x004]
	str r4, [r7, #0x00]
	ldr r0, [sp, #0x000]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_802039C
sub_802039C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	str r0, [sp, #0x000]
	mov r8, r1
	str r2, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldrh r2, [r1, #0x14]
	movs r1, #0x01
	b _080203C2
_080203BA:
	ldr r3, [sp, #0x00C]
	adds r3, #0x01
	str r3, [sp, #0x00C]
	asrs r2, r2, #0x01
_080203C2:
	adds r0, r2, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080203BA
	ldr r4, [sp, #0x00C]
	lsls r4, r4, #0x0C
	str r4, [sp, #0x00C]
	mov r7, r8
	movs r0, #0x0C
	ldsh r2, [r7, r0]
	cmp r2, #0x00
	beq _080203EA
	mov r0, r8
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08020412
_080203EA:
	mov r1, r8
	movs r3, #0x04
	ldsh r0, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _08020412
	mov r4, r8
	movs r7, #0x06
	ldsh r0, [r4, r7]
	cmp r0, r1
	bgt _08020412
	movs r3, #0x08
	ldsh r0, [r4, r3]
	cmp r0, r1
	bgt _08020412
	movs r7, #0x0A
	ldsh r0, [r4, r7]
	cmp r0, r1
	ble _08020416
_08020412:
	movs r0, #0x03
	b _08020432
_08020416:
	movs r1, #0x01
	str r1, [sp, #0x010]
	cmp r2, #0x00
	bne _08020434
	mov r3, r8
	ldr r2, [r3, #0x04]
	ldr r0, _080206F4 @ =0x01000100
	cmp r2, r0
	bne _08020434
	ldr r1, [r3, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
_08020432:
	str r0, [sp, #0x010]
_08020434:
	mov r4, r8
	ldrb r0, [r4, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x14
	str r0, [sp, #0x014]
	ldr r7, [sp, #0x004]
	ldr r7, [r7, #0x00]
	str r7, [sp, #0x018]
	movs r0, #0x00
	str r0, [sp, #0x01C]
	ldr r1, [sp, #0x008]
	cmp r0, r1
	blt _08020450
	b _08020768
_08020450:
	ldr r2, [sp, #0x018]
	ldrb r2, [r2, #0x00]
	str r2, [sp, #0x020]
	ldr r3, [sp, #0x018]
	ldrb r3, [r3, #0x01]
	str r3, [sp, #0x024]
	ldr r4, [sp, #0x018]
	ldrb r4, [r4, #0x02]
	str r4, [sp, #0x028]
	lsrs r0, r2, #0x06
	lsls r0, r0, #0x03
	lsrs r1, r3, #0x06
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r7, _080206F8 @ =0x0839EE04
	adds r0, r0, r7
	ldrb r5, [r0, #0x00]
	ldrb r6, [r0, #0x01]
	adds r3, r2, #0x0
	movs r0, #0x3F
	ands r3, r0
	adds r0, r3, #0x0
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0802048A
	movs r0, #0x40
	negs r0, r0
	orrs r3, r0
_0802048A:
	ldr r4, [sp, #0x024]
	movs r2, #0x3F
	ands r4, r2
	adds r0, r4, #0x0
	movs r7, #0x20
	ands r0, r7
	cmp r0, #0x00
	beq _080204A0
	movs r0, #0x40
	negs r0, r0
	orrs r4, r0
_080204A0:
	mov r1, r8
	movs r2, #0x04
	ldsh r0, [r1, r2]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _080204DA
	lsls r5, r5, #0x08
	muls r3, r0
	muls r0, r5
	cmp r0, #0x00
	bge _080204BA
	adds r0, #0xFF
_080204BA:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080204CE
	adds r0, #0xFF
_080204CE:
	asrs r3, r0, #0x08
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080204D8
	adds r0, #0xFF
_080204D8:
	asrs r5, r0, #0x08
_080204DA:
	mov r7, r8
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _080204EC
	negs r0, r3
	subs r3, r0, r5
_080204EC:
	mov r1, r8
	movs r7, #0x06
	ldsh r0, [r1, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	beq _0802052C
	lsls r6, r6, #0x08
	mov r7, r8
	movs r1, #0x06
	ldsh r0, [r7, r1]
	muls r4, r0
	muls r0, r6
	cmp r0, #0x00
	bge _0802050C
	adds r0, #0xFF
_0802050C:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08020520
	adds r0, #0xFF
_08020520:
	asrs r4, r0, #0x08
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0802052A
	adds r0, #0xFF
_0802052A:
	asrs r6, r0, #0x08
_0802052C:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _08020538
	negs r0, r4
	subs r4, r0, r6
_08020538:
	mov r2, r8
	ldrh r0, [r2, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _0802059E
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	mov r9, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r0, r9
	adds r7, r3, r0
	add r4, r10
	mov r12, r4
	lsls r1, r1, #0x01
	ldr r2, _080206FC @ =0x08198584
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r4, [r0, r3]
	adds r2, r7, #0x0
	muls r2, r4
	ldr r0, _08020700 @ =0x08198504
	adds r1, r1, r0
	movs r3, #0x00
	ldsh r1, [r1, r3]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _08020580
	ldr r2, _08020704 @ =0x00003FFF
	adds r0, r0, r2
_08020580:
	asrs r0, r0, #0x0E
	mov r2, r9
	subs r3, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08020598
	ldr r4, _08020704 @ =0x00003FFF
	adds r0, r0, r4
_08020598:
	asrs r0, r0, #0x0E
	mov r7, r10
	subs r4, r0, r7
_0802059E:
	mov r0, r8
	ldr r1, [r0, #0x08]
	ldr r0, _080206F4 @ =0x01000100
	cmp r1, r0
	beq _080205F8
	mov r2, r8
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080205B8
	adds r0, #0xFF
_080205B8:
	asrs r3, r0, #0x08
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080205C4
	adds r0, #0xFF
_080205C4:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
	mov r0, r8
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080205E0
	adds r0, #0xFF
_080205E0:
	asrs r4, r0, #0x08
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080205EC
	adds r0, #0xFF
_080205EC:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
_080205F8:
	ldr r7, [sp, #0x010]
	cmp r7, #0x03
	bne _08020612
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	subs r3, r3, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	subs r4, r4, r0
	lsls r5, r5, #0x01
	lsls r6, r6, #0x01
_08020612:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r3, r3, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r4, r4, r0
	cmn r3, r5
	bge _08020626
	b _08020748
_08020626:
	cmp r3, #0xEF
	ble _0802062C
	b _08020748
_0802062C:
	cmn r4, r6
	bge _08020632
	b _08020748
_08020632:
	cmp r4, #0x9F
	ble _08020638
	b _08020748
_08020638:
	ldr r0, [sp, #0x014]
	lsls r1, r0, #0x14
	mov r2, r8
	ldrh r0, [r2, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r7, [sp, #0x058]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r0, [sp, #0x01C]
	orrs r1, r0
	ldr r2, [sp, #0x000]
	str r1, [r2, #0x08]
	ldrb r0, [r7, #0x00]
	adds r0, #0x01
	strb r0, [r7, #0x00]
	mov r7, r8
	ldrb r0, [r7, #0x11]
	lsls r1, r0, #0x19
	lsrs r5, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r5, r0
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	beq _080206A4
	ldr r1, [sp, #0x050]
	adds r2, r1, r5
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080206A4
	add r7, sp, #0x054
	ldrb r7, [r7, #0x00]
	strb r7, [r2, #0x00]
	ldr r0, [sp, #0x054]
	adds r0, #0x01
	str r0, [sp, #0x054]
	mov r1, r8
	ldrh r2, [r1, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _08020708 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	mov r2, r8
	strh r0, [r2, #0x10]
_080206A4:
	movs r0, #0x00
	ldr r7, [sp, #0x000]
	strh r0, [r7, #0x06]
	ldr r6, [sp, #0x000]
	mov r1, r8
	ldrh r0, [r1, #0x10]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ands r1, r0
	movs r2, #0xC0
	ldr r7, [sp, #0x020]
	ands r7, r2
	lsls r0, r7, #0x08
	orrs r1, r0
	ldr r7, [sp, #0x010]
	lsls r0, r7, #0x08
	orrs r1, r0
	movs r0, #0xFF
	ands r4, r0
	orrs r1, r4
	strh r1, [r6, #0x00]
	cmp r7, #0x00
	beq _08020710
	ldr r0, [sp, #0x024]
	ands r0, r2
	lsls r1, r0, #0x08
	ldr r2, [sp, #0x050]
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x09
	orrs r1, r0
	ldr r4, _0802070C @ =0x000001FF
	adds r0, r4, #0x0
	ands r3, r0
	orrs r1, r3
	ldr r7, [sp, #0x000]
	strh r1, [r7, #0x02]
	b _08020726
_080206F4: .4byte 0x01000100
_080206F8: .4byte 0x0839EE04
_080206FC: .4byte 0x08198584
_08020700: .4byte 0x08198504
_08020704: .4byte 0x00003FFF
_08020708: .4byte 0xFFFFFC3F
_0802070C: .4byte 0x000001FF
_08020710:
	ldr r0, [sp, #0x024]
	ands r0, r2
	lsls r0, r0, #0x08
	lsls r1, r5, #0x0C
	orrs r0, r1
	ldr r2, _08020780 @ =0x000001FF
	adds r1, r2, #0x0
	ands r3, r1
	orrs r0, r3
	ldr r3, [sp, #0x000]
	strh r0, [r3, #0x02]
_08020726:
	ldr r2, [sp, #0x028]
	ldr r4, [sp, #0x04C]
	cmp r4, #0x00
	beq _08020730
	ldrb r2, [r4, #0x00]
_08020730:
	ldr r1, [sp, #0x00C]
	ldr r7, [sp, #0x014]
	orrs r1, r7
	mov r3, r8
	ldrh r0, [r3, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r2
	orrs r1, r0
	strh r1, [r6, #0x04]
	ldr r4, [sp, #0x000]
	ldr r4, [r4, #0x10]
	str r4, [sp, #0x000]
_08020748:
	ldr r7, [sp, #0x04C]
	cmp r7, #0x00
	beq _08020754
	adds r0, r7, #0x0
	adds r0, #0x01
	str r0, [sp, #0x04C]
_08020754:
	ldr r1, [sp, #0x01C]
	adds r1, #0x01
	str r1, [sp, #0x01C]
	ldr r2, [sp, #0x018]
	adds r2, #0x03
	str r2, [sp, #0x018]
	ldr r3, [sp, #0x008]
	cmp r1, r3
	bge _08020768
	b _08020450
_08020768:
	ldr r4, [sp, #0x018]
	ldr r7, [sp, #0x004]
	str r4, [r7, #0x00]
	ldr r0, [sp, #0x000]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08020780: .4byte 0x000001FF
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x0B, 0x1C, 0x07, 0xE0, 0xD0, 0x88, 0x00, 0x28, 0x04, 0xD1, 0x10, 0x68
	.byte 0x91, 0x88, 0x18, 0x60, 0x99, 0x80, 0x08, 0x33, 0x12, 0x69, 0x00, 0x2A, 0xF4, 0xD1, 0x18, 0x1C
	.byte 0x02, 0xBC, 0x08, 0x47, 0x30, 0xB5, 0x0D, 0x1C, 0x03, 0x69, 0xDA, 0x68, 0x00, 0x21, 0x90, 0x68
	.byte 0x9C, 0x68, 0xA0, 0x42, 0x0C, 0xD9, 0xD0, 0x68, 0x19, 0x69, 0x03, 0x61, 0xCA, 0x60, 0xD8, 0x60
	.byte 0xD3, 0x60, 0x11, 0x61, 0x1A, 0x61, 0x11, 0x1C, 0xDA, 0x68, 0x90, 0x68, 0xA0, 0x42, 0xF2, 0xD8
	.byte 0x00, 0x29, 0x01, 0xD0, 0x0B, 0x69, 0x00, 0xE0, 0x1B, 0x69, 0xAB, 0x42, 0xE5, 0xD1, 0x30, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x10, 0xB5, 0x02, 0x1C, 0x01, 0x39, 0x00, 0x20, 0x90, 0x60, 0x14, 0x32
	.byte 0x00, 0x29, 0x1E, 0xD0, 0x01, 0x24, 0x4B, 0x42, 0x03, 0x20, 0x03, 0x40, 0x00, 0x2B, 0x0E, 0xD0
	.byte 0x03, 0x2B, 0x07, 0xDA, 0x02, 0x2B, 0x02, 0xDA, 0xD4, 0x80, 0x01, 0x39, 0x14, 0x32, 0xD4, 0x80
	.byte 0x01, 0x39, 0x14, 0x32, 0xD4, 0x80, 0x01, 0x39, 0x14, 0x32, 0x00, 0x29, 0x09, 0xD0, 0xD4, 0x80
	.byte 0x54, 0x83, 0xD4, 0x85, 0x10, 0x1C, 0x3C, 0x30, 0xC4, 0x80, 0x04, 0x39, 0x50, 0x32, 0x00, 0x29
	.byte 0xF5, 0xD1, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
	thumb_func_start sub_802083C
sub_802083C:
	push {r4, r5, r6, lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	movs r4, #0x00
	cmp r3, #0x00
	beq _080208D0
	movs r6, #0x01
	movs r5, #0x01
	negs r5, r5
	negs r1, r3
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0802089A
	cmp r1, #0x03
	bge _08020884
	cmp r1, #0x02
	bge _08020872
	strh r6, [r2, #0x06]
	str r5, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x14
	str r0, [r2, #0x10]
	adds r4, r2, #0x0
	subs r3, #0x01
	adds r2, r0, #0x0
_08020872:
	strh r6, [r2, #0x06]
	str r5, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x14
	str r0, [r2, #0x10]
	adds r4, r2, #0x0
	subs r3, #0x01
	adds r2, r0, #0x0
_08020884:
	strh r6, [r2, #0x06]
	str r5, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x14
	str r0, [r2, #0x10]
	adds r4, r2, #0x0
	subs r3, #0x01
	adds r2, r0, #0x0
	cmp r3, #0x00
	beq _080208D0
_0802089A:
	strh r6, [r2, #0x06]
	str r5, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x14
	str r0, [r2, #0x10]
	strh r6, [r0, #0x06]
	str r5, [r0, #0x08]
	str r2, [r0, #0x0C]
	adds r1, r2, #0x0
	adds r1, #0x28
	str r1, [r0, #0x10]
	strh r6, [r1, #0x06]
	str r5, [r1, #0x08]
	str r0, [r1, #0x0C]
	adds r0, #0x28
	str r0, [r1, #0x10]
	strh r6, [r0, #0x06]
	str r5, [r0, #0x08]
	str r1, [r0, #0x0C]
	adds r1, #0x28
	str r1, [r0, #0x10]
	adds r4, r0, #0x0
	subs r3, #0x04
	adds r2, r1, #0x0
	cmp r3, #0x00
	bne _0802089A
_080208D0:
	adds r1, r2, #0x0
	subs r1, #0x14
	movs r0, #0x00
	str r0, [r1, #0x10]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80208E0
sub_80208E0:
	ldr r2, [r0, #0x48]
	movs r1, #0x01
	str r1, [r2, #0x00]
	ldr r1, [r0, #0x50]
	str r1, [r2, #0x04]
	ldr r0, [r0, #0x4C]
	str r0, [r2, #0x08]
	movs r0, #0x00
	str r0, [r2, #0x0C]
	bx lr
	thumb_func_start sub_80208F4
sub_80208F4:
	push {r4, r5, r6, r7, lr}
	ldr r4, _08020980 @ =0x03000D48
	ldr r0, [r4, #0x00]
	bl free_heap_memory_8018C68__FPv
	movs r1, #0x00
	str r1, [r4, #0x00]
	ldr r0, _08020984 @ =0x03000D4C
	str r1, [r0, #0x00]
	ldr r0, _08020988 @ =0x03000D50
	str r1, [r0, #0x00]
	movs r5, #0x00
_0802090C:
	ldr r7, _0802098C @ =0x03000D70
	ldrb r0, [r7, #0x00]
	asrs r0, r5
	movs r6, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _0802092E
	lsls r4, r5, #0x02
	ldr r0, _08020990 @ =0x03000D58
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	bl free_heap_memory_8018C68__FPv
	movs r0, #0x00
	str r0, [r4, #0x00]
_0802092E:
	adds r4, r5, #0x1
	ldrb r0, [r7, #0x00]
	asrs r0, r4
	ands r0, r6
	cmp r0, #0x00
	beq _0802094E
	lsls r4, r4, #0x02
	ldr r0, _08020990 @ =0x03000D58
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	bl free_heap_memory_8018C68__FPv
	movs r0, #0x00
	str r0, [r4, #0x00]
_0802094E:
	adds r4, r5, #0x2
	ldrb r0, [r7, #0x00]
	asrs r0, r4
	ands r0, r6
	cmp r0, #0x00
	beq _0802096E
	lsls r4, r4, #0x02
	ldr r0, _08020990 @ =0x03000D58
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	bl free_heap_memory_8018C68__FPv
	movs r0, #0x00
	str r0, [r4, #0x00]
_0802096E:
	adds r5, #0x03
	cmp r5, #0x05
	ble _0802090C
	movs r0, #0x00
	strb r0, [r7, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08020980: .4byte 0x03000D48
_08020984: .4byte 0x03000D4C
_08020988: .4byte 0x03000D50
_0802098C: .4byte 0x03000D70
_08020990: .4byte 0x03000D58
	thumb_func_start sub_8020994
sub_8020994:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r9, r3
	ldr r7, _08020A5C @ =0x0203FFB8
	ldr r6, _08020A60 @ =0x0203FFA8
	ldr r0, _08020A64 @ =0x03000D74
	str r7, [r0, #0x00]
	movs r1, #0x00
	str r1, [r6, #0x04]
	str r1, [r6, #0x00]
	ldr r0, _08020A68 @ =0x0003FFB8
	str r0, [r6, #0x08]
	strb r1, [r6, #0x0C]
	ldr r0, _08020A6C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r7, #0x0
	movs r2, #0x40
	bl _call_via_r3
	mov r2, r8
	strh r2, [r7, #0x0A]
	strh r2, [r7, #0x08]
	strb r4, [r7, #0x04]
	strb r4, [r7, #0x03]
	strb r5, [r7, #0x06]
	strb r5, [r7, #0x05]
	str r6, [r7, #0x2C]
	movs r0, #0x01
	negs r0, r0
	adds r2, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0x0C
	movs r3, #0x0F
_080209F4:
	ldrh r0, [r1, #0x00]
	orrs r0, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x02]
	orrs r0, r2
	strh r0, [r1, #0x02]
	ldrh r0, [r1, #0x04]
	orrs r0, r2
	strh r0, [r1, #0x04]
	ldrh r0, [r1, #0x06]
	orrs r0, r2
	strh r0, [r1, #0x06]
	ldrh r0, [r1, #0x08]
	orrs r0, r2
	strh r0, [r1, #0x08]
	ldrh r0, [r1, #0x0A]
	orrs r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0C]
	orrs r0, r2
	strh r0, [r1, #0x0C]
	ldrh r0, [r1, #0x0E]
	orrs r0, r2
	strh r0, [r1, #0x0E]
	adds r1, #0x10
	subs r3, #0x08
	cmp r3, #0x00
	bge _080209F4
	ldr r0, _08020A70 @ =0x00000A28
	mov r2, r9
	lsrs r1, r2, #0x07
	movs r2, #0x01
	eors r1, r2
	ldr r2, _08020A74 @ =0x081E25AC
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r7, #0x3C]
	mov r0, r9
	bl sub_801DFB0
	ldr r0, [r7, #0x3C]
	movs r1, #0x82
	bl sub_802083C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08020A5C: .4byte 0x0203FFB8
_08020A60: .4byte 0x0203FFA8
_08020A64: .4byte 0x03000D74
_08020A68: .4byte 0x0003FFB8
_08020A6C: .4byte 0x03001034
_08020A70: .4byte 0x00000A28
_08020A74: .4byte 0x081E25AC
	thumb_func_start sub_8020A78
sub_8020A78:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	ldr r0, _08020B80 @ =0x0203FFB8
	mov r8, r0
	ldr r4, [r0, #0x30]
	movs r0, #0x00
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r1, _08020B84 @ =0x03000D50
	mov r2, r8
	ldr r0, [r2, #0x3C]
	ldr r2, [r1, #0x00]
	movs r1, #0x82
	bl _call_via_r2
	cmp r4, #0x00
	bne _08020AA4
	b _08020CAC
_08020AA4:
	mov r3, r8
	ldrh r3, [r3, #0x08]
	mov r10, r3
	mov r0, r8
	ldrb r0, [r0, #0x06]
	str r0, [sp, #0x000]
	mov r1, r8
	ldr r0, [r1, #0x3C]
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x004]
_08020AB8:
	adds r2, r4, #0x0
	adds r2, #0x29
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	bne _08020ACA
	b _08020C9E
_08020ACA:
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08020BB2
	ldr r3, [r2, #0x30]
	ldrb r0, [r4, #0x10]
	mov r9, r0
	adds r2, #0x02
	str r2, [sp, #0x008]
	cmp r3, r4
	beq _08020B5C
	movs r1, #0x0F
	mov r12, r1
	ldr r7, _08020B88 @ =0x0000FFFF
	movs r6, #0xC0
_08020AEC:
	ldrb r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08020B52
	ldrb r0, [r3, #0x1E]
	ldrb r2, [r4, #0x1E]
	mov r1, r12
	ands r1, r0
	mov r0, r12
	ands r0, r2
	cmp r1, r0
	bne _08020B52
	ldrh r0, [r3, #0x1A]
	ldrh r2, [r4, #0x1A]
	adds r1, r7, #0x0
	ands r1, r0
	adds r0, r7, #0x0
	ands r0, r2
	cmp r1, r0
	bne _08020B52
	adds r0, r3, #0x0
	adds r0, #0x22
	adds r1, r4, #0x0
	adds r1, #0x22
	ldrb r0, [r0, #0x00]
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bne _08020B52
	ldr r1, [r3, #0x04]
	ldr r0, [r4, #0x04]
	cmp r1, r0
	bne _08020B52
	ldr r1, [r3, #0x08]
	ldr r0, [r4, #0x08]
	cmp r1, r0
	bne _08020B52
	movs r2, #0x0C
	ldsh r1, [r3, r2]
	movs r2, #0x0C
	ldsh r0, [r4, r2]
	cmp r1, r0
	bne _08020B52
	ldrb r0, [r3, #0x11]
	ldrb r2, [r4, #0x11]
	adds r1, r6, #0x0
	ands r1, r0
	adds r0, r6, #0x0
	ands r0, r2
	cmp r1, r0
	beq _08020B62
_08020B52:
	ldr r3, [r3, #0x68]
	cmp r3, #0x00
	beq _08020B5C
	cmp r3, r4
	bne _08020AEC
_08020B5C:
	movs r0, #0x00
	cmp r0, #0x00
	beq _08020B8C
_08020B62:
	ldrb r0, [r3, #0x10]
	movs r1, #0x3E
	ands r1, r0
	movs r2, #0x3F
	negs r2, r2
	adds r0, r2, #0x0
	mov r3, r9
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r5, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r5, #0x00]
	b _08020BDA
_08020B80: .4byte 0x0203FFB8
_08020B84: .4byte 0x03000D50
_08020B88: .4byte 0x0000FFFF
_08020B8C:
	movs r0, #0x1F
	ldr r1, [sp, #0x000]
	ands r1, r0
	lsls r1, r1, #0x01
	movs r2, #0x3F
	negs r2, r2
	adds r0, r2, #0x0
	mov r3, r9
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r5, #0x00]
	adds r2, #0x36
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r5, #0x00]
	b _08020BDA
_08020BAE:
	movs r7, #0x01
	b _08020C44
_08020BB2:
	movs r0, #0x1F
	ldr r2, [sp, #0x000]
	ands r2, r0
	lsls r2, r2, #0x01
	ldrb r0, [r4, #0x10]
	movs r3, #0x3F
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x10]
	ldrb r0, [r5, #0x00]
	movs r2, #0x09
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r5, #0x00]
	mov r3, r8
	adds r3, #0x02
	str r3, [sp, #0x008]
_08020BDA:
	movs r7, #0x00
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	beq _08020C6E
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08020C5E
	mov r1, r8
	ldr r3, [r1, #0x30]
	cmp r3, r4
	beq _08020C40
	movs r6, #0x0F
	movs r2, #0x22
	adds r2, r2, r4
	mov r12, r2
_08020BFE:
	ldr r0, [r3, #0x48]
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08020C36
	ldrb r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08020C36
	ldrb r0, [r3, #0x1E]
	ldrb r2, [r4, #0x1E]
	adds r1, r6, #0x0
	ands r1, r0
	adds r0, r6, #0x0
	ands r0, r2
	cmp r1, r0
	bne _08020C36
	ldr r1, [r3, #0x18]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bne _08020C36
	adds r0, r3, #0x0
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	mov r1, r12
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	beq _08020BAE
_08020C36:
	ldr r3, [r3, #0x68]
	cmp r3, #0x00
	beq _08020C40
	cmp r3, r4
	bne _08020BFE
_08020C40:
	cmp r7, #0x00
	beq _08020C50
_08020C44:
	ldrh r0, [r3, #0x2E]
	strh r0, [r4, #0x2E]
	ldrb r0, [r5, #0x00]
	movs r1, #0x04
	orrs r0, r1
	b _08020C6C
_08020C50:
	mov r2, r10
	strh r2, [r4, #0x2E]
	ldrb r0, [r5, #0x00]
	movs r3, #0x05
	negs r3, r3
	adds r1, r3, #0x0
	b _08020C6A
_08020C5E:
	mov r0, r10
	strh r0, [r4, #0x2E]
	ldrb r0, [r5, #0x00]
	movs r2, #0x05
	negs r2, r2
	adds r1, r2, #0x0
_08020C6A:
	ands r0, r1
_08020C6C:
	strb r0, [r5, #0x00]
_08020C6E:
	adds r0, r4, #0x0
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x008]
	bl sub_801E80C
	str r0, [sp, #0x004]
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1C
	ldr r3, [sp, #0x000]
	adds r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	beq _08020C9E
	cmp r7, #0x00
	bne _08020C9E
	ldrh r0, [r4, #0x30]
	add r0, r10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_08020C9E:
	ldr r4, [r4, #0x68]
	cmp r4, #0x00
	beq _08020CA6
	b _08020AB8
_08020CA6:
	ldr r0, [sp, #0x004]
	mov r1, r8
	str r0, [r1, #0x38]
_08020CAC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sprite_show_8020CBC
sprite_show_8020CBC:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08020D2E
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x07
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x12]
	ldr r0, [r4, #0x54]
	cmp r0, #0x00
	beq _08020D2E
	ldrb r0, [r4, #0x1E]
	lsrs r0, r0, #0x04
	ldrh r1, [r4, #0x1C]
	adds r2, r4, #0x0
	adds r2, #0x29
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x1B
	lsrs r2, r2, #0x1F
	movs r3, #0x01
	str r3, [sp, #0x000]
	adds r3, r4, #0x0
	adds r3, #0x14
	str r3, [sp, #0x004]
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x008]
	movs r3, #0x01
	bl sub_8021574
	cmp r0, #0x02
	bne _08020D14
	ldrb r1, [r4, #0x13]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	b _08020D2C
_08020D14:
	ldr r0, _08020D38 @ =0x0300034C
	ldr r1, _08020D3C @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	adds r1, #0x01
	ldrb r2, [r4, #0x13]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
_08020D2C:
	strb r0, [r4, #0x13]
_08020D2E:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08020D38: .4byte 0x0300034C
_08020D3C: .4byte 0x00000888
	thumb_func_start sub_8020D40
sub_8020D40:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08020DC8
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x12]
	adds r0, r4, #0x0
	movs r1, #0x02
	bl sub_8021A18
	cmp r0, #0x00
	bne _08020D8E
	ldr r3, _08020D9C @ =0x0203FFC4
	ldrh r2, [r4, #0x14]
	cmp r2, #0x00
	beq _08020D8E
	movs r7, #0x80
	lsls r7, r7, #0x07
	movs r6, #0x01
	ldr r0, _08020DA0 @ =0x0000FFFF
	adds r5, r0, #0x0
_08020D72:
	ldrh r1, [r3, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08020D86
	adds r0, r2, #0x0
	ands r0, r6
	cmp r0, #0x00
	beq _08020D86
	strh r5, [r3, #0x00]
_08020D86:
	adds r3, #0x02
	asrs r2, r2, #0x01
	cmp r2, #0x00
	bne _08020D72
_08020D8E:
	ldr r2, _08020DA4 @ =0x0203FFB8
	ldr r1, [r4, #0x64]
	cmp r1, #0x00
	beq _08020DA8
	ldr r0, [r4, #0x68]
	str r0, [r1, #0x68]
	b _08020DAC
_08020D9C: .4byte 0x0203FFC4
_08020DA0: .4byte 0x0000FFFF
_08020DA4: .4byte 0x0203FFB8
_08020DA8:
	ldr r0, [r4, #0x68]
	str r0, [r2, #0x30]
_08020DAC:
	ldr r1, [r4, #0x68]
	cmp r1, #0x00
	beq _08020DB8
	ldr r0, [r4, #0x64]
	str r0, [r1, #0x64]
	b _08020DBC
_08020DB8:
	ldr r0, [r4, #0x64]
	str r0, [r2, #0x34]
_08020DBC:
	movs r0, #0x00
	str r0, [r4, #0x68]
	str r0, [r4, #0x64]
	ldrb r0, [r2, #0x01]
	subs r0, #0x01
	strb r0, [r2, #0x01]
_08020DC8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
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

	.section .rodata
	.align 2, 0

	.byte 0x41, 0x4F, 0x53, 0x41
	.byte 0x00, 0x00, 0x00, 0x00, 0x41, 0x4F, 0x53, 0x42, 0x00, 0x00, 0x00, 0x00, 0x41, 0x4F, 0x53, 0x43
	.byte 0x00, 0x00, 0x00, 0x00, 0x41, 0x4F, 0x53, 0x44, 0x00, 0x00, 0x00, 0x00, 0x41, 0x4F, 0x53, 0x45
	.byte 0x00, 0x00, 0x00, 0x00, 0x41, 0x4F, 0x53, 0x46, 0x00, 0x00, 0x00, 0x00, 0x54, 0x49, 0x4E, 0x46
	.byte 0x00, 0x00, 0x00, 0x00, 0x4F, 0x41, 0x4D, 0x45, 0x00, 0x00, 0x00, 0x00

	.data
	.align 2, 0

	.byte 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x40, 0x40, 0x10, 0x08, 0x20, 0x08, 0x20, 0x10, 0x40, 0x20
	.byte 0x08, 0x10, 0x08, 0x20, 0x10, 0x20, 0x20, 0x40, 0xBD, 0xEE, 0x01, 0x08, 0x71, 0xF3, 0x01, 0x08
	.byte 0xD1, 0xF7, 0x01, 0x08, 0xAD, 0xFB, 0x01, 0x08, 0xA9, 0xFF, 0x01, 0x08, 0x9D, 0x03, 0x02, 0x08
	.byte 0x00, 0x05, 0x80, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x74, 0x25, 0x1E, 0x08
	.byte 0x7C, 0x25, 0x1E, 0x08, 0x84, 0x25, 0x1E, 0x08, 0x8C, 0x25, 0x1E, 0x08, 0x94, 0x25, 0x1E, 0x08
	.byte 0x9C, 0x25, 0x1E, 0x08, 0x06, 0x05, 0x04, 0x04, 0x03, 0x03, 0x00, 0x00, 0xFC, 0xC2, 0x3C, 0x08
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
