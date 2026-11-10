	.include "asm/macros.inc"

	.section .rodata
	.align 2, 0

	.global __terminate_func
__terminate_func: @ 0x08CDB62C
	.4byte __default_terminate

	.global get_eh_context
get_eh_context: @ 0x08CDB630
	.4byte eh_context_initialize
