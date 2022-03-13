	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08003FF8
sub_08003FF8: @ 0x08003FF8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _08004020 @ =gUnk_085F5E1C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r7, #4]
_0800400E:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, [r0]
	lsrs r2, r1, #0x1f
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne _08004024
	b _08004026
	.align 2, 0
_08004020: .4byte gUnk_085F5E1C
_08004024:
	b _0800400E
_08004026:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004030
sub_08004030: @ 0x08004030
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _08004058 @ =gUnk_085F5E1C
	ldr r1, [r7]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r7, #4]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	movs r1, #0
	str r1, [r0]
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004058: .4byte gUnk_085F5E1C

	thumb_func_start sub_0800405C
sub_0800405C: @ 0x0800405C
	bx lr
	.align 2, 0

	thumb_func_start sub_08004060
sub_08004060: @ 0x08004060
	bx lr
	.align 2, 0
