	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	arm_func_start __start
__start: @ 0x08000000
	b _080000C0

	.include "asm/rom_header.inc"

	.global _080000C0
_080000C0:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _080000F8 @ =gUnk_03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _080000F4 @ =gUnk_03007EC0
	ldr r1, gUnk_0800023C @ =0x03007FFC
	add r0, pc, #0x18 @ =sub_080000FC
	str r0, [r1]
	ldr r1, _08000240 @ =sub_08000254
	mov lr, pc
	bx r1
	b _080000C0
	.align 2, 0
_080000F4: .4byte gUnk_03007EC0
_080000F8: .4byte gUnk_03007FA0

	arm_func_start sub_080000FC
sub_080000FC: @ 0x080000FC
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	mrs r0, spsr
	push {r0, r1, r3, lr}
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #8
	bne _0800018C
	add r2, r2, #4
	ands r0, r1, #0xc0
	bne _080001E4
	add r2, r2, #4
	ands r0, r1, #1
	bne _0800018C
	add r2, r2, #4
	ands r0, r1, #2
	bne _080001E4
	add r2, r2, #4
	ands r0, r1, #4
	bne _080001E4
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _0800018C
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _0800018C
	ands r0, r1, #0x2000
	beq _0800018C
	mov r2, #0
	strbne r2, [r3, #-0x17c]
	ldr r1, _08000244 @ =gUnk_03001064
	ldr r2, [r1]

	arm_func_start sub_08000188
sub_08000188: @ 0x08000188
	bl sub_08000188
_0800018C:
	strh r0, [r3, #2]
	ldr r0, _08000248 @ =gUnk_03001064
	ldr r1, [r0]
	strh r1, [r3]
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x1f
	msr cpsr_fc, r3
	ldr r1, _0800024C @ =gUnk_03000D80
	add r1, r1, r2
	ldr r0, [r1]
	stmdb sp!, {lr}
	add lr, pc, #0x0 @ =0x080001C4
	bx r0
	ldm sp!, {lr}
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x92
	msr cpsr_fc, r3
	pop {r0, r1, r3, lr}
	msr spsr_fc, r0
	bx lr
_080001E4:
	strh r0, [r3, #2]
	mov r1, #0
	strh r1, [r3]
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x1f
	msr cpsr_fc, r3
	ldr r1, _08000250 @ =gUnk_03000D80
	add r1, r1, r2
	ldr r0, [r1]
	stmdb sp!, {lr}
	add lr, pc, #0x0 @ =0x08000218
	bx r0
	ldm sp!, {lr}
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x92
	msr cpsr_fc, r3
	pop {r0, r1, r3, lr}
	strh r1, [r3]
	msr spsr_fc, r0
	bx lr
	.align 2, 0
	.global gUnk_0800023C
gUnk_0800023C: .4byte 0x03007FFC
_08000240: .4byte sub_08000254
_08000244: .4byte gUnk_03001064
_08000248: .4byte gUnk_03001064
_0800024C: .4byte gUnk_03000D80
_08000250: .4byte gUnk_03000D80
