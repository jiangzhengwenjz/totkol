	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_03006ED0:: @ 03006ED0
	.incbin "baserom.gba", 0x7D69E8, 0x40

gUnk_03006F10:: @ 03006F10
	.incbin "baserom.gba", 0x7D6A28, 0x3

gUnk_03006F13:: @ 03006F13
	.incbin "baserom.gba", 0x7D6A2B, 0x5
