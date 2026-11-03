	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start method12__11FieldObjectPP11FieldObjectiUc
method12__11FieldObjectPP11FieldObjectiUc:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x054
	adds r4, r0, #0x0
	str r1, [sp, #0x000]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x004]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r3, [r0, #0x00]
	movs r0, #0x01
	ands r0, r3
	cmp r0, #0x00
	bne _08041A54
	b _08041FDE
_08041A54:
	ldr r5, _08041B74 @ =0x00000216
	adds r0, r4, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08041A64
	b _08041FDE
_08041A64:
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1F
	ldr r6, _08041B78 @ =0x0000020D
	adds r0, r4, r6
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	orrs r1, r0
	cmp r1, #0x00
	bne _08041A7A
	b _08041FDE
_08041A7A:
	ldr r7, _08041B7C @ =0x00000272
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [r4, #0x0C]
	subs r1, r1, r0
	str r1, [sp, #0x008]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x00C]
	ldr r1, [r4, #0x14]
	str r1, [sp, #0x010]
	ldr r1, [r4, #0x18]
	cmp r1, #0x00
	bgt _08041AA0
	cmp r1, #0x00
	bge _08041AA6
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08041AA6
_08041AA0:
	ldr r3, [sp, #0x010]
	adds r3, r3, r1
	str r3, [sp, #0x010]
_08041AA6:
	ldr r5, _08041B78 @ =0x0000020D
	adds r0, r4, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	movs r6, #0x02
	str r6, [sp, #0x014]
	cmp r0, #0x00
	beq _08041ABA
	str r2, [sp, #0x014]
_08041ABA:
	adds r7, r4, #0x0
	adds r7, #0x24
	str r7, [sp, #0x03C]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bne _08041AC8
	b _08041FAA
_08041AC8:
	adds r1, r4, #0x0
	adds r1, #0x54
	str r1, [sp, #0x018]
_08041ACE:
	ldr r2, [sp, #0x000]
	ldr r2, [r2, #0x00]
	mov r8, r2
	adds r2, #0x54
	ldr r3, [sp, #0x018]
	ldrb r0, [r3, #0x00]
	ldrb r5, [r2, #0x00]
	cmp r0, r5
	bne _08041AE2
	b _08041F98
_08041AE2:
	ldr r6, [sp, #0x004]
	cmp r6, #0x00
	beq _08041AFA
	movs r0, #0x84
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08041AFA
	b _08041F98
_08041AFA:
	movs r3, #0x83
	lsls r3, r3, #0x02
	mov r7, r8
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08041B0E
	b _08041F98
_08041B0E:
	ldr r0, _08041B74 @ =0x00000216
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08041B2E
	ldrb r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08041B2E
	b _08041F98
_08041B2E:
	mov r0, r8
	adds r0, #0x29
	movs r1, #0x00
	ldsb r1, [r0, r1]
	str r0, [sp, #0x040]
	ldr r0, [sp, #0x018]
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	bne _08041B42
	b _08041F98
_08041B42:
	ldr r0, _08041B80 @ =0x0000020E
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _08041B84
	adds r0, r4, r3
	ldrb r3, [r0, #0x00]
	lsls r2, r3, #0x19
	lsrs r2, r2, #0x1F
	ldr r0, _08041B78 @ =0x0000020D
	add r0, r8
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1F
	mov r9, r0
	mov r5, r9
	ands r5, r2
	mov r9, r5
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	lsls r3, r3, #0x1A
	b _08041BA4
	.byte 0x00, 0x00
_08041B74: .4byte 0x00000216
_08041B78: .4byte 0x0000020D
_08041B7C: .4byte 0x00000272
_08041B80: .4byte 0x0000020E
_08041B84:
	ldr r1, _08041BD8 @ =0x0000020D
	adds r0, r4, r1
	ldrb r3, [r0, #0x00]
	lsls r2, r3, #0x1F
	lsrs r2, r2, #0x1F
	add r1, r8
	ldrb r1, [r1, #0x00]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1F
	mov r9, r0
	mov r6, r9
	ands r6, r2
	mov r9, r6
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	lsls r3, r3, #0x1E
_08041BA4:
	lsrs r3, r3, #0x1F
	ands r3, r1
	str r3, [sp, #0x01C]
	mov r7, r9
	cmp r7, #0x00
	bne _08041BB2
	b _08041F98
_08041BB2:
	ldr r1, _08041BDC @ =0x00000272
	mov r2, r8
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x020]
	lsrs r0, r0, #0x01
	ldr r2, [r2, #0x0C]
	subs r3, r2, r0
	adds r1, r4, r1
	ldrh r1, [r1, #0x00]
	str r1, [sp, #0x028]
	str r2, [sp, #0x044]
	ldr r5, [sp, #0x008]
	cmp r3, r5
	bge _08041BE0
	ldr r6, [sp, #0x020]
	adds r0, r3, r6
	subs r0, r0, r5
	b _08041BE8
_08041BD8: .4byte 0x0000020D
_08041BDC: .4byte 0x00000272
_08041BE0:
	ldr r7, [sp, #0x008]
	ldr r1, [sp, #0x028]
	adds r0, r7, r1
	subs r0, r0, r3
_08041BE8:
	cmp r0, #0x00
	bgt _08041BEE
	b _08041FAA
_08041BEE:
	movs r2, #0x9C
	lsls r2, r2, #0x02
	mov r3, r8
	adds r0, r3, r2
	movs r6, #0x00
	ldsh r5, [r0, r6]
	mov r10, r5
	ldr r1, _08041C28 @ =0x00000276
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x024]
	ldr r0, [r3, #0x10]
	adds r3, r0, r5
	adds r2, r4, r2
	movs r5, #0x00
	ldsh r7, [r2, r5]
	mov r12, r7
	adds r1, r4, r1
	ldrh r1, [r1, #0x00]
	str r1, [sp, #0x02C]
	ldr r1, [sp, #0x00C]
	add r1, r12
	str r0, [sp, #0x048]
	cmp r3, r1
	ble _08041C2C
	ldr r6, [sp, #0x024]
	subs r0, r3, r6
	subs r0, r1, r0
	b _08041C32
_08041C28: .4byte 0x00000276
_08041C2C:
	ldr r7, [sp, #0x02C]
	subs r0, r1, r7
	subs r0, r3, r0
_08041C32:
	cmp r0, #0x00
	bgt _08041C38
	b _08041FAA
_08041C38:
	ldr r3, [sp, #0x010]
	mov r0, r8
	ldr r2, [r0, #0x14]
	ldr r1, [r0, #0x18]
	cmp r1, #0x00
	bgt _08041C4E
	cmp r1, #0x00
	bge _08041C50
	ldr r0, [r0, #0x40]
	cmp r0, #0x00
	bge _08041C50
_08041C4E:
	adds r2, r2, r1
_08041C50:
	adds r5, r2, #0x0
	cmp r5, r3
	bgt _08041C64
	movs r0, #0x9D
	lsls r0, r0, #0x02
	add r0, r8
	ldrh r0, [r0, #0x00]
	adds r0, r5, r0
	subs r3, r0, r3
	b _08041C70
_08041C64:
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	adds r0, r3, r0
	subs r3, r0, r5
_08041C70:
	cmp r3, #0x00
	bge _08041C76
	b _08041FAA
_08041C76:
	movs r7, #0x00
	movs r2, #0x00
	str r2, [sp, #0x030]
	movs r6, #0x00
	str r6, [sp, #0x034]
	movs r0, #0x00
	str r0, [sp, #0x038]
	adds r0, r4, #0x0
	adds r0, #0x29
	movs r2, #0x00
	ldsb r2, [r0, r2]
	mov r1, r8
	adds r1, #0x54
	str r1, [sp, #0x04C]
	adds r6, r0, #0x0
	ldrb r1, [r1, #0x00]
	cmp r2, r1
	bne _08041CA4
	movs r2, #0x02
	str r2, [sp, #0x034]
	movs r5, #0x01
	str r5, [sp, #0x038]
	b _08041CD8
_08041CA4:
	ldr r1, [r4, #0x3C]
	ldr r0, [r4, #0x40]
	adds r1, r1, r0
	movs r2, #0x9D
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r1, r0
	cmp r0, r5
	bgt _08041CC2
	movs r5, #0x01
	str r5, [sp, #0x034]
	movs r0, #0x02
	str r0, [sp, #0x038]
	b _08041CD8
_08041CC2:
	movs r0, #0x9D
	lsls r0, r0, #0x02
	add r0, r8
	ldrh r0, [r0, #0x00]
	adds r0, r5, r0
	cmp r1, r0
	blt _08041CD8
	movs r1, #0x02
	str r1, [sp, #0x034]
	movs r2, #0x01
	str r2, [sp, #0x038]
_08041CD8:
	ldr r5, [sp, #0x034]
	cmp r5, #0x02
	bne _08041D70
	movs r0, #0x00
	ldsb r0, [r6, r0]
	ldr r6, [sp, #0x04C]
	ldrb r6, [r6, #0x00]
	cmp r0, r6
	beq _08041CF4
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldr r1, _08041D1C @ =0xFFFFFF00
	ands r0, r1
	str r0, [r4, #0x18]
_08041CF4:
	ldr r0, [sp, #0x04C]
	ldrb r1, [r0, #0x00]
	movs r2, #0x8E
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	ldr r3, [sp, #0x04C]
	ldrb r0, [r3, #0x00]
	strb r0, [r4, #0x01]
	ldr r5, _08041D20 @ =0x000002B5
	adds r0, r4, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08041D24
	adds r0, r4, #0x0
	bl sub_8046A10
	b _08041ECA
_08041D1C: .4byte 0xFFFFFF00
_08041D20: .4byte 0x000002B5
_08041D24:
	movs r6, #0x97
	lsls r6, r6, #0x02
	adds r1, r4, r6
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bge _08041D32
	b _08041ECA
_08041D32:
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r1, _08041D6C @ =0x00000213
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r3, #0x21
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r1, r4, r5
	subs r6, #0x0C
	adds r0, r4, r6
	movs r2, #0x01
	negs r2, r2
	str r2, [r0, #0x00]
	str r2, [r1, #0x00]
	movs r3, #0x90
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldrh r1, [r0, #0x00]
	subs r5, #0x0E
	adds r0, r4, r5
	strh r1, [r0, #0x00]
	b _08041ECA
	.byte 0x00, 0x00
_08041D6C: .4byte 0x00000213
_08041D70:
	ldr r6, [sp, #0x034]
	cmp r6, #0x01
	bne _08041DC0
	adds r0, r4, #0x0
	adds r0, #0x4C
	ldrh r1, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x80
	bne _08041D8A
	b _08041ECA
_08041D8A:
	ldr r5, [sp, #0x040]
	movs r0, #0x00
	ldsb r0, [r5, r0]
	ldr r6, [sp, #0x018]
	ldrb r6, [r6, #0x00]
	cmp r0, r6
	bne _08041D9A
	b _08041ECA
_08041D9A:
	ldr r0, [r4, #0x18]
	subs r0, r0, r3
	str r0, [r4, #0x18]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08041DAE
	b _08041ECA
_08041DAE:
	adds r2, #0xD8
	adds r1, r4, r2
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08041DBA
	b _08041ECA
_08041DBA:
	negs r0, r0
	str r0, [r1, #0x00]
	b _08041ECA
_08041DC0:
	ldr r0, [r4, #0x38]
	mov r3, r8
	ldr r1, [r3, #0x38]
	ldr r6, [r4, #0x34]
	ldr r5, [r3, #0x34]
	str r5, [sp, #0x050]
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	ldr r7, [sp, #0x050]
	cmp r6, r7
	bne _08041E02
	cmp r3, r5
	bne _08041E02
	ldr r1, [sp, #0x03C]
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x01
	bls _08041DFA
	cmp r0, #0x02
	bhi _08041DF2
	movs r7, #0x08
	movs r5, #0x02
	str r5, [sp, #0x030]
	b _08041E40
_08041DF2:
	cmp r0, #0x05
	bls _08041E3A
	cmp r0, #0x06
	bls _08041E1E
_08041DFA:
	movs r7, #0x01
	movs r2, #0x04
	str r2, [sp, #0x030]
	b _08041E40
_08041E02:
	mov r7, r12
	adds r2, r0, r7
	ldr r7, [sp, #0x02C]
	subs r0, r2, r7
	add r1, r10
	cmp r0, r1
	bge _08041E2E
	ldr r7, [sp, #0x024]
	subs r0, r1, r7
	cmp r2, r0
	ble _08041E2E
	ldr r0, [sp, #0x050]
	cmp r6, r0
	bge _08041E26
_08041E1E:
	movs r7, #0x02
	movs r1, #0x08
	str r1, [sp, #0x030]
	b _08041E40
_08041E26:
	movs r7, #0x08
	movs r2, #0x02
	str r2, [sp, #0x030]
	b _08041E40
_08041E2E:
	cmp r3, r5
	ble _08041E3A
	movs r7, #0x01
	movs r5, #0x04
	str r5, [sp, #0x030]
	b _08041E40
_08041E3A:
	movs r7, #0x04
	movs r0, #0x01
	str r0, [sp, #0x030]
_08041E40:
	cmp r7, #0x08
	bne _08041E64
	ldr r1, [r4, #0x0C]
	cmp r1, r6
	bge _08041ECA
	ldr r2, [sp, #0x020]
	ldr r3, [sp, #0x028]
	adds r0, r2, r3
	asrs r0, r0, #0x01
	ldr r5, [sp, #0x044]
	adds r0, r5, r0
	cmp r0, r6
	ble _08041E5C
	adds r0, r6, #0x0
_08041E5C:
	cmp r0, r1
	ble _08041ECA
	str r0, [r4, #0x0C]
	b _08041ECA
_08041E64:
	cmp r7, #0x02
	bne _08041E88
	ldr r1, [r4, #0x0C]
	cmp r1, r6
	ble _08041ECA
	ldr r2, [sp, #0x020]
	ldr r3, [sp, #0x028]
	adds r0, r2, r3
	asrs r0, r0, #0x01
	ldr r5, [sp, #0x044]
	subs r0, r5, r0
	cmp r0, r6
	bge _08041E80
	adds r0, r6, #0x0
_08041E80:
	cmp r0, r1
	bge _08041ECA
	str r0, [r4, #0x0C]
	b _08041ECA
_08041E88:
	cmp r7, #0x01
	bne _08041EAA
	ldr r1, [r4, #0x10]
	cmp r1, r3
	bge _08041ECA
	ldr r0, [sp, #0x02C]
	add r0, r10
	mov r6, r12
	subs r0, r0, r6
	ldr r2, [sp, #0x048]
	adds r0, r2, r0
	cmp r0, r3
	ble _08041EA4
	adds r0, r3, #0x0
_08041EA4:
	cmp r0, r1
	ble _08041ECA
	b _08041EC8
_08041EAA:
	ldr r1, [r4, #0x10]
	cmp r1, r3
	ble _08041ECA
	mov r5, r10
	ldr r6, [sp, #0x024]
	subs r0, r5, r6
	mov r2, r12
	subs r0, r0, r2
	ldr r5, [sp, #0x048]
	adds r0, r5, r0
	cmp r0, r3
	bge _08041EC4
	adds r0, r3, #0x0
_08041EC4:
	cmp r0, r1
	bge _08041ECA
_08041EC8:
	str r0, [r4, #0x10]
_08041ECA:
	mov r6, r9
	cmp r6, #0x00
	beq _08041F40
	ldr r0, [sp, #0x03C]
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	orrs r0, r7
	lsls r0, r0, #0x03
	movs r3, #0x79
	negs r3, r3
	adds r1, r3, #0x0
	ands r2, r1
	orrs r2, r0
	ldr r5, [sp, #0x03C]
	strb r2, [r5, #0x00]
	ldrh r2, [r4, #0x24]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1E
	ldr r6, [sp, #0x034]
	orrs r0, r6
	lsls r0, r0, #0x07
	ldr r7, _08041F2C @ =0xFFFFFE7F
	adds r1, r7, #0x0
	ands r2, r1
	orrs r2, r0
	strh r2, [r4, #0x24]
	movs r0, #0x00
	ldsb r0, [r4, r0]
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _08041F12
	ldr r2, [sp, #0x04C]
	ldrb r0, [r2, #0x00]
	strb r0, [r4, #0x00]
_08041F12:
	ldr r0, _08041F30 @ =0x0000020E
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _08041F34
	adds r2, r4, #0x0
	adds r2, #0x25
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	b _08041F3C
	.byte 0x00, 0x00
_08041F2C: .4byte 0xFFFFFE7F
_08041F30: .4byte 0x0000020E
_08041F34:
	adds r2, r4, #0x0
	adds r2, #0x25
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
_08041F3C:
	orrs r0, r1
	strb r0, [r2, #0x00]
_08041F40:
	ldr r3, [sp, #0x01C]
	cmp r3, #0x00
	beq _08041F98
	mov r3, r8
	adds r3, #0x24
	ldrb r2, [r3, #0x00]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	ldr r5, [sp, #0x030]
	orrs r0, r5
	lsls r0, r0, #0x03
	movs r6, #0x79
	negs r6, r6
	adds r1, r6, #0x0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	mov r7, r8
	ldrh r2, [r7, #0x24]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1E
	ldr r1, [sp, #0x038]
	orrs r0, r1
	lsls r0, r0, #0x07
	ldr r3, _08041FF0 @ =0xFFFFFE7F
	adds r1, r3, #0x0
	ands r2, r1
	orrs r2, r0
	strh r2, [r7, #0x24]
	movs r0, #0x00
	ldsb r0, [r4, r0]
	movs r5, #0x01
	negs r5, r5
	cmp r0, r5
	bne _08041F8C
	ldr r6, [sp, #0x04C]
	ldrb r0, [r6, #0x00]
	strb r0, [r4, #0x00]
_08041F8C:
	mov r0, r8
	adds r0, #0x25
	ldrb r1, [r0, #0x00]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x00]
_08041F98:
	ldr r7, [sp, #0x014]
	subs r7, #0x01
	str r7, [sp, #0x014]
	ldr r0, [sp, #0x000]
	adds r0, #0x04
	str r0, [sp, #0x000]
	cmp r7, #0x00
	beq _08041FAA
	b _08041ACE
_08041FAA:
	ldr r2, [sp, #0x03C]
	ldrb r1, [r2, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	beq _08041FDE
	ldr r3, _08041FF4 @ =0x000002B5
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _08041FDE
	ldr r5, _08041FF8 @ =0x000002B6
	adds r0, r4, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08041FDE
	adds r0, r4, #0x0
	bl sub_8046980
	adds r0, r4, #0x0
	bl sub_8046A10
_08041FDE:
	add sp, #0x054
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08041FF0: .4byte 0xFFFFFE7F
_08041FF4: .4byte 0x000002B5
_08041FF8: .4byte 0x000002B6
