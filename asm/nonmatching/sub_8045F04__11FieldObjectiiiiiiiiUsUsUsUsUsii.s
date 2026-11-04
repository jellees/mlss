	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_8045F04__11FieldObjectiiiiiiiiUsUsUsUsUsii
sub_8045F04__11FieldObjectiiiiiiiiUsUsUsUsUsii:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	str r1, [sp, #0x018]
	adds r5, r2, #0x0
	mov r8, r3
	ldr r0, [sp, #0x048]
	mov r9, r0
	ldr r1, [sp, #0x04C]
	mov r10, r1
	ldr r0, [sp, #0x05C]
	ldr r1, [sp, #0x060]
	ldr r2, [sp, #0x064]
	ldr r3, [sp, #0x068]
	ldr r4, [sp, #0x06C]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x020]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x024]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r12, r3
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	ldr r2, [sp, #0x018]
	cmp r2, #0x04
	bne _08045F50
	cmp r3, #0x00
	beq _08045FA6
_08045F50:
	mov r3, r8
	lsls r3, r3, #0x08
	mov r8, r3
	mov r0, r9
	lsls r0, r0, #0x08
	mov r9, r0
	mov r1, r10
	lsls r1, r1, #0x08
	mov r10, r1
	ldr r2, [r7, #0x0C]
	cmp r5, #0x01
	bne _08045F76
	add r8, r2
	ldr r0, [r7, #0x10]
	add r9, r0
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	add r10, r0
_08045F76:
	movs r5, #0xAF
	lsls r5, r5, #0x02
	adds r3, r7, r5
	str r2, [r3, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r0, [r7, #0x10]
	str r0, [r4, #0x00]
	movs r1, #0xB1
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	ldr r0, [r3, #0x00]
	cmp r8, r0
	bne _08045FAA
	ldr r0, [r4, #0x00]
	cmp r9, r0
	bne _08045FAA
	cmp r10, r1
	bne _08045FAA
_08045FA6:
	movs r0, #0x00
	b _080461A4
_08045FAA:
	movs r2, #0xB9
	lsls r2, r2, #0x02
	adds r0, r7, r2
	mov r3, r8
	str r3, [r0, #0x00]
	movs r5, #0xBA
	lsls r5, r5, #0x02
	adds r0, r7, r5
	mov r1, r9
	str r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r7, r2
	mov r3, r10
	str r3, [r0, #0x00]
	ldr r5, [sp, #0x070]
	cmp r5, #0x00
	blt _08045FD2
	movs r0, #0x01
	str r0, [sp, #0x070]
	b _08045FD8
_08045FD2:
	movs r1, #0x01
	negs r1, r1
	str r1, [sp, #0x070]
_08045FD8:
	movs r2, #0xBC
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r3, [sp, #0x070]
	mov r0, r12
	muls r0, r3
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	movs r5, #0xBD
	lsls r5, r5, #0x02
	adds r1, r7, r5
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x018]
	cmp r0, #0x04
	bne _08046002
	movs r1, #0xB8
	lsls r1, r1, #0x02
	adds r0, r7, r1
	strh r6, [r0, #0x00]
	b _080460C4
_08046002:
	ldr r2, [sp, #0x018]
	cmp r2, #0x03
	bne _080460B6
	cmp r6, #0x00
	bne _08046012
	ldr r3, _08046160 @ =0x0000023E
	adds r0, r7, r3
	ldrh r6, [r0, #0x00]
_08046012:
	movs r5, #0xB9
	lsls r5, r5, #0x02
	adds r0, r7, r5
	movs r1, #0xAF
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x01
	ldr r3, [sp, #0x050]
	subs r0, r2, r3
	muls r0, r1
	cmp r0, #0x00
	bge _08046034
	adds r0, #0xFF
_08046034:
	asrs r4, r0, #0x08
	movs r5, #0xBA
	lsls r5, r5, #0x02
	adds r0, r7, r5
	movs r3, #0xB0
	lsls r3, r3, #0x02
	adds r1, r7, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	ldr r5, [sp, #0x054]
	subs r1, r2, r5
	muls r0, r1
	cmp r0, #0x00
	bge _08046054
	adds r0, #0xFF
_08046054:
	asrs r3, r0, #0x08
	movs r1, #0xBB
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r5, #0xB1
	lsls r5, r5, #0x02
	adds r1, r7, r5
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	ldr r5, [sp, #0x058]
	subs r1, r2, r5
	muls r0, r1
	cmp r0, #0x00
	bge _08046074
	adds r0, #0xFF
_08046074:
	asrs r2, r0, #0x08
	ldr r5, _08046164 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r5, #0x00]
	bl _call_via_r1
	lsls r0, r0, #0x01
	ldr r1, _08046168 @ =0x00003243
	muls r0, r1
	ldr r4, _0804616C @ =0x0819832C
	ldr r1, _08046170 @ =0x08198220
	subs r4, r4, r1
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r1, r0, #0x0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x80
	lsls r0, r0, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080460B6:
	ldr r0, [sp, #0x070]
	adds r1, r6, #0x0
	muls r1, r0
	movs r2, #0xBE
	lsls r2, r2, #0x02
	adds r0, r7, r2
	strh r1, [r0, #0x00]
_080460C4:
	ldr r3, _08046174 @ =0x000002DE
	adds r1, r7, r3
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r5, _08046178 @ =0x000002B5
	adds r3, r7, r5
	movs r6, #0x07
	ldr r0, [sp, #0x018]
	ands r0, r6
	str r0, [sp, #0x018]
	ldrb r1, [r3, #0x00]
	movs r2, #0x08
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r1
	ldr r1, [sp, #0x018]
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0x1F
	ldr r3, [sp, #0x074]
	ands r1, r3
	ldr r0, _0804617C @ =0x000002B7
	adds r5, r7, r0
	lsls r1, r1, #0x03
	ldrb r3, [r5, #0x00]
	movs r4, #0x07
	adds r0, r4, #0x0
	ands r0, r3
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r1, [sp, #0x074]
	lsrs r0, r1, #0x05
	ands r0, r4
	movs r5, #0xAE
	lsls r5, r5, #0x02
	adds r3, r7, r5
	ands r0, r6
	ldrb r1, [r3, #0x00]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	movs r6, #0xF6
	lsls r6, r6, #0x01
	adds r5, r7, r6
	movs r1, #0xAF
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	mov r2, r8
	subs r4, r0, r2
	movs r3, #0xB0
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	mov r6, r9
	subs r2, r0, r6
	subs r1, #0xAF
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08046180
	subs r3, #0x64
	adds r0, r7, r3
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08046180
	movs r6, #0xB1
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	mov r1, r10
	subs r3, r0, r1
	b _08046182
	.byte 0x00, 0x00
_08046160: .4byte 0x0000023E
_08046164: .4byte 0x03001038
_08046168: .4byte 0x00003243
_0804616C: .4byte 0x0819832C
_08046170: .4byte 0x08198220
_08046174: .4byte 0x000002DE
_08046178: .4byte 0x000002B5
_0804617C: .4byte 0x000002B7
_08046180:
	movs r3, #0x00
_08046182:
	ldr r6, [sp, #0x050]
	str r6, [sp, #0x000]
	ldr r0, [sp, #0x054]
	str r0, [sp, #0x004]
	ldr r1, [sp, #0x058]
	str r1, [sp, #0x008]
	ldr r6, [sp, #0x01C]
	str r6, [sp, #0x00C]
	ldr r0, [sp, #0x020]
	str r0, [sp, #0x010]
	ldr r1, [sp, #0x024]
	str r1, [sp, #0x014]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_801B5A0
	movs r0, #0x01
_080461A4:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
