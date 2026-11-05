	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804E0D8__21FieldPlayerShotBulletiP11FieldObjecti
sub_804E0D8__21FieldPlayerShotBulletiP11FieldObjecti:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	mov r8, r1
	mov r9, r2
	adds r6, r3, #0x0
	movs r0, #0x07
	mov r10, r0
	mov r2, r10
	ands r1, r2
	lsls r1, r1, #0x03
	ldrb r2, [r7, #0x00]
	movs r4, #0x39
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r0, #0x02
	negs r0, r0
	add r8, r0
	ldr r1, _0804E314 @ =0x083A0C5A
	mov r2, r8
	lsls r0, r2, #0x01
	adds r0, r0, r1
	ldrh r2, [r0, #0x00]
	ldr r0, [r7, #0x44]
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80210A8
	ldr r0, [r7, #0x44]
	mov r1, r9
	adds r1, #0x24
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	mov r2, r10
	ands r1, r2
	lsls r1, r1, #0x03
	ldrb r2, [r7, #0x01]
	ands r4, r2
	orrs r4, r1
	strb r4, [r7, #0x01]
	ldr r1, _0804E318 @ =0x083A05EC
	lsls r4, r4, #0x1A
	lsrs r4, r4, #0x1D
	adds r4, #0x20
	adds r4, r4, r1
	ldrb r1, [r4, #0x00]
	movs r4, #0x7F
	ands r4, r1
	lsrs r1, r1, #0x07
	mov r10, r1
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x44]
	bl sub_8021ED8
	cmp r6, #0x00
	beq _0804E19E
	adds r0, r7, #0x0
	adds r0, #0x3E
	strb r6, [r0, #0x00]
	ldr r1, [r7, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	blt _0804E18E
_0804E182:
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	subs r6, r6, r0
	cmp r6, r0
	bge _0804E182
_0804E18E:
	ldr r0, [r7, #0x44]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_801E150
_0804E19E:
	ldr r2, [r7, #0x44]
	mov r4, r10
	lsls r3, r4, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x11]
	mov r0, r9
	ldr r6, [r0, #0x0C]
	str r6, [r7, #0x18]
	str r6, [r7, #0x08]
	ldr r1, [r0, #0x10]
	mov r12, r1
	str r1, [r7, #0x1C]
	str r1, [r7, #0x0C]
	ldr r0, [r0, #0x14]
	str r0, [r7, #0x20]
	str r0, [r7, #0x10]
	ldr r0, _0804E31C @ =0x083A0C70
	mov r2, r8
	lsls r5, r2, #0x01
	adds r0, r5, r0
	movs r4, #0x00
	ldsh r1, [r0, r4]
	mov r2, r9
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x24]
	str r0, [r7, #0x14]
	ldr r0, [r7, #0x44]
	ldrh r0, [r0, #0x16]
	lsls r2, r0, #0x03
	subs r2, r2, r0
	ldr r0, _0804E320 @ =0x0801349C
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	lsrs r0, r0, #0x03
	movs r3, #0x3F
	lsls r0, r0, #0x09
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r0, r4
	strh r0, [r7, #0x38]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x03
	ldrb r1, [r2, #0x01]
	lsrs r1, r1, #0x05
	orrs r0, r1
	ands r0, r3
	adds r0, #0x01
	lsls r0, r0, #0x08
	strh r0, [r7, #0x3A]
	ldrb r0, [r2, #0x01]
	lsls r0, r0, #0x01
	ldrb r1, [r2, #0x02]
	lsrs r1, r1, #0x07
	orrs r0, r1
	ands r0, r3
	adds r0, #0x01
	lsls r0, r0, #0x08
	strh r0, [r7, #0x3C]
	ldrb r0, [r2, #0x02]
	lsrs r0, r0, #0x02
	lsls r0, r0, #0x01
	ands r0, r3
	adds r0, #0x02
	lsls r0, r0, #0x08
	strh r0, [r7, #0x32]
	ldrb r0, [r2, #0x02]
	lsls r0, r0, #0x04
	ldrb r1, [r2, #0x03]
	lsrs r1, r1, #0x04
	orrs r0, r1
	ands r0, r3
	adds r0, #0x01
	lsls r0, r0, #0x08
	strh r0, [r7, #0x34]
	ldrb r0, [r2, #0x03]
	lsls r0, r0, #0x02
	ldrb r1, [r2, #0x04]
	lsrs r1, r1, #0x06
	orrs r0, r1
	ands r0, r3
	adds r0, #0x01
	lsls r0, r0, #0x08
	strh r0, [r7, #0x36]
	ldr r0, _0804E324 @ =0x083A0C60
	adds r0, r5, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r7, #0x28]
	movs r0, #0x28
	ldsh r1, [r7, r0]
	ldr r2, _0804E328 @ =0x0839F564
	ldrb r0, [r7, #0x01]
	lsls r0, r0, #0x1A
	lsrs r3, r0, #0x1D
	lsls r0, r3, #0x02
	adds r0, r0, r2
	movs r4, #0x00
	ldsh r0, [r0, r4]
	muls r0, r1
	cmp r0, #0x00
	bge _0804E272
	adds r0, #0xFF
_0804E272:
	asrs r0, r0, #0x08
	strh r0, [r7, #0x2A]
	movs r0, #0x28
	ldsh r1, [r7, r0]
	lsls r4, r3, #0x01
	adds r0, r4, #0x1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	cmp r0, #0x00
	bge _0804E28E
	adds r0, #0xFF
_0804E28E:
	asrs r0, r0, #0x08
	strh r0, [r7, #0x2C]
	ldr r0, _0804E32C @ =0x083A0C66
	adds r0, r5, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	strh r0, [r7, #0x30]
	ldr r2, _0804E330 @ =0x083A0C76
	mov r0, r8
	lsls r1, r0, #0x04
	adds r1, r1, r4
	lsls r0, r1, #0x01
	adds r0, r0, r2
	movs r4, #0x00
	ldsh r0, [r0, r4]
	adds r0, r6, r0
	str r0, [r7, #0x08]
	adds r1, #0x01
	lsls r1, r1, #0x01
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r0, [r1, r2]
	add r0, r12
	str r0, [r7, #0x0C]
	subs r0, r3, #0x3
	movs r2, #0x0E
	cmp r0, #0x02
	bhi _0804E2CA
	movs r2, #0x0D
_0804E2CA:
	lsls r2, r2, #0x07
	ldrh r1, [r7, #0x00]
	ldr r0, _0804E334 @ =0xFFFFF87F
	ands r0, r1
	orrs r0, r2
	strh r0, [r7, #0x00]
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x40]
	ldr r0, _0804E338 @ =0x083A0C6C
	add r0, r8
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x07
	ldrb r2, [r7, #0x01]
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x01]
	ldrb r0, [r7, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r0, #0x00
	strh r0, [r7, #0x2E]
	strb r0, [r7, #0x02]
	mov r4, r9
	str r4, [r7, #0x48]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804E314: .4byte 0x083A0C5A
_0804E318: .4byte 0x083A05EC
_0804E31C: .4byte 0x083A0C70
_0804E320: .4byte 0x0801349C
_0804E324: .4byte 0x083A0C60
_0804E328: .4byte 0x0839F564
_0804E32C: .4byte 0x083A0C66
_0804E330: .4byte 0x083A0C76
_0804E334: .4byte 0xFFFFF87F
_0804E338: .4byte 0x083A0C6C
