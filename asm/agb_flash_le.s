	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start EraseFlashChip_LE
EraseFlashChip_LE: @ 0x081594A4
	push {r4, r5, r6, lr}
	sub sp, #0x40
	ldr r5, _08159500 @ =0x04000204
	ldrh r1, [r5]
	ldr r6, _08159504 @ =0x0000FFFC
	ands r1, r6
	ldr r0, _08159508 @ =gFlash
	ldr r0, [r0]
	ldrh r0, [r0, #0x10]
	orrs r1, r0
	strh r1, [r5]
	ldr r1, _0815950C @ =0x0E005555
	movs r4, #0xaa
	strb r4, [r1]
	ldr r3, _08159510 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r4, [r1]
	strb r2, [r3]
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sp
	bl SetReadFlash1
	ldr r0, _08159514 @ =gWaitForFlashWrite
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
_08159500: .4byte 0x04000204
_08159504: .4byte 0x0000FFFC
_08159508: .4byte gFlash
_0815950C: .4byte 0x0E005555
_08159510: .4byte 0x0E002AAA
_08159514: .4byte gWaitForFlashWrite

	thumb_func_start EraseFlashSector_LE
EraseFlashSector_LE: @ 0x08159518
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x40
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bhi _081595A0
	ldr r6, _08159588 @ =0x04000204
	ldrh r1, [r6]
	ldr r0, _0815958C @ =0x0000FFFC
	mov r8, r0
	ands r1, r0
	ldr r0, _08159590 @ =gFlash
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r6]
	ldrb r4, [r2, #8]
	lsls r3, r4
	adds r4, r3, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r4, r4, r2
	ldr r1, _08159594 @ =0x0E005555
	movs r5, #0xaa
	strb r5, [r1]
	ldr r3, _08159598 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r5, [r1]
	strb r2, [r3]
	movs r0, #0x30
	strb r0, [r4]
	mov r0, sp
	bl SetReadFlash1
	ldr r0, _0815959C @ =gWaitForFlashWrite
	ldr r3, [r0]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, r8
	ands r1, r2
	movs r2, #3
	orrs r1, r2
	strh r1, [r6]
	b _081595A2
	.align 2, 0
_08159588: .4byte 0x04000204
_0815958C: .4byte 0x0000FFFC
_08159590: .4byte gFlash
_08159594: .4byte 0x0E005555
_08159598: .4byte 0x0E002AAA
_0815959C: .4byte gWaitForFlashWrite
_081595A0:
	ldr r0, _081595B0 @ =0x000080FF
_081595A2:
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_081595B0: .4byte 0x000080FF

	thumb_func_start ProgramFlashByte_LE
ProgramFlashByte_LE: @ 0x081595B4
	push {r4, lr}
	ldr r4, _081595E0 @ =0x0E005555
	movs r2, #0xaa
	strb r2, [r4]
	ldr r3, _081595E4 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r2, #0xa0
	strb r2, [r4]
	ldrb r2, [r0]
	strb r2, [r1]
	ldr r3, _081595E8 @ =gWaitForFlashWrite
	ldrb r2, [r0]
	ldr r3, [r3]
	movs r0, #1
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_081595E0: .4byte 0x0E005555
_081595E4: .4byte 0x0E002AAA
_081595E8: .4byte gWaitForFlashWrite

	thumb_func_start ProgramFlashSector_LE
ProgramFlashSector_LE: @ 0x081595EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x60
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _0815960C
	ldr r0, _08159608 @ =0x000080FF
	b _081596FA
	.align 2, 0
_08159608: .4byte 0x000080FF
_0815960C:
	ldr r0, _0815962C @ =gFlash
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	mov r7, r8
	lsls r7, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r7, r7, r0
	ldr r1, _08159630 @ =VerifyFlashCoreFF
	movs r0, #1
	adds r3, r1, #0
	eors r3, r0
	mov r2, sp
	ldr r0, _08159634 @ =VerifyFlashErase
	subs r0, r0, r1
	b _08159642
	.align 2, 0
_0815962C: .4byte gFlash
_08159630: .4byte VerifyFlashCoreFF
_08159634: .4byte VerifyFlashErase
_08159638:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #2
_08159642:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08159638
	movs r4, #0
	b _08159658
_0815964E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	beq _081596F8
_08159658:
	mov r0, r8
	bl EraseFlashSector_LE
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _0815964E
	adds r0, r7, #0
	mov r1, sp
	adds r1, #1
	bl VerifyFlashErase
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _0815964E
	movs r6, #1
	cmp r4, #0
	beq _08159680
	movs r6, #6
_08159680:
	movs r4, #1
	cmp r4, r6
	bhi _08159696
_08159686:
	mov r0, r8
	bl EraseFlashSector_LE
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	bls _08159686
_08159696:
	mov r0, sp
	bl SetReadFlash1
	ldr r3, _081596B8 @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _081596BC @ =0x0000FFFC
	ands r1, r0
	ldr r0, _081596C0 @ =gFlash
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _081596C4 @ =gFlashRemainder
	ldr r0, [r2, #4]
	strh r0, [r1]
	adds r4, r1, #0
	b _081596D4
	.align 2, 0
_081596B8: .4byte 0x04000204
_081596BC: .4byte 0x0000FFFC
_081596C0: .4byte gFlash
_081596C4: .4byte gFlashRemainder
_081596C8:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	movs r0, #1
	add sb, r0
	adds r7, #1
_081596D4:
	ldrh r0, [r4]
	cmp r0, #0
	beq _081596EA
	mov r0, sb
	adds r1, r7, #0
	bl ProgramFlashByte_LE
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _081596C8
_081596EA:
	ldr r2, _08159708 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _0815970C @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_081596F8:
	adds r0, r5, #0
_081596FA:
	add sp, #0x60
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08159708: .4byte 0x04000204
_0815970C: .4byte 0x0000FFFC

	thumb_func_start VerifyFlashCoreFF
VerifyFlashCoreFF: @ 0x08159710
	adds r2, r0, #0
	ldr r0, _0815971C @ =gFlash
	ldr r0, [r0]
	ldr r1, [r0, #4]
	b _08159722
	.align 2, 0
_0815971C: .4byte gFlash
_08159720:
	subs r1, #1
_08159722:
	cmp r1, #0
	beq _0815972E
	ldrb r0, [r2]
	adds r2, #1
	cmp r0, #0xff
	beq _08159720
_0815972E:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start VerifyFlashErase
VerifyFlashErase: @ 0x08159734
	push {lr}
	bl _call_via_r1
	cmp r0, #0
	bne _08159742
	movs r0, #0
	b _08159744
_08159742:
	ldr r0, _08159748 @ =0x00008004
_08159744:
	pop {r1}
	bx r1
	.align 2, 0
_08159748: .4byte 0x00008004
