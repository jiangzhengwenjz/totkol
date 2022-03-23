	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MidiKeyToFreq
MidiKeyToFreq: @ 0x0815C3C0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _0815C3D4
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_0815C3D4:
	ldr r3, _0815C41C @ =gScaleTable
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _0815C420 @ =gFreqTable
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0815C41C: .4byte gScaleTable
_0815C420: .4byte gFreqTable

	thumb_func_start DummyFunc
DummyFunc: @ 0x0815C424
	bx lr
	.align 2, 0

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x0815C428
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _0815C43C @ =0x68736D53
	cmp r3, r0
	bne _0815C43A
	ldr r0, [r2, #4]
	ldr r1, _0815C440 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_0815C43A:
	bx lr
	.align 2, 0
_0815C43C: .4byte 0x68736D53
_0815C440: .4byte 0x7FFFFFFF

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x0815C444
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0815C460 @ =0x68736D53
	cmp r3, r0
	bne _0815C45C
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_0815C45C:
	bx lr
	.align 2, 0
_0815C460: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x0815C464
	push {r4, r5, r6, lr}
	ldr r0, _0815C4B8 @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _0815C4BC @ =SoundMainRAM_Buffer
	ldr r2, _0815C4C0 @ =0x040000E0
	bl CpuSet
	ldr r0, _0815C4C4 @ =gSoundInfo
	bl SoundInit
	ldr r0, _0815C4C8 @ =gCgbChans
	bl MPlayExtender
	ldr r0, _0815C4CC @ =0x0095D600
	bl m4aSoundMode
	ldr r0, _0815C4D0 @ =gNumMusicPlayers
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0815C4B2
	ldr r5, _0815C4D4 @ =gMPlayTable
	adds r6, r0, #0
_0815C496:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _0815C4D8 @ =gMPlayMemAccArea
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _0815C496
_0815C4B2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0815C4B8: .4byte SoundMainRAM
_0815C4BC: .4byte SoundMainRAM_Buffer
_0815C4C0: .4byte 0x040000E0
_0815C4C4: .4byte gSoundInfo
_0815C4C8: .4byte gCgbChans
_0815C4CC: .4byte 0x0095D600
_0815C4D0: .4byte gNumMusicPlayers
_0815C4D4: .4byte gMPlayTable
_0815C4D8: .4byte gMPlayMemAccArea

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x0815C4DC
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x0815C4E8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _0815C50C @ =gMPlayTable
	ldr r1, _0815C510 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl MPlayStart
	pop {r0}
	bx r0
	.align 2, 0
_0815C50C: .4byte gMPlayTable
_0815C510: .4byte gSongTable

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x0815C514
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _0815C540 @ =gMPlayTable
	ldr r1, _0815C544 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _0815C548
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _0815C55C
	.align 2, 0
_0815C540: .4byte gMPlayTable
_0815C544: .4byte gSongTable
_0815C548:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0815C554
	cmp r2, #0
	bge _0815C55C
_0815C554:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
_0815C55C:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x0815C560
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _0815C58C @ =gMPlayTable
	ldr r1, _0815C590 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _0815C594
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _0815C5B0
	.align 2, 0
_0815C58C: .4byte gMPlayTable
_0815C590: .4byte gSongTable
_0815C594:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0815C5A6
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
	b _0815C5B0
_0815C5A6:
	cmp r2, #0
	bge _0815C5B0
	adds r0, r1, #0
	bl MPlayContinue
_0815C5B0:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x0815C5B4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _0815C5E0 @ =gMPlayTable
	ldr r1, _0815C5E4 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0815C5DA
	adds r0, r2, #0
	bl MPlayStop
_0815C5DA:
	pop {r0}
	bx r0
	.align 2, 0
_0815C5E0: .4byte gMPlayTable
_0815C5E4: .4byte gSongTable

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x0815C5E8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _0815C614 @ =gMPlayTable
	ldr r1, _0815C618 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0815C60E
	adds r0, r2, #0
	bl MPlayContinue
_0815C60E:
	pop {r0}
	bx r0
	.align 2, 0
_0815C614: .4byte gMPlayTable
_0815C618: .4byte gSongTable

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x0815C61C
	push {r4, r5, lr}
	ldr r0, _0815C640 @ =gNumMusicPlayers
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0815C63A
	ldr r5, _0815C644 @ =gMPlayTable
	adds r4, r0, #0
_0815C62C:
	ldr r0, [r5]
	bl MPlayStop
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0815C62C
_0815C63A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0815C640: .4byte gNumMusicPlayers
_0815C644: .4byte gMPlayTable

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x0815C648
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x0815C654
	push {r4, r5, lr}
	ldr r0, _0815C678 @ =gNumMusicPlayers
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0815C672
	ldr r5, _0815C67C @ =gMPlayTable
	adds r4, r0, #0
_0815C664:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0815C664
_0815C672:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0815C678: .4byte gNumMusicPlayers
_0815C67C: .4byte gMPlayTable

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x0815C680
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutPause
m4aMPlayFadeOutPause: @ 0x0815C690
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0815C6A8 @ =0x68736D53
	cmp r3, r0
	bne _0815C6A6
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _0815C6AC @ =0x00000101
	strh r0, [r2, #0x28]
_0815C6A6:
	bx lr
	.align 2, 0
_0815C6A8: .4byte 0x68736D53
_0815C6AC: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeInContinue
m4aMPlayFadeInContinue: @ 0x0815C6B0
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0815C6D0 @ =0x68736D53
	cmp r3, r0
	bne _0815C6CE
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _0815C6D4 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_0815C6CE:
	bx lr
	.align 2, 0
_0815C6D0: .4byte 0x68736D53
_0815C6D4: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x0815C6D8
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _0815C71A
	movs r7, #0x80
_0815C6E4:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0815C712
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0815C712
	adds r0, r4, #0
	bl Clear64byte
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_0815C712:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _0815C6E4
_0815C71A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x0815C720
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0815C7E8 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _0815C7EC @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _0815C7F0 @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _0815C7F4 @ =0x03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _0815C7F8 @ =0x68736D53
	cmp r6, r0
	bne _0815C7E0
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _0815C7FC @ =gMPlayJumpTable
	ldr r0, _0815C800 @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _0815C804 @ =ply_lfos
	str r0, [r1, #0x44]
	ldr r0, _0815C808 @ =ply_mod
	str r0, [r1, #0x4c]
	ldr r0, _0815C80C @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _0815C810 @ =ply_endtie
	str r0, [r1, #0x74]
	ldr r0, _0815C814 @ =SampleFreqSet
	str r0, [r1, #0x78]
	ldr r0, _0815C818 @ =TrackStop
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _0815C81C @ =FadeOutBody
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _0815C820 @ =TrkVolPitSet
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _0815C824 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _0815C828 @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _0815C82C @ =MidiKeyToCgbFreq
	str r0, [r4, #0x30]
	ldr r0, _0815C830 @ =gMaxLines
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _0815C834 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_0815C7E0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0815C7E8: .4byte 0x04000084
_0815C7EC: .4byte 0x04000080
_0815C7F0: .4byte 0x04000063
_0815C7F4: .4byte 0x03007FF0
_0815C7F8: .4byte 0x68736D53
_0815C7FC: .4byte gMPlayJumpTable
_0815C800: .4byte ply_memacc
_0815C804: .4byte ply_lfos
_0815C808: .4byte ply_mod
_0815C80C: .4byte ply_xcmd
_0815C810: .4byte ply_endtie
_0815C814: .4byte SampleFreqSet
_0815C818: .4byte TrackStop
_0815C81C: .4byte FadeOutBody
_0815C820: .4byte TrkVolPitSet
_0815C824: .4byte CgbSound
_0815C828: .4byte CgbOscOff
_0815C82C: .4byte MidiKeyToCgbFreq
_0815C830: .4byte 0x00000000
_0815C834: .4byte 0x05000040

	thumb_func_start MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x0815C838
	svc #0x2a
	bx lr

	thumb_func_start ClearChain
ClearChain: @ 0x0815C83C
	push {lr}
	ldr r1, _0815C84C @ =gUnk_02003538
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0815C84C: .4byte gUnk_02003538

	thumb_func_start Clear64byte
Clear64byte: @ 0x0815C850
	push {lr}
	ldr r1, _0815C860 @ =gUnk_0200353C
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0815C860: .4byte gUnk_0200353C

	thumb_func_start SoundInit
SoundInit: @ 0x0815C864
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r2, _0815C8FC @ =0x040000C4
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0815C880
	ldr r0, _0815C900 @ =0x84400004
	str r0, [r2]
_0815C880:
	ldr r1, _0815C904 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x42
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _0815C908 @ =0x00000B0E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0815C90C @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0815C910 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _0815C914 @ =0x040000A0
	str r0, [r1]
	ldr r0, _0815C918 @ =0x03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _0815C91C @ =0x05000260
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _0815C920 @ =ply_note
	str r0, [r5, #0x38]
	ldr r0, _0815C924 @ =DummyFunc_2
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _0815C928 @ =gMPlayJumpTable
	adds r0, r4, #0
	bl MPlayJumpTableCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampleFreqSet
	ldr r0, _0815C92C @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0815C8FC: .4byte 0x040000C4
_0815C900: .4byte 0x84400004
_0815C904: .4byte 0x040000C6
_0815C908: .4byte 0x00000B0E
_0815C90C: .4byte 0x04000089
_0815C910: .4byte 0x040000BC
_0815C914: .4byte 0x040000A0
_0815C918: .4byte 0x03007FF0
_0815C91C: .4byte 0x05000260
_0815C920: .4byte ply_note
_0815C924: .4byte DummyFunc_2
_0815C928: .4byte gMPlayJumpTable
_0815C92C: .4byte 0x68736D53

	thumb_func_start SampleFreqSet
SampleFreqSet: @ 0x0815C930
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _0815C9B0 @ =0x03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _0815C9B4 @ =gPcmSamplesPerVBlankTable
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _0815C9B8 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _0815C9BC @ =0x00001388
	adds r0, r0, r1
	ldr r1, _0815C9C0 @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _0815C9C4 @ =0x04000102
	strh r6, [r0]
	ldr r4, _0815C9C8 @ =0x04000100
	ldr r0, _0815C9CC @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl m4aSoundVSyncOn
	ldr r1, _0815C9D0 @ =0x04000006
_0815C994:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _0815C994
	ldr r1, _0815C9D0 @ =0x04000006
_0815C99C:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _0815C99C
	ldr r1, _0815C9C4 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0815C9B0: .4byte 0x03007FF0
_0815C9B4: .4byte gPcmSamplesPerVBlankTable
_0815C9B8: .4byte 0x00091D1B
_0815C9BC: .4byte 0x00001388
_0815C9C0: .4byte 0x00002710
_0815C9C4: .4byte 0x04000102
_0815C9C8: .4byte 0x04000100
_0815C9CC: .4byte 0x00044940
_0815C9D0: .4byte 0x04000006

	thumb_func_start m4aSoundMode
m4aSoundMode: @ 0x0815C9D4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _0815CA60 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _0815CA64 @ =0x68736D53
	cmp r1, r0
	bne _0815CA5A
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _0815C9F6
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_0815C9F6:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _0815CA16
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_0815CA0C:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _0815CA0C
_0815CA16:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _0815CA24
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_0815CA24:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _0815CA42
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _0815CA68 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_0815CA42:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _0815CA56
	bl m4aSoundVSyncOff
	adds r0, r4, #0
	bl SampleFreqSet
_0815CA56:
	ldr r0, _0815CA64 @ =0x68736D53
	str r0, [r5]
_0815CA5A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0815CA60: .4byte 0x03007FF0
_0815CA64: .4byte 0x68736D53
_0815CA68: .4byte 0x04000089

	thumb_func_start SoundClear
SoundClear: @ 0x0815CA6C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0815CAB8 @ =0x03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _0815CABC @ =0x68736D53
	cmp r1, r0
	bne _0815CAB2
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_0815CA86:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _0815CA86
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _0815CAAE
	movs r5, #1
	movs r7, #0
_0815CA9A:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _0815CA9A
_0815CAAE:
	ldr r0, _0815CABC @ =0x68736D53
	str r0, [r6]
_0815CAB2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815CAB8: .4byte 0x03007FF0
_0815CABC: .4byte 0x68736D53

	thumb_func_start m4aSoundVSyncOff
m4aSoundVSyncOff: @ 0x0815CAC0
	push {lr}
	sub sp, #4
	ldr r0, _0815CB0C @ =0x03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _0815CB10 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _0815CB06
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r3, _0815CB14 @ =0x040000C4
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0815CAEA
	ldr r0, _0815CB18 @ =0x84400004
	str r0, [r3]
_0815CAEA:
	ldr r1, _0815CB1C @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _0815CB20 @ =0x0500018C
	mov r0, sp
	bl CpuSet
_0815CB06:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0815CB0C: .4byte 0x03007FF0
_0815CB10: .4byte 0x978C92AD
_0815CB14: .4byte 0x040000C4
_0815CB18: .4byte 0x84400004
_0815CB1C: .4byte 0x040000C6
_0815CB20: .4byte 0x0500018C

	thumb_func_start m4aSoundVSyncOn
m4aSoundVSyncOn: @ 0x0815CB24
	push {r4, lr}
	ldr r0, _0815CB50 @ =0x03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _0815CB54 @ =0x68736D53
	cmp r3, r0
	beq _0815CB48
	ldr r1, _0815CB58 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r0, r4, #0
	strh r0, [r1]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_0815CB48:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0815CB50: .4byte 0x03007FF0
_0815CB54: .4byte 0x68736D53
_0815CB58: .4byte 0x040000C6

	thumb_func_start MPlayOpen
MPlayOpen: @ 0x0815CB5C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _0815CBC0
	cmp r4, #0x10
	bls _0815CB70
	movs r4, #0x10
_0815CB70:
	ldr r0, _0815CBC8 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _0815CBCC @ =0x68736D53
	cmp r1, r0
	bne _0815CBC0
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _0815CBA4
	movs r1, #0
_0815CB96:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _0815CB96
_0815CBA4:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0815CBB4
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_0815CBB4:
	str r7, [r5, #0x24]
	ldr r0, _0815CBD0 @ =MPlayMain
	str r0, [r5, #0x20]
	ldr r0, _0815CBCC @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_0815CBC0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815CBC8: .4byte 0x03007FF0
_0815CBCC: .4byte 0x68736D53
_0815CBD0: .4byte MPlayMain

	thumb_func_start MPlayStart
MPlayStart: @ 0x0815CBD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _0815CCB4 @ =0x68736D53
	cmp r1, r0
	bne _0815CCAA
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _0815CC16
	ldr r0, [r5]
	cmp r0, #0
	beq _0815CC00
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0815CC0C
_0815CC00:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _0815CC16
	cmp r1, #0
	blt _0815CC16
_0815CC0C:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _0815CCAA
_0815CC16:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _0815CC76
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _0815CC96
	mov r8, r6
_0815CC4A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _0815CC76
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _0815CC4A
_0815CC76:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _0815CC96
	movs r1, #0
	mov r8, r1
_0815CC80:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _0815CC80
_0815CC96:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _0815CCA6
	ldrb r0, [r7, #3]
	bl m4aSoundMode
_0815CCA6:
	ldr r0, _0815CCB4 @ =0x68736D53
	str r0, [r5, #0x34]
_0815CCAA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815CCB4: .4byte 0x68736D53

	thumb_func_start MPlayStop
MPlayStop: @ 0x0815CCB8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _0815CCF4 @ =0x68736D53
	cmp r1, r0
	bne _0815CCEE
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _0815CCEA
_0815CCDA:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _0815CCDA
_0815CCEA:
	ldr r0, _0815CCF4 @ =0x68736D53
	str r0, [r6, #0x34]
_0815CCEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0815CCF4: .4byte 0x68736D53

	thumb_func_start FadeOutBody
FadeOutBody: @ 0x0815CCF8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _0815CDBA
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _0815CD38 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0815CDBA
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0815CD3C
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _0815CD8E
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _0815CD8E
	.align 2, 0
_0815CD38: .4byte 0x0000FFFF
_0815CD3C:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0815CD8E
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _0815CD6E
_0815CD52:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _0815CD66
	strb r0, [r4]
_0815CD66:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _0815CD52
_0815CD6E:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _0815CD82
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _0815CD86
_0815CD82:
	movs r0, #0x80
	lsls r0, r0, #0x18
_0815CD86:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _0815CDBA
_0815CD8E:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _0815CDBA
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_0815CD9C:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0815CDB2
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_0815CDB2:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _0815CD9C
_0815CDBA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet
TrkVolPitSet: @ 0x0815CDC0
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0815CE24
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _0815CDE8
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_0815CDE8:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _0815CDFE
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_0815CDFE:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0815CE0A
	adds r1, r0, #0
	b _0815CE10
_0815CE0A:
	cmp r1, #0x7f
	ble _0815CE10
	movs r1, #0x7f
_0815CE10:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_0815CE24:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _0815CE68
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0815CE62
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_0815CE62:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_0815CE68:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MidiKeyToCgbFreq
MidiKeyToCgbFreq: @ 0x0815CE74
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _0815CEAC
	cmp r5, #0x14
	bhi _0815CE90
	movs r5, #0
	b _0815CE9E
_0815CE90:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0815CE9E
	movs r5, #0x3b
_0815CE9E:
	ldr r0, _0815CEA8 @ =gNoiseTable
	adds r0, r5, r0
	ldrb r0, [r0]
	b _0815CF0E
	.align 2, 0
_0815CEA8: .4byte gNoiseTable
_0815CEAC:
	cmp r5, #0x23
	bhi _0815CEB8
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _0815CECA
_0815CEB8:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _0815CECA
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_0815CECA:
	ldr r3, _0815CF14 @ =gCgbScaleTable
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _0815CF18 @ =gCgbFreqTable
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_0815CF0E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0815CF14: .4byte gCgbScaleTable
_0815CF18: .4byte gCgbFreqTable

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x0815CF1C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _0815CF44
	cmp r0, #2
	bgt _0815CF30
	cmp r0, #1
	beq _0815CF36
	b _0815CF58
_0815CF30:
	cmp r1, #3
	beq _0815CF4C
	b _0815CF58
_0815CF36:
	ldr r1, _0815CF40 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _0815CF60
	.align 2, 0
_0815CF40: .4byte 0x04000063
_0815CF44:
	ldr r1, _0815CF48 @ =0x04000069
	b _0815CF5A
	.align 2, 0
_0815CF48: .4byte 0x04000069
_0815CF4C:
	ldr r1, _0815CF54 @ =0x04000070
	movs r0, #0
	b _0815CF62
	.align 2, 0
_0815CF54: .4byte 0x04000070
_0815CF58:
	ldr r1, _0815CF68 @ =0x04000079
_0815CF5A:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_0815CF60:
	movs r0, #0x80
_0815CF62:
	strb r0, [r1]
	bx lr
	.align 2, 0
_0815CF68: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x0815CF6C
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _0815CF8C
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _0815CF98
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _0815CFA6
_0815CF8C:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _0815CF98
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _0815CFA6
_0815CF98:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _0815CFB6
_0815CFA6:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _0815CFB8
	movs r0, #0xf
_0815CFB6:
	strb r0, [r1, #0xa]
_0815CFB8:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CgbSound
CgbSound: @ 0x0815CFD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _0815CFF4 @ =0x03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _0815CFF8
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _0815CFFE
	.align 2, 0
_0815CFF4: .4byte 0x03007FF0
_0815CFF8:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_0815CFFE:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_0815D004:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _0815D01A
	b _0815D404
_0815D01A:
	cmp r6, #2
	beq _0815D04C
	cmp r6, #2
	bgt _0815D028
	cmp r6, #1
	beq _0815D02E
	b _0815D084
_0815D028:
	cmp r6, #3
	beq _0815D064
	b _0815D084
_0815D02E:
	ldr r0, _0815D040 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _0815D044 @ =0x04000062
	ldr r2, _0815D048 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _0815D094
	.align 2, 0
_0815D040: .4byte 0x04000060
_0815D044: .4byte 0x04000062
_0815D048: .4byte 0x04000063
_0815D04C:
	ldr r0, _0815D058 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _0815D05C @ =0x04000068
	ldr r2, _0815D060 @ =0x04000069
	b _0815D08C
	.align 2, 0
_0815D058: .4byte 0x04000061
_0815D05C: .4byte 0x04000068
_0815D060: .4byte 0x04000069
_0815D064:
	ldr r0, _0815D078 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _0815D07C @ =0x04000072
	ldr r2, _0815D080 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _0815D094
	.align 2, 0
_0815D078: .4byte 0x04000070
_0815D07C: .4byte 0x04000072
_0815D080: .4byte 0x04000073
_0815D084:
	ldr r0, _0815D0E4 @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _0815D0E8 @ =0x04000078
	ldr r2, _0815D0EC @ =0x04000079
_0815D08C:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_0815D094:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0815D18A
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _0815D1AE
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _0815D0FC
	cmp r6, #2
	bgt _0815D0F0
	cmp r6, #1
	beq _0815D0F6
	b _0815D150
	.align 2, 0
_0815D0E4: .4byte 0x04000071
_0815D0E8: .4byte 0x04000078
_0815D0EC: .4byte 0x04000079
_0815D0F0:
	cmp r6, #3
	beq _0815D108
	b _0815D150
_0815D0F6:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_0815D0FC:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _0815D15C
_0815D108:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _0815D130
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _0815D144 @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_0815D130:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _0815D148
	movs r0, #0xc0
	b _0815D16A
	.align 2, 0
_0815D144: .4byte 0x04000090
_0815D148:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _0815D16C
_0815D150:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_0815D15C:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _0815D16A
	movs r0, #0x40
_0815D16A:
	strb r0, [r4, #0x1a]
_0815D16C:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _0815D186
	b _0815D2C2
_0815D186:
	strb r2, [r4, #9]
	b _0815D2F0
_0815D18A:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0815D1BC
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _0815D1AE
	b _0815D302
_0815D1AE:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _0815D400
_0815D1BC:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _0815D1FC
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0815D1FC
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _0815D22E
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0815D2F0
	ldrb r2, [r4, #7]
	mov r8, r2
	b _0815D2F0
_0815D1FC:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0815D2F0
	cmp r6, #3
	bne _0815D20E
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_0815D20E:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _0815D262
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0815D25E
_0815D22E:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0815D1AE
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0815D302
	movs r2, #8
	mov r8, r2
	b _0815D302
_0815D25E:
	ldrb r0, [r4, #7]
	b _0815D2EE
_0815D262:
	cmp r0, #1
	bne _0815D26E
_0815D266:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _0815D2EE
_0815D26E:
	cmp r0, #2
	bne _0815D2B2
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _0815D2AE
_0815D286:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0815D296
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _0815D22E
_0815D296:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0815D266
	movs r0, #8
	mov r8, r0
	b _0815D266
_0815D2AE:
	ldrb r0, [r4, #5]
	b _0815D2EE
_0815D2B2:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _0815D2EC
_0815D2C2:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _0815D286
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _0815D2F0
	ldrb r2, [r4, #5]
	mov r8, r2
	b _0815D2F0
_0815D2EC:
	ldrb r0, [r4, #4]
_0815D2EE:
	strb r0, [r4, #0xb]
_0815D2F0:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _0815D302
	subs r0, #1
	str r0, [sp]
	b _0815D1FC
_0815D302:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _0815D37A
	cmp r6, #3
	bgt _0815D342
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _0815D342
	ldr r0, _0815D32C @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _0815D334
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _0815D330 @ =0x000007FC
	b _0815D33E
	.align 2, 0
_0815D32C: .4byte 0x04000089
_0815D330: .4byte 0x000007FC
_0815D334:
	cmp r0, #0x7f
	bgt _0815D342
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _0815D350 @ =0x000007FE
_0815D33E:
	ands r0, r1
	str r0, [r4, #0x20]
_0815D342:
	cmp r6, #4
	beq _0815D354
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _0815D362
	.align 2, 0
_0815D350: .4byte 0x000007FE
_0815D354:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_0815D362:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_0815D37A:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _0815D400
	ldr r1, _0815D3C4 @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _0815D3CC
	ldr r0, _0815D3C8 @ =gCgb3Vol
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _0815D400
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _0815D400
	.align 2, 0
_0815D3C4: .4byte 0x04000081
_0815D3C8: .4byte gCgb3Vol
_0815D3CC:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _0815D400
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0815D400
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_0815D400:
	movs r0, #0
	strb r0, [r4, #0x1d]
_0815D404:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _0815D40E
	b _0815D004
_0815D40E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayTempoControl
m4aMPlayTempoControl: @ 0x0815D420
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0815D444 @ =0x68736D53
	cmp r3, r0
	bne _0815D43C
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_0815D43C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0815D444: .4byte 0x68736D53

	thumb_func_start m4aMPlayVolumeControl
m4aMPlayVolumeControl: @ 0x0815D448
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _0815D4AC @ =0x68736D53
	cmp r3, r0
	bne _0815D4A0
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _0815D49C
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_0815D478:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _0815D492
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0815D492
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_0815D492:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _0815D478
_0815D49C:
	ldr r0, _0815D4AC @ =0x68736D53
	str r0, [r4, #0x34]
_0815D4A0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815D4AC: .4byte 0x68736D53

	thumb_func_start m4aMPlayPitchControl
m4aMPlayPitchControl: @ 0x0815D4B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _0815D520 @ =0x68736D53
	cmp r3, r0
	bne _0815D512
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _0815D50E
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_0815D4E8:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _0815D504
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0815D504
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_0815D504:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _0815D4E8
_0815D50E:
	ldr r0, _0815D520 @ =0x68736D53
	str r0, [r4, #0x34]
_0815D512:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815D520: .4byte 0x68736D53

	thumb_func_start m4aMPlayPanpotControl
m4aMPlayPanpotControl: @ 0x0815D524
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _0815D588 @ =0x68736D53
	cmp r3, r0
	bne _0815D57C
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _0815D578
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_0815D554:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _0815D56E
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0815D56E
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_0815D56E:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _0815D554
_0815D578:
	ldr r0, _0815D588 @ =0x68736D53
	str r0, [r4, #0x34]
_0815D57C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815D588: .4byte 0x68736D53

	thumb_func_start ClearModM
ClearModM: @ 0x0815D58C
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _0815D5A0
	movs r0, #0xc
	b _0815D5A2
_0815D5A0:
	movs r0, #3
_0815D5A2:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start m4aMPlayModDepthSet
m4aMPlayModDepthSet: @ 0x0815D5AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _0815D61C @ =0x68736D53
	cmp r1, r0
	bne _0815D60C
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _0815D608
	mov sb, r8
_0815D5DC:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _0815D5FE
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _0815D5FE
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _0815D5FE
	adds r0, r4, #0
	bl ClearModM
_0815D5FE:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _0815D5DC
_0815D608:
	ldr r0, _0815D61C @ =0x68736D53
	str r0, [r6, #0x34]
_0815D60C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815D61C: .4byte 0x68736D53

	thumb_func_start m4aMPlayLFOSpeedSet
m4aMPlayLFOSpeedSet: @ 0x0815D620
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _0815D690 @ =0x68736D53
	cmp r1, r0
	bne _0815D680
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _0815D67C
	mov sb, r8
_0815D650:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _0815D672
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _0815D672
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _0815D672
	adds r0, r4, #0
	bl ClearModM
_0815D672:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _0815D650
_0815D67C:
	ldr r0, _0815D690 @ =0x68736D53
	str r0, [r6, #0x34]
_0815D680:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815D690: .4byte 0x68736D53

	thumb_func_start ply_memacc
ply_memacc: @ 0x0815D694
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _0815D6B8
	b _0815D7E6
_0815D6B8:
	lsls r0, r5, #2
	ldr r1, _0815D6C4 @ =_0815D6C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0815D6C4: .4byte _0815D6C8
_0815D6C8: @ jump table
	.4byte _0815D710 @ case 0
	.4byte _0815D714 @ case 1
	.4byte _0815D71C @ case 2
	.4byte _0815D724 @ case 3
	.4byte _0815D72E @ case 4
	.4byte _0815D73C @ case 5
	.4byte _0815D74A @ case 6
	.4byte _0815D752 @ case 7
	.4byte _0815D75A @ case 8
	.4byte _0815D762 @ case 9
	.4byte _0815D76A @ case 10
	.4byte _0815D772 @ case 11
	.4byte _0815D77A @ case 12
	.4byte _0815D788 @ case 13
	.4byte _0815D796 @ case 14
	.4byte _0815D7A4 @ case 15
	.4byte _0815D7B2 @ case 16
	.4byte _0815D7C0 @ case 17
_0815D710:
	strb r2, [r3]
	b _0815D7E6
_0815D714:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _0815D7E6
_0815D71C:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _0815D7E6
_0815D724:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _0815D7E6
_0815D72E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _0815D7E6
_0815D73C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _0815D7E6
_0815D74A:
	ldrb r3, [r3]
	cmp r3, r2
	beq _0815D7CC
	b _0815D7E0
_0815D752:
	ldrb r3, [r3]
	cmp r3, r2
	bne _0815D7CC
	b _0815D7E0
_0815D75A:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _0815D7CC
	b _0815D7E0
_0815D762:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _0815D7CC
	b _0815D7E0
_0815D76A:
	ldrb r3, [r3]
	cmp r3, r2
	bls _0815D7CC
	b _0815D7E0
_0815D772:
	ldrb r3, [r3]
	cmp r3, r2
	blo _0815D7CC
	b _0815D7E0
_0815D77A:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _0815D7CC
	b _0815D7E0
_0815D788:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _0815D7CC
	b _0815D7E0
_0815D796:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _0815D7CC
	b _0815D7E0
_0815D7A4:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0815D7CC
	b _0815D7E0
_0815D7B2:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _0815D7CC
	b _0815D7E0
_0815D7C0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0815D7E0
_0815D7CC:
	ldr r0, _0815D7DC @ =gMPlayJumpTable+4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _0815D7E6
	.align 2, 0
_0815D7DC: .4byte gMPlayJumpTable+4
_0815D7E0:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_0815D7E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x0815D7EC
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _0815D808 @ =gXcmdTable
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_0815D808: .4byte gXcmdTable

	thumb_func_start ply_xxx
ply_xxx: @ 0x0815D80C
	push {lr}
	ldr r2, _0815D81C @ =gMPlayJumpTable
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_0815D81C: .4byte gMPlayJumpTable

	thumb_func_start ply_xwave
ply_xwave: @ 0x0815D820
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _0815D858 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _0815D85C @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _0815D860 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _0815D864 @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0815D858: .4byte 0xFFFFFF00
_0815D85C: .4byte 0xFFFF00FF
_0815D860: .4byte 0xFF00FFFF
_0815D864: .4byte 0x00FFFFFF

	thumb_func_start ply_xtype
ply_xtype: @ 0x0815D868
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xatta
ply_xatta: @ 0x0815D87C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xdeca
ply_xdeca: @ 0x0815D890
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xsust
ply_xsust: @ 0x0815D8A4
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xrele
ply_xrele: @ 0x0815D8B8
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xiecv
ply_xiecv: @ 0x0815D8CC
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x0815D8D8
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x0815D8E4
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xswee
ply_xswee: @ 0x0815D8F8
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start DummyFunc_2
DummyFunc_2: @ 0x0815D90C
	bx lr
	.align 2, 0
