	.include "asm/macros.inc"

	.syntax unified
	.text

	.byte 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x1A, 0x48, 0xA0, 0x61, 0xCD, 0xF7, 0x81, 0xFE, 0x20, 0x6A
	.byte 0x00, 0x28, 0x02, 0xD0, 0x03, 0x21, 0xC5, 0xF7, 0xAF, 0xFC, 0x20, 0x6C, 0x00, 0x28, 0x01, 0xD0
	.byte 0xC4, 0xF7, 0x5A, 0xFD, 0x60, 0x6A, 0x00, 0x28, 0x01, 0xD0, 0xC4, 0xF7, 0x55, 0xFD, 0x20, 0x6B
	.byte 0x00, 0x28, 0x01, 0xD0, 0xC4, 0xF7, 0x50, 0xFD, 0x60, 0x6B, 0x00, 0x28, 0x01, 0xD0, 0xC4, 0xF7
	.byte 0x4B, 0xFD, 0xA0, 0x6B, 0xC4, 0xF7, 0x4E, 0xFD, 0xC6, 0xF7, 0xD0, 0xF9, 0x09, 0x48, 0x31, 0x30
	.byte 0x00, 0x22, 0x02, 0x21, 0x01, 0x70, 0x80, 0x20, 0x80, 0x04, 0x02, 0x80, 0x06, 0x49, 0x10, 0x20
	.byte 0x08, 0x80, 0x20, 0x1C, 0x29, 0x1C, 0xC5, 0xF7, 0x87, 0xFC, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xF8, 0xC1, 0xCD, 0x08, 0x4C, 0x03, 0x00, 0x03, 0x50, 0x00, 0x00, 0x02, 0x10, 0xB5, 0x04, 0x1C
	.byte 0x09, 0x06, 0x09, 0x0E, 0xC5, 0xF7, 0x2E, 0xFB, 0x02, 0x48, 0xA0, 0x61, 0x20, 0x1C, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0xE8, 0xC1, 0xCD, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x09, 0x06, 0x09, 0x0E
	.byte 0xC5, 0xF7, 0x20, 0xFB, 0x02, 0x48, 0xA0, 0x61, 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x08, 0xC2, 0xCD, 0x08
	thumb_func_start sub_8054378
sub_8054378:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	mov r9, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	bl process_add
	ldr r0, _08054400 @ =0x08CDC218
	mov r1, r9
	str r0, [r1, #0x18]
	ldr r1, _08054404 @ =0x02000050
	movs r0, #0xFF
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x10
	strh r0, [r1, #0x00]
	subs r1, #0x54
	movs r0, #0x00
	strh r0, [r1, #0x00]
	bl sub_8017E34
	ldr r1, _08054408 @ =0x084F4740
	lsls r0, r7, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	ldr r1, _0805440C @ =0x0300034C
	ldr r2, _08054410 @ =0x00000889
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r4, #0x02
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	bl sub_81251F0
	mov r2, r9
	adds r2, #0x34
	movs r3, #0x01
	adds r1, r3, #0x0
	ands r1, r0
	ldrb r0, [r2, #0x00]
	ands r4, r0
	orrs r4, r1
	strb r4, [r2, #0x00]
	ands r4, r3
	cmp r4, #0x00
	beq _0805441C
	ldr r2, _08054414 @ =0x03000FFC
	ldr r0, _08054418 @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	adds r0, #0x14
	b _0805441E
_08054400: .4byte 0x08CDC218
_08054404: .4byte 0x02000050
_08054408: .4byte 0x084F4740
_0805440C: .4byte 0x0300034C
_08054410: .4byte 0x00000889
_08054414: .4byte 0x03000FFC
_08054418: .4byte 0x03000D40
_0805441C:
	movs r0, #0x00
_0805441E:
	mov r3, r9
	str r0, [r3, #0x40]
	mov r4, r9
	adds r4, #0x35
	strb r7, [r4, #0x00]
	adds r3, #0x34
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	mov r2, r9
	adds r2, #0x37
	strb r0, [r2, #0x00]
	mov r5, r9
	adds r5, #0x38
	movs r0, #0x01
	strb r0, [r5, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x04
	adds r0, r0, r6
	subs r0, #0x10
	ldrb r0, [r0, #0x0A]
	movs r1, #0x02
	ands r1, r0
	lsls r0, r7, #0x02
	str r0, [sp, #0x024]
	str r3, [sp, #0x028]
	str r4, [sp, #0x02C]
	str r5, [sp, #0x034]
	adds r3, #0x02
	str r3, [sp, #0x030]
	ldr r7, _08054694 @ =0x081E273C
	mov r0, sp
	adds r0, #0x1C
	str r0, [sp, #0x020]
	adds r3, #0x12
	str r3, [sp, #0x038]
	mov r0, r9
	adds r0, #0x58
	str r0, [sp, #0x03C]
	cmp r1, #0x00
	bne _0805448C
	movs r3, #0x02
_08054474:
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x04
	adds r0, r0, r6
	subs r0, #0x10
	ldrb r1, [r0, #0x0A]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08054474
_0805448C:
	ldrb r0, [r2, #0x00]
	movs r1, #0x00
	mov r10, r1
	ldr r2, [sp, #0x030]
	strb r0, [r2, #0x00]
	movs r0, #0x10
	mov r3, r9
	strh r0, [r3, #0x1C]
	ldr r0, [sp, #0x028]
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x1F
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x01
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x028]
	strb r0, [r1, #0x00]
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r7, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r7, #0x0
	bl process_add
	ldr r0, _08054698 @ =0x08CDC228
	str r0, [r4, #0x18]
	mov r2, r9
	str r4, [r2, #0x30]
	str r2, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ldr r2, _0805469C @ =0x081E2744
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r6, r0, #0x0
	add r0, sp, #0x018
	mov r3, r10
	strh r3, [r0, #0x00]
	movs r0, #0x25
	movs r1, #0x00
	bl sub_8127ECC
	adds r5, r0, #0x0
	ldr r0, _080546A0 @ =0x03000C84
	mov r8, r0
	ldr r2, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r4, _080546A4 @ =0x06004000
	adds r0, r5, #0x0
	bl sub_80198B0
	adds r2, r0, #0x0
	lsrs r2, r2, #0x02
	ldr r7, _080546A8 @ =0x001FFFFF
	ands r2, r7
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_81DA698
	movs r0, #0x2D
	movs r1, #0x00
	bl sub_8127ECC
	adds r5, r0, #0x0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r4, _080546AC @ =0x0600C800
	adds r0, r5, #0x0
	bl sub_80198B0
	adds r2, r0, #0x0
	lsrs r2, r2, #0x02
	ands r2, r7
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_81DA698
	ldr r4, _080546B0 @ =0x0300034C
	ldr r2, _080546B4 @ =0x00000888
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x2C
	cmp r0, #0x00
	bne _0805455A
	movs r1, #0x2B
_0805455A:
	adds r0, r1, #0x0
	ldr r1, [sp, #0x020]
	bl sub_8127ECC
	adds r5, r0, #0x0
	ldr r2, [sp, #0x01C]
	cmp r2, #0x00
	bge _0805456C
	adds r2, #0x03
_0805456C:
	asrs r2, r2, #0x02
	ands r2, r7
	adds r0, r5, #0x0
	ldr r1, _080546B8 @ =0x02000080
	bl sub_81DA698
	ldr r0, _080546BC @ =0x0000FFFF
	strh r0, [r4, #0x02]
	ldr r4, _080546C0 @ =0x083A297C
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r5, _080546C4 @ =0x06010000
	adds r0, r4, #0x0
	bl sub_80198B0
	adds r2, r0, #0x0
	lsrs r2, r2, #0x02
	ands r2, r7
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_81DA698
	movs r0, #0x06
	movs r1, #0x00
	bl sub_8127ECC
	adds r5, r0, #0x0
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r0, r6, #0x0
	bl sub_81229F0
	ldr r4, _080546C8 @ =0x06010400
	adds r0, r5, #0x0
	bl sub_80198B0
	adds r2, r0, #0x0
	lsrs r2, r2, #0x02
	ands r2, r7
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_81DA698
	ldr r0, _080546CC @ =0x03000C78
	mov r1, r10
	str r1, [r0, #0x00]
	cmp r6, #0x00
	beq _080545E2
	adds r0, r6, #0x0
	bl free_heap_8018D9C
_080545E2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8020994
	ldr r1, _080546D0 @ =0x00006003
	mov r2, r10
	str r2, [sp, #0x000]
	add r3, sp, #0x018
	str r3, [sp, #0x004]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r1, _080546D4 @ =0x00006002
	mov r0, r10
	str r0, [sp, #0x000]
	add r2, sp, #0x018
	str r2, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r1, _080546D8 @ =0x00006005
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	mov r3, r9
	str r0, [r3, #0x44]
	mov r1, r10
	str r1, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	mov r2, r9
	ldr r0, [r2, #0x44]
	bl sprite_show_8020CBC
	mov r3, r9
	ldr r1, [r3, #0x44]
	movs r0, #0x20
	strh r0, [r1, #0x00]
	ldr r2, [r3, #0x44]
	ldr r0, [sp, #0x030]
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x31
	strh r0, [r2, #0x02]
	ldr r2, [sp, #0x028]
	ldrb r1, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	movs r7, #0x00
	cmp r0, #0x00
	bne _08054676
	movs r7, #0x02
_08054676:
	cmp r7, #0x03
	ble _0805467C
	b _0805484C
_0805467C:
	movs r3, #0x01
	mov r10, r3
	lsls r0, r7, #0x02
	ldr r1, [sp, #0x038]
	adds r6, r0, r1
_08054686:
	cmp r7, #0x01
	bgt _080546DC
	mov r2, r9
	ldr r0, [r2, #0x40]
	adds r5, r0, #0x0
	adds r5, #0x1C
	b _080546E0
_08054694: .4byte 0x081E273C
_08054698: .4byte 0x08CDC228
_0805469C: .4byte 0x081E2744
_080546A0: .4byte 0x03000C84
_080546A4: .4byte 0x06004000
_080546A8: .4byte 0x001FFFFF
_080546AC: .4byte 0x0600C800
_080546B0: .4byte 0x0300034C
_080546B4: .4byte 0x00000888
_080546B8: .4byte 0x02000080
_080546BC: .4byte 0x0000FFFF
_080546C0: .4byte 0x083A297C
_080546C4: .4byte 0x06010000
_080546C8: .4byte 0x06010400
_080546CC: .4byte 0x03000C78
_080546D0: .4byte 0x00006003
_080546D4: .4byte 0x00006002
_080546D8: .4byte 0x00006005
_080546DC:
	ldr r0, _08054704 @ =0x03000FF4
	ldr r5, [r0, #0x00]
_080546E0:
	movs r4, #0x00
	cmp r7, #0x01
	bgt _0805470C
	mov r3, r9
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #0x00]
	ldr r1, _08054708 @ =0x00040020
	ands r0, r1
	cmp r0, #0x00
	bne _08054730
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	eors r0, r7
	negs r1, r0
	orrs r1, r0
	lsrs r4, r1, #0x1F
	b _08054730
_08054704: .4byte 0x03000FF4
_08054708: .4byte 0x00040020
_0805470C:
	mov r1, r9
	ldr r0, [r1, #0x14]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _08054730
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	adds r0, r7, #0x0
	mov r3, r10
	ands r0, r3
	cmp r1, r0
	beq _08054730
	movs r4, #0x01
_08054730:
	cmp r4, #0x00
	bne _08054754
	adds r2, r7, #0x0
	mov r0, r10
	ands r2, r0
	lsls r0, r2, #0x03
	adds r0, r5, r0
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08054756
	ldr r1, _08054750 @ =0x00001002
	cmp r2, #0x00
	bne _08054756
	subs r1, #0x01
	b _08054756
_08054750: .4byte 0x00001002
_08054754:
	ldr r1, _08054780 @ =0x00006006
_08054756:
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x01
	bl sub_8020DD0
	str r0, [r6, #0x00]
	adds r2, r0, #0x0
	cmp r4, #0x00
	bne _08054784
	adds r0, r7, #0x0
	mov r1, r10
	ands r0, r1
	lsls r0, r0, #0x03
	adds r0, r5, r0
	adds r0, #0x7A
	ldrb r1, [r0, #0x00]
	b _0805478A
_08054780: .4byte 0x00006006
_08054784:
	adds r1, r7, #0x0
	mov r3, r10
	ands r1, r3
_0805478A:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r6, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	cmp r4, #0x00
	bne _080547B6
	adds r0, r7, #0x0
	mov r2, r10
	ands r0, r2
	lsls r0, r0, #0x03
	adds r0, r5, r0
	adds r0, #0x7B
	ldrb r2, [r0, #0x00]
	b _080547B8
_080547B6:
	movs r2, #0x00
_080547B8:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r6, #0x00]
	adds r4, r7, #0x0
	mov r0, r10
	ands r4, r0
	lsls r0, r4, #0x03
	adds r5, r5, r0
	mov r8, r5
	adds r5, #0x7D
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	mov r1, r10
	ands r0, r1
	lsls r0, r0, #0x06
	ldrb r1, [r3, #0x11]
	movs r2, #0x41
	negs r2, r2
	mov r12, r2
	mov r2, r12
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x11]
	ldr r3, [r6, #0x00]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x07
	ldrb r2, [r3, #0x11]
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r1, [r6, #0x00]
	movs r0, #0xBC
	cmp r4, #0x00
	beq _0805480E
	movs r0, #0x94
_0805480E:
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	movs r0, #0x68
	strh r0, [r1, #0x02]
	ldr r2, [r6, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldm r6!, {r2}
	ldrb r0, [r2, #0x1F]
	movs r1, #0xC0
	orrs r0, r1
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0x0C
	orrs r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	mov r1, r9
	adds r1, #0x39
	adds r1, r1, r7
	mov r0, r8
	adds r0, #0x7C
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	adds r7, #0x01
	cmp r7, #0x03
	bgt _0805484C
	b _08054686
_0805484C:
	ldr r3, [sp, #0x028]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x03
	ldr r1, [sp, #0x038]
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	bl sprite_show_8020CBC
	ldr r2, [sp, #0x028]
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	ands r0, r1
	adds r0, #0x01
	lsls r0, r0, #0x02
	ldr r3, [sp, #0x038]
	adds r0, r3, r0
	ldr r0, [r0, #0x00]
	bl sprite_show_8020CBC
	movs r0, #0x00
	mov r10, r0
	movs r7, #0x01
	negs r7, r7
	ldr r6, [sp, #0x03C]
	ldr r1, _08054A24 @ =0x083A2B38
	mov r8, r1
_08054884:
	str r7, [sp, #0x000]
	str r7, [sp, #0x004]
	str r7, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _08054A28 @ =0x00006005
	movs r2, #0x01
	adds r3, r7, #0x0
	bl sub_8020DD0
	str r0, [r6, #0x00]
	mov r1, r10
	adds r1, #0x03
	movs r2, #0x00
	str r2, [sp, #0x000]
	adds r2, r7, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r6, #0x00]
	mov r3, r8
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldrh r0, [r3, #0x02]
	strh r0, [r1, #0x02]
	ldr r1, [r6, #0x00]
	ldrb r0, [r1, #0x12]
	movs r4, #0x10
	orrs r0, r4
	strb r0, [r1, #0x12]
	mov r5, r8
	adds r5, #0x04
	str r7, [sp, #0x000]
	str r7, [sp, #0x004]
	str r7, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _08054A28 @ =0x00006005
	movs r2, #0x01
	adds r3, r7, #0x0
	bl sub_8020DD0
	str r0, [r6, #0x04]
	mov r1, r10
	adds r1, #0x04
	movs r2, #0x00
	str r2, [sp, #0x000]
	adds r2, r7, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x04]
	bl sprite_show_8020CBC
	ldr r1, [r6, #0x04]
	mov r3, r8
	ldrh r0, [r3, #0x04]
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x04]
	ldrh r0, [r5, #0x02]
	strh r0, [r1, #0x02]
	ldr r1, [r6, #0x04]
	ldrb r0, [r1, #0x12]
	orrs r0, r4
	strb r0, [r1, #0x12]
	adds r6, #0x08
	movs r0, #0x08
	add r8, r0
	movs r1, #0x02
	add r10, r1
	mov r2, r10
	cmp r2, #0x03
	ble _08054884
	ldr r0, _08054A2C @ =0x0819941C
	ldr r1, _08054A30 @ =0x08198784
	subs r0, r0, r1
	ldr r2, _08054A34 @ =0x081E274C
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_zero_8018DB4
	mov r3, r9
	str r0, [r3, #0x28]
	ldr r1, _08054A38 @ =0x0851F9E8
	bl sub_81994EC
	ldr r2, _08054A3C @ =0x081E2754
	movs r0, #0x14
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_Zero
	mov r1, r9
	str r0, [r1, #0x2C]
	ldr r0, _08054A40 @ =0x0000201F
	ldr r2, _08054A44 @ =0x081E275C
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	mov r2, r9
	str r1, [r2, #0x20]
	adds r1, #0x1F
	movs r0, #0x20
	negs r0, r0
	ands r1, r0
	str r1, [r2, #0x24]
	ldr r0, [r2, #0x2C]
	movs r3, #0x00
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r2, #0x02
	str r2, [sp, #0x00C]
	movs r2, #0x05
	str r2, [sp, #0x010]
	str r3, [sp, #0x014]
	movs r2, #0x10
	movs r3, #0x20
	bl sub_8199D78
	ldr r1, [sp, #0x028]
	ldrb r0, [r1, #0x00]
	ands r4, r0
	cmp r4, #0x00
	beq _080549C4
	mov r2, r9
	ldr r0, [r2, #0x2C]
	ldr r1, _08054A48 @ =0x084E8A3C
	ldr r3, [r1, #0x00]
	adds r3, #0x02
	movs r1, #0x00
	movs r2, #0x2B
	bl sub_8199D5C
_0805499A:
	mov r3, r9
	ldr r2, [r3, #0x2C]
	ldr r1, [r2, #0x08]
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	bne _080549B6
	ldrb r0, [r1, #0x01]
	cmp r0, #0x0B
	bne _080549B6
	ldrb r0, [r1, #0x02]
	cmp r0, #0x01
	bne _080549B6
	adds r0, r1, #0x3
	str r0, [r2, #0x08]
_080549B6:
	mov r1, r9
	ldr r0, [r1, #0x2C]
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0805499A
_080549C4:
	movs r7, #0x45
	ldr r0, _08054A4C @ =0x084F4740
	ldr r2, [sp, #0x024]
	adds r0, r2, r0
	ldr r6, [r0, #0x00]
_080549CE:
	mov r3, r9
	ldr r0, [r3, #0x2C]
	ldr r1, [r6, #0x0C]
	ldr r3, [r1, #0x00]
	adds r3, #0x02
	movs r1, #0x00
	adds r2, r7, #0x0
	bl sub_8199D5C
_080549E0:
	mov r1, r9
	ldr r0, [r1, #0x2C]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	bne _080549FE
	ldrb r0, [r2, #0x01]
	cmp r0, #0x0B
	bne _080549FE
	ldrb r0, [r2, #0x02]
	cmp r0, #0x01
	bne _080549FE
	adds r0, r2, #0x3
	str r0, [r3, #0x08]
_080549FE:
	adds r0, r3, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x00
	bne _080549E0
	ldrb r1, [r6, #0x0A]
	movs r5, #0x02
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08054A50
	adds r6, #0x10
	adds r0, r7, #0x0
	adds r0, #0x1A
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	b _080549CE
_08054A24: .4byte 0x083A2B38
_08054A28: .4byte 0x00006005
_08054A2C: .4byte 0x0819941C
_08054A30: .4byte 0x08198784
_08054A34: .4byte 0x081E274C
_08054A38: .4byte 0x0851F9E8
_08054A3C: .4byte 0x081E2754
_08054A40: .4byte 0x0000201F
_08054A44: .4byte 0x081E275C
_08054A48: .4byte 0x084E8A3C
_08054A4C: .4byte 0x084F4740
_08054A50:
	mov r2, r9
	ldr r0, [r2, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl sub_81DA698
	ldr r0, _08054ADC @ =0x03001034
	mov r3, r9
	ldr r1, [r3, #0x24]
	movs r2, #0xC0
	lsls r2, r2, #0x05
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	mov r1, r9
	ldr r0, [r1, #0x2C]
	ldr r1, [r1, #0x24]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r2, #0x0B
	str r2, [sp, #0x010]
	movs r2, #0x03
	str r2, [sp, #0x014]
	movs r2, #0x20
	movs r3, #0x20
	bl sub_8199D78
	ldr r2, [sp, #0x028]
	ldrb r0, [r2, #0x00]
	ands r4, r0
	cmp r4, #0x00
	beq _08054AFA
	mov r3, r9
	ldr r2, [r3, #0x40]
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r0, [r2, #0x04]
	bl sub_8123308
	adds r3, r0, #0x0
	mov r1, r9
	ldr r0, [r1, #0x2C]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8199D5C
_08054AC2:
	mov r2, r9
	ldr r0, [r2, #0x2C]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	bne _08054AEE
	ldrb r0, [r2, #0x01]
	cmp r0, #0x00
	bne _08054AE0
	adds r0, r2, #0x2
	b _08054AEC
	.byte 0x00, 0x00
_08054ADC: .4byte 0x03001034
_08054AE0:
	cmp r0, #0x0B
	bne _08054AEE
	ldrb r0, [r2, #0x02]
	cmp r0, #0x01
	bne _08054AEE
	adds r0, r2, #0x3
_08054AEC:
	str r0, [r3, #0x08]
_08054AEE:
	adds r0, r3, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08054AC2
_08054AFA:
	movs r4, #0x00
	b _08054B62
_08054AFE:
	ldr r1, _08054B44 @ =0x084F4740
	ldr r2, [sp, #0x02C]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r4, #0x04
	adds r0, r0, r1
	ldrh r0, [r0, #0x04]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x17
	bl sub_8123308
	adds r3, r0, #0x0
	mov r1, r9
	ldr r0, [r1, #0x2C]
	adds r4, #0x01
	lsls r2, r4, #0x1C
	lsrs r2, r2, #0x18
	movs r1, #0x00
	bl sub_8199D5C
_08054B2A:
	mov r2, r9
	ldr r0, [r2, #0x2C]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	bne _08054B56
	ldrb r0, [r2, #0x01]
	cmp r0, #0x00
	bne _08054B48
	adds r0, r2, #0x2
	b _08054B54
	.byte 0x00, 0x00
_08054B44: .4byte 0x084F4740
_08054B48:
	cmp r0, #0x0B
	bne _08054B56
	ldrb r0, [r2, #0x02]
	cmp r0, #0x01
	bne _08054B56
	adds r0, r2, #0x3
_08054B54:
	str r0, [r3, #0x08]
_08054B56:
	adds r0, r3, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08054B2A
_08054B62:
	ldr r3, [sp, #0x034]
	ldrb r3, [r3, #0x00]
	cmp r4, r3
	blt _08054AFE
	mov r1, r9
	ldr r0, [r1, #0x24]
	ldr r1, _08054D28 @ =0x06002000
	movs r2, #0xC0
	lsls r2, r2, #0x03
	bl sub_81DA698
	mov r2, r9
	ldr r5, [r2, #0x20]
	movs r4, #0xE0
	lsls r4, r4, #0x08
	ldr r0, _08054D2C @ =0x03001034
	movs r2, #0x80
	lsls r2, r2, #0x03
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r0, #0x00
_08054B92:
	adds r3, r0, #0x1
	movs r2, #0x0F
_08054B96:
	adds r1, r4, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strh r1, [r5, #0x00]
	adds r1, r4, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strh r1, [r5, #0x02]
	adds r1, r4, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strh r1, [r5, #0x04]
	adds r1, r4, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strh r1, [r5, #0x06]
	adds r1, r4, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strh r1, [r5, #0x08]
	adds r1, r4, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strh r1, [r5, #0x0A]
	adds r1, r4, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strh r1, [r5, #0x0C]
	adds r1, r4, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strh r1, [r5, #0x0E]
	adds r5, #0x10
	subs r2, #0x08
	cmp r2, #0x00
	bge _08054B96
	adds r5, #0x20
	adds r0, r3, #0x0
	cmp r0, #0x0F
	ble _08054B92
	mov r3, r9
	ldr r0, [r3, #0x20]
	ldr r1, _08054D30 @ =0x0600C000
	movs r2, #0x80
	lsls r2, r2, #0x01
	bl sub_81DA698
	mov r0, r9
	ldr r5, [r0, #0x20]
	movs r4, #0xE1
	lsls r4, r4, #0x08
	ldr r0, _08054D2C @ =0x03001034
	movs r2, #0xC0
	lsls r2, r2, #0x01
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r0, #0x00
	mov r1, r9
	ldr r1, [r1, #0x20]
	mov r8, r1
_08054C24:
	adds r7, r0, #0x1
	movs r6, #0x1F
_08054C28:
	adds r1, r4, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r4, #0x0
	strh r1, [r5, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r4, #0x0
	strh r2, [r5, #0x02]
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r4, #0x0
	strh r1, [r5, #0x04]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r4, #0x0
	strh r2, [r5, #0x06]
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r4, #0x0
	strh r1, [r5, #0x08]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, r4, #0x0
	strh r2, [r5, #0x0A]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r4, #0x0
	strh r3, [r5, #0x0C]
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strh r1, [r5, #0x0E]
	adds r5, #0x10
	subs r6, #0x08
	cmp r6, #0x00
	bge _08054C28
	adds r0, r7, #0x0
	cmp r0, #0x05
	ble _08054C24
	ldr r2, [sp, #0x030]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x07
	add r0, r8
	ldr r1, _08054D34 @ =0x0600C400
	movs r2, #0x20
	bl sub_81DA698
	ldr r1, _08054D38 @ =0x03000C78
	ldr r0, _08054D3C @ =0x0800063C
	str r0, [r1, #0x00]
	ldr r4, _08054D40 @ =0x0300034C
	ldr r3, _08054D44 @ =0x00000888
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	ldr r2, _08054D48 @ =0x083A2B18
	cmp r0, #0x00
	bne _08054CB2
	ldr r2, _08054D4C @ =0x083A2AF8
_08054CB2:
	ldr r1, _08054D50 @ =0x02000400
	adds r0, r2, #0x0
	movs r2, #0x08
	bl sub_81DA698
	ldr r0, _08054D54 @ =0x0000FFFF
	strh r0, [r4, #0x00]
	ldr r1, _08054D58 @ =0x02000080
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldrh r0, [r4, #0x02]
	movs r1, #0x01
	orrs r0, r1
	movs r2, #0x00
	strh r0, [r4, #0x02]
	ldr r1, _08054D5C @ =0x02000050
	movs r0, #0xFF
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x10
	strh r0, [r1, #0x00]
	subs r1, #0x48
	ldr r3, _08054D60 @ =0x00001802
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r3, _08054D64 @ =0x00001906
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x0C
	ldr r0, _08054D68 @ =0x02000018
	strh r2, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _08054D6C @ =0x0200001C
	strh r2, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r2, #0x01
	movs r0, #0x01
	movs r1, #0x1E
	bl sub_8019308
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r2, #0xE2
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	mov r0, r9
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08054D28: .4byte 0x06002000
_08054D2C: .4byte 0x03001034
_08054D30: .4byte 0x0600C000
_08054D34: .4byte 0x0600C400
_08054D38: .4byte 0x03000C78
_08054D3C: .4byte 0x0800063C
_08054D40: .4byte 0x0300034C
_08054D44: .4byte 0x00000888
_08054D48: .4byte 0x083A2B18
_08054D4C: .4byte 0x083A2AF8
_08054D50: .4byte 0x02000400
_08054D54: .4byte 0x0000FFFF
_08054D58: .4byte 0x02000080
_08054D5C: .4byte 0x02000050
_08054D60: .4byte 0x00001802
_08054D64: .4byte 0x00001906
_08054D68: .4byte 0x02000018
_08054D6C: .4byte 0x0200001C
	thumb_func_start sub_8054D70
sub_8054D70:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldrb r0, [r5, #0x00]
	cmp r0, #0x04
	bls _08054D86
	b _08055152
_08054D86:
	lsls r0, r0, #0x02
	ldr r1, _08054D90 @ =0x08054D94
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08054D90: .4byte 0x08054D94
	.byte 0xA8, 0x4D, 0x05, 0x08, 0xAE, 0x4D, 0x05, 0x08, 0xEC, 0x4D, 0x05, 0x08, 0x38, 0x4F, 0x05, 0x08
	.byte 0x0C, 0x50, 0x05, 0x08, 0x01, 0x20, 0x28, 0x70, 0xD1, 0xE1, 0xA9, 0x8B, 0x01, 0x39, 0xA9, 0x83
	.byte 0x0C, 0x4C, 0x22, 0x68, 0x54, 0x32, 0x1F, 0x20, 0x01, 0x40, 0x13, 0x78, 0x20, 0x20, 0x40, 0x42
	.byte 0x18, 0x40, 0x08, 0x43, 0x10, 0x70, 0x20, 0x68, 0x54, 0x30, 0x01, 0x78, 0x1F, 0x20, 0x08, 0x40
	.byte 0x00, 0x28, 0x00, 0xD0, 0xBB, 0xE1, 0x3C, 0x20, 0xA8, 0x83, 0x28, 0x78, 0x01, 0x30, 0x28, 0x70
	.byte 0xB5, 0xE1, 0x00, 0x00, 0x80, 0xEC, 0x39, 0x08, 0x0E, 0x4A, 0x51, 0x8D, 0x01, 0x20, 0x08, 0x40
	.byte 0x00, 0x28, 0x19, 0xD0, 0x10, 0x20, 0xA8, 0x83, 0x01, 0x20, 0x00, 0x21, 0x20, 0x22, 0xC4, 0xF7
	.byte 0xD7, 0xFA, 0x01, 0x21, 0x49, 0x42, 0x0A, 0x20, 0xC4, 0xF7, 0xD2, 0xFB, 0x28, 0x1C, 0x36, 0x30
	.byte 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x04, 0x21, 0x00, 0x28, 0x00, 0xD1, 0x03, 0x21, 0x29, 0x70
	.byte 0x95, 0xE1, 0x00, 0x00, 0x4C, 0x03, 0x00, 0x03, 0x29, 0x1C, 0x36, 0x31, 0x00, 0x20, 0x08, 0x56
	.byte 0x82, 0x46, 0xD2, 0x8D, 0x40, 0x20, 0x10, 0x40, 0x0F, 0x1C, 0x00, 0x28, 0x12, 0xD0, 0x38, 0x78
	.byte 0x01, 0x38, 0x38, 0x70, 0x00, 0x06, 0x00, 0x16, 0x01, 0x31, 0x09, 0x78, 0x88, 0x42, 0x03, 0xDA
	.byte 0x28, 0x1C, 0x38, 0x30, 0x00, 0x78, 0x38, 0x70, 0x01, 0x21, 0x49, 0x42, 0x5F, 0x20, 0xC4, 0xF7
	.byte 0xA7, 0xFB, 0x16, 0xE0, 0x80, 0x20, 0x10, 0x40, 0x00, 0x28, 0x12, 0xD0, 0x38, 0x78, 0x01, 0x30
	.byte 0x38, 0x70, 0x00, 0x06, 0x00, 0x16, 0x29, 0x1C, 0x38, 0x31, 0x09, 0x78, 0x88, 0x42, 0x03, 0xDD
	.byte 0x28, 0x1C, 0x37, 0x30, 0x00, 0x78, 0x38, 0x70, 0x01, 0x21, 0x49, 0x42, 0x5F, 0x20, 0xC4, 0xF7
	.byte 0x8F, 0xFB, 0x34, 0x21, 0x49, 0x19, 0x88, 0x46, 0x0B, 0x78, 0x5E, 0x08, 0x01, 0x22, 0x16, 0x40
	.byte 0xB9, 0x46, 0x48, 0x46, 0x00, 0x21, 0x41, 0x56, 0x48, 0x42, 0x08, 0x43, 0xC0, 0x0F, 0x10, 0x40
	.byte 0x40, 0x00, 0x03, 0x21, 0x49, 0x42, 0x19, 0x40, 0x01, 0x43, 0x40, 0x46, 0x01, 0x70, 0x89, 0x07
	.byte 0xC8, 0x0F, 0xB0, 0x42, 0x1C, 0xD0, 0xC0, 0x00, 0x2C, 0x1C, 0x48, 0x34, 0x20, 0x18, 0x00, 0x68
	.byte 0xCB, 0xF7, 0xF2, 0xFE, 0x40, 0x46, 0x01, 0x78, 0x02, 0x20, 0x08, 0x40, 0x01, 0x30, 0x80, 0x00
	.byte 0x20, 0x18, 0x00, 0x68, 0xCB, 0xF7, 0xE8, 0xFE, 0xF0, 0x00, 0x20, 0x18, 0x00, 0x68, 0xCD, 0xF7
	.byte 0x15, 0xF8, 0x70, 0x00, 0x01, 0x30, 0x80, 0x00, 0x24, 0x18, 0x20, 0x68, 0xCD, 0xF7, 0x0E, 0xF8
	.byte 0x48, 0x46, 0x00, 0x21, 0x41, 0x56, 0x8A, 0x45, 0x09, 0xD0, 0xC9, 0x01, 0x28, 0x6A, 0x40, 0x18
	.byte 0x07, 0x49, 0x00, 0x22, 0x00, 0x92, 0x80, 0x22, 0x20, 0x23, 0xC3, 0xF7, 0x7B, 0xF9, 0x6A, 0x6C
	.byte 0x00, 0x21, 0x79, 0x56, 0x1A, 0x20, 0x48, 0x43, 0x31, 0x30, 0x50, 0x80, 0x0F, 0xE1, 0x00, 0x00
	.byte 0x00, 0xC4, 0x00, 0x06, 0xA8, 0x8B, 0x43, 0x1E, 0xAB, 0x83, 0x18, 0x04, 0x00, 0x28, 0x00, 0xD0
	.byte 0xF8, 0xE0, 0x01, 0x20, 0xC4, 0xF7, 0x6E, 0xFB, 0x00, 0x2D, 0x1A, 0xD0, 0x28, 0x48, 0xA8, 0x61
	.byte 0x28, 0x6B, 0x00, 0x28, 0x02, 0xD0, 0x03, 0x21, 0xC4, 0xF7, 0x6E, 0xFE, 0x28, 0x6A, 0x00, 0x28
	.byte 0x01, 0xD0, 0xC3, 0xF7, 0x19, 0xFF, 0xA8, 0x6A, 0x00, 0x28, 0x01, 0xD0, 0xC3, 0xF7, 0x14, 0xFF
	.byte 0xE8, 0x6A, 0xC3, 0xF7, 0x17, 0xFF, 0xCD, 0xF7, 0x2B, 0xF8, 0x28, 0x1C, 0x03, 0x21, 0xC4, 0xF7
	.byte 0x5B, 0xFE, 0x68, 0x69, 0x00, 0x28, 0x02, 0xD0, 0x03, 0x21, 0xCD, 0xF7, 0xE1, 0xFA, 0xCE, 0xF0
	.byte 0xD5, 0xF9, 0x18, 0x48, 0x01, 0x68, 0x50, 0x31, 0x0A, 0x78, 0x3F, 0x20, 0x10, 0x40, 0x08, 0x70
	.byte 0x15, 0x4C, 0x20, 0x78, 0x02, 0x21, 0x08, 0x43, 0x20, 0x70, 0x14, 0x4B, 0x14, 0x48, 0x01, 0x68
	.byte 0xAE, 0x22, 0xD2, 0x00, 0x1B, 0x68, 0x00, 0x20, 0x85, 0xF1, 0x5A, 0xFD, 0xA7, 0xF0, 0xEA, 0xF8
	.byte 0xCE, 0xF0, 0xCA, 0xF9, 0x0F, 0x48, 0x02, 0x68, 0x21, 0x68, 0x09, 0x07, 0x89, 0x0F, 0xC8, 0x00
	.byte 0x40, 0x1A, 0x40, 0x01, 0x40, 0x1A, 0xC0, 0x00, 0xE0, 0x21, 0xC9, 0x00, 0x52, 0x18, 0x12, 0x18
	.byte 0x10, 0x68, 0xC3, 0xF7, 0x31, 0xFD, 0x01, 0x20, 0xC5, 0xF7, 0xB6, 0xFF, 0xB1, 0xE0, 0x00, 0x00
	.byte 0x18, 0xC2, 0xCD, 0x08, 0x80, 0xEC, 0x39, 0x08, 0x40, 0x0D, 0x00, 0x03, 0x34, 0x10, 0x00, 0x03
	.byte 0xC0, 0x0F, 0x00, 0x03, 0xFC, 0x0F, 0x00, 0x03, 0xA8, 0x8B, 0x43, 0x1E, 0xAB, 0x83, 0x18, 0x04
	.byte 0x00, 0x28, 0x00, 0xD0, 0x8E, 0xE0, 0x42, 0x48, 0x29, 0x1C, 0x35, 0x31, 0x09, 0x78, 0x89, 0x00
	.byte 0x09, 0x18, 0x28, 0x1C, 0x36, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x00, 0x01, 0x10, 0x38
	.byte 0x09, 0x68, 0x0E, 0x18, 0x6C, 0x69, 0x01, 0x20, 0xC4, 0xF7, 0xF4, 0xFA, 0x00, 0x2D, 0x1A, 0xD0
	.byte 0x38, 0x48, 0xA8, 0x61, 0x28, 0x6B, 0x00, 0x28, 0x02, 0xD0, 0x03, 0x21, 0xC4, 0xF7, 0xF4, 0xFD
	.byte 0x28, 0x6A, 0x00, 0x28, 0x01, 0xD0, 0xC3, 0xF7, 0x9F, 0xFE, 0xA8, 0x6A, 0x00, 0x28, 0x01, 0xD0
	.byte 0xC3, 0xF7, 0x9A, 0xFE, 0xE8, 0x6A, 0xC3, 0xF7, 0x9D, 0xFE, 0xCC, 0xF7, 0xB1, 0xFF, 0x28, 0x1C
	.byte 0x03, 0x21, 0xC4, 0xF7, 0xE1, 0xFD, 0x20, 0x1C, 0xC4, 0xF7, 0xCE, 0xFD, 0x20, 0x1C, 0xE4, 0x30
	.byte 0x06, 0x60, 0x94, 0x20, 0x40, 0x00, 0x21, 0x18, 0x00, 0x20, 0x08, 0x80, 0xAA, 0x21, 0x89, 0x00
	.byte 0x62, 0x18, 0x11, 0x78, 0x41, 0x38, 0x08, 0x40, 0x10, 0x70, 0x22, 0x1C, 0xF9, 0x32, 0x11, 0x78
	.byte 0x7F, 0x20, 0x08, 0x40, 0x10, 0x70, 0x20, 0x6A, 0x01, 0x78, 0x01, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x02, 0xD0, 0x20, 0x1C, 0xD0, 0xF7, 0x64, 0xFA, 0x82, 0x21, 0x89, 0x00, 0x60, 0x18, 0x01, 0x78
	.byte 0x90, 0x20, 0x08, 0x40, 0x80, 0x28, 0x03, 0xD1, 0x20, 0x1C, 0x01, 0x21, 0xD9, 0xF7, 0xFA, 0xF9
	.byte 0x20, 0x1C, 0x00, 0x21, 0x00, 0x22, 0xD4, 0xF7, 0x97, 0xFC, 0x20, 0x1C, 0xD2, 0xF7, 0x40, 0xFE
	.byte 0x22, 0x1C, 0xF8, 0x32, 0x10, 0x78, 0x04, 0x21, 0x08, 0x43, 0x10, 0x70, 0x0E, 0x49, 0x0F, 0x48
	.byte 0x09, 0x18, 0x08, 0x78, 0x01, 0x22, 0x10, 0x43, 0x08, 0x70, 0x0D, 0x48, 0x02, 0x68, 0x50, 0x8A
	.byte 0xD0, 0x81, 0x10, 0x8B, 0x90, 0x82, 0x10, 0x1C, 0x4E, 0x30, 0x00, 0x88, 0x11, 0x1C, 0x4A, 0x31
	.byte 0x08, 0x80, 0x10, 0x1C, 0x54, 0x30, 0x01, 0x88, 0x04, 0x38, 0x01, 0x80, 0x19, 0xE0, 0x00, 0x00
	.byte 0x40, 0x47, 0x4F, 0x08, 0x18, 0xC2, 0xCD, 0x08, 0x4C, 0x03, 0x00, 0x03, 0x89, 0x08, 0x00, 0x00
	.byte 0xF4, 0x0F, 0x00, 0x03, 0x0B, 0x48, 0x02, 0x68, 0x10, 0x21, 0xC9, 0x1A, 0x54, 0x32, 0x1F, 0x20
	.byte 0x01, 0x40, 0x13, 0x78, 0x20, 0x20, 0x40, 0x42, 0x18, 0x40, 0x08, 0x43, 0x10, 0x70
_08055152:
	bl sub_8021F7C
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x80, 0xEC, 0x39, 0x08
	thumb_func_start sub_805516C
sub_805516C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, [r0, #0x14]
	ldr r2, _080551C0 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r2, r1
	ldr r7, [r0, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x07
	adds r1, r4, #0x0
	strh r1, [r7, #0x00]
	ldr r4, _080551C4 @ =0x00008080
	adds r0, r4, #0x0
	strh r0, [r7, #0x02]
	movs r4, #0xC0
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	strh r0, [r7, #0x04]
	adds r7, #0x08
	strh r1, [r7, #0x00]
	ldr r1, _080551C8 @ =0x000080A0
	adds r0, r1, #0x0
	strh r0, [r7, #0x02]
	adds r4, #0x08
	adds r0, r4, #0x0
	strh r0, [r7, #0x04]
	adds r7, #0x08
	adds r0, r3, #0x0
	adds r0, #0x34
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	bne _080551CC
	ldr r0, [r3, #0x40]
	adds r0, #0x1C
	b _080551D0
_080551C0: .4byte 0x0300034C
_080551C4: .4byte 0x00008080
_080551C8: .4byte 0x000080A0
_080551CC:
	ldr r0, _080551EC @ =0x03000FF4
	ldr r0, [r0, #0x00]
_080551D0:
	mov r9, r0
	adds r2, r3, #0x0
	adds r2, #0x34
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080551F4
	ldr r0, [r3, #0x40]
	ldr r1, _080551F0 @ =0x000006EC
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	b _080551F6
	.byte 0x00, 0x00
_080551EC: .4byte 0x03000FF4
_080551F0: .4byte 0x000006EC
_080551F4:
	ldr r6, [r4, #0x24]
_080551F6:
	movs r4, #0x39
	adds r4, r4, r3
	mov r10, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0805520A
	adds r3, #0x3B
	mov r10, r3
_0805520A:
	mov r0, r9
	adds r0, #0x30
	ldrb r1, [r0, #0x00]
	adds r0, #0x3C
	ldrb r2, [r0, #0x00]
	adds r0, r7, #0x0
	movs r3, #0x00
	bl sub_8122198
	adds r7, r0, #0x0
	ldr r5, _080552B8 @ =0x03001038
	ldr r4, _080552BC @ =0x0819832C
	ldr r0, _080552C0 @ =0x08198220
	mov r8, r0
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r1, #0xE1
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r1, #0x3C
	bl _call_via_r2
	adds r4, r0, #0x0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080552C4 @ =0x08198350
	mov r1, r8
	subs r0, r0, r1
	ldr r2, [r5, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	movs r1, #0x3C
	bl _call_via_r2
	adds r2, r0, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r0, r9
	adds r0, #0x88
	ldrh r3, [r0, #0x00]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_8121F1C
	adds r7, r0, #0x0
	bl sub_8020A78
	ldr r2, _080552C8 @ =0x03000D48
	ldr r4, _080552CC @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _080552D0 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _080552D4 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r7, #0x0
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r4, r10
	ldrb r1, [r4, #0x00]
	ldrb r2, [r4, #0x01]
	bl sub_8122098
	adds r7, r0, #0x0
	ldr r0, _080552D8 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r7, [r0, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080552B8: .4byte 0x03001038
_080552BC: .4byte 0x0819832C
_080552C0: .4byte 0x08198220
_080552C4: .4byte 0x08198350
_080552C8: .4byte 0x03000D48
_080552CC: .4byte 0x0203FFB8
_080552D0: .4byte 0x00000A14
_080552D4: .4byte 0x03000D4C
_080552D8: .4byte 0x0300034C
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x0F, 0x48, 0xA0, 0x61, 0x20, 0x6B, 0x00, 0x28, 0x02, 0xD0
	.byte 0x03, 0x21, 0xC4, 0xF7, 0xA5, 0xFC, 0x20, 0x6A, 0x00, 0x28, 0x01, 0xD0, 0xC3, 0xF7, 0x50, 0xFD
	.byte 0xA0, 0x6A, 0x00, 0x28, 0x01, 0xD0, 0xC3, 0xF7, 0x4B, 0xFD, 0xE0, 0x6A, 0xC3, 0xF7, 0x4E, 0xFD
	.byte 0xCC, 0xF7, 0x62, 0xFE, 0x20, 0x1C, 0x29, 0x1C, 0xC4, 0xF7, 0x92, 0xFC, 0x30, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x18, 0xC2, 0xCD, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x09, 0x06, 0x09, 0x0E
	.byte 0xC4, 0xF7, 0x3C, 0xFB, 0x02, 0x48, 0xA0, 0x61, 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x28, 0xC2, 0xCD, 0x08