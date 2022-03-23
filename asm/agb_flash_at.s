	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start EraseFlashChip_AT
EraseFlashChip_AT: @ 0x081597F0
	push {r4, r5, r6, lr}
	sub sp, #0x40
	mov r0, sp
	bl SetReadFlash1
	ldr r5, _08159848 @ =0x04000204
	ldrh r0, [r5]
	ldr r6, _0815984C @ =0x0000FFFC
	ands r0, r6
	ldr r1, _08159850 @ =gAT29LV512
	ldrh r1, [r1, #0x24]
	orrs r0, r1
	strh r0, [r5]
	ldr r1, _08159854 @ =0x0E005555
	movs r4, #0xaa
	strb r4, [r1]
	ldr r3, _08159858 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r4, [r1]
	strb r2, [r3]
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0815985C @ =gWaitForFlashWrite
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0]
	movs r0, #3
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	ands r1, r6
	movs r2, #3
	orrs r1, r2
	strh r1, [r5]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08159848: .4byte 0x04000204
_0815984C: .4byte 0x0000FFFC
_08159850: .4byte gAT29LV512
_08159854: .4byte 0x0E005555
_08159858: .4byte 0x0E002AAA
_0815985C: .4byte gWaitForFlashWrite

	thumb_func_start EraseFlashSector_AT
EraseFlashSector_AT: @ 0x08159860
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	ldr r3, _081598D0 @ =gAT29LV512
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	ldrb r1, [r3, #0x1c]
	lsls r4, r1
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	ldr r1, _081598D4 @ =0x04000208
	ldrh r0, [r1]
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _081598D8 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _081598DC @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0xa0
	strb r0, [r2]
	ldr r0, [r3, #0x18]
	cmp r0, #0
	beq _081598A0
	movs r1, #0xff
_08159896:
	strb r1, [r4]
	adds r4, #1
	subs r0, #1
	cmp r0, #0
	bne _08159896
_081598A0:
	subs r4, #1
	ldr r0, _081598D4 @ =0x04000208
	strh r5, [r0]
	ldr r0, _081598E0 @ =gWaitForFlashWrite
	ldr r3, [r0]
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _081598C6
	movs r0, #0xff
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #2
	orrs r1, r0
_081598C6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_081598D0: .4byte gAT29LV512
_081598D4: .4byte 0x04000208
_081598D8: .4byte 0x0E005555
_081598DC: .4byte 0x0E002AAA
_081598E0: .4byte gWaitForFlashWrite

	thumb_func_start EraseFlash4KB_AT
EraseFlash4KB_AT: @ 0x081598E4
	push {r4, r5, r6, lr}
	sub sp, #0x40
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _081598F8
	ldr r0, _081598F4 @ =0x000080FF
	b _08159960
	.align 2, 0
_081598F4: .4byte 0x000080FF
_081598F8:
	mov r0, sp
	bl SetReadFlash1
	ldr r2, _08159918 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _0815991C @ =0x0000FFFC
	ands r0, r1
	ldr r1, _08159920 @ =gAT29LV512
	ldrh r1, [r1, #0x24]
	orrs r0, r1
	strh r0, [r2]
	lsls r0, r4, #0x15
	lsrs r5, r0, #0x10
	movs r6, #0
_08159914:
	movs r4, #2
	b _0815992E
	.align 2, 0
_08159918: .4byte 0x04000204
_0815991C: .4byte 0x0000FFFC
_08159920: .4byte gAT29LV512
_08159924:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0815993C
_0815992E:
	adds r0, r5, #0
	bl EraseFlashSector_AT
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08159924
_0815993C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r3, #0
	bne _08159950
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1f
	bls _08159914
_08159950:
	ldr r2, _08159968 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _0815996C @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #0
_08159960:
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08159968: .4byte 0x04000204
_0815996C: .4byte 0x0000FFFC

	thumb_func_start ProgramFlashSector_AT
ProgramFlashSector_AT: @ 0x08159970
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	ldr r3, _081599D4 @ =gAT29LV512
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	ldrb r1, [r3, #0x1c]
	lsls r4, r1
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	ldr r1, _081599D8 @ =0x04000208
	ldrh r0, [r1]
	adds r6, r0, #0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _081599DC @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _081599E0 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0xa0
	strb r0, [r2]
	ldr r1, [r3, #0x18]
	cmp r1, #0
	beq _081599B4
_081599A6:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _081599A6
_081599B4:
	subs r4, #1
	subs r5, #1
	ldr r0, _081599D8 @ =0x04000208
	strh r6, [r0]
	ldr r0, _081599E4 @ =gWaitForFlashWrite
	ldrb r2, [r5]
	ldr r3, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_081599D4: .4byte gAT29LV512
_081599D8: .4byte 0x04000208
_081599DC: .4byte 0x0E005555
_081599E0: .4byte 0x0E002AAA
_081599E4: .4byte gWaitForFlashWrite

	thumb_func_start ProgramFlash4KB_AT
ProgramFlash4KB_AT: @ 0x081599E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x40
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08159A04
	ldr r0, _08159A00 @ =0x000080FF
	b _08159A92
	.align 2, 0
_08159A00: .4byte 0x000080FF
_08159A04:
	mov r0, sp
	bl SetReadFlash1
	ldr r2, _08159A2C @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08159A30 @ =0x0000FFFC
	ands r0, r1
	ldr r1, _08159A34 @ =gAT29LV512
	ldrh r1, [r1, #0x24]
	orrs r0, r1
	strh r0, [r2]
	lsls r0, r4, #0x15
	lsrs r5, r0, #0x10
	ldr r1, _08159A38 @ =gFlashRemainder
	ldr r0, _08159A3C @ =gAT29LV512Lib
	ldr r0, [r0, #0x18]
	strh r0, [r1]
	adds r0, r1, #0
	mov r8, r0
	b _08159A54
	.align 2, 0
_08159A2C: .4byte 0x04000204
_08159A30: .4byte 0x0000FFFC
_08159A34: .4byte gAT29LV512
_08159A38: .4byte gFlashRemainder
_08159A3C: .4byte gAT29LV512Lib
_08159A40:
	ldr r0, _08159A60 @ =gAT29LV512
	ldr r1, [r0, #0x18]
	mov r2, r8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	adds r7, r7, r1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08159A54:
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08159A82
	movs r4, #2
	b _08159A6E
	.align 2, 0
_08159A60: .4byte gAT29LV512
_08159A64:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08159A7E
_08159A6E:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ProgramFlashSector_AT
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08159A64
_08159A7E:
	cmp r6, #0
	beq _08159A40
_08159A82:
	ldr r2, _08159AA0 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08159AA4 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	adds r0, r6, #0
_08159A92:
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08159AA0: .4byte 0x04000204
_08159AA4: .4byte 0x0000FFFC
