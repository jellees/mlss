	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8129C98
sub_8129C98:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	adds r0, #0x67
	ldrb r0, [r0, #0x00]
	mov r10, r0
	cmp r0, #0x01
	beq _08129CB2
	b _0812A270
_08129CB2:
	movs r0, #0x00
	str r0, [sp, #0x018]
	ldr r1, _08129D70 @ =0x083BADC0
	ldr r0, _08129D74 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x68
	ldrb r1, [r0, #0x00]
	str r0, [sp, #0x024]
	adds r0, #0x54
	str r0, [sp, #0x01C]
	adds r2, r7, #0x0
	adds r2, #0xC8
	str r2, [sp, #0x020]
	cmp r1, #0x02
	bne _08129CE0
	b _0812A0E8
_08129CE0:
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08129CFC
	ldr r3, _08129D78 @ =0x03001034
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF2
	lsls r2, r2, #0x04
	ldr r3, [r3, #0x00]
	movs r0, #0x00
	bl _call_via_r3
_08129CFC:
	adds r0, r7, #0x0
	adds r0, #0xBA
	ldrh r1, [r0, #0x00]
	ldr r0, _08129D7C @ =0x0000FFFF
	cmp r1, r0
	bne _08129D80
	adds r4, r7, #0x0
	adds r4, #0xCC
	movs r2, #0x90
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x09
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	ldr r3, [r6, #0x1C]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x0B
	bl sub_8199D5C
	movs r5, #0x00
	ldr r1, [r6, #0x1C]
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08129D52
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08129D52
	b _0812A0B4
_08129D52:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r5, #0x01
	ldr r0, [r6, #0x1C]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08129D52
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08129D52
	b _0812A0B4
	.byte 0x00, 0x00
_08129D70: .4byte 0x083BADC0
_08129D74: .4byte 0x0300034C
_08129D78: .4byte 0x03001034
_08129D7C: .4byte 0x0000FFFF
_08129D80:
	adds r0, r7, #0x0
	adds r0, #0xAE
	ldrb r1, [r0, #0x00]
	movs r3, #0x80
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08129D92
	b _08129EAC
_08129D92:
	adds r0, r7, #0x0
	adds r0, #0xB3
	ldrb r2, [r0, #0x00]
	cmp r2, #0x02
	bne _08129E08
	subs r0, #0x0F
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08129E08
	adds r4, r7, #0x0
	adds r4, #0xCC
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	str r2, [sp, #0x00C]
	movs r0, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	ldr r3, [r6, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x0B
	bl sub_8199D5C
	movs r5, #0x00
	ldr r1, [r6, #0x18]
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08129DEC
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08129DEC
	b _0812A0B4
_08129DEC:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r5, #0x01
	ldr r0, [r6, #0x18]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08129DEC
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08129DEC
	b _0812A0B4
_08129E08:
	movs r5, #0x00
	ldr r1, [sp, #0x01C]
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08129E46
	adds r4, r7, #0x0
	adds r4, #0xCC
	movs r2, #0x90
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	ldr r3, [r6, #0x14]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x0B
	bl sub_8199D5C
_08129E46:
	ldr r0, [sp, #0x01C]
	ldrh r4, [r0, #0x00]
	ldr r0, [r6, #0x14]
	adds r1, r0, r4
	ldrb r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xC8
	str r2, [sp, #0x020]
	cmp r0, #0x00
	bne _08129E82
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08129E68
	ldr r0, [sp, #0x01C]
	strh r5, [r0, #0x00]
	b _0812A0B4
_08129E68:
	ldr r0, [r6, #0x14]
	adds r1, r0, r4
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08129E82
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _08129E82
	adds r5, #0x01
	cmp r5, #0x03
	bne _08129E82
	b _0812A0B4
_08129E82:
	adds r0, r7, #0x0
	adds r0, #0xCC
	bl sub_8199624
	adds r4, #0x01
	ldr r1, [sp, #0x01C]
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x14]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08129E82
	subs r0, #0x01
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08129E68
	ldr r2, [sp, #0x01C]
	strh r1, [r2, #0x00]
	b _0812A0B4
_08129EAC:
	adds r2, r7, #0x0
	adds r2, #0xAD
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	mov r8, r2
	cmp r0, #0x00
	beq _08129F5A
	adds r4, r7, #0x0
	adds r4, #0xCC
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	adds r0, #0x03
	lsls r0, r0, #0x02
	adds r0, r6, r0
	ldr r3, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x0B
	bl sub_8199D5C
	movs r5, #0x00
	b _08129F0C
_08129F04:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r5, #0x01
_08129F0C:
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	adds r0, #0x03
	lsls r0, r0, #0x02
	adds r0, r6, r0
	ldr r0, [r0, #0x00]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08129F04
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08129F04
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r5, r7, r0
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x20]
	str r1, [sp, #0x000]
	movs r4, #0x05
	str r4, [sp, #0x004]
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x32
	bl sub_8083860
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x24]
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x3F
	bl sub_8083860
	b _0812A0B4
_08129F5A:
	movs r1, #0x00
	mov r8, r1
	adds r4, r7, #0x0
	adds r4, #0xCC
	movs r2, #0x90
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	ldr r3, [r6, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x0B
	bl sub_8199D5C
	movs r5, #0x00
	ldr r1, [r6, #0x00]
	ldrb r0, [r1, #0x00]
	movs r2, #0xE0
	adds r2, r2, r7
	mov r9, r2
	movs r2, #0xF4
	adds r2, r2, r7
	mov r10, r2
	b _08129FCC
_08129FA8:
	ldr r0, [r6, #0x00]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08129FBE
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _08129FBE
	movs r0, #0x01
	add r8, r0
_08129FBE:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r5, #0x01
	ldr r0, [r6, #0x00]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
_08129FCC:
	cmp r0, #0x00
	bne _08129FBE
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08129FA8
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	mov r0, r9
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	movs r0, #0x0D
	mov r2, r8
	muls r2, r0
	adds r2, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, [r6, #0x04]
	mov r0, r9
	movs r1, #0x00
	bl sub_8199D5C
	movs r4, #0x00
	ldr r1, [r6, #0x04]
	b _0812A03C
_0812A01A:
	ldr r0, [r6, #0x04]
	adds r1, r0, r4
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0812A030
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _0812A030
	movs r2, #0x01
	add r8, r2
_0812A030:
	mov r0, r9
	bl sub_8199624
	adds r4, #0x01
	ldr r0, [r6, #0x04]
	adds r1, r0, r4
_0812A03C:
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0812A030
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0812A01A
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	mov r0, r10
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	movs r0, #0x0D
	mov r2, r8
	muls r2, r0
	adds r2, #0x25
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, [r6, #0x08]
	mov r0, r10
	movs r1, #0x00
	bl sub_8199D5C
	movs r4, #0x00
	ldr r1, [r6, #0x08]
	b _0812A0A6
_0812A08C:
	ldr r0, [r6, #0x08]
	adds r1, r0, r4
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0812A09A
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
_0812A09A:
	mov r0, r10
	bl sub_8199624
	adds r4, #0x01
	ldr r0, [r6, #0x08]
	adds r1, r0, r4
_0812A0A6:
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0812A09A
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0812A08C
_0812A0B4:
	ldr r2, [sp, #0x01C]
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0812A0E8
	ldr r2, _0812A144 @ =0x03001034
	ldr r0, _0812A148 @ =0x08198154
	ldr r1, _0812A14C @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x24]
	ldr r1, [r1, #0x28]
	ldr r1, [r1, #0x04]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	movs r2, #0xF2
	lsls r2, r2, #0x04
	bl _call_via_r3
_0812A0E8:
	ldr r1, [sp, #0x024]
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	bne _0812A0F2
	b _0812A3CE
_0812A0F2:
	adds r2, r7, #0x0
	adds r2, #0xBE
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	beq _0812A110
	ldr r1, _0812A150 @ =0x02000040
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	movs r0, #0x00
	strh r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB2
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0812A110:
	ldr r3, _0812A144 @ =0x03001034
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	movs r2, #0x8A
	lsls r2, r2, #0x04
	ldr r3, [r3, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	adds r0, r7, #0x0
	adds r0, #0xBA
	ldrh r0, [r0, #0x00]
	ldr r1, _0812A154 @ =0x0000FFFF
	cmp r0, r1
	beq _0812A13C
	adds r2, r7, #0x0
	adds r2, #0x82
	ldrh r0, [r2, #0x00]
	cmp r0, r1
	bne _0812A158
_0812A13C:
	ldr r6, [r6, #0x28]
	str r6, [sp, #0x018]
	b _0812A1CA
	.byte 0x00, 0x00
_0812A144: .4byte 0x03001034
_0812A148: .4byte 0x08198154
_0812A14C: .4byte 0x081980D8
_0812A150: .4byte 0x02000040
_0812A154: .4byte 0x0000FFFF
_0812A158:
	adds r0, r7, #0x0
	adds r0, #0xB8
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0812A16C
	adds r0, r7, #0x0
	adds r0, #0xB7
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812A1B4
_0812A16C:
	ldr r3, [r7, #0x5C]
	ldr r0, _0812A1B0 @ =0x03000D40
	ldr r2, [r0, #0x00]
	lsls r2, r2, #0x1C
	lsrs r1, r2, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r3, r0
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	lsrs r2, r2, #0x1E
	lsls r0, r2, #0x03
	subs r0, r0, r2
	lsls r0, r0, #0x05
	subs r0, r0, r2
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r3, r3, r1
	ldrh r0, [r3, #0x18]
	bl sub_8123308
	str r0, [sp, #0x018]
	adds r1, r7, #0x0
	adds r1, #0xB2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _0812A1CA
_0812A1B0: .4byte 0x03000D40
_0812A1B4:
	adds r0, r7, #0x0
	adds r0, #0xB0
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0812A1CA
	ldrh r0, [r2, #0x00]
	bl sub_8123308
	str r0, [sp, #0x018]
_0812A1CA:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	beq _0812A230
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r4, r7, r1
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x0B
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x17
	movs r3, #0x00
	bl sub_8199D78
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x08
	ldr r3, [sp, #0x018]
	bl sub_8199D5C
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r4, r7, r0
_0812A20E:
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	bne _0812A220
	ldrb r0, [r1, #0x01]
	cmp r0, #0x00
	bne _0812A220
	adds r0, r1, #0x2
	str r0, [r4, #0x00]
_0812A220:
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r7, r1
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0812A20E
_0812A230:
	ldr r2, _0812A264 @ =0x03001034
	ldr r0, _0812A268 @ =0x08198154
	ldr r1, _0812A26C @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x24]
	ldr r1, [r1, #0x28]
	ldr r1, [r1, #0x04]
	adds r2, #0x70
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	movs r2, #0x8A
	lsls r2, r2, #0x04
	bl _call_via_r3
	movs r0, #0x00
	ldr r1, [sp, #0x024]
	strb r0, [r1, #0x00]
	b _0812A3CE
	.byte 0x00, 0x00
_0812A264: .4byte 0x03001034
_0812A268: .4byte 0x08198154
_0812A26C: .4byte 0x081980D8
_0812A270:
	mov r2, r10
	cmp r2, #0x02
	bne _0812A2EC
	ldr r5, _0812A2E8 @ =0x03001034
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r4, r7, r0
	ldr r1, [r4, #0x00]
	movs r2, #0xF2
	lsls r2, r2, #0x04
	ldr r3, [r5, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r0, [r7, #0x6C]
	ldr r1, [r7, #0x24]
	ldr r1, [r1, #0x28]
	ldr r2, [r1, #0x04]
	movs r6, #0xCA
	lsls r6, r6, #0x01
	adds r2, r2, r6
	ldr r1, [r4, #0x00]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	bl sub_80E9384
	movs r1, #0x92
	lsls r1, r1, #0x01
	adds r4, r7, r1
	ldr r1, [r4, #0x00]
	movs r2, #0x8A
	lsls r2, r2, #0x04
	ldr r3, [r5, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r0, [r7, #0x6C]
	ldr r1, [r7, #0x24]
	ldr r1, [r1, #0x28]
	ldr r2, [r1, #0x04]
	adds r2, r2, r6
	ldr r1, [r4, #0x00]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	bl sub_80E9384
	adds r4, r7, #0x0
	adds r4, #0xC8
	ldr r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	ldr r3, [r5, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	adds r2, r7, #0x0
	adds r2, #0xBC
	str r2, [sp, #0x01C]
	str r4, [sp, #0x020]
	b _0812A3CE
_0812A2E8: .4byte 0x03001034
_0812A2EC:
	adds r0, r7, #0x0
	adds r0, #0xBC
	str r0, [sp, #0x01C]
	adds r1, r7, #0x0
	adds r1, #0xC8
	str r1, [sp, #0x020]
	mov r2, r10
	cmp r2, #0x03
	bne _0812A3CE
	ldr r0, [r7, #0x6C]
	movs r4, #0xF2
	lsls r4, r4, #0x04
	adds r1, r4, #0x0
	bl sub_80E9414
	adds r1, r0, #0x0
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r5, r7, r0
	ldr r0, [r7, #0x24]
	ldr r0, [r0, #0x28]
	ldr r0, [r0, #0x04]
	movs r6, #0xCA
	lsls r6, r6, #0x01
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x00]
	ldr r2, _0812A3E8 @ =0x03001034
	ldr r3, [r2, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r0, [r7, #0x24]
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x04]
	adds r1, r1, r6
	ldr r0, [r5, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	bl sub_8127E38
	movs r1, #0xE0
	lsls r1, r1, #0x08
	mov r9, r1
	mov r2, r9
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x020]
	ldr r2, [r1, #0x00]
	movs r1, #0x0B
	str r1, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x01
	mov r8, r0
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x0B
	bl sub_8127DB4
	ldr r0, [r7, #0x6C]
	movs r4, #0x8A
	lsls r4, r4, #0x04
	adds r1, r4, #0x0
	bl sub_80E9414
	adds r1, r0, #0x0
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r5, r7, r2
	ldr r0, [r7, #0x24]
	ldr r0, [r0, #0x28]
	ldr r0, [r0, #0x04]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x00]
	ldr r0, _0812A3E8 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r0, [r7, #0x24]
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x04]
	adds r1, r1, r6
	ldr r0, [r5, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	bl sub_8127E38
	mov r1, r9
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x020]
	ldr r1, [r2, #0x00]
	mov r2, r10
	str r2, [sp, #0x000]
	str r0, [sp, #0x004]
	mov r0, r8
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x20
	movs r2, #0x78
	movs r3, #0x17
	bl sub_8127DB4
_0812A3CE:
	ldr r1, [sp, #0x01C]
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0812A3F0
	adds r2, r7, #0x0
	adds r2, #0x68
	ldrb r1, [r2, #0x00]
	cmp r1, #0x00
	bne _0812A3EC
	adds r0, r7, #0x0
	adds r0, #0x67
	strb r1, [r0, #0x00]
	b _0812A3F0
_0812A3E8: .4byte 0x03001034
_0812A3EC:
	movs r0, #0x02
	strb r0, [r2, #0x00]
_0812A3F0:
	ldr r2, _0812A41C @ =0x03001034
	ldr r0, _0812A420 @ =0x08198154
	ldr r1, _0812A424 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r2, [sp, #0x020]
	ldr r0, [r2, #0x00]
	ldr r1, _0812A428 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl _call_via_r3
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0812A41C: .4byte 0x03001034
_0812A420: .4byte 0x08198154
_0812A424: .4byte 0x081980D8
_0812A428: .4byte 0x0600D000
