	.include "asm/macros.inc"

	.syntax unified
	.text


	thumb_func_start EEPROMConfigure
EEPROMConfigure: @ 0x081DA6E4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _081DA700
	ldr r1, _081DA6F8 @ =0x03001BD0
	ldr r0, _081DA6FC @ =0x0821DBAC
	str r0, [r1]
	b _081DA71C
	.align 2, 0
_081DA6F8: .4byte 0x03001BD0
_081DA6FC: .4byte 0x0821DBAC
_081DA700:
	cmp r0, #0x40
	bne _081DA714
	ldr r1, _081DA70C @ =0x03001BD0
	ldr r0, _081DA710 @ =0x0821DBB8
	str r0, [r1]
	b _081DA71C
	.align 2, 0
_081DA70C: .4byte 0x03001BD0
_081DA710: .4byte 0x0821DBB8
_081DA714:
	ldr r1, _081DA724 @ =0x03001BD0
	ldr r0, _081DA728 @ =0x0821DBAC
	str r0, [r1]
	movs r2, #1
_081DA71C:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_081DA724: .4byte 0x03001BD0
_081DA728: .4byte 0x0821DBAC

	thumb_func_start DMA3Transfer
DMA3Transfer: @ 0x081DA72C
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _081DA78C @ =0x04000208
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _081DA790 @ =0x04000204
	ldrh r4, [r5]
	ldr r3, _081DA794 @ =0x0000F8FF
	ands r4, r3
	ldr r3, _081DA798 @ =0x03001BD0
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _081DA79C @ =0x040000D4
	str r0, [r3]
	ldr r0, _081DA7A0 @ =0x040000D8
	str r1, [r0]
	ldr r1, _081DA7A4 @ =0x040000DC
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _081DA780
	ldr r2, _081DA7A8 @ =0x040000DE
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_081DA778:
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _081DA778
_081DA780:
	ldr r0, _081DA78C @ =0x04000208
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081DA78C: .4byte 0x04000208
_081DA790: .4byte 0x04000204
_081DA794: .4byte 0x0000F8FF
_081DA798: .4byte 0x03001BD0
_081DA79C: .4byte 0x040000D4
_081DA7A0: .4byte 0x040000D8
_081DA7A4: .4byte 0x040000DC
_081DA7A8: .4byte 0x040000DE

	thumb_func_start EEPROMRead
EEPROMRead: @ 0x081DA7AC
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _081DA7C4 @ =0x03001BD0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blo _081DA7CC
	ldr r0, _081DA7C8 @ =0x000080FF
	b _081DA84E
	.align 2, 0
_081DA7C4: .4byte 0x03001BD0
_081DA7C8: .4byte 0x000080FF
_081DA7CC:
	ldr r0, _081DA858 @ =0x03001BD0
	adds r6, r0, #0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bhs _081DA7F6
_081DA7E2:
	strh r3, [r2]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _081DA7E2
_081DA7F6:
	movs r0, #1
	strh r0, [r2]
	subs r2, #2
	strh r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _081DA858 @ =0x03001BD0
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #3
	mov r0, sp
	adds r1, r4, #0
	bl DMA3Transfer
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl DMA3Transfer
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
_081DA824:
	movs r1, #0
	movs r3, #0
_081DA828:
	lsls r1, r1, #0x11
	ldrh r0, [r2]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _081DA828
	strh r1, [r5]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081DA824
	movs r0, #0
_081DA84E:
	add sp, #0x88
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_081DA858: .4byte 0x03001BD0

	thumb_func_start EEPROMWrite1
EEPROMWrite1: @ 0x081DA85C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #1
	bl EEPROMWrite
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start EEPROMWrite
EEPROMWrite: @ 0x081DA870
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb0
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _081DA88C @ =0x03001BD0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _081DA894
	ldr r0, _081DA890 @ =0x000080FF
	b _081DA9C8
	.align 2, 0
_081DA88C: .4byte 0x03001BD0
_081DA890: .4byte 0x000080FF
_081DA894:
	ldr r0, _081DA8D4 @ =0x03001BD0
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r2, sp
	adds r3, r0, r2
	adds r3, #0x84
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r4, #0
_081DA8AA:
	ldrh r2, [r5]
	adds r5, #2
	movs r0, #0
_081DA8B0:
	strh r2, [r3]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _081DA8B0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081DA8AA
	movs r4, #0
	ldr r0, _081DA8D4 @ =0x03001BD0
	adds r2, r0, #0
	ldr r0, [r0]
	b _081DA8E6
	.align 2, 0
_081DA8D4: .4byte 0x03001BD0
_081DA8D8:
	strh r1, [r3]
	subs r3, #2
	lsrs r1, r1, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r2]
_081DA8E6:
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _081DA8D8
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r6, #1
	strh r6, [r3]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _081DA958 @ =0x03001BD0
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #0x43
	mov r0, sp
	adds r1, r4, #0
	bl DMA3Transfer
	movs r5, #0
	add r2, sp, #0xa4
	strh r5, [r2]
	mov r1, sp
	adds r1, #0xa6
	ldr r0, _081DA95C @ =0x04000006
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, sp, #0xac
	str r5, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	bne _081DA92C
	ldrh r0, [r4]
	ands r0, r6
	cmp r0, #0
	bne _081DA9BC
_081DA92C:
	add r3, sp, #0xa8
	ldr r0, _081DA95C @ =0x04000006
	ldrh r0, [r0]
	strh r0, [r3]
	mov r4, sp
	adds r4, #0xa6
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	beq _081DA9A6
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	bls _081DA960
	add r2, sp, #0xac
	ldrh r1, [r3]
	ldrh r0, [r4]
	subs r1, r1, r0
	ldr r0, [r2]
	adds r1, r1, r0
	str r1, [r2]
	b _081DA976
	.align 2, 0
_081DA958: .4byte 0x03001BD0
_081DA95C: .4byte 0x04000006
_081DA960:
	add r2, sp, #0xac
	add r0, sp, #0xa8
	ldrh r0, [r0]
	adds r0, #0xe4
	mov r1, sp
	adds r1, #0xa6
	ldrh r1, [r1]
	subs r0, r0, r1
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r2]
_081DA976:
	add r0, sp, #0xac
	ldr r0, [r0]
	cmp r0, #0x88
	bls _081DA99C
	add r0, sp, #0xa4
	ldrh r0, [r0]
	cmp r0, #0
	bne _081DA9C6
	movs r0, #0xd0
	lsls r0, r0, #0x14
	ldrh r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081DA9C6
	ldr r5, _081DA998 @ =0x0000C001
	b _081DA9C6
	.align 2, 0
_081DA998: .4byte 0x0000C001
_081DA99C:
	mov r0, sp
	adds r0, #0xa6
	add r1, sp, #0xa8
	ldrh r1, [r1]
	strh r1, [r0]
_081DA9A6:
	add r2, sp, #0xa4
	ldrh r0, [r2]
	cmp r0, #0
	bne _081DA92C
	movs r0, #0xd0
	lsls r0, r0, #0x14
	movs r1, #1
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _081DA92C
_081DA9BC:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	cmp r7, #0
	bne _081DA92C
_081DA9C6:
	adds r0, r5, #0
_081DA9C8:
	add sp, #0xb0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start EEPROMCompare
EEPROMCompare: @ 0x081DA9D0
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	ldr r0, _081DA9EC @ =0x03001BD0
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _081DA9F4
	ldr r0, _081DA9F0 @ =0x000080FF
	b _081DAA1E
	.align 2, 0
_081DA9EC: .4byte 0x03001BD0
_081DA9F0: .4byte 0x000080FF
_081DA9F4:
	adds r0, r1, #0
	mov r1, sp
	bl EEPROMRead
	mov r2, sp
	movs r3, #0
	b _081DAA0C
_081DAA02:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _081DAA1C
_081DAA0C:
	ldrh r1, [r4]
	ldrh r0, [r2]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq _081DAA02
	movs r5, #0x80
	lsls r5, r5, #8
_081DAA1C:
	adds r0, r5, #0
_081DAA1E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start EEPROMWrite1_check
EEPROMWrite1_check: @ 0x081DAA28
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _081DAA3A
_081DAA34:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_081DAA3A:
	cmp r6, #2
	bhi _081DAA5E
	adds r0, r4, #0
	adds r1, r5, #0
	bl EEPROMWrite1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _081DAA34
	adds r0, r4, #0
	adds r1, r5, #0
	bl EEPROMCompare
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _081DAA34
_081DAA5E:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
