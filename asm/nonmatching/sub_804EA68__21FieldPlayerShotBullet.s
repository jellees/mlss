	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804EA68__21FieldPlayerShotBullet
sub_804EA68__21FieldPlayerShotBullet:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x084
	adds r6, r0, #0x0
	ldrb r7, [r6, #0x01]
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0x00
	bne _0804EA84
	bl _0804F8EA
_0804EA84:
	ldrh r2, [r6, #0x32]
	lsrs r4, r2, #0x01
	ldr r0, [r6, #0x18]
	subs r0, r0, r4
	str r0, [sp, #0x014]
	adds r0, r0, r2
	str r0, [sp, #0x018]
	ldr r0, [r6, #0x1C]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	ldrh r1, [r6, #0x36]
	subs r5, r0, r1
	str r5, [sp, #0x01C]
	str r0, [sp, #0x020]
	ldrh r5, [r6, #0x34]
	ldr r0, [r6, #0x08]
	subs r0, r0, r4
	str r0, [sp, #0x024]
	adds r2, r0, r2
	str r2, [sp, #0x028]
	ldr r0, [r6, #0x0C]
	adds r0, r0, r3
	subs r0, r0, r1
	str r0, [sp, #0x02C]
	adds r1, r0, r1
	str r1, [sp, #0x030]
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x14]
	adds r1, r1, r0
	str r1, [sp, #0x034]
	adds r5, r1, r5
	str r5, [sp, #0x038]
	lsls r0, r7, #0x1A
	lsrs r0, r0, #0x1D
	str r0, [sp, #0x03C]
	movs r7, #0x00
	str r7, [sp, #0x040]
_0804EAD0:
	ldr r0, [sp, #0x03C]
	lsls r1, r0, #0x02
	ldr r0, _0804EB08 @ =0x083A0CD6
	adds r1, r1, r0
	str r1, [sp, #0x044]
	ldr r1, [r6, #0x08]
	mov r10, r1
	ldr r2, [r6, #0x0C]
	mov r9, r2
	movs r3, #0x00
	str r3, [sp, #0x048]
	ldr r4, [sp, #0x044]
	movs r2, #0x00
	ldsb r2, [r4, r2]
	adds r4, #0x01
	str r4, [sp, #0x044]
	ldr r5, [sp, #0x040]
	adds r5, #0x01
	str r5, [sp, #0x078]
	cmp r2, #0x03
	ble _0804EB0C
	ldr r7, [sp, #0x040]
	cmp r7, #0x00
	bne _0804EB04
	bl _0804F8DC
_0804EB04:
	bl _0804F8CE
_0804EB08:
	lsrs r6, r2, #0x13
	lsrs r2, r7, #0x20
_0804EB0C:
	cmp r2, #0x07
	bls _0804EB14
	bl _0804F864
_0804EB14:
	lsls r0, r2, #0x02
	ldr r1, _0804EB20 @ =_0804EB24
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0804EB20: .4byte _0804EB24
_0804EB24:
	.4byte _0804EB44
	.4byte _0804EDC8
	.4byte _0804F02C
	.4byte _0804F298
	.4byte _0804F4F2
	.4byte _0804F5C0
	.4byte _0804F694
	.4byte _0804F74C
_0804EB44:
	ldr r1, [sp, #0x014]
	cmp r1, #0x00
	bge _0804EB4E
	ldr r0, _0804EC90 @ =0x00000FFF
	adds r1, r1, r0
_0804EB4E:
	asrs r5, r1, #0x0C
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	bge _0804EB5A
	ldr r1, _0804EC90 @ =0x00000FFF
	adds r0, r0, r1
_0804EB5A:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x040]
	subs r0, r0, r2
	str r0, [sp, #0x04C]
	ldr r1, _0804EC94 @ =0xFFFFFF00
	ldr r3, [sp, #0x018]
	adds r0, r3, r1
	cmp r0, #0x00
	bge _0804EB70
	ldr r4, _0804EC98 @ =0x00000EFF
	adds r0, r3, r4
_0804EB70:
	asrs r0, r0, #0x0C
	str r0, [sp, #0x050]
	cmp r5, r0
	ble _0804EB7C
	bl _0804F864
_0804EB7C:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	ldr r2, [sp, #0x04C]
	add r3, sp, #0x008
	bl sub_804FA30__21FieldPlayerShotBulletssPiN23
	mov r8, r0
	ldr r7, [sp, #0x040]
	cmp r7, #0x00
	beq _0804EBBC
	ldr r1, [sp, #0x008]
	ldr r0, [r6, #0x20]
	cmp r1, r0
	ble _0804EBB6
	ldr r0, [sp, #0x034]
	cmp r1, r0
	ble _0804EBB6
	ldr r0, [sp, #0x04C]
	adds r0, #0x01
	lsls r0, r0, #0x0C
	ldr r1, [sp, #0x02C]
	cmp r0, r1
	ble _0804EBB6
	bl _0804F7B4
_0804EBB6:
	ldr r2, [sp, #0x040]
	cmp r2, #0x00
	bne _0804EBCE
_0804EBBC:
	mov r3, r8
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	adds r4, r5, #0x1
	str r4, [sp, #0x07C]
	cmp r0, #0x07
	bhi _0804EBCE
	b _0804EDB2
_0804EBCE:
	ldr r2, [sp, #0x00C]
	adds r7, r5, #0x1
	str r7, [sp, #0x07C]
	cmp r2, #0x00
	bge _0804EBDA
	b _0804EDB2
_0804EBDA:
	ldr r0, [sp, #0x038]
	cmp r2, r0
	blt _0804EBE2
	b _0804EDB2
_0804EBE2:
	ldr r3, [sp, #0x010]
	ldr r1, [sp, #0x034]
	cmp r3, r1
	bgt _0804EBEC
	b _0804EDB2
_0804EBEC:
	ldr r1, [r6, #0x20]
	ldr r0, [r6, #0x24]
	adds r0, r1, r0
	ldrh r4, [r6, #0x34]
	adds r0, r0, r4
	cmp r2, r0
	blt _0804EBFC
	b _0804EDB2
_0804EBFC:
	cmp r3, r1
	bgt _0804EC02
	b _0804EDB2
_0804EC02:
	lsls r7, r5, #0x0C
	ldr r0, [sp, #0x07C]
	lsls r2, r0, #0x0C
	ldr r0, [sp, #0x04C]
	adds r0, #0x01
	lsls r4, r0, #0x0C
	mov r3, r8
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	mov r12, r0
	ands r0, r1
	add r3, sp, #0x080
	strb r1, [r3, #0x00]
	cmp r0, #0x0E
	bne _0804ECA0
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0804EC2A
	ldr r1, _0804EC90 @ =0x00000FFF
	adds r0, r0, r1
_0804EC2A:
	asrs r0, r0, #0x0C
	cmp r5, r0
	bne _0804ECA0
	ldr r2, [sp, #0x02C]
	subs r0, r4, r2
	ldr r3, [sp, #0x024]
	subs r5, r3, r7
	subs r0, r0, r5
	cmp r0, #0x00
	bgt _0804EC40
	b _0804EDB2
_0804EC40:
	ldr r0, _0804EC9C @ =0xFFFFF000
	adds r4, r4, r0
	subs r3, r2, r4
	movs r2, #0x80
	lsls r2, r2, #0x05
	subs r1, r2, r3
	subs r1, r1, r5
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r5, r1
	adds r1, r1, r7
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	mov r10, r1
	ldr r7, _0804EC94 @ =0xFFFFFF00
	ands r1, r7
	mov r10, r1
	subs r2, r2, r5
	subs r2, r2, r3
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r3, r3, r2
	adds r3, r3, r4
	adds r3, r3, r7
	ldrh r0, [r6, #0x36]
	adds r0, r0, r3
	ands r0, r7
	mov r9, r0
	movs r1, #0x03
	str r1, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	mov r0, r12
	b _0804EDAC
_0804EC90: .4byte 0x00000FFF
_0804EC94: .4byte 0xFFFFFF00
_0804EC98: .4byte 0x00000EFF
_0804EC9C: .4byte 0xFFFFF000
_0804ECA0:
	movs r3, #0x0F
	mov r12, r3
	mov r0, r12
	add r1, sp, #0x080
	ldrb r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x0C
	bne _0804ED1C
	ldr r3, [sp, #0x050]
	cmp r5, r3
	bne _0804ED1C
	ldr r5, [sp, #0x02C]
	subs r1, r4, r5
	ldr r3, [sp, #0x028]
	subs r0, r2, r3
	subs r1, r1, r0
	cmp r1, #0x00
	ble _0804EDB2
	ldr r5, _0804ED14 @ =0xFFFFF000
	adds r4, r4, r5
	subs r3, r3, r7
	ldr r0, [sp, #0x02C]
	subs r2, r0, r4
	subs r1, r3, r2
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r2, r1
	adds r1, r1, r7
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	mov r10, r1
	ldr r5, _0804ED18 @ =0xFFFFFF00
	ands r1, r5
	mov r10, r1
	subs r2, r2, r3
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r3, r3, r2
	adds r3, r3, r4
	adds r3, r3, r5
	ldrh r7, [r6, #0x36]
	adds r7, r7, r3
	adds r0, r7, #0x0
	ands r0, r5
	mov r9, r0
	movs r1, #0x03
	str r1, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	mov r0, r12
	b _0804EDAC
	.byte 0x00, 0x00
_0804ED14: .4byte 0xFFFFF000
_0804ED18: .4byte 0xFFFFFF00
_0804ED1C:
	mov r3, r8
	ldrb r0, [r3, #0x00]
	movs r1, #0x78
	ands r1, r0
	cmp r1, #0x30
	beq _0804EDB2
	cmp r1, #0x38
	beq _0804EDB2
	ldr r1, [sp, #0x040]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x09
	beq _0804ED66
	cmp r0, #0x09
	bhi _0804ED42
	cmp r0, #0x08
	beq _0804ED4C
	b _0804ED66
_0804ED42:
	cmp r0, #0x0A
	beq _0804ED58
	cmp r0, #0x0B
	beq _0804ED60
	b _0804ED66
_0804ED4C:
	ldr r5, _0804ED54 @ =0xFFFFF800
	adds r4, r4, r5
	b _0804ED6A
	.byte 0x00, 0x00
_0804ED54: .4byte 0xFFFFF800
_0804ED58:
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r7, r7, r0
	b _0804ED6A
_0804ED60:
	ldr r1, _0804EDC0 @ =0xFFFFF800
	adds r2, r2, r1
	movs r1, #0x01
_0804ED66:
	cmp r1, #0x00
	beq _0804EDB2
_0804ED6A:
	ldr r3, [sp, #0x018]
	cmp r7, r3
	bge _0804ED76
	ldr r5, [sp, #0x024]
	cmp r2, r5
	bgt _0804ED82
_0804ED76:
	ldr r0, [sp, #0x014]
	cmp r2, r0
	ble _0804EDB2
	ldr r1, [sp, #0x028]
	cmp r7, r1
	bge _0804EDB2
_0804ED82:
	ldr r2, [sp, #0x01C]
	cmp r4, r2
	bgt _0804EDB2
	ldr r3, [sp, #0x02C]
	cmp r4, r3
	ble _0804EDB2
	ldr r5, _0804EDC4 @ =0xFFFFFF00
	adds r0, r4, r5
	ldrh r7, [r6, #0x36]
	adds r7, r7, r0
	mov r9, r7
	movs r0, #0x02
	ldr r1, [sp, #0x048]
	orrs r1, r0
	str r1, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x0F
_0804EDAC:
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x02]
_0804EDB2:
	ldr r5, [sp, #0x07C]
	ldr r2, [sp, #0x050]
	cmp r5, r2
	bgt _0804EDBC
	b _0804EB7C
_0804EDBC:
	bl _0804F864
_0804EDC0:
	.2byte 0xF800 @ bl lr
	.2byte 0xFFFF @ bl lr+4094
_0804EDC4:
	.2byte 0xFF00 @ bl lr+3584
	.2byte 0xFFFF @ bl lr+4094
_0804EDC8:
	ldr r1, [sp, #0x014]
	cmp r1, #0x00
	bge _0804EDD2
	ldr r3, _0804EF08 @ =0x00000FFF
	adds r1, r1, r3
_0804EDD2:
	asrs r5, r1, #0x0C
	ldr r1, _0804EF0C @ =0xFFFFFF00
	ldr r4, [sp, #0x020]
	adds r0, r4, r1
	cmp r0, #0x00
	bge _0804EDE2
	ldr r7, _0804EF10 @ =0x00000EFF
	adds r0, r4, r7
_0804EDE2:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x040]
	adds r0, r0, r2
	str r0, [sp, #0x054]
	ldr r3, [sp, #0x018]
	adds r0, r3, r1
	cmp r0, #0x00
	bge _0804EDF6
	ldr r4, _0804EF10 @ =0x00000EFF
	adds r0, r3, r4
_0804EDF6:
	asrs r0, r0, #0x0C
	str r0, [sp, #0x058]
	cmp r5, r0
	ble _0804EE02
	bl _0804F864
_0804EE02:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	ldr r2, [sp, #0x054]
	add r3, sp, #0x008
	bl sub_804FA30__21FieldPlayerShotBulletssPiN23
	mov r8, r0
	ldr r7, [sp, #0x040]
	cmp r7, #0x00
	beq _0804EE40
	ldr r1, [sp, #0x008]
	ldr r0, [r6, #0x20]
	cmp r1, r0
	ble _0804EE3A
	ldr r0, [sp, #0x034]
	cmp r1, r0
	ble _0804EE3A
	ldr r1, [sp, #0x054]
	lsls r0, r1, #0x0C
	ldr r2, [sp, #0x030]
	cmp r0, r2
	bge _0804EE3A
	bl _0804F7D4
_0804EE3A:
	ldr r3, [sp, #0x040]
	cmp r3, #0x00
	bne _0804EE52
_0804EE40:
	mov r4, r8
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	adds r7, r5, #0x1
	str r7, [sp, #0x06C]
	cmp r0, #0x07
	bhi _0804EE52
	b _0804F014
_0804EE52:
	ldr r2, [sp, #0x00C]
	adds r0, r5, #0x1
	str r0, [sp, #0x06C]
	cmp r2, #0x00
	bge _0804EE5E
	b _0804F014
_0804EE5E:
	ldr r1, [sp, #0x038]
	cmp r2, r1
	blt _0804EE66
	b _0804F014
_0804EE66:
	ldr r3, [sp, #0x010]
	ldr r4, [sp, #0x034]
	cmp r3, r4
	bgt _0804EE70
	b _0804F014
_0804EE70:
	ldr r1, [r6, #0x20]
	ldr r0, [r6, #0x24]
	adds r0, r1, r0
	ldrh r7, [r6, #0x34]
	adds r0, r0, r7
	cmp r2, r0
	blt _0804EE80
	b _0804F014
_0804EE80:
	cmp r3, r1
	bgt _0804EE86
	b _0804F014
_0804EE86:
	lsls r4, r5, #0x0C
	ldr r0, [sp, #0x06C]
	lsls r2, r0, #0x0C
	ldr r1, [sp, #0x054]
	lsls r1, r1, #0x0C
	mov r12, r1
	mov r3, r8
	ldrb r0, [r3, #0x02]
	movs r7, #0x0F
	ands r7, r0
	add r1, sp, #0x080
	strb r0, [r1, #0x00]
	cmp r7, #0x0F
	bne _0804EF14
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0804EEAC
	ldr r3, _0804EF08 @ =0x00000FFF
	adds r0, r0, r3
_0804EEAC:
	asrs r0, r0, #0x0C
	cmp r5, r0
	bne _0804EF14
	ldr r5, [sp, #0x030]
	mov r0, r12
	subs r2, r5, r0
	ldr r1, [sp, #0x024]
	subs r5, r1, r4
	subs r3, r2, r5
	cmp r3, #0x00
	bgt _0804EEC4
	b _0804F014
_0804EEC4:
	subs r1, r5, r2
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r2, r1
	adds r1, r1, r4
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	mov r10, r1
	mov r2, r10
	ldr r4, _0804EF0C @ =0xFFFFFF00
	ands r2, r4
	mov r10, r2
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	adds r0, r5, r0
	add r0, r12
	adds r4, r4, r0
	ldr r5, _0804EF0C @ =0xFFFFFF00
	ands r4, r5
	mov r9, r4
	movs r0, #0x03
	str r0, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x04
	orrs r1, r0
	lsls r1, r1, #0x04
	ands r7, r2
	orrs r7, r1
	strb r7, [r6, #0x02]
	b _0804F014
_0804EF08: .4byte 0x00000FFF
_0804EF0C: .4byte 0xFFFFFF00
_0804EF10: .4byte 0x00000EFF
_0804EF14:
	movs r7, #0x0F
	adds r0, r7, #0x0
	add r1, sp, #0x080
	ldrb r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x0D
	bne _0804EF8C
	ldr r3, [sp, #0x058]
	cmp r5, r3
	bne _0804EF8C
	ldr r0, [sp, #0x030]
	mov r1, r12
	subs r5, r0, r1
	ldr r3, [sp, #0x028]
	subs r0, r2, r3
	subs r0, r5, r0
	cmp r0, #0x00
	ble _0804F014
	subs r3, r3, r4
	movs r2, #0x80
	lsls r2, r2, #0x05
	subs r1, r2, r5
	subs r1, r1, r3
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r3, r1
	adds r1, r1, r4
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	mov r10, r1
	mov r4, r10
	ldr r0, _0804EF88 @ =0xFFFFFF00
	ands r4, r0
	mov r10, r4
	subs r2, r2, r3
	subs r2, r2, r5
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r2, r5, r2
	add r2, r12
	ldr r1, _0804EF88 @ =0xFFFFFF00
	adds r1, r1, r2
	ldr r2, _0804EF88 @ =0xFFFFFF00
	ands r1, r2
	mov r9, r1
	movs r3, #0x03
	str r3, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x04
	orrs r1, r0
	lsls r1, r1, #0x04
	adds r0, r7, #0x0
	b _0804F00E
	.byte 0x00, 0x00
_0804EF88: .4byte 0xFFFFFF00
_0804EF8C:
	mov r5, r8
	ldrb r0, [r5, #0x00]
	movs r1, #0x78
	ands r1, r0
	cmp r1, #0x30
	beq _0804F014
	cmp r1, #0x38
	beq _0804F014
	ldr r1, [sp, #0x040]
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x09
	beq _0804EFB6
	cmp r0, #0x09
	bls _0804EFCC
	cmp r0, #0x0A
	beq _0804EFBE
	cmp r0, #0x0B
	beq _0804EFC6
	b _0804EFCC
_0804EFB6:
	movs r7, #0x80
	lsls r7, r7, #0x04
	add r12, r7
	b _0804EFD0
_0804EFBE:
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r4, r4, r0
	b _0804EFD0
_0804EFC6:
	ldr r1, _0804F024 @ =0xFFFFF800
	adds r2, r2, r1
	movs r1, #0x01
_0804EFCC:
	cmp r1, #0x00
	beq _0804F014
_0804EFD0:
	ldr r3, [sp, #0x018]
	cmp r4, r3
	bge _0804EFDC
	ldr r5, [sp, #0x024]
	cmp r2, r5
	bgt _0804EFE8
_0804EFDC:
	ldr r7, [sp, #0x014]
	cmp r2, r7
	ble _0804F014
	ldr r0, [sp, #0x028]
	cmp r4, r0
	bge _0804F014
_0804EFE8:
	ldr r1, [sp, #0x020]
	cmp r12, r1
	blt _0804F014
	ldr r2, [sp, #0x030]
	cmp r12, r2
	bge _0804F014
	ldr r3, _0804F028 @ =0xFFFFFF00
	add r3, r12
	mov r9, r3
	movs r0, #0x02
	ldr r4, [sp, #0x048]
	orrs r4, r0
	str r4, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x04
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x0F
_0804F00E:
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x02]
_0804F014:
	ldr r5, [sp, #0x06C]
	ldr r7, [sp, #0x058]
	cmp r5, r7
	bgt _0804F01E
	b _0804EE02
_0804F01E:
	bl _0804F864
	lsls r0, r0, #0x00
_0804F024:
	.2byte 0xF800 @ bl lr
	.2byte 0xFFFF @ bl lr+4094
_0804F028:
	.2byte 0xFF00 @ bl lr+3584
	.2byte 0xFFFF @ bl lr+4094
_0804F02C:
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0804F036
	ldr r1, _0804F170 @ =0x00000FFF
	adds r0, r0, r1
_0804F036:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x040]
	subs r0, r0, r2
	str r0, [sp, #0x05C]
	ldr r2, [sp, #0x01C]
	cmp r2, #0x00
	bge _0804F048
	ldr r3, _0804F170 @ =0x00000FFF
	adds r2, r2, r3
_0804F048:
	asrs r5, r2, #0x0C
	ldr r1, _0804F174 @ =0xFFFFFF00
	ldr r4, [sp, #0x020]
	adds r0, r4, r1
	cmp r0, #0x00
	bge _0804F058
	ldr r7, _0804F178 @ =0x00000EFF
	adds r0, r4, r7
_0804F058:
	asrs r0, r0, #0x0C
	str r0, [sp, #0x060]
	cmp r5, r0
	ble _0804F064
	bl _0804F864
_0804F064:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	ldr r1, [sp, #0x05C]
	adds r2, r5, #0x0
	add r3, sp, #0x008
	bl sub_804FA30__21FieldPlayerShotBulletssPiN23
	mov r8, r0
	ldr r0, [sp, #0x040]
	cmp r0, #0x00
	beq _0804F0A2
	ldr r1, [sp, #0x008]
	ldr r0, [r6, #0x20]
	cmp r1, r0
	ble _0804F09C
	ldr r2, [sp, #0x034]
	cmp r1, r2
	ble _0804F09C
	ldr r0, [sp, #0x05C]
	adds r0, #0x01
	lsls r1, r0, #0x0C
	ldr r3, [sp, #0x024]
	cmp r1, r3
	ble _0804F09C
	b _0804F7E8
_0804F09C:
	ldr r4, [sp, #0x040]
	cmp r4, #0x00
	bne _0804F0B4
_0804F0A2:
	mov r7, r8
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	adds r1, r5, #0x1
	str r1, [sp, #0x070]
	cmp r0, #0x07
	bhi _0804F0B4
	b _0804F288
_0804F0B4:
	ldr r2, [sp, #0x00C]
	adds r3, r5, #0x1
	str r3, [sp, #0x070]
	cmp r2, #0x00
	bge _0804F0C0
	b _0804F288
_0804F0C0:
	ldr r4, [sp, #0x038]
	cmp r2, r4
	blt _0804F0C8
	b _0804F288
_0804F0C8:
	ldr r3, [sp, #0x010]
	ldr r7, [sp, #0x034]
	cmp r3, r7
	bgt _0804F0D2
	b _0804F288
_0804F0D2:
	ldr r1, [r6, #0x20]
	ldr r0, [r6, #0x24]
	adds r0, r1, r0
	ldrh r4, [r6, #0x34]
	adds r0, r0, r4
	cmp r2, r0
	blt _0804F0E2
	b _0804F288
_0804F0E2:
	cmp r3, r1
	bgt _0804F0E8
	b _0804F288
_0804F0E8:
	lsls r7, r5, #0x0C
	mov r12, r7
	ldr r0, [sp, #0x070]
	lsls r2, r0, #0x0C
	ldr r0, [sp, #0x05C]
	adds r0, #0x01
	lsls r4, r0, #0x0C
	mov r3, r8
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0E
	bne _0804F180
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	bge _0804F10C
	ldr r7, _0804F170 @ =0x00000FFF
	adds r0, r0, r7
_0804F10C:
	asrs r0, r0, #0x0C
	cmp r5, r0
	bne _0804F180
	ldr r1, [sp, #0x024]
	subs r0, r4, r1
	ldr r2, [sp, #0x02C]
	mov r3, r12
	subs r5, r2, r3
	subs r0, r0, r5
	cmp r0, #0x00
	bgt _0804F124
	b _0804F288
_0804F124:
	ldr r7, _0804F17C @ =0xFFFFF000
	adds r4, r4, r7
	subs r3, r1, r4
	movs r2, #0x80
	lsls r2, r2, #0x05
	subs r1, r2, r5
	subs r1, r1, r3
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r3, r1
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	adds r1, r1, r4
	mov r10, r1
	mov r0, r10
	ldr r1, _0804F174 @ =0xFFFFFF00
	ands r0, r1
	mov r10, r0
	subs r2, r2, r3
	subs r2, r2, r5
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r2, r5, r2
	adds r2, r2, r1
	ldrh r3, [r6, #0x36]
	adds r2, r2, r3
	add r2, r12
	mov r9, r2
	mov r4, r9
	ands r4, r1
	mov r9, r4
	movs r5, #0x03
	str r5, [sp, #0x048]
	b _0804F276
	.byte 0x00, 0x00
_0804F170: .4byte 0x00000FFF
_0804F174: .4byte 0xFFFFFF00
_0804F178: .4byte 0x00000EFF
_0804F17C: .4byte 0xFFFFF000
_0804F180:
	movs r7, #0x0F
	ands r7, r1
	cmp r7, #0x0F
	bne _0804F1F4
	ldr r0, [sp, #0x060]
	cmp r5, r0
	bne _0804F1F4
	ldr r3, [sp, #0x024]
	subs r1, r4, r3
	ldr r5, [sp, #0x030]
	subs r0, r2, r5
	subs r1, r1, r0
	cmp r1, #0x00
	ble _0804F288
	ldr r0, _0804F1EC @ =0xFFFFF000
	adds r4, r4, r0
	subs r3, r3, r4
	mov r1, r12
	subs r2, r5, r1
	subs r1, r3, r2
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r2, r1
	adds r1, r1, r4
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	mov r10, r1
	mov r4, r10
	ldr r5, _0804F1F0 @ =0xFFFFFF00
	ands r4, r5
	mov r10, r4
	subs r2, r2, r3
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r3, r3, r2
	add r3, r12
	adds r5, r5, r3
	ldr r0, _0804F1F0 @ =0xFFFFFF00
	ands r5, r0
	mov r9, r5
	movs r1, #0x03
	str r1, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x08
	orrs r1, r0
	lsls r1, r1, #0x04
	ands r7, r2
	orrs r7, r1
	strb r7, [r6, #0x02]
	b _0804F288
_0804F1EC: .4byte 0xFFFFF000
_0804F1F0: .4byte 0xFFFFFF00
_0804F1F4:
	mov r3, r8
	ldrb r0, [r3, #0x00]
	movs r1, #0x78
	ands r1, r0
	cmp r1, #0x30
	beq _0804F288
	cmp r1, #0x38
	beq _0804F288
	ldr r1, [sp, #0x040]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x09
	beq _0804F230
	cmp r0, #0x09
	bhi _0804F21A
	cmp r0, #0x08
	beq _0804F224
	b _0804F23E
_0804F21A:
	cmp r0, #0x0A
	beq _0804F23E
	cmp r0, #0x0B
	beq _0804F238
	b _0804F23E
_0804F224:
	ldr r5, _0804F22C @ =0xFFFFF800
	adds r2, r2, r5
	b _0804F242
	.byte 0x00, 0x00
_0804F22C: .4byte 0xFFFFF800
_0804F230:
	movs r7, #0x80
	lsls r7, r7, #0x04
	add r12, r7
	b _0804F242
_0804F238:
	ldr r0, _0804F294 @ =0xFFFFF800
	adds r4, r4, r0
	movs r1, #0x01
_0804F23E:
	cmp r1, #0x00
	beq _0804F288
_0804F242:
	ldr r1, [sp, #0x020]
	cmp r12, r1
	bge _0804F24E
	ldr r3, [sp, #0x02C]
	cmp r2, r3
	bgt _0804F25A
_0804F24E:
	ldr r5, [sp, #0x01C]
	cmp r2, r5
	ble _0804F288
	ldr r7, [sp, #0x030]
	cmp r12, r7
	bge _0804F288
_0804F25A:
	ldr r0, [sp, #0x014]
	cmp r4, r0
	bgt _0804F288
	ldr r1, [sp, #0x024]
	cmp r4, r1
	ble _0804F288
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #0x01
	adds r4, r4, r0
	mov r10, r4
	movs r0, #0x01
	ldr r2, [sp, #0x048]
	orrs r2, r0
	str r2, [sp, #0x048]
_0804F276:
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x08
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x02]
_0804F288:
	ldr r5, [sp, #0x070]
	ldr r3, [sp, #0x060]
	cmp r5, r3
	bgt _0804F292
	b _0804F064
_0804F292:
	b _0804F864
_0804F294: .4byte 0xFFFFF800
_0804F298:
	ldr r1, _0804F3D4 @ =0xFFFFFF00
	ldr r4, [sp, #0x018]
	adds r0, r4, r1
	cmp r0, #0x00
	bge _0804F2A6
	ldr r5, _0804F3D8 @ =0x00000EFF
	adds r0, r4, r5
_0804F2A6:
	asrs r0, r0, #0x0C
	ldr r7, [sp, #0x040]
	adds r0, r0, r7
	str r0, [sp, #0x064]
	ldr r2, [sp, #0x01C]
	cmp r2, #0x00
	bge _0804F2B8
	ldr r0, _0804F3DC @ =0x00000FFF
	adds r2, r2, r0
_0804F2B8:
	asrs r5, r2, #0x0C
	ldr r2, [sp, #0x020]
	adds r0, r2, r1
	cmp r0, #0x00
	bge _0804F2C6
	ldr r3, _0804F3D8 @ =0x00000EFF
	adds r0, r2, r3
_0804F2C6:
	asrs r0, r0, #0x0C
	str r0, [sp, #0x068]
	cmp r5, r0
	ble _0804F2D0
	b _0804F864
_0804F2D0:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	ldr r1, [sp, #0x064]
	adds r2, r5, #0x0
	add r3, sp, #0x008
	bl sub_804FA30__21FieldPlayerShotBulletssPiN23
	mov r8, r0
	ldr r4, [sp, #0x040]
	cmp r4, #0x00
	beq _0804F30C
	ldr r1, [sp, #0x008]
	ldr r0, [r6, #0x20]
	cmp r1, r0
	ble _0804F306
	ldr r7, [sp, #0x034]
	cmp r1, r7
	ble _0804F306
	ldr r0, [sp, #0x064]
	lsls r1, r0, #0x0C
	ldr r2, [sp, #0x028]
	cmp r1, r2
	bge _0804F306
	b _0804F800
_0804F306:
	ldr r3, [sp, #0x040]
	cmp r3, #0x00
	bne _0804F31E
_0804F30C:
	mov r4, r8
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	adds r7, r5, #0x1
	str r7, [sp, #0x074]
	cmp r0, #0x07
	bhi _0804F31E
	b _0804F4E6
_0804F31E:
	ldr r2, [sp, #0x00C]
	adds r0, r5, #0x1
	str r0, [sp, #0x074]
	cmp r2, #0x00
	bge _0804F32A
	b _0804F4E6
_0804F32A:
	ldr r1, [sp, #0x038]
	cmp r2, r1
	blt _0804F332
	b _0804F4E6
_0804F332:
	ldr r3, [sp, #0x010]
	ldr r4, [sp, #0x034]
	cmp r3, r4
	bgt _0804F33C
	b _0804F4E6
_0804F33C:
	ldr r1, [r6, #0x20]
	ldr r0, [r6, #0x24]
	adds r0, r1, r0
	ldrh r7, [r6, #0x34]
	adds r0, r0, r7
	cmp r2, r0
	blt _0804F34C
	b _0804F4E6
_0804F34C:
	cmp r3, r1
	bgt _0804F352
	b _0804F4E6
_0804F352:
	lsls r7, r5, #0x0C
	ldr r0, [sp, #0x074]
	lsls r2, r0, #0x0C
	ldr r1, [sp, #0x064]
	lsls r4, r1, #0x0C
	mov r3, r8
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	mov r12, r0
	ands r0, r1
	add r3, sp, #0x080
	strb r1, [r3, #0x00]
	cmp r0, #0x0C
	bne _0804F3E0
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	bge _0804F378
	ldr r1, _0804F3DC @ =0x00000FFF
	adds r0, r0, r1
_0804F378:
	asrs r0, r0, #0x0C
	cmp r5, r0
	bne _0804F3E0
	ldr r2, [sp, #0x028]
	subs r3, r2, r4
	ldr r5, [sp, #0x02C]
	subs r2, r5, r7
	subs r0, r3, r2
	cmp r0, #0x00
	bgt _0804F38E
	b _0804F4E6
_0804F38E:
	lsrs r1, r0, #0x1F
	adds r1, r0, r1
	asrs r1, r1, #0x01
	adds r1, r2, r1
	adds r1, r1, r4
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	mov r10, r1
	mov r0, r10
	ldr r1, _0804F3D4 @ =0xFFFFFF00
	ands r0, r1
	mov r10, r0
	subs r0, r2, r3
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r0, r3, r0
	adds r0, r0, r7
	ldr r2, _0804F3D4 @ =0xFFFFFF00
	adds r0, r0, r2
	ldrh r3, [r6, #0x36]
	adds r3, r3, r0
	ands r3, r2
	mov r9, r3
	movs r4, #0x03
	str r4, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	mov r0, r12
	b _0804F4E0
	.byte 0x00, 0x00
_0804F3D4: .4byte 0xFFFFFF00
_0804F3D8: .4byte 0x00000EFF
_0804F3DC: .4byte 0x00000FFF
_0804F3E0:
	movs r0, #0x0F
	mov r12, r0
	add r1, sp, #0x080
	ldrb r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x0D
	bne _0804F454
	ldr r3, [sp, #0x068]
	cmp r5, r3
	bne _0804F454
	ldr r0, [sp, #0x028]
	subs r5, r0, r4
	ldr r1, [sp, #0x030]
	subs r0, r2, r1
	subs r0, r5, r0
	cmp r0, #0x00
	ble _0804F4E6
	subs r3, r1, r7
	movs r2, #0x80
	lsls r2, r2, #0x05
	subs r1, r2, r3
	subs r1, r1, r5
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r5, r1
	adds r1, r1, r4
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	mov r10, r1
	mov r4, r10
	ldr r0, _0804F450 @ =0xFFFFFF00
	ands r4, r0
	mov r10, r4
	subs r2, r2, r5
	subs r2, r2, r3
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r3, r3, r2
	adds r3, r3, r7
	ldr r1, _0804F450 @ =0xFFFFFF00
	adds r1, r1, r3
	ldr r2, _0804F450 @ =0xFFFFFF00
	ands r1, r2
	mov r9, r1
	movs r3, #0x03
	str r3, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	mov r0, r12
	b _0804F4E0
_0804F450: .4byte 0xFFFFFF00
_0804F454:
	mov r5, r8
	ldrb r0, [r5, #0x00]
	movs r1, #0x78
	ands r1, r0
	cmp r1, #0x30
	beq _0804F4E6
	cmp r1, #0x38
	beq _0804F4E6
	ldr r1, [sp, #0x040]
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x09
	beq _0804F48C
	cmp r0, #0x09
	bhi _0804F47A
	cmp r0, #0x08
	beq _0804F480
	b _0804F49C
_0804F47A:
	cmp r0, #0x0A
	beq _0804F494
	b _0804F49C
_0804F480:
	ldr r0, _0804F488 @ =0xFFFFF800
	adds r2, r2, r0
	b _0804F4A0
	.byte 0x00, 0x00
_0804F488: .4byte 0xFFFFF800
_0804F48C:
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r7, r7, r1
	b _0804F4A0
_0804F494:
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r4, r4, r3
	movs r1, #0x01
_0804F49C:
	cmp r1, #0x00
	beq _0804F4E6
_0804F4A0:
	ldr r5, [sp, #0x020]
	cmp r7, r5
	bge _0804F4AC
	ldr r0, [sp, #0x02C]
	cmp r2, r0
	bgt _0804F4B8
_0804F4AC:
	ldr r1, [sp, #0x01C]
	cmp r2, r1
	ble _0804F4E6
	ldr r2, [sp, #0x030]
	cmp r7, r2
	bge _0804F4E6
_0804F4B8:
	ldr r3, [sp, #0x018]
	cmp r4, r3
	blt _0804F4E6
	ldr r5, [sp, #0x028]
	cmp r4, r5
	bge _0804F4E6
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #0x01
	subs r4, r4, r0
	mov r10, r4
	movs r0, #0x01
	ldr r7, [sp, #0x048]
	orrs r7, r0
	str r7, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x0F
_0804F4E0:
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x02]
_0804F4E6:
	ldr r5, [sp, #0x074]
	ldr r0, [sp, #0x068]
	cmp r5, r0
	bgt _0804F4F0
	b _0804F2D0
_0804F4F0:
	b _0804F864
_0804F4F2:
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0804F4FC
	ldr r1, _0804F55C @ =0x00000FFF
	adds r0, r0, r1
_0804F4FC:
	asrs r0, r0, #0x0C
	subs r1, r0, #0x1
	ldr r2, [sp, #0x01C]
	cmp r2, #0x00
	bge _0804F50A
	ldr r3, _0804F55C @ =0x00000FFF
	adds r2, r2, r3
_0804F50A:
	asrs r2, r2, #0x0C
	subs r4, r2, #0x1
	lsls r0, r0, #0x0C
	ldr r5, [sp, #0x024]
	cmp r0, r5
	bgt _0804F518
	b _0804F864
_0804F518:
	lsls r5, r2, #0x0C
	ldr r7, [sp, #0x02C]
	cmp r5, r7
	bgt _0804F522
	b _0804F864
_0804F522:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r2, r4, #0x0
	add r3, sp, #0x008
	bl sub_804FA30__21FieldPlayerShotBulletssPiN23
	ldr r1, [sp, #0x008]
	ldr r0, [r6, #0x20]
	cmp r1, r0
	ble _0804F564
	ldr r0, [sp, #0x034]
	cmp r1, r0
	ble _0804F564
	ldr r1, _0804F560 @ =0xFFFFFF00
	adds r0, r5, r1
	ldrh r2, [r6, #0x36]
	adds r2, r2, r0
	mov r9, r2
	movs r0, #0x02
	ldr r3, [sp, #0x048]
	orrs r3, r0
	str r3, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x01
	b _0804F858
_0804F55C: .4byte 0x00000FFF
_0804F560: .4byte 0xFFFFFF00
_0804F564:
	ldr r2, [sp, #0x00C]
	cmp r2, #0x00
	bge _0804F56C
	b _0804F864
_0804F56C:
	ldr r1, [r6, #0x20]
	ldr r0, [r6, #0x24]
	adds r0, r1, r0
	ldrh r5, [r6, #0x34]
	adds r0, r0, r5
	cmp r2, r0
	blt _0804F57C
	b _0804F864
_0804F57C:
	ldr r0, [sp, #0x010]
	cmp r0, r1
	bgt _0804F584
	b _0804F864
_0804F584:
	ldr r7, [sp, #0x038]
	cmp r2, r7
	blt _0804F58C
	b _0804F864
_0804F58C:
	ldr r1, [sp, #0x034]
	cmp r0, r1
	bgt _0804F594
	b _0804F864
_0804F594:
	adds r0, r4, #0x1
	lsls r0, r0, #0x0C
	ldr r2, [sp, #0x02C]
	cmp r0, r2
	bgt _0804F5A0
	b _0804F864
_0804F5A0:
	ldr r3, _0804F5BC @ =0xFFFFFF00
	adds r0, r0, r3
	ldrh r4, [r6, #0x36]
	adds r4, r4, r0
	mov r9, r4
	movs r0, #0x02
	ldr r5, [sp, #0x048]
	orrs r5, r0
	str r5, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x01
	b _0804F858
	.byte 0x00, 0x00
_0804F5BC: .4byte 0xFFFFFF00
_0804F5C0:
	ldr r7, _0804F62C @ =0xFFFFFF00
	ldr r1, [sp, #0x018]
	adds r0, r1, r7
	cmp r0, #0x00
	bge _0804F5CE
	ldr r2, _0804F630 @ =0x00000EFF
	adds r0, r1, r2
_0804F5CE:
	asrs r0, r0, #0x0C
	adds r1, r0, #0x1
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	bge _0804F5DC
	ldr r3, _0804F634 @ =0x00000FFF
	adds r0, r0, r3
_0804F5DC:
	asrs r2, r0, #0x0C
	subs r4, r2, #0x1
	lsls r0, r1, #0x0C
	ldr r5, [sp, #0x028]
	cmp r0, r5
	blt _0804F5EA
	b _0804F864
_0804F5EA:
	lsls r5, r2, #0x0C
	ldr r0, [sp, #0x02C]
	cmp r5, r0
	bgt _0804F5F4
	b _0804F864
_0804F5F4:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r2, r4, #0x0
	add r3, sp, #0x008
	bl sub_804FA30__21FieldPlayerShotBulletssPiN23
	ldr r1, [sp, #0x008]
	ldr r0, [r6, #0x20]
	cmp r1, r0
	ble _0804F638
	ldr r2, [sp, #0x034]
	cmp r1, r2
	ble _0804F638
	adds r0, r5, r7
	ldrh r3, [r6, #0x36]
	adds r3, r3, r0
	mov r9, r3
	movs r0, #0x02
	ldr r4, [sp, #0x048]
	orrs r4, r0
	str r4, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x01
	b _0804F858
_0804F62C: .4byte 0xFFFFFF00
_0804F630: .4byte 0x00000EFF
_0804F634: .4byte 0x00000FFF
_0804F638:
	ldr r2, [sp, #0x00C]
	cmp r2, #0x00
	bge _0804F640
	b _0804F864
_0804F640:
	ldr r1, [r6, #0x20]
	ldr r0, [r6, #0x24]
	adds r0, r1, r0
	ldrh r5, [r6, #0x34]
	adds r0, r0, r5
	cmp r2, r0
	blt _0804F650
	b _0804F864
_0804F650:
	ldr r0, [sp, #0x010]
	cmp r0, r1
	bgt _0804F658
	b _0804F864
_0804F658:
	ldr r7, [sp, #0x038]
	cmp r2, r7
	blt _0804F660
	b _0804F864
_0804F660:
	ldr r1, [sp, #0x034]
	cmp r0, r1
	bgt _0804F668
	b _0804F864
_0804F668:
	adds r0, r4, #0x1
	lsls r0, r0, #0x0C
	ldr r2, [sp, #0x02C]
	cmp r0, r2
	bgt _0804F674
	b _0804F864
_0804F674:
	ldr r3, _0804F690 @ =0xFFFFFF00
	adds r0, r0, r3
	ldrh r4, [r6, #0x36]
	adds r4, r4, r0
	mov r9, r4
	movs r0, #0x02
	ldr r5, [sp, #0x048]
	orrs r5, r0
	str r5, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x01
	b _0804F858
	.byte 0x00, 0x00
_0804F690: .4byte 0xFFFFFF00
_0804F694:
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0804F69E
	ldr r7, _0804F6F4 @ =0x00000FFF
	adds r0, r0, r7
_0804F69E:
	asrs r3, r0, #0x0C
	subs r1, r3, #0x1
	ldr r4, _0804F6F8 @ =0xFFFFFF00
	ldr r2, [sp, #0x020]
	adds r0, r2, r4
	cmp r0, #0x00
	bge _0804F6B0
	ldr r5, _0804F6FC @ =0x00000EFF
	adds r0, r2, r5
_0804F6B0:
	asrs r0, r0, #0x0C
	adds r2, r0, #0x1
	lsls r0, r3, #0x0C
	ldr r7, [sp, #0x024]
	cmp r0, r7
	bgt _0804F6BE
	b _0804F864
_0804F6BE:
	lsls r5, r2, #0x0C
	ldr r0, [sp, #0x030]
	cmp r5, r0
	blt _0804F6C8
	b _0804F864
_0804F6C8:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	add r3, sp, #0x008
	bl sub_804FA30__21FieldPlayerShotBulletssPiN23
	ldr r1, [sp, #0x008]
	ldr r0, [r6, #0x20]
	cmp r1, r0
	ble _0804F700
	ldr r2, [sp, #0x034]
	cmp r1, r2
	ble _0804F700
	adds r5, r5, r4
	mov r9, r5
	movs r0, #0x02
	ldr r3, [sp, #0x048]
	orrs r3, r0
	str r3, [sp, #0x048]
	b _0804F852
_0804F6F4: .4byte 0x00000FFF
_0804F6F8: .4byte 0xFFFFFF00
_0804F6FC: .4byte 0x00000EFF
_0804F700:
	ldr r2, [sp, #0x00C]
	cmp r2, #0x00
	bge _0804F708
	b _0804F864
_0804F708:
	ldr r1, [r6, #0x20]
	ldr r0, [r6, #0x24]
	adds r0, r1, r0
	ldrh r4, [r6, #0x34]
	adds r0, r0, r4
	cmp r2, r0
	blt _0804F718
	b _0804F864
_0804F718:
	ldr r0, [sp, #0x010]
	cmp r0, r1
	bgt _0804F720
	b _0804F864
_0804F720:
	ldr r7, [sp, #0x038]
	cmp r2, r7
	blt _0804F728
	b _0804F864
_0804F728:
	ldr r1, [sp, #0x034]
	cmp r0, r1
	bgt _0804F730
	b _0804F864
_0804F730:
	ldr r2, [sp, #0x030]
	cmp r5, r2
	blt _0804F738
	b _0804F864
_0804F738:
	ldr r3, _0804F748 @ =0xFFFFFF00
	adds r3, r3, r5
	mov r9, r3
	movs r0, #0x02
	ldr r4, [sp, #0x048]
	orrs r4, r0
	str r4, [sp, #0x048]
	b _0804F852
_0804F748: .4byte 0xFFFFFF00
_0804F74C:
	ldr r4, _0804F7AC @ =0xFFFFFF00
	ldr r5, [sp, #0x018]
	adds r0, r5, r4
	cmp r0, #0x00
	bge _0804F75A
	ldr r7, _0804F7B0 @ =0x00000EFF
	adds r0, r5, r7
_0804F75A:
	asrs r0, r0, #0x0C
	adds r1, r0, #0x1
	ldr r2, [sp, #0x020]
	adds r0, r2, r4
	cmp r0, #0x00
	bge _0804F76A
	ldr r3, _0804F7B0 @ =0x00000EFF
	adds r0, r2, r3
_0804F76A:
	asrs r0, r0, #0x0C
	adds r2, r0, #0x1
	lsls r0, r1, #0x0C
	ldr r5, [sp, #0x028]
	cmp r0, r5
	bge _0804F864
	lsls r5, r2, #0x0C
	ldr r7, [sp, #0x030]
	cmp r5, r7
	bge _0804F864
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	add r3, sp, #0x008
	bl sub_804FA30__21FieldPlayerShotBulletssPiN23
	ldr r1, [sp, #0x008]
	ldr r0, [r6, #0x20]
	cmp r1, r0
	ble _0804F818
	ldr r0, [sp, #0x034]
	cmp r1, r0
	ble _0804F818
	adds r5, r5, r4
	mov r9, r5
	movs r0, #0x02
	ldr r1, [sp, #0x048]
	orrs r1, r0
	str r1, [sp, #0x048]
	b _0804F852
	.byte 0x00, 0x00
_0804F7AC: .4byte 0xFFFFFF00
_0804F7B0: .4byte 0x00000EFF
_0804F7B4:
	ldr r2, _0804F7D0 @ =0xFFFFFF00
	adds r0, r0, r2
	ldrh r3, [r6, #0x36]
	adds r3, r3, r0
	mov r9, r3
	movs r0, #0x02
	ldr r4, [sp, #0x048]
	orrs r4, r0
	str r4, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x01
	b _0804F858
	.byte 0x00, 0x00
_0804F7D0: .4byte 0xFFFFFF00
_0804F7D4:
	ldr r5, _0804F7E4 @ =0xFFFFFF00
	adds r5, r5, r0
	mov r9, r5
	movs r0, #0x02
	ldr r7, [sp, #0x048]
	orrs r7, r0
	str r7, [sp, #0x048]
	b _0804F852
_0804F7E4: .4byte 0xFFFFFF00
_0804F7E8:
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	mov r10, r1
	movs r0, #0x01
	ldr r1, [sp, #0x048]
	orrs r1, r0
	str r1, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x08
	b _0804F858
_0804F800:
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	mov r10, r1
	movs r0, #0x01
	ldr r2, [sp, #0x048]
	orrs r2, r0
	str r2, [sp, #0x048]
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x02
	b _0804F858
_0804F818:
	ldr r2, [sp, #0x00C]
	cmp r2, #0x00
	blt _0804F864
	ldr r1, [r6, #0x20]
	ldr r0, [r6, #0x24]
	adds r0, r1, r0
	ldrh r3, [r6, #0x34]
	adds r0, r0, r3
	cmp r2, r0
	bge _0804F864
	ldr r0, [sp, #0x010]
	cmp r0, r1
	ble _0804F864
	ldr r4, [sp, #0x038]
	cmp r2, r4
	bge _0804F864
	ldr r7, [sp, #0x034]
	cmp r0, r7
	ble _0804F864
	ldr r0, [sp, #0x030]
	cmp r5, r0
	bge _0804F864
	ldr r1, _0804F900 @ =0xFFFFFF00
	adds r1, r1, r5
	mov r9, r1
	movs r0, #0x02
	ldr r2, [sp, #0x048]
	orrs r2, r0
	str r2, [sp, #0x048]
_0804F852:
	ldrb r2, [r6, #0x02]
	lsrs r1, r2, #0x04
	movs r0, #0x04
_0804F858:
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x02]
_0804F864:
	movs r0, #0x01
	ldr r3, [sp, #0x048]
	ands r0, r3
	cmp r0, #0x00
	beq _0804F87E
	mov r4, r10
	str r4, [r6, #0x08]
	ldrh r1, [r6, #0x32]
	lsrs r0, r1, #0x01
	subs r4, r4, r0
	str r4, [sp, #0x024]
	adds r1, r4, r1
	str r1, [sp, #0x028]
_0804F87E:
	movs r0, #0x02
	ldr r5, [sp, #0x048]
	ands r5, r0
	cmp r5, #0x00
	beq _0804F89C
	mov r7, r9
	str r7, [r6, #0x0C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	add r1, r9
	ldrh r0, [r6, #0x36]
	subs r1, r1, r0
	str r1, [sp, #0x02C]
	adds r0, r1, r0
	str r0, [sp, #0x030]
_0804F89C:
	ldr r0, [sp, #0x044]
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804F8DC
	ldr r1, [r6, #0x08]
	mov r10, r1
	ldr r2, [r6, #0x0C]
	mov r9, r2
	movs r3, #0x00
	str r3, [sp, #0x048]
	ldr r4, [sp, #0x044]
	movs r2, #0x00
	ldsb r2, [r4, r2]
	adds r4, #0x01
	str r4, [sp, #0x044]
	cmp r2, #0x03
	bgt _0804F8C8
	bl _0804EB0C
_0804F8C8:
	ldr r5, [sp, #0x040]
	cmp r5, #0x00
	beq _0804F8DC
_0804F8CE:
	ldrb r1, [r6, #0x02]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	bne _0804F8DC
	bl _0804EB0C
_0804F8DC:
	ldr r7, [sp, #0x078]
	str r7, [sp, #0x040]
	adds r0, r7, #0x0
	cmp r0, #0x01
	bgt _0804F8EA
	bl _0804EAD0
_0804F8EA:
	ldrb r0, [r6, #0x02]
	lsrs r0, r0, #0x04
	add sp, #0x084
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0804F900: .4byte 0xFFFFFF00
