	.include "asm/macros.inc"

	.syntax unified
	.text
	thumb_func_start sub_8038140__12FieldManager
sub_8038140__12FieldManager:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	adds r6, r0, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4__12FieldManagerUcUc
	movs r0, #0x01
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r0, [r4, #0x00]
	bl sub_804FC90__20FieldPlayerCharacter
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4__12FieldManagerP20FieldPlayerCharacteriP8KeyInput
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r5, r6, r2
	ldr r0, [r5, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r3, r3, r6
	mov r10, r3
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x00
	mov r8, r0
	movs r0, #0x0D
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldr r1, [r3, #0x00]
	movs r0, #0x77
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r5, #0x00]
	ldr r1, [r3, #0x00]
	ldr r4, _080382AC @ =0x00000351
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	mov r3, r10
	ldr r1, [r3, #0x00]
	adds r4, #0x07
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x08
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldr r3, _080382B0 @ =0x0000020D
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r4, #0x41
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	ldr r2, _080382B4 @ =0x0000035A
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	mov r3, r9
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0x02
	bl showHandPowerSprite__20FieldPlayerCharacteri
	ldr r0, _080382B8 @ =0x0000026A
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	ands r4, r0
	strb r4, [r1, #0x00]
	ldr r1, _080382BC @ =0x0000026E
	adds r0, r6, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080382C0 @ =0x0000020B
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r2, r10
	ldr r1, [r2, #0x00]
	adds r3, #0x0C
	mov r9, r3
	add r1, r9
	ldrb r2, [r1, #0x00]
	movs r4, #0x08
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	movs r2, #0x04
	mov r8, r2
	mov r3, r8
	orrs r0, r3
	strb r0, [r1, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	ldr r1, _080382C4 @ =0x00001034
	bl sub_8049000__20FieldPlayerCharacterUs
	ldr r0, [r5, #0x00]
	add r0, r9
	ldrb r1, [r0, #0x00]
	ands r4, r1
	mov r2, r8
	orrs r4, r2
	strb r4, [r0, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x05
	bl sub_8049000__20FieldPlayerCharacterUs
	ldr r3, _080382C8 @ =0x00000246
	adds r6, r6, r3
	ldrb r1, [r6, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r6, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x87
	bl play_sfx_80195B4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080382AC: .4byte 0x00000351
_080382B0: .4byte 0x0000020D
_080382B4: .4byte 0x0000035A
_080382B8: .4byte 0x0000026A
_080382BC: .4byte 0x0000026E
_080382C0: .4byte 0x0000020B
_080382C4: .4byte 0x00001034
_080382C8: .4byte 0x00000246
