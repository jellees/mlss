	.include "asm/macros.inc"

	.syntax unified

	.section .rodata
	.align 2, 0

	.byte 0x57, 0x49, 0x50, 0x45, 0x00, 0x00, 0x00, 0x00 @ "WIPE"

	.text

	thumb_func_start sub_8027168__12FieldManageriiUsUs
sub_8027168__12FieldManageriiUsUs:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	ldr r0, [sp, #0x030]
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0xC7
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	bl sub_80F032C
	movs r2, #0x85
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldr r4, _080271C0 @ =0x03001034
	ldr r0, _080271C4 @ =0x99999999
	ldr r1, _080271C8 @ =0x0600C000
	ldr r3, [r4, #0x00]
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, _080271CC @ =0xF000F000
	ldr r1, _080271D0 @ =0x0600C800
	movs r2, #0x80
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	bl _call_via_r3
	cmp r6, #0x06
	beq _080271D4
	cmp r6, #0x07
	beq _0802722E
	b _080272EC
_080271C0: .4byte 0x03001034
_080271C4: .4byte 0x99999999
_080271C8: .4byte 0x0600C000
_080271CC: .4byte 0xF000F000
_080271D0: .4byte 0x0600C800
_080271D4:
	adds r0, r7, #0x0
	adds r0, #0xF0
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _080271FC
	ldr r0, _080271F4 @ =0x0300034C
	lsrs r1, r2, #0x10
	strh r1, [r0, #0x00]
	strh r2, [r0, #0x02]
	ldr r3, _080271F8 @ =0x00000884
	adds r0, r0, r3
	str r2, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_80290E0
	b _08027212
_080271F4: .4byte 0x0300034C
_080271F8: .4byte 0x00000884
_080271FC:
	ldr r1, _08027348 @ =0x0300034C
	ldr r0, _0802734C @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strh r0, [r1, #0x02]
	ldr r0, _08027350 @ =0x00000884
	adds r1, r1, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
_08027212:
	adds r0, r7, #0x0
	bl sub_8026E94__12FieldManager
	ldr r0, _08027354 @ =0x02000272
	ldrh r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xFD
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0802722E:
	ldr r1, _08027348 @ =0x0300034C
	ldr r2, _08027358 @ =0x00000888
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r3, #0x81
	lsls r3, r3, #0x01
	adds r0, r7, r3
	strh r5, [r0, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x01
	adds r0, r7, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	adds r3, #0x06
	adds r0, r7, r3
	strh r6, [r0, #0x00]
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x77
	bgt _08027262
	movs r0, #0xF0
	subs r0, r0, r1
	lsls r0, r0, #0x10
_08027262:
	lsrs r0, r0, #0x10
	adds r3, r0, #0x0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x4F
	bgt _08027276
	movs r0, #0xA0
	subs r0, r0, r2
	lsls r0, r0, #0x10
_08027276:
	lsrs r1, r0, #0x10
	ldr r2, _0802735C @ =0x03001038
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r3, r0, #0x0
	muls r3, r0
	adds r0, r3, #0x0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r3, #0x00
	mov r8, r3
	strh r0, [r1, #0x00]
	movs r0, #0xC6
	lsls r0, r0, #0x02
	adds r5, r7, r0
	ldr r4, _08027360 @ =0x081E266C
	movs r0, #0x44
	movs r1, #0x00
	adds r2, r4, #0x0
	bl __nw__FUliPcUc
	adds r3, r6, #0x0
	adds r3, #0x08
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r2, r9
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x000]
	movs r2, #0x81
	lsls r2, r2, #0x01
	adds r1, r7, r2
	str r1, [sp, #0x004]
	movs r1, #0x03
	str r1, [sp, #0x008]
	movs r1, #0x3E
	str r1, [sp, #0x00C]
	ldr r1, _08027364 @ =0x080292A1
	str r1, [sp, #0x010]
	movs r1, #0x01
	adds r2, r4, #0x0
	bl sub_8079D1C
	str r0, [r5, #0x00]
	movs r3, #0x94
	lsls r3, r3, #0x01
	adds r0, r7, r3
	mov r1, r8
	strh r1, [r0, #0x00]
_080272EC:
	ldr r1, _08027354 @ =0x02000272
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r2, _08027348 @ =0x0300034C
	ldrh r0, [r2, #0x02]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x02]
	ldr r0, _08027368 @ =0x0839EC80
	ldr r2, [r0, #0x00]
	ldrh r3, [r2, #0x12]
	ldr r1, _0802736C @ =0xFFFFFE00
	adds r0, r1, #0x0
	ands r0, r3
	strh r0, [r2, #0x12]
	ldrh r0, [r2, #0x10]
	ands r1, r0
	strh r1, [r2, #0x10]
	ldr r1, _08027370 @ =0x02000008
	ldr r3, _08027374 @ =0x0000190C
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	ldrb r0, [r2, #0x01]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x01]
	adds r3, r7, #0x0
	adds r3, #0xFC
	movs r0, #0x0F
	ands r6, r0
	lsls r2, r6, #0x03
	ldrb r1, [r3, #0x00]
	movs r0, #0x79
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08027348: .4byte 0x0300034C
_0802734C: .4byte 0x0000FFFF
_08027350: .4byte 0x00000884
_08027354: .4byte 0x02000272
_08027358: .4byte 0x00000888
_0802735C: .4byte 0x03001038
_08027360: .4byte 0x081E266C
_08027364: .4byte sub_80292A0
_08027368: .4byte 0x0839EC80
_0802736C: .4byte 0xFFFFFE00
_08027370: .4byte 0x02000008
_08027374: .4byte 0x0000190C
