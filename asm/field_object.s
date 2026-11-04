	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8047DC8__11FieldObjectUc
sub_8047DC8__11FieldObjectUc:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r1, #0x9B
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _08047DF4 @ =0x0000FFFF
	cmp r1, r0
	beq _08047E3A
	movs r3, #0x00
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrh r2, [r0, #0x14]
	movs r1, #0x01
	adds r0, r2, #0x0
	b _08047DFE
	.byte 0x00, 0x00
_08047DF4: .4byte 0x0000FFFF
_08047DF8:
	adds r3, #0x01
	adds r0, r2, #0x0
	asrs r0, r3
_08047DFE:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08047DF8
	movs r1, #0xCD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x9B
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldrh r2, [r1, #0x00]
	adds r3, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _08047E44 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r1, r5, #0x0
	bl sub_8114C1C
	ldr r2, _08047E48 @ =0x0000026E
	adds r1, r4, r2
	strb r0, [r1, #0x00]
	ldr r0, _08047E4C @ =0x00000216
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_08047E3A:
	add sp, #0x008
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047E44: .4byte 0x0000FFFF
_08047E48: .4byte 0x0000026E
_08047E4C: .4byte 0x00000216
	thumb_func_start sub_8047E50
sub_8047E50:
	push {lr}
	movs r3, #0x9B
	lsls r3, r3, #0x02
	adds r2, r0, r3
	strh r1, [r2, #0x00]
	ldr r1, _08047E74 @ =0x0000020E
	adds r3, r0, r1
	ldrb r1, [r3, #0x00]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r2, _08047E78 @ =0x0000026E
	adds r1, r0, r2
	ldrb r1, [r1, #0x00]
	bl sub_8047DC8__11FieldObjectUc
	pop {r0}
	bx r0
_08047E74: .4byte 0x0000020E
_08047E78: .4byte 0x0000026E
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x69, 0x90, 0x6B, 0x81, 0x42, 0x06, 0xD1, 0xD1, 0x68, 0x50, 0x6B
	.byte 0x81, 0x42, 0x02, 0xD1, 0x01, 0x20, 0x40, 0x42, 0x0D, 0xE0, 0x90, 0x6B, 0x11, 0x69, 0x40, 0x1A
	.byte 0x00, 0x04, 0x00, 0x14, 0xD1, 0x68, 0x52, 0x6B, 0x89, 0x1A, 0x09, 0x04, 0x09, 0x14, 0x92, 0xF1
	.byte 0xF1, 0xFB, 0x00, 0x04, 0x00, 0x0C, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	thumb_func_start sub_8047EB8
sub_8047EB8:
	mov r12, r0
	movs r0, #0x97
	lsls r0, r0, #0x02
	add r0, r12
	movs r2, #0x01
	negs r2, r2
	str r2, [r0, #0x00]
	ldr r3, _08047EF4 @ =0x00000213
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0x94
	lsls r0, r0, #0x02
	add r0, r12
	str r2, [r0, #0x00]
	str r2, [r1, #0x00]
	movs r0, #0x90
	lsls r0, r0, #0x02
	add r0, r12
	ldrh r1, [r0, #0x00]
	ldr r0, _08047EF8 @ =0x0000023E
	add r0, r12
	strh r1, [r0, #0x00]
	bx lr
_08047EF4: .4byte 0x00000213
_08047EF8: .4byte 0x0000023E
	thumb_func_start sub_8047EFC
sub_8047EFC:
	push {r4, r5, lr}
	mov r12, r0
	ldr r5, [sp, #0x00C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08047F54 @ =0x0000023E
	add r0, r12
	movs r4, #0x00
	strh r1, [r0, #0x00]
	movs r0, #0x98
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	ldr r0, _08047F58 @ =0x00000262
	add r0, r12
	strh r2, [r0, #0x00]
	movs r0, #0x99
	lsls r0, r0, #0x02
	add r0, r12
	strh r3, [r0, #0x00]
	ldr r0, _08047F5C @ =0x00000266
	add r0, r12
	strh r5, [r0, #0x00]
	movs r0, #0x95
	lsls r0, r0, #0x02
	add r0, r12
	str r4, [r0, #0x00]
	movs r0, #0x97
	lsls r0, r0, #0x02
	add r0, r12
	movs r1, #0x01
	negs r1, r1
	str r1, [r0, #0x00]
	movs r0, #0x93
	lsls r0, r0, #0x02
	add r0, r12
	str r1, [r0, #0x00]
	movs r0, #0x94
	lsls r0, r0, #0x02
	add r0, r12
	str r1, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08047F54: .4byte 0x0000023E
_08047F58: .4byte 0x00000262
_08047F5C: .4byte 0x00000266
	thumb_func_start sub_8047F60
sub_8047F60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [sp, #0x00C]
	cmp r0, #0x00
	bne _08047F72
	str r1, [r4, #0x0C]
	str r2, [r4, #0x10]
	str r3, [r4, #0x18]
	b _08047F88
_08047F72:
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r1, r1, r3
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
_08047F88:
	movs r1, #0x00
	str r1, [r4, #0x14]
	ldr r0, [sp, #0x008]
	cmp r0, #0x00
	beq _08047FC4
	ldr r0, [r4, #0x0C]
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x38]
	str r1, [r4, #0x3C]
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x40]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08047FC4
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x78
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x04]
	movs r1, #0x01
	bl _call_via_r2
_08047FC4:
	ldr r1, _08047FD8 @ =0x00000217
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047FD8: .4byte 0x00000217
	thumb_func_start sub_8047FDC
sub_8047FDC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r1, _08048034 @ =0x00000222
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0804802E
	ldr r0, _08048038 @ =0x0000020F
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r0, [r5, #0x00]
	ldrb r4, [r0, #0x12]
	lsls r4, r4, #0x1D
	lsrs r4, r4, #0x1E
	bl sub_8021ED8
	ldr r2, [r5, #0x00]
	lsls r4, r4, #0x01
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x12]
	ldr r1, _0804803C @ =0x0000020E
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804802E
	adds r0, r6, #0x0
	movs r1, #0xFF
	bl sub_8047DC8__11FieldObjectUc
_0804802E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08048034: .4byte 0x00000222
_08048038: .4byte 0x0000020F
_0804803C: .4byte 0x0000020E
	thumb_func_start sub_8048040
sub_8048040:
	push {lr}
	adds r3, r0, #0x0
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, _08048060 @ =0x08CDBDE8
	str r0, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804805C
	adds r0, r3, #0x0
	bl __builtin_delete
_0804805C:
	pop {r0}
	bx r0
_08048060: .4byte 0x08CDBDE8
