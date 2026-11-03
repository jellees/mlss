	.include "asm/macros.inc"

	.syntax unified

	.section .rodata
	.align 2, 0

	.byte 0x46, 0x50, 0x43, 0x00, 0x46, 0x43, 0x48, 0x52, 0x00, 0x00, 0x00, 0x00, 0x46, 0x42, 0x52, 0x44
	.byte 0x00, 0x00, 0x00, 0x00, 0x46, 0x4D, 0x4F, 0x4E, 0x00, 0x00, 0x00, 0x00, 0x46, 0x42, 0x52, 0x4C
	.byte 0x00, 0x00, 0x00, 0x00, 0x46, 0x52, 0x43, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x46, 0x53, 0x50, 0x4C
	.byte 0x00, 0x00, 0x00, 0x00, 0x46, 0x42, 0x4C, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x46, 0x50, 0x53, 0x42
	.byte 0x00, 0x00, 0x00, 0x00

	.text

	thumb_func_start make_field_objects_80267C0__12FieldManageri
make_field_objects_80267C0__12FieldManageri: @ 080267C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	mov r8, r1
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08026860 @ =0x0000010B
	adds r4, r5, r1
	adds r1, r4, #0x0
	bl get_field_object_count
	movs r2, #0x87
	lsls r2, r2, #0x01
	adds r0, r5, r2
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x03
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x07
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	subs r2, #0x05
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	subs r2, #0x03
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x03
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	subs r2, #0x09
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	movs r7, #0x00
	ldrb r4, [r4, #0x00]
	cmp r7, r4
	blt _0802683C
	b _08026B84
_0802683C:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	bl get_field_object_type
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x07
	bls _08026854
	b _08026B24
_08026854:
	lsls r0, r0, #0x02
	ldr r1, _08026864 @ =0x08026868
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08026860: .4byte 0x0000010B
_08026864: .4byte _08026868
_08026868:
	.4byte _08026888
	.4byte _08026900
	.4byte _0802693C
	.4byte _08026978
	.4byte _080269C8
	.4byte _08026A04
	.4byte _08026AA0
	.4byte _08026ADC
_08026888:
	movs r0, #0xE3
	lsls r0, r0, #0x02
	ldr r2, _080268C4 @ =0x081E2620
	movs r1, #0x01
	movs r3, #0x01
	bl __nw__FUliPcUc
	mov r1, r8
	adds r2, r7, #0x0
	bl __20FieldPlayerCharacterii
	adds r4, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xFB
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080268C8
	movs r2, #0x80
	lsls r2, r2, #0x01
	movs r0, #0x0D
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0xD2
	bl sub_8047EFC
	b _080268DA
_080268C4: .4byte 0x081E2620
_080268C8:
	movs r2, #0x80
	lsls r2, r2, #0x02
	ldr r3, _080268FC @ =0x0000052C
	movs r0, #0x75
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8047EFC
_080268DA:
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r1, r4, r2
	lsls r0, r7, #0x01
	adds r0, r0, r7
	lsls r0, r0, #0x03
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r5, r0
	str r0, [r1, #0x00]
	lsls r1, r7, #0x02
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	str r4, [r0, #0x00]
	b _08026B36
_080268FC: .4byte 0x0000052C
_08026900:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	ldr r2, _08026934 @ =0x081E2624
	movs r1, #0x01
	movs r3, #0x01
	bl __nw__FUliPcUc
	mov r1, r8
	adds r2, r7, #0x0
	bl __11FieldObjectii
	lsls r2, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r0, #0x87
	lsls r0, r0, #0x01
	adds r3, r5, r0
	ldrb r0, [r3, #0x00]
	adds r1, r2, #0x0
	cmp r0, #0x00
	bne _08026930
	strb r7, [r3, #0x00]
_08026930:
	ldr r2, _08026938 @ =0x0000010F
	b _08026B0E
_08026934: .4byte 0x081E2624
_08026938: .4byte 0x0000010F
_0802693C:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	ldr r2, _08026970 @ =0x081E262C
	movs r1, #0x01
	movs r3, #0x01
	bl __nw__FUliPcUc
	mov r1, r8
	adds r2, r7, #0x0
	bl __11FieldObjectii
	lsls r2, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r3, r5, r0
	ldrb r0, [r3, #0x00]
	adds r1, r2, #0x0
	cmp r0, #0x00
	bne _0802696C
	strb r7, [r3, #0x00]
_0802696C:
	ldr r2, _08026974 @ =0x00000111
	b _08026B0E
_08026970: .4byte 0x081E262C
_08026974: .4byte 0x00000111
_08026978:
	movs r0, #0xD2
	lsls r0, r0, #0x02
	ldr r2, _080269C0 @ =0x081E2634
	movs r1, #0x01
	movs r3, #0x01
	bl __nw__FUliPcUc
	mov r1, r8
	adds r2, r7, #0x0
	bl __20FieldObjectSubclass1ii
	lsls r2, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r2, #0x0
	cmp r0, #0x00
	beq _080269AA
	adds r0, #0x54
	strb r7, [r0, #0x00]
_080269AA:
	movs r2, #0x89
	lsls r2, r2, #0x01
	adds r3, r5, r2
	ldrb r0, [r3, #0x00]
	cmp r0, #0x00
	bne _080269B8
	strb r7, [r3, #0x00]
_080269B8:
	ldr r0, _080269C4 @ =0x00000113
	adds r3, r5, r0
	b _08026B10
	.byte 0x00, 0x00
_080269C0: .4byte 0x081E2634
_080269C4: .4byte 0x00000113
_080269C8:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	ldr r2, _080269FC @ =0x081E263C
	movs r1, #0x01
	movs r3, #0x01
	bl __nw__FUliPcUc
	mov r1, r8
	adds r2, r7, #0x0
	bl __11FieldObjectii
	lsls r2, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r3, r5, r1
	ldrb r0, [r3, #0x00]
	adds r1, r2, #0x0
	cmp r0, #0x00
	bne _080269F8
	strb r7, [r3, #0x00]
_080269F8:
	ldr r2, _08026A00 @ =0x00000115
	b _08026B0E
_080269FC: .4byte 0x081E263C
_08026A00: .4byte 0x00000115
_08026A04:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	ldr r2, _08026A90 @ =0x081E2644
	movs r1, #0x01
	movs r3, #0x01
	bl __nw__FUliPcUc
	mov r1, r8
	adds r2, r7, #0x0
	bl __11FieldObjectii
	adds r4, r0, #0x0
	ldr r0, _08026A94 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x8B
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	lsls r2, r2, #0x0A
	lsrs r2, r2, #0x14
	movs r1, #0x8B
	lsls r1, r1, #0x05
	adds r2, r2, r1
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08026A64
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08026A98 @ =0x0000020F
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08026A64:
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	lsls r1, r7, #0x02
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	str r4, [r0, #0x00]
	movs r2, #0x8B
	lsls r2, r2, #0x01
	adds r3, r5, r2
	ldrb r0, [r3, #0x00]
	cmp r0, #0x00
	bne _08026A8A
	strb r7, [r3, #0x00]
_08026A8A:
	ldr r0, _08026A9C @ =0x00000117
	adds r3, r5, r0
	b _08026B10
_08026A90: .4byte 0x081E2644
_08026A94: .4byte 0x03000FC0
_08026A98: .4byte 0x0000020F
_08026A9C: .4byte 0x00000117
_08026AA0:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	ldr r2, _08026AD4 @ =0x081E264C
	movs r1, #0x01
	movs r3, #0x01
	bl __nw__FUliPcUc
	mov r1, r8
	adds r2, r7, #0x0
	bl __20FieldObjectSubclass2ii
	lsls r2, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r1, #0x8C
	lsls r1, r1, #0x01
	adds r3, r5, r1
	ldrb r0, [r3, #0x00]
	adds r1, r2, #0x0
	cmp r0, #0x00
	bne _08026AD0
	strb r7, [r3, #0x00]
_08026AD0:
	ldr r2, _08026AD8 @ =0x00000119
	b _08026B0E
_08026AD4: .4byte 0x081E264C
_08026AD8: .4byte 0x00000119
_08026ADC:
	movs r0, #0xD4
	lsls r0, r0, #0x02
	ldr r2, _08026B1C @ =0x081E2654
	movs r1, #0x01
	movs r3, #0x01
	bl __nw__FUliPcUc
	mov r1, r8
	adds r2, r7, #0x0
	bl __20FieldObjectSubclass3ii
	lsls r2, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r0, #0x8D
	lsls r0, r0, #0x01
	adds r3, r5, r0
	ldrb r0, [r3, #0x00]
	adds r1, r2, #0x0
	cmp r0, #0x00
	bne _08026B0C
	strb r7, [r3, #0x00]
_08026B0C:
	ldr r2, _08026B20 @ =0x0000011B
_08026B0E:
	adds r3, r5, r2
_08026B10:
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	strb r0, [r3, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xFB
	b _08026B36
_08026B1C: .4byte 0x081E2654
_08026B20: .4byte 0x0000011B
_08026B24:
	lsls r0, r7, #0x02
	adds r1, r5, #0x0
	adds r1, #0x28
	adds r1, r1, r0
	movs r2, #0x00
	str r2, [r1, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xFB
	adds r1, r0, #0x0
_08026B36:
	adds r4, r5, #0x0
	adds r4, #0x28
	adds r4, r4, r1
	ldr r2, [r4, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r3, r2, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x10
	asrs r1, r0
	ldr r0, _08026C58 @ =0x00000239
	adds r2, r2, r0
	strb r1, [r2, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x54
	strb r7, [r0, #0x00]
	adds r7, #0x01
	ldr r1, _08026C5C @ =0x0000010B
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	cmp r7, r0
	bge _08026B84
	b _0802683C
_08026B84:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	movs r1, #0x04
	ands r1, r0
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, _08026C60 @ =0x00000352
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0x87
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08026BC4
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08026BC4
	movs r1, #0x89
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
_08026BC4:
	movs r2, #0x8E
	lsls r2, r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	ldr r0, _08026C64 @ =0x0000010F
	adds r2, r5, r0
	ldr r1, _08026C68 @ =0x00000111
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	ldrb r2, [r2, #0x00]
	adds r1, r1, r2
	ldr r2, _08026C6C @ =0x00000113
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _08026C70 @ =0x0000011D
	adds r2, r5, r1
	strb r0, [r2, #0x00]
	movs r6, #0x00
	adds r5, #0xA8
_08026BEC:
	movs r0, #0x4C
	movs r1, #0x01
	ldr r2, _08026C74 @ =0x081E265C
	movs r3, #0x01
	bl __nw__FUliPcUc
	adds r1, r6, #0x0
	bl __11FieldClass1i
	str r0, [r5, #0x00]
	adds r4, r6, #0x1
	movs r0, #0x4C
	movs r1, #0x01
	ldr r2, _08026C74 @ =0x081E265C
	movs r3, #0x01
	bl __nw__FUliPcUc
	adds r1, r4, #0x0
	bl __11FieldClass1i
	str r0, [r5, #0x04]
	adds r4, r6, #0x2
	movs r0, #0x4C
	movs r1, #0x01
	ldr r2, _08026C74 @ =0x081E265C
	movs r3, #0x01
	bl __nw__FUliPcUc
	adds r1, r4, #0x0
	bl __11FieldClass1i
	str r0, [r5, #0x08]
	adds r4, r6, #0x3
	movs r0, #0x4C
	movs r1, #0x01
	ldr r2, _08026C74 @ =0x081E265C
	movs r3, #0x01
	bl __nw__FUliPcUc
	adds r1, r4, #0x0
	bl __11FieldClass1i
	str r0, [r5, #0x0C]
	adds r5, #0x10
	adds r6, #0x04
	cmp r6, #0x07
	ble _08026BEC
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08026C58: .4byte 0x00000239
_08026C5C: .4byte 0x0000010B
_08026C60: .4byte 0x00000352
_08026C64: .4byte 0x0000010F
_08026C68: .4byte 0x00000111
_08026C6C: .4byte 0x00000113
_08026C70: .4byte 0x0000011D
_08026C74: .4byte 0x081E265C
