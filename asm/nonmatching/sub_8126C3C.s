@ agbcc output of the matching C version (see load_menu.cpp).
	.section .rodata
	.align	2, 0
.Lsub_8126C3C_C39:
	.word	112
	.word	232
	.word	88
	.word	224
	.align	2, 0
.Lsub_8126C3C_C41:
	.word	104
	.word	136
	.word	104
	.word	80
	.code	16
.text
	.align	2, 0
	.globl	sub_8126C3C__8LoadMenu
	.type	 sub_8126C3C__8LoadMenu,function
	.thumb_func
sub_8126C3C__8LoadMenu:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-64
	add	r7, r0, #0
	add	r1, sp, #12
	ldr	r0, .Lsub_8126C3C_187
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	ldr	r0, [r0]
	str	r0, [r1]
	add	r0, sp, #28
	mov	r8, r0
	mov	r1, r8
	ldr	r0, .Lsub_8126C3C_187+4
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	ldr	r0, [r0]
	str	r0, [r1]
	mov	r0, #242
	add	r0, r0, r7
	mov	r9, r0
	ldrb	r5, [r0]
	cmp	r5, #0
	bne	.Lsub_8126C3C_163	@cond_branch
	ldr	r1, .Lsub_8126C3C_187+8
	str	r5, [sp]
	add	r0, r7, #0
	add	r0, r0, #76
	str	r0, [sp, #4]
	mov	r4, #1
	neg	r4, r4
	str	r4, [sp, #8]
	mov	r0, #5
	mov	r2, #0
	mov	r3, #0
	bl	sub_8021574
	ldr	r1, .Lsub_8126C3C_187+12
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	mov	r0, #5
	mov	r2, #0
	add	r3, r4, #0
	bl	sub_8020DD0
	str	r0, [r7, #28]
	str	r5, [sp]
	mov	r1, #0
	add	r2, r4, #0
	mov	r3, #0
	bl	sub_801E150
	ldr	r0, [r7, #28]
	bl	sprite_show_8020CBC
	ldr	r1, [r7, #28]
	add	r0, r7, #0
	add	r0, r0, #250
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	lsl	r0, r0, #5
	add	r0, r0, #32
	strh	r0, [r1]
	ldr	r1, [r7, #28]
	mov	r0, #22
	strh	r0, [r1, #2]
	ldr	r1, [r7, #28]
	ldr	r0, .Lsub_8126C3C_187+16
	strh	r0, [r1, #14]
	ldr	r2, [r7, #28]
	ldrb	r1, [r2, #31]
	mov	r0, #4
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2, #31]
	ldr	r2, [r7, #28]
	ldrb	r1, [r2, #31]
	mov	r0, #13
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2, #31]
	ldr	r2, [r7, #28]
	ldrb	r1, [r2, #31]
	mov	r0, #49
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2, #31]
	ldr	r2, [r7, #28]
	ldrb	r1, [r2, #31]
	mov	r0, #63
	and	r0, r0, r1
	strb	r0, [r2, #31]
	ldr	r2, [r7, #28]
	ldrb	r1, [r2, #16]
	mov	r0, #63
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2, #16]
	ldr	r1, [r7, #28]
	add	r1, r1, #41
	ldrb	r2, [r1]
	mov	r0, #3
	neg	r0, r0
	and	r0, r0, r2
	strb	r0, [r1]
	ldr	r1, [r7, #28]
	add	r1, r1, #41
	ldrb	r2, [r1]
	mov	r0, #33
	neg	r0, r0
	and	r0, r0, r2
	strb	r0, [r1]
	mov	r0, #1
	mov	r1, r9
	strb	r0, [r1]
	b	.Lsub_8126C3C_164
.Lsub_8126C3C_188:
	.align	2, 0
.Lsub_8126C3C_187:
	.word	.Lsub_8126C3C_C39
	.word	.Lsub_8126C3C_C41
	.word	24579
	.word	24581
	.word	61439
.Lsub_8126C3C_163:
	cmp	r5, #1
	beq	.Lsub_8126C3C_CB2739
	b	.Lsub_8126C3C_165	@long jump
.Lsub_8126C3C_CB2739:
	ldr	r1, .Lsub_8126C3C_189
	mov	r6, #1
	neg	r6, r6
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r6, [sp, #8]
	mov	r0, #5
	mov	r2, #0
	add	r3, r6, #0
	bl	sub_8020DD0
	add	r5, r7, #0
	add	r5, r5, #236
	ldrh	r1, [r5]
	lsl	r1, r1, #2
	add	r4, r7, #0
	add	r4, r4, #56
	add	r1, r4, r1
	str	r0, [r1]
	ldrh	r1, [r5]
	lsl	r0, r1, #2
	add	r0, r4, r0
	ldr	r0, [r0]
	add	r1, r1, #3
	mov	r2, #0
	str	r2, [sp]
	add	r2, r6, #0
	mov	r3, #0
	bl	sub_801E150
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r0, r4, r0
	ldr	r0, [r0]
	bl	sprite_show_8020CBC
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r1, r4, r0
	ldr	r1, [r1]
	add	r0, r0, sp
	add	r0, r0, #12
	ldr	r0, [r0]
	strh	r0, [r1]
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r1, r4, r0
	ldr	r1, [r1]
	add	r0, r0, r8
	ldr	r0, [r0]
	strh	r0, [r1, #2]
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r0, r4, r0
	ldr	r1, [r0]
	ldr	r0, .Lsub_8126C3C_189+4
	strh	r0, [r1, #14]
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r0, r4, r0
	ldr	r2, [r0]
	ldrb	r1, [r2, #31]
	mov	r0, #4
	neg	r0, r0
	and	r0, r0, r1
	mov	r1, #1
	orr	r0, r0, r1
	strb	r0, [r2, #31]
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r0, r4, r0
	ldr	r2, [r0]
	ldrb	r1, [r2, #31]
	mov	r0, #13
	neg	r0, r0
	and	r0, r0, r1
	mov	r1, #4
	orr	r0, r0, r1
	strb	r0, [r2, #31]
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r0, r4, r0
	ldr	r2, [r0]
	ldrb	r1, [r2, #31]
	mov	r0, #49
	neg	r0, r0
	and	r0, r0, r1
	mov	r3, #16
	orr	r0, r0, r3
	strb	r0, [r2, #31]
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r0, r4, r0
	ldr	r2, [r0]
	ldrb	r1, [r2, #31]
	mov	r0, #63
	and	r0, r0, r1
	mov	r1, #64
	orr	r0, r0, r1
	strb	r0, [r2, #31]
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r0, r4, r0
	ldr	r2, [r0]
	ldrb	r1, [r2, #16]
	mov	r0, #63
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2, #16]
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r0, r4, r0
	ldr	r1, [r0]
	add	r1, r1, #41
	ldrb	r2, [r1]
	mov	r0, #3
	neg	r0, r0
	and	r0, r0, r2
	strb	r0, [r1]
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r0, r4, r0
	ldr	r1, [r0]
	add	r1, r1, #41
	ldrb	r2, [r1]
	mov	r0, #33
	neg	r0, r0
	and	r0, r0, r2
	strb	r0, [r1]
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r0, r4, r0
	ldr	r1, [r0]
	ldrb	r0, [r1, #18]
	orr	r0, r0, r3
	strb	r0, [r1, #18]
	ldrh	r0, [r5]
	lsl	r0, r0, #2
	add	r4, r4, r0
	ldr	r2, [r4]
	ldrb	r1, [r2, #18]
	mov	r0, #7
	neg	r0, r0
	and	r0, r0, r1
	mov	r1, #2
	orr	r0, r0, r1
	strb	r0, [r2, #18]
	ldrh	r0, [r5]
	add	r0, r0, #1
	strh	r0, [r5]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r0, #4
	beq	.Lsub_8126C3C_CB2907
	b	.Lsub_8126C3C_164	@long jump
.Lsub_8126C3C_CB2907:
	mov	r0, #2
	mov	r2, r9
	strb	r0, [r2]
	b	.Lsub_8126C3C_164
.Lsub_8126C3C_190:
	.align	2, 0
.Lsub_8126C3C_189:
	.word	24581
	.word	61439
.Lsub_8126C3C_165:
	mov	r3, #0
	mov	r8, r3
	mov	r4, r9
	str	r4, [sp, #60]
	add	r0, r7, #0
	add	r0, r0, #236
	str	r0, [sp, #56]
	add	r1, r7, #0
	add	r1, r1, #32
	str	r1, [sp, #48]
	mov	r6, #1
	neg	r6, r6
.Lsub_8126C3C_171:
	mov	r2, #0
	mov	r9, r2
	mov	r3, r8
	lsl	r0, r3, #3
	add	r3, r3, #1
	str	r3, [sp, #52]
	mov	r4, r8
	sub	r1, r0, r4
	lsl	r1, r1, #2
	add	r2, r7, r1
	str	r2, [sp, #44]
	ldr	r3, [sp, #48]
	add	r4, r0, r3
	mov	r0, #0
	mov	sl, r0
	mov	r2, #128
	lsl	r2, r2, #1
	add	r0, r7, r2
	add	r5, r1, r0
.Lsub_8126C3C_175:
	ldrh	r0, [r5]
	cmp	r0, #0
	beq	.Lsub_8126C3C_176	@cond_branch
	ldr	r3, [sp, #44]
	mov	r0, #140
	lsl	r0, r0, #1
	add	r1, r3, r0
	ldrb	r0, [r1]
	cmp	r0, #2
	beq	.Lsub_8126C3C_177	@cond_branch
	cmp	r0, r9
	bne	.Lsub_8126C3C_176	@cond_branch
.Lsub_8126C3C_177:
	ldrh	r1, [r5]
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r6, [sp, #8]
	mov	r0, #0
	mov	r2, #1
	add	r3, r6, #0
	bl	sub_8020DD0
	str	r0, [r4]
	ldrb	r1, [r5, #2]
	mov	r2, #0
	str	r2, [sp]
	add	r2, r6, #0
	mov	r3, #0
	bl	sub_801E150
	ldr	r0, [r4]
	ldrb	r1, [r5, #2]
	ldrb	r2, [r5, #3]
	mov	r3, #0
	str	r3, [sp]
	bl	sub_801E150
	ldr	r0, [r4]
	bl	sprite_show_8020CBC
	ldr	r1, [r4]
	mov	r0, #188
	mov	r2, sl
	sub	r0, r0, r2
	mov	r2, #0
	strh	r0, [r1]
	ldr	r1, [r4]
	mov	r0, #104
	mov	r3, r8
	cmp	r3, #0
	beq	.Lsub_8126C3C_178	@cond_branch
	mov	r0, #180
.Lsub_8126C3C_178:
	strh	r0, [r1, #2]
	ldr	r1, [r4]
	ldr	r0, .Lsub_8126C3C_191
	strh	r0, [r1, #14]
	ldr	r2, [r4]
	ldrb	r0, [r2, #31]
	mov	r1, #3
	orr	r0, r0, r1
	strb	r0, [r2, #31]
	ldr	r2, [r4]
	ldrb	r0, [r2, #31]
	mov	r1, #12
	orr	r0, r0, r1
	strb	r0, [r2, #31]
	ldr	r2, [r4]
	ldrb	r0, [r2, #31]
	mov	r1, #48
	orr	r0, r0, r1
	strb	r0, [r2, #31]
	ldr	r2, [r4]
	ldrb	r0, [r2, #31]
	mov	r1, #192
	orr	r0, r0, r1
	strb	r0, [r2, #31]
	ldr	r2, [r4]
	ldrb	r0, [r2, #16]
	mov	r3, #63
	neg	r3, r3
	add	r1, r3, #0
	and	r0, r0, r1
	strb	r0, [r2, #16]
	ldr	r2, [r4]
	add	r2, r2, #41
	ldrb	r0, [r2]
	add	r3, r3, #60
	add	r1, r3, #0
	and	r0, r0, r1
	strb	r0, [r2]
	ldr	r2, [r4]
	add	r2, r2, #41
	ldrb	r0, [r2]
	sub	r3, r3, #30
	add	r1, r3, #0
	and	r0, r0, r1
	strb	r0, [r2]
	ldr	r2, [r4]
	ldrb	r0, [r2, #18]
	mov	r1, #16
	orr	r0, r0, r1
	strb	r0, [r2, #18]
	ldr	r2, [r4]
	ldrb	r0, [r2, #18]
	add	r3, r3, #26
	add	r1, r3, #0
	and	r0, r0, r1
	mov	r1, #2
	orr	r0, r0, r1
	strb	r0, [r2, #18]
	b	.Lsub_8126C3C_174
.Lsub_8126C3C_192:
	.align	2, 0
.Lsub_8126C3C_191:
	.word	61439
.Lsub_8126C3C_176:
	add	r0, r7, #0
	add	r0, r0, #241
	ldrb	r1, [r0]
	mov	r0, r8
	asr	r1, r1, r0
	mov	r0, #1
	and	r1, r1, r0
	cmp	r1, #0
	beq	.Lsub_8126C3C_181	@cond_branch
	mov	r1, #0
	str	r1, [sp]
	add	r0, r7, #0
	add	r0, r0, #76
	str	r0, [sp, #4]
	str	r6, [sp, #8]
	mov	r0, #5
	ldr	r1, .Lsub_8126C3C_193
	mov	r2, #0
	mov	r3, #0
	bl	sub_8021574
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r6, [sp, #8]
	mov	r0, #5
	ldr	r1, .Lsub_8126C3C_193+4
	mov	r2, #1
	add	r3, r6, #0
	bl	sub_8020DD0
	str	r0, [r4]
	mov	r2, #0
	str	r2, [sp]
	mov	r1, r9
	add	r2, r6, #0
	mov	r3, #0
	bl	sub_801E150
	ldr	r0, [r4]
	bl	sprite_show_8020CBC
	ldr	r1, [r4]
	mov	r0, #188
	mov	r3, sl
	sub	r0, r0, r3
	mov	r2, #0
	strh	r0, [r1]
	ldr	r1, [r4]
	mov	r0, #104
	mov	r3, r8
	cmp	r3, #0
	beq	.Lsub_8126C3C_182	@cond_branch
	mov	r0, #180
.Lsub_8126C3C_182:
	strh	r0, [r1, #2]
	ldr	r1, [r4]
	ldr	r0, .Lsub_8126C3C_193+8
	strh	r0, [r1, #14]
	ldr	r2, [r4]
	ldrb	r0, [r2, #31]
	mov	r1, #3
	orr	r0, r0, r1
	strb	r0, [r2, #31]
	ldr	r2, [r4]
	ldrb	r0, [r2, #31]
	mov	r1, #12
	orr	r0, r0, r1
	strb	r0, [r2, #31]
	ldr	r2, [r4]
	ldrb	r0, [r2, #31]
	mov	r1, #48
	orr	r0, r0, r1
	strb	r0, [r2, #31]
	ldr	r2, [r4]
	ldrb	r0, [r2, #31]
	mov	r1, #192
	orr	r0, r0, r1
	strb	r0, [r2, #31]
	ldr	r2, [r4]
	ldrb	r0, [r2, #16]
	mov	r3, #63
	neg	r3, r3
	add	r1, r3, #0
	and	r0, r0, r1
	strb	r0, [r2, #16]
	ldr	r2, [r4]
	add	r2, r2, #41
	ldrb	r0, [r2]
	add	r3, r3, #60
	add	r1, r3, #0
	and	r0, r0, r1
	strb	r0, [r2]
	ldr	r2, [r4]
	add	r2, r2, #41
	ldrb	r0, [r2]
	sub	r3, r3, #30
	add	r1, r3, #0
	and	r0, r0, r1
	strb	r0, [r2]
	b	.Lsub_8126C3C_174
.Lsub_8126C3C_194:
	.align	2, 0
.Lsub_8126C3C_193:
	.word	24578
	.word	24582
	.word	61439
.Lsub_8126C3C_181:
	str	r1, [r4]
.Lsub_8126C3C_174:
	add	r4, r4, #4
	mov	r0, #40
	add	sl, sl, r0
	add	r5, r5, #8
	mov	r1, #1
	add	r9, r9, r1
	mov	r2, r9
	cmp	r2, #1
	bgt	.Lsub_8126C3C_CB3259
	b	.Lsub_8126C3C_175	@long jump
.Lsub_8126C3C_CB3259:
	ldr	r3, [sp, #52]
	mov	r8, r3
	cmp	r3, #2
	bgt	.Lsub_8126C3C_CB3282
	b	.Lsub_8126C3C_171	@long jump
.Lsub_8126C3C_CB3282:
	mov	r4, #0
	bl	sub_8021F7C
	bl	sub_8020A78
	ldr	r2, .Lsub_8126C3C_195
	ldr	r0, .Lsub_8126C3C_195+4
	ldr	r0, [r0, #60]
	ldr	r3, .Lsub_8126C3C_195+8
	add	r1, r0, r3
	ldr	r2, [r2]
	bl	_call_via_r2
	ldr	r0, [sp, #60]
	strb	r4, [r0]
	ldr	r1, [sp, #56]
	strh	r4, [r1]
.Lsub_8126C3C_164:
	add	sp, sp, #64
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lsub_8126C3C_196:
	.align	2, 0
.Lsub_8126C3C_195:
	.word	dword_3000D48
	.word	stru_203FFB8
	.word	2580
.Lsub_8126C3C_fe4:
	.size	 sub_8126C3C__8LoadMenu,.Lsub_8126C3C_fe4-sub_8126C3C__8LoadMenu
