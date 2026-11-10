	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_081DC7F4
sub_081DC7F4: @ 0x081DC7F4
	push {lr}
	adds r1, r0, #0
	ldr r0, _081DC804 @ =_impure_ptr
	ldr r0, [r0]
	bl sub_081DC978
	pop {pc}
	.align 2, 0
_081DC804: .4byte _impure_ptr

	thumb_func_start sub_081DC808
sub_081DC808: @ 0x081DC808
	push {lr}
	adds r1, r0, #0
	ldr r0, _081DC818 @ =_impure_ptr
	ldr r0, [r0]
	bl _free_r
	pop {pc}
	.align 2, 0
_081DC818: .4byte _impure_ptr

	thumb_func_start sub_081DC81C
sub_081DC81C: @ 0x081DC81C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _081DC890 @ =0x08CDB634
	ldr r0, [r0, #8]
	mov r8, r0
	ldr r7, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _081DC894 @ =0x08CDBA40
	ldr r0, [r0]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldr r3, _081DC898 @ =0x08CDBA44
	mov sl, r3
	ldr r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	cmp r0, sb
	beq _081DC85E
	ldr r3, _081DC89C @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _081DC8A0 @ =0xFFFFF000
	ands r6, r0
_081DC85E:
	ldr r0, [sp]
	adds r1, r6, #0
	bl _sbrk_r
	adds r5, r0, #0
	cmp r5, sb
	beq _081DC960
	cmp r5, r4
	bhs _081DC876
	ldr r0, _081DC890 @ =0x08CDB634
	cmp r8, r0
	bne _081DC960
_081DC876:
	ldr r1, _081DC8A4 @ =0x08CDBA50
	ldr r0, [r1]
	adds r2, r0, r6
	str r2, [r1]
	cmp r5, r4
	bne _081DC8A8
	adds r2, r6, r7
	ldr r3, _081DC890 @ =0x08CDB634
	ldr r1, [r3, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #4]
	b _081DC948
	.align 2, 0
_081DC890: .4byte 0x08CDB634
_081DC894: .4byte 0x08CDBA40
_081DC898: .4byte 0x08CDBA44
_081DC89C: .4byte 0x0000100F
_081DC8A0: .4byte 0xFFFFF000
_081DC8A4: .4byte 0x08CDBA50
_081DC8A8:
	mov r3, sl
	ldr r0, [r3]
	cmp r0, sb
	bne _081DC8B4
	str r5, [r3]
	b _081DC8BA
_081DC8B4:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1]
_081DC8BA:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _081DC8CE
	movs r0, #8
	subs r4, r0, r1
	adds r5, r5, r4
	b _081DC8D0
_081DC8CE:
	movs r4, #0
_081DC8D0:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp]
	adds r1, r4, #0
	bl _sbrk_r
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _081DC960
	ldr r1, _081DC918 @ =0x08CDBA50
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _081DC91C @ =0x08CDB634
	str r5, [r1, #8]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #1
	orrs r2, r3
	str r2, [r5, #4]
	cmp r8, r1
	beq _081DC948
	cmp r7, #0xf
	bhi _081DC920
	str r3, [r5, #4]
	b _081DC960
	.align 2, 0
_081DC918: .4byte 0x08CDBA50
_081DC91C: .4byte 0x08CDB634
_081DC920:
	subs r7, #0xc
	movs r0, #8
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #4]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #4]
	adds r1, r2, r7
	movs r0, #5
	str r0, [r1, #4]
	str r0, [r1, #8]
	cmp r7, #0xf
	bls _081DC948
	mov r1, r8
	adds r1, #8
	ldr r0, [sp]
	bl _free_r
_081DC948:
	ldr r0, _081DC96C @ =0x08CDBA50
	ldr r2, _081DC970 @ =0x08CDBA48
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bls _081DC956
	str r1, [r2]
_081DC956:
	ldr r2, _081DC974 @ =0x08CDBA4C
	ldr r0, [r2]
	cmp r1, r0
	bls _081DC960
	str r1, [r2]
_081DC960:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_081DC96C: .4byte 0x08CDBA50
_081DC970: .4byte 0x08CDBA48
_081DC974: .4byte 0x08CDBA4C

	thumb_func_start sub_081DC978
sub_081DC978: @ 0x081DC978
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r1, #0xb
	cmp r1, #0x16
	ble _081DC99A
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _081DC99E
_081DC99A:
	movs r3, #0x10
	mov r8, r3
_081DC99E:
	ldr r0, [sp]
	bl __malloc_lock
	ldr r0, _081DC9E4 @ =0x000001F7
	cmp r8, r0
	bhi _081DC9F2
	mov r4, r8
	lsrs r4, r4, #3
	mov ip, r4
	ldr r0, _081DC9E8 @ =0x08CDB634
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0xc]
	cmp r5, r2
	bne _081DC9C6
	adds r2, r5, #0
	adds r2, #8
	ldr r5, [r2, #0xc]
	cmp r5, r2
	beq _081DC9EC
_081DC9C6:
	ldr r2, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r2
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _081DCD1E
	.align 2, 0
_081DC9E4: .4byte 0x000001F7
_081DC9E8: .4byte 0x08CDB634
_081DC9EC:
	movs r0, #2
	add ip, r0
	b _081DCA9E
_081DC9F2:
	mov r2, r8
	lsrs r1, r2, #9
	cmp r1, #0
	bne _081DC9FE
	lsrs r2, r2, #3
	b _081DCA4E
_081DC9FE:
	cmp r1, #4
	bhi _081DCA0C
	mov r3, r8
	lsrs r0, r3, #6
	adds r0, #0x38
	mov ip, r0
	b _081DCA50
_081DCA0C:
	cmp r1, #0x14
	bhi _081DCA16
	adds r1, #0x5b
	mov ip, r1
	b _081DCA50
_081DCA16:
	cmp r1, #0x54
	bhi _081DCA24
	mov r4, r8
	lsrs r0, r4, #0xc
	adds r0, #0x6e
	mov ip, r0
	b _081DCA50
_081DCA24:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _081DCA36
	mov r7, r8
	lsrs r0, r7, #0xf
	adds r0, #0x77
	mov ip, r0
	b _081DCA50
_081DCA36:
	ldr r0, _081DCA48 @ =0x00000554
	cmp r1, r0
	bhi _081DCA4C
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7c
	mov ip, r0
	b _081DCA50
	.align 2, 0
_081DCA48: .4byte 0x00000554
_081DCA4C:
	movs r2, #0x7e
_081DCA4E:
	mov ip, r2
_081DCA50:
	mov r3, ip
	lsls r0, r3, #3
	ldr r1, _081DCA74 @ =0x08CDB634
	adds r4, r0, r1
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _081DCA9A
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _081DCA78
	adds r0, #3
	add ip, r0
	b _081DCA9A
	.align 2, 0
_081DCA74: .4byte 0x08CDB634
_081DCA78:
	cmp r3, #0
	blt _081DCA7E
	b _081DCCB8
_081DCA7E:
	ldr r5, [r5, #0xc]
	cmp r5, r4
	beq _081DCA9A
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0xf
	ble _081DCA78
	movs r3, #1
	rsbs r3, r3, #0
	add ip, r3
_081DCA9A:
	movs r4, #1
	add ip, r4
_081DCA9E:
	ldr r0, _081DCADC @ =0x08CDB63C
	ldr r5, [r0, #8]
	mov sl, r0
	cmp r5, sl
	bne _081DCAAA
	b _081DCBAC
_081DCAAA:
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _081DCAE0
	adds r2, r5, r7
	movs r1, #1
	adds r0, r7, #0
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, sl
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _081DCD1E
	.align 2, 0
_081DCADC: .4byte 0x08CDB63C
_081DCAE0:
	mov r7, sl
	str r7, [r7, #0xc]
	str r7, [r7, #8]
	cmp r3, #0
	blt _081DCAF6
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _081DCD1E
_081DCAF6:
	ldr r0, _081DCB18 @ =0x000001FF
	cmp r1, r0
	bhi _081DCB1C
	lsrs r2, r1, #3
	mov r3, sl
	subs r3, #8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3, #4]
	orrs r0, r1
	str r0, [r3, #4]
	lsls r0, r2, #3
	adds r6, r0, r3
	ldr r4, [r6, #8]
	b _081DCBA4
	.align 2, 0
_081DCB18: .4byte 0x000001FF
_081DCB1C:
	lsrs r2, r1, #9
	cmp r2, #0
	bne _081DCB26
	lsrs r2, r1, #3
	b _081DCB6A
_081DCB26:
	cmp r2, #4
	bhi _081DCB32
	lsrs r0, r1, #6
	adds r2, r0, #0
	adds r2, #0x38
	b _081DCB6A
_081DCB32:
	cmp r2, #0x14
	bhi _081DCB3A
	adds r2, #0x5b
	b _081DCB6A
_081DCB3A:
	cmp r2, #0x54
	bhi _081DCB46
	lsrs r0, r1, #0xc
	adds r2, r0, #0
	adds r2, #0x6e
	b _081DCB6A
_081DCB46:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	bhi _081DCB56
	lsrs r0, r1, #0xf
	adds r2, r0, #0
	adds r2, #0x77
	b _081DCB6A
_081DCB56:
	ldr r0, _081DCB64 @ =0x00000554
	cmp r2, r0
	bhi _081DCB68
	lsrs r0, r1, #0x12
	adds r2, r0, #0
	adds r2, #0x7c
	b _081DCB6A
	.align 2, 0
_081DCB64: .4byte 0x00000554
_081DCB68:
	movs r2, #0x7e
_081DCB6A:
	lsls r0, r2, #3
	ldr r3, _081DCB88 @ =0x08CDB634
	adds r6, r0, r3
	ldr r4, [r6, #8]
	cmp r4, r6
	bne _081DCB8C
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r7, _081DCB88 @ =0x08CDB634
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _081DCBA4
	.align 2, 0
_081DCB88: .4byte 0x08CDB634
_081DCB8C:
	ldr r0, [r4, #4]
	movs r2, #4
	rsbs r2, r2, #0
	b _081DCB9C
_081DCB94:
	ldr r4, [r4, #8]
	cmp r4, r6
	beq _081DCBA2
	ldr r0, [r4, #4]
_081DCB9C:
	ands r0, r2
	cmp r1, r0
	blo _081DCB94
_081DCBA2:
	ldr r6, [r4, #0xc]
_081DCBA4:
	str r6, [r5, #0xc]
	str r4, [r5, #8]
	str r5, [r6, #8]
	str r5, [r4, #0xc]
_081DCBAC:
	mov r0, ip
	cmp r0, #0
	bge _081DCBB4
	adds r0, #3
_081DCBB4:
	asrs r0, r0, #2
	movs r6, #1
	lsls r6, r0
	ldr r0, _081DCBD8 @ =0x08CDB634
	ldr r1, [r0, #4]
	cmp r6, r1
	bhi _081DCC76
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _081DCBEA
	movs r0, #4
	rsbs r0, r0, #0
	mov r2, ip
	ands r0, r2
	adds r0, #4
	mov ip, r0
	b _081DCBE0
	.align 2, 0
_081DCBD8: .4byte 0x08CDB634
_081DCBDC:
	movs r3, #4
	add ip, r3
_081DCBE0:
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _081DCBDC
_081DCBEA:
	ldr r4, _081DCC68 @ =0x08CDB634
	mov sb, r4
_081DCBEE:
	mov r7, ip
	str r7, [sp, #4]
	mov r1, ip
	lsls r0, r1, #3
	mov r3, sb
	adds r2, r0, r3
	adds r4, r2, #0
_081DCBFC:
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _081DCC1C
	movs r0, #4
	rsbs r0, r0, #0
_081DCC06:
	ldr r1, [r5, #4]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	bgt _081DCCCC
	cmp r3, #0
	bge _081DCCF4
	ldr r5, [r5, #0xc]
	cmp r5, r4
	bne _081DCC06
_081DCC1C:
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r0, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _081DCBFC
_081DCC2C:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _081DCC6C
	ldr r3, [sp, #4]
	subs r3, #1
	str r3, [sp, #4]
	subs r2, #8
	ldr r0, [r2, #8]
	cmp r0, r2
	beq _081DCC2C
_081DCC42:
	lsls r6, r6, #1
	mov r4, sb
	ldr r1, [r4, #4]
	cmp r6, r1
	bhi _081DCC76
	cmp r6, #0
	beq _081DCC76
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _081DCBEE
_081DCC58:
	movs r7, #4
	add ip, r7
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _081DCC58
	b _081DCBEE
	.align 2, 0
_081DCC68: .4byte 0x08CDB634
_081DCC6C:
	mov r1, sb
	ldr r0, [r1, #4]
	bics r0, r6
	str r0, [r1, #4]
	b _081DCC42
_081DCC76:
	ldr r2, _081DCCB4 @ =0x08CDB634
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	movs r4, #4
	rsbs r4, r4, #0
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	blo _081DCC8E
	cmp r3, #0xf
	bgt _081DCD08
_081DCC8E:
	ldr r0, [sp]
	mov r1, r8
	bl sub_081DC81C
	ldr r1, _081DCCB4 @ =0x08CDB634
	ldr r0, [r1, #8]
	ldr r0, [r0, #4]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	blo _081DCCAA
	cmp r3, #0xf
	bgt _081DCD08
_081DCCAA:
	ldr r0, [sp]
	bl __malloc_unlock
	movs r0, #0
	b _081DCD28
	.align 2, 0
_081DCCB4: .4byte 0x08CDB634
_081DCCB8:
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _081DCD1E
_081DCCCC:
	mov r4, r8
	adds r2, r5, r4
	movs r1, #1
	orrs r4, r1
	str r4, [r5, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	mov r7, sl
	str r2, [r7, #0xc]
	str r2, [r7, #8]
	str r7, [r2, #0xc]
	str r7, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _081DCD1E
_081DCCF4:
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	b _081DCD1E
_081DCD08:
	ldr r2, _081DCD34 @ =0x08CDB634
	ldr r5, [r2, #8]
	movs r1, #1
	mov r0, r8
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, r8
	adds r0, r5, r4
	str r0, [r2, #8]
	orrs r3, r1
	str r3, [r0, #4]
_081DCD1E:
	ldr r0, [sp]
	bl __malloc_unlock
	adds r0, r5, #0
	adds r0, #8
_081DCD28:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_081DCD34: .4byte 0x08CDB634
