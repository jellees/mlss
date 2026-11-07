	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start method13__11FieldObject
method13__11FieldObject:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x07C
	adds r7, r0, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0804201E
	bl _08044608
_0804201E:
	ldr r2, _08042068 @ =0x00000216
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08042030
	bl _08044608
_08042030:
	ldr r3, _0804206C @ =0x0000020D
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08042042
	bl _08044608
_08042042:
	ldr r3, [r7, #0x0C]
	ldr r1, [r7, #0x34]
	ldr r2, [r7, #0x10]
	ldr r0, [r7, #0x38]
	cmp r3, r1
	bne _08042056
	cmp r2, r0
	bne _08042056
	bl _08044608
_08042056:
	cmp r2, r0
	bne _08042070
	cmp r3, r1
	bne _08042070
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x014]
	b _08042086
	.byte 0x00, 0x00
_08042068: .4byte 0x00000216
_0804206C: .4byte 0x0000020D
_08042070:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r3, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
_08042086:
	movs r0, #0x01
	negs r0, r0
	ldr r5, [sp, #0x014]
	cmp r5, r0
	bne _08042094
	bl _08044608
_08042094:
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrh r4, [r0, #0x00]
	lsrs r0, r4, #0x01
	mov r9, r0
	ldr r0, [r7, #0x34]
	mov r1, r9
	subs r1, r0, r1
	str r1, [sp, #0x018]
	adds r2, r1, r4
	str r2, [sp, #0x01C]
	ldr r1, [r7, #0x38]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r1, r1, r5
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrh r3, [r0, #0x00]
	subs r6, r1, r3
	str r6, [sp, #0x020]
	str r1, [sp, #0x024]
	ldr r1, [r7, #0x3C]
	ldr r2, _08042168 @ =0x0000020D
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	movs r2, #0x20
	ands r2, r0
	ldr r6, _0804216C @ =0x0000027A
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	mov r8, r0
	ldr r0, [r7, #0x40]
	adds r1, r1, r0
	add r1, r8
	str r1, [sp, #0x028]
	ldr r0, [r7, #0x0C]
	mov r1, r9
	subs r1, r0, r1
	str r1, [sp, #0x02C]
	adds r4, r1, r4
	str r4, [sp, #0x030]
	ldr r0, [r7, #0x10]
	adds r0, r0, r5
	subs r0, r0, r3
	str r0, [sp, #0x034]
	adds r3, r0, r3
	str r3, [sp, #0x038]
	ldr r3, [r7, #0x14]
	str r3, [sp, #0x03C]
	cmp r2, #0x00
	bne _08042104
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	str r3, [sp, #0x03C]
_08042104:
	ldr r4, [sp, #0x03C]
	add r4, r8
	str r4, [sp, #0x040]
	movs r5, #0x89
	lsls r5, r5, #0x02
	adds r1, r7, r5
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r6, [sp, #0x014]
	asrs r1, r6, #0x0D
	ldr r0, _08042170 @ =0x00003FFF
	ands r0, r6
	cmp r0, #0x00
	beq _08042124
	movs r0, #0x01
	orrs r1, r0
_08042124:
	str r1, [sp, #0x014]
	movs r0, #0x00
	str r0, [sp, #0x044]
	adds r1, r7, #0x0
	adds r1, #0x25
	str r1, [sp, #0x074]
_08042130:
	ldr r2, [sp, #0x014]
	lsls r1, r2, #0x02
	ldr r0, _08042174 @ =0x083A06C0
	adds r1, r1, r0
	ldr r3, [r7, #0x0C]
	str r3, [sp, #0x04C]
	ldr r4, [r7, #0x10]
	mov r10, r4
	movs r5, #0x00
	str r5, [sp, #0x050]
	movs r2, #0x00
	ldsb r2, [r1, r2]
	adds r1, #0x01
	str r1, [sp, #0x048]
	ldr r6, [sp, #0x044]
	adds r6, #0x01
	str r6, [sp, #0x078]
	cmp r2, #0x03
	ble _08042178
	ldr r0, [sp, #0x044]
	cmp r0, #0x00
	bne _08042160
	bl _080445CC
_08042160:
	ldr r3, [sp, #0x074]
	ldrb r1, [r3, #0x00]
	bl _080445C0
_08042168: .4byte 0x0000020D
_0804216C: .4byte 0x0000027A
_08042170: .4byte 0x00003FFF
_08042174: .4byte 0x083A06C0
_08042178:
	cmp r2, #0x07
	bls _08042180
	bl _08044546
_08042180:
	lsls r0, r2, #0x02
	ldr r1, _0804218C @ =_08042190
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0804218C: .4byte _08042190
_08042190:
	.4byte _080421B0
	.4byte _080428EC
	.4byte _08042FB0
	.4byte _080436EC
	.4byte _08043DE4
	.4byte _08043FA4
	.4byte _08044170
	.4byte _08044294
_080421B0:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _080421BA
	ldr r4, _08042240 @ =0x00000FFF
	adds r0, r0, r4
_080421BA:
	asrs r0, r0, #0x0C
	mov r8, r0
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bge _080421C8
	ldr r5, _08042240 @ =0x00000FFF
	adds r0, r0, r5
_080421C8:
	asrs r0, r0, #0x0C
	ldr r6, [sp, #0x044]
	subs r0, r0, r6
	str r0, [sp, #0x054]
	ldr r0, [sp, #0x01C]
	subs r0, #0x01
	cmp r0, #0x00
	bge _080421DE
	ldr r1, [sp, #0x01C]
	ldr r2, _08042244 @ =0x00000FFE
	adds r0, r1, r2
_080421DE:
	asrs r0, r0, #0x0C
	str r0, [sp, #0x058]
	cmp r8, r0
	ble _080421EA
	bl _08044546
_080421EA:
	ldr r3, [sp, #0x074]
	mov r9, r3
_080421EE:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	mov r1, r8
	ldr r2, [sp, #0x054]
	add r3, sp, #0x008
	bl sub_80457E8__11FieldObjectiiPiN23
	mov r12, r0
	ldr r4, [sp, #0x044]
	cmp r4, #0x00
	beq _08042306
	movs r5, #0x00
	ldr r1, [r0, #0x00]
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1D
	adds r2, r1, #0x0
	cmp r0, #0x03
	bls _080422B0
	ldr r6, _08042248 @ =0x0000020D
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804224C
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0804224C
	ldr r0, [sp, #0x008]
	movs r2, #0x80
	lsls r2, r2, #0x03
	b _08042286
	.byte 0x00, 0x00
_08042240: .4byte 0x00000FFF
_08042244: .4byte 0x00000FFE
_08042248: .4byte 0x0000020D
_0804224C:
	lsls r1, r2, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _080422C2
	mov r3, r8
	lsls r0, r3, #0x0C
	ldr r2, [r7, #0x0C]
	cmp r0, r2
	bgt _080422A4
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x0C
	cmp r0, r2
	ble _080422A4
	mov r4, r12
	ldrb r0, [r4, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x04
	bne _0804228C
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r2, r0
	ldr r0, [sp, #0x008]
_08042286:
	adds r0, r0, r2
	str r0, [sp, #0x008]
	b _080422C6
_0804228C:
	cmp r1, #0x05
	bne _080422C6
	ldr r1, [sp, #0x008]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r1, r6
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r2, r0
	subs r1, r1, r2
	str r1, [sp, #0x008]
	b _080422C6
_080422A4:
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsrs r5, r0, #0x01
	b _080422C6
_080422B0:
	lsls r1, r2, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _080422C6
_080422C2:
	movs r5, #0x80
	lsls r5, r5, #0x05
_080422C6:
	ldr r3, [sp, #0x008]
	subs r0, r3, r5
	ldr r2, [r7, #0x3C]
	cmp r0, r2
	ble _080422D6
	ldr r4, [sp, #0x03C]
	cmp r0, r4
	bgt _080422F6
_080422D6:
	movs r5, #0x84
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08042306
	cmp r3, r2
	bne _08042306
	mov r6, r12
	ldrb r1, [r6, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x09
	bne _08042306
_080422F6:
	ldr r0, [sp, #0x054]
	adds r0, #0x01
	lsls r0, r0, #0x0C
	ldr r1, [sp, #0x034]
	cmp r0, r1
	ble _08042306
	bl _08044406
_08042306:
	movs r2, #0x84
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r3, [r0, #0x00]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	bne _08042318
	b _08042646
_08042318:
	movs r5, #0x00
	ldr r4, [sp, #0x044]
	cmp r4, #0x00
	beq _080423D4
	mov r6, r12
	ldr r1, [r6, #0x00]
	lsls r0, r1, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	adds r2, r1, #0x0
	cmp r0, #0x02
	bhi _080423B8
	ldr r1, _08042350 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08042354
	movs r0, #0x01
	ands r0, r3
	cmp r0, #0x00
	bne _08042354
	ldr r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x03
	b _0804238E
	.byte 0x00, 0x00
_08042350: .4byte 0x0000020D
_08042354:
	lsls r1, r2, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _080423CA
	mov r3, r8
	lsls r0, r3, #0x0C
	ldr r2, [r7, #0x0C]
	cmp r0, r2
	bgt _080423AC
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x0C
	cmp r0, r2
	ble _080423AC
	mov r4, r12
	ldrb r0, [r4, #0x02]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x04
	bne _08042394
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r2, r0
	ldr r0, [sp, #0x010]
_0804238E:
	adds r0, r0, r2
	str r0, [sp, #0x010]
	b _080423CE
_08042394:
	cmp r1, #0x05
	bne _080423CE
	ldr r1, [sp, #0x010]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r1, r6
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r2, r0
	subs r1, r1, r2
	str r1, [sp, #0x010]
	b _080423CE
_080423AC:
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsrs r5, r0, #0x01
	b _080423CE
_080423B8:
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _080423CE
_080423CA:
	movs r5, #0x80
	lsls r5, r5, #0x05
_080423CE:
	ldr r2, [sp, #0x044]
	cmp r2, #0x00
	bne _080423E2
_080423D4:
	mov r3, r12
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x07
	bhi _080423E2
	b _08042646
_080423E2:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	blt _08042404
	ldr r4, [sp, #0x040]
	cmp r1, r4
	bge _08042404
	ldr r0, [sp, #0x010]
	subs r2, r0, r5
	ldr r5, [sp, #0x03C]
	cmp r2, r5
	ble _08042404
	ldr r6, [sp, #0x028]
	cmp r1, r6
	bge _08042404
	ldr r0, [r7, #0x3C]
	cmp r2, r0
	bgt _08042430
_08042404:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08042416
	b _08042646
_08042416:
	ldr r1, [sp, #0x010]
	ldr r0, [r7, #0x3C]
	cmp r1, r0
	beq _08042420
	b _08042646
_08042420:
	mov r2, r12
	ldr r0, [r2, #0x00]
	ldr r1, _080424E0 @ =0x000F0078
	ands r0, r1
	ldr r1, _080424E4 @ =0x00010008
	cmp r0, r1
	beq _08042430
	b _08042646
_08042430:
	mov r3, r8
	lsls r6, r3, #0x0C
	mov r0, r8
	adds r0, #0x01
	lsls r2, r0, #0x0C
	ldr r0, [sp, #0x054]
	adds r0, #0x01
	lsls r3, r0, #0x0C
	mov r4, r12
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0E
	bne _080424F4
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _08042456
	ldr r5, _080424E8 @ =0x00000FFF
	adds r0, r0, r5
_08042456:
	asrs r0, r0, #0x0C
	cmp r8, r0
	bne _080424F4
	ldr r1, [sp, #0x034]
	subs r0, r3, r1
	ldr r2, [sp, #0x02C]
	subs r5, r2, r6
	subs r0, r0, r5
	cmp r0, #0x00
	bgt _0804246C
	b _08042646
_0804246C:
	ldr r4, _080424EC @ =0xFFFFF000
	adds r3, r3, r4
	subs r2, r1, r3
	movs r0, #0x80
	lsls r0, r0, #0x05
	subs r1, r0, r2
	subs r1, r1, r5
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r5, r1
	adds r1, r1, r6
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	str r1, [sp, #0x04C]
	movs r6, #0x80
	lsls r6, r6, #0x05
	subs r0, r6, r5
	subs r0, r0, r2
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r2, r2, r0
	adds r2, r2, r3
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r3, _080424F0 @ =0xFFFFFF00
	adds r2, r2, r3
	ldrh r0, [r0, #0x00]
	adds r0, r0, r2
	mov r10, r0
	movs r4, #0x03
	str r4, [sp, #0x050]
	movs r5, #0x89
	lsls r5, r5, #0x02
	adds r0, r7, r5
	mov r6, r12
	str r6, [r0, #0x00]
	mov r0, r9
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x03
	adds r3, #0x87
	ands r2, r3
	orrs r2, r0
	mov r4, r9
	b _08042644
	.byte 0x00, 0x00
_080424E0: .4byte 0x000F0078
_080424E4: .4byte 0x00010008
_080424E8: .4byte 0x00000FFF
_080424EC: .4byte 0xFFFFF000
_080424F0: .4byte 0xFFFFFF00
_080424F4:
	movs r5, #0x0F
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0C
	bne _08042588
	ldr r0, [sp, #0x058]
	cmp r8, r0
	bne _08042588
	ldr r4, [sp, #0x034]
	subs r1, r3, r4
	ldr r4, [sp, #0x030]
	subs r0, r2, r4
	subs r1, r1, r0
	cmp r1, #0x00
	bgt _08042514
	b _08042646
_08042514:
	ldr r0, _08042580 @ =0xFFFFF000
	adds r4, r3, r0
	ldr r1, [sp, #0x030]
	subs r3, r1, r6
	ldr r0, [sp, #0x034]
	subs r2, r0, r4
	subs r1, r3, r2
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r2, r1
	adds r1, r1, r6
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	str r1, [sp, #0x04C]
	subs r2, r2, r3
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r3, r3, r2
	adds r3, r3, r4
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r2, _08042584 @ =0xFFFFFF00
	adds r3, r3, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r3
	mov r10, r0
	movs r3, #0x03
	str r3, [sp, #0x050]
	movs r4, #0x89
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r6, r12
	str r6, [r0, #0x00]
	mov r0, r9
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x01
	orrs r0, r1
	ands r0, r5
	lsls r0, r0, #0x03
	subs r1, #0x7A
	ands r2, r1
	orrs r2, r0
	mov r3, r9
	strb r2, [r3, #0x00]
	b _08042646
_08042580: .4byte 0xFFFFF000
_08042584: .4byte 0xFFFFFF00
_08042588:
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _080425A8
	mov r5, r12
	ldrb r0, [r5, #0x00]
	movs r1, #0x78
	ands r1, r0
	cmp r1, #0x28
	beq _08042646
	cmp r1, #0x38
	beq _08042646
_080425A8:
	ldr r1, [sp, #0x044]
	mov r4, r12
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x09
	beq _080425E2
	cmp r0, #0x09
	bhi _080425C0
	cmp r0, #0x08
	beq _080425CA
	b _080425E2
_080425C0:
	cmp r0, #0x0A
	beq _080425D4
	cmp r0, #0x0B
	beq _080425DC
	b _080425E2
_080425CA:
	ldr r5, _080425D0 @ =0xFFFFF800
	adds r3, r3, r5
	b _080425E6
_080425D0: .4byte 0xFFFFF800
_080425D4:
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r6, r6, r0
	b _080425E6
_080425DC:
	ldr r1, _080426D8 @ =0xFFFFF800
	adds r2, r2, r1
	movs r1, #0x01
_080425E2:
	cmp r1, #0x00
	beq _08042646
_080425E6:
	ldr r4, [sp, #0x01C]
	cmp r6, r4
	bge _080425F2
	ldr r5, [sp, #0x02C]
	cmp r2, r5
	bgt _080425FE
_080425F2:
	ldr r0, [sp, #0x018]
	cmp r2, r0
	ble _08042646
	ldr r1, [sp, #0x030]
	cmp r6, r1
	bge _08042646
_080425FE:
	ldr r2, [sp, #0x020]
	cmp r3, r2
	bgt _08042646
	ldr r4, [sp, #0x034]
	cmp r3, r4
	ble _08042646
	movs r5, #0x9F
	lsls r5, r5, #0x02
	adds r1, r7, r5
	ldr r6, _080426DC @ =0xFFFFFF00
	adds r0, r3, r6
	ldrh r1, [r1, #0x00]
	adds r1, r1, r0
	mov r10, r1
	movs r0, #0x02
	ldr r1, [sp, #0x050]
	orrs r1, r0
	str r1, [sp, #0x050]
	movs r2, #0x89
	lsls r2, r2, #0x02
	adds r0, r7, r2
	mov r3, r12
	str r3, [r0, #0x00]
	mov r4, r9
	ldrb r2, [r4, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x01
	orrs r0, r1
	movs r5, #0x0F
	ands r0, r5
	lsls r0, r0, #0x03
	adds r6, #0x87
	ands r2, r6
	orrs r2, r0
_08042644:
	strb r2, [r4, #0x00]
_08042646:
	ldr r1, _080426E0 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08042656
	b _080428D6
_08042656:
	ldr r0, [sp, #0x008]
	ldr r3, [r7, #0x3C]
	cmp r0, r3
	blt _08042660
	b _080428D6
_08042660:
	movs r2, #0x84
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r2, [r0, #0x00]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	beq _08042688
	mov r4, r12
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08042688
	b _080428D6
_08042688:
	ldr r1, [sp, #0x00C]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08042698
	ldr r0, [sp, #0x010]
	cmp r0, r3
	beq _080426E4
_08042698:
	ldr r0, [sp, #0x054]
	adds r0, #0x01
	lsls r0, r0, #0x0C
	ldr r5, [sp, #0x034]
	cmp r0, r5
	bgt _080426A6
	b _080428D6
_080426A6:
	movs r6, #0x9F
	lsls r6, r6, #0x02
	adds r1, r7, r6
	ldr r2, _080426DC @ =0xFFFFFF00
	adds r0, r0, r2
	ldrh r1, [r1, #0x00]
	adds r1, r1, r0
	mov r10, r1
	movs r0, #0x02
	ldr r3, [sp, #0x050]
	orrs r3, r0
	str r3, [sp, #0x050]
	movs r4, #0x89
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r5, r12
	str r5, [r0, #0x00]
	mov r6, r9
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r2, #0x01
	bl _08043BF4
	lsls r0, r0, #0x00
_080426D8: .4byte 0xFFFFF800
_080426DC: .4byte 0xFFFFFF00
_080426E0: .4byte 0x0000020D
_080426E4:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	bne _080426EE
	b _080428D6
_080426EE:
	mov r5, r8
	lsls r6, r5, #0x0C
	mov r0, r8
	adds r0, #0x01
	lsls r2, r0, #0x0C
	ldr r0, [sp, #0x054]
	adds r0, #0x01
	lsls r3, r0, #0x0C
	mov r0, r12
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _080427AC
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _08042714
	ldr r4, _080427A0 @ =0x00000FFF
	adds r0, r0, r4
_08042714:
	asrs r0, r0, #0x0C
	cmp r8, r0
	bne _080427AC
	ldr r5, [sp, #0x034]
	subs r0, r3, r5
	ldr r1, [sp, #0x02C]
	subs r5, r1, r6
	subs r0, r0, r5
	cmp r0, #0x00
	bgt _0804272A
	b _080428D6
_0804272A:
	ldr r2, _080427A4 @ =0xFFFFF000
	adds r3, r3, r2
	ldr r4, [sp, #0x034]
	subs r2, r4, r3
	movs r0, #0x80
	lsls r0, r0, #0x05
	subs r1, r0, r2
	subs r1, r1, r5
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r5, r1
	adds r1, r1, r6
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	str r1, [sp, #0x04C]
	movs r6, #0x80
	lsls r6, r6, #0x05
	subs r0, r6, r5
	subs r0, r0, r2
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r2, r2, r0
	adds r2, r2, r3
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r3, _080427A8 @ =0xFFFFFF00
	adds r2, r2, r3
	ldrh r0, [r0, #0x00]
	adds r0, r0, r2
	mov r10, r0
	movs r4, #0x03
	str r4, [sp, #0x050]
	movs r5, #0x89
	lsls r5, r5, #0x02
	adds r0, r7, r5
	mov r6, r12
	str r6, [r0, #0x00]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r2, #0x01
	orrs r0, r2
	movs r3, #0x0F
	ands r0, r3
	lsls r0, r0, #0x03
	subs r4, #0x7C
	ands r1, r4
	orrs r1, r0
	mov r5, r9
	strb r1, [r5, #0x00]
	b _080428D6
_080427A0: .4byte 0x00000FFF
_080427A4: .4byte 0xFFFFF000
_080427A8: .4byte 0xFFFFFF00
_080427AC:
	movs r5, #0x0F
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0F
	bne _08042840
	ldr r0, [sp, #0x058]
	cmp r8, r0
	bne _08042840
	ldr r4, [sp, #0x034]
	subs r1, r3, r4
	ldr r4, [sp, #0x030]
	subs r0, r2, r4
	subs r1, r1, r0
	cmp r1, #0x00
	bgt _080427CC
	b _080428D6
_080427CC:
	ldr r0, _08042838 @ =0xFFFFF000
	adds r4, r3, r0
	ldr r1, [sp, #0x030]
	subs r3, r1, r6
	ldr r0, [sp, #0x034]
	subs r2, r0, r4
	subs r1, r3, r2
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r2, r1
	adds r1, r1, r6
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	str r1, [sp, #0x04C]
	subs r2, r2, r3
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r3, r3, r2
	adds r3, r3, r4
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r2, _0804283C @ =0xFFFFFF00
	adds r3, r3, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r3
	mov r10, r0
	movs r3, #0x03
	str r3, [sp, #0x050]
	movs r4, #0x89
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r6, r12
	str r6, [r0, #0x00]
	mov r0, r9
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x01
	orrs r0, r1
	ands r0, r5
	lsls r0, r0, #0x03
	subs r1, #0x7A
	ands r2, r1
	orrs r2, r0
	mov r3, r9
	strb r2, [r3, #0x00]
	b _080428D6
_08042838: .4byte 0xFFFFF000
_0804283C: .4byte 0xFFFFFF00
_08042840:
	mov r4, r12
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x09
	beq _0804285A
	cmp r0, #0x09
	bcc _080428D6
	cmp r0, #0x0A
	beq _08042864
	cmp r0, #0x0B
	beq _08042870
	b _080428D6
_0804285A:
	ldr r5, _08042860 @ =0xFFFFF800
	adds r3, r3, r5
	b _08042876
_08042860: .4byte 0xFFFFF800
_08042864:
	ldr r0, _0804286C @ =0xFFFFF800
	adds r2, r2, r0
	b _08042876
	.byte 0x00, 0x00
_0804286C: .4byte 0xFFFFF800
_08042870:
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r6, r6, r1
_08042876:
	ldr r4, [sp, #0x01C]
	cmp r6, r4
	bge _08042882
	ldr r5, [sp, #0x02C]
	cmp r2, r5
	bgt _0804288E
_08042882:
	ldr r0, [sp, #0x018]
	cmp r2, r0
	ble _080428D6
	ldr r1, [sp, #0x030]
	cmp r6, r1
	bge _080428D6
_0804288E:
	ldr r2, [sp, #0x020]
	cmp r3, r2
	bgt _080428D6
	ldr r4, [sp, #0x034]
	cmp r3, r4
	ble _080428D6
	movs r5, #0x9F
	lsls r5, r5, #0x02
	adds r1, r7, r5
	ldr r6, _080428E8 @ =0xFFFFFF00
	adds r0, r3, r6
	ldrh r1, [r1, #0x00]
	adds r1, r1, r0
	mov r10, r1
	movs r0, #0x02
	ldr r1, [sp, #0x050]
	orrs r1, r0
	str r1, [sp, #0x050]
	movs r2, #0x89
	lsls r2, r2, #0x02
	adds r0, r7, r2
	mov r3, r12
	str r3, [r0, #0x00]
	mov r4, r9
	ldrb r2, [r4, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x01
	orrs r0, r1
	movs r5, #0x0F
	ands r0, r5
	lsls r0, r0, #0x03
	adds r6, #0x87
	ands r2, r6
	orrs r2, r0
	strb r2, [r4, #0x00]
_080428D6:
	movs r0, #0x01
	add r8, r0
	ldr r1, [sp, #0x058]
	cmp r8, r1
	bgt _080428E2
	b _080421EE
_080428E2:
	bl _08044546
	lsls r0, r0, #0x00
_080428E8: .4byte 0xFFFFFF00
_080428EC:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _080428F6
	ldr r2, _08042984 @ =0x00000FFF
	adds r0, r0, r2
_080428F6:
	asrs r0, r0, #0x0C
	mov r8, r0
	ldr r0, [sp, #0x024]
	subs r0, #0x01
	cmp r0, #0x00
	bge _08042908
	ldr r3, [sp, #0x024]
	ldr r4, _08042988 @ =0x00000FFE
	adds r0, r3, r4
_08042908:
	asrs r0, r0, #0x0C
	ldr r5, [sp, #0x044]
	adds r0, r0, r5
	str r0, [sp, #0x05C]
	ldr r0, [sp, #0x01C]
	subs r0, #0x01
	cmp r0, #0x00
	bge _0804291E
	ldr r6, [sp, #0x01C]
	ldr r1, _08042988 @ =0x00000FFE
	adds r0, r6, r1
_0804291E:
	asrs r0, r0, #0x0C
	str r0, [sp, #0x060]
	cmp r8, r0
	ble _0804292A
	bl _08044546
_0804292A:
	ldr r2, [sp, #0x074]
	mov r9, r2
_0804292E:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	mov r1, r8
	ldr r2, [sp, #0x05C]
	add r3, sp, #0x008
	bl sub_80457E8__11FieldObjectiiPiN23
	mov r12, r0
	ldr r3, [sp, #0x044]
	cmp r3, #0x00
	bne _0804294C
	b _08042A48
_0804294C:
	movs r5, #0x00
	ldr r1, [r0, #0x00]
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1D
	adds r2, r1, #0x0
	cmp r0, #0x03
	bls _080429F4
	ldr r4, _0804298C @ =0x0000020D
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08042990
	movs r6, #0x84
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08042990
	ldr r0, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [sp, #0x008]
	b _08042A0A
_08042984: .4byte 0x00000FFF
_08042988: .4byte 0x00000FFE
_0804298C: .4byte 0x0000020D
_08042990:
	lsls r1, r2, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _08042A06
	mov r2, r8
	lsls r0, r2, #0x0C
	ldr r2, [r7, #0x0C]
	cmp r0, r2
	bgt _080429E8
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x0C
	cmp r0, r2
	ble _080429E8
	mov r3, r12
	ldrb r0, [r3, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x04
	bne _080429D0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r2, r0
	ldr r0, [sp, #0x008]
	adds r0, r0, r2
	str r0, [sp, #0x008]
	b _08042A0A
_080429D0:
	cmp r1, #0x05
	bne _08042A0A
	ldr r1, [sp, #0x008]
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r1, r4
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r2, r0
	subs r1, r1, r2
	str r1, [sp, #0x008]
	b _08042A0A
_080429E8:
	movs r5, #0x9E
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrh r0, [r0, #0x00]
	lsrs r5, r0, #0x01
	b _08042A0A
_080429F4:
	lsls r1, r2, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08042A0A
_08042A06:
	movs r5, #0x80
	lsls r5, r5, #0x05
_08042A0A:
	ldr r3, [sp, #0x008]
	subs r0, r3, r5
	ldr r2, [r7, #0x3C]
	cmp r0, r2
	ble _08042A1A
	ldr r6, [sp, #0x03C]
	cmp r0, r6
	bgt _08042A3A
_08042A1A:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08042A48
	cmp r3, r2
	bne _08042A48
	mov r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x09
	bne _08042A48
_08042A3A:
	ldr r3, [sp, #0x05C]
	lsls r0, r3, #0x0C
	ldr r4, [sp, #0x038]
	cmp r0, r4
	bge _08042A48
	bl _08044440
_08042A48:
	movs r5, #0x84
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r3, [r0, #0x00]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	bne _08042A5A
	b _08042D42
_08042A5A:
	movs r5, #0x00
	ldr r6, [sp, #0x044]
	cmp r6, #0x00
	beq _08042B14
	mov r0, r12
	ldr r1, [r0, #0x00]
	lsls r0, r1, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	adds r2, r1, #0x0
	cmp r0, #0x02
	bhi _08042AF8
	ldr r1, _08042A90 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08042A94
	movs r0, #0x01
	ands r0, r3
	cmp r0, #0x00
	bne _08042A94
	ldr r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x03
	b _08042ACE
_08042A90: .4byte 0x0000020D
_08042A94:
	lsls r1, r2, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _08042B0A
	mov r3, r8
	lsls r0, r3, #0x0C
	ldr r2, [r7, #0x0C]
	cmp r0, r2
	bgt _08042AEC
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x0C
	cmp r0, r2
	ble _08042AEC
	mov r4, r12
	ldrb r0, [r4, #0x02]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x04
	bne _08042AD4
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r2, r0
	ldr r0, [sp, #0x010]
_08042ACE:
	adds r0, r0, r2
	str r0, [sp, #0x010]
	b _08042B0E
_08042AD4:
	cmp r1, #0x05
	bne _08042B0E
	ldr r1, [sp, #0x010]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r1, r6
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r2, r0
	subs r1, r1, r2
	str r1, [sp, #0x010]
	b _08042B0E
_08042AEC:
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsrs r5, r0, #0x01
	b _08042B0E
_08042AF8:
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08042B0E
_08042B0A:
	movs r5, #0x80
	lsls r5, r5, #0x05
_08042B0E:
	ldr r2, [sp, #0x044]
	cmp r2, #0x00
	bne _08042B22
_08042B14:
	mov r3, r12
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x07
	bhi _08042B22
	b _08042D42
_08042B22:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	blt _08042B44
	ldr r4, [sp, #0x040]
	cmp r1, r4
	bge _08042B44
	ldr r0, [sp, #0x010]
	subs r2, r0, r5
	ldr r5, [sp, #0x03C]
	cmp r2, r5
	ble _08042B44
	ldr r6, [sp, #0x028]
	cmp r1, r6
	bge _08042B44
	ldr r0, [r7, #0x3C]
	cmp r2, r0
	bgt _08042B70
_08042B44:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08042B56
	b _08042D42
_08042B56:
	ldr r1, [sp, #0x010]
	ldr r0, [r7, #0x3C]
	cmp r1, r0
	beq _08042B60
	b _08042D42
_08042B60:
	mov r2, r12
	ldr r0, [r2, #0x00]
	ldr r1, _08042C00 @ =0x000F0078
	ands r0, r1
	ldr r1, _08042C04 @ =0x00010008
	cmp r0, r1
	beq _08042B70
	b _08042D42
_08042B70:
	mov r3, r8
	lsls r6, r3, #0x0C
	mov r0, r8
	adds r0, #0x01
	lsls r2, r0, #0x0C
	ldr r5, [sp, #0x05C]
	lsls r4, r5, #0x0C
	mov r0, r12
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0F
	bne _08042C10
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _08042B94
	ldr r3, _08042C08 @ =0x00000FFF
	adds r0, r0, r3
_08042B94:
	asrs r0, r0, #0x0C
	cmp r8, r0
	bne _08042C10
	ldr r5, [sp, #0x038]
	subs r2, r5, r4
	ldr r0, [sp, #0x02C]
	subs r5, r0, r6
	subs r3, r2, r5
	cmp r3, #0x00
	bgt _08042BAA
	b _08042D42
_08042BAA:
	subs r1, r5, r2
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r2, r1
	adds r1, r1, r6
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	str r1, [sp, #0x04C]
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	adds r0, r5, r0
	adds r0, r0, r4
	ldr r3, _08042C0C @ =0xFFFFFF00
	adds r3, r3, r0
	mov r10, r3
	movs r4, #0x03
	str r4, [sp, #0x050]
	movs r5, #0x89
	lsls r5, r5, #0x02
	adds r0, r7, r5
	mov r6, r12
	str r6, [r0, #0x00]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r2, #0x04
	orrs r0, r2
	movs r3, #0x0F
	ands r0, r3
	lsls r0, r0, #0x03
	subs r4, #0x7C
	ands r1, r4
	orrs r1, r0
	mov r5, r9
	strb r1, [r5, #0x00]
	b _08042D42
_08042C00: .4byte 0x000F0078
_08042C04: .4byte 0x00010008
_08042C08: .4byte 0x00000FFF
_08042C0C: .4byte 0xFFFFFF00
_08042C10:
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _08042C94
	ldr r0, [sp, #0x060]
	cmp r8, r0
	bne _08042C94
	ldr r1, [sp, #0x038]
	subs r5, r1, r4
	ldr r3, [sp, #0x030]
	subs r0, r2, r3
	subs r0, r5, r0
	cmp r0, #0x00
	bgt _08042C2E
	b _08042D42
_08042C2E:
	subs r3, r3, r6
	movs r2, #0x80
	lsls r2, r2, #0x05
	subs r1, r2, r5
	subs r1, r1, r3
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r3, r1
	adds r1, r1, r6
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	str r1, [sp, #0x04C]
	subs r2, r2, r3
	subs r2, r2, r5
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r2, r5, r2
	adds r2, r2, r4
	ldr r0, _08042C90 @ =0xFFFFFF00
	adds r0, r0, r2
	mov r10, r0
	movs r1, #0x03
	str r1, [sp, #0x050]
	movs r2, #0x89
	lsls r2, r2, #0x02
	adds r0, r7, r2
	mov r3, r12
	str r3, [r0, #0x00]
	mov r4, r9
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r5, #0x04
	orrs r0, r5
	movs r6, #0x0F
	ands r0, r6
	lsls r0, r0, #0x03
	movs r2, #0x79
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	b _08042D42
_08042C90: .4byte 0xFFFFFF00
_08042C94:
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08042CB4
	mov r5, r12
	ldrb r0, [r5, #0x00]
	movs r1, #0x78
	ands r1, r0
	cmp r1, #0x28
	beq _08042D42
	cmp r1, #0x38
	beq _08042D42
_08042CB4:
	ldr r1, [sp, #0x044]
	mov r3, r12
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x09
	beq _08042CD0
	cmp r0, #0x09
	bls _08042CE6
	cmp r0, #0x0A
	beq _08042CD8
	cmp r0, #0x0B
	beq _08042CE0
	b _08042CE6
_08042CD0:
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r4, r4, r5
	b _08042CEA
_08042CD8:
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r6, r6, r0
	b _08042CEA
_08042CE0:
	ldr r1, _08042DD8 @ =0xFFFFF800
	adds r2, r2, r1
	movs r1, #0x01
_08042CE6:
	cmp r1, #0x00
	beq _08042D42
_08042CEA:
	ldr r3, [sp, #0x01C]
	cmp r6, r3
	bge _08042CF6
	ldr r5, [sp, #0x02C]
	cmp r2, r5
	bgt _08042D02
_08042CF6:
	ldr r0, [sp, #0x018]
	cmp r2, r0
	ble _08042D42
	ldr r1, [sp, #0x030]
	cmp r6, r1
	bge _08042D42
_08042D02:
	ldr r2, [sp, #0x024]
	cmp r4, r2
	blt _08042D42
	ldr r3, [sp, #0x038]
	cmp r4, r3
	bge _08042D42
	ldr r5, _08042DDC @ =0xFFFFFF00
	adds r5, r5, r4
	mov r10, r5
	movs r0, #0x02
	ldr r6, [sp, #0x050]
	orrs r6, r0
	str r6, [sp, #0x050]
	movs r1, #0x89
	lsls r1, r1, #0x02
	adds r0, r7, r1
	mov r2, r12
	str r2, [r0, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r4, #0x04
	orrs r0, r4
	movs r5, #0x0F
	ands r0, r5
	lsls r0, r0, #0x03
	movs r6, #0x79
	negs r6, r6
	ands r1, r6
	orrs r1, r0
	strb r1, [r3, #0x00]
_08042D42:
	ldr r1, _08042DE0 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08042D52
	b _08042F9A
_08042D52:
	ldr r0, [sp, #0x008]
	ldr r3, [r7, #0x3C]
	cmp r0, r3
	blt _08042D5C
	b _08042F9A
_08042D5C:
	movs r2, #0x84
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r2, [r0, #0x00]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	beq _08042D84
	mov r4, r12
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08042D84
	b _08042F9A
_08042D84:
	ldr r1, [sp, #0x00C]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08042D94
	ldr r0, [sp, #0x010]
	cmp r0, r3
	beq _08042DE4
_08042D94:
	ldr r5, [sp, #0x05C]
	lsls r0, r5, #0x0C
	ldr r6, [sp, #0x038]
	cmp r0, r6
	blt _08042DA0
	b _08042F9A
_08042DA0:
	ldr r1, _08042DDC @ =0xFFFFFF00
	adds r1, r1, r0
	mov r10, r1
	movs r0, #0x02
	ldr r2, [sp, #0x050]
	orrs r2, r0
	str r2, [sp, #0x050]
	movs r3, #0x89
	lsls r3, r3, #0x02
	adds r0, r7, r3
	mov r4, r12
	str r4, [r0, #0x00]
	mov r5, r9
	ldrb r1, [r5, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r6, #0x04
	orrs r0, r6
	movs r2, #0x0F
	ands r0, r2
	lsls r0, r0, #0x03
	movs r3, #0x79
	negs r3, r3
	ands r1, r3
	orrs r1, r0
	strb r1, [r5, #0x00]
	bl _08044546
_08042DD8: .4byte 0xFFFFF800
_08042DDC: .4byte 0xFFFFFF00
_08042DE0: .4byte 0x0000020D
_08042DE4:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	bne _08042DEE
	b _08042F9A
_08042DEE:
	mov r4, r8
	lsls r6, r4, #0x0C
	mov r0, r8
	adds r0, #0x01
	lsls r2, r0, #0x0C
	ldr r5, [sp, #0x05C]
	lsls r4, r5, #0x0C
	mov r0, r12
	ldrb r1, [r0, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0C
	bne _08042E88
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _08042E12
	ldr r3, _08042E80 @ =0x00000FFF
	adds r0, r0, r3
_08042E12:
	asrs r0, r0, #0x0C
	cmp r8, r0
	bne _08042E88
	ldr r5, [sp, #0x038]
	subs r2, r5, r4
	ldr r0, [sp, #0x02C]
	subs r5, r0, r6
	subs r3, r2, r5
	cmp r3, #0x00
	bgt _08042E28
	b _08042F9A
_08042E28:
	subs r1, r5, r2
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r2, r1
	adds r1, r1, r6
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	str r1, [sp, #0x04C]
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	adds r0, r5, r0
	adds r0, r0, r4
	ldr r3, _08042E84 @ =0xFFFFFF00
	adds r3, r3, r0
	mov r10, r3
	movs r4, #0x03
	str r4, [sp, #0x050]
	movs r5, #0x89
	lsls r5, r5, #0x02
	adds r0, r7, r5
	mov r6, r12
	str r6, [r0, #0x00]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r2, #0x04
	orrs r0, r2
	movs r3, #0x0F
	ands r0, r3
	lsls r0, r0, #0x03
	subs r4, #0x7C
	ands r1, r4
	orrs r1, r0
	mov r5, r9
	strb r1, [r5, #0x00]
	b _08042F9A
	.byte 0x00, 0x00
_08042E80: .4byte 0x00000FFF
_08042E84: .4byte 0xFFFFFF00
_08042E88:
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0E
	bne _08042F0C
	ldr r0, [sp, #0x060]
	cmp r8, r0
	bne _08042F0C
	ldr r1, [sp, #0x038]
	subs r5, r1, r4
	ldr r3, [sp, #0x030]
	subs r0, r2, r3
	subs r0, r5, r0
	cmp r0, #0x00
	ble _08042F9A
	subs r3, r3, r6
	movs r2, #0x80
	lsls r2, r2, #0x05
	subs r1, r2, r5
	subs r1, r1, r3
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r3, r1
	adds r1, r1, r6
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	str r1, [sp, #0x04C]
	subs r2, r2, r3
	subs r2, r2, r5
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r2, r5, r2
	adds r2, r2, r4
	ldr r0, _08042F08 @ =0xFFFFFF00
	adds r0, r0, r2
	mov r10, r0
	movs r1, #0x03
	str r1, [sp, #0x050]
	movs r2, #0x89
	lsls r2, r2, #0x02
	adds r0, r7, r2
	mov r3, r12
	str r3, [r0, #0x00]
	mov r4, r9
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r5, #0x04
	orrs r0, r5
	movs r6, #0x0F
	ands r0, r6
	lsls r0, r0, #0x03
	movs r2, #0x79
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	b _08042F9A
	.byte 0x00, 0x00
_08042F08: .4byte 0xFFFFFF00
_08042F0C:
	mov r3, r12
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x0A
	beq _08042F30
	cmp r0, #0x0A
	bhi _08042F22
	cmp r0, #0x08
	beq _08042F28
	b _08042F9A
_08042F22:
	cmp r0, #0x0B
	beq _08042F3C
	b _08042F9A
_08042F28:
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r4, r4, r5
	b _08042F42
_08042F30:
	ldr r0, _08042F38 @ =0xFFFFF800
	adds r2, r2, r0
	b _08042F42
	.byte 0x00, 0x00
_08042F38: .4byte 0xFFFFF800
_08042F3C:
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r6, r6, r1
_08042F42:
	ldr r3, [sp, #0x01C]
	cmp r6, r3
	bge _08042F4E
	ldr r5, [sp, #0x02C]
	cmp r2, r5
	bgt _08042F5A
_08042F4E:
	ldr r0, [sp, #0x018]
	cmp r2, r0
	ble _08042F9A
	ldr r1, [sp, #0x030]
	cmp r6, r1
	bge _08042F9A
_08042F5A:
	ldr r2, [sp, #0x024]
	cmp r4, r2
	blt _08042F9A
	ldr r3, [sp, #0x038]
	cmp r4, r3
	bge _08042F9A
	ldr r5, _08042FAC @ =0xFFFFFF00
	adds r5, r5, r4
	mov r10, r5
	movs r0, #0x02
	ldr r6, [sp, #0x050]
	orrs r6, r0
	str r6, [sp, #0x050]
	movs r1, #0x89
	lsls r1, r1, #0x02
	adds r0, r7, r1
	mov r2, r12
	str r2, [r0, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r4, #0x04
	orrs r0, r4
	movs r5, #0x0F
	ands r0, r5
	lsls r0, r0, #0x03
	movs r6, #0x79
	negs r6, r6
	ands r1, r6
	orrs r1, r0
	strb r1, [r3, #0x00]
_08042F9A:
	movs r0, #0x01
	add r8, r0
	ldr r1, [sp, #0x060]
	cmp r8, r1
	bgt _08042FA6
	b _0804292E
_08042FA6:
	bl _08044546
	lsls r0, r0, #0x00
_08042FAC: .4byte 0xFFFFFF00
_08042FB0:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _08042FBA
	ldr r2, _08043040 @ =0x00000FFF
	adds r0, r0, r2
_08042FBA:
	asrs r0, r0, #0x0C
	ldr r3, [sp, #0x044]
	subs r0, r0, r3
	str r0, [sp, #0x064]
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bge _08042FCC
	ldr r4, _08043040 @ =0x00000FFF
	adds r0, r0, r4
_08042FCC:
	asrs r0, r0, #0x0C
	mov r8, r0
	ldr r0, [sp, #0x024]
	subs r0, #0x01
	cmp r0, #0x00
	bge _08042FDE
	ldr r5, [sp, #0x024]
	ldr r6, _08043044 @ =0x00000FFE
	adds r0, r5, r6
_08042FDE:
	asrs r0, r0, #0x0C
	str r0, [sp, #0x068]
	cmp r8, r0
	ble _08042FEA
	bl _08044546
_08042FEA:
	ldr r0, [sp, #0x074]
	mov r9, r0
_08042FEE:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	ldr r1, [sp, #0x064]
	mov r2, r8
	add r3, sp, #0x008
	bl sub_80457E8__11FieldObjectiiPiN23
	mov r12, r0
	ldr r1, [sp, #0x044]
	cmp r1, #0x00
	bne _0804300C
	b _08043108
_0804300C:
	movs r5, #0x00
	ldr r1, [r0, #0x00]
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1D
	adds r2, r1, #0x0
	cmp r0, #0x03
	bls _080430B2
	ldr r3, _08043048 @ =0x0000020D
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804304C
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0804304C
	ldr r0, [sp, #0x008]
	movs r6, #0x80
	lsls r6, r6, #0x03
	b _080430A2
_08043040: .4byte 0x00000FFF
_08043044: .4byte 0x00000FFE
_08043048: .4byte 0x0000020D
_0804304C:
	lsls r1, r2, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _080430C4
	mov r1, r8
	lsls r0, r1, #0x0C
	ldr r2, [r7, #0x10]
	cmp r0, r2
	bgt _080430A8
	adds r1, #0x01
	lsls r1, r1, #0x0C
	ldr r0, _08043094 @ =0xFFFFFF00
	ands r0, r2
	cmp r1, r0
	blt _080430A8
	mov r3, r12
	ldrb r0, [r3, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x06
	bne _08043098
	ldr r1, [sp, #0x008]
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r1, r4
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r2, r0
	subs r1, r1, r2
	str r1, [sp, #0x008]
	b _080430C8
_08043094: .4byte 0xFFFFFF00
_08043098:
	cmp r1, #0x04
	bne _080430C8
	ldr r0, [sp, #0x008]
	movs r6, #0x80
	lsls r6, r6, #0x05
_080430A2:
	adds r0, r0, r6
	str r0, [sp, #0x008]
	b _080430C8
_080430A8:
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrh r5, [r0, #0x00]
	b _080430C8
_080430B2:
	lsls r1, r2, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _080430C8
_080430C4:
	movs r5, #0x80
	lsls r5, r5, #0x05
_080430C8:
	ldr r3, [sp, #0x008]
	subs r0, r3, r5
	ldr r2, [r7, #0x3C]
	cmp r0, r2
	ble _080430D8
	ldr r4, [sp, #0x03C]
	cmp r0, r4
	bgt _080430F8
_080430D8:
	movs r5, #0x84
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08043108
	cmp r3, r2
	bne _08043108
	mov r6, r12
	ldrb r1, [r6, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x09
	bne _08043108
_080430F8:
	ldr r0, [sp, #0x064]
	adds r0, #0x01
	lsls r1, r0, #0x0C
	ldr r0, [sp, #0x02C]
	cmp r1, r0
	ble _08043108
	bl _08044470
_08043108:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r3, [r0, #0x00]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	bne _0804311A
	b _08043446
_0804311A:
	movs r5, #0x00
	ldr r2, [sp, #0x044]
	cmp r2, #0x00
	beq _080431DE
	mov r4, r12
	ldr r1, [r4, #0x00]
	lsls r0, r1, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	adds r2, r1, #0x0
	cmp r0, #0x02
	bhi _080431C2
	ldr r6, _08043154 @ =0x0000020D
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08043158
	movs r0, #0x01
	ands r0, r3
	cmp r0, #0x00
	bne _08043158
	ldr r0, [sp, #0x010]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [sp, #0x010]
	b _080431D8
_08043154: .4byte 0x0000020D
_08043158:
	lsls r1, r2, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _080431D4
	mov r2, r8
	lsls r0, r2, #0x0C
	ldr r2, [r7, #0x10]
	cmp r0, r2
	bgt _080431B8
	mov r1, r8
	adds r1, #0x01
	lsls r1, r1, #0x0C
	ldr r0, _080431A4 @ =0xFFFFFF00
	ands r0, r2
	cmp r1, r0
	blt _080431B8
	mov r3, r12
	ldrb r0, [r3, #0x02]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x06
	bne _080431A8
	ldr r1, [sp, #0x010]
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r1, r4
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r2, r0
	subs r1, r1, r2
	str r1, [sp, #0x010]
	b _080431D8
	.byte 0x00, 0x00
_080431A4: .4byte 0xFFFFFF00
_080431A8:
	cmp r1, #0x04
	bne _080431D8
	ldr r0, [sp, #0x010]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r0, r0, r6
	str r0, [sp, #0x010]
	b _080431D8
_080431B8:
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrh r5, [r0, #0x00]
	b _080431D8
_080431C2:
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _080431D8
_080431D4:
	movs r5, #0x80
	lsls r5, r5, #0x05
_080431D8:
	ldr r2, [sp, #0x044]
	cmp r2, #0x00
	bne _080431EC
_080431DE:
	mov r3, r12
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x07
	bhi _080431EC
	b _08043446
_080431EC:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	blt _0804320E
	ldr r4, [sp, #0x040]
	cmp r1, r4
	bge _0804320E
	ldr r0, [sp, #0x010]
	subs r2, r0, r5
	ldr r5, [sp, #0x03C]
	cmp r2, r5
	ble _0804320E
	ldr r6, [sp, #0x028]
	cmp r1, r6
	bge _0804320E
	ldr r0, [r7, #0x3C]
	cmp r2, r0
	bgt _0804323A
_0804320E:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08043220
	b _08043446
_08043220:
	ldr r1, [sp, #0x010]
	ldr r0, [r7, #0x3C]
	cmp r1, r0
	beq _0804322A
	b _08043446
_0804322A:
	mov r2, r12
	ldr r0, [r2, #0x00]
	ldr r1, _080432EC @ =0x000F0078
	ands r0, r1
	ldr r1, _080432F0 @ =0x00010008
	cmp r0, r1
	beq _0804323A
	b _08043446
_0804323A:
	mov r3, r8
	lsls r6, r3, #0x0C
	mov r0, r8
	adds r0, #0x01
	lsls r2, r0, #0x0C
	ldr r0, [sp, #0x064]
	adds r0, #0x01
	lsls r3, r0, #0x0C
	mov r4, r12
	ldrb r1, [r4, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0E
	bne _08043300
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bge _08043260
	ldr r5, _080432F4 @ =0x00000FFF
	adds r0, r0, r5
_08043260:
	asrs r0, r0, #0x0C
	cmp r8, r0
	bne _08043300
	ldr r1, [sp, #0x02C]
	subs r0, r3, r1
	ldr r2, [sp, #0x034]
	subs r5, r2, r6
	subs r0, r0, r5
	cmp r0, #0x00
	bgt _08043276
	b _08043446
_08043276:
	ldr r4, _080432F8 @ =0xFFFFF000
	adds r3, r3, r4
	subs r2, r1, r3
	movs r0, #0x80
	lsls r0, r0, #0x05
	subs r1, r0, r5
	subs r1, r1, r2
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r2, r1
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	adds r1, r1, r3
	str r1, [sp, #0x04C]
	movs r0, #0x80
	lsls r0, r0, #0x05
	subs r2, r0, r2
	subs r2, r2, r5
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r2, r5, r2
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r3, _080432FC @ =0xFFFFFF00
	adds r2, r2, r3
	ldrh r0, [r0, #0x00]
	adds r2, r2, r0
	adds r2, r2, r6
	mov r10, r2
	movs r4, #0x03
	str r4, [sp, #0x050]
	movs r5, #0x89
	lsls r5, r5, #0x02
	adds r0, r7, r5
	mov r6, r12
	str r6, [r0, #0x00]
	mov r0, r9
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x03
	adds r3, #0x87
	ands r2, r3
	orrs r2, r0
	mov r4, r9
	strb r2, [r4, #0x00]
	b _08043446
	.byte 0x00, 0x00
_080432EC: .4byte 0x000F0078
_080432F0: .4byte 0x00010008
_080432F4: .4byte 0x00000FFF
_080432F8: .4byte 0xFFFFF000
_080432FC: .4byte 0xFFFFFF00
_08043300:
	movs r5, #0x0F
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0F
	bne _08043388
	ldr r0, [sp, #0x068]
	cmp r8, r0
	bne _08043388
	ldr r4, [sp, #0x02C]
	subs r1, r3, r4
	ldr r4, [sp, #0x038]
	subs r0, r2, r4
	subs r1, r1, r0
	cmp r1, #0x00
	bgt _08043320
	b _08043446
_08043320:
	ldr r0, _08043380 @ =0xFFFFF000
	adds r4, r3, r0
	ldr r1, [sp, #0x02C]
	subs r3, r1, r4
	ldr r0, [sp, #0x038]
	subs r2, r0, r6
	subs r1, r3, r2
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r2, r1
	adds r1, r1, r4
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	str r1, [sp, #0x04C]
	subs r2, r2, r3
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r3, r3, r2
	adds r3, r3, r6
	ldr r6, _08043384 @ =0xFFFFFF00
	adds r6, r6, r3
	mov r10, r6
	movs r0, #0x03
	str r0, [sp, #0x050]
	movs r1, #0x89
	lsls r1, r1, #0x02
	adds r0, r7, r1
	mov r2, r12
	str r2, [r0, #0x00]
	mov r3, r9
	ldrb r2, [r3, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x08
	orrs r0, r1
	ands r0, r5
	lsls r0, r0, #0x03
	movs r4, #0x79
	negs r4, r4
	ands r2, r4
	b _08043442
	.byte 0x00, 0x00
_08043380: .4byte 0xFFFFF000
_08043384: .4byte 0xFFFFFF00
_08043388:
	movs r5, #0x84
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _080433A8
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x78
	ands r1, r0
	cmp r1, #0x28
	beq _08043446
	cmp r1, #0x38
	beq _08043446
_080433A8:
	ldr r1, [sp, #0x044]
	mov r4, r12
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x09
	beq _080433D4
	cmp r0, #0x09
	bhi _080433C0
	cmp r0, #0x08
	beq _080433CA
	b _080433E2
_080433C0:
	cmp r0, #0x0A
	beq _080433E2
	cmp r0, #0x0B
	beq _080433DC
	b _080433E2
_080433CA:
	ldr r5, _080433D0 @ =0xFFFFF800
	adds r2, r2, r5
	b _080433E6
_080433D0: .4byte 0xFFFFF800
_080433D4:
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r6, r6, r0
	b _080433E6
_080433DC:
	ldr r1, _080434E8 @ =0xFFFFF800
	adds r3, r3, r1
	movs r1, #0x01
_080433E2:
	cmp r1, #0x00
	beq _08043446
_080433E6:
	ldr r4, [sp, #0x024]
	cmp r6, r4
	bge _080433F2
	ldr r5, [sp, #0x034]
	cmp r2, r5
	bgt _080433FE
_080433F2:
	ldr r0, [sp, #0x020]
	cmp r2, r0
	ble _08043446
	ldr r1, [sp, #0x038]
	cmp r6, r1
	bge _08043446
_080433FE:
	ldr r2, [sp, #0x018]
	cmp r3, r2
	bgt _08043446
	ldr r4, [sp, #0x02C]
	cmp r3, r4
	ble _08043446
	movs r5, #0x9E
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r3, r3, r0
	str r3, [sp, #0x04C]
	movs r0, #0x01
	ldr r6, [sp, #0x050]
	orrs r6, r0
	str r6, [sp, #0x050]
	movs r1, #0x89
	lsls r1, r1, #0x02
	adds r0, r7, r1
	mov r2, r12
	str r2, [r0, #0x00]
	mov r3, r9
	ldrb r2, [r3, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x08
	orrs r0, r1
	movs r4, #0x0F
	ands r0, r4
	lsls r0, r0, #0x03
	movs r5, #0x79
	negs r5, r5
	ands r2, r5
_08043442:
	orrs r2, r0
	strb r2, [r3, #0x00]
_08043446:
	ldr r6, _080434EC @ =0x0000020D
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08043456
	b _080436D8
_08043456:
	ldr r0, [sp, #0x008]
	ldr r3, [r7, #0x3C]
	cmp r0, r3
	blt _08043460
	b _080436D8
_08043460:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	movs r5, #0x01
	adds r0, r5, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _0804348A
	mov r4, r12
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804348A
	b _080436D8
_0804348A:
	ldr r1, [sp, #0x00C]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804349A
	ldr r0, [sp, #0x010]
	cmp r0, r3
	beq _080434F0
_0804349A:
	ldr r0, [sp, #0x064]
	adds r0, #0x01
	lsls r1, r0, #0x0C
	ldr r6, [sp, #0x02C]
	cmp r1, r6
	bgt _080434A8
	b _080436D8
_080434A8:
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	str r1, [sp, #0x04C]
	ldr r3, [sp, #0x050]
	orrs r3, r5
	str r3, [sp, #0x050]
	movs r4, #0x89
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r5, r12
	str r5, [r0, #0x00]
	mov r6, r9
	ldrb r2, [r6, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x03
	movs r3, #0x79
	negs r3, r3
	ands r2, r3
	orrs r2, r0
	strb r2, [r6, #0x00]
	bl _08044546
	lsls r0, r0, #0x00
_080434E8: .4byte 0xFFFFF800
_080434EC: .4byte 0x0000020D
_080434F0:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	bne _080434FA
	b _080436D8
_080434FA:
	mov r4, r8
	lsls r6, r4, #0x0C
	mov r0, r8
	adds r0, #0x01
	lsls r2, r0, #0x0C
	ldr r0, [sp, #0x064]
	adds r0, #0x01
	lsls r3, r0, #0x0C
	mov r5, r12
	ldrb r1, [r5, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _080435B8
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bge _08043520
	ldr r4, _080435AC @ =0x00000FFF
	adds r0, r0, r4
_08043520:
	asrs r0, r0, #0x0C
	cmp r8, r0
	bne _080435B8
	ldr r5, [sp, #0x02C]
	subs r0, r3, r5
	ldr r1, [sp, #0x034]
	subs r5, r1, r6
	subs r0, r0, r5
	cmp r0, #0x00
	bgt _08043536
	b _080436D8
_08043536:
	ldr r2, _080435B0 @ =0xFFFFF000
	adds r3, r3, r2
	ldr r4, [sp, #0x02C]
	subs r2, r4, r3
	movs r0, #0x80
	lsls r0, r0, #0x05
	subs r1, r0, r5
	subs r1, r1, r2
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r2, r1
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	adds r1, r1, r3
	str r1, [sp, #0x04C]
	movs r0, #0x80
	lsls r0, r0, #0x05
	subs r2, r0, r2
	subs r2, r2, r5
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r2, r5, r2
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r3, _080435B4 @ =0xFFFFFF00
	adds r2, r2, r3
	ldrh r0, [r0, #0x00]
	adds r2, r2, r0
	adds r2, r2, r6
	mov r10, r2
	movs r4, #0x03
	str r4, [sp, #0x050]
	movs r5, #0x89
	lsls r5, r5, #0x02
	adds r0, r7, r5
	mov r6, r12
	str r6, [r0, #0x00]
	mov r0, r9
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x03
	adds r3, #0x87
	ands r2, r3
	orrs r2, r0
	mov r4, r9
	b _080436D6
	.byte 0x00, 0x00
_080435AC: .4byte 0x00000FFF
_080435B0: .4byte 0xFFFFF000
_080435B4: .4byte 0xFFFFFF00
_080435B8:
	movs r5, #0x0F
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0C
	bne _08043644
	ldr r0, [sp, #0x068]
	cmp r8, r0
	bne _08043644
	ldr r4, [sp, #0x02C]
	subs r1, r3, r4
	ldr r4, [sp, #0x038]
	subs r0, r2, r4
	subs r1, r1, r0
	cmp r1, #0x00
	bgt _080435D8
	b _080436D8
_080435D8:
	ldr r0, _0804363C @ =0xFFFFF000
	adds r4, r3, r0
	ldr r1, [sp, #0x02C]
	subs r3, r1, r4
	ldr r0, [sp, #0x038]
	subs r2, r0, r6
	subs r1, r3, r2
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r2, r1
	adds r1, r1, r4
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	str r1, [sp, #0x04C]
	subs r2, r2, r3
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r3, r3, r2
	adds r3, r3, r6
	ldr r6, _08043640 @ =0xFFFFFF00
	adds r6, r6, r3
	mov r10, r6
	movs r0, #0x03
	str r0, [sp, #0x050]
	movs r1, #0x89
	lsls r1, r1, #0x02
	adds r0, r7, r1
	mov r2, r12
	str r2, [r0, #0x00]
	mov r3, r9
	ldrb r2, [r3, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x08
	orrs r0, r1
	ands r0, r5
	lsls r0, r0, #0x03
	movs r4, #0x79
	negs r4, r4
	ands r2, r4
	orrs r2, r0
	strb r2, [r3, #0x00]
	b _080436D8
	.byte 0x00, 0x00
_0804363C: .4byte 0xFFFFF000
_08043640: .4byte 0xFFFFFF00
_08043644:
	mov r5, r12
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x09
	beq _08043668
	cmp r0, #0x09
	bhi _0804365A
	cmp r0, #0x08
	beq _08043660
	b _080436D8
_0804365A:
	cmp r0, #0x0A
	beq _08043674
	b _080436D8
_08043660:
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r6, r6, r0
	b _08043678
_08043668:
	ldr r1, _08043670 @ =0xFFFFF800
	adds r2, r2, r1
	b _08043678
	.byte 0x00, 0x00
_08043670: .4byte 0xFFFFF800
_08043674:
	ldr r4, _080436E8 @ =0xFFFFF800
	adds r3, r3, r4
_08043678:
	ldr r5, [sp, #0x024]
	cmp r6, r5
	bge _08043684
	ldr r0, [sp, #0x034]
	cmp r2, r0
	bgt _08043690
_08043684:
	ldr r1, [sp, #0x020]
	cmp r2, r1
	ble _080436D8
	ldr r2, [sp, #0x038]
	cmp r6, r2
	bge _080436D8
_08043690:
	ldr r4, [sp, #0x018]
	cmp r3, r4
	bgt _080436D8
	ldr r5, [sp, #0x02C]
	cmp r3, r5
	ble _080436D8
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r3, r3, r0
	str r3, [sp, #0x04C]
	movs r0, #0x01
	ldr r1, [sp, #0x050]
	orrs r1, r0
	str r1, [sp, #0x050]
	movs r2, #0x89
	lsls r2, r2, #0x02
	adds r0, r7, r2
	mov r3, r12
	str r3, [r0, #0x00]
	mov r4, r9
	ldrb r2, [r4, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x08
	orrs r0, r1
	movs r5, #0x0F
	ands r0, r5
	lsls r0, r0, #0x03
	movs r6, #0x79
	negs r6, r6
	ands r2, r6
	orrs r2, r0
_080436D6:
	strb r2, [r4, #0x00]
_080436D8:
	movs r0, #0x01
	add r8, r0
	ldr r1, [sp, #0x068]
	cmp r8, r1
	bgt _080436E4
	b _08042FEE
_080436E4:
	bl _08044546
_080436E8: .4byte 0xFFFFF800
_080436EC:
	ldr r0, [sp, #0x01C]
	subs r0, #0x01
	cmp r0, #0x00
	bge _080436FA
	ldr r2, [sp, #0x01C]
	ldr r3, _08043784 @ =0x00000FFE
	adds r0, r2, r3
_080436FA:
	asrs r0, r0, #0x0C
	ldr r4, [sp, #0x044]
	adds r0, r0, r4
	str r0, [sp, #0x06C]
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bge _0804370C
	ldr r5, _08043788 @ =0x00000FFF
	adds r0, r0, r5
_0804370C:
	asrs r0, r0, #0x0C
	mov r8, r0
	ldr r0, [sp, #0x024]
	subs r0, #0x01
	cmp r0, #0x00
	bge _0804371E
	ldr r6, [sp, #0x024]
	ldr r1, _08043784 @ =0x00000FFE
	adds r0, r6, r1
_0804371E:
	asrs r0, r0, #0x0C
	str r0, [sp, #0x070]
	cmp r8, r0
	ble _0804372A
	bl _08044546
_0804372A:
	ldr r2, [sp, #0x074]
	mov r9, r2
_0804372E:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	ldr r1, [sp, #0x06C]
	mov r2, r8
	add r3, sp, #0x008
	bl sub_80457E8__11FieldObjectiiPiN23
	mov r12, r0
	ldr r3, [sp, #0x044]
	cmp r3, #0x00
	bne _0804374C
	b _0804384E
_0804374C:
	movs r5, #0x00
	ldr r1, [r0, #0x00]
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1D
	adds r2, r1, #0x0
	cmp r0, #0x03
	bls _080437FA
	ldr r4, _0804378C @ =0x0000020D
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08043790
	movs r6, #0x84
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08043790
	ldr r0, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [sp, #0x008]
	b _08043810
_08043784: .4byte 0x00000FFE
_08043788: .4byte 0x00000FFF
_0804378C: .4byte 0x0000020D
_08043790:
	lsls r1, r2, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804380C
	mov r2, r8
	lsls r0, r2, #0x0C
	ldr r2, [r7, #0x10]
	cmp r0, r2
	bgt _080437F0
	mov r1, r8
	adds r1, #0x01
	lsls r1, r1, #0x0C
	ldr r0, _080437DC @ =0xFFFFFF00
	ands r0, r2
	cmp r1, r0
	blt _080437F0
	mov r3, r12
	ldrb r0, [r3, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x06
	bne _080437E0
	ldr r1, [sp, #0x008]
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r1, r4
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r2, r0
	subs r1, r1, r2
	str r1, [sp, #0x008]
	b _08043810
	.byte 0x00, 0x00
_080437DC: .4byte 0xFFFFFF00
_080437E0:
	cmp r1, #0x05
	bne _08043810
	ldr r0, [sp, #0x008]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r0, r0, r6
	str r0, [sp, #0x008]
	b _08043810
_080437F0:
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrh r5, [r0, #0x00]
	b _08043810
_080437FA:
	lsls r1, r2, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08043810
_0804380C:
	movs r5, #0x80
	lsls r5, r5, #0x05
_08043810:
	ldr r3, [sp, #0x008]
	subs r0, r3, r5
	ldr r2, [r7, #0x3C]
	cmp r0, r2
	ble _08043820
	ldr r4, [sp, #0x03C]
	cmp r0, r4
	bgt _08043840
_08043820:
	movs r5, #0x84
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0804384E
	cmp r3, r2
	bne _0804384E
	mov r6, r12
	ldrb r1, [r6, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x09
	bne _0804384E
_08043840:
	ldr r0, [sp, #0x06C]
	lsls r1, r0, #0x0C
	ldr r2, [sp, #0x030]
	cmp r1, r2
	bge _0804384E
	bl _080444A2
_0804384E:
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrb r3, [r0, #0x00]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	bne _08043860
	b _08043B6C
_08043860:
	movs r5, #0x00
	ldr r4, [sp, #0x044]
	cmp r4, #0x00
	beq _08043926
	mov r6, r12
	ldr r1, [r6, #0x00]
	lsls r0, r1, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	adds r2, r1, #0x0
	cmp r0, #0x02
	bhi _0804390A
	ldr r1, _0804389C @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080438A0
	movs r0, #0x01
	ands r0, r3
	cmp r0, #0x00
	bne _080438A0
	ldr r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	str r0, [sp, #0x010]
	b _08043920
	.byte 0x00, 0x00
_0804389C: .4byte 0x0000020D
_080438A0:
	lsls r1, r2, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	bne _0804391C
	mov r3, r8
	lsls r0, r3, #0x0C
	ldr r2, [r7, #0x10]
	cmp r0, r2
	bgt _08043900
	mov r1, r8
	adds r1, #0x01
	lsls r1, r1, #0x0C
	ldr r0, _080438EC @ =0xFFFFFF00
	ands r0, r2
	cmp r1, r0
	blt _08043900
	mov r4, r12
	ldrb r0, [r4, #0x02]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x06
	bne _080438F0
	ldr r1, [sp, #0x010]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r1, r6
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r2, r0
	subs r1, r1, r2
	str r1, [sp, #0x010]
	b _08043920
	.byte 0x00, 0x00
_080438EC: .4byte 0xFFFFFF00
_080438F0:
	cmp r1, #0x05
	bne _08043920
	ldr r0, [sp, #0x010]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [sp, #0x010]
	b _08043920
_08043900:
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrh r5, [r0, #0x00]
	b _08043920
_0804390A:
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08043920
_0804391C:
	movs r5, #0x80
	lsls r5, r5, #0x05
_08043920:
	ldr r3, [sp, #0x044]
	cmp r3, #0x00
	bne _08043934
_08043926:
	mov r4, r12
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x07
	bhi _08043934
	b _08043B6C
_08043934:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	blt _08043956
	ldr r6, [sp, #0x040]
	cmp r1, r6
	bge _08043956
	ldr r0, [sp, #0x010]
	subs r2, r0, r5
	ldr r0, [sp, #0x03C]
	cmp r2, r0
	ble _08043956
	ldr r3, [sp, #0x028]
	cmp r1, r3
	bge _08043956
	ldr r0, [r7, #0x3C]
	cmp r2, r0
	bgt _08043982
_08043956:
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08043968
	b _08043B6C
_08043968:
	ldr r1, [sp, #0x010]
	ldr r0, [r7, #0x3C]
	cmp r1, r0
	beq _08043972
	b _08043B6C
_08043972:
	mov r5, r12
	ldr r0, [r5, #0x00]
	ldr r1, _08043A1C @ =0x000F0078
	ands r0, r1
	ldr r1, _08043A20 @ =0x00010008
	cmp r0, r1
	beq _08043982
	b _08043B6C
_08043982:
	mov r6, r8
	lsls r4, r6, #0x0C
	mov r0, r8
	adds r0, #0x01
	lsls r2, r0, #0x0C
	ldr r0, [sp, #0x06C]
	lsls r6, r0, #0x0C
	mov r3, r12
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0C
	bne _08043A2C
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bge _080439A6
	ldr r5, _08043A24 @ =0x00000FFF
	adds r0, r0, r5
_080439A6:
	asrs r0, r0, #0x0C
	cmp r8, r0
	bne _08043A2C
	ldr r0, [sp, #0x030]
	subs r3, r0, r6
	ldr r1, [sp, #0x034]
	subs r2, r1, r4
	subs r0, r3, r2
	cmp r0, #0x00
	bgt _080439BC
	b _08043B6C
_080439BC:
	lsrs r1, r0, #0x1F
	adds r1, r0, r1
	asrs r1, r1, #0x01
	adds r1, r2, r1
	adds r1, r1, r6
	movs r5, #0x9E
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	str r1, [sp, #0x04C]
	subs r0, r2, r3
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r0, r3, r0
	adds r0, r0, r4
	movs r6, #0x9F
	lsls r6, r6, #0x02
	adds r1, r7, r6
	ldr r2, _08043A28 @ =0xFFFFFF00
	adds r0, r0, r2
	ldrh r1, [r1, #0x00]
	adds r1, r1, r0
	mov r10, r1
	movs r3, #0x03
	str r3, [sp, #0x050]
	movs r4, #0x89
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r5, r12
	str r5, [r0, #0x00]
	mov r6, r9
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r2, #0x02
	orrs r0, r2
	movs r3, #0x0F
	ands r0, r3
	lsls r0, r0, #0x03
	movs r4, #0x79
	negs r4, r4
	ands r1, r4
	orrs r1, r0
	strb r1, [r6, #0x00]
	b _08043B6C
_08043A1C: .4byte 0x000F0078
_08043A20: .4byte 0x00010008
_08043A24: .4byte 0x00000FFF
_08043A28: .4byte 0xFFFFFF00
_08043A2C:
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _08043AB0
	ldr r5, [sp, #0x070]
	cmp r8, r5
	bne _08043AB0
	ldr r0, [sp, #0x030]
	subs r5, r0, r6
	ldr r1, [sp, #0x038]
	subs r0, r2, r1
	subs r0, r5, r0
	cmp r0, #0x00
	bgt _08043A4A
	b _08043B6C
_08043A4A:
	subs r3, r1, r4
	movs r2, #0x80
	lsls r2, r2, #0x05
	subs r1, r2, r3
	subs r1, r1, r5
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r5, r1
	adds r1, r1, r6
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	str r1, [sp, #0x04C]
	subs r2, r2, r5
	subs r2, r2, r3
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r3, r3, r2
	adds r3, r3, r4
	ldr r0, _08043AAC @ =0xFFFFFF00
	adds r0, r0, r3
	mov r10, r0
	movs r1, #0x03
	str r1, [sp, #0x050]
	movs r2, #0x89
	lsls r2, r2, #0x02
	adds r0, r7, r2
	mov r3, r12
	str r3, [r0, #0x00]
	mov r4, r9
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r5, #0x02
	orrs r0, r5
	movs r6, #0x0F
	ands r0, r6
	lsls r0, r0, #0x03
	movs r2, #0x79
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	b _08043B6C
_08043AAC: .4byte 0xFFFFFF00
_08043AB0:
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08043AD0
	mov r5, r12
	ldrb r0, [r5, #0x00]
	movs r1, #0x78
	ands r1, r0
	cmp r1, #0x28
	beq _08043B6C
	cmp r1, #0x38
	beq _08043B6C
_08043AD0:
	ldr r1, [sp, #0x044]
	mov r3, r12
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x09
	beq _08043AF8
	cmp r0, #0x09
	bhi _08043AE8
	cmp r0, #0x08
	beq _08043AEE
	b _08043B08
_08043AE8:
	cmp r0, #0x0A
	beq _08043B00
	b _08043B08
_08043AEE:
	ldr r5, _08043AF4 @ =0xFFFFF800
	adds r2, r2, r5
	b _08043B0C
_08043AF4: .4byte 0xFFFFF800
_08043AF8:
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r4, r4, r0
	b _08043B0C
_08043B00:
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r6, r6, r1
	movs r1, #0x01
_08043B08:
	cmp r1, #0x00
	beq _08043B6C
_08043B0C:
	ldr r3, [sp, #0x024]
	cmp r4, r3
	bge _08043B18
	ldr r5, [sp, #0x034]
	cmp r2, r5
	bgt _08043B24
_08043B18:
	ldr r0, [sp, #0x020]
	cmp r2, r0
	ble _08043B6C
	ldr r1, [sp, #0x038]
	cmp r4, r1
	bge _08043B6C
_08043B24:
	ldr r2, [sp, #0x01C]
	cmp r6, r2
	blt _08043B6C
	ldr r3, [sp, #0x030]
	cmp r6, r3
	bge _08043B6C
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r6, r6, r0
	str r6, [sp, #0x04C]
	movs r0, #0x01
	ldr r5, [sp, #0x050]
	orrs r5, r0
	str r5, [sp, #0x050]
	movs r6, #0x89
	lsls r6, r6, #0x02
	adds r0, r7, r6
	mov r1, r12
	str r1, [r0, #0x00]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r3, #0x02
	orrs r0, r3
	movs r4, #0x0F
	ands r0, r4
	lsls r0, r0, #0x03
	movs r5, #0x79
	negs r5, r5
	ands r1, r5
	orrs r1, r0
	strb r1, [r2, #0x00]
_08043B6C:
	ldr r6, _08043C0C @ =0x0000020D
	adds r0, r7, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08043B7C
	b _08043DD6
_08043B7C:
	ldr r0, [sp, #0x008]
	ldr r3, [r7, #0x3C]
	cmp r0, r3
	blt _08043B86
	b _08043DD6
_08043B86:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	movs r5, #0x01
	adds r0, r5, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _08043BB0
	mov r4, r12
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08043BB0
	b _08043DD6
_08043BB0:
	ldr r1, [sp, #0x00C]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08043BC0
	ldr r0, [sp, #0x010]
	cmp r0, r3
	beq _08043C10
_08043BC0:
	ldr r6, [sp, #0x06C]
	lsls r1, r6, #0x0C
	ldr r0, [sp, #0x030]
	cmp r1, r0
	blt _08043BCC
	b _08043DD6
_08043BCC:
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	str r1, [sp, #0x04C]
	ldr r3, [sp, #0x050]
	orrs r3, r5
	str r3, [sp, #0x050]
	movs r4, #0x89
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r5, r12
	str r5, [r0, #0x00]
	mov r6, r9
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r2, #0x02
_08043BF4:
	orrs r0, r2
	movs r3, #0x0F
	ands r0, r3
	lsls r0, r0, #0x03
	movs r4, #0x79
	negs r4, r4
	ands r1, r4
	orrs r1, r0
	strb r1, [r6, #0x00]
	bl _08044546
	lsls r0, r0, #0x00
_08043C0C: .4byte 0x0000020D
_08043C10:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	bne _08043C1A
	b _08043DD6
_08043C1A:
	mov r5, r8
	lsls r4, r5, #0x0C
	mov r0, r8
	adds r0, #0x01
	lsls r2, r0, #0x0C
	ldr r0, [sp, #0x06C]
	lsls r6, r0, #0x0C
	mov r3, r12
	ldrb r1, [r3, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0F
	bne _08043CBC
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bge _08043C3E
	ldr r5, _08043CB4 @ =0x00000FFF
	adds r0, r0, r5
_08043C3E:
	asrs r0, r0, #0x0C
	cmp r8, r0
	bne _08043CBC
	ldr r0, [sp, #0x030]
	subs r3, r0, r6
	ldr r1, [sp, #0x034]
	subs r2, r1, r4
	subs r0, r3, r2
	cmp r0, #0x00
	bgt _08043C54
	b _08043DD6
_08043C54:
	lsrs r1, r0, #0x1F
	adds r1, r0, r1
	asrs r1, r1, #0x01
	adds r1, r2, r1
	adds r1, r1, r6
	movs r5, #0x9E
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	str r1, [sp, #0x04C]
	subs r0, r2, r3
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r0, r3, r0
	adds r0, r0, r4
	movs r6, #0x9F
	lsls r6, r6, #0x02
	adds r1, r7, r6
	ldr r2, _08043CB8 @ =0xFFFFFF00
	adds r0, r0, r2
	ldrh r1, [r1, #0x00]
	adds r1, r1, r0
	mov r10, r1
	movs r3, #0x03
	str r3, [sp, #0x050]
	movs r4, #0x89
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r5, r12
	str r5, [r0, #0x00]
	mov r6, r9
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r2, #0x02
	orrs r0, r2
	movs r3, #0x0F
	ands r0, r3
	lsls r0, r0, #0x03
	movs r4, #0x79
	negs r4, r4
	ands r1, r4
	orrs r1, r0
	strb r1, [r6, #0x00]
	b _08043DD6
_08043CB4: .4byte 0x00000FFF
_08043CB8: .4byte 0xFFFFFF00
_08043CBC:
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0E
	bne _08043D40
	ldr r5, [sp, #0x070]
	cmp r8, r5
	bne _08043D40
	ldr r0, [sp, #0x030]
	subs r5, r0, r6
	ldr r1, [sp, #0x038]
	subs r0, r2, r1
	subs r0, r5, r0
	cmp r0, #0x00
	bgt _08043CDA
	b _08043DD6
_08043CDA:
	subs r3, r1, r4
	movs r2, #0x80
	lsls r2, r2, #0x05
	subs r1, r2, r3
	subs r1, r1, r5
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r5, r1
	adds r1, r1, r6
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	str r1, [sp, #0x04C]
	subs r2, r2, r5
	subs r2, r2, r3
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	adds r3, r3, r2
	adds r3, r3, r4
	ldr r0, _08043D3C @ =0xFFFFFF00
	adds r0, r0, r3
	mov r10, r0
	movs r1, #0x03
	str r1, [sp, #0x050]
	movs r2, #0x89
	lsls r2, r2, #0x02
	adds r0, r7, r2
	mov r3, r12
	str r3, [r0, #0x00]
	mov r4, r9
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r5, #0x02
	orrs r0, r5
	movs r6, #0x0F
	ands r0, r6
	lsls r0, r0, #0x03
	movs r2, #0x79
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	b _08043DD6
_08043D3C: .4byte 0xFFFFFF00
_08043D40:
	mov r3, r12
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x1C
	cmp r0, #0x09
	beq _08043D64
	cmp r0, #0x09
	bhi _08043D56
	cmp r0, #0x08
	beq _08043D5C
	b _08043DD6
_08043D56:
	cmp r0, #0x0B
	beq _08043D70
	b _08043DD6
_08043D5C:
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r4, r4, r5
	b _08043D76
_08043D64:
	ldr r0, _08043D6C @ =0xFFFFF800
	adds r2, r2, r0
	b _08043D76
	.byte 0x00, 0x00
_08043D6C: .4byte 0xFFFFF800
_08043D70:
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r6, r6, r1
_08043D76:
	ldr r3, [sp, #0x024]
	cmp r4, r3
	bge _08043D82
	ldr r5, [sp, #0x034]
	cmp r2, r5
	bgt _08043D8E
_08043D82:
	ldr r0, [sp, #0x020]
	cmp r2, r0
	ble _08043DD6
	ldr r1, [sp, #0x038]
	cmp r4, r1
	bge _08043DD6
_08043D8E:
	ldr r2, [sp, #0x01C]
	cmp r6, r2
	blt _08043DD6
	ldr r3, [sp, #0x030]
	cmp r6, r3
	bge _08043DD6
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r6, r6, r0
	str r6, [sp, #0x04C]
	movs r0, #0x01
	ldr r5, [sp, #0x050]
	orrs r5, r0
	str r5, [sp, #0x050]
	movs r6, #0x89
	lsls r6, r6, #0x02
	adds r0, r7, r6
	mov r1, r12
	str r1, [r0, #0x00]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1C
	movs r3, #0x02
	orrs r0, r3
	movs r4, #0x0F
	ands r0, r4
	lsls r0, r0, #0x03
	movs r5, #0x79
	negs r5, r5
	ands r1, r5
	orrs r1, r0
	strb r1, [r2, #0x00]
_08043DD6:
	movs r6, #0x01
	add r8, r6
	ldr r0, [sp, #0x070]
	cmp r8, r0
	bgt _08043DE2
	b _0804372E
_08043DE2:
	b _08044546
_08043DE4:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _08043DEE
	ldr r1, _08043E60 @ =0x00000FFF
	adds r0, r0, r1
_08043DEE:
	asrs r3, r0, #0x0C
	subs r1, r3, #0x1
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bge _08043DFC
	ldr r2, _08043E60 @ =0x00000FFF
	adds r0, r0, r2
_08043DFC:
	asrs r2, r0, #0x0C
	subs r4, r2, #0x1
	mov r8, r4
	lsls r0, r3, #0x0C
	ldr r5, [sp, #0x02C]
	cmp r0, r5
	bgt _08043E0C
	b _08044546
_08043E0C:
	lsls r0, r2, #0x0C
	ldr r6, [sp, #0x034]
	cmp r0, r6
	bgt _08043E16
	b _08044546
_08043E16:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	mov r2, r8
	add r3, sp, #0x008
	bl sub_80457E8__11FieldObjectiiPiN23
	adds r6, r0, #0x0
	movs r4, #0x00
	ldr r1, [r6, #0x00]
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _08043E6A
	ldr r1, _08043E64 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08043E68
	movs r2, #0x84
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08043E68
	ldr r0, [sp, #0x008]
	movs r3, #0x80
	lsls r3, r3, #0x03
	adds r0, r0, r3
	str r0, [sp, #0x008]
	b _08043E80
_08043E60: .4byte 0x00000FFF
_08043E64: .4byte 0x0000020D
_08043E68:
	ldr r1, [r6, #0x00]
_08043E6A:
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08043E80
	movs r4, #0x80
	lsls r4, r4, #0x05
_08043E80:
	ldr r0, [sp, #0x008]
	subs r0, r0, r4
	ldr r5, [r7, #0x3C]
	cmp r0, r5
	ble _08043ED4
	ldr r4, [sp, #0x03C]
	cmp r0, r4
	ble _08043ED4
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x0C
	ldr r1, [sp, #0x034]
	cmp r0, r1
	ble _08043ED4
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r3, _08043ED0 @ =0xFFFFFF00
	adds r0, r0, r3
	ldrh r1, [r1, #0x00]
	adds r1, r1, r0
	mov r10, r1
	movs r0, #0x02
	ldr r4, [sp, #0x050]
	orrs r4, r0
	str r4, [sp, #0x050]
	movs r5, #0x89
	lsls r5, r5, #0x02
	adds r0, r7, r5
	str r6, [r0, #0x00]
	ldr r6, [sp, #0x074]
	ldrb r2, [r6, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	movs r0, #0x01
	orrs r1, r0
	lsls r1, r1, #0x03
	subs r0, #0x7A
	b _08044540
	.byte 0x00, 0x00
_08043ED0: .4byte 0xFFFFFF00
_08043ED4:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	bne _08043EE6
	b _08044546
_08043EE6:
	movs r4, #0x00
	ldr r1, [r6, #0x00]
	lsls r0, r1, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	adds r3, r1, #0x0
	cmp r0, #0x02
	bhi _08043F20
	ldr r1, _08043F18 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08043F1C
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _08043F1C
	ldr r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	str r0, [sp, #0x010]
	b _08043F36
_08043F18: .4byte 0x0000020D
_08043F1C:
	lsls r1, r3, #0x01
	b _08043F22
_08043F20:
	lsls r1, r1, #0x01
_08043F22:
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08043F36
	movs r4, #0x80
	lsls r4, r4, #0x05
_08043F36:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _08043F3E
	b _08044546
_08043F3E:
	ldr r3, [sp, #0x028]
	cmp r1, r3
	blt _08043F46
	b _08044546
_08043F46:
	ldr r0, [sp, #0x010]
	subs r0, r0, r4
	cmp r0, r5
	bgt _08043F50
	b _08044546
_08043F50:
	ldr r4, [sp, #0x040]
	cmp r1, r4
	blt _08043F58
	b _08044546
_08043F58:
	ldr r5, [sp, #0x03C]
	cmp r0, r5
	bgt _08043F60
	b _08044546
_08043F60:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x0C
	ldr r1, [sp, #0x034]
	cmp r0, r1
	bgt _08043F6E
	b _08044546
_08043F6E:
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r3, _08043FA0 @ =0xFFFFFF00
	adds r0, r0, r3
	ldrh r1, [r1, #0x00]
	adds r1, r1, r0
	mov r10, r1
	movs r0, #0x02
	ldr r4, [sp, #0x050]
	orrs r4, r0
	str r4, [sp, #0x050]
	movs r5, #0x89
	lsls r5, r5, #0x02
	adds r0, r7, r5
	str r6, [r0, #0x00]
	ldr r6, [sp, #0x074]
	ldrb r2, [r6, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	movs r0, #0x01
	orrs r1, r0
	lsls r1, r1, #0x03
	subs r0, #0x7A
	b _08044540
_08043FA0: .4byte 0xFFFFFF00
_08043FA4:
	ldr r1, [sp, #0x01C]
	ldr r2, _08044024 @ =0xFFFFFF00
	adds r0, r1, r2
	cmp r0, #0x00
	bge _08043FB2
	ldr r3, _08044028 @ =0x00000EFF
	adds r0, r1, r3
_08043FB2:
	asrs r0, r0, #0x0C
	adds r1, r0, #0x1
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bge _08043FC0
	ldr r4, _0804402C @ =0x00000FFF
	adds r0, r0, r4
_08043FC0:
	asrs r2, r0, #0x0C
	subs r5, r2, #0x1
	mov r8, r5
	lsls r0, r1, #0x0C
	ldr r6, [sp, #0x030]
	cmp r0, r6
	blt _08043FD0
	b _08044546
_08043FD0:
	lsls r0, r2, #0x0C
	ldr r2, [sp, #0x034]
	cmp r0, r2
	bgt _08043FDA
	b _08044546
_08043FDA:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	mov r2, r8
	add r3, sp, #0x008
	bl sub_80457E8__11FieldObjectiiPiN23
	adds r6, r0, #0x0
	movs r4, #0x00
	ldr r1, [r6, #0x00]
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _08044036
	ldr r3, _08044030 @ =0x0000020D
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08044034
	movs r5, #0x84
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08044034
	ldr r0, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [sp, #0x008]
	b _0804404C
_08044024: .4byte 0xFFFFFF00
_08044028: .4byte 0x00000EFF
_0804402C: .4byte 0x00000FFF
_08044030: .4byte 0x0000020D
_08044034:
	ldr r1, [r6, #0x00]
_08044036:
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _0804404C
	movs r4, #0x80
	lsls r4, r4, #0x05
_0804404C:
	ldr r0, [sp, #0x008]
	subs r0, r0, r4
	ldr r5, [r7, #0x3C]
	cmp r0, r5
	ble _080440A0
	ldr r2, [sp, #0x03C]
	cmp r0, r2
	ble _080440A0
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x0C
	ldr r3, [sp, #0x034]
	cmp r0, r3
	ble _080440A0
	movs r4, #0x9F
	lsls r4, r4, #0x02
	adds r1, r7, r4
	ldr r5, _0804409C @ =0xFFFFFF00
	adds r0, r0, r5
	ldrh r1, [r1, #0x00]
	adds r1, r1, r0
	mov r10, r1
	movs r0, #0x02
	ldr r1, [sp, #0x050]
	orrs r1, r0
	str r1, [sp, #0x050]
	movs r2, #0x89
	lsls r2, r2, #0x02
	adds r0, r7, r2
	str r6, [r0, #0x00]
	ldr r3, [sp, #0x074]
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	movs r0, #0x01
	orrs r1, r0
	lsls r1, r1, #0x03
	subs r0, #0x7A
	b _080444D2
	.byte 0x00, 0x00
_0804409C: .4byte 0xFFFFFF00
_080440A0:
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrb r2, [r0, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	bne _080440B2
	b _08044546
_080440B2:
	movs r4, #0x00
	ldr r1, [r6, #0x00]
	lsls r0, r1, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	adds r3, r1, #0x0
	cmp r0, #0x02
	bhi _080440EC
	ldr r1, _080440E4 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080440E8
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _080440E8
	ldr r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	str r0, [sp, #0x010]
	b _08044102
_080440E4: .4byte 0x0000020D
_080440E8:
	lsls r1, r3, #0x01
	b _080440EE
_080440EC:
	lsls r1, r1, #0x01
_080440EE:
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08044102
	movs r4, #0x80
	lsls r4, r4, #0x05
_08044102:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _0804410A
	b _08044546
_0804410A:
	ldr r3, [sp, #0x028]
	cmp r1, r3
	blt _08044112
	b _08044546
_08044112:
	ldr r0, [sp, #0x010]
	subs r0, r0, r4
	cmp r0, r5
	bgt _0804411C
	b _08044546
_0804411C:
	ldr r4, [sp, #0x040]
	cmp r1, r4
	blt _08044124
	b _08044546
_08044124:
	ldr r5, [sp, #0x03C]
	cmp r0, r5
	bgt _0804412C
	b _08044546
_0804412C:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x0C
	ldr r1, [sp, #0x034]
	cmp r0, r1
	bgt _0804413A
	b _08044546
_0804413A:
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r3, _0804416C @ =0xFFFFFF00
	adds r0, r0, r3
	ldrh r1, [r1, #0x00]
	adds r1, r1, r0
	mov r10, r1
	movs r0, #0x02
	ldr r4, [sp, #0x050]
	orrs r4, r0
	str r4, [sp, #0x050]
	movs r5, #0x89
	lsls r5, r5, #0x02
	adds r0, r7, r5
	str r6, [r0, #0x00]
	ldr r6, [sp, #0x074]
	ldrb r2, [r6, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	movs r0, #0x01
	orrs r1, r0
	lsls r1, r1, #0x03
	subs r0, #0x7A
	b _08044540
_0804416C: .4byte 0xFFFFFF00
_08044170:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _0804417A
	ldr r1, _080441F0 @ =0x00000FFF
	adds r0, r0, r1
_0804417A:
	asrs r3, r0, #0x0C
	subs r1, r3, #0x1
	ldr r2, [sp, #0x024]
	ldr r4, _080441F4 @ =0xFFFFFF00
	adds r0, r2, r4
	cmp r0, #0x00
	bge _0804418C
	ldr r5, _080441F8 @ =0x00000EFF
	adds r0, r2, r5
_0804418C:
	asrs r0, r0, #0x0C
	adds r2, r0, #0x1
	lsls r0, r3, #0x0C
	ldr r6, [sp, #0x02C]
	cmp r0, r6
	bgt _0804419A
	b _08044546
_0804419A:
	lsls r4, r2, #0x0C
	ldr r0, [sp, #0x038]
	cmp r4, r0
	blt _080441A4
	b _08044546
_080441A4:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	add r3, sp, #0x008
	bl sub_80457E8__11FieldObjectiiPiN23
	adds r6, r0, #0x0
	movs r1, #0x00
	mov r8, r1
	ldr r1, [r6, #0x00]
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804421C
	ldr r2, _080441FC @ =0x0000020D
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08044200
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08044200
	ldr r0, [sp, #0x008]
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r0, r0, r5
	str r0, [sp, #0x008]
	b _08044234
	.byte 0x00, 0x00
_080441F0: .4byte 0x00000FFF
_080441F4: .4byte 0xFFFFFF00
_080441F8: .4byte 0x00000EFF
_080441FC: .4byte 0x0000020D
_08044200:
	ldr r1, [r6, #0x00]
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08044234
	movs r0, #0x80
	lsls r0, r0, #0x05
	mov r8, r0
	b _08044234
_0804421C:
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08044234
	movs r1, #0x80
	lsls r1, r1, #0x05
	mov r8, r1
_08044234:
	ldr r0, [sp, #0x008]
	mov r2, r8
	subs r0, r0, r2
	ldr r5, [r7, #0x3C]
	cmp r0, r5
	ble _0804424E
	ldr r3, [sp, #0x03C]
	cmp r0, r3
	ble _0804424E
	ldr r0, [sp, #0x038]
	cmp r4, r0
	bge _0804424E
	b _0804436C
_0804424E:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	bne _08044260
	b _08044546
_08044260:
	movs r3, #0x00
	mov r8, r3
	ldr r1, [r6, #0x00]
	lsls r0, r1, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	adds r3, r1, #0x0
	cmp r0, #0x02
	bls _08044274
	b _080444DA
_08044274:
	ldr r1, _08044290 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08044284
	b _080443EC
_08044284:
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _0804428E
	b _080443DC
_0804428E:
	b _080443EC
_08044290: .4byte 0x0000020D
_08044294:
	ldr r2, _08044314 @ =0xFFFFFF00
	ldr r1, [sp, #0x01C]
	adds r0, r1, r2
	cmp r0, #0x00
	bge _080442A2
	ldr r3, _08044318 @ =0x00000EFF
	adds r0, r1, r3
_080442A2:
	asrs r0, r0, #0x0C
	adds r1, r0, #0x1
	ldr r4, [sp, #0x024]
	adds r0, r4, r2
	cmp r0, #0x00
	bge _080442B2
	ldr r5, _08044318 @ =0x00000EFF
	adds r0, r4, r5
_080442B2:
	asrs r0, r0, #0x0C
	adds r2, r0, #0x1
	lsls r0, r1, #0x0C
	ldr r6, [sp, #0x030]
	cmp r0, r6
	blt _080442C0
	b _08044546
_080442C0:
	lsls r4, r2, #0x0C
	ldr r0, [sp, #0x038]
	cmp r4, r0
	blt _080442CA
	b _08044546
_080442CA:
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	add r3, sp, #0x008
	bl sub_80457E8__11FieldObjectiiPiN23
	adds r6, r0, #0x0
	movs r1, #0x00
	mov r8, r1
	ldr r1, [r6, #0x00]
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x03
	bls _0804433C
	ldr r2, _0804431C @ =0x0000020D
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08044320
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08044320
	ldr r0, [sp, #0x008]
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r0, r0, r5
	str r0, [sp, #0x008]
	b _08044354
_08044314: .4byte 0xFFFFFF00
_08044318: .4byte 0x00000EFF
_0804431C: .4byte 0x0000020D
_08044320:
	ldr r1, [r6, #0x00]
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08044354
	movs r0, #0x80
	lsls r0, r0, #0x05
	mov r8, r0
	b _08044354
_0804433C:
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08044354
	movs r1, #0x80
	lsls r1, r1, #0x05
	mov r8, r1
_08044354:
	ldr r0, [sp, #0x008]
	mov r2, r8
	subs r0, r0, r2
	ldr r5, [r7, #0x3C]
	cmp r0, r5
	ble _080443A0
	ldr r3, [sp, #0x03C]
	cmp r0, r3
	ble _080443A0
	ldr r0, [sp, #0x038]
	cmp r4, r0
	bge _080443A0
_0804436C:
	ldr r1, _0804439C @ =0xFFFFFF00
	adds r1, r1, r4
	mov r10, r1
	movs r0, #0x02
	ldr r2, [sp, #0x050]
	orrs r2, r0
	str r2, [sp, #0x050]
	movs r3, #0x89
	lsls r3, r3, #0x02
	adds r0, r7, r3
	str r6, [r0, #0x00]
	ldr r4, [sp, #0x074]
	ldrb r2, [r4, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	movs r0, #0x04
	orrs r1, r0
	lsls r1, r1, #0x03
	subs r0, #0x7D
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	b _08044546
	.byte 0x00, 0x00
_0804439C: .4byte 0xFFFFFF00
_080443A0:
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	bne _080443B2
	b _08044546
_080443B2:
	movs r3, #0x00
	mov r8, r3
	ldr r1, [r6, #0x00]
	lsls r0, r1, #0x0C
	lsrs r0, r0, #0x1C
	subs r0, #0x04
	adds r3, r1, #0x0
	cmp r0, #0x02
	bls _080443C6
	b _080444DA
_080443C6:
	ldr r1, _080443E8 @ =0x0000020D
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080443EC
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _080443EC
_080443DC:
	ldr r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	str r0, [sp, #0x010]
	b _080444F2
_080443E8: .4byte 0x0000020D
_080443EC:
	lsls r1, r3, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _080444F2
	movs r3, #0x80
	lsls r3, r3, #0x05
	mov r8, r3
	b _080444F2
_08044406:
	movs r4, #0x9F
	lsls r4, r4, #0x02
	adds r1, r7, r4
	ldr r5, _0804443C @ =0xFFFFFF00
	adds r0, r0, r5
	ldrh r1, [r1, #0x00]
	adds r1, r1, r0
	mov r10, r1
	movs r0, #0x02
	ldr r6, [sp, #0x050]
	orrs r6, r0
	str r6, [sp, #0x050]
	movs r1, #0x89
	lsls r1, r1, #0x02
	adds r0, r7, r1
	mov r2, r12
	str r2, [r0, #0x00]
	ldr r3, [sp, #0x074]
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	movs r0, #0x01
	orrs r1, r0
	lsls r1, r1, #0x03
	subs r0, #0x7A
	b _080444D2
	.byte 0x00, 0x00
_0804443C: .4byte 0xFFFFFF00
_08044440:
	ldr r4, _0804446C @ =0xFFFFFF00
	adds r4, r4, r0
	mov r10, r4
	movs r0, #0x02
	ldr r5, [sp, #0x050]
	orrs r5, r0
	str r5, [sp, #0x050]
	movs r6, #0x89
	lsls r6, r6, #0x02
	adds r0, r7, r6
	mov r1, r12
	str r1, [r0, #0x00]
	ldr r3, [sp, #0x074]
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	movs r0, #0x04
	orrs r1, r0
	lsls r1, r1, #0x03
	subs r0, #0x7D
	b _080444D2
	.byte 0x00, 0x00
_0804446C: .4byte 0xFFFFFF00
_08044470:
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	str r1, [sp, #0x04C]
	movs r0, #0x01
	ldr r5, [sp, #0x050]
	orrs r5, r0
	str r5, [sp, #0x050]
	movs r6, #0x89
	lsls r6, r6, #0x02
	adds r0, r7, r6
	mov r1, r12
	str r1, [r0, #0x00]
	ldr r3, [sp, #0x074]
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	movs r0, #0x08
	orrs r1, r0
	lsls r1, r1, #0x03
	subs r0, #0x81
	b _080444D2
_080444A2:
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	str r1, [sp, #0x04C]
	movs r0, #0x01
	ldr r5, [sp, #0x050]
	orrs r5, r0
	str r5, [sp, #0x050]
	movs r6, #0x89
	lsls r6, r6, #0x02
	adds r0, r7, r6
	mov r1, r12
	str r1, [r0, #0x00]
	ldr r3, [sp, #0x074]
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	movs r0, #0x02
	orrs r1, r0
	lsls r1, r1, #0x03
	subs r0, #0x7B
_080444D2:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _08044546
_080444DA:
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	ands r0, r1
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _080444F2
	movs r0, #0x80
	lsls r0, r0, #0x05
	mov r8, r0
_080444F2:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	blt _08044546
	ldr r2, [sp, #0x028]
	cmp r1, r2
	bge _08044546
	ldr r0, [sp, #0x010]
	mov r3, r8
	subs r0, r0, r3
	cmp r0, r5
	ble _08044546
	ldr r5, [sp, #0x040]
	cmp r1, r5
	bge _08044546
	ldr r1, [sp, #0x03C]
	cmp r0, r1
	ble _08044546
	ldr r2, [sp, #0x038]
	cmp r4, r2
	bge _08044546
	ldr r3, _08044624 @ =0xFFFFFF00
	adds r3, r3, r4
	mov r10, r3
	movs r0, #0x02
	ldr r4, [sp, #0x050]
	orrs r4, r0
	str r4, [sp, #0x050]
	movs r5, #0x89
	lsls r5, r5, #0x02
	adds r0, r7, r5
	str r6, [r0, #0x00]
	ldr r6, [sp, #0x074]
	ldrb r2, [r6, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	movs r0, #0x04
	orrs r1, r0
	lsls r1, r1, #0x03
	subs r0, #0x7D
_08044540:
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x00]
_08044546:
	movs r0, #0x01
	ldr r1, [sp, #0x050]
	ands r0, r1
	cmp r0, #0x00
	beq _08044566
	ldr r2, [sp, #0x04C]
	str r2, [r7, #0x0C]
	movs r3, #0x9E
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrh r1, [r0, #0x00]
	lsrs r0, r1, #0x01
	subs r0, r2, r0
	str r0, [sp, #0x02C]
	adds r1, r0, r1
	str r1, [sp, #0x030]
_08044566:
	movs r0, #0x02
	ldr r4, [sp, #0x050]
	ands r4, r0
	cmp r4, #0x00
	beq _0804458A
	mov r5, r10
	str r5, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x01
	add r1, r10
	movs r6, #0x9F
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [sp, #0x034]
	adds r0, r1, r0
	str r0, [sp, #0x038]
_0804458A:
	ldr r0, [sp, #0x048]
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _080445CC
	ldr r1, [r7, #0x0C]
	str r1, [sp, #0x04C]
	ldr r2, [r7, #0x10]
	mov r10, r2
	movs r3, #0x00
	str r3, [sp, #0x050]
	ldr r4, [sp, #0x048]
	movs r2, #0x00
	ldsb r2, [r4, r2]
	adds r4, #0x01
	str r4, [sp, #0x048]
	cmp r2, #0x03
	bgt _080445B6
	bl _08042178
_080445B6:
	ldr r5, [sp, #0x044]
	cmp r5, #0x00
	beq _080445CC
	ldr r6, [sp, #0x074]
	ldrb r1, [r6, #0x00]
_080445C0:
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	bne _080445CC
	bl _08042178
_080445CC:
	ldr r0, [sp, #0x078]
	str r0, [sp, #0x044]
	cmp r0, #0x01
	bgt _080445D8
	bl _08042130
_080445D8:
	adds r0, r7, #0x0
	adds r0, #0x25
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	beq _08044608
	ldr r1, _08044628 @ =0x000002B5
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _08044608
	ldr r2, _0804462C @ =0x000002B6
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08044608
	adds r0, r7, #0x0
	bl sub_8046980__11FieldObject
_08044608:
	adds r0, r7, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	add sp, #0x07C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08044624: .4byte 0xFFFFFF00
_08044628: .4byte 0x000002B5
_0804462C: .4byte 0x000002B6
	
