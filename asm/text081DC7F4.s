	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_081DC7F4
sub_081DC7F4: @ 0x081DC7F4
	push {lr}
	adds r1, r0, #0
	ldr r0, _081DC804 @ =_impure_ptr
	ldr r0, [r0]
	bl _malloc_r
	pop {pc}
	.align 2, 0
_081DC804: .4byte _impure_ptr

	thumb_func_start sub_081DC808
sub_081DC808: @ 0x081DC808
	push {lr}
	adds r1, r0, #0
	ldr r0, _081DC818 @ =_impure_ptr
	ldr r0, [r0]
	bl _free_r
	pop {pc}
	.align 2, 0
_081DC818: .4byte _impure_ptr
