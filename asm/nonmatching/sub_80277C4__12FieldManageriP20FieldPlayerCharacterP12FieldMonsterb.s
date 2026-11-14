	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_80277C4__12FieldManageriP20FieldPlayerCharacterP12FieldMonsterb
sub_80277C4__12FieldManageriP20FieldPlayerCharacterP12FieldMonsterb:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	mov r8, r1
	mov r10, r2
	adds r7, r3, #0x0
	add r0, sp, #0x028
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x000]
	bl stop_all_sfx_801959C
	movs r1, #0xC7
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	bl sub_80F032C
	ldr r4, [r6, #0x1C]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r5, #0x20
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802780A
	adds r0, r2, #0x0
	bl sprite_remove
_0802780A:
	movs r3, #0x00
	mov r9, r3
	movs r1, #0x99
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08027826
	adds r0, r2, #0x0
	bl sprite_remove
_08027826:
	movs r2, #0x9B
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802783E
	adds r0, r2, #0x0
	bl sprite_remove
_0802783E:
	movs r3, #0x9D
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08027856
	adds r0, r2, #0x0
	bl sprite_remove
_08027856:
	movs r1, #0x85
	lsls r1, r1, #0x01
	adds r0, r6, r1
	mov r2, r9
	strb r2, [r0, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xFC
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080279F0 @ =0x000002A9
	adds r3, r6, r0
	movs r1, #0x07
	mov r9, r1
	mov r2, r8
	mov r0, r9
	ands r2, r0
	lsls r2, r2, #0x02
	ldrb r1, [r3, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x54
	movs r2, #0xAA
	lsls r2, r2, #0x02
	adds r4, r6, r2
	movs r0, #0x1F
	ldrb r1, [r1, #0x00]
	ands r1, r0
	ldrb r2, [r4, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0xCF
	lsls r1, r1, #0x02
	mov r12, r1
	mov r1, r10
	add r1, r12
	ldrb r2, [r1, #0x00]
	movs r5, #0x01
	lsrs r2, r2, #0x07
	lsls r2, r2, #0x05
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x00]
	mov r4, r10
	adds r4, #0x54
	ldrb r0, [r4, #0x00]
	ands r0, r5
	lsls r0, r0, #0x05
	ldrb r2, [r3, #0x00]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	mov r2, r12
	adds r5, r7, r2
	ldrb r1, [r5, #0x00]
	movs r0, #0x80
	ands r0, r1
	str r4, [sp, #0x004]
	cmp r0, #0x00
	bne _0802790A
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	ldr r0, _080279F4 @ =0x0000033D
	adds r3, r7, r0
	mov r2, r9
	ands r1, r2
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r0, [r5, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x00]
_0802790A:
	movs r3, #0x85
	lsls r3, r3, #0x02
	mov r8, r3
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	mov r10, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r3, r7, r1
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _08027984
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08027984
	mov r0, r12
	adds r5, r2, r0
	ldrb r4, [r5, #0x00]
	movs r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	bne _08027978
	mov r1, r8
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	mov r2, r9
	ands r0, r2
	lsls r0, r0, #0x02
	movs r1, #0x1D
	negs r1, r1
	ands r1, r4
	orrs r1, r0
	strb r1, [r5, #0x00]
	ldr r1, [r3, #0x00]
	add r1, r12
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
_08027978:
	ldr r0, [r3, #0x00]
	add r0, r8
	ldrb r2, [r0, #0x00]
	mov r1, r10
	ands r1, r2
	strb r1, [r0, #0x00]
_08027984:
	movs r3, #0x8B
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, _080279F8 @ =0x000003FF
	ands r0, r1
	ldr r2, _080279FC @ =0x000002AA
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r1, _08027A00 @ =0x0839F5F8
	adds r3, #0x7D
	adds r4, r6, r3
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1D
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x004]
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	movs r0, #0x01
	ldr r2, [sp, #0x000]
	ands r2, r0
	lsls r3, r2, #0x06
	ldrb r1, [r4, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	lsls r2, r2, #0x07
	movs r1, #0x7F
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x01
	bl sub_803C8A4
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080279F0: .4byte 0x000002A9
_080279F4: .4byte 0x0000033D
_080279F8: .4byte 0x000003FF
_080279FC: .4byte 0x000002AA
_08027A00: .4byte 0x0839F5F8
