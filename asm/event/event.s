	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E9D50
sub_80E9D50:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r10, r1
	adds r5, r3, #0x0
	ldr r6, [r5, #0x04]
	ldr r1, [r5, #0x0C]
	lsls r7, r1, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ands r7, r0
	movs r0, #0x03
	ands r1, r0
	orrs r7, r1
	ldr r1, _080E9DB0 @ =0x083BA4B4
	ldr r2, [r5, #0x08]
	ldrb r0, [r5, #0x08]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r9, r0
	asrs r4, r2, #0x08
	movs r0, #0xFF
	mov r8, r0
	mov r2, r8
	ands r4, r2
	cmp r4, #0x00
	bne _080E9D9E
	ldr r1, [r5, #0x14]
	mov r0, r10
	bl sub_80E9310
	lsrs r4, r0, #0x10
	mov r0, r8
	ands r4, r0
_080E9D9E:
	adds r0, r4, #0x2
	lsls r0, r0, #0x02
	movs r1, #0x70
	subs r2, r1, r0
	cmp r2, #0x00
	bge _080E9DB4
	movs r2, #0x0A
	b _080E9DC0
	.byte 0x00, 0x00
_080E9DB0: .4byte 0x083BA4B4
_080E9DB4:
	lsls r1, r4, #0x03
	movs r0, #0xE8
	subs r0, r0, r1
	cmp r2, r0
	ble _080E9DC0
	adds r2, r0, #0x0
_080E9DC0:
	cmp r6, #0x00
	bge _080E9DC8
	movs r6, #0x0A
	b _080E9DD6
_080E9DC8:
	mov r0, r9
	lsls r1, r0, #0x03
	movs r0, #0x94
	subs r0, r0, r1
	cmp r6, r0
	ble _080E9DD6
	adds r6, r0, #0x0
_080E9DD6:
	ldrb r1, [r5, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r3, r6, #0x10
	asrs r3, r3, #0x10
	str r4, [sp, #0x000]
	mov r4, r9
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	str r7, [sp, #0x00C]
	ldrb r0, [r5, #0x10]
	str r0, [sp, #0x010]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x014]
	mov r0, r10
	bl sub_80E5BCC
	movs r0, #0x01
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80E9E10
sub_80E9E10:
	push {r4, lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080E9E60
	cmp r2, #0x01
	bgt _080E9E22
	cmp r2, #0x00
	beq _080E9E2C
	b _080E9ED2
_080E9E22:
	cmp r2, #0x02
	beq _080E9E8C
	cmp r2, #0x03
	beq _080E9EA8
	b _080E9ED2
_080E9E2C:
	ldr r3, _080E9E5C @ =0x03000D44
	ldr r1, [r3, #0x00]
	adds r1, #0x28
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x1F
	lsrs r1, r1, #0x1F
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	orrs r0, r1
	cmp r0, #0x00
	bne _080E9ED2
	adds r0, r3, #0x0
	bl disable__7Process
	b _080E9ED2
	.byte 0x00, 0x00
_080E9E5C: .4byte 0x03000D44
_080E9E60:
	ldr r4, _080E9E88 @ =0x03000D44
	ldr r1, [r4, #0x00]
	adds r1, #0x28
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x20]
	adds r2, r0, #0x0
	adds r2, #0x28
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x1A
	lsrs r2, r2, #0x1C
	bl sub_801BC40
	ldr r0, [r4, #0x00]
	bl enable__7Process
	b _080E9ED2
_080E9E88: .4byte 0x03000D44
_080E9E8C:
	ldr r3, _080E9EA4 @ =0x03000D44
	ldr r1, [r3, #0x00]
	adds r1, #0x28
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	bl enable__7Process
	b _080E9ED2
_080E9EA4: .4byte 0x03000D44
_080E9EA8:
	ldr r3, _080E9EDC @ =0x03000D44
	ldr r1, [r3, #0x00]
	adds r1, #0x28
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x1F
	lsrs r1, r1, #0x1F
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	orrs r0, r1
	cmp r0, #0x00
	bne _080E9ED2
	adds r0, r3, #0x0
	bl disable__7Process
_080E9ED2:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080E9EDC: .4byte 0x03000D44
	thumb_func_start sub_80E9EE0
sub_80E9EE0:
	push {r4, r5, lr}
	adds r4, r2, #0x0
	ldr r3, [r4, #0x00]
	movs r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	bne _080E9F84
	ldr r0, _080E9F08 @ =0x03000FF4
	lsls r1, r3, #0x04
	subs r1, r1, r3
	lsls r1, r1, #0x02
	ldr r0, [r0, #0x00]
	adds r2, r0, r1
	adds r4, #0x04
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9F0C
	cmp r0, #0x01
	beq _080E9F48
	b _080EA056
_080E9F08: .4byte 0x03000FF4
_080E9F0C:
	ldrh r3, [r2, #0x0E]
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9F1A
	cmp r0, #0x01
	beq _080E9F32
	b _080E9F44
_080E9F1A:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x12]
	cmp r0, r1
	ble _080E9F44
	adds r3, r1, #0x0
	b _080E9F44
_080E9F32:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bgt _080E9F44
	movs r3, #0x01
_080E9F44:
	strh r3, [r2, #0x0E]
	b _080EA056
_080E9F48:
	ldrh r3, [r2, #0x14]
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9F56
	cmp r0, #0x01
	beq _080E9F6E
	b _080E9F80
_080E9F56:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x18]
	cmp r0, r1
	ble _080E9F80
	adds r3, r1, #0x0
	b _080E9F80
_080E9F6E:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bge _080E9F80
	movs r3, #0x00
_080E9F80:
	strh r3, [r2, #0x14]
	b _080EA056
_080E9F84:
	ldr r0, _080E9F98 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r4, #0x04
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9F9C
	cmp r0, #0x01
	beq _080E9FFC
	b _080EA056
	.byte 0x00, 0x00
_080E9F98: .4byte 0x03000FF4
_080E9F9C:
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9FA8
	cmp r0, #0x01
	beq _080E9FD4
	b _080EA056
_080E9FA8:
	movs r5, #0x02
_080E9FAA:
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x0E]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x12]
	cmp r0, r1
	ble _080E9FBE
	adds r3, r1, #0x0
_080E9FBE:
	strh r3, [r2, #0x0E]
	lsls r0, r5, #0x10
	ldr r1, _080E9FD0 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x3C
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080E9FAA
	b _080EA056
_080E9FD0: .4byte 0xFFFF0000
_080E9FD4:
	movs r5, #0x02
_080E9FD6:
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x0E]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bgt _080E9FE6
	movs r3, #0x01
_080E9FE6:
	strh r3, [r2, #0x0E]
	lsls r0, r5, #0x10
	ldr r1, _080E9FF8 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x3C
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080E9FD6
	b _080EA056
_080E9FF8: .4byte 0xFFFF0000
_080E9FFC:
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080EA008
	cmp r0, #0x01
	beq _080EA034
	b _080EA056
_080EA008:
	movs r5, #0x02
_080EA00A:
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x18]
	cmp r0, r1
	ble _080EA01E
	adds r3, r1, #0x0
_080EA01E:
	strh r3, [r2, #0x14]
	lsls r0, r5, #0x10
	ldr r1, _080EA030 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x3C
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080EA00A
	b _080EA056
_080EA030: .4byte 0xFFFF0000
_080EA034:
	movs r5, #0x02
_080EA036:
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bge _080EA046
	movs r3, #0x00
_080EA046:
	strh r3, [r2, #0x14]
	lsls r0, r5, #0x10
	ldr r1, _080EA060 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x3C
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080EA036
_080EA056:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EA060: .4byte 0xFFFF0000
	thumb_func_start sub_80EA064
sub_80EA064:
	push {r4, r5, lr}
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080EA138
	ldr r0, _080EA0A4 @ =0x03000FF4
	ldr r4, [r0, #0x00]
	ldm r2!, {r0}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r5, r1, #0x0
	ldrh r0, [r2, #0x00]
	movs r3, #0x00
	ldsh r2, [r2, r3]
	cmp r2, #0x08
	ble _080EA08C
	adds r4, #0x3C
	adds r0, r2, #0x0
	subs r0, #0x09
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080EA08C:
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0x02
	bgt _080EA0BE
	cmp r1, #0x00
	beq _080EA0A8
	ldrb r2, [r4, #0x07]
	lsrs r1, r2, #0x02
	movs r0, #0x01
	lsls r0, r3
	bics r1, r0
	b _080EA0B2
_080EA0A4: .4byte 0x03000FF4
_080EA0A8:
	ldrb r2, [r4, #0x07]
	lsrs r1, r2, #0x02
	movs r0, #0x01
	lsls r0, r3
	orrs r1, r0
_080EA0B2:
	lsls r1, r1, #0x02
	movs r0, #0x03
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x07]
	b _080EA138
_080EA0BE:
	cmp r3, #0x05
	bgt _080EA0FE
	subs r0, r3, #0x3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x00
	beq _080EA0DE
	ldrb r3, [r4, #0x08]
	lsls r2, r3, #0x1A
	lsrs r2, r2, #0x1A
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	lsls r0, r1
	bics r2, r0
	b _080EA0F2
_080EA0DE:
	ldrb r3, [r4, #0x08]
	lsls r2, r3, #0x1A
	lsrs r2, r2, #0x1A
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	lsls r0, r1
	orrs r2, r0
	movs r0, #0x3F
	ands r2, r0
_080EA0F2:
	movs r0, #0x40
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x08]
	b _080EA138
_080EA0FE:
	subs r0, r3, #0x6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r5, #0x00
	beq _080EA11A
	ldrh r3, [r4, #0x08]
	lsls r2, r3, #0x14
	lsrs r2, r2, #0x1A
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	lsls r0, r1
	bics r2, r0
	b _080EA12E
_080EA11A:
	ldrh r3, [r4, #0x08]
	lsls r2, r3, #0x14
	lsrs r2, r2, #0x1A
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	lsls r0, r1
	orrs r2, r0
	movs r0, #0x3F
	ands r2, r0
_080EA12E:
	lsls r2, r2, #0x06
	ldr r0, _080EA140 @ =0xFFFFF03F
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #0x08]
_080EA138:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080EA140: .4byte 0xFFFFF03F
	thumb_func_start sub_80EA144
sub_80EA144:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r1
	adds r5, r2, #0x0
	mov r10, r3
	ldm r5!, {r0}
	mov r8, r0
	ldm r5!, {r0}
	cmp r0, #0x01
	bne _080EA162
	b _080EA266
_080EA162:
	cmp r0, #0x01
	bgt _080EA16C
	cmp r0, #0x00
	beq _080EA174
	b _080EA32A
_080EA16C:
	cmp r0, #0x02
	bne _080EA172
	b _080EA2CE
_080EA172:
	b _080EA32A
_080EA174:
	ldm r5!, {r3}
	asrs r0, r3, #0x07
	subs r0, #0x01
	cmp r0, #0x05
	bhi _080EA200
	lsls r0, r0, #0x02
	ldr r1, _080EA188 @ =0x080EA18C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080EA188: .4byte 0x080EA18C
	.byte 0xA4, 0xA1, 0x0E, 0x08, 0xB4, 0xA1, 0x0E, 0x08, 0xD4, 0xA1, 0x0E, 0x08, 0xC4, 0xA1, 0x0E, 0x08
	.byte 0xFC, 0xA1, 0x0E, 0x08, 0xE4, 0xA1, 0x0E, 0x08, 0x02, 0x48, 0x7F, 0x21, 0x19, 0x40, 0xBA, 0x31
	.byte 0x20, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x02, 0x48, 0x7F, 0x21, 0x19, 0x40, 0xF2, 0x31
	.byte 0x18, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x02, 0x48, 0x7F, 0x21, 0x19, 0x40, 0x8A, 0x31
	.byte 0x10, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x02, 0x48, 0x7F, 0x21, 0x19, 0x40, 0xAA, 0x31
	.byte 0x08, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x04, 0x48, 0x7F, 0x21, 0x19, 0x40, 0x95, 0x22
	.byte 0x52, 0x00, 0x89, 0x18, 0x00, 0x68, 0x46, 0x18, 0x04, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x04, 0x3D, 0x66, 0xE0
_080EA200:
	ldrb r0, [r6, #0x00]
	movs r1, #0x00
	cmp r0, #0xFF
	beq _080EA20A
	adds r1, r0, #0x0
_080EA20A:
	adds r4, r1, #0x0
	ldm r5!, {r0}
	cmp r0, #0x00
	beq _080EA218
	cmp r0, #0x01
	beq _080EA24A
	b _080EA32A
_080EA218:
	ldr r2, [r5, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r3, #0x07
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x7F
	ands r3, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r3, #0x0
	bl sub_8122E30
	movs r2, #0x00
	ldrb r1, [r6, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _080EA246
	movs r2, #0x01
_080EA246:
	adds r7, r2, #0x0
	b _080EA32A
_080EA24A:
	ldr r1, [r5, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	bge _080EA260
	movs r0, #0x00
	strb r0, [r6, #0x00]
	b _080EA328
_080EA260:
	strb r4, [r6, #0x00]
	movs r7, #0x01
	b _080EA32A
_080EA266:
	adds r5, #0x04
	ldm r5!, {r0}
	cmp r0, #0x00
	beq _080EA27C
	cmp r0, #0x01
	beq _080EA2A4
	ldr r2, _080EA278 @ =0x03000FF4
	b _080EA2C6
	.byte 0x00, 0x00
_080EA278: .4byte 0x03000FF4
_080EA27C:
	ldr r2, _080EA29C @ =0x03000FF4
	ldr r0, [r2, #0x00]
	adds r0, #0x88
	ldr r1, [r5, #0x00]
	ldrh r0, [r0, #0x00]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080EA2A0 @ =0x0000270F
	cmp r0, r1
	ble _080EA2C4
	adds r4, r1, #0x0
	movs r7, #0x00
	b _080EA2C6
	.byte 0x00, 0x00
_080EA29C: .4byte 0x03000FF4
_080EA2A0: .4byte 0x0000270F
_080EA2A4:
	ldr r2, _080EA2C0 @ =0x03000FF4
	ldr r0, [r2, #0x00]
	adds r0, #0x88
	ldr r1, [r5, #0x00]
	ldrh r0, [r0, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	bge _080EA2C4
	movs r4, #0x00
	movs r7, #0x00
	b _080EA2C6
	.byte 0x00, 0x00
_080EA2C0: .4byte 0x03000FF4
_080EA2C4:
	movs r7, #0x01
_080EA2C6:
	ldr r0, [r2, #0x00]
	adds r0, #0x88
	strh r4, [r0, #0x00]
	b _080EA32A
_080EA2CE:
	ldr r1, _080EA300 @ =0x03000FF4
	ldr r2, [r5, #0x00]
	movs r0, #0x7F
	ands r0, r2
	asrs r0, r0, #0x03
	adds r0, #0xB2
	ldr r1, [r1, #0x00]
	adds r6, r1, r0
	adds r1, r2, #0x0
	cmp r2, #0x00
	bge _080EA2E6
	adds r1, r2, #0x7
_080EA2E6:
	asrs r1, r1, #0x03
	lsls r1, r1, #0x03
	subs r1, r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x09
	lsls r0, r1
	lsrs r4, r0, #0x10
	ldr r1, [r5, #0x04]
	cmp r1, #0x00
	beq _080EA304
	cmp r1, #0x01
	beq _080EA314
	b _080EA32A
_080EA300: .4byte 0x03000FF4
_080EA304:
	ldrb r1, [r6, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _080EA328
	orrs r1, r4
	b _080EA322
_080EA314:
	ldrb r1, [r6, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080EA328
	bics r1, r4
_080EA322:
	strb r1, [r6, #0x00]
	movs r7, #0x01
	b _080EA32A
_080EA328:
	movs r7, #0x00
_080EA32A:
	mov r0, r8
	cmp r0, #0x00
	blt _080EA346
	mov r1, r9
	adds r1, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C__FPUiN30sUi
_080EA346:
	movs r0, #0x01
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80EA358
sub_80EA358:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r1, #0x0
	adds r6, r3, #0x0
	ldm r2!, {r3}
	ldr r0, [r2, #0x00]
	cmp r0, #0xFF
	bne _080EA378
	ldr r0, _080EA374 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x88
	ldrh r4, [r0, #0x00]
	b _080EA452
	.byte 0x00, 0x00
_080EA374: .4byte 0x03000FF4
_080EA378:
	asrs r0, r0, #0x07
	subs r0, #0x01
	cmp r0, #0x05
	bhi _080EA44C
	lsls r0, r0, #0x02
	ldr r1, _080EA38C @ =0x080EA390
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EA38C: .4byte 0x080EA390
	.byte 0xA8, 0xA3, 0x0E, 0x08, 0xC0, 0xA3, 0x0E, 0x08, 0xF0, 0xA3, 0x0E, 0x08, 0xD8, 0xA3, 0x0E, 0x08
	.byte 0x24, 0xA4, 0x0E, 0x08, 0x08, 0xA4, 0x0E, 0x08, 0x10, 0x68, 0x7F, 0x21, 0x08, 0x40, 0x03, 0x49
	.byte 0x09, 0x68, 0x40, 0x18, 0xBA, 0x30, 0x04, 0x78, 0x48, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x10, 0x68, 0x7F, 0x21, 0x08, 0x40, 0x03, 0x49, 0x09, 0x68, 0x40, 0x18, 0xF2, 0x30, 0x04, 0x78
	.byte 0x3C, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x10, 0x68, 0x7F, 0x21, 0x08, 0x40, 0x03, 0x49
	.byte 0x09, 0x68, 0x40, 0x18, 0x8A, 0x30, 0x04, 0x78, 0x30, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x10, 0x68, 0x7F, 0x21, 0x08, 0x40, 0x03, 0x49, 0x09, 0x68, 0x40, 0x18, 0xAA, 0x30, 0x04, 0x78
	.byte 0x24, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x10, 0x68, 0x7F, 0x21, 0x08, 0x40, 0x04, 0x49
	.byte 0x09, 0x68, 0x40, 0x18, 0x95, 0x21, 0x49, 0x00, 0x40, 0x18, 0x04, 0x78, 0x16, 0xE0, 0x00, 0x00
	.byte 0xF4, 0x0F, 0x00, 0x03, 0x12, 0x68, 0x7F, 0x20, 0x10, 0x40, 0xC0, 0x10, 0x11, 0x49, 0x09, 0x68
	.byte 0x40, 0x18, 0xB2, 0x30, 0x01, 0x78, 0x10, 0x1C, 0x00, 0x2A, 0x00, 0xDA, 0xD0, 0x1D, 0xC0, 0x10
	.byte 0xC0, 0x00, 0x10, 0x1A, 0x0C, 0x1C, 0x04, 0x41, 0x01, 0x20, 0x04, 0x40
_080EA44C:
	cmp r4, #0xFF
	bne _080EA452
	movs r4, #0x00
_080EA452:
	adds r1, r5, #0x0
	adds r1, #0x18
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C__FPUiN30sUi
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	thumb_func_start sub_80EA478
sub_80EA478:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	mov r8, r1
	adds r5, r2, #0x0
	mov r7, r8
	adds r7, #0xA6
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	adds r4, r0, #0x0
	adds r4, #0x54
	ldr r0, [r5, #0x00]
	movs r1, #0x19
	negs r1, r1
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x03
	bne _080EA4A8
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	b _080EA4B0
_080EA4A8:
	cmp r6, #0x04
	bne _080EA4B2
	ldr r0, [r4, #0x00]
	subs r0, #0x01
_080EA4B0:
	str r0, [r4, #0x00]
_080EA4B2:
	ldrb r1, [r5, #0x04]
	ldr r2, [r5, #0x08]
	ldr r3, [r4, #0x00]
	mov r0, r12
	bl script_test_condition
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	beq _080EA4E0
	ldr r0, [r5, #0x0C]
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _080EA4F4
	ldrb r0, [r7, #0x00]
	subs r0, #0x01
	strb r0, [r7, #0x00]
	movs r0, #0x00
	b _080EA506
_080EA4E0:
	ldr r0, [r5, #0x00]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x18
	bne _080EA4F4
	ldrb r0, [r7, #0x00]
	subs r0, #0x01
	strb r0, [r7, #0x00]
	str r2, [r4, #0x00]
	b _080EA508
_080EA4F4:
	cmp r6, #0x01
	bne _080EA4FE
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	b _080EA506
_080EA4FE:
	cmp r6, #0x02
	bne _080EA508
	ldr r0, [r4, #0x00]
	subs r0, #0x01
_080EA506:
	str r0, [r4, #0x00]
_080EA508:
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80EA514
sub_80EA514:
	push {r4, lr}
	ldr r0, [sp, #0x008]
	ldr r4, [sp, #0x00C]
	str r2, [r1, #0x08]
	str r3, [r1, #0x0C]
	adds r2, r1, #0x0
	adds r2, #0xA2
	strh r0, [r2, #0x00]
	adds r1, #0xA5
	strb r4, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80EA530
sub_80EA530:
	push {r4, r5, lr}
	ldr r4, [sp, #0x00C]
	ldr r5, [sp, #0x010]
	str r2, [r1, #0x00]
	str r3, [r1, #0x04]
	movs r0, #0x00
	str r0, [r1, #0x10]
	adds r0, r1, #0x0
	adds r0, #0xA0
	strh r4, [r0, #0x00]
	adds r1, #0xA4
	strb r5, [r1, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80EA550
sub_80EA550:
	push {lr}
	adds r3, r1, #0x0
	adds r0, r3, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080EA56C
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080EA580 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #0x00]
_080EA56C:
	movs r1, #0x00
	str r1, [r3, #0x0C]
	str r1, [r3, #0x08]
	adds r0, r3, #0x0
	adds r0, #0xA5
	strb r1, [r0, #0x00]
	subs r0, #0x03
	strh r1, [r0, #0x00]
	pop {r0}
	bx r0
_080EA580: .4byte 0x0000FFFB
	thumb_func_start sub_80EA584
sub_80EA584:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	add sp, #-0x008
	adds r6, r0, #0x0
	mov r8, r1
	mov r9, r2
	mov r10, r3
	ldr r4, [sp, #0x024]
	ldr r5, [sp, #0x028]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	bl sub_80EA550
	str r4, [sp, #0x000]
	str r5, [sp, #0x004]
	adds r0, r6, #0x0
	mov r1, r8
	mov r2, r9
	mov r3, r10
	bl sub_80EA514
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_80EA5C8
sub_80EA5C8:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	add sp, #-0x008
	adds r6, r0, #0x0
	mov r8, r1
	mov r9, r2
	mov r10, r3
	ldr r4, [sp, #0x024]
	ldr r5, [sp, #0x028]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	bl sub_80EA550
	str r4, [sp, #0x000]
	str r5, [sp, #0x004]
	adds r0, r6, #0x0
	mov r1, r8
	mov r2, r9
	mov r3, r10
	bl sub_80EA530
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_80EA60C
sub_80EA60C:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [sp, #0x00C]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r4, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	eors r1, r0
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x11]
	cmp r3, #0x00
	beq _080EA658
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r3, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	b _080EA660
_080EA658:
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
_080EA660:
	strb r0, [r4, #0x12]
	movs r0, #0x00
	cmp r3, #0x00
	bne _080EA66A
	movs r0, #0x01
_080EA66A:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80EA670
sub_80EA670:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r1, r2, #0x0
	ldr r0, [sp, #0x00C]
	subs r4, r3, r4
	subs r1, r0, r1
	movs r3, #0x00
	movs r5, #0x00
	cmp r4, #0x00
	bge _080EA688
	movs r3, #0x01
	negs r4, r4
_080EA688:
	cmp r1, #0x00
	bge _080EA690
	movs r5, #0x01
	negs r1, r1
_080EA690:
	adds r0, r4, #0x0
	orrs r0, r1
	ldr r2, _080EA698 @ =0xFFFF8000
	b _080EA6A4
_080EA698: .4byte 0xFFFF8000
_080EA69C:
	asrs r4, r4, #0x01
	asrs r1, r1, #0x01
	adds r0, r4, #0x0
	orrs r0, r1
_080EA6A4:
	ands r0, r2
	cmp r0, #0x00
	bne _080EA69C
	cmp r3, #0x00
	beq _080EA6B0
	negs r4, r4
_080EA6B0:
	cmp r5, #0x00
	beq _080EA6B6
	negs r1, r1
_080EA6B6:
	adds r0, r4, #0x0
	bl sub_8199480
	adds r1, r0, #0x0
	adds r0, #0x50
	cmp r0, #0x00
	bge _080EA6C6
	adds r0, #0x1F
_080EA6C6:
	asrs r0, r0, #0x05
	movs r1, #0x07
	ands r0, r1
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EA6D4
sub_80EA6D4:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	ldr r5, [sp, #0x00C]
	movs r0, #0x00
	str r0, [r5, #0x00]
	str r0, [r3, #0x00]
	str r0, [r2, #0x00]
	ldm r4!, {r0}
	cmp r0, #0x09
	bhi _080EA75A
	lsls r0, r0, #0x02
	ldr r1, _080EA6F4 @ =0x080EA6F8
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EA6F4: .4byte 0x080EA6F8
	.byte 0x48, 0xA7, 0x0E, 0x08, 0x20, 0xA7, 0x0E, 0x08, 0x24, 0xA7, 0x0E, 0x08, 0x2A, 0xA7, 0x0E, 0x08
	.byte 0x34, 0xA7, 0x0E, 0x08, 0x2E, 0xA7, 0x0E, 0x08, 0x3A, 0xA7, 0x0E, 0x08, 0x42, 0xA7, 0x0E, 0x08
	.byte 0x50, 0xA7, 0x0E, 0x08, 0x54, 0xA7, 0x0E, 0x08, 0x20, 0x68, 0x10, 0xE0, 0x20, 0x68, 0x10, 0x60
	.byte 0x17, 0xE0, 0x20, 0x68, 0x01, 0xE0, 0x20, 0x68, 0x40, 0x42, 0x10, 0x60, 0x20, 0x68, 0x18, 0x60
	.byte 0x0F, 0xE0, 0x20, 0x68, 0x40, 0x42, 0x10, 0x60, 0x0B, 0xE0, 0x20, 0x68, 0x40, 0x42, 0x10, 0x60
	.byte 0x20, 0x68, 0x40, 0x42, 0x18, 0x60, 0x04, 0xE0, 0x20, 0x68, 0x01, 0xE0, 0x20, 0x68, 0x40, 0x42
	.byte 0x28, 0x60
_080EA75A:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _080EA772
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x04
	str r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x04
	str r0, [r3, #0x00]
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x04
	str r0, [r5, #0x00]
_080EA772:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80EA778
sub_80EA778:
	push {lr}
	adds r2, r1, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080EA792
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080EA798 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2, #0x00]
_080EA792:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080EA798: .4byte 0x0000FFEF
	thumb_func_start script_test_condition
script_test_condition: @ 080EA79C
	push {lr}
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0x0C
	bhi _080EA84C
	lsls r0, r0, #0x02
	ldr r1, _080EA7B0 @ =0x080EA7B4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080EA7B0: .4byte 0x080EA7B4
	.byte 0xE8, 0xA7, 0x0E, 0x08, 0xF2, 0xA7, 0x0E, 0x08, 0xFE, 0xA7, 0x0E, 0x08, 0x08, 0xA8, 0x0E, 0x08
	.byte 0x12, 0xA8, 0x0E, 0x08, 0x1C, 0xA8, 0x0E, 0x08, 0x4C, 0xA8, 0x0E, 0x08, 0x4C, 0xA8, 0x0E, 0x08
	.byte 0x26, 0xA8, 0x0E, 0x08, 0x32, 0xA8, 0x0E, 0x08, 0x38, 0xA8, 0x0E, 0x08, 0x3E, 0xA8, 0x0E, 0x08
	.byte 0x48, 0xA8, 0x0E, 0x08, 0x00, 0x20, 0x9A, 0x42, 0x2F, 0xD1, 0x01, 0x20, 0x2D, 0xE0, 0x11, 0x1C
	.byte 0x59, 0x40, 0x48, 0x42, 0x08, 0x43, 0xC0, 0x0F, 0x27, 0xE0, 0x00, 0x20, 0x9A, 0x42, 0x24, 0xDA
	.byte 0x01, 0x20, 0x22, 0xE0, 0x00, 0x20, 0x9A, 0x42, 0x1F, 0xDD, 0x01, 0x20, 0x1D, 0xE0, 0x00, 0x20
	.byte 0x9A, 0x42, 0x1A, 0xDC, 0x01, 0x20, 0x18, 0xE0, 0x00, 0x20, 0x9A, 0x42, 0x15, 0xDB, 0x01, 0x20
	.byte 0x13, 0xE0, 0x10, 0x1C, 0x18, 0x43, 0x00, 0x28, 0x0F, 0xD0, 0x01, 0x20, 0x0D, 0xE0, 0x10, 0x1C
	.byte 0x18, 0x40, 0xF8, 0xE7, 0x10, 0x1C, 0x58, 0x40, 0xF5, 0xE7, 0x00, 0x20, 0x00, 0x2A, 0x04, 0xD1
	.byte 0x01, 0x20, 0x02, 0xE0, 0xD0, 0x43, 0xEE, 0xE7
_080EA84C:
	movs r0, #0x00
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EA854
sub_80EA854:
	push {r4, r5, lr}
	add sp, #-0x008
	ldr r0, [r2, #0x04]
	cmp r0, #0x00
	bne _080EA868
	ldr r0, _080EA888 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r0, r0, r4
	ldrb r4, [r0, #0x00]
_080EA868:
	adds r1, #0x18
	movs r5, #0x00
	ldsh r0, [r2, r5]
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	adds r0, r3, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C__FPUiN30sUi
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EA888: .4byte 0x0300034C
	thumb_func_start sub_80EA88C
sub_80EA88C:
	push {lr}
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080EA89E
	ldrh r0, [r2, #0x00]
	ldrh r1, [r2, #0x04]
	ldr r2, [r2, #0x08]
	bl sub_801ABE8
_080EA89E:
	movs r0, #0x01
	pop {r1}
	bx r1
	thumb_func_start sub_80EA8A4
sub_80EA8A4:
	push {lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080EA8C6
	cmp r2, #0x01
	bgt _080EA8B6
	cmp r2, #0x00
	beq _080EA8C0
	b _080EA8D6
_080EA8B6:
	cmp r2, #0x02
	beq _080EA8CC
	cmp r2, #0x03
	beq _080EA8D2
	b _080EA8D6
_080EA8C0:
	bl reset_game_80189C4
	b _080EA8D6
_080EA8C6:
	bl sub_801ADC0
	b _080EA8D6
_080EA8CC:
	bl sub_801AD80
	b _080EA8D6
_080EA8D2:
	bl sub_801AD3C
_080EA8D6:
	movs r0, #0x01
	pop {r1}
	bx r1
	thumb_func_start sub_80EA8DC
sub_80EA8DC:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldrb r1, [r4, #0x00]
	ldr r2, [r4, #0x04]
	adds r3, r5, #0x0
	adds r3, #0x98
	ldr r3, [r3, #0x00]
	bl script_test_condition
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080EA8FA
	ldr r0, [r4, #0x08]
	str r0, [r5, #0x00]
_080EA8FA:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EA904
sub_80EA904:
	adds r2, r1, #0x0
	adds r2, #0xA6
	ldrb r0, [r2, #0x00]
	subs r0, #0x01
	strb r0, [r2, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x58]
	movs r0, #0x01
	bx lr
	thumb_func_start sub_80EA91C
sub_80EA91C:
	adds r1, #0x98
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_80EA928
sub_80EA928:
	adds r3, r1, #0x0
	adds r3, #0xA6
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x58]
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	strb r0, [r3, #0x00]
	movs r0, #0x01
	bx lr
	thumb_func_start sub_80EA940
sub_80EA940:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	ldr r4, [r5, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x04]
	cmp r0, #0x00
	beq _080EA960
	str r0, [r6, #0x00]
_080EA960:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80EA968
sub_80EA968:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x008
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	mov r8, r3
	ldr r4, [r6, #0x04]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r5, #0x18
	movs r2, #0x00
	ldsh r1, [r6, r2]
	str r1, [sp, #0x000]
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C__FPUiN30sUi
	movs r0, #0x01
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80EA9A8
sub_80EA9A8:
	push {lr}
	ldrh r0, [r2, #0x00]
	bl sub_801B0AC
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EA9B8
sub_80EA9B8:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, _080EA9D4 @ =0x0300034C
	ldrh r5, [r0, #0x2E]
	ldr r2, [r4, #0x08]
	adds r3, r2, #0x0
	ldr r0, [r4, #0x04]
	adds r0, #0x0B
	cmp r0, #0x0B
	beq _080EA9D8
	cmp r0, #0x0C
	beq _080EA9DC
	b _080EA9E0
_080EA9D4: .4byte 0x0300034C
_080EA9D8:
	movs r2, #0x00
	b _080EA9E0
_080EA9DC:
	mvns r2, r2
	adds r3, r2, #0x0
_080EA9E0:
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080EA9F2
	ands r3, r5
	cmp r3, r2
	beq _080EA9FC
	b _080EA9F8
_080EA9F2:
	ands r3, r5
	cmp r3, r2
	bne _080EA9FC
_080EA9F8:
	ldr r0, [r4, #0x0C]
	str r0, [r6, #0x00]
_080EA9FC:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80EAA04
sub_80EAA04:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	ldr r1, _080EAA2C @ =0x0300034C
	ldrh r5, [r1, #0x28]
	ldr r0, [r4, #0x00]
	asrs r0, r0, #0x01
	cmp r0, #0x00
	bne _080EAA18
	ldrh r5, [r1, #0x2A]
_080EAA18:
	ldr r2, [r4, #0x08]
	adds r3, r2, #0x0
	ldr r0, [r4, #0x04]
	adds r0, #0x0B
	cmp r0, #0x0B
	beq _080EAA30
	cmp r0, #0x0C
	beq _080EAA34
	b _080EAA38
	.byte 0x00, 0x00
_080EAA2C: .4byte 0x0300034C
_080EAA30:
	movs r2, #0x00
	b _080EAA38
_080EAA34:
	mvns r2, r2
	adds r3, r2, #0x0
_080EAA38:
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080EAA4A
	ands r3, r5
	cmp r3, r2
	beq _080EAA54
	b _080EAA50
_080EAA4A:
	ands r3, r5
	cmp r3, r2
	bne _080EAA54
_080EAA50:
	ldr r0, [r4, #0x0C]
	str r0, [r6, #0x00]
_080EAA54:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80EAA5C
sub_80EAA5C:
	push {lr}
	add sp, #-0x008
	adds r0, r3, #0x0
	adds r1, #0x18
	movs r3, #0x00
	ldsh r2, [r2, r3]
	str r2, [sp, #0x000]
	ldr r2, _080EAA80 @ =0x0300034C
	ldrh r2, [r2, #0x2E]
	str r2, [sp, #0x004]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C__FPUiN30sUi
	movs r0, #0x01
	add sp, #0x008
	pop {r1}
	bx r1
_080EAA80: .4byte 0x0300034C
	thumb_func_start sub_80EAA84
sub_80EAA84:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r2, #0x0
	ldrh r2, [r4, #0x04]
	cmp r2, #0x00
	bne _080EAA9C
	ldr r0, _080EAA98 @ =0x0300034C
	ldrh r2, [r0, #0x2A]
	b _080EAAAE
	.byte 0x00, 0x00
_080EAA98: .4byte 0x0300034C
_080EAA9C:
	cmp r2, #0x01
	bne _080EAAAC
	ldr r0, _080EAAA8 @ =0x0300034C
	ldrh r2, [r0, #0x28]
	b _080EAAAE
	.byte 0x00, 0x00
_080EAAA8: .4byte 0x0300034C
_080EAAAC:
	movs r2, #0x00
_080EAAAE:
	adds r1, #0x18
	movs r5, #0x00
	ldsh r0, [r4, r5]
	str r0, [sp, #0x000]
	str r2, [sp, #0x004]
	adds r0, r3, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C__FPUiN30sUi
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80EAACC
sub_80EAACC:
	push {lr}
	ldr r3, _080EAAF4 @ =0x0300034C
	ldr r0, [r2, #0x00]
	ldr r1, _080EAAF8 @ =0x000003FF
	adds r2, r1, #0x0
	adds r1, r2, #0x0
	bics r1, r0
	adds r3, #0x78
	ands r1, r2
	ldrh r2, [r3, #0x00]
	ldr r0, _080EAAFC @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x00]
	bl sub_8018818
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EAAF4: .4byte 0x0300034C
_080EAAF8: .4byte 0x000003FF
_080EAAFC: .4byte 0xFFFFFC00
	thumb_func_start sub_80EAB00
sub_80EAB00:
	ldr r3, _080EAB1C @ =0x0300034C
	adds r3, #0x79
	movs r0, #0x03
	ldrb r1, [r2, #0x00]
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x01
	bx lr
_080EAB1C: .4byte 0x0300034C
	thumb_func_start sub_80EAB20
sub_80EAB20:
	push {lr}
	ldm r2!, {r0}
	cmp r0, #0x01
	beq _080EAB48
	cmp r0, #0x01
	bgt _080EAB32
	cmp r0, #0x00
	beq _080EAB38
	b _080EAB64
_080EAB32:
	cmp r0, #0x02
	beq _080EAB58
	b _080EAB64
_080EAB38:
	ldr r0, _080EAB44 @ =0x0300034C
	adds r0, #0x7C
	ldr r1, [r2, #0x00]
	ldrh r2, [r0, #0x00]
	orrs r1, r2
	b _080EAB62
_080EAB44: .4byte 0x0300034C
_080EAB48:
	ldr r0, _080EAB54 @ =0x0300034C
	adds r0, #0x7A
	ldr r1, [r2, #0x00]
	ldrh r2, [r0, #0x00]
	orrs r1, r2
	b _080EAB62
_080EAB54: .4byte 0x0300034C
_080EAB58:
	ldr r0, _080EAB6C @ =0x0300034C
	adds r0, #0x7A
	ldr r2, [r2, #0x00]
	ldrh r1, [r0, #0x00]
	bics r1, r2
_080EAB62:
	strh r1, [r0, #0x00]
_080EAB64:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EAB6C: .4byte 0x0300034C
	thumb_func_start script_cmd_conditional_jump
script_cmd_conditional_jump: @ 080EAB70
	push {r4, r5, lr}
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldrb r1, [r4, #0x00]
	ldr r2, [r4, #0x04]
	ldr r3, [r4, #0x08]
	bl script_test_condition
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r4, #0x0C]
	cmp r0, r1
	bne _080EAB8E
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x00]
_080EAB8E:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EAB98
sub_80EAB98:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	adds r6, r3, #0x0
	ldr r0, [r4, #0x04]
	cmp r0, #0x0C
	bhi _080EAC54
	lsls r0, r0, #0x02
	ldr r1, _080EABB4 @ =0x080EABB8
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EABB4: .4byte 0x080EABB8
	.byte 0x54, 0xAC, 0x0E, 0x08, 0xEC, 0xAB, 0x0E, 0x08, 0xF4, 0xAB, 0x0E, 0x08, 0xFC, 0xAB, 0x0E, 0x08
	.byte 0x04, 0xAC, 0x0E, 0x08, 0x0E, 0xAC, 0x0E, 0x08, 0x18, 0xAC, 0x0E, 0x08, 0x20, 0xAC, 0x0E, 0x08
	.byte 0x28, 0xAC, 0x0E, 0x08, 0x30, 0xAC, 0x0E, 0x08, 0x38, 0xAC, 0x0E, 0x08, 0x40, 0xAC, 0x0E, 0x08
	.byte 0x4E, 0xAC, 0x0E, 0x08, 0xA0, 0x68, 0xE1, 0x68, 0x40, 0x18, 0x2E, 0xE0, 0xA0, 0x68, 0xE1, 0x68
	.byte 0x40, 0x1A, 0x2A, 0xE0, 0xA0, 0x68, 0xE1, 0x68, 0x48, 0x43, 0x26, 0xE0, 0xA0, 0x68, 0xE1, 0x68
	.byte 0xEF, 0xF0, 0x4C, 0xFF, 0x21, 0xE0, 0xA0, 0x68, 0xE1, 0x68, 0xEF, 0xF0, 0x93, 0xFF, 0x1C, 0xE0
	.byte 0xA0, 0x68, 0xE1, 0x68, 0x88, 0x40, 0x18, 0xE0, 0xA0, 0x68, 0xE1, 0x68, 0x08, 0x41, 0x14, 0xE0
	.byte 0xA0, 0x68, 0xE1, 0x68, 0x08, 0x40, 0x10, 0xE0, 0xA0, 0x68, 0xE1, 0x68, 0x08, 0x43, 0x0C, 0xE0
	.byte 0xA0, 0x68, 0xE1, 0x68, 0x48, 0x40, 0x08, 0xE0, 0x00, 0x21, 0xA0, 0x68, 0x00, 0x28, 0x00, 0xD1
	.byte 0x01, 0x21, 0xA1, 0x60, 0x02, 0xE0, 0xA0, 0x68, 0xC0, 0x43, 0xA0, 0x60
_080EAC54:
	adds r1, r5, #0x0
	adds r1, #0x18
	movs r2, #0x00
	ldsh r0, [r4, r2]
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	ldr r2, [sp, #0x018]
	ldr r3, [sp, #0x01C]
	bl sub_80E9C4C__FPUiN30sUi
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EAC78
sub_80EAC78:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r1, #0x0
	adds r7, r3, #0x0
	ldm r2!, {r5}
	ldr r3, _080EACA0 @ =0x03000FF4
	ldm r2!, {r1}
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, [r3, #0x00]
	adds r1, r1, r0
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080EACB2
	cmp r2, #0x01
	bgt _080EACA4
	cmp r2, #0x00
	beq _080EACAE
	b _080EACBC
_080EACA0: .4byte 0x03000FF4
_080EACA4:
	cmp r2, #0x02
	beq _080EACB6
	cmp r2, #0x03
	beq _080EACBA
	b _080EACBC
_080EACAE:
	ldrh r4, [r1, #0x0E]
	b _080EACBC
_080EACB2:
	ldrh r4, [r1, #0x12]
	b _080EACBC
_080EACB6:
	ldrh r4, [r1, #0x14]
	b _080EACBC
_080EACBA:
	ldrh r4, [r1, #0x18]
_080EACBC:
	adds r1, r6, #0x0
	adds r1, #0x18
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C__FPUiN30sUi
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80EACDC
sub_80EACDC:
	push {r4, lr}
	add sp, #-0x008
	ldr r0, [r2, #0x04]
	cmp r0, #0x01
	beq _080EAD10
	cmp r0, #0x01
	bgt _080EACF0
	cmp r0, #0x00
	beq _080EACFA
	b _080EAD6C
_080EACF0:
	cmp r0, #0x02
	beq _080EAD24
	cmp r0, #0x03
	beq _080EAD4C
	b _080EAD6C
_080EACFA:
	adds r1, #0x18
	movs r4, #0x00
	ldsh r0, [r2, r4]
	str r0, [sp, #0x000]
	ldr r0, _080EAD0C @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x22
	b _080EAD32
	.byte 0x00, 0x00
_080EAD0C: .4byte 0x03000D44
_080EAD10:
	adds r1, #0x18
	movs r4, #0x00
	ldsh r0, [r2, r4]
	str r0, [sp, #0x000]
	ldr r0, _080EAD20 @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	b _080EAD32
_080EAD20: .4byte 0x03000D44
_080EAD24:
	adds r1, #0x18
	movs r4, #0x00
	ldsh r0, [r2, r4]
	str r0, [sp, #0x000]
	ldr r0, _080EAD48 @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x25
_080EAD32:
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C__FPUiN30sUi
	b _080EAD6C
	.byte 0x00, 0x00
_080EAD48: .4byte 0x03000D44
_080EAD4C:
	adds r1, #0x18
	movs r4, #0x00
	ldsh r0, [r2, r4]
	str r0, [sp, #0x000]
	ldr r0, _080EAD78 @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C__FPUiN30sUi
_080EAD6C:
	movs r0, #0x01
	add sp, #0x008
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EAD78: .4byte 0x03000D44
	thumb_func_start sub_80EAD7C
sub_80EAD7C:
	ldr r3, _080EAD94 @ =0x03000D44
	ldr r0, [r3, #0x00]
	ldm r2!, {r1}
	adds r0, #0x26
	strb r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ldr r1, [r2, #0x00]
	adds r0, #0x27
	strb r1, [r0, #0x00]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
_080EAD94: .4byte 0x03000D44
	thumb_func_start sub_80EAD98
sub_80EAD98:
	push {lr}
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080EADB0
	ldr r0, _080EADAC @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x29
	movs r1, #0x01
	b _080EADB8
	.byte 0x00, 0x00
_080EADAC: .4byte 0x03000D44
_080EADB0:
	ldr r0, _080EADC0 @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x29
	movs r1, #0xFF
_080EADB8:
	strb r1, [r0, #0x00]
	movs r0, #0x01
	pop {r1}
	bx r1
_080EADC0: .4byte 0x03000D44
	thumb_func_start sub_80EADC4
sub_80EADC4:
	push {r4, lr}
	ldr r0, _080EADE4 @ =0x03000D44
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r4, #0x04
	ldsb r4, [r2, r4]
	movs r3, #0x08
	ldsb r3, [r2, r3]
	adds r2, r4, #0x0
	bl sub_801BBE4
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_080EADE4: .4byte 0x03000D44
	.byte 0x01, 0x20, 0x70, 0x47
	thumb_func_start sub_80EADEC
sub_80EADEC:
	push {r4, r5, lr}
	adds r4, r2, #0x0
	adds r5, r3, #0x0
	movs r3, #0x00
	ldr r2, [r1, #0x00]
_080EADF6:
	ldrb r0, [r2, #0x0F]
	cmp r0, #0x00
	beq _080EAE10
	ldrb r0, [r2, #0x0C]
	ldr r1, [r5, #0x00]
	cmp r0, r1
	beq _080EAE08
	cmp r1, #0x3F
	bne _080EAE10
_080EAE08:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080EAE24
_080EAE10:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	adds r2, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080EADF6
	movs r0, #0x01
_080EAE24:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x01, 0x20, 0x70, 0x47
	thumb_func_start sub_80EAE30
sub_80EAE30:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r3, #0x0
	movs r3, #0x00
	ldr r2, [r4, #0x00]
	b _080EAE48
_080EAE3C:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	adds r2, #0x10
_080EAE48:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	bgt _080EAE68
	ldrb r0, [r2, #0x0F]
	cmp r0, #0x00
	beq _080EAE3C
	ldrb r1, [r2, #0x0C]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	bne _080EAE3C
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	bl sub_80E8EE0
_080EAE68:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80EAE70
sub_80EAE70:
	push {lr}
	add sp, #-0x008
	adds r0, r3, #0x0
	adds r1, #0x18
	movs r3, #0x00
	ldsh r2, [r2, r3]
	str r2, [sp, #0x000]
	ldr r2, _080EAE98 @ =0x03000FB8
	ldr r2, [r2, #0x00]
	adds r2, #0x30
	ldrb r2, [r2, #0x00]
	str r2, [sp, #0x004]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C__FPUiN30sUi
	movs r0, #0x01
	add sp, #0x008
	pop {r1}
	bx r1
_080EAE98: .4byte 0x03000FB8
	thumb_func_start sub_80EAE9C
sub_80EAE9C:
	push {lr}
	adds r3, r1, #0x0
	ldr r0, _080EAEB8 @ =0x03000FB8
	ldr r0, [r0, #0x00]
	adds r0, #0x30
	ldrb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bne _080EAEB2
	ldr r0, [r2, #0x04]
	str r0, [r3, #0x00]
_080EAEB2:
	movs r0, #0x01
	pop {r1}
	bx r1
_080EAEB8: .4byte 0x03000FB8
	thumb_func_start sub_80EAEBC
sub_80EAEBC:
	push {lr}
	ldr r0, [r1, #0x04]
	movs r1, #0xD9
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ldm r3!, {r1}
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080EAED8
	ldr r0, [r3, #0x00]
	str r0, [r2, #0x00]
_080EAED8:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EAEE0
sub_80EAEE0:
	push {lr}
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080EAEF0
	ldrb r0, [r2, #0x04]
	ldrb r1, [r2, #0x00]
	bl sub_8019508
_080EAEF0:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EAEF8
sub_80EAEF8:
	push {r4, lr}
	adds r4, r1, #0x0
	ldm r2!, {r1}
	cmp r1, #0x01
	beq _080EAF1E
	cmp r1, #0x01
	bgt _080EAF0C
	cmp r1, #0x00
	beq _080EAF12
	b _080EAF44
_080EAF0C:
	cmp r1, #0x02
	beq _080EAF30
	b _080EAF44
_080EAF12:
	ldr r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _080EAF44
_080EAF1E:
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _080EAF2A
	bl stop_sfx_80195A8
	b _080EAF44
_080EAF2A:
	bl stop_all_sfx_801959C
	b _080EAF44
_080EAF30:
	ldr r0, [r2, #0x00]
	bl sub_8019588
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080EAF44
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080EAF46
_080EAF44:
	movs r0, #0x01
_080EAF46:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_80EAF4C
sub_80EAF4C:
	push {lr}
	ldm r2!, {r0}
	cmp r0, #0x01
	beq _080EAF80
	cmp r0, #0x01
	bgt _080EAF5E
	cmp r0, #0x00
	beq _080EAF68
	b _080EAFAE
_080EAF5E:
	cmp r0, #0x02
	beq _080EAF98
	cmp r0, #0x03
	beq _080EAFA4
	b _080EAFAE
_080EAF68:
	ldr r0, [r2, #0x08]
	cmp r0, #0x02
	bne _080EAF74
	movs r0, #0x01
	negs r0, r0
	str r0, [r2, #0x08]
_080EAF74:
	ldr r0, [r2, #0x00]
	ldr r1, [r2, #0x04]
	ldr r2, [r2, #0x08]
	bl sub_8019308
	b _080EAFAE
_080EAF80:
	ldr r0, [r2, #0x08]
	cmp r0, #0x02
	bne _080EAF8C
	movs r0, #0x01
	negs r0, r0
	str r0, [r2, #0x08]
_080EAF8C:
	ldr r0, [r2, #0x00]
	ldr r1, [r2, #0x08]
	ldrb r2, [r2, #0x04]
	bl sub_8019650
	b _080EAFAE
_080EAF98:
	ldr r0, [r2, #0x00]
	ldrb r1, [r2, #0x08]
	ldrb r2, [r2, #0x04]
	bl sub_80193B4
	b _080EAFAE
_080EAFA4:
	ldr r0, [r2, #0x00]
	ldrb r1, [r2, #0x08]
	ldrb r2, [r2, #0x04]
	bl sub_8019460
_080EAFAE:
	movs r0, #0x01
	pop {r1}
	bx r1
	thumb_func_start sub_80EAFB4
sub_80EAFB4:
	push {r4, lr}
	adds r4, r1, #0x0
	ldm r2!, {r0}
	cmp r0, #0x04
	bhi _080EB03E
	lsls r0, r0, #0x02
	ldr r1, _080EAFC8 @ =0x080EAFCC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080EAFC8: .4byte 0x080EAFCC
	.byte 0xE0, 0xAF, 0x0E, 0x08, 0xEE, 0xAF, 0x0E, 0x08, 0xFA, 0xAF, 0x0E, 0x08, 0x06, 0xB0, 0x0E, 0x08
	.byte 0x12, 0xB0, 0x0E, 0x08, 0x10, 0x68, 0x51, 0x68, 0x01, 0x22, 0x52, 0x42, 0x2E, 0xF7, 0x8E, 0xF9
	.byte 0x27, 0xE0, 0x10, 0x68, 0x51, 0x68, 0xFF, 0x22, 0x2E, 0xF7, 0x88, 0xF9, 0x21, 0xE0, 0x10, 0x68
	.byte 0x12, 0x79, 0xFF, 0x21, 0x2E, 0xF7, 0xD8, 0xF9, 0x1B, 0xE0, 0x10, 0x68, 0x12, 0x79, 0x00, 0x21
	.byte 0x2E, 0xF7, 0xD2, 0xF9, 0x15, 0xE0, 0x01, 0xCA, 0x00, 0x28, 0x12, 0xDB, 0x01, 0x28, 0x02, 0xDD
	.byte 0x02, 0x28, 0x04, 0xD0, 0x0D, 0xE0, 0x10, 0x68, 0x2E, 0xF7, 0x00, 0xFB, 0x09, 0xE0, 0x10, 0x68
	.byte 0x2E, 0xF7, 0xE4, 0xFA, 0x00, 0x06, 0x00, 0x28, 0x03, 0xD0, 0x60, 0x69, 0x20, 0x60, 0x00, 0x20
	.byte 0x00, 0xE0
_080EB03E:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EB048
sub_80EB048:
	ldr r0, _080EB058 @ =0x03000FB8
	ldr r0, [r0, #0x00]
	ldr r1, [r2, #0x00]
	adds r0, #0x32
	strb r1, [r0, #0x00]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
_080EB058: .4byte 0x03000FB8
	thumb_func_start sub_80EB05C
sub_80EB05C:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	ldm r3!, {r1}
	cmp r1, #0x00
	beq _080EB06E
	cmp r1, #0x01
	beq _080EB076
	b _080EB092
_080EB06E:
	ldrh r1, [r3, #0x00]
	bl sub_80E9330
	b _080EB092
_080EB076:
	ldr r0, [r0, #0x04]
	ldr r2, [r3, #0x00]
	movs r1, #0x4C
	muls r1, r2
	adds r0, r0, r1
	adds r0, #0x42
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	cmp r0, #0x00
	blt _080EB092
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080EB094
_080EB092:
	movs r0, #0x01
_080EB094:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EB09C
sub_80EB09C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r3, #0x0
	ldr r1, [r5, #0x00]
	cmp r1, #0x04
	bgt _080EB0C4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	bl sub_80E6FB8
	ldr r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x11
	lsls r1, r0
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	bl sub_80E7118
	b _080EB0D8
_080EB0C4:
	adds r0, r4, #0x0
	bl sub_80E6E68
	ldr r0, [r4, #0x04]
	ldr r1, _080EB0EC @ =0x000001B3
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_80E7118
_080EB0D8:
	ldr r0, _080EB0F0 @ =0x03000FB8
	ldr r0, [r0, #0x00]
	adds r0, #0x31
	movs r1, #0x00
	strb r1, [r0, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EB0EC: .4byte 0x000001B3
_080EB0F0: .4byte 0x03000FB8
	thumb_func_start script_cmd_wait_for_user_input
script_cmd_wait_for_user_input: @ 080EB0F4
	push {lr}
	ldr r0, [r1, #0x04]
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ldr r1, [r3, #0x00]
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080EB110
	movs r0, #0x01
	b _080EB116
_080EB110:
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x00]
	movs r0, #0x00
_080EB116:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EB11C
sub_80EB11C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r0, r1, #0x0
	ldr r1, [r3, #0x0C]
	ldr r4, [r3, #0x14]
	asrs r6, r1, #0x08
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r5, _080EB1A0 @ =0x083BA4B4
	movs r2, #0xFF
	ands r1, r2
	lsls r1, r1, #0x01
	adds r1, r1, r5
	ldrb r1, [r1, #0x00]
	mov r9, r1
	lsls r5, r4, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r1, r2, #0x0
	ands r5, r1
	adds r1, r4, #0x0
	subs r1, #0x80
	lsls r1, r1, #0x01
	movs r7, #0xC0
	lsls r7, r7, #0x02
	adds r2, r7, #0x0
	ands r1, r2
	orrs r5, r1
	lsls r1, r4, #0x01
	movs r2, #0xC0
	ands r1, r2
	orrs r5, r1
	movs r1, #0x1F
	ands r4, r1
	orrs r5, r4
	ldrb r1, [r3, #0x00]
	movs r4, #0x04
	ldsh r2, [r3, r4]
	movs r4, #0x08
	ldsh r7, [r3, r4]
	mov r8, r7
	str r6, [sp, #0x000]
	mov r7, r9
	str r7, [sp, #0x004]
	ldrh r4, [r3, #0x10]
	str r4, [sp, #0x008]
	str r5, [sp, #0x00C]
	ldrb r4, [r3, #0x18]
	str r4, [sp, #0x010]
	ldr r3, [r3, #0x1C]
	str r3, [sp, #0x014]
	mov r3, r8
	bl sub_80E5BCC
	movs r0, #0x01
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EB1A0: .4byte 0x083BA4B4
	.byte 0x70, 0xB5, 0x86, 0xB0, 0x08, 0x1C, 0x19, 0x78, 0x04, 0x24, 0x1A, 0x5F, 0x08, 0x24, 0x1E, 0x5F
	.byte 0xDD, 0x68, 0x2C, 0x12, 0x24, 0x06, 0x24, 0x0E, 0x00, 0x94, 0x2D, 0x06, 0x2D, 0x0E, 0x01, 0x95
	.byte 0x1C, 0x8A, 0x02, 0x94, 0x9C, 0x8A, 0x03, 0x94, 0x1C, 0x7E, 0x04, 0x94, 0xDB, 0x69, 0x05, 0x93
	.byte 0x33, 0x1C, 0xFA, 0xF7, 0xF9, 0xFC, 0x01, 0x20, 0x06, 0xB0, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47
	thumb_func_start script_cmd_wait_frames
script_cmd_wait_frames: @ 080EB1E4
	push {lr}
	adds r3, r1, #0x0
	adds r1, #0x9C
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080EB202
	adds r2, r3, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	b _080EB204
_080EB202:
	movs r0, #0x01
_080EB204:
	pop {r1}
	bx r1
	thumb_func_start script_cmd_call
script_cmd_call: @ 080EB208
	push {lr}
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	bne _080EB214
	ldr r0, [r1, #0x00]
	str r0, [r1, #0x10]
_080EB214:
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x00]
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start script_cmd_return
script_cmd_return: @ 080EB220
	push {lr}
	ldr r2, [r1, #0x10]
	cmp r2, #0x00
	bne _080EB22E
	ldr r0, [r1, #0x00]
	str r0, [r1, #0x04]
	b _080EB234
_080EB22E:
	str r2, [r1, #0x00]
	movs r0, #0x00
	str r0, [r1, #0x10]
_080EB234:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start script_cmd_end
script_cmd_end: @ 080EB23C
	ldr r0, [r1, #0x00]
	str r0, [r1, #0x04]
	movs r0, #0x00
	str r0, [r1, #0x10]
	movs r0, #0x01
	bx lr
