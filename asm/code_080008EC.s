	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080008EC
sub_080008EC: @ 0x080008EC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800091C @ =gUnk_03002CEC
	ldr r4, [r0]
	cmp r4, #0
	beq _080009CC
_080008F6:
	ldr r0, _08000920 @ =gUnk_03000E60
	ldrh r1, [r0]
	cmp r1, #1
	bne _08000906
	ldrb r0, [r4, #1]
	ands r1, r0
	cmp r1, #0
	bne _080009C6
_08000906:
	ldrb r1, [r4, #1]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08000916
	ldr r1, _08000924 @ =gUnk_03002CE8
	ldr r0, [r4, #4]
	str r0, [r1]
_08000916:
	ldr r7, _08000928 @ =gUnk_03002CE0
	b _08000980
	.align 2, 0
_0800091C: .4byte gUnk_03002CEC
_08000920: .4byte gUnk_03000E60
_08000924: .4byte gUnk_03002CE8
_08000928: .4byte gUnk_03002CE0
_0800092C:
	ldr r1, _08000994 @ =gUnk_085F5A0C
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r1, [r4, #1]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	ldr r1, _08000998 @ =gUnk_03002CE8
	cmp r0, #0
	bne _08000944
	adds r1, r5, #0
_08000944:
	str r1, [r2]
	ldr r0, [r4, #8]
	str r0, [r2, #4]
	ldr r0, [r4, #0xc]
	str r0, [r2, #8]
	adds r0, r3, #0
	bl sub_08003FF8
	ldrb r0, [r4]
	cmp r0, #1
	bne _080009BE
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080009BE
	ldrb r1, [r4, #1]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08000978
	ldrh r1, [r4, #0x12]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_08000978:
	ldrh r1, [r4, #0x14]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
_08000980:
	ldr r0, [r4, #4]
	ldr r1, _0800099C @ =0x07FFFFFF
	adds r5, r0, #0
	cmp r5, r1
	bhi _08000990
	ldr r0, [r4, #8]
	cmp r0, r1
	bls _080009A0
_08000990:
	movs r3, #3
	b _080009A2
	.align 2, 0
_08000994: .4byte gUnk_085F5A0C
_08000998: .4byte gUnk_03002CE8
_0800099C: .4byte 0x07FFFFFF
_080009A0:
	movs r3, #0
_080009A2:
	cmp r3, #3
	bgt _080009BE
	lsls r0, r3, #1
	adds r1, r0, r7
	b _080009B4
_080009AC:
	adds r1, #2
	adds r3, #1
	cmp r3, #3
	bgt _080009BE
_080009B4:
	ldrh r0, [r1]
	cmp r0, #0
	bne _080009AC
	cmp r3, #3
	ble _0800092C
_080009BE:
	ldrb r1, [r4, #1]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #1]
_080009C6:
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _080008F6
_080009CC:
	ldr r0, _080009F0 @ =gUnk_03002CEC
	ldr r4, [r0]
	movs r2, #0
	str r2, [r0]
	cmp r4, #0
	beq _080009FE
	movs r5, #0x80
	adds r3, r0, #0
_080009DC:
	ldrb r1, [r4, #1]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080009F8
	cmp r2, #0
	bne _080009F4
	adds r2, r4, #0
	str r4, [r3]
	b _080009F8
	.align 2, 0
_080009F0: .4byte gUnk_03002CEC
_080009F4:
	str r4, [r2, #0x18]
	adds r2, r4, #0
_080009F8:
	ldr r4, [r4, #0x18]
	cmp r4, #0
	bne _080009DC
_080009FE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08000A04
sub_08000A04: @ 0x08000A04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _08000A48 @ =gUnk_03002CE0
	mov ip, r0
	ldr r1, _08000A4C @ =gUnk_03002D30
	mov r8, r1
	movs r6, #0
	ldr r4, _08000A50 @ =gUnk_03002CF0
_08000A18:
	lsls r0, r5, #1
	add r0, ip
	ldrh r2, [r0]
	cmp r2, #0
	bne _08000A80
	ldr r0, _08000A54 @ =gUnk_03000E60
	ldrh r0, [r0]
	lsls r3, r5, #4
	cmp r0, #1
	bne _08000A36
	ldrb r1, [r4, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08000A80
_08000A36:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08000A64
	cmp r0, #1
	bgt _08000A58
	cmp r0, #0
	beq _08000A5E
	b _08000A80
	.align 2, 0
_08000A48: .4byte gUnk_03002CE0
_08000A4C: .4byte gUnk_03002D30
_08000A50: .4byte gUnk_03002CF0
_08000A54: .4byte gUnk_03000E60
_08000A58:
	cmp r0, #2
	beq _08000A78
	b _08000A80
_08000A5E:
	mov r3, r8
	adds r0, r6, r3
	b _08000A7E
_08000A64:
	movs r0, #3
	strb r0, [r4, #0xc]
	mov r7, r8
	adds r1, r3, r7
	adds r0, r4, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	b _08000A80
_08000A78:
	strb r2, [r4, #0xc]
	mov r1, r8
	adds r0, r6, r1
_08000A7E:
	strb r2, [r0, #0xc]
_08000A80:
	adds r6, #0x10
	adds r4, #0x10
	adds r5, #1
	cmp r5, #3
	ble _08000A18
	movs r5, #0
	ldr r6, _08000AC4 @ =gUnk_085F5A0C
	ldr r4, _08000AC8 @ =gUnk_03002CE0
	ldr r3, _08000ACC @ =gUnk_03002D30
_08000A92:
	ldrh r2, [r4]
	cmp r2, #0
	bne _08000AAE
	ldrb r0, [r3, #0xc]
	cmp r0, #3
	bne _08000AAE
	ldr r1, [r6]
	str r2, [r1, #8]
	ldr r0, [r3]
	str r0, [r1]
	ldr r0, [r3, #4]
	str r0, [r1, #4]
	ldr r0, [r3, #8]
	str r0, [r1, #8]
_08000AAE:
	adds r6, #4
	adds r4, #2
	adds r3, #0x10
	adds r5, #1
	cmp r5, #3
	ble _08000A92
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000AC4: .4byte gUnk_085F5A0C
_08000AC8: .4byte gUnk_03002CE0
_08000ACC: .4byte gUnk_03002D30

	thumb_func_start sub_08000AD0
sub_08000AD0: @ 0x08000AD0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	mov ip, r2
	ldr r0, _08000B0C @ =0x07FFFFFF
	movs r4, #3
	cmp r7, r0
	bhi _08000AE8
	movs r4, #0
	cmp r6, r0
	bls _08000AE8
	movs r4, #1
_08000AE8:
	cmp r4, #3
	bgt _08000B22
	ldr r2, _08000B10 @ =gUnk_03002CE0
	ldr r1, _08000B14 @ =gUnk_03002CF0
	lsls r0, r4, #4
	adds r3, r0, r1
	lsls r0, r4, #1
	adds r1, r0, r2
_08000AF8:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08000B18
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _08000B08
	cmp r0, #2
	bne _08000B18
_08000B08:
	adds r5, r4, #0
	b _08000B26
	.align 2, 0
_08000B0C: .4byte 0x07FFFFFF
_08000B10: .4byte gUnk_03002CE0
_08000B14: .4byte gUnk_03002CF0
_08000B18:
	adds r3, #0x10
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	ble _08000AF8
_08000B22:
	movs r5, #1
	rsbs r5, r5, #0
_08000B26:
	cmp r5, #0
	blt _08000B5A
	ldr r0, _08000B64 @ =gUnk_03002CE0
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _08000B5A
	movs r3, #0xa2
	lsls r3, r3, #0x18
	mov r0, ip
	orrs r3, r0
	ldr r1, _08000B68 @ =gUnk_03002CF0
	lsls r2, r5, #4
	adds r4, r2, r1
	str r6, [r4]
	adds r0, r1, #4
	adds r0, r2, r0
	str r7, [r0]
	adds r1, #8
	adds r2, r2, r1
	str r3, [r2]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strb r0, [r4, #0xd]
_08000B5A:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08000B64: .4byte gUnk_03002CE0
_08000B68: .4byte gUnk_03002CF0

	thumb_func_start sub_08000B6C
sub_08000B6C: @ 0x08000B6C
	push {r4, r5, lr}
	movs r1, #0
	ldr r3, _08000BA4 @ =gUnk_03002CE0
	ldr r4, _08000BA8 @ =gUnk_03002CEC
	ldr r5, _08000BAC @ =gUnk_03002CF0
	movs r2, #0
	adds r0, r3, #0
_08000B7A:
	strh r2, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #3
	bls _08000B7A
	movs r0, #0
	movs r1, #1
	strh r1, [r3, #2]
	str r0, [r4]
	adds r0, r5, #0
	movs r1, #0x40
	bl memzero
	ldr r0, _08000BB0 @ =gUnk_03002D30
	movs r1, #0x40
	bl memzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000BA4: .4byte gUnk_03002CE0
_08000BA8: .4byte gUnk_03002CEC
_08000BAC: .4byte gUnk_03002CF0
_08000BB0: .4byte gUnk_03002D30

	thumb_func_start sub_08000BB4
sub_08000BB4: @ 0x08000BB4
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	strb r4, [r5]
	movs r0, #1
	strb r0, [r5, #1]
	str r1, [r5, #4]
	str r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r5, #0xc]
	str r4, [r5, #0x18]
	ldr r1, _08000BE0 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000BE4
	str r5, [r1]
	b _08000BF4
	.align 2, 0
_08000BE0: .4byte gUnk_03002CEC
_08000BE4:
	adds r1, r0, #0
	cmp r1, r5
	bne _08000BEC
_08000BEA:
	b _08000BEA
_08000BEC:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000BE4
	str r5, [r1, #0x18]
_08000BF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000BFC
sub_08000BFC: @ 0x08000BFC
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	strb r4, [r5]
	movs r0, #1
	strb r0, [r5, #1]
	str r1, [r5, #4]
	str r2, [r5, #8]
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r5, #0xc]
	str r4, [r5, #0x18]
	ldr r1, _08000C28 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000C2C
	str r5, [r1]
	b _08000C3C
	.align 2, 0
_08000C28: .4byte gUnk_03002CEC
_08000C2C:
	adds r1, r0, #0
	cmp r1, r5
	bne _08000C34
_08000C32:
	b _08000C32
_08000C34:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000C2C
	str r5, [r1, #0x18]
_08000C3C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000C44
sub_08000C44: @ 0x08000C44
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	strb r4, [r5]
	movs r0, #3
	strb r0, [r5, #1]
	lsls r1, r1, #0x10
	str r1, [r5, #4]
	str r2, [r5, #8]
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r5, #0xc]
	str r4, [r5, #0x18]
	ldr r1, _08000C70 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000C74
	str r5, [r1]
	b _08000C84
	.align 2, 0
_08000C70: .4byte gUnk_03002CEC
_08000C74:
	adds r1, r0, #0
	cmp r1, r5
	bne _08000C7C
_08000C7A:
	b _08000C7A
_08000C7C:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000C74
	str r5, [r1, #0x18]
_08000C84:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000C8C
sub_08000C8C: @ 0x08000C8C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	strb r4, [r5]
	movs r0, #3
	strb r0, [r5, #1]
	str r1, [r5, #4]
	str r2, [r5, #8]
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r5, #0xc]
	str r4, [r5, #0x18]
	ldr r1, _08000CB8 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000CBC
	str r5, [r1]
	b _08000CCC
	.align 2, 0
_08000CB8: .4byte gUnk_03002CEC
_08000CBC:
	adds r1, r0, #0
	cmp r1, r5
	bne _08000CC4
_08000CC2:
	b _08000CC2
_08000CC4:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000CBC
	str r5, [r1, #0x18]
_08000CCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000CD4
sub_08000CD4: @ 0x08000CD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r5, [sp, #0x18]
	ldr r6, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r8, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	movs r0, #1
	strb r0, [r7]
	strb r0, [r7, #1]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r7, #0xc]
	strh r5, [r7, #0x10]
	strh r6, [r7, #0x12]
	mov r0, r8
	strh r0, [r7, #0x14]
	str r4, [r7, #0x18]
	ldr r1, _08000D14 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000D18
	str r7, [r1]
	b _08000D28
	.align 2, 0
_08000D14: .4byte gUnk_03002CEC
_08000D18:
	adds r1, r0, #0
	cmp r1, r7
	bne _08000D20
_08000D1E:
	b _08000D1E
_08000D20:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000D18
	str r7, [r1, #0x18]
_08000D28:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000D34
sub_08000D34: @ 0x08000D34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r5, [sp, #0x18]
	ldr r6, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r8, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	movs r0, #1
	strb r0, [r7]
	strb r0, [r7, #1]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r7, #0xc]
	strh r5, [r7, #0x10]
	strh r6, [r7, #0x12]
	mov r0, r8
	strh r0, [r7, #0x14]
	str r4, [r7, #0x18]
	ldr r1, _08000D74 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000D78
	str r7, [r1]
	b _08000D88
	.align 2, 0
_08000D74: .4byte gUnk_03002CEC
_08000D78:
	adds r1, r0, #0
	cmp r1, r7
	bne _08000D80
_08000D7E:
	b _08000D7E
_08000D80:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000D78
	str r7, [r1, #0x18]
_08000D88:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000D94
sub_08000D94: @ 0x08000D94
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, [sp, #0x14]
	ldr r6, [sp, #0x18]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	movs r0, #1
	strb r0, [r7]
	movs r0, #3
	strb r0, [r7, #1]
	lsls r1, r1, #0x10
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r7, #0xc]
	strh r5, [r7, #0x10]
	strh r4, [r7, #0x12]
	strh r6, [r7, #0x14]
	str r4, [r7, #0x18]
	ldr r1, _08000DCC @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000DD0
	str r7, [r1]
	b _08000DE0
	.align 2, 0
_08000DCC: .4byte gUnk_03002CEC
_08000DD0:
	adds r1, r0, #0
	cmp r1, r7
	bne _08000DD8
_08000DD6:
	b _08000DD6
_08000DD8:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000DD0
	str r7, [r1, #0x18]
_08000DE0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000DE8
sub_08000DE8: @ 0x08000DE8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, [sp, #0x14]
	ldr r6, [sp, #0x18]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	movs r0, #1
	strb r0, [r7]
	movs r0, #3
	strb r0, [r7, #1]
	str r1, [r7, #4]
	str r2, [r7, #8]
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r7, #0xc]
	strh r5, [r7, #0x10]
	strh r4, [r7, #0x12]
	strh r6, [r7, #0x14]
	str r4, [r7, #0x18]
	ldr r1, _08000E20 @ =gUnk_03002CEC
	ldr r0, [r1]
	cmp r0, #0
	bne _08000E24
	str r7, [r1]
	b _08000E34
	.align 2, 0
_08000E20: .4byte gUnk_03002CEC
_08000E24:
	adds r1, r0, #0
	cmp r1, r7
	bne _08000E2C
_08000E2A:
	b _08000E2A
_08000E2C:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _08000E24
	str r7, [r1, #0x18]
_08000E34:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000E3C
sub_08000E3C: @ 0x08000E3C
	push {r4, r5, r6, r7, lr}
	ldr r7, _08000E70 @ =gUnk_03002D30
	movs r4, #0
	ldr r6, _08000E74 @ =gUnk_03002CE0
	ldr r5, _08000E78 @ =gUnk_085F5A0C
_08000E46:
	ldrh r1, [r6]
	cmp r1, #0
	bne _08000E5C
	ldrb r0, [r7, #0xc]
	cmp r0, #3
	bne _08000E5C
	ldr r0, [r5]
	str r1, [r0, #8]
	adds r0, r4, #0
	bl sub_08003FF8
_08000E5C:
	adds r6, #2
	adds r5, #4
	adds r4, #1
	adds r7, #0x10
	cmp r4, #3
	ble _08000E46
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000E70: .4byte gUnk_03002D30
_08000E74: .4byte gUnk_03002CE0
_08000E78: .4byte gUnk_085F5A0C

	thumb_func_start sub_08000E7C
sub_08000E7C: @ 0x08000E7C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r2, r3, #0
	ldr r0, _08000EBC @ =gUnk_03002CE0
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _08000EB4
	movs r3, #0xa2
	lsls r3, r3, #0x18
	orrs r3, r2
	ldr r1, _08000EC0 @ =gUnk_03002CF0
	lsls r2, r4, #4
	adds r4, r2, r1
	str r5, [r4]
	adds r0, r1, #4
	adds r0, r2, r0
	str r6, [r0]
	adds r1, #8
	adds r2, r2, r1
	str r3, [r2]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strb r0, [r4, #0xd]
_08000EB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000EBC: .4byte gUnk_03002CE0
_08000EC0: .4byte gUnk_03002CF0

	thumb_func_start sub_08000EC4
sub_08000EC4: @ 0x08000EC4
	ldr r1, _08000EE4 @ =gUnk_03002D30
	lsls r2, r0, #4
	adds r1, r2, r1
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _08000EE0
	ldr r1, _08000EE8 @ =gUnk_03002CF0
	adds r1, r2, r1
	movs r0, #2
	strb r0, [r1, #0xc]
	ldrb r2, [r1, #0xd]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0xd]
_08000EE0:
	bx lr
	.align 2, 0
_08000EE4: .4byte gUnk_03002D30
_08000EE8: .4byte gUnk_03002CF0

	thumb_func_start sub_08000EEC
sub_08000EEC: @ 0x08000EEC
	push {r4, r5, r6, lr}
	sub sp, #4
	str r0, [sp]
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, _08000F2C @ =0x07FFFFFF
	movs r4, #3
	cmp r5, r0
	bhi _08000F08
	movs r4, #0
	cmp sp, r0
	bls _08000F08
	movs r4, #1
_08000F08:
	cmp r4, #3
	bgt _08000F42
	ldr r2, _08000F30 @ =gUnk_03002CE0
	ldr r1, _08000F34 @ =gUnk_03002CF0
	lsls r0, r4, #4
	adds r3, r0, r1
	lsls r0, r4, #1
	adds r1, r0, r2
_08000F18:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08000F38
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _08000F28
	cmp r0, #2
	bne _08000F38
_08000F28:
	adds r3, r4, #0
	b _08000F46
	.align 2, 0
_08000F2C: .4byte 0x07FFFFFF
_08000F30: .4byte gUnk_03002CE0
_08000F34: .4byte gUnk_03002CF0
_08000F38:
	adds r3, #0x10
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	ble _08000F18
_08000F42:
	movs r3, #1
	rsbs r3, r3, #0
_08000F46:
	cmp r3, #0
	blt _08000F60
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r1, r6
	ldr r2, _08000F6C @ =gUnk_085F5A0C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r2, sp
	str r2, [r0]
	str r5, [r0, #4]
	str r1, [r0, #8]
_08000F60:
	adds r0, r3, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08000F6C: .4byte gUnk_085F5A0C

	thumb_func_start sub_08000F70
sub_08000F70: @ 0x08000F70
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	mov r1, sp
	strh r0, [r1]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, _08000FB4 @ =0x07FFFFFF
	movs r4, #3
	cmp r5, r0
	bhi _08000F8E
	movs r4, #0
	cmp sp, r0
	bls _08000F8E
	movs r4, #1
_08000F8E:
	cmp r4, #3
	bgt _08000FCA
	ldr r2, _08000FB8 @ =gUnk_03002CE0
	ldr r1, _08000FBC @ =gUnk_03002CF0
	lsls r0, r4, #4
	adds r3, r0, r1
	lsls r0, r4, #1
	adds r1, r0, r2
_08000F9E:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08000FC0
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _08000FAE
	cmp r0, #2
	bne _08000FC0
_08000FAE:
	adds r3, r4, #0
	b _08000FCE
	.align 2, 0
_08000FB4: .4byte 0x07FFFFFF
_08000FB8: .4byte gUnk_03002CE0
_08000FBC: .4byte gUnk_03002CF0
_08000FC0:
	adds r3, #0x10
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	ble _08000F9E
_08000FCA:
	movs r3, #1
	rsbs r3, r3, #0
_08000FCE:
	cmp r3, #0
	blt _08000FE8
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r1, r6
	ldr r2, _08000FF4 @ =gUnk_085F5A0C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r2, sp
	str r2, [r0]
	str r5, [r0, #4]
	str r1, [r0, #8]
_08000FE8:
	adds r0, r3, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08000FF4: .4byte gUnk_085F5A0C

	thumb_func_start sub_08000FF8
sub_08000FF8: @ 0x08000FF8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _08001038 @ =0x07FFFFFF
	movs r4, #3
	cmp r6, r0
	bhi _08001012
	movs r4, #0
	cmp r5, r0
	bls _08001012
	movs r4, #1
_08001012:
	cmp r4, #3
	bgt _0800104E
	ldr r2, _0800103C @ =gUnk_03002CE0
	ldr r1, _08001040 @ =gUnk_03002CF0
	lsls r0, r4, #4
	adds r3, r0, r1
	lsls r0, r4, #1
	adds r1, r0, r2
_08001022:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08001044
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _08001032
	cmp r0, #2
	bne _08001044
_08001032:
	adds r3, r4, #0
	b _08001052
	.align 2, 0
_08001038: .4byte 0x07FFFFFF
_0800103C: .4byte gUnk_03002CE0
_08001040: .4byte gUnk_03002CF0
_08001044:
	adds r3, #0x10
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	ble _08001022
_0800104E:
	movs r3, #1
	rsbs r3, r3, #0
_08001052:
	cmp r3, #0
	blt _0800106A
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r1, r7
	ldr r2, _08001074 @ =gUnk_085F5A0C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r5, [r0]
	str r6, [r0, #4]
	str r1, [r0, #8]
_0800106A:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001074: .4byte gUnk_085F5A0C

	thumb_func_start sub_08001078
sub_08001078: @ 0x08001078
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _080010B8 @ =0x07FFFFFF
	movs r4, #3
	cmp r6, r0
	bhi _08001092
	movs r4, #0
	cmp r5, r0
	bls _08001092
	movs r4, #1
_08001092:
	cmp r4, #3
	bgt _080010CE
	ldr r2, _080010BC @ =gUnk_03002CE0
	ldr r1, _080010C0 @ =gUnk_03002CF0
	lsls r0, r4, #4
	adds r3, r0, r1
	lsls r0, r4, #1
	adds r1, r0, r2
_080010A2:
	ldrh r0, [r1]
	cmp r0, #0
	bne _080010C4
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _080010B2
	cmp r0, #2
	bne _080010C4
_080010B2:
	adds r3, r4, #0
	b _080010D2
	.align 2, 0
_080010B8: .4byte 0x07FFFFFF
_080010BC: .4byte gUnk_03002CE0
_080010C0: .4byte gUnk_03002CF0
_080010C4:
	adds r3, #0x10
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	ble _080010A2
_080010CE:
	movs r3, #1
	rsbs r3, r3, #0
_080010D2:
	cmp r3, #0
	blt _080010EA
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	ldr r2, _080010F4 @ =gUnk_085F5A0C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r5, [r0]
	str r6, [r0, #4]
	str r1, [r0, #8]
_080010EA:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080010F4: .4byte gUnk_085F5A0C

	thumb_func_start sub_080010F8
sub_080010F8: @ 0x080010F8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0800113C @ =gUnk_03000008
	ldrb r1, [r0]
	lsls r2, r1, #5
	ldr r0, _08001140 @ =gUnk_03002D70
	adds r5, r2, r0
	lsls r1, r1, #8
	ldr r0, _08001144 @ =gUnk_03002DB0
	adds r6, r1, r0
	movs r2, #0
	adds r3, r6, #0
_08001110:
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08001148
	ldrh r1, [r4]
	ldrh r0, [r3]
	cmp r1, r0
	bne _08001148
	ldrh r1, [r4, #2]
	ldrh r0, [r3, #2]
	cmp r1, r0
	bne _08001148
	ldrh r1, [r4, #4]
	ldrh r0, [r3, #4]
	cmp r1, r0
	bne _08001148
	ldrh r1, [r4, #6]
	ldrh r0, [r3, #6]
	cmp r1, r0
	bne _08001148
	adds r0, r2, #0
	b _08001186
	.align 2, 0
_0800113C: .4byte gUnk_03000008
_08001140: .4byte gUnk_03002D70
_08001144: .4byte gUnk_03002DB0
_08001148:
	adds r3, #8
	adds r2, #1
	cmp r2, #0x1f
	ble _08001110
	movs r2, #0
	adds r3, r6, #0
	movs r6, #1
_08001156:
	adds r1, r5, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800117C
	strb r6, [r1]
	ldrh r0, [r4]
	ldrh r1, [r3]
	strh r0, [r3]
	ldrh r0, [r4, #2]
	ldrh r1, [r3, #2]
	strh r0, [r3, #2]
	ldrh r0, [r4, #4]
	ldrh r1, [r3, #4]
	strh r0, [r3, #4]
	ldrh r0, [r4, #6]
	ldrh r1, [r3, #6]
	strh r0, [r3, #6]
	adds r0, r2, #0
	b _08001186
_0800117C:
	adds r3, #8
	adds r2, #1
	cmp r2, #0x1f
	ble _08001156
	movs r0, #0
_08001186:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800118C
sub_0800118C: @ 0x0800118C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08001314 @ =gUnk_03000008
	ldr r1, _08001318 @ =gUnk_030032B8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	ldr r1, _0800131C @ =gUnk_03002FB0
	movs r0, #0
	str r0, [r1, #4]
	str r0, [r1]
	ldr r1, _08001320 @ =gUnk_030032C0
	str r0, [r1, #4]
	str r0, [r1]
	ldr r1, _08001324 @ =gUnk_03000000
	str r0, [r1, #4]
	str r0, [r1]
	ldr r1, _08001328 @ =gUnk_030034C8
	str r0, [r1, #4]
	str r0, [r1]
	ldr r2, _0800132C @ =gUnk_03002FB8
	movs r3, #0x30
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r7, r2, r0
	ldr r0, _08001330 @ =gUnk_030032C8
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	mov sb, r0
	ldr r0, _08001334 @ =gUnk_03000010
	mov r8, r0
	ldr r0, _08001338 @ =gUnk_030034D0
	mov sl, r0
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_080011DE:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _080011DE
	adds r2, r7, #0
	movs r3, #0x30
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_08001202:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _08001202
	mov r2, ip
	movs r3, #0x20
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_08001226:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _08001226
	mov r2, sb
	movs r3, #0x20
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_0800124A:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _0800124A
	mov r2, r8
	movs r3, #0x80
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_0800126E:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _0800126E
	ldr r2, _0800133C @ =gUnk_03000410
	movs r3, #0x80
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_08001292:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _08001292
	mov r2, sl
	movs r3, #0x10
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_080012B6:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _080012B6
	ldr r2, _08001340 @ =gUnk_03003550
	movs r3, #0x10
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_080012DA:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _080012DA
	ldr r0, _08001344 @ =gUnk_03002D70
	movs r1, #0x40
	bl memzero
	ldr r0, _08001348 @ =gUnk_03002DB0
	movs r1, #0x80
	lsls r1, r1, #2
	bl memzero
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001314: .4byte gUnk_03000008
_08001318: .4byte gUnk_030032B8
_0800131C: .4byte gUnk_03002FB0
_08001320: .4byte gUnk_030032C0
_08001324: .4byte gUnk_03000000
_08001328: .4byte gUnk_030034C8
_0800132C: .4byte gUnk_03002FB8
_08001330: .4byte gUnk_030032C8
_08001334: .4byte gUnk_03000010
_08001338: .4byte gUnk_030034D0
_0800133C: .4byte gUnk_03000410
_08001340: .4byte gUnk_03003550
_08001344: .4byte gUnk_03002D70
_08001348: .4byte gUnk_03002DB0

	thumb_func_start sub_0800134C
sub_0800134C: @ 0x0800134C
	push {r4, r5, r6, r7, lr}
	ldr r4, _08001400 @ =gUnk_03000008
	ldrb r0, [r4]
	lsls r0, r0, #5
	ldr r1, _08001404 @ =gUnk_03002D70
	adds r0, r0, r1
	movs r1, #0x20
	bl memzero
	ldrb r0, [r4]
	lsls r0, r0, #8
	ldr r1, _08001408 @ =gUnk_03002DB0
	adds r2, r0, r1
	movs r3, #0x20
	movs r4, #0
_0800136A:
	ldrh r0, [r2, #6]
	strh r4, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	ldrh r0, [r2, #4]
	ldrh r1, [r2, #2]
	strh r0, [r2, #2]
	ldrh r0, [r2, #2]
	ldrh r1, [r2]
	strh r0, [r2]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _0800136A
	ldr r2, _0800140C @ =gUnk_03002FB0
	ldr r3, _08001400 @ =gUnk_03000008
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r2, r0, r2
	ldr r1, _08001410 @ =gUnk_03000000
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	str r1, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _08001414 @ =gUnk_03002FB8
	adds r2, r0, r1
	movs r4, #0x30
	adds r7, r3, #0
	ldr r0, _08001418 @ =gUnk_03000010
	mov ip, r0
	movs r6, #0
	movs r5, #0xa8
	movs r3, #0xf8
_080013B6:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r3, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r4, #1
	cmp r4, #0
	bgt _080013B6
	ldrb r0, [r7]
	lsls r0, r0, #0xa
	mov r1, ip
	adds r3, r0, r1
	movs r2, #0x80
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_080013E0:
	ldrh r0, [r3]
	strh r5, [r3]
	ldrh r0, [r3, #2]
	strh r4, [r3, #2]
	ldrh r0, [r3, #6]
	strh r6, [r3, #6]
	ldrh r0, [r3, #6]
	ldrh r1, [r3, #4]
	strh r0, [r3, #4]
	adds r3, #8
	subs r2, #1
	cmp r2, #0
	bgt _080013E0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001400: .4byte gUnk_03000008
_08001404: .4byte gUnk_03002D70
_08001408: .4byte gUnk_03002DB0
_0800140C: .4byte gUnk_03002FB0
_08001410: .4byte gUnk_03000000
_08001414: .4byte gUnk_03002FB8
_08001418: .4byte gUnk_03000010

	thumb_func_start sub_0800141C
sub_0800141C: @ 0x0800141C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080014A4 @ =gUnk_030032C0
	ldr r2, _080014A8 @ =gUnk_030032B8
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #8
	ldr r1, _080014AC @ =gUnk_030032C8
	adds r3, r0, r1
	movs r4, #0x20
	adds r7, r2, #0
	ldr r0, _080014B0 @ =gUnk_030034C8
	mov ip, r0
	ldr r1, _080014B4 @ =gUnk_030034D0
	mov r8, r1
	movs r6, #0
	movs r5, #0xa8
	movs r2, #0xf8
_0800144A:
	ldrh r0, [r3]
	strh r5, [r3]
	ldrh r0, [r3, #2]
	strh r2, [r3, #2]
	ldrh r0, [r3, #6]
	strh r6, [r3, #6]
	ldrh r0, [r3, #6]
	ldrh r1, [r3, #4]
	strh r0, [r3, #4]
	adds r3, #8
	subs r4, #1
	cmp r4, #0
	bgt _0800144A
	ldrb r0, [r7]
	lsls r0, r0, #2
	add r0, ip
	movs r1, #0
	str r1, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #7
	mov r1, r8
	adds r2, r0, r1
	movs r3, #0x10
	movs r6, #0
	movs r5, #0xa8
	movs r4, #0xf8
_0800147E:
	ldrh r0, [r2]
	strh r5, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	strh r6, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _0800147E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080014A4: .4byte gUnk_030032C0
_080014A8: .4byte gUnk_030032B8
_080014AC: .4byte gUnk_030032C8
_080014B0: .4byte gUnk_030034C8
_080014B4: .4byte gUnk_030034D0

	thumb_func_start sub_080014B8
sub_080014B8: @ 0x080014B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0xe0
	lsls r5, r5, #0x13
	movs r7, #0
	adds r2, r5, #0
	movs r3, #0x80
	ldr r0, _08001684 @ =gUnk_03000008
	mov sl, r0
	ldr r1, _08001688 @ =gUnk_03002FB8
	mov r8, r1
	ldr r0, _0800168C @ =gUnk_03002FB0
	mov sb, r0
	movs r1, #0
	mov ip, r1
	movs r6, #0xa8
	movs r4, #0xf8
_080014E0:
	ldrh r0, [r2]
	strh r6, [r2]
	ldrh r0, [r2, #2]
	strh r4, [r2, #2]
	ldrh r0, [r2, #6]
	mov r0, ip
	strh r0, [r2, #6]
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	strh r0, [r2, #4]
	adds r2, #8
	subs r3, #1
	cmp r3, #0
	bgt _080014E0
	mov r1, sl
	ldrb r0, [r1]
	movs r1, #1
	eors r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	mov r2, r8
	adds r6, r0, r2
	lsls r1, r1, #2
	add r1, sb
	ldr r3, [r1]
	cmp r3, #0
	ble _08001546
	lsls r4, r3, #3
	ldr r2, _08001690 @ =0x040000B0
	str r6, [r2]
	str r5, [r2, #4]
	lsrs r0, r4, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r6, #0x80
	lsls r6, r6, #0x18
	adds r1, r7, r3
	cmp r0, #0
	bge _08001542
	adds r3, r6, #0
_0800153A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0800153A
_08001542:
	adds r5, r5, r4
	adds r7, r1, #0
_08001546:
	ldr r0, _08001694 @ =gUnk_030032B8
	ldrb r1, [r0]
	movs r0, #1
	eors r0, r1
	lsls r1, r0, #8
	ldr r2, _08001698 @ =gUnk_030032C8
	adds r6, r1, r2
	lsls r0, r0, #2
	ldr r1, _0800169C @ =gUnk_030032C0
	adds r0, r0, r1
	ldr r3, [r0]
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #2
	ldr r1, _080016A0 @ =gUnk_03000000
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	subs r0, r0, r1
	subs r0, r0, r7
	cmp r3, r0
	ble _08001574
	adds r3, r0, #0
_08001574:
	cmp r3, #0
	ble _080015A6
	lsls r4, r3, #3
	ldr r2, _08001690 @ =0x040000B0
	str r6, [r2]
	str r5, [r2, #4]
	lsrs r0, r4, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r6, #0x80
	lsls r6, r6, #0x18
	adds r1, r7, r3
	cmp r0, #0
	bge _080015A2
	adds r3, r6, #0
_0800159A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0800159A
_080015A2:
	adds r5, r5, r4
	adds r7, r1, #0
_080015A6:
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #1
	eors r0, r1
	lsls r1, r0, #0xa
	ldr r2, _080016A4 @ =gUnk_03000010
	adds r6, r1, r2
	lsls r0, r0, #2
	ldr r1, _080016A0 @ =gUnk_03000000
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0x80
	subs r0, r0, r7
	cmp r3, r0
	ble _080015C6
	adds r3, r0, #0
_080015C6:
	cmp r3, #0
	ble _080015F8
	lsls r4, r3, #3
	ldr r2, _08001690 @ =0x040000B0
	str r6, [r2]
	str r5, [r2, #4]
	lsrs r0, r4, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r6, #0x80
	lsls r6, r6, #0x18
	adds r1, r7, r3
	cmp r0, #0
	bge _080015F4
	adds r3, r6, #0
_080015EC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080015EC
_080015F4:
	adds r5, r5, r4
	adds r7, r1, #0
_080015F8:
	ldr r2, _08001694 @ =gUnk_030032B8
	ldrb r1, [r2]
	movs r0, #1
	eors r0, r1
	lsls r1, r0, #7
	ldr r2, _080016A8 @ =gUnk_030034D0
	adds r6, r1, r2
	lsls r0, r0, #2
	ldr r1, _080016AC @ =gUnk_030034C8
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0x80
	subs r0, r0, r7
	cmp r3, r0
	ble _08001618
	adds r3, r0, #0
_08001618:
	cmp r3, #0
	ble _08001642
	lsls r4, r3, #3
	ldr r2, _08001690 @ =0x040000B0
	str r6, [r2]
	str r5, [r2, #4]
	lsrs r0, r4, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08001642
_0800163A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0800163A
_08001642:
	ldr r5, _080016B0 @ =0x07000006
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #1
	eors r0, r1
	lsls r0, r0, #8
	ldr r2, _080016B4 @ =gUnk_03002DB0
	adds r1, r0, r2
	movs r3, #0x20
_08001654:
	ldrh r0, [r1]
	strh r0, [r5]
	adds r5, #8
	ldrh r0, [r1, #2]
	strh r0, [r5]
	adds r5, #8
	ldrh r0, [r1, #4]
	strh r0, [r5]
	adds r5, #8
	ldrh r0, [r1, #6]
	strh r0, [r5]
	adds r5, #8
	adds r1, #8
	subs r3, #1
	cmp r3, #0
	bgt _08001654
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001684: .4byte gUnk_03000008
_08001688: .4byte gUnk_03002FB8
_0800168C: .4byte gUnk_03002FB0
_08001690: .4byte 0x040000B0
_08001694: .4byte gUnk_030032B8
_08001698: .4byte gUnk_030032C8
_0800169C: .4byte gUnk_030032C0
_080016A0: .4byte gUnk_03000000
_080016A4: .4byte gUnk_03000010
_080016A8: .4byte gUnk_030034D0
_080016AC: .4byte gUnk_030034C8
_080016B0: .4byte 0x07000006
_080016B4: .4byte gUnk_03002DB0

	thumb_func_start sub_080016B8
sub_080016B8: @ 0x080016B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov ip, r0
	str r1, [sp]
	str r2, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	ldr r4, [sp, #0x54]
	ldr r5, [sp, #0x5c]
	ldr r6, [sp, #0x64]
	ldr r7, [sp, #0x6c]
	mov r8, r7
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x18]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r5, [sp, #0x1c]
	ldr r0, [sp, #0x68]
	cmp r8, r0
	blt _08001706
	b _0800193A
_08001706:
	mov r1, r8
	lsls r0, r1, #3
	adds r6, r6, r0
	mov r7, ip
	adds r7, #2
	mov r2, ip
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	mov ip, r0
	mov r3, ip
	orrs r3, r1
	mov ip, r3
	lsls r0, r3, #0x10
	cmp r0, #0
	bgt _08001728
	b _0800193A
_08001728:
	ldr r4, _08001780 @ =gUnk_0815D9FC
	mov sb, r4
_0800172C:
	ldr r5, [sp, #0x68]
	cmp r8, r5
	blt _08001734
	b _0800193A
_08001734:
	ldrb r1, [r7, #1]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	ldrb r0, [r7, #3]
	lsrs r5, r0, #6
	orrs r5, r1
	ldrb r1, [r7, #2]
	ldrb r2, [r7, #3]
	adds r0, r2, #0
	movs r3, #1
	ands r0, r3
	lsls r3, r0, #8
	orrs r3, r1
	adds r4, r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	str r1, [sp, #0x20]
	mov sl, r2
	cmp r0, #0
	beq _08001768
	ldr r1, _08001784 @ =0xFFFFFF00
	adds r0, r1, #0
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r3, r0, #0x10
_08001768:
	ldr r2, [sp, #0x14]
	cmp r2, #0
	beq _08001788
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp]
	subs r0, r3, r0
	lsls r1, r5, #2
	add r1, sb
	ldrh r1, [r1]
	subs r0, r0, r1
	b _08001790
	.align 2, 0
_08001780: .4byte gUnk_0815D9FC
_08001784: .4byte 0xFFFFFF00
_08001788:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp]
	adds r0, r0, r4
_08001790:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	str r0, [sp, #0x24]
	cmp r1, #0
	bge _080017AE
	lsls r0, r5, #2
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r1, r0
	cmp r0, #0
	bge _080017AE
	b _08001926
_080017AE:
	cmp r1, #0xef
	ble _080017C2
	lsls r0, r5, #2
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r1, r0
	cmp r0, #0xef
	ble _080017C2
	b _08001926
_080017C2:
	ldrb r0, [r7]
	adds r3, r0, #0
	adds r1, r3, #0
	movs r0, #0x80
	ands r0, r1
	adds r2, r3, #0
	cmp r0, #0
	beq _080017DE
	movs r4, #0x80
	rsbs r4, r4, #0
	adds r0, r4, #0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
_080017DE:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _080017F6
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	subs r0, r1, r0
	lsls r1, r5, #2
	add r1, sb
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	b _080017FE
_080017F6:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #4]
	adds r0, r0, r3
_080017FE:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0800181A
	lsls r0, r5, #2
	add r0, sb
	movs r4, #2
	ldrsh r0, [r0, r4]
	adds r0, r1, r0
	cmp r0, #0
	bge _0800181A
	b _08001926
_0800181A:
	cmp r1, #0x9f
	ble _0800182C
	lsls r0, r5, #2
	add r0, sb
	movs r5, #2
	ldrsh r0, [r0, r5]
	adds r0, r1, r0
	cmp r0, #0x9f
	bgt _08001926
_0800182C:
	ldrb r0, [r7, #1]
	lsls r0, r0, #8
	orrs r0, r2
	ldrh r1, [r6]
	strh r0, [r6]
	mov r1, sl
	lsls r0, r1, #8
	ldr r2, [sp, #0x20]
	orrs r0, r2
	ldrh r1, [r6, #2]
	strh r0, [r6, #2]
	ldrb r1, [r7, #4]
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r6, #4]
	strh r0, [r6, #4]
	ldr r4, [sp, #8]
	cmp r4, #3
	beq _08001868
	movs r0, #3
	adds r1, r4, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r6, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #1]
_08001868:
	ldr r1, [sp, #0xc]
	movs r5, #1
	ands r1, r5
	lsls r1, r1, #4
	ldrb r2, [r6, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #1]
	ldr r1, [sp, #0x10]
	ands r1, r5
	lsls r1, r1, #5
	ldrb r2, [r6, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #1]
	ldrb r0, [r6]
	strb r3, [r6]
	ldrb r1, [r6, #3]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #0x14]
	eors r1, r0
	ands r1, r5
	lsls r1, r1, #4
	ldrb r2, [r6, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #3]
	ldrb r1, [r6, #3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	ldr r2, [sp, #0x18]
	eors r1, r2
	ands r1, r5
	lsls r1, r1, #5
	ldrb r2, [r6, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #3]
	ldr r3, [sp, #0x24]
	lsls r1, r3, #7
	lsrs r1, r1, #0x17
	ldrh r2, [r6, #2]
	ldr r0, _0800194C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #2]
	ldrh r1, [r6, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r4, [sp, #0x58]
	adds r1, r1, r4
	ldr r5, _08001950 @ =0x000003FF
	adds r0, r5, #0
	ands r1, r0
	ldrh r2, [r6, #4]
	ldr r0, _08001954 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #4]
	ldrb r1, [r6, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	ldr r0, [sp, #0x1c]
	adds r1, r1, r0
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r6, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #5]
	ldrb r1, [r6, #5]
	lsrs r1, r1, #4
	ldr r2, [sp, #0x60]
	adds r1, r1, r2
	lsls r1, r1, #4
	ldrb r2, [r6, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #5]
	adds r6, #8
	movs r3, #1
	add r8, r3
_08001926:
	mov r4, ip
	lsls r0, r4, #0x10
	ldr r5, _08001958 @ =0xFFFF0000
	adds r0, r0, r5
	adds r7, #6
	lsrs r1, r0, #0x10
	mov ip, r1
	cmp r0, #0
	ble _0800193A
	b _0800172C
_0800193A:
	mov r0, r8
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800194C: .4byte 0xFFFFFE00
_08001950: .4byte 0x000003FF
_08001954: .4byte 0xFFFFFC00
_08001958: .4byte 0xFFFF0000

	thumb_func_start sub_0800195C
sub_0800195C: @ 0x0800195C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x3c]
	ldr r1, [sp, #0x44]
	mov ip, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x40]
	cmp ip, r2
	blt _08001986
	b _08001B04
_08001986:
	mov r5, ip
	lsls r0, r5, #3
	adds r3, r3, r0
	adds r6, r4, #2
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	mov r8, r0
	mov r7, r8
	orrs r7, r1
	mov r8, r7
	lsls r0, r7, #0x10
	cmp r0, #0
	bgt _080019A4
	b _08001B04
_080019A4:
	ldr r0, [sp, #0x40]
	cmp ip, r0
	blt _080019AC
	b _08001B04
_080019AC:
	ldrb r1, [r6, #1]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	ldrb r0, [r6, #3]
	lsrs r4, r0, #6
	orrs r4, r1
	ldrb r1, [r6, #2]
	mov sl, r1
	ldrb r2, [r6, #3]
	mov sb, r2
	movs r0, #1
	ands r0, r2
	lsls r2, r0, #8
	orrs r2, r1
	adds r1, r2, #0
	adds r0, r1, #0
	movs r5, #0x80
	lsls r5, r5, #1
	ands r0, r5
	cmp r0, #0
	beq _080019E0
	ldr r7, _08001B18 @ =0xFFFFFF00
	adds r0, r7, #0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
_080019E0:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bge _08001A00
	lsls r0, r4, #2
	ldr r2, _08001B1C @ =gUnk_0815D9FC
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r0, r5, r0
	cmp r0, #0
	blt _08001AF0
_08001A00:
	cmp r5, #0xef
	ble _08001A14
	lsls r0, r4, #2
	ldr r1, _08001B1C @ =gUnk_0815D9FC
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r5, r0
	cmp r0, #0xef
	bgt _08001AF0
_08001A14:
	ldrb r7, [r6]
	str r7, [sp, #0x10]
	adds r2, r7, #0
	adds r1, r2, #0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08001A30
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r2, #0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
_08001A30:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r7, [sp, #4]
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _08001A52
	lsls r0, r4, #2
	ldr r7, _08001B1C @ =gUnk_0815D9FC
	adds r0, r0, r7
	movs r7, #2
	ldrsh r0, [r0, r7]
	adds r0, r1, r0
	cmp r0, #0
	blt _08001AF0
_08001A52:
	cmp r1, #0x9f
	ble _08001A66
	lsls r0, r4, #2
	ldr r4, _08001B1C @ =gUnk_0815D9FC
	adds r0, r0, r4
	movs r7, #2
	ldrsh r0, [r0, r7]
	adds r0, r1, r0
	cmp r0, #0x9f
	bgt _08001AF0
_08001A66:
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	ldr r1, [sp, #0x10]
	orrs r0, r1
	ldrh r1, [r3]
	strh r0, [r3]
	mov r4, sb
	lsls r0, r4, #8
	mov r7, sl
	orrs r0, r7
	ldrh r1, [r3, #2]
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r3, #4]
	strh r0, [r3, #4]
	ldrb r0, [r3]
	strb r2, [r3]
	ldr r1, _08001B20 @ =0x000001FF
	adds r0, r1, #0
	adds r1, r5, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08001B24 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r2, [sp, #8]
	adds r1, r1, r2
	ldr r4, _08001B28 @ =0x000003FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08001B2C @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	ldr r5, [sp, #0xc]
	adds r1, r1, r5
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldrb r1, [r3, #5]
	lsrs r1, r1, #4
	ldr r7, [sp, #0x38]
	adds r1, r1, r7
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	adds r3, #8
	movs r0, #1
	add ip, r0
_08001AF0:
	mov r1, r8
	lsls r0, r1, #0x10
	ldr r2, _08001B30 @ =0xFFFF0000
	adds r0, r0, r2
	adds r6, #6
	lsrs r4, r0, #0x10
	mov r8, r4
	cmp r0, #0
	ble _08001B04
	b _080019A4
_08001B04:
	mov r0, ip
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001B18: .4byte 0xFFFFFF00
_08001B1C: .4byte gUnk_0815D9FC
_08001B20: .4byte 0x000001FF
_08001B24: .4byte 0xFFFFFE00
_08001B28: .4byte 0x000003FF
_08001B2C: .4byte 0xFFFFFC00
_08001B30: .4byte 0xFFFF0000

	thumb_func_start sub_08001B34
sub_08001B34: @ 0x08001B34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x64]
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	ldr r6, [sp, #0x74]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x24]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x28]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r3, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08001D3C @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r2, r0, #0xa
	ldr r1, _08001D40 @ =gUnk_03000010
	adds r5, r2, r1
	ldr r1, _08001D44 @ =gUnk_03000000
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0x7f
	ble _08001B90
	b _08001D2C
_08001B90:
	ldr r2, _08001D48 @ =0xFFFF0000
	lsls r0, r3, #0x10
	orrs r0, r4
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r1, [r0, #4]
	ands r1, r2
	orrs r1, r6
	str r1, [r0, #4]
	add r4, sp, #0x10
	adds r1, r4, #0
	movs r2, #1
	movs r3, #2
	bl ObjAffineSet
	ldrh r1, [r4]
	mov r0, sp
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #2]
	adds r0, #2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #4]
	add r0, sp, #4
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #6]
	adds r0, #2
	ldrh r2, [r0]
	strh r1, [r0]
	mov r0, sp
	bl sub_080010F8
	str r0, [sp, #0x2c]
	mov r1, r8
	lsls r0, r1, #3
	adds r5, r5, r0
	adds r3, r7, #2
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	lsls r6, r0, #8
	orrs r6, r1
	lsls r0, r6, #0x10
	cmp r0, #0
	bgt _08001BEE
	b _08001D1E
_08001BEE:
	movs r2, #1
	mov sb, r2
	ldr r0, [sp, #0x20]
	ands r0, r2
	lsls r0, r0, #4
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	ands r0, r2
	lsls r0, r0, #5
	str r0, [sp, #0x34]
_08001C02:
	mov r4, r8
	cmp r4, #0x7f
	ble _08001C0A
	b _08001D2C
_08001C0A:
	ldrb r1, [r3, #2]
	ldrb r0, [r3, #3]
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #8
	orrs r0, r1
	ldr r4, [sp, #0x18]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r1, [r3]
	ldr r2, [sp, #0x1c]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5]
	strh r0, [r5]
	ldrb r1, [r3, #2]
	ldrb r0, [r3, #3]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5, #2]
	strh r0, [r5, #2]
	ldrb r1, [r3, #4]
	ldrb r0, [r3, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5, #4]
	strh r0, [r5, #4]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r4, #3
	mov r1, sb
	orrs r1, r0
	ldrb r2, [r5, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	mov r0, sl
	cmp r0, #3
	beq _08001C7A
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r5, #1]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #1]
_08001C7A:
	ldrb r1, [r5, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #0x30]
	orrs r0, r1
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	ldr r2, [sp, #0x34]
	orrs r0, r2
	strb r0, [r5, #1]
	ldrb r0, [r5]
	strb r7, [r5]
	mov r0, ip
	lsls r1, r0, #0x17
	lsrs r1, r1, #0x17
	ldrh r2, [r5, #2]
	ldr r0, _08001D4C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #2]
	ldrh r1, [r5, #2]
	ldr r0, _08001D50 @ =0x0000C1FF
	ands r0, r1
	ldrh r1, [r5, #2]
	strh r0, [r5, #2]
	ldr r2, [sp, #0x2c]
	lsls r1, r2, #9
	ldrh r0, [r5, #2]
	orrs r1, r0
	ldrh r0, [r5, #2]
	strh r1, [r5, #2]
	ldrh r1, [r5, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r0, [sp, #0x60]
	adds r1, r1, r0
	ldr r2, _08001D54 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r5, #4]
	ldr r0, _08001D58 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #4]
	ldrb r1, [r5, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	ldr r0, [sp, #0x28]
	adds r1, r1, r0
	ands r1, r4
	lsls r1, r1, #2
	ldrb r2, [r5, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	ldrb r1, [r5, #5]
	lsrs r1, r1, #4
	ldr r2, [sp, #0x68]
	adds r1, r1, r2
	lsls r1, r1, #4
	ldrb r2, [r5, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	adds r5, #8
	movs r4, #1
	add r8, r4
	lsls r0, r6, #0x10
	ldr r1, _08001D48 @ =0xFFFF0000
	adds r0, r0, r1
	adds r3, #6
	lsrs r6, r0, #0x10
	cmp r0, #0
	ble _08001D1E
	b _08001C02
_08001D1E:
	ldr r1, _08001D44 @ =gUnk_03000000
	ldr r0, _08001D3C @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r2, r8
	str r2, [r0]
_08001D2C:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001D3C: .4byte gUnk_03000008
_08001D40: .4byte gUnk_03000010
_08001D44: .4byte gUnk_03000000
_08001D48: .4byte 0xFFFF0000
_08001D4C: .4byte 0xFFFFFE00
_08001D50: .4byte 0x0000C1FF
_08001D54: .4byte 0x000003FF
_08001D58: .4byte 0xFFFFFC00

	thumb_func_start sub_08001D5C
sub_08001D5C: @ 0x08001D5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x68]
	ldr r4, [sp, #0x70]
	ldr r5, [sp, #0x74]
	ldr r6, [sp, #0x78]
	mov sl, r6
	ldr r6, [sp, #0x7c]
	mov r8, r6
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x24]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x28]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r3, r5, #0x10
	mov r0, sl
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x2c]
	ldr r0, _08001F74 @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r2, r0, #0xa
	ldr r1, _08001F78 @ =gUnk_03000010
	adds r5, r2, r1
	ldr r1, _08001F7C @ =gUnk_03000000
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0x7f
	ble _08001DC8
	b _08001F64
_08001DC8:
	ldr r2, _08001F80 @ =0xFFFF0000
	lsls r0, r3, #0x10
	orrs r0, r4
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r1, [r0, #4]
	ands r1, r2
	orrs r1, r6
	str r1, [r0, #4]
	add r4, sp, #0x10
	adds r1, r4, #0
	movs r2, #1
	movs r3, #2
	bl ObjAffineSet
	ldrh r1, [r4]
	mov r0, sp
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #2]
	adds r0, #2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #4]
	add r0, sp, #4
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #6]
	adds r0, #2
	ldrh r2, [r0]
	strh r1, [r0]
	mov r0, sp
	bl sub_080010F8
	str r0, [sp, #0x30]
	mov r2, r8
	lsls r0, r2, #3
	adds r5, r5, r0
	adds r3, r7, #2
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	lsls r6, r0, #8
	orrs r6, r1
	lsls r0, r6, #0x10
	cmp r0, #0
	bgt _08001E26
	b _08001F56
_08001E26:
	movs r4, #1
	mov sl, r4
	ldr r0, [sp, #0x20]
	ands r0, r4
	lsls r0, r0, #4
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x24]
	ands r0, r4
	lsls r0, r0, #5
	str r0, [sp, #0x38]
_08001E3A:
	mov r0, r8
	cmp r0, #0x7f
	ble _08001E42
	b _08001F64
_08001E42:
	ldrb r1, [r3, #2]
	ldrb r0, [r3, #3]
	mov r2, sl
	ands r0, r2
	lsls r0, r0, #8
	orrs r0, r1
	ldr r4, [sp, #0x18]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r1, [r3]
	ldr r2, [sp, #0x1c]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5]
	strh r0, [r5]
	ldrb r1, [r3, #2]
	ldrb r0, [r3, #3]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5, #2]
	strh r0, [r5, #2]
	ldrb r1, [r3, #4]
	ldrb r0, [r3, #5]
	lsls r0, r0, #8
	orrs r0, r1
	ldrh r1, [r5, #4]
	strh r0, [r5, #4]
	movs r2, #1
	ldr r4, [sp, #0x2c]
	cmp r4, #0
	beq _08001E8E
	movs r2, #3
_08001E8E:
	movs r4, #3
	ldrb r1, [r5, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r2, r0
	strb r2, [r5, #1]
	mov r0, sb
	cmp r0, #3
	beq _08001EB2
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r5, #1]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #1]
_08001EB2:
	ldrb r1, [r5, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #0x34]
	orrs r0, r1
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	ldr r2, [sp, #0x38]
	orrs r0, r2
	strb r0, [r5, #1]
	ldrb r0, [r5]
	strb r7, [r5]
	mov r0, ip
	lsls r1, r0, #0x17
	lsrs r1, r1, #0x17
	ldrh r2, [r5, #2]
	ldr r0, _08001F84 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #2]
	ldrh r1, [r5, #2]
	ldr r0, _08001F88 @ =0x0000C1FF
	ands r0, r1
	ldrh r1, [r5, #2]
	strh r0, [r5, #2]
	ldr r2, [sp, #0x30]
	lsls r1, r2, #9
	ldrh r0, [r5, #2]
	orrs r1, r0
	ldrh r0, [r5, #2]
	strh r1, [r5, #2]
	ldrh r1, [r5, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r0, [sp, #0x64]
	adds r1, r1, r0
	ldr r2, _08001F8C @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r5, #4]
	ldr r0, _08001F90 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #4]
	ldrb r1, [r5, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	ldr r0, [sp, #0x28]
	adds r1, r1, r0
	ands r1, r4
	lsls r1, r1, #2
	ldrb r2, [r5, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	ldrb r1, [r5, #5]
	lsrs r1, r1, #4
	ldr r2, [sp, #0x6c]
	adds r1, r1, r2
	lsls r1, r1, #4
	ldrb r2, [r5, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	adds r5, #8
	movs r4, #1
	add r8, r4
	lsls r0, r6, #0x10
	ldr r6, _08001F80 @ =0xFFFF0000
	adds r0, r0, r6
	adds r3, #6
	lsrs r6, r0, #0x10
	cmp r0, #0
	ble _08001F56
	b _08001E3A
_08001F56:
	ldr r1, _08001F7C @ =gUnk_03000000
	ldr r0, _08001F74 @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
_08001F64:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001F74: .4byte gUnk_03000008
_08001F78: .4byte gUnk_03000010
_08001F7C: .4byte gUnk_03000000
_08001F80: .4byte 0xFFFF0000
_08001F84: .4byte 0xFFFFFE00
_08001F88: .4byte 0x0000C1FF
_08001F8C: .4byte 0x000003FF
_08001F90: .4byte 0xFFFFFC00

	thumb_func_start sub_08001F94
sub_08001F94: @ 0x08001F94
	ldr r1, _08001FA4 @ =gUnk_03002FB0
	ldr r0, _08001FA8 @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08001FA4: .4byte gUnk_03002FB0
_08001FA8: .4byte gUnk_03000008

	thumb_func_start sub_08001FAC
sub_08001FAC: @ 0x08001FAC
	ldr r1, _08001FBC @ =gUnk_030032C0
	ldr r0, _08001FC0 @ =gUnk_030032B8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08001FBC: .4byte gUnk_030032C0
_08001FC0: .4byte gUnk_030032B8

	thumb_func_start sub_08001FC4
sub_08001FC4: @ 0x08001FC4
	ldr r1, _08001FD4 @ =gUnk_03000000
	ldr r0, _08001FD8 @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08001FD4: .4byte gUnk_03000000
_08001FD8: .4byte gUnk_03000008

	thumb_func_start sub_08001FDC
sub_08001FDC: @ 0x08001FDC
	ldr r1, _08001FEC @ =gUnk_030034C8
	ldr r0, _08001FF0 @ =gUnk_030032B8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08001FEC: .4byte gUnk_030034C8
_08001FF0: .4byte gUnk_030032B8

	thumb_func_start sub_08001FF4
sub_08001FF4: @ 0x08001FF4
	ldr r2, _08002004 @ =gUnk_03002FB0
	ldr r1, _08002008 @ =gUnk_03000008
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08002004: .4byte gUnk_03002FB0
_08002008: .4byte gUnk_03000008

	thumb_func_start sub_0800200C
sub_0800200C: @ 0x0800200C
	ldr r2, _0800201C @ =gUnk_030032C0
	ldr r1, _08002020 @ =gUnk_030032B8
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_0800201C: .4byte gUnk_030032C0
_08002020: .4byte gUnk_030032B8

	thumb_func_start sub_08002024
sub_08002024: @ 0x08002024
	ldr r2, _08002034 @ =gUnk_03000000
	ldr r1, _08002038 @ =gUnk_03000008
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08002034: .4byte gUnk_03000000
_08002038: .4byte gUnk_03000008

	thumb_func_start sub_0800203C
sub_0800203C: @ 0x0800203C
	ldr r2, _0800204C @ =gUnk_030034C8
	ldr r1, _08002050 @ =gUnk_030032B8
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_0800204C: .4byte gUnk_030034C8
_08002050: .4byte gUnk_030032B8

	thumb_func_start sub_08002054
sub_08002054: @ 0x08002054
	ldr r0, _08002064 @ =gUnk_03000008
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, _08002068 @ =gUnk_03002FB8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08002064: .4byte gUnk_03000008
_08002068: .4byte gUnk_03002FB8

	thumb_func_start sub_0800206C
sub_0800206C: @ 0x0800206C
	ldr r0, _08002078 @ =gUnk_030032B8
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldr r1, _0800207C @ =gUnk_030032C8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08002078: .4byte gUnk_030032B8
_0800207C: .4byte gUnk_030032C8

	thumb_func_start sub_08002080
sub_08002080: @ 0x08002080
	ldr r0, _0800208C @ =gUnk_03000008
	ldrb r0, [r0]
	lsls r0, r0, #0xa
	ldr r1, _08002090 @ =gUnk_03000010
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0800208C: .4byte gUnk_03000008
_08002090: .4byte gUnk_03000010

	thumb_func_start sub_08002094
sub_08002094: @ 0x08002094
	ldr r0, _080020A0 @ =gUnk_030032B8
	ldrb r0, [r0]
	lsls r0, r0, #7
	ldr r1, _080020A4 @ =gUnk_030034D0
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080020A0: .4byte gUnk_030032B8
_080020A4: .4byte gUnk_030034D0

	thumb_func_start sub_080020A8
sub_080020A8: @ 0x080020A8
	ldr r0, _080020B4 @ =gUnk_03000008
	ldrb r1, [r0]
	movs r2, #1
	eors r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080020B4: .4byte gUnk_03000008

	thumb_func_start sub_080020B8
sub_080020B8: @ 0x080020B8
	ldr r0, _080020C4 @ =gUnk_030032B8
	ldrb r1, [r0]
	movs r2, #1
	eors r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080020C4: .4byte gUnk_030032B8

	thumb_func_start sub_080020C8
sub_080020C8: @ 0x080020C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r4, [sp, #0x48]
	mov r8, r4
	ldr r5, [sp, #0x4c]
	mov sb, r5
	ldr r4, [sp, #0x50]
	mov sl, r4
	ldr r5, [sp, #0x54]
	mov ip, r5
	ldr r4, [sp, #0x5c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r5, r8
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r8, r5
	mov r5, sb
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sb, r5
	mov r5, sl
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sl, r5
	mov r5, ip
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	ldr r5, _08002168 @ =gUnk_03000008
	ldrb r4, [r5]
	lsls r6, r4, #1
	adds r6, r6, r4
	lsls r6, r6, #7
	ldr r5, _0800216C @ =gUnk_03002FB8
	adds r6, r6, r5
	lsls r4, r4, #2
	ldr r5, _08002170 @ =gUnk_03002FB0
	adds r4, r4, r5
	ldr r5, [r4]
	mov r4, r8
	str r4, [sp]
	mov r4, sb
	str r4, [sp, #4]
	mov r4, sl
	str r4, [sp, #8]
	mov r4, ip
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x58]
	str r4, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r4, [sp, #0x60]
	str r4, [sp, #0x18]
	str r6, [sp, #0x1c]
	movs r4, #0x30
	str r4, [sp, #0x20]
	str r5, [sp, #0x24]
	bl sub_080016B8
	ldr r5, _08002168 @ =gUnk_03000008
	ldrb r1, [r5]
	lsls r1, r1, #2
	ldr r2, _08002170 @ =gUnk_03002FB0
	adds r1, r1, r2
	str r0, [r1]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002168: .4byte gUnk_03000008
_0800216C: .4byte gUnk_03002FB8
_08002170: .4byte gUnk_03002FB0

	thumb_func_start sub_08002174
sub_08002174: @ 0x08002174
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, [sp, #0x34]
	mov r8, r4
	ldr r7, [sp, #0x38]
	mov r5, r8
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r8, r5
	ldr r6, _080021D4 @ =gUnk_03000008
	mov sl, r6
	ldrb r4, [r6]
	lsls r5, r4, #1
	adds r5, r5, r4
	lsls r5, r5, #7
	ldr r6, _080021D8 @ =gUnk_03002FB8
	adds r5, r5, r6
	ldr r6, _080021DC @ =gUnk_03002FB0
	mov sb, r6
	lsls r4, r4, #2
	add r4, sb
	ldr r6, [r4]
	mov r4, r8
	str r4, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	movs r4, #0x30
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	bl sub_0800195C
	mov r5, sl
	ldrb r1, [r5]
	lsls r1, r1, #2
	add r1, sb
	str r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080021D4: .4byte gUnk_03000008
_080021D8: .4byte gUnk_03002FB8
_080021DC: .4byte gUnk_03002FB0

	thumb_func_start sub_080021E0
sub_080021E0: @ 0x080021E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r4, [sp, #0x48]
	mov r8, r4
	ldr r5, [sp, #0x4c]
	mov sb, r5
	ldr r4, [sp, #0x50]
	mov sl, r4
	ldr r5, [sp, #0x54]
	mov ip, r5
	ldr r4, [sp, #0x5c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r5, r8
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r8, r5
	mov r5, sb
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sb, r5
	mov r5, sl
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sl, r5
	mov r5, ip
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	ldr r5, _0800227C @ =gUnk_030032B8
	ldrb r4, [r5]
	lsls r6, r4, #8
	ldr r5, _08002280 @ =gUnk_030032C8
	adds r6, r6, r5
	lsls r4, r4, #2
	ldr r5, _08002284 @ =gUnk_030032C0
	adds r4, r4, r5
	ldr r5, [r4]
	mov r4, r8
	str r4, [sp]
	mov r4, sb
	str r4, [sp, #4]
	mov r4, sl
	str r4, [sp, #8]
	mov r4, ip
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x58]
	str r4, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r4, [sp, #0x60]
	str r4, [sp, #0x18]
	str r6, [sp, #0x1c]
	movs r4, #0x20
	str r4, [sp, #0x20]
	str r5, [sp, #0x24]
	bl sub_080016B8
	ldr r5, _0800227C @ =gUnk_030032B8
	ldrb r1, [r5]
	lsls r1, r1, #2
	ldr r2, _08002284 @ =gUnk_030032C0
	adds r1, r1, r2
	str r0, [r1]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800227C: .4byte gUnk_030032B8
_08002280: .4byte gUnk_030032C8
_08002284: .4byte gUnk_030032C0

	thumb_func_start sub_08002288
sub_08002288: @ 0x08002288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r6, [sp, #0x34]
	ldr r7, [sp, #0x38]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r4, _080022E0 @ =gUnk_030032B8
	mov sl, r4
	ldrb r4, [r4]
	lsls r5, r4, #8
	mov r8, r5
	ldr r5, _080022E4 @ =gUnk_030032C8
	add r8, r5
	ldr r5, _080022E8 @ =gUnk_030032C0
	mov sb, r5
	lsls r4, r4, #2
	add r4, sb
	ldr r5, [r4]
	str r6, [sp]
	str r7, [sp, #4]
	mov r4, r8
	str r4, [sp, #8]
	movs r4, #0x20
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	bl sub_0800195C
	mov r5, sl
	ldrb r1, [r5]
	lsls r1, r1, #2
	add r1, sb
	str r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080022E0: .4byte gUnk_030032B8
_080022E4: .4byte gUnk_030032C8
_080022E8: .4byte gUnk_030032C0

	thumb_func_start sub_080022EC
sub_080022EC: @ 0x080022EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r4, [sp, #0x48]
	mov r8, r4
	ldr r5, [sp, #0x4c]
	mov sb, r5
	ldr r4, [sp, #0x50]
	mov sl, r4
	ldr r5, [sp, #0x54]
	mov ip, r5
	ldr r4, [sp, #0x5c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r5, r8
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r8, r5
	mov r5, sb
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sb, r5
	mov r5, sl
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sl, r5
	mov r5, ip
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	ldr r5, _08002388 @ =gUnk_03000008
	ldrb r4, [r5]
	lsls r6, r4, #0xa
	ldr r5, _0800238C @ =gUnk_03000010
	adds r6, r6, r5
	lsls r4, r4, #2
	ldr r5, _08002390 @ =gUnk_03000000
	adds r4, r4, r5
	ldr r5, [r4]
	mov r4, r8
	str r4, [sp]
	mov r4, sb
	str r4, [sp, #4]
	mov r4, sl
	str r4, [sp, #8]
	mov r4, ip
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x58]
	str r4, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r4, [sp, #0x60]
	str r4, [sp, #0x18]
	str r6, [sp, #0x1c]
	movs r4, #0x80
	str r4, [sp, #0x20]
	str r5, [sp, #0x24]
	bl sub_080016B8
	ldr r5, _08002388 @ =gUnk_03000008
	ldrb r1, [r5]
	lsls r1, r1, #2
	ldr r2, _08002390 @ =gUnk_03000000
	adds r1, r1, r2
	str r0, [r1]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002388: .4byte gUnk_03000008
_0800238C: .4byte gUnk_03000010
_08002390: .4byte gUnk_03000000

	thumb_func_start sub_08002394
sub_08002394: @ 0x08002394
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r6, [sp, #0x34]
	ldr r7, [sp, #0x38]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r4, _080023EC @ =gUnk_03000008
	mov sl, r4
	ldrb r4, [r4]
	lsls r5, r4, #0xa
	mov r8, r5
	ldr r5, _080023F0 @ =gUnk_03000010
	add r8, r5
	ldr r5, _080023F4 @ =gUnk_03000000
	mov sb, r5
	lsls r4, r4, #2
	add r4, sb
	ldr r5, [r4]
	str r6, [sp]
	str r7, [sp, #4]
	mov r4, r8
	str r4, [sp, #8]
	movs r4, #0x80
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	bl sub_0800195C
	mov r5, sl
	ldrb r1, [r5]
	lsls r1, r1, #2
	add r1, sb
	str r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080023EC: .4byte gUnk_03000008
_080023F0: .4byte gUnk_03000010
_080023F4: .4byte gUnk_03000000

	thumb_func_start sub_080023F8
sub_080023F8: @ 0x080023F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r4, [sp, #0x48]
	mov r8, r4
	ldr r5, [sp, #0x4c]
	mov sb, r5
	ldr r4, [sp, #0x50]
	mov sl, r4
	ldr r5, [sp, #0x54]
	mov ip, r5
	ldr r4, [sp, #0x5c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r5, r8
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r8, r5
	mov r5, sb
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sb, r5
	mov r5, sl
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sl, r5
	mov r5, ip
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	ldr r5, _08002494 @ =gUnk_030032B8
	ldrb r4, [r5]
	lsls r6, r4, #7
	ldr r5, _08002498 @ =gUnk_030034D0
	adds r6, r6, r5
	lsls r4, r4, #2
	ldr r5, _0800249C @ =gUnk_030034C8
	adds r4, r4, r5
	ldr r5, [r4]
	mov r4, r8
	str r4, [sp]
	mov r4, sb
	str r4, [sp, #4]
	mov r4, sl
	str r4, [sp, #8]
	mov r4, ip
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x58]
	str r4, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r4, [sp, #0x60]
	str r4, [sp, #0x18]
	str r6, [sp, #0x1c]
	movs r4, #0x10
	str r4, [sp, #0x20]
	str r5, [sp, #0x24]
	bl sub_080016B8
	ldr r5, _08002494 @ =gUnk_030032B8
	ldrb r1, [r5]
	lsls r1, r1, #2
	ldr r2, _0800249C @ =gUnk_030034C8
	adds r1, r1, r2
	str r0, [r1]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002494: .4byte gUnk_030032B8
_08002498: .4byte gUnk_030034D0
_0800249C: .4byte gUnk_030034C8

	thumb_func_start sub_080024A0
sub_080024A0: @ 0x080024A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r6, [sp, #0x34]
	ldr r7, [sp, #0x38]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r4, _080024F8 @ =gUnk_030032B8
	mov sl, r4
	ldrb r4, [r4]
	lsls r5, r4, #7
	mov r8, r5
	ldr r5, _080024FC @ =gUnk_030034D0
	add r8, r5
	ldr r5, _08002500 @ =gUnk_030034C8
	mov sb, r5
	lsls r4, r4, #2
	add r4, sb
	ldr r5, [r4]
	str r6, [sp]
	str r7, [sp, #4]
	mov r4, r8
	str r4, [sp, #8]
	movs r4, #0x10
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	bl sub_0800195C
	mov r5, sl
	ldrb r1, [r5]
	lsls r1, r1, #2
	add r1, sb
	str r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080024F8: .4byte gUnk_030032B8
_080024FC: .4byte gUnk_030034D0
_08002500: .4byte gUnk_030034C8

	thumb_func_start sub_08002504
sub_08002504: @ 0x08002504
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08002584 @ =gUnk_030010D4
	ldrh r1, [r0]
	ldr r0, _08002588 @ =0x0000FEFF
	cmp r1, r0
	bls _0800251A
	b _08002660
_0800251A:
	cmp r6, #0xf
	bne _08002556
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _0800258C @ =0x01000200
	bl CpuSet
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	ldr r0, _08002590 @ =gUnk_03001064
	strh r4, [r0]
	ldr r0, _08002594 @ =0x04000200
	strh r4, [r0]
	adds r0, #8
	strh r4, [r0]
	ldr r0, _08002598 @ =0x04000004
	strh r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x14
	bl _call_via_r0
_08002556:
	ldrb r3, [r5, #7]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _080025BA
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0800259C
	ldrh r1, [r5]
	adds r0, r6, #0
	bics r0, r1
	strh r0, [r5, #2]
	ldrh r1, [r5, #8]
	bics r0, r1
	strh r0, [r5, #4]
	strh r6, [r5]
	movs r0, #8
	eors r0, r3
	strb r0, [r5, #7]
	adds r2, r1, #0
	b _080025CC
	.align 2, 0
_08002584: .4byte gUnk_030010D4
_08002588: .4byte 0x0000FEFF
_0800258C: .4byte 0x01000200
_08002590: .4byte gUnk_03001064
_08002594: .4byte 0x04000200
_08002598: .4byte 0x04000004
_0800259C:
	ldrh r3, [r5]
	adds r0, r6, #0
	bics r0, r3
	ldrh r1, [r5, #2]
	orrs r0, r1
	strh r0, [r5, #2]
	ldrh r2, [r5, #8]
	bics r0, r2
	ldrh r1, [r5, #4]
	orrs r0, r1
	strh r0, [r5, #4]
	adds r0, r6, #0
	orrs r0, r3
	strh r0, [r5]
	b _080025CC
_080025BA:
	ldrh r0, [r5]
	adds r1, r6, #0
	bics r1, r0
	strh r1, [r5, #2]
	ldrh r0, [r5, #8]
	bics r1, r0
	strh r1, [r5, #4]
	strh r6, [r5]
	adds r2, r0, #0
_080025CC:
	ldrb r1, [r5, #7]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08002652
	ldrh r0, [r5, #0xc]
	cmp r0, r6
	bne _08002652
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _080025F0
	ldrb r0, [r5, #0xa]
	strb r0, [r5, #0xe]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r5, #7]
	b _0800262A
_080025F0:
	movs r0, #0
	strb r0, [r5, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08002612
	ldrb r0, [r5, #0xe]
	adds r2, r0, #0
	cmp r2, #0
	bne _08002620
	strb r2, [r5, #0xe]
	movs r0, #0x40
	eors r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #7]
	b _0800265E
_08002612:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800265E
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08002626
_08002620:
	subs r0, #1
	strb r0, [r5, #0xe]
	b _0800265E
_08002626:
	ldrb r0, [r5, #0xb]
	strb r0, [r5, #0xe]
_0800262A:
	adds r0, r6, #0
	ands r0, r2
	ldrh r1, [r5, #4]
	orrs r0, r1
	strh r0, [r5, #4]
	ldrh r1, [r5, #8]
	adds r0, r6, #0
	bl sub_08002668
	strb r0, [r5, #6]
	ldrb r1, [r5, #7]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800265E
	ldrh r1, [r5]
	adds r0, r6, #0
	bics r0, r1
	strh r0, [r5, #2]
	b _0800265E
_08002652:
	movs r0, #0xf
	ands r0, r1
	movs r1, #0
	strb r0, [r5, #7]
	strb r1, [r5, #0xe]
	strb r1, [r5, #6]
_0800265E:
	strh r6, [r5, #0xc]
_08002660:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08002668
sub_08002668: @ 0x08002668
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #1
	movs r1, #0
_08002672:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08002682
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08002692
_08002682:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #9
	bls _08002672
	movs r0, #0
_08002692:
	bx lr

	thumb_func_start sub_08002694
sub_08002694: @ 0x08002694
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x44
	adds r7, r0, #0
	ldr r1, _08002784 @ =gUnk_03000834
	movs r0, #0
	str r0, [r1]
	movs r4, #0
	add r0, sp, #0x30
	mov sb, r0
	add r1, sp, #0x40
	mov r8, r1
	movs r1, #0xff
_080026B2:
	adds r0, r7, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080026B2
	movs r5, #0
_080026C2:
	lsls r2, r5, #2
	mov r0, sb
	adds r1, r0, r2
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0xff
	strb r0, [r1]
	movs r4, #0
	adds r6, r2, #0
_080026DA:
	adds r0, r4, #0
	movs r1, #0
	mov r2, sp
	movs r3, #0x30
	bl ReadFlash
	mov r0, sp
	ldr r1, _08002788 @ =gUnk_0815DA3C
	movs r2, #8
	bl sub_08003278
	cmp r0, #0
	bne _0800271C
	ldr r2, _08002784 @ =gUnk_03000834
	ldr r0, [r2]
	ldr r1, [sp, #8]
	adds r3, r1, #0
	cmp r0, r1
	bhs _08002702
	str r1, [r2]
_08002702:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, r5
	bne _0800271C
	mov r0, sb
	adds r1, r0, r6
	ldr r0, [r1]
	cmp r0, r3
	bge _0800271C
	str r3, [r1]
	mov r1, r8
	adds r0, r1, r5
	strb r4, [r0]
_0800271C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080026DA
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _080026C2
	movs r5, #0
	mov r6, sp
_08002734:
	mov r0, r8
	adds r4, r0, r5
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0800276A
	movs r1, #0
	mov r2, sp
	movs r3, #0x30
	bl ReadFlash
	ldrb r0, [r4]
	adds r0, r7, r0
	strb r5, [r0]
	ldrb r1, [r6, #0x12]
	adds r1, r7, r1
	movs r2, #0x10
	adds r0, r5, #0
	orrs r0, r2
	strb r0, [r1]
	cmp r5, #2
	bls _0800276A
	ldrb r0, [r6, #0x13]
	adds r0, r7, r0
	movs r2, #0x20
	adds r1, r5, #0
	orrs r1, r2
	strb r1, [r0]
_0800276A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08002734
	add sp, #0x44
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002784: .4byte gUnk_03000834
_08002788: .4byte gUnk_0815DA3C

	thumb_func_start sub_0800278C
sub_0800278C: @ 0x0800278C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r4, #0
	movs r3, #0
	ldr r0, _08002808 @ =gUnk_030010D0
	mov sb, r0
	ldr r1, _0800280C @ =gUnk_030010C0
	mov ip, r1
	movs r0, #0xf
	mov r8, r0
	adds r2, r6, #2
_080027AE:
	mov r1, ip
	adds r0, r3, r1
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, r5
	bne _080027C8
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r2, r1
	strb r3, [r1]
_080027C8:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _080027AE
	strh r4, [r6]
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0xf
	ands r2, r0
	movs r4, #0
	movs r3, #0
	ldr r0, _0800280C @ =gUnk_030010C0
	mov r8, r0
	adds r5, r7, #2
_080027E6:
	mov r1, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080027FC
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r5, r1
	strb r2, [r1]
_080027FC:
	cmp r2, #0xe
	bhi _08002810
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08002812
	.align 2, 0
_08002808: .4byte gUnk_030010D0
_0800280C: .4byte gUnk_030010C0
_08002810:
	movs r2, #0
_08002812:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _080027E6
	movs r3, #0
	ldrh r0, [r6]
	cmp r3, r0
	bhs _08002844
	adds r5, r7, #2
	adds r2, r6, #2
_08002828:
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r5, r1
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r1, [r6]
	cmp r3, r1
	blo _08002828
_08002844:
	strh r4, [r7]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002858
sub_08002858: @ 0x08002858
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov sl, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r1, #0
	ldr r5, _08002894 @ =0x000021E0
	cmp r2, #0
	bne _0800287C
	movs r5, #0xa1
	lsls r5, r5, #5
_0800287C:
	movs r0, #0
	str r0, [sp, #0x2c]
	mov r8, sl
	ldr r0, _08002898 @ =gFlash
	ldr r0, [r0]
	cmp r0, #0
	bne _0800288C
	b _08002A10
_0800288C:
	cmp r2, #0
	bne _0800289C
	adds r4, r1, #0
	b _080028A2
	.align 2, 0
_08002894: .4byte 0x000021E0
_08002898: .4byte gFlash
_0800289C:
	adds r0, r3, #3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080028A2:
	mov r1, r8
	ldr r0, _08002914 @ =gUnk_0815DA3C
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	mov r7, r8
	str r0, [r7, #0xc]
	strb r0, [r7, #0x12]
	strb r0, [r7, #0x13]
	ldr r0, _08002918 @ =gUnk_03000834
	ldr r0, [r0]
	adds r0, #1
	str r0, [r7, #8]
	strb r4, [r7, #0x11]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #0
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x30]
	cmp r2, r5
	bhs _080028F6
	ldr r6, _0800291C @ =0x00FFFFFF
	ldr r3, _08002920 @ =gUnk_085F5A1C
_080028D6:
	mov r7, sl
	adds r0, r7, r2
	ldrb r0, [r0]
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	ands r1, r6
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r0, [r0]
	eors r1, r0
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blo _080028D6
_080028F6:
	mvns r1, r1
	mov r0, r8
	str r1, [r0, #0xc]
	adds r0, r4, #0
	mov r1, sp
	ldr r2, [sp, #0x30]
	bl sub_0800278C
	cmp r4, #2
	bhi _08002924
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #1
	bhi _08002934
	b _08002A10
	.align 2, 0
_08002914: .4byte gUnk_0815DA3C
_08002918: .4byte gUnk_03000834
_0800291C: .4byte 0x00FFFFFF
_08002920: .4byte gUnk_085F5A1C
_08002924:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #2
	bhi _08002934
	b _08002A10
_0800292E:
	movs r1, #1
	str r1, [sp, #0x2c]
	b _080029BA
_08002934:
	movs r0, #2
	cmp r4, #2
	bhi _0800293C
	movs r0, #1
_0800293C:
	adds r6, r0, #0
	movs r7, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r7, r0
	bhs _080029BA
	add r2, sp, #0x28
	mov sb, r2
_0800294C:
	cmp r6, #0
	bne _0800295C
	mov r3, sb
	ldrb r0, [r3, #1]
	mov r1, r8
	strb r0, [r1, #0x12]
	ldrb r0, [r3, #2]
	strb r0, [r1, #0x13]
_0800295C:
	mov r0, sp
	adds r0, #2
	adds r0, r0, r7
	ldrb r4, [r0]
	ldr r1, _08002994 @ =gProgramFlashSector
	lsls r0, r6, #0xc
	mov r2, sl
	adds r5, r2, r0
	ldr r2, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08002988
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyFlashSector
	cmp r0, #0
	beq _0800299C
_08002988:
	ldr r0, _08002998 @ =gEraseFlashSector
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _080029AC
	.align 2, 0
_08002994: .4byte gProgramFlashSector
_08002998: .4byte gEraseFlashSector
_0800299C:
	mov r3, sb
	adds r0, r3, r6
	strb r4, [r0]
	cmp r6, #0
	beq _0800292E
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080029AC:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sp
	ldrh r0, [r0]
	cmp r7, r0
	blo _0800294C
_080029BA:
	ldr r0, _08002A08 @ =gUnk_030010C0
	bl sub_08002694
	ldr r7, [sp, #0x2c]
	cmp r7, #0
	beq _08002A10
	movs r4, #0
	movs r7, #0
	ldr r5, [sp, #0x30]
	ldrh r0, [r5]
	cmp r7, r0
	bhs _08002A02
	ldr r6, _08002A0C @ =gEraseFlashSector
_080029D4:
	mov r0, sp
	adds r0, #0x16
	adds r0, r0, r7
	ldrb r0, [r0]
	ldr r1, [r6]
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080029F4
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r1, #3
	bls _080029FC
_080029F4:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r4, #0
_080029FC:
	ldrh r1, [r5]
	cmp r7, r1
	blo _080029D4
_08002A02:
	movs r0, #1
	b _08002A12
	.align 2, 0
_08002A08: .4byte gUnk_030010C0
_08002A0C: .4byte gEraseFlashSector
_08002A10:
	movs r0, #0
_08002A12:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002A24
sub_08002A24: @ 0x08002A24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r1, #0
	ldr r0, _08002AA8 @ =0x000021E0
	mov r8, r0
	cmp r2, #0
	bne _08002A4C
	movs r0, #0xa1
	lsls r0, r0, #5
	mov r8, r0
_08002A4C:
	adds r7, r6, #0
	ldr r0, _08002AAC @ =gFlash
	ldr r0, [r0]
	cmp r0, #0
	bne _08002A58
	b _08002B88
_08002A58:
	cmp r2, #0
	beq _08002A62
	adds r0, r3, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08002A62:
	mov sb, sp
	movs r4, #0
	movs r3, #0
	ldr r2, _08002AB0 @ =gUnk_030010C0
	mov sl, r2
	movs r0, #0xf
	mov ip, r0
	mov r5, sp
	adds r5, #2
_08002A74:
	mov r2, sl
	adds r0, r3, r2
	ldrb r2, [r0]
	mov r0, ip
	ands r0, r2
	cmp r0, r1
	bne _08002A8E
	lsrs r0, r2, #4
	adds r0, r5, r0
	strb r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08002A8E:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _08002A74
	mov r0, sb
	strh r4, [r0]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08002AB8
	b _08002B88
	.align 2, 0
_08002AA8: .4byte 0x000021E0
_08002AAC: .4byte gFlash
_08002AB0: .4byte gUnk_030010C0
_08002AB4:
	str r1, [r7, #0xc]
	b _08002B76
_08002AB8:
	ldr r0, _08002AFC @ =0x00000FFF
	add r0, r8
	lsrs r0, r0, #0xc
	subs r0, #1
	lsls r0, r0, #0xc
	mov r1, r8
	subs r1, r1, r0
	mov sb, r1
	movs r2, #0
	mov sl, r2
_08002ACC:
	movs r4, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r4, r0
	bhs _08002B1A
	mov r5, sp
_08002AD8:
	mov r0, sp
	adds r0, #2
	adds r0, r0, r4
	ldrb r1, [r0]
	ldrh r0, [r5]
	subs r0, #1
	cmp r4, r0
	bge _08002B00
	lsls r2, r4, #0xc
	adds r2, r6, r2
	adds r0, r1, #0
	movs r1, #0
	movs r3, #0x80
	lsls r3, r3, #5
	bl ReadFlash
	b _08002B0E
	.align 2, 0
_08002AFC: .4byte 0x00000FFF
_08002B00:
	lsls r2, r4, #0xc
	adds r2, r6, r2
	adds r0, r1, #0
	movs r1, #0
	mov r3, sb
	bl ReadFlash
_08002B0E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r5]
	cmp r4, r0
	blo _08002AD8
_08002B1A:
	adds r0, r6, #0
	ldr r1, _08002B7C @ =gUnk_0815DA3C
	movs r2, #8
	bl sub_08003278
	cmp r0, #0
	bne _08002B62
	ldr r4, [r7, #0xc]
	str r0, [r7, #0xc]
	strb r0, [r7, #0x12]
	strb r0, [r7, #0x13]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #0
	cmp r2, r8
	bhs _08002B5C
	ldr r5, _08002B80 @ =0x00FFFFFF
	ldr r3, _08002B84 @ =gUnk_085F5A1C
_08002B3E:
	adds r0, r6, r2
	ldrb r0, [r0]
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	ands r1, r5
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r0, [r0]
	eors r1, r0
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r8
	blo _08002B3E
_08002B5C:
	mvns r1, r1
	cmp r1, r4
	beq _08002AB4
_08002B62:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #2
	bls _08002ACC
	movs r0, #0
	cmp r0, #0
	beq _08002B88
_08002B76:
	movs r0, #1
	b _08002B8A
	.align 2, 0
_08002B7C: .4byte gUnk_0815DA3C
_08002B80: .4byte 0x00FFFFFF
_08002B84: .4byte gUnk_085F5A1C
_08002B88:
	movs r0, #0
_08002B8A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002B9C
sub_08002B9C: @ 0x08002B9C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r5, r3, #0x10
	lsrs r0, r5, #0x10
	mov ip, r0
	cmp r6, #0
	bne _08002BD4
	ldr r2, _08002BD0 @ =0x040000D4
	str r7, [r2]
	adds r3, r4, #0
	adds r3, #0x30
	str r3, [r2, #4]
	lsrs r0, r5, #0x11
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	str r3, [r4]
	lsrs r0, r5, #0x12
	strh r0, [r4, #6]
	movs r3, #0
	b _08002C12
	.align 2, 0
_08002BD0: .4byte 0x040000D4
_08002BD4:
	ldr r3, _08002C2C @ =0x040000D4
	str r7, [r3]
	subs r0, r6, #1
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r4, r2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r4, r0
	str r0, [r3, #4]
	lsrs r0, r5, #0x11
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	lsls r3, r6, #1
	adds r1, r3, r6
	lsls r1, r1, #2
	adds r1, r4, r1
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r4, r0
	str r0, [r1]
	lsrs r0, r5, #0x12
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	strh r0, [r1, #6]
_08002C12:
	adds r1, r3, r6
	lsls r1, r1, #2
	adds r2, r4, r1
	mov r0, ip
	strh r0, [r2, #4]
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r1
	str r7, [r0]
	ldr r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002C2C: .4byte 0x040000D4

	thumb_func_start sub_08002C30
sub_08002C30: @ 0x08002C30
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r5, r3, #0x10
	lsrs r0, r5, #0x10
	mov ip, r0
	cmp r6, #0
	bne _08002C68
	ldr r2, _08002C64 @ =0x040000D4
	str r7, [r2]
	adds r3, r4, #0
	adds r3, #0x30
	str r3, [r2, #4]
	lsrs r0, r5, #0x11
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	str r3, [r4]
	lsrs r0, r5, #0x12
	strh r0, [r4, #6]
	movs r3, #0
	b _08002CA6
	.align 2, 0
_08002C64: .4byte 0x040000D4
_08002C68:
	ldr r3, _08002CD0 @ =0x040000D4
	str r7, [r3]
	subs r0, r6, #1
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r4, r2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r4, r0
	str r0, [r3, #4]
	lsrs r0, r5, #0x11
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	lsls r3, r6, #1
	adds r1, r3, r6
	lsls r1, r1, #2
	adds r1, r4, r1
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r4, r0
	str r0, [r1]
	lsrs r0, r5, #0x12
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	strh r0, [r1, #6]
_08002CA6:
	adds r0, r3, r6
	lsls r3, r0, #2
	adds r1, r4, r3
	ldrh r2, [r1, #6]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08002CBA
	adds r0, r2, #1
	strh r0, [r1, #6]
_08002CBA:
	mov r0, ip
	strh r0, [r1, #4]
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r3
	str r7, [r0]
	ldr r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002CD0: .4byte 0x040000D4

	thumb_func_start sub_08002CD4
sub_08002CD4: @ 0x08002CD4
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r4, #0
	movs r0, #0
	strh r0, [r5]
	strb r4, [r5, #4]
	strb r4, [r5, #5]
	strb r3, [r5, #2]
	movs r0, #0xff
	strb r0, [r5, #3]
	str r1, [r5, #8]
	str r2, [r5, #0xc]
	movs r2, #0
	cmp r2, r3
	bhs _08002D10
	movs r4, #0
_08002CF8:
	ldr r1, [r5, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	str r4, [r0]
	ldr r0, [r5, #0xc]
	adds r0, r0, r2
	strb r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	blo _08002CF8
_08002D10:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002D18
sub_08002D18: @ 0x08002D18
	adds r2, r0, #0
	adds r3, r1, #0
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	beq _08002D34
	ldr r1, [r2, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
	ldrb r1, [r2, #3]
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
_08002D34:
	bx lr
	.align 2, 0

	thumb_func_start sub_08002D38
sub_08002D38: @ 0x08002D38
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r4, [r0, #8]
	lsls r3, r1, #2
	adds r3, r3, r4
	str r2, [r3]
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08002D54
sub_08002D54: @ 0x08002D54
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r5, [r0, #8]
	lsls r4, r1, #2
	adds r4, r4, r5
	str r2, [r4]
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	strb r3, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002D70
sub_08002D70: @ 0x08002D70
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	movs r3, #0
	movs r6, #1
	ldrb r0, [r2, #2]
	cmp r3, r0
	bhs _08002DB2
	ldr r0, [r2, #8]
	ldr r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _08002D92
	str r5, [r4]
	ldr r0, [r2, #0xc]
	strb r3, [r0]
	b _08002DB8
_08002D92:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r0, [r2, #2]
	cmp r3, r0
	bhs _08002DB2
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r1, #0
	bne _08002D92
	str r5, [r0]
	ldr r0, [r2, #0xc]
	adds r0, r0, r3
	strb r1, [r0]
	movs r6, #0
_08002DB2:
	cmp r6, #0
	beq _08002DB8
_08002DB6:
	b _08002DB6
_08002DB8:
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08002DC0
sub_08002DC0: @ 0x08002DC0
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #0xff
	beq _08002DD2
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
_08002DD2:
	bx lr

	thumb_func_start sub_08002DD4
sub_08002DD4: @ 0x08002DD4
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	beq _08002DE8
	adds r1, r0, #0
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	strb r3, [r0]
_08002DE8:
	bx lr
	.align 2, 0

	thumb_func_start sub_08002DEC
sub_08002DEC: @ 0x08002DEC
	lsls r1, r1, #0x18
	ldr r0, [r0, #8]
	lsrs r1, r1, #0x16
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08002DFC
sub_08002DFC: @ 0x08002DFC
	push {r4, lr}
	adds r1, r0, #0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xff
	strb r0, [r1, #3]
	movs r2, #0
	ldrb r0, [r1, #2]
	cmp r2, r0
	bhs _08002E26
	ldr r3, [r1, #8]
	movs r4, #0
_08002E14:
	lsls r0, r2, #2
	adds r0, r0, r3
	str r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r1, #2]
	cmp r2, r0
	blo _08002E14
_08002E26:
	movs r0, #0
	strb r0, [r1, #2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08002E30
sub_08002E30: @ 0x08002E30
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0
	strh r0, [r2]
	movs r0, #0xff
	strb r0, [r2, #3]
	movs r1, #0
	ldrb r0, [r2, #2]
	cmp r1, r0
	bhs _08002E5A
	ldr r3, [r2, #8]
	movs r4, #0
_08002E48:
	lsls r0, r1, #2
	adds r0, r0, r3
	str r4, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r0, [r2, #2]
	cmp r1, r0
	blo _08002E48
_08002E5A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08002E60
sub_08002E60: @ 0x08002E60
	movs r2, #0
	movs r1, #3
_08002E64:
	str r2, [r0]
	strh r2, [r0, #4]
	adds r0, #0xc
	subs r1, #1
	cmp r1, #0
	bge _08002E64
	bx lr
	.align 2, 0

	thumb_func_start sub_08002E74
sub_08002E74: @ 0x08002E74
	bx lr
	.align 2, 0

	thumb_func_start sub_08002E78
sub_08002E78: @ 0x08002E78
	bx lr
	.align 2, 0

	thumb_func_start sub_08002E7C
sub_08002E7C: @ 0x08002E7C
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	beq _08002E98
	ldr r0, [r2, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r0, r2
	str r0, [r1]
_08002E98:
	bx lr
	.align 2, 0

	thumb_func_start sub_08002E9C
sub_08002E9C: @ 0x08002E9C
	adds r2, r0, #0
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	beq _08002EB6
	adds r1, r0, #0
	ldr r0, [r2, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r0, r2
	str r0, [r1]
_08002EB6:
	bx lr

	thumb_func_start sub_08002EB8
sub_08002EB8: @ 0x08002EB8
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	beq _08002ED2
	ldr r0, [r2, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _08002ED4 @ =0x7FFFFFFF
	ands r0, r2
	str r0, [r1]
_08002ED2:
	bx lr
	.align 2, 0
_08002ED4: .4byte 0x7FFFFFFF

	thumb_func_start sub_08002ED8
sub_08002ED8: @ 0x08002ED8
	adds r2, r0, #0
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	beq _08002EF0
	adds r1, r0, #0
	ldr r0, [r2, #8]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _08002EF4 @ =0x7FFFFFFF
	ands r0, r2
	str r0, [r1]
_08002EF0:
	bx lr
	.align 2, 0
_08002EF4: .4byte 0x7FFFFFFF

	thumb_func_start sub_08002EF8
sub_08002EF8: @ 0x08002EF8
	push {lr}
	ldr r2, _08002F14 @ =gUnk_03000DC0
	ldr r1, [r2]
	ldr r0, _08002F18 @ =0x0000A51D
	cmp r1, r0
	bne _08002F24
	ldr r1, [r2, #4]
	ldr r0, _08002F1C @ =0x0000C269
	cmp r1, r0
	bne _08002F24
	ldr r1, _08002F20 @ =gUnk_03000E58
	movs r0, #1
	b _08002F28
	.align 2, 0
_08002F14: .4byte gUnk_03000DC0
_08002F18: .4byte 0x0000A51D
_08002F1C: .4byte 0x0000C269
_08002F20: .4byte gUnk_03000E58
_08002F24:
	ldr r1, _08002F40 @ =gUnk_03000E58
	movs r0, #0
_08002F28:
	str r0, [r1]
	bl sub_08002F50
	bl sub_08003B98
	ldr r0, _08002F44 @ =gUnk_03000DC0
	ldr r1, _08002F48 @ =0x0000A51D
	str r1, [r0]
	ldr r1, _08002F4C @ =0x0000C269
	str r1, [r0, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08002F40: .4byte gUnk_03000E58
_08002F44: .4byte gUnk_03000DC0
_08002F48: .4byte 0x0000A51D
_08002F4C: .4byte 0x0000C269

	thumb_func_start sub_08002F50
sub_08002F50: @ 0x08002F50
	sub sp, #8
	movs r2, #0
	str r2, [sp]
	ldr r1, _08002F80 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r1, #4]
	ldr r0, _08002F84 @ =0x85010000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #4
	strh r2, [r0]
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	str r0, [r1, #4]
	ldr r0, _08002F88 @ =0x81003F00
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #8
	bx lr
	.align 2, 0
_08002F80: .4byte 0x040000D4
_08002F84: .4byte 0x85010000
_08002F88: .4byte 0x81003F00

	thumb_func_start memzero
memzero: @ 0x08002F8C
	cmp r1, #0
	ble _08002F9C
	movs r2, #0
_08002F92:
	strb r2, [r0]
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bgt _08002F92
_08002F9C:
	bx lr
	.align 2, 0

	thumb_func_start memset2
memset2: @ 0x08002FA0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r1, #0
	ble _08002FB2
_08002FA8:
	strb r2, [r0]
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bgt _08002FA8
_08002FB2:
	bx lr

	thumb_func_start memcpy2
memcpy2: @ 0x08002FB4
	adds r3, r0, #0
	cmp r2, #0
	ble _08002FC8
_08002FBA:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bgt _08002FBA
_08002FC8:
	bx lr
	.align 2, 0

	thumb_func_start sub_08002FCC
sub_08002FCC: @ 0x08002FCC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	mvns r2, r2
	movs r3, #0
	cmp r3, r1
	bhs _08002FFA
	ldr r6, _08003004 @ =0x00FFFFFF
	ldr r5, _08003008 @ =gUnk_085F5A1C
_08002FDC:
	adds r0, r4, r3
	ldrb r0, [r0]
	eors r0, r2
	lsls r0, r0, #0x18
	lsrs r2, r2, #8
	ands r2, r6
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0]
	eors r2, r0
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r1
	blo _08002FDC
_08002FFA:
	mvns r2, r2
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08003004: .4byte 0x00FFFFFF
_08003008: .4byte gUnk_085F5A1C

	thumb_func_start sub_0800300C
sub_0800300C: @ 0x0800300C
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r4, #0
	movs r3, #0
	cmp r4, r1
	bhs _08003030
_0800301C:
	ldrb r0, [r2]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r1
	blo _0800301C
_08003030:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08003038
sub_08003038: @ 0x08003038
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0800304C @ =gUnk_02000000
	bl sub_08003050
	pop {r1}
	bx r1
	.align 2, 0
_0800304C: .4byte gUnk_02000000

	thumb_func_start sub_08003050
sub_08003050: @ 0x08003050
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	movs r0, #2
	bl sub_08003CDC
	cmp r4, #1
	bne _08003076
	movs r0, #2
	bl sub_08000EC4
_08003076:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08002858
	adds r5, r0, #0
	cmp r4, #1
	bne _08003096
	ldr r0, _080030A4 @ =gUnk_02003768
	ldr r1, [r0]
	movs r2, #0xa0
	lsls r2, r2, #0x13
	ldr r3, _080030A8 @ =0x20400001
	movs r0, #2
	bl sub_08000E7C
_08003096:
	bl m4aSoundVSyncOn
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080030A4: .4byte gUnk_02003768
_080030A8: .4byte 0x20400001

	thumb_func_start sub_080030AC
sub_080030AC: @ 0x080030AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _080030C0
	ldr r1, _080030BC @ =gUnk_030010D4
	ldrb r0, [r1]
	strh r0, [r1]
	b _080030CE
	.align 2, 0
_080030BC: .4byte gUnk_030010D4
_080030C0:
	ldr r0, _080030D0 @ =gUnk_030010D4
	ldrh r1, [r0]
	movs r3, #0xff
	lsls r3, r3, #8
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
_080030CE:
	bx lr
	.align 2, 0
_080030D0: .4byte gUnk_030010D4

	thumb_func_start sub_080030D4
sub_080030D4: @ 0x080030D4
	ldr r0, _080030DC @ =gUnk_03001060
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080030DC: .4byte gUnk_03001060

	thumb_func_start sub_080030E0
sub_080030E0: @ 0x080030E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r6, #0
	movs r7, #0xff
	movs r5, #0
	mov r4, sp
_080030F6:
	adds r0, r5, #0
	movs r1, #0
	mov r2, sp
	movs r3, #0x30
	bl ReadFlash
	mov r0, sp
	ldr r1, _08003140 @ =gUnk_0815DA3C
	movs r2, #8
	bl sub_08003278
	cmp r0, #0
	bne _08003126
	mov r0, r8
	cmp r0, #0
	bne _0800311C
	ldrb r0, [r4, #0x11]
	cmp r0, #2
	bhi _08003126
_0800311C:
	ldr r0, [sp, #8]
	cmp r6, r0
	bhs _08003126
	adds r6, r0, #0
	ldrb r7, [r4, #0x11]
_08003126:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _080030F6
	adds r0, r7, #0
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003140: .4byte gUnk_0815DA3C

	thumb_func_start sub_08003144
sub_08003144: @ 0x08003144
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r1, #0
	movs r3, #0
	ldr r7, _08003188 @ =gUnk_030010C0
	movs r0, #0xf
	mov ip, r0
	adds r4, r6, #2
_08003158:
	adds r0, r3, r7
	ldrb r2, [r0]
	mov r0, ip
	ands r0, r2
	cmp r0, r5
	bne _08003170
	lsrs r0, r2, #4
	adds r0, r4, r0
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08003170:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _08003158
	strh r1, [r6]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003188: .4byte gUnk_030010C0
_0800318C:
	b _0800318C
	.align 2, 0

	thumb_func_start sub_08003190
sub_08003190: @ 0x08003190
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	movs r1, #0
	b _0800319C
_0800319A:
	adds r2, #1
_0800319C:
	ldrb r0, [r2]
	cmp r0, #9
	beq _0800319A
	cmp r0, #0x20
	beq _0800319A
	ldrb r0, [r2]
	cmp r0, #0x2d
	bne _080031B0
	movs r3, #1
	adds r2, #1
_080031B0:
	ldrb r0, [r2]
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r3, #0x10
	cmp r0, #9
	bhi _080031E2
	ldr r4, _080031EC @ =0x0000FFD0
_080031C0:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrb r0, [r2]
	adds r0, r0, r4
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, #1
	ldrb r0, [r2]
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _080031C0
_080031E2:
	cmp r3, #0
	bne _080031F0
	lsls r0, r1, #0x10
	b _080031F4
	.align 2, 0
_080031EC: .4byte 0x0000FFD0
_080031F0:
	lsls r0, r1, #0x10
	rsbs r0, r0, #0
_080031F4:
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080031FC
sub_080031FC: @ 0x080031FC
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r4, #0
	movs r5, #0
	b _08003208
_08003206:
	adds r2, #2
_08003208:
	ldrh r3, [r2]
	ldrb r0, [r2]
	cmp r0, #9
	beq _08003206
	cmp r3, #0x20
	beq _08003206
	movs r1, #0xff
	ldrb r0, [r2]
	cmp r0, #0x2d
	bne _08003220
	movs r4, #1
	adds r2, #2
_08003220:
	ldrh r3, [r2]
	ands r1, r3
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r6, r4, #0x10
	cmp r0, #9
	bhi _0800325E
	movs r4, #0xff
	ldr r7, _08003268 @ =0x0000FFD0
_08003236:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r4, #0
	ands r0, r3
	adds r0, r0, r7
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r2, #2
	ldrh r3, [r2]
	adds r0, r4, #0
	ands r0, r3
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08003236
_0800325E:
	cmp r6, #0
	bne _0800326C
	lsls r0, r5, #0x10
	b _08003270
	.align 2, 0
_08003268: .4byte 0x0000FFD0
_0800326C:
	lsls r0, r5, #0x10
	rsbs r0, r0, #0
_08003270:
	asrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08003278
sub_08003278: @ 0x08003278
	push {r4, r5, lr}
	adds r4, r0, #0
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080032AC
	adds r5, r0, #0
_08003288:
	ldrb r3, [r4]
	ldrb r0, [r1]
	cmp r3, r0
	bls _08003294
	movs r0, #1
	b _080032AE
_08003294:
	adds r1, #1
	cmp r3, r0
	bhs _080032A0
	movs r0, #1
	rsbs r0, r0, #0
	b _080032AE
_080032A0:
	adds r4, #1
	cmp r3, #0
	beq _080032AC
	subs r2, #1
	cmp r2, r5
	bne _08003288
_080032AC:
	movs r0, #0
_080032AE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080032B4
sub_080032B4: @ 0x080032B4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r2, #0x9f
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _080032DC
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _080032DC
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _080032E0
_080032DC:
	movs r0, #1
	b _080032E2
_080032E0:
	movs r0, #0
_080032E2:
	bx lr

	thumb_func_start sub_080032E4
sub_080032E4: @ 0x080032E4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r2, #0x9f
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _08003300
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08003304
_08003300:
	movs r0, #1
	b _08003306
_08003304:
	movs r0, #0
_08003306:
	bx lr

	thumb_func_start sub_08003308
sub_08003308: @ 0x08003308
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08003312
	movs r0, #0
	b _08003314
_08003312:
	movs r0, #1
_08003314:
	bx lr
	.align 2, 0

	thumb_func_start sub_08003318
sub_08003318: @ 0x08003318
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _08003324
	cmp r0, #0x7f
	bne _08003328
_08003324:
	movs r0, #1
	b _0800332A
_08003328:
	movs r0, #0
_0800332A:
	bx lr

	thumb_func_start sub_0800332C
sub_0800332C: @ 0x0800332C
	lsls r0, r0, #0x18
	movs r1, #0xd0
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0800333E
	movs r0, #0
	b _08003340
_0800333E:
	movs r0, #1
_08003340:
	bx lr
	.align 2, 0

	thumb_func_start sub_08003344
sub_08003344: @ 0x08003344
	lsls r0, r0, #0x18
	movs r1, #0x9f
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _08003356
	movs r0, #0
	b _08003358
_08003356:
	movs r0, #1
_08003358:
	bx lr
	.align 2, 0

	thumb_func_start sub_0800335C
sub_0800335C: @ 0x0800335C
	lsls r0, r0, #0x18
	movs r1, #0xe0
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #0x5e
	bls _0800336E
	movs r0, #0
	b _08003370
_0800336E:
	movs r0, #1
_08003370:
	bx lr
	.align 2, 0

	thumb_func_start sub_08003374
sub_08003374: @ 0x08003374
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r2, #0x9f
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _08003390
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08003394
_08003390:
	movs r0, #1
	b _08003396
_08003394:
	movs r0, #0
_08003396:
	cmp r0, #0
	bne _080033AC
	cmp r1, #0x1f
	bls _080033A2
	cmp r1, #0x7f
	bne _080033A6
_080033A2:
	movs r0, #1
	b _080033A8
_080033A6:
	movs r0, #0
_080033A8:
	cmp r0, #0
	beq _080033B0
_080033AC:
	movs r0, #0
	b _080033B2
_080033B0:
	movs r0, #1
_080033B2:
	bx lr

	thumb_func_start sub_080033B4
sub_080033B4: @ 0x080033B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	beq _080033CC
	cmp r0, #9
	beq _080033CC
	cmp r0, #0xd
	beq _080033CC
	cmp r0, #0xa
	beq _080033CC
	cmp r0, #0xc
	bne _080033D0
_080033CC:
	movs r0, #1
	b _080033D2
_080033D0:
	movs r0, #0
_080033D2:
	bx lr

	thumb_func_start sub_080033D4
sub_080033D4: @ 0x080033D4
	lsls r0, r0, #0x18
	movs r1, #0xbf
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _080033E6
	movs r0, #0
	b _080033E8
_080033E6:
	movs r0, #1
_080033E8:
	bx lr
	.align 2, 0

	thumb_func_start sub_080033EC
sub_080033EC: @ 0x080033EC
	adds r2, r0, #0
	adds r3, r2, #0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080033FE
_080033F6:
	adds r2, #1
	ldrb r0, [r2]
	cmp r0, #0
	bne _080033F6
_080033FE:
	ldrb r0, [r1]
	strb r0, [r2]
	lsls r0, r0, #0x18
	adds r1, #1
	adds r2, #1
	cmp r0, #0
	bne _080033FE
	adds r0, r3, #0
	bx lr

	thumb_func_start sub_08003410
sub_08003410: @ 0x08003410
	adds r2, r0, #0
	adds r3, r2, #0
	ldrh r0, [r3]
	cmp r0, #0
	beq _08003422
_0800341A:
	adds r2, #2
	ldrh r0, [r2]
	cmp r0, #0
	bne _0800341A
_08003422:
	ldrh r0, [r1]
	strh r0, [r2]
	lsls r0, r0, #0x10
	adds r1, #2
	adds r2, #2
	cmp r0, #0
	bne _08003422
	adds r0, r3, #0
	bx lr
_08003434:
	ldrh r2, [r0]
	ldrh r3, [r1]
	cmp r2, r3
	bls _08003440
	movs r0, #1
	b _08003454
_08003440:
	adds r1, #2
	cmp r2, r3
	blo _08003450
	adds r0, #2
	cmp r2, #0
	bne _08003434
	movs r0, #0
	b _08003454
_08003450:
	movs r0, #1
	rsbs r0, r0, #0
_08003454:
	bx lr
	.align 2, 0

	thumb_func_start sub_08003458
sub_08003458: @ 0x08003458
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	b _0800346E
_08003464:
	ldrh r0, [r3]
	adds r1, r2, #0
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
_0800346E:
	ldrb r0, [r4]
	strh r0, [r3]
	adds r4, #1
	cmp r0, #0
	bne _08003464
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003480
sub_08003480: @ 0x08003480
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	b _08003496
_0800348C:
	ldrh r0, [r3]
	adds r1, r2, #0
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
_08003496:
	ldrb r0, [r4]
	strh r0, [r3]
	adds r4, #1
	cmp r0, #0
	bne _0800348C
	adds r3, #2
	movs r0, #0
	strh r0, [r3]
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080034B0
sub_080034B0: @ 0x080034B0
	adds r2, r0, #0
_080034B2:
	ldrh r0, [r1]
	strh r0, [r2]
	lsls r0, r0, #0x10
	adds r1, #2
	adds r2, #2
	cmp r0, #0
	bne _080034B2
	bx lr
	.align 2, 0

	thumb_func_start sub_080034C4
sub_080034C4: @ 0x080034C4
	adds r1, r0, #0
	movs r2, #0
	b _080034D0
_080034CA:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080034D0:
	ldrh r0, [r1]
	adds r1, #2
	cmp r0, #0
	bne _080034CA
	adds r0, r2, #0
	bx lr

	thumb_func_start sub_080034DC
sub_080034DC: @ 0x080034DC
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r4, r3, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _080034F4
_080034EC:
	adds r3, #2
	ldrh r0, [r3]
	cmp r0, #0
	bne _080034EC
_080034F4:
	movs r5, #1
	rsbs r5, r5, #0
_080034F8:
	lsls r0, r2, #0x10
	ldr r2, _0800351C @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	beq _08003514
	ldrh r0, [r1]
	strh r0, [r3]
	lsls r0, r0, #0x10
	adds r1, #2
	adds r3, #2
	cmp r0, #0
	bne _080034F8
_08003514:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800351C: .4byte 0xFFFF0000

	thumb_func_start sub_08003520
sub_08003520: @ 0x08003520
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r2, r2, #0x10
	ldr r0, _08003544 @ =0xFFFF0000
	adds r2, r2, r0
	lsrs r4, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08003568
	adds r5, r0, #0
_08003538:
	ldrh r0, [r3]
	ldrh r2, [r1]
	cmp r0, r2
	bls _08003548
	movs r0, #1
	b _0800356A
	.align 2, 0
_08003544: .4byte 0xFFFF0000
_08003548:
	adds r1, #2
	cmp r0, r2
	bhs _08003554
	movs r0, #1
	rsbs r0, r0, #0
	b _0800356A
_08003554:
	adds r3, #2
	cmp r0, #0
	beq _08003568
	lsls r0, r4, #0x10
	ldr r2, _08003570 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _08003538
_08003568:
	movs r0, #0
_0800356A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08003570: .4byte 0xFFFF0000

	thumb_func_start sub_08003574
sub_08003574: @ 0x08003574
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r3, #0
	movs r4, #1
	rsbs r4, r4, #0
_08003582:
	lsls r0, r2, #0x10
	ldr r2, _080035CC @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _0800359E
	ldrh r0, [r1]
	strh r0, [r3]
	lsls r0, r0, #0x10
	adds r1, #2
	adds r3, #2
	cmp r0, #0
	bne _08003582
_0800359E:
	adds r1, r2, #0
	lsls r0, r1, #0x10
	ldr r2, _080035CC @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	cmp r1, #0
	ble _080035C4
	movs r4, #0
_080035B0:
	strh r4, [r3]
	adds r3, #2
	adds r1, r2, #0
	lsls r0, r1, #0x10
	ldr r2, _080035CC @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _080035B0
_080035C4:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080035CC: .4byte 0xFFFF0000

	thumb_func_start sub_080035D0
sub_080035D0: @ 0x080035D0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r2, #0xbf
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _080035E4
	adds r0, r1, #0
	b _080035EC
_080035E4:
	adds r0, r1, #0
	adds r0, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080035EC:
	bx lr
	.align 2, 0

	thumb_func_start sub_080035F0
sub_080035F0: @ 0x080035F0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	adds r0, r1, #0
	subs r0, #0x61
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08003606
	adds r2, r1, #0
	subs r2, #0x20
_08003606:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	bx lr

	thumb_func_start sub_0800360C
sub_0800360C: @ 0x0800360C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x11
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08003646
	adds r2, r0, #0
_08003628:
	ldrb r1, [r4]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r3]
	adds r4, #1
	adds r3, #1
	strb r1, [r3]
	adds r3, #1
	lsls r0, r5, #0x10
	ldr r1, _0800364C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	bne _08003628
_08003646:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800364C: .4byte 0xFFFF0000

	thumb_func_start sub_08003650
sub_08003650: @ 0x08003650
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003668
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r7, #0x2d
	b _0800366A
_08003668:
	movs r7, #0x20
_0800366A:
	adds r5, #6
	movs r0, #0
	strb r0, [r5]
	subs r5, #1
	movs r6, #6
_08003674:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r5]
	subs r5, #1
	subs r6, #1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _08003674
	strb r7, [r5]
	subs r5, #1
	subs r6, #1
	cmp r6, #0
	beq _080036AE
	movs r0, #0x20
_080036A4:
	strb r0, [r5]
	subs r5, #1
	subs r6, #1
	cmp r6, #0
	bne _080036A4
_080036AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080036B4
sub_080036B4: @ 0x080036B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080036D6
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #0x2d
	b _080036D8
_080036D6:
	movs r1, #0x20
_080036D8:
	adds r5, #0xc
	movs r0, #0
	strh r0, [r5]
	subs r5, #2
	movs r6, #6
	mov r7, r8
	orrs r7, r1
_080036E6:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	mov r1, r8
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	subs r6, #1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _080036E6
	strh r7, [r5]
	subs r5, #2
	subs r6, #1
	cmp r6, #0
	beq _08003728
	movs r0, #0x20
	mov r2, r8
	orrs r2, r0
_0800371E:
	strh r2, [r5]
	subs r5, #2
	subs r6, #1
	cmp r6, #0
	bne _0800371E
_08003728:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003734
sub_08003734: @ 0x08003734
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003750
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r7, #0x2d
	b _08003752
_08003750:
	movs r7, #0x20
_08003752:
	adds r5, r5, r2
	movs r0, #0
	strb r0, [r5]
	subs r5, #1
	adds r6, r2, #0
_0800375C:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r5]
	subs r5, #1
	subs r6, #1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _0800375C
	strb r7, [r5]
	subs r5, #1
	subs r6, #1
	cmp r6, #0
	beq _08003796
	movs r0, #0x20
_0800378C:
	strb r0, [r5]
	subs r5, #1
	subs r6, #1
	cmp r6, #0
	bne _0800378C
_08003796:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800379C
sub_0800379C: @ 0x0800379C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080037C2
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #0x2d
	b _080037C4
_080037C2:
	movs r1, #0x20
_080037C4:
	lsls r0, r3, #1
	adds r5, r5, r0
	movs r0, #0
	strh r0, [r5]
	subs r5, #2
	adds r6, r3, #0
	mov r7, r8
	orrs r7, r1
_080037D4:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	mov r1, r8
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	subs r6, #1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _080037D4
	strh r7, [r5]
	subs r5, #2
	subs r6, #1
	cmp r6, #0
	beq _08003816
	movs r0, #0x20
	mov r2, r8
	orrs r2, r0
_0800380C:
	strh r2, [r5]
	subs r5, #2
	subs r6, #1
	cmp r6, #0
	bne _0800380C
_08003816:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08003820
sub_08003820: @ 0x08003820
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #6
	movs r0, #0
	strb r0, [r6]
	subs r6, #1
	movs r7, #6
_08003832:
	lsls r5, r5, #0x10
	asrs r4, r5, #0x10
	movs r0, #1
	ands r4, r0
	lsrs r5, r5, #0x11
	adds r0, r5, #0
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0x30
	strb r0, [r6]
	subs r6, #1
	subs r7, #1
	adds r0, r5, #0
	movs r1, #5
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bne _08003832
	subs r7, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _08003876
	movs r1, #0x20
_0800386C:
	strb r1, [r6]
	subs r6, #1
	subs r7, #1
	cmp r7, r0
	bne _0800386C
_08003876:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800387C
sub_0800387C: @ 0x0800387C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	adds r6, #0xc
	movs r0, #0
	strh r0, [r6]
	subs r6, #2
	movs r7, #6
_08003898:
	lsls r5, r5, #0x10
	asrs r4, r5, #0x10
	movs r0, #1
	ands r4, r0
	lsrs r5, r5, #0x11
	adds r0, r5, #0
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0x30
	mov r1, r8
	orrs r0, r1
	strh r0, [r6]
	subs r6, #2
	subs r7, #1
	adds r0, r5, #0
	movs r1, #5
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bne _08003898
	subs r7, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r7, r1
	beq _080038E6
	movs r0, #0x20
	mov r2, r8
	orrs r2, r0
	adds r0, r1, #0
_080038DC:
	strh r2, [r6]
	subs r6, #2
	subs r7, #1
	cmp r7, r0
	bne _080038DC
_080038E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080038F0
sub_080038F0: @ 0x080038F0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #6
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	movs r3, #6
	movs r5, #7
	ldr r0, _0800393C @ =0x00001FFF
	adds r4, r0, #0
_08003906:
	adds r0, r2, #0
	ands r0, r5
	adds r0, #0x30
	strb r0, [r1]
	subs r1, #1
	subs r3, #1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x13
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bne _08003906
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08003936
	movs r2, #0x20
_0800392C:
	strb r2, [r1]
	subs r1, #1
	subs r3, #1
	cmp r3, r0
	bne _0800392C
_08003936:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800393C: .4byte 0x00001FFF

	thumb_func_start sub_08003940
sub_08003940: @ 0x08003940
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r3, #0xc
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r5, #6
	movs r7, #7
	ldr r0, _08003998 @ =0x00001FFF
	adds r6, r0, #0
_0800395C:
	lsls r1, r4, #0x10
	asrs r0, r1, #0x10
	ands r0, r7
	adds r0, #0x30
	orrs r0, r2
	strh r0, [r3]
	subs r3, #2
	subs r5, #1
	asrs r1, r1, #0x13
	ands r1, r6
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r1, #0
	bne _0800395C
	subs r5, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r5, r1
	beq _08003992
	movs r0, #0x20
	orrs r2, r0
	adds r0, r1, #0
_08003988:
	strh r2, [r3]
	subs r3, #2
	subs r5, #1
	cmp r5, r0
	bne _08003988
_08003992:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003998: .4byte 0x00001FFF

	thumb_func_start sub_0800399C
sub_0800399C: @ 0x0800399C
	push {r4, lr}
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, #6
	movs r0, #0
	strb r0, [r2]
	subs r2, #1
	movs r3, #6
_080039AE:
	adds r4, r2, #0
	subs r2, #1
	lsls r1, r1, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	asrs r0, r0, #0x10
	cmp r0, #9
	bgt _080039C4
	adds r0, #0x30
	b _080039C6
_080039C4:
	adds r0, #0x37
_080039C6:
	strb r0, [r4]
	subs r3, #1
	lsrs r0, r1, #0x14
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bne _080039AE
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080039EA
	movs r1, #0x20
_080039E0:
	strb r1, [r2]
	subs r2, #1
	subs r3, #1
	cmp r3, r0
	bne _080039E0
_080039EA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080039F0
sub_080039F0: @ 0x080039F0
	push {r4, r5, lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r3, #0xc
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r4, #6
_08003A06:
	adds r2, r3, #0
	subs r3, #2
	lsls r1, r1, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	asrs r0, r0, #0x10
	cmp r0, #9
	bgt _08003A1C
	adds r0, #0x30
	b _08003A1E
_08003A1C:
	adds r0, #0x37
_08003A1E:
	orrs r0, r5
	strh r0, [r2]
	subs r4, #1
	lsrs r0, r1, #0x14
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bne _08003A06
	subs r4, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r4, r1
	beq _08003A4A
	movs r0, #0x20
	adds r2, r5, #0
	orrs r2, r0
	adds r0, r1, #0
_08003A40:
	strh r2, [r3]
	subs r3, #2
	subs r4, #1
	cmp r4, r0
	bne _08003A40
_08003A4A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08003A50
sub_08003A50: @ 0x08003A50
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	ldr r5, _08003A6C @ =gUnk_03000840
	cmp r0, #0
	bne _08003A64
	ldr r0, _08003A70 @ =gUnk_03000850
	str r0, [r5]
_08003A64:
	ldr r3, [r5]
	adds r2, r4, #0
	adds r4, r1, #0
	b _08003A7E
	.align 2, 0
_08003A6C: .4byte gUnk_03000840
_08003A70: .4byte gUnk_03000850
_08003A74:
	ldrh r0, [r3]
	adds r1, r4, #0
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
_08003A7E:
	ldrb r0, [r2]
	strh r0, [r3]
	adds r2, #1
	cmp r0, #0
	bne _08003A74
	adds r3, #2
	movs r0, #0
	strh r0, [r3]
	subs r0, r3, #2
	str r0, [r5]
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08003A98
sub_08003A98: @ 0x08003A98
	lsrs r2, r1, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x12
	ldr r0, [r0, #0x14]
	adds r0, r0, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x17
	adds r1, r0, r1
	ldr r2, _08003ABC @ =gUnk_03000850
_08003AAA:
	ldrh r0, [r2]
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r2, #2
	adds r1, #2
	cmp r0, #0
	bne _08003AAA
	bx lr
	.align 2, 0
_08003ABC: .4byte gUnk_03000850

	thumb_func_start sub_08003AC0
sub_08003AC0: @ 0x08003AC0
	ldr r1, _08003B0C @ =gUnk_03001070
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	ldr r1, _08003B10 @ =gUnk_03001090
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	ldr r1, _08003B14 @ =gUnk_03000D60
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	ldr r1, _08003B18 @ =gUnk_03000E20
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	bx lr
	.align 2, 0
_08003B0C: .4byte gUnk_03001070
_08003B10: .4byte gUnk_03001090
_08003B14: .4byte gUnk_03000D60
_08003B18: .4byte gUnk_03000E20

	thumb_func_start sub_08003B1C
sub_08003B1C: @ 0x08003B1C
	adds r3, r0, #0
	cmp r1, #2
	beq _08003B28
	cmp r1, #3
	beq _08003B60
	b _08003B92
_08003B28:
	ldr r0, _08003B5C @ =gUnk_03000DD0
	ldrh r1, [r3]
	ldrh r2, [r0, #0x1a]
	strh r1, [r0, #0x1a]
	ldrh r1, [r3, #2]
	ldrh r2, [r0, #0x1c]
	strh r1, [r0, #0x1c]
	ldrh r1, [r3, #4]
	ldrh r2, [r0, #0x1e]
	strh r1, [r0, #0x1e]
	ldrh r1, [r3, #6]
	ldrh r2, [r0, #0x20]
	strh r1, [r0, #0x20]
	ldr r1, [r3, #8]
	ldrh r2, [r0, #0x22]
	strh r1, [r0, #0x22]
	asrs r1, r1, #0x10
	ldrh r2, [r0, #0x24]
	strh r1, [r0, #0x24]
	ldr r1, [r3, #0xc]
	ldrh r2, [r0, #0x26]
	strh r1, [r0, #0x26]
	asrs r1, r1, #0x10
	ldrh r2, [r0, #0x28]
	strh r1, [r0, #0x28]
	b _08003B92
	.align 2, 0
_08003B5C: .4byte gUnk_03000DD0
_08003B60:
	ldr r0, _08003B94 @ =gUnk_03000DD0
	ldrh r1, [r3]
	ldrh r2, [r0, #0x2a]
	strh r1, [r0, #0x2a]
	ldrh r1, [r3, #2]
	ldrh r2, [r0, #0x2c]
	strh r1, [r0, #0x2c]
	ldrh r1, [r3, #4]
	ldrh r2, [r0, #0x2e]
	strh r1, [r0, #0x2e]
	ldrh r1, [r3, #6]
	ldrh r2, [r0, #0x30]
	strh r1, [r0, #0x30]
	ldr r1, [r3, #8]
	ldrh r2, [r0, #0x32]
	strh r1, [r0, #0x32]
	asrs r1, r1, #0x10
	ldrh r2, [r0, #0x34]
	strh r1, [r0, #0x34]
	ldr r1, [r3, #0xc]
	ldrh r2, [r0, #0x36]
	strh r1, [r0, #0x36]
	asrs r1, r1, #0x10
	ldrh r2, [r0, #0x38]
	strh r1, [r0, #0x38]
_08003B92:
	bx lr
	.align 2, 0
_08003B94: .4byte gUnk_03000DD0

	thumb_func_start sub_08003B98
sub_08003B98: @ 0x08003B98
	push {lr}
	bl sub_08003BAC
	bl sub_08003BD4
	bl sub_08003C38
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003BAC
sub_08003BAC: @ 0x08003BAC
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08003BCC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08003BD0 @ =0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08003BCC: .4byte 0x040000D4
_08003BD0: .4byte 0x8100C000

	thumb_func_start sub_08003BD4
sub_08003BD4: @ 0x08003BD4
	push {r4, lr}
	movs r0, #0xe0
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r1, #0
	movs r1, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r4, r3, #0
	movs r3, #0x1f
_08003BEA:
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	subs r3, #1
	cmp r3, #0
	bge _08003BEA
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003C38
sub_08003C38: @ 0x08003C38
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08003C58 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08003C5C @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08003C58: .4byte 0x040000D4
_08003C5C: .4byte 0x81000200

	thumb_func_start sub_08003C60
sub_08003C60: @ 0x08003C60
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	ldr r1, [r0, #0x14]
	ldr r0, [r0]
	ldrh r0, [r0]
	lsrs r0, r0, #0xe
	adds r4, r0, #1
	movs r3, #0
	cmp r3, r4
	bhs _08003C9E
	mov r5, sp
	ldr r2, _08003CA8 @ =0x040000D4
	ldr r7, _08003CAC @ =0x81000400
	movs r6, #0x80
	lsls r6, r6, #5
_08003C84:
	mov r0, ip
	strh r0, [r5]
	mov r0, sp
	str r0, [r2]
	str r1, [r2, #4]
	str r7, [r2, #8]
	ldr r0, [r2, #8]
	adds r1, r1, r6
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r4
	blo _08003C84
_08003C9E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003CA8: .4byte 0x040000D4
_08003CAC: .4byte 0x81000400

	thumb_func_start sub_08003CB0
sub_08003CB0: @ 0x08003CB0
	ldr r2, _08003CD8 @ =0x04000004
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08003CC8
	movs r3, #1
_08003CBE:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08003CBE
_08003CC8:
	ldr r2, _08003CD8 @ =0x04000004
	movs r3, #1
_08003CCC:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08003CCC
	bx lr
	.align 2, 0
_08003CD8: .4byte 0x04000004

	thumb_func_start sub_08003CDC
sub_08003CDC: @ 0x08003CDC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r2, #0
	cmp r2, r5
	bhs _08003D1A
_08003CE8:
	ldr r3, _08003D20 @ =0x04000004
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	adds r4, r2, #1
	cmp r0, #0
	beq _08003D04
	adds r2, r3, #0
	movs r3, #1
_08003CFA:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08003CFA
_08003D04:
	ldr r2, _08003D20 @ =0x04000004
	movs r3, #1
_08003D08:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08003D08
	lsls r0, r4, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blo _08003CE8
_08003D1A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003D20: .4byte 0x04000004

	thumb_func_start sub_08003D24
sub_08003D24: @ 0x08003D24
	push {r4, lr}
	ldr r4, _08003D34 @ =gUnk_03000DD0
	adds r0, r4, #0
	movs r1, #0x50
	bl memzero
	b _08003D3A
	.align 2, 0
_08003D34: .4byte gUnk_03000DD0
_08003D38:
	b _08003D38
_08003D3A:
	ldr r0, _08003D60 @ =gUnk_03000DD0
	movs r1, #0x60
	strh r1, [r0]
	ldrh r1, [r0, #0x1e]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0, #0x1e]
	ldrh r1, [r0, #0x1e]
	ldrh r3, [r0, #0x1a]
	strh r1, [r0, #0x1a]
	ldrh r1, [r0, #0x2e]
	strh r2, [r0, #0x2e]
	ldrh r1, [r0, #0x2e]
	ldrh r2, [r0, #0x2a]
	strh r1, [r0, #0x2a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003D60: .4byte gUnk_03000DD0

	thumb_func_start sub_08003D64
sub_08003D64: @ 0x08003D64
	movs r3, #0xa0
	lsls r3, r3, #0x13
	ldr r0, _08003D84 @ =gUnk_02003768
	ldr r1, [r0]
	ldrb r2, [r1]
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r3]
	ldr r3, _08003D88 @ =gUnk_02002400
	ldrb r2, [r1]
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r3]
	bx lr
	.align 2, 0
_08003D84: .4byte gUnk_02003768
_08003D88: .4byte gUnk_02002400

	thumb_func_start sub_08003D8C
sub_08003D8C: @ 0x08003D8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08003DB4 @ =gUnk_02003768
	str r4, [r0]
	ldr r0, _08003DB8 @ =gUnk_03002960
	ldr r2, _08003DBC @ =sub_08003D64
	movs r1, #1
	bl sub_08002D38
	movs r2, #0xa0
	lsls r2, r2, #0x13
	ldr r3, _08003DC0 @ =0x20400001
	movs r0, #2
	adds r1, r4, #0
	bl sub_08000E7C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003DB4: .4byte gUnk_02003768
_08003DB8: .4byte gUnk_03002960
_08003DBC: .4byte sub_08003D64
_08003DC0: .4byte 0x20400001

	thumb_func_start sub_08003DC4
sub_08003DC4: @ 0x08003DC4
	push {lr}
	ldr r1, _08003DDC @ =gUnk_02002400
	strh r0, [r1]
	movs r0, #2
	bl sub_08000EC4
	ldr r0, _08003DE0 @ =gUnk_03002960
	bl sub_08002E30
	pop {r0}
	bx r0
	.align 2, 0
_08003DDC: .4byte gUnk_02002400
_08003DE0: .4byte gUnk_03002960

	thumb_func_start sub_08003DE4
sub_08003DE4: @ 0x08003DE4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08003DFC @ =gUnk_03000DD0
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0]
	bx lr
	.align 2, 0
_08003DFC: .4byte gUnk_03000DD0

	thumb_func_start sub_08003E00
sub_08003E00: @ 0x08003E00
	push {r4, lr}
	ldrb r0, [r1]
	cmp r0, #0x29
	bls _08003E0A
	b _08003F9E
_08003E0A:
	lsls r0, r0, #2
	ldr r1, _08003E14 @ =_08003E18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003E14: .4byte _08003E18
_08003E18: @ jump table
	.4byte _08003EC0 @ case 0
	.4byte _08003ED8 @ case 1
	.4byte _08003EF8 @ case 2
	.4byte _08003F9E @ case 3
	.4byte _08003F9E @ case 4
	.4byte _08003F9E @ case 5
	.4byte _08003F9E @ case 6
	.4byte _08003F9E @ case 7
	.4byte _08003F9E @ case 8
	.4byte _08003F9E @ case 9
	.4byte _08003F38 @ case 10
	.4byte _08003F9E @ case 11
	.4byte _08003F9E @ case 12
	.4byte _08003F9E @ case 13
	.4byte _08003F9E @ case 14
	.4byte _08003F9E @ case 15
	.4byte _08003F9E @ case 16
	.4byte _08003F9E @ case 17
	.4byte _08003F9E @ case 18
	.4byte _08003F9E @ case 19
	.4byte _08003F9E @ case 20
	.4byte _08003F9E @ case 21
	.4byte _08003F9E @ case 22
	.4byte _08003F9E @ case 23
	.4byte _08003F9E @ case 24
	.4byte _08003F9E @ case 25
	.4byte _08003F9E @ case 26
	.4byte _08003F9E @ case 27
	.4byte _08003F9E @ case 28
	.4byte _08003F9E @ case 29
	.4byte _08003F48 @ case 30
	.4byte _08003F58 @ case 31
	.4byte _08003F9E @ case 32
	.4byte _08003F9E @ case 33
	.4byte _08003F9E @ case 34
	.4byte _08003F9E @ case 35
	.4byte _08003F9E @ case 36
	.4byte _08003F9E @ case 37
	.4byte _08003F9E @ case 38
	.4byte _08003F9E @ case 39
	.4byte _08003F68 @ case 40
	.4byte _08003F94 @ case 41
_08003EC0:
	bl sub_08003D24
	ldr r4, _08003ED0 @ =gUnk_03000E60
	adds r0, r4, #0
	bl sub_08002DC0
	ldr r1, _08003ED4 @ =sub_08004064
	b _08003EE6
	.align 2, 0
_08003ED0: .4byte gUnk_03000E60
_08003ED4: .4byte sub_08004064
_08003ED8:
	bl sub_08003D24
	ldr r4, _08003EF0 @ =gUnk_03000E60
	adds r0, r4, #0
	bl sub_08002DC0
	ldr r1, _08003EF4 @ =sub_081547D4
_08003EE6:
	adds r0, r4, #0
	bl sub_08002D18
	b _08003F9E
	.align 2, 0
_08003EF0: .4byte gUnk_03000E60
_08003EF4: .4byte sub_081547D4
_08003EF8:
	ldr r1, _08003F1C @ =gUnk_02000000
	ldr r2, _08003F20 @ =0x000013B8
	adds r0, r1, r2
	ldr r2, _08003F24 @ =0x000003E7
	strh r2, [r0]
	ldr r3, _08003F28 @ =0x000013B6
	adds r0, r1, r3
	strh r2, [r0]
	ldr r0, _08003F2C @ =0x000013B4
	adds r1, r1, r0
	strh r2, [r1]
	movs r0, #3
	bl sub_08157AD0
	ldr r0, _08003F30 @ =gUnk_03000E60
	ldr r2, _08003F34 @ =sub_08157534
	b _08003F7A
	.align 2, 0
_08003F1C: .4byte gUnk_02000000
_08003F20: .4byte 0x000013B8
_08003F24: .4byte 0x000003E7
_08003F28: .4byte 0x000013B6
_08003F2C: .4byte 0x000013B4
_08003F30: .4byte gUnk_03000E60
_08003F34: .4byte sub_08157534
_08003F38:
	ldr r0, _08003F40 @ =gUnk_03000E60
	ldr r2, _08003F44 @ =sub_08151990
	b _08003F7A
	.align 2, 0
_08003F40: .4byte gUnk_03000E60
_08003F44: .4byte sub_08151990
_08003F48:
	ldr r0, _08003F50 @ =gUnk_03000E60
	ldr r2, _08003F54 @ =sub_08003FD4
	b _08003F7A
	.align 2, 0
_08003F50: .4byte gUnk_03000E60
_08003F54: .4byte sub_08003FD4
_08003F58:
	ldr r0, _08003F60 @ =gUnk_03000E60
	ldr r2, _08003F64 @ =sub_08003FAC
	b _08003F7A
	.align 2, 0
_08003F60: .4byte gUnk_03000E60
_08003F64: .4byte sub_08003FAC
_08003F68:
	bl sub_08144258
	ldr r1, _08003F84 @ =gUnk_03000E50
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08003F88 @ =sub_08003E00
	str r0, [r1, #4]
	ldr r0, _08003F8C @ =gUnk_03000E60
	ldr r2, _08003F90 @ =sub_08127C3C
_08003F7A:
	movs r1, #1
	bl sub_08002D38
	b _08003F9E
	.align 2, 0
_08003F84: .4byte gUnk_03000E50
_08003F88: .4byte sub_08003E00
_08003F8C: .4byte gUnk_03000E60
_08003F90: .4byte sub_08127C3C
_08003F94:
	ldr r0, _08003FA4 @ =gUnk_03000E60
	ldr r2, _08003FA8 @ =sub_0804767C
	movs r1, #1
	bl sub_08002D38
_08003F9E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003FA4: .4byte gUnk_03000E60
_08003FA8: .4byte sub_0804767C

	thumb_func_start sub_08003FAC
sub_08003FAC: @ 0x08003FAC
	push {lr}
	ldr r0, _08003FC8 @ =gUnk_02004440
	movs r1, #0
	movs r2, #0
	bl sub_08152FA4
	ldr r0, _08003FCC @ =gUnk_03000E60
	ldr r2, _08003FD0 @ =sub_081531AC
	movs r1, #1
	bl sub_08002D38
	pop {r0}
	bx r0
	.align 2, 0
_08003FC8: .4byte gUnk_02004440
_08003FCC: .4byte gUnk_03000E60
_08003FD0: .4byte sub_081531AC

	thumb_func_start sub_08003FD4
sub_08003FD4: @ 0x08003FD4
	push {lr}
	ldrb r0, [r1]
	cmp r0, #0
	bne _08003FEA
	bl sub_081186F4
	ldr r0, _08003FF0 @ =gUnk_03000E60
	ldr r2, _08003FF4 @ =sub_0804767C
	movs r1, #1
	bl sub_08002D38
_08003FEA:
	pop {r0}
	bx r0
	.align 2, 0
_08003FF0: .4byte gUnk_03000E60
_08003FF4: .4byte sub_0804767C
