	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start memcmp
memcmp: @ 0x0815B678
	push {r4, lr}
	adds r4, r2, #0
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r4, #3
	bls _0815B6B4
	orrs r0, r2
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0815B6B4
	b _0815B69A
_0815B690:
	adds r3, #4
	adds r2, #4
	subs r4, #4
	cmp r4, #3
	bls _0815B6B4
_0815B69A:
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	beq _0815B690
	b _0815B6B4
_0815B6A4:
	ldrb r0, [r3]
	ldrb r1, [r2]
	cmp r0, r1
	beq _0815B6B0
	subs r0, r0, r1
	b _0815B6BE
_0815B6B0:
	adds r3, #1
	adds r2, #1
_0815B6B4:
	adds r0, r4, #0
	subs r4, #1
	cmp r0, #0
	bne _0815B6A4
	movs r0, #0
_0815B6BE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start memcpy
memcpy: @ 0x0815B6C4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _0815B704
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0815B704
	adds r1, r5, #0
_0815B6DE:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0815B6DE
	cmp r2, #3
	bls _0815B702
_0815B6F8:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _0815B6F8
_0815B702:
	adds r4, r1, #0
_0815B704:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0815B71E
	adds r1, r0, #0
_0815B710:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _0815B710
_0815B71E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start memset
memset: @ 0x0815B728
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _0815B76E
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _0815B76E
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _0815B762
_0815B74E:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0815B74E
	b _0815B762
_0815B75E:
	stm r1!, {r3}
	subs r2, #4
_0815B762:
	cmp r2, #3
	bhi _0815B75E
	adds r3, r1, #0
	b _0815B76E
_0815B76A:
	strb r4, [r3]
	adds r3, #1
_0815B76E:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0815B76A
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start strcmp
strcmp: @ 0x0815B780
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0815B7C6
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _0815B7C6
	ldr r5, _0815B7AC @ =0xFEFEFEFF
	ldr r4, _0815B7B0 @ =0x80808080
_0815B79C:
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0815B7B4
	movs r0, #0
	b _0815B7D8
	.align 2, 0
_0815B7AC: .4byte 0xFEFEFEFF
_0815B7B0: .4byte 0x80808080
_0815B7B4:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _0815B79C
	b _0815B7C6
_0815B7C2:
	adds r2, #1
	adds r3, #1
_0815B7C6:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0815B7D2
	ldrb r1, [r3]
	cmp r0, r1
	beq _0815B7C2
_0815B7D2:
	ldrb r2, [r2]
	ldrb r3, [r3]
	subs r0, r2, r3
_0815B7D8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start strlen
strlen: @ 0x0815B7E0
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0815B818
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _0815B7FC @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _0815B800 @ =0x80808080
	b _0815B80C
	.align 2, 0
_0815B7FC: .4byte 0xFEFEFEFF
_0815B800: .4byte 0x80808080
_0815B804:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_0815B80C:
	ands r0, r3
	cmp r0, #0
	beq _0815B804
	adds r1, r2, #0
	b _0815B818
_0815B816:
	adds r1, #1
_0815B818:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0815B816
	subs r0, r1, r5
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
