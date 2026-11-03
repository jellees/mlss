	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start method9__11FieldObject
method9__11FieldObject:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, _080410C4 @ =0x02001000
	ands r0, r1
	cmp r0, r1
	beq _08040FC0
	b _08041354
_08040FC0:
	ldr r2, _080410C8 @ =0x00000216
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08040FD0
	b _08041354
_08040FD0:
	ldr r3, _080410CC @ =0x00000217
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08041000
	ldr r1, [r6, #0x0C]
	ldr r0, [r6, #0x34]
	cmp r1, r0
	bne _08041000
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x38]
	cmp r1, r0
	bne _08041000
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x3C]
	cmp r1, r0
	bne _08041000
	ldr r1, [r6, #0x18]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	bne _08041000
	b _08041354
_08041000:
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x08
	lsls r3, r0, #0x10
	lsrs r7, r3, #0x10
	str r7, [sp, #0x000]
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	lsrs r4, r0, #0x08
	movs r2, #0x84
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	adds r7, r6, #0x0
	adds r7, #0x26
	str r7, [sp, #0x004]
	cmp r0, #0x00
	beq _08041110
	ldr r1, [r6, #0x0C]
	cmp r1, #0x00
	bge _08041038
	adds r1, #0xFF
_08041038:
	asrs r1, r1, #0x08
	mov r10, r1
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	bge _08041044
	adds r0, #0xFF
_08041044:
	asrs r2, r0, #0x08
	mov r1, r10
	subs r1, #0x01
	lsrs r0, r3, #0x11
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08041054
	adds r0, #0x0F
_08041054:
	asrs r0, r0, #0x04
	mov r8, r0
	subs r0, r2, r4
	cmp r0, #0x00
	bge _08041060
	adds r0, #0x0F
_08041060:
	asrs r0, r0, #0x04
	mov r9, r0
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0804106C
	adds r0, #0x0F
_0804106C:
	asrs r4, r0, #0x04
	cmp r4, r9
	blt _08041110
_08041072:
	ldr r1, [sp, #0x000]
	lsrs r0, r1, #0x01
	mov r2, r10
	subs r1, r2, r0
	cmp r1, #0x00
	bge _08041080
	adds r1, #0x0F
_08041080:
	asrs r5, r1, #0x04
	cmp r5, r8
	bgt _0804110A
	movs r7, #0x03
_08041088:
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldrb r1, [r2, #0x03]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08041104
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r4, [r0, #0x00]
	adds r5, r4, #0x0
	ldr r0, [sp, #0x004]
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080410D0
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x04
	b _080410D4
_080410C4: .4byte 0x02001000
_080410C8: .4byte 0x00000216
_080410CC: .4byte 0x00000217
_080410D0:
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
_080410D4:
	lsrs r1, r0, #0x1E
	movs r2, #0x8F
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strb r1, [r0, #0x00]
	adds r2, r7, #0x0
	ands r2, r1
	lsls r3, r2, #0x02
	ldrb r0, [r5, #0x1F]
	movs r6, #0x0D
	negs r6, r6
	adds r1, r6, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r5, #0x1F]
	ands r2, r7
	ldrb r0, [r4, #0x1F]
	movs r7, #0x04
	negs r7, r7
	adds r1, r7, #0x0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x1F]
	b _08041354
_08041104:
	adds r5, #0x01
	cmp r5, r8
	ble _08041088
_0804110A:
	subs r4, #0x01
	cmp r4, r9
	bge _08041072
_08041110:
	movs r1, #0x8C
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _08041128
	adds r5, r0, #0x0
	movs r2, #0x8D
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r4, [r0, #0x00]
	b _0804112C
_08041128:
	ldr r5, [r6, #0x0C]
	ldr r4, [r6, #0x10]
_0804112C:
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08041136
	ldr r3, _08041184 @ =0x00000FFF
	adds r0, r5, r3
_08041136:
	asrs r5, r0, #0x0C
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08041142
	ldr r7, _08041184 @ =0x00000FFF
	adds r0, r4, r7
_08041142:
	asrs r4, r0, #0x0C
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r4, r4, #0x10
	mov r9, r4
	mov r2, r9
	asrs r2, r2, #0x10
	mov r10, r2
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldr r3, [sp, #0x004]
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08041188
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x04
	lsrs r0, r0, #0x1E
	str r0, [sp, #0x00C]
	adds r3, r0, #0x0
	movs r4, #0x8F
	lsls r4, r4, #0x02
	adds r0, r6, r4
	mov r7, sp
	ldrb r7, [r7, #0x0C]
	strb r7, [r0, #0x00]
	b _080412EE
_08041184: .4byte 0x00000FFF
_08041188:
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r0, r0, #0x1E
	str r0, [sp, #0x00C]
	adds r3, r0, #0x0
	ldr r0, [sp, #0x000]
	lsrs r2, r0, #0x01
	lsls r0, r2, #0x08
	ldr r1, [r6, #0x0C]
	mov r12, r1
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080411A6
	ldr r4, _08041200 @ =0x00000FFF
	adds r1, r1, r4
_080411A6:
	asrs r4, r1, #0x0C
	subs r0, r2, #0x1
	lsls r0, r0, #0x08
	add r0, r12
	cmp r0, #0x00
	bge _080411B6
	ldr r7, _08041200 @ =0x00000FFF
	adds r0, r0, r7
_080411B6:
	asrs r0, r0, #0x0C
	mov r8, r0
	cmp r4, r8
	bgt _08041288
	mov r1, r8
	adds r1, #0x01
	subs r2, r1, r4
	movs r0, #0x01
	ands r2, r0
	cmp r4, r1
	bge _080411D0
	cmp r2, #0x00
	beq _08041204
_080411D0:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r2, r10
	str r3, [sp, #0x008]
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldrb r1, [r2, #0x02]
	movs r0, #0xF0
	ands r0, r1
	ldr r3, [sp, #0x008]
	cmp r0, #0x00
	bne _08041282
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r0, r0, #0x1E
	ldr r7, [sp, #0x00C]
	cmp r0, r7
	bls _08041282
	b _08041272
_08041200: .4byte 0x00000FFF
_08041204:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r7, r9
	asrs r2, r7, #0x10
	str r3, [sp, #0x008]
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldrb r1, [r2, #0x02]
	movs r0, #0xF0
	ands r0, r1
	ldr r3, [sp, #0x008]
	cmp r0, #0x00
	bne _08041242
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r0, r0, #0x1E
	cmp r0, r3
	bls _08041242
	str r0, [sp, #0x00C]
	adds r3, r0, #0x0
	adds r5, r4, #0x0
	ldrb r1, [r2, #0x03]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08041288
_08041242:
	adds r4, #0x01
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r7, r9
	asrs r2, r7, #0x10
	str r3, [sp, #0x008]
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldrb r1, [r2, #0x02]
	movs r0, #0xF0
	ands r0, r1
	ldr r3, [sp, #0x008]
	cmp r0, #0x00
	bne _08041282
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r0, r0, #0x1E
	cmp r0, r3
	bls _08041282
_08041272:
	str r0, [sp, #0x00C]
	adds r3, r0, #0x0
	adds r5, r4, #0x0
	ldrb r1, [r2, #0x03]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08041288
_08041282:
	adds r4, #0x01
	cmp r4, r8
	ble _08041204
_08041288:
	movs r1, #0x8F
	lsls r1, r1, #0x02
	adds r0, r6, r1
	mov r2, sp
	ldrb r2, [r2, #0x0C]
	strb r2, [r0, #0x00]
	ldr r1, [r6, #0x10]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080412A0
	ldr r4, _080412B8 @ =0x00000FFF
	adds r0, r1, r4
_080412A0:
	asrs r4, r0, #0x0C
	ldr r0, [r6, #0x18]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080412AE
	ldr r7, _080412B8 @ =0x00000FFF
	adds r0, r0, r7
_080412AE:
	asrs r0, r0, #0x0C
	subs r0, #0x01
	mov r8, r0
	lsls r5, r5, #0x10
	b _080412C4
_080412B8: .4byte 0x00000FFF
_080412BC:
	ldr r1, [sp, #0x00C]
	cmp r1, r0
	ble _080412C4
	str r0, [sp, #0x00C]
_080412C4:
	subs r4, #0x01
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	asrs r1, r5, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0x008]
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r0, r0, #0x1E
	ldr r3, [sp, #0x008]
	cmp r3, r0
	ble _080412EA
	adds r3, r0, #0x0
_080412EA:
	cmp r4, r8
	bgt _080412BC
_080412EE:
	movs r7, #0xA5
	lsls r7, r7, #0x02
	adds r4, r6, r7
	ldr r5, [r4, #0x00]
	movs r1, #0x02
	cmp r3, #0x00
	ble _080412FE
	adds r1, r3, #0x0
_080412FE:
	movs r0, #0x03
	mov r8, r0
	ands r0, r1
	ldrb r2, [r5, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1F]
	ldr r3, [r4, #0x00]
	movs r0, #0x02
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	ble _0804131E
	mov r2, sp
	ldrb r0, [r2, #0x0C]
_0804131E:
	mov r1, r8
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	movs r3, #0x8F
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1C
	lsrs r1, r0, #0x1E
	ldrb r0, [r2, #0x00]
	cmp r0, r1
	bcs _08041346
	strb r1, [r2, #0x00]
_08041346:
	ldr r4, _08041364 @ =0x00000217
	adds r2, r6, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08041354:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08041364: .4byte 0x00000217
