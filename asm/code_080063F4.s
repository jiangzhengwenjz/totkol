	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080063F4
sub_080063F4: @ 0x080063F4
	push {r4, lr}
	adds r4, r0, #0
	bl strlen
	cmp r0, #1
	bls _0800640C
	ldr r1, _08006410 @ =gUnk_03002A02
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _08006414
_0800640C:
	movs r0, #0
	b _08006416
	.align 2, 0
_08006410: .4byte gUnk_03002A02
_08006414:
	movs r0, #1
_08006416:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0800641C
sub_0800641C: @ 0x0800641C
	movs r0, #0
	bx lr

	thumb_func_start sub_08006420
sub_08006420: @ 0x08006420
	movs r0, #0
	bx lr

	thumb_func_start sub_08006424
sub_08006424: @ 0x08006424
	movs r0, #0
	bx lr

	thumb_func_start sub_08006428
sub_08006428: @ 0x08006428
	movs r0, #0
	bx lr

	thumb_func_start sub_0800642C
sub_0800642C: @ 0x0800642C
	movs r0, #0
	bx lr

	thumb_func_start sub_08006430
sub_08006430: @ 0x08006430
	movs r0, #0
	bx lr
