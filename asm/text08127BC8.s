	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8127BC8
sub_8127BC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08127C4C @ =0x03000FFC
	ldr r0, [r0, #0x00]
	mov r9, r0
	lsls r2, r6, #0x03
	subs r2, r2, r6
	lsls r2, r2, #0x05
	subs r2, r2, r6
	lsls r2, r2, #0x03
	adds r3, r0, r2
	adds r0, r3, #0x0
	adds r0, #0x60
	ldrb r0, [r0, #0x00]
	strb r0, [r4, #0x14]
	adds r0, r3, #0x0
	adds r0, #0x9C
	ldrb r0, [r0, #0x00]
	strb r0, [r4, #0x15]
	adds r0, r3, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x04]
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	str r1, [r4, #0x04]
	adds r0, r3, #0x0
	adds r0, #0xB0
	ldr r1, [r0, #0x04]
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x08]
	str r1, [r4, #0x0C]
	adds r0, r3, #0x0
	adds r0, #0xB8
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x10]
	ldr r0, _08127C50 @ =0x03001038
	mov r8, r0
	ldr r0, _08127C54 @ =0x0819832C
	ldr r1, _08127C58 @ =0x08198220
	mov r10, r1
	subs r7, r0, r1
	mov r0, r8
	ldr r3, [r0, #0x00]
	adds r3, r3, r7
	movs r0, #0xE0
	lsls r0, r0, #0x03
	add r0, r9
	adds r5, r0, r2
	ldr r0, [r5, #0x00]
	ldr r1, _08127C5C @ =0x00034BC0
	bl _call_via_r3
	adds r3, r0, #0x0
	cmp r3, #0x63
	bls _08127C60
	movs r0, #0x3B
	strb r0, [r4, #0x17]
	movs r0, #0x63
	strb r0, [r4, #0x16]
	b _08127C8A
_08127C4C: .4byte 0x03000FFC
_08127C50: .4byte 0x03001038
_08127C54: .4byte 0x0819832C
_08127C58: .4byte 0x08198220
_08127C5C: .4byte 0x00034BC0
_08127C60:
	strb r3, [r4, #0x16]
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r7
	ldr r0, [r5, #0x00]
	movs r1, #0xE1
	lsls r1, r1, #0x04
	bl _call_via_r2
	adds r3, r0, #0x0
	ldr r0, _08127CC4 @ =0x08198350
	mov r1, r10
	subs r0, r0, r1
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	movs r1, #0x3C
	bl _call_via_r2
	strb r0, [r4, #0x17]
_08127C8A:
	lsls r1, r6, #0x03
	subs r1, r1, r6
	lsls r1, r1, #0x05
	subs r1, r1, r6
	lsls r1, r1, #0x03
	mov r0, r9
	adds r2, r0, r1
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #0x1C
	lsrs r3, r0, #0x1F
	lsls r0, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x02
	adds r0, r0, r1
	add r0, r9
	ldrh r0, [r0, #0x18]
	strh r0, [r4, #0x12]
	ldrb r1, [r2, #0x14]
	lsls r0, r1, #0x1A
	cmp r0, #0x00
	blt _08127CC8
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #0x1D
	cmp r0, #0x00
	blt _08127CC8
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1F
	b _08127CCA
	.byte 0x00, 0x00
_08127CC4: .4byte 0x08198350
_08127CC8:
	movs r0, #0x02
_08127CCA:
	strb r0, [r4, #0x18]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8127CDC
sub_8127CDC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x010]
	ldr r5, [sp, #0x038]
	ldr r0, [sp, #0x03C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x014]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r10, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	movs r0, #0x01
	bl sub_81980C8
	mov r8, r0
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	add r0, r10
	lsls r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov r10, r0
	mov r0, r9
	ands r0, r1
	mov r9, r0
	b _08127D82
_08127D2C:
	cmp r1, #0x01
	ble _08127D34
	movs r1, #0x00
	b _08127D42
_08127D34:
	lsls r0, r1, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08127D82
	ldrb r4, [r5, #0x00]
	adds r5, #0x01
_08127D42:
	lsls r0, r1, #0x02
	mov r1, r8
	adds r6, r0, r1
	ldr r0, [r6, #0x00]
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	mov r2, r9
	str r2, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x010]
	ldr r1, [sp, #0x014]
	adds r2, r7, #0x0
	mov r3, r10
	bl sub_8199E48
	adds r3, r7, #0x1
	adds r1, r4, #0x0
	asrs r1, r1, #0x03
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	movs r0, #0x07
	ands r4, r0
	lsls r2, r4, #0x02
	ldr r0, [r1, #0x04]
	lsrs r0, r2
	movs r1, #0x0F
	ands r0, r1
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08127D82:
	ldrb r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08127DA4
	adds r1, r7, #0x0
	adds r1, #0x08
	ldr r2, [sp, #0x014]
	lsls r0, r2, #0x03
	cmp r1, r0
	bgt _08127DA4
_08127D94:
	ldrb r4, [r5, #0x00]
	adds r5, #0x01
	cmp r4, #0xFF
	beq _08127D94
	movs r0, #0xFF
	subs r1, r0, r4
	cmp r1, #0xFF
	bne _08127D2C
_08127DA4:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8127DB4
sub_8127DB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r0
	mov r9, r1
	adds r5, r3, #0x0
	ldr r0, [sp, #0x020]
	mov r8, r0
	ldr r0, [sp, #0x024]
	ldr r1, [sp, #0x028]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	mov r1, r9
	asrs r1, r1, #0x03
	mov r9, r1
	asrs r2, r2, #0x03
	add r5, r9
	add r8, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, r8
	bge _08127E2A
_08127DE8:
	mov r1, r9
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
	adds r0, r2, #0x1
	mov r12, r0
	cmp r3, r5
	bge _08127E20
	lsls r0, r2, #0x06
	mov r1, r10
	adds r4, r0, r1
_08127DFC:
	cmp r7, #0x00
	bne _08127E08
	lsls r0, r3, #0x01
	adds r0, r0, r4
	strh r7, [r0, #0x00]
	b _08127E16
_08127E08:
	lsls r2, r3, #0x01
	adds r2, r2, r4
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r2, #0x00]
_08127E16:
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	blt _08127DFC
_08127E20:
	mov r1, r12
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r8
	blt _08127DE8
_08127E2A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8127E38
sub_8127E38:
	ldr r1, _08127E4C @ =0x02000008
	ldrh r2, [r1, #0x00]
	movs r1, #0x0C
	ands r1, r2
	lsls r1, r1, #0x0C
	subs r0, r0, r1
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x16
	bx lr
	.byte 0x00, 0x00
_08127E4C: .4byte 0x02000008
