	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_8025F28__12FieldManager
sub_8025F28__12FieldManager:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r12, r0
	ldr r2, _0802612C @ =0x03000FFC
	ldr r0, _08026130 @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x10
	ldr r4, [r2, #0x00]
	adds r4, r4, r0
	adds r7, r4, #0x4
	mov r0, r12
	adds r0, #0xF8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	ldrb r2, [r4, #0x04]
	movs r1, #0x02
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x04]
	movs r6, #0x82
	lsls r6, r6, #0x02
	add r6, r12
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x01
	movs r2, #0x03
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x04]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	movs r3, #0x05
	negs r3, r3
	adds r1, r3, #0x0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x04]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x03
	movs r2, #0x09
	negs r2, r2
	mov r8, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x04]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x04
	movs r1, #0x11
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x04]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x05
	movs r2, #0x21
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x04]
	ldr r0, _08026134 @ =0x0000026B
	add r0, r12
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x05
	lsls r1, r1, #0x06
	ldrh r2, [r4, #0x04]
	ldr r0, _08026138 @ =0xFFFFFE3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x04]
	ldr r0, _0802613C @ =0x00000246
	add r0, r12
	ldrb r0, [r0, #0x00]
	movs r1, #0x1C
	ands r1, r0
	ldrb r2, [r7, #0x01]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x01]
	mov r0, r12
	adds r0, #0xFA
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	movs r5, #0x1F
	lsrs r0, r0, #0x1B
	lsls r0, r0, #0x0D
	ldr r1, [r4, #0x04]
	ldr r2, _08026140 @ =0xFFFC1FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #0x04]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	ldrb r1, [r7, #0x02]
	ands r3, r1
	orrs r3, r0
	strb r3, [r7, #0x02]
	ldrb r0, [r6, #0x00]
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x03
	mov r1, r8
	ands r3, r1
	orrs r3, r0
	strb r3, [r7, #0x02]
	ldr r0, _08026144 @ =0x03000D3C
	ldrh r1, [r0, #0x00]
	ldr r2, _08026148 @ =0x000003FF
	adds r0, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x04
	ldrh r2, [r7, #0x02]
	ldr r0, _0802614C @ =0xFFFFC00F
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x04
	adds r3, r7, r0
	movs r0, #0x92
	lsls r0, r0, #0x01
	add r0, r12
	mov r9, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r3, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r12
	ldr r0, [r4, #0x00]
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	movs r2, #0x07
	mov r10, r2
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x02]
	movs r0, #0x08
	negs r0, r0
	mov r8, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x02]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x0C]
	cmp r0, #0x00
	bge _08026088
	adds r0, #0xFF
_08026088:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x04]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08026096
	adds r0, #0xFF
_08026096:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x06]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x14]
	cmp r0, #0x00
	bge _080260A4
	adds r0, #0xFF
_080260A4:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x08]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x18]
	cmp r0, #0x00
	bge _080260B2
	adds r0, #0xFF
_080260B2:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x0A]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x04
	adds r4, r7, r0
	movs r1, #0xB6
	lsls r1, r1, #0x02
	add r1, r12
	ldrb r0, [r1, #0x00]
	ands r5, r0
	cmp r5, #0x1F
	bne _08026150
	mov r1, r9
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x00]
	movs r3, #0x81
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r3, #0x00]
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	mov r2, r10
	ands r1, r2
	ldrb r2, [r4, #0x02]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x02]
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x0C]
	cmp r0, #0x00
	bge _08026106
	adds r0, #0xFF
_08026106:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x04]
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08026114
	adds r0, #0xFF
_08026114:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x06]
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x14]
	cmp r0, #0x00
	bge _08026122
	adds r0, #0xFF
_08026122:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x08]
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x18]
	b _080261A4
_0802612C: .4byte 0x03000FFC
_08026130: .4byte 0x03000D40
_08026134: .4byte 0x0000026B
_08026138: .4byte 0xFFFFFE3F
_0802613C: .4byte 0x00000246
_08026140: .4byte 0xFFFC1FFF
_08026144: .4byte 0x03000D3C
_08026148: .4byte 0x000003FF
_0802614C: .4byte 0xFFFFC00F
_08026150:
	ldr r0, _080261BC @ =0x000002DA
	add r0, r12
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x05
	ldrb r2, [r4, #0x02]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x02]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08026174
	adds r0, #0xFF
_08026174:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x04]
	movs r0, #0xB8
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08026186
	adds r0, #0xFF
_08026186:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x06]
	movs r0, #0xB9
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08026198
	adds r0, #0xFF
_08026198:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x08]
	movs r0, #0xBA
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
_080261A4:
	cmp r0, #0x00
	bge _080261AA
	adds r0, #0xFF
_080261AA:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x0A]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080261BC: .4byte 0x000002DA
