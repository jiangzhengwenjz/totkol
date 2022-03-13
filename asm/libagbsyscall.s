	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ArcTan2
ArcTan2: @ 0x08158EEC
	svc #0xa
	bx lr

	thumb_func_start BgAffineSet
BgAffineSet: @ 0x08158EF0
	svc #0xe
	bx lr

	thumb_func_start CpuFastSet
CpuFastSet: @ 0x08158EF4
	svc #0xc
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x08158EF8
	svc #0xb
	bx lr

	thumb_func_start Div
Div: @ 0x08158EFC
	svc #6
	bx lr

	thumb_func_start DivRem
DivRem: @ 0x08158F00
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start DivRemArm
DivRemArm: @ 0x08158F08
	svc #7
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start HuffUnComp
HuffUnComp: @ 0x08158F10
	svc #0x13
	bx lr

	thumb_func_start LZ77UnCompVram
LZ77UnCompVram: @ 0x08158F14
	svc #0x12
	bx lr

	thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 0x08158F18
	svc #0x11
	bx lr

	thumb_func_start ObjAffineSet
ObjAffineSet: @ 0x08158F1C
	svc #0xf
	bx lr

	thumb_func_start Sqrt
Sqrt: @ 0x08158F20
	svc #8
	bx lr
