	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_80EDAB0__16FieldEventScriptP13ScriptContextPi
sub_80EDAB0__16FieldEventScriptP13ScriptContextPi:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldm r2!, {r0}
	ldr r1, [r6, #20]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0, #40]
	adds r5, r3, #0
	adds r5, #88
	ldr r0, [r2, #0]
	asrs r0, r0, #1
	cmp r0, #5
	bhi _080EDBB2
	lsls r0, r0, #2
	ldr r1, _080EDAD8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0
_080EDAD8: .4byte _080EDADC
_080EDADC:
	.4byte _080EDAF4
	.4byte _080EDB0C
	.4byte _080EDB22
	.4byte _080EDB3E
	.4byte _080EDB52
	.4byte _080EDB98
_080EDAF4:
	movs r4, #0
	ldr r1, [r2, #0]
	movs r0, #1
	ands r1, r0
	ldr r5, _080EDB08
	adds r0, r3, r5
	ldrb r0, [r0, #0]
	lsls r0, r0, #30
	b _080EDBAA
	.2byte 0
_080EDB08:
	.4byte 0x20F
_080EDB0C:
	adds r0, r5, #0
	adds r0, #160
	ldrh r1, [r0, #0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080EDB8C
	ldr r1, [r2, #0]
	ands r1, r3
	b _080EDB94
_080EDB22:
	adds r0, r3, #0
	adds r0, #36
	ldrb r1, [r0, #0]
	lsls r1, r1, #25
	lsrs r1, r1, #28
	ldrh r0, [r3, #36]
	lsls r0, r0, #23
	lsrs r0, r0, #30
	orrs r1, r0
	cmp r1, #0
	beq _080EDB8C
	ldr r1, [r2, #0]
	movs r0, #1
	b _080EDB92
_080EDB3E:
	adds r0, r3, #0
	adds r0, #37
	ldrb r1, [r0, #0]
	movs r0, #120
	ands r0, r1
	cmp r0, #0
	beq _080EDB8C
	ldr r1, [r2, #0]
	movs r0, #1
	b _080EDB92
_080EDB52:
	ldr r4, [r6, #20]
	movs r1, #128
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0, #0]
	movs r5, #207
	lsls r5, r5, #2
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	lsls r0, r0, #25
	asrs r0, r0, #25
	adds r1, r3, #0
	adds r1, #84
	ldrb r1, [r1, #0]
	cmp r0, r1
	beq _080EDB86
	movs r3, #129
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0, #0]
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	lsls r0, r0, #25
	asrs r0, r0, #25
	cmp r0, r1
	bne _080EDB8C
_080EDB86:
	ldr r1, [r2, #0]
	movs r0, #1
	b _080EDB92
_080EDB8C:
	ldr r1, [r2, #0]
	movs r0, #1
	eors r1, r0
_080EDB92:
	ands r1, r0
_080EDB94:
	adds r4, r1, #0
	b _080EDBB2
_080EDB98:
	movs r4, #0
	ldr r1, [r2, #0]
	movs r0, #1
	ands r1, r0
	movs r5, #131
	lsls r5, r5, #2
	adds r0, r3, r5
	ldrb r0, [r0, #0]
	lsls r0, r0, #31
_080EDBAA:
	lsrs r0, r0, #31
	cmp r1, r0
	bne _080EDBB2
	movs r4, #1
_080EDBB2:
	cmp r4, #0
	beq _080EDBBA
	ldr r0, [r2, #4]
	str r0, [r7, #0]
_080EDBBA:
	movs r0, #1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
