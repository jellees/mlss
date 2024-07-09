
	.syntax unified
	.text

	thumb_func_start sub_8052A8C
sub_8052A8C:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	ldr r1, _08052B44 @ =0x0300034C
	mov r8, r1
	adds r0, #0x3C
	ldrb r5, [r0, #0x00]
	lsls r5, r5, #0x19
	lsrs r1, r5, #0x1D
	movs r3, #0x01
	movs r2, #0x01
	mov r10, r2
	ldr r2, _08052B48 @ =0x0000088A
	add r2, r8
	mov r9, r2
	adds r2, r3, #0x0
	ands r2, r1
	lsls r2, r2, #0x04
	mov r1, r9
	ldrb r4, [r1, #0x00]
	movs r6, #0x11
	negs r6, r6
	adds r1, r6, #0x0
	ands r1, r4
	orrs r1, r2
	mov r2, r9
	strb r1, [r2, #0x00]
	lsrs r2, r5, #0x1E
	mov r1, r10
	ands r2, r1
	ldr r1, _08052B4C @ =0x0000088B
	add r8, r1
	mov r1, r10
	ands r2, r1
	mov r1, r8
	ldrb r4, [r1, #0x00]
	movs r1, #0x02
	negs r1, r1
	ands r1, r4
	orrs r1, r2
	mov r2, r8
	strb r1, [r2, #0x00]
	ldr r4, _08052B50 @ =0x03000FFC
	ldr r1, [r4, #0x00]
	mov r8, r1
	lsrs r5, r5, #0x1D
	ands r3, r5
	mov r2, r10
	ands r3, r2
	lsls r3, r3, #0x03
	ldrb r2, [r1, #0x08]
	movs r1, #0x09
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	mov r2, r8
	strb r1, [r2, #0x08]
	ldr r3, [r4, #0x00]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1E
	mov r2, r10
	ands r1, r2
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x08]
	ands r6, r2
	orrs r6, r1
	strb r6, [r3, #0x08]
	ldr r3, [r4, #0x00]
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	mov r0, r10
	ands r1, r0
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x08]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x08]
	bl sub_812454C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08052B44: .4byte 0x0300034C
_08052B48: .4byte 0x0000088A
_08052B4C: .4byte 0x0000088B
_08052B50: .4byte 0x03000FFC