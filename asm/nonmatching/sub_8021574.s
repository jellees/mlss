	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_8021574
sub_8021574:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x000]
	mov r9, r1
	str r2, [sp, #0x004]
	str r3, [sp, #0x008]
	ldr r4, [sp, #0x03C]
	ldr r1, _08021618 @ =0x0203FFB8
	movs r0, #0x00
	mov r10, r0
	movs r7, #0x00
	movs r0, #0xF0
	lsls r0, r0, #0x08
	mov r2, r9
	ands r0, r2
	cmp r0, #0x00
	beq _080215AA
	asrs r0, r2, #0x0C
	subs r0, #0x01
	str r0, [sp, #0x000]
	ldr r0, _0802161C @ =0x00000FFF
	ands r2, r0
	mov r9, r2
_080215AA:
	ldrb r1, [r1, #0x04]
	mov r8, r1
	mov r6, r8
	cmp r6, #0x0F
	ble _080215B6
	b _08021724
_080215B6:
	lsls r0, r6, #0x01
	ldr r1, _08021620 @ =0x0203FFC4
	adds r1, r1, r0
	mov r12, r1
	movs r0, #0x10
	subs r0, r0, r6
	movs r2, #0x01
	ands r0, r2
	cmp r6, #0x10
	bge _080215CE
	cmp r0, #0x00
	beq _0802164A
_080215CE:
	mov r0, r12
	ldrh r2, [r0, #0x00]
	lsls r1, r2, #0x10
	ldr r0, _08021624 @ =0x0000FFFF
	cmp r2, r0
	beq _08021634
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _0802162C
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _08021640
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	ldr r0, _08021628 @ =0x000003FF
	ands r0, r2
	ldr r2, [sp, #0x000]
	cmp r2, r1
	bne _08021640
	cmp r9, r0
	bne _08021640
	cmp r3, #0x00
	bne _08021640
	movs r0, #0x01
	mov r1, r8
	lsls r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _08021640
	.byte 0x00, 0x00
_08021618: .4byte 0x0203FFB8
_0802161C: .4byte 0x00000FFF
_08021620: .4byte 0x0203FFC4
_08021624: .4byte 0x0000FFFF
_08021628: .4byte 0x000003FF
_0802162C:
	cmp r4, r8
	bne _08021640
	movs r0, #0x01
	b _0802190A
_08021634:
	movs r0, #0x01
	mov r2, r8
	lsls r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_08021640:
	movs r0, #0x02
	add r12, r0
	adds r6, #0x01
	cmp r6, #0x0F
	bgt _08021724
_0802164A:
	mov r1, r12
	ldrh r2, [r1, #0x00]
	lsls r1, r2, #0x10
	ldr r0, _08021694 @ =0x0000FFFF
	cmp r2, r0
	beq _080216A4
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _0802169C
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _080216B2
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	ldr r0, _08021698 @ =0x000003FF
	ands r0, r2
	ldr r2, [sp, #0x000]
	cmp r2, r1
	bne _080216B2
	cmp r9, r0
	bne _080216B2
	cmp r3, #0x00
	bne _080216B2
	movs r0, #0x01
	lsls r0, r6
	orrs r7, r0
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	b _080216B2
	.byte 0x00, 0x00
_08021694: .4byte 0x0000FFFF
_08021698: .4byte 0x000003FF
_0802169C:
	cmp r4, r6
	bne _080216B2
	movs r0, #0x01
	b _0802190A
_080216A4:
	movs r0, #0x01
	lsls r0, r6
	mov r1, r10
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_080216B2:
	adds r3, r6, #0x1
	mov r0, r12
	ldrh r2, [r0, #0x02]
	lsls r1, r2, #0x10
	ldr r0, _080216FC @ =0x0000FFFF
	cmp r2, r0
	beq _0802170C
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _08021704
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _0802171A
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	ldr r0, _08021700 @ =0x000003FF
	ands r0, r2
	ldr r2, [sp, #0x000]
	cmp r2, r1
	bne _0802171A
	cmp r9, r0
	bne _0802171A
	cmp r5, #0x00
	bne _0802171A
	movs r0, #0x01
	lsls r0, r3
	orrs r7, r0
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	b _0802171A
_080216FC: .4byte 0x0000FFFF
_08021700: .4byte 0x000003FF
_08021704:
	cmp r4, r3
	bne _0802171A
	movs r0, #0x01
	b _0802190A
_0802170C:
	movs r0, #0x01
	lsls r0, r3
	mov r1, r10
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_0802171A:
	movs r2, #0x04
	add r12, r2
	adds r6, #0x02
	cmp r6, #0x0F
	ble _0802164A
_08021724:
	cmp r7, #0x00
	beq _0802172A
	b _08021904
_0802172A:
	ldr r0, _08021768 @ =0x0839EF3C
	ldr r1, [sp, #0x000]
	lsls r2, r1, #0x02
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	add r0, r9
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	ldr r0, _0802176C @ =0x0300034C
	ldr r1, _08021770 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	ldr r3, _08021774 @ =0x0839EEE4
	cmp r0, #0x02
	bne _08021780
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08021780
	ldr r0, _08021778 @ =0x0203FFB8
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08021780
	ldr r0, _0802177C @ =0x0839EF10
	adds r0, r2, r0
	b _08021782
	.byte 0x00, 0x00
_08021768: .4byte 0x0839EF3C
_0802176C: .4byte 0x0300034C
_08021770: .4byte 0x00000888
_08021774: .4byte 0x0839EEE4
_08021778: .4byte 0x0203FFB8
_0802177C: .4byte 0x0839EF10
_08021780:
	adds r0, r2, r3
_08021782:
	ldr r1, [r0, #0x00]
	mov r2, r9
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _08021796
	mov r4, r8
_08021796:
	movs r0, #0x00
	str r0, [sp, #0x010]
	ldr r1, [sp, #0x00C]
	cmp r0, r1
	blt _080217A2
	b _080218E6
_080217A2:
	ldr r0, [sp, #0x004]
	lsls r0, r0, #0x0F
	mov r8, r0
	ldr r0, [sp, #0x034]
	lsls r0, r0, #0x0E
	mov r1, r8
	orrs r1, r0
	adds r6, r2, #0x0
	ldr r2, [sp, #0x000]
	lsls r0, r2, #0x0A
	orrs r1, r0
	mov r0, r9
	orrs r1, r0
	mov r8, r1
	movs r0, #0x01
	ldr r1, [sp, #0x00C]
	ands r0, r1
	cmp r1, #0x00
	ble _080217CC
	cmp r0, #0x00
	beq _08021830
_080217CC:
	mov r0, r10
	asrs r0, r4
	movs r1, #0x01
	b _080217E0
_080217D4:
	adds r4, #0x01
	cmp r4, #0x10
	bne _080217DC
	b _080218FC
_080217DC:
	mov r0, r10
	asrs r0, r4
_080217E0:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080217D4
	movs r5, #0x01
	lsls r5, r4
	orrs r7, r5
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x01
	ldr r2, _08021824 @ =0x0203FFC4
	adds r0, r0, r2
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bne _08021818
	lsls r1, r4, #0x05
	ldr r0, _08021828 @ =0x02000280
	adds r1, r1, r0
	adds r0, r6, #0x0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0802182C @ =0x0300034C
	ldrh r0, [r1, #0x00]
	orrs r5, r0
	strh r5, [r1, #0x00]
_08021818:
	adds r4, #0x01
	adds r6, #0x20
	ldr r1, [sp, #0x010]
	adds r1, #0x01
	b _080218DE
	.byte 0x00, 0x00
_08021824: .4byte 0x0203FFC4
_08021828: .4byte 0x02000280
_0802182C: .4byte 0x0300034C
_08021830:
	mov r0, r10
	asrs r0, r4
	movs r1, #0x01
	b _08021842
_08021838:
	adds r4, #0x01
	cmp r4, #0x10
	beq _080218FC
	mov r0, r10
	asrs r0, r4
_08021842:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08021838
	movs r5, #0x01
	lsls r5, r4
	orrs r7, r5
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x01
	ldr r1, _08021888 @ =0x0203FFC4
	adds r0, r0, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	ldr r0, [sp, #0x008]
	cmp r0, #0x00
	bne _0802187A
	lsls r1, r4, #0x05
	ldr r2, _0802188C @ =0x02000280
	adds r1, r1, r2
	adds r0, r6, #0x0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _08021890 @ =0x0300034C
	ldrh r0, [r1, #0x00]
	orrs r5, r0
	strh r5, [r1, #0x00]
_0802187A:
	adds r4, #0x01
	adds r2, r6, #0x0
	adds r2, #0x20
	mov r0, r10
	asrs r0, r4
	movs r1, #0x01
	b _0802189E
_08021888: .4byte 0x0203FFC4
_0802188C: .4byte 0x02000280
_08021890: .4byte 0x0300034C
_08021894:
	adds r4, #0x01
	cmp r4, #0x10
	beq _080218FC
	mov r0, r10
	asrs r0, r4
_0802189E:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08021894
	movs r5, #0x01
	lsls r5, r4
	orrs r7, r5
	lsls r0, r7, #0x10
	lsrs r7, r0, #0x10
	lsls r0, r4, #0x01
	ldr r1, _080218F0 @ =0x0203FFC4
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r0, [sp, #0x008]
	cmp r0, #0x00
	bne _080218D6
	lsls r1, r4, #0x05
	ldr r0, _080218F4 @ =0x02000280
	adds r1, r1, r0
	adds r0, r2, #0x0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _080218F8 @ =0x0300034C
	ldrh r0, [r1, #0x00]
	orrs r5, r0
	strh r5, [r1, #0x00]
_080218D6:
	adds r4, #0x01
	adds r6, #0x40
	ldr r1, [sp, #0x010]
	adds r1, #0x02
_080218DE:
	str r1, [sp, #0x010]
	ldr r2, [sp, #0x00C]
	cmp r1, r2
	blt _08021830
_080218E6:
	ldr r0, [sp, #0x038]
	strh r7, [r0, #0x00]
	movs r0, #0x00
	b _0802190A
	.byte 0x00, 0x00
_080218F0: .4byte 0x0203FFC4
_080218F4: .4byte 0x02000280
_080218F8: .4byte 0x0300034C
_080218FC:
	ldr r1, [sp, #0x038]
	strh r7, [r1, #0x00]
	movs r0, #0x01
	b _0802190A
_08021904:
	ldr r2, [sp, #0x038]
	strh r7, [r2, #0x00]
	movs r0, #0x02
_0802190A:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
