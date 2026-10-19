	.syntax unified
	.text

	thumb_func_start sub_805306C
sub_805306C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, [r0, #0x14]
	mov r10, r0
	ldr r0, _08053110 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r6, #0x30
	mov r0, r10
	adds r0, #0x49
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	bne _080530C6
	mov r2, r10
	ldrb r0, [r2, #0x00]
	cmp r0, #0x04
	bgt _080530C6
	cmp r0, #0x02
	blt _080530C6
	mov r0, r10
	adds r0, #0x45
	ldrb r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	mov r0, r10
	adds r0, #0x44
	ldrb r0, [r0, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x08
	adds r1, r7, #0x0
	orrs r0, r1
	strh r0, [r5, #0x02]
	movs r0, #0x78
	strh r0, [r5, #0x04]
	adds r5, #0x08
_080530C6:
	bl sub_8020A78
	ldr r2, _08053114 @ =0x03000D48
	ldr r4, _08053118 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _0805311C @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _08053120 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	movs r3, #0x00
	ldr r4, _08053124 @ =0x03000BD4
	ldr r7, _08053128 @ =0xFFFFF778
	adds r7, r7, r4
	mov r9, r7
	movs r0, #0x06
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r12, r1
_080530FC:
	ldrb r1, [r4, #0x00]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x02
	beq _0805312C
	cmp r3, #0x01
	bne _0805312C
	movs r2, #0x01
	b _0805313E
	.byte 0x00, 0x00
_08053110: .4byte 0x0300034C
_08053114: .4byte 0x03000D48
_08053118: .4byte 0x0203FFB8
_0805311C: .4byte 0x00000A14
_08053120: .4byte 0x03000D4C
_08053124: .4byte 0x03000BD4
_08053128: .4byte 0xFFFFF778
_0805312C:
	mov r0, r10
	adds r0, #0x3C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1D
	asrs r2, r3
	movs r0, #0x01
	eors r2, r0
	ands r2, r0
_0805313E:
	adds r0, r6, #0x0
	mov r7, r12
	orrs r0, r7
	strh r0, [r5, #0x00]
	ldr r1, _08053214 @ =0x00008098
	adds r0, r1, #0x0
	strh r0, [r5, #0x02]
	lsls r0, r2, #0x0C
	movs r7, #0xC0
	lsls r7, r7, #0x04
	adds r1, r7, #0x0
	orrs r0, r1
	strh r0, [r5, #0x04]
	adds r5, #0x08
	ldrb r1, [r4, #0x00]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x02
	beq _08053168
	cmp r3, #0x01
	beq _0805316C
_08053168:
	movs r0, #0x01
	eors r2, r0
_0805316C:
	adds r0, r6, #0x0
	mov r1, r12
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldr r7, _08053218 @ =0x000080B0
	adds r0, r7, #0x0
	strh r0, [r5, #0x02]
	lsls r0, r2, #0x0C
	ldr r2, _0805321C @ =0x00000C08
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r5, #0x04]
	adds r5, #0x08
	adds r3, #0x01
	adds r0, r6, #0x0
	adds r0, #0x18
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r3, #0x02
	ble _080530FC
	ldr r3, _08053220 @ =0x00004042
	adds r1, r3, #0x0
	strh r1, [r5, #0x00]
	ldr r7, _08053224 @ =0x00004020
	adds r3, r7, #0x0
	strh r3, [r5, #0x02]
	adds r2, #0x18
	adds r0, r2, #0x0
	strh r0, [r5, #0x04]
	adds r5, #0x08
	strh r1, [r5, #0x00]
	adds r7, #0x20
	adds r2, r7, #0x0
	strh r2, [r5, #0x02]
	ldr r1, _08053228 @ =0x00000C24
	adds r0, r1, #0x0
	strh r0, [r5, #0x04]
	adds r5, #0x08
	adds r7, #0x1A
	adds r1, r7, #0x0
	strh r1, [r5, #0x00]
	strh r3, [r5, #0x02]
	movs r3, #0xCC
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	strh r0, [r5, #0x04]
	adds r5, #0x08
	strh r1, [r5, #0x00]
	strh r2, [r5, #0x02]
	ldr r7, _0805322C @ =0x00000CC4
	adds r0, r7, #0x0
	strh r0, [r5, #0x04]
	adds r5, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x07
	adds r1, r0, #0x0
	strh r1, [r5, #0x00]
	ldr r2, _08053230 @ =0x00008010
	adds r0, r2, #0x0
	strh r0, [r5, #0x02]
	movs r3, #0xE4
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	strh r0, [r5, #0x04]
	adds r5, #0x08
	strh r1, [r5, #0x00]
	ldr r7, _08053234 @ =0x00008030
	adds r0, r7, #0x0
	strh r0, [r5, #0x02]
	ldr r1, _08053238 @ =0x00001C88
	adds r0, r1, #0x0
	strh r0, [r5, #0x04]
	adds r5, #0x08
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r9
	str r5, [r0, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08053214: .4byte 0x00008098
_08053218: .4byte 0x000080B0
_0805321C: .4byte 0x00000C08
_08053220: .4byte 0x00004042
_08053224: .4byte 0x00004020
_08053228: .4byte 0x00000C24
_0805322C: .4byte 0x00000CC4
_08053230: .4byte 0x00008010
_08053234: .4byte 0x00008030
_08053238: .4byte 0x00001C88
