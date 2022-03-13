	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_087D5270
sub_087D5270: @ 0x087D5270
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r4, r0, #0
	mov sl, r1
	str r2, [sp]
	str r3, [sp, #4]
	ldr r0, _087D5394 @ =gUnk_03000000
	ldr r2, _087D5398 @ =gUnk_03000008
	ldrb r3, [r2]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r1, [r1]
	str r1, [sp, #8]
	cmp r1, #0x7f
	ble _087D5298
	b _087D55AC
_087D5298:
	lsls r0, r3, #0xa
	ldr r1, _087D539C @ =gUnk_03000010
	adds r0, r0, r1
	ldr r2, [sp, #8]
	lsls r1, r2, #3
	adds r7, r0, r1
	adds r5, r4, #2
	mov r8, r5
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _087D52B8
	b _087D559E
_087D52B8:
	mov r6, r8
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r3, r0, #8
	orrs r3, r1
	lsrs r1, r3, #0xc
	movs r0, #0xc
	ands r1, r0
	ldrb r0, [r6, #2]
	ldrb r2, [r6, #3]
	lsls r2, r2, #8
	orrs r2, r0
	lsrs r0, r2, #0xe
	orrs r1, r0
	lsls r1, r1, #2
	ldr r0, _087D53A0 @ =gUnk_03006ED0
	adds r5, r1, r0
	ldr r1, _087D53A4 @ =0x000001FF
	adds r0, r1, #0
	ands r2, r0
	adds r1, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _087D52F6
	ldr r2, _087D53A8 @ =0xFFFFFF00
	adds r0, r2, #0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
_087D52F6:
	mov r4, sl
	ldrb r0, [r4, #9]
	ldrh r1, [r5]
	mov r6, sp
	strh r1, [r6, #0x3c]
	cmp r0, #0
	beq _087D5312
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	adds r2, r1, #0
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_087D5312:
	mov r4, sl
	ldr r1, [r4]
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	adds r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	movs r0, #0xff
	adds r1, r0, #0
	ands r1, r3
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _087D533E
	movs r6, #0x80
	rsbs r6, r6, #0
	adds r0, r6, #0
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
_087D533E:
	mov r2, sl
	ldrb r0, [r2, #0xa]
	ldrh r5, [r5, #2]
	add r6, sp, #0x40
	strh r5, [r6]
	cmp r0, #0
	beq _087D535A
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	adds r1, r5, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_087D535A:
	mov r2, sl
	ldr r0, [r2, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldrh r0, [r2, #0x14]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r2, #0x16]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	ldr r4, [sp, #4]
	cmp r4, #0
	ble _087D53AC
	ldr r5, [sp]
	ldrb r5, [r5]
	mov sb, r5
	ldr r6, [sp]
	adds r6, #1
	str r6, [sp]
	subs r4, #1
	str r4, [sp, #4]
	b _087D53B0
	.align 2, 0
_087D5394: .4byte gUnk_03000000
_087D5398: .4byte gUnk_03000008
_087D539C: .4byte gUnk_03000010
_087D53A0: .4byte gUnk_03006ED0
_087D53A4: .4byte 0x000001FF
_087D53A8: .4byte 0xFFFFFF00
_087D53AC:
	movs r1, #0
	mov sb, r1
_087D53B0:
	lsls r4, r0, #0x10
	asrs r2, r4, #0x10
	add r5, sp, #0x40
	ldrh r5, [r5]
	adds r1, r2, r5
	lsls r1, r1, #0x10
	lsls r3, r3, #0x10
	asrs r6, r3, #0x10
	mov ip, r6
	mov r5, sp
	ldrh r0, [r5, #0x3c]
	add r0, ip
	lsls r0, r0, #0x10
	str r2, [sp, #0x18]
	asrs r1, r1, #0x10
	str r1, [sp, #0x1c]
	asrs r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r6, _087D5448 @ =gUnk_03005158
	ldr r0, _087D544C @ =gUnk_03005150
	ldr r5, [r0]
	subs r5, #1
	str r4, [sp, #0x44]
	str r3, [sp, #0x38]
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	str r0, [sp, #0x34]
	adds r1, r7, #0
	adds r1, #8
	str r1, [sp, #0x2c]
	ldr r2, [sp, #8]
	adds r2, #1
	str r2, [sp, #0x24]
	ldr r4, [sp, #0xc]
	subs r4, #1
	str r4, [sp, #0x28]
	mov r0, r8
	adds r0, #6
	str r0, [sp, #0x30]
	cmp r5, #0
	blt _087D5458
	mov r3, ip
_087D5404:
	movs r1, #4
	ldrsh r2, [r6, r1]
	cmp r3, r2
	blt _087D5414
	movs r4, #6
	ldrsh r0, [r6, r4]
	cmp r3, r0
	blt _087D5422
_087D5414:
	ldr r1, [sp, #0x20]
	cmp r1, r2
	ble _087D5450
	movs r2, #6
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bge _087D5450
_087D5422:
	ldr r1, [sp, #0x18]
	movs r4, #0
	ldrsh r2, [r6, r4]
	cmp r1, r2
	blt _087D5434
	movs r4, #2
	ldrsh r0, [r6, r4]
	cmp r1, r0
	blt _087D5442
_087D5434:
	ldr r1, [sp, #0x1c]
	cmp r1, r2
	ble _087D5450
	movs r2, #2
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bge _087D5450
_087D5442:
	ldrb r0, [r6, #8]
	b _087D545A
	.align 2, 0
_087D5448: .4byte gUnk_03005158
_087D544C: .4byte gUnk_03005150
_087D5450:
	adds r6, #0xc
	subs r5, #1
	cmp r5, #0
	bge _087D5404
_087D5458:
	movs r0, #0
_087D545A:
	cmp sb, r0
	bhs _087D5460
	mov sb, r0
_087D5460:
	mov r4, sb
	cmp r4, #1
	bls _087D54A6
	ldr r5, [sp, #0x44]
	asrs r4, r5, #0x10
	add r6, sp, #0x40
	ldrh r6, [r6]
	adds r0, r4, r6
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	ldr r0, [sp, #0x38]
	asrs r3, r0, #0x10
	mov r1, sp
	ldrh r1, [r1, #0x3c]
	adds r0, r3, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r6, _087D55BC @ =gUnk_03005150
	ldr r1, [r6]
	cmp r1, #0x7f
	bgt _087D54A6
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r6, _087D55C0 @ =gUnk_03005158
	adds r0, r0, r6
	adds r1, #1
	ldr r6, _087D55BC @ =gUnk_03005150
	str r1, [r6]
	strh r4, [r0]
	strh r5, [r0, #2]
	strh r3, [r0, #4]
	strh r2, [r0, #6]
	mov r1, sb
	strb r1, [r0, #8]
_087D54A6:
	mov r2, r8
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r7]
	strh r0, [r7]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r7, #2]
	strh r0, [r7, #2]
	ldrb r1, [r2, #4]
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r7, #4]
	strh r0, [r7, #4]
	mov r4, sl
	ldrb r1, [r4, #8]
	movs r4, #3
	ands r1, r4
	lsls r1, r1, #2
	ldrb r2, [r7, #1]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #1]
	ldrb r0, [r7]
	mov r5, sp
	ldrb r5, [r5, #0x14]
	strb r5, [r7]
	ldr r6, [sp, #0x34]
	lsls r1, r6, #7
	lsrs r1, r1, #0x17
	ldrh r2, [r7, #2]
	ldr r0, _087D55C4 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #2]
	mov r1, sl
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _087D551E
	ldrb r0, [r7, #3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	movs r2, #1
	eors r0, r2
	ands r0, r2
	lsls r0, r0, #4
	ldrb r2, [r7, #3]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #3]
_087D551E:
	mov r5, sl
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _087D5540
	ldrb r0, [r7, #3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	movs r6, #1
	eors r0, r6
	ands r0, r6
	lsls r0, r0, #5
	ldrb r2, [r7, #3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #3]
_087D5540:
	ldrh r1, [r7, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	mov r2, sl
	ldr r0, [r2, #0xc]
	adds r1, r1, r0
	ldr r5, _087D55C8 @ =0x000003FF
	adds r0, r5, #0
	ands r1, r0
	ldrh r2, [r7, #4]
	ldr r0, _087D55CC @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #4]
	mov r6, sb
	ands r6, r4
	lsls r2, r6, #2
	ldrb r1, [r7, #5]
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #5]
	ldrb r1, [r7, #5]
	lsrs r1, r1, #4
	mov r2, sl
	ldr r0, [r2, #0x10]
	adds r1, r1, r0
	lsls r1, r1, #4
	ldrb r2, [r7, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #5]
	ldr r7, [sp, #0x2c]
	ldr r4, [sp, #0x24]
	str r4, [sp, #8]
	ldr r5, [sp, #0x28]
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r6, [sp, #0x30]
	mov r8, r6
	cmp r0, #0
	beq _087D559E
	cmp r4, #0x7f
	bgt _087D559E
	b _087D52B8
_087D559E:
	ldr r1, _087D55D0 @ =gUnk_03000008
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r2, _087D55D4 @ =gUnk_03000000
	adds r0, r0, r2
	ldr r4, [sp, #8]
	str r4, [r0]
_087D55AC:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_087D55BC: .4byte gUnk_03005150
_087D55C0: .4byte gUnk_03005158
_087D55C4: .4byte 0xFFFFFE00
_087D55C8: .4byte 0x000003FF
_087D55CC: .4byte 0xFFFFFC00
_087D55D0: .4byte gUnk_03000008
_087D55D4: .4byte gUnk_03000000

	thumb_func_start sub_087D55D8
sub_087D55D8: @ 0x087D55D8
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r5
	cmp r0, #0
	beq _087D5630
	movs r6, #0x1f
	ands r6, r5
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r5
	lsrs r4, r0, #8
	adds r1, r4, #0
	adds r2, r6, #0
	cmp r2, #0
	bge _087D5604
	movs r0, #0xff
	rsbs r0, r0, #0
	b _087D5612
_087D5604:
	ldr r0, _087D5638 @ =gUnk_02029CCC
	lsls r1, r1, #5
	adds r1, r2, r1
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
_087D5612:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, r6
	lsls r0, r0, #5
	adds r0, #0x1f
	adds r2, r0, #0
	movs r7, #8
	ldrsh r0, [r3, r7]
	cmp r0, r2
	bge _087D5630
	strh r5, [r3]
	strh r6, [r3, #2]
	strh r1, [r3, #4]
	strh r4, [r3, #6]
	strh r2, [r3, #8]
_087D5630:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_087D5638: .4byte gUnk_02029CCC

	thumb_func_start sub_087D563C
sub_087D563C: @ 0x087D563C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	adds r6, r3, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r3, sp
	add r1, sp, #0xc
	movs r0, #0
	strh r0, [r1]
	strh r0, [r3]
	ldr r0, _087D56EC @ =0x00008AD0
	strh r0, [r1, #8]
	strh r0, [r3, #8]
	lsls r2, r2, #0x10
	ldr r0, _087D56F0 @ =0x02FF0000
	adds r7, r1, #0
	cmp r2, r0
	bhi _087D569E
	lsls r1, r4, #0x10
	asrs r3, r1, #0x10
	cmp r3, #0
	blt _087D569E
	ldr r0, _087D56F4 @ =0x000003FF
	cmp r3, r0
	bgt _087D569E
	asrs r4, r2, #0x13
	lsls r4, r4, #6
	asrs r0, r1, #0x14
	adds r4, r4, r0
	lsls r4, r4, #0x10
	ldr r5, _087D56F8 @ =gUnk_02026C70
	ldr r0, [r5, #0x40]
	lsrs r4, r4, #0xf
	adds r0, r4, r0
	ldrh r0, [r0]
	mov r1, sp
	bl sub_087D55D8
	ldr r0, [r5, #0x44]
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r1, r7, #0
	bl sub_087D55D8
_087D569E:
	movs r2, #0
	ldrh r0, [r7]
	cmp r0, #0
	bne _087D56A8
	b _087D57B0
_087D56A8:
	ldrh r0, [r7, #2]
	mov r1, r8
	movs r3, #0
	ldrsh r4, [r1, r3]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldrh r0, [r1]
	mov ip, r0
	ldrh r5, [r1, #4]
	cmp r4, r3
	blt _087D56D4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	movs r0, #6
	ldrsh r1, [r7, r0]
	mov sb, r1
	cmp sl, sb
	blt _087D56D0
	b _087D58E4
_087D56D0:
	cmp r4, r3
	bgt _087D570C
_087D56D4:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r3, #6
	ldrsh r1, [r7, r3]
	cmp r0, r1
	bgt _087D56FC
	mov r4, r8
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r2, #4
	ldrsh r0, [r7, r2]
	b _087D57A0
	.align 2, 0
_087D56EC: .4byte 0x00008AD0
_087D56F0: .4byte 0x02FF0000
_087D56F4: .4byte 0x000003FF
_087D56F8: .4byte gUnk_02026C70
_087D56FC:
	ldrh r3, [r7, #2]
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _087D575C
_087D570C:
	movs r0, #2
	ldrsh r1, [r7, r0]
	ldrh r0, [r7, #6]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r1, #0
	cmp r2, #0
	blt _087D5724
	adds r1, r0, #0
	cmp r1, #0
	bge _087D572A
_087D5724:
	movs r0, #0xff
	rsbs r0, r0, #0
	b _087D5738
_087D572A:
	ldr r0, _087D5758 @ =gUnk_02029CCC
	lsls r1, r1, #5
	adds r1, r2, r1
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
_087D5738:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #4
	ldrsh r1, [r7, r2]
	cmp r0, r1
	blt _087D5746
	b _087D58E4
_087D5746:
	mov r3, r8
	movs r4, #6
	ldrsh r1, [r3, r4]
	movs r2, #8
	ldrsh r0, [r7, r2]
	cmp r1, r0
	blt _087D57A6
	b _087D58E4
	.align 2, 0
_087D5758: .4byte gUnk_02029CCC
_087D575C:
	cmp r1, r0
	blt _087D5762
	b _087D58E6
_087D5762:
	subs r0, r3, #1
	movs r3, #6
	ldrsh r1, [r7, r3]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _087D5774
	cmp r1, #0
	bge _087D577A
_087D5774:
	movs r0, #0xff
	rsbs r0, r0, #0
	b _087D5788
_087D577A:
	ldr r0, _087D57AC @ =gUnk_02029CCC
	lsls r1, r1, #5
	adds r1, r2, r1
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
_087D5788:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #4
	ldrsh r1, [r7, r4]
	cmp r0, r1
	blt _087D5796
	b _087D58E4
_087D5796:
	mov r0, r8
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r3, #8
	ldrsh r0, [r7, r3]
_087D57A0:
	cmp r1, r0
	blt _087D57A6
	b _087D58E4
_087D57A6:
	ldrb r2, [r6, #1]
	b _087D58E6
	.align 2, 0
_087D57AC: .4byte gUnk_02029CCC
_087D57B0:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _087D57BA
	b _087D58E4
_087D57BA:
	mov r0, sp
	ldrh r0, [r0, #2]
	mov r7, r8
	movs r1, #0
	ldrsh r4, [r7, r1]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldrh r7, [r7]
	mov ip, r7
	mov r0, r8
	ldrh r5, [r0, #4]
	cmp r4, r3
	blt _087D57E8
	mov r0, sp
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	movs r7, #6
	ldrsh r0, [r0, r7]
	cmp r1, r0
	blt _087D57E4
	b _087D58E4
_087D57E4:
	cmp r4, r3
	bgt _087D5826
_087D57E8:
	mov r0, sp
	lsls r1, r5, #0x10
	asrs r3, r1, #0x10
	movs r1, #6
	ldrsh r0, [r0, r1]
	cmp r3, r0
	bgt _087D5814
	mov r0, sp
	mov r2, r8
	movs r4, #2
	ldrsh r1, [r2, r4]
	movs r7, #4
	ldrsh r0, [r0, r7]
	cmp r1, r0
	bge _087D58E4
	mov r1, ip
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _087D58DA
	cmp r3, #0
	bge _087D58E4
	b _087D58DA
_087D5814:
	mov r0, sp
	ldrh r3, [r0, #2]
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _087D5880
_087D5826:
	mov r0, sp
	movs r7, #2
	ldrsh r1, [r0, r7]
	ldrh r0, [r0, #6]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r1, #0
	cmp r2, #0
	blt _087D5840
	adds r1, r0, #0
	cmp r1, #0
	bge _087D5846
_087D5840:
	movs r1, #0xff
	rsbs r1, r1, #0
	b _087D5856
_087D5846:
	ldr r0, _087D587C @ =gUnk_02029CCC
	lsls r1, r1, #5
	adds r1, r2, r1
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	adds r1, r0, #0
_087D5856:
	mov r0, sp
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _087D58E4
	mov r0, sp
	mov r3, r8
	movs r4, #6
	ldrsh r1, [r3, r4]
	movs r7, #8
	ldrsh r0, [r0, r7]
	cmp r1, r0
	bge _087D58E4
	mov r1, ip
	lsls r0, r1, #0x10
	b _087D58D0
	.align 2, 0
_087D587C: .4byte gUnk_02029CCC
_087D5880:
	cmp r1, r0
	bge _087D58E6
	subs r0, r3, #1
	mov r1, sp
	movs r2, #6
	ldrsh r1, [r1, r2]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _087D5898
	cmp r1, #0
	bge _087D589E
_087D5898:
	movs r1, #0xff
	rsbs r1, r1, #0
	b _087D58AE
_087D589E:
	ldr r0, _087D58E0 @ =gUnk_02029CCC
	lsls r1, r1, #5
	adds r1, r2, r1
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	adds r1, r0, #0
_087D58AE:
	mov r0, sp
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #4
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _087D58E4
	mov r0, sp
	mov r4, r8
	movs r7, #6
	ldrsh r1, [r4, r7]
	movs r2, #8
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _087D58E4
	mov r3, ip
	lsls r0, r3, #0x10
_087D58D0:
	cmp r0, #0
	blt _087D58DA
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _087D58E4
_087D58DA:
	ldrb r2, [r6, #2]
	b _087D58E6
	.align 2, 0
_087D58E0: .4byte gUnk_02029CCC
_087D58E4:
	ldrb r2, [r6]
_087D58E6:
	adds r0, r2, #0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_087D58F8
sub_087D58F8: @ 0x087D58F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r4, [sp, #0x2c]
	ldr r3, [sp, #0x34]
	ldr r6, [sp, #0x38]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #8]
	movs r0, #0
	strb r0, [r6, #3]
	strb r0, [r6, #2]
	strb r0, [r6, #1]
	strb r0, [r6]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldr r0, _087D5970 @ =0x0000FFFF
	mov r5, sp
	ldr r1, [sp, #4]
	ands r1, r0
	orrs r1, r3
	asrs r2, r2, #0x15
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _087D5974 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r2
	str r0, [sp]
	asrs r4, r4, #0x15
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ands r1, r3
	orrs r1, r4
	str r1, [sp, #4]
	mov r0, sp
	movs r2, #4
	ldrsh r1, [r5, r2]
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r2, #0
	blt _087D5968
	cmp r1, #0
	bge _087D5978
_087D5968:
	movs r0, #0xff
	rsbs r0, r0, #0
	b _087D5986
	.align 2, 0
_087D5970: .4byte 0x0000FFFF
_087D5974: .4byte 0xFFFF0000
_087D5978:
	ldr r0, _087D5A90 @ =gUnk_02029CCC
	lsls r1, r1, #5
	adds r1, r2, r1
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
_087D5986:
	lsls r2, r0, #0x10
	ldr r1, _087D5A94 @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r0, r1
	asrs r0, r0, #0x10
	mov r8, r0
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	ldr r3, _087D5A98 @ =0xFFE10000
	adds r0, r0, r3
	asrs r0, r0, #0x10
	mov sl, r0
	mov r0, sp
	mov r1, r8
	mov r2, sl
	ldr r3, [sp, #0x30]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r7, #0
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	mov r0, sp
	mov r1, r8
	mov r2, sb
	ldr r3, [sp, #0x30]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, r4
	bhs _087D59E0
	adds r1, r4, #0
_087D59E0:
	strb r1, [r6]
	adds r0, r5, #0
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	mov r0, sp
	adds r1, r5, #0
	mov r2, sl
	ldr r3, [sp, #0x30]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r0, sp
	adds r1, r5, #0
	mov r2, sb
	ldr r3, [sp, #0x30]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, r4
	bhs _087D5A12
	adds r1, r4, #0
_087D5A12:
	strb r1, [r6, #1]
	adds r0, r7, #0
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	mov r0, sp
	adds r1, r5, #0
	mov r2, sb
	ldr r3, [sp, #0x30]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	subs r0, r7, #1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	mov r0, sp
	adds r1, r5, #0
	adds r2, r7, #0
	ldr r3, [sp, #0x30]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, r4
	bhs _087D5A4C
	adds r1, r4, #0
_087D5A4C:
	strb r1, [r6, #2]
	mov r0, sp
	mov r1, r8
	mov r2, sb
	ldr r3, [sp, #0x30]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r0, sp
	mov r1, r8
	adds r2, r7, #0
	ldr r3, [sp, #0x30]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, r4
	bhs _087D5A76
	adds r1, r4, #0
_087D5A76:
	strb r1, [r6, #3]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _087D5AB8
	ldrb r3, [r6]
	ldrb r2, [r6, #1]
	adds r1, r3, #0
	adds r0, r2, #0
	cmp r1, r0
	bhs _087D5A9C
	strb r2, [r6]
	b _087D5AA2
	.align 2, 0
_087D5A90: .4byte gUnk_02029CCC
_087D5A94: .4byte 0x0000FFFF
_087D5A98: .4byte 0xFFE10000
_087D5A9C:
	cmp r0, r1
	bhs _087D5AA2
	strb r3, [r6, #1]
_087D5AA2:
	ldrb r3, [r6, #2]
	ldrb r2, [r6, #3]
	adds r1, r3, #0
	adds r0, r2, #0
	cmp r1, r0
	bhs _087D5AB2
	strb r2, [r6, #2]
	b _087D5AB8
_087D5AB2:
	cmp r0, r1
	bhs _087D5AB8
	strb r3, [r6, #3]
_087D5AB8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_087D5AC8
sub_087D5AC8: @ 0x087D5AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov r8, r0
	mov sl, r3
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x44]
	ldr r4, [sp, #0x48]
	ldr r5, [sp, #0x4c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0xc]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x10]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x14]
	lsls r2, r2, #0x10
	ldr r0, _087D5C10 @ =0xFFF00000
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	movs r1, #2
	add r1, sl
	mov sb, r1
	movs r2, #0
	str r2, [sp, #0x18]
	mov r3, sl
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r2, r0
	blt _087D5B22
	b _087D5CD0
_087D5B22:
	ldr r5, [sp, #4]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x1c]
_087D5B2A:
	mov r6, sb
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r4, r0, #8
	orrs r4, r1
	adds r0, r4, #0
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r0, r1
	lsrs r3, r0, #0xc
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	lsls r1, r1, #8
	orrs r1, r0
	adds r0, r1, #0
	movs r2, #0xc0
	lsls r2, r2, #8
	ands r0, r2
	lsrs r0, r0, #0xe
	orrs r3, r0
	ldr r5, _087D5C14 @ =0x000001FF
	adds r0, r5, #0
	adds r2, r0, #0
	ands r2, r1
	adds r1, r2, #0
	adds r0, r1, #0
	movs r6, #0x80
	lsls r6, r6, #1
	ands r0, r6
	cmp r0, #0
	beq _087D5B72
	ldr r2, _087D5C18 @ =0xFFFFFF00
	adds r0, r2, #0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
_087D5B72:
	lsls r6, r3, #2
	ldr r3, [sp, #8]
	cmp r3, #0
	beq _087D5B8C
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	ldr r5, _087D5C1C @ =gUnk_03006ED0
	adds r1, r6, r5
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_087D5B8C:
	ldr r0, [sp, #0x10]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r0, #0xff
	adds r2, r0, #0
	ands r2, r4
	adds r1, r2, #0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _087D5BB8
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r2, #0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
_087D5BB8:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq _087D5BD0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	ldr r5, _087D5C1C @ =gUnk_03006ED0
	adds r1, r6, r5
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_087D5BD0:
	ldr r0, [sp, #0x14]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r0, r7, #0x10
	ldr r3, [sp]
	lsls r1, r3, #0x10
	adds r7, r0, #0
	mov ip, r1
	cmp r7, ip
	bge _087D5C26
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	ldr r5, _087D5C1C @ =gUnk_03006ED0
	adds r0, r6, r5
	movs r3, #2
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	subs r1, #1
	ldr r0, [sp, #4]
	lsls r5, r0, #0x10
	adds r3, r2, #0
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	bge _087D5C20
	mov r0, r8
	ldrb r4, [r0, #1]
	b _087D5C50
	.align 2, 0
_087D5C10: .4byte 0xFFF00000
_087D5C14: .4byte 0x000001FF
_087D5C18: .4byte 0xFFFFFF00
_087D5C1C: .4byte gUnk_03006ED0
_087D5C20:
	mov r1, r8
	ldrb r4, [r1, #2]
	b _087D5C50
_087D5C26:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	ldr r3, _087D5C48 @ =gUnk_03006ED0
	adds r0, r6, r3
	movs r5, #2
	ldrsh r0, [r0, r5]
	adds r1, r1, r0
	subs r1, #1
	ldr r0, [sp, #4]
	lsls r5, r0, #0x10
	adds r3, r2, #0
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	bge _087D5C4C
	mov r0, r8
	ldrb r4, [r0]
	b _087D5C50
	.align 2, 0
_087D5C48: .4byte gUnk_03006ED0
_087D5C4C:
	mov r1, r8
	ldrb r4, [r1, #3]
_087D5C50:
	asrs r0, r7, #0x10
	ldr r1, _087D5C7C @ =gUnk_03006ED0
	adds r2, r6, r1
	movs r6, #0
	ldrsh r1, [r2, r6]
	adds r0, r0, r1
	subs r0, #1
	mov r6, ip
	asrs r1, r6, #0x10
	cmp r0, r1
	bge _087D5C86
	asrs r0, r3, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	subs r0, #1
	asrs r1, r5, #0x10
	cmp r0, r1
	bge _087D5C80
	mov r5, r8
	ldrb r0, [r5, #1]
	b _087D5CA0
	.align 2, 0
_087D5C7C: .4byte gUnk_03006ED0
_087D5C80:
	mov r6, r8
	ldrb r0, [r6, #2]
	b _087D5CA0
_087D5C86:
	asrs r0, r3, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	subs r0, #1
	asrs r1, r5, #0x10
	cmp r0, r1
	bge _087D5C9C
	mov r5, r8
	ldrb r0, [r5]
	b _087D5CA0
_087D5C9C:
	mov r6, r8
	ldrb r0, [r6, #3]
_087D5CA0:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x54]
	cmp r1, r2
	bge _087D5CB6
	ldr r3, [sp, #0x50]
	adds r2, r3, r1
	adds r1, r0, #0
	cmp r0, r4
	bhs _087D5CB4
	adds r1, r4, #0
_087D5CB4:
	strb r1, [r2]
_087D5CB6:
	ldr r5, [sp, #0x18]
	adds r5, #1
	str r5, [sp, #0x18]
	movs r6, #6
	add sb, r6
	mov r0, sl
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r5, r0
	bge _087D5CD0
	b _087D5B2A
_087D5CD0:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_087D5CE0
sub_087D5CE0: @ 0x087D5CE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x34]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	movs r0, #0
	mov r8, r0
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r0, _087D5D54 @ =0x0000FFFF
	mov r3, sp
	ldr r1, [sp, #4]
	ands r1, r0
	orrs r1, r2
	asrs r4, r4, #0x15
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _087D5D58 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r4
	str r0, [sp]
	asrs r5, r5, #0x15
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ands r1, r2
	orrs r1, r5
	str r1, [sp, #4]
	mov r0, sp
	movs r2, #4
	ldrsh r1, [r3, r2]
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r2, #0
	blt _087D5D4C
	cmp r1, #0
	bge _087D5D5C
_087D5D4C:
	movs r0, #0xff
	rsbs r0, r0, #0
	b _087D5D6A
	.align 2, 0
_087D5D54: .4byte 0x0000FFFF
_087D5D58: .4byte 0xFFFF0000
_087D5D5C:
	ldr r0, _087D5E38 @ =gUnk_02029CCC
	lsls r1, r1, #5
	adds r1, r2, r1
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
_087D5D6A:
	lsls r2, r0, #0x10
	ldr r1, _087D5E3C @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	lsls r3, r6, #0x10
	asrs r0, r3, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r4, sb
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	mov r6, ip
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r2, #0x10
	mov ip, r0
	lsrs r4, r1, #0x10
	mov sb, r4
	mov sl, r3
	cmp r2, r1
	bge _087D5E08
	ldr r6, [sp, #8]
	lsls r7, r6, #0x10
	asrs r6, r7, #0x10
_087D5DAE:
	mov r1, sl
	asrs r0, r1, #0x10
	mov r2, ip
	lsls r5, r2, #0x10
	cmp r0, r6
	bge _087D5DDE
_087D5DBA:
	asrs r4, r1, #0x10
	mov r0, sp
	adds r1, r4, #0
	asrs r2, r5, #0x10
	ldr r3, [sp, #0x38]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r8, r0
	bhs _087D5DD2
	mov r8, r0
_087D5DD2:
	adds r0, r4, #0
	adds r0, #0x10
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, r6
	blt _087D5DBA
_087D5DDE:
	asrs r4, r5, #0x10
	mov r0, sp
	asrs r1, r7, #0x10
	adds r2, r4, #0
	ldr r3, [sp, #0x38]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r8, r0
	bhs _087D5DF6
	mov r8, r0
_087D5DF6:
	adds r1, r4, #0
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov ip, r3
	mov r4, sb
	lsls r0, r4, #0x10
	cmp r1, r0
	blt _087D5DAE
_087D5E08:
	ldr r6, [sp, #8]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	mov r0, sp
	ldr r3, [sp, #0x38]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r8, r0
	bhs _087D5E26
	mov r8, r0
_087D5E26:
	mov r0, r8
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_087D5E38: .4byte gUnk_02029CCC
_087D5E3C: .4byte 0x0000FFFF

	thumb_func_start sub_087D5E40
sub_087D5E40: @ 0x087D5E40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	adds r7, r0, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x98]
	ldr r5, [sp, #0x9c]
	ldr r4, [sp, #0xa8]
	ldr r6, [sp, #0xac]
	mov ip, r6
	ldr r6, [sp, #0xb0]
	mov r8, r6
	ldr r6, [sp, #0xb4]
	mov sb, r6
	ldr r6, [sp, #0xb8]
	mov sl, r6
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x20]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x24]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r5, [sp, #0x28]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x2c]
	mov r0, ip
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x30]
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x34]
	mov r2, sb
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x38]
	mov r3, sl
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x3c]
	ldr r2, _087D5F20 @ =gUnk_03000000
	ldr r0, _087D5F24 @ =gUnk_03000008
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x40]
	lsls r1, r1, #0xa
	ldr r0, _087D5F28 @ =gUnk_03000010
	adds r5, r1, r0
	ldr r4, [sp, #0x40]
	cmp r4, #0x7f
	ble _087D5ECC
	b _087D6276
_087D5ECC:
	lsls r0, r4, #3
	adds r5, r5, r0
	adds r6, r7, #2
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	lsls r0, r0, #8
	mov sb, r0
	mov r7, sb
	orrs r7, r1
	mov sb, r7
	cmp r7, #0
	bne _087D5EE6
	b _087D6268
_087D5EE6:
	ldrb r1, [r6, #1]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	ldrb r0, [r6, #3]
	lsrs r0, r0, #6
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _087D5F2C @ =gUnk_03006ED0
	adds r1, r1, r0
	mov r8, r1
	ldrb r1, [r6, #2]
	ldrb r0, [r6, #3]
	movs r2, #1
	ands r0, r2
	lsls r2, r0, #8
	orrs r2, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _087D5F30
	movs r4, #0xff
	lsls r4, r4, #8
	adds r0, r4, #0
	orrs r0, r2
	b _087D5F32
	.align 2, 0
_087D5F20: .4byte gUnk_03000000
_087D5F24: .4byte gUnk_03000008
_087D5F28: .4byte gUnk_03000010
_087D5F2C: .4byte gUnk_03006ED0
_087D5F30:
	adds r0, r2, #0
_087D5F32:
	ldr r7, [sp, #0x24]
	cmp r7, #0
	beq _087D5F48
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	mov r2, r8
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_087D5F48:
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	ldr r3, [sp, #0x10]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	str r4, [sp, #0x44]
	asrs r2, r0, #0x10
	adds r3, r1, #0
	cmp r2, #0
	bge _087D5F76
	mov r7, r8
	movs r1, #0
	ldrsh r0, [r7, r1]
	adds r0, r2, r0
	mov r4, sb
	subs r4, #1
	str r4, [sp, #0x64]
	adds r7, r6, #6
	mov ip, r7
	cmp r0, #0
	bge _087D5F76
	b _087D6252
_087D5F76:
	cmp r2, #0xef
	ble _087D5F92
	mov r1, r8
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r2, r0
	mov r7, sb
	subs r7, #1
	str r7, [sp, #0x64]
	adds r1, r6, #6
	mov ip, r1
	cmp r0, #0xef
	ble _087D5F92
	b _087D6252
_087D5F92:
	ldrb r2, [r6]
	movs r1, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _087D5FAC
	ldr r4, _087D5FA8 @ =0x0000FF80
	adds r0, r4, #0
	orrs r0, r2
	b _087D5FAE
	.align 2, 0
_087D5FA8: .4byte 0x0000FF80
_087D5FAC:
	adds r0, r2, #0
_087D5FAE:
	ldr r7, [sp, #0x28]
	cmp r7, #0
	beq _087D5FC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	mov r2, r8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_087D5FC4:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r4, [sp, #0x14]
	adds r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	str r7, [sp, #0x48]
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _087D5FF0
	mov r4, r8
	movs r7, #2
	ldrsh r0, [r4, r7]
	adds r0, r1, r0
	mov r4, sb
	subs r4, #1
	str r4, [sp, #0x64]
	adds r7, r6, #6
	mov ip, r7
	cmp r0, #0
	bge _087D5FF0
	b _087D6252
_087D5FF0:
	cmp r1, #0x9f
	ble _087D600C
	mov r4, r8
	movs r7, #2
	ldrsh r0, [r4, r7]
	adds r0, r1, r0
	mov r1, sb
	subs r1, #1
	str r1, [sp, #0x64]
	adds r4, r6, #6
	mov ip, r4
	cmp r0, #0x9f
	ble _087D600C
	b _087D6252
_087D600C:
	ldr r7, [sp, #0x2c]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	asrs r0, r3, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x30]
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r2
	lsls r4, r4, #0x10
	lsrs r2, r1, #0x10
	str r2, [sp, #0x4c]
	asrs r7, r1, #0x10
	lsrs r3, r4, #0x10
	str r3, [sp, #0x50]
	asrs r4, r4, #0x10
	mov r0, r8
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r1, #2
	ldrsh r3, [r0, r1]
	ldr r1, [sp, #0x34]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #0x38]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _087D60E8 @ =gUnk_03006F10
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_087D5CE0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	mov r2, r8
	ldrh r1, [r2, #2]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	ldrh r0, [r2]
	adds r0, r7, r0
	lsls r0, r0, #0x10
	str r4, [sp, #0x54]
	asrs r1, r1, #0x10
	str r1, [sp, #0x58]
	asrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r4, _087D60EC @ =gUnk_03005158
	ldr r0, _087D60F0 @ =gUnk_03005150
	ldr r1, [r0]
	subs r1, #1
	ldr r3, [sp, #0x44]
	lsls r3, r3, #0x10
	str r3, [sp, #0x6c]
	adds r0, r5, #0
	adds r0, #8
	str r0, [sp, #0x68]
	ldr r2, [sp, #0x40]
	adds r2, #1
	str r2, [sp, #0x60]
	mov r3, sb
	subs r3, #1
	str r3, [sp, #0x64]
	adds r0, r6, #6
	mov ip, r0
	cmp r1, #0
	blt _087D60FC
	mov sb, r7
_087D60A4:
	movs r2, #4
	ldrsh r3, [r4, r2]
	cmp sb, r3
	blt _087D60B4
	movs r7, #6
	ldrsh r0, [r4, r7]
	cmp sb, r0
	blt _087D60C2
_087D60B4:
	ldr r2, [sp, #0x5c]
	cmp r2, r3
	ble _087D60F4
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r2, r0
	bge _087D60F4
_087D60C2:
	ldr r2, [sp, #0x54]
	movs r7, #0
	ldrsh r3, [r4, r7]
	cmp r2, r3
	blt _087D60D4
	movs r7, #2
	ldrsh r0, [r4, r7]
	cmp r2, r0
	blt _087D60E2
_087D60D4:
	ldr r2, [sp, #0x58]
	cmp r2, r3
	ble _087D60F4
	movs r3, #2
	ldrsh r0, [r4, r3]
	cmp r2, r0
	bge _087D60F4
_087D60E2:
	ldrb r0, [r4, #8]
	b _087D60FE
	.align 2, 0
_087D60E8: .4byte gUnk_03006F10
_087D60EC: .4byte gUnk_03005158
_087D60F0: .4byte gUnk_03005150
_087D60F4:
	adds r4, #0xc
	subs r1, #1
	cmp r1, #0
	bge _087D60A4
_087D60FC:
	movs r0, #0
_087D60FE:
	cmp sl, r0
	bhs _087D6104
	mov sl, r0
_087D6104:
	mov r4, sl
	cmp r4, #1
	bls _087D6152
	ldr r7, [sp, #0x50]
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	mov r1, r8
	ldrh r0, [r1, #2]
	adds r0, r7, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r2, [sp, #0x4c]
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	ldrh r0, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r4, _087D6288 @ =gUnk_03005150
	ldr r2, [r4]
	cmp r2, #0x7f
	bgt _087D6152
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _087D628C @ =gUnk_03005158
	adds r0, r0, r1
	adds r1, r2, #1
	str r1, [r4]
	strh r7, [r0]
	mov r4, sb
	strh r4, [r0, #2]
	strh r3, [r0, #4]
	mov r7, r8
	strh r7, [r0, #6]
	mov r1, sl
	strb r1, [r0, #8]
_087D6152:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5]
	strh r0, [r5]
	ldrb r1, [r6, #2]
	ldrb r0, [r6, #3]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5, #2]
	strh r0, [r5, #2]
	ldrb r1, [r6, #4]
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5, #4]
	strh r0, [r5, #4]
	ldr r2, [sp, #0x18]
	cmp r2, #3
	beq _087D6190
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #2
	ldrb r0, [r5, #1]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #1]
_087D6190:
	ldrb r0, [r5]
	add r4, sp, #0x48
	ldrb r4, [r4]
	strb r4, [r5]
	ldr r1, [sp, #0x1c]
	movs r6, #1
	ands r1, r6
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r1, [sp, #0x20]
	ands r1, r6
	lsls r1, r1, #5
	ldrb r2, [r5, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r7, [sp, #0x6c]
	lsls r2, r7, #7
	lsrs r2, r2, #0x17
	ldrh r0, [r5, #2]
	ldr r3, _087D6290 @ =0xFFFFFE00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #2]
	ldrb r1, [r5, #3]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1f
	ldr r4, [sp, #0x24]
	eors r1, r4
	ands r1, r6
	lsls r1, r1, #4
	ldrb r2, [r5, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #3]
	ldrb r1, [r5, #3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	ldr r6, [sp, #0x28]
	eors r1, r6
	movs r7, #1
	ands r1, r7
	lsls r1, r1, #5
	ldrb r2, [r5, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #3]
	ldrh r1, [r5, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r0, [sp, #0xa0]
	adds r1, r1, r0
	ldr r2, _087D6294 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r0, [r5, #4]
	ldr r3, _087D6298 @ =0xFFFFFC00
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #4]
	movs r0, #3
	mov r4, sl
	ands r4, r0
	lsls r2, r4, #2
	ldrb r0, [r5, #5]
	movs r6, #0xd
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #5]
	ldrb r1, [r5, #5]
	lsrs r1, r1, #4
	ldr r7, [sp, #0xa4]
	adds r1, r1, r7
	lsls r1, r1, #4
	ldrb r2, [r5, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	ldr r5, [sp, #0x68]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x40]
_087D6252:
	ldr r1, [sp, #0x64]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r6, ip
	cmp r0, #0
	beq _087D6268
	ldr r2, [sp, #0x40]
	cmp r2, #0x7f
	bgt _087D6268
	b _087D5EE6
_087D6268:
	ldr r1, _087D629C @ =gUnk_03000000
	ldr r0, _087D62A0 @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [sp, #0x40]
	str r3, [r0]
_087D6276:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_087D6288: .4byte gUnk_03005150
_087D628C: .4byte gUnk_03005158
_087D6290: .4byte 0xFFFFFE00
_087D6294: .4byte 0x000003FF
_087D6298: .4byte 0xFFFFFC00
_087D629C: .4byte gUnk_03000000
_087D62A0: .4byte gUnk_03000008

	thumb_func_start sub_087D62A4
sub_087D62A4: @ 0x087D62A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r4, [sp, #0x30]
	ldr r5, [sp, #0x38]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	movs r0, #0
	mov sl, r0
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r0, _087D6318 @ =0x0000FFFF
	mov r3, sp
	ldr r1, [sp, #4]
	ands r1, r0
	orrs r1, r2
	asrs r4, r4, #0x15
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _087D631C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r4
	str r0, [sp]
	asrs r5, r5, #0x15
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ands r1, r2
	orrs r1, r5
	str r1, [sp, #4]
	mov r0, sp
	movs r2, #4
	ldrsh r1, [r3, r2]
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r2, #0
	blt _087D6310
	cmp r1, #0
	bge _087D6320
_087D6310:
	movs r0, #0xff
	rsbs r0, r0, #0
	b _087D632E
	.align 2, 0
_087D6318: .4byte 0x0000FFFF
_087D631C: .4byte 0xFFFF0000
_087D6320:
	ldr r0, _087D63C0 @ =gUnk_02029CCC
	lsls r1, r1, #5
	adds r1, r2, r1
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
_087D632E:
	lsls r2, r0, #0x10
	ldr r1, _087D63C4 @ =0x0000FFFF
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	lsls r2, r6, #0x10
	asrs r6, r2, #0x10
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, r1
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	lsls r0, r7, #0x10
	asrs r3, r0, #0x10
	adds r0, r4, r3
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	str r2, [sp, #0xc]
	cmp r1, #8
	beq _087D636A
	cmp r3, #8
	bne _087D63C8
_087D636A:
	adds r0, r4, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r5, #0x10
	mov r8, r1
	cmp r0, r8
	bge _087D6448
	adds r0, r6, #4
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, sb
	lsls r6, r0, #0x10
	asrs r1, r6, #0x10
	mov sb, r1
_087D6386:
	ldr r1, [sp, #8]
	asrs r0, r1, #0x10
	lsls r5, r7, #0x10
	cmp r0, sb
	bge _087D63B2
_087D6390:
	asrs r4, r1, #0x10
	mov r0, sp
	adds r1, r4, #0
	asrs r2, r5, #0x10
	ldr r3, [sp, #0x3c]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp sl, r0
	bhs _087D63A8
	mov sl, r0
_087D63A8:
	adds r0, r4, #0
	adds r0, #0x10
	lsls r1, r0, #0x10
	cmp r1, r6
	blt _087D6390
_087D63B2:
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r0, r5, r2
	lsrs r7, r0, #0x10
	cmp r0, r8
	blt _087D6386
	b _087D6448
	.align 2, 0
_087D63C0: .4byte gUnk_02029CCC
_087D63C4: .4byte 0x0000FFFF
_087D63C8:
	adds r1, r4, #7
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r0, r5, #0x10
	mov r8, r0
	mov r3, sb
	lsls r6, r3, #0x10
	cmp r1, r8
	bge _087D6430
	asrs r0, r6, #0x10
	mov sb, r0
_087D63DE:
	ldr r1, [sp, #0xc]
	asrs r0, r1, #0x10
	lsls r5, r7, #0x10
	cmp r0, sb
	bge _087D640C
_087D63E8:
	asrs r4, r1, #0x10
	mov r0, sp
	adds r1, r4, #0
	asrs r2, r5, #0x10
	ldr r3, [sp, #0x3c]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp sl, r0
	bhs _087D6400
	mov sl, r0
_087D6400:
	adds r0, r4, #0
	adds r0, #0x10
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, sb
	blt _087D63E8
_087D640C:
	asrs r4, r5, #0x10
	mov r0, sp
	asrs r1, r6, #0x10
	adds r2, r4, #0
	ldr r3, [sp, #0x3c]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp sl, r0
	bhs _087D6424
	mov sl, r0
_087D6424:
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, r8
	blt _087D63DE
_087D6430:
	asrs r1, r6, #0x10
	mov r3, r8
	asrs r2, r3, #0x10
	mov r0, sp
	ldr r3, [sp, #0x3c]
	bl sub_087D563C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp sl, r0
	bhs _087D6448
	mov sl, r0
_087D6448:
	mov r0, sl
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_087D645C
sub_087D645C: @ 0x087D645C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r4, r0, #0
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x70]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x14]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r2, _087D64F0 @ =gUnk_03000000
	ldr r0, _087D64F4 @ =gUnk_03000008
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	lsls r1, r1, #0xa
	ldr r0, _087D64F8 @ =gUnk_03000010
	adds r5, r1, r0
	ldr r0, [sp, #0x20]
	cmp r0, #0x7f
	ble _087D649C
	b _087D6832
_087D649C:
	lsls r0, r0, #3
	adds r5, r5, r0
	adds r6, r4, #2
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	mov sb, r0
	mov r2, sb
	orrs r2, r1
	mov sb, r2
	cmp r2, #0
	bne _087D64B6
	b _087D6824
_087D64B6:
	ldrb r1, [r6, #1]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	ldrb r0, [r6, #3]
	lsrs r0, r0, #6
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _087D64FC @ =gUnk_03006ED0
	adds r1, r1, r0
	mov r8, r1
	ldrb r1, [r6, #2]
	ldrb r0, [r6, #3]
	movs r3, #1
	ands r0, r3
	lsls r2, r0, #8
	orrs r2, r1
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _087D6500
	movs r7, #0xff
	lsls r7, r7, #8
	adds r0, r7, #0
	orrs r0, r2
	b _087D6502
	.align 2, 0
_087D64F0: .4byte gUnk_03000000
_087D64F4: .4byte gUnk_03000008
_087D64F8: .4byte gUnk_03000010
_087D64FC: .4byte gUnk_03006ED0
_087D6500:
	adds r0, r2, #0
_087D6502:
	adds r2, r0, #0
	ldr r1, [sp, #0x10]
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _087D651C
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	mov r2, r8
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_087D651C:
	ldr r3, [sp, #0x10]
	ldr r0, [r3]
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	str r4, [sp, #0x24]
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _087D654A
	mov r7, r8
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r0, r1, r0
	mov r4, sb
	subs r4, #1
	str r4, [sp, #0x40]
	adds r7, r6, #6
	str r7, [sp, #0x48]
	cmp r0, #0
	bge _087D654A
	b _087D680E
_087D654A:
	cmp r1, #0xef
	ble _087D6566
	mov r3, r8
	movs r4, #0
	ldrsh r0, [r3, r4]
	adds r0, r1, r0
	mov r7, sb
	subs r7, #1
	str r7, [sp, #0x40]
	adds r1, r6, #6
	str r1, [sp, #0x48]
	cmp r0, #0xef
	ble _087D6566
	b _087D680E
_087D6566:
	ldrb r3, [r6]
	movs r1, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _087D6580
	ldr r4, _087D657C @ =0x0000FF80
	adds r0, r4, #0
	orrs r0, r3
	b _087D6582
	.align 2, 0
_087D657C: .4byte 0x0000FF80
_087D6580:
	adds r0, r3, #0
_087D6582:
	adds r3, r0, #0
	ldr r7, [sp, #0x10]
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _087D659C
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	mov r3, r8
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_087D659C:
	ldr r4, [sp, #0x10]
	ldr r1, [r4, #4]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	adds r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	str r7, [sp, #0x28]
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _087D65CA
	mov r4, r8
	movs r7, #2
	ldrsh r0, [r4, r7]
	adds r0, r1, r0
	mov r4, sb
	subs r4, #1
	str r4, [sp, #0x40]
	adds r7, r6, #6
	str r7, [sp, #0x48]
	cmp r0, #0
	bge _087D65CA
	b _087D680E
_087D65CA:
	cmp r1, #0x9f
	ble _087D65E6
	mov r4, r8
	movs r7, #2
	ldrsh r0, [r4, r7]
	adds r0, r1, r0
	mov r1, sb
	subs r1, #1
	str r1, [sp, #0x40]
	adds r4, r6, #6
	str r4, [sp, #0x48]
	cmp r0, #0x9f
	ble _087D65E6
	b _087D680E
_087D65E6:
	asrs r0, r2, #0x10
	ldr r7, [sp, #0x10]
	ldrh r7, [r7, #0x14]
	adds r0, r0, r7
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x10]
	ldrh r4, [r1, #0x16]
	adds r4, r3, r4
	lsls r4, r4, #0x10
	lsrs r2, r0, #0x10
	str r2, [sp, #0x2c]
	asrs r7, r0, #0x10
	lsrs r3, r4, #0x10
	str r3, [sp, #0x30]
	asrs r4, r4, #0x10
	mov r0, r8
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r1, #2
	ldrsh r3, [r0, r1]
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _087D66BC @ =gUnk_03006F13
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_087D62A4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	mov r2, r8
	ldrh r1, [r2, #2]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	ldrh r0, [r2]
	adds r0, r7, r0
	lsls r0, r0, #0x10
	str r4, [sp, #0x34]
	asrs r1, r1, #0x10
	str r1, [sp, #0x38]
	asrs r0, r0, #0x10
	mov ip, r0
	ldr r4, _087D66C0 @ =gUnk_03005158
	ldr r0, _087D66C4 @ =gUnk_03005150
	ldr r2, [r0]
	subs r2, #1
	ldr r3, [sp, #0x24]
	lsls r3, r3, #0x10
	str r3, [sp, #0x4c]
	adds r0, r5, #0
	adds r0, #8
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x20]
	adds r1, #1
	str r1, [sp, #0x3c]
	mov r3, sb
	subs r3, #1
	str r3, [sp, #0x40]
	adds r0, r6, #6
	str r0, [sp, #0x48]
	cmp r2, #0
	blt _087D66D0
	mov sb, r7
_087D667A:
	movs r3, #4
	ldrsh r1, [r4, r3]
	cmp sb, r1
	blt _087D668A
	movs r7, #6
	ldrsh r0, [r4, r7]
	cmp sb, r0
	blt _087D6698
_087D668A:
	mov r3, ip
	cmp r3, r1
	ble _087D66C8
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r3, r0
	bge _087D66C8
_087D6698:
	ldr r3, [sp, #0x34]
	movs r7, #0
	ldrsh r1, [r4, r7]
	cmp r3, r1
	blt _087D66AA
	movs r7, #2
	ldrsh r0, [r4, r7]
	cmp r3, r0
	blt _087D66B8
_087D66AA:
	ldr r3, [sp, #0x38]
	cmp r3, r1
	ble _087D66C8
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r3, r0
	bge _087D66C8
_087D66B8:
	ldrb r0, [r4, #8]
	b _087D66D2
	.align 2, 0
_087D66BC: .4byte gUnk_03006F13
_087D66C0: .4byte gUnk_03005158
_087D66C4: .4byte gUnk_03005150
_087D66C8:
	adds r4, #0xc
	subs r2, #1
	cmp r2, #0
	bge _087D667A
_087D66D0:
	movs r0, #0
_087D66D2:
	cmp sl, r0
	bhs _087D66D8
	mov sl, r0
_087D66D8:
	mov r2, sl
	cmp r2, #1
	bls _087D6726
	ldr r3, [sp, #0x30]
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	mov r4, r8
	ldrh r0, [r4, #2]
	adds r0, r7, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	ldrh r0, [r4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	ldr r4, _087D6844 @ =gUnk_03005150
	ldr r2, [r4]
	cmp r2, #0x7f
	bgt _087D6726
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _087D6848 @ =gUnk_03005158
	adds r0, r0, r1
	adds r1, r2, #1
	str r1, [r4]
	strh r7, [r0]
	mov r2, sb
	strh r2, [r0, #2]
	strh r3, [r0, #4]
	mov r3, ip
	strh r3, [r0, #6]
	mov r4, sl
	strb r4, [r0, #8]
_087D6726:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5]
	strh r0, [r5]
	ldrb r1, [r6, #2]
	ldrb r0, [r6, #3]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5, #2]
	strh r0, [r5, #2]
	ldrb r1, [r6, #4]
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5, #4]
	strh r0, [r5, #4]
	ldr r7, [sp, #0x10]
	ldrb r0, [r7, #8]
	cmp r0, #3
	beq _087D6768
	adds r2, r0, #0
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #2
	ldrb r0, [r5, #1]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #1]
_087D6768:
	ldrb r0, [r5]
	add r4, sp, #0x28
	ldrb r4, [r4]
	strb r4, [r5]
	ldr r7, [sp, #0x4c]
	lsls r2, r7, #7
	lsrs r2, r2, #0x17
	ldrh r0, [r5, #2]
	ldr r3, _087D684C @ =0xFFFFFE00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #2]
	ldrb r0, [r5, #3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	ldr r4, [sp, #0x10]
	ldrb r1, [r4, #9]
	eors r0, r1
	movs r7, #1
	ands r0, r7
	lsls r0, r0, #4
	ldrb r1, [r5, #3]
	movs r3, #0x11
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #3]
	ldrb r0, [r5, #3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	ldrb r1, [r4, #0xa]
	eors r0, r1
	ands r0, r7
	lsls r0, r0, #5
	ldrb r1, [r5, #3]
	movs r4, #0x21
	rsbs r4, r4, #0
	adds r2, r4, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #3]
	ldrh r1, [r5, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r7, [sp, #0x10]
	ldr r0, [r7, #0xc]
	adds r1, r1, r0
	ldr r2, _087D6850 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r0, [r5, #4]
	ldr r3, _087D6854 @ =0xFFFFFC00
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #4]
	movs r0, #3
	mov r4, sl
	ands r4, r0
	lsls r2, r4, #2
	ldrb r0, [r5, #5]
	movs r7, #0xd
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #5]
	ldrb r1, [r5, #5]
	lsrs r1, r1, #4
	ldr r2, [sp, #0x10]
	ldr r0, [r2, #0x10]
	adds r1, r1, r0
	lsls r1, r1, #4
	ldrb r2, [r5, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	ldr r5, [sp, #0x44]
	ldr r3, [sp, #0x3c]
	str r3, [sp, #0x20]
_087D680E:
	ldr r4, [sp, #0x40]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r6, [sp, #0x48]
	cmp r0, #0
	beq _087D6824
	ldr r7, [sp, #0x20]
	cmp r7, #0x7f
	bgt _087D6824
	b _087D64B6
_087D6824:
	ldr r1, _087D6858 @ =gUnk_03000000
	ldr r0, _087D685C @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	str r1, [r0]
_087D6832:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_087D6844: .4byte gUnk_03005150
_087D6848: .4byte gUnk_03005158
_087D684C: .4byte 0xFFFFFE00
_087D6850: .4byte 0x000003FF
_087D6854: .4byte 0xFFFFFC00
_087D6858: .4byte gUnk_03000000
_087D685C: .4byte gUnk_03000008

	thumb_func_start sub_087D6860
sub_087D6860: @ 0x087D6860
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _087D68FC @ =gUnk_03003F50
	ldr r3, _087D6900 @ =gUnk_03004150
	ldr r0, _087D6904 @ =gUnk_03003F40
	ldr r2, [r0]
	adds r1, r2, #0
	subs r2, #1
	adds r5, r4, #0
	adds r6, r0, #0
	cmp r1, #0
	ble _087D6888
_087D687C:
	stm r4!, {r3}
	adds r3, #0x20
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bgt _087D687C
_087D6888:
	adds r7, r5, #0
	ldr r0, [r6]
	subs r0, #1
	cmp r0, #0
	ble _087D68EE
_087D6892:
	adds r2, r7, #4
	adds r5, r0, #0
	mov r8, r2
	subs r0, r5, #1
	mov ip, r0
_087D689C:
	movs r6, #0
	mov sb, r6
	ldr r4, [r7]
	ldr r3, [r2]
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	movs r6, #0x12
	ldrsh r0, [r3, r6]
	cmp r1, r0
	blt _087D68DA
	cmp r1, r0
	bne _087D68D4
	movs r0, #0x14
	ldrsh r1, [r4, r0]
	movs r6, #0x14
	ldrsh r0, [r3, r6]
	cmp r1, r0
	blt _087D68DA
	cmp r1, r0
	bne _087D68D4
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	movs r6, #0xa
	ldrsh r0, [r3, r6]
	cmp r1, r0
	bge _087D68D4
	movs r0, #1
	mov sb, r0
_087D68D4:
	mov r6, sb
	cmp r6, #0
	beq _087D68DE
_087D68DA:
	str r3, [r7]
	str r4, [r2]
_087D68DE:
	adds r2, #4
	subs r5, #1
	cmp r5, #0
	bgt _087D689C
	mov r0, ip
	mov r7, r8
	cmp r0, #0
	bgt _087D6892
_087D68EE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_087D68FC: .4byte gUnk_03003F50
_087D6900: .4byte gUnk_03004150
_087D6904: .4byte gUnk_03003F40

	thumb_func_start sub_087D6908
sub_087D6908: @ 0x087D6908
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r3, _087D694C @ =gUnk_03005150
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _087D6944
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _087D6950 @ =gUnk_03005158
	adds r0, r0, r1
	adds r1, r2, #1
	str r1, [r3]
	mov r1, ip
	strh r1, [r0]
	strh r7, [r0, #2]
	strh r6, [r0, #4]
	strh r5, [r0, #6]
	strb r4, [r0, #8]
_087D6944:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_087D694C: .4byte gUnk_03005150
_087D6950: .4byte gUnk_03005158

	thumb_func_start sub_087D6954
sub_087D6954: @ 0x087D6954
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	ldr r3, _087D69CC @ =gUnk_03005158
	ldr r0, _087D69D0 @ =gUnk_03005150
	ldr r4, [r0]
	subs r4, #1
	cmp r4, #0
	blt _087D69DC
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
_087D697E:
	movs r0, #4
	ldrsh r2, [r3, r0]
	cmp r5, r2
	blt _087D698E
	movs r1, #6
	ldrsh r0, [r3, r1]
	cmp r5, r0
	blt _087D699E
_087D698E:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	cmp r1, r2
	ble _087D69D4
	movs r2, #6
	ldrsh r0, [r3, r2]
	cmp r1, r0
	bge _087D69D4
_087D699E:
	mov r7, ip
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	movs r0, #0
	ldrsh r2, [r3, r0]
	cmp r1, r2
	blt _087D69B4
	movs r7, #2
	ldrsh r0, [r3, r7]
	cmp r1, r0
	blt _087D69C6
_087D69B4:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, r2
	ble _087D69D4
	movs r2, #2
	ldrsh r0, [r3, r2]
	cmp r1, r0
	bge _087D69D4
_087D69C6:
	ldrb r0, [r3, #8]
	b _087D69DE
	.align 2, 0
_087D69CC: .4byte gUnk_03005158
_087D69D0: .4byte gUnk_03005150
_087D69D4:
	adds r3, #0xc
	subs r4, #1
	cmp r4, #0
	bge _087D697E
_087D69DC:
	movs r0, #0
_087D69DE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
