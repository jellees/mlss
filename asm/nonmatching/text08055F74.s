	thumb_func_start sub_8055F74
sub_8055F74:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	str r1, [sp, #0x004]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	bl sprite_hide_8021F20
	adds r0, r7, #0x0
	adds r0, #0xC0
	ldr r0, [r0, #0x00]
	bl sprite_hide_8021F20
	movs r1, #0x00
	movs r0, #0x64
	mov r8, r0
	adds r4, r7, #0x0
	adds r4, #0xC8
	ldr r0, [r4, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	movs r5, #0xB4
	strh r5, [r0, #0x00]
	ldr r0, [r4, #0x00]
	mov r1, r8
	strh r1, [r0, #0x02]
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	movs r2, #0x78
	mov r8, r2
	adds r4, #0x04
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	strh r5, [r0, #0x00]
	ldr r0, [r4, #0x00]
	mov r2, r8
	strh r2, [r0, #0x02]
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	movs r0, #0x8C
	mov r8, r0
	adds r4, #0x04
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	strh r5, [r0, #0x00]
	ldr r0, [r4, #0x00]
	mov r2, r8
	strh r2, [r0, #0x02]
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	movs r0, #0xA0
	mov r8, r0
	subs r4, #0x0C
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r4, #0x00]
	movs r0, #0x70
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xBC
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x5C
	strh r0, [r2, #0x02]
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	adds r4, #0x1C
	ldr r0, [r4, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r1, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r4, #0x00]
	movs r0, #0x79
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	ldr r0, [r4, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x04]
	ldr r0, [r4, #0x00]
	adds r2, r1, #0x0
	strh r2, [r0, #0x06]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r6, #0x04
	negs r6, r6
	adds r0, r6, #0x0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	subs r5, #0xC1
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r0, [r4, #0x00]
	movs r1, #0x02
	mov r9, r1
	mov r2, r9
	strh r2, [r0, #0x0E]
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	subs r4, #0x0C
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	movs r2, #0x40
	strh r2, [r0, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x8C
	mov r10, r1
	mov r2, r10
	strh r2, [r0, #0x02]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	adds r0, r6, #0x0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x1F]
	ands r5, r0
	movs r0, #0x04
	orrs r5, r0
	strb r5, [r1, #0x1F]
	ldr r0, [r4, #0x00]
	mov r1, r9
	strh r1, [r0, #0x0E]
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	adds r4, #0x08
	ldr r0, [r4, #0x00]
	ldr r2, [sp, #0x004]
	subs r2, #0x01
	lsls r1, r2, #0x01
	adds r1, r1, r2
	adds r1, #0x01
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	movs r1, #0x40
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	mov r2, r10
	strh r2, [r0, #0x02]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	adds r0, r6, #0x0
	ands r0, r1
	movs r5, #0x01
	orrs r0, r5
	strb r0, [r2, #0x1F]
	ldr r1, [r4, #0x00]
	movs r0, #0x01
	strh r0, [r1, #0x0E]
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	ldrb r0, [r7, #0x1D]
	ands r6, r0
	orrs r6, r5
	strb r6, [r7, #0x1D]
	ldr r3, _0805621C @ =0x0839EC80
	ldr r1, [r3, #0x00]
	ldrb r0, [r1, #0x01]
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r1, #0x01]
	ldr r0, [r3, #0x00]
	adds r0, #0x40
	movs r1, #0xF0
	strb r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, #0x41
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, #0x44
	mov r2, r8
	strb r2, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, #0x45
	movs r1, #0x90
	strb r1, [r0, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x48
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x48
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	mov r9, r2
	mov r2, r9
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x48
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x48
	ldrb r0, [r1, #0x00]
	movs r6, #0x08
	orrs r0, r6
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x48
	ldrb r2, [r1, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x48
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x4A
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x4A
	ldrb r0, [r1, #0x00]
	mov r2, r9
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x4A
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x4A
	ldrb r0, [r1, #0x00]
	orrs r0, r6
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x4A
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, #0x4A
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r0, _08056220 @ =0x02000018
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x06
	movs r2, #0x80
	lsls r2, r2, #0x01
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	adds r1, r2, #0x0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	movs r2, #0x00
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	str r2, [r7, #0x30]
	str r1, [r7, #0x34]
	str r1, [r7, #0x38]
	bl sub_80574FC
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805621C: .4byte 0x0839EC80
_08056220: .4byte 0x02000018
