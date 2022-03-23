	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08000254
sub_08000254: @ 0x08000254
	push {r4, r7, lr}
	mov r7, sp
	ldr r0, _080004B4 @ =0x04000204
	ldr r2, _080004B8 @ =0x000045B6
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080004BC @ =gUnk_030010B0
	ldr r1, _080004C0 @ =gUnk_03001064
	movs r2, #0
	strh r2, [r1]
	ldrh r1, [r0, #6]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #6]
	bl sub_08003DE4
	bl sub_08002EF8
	ldr r0, _080004C4 @ =0x040000B8
	movs r1, #0
	str r1, [r0]
	ldr r0, _080004C8 @ =0x040000C4
	movs r1, #0
	str r1, [r0]
	ldr r0, _080004CC @ =0x040000D0
	movs r1, #0
	str r1, [r0]
	ldr r0, _080004D0 @ =0x040000DC
	movs r1, #0
	str r1, [r0]
	bl sub_08000B6C
	bl sub_0800118C
	bl sub_0814501C
	bl sub_08138CAC
	bl sub_08003D24
	bl sub_08003AC0
	ldr r1, _080004D4 @ =gUnk_030010E0
	adds r0, r1, #0
	bl sub_08002E60
	ldr r0, _080004D4 @ =gUnk_030010E0
	ldr r2, _080004D8 @ =sub_080000FC
	ldr r3, _080004DC @ =gUnk_0800023C
	adds r1, r3, #0
	ldr r4, _080004D8 @ =sub_080000FC
	adds r3, r4, #0
	subs r1, r1, r3
	adds r3, r1, #0
	adds r1, r3, #0
	adds r1, #0x20
	adds r3, r1, #0
	lsls r1, r3, #0x10
	lsrs r3, r1, #0x10
	movs r1, #0
	bl sub_08002B9C
	ldr r0, _080004D4 @ =gUnk_030010E0
	ldr r2, _080004E0 @ =sub_0806E208
	movs r1, #1
	movs r3, #0x60
	bl sub_08002C30
	ldr r0, _080004D4 @ =gUnk_030010E0
	ldr r2, _080004E4 @ =sub_08025FE4
	movs r3, #0xa0
	lsls r3, r3, #2
	movs r1, #2
	bl sub_08002C30
	ldr r0, _080004D4 @ =gUnk_030010E0
	ldr r2, _080004E8 @ =sub_08022438
	movs r3, #0x80
	lsls r3, r3, #2
	movs r1, #3
	bl sub_08002C30
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #0xc]
	str r2, [r0, #0xc]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #0x10]
	str r2, [r0, #0x10]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #0x14]
	str r2, [r0, #0x14]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #0x18]
	str r2, [r0, #0x18]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x1c]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #0x20]
	str r2, [r0, #0x20]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #0x24]
	str r2, [r0, #0x24]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #0x28]
	str r2, [r0, #0x28]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #0x2c]
	str r2, [r0, #0x2c]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #0x30]
	str r2, [r0, #0x30]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #0x34]
	str r2, [r0, #0x34]
	ldr r0, _080004EC @ =gUnk_03000D80
	ldr r1, _080004F0 @ =gUnk_0815D918
	ldr r2, [r1, #0x38]
	str r2, [r0, #0x38]
	ldr r0, _080004F4 @ =0x03007FFC
	ldr r1, _080004D4 @ =gUnk_030010E0
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, _080004F8 @ =gUnk_03000820
	ldrb r1, [r0, #7]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #7]
	ldr r0, _080004F8 @ =gUnk_03000820
	ldrh r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xf0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #8]
	ldr r0, _080004F8 @ =gUnk_03000820
	ldrb r1, [r0, #0xa]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xf
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xa]
	ldr r0, _080004F8 @ =gUnk_03000820
	ldrb r1, [r0, #0xb]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xb]
	bl IdentifyFlash
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _080003DC
	ldr r0, _080004FC @ =gFlash
	movs r1, #0
	str r1, [r0]
_080003DC:
	bl sub_080211BC
	ldr r0, _08000500 @ =gUnk_03002910
	ldr r1, _08000504 @ =gUnk_030029A0
	ldr r2, _08000508 @ =gUnk_03002920
	movs r3, #4
	bl sub_08002CD4
	ldr r0, _0800050C @ =gUnk_03000D50
	ldr r1, _08000510 @ =gUnk_030029E0
	ldr r2, _08000514 @ =gUnk_030010D8
	movs r3, #4
	bl sub_08002CD4
	ldr r0, _08000518 @ =gUnk_03002960
	ldr r1, _0800051C @ =gUnk_03001050
	ldr r2, _08000520 @ =gUnk_03000E3C
	movs r3, #4
	bl sub_08002CD4
	ldr r0, _08000524 @ =gUnk_030008B0
	ldr r1, _08000528 @ =gUnk_03002958
	ldr r2, _0800052C @ =gUnk_030010AC
	movs r3, #1
	bl sub_08002CD4
	ldr r0, _08000530 @ =gUnk_03000E60
	ldr r1, _08000534 @ =gUnk_030029C0
	ldr r2, _08000538 @ =gUnk_03002954
	movs r3, #4
	bl sub_08002CD4
	ldr r0, _08000530 @ =gUnk_03000E60
	ldr r2, _0800053C @ =sub_08003E00
	movs r1, #1
	bl sub_08002D38
	ldr r0, _08000530 @ =gUnk_03000E60
	ldr r2, _08000540 @ =sub_08002E78
	movs r1, #2
	bl sub_08002D38
	ldr r0, _08000530 @ =gUnk_03000E60
	ldr r2, _08000540 @ =sub_08002E78
	movs r1, #3
	bl sub_08002D38
	bl MultiSioInit
	ldr r0, _080004BC @ =gUnk_030010B0
	ldr r1, _080004BC @ =gUnk_030010B0
	ldrh r2, [r1, #6]
	ldr r3, _08000544 @ =0x00002003
	adds r1, r2, #0
	orrs r1, r3
	ldrh r2, [r0, #6]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #6]
	ldr r0, _080004C0 @ =gUnk_03001064
	ldr r1, _080004BC @ =gUnk_030010B0
	ldrh r2, [r1, #6]
	strh r2, [r0]
	ldr r0, _08000548 @ =0x04000200
	ldr r1, _080004C0 @ =gUnk_03001064
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0800054C @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	ldr r0, _080004BC @ =gUnk_030010B0
	ldrh r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #8]
	ldr r0, _08000550 @ =0x04000004
	ldr r1, _080004BC @ =gUnk_030010B0
	ldrh r2, [r1, #8]
	strh r2, [r0]
	ldr r0, _080004FC @ =gFlash
	ldr r1, [r0]
	cmp r1, #0
	beq _0800056E
	ldr r1, _08000554 @ =gUnk_03000D98
	movs r0, #2
	bl SetFlashTimerIntr
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	beq _0800055C
	ldr r0, _080004FC @ =gFlash
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000558 @ =gUnk_03001060
	movs r1, #0xff
	strb r1, [r0]
	b _0800056E
	.align 2, 0
_080004B4: .4byte 0x04000204
_080004B8: .4byte 0x000045B6
_080004BC: .4byte gUnk_030010B0
_080004C0: .4byte gUnk_03001064
_080004C4: .4byte 0x040000B8
_080004C8: .4byte 0x040000C4
_080004CC: .4byte 0x040000D0
_080004D0: .4byte 0x040000DC
_080004D4: .4byte gUnk_030010E0
_080004D8: .4byte sub_080000FC
_080004DC: .4byte gUnk_0800023C
_080004E0: .4byte sub_0806E208
_080004E4: .4byte sub_08025FE4
_080004E8: .4byte sub_08022438
_080004EC: .4byte gUnk_03000D80
_080004F0: .4byte gUnk_0815D918
_080004F4: .4byte 0x03007FFC
_080004F8: .4byte gUnk_03000820
_080004FC: .4byte gFlash
_08000500: .4byte gUnk_03002910
_08000504: .4byte gUnk_030029A0
_08000508: .4byte gUnk_03002920
_0800050C: .4byte gUnk_03000D50
_08000510: .4byte gUnk_030029E0
_08000514: .4byte gUnk_030010D8
_08000518: .4byte gUnk_03002960
_0800051C: .4byte gUnk_03001050
_08000520: .4byte gUnk_03000E3C
_08000524: .4byte gUnk_030008B0
_08000528: .4byte gUnk_03002958
_0800052C: .4byte gUnk_030010AC
_08000530: .4byte gUnk_03000E60
_08000534: .4byte gUnk_030029C0
_08000538: .4byte gUnk_03002954
_0800053C: .4byte sub_08003E00
_08000540: .4byte sub_08002E78
_08000544: .4byte 0x00002003
_08000548: .4byte 0x04000200
_0800054C: .4byte 0x04000208
_08000550: .4byte 0x04000004
_08000554: .4byte gUnk_03000D98
_08000558: .4byte gUnk_03001060
_0800055C:
	ldr r1, _08000570 @ =gUnk_030010C0
	adds r0, r1, #0
	bl sub_08002694
	movs r0, #1
	bl sub_080030E0
	ldr r1, _08000574 @ =gUnk_03001060
	strb r0, [r1]
_0800056E:
	b _0800057A
	.align 2, 0
_08000570: .4byte gUnk_030010C0
_08000574: .4byte gUnk_03001060
_08000578:
	b _08000598
_0800057A:
	ldr r0, _08000594 @ =gUnk_03002910
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, _08000594 @ =gUnk_03002910
	adds r0, r1, #0
	movs r1, #4
	bl sub_08000768
	b _0800056E
	.align 2, 0
_08000594: .4byte gUnk_03002910
_08000598:
	b _0800059A
_0800059A:
	pop {r4, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080005A0
sub_080005A0: @ 0x080005A0
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	bl m4aSoundVSync
	adds r0, r7, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	strh r1, [r0]
	ldr r0, _0800065C @ =gUnk_03001064
	ldr r1, _08000660 @ =gUnk_030010B0
	ldrh r2, [r1, #6]
	ldr r3, _08000664 @ =0x0000FFF8
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08000668 @ =0x04000200
	ldr r1, _0800065C @ =gUnk_03001064
	ldrh r2, [r1]
	strh r2, [r0]
	bl sub_08000E3C
	bl sub_080008EC
	bl sub_0800141C
	ldr r1, _0800066C @ =gUnk_03000D50
	adds r0, r1, #0
	movs r1, #4
	bl sub_08000768
	ldr r1, _08000670 @ =gUnk_03002960
	adds r0, r1, #0
	movs r1, #4
	bl sub_08000768
	bl sub_080020B8
	ldr r0, _08000674 @ =gUnk_03000E60
	ldrh r1, [r0]
	cmp r1, #1
	beq _08000610
	bl sub_08004960
	adds r0, r7, #0
	ldr r1, _08000678 @ =gUnk_03000DD0
	ldrh r2, [r1]
	strh r2, [r0]
	bl sub_08138D00
_08000610:
	bl sub_08004984
	bl sub_08000A04
	ldr r0, _0800067C @ =gUnk_03000820
	ldr r1, _08000680 @ =0x04000130
	ldrh r2, [r1]
	ldr r3, _08000684 @ =0x000003FF
	adds r1, r2, #0
	eors r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	bl sub_08002504
	ldr r1, _08000688 @ =gUnk_030010D0
	ldr r0, _08000688 @ =gUnk_030010D0
	ldr r1, _08000688 @ =gUnk_030010D0
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0800068C @ =gUnk_030010D4
	ldrh r1, [r0]
	ldr r0, _08000690 @ =0x0000FEFF
	cmp r1, r0
	bhi _080006A2
	ldr r0, _0800068C @ =gUnk_030010D4
	ldrh r1, [r0]
	cmp r1, #0x3a
	bls _08000694
	ldr r0, _0800068C @ =gUnk_030010D4
	movs r1, #0
	strh r1, [r0]
	bl sub_08140F34
	b _080006A2
	.align 2, 0
_0800065C: .4byte gUnk_03001064
_08000660: .4byte gUnk_030010B0
_08000664: .4byte 0x0000FFF8
_08000668: .4byte 0x04000200
_0800066C: .4byte gUnk_03000D50
_08000670: .4byte gUnk_03002960
_08000674: .4byte gUnk_03000E60
_08000678: .4byte gUnk_03000DD0
_0800067C: .4byte gUnk_03000820
_08000680: .4byte 0x04000130
_08000684: .4byte 0x000003FF
_08000688: .4byte gUnk_030010D0
_0800068C: .4byte gUnk_030010D4
_08000690: .4byte 0x0000FEFF
_08000694:
	ldr r1, _08000704 @ =gUnk_030010D4
	ldr r0, _08000704 @ =gUnk_030010D4
	ldr r1, _08000704 @ =gUnk_030010D4
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
_080006A2:
	ldr r0, _08000708 @ =0x04000004
	ldr r1, _0800070C @ =gUnk_030010B0
	ldrh r2, [r1, #8]
	strh r2, [r0]
	ldr r0, _08000710 @ =gUnk_03001064
	ldr r1, _0800070C @ =gUnk_030010B0
	ldrh r2, [r1, #6]
	strh r2, [r0]
	ldr r0, _08000714 @ =0x04000200
	ldr r1, _08000710 @ =gUnk_03001064
	ldrh r2, [r1]
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	adds r1, r7, #0
	ldrh r2, [r1]
	strh r2, [r0]
	bl m4aSoundMain
	ldr r0, _08000718 @ =gUnk_03000E60
	ldrh r1, [r0]
	cmp r1, #1
	beq _08000756
	ldr r0, _08000718 @ =gUnk_03000E60
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	bl sub_0800134C
	ldr r0, _0800071C @ =gMultiSioArea
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _08000720
	bl sub_08005478
	cmp r0, #0
	beq _08000702
	ldr r1, _08000718 @ =gUnk_03000E60
	adds r0, r1, #0
	movs r1, #4
	bl sub_08000768
_08000702:
	b _0800072A
	.align 2, 0
_08000704: .4byte gUnk_030010D4
_08000708: .4byte 0x04000004
_0800070C: .4byte gUnk_030010B0
_08000710: .4byte gUnk_03001064
_08000714: .4byte 0x04000200
_08000718: .4byte gUnk_03000E60
_0800071C: .4byte gMultiSioArea
_08000720:
	ldr r1, _08000760 @ =gUnk_03000E60
	adds r0, r1, #0
	movs r1, #4
	bl sub_08000768
_0800072A:
	bl sub_08138D34
	bl sub_0813B0CC
	bl sub_080020A8
	ldr r0, _08000764 @ =gUnk_03002910
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08000760 @ =gUnk_03000E60
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0]
_08000756:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000760: .4byte gUnk_03000E60
_08000764: .4byte gUnk_03002910

	thumb_func_start sub_08000768
sub_08000768: @ 0x08000768
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	adds r0, r1, #0
	adds r1, r7, #4
	strb r0, [r1]
	adds r0, r7, #6
	movs r1, #0
	strb r1, [r0]
	ldr r1, [r7]
	ldrb r0, [r1, #5]
	cmp r0, #0xfe
	beq _08000846
	cmp r0, #0xfe
	bgt _0800078E
	cmp r0, #0
	beq _08000794
	b _08000848
_0800078E:
	cmp r0, #0xff
	beq _08000838
	b _08000848
_08000794:
	adds r0, r7, #5
	movs r1, #0
	strb r1, [r0]
_0800079A:
	adds r0, r7, #5
	adds r1, r7, #4
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	blo _080007A8
	b _0800082A
_080007A8:
	ldr r0, [r7]
	adds r1, r7, #5
	ldrb r2, [r1]
	adds r1, r2, #0
	lsls r2, r1, #2
	ldr r1, [r0, #8]
	adds r0, r2, r1
	ldr r1, [r0]
	cmp r1, #0
	blt _0800081A
	ldr r0, [r7]
	adds r1, r7, #5
	ldrb r2, [r1]
	adds r1, r2, #0
	lsls r2, r1, #2
	ldr r1, [r0, #8]
	adds r0, r2, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0800081A
	ldr r0, [r7]
	adds r1, r7, #5
	ldrb r2, [r0, #3]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrb r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #3]
	ldr r0, [r7]
	adds r1, r7, #5
	ldrb r2, [r1]
	adds r1, r2, #0
	lsls r2, r1, #2
	ldr r1, [r0, #8]
	adds r0, r2, r1
	adds r2, r7, #5
	ldrb r1, [r2]
	ldr r2, [r7]
	adds r3, r7, #5
	ldrb r4, [r3]
	ldr r3, [r2, #0xc]
	adds r2, r4, r3
	ldr r3, [r0]
	adds r0, r1, #0
	adds r1, r2, #0
	bl _call_via_r3
	adds r1, r7, #6
	adds r0, r7, #6
	adds r1, r7, #6
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
_0800081A:
	adds r1, r7, #5
	adds r0, r7, #5
	adds r1, r7, #5
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _0800079A
_0800082A:
	ldr r0, [r7]
	ldrb r1, [r0, #3]
	movs r2, #0xff
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #3]
	b _080008B4
_08000838:
	ldr r0, [r7]
	ldrb r1, [r0, #2]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #2]
	b _080008B4
_08000846:
	b _080008B4
_08000848:
	adds r0, r7, #5
	ldr r1, [r7]
	ldrb r2, [r1, #5]
	subs r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	adds r1, r7, #5
	ldrb r2, [r1]
	adds r1, r2, #0
	lsls r2, r1, #2
	ldr r1, [r0, #8]
	adds r0, r2, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _080008B2
	ldr r0, [r7]
	adds r1, r7, #5
	ldrb r2, [r0, #3]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrb r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #3]
	ldr r0, [r7]
	adds r1, r7, #5
	ldrb r2, [r1]
	adds r1, r2, #0
	lsls r2, r1, #2
	ldr r1, [r0, #8]
	adds r0, r2, r1
	adds r2, r7, #5
	ldrb r1, [r2]
	ldr r2, [r7]
	adds r3, r7, #5
	ldrb r4, [r3]
	ldr r3, [r2, #0xc]
	adds r2, r4, r3
	ldr r3, [r0]
	adds r0, r1, #0
	adds r1, r2, #0
	bl _call_via_r3
	adds r1, r7, #6
	adds r0, r7, #6
	adds r1, r7, #6
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
_080008B2:
	b _080008B4
_080008B4:
	ldr r0, [r7]
	adds r1, r7, #6
	ldrb r2, [r0, #4]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrb r1, [r1]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #4]
	add sp, #8
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080008D4
sub_080008D4: @ 0x080008D4
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0]
	adds r0, r1, #0
	b _080008E4
_080008E4:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1
