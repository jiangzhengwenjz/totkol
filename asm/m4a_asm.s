	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0815B828
sub_0815B828: @ 0x0815B828
	add r2, pc, #0x0 @ =sub_0815B82C
	bx r2

	arm_func_start sub_0815B82C
sub_0815B82C: @ 0x0815B82C
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x0815B838
	ldr r0, _0815B8A4 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _0815B8A8 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _0815B846
	bx lr
_0815B846:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _0815B86A
	ldr r2, _0815B8B0 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _0815B868
	adds r2, #0xe4
_0815B868:
	adds r1, r1, r2
_0815B86A:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _0815B87A
	ldr r0, [r0, #0x24]
	bl sub_0815BBE6
	ldr r0, [sp, #0x18]
_0815B87A:
	ldr r3, [r0, #0x28]
	bl sub_0815BBE6
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _0815B8B4 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _0815B89A
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_0815B89A:
	str r5, [sp, #8]
	ldr r6, _0815B8B8 @ =0x00000630
	ldr r3, _0815B8AC @ =gUnk_030035D9
	bx r3
	.align 2, 0
_0815B8A4: .4byte 0x03007FF0
_0815B8A8: .4byte 0x68736D53
_0815B8AC: .4byte gUnk_030035D9
_0815B8B0: .4byte 0x04000006
_0815B8B4: .4byte 0x00000350
_0815B8B8: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x0815B8BC
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_0815B908
	add r1, pc, #0x4 @ =sub_0815B8C8
	bx r1
	.align 2, 0

	arm_func_start sub_0815B8C8
sub_0815B8C8: @ 0x0815B8C8
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_0815B8D8:
	ldrsb r0, [r5]
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #8
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _0815B8D8
	add r0, pc, #0x1F @ =sub_0815B926
	bx r0

	thumb_func_start sub_0815B908
sub_0815B908: @ 0x0815B908
	movs r0, #0
	mov r1, r8
	lsrs r1, r1, #3
	blo _0815B912
	stm r5!, {r0}
_0815B912:
	lsrs r1, r1, #1
	blo _0815B91A
	stm r5!, {r0}
	stm r5!, {r0}
_0815B91A:
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	subs r1, #1
	bgt _0815B91A

	non_word_aligned_thumb_func_start sub_0815B926
sub_0815B926: @ 0x0815B926
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_0815B930:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0815B950
	ldr r1, _0815B94C @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _0815B944
	adds r1, #0xe4
_0815B944:
	cmp r1, r0
	blo _0815B950
	b _0815BBD2
	.align 2, 0
_0815B94C: .4byte 0x04000006
_0815B950:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _0815B95A
	b sub_0815BBC8
_0815B95A:
	movs r0, #0x80
	tst r0, r6
	beq _0815B98A
	movs r0, #0x40
	tst r0, r6
	bne _0815B99A
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _0815B9E2
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _0815B9E2
_0815B98A:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _0815B9A0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _0815B9F0
_0815B99A:
	movs r0, #0
	strb r0, [r4]
	b sub_0815BBC8
_0815B9A0:
	movs r0, #0x40
	tst r0, r6
	beq _0815B9C0
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _0815B9F0
_0815B9B2:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _0815B99A
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _0815B9F0
_0815B9C0:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _0815B9DE
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _0815B9F0
	adds r5, r0, #0
	beq _0815B9B2
	subs r6, #1
	strb r6, [r4]
	b _0815B9F0
_0815B9DE:
	cmp r2, #3
	bne _0815B9F0
_0815B9E2:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _0815B9F0
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_0815B9F0:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	muls r0, r5, r0
	lsrs r0, r0, #9
	strb r0, [r4, #0xa]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _0815BA20
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_0815BA20:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_0815BA2C
	bx r0
	.align 2, 0

	arm_func_start sub_0815BA2C
sub_0815BA2C: @ 0x0815BA2C
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	lsl sl, sl, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _0815BB34
_0815BA44:
	cmp r2, #4
	ble _0815BAA0
	subs r2, r2, r8
	movgt lr, #0
	bgt _0815BA70
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_0815BA70:
	ldr r6, [r5]
_0815BA74:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	adds r5, r5, #0x40000000
	blo _0815BA74
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0815BA70
	adds r8, r8, lr
	beq _0815BBB4
_0815BAA0:
	ldr r6, [r5]
_0815BAA4:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	subs r2, r2, #1
	beq _0815BB04
_0815BABC:
	adds r5, r5, #0x40000000
	blo _0815BAA4
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0815BA44
	b _0815BBB4
_0815BAD4:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0815BAF8
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_0815BAE8:
	adds r2, r0, r2
	bgt _0815BB88
	sub sb, sb, r0
	b _0815BAE8
_0815BAF8:
	pop {r4, ip}
	mov r2, #0
	b _0815BB14
_0815BB04:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _0815BABC
_0815BB14:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	str r6, [r5], #4
	b _0815BBBC
_0815BB34:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_0815BB50:
	ldr r6, [r5]
_0815BB54:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _0815BB94
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _0815BAD4
	subs sb, sb, #1
	addeq r0, r0, r1
_0815BB88:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_0815BB94:
	adds r5, r5, #0x40000000
	blo _0815BB54
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0815BB50
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_0815BBB4:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_0815BBBC:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_0815BBC8
	bx r0

	thumb_func_start sub_0815BBC8
sub_0815BBC8: @ 0x0815BBC8
	ldr r0, [sp, #4]
	subs r0, #1
	ble _0815BBD2
	adds r4, #0x40
	b _0815B930
_0815BBD2:
	ldr r0, [sp, #0x18]
	ldr r3, _0815BBE8 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_0815BBE6
sub_0815BBE6: @ 0x0815BBE6
	bx r3
	.align 2, 0
_0815BBE8: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x0815BBEC
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start ClearChain
ClearChain: @ 0x0815BC04
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _0815BC22
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _0815BC16
	str r1, [r2, #0x34]
	b _0815BC18
_0815BC16:
	str r1, [r3, #0x20]
_0815BC18:
	cmp r1, #0
	beq _0815BC1E
	str r2, [r1, #0x30]
_0815BC1E:
	movs r1, #0
	str r1, [r0, #0x2c]
_0815BC22:
	bx lr
_0815BC24:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0815BC48
_0815BC2E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0815BC3C
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_0815BC3C:
	adds r0, r4, #0
	bl ClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0815BC2E
_0815BC48:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlyJmpTblCopy
MPlyJmpTblCopy: @ 0x0815BC54
	mov ip, lr
	movs r1, #0x24
	ldr r2, _0815BC84 @ =gUnk_0824DF48
_0815BC5A:
	ldr r3, [r2]
	bl _0815BC6E
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _0815BC5A
	bx ip
	.align 2, 0

	thumb_func_start ldrb_r3_r2
ldrb_r3_r2: @ 0x0815BC6C
	ldrb r3, [r2]
_0815BC6E:
	push {r0}
	lsrs r0, r2, #0x19
	bne _0815BC80
	ldr r0, _0815BC84 @ =gUnk_0824DF48
	cmp r2, r0
	blo _0815BC7E
	lsrs r0, r2, #0xe
	beq _0815BC80
_0815BC7E:
	movs r3, #0
_0815BC80:
	pop {r0}
	bx lr
	.align 2, 0
_0815BC84: .4byte gUnk_0824DF48

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x0815BC88
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_0815BC8A
sub_0815BC8A: @ 0x0815BC8A
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _0815BC6E
	.align 2, 0
_0815BC94:
	push {lr}
_0815BC96:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl ldrb_r3_r2
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x0815BCB4
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _0815BCCC
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _0815BC94
_0815BCCC:
	b _0815BC24
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x0815BCD0
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _0815BCE2
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_0815BCE2:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x0815BCE4
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _0815BCF4
	adds r2, #1
	str r2, [r1, #0x40]
	b _0815BC96
_0815BCF4:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _0815BD06
	b _0815BC96
_0815BD06:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x0815BD14
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x0815BD20
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x0815BD34
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x0815BD48
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _0815BC6E
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _0815BC6E
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _0815BC6E
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x0815BD78
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x0815BD8C
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x0815BDA0
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x0815BDB4
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x0815BDC8
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x0815BDD4
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _0815BDEA
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_0815BDEA:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x0815BDEC
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x0815BE00
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _0815BE14 @ =0x04000060
	adds r0, r0, r3
	bl sub_0815BC8A

	thumb_func_start sub_0815BE10
sub_0815BE10: @ 0x0815BE10
	strb r3, [r0]
	bx ip
	.align 2, 0
_0815BE14: .4byte 0x04000060

	thumb_func_start SoundVSync_rev01
SoundVSync_rev01: @ 0x0815BE18
	ldr r0, _0815C0B4 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _0815C0B8 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _0815BE4A
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _0815BE4A
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _0815BE4C @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _0815BE3E
	ldr r1, _0815BE50 @ =0x84400004
	str r1, [r2, #8]
_0815BE3E:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
_0815BE4A:
	bx lr
	.align 2, 0
_0815BE4C: .4byte 0x040000BC
_0815BE50: .4byte 0x84400004

	thumb_func_start MPlayMain_rev01
MPlayMain_rev01: @ 0x0815BE54
	ldr r2, _0815C0B8 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _0815BE5E
	bx lr
_0815BE5E:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _0815BE70
	ldr r0, [r0, #0x3c]
	bl sub_0815C0AC
_0815BE70:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0815BE88
	b _0815C09C
_0815BE88:
	ldr r0, _0815C0B4 @ =0x03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody_rev01
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0815BE9C
	b _0815C09C
_0815BE9C:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _0815BFEC
_0815BEA4:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_0815BEAC:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _0815BEB6
	b _0815BFC8
_0815BEB6:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0815BEEA
_0815BEC2:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0815BEDE
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0815BEE4
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _0815BEE4
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _0815BEE4
_0815BEDE:
	adds r0, r4, #0
	bl ClearChain_rev
_0815BEE4:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0815BEC2
_0815BEEA:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _0815BF68
	adds r0, r5, #0
	bl Clear64byte_rev
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _0815BF68
_0815BF10:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _0815BF1C
	ldrb r1, [r5, #7]
	b _0815BF26
_0815BF1C:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _0815BF26
	strb r1, [r5, #7]
_0815BF26:
	cmp r1, #0xcf
	blo _0815BF3C
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0815C0AC
	b _0815BF68
_0815BF3C:
	cmp r1, #0xb0
	bls _0815BF5E
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0815C0AC
	ldrb r0, [r5]
	cmp r0, #0
	beq _0815BFC4
	b _0815BF68
_0815BF5E:
	ldr r0, _0815C0B0 @ =gUnk_0824E1BC
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_0815BF68:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _0815BF10
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _0815BFC4
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _0815BFC4
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0815BF8A
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _0815BFC4
_0815BF8A:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _0815BF9E
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _0815BFA2
_0815BF9E:
	movs r0, #0x80
	subs r2, r0, r1
_0815BFA2:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _0815BFC4
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _0815BFBE
	movs r1, #0xc
	b _0815BFC0
_0815BFBE:
	movs r1, #3
_0815BFC0:
	orrs r0, r1
	strb r0, [r5]
_0815BFC4:
	mov r3, sl
	mov r4, fp
_0815BFC8:
	subs r6, #1
	ble _0815BFD4
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _0815BEAC
_0815BFD4:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _0815BFE6
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _0815C09C
_0815BFE6:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_0815BFEC:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _0815BFF4
	b _0815BEA4
_0815BFF4:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_0815BFF8:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _0815C092
	movs r1, #0xf
	tst r1, r0
	beq _0815C092
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0815C088
_0815C016:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _0815C026
	adds r0, r4, #0
	bl ClearChain_rev
	b _0815C082
_0815C026:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _0815C044
	bl ChnVolSetAsm
	cmp r6, #0
	beq _0815C044
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_0815C044:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _0815C082
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _0815C058
	movs r2, #0
_0815C058:
	cmp r6, #0
	beq _0815C076
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_0815C0AC
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _0815C082
_0815C076:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKey2fr
	str r0, [r4, #0x20]
_0815C082:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0815C016
_0815C088:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_0815C092:
	subs r2, #1
	ble _0815C09C
	movs r0, #0x50
	adds r5, r5, r0
	bgt _0815BFF8
_0815C09C:
	ldr r0, _0815C0B8 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_0815C0AC
sub_0815C0AC: @ 0x0815C0AC
	bx r3
	.align 2, 0
_0815C0B0: .4byte gUnk_0824E1BC
_0815C0B4: .4byte 0x03007FF0
_0815C0B8: .4byte 0x68736D53

	thumb_func_start TrackStop_rev01
TrackStop_rev01: @ 0x0815C0BC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _0815C0F4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0815C0F2
	movs r6, #0
_0815C0D0:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0815C0EA
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _0815C0E8
	ldr r3, _0815C0FC @ =0x03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_0815C0AC
_0815C0E8:
	strb r6, [r4]
_0815C0EA:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0815C0D0
_0815C0F2:
	str r4, [r5, #0x20]
_0815C0F4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0815C0FC: .4byte 0x03007FF0

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x0815C100
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0815C118
	movs r0, #0xff
_0815C118:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0815C12C
	movs r0, #0xff
_0815C12C:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note_rev01
ply_note_rev01: @ 0x0815C130
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _0815C328 @ =0x03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _0815C32C @ =gUnk_0824E1BC
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0815C176
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0815C174
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0815C174
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_0815C174:
	str r3, [r5, #0x40]
_0815C176:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _0815C1C8
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _0815C196
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _0815C198
_0815C196:
	adds r0, r3, #0
_0815C198:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _0815C1B0
	b _0815C316
_0815C1B0:
	movs r0, #0x80
	tst r0, r2
	beq _0815C1CC
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _0815C1C4
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_0815C1C4:
	ldrb r3, [r6, #1]
	b _0815C1CC
_0815C1C8:
	mov sb, r4
	ldrb r3, [r5, #5]
_0815C1CC:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _0815C1DC
	movs r0, #0xff
_0815C1DC:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _0815C21C
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _0815C1F4
	b _0815C316
_0815C1F4:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0815C270
	movs r0, #0x40
	tst r0, r1
	bne _0815C270
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _0815C270
	beq _0815C214
	b _0815C316
_0815C214:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _0815C270
	b _0815C316
_0815C21C:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_0815C22A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0815C270
	movs r0, #0x40
	tst r0, r1
	beq _0815C244
	cmp r2, #0
	bne _0815C248
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _0815C262
_0815C244:
	cmp r2, #0
	bne _0815C264
_0815C248:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _0815C254
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _0815C262
_0815C254:
	bhi _0815C264
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _0815C260
	adds r7, r0, #0
	b _0815C262
_0815C260:
	blo _0815C264
_0815C262:
	mov r8, r4
_0815C264:
	adds r4, #0x40
	subs r3, #1
	bgt _0815C22A
	mov r4, r8
	cmp r4, #0
	beq _0815C316
_0815C270:
	adds r0, r4, #0
	bl ClearChain_rev
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _0815C284
	str r4, [r3, #0x30]
_0815C284:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _0815C296
	adds r1, r5, #0
	bl clear_modM
_0815C296:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _0815C2D0
	movs r3, #0
_0815C2D0:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _0815C2FE
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _0815C2EA
	movs r0, #0x70
	tst r0, r1
	bne _0815C2EC
_0815C2EA:
	movs r1, #8
_0815C2EC:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_0815C0AC
	b _0815C308
_0815C2FE:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKey2fr
_0815C308:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_0815C316:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_0815C328: .4byte 0x03007FF0
_0815C32C: .4byte gUnk_0824E1BC

	thumb_func_start ply_endtie_rev01
ply_endtie_rev01: @ 0x0815C330
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _0815C342
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _0815C344
_0815C342:
	ldrb r3, [r1, #5]
_0815C344:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _0815C36C
	movs r4, #0x83
	movs r5, #0x40
_0815C34E:
	ldrb r2, [r1]
	tst r2, r4
	beq _0815C366
	tst r2, r5
	bne _0815C366
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _0815C366
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _0815C36C
_0815C366:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _0815C34E
_0815C36C:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x0815C370
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _0815C380
	movs r2, #0xc
	b _0815C382
_0815C380:
	movs r2, #3
_0815C382:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start ld_r3_tp_adr_i_rev
ld_r3_tp_adr_i_rev: @ 0x0815C38C
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos_rev01
ply_lfos_rev01: @ 0x0815C398
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _0815C3A8
	bl clear_modM
_0815C3A8:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod_rev01
ply_mod_rev01: @ 0x0815C3AC
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _0815C3BC
	bl clear_modM
_0815C3BC:
	bx ip
	.align 2, 0
