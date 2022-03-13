	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start __ashldi3
__ashldi3: @ 0x08159AA8
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _08159AD8
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _08159AC4
	movs r3, #0
	rsbs r0, r0, #0
	adds r4, r5, #0
	lsls r4, r0
	b _08159AD4
_08159AC4:
	adds r1, r5, #0
	lsrs r1, r0
	adds r3, r5, #0
	lsls r3, r2
	adds r0, r6, #0
	lsls r0, r2
	adds r4, r0, #0
	orrs r4, r1
_08159AD4:
	adds r1, r4, #0
	adds r0, r3, #0
_08159AD8:
	pop {r4, r5, r6}
	pop {r2}
	bx r2
	.align 2, 0

	thumb_func_start _call_via_r0
_call_via_r0: @ 0x08159AE0
	bx r0
	nop

	thumb_func_start _call_via_r1
_call_via_r1: @ 0x08159AE4
	bx r1
	nop

	thumb_func_start _call_via_r2
_call_via_r2: @ 0x08159AE8
	bx r2
	nop

	thumb_func_start _call_via_r3
_call_via_r3: @ 0x08159AEC
	bx r3
	nop

	thumb_func_start _call_via_r4
_call_via_r4: @ 0x08159AF0
	bx r4
	nop

	thumb_func_start _call_via_r5
_call_via_r5: @ 0x08159AF4
	bx r5
	nop

	thumb_func_start _call_via_r6
_call_via_r6: @ 0x08159AF8
	bx r6
	nop

	thumb_func_start _call_via_r7
_call_via_r7: @ 0x08159AFC
	bx r7
	nop

	thumb_func_start _call_via_r8
_call_via_r8: @ 0x08159B00
	bx r8
	nop

	thumb_func_start _call_via_r9
_call_via_r9: @ 0x08159B04
	bx sb
	nop

	thumb_func_start _call_via_sl
_call_via_sl: @ 0x08159B08
	bx sl
	nop

	thumb_func_start _call_via_fp
_call_via_fp: @ 0x08159B0C
	bx fp
	nop

	thumb_func_start _call_via_ip
_call_via_ip: @ 0x08159B10
	bx ip
	nop

	thumb_func_start _call_via_sp
_call_via_sp: @ 0x08159B14
	bx sp
	nop

	thumb_func_start _call_via_lr
_call_via_lr: @ 0x08159B18
	bx lr
	nop

	thumb_func_start __divsi3
__divsi3: @ 0x08159B1C
	cmp r1, #0
	beq _08159BA4
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _08159B32
	rsbs r1, r1, #0
_08159B32:
	cmp r0, #0
	bpl _08159B38
	rsbs r0, r0, #0
_08159B38:
	cmp r0, r1
	blo _08159B96
	movs r4, #1
	lsls r4, r4, #0x1c
_08159B40:
	cmp r1, r4
	bhs _08159B4E
	cmp r1, r0
	bhs _08159B4E
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08159B40
_08159B4E:
	lsls r4, r4, #3
_08159B50:
	cmp r1, r4
	bhs _08159B5E
	cmp r1, r0
	bhs _08159B5E
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08159B50
_08159B5E:
	cmp r0, r1
	blo _08159B66
	subs r0, r0, r1
	orrs r2, r3
_08159B66:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08159B72
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08159B72:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08159B7E
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08159B7E:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08159B8A
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08159B8A:
	cmp r0, #0
	beq _08159B96
	lsrs r3, r3, #4
	beq _08159B96
	lsrs r1, r1, #4
	b _08159B5E
_08159B96:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _08159BA0
	rsbs r0, r0, #0
_08159BA0:
	pop {r4}
	mov pc, lr
_08159BA4:
	push {lr}
	bl nullsub_1
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_1
nullsub_1: @ 0x08159BB0
	mov pc, lr
	.align 2, 0

	thumb_func_start __fixunsdfsi
__fixunsdfsi: @ 0x08159BB4
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r3, _08159BD4 @ =0x00000000
	ldr r2, _08159BD0 @ =0x41E00000
	bl __gedf2
	cmp r0, #0
	bge _08159BD8
	adds r1, r5, #0
	adds r0, r4, #0
	bl __fixdfsi
	b _08159BEE
	.align 2, 0
_08159BD0: .4byte 0x41E00000
_08159BD4: .4byte 0x00000000
_08159BD8:
	ldr r3, _08159BF8 @ =0x00000000
	ldr r2, _08159BF4 @ =0xC1E00000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	bl __fixdfsi
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r0, r0, r1
_08159BEE:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08159BF4: .4byte 0xC1E00000
_08159BF8: .4byte 0x00000000

	thumb_func_start __fixunssfsi
__fixunssfsi: @ 0x08159BFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08159C14 @ =0x4F000000
	bl __gesf2
	cmp r0, #0
	bge _08159C18
	adds r0, r4, #0
	bl __fixsfsi
	b _08159C2A
	.align 2, 0
_08159C14: .4byte 0x4F000000
_08159C18:
	ldr r1, _08159C30 @ =0xCF000000
	adds r0, r4, #0
	bl __addsf3
	bl __fixsfsi
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r0, r0, r1
_08159C2A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08159C30: .4byte 0xCF000000

	thumb_func_start __modsi3
__modsi3: @ 0x08159C34
	movs r3, #1
	cmp r1, #0
	beq _08159CF8
	bpl _08159C3E
	rsbs r1, r1, #0
_08159C3E:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _08159C48
	rsbs r0, r0, #0
_08159C48:
	cmp r0, r1
	blo _08159CEC
	movs r4, #1
	lsls r4, r4, #0x1c
_08159C50:
	cmp r1, r4
	bhs _08159C5E
	cmp r1, r0
	bhs _08159C5E
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08159C50
_08159C5E:
	lsls r4, r4, #3
_08159C60:
	cmp r1, r4
	bhs _08159C6E
	cmp r1, r0
	bhs _08159C6E
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08159C60
_08159C6E:
	movs r2, #0
	cmp r0, r1
	blo _08159C76
	subs r0, r0, r1
_08159C76:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08159C88
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08159C88:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08159C9A
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08159C9A:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08159CAC
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08159CAC:
	mov ip, r3
	cmp r0, #0
	beq _08159CBA
	lsrs r3, r3, #4
	beq _08159CBA
	lsrs r1, r1, #4
	b _08159C6E
_08159CBA:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _08159CEC
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08159CD0
	lsrs r4, r1, #3
	adds r0, r0, r4
_08159CD0:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08159CDE
	lsrs r4, r1, #2
	adds r0, r0, r4
_08159CDE:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08159CEC
	lsrs r4, r1, #1
	adds r0, r0, r4
_08159CEC:
	pop {r4}
	cmp r4, #0
	bpl _08159CF4
	rsbs r0, r0, #0
_08159CF4:
	pop {r4}
	mov pc, lr
_08159CF8:
	push {lr}
	bl nullsub_1
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start __udivsi3
__udivsi3: @ 0x08159D04
	cmp r1, #0
	beq _08159D72
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _08159D6C
	movs r4, #1
	lsls r4, r4, #0x1c
_08159D16:
	cmp r1, r4
	bhs _08159D24
	cmp r1, r0
	bhs _08159D24
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08159D16
_08159D24:
	lsls r4, r4, #3
_08159D26:
	cmp r1, r4
	bhs _08159D34
	cmp r1, r0
	bhs _08159D34
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08159D26
_08159D34:
	cmp r0, r1
	blo _08159D3C
	subs r0, r0, r1
	orrs r2, r3
_08159D3C:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08159D48
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08159D48:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08159D54
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08159D54:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08159D60
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08159D60:
	cmp r0, #0
	beq _08159D6C
	lsrs r3, r3, #4
	beq _08159D6C
	lsrs r1, r1, #4
	b _08159D34
_08159D6C:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_08159D72:
	push {lr}
	bl nullsub_1
	movs r0, #0
	pop {pc}

	thumb_func_start __umodsi3
__umodsi3: @ 0x08159D7C
	cmp r1, #0
	beq _08159E32
	movs r3, #1
	cmp r0, r1
	bhs _08159D88
	mov pc, lr
_08159D88:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_08159D8E:
	cmp r1, r4
	bhs _08159D9C
	cmp r1, r0
	bhs _08159D9C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08159D8E
_08159D9C:
	lsls r4, r4, #3
_08159D9E:
	cmp r1, r4
	bhs _08159DAC
	cmp r1, r0
	bhs _08159DAC
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08159D9E
_08159DAC:
	movs r2, #0
	cmp r0, r1
	blo _08159DB4
	subs r0, r0, r1
_08159DB4:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08159DC6
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08159DC6:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08159DD8
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08159DD8:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08159DEA
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08159DEA:
	mov ip, r3
	cmp r0, #0
	beq _08159DF8
	lsrs r3, r3, #4
	beq _08159DF8
	lsrs r1, r1, #4
	b _08159DAC
_08159DF8:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _08159E04
	pop {r4}
	mov pc, lr
_08159E04:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08159E12
	lsrs r4, r1, #3
	adds r0, r0, r4
_08159E12:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08159E20
	lsrs r4, r1, #2
	adds r0, r0, r4
_08159E20:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08159E2E
	lsrs r4, r1, #1
	adds r0, r0, r4
_08159E2E:
	pop {r4}
	mov pc, lr
_08159E32:
	push {lr}
	bl nullsub_1
	movs r0, #0
	pop {pc}

	thumb_func_start __pack_d
__pack_d: @ 0x08159E3C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _08159E54
	movs r2, #1
_08159E54:
	cmp r2, #0
	beq _08159E74
	ldr r6, _08159E68 @ =0x000007FF
	ldr r2, _08159E6C @ =0x00000000
	ldr r3, _08159E70 @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _08159F2C
	.align 2, 0
_08159E68: .4byte 0x000007FF
_08159E6C: .4byte 0x00000000
_08159E70: .4byte 0x00080000
_08159E74:
	movs r2, #0
	cmp r0, #4
	bne _08159E7C
	movs r2, #1
_08159E7C:
	cmp r2, #0
	bne _08159EC8
	movs r2, #0
	cmp r0, #2
	bne _08159E88
	movs r2, #1
_08159E88:
	cmp r2, #0
	beq _08159E92
	movs r4, #0
	movs r5, #0
	b _08159F30
_08159E92:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _08159F30
	ldr r2, [r1, #8]
	ldr r0, _08159EB0 @ =0xFFFFFC02
	cmp r2, r0
	bge _08159EC2
	subs r2, r0, r2
	cmp r2, #0x38
	ble _08159EB4
	movs r4, #0
	movs r5, #0
	b _08159F22
	.align 2, 0
_08159EB0: .4byte 0xFFFFFC02
_08159EB4:
	adds r1, r5, #0
	adds r0, r4, #0
	bl __lshrdi3
	adds r5, r1, #0
	adds r4, r0, #0
	b _08159F22
_08159EC2:
	ldr r0, _08159ED0 @ =0x000003FF
	cmp r2, r0
	ble _08159ED8
_08159EC8:
	ldr r6, _08159ED4 @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _08159F30
	.align 2, 0
_08159ED0: .4byte 0x000003FF
_08159ED4: .4byte 0x000007FF
_08159ED8:
	ldr r0, _08159F00 @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _08159F04
	cmp r2, #0
	bne _08159F04
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _08159F0C
	movs r0, #0x80
	movs r1, #0
	b _08159F08
	.align 2, 0
_08159F00: .4byte 0x000003FF
_08159F04:
	movs r0, #0x7f
	movs r1, #0
_08159F08:
	adds r4, r4, r0
	adcs r5, r1
_08159F0C:
	ldr r0, _08159F74 @ =0x1FFFFFFF
	cmp r5, r0
	bls _08159F22
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_08159F22:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_08159F2C:
	adds r5, r1, #0
	adds r4, r0, #0
_08159F30:
	str r4, [sp]
	ldr r2, _08159F78 @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _08159F7C @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _08159F80 @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _08159F84 @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.align 2, 0
_08159F74: .4byte 0x1FFFFFFF
_08159F78: .4byte 0x000FFFFF
_08159F7C: .4byte 0xFFF00000
_08159F80: .4byte 0x000007FF
_08159F84: .4byte 0xFFFF800F

	thumb_func_start __unpack_d
__unpack_d: @ 0x08159F88
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _08159FFC
	orrs r1, r5
	cmp r1, #0
	bne _08159FBC
	movs r0, #2
	str r0, [r6]
	b _0815A050
_08159FBC:
	ldr r0, _08159FF4 @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _08159FF8 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _0815A02C
	adds r7, r0, #0
_08159FDA:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _08159FDA
	b _0815A02C
	.align 2, 0
_08159FF4: .4byte 0xFFFFFC02
_08159FF8: .4byte 0x0FFFFFFF
_08159FFC:
	ldr r0, _0815A010 @ =0x000007FF
	cmp r3, r0
	bne _0815A032
	orrs r1, r5
	cmp r1, #0
	bne _0815A014
	movs r0, #4
	str r0, [r6]
	b _0815A050
	.align 2, 0
_0815A010: .4byte 0x000007FF
_0815A014:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _0815A02A
	movs r0, #1
	str r0, [r6]
	b _0815A02C
_0815A02A:
	str r1, [r6]
_0815A02C:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _0815A050
_0815A032:
	ldr r1, _0815A058 @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _0815A05C @ =0x00000000
	ldr r3, _0815A060 @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_0815A050:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815A058: .4byte 0xFFFFFC01
_0815A05C: .4byte 0x00000000
_0815A060: .4byte 0x10000000

	thumb_func_start _fpadd_parts
_fpadd_parts: @ 0x0815A064
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _0815A080
	movs r0, #1
_0815A080:
	cmp r0, #0
	beq _0815A088
_0815A084:
	adds r0, r3, #0
	b _0815A2C0
_0815A088:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _0815A092
	movs r1, #1
_0815A092:
	cmp r1, #0
	bne _0815A10A
	movs r1, #0
	cmp r2, #4
	bne _0815A09E
	movs r1, #1
_0815A09E:
	cmp r1, #0
	beq _0815A0C0
	movs r1, #0
	cmp r0, #4
	bne _0815A0AA
	movs r1, #1
_0815A0AA:
	cmp r1, #0
	beq _0815A084
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _0815A084
	ldr r0, _0815A0BC @ =gUnk_03003F10
	b _0815A2C0
	.align 2, 0
_0815A0BC: .4byte gUnk_03003F10
_0815A0C0:
	movs r1, #0
	cmp r0, #4
	bne _0815A0C8
	movs r1, #1
_0815A0C8:
	cmp r1, #0
	bne _0815A10A
	movs r1, #0
	cmp r0, #2
	bne _0815A0D4
	movs r1, #1
_0815A0D4:
	cmp r1, #0
	beq _0815A0FC
	movs r0, #0
	cmp r2, #2
	bne _0815A0E0
	movs r0, #1
_0815A0E0:
	cmp r0, #0
	beq _0815A084
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _0815A2BE
_0815A0FC:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _0815A106
	movs r1, #1
_0815A106:
	cmp r1, #0
	beq _0815A10E
_0815A10A:
	adds r0, r4, #0
	b _0815A2C0
_0815A10E:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _0815A12E
	rsbs r0, r0, #0
_0815A12E:
	cmp r0, #0x3f
	bgt _0815A1AC
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _0815A178
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_0815A146:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _0815A146
	mov r8, sb
_0815A178:
	cmp r8, sb
	ble _0815A1C8
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_0815A184:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _0815A184
	mov sb, r8
	b _0815A1C8
_0815A1AC:
	cmp sb, r8
	ble _0815A1BA
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _0815A1C0
_0815A1BA:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_0815A1C0:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_0815A1C8:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _0815A270
	mov r2, ip
	cmp r2, #0
	beq _0815A1EA
	adds r1, r7, #0
	adds r0, r6, #0
	bl __negdi2
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _0815A1F6
_0815A1EA:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_0815A1F6:
	cmp r3, #0
	blt _0815A20C
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _0815A224
_0815A20C:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl __negdi2
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_0815A224:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_0815A230:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _0815A26C @ =0x0FFFFFFF
	cmp r3, r0
	bhi _0815A288
	cmp r3, r0
	bne _0815A246
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _0815A288
_0815A246:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _0815A230
	.align 2, 0
_0815A26C: .4byte 0x0FFFFFFF
_0815A270:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_0815A288:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _0815A2D0 @ =0x1FFFFFFF
	cmp r1, r0
	bls _0815A2BE
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_0815A2BE:
	mov r0, sl
_0815A2C0:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0815A2D0: .4byte 0x1FFFFFFF

	thumb_func_start __adddf3
__adddf3: @ 0x0815A2D4
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4}
	pop {r2}
	bx r2

	thumb_func_start __subdf3
__subdf3: @ 0x0815A308
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4}
	pop {r2}
	bx r2

	thumb_func_start __muldf3
__muldf3: @ 0x0815A344
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _0815A37A
	movs r0, #1
_0815A37A:
	cmp r0, #0
	bne _0815A3DE
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815A388
	movs r2, #1
_0815A388:
	cmp r2, #0
	beq _0815A390
	ldr r0, [sp, #4]
	b _0815A400
_0815A390:
	movs r2, #0
	cmp r1, #4
	bne _0815A398
	movs r2, #1
_0815A398:
	cmp r2, #0
	beq _0815A3AA
	movs r1, #0
	cmp r0, #2
	bne _0815A3A4
	movs r1, #1
_0815A3A4:
	cmp r1, #0
	bne _0815A3C2
	b _0815A3DE
_0815A3AA:
	movs r2, #0
	cmp r0, #4
	bne _0815A3B2
	movs r2, #1
_0815A3B2:
	cmp r2, #0
	beq _0815A3D2
	movs r0, #0
	cmp r1, #2
	bne _0815A3BE
	movs r0, #1
_0815A3BE:
	cmp r0, #0
	beq _0815A3CC
_0815A3C2:
	ldr r0, _0815A3C8 @ =gUnk_03003F10
	b _0815A5CA
	.align 2, 0
_0815A3C8: .4byte gUnk_03003F10
_0815A3CC:
	mov r1, r8
	ldr r0, [r1, #4]
	b _0815A400
_0815A3D2:
	movs r2, #0
	cmp r1, #2
	bne _0815A3DA
	movs r2, #1
_0815A3DA:
	cmp r2, #0
	beq _0815A3F0
_0815A3DE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0815A5CA
_0815A3F0:
	movs r1, #0
	cmp r0, #2
	bne _0815A3F8
	movs r1, #1
_0815A3F8:
	cmp r1, #0
	beq _0815A410
	mov r2, r8
	ldr r0, [r2, #4]
_0815A400:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _0815A5CA
_0815A410:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _0815A488
	cmp r7, r3
	bne _0815A490
	cmp r6, r2
	bls _0815A490
_0815A488:
	ldr r5, _0815A5E4 @ =0x00000001
	ldr r4, _0815A5E0 @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_0815A490:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _0815A4AC
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _0815A4BC
	cmp r0, r6
	bls _0815A4BC
_0815A4AC:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_0815A4BC:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _0815A5E8 @ =0x1FFFFFFF
	cmp r5, r0
	bls _0815A53E
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_0815A502:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _0815A528
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_0815A528:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _0815A502
	mov r0, ip
	str r0, [sp, #0x30]
_0815A53E:
	ldr r0, _0815A5EC @ =0x0FFFFFFF
	cmp r5, r0
	bhi _0815A590
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_0815A550:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _0815A57A
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_0815A57A:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _0815A550
	mov r1, ip
	str r1, [sp, #0x30]
_0815A590:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0815A5BE
	cmp r2, #0
	bne _0815A5BE
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0815A5B6
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _0815A5BE
_0815A5B6:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_0815A5BE:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_0815A5CA:
	bl __pack_d
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.align 2, 0
_0815A5E0: .4byte 0x00000000
_0815A5E4: .4byte 0x00000001
_0815A5E8: .4byte 0x1FFFFFFF
_0815A5EC: .4byte 0x0FFFFFFF

	thumb_func_start __divdf3
__divdf3: @ 0x0815A5F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _0815A61A
	movs r0, #1
_0815A61A:
	cmp r0, #0
	beq _0815A622
	mov r1, sp
	b _0815A764
_0815A622:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _0815A62E
	movs r0, #1
_0815A62E:
	cmp r0, #0
	beq _0815A636
	adds r1, r4, #0
	b _0815A764
_0815A636:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _0815A646
	movs r0, #1
_0815A646:
	cmp r0, #0
	bne _0815A656
	movs r4, #0
	cmp r3, #2
	bne _0815A652
	movs r4, #1
_0815A652:
	cmp r4, #0
	beq _0815A668
_0815A656:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _0815A660
	b _0815A764
_0815A660:
	ldr r1, _0815A664 @ =gUnk_03003F10
	b _0815A764
	.align 2, 0
_0815A664: .4byte gUnk_03003F10
_0815A668:
	movs r0, #0
	cmp r2, #4
	bne _0815A670
	movs r0, #1
_0815A670:
	cmp r0, #0
	beq _0815A682
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _0815A764
_0815A682:
	movs r0, #0
	cmp r2, #2
	bne _0815A68A
	movs r0, #1
_0815A68A:
	cmp r0, #0
	beq _0815A696
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _0815A762
_0815A696:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _0815A6BA
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _0815A6CE
	cmp r0, r4
	bls _0815A6CE
_0815A6BA:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_0815A6CE:
	ldr r7, _0815A778 @ =0x10000000
	ldr r6, _0815A774 @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0815A6DA:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _0815A6FE
	cmp r1, r5
	bne _0815A6EA
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _0815A6FE
_0815A6EA:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_0815A6FE:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _0815A6DA
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0815A758
	cmp r2, #0
	bne _0815A758
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0815A748
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _0815A758
_0815A748:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_0815A758:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_0815A762:
	mov r1, ip
_0815A764:
	adds r0, r1, #0
	bl __pack_d
	add sp, #0x48
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.align 2, 0
_0815A774: .4byte 0x00000000
_0815A778: .4byte 0x10000000

	thumb_func_start __fpcmp_parts_d
__fpcmp_parts_d: @ 0x0815A77C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _0815A78C
	movs r0, #1
_0815A78C:
	cmp r0, #0
	bne _0815A79E
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0815A79A
	movs r0, #1
_0815A79A:
	cmp r0, #0
	beq _0815A7A2
_0815A79E:
	movs r0, #1
	b _0815A878
_0815A7A2:
	movs r0, #0
	cmp r1, #4
	bne _0815A7AA
	movs r0, #1
_0815A7AA:
	cmp r0, #0
	beq _0815A7C2
	movs r0, #0
	cmp r2, #4
	bne _0815A7B6
	movs r0, #1
_0815A7B6:
	cmp r0, #0
	beq _0815A7C2
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _0815A878
_0815A7C2:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _0815A7CC
	movs r1, #1
_0815A7CC:
	cmp r1, #0
	bne _0815A81A
	movs r1, #0
	cmp r2, #4
	bne _0815A7D8
	movs r1, #1
_0815A7D8:
	cmp r1, #0
	beq _0815A7EA
_0815A7DC:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0815A824
	movs r1, #1
	b _0815A824
_0815A7EA:
	movs r1, #0
	cmp r0, #2
	bne _0815A7F2
	movs r1, #1
_0815A7F2:
	cmp r1, #0
	beq _0815A802
	movs r1, #0
	cmp r2, #2
	bne _0815A7FE
	movs r1, #1
_0815A7FE:
	cmp r1, #0
	bne _0815A876
_0815A802:
	movs r1, #0
	cmp r0, #2
	bne _0815A80A
	movs r1, #1
_0815A80A:
	cmp r1, #0
	bne _0815A7DC
	movs r0, #0
	cmp r2, #2
	bne _0815A816
	movs r0, #1
_0815A816:
	cmp r0, #0
	beq _0815A828
_0815A81A:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _0815A824
	subs r1, #2
_0815A824:
	adds r0, r1, #0
	b _0815A878
_0815A828:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _0815A83A
_0815A830:
	movs r0, #1
	cmp r4, #0
	beq _0815A878
	subs r0, #2
	b _0815A878
_0815A83A:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _0815A830
	cmp r1, r0
	bge _0815A852
_0815A846:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _0815A878
	movs r0, #1
	b _0815A878
_0815A852:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _0815A830
	cmp r3, r2
	bne _0815A866
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _0815A830
_0815A866:
	cmp r2, r3
	bhi _0815A846
	cmp r2, r3
	bne _0815A876
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _0815A846
_0815A876:
	movs r0, #0
_0815A878:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __cmpdf2
__cmpdf2: @ 0x0815A880
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
	add sp, #0x38
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __eqdf2
__eqdf2: @ 0x0815A8B0
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815A8D8
	movs r1, #1
_0815A8D8:
	cmp r1, #0
	bne _0815A8EA
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815A8E6
	movs r1, #1
_0815A8E6:
	cmp r1, #0
	beq _0815A8EE
_0815A8EA:
	movs r0, #1
	b _0815A8F6
_0815A8EE:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0815A8F6:
	add sp, #0x38
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __nedf2
__nedf2: @ 0x0815A900
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815A928
	movs r1, #1
_0815A928:
	cmp r1, #0
	bne _0815A93A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815A936
	movs r1, #1
_0815A936:
	cmp r1, #0
	beq _0815A93E
_0815A93A:
	movs r0, #1
	b _0815A946
_0815A93E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0815A946:
	add sp, #0x38
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __gtdf2
__gtdf2: @ 0x0815A950
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815A978
	movs r1, #1
_0815A978:
	cmp r1, #0
	bne _0815A98A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815A986
	movs r1, #1
_0815A986:
	cmp r1, #0
	beq _0815A990
_0815A98A:
	movs r0, #1
	rsbs r0, r0, #0
	b _0815A998
_0815A990:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0815A998:
	add sp, #0x38
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start __gedf2
__gedf2: @ 0x0815A9A0
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815A9C8
	movs r1, #1
_0815A9C8:
	cmp r1, #0
	bne _0815A9DA
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815A9D6
	movs r1, #1
_0815A9D6:
	cmp r1, #0
	beq _0815A9E0
_0815A9DA:
	movs r0, #1
	rsbs r0, r0, #0
	b _0815A9E8
_0815A9E0:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0815A9E8:
	add sp, #0x38
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start __ltdf2
__ltdf2: @ 0x0815A9F0
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815AA18
	movs r1, #1
_0815AA18:
	cmp r1, #0
	bne _0815AA2A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815AA26
	movs r1, #1
_0815AA26:
	cmp r1, #0
	beq _0815AA2E
_0815AA2A:
	movs r0, #1
	b _0815AA36
_0815AA2E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0815AA36:
	add sp, #0x38
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __ledf2
__ledf2: @ 0x0815AA40
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815AA68
	movs r1, #1
_0815AA68:
	cmp r1, #0
	bne _0815AA7A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0815AA76
	movs r1, #1
_0815AA76:
	cmp r1, #0
	beq _0815AA7E
_0815AA7A:
	movs r0, #1
	b _0815AA86
_0815AA7E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_0815AA86:
	add sp, #0x38
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __floatsidf
__floatsidf: @ 0x0815AA90
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _0815AAA8
	movs r0, #2
	str r0, [sp]
	b _0815AAFE
_0815AAA8:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _0815AACE
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _0815AAC8
	ldr r1, _0815AAC4 @ =0x00000000
	ldr r0, _0815AAC0 @ =0xC1E00000
	b _0815AB04
	.align 2, 0
_0815AAC0: .4byte 0xC1E00000
_0815AAC4: .4byte 0x00000000
_0815AAC8:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _0815AAD2
_0815AACE:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_0815AAD2:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _0815AB0C @ =0x0FFFFFFF
	cmp r0, r1
	bhi _0815AAFE
	adds r5, r1, #0
	ldr r4, [sp, #8]
_0815AAE2:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _0815AAE2
	str r4, [sp, #8]
_0815AAFE:
	mov r0, sp
	bl __pack_d
_0815AB04:
	add sp, #0x14
	pop {r4, r5}
	pop {r2}
	bx r2
	.align 2, 0
_0815AB0C: .4byte 0x0FFFFFFF

	thumb_func_start __fixdfsi
__fixdfsi: @ 0x0815AB10
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0815AB2A
	movs r1, #1
_0815AB2A:
	cmp r1, #0
	bne _0815AB5E
	movs r1, #0
	cmp r0, #1
	bhi _0815AB36
	movs r1, #1
_0815AB36:
	cmp r1, #0
	bne _0815AB5E
	movs r1, #0
	cmp r0, #4
	bne _0815AB42
	movs r1, #1
_0815AB42:
	cmp r1, #0
	beq _0815AB58
_0815AB46:
	ldr r0, [sp, #4]
	ldr r1, _0815AB54 @ =0x7FFFFFFF
	cmp r0, #0
	beq _0815AB7C
	adds r1, #1
	b _0815AB7C
	.align 2, 0
_0815AB54: .4byte 0x7FFFFFFF
_0815AB58:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _0815AB62
_0815AB5E:
	movs r0, #0
	b _0815AB7E
_0815AB62:
	cmp r0, #0x1e
	bgt _0815AB46
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __lshrdi3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0815AB7C
	rsbs r1, r1, #0
_0815AB7C:
	adds r0, r1, #0
_0815AB7E:
	add sp, #0x1c
	pop {r1}
	bx r1

	thumb_func_start __negdf2
__negdf2: @ 0x0815AB84
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0815AB9E
	movs r1, #1
_0815AB9E:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_d
	add sp, #0x1c
	pop {r2}
	bx r2

	thumb_func_start __make_dp
__make_dp: @ 0x0815ABAC
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl __pack_d
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start __truncdfsf2
__truncdfsf2: @ 0x0815ABD4
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _0815AC18 @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _0815AC04
	movs r0, #1
	orrs r5, r0
_0815AC04:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl __make_fp
	add sp, #0x1c
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0815AC18: .4byte 0x3FFFFFFF

	thumb_func_start __pack_f
__pack_f: @ 0x0815AC1C
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _0815AC2E
	movs r1, #1
_0815AC2E:
	cmp r1, #0
	beq _0815AC3C
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _0815ACA2
_0815AC3C:
	movs r1, #0
	cmp r3, #4
	bne _0815AC44
	movs r1, #1
_0815AC44:
	cmp r1, #0
	bne _0815AC78
	movs r1, #0
	cmp r3, #2
	bne _0815AC50
	movs r1, #1
_0815AC50:
	cmp r1, #0
	beq _0815AC58
	movs r2, #0
	b _0815ACA2
_0815AC58:
	cmp r2, #0
	beq _0815ACA2
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _0815AC74
	subs r0, r3, r0
	cmp r0, #0x19
	ble _0815AC70
	movs r2, #0
	b _0815ACA0
_0815AC70:
	lsrs r2, r0
	b _0815ACA0
_0815AC74:
	cmp r0, #0x7f
	ble _0815AC7E
_0815AC78:
	movs r5, #0xff
	movs r2, #0
	b _0815ACA2
_0815AC7E:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _0815AC96
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0815AC98
	adds r2, #0x40
	b _0815AC98
_0815AC96:
	adds r2, #0x3f
_0815AC98:
	cmp r2, #0
	bge _0815ACA0
	lsrs r2, r2, #1
	adds r5, #1
_0815ACA0:
	lsrs r2, r2, #7
_0815ACA2:
	ldr r0, _0815ACC8 @ =0x007FFFFF
	ands r2, r0
	ldr r0, _0815ACCC @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _0815ACD0 @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _0815ACD4 @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0815ACC8: .4byte 0x007FFFFF
_0815ACCC: .4byte 0xFF800000
_0815ACD0: .4byte 0x807FFFFF
_0815ACD4: .4byte 0x7FFFFFFF

	thumb_func_start __unpack_f
__unpack_f: @ 0x0815ACD8
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _0815AD1C
	cmp r2, #0
	bne _0815ACF8
	movs r0, #2
	str r0, [r3]
	b _0815AD50
_0815ACF8:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _0815AD18 @ =0x3FFFFFFF
	cmp r2, r1
	bhi _0815AD38
	adds r0, r4, #0
_0815AD0C:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _0815AD0C
	str r0, [r3, #8]
	b _0815AD38
	.align 2, 0
_0815AD18: .4byte 0x3FFFFFFF
_0815AD1C:
	cmp r1, #0xff
	bne _0815AD3C
	cmp r2, #0
	bne _0815AD2A
	movs r0, #4
	str r0, [r3]
	b _0815AD50
_0815AD2A:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _0815AD36
	movs r0, #1
_0815AD36:
	str r0, [r3]
_0815AD38:
	str r2, [r3, #0xc]
	b _0815AD50
_0815AD3C:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_0815AD50:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start _fpadd_parts_0
_fpadd_parts_0: @ 0x0815AD58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0815AD6E
	movs r0, #1
_0815AD6E:
	cmp r0, #0
	beq _0815AD76
_0815AD72:
	adds r0, r6, #0
	b _0815AECC
_0815AD76:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _0815AD80
	movs r1, #1
_0815AD80:
	cmp r1, #0
	bne _0815ADF4
	movs r1, #0
	cmp r2, #4
	bne _0815AD8C
	movs r1, #1
_0815AD8C:
	cmp r1, #0
	beq _0815ADAC
	movs r1, #0
	cmp r0, #4
	bne _0815AD98
	movs r1, #1
_0815AD98:
	cmp r1, #0
	beq _0815AD72
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _0815AD72
	ldr r0, _0815ADA8 @ =gUnk_03003F28
	b _0815AECC
	.align 2, 0
_0815ADA8: .4byte gUnk_03003F28
_0815ADAC:
	movs r1, #0
	cmp r0, #4
	bne _0815ADB4
	movs r1, #1
_0815ADB4:
	cmp r1, #0
	bne _0815ADF4
	movs r1, #0
	cmp r0, #2
	bne _0815ADC0
	movs r1, #1
_0815ADC0:
	cmp r1, #0
	beq _0815ADE6
	movs r0, #0
	cmp r2, #2
	bne _0815ADCC
	movs r0, #1
_0815ADCC:
	cmp r0, #0
	beq _0815AD72
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _0815AECA
_0815ADE6:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _0815ADF0
	movs r1, #1
_0815ADF0:
	cmp r1, #0
	beq _0815ADF8
_0815ADF4:
	adds r0, r7, #0
	b _0815AECC
_0815ADF8:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _0815AE08
	rsbs r0, r0, #0
_0815AE08:
	cmp r0, #0x1f
	bgt _0815AE4C
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _0815AE2E
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_0815AE1C:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _0815AE1C
	adds r3, r1, #0
_0815AE2E:
	cmp r3, r1
	ble _0815AE5E
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_0815AE38:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _0815AE38
	adds r1, r3, #0
	b _0815AE5E
_0815AE4C:
	cmp r1, r3
	ble _0815AE54
	movs r4, #0
	b _0815AE58
_0815AE54:
	adds r1, r3, #0
	movs r2, #0
_0815AE58:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_0815AE5E:
	cmp r6, r8
	beq _0815AEA8
	cmp r6, #0
	beq _0815AE6A
	subs r3, r4, r2
	b _0815AE6C
_0815AE6A:
	subs r3, r2, r4
_0815AE6C:
	cmp r3, #0
	blt _0815AE7A
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _0815AE84
_0815AE7A:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_0815AE84:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _0815AEA4 @ =0x3FFFFFFE
	cmp r0, r2
	bhi _0815AEB0
_0815AE8E:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _0815AE8E
	b _0815AEB0
	.align 2, 0
_0815AEA4: .4byte 0x3FFFFFFE
_0815AEA8:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_0815AEB0:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _0815AECA
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_0815AECA:
	adds r0, r5, #0
_0815AECC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __addsf3
__addsf3: @ 0x0815AED8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_f
	add sp, #0x38
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start __subsf3
__subsf3: @ 0x0815AF08
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_f
	add sp, #0x38
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start __mulsf3
__mulsf3: @ 0x0815AF40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _0815AF72
	movs r0, #1
_0815AF72:
	cmp r0, #0
	bne _0815AFD0
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815AF80
	movs r2, #1
_0815AF80:
	cmp r2, #0
	beq _0815AF88
	ldr r0, [sp, #4]
	b _0815AFF0
_0815AF88:
	movs r2, #0
	cmp r1, #4
	bne _0815AF90
	movs r2, #1
_0815AF90:
	cmp r2, #0
	beq _0815AFA2
	movs r1, #0
	cmp r0, #2
	bne _0815AF9C
	movs r1, #1
_0815AF9C:
	cmp r1, #0
	bne _0815AFBA
	b _0815AFD0
_0815AFA2:
	movs r2, #0
	cmp r0, #4
	bne _0815AFAA
	movs r2, #1
_0815AFAA:
	cmp r2, #0
	beq _0815AFC4
	movs r0, #0
	cmp r1, #2
	bne _0815AFB6
	movs r0, #1
_0815AFB6:
	cmp r0, #0
	beq _0815AFEE
_0815AFBA:
	ldr r0, _0815AFC0 @ =gUnk_03003F28
	b _0815B092
	.align 2, 0
_0815AFC0: .4byte gUnk_03003F28
_0815AFC4:
	movs r2, #0
	cmp r1, #2
	bne _0815AFCC
	movs r2, #1
_0815AFCC:
	cmp r2, #0
	beq _0815AFE2
_0815AFD0:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0815B092
_0815AFE2:
	movs r1, #0
	cmp r0, #2
	bne _0815AFEA
	movs r1, #1
_0815AFEA:
	cmp r1, #0
	beq _0815B000
_0815AFEE:
	ldr r0, [r7, #4]
_0815AFF0:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _0815B092
_0815B000:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl __muldi3
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _0815B04C
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_0815B036:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _0815B044
	lsrs r6, r6, #1
	orrs r6, r1
_0815B044:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _0815B036
	str r4, [sp, #0x28]
_0815B04C:
	ldr r0, _0815B0A4 @ =0x3FFFFFFF
	cmp r5, r0
	bhi _0815B072
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_0815B05C:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _0815B06A
	orrs r5, r3
_0815B06A:
	lsls r6, r6, #1
	cmp r5, r2
	bls _0815B05C
	str r1, [sp, #0x28]
_0815B072:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _0815B088
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _0815B086
	cmp r6, #0
	beq _0815B088
_0815B086:
	adds r5, #0x40
_0815B088:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_0815B092:
	bl __pack_f
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0815B0A4: .4byte 0x3FFFFFFF

	thumb_func_start __divsf3
__divsf3: @ 0x0815B0A8
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl __unpack_f
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _0815B0CE
	movs r0, #1
_0815B0CE:
	cmp r0, #0
	beq _0815B0D6
	mov r1, sp
	b _0815B188
_0815B0D6:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _0815B0E2
	movs r0, #1
_0815B0E2:
	cmp r0, #0
	beq _0815B0EA
	adds r1, r5, #0
	b _0815B188
_0815B0EA:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _0815B0FA
	movs r0, #1
_0815B0FA:
	cmp r0, #0
	bne _0815B10A
	movs r0, #0
	cmp r3, #2
	bne _0815B106
	movs r0, #1
_0815B106:
	cmp r0, #0
	beq _0815B11C
_0815B10A:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _0815B188
	ldr r1, _0815B118 @ =gUnk_03003F28
	b _0815B188
	.align 2, 0
_0815B118: .4byte gUnk_03003F28
_0815B11C:
	movs r1, #0
	cmp r2, #4
	bne _0815B124
	movs r1, #1
_0815B124:
	cmp r1, #0
	beq _0815B130
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _0815B188
_0815B130:
	movs r0, #0
	cmp r2, #2
	bne _0815B138
	movs r0, #1
_0815B138:
	cmp r0, #0
	beq _0815B142
	movs r0, #4
	str r0, [r4]
	b _0815B186
_0815B142:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _0815B158
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_0815B158:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_0815B15E:
	cmp r2, r3
	blo _0815B166
	orrs r1, r0
	subs r2, r2, r3
_0815B166:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _0815B15E
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _0815B184
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0815B182
	cmp r2, #0
	beq _0815B184
_0815B182:
	adds r1, #0x40
_0815B184:
	str r1, [r4, #0xc]
_0815B186:
	adds r1, r4, #0
_0815B188:
	adds r0, r1, #0
	bl __pack_f
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __fpcmp_parts_f
__fpcmp_parts_f: @ 0x0815B198
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _0815B1A6
	movs r0, #1
_0815B1A6:
	cmp r0, #0
	bne _0815B1B8
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _0815B1B4
	movs r0, #1
_0815B1B4:
	cmp r0, #0
	beq _0815B1BC
_0815B1B8:
	movs r0, #1
	b _0815B27A
_0815B1BC:
	movs r0, #0
	cmp r2, #4
	bne _0815B1C4
	movs r0, #1
_0815B1C4:
	cmp r0, #0
	beq _0815B1DC
	movs r0, #0
	cmp r3, #4
	bne _0815B1D0
	movs r0, #1
_0815B1D0:
	cmp r0, #0
	beq _0815B1DC
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _0815B27A
_0815B1DC:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _0815B1E6
	movs r2, #1
_0815B1E6:
	cmp r2, #0
	bne _0815B234
	movs r2, #0
	cmp r3, #4
	bne _0815B1F2
	movs r2, #1
_0815B1F2:
	cmp r2, #0
	beq _0815B204
_0815B1F6:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0815B23E
	movs r1, #1
	b _0815B23E
_0815B204:
	movs r2, #0
	cmp r0, #2
	bne _0815B20C
	movs r2, #1
_0815B20C:
	cmp r2, #0
	beq _0815B21C
	movs r2, #0
	cmp r3, #2
	bne _0815B218
	movs r2, #1
_0815B218:
	cmp r2, #0
	bne _0815B278
_0815B21C:
	movs r2, #0
	cmp r0, #2
	bne _0815B224
	movs r2, #1
_0815B224:
	cmp r2, #0
	bne _0815B1F6
	movs r0, #0
	cmp r3, #2
	bne _0815B230
	movs r0, #1
_0815B230:
	cmp r0, #0
	beq _0815B242
_0815B234:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _0815B23E
	subs r1, #2
_0815B23E:
	adds r0, r1, #0
	b _0815B27A
_0815B242:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _0815B254
_0815B24A:
	movs r0, #1
	cmp r3, #0
	beq _0815B27A
	subs r0, #2
	b _0815B27A
_0815B254:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _0815B24A
	cmp r2, r0
	bge _0815B26C
_0815B260:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _0815B27A
	movs r0, #1
	b _0815B27A
_0815B26C:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _0815B24A
	cmp r0, r1
	blo _0815B260
_0815B278:
	movs r0, #0
_0815B27A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start __cmpsf2
__cmpsf2: @ 0x0815B280
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __eqsf2
__eqsf2: @ 0x0815B2AC
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B2D0
	movs r1, #1
_0815B2D0:
	cmp r1, #0
	bne _0815B2E2
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815B2DE
	movs r1, #1
_0815B2DE:
	cmp r1, #0
	beq _0815B2E6
_0815B2E2:
	movs r0, #1
	b _0815B2EE
_0815B2E6:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0815B2EE:
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __nesf2
__nesf2: @ 0x0815B2F8
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B31C
	movs r1, #1
_0815B31C:
	cmp r1, #0
	bne _0815B32E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815B32A
	movs r1, #1
_0815B32A:
	cmp r1, #0
	beq _0815B332
_0815B32E:
	movs r0, #1
	b _0815B33A
_0815B332:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0815B33A:
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __gtsf2
__gtsf2: @ 0x0815B344
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B368
	movs r1, #1
_0815B368:
	cmp r1, #0
	bne _0815B37A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815B376
	movs r1, #1
_0815B376:
	cmp r1, #0
	beq _0815B380
_0815B37A:
	movs r0, #1
	rsbs r0, r0, #0
	b _0815B388
_0815B380:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0815B388:
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start __gesf2
__gesf2: @ 0x0815B390
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B3B4
	movs r1, #1
_0815B3B4:
	cmp r1, #0
	bne _0815B3C6
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815B3C2
	movs r1, #1
_0815B3C2:
	cmp r1, #0
	beq _0815B3CC
_0815B3C6:
	movs r0, #1
	rsbs r0, r0, #0
	b _0815B3D4
_0815B3CC:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0815B3D4:
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start __ltsf2
__ltsf2: @ 0x0815B3DC
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B400
	movs r1, #1
_0815B400:
	cmp r1, #0
	bne _0815B412
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815B40E
	movs r1, #1
_0815B40E:
	cmp r1, #0
	beq _0815B416
_0815B412:
	movs r0, #1
	b _0815B41E
_0815B416:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0815B41E:
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __lesf2
__lesf2: @ 0x0815B428
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0815B44C
	movs r1, #1
_0815B44C:
	cmp r1, #0
	bne _0815B45E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0815B45A
	movs r1, #1
_0815B45A:
	cmp r1, #0
	beq _0815B462
_0815B45E:
	movs r0, #1
	b _0815B46A
_0815B462:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0815B46A:
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __floatsisf
__floatsisf: @ 0x0815B474
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _0815B48C
	movs r0, #2
	str r0, [sp]
	b _0815B4C4
_0815B48C:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _0815B4AA
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _0815B4A4
	ldr r0, _0815B4A0 @ =0xCF000000
	b _0815B4CA
	.align 2, 0
_0815B4A0: .4byte 0xCF000000
_0815B4A4:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _0815B4AC
_0815B4AA:
	str r1, [sp, #0xc]
_0815B4AC:
	ldr r2, [sp, #0xc]
	ldr r3, _0815B4D0 @ =0x3FFFFFFF
	cmp r2, r3
	bhi _0815B4C4
	ldr r1, [sp, #8]
_0815B4B6:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _0815B4B6
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_0815B4C4:
	mov r0, sp
	bl __pack_f
_0815B4CA:
	add sp, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0815B4D0: .4byte 0x3FFFFFFF

	thumb_func_start __fixsfsi
__fixsfsi: @ 0x0815B4D4
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0815B4EC
	movs r1, #1
_0815B4EC:
	cmp r1, #0
	bne _0815B51E
	movs r1, #0
	cmp r0, #1
	bhi _0815B4F8
	movs r1, #1
_0815B4F8:
	cmp r1, #0
	bne _0815B51E
	movs r1, #0
	cmp r0, #4
	bne _0815B504
	movs r1, #1
_0815B504:
	cmp r1, #0
	beq _0815B518
_0815B508:
	ldr r0, [sp, #4]
	ldr r1, _0815B514 @ =0x7FFFFFFF
	cmp r0, #0
	beq _0815B536
	adds r1, #1
	b _0815B536
	.align 2, 0
_0815B514: .4byte 0x7FFFFFFF
_0815B518:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _0815B522
_0815B51E:
	movs r0, #0
	b _0815B538
_0815B522:
	cmp r1, #0x1e
	bgt _0815B508
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0815B536
	rsbs r1, r1, #0
_0815B536:
	adds r0, r1, #0
_0815B538:
	add sp, #0x14
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __negsf2
__negsf2: @ 0x0815B540
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0815B558
	movs r1, #1
_0815B558:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_f
	add sp, #0x14
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start __make_fp
__make_fp: @ 0x0815B568
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl __pack_f
	add sp, #0x10
	pop {r1}
	bx r1

	thumb_func_start __extendsfdf2
__extendsfdf2: @ 0x0815B580
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl __unpack_f
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl __make_dp
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r2}
	bx r2

	thumb_func_start __lshrdi3
__lshrdi3: @ 0x0815B5B0
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _0815B5E0
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _0815B5CC
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _0815B5DC
_0815B5CC:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_0815B5DC:
	adds r1, r4, #0
	adds r0, r3, #0
_0815B5E0:
	pop {r4, r5, r6}
	pop {r2}
	bx r2
	.align 2, 0

	thumb_func_start __muldi3
__muldi3: @ 0x0815B5E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _0815B658 @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _0815B628
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0815B628:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.align 2, 0
_0815B658: .4byte 0x0000FFFF

	thumb_func_start __negdi2
__negdi2: @ 0x0815B65C
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _0815B66A
	subs r1, #1
_0815B66A:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4}
	pop {r2}
	bx r2
	.align 2, 0
