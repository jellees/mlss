	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	arm_func_start _start
_start: @ 0x08000000
	b Init

    .include "asm/rom_header.inc"

	arm_func_start Init
Init: @ 0x080000C0
	mov r0, #PSR_IRQ_MODE
	msr cpsr_fc, r0
	ldr sp, sp_irq @ =0x03007FA0
	mov r0, #PSR_SYS_MODE
	msr cpsr_fc, r0
	ldr sp, sp_sys @ =0x03007D00
	ldr r1, =INTR_VECTOR
	adr r0, IntrMain
	str r0, [r1]
	ldr r1, =AgbMain
	mov lr, pc
	bx r1
	b Init

	.align 2, 0
_080000F4: .4byte IWRAM_END - 0x600
sp_sys: .4byte IWRAM_END - 0x300
sp_irq: .4byte IWRAM_END - 0x60
_08000100:
	.byte 0xA3, 0x9E, 0x45, 0xE2

    .pool

	arm_func_start IntrMain
IntrMain: @ 0x0800010C
	ldr r3, _0800036C @ =0x03000D0C
	ldr r3, [r3]
	cmp r3, #0
	bne _0800025C
	mov r3, #REG_BASE
	add r3, r3, #OFFSET_REG_IE
	ldr r2, [r3, #OFFSET_REG_IE - OFFSET_REG_IE]
	and r1, r2, r2, lsr #16
	mov ip, #0
	ands r0, r1, #INTR_FLAG_TIMER3
	bne _080001B4
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_SERIAL
	bne _080001B4
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_VBLANK
	bne _080001C8
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_VCOUNT
	bne _080001B4
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_HBLANK
	bne _080001B4
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_DMA0
	bne _080001B4
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_DMA1
	bne _080001B4
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_DMA2
	bne _080001B4
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_DMA3
	bne _080001B4
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_KEYPAD
	bne _080001B4
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_GAMEPAK
	strbne r0, [r3, #REG_SOUNDCNT_X - REG_IE]
	bne . @ spin
_080001B4:
	strh r0, [r3, #OFFSET_REG_IF - OFFSET_REG_IE]
	ldr r1, _08000370 @ =0x03000014
	add r1, r1, ip
	ldr r0, [r1]
	bx r0
_080001C8:
	strh r0, [r3, #OFFSET_REG_IF - OFFSET_REG_IE]
	ldr r1, _08000374 @ =0x03000014
	add r1, r1, ip
	ldr r0, [r1]
	ldr r3, _08000378 @ =0x03000C7C
	ldrb ip, [r3]
	cmp ip, #0
	beq _08000258
	mov r2, #0
	strb r2, [r3]
	ldr r3, _0800037C @ =REG_IME
	strh r2, [r3]
	mrs r3, apsr
	bic r3, r3, #PSR_I_BIT | PSR_F_BIT | PSR_MODE_MASK
	orr r3, r3, #PSR_SYS_MODE
	msr cpsr_fc, r3
	ldr r3, _08000380 @ =0x03000C6C
	str sp, [r3]
	ldr r3, _08000384 @ =0x03000C70
	ldr sp, [r3]
	mrs r3, apsr
	bic r3, r3, #PSR_I_BIT | PSR_F_BIT | PSR_MODE_MASK
	orr r3, r3, #PSR_I_BIT | PSR_IRQ_MODE
	msr cpsr_fc, r3
	ldr r3, _0800037C @ =REG_IME
	mov r2, #1
	strh r2, [r3]
	ldr r3, [sp, #0x14]
	sub r3, r3, #4
	ldr ip, _08000388 @ =0x03000C74
	str r3, [ip]
	ldr r3, _0800038C @ =0x08000804
	str r3, [sp, #0x14]
	ldr r3, _08000390 @ =0x03000C28
	mov ip, #1
	strb ip, [r3]
_08000258:
	bx r0
_0800025C:
	mov r3, #REG_BASE
	add r3, r3, #OFFSET_REG_IE
	ldr r2, [r3, #OFFSET_REG_IE - OFFSET_REG_IE]
	ldrh r1, [r3, #OFFSET_REG_IME - OFFSET_REG_IE]
	mrs r0, spsr
	push {r0, r1, r2, r3, lr}
	mov r0, #1
	strh r0, [r3, #OFFSET_REG_IME - OFFSET_REG_IE]
	and r1, r2, r2, lsr #16
	mov ip, #0
	ands r0, r1, #INTR_FLAG_TIMER3
	bne _08000308
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_SERIAL
	bne _08000308
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_VBLANK
	bne _08000308
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_VCOUNT
	bne _08000308
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_HBLANK
	bne _08000308
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_DMA0
	bne _08000308
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_DMA1
	bne _08000308
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_DMA2
	bne _08000308
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_DMA3
	bne _08000308
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_KEYPAD
	bne _08000308
	add ip, ip, #4
	ands r0, r1, #INTR_FLAG_GAMEPAK
	strbne r0, [r3, #REG_SOUNDCNT_X - REG_IE]
	bne . @ spin
_08000308:
	strh r0, [r3, #OFFSET_REG_IF - OFFSET_REG_IE]
	ldr r1, _08000394 @ =0x000020F8 (#INTR_FLAG_GAMEPAK | INTR_FLAG_SERIAL | INTR_FLAG_TIMER3 | INTR_FLAG_TIMER2 | INTR_FLAG_TIMER1 | INTR_FLAG_TIMER0)
	bic r2, r2, r0
	and r1, r1, r2
	strh r1, [r3]
	mrs r3, apsr
	bic r3, r3, #PSR_I_BIT | PSR_F_BIT | PSR_MODE_MASK
	orr r3, r3, #PSR_SYS_MODE
	msr cpsr_fc, r3
	ldr r1, _08000398 @ =0x03000014
	add r1, r1, ip
	ldr r0, [r1]
	stmdb sp!, {lr}
	adr lr, _08000344
	bx r0
_08000344:
	ldm sp!, {lr}
	mrs r3, apsr
	bic r3, r3, #PSR_I_BIT | PSR_F_BIT | PSR_MODE_MASK
	orr r3, r3, #PSR_I_BIT | PSR_IRQ_MODE
	msr cpsr_fc, r3
	pop {r0, r1, r2, r3, lr}
	strh r2, [r3, #OFFSET_REG_IE - OFFSET_REG_IE]
	strh r1, [r3, #OFFSET_REG_IME - OFFSET_REG_IE]
	msr spsr_fc, r0
	bx lr
	.align 2, 0
_0800036C: .4byte 0x03000D0C
_08000370: .4byte 0x03000014
_08000374: .4byte 0x03000014
_08000378: .4byte 0x03000C7C
_0800037C: .4byte REG_IME
_08000380: .4byte 0x03000C6C
_08000384: .4byte 0x03000C70
_08000388: .4byte 0x03000C74
_0800038C: .4byte 0x08000804
_08000390: .4byte 0x03000C28
_08000394: .4byte 0x000020F8
_08000398: .4byte 0x03000014
_0800039C:
	.byte 0x1A, 0x92, 0x24, 0x4A
	.byte 0x4E, 0x45, 0x57, 0x20
