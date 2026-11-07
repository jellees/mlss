	.include "asm/macros.inc"

	.syntax unified

	.section .rodata
	.align 2, 0

_081E26C4: @ "SBDR"
	.byte 0x53, 0x42, 0x44, 0x52, 0x00, 0x00, 0x00, 0x00
_081E26CC: @ "PANM"
	.byte 0x50, 0x41, 0x4E, 0x4D, 0x00, 0x00, 0x00, 0x00
_081E26D4: @ "S_MP"
	.byte 0x53, 0x5F, 0x4D, 0x50, 0x00, 0x00, 0x00, 0x00

	.section .gnu.linkonce.d._vt.4Sign, "aw"
	.align 2, 0
	.global _vt.4Sign
_vt.4Sign:
	.4byte 0, 0
	.4byte 0, update__4Sign

	.section .gnu.linkonce.d._vt.12SignRenderer, "aw"
	.align 2, 0
	.global _vt.12SignRenderer
_vt.12SignRenderer:
	.4byte 0, 0
	.4byte 0, update__12SignRenderer

	.text

	thumb_func_start __4SignUcPcUs
__4SignUcPcUs:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	bl __7ProcessUcPc
	ldr r0, _08051684 @ =_vt.4Sign
	str r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08051688 @ =0x0300034C
	ldr r1, _0805168C @ =0x00000884
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	strh r4, [r6, #0x2A]
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r6, #0x24]
	strh r1, [r6, #0x1C]
	strh r1, [r6, #0x1E]
	strh r1, [r6, #0x20]
	strh r1, [r6, #0x22]
	movs r0, #0x78
	strh r0, [r6, #0x26]
	movs r0, #0x50
	strh r0, [r6, #0x28]
	ldr r1, _08051690 @ =0x083A0D2C
	ldrh r0, [r1, #0x00]
	ldr r2, _08051694 @ =0x0000FFFF
	cmp r0, r2
	beq _080516A0
_08051672:
	cmp r0, r4
	bne _08051698
	ldrh r0, [r1, #0x02]
	strh r0, [r6, #0x24]
	ldrh r0, [r1, #0x04]
	strh r0, [r6, #0x26]
	ldrh r0, [r1, #0x06]
	strh r0, [r6, #0x28]
	b _080516A0
_08051684: .4byte _vt.4Sign
_08051688: .4byte 0x0300034C
_0805168C: .4byte 0x00000884
_08051690: .4byte 0x083A0D2C
_08051694: .4byte 0x0000FFFF
_08051698:
	adds r1, #0x08
	ldrh r0, [r1, #0x00]
	cmp r0, r2
	bne _08051672
_080516A0:
	ldr r5, _0805172C @ =_081E26C4
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x01
	bl __nw__FUliPcUc
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl __7ProcessUcPc
	ldr r0, _08051730 @ =_vt.12SignRenderer
	str r0, [r4, #0x18]
	str r4, [r6, #0x40]
	str r6, [r4, #0x14]
	adds r0, r4, #0x0
	bl disable__7Process
	ldr r4, _08051734 @ =_081E26CC
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl __nw__FUliPcUc
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	str r0, [r6, #0x48]
	str r6, [r0, #0x14]
	bl disable__7Process
	ldr r0, _08051738 @ =0x0000059C
	ldr r4, _0805173C @ =_081E26D4
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl __nw__FUliPcUc
	ldrh r3, [r6, #0x24]
	movs r2, #0x1C
	ldsh r1, [r6, r2]
	str r1, [sp, #0x000]
	movs r2, #0x1E
	ldsh r1, [r6, r2]
	str r1, [sp, #0x004]
	ldr r1, [r6, #0x48]
	str r1, [sp, #0x008]
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_80575C8
	str r0, [r6, #0x44]
	str r6, [r0, #0x14]
	movs r0, #0xAE
	lsls r0, r0, #0x05
	movs r1, #0x00
	movs r2, #0x01
	movs r3, #0x80
	bl sub_8020994
	adds r0, r6, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0805172C: .4byte _081E26C4
_08051730: .4byte _vt.12SignRenderer
_08051734: .4byte _081E26CC
_08051738: .4byte 0x0000059C
_0805173C: .4byte _081E26D4
	thumb_func_start update__4Sign
update__4Sign:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	ldrb r0, [r7, #0x00]
	cmp r0, #0x05
	bls _08051756
	b _080519D8
_08051756:
	lsls r0, r0, #0x02
	ldr r1, _08051760 @ =_08051764
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08051760: .4byte _08051764
_08051764:
	.4byte _0805177C
	.4byte _08051878
	.4byte _080518B0
	.4byte _08051900
	.4byte _08051912
	.4byte _08051988
_0805177C:
	ldr r0, [r7, #0x44]
	movs r1, #0x1C
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08051788
	b _080519D8
_08051788:
	movs r2, #0x00
	mov r10, r2
	adds r3, r7, #0x0
	adds r3, #0x20
	str r3, [sp, #0x010]
	adds r0, r7, #0x0
	adds r0, #0x22
	str r0, [sp, #0x014]
	movs r5, #0x01
	negs r5, r5
	adds r6, r7, #0x0
	adds r6, #0x2C
	ldr r1, _0805186C @ =0x083A0E64
	mov r8, r1
_080517A4:
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _08051870 @ =0x000080FE
	movs r2, #0x01
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r6, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	mov r1, r10
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r6, #0x00]
	mov r3, r8
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldrh r0, [r3, #0x02]
	strh r0, [r1, #0x02]
	movs r0, #0x04
	add r0, r8
	mov r9, r0
	mov r4, r10
	adds r4, #0x01
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _08051870 @ =0x000080FE
	movs r2, #0x01
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r6, #0x04]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r6, #0x04]
	mov r2, r8
	ldrh r0, [r2, #0x04]
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x04]
	mov r3, r9
	ldrh r0, [r3, #0x02]
	strh r0, [r1, #0x02]
	adds r6, #0x08
	movs r0, #0x08
	add r8, r0
	movs r1, #0x02
	add r10, r1
	mov r2, r10
	cmp r2, #0x03
	ble _080517A4
	ldr r1, _08051874 @ =0x000080FD
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x3C]
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	bl sub_801E150
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r0, [r7, #0x40]
	bl enable__7Process
	ldr r0, [r7, #0x44]
	movs r1, #0x02
	ldr r2, [sp, #0x010]
	ldr r3, [sp, #0x014]
	bl sub_805A0EC
	movs r0, #0x01
	strb r0, [r7, #0x00]
	b _080519D8
_0805186C: .4byte 0x083A0E64
_08051870: .4byte 0x000080FE
_08051874: .4byte 0x000080FD
_08051878:
	ldr r0, _080518AC @ =0x03000C80
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08051882
	b _080519D8
_08051882:
	ldr r0, [r7, #0x48]
	bl enable__7Process
	ldr r0, [r7, #0x3C]
	bl sprite_show_8020CBC
	ldrh r0, [r7, #0x26]
	subs r0, #0x78
	strh r0, [r7, #0x1C]
	ldrh r0, [r7, #0x28]
	subs r0, #0x58
	strh r0, [r7, #0x1E]
	adds r0, r7, #0x0
	bl sub_8051ACC__4Sign
	adds r0, r7, #0x0
	bl sub_8051A00__4Sign
	movs r0, #0x02
	strb r0, [r7, #0x00]
	b _080519D8
_080518AC: .4byte 0x03000C80
_080518B0:
	ldr r0, [r7, #0x3C]
	ldrb r0, [r0, #0x13]
	movs r4, #0x03
	adds r2, r4, #0x0
	ands r2, r0
	cmp r2, #0x00
	beq _080518C0
	b _080519D8
_080518C0:
	ldr r0, _080518F4 @ =0x0300034C
	ldr r1, _080518F8 @ =0x00000884
	adds r0, r0, r1
	movs r1, #0x01
	negs r1, r1
	str r1, [r0, #0x00]
	ldr r0, [r7, #0x48]
	ldr r1, _080518FC @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r2, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x10
	bl sub_81151E4
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r2, #0xF2
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	strb r4, [r7, #0x00]
	b _080519D8
	.byte 0x00, 0x00
_080518F4: .4byte 0x0300034C
_080518F8: .4byte 0x00000884
_080518FC: .4byte 0x0000FFFF
_08051900:
	ldr r0, [r7, #0x48]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080519D8
	movs r0, #0x04
	strb r0, [r7, #0x00]
	b _080519D8
_08051912:
	ldr r2, _08051948 @ =0x0300034C
	ldrh r1, [r2, #0x2A]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08051950
	ldr r0, [r7, #0x48]
	ldr r1, _0805194C @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x10
	bl sub_81151E4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	movs r0, #0x05
	strb r0, [r7, #0x00]
	b _08051976
	.byte 0x00, 0x00
_08051948: .4byte 0x0300034C
_0805194C: .4byte 0x0000FFFF
_08051950:
	ldrh r0, [r2, #0x28]
	movs r1, #0xF0
	ands r1, r0
	ldr r2, _08051984 @ =0x083A0E74
	lsrs r1, r1, #0x03
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r7, #0x1C]
	adds r0, r0, r3
	strh r0, [r7, #0x1C]
	adds r1, #0x01
	adds r1, r1, r2
	movs r0, #0x00
	ldsb r0, [r1, r0]
	ldrh r1, [r7, #0x1E]
	adds r0, r0, r1
	strh r0, [r7, #0x1E]
_08051976:
	adds r0, r7, #0x0
	bl sub_8051ACC__4Sign
	adds r0, r7, #0x0
	bl sub_8051A00__4Sign
	b _080519D8
_08051984: .4byte 0x083A0E74
_08051988:
	ldr r0, [r7, #0x48]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080519D8
	ldr r0, [r7, #0x14]
	bl enable__7Process
	cmp r7, #0x00
	beq _080519D8
	ldr r0, _080519F8 @ =_vt.4Sign
	str r0, [r7, #0x18]
	bl sub_8021FD4
	ldr r0, [r7, #0x44]
	cmp r0, #0x00
	beq _080519B2
	movs r1, #0x03
	bl sub_8057B58
_080519B2:
	ldr r1, [r7, #0x40]
	cmp r1, #0x00
	beq _080519C4
	ldr r0, _080519FC @ =_vt.12SignRenderer
	str r0, [r1, #0x18]
	adds r0, r1, #0x0
	movs r1, #0x03
	bl _._7Process
_080519C4:
	ldr r0, [r7, #0x48]
	cmp r0, #0x00
	beq _080519D0
	movs r1, #0x03
	bl sub_81166AC
_080519D0:
	adds r0, r7, #0x0
	movs r1, #0x03
	bl _._7Process
_080519D8:
	ldrb r0, [r7, #0x00]
	subs r0, #0x03
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _080519E8
	bl sub_8021F7C
_080519E8:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080519F8: .4byte _vt.4Sign
_080519FC: .4byte _vt.12SignRenderer
	thumb_func_start sub_8051A00__4Sign
sub_8051A00__4Sign:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x3C]
	ldrh r0, [r4, #0x26]
	ldrh r1, [r4, #0x1C]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x3C]
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1E]
	subs r0, r0, r1
	strh r0, [r2, #0x02]
	movs r1, #0x1E
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bne _08051A28
	ldr r0, [r4, #0x2C]
	bl sprite_hide_8021F20
	b _08051A2E
_08051A28:
	ldr r0, [r4, #0x2C]
	bl sprite_show_8020CBC
_08051A2E:
	movs r0, #0x1C
	ldsh r1, [r4, r0]
	ldrh r0, [r4, #0x20]
	subs r0, #0xF0
	cmp r1, r0
	bne _08051A42
	ldr r0, [r4, #0x30]
	bl sprite_hide_8021F20
	b _08051A48
_08051A42:
	ldr r0, [r4, #0x30]
	bl sprite_show_8020CBC
_08051A48:
	movs r0, #0x1E
	ldsh r1, [r4, r0]
	ldrh r0, [r4, #0x22]
	subs r0, #0xA0
	cmp r1, r0
	bne _08051A5C
	ldr r0, [r4, #0x34]
	bl sprite_hide_8021F20
	b _08051A62
_08051A5C:
	ldr r0, [r4, #0x34]
	bl sprite_show_8020CBC
_08051A62:
	movs r1, #0x1C
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bne _08051A72
	ldr r0, [r4, #0x38]
	bl sprite_hide_8021F20
	b _08051A78
_08051A72:
	ldr r0, [r4, #0x38]
	bl sprite_show_8020CBC
_08051A78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start update__12SignRenderer
update__12SignRenderer:
	push {r4, r5, r6, lr}
	ldr r4, _08051AB8 @ =0x0300034C
	movs r0, #0x88
	lsls r0, r0, #0x04
	adds r4, r4, r0
	ldr r6, [r4, #0x00]
	bl sub_8020A78
	ldr r2, _08051ABC @ =0x03000D48
	ldr r5, _08051AC0 @ =0x0203FFB8
	ldr r0, [r5, #0x3C]
	ldr r3, _08051AC4 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _08051AC8 @ =0x03000D4C
	ldr r0, [r5, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	str r6, [r4, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051AB8: .4byte 0x0300034C
_08051ABC: .4byte 0x03000D48
_08051AC0: .4byte 0x0203FFB8
_08051AC4: .4byte 0x00000A14
_08051AC8: .4byte 0x03000D4C
	thumb_func_start sub_8051ACC__4Sign
sub_8051ACC__4Sign:
	push {lr}
	adds r2, r0, #0x0
	movs r1, #0x1C
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08051ADC
	movs r0, #0x00
	b _08051AE8
_08051ADC:
	movs r3, #0x1C
	ldsh r1, [r2, r3]
	ldrh r0, [r2, #0x20]
	subs r0, #0xF0
	cmp r1, r0
	ble _08051AEA
_08051AE8:
	strh r0, [r2, #0x1C]
_08051AEA:
	movs r1, #0x1E
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08051AF6
	movs r0, #0x00
	b _08051B02
_08051AF6:
	movs r3, #0x1E
	ldsh r1, [r2, r3]
	ldrh r0, [r2, #0x22]
	subs r0, #0xA0
	cmp r1, r0
	ble _08051B04
_08051B02:
	strh r0, [r2, #0x1E]
_08051B04:
	ldr r0, [r2, #0x44]
	movs r3, #0x1C
	ldsh r1, [r2, r3]
	movs r3, #0x1E
	ldsh r2, [r2, r3]
	bl sub_8057C9C
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start _._4Sign
_._4Sign: @ 08051B18
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08051B60 @ =_vt.4Sign
	str r0, [r4, #0x18]
	bl sub_8021FD4
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	beq _08051B32
	movs r1, #0x03
	bl sub_8057B58
_08051B32:
	ldr r1, [r4, #0x40]
	cmp r1, #0x00
	beq _08051B44
	ldr r0, _08051B64 @ =_vt.12SignRenderer
	str r0, [r1, #0x18]
	adds r0, r1, #0x0
	movs r1, #0x03
	bl _._7Process
_08051B44:
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	beq _08051B50
	movs r1, #0x03
	bl sub_81166AC
_08051B50:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _._7Process
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051B60: .4byte _vt.4Sign
_08051B64: .4byte _vt.12SignRenderer
	thumb_func_start _._12SignRenderer
_._12SignRenderer: @ 08051B68
	push {lr}
	ldr r2, _08051B78 @ =_vt.12SignRenderer
	str r2, [r0, #0x18]
	bl _._7Process
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051B78: .4byte _vt.12SignRenderer
	thumb_func_start __12SignRendererUcPc
__12SignRendererUcPc: @ 08051B7C
	push {r4, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl __7ProcessUcPc
	ldr r0, _08051B94 @ =_vt.12SignRenderer
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
_08051B94: .4byte _vt.12SignRenderer
