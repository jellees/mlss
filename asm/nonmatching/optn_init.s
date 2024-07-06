
	.syntax unified
	.text

	thumb_func_start optn_init
optn_init:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r4, r3, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _080521E8 @ =0x08CDC1F8
	str r0, [r7, #0x18]
	ldr r1, _080521EC @ =0x02000050
	movs r0, #0xBF
	strh r0, [r1, #0x00]
	ldr r0, _080521F0 @ =0x02000054
	movs r1, #0x10
	mov r10, r1
	strh r1, [r0, #0x00]
	subs r0, #0x54
	movs r2, #0x00
	mov r9, r2
	strh r2, [r0, #0x00]
	bl sub_8017E34
	ldr r6, _080521F4 @ =0x0300034C
	adds r1, r6, #0x0
	adds r1, #0x31
	movs r0, #0x08
	strb r0, [r1, #0x00]
	movs r5, #0x3C
	adds r5, r5, r7
	mov r8, r5
	movs r0, #0x01
	ands r4, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r5, #0x00]
	bl sub_801A548
	ldr r5, _080521F8 @ =0x081E26DC
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl process_add
	ldr r0, _080521FC @ =0x08CDC208
	str r0, [r4, #0x18]
	str r4, [r7, #0x20]
	str r7, [r4, #0x14]
	adds r0, r7, #0x0
	adds r0, #0x3D
	mov r1, r9
	strb r1, [r0, #0x00]
	mov r2, r10
	strb r2, [r7, #0x1C]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ldr r2, _08052200 @ =0x081E26E4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x40]
	ldr r4, _08052204 @ =0x0000088A
	adds r0, r6, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1F
	ldr r5, _08052208 @ =0x0000088B
	adds r6, r6, r5
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x01
	orrs r1, r0
	ldr r0, _0805220C @ =0x03000FFC
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	mov r0, r8
	ldrb r2, [r0, #0x00]
	movs r0, #0x71
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #0x00]
	mov r2, r9
	strb r2, [r7, #0x1D]
	ldr r0, _08052210 @ =0x03001034
	adds r1, r7, #0x0
	adds r1, #0x48
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	movs r2, #0x08
	bl _call_via_r3
	movs r0, #0x80
	lsls r0, r0, #0x08
	ldr r2, _08052214 @ =0x081E26EC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	mov r9, r0
	ldr r4, _08052218 @ =0x03000C84
	mov r8, r4
	ldr r4, _0805221C @ =0x083A0E94
	mov r5, r8
	ldr r2, [r5, #0x00]
	adds r0, r4, #0x0
	mov r1, r9
	bl _call_via_r2
	movs r5, #0xC0
	lsls r5, r5, #0x13
	adds r0, r4, #0x0
	bl sub_80198B0
	adds r2, r0, #0x0
	lsrs r2, r2, #0x02
	ldr r6, _08052220 @ =0x001FFFFF
	ands r2, r6
	mov r0, r9
	adds r1, r5, #0x0
	bl CpuFastSet
	ldr r4, _08052224 @ =0x083A1F60
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r0, r4, #0x0
	mov r1, r9
	bl _call_via_r2
	ldr r5, _08052228 @ =0x06010000
	adds r0, r4, #0x0
	bl sub_80198B0
	adds r2, r0, #0x0
	lsrs r2, r2, #0x02
	ands r2, r6
	mov r0, r9
	adds r1, r5, #0x0
	bl CpuFastSet
	ldr r0, _0805222C @ =0x083A13A0
	movs r2, #0x80
	lsls r2, r2, #0x02
	mov r1, r9
	bl CpuFastSet
	movs r2, #0xC0
	lsls r2, r2, #0x01
	add r2, r9
	movs r6, #0x03
	movs r4, #0x02
	movs r3, #0x11
_08052106:
	movs r0, #0x01
	strh r0, [r2, #0x08]
	adds r1, r2, #0x0
	adds r1, #0x48
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r1, _08052230 @ =0x00000401
	adds r0, r1, #0x0
	strh r0, [r2, #0x32]
	adds r1, r2, #0x0
	adds r1, #0x72
	ldr r5, _08052234 @ =0x00000403
	adds r0, r5, #0x0
	strh r0, [r1, #0x00]
	subs r6, #0x01
	adds r5, r2, #0x0
	adds r5, #0xC0
	adds r0, r2, #0x0
	adds r0, #0x4A
	subs r1, #0x68
	movs r2, #0x13
_08052130:
	strh r4, [r1, #0x00]
	strh r3, [r0, #0x00]
	strh r4, [r1, #0x02]
	strh r3, [r0, #0x02]
	strh r4, [r1, #0x04]
	strh r3, [r0, #0x04]
	strh r4, [r1, #0x06]
	strh r3, [r0, #0x06]
	strh r4, [r1, #0x08]
	strh r3, [r0, #0x08]
	strh r4, [r1, #0x0A]
	strh r3, [r0, #0x0A]
	strh r4, [r1, #0x0C]
	strh r3, [r0, #0x0C]
	strh r4, [r1, #0x0E]
	strh r3, [r0, #0x0E]
	strh r4, [r1, #0x10]
	strh r3, [r0, #0x10]
	strh r4, [r1, #0x12]
	strh r3, [r0, #0x12]
	adds r0, #0x14
	adds r1, #0x14
	subs r2, #0x0A
	cmp r2, #0x00
	bge _08052130
	adds r2, r5, #0x0
	cmp r6, #0x00
	bne _08052106
	ldr r1, _08052238 @ =0x0600D800
	movs r2, #0x80
	lsls r2, r2, #0x02
	mov r0, r9
	bl CpuFastSet
	mov r0, r9
	cmp r0, #0x00
	beq _0805217E
	bl free_heap_8018D9C
_0805217E:
	movs r0, #0xC0
	lsls r0, r0, #0x06
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x80
	bl sub_8020994
	ldr r1, _0805223C @ =0x00006005
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x50]
	str r6, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x50]
	bl sprite_show_8020CBC
	ldr r1, [r7, #0x50]
	movs r0, #0x28
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x50]
	movs r0, #0x37
	strh r0, [r1, #0x02]
	ldr r0, _080521F4 @ =0x0300034C
	ldr r1, _08052240 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _08052254
	ldr r0, _08052244 @ =0x083A2880
	ldr r1, _08052248 @ =0x02000280
	movs r2, #0x10
	bl CpuFastSet
	ldr r0, _0805224C @ =0x083A1BA0
	ldr r1, _08052250 @ =0x02000080
	movs r2, #0x78
	bl CpuFastSet
	b _08052268
_080521E8: .4byte 0x08CDC1F8
_080521EC: .4byte 0x02000050
_080521F0: .4byte 0x02000054
_080521F4: .4byte 0x0300034C
_080521F8: .4byte 0x081E26DC
_080521FC: .4byte 0x08CDC208
_08052200: .4byte 0x081E26E4
_08052204: .4byte 0x0000088A
_08052208: .4byte 0x0000088B
_0805220C: .4byte 0x03000FFC
_08052210: .4byte 0x03001034
_08052214: .4byte 0x081E26EC
_08052218: .4byte 0x03000C84
_0805221C: .4byte 0x083A0E94
_08052220: .4byte 0x001FFFFF
_08052224: .4byte 0x083A1F60
_08052228: .4byte 0x06010000
_0805222C: .4byte 0x083A13A0
_08052230: .4byte 0x00000401
_08052234: .4byte 0x00000403
_08052238: .4byte 0x0600D800
_0805223C: .4byte 0x00006005
_08052240: .4byte 0x00000888
_08052244: .4byte 0x083A2880
_08052248: .4byte 0x02000280
_0805224C: .4byte 0x083A1BA0
_08052250: .4byte 0x02000080
_08052254:
	ldr r0, _0805241C @ =0x083A28C0
	ldr r1, _08052420 @ =0x02000280
	movs r2, #0x10
	bl CpuFastSet
	ldr r0, _08052424 @ =0x083A1D80
	ldr r1, _08052428 @ =0x02000080
	movs r2, #0x78
	bl CpuFastSet
_08052268:
	ldr r1, _0805242C @ =0x0300034C
	ldr r0, _08052430 @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strh r0, [r1, #0x02]
	ldr r0, _08052434 @ =0x0819941C
	ldr r1, _08052438 @ =0x08198784
	subs r0, r0, r1
	ldr r2, _0805243C @ =0x081E26F4
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r7, #0x34]
	ldr r1, _08052440 @ =0x0851F9E8
	bl sub_81994EC
	ldr r2, _08052444 @ =0x081E26FC
	movs r0, #0x14
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_Zero
	str r0, [r7, #0x38]
	ldr r0, _08052448 @ =0x0001C21F
	ldr r2, _0805244C @ =0x081E2704
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r7, #0x24]
	adds r0, #0x1F
	movs r1, #0x20
	negs r1, r1
	ands r0, r1
	str r0, [r7, #0x28]
	movs r2, #0xE1
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r7, #0x2C]
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ldr r2, _08052450 @ =0x081E270C
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r7, #0x30]
	movs r4, #0xC0
	lsls r4, r4, #0x01
	adds r2, r0, r4
	movs r3, #0x00
	mov r8, r0
_080522D4:
	lsls r0, r3, #0x06
	adds r0, #0x80
	ldr r5, _08052454 @ =0xFFFFE000
	adds r1, r5, #0x0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r6, r3, #0x1
	adds r5, r2, #0x0
	adds r5, #0xC0
	adds r3, r2, #0x0
	adds r3, #0x48
	adds r2, #0x08
	movs r4, #0x15
_080522F0:
	strh r1, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x20
	strh r0, [r3, #0x00]
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	strh r1, [r2, #0x02]
	adds r0, r1, #0x0
	adds r0, #0x20
	strh r0, [r3, #0x02]
	adds r3, #0x04
	adds r2, #0x04
	subs r4, #0x02
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r4, #0x00
	bge _080522F0
	adds r3, r6, #0x0
	adds r2, r5, #0x0
	cmp r3, #0x02
	ble _080522D4
	ldr r1, _08052458 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #0x02
	mov r0, r8
	bl CpuFastSet
	movs r4, #0x00
	str r4, [sp, #0x00C]
	ldr r1, _0805245C @ =0x06004000
	ldr r2, _08052460 @ =0x01000008
	add r0, sp, #0x00C
	bl CpuFastSet
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8052B54
	ldr r0, _08052464 @ =0x03001034
	ldr r1, [r7, #0x2C]
	movs r2, #0xE1
	lsls r2, r2, #0x08
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_8052C50
	bl sub_8017E34
	adds r0, r7, #0x0
	movs r1, #0x02
	bl sub_8052C50
	bl sub_8017E34
	adds r0, r7, #0x0
	movs r1, #0x03
	bl sub_8052C50
	bl sub_8017E34
	adds r0, r7, #0x0
	movs r1, #0x04
	bl sub_8052C50
	bl sub_8017E34
	adds r0, r7, #0x0
	movs r1, #0x05
	bl sub_8052C50
	bl sub_8017E34
	adds r0, r7, #0x0
	movs r1, #0x06
	bl sub_8052C50
	bl sub_8017E34
	adds r0, r7, #0x0
	movs r1, #0x07
	bl sub_8052C50
	bl sub_8017E34
	bl sub_801A548
	ldr r1, _08052468 @ =0x02000008
	ldr r2, _0805246C @ =0x00001805
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r5, _08052470 @ =0x00001901
	adds r0, r5, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _08052474 @ =0x00001A03
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r5, _08052478 @ =0x00001B03
	adds r0, r5, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _0805247C @ =0x02000010
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	subs r1, #0x0E
	movs r2, #0xE2
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	movs r1, #0x1E
	bl sub_8019308
	movs r0, #0x00
	movs r1, #0xFF
	movs r2, #0x10
	bl sub_80193B4
	adds r0, r7, #0x0
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0805241C: .4byte 0x083A28C0
_08052420: .4byte 0x02000280
_08052424: .4byte 0x083A1D80
_08052428: .4byte 0x02000080
_0805242C: .4byte 0x0300034C
_08052430: .4byte 0x0000FFFF
_08052434: .4byte 0x0819941C
_08052438: .4byte 0x08198784
_0805243C: .4byte 0x081E26F4
_08052440: .4byte 0x0851F9E8
_08052444: .4byte 0x081E26FC
_08052448: .4byte 0x0001C21F
_0805244C: .4byte 0x081E2704
_08052450: .4byte 0x081E270C
_08052454: .4byte 0xFFFFE000
_08052458: .4byte 0x0600D000
_0805245C: .4byte 0x06004000
_08052460: .4byte 0x01000008
_08052464: .4byte 0x03001034
_08052468: .4byte 0x02000008
_0805246C: .4byte 0x00001805
_08052470: .4byte 0x00001901
_08052474: .4byte 0x00001A03
_08052478: .4byte 0x00001B03
_0805247C: .4byte 0x02000010
