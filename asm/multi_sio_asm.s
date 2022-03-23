	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	arm_func_start MultiSioRecvBufChange
MultiSioRecvBufChange: @ 0x08006434
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	mov ip, #0x4000000
	ldr fp, _08006470 @ =gMultiSioArea
	add sl, fp, #0x40
	mov sb, #1
	mov r8, #0
	strb r8, [ip, #0x208]
	ldm sl, {r0, r1, r2, r3, r4, r5, r6, r7}
	stm sl!, {r4, r5, r6, r7}
	stm sl!, {r0, r1, r2, r3}
	ldr r0, [fp, #4]
	str r8, [fp, #4]
	strb sb, [ip, #0x208]
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr
	.align 2, 0
_08006470: .4byte gMultiSioArea

	arm_func_start MultiSioIntr
MultiSioIntr: @ 0x08006474
	mov ip, #0x4000000
	add ip, ip, #0x120
	ldm ip, {r0, r1}
	push {r7, r8, sb, sl, fp}
	ldr fp, _0800656C @ =gMultiSioArea
	mov sb, #0xfe
	add sb, sb, #0xfe00
	ldr sl, [fp, #0x14]
	adds r3, sl, #1
	blt _080064C4
	bne _080064B8
	strh sb, [ip, #0xa]
	add r8, fp, #0x28
	ldm r8, {r2, r3}
	mov r7, r2
	stm r8, {r3, r7}
	b _080064C4
_080064B8:
	ldr r3, [fp, #0x2c]
	ldr r2, [r3, sl, lsl #1]
	strh r2, [ip, #0xa]
_080064C4:
	cmp sl, #0xb
	addlt sl, sl, #1
	strlt sl, [fp, #0x14]
	push {r0, r1, r5, r6}
	mov r6, #1
_080064D8:
	add r8, fp, #0x18
	add r8, r8, r6, lsl #2
	ldr sl, [r8]
	lsl r3, r6, #1
	ldrh r5, [sp, r3]
	cmp r5, sb
	bne _08006508
	cmp sl, #9
	ble _08006508
	mov r0, #1
	sub sl, r0, #2
	b _08006534
_08006508:
	ldr r0, [r8, #0x18]
	lsl r3, sl, #1
	strh r5, [r0, r3]
	cmp sl, #9
	bne _08006534
	ldr r1, [r8, #0x28]
	str r0, [r8, #0x28]
	str r1, [r8, #0x18]
	add r3, fp, #4
	mov r0, #1
	strb r0, [r3, r6]
_08006534:
	cmp sl, #0xb
	addlt sl, sl, #1
	str sl, [r8]
	subs r6, r6, #1
	bge _080064D8
	ldrb r0, [fp]
	cmp r0, #0
	beq _08006560
	ldrh r0, [ip, #8]
	orr r0, r0, #0x80
	strh r0, [ip, #8]
_08006560:
	add sp, sp, #8
	pop {r5, r6, r7, r8, sb, sl, fp}
	bx lr
	.align 2, 0
_0800656C: .4byte gMultiSioArea
