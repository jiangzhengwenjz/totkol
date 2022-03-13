	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0815D910
sub_0815D910: @ 0x0815D910
	bx pc @ =sub_0815D914
	nop

	arm_func_start sub_0815D914
sub_0815D914: @ 0x0815D914
	b _080000C0
