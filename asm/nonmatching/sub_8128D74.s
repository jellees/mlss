@ agbcc output of the matching C version (see save_menu.cpp).
	.align	2, 0
	.globl	sub_8128D74__8SaveMenu
	.type	 sub_8128D74__8SaveMenu,function
	.thumb_func
sub_8128D74__8SaveMenu:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-36
	add	r5, r0, #0
	ldr	r0, [r5, #20]
	str	r0, [sp]
	add	r4, r5, #0
	add	r4, r4, #173
	ldrb	r1, [r4]
	mov	r7, #128
	add	r0, r7, #0
	and	r0, r0, r1
	cmp	r0, #0
	bne	.Lsub_8128D74_CB2402
	b	.Lsub_8128D74_214	@long jump
.Lsub_8128D74_CB2402:
	add	r0, r5, #0
	add	r0, r0, #140
	ldr	r0, [r0]
	ldrh	r1, [r0, #2]
	mov	r2, #1
	mov	r8, r2
	mov	r0, #1
	mov	r9, r0
	mov	r6, r9
	and	r6, r6, r1
	cmp	r6, #0
	bne	.Lsub_8128D74_CB2417
	b	.Lsub_8128D74_215	@long jump
.Lsub_8128D74_CB2417:
	add	r0, r5, #0
	add	r0, r0, #174
	ldrb	r6, [r0]
	mov	sl, r0
	cmp	r6, #0
	beq	.Lsub_8128D74_216	@cond_branch
	mov	r1, #1
	neg	r1, r1
	mov	r0, #97
	bl	play_sfx_80195B4
	ldrb	r1, [r4]
	mov	r0, #127
	and	r0, r0, r1
	mov	r3, #0
	strb	r0, [r4]
	ldr	r1, [r5, #40]
	add	r0, r5, #0
	add	r0, r0, #170
	ldrb	r4, [r4]
	add	r0, r0, r4
	ldrb	r0, [r0]
	mov	r2, #0
	strh	r0, [r1, #2]
	add	r0, r5, #0
	add	r0, r0, #103
	mov	r1, r8
	strb	r1, [r0]
	add	r0, r0, #1
	strb	r2, [r0]
	add	r0, r0, #84
	strh	r3, [r0]
	b	.Lsub_8128D74_288
.Lsub_8128D74_216:
	mov	r0, #3
	bl	sub_81980C8
	mov	r8, r0
	ldr	r0, [r5, #92]
	ldrb	r1, [r0, #6]
	ldr	r4, .Lsub_8128D74_313
	ldr	r0, [r4]
	lsl	r2, r0, #28
	lsr	r0, r2, #30
	asr	r1, r1, r0
	mov	r0, r9
	and	r1, r1, r0
	cmp	r1, #0
	beq	.Lsub_8128D74_217	@cond_branch
	lsr	r1, r2, #30
	lsl	r0, r1, #3
	sub	r0, r0, r1
	lsl	r0, r0, #5
	sub	r0, r0, r1
	add	r0, r0, #2
	add	r2, r5, #0
	add	r2, r2, #186
	strh	r0, [r2]
.Lsub_8128D74_217:
	ldr	r0, [sp]
	bl	sub_8025F28
	mov	r0, #0
	bl	sub_8123BA8
	ldr	r2, .Lsub_8128D74_313+4
	ldr	r1, .Lsub_8128D74_313+8
	add	r2, r2, r1
	ldrb	r1, [r2]
	mov	r0, #33
	neg	r0, r0
	and	r0, r0, r1
	mov	r1, #9
	neg	r1, r1
	and	r0, r0, r1
	strb	r0, [r2]
	ldr	r3, [r5, #92]
	ldr	r2, [r4]
	lsl	r2, r2, #28
	lsr	r1, r2, #30
	lsl	r0, r1, #3
	sub	r0, r0, r1
	lsl	r0, r0, #5
	sub	r0, r0, r1
	lsl	r0, r0, #3
	add	r0, r3, r0
	ldrb	r0, [r0, #20]
	lsl	r0, r0, #28
	lsr	r0, r0, #31
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	lsr	r2, r2, #30
	lsl	r0, r2, #3
	sub	r0, r0, r2
	lsl	r0, r0, #5
	sub	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r3, r3, r1
	ldrh	r1, [r3, #24]
	ldr	r0, .Lsub_8128D74_313+12
	cmp	r1, r0
	bne	.Lsub_8128D74_218	@cond_branch
	add	r2, r5, #0
	add	r2, r2, #175
	ldrb	r1, [r2]
	mov	r0, #2
	orr	r0, r0, r1
	strb	r0, [r2]
.Lsub_8128D74_218:
	ldr	r3, [r5, #92]
	ldr	r2, [r4]
	lsl	r2, r2, #28
	lsr	r1, r2, #30
	lsl	r0, r1, #3
	sub	r0, r0, r1
	lsl	r0, r0, #5
	sub	r0, r0, r1
	lsl	r0, r0, #3
	add	r0, r3, r0
	ldrb	r0, [r0, #20]
	lsl	r0, r0, #28
	lsr	r0, r0, #31
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	lsr	r2, r2, #30
	lsl	r0, r2, #3
	sub	r0, r0, r2
	lsl	r0, r0, #5
	sub	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r3, r3, r1
	ldrh	r0, [r3, #24]
	bl	sub_8123308
	add	r3, r0, #0
	add	r1, r5, #0
	add	r1, r1, #182
	strb	r6, [r1]
	add	r0, r5, #0
	add	r0, r0, #181
	strb	r6, [r0]
	add	r2, r5, #0
	add	r2, r2, #103
	str	r2, [sp, #12]
	add	r2, r2, #1
	str	r2, [sp, #16]
	add	r2, r2, #84
	str	r2, [sp, #32]
	add	r4, r1, #0
	add	r7, r0, #0
	mov	r0, #176
	add	r0, r0, r5
	mov	r9, r0
	sub	r1, r1, #18
	str	r1, [sp, #20]
	sub	r2, r2, #89
	str	r2, [sp, #8]
	add	r0, r5, #0
	add	r0, r0, #98
	str	r0, [sp, #4]
	add	r1, r1, #15
	str	r1, [sp, #24]
	add	r2, r2, #85
	str	r2, [sp, #28]
	cmp	r3, #0
	beq	.Lsub_8128D74_219	@cond_branch
	b	.Lsub_8128D74_220
.Lsub_8128D74_314:
	.align	2, 0
.Lsub_8128D74_313:
	.word	stru_3000D40
	.word	gGameState
	.word	2186
	.word	275
.Lsub_8128D74_228:
	cmp	r1, #1
	ble	.Lsub_8128D74_229	@cond_branch
	mov	r1, #0
	b	.Lsub_8128D74_301
.Lsub_8128D74_229:
	lsl	r0, r1, #2
	add	r0, r0, r8
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.Lsub_8128D74_220	@cond_branch
	ldrb	r2, [r3]
	add	r3, r3, #1
	cmp	r1, #0
	bne	.Lsub_8128D74_232	@cond_branch
.Lsub_8128D74_301:
	cmp	r2, #32
	bne	.Lsub_8128D74_232	@cond_branch
	ldrb	r0, [r4]
	add	r0, r0, #2
	b	.Lsub_8128D74_309
.Lsub_8128D74_232:
	ldrb	r0, [r4]
	add	r6, r0, #1
	lsl	r0, r1, #2
	add	r0, r0, r8
	add	r1, r2, #0
	asr	r1, r1, #3
	ldr	r0, [r0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	mov	r0, #7
	and	r2, r2, r0
	lsl	r2, r2, #2
	ldr	r0, [r1, #4]
	lsr	r0, r0, r2
	mov	r1, #15
	and	r0, r0, r1
	add	r0, r6, r0
.Lsub_8128D74_309:
	strb	r0, [r4]
.Lsub_8128D74_220:
	ldrb	r0, [r3]
	cmp	r0, #0
	beq	.Lsub_8128D74_221	@cond_branch
.Lsub_8128D74_223:
	ldrb	r2, [r3]
	add	r3, r3, #1
	cmp	r2, #255
	beq	.Lsub_8128D74_223	@cond_branch
	mov	r0, #255
	sub	r1, r0, r2
	cmp	r1, #255
	bne	.Lsub_8128D74_228	@cond_branch
.Lsub_8128D74_221:
	ldrb	r0, [r4]
	strb	r0, [r7]
	add	r6, r7, #0
	b	.Lsub_8128D74_236
.Lsub_8128D74_244:
	cmp	r1, #1
	ble	.Lsub_8128D74_245	@cond_branch
	mov	r1, #0
	b	.Lsub_8128D74_302
.Lsub_8128D74_245:
	lsl	r0, r1, #2
	add	r0, r0, r8
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.Lsub_8128D74_236	@cond_branch
	ldrb	r2, [r3]
	add	r3, r3, #1
	cmp	r1, #0
	bne	.Lsub_8128D74_248	@cond_branch
.Lsub_8128D74_302:
	cmp	r2, #32
	bne	.Lsub_8128D74_248	@cond_branch
	ldrb	r0, [r6]
	add	r0, r0, #2
	strb	r0, [r6]
	b	.Lsub_8128D74_236
.Lsub_8128D74_248:
	ldrb	r0, [r7]
	add	r4, r0, #1
	lsl	r0, r1, #2
	add	r0, r0, r8
	add	r1, r2, #0
	asr	r1, r1, #3
	ldr	r0, [r0]
	lsl	r1, r1, #2
	add	r1, r1, r0
	mov	r0, #7
	and	r2, r2, r0
	lsl	r2, r2, #2
	ldr	r0, [r1, #4]
	lsr	r0, r0, r2
	mov	r1, #15
	and	r0, r0, r1
	add	r0, r4, r0
	strb	r0, [r7]
.Lsub_8128D74_236:
	ldrb	r0, [r3]
	cmp	r0, #0
	beq	.Lsub_8128D74_237	@cond_branch
.Lsub_8128D74_239:
	ldrb	r2, [r3]
	add	r3, r3, #1
	cmp	r2, #255
	beq	.Lsub_8128D74_239	@cond_branch
	mov	r0, #255
	sub	r1, r0, r2
	cmp	r1, #255
	bne	.Lsub_8128D74_244	@cond_branch
.Lsub_8128D74_237:
	ldrb	r0, [r7]
	add	r0, r0, #2
	strb	r0, [r7]
.Lsub_8128D74_219:
	mov	r1, r9
	ldrb	r0, [r1]
	mov	r6, #1
	and	r6, r6, r0
	cmp	r6, #0
	bne	.Lsub_8128D74_252	@cond_branch
	add	r0, r5, #0
	add	r0, r0, #130
	ldrh	r0, [r0]
	bl	sub_8123308
	add	r4, r0, #0
	ldr	r3, [r5, #92]
	ldr	r0, .Lsub_8128D74_315
	ldr	r2, [r0]
	lsl	r2, r2, #28
	lsr	r1, r2, #30
	lsl	r0, r1, #3
	sub	r0, r0, r1
	lsl	r0, r0, #5
	sub	r0, r0, r1
	lsl	r0, r0, #3
	add	r0, r3, r0
	ldrb	r0, [r0, #20]
	lsl	r0, r0, #28
	lsr	r0, r0, #31
	lsl	r1, r0, #1
	add	r1, r1, r0
	lsl	r1, r1, #2
	lsr	r2, r2, #30
	lsl	r0, r2, #3
	sub	r0, r0, r2
	lsl	r0, r0, #5
	sub	r0, r0, r2
	lsl	r0, r0, #3
	add	r1, r1, r0
	add	r3, r3, r1
	ldrh	r0, [r3, #24]
	bl	sub_8123308
	add	r3, r0, #0
	cmp	r4, #0
	beq	.Lsub_8128D74_252	@cond_branch
	cmp	r3, #0
	beq	.Lsub_8128D74_252	@cond_branch
	cmp	r4, r3
	bne	.Lsub_8128D74_310	@cond_branch
	mov	r2, r9
	strb	r6, [r2]
	b	.Lsub_8128D74_252
.Lsub_8128D74_316:
	.align	2, 0
.Lsub_8128D74_315:
	.word	stru_3000D40
.Lsub_8128D74_303:
	mov	r0, r9
	ldrb	r1, [r0]
	mov	r0, #2
	orr	r0, r0, r1
	mov	r1, r9
	strb	r0, [r1]
	b	.Lsub_8128D74_252
.Lsub_8128D74_304:
	mov	r2, r9
	ldrb	r1, [r2]
	mov	r0, #4
	orr	r0, r0, r1
	strb	r0, [r2]
	b	.Lsub_8128D74_252
.Lsub_8128D74_259:
	ldrb	r1, [r3]
	add	r3, r3, #1
	cmp	r1, #255
	beq	.Lsub_8128D74_259	@cond_branch
.Lsub_8128D74_264:
	ldrb	r0, [r4]
	add	r4, r4, #1
	cmp	r0, #255
	beq	.Lsub_8128D74_264	@cond_branch
	cmp	r1, #0
	bne	.Lsub_8128D74_269	@cond_branch
	cmp	r0, #0
	beq	.Lsub_8128D74_303	@cond_branch
.Lsub_8128D74_269:
	cmp	r1, r0
	bne	.Lsub_8128D74_304	@cond_branch
.Lsub_8128D74_310:
	ldrb	r0, [r3]
	cmp	r0, #0
	bne	.Lsub_8128D74_259	@cond_branch
	ldrb	r0, [r4]
	cmp	r0, #0
	bne	.Lsub_8128D74_259	@cond_branch
.Lsub_8128D74_252:
	mov	r0, #0
	mov	r8, r0
	mov	r0, #128
	mov	r1, sl
	strb	r0, [r1]
	mov	r6, #1
	mov	r4, #1
	ldr	r2, [sp, #20]
	strh	r4, [r2]
	ldr	r0, [sp, #8]
	mov	r1, #30
	bl	sub_81252BC
	ldr	r1, [sp, #4]
	strb	r0, [r1]
	ldr	r0, [r5, #40]
	bl	sprite_hide_8021F20
	mov	r0, #2
	ldr	r2, [sp, #24]
	strb	r0, [r2]
	ldr	r0, [sp, #12]
	strb	r6, [r0]
	ldr	r1, [sp, #16]
	strb	r6, [r1]
	mov	r0, r8
	ldr	r2, [sp, #32]
	strh	r0, [r2]
	mov	r2, r9
	ldrb	r1, [r2]
	and	r4, r4, r1
	cmp	r4, #0
	beq	.Lsub_8128D74_272	@cond_branch
	add	r2, r5, #0
	add	r2, r2, #130
	ldrh	r1, [r2]
	ldr	r0, .Lsub_8128D74_317
	cmp	r1, r0
	bne	.Lsub_8128D74_273	@cond_branch
	mov	r0, r8
	strh	r0, [r2]
	ldr	r1, .Lsub_8128D74_317+4
	add	r4, r5, #0
	add	r4, r4, #180
	ldrb	r0, [r4]
	add	r0, r0, #32
	mov	r2, #128
	lsl	r2, r2, #6
	add	r3, r2, #0
	orr	r0, r0, r3
	strh	r0, [r1]
	ldr	r0, .Lsub_8128D74_317+8
	ldr	r1, .Lsub_8128D74_317+12
	add	r2, r1, #0
	strh	r2, [r0]
	ldr	r1, .Lsub_8128D74_317+16
	ldrb	r0, [r4]
	b	.Lsub_8128D74_311
.Lsub_8128D74_318:
	.align	2, 0
.Lsub_8128D74_317:
	.word	65535
	.word	33554496
	.word	33554500
	.word	32912
	.word	67108928
.Lsub_8128D74_273:
	ldr	r1, .Lsub_8128D74_319
	ldrb	r0, [r7]
	add	r0, r0, #32
	mov	r2, #128
	lsl	r2, r2, #6
	add	r3, r2, #0
	orr	r0, r0, r3
	strh	r0, [r1]
	ldr	r0, .Lsub_8128D74_319+4
	ldr	r1, .Lsub_8128D74_319+8
	add	r2, r1, #0
	strh	r2, [r0]
	ldr	r1, .Lsub_8128D74_319+12
	ldrb	r0, [r7]
.Lsub_8128D74_311:
	add	r0, r0, #32
	orr	r0, r0, r3
	strh	r0, [r1]
	ldr	r0, .Lsub_8128D74_319+16
	strh	r2, [r0]
	ldr	r1, .Lsub_8128D74_319+20
	mov	r0, #30
	strh	r0, [r1]
	add	r1, r1, #2
	mov	r0, #31
	strh	r0, [r1]
	mov	r1, #1
	ldr	r2, [sp, #28]
	strb	r1, [r2]
	add	r0, r5, #0
	add	r0, r0, #178
	strb	r1, [r0]
	b	.Lsub_8128D74_275
.Lsub_8128D74_320:
	.align	2, 0
.Lsub_8128D74_319:
	.word	33554496
	.word	33554500
	.word	32912
	.word	67108928
	.word	67108932
	.word	33554504
.Lsub_8128D74_272:
	mov	r0, #6
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lsub_8128D74_276	@cond_branch
	ldr	r2, .Lsub_8128D74_321
	add	r3, r5, #0
	add	r3, r3, #180
	ldrb	r1, [r3]
	add	r1, r1, #32
	lsl	r0, r1, #8
	orr	r0, r0, r1
	strh	r0, [r2]
	ldr	r1, .Lsub_8128D74_321+4
	ldr	r2, .Lsub_8128D74_321+8
	add	r0, r2, #0
	strh	r0, [r1]
	add	r1, r1, #4
	mov	r0, #30
	strh	r0, [r1]
	add	r1, r1, #2
	mov	r0, #31
	strh	r0, [r1]
	ldr	r1, [r5, #64]
	ldrb	r0, [r3]
	add	r0, r0, #32
	strh	r0, [r1]
	mov	r0, #5
	ldr	r1, [sp, #28]
	strb	r0, [r1]
	b	.Lsub_8128D74_275
.Lsub_8128D74_322:
	.align	2, 0
.Lsub_8128D74_321:
	.word	33554496
	.word	33554500
	.word	32912
.Lsub_8128D74_276:
	ldr	r0, [r5, #60]
	ldrb	r1, [r7]
	add	r1, r1, #40
	strh	r1, [r0]
	ldr	r2, [sp, #28]
	strb	r6, [r2]
	add	r0, r5, #0
	add	r0, r0, #178
	strb	r6, [r0]
.Lsub_8128D74_275:
	mov	r1, #1
	neg	r1, r1
	mov	r0, #96
	bl	play_sfx_80195B4
	mov	r0, #2
	b	.Lsub_8128D74_300
.Lsub_8128D74_215:
	mov	r0, #2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lsub_8128D74_279	@cond_branch
	mov	r1, #1
	neg	r1, r1
	mov	r0, #97
	bl	play_sfx_80195B4
	ldrb	r1, [r4]
	mov	r0, #127
	and	r0, r0, r1
	strb	r0, [r4]
	ldr	r1, [r5, #40]
	add	r0, r5, #0
	add	r0, r0, #170
	ldrb	r4, [r4]
	add	r0, r0, r4
	ldrb	r0, [r0]
	mov	r2, #0
	strh	r0, [r1, #2]
	add	r0, r5, #0
	add	r0, r0, #103
	mov	r1, r8
	strb	r1, [r0]
	add	r0, r0, #1
	strb	r2, [r0]
	add	r0, r0, #84
	strh	r6, [r0]
	b	.Lsub_8128D74_288
.Lsub_8128D74_279:
	mov	r0, #64
	and	r0, r0, r1
	lsl	r0, r0, #16
	lsr	r2, r0, #16
	cmp	r2, #0
	beq	.Lsub_8128D74_281	@cond_branch
	add	r0, r5, #0
	add	r0, r0, #174
	ldrb	r1, [r0]
	mov	sl, r0
	cmp	r1, #0
	bne	.Lsub_8128D74_282	@cond_branch
	mov	r2, r8
	strb	r2, [r0]
	b	.Lsub_8128D74_283
.Lsub_8128D74_282:
	sub	r0, r1, #1
	mov	r1, sl
	strb	r0, [r1]
.Lsub_8128D74_283:
	ldr	r2, [r5, #40]
	mov	r0, sl
	ldrb	r1, [r0]
	mov	r0, #13
	mul	r0, r0, r1
	add	r0, r0, #86
	strh	r0, [r2, #2]
	b	.Lsub_8128D74_312
.Lsub_8128D74_281:
	add	r0, r7, #0
	and	r0, r0, r1
	cmp	r0, #0
	bne	.Lsub_8128D74_CB3243
	b	.Lsub_8128D74_288	@long jump
.Lsub_8128D74_CB3243:
	add	r0, r5, #0
	add	r0, r0, #174
	ldrb	r1, [r0]
	mov	sl, r0
	cmp	r1, #1
	bne	.Lsub_8128D74_286	@cond_branch
	strb	r2, [r0]
	b	.Lsub_8128D74_287
.Lsub_8128D74_286:
	add	r0, r1, #1
	mov	r1, sl
	strb	r0, [r1]
.Lsub_8128D74_287:
	ldr	r2, [r5, #40]
	mov	r0, sl
	ldrb	r1, [r0]
	mov	r0, #13
	mul	r0, r0, r1
	add	r0, r0, #86
	strh	r0, [r2, #2]
	b	.Lsub_8128D74_312
.Lsub_8128D74_214:
	add	r0, r5, #0
	add	r0, r0, #140
	ldr	r0, [r0]
	ldrh	r2, [r0, #2]
	mov	r0, #2
	mov	r8, r0
	mov	r0, #2
	and	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r3, #0
	beq	.Lsub_8128D74_289	@cond_branch
	mov	r1, #1
	neg	r1, r1
	mov	r0, #97
	bl	play_sfx_80195B4
	mov	r1, r8
	strb	r1, [r4]
	mov	r0, #1
	b	.Lsub_8128D74_300
.Lsub_8128D74_289:
	mov	r6, #1
	mov	r0, #1
	and	r0, r0, r2
	cmp	r0, #0
	beq	.Lsub_8128D74_290	@cond_branch
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bne	.Lsub_8128D74_291	@cond_branch
	mov	r1, #1
	neg	r1, r1
	mov	r0, #97
	bl	play_sfx_80195B4
	mov	r0, #1
	b	.Lsub_8128D74_300
.Lsub_8128D74_291:
	mov	r0, #128
	orr	r0, r0, r1
	strb	r0, [r4]
	add	r0, r5, #0
	add	r0, r0, #174
	strb	r6, [r0]
	ldr	r1, [r5, #40]
	mov	r0, #99
	mov	r2, #0
	strh	r0, [r1, #2]
	add	r0, r5, #0
	add	r0, r0, #103
	strb	r6, [r0]
	add	r0, r0, #1
	strb	r2, [r0]
	add	r0, r0, #84
	strh	r3, [r0]
	mov	r1, #1
	neg	r1, r1
	mov	r0, #96
	bl	play_sfx_80195B4
	b	.Lsub_8128D74_288
.Lsub_8128D74_290:
	mov	r0, #64
	and	r0, r0, r2
	lsl	r0, r0, #16
	lsr	r3, r0, #16
	cmp	r3, #0
	beq	.Lsub_8128D74_293	@cond_branch
	lsl	r0, r1, #24
	cmp	r0, #0
	bne	.Lsub_8128D74_294	@cond_branch
	mov	r2, r8
	strb	r2, [r4]
	b	.Lsub_8128D74_295
.Lsub_8128D74_294:
	sub	r0, r1, #1
	strb	r0, [r4]
.Lsub_8128D74_295:
	ldr	r1, [r5, #40]
	add	r2, r5, #0
	add	r2, r2, #173
	add	r0, r5, #0
	add	r0, r0, #170
	ldrb	r2, [r2]
	add	r0, r0, r2
	ldrb	r0, [r0]
	strh	r0, [r1, #2]
.Lsub_8128D74_312:
	mov	r1, #1
	neg	r1, r1
	mov	r0, #95
	bl	play_sfx_80195B4
	b	.Lsub_8128D74_288
.Lsub_8128D74_293:
	add	r0, r7, #0
	and	r0, r0, r2
	cmp	r0, #0
	beq	.Lsub_8128D74_288	@cond_branch
	lsl	r0, r1, #24
	lsr	r0, r0, #24
	cmp	r0, #2
	bne	.Lsub_8128D74_298	@cond_branch
	strb	r3, [r4]
	b	.Lsub_8128D74_299
.Lsub_8128D74_298:
	add	r0, r1, #1
	strb	r0, [r4]
.Lsub_8128D74_299:
	ldr	r1, [r5, #40]
	add	r2, r5, #0
	add	r2, r2, #173
	add	r0, r5, #0
	add	r0, r0, #170
	ldrb	r2, [r2]
	add	r0, r0, r2
	ldrb	r0, [r0]
	strh	r0, [r1, #2]
	mov	r1, #1
	neg	r1, r1
	mov	r0, #95
	bl	play_sfx_80195B4
.Lsub_8128D74_288:
	mov	r0, #0
.Lsub_8128D74_300:
	add	sp, sp, #36
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lsub_8128D74_fe4:
	.size	 sub_8128D74__8SaveMenu,.Lsub_8128D74_fe4-sub_8128D74__8SaveMenu
