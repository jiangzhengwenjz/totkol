	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08004064
sub_08004064: @ 0x08004064
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r6, r1, #0
	ldr r1, _08004088 @ =gUnk_0815DA50
	add r0, sp, #8
	movs r2, #0x15
	bl memcpy
	ldrb r0, [r6]
	cmp r0, #0x10
	bls _0800407C
	b _08004322
_0800407C:
	lsls r0, r0, #2
	ldr r1, _0800408C @ =_08004090
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004088: .4byte gUnk_0815DA50
_0800408C: .4byte _08004090
_08004090: @ jump table
	.4byte _080040D4 @ case 0
	.4byte _080040D4 @ case 1
	.4byte _08004114 @ case 2
	.4byte _08004184 @ case 3
	.4byte _080041B4 @ case 4
	.4byte _080041D0 @ case 5
	.4byte _08004322 @ case 6
	.4byte _08004322 @ case 7
	.4byte _08004322 @ case 8
	.4byte _08004322 @ case 9
	.4byte _08004322 @ case 10
	.4byte _08004322 @ case 11
	.4byte _080041F8 @ case 12
	.4byte _08004298 @ case 13
	.4byte _080042C8 @ case 14
	.4byte _080042E8 @ case 15
	.4byte _0800431A @ case 16
_080040D4:
	ldr r1, _08004100 @ =gUnk_03000DD0
	movs r4, #0
	movs r0, #0x60
	strh r0, [r1]
	bl sub_08004334
	add r0, sp, #0x20
	strh r4, [r0]
	ldr r1, _08004104 @ =gUnk_03001070
	ldr r1, [r1, #0x14]
	ldr r2, _08004108 @ =0x01000800
	bl CpuSet
	ldr r0, _0800410C @ =gUnk_085F5E2C
	ldr r1, _08004110 @ =gUnk_02002400
	movs r2, #0x10
	bl CpuSet
	movs r0, #2
	strb r0, [r6]
	b _08004322
	.align 2, 0
_08004100: .4byte gUnk_03000DD0
_08004104: .4byte gUnk_03001070
_08004108: .4byte 0x01000800
_0800410C: .4byte gUnk_085F5E2C
_08004110: .4byte gUnk_02002400
_08004114:
	bl sub_080043FC
	ldr r0, _08004174 @ =gUnk_03001070
	ldr r0, [r0, #0x10]
	movs r1, #0x8a
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0x14
	movs r3, #1
	bl sub_0801A924
	ldr r3, _08004178 @ =gUnk_03000DD0
	ldrh r1, [r3]
	ldr r0, _0800417C @ =0x0000FF7F
	ands r0, r1
	movs r2, #0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	movs r0, #0xc1
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	strb r2, [r1]
	adds r0, r3, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	strb r2, [r0]
	adds r1, r3, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	strb r2, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #0x1f
	strb r0, [r1]
	ldr r1, _08004180 @ =gUnk_030035D0
	movs r0, #3
	str r0, [r1]
	strb r0, [r6]
	b _08004322
	.align 2, 0
_08004174: .4byte gUnk_03001070
_08004178: .4byte gUnk_03000DD0
_0800417C: .4byte 0x0000FF7F
_08004180: .4byte gUnk_030035D0
_08004184:
	ldr r0, _0800419C @ =gUnk_03000DD0
	adds r2, r0, #0
	adds r2, #0x4e
	ldrb r0, [r2]
	ldr r3, _080041A0 @ =gUnk_030035D0
	ldr r1, [r3]
	cmp r0, r1
	blt _080041A4
	ldrb r0, [r2]
	subs r0, r0, r1
	b _08004314
	.align 2, 0
_0800419C: .4byte gUnk_03000DD0
_080041A0: .4byte gUnk_030035D0
_080041A4:
	ldrb r0, [r2]
	movs r0, #0
	strb r0, [r2]
	movs r0, #0x5a
	str r0, [r3]
	movs r0, #4
	strb r0, [r6]
	b _08004322
_080041B4:
	ldr r2, _080041CC @ =gUnk_030035D0
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080041C6
	b _08004322
_080041C6:
	movs r0, #5
	b _080042DA
	.align 2, 0
_080041CC: .4byte gUnk_030035D0
_080041D0:
	ldr r0, _080041F0 @ =gUnk_03000DD0
	adds r2, r0, #0
	adds r2, #0x4e
	ldrb r0, [r2]
	ldr r1, _080041F4 @ =gUnk_030035D0
	ldr r1, [r1]
	adds r0, r0, r1
	cmp r0, #0x1e
	bgt _080041E4
	b _08004310
_080041E4:
	ldrb r0, [r2]
	movs r0, #0x1f
	strb r0, [r2]
	movs r0, #0xc
	strb r0, [r6]
	b _08004322
	.align 2, 0
_080041F0: .4byte gUnk_03000DD0
_080041F4: .4byte gUnk_030035D0
_080041F8:
	mov r0, sp
	adds r0, #0x22
	movs r5, #0
	strh r5, [r0]
	ldr r4, _08004274 @ =gUnk_03001070
	ldr r1, [r4, #0x14]
	ldr r2, _08004278 @ =0x01000800
	bl CpuSet
	ldr r0, _0800427C @ =gUnk_087C1C24
	ldr r1, _08004280 @ =gUnk_02002400
	movs r2, #0x40
	bl CpuSet
	ldr r0, _08004284 @ =gUnk_087D22B4
	ldr r1, [r4, #0x10]
	ldr r2, _08004288 @ =gUnk_02004440
	movs r3, #0
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0801A59C
	bl sub_080043AC
	ldr r2, _0800428C @ =gUnk_03000DD0
	ldrh r1, [r2]
	ldr r0, _08004290 @ =0x0000FF7F
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x4a
	ldrb r0, [r1]
	movs r0, #0xc1
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	strb r5, [r1]
	adds r0, r2, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	strb r5, [r0]
	adds r1, r2, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	strb r5, [r1]
	adds r1, #1
	ldrb r0, [r1]
	movs r0, #0x1f
	strb r0, [r1]
	ldr r1, _08004294 @ =gUnk_030035D0
	movs r0, #3
	str r0, [r1]
	movs r0, #0xd
	strb r0, [r6]
	b _08004322
	.align 2, 0
_08004274: .4byte gUnk_03001070
_08004278: .4byte 0x01000800
_0800427C: .4byte gUnk_087C1C24
_08004280: .4byte gUnk_02002400
_08004284: .4byte gUnk_087D22B4
_08004288: .4byte gUnk_02004440
_0800428C: .4byte gUnk_03000DD0
_08004290: .4byte 0x0000FF7F
_08004294: .4byte gUnk_030035D0
_08004298:
	ldr r0, _080042B0 @ =gUnk_03000DD0
	adds r2, r0, #0
	adds r2, #0x4e
	ldrb r0, [r2]
	ldr r3, _080042B4 @ =gUnk_030035D0
	ldr r1, [r3]
	cmp r0, r1
	blt _080042B8
	ldrb r0, [r2]
	subs r0, r0, r1
	b _08004314
	.align 2, 0
_080042B0: .4byte gUnk_03000DD0
_080042B4: .4byte gUnk_030035D0
_080042B8:
	ldrb r0, [r2]
	movs r0, #0
	strb r0, [r2]
	movs r0, #0x78
	str r0, [r3]
	movs r0, #0xe
	strb r0, [r6]
	b _08004322
_080042C8:
	ldr r2, _080042E4 @ =gUnk_030035D0
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08004322
	movs r0, #0xf
_080042DA:
	strb r0, [r6]
	movs r0, #2
	str r0, [r2]
	b _08004322
	.align 2, 0
_080042E4: .4byte gUnk_030035D0
_080042E8:
	ldr r0, _08004308 @ =gUnk_03000DD0
	adds r2, r0, #0
	adds r2, #0x4e
	ldrb r0, [r2]
	ldr r1, _0800430C @ =gUnk_030035D0
	ldr r1, [r1]
	adds r0, r0, r1
	cmp r0, #0x1e
	ble _08004310
	ldrb r0, [r2]
	movs r0, #0x1f
	strb r0, [r2]
	movs r0, #0x10
	strb r0, [r6]
	b _08004322
	.align 2, 0
_08004308: .4byte gUnk_03000DD0
_0800430C: .4byte gUnk_030035D0
_08004310:
	ldrb r0, [r2]
	adds r0, r0, r1
_08004314:
	ldrb r1, [r2]
	strb r0, [r2]
	b _08004322
_0800431A:
	ldr r0, _0800432C @ =gUnk_03000E60
	ldr r1, _08004330 @ =sub_081547D4
	bl sub_08002D18
_08004322:
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800432C: .4byte gUnk_03000E60
_08004330: .4byte sub_081547D4

	thumb_func_start sub_08004334
sub_08004334: @ 0x08004334
	push {r4, r5, lr}
	ldr r1, _08004398 @ =gUnk_03001070
	ldr r0, _0800439C @ =gUnk_03000DD2
	mov ip, r0
	str r0, [r1]
	adds r0, #8
	str r0, [r1, #4]
	mov r0, ip
	adds r0, #0xa
	str r0, [r1, #8]
	movs r4, #0
	movs r3, #0x20
	strb r3, [r1, #0xc]
	strb r3, [r1, #0xd]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	str r5, [r1, #0x10]
	ldr r2, _080043A0 @ =0x06004000
	str r2, [r1, #0x14]
	str r4, [r1, #0x18]
	ldr r0, _080043A4 @ =gUnk_03001090
	mov r1, ip
	adds r1, #2
	str r1, [r0]
	adds r1, #0xa
	str r1, [r0, #4]
	adds r1, #2
	str r1, [r0, #8]
	strb r3, [r0, #0xc]
	strb r3, [r0, #0xd]
	str r5, [r0, #0x10]
	ldr r1, _080043A8 @ =0x06004800
	str r1, [r0, #0x14]
	str r4, [r0, #0x18]
	mov r3, ip
	strh r4, [r3, #8]
	strh r4, [r3, #0xa]
	movs r0, #0xf8
	lsls r0, r0, #8
	ands r2, r0
	lsrs r2, r2, #3
	strh r2, [r3]
	strh r4, [r3, #0xc]
	strh r4, [r3, #0xe]
	ands r1, r0
	lsrs r1, r1, #3
	strh r1, [r3, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004398: .4byte gUnk_03001070
_0800439C: .4byte gUnk_03000DD2
_080043A0: .4byte 0x06004000
_080043A4: .4byte gUnk_03001090
_080043A8: .4byte 0x06004800

	thumb_func_start sub_080043AC
sub_080043AC: @ 0x080043AC
	push {r4, r5, r6, r7, lr}
	movs r7, #0xc0
	lsls r7, r7, #6
	ldr r0, _080043F8 @ =gUnk_03001070
	ldr r5, [r0, #0x14]
	movs r0, #0xe6
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r4, #0
	movs r6, #0x80
	lsls r6, r6, #1
_080043C2:
	lsls r0, r4, #1
	adds r2, r0, r5
	adds r3, r7, r4
	strh r3, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	adds r0, r3, #0
	adds r0, #0x11
	strh r0, [r1]
	adds r1, #0x40
	adds r0, #0x11
	strh r0, [r1]
	adds r1, #0x40
	adds r0, #0x11
	strh r0, [r1]
	adds r1, r2, r6
	adds r0, #0x11
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x10
	bls _080043C2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080043F8: .4byte gUnk_03001070

	thumb_func_start sub_080043FC
sub_080043FC: @ 0x080043FC
	push {r4, lr}
	movs r3, #0
	ldr r0, _0800442C @ =gUnk_03001070
	ldr r0, [r0, #0x14]
	ldr r1, _08004430 @ =0x0000020A
	adds r4, r0, r1
	movs r2, #0
_0800440A:
	lsls r0, r2, #1
	adds r0, r0, r4
	strh r3, [r0]
	adds r0, #0x40
	adds r1, r3, #1
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r3, #2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r2, #0x13
	bls _0800440A
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800442C: .4byte gUnk_03001070
_08004430: .4byte 0x0000020A

	thumb_func_start sub_08004434
sub_08004434: @ 0x08004434
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r0, #0
	str r0, [r7]
	str r0, [r6]
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, #0
	beq _08004458
	lsls r0, r0, #2
	adds r0, r5, r0
	b _0800445A
_08004458:
	movs r0, #0
_0800445A:
	adds r3, r0, #0
	cmp r3, #0
	beq _080044DC
	ldrb r1, [r3, #6]
	ldrb r0, [r3, #7]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	bhi _080044BE
	b _08004486
_0800446E:
	ldrb r1, [r3, #6]
	ldrb r0, [r3, #7]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	bls _08004486
	ldrb r1, [r2, #6]
	ldrb r0, [r2, #7]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	bls _080044D8
_08004486:
	adds r2, r3, #0
	ldrb r1, [r2, #8]
	ldrb r0, [r2, #9]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, #0
	beq _0800449A
	lsls r0, r0, #2
	adds r0, r5, r0
	b _0800449C
_0800449A:
	movs r0, #0
_0800449C:
	adds r3, r0, #0
	cmp r3, #0
	bne _0800446E
	b _080044D8
_080044A4:
	ldrb r1, [r3, #6]
	ldrb r0, [r3, #7]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	bls _080044BC
	ldrb r1, [r2, #6]
	ldrb r0, [r2, #7]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r4, r0
	bls _080044D8
_080044BC:
	adds r3, r2, #0
_080044BE:
	ldrb r1, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, #0
	beq _080044D0
	lsls r0, r0, #2
	adds r0, r5, r0
	b _080044D2
_080044D0:
	movs r0, #0
_080044D2:
	adds r2, r0, #0
	cmp r2, #0
	bne _080044A4
_080044D8:
	str r3, [r6]
	str r2, [r7]
_080044DC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080044E4
sub_080044E4: @ 0x080044E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, #0
	beq _080044FA
	lsls r0, r0, #2
	adds r0, r4, r0
	b _080044FC
_080044FA:
	movs r0, #0
_080044FC:
	adds r2, r0, #0
	cmp r2, #0
	bne _08004508
	strb r2, [r4, #2]
	strb r2, [r4, #3]
	b _08004544
_08004508:
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r0, r1
	lsrs r3, r0, #1
	b _0800452A
_08004514:
	ldrb r1, [r2, #0xa]
	ldrb r0, [r2, #0xb]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, #0
	beq _08004526
	lsls r0, r0, #2
	adds r0, r4, r0
	b _08004528
_08004526:
	movs r0, #0
_08004528:
	adds r2, r0, #0
_0800452A:
	subs r3, #1
	cmp r3, #0
	bgt _08004514
	cmp r2, #0
	beq _0800453C
	subs r0, r2, r4
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x10
	b _0800453E
_0800453C:
	movs r0, #0
_0800453E:
	strb r0, [r4, #2]
	lsrs r0, r0, #8
	strb r0, [r4, #3]
_08004544:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800454C
sub_0800454C: @ 0x0800454C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r1, [r3, #8]
	ldrb r0, [r3, #9]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, #0
	beq _08004564
	lsls r0, r0, #2
	adds r0, r4, r0
	b _08004566
_08004564:
	movs r0, #0
_08004566:
	adds r5, r0, #0
	ldrb r0, [r3, #0xa]
	ldrb r1, [r3, #0xb]
	lsls r2, r1, #8
	orrs r2, r0
	adds r6, r0, #0
	cmp r2, #0
	beq _0800457C
	lsls r0, r2, #2
	adds r0, r4, r0
	b _0800457E
_0800457C:
	movs r0, #0
_0800457E:
	adds r2, r0, #0
	cmp r5, #0
	beq _08004590
	lsls r0, r1, #8
	orrs r0, r6
	strb r0, [r5, #0xa]
	lsrs r0, r0, #8
	strb r0, [r5, #0xb]
	b _0800459A
_08004590:
	lsls r0, r1, #8
	orrs r0, r6
	strb r0, [r4]
	lsrs r0, r0, #8
	strb r0, [r4, #1]
_0800459A:
	cmp r2, #0
	beq _080045AC
	ldrb r1, [r3, #8]
	ldrb r0, [r3, #9]
	lsls r0, r0, #8
	orrs r0, r1
	strb r0, [r2, #8]
	lsrs r0, r0, #8
	strb r0, [r2, #9]
_080045AC:
	movs r0, #0
	strb r0, [r3, #0xa]
	strb r0, [r3, #0xb]
	strb r0, [r3, #8]
	strb r0, [r3, #9]
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r0, r1
	subs r0, #1
	strb r0, [r4, #4]
	lsrs r0, r0, #8
	strb r0, [r4, #5]
	adds r0, r4, #0
	bl sub_080044E4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080045D4
sub_080045D4: @ 0x080045D4
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #6]
	ldrb r1, [r5, #7]
	lsls r1, r1, #8
	orrs r1, r0
	add r3, sp, #4
	adds r0, r4, #0
	mov r2, sp
	bl sub_08004434
	cmp r5, #0
	beq _080045FA
	subs r0, r5, r4
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x10
	b _080045FC
_080045FA:
	movs r0, #0
_080045FC:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [sp]
	cmp r1, #0
	beq _0800460E
	strb r2, [r1, #0xa]
	lsrs r0, r0, #0x18
	strb r0, [r1, #0xb]
	b _08004614
_0800460E:
	strb r2, [r4]
	lsrs r0, r0, #0x18
	strb r0, [r4, #1]
_08004614:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08004620
	strb r2, [r1, #8]
	lsrs r0, r2, #8
	strb r0, [r1, #9]
_08004620:
	ldr r0, [sp]
	cmp r0, #0
	beq _0800462E
	subs r0, r0, r4
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x10
	b _08004630
_0800462E:
	movs r0, #0
_08004630:
	strb r0, [r5, #8]
	lsrs r0, r0, #8
	strb r0, [r5, #9]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08004644
	subs r0, r0, r4
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x10
	b _08004646
_08004644:
	movs r0, #0
_08004646:
	strb r0, [r5, #0xa]
	lsrs r0, r0, #8
	strb r0, [r5, #0xb]
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r0, r1
	adds r0, #1
	strb r0, [r4, #4]
	lsrs r0, r0, #8
	strb r0, [r4, #5]
	adds r0, r4, #0
	bl sub_080044E4
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800466C
sub_0800466C: @ 0x0800466C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	add r3, sp, #4
	adds r1, r5, #0
	mov r2, sp
	bl sub_08004434
	ldr r4, [sp, #4]
	cmp r4, #0
	bne _0800468E
	movs r0, #0
	b _08004762
_0800468E:
	mov r0, r8
	adds r1, r4, #0
	bl sub_0800454C
	ldrb r1, [r4, #6]
	ldrb r0, [r4, #7]
	lsls r0, r0, #8
	orrs r0, r1
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r5, #3
	movs r6, #0xff
	strb r0, [r4, #6]
	lsrs r0, r0, #8
	strb r0, [r4, #7]
	movs r0, #0x6c
	strb r0, [r4, #4]
	movs r0, #0x61
	strb r0, [r4, #5]
	cmp r7, #3
	bls _0800474A
	ldrb r1, [r4, #6]
	ldrb r0, [r4, #7]
	lsls r0, r0, #8
	orrs r0, r1
	lsls r0, r0, #2
	adds r5, r4, r0
	adds r0, r5, #0
	movs r1, #0xc
	bl sub_08002F8C
	movs r0, #0x70
	strb r0, [r5, #4]
	movs r0, #0x73
	strb r0, [r5, #5]
	subs r1, r7, #3
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	ands r0, r6
	strb r0, [r5, #6]
	lsrs r1, r1, #0x18
	strb r1, [r5, #7]
	mov r0, r8
	subs r1, r4, r0
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	ands r0, r6
	strb r0, [r5]
	lsrs r1, r1, #8
	strb r1, [r5, #1]
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	lsls r1, r1, #8
	orrs r1, r0
	adds r0, r1, #0
	ands r0, r6
	strb r0, [r5, #2]
	lsrs r1, r1, #8
	strb r1, [r5, #3]
	mov r1, r8
	subs r0, r5, r1
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x10
	ands r6, r0
	strb r6, [r4, #2]
	lsrs r0, r0, #8
	strb r0, [r4, #3]
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, #0
	beq _0800472C
	lsls r0, r0, #2
	mov r2, r8
	adds r1, r2, r0
	b _0800472E
_0800472C:
	movs r1, #0
_0800472E:
	cmp r1, #0
	beq _08004740
	mov r2, r8
	subs r0, r5, r2
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x10
	strb r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r1, #1]
_08004740:
	mov r0, r8
	adds r1, r5, #0
	bl sub_080045D4
	b _08004760
_0800474A:
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #7]
	lsls r1, r1, #8
	orrs r1, r0
	adds r1, r7, r1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	ands r0, r6
	strb r0, [r4, #6]
	lsrs r1, r1, #0x18
	strb r1, [r4, #7]
_08004760:
	adds r0, r4, #0
_08004762:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08004770
sub_08004770: @ 0x08004770
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r5
	ldrb r1, [r5, #6]
	ldrb r0, [r5, #7]
	lsls r0, r0, #8
	orrs r0, r1
	subs r0, #3
	strb r0, [r5, #6]
	lsrs r0, r0, #8
	strb r0, [r5, #7]
	movs r0, #0x70
	strb r0, [r5, #4]
	movs r0, #0x73
	strb r0, [r5, #5]
	ldr r2, _0800479C @ =0x00007370
	b _080047A2
	.align 2, 0
_0800479C: .4byte 0x00007370
_080047A0:
	adds r5, r4, #0
_080047A2:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, #0
	beq _080047B4
	lsls r0, r0, #2
	adds r1, r6, r0
	b _080047B6
_080047B4:
	movs r1, #0
_080047B6:
	adds r4, r1, #0
	cmp r4, #0
	beq _080047C8
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, r2
	beq _080047A0
_080047C8:
	cmp r5, r8
	beq _080047D4
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0800454C
_080047D4:
	ldr r0, _080047DC @ =0x00007370
	mov sb, r0
	movs r7, #0xff
	b _0800481E
	.align 2, 0
_080047DC: .4byte 0x00007370
_080047E0:
	cmp r4, r8
	beq _080047EC
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800454C
_080047EC:
	ldrb r0, [r5, #6]
	ldrb r1, [r5, #7]
	lsls r1, r1, #8
	orrs r1, r0
	adds r1, #3
	ldrb r2, [r4, #6]
	ldrb r0, [r4, #7]
	lsls r0, r0, #8
	orrs r0, r2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	ands r0, r7
	strb r0, [r5, #6]
	lsrs r1, r1, #0x18
	strb r1, [r5, #7]
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	lsls r1, r1, #8
	orrs r1, r0
	adds r0, r1, #0
	ands r0, r7
	strb r0, [r5, #2]
	lsrs r1, r1, #8
	strb r1, [r5, #3]
_0800481E:
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, #0
	beq _08004830
	lsls r0, r0, #2
	adds r1, r6, r0
	b _08004832
_08004830:
	movs r1, #0
_08004832:
	adds r4, r1, #0
	cmp r4, #0
	beq _08004858
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, sb
	beq _080047E0
	cmp r5, #0
	beq _08004850
	subs r0, r5, r6
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x10
	b _08004852
_08004850:
	movs r0, #0
_08004852:
	strb r0, [r4]
	lsrs r0, r0, #8
	strb r0, [r4, #1]
_08004858:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080045D4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800486C
sub_0800486C: @ 0x0800486C
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #8
	bl sub_08002F8C
	subs r4, #8
	lsrs r4, r4, #2
	strb r4, [r5, #6]
	lsrs r4, r4, #8
	strb r4, [r5, #7]
	adds r4, r5, #0
	adds r4, #8
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08002F8C
	movs r0, #0x70
	strb r0, [r4, #4]
	movs r0, #0x73
	strb r0, [r4, #5]
	ldrb r1, [r5, #6]
	ldrb r0, [r5, #7]
	lsls r0, r0, #8
	orrs r0, r1
	subs r0, #3
	strb r0, [r4, #6]
	lsrs r0, r0, #8
	strb r0, [r4, #7]
	cmp r4, #0
	beq _080048B2
	subs r0, r4, r5
	lsls r0, r0, #0xe
	lsrs r1, r0, #0x10
	b _080048B4
_080048B2:
	movs r1, #0
_080048B4:
	movs r0, #0xff
	ands r0, r1
	movs r2, #0
	strb r0, [r5]
	lsrs r1, r1, #8
	strb r1, [r5, #1]
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	movs r0, #1
	strb r0, [r5, #4]
	strb r2, [r5, #5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080048D4
sub_080048D4: @ 0x080048D4
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	bne _080048E0
	movs r0, #0
	b _08004906
_080048E0:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080048F0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	adds r1, r0, #4
_080048F0:
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_0800466C
	movs r1, #0
	cmp r0, #0
	beq _08004904
	adds r1, r0, #0
	adds r1, #0xc
_08004904:
	adds r0, r1, #0
_08004906:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800490C
sub_0800490C: @ 0x0800490C
	push {lr}
	subs r1, #0xc
	bl sub_08004770
	pop {r0}
	bx r0

	thumb_func_start sub_08004918
sub_08004918: @ 0x08004918
	subs r1, #0xc
	ldrb r2, [r1, #6]
	ldrb r0, [r1, #7]
	lsls r0, r0, #8
	orrs r0, r2
	lsls r0, r0, #2
	subs r0, #0xc
	bx lr

	thumb_func_start sub_08004928
sub_08004928: @ 0x08004928
	push {lr}
	movs r1, #4
	bl sub_08002F8C
	pop {r0}
	bx r0

	thumb_func_start sub_08004934
sub_08004934: @ 0x08004934
	bx lr
	.align 2, 0

	thumb_func_start sub_08004938
sub_08004938: @ 0x08004938
	bx lr
	.align 2, 0

	thumb_func_start sub_0800493C
sub_0800493C: @ 0x0800493C
	lsrs r0, r0, #5
	movs r1, #0xf
	ands r0, r1
	bx lr

	thumb_func_start sub_08004944
sub_08004944: @ 0x08004944
	lsrs r0, r0, #3
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r1, r2, #0
	ands r0, r1
	bx lr

	thumb_func_start sub_08004950
sub_08004950: @ 0x08004950
	lsrs r0, r0, #0xc
	movs r1, #0xc
	ands r0, r1
	bx lr

	thumb_func_start sub_08004958
sub_08004958: @ 0x08004958
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	bx lr
	.align 2, 0

	thumb_func_start sub_08004960
sub_08004960: @ 0x08004960
	ldr r0, _08004974 @ =gUnk_03000DD2
	ldr r1, _08004978 @ =0x040000B0
	str r0, [r1]
	ldr r0, _0800497C @ =0x04000008
	str r0, [r1, #4]
	ldr r0, _08004980 @ =0x80000027
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_08004974: .4byte gUnk_03000DD2
_08004978: .4byte 0x040000B0
_0800497C: .4byte 0x04000008
_08004980: .4byte 0x80000027

	thumb_func_start sub_08004984
sub_08004984: @ 0x08004984
	push {lr}
	bl sub_080014B8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004990
sub_08004990: @ 0x08004990
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r6, r0, #0
	str r2, [sp, #4]
	movs r0, #0
	str r0, [sp, #0x14]
	mov ip, r0
	ldrb r3, [r1]
	adds r1, #1
	ldrb r2, [r1]
	str r2, [sp, #8]
	adds r1, #1
	str r1, [sp]
	movs r1, #0
	cmp r3, #2
	bhi _080049C6
	ldr r5, [sp]
	ldrb r0, [r5]
	lsls r0, r0, #8
	ldrb r1, [r5, #1]
	orrs r1, r0
	adds r5, #2
	str r5, [sp]
_080049C6:
	ldr r7, _080049DC @ =0x0000FFFF
	str r7, [sp, #0xc]
	str r1, [sp, #0x10]
	cmp r3, #0
	bne _080049E0
	ldr r0, [sp, #8]
	adds r0, #1
	adds r1, r7, #0
	asrs r1, r0
	lsls r0, r1, #0x10
	b _080049F2
	.align 2, 0
_080049DC: .4byte 0x0000FFFF
_080049E0:
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080049F8
	ldr r2, [sp, #0xc]
	ldr r5, [sp, #8]
	asrs r2, r5
	lsls r0, r2, #0x10
_080049F2:
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	b _08004A3A
_080049F8:
	cmp r3, #3
	bne _08004A12
	ldr r0, [sp, #8]
	adds r0, #1
	ldr r7, [sp, #0xc]
	asrs r7, r0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #8
	ldrb r1, [r6, #1]
	b _08004A34
_08004A12:
	subs r0, r3, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08004A20
_08004A1C:
	movs r0, #0
	b _08004D74
_08004A20:
	ldr r2, [sp, #0xc]
	ldr r5, [sp, #8]
	asrs r2, r5
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #8
	ldrb r7, [r6, #1]
	adds r1, r7, #0
_08004A34:
	orrs r1, r0
	str r1, [sp, #0x10]
	adds r6, #2
_08004A3A:
	cmp r3, #0
	beq _08004A44
	cmp r3, #3
	beq _08004A44
	b _08004B58
_08004A44:
	ldr r2, [sp, #0x14]
	ldr r5, [sp, #0x10]
	cmp r2, r5
	bne _08004A4E
	b _08004D68
_08004A4E:
	ldr r7, _08004AB4 @ =0x0000FFFF
	mov ip, r7
	movs r0, #8
	ldr r1, [sp, #8]
	subs r0, r0, r1
	str r0, [sp, #0x18]
_08004A5A:
	ldrb r1, [r6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08004AC4
	movs r0, #0x7f
	ands r0, r1
	adds r2, r0, #1
	adds r6, #1
	ldr r5, [sp, #0x14]
	adds r0, r5, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, ip
	beq _08004B36
	ldr r5, _08004AB8 @ =gUnk_030029F0
	ldr r7, _08004ABC @ =gUnk_030029F8
	mov sb, r7
	ldr r0, _08004AB4 @ =0x0000FFFF
	mov r8, r0
	ldr r1, _08004AC0 @ =gUnk_030029F4
	mov sl, r1
_08004A8E:
	ldrb r4, [r6]
	adds r6, #1
	ldr r1, [r5]
	adds r3, r1, #1
	mov r7, sb
	ldr r0, [r7]
	cmp r3, r0
	bhs _08004AA8
	mov r7, sl
	ldr r0, [r7]
	adds r0, r0, r1
	strb r4, [r0]
	str r3, [r5]
_08004AA8:
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r8
	bne _08004A8E
	b _08004B36
	.align 2, 0
_08004AB4: .4byte 0x0000FFFF
_08004AB8: .4byte gUnk_030029F0
_08004ABC: .4byte gUnk_030029F8
_08004AC0: .4byte gUnk_030029F4
_08004AC4:
	ldrb r1, [r6]
	lsls r2, r1, #1
	ldr r0, [sp, #0x18]
	asrs r2, r0
	lsls r0, r2, #0x10
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	lsls r1, r1, #8
	ldrb r5, [r6, #1]
	orrs r5, r1
	ldr r7, [sp, #0xc]
	ands r5, r7
	ldr r1, [sp, #0x14]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r6, #2
	str r6, [sp, #0x24]
	cmp r2, ip
	beq _08004B34
	ldr r6, _08004B48 @ =gUnk_030029F0
	ldr r7, _08004B4C @ =0x0000FFFF
	mov sl, r7
	ldr r0, _08004B50 @ =gUnk_030029F8
	mov sb, r0
	ldr r1, _08004B54 @ =gUnk_030029F4
	mov r8, r1
_08004B06:
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r7, [sp]
	adds r0, r7, r0
	ldrb r4, [r0]
	ldr r1, [r6]
	adds r3, r1, #1
	mov r7, sb
	ldr r0, [r7]
	cmp r3, r0
	bhs _08004B2A
	mov r7, r8
	ldr r0, [r7]
	adds r0, r0, r1
	strb r4, [r0]
	str r3, [r6]
_08004B2A:
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, sl
	bne _08004B06
_08004B34:
	ldr r6, [sp, #0x24]
_08004B36:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bls _08004B40
	b _08004A1C
_08004B40:
	cmp r0, r1
	bne _08004A5A
	b _08004D68
	.align 2, 0
_08004B48: .4byte gUnk_030029F0
_08004B4C: .4byte 0x0000FFFF
_08004B50: .4byte gUnk_030029F8
_08004B54: .4byte gUnk_030029F4
_08004B58:
	cmp r3, #1
	beq _08004B62
	cmp r3, #4
	beq _08004B62
	b _08004C68
_08004B62:
	ldr r2, [sp, #0x14]
	ldr r5, [sp, #0x10]
	cmp r2, r5
	bne _08004B6C
	b _08004D68
_08004B6C:
	movs r0, #8
	ldr r7, [sp, #8]
	subs r0, r0, r7
	str r0, [sp, #0x1c]
_08004B74:
	mov r1, ip
	lsls r0, r1, #0x11
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r0, #0xff
	mov r2, ip
	ands r0, r2
	cmp r0, #0
	bne _08004B96
	ldrb r0, [r6]
	lsls r0, r0, #8
	mov ip, r0
	movs r0, #0xff
	mov r5, ip
	orrs r5, r0
	mov ip, r5
	adds r6, #1
_08004B96:
	mov r0, ip
	movs r7, #0x80
	lsls r7, r7, #8
	ands r0, r7
	cmp r0, #0
	beq _08004BD8
	ldrb r4, [r6]
	adds r6, #1
	ldr r5, _08004BCC @ =gUnk_030029F0
	ldr r1, [r5]
	adds r3, r1, #1
	ldr r0, _08004BD0 @ =gUnk_030029F8
	ldr r0, [r0]
	cmp r3, r0
	bhs _08004BBE
	ldr r0, _08004BD4 @ =gUnk_030029F4
	ldr r0, [r0]
	adds r0, r0, r1
	strb r4, [r0]
	str r3, [r5]
_08004BBE:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	b _08004C46
	.align 2, 0
_08004BCC: .4byte gUnk_030029F0
_08004BD0: .4byte gUnk_030029F8
_08004BD4: .4byte gUnk_030029F4
_08004BD8:
	ldrb r1, [r6]
	adds r0, r1, #0
	ldr r2, [sp, #0x1c]
	asrs r0, r2
	adds r0, #3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #8
	ldrb r5, [r6, #1]
	orrs r5, r1
	ldr r7, [sp, #0xc]
	ands r5, r7
	ldr r1, [sp, #0x14]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08004C58 @ =0x0000FFFF
	adds r6, #2
	str r6, [sp, #0x24]
	cmp r2, r0
	beq _08004C44
	ldr r6, _08004C5C @ =gUnk_030029F0
	mov sl, r0
	ldr r7, _08004C60 @ =gUnk_030029F8
	mov sb, r7
	ldr r0, _08004C64 @ =gUnk_030029F4
	mov r8, r0
_08004C16:
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r1, [sp]
	adds r0, r1, r0
	ldrb r4, [r0]
	ldr r1, [r6]
	adds r3, r1, #1
	mov r7, sb
	ldr r0, [r7]
	cmp r3, r0
	bhs _08004C3A
	mov r7, r8
	ldr r0, [r7]
	adds r0, r0, r1
	strb r4, [r0]
	str r3, [r6]
_08004C3A:
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, sl
	bne _08004C16
_08004C44:
	ldr r6, [sp, #0x24]
_08004C46:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bls _08004C50
	b _08004A1C
_08004C50:
	cmp r0, r1
	bne _08004B74
	b _08004D68
	.align 2, 0
_08004C58: .4byte 0x0000FFFF
_08004C5C: .4byte gUnk_030029F0
_08004C60: .4byte gUnk_030029F8
_08004C64: .4byte gUnk_030029F4
_08004C68:
	cmp r3, #2
	beq _08004C72
	cmp r3, #5
	beq _08004C72
	b _08004A1C
_08004C72:
	ldr r2, [sp, #0x14]
	ldr r5, [sp, #0x10]
	b _08004D5E
_08004C78:
	movs r7, #7
	ands r7, r0
	lsrs r4, r0, #3
	adds r6, #1
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xff
	beq _08004CC6
	ldr r2, _08004D84 @ =gUnk_030029F0
	ldr r0, _08004D88 @ =gUnk_030029F8
	mov sb, r0
	ldr r1, _08004D8C @ =gUnk_030029F4
	mov r8, r1
_08004C94:
	ldrb r5, [r6]
	mov sl, r5
	adds r6, #1
	ldr r1, [r2]
	adds r3, r1, #1
	mov r5, sb
	ldr r0, [r5]
	cmp r3, r0
	bhs _08004CB2
	mov r5, r8
	ldr r0, [r5]
	adds r0, r0, r1
	mov r1, sl
	strb r1, [r0]
	str r3, [r2]
_08004CB2:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xff
	bne _08004C94
_08004CC6:
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xff
	beq _08004D54
	movs r0, #8
	ldr r2, [sp, #8]
	subs r0, r0, r2
	str r0, [sp, #0x20]
_08004CD8:
	ldrb r1, [r6]
	adds r0, r1, #0
	ldr r5, [sp, #0x20]
	asrs r0, r5
	adds r0, #3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #8
	ldrb r5, [r6, #1]
	orrs r5, r1
	ldr r0, [sp, #0xc]
	ands r5, r0
	ldr r1, [sp, #0x14]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r6, #1
	mov ip, r6
	subs r0, r7, #1
	str r0, [sp, #0x24]
	ldr r1, _08004D90 @ =0x0000FFFF
	cmp r2, r1
	beq _08004D48
	ldr r6, _08004D84 @ =gUnk_030029F0
	mov sl, r1
	ldr r7, _08004D88 @ =gUnk_030029F8
	mov sb, r7
	ldr r0, _08004D8C @ =gUnk_030029F4
	mov r8, r0
_08004D1A:
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r1, [sp]
	adds r0, r1, r0
	ldrb r4, [r0]
	ldr r1, [r6]
	adds r3, r1, #1
	mov r7, sb
	ldr r0, [r7]
	cmp r3, r0
	bhs _08004D3E
	mov r7, r8
	ldr r0, [r7]
	adds r0, r0, r1
	strb r4, [r0]
	str r3, [r6]
_08004D3E:
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, sl
	bne _08004D1A
_08004D48:
	mov r6, ip
	ldr r1, [sp, #0x24]
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xff
	bne _08004CD8
_08004D54:
	ldr r2, [sp, #0x14]
	ldr r5, [sp, #0x10]
	cmp r2, r5
	bls _08004D5E
	b _08004A1C
_08004D5E:
	cmp r2, r5
	beq _08004D68
	ldrb r0, [r6]
	cmp r0, #0
	bne _08004C78
_08004D68:
	ldr r7, [sp, #4]
	cmp r7, #0
	beq _08004D72
	ldr r0, [sp, #0x14]
	str r0, [r7]
_08004D72:
	movs r0, #1
_08004D74:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004D84: .4byte gUnk_030029F0
_08004D88: .4byte gUnk_030029F8
_08004D8C: .4byte gUnk_030029F4
_08004D90: .4byte 0x0000FFFF

	thumb_func_start sub_08004D94
sub_08004D94: @ 0x08004D94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r1, #0
	adds r3, r2, #0
	adds r5, r0, #0
	cmp r5, #0
	bne _08004DA8
_08004DA4:
	movs r0, #1
	b _08004E16
_08004DA8:
	ldrb r0, [r5, #2]
	lsls r0, r0, #8
	ldrb r7, [r5, #3]
	orrs r7, r0
	adds r2, r5, #4
	ldrb r1, [r5, #4]
	lsls r1, r1, #0x18
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldrb r0, [r2, #2]
	lsls r0, r0, #8
	orrs r1, r0
	ldrb r0, [r2, #3]
	orrs r1, r0
	adds r1, r1, r5
	mov r8, r1
	ldr r0, _08004E20 @ =gUnk_030029F4
	str r4, [r0]
	ldr r0, _08004E24 @ =gUnk_030029F8
	str r3, [r0]
	cmp r3, #0
	beq _08004DDA
	movs r0, #0
	strb r0, [r4]
_08004DDA:
	ldr r1, _08004E28 @ =gUnk_030029F0
	movs r0, #0
	str r0, [r1]
	movs r6, #0
	cmp r6, r7
	bhs _08004E14
	adds r4, r5, #0
	adds r4, #8
_08004DEA:
	ldrb r0, [r4]
	lsls r0, r0, #0x18
	adds r0, r5, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x10
	adds r0, r0, r1
	ldrb r1, [r4, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	mov r1, r8
	movs r2, #0
	bl sub_08004990
	cmp r0, #0
	beq _08004DA4
	adds r4, #4
	adds r6, #1
	cmp r6, r7
	blo _08004DEA
_08004E14:
	movs r0, #0
_08004E16:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004E20: .4byte gUnk_030029F4
_08004E24: .4byte gUnk_030029F8
_08004E28: .4byte gUnk_030029F0

	thumb_func_start sub_08004E2C
sub_08004E2C: @ 0x08004E2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	adds r6, r0, #0
	cmp r6, #0
	beq _08004E4C
	ldrb r0, [r6, #2]
	lsls r0, r0, #8
	ldrb r1, [r6, #3]
	orrs r1, r0
	cmp r5, r1
	blo _08004E50
_08004E4C:
	movs r0, #1
	b _08004ECE
_08004E50:
	cmp r7, r1
	bhi _08004E58
	cmp r7, #0
	bne _08004E5A
_08004E58:
	adds r7, r1, #0
_08004E5A:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, r6, #4
	ldrb r1, [r6, #4]
	lsls r1, r1, #0x18
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldrb r0, [r2, #2]
	lsls r0, r0, #8
	orrs r1, r0
	ldrb r0, [r2, #3]
	orrs r1, r0
	adds r1, r1, r6
	mov sb, r1
	movs r1, #1
	rsbs r1, r1, #0
	ldr r0, _08004EDC @ =gUnk_030029F4
	str r4, [r0]
	ldr r0, _08004EE0 @ =gUnk_030029F8
	str r1, [r0]
	movs r0, #0
	strb r0, [r4]
	ldr r1, _08004EE4 @ =gUnk_030029F0
	movs r0, #0
	str r0, [r1]
	mov r1, r8
	adds r0, r7, r1
	cmp r5, r0
	bhs _08004ECC
	lsls r0, r5, #2
	adds r0, #8
	adds r4, r0, r6
_08004E9E:
	ldrb r0, [r4]
	lsls r0, r0, #0x18
	adds r0, r6, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x10
	adds r0, r0, r1
	ldrb r1, [r4, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	mov r1, sb
	movs r2, #0
	bl sub_08004990
	cmp r0, #0
	beq _08004E4C
	adds r4, #4
	adds r5, #1
	mov r1, r8
	adds r0, r7, r1
	cmp r5, r0
	blo _08004E9E
_08004ECC:
	movs r0, #0
_08004ECE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004EDC: .4byte gUnk_030029F4
_08004EE0: .4byte gUnk_030029F8
_08004EE4: .4byte gUnk_030029F0

	thumb_func_start sub_08004EE8
sub_08004EE8: @ 0x08004EE8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r7, r6, #0
	movs r1, #0
	ldr r0, _08004F58 @ =gUnk_030029F4
	str r1, [r0]
	ldr r0, _08004F5C @ =gUnk_030029F8
	str r1, [r0]
	ldr r0, _08004F60 @ =gUnk_030029F0
	str r1, [r0]
	cmp r4, #0
	beq _08004F64
	ldrb r0, [r4, #2]
	lsls r0, r0, #8
	ldrb r3, [r4, #3]
	orrs r3, r0
	adds r2, r4, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #0x18
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldrb r0, [r2, #2]
	lsls r0, r0, #8
	orrs r1, r0
	ldrb r0, [r2, #3]
	orrs r1, r0
	adds r5, r4, r1
	cmp r6, r3
	bhs _08004F64
	lsls r2, r7, #2
	adds r2, #8
	adds r2, r4, r2
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	adds r0, r4, r0
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	adds r0, r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	adds r1, r5, #0
	mov r2, sp
	bl sub_08004990
	cmp r0, #0
	beq _08004F64
	ldr r0, [sp]
	b _08004F68
	.align 2, 0
_08004F58: .4byte gUnk_030029F4
_08004F5C: .4byte gUnk_030029F8
_08004F60: .4byte gUnk_030029F0
_08004F64:
	movs r0, #1
	rsbs r0, r0, #0
_08004F68:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08004F70
sub_08004F70: @ 0x08004F70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r7, #0
	ldr r1, _08004F90 @ =gUnk_030029F4
	str r7, [r1]
	ldr r1, _08004F94 @ =gUnk_030029F8
	str r7, [r1]
	ldr r1, _08004F98 @ =gUnk_030029F0
	str r7, [r1]
	adds r5, r0, #0
	cmp r5, #0
	bne _08004F9C
_08004F8C:
	movs r0, #0
	b _08004FFC
	.align 2, 0
_08004F90: .4byte gUnk_030029F4
_08004F94: .4byte gUnk_030029F8
_08004F98: .4byte gUnk_030029F0
_08004F9C:
	ldrb r0, [r5, #2]
	lsls r0, r0, #8
	ldrb r6, [r5, #3]
	orrs r6, r0
	adds r2, r5, #4
	ldrb r1, [r5, #4]
	lsls r1, r1, #0x18
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldrb r0, [r2, #2]
	lsls r0, r0, #8
	orrs r1, r0
	ldrb r0, [r2, #3]
	orrs r1, r0
	adds r1, r1, r5
	mov r8, r1
	movs r3, #0
	cmp r7, r6
	bhs _08004FFA
	adds r4, r5, #0
	adds r4, #8
_08004FC8:
	ldrb r0, [r4]
	lsls r0, r0, #0x18
	adds r0, r5, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x10
	adds r0, r0, r1
	ldrb r1, [r4, #2]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	mov r1, r8
	mov r2, sp
	str r3, [sp, #4]
	bl sub_08004990
	ldr r3, [sp, #4]
	cmp r0, #0
	beq _08004F8C
	ldr r0, [sp]
	adds r7, r7, r0
	adds r4, #4
	adds r3, #1
	cmp r3, r6
	blo _08004FC8
_08004FFA:
	adds r0, r7, #0
_08004FFC:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08005008
sub_08005008: @ 0x08005008
	adds r2, r0, #0
	movs r1, #0
	ldr r0, _08005028 @ =gUnk_030029F4
	str r1, [r0]
	ldr r0, _0800502C @ =gUnk_030029F8
	str r1, [r0]
	ldr r0, _08005030 @ =gUnk_030029F0
	str r1, [r0]
	cmp r2, #0
	beq _08005034
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	ldrb r0, [r2, #3]
	orrs r0, r1
	b _08005036
	.align 2, 0
_08005028: .4byte gUnk_030029F4
_0800502C: .4byte gUnk_030029F8
_08005030: .4byte gUnk_030029F0
_08005034:
	movs r0, #0
_08005036:
	bx lr

	thumb_func_start sub_08005038
sub_08005038: @ 0x08005038
	push {lr}
	movs r2, #1
	rsbs r2, r2, #0
	bl sub_08004D94
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08005048
sub_08005048: @ 0x08005048
	adds r2, r0, #0
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	orrs r0, r1
	bx lr

	thumb_func_start sub_08005060
sub_08005060: @ 0x08005060
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _08005078 @ =gUnk_03002C82
	ldr r0, _0800507C @ =gMultiSioArea
	movs r2, #0x92
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #1
	beq _08005080
	movs r0, #0
	b _080050BA
	.align 2, 0
_08005078: .4byte gUnk_03002C82
_0800507C: .4byte gMultiSioArea
_08005080:
	movs r0, #2
	strb r0, [r1]
	subs r6, r5, #2
	adds r0, r4, #0
	bl strlen
	cmp r0, #0xb
	bhi _08005098
	adds r0, r4, #0
	bl strlen
	b _0800509A
_08005098:
	movs r0, #0xc
_0800509A:
	strh r0, [r6]
	ldr r1, _080050C0 @ =gMultiSioArea
	movs r2, #0xb
_080050A0:
	ldrb r0, [r4]
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	subs r2, #1
	cmp r2, #0
	bge _080050A0
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #1
_080050BA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080050C0: .4byte gMultiSioArea

	thumb_func_start sub_080050C4
sub_080050C4: @ 0x080050C4
	push {r4, r5, lr}
	ldr r0, _0800510C @ =gUnk_03002C94
	movs r1, #0
	strh r1, [r0]
	ldr r1, _08005110 @ =gMultiSioArea
	ldrb r0, [r1]
	movs r2, #0
	cmp r0, #8
	beq _080050D8
	movs r2, #5
_080050D8:
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0
	strh r2, [r1]
	ldr r1, _08005114 @ =gUnk_03002A00
	strh r0, [r1]
	ldr r2, _08005118 @ =gUnk_03002C80
	strh r0, [r2]
	movs r3, #0
	adds r5, r1, #2
	movs r4, #0
	adds r2, #2
_080050F2:
	lsls r1, r3, #1
	adds r0, r1, r5
	strh r4, [r0]
	adds r1, r1, r2
	strh r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #5
	bls _080050F2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800510C: .4byte gUnk_03002C94
_08005110: .4byte gMultiSioArea
_08005114: .4byte gUnk_03002A00
_08005118: .4byte gUnk_03002C80

	thumb_func_start sub_0800511C
sub_0800511C: @ 0x0800511C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08005160 @ =gUnk_03001068
	ldr r0, [r0]
	cmp r0, #3
	beq _0800512C
	b _08005306
_0800512C:
	ldr r1, _08005164 @ =gMultiSioArea
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r3, r1, #0
	cmp r0, #1
	beq _08005148
	ldr r1, _08005168 @ =0x00000125
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08005148
	b _08005306
_08005148:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrh r0, [r0]
	cmp r0, #0xc
	bls _08005156
	b _08005306
_08005156:
	lsls r0, r0, #2
	ldr r1, _0800516C @ =_08005170
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005160: .4byte gUnk_03001068
_08005164: .4byte gMultiSioArea
_08005168: .4byte 0x00000125
_0800516C: .4byte _08005170
_08005170: @ jump table
	.4byte _080051A4 @ case 0
	.4byte _080051C4 @ case 1
	.4byte _08005306 @ case 2
	.4byte _08005306 @ case 3
	.4byte _08005306 @ case 4
	.4byte _08005288 @ case 5
	.4byte _080052C4 @ case 6
	.4byte _08005306 @ case 7
	.4byte _08005306 @ case 8
	.4byte _08005306 @ case 9
	.4byte _080051F0 @ case 10
	.4byte _08005234 @ case 11
	.4byte _0800524C @ case 12
_080051A4:
	ldr r1, _080051C0 @ =gUnk_030035D4
	movs r0, #0
	strh r0, [r1]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r1, #1
	strb r1, [r0]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	b _08005306
	.align 2, 0
_080051C0: .4byte gUnk_030035D4
_080051C4:
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #1
	strb r0, [r1]
	ldr r2, _080051EC @ =gUnk_030035D4
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi _080051E0
	b _08005306
_080051E0:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r3, r2
	movs r0, #0xa
	strh r0, [r1]
	b _08005306
	.align 2, 0
_080051EC: .4byte gUnk_030035D4
_080051F0:
	adds r0, r4, #0
	bl strlen
	cmp r0, #1
	bls _0800522C
	ldr r1, _08005224 @ =gUnk_03002A02
	adds r0, r4, #0
	bl strcmp
	movs r1, #0
	cmp r0, #0
	bne _0800520A
	movs r1, #1
_0800520A:
	cmp r1, #0
	beq _0800522C
	adds r0, r5, #0
	bl sub_08005060
	ldr r0, _08005228 @ =gMultiSioArea
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0xb
	strh r0, [r1]
	b _08005306
	.align 2, 0
_08005224: .4byte gUnk_03002A02
_08005228: .4byte gMultiSioArea
_0800522C:
	adds r0, r4, #0
	bl sub_08005060
	b _08005306
_08005234:
	ldr r0, _08005248 @ =gUnk_030035D4
	movs r1, #0
	strh r1, [r0]
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #0xc
	strh r0, [r1]
	b _08005280
	.align 2, 0
_08005248: .4byte gUnk_030035D4
_0800524C:
	ldr r0, _08005274 @ =gUnk_030035D4
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bhi _08005266
	ldr r1, _08005278 @ =0x00000125
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08005280
_08005266:
	bl sub_080050C4
	ldr r0, _0800527C @ =gMultiSioArea
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r0, r2
	b _080052EE
	.align 2, 0
_08005274: .4byte gUnk_030035D4
_08005278: .4byte 0x00000125
_0800527C: .4byte gMultiSioArea
_08005280:
	adds r0, r5, #0
	bl sub_08005060
	b _08005306
_08005288:
	adds r0, r4, #0
	bl strlen
	cmp r0, #1
	bls _08005306
	ldr r1, _080052BC @ =gUnk_03002A02
	adds r0, r4, #0
	bl strcmp
	movs r1, #0
	cmp r0, #0
	bne _080052A2
	movs r1, #1
_080052A2:
	cmp r1, #0
	beq _08005306
	adds r0, r4, #0
	bl sub_08005060
	ldr r0, _080052C0 @ =gMultiSioArea
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #6
	strh r0, [r1]
	b _08005306
	.align 2, 0
_080052BC: .4byte gUnk_03002A02
_080052C0: .4byte gMultiSioArea
_080052C4:
	adds r0, r5, #0
	bl strlen
	cmp r0, #1
	bls _08005300
	ldr r1, _080052F8 @ =gUnk_03002A02
	adds r0, r5, #0
	bl strcmp
	movs r1, #0
	cmp r0, #0
	bne _080052DE
	movs r1, #1
_080052DE:
	cmp r1, #0
	beq _08005300
	bl sub_080050C4
	ldr r0, _080052FC @ =gMultiSioArea
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
_080052EE:
	movs r1, #0x17
	strb r1, [r0]
	movs r0, #1
	b _08005308
	.align 2, 0
_080052F8: .4byte gUnk_03002A02
_080052FC: .4byte gMultiSioArea
_08005300:
	adds r0, r4, #0
	bl sub_08005060
_08005306:
	movs r0, #0
_08005308:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08005310
sub_08005310: @ 0x08005310
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r5, _08005338 @ =gMultiSioArea
	movs r0, #0x92
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r1, [r6]
	subs r0, #0x23
	cmp r1, r0
	bne _08005334
	ldrb r0, [r5, #2]
	cmp r0, #3
	beq _0800533C
_08005334:
	movs r0, #0
	b _08005380
	.align 2, 0
_08005338: .4byte gMultiSioArea
_0800533C:
	movs r1, #0
	mov r8, r1
	movs r0, #2
	strb r0, [r6]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r3, [r0]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	adds r0, r7, #5
	movs r1, #6
	bl __divsi3
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r5, r1
	strh r7, [r0]
	adds r2, #4
	adds r0, r5, r2
	mov r1, r8
	strh r1, [r0]
	subs r2, #8
	adds r0, r5, r2
	strh r1, [r0]
	movs r0, #5
	strb r0, [r6]
	movs r0, #1
_08005380:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800538C
sub_0800538C: @ 0x0800538C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	mov sl, r3
	ldr r0, [sp, #0x24]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r5, _080053C4 @ =gMultiSioArea
	movs r0, #0x92
	lsls r0, r0, #1
	adds r0, r0, r5
	mov r8, r0
	ldrh r1, [r0]
	ldr r0, _080053C8 @ =0x00000101
	cmp r1, r0
	bne _080053C0
	ldrb r0, [r5, #2]
	cmp r0, #3
	beq _080053CC
_080053C0:
	movs r0, #0
	b _08005468
	.align 2, 0
_080053C4: .4byte gMultiSioArea
_080053C8: .4byte 0x00000101
_080053CC:
	movs r0, #2
	mov r1, r8
	strb r0, [r1]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r5, r2
	str r4, [r0]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r7, [r0]
	subs r2, #0x10
	adds r0, r5, r2
	movs r1, #0
	strh r1, [r0]
	subs r2, #8
	adds r0, r5, r2
	strh r1, [r0]
	adds r0, r6, #5
	movs r1, #6
	bl __divsi3
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r5, r1
	strh r6, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0800300C
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, sl
	str r2, [r0]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, [sp, #0x20]
	str r0, [r1]
	movs r1, #0x9b
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	strh r2, [r0]
	subs r1, #8
	adds r0, r5, r1
	strh r2, [r0]
	mov r0, sb
	adds r0, #5
	movs r1, #6
	bl __divsi3
	movs r2, #0x99
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r2, sb
	strh r2, [r0]
	adds r1, #4
	adds r0, r5, r1
	movs r2, #0
	strh r2, [r0]
	movs r0, #0xc
	mov r1, r8
	strb r0, [r1]
	movs r0, #1
_08005468:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08005478
sub_08005478: @ 0x08005478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _080054D8 @ =gUnk_03000E5C
	ldr r4, _080054DC @ =gUnk_03001068
	ldr r0, [r4]
	str r0, [r1]
	ldr r0, _080054E0 @ =gUnk_03000890
	ldr r1, _080054E4 @ =gUnk_03002930
	bl MultiSioMain
	str r0, [r4]
	ldr r4, _080054E8 @ =gMultiSioArea
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080054F8
	ldr r0, _080054EC @ =0x04000128
	ldrb r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x10
	beq _080054F8
	movs r0, #0x91
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	cmp r0, #0xf0
	bls _080054F0
	bl MultiSioStop
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	strh r6, [r5]
	bl sub_0809FE24
	bl _08006002
	.align 2, 0
_080054D8: .4byte gUnk_03000E5C
_080054DC: .4byte gUnk_03001068
_080054E0: .4byte gUnk_03000890
_080054E4: .4byte gUnk_03002930
_080054E8: .4byte gMultiSioArea
_080054EC: .4byte 0x04000128
_080054F0:
	adds r0, #1
	strh r0, [r5]
	bl _08006002
_080054F8:
	ldr r0, _08005528 @ =gUnk_03001068
	ldr r0, [r0]
	cmp r0, #3
	beq _08005538
	ldr r1, _0800552C @ =gMultiSioArea
	movs r4, #0x91
	lsls r4, r4, #1
	adds r3, r1, r4
	ldrh r0, [r3]
	cmp r0, #0xf0
	bls _08005530
	movs r6, #0x90
	lsls r6, r6, #1
	adds r0, r1, r6
	ldrh r1, [r0]
	adds r1, #1
	movs r2, #0
	strh r1, [r0]
	strh r2, [r3]
	bl sub_0809FE24
	bl _08006002
	.align 2, 0
_08005528: .4byte gUnk_03001068
_0800552C: .4byte gMultiSioArea
_08005530:
	adds r0, #1
	strh r0, [r3]
	bl _08006002
_08005538:
	bl sub_0809FE24
	ldr r5, _080055AC @ =gMultiSioArea
	ldrb r0, [r5]
	lsrs r0, r0, #3
	str r0, [sp]
	movs r0, #1
	ldr r1, [sp]
	ands r1, r0
	str r1, [sp]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080055B0 @ =gUnk_03002930
	ldr r3, [sp]
	lsls r2, r3, #4
	adds r3, r2, r1
	ldrb r0, [r3]
	movs r4, #0x1f
	mov sb, r4
	mov r6, sb
	ands r6, r0
	mov sb, r6
	lsrs r0, r0, #5
	ldr r6, _080055B4 @ =0x00000141
	adds r4, r5, r6
	strb r0, [r4]
	ldrh r0, [r3]
	lsrs r0, r0, #8
	mov r8, r0
	adds r1, #2
	adds r2, r2, r1
	ldrh r4, [r2]
	ldr r1, _080055B8 @ =0x00000125
	adds r0, r5, r1
	mov r2, sb
	strb r2, [r0]
	ldr r1, _080055BC @ =gUnk_03000890
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xe
_0800558E:
	strh r2, [r0]
	subs r0, #2
	cmp r0, r1
	bge _0800558E
	mov r0, sb
	subs r0, #3
	cmp r0, #0x13
	bls _080055A0
	b _08005A00
_080055A0:
	lsls r0, r0, #2
	ldr r1, _080055C0 @ =_080055C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080055AC: .4byte gMultiSioArea
_080055B0: .4byte gUnk_03002930
_080055B4: .4byte 0x00000141
_080055B8: .4byte 0x00000125
_080055BC: .4byte gUnk_03000890
_080055C0: .4byte _080055C4
_080055C4: @ jump table
	.4byte _080056D8 @ case 0
	.4byte _080056D8 @ case 1
	.4byte _08005614 @ case 2
	.4byte _08005708 @ case 3
	.4byte _08005A00 @ case 4
	.4byte _08005A00 @ case 5
	.4byte _08005678 @ case 6
	.4byte _080056D8 @ case 7
	.4byte _08005A00 @ case 8
	.4byte _0800582C @ case 9
	.4byte _08005A00 @ case 10
	.4byte _08005900 @ case 11
	.4byte _080056B4 @ case 12
	.4byte _08005A00 @ case 13
	.4byte _080057F0 @ case 14
	.4byte _080057DC @ case 15
	.4byte _08005A00 @ case 16
	.4byte _08005A00 @ case 17
	.4byte _08005A00 @ case 18
	.4byte _080056D8 @ case 19
_08005614:
	ldr r6, _08005670 @ =gMultiSioArea
	movs r3, #0x92
	lsls r3, r3, #1
	adds r1, r6, r3
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	movs r4, #0x97
	lsls r4, r4, #1
	adds r0, r6, r4
	strh r2, [r0]
	movs r1, #0x9b
	lsls r1, r1, #1
	adds r0, r6, r1
	strh r2, [r0]
	ldr r4, _08005674 @ =gUnk_03002930
	ldr r2, [sp]
	lsls r5, r2, #4
	adds r0, r4, #2
	adds r0, r5, r0
	ldrh r0, [r0]
	adds r3, #0x16
	adds r1, r6, r3
	strh r0, [r1]
	ldrh r0, [r1]
	adds r0, #5
	movs r1, #6
	bl __divsi3
	movs r2, #0x99
	lsls r2, r2, #1
	adds r1, r6, r2
	strh r0, [r1]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r2, r6, r3
	adds r0, r4, #4
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r4, #6
	adds r5, r5, r4
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [r2]
	b _08005A00
	.align 2, 0
_08005670: .4byte gMultiSioArea
_08005674: .4byte gUnk_03002930
_08005678:
	ldr r2, _080056AC @ =gMultiSioArea
	ldr r0, _080056B0 @ =gUnk_03002930
	ldr r4, [sp]
	lsls r1, r4, #4
	adds r0, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r6, #0x96
	lsls r6, r6, #1
	adds r0, r2, r6
	strh r1, [r0]
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r1, r2, r3
	strh r0, [r1]
	movs r4, #0x92
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r0, #5
	strb r0, [r1]
	b _08005A00
	.align 2, 0
_080056AC: .4byte gMultiSioArea
_080056B0: .4byte gUnk_03002930
_080056B4:
	ldr r2, _080056D4 @ =gMultiSioArea
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r0, r2, r6
	movs r1, #0
	strh r1, [r0]
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	movs r4, #0x92
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r0, #0xf
	strb r0, [r1]
	b _08005A00
	.align 2, 0
_080056D4: .4byte gMultiSioArea
_080056D8:
	ldr r3, _08005700 @ =gUnk_03002A00
	ldr r1, _08005704 @ =gUnk_03002930
	ldr r6, [sp]
	lsls r2, r6, #4
	adds r0, r1, #2
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r3]
	adds r1, #4
	adds r2, r2, r1
	adds r3, #2
	movs r4, #5
_080056F0:
	ldrh r0, [r2]
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	subs r4, #1
	cmp r4, #0
	bge _080056F0
	b _08005A00
	.align 2, 0
_08005700: .4byte gUnk_03002A00
_08005704: .4byte gUnk_03002930
_08005708:
	ldr r1, _08005740 @ =gMultiSioArea
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #8
	beq _0800574A
	cmp r0, #0x12
	beq _08005720
	cmp r0, #1
	bne _08005748
_08005720:
	movs r3, #0x97
	lsls r3, r3, #1
	adds r1, r6, r3
	movs r0, #0
	strh r0, [r1]
	movs r4, #0x9b
	lsls r4, r4, #1
	adds r1, r6, r4
	strh r0, [r1]
	ldr r1, _08005744 @ =gUnk_03000890
	movs r0, #9
	strh r0, [r1]
	movs r0, #0
	strh r0, [r1, #2]
	b _08005A00
	.align 2, 0
_08005740: .4byte gMultiSioArea
_08005744: .4byte gUnk_03000890
_08005748:
	b _08005748
_0800574A:
	movs r0, #0x97
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrh r2, [r1]
	adds r0, r2, #0
	cmp r4, r0
	bne _080057C8
	adds r0, r2, #1
	strh r0, [r1]
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r2, #0x9b
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, r1, r0
	cmp r0, #6
	ble _08005776
	movs r4, #6
	b _08005794
_08005776:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0x94
	lsls r3, r3, #1
	adds r1, r6, r3
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x12
	strb r0, [r1]
	cmp r4, #0
	bne _08005794
	b _08005A00
_08005794:
	ldr r3, _080057C0 @ =gUnk_03002B46
	adds r5, r3, #0
	adds r5, #0x12
	ldr r1, _080057C4 @ =gUnk_03002930
	ldr r2, [sp]
	lsls r0, r2, #4
	adds r0, r0, r1
	adds r2, r0, #4
_080057A4:
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	ldr r1, [r5]
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r2]
	strh r1, [r0]
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bne _080057A4
	b _08005A00
	.align 2, 0
_080057C0: .4byte gUnk_03002B46
_080057C4: .4byte gUnk_03002930
_080057C8:
	cmp r4, r0
	bhi _080057CE
	b _08005A00
_080057CE:
	ldr r1, _080057D8 @ =gUnk_03000890
	movs r0, #9
	strh r0, [r1]
	strh r2, [r1, #2]
	b _08005A00
	.align 2, 0
_080057D8: .4byte gUnk_03000890
_080057DC:
	ldr r0, _080057EC @ =gMultiSioArea
	movs r3, #0x94
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #3
	strh r1, [r0]
	b _08005A00
	.align 2, 0
_080057EC: .4byte gMultiSioArea
_080057F0:
	ldr r2, _08005824 @ =gMultiSioArea
	movs r4, #0x92
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #8
	beq _08005800
	b _08005A00
_08005800:
	movs r6, #0xa0
	lsls r6, r6, #1
	adds r0, r2, r6
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #5
	movs r1, #9
	orrs r0, r1
	ldr r1, _08005828 @ =gUnk_03000890
	strh r0, [r1]
	movs r3, #0x97
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #2]
	bl _08006002
	.align 2, 0
_08005824: .4byte gMultiSioArea
_08005828: .4byte gUnk_03000890
_0800582C:
	ldr r7, _080058F4 @ =gMultiSioArea
	movs r4, #0x92
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r5, #0
	movs r0, #0xe
	strb r0, [r1]
	movs r6, #0x97
	lsls r6, r6, #1
	adds r0, r7, r6
	strh r5, [r0]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, r1
	strh r5, [r0]
	movs r2, #0x9b
	lsls r2, r2, #1
	adds r0, r7, r2
	strh r5, [r0]
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r7, r3
	strh r5, [r0]
	ldr r4, _080058F8 @ =gUnk_03002930
	mov r8, r4
	ldr r6, [sp]
	lsls r4, r6, #4
	mov r0, r8
	adds r0, #2
	adds r0, r4, r0
	ldrh r0, [r0]
	adds r1, #0xe
	adds r1, r1, r7
	mov sl, r1
	strh r0, [r1]
	mov r0, r8
	adds r0, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	adds r2, #2
	adds r6, r7, r2
	strh r0, [r6]
	ldrh r0, [r6]
	adds r0, #5
	movs r1, #6
	bl __divsi3
	movs r3, #0x98
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1]
	mov r1, sl
	ldrh r0, [r1]
	adds r0, #5
	movs r1, #6
	bl __divsi3
	movs r2, #0x99
	lsls r2, r2, #1
	adds r1, r7, r2
	strh r0, [r1]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r2, r7, r3
	mov r0, r8
	adds r0, #6
	adds r0, r4, r0
	ldrh r1, [r0]
	mov r0, r8
	adds r0, #8
	adds r0, r4, r0
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [r2]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r2, r7, r0
	mov r0, r8
	adds r0, #0xa
	adds r0, r4, r0
	ldrh r0, [r0]
	mov r1, r8
	adds r1, #0xc
	adds r4, r4, r1
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080058FC @ =gUnk_03002C70
	strh r5, [r1]
	ldrh r1, [r6]
	bl sub_0800300C
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r7, r2
	strh r0, [r1]
	b _08005A00
	.align 2, 0
_080058F4: .4byte gMultiSioArea
_080058F8: .4byte gUnk_03002930
_080058FC: .4byte gUnk_03002C70
_08005900:
	ldr r1, _0800596C @ =gMultiSioArea
	movs r3, #0x92
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #0xe
	beq _0800591A
	cmp r0, #0xc
	beq _0800591A
	cmp r0, #0x14
	beq _0800591A
	b _08006002
_0800591A:
	movs r0, #0x97
	lsls r0, r0, #1
	adds r2, r6, r0
	ldrh r0, [r2]
	cmp r4, r0
	bne _080059D4
	movs r2, #0
	ldr r1, [sp]
	lsls r7, r1, #4
	ldr r0, _08005970 @ =gUnk_03002930
	adds r0, #4
	adds r3, r7, r0
	movs r4, #5
_08005934:
	ldrh r1, [r3]
	adds r0, r1, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsrs r1, r1, #8
	adds r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	adds r3, #2
	subs r4, #1
	cmp r4, #0
	bge _08005934
	cmp r2, r8
	bne _08005A00
	movs r2, #0x9d
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r1, [r0]
	movs r3, #0x9b
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r0, [r0]
	subs r0, r1, r0
	cmp r0, #6
	ble _08005974
	movs r4, #6
	b _08005990
	.align 2, 0
_0800596C: .4byte gMultiSioArea
_08005970: .4byte gUnk_03002930
_08005974:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #0x14
	bne _08005988
	movs r0, #0x13
	b _0800598A
_08005988:
	movs r0, #0x10
_0800598A:
	strb r0, [r1]
	cmp r4, #0
	beq _080059B6
_08005990:
	ldr r3, _080059C8 @ =gUnk_03002B46
	adds r5, r3, #0
	adds r5, #0x1a
	ldr r0, _080059CC @ =gUnk_03002930
	adds r0, r7, r0
	adds r2, r0, #4
_0800599C:
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	ldr r1, [r5]
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r2]
	strh r1, [r0]
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bne _0800599C
_080059B6:
	ldr r0, _080059D0 @ =gMultiSioArea
	movs r2, #0x97
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _08005A00
	.align 2, 0
_080059C8: .4byte gUnk_03002B46
_080059CC: .4byte gUnk_03002930
_080059D0: .4byte gMultiSioArea
_080059D4:
	cmp r4, r0
	bls _08005A00
	movs r3, #0x9b
	lsls r3, r3, #1
	adds r1, r6, r3
	movs r0, #0
	strh r0, [r1]
	strh r0, [r2]
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r0, r6, r4
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #5
	movs r1, #0xf
	orrs r0, r1
	ldr r6, _080059FC @ =gUnk_03000890
	strh r0, [r6]
	b _08006002
	.align 2, 0
_080059FC: .4byte gUnk_03000890
_08005A00:
	ldr r1, _08005A20 @ =gMultiSioArea
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r0, #1
	adds r6, r1, #0
	cmp r0, #0x17
	bls _08005A14
	b _08005FEC
_08005A14:
	lsls r0, r0, #2
	ldr r1, _08005A24 @ =_08005A28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005A20: .4byte gMultiSioArea
_08005A24: .4byte _08005A28
_08005A28: @ jump table
	.4byte _08005A9C @ case 0
	.4byte _08005AC8 @ case 1
	.4byte _08005C64 @ case 2
	.4byte _08005C94 @ case 3
	.4byte _08005CE8 @ case 4
	.4byte _08005FEC @ case 5
	.4byte _08005FEC @ case 6
	.4byte _08005D98 @ case 7
	.4byte _08005FEC @ case 8
	.4byte _08005CB4 @ case 9
	.4byte _08005FEC @ case 10
	.4byte _08005DB0 @ case 11
	.4byte _08005FEC @ case 12
	.4byte _08005E14 @ case 13
	.4byte _08005F4C @ case 14
	.4byte _08005E14 @ case 15
	.4byte _08005AEC @ case 16
	.4byte _08005AD4 @ case 17
	.4byte _08005B80 @ case 18
	.4byte _08005BB4 @ case 19
	.4byte _08005B54 @ case 20
	.4byte _08005C32 @ case 21
	.4byte _08005A88 @ case 22
	.4byte _08005AA8 @ case 23
_08005A88:
	ldr r2, _08005A98 @ =gUnk_03000890
	movs r0, #2
	strh r0, [r2]
	movs r3, #0x92
	lsls r3, r3, #1
	adds r1, r6, r3
	b _08005CDA
	.align 2, 0
_08005A98: .4byte gUnk_03000890
_08005A9C:
	ldr r1, _08005AA4 @ =gUnk_03000890
	movs r0, #1
	strh r0, [r1]
	b _08005FEC
	.align 2, 0
_08005AA4: .4byte gUnk_03000890
_08005AA8:
	movs r4, #0x94
	lsls r4, r4, #1
	adds r2, r6, r4
	ldrh r4, [r2]
	cmp r4, #0
	beq _08005AC0
	ldr r0, _08005ABC @ =gUnk_03000890
	movs r1, #2
	b _08005B72
	.align 2, 0
_08005ABC: .4byte gUnk_03000890
_08005AC0:
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r6, r0
	b _08005CDA
_08005AC8:
	ldr r1, _08005AD0 @ =gUnk_03000890
	movs r0, #2
	strh r0, [r1]
	b _08005FEC
	.align 2, 0
_08005AD0: .4byte gUnk_03000890
_08005AD4:
	movs r1, #0x94
	lsls r1, r1, #1
	adds r2, r6, r1
	ldrh r4, [r2]
	cmp r4, #0
	bne _08005AE2
	b _08005CD4
_08005AE2:
	ldr r0, _08005AE8 @ =gUnk_03000890
	movs r1, #0x12
	b _08005B72
	.align 2, 0
_08005AE8: .4byte gUnk_03000890
_08005AEC:
	mov r3, sb
	cmp r3, #0x12
	beq _08005AF6
	cmp r3, #1
	bne _08005B0C
_08005AF6:
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r6, r4
	movs r0, #3
	strh r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x15
	strb r0, [r1]
	b _08005FEC
_08005B0C:
	mov r1, sb
	cmp r1, #9
	bne _08005B48
	ldr r0, _08005B44 @ =gUnk_03002930
	ldr r2, [sp]
	lsls r1, r2, #4
	adds r0, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r6, r3
	strh r1, [r0]
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r1, r6, r4
	strh r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #5
	strb r0, [r1]
	b _08005FEC
	.align 2, 0
_08005B44: .4byte gUnk_03002930
_08005B48:
	ldr r1, _08005B50 @ =gUnk_03000890
	movs r0, #0x11
	strh r0, [r1]
	b _08005FEC
	.align 2, 0
_08005B50: .4byte gUnk_03000890
_08005B54:
	movs r1, #0x94
	lsls r1, r1, #1
	adds r2, r6, r1
	ldrh r4, [r2]
	cmp r4, #0
	beq _08005B66
	mov r3, sb
	cmp r3, #1
	bne _08005B6E
_08005B66:
	movs r4, #0x92
	lsls r4, r4, #1
	adds r1, r6, r4
	b _08005CDA
_08005B6E:
	ldr r0, _08005B7C @ =gUnk_03000890
	movs r1, #0x11
_08005B72:
	strh r1, [r0]
	subs r1, r4, #1
	strh r1, [r2]
	b _08005FEC
	.align 2, 0
_08005B7C: .4byte gUnk_03000890
_08005B80:
	mov r0, sb
	cmp r0, #1
	bne _08005B92
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	b _08005FEC
_08005B92:
	mov r3, sb
	cmp r3, #0x14
	bne _08005BA8
	ldr r2, _08005BA4 @ =gUnk_03000890
	strh r3, [r2]
	movs r4, #0x92
	lsls r4, r4, #1
	adds r1, r6, r4
	b _08005BE0
	.align 2, 0
_08005BA4: .4byte gUnk_03000890
_08005BA8:
	ldr r1, _08005BB0 @ =gUnk_03000890
	movs r0, #0x14
	strh r0, [r1]
	b _08005FEC
	.align 2, 0
_08005BB0: .4byte gUnk_03000890
_08005BB4:
	ldr r0, _08005BE8 @ =gUnk_03000890
	movs r1, #0x14
	strh r1, [r0]
	movs r2, #0x9d
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r3, #0x9b
	lsls r3, r3, #1
	adds r4, r6, r3
	ldrh r1, [r1]
	ldrh r0, [r4]
	cmp r1, r0
	bne _08005BEC
	mov r1, sb
	cmp r1, #0x14
	beq _08005BDA
	cmp r1, #1
	beq _08005BDA
	b _08005FEC
_08005BDA:
	movs r2, #0x92
	lsls r2, r2, #1
	adds r1, r6, r2
_08005BE0:
	movs r0, #0x17
	strb r0, [r1]
	b _08005FEC
	.align 2, 0
_08005BE8: .4byte gUnk_03000890
_08005BEC:
	movs r3, #0x94
	lsls r3, r3, #1
	adds r2, r6, r3
	ldrh r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	bne _08005C2C
	adds r3, #6
	adds r0, r6, r3
	strh r1, [r0]
	strh r1, [r4]
	movs r4, #0x99
	lsls r4, r4, #1
	adds r0, r6, r4
	ldrh r0, [r0]
	lsls r0, r0, #1
	strh r0, [r2]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #5
	movs r1, #0xf
	orrs r0, r1
	ldr r2, _08005C28 @ =gUnk_03000890
	strh r0, [r2]
	b _08006002
	.align 2, 0
_08005C28: .4byte gUnk_03000890
_08005C2C:
	subs r0, #1
	strh r0, [r2]
	b _08005FEC
_08005C32:
	ldr r1, _08005C5C @ =gUnk_03000890
	movs r2, #0
	movs r0, #0x16
	strh r0, [r1]
	strh r2, [r1, #2]
	ldr r0, _08005C60 @ =gUnk_03002C80
	adds r2, r0, #2
	adds r1, #4
	movs r4, #5
_08005C44:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r4, #1
	cmp r4, #0
	bge _08005C44
	movs r3, #0x92
	lsls r3, r3, #1
	adds r1, r6, r3
	b _08005CDA
	.align 2, 0
_08005C5C: .4byte gUnk_03000890
_08005C60: .4byte gUnk_03002C80
_08005C64:
	ldr r1, _08005C8C @ =gUnk_03000890
	movs r0, #3
	strh r0, [r1]
	ldr r2, _08005C90 @ =gUnk_03002C80
	ldrh r0, [r2]
	strh r0, [r1, #2]
	adds r2, #2
	adds r1, #4
	movs r4, #5
_08005C76:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r4, #1
	cmp r4, #0
	bge _08005C76
	movs r4, #0x92
	lsls r4, r4, #1
	adds r1, r6, r4
	b _08005CDA
	.align 2, 0
_08005C8C: .4byte gUnk_03000890
_08005C90: .4byte gUnk_03002C80
_08005C94:
	ldr r2, _08005CAC @ =gUnk_03000890
	movs r1, #0
	movs r0, #4
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r0, _08005CB0 @ =gUnk_03002C80
	ldrh r0, [r0, #2]
	strh r0, [r2, #4]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r6, r0
	b _08005CDA
	.align 2, 0
_08005CAC: .4byte gUnk_03000890
_08005CB0: .4byte gUnk_03002C80
_08005CB4:
	ldr r1, _08005CE0 @ =gUnk_03000890
	movs r0, #0xa
	strh r0, [r1]
	ldr r2, _08005CE4 @ =gUnk_03002C80
	ldrh r0, [r2]
	strh r0, [r1, #2]
	adds r2, #2
	adds r1, #4
	movs r4, #5
_08005CC6:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r4, #1
	cmp r4, #0
	bge _08005CC6
_08005CD4:
	movs r2, #0x92
	lsls r2, r2, #1
	adds r1, r6, r2
_08005CDA:
	movs r0, #1
	strb r0, [r1]
	b _08005FEC
	.align 2, 0
_08005CE0: .4byte gUnk_03000890
_08005CE4: .4byte gUnk_03002C80
_08005CE8:
	mov r3, sb
	cmp r3, #7
	bne _08005D64
	ldr r3, _08005D1C @ =gUnk_03000890
	movs r0, #6
	strh r0, [r3]
	movs r4, #0x96
	lsls r4, r4, #1
	adds r1, r6, r4
	ldrh r2, [r1]
	adds r0, r2, #1
	strh r0, [r1]
	strh r2, [r3, #2]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, r1, r0
	cmp r0, #6
	ble _08005D20
	movs r4, #6
	b _08005D34
	.align 2, 0
_08005D1C: .4byte gUnk_03000890
_08005D20:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0x92
	lsls r3, r3, #1
	adds r1, r6, r3
	movs r0, #0x11
	strb r0, [r1]
	cmp r4, #0
	bne _08005D34
	b _08005FEC
_08005D34:
	ldr r0, _08005D5C @ =gUnk_03000890
	ldr r5, _08005D60 @ =gUnk_03002B44
	adds r7, r5, #0
	adds r7, #0x10
	adds r2, r0, #4
_08005D3E:
	ldrh r0, [r5]
	adds r1, r0, #1
	strh r1, [r5]
	lsls r0, r0, #0x10
	ldr r1, [r7]
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bne _08005D3E
	b _08005FEC
	.align 2, 0
_08005D5C: .4byte gUnk_03000890
_08005D60: .4byte gUnk_03002B44
_08005D64:
	movs r4, #0x96
	lsls r4, r4, #1
	adds r0, r6, r4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005D72
	b _08005FEC
_08005D72:
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrh r0, [r1, #2]
	ldr r2, _08005D94 @ =gUnk_03000890
	strh r0, [r2, #6]
	ldr r0, [r1]
	strh r0, [r2, #4]
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r0, [r0]
	strh r0, [r2, #2]
	movs r0, #5
	strh r0, [r2]
	b _08005FEC
	.align 2, 0
_08005D94: .4byte gUnk_03000890
_08005D98:
	ldr r0, _08005DAC @ =gUnk_03000890
	movs r4, #0x97
	lsls r4, r4, #1
	adds r1, r6, r4
	ldrh r1, [r1]
	strh r1, [r0, #2]
	movs r1, #7
	strh r1, [r0]
	b _08005FEC
	.align 2, 0
_08005DAC: .4byte gUnk_03000890
_08005DB0:
	ldr r1, _08005E0C @ =gUnk_03002C70
	movs r0, #0
	strh r0, [r1]
	mov r0, sb
	subs r0, #0xd
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08005E14
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08005DD0
	b _08005FEC
_08005DD0:
	movs r0, #0xc
	ldr r2, _08005E10 @ =gUnk_03000890
	strh r0, [r2]
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r0, [r0]
	strh r0, [r2, #2]
	movs r4, #0x9d
	lsls r4, r4, #1
	adds r0, r6, r4
	ldrh r0, [r0]
	strh r0, [r2, #4]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r1]
	strh r0, [r2, #6]
	ldrh r0, [r1, #2]
	strh r0, [r2, #8]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r6, r2
	ldr r0, [r1]
	ldr r3, _08005E10 @ =gUnk_03000890
	strh r0, [r3, #0xa]
	ldrh r0, [r1, #2]
	strh r0, [r3, #0xc]
	b _08005FEC
	.align 2, 0
_08005E0C: .4byte gUnk_03002C70
_08005E10: .4byte gUnk_03000890
_08005E14:
	mov r4, sb
	cmp r4, #0xe
	beq _08005E26
	cmp r4, #0x14
	beq _08005E26
	cmp r4, #0xc
	beq _08005E26
	cmp r4, #0xd
	bne _08005EE4
_08005E26:
	ldr r1, _08005E58 @ =gUnk_03002C70
	movs r0, #0
	strh r0, [r1]
	ldr r3, _08005E5C @ =gUnk_03000890
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrh r2, [r1]
	adds r0, r2, #1
	strh r0, [r1]
	strh r2, [r3, #2]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, r1, r0
	cmp r0, #6
	ble _08005E60
	movs r4, #6
	b _08005E8C
	.align 2, 0
_08005E58: .4byte gUnk_03002C70
_08005E5C: .4byte gUnk_03000890
_08005E60:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0x99
	lsls r3, r3, #1
	adds r1, r6, r3
	movs r2, #0x97
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #2
	ldrh r1, [r1]
	subs r1, r1, r0
	subs r3, #0xa
	adds r0, r6, r3
	strh r1, [r0]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x14
	strb r0, [r1]
	cmp r4, #0
	beq _08005EB0
_08005E8C:
	ldr r0, _08005EDC @ =gUnk_03000890
	ldr r5, _08005EE0 @ =gUnk_03002B44
	adds r7, r5, #0
	adds r7, #0x10
	adds r2, r0, #4
_08005E96:
	ldrh r0, [r5]
	adds r1, r0, #1
	strh r1, [r5]
	lsls r0, r0, #0x10
	ldr r1, [r7]
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bne _08005E96
_08005EB0:
	movs r2, #0
	ldr r0, _08005EDC @ =gUnk_03000890
	adds r5, r0, #4
	movs r4, #5
_08005EB8:
	ldrh r1, [r5]
	adds r0, r1, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsrs r1, r1, #8
	adds r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	adds r5, #2
	subs r4, #1
	cmp r4, #0
	bge _08005EB8
	lsls r0, r2, #8
	movs r1, #0xe
	orrs r0, r1
	ldr r1, _08005EDC @ =gUnk_03000890
	strh r0, [r1]
	b _08005FEC
	.align 2, 0
_08005EDC: .4byte gUnk_03000890
_08005EE0: .4byte gUnk_03002B44
_08005EE4:
	ldr r2, _08005F34 @ =gUnk_03002C70
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _08005F40
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08005F38 @ =gUnk_03002C90
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r2, #0x97
	lsls r2, r2, #1
	adds r0, r6, r2
	movs r1, #0
	strh r1, [r0]
	movs r3, #0x9b
	lsls r3, r3, #1
	adds r0, r6, r3
	strh r1, [r0]
	movs r4, #0x94
	lsls r4, r4, #1
	adds r0, r6, r4
	strh r1, [r0]
	ldr r2, _08005F3C @ =gUnk_03000890
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #5
	movs r1, #0xf
	orrs r0, r1
	strh r0, [r2]
	b _08006002
	.align 2, 0
_08005F34: .4byte gUnk_03002C70
_08005F38: .4byte gUnk_03002C90
_08005F3C: .4byte gUnk_03000890
_08005F40:
	ldr r1, _08005F48 @ =gUnk_03000890
	movs r0, #0xd
	strh r0, [r1]
	b _08005FEC
	.align 2, 0
_08005F48: .4byte gUnk_03000890
_08005F4C:
	ldr r1, _08005F7C @ =gUnk_03002C70
	movs r0, #0
	strh r0, [r1]
	ldr r3, _08005F80 @ =gUnk_03000890
	movs r2, #0x96
	lsls r2, r2, #1
	adds r1, r6, r2
	ldrh r2, [r1]
	adds r0, r2, #1
	strh r0, [r1]
	strh r2, [r3, #2]
	movs r4, #0x9c
	lsls r4, r4, #1
	adds r0, r6, r4
	ldrh r1, [r0]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, r1, r0
	cmp r0, #6
	ble _08005F84
	movs r4, #6
	b _08005F96
	.align 2, 0
_08005F7C: .4byte gUnk_03002C70
_08005F80: .4byte gUnk_03000890
_08005F84:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0x92
	lsls r3, r3, #1
	adds r1, r6, r3
	movs r0, #0x14
	strb r0, [r1]
	cmp r4, #0
	beq _08005FBA
_08005F96:
	ldr r0, _08006014 @ =gUnk_03000890
	ldr r5, _08006018 @ =gUnk_03002B44
	adds r7, r5, #0
	adds r7, #0x10
	adds r2, r0, #4
_08005FA0:
	ldrh r0, [r5]
	adds r1, r0, #1
	strh r1, [r5]
	lsls r0, r0, #0x10
	ldr r1, [r7]
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bne _08005FA0
_08005FBA:
	movs r2, #0
	ldr r0, _08006014 @ =gUnk_03000890
	adds r5, r0, #4
	movs r4, #5
_08005FC2:
	ldrh r1, [r5]
	adds r0, r1, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsrs r1, r1, #8
	adds r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	adds r5, #2
	subs r4, #1
	cmp r4, #0
	bge _08005FC2
	lsls r0, r2, #8
	movs r1, #0xe
	orrs r0, r1
	ldr r4, _08006014 @ =gUnk_03000890
	strh r0, [r4]
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r1, [r0]
_08005FEC:
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #5
	ldr r4, _08006014 @ =gUnk_03000890
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_08006002:
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08006014: .4byte gUnk_03000890
_08006018: .4byte gUnk_03002B44
