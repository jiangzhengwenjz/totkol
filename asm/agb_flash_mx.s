	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ProgramFlashSector_MX
ProgramFlashSector_MX: @ 0x0815974C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08159764
	ldr r0, _08159760 @ =0x000080FF
	b _081597E0
	.align 2, 0
_08159760: .4byte 0x000080FF
_08159764:
	adds r0, r4, #0
	bl EraseFlashSector_LE
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _081597DE
	mov r0, sp
	bl SetReadFlash1
	ldr r3, _081597A0 @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _081597A4 @ =0x0000FFFC
	ands r1, r0
	ldr r0, _081597A8 @ =gUnk_02029C18
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _081597AC @ =gUnk_02029C1C
	ldr r0, [r2, #4]
	strh r0, [r1]
	ldrb r0, [r2, #8]
	lsls r4, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	adds r6, r1, #0
	b _081597BA
	.align 2, 0
_081597A0: .4byte 0x04000204
_081597A4: .4byte 0x0000FFFC
_081597A8: .4byte gUnk_02029C18
_081597AC: .4byte gUnk_02029C1C
_081597B0:
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	adds r7, #1
	adds r4, #1
_081597BA:
	ldrh r0, [r6]
	cmp r0, #0
	beq _081597D0
	adds r0, r7, #0
	adds r1, r4, #0
	bl ProgramFlashByte_LE
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _081597B0
_081597D0:
	ldr r2, _081597E8 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _081597EC @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_081597DE:
	adds r0, r5, #0
_081597E0:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_081597E8: .4byte 0x04000204
_081597EC: .4byte 0x0000FFFC
