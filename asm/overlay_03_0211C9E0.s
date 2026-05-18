    .include "macros.inc"
    .include "include/overlay_03_0211C9E0.inc"

    .text

	arm_func_start _ZN11CTitleSceneC1EP5CGame
_ZN11CTitleSceneC1EP5CGame: ; 0x0211C9E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl _ZN6CSceneC2Ev
	ldr r1, _0211CA78 ; =ptr_FUN_overlay_3_0211ca7c_overlay_3_0212a820
	mov r0, #1
	str r1, [r4]
	str r5, [r4, #8]
	mov r2, #0
	str r0, [r4, #0xc]
	strh r2, [r4, #0x10]
	str r2, [r4, #0x14]
	str r2, [r4, #0x40]
	mov r1, r2
	arm_func_end _ZN11CTitleSceneC1EP5CGame
_0211CA18:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x44]
	cmp r2, #4
	blt _0211CA18
	str r1, [r4, #0x54]
	str r1, [r4, #0x58]
	str r1, [r4, #0x8c]
	str r1, [r4, #0x90]
	str r1, [r4, #0xa4]
	str r1, [r4, #0xb0]
	mov r0, #0x1000
	str r0, [r4, #0xa0]
	strh r1, [r4, #0x96]
	str r1, [r4, #0xdc]
	str r1, [r4, #0xe0]
	str r1, [r4, #0xe4]
	str r1, [r4, #0xec]
	str r1, [r4, #0xf0]
	str r1, [r4, #0xf4]
	strb r1, [r4, #0xf8]
	mov r0, r4
	str r1, [r4, #0xfc]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA78: .word ptr_FUN_overlay_3_0211ca7c_overlay_3_0212a820

	arm_func_start ov3_0211CA7C
ov3_0211CA7C: ; 0x0211CA7C
	stmdb sp!, {r4, lr}
	ldr r1, _0211CAA8 ; =ptr_FUN_overlay_3_0211ca7c_overlay_3_0212a820
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CAA8: .word ptr_FUN_overlay_3_0211ca7c_overlay_3_0212a820
	arm_func_end ov3_0211CA7C

	arm_func_start ov3_0211CAAC
ov3_0211CAAC: ; 0x0211CAAC
	stmdb sp!, {r4, lr}
	ldr r1, _0211CAE0 ; =ptr_FUN_overlay_3_0211ca7c_overlay_3_0212a820
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CAE0: .word ptr_FUN_overlay_3_0211ca7c_overlay_3_0212a820
	arm_func_end ov3_0211CAAC

	arm_func_start ov3_0211CAE4
ov3_0211CAE4: ; 0x0211CAE4
	stmdb sp!, {r3, lr}
	bl GX_ResetBankForBG
	bl GX_ResetBankForOBJ
	bl GX_ResetBankForBGExtPltt
	bl GX_ResetBankForOBJExtPltt
	bl GX_ResetBankForTex
	bl GX_ResetBankForTexPltt
	bl GX_ResetBankForClearImage
	bl GX_ResetBankForSubBG
	bl GX_ResetBankForSubOBJ
	bl GX_ResetBankForSubBGExtPltt
	bl GX_ResetBankForSubOBJExtPltt
	bl GX_ResetBankForARM7
	ldr r0, _0211CD04 ; =0x000001FF
	bl GX_SetBankForLCDC
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0xa4000
	bl MIi_CpuClearFast
	bl GX_DisableBankForLCDC
	mov r0, #0xc0
	mov r1, #0x7000000
	mov r2, #0x400
	bl MIi_CpuClearFast
	mov r0, #0
	mov r1, #0x5000000
	mov r2, #0x400
	bl MIi_CpuClearFast
	mov r0, #0xc0
	ldr r1, _0211CD08 ; =0x07000400
	mov r2, #0x400
	bl MIi_CpuClearFast
	mov r0, #0
	ldr r1, _0211CD0C ; =0x05000400
	mov r2, #0x400
	bl MIi_CpuClearFast
	mov r2, #2
	ldr r1, _0211CD10 ; =0x04000540
	mov r0, #0
	str r2, [r1]
	bl GX_SetBankForTex
	mov r0, #0
	bl GX_SetBankForTexPltt
	mov r0, #0x70
	bl GX_SetBankForOBJ
	mov r0, #3
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #0
	mov r2, r1
	bl GX_SetGraphicsMode
	ldr r3, _0211CD14 ; =0x04000008
	ldrh r0, [r3]
	bic r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r3, #4]
	ldrh r2, [r3, #6]
	mov r0, #0
	mov r1, #0x6000000
	bic r2, r2, #3
	orr ip, r2, #3
	mov r2, #0x20000
	strh ip, [r3, #6]
	bl MIi_CpuClearFast
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, #8
	bl GX_SetBankForSubOBJ
	ldr ip, _0211CD18 ; =0x04001008
	mov r0, #0
	ldrh r3, [ip]
	mov r1, #0x6200000
	mov r2, #0x20000
	bic r3, r3, #3
	orr r3, r3, #3
	strh r3, [ip]
	ldrh r3, [ip, #2]
	bic r3, r3, #3
	orr r3, r3, #2
	strh r3, [ip, #2]
	ldrh r3, [ip, #4]
	bic r3, r3, #3
	orr r3, r3, #1
	strh r3, [ip, #4]
	ldrh r3, [ip, #6]
	bic r3, r3, #3
	strh r3, [ip, #6]
	bl MIi_CpuClearFast
	mov r1, #0
	str r1, [sp]
	ldr r0, _0211CD1C ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr lr, _0211CD20 ; =0x04000060
	ldr r0, _0211CD24 ; =0xFFFFFDF1
	ldrh r1, [lr]
	add ip, lr, #0x2a4
	mov r2, #0x4000000
	bic r1, r1, #0x3000
	orr r1, r1, #8
	strh r1, [lr]
	ldrh r3, [lr]
	add r1, r2, #0x1000
	bic r3, r3, #0x3000
	orr r3, r3, #0x10
	strh r3, [lr]
	ldrh r3, [ip]
	and r0, r3, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [ip]
	ldrh r0, [ip]
	orr r0, r0, #0x8000
	strh r0, [ip]
	ldr r0, [r2]
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1200
	str r0, [r1]
	bl GX_DispOn
	ldr r1, _0211CD28 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CD04: .word 0x000001FF
_0211CD08: .word 0x07000400
_0211CD0C: .word 0x05000400
_0211CD10: .word 0x04000540
_0211CD14: .word 0x04000008
_0211CD18: .word 0x04001008
_0211CD1C: .word 0x04000050
_0211CD20: .word 0x04000060
_0211CD24: .word 0xFFFFFDF1
_0211CD28: .word 0x04001000
	arm_func_end ov3_0211CAE4

	arm_func_start ov3_0211CD2C
ov3_0211CD2C: ; 0x0211CD2C
	ldr r1, _0211CD68 ; =0x04001010
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	sub r2, r1, #8
	str r0, [r1, #0xc]
	ldrh r0, [r2]
	and r0, r0, #0x43
	strh r0, [r2]
	ldrh r0, [r1, #-6]!
	and r0, r0, #0x43
	orr r0, r0, #0xd00
	strh r0, [r1]
	bx lr
	.align 2, 0
_0211CD68: .word 0x04001010
	arm_func_end ov3_0211CD2C

	arm_func_start ov3_0211CD6C
ov3_0211CD6C: ; 0x0211CD6C
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0xc]
	tst r1, #0x200
	beq _0211CD84
	bl ov3_0211CD8C
	ldmia sp!, {r3, pc}
	arm_func_end ov3_0211CD6C
_0211CD84:
	bl ov3_0211D1B0
	ldmia sp!, {r3, pc}

	arm_func_start ov3_0211CD8C
ov3_0211CD8C: ; 0x0211CD8C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x118
	ldr r6, _0211D19C ; =DAT_overlay_3_0212a138
	add r5, sp, #0x38
	mov sl, r0
	mov r4, #0xe
	arm_func_end ov3_0211CD8C
_0211CDA4:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0211CDA4
	ldr r0, [sl, #8]
	add r0, r0, #0x1000
	ldr r8, [r0, #0x498]
	mov r0, r8
	bl sub_0200CAE0
	mov r0, r8
	bl sub_0200CB14
	ldr r1, [sl, #8]
	mov r0, r8
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4ac]
	mov r2, #0
	add r1, r1, #0x14
	bl sub_0200CACC
	mov r0, r8
	mov r1, #8
	bl sub_0200CC88
	ldr r0, _0211D1A0 ; =MAIN_BSS_020BA6A0
	mov r5, #0x3b
	ldrb r1, [r0, #0x7da]
	mov r0, #0x63
	str r0, [sp, #0x14]
	cmp r1, #0
	bne _0211CE28
	ldr r0, _0211D1A4 ; =MAIN_BSS_020B26A0
	add r0, r0, #0x8000
	ldrb r5, [r0, #0x7d8]
	ldr r0, [r0, #0x7d4]
	str r0, [sp, #0x14]
_0211CE28:
	mov r7, #0
	add sb, sp, #0x38
	mov r6, #0x20
	mov r4, r7
	mov fp, #2
_0211CE3C:
	ldr r1, [sb, #8]
	mov r0, r8
	str r1, [sp]
	ldr r2, [sb, #0xc]
	mov r1, r7
	stmib sp, {r2, r6}
	str r4, [sp, #0xc]
	str fp, [sp, #0x10]
	ldmia sb, {r2, r3}
	bl sub_0200CCD0
	add r7, r7, #1
	ldr r1, [sb]
	ldr r0, [sb, #4]
	cmp r7, #8
	mla r6, r1, r0, r6
	add sb, sb, #0x1c
	blt _0211CE3C
	mov r6, #0
	add r4, sp, #0x18
	mov r2, r4
	mov r0, r6
	mov r1, r6
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2, {r0, r1}
	ldr r1, [sl, #0x8c]
	ldr r0, _0211D1A4 ; =MAIN_BSS_020B26A0
	ldr r1, [r1, #8]
	add r0, r0, #0xe3
	ldr r1, [r1, #0x10c]
	add r0, r0, #0x8700
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sl, #0x8c]
	add r7, sp, #0x38
	ldr r0, [r0, #8]
	mov sb, r6
	ldr r0, [r0, #0xd4]
	str r0, [sp, #0x20]
	ldr r0, [sl, #0x8c]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x11c]
	str r0, [sp, #0x24]
	ldr r0, [sl, #0x8c]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x114]
	str r0, [sp, #0x2c]
	ldr r0, [sl, #0x8c]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x124]
	str r0, [sp, #0x30]
	ldr r0, [sl, #0x8c]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x12c]
	str r0, [sp, #0x34]
_0211CF1C:
	ldr r3, [r4, r6, lsl #2]
	cmp r3, #0
	beq _0211CF54
	ldr r2, [r7, #0x10]
	ldr r1, [r7, #0x18]
	cmp r2, #0
	movlt fp, #1
	movge fp, #0
	stmia sp, {r1, r3, fp}
	str sb, [sp, #0xc]
	ldr r3, [r7, #0x14]
	mov r0, r8
	mov r1, r6
	bl sub_0200CDA0
_0211CF54:
	add r6, r6, #1
	cmp r6, #8
	add r7, r7, #0x1c
	blt _0211CF1C
	ldr r2, _0211D1A8 ; =0xCCCCCCCD
	ldr r0, [sp, #0x14]
	ldr r4, [sp, #0xc0]
	umull r1, r3, r0, r2
	mov r3, r3, lsr #3
	umull r0, r1, r3, r2
	mov r1, r1, lsr #3
	mov r2, #0xa
	umull r0, r1, r2, r1
	str r4, [sp]
	ldr r4, [sl, #0x8c]
	rsb r1, r0, r3
	ldr r2, [r4, #8]
	add r0, r1, #8
	add r0, r2, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xb8]
	ldr r3, [sp, #0xbc]
	mov r0, r8
	mov r1, #4
	bl sub_0200CDA0
	ldr r2, [sp, #0xc0]
	ldr r1, _0211D1A8 ; =0xCCCCCCCD
	ldr r0, [sp, #0x14]
	str r2, [sp]
	umull r1, r3, r0, r1
	ldr r0, [sl, #0x8c]
	mov r3, r3, lsr #3
	mov r2, #0xa
	ldr r4, [r0, #8]
	umull r1, r0, r2, r3
	ldr r0, [sp, #0x14]
	sub r3, r0, r1
	add r0, r3, #8
	add r0, r4, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xb8]
	ldr r3, [sp, #0xbc]
	add r2, r0, #0xb
	mov r0, r8
	mov r1, #4
	bl sub_0200CDA0
	ldr r0, [sp, #0xc0]
	mov r2, #0
	str r0, [sp]
	ldr r1, [sl, #0x8c]
	mov r0, r8
	ldr r3, [r1, #8]
	mov r1, #4
	ldr r3, [r3, #0x1a4]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xb8]
	ldr r3, [sp, #0xbc]
	add r2, r2, #0x16
	bl sub_0200CDA0
	ldr r0, [sp, #0xc0]
	ldr r1, _0211D1AC ; =0x66666667
	str r0, [sp]
	smull r0, r2, r1, r5
	ldr r1, [sl, #0x8c]
	mov r0, r5, lsr #0x1f
	add r2, r0, r2, asr #2
	ldr r1, [r1, #8]
	add r0, r2, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xb8]
	ldr r3, [sp, #0xbc]
	mov r0, r8
	mov r1, #4
	add r2, r2, #0x21
	bl sub_0200CDA0
	ldr r1, [sp, #0xc0]
	ldr r2, _0211D1AC ; =0x66666667
	str r1, [sp]
	smull r1, r4, r2, r5
	ldr r2, [sl, #0x8c]
	mov r1, r5, lsr #0x1f
	add r4, r1, r4, asr #2
	mov r3, #0xa
	ldr r6, [r2, #8]
	smull r1, r2, r3, r4
	sub r4, r5, r1
	add r1, r4, #8
	add r1, r6, r1, lsl #3
	ldr r2, [r1, #4]
	mov r1, #0
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0xb8]
	ldr r3, [sp, #0xbc]
	mov r0, r8
	mov r1, #4
	add r2, r2, #0x2c
	bl sub_0200CDA0
	mov r3, #0
	str r3, [sl, #0x5c]
	sub r0, r3, #0x28000
	str r0, [sl, #0x60]
	mov r2, #0x100000
	str r2, [sl, #0x64]
	mov r0, #0x48000
	str r0, [sl, #0x68]
	str r3, [sl, #0x6c]
	mov r0, #0x10000
	str r0, [sl, #0x70]
	str r2, [sl, #0x74]
	mov r1, #0x20000
	str r1, [sl, #0x78]
	ldr r0, [sl, #0xc]
	tst r0, #0x400
	beq _0211D17C
	str r3, [sl, #0x7c]
	mov r0, #0x30000
	str r0, [sl, #0x80]
	str r2, [sl, #0x84]
	add sp, sp, #0x118
	str r1, [sl, #0x88]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211D17C:
	sub r0, r1, #0x120000
	str r0, [sl, #0x7c]
	sub r0, r1, #0xe0000
	str r0, [sl, #0x80]
	str r3, [sl, #0x84]
	str r3, [sl, #0x88]
	add sp, sp, #0x118
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211D19C: .word DAT_overlay_3_0212a138
_0211D1A0: .word MAIN_BSS_020BA6A0
_0211D1A4: .word MAIN_BSS_020B26A0
_0211D1A8: .word 0xCCCCCCCD
_0211D1AC: .word 0x66666667

	arm_func_start ov3_0211D1B0
ov3_0211D1B0: ; 0x0211D1B0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x74
	ldr r6, _0211D35C ; =DAT_overlay_3_0212a0e4
	add r5, sp, #0x20
	mov sl, r0
	mov r4, #5
	arm_func_end ov3_0211D1B0
_0211D1C8:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0211D1C8
	ldr r0, [r6]
	str r0, [r5]
	ldr r0, [sl, #8]
	add r0, r0, #0x1000
	ldr r8, [r0, #0x498]
	mov r0, r8
	bl sub_0200CAE0
	mov r0, r8
	bl sub_0200CB14
	ldr r1, [sl, #8]
	mov r0, r8
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4ac]
	mov r2, #0
	add r1, r1, #0x14
	bl sub_0200CACC
	mov r0, r8
	mov r1, #3
	bl sub_0200CC88
	mov r7, #0
	add sb, sp, #0x20
	mov r6, #0x20
	mov r5, r7
	mov r4, #2
_0211D238:
	ldr r1, [sb, #8]
	mov r0, r8
	str r1, [sp]
	ldr r2, [sb, #0xc]
	mov r1, r7
	stmib sp, {r2, r6}
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldmia sb, {r2, r3}
	bl sub_0200CCD0
	add r7, r7, #1
	ldr r1, [sb]
	ldr r0, [sb, #4]
	cmp r7, #3
	mla r6, r1, r0, r6
	add sb, sb, #0x1c
	blt _0211D238
	ldr r0, [sl, #0x8c]
	mov r7, #0
	ldr r0, [r0, #8]
	add sb, sp, #0x20
	ldr r2, [r0, #0x114]
	ldr r1, [r0, #0x124]
	ldr r0, [r0, #0x12c]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov fp, r7
	mov r6, #1
	add r5, sp, #0x14
	mov r4, r7
_0211D2B4:
	ldr r2, [sb, #0x10]
	ldr r1, [sb, #0x18]
	cmp r2, #0
	movlt r3, r6
	str r1, [sp]
	ldr r0, [r5, r7, lsl #2]
	movge r3, fp
	stmib sp, {r0, r3, r4}
	ldr r3, [sb, #0x14]
	mov r0, r8
	mov r1, r7
	bl sub_0200CDA0
	add r7, r7, #1
	cmp r7, #3
	add sb, sb, #0x1c
	blt _0211D2B4
	mov r3, #0
	str r3, [sl, #0x6c]
	sub r0, r3, #0x48000
	str r0, [sl, #0x70]
	mov r2, #0x100000
	str r2, [sl, #0x74]
	mov r1, #0x20000
	str r1, [sl, #0x78]
	ldr r0, [sl, #0xc]
	tst r0, #0x400
	beq _0211D33C
	str r3, [sl, #0x7c]
	sub r0, r1, #0x48000
	str r0, [sl, #0x80]
	str r2, [sl, #0x84]
	add sp, sp, #0x74
	str r1, [sl, #0x88]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211D33C:
	sub r0, r1, #0x120000
	str r0, [sl, #0x7c]
	sub r0, r1, #0xe0000
	str r0, [sl, #0x80]
	str r3, [sl, #0x84]
	str r3, [sl, #0x88]
	add sp, sp, #0x74
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211D35C: .word DAT_overlay_3_0212a0e4

	arm_func_start ov3_0211D360
ov3_0211D360: ; 0x0211D360
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x94
	ldr r1, _0211DD1C ; =MAIN_BSS_0208F31C
	mov r2, #1
	mov sl, r0
	str r2, [r1]
	ldr r0, [sl, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a4]
	add r0, r0, #0x8000
	ldr r0, [r0, #0xba0]
	str r0, [sl, #0xf0]
	cmp r0, #0
	bne _0211D7E8
	mov r0, #0x34
	bl _Znwm
	cmp r0, #0
	beq _0211D3D0
	mov r3, #0
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #0x30]
	mov r2, r3
	arm_func_end ov3_0211D360
_0211D3BC:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #8]
	cmp r3, #0xa
	blt _0211D3BC
_0211D3D0:
	str r0, [sl, #0xf0]
	mov r8, r0
	mov r0, #0x64
	ldr r4, [sl, #8]
	bl _Znwm
	cmp r0, #0
	beq _0211D3F4
	mov r1, r4
	bl sub_0201FC9C
_0211D3F4:
	str r0, [r8]
	mov r1, #5
	bl sub_02020328
	ldr r0, [r8]
	ldr r1, _0211DD20 ; =s_menu_overlay_3_0212a6e8
	ldr r2, _0211DD24 ; =s_title000_bg_overlay_3_0212a7f8
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r8]
	ldr r1, _0211DD28 ; =s_title000_overlay_3_0212a728
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r8]
	ldr r1, _0211DD2C ; =s_title000_overlay_3_0212a71c
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r8]
	ldr r1, _0211DD30 ; =s_title000_00_overlay_3_0212a7d0
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r8]
	bl sub_020204A8
	mov r1, #0x100
	ldr r0, [r8]
	mov r2, r1
	bl sub_0201FE18
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _0211D490
	mov r1, r4
	bl sub_0201FC9C
_0211D490:
	str r0, [r8, #4]
	mov r1, #5
	bl sub_02020328
	ldr r0, [r8, #4]
	ldr r1, _0211DD34 ; =s_menu_overlay_3_0212a6e0
	ldr r2, _0211DD38 ; =s_title004_bg_overlay_3_0212a7e8
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r8, #4]
	ldr r1, _0211DD3C ; =s_title004_overlay_3_0212a704
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r8, #4]
	ldr r1, _0211DD40 ; =s_title004_overlay_3_0212a710
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r8, #4]
	ldr r1, _0211DD44 ; =s_title004_00_overlay_3_0212a7c4
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r8, #4]
	bl sub_020204A8
	mov r1, #0x100
	ldr r0, [r8, #4]
	mov r2, r1
	bl sub_0201FE18
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D544
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0211D544:
	str r0, [r8, #0xc]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D578
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0xe4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0211D578:
	str r0, [r8, #8]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D5AC
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x1a4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0211D5AC:
	str r0, [r8, #0x18]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D5E0
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0xe4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0211D5E0:
	str r0, [r8, #0x10]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D614
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0211D614:
	str r0, [r8, #0x14]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D648
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0211D648:
	add r5, r4, #0x224
	str r0, [r8, #0x1c]
	mov sb, #0
	add r4, r4, #0x1000
	mov r6, #0x40
	mov fp, #1
	mov r7, #0x44
_0211D664:
	mov r0, r7
	bl _Znwm
	cmp r0, #0
	beq _0211D688
	str r6, [sp]
	ldr r2, [r4, #0x4a8]
	mov r3, fp
	add r1, r5, #0x400
	bl sub_0200ECD0
_0211D688:
	add r1, r8, sb, lsl #2
	add sb, sb, #1
	str r0, [r1, #0x20]
	cmp sb, #4
	blt _0211D664
	mov r3, #0
	str r3, [r8, #0x30]
	str r3, [sp]
	ldr r0, [r8, #0xc]
	ldr r1, _0211DD48 ; =s_data_menu_overlay_3_0212a758
	ldr r2, _0211DD4C ; =s_title002_00_overlay_3_0212a7a0
	mov r4, r3
	bl sub_0200F168
	add r4, r4, r0
	mov r0, #2
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r8, #8]
	ldr r1, _0211DD50 ; =s_data_menu_overlay_3_0212a740
	ldr r2, _0211DD54 ; =s_title001_00_overlay_3_0212a788
	mov r3, r3, asr #5
	bl sub_0200F168
	add r4, r4, r0
	mov r0, #4
	str r0, [sp]
	mov r0, r4, asr #4
	add r0, r4, r0, lsr #27
	mov r3, r0, asr #5
	ldr r0, [r8, #0x18]
	ldr r1, _0211DD58 ; =s_data_menu_overlay_3_0212a734
	ldr r2, _0211DD5C ; =s_ma003_00_overlay_3_0212a6f8
	bl sub_0200F168
	add r4, r4, r0
	mov r0, #6
	mov r3, r4, asr #4
	str r0, [sp]
	add r3, r4, r3, lsr #27
	ldr r0, [r8, #0x10]
	ldr r1, _0211DD60 ; =s_data_menu_overlay_3_0212a77c
	ldr r2, _0211DD64 ; =s_title003_00_overlay_3_0212a7dc
	mov r3, r3, asr #5
	bl sub_0200F168
	add r4, r4, r0
	mov r0, #0xc
	mov r3, r4, asr #4
	str r0, [sp]
	add r3, r4, r3, lsr #27
	ldr r0, [r8, #0x14]
	ldr r1, _0211DD68 ; =s_data_menu_overlay_3_0212a770
	ldr r2, _0211DD6C ; =s_title005_00_overlay_3_0212a7b8
	mov r3, r3, asr #5
	bl sub_0200F168
	add r4, r4, r0
	mov r0, #0xd
	mov r3, r4, asr #4
	str r0, [sp]
	add r3, r4, r3, lsr #27
	ldr r0, [r8, #0x1c]
	ldr r1, _0211DD70 ; =s_data_menu_overlay_3_0212a764
	ldr r2, _0211DD74 ; =s_title005_01_overlay_3_0212a7ac
	mov r3, r3, asr #5
	bl sub_0200F168
	add r7, r4, r0
	ldr r5, _0211DD78 ; =s_tp_03d_overlay_3_0212a6f0
	ldr r4, _0211DD7C ; =s_data_menu_overlay_3_0212a74c
	str r7, [r8, #0x30]
	mov sb, #0
	add r6, sp, #0x34
_0211D79C:
	mov r0, r6
	mov r1, r5
	mov r2, sb
	bl OS_SPrintf
	add r1, sb, #8
	mov r0, r7, asr #4
	add r2, r7, r0, lsr #27
	str r1, [sp]
	add r0, r8, sb, lsl #2
	ldr r0, [r0, #0x20]
	mov r1, r4
	mov r3, r2, asr #5
	mov r2, r6
	bl sub_0200F168
	add sb, sb, #1
	cmp sb, #4
	add r7, r7, r0
	blt _0211D79C
	str r7, [r8, #0x30]
_0211D7E8:
	ldr r0, [sl, #8]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r3, #0x4000000
	ldr r1, [r3]
	ldr r0, _0211DD80 ; =0xFFCFFFEF
	add r2, r3, #0x1000
	and r1, r1, r0
	orr r1, r1, #0x10
	str r1, [r3]
	ldr r1, [r2]
	mov r3, #0x10
	and r0, r1, r0
	orr r0, r0, #0x10
	str r0, [r2]
	ldr r5, [sl, #8]
	mov r2, #0x4000
	add r0, r5, #0x1000
	ldr r4, [r0, #0x4b0]
	add r1, r5, #0x24
	str r4, [sp]
	str r1, [sp, #4]
	ldr r4, [r0, #0x48c]
	mov r1, #0
	str r4, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x4ac]
	ldr r0, [r0, #0x490]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	add r3, r3, #0x14
	bl _ZN17UnkClass_020091E812sub_02009328EP17UnkClass_02001C04P11CTouchPanelP10NNSG2dFontPvP10CGame_0024S6_mmm
	bl sub_02007D68
	mov r1, #0x400
	mov r0, sl
	str r1, [sl, #0xc]
	bl ov3_0211CD2C
	add r0, sp, #0x28
	bl RTC_GetTime
	ldr r0, [sp, #0x28]
	cmp r0, #6
	blo _0211D8AC
	cmp r0, #0x12
	movlo r4, #0
	blo _0211D8B0
_0211D8AC:
	mov r4, #1
_0211D8B0:
	mov r0, #0x14
	bl _Znwm
	cmp r0, #0
	beq _0211D8C4
	bl ov3_0212071C
_0211D8C4:
	str r0, [sl, #0xec]
	mov r1, r4
	bl ov3_02120810
	ldr r1, [sl, #0xf0]
	mov r0, #0xb8
	ldr r1, [r1]
	str r1, [sl, #0x24]
	bl _Znwm
	movs r6, r0
	beq _0211D8FC
	ldr r1, _0211DD84 ; =s_data_message_etc_menu_mes_overlay_3_0212a84c
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPKcm
	mov r6, r0
_0211D8FC:
	mov r0, #0xc
	bl _Znwm
	str r0, [sl, #0x8c]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [sl, #0x8c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [sl, #0x8c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [sl, #0x8c]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [sl, #0x8c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0211D9C4
_0211D954:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [sl, #0x8c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [sl, #0x8c]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [sl, #0x8c]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [sl, #0x8c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0211D954
_0211D9C4:
	cmp r6, #0
	beq _0211D9DC
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D9DC:
	mov r0, #0xb8
	bl _Znwm
	movs r5, r0
	beq _0211D9FC
	ldr r1, _0211DD88 ; =s_data_message_system_system_mes_overlay_3_0212a868
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPKcm
	mov r5, r0
_0211D9FC:
	mov r0, #0xc
	bl _Znwm
	str r0, [sl, #0x90]
	ldr r1, [r5, #0x4c]
	mov r6, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r5, #0x4c]
	ldr r0, [sl, #0x90]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [sl, #0x90]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [sl, #0x90]
	mov r4, #0
	str r0, [r1, #8]
	ldr r2, [sl, #0x90]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0211DAC4
_0211DA54:
	ldr r1, [r5, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r6, lsl #2]
	add r6, r6, #1
	str r1, [r0, r4, lsl #3]
	ldr r0, [sl, #0x90]
	ldr r0, [r0, #8]
	ldr r0, [r0, r4, lsl #3]
	bl _Znam
	ldr r1, [sl, #0x90]
	ldr r1, [r1, #8]
	add r1, r1, r4, lsl #3
	str r0, [r1, #4]
	ldr r1, [sl, #0x90]
	ldr r0, [r5, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r6, lsl #2
	add r1, r2, r4, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r4, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [sl, #0x90]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r4, lsl #3]
	add r4, r4, #1
	cmp r4, r0
	add r6, r6, r1, lsr #2
	blo _0211DA54
_0211DAC4:
	cmp r5, #0
	beq _0211DADC
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211DADC:
	ldr r4, [sl, #0xf0]
	ldr r0, [r4, #0xc]
	bl sub_0200F398
	ldr r0, [r4, #0xc]
	bl sub_0200F4A8
	ldr r0, [r4, #0xc]
	str r0, [sl, #0x40]
	ldr r4, [sl, #0xf0]
	ldr r0, [r4, #8]
	bl sub_0200F398
	ldr r0, [r4, #8]
	bl sub_0200F4A8
	ldr r0, [r4, #8]
	str r0, [sl, #0x54]
	ldr r4, [sl, #0xf0]
	ldr r0, [r4, #0x18]
	bl sub_0200F398
	ldr r0, [r4, #0x18]
	bl sub_0200F4A8
	ldr r0, [r4, #0x18]
	str r0, [sl, #0x58]
	ldr r4, [sl, #0xf0]
	ldr r0, [r4, #0x10]
	bl sub_0200F398
	ldr r0, [r4, #0x10]
	bl sub_0200F4A8
	ldr r0, [r4, #0x10]
	str r0, [sl, #0xb0]
	ldr r4, [sl, #0xf0]
	ldr r0, [r4, #0x14]
	bl sub_0200F398
	ldr r0, [r4, #0x14]
	bl sub_0200F4A8
	ldr r0, [r4, #0x14]
	str r0, [sl, #0xd0]
	ldr r4, [sl, #0xf0]
	ldr r0, [r4, #0x1c]
	bl sub_0200F398
	ldr r0, [r4, #0x1c]
	bl sub_0200F4A8
	ldr r0, [r4, #0x1c]
	mov r4, #0
	str r0, [sl, #0xd8]
	mov r5, r4
_0211DB8C:
	adds r0, r4, #6
	ldr r6, [sl, #0xf0]
	bmi _0211DBC4
	cmp r0, #0xa
	bge _0211DBC4
	add r0, r6, r4, lsl #2
	ldr r0, [r0, #0x20]
	bl sub_0200F398
	add r0, r6, r4, lsl #2
	ldr r0, [r0, #0x20]
	bl sub_0200F4A8
	add r0, r6, r4, lsl #2
	ldr r1, [r0, #0x20]
	b _0211DBC8
_0211DBC4:
	mov r1, r5
_0211DBC8:
	add r0, sl, r4, lsl #2
	add r4, r4, #1
	str r1, [r0, #0x44]
	cmp r4, #4
	blt _0211DB8C
	mov r0, sl
	bl ov3_02120634
	mov r0, sl
	bl ov3_0212069C
	ldr r0, [sl, #0xf0]
	mov r2, #0x20000
	ldr r1, [r0, #4]
	sub r0, r2, #0x60000
	str r1, [sl, #0xa4]
	str r2, [sl, #0xbc]
	str r0, [sl, #0xb4]
	mov r1, #0
	str r1, [sl, #0xb8]
	str r2, [sl, #0xc8]
	mov r0, #0x40000
	str r0, [sl, #0xc0]
	str r1, [sl, #0xc4]
	ldr r0, [sl, #8]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [sl, #8]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	mov r0, #0x74
	bl _Znwm
	cmp r0, #0
	beq _0211DC68
	mov r1, #0
	bl sub_02027FE8
_0211DC68:
	str r0, [sl, #0xe4]
	mov r0, #0
	str r0, [sl, #0xdc]
	str r0, [sl, #0xe0]
	ldr r0, [sl, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	str r0, [sl, #4]
	bl sub_020345D4
	ldr r0, [sl, #8]
	ldr r0, [r0, #8]
	cmp r0, #8
	bne _0211DCAC
	ldr r0, [sl, #4]
	mov r1, #0x200
	mov r2, #0x40
	bl sub_02034D54
_0211DCAC:
	mvn r0, #0
	str r0, [sl, #0xe8]
	mov r0, #0
	strb r0, [sl, #0xf8]
	str r0, [sl, #0xfc]
	ldr r0, [sl, #8]
	bl sub_0200FAA4
	add r0, sp, #0x28
	bl RTC_GetTime
	add r0, sp, #0x18
	bl RTC_GetDate
	ldr r1, [sp, #0x28]
	ldr r0, _0211DD8C ; =MAIN_BSS_020BA6A0
	ldr r2, [sp, #0x2c]
	str r1, [r0, #0xb94]
	str r2, [r0, #0xb98]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x18]
	str r1, [r0, #0xb9c]
	str r2, [r0, #0xb84]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	str r1, [r0, #0xb88]
	ldr r1, [sp, #0x24]
	str r2, [r0, #0xb8c]
	str r1, [r0, #0xb90]
	add sp, sp, #0x94
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211DD1C: .word MAIN_BSS_0208F31C
_0211DD20: .word s_menu_overlay_3_0212a6e8
_0211DD24: .word s_title000_bg_overlay_3_0212a7f8
_0211DD28: .word s_title000_overlay_3_0212a728
_0211DD2C: .word s_title000_overlay_3_0212a71c
_0211DD30: .word s_title000_00_overlay_3_0212a7d0
_0211DD34: .word s_menu_overlay_3_0212a6e0
_0211DD38: .word s_title004_bg_overlay_3_0212a7e8
_0211DD3C: .word s_title004_overlay_3_0212a704
_0211DD40: .word s_title004_overlay_3_0212a710
_0211DD44: .word s_title004_00_overlay_3_0212a7c4
_0211DD48: .word s_data_menu_overlay_3_0212a758
_0211DD4C: .word s_title002_00_overlay_3_0212a7a0
_0211DD50: .word s_data_menu_overlay_3_0212a740
_0211DD54: .word s_title001_00_overlay_3_0212a788
_0211DD58: .word s_data_menu_overlay_3_0212a734
_0211DD5C: .word s_ma003_00_overlay_3_0212a6f8
_0211DD60: .word s_data_menu_overlay_3_0212a77c
_0211DD64: .word s_title003_00_overlay_3_0212a7dc
_0211DD68: .word s_data_menu_overlay_3_0212a770
_0211DD6C: .word s_title005_00_overlay_3_0212a7b8
_0211DD70: .word s_data_menu_overlay_3_0212a764
_0211DD74: .word s_title005_01_overlay_3_0212a7ac
_0211DD78: .word s_tp_03d_overlay_3_0212a6f0
_0211DD7C: .word s_data_menu_overlay_3_0212a74c
_0211DD80: .word 0xFFCFFFEF
_0211DD84: .word s_data_message_etc_menu_mes_overlay_3_0212a84c
_0211DD88: .word s_data_message_system_system_mes_overlay_3_0212a868
_0211DD8C: .word MAIN_BSS_020BA6A0

	arm_func_start ov3_0211DD90
ov3_0211DD90: ; 0x0211DD90
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0211DF1C ; =MAIN_BSS_020B26A0
	mov r7, r0
	ldrb r2, [r1, #3]
	ldr r0, [r7, #0xc]
	ldrb r5, [r1]
	mov r1, r2, asr #4
	and r4, r2, #0xf
	and r6, r1, #0xf
	tst r0, #0x200
	mov r2, #0x80
	beq _0211DEC0
	mov r0, #2
	str r0, [sp]
	ldr r0, [r7, #0x40]
	mov r1, #0
	mov r3, #0x38
	bl sub_0200F4FC
	str r0, [r7, #0x28]
	ldr r0, [r7, #0x40]
	mov r1, #2
	ldr r0, [r0, #0x24]
	mov r2, #0x80
	str r0, [r7, #0x18]
	str r1, [sp]
	ldr r0, [r7, #0x40]
	mov r3, #0x70
	bl sub_0200F4FC
	str r0, [r7, #0x2c]
	ldr r0, [r7, #0x40]
	ldr r0, [r0, #0x24]
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0xc]
	tst r0, #0x400
	beq _0211DE44
	mov r1, #2
	str r1, [sp]
	ldr r0, [r7, #0x40]
	mov r2, #0x80
	mov r3, #0x90
	bl sub_0200F4FC
	str r0, [r7, #0x30]
	ldr r0, [r7, #0x40]
	ldr r0, [r0, #0x24]
	str r0, [r7, #0x20]
	arm_func_end ov3_0211DD90
_0211DE44:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r7, #0x54]
	mov r1, #0
	mov r2, #0x20
	mov r3, #0x4b
	bl sub_0200F4FC
	str r0, [r7, #0x38]
	cmp r4, #0
	beq _0211DE8C
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7, #0x58]
	sub r1, r4, #1
	mov r2, #0x9c
	mov r3, #0x44
	bl sub_0200F4FC
	str r0, [r7, #0x3c]
_0211DE8C:
	cmp r6, #0
	moveq r0, #0
	movne r0, #2
	orr r0, r5, r0
	mov r1, #0
	str r1, [sp]
	add r0, r7, r0, lsl #2
	ldr r0, [r0, #0x44]
	mov r2, #0x20
	mov r3, #0x4d
	bl sub_0200F4FC
	str r0, [r7, #0x34]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0211DEC0:
	mov r1, #2
	str r1, [sp]
	ldr r0, [r7, #0x40]
	mov r3, #0x18
	bl sub_0200F4FC
	str r0, [r7, #0x2c]
	ldr r0, [r7, #0x40]
	ldr r0, [r0, #0x24]
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0xc]
	tst r0, #0x400
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #2
	str r1, [sp]
	ldr r0, [r7, #0x40]
	mov r2, #0x80
	mov r3, #0x38
	bl sub_0200F4FC
	str r0, [r7, #0x30]
	ldr r0, [r7, #0x40]
	ldr r0, [r0, #0x24]
	str r0, [r7, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211DF1C: .word MAIN_BSS_020B26A0

	arm_func_start ov3_0211DF20
ov3_0211DF20: ; 0x0211DF20
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x40]
	bl sub_0200F6C4
	ldr r0, [r5, #0x54]
	bl sub_0200F6C4
	ldr r0, [r5, #0x58]
	bl sub_0200F6C4
	mov r4, #0
	arm_func_end ov3_0211DF20
_0211DF44:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _0211DF58
	bl sub_0200F6C4
_0211DF58:
	add r4, r4, #1
	cmp r4, #4
	blt _0211DF44
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov3_0211DF68
ov3_0211DF68: ; 0x0211DF68
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldr r0, [r5, #0xec]
	cmp r0, #0
	beq _0211DFA8
	bl ov3_021208FC
	ldr r4, [r5, #0xec]
	cmp r4, #0
	beq _0211DFA8
	beq _0211DFA0
	mov r0, r4
	bl ov3_02120744
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov3_0211DF68
_0211DFA0:
	mov r0, #0
	str r0, [r5, #0xec]
_0211DFA8:
	ldr r6, [r5, #0xf0]
	cmp r6, #0
	beq _0211E058
	beq _0211E050
	mov r7, #0
	mov r4, r7
_0211DFC0:
	add r0, r6, r7, lsl #2
	ldr r8, [r0, #8]
	cmp r8, #0
	beq _0211DFEC
	beq _0211DFE4
	mov r0, r8
	bl sub_0200ED2C
	mov r0, r8
	bl _ZdlPv
_0211DFE4:
	add r0, r6, r7, lsl #2
	str r4, [r0, #8]
_0211DFEC:
	add r7, r7, #1
	cmp r7, #0xa
	blt _0211DFC0
	ldr r4, [r6, #4]
	cmp r4, #0
	beq _0211E020
	beq _0211E018
	mov r0, r4
	bl sub_0201FCB4
	mov r0, r4
	bl _ZdlPv
_0211E018:
	mov r0, #0
	str r0, [r6, #4]
_0211E020:
	ldr r4, [r6]
	cmp r4, #0
	beq _0211E048
	beq _0211E040
	mov r0, r4
	bl sub_0201FCB4
	mov r0, r4
	bl _ZdlPv
_0211E040:
	mov r0, #0
	str r0, [r6]
_0211E048:
	mov r0, r6
	bl _ZdlPv
_0211E050:
	mov r0, #0
	str r0, [r5, #0xf0]
_0211E058:
	ldr r0, [r5, #8]
	mov r4, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a4]
	add r0, r0, #0x8000
	str r4, [r0, #0xba0]
	ldr r1, [r5, #0x8c]
	cmp r1, #0
	beq _0211E0FC
	ldr r0, [r1, #4]
	cmp r0, #0
	bls _0211E0C8
	mov r6, r4
_0211E08C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211E0B4
	bl _ZdaPv
	ldr r0, [r5, #0x8c]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211E0B4:
	ldr r1, [r5, #0x8c]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211E08C
_0211E0C8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211E0E4
	bl _ZdaPv
	ldr r0, [r5, #0x8c]
	mov r1, #0
	str r1, [r0, #8]
_0211E0E4:
	ldr r0, [r5, #0x8c]
	cmp r0, #0
	beq _0211E0FC
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x8c]
_0211E0FC:
	ldr r1, [r5, #0x90]
	cmp r1, #0
	beq _0211E18C
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211E158
	mov r6, r4
_0211E11C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211E144
	bl _ZdaPv
	ldr r0, [r5, #0x90]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211E144:
	ldr r1, [r5, #0x90]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211E11C
_0211E158:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211E174
	bl _ZdaPv
	ldr r0, [r5, #0x90]
	mov r1, #0
	str r1, [r0, #8]
_0211E174:
	ldr r0, [r5, #0x90]
	cmp r0, #0
	beq _0211E18C
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x90]
_0211E18C:
	ldr r4, [r5, #0xe4]
	cmp r4, #0
	beq _0211E1B4
	beq _0211E1AC
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
_0211E1AC:
	mov r0, #0
	str r0, [r5, #0xe4]
_0211E1B4:
	ldr r0, [r5, #8]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r4, [r0, #0x498]
	ldr r1, [r0, #0x4ac]
	mov r0, r4
	add r1, r1, #0x14
	bl sub_0200CACC
	mov r0, r4
	bl sub_0200CAE0
	ldr r0, _0211E244 ; =0x04000010
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	ldr r0, [r5, #8]
	mov r1, #0x1e
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	ldr r0, [r5, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020092D4Ev
	ldr r0, [r5, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x49c]
	bl sub_02034450
	mov r2, #0
	ldr r1, _0211E248 ; =MAIN_BSS_0208F31C
	ldr r0, _0211E24C ; =0x04001050
	str r2, [r1]
	mov r1, #2
	bl G2x_SetBlendBrightness_
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211E244: .word 0x04000010
_0211E248: .word MAIN_BSS_0208F31C
_0211E24C: .word 0x04001050

	arm_func_start ov3_0211E250
ov3_0211E250: ; 0x0211E250
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r7, r0
	ldr r0, [r7, #0xec]
	cmp r0, #0
	beq _0211E26C
	bl ov3_0212091C
	arm_func_end ov3_0211E250
_0211E26C:
	ldr r0, [r7, #0xd8]
	cmp r0, #0
	beq _0211E27C
	bl sub_0200F64C
_0211E27C:
	ldr r0, [r7, #0xd0]
	cmp r0, #0
	beq _0211E28C
	bl sub_0200F64C
_0211E28C:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xdc]
	ldr r6, [r0, #0x18]
	ldr r5, [r0, #0x14]
	ldrh r3, [r6, #0xa]
	ldrh r2, [r6, #0xc]
	ldr r4, _0211F24C ; =MAIN_BSS_020B26A0
	sub r3, r3, #0x80
	sub r2, r2, #0x60
	mov r3, r3, lsl #0xc
	mov r2, r2, lsl #0xc
	cmp r1, #0x42
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	addls pc, pc, r1, lsl #2
	b _02120108
_0211E2CC: ; jump table
	b _0211E3D8 ; case 0
	b _0211E424 ; case 1
	b _0211E520 ; case 2
	b _0211E5A0 ; case 3
	b _0211EB90 ; case 4
	b _0211EBC8 ; case 5
	b _0211EC24 ; case 6
	b _0211E7C8 ; case 7
	b _0211E7F8 ; case 8
	b _0211E834 ; case 9
	b _0211E890 ; case 10
	b _0211EAB8 ; case 11
	b _0211EAE8 ; case 12
	b _0211EB24 ; case 13
	b _0211EB54 ; case 14
	b _0211EE4C ; case 15
	b _0211EE98 ; case 16
	b _0211EEDC ; case 17
	b _0211EF18 ; case 18
	b _0211EF64 ; case 19
	b _0211EFA8 ; case 20
	b _0211EFCC ; case 21
	b _0211F03C ; case 22
	b _0211F080 ; case 23
	b _0211F0B0 ; case 24
	b _0211F0EC ; case 25
	b _0211F150 ; case 26
	b _0211F260 ; case 27
	b _0211F2A0 ; case 28
	b _0211F2E4 ; case 29
	b _0211F308 ; case 30
	b _0211F344 ; case 31
	b _0211F378 ; case 32
	b _0211F474 ; case 33
	b _0211F4BC ; case 34
	b _0211F4F8 ; case 35
	b _0211F538 ; case 36
	b _0211F57C ; case 37
	b _0211F5D8 ; case 38
	b _0211F614 ; case 39
	b _0211F690 ; case 40
	b _0211F930 ; case 41
	b _0211F96C ; case 42
	b _0211F9B4 ; case 43
	b _0211F9EC ; case 44
	b _0211FA6C ; case 45
	b _0211FC94 ; case 46
	b _0211FCE4 ; case 47
	b _0211FCF4 ; case 48
	b _0211FD4C ; case 49
	b _0211FD7C ; case 50
	b _02120108 ; case 51
	b _0211F9D0 ; case 52
	b _0211FDC8 ; case 53
	b _0211FDD4 ; case 54
	b _0211FE28 ; case 55
	b _0211FE80 ; case 56
	b _0211FED8 ; case 57
	b _0211FEFC ; case 58
	b _0211FF1C ; case 59
	b _0211FF74 ; case 60
	b _0211FF98 ; case 61
	b _0211FFB8 ; case 62
	b _02120010 ; case 63
	b _02120034 ; case 64
	b _02120040 ; case 65
	b _02120084 ; case 66
_0211E3D8:
	bl sub_0200FAA4
	ldr r0, [r7, #8]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x498]
	mov r0, r4
	bl sub_0200CAE0
	mov r0, r4
	bl sub_0200CB14
	ldr r0, [r7, #0xe4]
	mov r1, #0
	bl sub_0202809C
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_020282CC
	ldr r1, [r7, #0xdc]
	mov r0, #1
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211E424:
	ldr r0, [r7, #0xe4]
	bl sub_0202841C
	cmp r0, #0
	beq _02120108
	tst r0, #0x80
	beq _0211E4B8
	bic r0, r0, #0x80
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02120108
_0211E44C: ; jump table
	b _0211E47C ; case 0
	b _0211E47C ; case 1
	b _0211E47C ; case 2
	b _0211E4A4 ; case 3
	b _02120108 ; case 4
	b _02120108 ; case 5
	b _02120108 ; case 6
	b _02120108 ; case 7
	b _0211E47C ; case 8
	b _0211E4A4 ; case 9
	b _0211E490 ; case 10
	b _0211E4A4 ; case 11
_0211E47C:
	ldr r1, [r7, #0xdc]
	mov r0, #0x30
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211E490:
	ldr r1, [r7, #0xdc]
	mov r0, #0x19
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211E4A4:
	ldr r1, [r7, #0xdc]
	mov r0, #0x15
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211E4B8:
	bl sub_02017298
	cmp r0, #0
	bne _0211E4DC
	bl sub_020172BC
	ldr r1, [r7, #0xdc]
	mov r0, #0x19
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211E4DC:
	ldr r1, [r7, #0xdc]
	mov r0, #2
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	ldr r0, [r7, #0xc]
	orr r0, r0, #0x100
	str r0, [r7, #0xc]
	ldr r0, [r7, #8]
	bl sub_0201024C
	ldr r0, _0211F250 ; =MAIN_BSS_0210CA6C
	ldrh r1, [r4, #0x1a]
	ldr r0, [r0]
	bl sub_02041D80
	ldrb r1, [r0, #4]
	add r0, r4, #0x8000
	strb r1, [r0, #0xb64]
	b _02120108
_0211E520:
	ldr r0, _0211F254 ; =0x04001050
	mov r1, #2
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r7, #0xa4]
	bl sub_0201FEDC
	mov r0, r7
	bl ov3_021202E0
	ldr r1, [r7, #0xdc]
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #0xa8]
	mov r2, #1
	str r2, [r0, #0x14]
	ldr r0, [r7, #0xac]
	mov r1, #0x20
	str r2, [r0, #0x14]
	ldr r0, [r7, #0xa8]
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xac]
	mov r1, #0x20
	mov r2, #0
	bl sub_0200EB34
	ldr r1, [r7, #0xc]
	mov r0, #3
	bic r1, r1, #3
	str r1, [r7, #0xc]
	ldr r1, [r7, #0xdc]
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211E5A0:
	ldr r1, [r7, #0xa0]
	mov r0, r7
	bl ov3_021206E8
	ldr r0, [r7, #0xb0]
	bl sub_0200F64C
	ldr r0, [r7, #0xc]
	tst r0, #3
	beq _0211E62C
	ldrh r0, [r7, #0x96]
	add r0, r0, #1
	strh r0, [r7, #0x96]
	ldrh r0, [r7, #0x96]
	cmp r0, #0x10
	blo _0211E618
	ldr r0, [r7, #0xc]
	tst r0, #1
	beq _0211E5F4
	ldr r1, [r7, #0xdc]
	mov r0, #7
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
_0211E5F4:
	ldr r0, [r7, #0xc]
	tst r0, #2
	beq _0211E610
	ldr r1, [r7, #0xdc]
	mov r0, #5
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
_0211E610:
	mov r0, #0
	strh r0, [r7, #0x96]
_0211E618:
	ldrh r0, [r7, #0x96]
	cmp r0, #2
	moveq r0, #0x1000
	streq r0, [r7, #0xa0]
	b _02120108
_0211E62C:
	ldrh r1, [r5, #2]
	and r0, r1, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211E688
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xa8]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xac]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0xff
	orr r0, r0, #1
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211E688:
	and r0, r1, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211E6E0
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xac]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xa8]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0x100
	orr r0, r0, #2
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211E6E0:
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _02120108
	add r0, r7, #0xb4
	add r4, sp, #0xc
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia r4, {r0, r1}
	bl _Z12sub_020061007Point2DS_18UnkStruct_02006100
	cmp r0, #0
	beq _0211E75C
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xa8]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xac]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0xff
	orr r0, r0, #1
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211E75C:
	add r0, r7, #0xc0
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia r4, {r0, r1}
	bl _Z12sub_020061007Point2DS_18UnkStruct_02006100
	cmp r0, #0
	beq _02120108
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xac]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xa8]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0x100
	orr r0, r0, #2
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211E7C8:
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #0xa8]
	mov r2, #0
	str r2, [r0, #0x14]
	ldr r1, [r7, #0xac]
	mov r0, #8
	str r2, [r1, #0x14]
	ldr r1, [r7, #0xdc]
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211E7F8:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0211E818
	ldrh r0, [r5, #2]
	and r0, r0, #3
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02120108
_0211E818:
	str r1, [r7, #0xe0]
	mov r0, #9
	str r0, [r7, #0xdc]
	ldr r0, [r7, #4]
	mov r1, #3
	bl sub_02034C44
	b _02120108
_0211E834:
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #0xa8]
	mov r2, #1
	str r2, [r0, #0x14]
	ldr r0, [r7, #0xac]
	mov r1, #0x20
	str r2, [r0, #0x14]
	ldr r0, [r7, #0xa8]
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xac]
	mov r1, #0x20
	mov r2, #0
	bl sub_0200EB34
	ldr r1, [r7, #0xc]
	mov r0, #0xa
	bic r1, r1, #3
	str r1, [r7, #0xc]
	ldr r1, [r7, #0xdc]
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211E890:
	ldr r1, [r7, #0xa0]
	mov r0, r7
	bl ov3_021206E8
	ldr r0, [r7, #0xb0]
	bl sub_0200F64C
	ldr r0, [r7, #0xc]
	tst r0, #3
	beq _0211E91C
	ldrh r0, [r7, #0x96]
	add r0, r0, #1
	strh r0, [r7, #0x96]
	ldrh r0, [r7, #0x96]
	cmp r0, #0x10
	blo _0211E908
	ldr r0, [r7, #0xc]
	tst r0, #1
	beq _0211E8E4
	ldr r1, [r7, #0xdc]
	mov r0, #0xb
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
_0211E8E4:
	ldr r0, [r7, #0xc]
	tst r0, #2
	beq _0211E900
	ldr r1, [r7, #0xdc]
	mov r0, #2
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
_0211E900:
	mov r0, #0
	strh r0, [r7, #0x96]
_0211E908:
	ldrh r0, [r7, #0x96]
	cmp r0, #2
	moveq r0, #0x1000
	streq r0, [r7, #0xa0]
	b _02120108
_0211E91C:
	ldrh r1, [r5, #2]
	and r0, r1, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211E978
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xa8]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xac]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0xff
	orr r0, r0, #1
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211E978:
	and r0, r1, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211E9D0
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xac]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xa8]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0x100
	orr r0, r0, #2
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211E9D0:
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _02120108
	add r0, r7, #0xb4
	add r4, sp, #0xc
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia r4, {r0, r1}
	bl _Z12sub_020061007Point2DS_18UnkStruct_02006100
	cmp r0, #0
	beq _0211EA4C
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xa8]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xac]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0xff
	orr r0, r0, #1
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211EA4C:
	add r0, r7, #0xc0
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia r4, {r0, r1}
	bl _Z12sub_020061007Point2DS_18UnkStruct_02006100
	cmp r0, #0
	beq _02120108
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xac]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xa8]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0x100
	orr r0, r0, #2
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211EAB8:
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #0xa8]
	mov r2, #0
	str r2, [r0, #0x14]
	ldr r1, [r7, #0xac]
	mov r0, #0xc
	str r2, [r1, #0x14]
	ldr r1, [r7, #0xdc]
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211EAE8:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0211EB08
	ldrh r0, [r5, #2]
	and r0, r0, #3
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02120108
_0211EB08:
	str r1, [r7, #0xe0]
	mov r0, #0xd
	str r0, [r7, #0xdc]
	ldr r0, [r7, #4]
	mov r1, #3
	bl sub_02034C44
	b _02120108
_0211EB24:
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #0xa8]
	mov r2, #0
	str r2, [r0, #0x14]
	ldr r1, [r7, #0xac]
	mov r0, #0xe
	str r2, [r1, #0x14]
	ldr r1, [r7, #0xdc]
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211EB54:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0211EB74
	ldrh r0, [r5, #2]
	and r0, r0, #3
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02120108
_0211EB74:
	str r1, [r7, #0xe0]
	mov r0, #4
	str r0, [r7, #0xdc]
	ldr r0, [r7, #4]
	mov r1, #3
	bl sub_02034C44
	b _02120108
_0211EB90:
	add r0, r4, #0x8000
	mov r2, #0
	ldr r1, _0211F258 ; =MAIN_BSS_0210C1C0
	str r2, [r0, #0xb68]
	str r2, [r0, #0xb6c]
	mov r2, #1
	ldr r0, _0211F25C ; =MAIN_BSS_0210C228
	strb r2, [r1, #0x60]
	strb r2, [r0, #0x800]
	ldr r1, [r7, #0xdc]
	mov r0, #0xf
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211EBC8:
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #0xa8]
	mov r2, #1
	str r2, [r0, #0x14]
	ldr r0, [r7, #0xac]
	mov r1, #0x20
	str r2, [r0, #0x14]
	ldr r0, [r7, #0xa8]
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xac]
	mov r1, #0x20
	mov r2, #0
	bl sub_0200EB34
	ldr r1, [r7, #0xc]
	mov r0, #6
	bic r1, r1, #3
	str r1, [r7, #0xc]
	ldr r1, [r7, #0xdc]
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211EC24:
	ldr r1, [r7, #0xa0]
	mov r0, r7
	bl ov3_021206E8
	ldr r0, [r7, #0xb0]
	bl sub_0200F64C
	ldr r0, [r7, #0xc]
	tst r0, #3
	beq _0211ECB0
	ldrh r0, [r7, #0x96]
	add r0, r0, #1
	strh r0, [r7, #0x96]
	ldrh r0, [r7, #0x96]
	cmp r0, #0x10
	blo _0211EC9C
	ldr r0, [r7, #0xc]
	tst r0, #1
	beq _0211EC78
	ldr r1, [r7, #0xdc]
	mov r0, #0x12
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
_0211EC78:
	ldr r0, [r7, #0xc]
	tst r0, #2
	beq _0211EC94
	ldr r1, [r7, #0xdc]
	mov r0, #2
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
_0211EC94:
	mov r0, #0
	strh r0, [r7, #0x96]
_0211EC9C:
	ldrh r0, [r7, #0x96]
	cmp r0, #2
	moveq r0, #0x1000
	streq r0, [r7, #0xa0]
	b _02120108
_0211ECB0:
	ldrh r1, [r5, #2]
	and r0, r1, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211ED0C
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xa8]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xac]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0xff
	orr r0, r0, #1
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211ED0C:
	and r0, r1, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211ED64
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xac]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xa8]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0x100
	orr r0, r0, #2
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211ED64:
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _02120108
	add r0, r7, #0xb4
	add r4, sp, #0xc
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia r4, {r0, r1}
	bl _Z12sub_020061007Point2DS_18UnkStruct_02006100
	cmp r0, #0
	beq _0211EDE0
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xa8]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xac]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0xff
	orr r0, r0, #1
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211EDE0:
	add r0, r7, #0xc0
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia r4, {r0, r1}
	bl _Z12sub_020061007Point2DS_18UnkStruct_02006100
	cmp r0, #0
	beq _02120108
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xac]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xa8]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0x100
	orr r0, r0, #2
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211EE4C:
	mov r0, r7
	bl ov3_0212038C
	ldr r1, [r7, #0xdc]
	mov r0, #0x10
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	ldr r0, [r7, #0xfc]
	cmp r0, #0
	movne r0, #0x1e
	strneh r0, [r7, #0x10]
	bne _02120108
	ldr r0, [r7, #4]
	mov r1, #0x1e
	bl sub_02034DC8
	mov r0, #0
	strh r0, [r7, #0x10]
	mov r0, #1
	str r0, [r7, #0xfc]
	b _02120108
_0211EE98:
	ldrh r0, [r7, #0x10]
	add r0, r0, #1
	strh r0, [r7, #0x10]
	ldrh r0, [r7, #0x10]
	cmp r0, #0x1e
	blo _02120108
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_0202809C
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_02028374
	ldr r1, [r7, #0xdc]
	mov r0, #0x11
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211EEDC:
	ldr r0, [r7, #0xe4]
	bl sub_0202841C
	cmp r0, #0
	beq _02120108
	add r0, r4, #0x8000
	ldr r0, [r0, #0x1ac]
	cmp r0, #0
	movgt r0, #0x1e
	movle r0, #1
	str r0, [r7, #0xe8]
	ldr r1, [r7, #0xdc]
	mov r0, #0x35
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211EF18:
	mov r0, r7
	bl ov3_0212038C
	ldr r1, [r7, #0xdc]
	mov r0, #0x13
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	ldr r0, [r7, #0xfc]
	cmp r0, #0
	movne r0, #0x1e
	strneh r0, [r7, #0x10]
	bne _02120108
	ldr r0, [r7, #4]
	mov r1, #0x1e
	bl sub_02034DC8
	mov r0, #0
	strh r0, [r7, #0x10]
	mov r0, #1
	str r0, [r7, #0xfc]
	b _02120108
_0211EF64:
	ldrh r0, [r7, #0x10]
	add r0, r0, #1
	strh r0, [r7, #0x10]
	ldrh r0, [r7, #0x10]
	cmp r0, #0x1e
	blo _02120108
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_0202809C
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_02028374
	ldr r1, [r7, #0xdc]
	mov r0, #0x14
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211EFA8:
	ldr r0, [r7, #0xe4]
	bl sub_0202841C
	cmp r0, #0
	beq _02120108
	ldr r1, [r7, #0xdc]
	mov r0, #0x19
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211EFCC:
	ldr r0, _0211F254 ; =0x04001050
	mov r1, #2
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r7, #0xa4]
	bl sub_0201FEDC
	mov r0, r7
	bl ov3_021202E0
	ldr r1, [r7, #0xdc]
	mov r0, r7
	bl ov3_0212038C
	ldr r1, [r7, #0xdc]
	mov r0, #0x16
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	ldr r0, [r7, #0xfc]
	cmp r0, #0
	movne r0, #0x1e
	strneh r0, [r7, #0x10]
	bne _02120108
	ldr r0, [r7, #4]
	mov r1, #0x1e
	bl sub_02034DC8
	mov r0, #0
	strh r0, [r7, #0x10]
	mov r0, #1
	str r0, [r7, #0xfc]
	b _02120108
_0211F03C:
	ldrh r0, [r7, #0x10]
	add r0, r0, #1
	strh r0, [r7, #0x10]
	ldrh r0, [r7, #0x10]
	cmp r0, #0x1e
	blo _02120108
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_0202809C
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_02028374
	ldr r1, [r7, #0xdc]
	mov r0, #0x17
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F080:
	ldr r0, [r7, #0xe4]
	bl sub_0202841C
	cmp r0, #0
	beq _02120108
	ldr r1, [r7, #0xdc]
	mov r0, #0x18
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	ldr r0, [r7, #4]
	mov r1, #2
	bl sub_02034C44
	b _02120108
_0211F0B0:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0211F0D0
	ldrh r0, [r5, #2]
	and r0, r0, #3
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02120108
_0211F0D0:
	str r1, [r7, #0xe0]
	mov r0, #0x19
	str r0, [r7, #0xdc]
	ldr r0, [r7, #4]
	mov r1, #3
	bl sub_02034C44
	b _02120108
_0211F0EC:
	bl sub_0200FAA4
	mov r1, #2
	ldr r0, _0211F254 ; =0x04001050
	sub r2, r1, #0x21
	bl G2x_SetBlendBrightness_
	mov r0, r4
	bl sub_02015198
	ldr r0, [r7, #8]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x498]
	mov r0, r4
	bl sub_0200CAE0
	mov r0, r4
	bl sub_0200CB14
	ldr r0, [r7, #0xe4]
	mov r1, #0
	bl sub_0202809C
	ldr r0, [r7, #0xe4]
	mov r1, #0
	bl sub_020282CC
	ldr r1, [r7, #0xdc]
	mov r0, #0x1a
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F150:
	ldr r0, [r7, #0xe4]
	bl sub_0202841C
	cmp r0, #0
	beq _02120108
	tst r0, #0x80
	beq _0211F1E4
	bic r0, r0, #0x80
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02120108
_0211F178: ; jump table
	b _0211F1A8 ; case 0
	b _0211F1A8 ; case 1
	b _0211F1A8 ; case 2
	b _0211F1D0 ; case 3
	b _02120108 ; case 4
	b _02120108 ; case 5
	b _02120108 ; case 6
	b _02120108 ; case 7
	b _0211F1A8 ; case 8
	b _0211F1D0 ; case 9
	b _0211F1BC ; case 10
	b _0211F1D0 ; case 11
_0211F1A8:
	ldr r1, [r7, #0xdc]
	mov r0, #0x30
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F1BC:
	ldr r1, [r7, #0xdc]
	mov r0, #0x27
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F1D0:
	ldr r1, [r7, #0xdc]
	mov r0, #0x1b
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F1E4:
	bl sub_02017298
	cmp r0, #0
	bne _0211F208
	bl sub_020172BC
	ldr r1, [r7, #0xdc]
	mov r0, #0x1b
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F208:
	ldr r1, [r7, #0xdc]
	mov r0, #0x27
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	ldr r0, [r7, #0xc]
	orr r0, r0, #0x200
	str r0, [r7, #0xc]
	ldr r0, [r7, #8]
	bl sub_0201024C
	ldr r0, _0211F250 ; =MAIN_BSS_0210CA6C
	ldrh r1, [r4, #0x1a]
	ldr r0, [r0]
	bl sub_02041D80
	ldrb r1, [r0, #4]
	add r0, r4, #0x8000
	strb r1, [r0, #0xb64]
	b _02120108
	.align 2, 0
_0211F24C: .word MAIN_BSS_020B26A0
_0211F250: .word MAIN_BSS_0210CA6C
_0211F254: .word 0x04001050
_0211F258: .word MAIN_BSS_0210C1C0
_0211F25C: .word MAIN_BSS_0210C228
_0211F260:
	str r1, [r7, #0xe0]
	mov r0, #0x1c
	str r0, [r7, #0xdc]
	ldr r0, [r7, #0xfc]
	cmp r0, #0
	movne r0, #0x1e
	strneh r0, [r7, #0x10]
	bne _02120108
	ldr r0, [r7, #4]
	mov r1, #0x1e
	bl sub_02034DC8
	mov r0, #0
	strh r0, [r7, #0x10]
	mov r0, #1
	str r0, [r7, #0xfc]
	b _02120108
_0211F2A0:
	ldrh r0, [r7, #0x10]
	add r0, r0, #1
	strh r0, [r7, #0x10]
	ldrh r0, [r7, #0x10]
	cmp r0, #0x1e
	blo _02120108
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_0202809C
	ldr r0, [r7, #0xe4]
	mov r1, #0
	bl sub_02028374
	ldr r1, [r7, #0xdc]
	mov r0, #0x1d
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F2E4:
	ldr r0, [r7, #0xe4]
	bl sub_0202841C
	cmp r0, #0
	beq _02120108
	ldr r1, [r7, #0xdc]
	mov r0, #0x1f
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F308:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0211F328
	ldrh r0, [r5, #2]
	and r0, r0, #3
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02120108
_0211F328:
	str r1, [r7, #0xe0]
	mov r0, #0x1f
	str r0, [r7, #0xdc]
	ldr r0, [r7, #4]
	mov r1, #3
	bl sub_02034C44
	b _02120108
_0211F344:
	mov r0, r4
	bl sub_02015198
	ldr r0, [r7, #0xe4]
	mov r1, #0
	bl sub_0202809C
	ldr r0, [r7, #0xe4]
	mov r1, #0
	bl sub_020282CC
	ldr r1, [r7, #0xdc]
	mov r0, #0x20
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F378:
	ldr r0, [r7, #0xe4]
	bl sub_0202841C
	cmp r0, #0
	beq _02120108
	tst r0, #0x80
	beq _0211F40C
	bic r0, r0, #0x80
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02120108
_0211F3A0: ; jump table
	b _0211F3D0 ; case 0
	b _0211F3D0 ; case 1
	b _0211F3D0 ; case 2
	b _0211F3F8 ; case 3
	b _02120108 ; case 4
	b _02120108 ; case 5
	b _02120108 ; case 6
	b _02120108 ; case 7
	b _0211F3D0 ; case 8
	b _0211F3F8 ; case 9
	b _0211F3E4 ; case 10
	b _0211F3F8 ; case 11
_0211F3D0:
	ldr r1, [r7, #0xdc]
	mov r0, #0x30
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F3E4:
	ldr r1, [r7, #0xdc]
	mov r0, #0x23
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F3F8:
	ldr r1, [r7, #0xdc]
	mov r0, #0x23
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F40C:
	bl sub_02017298
	cmp r0, #0
	bne _0211F430
	bl sub_020172BC
	ldr r1, [r7, #0xdc]
	mov r0, #0x23
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F430:
	ldr r1, [r7, #0xdc]
	mov r0, #0x21
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	ldr r0, [r7, #0xc]
	orr r0, r0, #0x200
	str r0, [r7, #0xc]
	ldr r0, [r7, #8]
	bl sub_0201024C
	ldr r0, _0211F250 ; =MAIN_BSS_0210CA6C
	ldrh r1, [r4, #0x1a]
	ldr r0, [r0]
	bl sub_02041D80
	ldrb r1, [r0, #4]
	add r0, r4, #0x8000
	strb r1, [r0, #0xb64]
	b _02120108
_0211F474:
	str r1, [r7, #0xe0]
	mov r0, #0x22
	str r0, [r7, #0xdc]
	ldr r0, [r7, #4]
	mov r1, #2
	bl sub_02034C44
	ldr r0, _0211F254 ; =0x04001050
	mov r1, #2
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r7, #0xa4]
	bl sub_0201FEDC
	mov r0, r7
	bl ov3_021202E0
	ldr r1, [r7, #0xdc]
	mov r0, r7
	bl ov3_0212038C
	b _02120108
_0211F4BC:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0211F4DC
	ldrh r0, [r5, #2]
	and r0, r0, #3
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02120108
_0211F4DC:
	str r1, [r7, #0xe0]
	mov r0, #0x27
	str r0, [r7, #0xdc]
	ldr r0, [r7, #4]
	mov r1, #3
	bl sub_02034C44
	b _02120108
_0211F4F8:
	str r1, [r7, #0xe0]
	mov r0, #0x24
	str r0, [r7, #0xdc]
	ldr r0, [r7, #0xfc]
	cmp r0, #0
	movne r0, #0x1e
	strneh r0, [r7, #0x10]
	bne _02120108
	ldr r0, [r7, #4]
	mov r1, #0x1e
	bl sub_02034DC8
	mov r0, #0
	strh r0, [r7, #0x10]
	mov r0, #1
	str r0, [r7, #0xfc]
	b _02120108
_0211F538:
	ldrh r0, [r7, #0x10]
	add r0, r0, #1
	strh r0, [r7, #0x10]
	ldrh r0, [r7, #0x10]
	cmp r0, #0x1e
	blo _02120108
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_0202809C
	ldr r0, [r7, #0xe4]
	mov r1, #0
	bl sub_02028374
	ldr r1, [r7, #0xdc]
	mov r0, #0x25
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F57C:
	ldr r0, [r7, #0xe4]
	bl sub_0202841C
	cmp r0, #0
	beq _02120108
	ldr r0, _0211F254 ; =0x04001050
	mov r1, #2
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r7, #0xa4]
	bl sub_0201FEDC
	mov r0, r7
	bl ov3_021202E0
	ldr r1, [r7, #0xdc]
	mov r0, r7
	bl ov3_0212038C
	ldr r1, [r7, #0xdc]
	mov r0, #0x26
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	ldr r0, [r7, #4]
	mov r1, #2
	bl sub_02034C44
	b _02120108
_0211F5D8:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0211F5F8
	ldrh r0, [r5, #2]
	and r0, r0, #3
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02120108
_0211F5F8:
	str r1, [r7, #0xe0]
	mov r0, #0x27
	str r0, [r7, #0xdc]
	ldr r0, [r7, #4]
	mov r1, #3
	bl sub_02034C44
	b _02120108
_0211F614:
	ldr r1, [r7, #0xc]
	ldr r0, _0211F254 ; =0x04001050
	bic r1, r1, #0x1e
	str r1, [r7, #0xc]
	mov r1, #2
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r7, #0x24]
	bl sub_0201FEDC
	mov r0, r7
	bl ov3_0211CD6C
	mov r0, r7
	bl ov3_0211DF20
	mov r0, r7
	bl ov3_0211DD90
	ldr r1, [r7, #0xdc]
	mov r0, #0x28
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	mov r0, #0xb40
	str r0, [r7, #0xf4]
	ldr r0, [r7, #0xfc]
	cmp r0, #0
	beq _02120108
	ldr r0, [r7, #4]
	mov r1, #0x200
	mov r2, #0x40
	bl sub_02034D54
	mov r0, #0
	str r0, [r7, #0xfc]
	b _02120108
_0211F690:
	ldr r0, [r7, #0x40]
	bl sub_0200F64C
	ldr r0, [r7, #0xc]
	tst r0, #0x200
	beq _0211F6D0
	mov r4, #0
_0211F6A8:
	add r0, r7, r4, lsl #2
	ldr r0, [r0, #0x44]
	bl sub_0200F64C
	add r4, r4, #1
	cmp r4, #4
	blt _0211F6A8
	ldr r0, [r7, #0x54]
	bl sub_0200F64C
	ldr r0, [r7, #0x58]
	bl sub_0200F64C
_0211F6D0:
	ldr r1, [r7, #0xf4]
	sub r0, r1, #1
	str r0, [r7, #0xf4]
	cmp r1, #0
	bgt _0211F6F8
	ldr r1, [r7, #0xdc]
	mov r0, #0x34
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F6F8:
	ldr r1, [r7, #0xc]
	ands r2, r1, #0x10
	bne _0211F850
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _0211F850
	tst r1, #0x200
	beq _0211F77C
	mov r0, #0
	str r0, [sp, #8]
	add r0, r7, #0x5c
	sub r4, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0xc
	ldmia r4, {r2, r3}
	ldmia r0, {r0, r1}
	bl _Z12sub_020060007Point2DS_18UnkStruct_02006000
	cmp r0, #0
	beq _0211F77C
	ldr r0, [r7, #4]
	mov r1, #0xff
	bl sub_02034C44
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x18]
	mov r2, #1
	bl sub_0200F628
	ldr r1, [r7, #0xc]
	mov r0, #0
	orr r1, r1, #0x12
	str r1, [r7, #0xc]
	strh r0, [r7, #0x10]
	b _02120108
_0211F77C:
	ldr r0, [r7, #0xc]
	tst r0, #0x400
	beq _0211F7EC
	mov r0, #0
	str r0, [sp, #8]
	add r0, r7, #0x7c
	sub r4, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0xc
	ldmia r4, {r2, r3}
	ldmia r0, {r0, r1}
	bl _Z12sub_020060007Point2DS_18UnkStruct_02006000
	cmp r0, #0
	beq _0211F7EC
	ldr r0, [r7, #4]
	mov r1, #0xff
	bl sub_02034C44
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x20]
	mov r2, #3
	bl sub_0200F628
	ldr r1, [r7, #0xc]
	mov r0, #0
	orr r1, r1, #0x18
	str r1, [r7, #0xc]
	strh r0, [r7, #0x10]
	b _02120108
_0211F7EC:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r7, #0x6c
	sub r4, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0xc
	ldmia r4, {r2, r3}
	ldmia r0, {r0, r1}
	bl _Z12sub_020060007Point2DS_18UnkStruct_02006000
	cmp r0, #0
	beq _02120108
	ldr r0, [r7, #4]
	mov r1, #0xff
	bl sub_02034C44
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x1c]
	mov r2, #3
	bl sub_0200F628
	ldr r1, [r7, #0xc]
	mov r0, #0
	orr r1, r1, #0x14
	str r1, [r7, #0xc]
	strh r0, [r7, #0x10]
	b _02120108
_0211F850:
	cmp r2, #0
	beq _02120108
	ldrh r0, [r7, #0x10]
	add r0, r0, #1
	strh r0, [r7, #0x10]
	ldrh r0, [r7, #0x10]
	cmp r0, #4
	bne _02120108
	ldr r0, [r7, #0xc]
	tst r0, #2
	beq _0211F8A0
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x18]
	mov r2, #0
	bl sub_0200F628
	ldr r1, [r7, #0xdc]
	mov r0, #0x29
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _0211F90C
_0211F8A0:
	tst r0, #8
	beq _0211F8CC
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x20]
	mov r2, #2
	bl sub_0200F628
	ldr r1, [r7, #0xdc]
	mov r0, #0x2b
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _0211F90C
_0211F8CC:
	tst r0, #4
	beq _0211F90C
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x1c]
	mov r2, #2
	bl sub_0200F628
	ldr r0, [r7, #0xc]
	ldr r1, [r7, #0xdc]
	tst r0, #0x200
	moveq r0, #0x2a
	streq r1, [r7, #0xe0]
	streq r0, [r7, #0xdc]
	beq _0211F90C
	mov r0, #0x2c
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
_0211F90C:
	ldr r1, [r7, #0xc]
	mov r0, #0
	bic r1, r1, #0x10
	bic r2, r1, #2
	bic r1, r2, #4
	bic r1, r1, #8
	str r1, [r7, #0xc]
	strh r0, [r7, #0x10]
	b _02120108
_0211F930:
	add r0, r4, #0x8000
	mov r2, #0
	ldr r1, _0211F258 ; =MAIN_BSS_0210C1C0
	str r2, [r0, #0xb68]
	str r2, [r0, #0xb6c]
	mov r2, #1
	ldr r0, _0211F25C ; =MAIN_BSS_0210C228
	strb r2, [r1, #0x60]
	strb r2, [r0, #0x800]
	str r2, [r7, #0xe8]
	ldr r1, [r7, #0xdc]
	mov r0, #0x35
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F96C:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #0
	bl sub_02018E94
	ldr r0, [r7, #8]
	mov r1, #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E94
	ldr r0, [r7, #8]
	bl sub_0201024C
	mov r0, #0x13
	str r0, [r7, #0xe8]
	ldr r1, [r7, #0xdc]
	mov r0, #0x35
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F9B4:
	mov r0, #8
	str r0, [r7, #0xe8]
	ldr r1, [r7, #0xdc]
	mov r0, #0x35
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F9D0:
	mov r0, #0x12
	str r0, [r7, #0xe8]
	ldr r1, [r7, #0xdc]
	mov r0, #0x35
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211F9EC:
	ldr r0, _0211F254 ; =0x04001050
	mov r1, #2
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r7, #0xa4]
	bl sub_0201FEDC
	mov r0, r7
	bl ov3_021202E0
	ldr r1, [r7, #0xdc]
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #0xa8]
	mov r2, #1
	str r2, [r0, #0x14]
	ldr r0, [r7, #0xac]
	mov r1, #0x20
	str r2, [r0, #0x14]
	ldr r0, [r7, #0xa8]
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xac]
	mov r1, #0x20
	mov r2, #0
	bl sub_0200EB34
	ldr r1, [r7, #0xc]
	mov r0, #0x2d
	bic r1, r1, #3
	str r1, [r7, #0xc]
	ldr r1, [r7, #0xdc]
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211FA6C:
	ldr r1, [r7, #0xa0]
	mov r0, r7
	bl ov3_021206E8
	ldr r0, [r7, #0xb0]
	bl sub_0200F64C
	ldr r0, [r7, #0xc]
	tst r0, #3
	beq _0211FAF8
	ldrh r0, [r7, #0x96]
	add r0, r0, #1
	strh r0, [r7, #0x96]
	ldrh r0, [r7, #0x96]
	cmp r0, #0x10
	blo _0211FAE4
	ldr r0, [r7, #0xc]
	tst r0, #1
	beq _0211FAC0
	ldr r1, [r7, #0xdc]
	mov r0, #0x2e
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
_0211FAC0:
	ldr r0, [r7, #0xc]
	tst r0, #2
	beq _0211FADC
	ldr r1, [r7, #0xdc]
	mov r0, #0x2f
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
_0211FADC:
	mov r0, #0
	strh r0, [r7, #0x96]
_0211FAE4:
	ldrh r0, [r7, #0x96]
	cmp r0, #2
	moveq r0, #0x1000
	streq r0, [r7, #0xa0]
	b _02120108
_0211FAF8:
	ldrh r1, [r5, #2]
	and r0, r1, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211FB54
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xa8]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xac]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0xff
	orr r0, r0, #1
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211FB54:
	and r0, r1, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211FBAC
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xac]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xa8]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0x100
	orr r0, r0, #2
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211FBAC:
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _02120108
	add r0, r7, #0xb4
	add r4, sp, #0xc
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia r4, {r0, r1}
	bl _Z12sub_020061007Point2DS_18UnkStruct_02006100
	cmp r0, #0
	beq _0211FC28
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xa8]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xac]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0xff
	orr r0, r0, #1
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211FC28:
	add r0, r7, #0xc0
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia r4, {r0, r1}
	bl _Z12sub_020061007Point2DS_18UnkStruct_02006100
	cmp r0, #0
	beq _02120108
	mov r0, #0x1400
	str r0, [r7, #0xa0]
	ldr r0, [r7, #0xac]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r7, #0xa8]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r7, #0xc]
	mov r1, #0x100
	orr r0, r0, #2
	str r0, [r7, #0xc]
	ldr r0, [r7, #4]
	bl sub_02034C44
	mov r0, #0
	strh r0, [r7, #0x96]
	b _02120108
_0211FC94:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #0
	bl sub_02018E94
	ldr r0, [r7, #8]
	mov r1, #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E94
	ldr r0, [r7, #8]
	bl sub_0201024C
	mov r0, r4
	bl sub_02015198
	mov r0, #0x13
	str r0, [r7, #0xe8]
	ldr r1, [r7, #0xdc]
	mov r0, #0x35
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211FCE4:
	str r1, [r7, #0xe0]
	mov r0, #0x27
	str r0, [r7, #0xdc]
	b _02120108
_0211FCF4:
	ldr r0, [r7, #4]
	mov r1, #0
	bl sub_02034DC8
	ldr r0, _0211F254 ; =0x04001050
	mov r1, #2
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r7, #0xa4]
	bl sub_0201FEDC
	mov r0, r7
	bl ov3_021202E0
	ldr r1, [r7, #0xdc]
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #4]
	mov r1, #2
	bl sub_02034C44
	ldr r1, [r7, #0xdc]
	mov r0, #0x31
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211FD4C:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0211FD6C
	ldrh r0, [r5, #2]
	and r0, r0, #3
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02120108
_0211FD6C:
	str r1, [r7, #0xe0]
	mov r0, #0x32
	str r0, [r7, #0xdc]
	b _02120108
_0211FD7C:
	ldr r0, _0211F254 ; =0x04001050
	mov r1, #2
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r7, #0xa4]
	bl sub_0201FEDC
	mov r0, r7
	bl ov3_021202E0
	ldr r1, [r7, #0xdc]
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #4]
	mov r1, #5
	bl sub_02034C44
	ldr r1, [r7, #0xdc]
	mov r0, #0x33
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211FDC8:
	mov r0, #0x41
	str r0, [r7, #0xdc]
	b _02120108
_0211FDD4:
	ldrh r0, [r7, #0x10]
	add r0, r0, #1
	strh r0, [r7, #0x10]
	ldrh r0, [r7, #0x10]
	cmp r0, #0x1e
	blo _02120108
	ldrb r0, [r7, #0xf8]
	tst r0, #1
	movne r0, #0x37
	strne r0, [r7, #0xdc]
	bne _02120108
	tst r0, #2
	movne r0, #0x38
	strne r0, [r7, #0xdc]
	bne _02120108
	tst r0, #4
	movne r0, #0x3b
	strne r0, [r7, #0xdc]
	moveq r0, #0x41
	streq r0, [r7, #0xdc]
	b _02120108
_0211FE28:
	ldr r0, _0211F254 ; =0x04001050
	mov r1, #2
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r7, #0xa4]
	bl sub_0201FEDC
	mov r0, r7
	bl ov3_021202E0
	ldr r1, [r7, #0xdc]
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_0202809C
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_02028374
	ldr r1, [r7, #0xdc]
	mov r0, #0x39
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211FE80:
	ldr r0, _0211F254 ; =0x04001050
	mov r1, #2
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r7, #0xa4]
	bl sub_0201FEDC
	mov r0, r7
	bl ov3_021202E0
	ldr r1, [r7, #0xdc]
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_0202809C
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_02028374
	ldr r1, [r7, #0xdc]
	mov r0, #0x39
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211FED8:
	ldr r0, [r7, #0xe4]
	bl sub_0202841C
	cmp r0, #0
	beq _02120108
	ldr r1, [r7, #0xdc]
	mov r0, #0x3a
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211FEFC:
	str r1, [r7, #0xe0]
	ldrb r0, [r7, #0xf8]
	tst r0, #4
	movne r0, #0x3b
	strne r0, [r7, #0xdc]
	moveq r0, #0x41
	streq r0, [r7, #0xdc]
	b _02120108
_0211FF1C:
	ldr r0, _0211F254 ; =0x04001050
	mov r1, #2
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r7, #0xa4]
	bl sub_0201FEDC
	mov r0, r7
	bl ov3_021202E0
	ldr r1, [r7, #0xdc]
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_0202809C
	ldr r0, [r7, #0xe4]
	mov r1, #0
	bl sub_02028374
	ldr r1, [r7, #0xdc]
	mov r0, #0x3c
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211FF74:
	ldr r0, [r7, #0xe4]
	bl sub_0202841C
	cmp r0, #0
	beq _02120108
	ldr r1, [r7, #0xdc]
	mov r0, #0x3d
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_0211FF98:
	str r1, [r7, #0xe0]
	ldrb r0, [r7, #0xf8]
	tst r0, #8
	movne r0, #0x3e
	strne r0, [r7, #0xdc]
	moveq r0, #0x41
	streq r0, [r7, #0xdc]
	b _02120108
_0211FFB8:
	ldr r0, _0211F254 ; =0x04001050
	mov r1, #2
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r7, #0xa4]
	bl sub_0201FEDC
	mov r0, r7
	bl ov3_021202E0
	ldr r1, [r7, #0xdc]
	mov r0, r7
	bl ov3_0212038C
	ldr r0, [r7, #0xe4]
	mov r1, #1
	bl sub_0202809C
	ldr r0, [r7, #0xe4]
	mov r1, #0
	bl sub_02028374
	ldr r1, [r7, #0xdc]
	mov r0, #0x3f
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_02120010:
	ldr r0, [r7, #0xe4]
	bl sub_0202841C
	cmp r0, #0
	beq _02120108
	ldr r1, [r7, #0xdc]
	mov r0, #0x40
	str r1, [r7, #0xe0]
	str r0, [r7, #0xdc]
	b _02120108
_02120034:
	mov r0, #0x41
	str r0, [r7, #0xdc]
	b _02120108
_02120040:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #4
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r7, #8]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r7, #4]
	mov r1, #0x1e
	bl sub_02034DC8
	mov r0, #0x42
	str r0, [r7, #0xdc]
	b _02120108
_02120084:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02120108
	ldr r0, [r7, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02120108
	add r0, sp, #0x24
	bl RTC_GetTime
	add r0, sp, #0x14
	bl RTC_GetDate
	ldr r1, [sp, #0x24]
	ldr r0, _02120114 ; =MAIN_BSS_020BA6A0
	ldr r2, [sp, #0x28]
	str r1, [r0, #0xb94]
	str r2, [r0, #0xb98]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x14]
	str r1, [r0, #0xb9c]
	str r2, [r0, #0xb84]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	str r1, [r0, #0xb88]
	ldr r1, [sp, #0x20]
	str r2, [r0, #0xb8c]
	str r1, [r0, #0xb90]
	add sp, sp, #0x30
	ldr r0, [r7, #0xe8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02120108:
	mvn r0, #0
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02120114: .word MAIN_BSS_020BA6A0

	arm_func_start ov3_02120118
ov3_02120118: ; 0x02120118
	bx lr
	arm_func_end ov3_02120118

	arm_func_start ov3_0212011C
ov3_0212011C: ; 0x0212011C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0xdc]
	cmp r1, #0x35
	cmpne r1, #0x36
	beq _02120140
	sub r0, r1, #0x41
	cmp r0, #1
	bhi _02120144
	arm_func_end ov3_0212011C
_02120140:
	ldr r1, [r4, #0xe0]
_02120144:
	cmp r1, #0x31
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, r4, r5, pc}
_02120150: ; jump table
	ldmia sp!, {r3, r4, r5, pc} ; case 0
	ldmia sp!, {r3, r4, r5, pc} ; case 1
	ldmia sp!, {r3, r4, r5, pc} ; case 2
	b _02120218 ; case 3
	ldmia sp!, {r3, r4, r5, pc} ; case 4
	ldmia sp!, {r3, r4, r5, pc} ; case 5
	b _02120234 ; case 6
	ldmia sp!, {r3, r4, r5, pc} ; case 7
	b _02120240 ; case 8
	ldmia sp!, {r3, r4, r5, pc} ; case 9
	b _0212024C ; case 10
	ldmia sp!, {r3, r4, r5, pc} ; case 11
	b _02120258 ; case 12
	ldmia sp!, {r3, r4, r5, pc} ; case 13
	ldmia sp!, {r3, r4, r5, pc} ; case 14
	ldmia sp!, {r3, r4, r5, pc} ; case 15
	ldmia sp!, {r3, r4, r5, pc} ; case 16
	ldmia sp!, {r3, r4, r5, pc} ; case 17
	ldmia sp!, {r3, r4, r5, pc} ; case 18
	ldmia sp!, {r3, r4, r5, pc} ; case 19
	ldmia sp!, {r3, r4, r5, pc} ; case 20
	ldmia sp!, {r3, r4, r5, pc} ; case 21
	ldmia sp!, {r3, r4, r5, pc} ; case 22
	ldmia sp!, {r3, r4, r5, pc} ; case 23
	b _021202B4 ; case 24
	ldmia sp!, {r3, r4, r5, pc} ; case 25
	ldmia sp!, {r3, r4, r5, pc} ; case 26
	ldmia sp!, {r3, r4, r5, pc} ; case 27
	ldmia sp!, {r3, r4, r5, pc} ; case 28
	ldmia sp!, {r3, r4, r5, pc} ; case 29
	b _021202B4 ; case 30
	ldmia sp!, {r3, r4, r5, pc} ; case 31
	ldmia sp!, {r3, r4, r5, pc} ; case 32
	ldmia sp!, {r3, r4, r5, pc} ; case 33
	b _021202B4 ; case 34
	ldmia sp!, {r3, r4, r5, pc} ; case 35
	ldmia sp!, {r3, r4, r5, pc} ; case 36
	ldmia sp!, {r3, r4, r5, pc} ; case 37
	b _021202B4 ; case 38
	b _02120264 ; case 39
	b _02120264 ; case 40
	b _02120264 ; case 41
	b _02120264 ; case 42
	b _02120264 ; case 43
	ldmia sp!, {r3, r4, r5, pc} ; case 44
	b _021202A8 ; case 45
	ldmia sp!, {r3, r4, r5, pc} ; case 46
	ldmia sp!, {r3, r4, r5, pc} ; case 47
	ldmia sp!, {r3, r4, r5, pc} ; case 48
	b _021202B4 ; case 49
_02120218:
	ldr r1, [r4, #0xe8]
	mvn r0, #0
	cmp r1, r0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xb0]
	bl sub_0200F71C
	ldmia sp!, {r3, r4, r5, pc}
_02120234:
	ldr r0, [r4, #0xb0]
	bl sub_0200F71C
	ldmia sp!, {r3, r4, r5, pc}
_02120240:
	ldr r0, [r4, #0xd0]
	bl sub_0200F71C
	ldmia sp!, {r3, r4, r5, pc}
_0212024C:
	ldr r0, [r4, #0xb0]
	bl sub_0200F71C
	ldmia sp!, {r3, r4, r5, pc}
_02120258:
	ldr r0, [r4, #0xd0]
	bl sub_0200F71C
	ldmia sp!, {r3, r4, r5, pc}
_02120264:
	ldr r0, [r4, #0x40]
	bl sub_0200F71C
	ldr r0, [r4, #0xc]
	tst r0, #0x200
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r5, #0
_0212027C:
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #0x44]
	bl sub_0200F71C
	add r5, r5, #1
	cmp r5, #4
	blt _0212027C
	ldr r0, [r4, #0x54]
	bl sub_0200F71C
	ldr r0, [r4, #0x58]
	bl sub_0200F71C
	ldmia sp!, {r3, r4, r5, pc}
_021202A8:
	ldr r0, [r4, #0xb0]
	bl sub_0200F71C
	ldmia sp!, {r3, r4, r5, pc}
_021202B4:
	ldr r0, [r4, #0xd0]
	bl sub_0200F71C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov3_021202C0
ov3_021202C0: ; 0x021202C0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007D98
	ldr r0, [r4, #0xec]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov3_021209B8
	ldmia sp!, {r4, pc}
	arm_func_end ov3_021202C0

	arm_func_start ov3_021202E0
ov3_021202E0: ; 0x021202E0
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	ldr lr, _02120388 ; =DAT_overlay_3_0212a0ac
	add ip, sp, #0x14
	mov r5, r0
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldr r0, [r5, #8]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x498]
	mov r0, r4
	bl sub_0200CAE0
	mov r0, r4
	bl sub_0200CB14
	mov r0, r4
	mov r1, #1
	bl sub_0200CC88
	ldr r1, [r5, #8]
	mov r0, r4
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4ac]
	mov r2, #1
	add r1, r1, #0xc
	bl sub_0200CACC
	ldr r1, [sp, #0x1c]
	mov r2, #0x20
	str r1, [sp]
	ldr r3, [sp, #0x20]
	mov r1, #0
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #4
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	mov r0, r4
	bl sub_0200CCD0
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02120388: .word DAT_overlay_3_0212a0ac
	arm_func_end ov3_021202E0

	arm_func_start ov3_0212038C
ov3_0212038C: ; 0x0212038C
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	ldr ip, _02120630 ; =DAT_overlay_3_0212a0c8
	add r4, sp, #0x10
	mov r6, r0
	mov r5, r1
	ldmia ip!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia ip, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r0, [r6, #8]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r4, [r0, #0x498]
	mov r0, r4
	bl sub_0200CF7C
	cmp r5, #0x3f
	mov r2, #0
	addls pc, pc, r5, lsl #2
	b _021205F8
_021203DC: ; jump table
	b _021205F8 ; case 0
	b _021205F8 ; case 1
	b _021204DC ; case 2
	b _021204DC ; case 3
	b _021205F8 ; case 4
	b _0212052C ; case 5
	b _0212052C ; case 6
	b _021204EC ; case 7
	b _021204EC ; case 8
	b _021204FC ; case 9
	b _021204FC ; case 10
	b _0212050C ; case 11
	b _0212050C ; case 12
	b _0212051C ; case 13
	b _0212051C ; case 14
	b _0212053C ; case 15
	b _0212053C ; case 16
	b _0212053C ; case 17
	b _0212054C ; case 18
	b _0212054C ; case 19
	b _0212054C ; case 20
	b _0212055C ; case 21
	b _021205F8 ; case 22
	b _0212055C ; case 23
	b _021205F8 ; case 24
	b _021205F8 ; case 25
	b _021205F8 ; case 26
	b _0212056C ; case 27
	b _021205F8 ; case 28
	b _0212056C ; case 29
	b _0212056C ; case 30
	b _021205F8 ; case 31
	b _021205F8 ; case 32
	b _0212056C ; case 33
	b _0212056C ; case 34
	b _0212057C ; case 35
	b _021205F8 ; case 36
	b _0212058C ; case 37
	b _0212058C ; case 38
	b _021205F8 ; case 39
	b _021205F8 ; case 40
	b _021205F8 ; case 41
	b _021205F8 ; case 42
	b _021205F8 ; case 43
	b _0212059C ; case 44
	b _0212059C ; case 45
	b _021205F8 ; case 46
	b _021205F8 ; case 47
	b _021205AC ; case 48
	b _021205AC ; case 49
	b _021205BC ; case 50
	b _021205BC ; case 51
	b _021205F8 ; case 52
	b _021205F8 ; case 53
	b _021205F8 ; case 54
	b _021205CC ; case 55
	b _021205CC ; case 56
	b _021205CC ; case 57
	b _021205F8 ; case 58
	b _021205DC ; case 59
	b _021205DC ; case 60
	b _021205F8 ; case 61
	b _021205EC ; case 62
	b _021205EC ; case 63
	arm_func_end ov3_0212038C
_021204DC:
	ldr r0, [r6, #0x8c]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x13c]
	b _021205F8
_021204EC:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x3ac]
	b _021205F8
_021204FC:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x3b4]
	b _021205F8
_0212050C:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x3bc]
	b _021205F8
_0212051C:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x3c4]
	b _021205F8
_0212052C:
	ldr r0, [r6, #0x8c]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x17c]
	b _021205F8
_0212053C:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x34c]
	b _021205F8
_0212054C:
	ldr r0, [r6, #0x8c]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x17c]
	b _021205F8
_0212055C:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x234]
	b _021205F8
_0212056C:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x23c]
	b _021205F8
_0212057C:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x23c]
	b _021205F8
_0212058C:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x244]
	b _021205F8
_0212059C:
	ldr r0, [r6, #0x8c]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x134]
	b _021205F8
_021205AC:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x2fc]
	b _021205F8
_021205BC:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x304]
	b _021205F8
_021205CC:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x234]
	b _021205F8
_021205DC:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x23c]
	b _021205F8
_021205EC:
	ldr r0, [r6, #0x90]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x244]
_021205F8:
	cmp r2, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [sp, #0x28]
	mov r1, #0
	stmia sp, {r0, r2}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mov r0, r4
	bl sub_0200CDA0
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02120630: .word DAT_overlay_3_0212a0c8

	arm_func_start ov3_02120634
ov3_02120634: ; 0x02120634
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r1, #0
	mov r4, r0
	str r1, [sp]
	ldr r0, [r4, #0xb0]
	mov r2, #0x40
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r4, #0xa8]
	ldr r1, [r4, #0xb0]
	mov r0, #0
	ldr r2, [r1, #0x24]
	mov r1, #1
	str r2, [r4, #0x98]
	str r0, [sp]
	ldr r0, [r4, #0xb0]
	mov r2, #0xc0
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r4, #0xac]
	ldr r0, [r4, #0xb0]
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x9c]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov3_02120634

	arm_func_start ov3_0212069C
ov3_0212069C: ; 0x0212069C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r1, #0
	mov r4, r0
	str r1, [sp]
	ldr r0, [r4, #0xd0]
	mov r2, #0xf8
	mov r3, #0xb0
	bl sub_0200F4FC
	str r0, [r4, #0xcc]
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0xd8]
	mov r2, #0xf8
	mov r3, #0xb0
	bl sub_0200F4FC
	str r0, [r4, #0xd4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov3_0212069C

	arm_func_start ov3_021206E8
ov3_021206E8: ; 0x021206E8
	ldr r0, [r0, #8]
	mov r1, r1, lsl #0xc
	add r0, r0, #0x44
	add r2, r0, #0x400
	mov r1, r1, asr #0x10
	strh r1, [r2, #6]
	mov r0, #0
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	strh r1, [r2, #0x1e]
	bx lr
	arm_func_end ov3_021206E8

    arm_func_start ov3_02120714
ov3_02120714: ; 0x02120714
    mov r0, #0xe
    bx lr
    arm_func_end ov3_02120714

	arm_func_start ov3_0212071C
ov3_0212071C: ; 0x0212071C
	mvn r1, #0
	mov r3, #0
	str r1, [r0]
	mov r2, r3
	arm_func_end ov3_0212071C
_0212072C:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #4]
	cmp r3, #4
	blt _0212072C
	bx lr

	arm_func_start ov3_02120744
ov3_02120744: ; 0x02120744
	bx lr
	arm_func_end ov3_02120744

	arm_func_start ov3_02120748
ov3_02120748: ; 0x02120748
	stmdb sp!, {r3, lr}
	ldr r0, _02120804 ; =0x04000008
	ldr r2, _02120808 ; =PTR_DAT_overlay_3_0212a890_overlay_3_0212a888
	ldrh r3, [r0]
	ldr lr, [r2, r1, lsl #2]
	and r3, r3, #0x43
	ldmia lr, {ip, lr}
	orr r3, r3, ip, lsl #14
	orr r3, r3, lr, lsl #7
	orr r3, r3, #4
	strh r3, [r0]
	ldr lr, [r2, r1, lsl #2]
	ldrh r3, [r0, #2]
	ldr ip, [lr, #0x10]
	ldr lr, [lr, #0x14]
	and r3, r3, #0x43
	orr r3, r3, ip, lsl #14
	orr r3, r3, lr, lsl #7
	orr r3, r3, #0x214
	strh r3, [r0, #2]
	ldr lr, [r2, r1, lsl #2]
	ldrh r3, [r0, #4]
	ldr ip, [lr, #0x20]
	ldr lr, [lr, #0x24]
	and r3, r3, #0x43
	orr r3, r3, ip, lsl #14
	orr r3, r3, lr, lsl #7
	orr r3, r3, #0x24
	orr r3, r3, #0x400
	strh r3, [r0, #4]
	ldr ip, [r2, r1, lsl #2]
	ldrh r2, [r0, #6]
	ldr r3, [ip, #0x30]
	ldr r1, _0212080C ; =0x00000424
	and r2, r2, #0x43
	ldr ip, [ip, #0x34]
	orr r2, r2, r3, lsl #14
	orr r2, r2, ip, lsl #7
	add r1, r1, #0x210
	orr r1, r2, r1
	strh r1, [r0, #6]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02120804: .word 0x04000008
_02120808: .word PTR_DAT_overlay_3_0212a890_overlay_3_0212a888
_0212080C: .word 0x00000424
	arm_func_end ov3_02120748

	arm_func_start ov3_02120810
ov3_02120810: ; 0x02120810
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x50
	mov sl, r1
	mov r4, r0
	bl ov3_021208FC
	cmp sl, #0
	blt _021208E0
	cmp sl, #2
	bhs _021208E0
	mov r0, r4
	mov r1, sl
	str sl, [r4]
	bl ov3_02120748
	mov sb, #0
	ldr fp, _021208F0 ; =s_title_ue_d_d_overlay_3_0212a910
	ldr r5, _021208F4 ; =s_title_overlay_3_0212a924
	add r8, sp, #0x10
	add r7, sp, #0x30
	mov r6, sb
	mov r4, sb
	arm_func_end ov3_02120810
_02120860:
	mov r0, r8
	mov r1, fp
	mov r2, sl
	mov r3, sb
	bl OS_SPrintf
	mov r0, r7
	mov r1, r8
	bl strcpy
	ldr r1, _021208F8 ; =s_overlay_3_0212a920
	mov r0, r7
	bl strcat
	stmia sp, {r6, r8}
	str r6, [sp, #8]
	mov r0, r5
	mov r1, r7
	mov r2, sb
	mov r3, r8
	bl sub_02020804
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, r5
	mov r1, r7
	mov r2, sb
	mov r3, r8
	str r4, [sp, #0xc]
	bl sub_02020FF0
	add sb, sb, #1
	cmp sb, #4
	blt _02120860
	add sp, sp, #0x50
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021208E0:
	mvn r0, #0
	str r0, [r4]
	add sp, sp, #0x50
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021208F0: .word s_title_ue_d_d_overlay_3_0212a910
_021208F4: .word s_title_overlay_3_0212a924
_021208F8: .word s_overlay_3_0212a920

	arm_func_start ov3_021208FC
ov3_021208FC: ; 0x021208FC
	ldr r0, _02120918 ; =0x04000010
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_02120918: .word 0x04000010
	arm_func_end ov3_021208FC

	arm_func_start ov3_0212091C
ov3_0212091C: ; 0x0212091C
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	ldmltia sp!, {r3, pc}
	mov r1, #0
	arm_func_end ov3_0212091C
_02120930:
	ldr r3, [r0]
	ldr r2, _021209B4 ; =PTR_DAT_overlay_3_0212a890_overlay_3_0212a888
	ldr r2, [r2, r3, lsl #2]
	add lr, r2, r1, lsl #4
	ldr r2, [lr, #8]
	cmp r2, #0
	beq _021209A4
	cmp r2, #1
	bne _021209A4
	add ip, r0, r1, lsl #2
	ldr r3, [ip, #4]
	ldr r2, [lr, #0xc]
	add r2, r3, r2
	str r2, [ip, #4]
	cmp r2, #0x200000
	ble _02120984
_02120970:
	ldr r2, [ip, #4]
	sub r2, r2, #0x200000
	str r2, [ip, #4]
	cmp r2, #0x200000
	bgt _02120970
_02120984:
	add r3, r0, r1, lsl #2
	ldr r2, [r3, #4]
	cmp r2, #0
	bge _021209A4
_02120994:
	ldr r2, [r3, #4]
	adds r2, r2, #0x200000
	str r2, [r3, #4]
	bmi _02120994
_021209A4:
	add r1, r1, #1
	cmp r1, #4
	blt _02120930
	ldmia sp!, {r3, pc}
	.align 2, 0
_021209B4: .word PTR_DAT_overlay_3_0212a890_overlay_3_0212a888

	arm_func_start ov3_021209B8
ov3_021209B8: ; 0x021209B8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	ldr r4, _02120A18 ; =PTR_DAT_overlay_3_0212a890_overlay_3_0212a888
	mov r6, r0
	mov r7, r5
	arm_func_end ov3_021209B8
_021209CC:
	ldr r0, [r6]
	ldr r0, [r4, r0, lsl #2]
	add r0, r0, r5, lsl #4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02120A08
	cmp r0, #1
	bne _02120A08
	add r0, r6, r5, lsl #2
	ldr r2, [r0, #4]
	mov r0, r6
	mov r1, r5
	mov r3, r7
	mov r2, r2, asr #0xc
	bl ov3_02120A1C
_02120A08:
	add r5, r5, #1
	cmp r5, #4
	blt _021209CC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02120A18: .word PTR_DAT_overlay_3_0212a890_overlay_3_0212a888

	arm_func_start ov3_02120A1C
ov3_02120A1C: ; 0x02120A1C
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	bx lr
_02120A28: ; jump table
	b _02120A38 ; case 0
	b _02120A58 ; case 1
	b _02120A78 ; case 2
	b _02120A98 ; case 3
	arm_func_end ov3_02120A1C
_02120A38:
	ldr r0, _02120AB8 ; =0x000001FF
	ldr ip, _02120ABC ; =0x04000010
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r0, r1, r3, lsl #16
	orr r0, r2, r0
	str r0, [ip]
	bx lr
_02120A58:
	ldr r0, _02120AB8 ; =0x000001FF
	ldr ip, _02120AC0 ; =0x04000014
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r0, r1, r3, lsl #16
	orr r0, r2, r0
	str r0, [ip]
	bx lr
_02120A78:
	ldr r0, _02120AB8 ; =0x000001FF
	ldr ip, _02120AC4 ; =0x04000018
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r0, r1, r3, lsl #16
	orr r0, r2, r0
	str r0, [ip]
	bx lr
_02120A98:
	ldr r0, _02120AB8 ; =0x000001FF
	ldr ip, _02120AC8 ; =0x0400001C
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r0, r1, r3, lsl #16
	orr r0, r2, r0
	str r0, [ip]
	bx lr
	.align 2, 0
_02120AB8: .word 0x000001FF
_02120ABC: .word 0x04000010
_02120AC0: .word 0x04000014
_02120AC4: .word 0x04000018
_02120AC8: .word 0x0400001C

	arm_func_start _ZN14CContinueSceneC1EP5CGame
_ZN14CContinueSceneC1EP5CGame: ; 0x02120ACC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl _ZN6CSceneC2Ev
	ldr r0, _02120B14 ; =PTR_LAB_overlay_3_02120b18_overlay_3_0212a954
	str r0, [r5]
	str r4, [r5, #8]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	str r0, [r5, #4]
	bl sub_020345D4
	mov r0, #0x1000
	str r0, [r5, #0x1c]
	mov r1, #0
	mov r0, r5
	strh r1, [r5, #0x10]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02120B14: .word PTR_LAB_overlay_3_02120b18_overlay_3_0212a954
	arm_func_end _ZN14CContinueSceneC1EP5CGame

	arm_func_start ov3_02120B18
ov3_02120B18: ; 0x02120B18
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02120B18

	arm_func_start ov3_02120B2C
ov3_02120B2C: ; 0x02120B2C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02120B2C

	arm_func_start ov3_02120B48
ov3_02120B48: ; 0x02120B48
	stmdb sp!, {r3, lr}
	bl GX_ResetBankForBG
	bl GX_ResetBankForOBJ
	bl GX_ResetBankForBGExtPltt
	bl GX_ResetBankForOBJExtPltt
	bl GX_ResetBankForTex
	bl GX_ResetBankForTexPltt
	bl GX_ResetBankForClearImage
	bl GX_ResetBankForSubBG
	bl GX_ResetBankForSubOBJ
	bl GX_ResetBankForSubBGExtPltt
	bl GX_ResetBankForSubOBJExtPltt
	bl GX_ResetBankForARM7
	mov r0, #0xf
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r0, #0x10
	bl GX_SetBankForOBJ
	mov r0, #0x20
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #0
	mov r2, r0
	bl GX_SetGraphicsMode
	ldr r2, _02120CDC ; =0x04000008
	mov r0, #0x80
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r2]
	ldrh r1, [r2, #2]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r2, #2]
	ldrh r1, [r2, #4]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r2, #4]
	ldrh r1, [r2, #6]
	bic r1, r1, #3
	strh r1, [r2, #6]
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	ldr r1, _02120CE0 ; =0x04001008
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r1, #4]
	ldrh r0, [r1, #6]
	bic r0, r0, #3
	strh r0, [r1, #6]
	mov r1, #0
	ldr r0, _02120CE4 ; =0x04000050
	mov r2, r1
	mov r3, r1
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	ldr lr, _02120CE8 ; =0x04000060
	mov r2, #0x4000000
	ldrh r1, [lr]
	add ip, lr, #0x2a4
	ldr r0, _02120CEC ; =0xFFFFFDF1
	bic r1, r1, #0x3000
	orr r1, r1, #8
	strh r1, [lr]
	ldrh r3, [lr]
	add r1, r2, #0x1000
	bic r3, r3, #0x3000
	orr r3, r3, #0x10
	strh r3, [lr]
	ldrh r3, [ip]
	and r0, r3, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [ip]
	ldrh r0, [ip]
	orr r0, r0, #0x8000
	strh r0, [ip]
	ldr r0, [r2]
	bic r0, r0, #0x1f00
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x200
	str r0, [r1]
	bl GX_DispOn
	ldr r1, _02120CF0 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02120CDC: .word 0x04000008
_02120CE0: .word 0x04001008
_02120CE4: .word 0x04000050
_02120CE8: .word 0x04000060
_02120CEC: .word 0xFFFFFDF1
_02120CF0: .word 0x04001000
	arm_func_end ov3_02120B48

	arm_func_start ov3_02120CF4
ov3_02120CF4: ; 0x02120CF4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	ldr lr, _02120D8C ; =DAT_overlay_3_0212a234
	add ip, sp, #0x14
	mov r4, r0
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldr r0, [r4, #8]
	add r0, r0, #0x1000
	ldr r5, [r0, #0x498]
	mov r0, r5
	bl sub_0200CAE0
	mov r0, r5
	bl sub_0200CB14
	mov r0, r5
	mov r1, #1
	bl sub_0200CC88
	ldr r1, [sp, #0x1c]
	mov r2, #0x20
	str r1, [sp]
	ldr r3, [sp, #0x20]
	mov r1, #0
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #2
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	mov r0, r5
	bl sub_0200CCD0
	ldrh r1, [r4, #0xe]
	mov r0, r4
	bl ov3_02120D90
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02120D8C: .word DAT_overlay_3_0212a234
	arm_func_end ov3_02120CF4

	arm_func_start ov3_02120D90
ov3_02120D90: ; 0x02120D90
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	ldr ip, _02120E54 ; =DAT_overlay_3_0212a218
	add r4, sp, #0x10
	mov r6, r0
	mov r5, r1
	ldmia ip!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia ip, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r0, [r6, #8]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r4, [r0, #0x498]
	mov r0, r4
	bl sub_0200CF7C
	cmp r5, #0
	bne _02120E0C
	ldr r0, [sp, #0x28]
	mov r1, #0
	str r0, [sp]
	ldr r2, [r6, #0x30]
	mov r0, r4
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x13c]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200CDA0
	arm_func_end ov3_02120D90
_02120E0C:
	cmp r5, #1
	addne sp, sp, #0x2c
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [sp, #0x28]
	mov r1, #0
	str r0, [sp]
	ldr r2, [r6, #0x30]
	mov r0, r4
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x17c]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200CDA0
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02120E54: .word DAT_overlay_3_0212a218

	arm_func_start ov3_02120E58
ov3_02120E58: ; 0x02120E58
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _02120E7C
	ldr r1, [r7, #8]
	bl sub_0201FC9C
	arm_func_end ov3_02120E58
_02120E7C:
	str r0, [r7, #0x20]
	mov r1, #5
	bl sub_02020328
	ldr r0, [r7, #0x20]
	ldr r1, _02121090 ; =s_menu_overlay_3_0212a980
	ldr r2, _02121094 ; =s_title004_bg_overlay_3_0212a988
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r7, #0x20]
	ldr r1, _02121098 ; =s_title004_overlay_3_0212a998
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r7, #0x20]
	ldr r1, _02121098 ; =s_title004_overlay_3_0212a998
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r7, #0x20]
	ldr r1, _0212109C ; =s_title004_00_overlay_3_0212a9a4
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r7, #0x20]
	bl sub_020204A8
	mov r1, #0x100
	ldr r0, [r7, #0x20]
	mov r2, r1
	bl sub_0201FE18
	ldr r0, [r7, #0x20]
	bl sub_0201FEDC
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02120F28
	ldr r1, _021210A0 ; =s_data_message_etc_menu_mes_overlay_3_0212a9b0
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPKcm
	mov r6, r0
_02120F28:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #0x30]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #0x30]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #0x30]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #0x30]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0x30]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02120FF0
_02120F80:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #0x30]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #0x30]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0x30]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #0x30]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _02120F80
_02120FF0:
	cmp r6, #0
	beq _02121008
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02121008:
	mov r0, r7
	bl ov3_02120CF4
	mov r0, r7
	bl ov3_021210A4
	mov r0, r7
	bl ov3_02121110
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02121034
	bl _ZN16CPrimitiveSPHEREC1Ev
_02121034:
	mov r1, #0x20000
	str r0, [r7, #0x34]
	str r1, [r0, #0x20]
	sub r0, r1, #0x60000
	ldr r2, [r7, #0x34]
	sub r1, r1, #0x40000
	str r0, [r2, #0x18]
	mov r0, #0x24
	str r1, [r2, #0x1c]
	bl _Znwm
	cmp r0, #0
	beq _02121068
	bl _ZN16CPrimitiveSPHEREC1Ev
_02121068:
	str r0, [r7, #0x38]
	mov r1, #0x20000
	str r1, [r0, #0x20]
	mov r1, #0x40000
	ldr r2, [r7, #0x38]
	sub r0, r1, #0x60000
	str r1, [r2, #0x18]
	str r0, [r2, #0x1c]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02121090: .word s_menu_overlay_3_0212a980
_02121094: .word s_title004_bg_overlay_3_0212a988
_02121098: .word s_title004_overlay_3_0212a998
_0212109C: .word s_title004_00_overlay_3_0212a9a4
_021210A0: .word s_data_message_etc_menu_mes_overlay_3_0212a9b0

	arm_func_start ov3_021210A4
ov3_021210A4: ; 0x021210A4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _021210E4
	ldr r3, [r4, #8]
	mov r1, #0x40
	str r1, [sp]
	add r2, r3, #0x1000
	add r1, r3, #0xe4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
	arm_func_end ov3_021210A4
_021210E4:
	str r0, [r4, #0x2c]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x2c]
	ldr r1, _02121108 ; =s_data_menu_overlay_3_0212a9cc
	ldr r2, _0212110C ; =s_title003_00_overlay_3_0212a9d8
	bl sub_0200EE14
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02121108: .word s_data_menu_overlay_3_0212a9cc
_0212110C: .word s_title003_00_overlay_3_0212a9d8

	arm_func_start ov3_02121110
ov3_02121110: ; 0x02121110
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r1, #0
	mov r4, r0
	str r1, [sp]
	ldr r0, [r4, #0x2c]
	mov r2, #0x40
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x2c]
	mov r0, #0
	ldr r2, [r1, #0x24]
	mov r1, #1
	str r2, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r2, #0xc0
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x18]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov3_02121110

	arm_func_start ov3_02121178
ov3_02121178: ; 0x02121178
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0x20]
	cmp r5, #0
	beq _021211A8
	beq _021211A0
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov3_02121178
_021211A0:
	mov r0, #0
	str r0, [r4, #0x20]
_021211A8:
	ldr r5, [r4, #0x2c]
	cmp r5, #0
	beq _021211D0
	beq _021211C8
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_021211C8:
	mov r0, #0
	str r0, [r4, #0x2c]
_021211D0:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021211E8
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x30]
_021211E8:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0212120C
	beq _02121204
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02121204:
	mov r0, #0
	str r0, [r4, #0x34]
_0212120C:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02121228
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02121228:
	mov r0, #0
	str r0, [r4, #0x38]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov3_02121234
ov3_02121234: ; 0x02121234
	ldr r0, [r0, #8]
	mov r1, r1, lsl #0xc
	add r0, r0, #0x44
	add r2, r0, #0x400
	mov r1, r1, asr #0x10
	strh r1, [r2, #6]
	mov r0, #0
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	strh r1, [r2, #0x1e]
	bx lr
	arm_func_end ov3_02121234

	arm_func_start ov3_02121260
ov3_02121260: ; 0x02121260
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r1, [r4, #0x1c]
	bl ov3_02121234
	ldr r0, [r4, #0x2c]
	bl sub_0200F64C
	ldr r1, [r4, #8]
	ldrh r0, [r4, #0xc]
	ldr r3, [r1, #0x18]
	ldrh r2, [r3, #0xa]
	ldrh r1, [r3, #0xc]
	tst r0, #3
	sub r2, r2, #0x80
	sub r0, r1, #0x80
	mov r1, r2, lsl #0xc
	mov r0, r0, lsl #0xc
	str r1, [sp, #4]
	str r0, [sp, #8]
	beq _02121348
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x10]
	cmp r0, #0x10
	blo _02121334
	ldrh r0, [r4, #0xc]
	tst r0, #2
	beq _0212132C
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r4, #0xe]
	beq _021212F4
	cmp r0, #1
	moveq r0, #0
	streqh r0, [r4, #0xe]
	arm_func_end ov3_02121260
_021212F4:
	ldrh r1, [r4, #0xe]
	mov r0, r4
	bl ov3_02120D90
	ldr r0, [r4, #0x24]
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x28]
	str r1, [r0, #0x14]
	ldrh r0, [r4, #0xc]
	bic r0, r0, #1
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	bic r0, r0, #2
	strh r0, [r4, #0xc]
_0212132C:
	mov r0, #0
	strh r0, [r4, #0x10]
_02121334:
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	moveq r0, #0x1000
	streq r0, [r4, #0x1c]
	b _02121424
_02121348:
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _02121424
	ldr r0, [r4, #0x34]
	add ip, sp, #4
	add r0, r0, #0x18
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia ip, {r0, r1}
	bl _Z12sub_020061007Point2DS_18UnkStruct_02006100
	cmp r0, #0
	beq _021213BC
	mov r0, #0x1400
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r4, #0x28]
	mov r1, #0
	str r1, [r0, #0x14]
	ldrh r0, [r4, #0xc]
	mov r1, #0xff
	orr r0, r0, #1
	strh r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl sub_02034C44
_021213BC:
	ldr r0, [r4, #0x38]
	add ip, sp, #4
	add r0, r0, #0x18
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia ip, {r0, r1}
	bl _Z12sub_020061007Point2DS_18UnkStruct_02006100
	cmp r0, #0
	beq _02121424
	mov r0, #0x1400
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r4, #0x24]
	mov r1, #0
	str r1, [r0, #0x14]
	ldrh r0, [r4, #0xc]
	mov r1, #0x100
	orr r0, r0, #2
	strh r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl sub_02034C44
_02121424:
	mvn r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov3_02121430
ov3_02121430: ; 0x02121430
	bx lr
	arm_func_end ov3_02121430

	arm_func_start ov3_02121434
ov3_02121434: ; 0x02121434
	ldr ip, _02121440 ; =FUN_0200F71C
	ldr r0, [r0, #0x2c]
	bx ip
	.align 2, 0
_02121440: .word sub_0200F71C
	arm_func_end ov3_02121434

	arm_func_start ov3_02121444
ov3_02121444: ; 0x02121444
	mov r0, #0xf
	bx lr
	arm_func_end ov3_02121444

	arm_func_start _ZN10CConfSceneC1EP5CGame
_ZN10CConfSceneC1EP5CGame: ; 0x0212144C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl _ZN6CSceneC2Ev
	ldr r0, _02121494 ; =PTR_LAB_overlay_3_02121498_overlay_3_0212aa08
	str r0, [r5]
	str r4, [r5, #8]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	str r0, [r5, #4]
	bl sub_020345D4
	mov r0, #0x1000
	str r0, [r5, #0x18]
	mov r1, #0
	mov r0, r5
	strh r1, [r5, #0xe]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02121494: .word PTR_LAB_overlay_3_02121498_overlay_3_0212aa08
	arm_func_end _ZN10CConfSceneC1EP5CGame

	arm_func_start ov3_02121498
ov3_02121498: ; 0x02121498
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02121498

	arm_func_start ov3_021214AC
ov3_021214AC: ; 0x021214AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_021214AC

	arm_func_start ov3_021214C8
ov3_021214C8: ; 0x021214C8
	stmdb sp!, {r3, lr}
	bl GX_ResetBankForBG
	bl GX_ResetBankForOBJ
	bl GX_ResetBankForBGExtPltt
	bl GX_ResetBankForOBJExtPltt
	bl GX_ResetBankForTex
	bl GX_ResetBankForTexPltt
	bl GX_ResetBankForClearImage
	bl GX_ResetBankForSubBG
	bl GX_ResetBankForSubOBJ
	bl GX_ResetBankForSubBGExtPltt
	bl GX_ResetBankForSubOBJExtPltt
	bl GX_ResetBankForARM7
	mov r0, #0xf
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r0, #0x10
	bl GX_SetBankForOBJ
	mov r0, #0x20
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #0
	mov r2, r0
	bl GX_SetGraphicsMode
	ldr r2, _0212165C ; =0x04000008
	mov r0, #0x80
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r2]
	ldrh r1, [r2, #2]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r2, #2]
	ldrh r1, [r2, #4]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r2, #4]
	ldrh r1, [r2, #6]
	bic r1, r1, #3
	strh r1, [r2, #6]
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	ldr r1, _02121660 ; =0x04001008
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r1, #4]
	ldrh r0, [r1, #6]
	bic r0, r0, #3
	strh r0, [r1, #6]
	mov r1, #0
	ldr r0, _02121664 ; =0x04000050
	mov r2, r1
	mov r3, r1
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	ldr lr, _02121668 ; =0x04000060
	mov r2, #0x4000000
	ldrh r1, [lr]
	add ip, lr, #0x2a4
	ldr r0, _0212166C ; =0xFFFFFDF1
	bic r1, r1, #0x3000
	orr r1, r1, #8
	strh r1, [lr]
	ldrh r3, [lr]
	add r1, r2, #0x1000
	bic r3, r3, #0x3000
	orr r3, r3, #0x10
	strh r3, [lr]
	ldrh r3, [ip]
	and r0, r3, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [ip]
	ldrh r0, [ip]
	orr r0, r0, #0x8000
	strh r0, [ip]
	ldr r0, [r2]
	bic r0, r0, #0x1f00
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x200
	str r0, [r1]
	bl GX_DispOn
	ldr r1, _02121670 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212165C: .word 0x04000008
_02121660: .word 0x04001008
_02121664: .word 0x04000050
_02121668: .word 0x04000060
_0212166C: .word 0xFFFFFDF1
_02121670: .word 0x04001000
	arm_func_end ov3_021214C8

	arm_func_start ov3_02121674
ov3_02121674: ; 0x02121674
	ldr r0, _021216A4 ; =0x04001010
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	sub r1, r0, #6
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0xd00
	strh r0, [r1]
	bx lr
	.align 2, 0
_021216A4: .word 0x04001010
	arm_func_end ov3_02121674

	arm_func_start ov3_021216A8
ov3_021216A8: ; 0x021216A8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	ldr lr, _02121768 ; =DAT_overlay_3_0212a250
	add ip, sp, #0x14
	mov r4, r0
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldr r0, [r4, #8]
	add r0, r0, #0x1000
	ldr r5, [r0, #0x498]
	mov r0, r5
	bl sub_0200CAE0
	mov r0, r5
	bl sub_0200CB14
	mov r0, r5
	mov r1, #1
	bl sub_0200CC88
	ldr r1, [sp, #0x1c]
	mov r0, #0x20
	str r1, [sp]
	ldr r2, [sp, #0x20]
	mov r1, #0
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	mov r0, r5
	bl sub_0200CCD0
	ldr r2, [sp, #0x2c]
	mov r1, #0
	str r2, [sp]
	ldr r2, [r4, #0x2c]
	mov r0, r5
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x134]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_0200CDA0
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02121768: .word DAT_overlay_3_0212a250
	arm_func_end ov3_021216A8

	arm_func_start ov3_0212176C
ov3_0212176C: ; 0x0212176C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	bl ov3_02121674
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _02121794
	ldr r1, [r7, #8]
	bl sub_0201FC9C
	arm_func_end ov3_0212176C
_02121794:
	str r0, [r7, #0x1c]
	mov r1, #5
	bl sub_02020328
	ldr r0, [r7, #0x1c]
	ldr r1, _021219A8 ; =s_menu_overlay_3_0212aa34
	ldr r2, _021219AC ; =s_title004_bg_overlay_3_0212aa3c
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r7, #0x1c]
	ldr r1, _021219B0 ; =s_title004_overlay_3_0212aa4c
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r7, #0x1c]
	ldr r1, _021219B0 ; =s_title004_overlay_3_0212aa4c
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r7, #0x1c]
	ldr r1, _021219B4 ; =s_title004_00_overlay_3_0212aa58
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r7, #0x1c]
	bl sub_020204A8
	mov r1, #0x100
	ldr r0, [r7, #0x1c]
	mov r2, r1
	bl sub_0201FE18
	ldr r0, [r7, #0x1c]
	bl sub_0201FEDC
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02121840
	ldr r1, _021219B8 ; =s_data_message_etc_menu_mes_overlay_3_0212aa64
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPKcm
	mov r6, r0
_02121840:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #0x2c]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #0x2c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #0x2c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #0x2c]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0x2c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02121908
_02121898:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #0x2c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #0x2c]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0x2c]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #0x2c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _02121898
_02121908:
	cmp r6, #0
	beq _02121920
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02121920:
	mov r0, r7
	bl ov3_021216A8
	mov r0, r7
	bl ov3_021219BC
	mov r0, r7
	bl ov3_02121A28
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _0212194C
	bl _ZN16CPrimitiveSPHEREC1Ev
_0212194C:
	mov r1, #0x20000
	str r0, [r7, #0x30]
	str r1, [r0, #0x20]
	sub r0, r1, #0x60000
	ldr r2, [r7, #0x30]
	sub r1, r1, #0x40000
	str r0, [r2, #0x18]
	mov r0, #0x24
	str r1, [r2, #0x1c]
	bl _Znwm
	cmp r0, #0
	beq _02121980
	bl _ZN16CPrimitiveSPHEREC1Ev
_02121980:
	str r0, [r7, #0x34]
	mov r1, #0x20000
	str r1, [r0, #0x20]
	mov r1, #0x40000
	ldr r2, [r7, #0x34]
	sub r0, r1, #0x60000
	str r1, [r2, #0x18]
	str r0, [r2, #0x1c]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021219A8: .word s_menu_overlay_3_0212aa34
_021219AC: .word s_title004_bg_overlay_3_0212aa3c
_021219B0: .word s_title004_overlay_3_0212aa4c
_021219B4: .word s_title004_00_overlay_3_0212aa58
_021219B8: .word s_data_message_etc_menu_mes_overlay_3_0212aa64

	arm_func_start ov3_021219BC
ov3_021219BC: ; 0x021219BC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _021219FC
	ldr r3, [r4, #8]
	mov r1, #0x40
	str r1, [sp]
	add r2, r3, #0x1000
	add r1, r3, #0xe4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
	arm_func_end ov3_021219BC
_021219FC:
	str r0, [r4, #0x28]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x28]
	ldr r1, _02121A20 ; =s_data_menu_overlay_3_0212aa80
	ldr r2, _02121A24 ; =s_title003_00_overlay_3_0212aa8c
	bl sub_0200EE14
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02121A20: .word s_data_menu_overlay_3_0212aa80
_02121A24: .word s_title003_00_overlay_3_0212aa8c

	arm_func_start ov3_02121A28
ov3_02121A28: ; 0x02121A28
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r1, #0
	mov r4, r0
	str r1, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0x40
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x28]
	mov r0, #0
	ldr r2, [r1, #0x24]
	mov r1, #1
	str r2, [r4, #0x10]
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0xc0
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x14]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov3_02121A28

	arm_func_start ov3_02121A90
ov3_02121A90: ; 0x02121A90
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	beq _02121AC0
	beq _02121AB8
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov3_02121A90
_02121AB8:
	mov r0, #0
	str r0, [r4, #0x1c]
_02121AC0:
	ldr r5, [r4, #0x28]
	cmp r5, #0
	beq _02121AE8
	beq _02121AE0
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_02121AE0:
	mov r0, #0
	str r0, [r4, #0x28]
_02121AE8:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02121B00
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x2c]
_02121B00:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _02121B24
	beq _02121B1C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02121B1C:
	mov r0, #0
	str r0, [r4, #0x30]
_02121B24:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02121B40
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02121B40:
	mov r0, #0
	str r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov3_02121B4C
ov3_02121B4C: ; 0x02121B4C
	ldr r0, [r0, #8]
	mov r1, r1, lsl #0xc
	add r0, r0, #0x44
	add r2, r0, #0x400
	mov r1, r1, asr #0x10
	strh r1, [r2, #6]
	mov r0, #0
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	strh r1, [r2, #0x1e]
	bx lr
	arm_func_end ov3_02121B4C

	arm_func_start ov3_02121B78
ov3_02121B78: ; 0x02121B78
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r1, [r5, #0x18]
	mvn r4, #0
	bl ov3_02121B4C
	ldr r0, [r5, #0x28]
	bl sub_0200F64C
	ldr r1, [r5, #8]
	ldr r0, [r1, #0x14]
	ldr r3, [r1, #0x18]
	ldrh r0, [r0, #2]
	ldrh r2, [r3, #0xa]
	ldrh r1, [r3, #0xc]
	and r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldrh r0, [r5, #0xc]
	movne r4, #0x22
	sub r2, r2, #0x80
	tst r0, #3
	sub r0, r1, #0x80
	mov r1, r2, lsl #0xc
	mov r0, r0, lsl #0xc
	str r1, [sp, #4]
	str r0, [sp, #8]
	beq _02121C24
	ldrh r0, [r5, #0xe]
	add r0, r0, #1
	strh r0, [r5, #0xe]
	ldrh r0, [r5, #0xe]
	cmp r0, #0x10
	blo _02121C10
	ldrh r0, [r5, #0xc]
	tst r0, #2
	mov r0, #0
	movne r4, #0xe
	strh r0, [r5, #0xe]
	arm_func_end ov3_02121B78
_02121C10:
	ldrh r0, [r5, #0xe]
	cmp r0, #2
	moveq r0, #0x1000
	streq r0, [r5, #0x18]
	b _02121D00
_02121C24:
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _02121D00
	ldr r0, [r5, #0x30]
	add ip, sp, #4
	add r0, r0, #0x18
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia ip, {r0, r1}
	bl _Z12sub_020061007Point2DS_18UnkStruct_02006100
	cmp r0, #0
	beq _02121C98
	mov r0, #0x1400
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x20]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r5, #0x24]
	mov r1, #0
	str r1, [r0, #0x14]
	ldrh r0, [r5, #0xc]
	mov r1, #0xff
	orr r0, r0, #1
	strh r0, [r5, #0xc]
	ldr r0, [r5, #4]
	bl sub_02034C44
_02121C98:
	ldr r0, [r5, #0x34]
	add ip, sp, #4
	add r0, r0, #0x18
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia ip, {r0, r1}
	bl _Z12sub_020061007Point2DS_18UnkStruct_02006100
	cmp r0, #0
	beq _02121D00
	mov r0, #0x1400
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x24]
	mov r1, #1
	mov r2, #0
	bl sub_0200EB34
	ldr r0, [r5, #0x20]
	mov r1, #0
	str r1, [r0, #0x14]
	ldrh r0, [r5, #0xc]
	mov r1, #0x100
	orr r0, r0, #2
	strh r0, [r5, #0xc]
	ldr r0, [r5, #4]
	bl sub_02034C44
_02121D00:
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}

	arm_func_start ov3_02121D0C
ov3_02121D0C: ; 0x02121D0C
	bx lr
	arm_func_end ov3_02121D0C

	arm_func_start ov3_02121D10
ov3_02121D10: ; 0x02121D10
	ldr ip, _02121D1C ; =FUN_0200F71C
	ldr r0, [r0, #0x28]
	bx ip
	.align 2, 0
_02121D1C: .word sub_0200F71C
	arm_func_end ov3_02121D10

	arm_func_start ov3_02121D20
ov3_02121D20: ; 0x02121D20
	mov r0, #0xf
	bx lr
	arm_func_end ov3_02121D20
