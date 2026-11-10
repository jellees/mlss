	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start __pure_virtual
__pure_virtual: @ 0x081DAC0C
	push {lr}
	bl __terminate
	pop {pc}
