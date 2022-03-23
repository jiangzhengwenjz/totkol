	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MultiSioInit
MultiSioInit: @ 0x0800601C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080060C0 @ =0x04000208
	movs r3, #0
	strh r3, [r0]
	ldr r2, _080060C4 @ =gUnk_03001064
	ldrh r1, [r2]
	ldr r0, _080060C8 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080060CC @ =0x04000134
	strh r3, [r0]
	ldr r1, _080060D0 @ =0x04000128
	ldr r2, _080060D4 @ =0x00006033
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r4, _080060D8 @ =gMultiSioArea
	ldr r2, _080060DC @ =0x05000056
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _080060E0 @ =MultiSioRecvBufChange
	ldr r1, _080060E4 @ =gMultiSioRecvFuncBuf
	ldr r2, _080060E8 @ =0x04000010
	bl CpuSet
	ldr r0, _080060EC @ =MultiSioIntr
	ldr r1, _080060F0 @ =gMultiSioIntrFuncBuf
	ldr r2, _080060F4 @ =0x04000040
	bl CpuSet
	movs r0, #0xff
	strb r0, [r4, #0xa]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x60
	str r0, [r4, #0x28]
	adds r0, #0x18
	str r0, [r4, #0x2c]
	movs r5, #0
	mov ip, r4
	mov r6, ip
	adds r6, #0xc0
	movs r3, #0
	mov r7, ip
	adds r7, #0x90
	mov r2, ip
	adds r2, #0x30
_08006086:
	lsls r1, r5, #2
	adds r0, r3, r7
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0xa8
	adds r0, r3, r0
	str r0, [r2, #0x10]
	adds r0, r4, #0
	adds r0, #0x50
	adds r1, r1, r0
	str r6, [r1]
	adds r6, #0x48
	adds r3, #0x48
	adds r2, #4
	adds r5, #1
	cmp r5, #1
	ble _08006086
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #9]
	movs r1, #0x92
	lsls r1, r1, #1
	add r1, ip
	movs r0, #1
	strb r0, [r1]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080060C0: .4byte 0x04000208
_080060C4: .4byte gUnk_03001064
_080060C8: .4byte 0x0000FF7F
_080060CC: .4byte 0x04000134
_080060D0: .4byte 0x04000128
_080060D4: .4byte 0x00006033
_080060D8: .4byte gMultiSioArea
_080060DC: .4byte 0x05000056
_080060E0: .4byte MultiSioRecvBufChange
_080060E4: .4byte gMultiSioRecvFuncBuf
_080060E8: .4byte 0x04000010
_080060EC: .4byte MultiSioIntr
_080060F0: .4byte gMultiSioIntrFuncBuf
_080060F4: .4byte 0x04000040

	thumb_func_start MultiSioStart
MultiSioStart: @ 0x080060F8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	ldr r3, _0800615C @ =0x04000208
	ldrh r2, [r3]
	movs r5, #0
	strh r5, [r3]
	ldr r6, _08006160 @ =gUnk_03001064
	ldr r4, _08006164 @ =gUnk_030010B0
	ldrh r0, [r4, #6]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0
	mov r8, r1
	orrs r0, r5
	strh r0, [r4, #6]
	strh r0, [r6]
	ldr r1, _08006168 @ =0x04000200
	strh r0, [r1]
	strh r2, [r3]
	mov r2, r8
	str r2, [sp]
	ldr r1, _0800616C @ =gUnk_03000890
	ldr r4, _08006170 @ =0x05000001
	mov r0, sp
	adds r2, r4, #0
	bl CpuSet
	mov r0, r8
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r1, _08006174 @ =gUnk_03002930
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _08006178 @ =gMultiSioArea
	movs r1, #1
	strb r1, [r0, #9]
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800615C: .4byte 0x04000208
_08006160: .4byte gUnk_03001064
_08006164: .4byte gUnk_030010B0
_08006168: .4byte 0x04000200
_0800616C: .4byte gUnk_03000890
_08006170: .4byte 0x05000001
_08006174: .4byte gUnk_03002930
_08006178: .4byte gMultiSioArea

	thumb_func_start MultiSioStop
MultiSioStop: @ 0x0800617C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, _080061DC @ =gMultiSioArea
	movs r4, #0
	strb r4, [r6, #9]
	ldr r0, _080061E0 @ =0x0400010C
	str r4, [r0]
	ldr r2, _080061E4 @ =gUnk_030010B0
	ldrh r1, [r2, #6]
	ldr r0, _080061E8 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2, #6]
	ldr r1, _080061EC @ =gUnk_03001064
	strh r0, [r1]
	ldr r1, _080061F0 @ =0x04000200
	strh r0, [r1]
	ldr r0, _080061F4 @ =0x04000134
	strh r4, [r0]
	subs r1, #0xd8
	ldr r2, _080061F8 @ =0x00003033
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080061FC @ =0x0400012A
	strh r4, [r0]
	str r4, [sp]
	ldr r1, _08006200 @ =gUnk_03000890
	ldr r5, _08006204 @ =0x05000001
	mov r0, sp
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r1, _08006208 @ =gUnk_03002930
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #8]
	add r0, sp, #8
	ldr r2, _0800620C @ =0x05000056
	adds r1, r6, #0
	bl CpuSet
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080061DC: .4byte gMultiSioArea
_080061E0: .4byte 0x0400010C
_080061E4: .4byte gUnk_030010B0
_080061E8: .4byte 0x0000FF3F
_080061EC: .4byte gUnk_03001064
_080061F0: .4byte 0x04000200
_080061F4: .4byte 0x04000134
_080061F8: .4byte 0x00003033
_080061FC: .4byte 0x0400012A
_08006200: .4byte gUnk_03000890
_08006204: .4byte 0x05000001
_08006208: .4byte gUnk_03002930
_0800620C: .4byte 0x05000056

	thumb_func_start MultiSioMain
MultiSioMain: @ 0x08006210
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, _08006224 @ =gMultiSioArea
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08006228
	cmp r0, #1
	beq _08006284
	b _08006296
	.align 2, 0
_08006224: .4byte gMultiSioArea
_08006228:
	ldr r3, _080062A8 @ =0x04000128
	ldrb r5, [r3]
	movs r0, #8
	mov ip, r0
	ands r0, r5
	cmp r0, #0
	beq _08006284
	ldr r0, _080062AC @ =0x04000134
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08006296
	movs r0, #5
	ands r1, r0
	cmp r1, #1
	bne _08006284
	ldr r1, [r4, #0x14]
	subs r0, #6
	cmp r1, r0
	bne _08006284
	ldr r2, _080062B0 @ =gUnk_030010B0
	ldrh r1, [r2, #6]
	ldr r0, _080062B4 @ =0x0000FF7F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2, #6]
	ldr r1, _080062B8 @ =0x04000200
	strh r0, [r1]
	ldrb r1, [r3, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
	ldr r1, _080062BC @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _080062C0 @ =0x00C0B1FC
	str r0, [r1]
	mov r0, ip
	strb r0, [r4]
	movs r0, #0x80
	orrs r0, r5
	strb r0, [r3]
_08006284:
	adds r0, r6, #0
	bl MultiSioRecvDataCheck
	adds r0, r7, #0
	bl MultiSioSendDataSet
	ldr r1, _080062C4 @ =gMultiSioArea
	movs r0, #1
	strb r0, [r1, #1]
_08006296:
	ldr r0, _080062C4 @ =gMultiSioArea
	ldrb r1, [r0, #0xb]
	adds r1, #1
	strb r1, [r0, #0xb]
	ldrb r0, [r0, #3]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080062A8: .4byte 0x04000128
_080062AC: .4byte 0x04000134
_080062B0: .4byte gUnk_030010B0
_080062B4: .4byte 0x0000FF7F
_080062B8: .4byte 0x04000200
_080062BC: .4byte 0x04000202
_080062C0: .4byte 0x00C0B1FC
_080062C4: .4byte gMultiSioArea

	thumb_func_start MultiSioSendDataSet
MultiSioSendDataSet: @ 0x080062C8
	push {r4, r5, lr}
	movs r5, #0
	ldr r4, _08006328 @ =gMultiSioArea
	ldr r2, [r4, #0x28]
	ldrb r1, [r4, #0xb]
	strb r1, [r2]
	ldr r3, [r4, #0x28]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	eors r1, r2
	strb r1, [r3, #1]
	ldr r1, [r4, #0x28]
	strh r5, [r1, #2]
	ldr r1, [r4, #0x28]
	adds r1, #4
	ldr r2, _0800632C @ =0x04000004
	bl CpuSet
	movs r2, #0
	ldr r1, [r4, #0x28]
_080062F0:
	ldrh r0, [r1]
	adds r5, r5, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #9
	bls _080062F0
	adds r2, r4, #0
	ldr r1, [r2, #0x28]
	mvns r0, r5
	strh r0, [r1, #2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08006310
	ldr r1, _08006330 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08006310:
	movs r0, #0xa
	ldrsb r0, [r4, r0]
	str r0, [r4, #0x14]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08006322
	ldr r1, _08006330 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08006322:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006328: .4byte gMultiSioArea
_0800632C: .4byte 0x04000004
_08006330: .4byte 0x0400010E

	thumb_func_start MultiSioRecvDataCheck
MultiSioRecvDataCheck: @ 0x08006334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _080063E4 @ =gMultiSioRecvFuncBuf
	bl _call_via_r0
	str r0, [sp]
	ldr r1, _080063E8 @ =gMultiSioArea
	movs r0, #0
	strb r0, [r1, #3]
	movs r6, #0
	add r0, sp, #4
	mov sl, r0
	mov sb, r1
	movs r1, #0x50
	add r1, sb
	mov r8, r1
_0800635E:
	movs r3, #0
	movs r2, #0
	lsls r5, r6, #2
	mov r0, sp
	adds r4, r0, r6
	adds r7, r6, #1
	mov r1, r8
	adds r0, r5, r1
	ldr r1, [r0]
_08006370:
	ldrh r0, [r1]
	adds r3, r3, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #9
	bls _08006370
	ldrb r0, [r4]
	cmp r0, #0
	beq _080063AE
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _080063AE
	mov r1, r8
	adds r0, r5, r1
	ldr r0, [r0]
	adds r0, #4
	lsls r1, r6, #4
	ldr r2, [sp, #8]
	adds r1, r2, r1
	ldr r2, _080063EC @ =0x04000004
	bl CpuSet
	movs r0, #1
	lsls r0, r6
	mov r2, sb
	ldrb r1, [r2, #3]
	orrs r0, r1
	strb r0, [r2, #3]
_080063AE:
	movs r0, #0
	str r0, [sp, #4]
	mov r1, r8
	adds r0, r5, r1
	ldr r1, [r0]
	adds r1, #4
	mov r0, sl
	ldr r2, _080063F0 @ =0x05000004
	bl CpuSet
	adds r6, r7, #0
	cmp r6, #1
	ble _0800635E
	ldr r1, _080063E8 @ =gMultiSioArea
	ldrb r0, [r1, #2]
	ldrb r2, [r1, #3]
	orrs r0, r2
	strb r0, [r1, #2]
	ldrb r0, [r1, #3]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080063E4: .4byte gMultiSioRecvFuncBuf
_080063E8: .4byte gMultiSioArea
_080063EC: .4byte 0x04000004
_080063F0: .4byte 0x05000004
