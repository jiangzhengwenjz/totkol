	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ReadFlashId
ReadFlashId: @ 0x08158F24
	push {r4, r5, lr}
	sub sp, #0x44
	mov r0, sp
	bl SetReadFlash1
	mov r5, sp
	adds r5, #1
	ldr r2, _08158F4C @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08158F50 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0x90
	strb r0, [r2]
	add r1, sp, #0x40
	ldr r2, _08158F54 @ =0x00004E20
	adds r0, r2, #0
	b _08158F5C
	.align 2, 0
_08158F4C: .4byte 0x0E005555
_08158F50: .4byte 0x0E002AAA
_08158F54: .4byte 0x00004E20
_08158F58:
	ldrh r0, [r1]
	subs r0, #1
_08158F5C:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08158F58
	ldr r0, _08158F94 @ =0x0E000001
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0x14
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	orrs r4, r0
	ldr r2, _08158F98 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08158F9C @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0xf0
	strb r0, [r2]
	add r1, sp, #0x40
	ldr r2, _08158FA0 @ =0x00004E20
	adds r0, r2, #0
	b _08158FA8
	.align 2, 0
_08158F94: .4byte 0x0E000001
_08158F98: .4byte 0x0E005555
_08158F9C: .4byte 0x0E002AAA
_08158FA0: .4byte 0x00004E20
_08158FA4:
	ldrh r0, [r1]
	subs r0, #1
_08158FA8:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08158FA4
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start IdentifyFlash
IdentifyFlash: @ 0x08158FBC
	push {r4, lr}
	ldr r2, _08158FDC @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08158FE0 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bl ReadFlashId
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _08158FE4 @ =sSetupInfos
	movs r4, #1
	b _08158FEA
	.align 2, 0
_08158FDC: .4byte 0x04000204
_08158FE0: .4byte 0x0000FFFC
_08158FE4: .4byte sSetupInfos
_08158FE8:
	adds r2, #4
_08158FEA:
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08158FFE
	ldrh r0, [r1, #0x28]
	cmp r3, r0
	bne _08158FE8
	movs r4, #0
_08158FFE:
	ldr r1, _08159038 @ =gProgramFlashSector
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _0815903C @ =gEraseFlashChip
	ldr r0, [r2]
	ldr r0, [r0, #4]
	str r0, [r1]
	ldr r1, _08159040 @ =gEraseFlashSector
	ldr r0, [r2]
	ldr r0, [r0, #8]
	str r0, [r1]
	ldr r1, _08159044 @ =gWaitForFlashWrite
	ldr r0, [r2]
	ldr r0, [r0, #0xc]
	str r0, [r1]
	ldr r1, _08159048 @ =gFlashMaxTime
	ldr r0, [r2]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r1, _0815904C @ =gFlash
	ldr r0, [r2]
	adds r0, #0x14
	str r0, [r1]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08159038: .4byte gProgramFlashSector
_0815903C: .4byte gEraseFlashChip
_08159040: .4byte gEraseFlashSector
_08159044: .4byte gWaitForFlashWrite
_08159048: .4byte gFlashMaxTime
_0815904C: .4byte gFlash

	thumb_func_start FlashTimerIntr
FlashTimerIntr: @ 0x08159050
	ldr r1, _0815906C @ =sTimerCount
	ldrh r0, [r1]
	cmp r0, #0
	beq _0815906A
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0815906A
	ldr r1, _08159070 @ =gFlashTimeoutFlag
	movs r0, #1
	strb r0, [r1]
_0815906A:
	bx lr
	.align 2, 0
_0815906C: .4byte sTimerCount
_08159070: .4byte gFlashTimeoutFlag

	thumb_func_start SetFlashTimerIntr
SetFlashTimerIntr: @ 0x08159074
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _081590A8
	ldr r0, _08159098 @ =sTimerNum
	strb r1, [r0]
	ldr r1, _0815909C @ =sTimerReg
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _081590A0 @ =0x04000100
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _081590A4 @ =FlashTimerIntr
	str r0, [r2]
	movs r0, #0
	b _081590AA
	.align 2, 0
_08159098: .4byte sTimerNum
_0815909C: .4byte sTimerReg
_081590A0: .4byte 0x04000100
_081590A4: .4byte FlashTimerIntr
_081590A8:
	movs r0, #1
_081590AA:
	bx lr

	thumb_func_start StartFlashTimer
StartFlashTimer: @ 0x081590AC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08159130 @ =gFlashMaxTime
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	ldr r0, [r1]
	adds r2, r2, r0
	ldr r1, _08159134 @ =sSavedIme
	ldr r0, _08159138 @ =0x04000208
	mov sb, r0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r3, #0
	mov r1, sb
	strh r3, [r1]
	ldr r0, _0815913C @ =sTimerReg
	mov r8, r0
	ldr r4, [r0]
	strh r3, [r4, #2]
	ldr r6, _08159140 @ =0x04000200
	ldr r1, _08159144 @ =sTimerNum
	mov sl, r1
	ldrb r1, [r1]
	movs r5, #8
	adds r0, r5, #0
	lsls r0, r1
	adds r1, r0, #0
	ldrh r0, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r0, _08159148 @ =gFlashTimeoutFlag
	strb r3, [r0]
	ldr r1, _0815914C @ =sTimerCount
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	ldrh r0, [r2]
	strh r0, [r4]
	adds r0, r4, #2
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	str r4, [r1]
	ldr r1, _08159150 @ =0x04000202
	mov r2, sl
	ldrb r0, [r2]
	lsls r5, r0
	strh r5, [r1]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08159130: .4byte gFlashMaxTime
_08159134: .4byte sSavedIme
_08159138: .4byte 0x04000208
_0815913C: .4byte sTimerReg
_08159140: .4byte 0x04000200
_08159144: .4byte sTimerNum
_08159148: .4byte gFlashTimeoutFlag
_0815914C: .4byte sTimerCount
_08159150: .4byte 0x04000202

	thumb_func_start StopFlashTimer
StopFlashTimer: @ 0x08159154
	ldr r3, _08159184 @ =0x04000208
	movs r1, #0
	strh r1, [r3]
	ldr r2, _08159188 @ =sTimerReg
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _0815918C @ =0x04000200
	ldr r0, _08159190 @ =sTimerNum
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _08159194 @ =sSavedIme
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_08159184: .4byte 0x04000208
_08159188: .4byte sTimerReg
_0815918C: .4byte 0x04000200
_08159190: .4byte sTimerNum
_08159194: .4byte sSavedIme

	thumb_func_start ReadFlash1
ReadFlash1: @ 0x08159198
	ldrb r0, [r0]
	bx lr

	thumb_func_start SetReadFlash1
SetReadFlash1: @ 0x0815919C
	adds r2, r0, #0
	ldr r1, _081591B4 @ =gPollFlashStatus
	adds r0, r2, #1
	str r0, [r1]
	ldr r3, _081591B8 @ =ReadFlash1
	movs r0, #1
	eors r3, r0
	ldr r0, _081591BC @ =SetReadFlash1
	ldr r1, _081591B8 @ =ReadFlash1
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _081591CC
	.align 2, 0
_081591B4: .4byte gPollFlashStatus
_081591B8: .4byte ReadFlash1
_081591BC: .4byte SetReadFlash1
_081591C0:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_081591CC:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _081591C0
	bx lr

	thumb_func_start WaitForFlashWrite_Common
WaitForFlashWrite_Common: @ 0x081591D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	movs r0, #0
	mov r8, r0
	adds r0, r4, #0
	bl StartFlashTimer
	ldr r7, _081591FC @ =gPollFlashStatus
	movs r0, #0xc0
	lsls r0, r0, #8
	orrs r4, r0
	lsls r4, r4, #0x10
	b _08159224
	.align 2, 0
_081591FC: .4byte gPollFlashStatus
_08159200:
	ldr r0, _08159218 @ =gFlash
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	ldr r0, _0815921C @ =0x00001CC2
	cmp r1, r0
	bne _08159212
	ldr r1, _08159220 @ =0x0E005555
	movs r0, #0xf0
	strb r0, [r1]
_08159212:
	lsrs r4, r4, #0x10
	mov r8, r4
	b _0815924C
	.align 2, 0
_08159218: .4byte gFlash
_0815921C: .4byte 0x00001CC2
_08159220: .4byte 0x0E005555
_08159224:
	ldr r1, [r7]
	adds r0, r5, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _0815924C
	ldr r0, _0815925C @ =gFlashTimeoutFlag
	ldrb r0, [r0]
	cmp r0, #0
	beq _08159224
	ldr r1, [r7]
	adds r0, r5, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08159200
_0815924C:
	bl StopFlashTimer
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0815925C: .4byte gFlashTimeoutFlag

	thumb_func_start ReadFlash_Core
ReadFlash_Core: @ 0x08159260
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _0815927C
	movs r2, #1
	rsbs r2, r2, #0
_0815926E:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _0815926E
_0815927C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ReadFlash
ReadFlash: @ 0x08159284
	push {r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _081592B4 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _081592B8 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _081592BC @ =ReadFlash_Core
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _081592C0 @ =ReadFlash
	ldr r1, _081592BC @ =ReadFlash_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _081592D0
	.align 2, 0
_081592B4: .4byte 0x04000204
_081592B8: .4byte 0x0000FFFC
_081592BC: .4byte ReadFlash_Core
_081592C0: .4byte ReadFlash
_081592C4:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_081592D0:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _081592C4
	mov r3, sp
	adds r3, #1
	ldr r0, _081592FC @ =gUnk_0824DDA0
	ldrb r0, [r0, #0x1c]
	lsls r4, r0
	adds r0, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r5, r2
	adds r0, r0, r1
	adds r1, r6, #0
	adds r2, r7, #0
	bl _call_via_r3
	add sp, #0x80
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081592FC: .4byte gUnk_0824DDA0

	thumb_func_start VerifyFlashSector_Core
VerifyFlashSector_Core: @ 0x08159300
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _08159326
	movs r2, #1
	rsbs r2, r2, #0
_08159310:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _08159320
	subs r0, r3, #1
	b _08159328
_08159320:
	subs r4, #1
	cmp r4, r2
	bne _08159310
_08159326:
	movs r0, #0
_08159328:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start VerifyFlashSector
VerifyFlashSector: @ 0x08159330
	push {r4, r5, lr}
	sub sp, #0x100
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _0815935C @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08159360 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08159364 @ =VerifyFlashSector_Core
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _08159368 @ =VerifyFlashSector
	ldr r1, _08159364 @ =VerifyFlashSector_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08159378
	.align 2, 0
_0815935C: .4byte 0x04000204
_08159360: .4byte 0x0000FFFC
_08159364: .4byte VerifyFlashSector_Core
_08159368: .4byte VerifyFlashSector
_0815936C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08159378:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0815936C
	mov r3, sp
	adds r3, #1
	ldr r0, _081593A0 @ =gUnk_0824DDA0
	ldrb r1, [r0, #0x1c]
	lsls r4, r1
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r1, r2
	ldrh r2, [r0, #0x18]
	adds r0, r5, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_081593A0: .4byte gUnk_0824DDA0

	thumb_func_start VerifyFlashSectorNBytes
VerifyFlashSectorNBytes: @ 0x081593A4
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _081593D0 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _081593D4 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _081593D8 @ =VerifyFlashSector_Core
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _081593DC @ =VerifyFlashSector
	ldr r1, _081593D8 @ =VerifyFlashSector_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _081593EC
	.align 2, 0
_081593D0: .4byte 0x04000204
_081593D4: .4byte 0x0000FFFC
_081593D8: .4byte VerifyFlashSector_Core
_081593DC: .4byte VerifyFlashSector
_081593E0:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_081593EC:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _081593E0
	mov r3, sp
	adds r3, #1
	ldr r0, _08159414 @ =gUnk_0824DDA0
	ldrb r1, [r0, #0x1c]
	lsls r4, r1
	adds r1, r4, #0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r1, r1, r0
	adds r0, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08159414: .4byte gUnk_0824DDA0

	thumb_func_start ProgramFlashSectorAndVerify
ProgramFlashSectorAndVerify: @ 0x08159418
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _0815942A
_08159424:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0815942A:
	cmp r6, #2
	bhi _08159450
	ldr r0, _08159458 @ =gProgramFlashSector
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08159424
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyFlashSector
	adds r2, r0, #0
	cmp r2, #0
	bne _08159424
_08159450:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08159458: .4byte gProgramFlashSector

	thumb_func_start ProgramFlashSectorAndVerifyNBytes
ProgramFlashSectorAndVerifyNBytes: @ 0x0815945C
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _08159470
_0815946A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08159470:
	cmp r6, #2
	bhi _08159498
	ldr r0, _081594A0 @ =gProgramFlashSector
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0815946A
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl VerifyFlashSectorNBytes
	adds r3, r0, #0
	cmp r3, #0
	bne _0815946A
_08159498:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_081594A0: .4byte gProgramFlashSector
