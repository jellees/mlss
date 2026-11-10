	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start ArcTan2
ArcTan2: @ 0x081DA690
	svc #0xa
	bx lr

	thumb_func_start BgAffineSet
BgAffineSet: @ 0x081DA694
	svc #0xe
	bx lr

	thumb_func_start CpuFastSet
CpuFastSet: @ 0x081DA698
	svc #0xc
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x081DA69C
	svc #0xb
	bx lr

	thumb_func_start IntrWait
IntrWait: @ 0x081DA6A0
	movs r2, #0
	svc #4
	bx lr
	.align 2, 0

	thumb_func_start ObjAffineSet
ObjAffineSet: @ 0x081DA6A8
	svc #0xf
	bx lr

	thumb_func_start RegisterRamReset
RegisterRamReset: @ 0x081DA6AC
	svc #1
	bx lr

	thumb_func_start SoundBiasReset
SoundBiasReset: @ 0x081DA6B0
	movs r0, #0
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start SoundBiasSet
SoundBiasSet: @ 0x081DA6B8
	movs r0, #1
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x081DA6C0
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start SoftResetRom
SoftResetRom: @ 0x081DA6C8
	ldr r3, _081DA6DC @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r3, _081DA6E0 @ =0x03007FFA
	movs r2, #0
	strb r2, [r3]
	subs r3, #0xfa
	mov sp, r3
	svc #1
	svc #0
	.align 2, 0
_081DA6DC: .4byte 0x04000208
_081DA6E0: .4byte 0x03007FFA
