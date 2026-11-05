	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804DBD0__20FieldPlayerCharacteri
sub_804DBD0__20FieldPlayerCharacteri:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	cmp r7, #0x01
	beq _0804DC1E
	ldr r1, _0804DC64 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804DC06
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0804DC06
	cmp r0, #0x04
	bls _0804DC1E
_0804DC06:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _0804DC1E
	b _0804DDE0
_0804DC1E:
	lsls r2, r7, #0x01
	adds r2, r2, r7
	lsls r2, r2, #0x05
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, _0804DC68 @ =0x083A0B88
	adds r0, r0, r1
	adds r2, r2, r0
	str r2, [sp, #0x01C]
	cmp r7, #0x00
	bne _0804DCB4
	ldr r1, _0804DC64 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804DC86
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _0804DC6C
	cmp r0, #0x04
	beq _0804DC7A
	b _0804DCE0
_0804DC64: .4byte 0x0000035B
_0804DC68: .4byte 0x083A0B88
_0804DC6C:
	movs r3, #0xC0
	lsls r3, r3, #0x05
	mov r10, r3
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r9, r0
	b _0804DCE0
_0804DC7A:
	movs r1, #0x80
	lsls r1, r1, #0x05
	mov r10, r1
	movs r2, #0x00
	mov r9, r2
	b _0804DCE0
_0804DC86:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _0804DC9C
	cmp r0, #0x04
	beq _0804DCA8
	b _0804DCE0
_0804DC9C:
	movs r0, #0xA0
	lsls r0, r0, #0x06
	mov r10, r0
	movs r1, #0x80
	lsls r1, r1, #0x05
	b _0804DCDE
_0804DCA8:
	movs r2, #0x80
	lsls r2, r2, #0x05
	mov r10, r2
	movs r3, #0x00
	mov r9, r3
	b _0804DCE0
_0804DCB4:
	ldr r1, _0804DCD0 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804DCD4
	movs r2, #0x80
	lsls r2, r2, #0x05
	mov r10, r2
	movs r3, #0x80
	lsls r3, r3, #0x01
	mov r9, r3
	b _0804DCE0
_0804DCD0: .4byte 0x0000035B
_0804DCD4:
	movs r0, #0x80
	lsls r0, r0, #0x06
	mov r10, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
_0804DCDE:
	mov r9, r1
_0804DCE0:
	ldr r0, [r4, #0x14]
	add r10, r0
	add r9, r0
	movs r2, #0x00
	str r2, [sp, #0x020]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x024]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x028]
	mov r1, sp
	adds r1, #0x08
	str r1, [sp, #0x02C]
	mov r2, sp
	adds r2, #0x0C
	str r2, [sp, #0x030]
	movs r6, #0x01
	ldr r3, _0804DD80 @ =0x0000020D
	adds r3, r3, r4
	mov r8, r3
	ldr r5, _0804DD84 @ =0x083A0C48
_0804DD0C:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x01C]
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	ldr r1, [r4, #0x0C]
	adds r1, r1, r0
	str r1, [sp, #0x034]
	ldrb r0, [r5, #0x01]
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x01C]
	adds r0, r0, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r2, [r4, #0x10]
	adds r2, r2, r0
	mov r12, r2
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldr r3, [sp, #0x024]
	str r3, [sp, #0x000]
	ldr r1, [sp, #0x028]
	str r1, [sp, #0x004]
	ldr r2, [sp, #0x02C]
	strb r6, [r2, #0x00]
	mov r1, r8
	ldrb r1, [r1, #0x00]
	lsrs r3, r1, #0x03
	ands r3, r6
	ldr r2, [sp, #0x030]
	strb r3, [r2, #0x00]
	ldr r1, [sp, #0x034]
	mov r2, r12
	add r3, sp, #0x010
	bl sub_803FBA4
	adds r2, r0, #0x0
	ldr r0, [sp, #0x010]
	cmp r9, r0
	bgt _0804DD88
	cmp r7, #0x00
	bne _0804DDCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x40
	bne _0804DDCC
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	eors r0, r6
	ands r0, r6
	cmp r0, #0x00
	beq _0804DDD4
	b _0804DDCC
_0804DD80: .4byte 0x0000020D
_0804DD84: .4byte 0x083A0C48
_0804DD88:
	ldr r1, [sp, #0x014]
	cmp r1, #0x00
	blt _0804DDD4
	ldr r0, [sp, #0x018]
	cmp r9, r0
	bgt _0804DDD4
	cmp r10, r1
	ble _0804DDD4
	ldr r2, [r2, #0x00]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x1F
	mov r3, r8
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	beq _0804DDBE
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1C
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x1C
	adds r0, r0, r1
	lsls r1, r2, #0x08
	lsrs r1, r1, #0x1C
	cmn r0, r1
	beq _0804DDD4
_0804DDBE:
	cmp r7, #0x00
	bne _0804DDCC
	ldr r0, _0804DDD0 @ =0x40000078
	ands r2, r0
	subs r0, #0x38
	cmp r2, r0
	beq _0804DDD4
_0804DDCC:
	movs r0, #0x01
	b _0804DDE2
_0804DDD0: .4byte 0x40000078
_0804DDD4:
	adds r5, #0x02
	ldr r0, [sp, #0x020]
	adds r0, #0x01
	str r0, [sp, #0x020]
	cmp r0, #0x08
	bls _0804DD0C
_0804DDE0:
	movs r0, #0x00
_0804DDE2:
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
