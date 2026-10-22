	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81254FC
sub_81254FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	adds r7, r0, #0x0
	ldrb r0, [r7, #0x00]
	cmp r0, #0x14
	bls _08125514
	bl _08126504
_08125514:
	lsls r0, r0, #0x02
	ldr r1, _08125520 @ =0x08125524
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08125520: .4byte _08125524
_08125524: @ jump table
	.4byte _08125578 @ case 0
	.4byte _081255D4 @ case 1
	.4byte _08125630 @ case 2
	.4byte _0812566C @ case 3
	.4byte _081256A0 @ case 4
	.4byte _08125A1A @ case 5
	.4byte _081256BC @ case 6
	.4byte _08126504 @ case 7
	.4byte _081257A8 @ case 8
	.4byte _0812592C @ case 9
	.4byte _08125AB4 @ case 10
	.4byte _08125AD4 @ case 11
	.4byte _08125AEC @ case 12
	.4byte _08125B00 @ case 13
	.4byte _08125B78 @ case 14
	.4byte _081262AC @ case 15
	.4byte _08126504 @ case 16
	.4byte _08126504 @ case 17
	.4byte _08126504 @ case 18
	.4byte _08126354 @ case 19
	.4byte _0812637A @ case 20
_08125578:
	ldr r0, _081255CC @ =0x03000FFC
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x48]
	adds r0, r7, #0x0
	adds r0, #0xF9
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	subs r0, #0x11
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x06
	strb r2, [r0, #0x00]
	subs r0, #0x04
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strb r2, [r0, #0x00]
	adds r0, #0x04
	strb r2, [r0, #0x00]
	ldr r0, [r7, #0x48]
	ldrb r0, [r0, #0x06]
	adds r1, r7, #0x0
	adds r1, #0xF1
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_812791C
	movs r0, #0x80
	lsls r0, r0, #0x04
	ldr r2, _081255D0 @ =0x08210F24
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r7, #0x54]
	movs r0, #0x01
	strb r0, [r7, #0x00]
	bl _08126504
_081255CC:
	lsrs r4, r7, #0x1F
	lsls r0, r0, #0x0C
_081255D0:
	lsrs r4, r4, #0x1C
	lsrs r1, r4, #0x20
_081255D4:
	ldr r0, _0812561C @ =0x03000C78
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _08125620 @ =0x0300034C
	ldr r2, _08125624 @ =0x00000884
	adds r0, r0, r2
	str r1, [r0, #0x00]
	movs r0, #0x06
	bl sub_8127ECC
	adds r4, r7, #0x0
	adds r4, #0xC8
	str r0, [r4, #0x00]
	bl sub_80198B0
	adds r1, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xD0
	str r1, [r0, #0x00]
	ldr r2, _08125628 @ =0x08210F2C
	movs r0, #0x01
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xCC
	str r1, [r0, #0x00]
	ldr r2, _0812562C @ =0x03000C84
	ldr r0, [r4, #0x00]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	movs r0, #0x02
	strb r0, [r7, #0x00]
	bl _08126504
_0812561C:
	lsrs r0, r7, #0x11
	lsls r0, r0, #0x0C
_08125620:
	lsls r4, r1, #0x0D
	lsls r0, r0, #0x0C
_08125624:
	lsrs r4, r0, #0x02
	lsls r0, r0, #0x00
_08125628:
	lsrs r4, r5, #0x1C
	lsrs r1, r4, #0x20
_0812562C:
	lsrs r4, r0, #0x12
	lsls r0, r0, #0x0C
_08125630:
	adds r4, r7, #0x0
	adds r4, #0xCC
	ldr r0, [r4, #0x00]
	bl sub_81229F0
	ldr r1, [r4, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08125648
	adds r0, #0x03
_08125648:
	lsls r2, r0, #0x09
	lsrs r2, r2, #0x0B
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r1, #0x0
	ldr r1, _08125668 @ =0x06010400
	bl CpuSet
	ldr r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x03
	strb r0, [r7, #0x00]
	bl _08126504
_08125668:
	lsls r0, r0, #0x10
	lsls r1, r0, #0x18
_0812566C:
	adds r0, r7, #0x0
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x03
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8020994
	ldr r1, _0812569C @ =0x00006005
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x05
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x04
	strb r0, [r7, #0x00]
	bl _08126504
_0812569C:
	str r5, [r0, #0x00]
	lsls r0, r0, #0x00
_081256A0:
	adds r0, r7, #0x0
	bl sub_8126C3C
	adds r0, r7, #0x0
	adds r0, #0xF2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081256B4
	bl _08126504
_081256B4:
	movs r0, #0x06
	strb r0, [r7, #0x00]
	bl _08126504
_081256BC:
	adds r6, r7, #0x0
	adds r6, #0xD8
	movs r1, #0x00
	strh r1, [r6, #0x00]
	ldr r0, _08125780 @ =0x02000012
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x04
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldr r2, _08125784 @ =0x02000018
	adds r0, #0x04
	strh r1, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	ldr r0, _08125788 @ =0x0200001E
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r1, [r0, #0x00]
	movs r0, #0x25
	bl sub_8127ECC
	adds r5, r7, #0x0
	adds r5, #0xC8
	str r0, [r5, #0x00]
	ldr r0, _0812578C @ =0x03001034
	ldrh r1, [r6, #0x00]
	movs r4, #0xC0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	movs r2, #0x80
	lsls r2, r2, #0x08
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r0, [r5, #0x00]
	ldrh r1, [r6, #0x00]
	adds r1, r1, r4
	movs r2, #0x00
	bl sub_8127E50
	adds r4, r7, #0x0
	adds r4, #0xD4
	str r0, [r4, #0x00]
	ldr r0, _08125790 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r0, #0x26
	movs r1, #0x00
	bl sub_8127ECC
	str r0, [r5, #0x00]
	ldrh r1, [r6, #0x00]
	ldr r2, _08125794 @ =0x06001400
	adds r1, r1, r2
	movs r2, #0x00
	bl sub_8127E50
	ldr r1, [r4, #0x00]
	ldrh r0, [r6, #0x00]
	adds r0, r0, r1
	strh r0, [r6, #0x00]
	ldr r3, _08125798 @ =0x03001038
	mov r8, r3
	ldr r0, _0812579C @ =0x08198350
	ldr r4, _081257A0 @ =0x08198220
	subs r0, r0, r4
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	ldrh r0, [r6, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r1, r5, #0x0
	bl _call_via_r2
	cmp r0, #0x00
	beq _08125778
	ldr r0, _081257A4 @ =0x0819832C
	subs r0, r0, r4
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r0
	ldrh r0, [r6, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	lsls r0, r0, #0x0B
	adds r0, r0, r5
	strh r0, [r6, #0x00]
_08125778:
	movs r0, #0x08
	strb r0, [r7, #0x00]
	bl _08126504
_08125780:
	lsls r2, r2, #0x00
	lsls r0, r0, #0x08
_08125784:
	lsls r0, r3, #0x00
	lsls r0, r0, #0x08
_08125788:
	lsls r6, r3, #0x00
	lsls r0, r0, #0x08
_0812578C:
	asrs r4, r6, #0x20
	lsls r0, r0, #0x0C
_08125790:
	lsls r4, r1, #0x0D
	lsls r0, r0, #0x0C
_08125794:
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
_08125798:
	asrs r0, r7, #0x20
	lsls r0, r0, #0x0C
_0812579C:
	strh r0, [r2, #0x1A]
	lsrs r1, r3, #0x20
_081257A0:
	strh r0, [r4, #0x10]
	lsrs r1, r3, #0x20
_081257A4:
	strh r4, [r5, #0x18]
	lsrs r1, r3, #0x20
_081257A8:
	movs r0, #0x2F
	movs r1, #0x00
	bl sub_8127ECC
	adds r6, r7, #0x0
	adds r6, #0xC8
	str r0, [r6, #0x00]
	adds r4, r7, #0x0
	adds r4, #0xD8
	ldrh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xDA
	strh r0, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x13
	mov r8, r2
	add r1, r8
	movs r5, #0x80
	lsls r5, r5, #0x04
	ldr r0, _08125918 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r0, [r6, #0x00]
	ldrh r1, [r4, #0x00]
	add r1, r8
	movs r2, #0x00
	bl sub_8127E50
	movs r1, #0xD4
	adds r1, r1, r7
	mov r10, r1
	str r0, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r4, #0x00]
	ldr r0, _0812591C @ =0x08198350
	ldr r2, _08125920 @ =0x08198220
	subs r2, r0, r2
	mov r9, r2
	ldr r3, _08125924 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r9
	ldrh r0, [r4, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	cmp r0, #0x00
	beq _0812582A
	ldr r0, _08125928 @ =0x0819832C
	ldr r1, _08125920 @ =0x08198220
	subs r0, r0, r1
	ldr r3, _08125924 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	ldrh r0, [r4, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	lsls r0, r0, #0x0B
	adds r0, r0, r5
	strh r0, [r4, #0x00]
_0812582A:
	movs r0, #0x2E
	movs r1, #0x00
	bl sub_8127ECC
	str r0, [r6, #0x00]
	ldrh r1, [r4, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xDC
	strh r1, [r0, #0x00]
	ldrh r1, [r4, #0x00]
	add r1, r8
	ldr r0, _08125918 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r0, [r6, #0x00]
	ldrh r1, [r4, #0x00]
	add r1, r8
	movs r2, #0x00
	bl sub_8127E50
	mov r1, r10
	str r0, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r4, #0x00]
	ldr r3, _08125924 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r9
	ldrh r0, [r4, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	cmp r0, #0x00
	beq _0812588E
	ldr r0, _08125928 @ =0x0819832C
	ldr r1, _08125920 @ =0x08198220
	subs r0, r0, r1
	ldr r3, _08125924 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	ldrh r0, [r4, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	lsls r0, r0, #0x0B
	adds r0, r0, r5
	strh r0, [r4, #0x00]
_0812588E:
	movs r0, #0x2E
	movs r1, #0x00
	bl sub_8127ECC
	str r0, [r6, #0x00]
	ldrh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xDE
	str r1, [sp, #0x01C]
	strh r0, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	add r1, r8
	ldr r2, _08125918 @ =0x03001034
	ldr r3, [r2, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r0, [r6, #0x00]
	ldrh r1, [r4, #0x00]
	add r1, r8
	movs r2, #0x00
	bl sub_8127E50
	mov r3, r10
	str r0, [r3, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r4, #0x00]
	ldr r0, _08125924 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r9
	ldrh r0, [r4, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	cmp r0, #0x00
	beq _081258F4
	ldr r0, _08125928 @ =0x0819832C
	ldr r1, _08125920 @ =0x08198220
	subs r0, r0, r1
	ldr r3, _08125924 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	ldrh r0, [r4, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	lsls r0, r0, #0x0B
	adds r0, r0, r5
	strh r0, [r4, #0x00]
_081258F4:
	ldr r1, [sp, #0x01C]
	ldrh r0, [r1, #0x00]
	add r0, r8
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r2, #0x00
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r1, #0xA8
	movs r2, #0x40
	movs r3, #0x05
	bl sub_8127DB4
	movs r0, #0x09
	strb r0, [r7, #0x00]
	bl _08126504
	lsls r0, r0, #0x00
_08125918:
	asrs r4, r6, #0x20
	lsls r0, r0, #0x0C
_0812591C:
	strh r0, [r2, #0x1A]
	lsrs r1, r3, #0x20
_08125920:
	strh r0, [r4, #0x10]
	lsrs r1, r3, #0x20
_08125924:
	asrs r0, r7, #0x20
	lsls r0, r0, #0x0C
_08125928:
	strh r4, [r5, #0x18]
	lsrs r1, r3, #0x20
_0812592C:
	ldr r0, _08125944 @ =0x0300034C
	ldr r3, _08125948 @ =0x00000888
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _0812594C
	adds r4, r7, #0x0
	adds r4, #0xD4
	movs r0, #0x2B
	b _08125952
_08125944:
	lsls r4, r1, #0x0D
	lsls r0, r0, #0x0C
_08125948:
	lsrs r0, r1, #0x02
	lsls r0, r0, #0x00
_0812594C:
	adds r4, r7, #0x0
	adds r4, #0xD4
	movs r0, #0x2C
_08125952:
	adds r1, r4, #0x0
	bl sub_8127ECC
	adds r1, r7, #0x0
	adds r1, #0xC8
	str r0, [r1, #0x00]
	ldr r1, [r1, #0x00]
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	bge _08125968
	adds r2, #0x03
_08125968:
	lsls r2, r2, #0x09
	lsrs r2, r2, #0x0B
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r1, #0x0
	ldr r1, _081259C8 @ =0x02000080
	bl CpuSet
	ldr r1, _081259CC @ =0x0300034C
	ldr r0, _081259D0 @ =0x0000FFFF
	strh r0, [r1, #0x02]
	ldr r1, _081259D4 @ =0x02000008
	ldr r2, _081259D8 @ =0x00001A08
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x06
	adds r0, r7, #0x0
	adds r0, #0xDA
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r3, #0x02
	orrs r0, r3
	strh r0, [r1, #0x00]
	ldr r5, _081259DC @ =0x0200000C
	adds r0, r7, #0x0
	adds r0, #0xDC
	ldrh r0, [r0, #0x00]
	movs r4, #0x1F
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	orrs r0, r3
	strh r0, [r5, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xF1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081259E0
	adds r1, r7, #0x0
	adds r1, #0xE6
	movs r0, #0xEA
	lsls r0, r0, #0x05
	b _08125A10
	.byte 0x00, 0x00
_081259C8: .4byte 0x02000080
_081259CC: .4byte 0x0300034C
_081259D0: .4byte 0x0000FFFF
_081259D4: .4byte 0x02000008
_081259D8: .4byte 0x00001A08
_081259DC: .4byte 0x0200000C
_081259E0:
	adds r0, r7, #0x0
	adds r0, #0xF3
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08125A08
	adds r0, r7, #0x0
	adds r0, #0xDE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	ands r0, r4
	lsls r0, r0, #0x08
	orrs r0, r3
	strh r0, [r5, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xE6
	movs r0, #0xEA
	lsls r0, r0, #0x05
	b _08125A10
_08125A08:
	adds r1, r7, #0x0
	adds r1, #0xE6
	movs r0, #0xCA
	lsls r0, r0, #0x05
_08125A10:
	strh r0, [r1, #0x00]
	movs r0, #0x05
	strb r0, [r7, #0x00]
	bl _08126504
_08125A1A:
	movs r3, #0xF2
	adds r3, r3, r7
	mov r8, r3
	ldrb r0, [r3, #0x00]
	cmp r0, #0x00
	bne _08125A34
	bl sub_80E8DE4
	movs r0, #0x01
	mov r1, r8
	strb r0, [r1, #0x00]
	bl _08126504
_08125A34:
	movs r2, #0xB0
	lsls r2, r2, #0x01
	adds r5, r7, r2
	ldr r4, _08125AA8 @ =0x08210F34
	movs r0, #0x2C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x07
	adds r2, r4, #0x0
	bl sub_80FB080
	str r0, [r5, #0x00]
	str r7, [r0, #0x14]
	ldr r0, _08125AAC @ =0x03001034
	ldr r6, _08125AB0 @ =0x06008000
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, [r5, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x07
	str r1, [sp, #0x000]
	ldr r1, [r7, #0x54]
	str r1, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	movs r1, #0xE0
	lsls r1, r1, #0x07
	str r1, [sp, #0x00C]
	movs r1, #0x0F
	str r1, [sp, #0x010]
	movs r1, #0x01
	str r1, [sp, #0x014]
	movs r1, #0x00
	movs r2, #0x0F
	adds r3, r6, #0x0
	bl sub_80F92DC
	str r0, [r7, #0x60]
	adds r1, r7, #0x0
	adds r1, #0xEE
	movs r0, #0x03
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_8127238
	mov r3, r8
	strb r4, [r3, #0x00]
	movs r0, #0x0A
	strb r0, [r7, #0x00]
	bl _08126504
_08125AA8:
	lsrs r4, r6, #0x1C
	lsrs r1, r4, #0x20
_08125AAC:
	asrs r4, r6, #0x20
	lsls r0, r0, #0x0C
_08125AB0:
	strh r0, [r0, #0x00]
	lsls r0, r0, #0x18
_08125AB4:
	ldr r0, _08125AD0 @ =0x03000C80
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08125AC0
	bl _08126504
_08125AC0:
	movs r0, #0x0B
	strb r0, [r7, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xEE
	movs r0, #0x01
	strb r0, [r1, #0x00]
	bl _08126504
_08125AD0:
	lsrs r0, r0, #0x12
	lsls r0, r0, #0x0C
_08125AD4:
	adds r0, r7, #0x0
	adds r0, #0xEF
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _08125AE4
	adds r0, r7, #0x0
	bl sub_8127B20
_08125AE4:
	movs r0, #0x0C
	strb r0, [r7, #0x00]
	bl _08126504
_08125AEC:
	adds r0, r7, #0x0
	bl sub_8127AB0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08125AFC
	bl _08126504
_08125AFC:
	bl _0812634E
_08125B00:
	adds r5, r7, #0x0
	adds r5, #0xF0
	ldrb r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08125B48
	adds r4, r7, #0x0
	adds r4, #0xEC
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08125B22
	ldr r0, _08125B60 @ =0x0300034C
	ldr r1, _08125B64 @ =0x0000088C
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
_08125B22:
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x14
	bls _08125B48
	adds r0, r7, #0x0
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xF5
	movs r2, #0xFF
	bl sub_8125220
	movs r0, #0x00
	strb r0, [r5, #0x00]
	movs r0, #0x00
	strh r0, [r4, #0x00]
_08125B48:
	adds r0, r7, #0x0
	bl sub_8126520
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08125B68
	movs r0, #0x0E
	strb r0, [r7, #0x00]
	bl _08126504
	lsls r0, r0, #0x00
_08125B60:
	lsls r4, r1, #0x0D
	lsls r0, r0, #0x0C
_08125B64:
	lsrs r4, r1, #0x02
	lsls r0, r0, #0x00
_08125B68:
	cmp r0, #0x02
	beq _08125B70
	bl _08126504
_08125B70:
	movs r0, #0x13
	strb r0, [r7, #0x00]
	bl _08126504
_08125B78:
	adds r0, r7, #0x0
	adds r0, #0xEC
	ldrh r1, [r0, #0x00]
	ldr r5, _08125CB0 @ =0x0000FFFF
	str r0, [sp, #0x020]
	cmp r1, r5
	beq _08125B88
	b _081261C4
_08125B88:
	adds r4, r7, #0x0
	adds r4, #0xE8
	ldrh r0, [r4, #0x00]
	movs r1, #0x08
	bl sub_8123DC4
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _08125BA0
	b _08125CC0
_08125BA0:
	adds r0, r7, #0x0
	adds r0, #0xF0
	ldrb r1, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xF9
	str r2, [sp, #0x030]
	adds r3, r7, #0x0
	adds r3, #0xFA
	str r3, [sp, #0x034]
	adds r2, #0x02
	str r2, [sp, #0x038]
	str r0, [sp, #0x028]
	subs r3, #0x0C
	str r3, [sp, #0x024]
	adds r0, #0x01
	str r0, [sp, #0x02C]
	movs r2, #0xE6
	adds r2, r2, r7
	mov r9, r2
	cmp r1, #0x03
	bne _08125BF2
	adds r5, r7, #0x0
	adds r5, #0x20
	ldr r3, [sp, #0x034]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x03
	adds r0, r5, r0
	ldr r0, [r0, #0x00]
	bl sub_8021308
	ldr r1, [sp, #0x034]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x02
	adds r0, r5, r0
	ldr r0, [r0, #0x00]
	bl sub_8021308
_08125BF2:
	ldr r2, [sp, #0x028]
	ldrb r0, [r2, #0x00]
	cmp r0, #0x02
	bne _08125C36
	ldr r4, _08125CB4 @ =0x03000D40
	ldr r3, [sp, #0x038]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	subs r0, #0x01
	movs r1, #0xAA
	lsls r1, r1, #0x01
	adds r3, r7, r1
	adds r0, r3, r0
	movs r2, #0x03
	ldrb r1, [r0, #0x00]
	ands r1, r2
	lsls r1, r1, #0x02
	ldrb r2, [r4, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r2, [sp, #0x038]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	subs r0, #0x01
	adds r3, r3, r0
	ldrb r0, [r3, #0x00]
	ldr r3, [sp, #0x034]
	strb r0, [r3, #0x00]
	movs r0, #0x01
	bl sub_8123BA8
_08125C36:
	ldr r2, _08125CB4 @ =0x03000D40
	ldrb r1, [r2, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x48]
	ldrb r0, [r0, #0x06]
	movs r4, #0x00
	ldr r1, [sp, #0x02C]
	strb r0, [r1, #0x00]
	ldr r2, [r7, #0x48]
	ldr r3, [sp, #0x034]
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r2, r2, r0
	movs r0, #0xFF
	strb r0, [r2, #0x10]
	ldr r0, [sp, #0x030]
	strb r4, [r0, #0x00]
	ldr r1, [sp, #0x038]
	strb r4, [r1, #0x00]
	movs r0, #0x01
	ldr r2, [sp, #0x024]
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	bl sub_812791C
	movs r5, #0x00
	movs r1, #0xEA
	lsls r1, r1, #0x05
	mov r3, r9
	strh r1, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x12
	strh r1, [r0, #0x00]
	bl sub_819A43C
	ldr r2, _08125CB8 @ =0x0300034C
	ldr r0, _08125CBC @ =0x0000088A
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [sp, #0x028]
	strb r5, [r1, #0x00]
	ldr r2, [sp, #0x020]
	strh r4, [r2, #0x00]
	movs r0, #0x0F
	strb r0, [r7, #0x00]
	bl _08126504
	lsls r0, r0, #0x00
_08125CB0:
	.2byte 0xFFFF @ bl lr+4094
	lsls r0, r0, #0x00
_08125CB4:
	lsrs r0, r0, #0x15
	lsls r0, r0, #0x0C
_08125CB8:
	lsls r4, r1, #0x0D
	lsls r0, r0, #0x0C
_08125CBC:
	lsrs r2, r1, #0x02
	lsls r0, r0, #0x00
_08125CC0:
	ldrh r2, [r4, #0x00]
	ldr r3, _08125DBC @ =0x03000D40
	mov r8, r3
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	adds r1, #0x01
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	adds r0, #0x02
	cmp r2, r0
	beq _08125CE0
	bl _08126504
_08125CE0:
	adds r0, r7, #0x0
	adds r0, #0xF0
	ldrb r1, [r0, #0x00]
	str r0, [sp, #0x028]
	cmp r1, #0x03
	bne _08125DCC
	adds r0, #0x09
	str r0, [sp, #0x030]
	adds r1, r7, #0x0
	adds r1, #0xFA
	str r1, [sp, #0x034]
	adds r2, r7, #0x0
	adds r2, #0xFB
	str r2, [sp, #0x038]
	adds r3, r7, #0x0
	adds r3, #0xEE
	str r3, [sp, #0x024]
	subs r0, #0x08
	str r0, [sp, #0x02C]
	adds r6, r7, #0x0
	adds r6, #0xDC
	movs r1, #0xE6
	adds r1, r1, r7
	mov r9, r1
	adds r5, r7, #0x0
	adds r5, #0x20
	ldr r2, [sp, #0x034]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x03
	adds r0, r5, r0
	ldr r0, [r0, #0x00]
	bl sub_8021308
	movs r4, #0x00
	ldr r3, [sp, #0x034]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x02
	adds r0, r5, r0
	ldr r0, [r0, #0x00]
	bl sub_8021308
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	mov r1, r8
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x48]
	ldrb r0, [r0, #0x06]
	ldr r2, [sp, #0x02C]
	strb r0, [r2, #0x00]
	ldr r3, [sp, #0x030]
	strb r4, [r3, #0x00]
	ldr r0, [sp, #0x038]
	strb r4, [r0, #0x00]
	ldr r0, [r7, #0x1C]
	bl sprite_show_8020CBC
	ldr r1, [r7, #0x1C]
	ldr r2, [sp, #0x034]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
	movs r5, #0x01
	ldr r3, [sp, #0x024]
	strb r5, [r3, #0x00]
	adds r0, r7, #0x0
	bl sub_812791C
	ldr r2, _08125DC0 @ =0x0200000C
	ldrh r0, [r6, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x05
	mov r0, r9
	strh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x12
	strh r1, [r0, #0x00]
	bl sub_819A43C
	ldr r2, _08125DC4 @ =0x0300034C
	ldr r1, _08125DC8 @ =0x0000088A
	adds r2, r2, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [sp, #0x028]
	strb r5, [r2, #0x00]
	ldr r3, [sp, #0x020]
	strh r4, [r3, #0x00]
	b _0812634E
	.byte 0x00, 0x00
_08125DBC: .4byte 0x03000D40
_08125DC0: .4byte 0x0200000C
_08125DC4: .4byte 0x0300034C
_08125DC8: .4byte 0x0000088A
_08125DCC:
	cmp r1, #0x02
	beq _08125DD2
	b _08126504
_08125DD2:
	adds r5, r7, #0x0
	adds r5, #0xFA
	movs r1, #0x00
	ldsb r1, [r5, r1]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x02
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	adds r0, r7, r0
	adds r4, r7, #0x0
	adds r4, #0xFB
	movs r1, #0x00
	ldsb r1, [r4, r1]
	adds r1, r7, r1
	ldr r2, _08125F8C @ =0x00000153
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	lsls r1, r2, #0x03
	subs r1, r1, r2
	lsls r1, r1, #0x02
	adds r1, r1, r3
	adds r1, r7, r1
	ldr r2, _08125F90 @ =0x04000007
	bl CpuSet
	movs r3, #0x00
	mov r9, r3
	adds r0, r7, #0x0
	adds r0, #0xF9
	str r0, [sp, #0x030]
	str r5, [sp, #0x034]
	str r4, [sp, #0x038]
	adds r1, r7, #0x0
	adds r1, #0xEE
	str r1, [sp, #0x024]
	adds r2, r7, #0x0
	adds r2, #0xF1
	str r2, [sp, #0x02C]
	adds r6, r4, #0x0
	movs r3, #0xAA
	lsls r3, r3, #0x01
	adds r5, r7, r3
	movs r0, #0x20
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0x00
	str r1, [sp, #0x03C]
_08125E34:
	mov r2, r9
	lsls r2, r2, #0x03
	mov r10, r2
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r1, r0, #0x02
	adds r0, r2, r1
	adds r0, r7, r0
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r0, r3
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08125E5C
	b _08125F98
_08125E5C:
	adds r0, r7, r1
	adds r3, #0x18
	adds r1, r0, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	beq _08125E6E
	cmp r0, r9
	beq _08125E6E
	b _08125F98
_08125E6E:
	ldrh r1, [r2, #0x00]
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x01
	movs r3, #0x01
	negs r3, r3
	bl sub_8020DD0
	movs r1, #0x00
	ldsb r1, [r6, r1]
	subs r1, #0x01
	adds r1, r5, r1
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x01
	add r1, r9
	lsls r1, r1, #0x02
	add r1, r8
	str r0, [r1, #0x00]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x03
	subs r1, r1, r2
	lsls r1, r1, #0x02
	add r1, r10
	adds r1, r7, r1
	movs r4, #0x81
	lsls r4, r4, #0x01
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	subs r2, #0x01
	movs r3, #0x00
	bl sub_801E150
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	lsls r2, r1, #0x03
	subs r2, r2, r1
	lsls r2, r2, #0x02
	add r2, r10
	adds r2, r7, r2
	adds r4, r2, r4
	ldrb r1, [r4, #0x00]
	ldr r3, _08125F94 @ =0x00000103
	adds r2, r2, r3
	ldrb r2, [r2, #0x00]
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sprite_show_8020CBC
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	movs r0, #0xBC
	ldr r2, [sp, #0x03C]
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	movs r0, #0xB4
	strh r0, [r1, #0x02]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r3, #0x07
	negs r3, r3
	adds r0, r3, #0x0
	ands r1, r0
	movs r0, #0x02
	orrs r1, r0
	strb r1, [r2, #0x12]
	b _0812604E
	.byte 0x00, 0x00
_08125F8C: .4byte 0x00000153
_08125F90: .4byte 0x04000007
_08125F94: .4byte 0x00000103
_08125F98:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x4C
	str r0, [sp, #0x004]
	movs r1, #0x01
	negs r1, r1
	str r1, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _081261AC @ =0x00006002
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r2, #0x01
	negs r2, r2
	str r2, [sp, #0x000]
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _081261B0 @ =0x00006006
	movs r2, #0x01
	movs r3, #0x01
	negs r3, r3
	bl sub_8020DD0
	movs r1, #0x00
	ldsb r1, [r6, r1]
	subs r1, #0x01
	adds r1, r5, r1
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x01
	add r1, r9
	lsls r1, r1, #0x02
	add r1, r8
	str r0, [r1, #0x00]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r3, #0x00
	str r3, [sp, #0x000]
	mov r1, r9
	movs r2, #0x01
	negs r2, r2
	bl sub_801E150
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sprite_show_8020CBC
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	movs r0, #0xBC
	ldr r2, [sp, #0x03C]
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	movs r0, #0xB4
	strh r0, [r1, #0x02]
_0812604E:
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, _081261B4 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x1F]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x30
	orrs r0, r1
	strb r0, [r2, #0x1F]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x1F]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x10]
	movs r3, #0x3F
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	adds r3, #0x3C
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	subs r0, #0x01
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	subs r3, #0x1E
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x03C]
	adds r0, #0x28
	str r0, [sp, #0x03C]
	movs r1, #0x01
	add r9, r1
	mov r2, r9
	cmp r2, #0x01
	bgt _08126148
	b _08125E34
_08126148:
	movs r5, #0x00
	ldr r2, _081261B8 @ =0x03000D40
	ldrb r1, [r2, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x48]
	ldrb r0, [r0, #0x06]
	ldr r3, [sp, #0x02C]
	strb r0, [r3, #0x00]
	ldr r0, [sp, #0x030]
	strb r5, [r0, #0x00]
	ldr r1, [sp, #0x038]
	strb r5, [r1, #0x00]
	ldr r0, [r7, #0x1C]
	bl sprite_show_8020CBC
	ldr r1, [r7, #0x1C]
	ldr r2, [sp, #0x034]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
	movs r4, #0x01
	ldr r3, [sp, #0x024]
	strb r4, [r3, #0x00]
	adds r0, r7, #0x0
	bl sub_812791C
	bl sub_819A43C
	ldr r2, _081261BC @ =0x0300034C
	ldr r0, _081261C0 @ =0x0000088A
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [sp, #0x028]
	strb r4, [r1, #0x00]
	ldr r2, [sp, #0x020]
	strh r5, [r2, #0x00]
	b _0812634E
_081261AC: .4byte 0x00006002
_081261B0: .4byte 0x00006006
_081261B4: .4byte 0x0000EFFF
_081261B8: .4byte 0x03000D40
_081261BC: .4byte 0x0300034C
_081261C0: .4byte 0x0000088A
_081261C4:
	adds r1, #0x01
	movs r6, #0x00
	ldr r3, [sp, #0x020]
	strh r1, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r5
	cmp r0, #0x2A
	bhi _081261D6
	b _08126504
_081261D6:
	adds r0, r7, #0x0
	adds r0, #0xF0
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bne _08126214
	orrs r1, r5
	strh r1, [r3, #0x00]
	ldr r3, _08126210 @ =0x03000D40
	adds r1, r7, #0x0
	adds r1, #0xFA
	movs r0, #0x03
	ldrb r1, [r1, #0x00]
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x01
	bl sub_8123BA8
	adds r0, r7, #0x0
	adds r0, #0xE8
	strh r6, [r0, #0x00]
	bl sub_80196E0
	b _0812628E
_08126210: .4byte 0x03000D40
_08126214:
	cmp r0, #0x02
	bne _0812628E
	orrs r1, r5
	ldr r0, [sp, #0x020]
	strh r1, [r0, #0x00]
	ldr r4, _081262A0 @ =0x03000D40
	adds r5, r7, #0x0
	adds r5, #0xFB
	movs r0, #0x00
	ldsb r0, [r5, r0]
	subs r0, #0x01
	movs r1, #0xAA
	lsls r1, r1, #0x01
	adds r3, r7, r1
	adds r0, r3, r0
	movs r2, #0x03
	ldrb r1, [r0, #0x00]
	ands r1, r2
	lsls r1, r1, #0x02
	ldrb r2, [r4, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xFA
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	ldr r4, [r7, #0x48]
	adds r0, r0, r4
	adds r0, #0x14
	movs r1, #0x00
	ldsb r1, [r5, r1]
	subs r1, #0x01
	adds r3, r3, r1
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x03
	subs r1, r1, r2
	lsls r1, r1, #0x05
	subs r1, r1, r2
	lsls r1, r1, #0x03
	adds r1, r1, r4
	adds r1, #0x14
	movs r2, #0xDE
	lsls r2, r2, #0x02
	bl CpuSet
	movs r0, #0x02
	bl sub_8123BA8
	adds r0, r7, #0x0
	adds r0, #0xE8
	strh r6, [r0, #0x00]
	bl sub_80196E0
_0812628E:
	ldr r0, _081262A4 @ =0x0300034C
	ldr r2, _081262A8 @ =0x0000088C
	adds r0, r0, r2
	ldrb r2, [r0, #0x00]
	movs r1, #0x02
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	b _08126504
_081262A0: .4byte 0x03000D40
_081262A4: .4byte 0x0300034C
_081262A8: .4byte 0x0000088C
_081262AC:
	adds r0, r7, #0x0
	adds r0, #0xF0
	ldrb r1, [r0, #0x00]
	str r0, [sp, #0x028]
	cmp r1, #0x00
	bne _081262DC
	movs r2, #0x01
	movs r0, #0x01
	ldr r3, [sp, #0x028]
	strb r0, [r3, #0x00]
	ldr r1, _081262D4 @ =0x0300034C
	ldr r0, _081262D8 @ =0x0000088C
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xEC
	str r1, [sp, #0x020]
	b _081262F6
_081262D4: .4byte 0x0300034C
_081262D8: .4byte 0x0000088C
_081262DC:
	adds r0, r7, #0x0
	adds r0, #0xEC
	ldrh r1, [r0, #0x00]
	str r0, [sp, #0x020]
	cmp r1, #0x14
	bne _081262F6
	adds r0, #0x08
	ldrb r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xF5
	movs r2, #0xFF
	bl sub_8125220
_081262F6:
	ldr r2, [sp, #0x020]
	ldrh r0, [r2, #0x00]
	adds r0, #0x01
	movs r2, #0x00
	ldr r3, [sp, #0x020]
	strh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xB4
	bhi _0812630C
	b _08126504
_0812630C:
	ldr r0, [r7, #0x50]
	ldrh r1, [r0, #0x02]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0812631A
	b _08126504
_0812631A:
	adds r0, r7, #0x0
	adds r0, #0xE8
	strh r2, [r0, #0x00]
	strh r2, [r3, #0x00]
	movs r0, #0x00
	ldr r1, [sp, #0x028]
	strb r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xEE
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x1C]
	bl sprite_show_8020CBC
	ldr r1, [r7, #0x1C]
	adds r0, r7, #0x0
	adds r0, #0xFA
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
_0812634E:
	movs r0, #0x0D
	strb r0, [r7, #0x00]
	b _08126504
_08126354:
	adds r0, r7, #0x0
	adds r0, #0xF0
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812636C
	ldr r1, _08126368 @ =0x0000FFFF
	adds r0, r7, #0x0
	bl sub_8127ADC
	b _08126374
_08126368: .4byte 0x0000FFFF
_0812636C:
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8127ADC
_08126374:
	movs r0, #0x14
	strb r0, [r7, #0x00]
	b _08126504
_0812637A:
	adds r0, r7, #0x0
	bl sub_8127AB0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	beq _0812638A
	b _08126504
_0812638A:
	ldr r4, _08126424 @ =0x03001034
	ldr r1, [r7, #0x58]
	movs r2, #0xF2
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r0, [r7, #0x60]
	movs r2, #0xB0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x28]
	ldr r2, [r1, #0x04]
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r2, r2, r3
	ldr r1, [r7, #0x58]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	bl sub_80E9384
	ldr r1, [r7, #0x54]
	movs r2, #0x80
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r0, _08126428 @ =0x02000080
	strh r5, [r0, #0x00]
	ldr r0, _0812642C @ =0x0300034C
	movs r6, #0x01
	strh r6, [r0, #0x02]
	ldr r1, [r7, #0x50]
	adds r0, r7, #0x0
	adds r0, #0xF7
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x08]
	ldr r1, [r7, #0x50]
	adds r0, r7, #0x0
	adds r0, #0xF8
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x09]
	bl sub_80E8DC0
	ldr r1, _08126430 @ =0x03000C78
	ldr r0, _08126434 @ =0x0800063C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xF0
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812643C
	cmp r7, #0x00
	beq _08126404
	adds r0, r7, #0x0
	movs r1, #0x03
	bl sub_8125464
_08126404:
	bl sub_801AFA0
	ldr r4, _08126438 @ =0x08210F3C
	movs r0, #0xE4
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x01
	bl title_screen_create
	b _08126504
	.byte 0x00, 0x00
_08126424: .4byte 0x03001034
_08126428: .4byte 0x02000080
_0812642C: .4byte 0x0300034C
_08126430: .4byte 0x03000C78
_08126434: .4byte 0x0800063C
_08126438: .4byte 0x08210F3C
_0812643C:
	adds r0, r7, #0x0
	adds r0, #0xF1
	ldrb r4, [r0, #0x00]
	adds r5, r7, #0x0
	adds r5, #0xFA
	movs r2, #0x00
	ldsb r2, [r5, r2]
	asrs r4, r2
	ands r4, r6
	cmp r4, #0x00
	beq _081264AC
	ldr r4, _081264A8 @ =0x03000D40
	movs r0, #0x03
	ands r2, r0
	lsls r2, r2, #0x02
	ldrb r1, [r4, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x00]
	cmp r7, #0x00
	beq _08126476
	adds r0, r7, #0x0
	movs r1, #0x03
	bl sub_8125464
_08126476:
	bl sub_80FC198
	bl sub_812335C
	ldr r2, [r7, #0x48]
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r2, r2, r1
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	bl sub_8018A4C
	movs r0, #0x01
	bl make_fldm_801AF5C
	b _08126504
	.byte 0x00, 0x00
_081264A8: .4byte 0x03000D40
_081264AC:
	ldr r3, _08126514 @ =0x03000D40
	movs r0, #0x03
	ands r2, r0
	lsls r2, r2, #0x02
	ldrb r1, [r3, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	str r4, [sp, #0x018]
	ldr r2, _08126518 @ =0x040000D4
	add r3, sp, #0x018
	str r3, [r2, #0x00]
	movs r1, #0x00
	ldsb r1, [r5, r1]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	adds r0, #0x14
	str r0, [r2, #0x04]
	ldr r0, _0812651C @ =0x850001BC
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
	cmp r7, #0x00
	beq _081264F6
	adds r0, r7, #0x0
	movs r1, #0x03
	bl sub_8125464
_081264F6:
	bl sub_812335C
	bl sub_8122BFC
	movs r0, #0x00
	bl make_fldm_801AF5C
_08126504:
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08126514: .4byte 0x03000D40
_08126518: .4byte 0x040000D4
_0812651C: .4byte 0x850001BC
	thumb_func_start sub_8126520
sub_8126520:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	adds r3, r4, #0x0
	adds r3, #0xEA
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08126582
	adds r1, r0, #0x1
	strh r1, [r3, #0x00]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xB4
	bhi _08126544
	b _08126C2C
_08126544:
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0x02]
	movs r2, #0x03
	ands r2, r0
	cmp r2, #0x00
	beq _08126564
	movs r0, #0x00
	strh r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xEE
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x1C]
	bl sprite_show_8020CBC
	b _08126C2C
_08126564:
	lsls r1, r1, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08126570
	b _08126C2C
_08126570:
	strh r2, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xEE
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x1C]
	bl sprite_show_8020CBC
	b _08126C2C
_08126582:
	adds r0, r4, #0x0
	adds r0, #0xF2
	ldrb r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	beq _0812661C
	subs r0, #0x01
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xFA
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	asrs r0, r1
	movs r2, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _081265C8
	ldr r2, _081265C4 @ =0x0200000C
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xE6
	movs r0, #0xEA
	lsls r0, r0, #0x05
	b _08126600
	.byte 0x00, 0x00
_081265C4: .4byte 0x0200000C
_081265C8:
	adds r0, r4, #0x0
	adds r0, #0xF3
	ldrb r0, [r0, #0x00]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0x00
	beq _081265F8
	ldr r2, _081265F4 @ =0x0200000C
	adds r0, r4, #0x0
	adds r0, #0xDE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xE6
	movs r0, #0xEA
	lsls r0, r0, #0x05
	b _08126600
	.byte 0x00, 0x00
_081265F4: .4byte 0x0200000C
_081265F8:
	adds r1, r4, #0x0
	adds r1, #0xE6
	movs r0, #0xCA
	lsls r0, r0, #0x05
_08126600:
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x12
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xEE
	movs r2, #0x00
	movs r0, #0x01
	strb r0, [r1, #0x00]
	mov r0, r10
	strb r2, [r0, #0x00]
	b _08126C2C
_0812661C:
	ldr r6, [r4, #0x50]
	ldrh r1, [r6, #0x02]
	movs r2, #0x01
	mov r9, r2
	movs r0, #0x01
	mov r8, r0
	mov r5, r8
	ands r5, r1
	cmp r5, #0x00
	bne _08126632
	b _08126836
_08126632:
	adds r7, r4, #0x0
	adds r7, #0xF9
	movs r0, #0x00
	ldsb r0, [r7, r0]
	cmp r0, #0x00
	bne _08126640
	b _08126814
_08126640:
	adds r6, r4, #0x0
	adds r6, #0xFB
	ldrb r1, [r6, #0x00]
	movs r2, #0x00
	ldsb r2, [r6, r2]
	cmp r2, #0x00
	bne _08126650
	b _0812675C
_08126650:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	cmp r5, #0x00
	beq _081266A0
	movs r5, #0x0F
	ands r5, r1
	cmp r5, #0x00
	beq _0812667A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r1, r9
	strb r1, [r0, #0x00]
	movs r0, #0x20
	b _081267D4
_0812667A:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	strb r5, [r6, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	movs r1, #0x00
	ldsb r1, [r7, r1]
	subs r1, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x28
	strh r0, [r2, #0x02]
	b _0812680A
_081266A0:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x00
	beq _08126704
	cmp r2, #0x21
	bne _081266D6
	adds r0, r4, #0x0
	adds r0, #0xF5
	movs r1, #0x1E
	bl sub_81252BC
	adds r1, r4, #0x0
	adds r1, #0xF4
	strb r0, [r1, #0x00]
	subs r1, #0x04
	movs r0, #0x03
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r1, r9
	strb r1, [r0, #0x00]
	subs r0, #0x02
	strh r5, [r0, #0x00]
	b _08126728
_081266D6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	strb r5, [r6, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	movs r1, #0x00
	ldsb r1, [r7, r1]
	subs r1, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x28
	strh r0, [r2, #0x02]
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r1, r9
	strb r1, [r0, #0x00]
	b _08126C2C
_08126704:
	adds r0, r4, #0x0
	adds r0, #0xF5
	movs r1, #0x1E
	bl sub_81252BC
	adds r1, r4, #0x0
	adds r1, #0xF4
	strb r0, [r1, #0x00]
	subs r1, #0x04
	movs r0, #0x02
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r2, r9
	strb r2, [r0, #0x00]
	subs r0, #0x02
	mov r1, r8
	strh r1, [r0, #0x00]
_08126728:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, [r4, #0x1C]
	bl sprite_hide_8021F20
	ldr r2, _08126754 @ =0x0300034C
	ldr r0, _08126758 @ =0x0000088A
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	b _08126C2E
	.byte 0x00, 0x00
_08126754: .4byte 0x0300034C
_08126758: .4byte 0x0000088A
_0812675C:
	movs r5, #0x00
	ldsb r5, [r7, r5]
	subs r0, r5, #0x1
	cmp r0, #0x01
	beq _08126788
	cmp r0, #0x01
	bgt _08126770
	cmp r0, #0x00
	beq _0812677A
	b _08126C2C
_08126770:
	cmp r0, #0x02
	beq _081267C0
	cmp r0, #0x03
	beq _081267E4
	b _08126C2C
_0812677A:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	movs r0, #0x02
	b _08126C2E
_08126788:
	ldr r1, _081267A0 @ =0x00000157
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081267A4
	mov r2, r8
	strh r2, [r3, #0x00]
	ldr r0, [r4, #0x1C]
	bl sprite_hide_8021F20
	b _08126896
	.byte 0x00, 0x00
_081267A0: .4byte 0x00000157
_081267A4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	mov r0, r9
	strb r0, [r6, #0x00]
	ldr r1, [r4, #0x1C]
	adds r0, r4, r5
	movs r2, #0xA9
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	b _0812688A
_081267C0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r1, r9
	strb r1, [r0, #0x00]
	movs r0, #0x10
_081267D4:
	strb r0, [r6, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x2E
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x60
	strh r0, [r1, #0x02]
	b _08126C2C
_081267E4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	ldr r1, [r4, #0x1C]
	adds r0, r4, #0x0
	adds r0, #0xFA
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x05
	adds r0, #0x20
	movs r2, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
	strb r2, [r7, #0x00]
_0812680A:
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r2, r9
	strb r2, [r0, #0x00]
	b _08126C2C
_08126814:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xEE
	mov r1, r9
	strb r1, [r0, #0x00]
	strb r1, [r7, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	movs r1, #0x00
	ldsb r1, [r7, r1]
	b _08126C20
_08126836:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _081268B6
	adds r6, r4, #0x0
	adds r6, #0xF9
	movs r0, #0x00
	ldsb r0, [r6, r0]
	cmp r0, #0x00
	beq _081268A0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xFB
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	beq _0812687C
	strb r5, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	movs r1, #0x00
	ldsb r1, [r6, r1]
	subs r1, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x28
	strh r0, [r2, #0x02]
	b _08126896
_0812687C:
	strb r0, [r6, #0x00]
	ldr r1, [r4, #0x1C]
	adds r0, r4, #0x0
	adds r0, #0xFA
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0812688A:
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
_08126896:
	adds r1, r4, #0x0
	adds r1, #0xEE
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _08126C2C
_081268A0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xF0
	mov r2, r9
	strb r2, [r0, #0x00]
	movs r0, #0x02
	b _08126C2E
_081268B6:
	adds r5, r4, #0x0
	adds r5, #0xFB
	ldrb r2, [r5, #0x00]
	movs r0, #0x30
	ands r0, r2
	adds r7, r5, #0x0
	cmp r0, #0x00
	beq _08126950
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812690A
	movs r0, #0x0F
	ands r0, r2
	cmp r0, #0x00
	beq _081268DE
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	b _081268E6
_081268DE:
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	adds r0, #0x01
_081268E6:
	strb r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	ldr r1, [r4, #0x1C]
	movs r0, #0x2E
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	ldrb r1, [r7, #0x00]
	movs r0, #0x0F
	ands r0, r1
	movs r1, #0x0D
	muls r1, r0
	movs r0, #0x60
	subs r0, r0, r1
	b _08126C2A
_0812690A:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08126914
	b _08126C2C
_08126914:
	movs r0, #0x0F
	ands r0, r2
	cmp r0, #0x00
	beq _08126924
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	b _0812692C
_08126924:
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	adds r0, #0x01
_0812692C:
	strb r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	ldr r1, [r4, #0x1C]
	movs r0, #0x2E
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	ldrb r1, [r7, #0x00]
	movs r0, #0x0F
	ands r0, r1
	movs r1, #0x0D
	muls r1, r0
	movs r0, #0x60
	subs r0, r0, r1
	b _08126C2A
_08126950:
	ldrh r1, [r6, #0x06]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08126A34
	adds r0, r4, #0x0
	adds r0, #0xF9
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	bne _08126A00
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r5, r4, #0x0
	adds r5, #0xF1
	ldrb r0, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xFA
	movs r1, #0x00
	ldsb r1, [r3, r1]
	asrs r0, r1
	mov r2, r8
	ands r0, r2
	cmp r0, #0x00
	beq _081269A8
	lsls r0, r1, #0x03
	adds r1, r4, #0x0
	adds r1, #0x20
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	movs r2, #0xB4
	strh r2, [r0, #0x02]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	strh r2, [r0, #0x02]
_081269A8:
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _081269B8
	movs r0, #0x02
	strb r0, [r3, #0x00]
_081269B8:
	ldrb r0, [r5, #0x00]
	movs r1, #0x00
	ldsb r1, [r3, r1]
	asrs r0, r1
	mov r2, r8
	ands r0, r2
	cmp r0, #0x00
	beq _081269E6
	lsls r0, r1, #0x03
	adds r1, r4, #0x0
	adds r1, #0x20
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	movs r2, #0x68
	strh r2, [r0, #0x02]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	strh r2, [r0, #0x02]
_081269E6:
	ldr r1, [r4, #0x1C]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
	mov r1, r9
	mov r0, r10
	strb r1, [r0, #0x00]
	b _08126C2C
_08126A00:
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _08126A08
	b _08126C2C
_08126A08:
	ldr r2, _08126A30 @ =0x00000157
	adds r6, r4, r2
	ldrb r0, [r6, #0x00]
	cmp r0, #0x02
	bne _08126A1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_08126A1C:
	ldrb r0, [r5, #0x00]
	subs r0, #0x01
	strb r0, [r5, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	ble _08126A2A
	b _08126B32
_08126A2A:
	ldrb r0, [r6, #0x00]
	strb r0, [r5, #0x00]
	b _08126B32
_08126A30: .4byte 0x00000157
_08126A34:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08126A3E
	b _08126B58
_08126A3E:
	adds r0, r4, #0x0
	adds r0, #0xF9
	movs r7, #0x00
	ldsb r7, [r0, r7]
	cmp r7, #0x00
	bne _08126B00
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r3, r4, #0x0
	adds r3, #0xF1
	ldrb r0, [r3, #0x00]
	adds r6, r4, #0x0
	adds r6, #0xFA
	movs r1, #0x00
	ldsb r1, [r6, r1]
	asrs r0, r1
	mov r2, r8
	ands r0, r2
	adds r5, r6, #0x0
	cmp r0, #0x00
	beq _08126A8C
	lsls r0, r1, #0x03
	adds r1, r4, #0x0
	adds r1, #0x20
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	movs r2, #0xB4
	strh r2, [r0, #0x02]
	movs r0, #0x00
	ldsb r0, [r5, r0]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	strh r2, [r0, #0x02]
_08126A8C:
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x02
	ble _08126A9C
	strb r7, [r5, #0x00]
_08126A9C:
	ldrb r0, [r3, #0x00]
	movs r3, #0x00
	ldsb r3, [r5, r3]
	asrs r0, r3
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	beq _08126AE6
	adds r1, r4, #0x0
	adds r1, #0x20
	movs r2, #0x68
	lsls r0, r3, #0x03
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	strh r2, [r0, #0x02]
	movs r0, #0x00
	ldsb r0, [r5, r0]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x02
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	strh r2, [r0, #0x02]
	movs r0, #0x00
	ldsb r0, [r5, r0]
	lsls r0, r0, #0x03
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	strh r2, [r0, #0x02]
	movs r0, #0x00
	ldsb r0, [r5, r0]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	strh r2, [r0, #0x02]
_08126AE6:
	ldr r1, [r4, #0x1C]
	movs r0, #0x00
	ldsb r0, [r6, r0]
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
	mov r0, r8
	mov r2, r10
	strb r0, [r2, #0x00]
	b _08126C2C
_08126B00:
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _08126B08
	b _08126C2C
_08126B08:
	ldr r1, _08126B50 @ =0x00000157
	adds r6, r4, r1
	ldrb r0, [r6, #0x00]
	cmp r0, #0x02
	bne _08126B1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_08126B1C:
	ldrb r1, [r5, #0x00]
	adds r1, #0x01
	strb r1, [r5, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r6, #0x00]
	adds r0, #0x01
	cmp r1, r0
	blt _08126B32
	mov r2, r9
	strb r2, [r5, #0x00]
_08126B32:
	ldr r1, [r4, #0x1C]
	movs r0, #0x00
	ldsb r0, [r5, r0]
	adds r0, r4, r0
	ldr r2, _08126B54 @ =0x00000153
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
	b _08126C2C
	.byte 0x00, 0x00
_08126B50: .4byte 0x00000157
_08126B54: .4byte 0x00000153
_08126B58:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08126BB4
	adds r0, r4, #0x0
	adds r0, #0xF9
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r5, r0, #0x0
	cmp r1, #0x00
	beq _08126C2C
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _08126C2C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xF1
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xFA
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	beq _08126BA6
	ldrb r0, [r5, #0x00]
	subs r0, #0x01
	strb r0, [r5, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bgt _08126C14
	b _08126C10
_08126BA6:
	movs r0, #0x00
	ldsb r0, [r5, r0]
	cmp r0, #0x01
	beq _08126C10
_08126BAE:
	mov r2, r9
	strb r2, [r5, #0x00]
	b _08126C14
_08126BB4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08126C2C
	adds r0, r4, #0x0
	adds r0, #0xF9
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r5, r0, #0x0
	cmp r1, #0x00
	beq _08126C2C
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _08126C2C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xF1
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xFA
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	beq _08126C04
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x04
	ble _08126C14
	b _08126BAE
_08126C04:
	movs r0, #0x00
	ldsb r0, [r5, r0]
	cmp r0, #0x04
	bne _08126C10
	mov r0, r9
	b _08126C12
_08126C10:
	movs r0, #0x04
_08126C12:
	strb r0, [r5, #0x00]
_08126C14:
	ldr r1, [r4, #0x1C]
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x1C]
	movs r1, #0x00
	ldsb r1, [r5, r1]
_08126C20:
	subs r1, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x28
_08126C2A:
	strh r0, [r2, #0x02]
_08126C2C:
	movs r0, #0x00
_08126C2E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_8126C3C
sub_8126C3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	adds r7, r0, #0x0
	add r1, sp, #0x00C
	ldr r0, _08126D30 @ =0x08210F44
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	add r0, sp, #0x01C
	mov r8, r0
	mov r1, r8
	ldr r0, _08126D34 @ =0x08210F54
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0xF2
	adds r0, r0, r7
	mov r9, r0
	ldrb r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08126D44
	ldr r1, _08126D38 @ =0x00006003
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x4C
	str r0, [sp, #0x004]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r1, _08126D3C @ =0x00006005
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x1C]
	str r5, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x1C]
	bl sprite_show_8020CBC
	ldr r1, [r7, #0x1C]
	adds r0, r7, #0x0
	adds r0, #0xFA
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
	ldr r1, [r7, #0x1C]
	ldr r0, _08126D40 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r2, [r7, #0x1C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x1C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x1C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x1C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x1C]
	ldrb r1, [r2, #0x10]
	movs r0, #0x3F
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r1, [r7, #0x1C]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x1C]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x01
	mov r1, r9
	strb r0, [r1, #0x00]
	b _081270C6
	.byte 0x00, 0x00
_08126D30: .4byte 0x08210F44
_08126D34: .4byte 0x08210F54
_08126D38: .4byte 0x00006003
_08126D3C: .4byte 0x00006005
_08126D40: .4byte 0x0000EFFF
_08126D44:
	cmp r5, #0x01
	beq _08126D4A
	b _08126E90
_08126D4A:
	ldr r1, _08126E88 @ =0x00006005
	movs r6, #0x01
	negs r6, r6
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r5, r7, #0x0
	adds r5, #0xEC
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r4, r7, #0x0
	adds r4, #0x38
	adds r1, r4, r1
	str r0, [r1, #0x00]
	ldrh r1, [r5, #0x00]
	lsls r0, r1, #0x02
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	adds r1, #0x03
	movs r2, #0x00
	str r2, [sp, #0x000]
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	bl sprite_show_8020CBC
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r1, [r1, #0x00]
	add r0, sp
	adds r0, #0x0C
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r1, [r1, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x02]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	ldr r0, _08126E8C @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r3, #0x10
	orrs r0, r3
	strb r0, [r2, #0x1F]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x10]
	movs r0, #0x3F
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x12]
	orrs r0, r3
	strb r0, [r1, #0x12]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x04
	beq _08126E80
	b _081270C6
_08126E80:
	movs r0, #0x02
	mov r2, r9
	strb r0, [r2, #0x00]
	b _081270C6
_08126E88: .4byte 0x00006005
_08126E8C: .4byte 0x0000EFFF
_08126E90:
	movs r3, #0x00
	mov r8, r3
	mov r4, r9
	str r4, [sp, #0x03C]
	adds r0, r7, #0x0
	adds r0, #0xEC
	str r0, [sp, #0x038]
	adds r1, r7, #0x0
	adds r1, #0x20
	str r1, [sp, #0x030]
	movs r6, #0x01
	negs r6, r6
_08126EA8:
	movs r2, #0x00
	mov r9, r2
	mov r3, r8
	lsls r0, r3, #0x03
	adds r3, #0x01
	str r3, [sp, #0x034]
	mov r4, r8
	subs r1, r0, r4
	lsls r1, r1, #0x02
	adds r2, r7, r1
	str r2, [sp, #0x02C]
	ldr r3, [sp, #0x030]
	adds r4, r0, r3
	movs r0, #0x00
	mov r10, r0
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r7, r2
	adds r5, r1, r0
_08126ECE:
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08126FB0
	ldr r3, [sp, #0x02C]
	movs r0, #0x8C
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	beq _08126EE6
	cmp r0, r9
	bne _08126FB0
_08126EE6:
	ldrh r1, [r5, #0x00]
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x00]
	ldrb r1, [r5, #0x02]
	movs r2, #0x00
	str r2, [sp, #0x000]
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	ldrb r1, [r5, #0x02]
	ldrb r2, [r5, #0x03]
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x00]
	movs r0, #0xBC
	mov r2, r10
	subs r0, r0, r2
	movs r2, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x68
	mov r3, r8
	cmp r3, #0x00
	beq _08126F34
	movs r0, #0xB4
_08126F34:
	strh r0, [r1, #0x02]
	ldr r1, [r4, #0x00]
	ldr r0, _08126FAC @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x30
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x10]
	movs r3, #0x3F
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	adds r3, #0x3C
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	subs r3, #0x1E
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x12]
	adds r3, #0x1A
	adds r1, r3, #0x0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _08127086
	.byte 0x00, 0x00
_08126FAC: .4byte 0x0000EFFF
_08126FB0:
	adds r0, r7, #0x0
	adds r0, #0xF1
	ldrb r1, [r0, #0x00]
	mov r0, r8
	asrs r1, r0
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _08127084
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x4C
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _08127078 @ =0x00006002
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _0812707C @ =0x00006006
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	mov r1, r9
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x00]
	movs r0, #0xBC
	mov r3, r10
	subs r0, r0, r3
	movs r2, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x68
	mov r3, r8
	cmp r3, #0x00
	beq _0812701A
	movs r0, #0xB4
_0812701A:
	strh r0, [r1, #0x02]
	ldr r1, [r4, #0x00]
	ldr r0, _08127080 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x30
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x10]
	movs r3, #0x3F
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	adds r3, #0x3C
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	subs r3, #0x1E
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08127086
	.byte 0x00, 0x00
_08127078: .4byte 0x00006002
_0812707C: .4byte 0x00006006
_08127080: .4byte 0x0000EFFF
_08127084:
	str r1, [r4, #0x00]
_08127086:
	adds r4, #0x04
	movs r0, #0x28
	add r10, r0
	adds r5, #0x08
	movs r1, #0x01
	add r9, r1
	mov r2, r9
	cmp r2, #0x01
	bgt _0812709A
	b _08126ECE
_0812709A:
	ldr r3, [sp, #0x034]
	mov r8, r3
	cmp r3, #0x02
	bgt _081270A4
	b _08126EA8
_081270A4:
	movs r4, #0x00
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _081270D8 @ =0x03000D48
	ldr r0, _081270DC @ =0x0203FFB8
	ldr r0, [r0, #0x3C]
	ldr r3, _081270E0 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r0, [sp, #0x03C]
	strb r4, [r0, #0x00]
	ldr r1, [sp, #0x038]
	strh r4, [r1, #0x00]
_081270C6:
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081270D8: .4byte 0x03000D48
_081270DC: .4byte 0x0203FFB8
_081270E0: .4byte 0x00000A14
	thumb_func_start sub_81270E4
sub_81270E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	mov r10, r0
	adds r4, r1, #0x0
	mov r5, r10
	adds r5, #0xFA
	movs r1, #0x00
	ldsb r1, [r5, r1]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x02
	mov r1, r10
	adds r3, r1, r0
	movs r2, #0x8B
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	ldr r6, _081271A8 @ =0x00000117
	adds r0, r3, r6
	ldrb r2, [r0, #0x00]
	subs r6, #0x07
	adds r0, r3, r6
	ldrh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8121F1C
	adds r4, r0, #0x0
	movs r1, #0x00
	ldsb r1, [r5, r1]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x02
	mov r1, r10
	adds r2, r1, r0
	movs r3, #0x82
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	subs r6, #0x04
	adds r0, r2, r6
	ldrb r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8122098
	adds r4, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	mov r9, r0
	movs r1, #0xC0
	lsls r1, r1, #0x0D
	str r1, [sp, #0x01C]
	movs r2, #0x00
	str r2, [sp, #0x020]
_08127156:
	movs r6, #0x08
	movs r2, #0x0D
	movs r7, #0x52
	movs r5, #0x01
	mov r0, r10
	adds r0, #0xFA
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _08127174
	movs r6, #0x00
	movs r2, #0x06
	movs r7, #0x42
	movs r5, #0x00
_08127174:
	mov r0, r10
	adds r0, #0xF1
	ldrb r3, [r0, #0x00]
	mov r0, r8
	asrs r3, r0
	movs r0, #0x01
	ands r3, r0
	cmp r3, #0x00
	bne _081271AC
	ldr r2, [sp, #0x01C]
	asrs r1, r2, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	str r5, [sp, #0x000]
	movs r6, #0x02
	str r6, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x20
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r0, #0x03
	str r0, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	b _08127200
	.byte 0x00, 0x00
_081271A8: .4byte 0x00000117
_081271AC:
	ldr r1, [sp, #0x020]
	adds r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r0, [sp, #0x000]
	mov r3, r9
	str r3, [sp, #0x004]
	mov r3, r8
	lsls r0, r3, #0x11
	movs r3, #0x92
	lsls r3, r3, #0x10
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r3, #0x03
	str r3, [sp, #0x010]
	mov r0, r9
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r4, r0, #0x0
	ldr r2, [sp, #0x01C]
	asrs r1, r2, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	str r5, [sp, #0x000]
	movs r3, #0x02
	str r3, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x38
	str r0, [sp, #0x008]
	str r3, [sp, #0x00C]
	movs r6, #0x03
	str r6, [sp, #0x010]
	mov r0, r9
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
_08127200:
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r4, r0, #0x0
	ldr r1, [sp, #0x01C]
	movs r2, #0x80
	lsls r2, r2, #0x0E
	adds r1, r1, r2
	str r1, [sp, #0x01C]
	ldr r3, [sp, #0x020]
	adds r3, #0x20
	str r3, [sp, #0x020]
	movs r6, #0x01
	add r8, r6
	mov r0, r8
	cmp r0, #0x02
	ble _08127156
	adds r0, r4, #0x0
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8127238
sub_8127238:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	adds r0, #0xEE
	str r0, [sp, #0x018]
	ldrb r1, [r0, #0x00]
	mov r10, r1
	cmp r1, #0x01
	beq _08127254
	b _0812779E
_08127254:
	ldr r1, _0812730C @ =0x083BADAC
	ldr r0, _08127310 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r4, r0, r2
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	ldr r0, _08127314 @ =0x03001034
	ldr r1, [r7, #0x58]
	movs r2, #0xF2
	lsls r2, r2, #0x04
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	adds r0, r7, #0x0
	adds r0, #0xF0
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08127318
	mov r5, r10
	ands r5, r0
	lsls r0, r5, #0x1A
	movs r1, #0xE0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	mov r9, r0
	adds r5, r7, #0x0
	adds r5, #0x64
	ldr r1, [r7, #0x58]
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r5, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	mov r2, r9
	lsls r4, r2, #0x02
	add r4, r8
	ldr r3, [r4, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x04
	bl sub_8199D5C
	movs r6, #0x00
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	adds r4, r5, #0x0
	movs r5, #0xFA
	adds r5, r5, r7
	mov r10, r5
	cmp r0, #0x00
	bne _081272E8
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _081272E8
	b _0812763A
_081272E8:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r6, #0x01
	mov r1, r9
	lsls r0, r1, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	adds r1, r0, r6
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _081272E8
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _081272E8
	b _0812763A
	.byte 0x00, 0x00
_0812730C: .4byte 0x083BADAC
_08127310: .4byte 0x0300034C
_08127314: .4byte 0x03001034
_08127318:
	adds r0, r7, #0x0
	adds r0, #0xEA
	ldrh r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08127392
	adds r4, r7, #0x0
	adds r4, #0x64
	ldr r1, [r7, #0x58]
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x09
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	mov r2, r8
	ldr r3, [r2, #0x20]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x04
	bl sub_8199D5C
	movs r5, #0x00
	mov r0, r8
	ldr r1, [r0, #0x20]
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	movs r2, #0xFA
	adds r2, r2, r7
	mov r10, r2
	cmp r0, #0x00
	bne _08127374
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08127374
	b _0812763A
_08127374:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r5, #0x01
	mov r1, r8
	ldr r0, [r1, #0x20]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08127374
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08127374
	b _0812763A
_08127392:
	adds r0, r7, #0x0
	adds r0, #0xE8
	ldrh r1, [r0, #0x00]
	ldr r0, _0812741C @ =0x0000FFFF
	cmp r1, r0
	bne _08127424
	ldr r1, _08127420 @ =0x083BADC0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x64
	ldr r1, [r7, #0x58]
	str r2, [sp, #0x000]
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x09
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	ldr r3, [r5, #0x1C]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x0B
	bl sub_8199D5C
	movs r6, #0x00
	mov r2, r8
	ldr r0, [r2, #0x1C]
	ldrb r0, [r0, #0x00]
	ldr r1, [sp, #0x018]
	str r1, [sp, #0x01C]
	movs r2, #0xFA
	adds r2, r2, r7
	mov r10, r2
	cmp r0, #0x00
	bne _081273F8
	ldr r0, [r5, #0x1C]
	subs r0, #0x01
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _081273F8
	b _0812763A
_081273F8:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r6, #0x01
	mov r1, r8
	ldr r0, [r1, #0x1C]
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081273F8
	ldr r0, [r5, #0x1C]
	adds r0, r6, r0
	subs r0, #0x01
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _081273F8
	b _0812763A
	.byte 0x00, 0x00
_0812741C: .4byte 0x0000FFFF
_08127420: .4byte 0x083BADC0
_08127424:
	adds r0, r7, #0x0
	adds r0, #0xFB
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0x00
	beq _08127498
	adds r4, r7, #0x0
	adds r4, #0x64
	ldr r1, [r7, #0x58]
	str r2, [sp, #0x000]
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x09
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	mov r2, r8
	ldr r3, [r2, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x04
	bl sub_8199D5C
	movs r5, #0x00
	mov r0, r8
	ldr r1, [r0, #0x28]
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	movs r2, #0xFA
	adds r2, r2, r7
	mov r10, r2
	b _0812748A
_0812747A:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r5, #0x01
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
_0812748A:
	cmp r0, #0x00
	bne _0812747A
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0812747A
	b _08127504
_08127498:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0x00
	beq _08127530
	adds r4, r7, #0x0
	adds r4, #0x64
	ldr r1, [r7, #0x58]
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	mov r0, r8
	ldr r3, [r0, #0x24]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x04
	bl sub_8199D5C
	movs r5, #0x00
	mov r2, r8
	ldr r1, [r2, #0x24]
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	movs r2, #0xFA
	adds r2, r2, r7
	mov r10, r2
	b _081274F8
_081274E8:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r5, #0x01
	mov r1, r8
	ldr r0, [r1, #0x24]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
_081274F8:
	cmp r0, #0x00
	bne _081274E8
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _081274E8
_08127504:
	ldr r0, [r7, #0x58]
	mov r2, r8
	ldr r1, [r2, #0x30]
	str r1, [sp, #0x000]
	movs r4, #0x05
	str r4, [sp, #0x004]
	movs r1, #0x0B
	movs r2, #0x0C
	movs r3, #0x30
	bl sub_8083860
	ldr r0, [r7, #0x58]
	mov r5, r8
	ldr r1, [r5, #0x34]
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x0B
	movs r2, #0x0C
	movs r3, #0x3C
	bl sub_8083860
	b _0812763A
_08127530:
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _081275A2
	adds r4, r7, #0x0
	adds r4, #0x64
	ldr r1, [r7, #0x58]
	str r2, [sp, #0x000]
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	mov r0, r8
	ldr r3, [r0, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x04
	bl sub_8199D5C
	movs r5, #0x00
	mov r2, r8
	ldr r1, [r2, #0x18]
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	movs r2, #0xFA
	adds r2, r2, r7
	mov r10, r2
	cmp r0, #0x00
	bne _08127584
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _0812763A
_08127584:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r5, #0x01
	mov r1, r8
	ldr r0, [r1, #0x18]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08127584
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08127584
	b _0812763A
_081275A2:
	movs r6, #0x00
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	movs r5, #0xF1
	adds r5, r5, r7
	mov r9, r5
	movs r0, #0xFA
	adds r0, r0, r7
	mov r10, r0
	mov r4, r8
	movs r1, #0x80
	lsls r1, r1, #0x0B
	mov r8, r1
_081275BC:
	mov r2, r9
	ldrb r0, [r2, #0x00]
	mov r5, r10
	movs r1, #0x00
	ldsb r1, [r5, r1]
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _081275D8
	cmp r6, #0x00
	beq _081275D8
	cmp r6, #0x03
	bne _081275EE
_081275D8:
	ldr r0, [r7, #0x58]
	mov r1, r8
	lsrs r3, r1, #0x10
	ldr r1, [r4, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x0B
	movs r2, #0x00
	bl sub_8083860
_081275EE:
	adds r2, r4, #0x4
	mov r12, r2
	movs r3, #0xC0
	lsls r3, r3, #0x0C
	add r3, r8
	adds r2, r6, #0x1
	mov r5, r9
	ldrb r0, [r5, #0x00]
	mov r5, r10
	movs r1, #0x00
	ldsb r1, [r5, r1]
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08127616
	cmp r2, #0x00
	beq _08127616
	cmp r2, #0x03
	bne _0812762C
_08127616:
	ldr r0, [r7, #0x58]
	lsrs r3, r3, #0x10
	mov r2, r12
	ldr r1, [r2, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x0B
	movs r2, #0x00
	bl sub_8083860
_0812762C:
	adds r4, #0x08
	movs r5, #0xC0
	lsls r5, r5, #0x0D
	add r8, r5
	adds r6, #0x02
	cmp r6, #0x03
	ble _081275BC
_0812763A:
	ldr r0, [r7, #0x58]
	movs r2, #0xB0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x28]
	ldr r1, [r1, #0x04]
	movs r5, #0xCA
	lsls r5, r5, #0x01
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	movs r2, #0xF2
	lsls r2, r2, #0x04
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r0, _081276F0 @ =0x03001034
	ldr r1, [r7, #0x5C]
	movs r2, #0x8A
	lsls r2, r2, #0x04
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	mov r0, r10
	movs r2, #0x00
	ldsb r2, [r0, r2]
	lsls r0, r2, #0x03
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r0, r7, r0
	subs r5, #0x82
	adds r0, r0, r5
	ldrh r1, [r0, #0x00]
	ldr r0, _081276F4 @ =0x0000FFFF
	cmp r1, r0
	bne _08127700
	ldr r1, _081276F8 @ =0x083BADC0
	ldr r0, _081276FC @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r4, r7, #0x0
	adds r4, #0xB4
	ldr r1, [r7, #0x5C]
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x0B
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x17
	movs r3, #0x00
	bl sub_8199D78
	ldr r3, [r5, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x08
	bl sub_8199D5C
	adds r5, r7, #0x0
	adds r5, #0xBC
_081276CE:
	ldr r1, [r5, #0x00]
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	bne _081276E0
	ldrb r0, [r1, #0x01]
	cmp r0, #0x00
	bne _081276E0
	adds r0, r1, #0x2
	str r0, [r5, #0x00]
_081276E0:
	adds r0, r4, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081276CE
	b _08127776
	.byte 0x00, 0x00
_081276F0: .4byte 0x03001034
_081276F4: .4byte 0x0000FFFF
_081276F8: .4byte 0x083BADC0
_081276FC: .4byte 0x0300034C
_08127700:
	adds r0, r7, #0x0
	adds r0, #0xF1
	ldrb r0, [r0, #0x00]
	asrs r0, r2
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08127776
	adds r4, r7, #0x0
	adds r4, #0xB4
	ldr r1, [r7, #0x5C]
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x0B
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x17
	movs r3, #0x00
	bl sub_8199D78
	mov r0, r10
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r7, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	bl sub_8123308
	adds r3, r0, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x08
	bl sub_8199D5C
	adds r5, r7, #0x0
	adds r5, #0xBC
_08127758:
	ldr r1, [r5, #0x00]
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	bne _0812776A
	ldrb r0, [r1, #0x01]
	cmp r0, #0x00
	bne _0812776A
	adds r0, r1, #0x2
	str r0, [r5, #0x00]
_0812776A:
	adds r0, r4, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08127758
_08127776:
	ldr r0, [r7, #0x5C]
	movs r2, #0xB0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x28]
	ldr r1, [r1, #0x04]
	movs r5, #0xCA
	lsls r5, r5, #0x01
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	movs r2, #0x8A
	lsls r2, r2, #0x04
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	b _081278DC
_0812779E:
	mov r0, r10
	cmp r0, #0x02
	bne _0812780C
	ldr r4, _08127808 @ =0x03001034
	ldr r1, [r7, #0x58]
	movs r2, #0xF2
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r0, [r7, #0x60]
	movs r1, #0xB0
	lsls r1, r1, #0x01
	adds r6, r7, r1
	ldr r1, [r6, #0x00]
	ldr r1, [r1, #0x28]
	ldr r2, [r1, #0x04]
	movs r5, #0xCA
	lsls r5, r5, #0x01
	adds r2, r2, r5
	ldr r1, [r7, #0x58]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	bl sub_80E9384
	ldr r1, [r7, #0x5C]
	movs r2, #0x8A
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r0, [r7, #0x60]
	ldr r1, [r6, #0x00]
	ldr r1, [r1, #0x28]
	ldr r2, [r1, #0x04]
	adds r2, r2, r5
	ldr r1, [r7, #0x5C]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	bl sub_80E9384
	ldr r1, [r7, #0x54]
	movs r2, #0x80
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	b _081278DC
_08127808: .4byte 0x03001034
_0812780C:
	ldr r5, [sp, #0x018]
	str r5, [sp, #0x01C]
	mov r0, r10
	cmp r0, #0x03
	bne _081278DC
	ldr r0, [r7, #0x60]
	movs r4, #0xF2
	lsls r4, r4, #0x04
	adds r1, r4, #0x0
	bl sub_80E9414
	adds r1, r0, #0x0
	movs r2, #0xB0
	lsls r2, r2, #0x01
	adds r6, r7, r2
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x28]
	ldr r0, [r0, #0x04]
	movs r5, #0xCA
	lsls r5, r5, #0x01
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r7, #0x58]
	ldr r0, _0812790C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x04]
	adds r1, r1, r5
	ldr r0, [r7, #0x58]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	bl sub_8127E38
	movs r1, #0xE0
	lsls r1, r1, #0x08
	mov r9, r1
	mov r2, r9
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [r7, #0x54]
	movs r1, #0x0B
	str r1, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x01
	mov r8, r0
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x0B
	bl sub_8127DB4
	ldr r0, [r7, #0x60]
	movs r4, #0x8A
	lsls r4, r4, #0x04
	adds r1, r4, #0x0
	bl sub_80E9414
	adds r1, r0, #0x0
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x28]
	ldr r0, [r0, #0x04]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r7, #0x5C]
	ldr r2, _0812790C @ =0x03001034
	ldr r3, [r2, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x04]
	adds r1, r1, r5
	ldr r0, [r7, #0x5C]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	bl sub_8127E38
	mov r5, r9
	orrs r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r7, #0x54]
	mov r2, r10
	str r2, [sp, #0x000]
	str r0, [sp, #0x004]
	mov r5, r8
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x20
	movs r2, #0x78
	movs r3, #0x17
	bl sub_8127DB4
_081278DC:
	movs r0, #0x00
	ldr r1, [sp, #0x01C]
	strb r0, [r1, #0x00]
	ldr r2, _0812790C @ =0x03001034
	ldr r0, _08127910 @ =0x08198154
	ldr r1, _08127914 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, [r7, #0x54]
	ldr r1, _08127918 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl _call_via_r3
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0812790C: .4byte 0x03001034
_08127910: .4byte 0x08198154
_08127914: .4byte 0x081980D8
_08127918: .4byte 0x0600D000
	thumb_func_start sub_812791C
sub_812791C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _08127990 @ =0x00000157
	adds r1, r5, r0
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xF3
	strb r0, [r1, #0x00]
	movs r6, #0x00
	movs r2, #0x01
	mov r9, r2
	ldr r0, _08127990 @ =0x00000157
	adds r7, r5, r0
	adds r2, #0xFF
	adds r4, r5, r2
	mov r8, r6
	subs r0, #0x44
	mov r10, r0
_0812794C:
	adds r0, r5, #0x0
	adds r0, #0xF1
	ldrb r1, [r0, #0x00]
	asrs r1, r6
	mov r2, r9
	ands r1, r2
	cmp r1, #0x00
	bne _0812799C
	movs r2, #0xAA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r2, [r7, #0x00]
	adds r0, r0, r2
	strb r6, [r0, #0x00]
	ldrb r0, [r7, #0x00]
	adds r0, #0x01
	strb r0, [r7, #0x00]
	mov r0, sp
	strh r1, [r0, #0x00]
	adds r1, r4, #0x0
	ldr r2, _08127994 @ =0x0100000E
	bl CpuSet
	movs r0, #0x00
	strb r0, [r4, #0x17]
	ldr r0, [r5, #0x48]
	add r0, r8
	ldrb r0, [r0, #0x10]
	cmp r0, #0xFF
	bne _081279BA
	ldr r0, _08127998 @ =0x0000FFFF
	strh r0, [r4, #0x12]
	b _081279BA
	.byte 0x00, 0x00
_08127990: .4byte 0x00000157
_08127994: .4byte 0x0100000E
_08127998: .4byte 0x0000FFFF
_0812799C:
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	bl sub_8127BC8
	ldrh r0, [r4, #0x12]
	cmp r0, r10
	bne _081279BA
	adds r2, r5, #0x0
	adds r2, #0xF3
	mov r0, r9
	lsls r0, r6
	ldrb r1, [r2, #0x00]
	orrs r0, r1
	strb r0, [r2, #0x00]
_081279BA:
	adds r4, #0x1C
	movs r2, #0xDF
	lsls r2, r2, #0x03
	add r8, r2
	adds r6, #0x01
	cmp r6, #0x02
	ble _0812794C
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start tld_update_81279D8
tld_update_81279D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08127A80 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r2, r2, r1
	mov r8, r2
	ldr r6, [r2, #0x00]
	ldr r5, [r0, #0x14]
	ldrb r0, [r5, #0x00]
	cmp r0, #0x03
	bls _08127A76
	adds r0, r5, #0x0
	adds r0, #0xEE
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08127A02
	adds r0, r5, #0x0
	bl sub_8127238
_08127A02:
	adds r0, r5, #0x0
	adds r0, #0xF1
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xFA
	movs r4, #0x00
	ldsb r4, [r1, r4]
	asrs r0, r4
	movs r3, #0x01
	ands r0, r3
	cmp r0, #0x00
	beq _08127A42
	lsls r0, r4, #0x03
	subs r0, r0, r4
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r7, #0x8A
	lsls r7, r7, #0x01
	adds r0, r2, r7
	ldrb r1, [r0, #0x00]
	adds r7, #0x01
	adds r0, r2, r7
	ldrb r2, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xF3
	lsls r3, r4
	ldrb r0, [r0, #0x00]
	ands r3, r0
	adds r0, r6, #0x0
	bl sub_8122198
	adds r6, r0, #0x0
_08127A42:
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _08127A84 @ =0x03000D48
	ldr r4, _08127A88 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _08127A8C @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _08127A90 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_81270E4
	adds r6, r0, #0x0
	mov r7, r8
	str r6, [r7, #0x00]
_08127A76:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08127A80: .4byte 0x0300034C
_08127A84: .4byte 0x03000D48
_08127A88: .4byte 0x0203FFB8
_08127A8C: .4byte 0x00000A14
_08127A90: .4byte 0x03000D4C
	thumb_func_start tld_init_8127A94
tld_init_8127A94:
	push {r4, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _08127AAC @ =0x08CDC3C8
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
_08127AAC: .4byte 0x08CDC3C8
	thumb_func_start sub_8127AB0
sub_8127AB0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0xAE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	beq _08127ACC
	movs r0, #0x01
	b _08127AD4
_08127ACC:
	adds r0, r4, #0x0
	adds r0, #0xEF
	strb r1, [r0, #0x00]
	movs r0, #0x00
_08127AD4:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8127ADC
sub_8127ADC:
	push {r4, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0xAE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, _08127B1C @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r1, #0x04
	movs r3, #0x10
	bl sub_81151E4
	movs r0, #0x00
	movs r1, #0x00
	movs r2, #0x10
	bl sub_80193B4
	adds r4, #0xEF
	movs r0, #0x01
	strb r0, [r4, #0x00]
	add sp, #0x010
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08127B1C: .4byte 0x0000FFFF
	thumb_func_start sub_8127B20
sub_8127B20:
	push {r4, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	ldr r0, _08127B84 @ =0x0300034C
	ldr r1, _08127B88 @ =0x00000884
	adds r0, r0, r1
	movs r1, #0x01
	negs r1, r1
	str r1, [r0, #0x00]
	movs r1, #0xAE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldrh r2, [r1, #0x00]
	ldr r1, _08127B8C @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r3, #0x10
	bl sub_81151E4
	movs r0, #0x00
	movs r1, #0x1E
	movs r2, #0x00
	bl sub_8019308
	movs r0, #0x00
	movs r1, #0xFF
	movs r2, #0x10
	bl sub_80193B4
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r4, #0x0
	adds r0, #0xE6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xEF
	movs r0, #0x01
	strb r0, [r1, #0x00]
	add sp, #0x010
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08127B84: .4byte 0x0300034C
_08127B88: .4byte 0x00000884
_08127B8C: .4byte 0x0000FFFF
	.byte 0x30, 0xB5, 0x0D, 0x1C, 0x01, 0x1C, 0xFA, 0x31, 0x00, 0x24, 0x0C, 0x57, 0xE1, 0x00, 0x09, 0x1B
	.byte 0x89, 0x00, 0x42, 0x18, 0x8A, 0x23, 0x5B, 0x00, 0xD1, 0x18, 0x09, 0x78, 0x01, 0x33, 0xD2, 0x18
	.byte 0x12, 0x78, 0xF3, 0x30, 0x01, 0x23, 0xA3, 0x40, 0x00, 0x78, 0x03, 0x40, 0x28, 0x1C, 0xFA, 0xF7
	.byte 0xEB, 0xFA, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47

	.section .rodata
	.align 2, 0

	.byte 0x4D, 0x4D, 0x53, 0x42
	.byte 0x00, 0x00, 0x00, 0x00, 0x57, 0x4F, 0x52, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x54, 0x4D, 0x45, 0x56
	.byte 0x00, 0x00, 0x00, 0x00, 0x4F, 0x50, 0x45, 0x4E, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00
	.byte 0xE8, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00
	.byte 0x88, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00
