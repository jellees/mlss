	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80575C8
sub_80575C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	adds r4, r3, #0x0
	ldr r5, [sp, #0x048]
	ldr r6, [sp, #0x04C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl __7ProcessUcPc
	ldr r0, _08057728 @ =0x08CDC288
	str r0, [r7, #0x18]
	ldr r1, _0805772C @ =0x0000057C
	adds r0, r7, r1
	ldr r2, [sp, #0x050]
	str r2, [r0, #0x00]
	movs r3, #0x00
	mov r8, r3
	ldr r0, _08057730 @ =0x0000FFFB
	strh r0, [r7, #0x1C]
	strh r4, [r7, #0x1E]
	strh r5, [r7, #0x22]
	strh r6, [r7, #0x24]
	adds r5, r7, #0x0
	adds r5, #0x94
	str r5, [sp, #0x004]
	movs r4, #0xC0
	lsls r4, r4, #0x06
	ldr r2, _08057734 @ =0x081E2794
	adds r0, r4, #0x0
	movs r1, #0x01
	bl __vn__FUliPcUc
	str r0, [r5, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x98
	str r0, [sp, #0x008]
	ldr r2, _08057738 @ =0x081E279C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x00]
	movs r2, #0xA8
	adds r2, r2, r7
	mov r10, r2
	movs r0, #0xA0
	lsls r0, r0, #0x06
	ldr r2, _0805773C @ =0x081E27A4
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	mov r3, r10
	str r0, [r3, #0x00]
	movs r5, #0x9C
	adds r5, r5, r7
	mov r9, r5
	movs r0, #0x80
	lsls r0, r0, #0x05
	ldr r2, _08057740 @ =0x081E27AC
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r5, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xA0
	movs r0, #0x80
	lsls r0, r0, #0x03
	ldr r2, _08057744 @ =0x081E27B4
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r6, #0x00]
	adds r5, r7, #0x0
	adds r5, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x06
	ldr r2, _08057748 @ =0x081E27BC
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r5, #0x00]
	mov r0, r8
	str r0, [sp, #0x000]
	ldr r2, [sp, #0x004]
	ldr r1, [r2, #0x00]
	ldr r4, _0805774C @ =0x01000C00
	mov r0, sp
	adds r2, r4, #0x0
	bl CpuFastSet
	mov r3, r8
	str r3, [sp, #0x000]
	ldr r0, [sp, #0x008]
	ldr r1, [r0, #0x00]
	mov r0, sp
	adds r2, r4, #0x0
	bl CpuFastSet
	mov r1, r8
	str r1, [sp, #0x000]
	mov r2, r10
	ldr r1, [r2, #0x00]
	ldr r2, _08057750 @ =0x01000A00
	mov r0, sp
	bl CpuFastSet
	mov r3, r8
	str r3, [sp, #0x000]
	mov r0, r9
	ldr r1, [r0, #0x00]
	ldr r2, _08057754 @ =0x01000400
	mov r0, sp
	bl CpuFastSet
	mov r1, r8
	str r1, [sp, #0x000]
	ldr r1, [r6, #0x00]
	ldr r2, _08057758 @ =0x01000100
	mov r0, sp
	bl CpuFastSet
	mov r2, r8
	str r2, [sp, #0x000]
	ldr r1, [r5, #0x00]
	ldr r2, _0805775C @ =0x01000800
	mov r0, sp
	bl CpuFastSet
	ldrh r0, [r7, #0x1E]
	ldr r1, _08057760 @ =0x00007FFF
	ands r1, r0
	adds r0, r7, #0x0
	bl sub_8059EC8
	adds r0, r7, #0x0
	adds r0, #0x76
	mov r3, r8
	strh r3, [r0, #0x00]
	adds r0, #0x06
	strh r3, [r0, #0x00]
	adds r0, #0x10
	movs r5, #0x00
	strb r5, [r0, #0x00]
	ldr r0, _08057764 @ =0x03000DD0
	ldrh r1, [r0, #0x12]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08057768
	movs r0, #0x70
	ands r0, r1
	lsrs r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x05
	adds r0, r7, #0x0
	adds r0, #0x74
	strh r1, [r0, #0x00]
	b _08057778
	.byte 0x00, 0x00
_08057728: .4byte 0x08CDC288
_0805772C: .4byte 0x0000057C
_08057730: .4byte 0x0000FFFB
_08057734: .4byte 0x081E2794
_08057738: .4byte 0x081E279C
_0805773C: .4byte 0x081E27A4
_08057740: .4byte 0x081E27AC
_08057744: .4byte 0x081E27B4
_08057748: .4byte 0x081E27BC
_0805774C: .4byte 0x01000C00
_08057750: .4byte 0x01000A00
_08057754: .4byte 0x01000400
_08057758: .4byte 0x01000100
_0805775C: .4byte 0x01000800
_08057760: .4byte 0x00007FFF
_08057764: .4byte 0x03000DD0
_08057768:
	movs r0, #0x70
	ands r0, r1
	lsrs r1, r0, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x05
	adds r1, r7, #0x0
	adds r1, #0x74
	strh r0, [r1, #0x00]
_08057778:
	ldr r1, _0805778C @ =0x03000DD0
	ldrh r2, [r1, #0x12]
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	beq _08057790
	movs r0, #0x07
	ands r0, r2
	negs r0, r0
	b _08057794
_0805778C: .4byte 0x03000DD0
_08057790:
	movs r0, #0x07
	ands r0, r2
_08057794:
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x06
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r1, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x8B
	movs r0, #0x00
	strb r0, [r2, #0x00]
	ldr r0, _08057800 @ =0x03000DD0
	ldrh r3, [r0, #0x0C]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #0x05
	cmp r0, r1
	bne _080577C4
	movs r1, #0x80
	movs r0, #0x07
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_080577C4:
	ldr r3, _08057800 @ =0x03000DD0
	ldrh r1, [r3, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080577DA
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_080577DA:
	ldr r5, _08057800 @ =0x03000DD0
	ldrh r1, [r5, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08057804
	movs r0, #0xE0
	lsls r0, r0, #0x07
	ands r0, r1
	lsrs r0, r0, #0x0C
	lsls r1, r0, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x05
	adds r1, r7, #0x0
	adds r1, #0x72
	strh r0, [r1, #0x00]
	str r1, [sp, #0x010]
	b _0805781A
_08057800: .4byte 0x03000DD0
_08057804:
	movs r0, #0xE0
	lsls r0, r0, #0x07
	ands r0, r1
	lsrs r0, r0, #0x0C
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x05
	adds r0, r7, #0x0
	adds r0, #0x72
	strh r1, [r0, #0x00]
	str r0, [sp, #0x010]
_0805781A:
	ldr r0, _08057834 @ =0x03000DD0
	ldrh r1, [r0, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08057838
	movs r0, #0xE0
	lsls r0, r0, #0x03
	ands r0, r1
	lsrs r0, r0, #0x08
	negs r0, r0
	b _08057840
_08057834: .4byte 0x03000DD0
_08057838:
	movs r0, #0xE0
	lsls r0, r0, #0x03
	ands r0, r1
	lsrs r0, r0, #0x08
_08057840:
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x06
	adds r0, r7, #0x0
	adds r0, #0x78
	strh r1, [r0, #0x00]
	str r0, [sp, #0x014]
	adds r2, r7, #0x0
	adds r2, #0x8A
	movs r0, #0x00
	strb r0, [r2, #0x00]
	ldr r1, _080578B4 @ =0x03000DD0
	ldrh r3, [r1, #0x0C]
	movs r0, #0xC0
	lsls r0, r0, #0x08
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r2, [sp, #0x018]
	cmp r0, r1
	bne _08057876
	movs r1, #0x80
	movs r0, #0x38
	ands r0, r3
	lsrs r0, r0, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
_08057876:
	ldr r2, _080578B4 @ =0x03000DD0
	ldrh r3, [r2, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r3
	cmp r0, #0x00
	beq _0805788E
	ldr r5, [sp, #0x018]
	ldrb r0, [r5, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5, #0x00]
_0805788E:
	adds r0, r7, #0x0
	adds r0, #0x88
	movs r2, #0x04
	strh r2, [r0, #0x00]
	subs r0, #0x06
	strh r2, [r0, #0x00]
	movs r4, #0xC0
	lsls r4, r4, #0x02
	adds r1, r4, #0x0
	ands r1, r3
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	beq _080578DA
	cmp r1, r0
	bgt _080578B8
	cmp r1, #0x00
	beq _080578C6
	b _08057900
_080578B4: .4byte 0x03000DD0
_080578B8:
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	beq _080578E4
	cmp r1, r4
	beq _080578EE
	b _08057900
_080578C6:
	adds r0, r7, #0x0
	adds r0, #0x7E
	strh r2, [r0, #0x00]
	adds r0, #0x06
	strh r2, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x90
	movs r0, #0x04
	strb r0, [r1, #0x00]
	b _08057900
_080578DA:
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r2, #0x01
	movs r1, #0x01
	b _080578F6
_080578E4:
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r2, #0x02
	movs r1, #0x02
	b _080578F6
_080578EE:
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r2, #0x08
	movs r1, #0x08
_080578F6:
	strh r1, [r0, #0x00]
	adds r0, #0x06
	strh r1, [r0, #0x00]
	adds r0, #0x0C
	strb r2, [r0, #0x00]
_08057900:
	ldr r1, _08057914 @ =0x03000DD0
	ldrh r0, [r1, #0x0C]
	movs r1, #0x38
	ands r1, r0
	cmp r1, #0x08
	bne _08057918
	adds r1, r7, #0x0
	adds r1, #0x84
	b _08057920
	.byte 0x00, 0x00
_08057914: .4byte 0x03000DD0
_08057918:
	cmp r1, #0x10
	bne _08057924
	adds r1, r7, #0x0
	adds r1, #0x7E
_08057920:
	movs r0, #0x04
	strh r0, [r1, #0x00]
_08057924:
	ldr r2, _0805793C @ =0x03000DD0
	ldrh r0, [r2, #0x0C]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x40
	beq _08057954
	cmp r1, #0x40
	bgt _08057940
	cmp r1, #0x00
	beq _0805794A
	b _0805797A
	.byte 0x00, 0x00
_0805793C: .4byte 0x03000DD0
_08057940:
	cmp r1, #0x80
	beq _0805795E
	cmp r1, #0xC0
	beq _08057968
	b _0805797A
_0805794A:
	adds r0, r7, #0x0
	adds r0, #0x80
	movs r2, #0x04
	movs r1, #0x04
	b _08057970
_08057954:
	adds r0, r7, #0x0
	adds r0, #0x80
	movs r2, #0x01
	movs r1, #0x01
	b _08057970
_0805795E:
	adds r0, r7, #0x0
	adds r0, #0x80
	movs r2, #0x02
	movs r1, #0x02
	b _08057970
_08057968:
	adds r0, r7, #0x0
	adds r0, #0x80
	movs r2, #0x08
	movs r1, #0x08
_08057970:
	strh r1, [r0, #0x00]
	adds r0, #0x06
	strh r1, [r0, #0x00]
	adds r0, #0x0B
	strb r2, [r0, #0x00]
_0805797A:
	ldr r3, _0805798C @ =0x03000DD0
	ldrh r0, [r3, #0x0C]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x01
	bne _08057990
	adds r1, r7, #0x0
	adds r1, #0x86
	b _08057998
_0805798C: .4byte 0x03000DD0
_08057990:
	cmp r1, #0x02
	bne _0805799C
	adds r1, r7, #0x0
	adds r1, #0x80
_08057998:
	movs r0, #0x04
	strh r0, [r1, #0x00]
_0805799C:
	movs r0, #0x02
	adds r5, r7, #0x0
	adds r5, #0x5A
	str r5, [sp, #0x01C]
	movs r1, #0x60
	adds r1, r1, r7
	mov r12, r1
	adds r2, r7, #0x0
	adds r2, #0x66
	str r2, [sp, #0x020]
	adds r3, r7, #0x0
	adds r3, #0x6C
	str r3, [sp, #0x00C]
	movs r5, #0x4E
	adds r5, r5, r7
	mov r10, r5
	movs r1, #0x54
	adds r1, r1, r7
	mov r9, r1
_080579C2:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r8, r0
	cmp r2, #0x02
	beq _08057A8C
	ldr r3, [sp, #0x018]
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	bne _08057A8C
	lsls r4, r2, #0x01
	mov r0, r10
	adds r5, r0, r4
	ldr r1, [sp, #0x010]
	adds r2, r1, r4
	adds r0, r7, #0x0
	adds r0, #0x5E
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r0, #0x20
	adds r0, r0, r4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	strh r0, [r5, #0x00]
	mov r0, r9
	adds r0, r0, r4
	str r0, [sp, #0x024]
	ldr r1, [sp, #0x014]
	adds r2, r1, r4
	adds r0, r7, #0x0
	adds r0, #0x64
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r0, #0x20
	adds r0, r0, r4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	ldr r1, [sp, #0x024]
	strh r0, [r1, #0x00]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08057A34
	strh r6, [r5, #0x00]
	b _08057A48
_08057A34:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	adds r1, r7, #0x0
	adds r1, #0x36
	adds r1, r1, r4
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _08057A48
	strh r1, [r5, #0x00]
_08057A48:
	mov r5, r8
	asrs r3, r5, #0x0F
	mov r0, r9
	adds r2, r0, r3
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08057A5E
	movs r3, #0x00
	strh r3, [r2, #0x00]
	b _08057A72
_08057A5E:
	movs r5, #0x00
	ldsh r0, [r2, r5]
	adds r1, r7, #0x0
	adds r1, #0x3C
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _08057A72
	strh r1, [r2, #0x00]
_08057A72:
	mov r0, r8
	asrs r1, r0, #0x0F
	ldr r3, [sp, #0x01C]
	adds r2, r3, r1
	mov r5, r10
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	mov r0, r12
	adds r2, r0, r1
	add r1, r9
	ldrh r0, [r1, #0x00]
	b _08057AAC
_08057A8C:
	mov r1, r8
	asrs r2, r1, #0x0F
	mov r3, r10
	adds r1, r3, r2
	ldrh r0, [r7, #0x22]
	strh r0, [r1, #0x00]
	mov r5, r9
	adds r1, r5, r2
	ldrh r0, [r7, #0x24]
	strh r0, [r1, #0x00]
	ldr r0, [sp, #0x01C]
	adds r1, r0, r2
	ldrh r0, [r7, #0x22]
	strh r0, [r1, #0x00]
	add r2, r12
	ldrh r0, [r7, #0x24]
_08057AAC:
	strh r0, [r2, #0x00]
	mov r1, r8
	asrs r2, r1, #0x10
	lsls r1, r2, #0x01
	ldr r3, [sp, #0x020]
	adds r0, r3, r1
	movs r5, #0x00
	strh r5, [r0, #0x00]
	ldr r0, [sp, #0x00C]
	adds r1, r0, r1
	strh r5, [r1, #0x00]
	subs r2, #0x01
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	cmp r2, #0x00
	blt _08057ACE
	b _080579C2
_08057ACE:
	ldr r1, _08057AEC @ =0x03000DD0
	ldrb r0, [r1, #0x02]
	movs r1, #0x60
	ands r1, r0
	adds r0, r1, #0x0
	movs r2, #0x00
	movs r3, #0x00
	movs r4, #0x00
	cmp r1, #0x20
	beq _08057AFE
	cmp r1, #0x20
	bgt _08057AF0
	cmp r1, #0x00
	beq _08057AF6
	b _08057B0C
_08057AEC: .4byte 0x03000DD0
_08057AF0:
	cmp r0, #0x40
	beq _08057B06
	b _08057B0C
_08057AF6:
	movs r2, #0x01
	movs r3, #0x02
	movs r4, #0x03
	b _08057B0C
_08057AFE:
	movs r2, #0x01
	movs r3, #0x03
	movs r4, #0x02
	b _08057B0C
_08057B06:
	movs r2, #0x02
	movs r3, #0x03
	movs r4, #0x01
_08057B0C:
	ldr r1, _08057B48 @ =0x0200000A
	ldr r5, _08057B4C @ =0x00004004
	adds r0, r5, #0x0
	orrs r2, r0
	strh r2, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _08057B50 @ =0x00004204
	adds r0, r2, #0x0
	orrs r3, r0
	strh r3, [r1, #0x00]
	adds r1, #0x02
	ldr r3, _08057B54 @ =0x00004404
	adds r0, r3, #0x0
	orrs r4, r0
	strh r4, [r1, #0x00]
	movs r5, #0xAF
	lsls r5, r5, #0x03
	adds r1, r7, r5
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08057B48: .4byte 0x0200000A
_08057B4C: .4byte 0x00004004
_08057B50: .4byte 0x00004204
_08057B54: .4byte 0x00004404
	thumb_func_start sub_8057B58
sub_8057B58:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08057BDC @ =0x08CDC288
	str r0, [r4, #0x18]
	ldr r1, _08057BE0 @ =0x00000584
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057B72
	adds r0, r4, #0x0
	bl sub_805C6B8
_08057B72:
	movs r0, #0xC0
	lsls r0, r0, #0x13
	bl sub_80184F4
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057B88
	bl __builtin_vec_delete
_08057B88:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057B96
	bl __builtin_vec_delete
_08057B96:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057BA4
	bl __builtin_vec_delete
_08057BA4:
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057BB2
	bl __builtin_vec_delete
_08057BB2:
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057BC0
	bl __builtin_vec_delete
_08057BC0:
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057BCE
	bl __builtin_vec_delete
_08057BCE:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _._7Process
	pop {r4, r5}
	pop {r0}
	bx r0
_08057BDC: .4byte 0x08CDC288
_08057BE0: .4byte 0x00000584
	thumb_func_start sub_8057BE4
sub_8057BE4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r5, #0x00
	ldr r0, _08057C38 @ =0x0000FFFB
	strh r0, [r4, #0x1C]
	movs r0, #0xAF
	lsls r0, r0, #0x03
	adds r1, r4, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r4, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x06
	ldr r2, _08057C3C @ =0x081E27BC
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	str r5, [sp, #0x000]
	ldr r2, _08057C40 @ =0x01000800
	mov r0, sp
	bl CpuFastSet
	ldr r0, _08057C44 @ =0x03000DD0
	ldrb r0, [r0, #0x02]
	movs r1, #0x60
	ands r1, r0
	adds r0, r1, #0x0
	movs r2, #0x00
	movs r3, #0x00
	movs r4, #0x00
	cmp r1, #0x20
	beq _08057C56
	cmp r1, #0x20
	bgt _08057C48
	cmp r1, #0x00
	beq _08057C4E
	b _08057C64
	.byte 0x00, 0x00
_08057C38: .4byte 0x0000FFFB
_08057C3C: .4byte 0x081E27BC
_08057C40: .4byte 0x01000800
_08057C44: .4byte 0x03000DD0
_08057C48:
	cmp r0, #0x40
	beq _08057C5E
	b _08057C64
_08057C4E:
	movs r2, #0x01
	movs r3, #0x02
	movs r4, #0x03
	b _08057C64
_08057C56:
	movs r2, #0x01
	movs r3, #0x03
	movs r4, #0x02
	b _08057C64
_08057C5E:
	movs r2, #0x02
	movs r3, #0x03
	movs r4, #0x01
_08057C64:
	ldr r1, _08057C8C @ =0x0200000A
	ldr r5, _08057C90 @ =0x00004004
	adds r0, r5, #0x0
	orrs r2, r0
	strh r2, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _08057C94 @ =0x00004204
	adds r0, r2, #0x0
	orrs r3, r0
	strh r3, [r1, #0x00]
	adds r1, #0x02
	ldr r5, _08057C98 @ =0x00004404
	adds r0, r5, #0x0
	orrs r4, r0
	strh r4, [r1, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08057C8C: .4byte 0x0200000A
_08057C90: .4byte 0x00004004
_08057C94: .4byte 0x00004204
_08057C98: .4byte 0x00004404
	thumb_func_start sub_8057C9C
sub_8057C9C:
	push {r4, r5, r6, lr}
	mov r12, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r4, #0x00
	movs r3, #0x02
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x00
	bgt _08057CB8
	movs r6, #0x00
	movs r4, #0x04
	b _08057CC8
_08057CB8:
	mov r2, r12
	ldrh r0, [r2, #0x3A]
	subs r0, #0xF0
	cmp r1, r0
	blt _08057CC8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0x08
_08057CC8:
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bgt _08057CDA
	movs r5, #0x00
	movs r0, #0x01
	orrs r4, r0
	lsls r3, r3, #0x01
	b _08057CF8
_08057CDA:
	lsls r0, r3, #0x01
	mov r1, r12
	adds r1, #0x3C
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	adds r3, r0, #0x0
	cmp r2, r1
	blt _08057CF8
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x02
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
_08057CF8:
	mov r1, r12
	adds r1, #0x66
	adds r1, r1, r3
	mov r0, r12
	adds r0, #0x4E
	adds r0, r0, r3
	ldrh r2, [r0, #0x00]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x6C
	adds r1, r1, r3
	mov r0, r12
	adds r0, #0x54
	adds r0, r0, r3
	ldrh r2, [r0, #0x00]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_8057D2C
sub_8057D2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _08057D64 @ =0x086527F4
	mov r9, r0
	mov r10, r9
	ldr r0, _08057D68 @ =0x03000DD0
	ldrb r7, [r0, #0x03]
	ldr r0, _08057D6C @ =0x00000599
	adds r1, r4, r0
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldrh r0, [r4, #0x1C]
	adds r0, #0x05
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	bls _08057D5A
	b _08057EF4
_08057D5A:
	lsls r0, r0, #0x02
	ldr r1, _08057D70 @ =0x08057D74
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08057D64: .4byte 0x086527F4
_08057D68: .4byte 0x03000DD0
_08057D6C: .4byte 0x00000599
_08057D70: .4byte 0x08057D74
	.byte 0x88, 0x7D, 0x05, 0x08, 0xD4, 0x7D, 0x05, 0x08, 0x28, 0x7E, 0x05, 0x08, 0x84, 0x7E, 0x05, 0x08
	.byte 0xA8, 0x7E, 0x05, 0x08, 0x0F, 0x48, 0x21, 0x18, 0x01, 0x20, 0x08, 0x70, 0x20, 0x1C, 0x02, 0xF0
	.byte 0xF5, 0xF8, 0x00, 0x23, 0x0C, 0x4A, 0x13, 0x60, 0x0C, 0x49, 0xB8, 0x00, 0x41, 0x18, 0x08, 0x78
	.byte 0xFF, 0x28, 0x00, 0xD1, 0x9D, 0xE0, 0x80, 0x00, 0x50, 0x44, 0x00, 0x68, 0x48, 0x44, 0x50, 0x60
	.byte 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x90, 0x60, 0xD3, 0x60, 0x10, 0x1C, 0xC1, 0xF7, 0x22, 0xFD
	.byte 0x8F, 0xE0, 0x00, 0x00, 0x79, 0x05, 0x00, 0x00, 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08
	.byte 0x11, 0x4E, 0x35, 0x68, 0x00, 0x2D, 0x00, 0xD0, 0xA1, 0xE0, 0xA4, 0x21, 0x09, 0x19, 0x88, 0x46
	.byte 0x08, 0x68, 0x0E, 0x49, 0x80, 0x22, 0x12, 0x01, 0x82, 0xF1, 0x54, 0xFC, 0x35, 0x60, 0x0C, 0x49
	.byte 0xB8, 0x00, 0x01, 0x30, 0x41, 0x18, 0x08, 0x78, 0xFF, 0x28, 0x72, 0xD0, 0x80, 0x00, 0x50, 0x44
	.byte 0x00, 0x68, 0x48, 0x44, 0x70, 0x60, 0x41, 0x46, 0x08, 0x68, 0xB0, 0x60, 0xF5, 0x60, 0x30, 0x1C
	.byte 0xC1, 0xF7, 0xF8, 0xFC, 0x65, 0xE0, 0x00, 0x00, 0xC0, 0x0D, 0x00, 0x03, 0x00, 0x40, 0x00, 0x06
	.byte 0x6C, 0xAA, 0x3A, 0x08, 0x10, 0x4E, 0x35, 0x68, 0x00, 0x2D, 0x78, 0xD1, 0xA4, 0x20, 0x00, 0x19
	.byte 0x80, 0x46, 0x00, 0x68, 0x0D, 0x49, 0x80, 0x22, 0x12, 0x01, 0x82, 0xF1, 0x2B, 0xFC, 0x35, 0x60
	.byte 0x0B, 0x49, 0xB8, 0x00, 0x02, 0x30, 0x41, 0x18, 0x08, 0x78, 0xFF, 0x28, 0x12, 0xD0, 0x80, 0x00
	.byte 0x50, 0x44, 0x00, 0x68, 0x48, 0x44, 0x70, 0x60, 0x41, 0x46, 0x08, 0x68, 0xB0, 0x60, 0xF5, 0x60
	.byte 0x30, 0x1C, 0xC1, 0xF7, 0xCF, 0xFC, 0x3C, 0xE0, 0xC0, 0x0D, 0x00, 0x03, 0x00, 0x60, 0x00, 0x06
	.byte 0x6C, 0xAA, 0x3A, 0x08, 0x01, 0x48, 0xA0, 0x83, 0x51, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x06, 0x48, 0x00, 0x68, 0x00, 0x28, 0x4A, 0xD1, 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x04, 0x49
	.byte 0x80, 0x22, 0x12, 0x01, 0x82, 0xF1, 0xFE, 0xFB, 0x23, 0xE0, 0x00, 0x00, 0xC0, 0x0D, 0x00, 0x03
	.byte 0x00, 0x80, 0x00, 0x06, 0xAF, 0x21, 0xC9, 0x00, 0x60, 0x18, 0x00, 0x78, 0x00, 0x28, 0x02, 0xD1
	.byte 0x20, 0x1C, 0x02, 0xF0, 0x95, 0xF8, 0x20, 0x1C, 0x03, 0xF0, 0x2E, 0xFA, 0x20, 0x1C, 0x03, 0xF0
	.byte 0x95, 0xFC, 0x20, 0x1C, 0x02, 0xF0, 0xCC, 0xF8, 0x20, 0x1C, 0x02, 0xF0, 0x9D, 0xF8, 0x20, 0x1C
	.byte 0x03, 0xF0, 0x7E, 0xFD, 0x20, 0x1C, 0x03, 0xF0, 0x59, 0xFB, 0x04, 0x48, 0x21, 0x18, 0x00, 0x20
	.byte 0x08, 0x70, 0xA0, 0x8B, 0x01, 0x30, 0xA0, 0x83, 0x19, 0xE0, 0x00, 0x00, 0x84, 0x05, 0x00, 0x00
_08057EF4:
	adds r0, r4, #0x0
	bl sub_8057FCC
	adds r0, r4, #0x0
	bl sub_8058148
	adds r0, r4, #0x0
	bl sub_805B154
	adds r0, r4, #0x0
	bl sub_805B8BC
	adds r0, r4, #0x0
	bl sub_8059F24
	ldr r1, _08057F58 @ =0x00000584
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057F22
	adds r0, r4, #0x0
	bl sub_805C14C
_08057F22:
	ldr r0, _08057F5C @ =0x00000579
	adds r5, r4, r0
	ldrb r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08057F46
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0xC0
	lsls r2, r2, #0x06
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	strb r4, [r5, #0x00]
_08057F46:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08057F58: .4byte 0x00000584
_08057F5C: .4byte 0x00000579
	thumb_func_start sub_8057F60
sub_8057F60:
	push {lr}
	mov r12, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r1, #0x00
	beq _08057F7A
	cmp r1, #0x01
	beq _08057F98
	b _08057FC4
_08057F7A:
	ldr r0, _08057F94 @ =0x03000DD0
	ldrh r1, [r0, #0x0C]
	movs r0, #0xC0
	lsls r0, r0, #0x08
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	cmp r0, r1
	bne _08057FC4
	mov r1, r12
	adds r1, #0x72
	b _08057FAE
	.byte 0x00, 0x00
_08057F94: .4byte 0x03000DD0
_08057F98:
	ldr r0, _08057FC8 @ =0x03000DD0
	ldrh r1, [r0, #0x0C]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bne _08057FC4
	mov r1, r12
	adds r1, #0x74
_08057FAE:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x06
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
_08057FC4:
	pop {r0}
	bx r0
_08057FC8: .4byte 0x03000DD0
	thumb_func_start sub_8057FCC
sub_8057FCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	movs r2, #0x02
_08057FDA:
	ldr r3, _08058084 @ =0x083AAE08
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	movs r1, #0x02
	subs r1, r1, r5
	lsls r1, r1, #0x01
	ldrh r0, [r4, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	ldr r0, _08058088 @ =0x0000FFFF
	mov r8, r2
	cmp r1, r0
	beq _080580CC
	adds r7, r4, #0x0
	adds r7, #0x66
	adds r6, r4, #0x0
	adds r6, #0x6C
	movs r0, #0x6A
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0x70
	adds r1, r1, r4
	mov r10, r1
	cmp r5, #0x02
	beq _0805809E
	adds r0, r4, #0x0
	adds r0, #0x8A
	adds r0, r0, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0805808C
	lsls r3, r5, #0x01
	adds r2, r4, #0x0
	adds r2, #0x72
	adds r2, r2, r3
	adds r0, r4, #0x0
	adds r0, #0x5E
	movs r5, #0x00
	ldsh r1, [r0, r5]
	adds r0, #0x20
	adds r0, r0, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r1, r0
	asrs r1, r1, #0x02
	ldrh r2, [r2, #0x00]
	adds r1, r1, r2
	adds r2, r7, r3
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x78
	adds r2, r2, r3
	adds r0, r4, #0x0
	adds r0, #0x64
	movs r5, #0x00
	ldsh r1, [r0, r5]
	adds r0, #0x20
	adds r0, r0, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r1, r0
	asrs r1, r1, #0x02
	ldrh r2, [r2, #0x00]
	adds r1, r1, r2
	adds r2, r6, r3
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x00]
	b _0805809E
_08058084: .4byte 0x083AAE08
_08058088: .4byte 0x0000FFFF
_0805808C:
	lsls r1, r5, #0x01
	adds r2, r7, r1
	mov r3, r9
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x00]
	adds r1, r6, r1
	mov r5, r10
	ldrh r0, [r5, #0x00]
	strh r0, [r1, #0x00]
_0805809E:
	mov r0, r8
	asrs r3, r0, #0x0F
	adds r2, r7, r3
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bne _080580B6
	adds r0, r6, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	beq _08058112
_080580B6:
	mov r0, r8
	lsrs r1, r0, #0x10
	movs r5, #0x00
	ldsh r2, [r2, r5]
	adds r0, r6, r3
	movs r5, #0x00
	ldsh r3, [r0, r5]
	adds r0, r4, #0x0
	bl sub_8058944
	b _08058112
_080580CC:
	lsls r3, r5, #0x01
	adds r1, r4, #0x0
	adds r1, #0x4E
	adds r1, r1, r3
	adds r0, r4, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x54
	adds r2, r2, r3
	adds r0, r4, #0x0
	adds r0, #0x58
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r0, r0, r3
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r3
	ldrh r1, [r2, #0x00]
	strh r1, [r0, #0x00]
	adds r7, r4, #0x0
	adds r7, #0x66
	adds r6, r4, #0x0
	adds r6, #0x6C
	movs r0, #0x6A
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0x70
	adds r1, r1, r4
	mov r10, r1
_08058112:
	ldr r0, _08058144 @ =0xFFFF0000
	add r0, r8
	lsrs r2, r0, #0x10
	cmp r0, #0x00
	blt _0805811E
	b _08057FDA
_0805811E:
	movs r0, #0x00
	mov r2, r9
	strh r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x68
	strh r0, [r1, #0x00]
	strh r0, [r7, #0x00]
	mov r3, r10
	strh r0, [r3, #0x00]
	adds r1, #0x06
	strh r0, [r1, #0x00]
	strh r0, [r6, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08058144: .4byte 0xFFFF0000
	thumb_func_start sub_8058148
sub_8058148:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r0, #0x00
	mov r9, r0
_0805815A:
	ldr r2, _08058214 @ =0x083AAE08
	movs r1, #0x02
	mov r0, r9
	subs r1, r1, r0
	lsls r1, r1, #0x01
	ldrh r0, [r4, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	ldr r0, _08058218 @ =0x0000FFFF
	cmp r1, r0
	beq _08058224
	adds r0, r4, #0x0
	adds r0, #0x8A
	mov r1, r9
	adds r5, r0, r1
	ldrb r1, [r5, #0x00]
	movs r0, #0x80
	ands r0, r1
	mov r2, r9
	lsls r2, r2, #0x01
	mov r8, r2
	movs r1, #0x66
	adds r1, r1, r4
	mov r10, r1
	adds r2, r4, #0x0
	adds r2, #0x6C
	str r2, [sp, #0x000]
	cmp r0, #0x00
	beq _08058206
	adds r0, r4, #0x0
	adds r0, #0x8D
	mov r1, r9
	adds r7, r0, r1
	adds r0, #0x03
	add r0, r9
	ldrb r1, [r0, #0x00]
	ldrb r2, [r7, #0x00]
	adds r1, r1, r2
	strb r1, [r7, #0x00]
	mov r6, r10
	add r6, r8
	ldr r3, _0805821C @ =0x083A75DC
	ldrb r2, [r5, #0x00]
	movs r0, #0x0F
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1A
	muls r0, r1
	strh r0, [r6, #0x00]
	ldr r3, [sp, #0x000]
	add r3, r8
	ldr r2, _08058220 @ =0x083A75EC
	ldrb r1, [r5, #0x00]
	movs r0, #0x0F
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldrb r0, [r7, #0x00]
	lsrs r0, r0, #0x02
	muls r1, r0
	strh r1, [r3, #0x00]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bne _080581F2
	lsls r0, r1, #0x10
	cmp r0, #0x00
	beq _08058206
_080581F2:
	movs r0, #0x00
	ldsh r2, [r6, r0]
	movs r1, #0x00
	ldsh r3, [r3, r1]
	adds r0, r4, #0x0
	mov r1, r9
	bl sub_8058944
	movs r2, #0x00
	strb r2, [r7, #0x00]
_08058206:
	mov r0, r10
	add r0, r8
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [sp, #0x000]
	add r0, r8
	b _08058256
_08058214: .4byte 0x083AAE08
_08058218: .4byte 0x0000FFFF
_0805821C: .4byte 0x083A75DC
_08058220: .4byte 0x083A75EC
_08058224:
	mov r0, r9
	lsls r3, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x4E
	adds r1, r1, r3
	adds r0, r4, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x54
	adds r2, r2, r3
	adds r0, r4, #0x0
	adds r0, #0x58
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r0, r0, r3
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r3
	ldrh r1, [r2, #0x00]
_08058256:
	strh r1, [r0, #0x00]
	mov r0, r9
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #0x01
	bhi _08058268
	b _0805815A
_08058268:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8058278
sub_8058278:
	push {r4, r5, r6, lr}
	mov r12, r0
	movs r5, #0x00
_0805827E:
	lsls r2, r5, #0x01
	mov r3, r12
	adds r3, #0x4E
	adds r3, r3, r2
	mov r1, r12
	adds r1, #0x72
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x52
	movs r6, #0x00
	ldsh r4, [r0, r6]
	adds r0, #0x2C
	adds r0, r0, r2
	movs r6, #0x00
	ldsh r0, [r0, r6]
	muls r0, r4
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	mov r3, r12
	adds r3, #0x54
	adds r3, r3, r2
	mov r1, r12
	adds r1, #0x78
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x58
	movs r6, #0x00
	ldsh r4, [r0, r6]
	adds r0, #0x2C
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r4
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	adds r0, r5, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x01
	bls _0805827E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_80582DC
sub_80582DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	mov r12, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
_080582EE:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r5, _0805833C @ =0x083AAE08
	adds r1, r0, r5
	ldrh r0, [r1, #0x00]
	ldr r2, _08058340 @ =0x0000FFFF
	cmp r0, r2
	bne _0805830C
	b _08058454
_0805830C:
	lsls r0, r0, #0x02
	ldr r5, _08058344 @ =0x08754D74
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r6, r1, r0
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r3, r0, r1
	movs r0, #0x03
	ands r0, r3
	cmp r0, #0x00
	bne _08058348
	ldr r2, [sp, #0x000]
	lsls r1, r2, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r1
	movs r5, #0xFC
	ands r5, r3
	strh r5, [r0, #0x00]
	adds r4, r1, #0x0
	b _0805835E
	.byte 0x00, 0x00
_0805833C: .4byte 0x083AAE08
_08058340: .4byte 0x0000FFFF
_08058344: .4byte 0x08754D74
_08058348:
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r1, r12
	adds r1, #0x2A
	adds r1, r1, r2
	asrs r0, r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x18
	strh r5, [r1, #0x00]
	adds r4, r2, #0x0
_0805835E:
	mov r1, r12
	adds r1, #0x30
	adds r1, r1, r4
	ldrb r0, [r6, #0x01]
	lsls r3, r0, #0x02
	adds r3, r3, r0
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x18
	strh r3, [r1, #0x00]
	mov r2, r12
	adds r2, #0x42
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _080584F0 @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x26]
	adds r2, #0x48
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	strh r0, [r2, #0x00]
	ldr r1, _080584F0 @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x28]
	adds r2, #0x36
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x04
	strh r0, [r2, #0x00]
	mov r2, r12
	adds r2, #0x3C
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	strh r0, [r2, #0x00]
	movs r0, #0x02
	mov r8, r0
	movs r1, #0x00
	mov r9, r1
	movs r0, #0x00
	cmp r0, r3
	bcs _08058454
	lsls r5, r5, #0x10
	str r5, [sp, #0x00C]
	lsrs r2, r5, #0x10
	str r2, [sp, #0x010]
	str r3, [sp, #0x004]
_080583D2:
	movs r2, #0x00
	adds r0, #0x01
	str r0, [sp, #0x018]
	ldr r5, [sp, #0x010]
	cmp r2, r5
	bcs _08058448
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x0B
	str r0, [sp, #0x014]
	movs r1, #0x98
	add r1, r12
	mov r10, r1
	ldr r5, [sp, #0x00C]
	lsrs r5, r5, #0x10
	str r5, [sp, #0x008]
_080583F0:
	mov r1, r8
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r1, r6, r1
	ldrb r4, [r1, #0x00]
	movs r5, #0x00
	adds r7, r2, #0x4
_08058402:
	movs r2, #0xC0
	ands r2, r4
	lsls r2, r2, #0x02
	mov r1, r8
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r1, r6, r1
	ldrb r3, [r1, #0x00]
	orrs r3, r2
	ldr r0, [sp, #0x014]
	add r0, r9
	mov r2, r10
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	lsls r0, r4, #0x1A
	lsrs r4, r0, #0x18
	mov r0, r9
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r5, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x03
	bls _08058402
	lsls r0, r7, #0x10
	lsrs r2, r0, #0x10
	ldr r5, [sp, #0x008]
	cmp r2, r5
	bcc _080583F0
_08058448:
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x004]
	cmp r0, r2
	bcc _080583D2
_08058454:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x02
	bhi _08058464
	b _080582EE
_08058464:
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r4, _080584F4 @ =0x083AAE08
	ldr r3, _080584F0 @ =0x0000FFFF
_0805846C:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	cmp r0, r3
	bne _080584D2
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r2
	mov r5, r12
	ldrh r1, [r5, #0x2E]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x30
	adds r0, r0, r2
	ldrh r1, [r5, #0x34]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x36
	adds r0, r0, r2
	ldrh r1, [r5, #0x3A]
	strh r1, [r0, #0x00]
	mov r1, r12
	adds r1, #0x3C
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x42
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x46
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x48
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x4C
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
_080584D2:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x01
	bls _0805846C
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080584F0: .4byte 0x0000FFFF
_080584F4: .4byte 0x083AAE08
	thumb_func_start sub_80584F8
sub_80584F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	adds r6, r0, #0x0
	ldr r0, _08058674 @ =0x00000579
	adds r1, r6, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x004]
_08058512:
	ldr r2, _08058678 @ =0x083AAE08
	movs r1, #0x02
	ldr r3, [sp, #0x004]
	subs r1, r1, r3
	lsls r1, r1, #0x01
	ldrh r0, [r6, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	ldr r0, _0805867C @ =0x0000FFFF
	adds r3, #0x01
	str r3, [sp, #0x030]
	cmp r1, r0
	bne _08058532
	b _0805879C
_08058532:
	adds r0, r6, #0x0
	adds r0, #0x8A
	ldr r4, [sp, #0x004]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08058546
	b _08058680
_08058546:
	lsls r1, r4, #0x01
	adds r0, r6, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r0, #0x4E
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
	adds r0, r6, #0x0
	adds r0, #0x54
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	movs r5, #0x12
	str r5, [sp, #0x00C]
	movs r0, #0x0D
	str r0, [sp, #0x010]
	movs r2, #0x00
	str r1, [sp, #0x038]
	str r1, [sp, #0x024]
_08058588:
	movs r3, #0x00
	lsls r7, r2, #0x10
	ldr r1, [sp, #0x00C]
	cmp r3, r1
	bge _08058662
	ldr r2, [sp, #0x014]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	asrs r1, r7, #0x10
	ldr r4, [sp, #0x018]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	str r1, [sp, #0x020]
	str r1, [sp, #0x028]
	movs r5, #0x42
	adds r5, r5, r6
	mov r10, r5
	movs r0, #0x48
	adds r0, r0, r6
	mov r9, r0
	ldr r1, [sp, #0x004]
	lsls r1, r1, #0x0B
	str r1, [sp, #0x02C]
	adds r2, r6, #0x0
	adds r2, #0x98
	str r2, [sp, #0x034]
_080585C2:
	lsls r1, r3, #0x10
	asrs r0, r1, #0x10
	ldr r3, [sp, #0x01C]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ldr r5, [sp, #0x020]
	lsrs r4, r5, #0x10
	lsrs r5, r0, #0x10
	mov r8, r1
	cmp r0, #0x00
	bge _080585E8
	ldr r0, [sp, #0x038]
	add r0, r10
	ldrh r1, [r0, #0x00]
_080585DE:
	adds r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	blt _080585DE
_080585E8:
	lsls r0, r4, #0x10
	lsls r1, r5, #0x10
	cmp r0, #0x00
	bge _08058600
	ldr r0, [sp, #0x038]
	add r0, r9
	ldrh r2, [r0, #0x00]
_080585F6:
	adds r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	blt _080585F6
_08058600:
	asrs r0, r1, #0x10
	ldr r1, [sp, #0x024]
	add r1, r10
	ldrh r1, [r1, #0x00]
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x024]
	add r1, r9
	ldrh r1, [r1, #0x00]
	bl __modsi3
	mov r1, r8
	asrs r4, r1, #0x10
	ldr r3, [sp, #0x01C]
	adds r2, r3, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x008]
	muls r0, r1
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x02C]
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r5, [sp, #0x034]
	ldr r1, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	ldr r1, [sp, #0x004]
	ldr r5, [sp, #0x028]
	asrs r3, r5, #0x10
	bl sub_8058898
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x00C]
	cmp r4, r0
	blt _080585C2
_08058662:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r7, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x010]
	cmp r0, r3
	blt _08058588
	b _0805879C
_08058674: .4byte 0x00000579
_08058678: .4byte 0x083AAE08
_0805867C: .4byte 0x0000FFFF
_08058680:
	ldr r4, [sp, #0x004]
	lsls r2, r4, #0x01
	adds r0, r6, #0x0
	adds r0, #0x2A
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r0, #0x4E
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
	adds r0, r6, #0x0
	adds r0, #0x54
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x14
	subs r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	movs r5, #0x12
	str r5, [sp, #0x00C]
	movs r0, #0x0D
	str r0, [sp, #0x010]
	cmp r1, #0x00
	bne _080586D4
	movs r4, #0x11
	str r4, [sp, #0x00C]
	ldr r5, [sp, #0x014]
	lsls r0, r5, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x09
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
_080586D4:
	adds r1, #0x0F
	adds r0, r6, #0x0
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _080586EC
	ldr r0, [sp, #0x00C]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
_080586EC:
	adds r1, r3, #0x0
	cmp r1, #0x00
	bne _08058704
	movs r5, #0x0C
	str r5, [sp, #0x010]
	ldr r3, [sp, #0x018]
	lsls r0, r3, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x09
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
_08058704:
	adds r1, #0x0A
	adds r0, r6, #0x0
	adds r0, #0x48
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _0805871C
	ldr r0, [sp, #0x00C]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
_0805871C:
	movs r2, #0x00
	ldr r5, [sp, #0x010]
	cmp r2, r5
	bge _0805879C
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r10, r0
_0805872C:
	movs r3, #0x00
	lsls r7, r2, #0x10
	ldr r2, [sp, #0x00C]
	cmp r3, r2
	bge _0805878C
	ldr r4, [sp, #0x014]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x03C]
	asrs r0, r7, #0x10
	add r0, r10
	lsls r5, r0, #0x10
	mov r9, r5
	ldr r2, [sp, #0x008]
	adds r1, r0, #0x0
	muls r1, r2
	mov r8, r1
_0805874E:
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	ldr r3, [sp, #0x03C]
	adds r2, r4, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r5, [sp, #0x004]
	lsls r0, r5, #0x0B
	add r0, r8
	adds r0, r0, r4
	adds r0, r0, r3
	adds r1, r6, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	mov r5, r9
	asrs r3, r5, #0x10
	bl sub_8058898
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x00C]
	cmp r4, r0
	blt _0805874E
_0805878C:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r7, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x010]
	cmp r0, r3
	blt _0805872C
_0805879C:
	ldr r4, [sp, #0x030]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	cmp r0, #0x02
	bhi _080587AA
	b _08058512
_080587AA:
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80587BC
sub_80587BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _0805887C @ =0x086FFC20
	mov r9, r6
	ldr r3, _08058880 @ =0x03000DD0
	ldrb r7, [r3, #0x04]
	ldr r2, _08058884 @ =0x083AAC4C
	lsls r1, r7, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r6
	ldr r1, [r1, #0x00]
	adds r5, r1, r6
	movs r4, #0x00
	mov r10, r3
	mov r8, r2
	adds r2, r0, #0x0
	adds r2, #0xA8
	ldr r3, _08058888 @ =0x000007FF
	mov r12, r2
_080587EC:
	ldr r1, [r2, #0x00]
	lsls r0, r4, #0x01
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r3
	bls _080587EC
	lsls r0, r7, #0x02
	add r0, r8
	ldrh r0, [r0, #0x02]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r5, r6, r0
	movs r4, #0x00
	mov r2, r12
	movs r7, #0x80
	lsls r7, r7, #0x05
	ldr r6, _08058888 @ =0x000007FF
_0805881A:
	ldr r1, [r2, #0x00]
	lsls r0, r4, #0x01
	adds r1, r0, r1
	adds r1, r1, r7
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bls _0805881A
	mov r1, r10
	ldrb r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _0805886E
	ldr r2, _0805888C @ =0x089744D0
	ldr r1, _08058890 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldrh r0, [r0, #0x04]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r5, r0, r2
	movs r4, #0x00
	mov r2, r12
	movs r6, #0x80
	lsls r6, r6, #0x06
	ldr r3, _08058894 @ =0x000003FF
_08058856:
	ldr r1, [r2, #0x00]
	lsls r0, r4, #0x01
	adds r1, r0, r1
	adds r1, r1, r6
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r3
	bls _08058856
_0805886E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805887C: .4byte 0x086FFC20
_08058880: .4byte 0x03000DD0
_08058884: .4byte 0x083AAC4C
_08058888: .4byte 0x000007FF
_0805888C: .4byte 0x089744D0
_08058890: .4byte 0x083B7108
_08058894: .4byte 0x000003FF
	thumb_func_start sub_8058898
sub_8058898:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r7, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _080588E0
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	b _0805890A
_080588E0:
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r4, r5, #0x0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	adds r2, r2, r4
_0805890A:
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r4, r6, #0x0
	adds r4, #0x94
	ldr r1, [r4, #0x00]
	lsls r2, r0, #0x01
	adds r1, r2, r1
	mov r0, r12
	lsls r3, r0, #0x03
	adds r3, r3, r7
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, [r4, #0x00]
	lsls r2, r5, #0x01
	adds r0, r2, r0
	ldrh r1, [r3, #0x04]
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x06]
	strh r0, [r2, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8058944
sub_8058944:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x050
	mov r10, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r9, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	adds r0, #0x8A
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r12, r0
	cmp r0, #0x00
	beq _0805897A
	b _08058B84
_0805897A:
	ldr r0, [sp, #0x008]
	lsls r2, r0, #0x01
	mov r5, r10
	adds r5, #0x4E
	adds r7, r5, r2
	ldrh r3, [r7, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
	mov r4, r10
	adds r4, #0x54
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	mov r6, r9
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	strh r0, [r7, #0x00]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r6, [r1, #0x00]
	adds r0, r0, r6
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	adds r6, r2, #0x0
	str r5, [sp, #0x03C]
	str r4, [sp, #0x040]
	cmp r0, #0x00
	bge _080589CC
	mov r2, r12
	strh r2, [r7, #0x00]
	b _080589E0
_080589CC:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	mov r1, r10
	adds r1, #0x36
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _080589E0
	strh r1, [r7, #0x00]
_080589E0:
	ldr r5, [sp, #0x040]
	adds r2, r5, r6
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _080589F2
	movs r0, #0x00
	strh r0, [r2, #0x00]
	b _08058A06
_080589F2:
	movs r3, #0x00
	ldsh r0, [r2, r3]
	mov r1, r10
	adds r1, #0x3C
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _08058A06
	strh r1, [r2, #0x00]
_08058A06:
	ldr r5, [sp, #0x03C]
	adds r0, r5, r6
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	ldr r2, [sp, #0x040]
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r3, r1, #0x10
	str r3, [sp, #0x01C]
	asrs r1, r1, #0x10
	ldr r5, [sp, #0x00C]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08058A90
	adds r0, #0x01
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	mov r3, r8
	lsls r7, r3, #0x10
	ldr r5, [sp, #0x010]
	lsls r5, r5, #0x10
	mov r9, r5
	mov r3, r10
	adds r3, #0x5A
	str r3, [sp, #0x044]
	mov r5, r10
	adds r5, #0x60
	str r5, [sp, #0x048]
	cmp r0, r1
	bgt _08058AE0
	mov r0, r10
	adds r0, #0x42
	adds r0, r0, r6
	mov r8, r0
	ldr r0, _08058A8C @ =0xFFFF0000
	adds r5, r7, r0
_08058A5E:
	asrs r4, r2, #0x10
	mov r1, r8
	ldrh r0, [r1, #0x00]
	subs r0, #0x10
	cmp r4, r0
	bge _08058A7C
	adds r2, r4, #0x0
	adds r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r3, r5, #0x10
	bl sub_805905C
_08058A7C:
	adds r0, r4, #0x1
	lsls r2, r0, #0x10
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x10
	cmp r2, r0
	ble _08058A5E
	b _08058AE0
	.byte 0x00, 0x00
_08058A8C: .4byte 0xFFFF0000
_08058A90:
	mov r5, r8
	lsls r7, r5, #0x10
	ldr r2, [sp, #0x010]
	lsls r2, r2, #0x10
	mov r9, r2
	mov r3, r10
	adds r3, #0x5A
	str r3, [sp, #0x044]
	mov r5, r10
	adds r5, #0x60
	str r5, [sp, #0x048]
	cmp r1, r0
	bge _08058AE0
	subs r0, #0x01
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, r1
	blt _08058AE0
	ldr r0, _08058B2C @ =0xFFFF0000
	adds r0, r0, r7
	mov r8, r0
	str r1, [sp, #0x04C]
_08058ABC:
	asrs r4, r2, #0x10
	cmp r4, #0x00
	ble _08058AD4
	subs r2, r4, #0x1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	mov r5, r8
	asrs r3, r5, #0x10
	bl sub_805905C
_08058AD4:
	subs r0, r4, #0x1
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	ldr r1, [sp, #0x04C]
	cmp r0, r1
	bge _08058ABC
_08058AE0:
	asrs r1, r7, #0x10
	mov r2, r9
	asrs r0, r2, #0x10
	cmp r1, r0
	ble _08058B30
	adds r0, #0x01
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, r1
	bgt _08058B64
	mov r0, r10
	adds r0, #0x48
	adds r0, r0, r6
	mov r8, r0
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058B2C @ =0xFFFF0000
	adds r5, r0, r1
_08058B04:
	asrs r4, r3, #0x10
	mov r2, r8
	ldrh r0, [r2, #0x00]
	subs r0, #0x0B
	cmp r4, r0
	bge _08058B22
	adds r3, r4, #0x0
	adds r3, #0x0B
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r2, r5, #0x10
	bl sub_8058ED0
_08058B22:
	adds r0, r4, #0x1
	lsls r3, r0, #0x10
	cmp r3, r7
	ble _08058B04
	b _08058B64
_08058B2C: .4byte 0xFFFF0000
_08058B30:
	cmp r1, r0
	bge _08058B64
	subs r0, #0x01
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, r1
	blt _08058B64
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058B80 @ =0xFFFF0000
	adds r5, r0, r1
_08058B46:
	asrs r4, r3, #0x10
	cmp r4, #0x00
	ble _08058B5C
	subs r3, r4, #0x1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r2, r5, #0x10
	bl sub_8058ED0
_08058B5C:
	subs r0, r4, #0x1
	lsls r3, r0, #0x10
	cmp r3, r7
	bge _08058B46
_08058B64:
	ldr r2, [sp, #0x044]
	adds r1, r2, r6
	ldr r3, [sp, #0x03C]
	adds r0, r3, r6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r5, [sp, #0x048]
	adds r1, r5, r6
	ldr r2, [sp, #0x040]
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	b _08058EBC
	.byte 0x00, 0x00
_08058B80: .4byte 0xFFFF0000
_08058B84:
	ldr r3, [sp, #0x008]
	lsls r6, r3, #0x01
	mov r3, r10
	adds r3, #0x5A
	adds r3, r3, r6
	ldrh r1, [r3, #0x00]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
	mov r2, r10
	adds r2, #0x60
	adds r2, r2, r6
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	mov r5, r9
	lsls r5, r5, #0x10
	mov r12, r5
	asrs r5, r5, #0x10
	adds r1, r5, r1
	strh r1, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	mov r0, r8
	lsls r0, r0, #0x10
	mov r9, r0
	asrs r4, r0, #0x10
	adds r1, r4, r1
	strh r1, [r2, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x020]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x024]
	movs r1, #0x4E
	add r1, r10
	mov r8, r1
	adds r7, r1, r6
	ldrh r2, [r7, #0x00]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
	mov r3, r10
	adds r3, #0x54
	adds r1, r3, r6
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	adds r5, r5, r2
	strh r5, [r7, #0x00]
	ldrh r0, [r1, #0x00]
	adds r4, r4, r0
	strh r4, [r1, #0x00]
	ldrh r2, [r7, #0x00]
	movs r5, #0x00
	ldsh r0, [r7, r5]
	mov r1, r8
	str r1, [sp, #0x03C]
	str r3, [sp, #0x040]
	mov r3, r12
	str r3, [sp, #0x034]
	mov r5, r9
	str r5, [sp, #0x038]
	cmp r0, #0x00
	bge _08058C30
	mov r0, r10
	adds r0, #0x36
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	adds r0, r2, r0
	b _08058C42
_08058C30:
	movs r0, #0x00
	ldsh r1, [r7, r0]
	mov r0, r10
	adds r0, #0x36
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08058C44
	subs r0, r2, r0
_08058C42:
	strh r0, [r7, #0x00]
_08058C44:
	ldr r1, [sp, #0x040]
	adds r2, r1, r6
	ldrh r3, [r2, #0x00]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _08058C5E
	mov r0, r10
	adds r0, #0x3C
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	adds r0, r3, r0
	b _08058C70
_08058C5E:
	movs r0, #0x00
	ldsh r1, [r2, r0]
	mov r0, r10
	adds r0, #0x3C
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08058C72
	subs r0, r3, r0
_08058C70:
	strh r0, [r2, #0x00]
_08058C72:
	ldr r1, [sp, #0x03C]
	adds r0, r1, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	ldr r2, [sp, #0x040]
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [sp, #0x034]
	cmp r3, #0x00
	ble _08058D1C
	ldr r5, [sp, #0x020]
	lsls r1, r5, #0x10
	ldr r2, [sp, #0x014]
	lsls r0, r2, #0x10
	adds r5, r0, #0x0
	cmp r1, r5
	beq _08058D1C
	movs r4, #0x00
	ldr r3, [sp, #0x00C]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x028]
	mov r0, r10
	adds r0, #0x42
	adds r0, r0, r6
	mov r9, r0
	b _08058CFE
_08058CBA:
	adds r4, r7, #0x0
	adds r4, #0x10
	ldr r1, [sp, #0x028]
	adds r0, r1, r4
	mov r2, r9
	ldrh r1, [r2, #0x00]
	bl __modsi3
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	ldr r1, _08058D18 @ =0xFFFF0000
	adds r3, r3, r1
	asrs r0, r5, #0x10
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x10
	ldr r1, _08058D18 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r3, r3, #0x10
	bl sub_80592C8
	adds r0, r7, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08058CFE:
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	ldr r2, [sp, #0x034]
	asrs r0, r2, #0x10
	cmp r0, #0x00
	bge _08058D0C
	adds r0, #0x0F
_08058D0C:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r7, r0
	blt _08058CBA
	b _08058DA2
	.byte 0x00, 0x00
_08058D18: .4byte 0xFFFF0000
_08058D1C:
	ldr r3, [sp, #0x034]
	asrs r2, r3, #0x10
	cmp r2, #0x00
	bge _08058DA2
	ldr r5, [sp, #0x020]
	lsls r1, r5, #0x10
	ldr r3, [sp, #0x014]
	lsls r0, r3, #0x10
	adds r5, r0, #0x0
	cmp r1, r5
	beq _08058DA2
	negs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r4, #0x00
	ldr r1, [sp, #0x00C]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x02C]
	mov r0, r10
	adds r0, #0x42
	adds r7, r0, r6
	b _08058D8A
_08058D4C:
	adds r4, #0x01
	ldr r2, [sp, #0x02C]
	subs r0, r2, r4
	ldrh r1, [r7, #0x00]
	bl __modsi3
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	ldr r1, _08058DCC @ =0xFFFF0000
	adds r3, r3, r1
	asrs r0, r5, #0x10
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x10
	ldr r1, _08058DCC @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r3, r3, #0x10
	bl sub_80592C8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
_08058D8A:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _08058D9A
	adds r0, #0x0F
_08058D9A:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r4, r0
	blt _08058D4C
_08058DA2:
	ldr r3, [sp, #0x038]
	cmp r3, #0x00
	ble _08058E2C
	ldr r5, [sp, #0x024]
	lsls r1, r5, #0x10
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	adds r7, r0, #0x0
	cmp r1, r7
	beq _08058E2C
	movs r4, #0x00
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058DCC @ =0xFFFF0000
	adds r5, r0, r1
	b _08058E10
	.byte 0x00, 0x00
_08058DCC: .4byte 0xFFFF0000
_08058DD0:
	adds r0, r4, #0x0
	adds r0, #0x0B
	add r0, r8
	mov r1, r10
	adds r1, #0x48
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	bl __modsi3
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldr r2, [sp, #0x020]
	lsls r0, r2, #0x10
	ldr r1, _08058E28 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	asrs r0, r7, #0x10
	adds r0, r0, r4
	adds r0, #0x0B
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r2, r5, #0x10
	bl sub_8059190
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08058E10:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	ldr r2, [sp, #0x038]
	asrs r0, r2, #0x10
	cmp r0, #0x00
	bge _08058E1E
	adds r0, #0x0F
_08058E1E:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r4, r0
	blt _08058DD0
	b _08058EBC
_08058E28: .4byte 0xFFFF0000
_08058E2C:
	ldr r5, [sp, #0x038]
	asrs r3, r5, #0x10
	cmp r3, #0x00
	bge _08058EBC
	ldr r0, [sp, #0x024]
	lsls r1, r0, #0x10
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	adds r7, r0, #0x0
	cmp r1, r7
	beq _08058EBC
	negs r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r4, #0x00
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x030]
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058E60 @ =0xFFFF0000
	adds r1, r1, r0
	mov r9, r1
	b _08058EA4
_08058E60: .4byte 0xFFFF0000
_08058E64:
	adds r4, r5, #0x1
	ldr r2, [sp, #0x030]
	subs r0, r2, r4
	mov r1, r10
	adds r1, #0x48
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	bl __modsi3
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldr r1, [sp, #0x020]
	lsls r0, r1, #0x10
	ldr r2, _08058ECC @ =0xFFFF0000
	adds r0, r0, r2
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	asrs r0, r7, #0x10
	subs r0, r0, r5
	subs r0, #0x01
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	mov r5, r9
	asrs r2, r5, #0x10
	bl sub_8059190
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
_08058EA4:
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _08058EB4
	adds r0, #0x0F
_08058EB4:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r5, r0
	blt _08058E64
_08058EBC:
	add sp, #0x050
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08058ECC: .4byte 0xFFFF0000
	thumb_func_start sub_8058ED0
sub_8058ED0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r12, r1
	lsls r2, r2, #0x10
	adds r0, #0xA8
	ldr r7, [r0, #0x00]
	ldr r0, _08058FD0 @ =0x00000579
	adds r1, r4, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	lsrs r1, r2, #0x10
	mov r9, r1
	asrs r2, r2, #0x10
	mov r8, r2
	movs r0, #0x0F
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ands r0, r3
	mov r2, r12
	lsls r5, r2, #0x0B
	lsls r1, r0, #0x06
	adds r1, r5, r1
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x000]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x05
	adds r0, r5, r0
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x004]
	movs r6, #0x80
	lsls r6, r6, #0x03
	adds r2, r6, #0x0
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r2, _08058FD4 @ =0x083AAE08
	movs r0, #0x02
	mov r1, r12
	subs r0, r0, r1
	lsls r0, r0, #0x01
	ldrh r1, [r4, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _08058FD8 @ =0x0000FFFF
	cmp r1, r0
	beq _0805904A
	mov r2, r12
	lsls r1, r2, #0x01
	adds r0, r4, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r6, r8
	cmp r6, #0x00
	bge _08058F64
	movs r1, #0x00
	mov r9, r1
_08058F64:
	adds r1, r3, #0x0
	muls r1, r0
	adds r1, r5, r1
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r6, #0x00
	mov r12, r6
	adds r6, r4, #0x0
	adds r6, #0x94
	adds r5, r4, #0x0
	adds r5, #0x98
_08058F84:
	mov r0, r12
	add r0, r9
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0x00
	beq _08058FDC
	movs r0, #0x0F
	ands r4, r0
	lsls r4, r4, #0x01
	ldr r0, [sp, #0x008]
	adds r3, r0, r4
	ldr r1, [r6, #0x00]
	lsls r3, r3, #0x01
	adds r1, r3, r1
	mov r2, r8
	add r2, r12
	ldr r0, [r5, #0x00]
	lsls r2, r2, #0x01
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r3, r3, r0
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x02]
	strh r0, [r3, #0x02]
	add r4, r10
	b _08059016
	.byte 0x00, 0x00
_08058FD0: .4byte 0x00000579
_08058FD4: .4byte 0x083AAE08
_08058FD8: .4byte 0x0000FFFF
_08058FDC:
	movs r0, #0x0F
	ands r4, r0
	lsls r4, r4, #0x01
	ldr r1, [sp, #0x000]
	adds r3, r1, r4
	ldr r1, [r6, #0x00]
	lsls r3, r3, #0x01
	adds r1, r3, r1
	mov r2, r8
	add r2, r12
	ldr r0, [r5, #0x00]
	lsls r2, r2, #0x01
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r3, r3, r0
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x02]
	strh r0, [r3, #0x02]
	ldr r0, [sp, #0x004]
	adds r4, r0, r4
_08059016:
	ldr r1, [r6, #0x00]
	lsls r4, r4, #0x01
	adds r1, r4, r1
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r4, r4, r0
	ldr r0, [r5, #0x00]
	adds r2, r2, r0
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x06]
	strh r0, [r4, #0x02]
	mov r0, r12
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	cmp r0, #0x11
	bls _08058F84
_0805904A:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805905C
sub_805905C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r3, r3, #0x10
	adds r0, #0xA8
	ldr r6, [r0, #0x00]
	ldr r0, _08059108 @ =0x00000579
	adds r1, r4, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r12, r2
	movs r0, #0x0F
	ands r0, r2
	lsrs r1, r3, #0x10
	mov r10, r1
	asrs r3, r3, #0x10
	lsls r7, r5, #0x0B
	lsls r0, r0, #0x01
	adds r0, r7, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x000]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	ldr r2, _0805910C @ =0x083AAE08
	movs r0, #0x02
	subs r0, r0, r5
	lsls r0, r0, #0x01
	ldrh r1, [r4, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _08059110 @ =0x0000FFFF
	cmp r1, r0
	beq _0805917E
	lsls r1, r5, #0x01
	adds r0, r4, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r9, r0
	cmp r3, #0x00
	bge _080590D0
	movs r0, #0x00
	mov r10, r0
_080590D0:
	mov r1, r10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, r9
	muls r2, r0
	adds r0, r2, #0x0
	adds r0, r7, r0
	add r0, r12
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0x00
	mov r8, r0
	adds r5, r4, #0x0
	adds r5, #0x94
	adds r4, #0x98
_080590EE:
	mov r0, r8
	add r0, r10
	movs r1, #0x0F
	ands r0, r1
	lsls r1, r0, #0x06
	movs r0, #0x10
	mov r2, r12
	ands r0, r2
	cmp r0, #0x00
	beq _08059114
	ldr r0, [sp, #0x004]
	b _08059116
	.byte 0x00, 0x00
_08059108: .4byte 0x00000579
_0805910C: .4byte 0x083AAE08
_08059110: .4byte 0x0000FFFF
_08059114:
	ldr r0, [sp, #0x000]
_08059116:
	adds r2, r0, r1
	ldr r1, [r5, #0x00]
	lsls r2, r2, #0x01
	adds r1, r2, r1
	ldr r0, [r4, #0x00]
	lsls r3, r7, #0x01
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, r2, r1
	ldr r0, [r4, #0x00]
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r1, [r5, #0x00]
	adds r1, r2, r1
	adds r1, #0x40
	ldr r0, [r4, #0x00]
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	adds r2, r2, r0
	adds r2, #0x42
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x06]
	strh r0, [r2, #0x00]
	mov r1, r9
	adds r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0x0C
	bls _080590EE
_0805917E:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8059190
sub_8059190:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	ldr r0, [sp, #0x034]
	ldr r4, [sp, #0x038]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r12, r4
	ldr r0, _08059204 @ =0x00000579
	adds r1, r5, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _08059208 @ =0x083AAE08
	movs r0, #0x02
	mov r1, r9
	subs r0, r0, r1
	lsls r0, r0, #0x01
	ldrh r1, [r5, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _0805920C @ =0x0000FFFF
	cmp r1, r0
	beq _080592B6
	mov r2, r9
	lsls r0, r2, #0x01
	adds r1, r5, #0x0
	adds r1, #0x2A
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	mov r10, r1
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	str r0, [sp, #0x010]
	cmp r1, #0x00
	bge _08059210
	adds r0, r5, #0x0
	adds r0, #0x48
	ldr r4, [sp, #0x010]
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	adds r0, r0, r3
	b _08059220
_08059204: .4byte 0x00000579
_08059208: .4byte 0x083AAE08
_0805920C: .4byte 0x0000FFFF
_08059210:
	adds r0, r5, #0x0
	adds r0, #0x48
	ldr r7, [sp, #0x010]
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08059224
	subs r0, r3, r0
_08059220:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08059224:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bge _08059240
	adds r1, r5, #0x0
	adds r1, #0x42
	ldr r2, [sp, #0x010]
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r8, r1
	b _08059256
_08059240:
	adds r1, r5, #0x0
	adds r1, #0x42
	ldr r4, [sp, #0x010]
	adds r0, r1, r4
	ldrh r0, [r0, #0x00]
	mov r8, r1
	cmp r2, r0
	blt _08059256
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08059256:
	movs r4, #0x00
	mov r7, r12
	lsls r7, r7, #0x10
	str r7, [sp, #0x00C]
	lsls r0, r3, #0x10
	mov r2, r9
	lsls r1, r2, #0x0B
	adds r3, r5, #0x0
	adds r3, #0x98
	str r3, [sp, #0x008]
	asrs r0, r0, #0x10
	mov r7, r10
	muls r7, r0
	adds r0, r7, #0x0
	adds r1, r1, r0
	mov r10, r1
_08059276:
	adds r0, r4, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x010]
	add r1, r8
	ldrh r1, [r1, #0x00]
	bl __modsi3
	ldr r1, [sp, #0x004]
	adds r2, r4, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r0, r10
	ldr r3, [sp, #0x008]
	ldr r1, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r9
	ldr r7, [sp, #0x00C]
	asrs r3, r7, #0x10
	bl sub_8058898
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x11
	bls _08059276
_080592B6:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80592C8
sub_80592C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r5, r0, #0x0
	ldr r0, [sp, #0x03C]
	ldr r4, [sp, #0x040]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r10, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x004]
	ldr r0, _08059340 @ =0x00000579
	adds r1, r5, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _08059344 @ =0x083AAE08
	movs r0, #0x02
	mov r1, r10
	subs r0, r0, r1
	lsls r0, r0, #0x01
	ldrh r1, [r5, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _08059348 @ =0x0000FFFF
	cmp r1, r0
	beq _080593EA
	mov r2, r10
	lsls r0, r2, #0x01
	adds r1, r5, #0x0
	adds r1, #0x2A
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	str r1, [sp, #0x008]
	lsls r1, r6, #0x10
	asrs r2, r1, #0x10
	mov r8, r0
	cmp r2, #0x00
	bge _0805934C
	adds r1, r5, #0x0
	adds r1, #0x48
	adds r0, r1, r0
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r9, r1
	b _08059362
	.byte 0x00, 0x00
_08059340: .4byte 0x00000579
_08059344: .4byte 0x083AAE08
_08059348: .4byte 0x0000FFFF
_0805934C:
	adds r1, r5, #0x0
	adds r1, #0x48
	mov r4, r8
	adds r0, r1, r4
	ldrh r0, [r0, #0x00]
	mov r9, r1
	cmp r2, r0
	blt _08059362
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08059362:
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x00
	bge _08059376
	adds r0, r5, #0x0
	adds r0, #0x42
	add r0, r8
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	b _08059384
_08059376:
	adds r0, r5, #0x0
	adds r0, #0x42
	add r0, r8
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08059388
	subs r0, r7, r0
_08059384:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08059388:
	movs r4, #0x00
	lsls r3, r3, #0x10
	str r3, [sp, #0x014]
	mov r0, r10
	lsls r0, r0, #0x0B
	str r0, [sp, #0x00C]
	adds r1, r5, #0x0
	adds r1, #0x98
	str r1, [sp, #0x010]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x018]
_080593A0:
	adds r0, r4, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r9
	add r1, r8
	ldrh r1, [r1, #0x00]
	bl __modsi3
	ldr r2, [sp, #0x004]
	adds r3, r4, r2
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r7, [sp, #0x008]
	muls r0, r7
	ldr r1, [sp, #0x00C]
	adds r0, r1, r0
	ldr r2, [sp, #0x018]
	adds r0, r0, r2
	ldr r7, [sp, #0x010]
	ldr r1, [r7, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r10
	ldr r7, [sp, #0x014]
	asrs r2, r7, #0x10
	bl sub_8058898
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x0C
	bls _080593A0
_080593EA:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0x09, 0x06, 0x08, 0x0E, 0x12, 0x04, 0x12, 0x0C, 0x10, 0x28, 0x00, 0xD9
	.byte 0x8B, 0xE0, 0x80, 0x00, 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00, 0x1C, 0x94
	.byte 0x05, 0x08, 0x60, 0x94, 0x05, 0x08, 0x6C, 0x94, 0x05, 0x08, 0x78, 0x94, 0x05, 0x08, 0x84, 0x94
	.byte 0x05, 0x08, 0x90, 0x94, 0x05, 0x08, 0x9C, 0x94, 0x05, 0x08, 0xA8, 0x94, 0x05, 0x08, 0xB4, 0x94
	.byte 0x05, 0x08, 0xC0, 0x94, 0x05, 0x08, 0xCC, 0x94, 0x05, 0x08, 0xD8, 0x94, 0x05, 0x08, 0xE4, 0x94
	.byte 0x05, 0x08, 0xF0, 0x94, 0x05, 0x08, 0xFC, 0x94, 0x05, 0x08, 0x08, 0x95, 0x05, 0x08, 0x14, 0x95
	.byte 0x05, 0x08, 0x20, 0x95, 0x05, 0x08, 0x01, 0x48, 0x02, 0x70, 0x5E, 0xE0, 0x00, 0x00, 0xD0, 0x0D
	.byte 0x00, 0x03, 0x01, 0x48, 0x82, 0x70, 0x58, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48
	.byte 0xC2, 0x70, 0x52, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x02, 0x71, 0x4C, 0xE0
	.byte 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x42, 0x71, 0x46, 0xE0, 0x00, 0x00, 0xD0, 0x0D
	.byte 0x00, 0x03, 0x01, 0x48, 0x82, 0x71, 0x40, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48
	.byte 0xC2, 0x71, 0x3A, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x02, 0x72, 0x34, 0xE0
	.byte 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x42, 0x72, 0x2E, 0xE0, 0x00, 0x00, 0xD0, 0x0D
	.byte 0x00, 0x03, 0x01, 0x48, 0x82, 0x72, 0x28, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48
	.byte 0xC2, 0x72, 0x22, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x82, 0x81, 0x1C, 0xE0
	.byte 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0xC2, 0x81, 0x16, 0xE0, 0x00, 0x00, 0xD0, 0x0D
	.byte 0x00, 0x03, 0x01, 0x48, 0x02, 0x82, 0x10, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48
	.byte 0x42, 0x82, 0x0A, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x02, 0x75, 0x04, 0xE0
	.byte 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x42, 0x70, 0x01, 0xBC, 0x00, 0x47, 0xD0, 0x0D
	.byte 0x00, 0x03
	thumb_func_start sub_805952C
sub_805952C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	strh r1, [r7, #0x22]
	strh r2, [r7, #0x24]
	movs r0, #0x02
_08059540:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	str r0, [sp, #0x004]
	cmp r2, #0x02
	beq _08059634
	adds r0, r7, #0x0
	adds r0, #0x8A
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r10, r0
	cmp r0, #0x00
	bne _08059634
	lsls r6, r2, #0x01
	movs r0, #0x4E
	adds r0, r0, r7
	mov r8, r0
	adds r0, r0, r6
	mov r12, r0
	adds r1, r7, #0x0
	adds r1, #0x72
	adds r1, r1, r6
	movs r2, #0x5E
	adds r2, r2, r7
	mov r9, r2
	movs r3, #0x00
	ldsh r2, [r2, r3]
	adds r0, r7, #0x0
	adds r0, #0x7E
	adds r0, r0, r6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r0, r2
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	mov r1, r12
	strh r0, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x54
	adds r2, r4, r6
	str r2, [sp, #0x008]
	adds r1, r7, #0x0
	adds r1, #0x78
	adds r1, r1, r6
	adds r3, r7, #0x0
	adds r3, #0x64
	movs r5, #0x00
	ldsh r2, [r3, r5]
	adds r0, r7, #0x0
	adds r0, #0x84
	adds r0, r0, r6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r0, r2
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r1, [sp, #0x008]
	strh r0, [r1, #0x00]
	mov r2, r12
	movs r5, #0x00
	ldsh r0, [r2, r5]
	adds r5, r4, #0x0
	str r3, [sp, #0x000]
	cmp r0, #0x00
	bge _080595D2
	mov r0, r10
	strh r0, [r2, #0x00]
	b _080595EA
_080595D2:
	mov r1, r12
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r1, r7, #0x0
	adds r1, #0x36
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _080595EA
	mov r3, r12
	strh r1, [r3, #0x00]
_080595EA:
	ldr r0, [sp, #0x004]
	asrs r3, r0, #0x0F
	adds r2, r5, r3
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _080595FE
	movs r3, #0x00
	strh r3, [r2, #0x00]
	b _08059612
_080595FE:
	movs r1, #0x00
	ldsh r0, [r2, r1]
	adds r1, r7, #0x0
	adds r1, #0x3C
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _08059612
	strh r1, [r2, #0x00]
_08059612:
	ldr r2, [sp, #0x004]
	asrs r1, r2, #0x0F
	adds r4, r7, #0x0
	adds r4, #0x5A
	adds r2, r4, r1
	mov r3, r8
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x60
	adds r2, r3, r1
	adds r1, r5, r1
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	adds r5, r3, #0x0
	b _08059670
_08059634:
	ldr r5, [sp, #0x004]
	asrs r2, r5, #0x0F
	adds r0, r7, #0x0
	adds r0, #0x4E
	adds r0, r0, r2
	ldrh r1, [r7, #0x22]
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x54
	adds r0, r0, r2
	ldrh r1, [r7, #0x24]
	strh r1, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x5A
	adds r1, r3, r2
	ldrh r0, [r7, #0x22]
	strh r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x60
	adds r2, r1, r2
	ldrh r0, [r7, #0x24]
	strh r0, [r2, #0x00]
	movs r0, #0x5E
	adds r0, r0, r7
	mov r9, r0
	adds r2, r7, #0x0
	adds r2, #0x64
	str r2, [sp, #0x000]
	adds r4, r3, #0x0
	adds r5, r1, #0x0
_08059670:
	ldr r3, [sp, #0x004]
	asrs r1, r3, #0x10
	lsls r2, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x66
	adds r0, r0, r2
	movs r3, #0x00
	strh r3, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x6C
	adds r0, r0, r2
	strh r3, [r0, #0x00]
	subs r1, #0x01
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r1, #0x00
	blt _08059694
	b _08059540
_08059694:
	ldr r3, _080596F0 @ =0x02000014
	ldrh r2, [r4, #0x00]
	ldr r1, _080596F4 @ =0x000001FF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	adds r0, r7, #0x0
	adds r0, #0x5C
	ldrh r2, [r0, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _080596F8 @ =0x0200001C
	mov r3, r9
	ldrh r0, [r3, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080596FC @ =0x02000016
	ldrb r0, [r5, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0x62
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r5, [sp, #0x000]
	ldrb r0, [r5, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_80584F8
	ldr r0, _08059700 @ =0x00000579
	adds r1, r7, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080596F0: .4byte 0x02000014
_080596F4: .4byte 0x000001FF
_080596F8: .4byte 0x0200001C
_080596FC: .4byte 0x02000016
_08059700: .4byte 0x00000579
	thumb_func_start sub_8059704
sub_8059704:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r3, #0x0
	ldr r6, [sp, #0x018]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl __7ProcessUcPc
	ldr r0, _080597E0 @ =0x08CDC278
	str r0, [r7, #0x18]
	movs r4, #0x00
	ldr r0, _080597E4 @ =0x0000FFFB
	strh r0, [r7, #0x1C]
	strh r5, [r7, #0x1E]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	adds r0, r7, #0x0
	adds r0, #0x7C
	strh r6, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ldr r2, _080597E8 @ =0x081E27C4
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r7, #0x68]
	movs r0, #0xC0
	lsls r0, r0, #0x07
	ldr r2, _080597EC @ =0x081E27CC
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r7, #0x70]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r2, _080597F0 @ =0x081E27D4
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r7, #0x78]
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x68]
	ldr r2, _080597F4 @ =0x01000C00
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x70]
	ldr r2, _080597F8 @ =0x01001800
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x78]
	ldr r2, _080597FC @ =0x01000080
	mov r0, sp
	bl CpuFastSet
	ldrh r1, [r7, #0x1E]
	ldr r0, _08059800 @ =0x00007FFF
	ands r0, r1
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r2, _08059804 @ =0x083A78D4
	ldr r0, _08059808 @ =0x03000DE8
	adds r1, r1, r2
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	adds r0, r7, #0x0
	adds r0, #0x52
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x0A
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x0A
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x0A
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080597E0: .4byte 0x08CDC278
_080597E4: .4byte 0x0000FFFB
_080597E8: .4byte 0x081E27C4
_080597EC: .4byte 0x081E27CC
_080597F0: .4byte 0x081E27D4
_080597F4: .4byte 0x01000C00
_080597F8: .4byte 0x01001800
_080597FC: .4byte 0x01000080
_08059800: .4byte 0x00007FFF
_08059804: .4byte 0x083A78D4
_08059808: .4byte 0x03000DE8
	thumb_func_start sub_805980C
sub_805980C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r6, _08059830 @ =0x086527F4
	adds r7, r6, #0x0
	ldr r0, _08059834 @ =0x03000DE8
	ldrb r5, [r0, #0x03]
	ldrh r0, [r4, #0x1C]
	adds r0, #0x05
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	bls _08059826
	b _0805991C
_08059826:
	lsls r0, r0, #0x02
	ldr r1, _08059838 @ =0x0805983C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08059830: .4byte 0x086527F4
_08059834: .4byte 0x03000DE8
_08059838: .4byte 0x0805983C
	.byte 0x50, 0x98, 0x05, 0x08, 0x88, 0x98, 0x05, 0x08, 0xC4, 0x98, 0x05, 0x08, 0x00, 0x99, 0x05, 0x08
	.byte 0x10, 0x99, 0x05, 0x08, 0x20, 0x1C, 0x00, 0xF0, 0x9B, 0xFA, 0x00, 0x23, 0x09, 0x4A, 0x13, 0x60
	.byte 0x09, 0x48, 0xA9, 0x00, 0x09, 0x18, 0x08, 0x78, 0xFF, 0x28, 0x56, 0xD0, 0x80, 0x00, 0xC0, 0x19
	.byte 0x00, 0x68, 0x30, 0x18, 0x50, 0x60, 0x20, 0x6F, 0x90, 0x60, 0xD3, 0x60, 0x10, 0x1C, 0xBF, 0xF7
	.byte 0xC5, 0xFF, 0x4A, 0xE0, 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08, 0x0C, 0x4B, 0x1A, 0x68
	.byte 0x00, 0x2A, 0x45, 0xD1, 0x0B, 0x48, 0xA9, 0x00, 0x01, 0x31, 0x09, 0x18, 0x08, 0x78, 0xFF, 0x28
	.byte 0x3B, 0xD0, 0x80, 0x00, 0xC0, 0x19, 0x00, 0x68, 0x30, 0x18, 0x58, 0x60, 0x20, 0x6F, 0x80, 0x21
	.byte 0x89, 0x01, 0x40, 0x18, 0x98, 0x60, 0xDA, 0x60, 0x18, 0x1C, 0xBF, 0xF7, 0xA7, 0xFF, 0x2C, 0xE0
	.byte 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08, 0x0C, 0x4B, 0x1A, 0x68, 0x00, 0x2A, 0x27, 0xD1
	.byte 0x0B, 0x48, 0xA9, 0x00, 0x02, 0x31, 0x09, 0x18, 0x08, 0x78, 0xFF, 0x28, 0x1D, 0xD0, 0x80, 0x00
	.byte 0xC0, 0x19, 0x00, 0x68, 0x30, 0x18, 0x58, 0x60, 0x20, 0x6F, 0x80, 0x21, 0xC9, 0x01, 0x40, 0x18
	.byte 0x98, 0x60, 0xDA, 0x60, 0x18, 0x1C, 0xBF, 0xF7, 0x89, 0xFF, 0x0E, 0xE0, 0xC0, 0x0D, 0x00, 0x03
	.byte 0x6C, 0xAA, 0x3A, 0x08, 0x02, 0x48, 0x00, 0x68, 0x00, 0x28, 0x09, 0xD1, 0x05, 0xE0, 0x00, 0x00
	.byte 0xC0, 0x0D, 0x00, 0x03, 0x20, 0x1C, 0x00, 0xF0, 0x63, 0xFA, 0xA0, 0x8B, 0x01, 0x30, 0xA0, 0x83
_0805991C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8059924
sub_8059924:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	movs r0, #0x00
	str r0, [sp, #0x004]
_08059936:
	ldr r2, _08059A84 @ =0x083AAE08
	movs r1, #0x02
	ldr r3, [sp, #0x004]
	subs r1, r1, r3
	lsls r1, r1, #0x01
	ldrh r0, [r7, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	ldr r0, _08059A88 @ =0x0000FFFF
	adds r3, #0x01
	str r3, [sp, #0x018]
	cmp r1, r0
	bne _08059956
	b _08059A64
_08059956:
	ldr r5, [sp, #0x004]
	lsls r2, r5, #0x01
	adds r0, r7, #0x0
	adds r0, #0x2A
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r0, #0x4E
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	adds r0, r7, #0x0
	adds r0, #0x54
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x14
	subs r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r6, #0x11
	mov r10, r6
	movs r0, #0x0D
	str r0, [sp, #0x00C]
	cmp r1, #0x00
	bne _080599A8
	movs r5, #0x10
	mov r10, r5
	ldr r6, [sp, #0x010]
	lsls r0, r6, #0x10
	movs r5, #0x80
	lsls r5, r5, #0x09
	adds r0, r0, r5
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
_080599A8:
	adds r1, #0x0F
	adds r0, r7, #0x0
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _080599C0
	mov r0, r10
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_080599C0:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bne _080599D4
	movs r6, #0x0C
	str r6, [sp, #0x00C]
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	lsrs r3, r0, #0x10
_080599D4:
	adds r1, #0x0A
	adds r0, r7, #0x0
	adds r0, #0x48
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _080599EC
	mov r0, r10
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_080599EC:
	movs r2, #0x00
	ldr r5, [sp, #0x00C]
	cmp r2, r5
	bge _08059A64
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x014]
_080599FA:
	movs r1, #0x00
	lsls r2, r2, #0x10
	str r2, [sp, #0x01C]
	cmp r1, r10
	bge _08059A52
	ldr r6, [sp, #0x010]
	lsls r0, r6, #0x10
	asrs r5, r0, #0x10
	asrs r0, r2, #0x10
	ldr r2, [sp, #0x014]
	adds r0, r0, r2
	lsls r3, r0, #0x10
	mov r9, r3
	ldr r2, [sp, #0x008]
	adds r6, r0, #0x0
	muls r6, r2
	mov r8, r6
_08059A1C:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r2, r4, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, [sp, #0x004]
	lsls r0, r3, #0x0B
	add r0, r8
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r1, [r7, #0x6C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r3, #0x0
	mov r6, r9
	asrs r3, r6, #0x10
	bl sub_8059A8C
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r10
	blt _08059A1C
_08059A52:
	ldr r1, [sp, #0x01C]
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r1, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x00C]
	cmp r0, r3
	blt _080599FA
_08059A64:
	ldr r5, [sp, #0x018]
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	cmp r0, #0x02
	bhi _08059A72
	b _08059936
_08059A72:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08059A84: .4byte 0x083AAE08
_08059A88: .4byte 0x0000FFFF
	thumb_func_start sub_8059A8C
sub_8059A8C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r5, [sp, #0x014]
	lsls r1, r1, #0x10
	lsls r5, r5, #0x10
	ldr r4, [r0, #0x74]
	mov r8, r4
	movs r6, #0x0F
	lsrs r1, r1, #0x06
	ands r3, r6
	lsls r4, r3, #0x06
	adds r4, r1, r4
	ands r2, r6
	lsls r2, r2, #0x01
	adds r4, r4, r2
	lsls r4, r4, #0x10
	lsls r3, r3, #0x01
	adds r3, #0x01
	lsls r3, r3, #0x05
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r1, r1, #0x10
	adds r2, r0, #0x0
	adds r2, #0x7C
	ldrh r2, [r2, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x10
	ldr r3, [r0, #0x68]
	lsrs r4, r4, #0x0F
	adds r4, r4, r3
	lsrs r5, r5, #0x0D
	add r5, r8
	ldrh r0, [r5, #0x00]
	adds r0, r2, r0
	strh r0, [r4, #0x00]
	ldrh r0, [r5, #0x02]
	adds r0, r2, r0
	strh r0, [r4, #0x02]
	lsrs r1, r1, #0x0F
	adds r1, r1, r3
	ldrh r0, [r5, #0x04]
	adds r0, r2, r0
	strh r0, [r1, #0x00]
	ldrh r0, [r5, #0x06]
	adds r2, r2, r0
	strh r2, [r1, #0x02]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8059AF4
sub_8059AF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r12, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
_08059B06:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r5, _08059B54 @ =0x083AAE08
	adds r1, r0, r5
	ldrh r0, [r1, #0x00]
	ldr r2, _08059B58 @ =0x0000FFFF
	cmp r0, r2
	bne _08059B24
	b _08059C60
_08059B24:
	lsls r0, r0, #0x02
	ldr r5, _08059B5C @ =0x08754D74
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r6, r1, r0
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r3, r0, r1
	movs r0, #0x03
	ands r0, r3
	cmp r0, #0x00
	bne _08059B60
	ldr r2, [sp, #0x000]
	lsls r1, r2, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r1
	movs r5, #0xFC
	ands r5, r3
	strh r5, [r0, #0x00]
	adds r4, r1, #0x0
	b _08059B76
	.byte 0x00, 0x00
_08059B54: .4byte 0x083AAE08
_08059B58: .4byte 0x0000FFFF
_08059B5C: .4byte 0x08754D74
_08059B60:
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r1, r12
	adds r1, #0x2A
	adds r1, r1, r2
	asrs r0, r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x18
	strh r5, [r1, #0x00]
	adds r4, r2, #0x0
_08059B76:
	mov r1, r12
	adds r1, #0x30
	adds r1, r1, r4
	ldrb r0, [r6, #0x01]
	lsls r3, r0, #0x02
	adds r3, r3, r0
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x18
	strh r3, [r1, #0x00]
	mov r2, r12
	adds r2, #0x42
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08059CFC @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x26]
	adds r2, #0x48
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	strh r0, [r2, #0x00]
	ldr r1, _08059CFC @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x28]
	adds r2, #0x36
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x04
	strh r0, [r2, #0x00]
	mov r2, r12
	adds r2, #0x3C
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	strh r0, [r2, #0x00]
	movs r7, #0x02
	movs r0, #0x00
	mov r8, r0
	cmp r0, r3
	bcs _08059C60
	lsls r5, r5, #0x10
	str r5, [sp, #0x00C]
	lsrs r1, r5, #0x10
	str r1, [sp, #0x010]
	str r3, [sp, #0x004]
_08059BE6:
	movs r2, #0x00
	adds r0, #0x01
	str r0, [sp, #0x014]
	ldr r5, [sp, #0x010]
	cmp r2, r5
	bcs _08059C54
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x0B
	mov r10, r0
	mov r1, r12
	ldr r1, [r1, #0x6C]
	mov r9, r1
	ldr r5, [sp, #0x00C]
	lsrs r5, r5, #0x10
	str r5, [sp, #0x008]
_08059C04:
	adds r1, r7, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r6, r1
	ldrb r3, [r1, #0x00]
	movs r4, #0x00
	adds r5, r2, #0x4
_08059C14:
	movs r2, #0xC0
	ands r2, r3
	lsls r2, r2, #0x02
	adds r1, r7, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r6, r1
	ldrb r1, [r1, #0x00]
	orrs r1, r2
	mov r0, r10
	add r0, r8
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	lsls r0, r3, #0x1A
	lsrs r3, r0, #0x18
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x03
	bls _08059C14
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [sp, #0x008]
	cmp r2, r0
	bcc _08059C04
_08059C54:
	ldr r1, [sp, #0x014]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x004]
	cmp r0, r2
	bcc _08059BE6
_08059C60:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x02
	bhi _08059C70
	b _08059B06
_08059C70:
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r4, _08059D00 @ =0x083AAE08
	ldr r3, _08059CFC @ =0x0000FFFF
_08059C78:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	cmp r0, r3
	bne _08059CDE
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r2
	mov r5, r12
	ldrh r1, [r5, #0x2E]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x30
	adds r0, r0, r2
	ldrh r1, [r5, #0x34]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x36
	adds r0, r0, r2
	ldrh r1, [r5, #0x3A]
	strh r1, [r0, #0x00]
	mov r1, r12
	adds r1, #0x3C
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x42
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x46
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x48
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x4C
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
_08059CDE:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x01
	bls _08059C78
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08059CFC: .4byte 0x0000FFFF
_08059D00: .4byte 0x083AAE08
	thumb_func_start sub_8059D04
sub_8059D04:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r5, _08059D7C @ =0x086FFC20
	mov r9, r5
	ldr r1, _08059D80 @ =0x03000DE8
	ldrb r7, [r1, #0x04]
	ldr r2, _08059D84 @ =0x083AAC4C
	lsls r1, r7, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r4, r1, r5
	movs r3, #0x00
	mov r8, r2
	ldr r2, [r0, #0x74]
	ldr r6, _08059D88 @ =0x000007FF
	mov r12, r2
_08059D2E:
	lsls r0, r3, #0x01
	adds r1, r0, r2
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	bls _08059D2E
	lsls r0, r7, #0x02
	add r0, r8
	ldrh r0, [r0, #0x02]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r4, r5, r0
	movs r3, #0x00
	mov r2, r12
	movs r6, #0x80
	lsls r6, r6, #0x05
	ldr r5, _08059D88 @ =0x000007FF
_08059D5A:
	lsls r0, r3, #0x01
	adds r1, r0, r2
	adds r1, r1, r6
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	bls _08059D5A
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08059D7C: .4byte 0x086FFC20
_08059D80: .4byte 0x03000DE8
_08059D84: .4byte 0x083AAC4C
_08059D88: .4byte 0x000007FF
	thumb_func_start sub_8059D8C
sub_8059D8C:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, _08059DA4 @ =0x0300034C
	ldr r1, _08059DA8 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08059DB0
	ldr r2, _08059DAC @ =0x088D4808
	b _08059DB2
_08059DA4: .4byte 0x0300034C
_08059DA8: .4byte 0x00000888
_08059DAC: .4byte 0x088D4808
_08059DB0:
	ldr r2, _08059DD0 @ =0x088C8730
_08059DB2:
	ldr r1, _08059DD4 @ =0x083AAD68
	ldr r0, _08059DD8 @ =0x03000DE8
	ldrb r0, [r0, #0x05]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r0, r2, r0
	ldr r1, [r3, #0x78]
	movs r2, #0x78
	bl CpuFastSet
	pop {r0}
	bx r0
_08059DD0: .4byte 0x088C8730
_08059DD4: .4byte 0x083AAD68
_08059DD8: .4byte 0x03000DE8
	thumb_func_start sub_8059DDC
sub_8059DDC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ldr r2, _08059E4C @ =0x081E27DC
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r5, #0x6C]
	movs r0, #0xA0
	lsls r0, r0, #0x06
	ldr r2, _08059E50 @ =0x081E27E4
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r5, #0x74]
	movs r4, #0x00
	str r4, [sp, #0x000]
	ldr r1, [r5, #0x6C]
	ldr r2, _08059E54 @ =0x01000C00
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r5, #0x74]
	ldr r2, _08059E58 @ =0x01000A00
	mov r0, sp
	bl CpuFastSet
	adds r0, r5, #0x0
	bl sub_8059AF4
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8059D04
	adds r0, r5, #0x0
	bl sub_8059924
	ldr r0, [r5, #0x74]
	cmp r0, #0x00
	beq _08059E3A
	bl __builtin_vec_delete
_08059E3A:
	ldr r0, [r5, #0x6C]
	cmp r0, #0x00
	beq _08059E44
	bl __builtin_vec_delete
_08059E44:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08059E4C: .4byte 0x081E27DC
_08059E50: .4byte 0x081E27E4
_08059E54: .4byte 0x01000C00
_08059E58: .4byte 0x01000A00
	thumb_func_start sub_8059E5C
sub_8059E5C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08059E94 @ =0x08CDC278
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x78]
	cmp r0, #0x00
	beq _08059E70
	bl __builtin_vec_delete
_08059E70:
	ldr r0, [r4, #0x70]
	cmp r0, #0x00
	beq _08059E7A
	bl __builtin_vec_delete
_08059E7A:
	ldr r0, [r4, #0x68]
	cmp r0, #0x00
	beq _08059E84
	bl __builtin_vec_delete
_08059E84:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _._7Process
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08059E94: .4byte 0x08CDC278
	.byte 0x09, 0x04, 0x09, 0x0C, 0x03, 0x4A, 0x48, 0x00, 0x40, 0x18, 0xC0, 0x00, 0x80, 0x18, 0x40, 0x78
	.byte 0x70, 0x47, 0x00, 0x00, 0xD4, 0x78, 0x3A, 0x08, 0x09, 0x04, 0x09, 0x0C, 0x03, 0x4A, 0x48, 0x00
	.byte 0x40, 0x18, 0xC0, 0x00, 0x80, 0x18, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00, 0xD4, 0x78, 0x3A, 0x08
	thumb_func_start sub_8059EC8
sub_8059EC8:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #0x01
	adds r2, r2, r1
	lsls r2, r2, #0x03
	ldr r1, _08059EE8 @ =0x083A78D4
	ldr r0, _08059EEC @ =0x03000DD0
	adds r2, r2, r1
	ldm r2!, {r1, r3, r4}
	stm r0!, {r1, r3, r4}
	ldm r2!, {r1, r3, r4}
	stm r0!, {r1, r3, r4}
	pop {r4}
	pop {r0}
	bx r0
_08059EE8: .4byte 0x083A78D4
_08059EEC: .4byte 0x03000DD0
	thumb_func_start sub_8059EF0
sub_8059EF0:
	lsls r0, r0, #0x10
	ldr r1, _08059EFC @ =0x083AF418
	lsrs r0, r0, #0x0E
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bx lr
_08059EFC: .4byte 0x083AF418
	.byte 0x00, 0xB5, 0x00, 0x22, 0x00, 0x49, 0x03, 0xE0, 0xD4, 0x78, 0x3A, 0x08, 0x18, 0x31, 0x01, 0x32
	.byte 0x08, 0x78, 0xFF, 0x28, 0x02, 0xD0, 0x48, 0x78, 0xFF, 0x28, 0xF7, 0xD1, 0x10, 0x04, 0x00, 0x0C
	.byte 0x02, 0xBC, 0x08, 0x47
	thumb_func_start sub_8059F24
sub_8059F24:
	mov r12, r0
	ldr r3, _08059F70 @ =0x02000014
	adds r0, #0x5A
	ldrh r2, [r0, #0x00]
	ldr r1, _08059F74 @ =0x000001FF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	mov r0, r12
	adds r0, #0x5C
	ldrh r2, [r0, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _08059F78 @ =0x0200001C
	mov r0, r12
	adds r0, #0x5E
	ldrh r0, [r0, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _08059F7C @ =0x02000016
	mov r0, r12
	adds r0, #0x60
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r12
	adds r0, #0x62
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r12
	adds r0, #0x64
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
_08059F70: .4byte 0x02000014
_08059F74: .4byte 0x000001FF
_08059F78: .4byte 0x0200001C
_08059F7C: .4byte 0x02000016
	thumb_func_start sub_8059F80
sub_8059F80:
	push {lr}
	ldr r0, _08059F98 @ =0x0300034C
	ldr r1, _08059F9C @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08059FA4
	ldr r2, _08059FA0 @ =0x088D4808
	b _08059FA6
	.byte 0x00, 0x00
_08059F98: .4byte 0x0300034C
_08059F9C: .4byte 0x00000888
_08059FA0: .4byte 0x088D4808
_08059FA4:
	ldr r2, _08059FCC @ =0x088C8730
_08059FA6:
	ldr r1, _08059FD0 @ =0x083AAD68
	ldr r0, _08059FD4 @ =0x03000DD0
	ldrb r0, [r0, #0x05]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r0, r2, r0
	ldr r1, _08059FD8 @ =0x02000080
	movs r2, #0x78
	bl CpuFastSet
	ldr r1, _08059FDC @ =0x0300034C
	ldr r0, _08059FE0 @ =0x00007FFF
	strh r0, [r1, #0x02]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08059FCC: .4byte 0x088C8730
_08059FD0: .4byte 0x083AAD68
_08059FD4: .4byte 0x03000DD0
_08059FD8: .4byte 0x02000080
_08059FDC: .4byte 0x0300034C
_08059FE0: .4byte 0x00007FFF
	thumb_func_start sub_8059FE4
sub_8059FE4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8059F24
	adds r0, r4, #0x0
	bl sub_80582DC
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_80587BC
	adds r0, r4, #0x0
	bl sub_8058278
	adds r0, r4, #0x0
	bl sub_80584F8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_805A00C
sub_805A00C:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	ldr r2, _0805A028 @ =0x088E08E0
	ldr r1, _0805A02C @ =0x083AAE08
	ldrh r0, [r3, #0x1E]
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldrh r0, [r0, #0x06]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r7, r0, r2
	movs r5, #0x00
	b _0805A056
_0805A028: .4byte 0x088E08E0
_0805A02C: .4byte 0x083AAE08
_0805A030:
	movs r2, #0x00
	ldrh r0, [r3, #0x26]
	adds r6, r5, #0x1
	cmp r2, r0
	bge _0805A054
	adds r4, r3, #0x0
	adds r4, #0x9C
_0805A03E:
	muls r0, r5
	ldr r1, [r4, #0x00]
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r7, r0
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	adds r2, #0x01
	ldrh r0, [r3, #0x26]
	cmp r2, r0
	blt _0805A03E
_0805A054:
	adds r5, r6, #0x0
_0805A056:
	ldrh r0, [r3, #0x28]
	cmp r5, r0
	blt _0805A030
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start load_col_set_to_dest
load_col_set_to_dest: @ 0805A064
	push {r4, lr}
	ldr r1, _0805A0E4 @ =0x03000DD0
	ldrb r1, [r1, #0x06]
	ldr r2, _0805A0E8 @ =0x083AADD0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	movs r4, #0x00
	adds r3, r0, #0x0
	adds r3, #0xA0
	ldr r2, [r1, #0x00]
_0805A078:
	ldr r1, [r3, #0x00]
	lsls r0, r4, #0x02
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x00]
	adds r1, r4, #0x1
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x00]
	adds r1, r4, #0x2
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x08]
	str r0, [r1, #0x00]
	adds r1, r4, #0x3
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x0C]
	str r0, [r1, #0x00]
	adds r1, r4, #0x4
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x00]
	adds r1, r4, #0x5
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x00]
	adds r1, r4, #0x6
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x00]
	adds r1, r4, #0x7
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x1C]
	str r0, [r1, #0x00]
	adds r2, #0x20
	adds r4, #0x08
	cmp r4, #0xFF
	ble _0805A078
	pop {r4}
	pop {r0}
	bx r0
_0805A0E4: .4byte 0x03000DD0
_0805A0E8: .4byte 0x083AADD0
	thumb_func_start sub_805A0EC
sub_805A0EC:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x0F
	adds r4, r0, #0x0
	adds r4, #0x36
	adds r4, r4, r1
	ldrh r4, [r4, #0x00]
	strh r4, [r2, #0x00]
	adds r0, #0x3C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r3, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start get_coldef_ptr_by_idx
get_coldef_ptr_by_idx: @ 0805A10C
	lsls r1, r1, #0x18
	adds r0, #0xA0
	lsrs r1, r1, #0x16
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	bx lr
	thumb_func_start get_coldef_ptr_by_xz
get_coldef_ptr_by_xz: @ 0805A118
	push {lr}
	mov r12, r0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x00
	blt _0805A144
	mov r3, r12
	adds r3, #0x46
	ldrh r3, [r3, #0x00]
	cmp r1, r3
	bge _0805A144
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	blt _0805A144
	mov r0, r12
	adds r0, #0x4C
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	blt _0805A14C
_0805A144:
	ldr r0, _0805A148 @ =0x083A75D8
	b _0805A168
_0805A148: .4byte 0x083A75D8
_0805A14C:
	mov r3, r12
	ldrh r0, [r3, #0x26]
	muls r0, r2
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r12
	adds r1, #0x9C
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	ldrb r1, [r1, #0x00]
	mov r0, r12
	bl get_coldef_ptr_by_idx
_0805A168:
	pop {r1}
	bx r1
	.byte 0x12, 0x04, 0x12, 0x14, 0xC3, 0x8C, 0x5A, 0x43, 0x09, 0x04, 0x09, 0x14, 0x89, 0x18, 0x09, 0x04
	.byte 0x09, 0x0C, 0x9C, 0x30, 0x00, 0x68, 0x40, 0x18, 0x00, 0x78, 0x70, 0x47, 0x10, 0xB5, 0x09, 0x04
	.byte 0xC9, 0x0B, 0x04, 0x1C, 0x4E, 0x34, 0x64, 0x18, 0x24, 0x88, 0x14, 0x80, 0x54, 0x30, 0x40, 0x18
	.byte 0x00, 0x88, 0x18, 0x80, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_805A1A8
sub_805A1A8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r5, #0xC0
	lsls r5, r5, #0x13
	adds r0, r5, #0x0
	bl sub_80184F4
	adds r4, #0xA4
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0805A1C4
	bl __builtin_vec_delete
_0805A1C4:
	movs r0, #0x00
	str r0, [sp, #0x000]
	ldr r2, _0805A1DC @ =0x01002000
	mov r0, sp
	adds r1, r5, #0x0
	bl CpuFastSet
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805A1DC: .4byte 0x01002000
	.byte 0x70, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x07, 0x48, 0xA0, 0x61, 0x20, 0x1C
	.byte 0x20, 0x30, 0x02, 0x21, 0x02, 0xF0, 0x64, 0xFD, 0x20, 0x1C, 0x29, 0x1C, 0xBF, 0xF7, 0x1E, 0xFD
	.byte 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x98, 0xC2, 0xCD, 0x08, 0x10, 0xB5, 0x04, 0x1C
	.byte 0x09, 0x06, 0x09, 0x0E, 0xBF, 0xF7, 0xC8, 0xFB, 0x04, 0x48, 0xA0, 0x61, 0x20, 0x1C, 0x20, 0x30
	.byte 0x02, 0xF0, 0x5A, 0xFD, 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x98, 0xC2, 0xCD, 0x08
	thumb_func_start sub_805A230
sub_805A230:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r6, r3, #0x0
	ldr r0, [sp, #0x024]
	mov r8, r0
	ldr r3, [sp, #0x028]
	mov r9, r3
	ldr r4, [sp, #0x02C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r5, r8
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	mov r0, r9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r7, #0x0
	bl __7ProcessUcPc
	ldr r0, _0805A340 @ =0x08CDC2A8
	str r0, [r7, #0x18]
	movs r1, #0xED
	lsls r1, r1, #0x03
	adds r0, r7, r1
	str r4, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x06
	ldr r2, _0805A344 @ =0x081E27EC
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r7, #0x38]
	movs r4, #0x80
	lsls r4, r4, #0x04
	ldr r2, _0805A348 @ =0x081E27F4
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r7, #0x3C]
	ldr r2, _0805A34C @ =0x081E27FC
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r7, #0x44]
	ldr r2, _0805A350 @ =0x081E2804
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r7, #0x40]
	movs r4, #0x00
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x38]
	ldr r2, _0805A354 @ =0x01000800
	mov r10, r2
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x3C]
	ldr r5, _0805A358 @ =0x01000200
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x44]
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x40]
	mov r0, sp
	mov r2, r10
	bl CpuFastSet
	ldr r0, _0805A35C @ =0x0000FFFC
	strh r0, [r7, #0x1C]
	strh r6, [r7, #0x1E]
	mov r3, r8
	strh r3, [r7, #0x32]
	mov r5, r9
	strh r5, [r7, #0x36]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x20]
	ldr r2, _0805A360 @ =0x083AFC5C
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x08]
	lsrs r0, r0, #0x04
	lsls r0, r0, #0x05
	strh r0, [r7, #0x24]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x08]
	movs r0, #0x0F
	ands r0, r1
	lsls r0, r0, #0x04
	strh r0, [r7, #0x26]
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x07]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	beq _0805A374
	cmp r1, #0x10
	bgt _0805A364
	cmp r1, #0x00
	beq _0805A36E
	b _0805A38E
_0805A340: .4byte 0x08CDC2A8
_0805A344: .4byte 0x081E27EC
_0805A348: .4byte 0x081E27F4
_0805A34C: .4byte 0x081E27FC
_0805A350: .4byte 0x081E2804
_0805A354: .4byte 0x01000800
_0805A358: .4byte 0x01000200
_0805A35C: .4byte 0x0000FFFC
_0805A360: .4byte 0x083AFC5C
_0805A364:
	cmp r1, #0x20
	beq _0805A37A
	cmp r1, #0x30
	beq _0805A380
	b _0805A38E
_0805A36E:
	movs r1, #0x04
	movs r0, #0x04
	b _0805A384
_0805A374:
	movs r1, #0x01
	movs r0, #0x01
	b _0805A384
_0805A37A:
	movs r1, #0x02
	movs r0, #0x02
	b _0805A384
_0805A380:
	movs r1, #0x08
	movs r0, #0x08
_0805A384:
	strh r0, [r7, #0x28]
	strh r0, [r7, #0x2A]
	adds r0, r7, #0x0
	adds r0, #0x2E
	strb r1, [r0, #0x00]
_0805A38E:
	ldr r2, _0805A3AC @ =0x083AFC5C
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x07]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x01
	bne _0805A3B0
	movs r0, #0x04
	strh r0, [r7, #0x2A]
	b _0805A3B8
	.byte 0x00, 0x00
_0805A3AC: .4byte 0x083AFC5C
_0805A3B0:
	cmp r1, #0x02
	bne _0805A3B8
	movs r0, #0x04
	strh r0, [r7, #0x28]
_0805A3B8:
	adds r1, r7, #0x0
	adds r1, #0x2D
	movs r0, #0x00
	strb r0, [r1, #0x00]
	movs r0, #0x32
	ldsh r1, [r7, r0]
	movs r3, #0x28
	ldsh r0, [r7, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r5, [r7, #0x24]
	adds r0, r0, r5
	strh r0, [r7, #0x30]
	movs r0, #0x36
	ldsh r1, [r7, r0]
	movs r3, #0x2A
	ldsh r0, [r7, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r5, [r7, #0x26]
	adds r0, r0, r5
	strh r0, [r7, #0x34]
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x09]
	lsrs r0, r1, #0x04
	movs r2, #0x0F
	ands r2, r1
	ldr r4, _0805A430 @ =0x02000008
	ldr r3, _0805A434 @ =0x081E280A
	lsls r0, r0, #0x01
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x07
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	lsls r2, r2, #0x01
	adds r2, r2, r3
	ldrh r0, [r2, #0x00]
	movs r2, #0xB8
	lsls r2, r2, #0x07
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0805A430: .4byte 0x02000008
_0805A434: .4byte 0x081E280A
	thumb_func_start sub_805A438
sub_805A438:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r7, _0805A46C @ =0x089FC058
	ldr r2, _0805A470 @ =0x083AFC5C
	ldrh r1, [r5, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	mov r8, r1
	movs r0, #0x1C
	ldsh r3, [r5, r0]
	movs r0, #0x03
	negs r0, r0
	mov r12, r2
	cmp r3, r0
	beq _0805A4B0
	cmp r3, r0
	bgt _0805A474
	subs r0, #0x01
	cmp r3, r0
	beq _0805A484
	b _0805A536
_0805A46C: .4byte 0x089FC058
_0805A470: .4byte 0x083AFC5C
_0805A474:
	movs r0, #0x02
	negs r0, r0
	cmp r3, r0
	beq _0805A4FC
	adds r0, #0x01
	cmp r3, r0
	beq _0805A51C
	b _0805A536
_0805A484:
	ldr r0, _0805A4A8 @ =0x03000DC0
	movs r3, #0x00
	str r3, [r0, #0x00]
	ldr r2, _0805A4AC @ =0x083AFE48
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r7
	ldr r1, [r1, #0x00]
	adds r1, r1, r7
	str r1, [r0, #0x04]
	ldr r1, [r5, #0x40]
	str r1, [r0, #0x08]
	str r3, [r0, #0x0C]
	bl sub_8019808
	b _0805A52E
_0805A4A8: .4byte 0x03000DC0
_0805A4AC: .4byte 0x083AFE48
_0805A4B0:
	ldr r6, _0805A4F4 @ =0x03000DC0
	ldr r4, [r6, #0x00]
	cmp r4, #0x00
	beq _0805A4BA
	b _0805A60E
_0805A4BA:
	ldr r0, [r5, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl CpuFastSet
	ldrh r0, [r5, #0x1C]
	adds r0, #0x01
	strh r0, [r5, #0x1C]
	str r4, [r6, #0x00]
	ldr r1, _0805A4F8 @ =0x083AFE48
	mov r2, r8
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r7
	ldr r1, [r0, #0x00]
	adds r0, r1, r7
	str r0, [r6, #0x04]
	ldr r0, [r5, #0x40]
	str r0, [r6, #0x08]
	str r4, [r6, #0x0C]
	adds r0, r6, #0x0
	bl sub_8019808
	b _0805A60E
	.byte 0x00, 0x00
_0805A4F4: .4byte 0x03000DC0
_0805A4F8: .4byte 0x083AFE48
_0805A4FC:
	ldr r0, _0805A514 @ =0x03000DC0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805A506
	b _0805A60E
_0805A506:
	ldr r0, [r5, #0x40]
	ldr r1, _0805A518 @ =0x06002000
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl CpuFastSet
	b _0805A52E
_0805A514: .4byte 0x03000DC0
_0805A518: .4byte 0x06002000
_0805A51C:
	adds r0, r5, #0x0
	bl sub_805A618
	adds r0, r5, #0x0
	bl sub_805B074
	adds r0, r5, #0x0
	bl sub_805AEC8
_0805A52E:
	ldrh r0, [r5, #0x1C]
	adds r0, #0x01
	strh r0, [r5, #0x1C]
	b _0805A60E
_0805A536:
	ldr r0, [r5, #0x20]
	cmp r0, #0x00
	beq _0805A54C
	ldrh r0, [r5, #0x20]
	ldrh r3, [r5, #0x32]
	adds r0, r0, r3
	strh r0, [r5, #0x32]
	ldrh r0, [r5, #0x22]
	ldrh r1, [r5, #0x36]
	adds r0, r0, r1
	strh r0, [r5, #0x36]
_0805A54C:
	ldrh r1, [r5, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r1, [r0, #0x07]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805A5D8
	adds r6, r5, #0x0
	adds r6, #0x2D
	adds r0, r5, #0x0
	adds r0, #0x2E
	ldrb r1, [r0, #0x00]
	ldrb r2, [r6, #0x00]
	adds r1, r1, r2
	strb r1, [r6, #0x00]
	ldr r4, _0805A5D0 @ =0x083A75DC
	ldrh r2, [r5, #0x1E]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r3, [r0, #0x07]
	movs r2, #0x07
	adds r0, r2, #0x0
	ands r0, r3
	lsls r0, r0, #0x01
	adds r0, r0, r4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1A
	muls r1, r0
	ldrh r0, [r5, #0x20]
	adds r1, r1, r0
	ldrh r0, [r5, #0x30]
	adds r0, r0, r1
	strh r0, [r5, #0x30]
	ldr r3, _0805A5D4 @ =0x083A75EC
	ldrh r1, [r5, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r0, [r0, #0x07]
	ands r2, r0
	lsls r2, r2, #0x01
	adds r2, r2, r3
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldrb r0, [r6, #0x00]
	lsrs r0, r0, #0x02
	muls r1, r0
	ldrh r0, [r5, #0x22]
	adds r1, r1, r0
	ldrh r0, [r5, #0x34]
	adds r0, r0, r1
	strh r0, [r5, #0x34]
	ldrb r1, [r6, #0x00]
	movs r0, #0x03
	ands r0, r1
	strb r0, [r6, #0x00]
	b _0805A5FC
	.byte 0x00, 0x00
_0805A5D0: .4byte 0x083A75DC
_0805A5D4: .4byte 0x083A75EC
_0805A5D8:
	movs r2, #0x32
	ldsh r1, [r5, r2]
	movs r3, #0x28
	ldsh r0, [r5, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r1, [r5, #0x24]
	adds r0, r0, r1
	strh r0, [r5, #0x30]
	movs r2, #0x36
	ldsh r1, [r5, r2]
	movs r3, #0x2A
	ldsh r0, [r5, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r1, [r5, #0x26]
	adds r0, r0, r1
	strh r0, [r5, #0x34]
_0805A5FC:
	movs r0, #0x00
	strh r0, [r5, #0x22]
	strh r0, [r5, #0x20]
	adds r0, r5, #0x0
	bl sub_805AC98
	adds r0, r5, #0x0
	bl sub_805A95C
_0805A60E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805A618
sub_805A618:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, _0805A680 @ =0x02000010
	ldrh r2, [r4, #0x30]
	ldr r1, _0805A684 @ =0x000001FF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _0805A688 @ =0x02000014
	ldrh r0, [r4, #0x32]
	ands r1, r0
	strh r1, [r2, #0x00]
	adds r3, #0x02
	ldrh r2, [r4, #0x34]
	movs r1, #0xFF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _0805A68C @ =0x02000016
	ldrh r0, [r4, #0x36]
	ands r1, r0
	strh r1, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_805A6EC
	adds r0, r4, #0x0
	bl sub_805A900
	adds r0, r4, #0x0
	bl sub_805A7C0
	ldr r0, [r4, #0x38]
	ldr r1, _0805A690 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #0x06
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r0, _0805A694 @ =0x0300034C
	ldr r1, _0805A698 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0805A6A0
	ldr r5, _0805A69C @ =0x08A53B30
	b _0805A6A2
	.byte 0x00, 0x00
_0805A680: .4byte 0x02000010
_0805A684: .4byte 0x000001FF
_0805A688: .4byte 0x02000014
_0805A68C: .4byte 0x02000016
_0805A690: .4byte 0x0600D000
_0805A694: .4byte 0x0300034C
_0805A698: .4byte 0x00000888
_0805A69C: .4byte 0x08A53B30
_0805A6A0:
	ldr r5, _0805A6D4 @ =0x08A4FCCC
_0805A6A2:
	ldr r3, _0805A6D8 @ =0x083AFFD8
	ldr r2, _0805A6DC @ =0x083AFC5C
	ldrh r1, [r4, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x02]
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r0, r5, r0
	ldr r1, _0805A6E0 @ =0x02000080
	movs r2, #0x40
	bl CpuFastSet
	ldr r1, _0805A6E4 @ =0x0300034C
	ldr r0, _0805A6E8 @ =0x00007FFF
	strh r0, [r1, #0x02]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0805A6D4: .4byte 0x08A4FCCC
_0805A6D8: .4byte 0x083AFFD8
_0805A6DC: .4byte 0x083AFC5C
_0805A6E0: .4byte 0x02000080
_0805A6E4: .4byte 0x0300034C
_0805A6E8: .4byte 0x00007FFF
	thumb_func_start sub_805A6EC
sub_805A6EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r0, _0805A768 @ =0x08A46198
	mov r9, r0
	ldr r2, _0805A76C @ =0x083AFC5C
	mov r3, r8
	ldrh r1, [r3, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x03]
	mov r10, r0
	movs r2, #0x00
_0805A710:
	lsls r0, r2, #0x01
	mov r3, r10
	lsls r1, r3, #0x02
	adds r0, r0, r1
	ldr r1, _0805A770 @ =0x083AFF3C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	ldr r3, _0805A774 @ =0x0000FFFF
	cmp r0, r3
	beq _0805A778
	lsls r0, r0, #0x02
	ldr r1, _0805A768 @ =0x08A46198
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r3, r9
	adds r7, r3, r0
	movs r0, #0x00
	adds r1, r2, #0x1
	mov r12, r1
	lsls r6, r2, #0x09
	mov r3, r8
	ldr r5, [r3, #0x3C]
_0805A73C:
	movs r2, #0x00
	adds r4, r0, #0x1
	lsls r3, r0, #0x05
_0805A742:
	adds r1, r6, r2
	adds r1, r3, r1
	lsls r1, r1, #0x01
	adds r1, r1, r5
	adds r0, r3, r2
	adds r0, r7, r0
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1F
	bls _0805A742
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A73C
	b _0805A7A8
	.byte 0x00, 0x00
_0805A768: .4byte 0x08A46198
_0805A76C: .4byte 0x083AFC5C
_0805A770: .4byte 0x083AFF3C
_0805A774: .4byte 0x0000FFFF
_0805A778:
	movs r0, #0x00
	adds r1, r2, #0x1
	mov r12, r1
	lsls r5, r2, #0x09
	mov r1, r8
	ldr r3, [r1, #0x3C]
	movs r6, #0x00
_0805A786:
	movs r2, #0x00
	adds r4, r0, #0x1
	lsls r1, r0, #0x05
_0805A78C:
	adds r0, r5, r2
	adds r0, r1, r0
	lsls r0, r0, #0x01
	adds r0, r0, r3
	strh r6, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1F
	bls _0805A78C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A786
_0805A7A8:
	mov r3, r12
	lsls r0, r3, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x01
	bls _0805A710
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805A7C0
sub_805A7C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r2, _0805A85C @ =0x083AFC5C
	ldrh r1, [r0, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x03]
	str r0, [sp, #0x004]
	movs r0, #0x00
	mov r9, r0
_0805A7E2:
	mov r1, r9
	lsls r0, r1, #0x01
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x02
	adds r0, r0, r1
	ldr r3, _0805A860 @ =0x083AFF3C
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	mov r1, r9
	adds r1, #0x01
	str r1, [sp, #0x008]
	ldr r2, _0805A864 @ =0x0000FFFF
	cmp r0, r2
	beq _0805A840
	movs r0, #0x00
	mov r3, r9
	lsls r3, r3, #0x09
	mov r10, r3
_0805A806:
	movs r4, #0x00
	lsls r6, r0, #0x10
	lsls r5, r0, #0x05
	adds r7, r0, #0x1
_0805A80E:
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	mov r1, r10
	adds r0, r5, r1
	adds r0, r0, r4
	mov r3, r8
	ldr r1, [r3, #0x3C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r0, r8
	mov r1, r9
	asrs r3, r6, #0x10
	bl sub_805A868
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1F
	bls _0805A80E
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A806
_0805A840:
	ldr r1, [sp, #0x008]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #0x01
	bls _0805A7E2
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805A85C: .4byte 0x083AFC5C
_0805A860: .4byte 0x083AFF3C
_0805A864: .4byte 0x0000FFFF
	thumb_func_start sub_805A868
sub_805A868:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	mov r12, r0
	ldr r7, [r6, #0x44]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _0805A8AC
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	b _0805A8D6
_0805A8AC:
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r4, r5, #0x0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	adds r2, r2, r4
_0805A8D6:
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r3, [r6, #0x38]
	lsls r1, r0, #0x01
	adds r1, r1, r3
	mov r0, r12
	lsls r2, r0, #0x03
	adds r2, r2, r7
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x02]
	strh r0, [r1, #0x02]
	lsls r0, r4, #0x01
	adds r0, r0, r3
	ldrh r1, [r2, #0x04]
	strh r1, [r0, #0x00]
	ldrh r1, [r2, #0x06]
	strh r1, [r0, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805A900
sub_805A900:
	push {r4, r5, lr}
	ldr r4, _0805A944 @ =0x08A2711C
	ldr r3, _0805A948 @ =0x083AFC5C
	ldrh r2, [r0, #0x1E]
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x02
	adds r1, r1, r3
	ldrb r1, [r1, #0x01]
	ldr r2, _0805A94C @ =0x083AFEC0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	adds r4, r1, r4
	movs r2, #0x00
	ldr r3, [r0, #0x44]
	ldr r5, _0805A950 @ =0x000003FF
_0805A928:
	lsls r0, r2, #0x01
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	bls _0805A928
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805A944: .4byte 0x08A2711C
_0805A948: .4byte 0x083AFC5C
_0805A94C: .4byte 0x083AFEC0
_0805A950: .4byte 0x000003FF
	thumb_func_start sub_805A954
sub_805A954:
	strh r1, [r0, #0x20]
	strh r2, [r0, #0x22]
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_805A95C
sub_805A95C:
	push {r4, lr}
	ldr r4, _0805A98C @ =0x02000010
	ldrh r3, [r0, #0x30]
	ldr r2, _0805A990 @ =0x000001FF
	adds r1, r2, #0x0
	ands r1, r3
	strh r1, [r4, #0x00]
	ldr r3, _0805A994 @ =0x02000014
	ldrh r1, [r0, #0x32]
	ands r2, r1
	strh r2, [r3, #0x00]
	adds r4, #0x02
	ldrh r3, [r0, #0x34]
	movs r2, #0xFF
	adds r1, r2, #0x0
	ands r1, r3
	strh r1, [r4, #0x00]
	ldr r1, _0805A998 @ =0x02000016
	ldrh r0, [r0, #0x36]
	ands r2, r0
	strh r2, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0805A98C: .4byte 0x02000010
_0805A990: .4byte 0x000001FF
_0805A994: .4byte 0x02000014
_0805A998: .4byte 0x02000016
	thumb_func_start sub_805A99C
sub_805A99C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0805A9E4 @ =0x08CDC2A8
	str r0, [r4, #0x18]
	movs r0, #0xC0
	lsls r0, r0, #0x13
	bl sub_80184F4
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	beq _0805A9B8
	bl __builtin_vec_delete
_0805A9B8:
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	beq _0805A9C2
	bl __builtin_vec_delete
_0805A9C2:
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	beq _0805A9CC
	bl __builtin_vec_delete
_0805A9CC:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	beq _0805A9D6
	bl __builtin_vec_delete
_0805A9D6:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _._7Process
	pop {r4, r5}
	pop {r0}
	bx r0
_0805A9E4: .4byte 0x08CDC2A8
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x84, 0xB0, 0x80, 0x46, 0x49, 0x4A
	.byte 0xC1, 0x8B, 0x48, 0x00, 0x40, 0x18, 0x80, 0x00, 0x80, 0x18, 0x00, 0x79, 0x46, 0x49, 0x80, 0x00
	.byte 0x40, 0x18, 0x00, 0x68, 0x00, 0x90, 0x00, 0x20, 0x84, 0x46, 0x98, 0x23, 0x00, 0x22, 0x60, 0x46
	.byte 0x58, 0x43, 0x44, 0x46, 0x21, 0x18, 0x08, 0x1C, 0x48, 0x30, 0x02, 0x70, 0x01, 0x30, 0x02, 0x70
	.byte 0x01, 0x30, 0x02, 0x70, 0x01, 0x30, 0x02, 0x70, 0x60, 0x46, 0x01, 0x30, 0x00, 0x04, 0x00, 0x0C
	.byte 0x84, 0x46, 0x03, 0x28, 0xEB, 0xD9, 0x00, 0x98, 0x00, 0x28, 0x62, 0xD0, 0x00, 0x21, 0x8C, 0x46
	.byte 0x4E, 0x34, 0x01, 0x94, 0x42, 0x46, 0x60, 0x32, 0x02, 0x92, 0x52, 0x34, 0x03, 0x94, 0x80, 0x20
	.byte 0x82, 0x46, 0x98, 0x21, 0x63, 0x46, 0x4B, 0x43, 0x42, 0x46, 0xD4, 0x18, 0x20, 0x1C, 0x48, 0x30
	.byte 0x51, 0x46, 0x01, 0x70, 0x60, 0x46, 0xC2, 0x00, 0x00, 0x99, 0x52, 0x18, 0x11, 0x78, 0x7F, 0x20
	.byte 0x08, 0x40, 0x21, 0x1C, 0x49, 0x31, 0x08, 0x70, 0x20, 0x1C, 0x4A, 0x30, 0x00, 0x24, 0x04, 0x70
	.byte 0x57, 0x68, 0x00, 0x25, 0x01, 0x20, 0x60, 0x44, 0x81, 0x46, 0x1E, 0x1C, 0xAB, 0x19, 0x01, 0x99
	.byte 0xCB, 0x18, 0x2C, 0x1C, 0x62, 0x00, 0x12, 0x19, 0x92, 0x00, 0xD2, 0x19, 0x11, 0x78, 0x7F, 0x20
	.byte 0x08, 0x40, 0x18, 0x70, 0xA0, 0x00, 0x80, 0x19, 0x02, 0x99, 0x0B, 0x18, 0x51, 0x68, 0x19, 0x60
	.byte 0x03, 0x99, 0x08, 0x18, 0x91, 0x68, 0x01, 0x60, 0x60, 0x1C, 0x00, 0x04, 0x05, 0x0C, 0x60, 0x00
	.byte 0x00, 0x19, 0x80, 0x00, 0xC0, 0x19, 0x01, 0x78, 0x50, 0x46, 0x08, 0x40, 0x00, 0x28, 0xDD, 0xD0
	.byte 0x98, 0x22, 0x60, 0x46, 0x50, 0x43, 0x44, 0x46, 0x22, 0x18, 0x10, 0x1C, 0x4C, 0x30, 0x05, 0x70
	.byte 0x02, 0x30, 0x01, 0x78, 0x03, 0x38, 0x01, 0x70, 0x61, 0x46, 0x4A, 0x46, 0x10, 0x04, 0x00, 0x0C
	.byte 0x84, 0x46, 0xC9, 0x00, 0x00, 0x9C, 0x09, 0x19, 0x09, 0x78, 0x50, 0x46, 0x08, 0x40, 0x00, 0x28
	.byte 0xA7, 0xD0, 0x04, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x5C, 0xFC, 0x3A, 0x08, 0xE4, 0x00, 0x3B, 0x08, 0xF0, 0xB5, 0x47, 0x46
	.byte 0x80, 0xB4, 0x81, 0xB0, 0x06, 0x1C, 0x00, 0x20, 0x80, 0x46, 0x00, 0x27, 0x98, 0x20, 0x3D, 0x1C
	.byte 0x45, 0x43, 0x71, 0x19, 0x08, 0x1C, 0x48, 0x30, 0x00, 0x78, 0x00, 0x28, 0x36, 0xD0, 0x0B, 0x1C
	.byte 0x4B, 0x33, 0x18, 0x78, 0x01, 0x38, 0x18, 0x70, 0x00, 0x06, 0x04, 0x0E, 0x00, 0x2C, 0x2D, 0xD1
	.byte 0x0A, 0x1C, 0x4A, 0x32, 0x10, 0x78, 0x01, 0x30, 0x10, 0x70, 0x4C, 0x31, 0x00, 0x06, 0x00, 0x0E
	.byte 0x09, 0x78, 0x88, 0x42, 0x00, 0xD3, 0x14, 0x70, 0x11, 0x78, 0x4A, 0x19, 0x30, 0x1C, 0x4E, 0x30
	.byte 0x80, 0x18, 0x00, 0x78, 0x18, 0x70, 0x89, 0x00, 0x4C, 0x19, 0x30, 0x1C, 0x60, 0x30, 0x00, 0x19
	.byte 0x02, 0x68, 0x00, 0x2A, 0x03, 0xD0, 0x30, 0x1C, 0x00, 0x21, 0x00, 0xF0, 0x29, 0xF8, 0x30, 0x1C
	.byte 0xA0, 0x30, 0x00, 0x19, 0x02, 0x68, 0x00, 0x2A, 0x03, 0xD0, 0x30, 0x1C, 0x01, 0x21, 0x00, 0xF0
	.byte 0x1F, 0xF8, 0x40, 0x46, 0x01, 0x30, 0x00, 0x06, 0x00, 0x0E, 0x80, 0x46, 0x78, 0x1C, 0x00, 0x06
	.byte 0x07, 0x0E, 0x03, 0x2F, 0xBA, 0xD9, 0x40, 0x46, 0x00, 0x28, 0x08, 0xD0, 0xB0, 0x6B, 0x07, 0x49
	.byte 0x80, 0x22, 0x92, 0x01, 0x00, 0x23, 0x00, 0x93, 0x20, 0x23, 0xBD, 0xF7, 0x21, 0xFB, 0x01, 0xB0
	.byte 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0xD0, 0x00, 0x06
	thumb_func_start sub_805ABE8
sub_805ABE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x004]
	str r2, [sp, #0x00C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x08
	str r1, [sp, #0x010]
	movs r1, #0xFF
	adds r2, r1, #0x0
	ands r2, r0
	str r2, [sp, #0x014]
	ldr r3, [sp, #0x00C]
	ldrh r0, [r3, #0x02]
	lsrs r2, r0, #0x08
	mov r10, r2
	mov r8, r1
	mov r3, r8
	ands r3, r0
	mov r8, r3
	movs r6, #0x02
	movs r2, #0x00
	cmp r2, r8
	bcs _0805AC88
_0805AC24:
	ldr r1, [sp, #0x008]
	lsls r0, r1, #0x09
	ldr r1, [sp, #0x014]
	adds r3, r1, r2
	lsls r1, r3, #0x05
	adds r0, r0, r1
	ldr r1, [sp, #0x010]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r4, #0x00
	adds r2, #0x01
	mov r9, r2
	cmp r4, r10
	bcs _0805AC7E
	lsls r5, r3, #0x10
_0805AC44:
	lsls r0, r6, #0x01
	ldr r2, [sp, #0x00C]
	adds r0, r0, r2
	ldrh r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0805AC6E
	adds r0, r7, r4
	ldr r3, [sp, #0x004]
	ldr r1, [r3, #0x3C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	strh r2, [r0, #0x00]
	ldr r1, [sp, #0x010]
	adds r2, r1, r4
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	ldr r1, [sp, #0x008]
	asrs r3, r5, #0x10
	bl sub_805A868
_0805AC6E:
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r10
	bcc _0805AC44
_0805AC7E:
	mov r2, r9
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r8
	bcc _0805AC24
_0805AC88:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805AC98
sub_805AC98:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r1, #0xEE
	lsls r1, r1, #0x03
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805ACB0
	b _0805AEB0
_0805ACB0:
	movs r2, #0x00
	mov r8, r2
	movs r4, #0x0F
	mov r9, r4
_0805ACB8:
	movs r0, #0x4C
	mov r7, r8
	muls r7, r0
	adds r3, r6, r7
	movs r0, #0xAA
	lsls r0, r0, #0x02
	adds r5, r3, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	beq _0805ACDC
	cmp r0, #0x10
	bgt _0805ACD6
	b _0805AEA0
_0805ACD6:
	cmp r0, #0x20
	beq _0805AD00
	b _0805AEA0
_0805ACDC:
	ldr r2, _0805ACFC @ =0x000002AD
	adds r1, r3, r2
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0805ACEE
	b _0805AEA0
_0805ACEE:
	ldrb r1, [r5, #0x00]
	mov r0, r9
	ands r0, r1
	adds r0, #0x20
	strb r0, [r5, #0x00]
	b _0805AEA0
	.byte 0x00, 0x00
_0805ACFC: .4byte 0x000002AD
_0805AD00:
	mov r0, r9
	ands r0, r1
	movs r4, #0x00
	mov r12, r4
	adds r0, #0x10
	strb r0, [r5, #0x00]
	mov r2, r9
	ands r2, r0
	cmp r2, #0x01
	beq _0805AD88
	cmp r2, #0x01
	bgt _0805AD1E
	cmp r2, #0x00
	beq _0805AD26
	b _0805AEA0
_0805AD1E:
	cmp r2, #0x02
	bne _0805AD24
	b _0805AE3C
_0805AD24:
	b _0805AEA0
_0805AD26:
	ldr r5, _0805AD74 @ =0x000002AF
	adds r4, r3, r5
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldr r2, _0805AD78 @ =0x000002AE
	adds r1, r3, r2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805AD46
	mov r5, r12
	strb r5, [r4, #0x00]
_0805AD46:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	ldr r2, _0805AD7C @ =0x000002D2
	adds r0, r6, r2
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldr r5, _0805AD80 @ =0x000002AD
	adds r0, r3, r5
	strb r1, [r0, #0x00]
	ldr r1, _0805AD84 @ =0x000002AA
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	subs r2, #0x26
	adds r0, r3, r2
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	b _0805AE16
	.byte 0x00, 0x00
_0805AD74: .4byte 0x000002AF
_0805AD78: .4byte 0x000002AE
_0805AD7C: .4byte 0x000002D2
_0805AD80: .4byte 0x000002AD
_0805AD84: .4byte 0x000002AA
_0805AD88:
	movs r5, #0xAC
	lsls r5, r5, #0x02
	adds r4, r3, r5
	ldrb r1, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805ADB8
	ldr r0, _0805ADB4 @ =0x000002AF
	adds r1, r3, r0
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0805ADDE
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	strb r2, [r1, #0x00]
	b _0805ADDE
	.byte 0x00, 0x00
_0805ADB4: .4byte 0x000002AF
_0805ADB8:
	ldr r1, _0805AE28 @ =0x000002AF
	adds r2, r3, r1
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	ldr r5, _0805AE2C @ =0x000002AE
	adds r3, r3, r5
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x00
	ldsb r1, [r3, r1]
	cmp r0, r1
	blt _0805ADDE
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x02
	strb r0, [r2, #0x00]
_0805ADDE:
	movs r0, #0x4C
	mov r4, r8
	muls r4, r0
	adds r2, r6, r4
	ldr r0, _0805AE28 @ =0x000002AF
	adds r3, r2, r0
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	ldr r5, _0805AE30 @ =0x000002D2
	adds r0, r6, r5
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	subs r5, #0x25
	adds r0, r2, r5
	strb r1, [r0, #0x00]
	ldr r1, _0805AE34 @ =0x000002AA
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	subs r5, #0x01
	adds r2, r2, r5
	ldrb r2, [r2, #0x00]
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x01
	adds r3, r3, r4
_0805AE16:
	ldr r4, _0805AE38 @ =0x000002B2
	adds r0, r6, r4
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805B120
	b _0805AEA0
	.byte 0x00, 0x00
_0805AE28: .4byte 0x000002AF
_0805AE2C: .4byte 0x000002AE
_0805AE30: .4byte 0x000002D2
_0805AE34: .4byte 0x000002AA
_0805AE38: .4byte 0x000002B2
_0805AE3C:
	ldr r0, _0805AE60 @ =0x000002AF
	adds r4, r3, r0
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldr r2, _0805AE64 @ =0x000002AE
	adds r1, r3, r2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805AE68
	mov r4, r12
	strb r4, [r5, #0x00]
	b _0805AEA0
	.byte 0x00, 0x00
_0805AE60: .4byte 0x000002AF
_0805AE64: .4byte 0x000002AE
_0805AE68:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	ldr r5, _0805AEBC @ =0x000002D2
	adds r0, r6, r5
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldr r2, _0805AEC0 @ =0x000002AD
	adds r0, r3, r2
	strb r1, [r0, #0x00]
	subs r5, #0x28
	adds r0, r3, r5
	ldrh r1, [r0, #0x00]
	subs r2, #0x01
	adds r0, r3, r2
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	ldr r4, _0805AEC4 @ =0x000002B2
	adds r0, r6, r4
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805B120
_0805AEA0:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x0F
	bhi _0805AEB0
	b _0805ACB8
_0805AEB0:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805AEBC: .4byte 0x000002D2
_0805AEC0: .4byte 0x000002AD
_0805AEC4: .4byte 0x000002B2
	thumb_func_start sub_805AEC8
sub_805AEC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r12, r0
	movs r1, #0xEE
	lsls r1, r1, #0x03
	add r1, r12
	movs r0, #0x00
	strb r0, [r1, #0x00]
	movs r7, #0x00
	ldr r0, _0805AF94 @ =0x083AFC5C
	mov r10, r0
	movs r1, #0x4C
	mov r9, r1
	movs r3, #0x00
	ldr r2, _0805AF98 @ =0x000002B2
	add r2, r12
	mov r8, r2
	ldr r5, _0805AF9C @ =0x000002D2
	add r5, r12
_0805AEF6:
	mov r2, r9
	muls r2, r7
	mov r4, r12
	adds r1, r4, r2
	movs r4, #0xAA
	lsls r4, r4, #0x02
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	adds r4, #0x02
	adds r0, r1, r4
	strh r3, [r0, #0x00]
	adds r4, #0x02
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	adds r4, #0x01
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	adds r4, #0x01
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	adds r4, #0x01
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x02
	adds r1, r1, r0
	strb r3, [r1, #0x00]
	movs r4, #0x00
	adds r6, r7, #0x1
_0805AF30:
	lsls r0, r4, #0x01
	adds r0, r0, r2
	mov r7, r8
	adds r1, r7, r0
	strh r3, [r1, #0x00]
	adds r0, r5, r0
	strh r3, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x0F
	bls _0805AF30
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x0F
	bls _0805AEF6
	mov r1, r12
	ldrh r0, [r1, #0x1E]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	add r1, r10
	ldrb r0, [r1, #0x04]
	lsls r0, r0, #0x02
	ldr r2, _0805AFA0 @ =0x083B283C
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	cmp r0, #0x00
	beq _0805B054
	movs r7, #0x00
_0805AF6E:
	lsls r0, r7, #0x03
	ldr r4, [sp, #0x000]
	adds r3, r0, r4
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805AFA4
	movs r1, #0x4C
	adds r0, r7, #0x0
	muls r0, r1
	add r0, r12
	movs r2, #0xAA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	movs r4, #0x00
	strb r4, [r0, #0x00]
	adds r6, r7, #0x1
	b _0805B03E
_0805AF94: .4byte 0x083AFC5C
_0805AF98: .4byte 0x000002B2
_0805AF9C: .4byte 0x000002D2
_0805AFA0: .4byte 0x083B283C
_0805AFA4:
	movs r0, #0x4C
	adds r2, r7, #0x0
	muls r2, r0
	add r2, r12
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	adds r0, #0x20
	movs r4, #0xAA
	lsls r4, r4, #0x02
	adds r1, r2, r4
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x16
	adds r4, #0x02
	adds r1, r2, r4
	strh r0, [r1, #0x00]
	ldrh r0, [r3, #0x02]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1B
	movs r1, #0xAB
	lsls r1, r1, #0x02
	adds r2, r2, r1
	strb r0, [r2, #0x00]
	ldr r5, [r3, #0x04]
	movs r4, #0x00
	adds r6, r7, #0x1
	movs r0, #0x4C
	adds r2, r7, #0x0
	muls r2, r0
	mov r10, r2
	ldr r0, _0805B064 @ =0x000002B2
	add r0, r12
	mov r9, r0
	adds r1, #0x26
	add r1, r12
	mov r8, r1
_0805AFF0:
	adds r3, r4, #0x0
	lsls r2, r3, #0x01
	add r2, r10
	mov r0, r9
	adds r4, r0, r2
	lsls r1, r3, #0x02
	adds r1, r1, r5
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x00]
	add r2, r8
	ldrh r1, [r1, #0x02]
	ldr r0, _0805B068 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r3, r3, #0x02
	adds r3, r3, r5
	ldrh r1, [r3, #0x02]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805AFF0
	movs r1, #0x4C
	adds r0, r7, #0x0
	muls r0, r1
	add r0, r12
	ldr r2, _0805B06C @ =0x000002AE
	adds r1, r0, r2
	strb r4, [r1, #0x00]
	ldr r4, _0805B070 @ =0x000002AF
	adds r1, r0, r4
	movs r2, #0x00
	strb r2, [r1, #0x00]
	adds r4, #0x01
	adds r0, r0, r4
	strb r2, [r0, #0x00]
_0805B03E:
	adds r1, r7, #0x0
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x03
	ldr r0, [sp, #0x000]
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805AF6E
_0805B054:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805B064: .4byte 0x000002B2
_0805B068: .4byte 0x00007FFF
_0805B06C: .4byte 0x000002AE
_0805B070: .4byte 0x000002AF
	thumb_func_start sub_805B074
sub_805B074:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	movs r5, #0x00
	ldr r0, _0805B110 @ =0x0000076C
	adds r2, r6, r0
	movs r3, #0xFF
_0805B082:
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x03
	bls _0805B082
	movs r1, #0xED
	lsls r1, r1, #0x03
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805B108
	ldr r2, _0805B114 @ =0x083AFC5C
	ldrh r1, [r6, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x05]
	ldr r1, _0805B118 @ =0x083B79C4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r7, [r0, #0x00]
	cmp r7, #0x00
	beq _0805B108
	movs r5, #0x00
_0805B0BC:
	adds r4, r5, #0x0
	lsls r0, r4, #0x02
	adds r2, r0, r7
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0805B0F4
	movs r3, #0xED
	lsls r3, r3, #0x03
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	ldrb r2, [r2, #0x01]
	movs r3, #0xA0
	lsls r3, r3, #0x07
	adds r1, r3, #0x0
	orrs r2, r1
	ldr r1, _0805B11C @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0xFF
	movs r3, #0xFF
	bl sub_8114C1C
	ldr r2, _0805B110 @ =0x0000076C
	adds r1, r6, r2
	adds r1, r1, r4
	strb r0, [r1, #0x00]
_0805B0F4:
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r4, #0x02
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B0BC
_0805B108:
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805B110: .4byte 0x0000076C
_0805B114: .4byte 0x083AFC5C
_0805B118: .4byte 0x083B79C4
_0805B11C: .4byte 0x0000FFFF
	thumb_func_start sub_805B120
sub_805B120:
	push {r4, lr}
	add sp, #-0x004
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x10
	ldr r4, _0805B150 @ =0x08940C9C
	lsrs r3, r3, #0x0E
	adds r3, r3, r4
	ldr r0, [r3, #0x00]
	adds r0, r0, r4
	lsrs r1, r1, #0x0B
	movs r3, #0xC0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	lsrs r2, r2, #0x13
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0805B150: .4byte 0x08940C9C
	thumb_func_start sub_805B154
sub_805B154:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	movs r1, #0x0F
	mov r9, r1
_0805B166:
	movs r0, #0x4C
	mov r7, r8
	muls r7, r0
	adds r3, r6, r7
	adds r5, r3, #0x0
	adds r5, #0xAC
	ldrb r1, [r5, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	beq _0805B188
	cmp r0, #0x10
	bgt _0805B182
	b _0805B2FE
_0805B182:
	cmp r0, #0x20
	beq _0805B1A6
	b _0805B2FE
_0805B188:
	adds r1, r3, #0x0
	adds r1, #0xB1
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0805B19A
	b _0805B2FE
_0805B19A:
	ldrb r1, [r5, #0x00]
	mov r0, r9
	ands r0, r1
	adds r0, #0x20
	strb r0, [r5, #0x00]
	b _0805B2FE
_0805B1A6:
	mov r0, r9
	ands r0, r1
	movs r1, #0x00
	mov r12, r1
	adds r0, #0x10
	strb r0, [r5, #0x00]
	mov r2, r9
	ands r2, r0
	cmp r2, #0x01
	beq _0805B214
	cmp r2, #0x01
	bgt _0805B1C4
	cmp r2, #0x00
	beq _0805B1CA
	b _0805B2FE
_0805B1C4:
	cmp r2, #0x02
	beq _0805B2A6
	b _0805B2FE
_0805B1CA:
	adds r4, r3, #0x0
	adds r4, #0xB3
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805B1EA
	mov r0, r12
	strb r0, [r4, #0x00]
_0805B1EA:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	b _0805B296
_0805B214:
	adds r4, r3, #0x0
	adds r4, #0xB4
	ldrb r1, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805B23C
	adds r1, r3, #0x0
	adds r1, #0xB3
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0805B260
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	strb r2, [r1, #0x00]
	b _0805B260
_0805B23C:
	adds r2, r3, #0x0
	adds r2, #0xB3
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	adds r3, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x00
	ldsb r1, [r3, r1]
	cmp r0, r1
	blt _0805B260
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x02
	strb r0, [r2, #0x00]
_0805B260:
	movs r0, #0x4C
	mov r4, r8
	muls r4, r0
	adds r2, r6, r4
	adds r3, r2, #0x0
	adds r3, #0xB3
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x01
	adds r3, r3, r4
_0805B296:
	adds r0, r6, #0x0
	adds r0, #0xB6
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805C9A4
	b _0805B2FE
_0805B2A6:
	adds r4, r3, #0x0
	adds r4, #0xB3
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805B2C8
	mov r1, r12
	strb r1, [r5, #0x00]
	b _0805B2FE
_0805B2C8:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	adds r0, r6, #0x0
	adds r0, #0xB6
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805C9A4
_0805B2FE:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x0F
	bhi _0805B30E
	b _0805B166
_0805B30E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805B31C
sub_805B31C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r9, r0
	movs r7, #0x00
	ldr r0, _0805B3C8 @ =0x03000DD0
	mov r8, r0
	ldr r1, _0805B3CC @ =0x083B283C
	mov r10, r1
	movs r5, #0x4C
	movs r3, #0x00
	mov r0, r9
	adds r0, #0xB6
	str r0, [sp, #0x004]
	mov r1, r9
	adds r1, #0xD6
	str r1, [sp, #0x008]
_0805B344:
	adds r1, r7, #0x0
	muls r1, r5
	mov r0, r9
	adds r2, r0, r1
	adds r0, r2, #0x0
	adds r0, #0xAC
	strb r3, [r0, #0x00]
	adds r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, #0x02
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	movs r2, #0x00
	adds r6, r7, #0x1
	adds r4, r1, #0x0
_0805B370:
	lsls r0, r2, #0x01
	adds r0, r0, r4
	ldr r7, [sp, #0x004]
	adds r1, r7, r0
	strh r3, [r1, #0x00]
	ldr r1, [sp, #0x008]
	adds r0, r1, r0
	strh r3, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x0F
	bls _0805B370
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x0F
	bls _0805B344
	mov r3, r8
	ldrb r0, [r3, #0x07]
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	cmp r0, #0x00
	beq _0805B47C
	movs r7, #0x00
_0805B3A4:
	lsls r0, r7, #0x03
	ldr r1, [sp, #0x000]
	adds r3, r0, r1
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805B3D0
	movs r3, #0x4C
	adds r0, r7, #0x0
	muls r0, r3
	add r0, r9
	adds r0, #0xAC
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r6, r7, #0x1
	b _0805B466
	.byte 0x00, 0x00
_0805B3C8: .4byte 0x03000DD0
_0805B3CC: .4byte 0x083B283C
_0805B3D0:
	movs r1, #0x4C
	adds r0, r7, #0x0
	muls r0, r1
	mov r1, r9
	adds r2, r1, r0
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	adds r0, #0x20
	adds r1, r2, #0x0
	adds r1, #0xAC
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x16
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldrh r0, [r3, #0x02]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1B
	adds r1, #0x02
	strb r0, [r1, #0x00]
	ldr r5, [r3, #0x04]
	movs r2, #0x00
	adds r6, r7, #0x1
	movs r0, #0x4C
	adds r3, r7, #0x0
	muls r3, r0
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #0x08
	mov r10, r0
	ldr r1, [sp, #0x004]
	mov r12, r1
_0805B414:
	adds r3, r2, #0x0
	lsls r2, r3, #0x01
	add r2, r8
	mov r0, r12
	adds r4, r0, r2
	lsls r1, r3, #0x02
	adds r1, r1, r5
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [sp, #0x008]
	adds r2, r0, r2
	ldrh r1, [r1, #0x02]
	ldr r0, _0805B48C @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r3, r3, #0x02
	adds r3, r3, r5
	ldrh r1, [r3, #0x02]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _0805B414
	movs r1, #0x4C
	adds r0, r7, #0x0
	muls r0, r1
	mov r3, r9
	adds r1, r3, r0
	adds r0, r1, #0x0
	adds r0, #0xB2
	strb r2, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0xB3
	movs r0, #0xFF
	strb r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	strb r1, [r0, #0x00]
_0805B466:
	adds r1, r7, #0x0
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x03
	ldr r3, [sp, #0x000]
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B3A4
_0805B47C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805B48C: .4byte 0x00007FFF
	thumb_func_start sub_805B490
sub_805B490:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	movs r7, #0x00
	adds r0, #0xAC
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805B4C4
	movs r1, #0x4C
_0805B4AC:
	adds r0, r7, #0x1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r7, #0x0
	muls r0, r1
	adds r0, r6, r0
	adds r0, #0xAC
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805B4C4
	cmp r7, #0x0F
	bls _0805B4AC
_0805B4C4:
	cmp r7, #0x0F
	bhi _0805B574
	ldr r0, _0805B584 @ =0x03000DD0
	ldrb r0, [r0, #0x07]
	ldr r1, _0805B588 @ =0x083B283C
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0805B574
	lsls r0, r7, #0x03
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805B574
	movs r0, #0x4C
	adds r3, r7, #0x0
	muls r3, r0
	adds r0, r6, r3
	mov r12, r0
	lsls r2, r2, #0x03
	adds r2, r2, r4
	ldrb r0, [r2, #0x01]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	adds r0, #0x20
	mov r1, r12
	adds r1, #0xAC
	strb r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x16
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x02]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1B
	adds r1, #0x02
	strb r0, [r1, #0x00]
	ldr r5, [r2, #0x04]
	movs r4, #0x00
	movs r0, #0xD6
	adds r0, r0, r6
	mov r9, r0
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #0x08
	mov r10, r0
	movs r0, #0xB6
	adds r0, r0, r6
	mov r12, r0
_0805B52E:
	adds r2, r4, #0x0
	lsls r3, r2, #0x01
	add r3, r8
	mov r0, r12
	adds r4, r0, r3
	lsls r1, r2, #0x02
	adds r1, r1, r5
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x00]
	add r3, r9
	ldrh r1, [r1, #0x02]
	ldr r0, _0805B58C @ =0x00007FFF
	ands r0, r1
	strh r0, [r3, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r2, r2, #0x02
	adds r2, r2, r5
	ldrh r1, [r2, #0x02]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _0805B52E
	movs r0, #0x4C
	muls r0, r7
	adds r0, r6, r0
	adds r2, r0, #0x0
	adds r2, #0xB2
	movs r1, #0x00
	strb r4, [r2, #0x00]
	adds r2, #0x01
	strb r1, [r2, #0x00]
	adds r0, #0xB4
	strb r1, [r0, #0x00]
_0805B574:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805B584: .4byte 0x03000DD0
_0805B588: .4byte 0x083B283C
_0805B58C: .4byte 0x00007FFF
	thumb_func_start sub_805B590
sub_805B590:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _0805B608 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805B600
	ldr r1, _0805B60C @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r4, #0x00
	ldr r6, _0805B610 @ =0x00007FFF
_0805B5A8:
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrh r2, [r0, #0x10]
	adds r0, r6, #0x0
	ands r0, r2
	cmp r0, r6
	beq _0805B5E6
	lsls r2, r2, #0x11
	ldr r0, _0805B614 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	lsrs r2, r2, #0x01
	movs r1, #0xE4
	lsls r1, r1, #0x13
	adds r2, r2, r1
	lsrs r2, r2, #0x10
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0805B5E6
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_805B618
_0805B5E6:
	adds r1, r4, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrb r1, [r0, #0x13]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B5A8
_0805B600:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805B608: .4byte 0x03000DD0
_0805B60C: .4byte 0x083B7108
_0805B610: .4byte 0x00007FFF
_0805B614: .4byte 0x03000FC0
	thumb_func_start sub_805B618
sub_805B618:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _0805B6AC @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805B6A6
	ldr r1, _0805B6B0 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x02
	adds r4, r0, r1
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0805B646
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_805B6C4
_0805B646:
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	beq _0805B654
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_805B6C4
_0805B654:
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	beq _0805B662
	adds r0, r5, #0x0
	movs r1, #0x02
	bl sub_805B6C4
_0805B662:
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0805B66E
	adds r0, r5, #0x0
	bl sub_805C824
_0805B66E:
	ldr r1, _0805B6B4 @ =0x00000579
	adds r0, r5, r1
	movs r6, #0x01
	strb r6, [r0, #0x00]
	ldrh r2, [r4, #0x10]
	ldr r1, _0805B6B8 @ =0x00007FFF
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, r1
	beq _0805B6A0
	lsls r2, r2, #0x11
	ldr r0, _0805B6BC @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	lsrs r2, r2, #0x01
	movs r1, #0xE4
	lsls r1, r1, #0x13
	adds r2, r2, r1
	lsrs r2, r2, #0x10
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80E9958
_0805B6A0:
	ldr r1, _0805B6C0 @ =0x00000599
	adds r0, r5, r1
	strb r6, [r0, #0x00]
_0805B6A6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805B6AC: .4byte 0x03000DD0
_0805B6B0: .4byte 0x083B7108
_0805B6B4: .4byte 0x00000579
_0805B6B8: .4byte 0x00007FFF
_0805B6BC: .4byte 0x03000FC0
_0805B6C0: .4byte 0x00000599
	thumb_func_start sub_805B6C4
sub_805B6C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	str r2, [sp, #0x004]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x08
	str r1, [sp, #0x008]
	movs r1, #0xFF
	adds r2, r1, #0x0
	ands r2, r0
	str r2, [sp, #0x00C]
	ldr r3, [sp, #0x004]
	ldrh r0, [r3, #0x02]
	lsrs r2, r0, #0x08
	str r2, [sp, #0x010]
	adds r3, r1, #0x0
	ands r3, r0
	str r3, [sp, #0x014]
	mov r0, r8
	lsls r1, r0, #0x01
	adds r0, r7, #0x0
	adds r0, #0x54
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	adds r0, #0x4E
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	movs r1, #0x02
	mov r9, r1
	movs r3, #0x00
	ldr r2, [sp, #0x014]
	cmp r3, r2
	bcs _0805B7DE
	mov r0, r8
	lsls r0, r0, #0x0B
	str r0, [sp, #0x020]
_0805B730:
	ldr r1, [sp, #0x00C]
	adds r2, r1, r3
	mov r0, r8
	lsls r1, r0, #0x01
	adds r0, r7, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	muls r0, r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	ldr r1, [sp, #0x008]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	movs r4, #0x00
	adds r5, r2, #0x0
	adds r3, #0x01
	str r3, [sp, #0x024]
	ldr r2, [sp, #0x010]
	cmp r4, r2
	bcs _0805B7D2
	adds r6, r7, #0x0
	adds r6, #0x98
_0805B762:
	mov r3, r9
	lsls r0, r3, #0x01
	ldr r1, [sp, #0x004]
	adds r0, r0, r1
	ldrh r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0805B7BC
	mov r3, r10
	adds r1, r3, r4
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x01
	adds r0, r1, r0
	strh r2, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0805B7BC
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	subs r0, r2, #0x1
	cmp r5, r0
	blt _0805B7BC
	adds r0, #0x0C
	cmp r5, r0
	bgt _0805B7BC
	ldr r3, [sp, #0x008]
	adds r2, r3, r4
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	subs r0, r3, #0x1
	cmp r2, r0
	blt _0805B7BC
	adds r0, #0x11
	cmp r2, r0
	bgt _0805B7BC
	adds r3, r5, #0x0
	ldrh r0, [r1, #0x00]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r1, r8
	bl sub_8058898
_0805B7BC:
	mov r0, r9
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x010]
	cmp r4, r0
	bcc _0805B762
_0805B7D2:
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	ldr r2, [sp, #0x014]
	cmp r3, r2
	bcc _0805B730
_0805B7DE:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805B7F0
sub_805B7F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r1, _0805B89C @ =0x0000056C
	adds r6, r0, r1
	movs r2, #0x00
	strb r2, [r6, #0x00]
	ldr r3, _0805B8A0 @ =0x0000056D
	adds r1, r0, r3
	strb r2, [r1, #0x00]
	movs r1, #0xAE
	lsls r1, r1, #0x03
	adds r5, r0, r1
	movs r1, #0x00
	strh r2, [r5, #0x00]
	adds r3, #0x05
	adds r3, r3, r0
	mov r12, r3
	strh r2, [r3, #0x00]
	ldr r3, _0805B8A4 @ =0x0000056E
	adds r7, r0, r3
	strb r1, [r7, #0x00]
	ldr r1, _0805B8A8 @ =0x00000574
	adds r3, r0, r1
	str r2, [r3, #0x00]
	ldr r0, _0805B8AC @ =0x02000052
	mov r8, r0
	strh r2, [r0, #0x00]
	ldr r1, _0805B8B0 @ =0x02000050
	mov r9, r1
	strh r2, [r1, #0x00]
	ldr r0, _0805B8B4 @ =0x03000DD0
	ldrb r0, [r0, #0x09]
	ldr r1, _0805B8B8 @ =0x083B78AC
	lsls r2, r0, #0x03
	adds r0, r1, #0x4
	adds r4, r2, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0805B88E
	adds r2, r2, r1
	ldrb r0, [r2, #0x01]
	lsrs r0, r0, #0x04
	adds r0, #0x80
	strb r0, [r6, #0x00]
	ldrh r1, [r2, #0x00]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1A
	lsls r1, r1, #0x08
	adds r1, #0x40
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	adds r0, r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x00]
	str r0, [r3, #0x00]
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x18
	mov r1, r12
	strh r0, [r1, #0x00]
	ldrb r0, [r7, #0x00]
	ldr r1, [r3, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1B
	lsls r1, r1, #0x08
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	adds r0, r0, r1
	mov r3, r8
	strh r0, [r3, #0x00]
	ldrh r0, [r5, #0x00]
	mov r1, r9
	strh r0, [r1, #0x00]
_0805B88E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805B89C: .4byte 0x0000056C
_0805B8A0: .4byte 0x0000056D
_0805B8A4: .4byte 0x0000056E
_0805B8A8: .4byte 0x00000574
_0805B8AC: .4byte 0x02000052
_0805B8B0: .4byte 0x02000050
_0805B8B4: .4byte 0x03000DD0
_0805B8B8: .4byte 0x083B78AC
	thumb_func_start sub_805B8BC
sub_805B8BC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _0805B904 @ =0x0000056C
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B9BE
	ldr r4, _0805B908 @ =0x00000572
	adds r1, r5, r4
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0805B9B2
	ldrb r0, [r2, #0x00]
	movs r2, #0x03
	ands r2, r0
	cmp r2, #0x01
	bne _0805B94E
	ldr r0, _0805B90C @ =0x0000056D
	adds r4, r5, r0
	ldrb r0, [r4, #0x00]
	ands r2, r0
	cmp r2, #0x00
	beq _0805B91A
	ldr r2, _0805B910 @ =0x0000056E
	adds r1, r5, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0805B914
	adds r0, #0x01
	strb r0, [r1, #0x00]
	b _0805B938
_0805B904: .4byte 0x0000056C
_0805B908: .4byte 0x00000572
_0805B90C: .4byte 0x0000056D
_0805B910: .4byte 0x0000056E
_0805B914:
	subs r0, #0x01
	strb r0, [r1, #0x00]
	b _0805B97C
_0805B91A:
	ldr r0, _0805B940 @ =0x0000056E
	adds r3, r5, r0
	ldrb r2, [r3, #0x00]
	ldr r1, _0805B944 @ =0x00000574
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x02]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0805B948
	subs r0, r2, #0x1
	strb r0, [r3, #0x00]
_0805B938:
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	b _0805B97C
_0805B940: .4byte 0x0000056E
_0805B944: .4byte 0x00000574
_0805B948:
	adds r0, r2, #0x1
	strb r0, [r3, #0x00]
	b _0805B97C
_0805B94E:
	cmp r2, #0x00
	bne _0805B97C
	ldr r4, _0805B970 @ =0x0000056E
	adds r2, r5, r4
	ldrb r3, [r2, #0x00]
	ldr r1, _0805B974 @ =0x00000574
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x02]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0805B978
	movs r0, #0x00
	b _0805B97A
_0805B970: .4byte 0x0000056E
_0805B974: .4byte 0x00000574
_0805B978:
	adds r0, r3, #0x1
_0805B97A:
	strb r0, [r2, #0x00]
_0805B97C:
	ldr r2, _0805B9C4 @ =0x0000056E
	adds r3, r5, r2
	ldrb r0, [r3, #0x00]
	ldr r4, _0805B9C8 @ =0x00000574
	adds r2, r5, r4
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x18
	subs r4, #0x02
	adds r1, r5, r4
	strh r0, [r1, #0x00]
	ldr r4, _0805B9CC @ =0x02000052
	ldrb r0, [r3, #0x00]
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1B
	lsls r1, r1, #0x08
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	adds r0, r0, r1
	strh r0, [r4, #0x00]
_0805B9B2:
	ldr r0, _0805B9D0 @ =0x02000050
	movs r2, #0xAE
	lsls r2, r2, #0x03
	adds r1, r5, r2
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
_0805B9BE:
	pop {r4, r5}
	pop {r0}
	bx r0
_0805B9C4: .4byte 0x0000056E
_0805B9C8: .4byte 0x00000574
_0805B9CC: .4byte 0x02000052
_0805B9D0: .4byte 0x02000050
	thumb_func_start sub_805B9D4
sub_805B9D4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r7, r0, #0x0
	movs r5, #0x00
	movs r0, #0xB0
	lsls r0, r0, #0x03
	adds r2, r7, r0
	movs r3, #0xFF
_0805B9E4:
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x03
	bls _0805B9E4
	ldr r1, _0805BA68 @ =0x0000057C
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805BA5E
	ldr r0, _0805BA6C @ =0x03000DD0
	ldrb r0, [r0, #0x08]
	ldr r1, _0805BA70 @ =0x083B79C4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	beq _0805BA5E
	movs r5, #0x00
_0805BA12:
	adds r4, r5, #0x0
	lsls r0, r4, #0x02
	adds r2, r0, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0805BA4A
	ldr r3, _0805BA68 @ =0x0000057C
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldrb r2, [r2, #0x01]
	movs r3, #0xA0
	lsls r3, r3, #0x07
	adds r1, r3, #0x0
	orrs r2, r1
	ldr r1, _0805BA74 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0xFF
	movs r3, #0xFF
	bl sub_8114C1C
	movs r2, #0xB0
	lsls r2, r2, #0x03
	adds r1, r7, r2
	adds r1, r1, r4
	strb r0, [r1, #0x00]
_0805BA4A:
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r4, #0x02
	adds r0, r0, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805BA12
_0805BA5E:
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805BA68: .4byte 0x0000057C
_0805BA6C: .4byte 0x03000DD0
_0805BA70: .4byte 0x083B79C4
_0805BA74: .4byte 0x0000FFFF
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x93, 0xB0, 0x00, 0x90, 0x09, 0x06
	.byte 0x09, 0x0E, 0x1B, 0x04, 0x1E, 0x0C, 0xBD, 0xF7, 0x8B, 0xFF, 0x17, 0x48, 0x00, 0x99, 0x88, 0x61
	.byte 0x00, 0x20, 0x08, 0x77, 0x70, 0x00, 0x80, 0x19, 0x00, 0x04, 0x00, 0x0C, 0x82, 0x46, 0x13, 0x4D
	.byte 0xA0, 0x24, 0xA4, 0x00, 0x12, 0x4A, 0x20, 0x1C, 0x01, 0x21, 0x00, 0x23, 0xBD, 0xF7, 0x7E, 0xF9
	.byte 0x28, 0x60, 0x10, 0x4D, 0x10, 0x4A, 0x20, 0x1C, 0x00, 0x21, 0x00, 0x23, 0xBD, 0xF7, 0x76, 0xF9
	.byte 0x28, 0x60, 0x0E, 0x49, 0x52, 0x46, 0x50, 0x00, 0x40, 0x18, 0x00, 0x88, 0xFF, 0x28, 0x00, 0xD1
	.byte 0x4F, 0xE1, 0x0B, 0x48, 0x0B, 0x4B, 0xC0, 0x18, 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x02, 0x28
	.byte 0x14, 0xD1, 0x09, 0x4B, 0x13, 0xE0, 0x00, 0x00, 0xB8, 0xC2, 0xCD, 0x08, 0x00, 0x0E, 0x00, 0x03
	.byte 0x10, 0x28, 0x1E, 0x08, 0x04, 0x0E, 0x00, 0x03, 0x18, 0x28, 0x1E, 0x08, 0xF0, 0x79, 0x3B, 0x08
	.byte 0x4C, 0x03, 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x08, 0x48, 0x8D, 0x08, 0x9D, 0x4B, 0x9E, 0x4A
	.byte 0x9E, 0x49, 0x31, 0x40, 0x48, 0x00, 0x40, 0x18, 0xC0, 0x00, 0x80, 0x18, 0x40, 0x79, 0x9C, 0x49
	.byte 0x40, 0x18, 0x00, 0x78, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x40, 0x08, 0x40, 0x00, 0x1C, 0x18
	.byte 0x20, 0x88, 0x1F, 0x23, 0x1D, 0x1C, 0x05, 0x40, 0xF8, 0x22, 0x92, 0x00, 0x16, 0x1C, 0x06, 0x40
	.byte 0x01, 0x96, 0xF8, 0x21, 0xC9, 0x01, 0x0E, 0x1C, 0x06, 0x40, 0x02, 0x96, 0x60, 0x88, 0x1E, 0x1C
	.byte 0x06, 0x40, 0x05, 0x96, 0x16, 0x1C, 0x06, 0x40, 0x06, 0x96, 0x0E, 0x1C, 0x06, 0x40, 0x07, 0x96
	.byte 0xA0, 0x88, 0x03, 0x40, 0x08, 0x93, 0x16, 0x1C, 0x06, 0x40, 0x09, 0x96, 0x01, 0x40, 0x0A, 0x91
	.byte 0x88, 0x49, 0x52, 0x46, 0x50, 0x00, 0x40, 0x18, 0x00, 0x88, 0x03, 0x90, 0x50, 0x46, 0x01, 0x30
	.byte 0x40, 0x00, 0x40, 0x18, 0x00, 0x88, 0x03, 0x9B, 0xC0, 0x1A, 0x00, 0x04, 0x00, 0x0C, 0x04, 0x90
	.byte 0x50, 0x46, 0x02, 0x30, 0x40, 0x00, 0x40, 0x18, 0x00, 0x88, 0x04, 0x9E, 0x80, 0x1B, 0x00, 0x04
	.byte 0x00, 0x0C, 0x82, 0x46, 0x00, 0x26, 0x18, 0x04, 0x00, 0x14, 0x86, 0x42, 0x0B, 0xDA, 0x7A, 0x4B
	.byte 0x02, 0x1C, 0x19, 0x68, 0x70, 0x00, 0x40, 0x18, 0x21, 0x88, 0x01, 0x80, 0x70, 0x1C, 0x00, 0x04
	.byte 0x06, 0x0C, 0x96, 0x42, 0xF5, 0xDB, 0x04, 0x98, 0x00, 0x04, 0x0B, 0x90, 0x00, 0x26, 0x11, 0x90
	.byte 0x51, 0x46, 0x09, 0x04, 0x12, 0x91, 0x00, 0x28, 0x4A, 0xDD, 0x70, 0x49, 0x70, 0x48, 0x09, 0x1A
	.byte 0x8A, 0x46, 0x0C, 0x95, 0x05, 0x9A, 0x52, 0x1B, 0x0D, 0x92, 0x6E, 0x4B, 0x1A, 0x68, 0x52, 0x44
	.byte 0x0D, 0x99, 0x08, 0x1C, 0x70, 0x43, 0x0B, 0x9B, 0x1D, 0x14, 0x29, 0x1C, 0x7E, 0xF1, 0x34, 0xFF
	.byte 0x0C, 0x99, 0x09, 0x18, 0x1F, 0x20, 0x01, 0x40, 0x89, 0x46, 0x66, 0x4B, 0x1A, 0x68, 0x52, 0x44
	.byte 0x01, 0x9C, 0x06, 0x99, 0x08, 0x1B, 0x70, 0x43, 0x29, 0x1C, 0x7E, 0xF1, 0x25, 0xFF, 0x24, 0x18
	.byte 0xA0, 0x46, 0xF8, 0x22, 0x92, 0x00, 0x10, 0x1C, 0x43, 0x46, 0x03, 0x40, 0x98, 0x46, 0x5D, 0x48
	.byte 0x02, 0x68, 0x52, 0x44, 0x02, 0x9C, 0x07, 0x99, 0x08, 0x1B, 0x70, 0x43, 0x29, 0x1C, 0x7E, 0xF1
	.byte 0x13, 0xFF, 0x27, 0x18, 0xF8, 0x22, 0xD2, 0x01, 0x10, 0x1C, 0x07, 0x40, 0x03, 0x9B, 0x19, 0x04
	.byte 0x09, 0x14, 0x71, 0x18, 0x50, 0x48, 0x00, 0x68, 0x49, 0x00, 0x09, 0x18, 0x48, 0x46, 0x42, 0x46
	.byte 0x10, 0x43, 0x38, 0x43, 0x08, 0x80, 0x70, 0x1C, 0x00, 0x04, 0x06, 0x0C, 0xAE, 0x42, 0xBC, 0xDB
	.byte 0x12, 0x9B, 0x0E, 0x93, 0x00, 0x26, 0x00, 0x2B, 0x4E, 0xDD, 0x48, 0x49, 0x48, 0x48, 0x09, 0x1A
	.byte 0x8A, 0x46, 0x05, 0x98, 0x0F, 0x90, 0x08, 0x99, 0x09, 0x1A, 0x10, 0x91, 0x45, 0x4B, 0x1A, 0x68
	.byte 0x52, 0x44, 0x10, 0x99, 0x08, 0x1C, 0x70, 0x43, 0x0E, 0x9B, 0x1D, 0x14, 0x29, 0x1C, 0x7E, 0xF1
	.byte 0xE3, 0xFE, 0x0F, 0x99, 0x09, 0x18, 0x1F, 0x20, 0x01, 0x40, 0x89, 0x46, 0x3D, 0x4B, 0x1A, 0x68
	.byte 0x52, 0x44, 0x06, 0x9C, 0x09, 0x99, 0x08, 0x1B, 0x70, 0x43, 0x29, 0x1C, 0x7E, 0xF1, 0xD4, 0xFE
	.byte 0x24, 0x18, 0xA0, 0x46, 0xF8, 0x22, 0x92, 0x00, 0x10, 0x1C, 0x43, 0x46, 0x03, 0x40, 0x98, 0x46
	.byte 0x34, 0x48, 0x02, 0x68, 0x52, 0x44, 0x07, 0x9C, 0x0A, 0x99, 0x08, 0x1B, 0x70, 0x43, 0x29, 0x1C
	.byte 0x7E, 0xF1, 0xC2, 0xFE, 0x27, 0x18, 0xF8, 0x22, 0xD2, 0x01, 0x10, 0x1C, 0x07, 0x40, 0x11, 0x9B
	.byte 0x19, 0x14, 0x03, 0x9A, 0x10, 0x04, 0x00, 0x14, 0x71, 0x18, 0x09, 0x18, 0x26, 0x48, 0x00, 0x68
	.byte 0x49, 0x00, 0x09, 0x18, 0x48, 0x46, 0x43, 0x46, 0x18, 0x43, 0x38, 0x43, 0x08, 0x80, 0x70, 0x1C
	.byte 0x00, 0x04, 0x06, 0x0C, 0xAE, 0x42, 0xB9, 0xDB, 0x11, 0x99, 0x08, 0x14, 0x80, 0x19, 0x9F, 0x28
	.byte 0x15, 0xDC, 0x04, 0x9A, 0xB0, 0x18, 0x00, 0x04, 0x02, 0x0C, 0x9F, 0x2A, 0x0F, 0xD8, 0x1A, 0x4B
	.byte 0x46, 0x46, 0x48, 0x46, 0x06, 0x43, 0x37, 0x43, 0x38, 0x04, 0x04, 0x14, 0x18, 0x68, 0x51, 0x00
	.byte 0x09, 0x18, 0x0C, 0x80, 0x50, 0x1C, 0x00, 0x04, 0x02, 0x0C, 0x9F, 0x2A, 0xF6, 0xD9, 0x00, 0x26
	.byte 0x15, 0x4C, 0x11, 0x4B, 0x22, 0x68, 0x71, 0x00, 0x8A, 0x18, 0x18, 0x68, 0x09, 0x18, 0x08, 0x88
	.byte 0x10, 0x80, 0x70, 0x1C, 0x00, 0x04, 0x06, 0x0C, 0x9F, 0x2E, 0xF3, 0xD9, 0x01, 0x20, 0x00, 0x99
	.byte 0x08, 0x77, 0x00, 0x98, 0x13, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x30, 0x87, 0x8C, 0x08, 0xD4, 0x78, 0x3A, 0x08, 0xFF, 0x7F, 0x00, 0x00
	.byte 0x68, 0xAD, 0x3A, 0x08, 0xF0, 0x79, 0x3B, 0x08, 0x00, 0x0E, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08
	.byte 0x20, 0x82, 0x19, 0x08, 0x38, 0x10, 0x00, 0x03, 0x04, 0x0E, 0x00, 0x03, 0xF0, 0xB5, 0x4F, 0x46
	.byte 0x46, 0x46, 0xC0, 0xB4, 0x07, 0x1C, 0x3B, 0x48, 0x3C, 0x18, 0x23, 0x78, 0x00, 0x2B, 0x6B, 0xD1
	.byte 0x39, 0x48, 0xC2, 0x7A, 0x1F, 0x20, 0x02, 0x40, 0x38, 0x48, 0x92, 0x00, 0x12, 0x18, 0x10, 0x78
	.byte 0x80, 0x07, 0x80, 0x0F, 0x36, 0x49, 0xC9, 0x19, 0x88, 0x46, 0x08, 0x70, 0x50, 0x78, 0xC0, 0x08
	.byte 0x34, 0x4D, 0x79, 0x19, 0x08, 0x80, 0x10, 0x88, 0x40, 0x05, 0x00, 0x0F, 0x02, 0x35, 0x79, 0x19
	.byte 0x08, 0x80, 0x91, 0x78, 0x06, 0x3D, 0x78, 0x19, 0x01, 0x70, 0xD1, 0x78, 0x01, 0x35, 0x78, 0x19
	.byte 0x01, 0x70, 0x10, 0x78, 0x40, 0x06, 0x00, 0x0F, 0x01, 0x35, 0x79, 0x19, 0x08, 0x70, 0x10, 0x78
	.byte 0x40, 0x07, 0xC0, 0x0F, 0x28, 0x4A, 0xB9, 0x18, 0x08, 0x70, 0x06, 0x35, 0x78, 0x19, 0x03, 0x80
	.byte 0x01, 0x20, 0x20, 0x70, 0x25, 0x48, 0x81, 0x46, 0xA0, 0x24, 0xE4, 0x00, 0x24, 0x4A, 0x20, 0x1C
	.byte 0x01, 0x21, 0x00, 0x23, 0xBC, 0xF7, 0xBA, 0xFF, 0x49, 0x46, 0x08, 0x60, 0x21, 0x4D, 0x22, 0x4A
	.byte 0x20, 0x1C, 0x00, 0x21, 0x00, 0x23, 0xBC, 0xF7, 0xB1, 0xFF, 0x28, 0x60, 0x00, 0x23, 0x3E, 0x1C
	.byte 0x5A, 0x36, 0x3D, 0x1C, 0x60, 0x35, 0x44, 0x46, 0xC8, 0x46, 0x40, 0x46, 0x02, 0x68, 0x99, 0x00
	.byte 0x8A, 0x18, 0x18, 0x48, 0x00, 0x68, 0x09, 0x18, 0x20, 0x78, 0x40, 0x00, 0x30, 0x18, 0x00, 0x88
	.byte 0x08, 0x80, 0x10, 0x80, 0x20, 0x78, 0x40, 0x00, 0x28, 0x18, 0x00, 0x88, 0x48, 0x80, 0x50, 0x80
	.byte 0x58, 0x1C, 0x00, 0x04, 0x03, 0x0C, 0x9F, 0x2B, 0xE7, 0xD9, 0x38, 0x1C, 0x00, 0xF0, 0x5A, 0xF9
	.byte 0x0E, 0x48, 0x00, 0x21, 0xCD, 0xF7, 0xF4, 0xFC, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x84, 0x05, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x58, 0x86, 0x3B, 0x08
	.byte 0x85, 0x05, 0x00, 0x00, 0x8A, 0x05, 0x00, 0x00, 0x97, 0x05, 0x00, 0x00, 0x08, 0x0E, 0x00, 0x03
	.byte 0x20, 0x28, 0x1E, 0x08, 0x0C, 0x0E, 0x00, 0x03, 0x28, 0x28, 0x1E, 0x08, 0x45, 0xC6, 0x05, 0x08
	thumb_func_start sub_805BED8
sub_805BED8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	ldr r0, _0805BFC4 @ =0x00000584
	adds r6, r7, r0
	ldrb r5, [r6, #0x00]
	cmp r5, #0x00
	bne _0805BFB6
	ldr r1, _0805BFC8 @ =0x00000585
	adds r1, r1, r7
	mov r8, r1
	movs r2, #0x02
	strb r2, [r1, #0x00]
	adds r0, #0x06
	adds r1, r7, r0
	movs r4, #0x00
	movs r3, #0x03
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r1, _0805BFCC @ =0x0000058C
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	movs r0, #0xB2
	lsls r0, r0, #0x03
	adds r1, r7, r0
	movs r0, #0x06
	strh r0, [r1, #0x00]
	ldr r1, _0805BFD0 @ =0x00000592
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	subs r1, #0x0A
	adds r0, r7, r1
	strb r2, [r0, #0x00]
	ldr r0, _0805BFD4 @ =0x00000596
	adds r1, r7, r0
	movs r0, #0x08
	strb r0, [r1, #0x00]
	ldr r1, _0805BFD8 @ =0x0000058E
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	adds r1, #0x06
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	adds r1, #0x03
	adds r0, r7, r1
	strb r3, [r0, #0x00]
	movs r0, #0x01
	strb r0, [r6, #0x00]
	adds r1, #0x01
	adds r0, r7, r1
	strb r4, [r0, #0x00]
	ldr r0, _0805BFDC @ =0x03000E08
	mov r9, r0
	movs r4, #0xA0
	lsls r4, r4, #0x03
	ldr r2, _0805BFE0 @ =0x081E2820
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r5, _0805BFE4 @ =0x03000E0C
	ldr r2, _0805BFE8 @ =0x081E2828
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r5, #0x00]
	movs r3, #0x00
	adds r6, r7, #0x0
	adds r6, #0x5A
	adds r5, r7, #0x0
	adds r5, #0x60
	mov r4, r8
	mov r8, r9
_0805BF78:
	mov r0, r8
	ldr r2, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r2, r1, r2
	ldr r0, _0805BFE4 @ =0x03000E0C
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r6, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r5, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x9F
	bls _0805BF78
	adds r0, r7, #0x0
	bl sub_805C14C
	ldr r0, _0805BFEC @ =0x0805C5F5
	movs r1, #0x00
	bl sub_8029888
_0805BFB6:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805BFC4: .4byte 0x00000584
_0805BFC8: .4byte 0x00000585
_0805BFCC: .4byte 0x0000058C
_0805BFD0: .4byte 0x00000592
_0805BFD4: .4byte 0x00000596
_0805BFD8: .4byte 0x0000058E
_0805BFDC: .4byte 0x03000E08
_0805BFE0: .4byte 0x081E2820
_0805BFE4: .4byte 0x03000E0C
_0805BFE8: .4byte 0x081E2828
_0805BFEC: .4byte sub_805C5F4
	thumb_func_start sub_805BFF0
sub_805BFF0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, _0805C08C @ =0x00000584
	adds r6, r7, r0
	ldrb r4, [r6, #0x00]
	cmp r4, #0x00
	beq _0805C004
	b _0805C122
_0805C004:
	ldr r1, _0805C090 @ =0x00000585
	adds r5, r7, r1
	movs r2, #0x02
	strb r2, [r5, #0x00]
	adds r0, #0x06
	adds r1, r7, r0
	movs r0, #0x00
	mov r12, r0
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r1, _0805C094 @ =0x0000058C
	adds r0, r7, r1
	movs r3, #0x02
	strh r2, [r0, #0x00]
	movs r2, #0xB2
	lsls r2, r2, #0x03
	adds r1, r7, r2
	movs r0, #0x06
	strh r0, [r1, #0x00]
	ldr r0, _0805C098 @ =0x00000592
	adds r1, r7, r0
	movs r0, #0x04
	strh r0, [r1, #0x00]
	movs r1, #0xB1
	lsls r1, r1, #0x03
	adds r0, r7, r1
	strb r3, [r0, #0x00]
	adds r2, #0x06
	adds r1, r7, r2
	movs r0, #0x08
	strb r0, [r1, #0x00]
	ldr r1, _0805C09C @ =0x0000058E
	adds r0, r7, r1
	strh r4, [r0, #0x00]
	subs r2, #0x02
	adds r0, r7, r2
	strh r4, [r0, #0x00]
	adds r1, #0x09
	adds r0, r7, r1
	strb r3, [r0, #0x00]
	movs r0, #0x01
	strb r0, [r6, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r1, r7, #0x0
	adds r1, #0x60
	adds r0, r1, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mov r8, r1
	cmp r0, #0x97
	bgt _0805C0A8
	ldr r1, _0805C0A0 @ =0x00000586
	adds r0, r7, r1
	mov r2, r12
	strb r2, [r0, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r2, #0x68
	negs r2, r2
	adds r0, r2, #0x0
	subs r0, r0, r1
	ldr r2, _0805C0A4 @ =0x00000587
	adds r1, r7, r2
	strb r0, [r1, #0x00]
	b _0805C0B8
_0805C08C: .4byte 0x00000584
_0805C090: .4byte 0x00000585
_0805C094: .4byte 0x0000058C
_0805C098: .4byte 0x00000592
_0805C09C: .4byte 0x0000058E
_0805C0A0: .4byte 0x00000586
_0805C0A4: .4byte 0x00000587
_0805C0A8:
	ldr r1, _0805C12C @ =0x00000586
	adds r0, r7, r1
	movs r1, #0xA0
	strb r1, [r0, #0x00]
	ldr r2, _0805C130 @ =0x00000587
	adds r0, r7, r2
	mov r1, r12
	strb r1, [r0, #0x00]
_0805C0B8:
	ldr r6, _0805C134 @ =0x03000E08
	movs r4, #0xA0
	lsls r4, r4, #0x03
	ldr r2, _0805C138 @ =0x081E2820
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r6, #0x00]
	ldr r5, _0805C13C @ =0x03000E0C
	ldr r2, _0805C140 @ =0x081E2828
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl __vn__FUliPcUc
	str r0, [r5, #0x00]
	movs r3, #0x00
	adds r5, r7, #0x0
	adds r5, #0x5A
	ldr r2, _0805C144 @ =0x00000585
	adds r4, r7, r2
_0805C0E6:
	ldr r2, [r6, #0x00]
	lsls r1, r3, #0x02
	adds r2, r1, r2
	ldr r0, _0805C13C @ =0x03000E0C
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r5, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x9F
	bls _0805C0E6
	adds r0, r7, #0x0
	bl sub_805C14C
	ldr r0, _0805C148 @ =0x0805C5F5
	movs r1, #0x00
	bl sub_8029888
_0805C122:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805C12C: .4byte 0x00000586
_0805C130: .4byte 0x00000587
_0805C134: .4byte 0x03000E08
_0805C138: .4byte 0x081E2820
_0805C13C: .4byte 0x03000E0C
_0805C140: .4byte 0x081E2828
_0805C144: .4byte 0x00000585
_0805C148: .4byte sub_805C5F4
	thumb_func_start sub_805C14C
sub_805C14C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	ldr r1, _0805C238 @ =0x00000585
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r2, [r0, r3]
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r1
	movs r5, #0x00
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	ldr r0, _0805C23C @ =0x03000E08
	ldr r1, [r0, #0x00]
	movs r3, #0x00
_0805C180:
	lsls r0, r3, #0x02
	adds r0, r0, r1
	str r2, [r0, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x9F
	bls _0805C180
	ldr r7, _0805C240 @ =0x0000058E
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x02
	mov r9, r0
	ldr r1, _0805C244 @ =0x00000594
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x02
	str r0, [sp, #0x000]
	ldr r2, _0805C248 @ =0x00000597
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0805C258
	ldr r3, _0805C24C @ =0x00000586
	adds r0, r4, r3
	ldrb r3, [r0, #0x00]
	ldr r5, _0805C250 @ =0x00000587
	adds r0, r4, r5
	ldrb r7, [r0, #0x00]
	cmp r3, r7
	bls _0805C1C0
	b _0805C598
_0805C1C0:
	subs r1, #0x0F
	adds r1, r1, r4
	mov r10, r1
	subs r2, #0x0D
	adds r2, r2, r4
	mov r8, r2
	adds r5, #0x05
	adds r5, r5, r4
	mov r12, r5
	adds r7, r0, #0x0
_0805C1D4:
	ldr r0, _0805C23C @ =0x03000E08
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x02
	adds r6, r0, r1
	mov r2, r10
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r5, r0, r1
	mov r0, r9
	adds r2, r3, r0
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r2, r2, r0
	mov r1, r8
	ldrh r0, [r1, #0x00]
	muls r0, r2
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	ldr r2, _0805C254 @ =0x08198504
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bge _0805C212
	adds r1, #0x3F
_0805C212:
	asrs r1, r1, #0x06
	mov r2, r12
	ldrh r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C220
	adds r0, #0xFF
_0805C220:
	asrs r0, r0, #0x08
	ldrh r5, [r5, #0x00]
	adds r0, r0, r5
	strh r0, [r6, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r5, [r7, #0x00]
	cmp r3, r5
	bls _0805C1D4
	b _0805C598
	.byte 0x00, 0x00
_0805C238: .4byte 0x00000585
_0805C23C: .4byte 0x03000E08
_0805C240: .4byte 0x0000058E
_0805C244: .4byte 0x00000594
_0805C248: .4byte 0x00000597
_0805C24C: .4byte 0x00000586
_0805C250: .4byte 0x00000587
_0805C254: .4byte 0x08198504
_0805C258:
	cmp r0, #0x01
	bne _0805C2F8
	ldr r7, _0805C2E0 @ =0x00000586
	adds r0, r4, r7
	ldrb r2, [r0, #0x00]
	ldr r1, _0805C2E4 @ =0x00000587
	adds r0, r4, r1
	ldrb r3, [r0, #0x00]
	cmp r2, r3
	bls _0805C26E
	b _0805C598
_0805C26E:
	ldr r5, _0805C2E8 @ =0x00000585
	adds r5, r5, r4
	mov r8, r5
	ldr r7, _0805C2EC @ =0x08198504
	mov r10, r7
	adds r1, #0x03
	adds r1, r1, r4
	mov r12, r1
	ldr r3, _0805C2F0 @ =0x0000058C
	adds r3, r4, r3
	str r3, [sp, #0x00C]
	adds r6, r0, #0x0
_0805C286:
	ldr r5, _0805C2F4 @ =0x03000E08
	ldr r1, [r5, #0x00]
	lsls r0, r2, #0x02
	adds r5, r0, r1
	mov r7, r8
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x60
	adds r3, r1, r0
	mov r0, r9
	adds r1, r2, r0
	movs r7, #0x00
	ldsh r0, [r3, r7]
	adds r1, r1, r0
	mov r7, r12
	ldrh r0, [r7, #0x00]
	muls r0, r1
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	add r0, r10
	movs r7, #0x00
	ldsh r1, [r0, r7]
	cmp r1, #0x00
	bge _0805C2BC
	adds r1, #0x3F
_0805C2BC:
	asrs r1, r1, #0x06
	ldr r7, [sp, #0x00C]
	ldrh r0, [r7, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C2CA
	adds r0, #0xFF
_0805C2CA:
	asrs r0, r0, #0x08
	ldrh r3, [r3, #0x00]
	adds r0, r0, r3
	strh r0, [r5, #0x02]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r6, #0x00]
	cmp r2, r0
	bls _0805C286
	b _0805C598
_0805C2E0: .4byte 0x00000586
_0805C2E4: .4byte 0x00000587
_0805C2E8: .4byte 0x00000585
_0805C2EC: .4byte 0x08198504
_0805C2F0: .4byte 0x0000058C
_0805C2F4: .4byte 0x03000E08
_0805C2F8:
	cmp r0, #0x02
	beq _0805C2FE
	b _0805C448
_0805C2FE:
	ldr r1, _0805C338 @ =0x00000585
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x60
	adds r0, r1, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	adds r5, r1, #0x0
	cmp r0, #0x97
	bgt _0805C344
	ldr r7, _0805C33C @ =0x00000586
	adds r1, r4, r7
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	movs r2, #0x68
	negs r2, r2
	adds r0, r2, #0x0
	subs r0, r0, r1
	ldr r3, _0805C340 @ =0x00000587
	adds r1, r4, r3
	strb r0, [r1, #0x00]
	b _0805C354
	.byte 0x00, 0x00
_0805C338: .4byte 0x00000585
_0805C33C: .4byte 0x00000586
_0805C340: .4byte 0x00000587
_0805C344:
	ldr r7, _0805C428 @ =0x00000586
	adds r1, r4, r7
	movs r2, #0x00
	movs r0, #0xA0
	strb r0, [r1, #0x00]
	ldr r1, _0805C42C @ =0x00000587
	adds r0, r4, r1
	strb r2, [r0, #0x00]
_0805C354:
	ldr r2, _0805C428 @ =0x00000586
	adds r0, r4, r2
	ldrb r3, [r0, #0x00]
	ldr r7, _0805C42C @ =0x00000587
	adds r0, r4, r7
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bls _0805C366
	b _0805C598
_0805C366:
	ldr r0, _0805C430 @ =0x00000585
	adds r0, r0, r4
	mov r12, r0
	ldr r1, _0805C434 @ =0x08198504
	mov r10, r1
	str r5, [sp, #0x00C]
	movs r2, #0xFF
	mov r8, r2
	ldr r5, _0805C438 @ =0x0000058A
	adds r5, r4, r5
	str r5, [sp, #0x004]
_0805C37C:
	ldr r7, _0805C43C @ =0x03000E08
	ldr r1, [r7, #0x00]
	lsls r0, r3, #0x02
	adds r6, r0, r1
	mov r0, r12
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r5, r0, r1
	mov r7, r9
	adds r2, r3, r7
	ldr r0, [sp, #0x00C]
	adds r1, r0, r1
	movs r7, #0x00
	ldsh r0, [r1, r7]
	adds r2, r2, r0
	ldr r1, [sp, #0x004]
	ldrh r0, [r1, #0x00]
	muls r0, r2
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #0x01
	add r0, r10
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _0805C3B6
	adds r0, #0x3F
_0805C3B6:
	asrs r0, r0, #0x06
	ldr r2, _0805C440 @ =0x0000058C
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C3C6
	adds r0, #0xFF
_0805C3C6:
	asrs r0, r0, #0x08
	ldrh r5, [r5, #0x00]
	adds r0, r0, r5
	strh r0, [r6, #0x00]
	mov r5, r12
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ldr r7, [sp, #0x00C]
	adds r2, r7, r0
	ldr r0, [sp, #0x000]
	adds r1, r3, r0
	movs r5, #0x00
	ldsh r0, [r2, r5]
	adds r1, r1, r0
	movs r7, #0xB2
	lsls r7, r7, #0x03
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	muls r0, r1
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x01
	add r0, r10
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bge _0805C3FE
	adds r0, #0x3F
_0805C3FE:
	asrs r0, r0, #0x06
	ldr r7, _0805C444 @ =0x00000592
	adds r1, r4, r7
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C40E
	adds r0, #0xFF
_0805C40E:
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	strh r0, [r6, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _0805C42C @ =0x00000587
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bls _0805C37C
	b _0805C598
_0805C428: .4byte 0x00000586
_0805C42C: .4byte 0x00000587
_0805C430: .4byte 0x00000585
_0805C434: .4byte 0x08198504
_0805C438: .4byte 0x0000058A
_0805C43C: .4byte 0x03000E08
_0805C440: .4byte 0x0000058C
_0805C444: .4byte 0x00000592
_0805C448:
	ldr r3, _0805C480 @ =0x00000585
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x60
	adds r0, r1, r0
	movs r5, #0x00
	ldsh r0, [r0, r5]
	adds r5, r1, #0x0
	cmp r0, #0x97
	bgt _0805C488
	ldr r7, _0805C484 @ =0x00000586
	adds r1, r4, r7
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	movs r2, #0x68
	negs r2, r2
	adds r0, r2, #0x0
	subs r0, r0, r1
	adds r3, #0x02
	adds r1, r4, r3
	strb r0, [r1, #0x00]
	b _0805C498
_0805C480: .4byte 0x00000585
_0805C484: .4byte 0x00000586
_0805C488:
	ldr r7, _0805C5CC @ =0x00000586
	adds r1, r4, r7
	movs r2, #0x00
	movs r0, #0xA0
	strb r0, [r1, #0x00]
	ldr r1, _0805C5D0 @ =0x00000587
	adds r0, r4, r1
	strb r2, [r0, #0x00]
_0805C498:
	movs r2, #0xB3
	lsls r2, r2, #0x03
	adds r1, r4, r2
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1D
	bls _0805C4C8
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldr r3, _0805C5D4 @ =0x00000592
	adds r1, r4, r3
	ldrh r0, [r1, #0x00]
	cmp r0, #0x03
	bls _0805C4C4
	ldr r7, _0805C5D8 @ =0x0000058C
	adds r1, r4, r7
	ldrh r0, [r1, #0x00]
	cmp r0, #0x01
	bhi _0805C4C8
_0805C4C4:
	adds r0, #0x01
	strh r0, [r1, #0x00]
_0805C4C8:
	ldr r1, _0805C5CC @ =0x00000586
	adds r0, r4, r1
	ldrb r3, [r0, #0x00]
	ldr r2, _0805C5D0 @ =0x00000587
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bhi _0805C598
	ldr r7, _0805C5DC @ =0x00000585
	adds r7, r7, r4
	mov r12, r7
	ldr r0, _0805C5E0 @ =0x08198504
	mov r10, r0
	str r5, [sp, #0x00C]
	movs r1, #0xFF
	mov r8, r1
	adds r2, #0x03
	adds r2, r4, r2
	str r2, [sp, #0x008]
_0805C4EE:
	ldr r5, _0805C5E4 @ =0x03000E08
	ldr r1, [r5, #0x00]
	lsls r0, r3, #0x02
	adds r6, r0, r1
	mov r7, r12
	ldrb r1, [r7, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r5, r0, r1
	mov r0, r9
	adds r2, r3, r0
	ldr r7, [sp, #0x00C]
	adds r1, r7, r1
	movs r7, #0x00
	ldsh r0, [r1, r7]
	adds r2, r2, r0
	ldr r1, [sp, #0x008]
	ldrh r0, [r1, #0x00]
	muls r0, r2
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #0x01
	add r0, r10
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _0805C528
	adds r0, #0x3F
_0805C528:
	asrs r0, r0, #0x06
	ldr r2, _0805C5D8 @ =0x0000058C
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C538
	adds r0, #0xFF
_0805C538:
	asrs r0, r0, #0x08
	ldrh r5, [r5, #0x00]
	adds r0, r0, r5
	strh r0, [r6, #0x00]
	mov r5, r12
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ldr r7, [sp, #0x00C]
	adds r2, r7, r0
	ldr r0, [sp, #0x000]
	adds r1, r3, r0
	movs r5, #0x00
	ldsh r0, [r2, r5]
	adds r1, r1, r0
	movs r7, #0xB2
	lsls r7, r7, #0x03
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	muls r0, r1
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x01
	add r0, r10
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bge _0805C570
	adds r0, #0x3F
_0805C570:
	asrs r0, r0, #0x06
	ldr r7, _0805C5D4 @ =0x00000592
	adds r1, r4, r7
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C580
	adds r0, #0xFF
_0805C580:
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	strh r0, [r6, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _0805C5D0 @ =0x00000587
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bls _0805C4EE
_0805C598:
	ldr r3, _0805C5E8 @ =0x0000058E
	adds r2, r4, r3
	movs r5, #0xB1
	lsls r5, r5, #0x03
	adds r1, r4, r5
	ldrh r0, [r2, #0x00]
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r7, _0805C5EC @ =0x00000594
	adds r2, r4, r7
	ldr r0, _0805C5F0 @ =0x00000596
	adds r1, r4, r0
	ldrh r0, [r2, #0x00]
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C5CC: .4byte 0x00000586
_0805C5D0: .4byte 0x00000587
_0805C5D4: .4byte 0x00000592
_0805C5D8: .4byte 0x0000058C
_0805C5DC: .4byte 0x00000585
_0805C5E0: .4byte 0x08198504
_0805C5E4: .4byte 0x03000E08
_0805C5E8: .4byte 0x0000058E
_0805C5EC: .4byte 0x00000594
_0805C5F0: .4byte 0x00000596
	thumb_func_start sub_805C5F4
sub_805C5F4:
	push {r4, r5, lr}
	ldr r2, _0805C62C @ =0x04000014
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r4, _0805C630 @ =0x03000E0C
	ldr r1, [r4, #0x00]
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x08]
	ldrh r0, [r1, #0x02]
	strh r0, [r2, #0x0A]
	ldr r0, _0805C634 @ =0x03000E08
	ldr r0, [r0, #0x00]
	movs r2, #0xA0
	bl CpuFastSet
	ldr r2, _0805C638 @ =0x040000B0
	ldr r1, _0805C63C @ =0x040000BA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x02
	str r0, [r2, #0x00]
	str r5, [r2, #0x04]
	ldr r0, _0805C640 @ =0xA6400001
	str r0, [r2, #0x08]
	pop {r4, r5}
	pop {r0}
	bx r0
_0805C62C: .4byte 0x04000014
_0805C630: .4byte 0x03000E0C
_0805C634: .4byte 0x03000E08
_0805C638: .4byte 0x040000B0
_0805C63C: .4byte 0x040000BA
_0805C640: .4byte 0xA6400001
	thumb_func_start sub_805C644
sub_805C644:
	push {r4, r5, lr}
	ldr r0, _0805C694 @ =0x03000DD0
	ldrb r1, [r0, #0x0B]
	movs r0, #0x1F
	ands r0, r1
	ldr r1, _0805C698 @ =0x083B8658
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1C
	ldr r1, _0805C69C @ =0x04000014
	adds r5, r0, r1
	ldr r4, _0805C6A0 @ =0x03000E0C
	ldr r1, [r4, #0x00]
	ldrh r2, [r1, #0x00]
	strh r2, [r5, #0x00]
	ldr r2, _0805C6A4 @ =0x04000016
	adds r0, r0, r2
	ldrh r2, [r1, #0x02]
	strh r2, [r0, #0x00]
	ldr r0, _0805C6A8 @ =0x03000E08
	ldr r0, [r0, #0x00]
	movs r2, #0xA0
	bl CpuFastSet
	ldr r2, _0805C6AC @ =0x040000B0
	ldr r1, _0805C6B0 @ =0x040000BA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x02
	str r0, [r2, #0x00]
	str r5, [r2, #0x04]
	ldr r0, _0805C6B4 @ =0xA6400001
	str r0, [r2, #0x08]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C694: .4byte 0x03000DD0
_0805C698: .4byte 0x083B8658
_0805C69C: .4byte 0x04000014
_0805C6A0: .4byte 0x03000E0C
_0805C6A4: .4byte 0x04000016
_0805C6A8: .4byte 0x03000E08
_0805C6AC: .4byte 0x040000B0
_0805C6B0: .4byte 0x040000BA
_0805C6B4: .4byte 0xA6400001
	thumb_func_start sub_805C6B8
sub_805C6B8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0805C6F0 @ =0x040000BA
	movs r5, #0x00
	strh r5, [r0, #0x00]
	movs r0, #0x00
	movs r1, #0x00
	bl sub_8029888
	ldr r0, _0805C6F4 @ =0x03000E0C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C6D6
	bl __builtin_vec_delete
_0805C6D6:
	ldr r0, _0805C6F8 @ =0x03000E08
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C6E2
	bl __builtin_vec_delete
_0805C6E2:
	ldr r1, _0805C6FC @ =0x00000584
	adds r0, r4, r1
	strb r5, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C6F0: .4byte 0x040000BA
_0805C6F4: .4byte 0x03000E0C
_0805C6F8: .4byte 0x03000E08
_0805C6FC: .4byte 0x00000584
	.byte 0x10, 0xB5, 0xA0, 0x24, 0xE4, 0x04, 0x08, 0x48, 0x01, 0x68, 0x08, 0x88, 0x20, 0x80, 0x07, 0x4A
	.byte 0x07, 0x4B, 0x00, 0x20, 0x18, 0x80, 0x02, 0x31, 0x11, 0x60, 0x54, 0x60, 0x05, 0x48, 0x90, 0x60
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x04, 0x0E, 0x00, 0x03, 0xB0, 0x00, 0x00, 0x04
	.byte 0xBA, 0x00, 0x00, 0x04, 0x01, 0x00, 0x40, 0xA2, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_805C73C
sub_805C73C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _0805C77C @ =0x08CDC2B8
	str r0, [r5, #0x18]
	ldr r0, _0805C780 @ =0x040000BA
	movs r4, #0x00
	strh r4, [r0, #0x00]
	movs r0, #0x00
	movs r1, #0x00
	bl sub_8029888
	strb r4, [r5, #0x1C]
	ldr r0, _0805C784 @ =0x03000E04
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C762
	bl __builtin_vec_delete
_0805C762:
	ldr r0, _0805C788 @ =0x03000E00
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C76E
	bl __builtin_vec_delete
_0805C76E:
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _._7Process
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805C77C: .4byte 0x08CDC2B8
_0805C780: .4byte 0x040000BA
_0805C784: .4byte 0x03000E04
_0805C788: .4byte 0x03000E00
	thumb_func_start sub_805C78C
sub_805C78C:
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _0805C7B0 @ =0x0000057C
	adds r3, r0, r4
	ldr r3, [r3, #0x00]
	adds r4, #0x04
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	bl sub_8115048
	pop {r4}
	pop {r0}
	bx r0
_0805C7B0: .4byte 0x0000057C
	thumb_func_start sub_805C7B4
sub_805C7B4:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, _0805C814 @ =0x0000057C
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0805C80A
	ldr r0, _0805C818 @ =0x03000DD0
	ldrb r0, [r0, #0x08]
	ldr r1, _0805C81C @ =0x083B79C4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0805C80A
	lsls r0, r4, #0x02
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805C80A
	ldrb r2, [r2, #0x01]
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	orrs r2, r0
	ldr r0, _0805C820 @ =0x0000FFFF
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	movs r1, #0xFF
	movs r3, #0xFF
	bl sub_8114C1C
	movs r2, #0xB0
	lsls r2, r2, #0x03
	adds r1, r5, r2
	adds r1, r1, r4
	strb r0, [r1, #0x00]
_0805C80A:
	add sp, #0x008
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C814: .4byte 0x0000057C
_0805C818: .4byte 0x03000DD0
_0805C81C: .4byte 0x083B79C4
_0805C820: .4byte 0x0000FFFF
	thumb_func_start sub_805C824
sub_805C824:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r8, r0
	adds r4, r1, #0x0
	ldrb r0, [r4, #0x00]
	str r0, [sp, #0x000]
	ldrb r1, [r4, #0x01]
	str r1, [sp, #0x004]
	ldrb r3, [r4, #0x02]
	mov r12, r3
	ldrb r0, [r4, #0x03]
	mov r9, r0
	movs r1, #0x04
	mov r10, r1
	movs r2, #0x00
	cmp r2, r9
	bcs _0805C894
_0805C84E:
	ldr r3, [sp, #0x004]
	adds r1, r3, r2
	mov r3, r8
	ldrh r0, [r3, #0x26]
	muls r0, r1
	ldr r1, [sp, #0x000]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r3, #0x00
	adds r7, r2, #0x1
	cmp r3, r12
	bcs _0805C88C
	mov r5, r8
	adds r5, #0x9C
_0805C86C:
	ldr r2, [r5, #0x00]
	adds r0, r6, r3
	adds r2, r2, r0
	mov r1, r10
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	adds r1, r4, r1
	ldrb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r12
	bcc _0805C86C
_0805C88C:
	lsls r0, r7, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r9
	bcc _0805C84E
_0805C894:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805C8A4
sub_805C8A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0805C900 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805C8F6
	ldr r1, _0805C904 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r6, #0x00
_0805C8C2:
	adds r4, r6, #0x0
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _0805C8DE
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_805B618
_0805C8DE:
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrb r1, [r0, #0x13]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805C8C2
_0805C8F6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805C900: .4byte 0x03000DD0
_0805C904: .4byte 0x083B7108
	thumb_func_start sub_805C908
sub_805C908:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0805C964 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805C95A
	ldr r1, _0805C968 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r6, #0x00
_0805C926:
	adds r4, r6, #0x0
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x10]
	lsls r0, r0, #0x09
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _0805C942
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_805B618
_0805C942:
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrb r1, [r0, #0x13]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805C926
_0805C95A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805C964: .4byte 0x03000DD0
_0805C968: .4byte 0x083B7108
	.byte 0x70, 0xB5, 0x1E, 0x1C, 0x12, 0x04, 0x89, 0x04, 0x0D, 0x0C, 0x00, 0x23, 0x92, 0x0B, 0x93, 0x42
	.byte 0x0E, 0xDA, 0x04, 0x1C, 0xA8, 0x34, 0xE9, 0x18, 0x20, 0x68, 0x49, 0x00, 0x09, 0x18, 0x58, 0x00
	.byte 0x80, 0x19, 0x00, 0x88, 0x08, 0x80, 0x58, 0x1C, 0x00, 0x04, 0x03, 0x0C, 0x93, 0x42, 0xF2, 0xDB
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_805C9A4
sub_805C9A4:
	push {r4, lr}
	add sp, #-0x004
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x10
	ldr r4, _0805C9D4 @ =0x08940C9C
	lsrs r3, r3, #0x0E
	adds r3, r3, r4
	ldr r0, [r3, #0x00]
	adds r0, r0, r4
	lsrs r1, r1, #0x0B
	ldr r3, _0805C9D8 @ =0x06004000
	adds r1, r1, r3
	lsrs r2, r2, #0x13
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C9D4: .4byte 0x08940C9C
_0805C9D8: .4byte 0x06004000
	thumb_func_start sub_805C9DC
sub_805C9DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x008]
	ldrb r7, [r0, #0x0A]
	cmp r7, #0x00
	beq _0805C9FA
	movs r0, #0x00
	b _0805CB10
_0805C9FA:
	movs r6, #0x80
	lsls r6, r6, #0x02
	ldr r2, _0805CB20 @ =0x081E2830
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	adds r1, r0, #0x0
	mov r0, r8
	str r1, [r0, #0x04]
	ldr r4, _0805CB24 @ =0x083A7894
	ldr r2, [sp, #0x008]
	lsls r5, r2, #0x04
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x004]
	ldr r2, _0805CB28 @ =0x01000080
	add r0, sp, #0x004
	bl CpuFastSet
	mov r1, r8
	ldr r0, [r1, #0x04]
	ldr r1, _0805CB2C @ =0x06003E00
	movs r2, #0x02
	str r2, [sp, #0x000]
	adds r2, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	movs r0, #0xA0
	lsls r0, r0, #0x03
	ldr r2, _0805CB30 @ =0x081E2838
	movs r1, #0x01
	movs r3, #0x00
	bl __vn__FUliPcUc
	adds r1, r0, #0x0
	mov r2, r8
	str r1, [r2, #0x00]
	str r7, [sp, #0x004]
	ldr r2, _0805CB34 @ =0x01000140
	add r0, sp, #0x004
	bl CpuFastSet
	adds r4, #0x04
	adds r5, r5, r4
	ldr r5, [r5, #0x00]
	mov r10, r5
	movs r1, #0x00
	mov r7, r8
	ldr r6, [r7, #0x00]
_0805CA62:
	movs r4, #0x00
	lsls r0, r1, #0x04
	adds r2, r1, #0x1
	mov r9, r2
	lsls r7, r1, #0x05
	str r7, [sp, #0x00C]
	subs r0, r0, r1
	mov r12, r0
	movs r2, #0x13
	subs r0, r2, r1
	lsls r5, r0, #0x05
_0805CA78:
	ldr r7, [sp, #0x00C]
	adds r1, r7, r4
	lsls r1, r1, #0x01
	adds r1, r1, r6
	mov r0, r12
	adds r3, r0, r4
	add r3, r10
	ldr r2, _0805CB38 @ =0x0000F1F0
	adds r0, r2, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	subs r2, #0x1D
	ldr r0, [sp, #0x00C]
	subs r1, r0, r2
	lsls r1, r1, #0x01
	adds r1, r1, r6
	ldr r7, _0805CB3C @ =0x0000F5F0
	adds r0, r7, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	adds r1, r5, r4
	lsls r1, r1, #0x01
	adds r1, r1, r6
	ldr r7, _0805CB40 @ =0x0000F9F0
	adds r0, r7, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	subs r2, r5, r2
	lsls r2, r2, #0x01
	adds r2, r2, r6
	ldr r1, _0805CB44 @ =0x0000FDF0
	adds r0, r1, #0x0
	ldrb r3, [r3, #0x00]
	adds r0, r0, r3
	strh r0, [r2, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x0E
	bls _0805CA78
	mov r2, r9
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x09
	bls _0805CA62
	ldr r1, _0805CB48 @ =0x06003000
	movs r2, #0xA0
	lsls r2, r2, #0x03
	movs r0, #0x02
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	ldr r1, _0805CB4C @ =0x02000008
	movs r7, #0xC0
	lsls r7, r7, #0x03
	adds r0, r7, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _0805CB50 @ =0x02000010
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	movs r0, #0x00
	mov r1, sp
	ldrb r2, [r1, #0x08]
	mov r1, r8
	strb r2, [r1, #0x0B]
	strh r0, [r1, #0x08]
	movs r0, #0x01
	strb r0, [r1, #0x0A]
_0805CB10:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0805CB20: .4byte 0x081E2830
_0805CB24: .4byte 0x083A7894
_0805CB28: .4byte 0x01000080
_0805CB2C: .4byte 0x06003E00
_0805CB30: .4byte 0x081E2838
_0805CB34: .4byte 0x01000140
_0805CB38: .4byte 0x0000F1F0
_0805CB3C: .4byte 0x0000F5F0
_0805CB40: .4byte 0x0000F9F0
_0805CB44: .4byte 0x0000FDF0
_0805CB48: .4byte 0x06003000
_0805CB4C: .4byte 0x02000008
_0805CB50: .4byte 0x02000010
	thumb_func_start sub_805CB54
sub_805CB54:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldrb r0, [r4, #0x0A]
	cmp r0, #0x00
	bne _0805CB6A
_0805CB66:
	movs r0, #0x00
	b _0805CC6E
_0805CB6A:
	ldr r1, _0805CBC0 @ =0x083A7894
	ldrb r0, [r4, #0x0B]
	lsls r0, r0, #0x04
	adds r1, #0x08
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0x00
	ldr r6, [r4, #0x04]
_0805CB7C:
	ldrh r0, [r4, #0x08]
	adds r2, r1, #0x1
	mov r8, r2
	cmp r1, r0
	bhi _0805CC02
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x0F
	bls _0805CB92
	movs r7, #0x0F
_0805CB92:
	movs r3, #0x00
	movs r0, #0x03
	mov r12, r0
	lsls r5, r1, #0x05
_0805CB9A:
	lsrs r0, r3, #0x02
	lsls r0, r0, #0x04
	adds r0, r0, r7
	add r0, r9
	ldrb r2, [r0, #0x00]
	mov r0, r12
	bics r0, r3
	lsls r0, r0, #0x01
	asrs r2, r0
	mov r1, r12
	ands r2, r1
	cmp r2, #0x01
	beq _0805CBD8
	cmp r2, #0x01
	bgt _0805CBC4
	cmp r2, #0x00
	beq _0805CBCE
	b _0805CBF6
	.byte 0x00, 0x00
_0805CBC0: .4byte 0x083A7894
_0805CBC4:
	cmp r2, #0x02
	beq _0805CBE2
	cmp r2, #0x03
	beq _0805CBEC
	b _0805CBF6
_0805CBCE:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	strb r2, [r0, #0x00]
	b _0805CBF6
_0805CBD8:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x90
	b _0805CBF4
_0805CBE2:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x09
	b _0805CBF4
_0805CBEC:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x99
_0805CBF4:
	strb r1, [r0, #0x00]
_0805CBF6:
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r6, [r4, #0x04]
	cmp r3, #0x1F
	bls _0805CB9A
_0805CC02:
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x0F
	bls _0805CB7C
	ldr r1, _0805CC5C @ =0x06003E00
	movs r2, #0x80
	lsls r2, r2, #0x02
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	ldrh r0, [r4, #0x08]
	adds r0, #0x01
	strh r0, [r4, #0x08]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0805CC6C
	movs r0, #0x00
	strb r0, [r4, #0x0A]
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0805CC3A
	bl __builtin_vec_delete
_0805CC3A:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0805CC44
	bl __builtin_vec_delete
_0805CC44:
	ldr r0, _0805CC60 @ =0x083A7894
	ldrb r1, [r4, #0x0B]
	lsls r1, r1, #0x04
	adds r1, r1, r0
	ldrb r0, [r1, #0x0C]
	cmp r0, #0x00
	beq _0805CB66
	ldr r1, _0805CC64 @ =0x02000008
	ldr r2, _0805CC68 @ =0x00001508
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	b _0805CB66
_0805CC5C: .4byte 0x06003E00
_0805CC60: .4byte 0x083A7894
_0805CC64: .4byte 0x02000008
_0805CC68: .4byte 0x00001508
_0805CC6C:
	movs r0, #0x01
_0805CC6E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x00, 0x20, 0xA0, 0x72, 0x60, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xBC, 0xF7
	.byte 0x87, 0xF8, 0x20, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xBC, 0xF7, 0x82, 0xF8, 0x06, 0x48, 0xE1, 0x7A
	.byte 0x09, 0x01, 0x09, 0x18, 0x08, 0x7B, 0x00, 0x28, 0x03, 0xD0, 0x04, 0x49, 0x04, 0x4A, 0x10, 0x1C
	.byte 0x08, 0x80, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x94, 0x78, 0x3A, 0x08, 0x08, 0x00, 0x00, 0x02
	.byte 0x08, 0x15, 0x00, 0x00
	thumb_func_start sub_805CCC0
sub_805CCC0:
	push {lr}
	adds r2, r0, #0x0
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0805CCD2
	adds r0, r2, #0x0
	bl __builtin_delete
_0805CCD2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805CCD8
sub_805CCD8:
	movs r1, #0x00
	strb r1, [r0, #0x0A]
	bx lr
	.byte 0x00, 0x00
