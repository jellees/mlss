	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_80458B0__11FieldObject
sub_80458B0__11FieldObject:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r5, r0, #0x0
	movs r0, #0x00
	str r0, [sp, #0x01C]
	add r1, sp, #0x014
	mov r10, r1
	add r2, sp, #0x018
	mov r9, r2
	add r3, sp, #0x008
	mov r8, r3
	add r7, sp, #0x00C
	ldr r6, _08045994 @ =0x083A06E0
_080458D2:
	movs r4, #0xA4
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	ldsh r2, [r6, r1]
	ldr r1, [r5, #0x0C]
	adds r1, r1, r2
	movs r2, #0x02
	ldsh r3, [r6, r2]
	ldr r2, [r5, #0x10]
	adds r2, r2, r3
	mov r3, r10
	str r3, [sp, #0x000]
	mov r4, r9
	str r4, [sp, #0x004]
	movs r3, #0x00
	mov r4, r8
	strb r3, [r4, #0x00]
	ldr r4, _08045998 @ =0x0000020D
	adds r3, r5, r4
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	movs r4, #0x01
	ands r3, r4
	strb r3, [r7, #0x00]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldrb r0, [r0, #0x00]
	movs r1, #0x78
	ands r1, r0
	cmp r1, #0x28
	beq _0804591A
	cmp r1, #0x38
	bne _08045930
_0804591A:
	ldr r0, [sp, #0x018]
	ldr r1, [r5, #0x14]
	cmp r0, r1
	ble _08045930
	ldr r2, _0804599C @ =0x0000027A
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	adds r0, r1, r0
	ldr r1, [sp, #0x014]
	cmp r1, r0
	ble _0804598E
_08045930:
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	movs r4, #0x04
	ldsh r2, [r6, r4]
	ldr r1, [r5, #0x0C]
	adds r1, r1, r2
	movs r2, #0x06
	ldsh r3, [r6, r2]
	ldr r2, [r5, #0x10]
	adds r2, r2, r3
	mov r3, r10
	str r3, [sp, #0x000]
	mov r4, r9
	str r4, [sp, #0x004]
	movs r3, #0x00
	mov r4, r8
	strb r3, [r4, #0x00]
	ldr r4, _08045998 @ =0x0000020D
	adds r3, r5, r4
	ldrb r3, [r3, #0x00]
	lsrs r3, r3, #0x03
	movs r4, #0x01
	ands r3, r4
	strb r3, [r7, #0x00]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldrb r0, [r0, #0x00]
	movs r1, #0x78
	ands r1, r0
	cmp r1, #0x28
	beq _08045978
	cmp r1, #0x38
	bne _080459A0
_08045978:
	ldr r0, [sp, #0x018]
	ldr r1, [r5, #0x14]
	cmp r0, r1
	ble _080459A0
	ldr r2, _0804599C @ =0x0000027A
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	adds r0, r1, r0
	ldr r1, [sp, #0x014]
	cmp r1, r0
	bgt _080459A0
_0804598E:
	movs r0, #0x01
	b _080459AE
	.byte 0x00, 0x00
_08045994: .4byte 0x083A06E0
_08045998: .4byte 0x0000020D
_0804599C: .4byte 0x0000027A
_080459A0:
	adds r6, #0x08
	ldr r3, [sp, #0x01C]
	adds r3, #0x02
	str r3, [sp, #0x01C]
	cmp r3, #0x09
	bls _080458D2
	movs r0, #0x00
_080459AE:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
