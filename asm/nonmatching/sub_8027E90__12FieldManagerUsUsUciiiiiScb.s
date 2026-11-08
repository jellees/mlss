	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_8027E90__12FieldManagerUsUsUciiiiiScb
sub_8027E90__12FieldManagerUsUsUciiiiiScb:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [sp, #0x040]
	add r4, sp, #0x044
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x000]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r10, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x004]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x008]
	ldrb r4, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_803C610
	bl sub_801A6B0
	cmp r4, #0x01
	bne _08027F54
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _08027F54
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r4, r5, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x1F
	ands r3, r2
	cmp r3, #0x1F
	bne _08027F54
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	movs r0, #0x1F
	ands r1, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	ldr r2, _08027F70 @ =0x000002DA
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x18
	ldrb r1, [r4, #0x00]
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xB8
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r1, #0x00]
	adds r3, #0x08
	adds r1, r5, r3
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xBA
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x18]
	str r0, [r1, #0x00]
_08027F54:
	movs r6, #0x00
	ldr r1, _08027F74 @ =0x0000010B
	adds r0, r5, r1
	adds r7, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xA8
	movs r2, #0xF8
	adds r2, r2, r5
	mov r8, r2
	movs r3, #0xF9
	adds r3, r3, r5
	mov r9, r3
	b _08027F9E
	.byte 0x00, 0x00
_08027F70: .4byte 0x000002DA
_08027F74: .4byte 0x0000010B
_08027F78:
	lsls r1, r6, #0x02
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08027F9C
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r0, #0x00]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08027F9C:
	adds r6, #0x01
_08027F9E:
	ldrb r0, [r7, #0x00]
	cmp r6, r0
	blt _08027F78
	ldr r0, [r4, #0x00]
	bl __builtin_delete
	movs r6, #0x00
	ldr r0, [r4, #0x04]
	bl __builtin_delete
	ldr r0, [r4, #0x08]
	bl __builtin_delete
	ldr r0, [r4, #0x0C]
	bl __builtin_delete
	ldr r0, [r4, #0x10]
	bl __builtin_delete
	ldr r0, [r4, #0x14]
	bl __builtin_delete
	ldr r0, [r4, #0x18]
	bl __builtin_delete
	ldr r0, [r4, #0x1C]
	bl __builtin_delete
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _08027FF0
	ldr r0, _08028148 @ =0x08CDBDC8
	str r0, [r1, #0x18]
	adds r0, r1, #0x0
	movs r1, #0x03
	bl _._7Process
	str r6, [r4, #0x00]
_08027FF0:
	movs r2, #0xC3
	lsls r2, r2, #0x02
	adds r4, r5, r2
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08028004
	movs r1, #0x03
	bl _._7Process
	str r6, [r4, #0x00]
_08028004:
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r7, r5, r3
	ldr r0, [r7, #0x00]
	bl sub_80F0184
	bl sub_80E8DC0
	movs r0, #0xC2
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08028028
	movs r1, #0x03
	bl sub_805C73C
	str r6, [r4, #0x00]
_08028028:
	movs r1, #0xC5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0802803C
	movs r1, #0x03
	bl sub_81166AC
	str r6, [r4, #0x00]
_0802803C:
	movs r2, #0xFE
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08028050
	movs r1, #0x03
	bl sub_805CCC0
	str r6, [r4, #0x00]
_08028050:
	movs r3, #0xC1
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08028064
	movs r1, #0x03
	bl _._4S_MP
	str r6, [r4, #0x00]
_08028064:
	movs r0, #0x02
	movs r1, #0x00
	bl runtime_install_interrupt_callback
	ldr r0, [r7, #0x00]
	ldr r0, [r0, #0x00]
	bl disable__7Process
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl disable__7Process
	movs r2, #0xAE
	lsls r2, r2, #0x02
	adds r6, r5, r2
	movs r7, #0x01
	mov r1, r10
	ands r1, r7
	lsls r1, r1, #0x04
	ldrb r2, [r6, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x07
	ldr r3, [sp, #0x004]
	ands r1, r3
	lsls r1, r1, #0x01
	movs r2, #0x0F
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x00]
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [sp, #0x02C]
	str r0, [r1, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r0, [sp, #0x030]
	str r0, [r1, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldr r0, [sp, #0x034]
	str r0, [r1, #0x00]
	movs r0, #0xB2
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [sp, #0x038]
	str r0, [r1, #0x00]
	adds r2, #0x0C
	adds r1, r5, r2
	ldr r0, [sp, #0x03C]
	str r0, [r1, #0x00]
	subs r3, #0x0B
	adds r0, r5, r3
	mov r1, sp
	ldrb r1, [r1, #0x08]
	strb r1, [r0, #0x00]
	mov r4, r8
	ldrb r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08028100
	bl sub_8021FD4
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_08028100:
	ldrb r0, [r6, #0x00]
	orrs r0, r7
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r6, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r5, r2
	movs r2, #0x00
	mov r3, sp
	ldrh r3, [r3, #0x00]
	strh r3, [r0, #0x00]
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x08
	orrs r0, r1
	mov r3, r9
	strb r0, [r3, #0x00]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	mov r1, r8
	strb r0, [r1, #0x00]
	strb r2, [r5, #0x00]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08028148: .4byte 0x08CDBDC8
