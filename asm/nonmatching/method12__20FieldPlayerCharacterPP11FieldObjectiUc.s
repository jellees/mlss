	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start method12__20FieldPlayerCharacterPP11FieldObjectiUc
method12__20FieldPlayerCharacterPP11FieldObjectiUc:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x084
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x000]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _0804A600
	bl _0804B008
_0804A600:
	ldr r3, _0804A684 @ =0x00000216
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804A612
	bl _0804B008
_0804A612:
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	ldr r5, _0804A688 @ =0x0000020D
	adds r0, r7, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	orrs r1, r0
	cmp r1, #0x00
	bne _0804A62A
	bl _0804B008
_0804A62A:
	ldr r1, _0804A68C @ =0x00000272
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r0
	str r1, [sp, #0x004]
	ldr r2, [r7, #0x10]
	str r2, [sp, #0x008]
	ldr r3, [r7, #0x14]
	str r3, [sp, #0x00C]
	adds r5, r3, #0x0
	ldr r2, [r7, #0x18]
	cmp r2, #0x00
	bgt _0804A652
	cmp r2, #0x00
	bge _0804A658
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _0804A658
_0804A652:
	ldr r0, [sp, #0x00C]
	adds r0, r0, r2
	str r0, [sp, #0x00C]
_0804A658:
	movs r1, #0x8E
	lsls r1, r1, #0x02
	adds r3, r7, r1
	movs r1, #0x00
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804A690
	adds r2, r5, r2
	adds r0, r1, #0x0
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	b _0804A692
	.byte 0x00, 0x00
_0804A684: .4byte 0x00000216
_0804A688: .4byte 0x0000020D
_0804A68C: .4byte 0x00000272
_0804A690:
	movs r0, #0x00
_0804A692:
	str r0, [sp, #0x010]
	ldr r2, _0804A794 @ =0x0000020D
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	movs r2, #0x02
	cmp r0, #0x00
	beq _0804A6A6
	adds r2, r6, #0x0
_0804A6A6:
	adds r3, r7, #0x0
	adds r3, #0x24
	str r3, [sp, #0x070]
	cmp r2, #0x00
	bne _0804A6B4
	bl _0804AFD4
_0804A6B4:
	adds r5, r7, #0x0
	adds r5, #0x54
	str r5, [sp, #0x014]
	ldr r0, _0804A798 @ =0x00000272
	adds r0, r7, r0
	str r0, [sp, #0x044]
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r1, r7, r1
	str r1, [sp, #0x04C]
_0804A6C8:
	adds r5, r4, #0x0
	ldm r5!, {r3}
	mov r8, r3
	str r5, [sp, #0x06C]
	mov r1, r8
	adds r1, #0x54
	ldr r3, [sp, #0x014]
	ldrb r0, [r3, #0x00]
	subs r5, r2, #0x1
	str r5, [sp, #0x074]
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bne _0804A6E6
	bl _0804AFC8
_0804A6E6:
	ldr r0, [sp, #0x000]
	cmp r0, #0x00
	beq _0804A700
	movs r0, #0x84
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0804A700
	bl _0804AFC8
_0804A700:
	movs r1, #0x00
	str r1, [sp, #0x018]
	subs r2, #0x01
	str r2, [sp, #0x074]
	adds r4, #0x04
	str r4, [sp, #0x06C]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r2, r7, r2
	str r2, [sp, #0x024]
	movs r3, #0x9C
	lsls r3, r3, #0x02
	adds r3, r7, r3
	str r3, [sp, #0x048]
_0804A71C:
	movs r0, #0x83
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r3, [r0, #0x00]
	movs r0, #0x01
	ands r0, r3
	cmp r0, #0x00
	bne _0804A730
	bl _0804AF8E
_0804A730:
	ldr r0, _0804A79C @ =0x00000216
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804A756
	mov r0, r8
	adds r0, #0x54
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _0804A756
	bl _0804AF8E
_0804A756:
	mov r0, r8
	adds r0, #0x29
	movs r1, #0x00
	ldsb r1, [r0, r1]
	str r0, [sp, #0x078]
	ldr r4, [sp, #0x014]
	ldrb r4, [r4, #0x00]
	cmp r1, r4
	bne _0804A76C
	bl _0804AF8E
_0804A76C:
	ldr r0, _0804A7A0 @ =0x0000020E
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _0804A7A4
	ldr r5, [sp, #0x024]
	ldrb r2, [r5, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1F
	ands r0, r1
	str r0, [sp, #0x01C]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1F
	lsls r2, r2, #0x1A
	b _0804A7BC
	.byte 0x00, 0x00
_0804A794: .4byte 0x0000020D
_0804A798: .4byte 0x00000272
_0804A79C: .4byte 0x00000216
_0804A7A0: .4byte 0x0000020E
_0804A7A4:
	ldr r1, _0804A7F4 @ =0x0000020D
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	lsls r1, r2, #0x1F
	lsrs r1, r1, #0x1F
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1F
	ands r0, r1
	str r0, [sp, #0x01C]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1F
	lsls r2, r2, #0x1E
_0804A7BC:
	lsrs r2, r2, #0x1F
	ands r2, r0
	str r2, [sp, #0x020]
	ldr r2, [sp, #0x01C]
	cmp r2, #0x00
	bne _0804A7CA
	b _0804AF8E
_0804A7CA:
	ldr r0, _0804A7F8 @ =0x00000272
	add r0, r8
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x028]
	lsrs r1, r0, #0x01
	mov r3, r8
	ldr r0, [r3, #0x0C]
	subs r0, r0, r1
	str r0, [sp, #0x040]
	ldr r4, [sp, #0x044]
	ldrh r4, [r4, #0x00]
	str r4, [sp, #0x034]
	ldr r5, [sp, #0x004]
	mov r10, r5
	cmp r0, r10
	bge _0804A7FC
	ldr r1, [sp, #0x028]
	adds r0, r0, r1
	subs r0, r0, r5
	b _0804A804
	.byte 0x00, 0x00
_0804A7F4: .4byte 0x0000020D
_0804A7F8: .4byte 0x00000272
_0804A7FC:
	ldr r0, [sp, #0x034]
	add r0, r10
	ldr r2, [sp, #0x040]
	subs r0, r0, r2
_0804A804:
	cmp r0, #0x00
	bgt _0804A80A
	b _0804AF8E
_0804A80A:
	movs r0, #0x9C
	lsls r0, r0, #0x02
	add r0, r8
	movs r4, #0x00
	ldsh r3, [r0, r4]
	str r3, [sp, #0x030]
	ldr r1, _0804A844 @ =0x00000276
	mov r5, r8
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x02C]
	ldr r0, [r5, #0x10]
	adds r5, r0, r3
	ldr r0, [sp, #0x048]
	movs r2, #0x00
	ldsh r0, [r0, r2]
	str r0, [sp, #0x03C]
	adds r1, r7, r1
	ldrh r1, [r1, #0x00]
	str r1, [sp, #0x038]
	ldr r3, [sp, #0x008]
	adds r3, r3, r0
	mov r9, r3
	cmp r5, r9
	ble _0804A848
	ldr r4, [sp, #0x02C]
	subs r0, r5, r4
	subs r0, r3, r0
	b _0804A850
_0804A844: .4byte 0x00000276
_0804A848:
	mov r1, r9
	ldr r2, [sp, #0x038]
	subs r0, r1, r2
	subs r0, r5, r0
_0804A850:
	cmp r0, #0x00
	bgt _0804A856
	b _0804AF8E
_0804A856:
	ldr r4, [sp, #0x00C]
	mov r3, r8
	ldr r2, [r3, #0x14]
	ldr r1, [r3, #0x18]
	cmp r1, #0x00
	bgt _0804A86C
	cmp r1, #0x00
	bge _0804A86E
	ldr r0, [r3, #0x40]
	cmp r0, #0x00
	bge _0804A86E
_0804A86C:
	adds r2, r2, r1
_0804A86E:
	adds r3, r2, #0x0
	cmp r3, r4
	bgt _0804A8BC
	movs r0, #0x9D
	lsls r0, r0, #0x02
	add r0, r8
	ldrh r0, [r0, #0x00]
	adds r1, r3, r0
	subs r6, r1, r4
	cmp r6, #0x00
	bgt _0804A8CA
	ldr r0, [r7, #0x14]
	cmp r1, r0
	blt _0804A8C4
	movs r0, #0x8E
	lsls r0, r0, #0x02
	adds r2, r7, r0
	movs r1, #0x00
	ldsb r1, [r2, r1]
	mov r12, r1
	negs r1, r6
	movs r0, #0x01
	negs r0, r0
	cmp r12, r0
	beq _0804A8AC
	ldr r0, [sp, #0x010]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r12, r0
	cmp r1, r12
	bge _0804A8C4
_0804A8AC:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	mov r0, r8
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
	b _0804A8C4
_0804A8BC:
	ldr r1, [sp, #0x04C]
	ldrh r0, [r1, #0x00]
	adds r0, r4, r0
	subs r6, r0, r3
_0804A8C4:
	cmp r6, #0x00
	bge _0804A8CA
	b _0804AF8E
_0804A8CA:
	movs r2, #0x00
	str r2, [sp, #0x050]
	movs r0, #0x00
	str r0, [sp, #0x054]
	movs r1, #0x00
	str r1, [sp, #0x058]
	str r2, [sp, #0x05C]
	adds r0, r7, #0x0
	adds r0, #0x29
	movs r2, #0x00
	ldsb r2, [r0, r2]
	mov r1, r8
	adds r1, #0x54
	str r1, [sp, #0x07C]
	mov r12, r0
	ldrb r0, [r1, #0x00]
	cmp r2, r0
	bne _0804A8F8
	movs r1, #0x02
	str r1, [sp, #0x058]
	movs r2, #0x01
	str r2, [sp, #0x05C]
	b _0804A928
_0804A8F8:
	ldr r1, [r7, #0x3C]
	ldr r0, [r7, #0x40]
	adds r1, r1, r0
	ldr r2, [sp, #0x04C]
	ldrh r0, [r2, #0x00]
	adds r0, r1, r0
	cmp r0, r3
	bgt _0804A912
	movs r0, #0x01
	str r0, [sp, #0x058]
	movs r1, #0x02
	str r1, [sp, #0x05C]
	b _0804A928
_0804A912:
	movs r0, #0x9D
	lsls r0, r0, #0x02
	add r0, r8
	ldrh r0, [r0, #0x00]
	adds r0, r3, r0
	cmp r1, r0
	blt _0804A928
	movs r2, #0x02
	str r2, [sp, #0x058]
	movs r0, #0x01
	str r0, [sp, #0x05C]
_0804A928:
	ldr r0, _0804A980 @ =0x0000020E
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0804A9A2
	ldr r1, [sp, #0x058]
	cmp r1, #0x02
	bne _0804A9A2
	mov r2, r12
	movs r0, #0x00
	ldsb r0, [r2, r0]
	ldr r3, [sp, #0x07C]
	ldrb r3, [r3, #0x00]
	cmp r0, r3
	beq _0804A954
	ldr r0, [r7, #0x18]
	adds r0, r0, r6
	ldr r1, _0804A984 @ =0xFFFFFF00
	ands r0, r1
	str r0, [r7, #0x18]
_0804A954:
	ldr r4, [sp, #0x07C]
	ldrb r1, [r4, #0x00]
	movs r5, #0x8E
	lsls r5, r5, #0x02
	adds r0, r7, r5
	strb r1, [r0, #0x00]
	ldrb r0, [r4, #0x00]
	strb r0, [r7, #0x01]
	movs r0, #0x00
	str r0, [sp, #0x010]
	ldr r1, _0804A988 @ =0x000002B5
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804A98C
	adds r0, r7, #0x0
	bl sub_8046A10__11FieldObject
	b _0804AEC4
	.byte 0x00, 0x00
_0804A980: .4byte 0x0000020E
_0804A984: .4byte 0xFFFFFF00
_0804A988: .4byte 0x000002B5
_0804A98C:
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0804A99A
	b _0804AEC4
_0804A99A:
	adds r0, r7, #0x0
	bl land__11FieldObject
	b _0804AEC4
_0804A9A2:
	ldr r0, [sp, #0x058]
	cmp r0, #0x01
	bne _0804A9F4
	adds r0, r7, #0x0
	adds r0, #0x4C
	ldrh r1, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x80
	bne _0804A9BC
	b _0804AEC4
_0804A9BC:
	ldr r3, [sp, #0x078]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	ldr r4, [sp, #0x014]
	ldrb r4, [r4, #0x00]
	cmp r0, r4
	bne _0804A9CC
	b _0804AEC4
_0804A9CC:
	ldr r0, [r7, #0x18]
	subs r0, r0, r6
	str r0, [r7, #0x18]
	movs r5, #0x97
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0804A9E0
	b _0804AEC4
_0804A9E0:
	movs r0, #0x96
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0804A9EE
	b _0804AEC4
_0804A9EE:
	negs r0, r0
	str r0, [r1, #0x00]
	b _0804AEC4
_0804A9F4:
	movs r1, #0x00
	str r1, [sp, #0x060]
	ldr r0, _0804AA78 @ =0x0000020E
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0804AA08
	b _0804AB4A
_0804AA08:
	cmp r3, r4
	bgt _0804AA88
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804AA88
	ldr r4, _0804AA7C @ =0x08198220
	ldr r2, _0804AA80 @ =0x0819832C
	subs r4, r2, r4
	ldr r3, _0804AA84 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r5, [sp, #0x028]
	adds r0, r5, #0x0
	muls r0, r6
	movs r5, #0x9D
	lsls r5, r5, #0x02
	add r5, r8
	ldrh r1, [r5, #0x00]
	bl _call_via_r2
	str r0, [sp, #0x028]
	lsrs r0, r0, #0x1F
	ldr r1, [sp, #0x028]
	adds r0, r1, r0
	asrs r0, r0, #0x01
	mov r2, r8
	ldr r1, [r2, #0x0C]
	subs r1, r1, r0
	str r1, [sp, #0x040]
	ldr r3, _0804AA84 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x02C]
	adds r0, r1, #0x0
	muls r0, r6
	ldrh r1, [r5, #0x00]
	bl _call_via_r2
	str r0, [sp, #0x02C]
	ldr r3, _0804AA84 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r4, [sp, #0x030]
	adds r0, r4, #0x0
	muls r0, r6
	ldrh r1, [r5, #0x00]
	bl _call_via_r2
	str r0, [sp, #0x030]
	mov r5, r8
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #0x030]
	adds r5, r0, r1
	movs r2, #0x01
	str r2, [sp, #0x060]
	b _0804AB02
_0804AA78: .4byte 0x0000020E
_0804AA7C: .4byte 0x08198220
_0804AA80: .4byte 0x0819832C
_0804AA84: .4byte 0x03001038
_0804AA88:
	ldr r0, [sp, #0x058]
	cmp r0, #0x00
	bne _0804AAFC
	cmp r4, r3
	bgt _0804AAFC
	mov r1, r8
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	ble _0804AAFC
	ldr r4, _0804AB14 @ =0x08198220
	ldr r2, _0804AB18 @ =0x0819832C
	subs r4, r2, r4
	ldr r3, _0804AB1C @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x034]
	adds r0, r1, #0x0
	muls r0, r6
	ldr r3, [sp, #0x04C]
	ldrh r1, [r3, #0x00]
	bl _call_via_r2
	str r0, [sp, #0x034]
	lsrs r0, r0, #0x1F
	ldr r1, [sp, #0x034]
	adds r0, r1, r0
	asrs r0, r0, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r0
	mov r10, r1
	ldr r3, _0804AB1C @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x038]
	adds r0, r1, #0x0
	muls r0, r6
	ldr r3, [sp, #0x04C]
	ldrh r1, [r3, #0x00]
	bl _call_via_r2
	str r0, [sp, #0x038]
	ldr r0, _0804AB1C @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x03C]
	adds r0, r1, #0x0
	muls r0, r6
	ldr r3, [sp, #0x04C]
	ldrh r1, [r3, #0x00]
	bl _call_via_r2
	str r0, [sp, #0x03C]
	ldr r0, [r7, #0x10]
	ldr r4, [sp, #0x03C]
	adds r0, r0, r4
	mov r9, r0
	movs r0, #0x02
	str r0, [sp, #0x060]
_0804AAFC:
	ldr r1, [sp, #0x060]
	cmp r1, #0x00
	beq _0804AB4A
_0804AB02:
	ldr r2, [sp, #0x040]
	cmp r2, r10
	bge _0804AB20
	ldr r3, [sp, #0x028]
	adds r0, r2, r3
	mov r4, r10
	subs r0, r0, r4
	b _0804AB28
	.byte 0x00, 0x00
_0804AB14: .4byte 0x08198220
_0804AB18: .4byte 0x0819832C
_0804AB1C: .4byte 0x03001038
_0804AB20:
	ldr r0, [sp, #0x034]
	add r0, r10
	ldr r1, [sp, #0x040]
	subs r0, r0, r1
_0804AB28:
	cmp r0, #0x00
	bgt _0804AB2E
	b _0804AF8E
_0804AB2E:
	cmp r5, r9
	ble _0804AB3C
	ldr r2, [sp, #0x02C]
	subs r0, r5, r2
	mov r3, r9
	subs r0, r3, r0
	b _0804AB44
_0804AB3C:
	mov r4, r9
	ldr r1, [sp, #0x038]
	subs r0, r4, r1
	subs r0, r5, r0
_0804AB44:
	cmp r0, #0x00
	bgt _0804AB4A
	b _0804AF8E
_0804AB4A:
	ldr r1, [r7, #0x34]
	mov r2, r8
	ldr r0, [r2, #0x34]
	ldr r3, [r7, #0x38]
	str r3, [sp, #0x064]
	ldr r4, [r2, #0x38]
	str r4, [sp, #0x068]
	cmp r1, r0
	bne _0804AB98
	cmp r3, r4
	bne _0804AB98
	ldr r5, [sp, #0x070]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x01
	bhi _0804AB76
	movs r0, #0x01
	str r0, [sp, #0x050]
	movs r1, #0x04
	str r1, [sp, #0x054]
	b _0804ACC2
_0804AB76:
	cmp r0, #0x02
	bhi _0804AB7C
	b _0804AC9C
_0804AB7C:
	cmp r0, #0x05
	bhi _0804AB8A
	movs r4, #0x04
	str r4, [sp, #0x050]
	movs r5, #0x01
	str r5, [sp, #0x054]
	b _0804ACC2
_0804AB8A:
	cmp r0, #0x06
	bls _0804AC80
	movs r2, #0x01
	str r2, [sp, #0x050]
	movs r3, #0x04
	str r3, [sp, #0x054]
	b _0804ACC2
_0804AB98:
	ldr r4, [sp, #0x038]
	mov r9, r4
	ldr r5, [sp, #0x02C]
	mov r10, r5
	ldr r3, [sp, #0x03C]
	ldr r6, [sp, #0x030]
	ldr r0, [sp, #0x060]
	cmp r0, #0x01
	bne _0804AC10
	ldr r2, [r7, #0x3C]
	ldr r0, [r7, #0x40]
	adds r2, r2, r0
	mov r1, r8
	ldr r4, [r1, #0x3C]
	ldr r0, [r1, #0x40]
	adds r4, r4, r0
	movs r6, #0x9D
	lsls r6, r6, #0x02
	add r6, r8
	ldrh r1, [r6, #0x00]
	adds r4, r4, r1
	subs r4, r4, r2
	ldr r5, _0804AC00 @ =0x08198220
	ldr r2, _0804AC04 @ =0x0819832C
	subs r5, r2, r5
	ldr r0, _0804AC08 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	ldr r0, _0804AC0C @ =0x00000276
	add r0, r8
	ldrh r0, [r0, #0x00]
	muls r0, r4
	str r3, [sp, #0x080]
	bl _call_via_r2
	mov r10, r0
	ldr r1, _0804AC08 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	movs r0, #0x9C
	lsls r0, r0, #0x02
	add r0, r8
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r0, r4
	ldrh r1, [r6, #0x00]
	bl _call_via_r2
	adds r6, r0, #0x0
	ldr r3, [sp, #0x080]
	b _0804AC5E
	.byte 0x00, 0x00
_0804AC00: .4byte 0x08198220
_0804AC04: .4byte 0x0819832C
_0804AC08: .4byte 0x03001038
_0804AC0C: .4byte 0x00000276
_0804AC10:
	ldr r0, [sp, #0x060]
	cmp r0, #0x02
	bne _0804AC5E
	ldr r4, [r7, #0x3C]
	ldr r0, [r7, #0x40]
	adds r4, r4, r0
	mov r1, r8
	ldr r2, [r1, #0x3C]
	ldr r0, [r1, #0x40]
	adds r2, r2, r0
	ldr r3, [sp, #0x04C]
	ldrh r1, [r3, #0x00]
	adds r4, r4, r1
	subs r4, r4, r2
	ldr r5, _0804AC8C @ =0x08198220
	ldr r0, _0804AC90 @ =0x0819832C
	subs r5, r0, r5
	ldr r3, _0804AC94 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	ldr r3, _0804AC98 @ =0x00000276
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	muls r0, r4
	bl _call_via_r2
	mov r9, r0
	ldr r0, _0804AC94 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	ldr r1, [sp, #0x048]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	muls r0, r4
	ldr r4, [sp, #0x04C]
	ldrh r1, [r4, #0x00]
	bl _call_via_r2
	adds r3, r0, #0x0
_0804AC5E:
	ldr r5, [sp, #0x064]
	adds r2, r5, r3
	mov r1, r9
	subs r0, r2, r1
	ldr r3, [sp, #0x068]
	adds r1, r3, r6
	cmp r0, r1
	bge _0804ACA6
	mov r4, r10
	subs r0, r1, r4
	cmp r2, r0
	ble _0804ACA6
	ldr r1, [r7, #0x34]
	mov r5, r8
	ldr r0, [r5, #0x34]
	cmp r1, r0
	bge _0804AC9C
_0804AC80:
	movs r0, #0x02
	str r0, [sp, #0x050]
	movs r1, #0x08
	str r1, [sp, #0x054]
	b _0804ACC2
	.byte 0x00, 0x00
_0804AC8C: .4byte 0x08198220
_0804AC90: .4byte 0x0819832C
_0804AC94: .4byte 0x03001038
_0804AC98: .4byte 0x00000276
_0804AC9C:
	movs r2, #0x08
	str r2, [sp, #0x050]
	movs r3, #0x02
	str r3, [sp, #0x054]
	b _0804ACC2
_0804ACA6:
	ldr r1, [r7, #0x38]
	mov r4, r8
	ldr r0, [r4, #0x38]
	cmp r1, r0
	ble _0804ACBA
	movs r5, #0x01
	str r5, [sp, #0x050]
	movs r0, #0x04
	str r0, [sp, #0x054]
	b _0804ACC2
_0804ACBA:
	movs r1, #0x04
	str r1, [sp, #0x050]
	movs r2, #0x01
	str r2, [sp, #0x054]
_0804ACC2:
	ldr r3, [sp, #0x050]
	cmp r3, #0x08
	bne _0804AD44
	ldr r4, [r7, #0x0C]
	ldr r2, [r7, #0x34]
	cmp r4, r2
	blt _0804ACE0
	ldr r5, [sp, #0x060]
	cmp r5, #0x01
	beq _0804ACD8
	b _0804AEC4
_0804ACD8:
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bgt _0804ACE0
	b _0804AEC4
_0804ACE0:
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bne _0804AD00
	ldr r1, _0804AD18 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804AD20
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0804AD00
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804AD20
_0804AD00:
	ldr r0, _0804AD1C @ =0x00000272
	add r0, r8
	ldrh r0, [r0, #0x00]
	ldr r2, [sp, #0x044]
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r3, r8
	ldr r1, [r3, #0x0C]
	adds r3, r1, r0
	adds r2, r1, #0x0
	b _0804AD26
_0804AD18: .4byte 0x0000020D
_0804AD1C: .4byte 0x00000272
_0804AD20:
	adds r3, r2, #0x0
	mov r5, r8
	ldr r2, [r5, #0x0C]
_0804AD26:
	ldr r1, [sp, #0x028]
	ldr r5, [sp, #0x034]
	adds r0, r1, r5
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r0, r2, r0
	cmp r0, r3
	ble _0804AD3A
	adds r0, r3, #0x0
_0804AD3A:
	cmp r0, r4
	bgt _0804AD40
	b _0804AEC4
_0804AD40:
	str r0, [r7, #0x0C]
	b _0804AEC4
_0804AD44:
	ldr r0, [sp, #0x050]
	cmp r0, #0x02
	bne _0804ADC8
	ldr r4, [r7, #0x0C]
	ldr r2, [r7, #0x34]
	cmp r4, r2
	bgt _0804AD62
	ldr r1, [sp, #0x060]
	cmp r1, #0x01
	beq _0804AD5A
	b _0804AEC4
_0804AD5A:
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bgt _0804AD62
	b _0804AEC4
_0804AD62:
	ldr r3, [sp, #0x020]
	cmp r3, #0x00
	bne _0804AD82
	ldr r5, _0804AD9C @ =0x0000020D
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804ADA4
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0804AD82
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804ADA4
_0804AD82:
	ldr r0, _0804ADA0 @ =0x00000272
	add r0, r8
	ldrh r0, [r0, #0x00]
	ldr r2, [sp, #0x044]
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r3, r8
	ldr r1, [r3, #0x0C]
	subs r3, r1, r0
	adds r2, r1, #0x0
	b _0804ADAA
	.byte 0x00, 0x00
_0804AD9C: .4byte 0x0000020D
_0804ADA0: .4byte 0x00000272
_0804ADA4:
	adds r3, r2, #0x0
	mov r5, r8
	ldr r2, [r5, #0x0C]
_0804ADAA:
	ldr r1, [sp, #0x028]
	ldr r5, [sp, #0x034]
	adds r0, r1, r5
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r0, r2, r0
	cmp r0, r3
	bge _0804ADBE
	adds r0, r3, #0x0
_0804ADBE:
	cmp r0, r4
	blt _0804ADC4
	b _0804AEC4
_0804ADC4:
	str r0, [r7, #0x0C]
	b _0804AEC4
_0804ADC8:
	ldr r0, [sp, #0x050]
	cmp r0, #0x01
	bne _0804AE48
	ldr r3, [r7, #0x10]
	ldr r2, [r7, #0x38]
	cmp r3, r2
	blt _0804ADE2
	ldr r1, [sp, #0x060]
	cmp r1, #0x01
	bne _0804AEC4
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804AEC4
_0804ADE2:
	ldr r4, [sp, #0x020]
	cmp r4, #0x00
	bne _0804AE02
	ldr r5, _0804AE24 @ =0x0000020D
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804AE2C
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0804AE02
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804AE2C
_0804AE02:
	movs r0, #0x9C
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, _0804AE28 @ =0x00000276
	adds r1, r7, r2
	movs r4, #0x00
	ldsh r0, [r0, r4]
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r5, [sp, #0x048]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	subs r0, r0, r1
	mov r4, r8
	ldr r1, [r4, #0x10]
	adds r2, r1, r0
	b _0804AE30
_0804AE24: .4byte 0x0000020D
_0804AE28: .4byte 0x00000276
_0804AE2C:
	mov r5, r8
	ldr r1, [r5, #0x10]
_0804AE30:
	ldr r4, [sp, #0x030]
	ldr r5, [sp, #0x038]
	adds r0, r4, r5
	ldr r4, [sp, #0x03C]
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	ble _0804AE42
	adds r0, r2, #0x0
_0804AE42:
	cmp r0, r3
	ble _0804AEC4
	b _0804AEC2
_0804AE48:
	ldr r3, [r7, #0x10]
	ldr r2, [r7, #0x38]
	cmp r3, r2
	bgt _0804AE5C
	ldr r5, [sp, #0x060]
	cmp r5, #0x01
	bne _0804AEC4
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804AEC4
_0804AE5C:
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bne _0804AE7C
	ldr r1, _0804AEA0 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804AEA8
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0804AE7C
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	ble _0804AEA8
_0804AE7C:
	movs r0, #0x9C
	lsls r0, r0, #0x02
	add r0, r8
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, _0804AEA4 @ =0x00000276
	add r0, r8
	ldrh r0, [r0, #0x00]
	subs r1, r1, r0
	ldr r4, [sp, #0x048]
	movs r5, #0x00
	ldsh r0, [r4, r5]
	subs r1, r1, r0
	mov r2, r8
	ldr r0, [r2, #0x10]
	adds r2, r0, r1
	adds r1, r0, #0x0
	b _0804AEAC
_0804AEA0: .4byte 0x0000020D
_0804AEA4: .4byte 0x00000276
_0804AEA8:
	mov r4, r8
	ldr r1, [r4, #0x10]
_0804AEAC:
	ldr r5, [sp, #0x030]
	ldr r4, [sp, #0x02C]
	subs r0, r5, r4
	ldr r5, [sp, #0x03C]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	bge _0804AEBE
	adds r0, r2, #0x0
_0804AEBE:
	cmp r0, r3
	bge _0804AEC4
_0804AEC2:
	str r0, [r7, #0x10]
_0804AEC4:
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	beq _0804AF38
	ldr r1, [sp, #0x070]
	ldrb r2, [r1, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	ldr r3, [sp, #0x050]
	orrs r0, r3
	lsls r0, r0, #0x03
	movs r4, #0x79
	negs r4, r4
	adds r1, r4, #0x0
	ands r2, r1
	orrs r2, r0
	ldr r5, [sp, #0x070]
	strb r2, [r5, #0x00]
	ldrh r2, [r7, #0x24]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1E
	ldr r1, [sp, #0x058]
	orrs r0, r1
	lsls r0, r0, #0x07
	ldr r3, _0804AF24 @ =0xFFFFFE7F
	adds r1, r3, #0x0
	ands r2, r1
	orrs r2, r0
	strh r2, [r7, #0x24]
	movs r0, #0x00
	ldsb r0, [r7, r0]
	adds r4, #0x78
	cmp r0, r4
	bne _0804AF0C
	ldr r5, [sp, #0x07C]
	ldrb r0, [r5, #0x00]
	strb r0, [r7, #0x00]
_0804AF0C:
	ldr r0, _0804AF28 @ =0x0000020E
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _0804AF2C
	adds r2, r7, #0x0
	adds r2, #0x25
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	b _0804AF34
_0804AF24: .4byte 0xFFFFFE7F
_0804AF28: .4byte 0x0000020E
_0804AF2C:
	adds r2, r7, #0x0
	adds r2, #0x25
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
_0804AF34:
	orrs r0, r1
	strb r0, [r2, #0x00]
_0804AF38:
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	beq _0804AF8E
	mov r3, r8
	adds r3, #0x24
	ldrb r2, [r3, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	ldr r1, [sp, #0x054]
	orrs r0, r1
	lsls r0, r0, #0x03
	movs r4, #0x79
	negs r4, r4
	adds r1, r4, #0x0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	mov r5, r8
	ldrh r2, [r5, #0x24]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1E
	ldr r1, [sp, #0x05C]
	orrs r0, r1
	lsls r0, r0, #0x07
	ldr r3, _0804B018 @ =0xFFFFFE7F
	adds r1, r3, #0x0
	ands r2, r1
	orrs r2, r0
	strh r2, [r5, #0x24]
	movs r0, #0x00
	ldsb r0, [r7, r0]
	adds r4, #0x78
	cmp r0, r4
	bne _0804AF82
	ldr r5, [sp, #0x07C]
	ldrb r0, [r5, #0x00]
	strb r0, [r7, #0x00]
_0804AF82:
	mov r2, r8
	adds r2, #0x25
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
_0804AF8E:
	ldr r0, _0804B01C @ =0x0000020E
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _0804AFC8
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r8
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0804AFC8
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804AFC8
	mov r8, r3
	ldr r2, [sp, #0x018]
	adds r2, #0x01
	str r2, [sp, #0x018]
	cmp r2, #0x01
	bgt _0804AFC8
	bl _0804A71C
_0804AFC8:
	ldr r2, [sp, #0x074]
	ldr r4, [sp, #0x06C]
	cmp r2, #0x00
	beq _0804AFD4
	bl _0804A6C8
_0804AFD4:
	ldr r3, [sp, #0x070]
	ldrb r1, [r3, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	beq _0804B008
	ldr r4, _0804B020 @ =0x000002B5
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _0804B008
	ldr r5, _0804B024 @ =0x000002B6
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804B008
	adds r0, r7, #0x0
	bl sub_8046980__11FieldObject
	adds r0, r7, #0x0
	bl sub_8046A10__11FieldObject
_0804B008:
	add sp, #0x084
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804B018: .4byte 0xFFFFFE7F
_0804B01C: .4byte 0x0000020E
_0804B020: .4byte 0x000002B5
_0804B024: .4byte 0x000002B6
