	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804B028__20FieldPlayerCharacterP11FieldObject
sub_804B028__20FieldPlayerCharacterP11FieldObject:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r12, r0
	adds r6, r1, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r2, [r0, #0x00]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _0804B04A
	b _0804B24A
_0804B04A:
	ldr r3, _0804B0A8 @ =0x00000216
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804B05A
	b _0804B24A
_0804B05A:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	bne _0804B064
	b _0804B24A
_0804B064:
	adds r3, #0x5C
	mov r4, r12
	adds r0, r4, r3
	ldrh r5, [r0, #0x00]
	ldr r2, _0804B0AC @ =0x00000276
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r3, r6, r3
	ldrh r4, [r3, #0x00]
	adds r2, r6, r2
	ldrh r2, [r2, #0x00]
	mov r10, r2
	adds r1, r6, r1
	ldrh r1, [r1, #0x00]
	str r1, [sp, #0x010]
	lsrs r0, r4, #0x01
	ldr r1, [r6, #0x0C]
	subs r3, r1, r0
	movs r0, #0xA1
	lsls r0, r0, #0x02
	add r0, r12
	ldr r2, [r0, #0x00]
	str r1, [sp, #0x008]
	cmp r3, r2
	bge _0804B0B0
	adds r0, r3, r4
	subs r4, r0, r2
	b _0804B0B4
_0804B0A8: .4byte 0x00000216
_0804B0AC: .4byte 0x00000276
_0804B0B0:
	adds r0, r2, r5
	subs r4, r0, r3
_0804B0B4:
	cmp r4, #0x00
	bge _0804B0BA
	b _0804B24A
_0804B0BA:
	movs r5, #0x9C
	lsls r5, r5, #0x02
	adds r0, r6, r5
	movs r7, #0x00
	ldsh r1, [r0, r7]
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0xA2
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	cmp r8, r1
	ble _0804B0E0
	mov r2, r8
	mov r3, r10
	subs r0, r2, r3
	subs r3, r1, r0
	b _0804B0E8
_0804B0E0:
	mov r5, r9
	subs r0, r1, r5
	mov r7, r8
	subs r3, r7, r0
_0804B0E8:
	cmp r3, #0x00
	bge _0804B0EE
	b _0804B24A
_0804B0EE:
	cmp r3, #0x00
	bne _0804B0F8
	cmp r4, #0x00
	bne _0804B0F8
	b _0804B24A
_0804B0F8:
	ldr r2, [r6, #0x14]
	ldr r1, [r6, #0x18]
	cmp r1, #0x00
	bgt _0804B10A
	cmp r1, #0x00
	bge _0804B10C
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0804B10C
_0804B10A:
	adds r2, r2, r1
_0804B10C:
	movs r0, #0xA3
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	cmp r2, r1
	bgt _0804B120
	ldr r5, [sp, #0x010]
	adds r0, r2, r5
	subs r0, r0, r1
	b _0804B126
_0804B120:
	ldr r7, [sp, #0x000]
	adds r0, r1, r7
	subs r0, r0, r2
_0804B126:
	cmp r0, #0x00
	bge _0804B12C
	b _0804B24A
_0804B12C:
	movs r5, #0x00
	movs r0, #0x00
	str r0, [sp, #0x004]
	mov r0, r12
	adds r0, #0x29
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0x54
	str r0, [sp, #0x00C]
	ldrb r7, [r0, #0x00]
	cmp r1, r7
	beq _0804B16C
	cmp r4, #0x00
	ble _0804B170
	cmp r3, #0x00
	ble _0804B170
	mov r1, r12
	ldr r0, [r1, #0x3C]
	ldr r1, [r1, #0x40]
	adds r1, r0, r1
	ldr r3, [sp, #0x000]
	adds r0, r1, r3
	cmp r0, r2
	bgt _0804B164
	movs r4, #0x01
	str r4, [sp, #0x004]
	b _0804B170
_0804B164:
	ldr r7, [sp, #0x010]
	adds r0, r2, r7
	cmp r1, r0
	blt _0804B170
_0804B16C:
	movs r0, #0x02
	str r0, [sp, #0x004]
_0804B170:
	ldr r4, [r6, #0x34]
	movs r2, #0x9C
	lsls r2, r2, #0x02
	mov r1, r12
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	ldr r1, [r1, #0x38]
	adds r1, r1, r0
	mov r7, r9
	asrs r3, r7, #0x1F
	subs r0, r7, r3
	asrs r0, r0, #0x01
	subs r7, r1, r0
	adds r2, r6, r2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	mov r2, r10
	lsrs r1, r2, #0x01
	subs r2, r0, r1
	mov r0, r12
	ldr r6, [r0, #0x34]
	cmp r6, r4
	bne _0804B1C8
	cmp r7, r2
	bne _0804B1C8
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x01
	bls _0804B1F6
	cmp r0, #0x02
	bhi _0804B1BC
	movs r0, #0x08
	b _0804B1FE
_0804B1BC:
	cmp r0, #0x05
	bls _0804B1FC
	cmp r0, #0x06
	bhi _0804B1F6
	movs r0, #0x02
	b _0804B1FE
_0804B1C8:
	mov r0, r9
	add r0, r10
	asrs r1, r0, #0x01
	adds r0, r2, r1
	cmp r7, r0
	bge _0804B1E8
	subs r0, r2, r1
	cmp r7, r0
	ble _0804B1E8
	ldr r1, [sp, #0x008]
	cmp r6, r1
	bge _0804B1E4
	movs r0, #0x02
	b _0804B1FE
_0804B1E4:
	movs r0, #0x08
	b _0804B1FE
_0804B1E8:
	mov r2, r9
	subs r0, r2, r3
	asrs r0, r0, #0x01
	mov r3, r8
	subs r0, r3, r0
	cmp r7, r0
	ble _0804B1FC
_0804B1F6:
	movs r0, #0x01
	orrs r5, r0
	b _0804B204
_0804B1FC:
	movs r0, #0x04
_0804B1FE:
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_0804B204:
	ldr r4, [sp, #0x00C]
	ldrb r0, [r4, #0x00]
	movs r3, #0xCF
	lsls r3, r3, #0x02
	add r3, r12
	movs r1, #0x7F
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r3, #0xD4
	lsls r3, r3, #0x02
	add r3, r12
	movs r0, #0x0F
	adds r1, r5, #0x0
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	ldr r7, [sp, #0x004]
	lsls r2, r7, #0x04
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	orrs r5, r0
	adds r0, r5, #0x0
	b _0804B24C
_0804B24A:
	movs r0, #0x00
_0804B24C:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
