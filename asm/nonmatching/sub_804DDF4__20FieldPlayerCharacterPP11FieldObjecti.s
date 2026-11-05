	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804DDF4__20FieldPlayerCharacterPP11FieldObjecti
sub_804DDF4__20FieldPlayerCharacterPP11FieldObjecti:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	adds r3, r1, #0x0
	str r2, [sp, #0x000]
	ldr r4, _0804DE84 @ =0x00000272
	adds r2, r7, r4
	ldrh r0, [r2, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [r7, #0x0C]
	subs r1, r1, r0
	mov r8, r1
	movs r1, #0x9C
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	mov r12, r0
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r1, r0, #0x0
	ldr r5, [sp, #0x000]
	cmp r1, r5
	blt _0804DE32
	b _0804DF64
_0804DE32:
	movs r1, #0x83
	lsls r1, r1, #0x02
	mov r10, r1
	str r2, [sp, #0x008]
	ldr r2, _0804DE88 @ =0x00000276
	adds r2, r7, r2
	str r2, [sp, #0x00C]
	adds r4, #0xCA
	adds r4, r7, r4
	str r4, [sp, #0x010]
_0804DE46:
	ldm r3!, {r2}
	movs r5, #0x00
	mov r9, r5
	adds r0, #0x01
	str r0, [sp, #0x014]
	str r3, [sp, #0x018]
_0804DE52:
	mov r1, r10
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x81
	ands r0, r1
	cmp r0, #0x81
	bne _0804DF24
	ldr r3, _0804DE84 @ =0x00000272
	adds r0, r2, r3
	ldrh r3, [r0, #0x00]
	ldr r4, _0804DE88 @ =0x00000276
	adds r0, r2, r4
	ldrh r6, [r0, #0x00]
	ldr r5, [sp, #0x008]
	ldrh r4, [r5, #0x00]
	ldr r0, [sp, #0x00C]
	ldrh r5, [r0, #0x00]
	lsrs r1, r3, #0x01
	ldr r0, [r2, #0x0C]
	subs r1, r0, r1
	cmp r1, r8
	bge _0804DE8C
	adds r0, r1, r3
	mov r1, r8
	b _0804DE90
_0804DE84: .4byte 0x00000272
_0804DE88: .4byte 0x00000276
_0804DE8C:
	mov r3, r8
	adds r0, r3, r4
_0804DE90:
	subs r0, r0, r1
	cmp r0, #0x00
	ble _0804DF24
	movs r4, #0x9C
	lsls r4, r4, #0x02
	adds r0, r2, r4
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r2, #0x10]
	adds r1, r0, r1
	cmp r1, r12
	ble _0804DEB0
	subs r0, r1, r6
	mov r4, r12
	subs r0, r4, r0
	b _0804DEB6
_0804DEB0:
	mov r3, r12
	subs r0, r3, r5
	subs r0, r1, r0
_0804DEB6:
	cmp r0, #0x00
	ble _0804DF24
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r1, r1, r0
	ldr r0, [r7, #0x14]
	subs r3, r1, r0
	mov r4, r10
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804DEDC
	movs r0, #0xA0
	lsls r0, r0, #0x06
	cmp r3, r0
	ble _0804DEE0
	b _0804DF24
_0804DEDC:
	cmp r3, #0x00
	bgt _0804DF24
_0804DEE0:
	adds r3, r2, #0x0
	adds r3, #0x54
	ldrb r1, [r3, #0x00]
	ldr r5, _0804DF20 @ =0x0000033E
	adds r0, r7, r5
	strb r1, [r0, #0x00]
	str r2, [sp, #0x004]
	adds r0, r2, #0x0
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1D
	cmp r0, #0x01
	bls _0804DF58
	ldrb r0, [r3, #0x00]
	movs r1, #0x7F
	ands r1, r0
	ldr r0, [sp, #0x010]
	ldrb r2, [r0, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r2, r9
	lsls r1, r2, #0x07
	movs r3, #0x7F
	ands r0, r3
	orrs r0, r1
	ldr r4, [sp, #0x010]
	strb r0, [r4, #0x00]
	b _0804DF58
	.byte 0x00, 0x00
_0804DF20: .4byte 0x0000033E
_0804DF24:
	ldr r5, _0804DFDC @ =0x0000020E
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _0804DF58
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0804DF58
	mov r3, r10
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804DF58
	movs r4, #0x01
	add r9, r4
	mov r5, r9
	cmp r5, #0x01
	bgt _0804DF58
	b _0804DE52
_0804DF58:
	ldr r0, [sp, #0x014]
	ldr r3, [sp, #0x018]
	ldr r1, [sp, #0x000]
	cmp r0, r1
	bge _0804DF64
	b _0804DE46
_0804DF64:
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r3, r7, r2
	ldr r2, [r3, #0x00]
	movs r1, #0x13
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804DF9A
	ldrb r0, [r2, #0x01]
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldr r4, _0804DFE0 @ =0x00000352
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x07
	movs r0, #0x01
	eors r1, r0
	adds r0, r2, #0x0
	adds r0, #0x10
	adds r0, r0, r1
	ldrb r1, [r2, #0x13]
	strb r1, [r0, #0x00]
	ldr r1, [r3, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x13]
_0804DF9A:
	ldr r5, [sp, #0x004]
	cmp r5, #0x00
	beq _0804DFCA
	ldr r1, _0804DFE4 @ =0x0000020D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0804DFCA
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x16]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x19
	movs r1, #0x01
	orrs r1, r0
	movs r0, #0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x16]
_0804DFCA:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0804DFDC: .4byte 0x0000020E
_0804DFE0: .4byte 0x00000352
_0804DFE4: .4byte 0x0000020D
