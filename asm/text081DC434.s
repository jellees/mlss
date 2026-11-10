	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_081DC434
sub_081DC434: @ 0x081DC434
	push {lr}
	bl abort
	movs r0, r0

	thumb_func_start sub_081DC43C
sub_081DC43C: @ 0x081DC43C
	push {lr}
	ldr r0, _081DC448 @ =gUnk_08CDB62C
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_081DC448: .4byte gUnk_08CDB62C

	thumb_func_start sub_081DC44C
sub_081DC44C: @ 0x081DC44C
	push {r4, lr}
	adds r4, r2, #0
	bl strcmp
	cmp r0, #0
	beq _081DC45C
	movs r0, #0
	b _081DC45E
_081DC45C:
	adds r0, r4, #0
_081DC45E:
	pop {r4, pc}

	thumb_func_start sub_081DC460
sub_081DC460: @ 0x081DC460
	bx lr
	.align 2, 0

	thumb_func_start sub_081DC464
sub_081DC464: @ 0x081DC464
	push {r4, lr}
	movs r0, #0x18
	bl malloc
	adds r4, r0, #0
	cmp r4, #0
	bne _081DC476
	bl sub_081DC43C
_081DC476:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	bl memset
	adds r0, r4, #0
	adds r0, #0x10
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_081DC48C
sub_081DC48C: @ 0x081DC48C
	push {lr}
	ldr r0, _081DC498 @ =gUnk_08CDB630
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_081DC498: .4byte gUnk_08CDB630

	thumb_func_start sub_081DC49C
sub_081DC49C: @ 0x081DC49C
	push {lr}
	ldr r0, _081DC4AC @ =gUnk_08CDB630
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, #8
	pop {pc}
	.align 2, 0
_081DC4AC: .4byte gUnk_08CDB630

	thumb_func_start sub_081DC4B0
sub_081DC4B0: @ 0x081DC4B0
	push {lr}
	ldr r1, _081DC4C0 @ =gUnk_08CDB630
	ldr r0, _081DC4C4 @ =sub_081DC4C8
	str r0, [r1]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_081DC4C0: .4byte gUnk_08CDB630
_081DC4C4: .4byte sub_081DC4C8

	thumb_func_start sub_081DC4C8
sub_081DC4C8: @ 0x081DC4C8
	push {r4, lr}
	ldr r1, _081DC4EC @ =0x03001A58
	ldr r0, [r1]
	cmp r0, #0
	bne _081DC4E6
	movs r0, #1
	str r0, [r1]
	ldr r4, _081DC4F0 @ =0x03001A48
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	bl memset
	ldr r0, _081DC4F4 @ =0x03001A60
	str r0, [r4, #4]
_081DC4E6:
	ldr r0, _081DC4F0 @ =0x03001A48
	pop {r4, pc}
	.align 2, 0
_081DC4EC: .4byte 0x03001A58
_081DC4F0: .4byte 0x03001A48
_081DC4F4: .4byte 0x03001A60

	thumb_func_start sub_081DC4F8
sub_081DC4F8: @ 0x081DC4F8
	push {lr}
	ldr r0, _081DC508 @ =gUnk_08CDB630
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, #4
	pop {pc}
	.align 2, 0
_081DC508: .4byte gUnk_08CDB630
_081DC50C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _081DC564 @ =0xFFFFF9B0
	add sp, r4
	mov r7, sp
	ldr r0, _081DC568 @ =gUnk_08CDB630
	ldr r0, [r0]
	bl _call_via_r0
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	str r0, [r1]
	adds r0, #4
	ldr r2, _081DC56C @ =0x00000644
	adds r2, r2, r7
	str r0, [r2]
	ldr r3, [r1]
	ldr r1, [r3, #4]
	adds r0, r1, #4
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	str r0, [r2]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _081DC5DC
	ldr r3, _081DC570 @ =0x0000064C
	adds r3, r3, r7
	str r7, [r3]
	movs r0, #0
	str r0, [r7, #4]
	str r1, [r7]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _081DC574 @ =_081DC578
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _081DC57A
	.align 2, 0
_081DC564: .4byte 0xFFFFF9B0
_081DC568: .4byte gUnk_08CDB630
_081DC56C: .4byte 0x00000644
_081DC570: .4byte 0x0000064C
_081DC574: .4byte _081DC578
_081DC578:
	b _081DC5D8
_081DC57A:
	ldr r1, _081DC5D0 @ =0x0000064C
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r2, _081DC5D4 @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2]
	str r1, [r2]
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	cmp r0, #0
	beq _081DC5BC
_081DC596:
	movs r3, #0xc9
	lsls r3, r3, #3
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r1, [r3]
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	ldr r1, [r1]
	str r1, [r3]
	movs r1, #2
	bl _call_via_r2
	movs r1, #0xc9
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	cmp r0, #0
	bne _081DC596
_081DC5BC:
	ldr r2, _081DC5D0 @ =0x0000064C
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	ldr r3, _081DC5D4 @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3]
	b _081DC5DC
	.align 2, 0
_081DC5D0: .4byte 0x0000064C
_081DC5D4: .4byte 0x00000644
_081DC5D8:
	bl sub_081DC43C
_081DC5DC:
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _081DC5F8
	ldr r2, _081DC618 @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	ldr r0, [r0]
	cmp r0, #0
	bne _081DC5FC
_081DC5F8:
	bl sub_081DC43C
_081DC5FC:
	ldr r3, _081DC618 @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r1, [r3]
	adds r2, r1, #0
	adds r2, #8
	ldr r0, [r1]
	str r0, [r3]
	ldr r0, [r2, #4]
	ldr r7, [r1, #8]
	ldr r2, [r2, #8]
	mov sp, r2
	mov pc, r0
	.align 2, 0
_081DC618: .4byte 0x00000644

	thumb_func_start sub_081DC61C
sub_081DC61C: @ 0x081DC61C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _081DC66C @ =0xFFFFF9B4
	add sp, r4
	mov r7, sp
	ldr r0, _081DC670 @ =gUnk_08CDB630
	ldr r0, [r0]
	bl _call_via_r0
	adds r1, r0, #4
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r2, r2, r7
	str r1, [r2]
	ldr r1, [r0, #4]
	adds r3, r1, #4
	ldr r0, _081DC674 @ =0x00000644
	adds r0, r0, r7
	str r3, [r0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _081DC6D8
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	str r7, [r2]
	movs r0, #0
	str r0, [r7, #4]
	str r1, [r7]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _081DC678 @ =_081DC67C
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _081DC67E
	.align 2, 0
_081DC66C: .4byte 0xFFFFF9B4
_081DC670: .4byte gUnk_08CDB630
_081DC674: .4byte 0x00000644
_081DC678: .4byte _081DC67C
_081DC67C:
	b _081DC6D4
_081DC67E:
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	b _081DC6AE
_081DC692:
	ldr r2, _081DC6D0 @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r1, [r2]
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	ldr r1, [r1]
	ldr r3, _081DC6D0 @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3]
	str r1, [r3]
	movs r1, #2
	bl _call_via_r2
_081DC6AE:
	ldr r1, _081DC6D0 @ =0x00000644
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	cmp r0, #0
	bne _081DC692
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3]
	b _081DC6D8
	.align 2, 0
_081DC6D0: .4byte 0x00000644
_081DC6D4:
	bl sub_081DC43C
_081DC6D8:
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	ldr r0, [r0]
	str r0, [r1]
	bl _081DC50C
	.align 2, 0

	thumb_func_start sub_081DC6EC
sub_081DC6EC: @ 0x081DC6EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_081DC49C
	ldr r0, [r0]
	ldr r3, [r0]
	cmp r3, #0
	bne _081DC700
	movs r0, #0
	b _081DC70E
_081DC700:
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	cmp r0, #0
	beq _081DC70E
	movs r0, #1
_081DC70E:
	pop {r4, pc}
