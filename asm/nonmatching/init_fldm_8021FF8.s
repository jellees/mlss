	.include "asm/macros.inc"

	.syntax unified

	.section .rodata
	.align 2, 0

	.byte 0x42, 0x45, 0x56, 0x53, 0x00, 0x00, 0x00, 0x00, 0x45, 0x56, 0x54, 0x53, 0x00, 0x00, 0x00, 0x00
	.byte 0x46, 0x4D, 0x45, 0x58, 0x00, 0x00, 0x00, 0x00, 0x46, 0x4D, 0x42, 0x4B, 0x00, 0x00, 0x00, 0x00
	.byte 0x50, 0x4C, 0x53, 0x54, 0x00, 0x00, 0x00, 0x00, 0x50, 0x41, 0x4C, 0x57, 0x00, 0x00, 0x00, 0x00

	.text

	thumb_func_start init_fldm_8021FF8
init_fldm_8021FF8: @ 08021FF8
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r6, r3, #0x0
	add r0, sp, #0x038
	add r3, sp, #0x03C
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x000]
	ldrb r3, [r3, #0x00]
	str r3, [sp, #0x004]
	adds r0, r7, #0x0
	bl process_add
	ldr r0, _08022404 @ =0x08CDBDB8
	str r0, [r7, #0x18]
	movs r2, #0x00
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	bne _0802202E
	movs r2, #0x01
_0802202E:
	adds r0, r7, #0x0
	adds r0, #0xF8
	str r0, [sp, #0x008]
	movs r3, #0x01
	mov r1, sp
	strb r3, [r1, #0x0C]
	lsls r2, r2, #0x01
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	ldr r1, [sp, #0x008]
	strb r0, [r1, #0x00]
	movs r2, #0xC8
	lsls r2, r2, #0x02
	adds r5, r7, r2
	ldr r4, _08022408 @ =0x081E25B4
	movs r0, #0x24
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x01
	movs r2, #0x07
	adds r3, r4, #0x0
	bl bevs_process_init_80F048C
	str r0, [r5, #0x00]
	ldr r0, [r0, #0x00]
	str r7, [r0, #0x14]
	bl process_disable
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r5, r7, r3
	ldr r4, _0802240C @ =0x081E25BC
	movs r0, #0x24
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x01
	movs r2, #0x06
	adds r3, r4, #0x0
	bl evts_process_init_80EF3FC
	str r0, [r5, #0x00]
	ldr r0, [r0, #0x00]
	str r7, [r0, #0x14]
	bl process_disable
	ldr r1, _08022410 @ =0x0300034C
	movs r2, #0x8D
	lsls r2, r2, #0x04
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x1C]
	bl sub_819A138
	ldr r0, _08022414 @ =0x03000D7C
	str r7, [r0, #0x00]
	ldr r1, _08022418 @ =0x03000D78
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r3, #0x00
	strh r3, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xD0
	ldr r0, _08022410 @ =0x0300034C
	adds r0, #0x3C
	str r0, [r1, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x02
	ldr r2, _0802241C @ =0x081E25C4
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_Zero
	str r0, [r7, #0x1C]
	ldr r0, _08022420 @ =0x00000574
	ldr r2, _08022424 @ =0x081E25CC
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_Zero
	str r0, [r7, #0x20]
	movs r0, #0x8F
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r2, _08022428 @ =0x081E25D4
	movs r0, #0x80
	lsls r0, r0, #0x05
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ldr r2, _0802242C @ =0x081E25DC
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r7, #0x24]
	ldr r2, [sp, #0x008]
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r3, #0x02
	negs r3, r3
	ands r0, r3
	strb r0, [r2, #0x00]
	movs r0, #0xF9
	adds r0, r0, r7
	mov r12, r0
	ldr r1, [sp, #0x000]
	mov r2, sp
	ldrb r2, [r2, #0x0C]
	ands r1, r2
	lsls r1, r1, #0x03
	ldrb r2, [r0, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r3, r12
	strb r0, [r3, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r0, r0, r7
	mov r10, r0
	ldrb r0, [r0, #0x00]
	mov r1, sp
	ldrb r1, [r1, #0x0C]
	orrs r0, r1
	mov r2, r10
	strb r0, [r2, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r3, #0x05
	negs r3, r3
	ands r0, r3
	mov r1, r12
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xF0
	movs r5, #0x00
	str r5, [r0, #0x00]
	subs r0, #0x0C
	str r5, [r0, #0x00]
	movs r2, #0xAE
	lsls r2, r2, #0x02
	adds r2, r2, r7
	mov r9, r2
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r4, #0x11
	negs r4, r4
	ands r0, r4
	subs r3, #0x1C
	ands r0, r3
	strb r0, [r2, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r5, [r0, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strh r5, [r0, #0x00]
	movs r3, #0x90
	lsls r3, r3, #0x01
	adds r2, r7, r3
	ldrh r1, [r2, #0x00]
	ldr r0, _08022430 @ =0xFFFFFC00
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _08022434 @ =0x00000121
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	ands r0, r4
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strh r5, [r0, #0x00]
	adds r3, #0x04
	adds r0, r7, r3
	strh r6, [r0, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x01
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0xFC
	ldrh r0, [r3, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x03
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r3, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xFD
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08022438 @ =0x00000246
	adds r0, r7, r0
	str r0, [sp, #0x010]
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	ldr r1, [sp, #0x010]
	strb r0, [r1, #0x00]
	ldr r0, _0802243C @ =0x00000291
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xAA
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r6, #0x41
	negs r6, r6
	adds r0, r6, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08022440 @ =0x000002B9
	adds r1, r7, r2
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	mov r1, r9
	strb r0, [r1, #0x00]
	ldr r2, _08022444 @ =0x0000012B
	adds r1, r7, r2
	movs r0, #0x01
	negs r0, r0
	strb r0, [r1, #0x00]
	movs r0, #0x96
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	ands r0, r1
	movs r1, #0xF8
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08022448 @ =0x0000012D
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	ands r0, r4
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r2, #0x85
	lsls r2, r2, #0x01
	adds r0, r7, r2
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r2, #0x24
	adds r0, r7, r2
	strh r5, [r0, #0x00]
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r0, r7, r3
	strh r5, [r0, #0x00]
	mov r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	mov r1, sp
	ldrb r2, [r1, #0x0C]
	ldr r1, [sp, #0x000]
	eors r2, r1
	mov r3, sp
	ldrb r3, [r3, #0x0C]
	ands r2, r3
	lsls r1, r2, #0x04
	ands r0, r4
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	ldr r2, _0802244C @ =0x0000027A
	adds r0, r7, r2
	strh r5, [r0, #0x00]
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r0, r7, r3
	strh r5, [r0, #0x00]
	ldr r1, _08022450 @ =0x0000027E
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	adds r2, #0x06
	adds r0, r7, r2
	strh r5, [r0, #0x00]
	adds r3, #0x06
	adds r0, r7, r3
	strh r5, [r0, #0x00]
	adds r1, #0x06
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	adds r2, #0x0A
	adds r1, r7, r2
	movs r0, #0x68
	strb r0, [r1, #0x00]
	adds r3, #0x09
	adds r1, r7, r3
	movs r0, #0x88
	strb r0, [r1, #0x00]
	movs r0, #0xA3
	lsls r0, r0, #0x02
	adds r1, r7, r0
	movs r0, #0x50
	strb r0, [r1, #0x00]
	ldr r1, _08022454 @ =0x0000028D
	adds r0, r7, r1
	movs r2, #0x6A
	strb r2, [r0, #0x00]
	adds r3, #0x03
	adds r1, r7, r3
	movs r0, #0x26
	strb r0, [r1, #0x00]
	ldr r1, _08022458 @ =0x0000028F
	adds r0, r7, r1
	strb r2, [r0, #0x00]
	mov r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r3, #0x85
	adds r3, r3, r7
	mov r9, r3
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r2, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	ands r0, r6
	movs r2, #0x7F
	mov r8, r2
	ands r0, r2
	mov r3, r10
	strb r0, [r3, #0x00]
	ldr r1, [sp, #0x008]
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	ldr r1, _0802245C @ =0xFFFE7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	mov r2, r10
	str r0, [r2, #0x00]
	ldr r0, _08022460 @ =0x0000020A
	adds r3, r7, r0
	ldrb r0, [r3, #0x00]
	movs r1, #0x03
	negs r1, r1
	ands r1, r0
	movs r2, #0x05
	negs r2, r2
	ands r1, r2
	movs r0, #0x09
	negs r0, r0
	ands r1, r0
	ands r1, r4
	subs r0, #0x58
	ands r1, r0
	strb r1, [r3, #0x00]
	movs r0, #0xB6
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x1F
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	strh r2, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	ldr r0, _08022464 @ =0xFFFFFE7F
	ands r0, r1
	strh r0, [r3, #0x00]
	ldr r3, _08022468 @ =0x00000242
	adds r0, r7, r3
	strh r5, [r0, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	ldr r2, _0802246C @ =0x0000020B
	adds r1, r7, r2
	ldrb r0, [r1, #0x00]
	ands r4, r0
	movs r3, #0x21
	negs r3, r3
	ands r4, r3
	ands r4, r6
	mov r0, r8
	ands r4, r0
	movs r0, #0x02
	orrs r4, r0
	strb r4, [r1, #0x00]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	negs r0, r0
	ands r0, r1
	ands r0, r3
	ands r0, r6
	strb r0, [r2, #0x00]
	mov r3, r12
	ldrb r1, [r3, #0x00]
	mov r0, r8
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xFA
	ldrb r0, [r1, #0x00]
	b _08022470
_08022404: .4byte 0x08CDBDB8
_08022408: .4byte 0x081E25B4
_0802240C: .4byte 0x081E25BC
_08022410: .4byte 0x0300034C
_08022414: .4byte 0x03000D7C
_08022418: .4byte 0x03000D78
_0802241C: .4byte 0x081E25C4
_08022420: .4byte 0x00000574
_08022424: .4byte 0x081E25CC
_08022428: .4byte 0x081E25D4
_0802242C: .4byte 0x081E25DC
_08022430: .4byte 0xFFFFFC00
_08022434: .4byte 0x00000121
_08022438: .4byte 0x00000246
_0802243C: .4byte 0x00000291
_08022440: .4byte 0x000002B9
_08022444: .4byte 0x0000012B
_08022448: .4byte 0x0000012D
_0802244C: .4byte 0x0000027A
_08022450: .4byte 0x0000027E
_08022454: .4byte 0x0000028D
_08022458: .4byte 0x0000028F
_0802245C: .4byte 0xFFFE7FFF
_08022460: .4byte 0x0000020A
_08022464: .4byte 0xFFFFFE7F
_08022468: .4byte 0x00000242
_0802246C: .4byte 0x0000020B
_08022470:
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r3, #0x9B
	lsls r3, r3, #0x02
	adds r0, r7, r3
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r2, [sp, #0x010]
	ldrb r1, [r2, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r3, #0x3D
	adds r1, r7, r3
	ldrb r0, [r1, #0x00]
	ands r6, r0
	mov r0, r8
	ands r6, r0
	strb r6, [r1, #0x00]
	ldr r2, [sp, #0x004]
	mov r1, sp
	ldrb r1, [r1, #0x0C]
	ands r2, r1
	lsls r1, r2, #0x03
	ldr r2, [sp, #0x008]
	ldrb r0, [r2, #0x00]
	movs r2, #0x09
	negs r2, r2
	ands r2, r0
	orrs r2, r1
	ldr r3, [sp, #0x008]
	strb r2, [r3, #0x00]
	movs r0, #0xFD
	lsls r0, r0, #0x01
	adds r1, r7, r0
	movs r0, #0xFF
	lsls r0, r0, #0x08
	strh r0, [r1, #0x00]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r5, [r0, #0x00]
	movs r2, #0xC2
	lsls r2, r2, #0x02
	adds r0, r7, r2
	str r5, [r0, #0x00]
	movs r3, #0xC3
	lsls r3, r3, #0x02
	adds r0, r7, r3
	str r5, [r0, #0x00]
	adds r1, #0x0C
	adds r0, r7, r1
	str r5, [r0, #0x00]
	adds r2, #0x0C
	adds r0, r7, r2
	str r5, [r0, #0x00]
	movs r3, #0xFB
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _08022544 @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r1, #0xFC
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r2, #0x00
	strb r2, [r0, #0x00]
	adds r3, #0xBC
	adds r0, r7, r3
	movs r1, #0x02
	negs r1, r1
	strh r1, [r0, #0x00]
	movs r2, #0xC6
	lsls r2, r2, #0x02
	adds r0, r7, r2
	str r5, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8029934
	ldr r3, _08022548 @ =0x0300034C
	ldr r0, _0802254C @ =0x0000088A
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08022550 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x03
	adds r1, r0, r2
	str r5, [r1, #0x00]
	movs r3, #0xA6
	lsls r3, r3, #0x03
	adds r0, r0, r3
	str r5, [r0, #0x00]
	adds r0, r7, #0x0
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08022544: .4byte 0x0000FFFF
_08022548: .4byte 0x0300034C
_0802254C: .4byte 0x0000088A
_08022550: .4byte 0x03000FD0
