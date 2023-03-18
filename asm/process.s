	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start process_add
process_add: @ 080199A8
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	adds r5, r2, #0x0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _080199D0 @ =0x08CDBD68
	str r0, [r3, #0x18]
	movs r2, #0x00
	ldr r0, _080199D4 @ =0x0300034C
	ldr r1, [r0, #0x0C]
	adds r7, r0, #0x0
	cmp r1, #0x00
	bne _080199E2
	str r3, [r7, #0x0C]
	str r2, [r3, #0x0C]
	str r2, [r3, #0x10]
	adds r4, r3, #0x0
	adds r4, #0x08
	b _08019A0C
	.byte 0x00, 0x00
_080199D0: .4byte 0x08CDBD68
_080199D4: .4byte 0x0300034C
_080199D8:
	str r3, [r1, #0x10]
	str r1, [r3, #0x0C]
	str r0, [r3, #0x10]
	adds r2, #0x01
	b _08019A0C
_080199E2:
	adds r4, r3, #0x0
	adds r4, #0x08
	b _080199F2
_080199E8:
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	beq _080199D8
	adds r1, r0, #0x0
	adds r2, #0x01
_080199F2:
	ldrb r0, [r1, #0x01]
	cmp r0, r6
	bls _080199E8
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bne _08019A02
	str r3, [r7, #0x0C]
	b _08019A06
_08019A02:
	str r3, [r0, #0x10]
	ldr r0, [r1, #0x0C]
_08019A06:
	str r0, [r3, #0x0C]
	str r1, [r3, #0x10]
	str r3, [r1, #0x0C]
_08019A0C:
	ldr r0, [r7, #0x14]
	str r0, [r3, #0x14]
	lsls r2, r2, #0x02
	ldrb r1, [r3, #0x03]
	movs r0, #0x03
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x03]
	movs r2, #0x00
	strb r2, [r3, #0x00]
	strb r6, [r3, #0x01]
	ldrb r0, [r3, #0x02]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x3D
	negs r1, r1
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x02]
	ldrh r1, [r3, #0x02]
	ldr r0, _08019A60 @ =0xFFFFFC3F
	ands r0, r1
	strh r0, [r3, #0x02]
	str r2, [r3, #0x04]
	ldrb r0, [r5, #0x00]
	strb r0, [r4, #0x00]
	ldrb r0, [r5, #0x01]
	strb r0, [r4, #0x01]
	ldrb r0, [r5, #0x02]
	strb r0, [r4, #0x02]
	ldrb r0, [r5, #0x03]
	strb r0, [r4, #0x03]
	ldrb r0, [r7, #0x18]
	adds r0, #0x01
	strb r0, [r7, #0x18]
	adds r0, r3, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08019A60: .4byte 0xFFFFFC3F
	thumb_func_start process_execute_all
process_execute_all: @ 08019A64
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08019AFC @ =0x0300034C
	ldr r1, [r0, #0x0C]
	mov r10, r0
	cmp r1, #0x00
	beq _08019B5C
_08019A78:
	movs r0, #0x01
	mov r9, r0
	mov r1, r10
	ldr r4, [r1, #0x0C]
	cmp r4, #0x00
	beq _08019B56
	ldr r2, _08019AFC @ =0x0300034C
	mov r10, r2
	mov r7, r10
_08019A8A:
	ldr r0, [r4, #0x10]
	str r0, [r7, #0x10]
	str r4, [r7, #0x14]
	ldrb r1, [r4, #0x02]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08019B50
	movs r5, #0x02
	mov r8, r5
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08019B50
	lsls r0, r1, #0x1A
	asrs r5, r0, #0x1C
	movs r0, #0x08
	ands r0, r5
	cmp r0, #0x00
	beq _08019B04
	ldrh r2, [r4, #0x02]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r3, r1, #0x06
	ldr r6, _08019B00 @ =0xFFFFFC3F
	adds r0, r6, #0x0
	ands r0, r2
	orrs r0, r3
	strh r0, [r4, #0x02]
	cmn r1, r5
	blt _08019AE4
	ldr r1, [r4, #0x18]
	movs r2, #0x08
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x0C]
	bl _call_via_r1
	ldrh r1, [r4, #0x02]
	adds r0, r6, #0x0
	ands r0, r1
	strh r0, [r4, #0x02]
_08019AE4:
	ldr r0, [r7, #0x14]
	cmp r0, #0x00
	beq _08019B50
	ldr r0, [r4, #0x04]
	adds r0, #0x01
	str r0, [r4, #0x04]
	ldrb r0, [r4, #0x02]
	mov r5, r8
	orrs r0, r5
	strb r0, [r4, #0x02]
	b _08019B50
	.byte 0x00, 0x00
_08019AFC: .4byte 0x0300034C
_08019B00: .4byte 0xFFFFFC3F
_08019B04:
	ldr r1, [r4, #0x18]
	movs r2, #0x08
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x0C]
	bl _call_via_r1
	ldr r0, [r7, #0x14]
	cmp r0, #0x00
	beq _08019B50
	ldr r0, [r4, #0x04]
	adds r0, #0x01
	str r0, [r4, #0x04]
	ldrh r1, [r4, #0x02]
	lsls r2, r1, #0x16
	lsrs r2, r2, #0x1C
	adds r2, #0x01
	movs r0, #0x0F
	ands r2, r0
	lsls r3, r2, #0x06
	ldr r5, _08019B48 @ =0xFFFFFC3F
	adds r0, r5, #0x0
	ands r1, r0
	orrs r1, r3
	strh r1, [r4, #0x02]
	ldrb r1, [r4, #0x02]
	lsls r0, r1, #0x1A
	asrs r0, r0, #0x1C
	cmp r2, r0
	blt _08019B4C
	mov r0, r8
	orrs r0, r1
	strb r0, [r4, #0x02]
	b _08019B50
_08019B48: .4byte 0xFFFFFC3F
_08019B4C:
	movs r0, #0x00
	mov r9, r0
_08019B50:
	ldr r4, [r7, #0x10]
	cmp r4, #0x00
	bne _08019A8A
_08019B56:
	mov r1, r9
	cmp r1, #0x00
	beq _08019A78
_08019B5C:
	mov r5, r10
	ldr r2, [r5, #0x0C]
	cmp r2, #0x00
	beq _08019B8C
	movs r5, #0x03
	negs r5, r5
	ldr r4, _08019B9C @ =0xFFFFFC3F
	movs r3, #0x08
_08019B6C:
	ldrb r1, [r2, #0x02]
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r2, #0x02]
	lsls r0, r0, #0x1A
	asrs r0, r0, #0x1C
	ands r0, r3
	cmp r0, #0x00
	bne _08019B86
	ldrh r1, [r2, #0x02]
	adds r0, r4, #0x0
	ands r0, r1
	strh r0, [r2, #0x02]
_08019B86:
	ldr r2, [r2, #0x10]
	cmp r2, #0x00
	bne _08019B6C
_08019B8C:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08019B9C: .4byte 0xFFFFFC3F
	thumb_func_start process_exists
process_exists: @ 08019BA0
	push {lr}
	adds r1, r0, #0x0
	ldr r0, _08019BB4 @ =0x0300034C
	ldr r0, [r0, #0x0C]
	cmp r0, #0x00
	beq _08019BBE
_08019BAC:
	cmp r0, r1
	bne _08019BB8
	movs r0, #0x01
	b _08019BC0
_08019BB4: .4byte 0x0300034C
_08019BB8:
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bne _08019BAC
_08019BBE:
	movs r0, #0x00
_08019BC0:
	pop {r1}
	bx r1
	thumb_func_start process_enable_all
process_enable_all: @ 08019BC4
	push {lr}
	ldr r0, _08019BE4 @ =0x0300034C
	ldr r1, [r0, #0x0C]
	cmp r1, #0x00
	beq _08019BE0
	movs r3, #0x01
	movs r2, #0x02
_08019BD2:
	ldrb r0, [r1, #0x02]
	orrs r0, r3
	orrs r0, r2
	strb r0, [r1, #0x02]
	ldr r1, [r1, #0x10]
	cmp r1, #0x00
	bne _08019BD2
_08019BE0:
	pop {r0}
	bx r0
_08019BE4: .4byte 0x0300034C
	thumb_func_start process_8019BE8
process_8019BE8: @ 08019BE8
	push {r4, lr}
	ldr r0, _08019C18 @ =0x0300034C
	ldr r2, [r0, #0x0C]
	cmp r2, #0x00
	beq _08019C12
	movs r4, #0x02
	negs r4, r4
	movs r3, #0x02
_08019BF8:
	ldrb r0, [r2, #0x01]
	cmp r0, #0x00
	beq _08019C0C
	cmp r0, #0xFF
	beq _08019C0C
	ldrb r1, [r2, #0x02]
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x02]
_08019C0C:
	ldr r2, [r2, #0x10]
	cmp r2, #0x00
	bne _08019BF8
_08019C12:
	pop {r4}
	pop {r0}
	bx r0
_08019C18: .4byte 0x0300034C
	thumb_func_start process_enable
process_enable: @ 08019C1C
	ldrb r1, [r0, #0x02]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x02]
	bx lr
	.byte 0x00, 0x00
	thumb_func_start process_8019C2C
process_8019C2C: @ 08019C2C
	ldrb r2, [r0, #0x02]
	movs r1, #0x02
	negs r1, r1
	ands r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x02]
	bx lr
	thumb_func_start process_remove
process_remove: @ 08019C3C
	push {r4, lr}
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _08019C60 @ =0x08CDBD68
	str r0, [r2, #0x18]
	ldr r1, [r2, #0x10]
	cmp r1, #0x00
	beq _08019C50
	ldr r0, [r2, #0x0C]
	str r0, [r1, #0x0C]
_08019C50:
	ldr r1, [r2, #0x0C]
	cmp r1, #0x00
	bne _08019C68
	ldr r1, _08019C64 @ =0x0300034C
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x0C]
	b _08019C6E
	.byte 0x00, 0x00
_08019C60: .4byte 0x08CDBD68
_08019C64: .4byte 0x0300034C
_08019C68:
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x10]
	ldr r1, _08019CA0 @ =0x0300034C
_08019C6E:
	adds r3, r1, #0x0
	ldrb r0, [r3, #0x18]
	subs r0, #0x01
	strb r0, [r3, #0x18]
	ldr r0, [r3, #0x14]
	cmp r0, r2
	bne _08019C80
	movs r0, #0x00
	str r0, [r3, #0x14]
_08019C80:
	ldr r0, [r1, #0x10]
	cmp r0, r2
	bne _08019C8A
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x10]
_08019C8A:
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _08019C98
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_08019C98:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08019CA0: .4byte 0x0300034C
