	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start generate_window_bg_8051B98
generate_window_bg_8051B98:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	str r0, [sp, #0x004]
	adds r7, r1, #0x0
	ldr r0, [sp, #0x04C]
	ldr r1, [sp, #0x050]
	ldr r4, [sp, #0x054]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r10, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x008]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x00C]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x010]
	ldr r0, _08051EC8 @ =0x03001034
	movs r2, #0x80
	lsls r2, r2, #0x04
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r7, #0x0
	bl _call_via_r3
	ldr r1, [sp, #0x008]
	lsls r0, r1, #0x05
	add r0, r10
	lsls r4, r0, #0x01
	adds r2, r4, r7
	movs r1, #0x68
	strh r1, [r2, #0x00]
	add r0, r8
	lsls r0, r0, #0x01
	adds r0, r0, r7
	subs r0, #0x02
	movs r2, #0x8D
	lsls r2, r2, #0x03
	adds r1, r2, #0x0
	strh r1, [r0, #0x00]
	ldr r5, [sp, #0x008]
	ldr r6, [sp, #0x00C]
	adds r3, r5, r6
	lsls r0, r3, #0x05
	add r0, r10
	lsls r1, r0, #0x01
	adds r1, r1, r7
	subs r1, #0x40
	ldr r5, _08051ECC @ =0x00000868
	adds r2, r5, #0x0
	strh r2, [r1, #0x00]
	add r0, r8
	lsls r0, r0, #0x01
	adds r0, r0, r7
	subs r0, #0x42
	ldr r6, _08051ED0 @ =0x00000C68
	adds r1, r6, #0x0
	strh r1, [r0, #0x00]
	adds r4, #0x02
	adds r2, r7, r4
	subs r3, #0x01
	lsls r3, r3, #0x05
	add r3, r10
	lsls r3, r3, #0x01
	adds r3, #0x02
	adds r1, r7, r3
	mov r0, r8
	subs r0, #0x02
	cmp r0, #0x00
	ble _08051C8E
	movs r6, #0x69
	ldr r3, _08051ED4 @ =0x00000869
	adds r5, r3, #0x0
	adds r4, r0, #0x0
	negs r3, r4
	movs r0, #0x03
	ands r3, r0
	cmp r3, #0x00
	beq _08051C74
	cmp r3, #0x03
	bge _08051C66
	cmp r3, #0x02
	bge _08051C5C
	strh r6, [r2, #0x00]
	adds r2, #0x02
	strh r5, [r1, #0x00]
	adds r1, #0x02
	mov r4, r8
	subs r4, #0x03
_08051C5C:
	strh r6, [r2, #0x00]
	adds r2, #0x02
	strh r5, [r1, #0x00]
	adds r1, #0x02
	subs r4, #0x01
_08051C66:
	strh r6, [r2, #0x00]
	adds r2, #0x02
	strh r5, [r1, #0x00]
	adds r1, #0x02
	subs r4, #0x01
	cmp r4, #0x00
	beq _08051C8E
_08051C74:
	strh r6, [r2, #0x00]
	strh r5, [r1, #0x00]
	strh r6, [r2, #0x02]
	strh r5, [r1, #0x02]
	strh r6, [r2, #0x04]
	strh r5, [r1, #0x04]
	strh r6, [r2, #0x06]
	adds r2, #0x08
	strh r5, [r1, #0x06]
	adds r1, #0x08
	subs r4, #0x04
	cmp r4, #0x00
	bne _08051C74
_08051C8E:
	ldr r0, [sp, #0x008]
	adds r0, #0x01
	lsls r0, r0, #0x05
	add r0, r10
	lsls r1, r0, #0x01
	adds r3, r7, r1
	add r0, r8
	lsls r0, r0, #0x01
	subs r0, #0x02
	adds r2, r7, r0
	ldr r5, [sp, #0x00C]
	subs r5, #0x02
	mov r9, r5
	mov r6, r10
	lsls r6, r6, #0x03
	str r6, [sp, #0x014]
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x03
	str r0, [sp, #0x018]
	mov r1, r8
	lsls r1, r1, #0x03
	str r1, [sp, #0x01C]
	ldr r5, [sp, #0x00C]
	lsls r5, r5, #0x03
	str r5, [sp, #0x024]
	mov r6, r8
	lsrs r6, r6, #0x01
	str r6, [sp, #0x020]
	ldr r0, [sp, #0x00C]
	lsrs r0, r0, #0x01
	str r0, [sp, #0x028]
	mov r1, r9
	cmp r1, #0x00
	ble _08051D3E
	movs r6, #0x6A
	ldr r0, _08051ED8 @ =0x0000046A
	adds r5, r0, #0x0
	mov r4, r9
	negs r1, r1
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08051D10
	cmp r1, #0x03
	bge _08051D02
	cmp r1, #0x02
	bge _08051CF8
	strh r6, [r3, #0x00]
	strh r5, [r2, #0x00]
	adds r3, #0x40
	adds r2, #0x40
	ldr r4, [sp, #0x00C]
	subs r4, #0x03
_08051CF8:
	strh r6, [r3, #0x00]
	strh r5, [r2, #0x00]
	adds r3, #0x40
	adds r2, #0x40
	subs r4, #0x01
_08051D02:
	strh r6, [r3, #0x00]
	strh r5, [r2, #0x00]
	adds r3, #0x40
	adds r2, #0x40
	subs r4, #0x01
	cmp r4, #0x00
	beq _08051D3E
_08051D10:
	strh r6, [r3, #0x00]
	strh r5, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x40
	adds r1, r2, #0x0
	adds r1, #0x40
	strh r6, [r0, #0x00]
	strh r5, [r1, #0x00]
	adds r0, #0x40
	adds r1, #0x40
	strh r6, [r0, #0x00]
	strh r5, [r1, #0x00]
	adds r0, #0x40
	adds r1, #0x40
	strh r6, [r0, #0x00]
	strh r5, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r3, r3, r0
	adds r2, r2, r0
	subs r4, #0x04
	cmp r4, #0x00
	bne _08051D10
_08051D3E:
	movs r2, #0x00
	cmp r2, r9
	bge _08051DA0
	mov r6, r8
	subs r6, #0x02
_08051D48:
	ldr r1, [sp, #0x008]
	adds r0, r1, r2
	adds r0, #0x01
	lsls r0, r0, #0x05
	add r0, r10
	lsls r0, r0, #0x01
	adds r0, #0x02
	adds r1, r7, r0
	adds r5, r2, #0x1
	cmp r6, #0x00
	ble _08051D9A
	movs r4, #0x6B
	adds r3, r6, #0x0
	negs r2, r3
	movs r0, #0x03
	ands r2, r0
	cmp r2, #0x00
	beq _08051D8A
	cmp r2, #0x03
	bge _08051D80
	cmp r2, #0x02
	bge _08051D7A
	strh r4, [r1, #0x00]
	adds r1, #0x02
	subs r3, #0x01
_08051D7A:
	strh r4, [r1, #0x00]
	adds r1, #0x02
	subs r3, #0x01
_08051D80:
	strh r4, [r1, #0x00]
	adds r1, #0x02
	subs r3, #0x01
	cmp r3, #0x00
	beq _08051D9A
_08051D8A:
	strh r4, [r1, #0x00]
	strh r4, [r1, #0x02]
	strh r4, [r1, #0x04]
	strh r4, [r1, #0x06]
	adds r1, #0x08
	subs r3, #0x04
	cmp r3, #0x00
	bne _08051D8A
_08051D9A:
	adds r2, r5, #0x0
	cmp r2, r9
	blt _08051D48
_08051DA0:
	movs r1, #0xC0
	lsls r1, r1, #0x13
	ldr r2, [sp, #0x010]
	adds r1, r2, r1
	movs r2, #0x80
	lsls r2, r2, #0x04
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r3, #0x20
	bl sub_8018218
	ldr r3, [sp, #0x004]
	ldrb r1, [r3, #0x00]
	movs r5, #0x02
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r4, #0x01
	movs r0, #0x01
	strb r0, [r3, #0x01]
	mov r6, sp
	ldrb r6, [r6, #0x14]
	strb r6, [r3, #0x02]
	mov r0, sp
	ldrb r0, [r0, #0x18]
	strb r0, [r3, #0x03]
	mov r1, sp
	ldrb r1, [r1, #0x1C]
	strb r1, [r3, #0x04]
	add r2, sp, #0x024
	ldrb r2, [r2, #0x00]
	strb r2, [r3, #0x05]
	ldr r3, _08051EDC @ =0x0839EC80
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x01]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x01]
	ldr r0, [r3, #0x00]
	ldr r1, [sp, #0x020]
	add r1, r10
	adds r0, #0x40
	strb r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, #0x41
	strb r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ldr r6, [sp, #0x008]
	ldr r2, [sp, #0x028]
	adds r1, r6, r2
	adds r0, #0x44
	strb r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, #0x45
	strb r1, [r0, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x48
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x48
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x48
	ldrb r0, [r1, #0x00]
	movs r6, #0x04
	mov r9, r6
	mov r2, r9
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x48
	ldrb r0, [r1, #0x00]
	movs r6, #0x08
	mov r8, r6
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x48
	ldrb r0, [r1, #0x00]
	movs r6, #0x10
	orrs r0, r6
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x48
	ldrb r2, [r1, #0x00]
	movs r4, #0x21
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, #0x4A
	ldrb r1, [r0, #0x00]
	ands r5, r1
	strb r5, [r0, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x4A
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x4A
	ldrb r0, [r1, #0x00]
	mov r5, r9
	orrs r0, r5
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x4A
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x4A
	ldrb r0, [r1, #0x00]
	orrs r0, r6
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, #0x4A
	ldrb r1, [r0, #0x00]
	ands r4, r1
	strb r4, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r0, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08051EC8: .4byte 0x03001034
_08051ECC: .4byte 0x00000868
_08051ED0: .4byte 0x00000C68
_08051ED4: .4byte 0x00000869
_08051ED8: .4byte 0x0000046A
_08051EDC: .4byte 0x0839EC80
