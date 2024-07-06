	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8018E24
sub_8018E24:
	push {r4, lr}
	ldr r4, _08018E74 @ =0x0300034C
	movs r1, #0x89
	lsls r1, r1, #0x04
	adds r0, r4, r1
	movs r1, #0xFF
	lsls r1, r1, #0x08
	strh r1, [r0, #0x00]
	ldr r2, _08018E78 @ =0x0000089C
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r1, _08018E7C @ =0x000008A4
	adds r0, r4, r1
	movs r1, #0x96
	lsls r1, r1, #0x07
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	bl sub_819A43C
	ldr r0, _08018E80 @ =0x02000480
	bl sub_819AFA8
	ldr r0, _08018E84 @ =0x0000088C
	adds r4, r4, r0
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r0, #0x00
	movs r1, #0x64
	bl sub_8018E88
	pop {r4}
	pop {r0}
	bx r0
_08018E74: .4byte 0x0300034C
_08018E78: .4byte 0x0000089C
_08018E7C: .4byte 0x000008A4
_08018E80: .4byte 0x02000480
_08018E84: .4byte 0x0000088C
	thumb_func_start sub_8018E88
sub_8018E88:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	ldr r0, _08018F90 @ =0x0300034C
	ldr r1, _08018F94 @ =0x0000088C
	adds r1, r1, r0
	mov r8, r1
	ldrb r5, [r1, #0x00]
	lsls r0, r5, #0x1D
	lsrs r0, r0, #0x1E
	cmp r6, r0
	bne _08018EBA
	cmp r6, #0x01
	bne _08018F76
	movs r0, #0x06
	ands r0, r5
	cmp r0, #0x02
	bne _08018F76
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x19
	cmp r7, r0
	beq _08018F76
_08018EBA:
	ldr r1, _08018F98 @ =0x040000BC
	ldrh r2, [r1, #0x0A]
	ldr r3, _08018F9C @ =0x0000C5FF
	adds r0, r3, #0x0
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r4, [r1, #0x0A]
	ldr r2, _08018FA0 @ =0x00007FFF
	adds r0, r2, #0x0
	ands r0, r4
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
	ldr r0, _08018FA4 @ =0x040000C8
	ldrh r1, [r0, #0x0A]
	ands r3, r1
	strh r3, [r0, #0x0A]
	ldrh r1, [r0, #0x0A]
	ands r2, r1
	strh r2, [r0, #0x0A]
	ldrh r0, [r0, #0x0A]
	movs r0, #0x06
	ands r0, r5
	cmp r0, #0x02
	bne _08018F12
	ldr r3, _08018FA8 @ =0x04000208
	movs r0, #0x00
	strh r0, [r3, #0x00]
	ldr r2, _08018FAC @ =0x02000004
	ldrh r1, [r2, #0x00]
	ldr r0, _08018FB0 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _08018FB4 @ =0x04000200
	ldrh r1, [r2, #0x00]
	ldr r0, _08018FB8 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldrh r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
_08018F12:
	movs r0, #0x03
	adds r1, r6, #0x0
	ands r1, r0
	lsls r1, r1, #0x01
	movs r0, #0x07
	negs r0, r0
	ands r0, r5
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #0x00]
	cmp r6, #0x01
	bne _08018F76
	ldr r1, _08018FBC @ =0x080196BD
	movs r0, #0x03
	bl sub_8018B78
	ldr r3, _08018FA8 @ =0x04000208
	movs r0, #0x00
	strh r0, [r3, #0x00]
	ldr r2, _08018FAC @ =0x02000004
	ldrh r1, [r2, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r7, #0x08
	movs r1, #0x20
	orrs r0, r1
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08018FB4 @ =0x04000200
	ldrh r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	orrs r0, r2
	strh r0, [r1, #0x00]
	strh r6, [r3, #0x00]
	movs r0, #0x7F
	ands r7, r0
	lsls r2, r7, #0x03
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _08018FC0 @ =0xFFFFFC07
	ands r0, r1
	orrs r0, r2
	mov r1, r8
	strh r0, [r1, #0x00]
_08018F76:
	ldr r0, _08018F90 @ =0x0300034C
	ldr r1, _08018F94 @ =0x0000088C
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08018F90: .4byte 0x0300034C
_08018F94: .4byte 0x0000088C
_08018F98: .4byte 0x040000BC
_08018F9C: .4byte 0x0000C5FF
_08018FA0: .4byte 0x00007FFF
_08018FA4: .4byte 0x040000C8
_08018FA8: .4byte 0x04000208
_08018FAC: .4byte 0x02000004
_08018FB0: .4byte 0x0000FFDF
_08018FB4: .4byte 0x04000200
_08018FB8: .4byte 0x0000FFFB
_08018FBC: .4byte sub_80196BC
_08018FC0: .4byte 0xFFFFFC07
	thumb_func_start sub_8018FC4
sub_8018FC4:
	push {r4, r5, r6, lr}
	ldr r4, _08019008 @ =0x0300034C
	ldr r1, _0801900C @ =0x0000088D
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0801905A
	ldr r1, _08019010 @ =0x00000896
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r6, [r0, r1]
	ldr r1, _08019014 @ =0x00000894
	adds r0, r4, r1
	ldrh r3, [r0, #0x00]
	subs r1, #0x02
	adds r0, r4, r1
	ldrb r2, [r0, #0x00]
	movs r0, #0x89
	lsls r0, r0, #0x04
	adds r5, r4, r0
	adds r0, #0x03
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bne _08019018
	strh r3, [r5, #0x00]
	movs r4, #0x00
	b _08019036
_08019008: .4byte 0x0300034C
_0801900C: .4byte 0x0000088D
_08019010: .4byte 0x00000896
_08019014: .4byte 0x00000894
_08019018:
	ldrh r1, [r5, #0x00]
	adds r0, r6, #0x0
	adds r1, r1, r0
	cmp r0, #0x00
	ble _08019028
	cmp r1, r3
	ble _08019032
	b _08019030
_08019028:
	cmp r0, #0x00
	bge _08019032
	cmp r1, r3
	bge _08019032
_08019030:
	adds r1, r3, #0x0
_08019032:
	strh r1, [r5, #0x00]
	movs r4, #0x01
_08019036:
	ldr r1, _0801909C @ =0x0300034C
	ldr r0, _080190A0 @ =0x0000088D
	adds r3, r1, r0
	lsls r4, r4, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3, #0x00]
	movs r0, #0x89
	lsls r0, r0, #0x04
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x08
	movs r0, #0x00
	bl sub_819B9B4
_0801905A:
	ldr r4, _0801909C @ =0x0300034C
	ldr r1, _080190A0 @ =0x0000088D
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0801910C
	movs r1, #0x8B
	lsls r1, r1, #0x04
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r6, [r0, r1]
	ldr r1, _080190A4 @ =0x000008AC
	adds r0, r4, r1
	ldrh r3, [r0, #0x00]
	subs r1, #0x04
	adds r0, r4, r1
	ldrb r2, [r0, #0x00]
	ldr r0, _080190A8 @ =0x0000089C
	adds r5, r4, r0
	adds r0, #0x0E
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bne _080190AC
	strh r3, [r5, #0x00]
	movs r2, #0x00
	b _080190CA
_0801909C: .4byte 0x0300034C
_080190A0: .4byte 0x0000088D
_080190A4: .4byte 0x000008AC
_080190A8: .4byte 0x0000089C
_080190AC:
	ldrh r1, [r5, #0x00]
	adds r0, r6, #0x0
	adds r1, r1, r0
	cmp r0, #0x00
	ble _080190BC
	cmp r1, r3
	ble _080190C6
	b _080190C4
_080190BC:
	cmp r0, #0x00
	bge _080190C6
	cmp r1, r3
	bge _080190C6
_080190C4:
	adds r1, r3, #0x0
_080190C6:
	strh r1, [r5, #0x00]
	movs r2, #0x01
_080190CA:
	ldr r4, _0801914C @ =0x0300034C
	ldr r1, _08019150 @ =0x0000088D
	adds r5, r4, r1
	lsls r2, r2, #0x03
	ldrb r1, [r5, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x00]
	ldr r0, _08019154 @ =0x0000089C
	adds r6, r4, r0
	ldrh r1, [r6, #0x00]
	lsrs r1, r1, #0x08
	movs r0, #0x01
	bl sub_819B9B4
	ldrh r6, [r6, #0x00]
	movs r1, #0x8A
	lsls r1, r1, #0x04
	adds r4, r4, r1
	strh r6, [r4, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0801910C
	lsls r0, r6, #0x10
	cmp r0, #0x00
	bne _0801910C
	movs r0, #0x00
	bl sub_8019628
_0801910C:
	ldr r4, _0801914C @ =0x0300034C
	ldr r1, _08019150 @ =0x0000088D
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080191C2
	ldr r1, _08019158 @ =0x000008B2
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r6, [r0, r1]
	ldr r1, _0801915C @ =0x000008AE
	adds r0, r4, r1
	ldrh r3, [r0, #0x00]
	subs r1, #0x05
	adds r0, r4, r1
	ldrb r2, [r0, #0x00]
	ldr r0, _08019160 @ =0x0000089E
	adds r5, r4, r0
	adds r0, #0x0D
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bne _08019164
	strh r3, [r5, #0x00]
	movs r2, #0x00
	b _08019182
_0801914C: .4byte 0x0300034C
_08019150: .4byte 0x0000088D
_08019154: .4byte 0x0000089C
_08019158: .4byte 0x000008B2
_0801915C: .4byte 0x000008AE
_08019160: .4byte 0x0000089E
_08019164:
	ldrh r1, [r5, #0x00]
	adds r0, r6, #0x0
	adds r1, r1, r0
	cmp r0, #0x00
	ble _08019174
	cmp r1, r3
	ble _0801917E
	b _0801917C
_08019174:
	cmp r0, #0x00
	bge _0801917E
	cmp r1, r3
	bge _0801917E
_0801917C:
	adds r1, r3, #0x0
_0801917E:
	strh r1, [r5, #0x00]
	movs r2, #0x01
_08019182:
	ldr r4, _08019204 @ =0x0300034C
	ldr r1, _08019208 @ =0x0000088D
	adds r5, r4, r1
	lsls r2, r2, #0x04
	ldrb r1, [r5, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x00]
	ldr r0, _0801920C @ =0x0000089E
	adds r6, r4, r0
	ldrh r1, [r6, #0x00]
	lsrs r1, r1, #0x08
	movs r0, #0x02
	bl sub_819B9B4
	ldrh r6, [r6, #0x00]
	ldr r1, _08019210 @ =0x000008A2
	adds r4, r4, r1
	strh r6, [r4, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _080191C2
	lsls r0, r6, #0x10
	cmp r0, #0x00
	bne _080191C2
	movs r0, #0x01
	bl sub_8019628
_080191C2:
	ldr r4, _08019204 @ =0x0300034C
	ldr r1, _08019208 @ =0x0000088D
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08019260
	ldr r1, _08019214 @ =0x000008BC
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r6, [r0, r1]
	ldr r1, _08019218 @ =0x000008B8
	adds r0, r4, r1
	ldrh r3, [r0, #0x00]
	subs r1, #0x04
	adds r0, r4, r1
	ldrb r2, [r0, #0x00]
	ldr r0, _0801921C @ =0x000008A4
	adds r5, r4, r0
	adds r0, #0x12
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bne _08019220
	strh r3, [r5, #0x00]
	movs r4, #0x00
	b _0801923E
	.byte 0x00, 0x00
_08019204: .4byte 0x0300034C
_08019208: .4byte 0x0000088D
_0801920C: .4byte 0x0000089E
_08019210: .4byte 0x000008A2
_08019214: .4byte 0x000008BC
_08019218: .4byte 0x000008B8
_0801921C: .4byte 0x000008A4
_08019220:
	ldrh r1, [r5, #0x00]
	adds r0, r6, #0x0
	adds r1, r1, r0
	cmp r0, #0x00
	ble _08019230
	cmp r1, r3
	ble _0801923A
	b _08019238
_08019230:
	cmp r0, #0x00
	bge _0801923A
	cmp r1, r3
	bge _0801923A
_08019238:
	adds r1, r3, #0x0
_0801923A:
	strh r1, [r5, #0x00]
	movs r4, #0x01
_0801923E:
	ldr r1, _080192A4 @ =0x0300034C
	ldr r0, _080192A8 @ =0x0000088D
	adds r3, r1, r0
	lsls r4, r4, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3, #0x00]
	ldr r0, _080192AC @ =0x000008A4
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x08
	movs r0, #0x01
	bl sub_819BA10
_08019260:
	ldr r2, _080192A4 @ =0x0300034C
	ldr r1, _080192A8 @ =0x0000088D
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080192FA
	ldr r1, _080192B0 @ =0x000008BE
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r6, [r0, r1]
	ldr r1, _080192B4 @ =0x000008BA
	adds r0, r4, r1
	ldrh r3, [r0, #0x00]
	subs r1, #0x05
	adds r0, r4, r1
	ldrb r2, [r0, #0x00]
	ldr r0, _080192B8 @ =0x000008A6
	adds r5, r4, r0
	adds r0, #0x11
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bne _080192BC
	strh r3, [r5, #0x00]
	movs r3, #0x00
	b _080192DA
	.byte 0x00, 0x00
_080192A4: .4byte 0x0300034C
_080192A8: .4byte 0x0000088D
_080192AC: .4byte 0x000008A4
_080192B0: .4byte 0x000008BE
_080192B4: .4byte 0x000008BA
_080192B8: .4byte 0x000008A6
_080192BC:
	ldrh r1, [r5, #0x00]
	adds r0, r6, #0x0
	adds r1, r1, r0
	cmp r0, #0x00
	ble _080192CC
	cmp r1, r3
	ble _080192D6
	b _080192D4
_080192CC:
	cmp r0, #0x00
	bge _080192D6
	cmp r1, r3
	bge _080192D6
_080192D4:
	adds r1, r3, #0x0
_080192D6:
	strh r1, [r5, #0x00]
	movs r3, #0x01
_080192DA:
	ldr r1, _08019300 @ =0x0000088D
	adds r2, r4, r1
	lsls r3, r3, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r1, _08019304 @ =0x000008A6
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x08
	movs r0, #0x02
	bl sub_819BA10
_080192FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08019300: .4byte 0x0000088D
_08019304: .4byte 0x000008A6
	thumb_func_start sub_8019308
sub_8019308:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	cmp r6, #0x00
	bne _0801931C
	bl sub_8019628
	lsls r5, r4, #0x01
	b _08019396
_0801931C:
	adds r0, r4, #0x0
	bl sub_80195F8
	lsls r0, r0, #0x18
	lsls r5, r4, #0x01
	cmp r0, #0x00
	beq _08019338
	ldr r0, _08019364 @ =0x0300034C
	ldr r1, _08019368 @ =0x00000898
	adds r0, r0, r1
	adds r0, r5, r0
	ldrh r0, [r0, #0x00]
	cmp r0, r6
	beq _08019396
_08019338:
	adds r0, r4, #0x1
	adds r1, r6, #0x0
	bl sub_819B970
	movs r0, #0x01
	negs r0, r0
	cmp r7, r0
	bne _0801937C
	ldr r2, _08019364 @ =0x0300034C
	movs r3, #0x8A
	lsls r3, r3, #0x04
	adds r0, r2, r3
	adds r0, r5, r0
	ldrh r1, [r0, #0x00]
	cmp r1, #0x00
	bne _0801936C
	adds r0, r4, #0x0
	movs r1, #0xFF
	movs r2, #0x00
	bl sub_80193B4
	b _08019388
_08019364: .4byte 0x0300034C
_08019368: .4byte 0x00000898
_0801936C:
	ldr r3, _08019378 @ =0x0000089C
	adds r0, r2, r3
	adds r0, r5, r0
	strh r1, [r0, #0x00]
	b _08019388
	.byte 0x00, 0x00
_08019378: .4byte 0x0000089C
_0801937C:
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_80193B4
_08019388:
	ldr r0, _080193A8 @ =0x0300034C
	ldr r1, _080193AC @ =0x000008A4
	adds r0, r0, r1
	adds r0, r5, r0
	movs r1, #0x96
	lsls r1, r1, #0x07
	strh r1, [r0, #0x00]
_08019396:
	ldr r0, _080193A8 @ =0x0300034C
	ldr r3, _080193B0 @ =0x00000898
	adds r0, r0, r3
	adds r0, r5, r0
	strh r6, [r0, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080193A8: .4byte 0x0300034C
_080193AC: .4byte 0x000008A4
_080193B0: .4byte 0x00000898
	thumb_func_start sub_80193B4
sub_80193B4:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	cmp r6, #0x00
	bne _080193EC
	ldr r0, _080193E4 @ =0x0300034C
	lsls r1, r7, #0x01
	ldr r4, _080193E8 @ =0x0000089C
	adds r2, r0, r4
	adds r2, r1, r2
	adds r4, #0x04
	adds r0, r0, r4
	adds r1, r1, r0
	lsls r0, r3, #0x08
	strh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	adds r0, r7, #0x1
	adds r1, r3, #0x0
	bl sub_819B9B4
	b _08019454
_080193E4: .4byte 0x0300034C
_080193E8: .4byte 0x0000089C
_080193EC:
	lsls r0, r3, #0x08
	ldr r5, _08019434 @ =0x0300034C
	lsls r2, r7, #0x01
	ldr r3, _08019438 @ =0x000008AC
	adds r1, r5, r3
	adds r1, r2, r1
	movs r3, #0x00
	strh r0, [r1, #0x00]
	ldr r4, _0801943C @ =0x000008A8
	adds r1, r5, r4
	adds r1, r7, r1
	strb r6, [r1, #0x00]
	adds r4, #0x02
	adds r1, r5, r4
	adds r1, r7, r1
	strb r3, [r1, #0x00]
	movs r1, #0x8B
	lsls r1, r1, #0x04
	adds r4, r5, r1
	adds r4, r2, r4
	ldr r3, _08019440 @ =0x0000089C
	adds r1, r5, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x00]
	subs r0, r0, r1
	adds r1, r6, #0x0
	bl __divsi3
	strh r0, [r4, #0x00]
	cmp r7, #0x00
	bne _08019448
	ldr r4, _08019444 @ =0x0000088D
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r2, #0x08
	b _08019450
_08019434: .4byte 0x0300034C
_08019438: .4byte 0x000008AC
_0801943C: .4byte 0x000008A8
_08019440: .4byte 0x0000089C
_08019444: .4byte 0x0000088D
_08019448:
	ldr r1, _0801945C @ =0x0000088D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x10
_08019450:
	orrs r1, r2
	strb r1, [r0, #0x00]
_08019454:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801945C: .4byte 0x0000088D
	thumb_func_start sub_8019460
sub_8019460:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	cmp r7, #0x00
	bne _08019490
	ldr r0, _08019488 @ =0x0300034C
	lsls r1, r6, #0x01
	ldr r2, _0801948C @ =0x000008A4
	adds r0, r0, r2
	adds r1, r1, r0
	lsls r0, r3, #0x08
	strh r0, [r1, #0x00]
	adds r0, r6, #0x1
	adds r1, r3, #0x0
	bl sub_819BA10
	b _080194FC
_08019488: .4byte 0x0300034C
_0801948C: .4byte 0x000008A4
_08019490:
	lsls r0, r3, #0x08
	ldr r5, _080194D8 @ =0x0300034C
	lsls r2, r6, #0x01
	ldr r3, _080194DC @ =0x000008B8
	adds r1, r5, r3
	adds r1, r2, r1
	movs r3, #0x00
	strh r0, [r1, #0x00]
	ldr r4, _080194E0 @ =0x000008B4
	adds r1, r5, r4
	adds r1, r6, r1
	strb r7, [r1, #0x00]
	adds r4, #0x02
	adds r1, r5, r4
	adds r1, r6, r1
	strb r3, [r1, #0x00]
	ldr r1, _080194E4 @ =0x000008BC
	adds r4, r5, r1
	adds r4, r2, r4
	ldr r3, _080194E8 @ =0x000008A4
	adds r1, r5, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x00]
	lsls r1, r1, #0x08
	subs r0, r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	strh r0, [r4, #0x00]
	cmp r6, #0x00
	bne _080194F0
	ldr r4, _080194EC @ =0x0000088D
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r2, #0x20
	b _080194F8
_080194D8: .4byte 0x0300034C
_080194DC: .4byte 0x000008B8
_080194E0: .4byte 0x000008B4
_080194E4: .4byte 0x000008BC
_080194E8: .4byte 0x000008A4
_080194EC: .4byte 0x0000088D
_080194F0:
	ldr r1, _08019504 @ =0x0000088D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x40
_080194F8:
	orrs r1, r2
	strb r1, [r0, #0x00]
_080194FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08019504: .4byte 0x0000088D
	thumb_func_start sub_8019508
sub_8019508:
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	cmp r5, #0x00
	bne _08019530
	ldr r0, _0801952C @ =0x0300034C
	lsls r1, r2, #0x08
	movs r3, #0x89
	lsls r3, r3, #0x04
	adds r0, r0, r3
	strh r1, [r0, #0x00]
	movs r0, #0x00
	adds r1, r2, #0x0
	bl sub_819B9B4
	b _0801956C
_0801952C: .4byte 0x0300034C
_08019530:
	lsls r0, r2, #0x08
	ldr r4, _08019574 @ =0x0300034C
	ldr r2, _08019578 @ =0x00000894
	adds r1, r4, r2
	movs r2, #0x00
	strh r0, [r1, #0x00]
	ldr r3, _0801957C @ =0x00000892
	adds r1, r4, r3
	strb r5, [r1, #0x00]
	adds r3, #0x01
	adds r1, r4, r3
	strb r2, [r1, #0x00]
	ldr r1, _08019580 @ =0x0000088D
	adds r3, r4, r1
	ldrb r1, [r3, #0x00]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r3, #0x00]
	movs r2, #0x89
	lsls r2, r2, #0x04
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x08
	subs r0, r0, r1
	adds r1, r5, #0x0
	bl __divsi3
	ldr r3, _08019584 @ =0x00000896
	adds r4, r4, r3
	strh r0, [r4, #0x00]
_0801956C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08019574: .4byte 0x0300034C
_08019578: .4byte 0x00000894
_0801957C: .4byte 0x00000892
_08019580: .4byte 0x0000088D
_08019584: .4byte 0x00000896
	thumb_func_start sub_8019588
sub_8019588:
	push {lr}
	bl sub_819BABC
	adds r1, r0, #0x0
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start stop_all_sfx_801959C
stop_all_sfx_801959C: @ 0801959C
	push {lr}
	bl sub_819BA00
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start stop_sfx_80195A8
stop_sfx_80195A8: @ 080195A8
	push {lr}
	bl sub_819B9E8
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start play_sfx_80195B4
play_sfx_80195B4: @ 080195B4
	push {r4, lr}
	adds r4, r1, #0x0
	bl sub_819B9D0
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _080195D2
	ldr r0, _080195F4 @ =0x0300034C
	movs r1, #0x89
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080195EC
_080195D2:
	ldr r0, _080195F4 @ =0x0300034C
	movs r1, #0x89
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080195E2
	movs r4, #0xFF
_080195E2:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x00
	bl sub_8019508
_080195EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080195F4: .4byte 0x0300034C
	thumb_func_start sub_80195F8
sub_80195F8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_819BA2C
	adds r1, r0, #0x0
	adds r4, #0x01
	asrs r1, r4
	movs r0, #0x01
	ands r0, r1
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_8019610
sub_8019610:
	ldr r1, _08019620 @ =0x0300034C
	lsls r0, r0, #0x01
	ldr r2, _08019624 @ =0x00000898
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_08019620: .4byte 0x0300034C
_08019624: .4byte 0x00000898
	thumb_func_start sub_8019628
sub_8019628:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, r4, #0x1
	bl sub_819B984
	ldr r0, _08019648 @ =0x0300034C
	lsls r4, r4, #0x01
	ldr r1, _0801964C @ =0x0000089C
	adds r0, r0, r1
	adds r4, r4, r0
	movs r0, #0x00
	strh r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08019648: .4byte 0x0300034C
_0801964C: .4byte 0x0000089C
	thumb_func_start sub_8019650
sub_8019650:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	adds r0, r5, #0x1
	bl sub_819B99C
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _0801967E
	ldr r0, _08019690 @ =0x0300034C
	lsls r1, r5, #0x01
	movs r2, #0x8A
	lsls r2, r2, #0x04
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	lsrs r4, r0, #0x08
	cmp r4, #0x00
	bne _0801967E
	movs r4, #0xFF
_0801967E:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80193B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08019690: .4byte 0x0300034C
	thumb_func_start sub_8019694
sub_8019694:
	push {lr}
	ldr r0, _080196B4 @ =0x0300034C
	ldr r1, _080196B8 @ =0x0000088C
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080196AE
	bl sub_819B95C
	bl sub_819A600
_080196AE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080196B4: .4byte 0x0300034C
_080196B8: .4byte 0x0000088C
	thumb_func_start sub_80196BC
sub_80196BC:
	push {lr}
	ldr r0, _080196D8 @ =0x0300034C
	ldr r1, _080196DC @ =0x0000088C
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080196D2
	bl sub_819A5D2
_080196D2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080196D8: .4byte 0x0300034C
_080196DC: .4byte 0x0000088C
	thumb_func_start sub_80196E0
sub_80196E0:
	push {r4, lr}
	ldr r2, _08019730 @ =0x04000102
	ldrh r1, [r2, #0x00]
	ldr r0, _08019734 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08019738 @ =0x04000082
	movs r0, #0x88
	strh r0, [r1, #0x00]
	adds r1, #0x42
	ldr r0, [r1, #0x00]
	movs r4, #0x83
	lsls r4, r4, #0x17
	ands r0, r4
	ldr r3, _0801973C @ =0x84400004
	orrs r0, r3
	str r0, [r1, #0x00]
	nop
	nop
	nop
	nop
	ldr r0, [r1, #0x00]
	ldr r2, _08019740 @ =0x7FFFFFFF
	ands r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x0C
	ldr r0, [r1, #0x00]
	ands r0, r4
	orrs r0, r3
	str r0, [r1, #0x00]
	nop
	nop
	nop
	nop
	ldr r0, [r1, #0x00]
	ands r0, r2
	str r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08019730: .4byte 0x04000102
_08019734: .4byte 0x0000FF7F
_08019738: .4byte 0x04000082
_0801973C: .4byte 0x84400004
_08019740: .4byte 0x7FFFFFFF
	.byte 0x00, 0xB5, 0x00, 0x20, 0x82, 0xF1, 0x1C, 0xF9, 0x01, 0x20, 0x82, 0xF1, 0x19, 0xF9, 0x82, 0xF1
	.byte 0x55, 0xF9, 0xFF, 0xF7, 0xC3, 0xFF, 0x05, 0x48, 0x05, 0x49, 0x40, 0x18, 0x02, 0x78, 0x02, 0x21
	.byte 0x49, 0x42, 0x11, 0x40, 0x01, 0x70, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x4C, 0x03, 0x00, 0x03
	.byte 0x8C, 0x08, 0x00, 0x00, 0x00, 0xB5, 0x01, 0x1C, 0x80, 0x20, 0x40, 0x02, 0x09, 0x04, 0x09, 0x14
	.byte 0xC1, 0xF1, 0x8E, 0xF9, 0x00, 0x04, 0x00, 0x14, 0x02, 0xBC, 0x08, 0x47, 0x00, 0xB5, 0x00, 0x04
	.byte 0x00, 0x12, 0x09, 0x04, 0x09, 0x14, 0xC1, 0xF1, 0x83, 0xF9, 0x00, 0x04, 0x00, 0x14, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x00, 0x04, 0x00, 0x14, 0x09, 0x04, 0x09, 0x14, 0x48, 0x43
	.byte 0x01, 0x1C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x31, 0x08, 0x02, 0x00, 0x14, 0x02, 0xBC, 0x08, 0x47
	thumb_func_start sub_80197C4
sub_80197C4:
	push {lr}
	adds r3, r0, #0x0
	movs r2, #0x00
	movs r1, #0x01
_080197CC:
	adds r2, #0x01
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r1, r0, #0x01
	cmp r1, r3
	ble _080197CC
	adds r0, r2, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80197E0
sub_80197E0:
	ldr r1, _080197F8 @ =0x03000C28
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldr r1, _080197FC @ =0x03000C6C
	ldr r0, _08019800 @ =0x080000F4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r1, _08019804 @ =0x03000C78
	movs r0, #0x00
	str r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
_080197F8: .4byte 0x03000C28
_080197FC: .4byte 0x03000C6C
_08019800: .4byte 0x080000F4
_08019804: .4byte 0x03000C78
	thumb_func_start sub_8019808
sub_8019808:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08019858 @ =0x03000C78
	ldr r1, [r0, #0x00]
	ldr r0, _0801985C @ =0x0800063C
	cmp r1, r0
	bne _08019894
	ldr r0, [r4, #0x00]
	cmp r0, #0x01
	bhi _080198A4
	ldr r0, _08019860 @ =0x03000D08
	ldrb r2, [r0, #0x00]
	movs r5, #0x00
	ldr r1, _08019864 @ =0x03000C88
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08019840
	ldr r0, [r0, #0x08]
	ldr r3, [r4, #0x08]
	cmp r0, r3
	beq _080198A4
_08019836:
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0801986C
_08019840:
	lsls r0, r2, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
	movs r0, #0x02
	str r0, [r4, #0x00]
	ldr r1, _08019868 @ =0x03000C80
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	movs r0, #0x01
	b _080198A6
	.byte 0x00, 0x00
_08019858: .4byte 0x03000C78
_0801985C: .4byte 0x0800063C
_08019860: .4byte 0x03000D08
_08019864: .4byte 0x03000C88
_08019868: .4byte 0x03000C80
_0801986C:
	adds r2, #0x01
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _08019876
	adds r0, #0x1F
_08019876:
	asrs r0, r0, #0x05
	lsls r0, r0, #0x05
	subs r2, r2, r0
	adds r5, #0x01
	cmp r5, #0x1F
	bgt _080198A4
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08019840
	ldr r0, [r0, #0x08]
	cmp r0, r3
	bne _08019836
	b _080198A4
_08019894:
	ldr r2, _080198AC @ =0x03000C84
	ldr r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	movs r0, #0x00
	str r0, [r4, #0x00]
_080198A4:
	movs r0, #0x00
_080198A6:
	pop {r4, r5}
	pop {r1}
	bx r1
_080198AC: .4byte 0x03000C84
	thumb_func_start sub_80198B0
sub_80198B0:
	push {r4, lr}
	adds r3, r0, #0x0
	ldrb r2, [r3, #0x00]
	lsrs r1, r2, #0x06
	movs r0, #0x3F
	ands r2, r0
	cmp r1, #0x00
	beq _08019936
	movs r0, #0x06
	mov r12, r0
	adds r4, r1, #0x0
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0801990A
	cmp r1, #0x03
	bge _080198F6
	cmp r1, #0x02
	bge _080198E6
	adds r3, #0x01
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x06
	adds r2, r2, r0
	movs r0, #0x0E
	mov r12, r0
	subs r4, #0x01
_080198E6:
	adds r3, #0x01
	ldrb r1, [r3, #0x00]
	mov r0, r12
	lsls r1, r0
	adds r2, r2, r1
	movs r0, #0x08
	add r12, r0
	subs r4, #0x01
_080198F6:
	adds r3, #0x01
	ldrb r1, [r3, #0x00]
	mov r0, r12
	lsls r1, r0
	adds r2, r2, r1
	movs r0, #0x08
	add r12, r0
	subs r4, #0x01
	cmp r4, #0x00
	beq _08019936
_0801990A:
	ldrb r1, [r3, #0x01]
	mov r0, r12
	lsls r1, r0
	adds r2, r2, r1
	adds r0, #0x08
	ldrb r1, [r3, #0x02]
	lsls r1, r0
	adds r2, r2, r1
	adds r0, #0x08
	ldrb r1, [r3, #0x03]
	lsls r1, r0
	adds r2, r2, r1
	adds r0, #0x08
	adds r3, #0x04
	ldrb r1, [r3, #0x00]
	lsls r1, r0
	adds r2, r2, r1
	movs r0, #0x20
	add r12, r0
	subs r4, #0x04
	cmp r4, #0x00
	bne _0801990A
_08019936:
	adds r2, #0x01
	adds r0, r2, #0x0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_8019940
sub_8019940:
	push {r4, r5, lr}
	ldr r4, _08019988 @ =0x0800063C
	ldr r5, _0801998C @ =0x08000534
	subs r4, r4, r5
	ldr r2, _08019990 @ =0x081DD7D0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	ldr r0, _08019994 @ =0x03000C84
	str r1, [r0, #0x00]
	cmp r4, #0x00
	bge _08019960
	adds r4, #0x03
_08019960:
	lsls r2, r4, #0x09
	lsrs r2, r2, #0x0B
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r5, #0x0
	bl CpuSet
	ldr r1, _08019998 @ =0x03000C78
	ldr r0, _0801999C @ =0x0800063C
	str r0, [r1, #0x00]
	ldr r0, _080199A0 @ =0x03000D08
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _080199A4 @ =0x03000C80
	strb r1, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08019988: .4byte 0x0800063C
_0801998C: .4byte 0x08000534
_08019990: .4byte 0x081DD7D0
_08019994: .4byte 0x03000C84
_08019998: .4byte 0x03000C78
_0801999C: .4byte 0x0800063C
_080199A0: .4byte 0x03000D08
_080199A4: .4byte 0x03000C80
