	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804E450__21FieldPlayerShotBullet
sub_804E450__21FieldPlayerShotBullet:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0x0
	ldr r1, [r6, #0x08]
	cmp r1, #0x00
	bge _0804E466
	ldr r0, _0804E49C @ =0x00000FFF
	adds r1, r1, r0
_0804E466:
	asrs r7, r1, #0x0C
	ldr r2, [r6, #0x0C]
	cmp r2, #0x00
	bge _0804E472
	ldr r1, _0804E49C @ =0x00000FFF
	adds r2, r2, r1
_0804E472:
	asrs r4, r2, #0x0C
	ldr r0, [r6, #0x40]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r4, r4, #0x10
	mov r9, r4
	mov r2, r9
	asrs r2, r2, #0x10
	mov r10, r2
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldrb r1, [r6, #0x01]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0804E4A0
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x04
	lsrs r5, r0, #0x1E
	b _0804E5A2
_0804E49C: .4byte 0x00000FFF
_0804E4A0:
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r5, r0, #0x1E
	ldr r0, [r6, #0x08]
	ldr r3, _0804E4E8 @ =0xFFFFF800
	adds r1, r0, r3
	cmp r1, #0x00
	bge _0804E4B4
	ldr r2, _0804E4EC @ =0x000007FF
	adds r1, r0, r2
_0804E4B4:
	asrs r4, r1, #0x0C
	movs r3, #0xE0
	lsls r3, r3, #0x03
	adds r1, r0, r3
	cmp r1, #0x00
	bge _0804E4C4
	ldr r2, _0804E4F0 @ =0x000016FF
	adds r1, r0, r2
_0804E4C4:
	asrs r1, r1, #0x0C
	mov r8, r1
	cmp r4, r8
	bgt _0804E560
	adds r1, #0x01
	subs r2, r1, r4
	movs r0, #0x01
	ands r2, r0
	cmp r4, r1
	bge _0804E4DC
	cmp r2, #0x00
	beq _0804E4F4
_0804E4DC:
	ldr r0, [r6, #0x40]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r2, r10
	b _0804E532
	.byte 0x00, 0x00
_0804E4E8: .4byte 0xFFFFF800
_0804E4EC: .4byte 0x000007FF
_0804E4F0: .4byte 0x000016FF
_0804E4F4:
	ldr r0, [r6, #0x40]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r3, r9
	asrs r2, r3, #0x10
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldrb r1, [r2, #0x02]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	bne _0804E526
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r0, r0, #0x1E
	cmp r0, r5
	bls _0804E526
	adds r5, r0, #0x0
	adds r7, r4, #0x0
	ldrb r1, [r2, #0x03]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0804E560
_0804E526:
	adds r4, #0x01
	ldr r0, [r6, #0x40]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r3, r9
	asrs r2, r3, #0x10
_0804E532:
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldrb r1, [r2, #0x02]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	bne _0804E55A
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r0, r0, #0x1E
	cmp r0, r5
	bls _0804E55A
	adds r5, r0, #0x0
	adds r7, r4, #0x0
	ldrb r1, [r2, #0x03]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0804E560
_0804E55A:
	adds r4, #0x01
	cmp r4, r8
	ble _0804E4F4
_0804E560:
	ldr r1, [r6, #0x0C]
	adds r2, r1, #0x0
	cmp r1, #0x00
	bge _0804E56C
	ldr r0, _0804E5C0 @ =0x00000FFF
	adds r2, r1, r0
_0804E56C:
	asrs r4, r2, #0x0C
	ldr r0, [r6, #0x14]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0804E57A
	ldr r1, _0804E5C0 @ =0x00000FFF
	adds r0, r0, r1
_0804E57A:
	asrs r0, r0, #0x0C
	subs r0, #0x01
	mov r8, r0
	lsls r7, r7, #0x10
_0804E582:
	subs r4, #0x01
	ldr r0, [r6, #0x40]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	asrs r1, r7, #0x10
	bl get_coldef_ptr_by_xz
	adds r2, r0, #0x0
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x06
	lsrs r0, r0, #0x1E
	cmp r5, r0
	ble _0804E59E
	adds r5, r0, #0x0
_0804E59E:
	cmp r4, r8
	bgt _0804E582
_0804E5A2:
	ldr r2, [r6, #0x44]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2, #0x1F]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0804E5C0: .4byte 0x00000FFF
