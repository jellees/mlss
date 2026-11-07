	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_804D734__20FieldPlayerCharacteriPP11FieldObjecti
sub_804D734__20FieldPlayerCharacteriPP11FieldObjecti:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x04C
	mov r12, r0
	mov r10, r1
	str r2, [sp, #0x000]
	str r3, [sp, #0x004]
	cmp r1, #0x01
	beq _0804D786
	ldr r0, _0804D7B0 @ =0x0000035B
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804D76E
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0804D76E
	cmp r0, #0x04
	bls _0804D786
_0804D76E:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bls _0804D786
	b _0804DBBA
_0804D786:
	mov r0, r10
	cmp r0, #0x00
	bne _0804D7FE
	ldr r0, _0804D7B0 @ =0x0000035B
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804D7CE
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _0804D7B4
	cmp r0, #0x04
	beq _0804D7C2
	b _0804D82C
_0804D7B0: .4byte 0x0000035B
_0804D7B4:
	movs r1, #0xC0
	lsls r1, r1, #0x05
	str r1, [sp, #0x008]
	movs r2, #0x80
	lsls r2, r2, #0x01
	str r2, [sp, #0x00C]
	b _0804D82C
_0804D7C2:
	movs r3, #0x80
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	b _0804D82C
_0804D7CE:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _0804D7E4
	cmp r0, #0x04
	beq _0804D7F2
	b _0804D82C
_0804D7E4:
	movs r6, #0xA0
	lsls r6, r6, #0x06
	str r6, [sp, #0x008]
	movs r7, #0x80
	lsls r7, r7, #0x05
	str r7, [sp, #0x00C]
	b _0804D82C
_0804D7F2:
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [sp, #0x008]
	movs r1, #0x00
	str r1, [sp, #0x00C]
	b _0804D82C
_0804D7FE:
	ldr r0, _0804D81C @ =0x0000035B
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804D820
	movs r2, #0x80
	lsls r2, r2, #0x05
	str r2, [sp, #0x008]
	movs r3, #0x80
	lsls r3, r3, #0x01
	str r3, [sp, #0x00C]
	b _0804D82C
	.byte 0x00, 0x00
_0804D81C: .4byte 0x0000035B
_0804D820:
	movs r4, #0x80
	lsls r4, r4, #0x06
	str r4, [sp, #0x008]
	movs r6, #0x80
	lsls r6, r6, #0x01
	str r6, [sp, #0x00C]
_0804D82C:
	ldr r5, _0804D99C @ =0x083A0A78
	mov r7, r12
	adds r7, #0x24
	str r7, [sp, #0x044]
	ldrb r2, [r7, #0x00]
	lsls r2, r2, #0x1D
	lsrs r2, r2, #0x1D
	lsls r0, r2, #0x03
	str r0, [sp, #0x048]
	mov r3, r10
	lsls r1, r3, #0x07
	adds r0, r0, r1
	adds r0, r0, r5
	movs r4, #0x00
	ldsh r0, [r0, r4]
	mov r6, r12
	ldr r6, [r6, #0x0C]
	mov r9, r6
	add r0, r9
	str r0, [sp, #0x010]
	lsls r2, r2, #0x02
	adds r4, r2, #0x1
	lsls r4, r4, #0x01
	adds r0, r4, r1
	adds r0, r0, r5
	movs r7, #0x00
	ldsh r0, [r0, r7]
	add r0, r9
	str r0, [sp, #0x018]
	adds r3, r2, #0x2
	lsls r3, r3, #0x01
	adds r0, r3, r1
	adds r0, r0, r5
	movs r6, #0x00
	ldsh r0, [r0, r6]
	mov r7, r12
	ldr r7, [r7, #0x10]
	mov r8, r7
	add r0, r8
	str r0, [sp, #0x020]
	adds r2, #0x03
	lsls r2, r2, #0x01
	adds r1, r2, r1
	adds r1, r1, r5
	movs r6, #0x00
	ldsh r0, [r1, r6]
	add r0, r8
	str r0, [sp, #0x028]
	mov r7, r10
	lsls r1, r7, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x06
	ldr r0, [sp, #0x048]
	adds r6, r0, r1
	adds r0, r6, r5
	movs r6, #0x00
	ldsh r0, [r0, r6]
	add r0, r9
	str r0, [sp, #0x014]
	adds r4, r4, r1
	adds r4, r4, r5
	movs r7, #0x00
	ldsh r0, [r4, r7]
	add r0, r9
	str r0, [sp, #0x01C]
	adds r3, r3, r1
	adds r3, r3, r5
	movs r4, #0x00
	ldsh r0, [r3, r4]
	add r0, r8
	str r0, [sp, #0x024]
	adds r2, r2, r1
	adds r2, r2, r5
	movs r6, #0x00
	ldsh r0, [r2, r6]
	add r0, r8
	str r0, [sp, #0x02C]
	mov r7, r12
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	ldr r1, [sp, #0x008]
	adds r1, r1, r0
	str r1, [sp, #0x008]
	ldr r2, [sp, #0x00C]
	adds r2, r2, r0
	str r2, [sp, #0x00C]
	ldr r3, [sp, #0x004]
	str r3, [sp, #0x030]
	cmp r3, #0x00
	bne _0804D8E4
	b _0804DBBA
_0804D8E4:
	adds r4, r7, #0x0
	adds r4, #0x54
	str r4, [sp, #0x03C]
	movs r6, #0x83
	lsls r6, r6, #0x02
	mov r9, r6
	ldr r7, [sp, #0x044]
	mov r8, r7
	movs r0, #0xCF
	lsls r0, r0, #0x02
	add r0, r12
	str r0, [sp, #0x038]
_0804D8FC:
	ldr r1, [sp, #0x000]
	ldr r5, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x034]
_0804D904:
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r1, [r0, #0x00]
	str r0, [sp, #0x040]
	ldr r3, [sp, #0x03C]
	ldrb r3, [r3, #0x00]
	cmp r1, r3
	bne _0804D916
	b _0804DB72
_0804D916:
	mov r4, r9
	adds r0, r5, r4
	ldrb r2, [r0, #0x00]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _0804D926
	b _0804DB72
_0804D926:
	ldr r6, _0804D9A0 @ =0x00000216
	adds r0, r5, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804D936
	b _0804DB72
_0804D936:
	ldr r7, _0804D9A4 @ =0x0000020E
	adds r0, r5, r7
	ldrb r0, [r0, #0x00]
	movs r1, #0x38
	ands r1, r0
	cmp r1, #0x30
	bne _0804D946
	b _0804DB72
_0804D946:
	movs r0, #0xA0
	ands r0, r2
	cmp r0, #0x00
	bne _0804D950
	b _0804DB72
_0804D950:
	cmp r1, #0x18
	bne _0804D9AC
	ldr r1, _0804D9A8 @ =0x00000272
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	lsrs r2, r1, #0x01
	ldr r0, [r5, #0x0C]
	subs r0, r0, r2
	adds r1, r0, r1
	ldr r2, [sp, #0x010]
	cmp r2, r1
	blt _0804D96A
	b _0804DB72
_0804D96A:
	ldr r3, [sp, #0x018]
	cmp r3, r0
	bgt _0804D972
	b _0804DB72
_0804D972:
	movs r4, #0x9C
	lsls r4, r4, #0x02
	adds r0, r5, r4
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r5, #0x10]
	adds r1, r0, r1
	adds r7, #0x68
	adds r0, r5, r7
	ldrh r0, [r0, #0x00]
	subs r0, r1, r0
	ldr r2, [sp, #0x020]
	cmp r2, r0
	bgt _0804D990
	b _0804DB72
_0804D990:
	ldr r3, [sp, #0x028]
	cmp r3, r1
	blt _0804D998
	b _0804DB72
_0804D998:
	b _0804D9F0
	.byte 0x00, 0x00
_0804D99C: .4byte 0x083A0A78
_0804D9A0: .4byte 0x00000216
_0804D9A4: .4byte 0x0000020E
_0804D9A8: .4byte 0x00000272
_0804D9AC:
	ldr r4, _0804DA34 @ =0x00000272
	adds r0, r5, r4
	ldrh r1, [r0, #0x00]
	lsrs r2, r1, #0x01
	ldr r0, [r5, #0x0C]
	subs r0, r0, r2
	adds r1, r0, r1
	ldr r6, [sp, #0x014]
	cmp r6, r1
	blt _0804D9C2
	b _0804DB72
_0804D9C2:
	ldr r7, [sp, #0x01C]
	cmp r7, r0
	bgt _0804D9CA
	b _0804DB72
_0804D9CA:
	movs r1, #0x9C
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x10]
	adds r1, r0, r1
	ldr r3, _0804DA38 @ =0x00000276
	adds r0, r5, r3
	ldrh r0, [r0, #0x00]
	subs r0, r1, r0
	ldr r4, [sp, #0x024]
	cmp r4, r0
	bgt _0804D9E8
	b _0804DB72
_0804D9E8:
	ldr r6, [sp, #0x02C]
	cmp r6, r1
	blt _0804D9F0
	b _0804DB72
_0804D9F0:
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	movs r7, #0x9D
	lsls r7, r7, #0x02
	adds r0, r5, r7
	ldrh r0, [r0, #0x00]
	adds r0, r1, r0
	ldr r2, [sp, #0x00C]
	cmp r2, r0
	blt _0804DA08
	b _0804DB72
_0804DA08:
	ldr r3, [sp, #0x008]
	cmp r3, r1
	bgt _0804DA10
	b _0804DB72
_0804DA10:
	ldr r0, _0804DA3C @ =0x0000020D
	add r0, r12
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r1, r0, #0x1F
	mov r4, r10
	cmp r4, #0x00
	bne _0804DA40
	movs r6, #0x84
	lsls r6, r6, #0x02
	adds r0, r5, r6
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	bne _0804DA50
	b _0804DA76
_0804DA34: .4byte 0x00000272
_0804DA38: .4byte 0x00000276
_0804DA3C: .4byte 0x0000020D
_0804DA40:
	mov r7, r9
	adds r0, r5, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	beq _0804DA76
_0804DA50:
	mov r0, r8
	ldrb r2, [r0, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1C
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1D
	ldr r3, _0804DB4C @ =0x083A0B78
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	orrs r1, r0
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x79
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r4, r8
	strb r0, [r4, #0x00]
_0804DA76:
	mov r6, r9
	adds r6, r5, r6
	str r6, [sp, #0x044]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	ldr r6, _0804DB50 @ =0x0000020D
	add r6, r12
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	beq _0804DABE
	ldr r7, [sp, #0x000]
	ldr r3, [r7, #0x00]
	adds r3, #0x24
	ldrb r4, [r3, #0x00]
	lsls r1, r4, #0x19
	lsrs r1, r1, #0x1C
	ldr r2, _0804DB54 @ =0x083A0B80
	mov r7, r8
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	orrs r1, r0
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x79
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x00]
_0804DABE:
	ldr r0, _0804DB58 @ =0x0000020F
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804DB34
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	ldr r2, [sp, #0x044]
	ldrb r0, [r2, #0x00]
	lsrs r0, r0, #0x07
	ands r1, r0
	cmp r1, #0x00
	beq _0804DB34
	movs r4, #0xD4
	lsls r4, r4, #0x02
	add r4, r12
	ldrb r1, [r4, #0x00]
	movs r6, #0x0F
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _0804DB34
	ldr r3, [sp, #0x040]
	ldrb r0, [r3, #0x00]
	movs r3, #0x7F
	adds r1, r3, #0x0
	ands r1, r0
	ldr r7, [sp, #0x038]
	ldrb r2, [r7, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	ldr r2, [sp, #0x034]
	lsls r1, r2, #0x07
	ands r0, r3
	orrs r0, r1
	strb r0, [r7, #0x00]
	mov r3, r8
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	ldr r7, _0804DB4C @ =0x083A0B78
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	ands r1, r6
	ldrb r2, [r4, #0x00]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _0804DB5C @ =0x00000342
	add r0, r12
	mov r1, r10
	strb r1, [r0, #0x00]
_0804DB34:
	mov r2, r10
	cmp r2, #0x00
	bne _0804DB60
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0804DB6E
	b _0804DB72
_0804DB4C: .4byte 0x083A0B78
_0804DB50: .4byte 0x0000020D
_0804DB54: .4byte 0x083A0B80
_0804DB58: .4byte 0x0000020F
_0804DB5C: .4byte 0x00000342
_0804DB60:
	mov r4, r9
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0804DB72
_0804DB6E:
	movs r0, #0x01
	b _0804DBBC
_0804DB72:
	ldr r6, _0804DBCC @ =0x0000020E
	adds r0, r5, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _0804DBA8
	movs r7, #0xD1
	lsls r7, r7, #0x02
	adds r0, r5, r7
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0804DBA8
	mov r1, r9
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804DBA8
	adds r5, r2, #0x0
	ldr r2, [sp, #0x034]
	adds r2, #0x01
	str r2, [sp, #0x034]
	cmp r2, #0x01
	bgt _0804DBA8
	b _0804D904
_0804DBA8:
	ldr r3, [sp, #0x030]
	subs r3, #0x01
	str r3, [sp, #0x030]
	ldr r4, [sp, #0x000]
	adds r4, #0x04
	str r4, [sp, #0x000]
	cmp r3, #0x00
	beq _0804DBBA
	b _0804D8FC
_0804DBBA:
	movs r0, #0x00
_0804DBBC:
	add sp, #0x04C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0804DBCC: .4byte 0x0000020E
