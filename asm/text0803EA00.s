	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start update__19FieldProcess803EA00
update__19FieldProcess803EA00:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	ldr r0, [r0, #0x14]
	mov r8, r0
	ldr r0, _0803EBDC @ =0x00000291
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0803EA22
	bl _0803F3B8
_0803EA22:
	mov r2, r8
	adds r2, #0xFC
	ldrb r1, [r2, #0x00]
	movs r0, #0x78
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _0803EA7C
	mov r0, r8
	bl sub_8027378__12FieldManager
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _0803EA7C
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	cmp r0, #0x01
	beq _0803EA68
	cmp r0, #0x02
	bne _0803EA72
	ldr r2, _0803EBE0 @ =0x0300034C
	ldr r0, _0803EBE4 @ =0x00000884
	adds r2, r2, r0
	mov r0, r8
	adds r0, #0xF6
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	subs r0, #0x02
	ldrh r0, [r0, #0x00]
	orrs r1, r0
	ldr r0, [r2, #0x00]
	bics r0, r1
	str r0, [r2, #0x00]
_0803EA68:
	mov r0, r8
	adds r0, #0xF6
	strh r3, [r0, #0x00]
	subs r0, #0x02
	strh r3, [r0, #0x00]
_0803EA72:
	ldrb r1, [r4, #0x00]
	movs r0, #0x79
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_0803EA7C:
	mov r2, r8
	adds r2, #0xF8
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r1, r8
	adds r1, #0x28
	str r1, [sp, #0x008]
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r8
	ldr r2, [r4, #0x00]
	str r2, [sp, #0x00C]
	movs r5, #0x81
	lsls r5, r5, #0x02
	add r5, r8
	ldr r6, [r5, #0x00]
	movs r3, #0x00
	str r3, [sp, #0x010]
	ldr r3, _0803EBE8 @ =0x0000020A
	add r3, r8
	ldrb r2, [r3, #0x00]
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _0803EB6A
	movs r1, #0x60
	ands r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x010]
	ldr r7, [sp, #0x00C]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bhi _0803EAFC
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x00]
	ldr r1, [r4, #0x00]
	ldr r2, _0803EBEC @ =0x00000351
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r3, #0x41
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r2, [r5, #0x00]
	cmp r2, #0x00
	beq _0803EAFC
	ldr r4, _0803EBEC @ =0x00000351
	adds r2, r2, r4
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_0803EAFC:
	ldr r4, _0803EBE8 @ =0x0000020A
	add r4, r8
	ldrb r1, [r4, #0x00]
	movs r3, #0x60
	ands r3, r1
	cmp r3, #0x00
	beq _0803EB6A
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0803EB6A
	movs r0, #0xC7
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r2, #0x20
	eors r2, r3
	negs r1, r2
	orrs r1, r2
	asrs r1, r1, #0x1F
	movs r2, #0x04
	ands r1, r2
	mov r2, r8
	adds r2, #0xE8
	adds r2, r2, r1
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x0A]
	lsls r1, r1, #0x18
	ldrb r2, [r3, #0x09]
	lsls r2, r2, #0x10
	orrs r1, r2
	ldrb r2, [r3, #0x08]
	lsls r2, r2, #0x08
	orrs r1, r2
	ldrb r2, [r3, #0x07]
	orrs r1, r2
	ldr r2, [sp, #0x00C]
	adds r2, #0x54
	ldrb r2, [r2, #0x00]
	ldr r5, [sp, #0x00C]
	movs r7, #0xD1
	lsls r7, r7, #0x02
	adds r3, r5, r7
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	bl sub_80F028C
	ldrb r1, [r4, #0x00]
	movs r0, #0x61
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_0803EB6A:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0803EB7C
	b _0803ED78
_0803EB7C:
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	beq _0803EB84
	b _0803ED78
_0803EB84:
	ldr r0, _0803EBF0 @ =0x00000209
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0803EB94
	b _0803ED78
_0803EB94:
	ldr r1, [sp, #0x00C]
	ldr r2, _0803EBF4 @ =0x000002B5
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r2, #0x07
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0803EBA8
	b _0803ED78
_0803EBA8:
	ldr r3, _0803EBF4 @ =0x000002B5
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0803EBB8
	b _0803ED78
_0803EBB8:
	movs r4, #0x00
	mov r10, r4
	mov r5, r8
	adds r5, #0xE8
	str r5, [sp, #0x028]
	mov r7, r8
	adds r7, #0xD8
	str r7, [sp, #0x024]
	ldr r0, _0803EBE8 @ =0x0000020A
	add r0, r8
	str r0, [sp, #0x01C]
	mov r9, r5
_0803EBD0:
	mov r1, r10
	cmp r1, #0x00
	bne _0803EBF8
	movs r0, #0x80
	lsls r0, r0, #0x02
	b _0803EBFC
_0803EBDC: .4byte 0x00000291
_0803EBE0: .4byte 0x0300034C
_0803EBE4: .4byte 0x00000884
_0803EBE8: .4byte 0x0000020A
_0803EBEC: .4byte 0x00000351
_0803EBF0: .4byte 0x00000209
_0803EBF4: .4byte 0x000002B5
_0803EBF8:
	movs r0, #0x81
	lsls r0, r0, #0x02
_0803EBFC:
	add r0, r8
	ldr r6, [r0, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x014]
	ldr r4, _0803ED08 @ =0x0000020A
	add r4, r8
	ldrb r1, [r4, #0x00]
	movs r7, #0x08
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0803EC22
	ldr r3, [r6, #0x18]
	str r3, [sp, #0x018]
	movs r0, #0x00
	str r0, [r6, #0x18]
_0803EC22:
	ldr r5, [sp, #0x024]
	ldr r1, [r5, #0x00]
	adds r0, r6, #0x0
	bl sub_8049FF4__20FieldPlayerCharacterPUc
	adds r5, r0, #0x0
	ldrb r1, [r4, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0803EC3C
	ldr r7, [sp, #0x018]
	str r7, [r6, #0x18]
_0803EC3C:
	cmp r5, #0x00
	bne _0803EC56
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ldr r2, [sp, #0x024]
	ldr r1, [r2, #0x00]
	bl sub_804E5C4__21FieldPlayerShotBulletPUc
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0803EC56
	b _0803ED5E
_0803EC56:
	ldrb r0, [r5, #0x06]
	movs r1, #0x03
	ands r1, r0
	ldrb r0, [r5, #0x04]
	lsrs r4, r0, #0x07
	cmp r1, #0x01
	bls _0803EC72
	mov r0, r8
	mov r1, r10
	bl sub_8025D24__12FieldManageri
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0803ED50
_0803EC72:
	cmp r4, #0x01
	beq _0803EC9E
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r7, _0803ED0C @ =0x00000345
	adds r1, r6, r7
	movs r2, #0x00
	ldsb r2, [r0, r2]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r2, r0
	bne _0803EC9E
	ldr r1, [sp, #0x028]
	ldr r0, [r1, #0x00]
	cmp r0, r5
	beq _0803ED50
	mov r0, r8
	adds r0, #0xEC
	ldr r0, [r0, #0x00]
	cmp r0, r5
	beq _0803ED50
_0803EC9E:
	movs r0, #0xAE
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0803ED4A
	ldr r0, _0803ED10 @ =0x00000209
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0803ED4A
	cmp r4, #0x01
	beq _0803ECCC
	ldr r2, [sp, #0x01C]
	ldrb r1, [r2, #0x00]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0x00
	bne _0803ED4A
_0803ECCC:
	ldrb r0, [r5, #0x05]
	lsrs r4, r0, #0x07
	ldr r3, [sp, #0x014]
	ldrb r0, [r3, #0x00]
	cmp r0, #0x02
	bls _0803ED14
	cmp r0, #0x0B
	beq _0803ED14
	cmp r4, #0x01
	bne _0803ED14
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	bl sub_802FAE4__12FieldManagerii
	mov r7, r10
	lsls r4, r7
	movs r0, #0x03
	ands r4, r0
	lsls r2, r4, #0x05
	ldr r1, [sp, #0x01C]
	ldrb r0, [r1, #0x00]
	movs r3, #0x61
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	orrs r0, r2
	ldr r4, [sp, #0x01C]
	strb r0, [r4, #0x00]
	b _0803ED4A
_0803ED08: .4byte 0x0000020A
_0803ED0C: .4byte 0x00000345
_0803ED10: .4byte 0x00000209
_0803ED14:
	movs r0, #0xC7
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldrb r1, [r5, #0x0A]
	lsls r1, r1, #0x18
	ldrb r2, [r5, #0x09]
	lsls r2, r2, #0x10
	orrs r1, r2
	ldrb r2, [r5, #0x08]
	lsls r2, r2, #0x08
	orrs r1, r2
	ldrb r2, [r5, #0x07]
	orrs r1, r2
	adds r2, r6, #0x0
	adds r2, #0x54
	ldrb r2, [r2, #0x00]
	movs r7, #0xD1
	lsls r7, r7, #0x02
	adds r3, r6, r7
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	bl sub_80F028C
_0803ED4A:
	mov r0, r9
	str r5, [r0, #0x00]
	b _0803ED78
_0803ED50:
	mov r1, r9
	ldr r0, [r1, #0x00]
	cmp r0, r5
	beq _0803ED62
	movs r0, #0x00
	str r0, [r1, #0x00]
	b _0803ED62
_0803ED5E:
	mov r2, r9
	str r5, [r2, #0x00]
_0803ED62:
	ldr r3, [sp, #0x010]
	cmp r3, #0x00
	bne _0803ED78
	movs r4, #0x04
	add r9, r4
	movs r5, #0x01
	add r10, r5
	mov r7, r10
	cmp r7, #0x01
	bgt _0803ED78
	b _0803EBD0
_0803ED78:
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _0803ED8C
	b _0803F3B8
_0803ED8C:
	ldr r5, [sp, #0x00C]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x020]
	movs r2, #0x00
	mov r10, r2
_0803ED9C:
	movs r3, #0xCF
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x7F
	bne _0803EDAE
	b _0803F390
_0803EDAE:
	lsls r0, r1, #0x19
	asrs r0, r0, #0x17
	ldr r4, [sp, #0x008]
	adds r0, r0, r4
	ldr r6, [r0, #0x00]
	ldr r7, _0803EDD4 @ =0x0000020E
	adds r0, r6, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	cmp r0, #0x07
	bls _0803EDC8
	b _0803F390
_0803EDC8:
	lsls r0, r0, #0x02
	ldr r1, _0803EDD8 @ =0x0803EDDC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0803EDD4: .4byte 0x0000020E
_0803EDD8: .4byte 0x0803EDDC
	.4byte _0803EDFC
	.4byte _0803EE0E
	.4byte _0803EF14
	.4byte _0803F12C
	.4byte _0803F344
	.4byte _0803F2B4
	.4byte _0803F390
	.4byte _0803F01C
_0803EDFC:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0803EE0E
	b _0803F390
_0803EE0E:
	movs r1, #0x8B
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0803EE1C
	b _0803F390
_0803EE1C:
	ldr r2, _0803EF00 @ =0x0000020F
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0803EE2E
	b _0803F390
_0803EE2E:
	ldr r3, _0803EF04 @ =0x00000352
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0803EE3E
	b _0803F390
_0803EE3E:
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x00
	bne _0803EE82
	movs r7, #0xCF
	lsls r7, r7, #0x02
	adds r0, r5, r7
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	ldr r2, _0803EF08 @ =0x0000033D
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	cmp r1, r0
	bne _0803EEEE
	subs r3, #0x10
	adds r0, r5, r3
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0803EE82
	ldr r4, _0803EF0C @ =0x00000343
	adds r0, r5, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _0803EEEE
_0803EE82:
	movs r7, #0x83
	lsls r7, r7, #0x02
	adds r0, r6, r7
	ldrb r0, [r0, #0x00]
	movs r3, #0x0E
	ands r3, r0
	cmp r3, #0x08
	bne _0803EEBE
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	ldr r2, _0803EF08 @ =0x0000033D
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	cmp r1, r0
	bne _0803EEEE
	movs r4, #0xD1
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r7, _0803EF10 @ =0x00000345
	adds r1, r5, r7
	movs r2, #0x00
	ldsb r2, [r0, r2]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r2, r0
	bne _0803EEEE
_0803EEBE:
	cmp r3, #0x02
	beq _0803EEEE
	cmp r3, #0x04
	bne _0803EECE
	ldr r1, [sp, #0x020]
	ldrb r0, [r1, #0x02]
	cmp r0, #0x05
	beq _0803EEDE
_0803EECE:
	cmp r3, #0x06
	beq _0803EED4
	b _0803F390
_0803EED4:
	ldr r2, [sp, #0x020]
	ldrb r0, [r2, #0x02]
	cmp r0, #0x06
	beq _0803EEDE
	b _0803F390
_0803EEDE:
	mov r0, r8
	mov r1, r10
	bl sub_8025D24__12FieldManageri
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0803EEEE
	b _0803F390
_0803EEEE:
	mov r0, r8
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80289BC__12FieldManagerP20FieldPlayerCharacterP11FieldObject
	movs r3, #0x02
	mov r10, r3
	b _0803F390
	.byte 0x00, 0x00
_0803EF00: .4byte 0x0000020F
_0803EF04: .4byte 0x00000352
_0803EF08: .4byte 0x0000033D
_0803EF0C: .4byte 0x00000343
_0803EF10: .4byte 0x00000345
_0803EF14:
	movs r4, #0x8B
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0803EF22
	b _0803F390
_0803EF22:
	ldr r7, _0803F004 @ =0x0000020F
	adds r0, r6, r7
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0803EF32
	b _0803F390
_0803EF32:
	ldr r1, _0803F008 @ =0x00000352
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0803EF42
	b _0803F390
_0803EF42:
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x00
	bne _0803EF86
	movs r3, #0xCF
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	ldr r4, _0803F00C @ =0x0000033D
	adds r0, r5, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	cmp r1, r0
	bne _0803EFF2
	ldr r7, _0803F010 @ =0x00000342
	adds r0, r5, r7
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0803EF86
	ldr r2, _0803F014 @ =0x00000343
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _0803EFF2
_0803EF86:
	movs r3, #0x83
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	movs r3, #0x0E
	ands r3, r0
	cmp r3, #0x08
	bne _0803EFC2
	movs r4, #0xCF
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	ldr r7, _0803F00C @ =0x0000033D
	adds r0, r5, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	cmp r1, r0
	bne _0803EFF2
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, _0803F018 @ =0x00000345
	adds r1, r5, r2
	movs r2, #0x00
	ldsb r2, [r0, r2]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r2, r0
	bne _0803EFF2
_0803EFC2:
	cmp r3, #0x02
	beq _0803EFF2
	cmp r3, #0x04
	bne _0803EFD2
	ldr r4, [sp, #0x020]
	ldrb r0, [r4, #0x02]
	cmp r0, #0x05
	beq _0803EFE2
_0803EFD2:
	cmp r3, #0x06
	beq _0803EFD8
	b _0803F390
_0803EFD8:
	ldr r7, [sp, #0x020]
	ldrb r0, [r7, #0x02]
	cmp r0, #0x06
	beq _0803EFE2
	b _0803F390
_0803EFE2:
	mov r0, r8
	mov r1, r10
	bl sub_8025D24__12FieldManageri
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0803EFF2
	b _0803F390
_0803EFF2:
	mov r0, r8
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80289BC__12FieldManagerP20FieldPlayerCharacterP11FieldObject
	movs r0, #0x02
	mov r10, r0
	b _0803F390
	.byte 0x00, 0x00
_0803F004: .4byte 0x0000020F
_0803F008: .4byte 0x00000352
_0803F00C: .4byte 0x0000033D
_0803F010: .4byte 0x00000342
_0803F014: .4byte 0x00000343
_0803F018: .4byte 0x00000345
_0803F01C:
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r0, [r4, #0x00]
	ldr r1, _0803F0E4 @ =0x01FE0001
	ands r0, r1
	cmp r0, r1
	beq _0803F02E
	b _0803F390
_0803F02E:
	ldr r2, _0803F0E8 @ =0x00000352
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r7, #0x04
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0803F040
	b _0803F390
_0803F040:
	ldrh r0, [r5, #0x24]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1E
	movs r3, #0x01
	mov r9, r3
	ands r0, r3
	cmp r0, #0x00
	beq _0803F056
	adds r0, r6, #0x0
	bl sub_8051330
_0803F056:
	ldrb r1, [r4, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0803F110
	movs r7, #0xD0
	lsls r7, r7, #0x02
	adds r0, r6, r7
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bgt _0803F070
	b _0803F390
_0803F070:
	ldrh r0, [r5, #0x24]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1E
	mov r2, r9
	ands r0, r2
	cmp r0, #0x00
	bne _0803F080
	b _0803F390
_0803F080:
	ldr r3, _0803F0EC @ =0x0000020F
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0803F0F0
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_8050EAC
	adds r3, r0, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldrh r2, [r4, #0x00]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x1C
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	mov r7, r9
	strb r7, [r0, #0x00]
	mov r0, r8
	adds r1, r6, #0x0
	bl sub_802973C__12FieldManagerP11FieldObjectibiT3
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x16
	lsrs r2, r0, #0x1C
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0F
	lsrs r3, r0, #0x19
	movs r1, #0x00
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r0, [r0, #0x00]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r0, #0x3F
	bgt _0803F0D8
	movs r1, #0x01
_0803F0D8:
	str r1, [sp, #0x000]
	mov r0, r8
	movs r1, #0x00
	bl sub_802641C__12FieldManageriiii
	b _0803F390
_0803F0E4: .4byte 0x01FE0001
_0803F0E8: .4byte 0x00000352
_0803F0EC: .4byte 0x0000020F
_0803F0F0:
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x20
	ldsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #0x24]
	bl _call_via_r1
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x95
	bl play_sfx_80195B4
	b _0803F390
_0803F110:
	ldrh r0, [r5, #0x24]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1E
	mov r3, r9
	ands r0, r3
	cmp r0, #0x00
	bne _0803F120
	b _0803F390
_0803F120:
	mov r0, r8
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80289BC__12FieldManagerP20FieldPlayerCharacterP11FieldObject
	b _0803F390
_0803F12C:
	movs r0, #0x95
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r2, [r0, #0x00]
	cmp r2, #0x02
	beq _0803F13A
	b _0803F390
_0803F13A:
	ldr r4, _0803F1DC @ =0x00000352
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0803F174
	mov r7, r10
	cmp r7, #0x00
	beq _0803F150
	b _0803F390
_0803F150:
	ldr r0, _0803F1E0 @ =0x00000246
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x10
	beq _0803F160
	b _0803F390
_0803F160:
	movs r1, #0xD4
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1E
	ands r0, r2
	cmp r0, #0x00
	bne _0803F174
	b _0803F390
_0803F174:
	ldr r3, _0803F1E4 @ =0x00000342
	adds r0, r5, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _0803F186
	b _0803F390
_0803F186:
	movs r4, #0xD4
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1E
	ands r0, r2
	cmp r0, #0x00
	beq _0803F1F8
	mov r7, r10
	cmp r7, #0x00
	bne _0803F1AC
	ldr r1, _0803F1E8 @ =0x0000035B
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0803F23C
_0803F1AC:
	ldr r2, _0803F1EC @ =0x0000033D
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _0803F1F4
	ldr r0, _0803F1F0 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x35
	ldrb r0, [r2, #0x00]
	movs r3, #0x03
	cmp r0, #0x01
	bne _0803F23E
	movs r3, #0x05
	b _0803F23E
	.byte 0x00, 0x00
_0803F1DC: .4byte 0x00000352
_0803F1E0: .4byte 0x00000246
_0803F1E4: .4byte 0x00000342
_0803F1E8: .4byte 0x0000035B
_0803F1EC: .4byte 0x0000033D
_0803F1F0: .4byte 0x03000FF4
_0803F1F4:
	movs r3, #0x01
	b _0803F23E
_0803F1F8:
	ldrh r0, [r5, #0x04]
	subs r0, #0x08
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bhi _0803F208
	movs r3, #0x02
	b _0803F23E
_0803F208:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r2, [r0, #0x00]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0x00
	beq _0803F226
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r1, [r0, #0x00]
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1F
	cmp r1, r0
	bne _0803F234
_0803F226:
	ldr r3, _0803F238 @ =0x0000033E
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _0803F23C
_0803F234:
	movs r3, #0x04
	b _0803F23E
_0803F238: .4byte 0x0000033E
_0803F23C:
	movs r3, #0x00
_0803F23E:
	movs r1, #0x00
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r2, [r0, #0x00]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0x00
	bne _0803F260
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r1, [r0, #0x00]
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1F
	eors r1, r0
	negs r1, r1
	lsrs r1, r1, #0x1F
_0803F260:
	mov r0, sp
	strb r1, [r0, #0x00]
	mov r0, r8
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl startEncounter__12FieldManageriP20FieldPlayerCharacterP12FieldMonsterb
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r1, r0, r4
	movs r2, #0x00
	strh r2, [r1, #0x00]
	ldr r7, _0803F2B0 @ =0x00000242
	adds r0, r0, r7
	strh r2, [r0, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0803F29E
	adds r0, r1, r4
	strh r2, [r0, #0x00]
	adds r3, r7, #0x0
	adds r0, r1, r3
	strh r2, [r0, #0x00]
_0803F29E:
	movs r4, #0xCF
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r2, #0x7F
	orrs r1, r2
	strb r1, [r0, #0x00]
	b _0803F4DE
	.byte 0x00, 0x00
_0803F2B0: .4byte 0x00000242
_0803F2B4:
	ldr r7, _0803F33C @ =0x00000342
	adds r0, r5, r7
	movs r7, #0x00
	ldsb r7, [r0, r7]
	cmp r7, #0x00
	bne _0803F390
	mov r0, r8
	bl sub_803C544__12FieldManager
	movs r1, #0x8B
	lsls r1, r1, #0x02
	adds r1, r1, r6
	mov r9, r1
	ldr r1, [r1, #0x00]
	movs r2, #0x03
	ands r1, r2
	cmp r0, r1
	bls _0803F390
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r0, [r4, #0x00]
	str r7, [sp, #0x000]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_set_animation__FP6SpriteiiPFP6Spritei_vi
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_804776C__11FieldObjecti
	ldr r0, _0803F340 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	mov r3, r9
	ldr r2, [r3, #0x00]
	lsls r2, r2, #0x0A
	lsrs r2, r2, #0x14
	movs r4, #0x8B
	lsls r4, r4, #0x05
	adds r2, r2, r4
	movs r1, #0x00
	movs r3, #0x01
	bl setFlag__11CommonEventPUiT1UsUc
	b _0803F390
	.byte 0x00, 0x00
_0803F33C: .4byte 0x00000342
_0803F340: .4byte 0x03000FC0
_0803F344:
	ldr r7, _0803F3B4 @ =0x00000342
	adds r0, r5, r7
	movs r3, #0x00
	ldsb r3, [r0, r3]
	cmp r3, #0x00
	bne _0803F390
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_set_animation__FP6SpriteiiPFP6Spritei_vi
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_804776C__11FieldObjecti
_0803F390:
	movs r2, #0x01
	add r10, r2
	mov r3, r10
	cmp r3, #0x01
	bgt _0803F3B8
	cmp r3, #0x01
	beq _0803F3A0
	b _0803ED9C
_0803F3A0:
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r8
	ldr r5, [r0, #0x00]
	movs r4, #0xDA
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x020]
	b _0803ED9C
_0803F3B4: .4byte 0x00000342
_0803F3B8:
	ldr r2, _0803F4F0 @ =0x0000027A
	add r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _0803F4F4 @ =0x00000282
	add r1, r8
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	mov r5, r8
	adds r5, #0x28
	str r5, [sp, #0x008]
	ldr r0, _0803F4F8 @ =0x0000010B
	add r0, r8
	ldrb r4, [r0, #0x00]
	adds r5, #0x80
	cmp r4, #0x00
	beq _0803F4AE
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0803F446
	cmp r1, #0x03
	bge _0803F426
	cmp r1, #0x02
	bge _0803F40A
	mov r7, r8
	ldr r0, [r7, #0x28]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	subs r4, #0x01
	adds r7, #0x2C
	str r7, [sp, #0x008]
_0803F40A:
	ldr r1, [sp, #0x008]
	ldm r1!, {r0}
	str r1, [sp, #0x008]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	subs r4, #0x01
_0803F426:
	ldr r7, [sp, #0x008]
	ldm r7!, {r0}
	str r7, [sp, #0x008]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	subs r4, #0x01
	cmp r4, #0x00
	beq _0803F4AE
_0803F446:
	ldr r7, [sp, #0x008]
	ldr r0, [r7, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	ldr r0, [r7, #0x04]
	movs r7, #0xCE
	lsls r7, r7, #0x02
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	ldr r7, [sp, #0x008]
	ldr r0, [r7, #0x08]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	ldr r0, [r7, #0x0C]
	movs r7, #0xCE
	lsls r7, r7, #0x02
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x2C]
	bl _call_via_r1
	subs r4, #0x04
	ldr r7, [sp, #0x008]
	adds r7, #0x10
	str r7, [sp, #0x008]
	cmp r4, #0x00
	bne _0803F446
_0803F4AE:
	ldr r0, [r5, #0x00]
	bl sub_804FB14__21FieldPlayerShotBullet
	ldr r0, [r5, #0x04]
	bl sub_804FB14__21FieldPlayerShotBullet
	ldr r0, [r5, #0x08]
	bl sub_804FB14__21FieldPlayerShotBullet
	ldr r0, [r5, #0x0C]
	bl sub_804FB14__21FieldPlayerShotBullet
	ldr r0, [r5, #0x10]
	bl sub_804FB14__21FieldPlayerShotBullet
	ldr r0, [r5, #0x14]
	bl sub_804FB14__21FieldPlayerShotBullet
	ldr r0, [r5, #0x18]
	bl sub_804FB14__21FieldPlayerShotBullet
	ldr r0, [r5, #0x1C]
	bl sub_804FB14__21FieldPlayerShotBullet
_0803F4DE:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803F4F0: .4byte 0x0000027A
_0803F4F4: .4byte 0x00000282
_0803F4F8: .4byte 0x0000010B
	thumb_func_start sub_803F4FC
sub_803F4FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0x0
	ldr r0, [r6, #0x14]
	mov r8, r0
	movs r0, #0xC7
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_80EF70C
	ldr r3, _0803F578 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r3, r1
	ldr r7, [r0, #0x00]
	movs r0, #0x91
	lsls r0, r0, #0x02
	add r0, r8
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x38
	negs r0, r0
	cmp r1, r0
	bgt _0803F536
	b _0803F6C8
_0803F536:
	movs r2, #0x82
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1D
	lsrs r4, r0, #0x1F
	movs r0, #0xB6
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x1F
	ands r0, r1
	cmp r0, #0x1F
	bne _0803F564
	adds r0, r3, #0x0
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0803F570
_0803F564:
	ldrh r1, [r2, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0803F57C
_0803F570:
	movs r3, #0x02
	mov r9, r3
	b _0803F580
	.byte 0x00, 0x00
_0803F578: .4byte 0x0300034C
_0803F57C:
	movs r0, #0x01
	mov r9, r0
_0803F580:
	movs r5, #0x00
	cmp r5, r9
	blt _0803F588
	b _0803F6C8
_0803F588:
	mov r0, r9
	cmp r0, #0x00
	ble _0803F5DC
	cmp r0, #0x00
	beq _0803F60E
	cmp r0, #0x01
	ble _0803F5DC
	cmp r0, #0x02
	ble _0803F5AE
	movs r3, #0x00
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	adds r5, #0x01
_0803F5AE:
	movs r3, #0x00
	cmp r5, #0x01
	bne _0803F5CA
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldr r1, _0803F734 @ =0x02000110
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bne _0803F5CA
	movs r3, #0x01
_0803F5CA:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	adds r5, #0x01
_0803F5DC:
	movs r3, #0x00
	cmp r5, #0x01
	bne _0803F5F8
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldr r1, _0803F734 @ =0x02000110
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bne _0803F5F8
	movs r3, #0x01
_0803F5F8:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	adds r5, #0x01
	cmp r5, r9
	bge _0803F6C8
_0803F60E:
	movs r3, #0x00
	cmp r5, #0x01
	bne _0803F62A
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, _0803F734 @ =0x02000110
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0803F62A
	movs r3, #0x01
_0803F62A:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	movs r3, #0x00
	cmp r5, #0x00
	bne _0803F656
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, _0803F734 @ =0x02000110
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0803F656
	movs r3, #0x01
_0803F656:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	adds r0, r5, #0x2
	movs r3, #0x00
	cmp r0, #0x01
	bne _0803F684
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, _0803F734 @ =0x02000110
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0803F684
	movs r3, #0x01
_0803F684:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	adds r0, r5, #0x3
	movs r3, #0x00
	cmp r0, #0x01
	bne _0803F6B2
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, _0803F734 @ =0x02000110
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0803F6B2
	movs r3, #0x01
_0803F6B2:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	adds r5, #0x04
	cmp r5, r9
	blt _0803F60E
_0803F6C8:
	ldr r3, _0803F738 @ =0x00000209
	add r3, r8
	ldrb r2, [r3, #0x00]
	movs r5, #0x1E
	adds r0, r5, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _0803F6FC
	lsls r0, r2, #0x1B
	lsrs r0, r0, #0x1C
	adds r0, #0x01
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x01
	movs r4, #0x1F
	negs r4, r4
	adds r1, r4, #0x0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r5
	cmp r0, #0x12
	bne _0803F6FC
	ands r1, r4
	strb r1, [r3, #0x00]
_0803F6FC:
	bl sprites_draw__Fv
	movs r4, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r8
	ldr r5, [r0, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r8
	ldr r3, [r0, #0x00]
	movs r1, #0x86
	lsls r1, r1, #0x02
	mov r9, r1
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	ldr r6, _0803F73C @ =0x00001025
	cmp r1, r6
	beq _0803F72E
	ldr r0, _0803F740 @ =0x00001029
	cmp r1, r0
	beq _0803F72E
	ldr r2, _0803F744 @ =0x0000103F
	cmp r1, r2
	bne _0803F748
_0803F72E:
	adds r4, r5, #0x0
	b _0803F758
	.byte 0x00, 0x00
_0803F734: .4byte 0x02000110
_0803F738: .4byte 0x00000209
_0803F73C: .4byte 0x00001025
_0803F740: .4byte 0x00001029
_0803F744: .4byte 0x0000103F
_0803F748:
	mov r1, r9
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	cmp r0, r6
	beq _0803F756
	cmp r0, r2
	bne _0803F758
_0803F756:
	adds r4, r3, #0x0
_0803F758:
	movs r2, #0x28
	add r2, r8
	mov r9, r2
	cmp r4, #0x00
	bne _0803F764
	b _0803F88E
_0803F764:
	ldrh r1, [r4, #0x04]
	adds r0, r1, #0x0
	subs r0, #0x08
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r1, #0x0
	cmp r0, #0x01
	bls _0803F7A4
	adds r0, r2, #0x0
	subs r0, #0x59
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x06
	bls _0803F7A4
	adds r0, r2, #0x0
	subs r0, #0x3B
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _0803F7A4
	adds r0, r2, #0x0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bls _0803F7A4
	adds r0, r2, #0x0
	subs r0, #0x88
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bhi _0803F88E
_0803F7A4:
	adds r1, r4, #0x0
	adds r1, #0x24
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r6, r1, #0x0
	movs r3, #0x28
	add r3, r8
	mov r9, r3
	cmp r0, #0x01
	bls _0803F88E
	cmp r0, #0x06
	bhi _0803F88E
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x04
	bhi _0803F7DA
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x04
	bls _0803F88E
_0803F7DA:
	adds r0, r2, #0x0
	subs r0, #0x08
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bhi _0803F7FE
	movs r3, #0xCF
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	asrs r0, r0, #0x17
	mov r1, r8
	adds r1, #0x28
	adds r0, r1, r0
	ldr r5, [r0, #0x00]
	mov r9, r1
	b _0803F804
_0803F7FE:
	movs r0, #0x28
	add r0, r8
	mov r9, r0
_0803F804:
	cmp r2, #0x08
	bne _0803F820
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _0803F81C @ =0x00001029
	movs r3, #0x08
	cmp r1, r0
	bne _0803F832
	movs r3, #0x18
	b _0803F832
_0803F81C: .4byte 0x00001029
_0803F820:
	movs r2, #0x86
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _0803F89C @ =0x00001029
	movs r3, #0x00
	cmp r1, r0
	bne _0803F832
	movs r3, #0x10
_0803F832:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x34]
	ldr r1, _0803F8A0 @ =0x083A0508
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r0, r3, r0
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0803F87E
	negs r3, r1
	movs r0, #0x03
	ands r3, r0
	cmp r3, #0x00
	beq _0803F870
	cmp r3, #0x03
	bge _0803F868
	cmp r3, #0x02
	bge _0803F864
	ldr r2, [r2, #0x10]
	subs r1, #0x01
_0803F864:
	ldr r2, [r2, #0x10]
	subs r1, #0x01
_0803F868:
	ldr r2, [r2, #0x10]
	subs r1, #0x01
	cmp r1, #0x00
	beq _0803F87E
_0803F870:
	ldr r2, [r2, #0x10]
	ldr r2, [r2, #0x10]
	ldr r2, [r2, #0x10]
	ldr r2, [r2, #0x10]
	subs r1, #0x04
	cmp r1, #0x00
	bne _0803F870
_0803F87E:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0x08]
	subs r0, #0x01
	str r0, [r2, #0x08]
_0803F88E:
	ldr r0, _0803F8A4 @ =0x0203FFB8
	mov r10, r0
	ldr r5, [r0, #0x38]
	mov r4, r9
	movs r6, #0x00
	b _0803F8CE
	.byte 0x00, 0x00
_0803F89C: .4byte 0x00001029
_0803F8A0: .4byte 0x083A0508
_0803F8A4: .4byte 0x0203FFB8
_0803F8A8:
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0803F8CA
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x50
	movs r3, #0x00
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #0x04]
	adds r1, r5, #0x0
	mov r2, r9
	bl _call_via_r3
	adds r5, r0, #0x0
_0803F8CA:
	adds r6, #0x01
	adds r4, #0x04
_0803F8CE:
	ldr r0, _0803F914 @ =0x0000010B
	add r0, r8
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	blt _0803F8A8
	mov r0, r10
	str r5, [r0, #0x38]
	ldr r2, _0803F918 @ =0x03000D48
	ldr r4, _0803F91C @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _0803F920 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _0803F924 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r7, #0x0
	bl _call_via_r2
	adds r7, r0, #0x0
	ldr r0, _0803F928 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r7, [r0, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803F914: .4byte 0x0000010B
_0803F918: .4byte 0x03000D48
_0803F91C: .4byte 0x0203FFB8
_0803F920: .4byte 0x00000A14
_0803F924: .4byte 0x03000D4C
_0803F928: .4byte 0x0300034C
	thumb_func_start sub_803F92C
sub_803F92C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r1, #0x0
	str r2, [sp, #0x000]
	str r3, [sp, #0x004]
	ldr r7, [r0, #0x14]
	lsls r1, r2, #0x02
	adds r0, r7, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	ldr r0, _0803F99C @ =0x00000352
	add r0, r9
	ldrb r0, [r0, #0x00]
	lsrs r5, r0, #0x07
	movs r0, #0x01
	eors r5, r0
	ldr r1, _0803F9A0 @ =0x00000209
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1E
	ands r0, r1
	cmp r0, #0x00
	bne _0803F9AC
	ldr r2, _0803F9A4 @ =0x00000242
	adds r0, r7, r2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r2, _0803F9A8 @ =0x083A0528
	lsls r3, r5, #0x02
	adds r0, r3, r2
	movs r4, #0x00
	ldsh r0, [r0, r4]
	adds r1, r1, r0
	mov r12, r1
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	lsls r0, r5, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, r1, r0
	mov r8, r1
	str r3, [sp, #0x008]
	b _0803F9EE
	.byte 0x00, 0x00
_0803F99C: .4byte 0x00000352
_0803F9A0: .4byte 0x00000209
_0803F9A4: .4byte 0x00000242
_0803F9A8: .4byte 0x083A0528
_0803F9AC:
	ldr r3, _0803FAB4 @ =0x00000242
	adds r0, r7, r3
	movs r2, #0x00
	ldsh r4, [r0, r2]
	ldr r3, _0803FAB8 @ =0x083A0530
	lsls r2, r5, #0x01
	adds r2, r2, r5
	lsls r2, r2, #0x03
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1C
	lsls r0, r1, #0x01
	adds r0, r0, r1
	adds r2, r2, r0
	lsls r0, r2, #0x01
	adds r0, r0, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r4, r4, r0
	mov r12, r4
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r0, r7, r4
	movs r4, #0x00
	ldsh r1, [r0, r4]
	adds r2, #0x01
	lsls r2, r2, #0x01
	adds r2, r2, r3
	movs r3, #0x00
	ldsh r0, [r2, r3]
	adds r1, r1, r0
	mov r8, r1
	lsls r5, r5, #0x02
	str r5, [sp, #0x008]
_0803F9EE:
	movs r4, #0xDA
	lsls r4, r4, #0x02
	add r9, r4
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x16]
	movs r0, #0x80
	ands r0, r1
	ldr r2, [sp, #0x000]
	lsls r2, r2, #0x05
	mov r10, r2
	cmp r0, #0x00
	beq _0803FA34
	mov r0, r8
	adds r0, #0x0B
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r6, #0x00]
	mov r0, r12
	adds r0, #0x09
	ldr r3, _0803FABC @ =0x000001FF
	adds r1, r3, #0x0
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x07
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r6, #0x02]
	mov r0, r10
	adds r0, #0x7E
	ldr r2, _0803FAC0 @ =0xFFFFE000
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r6, #0x04]
	adds r6, #0x08
_0803FA34:
	ldr r3, _0803FAC4 @ =0x083A05CE
	mov r4, r9
	ldr r0, [r4, #0x00]
	ldrb r2, [r0, #0x02]
	lsls r0, r2, #0x01
	adds r1, r0, r3
	movs r4, #0x00
	ldsb r4, [r1, r4]
	add r4, r12
	adds r0, #0x01
	adds r0, r0, r3
	movs r3, #0x00
	ldsb r3, [r0, r3]
	add r3, r8
	ldr r1, [sp, #0x004]
	negs r0, r1
	orrs r0, r1
	asrs r7, r0, #0x1F
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r7, r0
	ldr r5, _0803FAC8 @ =0x083A0596
	lsls r2, r2, #0x02
	adds r2, r2, r5
	ldrh r1, [r2, #0x00]
	adds r0, r7, #0x0
	orrs r0, r1
	movs r1, #0xFF
	ands r3, r1
	orrs r0, r3
	strh r0, [r6, #0x00]
	mov r2, r9
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x02]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldr r3, _0803FABC @ =0x000001FF
	adds r1, r3, #0x0
	ands r4, r1
	ldrh r0, [r0, #0x00]
	orrs r4, r0
	strh r4, [r6, #0x02]
	mov r2, r10
	adds r2, #0x6E
	mov r4, r9
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x02]
	cmp r0, #0x06
	bne _0803FAD0
	ldr r0, _0803FACC @ =0x0300034C
	ldr r0, [r0, #0x1C]
	movs r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0803FAD0
	mov r1, r10
	adds r1, #0x7E
	movs r0, #0xE0
	lsls r0, r0, #0x08
	orrs r1, r0
	b _0803FAD6
	.byte 0x00, 0x00
_0803FAB4: .4byte 0x00000242
_0803FAB8: .4byte 0x083A0530
_0803FABC: .4byte 0x000001FF
_0803FAC0: .4byte 0xFFFFE000
_0803FAC4: .4byte 0x083A05CE
_0803FAC8: .4byte 0x083A0596
_0803FACC: .4byte 0x0300034C
_0803FAD0:
	movs r1, #0xE0
	lsls r1, r1, #0x08
	orrs r1, r2
_0803FAD6:
	strh r1, [r6, #0x04]
	adds r6, #0x08
	mov r0, r8
	adds r0, #0x10
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x01
	subs r0, r0, r1
	movs r3, #0xFF
	ands r0, r3
	orrs r0, r7
	strh r0, [r6, #0x00]
	add r1, r12
	ldr r4, _0803FB94 @ =0x000001FF
	adds r2, r4, #0x0
	ands r1, r2
	movs r4, #0x80
	lsls r4, r4, #0x07
	adds r0, r4, #0x0
	orrs r1, r0
	strh r1, [r6, #0x02]
	ldr r0, [sp, #0x008]
	adds r0, #0x66
	ldr r4, _0803FB98 @ =0xFFFFE000
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r6, #0x04]
	adds r6, #0x08
	mov r0, r8
	ands r0, r3
	orrs r7, r0
	strh r7, [r6, #0x00]
	mov r3, r12
	ands r3, r2
	movs r4, #0x80
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	orrs r3, r0
	strh r3, [r6, #0x02]
	ldr r2, [sp, #0x000]
	lsls r0, r2, #0x04
	adds r0, #0x46
	orrs r0, r1
	strh r0, [r6, #0x04]
	adds r6, #0x08
	ldr r3, [sp, #0x004]
	cmp r3, #0x00
	beq _0803FB80
	ldr r1, _0803FB9C @ =0x0300034C
	ldr r4, _0803FBA0 @ =0x00000888
	adds r2, r1, r4
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r0, r0, r1
	adds r0, #0x86
	ldrh r3, [r0, #0x00]
	movs r3, #0x00
	movs r4, #0xC0
	lsls r4, r4, #0x01
	strh r4, [r0, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r0, r0, r1
	adds r0, #0x8E
	ldrh r5, [r0, #0x00]
	strh r3, [r0, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r0, r0, r1
	adds r0, #0x96
	ldrh r5, [r0, #0x00]
	strh r3, [r0, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r0, r0, r1
	adds r0, #0x9E
	ldrh r1, [r0, #0x00]
	strh r4, [r0, #0x00]
_0803FB80:
	adds r0, r6, #0x0
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0803FB94: .4byte 0x000001FF
_0803FB98: .4byte 0xFFFFE000
_0803FB9C: .4byte 0x0300034C
_0803FBA0: .4byte 0x00000888
	thumb_func_start sub_803FBA4
sub_803FBA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	adds r4, r3, #0x0
	ldr r0, [sp, #0x028]
	mov r9, r0
	ldr r7, [sp, #0x02C]
	add r0, sp, #0x030
	add r1, sp, #0x034
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x000]
	ldrb r1, [r1, #0x00]
	str r1, [sp, #0x004]
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0803FBD4
	ldr r1, _0803FC3C @ =0x00000FFF
	adds r0, r6, r1
_0803FBD4:
	lsls r0, r0, #0x04
	asrs r1, r0, #0x10
	mov r2, r8
	cmp r2, #0x00
	bge _0803FBE2
	ldr r2, _0803FC3C @ =0x00000FFF
	add r2, r8
_0803FBE2:
	lsls r2, r2, #0x04
	asrs r2, r2, #0x10
	adds r0, r5, #0x0
	bl get_coldef_ptr_by_xz
	adds r5, r0, #0x0
	ldr r1, [r5, #0x00]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0B
	lsrs r1, r1, #0x1F
	lsls r0, r1
	str r0, [r4, #0x00]
	ldrb r1, [r5, #0x02]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	bne _0803FC16
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1F
	ldr r2, [sp, #0x004]
	ands r0, r2
	cmp r0, #0x00
	bne _0803FC16
	b _0803FD00
_0803FC16:
	movs r3, #0x00
	mov r10, r3
	ldr r0, _0803FC3C @ =0x00000FFF
	adds r3, r6, #0x0
	ands r3, r0
	mov r2, r8
	ands r2, r0
	ldr r1, [r5, #0x00]
	lsls r0, r1, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x08
	mov r12, r1
	cmp r0, #0x07
	bhi _0803FCB6
	lsls r0, r0, #0x02
	ldr r1, _0803FC40 @ =0x0803FC44
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0803FC3C: .4byte 0x00000FFF
_0803FC40: .4byte 0x0803FC44
	.byte 0x64, 0xFC, 0x03, 0x08, 0x70, 0xFC, 0x03, 0x08, 0x7C, 0xFC, 0x03, 0x08, 0x88, 0xFC, 0x03, 0x08
	.byte 0x90, 0xFC, 0x03, 0x08, 0x96, 0xFC, 0x03, 0x08, 0xA2, 0xFC, 0x03, 0x08, 0xAE, 0xFC, 0x03, 0x08
	.byte 0x01, 0x48, 0x82, 0x42, 0x25, 0xDD, 0x27, 0xE0, 0xFF, 0x07, 0x00, 0x00, 0x01, 0x48, 0x82, 0x42
	.byte 0x1F, 0xDC, 0x21, 0xE0, 0xFF, 0x07, 0x00, 0x00, 0x01, 0x48, 0x83, 0x42, 0x19, 0xDC, 0x1B, 0xE0
	.byte 0xFF, 0x07, 0x00, 0x00, 0x00, 0x48, 0x0D, 0xE0, 0xFF, 0x07, 0x00, 0x00, 0x93, 0x42, 0x10, 0xDA
	.byte 0x12, 0xE0, 0xF0, 0x20, 0x00, 0x01, 0x80, 0x1A, 0x83, 0x42, 0x0A, 0xDA, 0x0C, 0xE0, 0xF0, 0x20
	.byte 0x00, 0x01, 0x80, 0x1A, 0x83, 0x42, 0x04, 0xDD, 0x06, 0xE0, 0x93, 0x42, 0x01, 0xDD, 0x01, 0x20
	.byte 0x82, 0x46
_0803FCB6:
	mov r1, r10
	cmp r1, #0x00
	beq _0803FCC6
	movs r0, #0x01
	negs r0, r0
	mov r2, r9
	str r0, [r2, #0x00]
	b _0803FD08
_0803FCC6:
	mov r3, r12
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0B
	lsrs r1, r3, #0x1F
	lsls r0, r1
	ldr r1, [r4, #0x00]
	adds r2, r1, r0
	mov r0, r9
	str r2, [r0, #0x00]
	ldr r1, [r5, #0x00]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1F
	ldr r3, [sp, #0x004]
	ands r0, r3
	cmp r0, #0x00
	bne _0803FCF6
	lsls r0, r1, #0x08
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0B
	lsrs r1, r1, #0x1F
	lsls r0, r1
	adds r1, r2, r0
	b _0803FCF8
_0803FCF6:
	ldr r1, _0803FCFC @ =0x7FFFFFFF
_0803FCF8:
	str r1, [r7, #0x00]
	b _0803FD0A
_0803FCFC: .4byte 0x7FFFFFFF
_0803FD00:
	movs r0, #0x01
	negs r0, r0
	mov r1, r9
	str r0, [r1, #0x00]
_0803FD08:
	str r0, [r7, #0x00]
_0803FD0A:
	ldr r2, [sp, #0x000]
	cmp r2, #0x00
	beq _0803FDA8
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x05
	beq _0803FD38
	cmp r0, #0x05
	bhi _0803FD24
	cmp r0, #0x04
	beq _0803FD2A
	b _0803FD5C
_0803FD24:
	cmp r0, #0x06
	beq _0803FD48
	b _0803FD5C
_0803FD2A:
	movs r1, #0xF0
	lsls r1, r1, #0x04
	ands r1, r6
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	b _0803FD5C
_0803FD38:
	ldr r1, [r4, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r1, r1, r3
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r0, r6
	b _0803FD58
_0803FD48:
	ldr r1, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r1, r1, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	mov r2, r8
	ands r0, r2
_0803FD58:
	subs r1, r1, r0
	str r1, [r4, #0x00]
_0803FD5C:
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x05
	beq _0803FD84
	cmp r0, #0x05
	bhi _0803FD70
	cmp r0, #0x04
	beq _0803FD76
	b _0803FDA8
_0803FD70:
	cmp r0, #0x06
	beq _0803FD94
	b _0803FDA8
_0803FD76:
	movs r1, #0xF0
	lsls r1, r1, #0x04
	ands r1, r6
	ldr r0, [r7, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x00]
	b _0803FDA8
_0803FD84:
	ldr r1, [r7, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r1, r1, r3
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r0, r6
	b _0803FDA4
_0803FD94:
	ldr r1, [r7, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r1, r1, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	mov r2, r8
	ands r0, r2
_0803FDA4:
	subs r1, r1, r0
	str r1, [r7, #0x00]
_0803FDA8:
	adds r0, r5, #0x0
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_803FDBC
sub_803FDBC:
	push {r4, r5, r6, r7, lr}
	adds r4, r2, #0x0
	adds r7, r3, #0x0
	ldr r2, [sp, #0x014]
	mov r12, r2
	ldr r2, _0803FE00 @ =0x0839EE60
	lsls r0, r0, #0x02
	adds r0, r0, r2
	lsls r1, r1, #0x02
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r0, #0x01
	lsrs r5, r1, #0x1E
	lsls r0, r0, #0x03
	lsrs r6, r0, #0x1F
	cmp r5, #0x00
	beq _0803FE60
	cmp r6, #0x00
	bne _0803FE18
	cmp r5, #0x01
	bne _0803FE04
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0803FDF0
	adds r0, r4, #0x3
_0803FDF0:
	asrs r0, r0, #0x02
	lsls r1, r0, #0x01
	adds r3, r1, r0
	lsls r0, r0, #0x02
	subs r4, r4, r0
	lsls r4, r4, #0x01
	b _0803FE3C
	.byte 0x00, 0x00
_0803FE00: .4byte 0x0839EE60
_0803FE04:
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0803FE0C
	adds r0, r4, #0x7
_0803FE0C:
	asrs r0, r0, #0x03
	lsls r1, r0, #0x02
	adds r3, r1, r0
	lsls r0, r0, #0x03
	subs r4, r4, r0
	b _0803FE3C
_0803FE18:
	cmp r5, #0x01
	bne _0803FE2E
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0803FE24
	adds r0, r4, #0x3
_0803FE24:
	asrs r0, r0, #0x02
	lsls r3, r0, #0x02
	subs r4, r4, r3
	lsls r4, r4, #0x01
	b _0803FE3C
_0803FE2E:
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0803FE36
	adds r0, r4, #0x7
_0803FE36:
	asrs r0, r0, #0x03
	lsls r3, r0, #0x03
	subs r4, r4, r3
_0803FE3C:
	ldr r2, _0803FE5C @ =0x083A05EC
	lsls r0, r5, #0x04
	lsls r1, r6, #0x03
	adds r0, r0, r1
	adds r0, r0, r4
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	adds r0, r3, r0
	strb r0, [r7, #0x00]
	lsrs r1, r1, #0x07
	mov r0, r12
	strb r1, [r0, #0x00]
	b _0803FE66
	.byte 0x00, 0x00
_0803FE5C: .4byte 0x083A05EC
_0803FE60:
	strb r4, [r7, #0x00]
	mov r2, r12
	strb r5, [r2, #0x00]
_0803FE66:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0xB5, 0x03, 0x4A, 0x82, 0x61, 0xD9, 0xF7, 0xE3, 0xFE, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xC8, 0xBD, 0xCD, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x09, 0x06, 0x09, 0x0E, 0xD9, 0xF7, 0x8E, 0xFD
	.byte 0x02, 0x48, 0xA0, 0x61, 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xC8, 0xBD, 0xCD, 0x08
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x09, 0x06, 0x09, 0x0E, 0xD9, 0xF7, 0x80, 0xFD, 0x02, 0x48, 0xA0, 0x61
	.byte 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xD8, 0xBD, 0xCD, 0x08
