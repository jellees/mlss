	.include "asm/macros.inc"

	thumb_func_start open_init_8055A00
open_init_8055A00: @ 08055A00
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r10, r0
	str r3, [sp, #0x00C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _08055AF0 @ =0x08CDC238
	mov r1, r10
	str r0, [r1, #0x18]
	ldr r1, _08055AF4 @ =0x02000080
	ldr r2, _08055AF8 @ =0x00007FFF
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r3, _08055AFC @ =0x0300034C
	mov r8, r3
	movs r1, #0x00
	movs r4, #0x01
	strh r4, [r3, #0x02]
	movs r0, #0x80
	lsls r0, r0, #0x12
	strh r1, [r0, #0x00]
	bl sub_8017E34
	mov r1, r8
	adds r1, #0x31
	movs r0, #0x08
	strb r0, [r1, #0x00]
	bl sub_81251DC
	ldr r5, _08055B00 @ =0x0203FFF8
	ldr r1, [r0, #0x00]
	str r1, [r5, #0x00]
	ldrb r0, [r0, #0x04]
	strb r0, [r5, #0x04]
	ldrb r0, [r5, #0x07]
	movs r3, #0x04
	negs r3, r3
	ands r3, r0
	strb r3, [r5, #0x07]
	ldr r0, _08055B04 @ =0x03000FFC
	ldr r6, [r0, #0x00]
	ldrb r0, [r6, #0x08]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	adds r1, r4, #0x0
	ands r1, r0
	lsls r1, r1, #0x02
	movs r2, #0x05
	negs r2, r2
	ands r2, r3
	orrs r2, r1
	strb r2, [r5, #0x07]
	ldrb r0, [r6, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x03
	movs r1, #0x09
	negs r1, r1
	ands r1, r2
	orrs r1, r4
	strb r1, [r5, #0x07]
	ldrb r0, [r6, #0x08]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x19
	movs r2, #0x71
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	ldr r0, _08055B08 @ =0x00000888
	add r8, r0
	mov r2, r8
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x07
	movs r2, #0x7F
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x07]
	ldr r4, _08055B0C @ =0x03000DA0
	movs r0, #0xAA
	lsls r0, r0, #0x01
	ldr r2, _08055B10 @ =0x081E277C
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_Zero
	str r0, [r4, #0x00]
	mov r6, r10
	adds r6, #0xB8
	ldr r4, _08055B14 @ =0x081E2764
	movs r0, #0x24
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	ldr r3, [r5, #0x00]
	ldrb r1, [r5, #0x04]
	str r1, [sp, #0x000]
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_80572CC
	str r0, [r6, #0x00]
	mov r3, r10
	str r3, [r0, #0x14]
	ldr r0, [sp, #0x00C]
	cmp r0, #0x00
	beq _08055B18
	adds r1, r0, #0x0
	subs r1, #0x01
	b _08055B1A
_08055AF0: .4byte 0x08CDC238
_08055AF4: .4byte 0x02000080
_08055AF8: .4byte 0x00007FFF
_08055AFC: .4byte 0x0300034C
_08055B00: .4byte 0x0203FFF8
_08055B04: .4byte 0x03000FFC
_08055B08: .4byte 0x00000888
_08055B0C: .4byte 0x03000DA0
_08055B10: .4byte 0x081E277C
_08055B14: .4byte 0x081E2764
_08055B18:
	movs r1, #0x00
_08055B1A:
	mov r0, r10
	adds r0, #0xBC
	movs r4, #0x00
	strb r1, [r0, #0x00]
	mov r2, r10
	ldrb r1, [r2, #0x1D]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	strb r1, [r2, #0x1C]
	subs r1, #0x21
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x1D]
	mov r0, r10
	adds r0, #0x80
	strb r4, [r0, #0x00]
	ldr r3, _08055CD4 @ =0x03000C78
	ldr r2, _08055CD8 @ =0x081E276C
	mov r7, r10
	adds r7, #0xC0
	mov r1, r10
	adds r1, #0x81
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	str r4, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r6, r0, #0x0
	ldr r3, _08055CDC @ =0x03000C84
	mov r9, r3
	ldr r4, _08055CE0 @ =0x083A3D80
	ldr r2, [r3, #0x00]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	movs r5, #0xC0
	lsls r5, r5, #0x13
	adds r0, r4, #0x0
	bl sub_80198B0
	adds r2, r0, #0x0
	lsrs r2, r2, #0x02
	ldr r0, _08055CE4 @ =0x001FFFFF
	mov r8, r0
	ands r2, r0
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_81DA698
	ldr r4, _08055CE8 @ =0x083A4874
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r5, _08055CEC @ =0x06004000
	adds r0, r4, #0x0
	bl sub_80198B0
	adds r2, r0, #0x0
	lsrs r2, r2, #0x02
	mov r3, r8
	ands r2, r3
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_81DA698
	ldr r0, _08055CF0 @ =0x083A575C
	ldr r1, _08055CF4 @ =0x0600C000
	movs r2, #0xA0
	lsls r2, r2, #0x01
	bl sub_81DA698
	ldr r0, _08055CF8 @ =0x083A5C5C
	ldr r1, _08055CFC @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #0x03
	bl sub_81DA698
	ldr r0, _08055D00 @ =0x083A6C5C
	ldr r1, _08055D04 @ =0x0600C800
	movs r2, #0x9C
	lsls r2, r2, #0x01
	bl sub_81DA698
	adds r0, r6, #0x0
	bl free_heap_8018DA8
	movs r0, #0x00
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8020994
	movs r0, #0x00
	mov r8, r0
	movs r5, #0x01
	negs r5, r5
	ldr r6, _08055D08 @ =0x083A74C0
_08055C02:
	ldrh r1, [r6, #0x00]
	ldrh r2, [r6, #0x02]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x00
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x00]
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldrh r1, [r6, #0x04]
	ldrh r2, [r6, #0x06]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x00
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x04]
	str r4, [sp, #0x000]
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldrh r1, [r6, #0x08]
	ldrh r2, [r6, #0x0A]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x00
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x08]
	str r4, [sp, #0x000]
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r7, #0x0C
	adds r6, #0x0C
	movs r1, #0x03
	add r8, r1
	mov r2, r8
	cmp r2, #0x08
	bls _08055C02
	ldr r3, [sp, #0x00C]
	cmp r3, #0x00
	bne _08055D0C
	movs r0, #0xF0
	lsls r0, r0, #0x07
	mov r1, r10
	str r0, [r1, #0x20]
	str r3, [r1, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x2A]
	mov r4, r10
	adds r4, #0xD4
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r4, #0x00]
	movs r0, #0x78
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	mov r2, sp
	ldrh r2, [r2, #0x0C]
	strh r2, [r0, #0x02]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r1, [r4, #0x00]
	movs r0, #0x02
	strh r0, [r1, #0x0E]
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	b _08055D14
	.byte 0x00, 0x00
_08055CD4: .4byte 0x03000C78
_08055CD8: .4byte 0x081E276C
_08055CDC: .4byte 0x03000C84
_08055CE0: .4byte 0x083A3D80
_08055CE4: .4byte 0x001FFFFF
_08055CE8: .4byte 0x083A4874
_08055CEC: .4byte 0x06004000
_08055CF0: .4byte 0x083A575C
_08055CF4: .4byte 0x0600C000
_08055CF8: .4byte 0x083A5C5C
_08055CFC: .4byte 0x0600D000
_08055D00: .4byte 0x083A6C5C
_08055D04: .4byte 0x0600C800
_08055D08: .4byte 0x083A74C0
_08055D0C:
	mov r0, r10
	ldr r1, [sp, #0x00C]
	bl sub_8055F74
_08055D14:
	ldr r1, _08055DB4 @ =0x03000C78
	ldr r0, _08055DB8 @ =0x0800063C
	str r0, [r1, #0x00]
	ldr r1, _08055DBC @ =0x02000050
	movs r0, #0xBF
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x10
	strh r0, [r1, #0x00]
	subs r1, #0x4C
	ldr r3, _08055DC0 @ =0x00001802
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _08055DC4 @ =0x00005A03
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r3, _08055DC8 @ =0x00005984
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _08055DCC @ =0x02000010
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldr r5, _08055DD0 @ =0x0300034C
	ldr r1, _08055DD4 @ =0x00000888
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	ldr r1, _08055DD8 @ =0x083A7300
	cmp r0, #0x00
	bne _08055D64
	ldr r1, _08055DDC @ =0x083A7140
_08055D64:
	ldr r4, _08055DE0 @ =0x02000080
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	movs r2, #0x70
	bl sub_81DA698
	ldr r2, _08055DE4 @ =0x00007FFF
	adds r0, r2, #0x0
	strh r0, [r4, #0x00]
	ldr r0, _08055DE8 @ =0x0000FFFF
	strh r0, [r5, #0x02]
	movs r0, #0x01
	negs r0, r0
	strh r0, [r5, #0x00]
	ldr r1, _08055DEC @ =0x08056225
	movs r0, #0x02
	bl sub_8018B78
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	movs r1, #0x29
	bl sub_8019308
	ldr r3, [sp, #0x00C]
	cmp r3, #0x00
	bne _08055DF4
	mov r0, r10
	ldrb r1, [r0, #0x1D]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	mov r1, r10
	strb r0, [r1, #0x1D]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r0, [r2, #0x00]
	ldr r3, _08055DF0 @ =0x00001241
	b _08055E0E
	.byte 0x00, 0x00
_08055DB4: .4byte 0x03000C78
_08055DB8: .4byte 0x0800063C
_08055DBC: .4byte 0x02000050
_08055DC0: .4byte 0x00001802
_08055DC4: .4byte 0x00005A03
_08055DC8: .4byte 0x00005984
_08055DCC: .4byte 0x02000010
_08055DD0: .4byte 0x0300034C
_08055DD4: .4byte 0x00000888
_08055DD8: .4byte 0x083A7300
_08055DDC: .4byte 0x083A7140
_08055DE0: .4byte 0x02000080
_08055DE4: .4byte 0x00007FFF
_08055DE8: .4byte 0x0000FFFF
_08055DEC: .4byte sub_8056224
_08055DF0: .4byte 0x00001241
_08055DF4:
	mov r0, r10
	ldrb r1, [r0, #0x1D]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	mov r1, r10
	strb r0, [r1, #0x1D]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r0, [r2, #0x00]
	ldr r3, _08055E28 @ =0x00001741
_08055E0E:
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	mov r0, r10
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08055E28: .4byte 0x00001741
