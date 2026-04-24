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
	bl _ZN17UnkClass_020091E812sub_02009328EmmmPvmS0_mmm
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
	bl CBinaryFileMes_ctor
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
	bl CBinaryFileMes_ctor
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
	bl sub_02006100
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
	bl sub_02006100
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
	bl sub_02006100
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
	bl sub_02006100
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
	bl sub_02006100
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
	bl sub_02006100
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
	bl sub_02006000
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
	bl sub_02006000
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
	bl sub_02006000
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
	bl sub_02006100
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
	bl sub_02006100
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
	bl CBinaryFileMes_ctor
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
	bl sub_020049A4
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
	bl sub_020049A4
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
	bl sub_02006100
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
	bl sub_02006100
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
	bl CBinaryFileMes_ctor
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
	bl sub_020049A4
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
	bl sub_020049A4
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
	bl sub_02006100
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
	bl sub_02006100
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

	arm_func_start _ZN15CNameInputSceneC1Ev
_ZN15CNameInputSceneC1Ev: ; 0x02121D28
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN6CSceneC2Ev
	ldr r0, _02121DB8 ; =ptr_FUN_overlay_3_02121dbc_overlay_3_0212aac0
	str r0, [r4]
	bl sub_0201001C
	str r0, [r4, #0x80]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	str r0, [r4, #0x84]
	bl sub_020345D4
	ldr r0, [r4, #0x84]
	mov r1, #3
	bl sub_0203499C
	mov r1, #0
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #7]
	strb r1, [r4, #8]
	mov r2, r1
	arm_func_end _ZN15CNameInputSceneC1Ev
_02121D84:
	add r0, r4, r1, lsl #2
	add r1, r1, #1
	str r2, [r0, #0xbc]
	cmp r1, #4
	blt _02121D84
	mov r1, #0
_02121D9C:
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #0x68]
	cmp r2, #0x16
	blt _02121D9C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02121DB8: .word ptr_FUN_overlay_3_02121dbc_overlay_3_0212aac0

	arm_func_start ov3_02121DBC
ov3_02121DBC: ; 0x02121DBC
	stmdb sp!, {r4, lr}
	ldr r1, _02121DF8 ; =ptr_FUN_overlay_3_02121dbc_overlay_3_0212aac0
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x84]
	mov r1, #1
	bl sub_02034B58
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02121DF8: .word ptr_FUN_overlay_3_02121dbc_overlay_3_0212aac0
	arm_func_end ov3_02121DBC

	arm_func_start ov3_02121DFC
ov3_02121DFC: ; 0x02121DFC
	stmdb sp!, {r4, lr}
	ldr r1, _02121E40 ; =ptr_FUN_overlay_3_02121dbc_overlay_3_0212aac0
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x84]
	mov r1, #1
	bl sub_02034B58
	mov r0, r4
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
_02121E40: .word ptr_FUN_overlay_3_02121dbc_overlay_3_0212aac0
	arm_func_end ov3_02121DFC

	arm_func_start ov3_02121E44
ov3_02121E44: ; 0x02121E44
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	mov r4, r0
	str r1, [sp, #0x10]
	ldr r0, [r4, #0xc0]
	ldr r1, [r4, #0x20]
	mov r2, #7
	bl sub_0200F628
	ldr r0, [r4, #0xc0]
	ldr r1, [r4, #0x24]
	mov r2, #7
	bl sub_0200F628
	ldr r0, [r4, #0xc0]
	ldr r1, [r4, #0x2c]
	mov r2, #7
	bl sub_0200F628
	ldr r0, [r4, #0x80]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r5, [r0, #0x494]
	mov r0, r5
	bl sub_0200C980
	mov r0, r5
	mov r1, #1
	bl sub_0200C980
	mov r0, r5
	mov r1, #2
	bl sub_0200C980
	mov r0, r5
	mov r1, #3
	bl sub_0200C980
	mov r0, r5
	mov r1, #4
	bl sub_0200C980
	mov r0, r5
	mov r1, #5
	bl sub_0200C980
	mov r0, r5
	mov r1, #6
	bl sub_0200C980
	ldr r0, [sp, #0x10]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02121F04
_02121EF4: ; jump table
	b _02121F04 ; case 0
	b _02121FBC ; case 1
	b _02122078 ; case 2
	b _02122078 ; case 3
_02121F04:
	mov r1, #3
	str r1, [sp]
	ldr r0, [r4, #0x1dc]
	mov r6, #0
	ldr r2, [r0, #8]
	mov r0, r5
	ldr r3, [r2, #0xc]
	mov r2, #5
	stmib sp, {r3, r6}
	str r6, [sp, #0xc]
	ldr r6, _02122250 ; =DAT_overlay_3_0212a35c
	mov r3, #4
	str r6, [sp, #0x1c]
	bl sub_0200C7A4
	mov r0, #7
	str r0, [sp]
	ldr r0, [r4, #0x1dc]
	mov r1, #4
	ldr r0, [r0, #8]
	mov r6, #0
	ldr r2, [r0, #0x14]
	mov r0, r5
	stmib sp, {r2, r6}
	mov r3, r1
	mov r2, #5
	str r6, [sp, #0xc]
	bl sub_0200C7A4
	mov r0, #7
	str r0, [sp]
	ldr r0, [r4, #0x1dc]
	mov r1, #5
	ldr r2, [r0, #8]
	mov r0, r5
	ldr r3, [r2, #0x24]
	mov r2, r6
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, r1
	mov r3, #4
	bl sub_0200C7A4
	ldr r0, [r4, #0xc0]
	ldr r1, [r4, #0x20]
	mov r2, #6
	bl sub_0200F628
	b _02122130
	arm_func_end ov3_02121E44
_02121FBC:
	mov r0, #7
	str r0, [sp]
	ldr r0, [r4, #0x1dc]
	mov r6, #0
	ldr r1, [r0, #8]
	mov r0, r5
	ldr r2, [r1, #0xc]
	mov r1, #3
	stmib sp, {r2, r6}
	str r6, [sp, #0xc]
	ldr r6, _02122254 ; =DAT_overlay_3_0212a44c
	mov r2, #5
	mov r3, #4
	str r6, [sp, #0x1c]
	bl sub_0200C7A4
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x1dc]
	mov r1, #4
	ldr r0, [r0, #8]
	mov r6, #0
	ldr r2, [r0, #0x14]
	mov r0, r5
	stmib sp, {r2, r6}
	mov r3, r1
	mov r2, #5
	str r6, [sp, #0xc]
	bl sub_0200C7A4
	mov r0, #7
	str r0, [sp]
	ldr r0, [r4, #0x1dc]
	mov r1, #5
	ldr r2, [r0, #8]
	mov r0, r5
	ldr r3, [r2, #0x24]
	mov r2, r6
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, r1
	mov r3, #4
	bl sub_0200C7A4
	ldr r0, [r4, #0xc0]
	ldr r1, [r4, #0x24]
	mov r2, #6
	bl sub_0200F628
	b _02122130
_02122078:
	mov r0, #7
	str r0, [sp]
	ldr r0, [r4, #0x1dc]
	mov r6, #0
	ldr r1, [r0, #8]
	mov r0, r5
	ldr r2, [r1, #0xc]
	mov r1, #3
	stmib sp, {r2, r6}
	str r6, [sp, #0xc]
	ldr r6, _02122258 ; =DAT_overlay_3_0212a26c
	mov r2, #5
	mov r3, #4
	str r6, [sp, #0x1c]
	bl sub_0200C7A4
	mov r0, #7
	str r0, [sp]
	ldr r0, [r4, #0x1dc]
	mov r1, #4
	ldr r0, [r0, #8]
	mov r6, #0
	ldr r2, [r0, #0x14]
	mov r0, r5
	stmib sp, {r2, r6}
	mov r3, r1
	mov r2, #5
	str r6, [sp, #0xc]
	bl sub_0200C7A4
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x1dc]
	mov r1, #5
	ldr r2, [r0, #8]
	mov r0, r5
	ldr r3, [r2, #0x24]
	mov r2, r6
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, r1
	mov r3, #4
	bl sub_0200C7A4
	ldr r0, [r4, #0xc0]
	ldr r1, [r4, #0x2c]
	mov r2, #6
	bl sub_0200F628
_02122130:
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	mov sb, #3
_02122140:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	mov r5, #1
	ldr fp, _0212225C ; =s_overlay_3_0212aaec
	mov r8, #0
	mov sl, #3
	add r7, r1, r0, lsl #2
	mov r6, r5
_02122160:
	ldr r0, [r7, r8, lsl #2]
	tst r0, #0x80000000
	bne _0212218C
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, r4
	mov r1, #0
	mov r2, sb
	mov r3, sl
	bl ov3_02123E84
	b _0212220C
_0212218C:
	bic r0, r0, #0xff000000
	cmp r0, #1
	beq _021221A4
	cmp r0, #2
	beq _021221D4
	b _0212220C
_021221A4:
	stmia sp, {r5, fp}
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x80]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r2, sb
	mov r3, sl
	bl sub_0200C7A4
	b _0212220C
_021221D4:
	mov r0, #1
	str r0, [sp]
	ldr r0, _02122260 ; =s_overlay_3_0212aaf4
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x80]
	mov r2, sb
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r3, sl
	bl sub_0200C7A4
_0212220C:
	add sl, sl, #0x10
	add r8, r8, #1
	cmp r8, #5
	blt _02122160
	ldr r0, [sp, #0x18]
	add sb, sb, #0x10
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0xc
	ldr r0, [sp, #0x14]
	add r0, r0, #5
	str r0, [sp, #0x14]
	blt _02122140
	ldr r0, [sp, #0x10]
	strb r0, [r4, #5]
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02122250: .word DAT_overlay_3_0212a35c
_02122254: .word DAT_overlay_3_0212a44c
_02122258: .word DAT_overlay_3_0212a26c
_0212225C: .word s_overlay_3_0212aaec
_02122260: .word s_overlay_3_0212aaf4

	arm_func_start ov3_02122264
ov3_02122264: ; 0x02122264
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #7
	movhs r1, #6
	mov r0, #0xb
	mul r0, r1, r0
	add r0, r0, #0x5e
	mov r1, r0, lsl #0x10
	ldr r0, [r5, #0x90]
	mov r1, r1, lsr #0x10
	mov r2, #0x20
	bl sub_0200EB28
	strb r4, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov3_02122264

	arm_func_start ov3_021222A0
ov3_021222A0: ; 0x021222A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #4]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	sub r1, r1, #1
	and r1, r1, #0xff
	bl ov3_02122264
	mov r0, r4
	bl ov3_02123E0C
	ldrb r1, [r4, #4]
	mov r3, #0
	mov ip, #4
	add r1, r4, r1, lsl #2
	ldr r2, [r1, #0x4c]
	str r3, [r1, #0x4c]
	arm_func_end ov3_021222A0
_021222E0:
	rsb r1, r3, #3
	mov r1, r1, lsl #3
	mov r1, r2, asr r1
	tst r1, #0xff
	bne _02122304
	add r3, r3, #1
	cmp r3, #4
	sub ip, ip, #1
	blt _021222E0
_02122304:
	cmp ip, #0
	mov lr, #0
	ble _02122334
	mov r3, lr
_02122314:
	sub r1, r0, #1
	add r2, r4, r0
	mov r0, r1, lsl #0x10
	add lr, lr, #1
	strb r3, [r2, #0x67]
	cmp lr, ip
	mov r0, r0, lsr #0x10
	blt _02122314
_02122334:
	mov r0, r4
	bl ov3_02123F8C
	ldmia sp!, {r4, pc}

	arm_func_start ov3_02122340
ov3_02122340: ; 0x02122340
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r6, r2
	mov r8, r0
	mov r7, r1
	mov r5, r3
	mov r4, #0
	beq _02122374
	cmp r6, #1
	beq _02122380
	cmp r6, #3
	ldreq r0, _021223F0 ; =DAT_overlay_3_0212a26c
	ldreq r4, [r0, r5, lsl #2]
	b _02122388
	arm_func_end ov3_02122340
_02122374:
	ldr r0, _021223F4 ; =DAT_overlay_3_0212a35c
	ldr r4, [r0, r5, lsl #2]
	b _02122388
_02122380:
	ldr r0, _021223F8 ; =DAT_overlay_3_0212a44c
	ldr r4, [r0, r5, lsl #2]
_02122388:
	mov r0, r8
	bl ov3_02123E0C
	orr r3, r5, r6, lsl #24
	add r2, r8, r7, lsl #2
	mov r1, #0
	str r3, [r2, #0x30]
	mov r5, r1
	str r4, [r2, #0x4c]
_021223A8:
	rsb r2, r5, #3
	mov r2, r2, lsl #3
	mov r2, r4, lsr r2
	ands r6, r2, #0xff
	cmpeq r1, #0
	beq _021223D8
	add r2, r0, #1
	add r3, r8, r0
	mov r0, r2, lsl #0x10
	strb r6, [r3, #0x68]
	mov r0, r0, lsr #0x10
	add r1, r1, #1
_021223D8:
	add r5, r5, #1
	cmp r5, #4
	blt _021223A8
	mov r0, r8
	bl ov3_02123F8C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021223F0: .word DAT_overlay_3_0212a26c
_021223F4: .word DAT_overlay_3_0212a35c
_021223F8: .word DAT_overlay_3_0212a44c

	arm_func_start ov3_021223FC
ov3_021223FC: ; 0x021223FC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, _02122570 ; =0x00E38080
	mov r2, #0
	arm_func_end ov3_021223FC
_0212240C:
	add r1, r4, r2, lsl #2
	ldr r1, [r1, #0x4c]
	cmp r1, #0
	cmpne r1, r0
	cmpne r1, #0x20
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	add r2, r2, #1
	cmp r2, #7
	blt _0212240C
	mov r1, #0
	mov r2, r1
_0212243C:
	add r0, r4, r1
	add r1, r1, #1
	strb r2, [r0, #0x68]
	cmp r1, #0x15
	blt _0212243C
	mov r1, #0
_02122454:
	add r0, r4, r2, lsl #2
	str r1, [r0, #0x30]
	add r2, r2, #1
	str r1, [r0, #0x4c]
	cmp r2, #7
	blt _02122454
	ldr r0, _02122574 ; =MAIN_BSS_020B26A0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021224FC
	mov r5, #0x4b
	strb r5, [r4, #0x68]
	mov lr, #0x65
	strb lr, [r4, #0x69]
	mov ip, #0x6c
	strb ip, [r4, #0x6a]
	ldr r1, _02122578 ; =0x01000014
	strb ip, [r4, #0x6b]
	mov r3, #0x79
	strb r3, [r4, #0x6c]
	mov r2, #0x6e
	strb r2, [r4, #0x6d]
	mov r0, #0x10
	str r0, [r4, #0x30]
	str r1, [r4, #0x34]
	add r0, r1, #1
	str r0, [r4, #0x38]
	str r0, [r4, #0x3c]
	sub r0, r1, #2
	str r0, [r4, #0x40]
	add r0, r1, #0xb
	str r0, [r4, #0x44]
	str r5, [r4, #0x4c]
	str lr, [r4, #0x50]
	str ip, [r4, #0x54]
	str ip, [r4, #0x58]
	str r3, [r4, #0x5c]
	mov r0, r4
	mov r1, #6
	str r2, [r4, #0x60]
	bl ov3_02122264
	b _02122560
_021224FC:
	cmp r0, #1
	bne _02122560
	mov lr, #0x4b
	strb lr, [r4, #0x68]
	mov ip, #0x61
	strb ip, [r4, #0x69]
	mov r3, #0x74
	mov r1, #0x1000000
	strb r3, [r4, #0x6a]
	mov r2, #0x65
	strb r2, [r4, #0x6b]
	mov r0, #0x10
	str r0, [r4, #0x30]
	str r1, [r4, #0x34]
	add r0, r1, #0x1f
	str r0, [r4, #0x38]
	add r0, r1, #0x1b
	str r0, [r4, #0x3c]
	str lr, [r4, #0x4c]
	str ip, [r4, #0x50]
	str r3, [r4, #0x54]
	mov r0, r4
	mov r1, #4
	str r2, [r4, #0x58]
	bl ov3_02122264
_02122560:
	mov r0, r4
	bl ov3_02123F8C
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02122570: .word 0x00E38080
_02122574: .word MAIN_BSS_020B26A0
_02122578: .word 0x01000014

	arm_func_start ov3_0212257C
ov3_0212257C: ; 0x0212257C
	stmdb sp!, {r4, lr}
	ldr r1, _02122684 ; =MAIN_BSS_0208F304
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	beq _021225C0
	ldr r0, _02122684 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	mvnne r0, #0
	ldmneia sp!, {r4, pc}
	arm_func_end ov3_0212257C
_021225C0:
	ldr r0, [r4, #0x10]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0212267C
_021225D0: ; jump table
	b _021225EC ; case 0
	b _0212267C ; case 1
	b _02122610 ; case 2
	b _0212261C ; case 3
	b _02122628 ; case 4
	b _02122634 ; case 5
	b _02122640 ; case 6
_021225EC:
	mov r0, #2
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x84]
	mov r1, #0x16
	mov r2, #0x40
	bl sub_02034A40
	b _0212267C
_02122610:
	mov r0, r4
	bl ov3_02122688
	b _0212267C
_0212261C:
	mov r0, r4
	bl ov3_02122A8C
	b _0212267C
_02122628:
	mov r0, r4
	bl ov3_02122B7C
	b _0212267C
_02122634:
	mov r0, r4
	bl ov3_02122BCC
	b _0212267C
_02122640:
	ldr r0, _02122684 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0212267C
	ldr r0, _02122684 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_0212267C:
	mvn r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02122684: .word MAIN_BSS_0208F304

	arm_func_start ov3_02122688
ov3_02122688: ; 0x02122688
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sl, r0
	ldr r0, [sl, #0xbc]
	bl sub_0200F64C
	ldr r0, [sl, #0xc0]
	bl sub_0200F64C
	ldr r0, [sl, #0x80]
	ldr r0, [r0, #0x18]
	ldrh r2, [r0, #0xa]
	ldrh r1, [r0, #0xc]
	str r0, [sp, #0xc]
	ldrb r0, [r0, #4]
	sub r2, r2, #0x80
	sub r1, r1, #0x60
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	cmp r0, #0
	beq _0212295C
	mov r7, #0
	str r7, [sp, #0x10]
	mov r8, #0x18
	arm_func_end ov3_02122688
_021226E8:
	mov r5, #0
	mov sb, #0x40
	sub r4, sp, #8
	mov fp, r5
_021226F8:
	add r6, r5, r7
	str fp, [sp, #8]
	add r0, sl, r6, lsl #2
	ldr r0, [r0, #0xcc]
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0x14
	ldmia r4, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _02122784
	ldrb r1, [sl, #4]
	cmp r1, #7
	bhs _0212275C
	mov r3, r6
	mov r0, sl
	ldrb r2, [sl, #5]
	bl ov3_02122340
	mov r0, sl
	ldrb r1, [sl, #4]
	add r1, r1, #1
	and r1, r1, #0xff
	bl ov3_02122264
_0212275C:
	ldr r0, [sl, #0x98]
	mov r1, r8
	mov r2, sb
	bl sub_0200EB28
	ldr r2, [sl, #0x98]
	mov r0, #1
	str r0, [r2, #0x14]
	ldr r0, [sl, #0x84]
	mov r1, #0xfa
	bl sub_02034C44
_02122784:
	add r5, r5, #1
	cmp r5, #5
	add sb, sb, #0x10
	blt _021226F8
	ldr r0, [sp, #0x10]
	add r7, r7, #5
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0xc
	add r8, r8, #0x10
	blt _021226E8
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sl, #0x1c4]
	sub r4, sp, #8
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0x14
	ldmia r4, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _02122814
	mov r0, sl
	bl ov3_021222A0
	ldr r0, [sl, #0xa0]
	mov r1, #0xe0
	mov r2, #0x70
	bl sub_0200EB28
	ldr r0, [sl, #0xa0]
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r0, [sl, #0x84]
	mov r1, #0xfe
	bl sub_02034C44
_02122814:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sl, #0x1c8]
	sub r4, sp, #8
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0x14
	ldmia r4, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _02122860
	mov r0, sl
	mov r1, #0
	bl ov3_02121E44
	ldr r0, [sl, #0x84]
	mov r1, #0xfa
	bl sub_02034C44
_02122860:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sl, #0x1cc]
	sub r4, sp, #8
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0x14
	ldmia r4, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _021228AC
	mov r0, sl
	mov r1, #1
	bl ov3_02121E44
	ldr r0, [sl, #0x84]
	mov r1, #0xfa
	bl sub_02034C44
_021228AC:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sl, #0x1d4]
	sub r4, sp, #8
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0x14
	ldmia r4, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _021228F8
	mov r0, sl
	mov r1, #3
	bl ov3_02121E44
	ldr r0, [sl, #0x84]
	mov r1, #0xfa
	bl sub_02034C44
_021228F8:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sl, #0x1d8]
	sub r4, sp, #8
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0x14
	ldmia r4, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _0212295C
	mov r0, sl
	bl ov3_021223FC
	cmp r0, #0
	moveq r0, #1
	streqb r0, [sl, #6]
	ldr r0, [sl, #0xc0]
	ldr r1, [sl, #0x1c]
	mov r2, #2
	bl sub_0200F628
	ldr r0, [sl, #0x84]
	mov r1, #0xff
	bl sub_02034C44
_0212295C:
	ldr r0, [sp, #0xc]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _02122A3C
	ldr r0, [sl, #0x98]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [sl, #0xa0]
	mov r2, #1
	str r1, [r0, #0x14]
	ldr r0, [sl, #0xc0]
	ldr r1, [sl, #0x1c]
	bl sub_0200F628
	ldrb r0, [sl, #6]
	cmp r0, #1
	bne _02122A3C
	mov r3, #0
	ldr r2, _02122A84 ; =MAIN_BSS_020B26A0
	add r1, sl, #0x68
	mov r4, r3
_021229AC:
	add r0, r2, r3
	add r0, r0, #0x8000
	add r3, r3, #1
	strb r4, [r0, #0x7e3]
	cmp r3, #0x1e
	blt _021229AC
	b _021229D8
_021229C8:
	add r0, r2, r4
	add r0, r0, #0x8000
	strb r3, [r0, #0x7e3]
	add r4, r4, #1
_021229D8:
	cmp r4, #0x1e
	bge _021229EC
	ldrsb r3, [r1, r4]
	cmp r3, #0
	bne _021229C8
_021229EC:
	mov r1, #0
	ldr r0, _02122A88 ; =MAIN_BSS_0208F304
	strb r1, [sl, #6]
	ldr r0, [r0]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, _02122A88 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #5
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	mov r0, #5
	str r0, [sl, #0x10]
	mov r0, #3
	str r0, [sl, #0x14]
_02122A3C:
	ldrb r0, [sl, #7]
	cmp r0, #0xc
	bne _02122A74
	mov r1, #0
	strb r1, [sl, #7]
	ldrb r0, [sl, #8]
	add sp, sp, #0x1c
	eor r0, r0, #1
	tst r0, #0xff
	strb r0, [sl, #8]
	ldr r0, [sl, #0x90]
	movne r1, #1
	str r1, [r0, #0x14]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02122A74:
	add r0, r0, #1
	strb r0, [sl, #7]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02122A84: .word MAIN_BSS_020B26A0
_02122A88: .word MAIN_BSS_0208F304

	arm_func_start ov3_02122A8C
ov3_02122A8C: ; 0x02122A8C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x80]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r5, [r0, #0x490]
	mov r0, r5
	bl sub_0200B6A4
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl sub_0200B6D4
	movs r4, r0
	bne _02122B14
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl sub_02009FB0
	ldr r0, _02122B78 ; =MAIN_BSS_0208F304
	mov r1, #2
	ldr r0, [r0]
	mov r2, #0x14
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _02122B78 ; =MAIN_BSS_0208F304
	mov r1, #2
	ldr r0, [r0]
	mov r2, #0x14
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	mov r0, #6
	str r0, [r6, #0x10]
	arm_func_end ov3_02122A8C
_02122B14:
	cmp r4, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, _02122B78 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #5
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _02122B78 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #5
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl sub_02009FB0
	mov r0, #5
	str r0, [r6, #0x10]
	mov r0, #2
	str r0, [r6, #0x14]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02122B78: .word MAIN_BSS_0208F304

	arm_func_start ov3_02122B7C
ov3_02122B7C: ; 0x02122B7C
	stmdb sp!, {r4, lr}
	ldr r1, _02122BC8 ; =MAIN_BSS_0208F304
	mov r4, r0
	ldr r0, [r1]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #5
	bl sub_0200E0E0
	ldr r0, _02122BC8 ; =MAIN_BSS_0208F304
	mov r1, #3
	ldr r0, [r0]
	mov r2, #5
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02122BC8: .word MAIN_BSS_0208F304
	arm_func_end ov3_02122B7C

	arm_func_start ov3_02122BCC
ov3_02122BCC: ; 0x02122BCC
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	ldr r1, [r4, #0x14]
	cmp r1, #2
	bne _02122CB4
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	mov r1, #0x4000000
	ldr r0, [r1]
	mov r3, #0x10
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1d00
	str r0, [r1]
	ldr lr, [r4, #0x80]
	mov r2, #0x4000
	add r0, lr, #0x1000
	ldr ip, [r0, #0x4b0]
	add r1, lr, #0x24
	str ip, [sp]
	str r1, [sp, #4]
	ldr ip, [r0, #0x48c]
	mov r1, #0
	str ip, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x4ac]
	ldr r0, [r0, #0x490]
	ldr r1, [lr, #0x14]
	ldr r2, [lr, #0x18]
	add r3, r3, #0xc
	bl _ZN17UnkClass_020091E812sub_02009328EmmmPvmS0_mmm
	mov r0, r4
	bl ov3_021231F4
	mov r0, r4
	bl ov3_0212351C
	mov r0, r4
	bl ov3_02122E68
	mov r0, r4
	mov r1, #0
	bl ov3_0212362C
	mov r0, r4
	bl ov3_021239A8
	mov r2, #0
	ldr r1, [r4, #0x98]
	mov r0, r4
	str r2, [r1, #0x14]
	ldr r1, [r4, #0xa0]
	str r2, [r1, #0x14]
	bl ov3_02123F8C
	mov r0, r4
	ldrb r1, [r4, #4]
	bl ov3_02122264
	mov r0, r4
	mov r1, #0
	bl ov3_02121E44
	arm_func_end ov3_02122BCC
_02122CB4:
	ldr r0, [r4, #0x14]
	cmp r0, #3
	bne _02122CE4
	mov r0, r4
	bl ov3_02123DC0
	mov r0, r4
	bl ov3_02123014
	mov r0, r4
	bl ov3_021231F4
	mov r0, r4
	mov r1, #1
	bl ov3_0212362C
_02122CE4:
	mov r0, #4
	str r0, [r4, #0x10]
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}

	arm_func_start ov3_02122CF4
ov3_02122CF4: ; 0x02122CF4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	cmpne r0, #2
	beq _02122D18
	cmp r0, #3
	beq _02122D2C
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02122CF4
_02122D18:
	ldr r0, [r4, #0xbc]
	bl sub_0200F71C
	ldr r0, [r4, #0xc0]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}
_02122D2C:
	ldr r0, [r4, #0xc4]
	bl sub_0200F71C
	ldr r0, [r4, #0xc8]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start ov3_02122D40
ov3_02122D40: ; 0x02122D40
	bx lr
	arm_func_end ov3_02122D40

	arm_func_start ov3_02122D44
ov3_02122D44: ; 0x02122D44
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
	mov r0, #4
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r0, #3
	bl GX_SetBankForOBJ
	mov r0, #8
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #0
	mov r2, r1
	bl GX_SetGraphicsMode
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	ldr ip, _02122E5C ; =0x04000304
	ldr r1, _02122E60 ; =0xFFFFFDF1
	ldrh r3, [ip]
	mov r0, #0x4000000
	add r2, r0, #0x1000
	and r1, r3, r1
	orr r1, r1, #0xe
	orr r1, r1, #0x200
	strh r1, [ip]
	ldrh r1, [ip]
	bic r1, r1, #0x8000
	strh r1, [ip]
	ldr r1, [r0]
	bic r1, r1, #0x1f00
	orr r1, r1, #0x1d00
	str r1, [r0]
	ldr r1, [r2]
	bic r1, r1, #0x1f00
	orr r1, r1, #0x200
	str r1, [r2]
	ldrh r1, [r0, #8]
	bic r1, r1, #3
	strh r1, [r0, #8]
	ldrh r1, [r0, #0xa]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xc]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #0xe]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r0, #0xe]
	bl GX_DispOn
	ldr r1, _02122E64 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02122E5C: .word 0x04000304
_02122E60: .word 0xFFFFFDF1
_02122E64: .word 0x04001000
	arm_func_end ov3_02122D44

	arm_func_start ov3_02122E68
ov3_02122E68: ; 0x02122E68
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x158
	ldr r6, _02123010 ; =DAT_overlay_3_0212a53c
	add r5, sp, #0x14
	mov r8, r0
	mov r4, #0x14
	arm_func_end ov3_02122E68
_02122E80:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02122E80
	ldr r0, [r6]
	str r0, [r5]
	ldr r0, [r8, #0x80]
	add r0, r0, #0x1000
	ldr r6, [r0, #0x494]
	mov r0, r6
	bl sub_0200C3D0
	mov r1, #0
	mov r0, r6
	mov r3, r1
	mov r2, #0xc
	bl sub_0200C408
	mov r0, r6
	mov r1, #9
	bl sub_0200C680
	add r7, sp, #0x14
	mov r4, #0x40
	mov r5, #0
_02122ED8:
	ldr r1, [r7, #8]
	mov r0, r6
	str r1, [sp]
	ldr r2, [r7, #0xc]
	mov r1, r5
	stmib sp, {r2, r4}
	ldr r2, [r7, #0x1c]
	str r2, [sp, #0xc]
	ldr r2, [r7, #0x20]
	str r2, [sp, #0x10]
	ldmia r7, {r2, r3}
	bl sub_0200C6C8
	add r5, r5, #1
	ldr r1, [r7]
	ldr r0, [r7, #4]
	cmp r5, #9
	mla r4, r1, r0, r4
	add r7, r7, #0x24
	blt _02122ED8
	ldr r0, [sp, #0x98]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r8, #0x1dc]
	mov r0, r6
	ldr r3, [r1, #8]
	mov r1, #3
	ldr r3, [r3, #0xc]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x90]
	ldr r3, [sp, #0x94]
	bl sub_0200C7A4
	ldr r0, [sp, #0xbc]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r8, #0x1dc]
	mov r0, r6
	ldr r3, [r1, #8]
	mov r1, #4
	ldr r3, [r3, #0x14]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xb4]
	ldr r3, [sp, #0xb8]
	bl sub_0200C7A4
	ldr r0, [sp, #0xe0]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r8, #0x1dc]
	mov r0, r6
	ldr r3, [r1, #8]
	mov r1, #5
	ldr r3, [r3, #0x24]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xd8]
	ldr r3, [sp, #0xdc]
	bl sub_0200C7A4
	mov r0, r6
	ldr r1, [sp, #0x128]
	mov r3, #1
	str r1, [sp]
	ldr r1, [r8, #0x1dc]
	mov r2, #0
	ldr r4, [r1, #8]
	mov r1, #7
	ldr r4, [r4, #0x2c]
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_0200C7A4
	add sp, sp, #0x158
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02123010: .word DAT_overlay_3_0212a53c

	arm_func_start ov3_02123014
ov3_02123014: ; 0x02123014
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r4, r0
	ldr r0, [r4, #0x80]
	mov r5, #0
	add r0, r0, #0x1000
	ldr r6, [r0, #0x494]
	arm_func_end ov3_02123014
_02123030:
	mov r0, r6
	mov r1, r5
	bl sub_0200C980
	add r5, r5, #1
	cmp r5, #9
	blt _02123030
	mov r1, #0x4000000
	ldr r0, [r1]
	mov r3, #0x10
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1900
	str r0, [r1]
	ldr lr, [r4, #0x80]
	mov r2, #0x4000
	add r0, lr, #0x1000
	ldr ip, [r0, #0x4b0]
	add r1, lr, #0x24
	str ip, [sp]
	str r1, [sp, #4]
	ldr ip, [r0, #0x48c]
	mov r1, #0
	str ip, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x4ac]
	ldr r0, [r0, #0x490]
	ldr r1, [lr, #0x14]
	ldr r2, [lr, #0x18]
	add r3, r3, #0xc
	bl _ZN17UnkClass_020091E812sub_02009328EmmmPvmS0_mmm
	ldr r0, [r4, #0x80]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	ldr r0, [r4, #0x80]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x80]
	mov r2, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r1, #5
	mov r3, r2
	bl sub_0200AD34
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov3_02123100
ov3_02123100: ; 0x02123100
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	mov lr, #0
	str lr, [r4, #0xc]
	str lr, [r4, #0x10]
	ldr ip, [r4, #0x80]
	mov r2, #0x10
	add r0, ip, #0x1000
	ldr r3, [r0, #0x4b0]
	add r1, ip, #0x24
	str r3, [sp]
	str r1, [sp, #4]
	ldr r3, [r0, #0x48c]
	mov r1, #0x4000
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str lr, [sp, #0x14]
	ldr r3, [r0, #0x4ac]
	ldr r0, [r0, #0x490]
	ldr r1, [ip, #0x14]
	ldr r2, [ip, #0x18]
	add r3, r3, #0xc
	bl _ZN17UnkClass_020091E812sub_02009328EmmmPvmS0_mmm
	mov r0, r4
	bl ov3_021231F4
	mov r0, r4
	bl ov3_0212351C
	mov r0, r4
	bl ov3_02122E68
	mov r0, r4
	mov r1, #0
	bl ov3_0212362C
	mov r0, r4
	bl ov3_021239A8
	mov r3, #0
	ldr r1, [r4, #0x98]
	ldr r0, _021231F0 ; =MAIN_BSS_0208F304
	str r3, [r1, #0x14]
	ldr r2, [r4, #0xa0]
	mov r1, #1
	str r3, [r2, #0x14]
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _021231F0 ; =MAIN_BSS_0208F304
	mov r1, #1
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	mov r0, r4
	ldrb r1, [r4, #5]
	bl ov3_02121E44
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_021231F0: .word MAIN_BSS_0208F304
	arm_func_end ov3_02123100

	arm_func_start ov3_021231F4
ov3_021231F4: ; 0x021231F4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _02123234
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _021234F0 ; =s_BGU_overlay_3_0212aaf8
	ldr r2, _021234F4 ; =s_data_menu_mnd000_bg_LZ_bin_overlay_3_0212aafc
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r4, r0
	arm_func_end ov3_021231F4
_02123234:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _0212325C
	ldr r1, _021234F8 ; =s_BGU_mnd000_NCGR_overlay_3_0212ab18
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
	mov r5, r0
_0212325C:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _02123284
	ldr r1, _021234FC ; =s_BGU_mnd000_NCLR_overlay_3_0212ab28
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov r6, r0
_02123284:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _021232AC
	ldr r1, _02123500 ; =s_BGU_mnd000_00_NSCR_overlay_3_0212ab38
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r7, r0
_021232AC:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r7, #0xb8]
	ldr r2, [r5, #0xb8]
	ldr r3, [r6, #0xb8]
	mov r0, #5
	bl NNS_G2dBGSetupEx
	cmp r7, #0
	beq _021232F0
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_021232F0:
	cmp r5, #0
	beq _02123308
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02123308:
	cmp r6, #0
	beq _02123320
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02123320:
	cmp r4, #0
	beq _02123338
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
_02123338:
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _02123370
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _02123504 ; =s_BGD_overlay_3_0212ab4c
	ldr r2, _02123508 ; =s_data_menu_mni000_bg_LZ_bin_overlay_3_0212ab50
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r4, r0
_02123370:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _02123398
	ldr r1, _0212350C ; =s_BGD_mni000_NCGR_overlay_3_0212ab6c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
	mov r5, r0
_02123398:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _021233C0
	ldr r1, _02123510 ; =s_BGD_mni000_NCLR_overlay_3_0212ab7c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov r6, r0
_021233C0:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _021233E8
	ldr r1, _02123514 ; =s_BGD_mni000_01_NSCR_overlay_3_0212ab8c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r7, r0
_021233E8:
	mov r0, #0xbc
	bl _Znwm
	movs r8, r0
	beq _02123410
	ldr r1, _02123518 ; =s_BGD_mni000_02_NSCR_overlay_3_0212aba0
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r8, r0
_02123410:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [r7, #0xb8]
	ldr r2, [r5, #0xb8]
	ldr r3, [r6, #0xb8]
	mov r0, #2
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [r8, #0xb8]
	mov r3, r2
	mov r0, #3
	bl NNS_G2dBGSetupEx
	cmp r7, #0
	beq _02123484
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02123484:
	cmp r8, #0
	beq _0212349C
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0212349C:
	cmp r5, #0
	beq _021234B4
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_021234B4:
	cmp r6, #0
	beq _021234CC
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_021234CC:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021234F0: .word s_BGU_overlay_3_0212aaf8
_021234F4: .word s_data_menu_mnd000_bg_LZ_bin_overlay_3_0212aafc
_021234F8: .word s_BGU_mnd000_NCGR_overlay_3_0212ab18
_021234FC: .word s_BGU_mnd000_NCLR_overlay_3_0212ab28
_02123500: .word s_BGU_mnd000_00_NSCR_overlay_3_0212ab38
_02123504: .word s_BGD_overlay_3_0212ab4c
_02123508: .word s_data_menu_mni000_bg_LZ_bin_overlay_3_0212ab50
_0212350C: .word s_BGD_mni000_NCGR_overlay_3_0212ab6c
_02123510: .word s_BGD_mni000_NCLR_overlay_3_0212ab7c
_02123514: .word s_BGD_mni000_01_NSCR_overlay_3_0212ab8c
_02123518: .word s_BGD_mni000_02_NSCR_overlay_3_0212aba0

	arm_func_start ov3_0212351C
ov3_0212351C: ; 0x0212351C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02123544
	ldr r1, _02123628 ; =s_data_message_etc_name_entry_overlay_3_0212abb4
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
	arm_func_end ov3_0212351C
_02123544:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #0x1dc]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #0x1dc]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #0x1dc]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #0x1dc]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0x1dc]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0212360C
_0212359C:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #0x1dc]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #0x1dc]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0x1dc]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #0x1dc]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0212359C
_0212360C:
	cmp r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02123628: .word s_data_message_etc_name_entry_overlay_3_0212abb4

	arm_func_start ov3_0212362C
ov3_0212362C: ; 0x0212362C
	stmdb sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	bne _02123640
	bl ov3_02123654
	arm_func_end ov3_0212362C
_02123640:
	cmp r4, #1
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov3_02123878
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov3_02123654
ov3_02123654: ; 0x02123654
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x64
	ldr r1, _02123868 ; =MAIN_BSS_020B26A0
	mov r5, r0
	ldrb r2, [r1]
	ldr r1, _0212386C ; =s_tp_03d_overlay_3_0212abd4
	add r0, sp, #4
	mov r4, #0
	bl OS_SPrintf
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _021236A8
	ldr r3, [r5, #0x80]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x64
	mov r3, r4
	bl sub_0200ECD0
	arm_func_end ov3_02123654
_021236A8:
	str r0, [r5, #0xbc]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r5, #0xbc]
	ldr r1, _02123870 ; =s_data_menu_overlay_3_0212abdc
	add r2, sp, #4
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	add r4, r4, r0
	ldr r0, [r5, #0xbc]
	mov r2, #0x4a
	mov r3, #0x20
	bl sub_0200F4FC
	str r0, [r5, #0x8c]
	ldr r1, [r5, #0xbc]
	mov r0, #0x44
	ldr r1, [r1, #0x24]
	str r1, [r5, #0x18]
	bl _Znwm
	cmp r0, #0
	beq _02123724
	ldr r3, [r5, #0x80]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0xa4
	mov r3, #0
	bl sub_0200ECD0
_02123724:
	str r0, [r5, #0xc0]
	mov r0, #5
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r5, #0xc0]
	ldr r1, _02123870 ; =s_data_menu_overlay_3_0212abdc
	ldr r2, _02123874 ; =s_mni000_00_overlay_3_0212abe8
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	ldr r0, [r5, #0xc0]
	mov r2, #0x5e
	mov r3, #0x20
	bl sub_0200F4FC
	str r0, [r5, #0x90]
	mov r1, #1
	str r1, [sp]
	ldr r0, [r5, #0xc0]
	mov r2, #0x80
	mov r3, #0xb0
	bl sub_0200F4FC
	str r0, [r5, #0x94]
	ldr r1, [r5, #0xc0]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #3
	str r2, [r5, #0x1c]
	str r0, [sp]
	ldr r0, [r5, #0xc0]
	mov r2, #0
	mov r3, r2
	bl sub_0200F4FC
	str r0, [r5, #0x98]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0xc0]
	mov r1, #5
	mov r2, #0
	mov r3, r2
	bl sub_0200F4FC
	str r0, [r5, #0xa0]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0xc0]
	mov r1, #6
	mov r2, #0x48
	mov r3, #0x90
	bl sub_0200F4FC
	str r0, [r5, #0xa4]
	ldr r1, [r5, #0xc0]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #7
	str r2, [r5, #0x20]
	str r0, [sp]
	ldr r0, [r5, #0xc0]
	mov r2, #0x80
	mov r3, #0x90
	bl sub_0200F4FC
	str r0, [r5, #0xa8]
	ldr r1, [r5, #0xc0]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #7
	str r2, [r5, #0x24]
	str r0, [sp]
	ldr r0, [r5, #0xc0]
	mov r2, #0xb8
	mov r3, #0x90
	bl sub_0200F4FC
	str r0, [r5, #0xb0]
	ldr r0, [r5, #0xc0]
	mov r1, #0
	ldr r0, [r0, #0x24]
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x90]
	str r1, [r0, #0x14]
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02123868: .word MAIN_BSS_020B26A0
_0212386C: .word s_tp_03d_overlay_3_0212abd4
_02123870: .word s_data_menu_overlay_3_0212abdc
_02123874: .word s_mni000_00_overlay_3_0212abe8

	arm_func_start ov3_02123878
ov3_02123878: ; 0x02123878
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x64
	mov r5, r0
	mov r0, #0x44
	mov r4, #0
	bl _Znwm
	cmp r0, #0
	beq _021238B8
	ldr r3, [r5, #0x80]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x124
	mov r3, r4
	bl sub_0200ECD0
	arm_func_end ov3_02123878
_021238B8:
	str r0, [r5, #0xc4]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r5, #0xc4]
	ldr r1, _02123998 ; =s_data_menu_overlay_3_0212abdc
	ldr r2, _0212399C ; =s_mps000_00_overlay_3_0212abf4
	mov r3, #0
	bl sub_0200EE14
	mov r1, #1
	str r1, [sp]
	add r4, r4, r0
	ldr r0, [r5, #0xc4]
	mov r1, #0
	mov r2, #0x80
	mov r3, #0x48
	bl sub_0200F4FC
	str r0, [r5, #0xb4]
	ldr r1, _021239A0 ; =MAIN_BSS_020B26A0
	add r0, sp, #4
	ldrb r2, [r1]
	ldr r1, _021239A4 ; =s_mp_03d_00_overlay_3_0212ac00
	add r2, r2, #3
	and r2, r2, #0xff
	bl OS_SPrintf
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02123948
	ldr r3, [r5, #0x80]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x224
	mov r3, #0
	bl sub_0200ECD0
_02123948:
	str r0, [r5, #0xc8]
	mov r0, #6
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r5, #0xc8]
	ldr r1, _02123998 ; =s_data_menu_overlay_3_0212abdc
	add r2, sp, #4
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0xc8]
	mov r1, #1
	mov r2, #0x80
	mov r3, #0x48
	bl sub_0200F4FC
	str r0, [r5, #0xb8]
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02123998: .word s_data_menu_overlay_3_0212abdc
_0212399C: .word s_mps000_00_overlay_3_0212abf4
_021239A0: .word MAIN_BSS_020B26A0
_021239A4: .word s_mp_03d_00_overlay_3_0212ac00

	arm_func_start ov3_021239A8
ov3_021239A8: ; 0x021239A8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r1, #0
	mov sl, r0
	mov r0, r1
	sub r0, r0, #0x68
	str r0, [sp]
	mvn r0, #0x1f
	str r1, [sp, #4]
	mov r7, r1
	mov r4, #0x10000
	mov fp, #0x40
	str r0, [sp, #8]
	arm_func_end ov3_021239A8
_021239DC:
	ldr r0, [sp]
	ldr r8, [sp, #8]
	mov r5, #0
	mov sb, r0, lsl #0xc
_021239EC:
	mov r0, fp
	add r6, r5, r7
	bl _Znwm
	cmp r0, #0
	beq _02123A04
	bl sub_02003B64
_02123A04:
	add r2, sl, r6, lsl #2
	str r0, [r2, #0xcc]
	mov r1, r8, lsl #0xc
	str sb, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r0, [r2, #0xcc]
	add r5, r5, #1
	str r4, [r0, #0x20]
	str r4, [r0, #0x24]
	cmp r5, #5
	add r8, r8, #0x10
	blt _021239EC
	ldr r0, [sp, #4]
	add r7, r7, #5
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xc
	ldr r0, [sp]
	add r0, r0, #0x10
	str r0, [sp]
	blt _021239DC
	mov r0, #0x40
	bl _Znwm
	cmp r0, #0
	beq _02123A6C
	bl sub_02003B64
_02123A6C:
	mov r1, #0x60000
	str r0, [sl, #0x1bc]
	str r1, [r0, #0x18]
	sub r1, r1, #0x80000
	str r1, [r0, #0x1c]
	ldr r2, [sl, #0x1bc]
	mov r0, #0x20000
	str r0, [r2, #0x20]
	mov r1, #0x10000
	mov r0, #0x40
	str r1, [r2, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _02123AA8
	bl sub_02003B64
_02123AA8:
	mov r1, #0x60000
	str r0, [sl, #0x1c0]
	str r1, [r0, #0x18]
	sub r1, r1, #0x70000
	str r1, [r0, #0x1c]
	ldr r2, [sl, #0x1c0]
	mov r0, #0x20000
	str r0, [r2, #0x20]
	mov r1, #0x10000
	mov r0, #0x40
	str r1, [r2, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _02123AE4
	bl sub_02003B64
_02123AE4:
	str r0, [sl, #0x1c4]
	mov r1, #0x60000
	str r1, [r0, #0x18]
	mov r1, #0x10000
	str r1, [r0, #0x1c]
	ldr r2, [sl, #0x1c4]
	mov r0, #0x20000
	str r0, [r2, #0x20]
	mov r1, #0x30000
	mov r0, #0x40
	str r1, [r2, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _02123B20
	bl sub_02003B64
_02123B20:
	mov r1, #0x38000
	str r0, [sl, #0x1c8]
	rsb r1, r1, #0
	str r1, [r0, #0x18]
	mov r1, #0x30000
	str r1, [r0, #0x1c]
	ldr r2, [sl, #0x1c8]
	mov r0, #0x40000
	str r0, [r2, #0x20]
	mov r1, #0x10000
	mov r0, #0x40
	str r1, [r2, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _02123B60
	bl sub_02003B64
_02123B60:
	str r0, [sl, #0x1cc]
	mov r1, #0
	str r1, [r0, #0x18]
	mov r1, #0x30000
	str r1, [r0, #0x1c]
	ldr r2, [sl, #0x1cc]
	mov r0, #0x40000
	str r0, [r2, #0x20]
	mov r1, #0x10000
	mov r0, #0x40
	str r1, [r2, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _02123B9C
	bl sub_02003B64
_02123B9C:
	str r0, [sl, #0x1d0]
	mov r1, #0x38000
	str r1, [r0, #0x18]
	mov r1, #0x30000
	str r1, [r0, #0x1c]
	ldr r2, [sl, #0x1d0]
	mov r0, #0x40000
	str r0, [r2, #0x20]
	mov r1, #0x10000
	mov r0, #0x40
	str r1, [r2, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _02123BD8
	bl sub_02003B64
_02123BD8:
	str r0, [sl, #0x1d4]
	mov r1, #0x38000
	str r1, [r0, #0x18]
	mov r1, #0x30000
	str r1, [r0, #0x1c]
	ldr r2, [sl, #0x1d4]
	mov r0, #0x40000
	str r0, [r2, #0x20]
	mov r1, #0x10000
	mov r0, #0x40
	str r1, [r2, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _02123C14
	bl sub_02003B64
_02123C14:
	str r0, [sl, #0x1d8]
	mov r1, #0
	str r1, [r0, #0x18]
	mov r1, #0x50000
	str r1, [r0, #0x1c]
	ldr r1, [sl, #0x1d8]
	mov r0, #0x60000
	str r0, [r1, #0x20]
	mov r0, #0x20000
	str r0, [r1, #0x24]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov3_02123C44
ov3_02123C44: ; 0x02123C44
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x80]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	ldr r0, [r5, #0x80]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020092D4Ev
	mov r6, #0
	mov r4, r6
	arm_func_end ov3_02123C44
_02123C7C:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0xcc]
	cmp r0, #0
	beq _02123CA4
	beq _02123C9C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02123C9C:
	add r0, r5, r6, lsl #2
	str r4, [r0, #0xcc]
_02123CA4:
	add r6, r6, #1
	cmp r6, #0x44
	blt _02123C7C
	ldr r1, [r5, #0x1dc]
	cmp r1, #0
	beq _02123D40
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _02123D0C
	mov r6, r4
_02123CD0:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02123CF8
	bl _ZdaPv
	ldr r0, [r5, #0x1dc]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_02123CF8:
	ldr r1, [r5, #0x1dc]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _02123CD0
_02123D0C:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02123D28
	bl _ZdaPv
	ldr r0, [r5, #0x1dc]
	mov r1, #0
	str r1, [r0, #8]
_02123D28:
	ldr r0, [r5, #0x1dc]
	cmp r0, #0
	beq _02123D40
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x1dc]
_02123D40:
	mov r6, #0
	mov r4, r6
_02123D48:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0xcc]
	cmp r0, #0
	beq _02123D70
	beq _02123D68
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02123D68:
	add r0, r5, r6, lsl #2
	str r4, [r0, #0xcc]
_02123D70:
	add r6, r6, #1
	cmp r6, #0x44
	blt _02123D48
	mov r6, #0
	mov r4, r6
_02123D84:
	add r0, r5, r6, lsl #2
	ldr r7, [r0, #0xbc]
	cmp r7, #0
	beq _02123DB0
	beq _02123DA8
	mov r0, r7
	bl sub_0200ED2C
	mov r0, r7
	bl _ZdlPv
_02123DA8:
	add r0, r5, r6, lsl #2
	str r4, [r0, #0xbc]
_02123DB0:
	add r6, r6, #1
	cmp r6, #4
	blt _02123D84
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov3_02123DC0
ov3_02123DC0: ; 0x02123DC0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r7, r0
	mov r4, r5
	arm_func_end ov3_02123DC0
_02123DD0:
	add r0, r7, r5, lsl #2
	ldr r6, [r0, #0xbc]
	cmp r6, #0
	beq _02123DFC
	beq _02123DF4
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_02123DF4:
	add r0, r7, r5, lsl #2
	str r4, [r0, #0xbc]
_02123DFC:
	add r5, r5, #1
	cmp r5, #4
	blt _02123DD0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov3_02123E0C
ov3_02123E0C: ; 0x02123E0C
	stmdb sp!, {r4, r5, r6, lr}
	mov ip, #0
	mov lr, ip
	mov r3, #4
	mov r2, ip
	b _02123E64
	arm_func_end ov3_02123E0C
_02123E24:
	mov r4, r3
	mov r5, r2
_02123E2C:
	rsb r1, r5, #3
	mov r1, r1, lsl #3
	mov r1, r6, asr r1
	tst r1, #0xff
	bne _02123E50
	add r5, r5, #1
	cmp r5, #4
	sub r4, r4, #1
	blt _02123E2C
_02123E50:
	mov r1, r4, lsl #0x10
	add r1, ip, r1, lsr #16
	mov r1, r1, lsl #0x10
	mov ip, r1, lsr #0x10
	add lr, lr, #1
_02123E64:
	cmp lr, #7
	bge _02123E7C
	add r1, r0, lr, lsl #2
	ldr r6, [r1, #0x4c]
	cmp r6, #0
	bne _02123E24
_02123E7C:
	mov r0, ip
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov3_02123E84
ov3_02123E84: ; 0x02123E84
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r7, r0
	mov r6, r1
	mov r4, r3
	mov r5, r2
	ldr r1, [sp, #0x34]
	mov r0, #4
	mov r3, #0
	b _02123EB4
	arm_func_end ov3_02123E84
_02123EAC:
	sub r0, r0, #1
	add r3, r3, #1
_02123EB4:
	cmp r3, #4
	bge _02123ED0
	rsb r2, r3, #3
	mov r2, r2, lsl #3
	mov r2, r1, asr r2
	tst r2, #0xff
	beq _02123EAC
_02123ED0:
	cmp r0, #0
	mov r3, #0
	ble _02123F00
	add ip, sp, #0x10
_02123EE0:
	sub r2, r0, r3
	sub r2, r2, #1
	mov r2, r2, lsl #3
	mov r2, r1, asr r2
	add r3, r3, #1
	cmp r3, r0
	strb r2, [ip], #1
	blt _02123EE0
_02123F00:
	cmp r0, #7
	bge _02123F24
	add r1, sp, #0x10
	add r2, r1, r0
	mov r1, #0
_02123F14:
	add r0, r0, #1
	cmp r0, #7
	strb r1, [r2], #1
	blt _02123F14
_02123F24:
	ldr r0, [r7, #0x80]
	add r2, sp, #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4ac]
	mov r1, #0
	add r0, r0, #0xc
	bl NNSi_G2dFontGetTextWidth
	ldr r2, [sp, #0x30]
	add r1, sp, #0x10
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r7, #0x80]
	and r2, r0, #1
	add r1, r1, #0x1000
	add r2, r2, r0, asr #1
	add r5, r5, #5
	ldr r0, [r1, #0x494]
	mov r1, r6
	mov r3, r4
	sub r2, r5, r2
	bl sub_0200C7A4
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov3_02123F8C
ov3_02123F8C: ; 0x02123F8C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x80]
	mov r1, #8
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C980
	mov r8, #0
	mov sb, #2
	mov r7, #1
	mov r6, #8
	mov r5, #4
	b _02123FE4
	arm_func_end ov3_02123F8C
_02123FC4:
	mov r0, r4
	mov r1, r6
	mov r2, sb
	mov r3, r5
	stmia sp, {r7, ip}
	bl ov3_02123E84
	add sb, sb, #0xb
	add r8, r8, #1
_02123FE4:
	cmp r8, #7
	addge sp, sp, #8
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r4, r8, lsl #2
	ldr ip, [r0, #0x4c]
	cmp ip, #0
	bne _02123FC4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

    arm_func_start ov3_02124008
ov3_02124008: ; 0x02124008
    mov r0, #0x14
    bx lr
    arm_func_end ov3_02124008

	arm_func_start ov3_02124010
ov3_02124010: ; 0x02124010
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	ldr r1, _02124048 ; =DAT_0208d694
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r2, [r0, #0x24]
	str r2, [r0, #0x28]
	bx lr
	.align 2, 0
_02124048: .word DAT_0208d694
	arm_func_end ov3_02124010

	arm_func_start _ZN17COpeningDemoSceneC1Ev
_ZN17COpeningDemoSceneC1Ev: ; 0x0212404C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl _ZN6CSceneC2Ev
	ldr r1, _021240C8 ; =ptr_FUN_overlay_3_021240e8_overlay_3_0212ac34
	mov r0, #0
	str r1, [r4]
	str r0, [r4, #4]
	sub r1, r0, #1
	str r1, [r4, #8]
	add r0, r4, #0x10
	str r1, [r4, #0xc]
	bl ov3_02126ECC
	add r0, r4, #0x18
	add r0, r0, #0x800
	bl ov3_021251DC
	add r0, r4, #0x22c
	add r0, r0, #0xc00
	ldr r2, _021240CC ; =ov3_021240D4
	mov r1, #0xf
	str r2, [sp]
	mov r2, #0x2c
	ldr r3, _021240D0 ; =ov3_02124010
	bl __cxa_vec_ctor
	mov r2, #0
	add r1, r4, #0x1000
	mov r0, r4
	str r2, [r1, #0x4cc]
	strb r2, [r1, #0x4d0]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_021240C8: .word ptr_FUN_overlay_3_021240e8_overlay_3_0212ac34
_021240CC: .word ov3_021240D4
_021240D0: .word ov3_02124010
	arm_func_end _ZN17COpeningDemoSceneC1Ev

	arm_func_start ov3_021240D4
ov3_021240D4: ; 0x021240D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02036488
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_021240D4

	arm_func_start ov3_021240E8
ov3_021240E8: ; 0x021240E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x22c
	ldr r3, _0212412C ; =ov3_021240D4
	add r0, r0, #0xc00
	mov r1, #0xf
	mov r2, #0x2c
	bl __cxa_vec_cleanup
	add r0, r4, #0x18
	add r0, r0, #0x800
	bl ov3_021255B8
	add r0, r4, #0x10
	bl ov3_02127350
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212412C: .word ov3_021240D4
	arm_func_end ov3_021240E8

	arm_func_start ov3_02124130
ov3_02124130: ; 0x02124130
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x22c
	ldr r3, _0212417C ; =ov3_021240D4
	add r0, r0, #0xc00
	mov r1, #0xf
	mov r2, #0x2c
	bl __cxa_vec_cleanup
	add r0, r4, #0x18
	add r0, r0, #0x800
	bl ov3_021255B8
	add r0, r4, #0x10
	bl ov3_02127350
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212417C: .word ov3_021240D4
	arm_func_end ov3_02124130

	arm_func_start ov3_02124180
ov3_02124180: ; 0x02124180
	stmdb sp!, {r4, lr}
	ldr r1, _02124210 ; =OVERLAY3_BSS_0212B500
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	add r0, r4, #0x1000
	ldr r1, [r0, #0xc0]
	mov r0, #0
	beq _021241B0
	str r0, [r1, #0x1c]
	sub r0, r0, #0x60000
	b _021241B8
	arm_func_end ov3_02124180
_021241B0:
	str r0, [r1, #0x1c]
	mov r0, #0x60000
_021241B8:
	str r0, [r1, #0x20]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02124208
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	mvn r1, #0
	cmp r0, r1
	bne _021241FC
	ldr r0, _02124214 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	ldr r0, [r0, #8]
	cmp r0, #1
	movne r0, #0xe
	moveq r0, #1
	ldmia sp!, {r4, pc}
_021241FC:
	ldr r1, [r4, #8]
	cmp r0, r1
	strne r0, [r4, #0xc]
_02124208:
	mvn r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02124210: .word OVERLAY3_BSS_0212B500
_02124214: .word MAIN_BSS_0208F304

	arm_func_start ov3_02124218
ov3_02124218: ; 0x02124218
	stmdb sp!, {r4, lr}
	ldr r1, _021242D8 ; =0x04000454
	mov r4, r0
	mov r0, #0
	str r0, [r1]
	add r0, r4, #0x1000
	ldr r0, [r0, #0xc0]
	bl sub_020037B4
	add r0, r4, #0x1000
	ldr r0, [r0, #0xc0]
	bl sub_0200381C
	ldr r0, _021242DC ; =0x0400044C
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #-8]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0212427C
	ldr r3, [r0]
	ldr r2, _021242E0 ; =OVERLAY3_BSS_0212B500
	add r1, r4, #0x1000
	ldr r1, [r1, #0xc0]
	ldr r2, [r2]
	ldr r3, [r3, #0x1c]
	blx r3
	arm_func_end ov3_02124218
_0212427C:
	ldr r1, _021242E4 ; =0x04000448
	mov r2, #1
	str r2, [r1]
	ldr r0, _021242E8 ; =MAIN_BSS_0208F304
	ldr r1, _021242EC ; =ov3_02125140
	ldr r0, [r0]
	mov r2, #0
	bl sub_020100E4
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldmltia sp!, {r4, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021242C0
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
_021242C0:
	ldr r1, [r4, #0xc]
	mov r0, r4
	bl ov3_02124CAC
	mvn r0, #0
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021242D8: .word 0x04000454
_021242DC: .word 0x0400044C
_021242E0: .word OVERLAY3_BSS_0212B500
_021242E4: .word 0x04000448
_021242E8: .word MAIN_BSS_0208F304
_021242EC: .word ov3_02125140

	arm_func_start ov3_021242F0
ov3_021242F0: ; 0x021242F0
	bx lr
	arm_func_end ov3_021242F0

	arm_func_start ov3_021242F4
ov3_021242F4: ; 0x021242F4
	bx lr
	arm_func_end ov3_021242F4

	arm_func_start ov3_021242F8
ov3_021242F8: ; 0x021242F8
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _021244BC ; =MAIN_BSS_0208F304
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r3, #0x4000000
	ldr r1, [r3]
	add r0, r4, #0x1000
	and r1, r1, #0xe000
	mov r1, r1, lsr #0xd
	str r1, [r0, #0x4c4]
	ldrb r1, [r3, #0x48]
	strb r1, [sp, #5]
	ldrb r2, [sp, #5]
	strb r2, [r0, #0x4c8]
	ldrb r1, [r3, #0x4a]
	strb r2, [sp, #7]
	strb r1, [sp, #4]
	ldrb r1, [sp, #4]
	strb r1, [sp, #6]
	strb r1, [r0, #0x4c9]
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
	ldr r0, _021244C0 ; =0x000001FF
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
	ldr r1, _021244C4 ; =0x07000400
	mov r0, #0xc0
	mov r2, #0x400
	bl MIi_CpuClearFast
	ldr r1, _021244C8 ; =0x05000400
	mov r0, #0
	mov r2, #0x400
	bl MIi_CpuClearFast
	ldr r1, _021244CC ; =0x04000540
	mov r0, #3
	str r0, [r1]
	bl GX_SetBankForTex
	mov r0, #0x70
	bl GX_SetBankForTexPltt
	ldr r2, _021244D0 ; =0x04000060
	ldr r0, _021244D4 ; =0x0000CFEF
	ldrh r1, [r2]
	bic r1, r1, #0x3000
	orr r1, r1, #8
	strh r1, [r2]
	ldrh r1, [r2]
	and r0, r1, r0
	strh r0, [r2]
	bl GX_DispOn
	ldr r2, _021244D8 ; =0x04001000
	mov r0, r4
	ldr r1, [r2]
	orr r1, r1, #0x10000
	str r1, [r2]
	bl ov3_02124F18
	mov r1, #0
	ldr r0, _021244DC ; =OVERLAY3_BSS_0212B500
	mov r2, #0xff
	str r1, [r0]
	ldr ip, _021244E0 ; =0x04000040
	ldr r0, _021244E4 ; =0x00003264
	strh r2, [ip]
	strh r0, [ip, #4]
	ldrh r3, [ip, #8]
	add r0, ip, #0x10
	mov r2, r1
	bic r3, r3, #0x3f
	orr r3, r3, #1
	strh r3, [ip, #8]
	ldrh r4, [ip, #0xa]
	mov r3, r1
	bic r4, r4, #0x3f
	strh r4, [ip, #0xa]
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	mov r1, #0
	str r1, [sp]
	ldr r0, _021244E8 ; =0x04001050
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr r1, _021244EC ; =0xBFFF0000
	ldr r0, _021244F0 ; =0x04000580
	str r1, [r0]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021244BC: .word MAIN_BSS_0208F304
_021244C0: .word 0x000001FF
_021244C4: .word 0x07000400
_021244C8: .word 0x05000400
_021244CC: .word 0x04000540
_021244D0: .word 0x04000060
_021244D4: .word 0x0000CFEF
_021244D8: .word 0x04001000
_021244DC: .word OVERLAY3_BSS_0212B500
_021244E0: .word 0x04000040
_021244E4: .word 0x00003264
_021244E8: .word 0x04001050
_021244EC: .word 0xBFFF0000
_021244F0: .word 0x04000580
	arm_func_end ov3_021242F8

	arm_func_start ov3_021244F4
ov3_021244F4: ; 0x021244F4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x19c
	ldr r1, _02124C34 ; =MAIN_BSS_0208F304
	mov sl, r0
	ldr r0, [r1]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034DC8
	ldr r0, _02124C34 ; =MAIN_BSS_0208F304
	mov r1, #0x3c
	ldr r0, [r0]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	beq _02124544
	bl sub_02003718
	arm_func_end ov3_021244F4
_02124544:
	add r2, sl, #0x1000
	mov r1, #0x100000
	str r0, [r2, #0xc0]
	str r1, [sp]
	sub r0, r1, #0x900000
	str r0, [sp, #4]
	mov r0, #0x800000
	str r0, [sp, #8]
	mov r0, #0x10000
	mov r1, #0
	str r0, [sp, #0xc]
	ldr r0, [r2, #0xc0]
	mov r3, r1
	mov r2, #0xc0000
	bl sub_02003788
	add r0, sl, #0x1000
	ldr r1, [r0, #0xc0]
	mov r2, #0
	str r2, [r1, #0x1c]
	str r2, [r1, #0x20]
	ldr r0, _02124C34 ; =MAIN_BSS_0208F304
	mov r1, #0x40000
	ldr r0, [r0]
	mov r3, #0x18000
	bl sub_020101F4
	mov r3, #1
	str r3, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, _02124C38 ; =s_OPD_overlay_3_0212ad14
	ldr r2, _02124C3C ; =s_data_opening_opdm_LZ_bin_overlay_3_0212ad18
	add r0, sp, #0x130
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	add r0, sl, #0x22c
	ldr r7, _02124C40 ; =DAT_overlay_3_0212ac60
	ldr fp, _02124C44 ; =s_OPD_opdm_02d_ntft_overlay_3_0212ad34
	mov sb, sl
	add r8, r0, #0xc00
	mov r6, #0
	add r5, sp, #0xd0
	add r4, sp, #0x70
_021245F0:
	ldr r0, [r7]
	cmp r0, #0
	beq _02124644
	mov r0, r5
	mov r1, fp
	mov r2, r6
	bl OS_SPrintf
	ldr r1, _02124C48 ; =s_OPD_opdm_02d_ntfp_overlay_3_0212ad48
	mov r0, r4
	mov r2, r6
	bl OS_SPrintf
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl sub_02036184
	ldmib r7, {r0, r1}
	str r0, [sb, #0xe4c]
	str r1, [sb, #0xe50]
	ldr r0, [r7]
	str r0, [sb, #0xe48]
_02124644:
	add r6, r6, #1
	cmp r6, #0xf
	add r7, r7, #0xc
	add r8, r8, #0x2c
	add sb, sb, #0x2c
	blt _021245F0
	add r0, sp, #0x130
	bl _ZN19CSmartNNSFndArchiveD1Ev
	ldr r0, _02124C34 ; =MAIN_BSS_0208F304
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B58
	ldr r0, _02124C34 ; =MAIN_BSS_0208F304
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C2C
	ldr r0, _02124C34 ; =MAIN_BSS_0208F304
	ldr r1, [r0]
	ldr r0, [r1, #8]
	cmp r0, #1
	add r0, r1, #0x1000
	ldr r0, [r0, #0x48c]
	beq _021246BC
	mov r1, #1
	bl sub_0203499C
	b _021246C4
_021246BC:
	mov r1, #2
	bl sub_0203499C
_021246C4:
	ldr r0, _02124C34 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020345D4
	ldr r0, _02124C34 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020347C4
	ldr r0, _02124C34 ; =MAIN_BSS_0208F304
	mov r1, #0xa5
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020349E8
	ldr r0, _02124C34 ; =MAIN_BSS_0208F304
	mov r1, #0xa6
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020349E8
	ldr r0, _02124C34 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	ldr r0, [r0, #8]
	cmp r0, #1
	beq _02124BE0
	add r0, sl, #0x10
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r0, sl, #0x18
	add r0, r0, #0x800
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r1, #0
	mov r0, sl
	strb r1, [sl, #0xe2b]
	bl ov3_02124CAC
	mov r0, #0x34
	bl _Znwm
	cmp r0, #0
	beq _0212479C
	mov r3, #0
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #0x30]
	mov r2, r3
_02124788:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #8]
	cmp r3, #0xa
	blt _02124788
_0212479C:
	add r1, sl, #0x1000
	ldr r2, _02124C34 ; =MAIN_BSS_0208F304
	str r0, [r1, #0x4cc]
	mov r8, r0
	mov r0, #0x64
	ldr r4, [r2]
	bl _Znwm
	cmp r0, #0
	beq _021247C8
	mov r1, r4
	bl sub_0201FC9C
_021247C8:
	str r0, [r8]
	mov r1, #5
	bl sub_02020328
	ldr r0, [r8]
	ldr r1, _02124C4C ; =s_menu_overlay_3_0212a6e8
	ldr r2, _02124C50 ; =s_title000_bg_overlay_3_0212a7f8
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r8]
	ldr r1, _02124C54 ; =s_title000_overlay_3_0212a728
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r8]
	ldr r1, _02124C58 ; =s_title000_overlay_3_0212a71c
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r8]
	ldr r1, _02124C5C ; =s_title000_00_overlay_3_0212a7d0
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
	beq _02124864
	mov r1, r4
	bl sub_0201FC9C
_02124864:
	str r0, [r8, #4]
	mov r1, #5
	bl sub_02020328
	ldr r0, [r8, #4]
	ldr r1, _02124C60 ; =s_menu_overlay_3_0212a6e0
	ldr r2, _02124C64 ; =s_title004_bg_overlay_3_0212a7e8
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r8, #4]
	ldr r1, _02124C68 ; =s_title004_overlay_3_0212a704
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r8, #4]
	ldr r1, _02124C6C ; =s_title004_overlay_3_0212a710
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r8, #4]
	ldr r1, _02124C70 ; =s_title004_00_overlay_3_0212a7c4
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
	beq _02124918
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02124918:
	str r0, [r8, #0xc]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0212494C
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0xe4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0212494C:
	str r0, [r8, #8]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02124980
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x1a4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02124980:
	str r0, [r8, #0x18]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _021249B4
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0xe4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_021249B4:
	str r0, [r8, #0x10]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _021249E8
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_021249E8:
	str r0, [r8, #0x14]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02124A1C
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02124A1C:
	add r5, r4, #0x224
	str r0, [r8, #0x1c]
	mov sb, #0
	add r4, r4, #0x1000
	mov r6, #0x40
	mov fp, #1
	mov r7, #0x44
_02124A38:
	mov r0, r7
	bl _Znwm
	cmp r0, #0
	beq _02124A5C
	str r6, [sp]
	ldr r2, [r4, #0x4a8]
	mov r3, fp
	add r1, r5, #0x400
	bl sub_0200ECD0
_02124A5C:
	add r1, r8, sb, lsl #2
	add sb, sb, #1
	str r0, [r1, #0x20]
	cmp sb, #4
	blt _02124A38
	mov r3, #0
	str r3, [r8, #0x30]
	str r3, [sp]
	ldr r0, [r8, #0xc]
	ldr r1, _02124C74 ; =s_data_menu_overlay_3_0212a758
	ldr r2, _02124C78 ; =s_title002_00_overlay_3_0212a7a0
	mov r4, r3
	bl sub_0200F168
	add r4, r4, r0
	mov r0, #2
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r8, #8]
	ldr r1, _02124C7C ; =s_data_menu_overlay_3_0212a740
	ldr r2, _02124C80 ; =s_title001_00_overlay_3_0212a788
	mov r3, r3, asr #5
	bl sub_0200F168
	add r4, r4, r0
	mov r0, #4
	str r0, [sp]
	mov r0, r4, asr #4
	add r0, r4, r0, lsr #27
	mov r3, r0, asr #5
	ldr r0, [r8, #0x18]
	ldr r1, _02124C84 ; =s_data_menu_overlay_3_0212a734
	ldr r2, _02124C88 ; =s_ma003_00_overlay_3_0212a6f8
	bl sub_0200F168
	add r4, r4, r0
	mov r0, #6
	mov r3, r4, asr #4
	str r0, [sp]
	add r3, r4, r3, lsr #27
	ldr r0, [r8, #0x10]
	ldr r1, _02124C8C ; =s_data_menu_overlay_3_0212a77c
	ldr r2, _02124C90 ; =s_title003_00_overlay_3_0212a7dc
	mov r3, r3, asr #5
	bl sub_0200F168
	add r4, r4, r0
	mov r0, #0xc
	mov r3, r4, asr #4
	str r0, [sp]
	add r3, r4, r3, lsr #27
	ldr r0, [r8, #0x14]
	ldr r1, _02124C94 ; =s_data_menu_overlay_3_0212a770
	ldr r2, _02124C98 ; =s_title005_00_overlay_3_0212a7b8
	mov r3, r3, asr #5
	bl sub_0200F168
	add r4, r4, r0
	mov r0, #0xd
	mov r3, r4, asr #4
	str r0, [sp]
	add r3, r4, r3, lsr #27
	ldr r0, [r8, #0x1c]
	ldr r1, _02124C9C ; =s_data_menu_overlay_3_0212a764
	ldr r2, _02124CA0 ; =s_title005_01_overlay_3_0212a7ac
	mov r3, r3, asr #5
	bl sub_0200F168
	add r7, r4, r0
	ldr r5, _02124CA4 ; =s_tp_03d_overlay_3_0212a6f0
	ldr r4, _02124CA8 ; =s_data_menu_overlay_3_0212a74c
	str r7, [r8, #0x30]
	mov sb, #0
	add r6, sp, #0x10
_02124B70:
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
	blt _02124B70
	ldr r0, _02124C34 ; =MAIN_BSS_0208F304
	str r7, [r8, #0x30]
	ldr r1, [r0]
	add r0, sl, #0x1000
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4a4]
	ldr r2, [r0, #0x4cc]
	add r0, r1, #0x8000
	str r2, [r0, #0xba0]
	b _02124C20
_02124BE0:
	add r0, sl, #0x18
	add r0, r0, #0x800
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r1, #1
	mov r0, sl
	strb r1, [sl, #0xe2b]
	bl ov3_02124CAC
	ldr r0, _02124C34 ; =MAIN_BSS_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a4]
	add r0, r0, #0x8000
	str r1, [r0, #0xba0]
_02124C20:
	add r0, sl, #0x1000
	mov r1, #0
	strb r1, [r0, #0x4d0]
	add sp, sp, #0x19c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02124C34: .word MAIN_BSS_0208F304
_02124C38: .word s_OPD_overlay_3_0212ad14
_02124C3C: .word s_data_opening_opdm_LZ_bin_overlay_3_0212ad18
_02124C40: .word DAT_overlay_3_0212ac60
_02124C44: .word s_OPD_opdm_02d_ntft_overlay_3_0212ad34
_02124C48: .word s_OPD_opdm_02d_ntfp_overlay_3_0212ad48
_02124C4C: .word s_menu_overlay_3_0212a6e8
_02124C50: .word s_title000_bg_overlay_3_0212a7f8
_02124C54: .word s_title000_overlay_3_0212a728
_02124C58: .word s_title000_overlay_3_0212a71c
_02124C5C: .word s_title000_00_overlay_3_0212a7d0
_02124C60: .word s_menu_overlay_3_0212a6e0
_02124C64: .word s_title004_bg_overlay_3_0212a7e8
_02124C68: .word s_title004_overlay_3_0212a704
_02124C6C: .word s_title004_overlay_3_0212a710
_02124C70: .word s_title004_00_overlay_3_0212a7c4
_02124C74: .word s_data_menu_overlay_3_0212a758
_02124C78: .word s_title002_00_overlay_3_0212a7a0
_02124C7C: .word s_data_menu_overlay_3_0212a740
_02124C80: .word s_title001_00_overlay_3_0212a788
_02124C84: .word s_data_menu_overlay_3_0212a734
_02124C88: .word s_ma003_00_overlay_3_0212a6f8
_02124C8C: .word s_data_menu_overlay_3_0212a77c
_02124C90: .word s_title003_00_overlay_3_0212a7dc
_02124C94: .word s_data_menu_overlay_3_0212a770
_02124C98: .word s_title005_00_overlay_3_0212a7b8
_02124C9C: .word s_data_menu_overlay_3_0212a764
_02124CA0: .word s_title005_01_overlay_3_0212a7ac
_02124CA4: .word s_tp_03d_overlay_3_0212a6f0
_02124CA8: .word s_data_menu_overlay_3_0212a74c

	arm_func_start ov3_02124CAC
ov3_02124CAC: ; 0x02124CAC
	stmdb sp!, {r3, lr}
	mov r3, r0
	cmp r1, #0
	beq _02124CD4
	cmp r1, #1
	bne _02124CE0
	add r0, r3, #0x18
	add r0, r0, #0x800
	str r0, [r3, #4]
	b _02124CE8
	arm_func_end ov3_02124CAC
_02124CD4:
	add r0, r3, #0x10
	str r0, [r3, #4]
	b _02124CE8
_02124CE0:
	mov r0, #0
	str r0, [r3, #4]
_02124CE8:
	str r1, [r3, #8]
	ldr r0, [r3, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, [r0]
	add r1, r3, #0x22c
	ldr r2, [r2, #0x10]
	add r1, r1, #0xc00
	blx r2
	ldmia sp!, {r3, pc}

	arm_func_start ov3_02124D10
ov3_02124D10: ; 0x02124D10
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, r0
	add r0, r4, #0x18
	add r0, r0, #0x800
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	add r0, r4, #0x10
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x4d0]
	cmp r1, #0
	beq _02124E20
	ldr r6, [r0, #0x4cc]
	cmp r6, #0
	beq _02124E04
	beq _02124DF8
	mov r7, #0
	mov r5, r7
	arm_func_end ov3_02124D10
_02124D68:
	add r0, r6, r7, lsl #2
	ldr r8, [r0, #8]
	cmp r8, #0
	beq _02124D94
	beq _02124D8C
	mov r0, r8
	bl sub_0200ED2C
	mov r0, r8
	bl _ZdlPv
_02124D8C:
	add r0, r6, r7, lsl #2
	str r5, [r0, #8]
_02124D94:
	add r7, r7, #1
	cmp r7, #0xa
	blt _02124D68
	ldr r5, [r6, #4]
	cmp r5, #0
	beq _02124DC8
	beq _02124DC0
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl _ZdlPv
_02124DC0:
	mov r0, #0
	str r0, [r6, #4]
_02124DC8:
	ldr r5, [r6]
	cmp r5, #0
	beq _02124DF0
	beq _02124DE8
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl _ZdlPv
_02124DE8:
	mov r0, #0
	str r0, [r6]
_02124DF0:
	mov r0, r6
	bl _ZdlPv
_02124DF8:
	add r0, r4, #0x1000
	mov r1, #0
	str r1, [r0, #0x4cc]
_02124E04:
	ldr r0, _02124F08 ; =MAIN_BSS_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a4]
	add r0, r0, #0x8000
	str r1, [r0, #0xba0]
_02124E20:
	add r0, r4, #0x1000
	ldr r5, [r0, #0xc0]
	cmp r5, #0
	beq _02124E50
	beq _02124E44
	mov r0, r5
	bl sub_0200372C
	mov r0, r5
	bl _ZdlPv
_02124E44:
	add r0, r4, #0x1000
	mov r1, #0
	str r1, [r0, #0xc0]
_02124E50:
	ldr r0, _02124F08 ; =MAIN_BSS_0208F304
	mov r1, #0x80000
	ldr r0, [r0]
	mov r2, #0
	mov r3, #0x4000
	bl sub_020101F4
	mov r0, #0
	ldr r2, _02124F0C ; =0x00007FFF
	mov r1, r0
	mov r3, r0
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r2, _02124F10 ; =0x04000048
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x4c8]
	ldrh r2, [r2]
	mov r0, r1, lsl #0x1a
	movs r0, r0, lsr #0x1f
	bic r2, r2, #0x3f
	mov r1, r1, lsl #0x1b
	orr r1, r2, r1, lsr #27
	ldr r2, _02124F10 ; =0x04000048
	orrne r1, r1, #0x20
	strh r1, [r2]
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x4c9]
	ldrh r2, [r2, #2]
	mov r0, r1, lsl #0x1a
	movs r0, r0, lsr #0x1f
	bic r2, r2, #0x3f
	mov r1, r1, lsl #0x1b
	orr r1, r2, r1, lsr #27
	ldr r0, _02124F14 ; =0x0400004A
	orrne r1, r1, #0x20
	strh r1, [r0]
	mov r2, #0x4000000
	add r0, r4, #0x1000
	ldr r1, [r2]
	ldr r0, [r0, #0x4c4]
	bic r1, r1, #0xe000
	orr r1, r1, r0, lsl #13
	mov r0, #0
	str r1, [r2]
	bl GXS_SetGraphicsMode
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02124F08: .word MAIN_BSS_0208F304
_02124F0C: .word 0x00007FFF
_02124F10: .word 0x04000048
_02124F14: .word 0x0400004A

	arm_func_start ov3_02124F18
ov3_02124F18: ; 0x02124F18
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r2, _02124FE4 ; =0x04001000
	mov r3, #0
	ldr r1, [r2]
	mov r4, r0
	bic r0, r1, #0x60
	orr r0, r0, #0x20
	mov r1, r3
	str r0, [r2]
	mov r2, r3
	arm_func_end ov3_02124F18
_02124F40:
	add r0, r4, r1, lsl #3
	add r0, r0, #0x1000
	str r2, [r0, #0xc4]
	add r1, r1, #1
	str r2, [r0, #0xc8]
	cmp r1, #0x80
	blt _02124F40
	ldr r7, _02124FE8 ; =0xC0000C00
	mov ip, r2
	mov r0, #0
_02124F68:
	and r5, r2, #0xff
	mov r1, r0
	mov lr, r0
	orr r5, r5, r7
_02124F78:
	mov sb, r1, lsl #0x17
	add r6, r4, r3, lsl #3
	add r8, lr, ip, lsl #5
	add r1, r1, #0x40
	orr sb, r5, sb, lsr #7
	add r6, r6, #0x1000
	str sb, [r6, #0xc4]
	orr r8, r8, #0xf000
	strh r8, [r6, #0xc8]
	cmp r1, #0x100
	add lr, lr, #8
	add r3, r3, #1
	blt _02124F78
	add r2, r2, #0x40
	cmp r2, #0xc0
	add ip, ip, #8
	blt _02124F68
	add r0, r4, #0xc4
	add r0, r0, #0x1000
	mov r1, #0x400
	bl DC_FlushRange
	add r0, r4, #0xc4
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x400
	bl GXS_LoadOAM
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02124FE4: .word 0x04001000
_02124FE8: .word 0xC0000C00

	arm_func_start ov3_02124FEC
ov3_02124FEC: ; 0x02124FEC
	stmdb sp!, {r3, lr}
	ldr r1, _0212509C ; =0x04000304
	ldrh r0, [r1]
	orr r0, r0, #0x8000
	strh r0, [r1]
	bl GX_ResetBankForSubOBJ
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, #8
	bl GX_SetBankForLCDC
	mov r0, #1
	ldr ip, _021250A0 ; =0x81330010
	ldr r3, _021250A4 ; =0x04000064
	mov r2, r0
	mov r1, #0
	str ip, [r3]
	bl GX_SetGraphicsMode
	mov r2, #0x4000000
	ldr r1, [r2]
	mov r0, #5
	bic r1, r1, #0x1f00
	orr r1, r1, #0x100
	str r1, [r2]
	ldrh r1, [r2, #8]
	bic r1, r1, #3
	strh r1, [r2, #8]
	bl GXS_SetGraphicsMode
	ldr r1, _021250A8 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x400
	str r0, [r1]
	ldrh r0, [r1, #0xc]
	and r0, r0, #0x43
	orr r0, r0, #0x84
	orr r0, r0, #0x4000
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0xc]
	bic r0, r0, #3
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0xc]
	bic r0, r0, #0x40
	strh r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212509C: .word 0x04000304
_021250A0: .word 0x81330010
_021250A4: .word 0x04000064
_021250A8: .word 0x04001000
	arm_func_end ov3_02124FEC

	arm_func_start ov3_021250AC
ov3_021250AC: ; 0x021250AC
	stmdb sp!, {r3, lr}
	ldr r1, _02125130 ; =0x04000304
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	bl GX_ResetBankForSubBG
	mov r0, #8
	bl GX_SetBankForSubOBJ
	mov r0, #4
	bl GX_SetBankForLCDC
	mov r0, #1
	ldr ip, _02125134 ; =0x81320010
	ldr r3, _02125138 ; =0x04000064
	mov r2, r0
	mov r1, #0
	str ip, [r3]
	bl GX_SetGraphicsMode
	mov r2, #0x4000000
	ldr r1, [r2]
	mov r0, #5
	bic r1, r1, #0x1f00
	orr r1, r1, #0x100
	str r1, [r2]
	ldrh r1, [r2, #8]
	bic r1, r1, #3
	strh r1, [r2, #8]
	bl GXS_SetGraphicsMode
	ldr r1, _0212513C ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02125130: .word 0x04000304
_02125134: .word 0x81320010
_02125138: .word 0x04000064
_0212513C: .word 0x04001000
	arm_func_end ov3_021250AC

	arm_func_start ov3_02125140
ov3_02125140: ; 0x02125140
	stmdb sp!, {r3, lr}
	ldr r0, _02125180 ; =OVERLAY3_BSS_0212B500
	ldr r0, [r0]
	cmp r0, #0
	beq _0212515C
	bl ov3_021250AC
	b _02125160
	arm_func_end ov3_02125140
_0212515C:
	bl ov3_02124FEC
_02125160:
	ldr r0, _02125180 ; =OVERLAY3_BSS_0212B500
	ldr r0, [r0]
	cmp r0, #0
	moveq r1, #1
	ldr r0, _02125180 ; =OVERLAY3_BSS_0212B500
	movne r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02125180: .word OVERLAY3_BSS_0212B500

	arm_func_start ov3_02125184
ov3_02125184: ; 0x02125184
	mov r0, #0x12
	bx lr
	arm_func_end ov3_02125184

	arm_func_start ov3_0212518C
ov3_0212518C: ; 0x0212518C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003938
	ldr r0, _021251D4 ; =ptr_FUN_02036908_0208d660
	mov r2, #0
	str r0, [r4]
	ldr r0, _021251D8 ; =PTR_LAB_0208e074
	str r2, [r4, #0x18]
	str r0, [r4]
	str r2, [r4, #0x4c]
	str r2, [r4, #0x50]
	strh r2, [r4, #0x54]
	mov r1, #0x1000
	str r2, [r4, #0x58]
	str r1, [r4, #0x48]
	mov r0, r4
	str r1, [r4, #0x44]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021251D4: .word ptr_FUN_02036908_0208d660
_021251D8: .word PTR_LAB_0208e074
	arm_func_end ov3_0212518C

	arm_func_start ov3_021251DC
ov3_021251DC: ; 0x021251DC
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02125500 ; =ptr_FUN_overlay_3_021255b8_overlay_3_0212aee8
	mov r4, r0
	ldr ip, _02125504 ; =sub_020420A8
	str r1, [r4]
	ldr r3, _02125508 ; =ov3_0212518C
	add r0, r4, #0xc
	mov r1, #7
	mov r2, #0x5c
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x290
	bl sub_02003938
	ldr r1, _0212550C ; =ptr_FUN_overlay_3_02129a68_overlay_3_0212b4e0
	add r0, r4, #0x2b8
	str r1, [r4, #0x290]
	mov r1, #0
	str r1, [r4, #0x2a8]
	bl ov3_02129E98
	mov r0, #0x1000
	str r0, [r4, #0x524]
	mov r0, #1
	str r0, [r4, #0x530]
	mov r1, #0
	str r1, [r4, #0x534]
	str r1, [r4, #0x538]
	mov r0, #0x40
	str r0, [r4, #0x540]
	str r1, [r4, #0x544]
	ldr r0, [r4, #0x540]
	cmp r0, #0
	beq _021252F0
	ldr r1, _02125510 ; =ov3_02125594
	ldr r3, _02125514 ; =ov3_0212552C
	str r1, [sp]
	mov r1, #0x84
	mov r2, #8
	bl __cxa_vec_new
	str r0, [r4, #0x53c]
	ldr r1, [r4, #0x540]
	mov r5, #0
	mov r0, r5
	cmp r1, #0
	bls _021252E4
	mov r1, r5
	mov lr, r5
	mov r2, #0x84
	arm_func_end ov3_021251DC
_02125298:
	ldr r3, [r4, #0x53c]
	add ip, r0, #1
	add r3, r3, r1
	str r5, [r3, #0x7c]
	ldr r3, [r4, #0x540]
	add r0, r0, #1
	cmp ip, r3
	ldrlo r3, [r4, #0x53c]
	mlalo r5, ip, r2, r3
	ldr r3, [r4, #0x53c]
	movhs r5, lr
	add r3, r3, r1
	str r5, [r3, #0x80]
	ldr ip, [r4, #0x53c]
	ldr r3, [r4, #0x540]
	add r5, ip, r1
	cmp r0, r3
	add r1, r1, #0x84
	blo _02125298
_021252E4:
	ldr r0, [r4, #0x53c]
	str r0, [r4, #0x548]
	b _021252F8
_021252F0:
	str r1, [r4, #0x53c]
	str r1, [r4, #0x548]
_021252F8:
	mov r1, #0
	str r1, [r4, #0x54c]
	ldr r0, [r4, #0x530]
	cmp r0, #0
	streq r1, [r4, #0x528]
	streq r1, [r4, #0x52c]
	beq _02125340
	mov r0, r0, lsl #2
	bl _Znam
	str r0, [r4, #0x528]
	ldr r1, [r4, #0x530]
	mov r2, r1, lsl #2
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #0x530]
	mov r0, r0, lsl #2
	bl _Znam
	str r0, [r4, #0x52c]
_02125340:
	mov r1, #0
	str r1, [r4, #0x520]
	str r1, [r4, #0x51c]
	mov r0, #0x1000
	str r0, [r4, #0x558]
	mov r0, #1
	str r0, [r4, #0x564]
	str r1, [r4, #0x568]
	str r1, [r4, #0x56c]
	mov r0, #0x10
	str r0, [r4, #0x574]
	str r1, [r4, #0x578]
	ldr r0, [r4, #0x574]
	cmp r0, #0
	beq _02125410
	ldr r1, _02125510 ; =ov3_02125594
	ldr r3, _02125514 ; =ov3_0212552C
	str r1, [sp]
	mov r1, #0x84
	mov r2, #8
	bl __cxa_vec_new
	str r0, [r4, #0x570]
	ldr r1, [r4, #0x574]
	mov r5, #0
	mov r0, r5
	cmp r1, #0
	bls _02125404
	mov r1, r5
	mov lr, r5
	mov r2, #0x84
_021253B8:
	ldr r3, [r4, #0x570]
	add ip, r0, #1
	add r3, r3, r1
	str r5, [r3, #0x7c]
	ldr r3, [r4, #0x574]
	add r0, r0, #1
	cmp ip, r3
	ldrlo r3, [r4, #0x570]
	mlalo r5, ip, r2, r3
	ldr r3, [r4, #0x570]
	movhs r5, lr
	add r3, r3, r1
	str r5, [r3, #0x80]
	ldr ip, [r4, #0x570]
	ldr r3, [r4, #0x574]
	add r5, ip, r1
	cmp r0, r3
	add r1, r1, #0x84
	blo _021253B8
_02125404:
	ldr r0, [r4, #0x570]
	str r0, [r4, #0x57c]
	b _02125418
_02125410:
	str r1, [r4, #0x570]
	str r1, [r4, #0x57c]
_02125418:
	mov r1, #0
	str r1, [r4, #0x580]
	ldr r0, [r4, #0x564]
	cmp r0, #0
	streq r1, [r4, #0x55c]
	streq r1, [r4, #0x560]
	beq _02125460
	mov r0, r0, lsl #2
	bl _Znam
	str r0, [r4, #0x55c]
	ldr r1, [r4, #0x564]
	mov r2, r1, lsl #2
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #0x564]
	mov r0, r0, lsl #2
	bl _Znam
	str r0, [r4, #0x560]
_02125460:
	mov ip, #0
	str ip, [r4, #0x554]
	str ip, [r4, #0x550]
	mov r0, #0xa
	str r0, [r4, #0x584]
	ldr r3, _02125518 ; =PTR_LAB_overlay_3_02126e94_overlay_3_0212ae04
	mov r2, #0x1000
	str r3, [r4, #0x588]
	str ip, [r4, #0x59c]
	str ip, [r4, #0x58c]
	str ip, [r4, #0x590]
	str ip, [r4, #0x594]
	ldr r1, _0212551C ; =PTR_LAB_overlay_3_021255a8_overlay_3_0212ae3c
	str r2, [r4, #0x598]
	str r1, [r4, #0x588]
	add r0, r4, #0x184
	add r1, r0, #0x400
	str ip, [r4, #0x5a0]
	ldr r0, _02125520 ; =PTR_LAB_overlay_3_021255ac_overlay_3_0212addc
	str r1, [r4, #0x5a4]
	str r0, [r4, #0x5a8]
	str r3, [r4, #0x5ac]
	str ip, [r4, #0x5c0]
	str ip, [r4, #0x5b0]
	str ip, [r4, #0x5b4]
	str ip, [r4, #0x5b8]
	ldr r0, _02125524 ; =PTR_LAB_overlay_3_021255b0_overlay_3_0212ae20
	str r2, [r4, #0x5bc]
	str r0, [r4, #0x5ac]
	str ip, [r4, #0x5c4]
	ldr r0, _02125528 ; =PTR_LAB_overlay_3_021255b4_overlay_3_0212adf0
	str r1, [r4, #0x5c8]
	str r0, [r4, #0x5cc]
	strb ip, [r4, #0x5d0]
	strb ip, [r4, #0x612]
	strb ip, [r4, #0x613]
	str ip, [r4, #4]
	mov r0, r4
	str ip, [r4, #8]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02125500: .word ptr_FUN_overlay_3_021255b8_overlay_3_0212aee8
_02125504: .word sub_020420A8
_02125508: .word ov3_0212518C
_0212550C: .word ptr_FUN_overlay_3_02129a68_overlay_3_0212b4e0
_02125510: .word ov3_02125594
_02125514: .word ov3_0212552C
_02125518: .word PTR_LAB_overlay_3_02126e94_overlay_3_0212ae04
_0212551C: .word PTR_LAB_overlay_3_021255a8_overlay_3_0212ae3c
_02125520: .word PTR_LAB_overlay_3_021255ac_overlay_3_0212addc
_02125524: .word PTR_LAB_overlay_3_021255b0_overlay_3_0212ae20
_02125528: .word PTR_LAB_overlay_3_021255b4_overlay_3_0212adf0

	arm_func_start ov3_0212552C
ov3_0212552C: ; 0x0212552C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003938
	ldr r0, _02125588 ; =ptr_FUN_02036908_0208d660
	mov r1, #0
	str r0, [r4]
	ldr r0, _0212558C ; =PTR_LAB_0208e074
	str r1, [r4, #0x18]
	str r0, [r4]
	str r1, [r4, #0x4c]
	str r1, [r4, #0x50]
	strh r1, [r4, #0x54]
	mov r0, #0x1000
	str r1, [r4, #0x58]
	str r0, [r4, #0x48]
	str r0, [r4, #0x44]
	str r1, [r4, #0x78]
	mov r0, #8
	str r0, [r4, #0x10]
	ldr r1, _02125590 ; =0x00000622
	mov r0, r4
	str r1, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02125588: .word ptr_FUN_02036908_0208d660
_0212558C: .word PTR_LAB_0208e074
_02125590: .word 0x00000622
	arm_func_end ov3_0212552C

	arm_func_start ov3_02125594
ov3_02125594: ; 0x02125594
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02125594

	arm_func_start ov3_021255A8
ov3_021255A8: ; 0x021255A8
	bx lr
	arm_func_end ov3_021255A8

	arm_func_start ov3_021255AC
ov3_021255AC: ; 0x021255AC
	bx lr
	arm_func_end ov3_021255AC

	arm_func_start ov3_021255B0
ov3_021255B0: ; 0x021255B0
	bx lr
	arm_func_end ov3_021255B0

	arm_func_start ov3_021255B4
ov3_021255B4: ; 0x021255B4
	bx lr
	arm_func_end ov3_021255B4

	arm_func_start ov3_021255B8
ov3_021255B8: ; 0x021255B8
	stmdb sp!, {r4, lr}
	ldr r1, _021256B8 ; =ptr_FUN_overlay_3_021255b8_overlay_3_0212aee8
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, [r4, #0x560]
	cmp r0, #0
	beq _021255FC
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x560]
	arm_func_end ov3_021255B8
_021255FC:
	ldr r0, [r4, #0x55c]
	cmp r0, #0
	beq _02125614
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x55c]
_02125614:
	ldr r0, [r4, #0x570]
	cmp r0, #0
	beq _02125638
	ldr r3, _021256BC ; =ov3_02125594
	mov r1, #0x84
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x570]
_02125638:
	ldr r0, [r4, #0x52c]
	cmp r0, #0
	beq _02125650
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x52c]
_02125650:
	ldr r0, [r4, #0x528]
	cmp r0, #0
	beq _02125668
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x528]
_02125668:
	ldr r0, [r4, #0x53c]
	cmp r0, #0
	beq _0212568C
	ldr r3, _021256BC ; =ov3_02125594
	mov r1, #0x84
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x53c]
_0212568C:
	add r0, r4, #0x2b8
	bl ov3_02129F54
	add r0, r4, #0x290
	bl ov3_02129A68
	ldr r3, _021256C0 ; =sub_020420A8
	add r0, r4, #0xc
	mov r1, #7
	mov r2, #0x5c
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021256B8: .word ptr_FUN_overlay_3_021255b8_overlay_3_0212aee8
_021256BC: .word ov3_02125594
_021256C0: .word sub_020420A8

	arm_func_start ov3_021256C4
ov3_021256C4: ; 0x021256C4
	stmdb sp!, {r4, lr}
	ldr r1, _021257CC ; =ptr_FUN_overlay_3_021255b8_overlay_3_0212aee8
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, [r4, #0x560]
	cmp r0, #0
	beq _02125708
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x560]
	arm_func_end ov3_021256C4
_02125708:
	ldr r0, [r4, #0x55c]
	cmp r0, #0
	beq _02125720
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x55c]
_02125720:
	ldr r0, [r4, #0x570]
	cmp r0, #0
	beq _02125744
	ldr r3, _021257D0 ; =ov3_02125594
	mov r1, #0x84
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x570]
_02125744:
	ldr r0, [r4, #0x52c]
	cmp r0, #0
	beq _0212575C
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x52c]
_0212575C:
	ldr r0, [r4, #0x528]
	cmp r0, #0
	beq _02125774
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x528]
_02125774:
	ldr r0, [r4, #0x53c]
	cmp r0, #0
	beq _02125798
	ldr r3, _021257D0 ; =ov3_02125594
	mov r1, #0x84
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x53c]
_02125798:
	add r0, r4, #0x2b8
	bl ov3_02129F54
	add r0, r4, #0x290
	bl ov3_02129A68
	ldr r3, _021257D4 ; =sub_020420A8
	add r0, r4, #0xc
	mov r1, #7
	mov r2, #0x5c
	bl __cxa_vec_cleanup
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021257CC: .word ptr_FUN_overlay_3_021255b8_overlay_3_0212aee8
_021257D0: .word ov3_02125594
_021257D4: .word sub_020420A8

	arm_func_start ov3_021257D8
ov3_021257D8: ; 0x021257D8
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	mov r1, #0xc0000
	rsb r1, r1, #0
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov ip, #0xc0000
	mov r1, #4
	str r2, [sp, #8]
	mov r2, #0x100000
	str r2, [sp, #0xc]
	mov r2, r1
	add r0, r0, #0x290
	sub r3, ip, #0x140000
	str ip, [sp, #0x10]
	bl ov3_02129AC0
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end ov3_021257D8

	arm_func_start ov3_02125824
ov3_02125824: ; 0x02125824
	ldr ip, _02125830 ; =ov3_02129C54
	add r0, r0, #0x290
	bx ip
	.align 2, 0
_02125830: .word ov3_02129C54
	arm_func_end ov3_02125824

	arm_func_start ov3_02125834
ov3_02125834: ; 0x02125834
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	str r0, [sp, #4]
	mov r5, r1
	bl sub_0201001C
	str r0, [sp, #0x14]
	mov r4, #0
	ldr r0, _02125C84 ; =0x0000089F
	ldr r2, _02125C88 ; =0x00007FFF
	mov r1, #0x1f
	mov r3, #0x3f
	str r4, [sp]
	bl G3X_SetClearColor
	ldr r1, _02125C8C ; =DAT_overlay_3_0212af64
	ldr r2, [sp, #4]
	mov r0, r4
	mov r3, #0x2c
	arm_func_end ov3_02125834
_02125878:
	ldr r6, [r1, #0x20]
	add r0, r0, #1
	cmp r6, #0
	mlage r4, r6, r3, r5
	strge r4, [r2, #0x24]
	ldr r8, [r1, #0x1c]
	ldr r7, [r1, #0x18]
	ldr r6, [r1, #0x14]
	ldr r4, [r1, #0x10]
	cmp r0, #7
	str r4, [r2, #0x38]
	str r6, [r2, #0x3c]
	str r7, [r2, #0x40]
	str r8, [r2, #0x44]
	ldr r4, [r1]
	str r4, [r2, #0x48]
	ldr r4, [r1, #4]
	str r4, [r2, #0x4c]
	ldr r4, [r1, #8]
	str r4, [r2, #0x58]
	ldr r4, [r1, #0xc]
	str r4, [r2, #0x5c]
	ldr r4, [r1, #0x24]
	add r1, r1, #0x28
	str r4, [r2, #0x10]
	add r2, r2, #0x5c
	blt _02125878
	ldr r0, [sp, #4]
	add r1, r5, #0x84
	str r1, [r0, #0x2a8]
	mov r1, #0x5a
	str r1, [r0, #0x294]
	mov r2, #1
	str r2, [r0, #0x230]
	mov r4, #2
	str r4, [r0, #0x1c]
	mov r1, #3
	str r1, [r0, #0x78]
	str r1, [r0, #0xd4]
	ldr r3, [sp, #4]
	mov r0, #4
	str r0, [r3, #0x130]
	str r4, [r3, #0x12c]
	add r3, r3, #0x100
	mov r6, #0
	strh r6, [r3, #0x28]
	ldr r3, [sp, #4]
	mov r4, #5
	str r6, [r3, #0x134]
	str r4, [r3, #0x18c]
	str r6, [r3, #0x244]
	str r2, [r3, #0x28c]
	str r1, [r3, #0x240]
	ldr r1, [sp, #4]
	mov r3, #8
	str r3, [r1, #0x248]
	ldr r3, _02125C90 ; =DAT_overlay_3_0212af64
	str r2, [r1, #0x2a0]
	mov r4, #0x2c
	ldr r3, [r3, #0xc0]
	sub r1, r4, #0x30
	mla r2, r3, r4, r5
	ldr r6, [r2, #0xc]
	bl _Z23Heap_AllocWithAlignmentmm
	mov r4, r0
	mov r0, #0
	strh r0, [r4]
	bl GX_BeginLoadTexPltt
	mov r0, r4
	mov r1, #4
	bl DC_FlushRange
	mov r1, r6
	mov r0, r4
	mov r2, #4
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
	mov r0, r4
	bl _Z9Heap_FreePv
	ldr r0, _02125C94 ; =DAT_overlay_3_0212a680
	ldmia r0, {r1, r4}
	ldr r0, [sp, #4]
	str r1, [sp, #0x20]
	str r1, [r0, #0x58c]
	str r4, [r0, #0x590]
	ldr r0, [r0, #0x530]
	str r4, [sp, #0x24]
	cmp r0, #0
	bls _021259F0
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x528]
	cmp r1, #0
	addne r0, r0, #0x188
	addne r0, r0, #0x400
	strne r0, [r1]
_021259F0:
	ldr r0, [sp, #4]
	add r0, r0, #0x1a8
	add r2, r0, #0x400
	ldr r0, [sp, #4]
	str r2, [r0, #0x538]
	add r2, r5, #0xb0
	add r1, r0, #0x188
	str r2, [r0, #0x534]
	add r0, r1, #0x400
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #4]
	str r1, [r0, #0x5b0]
	str r4, [r0, #0x5b4]
	ldr r0, [r0, #0x564]
	cmp r0, #0
	bls _02125A54
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x55c]
	cmp r1, #0
	addne r0, r0, #0x1ac
	addne r0, r0, #0x400
	strne r0, [r1]
_02125A54:
	ldr r0, [sp, #4]
	add r0, r0, #0x1cc
	add r2, r0, #0x400
	ldr r0, [sp, #4]
	str r2, [r0, #0x56c]
	add r2, r5, #0x210
	add r1, r0, #0x1ac
	str r2, [r0, #0x568]
	add r0, r1, #0x400
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, #0x40000
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	rsb r0, r0, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
_02125AA8:
	ldr r0, [sp, #0x14]
	mov r8, #0x90000
	add r0, r0, #0x48
	rsb r8, r8, #0
	add sl, r0, #0x1400
	mov sb, #0
_02125AC0:
	mov r4, #0
	mov r4, r4, lsl #9
	str r4, [sp, #0x18]
	mov r4, #0
	mov r4, r4, lsl #2
	ldmia sl, {r3, fp, lr}
	str r4, [sp, #0x1c]
	umull r5, r4, lr, r3
	ldr r7, [sl, #0x10]
	mov r0, #0
	mov r2, r0, lsl #0x10
	ldr r0, [sp, #8]
	mla r4, lr, fp, r4
	add r1, r0, sb, lsl #4
	ldr ip, [sl, #0xc]
	ldr r6, [sl, #0x14]
	adds r5, r7, r5
	mla r4, ip, r3, r4
	adc r3, r6, r4
	str r5, [sl]
	add r0, r1, #0x400
	str r3, [sl, #4]
	orr r2, r2, r3, lsr #16
	strh r2, [r0, #0x94]
	ldr r3, [sl]
	ldmib sl, {r2, r5}
	umull r7, r6, r5, r3
	mla r6, r5, r2, r6
	ldr r4, [sl, #0xc]
	ldr ip, [sl, #0x10]
	mla r6, r4, r3, r6
	ldr fp, [sl, #0x14]
	adds r2, ip, r7
	adc r3, fp, r6
	stmia sl, {r2, r3}
	ldr r2, [sp, #0x18]
	add sb, sb, #1
	orr r2, r2, r3, lsr #23
	str r2, [sp, #0x18]
	add r2, r2, #0x100
	strh r2, [r0, #0x96]
	ldr r2, [sl]
	ldmib sl, {r0, r4}
	umull r6, r5, r4, r2
	mla r5, r4, r0, r5
	ldr r3, [sl, #0xc]
	ldr fp, [sl, #0x10]
	mla r5, r3, r2, r5
	ldr r7, [sl, #0x14]
	adds r0, fp, r6
	adc r2, r7, r5
	stmia sl, {r0, r2}
	ldr r0, [sp, #0x1c]
	cmp sb, #3
	orr r0, r0, r2, lsr #30
	str r0, [sp, #0x1c]
	add r0, r0, #2
	mov r0, r0, lsl #0xc
	str r0, [r1, #0x498]
	ldr r0, [sp, #0x10]
	str r0, [r1, #0x48c]
	str r8, [r1, #0x490]
	add r8, r8, #0x30000
	blt _02125AC0
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #3
	ldr r0, [sp, #0x10]
	add r0, r0, #0x40000
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r0, r0, #0x30
	str r0, [sp, #8]
	blt _02125AA8
	ldr r0, [sp, #4]
	mov r2, #0
	mov r1, r0
	strb r2, [r1, #0x5d0]
	bl ov3_02125CB0
	ldr r0, [sp, #4]
	mov r2, #0
	str r2, [r0, #8]
	str r2, [r0, #4]
	ldrb r0, [r0, #0x613]
	cmp r0, #0
	beq _02125C34
	ldr r0, [sp, #0x14]
	mov r1, #0x45
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	b _02125C4C
_02125C34:
	ldr r0, [sp, #0x14]
	mov r1, #0x200
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r2, #0x40
	bl sub_02034D54
_02125C4C:
	ldr r0, [sp, #0x14]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [sp, #0x14]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02125C84: .word 0x0000089F
_02125C88: .word 0x00007FFF
_02125C8C: .word DAT_overlay_3_0212af64
_02125C90: .word DAT_overlay_3_0212af64
_02125C94: .word DAT_overlay_3_0212a680

	arm_func_start ov3_02125C98
ov3_02125C98: ; 0x02125C98
	mov r1, #0x1000
	str r1, [r0, #0x18]
	bx lr
	arm_func_end ov3_02125C98

	arm_func_start ov3_02125CA4
ov3_02125CA4: ; 0x02125CA4
	mov r1, #0x1000
	str r1, [r0, #0x18]
	bx lr
	arm_func_end ov3_02125CA4

	arm_func_start ov3_02125CB0
ov3_02125CB0: ; 0x02125CB0
	stmdb sp!, {r3, lr}
	mov ip, #0
	arm_func_end ov3_02125CB0
_02125CB8:
	rsb r3, ip, #0x1f
	add r1, r0, ip, lsl #1
	orr r2, r3, r3, lsl #5
	add ip, ip, #1
	orr r2, r2, r3, lsl #10
	add r1, r1, #0x500
	strh r2, [r1, #0xd2]
	cmp ip, #0x20
	blt _02125CB8
	add r0, r0, #0xd2
	add r0, r0, #0x500
	bl G3X_SetToonTable
	ldr r2, _02125D04 ; =0x04000060
	ldr r0, _02125D08 ; =0xFFFFCFFD
	ldrh r1, [r2]
	and r0, r1, r0
	orr r0, r0, #2
	strh r0, [r2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02125D04: .word 0x04000060
_02125D08: .word 0xFFFFCFFD

	arm_func_start ov3_02125D0C
ov3_02125D0C: ; 0x02125D0C
	bx lr
	arm_func_end ov3_02125D0C

	arm_func_start ov3_02125D10
ov3_02125D10: ; 0x02125D10
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x20
	mov r4, r0
	bl sub_0201001C
	mov r5, r0
	ldrb r0, [r4, #0x613]
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0x18]
	cmp r0, #0
	bne _02125DA0
	ldr r0, [r4, #8]
	cmp r0, #1
	bgt _02125DA0
	ldrh r0, [r2, #2]
	and r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldreqb r0, [r1, #4]
	cmpeq r0, #0
	beq _02125DA0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfa
	bl sub_02034C44
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #2
	mov r2, #0x3c
	bl sub_0200E0E0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #2
	mov r2, #0x3c
	bl sub_0200E0E0
	mov r0, #2
	str r0, [r4, #8]
	arm_func_end ov3_02125D10
_02125DA0:
	ldr r0, [r4, #8]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02125F0C
_02125DB0: ; jump table
	b _02125DC4 ; case 0
	b _02125E14 ; case 1
	b _02125EDC ; case 2
	b _02125E84 ; case 3
	b _02125EC0 ; case 4
_02125DC4:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02125F0C
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02125F0C
	mov r0, #1
	str r0, [r4, #8]
	ldrb r0, [r4, #0x613]
	cmp r0, #0
	movne r0, #0x258
	ldreq r0, _021264CC ; =0x00000CA8
	str r0, [r4, #4]
	mov r0, #0x40
	strb r0, [r4, #0x612]
	b _02125F0C
_02125E14:
	ldr r0, [r4, #4]
	subs r0, r0, #1
	str r0, [r4, #4]
	bpl _02125F0C
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #4
	mov r2, #0x3c
	bl sub_0200E0E0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #4
	mov r2, #0x3c
	bl sub_0200E0E0
	ldrb r0, [r4, #0x613]
	mov r1, #0x3c
	cmp r0, #0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x48c]
	beq _02125E74
	bl sub_02034B58
	mov r0, #2
	str r0, [r4, #8]
	b _02125F0C
_02125E74:
	bl sub_02034DC8
	mov r0, #3
	str r0, [r4, #8]
	b _02125F0C
_02125E84:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02125F0C
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02125F0C
	mov r0, #0x3c
	str r0, [r4, #4]
	mov r0, #4
	str r0, [r4, #8]
	b _02125F0C
_02125EC0:
	ldr r0, [r4, #4]
	subs r0, r0, #1
	str r0, [r4, #4]
	bpl _02125F0C
	add sp, sp, #0x20
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02125EDC:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02125F0C
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	addeq sp, sp, #0x20
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02125F0C:
	add r0, r4, #0x2b8
	bl ov3_02129F78
	ldr r5, [r4, #0x544]
	ldr r8, [r4, #0x524]
	cmp r5, #0
	beq _02126044
	mov sb, #0
	mov r7, r8, asr #0x1f
	mov sl, sb
_02125F30:
	ldr r0, [r5, #0x70]
	ldr r6, [r5, #0x80]
	cmp r0, #0
	beq _02125FF4
	ldr r0, [r4, #0x538]
	cmp r0, #0
	beq _02125F60
	ldr r3, [r0]
	mov r1, r5
	ldr r3, [r3, #8]
	mov r2, r8
	blx r3
_02125F60:
	ldr r0, [r5, #0x70]
	cmp r0, #0
	ble _02126038
	ldr lr, [r5, #0x64]
	ldr r0, [r5, #0x68]
	umull r3, r2, lr, r8
	mla r2, lr, r7, r2
	umull ip, r1, r0, r8
	mov lr, lr, asr #0x1f
	mla r2, lr, r8, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	mov r2, ip, lsr #0xc
	mla r1, r0, r7, r1
	mov ip, r0, asr #0x1f
	mla r1, ip, r8, r1
	orr r2, r2, r1, lsl #20
	ldr r0, [r5, #0x5c]
	str r2, [sp, #0x1c]
	add r0, r0, r3
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0x60]
	str r2, [sp, #0x14]
	add r0, r0, r2
	str r0, [r5, #0x60]
	ldrsh r0, [r5, #0x6e]
	ldrsh r2, [r5, #0x6c]
	str r3, [sp, #0x18]
	mul r1, r0, r8
	add r0, r2, r1, asr #12
	strh r0, [r5, #0x6c]
	ldr r0, [r5, #0x70]
	str r3, [sp, #0x10]
	subs r0, r0, r8
	str r0, [r5, #0x70]
	strmi sl, [r5, #0x70]
	b _02126038
_02125FF4:
	cmp r5, #0
	beq _02126038
	cmp r6, #0
	ldrne r0, [r5, #0x7c]
	strne r0, [r6, #0x7c]
	ldr r1, [r5, #0x7c]
	ldr r0, [r5, #0x80]
	cmp r1, #0
	strne r0, [r1, #0x80]
	streq r0, [r4, #0x544]
	ldr r0, [r4, #0x548]
	str r0, [r5, #0x80]
	str sb, [r5, #0x7c]
	ldr r0, [r4, #0x548]
	cmp r0, #0
	strne r5, [r0, #0x7c]
	str r5, [r4, #0x548]
_02126038:
	mov r5, r6
	cmp r6, #0
	bne _02125F30
_02126044:
	ldr r0, [r4, #0x530]
	mov r6, #0
	mov r5, r6
	cmp r0, #0
	bls _021260A8
	mov r7, r6
_0212605C:
	ldr r0, [r4, #0x528]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	ldreq r0, [r4, #0x52c]
	streq r7, [r0, r5, lsl #2]
	beq _02126098
	ldr r2, [r0]
	mov r1, r8
	ldr r2, [r2, #0xc]
	blx r2
	ldr r1, [r4, #0x52c]
	str r0, [r1, r5, lsl #2]
	ldr r0, [r4, #0x52c]
	ldr r0, [r0, r5, lsl #2]
	add r6, r6, r0
_02126098:
	ldr r0, [r4, #0x530]
	add r5, r5, #1
	cmp r5, r0
	blo _0212605C
_021260A8:
	cmp r6, #0
	beq _02126198
	cmp r0, #0
	mov sl, #0
	bls _02126198
_021260BC:
	ldr r0, [r4, #0x528]
	ldr r0, [r0, sl, lsl #2]
	cmp r0, #0
	ldrne r0, [r4, #0x52c]
	ldrne r0, [r0, sl, lsl #2]
	cmpne r0, #0
	beq _02126188
	cmp r0, #0
	mov sb, #0
	bls _02126188
	mov r5, sb
	mov r6, sb
_021260EC:
	ldr r1, [r4, #0x548]
	mov r7, r6
	cmp r1, #0
	beq _0212612C
	ldr r0, [r1, #0x80]
	mov r7, r1
	str r0, [r4, #0x548]
	cmp r0, #0
	strne r6, [r0, #0x7c]
	ldr r0, [r4, #0x544]
	str r0, [r1, #0x80]
	str r5, [r1, #0x7c]
	ldr r0, [r4, #0x544]
	cmp r0, #0
	strne r1, [r0, #0x7c]
	str r1, [r4, #0x544]
_0212612C:
	cmp r7, #0
	beq _02126174
	ldr r0, [r4, #0x534]
	mov r1, r7
	str r0, [r7, #0x18]
	ldr r0, [r4, #0x528]
	ldr r0, [r0, sl, lsl #2]
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
	ldr r0, [r4, #0x538]
	cmp r0, #0
	beq _02126174
	ldr r3, [r0]
	mov r1, r7
	ldr r3, [r3, #8]
	mov r2, r8
	blx r3
_02126174:
	ldr r0, [r4, #0x52c]
	add sb, sb, #1
	ldr r0, [r0, sl, lsl #2]
	cmp sb, r0
	blo _021260EC
_02126188:
	ldr r0, [r4, #0x530]
	add sl, sl, #1
	cmp sl, r0
	blo _021260BC
_02126198:
	ldr r5, [r4, #0x578]
	ldr r8, [r4, #0x558]
	cmp r5, #0
	beq _021262C8
	mov sb, #0
	mov r7, r8, asr #0x1f
	mov sl, sb
_021261B4:
	ldr r0, [r5, #0x70]
	ldr r6, [r5, #0x80]
	cmp r0, #0
	beq _02126278
	ldr r0, [r4, #0x56c]
	cmp r0, #0
	beq _021261E4
	ldr r3, [r0]
	mov r1, r5
	ldr r3, [r3, #8]
	mov r2, r8
	blx r3
_021261E4:
	ldr r0, [r5, #0x70]
	cmp r0, #0
	ble _021262BC
	ldr lr, [r5, #0x64]
	ldr r0, [r5, #0x68]
	umull r3, r2, lr, r8
	mla r2, lr, r7, r2
	umull ip, r1, r0, r8
	mov lr, lr, asr #0x1f
	mla r2, lr, r8, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	mov r2, ip, lsr #0xc
	mla r1, r0, r7, r1
	mov ip, r0, asr #0x1f
	mla r1, ip, r8, r1
	orr r2, r2, r1, lsl #20
	ldr r0, [r5, #0x5c]
	str r2, [sp, #0xc]
	add r0, r0, r3
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0x60]
	str r2, [sp, #4]
	add r0, r0, r2
	str r0, [r5, #0x60]
	ldrsh r0, [r5, #0x6e]
	ldrsh r2, [r5, #0x6c]
	str r3, [sp, #8]
	mul r1, r0, r8
	add r0, r2, r1, asr #12
	strh r0, [r5, #0x6c]
	ldr r0, [r5, #0x70]
	str r3, [sp]
	subs r0, r0, r8
	str r0, [r5, #0x70]
	strmi sl, [r5, #0x70]
	b _021262BC
_02126278:
	cmp r5, #0
	beq _021262BC
	cmp r6, #0
	ldrne r0, [r5, #0x7c]
	strne r0, [r6, #0x7c]
	ldr r1, [r5, #0x7c]
	ldr r0, [r5, #0x80]
	cmp r1, #0
	strne r0, [r1, #0x80]
	streq r0, [r4, #0x578]
	ldr r0, [r4, #0x57c]
	str r0, [r5, #0x80]
	str sb, [r5, #0x7c]
	ldr r0, [r4, #0x57c]
	cmp r0, #0
	strne r5, [r0, #0x7c]
	str r5, [r4, #0x57c]
_021262BC:
	mov r5, r6
	cmp r6, #0
	bne _021261B4
_021262C8:
	ldr r0, [r4, #0x564]
	mov r6, #0
	mov r5, r6
	cmp r0, #0
	bls _0212632C
	mov r7, r6
_021262E0:
	ldr r0, [r4, #0x55c]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	ldreq r0, [r4, #0x560]
	streq r7, [r0, r5, lsl #2]
	beq _0212631C
	ldr r2, [r0]
	mov r1, r8
	ldr r2, [r2, #0xc]
	blx r2
	ldr r1, [r4, #0x560]
	str r0, [r1, r5, lsl #2]
	ldr r0, [r4, #0x560]
	ldr r0, [r0, r5, lsl #2]
	add r6, r6, r0
_0212631C:
	ldr r0, [r4, #0x564]
	add r5, r5, #1
	cmp r5, r0
	blo _021262E0
_0212632C:
	cmp r6, #0
	beq _0212641C
	cmp r0, #0
	mov sl, #0
	bls _0212641C
_02126340:
	ldr r0, [r4, #0x55c]
	ldr r0, [r0, sl, lsl #2]
	cmp r0, #0
	ldrne r0, [r4, #0x560]
	ldrne r0, [r0, sl, lsl #2]
	cmpne r0, #0
	beq _0212640C
	cmp r0, #0
	mov sb, #0
	bls _0212640C
	mov r5, sb
	mov r6, sb
_02126370:
	ldr r1, [r4, #0x57c]
	mov r7, r6
	cmp r1, #0
	beq _021263B0
	ldr r0, [r1, #0x80]
	mov r7, r1
	str r0, [r4, #0x57c]
	cmp r0, #0
	strne r6, [r0, #0x7c]
	ldr r0, [r4, #0x578]
	str r0, [r1, #0x80]
	str r5, [r1, #0x7c]
	ldr r0, [r4, #0x578]
	cmp r0, #0
	strne r1, [r0, #0x7c]
	str r1, [r4, #0x578]
_021263B0:
	cmp r7, #0
	beq _021263F8
	ldr r0, [r4, #0x568]
	mov r1, r7
	str r0, [r7, #0x18]
	ldr r0, [r4, #0x55c]
	ldr r0, [r0, sl, lsl #2]
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
	ldr r0, [r4, #0x56c]
	cmp r0, #0
	beq _021263F8
	ldr r3, [r0]
	mov r1, r7
	ldr r3, [r3, #8]
	mov r2, r8
	blx r3
_021263F8:
	ldr r0, [r4, #0x560]
	add sb, sb, #1
	ldr r0, [r0, sl, lsl #2]
	cmp sb, r0
	blo _02126370
_0212640C:
	ldr r0, [r4, #0x564]
	add sl, sl, #1
	cmp sl, r0
	blo _02126340
_0212641C:
	mov r5, #0
	mov r7, r4
	mov r3, r5
_02126428:
	mov r6, r3
_0212642C:
	add r0, r7, r6, lsl #4
	add r0, r0, #0x400
	ldrh r2, [r0, #0x94]
	ldrh r1, [r0, #0x96]
	add r6, r6, #1
	cmp r6, #3
	add r1, r2, r1
	strh r1, [r0, #0x94]
	blt _0212642C
	add r5, r5, #1
	cmp r5, #3
	add r7, r7, #0x30
	blt _02126428
	ldrb r0, [r4, #0x613]
	cmp r0, #0
	ldreqb r0, [r4, #0x5d0]
	addeq r0, r0, #1
	streqb r0, [r4, #0x5d0]
	ldrb r0, [r4, #0x612]
	cmp r0, #0
	beq _021264C0
	sub r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r4, #0x612]
	cmp r0, #0x20
	blo _021264B0
	sub r0, r0, #0x20
	rsb r0, r0, #0x1f
	mov r0, r0, lsl #0x18
	movs r0, r0, asr #0x18
	movmi r0, #0
	str r0, [r4, #0x134]
	b _021264C0
_021264B0:
	rsb r0, r0, #0x1f
	and r1, r0, #0xff
	add r0, r4, #0x100
	strh r1, [r0, #0x28]
_021264C0:
	mov r0, #1
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021264CC: .word 0x00000CA8

	arm_func_start ov3_021264D0
ov3_021264D0: ; 0x021264D0
	mov r0, #0
	bx lr
	arm_func_end ov3_021264D0

	arm_func_start ov3_021264D8
ov3_021264D8: ; 0x021264D8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r5, [r4, #0x544]
	str r1, [sp]
	str r2, [sp, #4]
	cmp r5, #0
	beq _0212654C
	arm_func_end ov3_021264D8
_021264F8:
	ldr r0, [r4, #0x54c]
	cmp r0, #0
	strlt r0, [r5, #4]
	ldr r2, [r5, #0x5c]
	ldr r1, [r4, #0x51c]
	mov r0, r5
	add r1, r2, r1
	str r1, [r5, #0x3c]
	ldr r3, [r5, #0x60]
	ldr r2, [r4, #0x520]
	ldr r1, [sp]
	add r2, r3, r2
	str r2, [r5, #0x40]
	ldrsh r2, [r5, #0x6c]
	strh r2, [r5, #0x54]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldr r5, [r5, #0x80]
	cmp r5, #0
	bne _021264F8
_0212654C:
	ldr r5, [r4, #0x578]
	cmp r5, #0
	beq _021265AC
_02126558:
	ldr r0, [r4, #0x580]
	cmp r0, #0
	strlt r0, [r5, #4]
	ldr r2, [r5, #0x5c]
	ldr r1, [r4, #0x550]
	mov r0, r5
	add r1, r2, r1
	str r1, [r5, #0x3c]
	ldr r3, [r5, #0x60]
	ldr r2, [r4, #0x554]
	ldr r1, [sp]
	add r2, r3, r2
	str r2, [r5, #0x40]
	ldrsh r2, [r5, #0x6c]
	strh r2, [r5, #0x54]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldr r5, [r5, #0x80]
	cmp r5, #0
	bne _02126558
_021265AC:
	mov r0, #0
	str r0, [sp, #8]
_021265B4:
	add r0, r4, #0x8c
	add r2, r0, #0x400
	ldr r0, [sp, #8]
	mov r1, #0x30
	mla sl, r0, r1, r2
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	ldr fp, _02126744 ; =FX_SinCosTable_
	mov sb, #0
	add r0, r4, #0x200
_021265E0:
	add r5, sl, sb, lsl #4
	ldrh r1, [r5, #8]
	ldrh r6, [r0, #0xb4]
	add r3, sb, #1
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, fp, r2, lsl #1
	mov r2, r2, lsl #1
	ldrsh r2, [fp, r2]
	mov r3, r3, lsl #0x10
	add r6, r6, #1
	ldrsh r1, [r1, #2]
	mov r7, sb, lsl #4
	mov sb, r3, lsr #0x10
	mul ip, sb, r6
	ldr r3, [sl, r7]
	cmp sb, #3
	ldr r7, [r5, #0xc]
	ldr r6, [r5, #4]
	smull r5, lr, r7, r2
	smull r2, r1, r7, r1
	mov r5, r5, lsr #0xc
	orr r5, r5, lr, lsl #20
	add r5, r6, r5
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r3, r2
	ldr r2, [r4, #0x2ac]
	add r2, r2, ip, lsl #3
	str r1, [r2, r8, lsl #3]
	add r1, r2, r8, lsl #3
	str r5, [r1, #4]
	blo _021265E0
	ldr r0, [sp, #8]
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #8]
	cmp r0, #3
	blo _021265B4
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021266FC
	add r0, r4, #0x290
	ldr r2, [r0]
	ldr r1, [sp]
	ldr r2, [r2, #8]
	blx r2
	add r0, r4, #0xc
	ldr r2, [r0]
	ldr r1, [sp]
	ldr r2, [r2, #8]
	blx r2
	add r0, r4, #0x68
	ldr r2, [r0]
	ldr r1, [sp]
	ldr r2, [r2, #8]
	blx r2
	add r0, r4, #0x234
	ldr r2, [r0]
	ldr r1, [sp]
	ldr r2, [r2, #8]
	blx r2
	ldr r1, [sp]
	add r0, r4, #0x2b8
	bl ov3_02129FE0
	add r0, r4, #0x120
	ldr r2, [r0]
	ldr r1, [sp]
	ldr r2, [r2, #8]
	blx r2
_021266FC:
	ldrb r0, [r4, #0x613]
	cmp r0, #0
	bne _02126728
	ldrb r0, [r4, #0x5d0]
	tst r0, #0x20
	bne _02126728
	add r0, r4, #0x17c
	ldr r2, [r0]
	ldr r1, [sp]
	ldr r2, [r2, #8]
	blx r2
_02126728:
	add r0, r4, #0x1d8
	ldr r2, [r0]
	ldr r1, [sp]
	ldr r2, [r2, #8]
	blx r2
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02126744: .word FX_SinCosTable_

	arm_func_start ov3_02126748
ov3_02126748: ; 0x02126748
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	mov r6, r1
	cmp r0, #0
	mov r5, #0
	ble _0212680C
	bl sub_0201001C
	ldr r1, [r4, #0x18]
	sub r1, r1, r6
	str r1, [r4, #0x18]
	cmp r1, #0
	bgt _0212680C
	add r2, r0, #0x1000
	add r1, r0, #0x48
	add r1, r1, #0x1400
	ldr r3, [r2, #0x448]
	ldmib r1, {r0, r5}
	umull r7, r6, r5, r3
	mla r6, r5, r0, r6
	ldr r0, [r1, #0xc]
	ldr ip, [r1, #0x10]
	mla r6, r0, r3, r6
	mov r0, #0
	ldr r5, [r1, #0x14]
	adds r7, ip, r7
	adc r5, r5, r6
	str r7, [r2, #0x448]
	str r5, [r1, #4]
	mov r0, r0, lsl #3
	ldr r7, [r2, #0x448]
	ldr r3, [r1, #8]
	ldr r6, [r1, #0x10]
	umull lr, ip, r3, r7
	mla ip, r3, r5, ip
	ldr r3, [r1, #0xc]
	orr r0, r0, r5, lsr #29
	mla ip, r3, r7, ip
	ldr r5, [r1, #0x14]
	adds r3, r6, lr
	str r3, [r2, #0x448]
	adc r5, r5, ip
	mov r2, #0x19
	umull r2, r3, r5, r2
	str r5, [r1, #4]
	add r2, r3, #5
	mov r1, r2, lsl #0xc
	str r1, [r4, #0x18]
	add r5, r0, #1
	arm_func_end ov3_02126748
_0212680C:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov3_02126814
ov3_02126814: ; 0x02126814
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	str r0, [sp]
	mov r5, r1
	bl sub_0201001C
	ldr r1, [sp]
	mov r4, r0
	ldmib r1, {r2, r3}
	str r2, [r5, #0x5c]
	mov r1, #0x12c000
	str r3, [r5, #0x60]
	str r1, [r5, #0x70]
	str r1, [r5, #0x74]
	bl sub_0201001C
	add r2, r0, #0x1000
	add r1, r0, #0x48
	add r1, r1, #0x1400
	ldr r6, [r2, #0x448]
	ldmib r1, {r0, r7}
	umull sb, r8, r7, r6
	mla r8, r7, r0, r8
	ldr r0, [r1, #0xc]
	ldr sl, [r1, #0x10]
	mla r8, r0, r6, r8
	ldr r7, [r1, #0x14]
	adds sb, sl, sb
	add r3, r4, #0x48
	adc r0, r7, r8
	str sb, [r2, #0x448]
	str r0, [r1, #4]
	add sl, r3, #0x1400
	add r1, r4, #0x1000
	mov r6, #0
	str r1, [sp, #4]
	ldr r3, [r1, #0x448]
	mov r1, r6, lsl #0x10
	orr r1, r1, r0, lsr #16
	mov r0, r1, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r1, asr #4
	mov r6, r0, lsl #1
	add r0, r6, #1
	add fp, r1, #0x4000
	mov r1, r0, lsl #1
	mov r0, r6, lsl #1
	ldr r6, _02126A1C ; =FX_SinCosTable_
	ldmib sl, {r2, lr}
	ldrsh r1, [r6, r1]
	ldrsh r0, [r6, r0]
	umull r7, r6, lr, r3
	mla r6, lr, r2, r6
	ldr ip, [sl, #0xc]
	ldr sb, [sl, #0x10]
	mla r6, ip, r3, r6
	ldr r8, [sl, #0x14]
	adds r3, sb, r7
	ldr r2, [sp, #4]
	adc r6, r8, r6
	str r3, [r2, #0x448]
	mov r2, #0x3000
	umull r2, r3, r6, r2
	str r6, [sl, #4]
	add r6, r3, #0x3000
	smull r3, r2, r6, r1
	smull r1, r0, r6, r0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r3, [r5, #0x64]
	str r1, [r5, #0x68]
	strh fp, [r5, #0x6c]
	mov r0, #0x50
	str r0, [r5, #4]
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	ldr r2, [r1]
	add r0, r2, #1
	str r0, [r1]
	cmp r0, #0x40
	movge r0, #0xa
	strge r0, [r1]
	str r2, [r5, #0x10]
	add r2, r4, #0x1000
	add r0, r4, #0x48
	add r0, r0, #0x1400
	ldr r3, [r2, #0x448]
	ldmib r0, {r1, r4}
	umull r7, r6, r4, r3
	mla r6, r4, r1, r6
	ldr r1, [r0, #0xc]
	ldr r8, [r0, #0x10]
	mla r6, r1, r3, r6
	ldr r4, [r0, #0x14]
	adds r7, r8, r7
	adc r4, r4, r6
	mov r1, #0xb
	umull r1, r3, r4, r1
	str r7, [r2, #0x448]
	str r4, [r0, #4]
	add r1, r3, #7
	str r1, [r5, #0x14]
	mov r1, #0
	str r1, [r5, #0x2c]
	str r1, [r5, #0x30]
	mov r1, #0x20000
	str r1, [r5, #0x34]
	mov r1, #0x40000
	str r1, [r5, #0x38]
	mov r1, #0x4000
	str r1, [r5, #0x4c]
	ldr r3, [r2, #0x448]
	ldmib r0, {r1, r4}
	umull r7, r6, r4, r3
	mla r6, r4, r1, r6
	ldr r1, [r0, #0xc]
	ldr r8, [r0, #0x10]
	mla r6, r1, r3, r6
	ldr r4, [r0, #0x14]
	adds r7, r8, r7
	adc r3, r4, r6
	str r7, [r2, #0x448]
	mov r1, #0x60
	umull r1, r2, r3, r1
	add r1, r2, #0x20
	str r3, [r0, #4]
	mov r0, r1, lsl #0xc
	str r0, [r5, #0x50]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02126A1C: .word FX_SinCosTable_
	arm_func_end ov3_02126814

	arm_func_start ov3_02126A20
ov3_02126A20: ; 0x02126A20
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	add r1, r1, #0x60000
	bl sub_02007254
	sub r5, r0, #0x32000
	mov r0, #0x41
	umull r2, r1, r5, r0
	mov lr, r5, asr #0x1f
	mov r3, lr, lsl #4
	mov ip, r5, lsl #4
	mla r1, lr, r0, r1
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	add r0, r0, #0x1000
	orr r3, r3, r5, lsr #28
	mov r1, ip, lsr #0xc
	orr r1, r1, r3, lsl #20
	str r0, [r4, #0x44]
	add r3, r1, #0x1000
	str r3, [r4, #0x48]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x64]
	mov r1, r1, asr #1
	smull r2, r1, r3, r1
	mov r3, r2, lsr #0xc
	cmp r0, #0
	orr r3, r3, r1, lsl #20
	mov r2, #0
	bge _02126AB4
	ldr r1, [r4, #0x5c]
	sub r0, r2, #0x80000
	add r1, r3, r1
	cmp r1, r0
	movlt r2, #1
	b _02126AC4
	arm_func_end ov3_02126A20
_02126AB4:
	ldr r0, [r4, #0x5c]
	sub r0, r0, r3
	cmp r0, #0x80000
	movgt r2, #1
_02126AC4:
	cmp r2, #0
	bne _02126B04
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bge _02126AF4
	ldr r1, [r4, #0x60]
	mov r0, #0xc0000
	add r1, r3, r1
	rsb r0, r0, #0
	cmp r1, r0
	movlt r2, #1
	b _02126B04
_02126AF4:
	ldr r0, [r4, #0x60]
	sub r0, r0, r3
	cmp r0, #0xc0000
	movgt r2, #1
_02126B04:
	cmp r2, #0
	movne r0, #0
	strne r0, [r4, #0x70]
	strne r0, [r4, #0x74]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov3_02126B18
ov3_02126B18: ; 0x02126B18
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	mov r6, r1
	cmp r0, #0
	mov r5, #0
	ble _02126BDC
	bl sub_0201001C
	ldr r1, [r4, #0x18]
	sub r1, r1, r6
	str r1, [r4, #0x18]
	cmp r1, #0
	bgt _02126BDC
	add r2, r0, #0x1000
	add r1, r0, #0x48
	add r1, r1, #0x1400
	ldr r3, [r2, #0x448]
	ldmib r1, {r0, r5}
	umull r7, r6, r5, r3
	mla r6, r5, r0, r6
	ldr r0, [r1, #0xc]
	ldr ip, [r1, #0x10]
	mla r6, r0, r3, r6
	mov r0, #0
	ldr r5, [r1, #0x14]
	adds r7, ip, r7
	adc r5, r5, r6
	str r7, [r2, #0x448]
	str r5, [r1, #4]
	mov r0, r0, lsl #1
	ldr r7, [r2, #0x448]
	ldr r3, [r1, #8]
	ldr r6, [r1, #0x10]
	umull lr, ip, r3, r7
	mla ip, r3, r5, ip
	ldr r3, [r1, #0xc]
	orr r0, r0, r5, lsr #31
	mla ip, r3, r7, ip
	ldr r5, [r1, #0x14]
	adds r3, r6, lr
	str r3, [r2, #0x448]
	adc r5, r5, ip
	mov r2, #0x14
	umull r2, r3, r5, r2
	str r5, [r1, #4]
	add r2, r3, #0xa
	mov r1, r2, lsl #0xc
	str r1, [r4, #0x18]
	add r5, r0, #1
	arm_func_end ov3_02126B18
_02126BDC:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov3_02126BE4
ov3_02126BE4: ; 0x02126BE4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r0
	mov r4, r1
	bl sub_0201001C
	ldmib r5, {r2, r3}
	str r2, [r4, #0x5c]
	mov r1, #0x12c000
	str r3, [r4, #0x60]
	str r1, [r4, #0x70]
	mov r6, r0
	str r1, [r4, #0x74]
	bl sub_0201001C
	add r1, r0, #0x48
	add r1, r1, #0x1400
	add r0, r0, #0x1000
	ldr r7, [r0, #0x448]
	ldmib r1, {r2, r8}
	umull ip, sb, r8, r7
	mla sb, r8, r2, sb
	ldr r2, [r1, #0xc]
	ldr lr, [r1, #0x10]
	mla sb, r2, r7, sb
	ldr r8, [r1, #0x14]
	adds ip, lr, ip
	str ip, [r0, #0x448]
	adc r2, r8, sb
	add r0, r6, #0x48
	str r2, [r1, #4]
	add r1, r0, #0x1400
	add r6, r6, #0x1000
	ldr r7, [r1, #8]
	ldr lr, [r6, #0x448]
	ldr ip, [r1, #4]
	umull r8, r0, r7, lr
	mov r3, #0
	mla r0, r7, ip, r0
	mov r7, r3, lsl #0x10
	orr r7, r7, r2, lsr #16
	mov r2, r7, lsl #0x10
	ldr r7, [r1, #0x10]
	mov r2, r2, lsr #0x10
	mov ip, r2, asr #4
	adds r8, r7, r8
	ldr r7, [r1, #0xc]
	ldr sb, [r1, #0x14]
	mla r0, r7, lr, r0
	mov r3, r3, lsl #0xd
	adc r0, sb, r0
	str r8, [r6, #0x448]
	mov ip, ip, lsl #1
	str r0, [r1, #4]
	orr r3, r3, r0, lsr #19
	add r1, ip, #1
	add r0, r3, #0x2000
	mov r3, ip, lsl #1
	ldr ip, _02126D58 ; =FX_SinCosTable_
	mov r6, r1, lsl #1
	ldrsh r6, [ip, r6]
	ldrsh r3, [ip, r3]
	add r2, r2, #0x4000
	smull lr, ip, r0, r6
	smull r6, r3, r0, r3
	mov r0, lr, lsr #0xc
	orr r0, r0, ip, lsl #20
	str r0, [r4, #0x64]
	mov r0, r6, lsr #0xc
	orr r0, r0, r3, lsl #20
	str r0, [r4, #0x68]
	mov r1, #0x51
	strh r2, [r4, #0x6c]
	str r1, [r4, #4]
	ldr r1, [r5, #0x1c]
	ldr r2, [r1]
	add r0, r2, #1
	str r0, [r1]
	cmp r0, #0x40
	movge r0, #0xa
	strge r0, [r1]
	ldr r0, _02126D5C ; =0x00000444
	str r2, [r4, #0x10]
	strh r0, [r4, #0x6e]
	mov r0, #0
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	mov r0, #0x20000
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	mov r0, #0x800
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02126D58: .word FX_SinCosTable_
_02126D5C: .word 0x00000444
	arm_func_end ov3_02126BE4

	arm_func_start ov3_02126D60
ov3_02126D60: ; 0x02126D60
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	add r1, r1, #0x60000
	bl sub_02007254
	sub r1, r0, #0x32000
	mov r0, #0x18
	umull r3, r2, r1, r0
	mov r1, r1, asr #0x1f
	mla r2, r1, r0, r2
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #20
	add r0, r0, #0x800
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x50]
	cmp r0, #0
	mov r3, #0
	bge _02126DCC
	ldr r1, [r4, #0x5c]
	sub r0, r3, #0x80000
	add r1, r1, r2, asr #1
	cmp r1, r0
	movlt r3, #1
	b _02126DDC
	arm_func_end ov3_02126D60
_02126DCC:
	ldr r0, [r4, #0x5c]
	sub r0, r0, r2, asr #1
	cmp r0, #0x80000
	movgt r3, #1
_02126DDC:
	cmp r3, #0
	bne _02126E1C
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bge _02126E0C
	ldr r1, [r4, #0x60]
	mov r0, #0xc0000
	add r1, r1, r2, asr #1
	rsb r0, r0, #0
	cmp r1, r0
	movlt r3, #1
	b _02126E1C
_02126E0C:
	ldr r0, [r4, #0x60]
	sub r0, r0, r2, asr #1
	cmp r0, #0xc0000
	movgt r3, #1
_02126E1C:
	cmp r3, #0
	movne r0, #0
	strne r0, [r4, #0x70]
	strne r0, [r4, #0x74]
	ldmia sp!, {r4, pc}

	arm_func_start ov3_02126E30
ov3_02126E30: ; 0x02126E30
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02126E30

	arm_func_start ov3_02126E44
ov3_02126E44: ; 0x02126E44
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02126E44

	arm_func_start ov3_02126E58
ov3_02126E58: ; 0x02126E58
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02126E58

	arm_func_start ov3_02126E6C
ov3_02126E6C: ; 0x02126E6C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02126E6C

	arm_func_start ov3_02126E80
ov3_02126E80: ; 0x02126E80
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02126E80

	arm_func_start ov3_02126E94
ov3_02126E94: ; 0x02126E94
	bx lr
	arm_func_end ov3_02126E94

	arm_func_start ov3_02126E98
ov3_02126E98: ; 0x02126E98
	bx lr
	arm_func_end ov3_02126E98

	arm_func_start ov3_02126E9C
ov3_02126E9C: ; 0x02126E9C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003938
	ldr r0, _02126EC8 ; =ptr_FUN_020420d8_0208e088
	mov r1, #0
	str r0, [r4]
	str r1, [r4, #0x18]
	str r1, [r4, #0x20]
	mov r0, r4
	str r1, [r4, #0x1c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02126EC8: .word ptr_FUN_020420d8_0208e088
	arm_func_end ov3_02126E9C

	arm_func_start ov3_02126ECC
ov3_02126ECC: ; 0x02126ECC
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02127230 ; =ptr_FUN_overlay_3_02127350_overlay_3_0212b218
	mov r4, r0
	ldr ip, _02127234 ; =sub_020051C8
	str r1, [r4]
	ldr r3, _02127238 ; =FUN_02005150
	add r0, r4, #0xc
	mov r1, #1
	mov r2, #0x4c
	str ip, [sp]
	bl __cxa_vec_ctor
	mov r0, #0
	ldr ip, _0212723C ; =sub_020420A8
	strh r0, [r4, #0x5c]
	ldr r3, _02127240 ; =ov3_0212518C
	add r0, r4, #0x60
	mov r1, #2
	mov r2, #0x5c
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x138
	bl sub_02003938
	ldr r0, _02127244 ; =ptr_FUN_overlay_3_02129130_overlay_3_0212b458
	mov r1, #0
	str r0, [r4, #0x138]
	str r1, [r4, #0x150]
	str r1, [r4, #0x158]
	str r1, [r4, #0x15c]
	add r0, r4, #0x168
	str r1, [r4, #0x160]
	bl sub_02005150
	mov r1, #0
	str r1, [r4, #0x1b8]
	str r1, [r4, #0x1bc]
	str r1, [r4, #0x2bc]
	mov r0, #0x1000
	str r0, [r4, #0x2cc]
	mov r0, #1
	str r0, [r4, #0x2d8]
	str r1, [r4, #0x2e0]
	mov r2, #8
	str r2, [r4, #0x2e8]
	str r1, [r4, #0x2ec]
	ldr r0, [r4, #0x2e8]
	cmp r0, #0
	beq _02127014
	ldr r1, _02127248 ; =ov3_021272C8
	ldr r3, _0212724C ; =ov3_02127278
	str r1, [sp]
	mov r1, #0x58
	bl __cxa_vec_new
	str r0, [r4, #0x2e4]
	ldr r1, [r4, #0x2e8]
	mov r5, #0
	mov r0, r5
	cmp r1, #0
	bls _02127008
	mov r1, r5
	mov lr, r5
	mov r2, #0x58
	arm_func_end ov3_02126ECC
_02126FBC:
	ldr r3, [r4, #0x2e4]
	add ip, r0, #1
	add r3, r3, r1
	str r5, [r3, #0x50]
	ldr r3, [r4, #0x2e8]
	add r0, r0, #1
	cmp ip, r3
	ldrlo r3, [r4, #0x2e4]
	mlalo r5, ip, r2, r3
	ldr r3, [r4, #0x2e4]
	movhs r5, lr
	add r3, r3, r1
	str r5, [r3, #0x54]
	ldr ip, [r4, #0x2e4]
	ldr r3, [r4, #0x2e8]
	add r5, ip, r1
	cmp r0, r3
	add r1, r1, #0x58
	blo _02126FBC
_02127008:
	ldr r0, [r4, #0x2e4]
	str r0, [r4, #0x2f0]
	b _0212701C
_02127014:
	str r1, [r4, #0x2e4]
	str r1, [r4, #0x2f0]
_0212701C:
	mov r1, #0
	str r1, [r4, #0x2f4]
	ldr r0, [r4, #0x2d8]
	cmp r0, #0
	streq r1, [r4, #0x2d0]
	streq r1, [r4, #0x2d4]
	beq _02127064
	mov r0, r0, lsl #2
	bl _Znam
	str r0, [r4, #0x2d0]
	ldr r1, [r4, #0x2d8]
	mov r2, r1, lsl #2
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #0x2d8]
	mov r0, r0, lsl #2
	bl _Znam
	str r0, [r4, #0x2d4]
_02127064:
	mov r1, #0
	str r1, [r4, #0x2c8]
	str r1, [r4, #0x2c4]
	mov r0, #0x1000
	str r0, [r4, #0x300]
	mov r0, #1
	str r0, [r4, #0x30c]
	str r1, [r4, #0x314]
	mov r0, #0x40
	str r0, [r4, #0x31c]
	str r1, [r4, #0x320]
	ldr r0, [r4, #0x31c]
	cmp r0, #0
	beq _02127130
	ldr r1, _02127250 ; =ov3_0212732C
	ldr r3, _02127254 ; =ov3_021272DC
	str r1, [sp]
	mov r1, #0x8c
	mov r2, #8
	bl __cxa_vec_new
	str r0, [r4, #0x318]
	ldr r1, [r4, #0x31c]
	mov r5, #0
	mov r0, r5
	cmp r1, #0
	bls _02127124
	mov r1, r5
	mov lr, r5
	mov r2, #0x8c
_021270D8:
	ldr r3, [r4, #0x318]
	add ip, r0, #1
	add r3, r3, r1
	str r5, [r3, #0x84]
	ldr r3, [r4, #0x31c]
	add r0, r0, #1
	cmp ip, r3
	ldrlo r3, [r4, #0x318]
	mlalo r5, ip, r2, r3
	ldr r3, [r4, #0x318]
	movhs r5, lr
	add r3, r3, r1
	str r5, [r3, #0x88]
	ldr ip, [r4, #0x318]
	ldr r3, [r4, #0x31c]
	add r5, ip, r1
	cmp r0, r3
	add r1, r1, #0x8c
	blo _021270D8
_02127124:
	ldr r0, [r4, #0x318]
	str r0, [r4, #0x324]
	b _02127138
_02127130:
	str r1, [r4, #0x318]
	str r1, [r4, #0x324]
_02127138:
	mov r1, #0
	str r1, [r4, #0x328]
	ldr r0, [r4, #0x30c]
	cmp r0, #0
	streq r1, [r4, #0x304]
	streq r1, [r4, #0x308]
	beq _02127180
	mov r0, r0, lsl #2
	bl _Znam
	str r0, [r4, #0x304]
	ldr r1, [r4, #0x30c]
	mov r2, r1, lsl #2
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #0x30c]
	mov r0, r0, lsl #2
	bl _Znam
	str r0, [r4, #0x308]
_02127180:
	mov r3, #0
	str r3, [r4, #0x2fc]
	ldr r0, _02127258 ; =PTR_LAB_overlay_3_02129124_overlay_3_0212b19c
	str r3, [r4, #0x2f8]
	str r0, [r4, #0x32c]
	str r3, [r4, #0x340]
	str r3, [r4, #0x330]
	str r3, [r4, #0x334]
	str r3, [r4, #0x338]
	mov r2, #0x1000
	ldr r0, _0212725C ; =PTR_LAB_overlay_3_02127340_overlay_3_0212b1d4
	str r2, [r4, #0x33c]
	str r0, [r4, #0x32c]
	str r3, [r4, #0x344]
	str r3, [r4, #0x348]
	ldr r1, _02127260 ; =PTR_LAB_overlay_3_02127344_overlay_3_0212b118
	str r3, [r4, #0x34c]
	str r1, [r4, #0x350]
	ldr r0, _02127264 ; =PTR_LAB_overlay_3_02129128_overlay_3_0212b1b8
	ldr ip, _02127268 ; =sub_020420D8
	str r0, [r4, #0x354]
	str r3, [r4, #0x368]
	str r3, [r4, #0x358]
	str r3, [r4, #0x35c]
	str r3, [r4, #0x360]
	str r2, [r4, #0x364]
	ldr r0, _0212726C ; =PTR_LAB_overlay_3_02127348_overlay_3_0212b180
	mov r1, #0xa
	str r0, [r4, #0x354]
	str r3, [r4, #0x36c]
	ldr r0, _02127270 ; =PTR_LAB_overlay_3_0212734c_overlay_3_0212b154
	ldr r3, _02127274 ; =ov3_02126E9C
	str r0, [r4, #0x370]
	add r0, r4, #0x374
	mov r2, #0x64
	str ip, [sp]
	bl __cxa_vec_ctor
	mov r1, #0
	add r0, r4, #0x58
	mov r2, #4
	strb r1, [r4, #0x804]
	bl MI_CpuFill8
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02127230: .word ptr_FUN_overlay_3_02127350_overlay_3_0212b218
_02127234: .word sub_020051C8
_02127238: .word sub_02005150
_0212723C: .word sub_020420A8
_02127240: .word ov3_0212518C
_02127244: .word ptr_FUN_overlay_3_02129130_overlay_3_0212b458
_02127248: .word ov3_021272C8
_0212724C: .word ov3_02127278
_02127250: .word ov3_0212732C
_02127254: .word ov3_021272DC
_02127258: .word PTR_LAB_overlay_3_02129124_overlay_3_0212b19c
_0212725C: .word PTR_LAB_overlay_3_02127340_overlay_3_0212b1d4
_02127260: .word PTR_LAB_overlay_3_02127344_overlay_3_0212b118
_02127264: .word PTR_LAB_overlay_3_02129128_overlay_3_0212b1b8
_02127268: .word sub_020420D8
_0212726C: .word PTR_LAB_overlay_3_02127348_overlay_3_0212b180
_02127270: .word PTR_LAB_overlay_3_0212734c_overlay_3_0212b154
_02127274: .word ov3_02126E9C

	arm_func_start ov3_02127278
ov3_02127278: ; 0x02127278
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003988
	ldr r1, _021272AC ; =PTR_LAB_overlay_3_021272b4_overlay_3_0212b12c
	mov r0, #0
	str r1, [r4]
	str r0, [r4, #0x4c]
	mov r0, #8
	ldr r1, _021272B0 ; =0x00000622
	str r0, [r4, #0x10]
	mov r0, r4
	str r1, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021272AC: .word PTR_LAB_overlay_3_021272b4_overlay_3_0212b12c
_021272B0: .word 0x00000622
	arm_func_end ov3_02127278

	arm_func_start ov3_021272B4
ov3_021272B4: ; 0x021272B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003A18
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_021272B4

	arm_func_start ov3_021272C8
ov3_021272C8: ; 0x021272C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003A18
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_021272C8

	arm_func_start ov3_021272DC
ov3_021272DC: ; 0x021272DC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020040C8
	ldr r1, _02127310 ; =PTR_LAB_overlay_3_02127318_overlay_3_0212b140
	mov r0, #0
	str r1, [r4]
	str r0, [r4, #0x80]
	mov r0, #8
	ldr r1, _02127314 ; =0x00000622
	str r0, [r4, #0x10]
	mov r0, r4
	str r1, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02127310: .word PTR_LAB_overlay_3_02127318_overlay_3_0212b140
_02127314: .word 0x00000622
	arm_func_end ov3_021272DC

	arm_func_start ov3_02127318
ov3_02127318: ; 0x02127318
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02004190
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02127318

	arm_func_start ov3_0212732C
ov3_0212732C: ; 0x0212732C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02004190
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_0212732C

	arm_func_start ov3_02127340
ov3_02127340: ; 0x02127340
	bx lr
	arm_func_end ov3_02127340

	arm_func_start ov3_02127344
ov3_02127344: ; 0x02127344
	bx lr
	arm_func_end ov3_02127344

	arm_func_start ov3_02127348
ov3_02127348: ; 0x02127348
	bx lr
	arm_func_end ov3_02127348

	arm_func_start ov3_0212734C
ov3_0212734C: ; 0x0212734C
	bx lr
	arm_func_end ov3_0212734C

	arm_func_start ov3_02127350
ov3_02127350: ; 0x02127350
	stmdb sp!, {r4, lr}
	ldr r1, _02127470 ; =ptr_FUN_overlay_3_02127350_overlay_3_0212b218
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r3, _02127474 ; =sub_020420D8
	add r0, r4, #0x374
	mov r1, #0xa
	mov r2, #0x64
	bl __cxa_vec_cleanup
	ldr r0, [r4, #0x308]
	cmp r0, #0
	beq _021273A8
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x308]
	arm_func_end ov3_02127350
_021273A8:
	ldr r0, [r4, #0x304]
	cmp r0, #0
	beq _021273C0
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x304]
_021273C0:
	ldr r0, [r4, #0x318]
	cmp r0, #0
	beq _021273E4
	ldr r3, _02127478 ; =ov3_0212732C
	mov r1, #0x8c
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x318]
_021273E4:
	ldr r0, [r4, #0x2d4]
	cmp r0, #0
	beq _021273FC
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x2d4]
_021273FC:
	ldr r0, [r4, #0x2d0]
	cmp r0, #0
	beq _02127414
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x2d0]
_02127414:
	ldr r0, [r4, #0x2e4]
	cmp r0, #0
	beq _02127438
	ldr r3, _0212747C ; =ov3_021272C8
	mov r1, #0x58
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x2e4]
_02127438:
	add r0, r4, #0x138
	bl ov3_02129130
	ldr r3, _02127480 ; =sub_020420A8
	add r0, r4, #0x60
	mov r1, #2
	mov r2, #0x5c
	bl __cxa_vec_cleanup
	ldr r3, _02127484 ; =sub_020051C8
	add r0, r4, #0xc
	mov r1, #1
	mov r2, #0x4c
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02127470: .word ptr_FUN_overlay_3_02127350_overlay_3_0212b218
_02127474: .word sub_020420D8
_02127478: .word ov3_0212732C
_0212747C: .word ov3_021272C8
_02127480: .word sub_020420A8
_02127484: .word sub_020051C8

	arm_func_start ov3_02127488
ov3_02127488: ; 0x02127488
	stmdb sp!, {r4, lr}
	ldr r1, _021275B0 ; =ptr_FUN_overlay_3_02127350_overlay_3_0212b218
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r3, _021275B4 ; =sub_020420D8
	add r0, r4, #0x374
	mov r1, #0xa
	mov r2, #0x64
	bl __cxa_vec_cleanup
	ldr r0, [r4, #0x308]
	cmp r0, #0
	beq _021274E0
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x308]
	arm_func_end ov3_02127488
_021274E0:
	ldr r0, [r4, #0x304]
	cmp r0, #0
	beq _021274F8
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x304]
_021274F8:
	ldr r0, [r4, #0x318]
	cmp r0, #0
	beq _0212751C
	ldr r3, _021275B8 ; =ov3_0212732C
	mov r1, #0x8c
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x318]
_0212751C:
	ldr r0, [r4, #0x2d4]
	cmp r0, #0
	beq _02127534
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x2d4]
_02127534:
	ldr r0, [r4, #0x2d0]
	cmp r0, #0
	beq _0212754C
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x2d0]
_0212754C:
	ldr r0, [r4, #0x2e4]
	cmp r0, #0
	beq _02127570
	ldr r3, _021275BC ; =ov3_021272C8
	mov r1, #0x58
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x2e4]
_02127570:
	add r0, r4, #0x138
	bl ov3_02129130
	ldr r3, _021275C0 ; =sub_020420A8
	add r0, r4, #0x60
	mov r1, #2
	mov r2, #0x5c
	bl __cxa_vec_cleanup
	ldr r3, _021275C4 ; =sub_020051C8
	add r0, r4, #0xc
	mov r1, #1
	mov r2, #0x4c
	bl __cxa_vec_cleanup
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021275B0: .word ptr_FUN_overlay_3_02127350_overlay_3_0212b218
_021275B4: .word sub_020420D8
_021275B8: .word ov3_0212732C
_021275BC: .word ov3_021272C8
_021275C0: .word sub_020420A8
_021275C4: .word sub_020051C8

	arm_func_start ov3_021275C8
ov3_021275C8: ; 0x021275C8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0212760C
	ldr r2, _02127648 ; =s_OPD_i019_NCLR_overlay_3_0212b3fc
	ldr r1, _0212764C ; =s_OPD_i019_00_NCER_overlay_3_0212b40c
	str r2, [sp]
	ldr ip, _02127650 ; =s_OPD_i019_00_cac_overlay_3_0212b420
	str r1, [sp, #4]
	ldr r1, _02127654 ; =s_OPD_overlay_3_0212b3c8
	ldr r2, _02127658 ; =s_data_interface_i019_LZ_bin_overlay_3_0212b3cc
	ldr r3, _0212765C ; =s_OPD_i019_00_NCBR_overlay_3_0212b3e8
	str ip, [sp, #8]
	bl sub_0201AAE0
	arm_func_end ov3_021275C8
_0212760C:
	str r0, [r4, #0x58]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0212762C
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	strh r0, [r4, #0x5c]
_0212762C:
	mov r0, r4
	bl ov3_02127B34
	add r0, r4, #0x138
	mov r1, #0x400
	bl ov3_02129198
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02127648: .word s_OPD_i019_NCLR_overlay_3_0212b3fc
_0212764C: .word s_OPD_i019_00_NCER_overlay_3_0212b40c
_02127650: .word s_OPD_i019_00_cac_overlay_3_0212b420
_02127654: .word s_OPD_overlay_3_0212b3c8
_02127658: .word s_data_interface_i019_LZ_bin_overlay_3_0212b3cc
_0212765C: .word s_OPD_i019_00_NCBR_overlay_3_0212b3e8

	arm_func_start ov3_02127660
ov3_02127660: ; 0x02127660
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x138
	bl ov3_02129280
	ldr r0, [r5, #0x1b8]
	cmp r0, #0
	beq _02127688
	bl _ZdaPv
	mov r0, #0
	str r0, [r5, #0x1b8]
	arm_func_end ov3_02127660
_02127688:
	ldrh r1, [r5, #0x5c]
	cmp r1, #0
	ldrne r0, [r5, #0x58]
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _021276AC
	bl sub_02008B80
	mov r0, #0
	strh r0, [r5, #0x5c]
_021276AC:
	ldr r4, [r5, #0x58]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _021276CC
	mov r0, r4
	bl sub_0201AB14
	mov r0, r4
	bl _ZdlPv
_021276CC:
	mov r0, #0
	str r0, [r5, #0x58]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov3_021276D8
ov3_021276D8: ; 0x021276D8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	mov r4, r0
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	mov r5, r1
	ldr r2, _02127B1C ; =0x00007FFF
	str r0, [sp]
	mov r1, #0x1f
	mov r3, #0x3f
	bl G3X_SetClearColor
	ldr r1, [r4, #0x58]
	mov r0, #0
	ldmia r1, {r2, r3, r6}
	str r2, [r4, #0x38]
	str r0, [r4, #0x3c]
	str r3, [r4, #0x40]
	str r6, [r4, #0x44]
	str r0, [r4, #0x24]
	mov r1, #0x64
	str r0, [r4, #0x28]
	str r1, [r4, #0x10]
	ldr r1, _02127B20 ; =DAT_overlay_3_0212b378
	mov r2, r4
	str r0, [r4, #0x20]
	mov r3, #0x2c
	arm_func_end ov3_021276D8
_02127744:
	ldr r6, [r1, #0x20]
	add r0, r0, #1
	mla r7, r6, r3, r5
	str r7, [r2, #0x78]
	ldr sb, [r1, #0x1c]
	ldr r8, [r1, #0x18]
	ldr r7, [r1, #0x14]
	ldr r6, [r1, #0x10]
	cmp r0, #2
	str r6, [r2, #0x8c]
	str r7, [r2, #0x90]
	str r8, [r2, #0x94]
	str sb, [r2, #0x98]
	ldr r6, [r1]
	str r6, [r2, #0x9c]
	ldr r6, [r1, #4]
	str r6, [r2, #0xa0]
	ldr r6, [r1, #8]
	str r6, [r2, #0xac]
	ldr r6, [r1, #0xc]
	str r6, [r2, #0xb0]
	ldr r6, [r1, #0x24]
	add r1, r1, #0x28
	str r6, [r2, #0x64]
	add r2, r2, #0x5c
	blt _02127744
	ldr r0, _02127B24 ; =DAT_overlay_3_0212b378
	mov r1, #0
	str r1, [r4, #0x74]
	ldr r1, [r0, #0x48]
	mov r0, #0x2c
	mla r2, r1, r0, r5
	mov r0, #4
	sub r1, r0, #8
	ldr r7, [r2, #0xc]
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r1, _02127B1C ; =0x00007FFF
	mov r6, r0
	strh r1, [r6]
	bl GX_BeginLoadTexPltt
	mov r0, r6
	mov r1, #4
	bl DC_FlushRange
	mov r0, r6
	mov r1, r7
	mov r2, #4
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
	mov r0, r6
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x160]
	add r0, r5, #0x1e4
	str r0, [r4, #0x150]
	ldr r1, [r4, #0x1b8]
	ldr r2, [r4, #0x1bc]
	add r0, r4, #0x138
	bl ov3_021292FC
	ldr r0, _02127B28 ; =DAT_overlay_3_0212a688
	ldmia r0, {r1, r2}
	str r1, [r4, #0x330]
	str r2, [r4, #0x334]
	ldr r0, [r4, #0x30c]
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	cmp r0, #0
	bls _02127860
	ldr r1, [r4, #0x304]
	cmp r1, #0
	addne r0, r4, #0x32c
	strne r0, [r1]
_02127860:
	add r1, r4, #0x350
	ldr r0, [sp, #0x18]
	str r1, [r4, #0x314]
	str r0, [r4, #0x358]
	str r2, [r4, #0x35c]
	ldr r0, [r4, #0x2d8]
	cmp r0, #0
	bls _02127890
	ldr r1, [r4, #0x2d0]
	cmp r1, #0
	addne r0, r4, #0x354
	strne r0, [r1]
_02127890:
	add r0, r4, #0x370
	str r0, [r4, #0x2e0]
	bl sub_0201001C
	add r1, r4, #0x35c
	str r0, [sp, #4]
	add r0, r1, #0x400
	mov r1, #0
	mov r2, #0xa0
	bl MI_CpuFill8
	ldr r0, [sp, #4]
	mov r7, #0
	add r0, r0, #0x48
	add r8, r0, #0x1400
	mov r0, #0x70000
	str r0, [sp, #0xc]
	add r0, r5, #0x58
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov sb, r4
	rsb r0, r0, #0
	mov sl, r7
	str r0, [sp, #0xc]
_021278E8:
	ldr r0, [sp, #8]
	mov ip, #0
	str r0, [sb, #0x38c]
	mov r0, #0
	str r0, [sb, #0x3c0]
	str r0, [sb, #0x3b8]
	str r0, [sb, #0x3d4]
	str r0, [sb, #0x3bc]
	mov r0, #0x20000
	str r0, [sb, #0x3d0]
	str r0, [sb, #0x3c8]
	mov r0, #0x40000
	str r0, [sb, #0x3cc]
	str r0, [sb, #0x3c4]
	mov r0, #0
	str r0, [sb, #0x398]
	ldr r0, [sp, #0xc]
	mov ip, ip, lsl #5
	str r0, [sb, #0x39c]
	mov r0, #0
	str r0, [sb, #0x3b0]
	ldr r0, [sp, #0xc]
	str ip, [sp, #0x10]
	str r0, [sb, #0x3b4]
	rsb r0, r7, #0x3f
	str r0, [sb, #0x384]
	add r0, r4, r7, lsl #4
	add ip, r0, #0x700
	ldr r3, [r8, #8]
	ldmia r8, {r1, fp}
	str ip, [sp, #0x14]
	umull lr, ip, r3, r1
	mla ip, r3, fp, ip
	ldr r2, [r8, #0xc]
	ldr r6, [r8, #0x10]
	mla ip, r2, r1, ip
	ldr r5, [r8, #0x14]
	adds r1, r6, lr
	adc r2, r5, ip
	stmia r8, {r1, r2}
	mov r1, #0x32
	umull r1, r3, r2, r1
	mov r1, #0
	mov r2, r1
	mov r1, #0x32
	mla r3, r2, r1, r3
	add r1, r3, #0x32
	mov r1, r1, lsl #0xc
	str r1, [r0, #0x768]
	mov r1, #0x8000
	str r1, [r0, #0x760]
	ldr lr, [r8]
	ldmib r8, {r1, r3}
	umull r6, r5, r3, lr
	mla r5, r3, r1, r5
	ldr r2, [r8, #0xc]
	ldr ip, [r8, #0x10]
	mla r5, r2, lr, r5
	ldr fp, [r8, #0x14]
	adds r1, ip, r6
	adc r2, fp, r5
	stmia r8, {r1, r2}
	ldr r1, [sp, #0x10]
	orr r1, r1, r2, lsr #27
	ldr r2, [r0, #0x760]
	str r1, [sp, #0x10]
	add r1, r2, r1, lsl #12
	str r1, [r0, #0x764]
	ldr r1, [r8]
	ldmib r8, {r0, r3}
	umull r6, r5, r3, r1
	mla r5, r3, r0, r5
	ldr r2, [r8, #0xc]
	ldr ip, [r8, #0x10]
	mla r5, r2, r1, r5
	ldr fp, [r8, #0x14]
	adds r0, ip, r6
	adc r1, fp, r5
	stmia r8, {r0, r1}
	mov r0, #0x24
	umull r0, r2, r1, r0
	mov r0, #0
	mov r1, r0
	mov r0, #0x24
	mla r2, r1, r0, r2
	add r0, sl, r2
	sub r2, r0, #0x12
	ldr r0, _02127B2C ; =0xB60B60B7
	mov r3, r2, lsl #0x10
	smull r1, r5, r0, r3
	add r5, r5, r2, lsl #16
	mov r0, r3, lsr #0x1f
	add r5, r0, r5, asr #8
	ldr r0, [sp, #0x14]
	strh r5, [r0, #0x5c]
	ldr r1, [r8]
	ldmib r8, {r0, r3}
	umull r6, r5, r3, r1
	mla r5, r3, r0, r5
	ldr r2, [r8, #0xc]
	ldr ip, [r8, #0x10]
	mla r5, r2, r1, r5
	ldr fp, [r8, #0x14]
	adds r1, ip, r6
	adc r0, fp, r5
	str r1, [r8]
	str r0, [r8, #4]
	mov r0, #0
	ldr r1, [r8, #4]
	mov r0, r0, lsl #0xe
	orr r0, r0, r1, lsr #18
	add r1, r0, #0x4000
	ldr r0, _02127B30 ; =0x6C16C16D
	add r7, r7, #1
	umull r0, r2, r1, r0
	sub r0, r1, r2
	add r2, r2, r0, lsr #1
	ldr r0, [sp, #0x14]
	mov r2, r2, lsr #8
	strh r2, [r0, #0x5e]
	add sb, sb, #0x64
	add sl, sl, #0x24
	cmp r7, #0xa
	blt _021278E8
	mov r0, #0
	str r0, [r4, #0x7fc]
	strb r0, [r4, #0x804]
	ldr r0, [sp, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [sp, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02127B1C: .word 0x00007FFF
_02127B20: .word DAT_overlay_3_0212b378
_02127B24: .word DAT_overlay_3_0212b378
_02127B28: .word DAT_overlay_3_0212a688
_02127B2C: .word 0xB60B60B7
_02127B30: .word 0x6C16C16D

	arm_func_start ov3_02127B34
ov3_02127B34: ; 0x02127B34
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x30
	str r0, [sp]
	bl sub_0201001C
	str r0, [sp, #0x2c]
	mov r0, #0x2000
	bl _Znam
	ldr r1, [sp, #0x2c]
	mov r3, #0
	add r2, r1, #0x48
	ldr r1, [sp]
	str r0, [r1, #0x1b8]
	add r1, r2, #0x1400
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x2c]
	add r2, r1, #0x1000
	ldr r1, [sp, #0x1c]
	ldr r5, [r2, #0x448]
	ldmib r1, {r4, r6}
	umull r8, r7, r6, r5
	mla r7, r6, r4, r7
	ldr r4, [r1, #0xc]
	ldr sb, [r1, #0x10]
	mla r7, r4, r5, r7
	ldr r1, [r1, #0x14]
	adds r6, sb, r8
	adc r4, r1, r7
	str r6, [r2, #0x448]
	ldr r1, [sp, #0x1c]
	ldr r2, _02127EDC ; =FX_SinCosTable_+0x3800
	str r4, [r1, #4]
	mov r1, r3, lsl #4
	orr r1, r1, r4, lsr #28
	add r3, r1, #0x1c
	ldrsh r1, [r2, #2]
	mov r4, r0
	ldr r0, [sp]
	str r1, [sp, #4]
	ldrsh r1, [r2]
	str r0, [sp, #0x18]
	add r0, r0, #0x18
	str r0, [sp, #0x14]
	mov r0, #0
	str r1, [sp, #0xc]
	mov ip, r3, lsl #0xc
	str r0, [sp, #0x28]
	arm_func_end ov3_02127B34
_02127BEC:
	ldr r0, [sp, #0x18]
	mov r1, #0xe000
	add r0, r0, #0x100
	strh r1, [r0, #0xc0]
	ldr r0, [sp, #0x1c]
	mov lr, #0xc000
	ldr r1, [r0, #8]
	ldr r2, [r0]
	ldr r0, [r0, #4]
	umull r5, r3, r1, r2
	mla r3, r1, r0, r3
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0x10]
	ldr r6, [r0, #0x14]
	ldr r0, [r0, #0xc]
	adds r5, r1, r5
	mla r3, r0, r2, r3
	mov r1, #0
	ldr r0, [sp, #0x1c]
	adc r2, r6, r3
	mov r1, r1, lsl #4
	str r5, [r0]
	orr r1, r1, r2, lsr #28
	str r2, [r0, #4]
	add r0, r1, #0x26
	mov r5, r0, lsl #0xc
	ldr r0, [sp, #0x14]
	str r5, [r0, #0x1c4]
	str ip, [r0, #0x1c8]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r0, r0, asr #0x1f
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	add r0, r0, #0x48
	add r6, r0, #0x1400
_02127C8C:
	mov r0, lr, asr #4
	mov r2, r0, lsl #1
	ldr r0, _02127EE0 ; =FX_SinCosTable_
	mov r1, r2, lsl #1
	ldrsh r1, [r0, r1]
	add r0, r0, r2, lsl #1
	sub r7, lr, #0x200
	smull r2, r1, ip, r1
	mov r3, r2, lsr #0xc
	orr r3, r3, r1, lsl #20
	ldrsh r0, [r0, #2]
	mov r7, r7, lsl #0x10
	mov lr, r7, lsr #0x10
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r7, _02127EE4 ; =0x00003FFF
	ldr r8, [sp, #4]
	tst lr, r7
	umull sb, r7, r8, r1
	mov r0, r1, asr #0x1f
	mla r7, r8, r0, r7
	ldr r8, [sp, #8]
	mov sb, sb, lsr #0xc
	mla r7, r8, r1, r7
	ldr r8, [sp, #0xc]
	orr sb, sb, r7, lsl #20
	umull sl, r7, r8, r3
	mov r8, sl, lsr #0xc
	ldr sl, [sp, #0xc]
	mov r2, r3, asr #0x1f
	mla r7, sl, r2, r7
	ldr sl, [sp, #0x10]
	mla r7, sl, r3, r7
	orr r8, r8, r7, lsl #20
	sub r7, sb, r8
	ldr sb, [sp, #0xc]
	str r7, [r4]
	umull r8, r7, sb, r1
	mla r7, sb, r0, r7
	mov r0, sl
	mla r7, r0, r1, r7
	mov r0, r8, lsr #0xc
	ldr r1, [sp, #4]
	orr r0, r0, r7, lsl #20
	umull r8, r7, r1, r3
	mla r7, r1, r2, r7
	ldr r1, [sp, #8]
	mla r7, r1, r3, r7
	mov r1, r8, lsr #0xc
	orr r1, r1, r7, lsl #20
	add r0, r0, r1
	sub r0, r0, #0x70000
	str r0, [r4, #4]
	bne _02127E1C
	ldr r0, [sp, #0x24]
	cmp r0, #0x7f
	beq _02127E1C
	mov r0, lr, asr #0xe
	and r0, r0, #3
	str r0, [sp, #0x20]
	tst r0, #1
	ldr r1, [r6, #0x10]
	mov r2, #0
	ldr r0, [r6, #0x14]
	beq _02127DD0
	ldr r5, [r6]
	ldmib r6, {r3, r8}
	umull sl, sb, r8, r5
	mla sb, r8, r3, sb
	ldr r7, [r6, #0xc]
	adds r1, r1, sl
	mla sb, r7, r5, sb
	mov r2, r2, lsl #4
	adc r0, r0, sb
	str r1, [r6]
	orr r2, r2, r0, lsr #28
	str r0, [r6, #4]
	add r0, r2, #0x26
	mov r5, r0, lsl #0xc
	b _02127E08
_02127DD0:
	ldr r7, [r6]
	ldmib r6, {r3, sb}
	umull ip, sl, sb, r7
	mla sl, sb, r3, sl
	ldr r8, [r6, #0xc]
	adds r1, r1, ip
	mla sl, r8, r7, sl
	mov r2, r2, lsl #4
	adc r0, r0, sl
	str r1, [r6]
	orr r2, r2, r0, lsr #28
	str r0, [r6, #4]
	add r0, r2, #0x1c
	mov ip, r0, lsl #0xc
_02127E08:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r1, r0, lsl #3
	str r5, [r0, #0x1c4]
	str ip, [r0, #0x1c8]
_02127E1C:
	ldr r0, [sp, #0x24]
	add r4, r4, #8
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #0x80
	blt _02127C8C
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #6
	ldr r0, [sp, #0x18]
	add r0, r0, #0x24
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #0x24
	str r0, [sp, #0x14]
	blt _02127BEC
	mov r0, #0xa0000
	ldr r5, [r4, #-8]
	rsb r0, r0, #0
	sub r2, r0, r5
	mov r0, r2, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r2, lsr #20
	mov r0, r2, lsl #0xc
	mov r2, #0x1e000
	mov r3, #0
	ldr r6, [r4, #-4]
	bl _ll_div
	mov r1, #0
_02127E94:
	add r5, r5, r0
	add r1, r1, #0x1000
	str r5, [r4]
	sub r6, r6, r0
	str r6, [r4, #4]
	cmp r1, #0x1e000
	add r4, r4, #8
	blt _02127E94
	ldr r0, [sp]
	ldr r0, [r0, #0x1b8]
	sub r1, r4, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r1, r0, asr #3
	ldr r0, [sp]
	str r1, [r0, #0x1bc]
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02127EDC: .word FX_SinCosTable_+0x3800
_02127EE0: .word FX_SinCosTable_
_02127EE4: .word 0x00003FFF

	arm_func_start ov3_02127EE8
ov3_02127EE8: ; 0x02127EE8
	stmdb sp!, {r3, lr}
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0
	bl sub_02034ED8
	ldmia sp!, {r3, pc}
	arm_func_end ov3_02127EE8

	arm_func_start ov3_02127F04
ov3_02127F04: ; 0x02127F04
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x28
	mov r4, r0
	bl sub_0201001C
	mov r5, r0
	ldr r0, [r4, #8]
	ldr r2, [r5, #0x14]
	cmp r0, #3
	ldr r1, [r5, #0x18]
	bgt _02127F88
	ldrh r0, [r2, #2]
	and r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldreqb r0, [r1, #4]
	cmpeq r0, #0
	beq _02127F88
	add r0, r5, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfa
	bl sub_02034C44
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #2
	mov r2, #0x1e
	bl sub_0200E0E0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #2
	mov r2, #0x1e
	bl sub_0200E0E0
	mov r0, #6
	str r0, [r4, #8]
	arm_func_end ov3_02127F04
_02127F88:
	ldr r0, [r4, #8]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02128428
_02127F98: ; jump table
	b _02127FB4 ; case 0
	b _02128000 ; case 1
	b _02128090 ; case 2
	b _021281FC ; case 3
	b _021281FC ; case 4
	b _021283C8 ; case 5
	b _021283E4 ; case 6
_02127FB4:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02128428
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02128428
	mov r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0x354
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	b _02128428
_02128000:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	ble _02128428
	mov r0, #2
	str r0, [r4, #8]
	mov r3, #0
	str r3, [r4, #4]
	mov r0, #0x90000
	str r0, [r4, #0x118]
	ldr r0, [r4, #0x1b8]
	mov r1, #0x30000
	ldr r2, [r0, #4]
	sub r0, r1, #0x36000
	str r2, [r4, #0x11c]
	str r1, [r4, #0x120]
	str r0, [r4, #0x124]
	str r3, [r4, #0x128]
	ldr r0, _021289A4 ; =0xFFFFFB34
	str r3, [r4, #0x12c]
	str r0, [r4, #0x130]
	str r3, [r4, #0x134]
	ldr r2, [r4, #0x11c]
	ldr r1, [r4, #0x120]
	ldr r0, [r4, #0x118]
	sub r1, r2, r1
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	mov r0, #0x1f
	str r0, [r4, #0x20]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xa1
	bl sub_02034C44
	b _02128428
_02128090:
	ldr r2, [r4, #0x11c]
	ldr r1, [r4, #0x120]
	ldr r0, [r4, #0x118]
	sub r1, r2, r1
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	ldr r1, [r4, #0x134]
	cmp r1, #2
	bhs _02128160
	ldr r0, [r4, #0x120]
	cmp r0, #0
	bgt _02128180
	add r0, r1, #1
	str r0, [r4, #0x134]
	cmp r0, #1
	bne _02128124
	mov r0, #0
	str r0, [r4, #0x120]
	ldr r2, [r4, #0x124]
	mov r0, #0x2800
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xb
	mov r3, r2, lsl #0xb
	orr r1, r1, r2, lsr #21
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r4, #0x124]
	ldr r2, [r4, #0x128]
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xb
	mov r3, r2, lsl #0xb
	orr r1, r1, r2, lsr #21
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r4, #0x128]
	str r0, [r4, #0x12c]
	b _0212814C
_02128124:
	cmp r0, #2
	bne _0212814C
	mov r0, #0
	str r0, [r4, #0x120]
	str r0, [r4, #0x124]
	str r0, [r4, #0x128]
	str r0, [r4, #0x12c]
	str r0, [r4, #0x130]
	mov r0, #0x2d
	str r0, [r4, #4]
_0212814C:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x99
	bl sub_02034C44
	b _02128180
_02128160:
	bne _02128180
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0
	ldrle r0, [r4, #0x134]
	addle r0, r0, #1
	strle r0, [r4, #0x134]
_02128180:
	ldr r0, [r4, #0x134]
	cmp r0, #3
	bhs _021281D0
	ldr r1, [r4, #0x118]
	ldr r0, [r4, #0x124]
	add r0, r1, r0
	str r0, [r4, #0x118]
	ldr r1, [r4, #0x11c]
	ldr r0, [r4, #0x128]
	add r0, r1, r0
	str r0, [r4, #0x11c]
	ldr r1, [r4, #0x120]
	ldr r0, [r4, #0x12c]
	add r0, r1, r0
	str r0, [r4, #0x120]
	ldr r1, [r4, #0x12c]
	ldr r0, [r4, #0x130]
	add r0, r1, r0
	str r0, [r4, #0x12c]
	b _02128428
_021281D0:
	mov r0, #3
	str r0, [r4, #8]
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #0x2bc]
	strb r1, [r4, #0x2c0]
	str r1, [r4, #0x800]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034E48
	b _02128428
_021281FC:
	ldr r0, [r4, #0x58]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02128210
	bl sub_020089EC
_02128210:
	ldr r0, [r4, #0x2bc]
	str r0, [r4, #0x160]
	ldr r1, [r4, #0x2bc]
	cmp r1, #0
	beq _02128264
	ldr r0, [r4, #0x1bc]
	cmp r1, r0
	bhi _02128264
	mov r0, #0x1f
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x2bc]
	ldr r2, [r4, #0x1b8]
	sub r1, r0, #1
	add r0, r2, r1, lsl #3
	ldr r1, [r2, r1, lsl #3]
	ldr r0, [r0, #4]
	str r1, [sp, #0x20]
	str r1, [r4, #0x24]
	str r0, [sp, #0x24]
	str r0, [r4, #0x28]
	b _0212826C
_02128264:
	mov r0, #0
	str r0, [r4, #0x20]
_0212826C:
	ldr r0, [r4, #0x2bc]
	add r1, r0, #8
	str r1, [r4, #0x2bc]
	ldr r0, [r4, #0x1bc]
	cmp r1, r0
	bhi _0212833C
	tst r1, #0x7f
	bne _0212833C
	ldrb r2, [r4, #0x2c0]
	mov r1, #0x14
	add r3, r4, #0x1c0
	mov r0, #0x24
	mla r0, r2, r0, r3
	str r1, [r4, #0x344]
	str r0, [r4, #0x348]
	ldrb r1, [r4, #0x2c0]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x48c]
	cmp r1, #5
	bhi _021282C8
	add r1, r1, #0x1a
	bl sub_02034C44
	b _021282D0
_021282C8:
	mov r1, #0x1f
	bl sub_02034C44
_021282D0:
	ldrb r0, [r4, #0x2c0]
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r4, #0x2c0]
	cmp r0, #2
	bne _021282F8
	mov r0, #0x1f
	str r0, [r4, #0x74]
	mov r0, #0x40
	str r0, [r4, #0x800]
_021282F8:
	ldrb r0, [r4, #0x2c0]
	cmp r0, #5
	bne _0212833C
	mov r0, #0x800
	str r0, [r4, #0x7fc]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #2
	mov r2, #0x1e
	bl sub_0200E0E0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #2
	mov r2, #0x1e
	bl sub_0200E0E0
	mov r0, #4
	str r0, [r4, #8]
_0212833C:
	ldr r0, [r4, #0x800]
	str r0, [r4, #0xa8]
	str r0, [r4, #0xa4]
	ldrb r0, [r4, #0x2c0]
	cmp r0, #5
	ldr r0, [r4, #0x800]
	addlo r0, r0, #0x40
	addhs r0, r0, #0x800
	str r0, [r4, #0x800]
	ldr r0, [r4, #8]
	cmp r0, #4
	bne _02128428
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02128428
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02128428
	ldr r1, [r4, #0x2bc]
	ldr r0, [r4, #0x1bc]
	cmp r1, r0
	bls _02128428
	mov r0, #0x5a
	str r0, [r4, #4]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xb
	bl sub_02034C5C
	mov r0, #5
	str r0, [r4, #8]
	b _02128428
_021283C8:
	ldr r0, [r4, #4]
	subs r0, r0, #1
	str r0, [r4, #4]
	bpl _02128428
	add sp, sp, #0x28
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021283E4:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02128428
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02128428
	add r0, r5, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xb
	bl sub_02034C5C
	add sp, sp, #0x28
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02128428:
	ldr r5, [r4, #0x320]
	ldr r8, [r4, #0x300]
	cmp r5, #0
	beq _02128558
	mov sb, #0
	mov r7, r8, asr #0x1f
	mov sl, sb
_02128444:
	ldr r0, [r5, #0x78]
	ldr r6, [r5, #0x88]
	cmp r0, #0
	beq _02128508
	ldr r0, [r4, #0x314]
	cmp r0, #0
	beq _02128474
	ldr r3, [r0]
	mov r1, r5
	ldr r3, [r3, #8]
	mov r2, r8
	blx r3
_02128474:
	ldr r0, [r5, #0x78]
	cmp r0, #0
	ble _0212854C
	ldr lr, [r5, #0x6c]
	ldr r0, [r5, #0x70]
	umull r3, r2, lr, r8
	mla r2, lr, r7, r2
	umull ip, r1, r0, r8
	mov lr, lr, asr #0x1f
	mla r2, lr, r8, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	mov r2, ip, lsr #0xc
	mla r1, r0, r7, r1
	mov ip, r0, asr #0x1f
	mla r1, ip, r8, r1
	orr r2, r2, r1, lsl #20
	ldr r0, [r5, #0x64]
	str r2, [sp, #0x1c]
	add r0, r0, r3
	str r0, [r5, #0x64]
	ldr r0, [r5, #0x68]
	str r2, [sp, #0x14]
	add r0, r0, r2
	str r0, [r5, #0x68]
	ldrsh r0, [r5, #0x76]
	ldrsh r2, [r5, #0x74]
	str r3, [sp, #0x18]
	mul r1, r0, r8
	add r0, r2, r1, asr #12
	strh r0, [r5, #0x74]
	ldr r0, [r5, #0x78]
	str r3, [sp, #0x10]
	subs r0, r0, r8
	str r0, [r5, #0x78]
	strmi sl, [r5, #0x78]
	b _0212854C
_02128508:
	cmp r5, #0
	beq _0212854C
	cmp r6, #0
	ldrne r0, [r5, #0x84]
	strne r0, [r6, #0x84]
	ldr r1, [r5, #0x84]
	ldr r0, [r5, #0x88]
	cmp r1, #0
	strne r0, [r1, #0x88]
	streq r0, [r4, #0x320]
	ldr r0, [r4, #0x324]
	str r0, [r5, #0x88]
	str sb, [r5, #0x84]
	ldr r0, [r4, #0x324]
	cmp r0, #0
	strne r5, [r0, #0x84]
	str r5, [r4, #0x324]
_0212854C:
	mov r5, r6
	cmp r6, #0
	bne _02128444
_02128558:
	ldr r0, [r4, #0x30c]
	mov r6, #0
	mov r5, r6
	cmp r0, #0
	bls _021285BC
	mov r7, r6
_02128570:
	ldr r0, [r4, #0x304]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	ldreq r0, [r4, #0x308]
	streq r7, [r0, r5, lsl #2]
	beq _021285AC
	ldr r2, [r0]
	mov r1, r8
	ldr r2, [r2, #0xc]
	blx r2
	ldr r1, [r4, #0x308]
	str r0, [r1, r5, lsl #2]
	ldr r0, [r4, #0x308]
	ldr r0, [r0, r5, lsl #2]
	add r6, r6, r0
_021285AC:
	ldr r0, [r4, #0x30c]
	add r5, r5, #1
	cmp r5, r0
	blo _02128570
_021285BC:
	cmp r6, #0
	beq _021286A4
	cmp r0, #0
	mov sl, #0
	bls _021286A4
_021285D0:
	ldr r0, [r4, #0x304]
	ldr r0, [r0, sl, lsl #2]
	cmp r0, #0
	ldrne r0, [r4, #0x308]
	ldrne r0, [r0, sl, lsl #2]
	cmpne r0, #0
	beq _02128694
	cmp r0, #0
	mov sb, #0
	bls _02128694
	mov r5, sb
	mov r6, sb
_02128600:
	ldr r1, [r4, #0x324]
	mov r7, r6
	cmp r1, #0
	beq _02128640
	ldr r0, [r1, #0x88]
	mov r7, r1
	str r0, [r4, #0x324]
	cmp r0, #0
	strne r6, [r0, #0x84]
	ldr r0, [r4, #0x320]
	str r0, [r1, #0x88]
	str r5, [r1, #0x84]
	ldr r0, [r4, #0x320]
	cmp r0, #0
	strne r1, [r0, #0x84]
	str r1, [r4, #0x320]
_02128640:
	cmp r7, #0
	beq _02128680
	ldr r0, [r4, #0x304]
	mov r1, r7
	ldr r0, [r0, sl, lsl #2]
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
	ldr r0, [r4, #0x314]
	cmp r0, #0
	beq _02128680
	ldr r3, [r0]
	mov r1, r7
	ldr r3, [r3, #8]
	mov r2, r8
	blx r3
_02128680:
	ldr r0, [r4, #0x308]
	add sb, sb, #1
	ldr r0, [r0, sl, lsl #2]
	cmp sb, r0
	blo _02128600
_02128694:
	ldr r0, [r4, #0x30c]
	add sl, sl, #1
	cmp sl, r0
	blo _021285D0
_021286A4:
	ldr r5, [r4, #0x2ec]
	ldr r8, [r4, #0x2cc]
	cmp r5, #0
	beq _021287D4
	mov sb, #0
	mov r7, r8, asr #0x1f
	mov sl, sb
_021286C0:
	ldr r0, [r5, #0x44]
	ldr r6, [r5, #0x54]
	cmp r0, #0
	beq _02128784
	ldr r0, [r4, #0x2e0]
	cmp r0, #0
	beq _021286F0
	ldr r3, [r0]
	mov r1, r5
	ldr r3, [r3, #8]
	mov r2, r8
	blx r3
_021286F0:
	ldr r0, [r5, #0x44]
	cmp r0, #0
	ble _021287C8
	ldr lr, [r5, #0x38]
	ldr r0, [r5, #0x3c]
	umull r3, r2, lr, r8
	mla r2, lr, r7, r2
	umull ip, r1, r0, r8
	mov lr, lr, asr #0x1f
	mla r2, lr, r8, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	mov r2, ip, lsr #0xc
	mla r1, r0, r7, r1
	mov ip, r0, asr #0x1f
	mla r1, ip, r8, r1
	orr r2, r2, r1, lsl #20
	ldr r0, [r5, #0x30]
	str r2, [sp, #0xc]
	add r0, r0, r3
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x34]
	str r2, [sp, #4]
	add r0, r0, r2
	str r0, [r5, #0x34]
	ldrsh r0, [r5, #0x42]
	ldrsh r2, [r5, #0x40]
	str r3, [sp, #8]
	mul r1, r0, r8
	add r0, r2, r1, asr #12
	strh r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	str r3, [sp]
	subs r0, r0, r8
	str r0, [r5, #0x44]
	strmi sl, [r5, #0x44]
	b _021287C8
_02128784:
	cmp r5, #0
	beq _021287C8
	cmp r6, #0
	ldrne r0, [r5, #0x50]
	strne r0, [r6, #0x50]
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x54]
	cmp r1, #0
	strne r0, [r1, #0x54]
	streq r0, [r4, #0x2ec]
	ldr r0, [r4, #0x2f0]
	str r0, [r5, #0x54]
	str sb, [r5, #0x50]
	ldr r0, [r4, #0x2f0]
	cmp r0, #0
	strne r5, [r0, #0x50]
	str r5, [r4, #0x2f0]
_021287C8:
	mov r5, r6
	cmp r6, #0
	bne _021286C0
_021287D4:
	ldr r0, [r4, #0x2d8]
	mov r6, #0
	mov r5, r6
	cmp r0, #0
	bls _02128838
	mov r7, r6
_021287EC:
	ldr r0, [r4, #0x2d0]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	ldreq r0, [r4, #0x2d4]
	streq r7, [r0, r5, lsl #2]
	beq _02128828
	ldr r2, [r0]
	mov r1, r8
	ldr r2, [r2, #0xc]
	blx r2
	ldr r1, [r4, #0x2d4]
	str r0, [r1, r5, lsl #2]
	ldr r0, [r4, #0x2d4]
	ldr r0, [r0, r5, lsl #2]
	add r6, r6, r0
_02128828:
	ldr r0, [r4, #0x2d8]
	add r5, r5, #1
	cmp r5, r0
	blo _021287EC
_02128838:
	cmp r6, #0
	beq _02128920
	cmp r0, #0
	mov sl, #0
	bls _02128920
_0212884C:
	ldr r0, [r4, #0x2d0]
	ldr r0, [r0, sl, lsl #2]
	cmp r0, #0
	ldrne r0, [r4, #0x2d4]
	ldrne r0, [r0, sl, lsl #2]
	cmpne r0, #0
	beq _02128910
	cmp r0, #0
	mov sb, #0
	bls _02128910
	mov r5, sb
	mov r6, sb
_0212887C:
	ldr r1, [r4, #0x2f0]
	mov r7, r6
	cmp r1, #0
	beq _021288BC
	ldr r0, [r1, #0x54]
	mov r7, r1
	str r0, [r4, #0x2f0]
	cmp r0, #0
	strne r6, [r0, #0x50]
	ldr r0, [r4, #0x2ec]
	str r0, [r1, #0x54]
	str r5, [r1, #0x50]
	ldr r0, [r4, #0x2ec]
	cmp r0, #0
	strne r1, [r0, #0x50]
	str r1, [r4, #0x2ec]
_021288BC:
	cmp r7, #0
	beq _021288FC
	ldr r0, [r4, #0x2d0]
	mov r1, r7
	ldr r0, [r0, sl, lsl #2]
	ldr r2, [r0]
	ldr r2, [r2, #0x10]
	blx r2
	ldr r0, [r4, #0x2e0]
	cmp r0, #0
	beq _021288FC
	ldr r3, [r0]
	mov r1, r7
	ldr r3, [r3, #8]
	mov r2, r8
	blx r3
_021288FC:
	ldr r0, [r4, #0x2d4]
	add sb, sb, #1
	ldr r0, [r0, sl, lsl #2]
	cmp sb, r0
	blo _0212887C
_02128910:
	ldr r0, [r4, #0x2d8]
	add sl, sl, #1
	cmp sl, r0
	blo _0212884C
_02128920:
	add r0, r4, #0x138
	bl ov3_02129A4C
	ldr r0, [r4, #0x7fc]
	cmp r0, #0
	beq _0212898C
	add r0, r4, #0x35c
	add r3, r0, #0x400
	mov r2, #0
_02128940:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _02128970
	ldrh r1, [r3]
	ldrsh r0, [r3, #2]
	add r0, r1, r0
	strh r0, [r3]
	ldr r1, [r3, #4]
	ldr r0, [r3, #8]
	cmp r1, r0
	addlt r0, r1, #0x1000
	strlt r0, [r3, #4]
_02128970:
	add r2, r2, #1
	cmp r2, #0xa
	add r3, r3, #0x10
	blt _02128940
	ldr r0, [r4, #0x7fc]
	add r0, r0, #0x400
	str r0, [r4, #0x7fc]
_0212898C:
	ldrb r1, [r4, #0x804]
	mov r0, #0
	add r1, r1, #1
	strb r1, [r4, #0x804]
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021289A4: .word 0xFFFFFB34

	arm_func_start ov3_021289A8
ov3_021289A8: ; 0x021289A8
	mov r1, #0x1000
	str r1, [r0, #0x18]
	bx lr
	arm_func_end ov3_021289A8

	arm_func_start ov3_021289B4
ov3_021289B4: ; 0x021289B4
	mov r0, #0
	bx lr
	arm_func_end ov3_021289B4

	arm_func_start ov3_021289BC
ov3_021289BC: ; 0x021289BC
	mov r0, #0
	bx lr
	arm_func_end ov3_021289BC

	arm_func_start ov3_021289C4
ov3_021289C4: ; 0x021289C4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r7, r0
	ldr r4, [r7, #0x320]
	mov r6, r1
	cmp r4, #0
	beq _02128A80
	ldr r5, _02128C98 ; =0x04000450
	mov r8, #0
	arm_func_end ov3_021289C4
_021289E8:
	ldr r0, [r7, #0x328]
	cmp r0, #0
	strlt r0, [r4, #4]
	ldr r3, [r4, #0x60]
	ldr r1, [r4, #0x68]
	mov r2, r3, asr #0x1f
	mov fp, r2, lsl #0xb
	ldr r0, [r7, #0x2fc]
	mov ip, r3, lsl #0xb
	orr fp, fp, r3, lsr #21
	mov r3, ip, lsr #0xc
	ldr sl, [r4, #0x64]
	ldr r2, [r7, #0x2f8]
	add sb, r1, r0
	orr r3, r3, fp, lsl #20
	add r1, sl, r2
	str sb, [sp]
	str r1, [sp, #4]
	add r0, sb, r3
	str r0, [sp, #8]
	sub r0, r1, r3
	str r0, [sp, #0xc]
	str sb, [sp, #0x10]
	ldr r2, [r4, #4]
	mov r0, r4
	str r2, [sp, #0x14]
	sub r2, sb, r3
	add r3, r1, r3
	bl sub_020041A4
	mov r0, r4
	str r8, [r5]
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
	ldr r4, [r4, #0x88]
	cmp r4, #0
	bne _021289E8
_02128A80:
	ldr r8, [r7, #0x2ec]
	cmp r8, #0
	beq _02128AC4
	ldr r4, _02128C98 ; =0x04000450
	mov r5, #0
_02128A94:
	ldr r0, [r7, #0x2f4]
	mov r1, r6
	cmp r0, #0
	strlt r0, [r8, #4]
	mov r0, r8
	str r5, [r4]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldr r8, [r8, #0x54]
	cmp r8, #0
	bne _02128A94
_02128AC4:
	add r0, r7, #0x60
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
	ldrb r0, [r7, #0x804]
	tst r0, #0x20
	bne _02128AF8
	add r0, r7, #0xbc
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
_02128AF8:
	bl OS_GetTick
	add r0, r7, #0x138
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
	bl OS_GetTick
	ldr r0, [r7, #0x7fc]
	cmp r0, #0
	beq _02128C5C
	add r0, r7, #0x35c
	add r4, r0, #0x400
	add r0, r7, #0x374
	str r0, [sp, #0x24]
	mov r0, #0
	mov r5, r7
	str r0, [sp, #0x18]
_02128B3C:
	ldr r2, [r4, #4]
	cmp r2, #0
	beq _02128C34
	ldrh r3, [r4]
	mov r0, r2, asr #0x1f
	mov r1, r0, lsl #0xb
	mov r0, r2, lsl #0xb
	orr r1, r1, r2, lsr #21
	mov r2, r0, lsr #0xc
	mov r0, r3, asr #4
	mov r3, r0, lsl #1
	ldr r0, _02128C9C ; =FX_SinCosTable_
	mov r8, r3, lsl #1
	add r3, r0, r3, lsl #1
	ldrsh sb, [r0, r8]
	ldrsh sl, [r3, #2]
	ldr r0, [r7, #0x7fc]
	ldr r3, [r4, #0xc]
	orr r2, r2, r1, lsl #20
	smull r8, fp, r3, r0
	smull r2, r1, r0, r2
	mov r8, r8, lsr #0xc
	mov lr, r2, lsr #0xc
	orr r8, r8, fp, lsl #20
	smull r3, r2, r8, sl
	orr lr, lr, r1, lsl #20
	rsb r0, sb, #0
	smull r1, r0, lr, r0
	mov ip, r1, lsr #0xc
	orr ip, ip, r0, lsl #20
	rsb r0, sl, #0
	smull r1, r0, lr, r0
	mov fp, r1, lsr #0xc
	orr fp, fp, r0, lsl #20
	mov r3, r3, lsr #0xc
	str r2, [sp, #0x20]
	orr r2, r3, r2, lsl #20
	str r2, [sp, #0x1c]
	add r2, r2, ip
	str r2, [r5, #0x3a0]
	smull r3, r2, r8, sb
	mov r3, r3, lsr #0xc
	smull sl, r8, lr, sl
	orr r3, r3, r2, lsl #20
	sub r2, r3, #0x70000
	add r3, r2, fp
	mov sl, sl, lsr #0xc
	orr sl, sl, r8, lsl #20
	smull fp, sb, lr, sb
	add r2, r2, sl
	str r2, [r5, #0x3a4]
	mov r8, fp, lsr #0xc
	ldr r2, [sp, #0x1c]
	orr r8, r8, sb, lsl #20
	add r2, r2, r8
	str r2, [r5, #0x3a8]
	ldr r0, [sp, #0x24]
	str r3, [r5, #0x3ac]
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
_02128C34:
	ldr r0, [sp, #0x18]
	add r4, r4, #0x10
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0xa
	ldr r0, [sp, #0x24]
	add r5, r5, #0x64
	add r0, r0, #0x64
	str r0, [sp, #0x24]
	blt _02128B3C
_02128C5C:
	ldrh r1, [r7, #0x5c]
	cmp r1, #0
	ldrne r0, [r7, #0x58]
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _02128C7C
	bl sub_02008828
	strh r0, [r7, #0x36]
_02128C7C:
	add r0, r7, #0xc
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02128C98: .word 0x04000450
_02128C9C: .word FX_SinCosTable_

	arm_func_start ov3_02128CA0
ov3_02128CA0: ; 0x02128CA0
	ldr r2, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #0x18]
	str r1, [r0, #0x20]
	mov r0, r2
	bx lr
	arm_func_end ov3_02128CA0

	arm_func_start ov3_02128CB8
ov3_02128CB8: ; 0x02128CB8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	ldr r5, [r4, #0x1c]
	mov r2, r0, lsl #0x10
	ldr r3, _02128E28 ; =0x66666667
	mov r0, r2, lsr #0x1f
	smull r2, r6, r3, r2
	add r6, r0, r6, asr #3
	mov r0, r6, lsl #0x10
	mov r2, r0, lsr #0x10
	add r0, r2, #0xff
	mov r2, r2, asr #4
	mov r3, r2, lsl #1
	add r0, r0, #0x3f00
	mov r0, r0, asr #0xe
	and r0, r0, #3
	add r2, r3, #1
	mov r0, r0, lsl #0x10
	add ip, r5, r0, lsr #13
	ldrh r0, [r5]
	ldr r5, _02128E2C ; =FX_SinCosTable_
	mov r6, r3, lsl #1
	mov r2, r2, lsl #1
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	mov r3, r3, lsl #1
	mov r7, r0, lsl #1
	ldrsh r6, [r5, r6]
	ldr r8, [ip, #8]
	ldrsh r0, [r5, r2]
	ldr r2, [ip, #4]
	smull lr, r6, r8, r6
	smull r8, ip, r2, r0
	mov r0, lr, lsr #0xc
	mov r2, r8, lsr #0xc
	ldrsh r8, [r5, r3]
	orr r0, r0, r6, lsl #20
	ldrsh r7, [r5, r7]
	orr r2, r2, ip, lsl #20
	smull lr, ip, r8, r0
	smull r6, r5, r7, r2
	smull r3, r2, r8, r2
	smull r8, r0, r7, r0
	mov r6, r6, lsr #0xc
	orr r6, r6, r5, lsl #20
	mov r5, lr, lsr #0xc
	orr r5, r5, ip, lsl #20
	sub ip, r6, r5
	rsb r7, ip, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	mov r2, r8, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r5, r3, r2
	ldr r0, [r4, #4]
	mov r6, r1
	add r0, ip, r0
	ldr r1, [r4, #8]
	mov r2, #0xc000
	str r0, [r6, #0x64]
	add r0, r5, r1
	str r0, [r6, #0x68]
	str r2, [r6, #0x78]
	str r2, [r6, #0x7c]
	mov r0, #1
	str r0, [r6, #4]
	mov r0, r7, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r7, lsr #20
	mov r0, r7, lsl #0xc
	mov r3, #0
	bl _ll_div
	str r0, [r6, #0x6c]
	rsb r2, r5, #0
	mov r0, r2, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r2, lsr #20
	mov r0, r2, lsl #0xc
	mov r2, #0xc000
	mov r3, #0
	bl _ll_div
	str r0, [r6, #0x70]
	mov r0, #0x1f
	str r0, [r6, #0x14]
	mov r0, #0x8000
	str r0, [r6, #0x60]
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02128E28: .word 0x66666667
_02128E2C: .word FX_SinCosTable_
	arm_func_end ov3_02128CB8

	arm_func_start ov3_02128E30
ov3_02128E30: ; 0x02128E30
	stmdb sp!, {r3, lr}
	ldr r3, [r1, #0x78]
	ldr r0, _02128E80 ; =0x00002955
	mov r2, r3, asr #0x1f
	umull lr, ip, r3, r0
	mla ip, r2, r0, ip
	mov r0, lr, lsr #0xc
	orr r0, r0, ip, lsl #20
	mov r0, r0, asr #0xc
	str r0, [r1, #0x14]
	ldr r2, [r1, #0x78]
	mov r0, r2, asr #0x1f
	mov r0, r0, lsl #0xb
	mov r3, r2, lsl #0xb
	orr r0, r0, r2, lsr #21
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, #0x2000
	str r0, [r1, #0x60]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128E80: .word 0x00002955
	arm_func_end ov3_02128E30

	arm_func_start ov3_02128E84
ov3_02128E84: ; 0x02128E84
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	mov r6, r1
	cmp r0, #0
	mov r5, #0
	ble _02128F48
	bl sub_0201001C
	ldr r1, [r4, #0x18]
	sub r1, r1, r6
	str r1, [r4, #0x18]
	cmp r1, #0
	bgt _02128F48
	add r2, r0, #0x1000
	add r1, r0, #0x48
	add r1, r1, #0x1400
	ldr r3, [r2, #0x448]
	ldmib r1, {r0, r5}
	umull r7, r6, r5, r3
	mla r6, r5, r0, r6
	ldr r0, [r1, #0xc]
	ldr ip, [r1, #0x10]
	mla r6, r0, r3, r6
	mov r0, #0
	ldr r5, [r1, #0x14]
	adds r7, ip, r7
	adc r5, r5, r6
	str r7, [r2, #0x448]
	str r5, [r1, #4]
	mov r0, r0, lsl #3
	ldr r7, [r2, #0x448]
	ldr r3, [r1, #8]
	ldr r6, [r1, #0x10]
	umull lr, ip, r3, r7
	mla ip, r3, r5, ip
	ldr r3, [r1, #0xc]
	orr r0, r0, r5, lsr #29
	mla ip, r3, r7, ip
	ldr r5, [r1, #0x14]
	adds r3, r6, lr
	str r3, [r2, #0x448]
	adc r5, r5, ip
	mov r2, #5
	umull r2, r3, r5, r2
	str r5, [r1, #4]
	add r2, r3, #5
	mov r1, r2, lsl #0xc
	str r1, [r4, #0x18]
	add r5, r0, #1
	arm_func_end ov3_02128E84
_02128F48:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov3_02128F50
ov3_02128F50: ; 0x02128F50
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, [r0, #8]
	ldr r0, [r0, #4]
	mov r4, r1
	str r0, [r4, #0x30]
	str r2, [r4, #0x34]
	mov r0, #0xa000
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #4]
	bl sub_0201001C
	add r2, r0, #0x1000
	add r1, r0, #0x48
	add r1, r1, #0x1400
	ldr ip, [r2, #0x448]
	ldmib r1, {r0, lr}
	umull r6, r5, lr, ip
	mla r5, lr, r0, r5
	ldr r0, [r1, #0xc]
	ldr r7, [r1, #0x10]
	mla r5, r0, ip, r5
	ldr lr, [r1, #0x14]
	adds r6, r7, r6
	mov r3, #0
	str r6, [r2, #0x448]
	adc r0, lr, r5
	mov r2, r3, lsl #0x10
	orr r2, r2, r0, lsr #16
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, asr #4
	mov lr, r2, lsl #1
	add r2, lr, #1
	mov r3, r2, lsl #1
	ldr ip, _0212900C ; =FX_SinCosTable_
	mov r2, lr, lsl #1
	ldrsh r3, [ip, r3]
	str r0, [r1, #4]
	ldrsh r2, [ip, r2]
	mov r0, r3, lsl #1
	str r0, [r4, #0x38]
	mov r0, r2, lsl #1
	str r0, [r4, #0x3c]
	mov r0, #0x1f
	str r0, [r4, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0212900C: .word FX_SinCosTable_
	arm_func_end ov3_02128F50

	arm_func_start ov3_02129010
ov3_02129010: ; 0x02129010
	stmdb sp!, {r3, lr}
	ldr r3, [r1, #0x34]
	ldr r2, [r1, #0x30]
	mov r0, #6
	str r2, [r1, #0x18]
	str r3, [r1, #0x1c]
	ldr r3, [r1, #0x30]
	ldr r2, [r1, #0x38]
	ldr lr, [r1, #0x34]
	ldr ip, [r1, #0x3c]
	mla r3, r2, r0, r3
	mla r0, ip, r0, lr
	str r3, [r1, #0x20]
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x30]
	str r0, [r1, #0x28]
	ldr r0, [r1, #0x34]
	str r0, [r1, #0x2c]
	ldr r0, [r1, #0x44]
	cmp r0, #0x4000
	movle r0, r0, lsl #2
	movle r0, r0, asr #0xc
	strle r0, [r1, #0x14]
	ldmia sp!, {r3, pc}
	arm_func_end ov3_02129010

	arm_func_start ov3_02129070
ov3_02129070: ; 0x02129070
	bx lr
	arm_func_end ov3_02129070

	arm_func_start ov3_02129074
ov3_02129074: ; 0x02129074
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02129074

	arm_func_start ov3_02129088
ov3_02129088: ; 0x02129088
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02129088

	arm_func_start ov3_0212909C
ov3_0212909C: ; 0x0212909C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_0212909C

	arm_func_start ov3_021290B0
ov3_021290B0: ; 0x021290B0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_021290B0

	arm_func_start ov3_021290C4
ov3_021290C4: ; 0x021290C4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02004190
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_021290C4

	arm_func_start ov3_021290E0
ov3_021290E0: ; 0x021290E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02003A18
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_021290E0

	arm_func_start ov3_021290FC
ov3_021290FC: ; 0x021290FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_021290FC

	arm_func_start ov3_02129110
ov3_02129110: ; 0x02129110
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov3_02129110

	arm_func_start ov3_02129124
ov3_02129124: ; 0x02129124
	bx lr
	arm_func_end ov3_02129124

	arm_func_start ov3_02129128
ov3_02129128: ; 0x02129128
	bx lr
	arm_func_end ov3_02129128

	arm_func_start ov3_0212912C
ov3_0212912C: ; 0x0212912C
	bx lr
	arm_func_end ov3_0212912C

	arm_func_start ov3_02129130
ov3_02129130: ; 0x02129130
	stmdb sp!, {r4, lr}
	ldr r1, _0212915C ; =ptr_FUN_overlay_3_02129130_overlay_3_0212b458
	mov r4, r0
	str r1, [r4]
	bl ov3_02129280
	add r0, r4, #0x30
	bl sub_020051C8
	mov r0, r4
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212915C: .word ptr_FUN_overlay_3_02129130_overlay_3_0212b458
	arm_func_end ov3_02129130

	arm_func_start ov3_02129160
ov3_02129160: ; 0x02129160
	stmdb sp!, {r4, lr}
	ldr r1, _02129194 ; =ptr_FUN_overlay_3_02129130_overlay_3_0212b458
	mov r4, r0
	str r1, [r4]
	bl ov3_02129280
	add r0, r4, #0x30
	bl sub_020051C8
	mov r0, r4
	bl sub_02003984
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02129194: .word ptr_FUN_overlay_3_02129130_overlay_3_0212b458
	arm_func_end ov3_02129160

	arm_func_start ov3_02129198
ov3_02129198: ; 0x02129198
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0x1c]
	mov r5, r1
	cmp r0, #0
	beq _021291C0
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x1c]
	arm_func_end ov3_02129198
_021291C0:
	mov r0, r5, lsl #1
	str r0, [r4, #0x20]
	cmp r0, #0
	ble _021291DC
	mov r0, r0, lsl #3
	bl _Znam
	str r0, [r4, #0x1c]
_021291DC:
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02129214
	ldr r2, _02129268 ; =s_OPD_i001_NCLR_overlay_3_0212b498
	ldr r1, _0212926C ; =s_OPD_i001_00_NCER_overlay_3_0212b4a8
	str r2, [sp]
	ldr ip, _02129270 ; =s_OPD_i001_00_cac_overlay_3_0212b4bc
	str r1, [sp, #4]
	ldr r1, _02129274 ; =s_OPD_overlay_3_0212b464
	ldr r2, _02129278 ; =s_data_interface_i001_LZ_bin_overlay_3_0212b468
	ldr r3, _0212927C ; =s_OPD_i001_00_NCBR_overlay_3_0212b484
	str ip, [sp, #8]
	bl sub_0201AAE0
_02129214:
	str r0, [r4, #0x2c]
	ldmia r0, {r0, r1, r3}
	mov r2, #0
	str r0, [r4, #0x5c]
	str r2, [r4, #0x60]
	str r1, [r4, #0x64]
	str r3, [r4, #0x68]
	str r2, [r4, #0x48]
	str r2, [r4, #0x4c]
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02129254
	mov r1, #1
	bl sub_02008A80
	strh r0, [r4, #0x7c]
_02129254:
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x24]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02129268: .word s_OPD_i001_NCLR_overlay_3_0212b498
_0212926C: .word s_OPD_i001_00_NCER_overlay_3_0212b4a8
_02129270: .word s_OPD_i001_00_cac_overlay_3_0212b4bc
_02129274: .word s_OPD_overlay_3_0212b464
_02129278: .word s_data_interface_i001_LZ_bin_overlay_3_0212b468
_0212927C: .word s_OPD_i001_00_NCBR_overlay_3_0212b484

	arm_func_start ov3_02129280
ov3_02129280: ; 0x02129280
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	ldrneh r1, [r5, #0x7c]
	cmpne r1, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _021292B0
	bl sub_02008B80
	mov r0, #0
	strh r0, [r5, #0x7c]
	arm_func_end ov3_02129280
_021292B0:
	ldr r4, [r5, #0x2c]
	cmp r4, #0
	beq _021292D8
	beq _021292D0
	mov r0, r4
	bl sub_0201AB14
	mov r0, r4
	bl _ZdlPv
_021292D0:
	mov r0, #0
	str r0, [r5, #0x2c]
_021292D8:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021292F0
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x1c]
_021292F0:
	mov r0, #0
	str r0, [r5, #0x20]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov3_021292FC
ov3_021292FC: ; 0x021292FC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x68
	mov r8, r0
	mov r0, r2
	str r2, [sp, #4]
	str r1, [sp]
	cmp r0, #2
	addlo sp, sp, #0x68
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #1
	mov r0, r1
	add r6, r0, #8
	mov r7, #1
	bls _021295C8
	arm_func_end ov3_021292FC
_02129334:
	cmp r7, #2
	bge _02129418
	ldr sl, [r6, #-8]
	ldr sb, [r6, #-4]
	ldr r1, [r6]
	ldr r0, [r6, #4]
	sub r4, r1, sl
	sub r5, r0, sb
	smull r3, r2, r4, r4
	smull r1, r0, r5, r5
	str sl, [sp, #0x40]
	str sb, [sp, #0x44]
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	str r4, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r4, [sp, #0x60]
	str r5, [sp, #0x64]
	bl FX_InvSqrt
	mov r1, r0, asr #0x1f
	mov r2, r1, lsl #0xe
	mov r3, r0, lsl #0xe
	sub r1, r7, #1
	orr r2, r2, r0, lsr #18
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r0, r1, lsl #1
	smull r1, r2, r4, r5
	mov r1, r1, lsr #0xc
	orr r1, r1, r2, lsl #20
	str r1, [sp, #0x60]
	ldr r3, [sp, #0x64]
	ldr r2, [r6, #-8]
	smull r5, r4, r3, r5
	mov r3, r5, lsr #0xc
	orr r3, r3, r4, lsl #20
	str r3, [sp, #0x64]
	ldr sb, [r6, #-4]
	add r5, r2, r3
	sub r3, r2, r3
	ldr r2, [r8, #0x1c]
	sub r4, sb, r1
	str r5, [r2, r0, lsl #3]
	add r2, sb, r1
	ldr r1, [r8, #0x1c]
	add r1, r1, r0, lsl #3
	str r4, [r1, #4]
	ldr r1, [r8, #0x1c]
	add r1, r1, r0, lsl #3
	str r3, [r1, #8]
	ldr r1, [r8, #0x1c]
	add r0, r1, r0, lsl #3
	str r2, [r0, #0xc]
	b _021295B4
_02129418:
	ldr sl, [r6, #-0x10]
	ldr sb, [r6, #-0xc]
	ldr r1, [r6]
	ldr r0, [r6, #4]
	sub r4, r1, sl
	sub r5, r0, sb
	smull r3, r2, r4, r4
	smull r1, r0, r5, r5
	str sl, [sp, #0x30]
	str sb, [sp, #0x34]
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	str r4, [sp, #0x28]
	str r5, [sp, #0x2c]
	str r4, [sp, #0x58]
	str r5, [sp, #0x5c]
	bl FX_InvSqrt
	ldr r3, [r6, #-0x10]
	ldr r2, [r6, #-0xc]
	ldr r1, [r6, #-8]
	smull sb, r5, r4, r0
	mov r4, sb, lsr #0xc
	orr r4, r4, r5, lsl #20
	str r4, [sp, #0x58]
	sub r4, r1, r3
	str r3, [sp, #0x20]
	ldr r1, [r6, #-4]
	str r2, [sp, #0x24]
	sub r2, r1, r2
	ldr r1, [sp, #0x5c]
	str r4, [sp, #0x18]
	smull r3, r0, r1, r0
	mov r1, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x5c]
	str r2, [sp, #0x1c]
	str r4, [sp, #0x50]
	str r2, [sp, #0x54]
	smull r1, r0, r2, r2
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	smull r2, r0, r4, r4
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r2, r1
	bl FX_InvSqrt
	smull r1, r2, r4, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r2, lsl #20
	str r1, [sp, #0x50]
	ldr r2, [sp, #0x54]
	ldr r5, [sp, #0x5c]
	smull r3, r0, r2, r0
	mov sb, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	str sb, [sp, #0x54]
	mov r4, r5, asr #0x1f
	mov r0, sb, asr #0x1f
	umull r3, r2, r5, sb
	mla r2, r5, r0, r2
	mla r2, r4, sb, r2
	mov r3, r3, lsr #0xc
	ldr sb, [sp, #0x58]
	orr r3, r3, r2, lsl #20
	smull r2, r1, sb, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r2, r2, r3
	mov r0, #0x4000000
	mov r1, #0
	mov r3, r2, asr #0x1f
	bl _ll_div
	smull r2, r1, sb, r0
	mov fp, r2, lsr #0xc
	orr fp, fp, r1, lsl #20
	sub r1, r7, #1
	ldr sb, [r6, #-4]
	mov r3, r1, lsl #1
	sub r1, sb, fp
	add fp, sb, fp
	mov sl, r0, asr #0x1f
	umull sb, lr, r5, r0
	mla lr, r5, sl, lr
	mla lr, r4, r0, lr
	mov r4, sb, lsr #0xc
	ldr ip, [r6, #-8]
	orr r4, r4, lr, lsl #20
	ldr r2, [r8, #0x1c]
	add r0, ip, r4
	str r0, [r2, r3, lsl #3]
	ldr r0, [r8, #0x1c]
	sub r2, ip, r4
	add r0, r0, r3, lsl #3
	str r1, [r0, #4]
	ldr r0, [r8, #0x1c]
	add r0, r0, r3, lsl #3
	str r2, [r0, #8]
	ldr r0, [r8, #0x1c]
	add r0, r0, r3, lsl #3
	str fp, [r0, #0xc]
_021295B4:
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r7, r0
	add r6, r6, #8
	blo _02129334
_021295C8:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r4, r1, r0, lsl #3
	sub r5, r4, #8
	ldr r3, [r5, #-8]
	ldr r2, [r5, #-4]
	ldr r1, [r4, #-8]
	ldr r0, [r5, #4]
	sub r6, r1, r3
	sub r1, r0, r2
	smull sl, sb, r6, r6
	smull r7, r0, r1, r1
	mov sl, sl, lsr #0xc
	mov r7, r7, lsr #0xc
	orr sl, sl, sb, lsl #20
	orr r7, r7, r0, lsl #20
	add r0, sl, r7
	str r3, [sp, #0x10]
	str r2, [sp, #0x14]
	str r6, [sp, #8]
	str r1, [sp, #0xc]
	str r6, [sp, #0x48]
	str r1, [sp, #0x4c]
	bl FX_InvSqrt
	mov r1, r0, asr #0x1f
	mov r2, r1, lsl #0xe
	mov r3, r0, lsl #0xe
	orr r2, r2, r0, lsr #18
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull sb, r7, r6, r3
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #4]
	smull r3, r2, r0, r3
	mov r6, r3, lsr #0xc
	sub r1, r1, #1
	orr r6, r6, r2, lsl #20
	ldr r3, [r4, #-8]
	mov sb, sb, lsr #0xc
	add r2, r3, r6
	orr sb, sb, r7, lsl #20
	ldr r5, [r5, #4]
	ldr r0, [r8, #0x1c]
	mov r1, r1, lsl #1
	str r2, [r0, r1, lsl #3]
	ldr r0, [r8, #0x1c]
	sub r4, r5, sb
	add r0, r0, r1, lsl #3
	str r4, [r0, #4]
	ldr r0, [r8, #0x1c]
	sub r3, r3, r6
	add r1, r1, #1
	str r3, [r0, r1, lsl #3]
	ldr r0, [r8, #0x1c]
	add r2, r5, sb
	add r0, r0, r1, lsl #3
	str r2, [r0, #4]
	ldr r0, [sp, #4]
	str sb, [sp, #0x48]
	str r6, [sp, #0x4c]
	str r0, [r8, #0x24]
	add sp, sp, #0x68
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov3_021296C4
ov3_021296C4: ; 0x021296C4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x20
	mov r8, r0
	ldr r0, [r8, #0x24]
	ldr r2, [r8, #0x28]
	mov r7, r1
	cmp r2, r0
	movhi r6, r0
	movls r6, r2
	ldr r5, [r8, #0x1c]
	cmp r2, #0xc0
	bls _0212972C
	cmp r2, r0
	bls _02129720
	sub r0, r2, r0
	rsb r6, r0, #0xc0
	cmp r6, #0
	addle sp, sp, #0x20
	movle r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	sub r0, r2, #0xc0
	add r5, r5, r0, lsl #4
	b _0212972C
	arm_func_end ov3_021296C4
_02129720:
	sub r0, r6, #0xc0
	add r5, r5, r0, lsl #4
	mov r6, #0xc0
_0212972C:
	cmp r6, #2
	addlt sp, sp, #0x20
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr sl, [r5]
	ldr r1, [r5, #0xc]
	add r4, r5, r6, lsl #4
	ldmib r5, {r2, sb}
	sub r3, r4, #0x10
	sub r0, r4, #8
	add r1, r2, r1
	add sb, sl, sb
	mov r2, sb, asr #1
	ldr sb, [r4, #-0x10]
	ldr r4, [r4, #-8]
	mov r1, r1, asr #1
	add r4, sb, r4
	mov ip, r4, asr #1
	ldr r3, [r3, #4]
	ldr r0, [r0, #4]
	ldrsh r4, [r7, #0x28]
	add r0, r3, r0
	mov sl, r0, asr #1
	ldr r3, _021299C8 ; =0x04000450
	mov sb, #0
	mov r0, r8
	str sb, [r3]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str ip, [sp, #0x10]
	str sl, [sp, #0x14]
	bl ov3_021299E0
	rsb r0, r4, #0xc
	mov r0, r0, lsl #0x10
	ldrh r2, [r8, #8]
	ldr r1, _021299CC ; =0x04000480
	cmp r6, #2
	str r2, [r1]
	mov lr, r0, asr #0x10
	mov r4, sb
	blt _02129924
_021297D0:
	ldr r0, [r8, #0xc]
	ldr r1, [r8, #0x10]
	mov r0, r0, lsl #4
	add r2, r4, r1
	orr r1, r0, #0xc0
	orr r1, r1, r2, lsl #24
	ldr r3, [r8, #0x14]
	ldr r0, _021299D0 ; =0x040004A4
	orr r1, r1, r3, lsl #16
	str r1, [r0]
	mov r1, #3
	str r1, [r0, #0x5c]
	mov r2, #0
	str r2, [r0, #-0x1c]
	ldr r1, [r5, #4]
	ldr r3, [r5], #8
	mov r1, r1, asr lr
	ldr sb, [r8, #4]
	mov r3, r3, asr lr
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	add sl, sb, r4
	mov sb, r1, lsl #0x10
	mov r1, sl, lsl #0x10
	mov r3, r3, lsl #0x10
	mov sb, sb, lsr #0x10
	mov sl, r3, asr #0x10
	mov r1, r1, asr #0x10
	mov r3, r1, lsl #0x10
	mov r1, sl, lsl #0x10
	mov sb, sb, lsl #0x10
	orr sb, sb, r1, lsr #16
	sub r1, r0, #0x18
	str sb, [r1]
	mov r0, r3, lsr #0x10
	str r0, [r1]
	ldr r1, [r8, #0x1c]
	ldr r0, [r8, #0x20]
	mov ip, #1
	add r0, r1, r0, lsl #3
	cmp r5, r0
	movhs r5, r1
	cmp r6, #0x40
	movlt r0, r6
	movge r0, #0x40
	mov r3, r0, lsl #1
	cmp r3, #1
	bls _02129904
	ldr r1, _021299D4 ; =0x04000488
_02129894:
	rsb r2, r2, #0x20000
	mov r0, r2, lsl #8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1]
	ldr r0, [r5, #4]
	ldr sl, [r5], #8
	mov sb, r0, asr lr
	mov r0, sl, asr lr
	mov sb, sb, lsl #0x10
	mov sb, sb, asr #0x10
	mov r0, r0, lsl #0x10
	mov sb, sb, lsl #0x10
	mov r0, r0, asr #0x10
	mov sb, sb, lsr #0x10
	mov r0, r0, lsl #0x10
	mov sb, sb, lsl #0x10
	orr r0, sb, r0, lsr #16
	str r0, [r1, #0xc]
	ldr sb, [r8, #0x1c]
	ldr r0, [r8, #0x20]
	add ip, ip, #1
	add r0, sb, r0, lsl #3
	cmp r5, r0
	movhs r5, sb
	cmp ip, r3
	blo _02129894
_02129904:
	ldr r0, _021299D8 ; =0x04000504
	sub r6, r6, #0x3f
	mov r1, #0
	str r1, [r0]
	cmp r6, #2
	sub r5, r5, #0x10
	add r4, r4, #1
	bge _021297D0
_02129924:
	ldr r0, _021299DC ; =0x04000448
	mov r1, #0
	str r1, [r0]
	ldrh r1, [r8, #0x7c]
	cmp r1, #0
	ldrne r0, [r8, #0x2c]
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _02129950
	bl sub_02008828
	strh r0, [r8, #0x5a]
_02129950:
	ldr r5, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r5, [r8, #0x48]
	str r3, [r8, #0x4c]
	ldr r1, [r8, #4]
	add r0, r8, #0x30
	str r1, [r8, #0x34]
	ldr r2, [r0]
	mov r1, r7
	ldr r2, [r2, #8]
	str r5, [sp, #8]
	str r3, [sp, #0xc]
	blx r2
	ldr r5, [sp, #0x10]
	ldr r3, [sp, #0x14]
	str r5, [r8, #0x48]
	str r3, [r8, #0x4c]
	ldr r1, [r8, #4]
	add r0, r8, #0x30
	add r1, r1, r4
	str r1, [r8, #0x34]
	ldr r2, [r0]
	mov r1, r7
	ldr r2, [r2, #8]
	str r5, [sp]
	str r3, [sp, #4]
	blx r2
	mov r0, #1
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021299C8: .word 0x04000450
_021299CC: .word 0x04000480
_021299D0: .word 0x040004A4
_021299D4: .word 0x04000488
_021299D8: .word 0x04000504
_021299DC: .word 0x04000448

	arm_func_start ov3_021299E0
ov3_021299E0: ; 0x021299E0
	ldr r3, [r0, #0x18]
	cmp r3, #0
	bxeq lr
	ldr r0, [r3, #0x1c]
	ldr r1, [r3, #8]
	mov r0, r0, lsl #0x1a
	orr r0, r0, r1, lsr #3
	ldr r1, [r3, #0x20]
	orr r0, r0, #0x40000000
	ldr r2, [r3, #0x24]
	orr r0, r0, r1, lsl #20
	orr r1, r0, r2, lsl #23
	ldr r0, _02129A44 ; =0x040004A8
	orr r1, r1, #0x30000
	str r1, [r0]
	ldr r0, [r3, #0x1c]
	ldr r1, [r3, #0xc]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #4
	mov r1, r1, lsr r0
	ldr r0, _02129A48 ; =0x040004AC
	str r1, [r0]
	bx lr
	.align 2, 0
_02129A44: .word 0x040004A8
_02129A48: .word 0x040004AC
	arm_func_end ov3_021299E0

	arm_func_start ov3_02129A4C
ov3_02129A4C: ; 0x02129A4C
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x2c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020089EC
	ldmia sp!, {r3, pc}
	arm_func_end ov3_02129A4C

	arm_func_start ov3_02129A68
ov3_02129A68: ; 0x02129A68
	stmdb sp!, {r4, lr}
	ldr r1, _02129A8C ; =ptr_FUN_overlay_3_02129a68_overlay_3_0212b4e0
	mov r4, r0
	str r1, [r4]
	bl ov3_02129C54
	mov r0, r4
	bl sub_02003984
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02129A8C: .word ptr_FUN_overlay_3_02129a68_overlay_3_0212b4e0
	arm_func_end ov3_02129A68

	arm_func_start ov3_02129A90
ov3_02129A90: ; 0x02129A90
	stmdb sp!, {r4, lr}
	ldr r1, _02129ABC ; =ptr_FUN_overlay_3_02129a68_overlay_3_0212b4e0
	mov r4, r0
	str r1, [r4]
	bl ov3_02129C54
	mov r0, r4
	bl sub_02003984
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02129ABC: .word ptr_FUN_overlay_3_02129a68_overlay_3_0212b4e0
	arm_func_end ov3_02129A90

	arm_func_start ov3_02129AC0
ov3_02129AC0: ; 0x02129AC0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sl, r0
	strh r1, [sl, #0x24]
	strh r2, [sl, #0x26]
	ldrh r1, [sl, #0x24]
	ldrh r0, [sl, #0x26]
	str r3, [sp]
	add r1, r1, #1
	add r0, r0, #1
	mul r0, r1, r0
	ldr r1, [sp, #0x40]
	mov r0, r0, lsl #3
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r1, [sp, #0x44]
	ldr r1, [sp, #0x48]
	str r1, [sp, #0x48]
	bl _Znam
	str r0, [sl, #0x1c]
	ldrh r1, [sl, #0x24]
	ldrh r0, [sl, #0x26]
	add r1, r1, #1
	add r0, r0, #1
	mul r0, r1, r0
	mov r0, r0, lsl #3
	bl _Znam
	str r0, [sl, #0x20]
	ldrh r6, [sl, #0x26]
	mov r5, r0
	ldr r4, [sl, #0x1c]
	add r0, r6, #1
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #0x14]
	addle sp, sp, #0x18
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [sp, #0x50]
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	sub r0, r2, r0
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	sub r0, r1, r0
	str r0, [sp, #8]
	arm_func_end ov3_02129AC0
_02129B7C:
	ldr r0, [sp, #0x10]
	mov r1, r6
	bl _s32_div_f
	ldr r2, [sp, #0x40]
	mov r1, r6
	add fp, r2, r0
	ldr r0, [sp, #0xc]
	bl _s32_div_f
	ldr r1, [sp, #0x48]
	mov r7, #0
	add r6, r1, r0
	ldrh r1, [sl, #0x24]
	add r0, r1, #1
	cmp r0, #0
	ble _02129C14
	mov r8, r7
	mov sb, r7
_02129BC0:
	mov r0, r8
	bl _s32_div_f
	ldr r1, [sp]
	add r0, r1, r0
	stmia r4, {r0, fp}
	ldrh r1, [sl, #0x24]
	mov r0, sb
	bl _s32_div_f
	ldr r1, [sp, #0x44]
	add r7, r7, #1
	add r0, r1, r0
	stmia r5, {r0, r6}
	ldr r0, [sp, #8]
	ldrh r1, [sl, #0x24]
	add sb, sb, r0
	add r4, r4, #8
	add r0, r1, #1
	add r5, r5, #8
	add r8, r8, #0x100000
	cmp r7, r0
	blt _02129BC0
_02129C14:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	add r0, r0, #0xc0000
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	ldrh r6, [sl, #0x26]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r1, r6, #1
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _02129B7C
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov3_02129C54
ov3_02129C54: ; 0x02129C54
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02129C74
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x1c]
	arm_func_end ov3_02129C54
_02129C74:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x20]
	ldmia sp!, {r4, pc}

	arm_func_start ov3_02129C90
ov3_02129C90: ; 0x02129C90
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	mov r5, r1
	cmp r0, #0
	beq _02129CB4
	mov r1, #0
	mov r2, r1
	bl sub_02041D98
	arm_func_end ov3_02129C90
_02129CB4:
	ldr r3, _02129E88 ; =0x04000450
	mov lr, #0
	str lr, [r3]
	ldrh r5, [r5, #0x28]
	ldrh r0, [r4, #8]
	str r0, [r3, #0x30]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	mov r0, r0, lsl #4
	orr r0, r0, #0xc0
	ldr r2, [r4, #0x14]
	orr r0, r0, r1, lsl #24
	orr r0, r0, r2, lsl #16
	str r0, [r3, #0x54]
	ldrh r0, [r4, #0x26]
	ldr r3, [r4, #0x1c]
	ldr ip, [r4, #0x20]
	cmp r0, #0
	ble _02129E74
	rsb r6, r5, #0xc
_02129D04:
	ldr r1, _02129E8C ; =0x04000500
	mov r0, #3
	str r0, [r1]
	ldrh r0, [r4, #0x24]
	mov r5, #0
	add r0, r0, #1
	cmp r0, #0
	ble _02129E58
	sub r2, r1, #0x78
	sub r1, r1, #0x74
_02129D2C:
	ldr r0, [ip, #4]
	ldr r8, [ip]
	mov r0, r0, lsl #8
	mov r7, r0, asr #0x10
	mov r0, r8, lsl #8
	mov r7, r7, lsl #0x10
	mov r0, r0, asr #0x10
	mov r7, r7, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r7, r7, lsl #0x10
	orr r0, r7, r0, lsr #16
	str r0, [r2]
	ldr r0, [r3, #4]
	ldr r7, [r3]
	mov r0, r0, asr r6
	mov r7, r7, asr r6
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	ldr sb, [r4, #4]
	mov r7, r7, lsl #0x10
	mov r8, r0, lsl #0x10
	mov r0, sb, lsl #0x10
	mov sb, r7, asr #0x10
	mov r8, r8, lsr #0x10
	mov r0, r0, asr #0x10
	mov r7, r0, lsl #0x10
	mov r0, sb, lsl #0x10
	mov r8, r8, lsl #0x10
	orr r0, r8, r0, lsr #16
	str r0, [r1]
	mov r0, r7, lsr #0x10
	str r0, [r1]
	ldrh r0, [r4, #0x24]
	add r5, r5, #1
	add r7, ip, r0, lsl #3
	ldr r0, [r7, #0xc]
	ldr r8, [r7, #8]
	mov r0, r0, lsl #8
	mov r7, r0, asr #0x10
	mov r0, r8, lsl #8
	mov r7, r7, lsl #0x10
	mov r0, r0, asr #0x10
	mov r7, r7, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r7, r7, lsl #0x10
	orr r0, r7, r0, lsr #16
	str r0, [r2]
	ldrh r7, [r4, #0x24]
	ldr r0, [r4, #4]
	add ip, ip, #8
	add r8, r3, r7, lsl #3
	ldr r7, [r8, #0xc]
	ldr r8, [r8, #8]
	mov r7, r7, asr r6
	mov sb, r8, asr r6
	mov r7, r7, lsl #0x10
	mov r8, r7, asr #0x10
	mov r7, sb, lsl #0x10
	mov r8, r8, lsl #0x10
	mov r0, r0, lsl #0x10
	mov sb, r7, asr #0x10
	mov r8, r8, lsr #0x10
	mov r0, r0, asr #0x10
	mov r7, r0, lsl #0x10
	mov r0, sb, lsl #0x10
	mov r8, r8, lsl #0x10
	orr r0, r8, r0, lsr #16
	str r0, [r1]
	mov r0, r7, lsr #0x10
	str r0, [r1]
	ldrh r0, [r4, #0x24]
	add r3, r3, #8
	add r0, r0, #1
	cmp r5, r0
	blt _02129D2C
_02129E58:
	ldr r0, _02129E90 ; =0x04000504
	mov r1, #0
	str r1, [r0]
	ldrh r0, [r4, #0x26]
	add lr, lr, #1
	cmp lr, r0
	blt _02129D04
_02129E74:
	ldr r0, _02129E94 ; =0x04000448
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02129E88: .word 0x04000450
_02129E8C: .word 0x04000500
_02129E90: .word 0x04000504
_02129E94: .word 0x04000448

	arm_func_start ov3_02129E98
ov3_02129E98: ; 0x02129E98
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	ldr r5, _02129F44 ; =sub_02003BB0
	ldr r3, _02129F48 ; =FUN_02003B64
	mov r1, #7
	mov r2, #0x40
	mov r4, r0
	str r5, [sp]
	bl __cxa_vec_ctor
	mov r0, #0
	str r0, [r4, #0x1c0]
	str r0, [r4, #0x1c4]
	str r0, [r4, #0x1c8]
	str r0, [r4, #0x1cc]
	sub r1, r0, #0x70000
	ldr r6, _02129F4C ; =DAT_overlay_3_0212a6ac
	ldr r2, _02129F50 ; =DAT_overlay_3_0212a690
	str r1, [r4, #0x1d0]
	sub sl, r0, #0x10000
	mov sb, #6
	mov r7, #0x68
	mov lr, #0x64000
	mov ip, r0
	mov r3, #3
	arm_func_end ov3_02129E98
_02129EF8:
	add r8, r4, r0, lsl #6
	str sb, [r8, #0x10]
	ldr r5, [r6, r0, lsl #2]
	str r7, [r8, #4]
	str r5, [r8, #0x20]
	add r1, sl, r5, asr #1
	str lr, [r8, #0x24]
	str r1, [r8, #0x18]
	str ip, [r8, #0x1c]
	ldr r1, [r2, r0, lsl #2]
	str r3, [r8, #0xc]
	add r0, r0, #1
	str r1, [r8, #0x14]
	cmp r0, #7
	add sl, sl, r5
	blt _02129EF8
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02129F44: .word sub_02003BB0
_02129F48: .word sub_02003B64
_02129F4C: .word DAT_overlay_3_0212a6ac
_02129F50: .word DAT_overlay_3_0212a690

	arm_func_start ov3_02129F54
ov3_02129F54: ; 0x02129F54
	stmdb sp!, {r4, lr}
	ldr r3, _02129F74 ; =sub_02003BB0
	mov r1, #7
	mov r2, #0x40
	mov r4, r0
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02129F74: .word sub_02003BB0
	arm_func_end ov3_02129F54

	arm_func_start ov3_02129F78
ov3_02129F78: ; 0x02129F78
	ldr r2, [r0, #0x1c4]
	cmp r2, #0
	beq _02129FB4
	ldr r1, [r0, #0x1c0]
	add r1, r1, r2
	str r1, [r0, #0x1c0]
	str r1, [r0, #0x1cc]
	ldr r1, [r0, #0x1c0]
	cmp r1, #0x80000
	bxlt lr
	mov r1, #0
	str r1, [r0, #0x1c4]
	mov r1, #0x168
	str r1, [r0, #0x1c8]
	bx lr
	arm_func_end ov3_02129F78
_02129FB4:
	ldr r1, [r0, #0x1c8]
	cmp r1, #0
	subne r1, r1, #1
	strne r1, [r0, #0x1c8]
	bxne lr
	mov r2, #0x8000
	sub r1, r2, #0xc8000
	str r2, [r0, #0x1c4]
	str r1, [r0, #0x1c0]
	str r1, [r0, #0x1cc]
	bx lr

	arm_func_start ov3_02129FE0
ov3_02129FE0: ; 0x02129FE0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov sl, r0
	ldr r0, [sl, #0x1c4]
	mov sb, r1
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, _0212A0A4 ; =FX_SinCosTable_+0x400
	bic r1, r1, #0xe000
	orr r1, r1, #0x2000
	str r1, [r2]
	ldrsh r1, [r0, #0x70]
	ldrsh r2, [r0, #0x72]
	ldrh r4, [sb, #0x28]
	add r0, sp, #0
	blx MTX_RotZ33_
	rsb r2, r4, #0xc
	ldr r1, [sl, #0x1cc]
	ldr r0, [sl, #0x1d0]
	mov r8, #0
	mov r6, r1, asr r2
	mov r7, r0, asr r2
	ldr r4, _0212A0A8 ; =0x04000450
	mov r5, r8
	add fp, sp, #0
	arm_func_end ov3_02129FE0
_0212A050:
	str r5, [r4]
	str r6, [r4, #0x20]
	str r7, [r4, #0x20]
	mov r0, fp
	str r5, [r4, #0x20]
	bl G3_MultMtx33
	mov r0, sl
	ldr r2, [r0]
	mov r1, sb
	ldr r2, [r2, #8]
	blx r2
	add r8, r8, #1
	cmp r8, #7
	add sl, sl, #0x40
	blt _0212A050
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0xe000
	str r0, [r1]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212A0A4: .word FX_SinCosTable_+0x400
_0212A0A8: .word 0x04000450

    .rodata

    .global DAT_overlay_3_0212a0ac
DAT_overlay_3_0212a0ac: ; 0x0212A0AC
	.byte 0x1C, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0b0
DAT_overlay_3_0212a0b0: ; 0x0212A0B0
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0b4
DAT_overlay_3_0212a0b4: ; 0x0212A0B4
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0b8
DAT_overlay_3_0212a0b8: ; 0x0212A0B8
	.byte 0x13, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0bc
DAT_overlay_3_0212a0bc: ; 0x0212A0BC
	.byte 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0c0
DAT_overlay_3_0212a0c0: ; 0x0212A0C0
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0c4
DAT_overlay_3_0212a0c4: ; 0x0212A0C4
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0c8
DAT_overlay_3_0212a0c8: ; 0x0212A0C8
	.byte 0x1C, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0cc
DAT_overlay_3_0212a0cc: ; 0x0212A0CC
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0d0
DAT_overlay_3_0212a0d0: ; 0x0212A0D0
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0d4
DAT_overlay_3_0212a0d4: ; 0x0212A0D4
	.byte 0x13, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0d8
DAT_overlay_3_0212a0d8: ; 0x0212A0D8
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0dc
DAT_overlay_3_0212a0dc: ; 0x0212A0DC
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0e0
DAT_overlay_3_0212a0e0: ; 0x0212A0E0
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0e4
DAT_overlay_3_0212a0e4: ; 0x0212A0E4
	.byte 0x10, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0e8
DAT_overlay_3_0212a0e8: ; 0x0212A0E8
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0ec
DAT_overlay_3_0212a0ec: ; 0x0212A0EC
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0f0
DAT_overlay_3_0212a0f0: ; 0x0212A0F0
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0f4
DAT_overlay_3_0212a0f4: ; 0x0212A0F4
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0f8
DAT_overlay_3_0212a0f8: ; 0x0212A0F8
	.byte 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a0fc
DAT_overlay_3_0212a0fc: ; 0x0212A0FC
	.byte 0x01, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a100
DAT_overlay_3_0212a100: ; 0x0212A100
	.byte 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a138
DAT_overlay_3_0212a138: ; 0x0212A138
	.byte 0x0F, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a13c
DAT_overlay_3_0212a13c: ; 0x0212A13C
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a140
DAT_overlay_3_0212a140: ; 0x0212A140
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a144
DAT_overlay_3_0212a144: ; 0x0212A144
	.byte 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a148
DAT_overlay_3_0212a148: ; 0x0212A148
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a14c
DAT_overlay_3_0212a14c: ; 0x0212A14C
	.byte 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a150
DAT_overlay_3_0212a150: ; 0x0212A150
	.byte 0x01, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a154
DAT_overlay_3_0212a154: ; 0x0212A154
	.byte 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x17, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a218
DAT_overlay_3_0212a218: ; 0x0212A218
	.byte 0x18, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a21c
DAT_overlay_3_0212a21c: ; 0x0212A21C
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a220
DAT_overlay_3_0212a220: ; 0x0212A220
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a224
DAT_overlay_3_0212a224: ; 0x0212A224
	.byte 0x13, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a228
DAT_overlay_3_0212a228: ; 0x0212A228
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a22c
DAT_overlay_3_0212a22c: ; 0x0212A22C
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a230
DAT_overlay_3_0212a230: ; 0x0212A230
	.byte 0x06, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a234
DAT_overlay_3_0212a234: ; 0x0212A234
	.byte 0x18, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a238
DAT_overlay_3_0212a238: ; 0x0212A238
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a23c
DAT_overlay_3_0212a23c: ; 0x0212A23C
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a240
DAT_overlay_3_0212a240: ; 0x0212A240
	.byte 0x13, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a244
DAT_overlay_3_0212a244: ; 0x0212A244
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a248
DAT_overlay_3_0212a248: ; 0x0212A248
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a24c
DAT_overlay_3_0212a24c: ; 0x0212A24C
	.byte 0x06, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a250
DAT_overlay_3_0212a250: ; 0x0212A250
	.byte 0x18, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a254
DAT_overlay_3_0212a254: ; 0x0212A254
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a258
DAT_overlay_3_0212a258: ; 0x0212A258
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a25c
DAT_overlay_3_0212a25c: ; 0x0212A25C
	.byte 0x13, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a260
DAT_overlay_3_0212a260: ; 0x0212A260
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a264
DAT_overlay_3_0212a264: ; 0x0212A264
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a268
DAT_overlay_3_0212a268: ; 0x0212A268
	.byte 0x06, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a26c
DAT_overlay_3_0212a26c: ; 0x0212A26C
	.byte 0x30, 0x00, 0x00, 0x00
	.byte 0x2C, 0x00, 0x00, 0x00, 0xA6, 0x80, 0xE2, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x85, 0x98, 0xE2, 0x00
	.byte 0x31, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0xB7, 0xC2, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00
	.byte 0x8B, 0x97, 0xE2, 0x00, 0x32, 0x00, 0x00, 0x00, 0x3A, 0x00, 0x00, 0x00, 0x9E, 0xBD, 0xEF, 0x00
	.byte 0x2A, 0x00, 0x00, 0x00, 0x8E, 0x97, 0xE2, 0x00, 0x33, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00
	.byte 0x2F, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x87, 0x97, 0xE2, 0x00, 0x34, 0x00, 0x00, 0x00
	.byte 0x9C, 0x80, 0xE2, 0x00, 0x28, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0xA1, 0x96, 0xE2, 0x00
	.byte 0x35, 0x00, 0x00, 0x00, 0x9D, 0x80, 0xE2, 0x00, 0x29, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
	.byte 0xB3, 0x96, 0xE2, 0x00, 0x36, 0x00, 0x00, 0x00, 0x98, 0x80, 0xE2, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0xAA, 0x99, 0xE2, 0x00, 0x37, 0x00, 0x00, 0x00, 0x99, 0x80, 0xE2, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x39, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x82, 0x99, 0xE2, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00
	.byte 0x80, 0x99, 0xE2, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a35c
DAT_overlay_3_0212a35c: ; 0x0212A35C
	.byte 0x41, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a360
DAT_overlay_3_0212a360: ; 0x0212A360
	.byte 0x48, 0x00, 0x00, 0x00, 0x4F, 0x00, 0x00, 0x00, 0x56, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x42, 0x00, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x57, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x51, 0x00, 0x00, 0x00
	.byte 0x58, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00
	.byte 0x52, 0x00, 0x00, 0x00, 0x59, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x45, 0x00, 0x00, 0x00
	.byte 0x4C, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x46, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00, 0x4E, 0x00, 0x00, 0x00, 0x55, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x82, 0x99, 0xE2, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00
	.byte 0x80, 0x99, 0xE2, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a44c
DAT_overlay_3_0212a44c: ; 0x0212A44C
	.byte 0x61, 0x00, 0x00, 0x00
	.byte 0x68, 0x00, 0x00, 0x00, 0x6F, 0x00, 0x00, 0x00, 0x76, 0x00, 0x00, 0x00, 0xA9, 0xC3, 0x00, 0x00
	.byte 0x62, 0x00, 0x00, 0x00, 0x69, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x63, 0x00, 0x00, 0x00, 0x6A, 0x00, 0x00, 0x00, 0x71, 0x00, 0x00, 0x00
	.byte 0x78, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00
	.byte 0x72, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x65, 0x00, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x00, 0x73, 0x00, 0x00, 0x00, 0x7A, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x66, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x00, 0x00, 0x74, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x67, 0x00, 0x00, 0x00, 0x6E, 0x00, 0x00, 0x00, 0x75, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x82, 0x99, 0xE2, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00
	.byte 0x80, 0x99, 0xE2, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a53c
DAT_overlay_3_0212a53c: ; 0x0212A53C
	.byte 0x18, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a540
DAT_overlay_3_0212a540: ; 0x0212A540
	.byte 0x0A, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a544
DAT_overlay_3_0212a544: ; 0x0212A544
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a548
DAT_overlay_3_0212a548: ; 0x0212A548
	.byte 0x07, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a54c
DAT_overlay_3_0212a54c: ; 0x0212A54C
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a550
DAT_overlay_3_0212a550: ; 0x0212A550
	.byte 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a554
DAT_overlay_3_0212a554: ; 0x0212A554
	.byte 0x01, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a558
DAT_overlay_3_0212a558: ; 0x0212A558
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a680
DAT_overlay_3_0212a680: ; 0x0212A680
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a684
DAT_overlay_3_0212a684: ; 0x0212A684
	.byte 0x00, 0x00, 0xFA, 0xFF

    .global DAT_overlay_3_0212a688
DAT_overlay_3_0212a688: ; 0x0212A688
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a68c
DAT_overlay_3_0212a68c: ; 0x0212A68C
	.byte 0x00, 0x00, 0xF9, 0xFF

    .global DAT_overlay_3_0212a690
DAT_overlay_3_0212a690: ; 0x0212A690
	.byte 0x05, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a694
DAT_overlay_3_0212a694: ; 0x0212A694
	.byte 0x0D, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212a6ac
DAT_overlay_3_0212a6ac: ; 0x0212A6AC
	.byte 0x00, 0x10, 0x00, 0x00

    .global DAT_overlay_3_0212a6b0
DAT_overlay_3_0212a6b0: ; 0x0212A6B0
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00

    .section .sinit,4 ; 0x0212A6C8

    .data

    .global s_menu_overlay_3_0212a6e0
s_menu_overlay_3_0212a6e0: ; 0x0212A6E0
	.asciz "menu/"

    .global DAT_overlay_3_0212A6E6
DAT_overlay_3_0212A6E6:
	.byte 0x00, 0x00

    .global s_menu_overlay_3_0212a6e8
s_menu_overlay_3_0212a6e8: ; 0x0212A6E8
	.asciz "menu/"

    .global DAT_overlay_3_0212A6EE
DAT_overlay_3_0212A6EE:
	.byte 0x00, 0x00

    .global s_tp_03d_overlay_3_0212a6f0
s_tp_03d_overlay_3_0212a6f0: ; 0x0212A6F0
	.asciz "tp%03d"

    .global DAT_overlay_3_0212A6F7
DAT_overlay_3_0212A6F7:
	.byte 0x00

    .global s_ma003_00_overlay_3_0212a6f8
s_ma003_00_overlay_3_0212a6f8: ; 0x0212A6F8
	.asciz "ma003_00"

    .global DAT_overlay_3_0212A701
DAT_overlay_3_0212A701:
	.byte 0x00, 0x00, 0x00

    .global s_title004_overlay_3_0212a704
s_title004_overlay_3_0212a704: ; 0x0212A704
	.asciz "title004"

    .global DAT_overlay_3_0212A70D
DAT_overlay_3_0212A70D:
	.byte 0x00, 0x00, 0x00

    .global s_title004_overlay_3_0212a710
s_title004_overlay_3_0212a710: ; 0x0212A710
	.asciz "title004"

    .global DAT_overlay_3_0212A719
DAT_overlay_3_0212A719:
	.byte 0x00, 0x00, 0x00

    .global s_title000_overlay_3_0212a71c
s_title000_overlay_3_0212a71c: ; 0x0212A71C
	.asciz "title000"

    .global DAT_overlay_3_0212A725
DAT_overlay_3_0212A725:
	.byte 0x00, 0x00, 0x00

    .global s_title000_overlay_3_0212a728
s_title000_overlay_3_0212a728: ; 0x0212A728
	.asciz "title000"

    .global DAT_overlay_3_0212A731
DAT_overlay_3_0212A731:
	.byte 0x00, 0x00, 0x00

    .global s_data_menu_overlay_3_0212a734
s_data_menu_overlay_3_0212a734: ; 0x0212A734
	.asciz "data/menu"

    .global DAT_overlay_3_0212A73E
DAT_overlay_3_0212A73E:
	.byte 0x00, 0x00

    .global s_data_menu_overlay_3_0212a740
s_data_menu_overlay_3_0212a740: ; 0x0212A740
	.asciz "data/menu"

    .global DAT_overlay_3_0212A74A
DAT_overlay_3_0212A74A:
	.byte 0x00, 0x00

    .global s_data_menu_overlay_3_0212a74c
s_data_menu_overlay_3_0212a74c: ; 0x0212A74C
	.asciz "data/menu"

    .global DAT_overlay_3_0212A756
DAT_overlay_3_0212A756:
	.byte 0x00, 0x00

    .global s_data_menu_overlay_3_0212a758
s_data_menu_overlay_3_0212a758: ; 0x0212A758
	.asciz "data/menu"

    .global DAT_overlay_3_0212A762
DAT_overlay_3_0212A762:
	.byte 0x00, 0x00

    .global s_data_menu_overlay_3_0212a764
s_data_menu_overlay_3_0212a764: ; 0x0212A764
	.asciz "data/menu"

    .global DAT_overlay_3_0212A76E
DAT_overlay_3_0212A76E:
	.byte 0x00, 0x00

    .global s_data_menu_overlay_3_0212a770
s_data_menu_overlay_3_0212a770: ; 0x0212A770
	.asciz "data/menu"

    .global DAT_overlay_3_0212A77A
DAT_overlay_3_0212A77A:
	.byte 0x00, 0x00

    .global s_data_menu_overlay_3_0212a77c
s_data_menu_overlay_3_0212a77c: ; 0x0212A77C
	.asciz "data/menu"

    .global DAT_overlay_3_0212A786
DAT_overlay_3_0212A786:
	.byte 0x00, 0x00

    .global s_title001_00_overlay_3_0212a788
s_title001_00_overlay_3_0212a788: ; 0x0212A788
	.asciz "title001_00"

    .global PTR_ptr_FUN_020835bc_overlay_3_0212a794
PTR_ptr_FUN_020835bc_overlay_3_0212a794: ; 0x0212A794
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8

    .global ptr_FUN_overlay_1_0212a808_overlay_3_0212a798
ptr_FUN_overlay_1_0212a808_overlay_3_0212a798: ; 0x0212A798
	.word s_11CTitleScene_overlay_3_0212a808
	.word PTR_ptr_FUN_02083578_0208a804

    .global s_title002_00_overlay_3_0212a7a0
s_title002_00_overlay_3_0212a7a0: ; 0x0212A7A0
	.asciz "title002_00"

    .global s_title005_01_overlay_3_0212a7ac
s_title005_01_overlay_3_0212a7ac: ; 0x0212A7AC
	.asciz "title005_01"

    .global s_title005_00_overlay_3_0212a7b8
s_title005_00_overlay_3_0212a7b8: ; 0x0212A7B8
	.asciz "title005_00"

    .global s_title004_00_overlay_3_0212a7c4
s_title004_00_overlay_3_0212a7c4: ; 0x0212A7C4
	.asciz "title004_00"

    .global s_title000_00_overlay_3_0212a7d0
s_title000_00_overlay_3_0212a7d0: ; 0x0212A7D0
	.asciz "title000_00"

    .global s_title003_00_overlay_3_0212a7dc
s_title003_00_overlay_3_0212a7dc: ; 0x0212A7DC
	.asciz "title003_00"

    .global s_title004_bg_overlay_3_0212a7e8
s_title004_bg_overlay_3_0212a7e8: ; 0x0212A7E8
	.asciz "title004_bg_"

    .global DAT_overlay_3_0212A7F5
DAT_overlay_3_0212A7F5:
	.byte 0x00, 0x00, 0x00

    .global s_title000_bg_overlay_3_0212a7f8
s_title000_bg_overlay_3_0212a7f8: ; 0x0212A7F8
	.asciz "title000_bg_"

    .global DAT_overlay_3_0212A805
DAT_overlay_3_0212A805:
	.byte 0x00, 0x00, 0x00

    .global s_11CTitleScene_overlay_3_0212a808
s_11CTitleScene_overlay_3_0212a808: ; 0x0212A808
	.asciz "11CTitleScene"

    .global DAT_overlay_3_0212A816
DAT_overlay_3_0212A816:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    .word PTR_ptr_FUN_020835bc_overlay_3_0212a794

    .global ptr_FUN_overlay_3_0211ca7c_overlay_3_0212a820
ptr_FUN_overlay_3_0211ca7c_overlay_3_0212a820: ; 0x0212A820
	.word ov3_0211CA7C

    .global ptr_FUN_overlay_28_0211caac_overlay_3_0212a824
ptr_FUN_overlay_28_0211caac_overlay_3_0212a824: ; 0x0212A824
	.word ov3_0211CAAC

    .global ptr_FUN_overlay_3_0211e250_overlay_3_0212a828
ptr_FUN_overlay_3_0211e250_overlay_3_0212a828: ; 0x0212A828
	.word ov3_0211E250
	.word ov3_02120118

    .global ptr_FUN_overlay_3_0212011c_overlay_3_0212a830
ptr_FUN_overlay_3_0212011c_overlay_3_0212a830: ; 0x0212A830
	.word ov3_0212011C

    .global ptr_FUN_overlay_3_021202c0_overlay_3_0212a834
ptr_FUN_overlay_3_021202c0_overlay_3_0212a834: ; 0x0212A834
	.word ov3_021202C0

    .global ptr_FUN_02007cc4_overlay_3_0212a838
ptr_FUN_02007cc4_overlay_3_0212a838: ; 0x0212A838
	.word sub_02007CC4

    .global ptr_FUN_overlay_11_0211cae4_overlay_3_0212a83c
ptr_FUN_overlay_11_0211cae4_overlay_3_0212a83c: ; 0x0212A83C
	.word ov3_0211CAE4

    .global ptr_FUN_overlay_3_0211d360_overlay_3_0212a840
ptr_FUN_overlay_3_0211d360_overlay_3_0212a840: ; 0x0212A840
	.word ov3_0211D360

    .global ptr_FUN_overlay_3_0211df68_overlay_3_0212a844
ptr_FUN_overlay_3_0211df68_overlay_3_0212a844: ; 0x0212A844
	.word ov3_0211DF68
	.word ov3_02120714

    .global s_data_message_etc_menu_mes_overlay_3_0212a84c
s_data_message_etc_menu_mes_overlay_3_0212a84c: ; 0x0212A84C
	.asciz "/data/message/etc/menu_mes"

    .global DAT_overlay_3_0212A867
DAT_overlay_3_0212A867:
	.byte 0x00

    .global s_data_message_system_system_mes_overlay_3_0212a868
s_data_message_system_system_mes_overlay_3_0212a868: ; 0x0212A868
	.asciz "/data/message/system/system_mes"

    .global PTR_DAT_overlay_3_0212a890_overlay_3_0212a888
PTR_DAT_overlay_3_0212a890_overlay_3_0212a888: ; 0x0212A888
	.word DAT_overlay_3_0212a890
	.word DAT_overlay_3_0212a8d0

    .global DAT_overlay_3_0212a890
DAT_overlay_3_0212a890: ; 0x0212A890
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xEC, 0xFD, 0xFF, 0xFF
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0xFF, 0xFF, 0xFF

    .global DAT_overlay_3_0212a8d0
DAT_overlay_3_0212a8d0: ; 0x0212A8D0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

    .global s_title_ue_d_d_overlay_3_0212a910
s_title_ue_d_d_overlay_3_0212a910: ; 0x0212A910
	.asciz "title_ue%d%d"

    .global DAT_overlay_3_0212A91D
DAT_overlay_3_0212A91D:
	.byte 0x00, 0x00, 0x00

    .global s_overlay_3_0212a920
s_overlay_3_0212a920: ; 0x0212A920
	.asciz "_"

    .global DAT_overlay_3_0212A922
DAT_overlay_3_0212A922:
	.byte 0x00, 0x00

    .global s_title_overlay_3_0212a924
s_title_overlay_3_0212a924: ; 0x0212A924
	.asciz "title/"

    .global DAT_overlay_3_0212A92B
DAT_overlay_3_0212A92B:
	.byte 0x00

    .global PTR_ptr_FUN_020835bc_overlay_3_0212a92c
PTR_ptr_FUN_020835bc_overlay_3_0212a92c: ; 0x0212A92C
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_14CContinueScene_overlay_3_0212a938
	.word PTR_ptr_FUN_02083578_0208a804

    .global s_14CContinueScene_overlay_3_0212a938
s_14CContinueScene_overlay_3_0212a938: ; 0x0212A938
	.asciz "14CContinueScene"

    .global DAT_overlay_3_0212A949
DAT_overlay_3_0212A949:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212a92c

    .global PTR_LAB_overlay_3_02120b18_overlay_3_0212a954
PTR_LAB_overlay_3_02120b18_overlay_3_0212a954: ; 0x0212A954
	.word ov3_02120B18

    .global ptr_FUN_overlay_3_02120b2c_overlay_3_0212a958
ptr_FUN_overlay_3_02120b2c_overlay_3_0212a958: ; 0x0212A958
	.word ov3_02120B2C

    .global ptr_FUN_overlay_3_02121260_overlay_3_0212a95c
ptr_FUN_overlay_3_02121260_overlay_3_0212a95c: ; 0x0212A95C
	.word ov3_02121260
	.word ov3_02121430
	.word ov3_02121434

    .global ptr_FUN_02007ce0_overlay_3_0212a968
ptr_FUN_02007ce0_overlay_3_0212a968: ; 0x0212A968
	.word sub_02007CE0

    .global ptr_FUN_02007cc4_overlay_3_0212a96c
ptr_FUN_02007cc4_overlay_3_0212a96c: ; 0x0212A96C
	.word sub_02007CC4

    .global ptr_FUN_overlay_3_02120b48_overlay_3_0212a970
ptr_FUN_overlay_3_02120b48_overlay_3_0212a970: ; 0x0212A970
	.word ov3_02120B48

    .global ptr_FUN_overlay_3_02120e58_overlay_3_0212a974
ptr_FUN_overlay_3_02120e58_overlay_3_0212a974: ; 0x0212A974
	.word ov3_02120E58

    .global ptr_FUN_overlay_3_02121178_overlay_3_0212a978
ptr_FUN_overlay_3_02121178_overlay_3_0212a978: ; 0x0212A978
	.word ov3_02121178
	.word ov3_02121444

    .global s_menu_overlay_3_0212a980
s_menu_overlay_3_0212a980: ; 0x0212A980
	.asciz "menu/"

    .global DAT_overlay_3_0212A986
DAT_overlay_3_0212A986:
	.byte 0x00, 0x00

    .global s_title004_bg_overlay_3_0212a988
s_title004_bg_overlay_3_0212a988: ; 0x0212A988
	.asciz "title004_bg_"

    .global DAT_overlay_3_0212A995
DAT_overlay_3_0212A995:
	.byte 0x00, 0x00, 0x00

    .global s_title004_overlay_3_0212a998
s_title004_overlay_3_0212a998: ; 0x0212A998
	.asciz "title004"

    .global DAT_overlay_3_0212A9A1
DAT_overlay_3_0212A9A1:
	.byte 0x00, 0x00, 0x00

    .global s_title004_00_overlay_3_0212a9a4
s_title004_00_overlay_3_0212a9a4: ; 0x0212A9A4
	.asciz "title004_00"

    .global s_data_message_etc_menu_mes_overlay_3_0212a9b0
s_data_message_etc_menu_mes_overlay_3_0212a9b0: ; 0x0212A9B0
	.asciz "data/message/etc/menu_mes"

    .global DAT_overlay_3_0212A9CA
DAT_overlay_3_0212A9CA:
	.byte 0x00, 0x00

    .global s_data_menu_overlay_3_0212a9cc
s_data_menu_overlay_3_0212a9cc: ; 0x0212A9CC
	.asciz "data/menu"

    .global DAT_overlay_3_0212A9D6
DAT_overlay_3_0212A9D6:
	.byte 0x00, 0x00

    .global s_title003_00_overlay_3_0212a9d8
s_title003_00_overlay_3_0212a9d8: ; 0x0212A9D8
	.asciz "title003_00"

    .global PTR_ptr_FUN_020835bc_overlay_3_0212a9e4
PTR_ptr_FUN_020835bc_overlay_3_0212a9e4: ; 0x0212A9E4
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_10CConfScene_overlay_3_0212a9f0
	.word PTR_ptr_FUN_02083578_0208a804

    .global s_10CConfScene_overlay_3_0212a9f0
s_10CConfScene_overlay_3_0212a9f0: ; 0x0212A9F0
	.asciz "10CConfScene"

    .global DAT_overlay_3_0212A9FD
DAT_overlay_3_0212A9FD:
	.byte 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212a9e4

    .global PTR_LAB_overlay_3_02121498_overlay_3_0212aa08
PTR_LAB_overlay_3_02121498_overlay_3_0212aa08: ; 0x0212AA08
	.word ov3_02121498

    .global ptr_FUN_overlay_3_021214ac_overlay_3_0212aa0c
ptr_FUN_overlay_3_021214ac_overlay_3_0212aa0c: ; 0x0212AA0C
	.word ov3_021214AC

    .global ptr_FUN_overlay_3_02121b78_overlay_3_0212aa10
ptr_FUN_overlay_3_02121b78_overlay_3_0212aa10: ; 0x0212AA10
	.word ov3_02121B78
	.word ov3_02121D0C
	.word ov3_02121D10

    .global ptr_FUN_02007ce0_overlay_3_0212aa1c
ptr_FUN_02007ce0_overlay_3_0212aa1c: ; 0x0212AA1C
	.word sub_02007CE0

    .global ptr_FUN_02007cc4_overlay_3_0212aa20
ptr_FUN_02007cc4_overlay_3_0212aa20: ; 0x0212AA20
	.word sub_02007CC4

    .global ptr_FUN_overlay_3_021214c8_overlay_3_0212aa24
ptr_FUN_overlay_3_021214c8_overlay_3_0212aa24: ; 0x0212AA24
	.word ov3_021214C8

    .global ptr_FUN_overlay_3_0212176c_overlay_3_0212aa28
ptr_FUN_overlay_3_0212176c_overlay_3_0212aa28: ; 0x0212AA28
	.word ov3_0212176C

    .global ptr_FUN_overlay_3_02121a90_overlay_3_0212aa2c
ptr_FUN_overlay_3_02121a90_overlay_3_0212aa2c: ; 0x0212AA2C
	.word ov3_02121A90
	.word ov3_02121D20

    .global s_menu_overlay_3_0212aa34
s_menu_overlay_3_0212aa34: ; 0x0212AA34
	.asciz "menu/"

    .global DAT_overlay_3_0212AA3A
DAT_overlay_3_0212AA3A:
	.byte 0x00, 0x00

    .global s_title004_bg_overlay_3_0212aa3c
s_title004_bg_overlay_3_0212aa3c: ; 0x0212AA3C
	.asciz "title004_bg_"

    .global DAT_overlay_3_0212AA49
DAT_overlay_3_0212AA49:
	.byte 0x00, 0x00, 0x00

    .global s_title004_overlay_3_0212aa4c
s_title004_overlay_3_0212aa4c: ; 0x0212AA4C
	.asciz "title004"

    .global DAT_overlay_3_0212AA55
DAT_overlay_3_0212AA55:
	.byte 0x00, 0x00, 0x00

    .global s_title004_00_overlay_3_0212aa58
s_title004_00_overlay_3_0212aa58: ; 0x0212AA58
	.asciz "title004_00"

    .global s_data_message_etc_menu_mes_overlay_3_0212aa64
s_data_message_etc_menu_mes_overlay_3_0212aa64: ; 0x0212AA64
	.asciz "data/message/etc/menu_mes"

    .global DAT_overlay_3_0212AA7E
DAT_overlay_3_0212AA7E:
	.byte 0x00, 0x00

    .global s_data_menu_overlay_3_0212aa80
s_data_menu_overlay_3_0212aa80: ; 0x0212AA80
	.asciz "data/menu"

    .global DAT_overlay_3_0212AA8A
DAT_overlay_3_0212AA8A:
	.byte 0x00, 0x00

    .global s_title003_00_overlay_3_0212aa8c
s_title003_00_overlay_3_0212aa8c: ; 0x0212AA8C
	.asciz "title003_00"

    .global PTR_ptr_FUN_020835bc_overlay_3_0212aa98
PTR_ptr_FUN_020835bc_overlay_3_0212aa98: ; 0x0212AA98
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_15CNameInputScene_overlay_3_0212aaa4
	.word PTR_ptr_FUN_02083578_0208a804

    .global s_15CNameInputScene_overlay_3_0212aaa4
s_15CNameInputScene_overlay_3_0212aaa4: ; 0x0212AAA4
	.asciz "15CNameInputScene"

    .global DAT_overlay_3_0212AAB6
DAT_overlay_3_0212AAB6:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    .word PTR_ptr_FUN_020835bc_overlay_3_0212aa98

    .global ptr_FUN_overlay_3_02121dbc_overlay_3_0212aac0
ptr_FUN_overlay_3_02121dbc_overlay_3_0212aac0: ; 0x0212AAC0
	.word ov3_02121DBC

    .global ptr_FUN_overlay_3_02121dfc_overlay_3_0212aac4
ptr_FUN_overlay_3_02121dfc_overlay_3_0212aac4: ; 0x0212AAC4
	.word ov3_02121DFC

    .global ptr_FUN_overlay_3_0212257c_overlay_3_0212aac8
ptr_FUN_overlay_3_0212257c_overlay_3_0212aac8: ; 0x0212AAC8
	.word ov3_0212257C

    .global ptr_FUN_overlay_3_02122cf4_overlay_3_0212aacc
ptr_FUN_overlay_3_02122cf4_overlay_3_0212aacc: ; 0x0212AACC
	.word ov3_02122CF4
	.word ov3_02122D40

    .global ptr_FUN_02007ce0_overlay_3_0212aad4
ptr_FUN_02007ce0_overlay_3_0212aad4: ; 0x0212AAD4
	.word sub_02007CE0

    .global ptr_FUN_02007cc4_overlay_3_0212aad8
ptr_FUN_02007cc4_overlay_3_0212aad8: ; 0x0212AAD8
	.word sub_02007CC4

    .global ptr_FUN_overlay_3_02122d44_overlay_3_0212aadc
ptr_FUN_overlay_3_02122d44_overlay_3_0212aadc: ; 0x0212AADC
	.word ov3_02122D44

    .global ptr_FUN_overlay_3_02123100_overlay_3_0212aae0
ptr_FUN_overlay_3_02123100_overlay_3_0212aae0: ; 0x0212AAE0
	.word ov3_02123100

    .global ptr_FUN_overlay_3_02123c44_overlay_3_0212aae4
ptr_FUN_overlay_3_02123c44_overlay_3_0212aae4: ; 0x0212AAE4
	.word ov3_02123C44
	.word ov3_02124008

    .global s_overlay_3_0212aaec
s_overlay_3_0212aaec: ; 0x0212AAEC
	.asciz "[...]"

    .global DAT_overlay_3_0212AAF2
DAT_overlay_3_0212AAF2:
	.byte 0x00, 0x00

    .global s_overlay_3_0212aaf4
s_overlay_3_0212aaf4: ; 0x0212AAF4
	.asciz "[-]"

    .global s_BGU_overlay_3_0212aaf8
s_BGU_overlay_3_0212aaf8: ; 0x0212AAF8
	.asciz "BGU"

    .global s_data_menu_mnd000_bg_LZ_bin_overlay_3_0212aafc
s_data_menu_mnd000_bg_LZ_bin_overlay_3_0212aafc: ; 0x0212AAFC
	.asciz "data/menu/mnd000_bg_LZ.bin"

    .global DAT_overlay_3_0212AB17
DAT_overlay_3_0212AB17:
	.byte 0x00

    .global s_BGU_mnd000_NCGR_overlay_3_0212ab18
s_BGU_mnd000_NCGR_overlay_3_0212ab18: ; 0x0212AB18
	.asciz "BGU:mnd000.NCGR"

    .global s_BGU_mnd000_NCLR_overlay_3_0212ab28
s_BGU_mnd000_NCLR_overlay_3_0212ab28: ; 0x0212AB28
	.asciz "BGU:mnd000.NCLR"

    .global s_BGU_mnd000_00_NSCR_overlay_3_0212ab38
s_BGU_mnd000_00_NSCR_overlay_3_0212ab38: ; 0x0212AB38
	.asciz "BGU:mnd000_00.NSCR"

    .global DAT_overlay_3_0212AB4B
DAT_overlay_3_0212AB4B:
	.byte 0x00

    .global s_BGD_overlay_3_0212ab4c
s_BGD_overlay_3_0212ab4c: ; 0x0212AB4C
	.asciz "BGD"

    .global s_data_menu_mni000_bg_LZ_bin_overlay_3_0212ab50
s_data_menu_mni000_bg_LZ_bin_overlay_3_0212ab50: ; 0x0212AB50
	.asciz "data/menu/mni000_bg_LZ.bin"

    .global DAT_overlay_3_0212AB6B
DAT_overlay_3_0212AB6B:
	.byte 0x00

    .global s_BGD_mni000_NCGR_overlay_3_0212ab6c
s_BGD_mni000_NCGR_overlay_3_0212ab6c: ; 0x0212AB6C
	.asciz "BGD:mni000.NCGR"

    .global s_BGD_mni000_NCLR_overlay_3_0212ab7c
s_BGD_mni000_NCLR_overlay_3_0212ab7c: ; 0x0212AB7C
	.asciz "BGD:mni000.NCLR"

    .global s_BGD_mni000_01_NSCR_overlay_3_0212ab8c
s_BGD_mni000_01_NSCR_overlay_3_0212ab8c: ; 0x0212AB8C
	.asciz "BGD:mni000_01.NSCR"

    .global DAT_overlay_3_0212AB9F
DAT_overlay_3_0212AB9F:
	.byte 0x00

    .global s_BGD_mni000_02_NSCR_overlay_3_0212aba0
s_BGD_mni000_02_NSCR_overlay_3_0212aba0: ; 0x0212ABA0
	.asciz "BGD:mni000_02.NSCR"

    .global DAT_overlay_3_0212ABB3
DAT_overlay_3_0212ABB3:
	.byte 0x00

    .global s_data_message_etc_name_entry_overlay_3_0212abb4
s_data_message_etc_name_entry_overlay_3_0212abb4: ; 0x0212ABB4
	.asciz "/data/message/etc/name_entry"

    .global DAT_overlay_3_0212ABD1
DAT_overlay_3_0212ABD1:
	.byte 0x00, 0x00, 0x00

    .global s_tp_03d_overlay_3_0212abd4
s_tp_03d_overlay_3_0212abd4: ; 0x0212ABD4
	.asciz "tp%03d"

    .global DAT_overlay_3_0212ABDB
DAT_overlay_3_0212ABDB:
	.byte 0x00

    .global s_data_menu_overlay_3_0212abdc
s_data_menu_overlay_3_0212abdc: ; 0x0212ABDC
	.asciz "data/menu"

    .global DAT_overlay_3_0212ABE6
DAT_overlay_3_0212ABE6:
	.byte 0x00, 0x00

    .global s_mni000_00_overlay_3_0212abe8
s_mni000_00_overlay_3_0212abe8: ; 0x0212ABE8
	.asciz "mni000_00"

    .global DAT_overlay_3_0212ABF2
DAT_overlay_3_0212ABF2:
	.byte 0x00, 0x00

    .global s_mps000_00_overlay_3_0212abf4
s_mps000_00_overlay_3_0212abf4: ; 0x0212ABF4
	.asciz "mps000_00"

    .global DAT_overlay_3_0212ABFE
DAT_overlay_3_0212ABFE:
	.byte 0x00, 0x00

    .global s_mp_03d_00_overlay_3_0212ac00
s_mp_03d_00_overlay_3_0212ac00: ; 0x0212AC00
	.asciz "mp%03d_00"

    .global DAT_overlay_3_0212AC0A
DAT_overlay_3_0212AC0A:
	.byte 0x00, 0x00

    .global PTR_ptr_FUN_020835bc_overlay_3_0212ac0c
PTR_ptr_FUN_020835bc_overlay_3_0212ac0c: ; 0x0212AC0C
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_17COpeningDemoScene_overlay_3_0212ac18
	.word PTR_ptr_FUN_02083578_0208a804

    .global s_17COpeningDemoScene_overlay_3_0212ac18
s_17COpeningDemoScene_overlay_3_0212ac18: ; 0x0212AC18
	.asciz "17COpeningDemoScene"

    .global DAT_overlay_3_0212AC2C
DAT_overlay_3_0212AC2C:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212ac0c

    .global ptr_FUN_overlay_3_021240e8_overlay_3_0212ac34
ptr_FUN_overlay_3_021240e8_overlay_3_0212ac34: ; 0x0212AC34
	.word ov3_021240E8

    .global ptr_FUN_overlay_3_02124130_overlay_3_0212ac38
ptr_FUN_overlay_3_02124130_overlay_3_0212ac38: ; 0x0212AC38
	.word ov3_02124130

    .global ptr_FUN_overlay_3_02124180_overlay_3_0212ac3c
ptr_FUN_overlay_3_02124180_overlay_3_0212ac3c: ; 0x0212AC3C
	.word ov3_02124180

    .global ptr_FUN_overlay_3_02124218_overlay_3_0212ac40
ptr_FUN_overlay_3_02124218_overlay_3_0212ac40: ; 0x0212AC40
	.word ov3_02124218
	.word ov3_021242F0
	.word ov3_021242F4

    .global ptr_FUN_02007cc4_overlay_3_0212ac4c
ptr_FUN_02007cc4_overlay_3_0212ac4c: ; 0x0212AC4C
	.word sub_02007CC4

    .global ptr_FUN_overlay_3_021242f8_overlay_3_0212ac50
ptr_FUN_overlay_3_021242f8_overlay_3_0212ac50: ; 0x0212AC50
	.word ov3_021242F8

    .global ptr_FUN_overlay_3_021244f4_overlay_3_0212ac54
ptr_FUN_overlay_3_021244f4_overlay_3_0212ac54: ; 0x0212AC54
	.word ov3_021244F4

    .global ptr_FUN_overlay_3_02124d10_overlay_3_0212ac58
ptr_FUN_overlay_3_02124d10_overlay_3_0212ac58: ; 0x0212AC58
	.word ov3_02124D10
	.word ov3_02125184

    .global DAT_overlay_3_0212ac60
DAT_overlay_3_0212ac60: ; 0x0212AC60
	.byte 0x06, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212ac64
DAT_overlay_3_0212ac64: ; 0x0212AC64
	.byte 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212ac68
DAT_overlay_3_0212ac68: ; 0x0212AC68
	.byte 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212ac6c
DAT_overlay_3_0212ac6c: ; 0x0212AC6C
	.byte 0x06, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00

    .global s_OPD_overlay_3_0212ad14
s_OPD_overlay_3_0212ad14: ; 0x0212AD14
	.asciz "OPD"

    .global s_data_opening_opdm_LZ_bin_overlay_3_0212ad18
s_data_opening_opdm_LZ_bin_overlay_3_0212ad18: ; 0x0212AD18
	.asciz "data/opening/opdm_LZ.bin"

    .global DAT_overlay_3_0212AD31
DAT_overlay_3_0212AD31:
	.byte 0x00, 0x00, 0x00

    .global s_OPD_opdm_02d_ntft_overlay_3_0212ad34
s_OPD_opdm_02d_ntft_overlay_3_0212ad34: ; 0x0212AD34
	.asciz "OPD:opdm%02d.ntft"

    .global DAT_overlay_3_0212AD46
DAT_overlay_3_0212AD46:
	.byte 0x00, 0x00

    .global s_OPD_opdm_02d_ntfp_overlay_3_0212ad48
s_OPD_opdm_02d_ntfp_overlay_3_0212ad48: ; 0x0212AD48
	.asciz "OPD:opdm%02d.ntfp"

    .global DAT_overlay_3_0212AD5A
DAT_overlay_3_0212AD5A:
	.byte 0x00, 0x00

    .global PTR_ptr_FUN_02083578_overlay_3_0212ad5c
PTR_ptr_FUN_02083578_overlay_3_0212ad5c: ; 0x0212AD5C
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_24TFieldParticleForceFieldI16CSi_overlay_3_0212af34

    .global PTR_ptr_FUN_02083578_overlay_3_0212ad64
PTR_ptr_FUN_02083578_overlay_3_0212ad64: ; 0x0212AD64
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_10COPDScreen_overlay_3_0212adb0

    .global PTR_ptr_FUN_02083578_overlay_3_0212ad6c
PTR_ptr_FUN_02083578_overlay_3_0212ad6c: ; 0x0212AD6C
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_21TFieldParticleEmitterI16CSimpl_overlay_3_0212af08

    .global PTR_ptr_FUN_020835bc_overlay_3_0212ad74
PTR_ptr_FUN_020835bc_overlay_3_0212ad74: ; 0x0212AD74
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_15COPDTitleScreen_overlay_3_0212adc0
	.word PTR_ptr_FUN_02083578_overlay_3_0212ad64

    .global PTR_ptr_FUN_020835bc_overlay_3_0212ad80
PTR_ptr_FUN_020835bc_overlay_3_0212ad80: ; 0x0212AD80
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_N15COPDTitleScreen13CSparkEmitte_overlay_3_0212ae98
	.word PTR_ptr_FUN_02083578_overlay_3_0212ad6c

    .global PTR_ptr_FUN_020835bc_overlay_3_0212ad8c
PTR_ptr_FUN_020835bc_overlay_3_0212ad8c: ; 0x0212AD8C
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_N15COPDTitleScreen13CStarAnimato_overlay_3_0212ae74
	.word PTR_ptr_FUN_02083578_overlay_3_0212ad5c

    .global PTR_ptr_FUN_020835bc_overlay_3_0212ad98
PTR_ptr_FUN_020835bc_overlay_3_0212ad98: ; 0x0212AD98
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_N15COPDTitleScreen14CSparkAnimat_overlay_3_0212aebc
	.word PTR_ptr_FUN_02083578_overlay_3_0212ad5c

    .global PTR_ptr_FUN_020835bc_overlay_3_0212ada4
PTR_ptr_FUN_020835bc_overlay_3_0212ada4: ; 0x0212ADA4
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_N15COPDTitleScreen12CStarEmitter_overlay_3_0212ae50
	.word PTR_ptr_FUN_02083578_overlay_3_0212ad6c

    .global s_10COPDScreen_overlay_3_0212adb0
s_10COPDScreen_overlay_3_0212adb0: ; 0x0212ADB0
	.asciz "10COPDScreen"

    .global DAT_overlay_3_0212ADBD
DAT_overlay_3_0212ADBD:
	.byte 0x00, 0x00, 0x00

    .global s_15COPDTitleScreen_overlay_3_0212adc0
s_15COPDTitleScreen_overlay_3_0212adc0: ; 0x0212ADC0
	.asciz "15COPDTitleScreen"

    .global DAT_overlay_3_0212ADD2
DAT_overlay_3_0212ADD2:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    .word PTR_ptr_FUN_020835bc_overlay_3_0212ad98

    .global PTR_LAB_overlay_3_021255ac_overlay_3_0212addc
PTR_LAB_overlay_3_021255ac_overlay_3_0212addc: ; 0x0212ADDC
	.word ov3_021255AC

    .global ptr_FUN_overlay_11_02126e44_overlay_3_0212ade0
ptr_FUN_overlay_11_02126e44_overlay_3_0212ade0: ; 0x0212ADE0
	.word ov3_02126E44

    .global ptr_FUN_overlay_3_02126a20_overlay_3_0212ade4
ptr_FUN_overlay_3_02126a20_overlay_3_0212ade4: ; 0x0212ADE4
	.word ov3_02126A20
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_0212ad8c_overlay_3_0212adec
ptr_FUN_overlay_11_0212ad8c_overlay_3_0212adec: ; 0x0212ADEC
	.word PTR_ptr_FUN_020835bc_overlay_3_0212ad8c

    .global PTR_LAB_overlay_3_021255b4_overlay_3_0212adf0
PTR_LAB_overlay_3_021255b4_overlay_3_0212adf0: ; 0x0212ADF0
	.word ov3_021255B4

    .global ptr_FUN_overlay_3_02126e6c_overlay_3_0212adf4
ptr_FUN_overlay_3_02126e6c_overlay_3_0212adf4: ; 0x0212ADF4
	.word ov3_02126E6C

    .global ptr_FUN_overlay_3_02126d60_overlay_3_0212adf8
ptr_FUN_overlay_3_02126d60_overlay_3_0212adf8: ; 0x0212ADF8
	.word ov3_02126D60
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_3_0212ad6c

    .global PTR_LAB_overlay_3_02126e94_overlay_3_0212ae04
PTR_LAB_overlay_3_02126e94_overlay_3_0212ae04: ; 0x0212AE04
	.word ov3_02126E94

    .global ptr_FUN_overlay_3_02126e80_overlay_3_0212ae08
ptr_FUN_overlay_3_02126e80_overlay_3_0212ae08: ; 0x0212AE08
	.word ov3_02126E80
	.word ov3_02126E98
	.word ov3_021264D0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212ada4

    .global PTR_LAB_overlay_3_021255b0_overlay_3_0212ae20
PTR_LAB_overlay_3_021255b0_overlay_3_0212ae20: ; 0x0212AE20
	.word ov3_021255B0

    .global ptr_FUN_overlay_3_02126e58_overlay_3_0212ae24
ptr_FUN_overlay_3_02126e58_overlay_3_0212ae24: ; 0x0212AE24
	.word ov3_02126E58
	.word ov3_02125CA4

    .global ptr_FUN_overlay_3_02126b18_overlay_3_0212ae2c
ptr_FUN_overlay_3_02126b18_overlay_3_0212ae2c: ; 0x0212AE2C
	.word ov3_02126B18

    .global ptr_FUN_overlay_3_02126be4_overlay_3_0212ae30
ptr_FUN_overlay_3_02126be4_overlay_3_0212ae30: ; 0x0212AE30
	.word ov3_02126BE4
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212ad80

    .global PTR_LAB_overlay_3_021255a8_overlay_3_0212ae3c
PTR_LAB_overlay_3_021255a8_overlay_3_0212ae3c: ; 0x0212AE3C
	.word ov3_021255A8

    .global ptr_FUN_overlay_11_02126e30_overlay_3_0212ae40
ptr_FUN_overlay_11_02126e30_overlay_3_0212ae40: ; 0x0212AE40
	.word ov3_02126E30
	.word ov3_02125C98

    .global ptr_FUN_overlay_3_02126748_overlay_3_0212ae48
ptr_FUN_overlay_3_02126748_overlay_3_0212ae48: ; 0x0212AE48
	.word ov3_02126748

    .global ptr_FUN_overlay_3_02126814_overlay_3_0212ae4c
ptr_FUN_overlay_3_02126814_overlay_3_0212ae4c: ; 0x0212AE4C
	.word ov3_02126814

    .global s_N15COPDTitleScreen12CStarEmitter_overlay_3_0212ae50
s_N15COPDTitleScreen12CStarEmitter_overlay_3_0212ae50: ; 0x0212AE50
	.asciz "N15COPDTitleScreen12CStarEmitterE"

    .global DAT_overlay_3_0212AE72
DAT_overlay_3_0212AE72:
	.byte 0x00, 0x00

    .global s_N15COPDTitleScreen13CStarAnimato_overlay_3_0212ae74
s_N15COPDTitleScreen13CStarAnimato_overlay_3_0212ae74: ; 0x0212AE74
	.asciz "N15COPDTitleScreen13CStarAnimatorE"

    .global DAT_overlay_3_0212AE97
DAT_overlay_3_0212AE97:
	.byte 0x00

    .global s_N15COPDTitleScreen13CSparkEmitte_overlay_3_0212ae98
s_N15COPDTitleScreen13CSparkEmitte_overlay_3_0212ae98: ; 0x0212AE98
	.asciz "N15COPDTitleScreen13CSparkEmitterE"

    .global DAT_overlay_3_0212AEBB
DAT_overlay_3_0212AEBB:
	.byte 0x00

    .global s_N15COPDTitleScreen14CSparkAnimat_overlay_3_0212aebc
s_N15COPDTitleScreen14CSparkAnimat_overlay_3_0212aebc: ; 0x0212AEBC
	.asciz "N15COPDTitleScreen14CSparkAnimatorE"

    .global DAT_overlay_3_0212AEE0
DAT_overlay_3_0212AEE0:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212ad74

    .global ptr_FUN_overlay_3_021255b8_overlay_3_0212aee8
ptr_FUN_overlay_3_021255b8_overlay_3_0212aee8: ; 0x0212AEE8
	.word ov3_021255B8

    .global ptr_FUN_overlay_3_021256c4_overlay_3_0212aeec
ptr_FUN_overlay_3_021256c4_overlay_3_0212aeec: ; 0x0212AEEC
	.word ov3_021256C4

    .global ptr_FUN_overlay_3_021257d8_overlay_3_0212aef0
ptr_FUN_overlay_3_021257d8_overlay_3_0212aef0: ; 0x0212AEF0
	.word ov3_021257D8

    .global ptr_FUN_overlay_3_02125824_overlay_3_0212aef4
ptr_FUN_overlay_3_02125824_overlay_3_0212aef4: ; 0x0212AEF4
	.word ov3_02125824

    .global ptr_FUN_overlay_3_02125834_overlay_3_0212aef8
ptr_FUN_overlay_3_02125834_overlay_3_0212aef8: ; 0x0212AEF8
	.word ov3_02125834

    .global ptr_FUN_overlay_3_02125d0c_overlay_3_0212aefc
ptr_FUN_overlay_3_02125d0c_overlay_3_0212aefc: ; 0x0212AEFC
	.word ov3_02125D0C

    .global ptr_FUN_overlay_3_02125d10_overlay_3_0212af00
ptr_FUN_overlay_3_02125d10_overlay_3_0212af00: ; 0x0212AF00
	.word ov3_02125D10

    .global ptr_FUN_overlay_3_021264d8_overlay_3_0212af04
ptr_FUN_overlay_3_021264d8_overlay_3_0212af04: ; 0x0212AF04
	.word ov3_021264D8

    .global s_21TFieldParticleEmitterI16CSimpl_overlay_3_0212af08
s_21TFieldParticleEmitterI16CSimpl_overlay_3_0212af08: ; 0x0212AF08
	.asciz "21TFieldParticleEmitterI16CSimpleSpriteNTFE"

    .global s_24TFieldParticleForceFieldI16CSi_overlay_3_0212af34
s_24TFieldParticleForceFieldI16CSi_overlay_3_0212af34: ; 0x0212AF34
	.asciz "24TFieldParticleForceFieldI16CSimpleSpriteNTFE"

    .global DAT_overlay_3_0212AF63
DAT_overlay_3_0212AF63:
	.byte 0x00

    .global DAT_overlay_3_0212af64
DAT_overlay_3_0212af64: ; 0x0212AF64
	.byte 0x00, 0x10, 0x00, 0x00

    .global DAT_overlay_3_0212af68
DAT_overlay_3_0212af68: ; 0x0212AF68
	.byte 0x00, 0xD0, 0xF9, 0xFF

    .global DAT_overlay_3_0212af6c
DAT_overlay_3_0212af6c: ; 0x0212AF6C
	.byte 0x00, 0x00, 0x0B, 0x00

    .global DAT_overlay_3_0212af70
DAT_overlay_3_0212af70: ; 0x0212AF70
	.byte 0x00, 0x00, 0x06, 0x00

    .global DAT_overlay_3_0212af74
DAT_overlay_3_0212af74: ; 0x0212AF74
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212af78
DAT_overlay_3_0212af78: ; 0x0212AF78
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212af7c
DAT_overlay_3_0212af7c: ; 0x0212AF7C
	.byte 0x00, 0x00, 0x0B, 0x00

    .global DAT_overlay_3_0212af80
DAT_overlay_3_0212af80: ; 0x0212AF80
	.byte 0x00, 0x00, 0x06, 0x00

    .global DAT_overlay_3_0212af84
DAT_overlay_3_0212af84: ; 0x0212AF84
	.byte 0x05, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212af88
DAT_overlay_3_0212af88: ; 0x0212AF88
	.byte 0x64, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212af8c
DAT_overlay_3_0212af8c: ; 0x0212AF8C
	.byte 0x00, 0x10, 0x00, 0x00

    .global DAT_overlay_3_0212af90
DAT_overlay_3_0212af90: ; 0x0212AF90
	.byte 0x00, 0x10, 0xF9, 0xFF

    .global DAT_overlay_3_0212af94
DAT_overlay_3_0212af94: ; 0x0212AF94
	.byte 0x00, 0x00, 0x0B, 0x00

    .global DAT_overlay_3_0212af98
DAT_overlay_3_0212af98: ; 0x0212AF98
	.byte 0x00, 0x00, 0x05, 0x00

    .global DAT_overlay_3_0212af9c
DAT_overlay_3_0212af9c: ; 0x0212AF9C
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212afa0
DAT_overlay_3_0212afa0: ; 0x0212AFA0
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212afa4
DAT_overlay_3_0212afa4: ; 0x0212AFA4
	.byte 0x00, 0x00, 0x0B, 0x00

    .global DAT_overlay_3_0212afa8
DAT_overlay_3_0212afa8: ; 0x0212AFA8
	.byte 0x00, 0x00, 0x05, 0x00

    .global DAT_overlay_3_0212afac
DAT_overlay_3_0212afac: ; 0x0212AFAC
	.byte 0x06, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212afb0
DAT_overlay_3_0212afb0: ; 0x0212AFB0
	.byte 0x66, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x03, 0x00, 0x00, 0x80, 0xF8, 0xFF, 0x00, 0x80, 0x08, 0x00
	.byte 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x08, 0x00
	.byte 0x00, 0x00, 0x03, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0xFC, 0xFF, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x67, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x01, 0x00

    .global DAT_overlay_3_0212b024
DAT_overlay_3_0212b024: ; 0x0212B024
	.byte 0x09, 0x00, 0x00, 0x00, 0x65, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x65, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF9, 0xFF, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x0C, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x65, 0x00, 0x00, 0x00

    .global PTR_ptr_FUN_02083578_overlay_3_0212b07c
PTR_ptr_FUN_02083578_overlay_3_0212b07c: ; 0x0212B07C
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_24TFieldParticleForceFieldI13CLi_overlay_3_0212b2e8

    .global PTR_ptr_FUN_02083578_overlay_3_0212b084
PTR_ptr_FUN_02083578_overlay_3_0212b084: ; 0x0212B084
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_24TFieldParticleForceFieldI10CSp_overlay_3_0212b238

    .global PTR_ptr_FUN_02083578_overlay_3_0212b08c
PTR_ptr_FUN_02083578_overlay_3_0212b08c: ; 0x0212B08C
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_21TFieldParticleEmitterI13CLineP_overlay_3_0212b290

    .global PTR_ptr_FUN_02083578_overlay_3_0212b094
PTR_ptr_FUN_02083578_overlay_3_0212b094: ; 0x0212B094
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_21TFieldParticleEmitterI10CSpark_overlay_3_0212b1e8

    .global PTR_ptr_FUN_020835bc_overlay_3_0212b09c
PTR_ptr_FUN_020835bc_overlay_3_0212b09c: ; 0x0212B09C
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_N21COPDCaptureDiscScreen20CLineP_overlay_3_0212b314
	.word PTR_ptr_FUN_02083578_overlay_3_0212b08c

    .global PTR_ptr_FUN_020835bc_overlay_3_0212b0a8
PTR_ptr_FUN_020835bc_overlay_3_0212b0a8: ; 0x0212B0A8
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_10CSparkLine_overlay_3_0212b0f0
	.word PTR_ptr_FUN_020835bc_0208a690

    .global PTR_ptr_FUN_020835bc_overlay_3_0212b0b4
PTR_ptr_FUN_020835bc_overlay_3_0212b0b4: ; 0x0212B0B4
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_21COPDCaptureDiscScreen_overlay_3_0212b160
	.word PTR_ptr_FUN_02083578_overlay_3_0212ad64

    .global PTR_ptr_FUN_020835bc_overlay_3_0212b0c0
PTR_ptr_FUN_020835bc_overlay_3_0212b0c0: ; 0x0212B0C0
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_13CLineParticle_overlay_3_0212b100
	.word PTR_ptr_FUN_020835bc_0208a6f8

    .global PTR_ptr_FUN_020835bc_overlay_3_0212b0cc
PTR_ptr_FUN_020835bc_overlay_3_0212b0cc: ; 0x0212B0CC
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_N21COPDCaptureDiscScreen13CSpark_overlay_3_0212b264
	.word PTR_ptr_FUN_02083578_overlay_3_0212b094

    .global PTR_ptr_FUN_020835bc_overlay_3_0212b0d8
PTR_ptr_FUN_020835bc_overlay_3_0212b0d8: ; 0x0212B0D8
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_N21COPDCaptureDiscScreen21CLineP_overlay_3_0212b344
	.word PTR_ptr_FUN_02083578_overlay_3_0212b07c

    .global PTR_ptr_FUN_020835bc_overlay_3_0212b0e4
PTR_ptr_FUN_020835bc_overlay_3_0212b0e4: ; 0x0212B0E4
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_N21COPDCaptureDiscScreen14CSpark_overlay_3_0212b2bc
	.word PTR_ptr_FUN_02083578_overlay_3_0212b084

    .global s_10CSparkLine_overlay_3_0212b0f0
s_10CSparkLine_overlay_3_0212b0f0: ; 0x0212B0F0
	.asciz "10CSparkLine"

    .global DAT_overlay_3_0212B0FD
DAT_overlay_3_0212B0FD:
	.byte 0x00, 0x00, 0x00

    .global s_13CLineParticle_overlay_3_0212b100
s_13CLineParticle_overlay_3_0212b100: ; 0x0212B100
	.asciz "13CLineParticle"

    .global DAT_overlay_3_0212B110
DAT_overlay_3_0212B110:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212b0d8

    .global PTR_LAB_overlay_3_02127344_overlay_3_0212b118
PTR_LAB_overlay_3_02127344_overlay_3_0212b118: ; 0x0212B118
	.word ov3_02127344

    .global ptr_FUN_overlay_3_02129088_overlay_3_0212b11c
ptr_FUN_overlay_3_02129088_overlay_3_0212b11c: ; 0x0212B11C
	.word ov3_02129088

    .global ptr_FUN_overlay_3_02128e30_overlay_3_0212b120
ptr_FUN_overlay_3_02128e30_overlay_3_0212b120: ; 0x0212B120
	.word ov3_02128E30
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_1_0212b0a8_overlay_3_0212b128
ptr_FUN_overlay_1_0212b0a8_overlay_3_0212b128: ; 0x0212B128
	.word PTR_ptr_FUN_020835bc_overlay_3_0212b0a8

    .global PTR_LAB_overlay_3_021272b4_overlay_3_0212b12c
PTR_LAB_overlay_3_021272b4_overlay_3_0212b12c: ; 0x0212B12C
	.word ov3_021272B4

    .global ptr_FUN_overlay_3_021290e0_overlay_3_0212b130
ptr_FUN_overlay_3_021290e0_overlay_3_0212b130: ; 0x0212B130
	.word ov3_021290E0

    .global ptr_FUN_02003a2c_overlay_3_0212b134
ptr_FUN_02003a2c_overlay_3_0212b134: ; 0x0212B134
	.word sub_02003A2C
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_0212b0c0_overlay_3_0212b13c
ptr_FUN_overlay_11_0212b0c0_overlay_3_0212b13c: ; 0x0212B13C
	.word PTR_ptr_FUN_020835bc_overlay_3_0212b0c0

    .global PTR_LAB_overlay_3_02127318_overlay_3_0212b140
PTR_LAB_overlay_3_02127318_overlay_3_0212b140: ; 0x0212B140
	.word ov3_02127318

    .global ptr_FUN_overlay_3_021290c4_overlay_3_0212b144
ptr_FUN_overlay_3_021290c4_overlay_3_0212b144: ; 0x0212B144
	.word ov3_021290C4

    .global ptr_FUN_020041e4_overlay_3_0212b148
ptr_FUN_020041e4_overlay_3_0212b148: ; 0x0212B148
	.word sub_020041E4
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212b0e4

    .global PTR_LAB_overlay_3_0212734c_overlay_3_0212b154
PTR_LAB_overlay_3_0212734c_overlay_3_0212b154: ; 0x0212B154
	.word ov3_0212734C

    .global ptr_FUN_overlay_3_021290b0_overlay_3_0212b158
ptr_FUN_overlay_3_021290b0_overlay_3_0212b158: ; 0x0212B158
	.word ov3_021290B0

    .global ptr_FUN_overlay_3_02129010_overlay_3_0212b15c
ptr_FUN_overlay_3_02129010_overlay_3_0212b15c: ; 0x0212B15C
	.word ov3_02129010

    .global s_21COPDCaptureDiscScreen_overlay_3_0212b160
s_21COPDCaptureDiscScreen_overlay_3_0212b160: ; 0x0212B160
	.asciz "21COPDCaptureDiscScreen"

    .global DAT_overlay_3_0212B178
DAT_overlay_3_0212B178:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212b0cc

    .global PTR_LAB_overlay_3_02127348_overlay_3_0212b180
PTR_LAB_overlay_3_02127348_overlay_3_0212b180: ; 0x0212B180
	.word ov3_02127348

    .global ptr_FUN_overlay_3_0212909c_overlay_3_0212b184
ptr_FUN_overlay_3_0212909c_overlay_3_0212b184: ; 0x0212B184
	.word ov3_0212909C
	.word ov3_021289A8

    .global ptr_FUN_overlay_11_02128e84_overlay_3_0212b18c
ptr_FUN_overlay_11_02128e84_overlay_3_0212b18c: ; 0x0212B18C
	.word ov3_02128E84

    .global ptr_FUN_overlay_3_02128f50_overlay_3_0212b190
ptr_FUN_overlay_3_02128f50_overlay_3_0212b190: ; 0x0212B190
	.word ov3_02128F50
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_3_0212b08c

    .global PTR_LAB_overlay_3_02129124_overlay_3_0212b19c
PTR_LAB_overlay_3_02129124_overlay_3_0212b19c: ; 0x0212B19C
	.word ov3_02129124

    .global ptr_FUN_overlay_3_02129110_overlay_3_0212b1a0
ptr_FUN_overlay_3_02129110_overlay_3_0212b1a0: ; 0x0212B1A0
	.word ov3_02129110
	.word ov3_02129070
	.word ov3_021289B4
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_3_0212b094

    .global PTR_LAB_overlay_3_02129128_overlay_3_0212b1b8
PTR_LAB_overlay_3_02129128_overlay_3_0212b1b8: ; 0x0212B1B8
	.word ov3_02129128

    .global ptr_FUN_overlay_3_021290fc_overlay_3_0212b1bc
ptr_FUN_overlay_3_021290fc_overlay_3_0212b1bc: ; 0x0212B1BC
	.word ov3_021290FC
	.word ov3_0212912C
	.word ov3_021289BC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212b09c

    .global PTR_LAB_overlay_3_02127340_overlay_3_0212b1d4
PTR_LAB_overlay_3_02127340_overlay_3_0212b1d4: ; 0x0212B1D4
	.word ov3_02127340

    .global ptr_FUN_overlay_3_02129074_overlay_3_0212b1d8
ptr_FUN_overlay_3_02129074_overlay_3_0212b1d8: ; 0x0212B1D8
	.word ov3_02129074
	.word ov3_02129070
	.word ov3_02128CA0

    .global ptr_FUN_overlay_3_02128cb8_overlay_3_0212b1e4
ptr_FUN_overlay_3_02128cb8_overlay_3_0212b1e4: ; 0x0212B1E4
	.word ov3_02128CB8

    .global s_21TFieldParticleEmitterI10CSpark_overlay_3_0212b1e8
s_21TFieldParticleEmitterI10CSpark_overlay_3_0212b1e8: ; 0x0212B1E8
	.asciz "21TFieldParticleEmitterI10CSparkLineE"

    .global DAT_overlay_3_0212B20E
DAT_overlay_3_0212B20E:
	.byte 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212b0b4

    .global ptr_FUN_overlay_3_02127350_overlay_3_0212b218
ptr_FUN_overlay_3_02127350_overlay_3_0212b218: ; 0x0212B218
	.word ov3_02127350

    .global ptr_FUN_overlay_3_02127488_overlay_3_0212b21c
ptr_FUN_overlay_3_02127488_overlay_3_0212b21c: ; 0x0212B21C
	.word ov3_02127488

    .global ptr_FUN_overlay_3_021275c8_overlay_3_0212b220
ptr_FUN_overlay_3_021275c8_overlay_3_0212b220: ; 0x0212B220
	.word ov3_021275C8

    .global ptr_FUN_overlay_3_02127660_overlay_3_0212b224
ptr_FUN_overlay_3_02127660_overlay_3_0212b224: ; 0x0212B224
	.word ov3_02127660

    .global ptr_FUN_overlay_3_021276d8_overlay_3_0212b228
ptr_FUN_overlay_3_021276d8_overlay_3_0212b228: ; 0x0212B228
	.word ov3_021276D8

    .global ptr_FUN_overlay_3_02127ee8_overlay_3_0212b22c
ptr_FUN_overlay_3_02127ee8_overlay_3_0212b22c: ; 0x0212B22C
	.word ov3_02127EE8

    .global ptr_FUN_overlay_3_02127f04_overlay_3_0212b230
ptr_FUN_overlay_3_02127f04_overlay_3_0212b230: ; 0x0212B230
	.word ov3_02127F04

    .global ptr_FUN_overlay_3_021289c4_overlay_3_0212b234
ptr_FUN_overlay_3_021289c4_overlay_3_0212b234: ; 0x0212B234
	.word ov3_021289C4

    .global s_24TFieldParticleForceFieldI10CSp_overlay_3_0212b238
s_24TFieldParticleForceFieldI10CSp_overlay_3_0212b238: ; 0x0212B238
	.asciz "24TFieldParticleForceFieldI10CSparkLineE"

    .global DAT_overlay_3_0212B261
DAT_overlay_3_0212B261:
	.byte 0x00, 0x00, 0x00

    .global s_N21COPDCaptureDiscScreen13CSpark_overlay_3_0212b264
s_N21COPDCaptureDiscScreen13CSpark_overlay_3_0212b264: ; 0x0212B264
	.asciz "N21COPDCaptureDiscScreen13CSparkEmitterE"

    .global DAT_overlay_3_0212B28D
DAT_overlay_3_0212B28D:
	.byte 0x00, 0x00, 0x00

    .global s_21TFieldParticleEmitterI13CLineP_overlay_3_0212b290
s_21TFieldParticleEmitterI13CLineP_overlay_3_0212b290: ; 0x0212B290
	.asciz "21TFieldParticleEmitterI13CLineParticleE"

    .global DAT_overlay_3_0212B2B9
DAT_overlay_3_0212B2B9:
	.byte 0x00, 0x00, 0x00

    .global s_N21COPDCaptureDiscScreen14CSpark_overlay_3_0212b2bc
s_N21COPDCaptureDiscScreen14CSpark_overlay_3_0212b2bc: ; 0x0212B2BC
	.asciz "N21COPDCaptureDiscScreen14CSparkAnimatorE"

    .global DAT_overlay_3_0212B2E6
DAT_overlay_3_0212B2E6:
	.byte 0x00, 0x00

    .global s_24TFieldParticleForceFieldI13CLi_overlay_3_0212b2e8
s_24TFieldParticleForceFieldI13CLi_overlay_3_0212b2e8: ; 0x0212B2E8
	.asciz "24TFieldParticleForceFieldI13CLineParticleE"

    .global s_N21COPDCaptureDiscScreen20CLineP_overlay_3_0212b314
s_N21COPDCaptureDiscScreen20CLineP_overlay_3_0212b314: ; 0x0212B314
	.asciz "N21COPDCaptureDiscScreen20CLineParticleEmitterE"

    .global s_N21COPDCaptureDiscScreen21CLineP_overlay_3_0212b344
s_N21COPDCaptureDiscScreen21CLineP_overlay_3_0212b344: ; 0x0212B344
	.asciz "N21COPDCaptureDiscScreen21CLineParticleAnimatorE"

    .global DAT_overlay_3_0212B375
DAT_overlay_3_0212B375:
	.byte 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212b378
DAT_overlay_3_0212b378: ; 0x0212B378
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212b37c
DAT_overlay_3_0212b37c: ; 0x0212B37C
	.byte 0x00, 0x00, 0xF9, 0xFF

    .global DAT_overlay_3_0212b380
DAT_overlay_3_0212b380: ; 0x0212B380
	.byte 0x00, 0x80, 0x00, 0x00

    .global DAT_overlay_3_0212b384
DAT_overlay_3_0212b384: ; 0x0212B384
	.byte 0x00, 0x80, 0x00, 0x00

    .global DAT_overlay_3_0212b388
DAT_overlay_3_0212b388: ; 0x0212B388
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212b38c
DAT_overlay_3_0212b38c: ; 0x0212B38C
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212b390
DAT_overlay_3_0212b390: ; 0x0212B390
	.byte 0x00, 0x00, 0x04, 0x00

    .global DAT_overlay_3_0212b394
DAT_overlay_3_0212b394: ; 0x0212B394
	.byte 0x00, 0x00, 0x04, 0x00

    .global DAT_overlay_3_0212b398
DAT_overlay_3_0212b398: ; 0x0212B398
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212b39c
DAT_overlay_3_0212b39c: ; 0x0212B39C
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212b3a0
DAT_overlay_3_0212b3a0: ; 0x0212B3A0
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212b3a4
DAT_overlay_3_0212b3a4: ; 0x0212B3A4
	.byte 0x00, 0x00, 0x06, 0x00

    .global DAT_overlay_3_0212b3a8
DAT_overlay_3_0212b3a8: ; 0x0212B3A8
	.byte 0x00, 0x00, 0x10, 0x00

    .global DAT_overlay_3_0212b3ac
DAT_overlay_3_0212b3ac: ; 0x0212B3AC
	.byte 0x00, 0x00, 0x01, 0x00

    .global DAT_overlay_3_0212b3b0
DAT_overlay_3_0212b3b0: ; 0x0212B3B0
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212b3b4
DAT_overlay_3_0212b3b4: ; 0x0212B3B4
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212b3b8
DAT_overlay_3_0212b3b8: ; 0x0212B3B8
	.byte 0x00, 0x00, 0x10, 0x00

    .global DAT_overlay_3_0212b3bc
DAT_overlay_3_0212b3bc: ; 0x0212B3BC
	.byte 0x00, 0x00, 0x01, 0x00

    .global DAT_overlay_3_0212b3c0
DAT_overlay_3_0212b3c0: ; 0x0212B3C0
	.byte 0x09, 0x00, 0x00, 0x00

    .global DAT_overlay_3_0212b3c4
DAT_overlay_3_0212b3c4: ; 0x0212B3C4
	.byte 0x00, 0x00, 0x00, 0x00

    .global s_OPD_overlay_3_0212b3c8
s_OPD_overlay_3_0212b3c8: ; 0x0212B3C8
	.asciz "OPD"

    .global s_data_interface_i019_LZ_bin_overlay_3_0212b3cc
s_data_interface_i019_LZ_bin_overlay_3_0212b3cc: ; 0x0212B3CC
	.asciz "data/interface/i019_LZ.bin"

    .global DAT_overlay_3_0212B3E7
DAT_overlay_3_0212B3E7:
	.byte 0x00

    .global s_OPD_i019_00_NCBR_overlay_3_0212b3e8
s_OPD_i019_00_NCBR_overlay_3_0212b3e8: ; 0x0212B3E8
	.asciz "OPD:i019_00.NCBR"

    .global DAT_overlay_3_0212B3F9
DAT_overlay_3_0212B3F9:
	.byte 0x00, 0x00, 0x00

    .global s_OPD_i019_NCLR_overlay_3_0212b3fc
s_OPD_i019_NCLR_overlay_3_0212b3fc: ; 0x0212B3FC
	.asciz "OPD:i019.NCLR"

    .global DAT_overlay_3_0212B40A
DAT_overlay_3_0212B40A:
	.byte 0x00, 0x00

    .global s_OPD_i019_00_NCER_overlay_3_0212b40c
s_OPD_i019_00_NCER_overlay_3_0212b40c: ; 0x0212B40C
	.asciz "OPD:i019_00.NCER"

    .global DAT_overlay_3_0212B41D
DAT_overlay_3_0212B41D:
	.byte 0x00, 0x00, 0x00

    .global s_OPD_i019_00_cac_overlay_3_0212b420
s_OPD_i019_00_cac_overlay_3_0212b420: ; 0x0212B420
	.asciz "OPD:i019_00.cac"

    .global PTR_ptr_FUN_020835bc_overlay_3_0212b430
PTR_ptr_FUN_020835bc_overlay_3_0212b430: ; 0x0212B430
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_15COPDCaptureLine_overlay_3_0212b43c
	.word PTR_ptr_FUN_02083578_0208a664

    .global s_15COPDCaptureLine_overlay_3_0212b43c
s_15COPDCaptureLine_overlay_3_0212b43c: ; 0x0212B43C
	.asciz "15COPDCaptureLine"

    .global DAT_overlay_3_0212B44E
DAT_overlay_3_0212B44E:
	.byte 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212b430

    .global ptr_FUN_overlay_3_02129130_overlay_3_0212b458
ptr_FUN_overlay_3_02129130_overlay_3_0212b458: ; 0x0212B458
	.word ov3_02129130

    .global ptr_FUN_overlay_3_02129160_overlay_3_0212b45c
ptr_FUN_overlay_3_02129160_overlay_3_0212b45c: ; 0x0212B45C
	.word ov3_02129160

    .global ptr_FUN_overlay_3_021296c4_overlay_3_0212b460
ptr_FUN_overlay_3_021296c4_overlay_3_0212b460: ; 0x0212B460
	.word ov3_021296C4

    .global s_OPD_overlay_3_0212b464
s_OPD_overlay_3_0212b464: ; 0x0212B464
	.asciz "OPD"

    .global s_data_interface_i001_LZ_bin_overlay_3_0212b468
s_data_interface_i001_LZ_bin_overlay_3_0212b468: ; 0x0212B468
	.asciz "data/interface/i001_LZ.bin"

    .global DAT_overlay_3_0212B483
DAT_overlay_3_0212B483:
	.byte 0x00

    .global s_OPD_i001_00_NCBR_overlay_3_0212b484
s_OPD_i001_00_NCBR_overlay_3_0212b484: ; 0x0212B484
	.asciz "OPD:i001_00.NCBR"

    .global DAT_overlay_3_0212B495
DAT_overlay_3_0212B495:
	.byte 0x00, 0x00, 0x00

    .global s_OPD_i001_NCLR_overlay_3_0212b498
s_OPD_i001_NCLR_overlay_3_0212b498: ; 0x0212B498
	.asciz "OPD:i001.NCLR"

    .global DAT_overlay_3_0212B4A6
DAT_overlay_3_0212B4A6:
	.byte 0x00, 0x00

    .global s_OPD_i001_00_NCER_overlay_3_0212b4a8
s_OPD_i001_00_NCER_overlay_3_0212b4a8: ; 0x0212B4A8
	.asciz "OPD:i001_00.NCER"

    .global DAT_overlay_3_0212B4B9
DAT_overlay_3_0212B4B9:
	.byte 0x00, 0x00, 0x00

    .global s_OPD_i001_00_cac_overlay_3_0212b4bc
s_OPD_i001_00_cac_overlay_3_0212b4bc: ; 0x0212B4BC
	.asciz "OPD:i001_00.cac"

    .global PTR_ptr_FUN_020835bc_overlay_3_0212b4cc
PTR_ptr_FUN_020835bc_overlay_3_0212b4cc: ; 0x0212B4CC
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_17COPDScreenMeshNTF_overlay_3_0212b4ec
	.word PTR_ptr_FUN_02083578_0208a664
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_3_0212b4cc

    .global ptr_FUN_overlay_3_02129a68_overlay_3_0212b4e0
ptr_FUN_overlay_3_02129a68_overlay_3_0212b4e0: ; 0x0212B4E0
	.word ov3_02129A68

    .global ptr_FUN_overlay_3_02129a90_overlay_3_0212b4e4
ptr_FUN_overlay_3_02129a90_overlay_3_0212b4e4: ; 0x0212B4E4
	.word ov3_02129A90

    .global ptr_FUN_overlay_3_02129c90_overlay_3_0212b4e8
ptr_FUN_overlay_3_02129c90_overlay_3_0212b4e8: ; 0x0212B4E8
	.word ov3_02129C90

    .global s_17COPDScreenMeshNTF_overlay_3_0212b4ec
s_17COPDScreenMeshNTF_overlay_3_0212b4ec: ; 0x0212B4EC
    .asciz "17COPDScreenMeshNTF"

    .bss

    .global OVERLAY3_BSS_0212B500
OVERLAY3_BSS_0212B500: ; 0x0212B500
    .space 0x20
