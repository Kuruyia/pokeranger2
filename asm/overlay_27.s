    .include "asm/macros.inc"
    .include "asm/include/overlay_27.inc"

    .text

	arm_func_start ov27_0211C9E0
ov27_0211C9E0: ; 0x0211C9E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007C98
	ldr r1, _0211CA30 ; =ptr_FUN_overlay_27_0211ca34_overlay_27_02121168
	add r0, r4, #0x10
	str r1, [r4]
	mov r2, #0
	add r1, r4, #0x384
	str r2, [r4, #4]
	bl ov27_0211CEBC
	add r0, r4, #0x374
	bl ov27_02120F28
	add r0, r4, #0x384
	bl ov27_021205AC
	add r0, r4, #0x10
	str r0, [r4, #8]
	add r1, r4, #0x374
	mov r0, r4
	str r1, [r4, #0xc]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CA30: .word ptr_FUN_overlay_27_0211ca34_overlay_27_02121168
	arm_func_end ov27_0211C9E0

	arm_func_start ov27_0211CA34
ov27_0211CA34: ; 0x0211CA34
	stmdb sp!, {r4, lr}
	ldr r1, _0211CA80 ; =ptr_FUN_overlay_27_0211ca34_overlay_27_02121168
	mov r4, r0
	str r1, [r4]
	bl sub_0201001C
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	mov r1, #0x1e
	bl sub_02008DB4
	add r0, r4, #0x384
	bl ov27_021205F8
	add r0, r4, #0x374
	bl ov27_02120F50
	add r0, r4, #0x10
	bl ov27_0211CFD0
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CA80: .word ptr_FUN_overlay_27_0211ca34_overlay_27_02121168
	arm_func_end ov27_0211CA34

	arm_func_start ov27_0211CA84
ov27_0211CA84: ; 0x0211CA84
	stmdb sp!, {r4, lr}
	ldr r1, _0211CAD8 ; =ptr_FUN_overlay_27_0211ca34_overlay_27_02121168
	mov r4, r0
	str r1, [r4]
	bl sub_0201001C
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	mov r1, #0x1e
	bl sub_02008DB4
	add r0, r4, #0x384
	bl ov27_021205F8
	add r0, r4, #0x374
	bl ov27_02120F50
	add r0, r4, #0x10
	bl ov27_0211CFD0
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CAD8: .word ptr_FUN_overlay_27_0211ca34_overlay_27_02121168
	arm_func_end ov27_0211CA84

	arm_func_start ov27_0211CADC
ov27_0211CADC: ; 0x0211CADC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mvn r4, #0
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0211CB80
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	cmp r0, #0
	movlt r4, #6
	blt _0211CB80
	ldr r5, [r6, #4]
	cmp r0, r5
	beq _0211CB80
	str r0, [r6, #4]
	add r1, r6, r0, lsl #2
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0211CB80
	cmp r0, #1
	bne _0211CB48
	add r0, r6, #0x10
	bl ov27_0211E204
	str r0, [r6, #0x380]
	arm_func_end ov27_0211CADC
_0211CB48:
	bl sub_0201001C
	ldr r0, [r6, #4]
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r0, [r6, #4]
	mov r1, r5
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #8]
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
_0211CB80:
	add r0, r6, #0x384
	bl ov27_021206B4
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov27_0211CB90
ov27_0211CB90: ; 0x0211CB90
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0211CBB8
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	arm_func_end ov27_0211CB90
_0211CBB8:
	add r0, r4, #0x384
	bl thunk_FUN_overlay_27__021207e4
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211CBC4
ov27_0211CBC4: ; 0x0211CBC4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0211CBEC
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	arm_func_end ov27_0211CBC4
_0211CBEC:
	add r0, r4, #0x384
	bl ov27_02120754
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211CBF8
ov27_0211CBF8: ; 0x0211CBF8
	bx lr
	arm_func_end ov27_0211CBF8

	arm_func_start ov27_0211CBFC
ov27_0211CBFC: ; 0x0211CBFC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
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
	mov r0, #2
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #0x30
	bl GX_SetBankForOBJ
	mov r0, #1
	mov r1, #0
	mov r2, r0
	bl GX_SetGraphicsMode
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	ldr r3, _0211CD5C ; =0x04001000
	ldr r0, _0211CD60 ; =0xFFCFFFEF
	ldr r2, [r3]
	mov r1, #0
	and r0, r2, r0
	orr r0, r0, #0x10
	str r0, [r3]
	str r1, [r3, #0x10]
	str r1, [r3, #0x14]
	str r1, [r3, #0x18]
	str r1, [r3, #0x1c]
	sub r0, r3, #0xfb0
	str r1, [sp]
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr r3, _0211CD64 ; =0x04000060
	ldr r0, _0211CD68 ; =0xFFFFFDF1
	ldrh r1, [r3]
	add r2, r3, #0x2a4
	bic r1, r1, #0x3000
	orr r1, r1, #8
	strh r1, [r3]
	ldrh r1, [r3]
	bic r1, r1, #0x3000
	orr r1, r1, #0x10
	strh r1, [r3]
	ldrh r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [r2]
	ldrh r0, [r2]
	orr r0, r0, #0x8000
	strh r0, [r2]
	mov r1, #0x4000000
	ldr r0, [r1]
	add r2, r1, #0x1000
	bic r0, r0, #0x1f00
	str r0, [r1]
	ldr r1, [r2]
	add r0, r4, #0x10
	bic r1, r1, #0x1f00
	str r1, [r2]
	bl ov27_0211D0E0
	bl GX_DispOn
	ldr r1, _0211CD5C ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	bl sub_0201001C
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	mov r1, #0x3c
	bl sub_02008DB4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211CD5C: .word 0x04001000
_0211CD60: .word 0xFFCFFFEF
_0211CD64: .word 0x04000060
_0211CD68: .word 0xFFFFFDF1
	arm_func_end ov27_0211CBFC

	arm_func_start ov27_0211CD6C
ov27_0211CD6C: ; 0x0211CD6C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl sub_0201001C
	mov r1, #0x20000
	mov r2, #0
	mov r3, #0x4000
	mov r4, r0
	bl sub_020101F4
	mov r6, #0
	arm_func_end ov27_0211CD6C
_0211CD90:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0211CDAC
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_0211CDAC:
	add r6, r6, #1
	cmp r6, #2
	blt _0211CD90
	ldr r0, [r5, #4]
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r0, [r5, #4]
	mvn r1, #0
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #8]
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
	ldr r0, [r5, #0x348]
	cmp r0, #0
	moveq r1, #1
	movne r1, #0
	add r0, r5, #0x384
	bl ov27_02120CC4
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #3
	mov r2, #0x1e
	bl sub_0200E0E0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov27_0211CE1C
ov27_0211CE1C: ; 0x0211CE1C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	arm_func_end ov27_0211CE1C
_0211CE28:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0211CE44
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
_0211CE44:
	add r4, r4, #1
	cmp r4, #2
	blt _0211CE28
	add r0, r5, #0x10
	bl ov27_0211D150
	ldr r1, _0211CE80 ; =0x04000304
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	bl sub_0201001C
	mov r1, #0x80000
	mov r2, #0
	mov r3, #0x4000
	bl sub_020101F4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CE80: .word 0x04000304

	arm_func_start ov27_0211CE84
ov27_0211CE84: ; 0x0211CE84
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #4]
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0211CEA8
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	arm_func_end ov27_0211CE84
_0211CEA8:
	bl sub_02007D98
	ldmia sp!, {r3, pc}

	arm_func_start ov27_0211CEB0
ov27_0211CEB0: ; 0x0211CEB0
	bx lr
	arm_func_end ov27_0211CEB0

	arm_func_start ov27_0211CEB4
ov27_0211CEB4: ; 0x0211CEB4
	mov r0, #0x1f
	bx lr
	arm_func_end ov27_0211CEB4

	arm_func_start ov27_0211CEBC
ov27_0211CEBC: ; 0x0211CEBC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, _0211CFB8 ; =ptr_FUN_overlay_3_0211e250_overlay_27_02121260
	mov sl, r0
	str r2, [sl]
	mov r0, #0
	str r0, [sl, #4]
	ldr r2, _0211CFBC ; =DAT_overlay_27_021211b4
	ldr r0, _0211CFC0 ; =DAT_overlay_27_021211d8
	str r2, [sl, #8]
	str r0, [sl, #0xc]
	ldr r2, _0211CFC4 ; =ptr_FUN_overlay_27_0211cfd0_overlay_27_02121290
	ldr r0, _0211CFC8 ; =PTR_LAB_overlay_27_0211e264_overlay_27_021212d4
	str r2, [sl]
	str r0, [sl, #8]
	ldr r2, _0211CFCC ; =PTR_LAB_overlay_27_0211e294_overlay_27_021212e4
	add r0, sl, #0x38
	mov fp, r1
	str r2, [sl, #0xc]
	bl ov27_0211E2A4
	mov r0, #0
	str r0, [sl, #0x44]
	add sb, sl, #0x4c
	add r4, sl, #0x184
	mov r8, r0
	mvn r7, #0
	mov r6, #1
	mov r5, #8
	arm_func_end ov27_0211CEBC
_0211CF28:
	str r8, [sb]
	str r7, [sb, #4]
	str r8, [sb, #0x10]
	str r8, [sb, #0x14]
	str r8, [sb, #0x18]
	str r8, [sb, #0x1c]
	str r8, [sb, #0x20]
	str r8, [sb, #0x24]
	str r8, [sb, #0x28]
	str r8, [sb, #0x2c]
	mov r1, r8
	mov r2, r5
	add r0, sb, #8
	strb r6, [sb, #0x30]
	bl MI_CpuFill8
	add sb, sb, #0x34
	cmp sb, r4
	blo _0211CF28
	mov r0, r4
	mov r1, #1
	bl ov27_0211E804
	add r0, sl, #0x31c
	bl ov27_0211F8A0
	mov r1, #0
	str r1, [sl, #0x338]
	add r0, sl, #0x340
	str r1, [sl, #0x33c]
	bl ov27_0211FA5C
	mov r1, #0
	str r1, [sl, #0x34c]
	add r0, sl, #0x10
	mov r2, #0x28
	str fp, [sl, #0x35c]
	bl MI_CpuFill8
	mov r0, sl
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211CFB8: .word ptr_FUN_overlay_3_0211e250_overlay_27_02121260
_0211CFBC: .word DAT_overlay_27_021211b4
_0211CFC0: .word DAT_overlay_27_021211d8
_0211CFC4: .word ptr_FUN_overlay_27_0211cfd0_overlay_27_02121290
_0211CFC8: .word PTR_LAB_overlay_27_0211e264_overlay_27_021212d4
_0211CFCC: .word PTR_LAB_overlay_27_0211e294_overlay_27_021212e4

	arm_func_start ov27_0211CFD0
ov27_0211CFD0: ; 0x0211CFD0
	stmdb sp!, {r4, lr}
	ldr r2, _0211D044 ; =ptr_FUN_overlay_27_0211cfd0_overlay_27_02121290
	mov r4, r0
	ldr r1, _0211D048 ; =PTR_LAB_overlay_27_0211e264_overlay_27_021212d4
	str r2, [r4]
	ldr r0, _0211D04C ; =PTR_LAB_overlay_27_0211e294_overlay_27_021212e4
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x34c]
	cmp r0, #0
	beq _0211D008
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x34c]
	arm_func_end ov27_0211CFD0
_0211D008:
	ldr r0, [r4, #0x33c]
	cmp r0, #0
	beq _0211D02C
	ldr r3, _0211D050 ; =ov27_0211FA70
	mov r1, #0xc
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x33c]
_0211D02C:
	add r0, r4, #0x340
	bl ov27_0211FA70
	add r0, r4, #0x184
	bl ov27_0211E8D8
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D044: .word ptr_FUN_overlay_27_0211cfd0_overlay_27_02121290
_0211D048: .word PTR_LAB_overlay_27_0211e264_overlay_27_021212d4
_0211D04C: .word PTR_LAB_overlay_27_0211e294_overlay_27_021212e4
_0211D050: .word ov27_0211FA70

	arm_func_start ov27_0211D054
ov27_0211D054: ; 0x0211D054
	stmdb sp!, {r4, lr}
	ldr r2, _0211D0D0 ; =ptr_FUN_overlay_27_0211cfd0_overlay_27_02121290
	mov r4, r0
	ldr r1, _0211D0D4 ; =PTR_LAB_overlay_27_0211e264_overlay_27_021212d4
	str r2, [r4]
	ldr r0, _0211D0D8 ; =PTR_LAB_overlay_27_0211e294_overlay_27_021212e4
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x34c]
	cmp r0, #0
	beq _0211D08C
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x34c]
	arm_func_end ov27_0211D054
_0211D08C:
	ldr r0, [r4, #0x33c]
	cmp r0, #0
	beq _0211D0B0
	ldr r3, _0211D0DC ; =ov27_0211FA70
	mov r1, #0xc
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x33c]
_0211D0B0:
	add r0, r4, #0x340
	bl ov27_0211FA70
	add r0, r4, #0x184
	bl ov27_0211E8D8
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D0D0: .word ptr_FUN_overlay_27_0211cfd0_overlay_27_02121290
_0211D0D4: .word PTR_LAB_overlay_27_0211e264_overlay_27_021212d4
_0211D0D8: .word PTR_LAB_overlay_27_0211e294_overlay_27_021212e4
_0211D0DC: .word ov27_0211FA70

	arm_func_start ov27_0211D0E0
ov27_0211D0E0: ; 0x0211D0E0
	stmdb sp!, {r3}
	sub sp, sp, #0xc
	ldr r3, _0211D14C ; =0x04001000
	ldr r1, [r3]
	str r1, [sp, #4]
	ldr r2, [sp, #4]
	mov r1, r2, lsl #0x1d
	mov r1, r1, lsr #0x1d
	str r1, [r0, #0x350]
	ldr r1, [r3]
	str r2, [sp, #8]
	and r1, r1, #0xe000
	mov r1, r1, lsr #0xd
	str r1, [r0, #0x354]
	ldrb r1, [r3, #0x48]
	strb r1, [sp, #1]
	ldrb r2, [sp, #1]
	strb r2, [r0, #0x358]
	ldrb r1, [r3, #0x4a]
	strb r2, [sp, #3]
	strb r1, [sp]
	ldrb r1, [sp]
	strb r1, [sp, #2]
	strb r1, [r0, #0x359]
	add sp, sp, #0xc
	ldmia sp!, {r3}
	bx lr
	.align 2, 0
_0211D14C: .word 0x04001000
	arm_func_end ov27_0211D0E0

	arm_func_start ov27_0211D150
ov27_0211D150: ; 0x0211D150
	stmdb sp!, {r3, lr}
	ldr r1, _0211D1E4 ; =0x04001048
	ldrb r2, [r0, #0x358]
	ldrh r3, [r1]
	mov r1, r2, lsl #0x1a
	movs r1, r1, lsr #0x1f
	bic r3, r3, #0x3f
	mov r2, r2, lsl #0x1b
	orr r2, r3, r2, lsr #27
	ldr r1, _0211D1E4 ; =0x04001048
	orrne r2, r2, #0x20
	strh r2, [r1]
	ldrh r3, [r1, #2]
	ldrb r2, [r0, #0x359]
	bic r3, r3, #0x3f
	mov r1, r2, lsl #0x1a
	movs r1, r1, lsr #0x1f
	mov r2, r2, lsl #0x1b
	orr r2, r3, r2, lsr #27
	ldr r1, _0211D1E8 ; =0x0400104A
	orrne r2, r2, #0x20
	sub r3, r1, #0x4a
	strh r2, [r1]
	ldr r2, [r3]
	ldr r1, [r0, #0x354]
	bic r2, r2, #0xe000
	orr r1, r2, r1, lsl #13
	str r1, [r3]
	ldr r0, [r0, #0x350]
	bl GXS_SetGraphicsMode
	ldr r0, _0211D1EC ; =0x04001010
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211D1E4: .word 0x04001048
_0211D1E8: .word 0x0400104A
_0211D1EC: .word 0x04001010
	arm_func_end ov27_0211D150

	arm_func_start ov27_0211D1F0
ov27_0211D1F0: ; 0x0211D1F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	ldr ip, _0211D2C0 ; =0x04001008
	mov r0, #0
	ldrh r3, [ip]
	mov r1, #0x6200000
	mov r2, #0x20
	and r3, r3, #0x43
	orr r3, r3, #0x3000
	strh r3, [ip]
	bl MIi_CpuClearFast
	bl G2S_GetBG0ScrPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x800
	bl MIi_CpuClearFast
	mov r0, r4
	bl ov27_0211DBB4
	ldr r0, _0211D2C4 ; =0x04001000
	ldr r1, _0211D2C8 ; =0xFFCFFFEF
	ldr r2, [r0]
	mov r3, #0xff
	and r1, r2, r1
	orr r1, r1, #0x10
	str r1, [r0]
	strh r3, [r0, #0x40]
	ldr r2, _0211D2CC ; =0x000030A0
	ldr r1, _0211D2D0 ; =0x00001826
	strh r2, [r0, #0x44]
	ldrh r2, [r0, #0x48]
	bic r2, r2, #0x3f
	orr r2, r2, #0x1f
	strh r2, [r0, #0x48]
	strh r3, [r0, #0x42]
	strh r1, [r0, #0x46]
	ldrh r1, [r0, #0x48]
	bic r1, r1, #0x3f00
	orr r1, r1, #0x1700
	strh r1, [r0, #0x48]
	ldrh r1, [r0, #0x4a]
	bic r1, r1, #0x3f
	orr r1, r1, #0x16
	strh r1, [r0, #0x4a]
	ldr r1, [r0]
	bic r1, r1, #0xe000
	orr r1, r1, #0x6000
	str r1, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D2C0: .word 0x04001008
_0211D2C4: .word 0x04001000
_0211D2C8: .word 0xFFCFFFEF
_0211D2CC: .word 0x000030A0
_0211D2D0: .word 0x00001826
	arm_func_end ov27_0211D1F0

	arm_func_start ov27_0211D2D4
ov27_0211D2D4: ; 0x0211D2D4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	mov r4, r0
	bl ov27_0211DE28
	mov r0, r4
	bl ov27_0211DC64
	mvn r0, #0
	str r0, [sp]
	ldr r1, _0211D5F8 ; =s_data_menu_overlay_27_021212f0
	ldr r2, _0211D5FC ; =s_ql000_00_overlay_27_021212fc
	add r0, r4, #0x38
	mov r3, #5
	bl ov27_0211E2B8
	str r0, [r4, #0x44]
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	mov r3, #8
	str r3, [sp, #0xc]
	mov r0, #0x30
	str r0, [sp, #0x10]
	mov r0, #0xd0
	str r0, [sp, #0x14]
	mov r0, #0x70
	str r0, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r1, #0
	str r1, [sp, #0x24]
	ldr r2, [r4, #0x20]
	add r0, r4, #0x184
	str r2, [sp, #0x28]
	ldr r2, [r4, #0x44]
	bl ov27_0211E958
	mov r1, #0
	mov r0, r4
	cmp r4, #0
	addne r0, r4, #0xc
	str r0, [r4, #0x1c0]
	mov r2, #1
	str r2, [sp]
	mov r0, #0xe8
	str r0, [sp, #4]
	mov r0, #0x33
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [r4, #0x44]
	mov r3, r1
	add r0, r4, #0x4c
	bl ov27_0211E394
	mov r0, r4
	cmp r4, #0
	addne r0, r4, #8
	str r0, [r4, #0x5c]
	mov r0, #3
	str r0, [sp]
	mov r0, #0xe8
	str r0, [sp, #4]
	mov r0, #0xad
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r1, #1
	str r1, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r2, [r4, #0x44]
	add r0, r4, #0x80
	mov r3, #2
	bl ov27_0211E394
	mov r0, r4
	cmp r4, #0
	addne r0, r4, #8
	str r0, [r4, #0x90]
	mov r0, #5
	str r0, [sp]
	mov r0, #0xe8
	str r0, [sp, #4]
	mov r0, #0x5c
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r2, [r4, #0x44]
	add r0, r4, #0xb4
	mov r1, #2
	mov r3, #4
	bl ov27_0211E394
	mov r0, r4
	cmp r4, #0
	addne r0, r4, #8
	str r0, [r4, #0xc4]
	mov r0, #7
	str r0, [sp]
	mov r0, #0xe8
	str r0, [sp, #4]
	mov r0, #0x84
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r2, [r4, #0x44]
	add r0, r4, #0xe8
	mov r1, #3
	mov r3, #6
	bl ov27_0211E394
	mov r0, r4
	cmp r4, #0
	addne r0, r4, #8
	str r0, [r4, #0xf8]
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0xb2
	str r0, [sp, #8]
	mov r0, #0x68
	str r0, [sp, #0xc]
	mov r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r2, [r4, #0x44]
	add r0, r4, #0x11c
	mov r1, #4
	mov r3, #0xe
	bl ov27_0211E394
	mov r2, r4
	cmp r4, #0
	addne r2, r4, #8
	add r0, r4, #0x184
	mov r1, #0
	str r2, [r4, #0x12c]
	bl ov27_0211F648
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	strb r0, [r4, #0x14c]
	mov r0, #0x9a
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, [r4, #0x44]
	add r0, r4, #0x31c
	mov r2, #9
	mov r3, #0xa
	bl ov27_0211F8C8
	ldr r1, [r4, #0x44]
	add r0, r4, #0x38
	mvn r2, #0
	bl ov27_0211E374
	mvn r0, #0
	str r0, [sp]
	ldr r1, _0211D5F8 ; =s_data_menu_overlay_27_021212f0
	ldr r2, _0211D600 ; =s_ma005_00_overlay_27_02121308
	add r0, r4, #0x38
	mov r3, #1
	bl ov27_0211E2B8
	str r0, [r4, #0x48]
	mov r3, #0
	str r3, [sp]
	mov r0, #0xf0
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r2, [r4, #0x48]
	add r0, r4, #0x150
	mov r1, #5
	bl ov27_0211E394
	mov r0, r4
	cmp r4, #0
	addne r0, r4, #8
	str r0, [r4, #0x160]
	ldr r0, [r4, #0x44]
	bl sub_0200F64C
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211D5F8: .word s_data_menu_overlay_27_021212f0
_0211D5FC: .word s_ql000_00_overlay_27_021212fc
_0211D600: .word s_ma005_00_overlay_27_02121308
	arm_func_end ov27_0211D2D4

	arm_func_start ov27_0211D604
ov27_0211D604: ; 0x0211D604
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	mov r5, r7
	arm_func_end ov27_0211D604
_0211D618:
	add r0, r4, r7, lsl #3
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0211D634
	bl Heap_Free
	add r0, r4, r7, lsl #3
	str r6, [r0, #0x10]
_0211D634:
	add r0, r4, r7, lsl #3
	add r7, r7, #1
	str r5, [r0, #0x14]
	cmp r7, #5
	blt _0211D618
	ldr r5, [r4, #0x48]
	cmp r5, #0
	beq _0211D670
	beq _0211D668
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211D668:
	mov r0, #0
	str r0, [r4, #0x48]
_0211D670:
	ldr r5, [r4, #0x44]
	cmp r5, #0
	beq _0211D698
	beq _0211D690
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211D690:
	mov r0, #0
	str r0, [r4, #0x44]
_0211D698:
	ldr r0, [r4, #0x34c]
	cmp r0, #0
	beq _0211D6B0
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x34c]
_0211D6B0:
	ldr r0, [r4, #0x33c]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, _0211D6D8 ; =ov27_0211FA70
	mov r1, #0xc
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x33c]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211D6D8: .word ov27_0211FA70

	arm_func_start ov27_0211D6DC
ov27_0211D6DC: ; 0x0211D6DC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sl, r0
	str r1, [sp, #0x14]
	bl sub_0201001C
	str r0, [sp, #0x18]
	mov r0, sl
	bl ov27_0211DDC0
	add r0, sl, #0x184
	bl ov27_0211EACC
	ldr r0, [sl, #0x44]
	cmp r0, #0
	beq _0211D714
	bl sub_0200F398
	arm_func_end ov27_0211D6DC
_0211D714:
	ldr r0, [sl, #0x48]
	cmp r0, #0
	beq _0211D724
	bl sub_0200F398
_0211D724:
	ldr r0, [sp, #0x18]
	add r0, r0, #0x1000
	ldr r8, [r0, #0x498]
	mov r0, r8
	bl sub_0200CAE0
	mov r0, r8
	mov r1, #0x10
	bl sub_0200CC88
	mov r6, #0
	mov r7, r6
	mov sb, r6
	mov r5, r6
	mov r4, #2
	mov fp, #0x20
_0211D75C:
	stmia sp, {r5, sb}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, fp
	mov r3, r4
	str r4, [sp, #0x10]
	bl sub_0200CCD0
	add r7, r7, #1
	cmp r7, #0x10
	add r6, r6, #0x40
	add sb, sb, #2
	blt _0211D75C
	mov r1, #0
	str r1, [sl, #4]
	ldr r3, [sl, #0x338]
	sub r4, r1, #1
	cmp r3, #0
	ble _0211D7D0
	ldr r2, [sl, #0x34c]
_0211D7B0:
	ldr r0, [r2, #4]
	cmp r0, #2
	moveq r4, r1
	beq _0211D7D0
	add r1, r1, #1
	cmp r1, r3
	add r2, r2, #0xc
	blt _0211D7B0
_0211D7D0:
	mov r0, r8
	mov r1, #0xf
	bl sub_0200CF7C
	cmp r4, #0
	blt _0211D7F8
	mov r0, #0xc
	mul r0, r4, r0
	ldr r1, [sl, #0x34c]
	ldr r0, [r1, r0]
	b _0211D804
_0211D7F8:
	add r0, sl, #0x340
	mov r1, #7
	bl ov27_0211FB38
_0211D804:
	cmp r0, #0
	beq _0211D838
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r5, #0
	str r5, [sp, #8]
	mov r0, r8
	mov r1, #0xf
	mov r2, #0x18
	mov r3, #2
	str r5, [sp, #0xc]
	bl sub_0200CDA0
_0211D838:
	cmp r4, #0
	movge r1, #1
	movlt r1, #0
	add r0, sl, #0x31c
	bl ov27_0211F954
	add r0, sl, #0x184
	mov r1, #0
	bl ov27_0211F4B0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bge _0211D894
	ldr r0, [sl, #0x338]
	cmp r0, #0
	ble _0211D894
	cmp r4, #0
	blt _0211D888
	mov r1, r4
	add r0, sl, #0x184
	bl ov27_0211EBEC
	b _0211D894
_0211D888:
	add r0, sl, #0x184
	mov r1, #0
	bl ov27_0211EBEC
_0211D894:
	add r0, sl, #0x184
	bl ov27_0211EF30
	ldr r0, [sl, #0x338]
	cmp r0, #0
	ble _0211D908
	add r0, sl, #0x184
	bl ov27_0211EBB8
	ldr r1, [sl, #0x35c]
	cmp r1, #0
	ldrne r1, [sl, #0x33c]
	cmpne r1, #0
	ldrne r2, [sl, #0x34c]
	cmpne r2, #0
	beq _0211D908
	mov r1, #0xc
	mul r5, r0, r1
	add r0, r2, r5
	ldr r4, [r0, #8]
	ldr r0, _0211D95C ; =MAIN_BSS_020B2638
	mov r1, r4
	bl sub_02011528
	cmp r0, #0
	ldr r1, [sl, #0x33c]
	moveq r3, #1
	ldr r0, [sl, #0x35c]
	movne r3, #0
	mov r2, r4
	add r1, r1, r5
	bl ov27_02120CA8
_0211D908:
	add r5, sl, #0x4c
	mov r4, #0
_0211D910:
	mov r0, r5
	bl ov27_0211E7CC
	add r4, r4, #1
	cmp r4, #6
	add r5, r5, #0x34
	blt _0211D910
	ldr r3, _0211D960 ; =0x04001000
	ldr r0, [sp, #0x18]
	ldr r2, [r3]
	add r0, r0, #0x1000
	bic r2, r2, #0x1f00
	orr r2, r2, #0x1f00
	str r2, [r3]
	ldr r0, [r0, #0x4c0]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211D95C: .word MAIN_BSS_020B2638
_0211D960: .word 0x04001000

	arm_func_start ov27_0211D964
ov27_0211D964: ; 0x0211D964
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl sub_0201001C
	ldr r1, [r8, #4]
	mov r4, r0
	cmp r1, #3
	mov r5, #0
	addls pc, pc, r1, lsl #2
	b _0211DAC4
_0211D988: ; jump table
	b _0211D998 ; case 0
	b _0211D9C8 ; case 1
	b _0211DA84 ; case 2
	b _0211DAB0 ; case 3
	arm_func_end ov27_0211D964
_0211D998:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211DAC4
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	moveq r0, #1
	streq r0, [r8, #4]
	b _0211DAC4
_0211D9C8:
	ldr r0, [r4, #0x14]
	mov r6, r5
	ldrh r0, [r0]
	add r7, r8, #0x4c
	and r0, r0, #0x40
	str r0, [r8, #0xcc]
	ldr r0, [r4, #0x14]
	ldrh r0, [r0]
	and r0, r0, #0x80
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r8, #0x100]
	ldr r0, [r4, #0x14]
	ldrh r0, [r0]
	and r0, r0, #0x20
	str r0, [r8, #0x64]
	ldr r0, [r4, #0x14]
	ldrh r0, [r0]
	and r0, r0, #0x10
	str r0, [r8, #0x98]
	ldr r0, [r4, #0x14]
	ldrh r0, [r0]
	and r0, r0, #1
	str r0, [r8, #0x134]
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #2]
	and r0, r0, #2
	str r0, [r8, #0x168]
_0211DA38:
	mov r0, r7
	bl ov27_0211E438
	add r6, r6, #1
	cmp r6, #6
	add r7, r7, #0x34
	blt _0211DA38
	ldr r0, [r8, #0x44]
	cmp r0, #0
	beq _0211DA60
	bl sub_0200F64C
_0211DA60:
	ldr r0, [r8, #0x48]
	cmp r0, #0
	beq _0211DA70
	bl sub_0200F64C
_0211DA70:
	add r0, r8, #0x184
	bl ov27_0211F140
	add r0, r8, #0x31c
	bl ov27_0211F9C0
	b _0211DAC4
_0211DA84:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211DAC4
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	mvneq r5, #0
	b _0211DAC4
_0211DAB0:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	moveq r5, #1
_0211DAC4:
	add r7, r8, #0x4c
	mov r6, #0
_0211DACC:
	mov r0, r7
	bl ov27_0211E64C
	add r6, r6, #1
	cmp r6, #6
	add r7, r7, #0x34
	blt _0211DACC
	add r0, r8, #0x184
	bl ov27_0211F294
	cmp r5, #0
	beq _0211DB14
	bl OS_CancelAllVAlarms
	ldr r2, _0211DB1C ; =0x04001000
	add r0, r4, #0x1000
	ldr r1, [r2]
	bic r1, r1, #0xe000
	str r1, [r2]
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
_0211DB14:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211DB1C: .word 0x04001000

	arm_func_start ov27_0211DB20
ov27_0211DB20: ; 0x0211DB20
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0211DB38
	bl sub_0200F71C
	arm_func_end ov27_0211DB20
_0211DB38:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211DB4C
ov27_0211DB4C: ; 0x0211DB4C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_0201001C
	mov r4, r0
	mov r0, #2
	str r0, [r5, #4]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x48c]
	ldr r1, _0211DBA0 ; =0x00000103
	bl sub_02034C44
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #4
	mov r2, #0xf
	bl sub_0200E0E0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #4
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211DBA0: .word 0x00000103
	arm_func_end ov27_0211DB4C

	arm_func_start ov27_0211DBA4
ov27_0211DBA4: ; 0x0211DBA4
	ldr ip, _0211DBB0 ; =ov27_0211F674
	add r0, r0, #0x184
	bx ip
	.align 2, 0
_0211DBB0: .word ov27_0211F674
	arm_func_end ov27_0211DBA4

	arm_func_start ov27_0211DBB4
ov27_0211DBB4: ; 0x0211DBB4
	stmdb sp!, {r3, lr}
	mov r0, #0
	bl GXS_SetGraphicsMode
	ldr r0, _0211DC5C ; =0x0400100A
	ldr r1, _0211DC60 ; =0x0000110C
	ldrh r3, [r0]
	add r2, r1, #0x100
	add r1, r1, #0x200
	and r3, r3, #0x43
	orr r3, r3, #0x10c
	orr r3, r3, #0x1000
	strh r3, [r0]
	ldrh lr, [r0, #2]
	sub ip, r0, #2
	mov r3, #0
	and lr, lr, #0x43
	orr r2, lr, r2
	strh r2, [r0, #2]
	ldrh r2, [r0, #4]
	and r2, r2, #0x43
	orr r1, r2, r1
	strh r1, [r0, #4]
	ldrh r1, [ip]
	bic r1, r1, #3
	strh r1, [ip]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r0]
	ldrh r1, [r0, #2]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r0, #4]
	str r3, [r0, #6]
	str r3, [r0, #0xa]
	str r3, [r0, #0xe]
	str r3, [r0, #0x12]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211DC5C: .word 0x0400100A
_0211DC60: .word 0x0000110C
	arm_func_end ov27_0211DBB4

	arm_func_start ov27_0211DC64
ov27_0211DC64: ; 0x0211DC64
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x7c
	mov r4, r0
	bl ov27_0211DBB4
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _0211DDA4 ; =s_BGS_overlay_27_02121314
	ldr r2, _0211DDA8 ; =s_data_menu_ql000_bg_LZ_bin_overlay_27_02121318
	add r0, sp, #0x10
	str ip, [sp, #0xc]
	bl sub_02002AEC
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	ldr r0, _0211DDA4 ; =s_BGS_overlay_27_02121314
	ldr r2, _0211DDAC ; =s_ql000_overlay_27_02121334
	mov r1, #5
	str r3, [sp, #4]
	bl sub_020208B4
	str r0, [r4, #0x10]
	ldr r0, _0211DDB0 ; =MAIN_BSS_0210C1B0
	mov r1, #1
	ldr r0, [r0]
	mov r3, #0
	str r0, [r4, #0x14]
	stmia sp, {r1, r3}
	ldr r0, _0211DDA4 ; =s_BGS_overlay_27_02121314
	ldr r2, _0211DDAC ; =s_ql000_overlay_27_02121334
	mov r1, #5
	bl sub_02020DA0
	str r0, [r4, #0x18]
	ldr r0, _0211DDB0 ; =MAIN_BSS_0210C1B0
	mov r3, #0
	ldr r1, [r0]
	mov r0, #1
	str r1, [r4, #0x1c]
	str r3, [sp]
	stmib sp, {r0, r3}
	ldr r0, _0211DDA4 ; =s_BGS_overlay_27_02121314
	ldr r2, _0211DDB4 ; =s_ql000_02_overlay_27_0212133c
	str r3, [sp, #0xc]
	mov r1, #5
	bl sub_0202108C
	str r0, [r4, #0x30]
	ldr r0, _0211DDB0 ; =MAIN_BSS_0210C1B0
	mov r3, #0
	ldr r1, [r0]
	mov r0, #1
	str r1, [r4, #0x34]
	str r3, [sp]
	stmib sp, {r0, r3}
	ldr r0, _0211DDA4 ; =s_BGS_overlay_27_02121314
	ldr r2, _0211DDB8 ; =s_ql000_01_overlay_27_02121348
	str r3, [sp, #0xc]
	mov r1, #6
	bl sub_0202108C
	str r0, [r4, #0x28]
	ldr r0, _0211DDB0 ; =MAIN_BSS_0210C1B0
	mov r3, #0
	ldr r0, [r0]
	ldr r2, _0211DDBC ; =s_ql000_03_overlay_27_02121354
	str r0, [r4, #0x2c]
	str r3, [sp]
	mov r0, #1
	stmib sp, {r0, r3}
	ldr r0, _0211DDA4 ; =s_BGS_overlay_27_02121314
	mov r1, #7
	str r3, [sp, #0xc]
	bl sub_0202108C
	str r0, [r4, #0x20]
	ldr r1, _0211DDB0 ; =MAIN_BSS_0210C1B0
	add r0, sp, #0x10
	ldr r1, [r1]
	str r1, [r4, #0x24]
	bl sub_02002B6C
	add sp, sp, #0x7c
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211DDA4: .word s_BGS_overlay_27_02121314
_0211DDA8: .word s_data_menu_ql000_bg_LZ_bin_overlay_27_02121318
_0211DDAC: .word s_ql000_overlay_27_02121334
_0211DDB0: .word MAIN_BSS_0210C1B0
_0211DDB4: .word s_ql000_02_overlay_27_0212133c
_0211DDB8: .word s_ql000_01_overlay_27_02121348
_0211DDBC: .word s_ql000_03_overlay_27_02121354
	arm_func_end ov27_0211DC64

	arm_func_start ov27_0211DDC0
ov27_0211DDC0: ; 0x0211DDC0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	mov r0, #5
	mov r3, #0
	bl sub_02020A14
	mov r3, #0
	str r3, [sp]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	mov r0, #5
	bl sub_02020F04
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	mov r0, #5
	mov r3, #0
	bl sub_02021318
	mov r0, #6
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	mov r3, #0
	bl sub_02021318
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov27_0211DDC0

	arm_func_start ov27_0211DE28
ov27_0211DE28: ; 0x0211DE28
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xa4
	ldr r1, _0211E064 ; =s_data_message_etc_quest_info_02d_overlay_27_02121360
	mov sl, r0
	add r0, sp, #0x41
	mov r2, #0x3d
	ldr r6, _0211E068 ; =MAIN_BSS_020B2638
	bl OS_SPrintf
	add r1, sp, #0x41
	add r0, sl, #0x340
	bl ov27_0211FA84
	mov r0, #0
	str r0, [sl, #0x338]
	mov r5, #1
	add r4, sp, #4
	arm_func_end ov27_0211DE28
_0211DE64:
	mov r0, r6
	mov r1, r5
	bl sub_020114F8
	cmp r0, #0
	bne _0211DE8C
	mov r0, r6
	mov r1, r5
	bl sub_02011630
	cmp r0, #0
	beq _0211DEA0
_0211DE8C:
	ldr r0, [sl, #0x338]
	mov r1, r0
	add r0, r0, #1
	str r0, [sl, #0x338]
	strb r5, [r4, r1]
_0211DEA0:
	add r5, r5, #1
	cmp r5, #0x3e
	blt _0211DE64
	ldr r0, [sl, #0x338]
	cmp r0, #0
	addle sp, sp, #0xa4
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _0211E06C ; =ov27_0211FA70
	ldr r3, _0211E070 ; =ov27_0211FA5C
	mov r1, #0xc
	mov r2, #8
	str r4, [sp]
	bl __cxa_vec_new
	str r0, [sl, #0x33c]
	cmp r0, #0
	beq _0211DF34
	ldr r0, [sl, #0x338]
	mov r7, #0
	cmp r0, #0
	ble _0211DF34
	ldr r4, _0211E064 ; =s_data_message_etc_quest_info_02d_overlay_27_02121360
	add r8, sp, #4
	mov sb, r7
	add r5, sp, #0x41
_0211DF00:
	ldrb r2, [r8], #1
	mov r0, r5
	mov r1, r4
	bl OS_SPrintf
	ldr r0, [sl, #0x33c]
	mov r1, r5
	add r0, r0, sb
	bl ov27_0211FA84
	ldr r0, [sl, #0x338]
	add r7, r7, #1
	cmp r7, r0
	add sb, sb, #0xc
	blt _0211DF00
_0211DF34:
	ldr r1, [sl, #0x338]
	mov r0, #0xc
	mul r0, r1, r0
	bl _Znam
	cmp r0, #0
	addeq sp, sp, #0xa4
	str r0, [sl, #0x34c]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r3, [sl, #0x338]
	mov r7, #0
	cmp r3, #0
	ble _0211E04C
	add sb, sp, #4
	mov r8, r7
	mov fp, r7
	mov r4, #2
	mov r5, #1
_0211DF78:
	ldr r0, [sl, #0x33c]
	mov r1, #1
	add r0, r0, r8
	bl ov27_0211FB38
	ldr r1, [sl, #0x34c]
	str r0, [r1, r8]
	ldr r0, [sl, #0x34c]
	ldrb r2, [sb]
	add r1, r0, r8
	mov r0, r6
	str r2, [r1, #8]
	ldrb r1, [sb]
	bl sub_02011630
	cmp r0, #0
	beq _0211DFC4
	ldr r0, [sl, #0x34c]
	add r0, r0, r8
	str r5, [r0, #4]
	b _0211E034
_0211DFC4:
	ldrb r1, [sb]
	mov r0, r6
	bl sub_020114F8
	cmp r0, #0
	beq _0211E034
	ldrb r0, [r6, #1]
	cmp r0, #1
	ldreqb r1, [sb]
	ldreqb r0, [r6, #3]
	cmpeq r1, r0
	bne _0211E000
	ldr r0, [sl, #0x34c]
	add r0, r0, r8
	str r4, [r0, #4]
	b _0211E034
_0211E000:
	ldr r1, [sl, #0x34c]
	mov r0, r6
	add r1, r1, r8
	str fp, [r1, #4]
	ldrb r1, [sb]
	bl sub_02011528
	cmp r0, #0
	bne _0211E034
	mov r1, #5
	add r0, sl, #0x340
	bl ov27_0211FB38
	ldr r1, [sl, #0x34c]
	str r0, [r1, r8]
_0211E034:
	ldr r3, [sl, #0x338]
	add r7, r7, #1
	cmp r7, r3
	add r8, r8, #0xc
	add sb, sb, #1
	blt _0211DF78
_0211E04C:
	ldr r2, [sl, #0x34c]
	add r0, sl, #0x184
	mov r1, #0
	bl ov27_0211EB84
	add sp, sp, #0xa4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211E064: .word s_data_message_etc_quest_info_02d_overlay_27_02121360
_0211E068: .word MAIN_BSS_020B2638
_0211E06C: .word ov27_0211FA70
_0211E070: .word ov27_0211FA5C

	arm_func_start ov27_0211E074
ov27_0211E074: ; 0x0211E074
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #4]
	cmp r2, #2
	ldmeqia sp!, {r4, pc}
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r4, pc}
_0211E094: ; jump table
	b _0211E0AC ; case 0
	b _0211E0C0 ; case 1
	b _0211E0D4 ; case 2
	b _0211E0E8 ; case 3
	b _0211E104 ; case 4
	b _0211E0FC ; case 5
	arm_func_end ov27_0211E074
_0211E0AC:
	mov r1, #1
	add r0, r4, #0x184
	strb r1, [r4, #0x360]
	bl ov27_0211EEB8
	ldmia sp!, {r4, pc}
_0211E0C0:
	mov r1, #1
	add r0, r4, #0x184
	strb r1, [r4, #0x360]
	bl ov27_0211EE28
	ldmia sp!, {r4, pc}
_0211E0D4:
	mov r1, #1
	add r0, r4, #0x184
	strb r1, [r4, #0x360]
	bl ov27_0211ED84
	ldmia sp!, {r4, pc}
_0211E0E8:
	mov r1, #1
	add r0, r4, #0x184
	strb r1, [r4, #0x360]
	bl ov27_0211EC68
	ldmia sp!, {r4, pc}
_0211E0FC:
	bl ov27_0211DB4C
	ldmia sp!, {r4, pc}
_0211E104:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #4
	mov r2, #0xf
	bl sub_0200E0E0
	mov r0, #3
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211E128
ov27_0211E128: ; 0x0211E128
	bx lr
	arm_func_end ov27_0211E128
_0211E12C:
	bx lr
_0211E130:
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r3
	cmp r2, #0
	blt _0211E1B8
	ldr r0, [r5, #0x35c]
	cmp r0, #0
	ldrne r0, [r5, #0x33c]
	cmpne r0, #0
	ldrne r1, [r5, #0x34c]
	cmpne r1, #0
	beq _0211E1B8
	ldrb r0, [r5, #0x360]
	cmp r0, #0
	ldreqb r0, [sp, #0x18]
	cmpeq r0, #0
	beq _0211E1B8
	mov r0, #0xc
	mul r7, r2, r0
	add r0, r1, r7
	ldr r6, [r0, #8]
	ldr r0, _0211E1FC ; =MAIN_BSS_020B2638
	mov r1, r6
	bl sub_02011528
	cmp r0, #0
	ldr r1, [r5, #0x33c]
	moveq r3, #1
	ldr r0, [r5, #0x35c]
	movne r3, #0
	mov r2, r6
	add r1, r1, r7
	bl ov27_02120CA8
	mov r0, #0
	strb r0, [r5, #0x360]
_0211E1B8:
	tst r4, #2
	movne r0, #1
	moveq r0, #0
	strb r0, [r5, #0x7c]
	tst r4, #8
	movne r0, #1
	moveq r0, #0
	strb r0, [r5, #0xe4]
	tst r4, #1
	movne r0, #1
	moveq r0, #0
	strb r0, [r5, #0xb0]
	tst r4, #4
	movne r0, #1
	moveq r0, #0
	strb r0, [r5, #0x118]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211E1FC: .word MAIN_BSS_020B2638
_0211E200:
	bx lr

	arm_func_start ov27_0211E204
ov27_0211E204: ; 0x0211E204
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x184
	mov r4, #0
	bl ov27_0211EBB8
	cmp r0, #0
	blt _0211E234
	ldr r2, [r5, #0x34c]
	cmp r2, #0
	movne r1, #0xc
	mlane r1, r0, r1, r2
	ldrne r4, [r1, #8]
	arm_func_end ov27_0211E204
_0211E234:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov27_0211E23C
ov27_0211E23C: ; 0x0211E23C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov27_0211E23C
_0211E250:
	.byte 0x1E, 0xFF, 0x2F, 0xE1, 0x04, 0xC0, 0x9F, 0xE5, 0x0C, 0x00, 0x80, 0xE0, 0xB1, 0xFF, 0xFF, 0xEA
	.byte 0xF8, 0xFF, 0xFF, 0xFF, 0x04, 0xC0, 0x9F, 0xE5, 0x0C, 0x00, 0x80, 0xE0, 0x80, 0xFF, 0xFF, 0xEA
	.byte 0xF8, 0xFF, 0xFF, 0xFF

	arm_func_start ov27_0211E274
ov27_0211E274: ; 0x0211E274
	ldr ip, _0211E280 ; =0xFFFFFFF4
	add r0, r0, ip
	b _0211E200
	.align 2, 0
_0211E280: .word 0xFFFFFFF4
	arm_func_end ov27_0211E274

	arm_func_start ov27_0211E284
ov27_0211E284: ; 0x0211E284
	ldr ip, _0211E290 ; =0xFFFFFFF4
	add r0, r0, ip
	b _0211E130
	.align 2, 0
_0211E290: .word 0xFFFFFFF4
	arm_func_end ov27_0211E284

	arm_func_start ov27_0211E294
ov27_0211E294: ; 0x0211E294
	ldr ip, _0211E2A0 ; =0xFFFFFFF4
	add r0, r0, ip
	b _0211E12C
	.align 2, 0
_0211E2A0: .word 0xFFFFFFF4
	arm_func_end ov27_0211E294

	arm_func_start ov27_0211E2A4
ov27_0211E2A4: ; 0x0211E2A4
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	arm_func_end ov27_0211E2A4

	arm_func_start ov27_0211E2B8
ov27_0211E2B8: ; 0x0211E2B8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl sub_0201001C
	ldr r1, [sp, #0x20]
	mov r4, r0
	cmp r1, #0
	ldrlt r0, [sb, #8]
	strlt r0, [sp, #0x20]
	mov r0, #0x44
	bl _Znwm
	movs r5, r0
	beq _0211E324
	ldr r3, [sp, #0x20]
	mov r2, #0x40
	add r1, r4, #0x24
	str r2, [sp]
	add r2, r4, #0x1000
	add r4, r1, #0x400
	and r1, r3, #0xff
	ldr r2, [r2, #0x4a8]
	add r1, r4, r1, lsl #3
	mov r3, #1
	bl sub_0200ECD0
	mov r5, r0
	arm_func_end ov27_0211E2B8
_0211E324:
	ldr r1, [sb, #4]
	mov r0, r5
	str r1, [sp]
	ldr r3, [sb]
	mov r1, r8
	mov r2, r7
	bl sub_0200F168
	mov r0, r5
	bl sub_0200F398
	mov r0, r5
	bl sub_0200F64C
	ldr r2, [sb]
	ldr r1, [r5, #0x28]
	mov r0, r5
	add r1, r2, r1
	str r1, [sb]
	ldr r1, [sb, #4]
	add r1, r1, r6
	str r1, [sb, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov27_0211E374
ov27_0211E374: ; 0x0211E374
	cmp r2, #0
	ldr r3, [r1, #0x30]
	ldrlt r2, [r0, #8]
	ldr r1, [r0, #8]
	add r2, r2, r3
	cmp r2, r1
	strgt r2, [r0, #8]
	bx lr
	arm_func_end ov27_0211E374

	arm_func_start ov27_0211E394
ov27_0211E394: ; 0x0211E394
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r2
	str r1, [r4, #4]
	ldr r0, [sp, #0x28]
	mov r1, r3
	ldr ip, [sp, #0x24]
	str r0, [r4]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	mov r0, r5
	str ip, [sp]
	bl sub_0200F4FC
	str r0, [r4, #8]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	mov r0, r5
	bl sub_0200F4FC
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211E41C
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, #0
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0x10
	str r3, [sp]
	bl sub_0200EBF4
	arm_func_end ov27_0211E394
_0211E41C:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r0, [r4, #0xc]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov27_0211E438
ov27_0211E438: ; 0x0211E438
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	beq _0211E450
	cmp r1, #1
	beq _0211E458
	arm_func_end ov27_0211E438
_0211E450:
	bl ov27_0211E460
	ldmia sp!, {r3, pc}
_0211E458:
	bl ov27_0211E598
	ldmia sp!, {r3, pc}

	arm_func_start ov27_0211E460
ov27_0211E460: ; 0x0211E460
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #8]
	cmp r0, #0
	ldrne r1, [r7, #0xc]
	cmpne r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_0200EBBC
	str r0, [r7, #0x20]
	mov r4, #0
	ldr r1, [r7, #0x18]
	ldr r0, [r7, #0x1c]
	mov r5, r4
	eor r0, r0, r1
	tst r1, r0
	mov r6, #1
	bne _0211E4B4
	ldr r0, [r7, #8]
	bl sub_0200EB84
	cmp r0, #0
	moveq r6, r4
	arm_func_end ov27_0211E460
_0211E4B4:
	ldr r3, [r7, #0x18]
	ldr r2, [r7, #0x1c]
	mov r1, #1
	eor r0, r2, r3
	tst r2, r0
	bne _0211E4E0
	ldr r2, [r7, #0x24]
	ldr r0, [r7, #0x20]
	eor r0, r2, r0
	tst r2, r0
	moveq r1, #0
_0211E4E0:
	cmp r6, #0
	beq _0211E4F8
	mov r0, #0x18
	str r0, [r7, #0x14]
	mov r4, #1
	b _0211E540
_0211E4F8:
	cmp r3, #0
	ldreq r0, [r7, #0x20]
	cmpeq r0, #0
	beq _0211E538
	ldr r0, [r7, #0x14]
	cmp r0, #0
	ble _0211E540
	sub r0, r0, #1
	str r0, [r7, #0x14]
	cmp r0, #0
	bgt _0211E540
	mov r4, #1
	mov r0, #8
	mov r5, r4
	str r0, [r7, #0x14]
	b _0211E540
_0211E538:
	mov r0, #0
	str r0, [r7, #0x14]
_0211E540:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq _0211E584
	cmp r4, #0
	beq _0211E56C
	ldr r3, [r0]
	ldr r1, [r7, #4]
	ldr r3, [r3]
	mov r2, r5
	blx r3
	b _0211E584
_0211E56C:
	cmp r1, #0
	beq _0211E584
	ldr r2, [r0]
	ldr r1, [r7, #4]
	ldr r2, [r2, #4]
	blx r2
_0211E584:
	ldr r0, [r7, #0x18]
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0x20]
	str r0, [r7, #0x24]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov27_0211E598
ov27_0211E598: ; 0x0211E598
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r1, [r4, #0xc]
	cmpne r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r4, #0x30]
	cmp r1, #0
	beq _0211E5CC
	ldr r1, [r4, #0x28]
	cmp r1, #0
	ldmgtia sp!, {r3, r4, r5, pc}
	arm_func_end ov27_0211E598
_0211E5CC:
	ldr r2, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	mov r5, #1
	eor r1, r1, r2
	tst r2, r1
	bne _0211E5F0
	bl sub_0200EB84
	cmp r0, #0
	moveq r5, #0
_0211E5F0:
	cmp r5, #0
	beq _0211E640
	ldrb r0, [r4, #0x30]
	cmp r0, #0
	beq _0211E62C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfa
	bl sub_02034C44
	mov r0, #8
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	b _0211E640
_0211E62C:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
_0211E640:
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov27_0211E64C
ov27_0211E64C: ; 0x0211E64C
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #0
	ldrne r1, [r0, #0xc]
	cmpne r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0]
	cmp r1, #0
	beq _0211E678
	cmp r1, #1
	beq _0211E680
	arm_func_end ov27_0211E64C
_0211E678:
	bl ov27_0211E688
	ldmia sp!, {r3, pc}
_0211E680:
	bl ov27_0211E708
	ldmia sp!, {r3, pc}

	arm_func_start ov27_0211E688
ov27_0211E688: ; 0x0211E688
	ldrb r1, [r0, #0x30]
	cmp r1, #0
	bne _0211E6B0
	ldr r1, [r0, #8]
	mov r2, #0
	str r2, [r1, #0x14]
	ldr r0, [r0, #0xc]
	mov r1, #1
	str r1, [r0, #0x14]
	bx lr
	arm_func_end ov27_0211E688
_0211E6B0:
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ldreq r1, [r0, #0x18]
	cmpeq r1, #0
	beq _0211E6EC
	ldr r1, [r0, #0x14]
	cmp r1, #4
	blt _0211E6EC
	ldr r1, [r0, #8]
	mov r2, #0
	str r2, [r1, #0x14]
	ldr r0, [r0, #0xc]
	mov r1, #1
	str r1, [r0, #0x14]
	bx lr
_0211E6EC:
	ldr r1, [r0, #8]
	mov r2, #1
	str r2, [r1, #0x14]
	ldr r0, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr

	arm_func_start ov27_0211E708
ov27_0211E708: ; 0x0211E708
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldrb r0, [r1, #0x30]
	cmp r0, #0
	beq _0211E7B0
	ldr r0, [r1, #0x28]
	cmp r0, #0
	ble _0211E7B0
	ldr r0, [r1, #0x2c]
	cmp r0, #8
	ldr r0, [r1, #8]
	bge _0211E74C
	mov r2, #0
	str r2, [r0, #0x14]
	ldr r0, [r1, #0xc]
	mov r2, #1
	b _0211E75C
	arm_func_end ov27_0211E708
_0211E74C:
	mov r2, #1
	str r2, [r0, #0x14]
	ldr r0, [r1, #0xc]
	mov r2, #0
_0211E75C:
	str r2, [r0, #0x14]
	ldr r0, [r1, #0x2c]
	add r0, r0, #1
	str r0, [r1, #0x2c]
	cmp r0, #0x10
	movge r0, #0
	strge r0, [r1, #0x2c]
	ldr r0, [r1, #0x28]
	sub r0, r0, #1
	str r0, [r1, #0x28]
	cmp r0, #0
	ldmgtia sp!, {r3, pc}
	ldr r0, [r1, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r3, [r0]
	ldr r1, [r1, #4]
	ldr r3, [r3]
	mov r2, #0
	blx r3
	ldmia sp!, {r3, pc}
_0211E7B0:
	ldr r0, [r1, #8]
	mov r2, #1
	str r2, [r0, #0x14]
	ldr r0, [r1, #0xc]
	mov r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}

	arm_func_start ov27_0211E7CC
ov27_0211E7CC: ; 0x0211E7CC
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	bx lr
	arm_func_end ov27_0211E7CC

	arm_func_start ov27_0211E7EC
ov27_0211E7EC: ; 0x0211E7EC
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end ov27_0211E7EC

	arm_func_start ov27_0211E804
ov27_0211E804: ; 0x0211E804
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0211E8C4 ; =ptr_FUN_overlay_27_0211e8d8_overlay_27_021213a4
	mov r5, r0
	str r2, [r5]
	mvn r0, #0
	mov r4, r1
	str r0, [r5, #4]
	mov r1, #0
	str r1, [r5, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #0x10]
	str r1, [r5, #0x14]
	str r1, [r5, #0x18]
	str r1, [r5, #0x1c]
	str r1, [r5, #0x20]
	str r1, [r5, #0x24]
	str r1, [r5, #0x28]
	str r1, [r5, #0x2c]
	str r1, [r5, #0x30]
	str r1, [r5, #0x34]
	str r1, [r5, #0x3c]
	str r1, [r5, #0x40]
	strb r1, [r5, #0x44]
	str r1, [r5, #0x90]
	add r0, r5, #0x48
	mov r2, #0x44
	strb r1, [r5, #0x194]
	bl MI_CpuFill8
	mov r0, r4
	cmp r0, #0
	str r4, [r5, #0x8c]
	movle r0, #0
	ble _0211E89C
	ldr r3, _0211E8C8 ; =ov27_0211E7EC
	mov r2, #0
	mov r1, #0x10
	str r2, [sp]
	bl __cxa_vec_new
	arm_func_end ov27_0211E804
_0211E89C:
	str r0, [r5, #0x90]
	bl OS_InitVAlarm
	ldr r0, _0211E8CC ; =OVERLAY27_BSS_02121684
	bl OS_CreateVAlarm
	ldr r0, _0211E8D0 ; =OVERLAY27_BSS_021216AC
	bl OS_CreateVAlarm
	ldr r0, _0211E8D4 ; =OVERLAY27_BSS_021216D4
	bl OS_CreateVAlarm
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211E8C4: .word ptr_FUN_overlay_27_0211e8d8_overlay_27_021213a4
_0211E8C8: .word ov27_0211E7EC
_0211E8CC: .word OVERLAY27_BSS_02121684
_0211E8D0: .word OVERLAY27_BSS_021216AC
_0211E8D4: .word OVERLAY27_BSS_021216D4

	arm_func_start ov27_0211E8D8
ov27_0211E8D8: ; 0x0211E8D8
	stmdb sp!, {r4, lr}
	ldr r1, _0211E910 ; =ptr_FUN_overlay_27_0211e8d8_overlay_27_021213a4
	mov r4, r0
	str r1, [r4]
	bl OS_CancelAllVAlarms
	bl OS_EndVAlarm
	ldr r0, [r4, #0x90]
	cmp r0, #0
	beq _0211E908
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x90]
	arm_func_end ov27_0211E8D8
_0211E908:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211E910: .word ptr_FUN_overlay_27_0211e8d8_overlay_27_021213a4

	arm_func_start ov27_0211E914
ov27_0211E914: ; 0x0211E914
	stmdb sp!, {r4, lr}
	ldr r1, _0211E954 ; =ptr_FUN_overlay_27_0211e8d8_overlay_27_021213a4
	mov r4, r0
	str r1, [r4]
	bl OS_CancelAllVAlarms
	bl OS_EndVAlarm
	ldr r0, [r4, #0x90]
	cmp r0, #0
	beq _0211E944
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x90]
	arm_func_end ov27_0211E914
_0211E944:
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211E954: .word ptr_FUN_overlay_27_0211e8d8_overlay_27_021213a4

	arm_func_start ov27_0211E958
ov27_0211E958: ; 0x0211E958
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	str r1, [sl, #4]
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	str r1, [sl, #0x10]
	str r0, [sl, #0x14]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r1, [sl, #8]
	str r0, [sl, #0xc]
	ldr r0, [sl, #0x10]
	ldr r1, [sl, #8]
	add r0, r0, r0, lsr #31
	ldr r4, [sp, #0x44]
	add r0, r1, r0, asr #1
	add r0, r4, r0
	str r0, [sl, #0x28]
	ldr r1, [sl, #0xc]
	mov r0, #0
	add r4, r1, #8
	mov r1, r3
	str r0, [sp]
	mov sb, r2
	ldr r2, [sl, #0x28]
	mov r0, sb
	mov r3, r4
	ldr r8, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	bl sub_0200F4FC
	str r0, [sl, #0x40]
	ldr r1, [sl, #8]
	ldr r0, [sp, #0x48]
	mov r6, r4
	add r0, r1, r0
	str r0, [sl, #0x24]
	mov r5, #0
	mov fp, #1
	arm_func_end ov27_0211E958
_0211E9F0:
	str fp, [sp]
	ldr r2, [sl, #0x24]
	mov r0, sb
	mov r1, r8
	mov r3, r6
	bl sub_0200F4FC
	add r1, sl, r5, lsl #2
	str r0, [r1, #0x48]
	mov r0, #0
	str r0, [sp]
	ldr r2, [sl, #0x24]
	mov r0, sb
	mov r1, r7
	mov r3, r6
	bl sub_0200F4FC
	add r1, sl, r5, lsl #2
	add r5, r5, #1
	str r0, [r1, #0x68]
	cmp r5, #7
	add r6, r6, #0x10
	blt _0211E9F0
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x30]
	ldr r2, [sl, #0x24]
	mov r0, sb
	mov r3, #0
	bl sub_0200F4FC
	str r0, [sl, #0x88]
	str r4, [sl, #0x30]
	str r4, [sl, #0x2c]
	ldr r0, [sl, #0x34]
	ldr r1, _0211EAC4 ; =0x01FF0000
	ldr r4, _0211EAC8 ; =0x04001010
	and r0, r1, r0, lsl #16
	str r0, [r4]
	ldr r2, [sl, #0x34]
	ldr r0, [sp, #0x50]
	and r3, r1, r2, lsl #16
	add r1, sl, #0x94
	mov r2, #0x80
	str r3, [r4, #0xc]
	bl MI_CpuCopy8
	ldr r0, [sp, #0x50]
	add r1, sl, #0x114
	add r0, r0, #0x80
	mov r2, #0x80
	bl MI_CpuCopy8
	ldr r0, [sl, #0x40]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211EAC4: .word 0x01FF0000
_0211EAC8: .word 0x04001010

	arm_func_start ov27_0211EACC
ov27_0211EACC: ; 0x0211EACC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl G2S_GetBG3ScrPtr
	mov r6, r0
	mov r7, #0
	mov r5, #0x80
	arm_func_end ov27_0211EACC
_0211EAE4:
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x114
	bl MI_CpuCopy8
	add r7, r7, #1
	cmp r7, #0x10
	add r6, r6, #0x80
	blt _0211EAE4
	ldr r3, [r4, #0x40]
	cmp r3, #0
	beq _0211EB40
	ldr r1, [r4, #0x90]
	mov r2, #0
	cmp r1, #0
	beq _0211EB30
	ldr r0, [r4, #0x18]
	ldr r0, [r1, r0, lsl #4]
	cmp r0, #0
	movgt r2, #1
_0211EB30:
	cmp r2, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r3, #0x14]
_0211EB40:
	ldr r0, _0211EB74 ; =OVERLAY27_BSS_021216D4
	ldr r3, _0211EB78 ; =ov27_0211F7A0
	mov r1, #0x16
	mov r2, #2
	str r4, [sp]
	bl OS_SetPeriodicVAlarm
	ldr r0, _0211EB7C ; =OVERLAY27_BSS_02121684
	ldr r3, _0211EB80 ; =ov27_0211F844
	mov r1, #0x2e
	mov r2, #2
	str r4, [sp]
	bl OS_SetPeriodicVAlarm
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211EB74: .word OVERLAY27_BSS_021216D4
_0211EB78: .word ov27_0211F7A0
_0211EB7C: .word OVERLAY27_BSS_02121684
_0211EB80: .word ov27_0211F844

	arm_func_start ov27_0211EB84
ov27_0211EB84: ; 0x0211EB84
	cmp r1, #0
	bxlt lr
	ldr ip, [r0, #0x8c]
	cmp r1, ip
	bxge lr
	ldr ip, [r0, #0x90]
	cmp ip, #0
	bxeq lr
	str r3, [ip, r1, lsl #4]
	ldr r0, [r0, #0x90]
	add r0, r0, r1, lsl #4
	str r2, [r0, #4]
	bx lr
	arm_func_end ov27_0211EB84

	arm_func_start ov27_0211EBB8
ov27_0211EBB8: ; 0x0211EBB8
	ldr r2, [r0, #0x30]
	ldr r1, [r0, #0x2c]
	ldr r3, [r0, #0x20]
	cmp r1, r2
	moveq r2, r1
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0xc]
	cmp r1, r3
	add r0, r0, #8
	moveq r3, r1
	sub r0, r2, r0
	add r0, r3, r0, asr #4
	bx lr
	arm_func_end ov27_0211EBB8

	arm_func_start ov27_0211EBEC
ov27_0211EBEC: ; 0x0211EBEC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x90]
	ldr r0, [r4, #0x18]
	ldr r0, [r2, r0, lsl #4]
	cmp r1, r0
	ldmgeia sp!, {r4, pc}
	sub r0, r0, #7
	mov r3, r1
	cmp r1, r0
	movgt r3, r0
	cmp r3, #0
	movlt r3, #0
	sub r0, r1, r3
	ldr r2, [r4, #0xc]
	mov r1, #0
	add r0, r2, r0, lsl #4
	add r0, r0, #8
	str r0, [r4, #0x30]
	str r0, [r4, #0x2c]
	str r3, [r4, #0x20]
	mov r0, r4
	str r3, [r4, #0x1c]
	bl ov27_0211F714
	mov r0, r4
	bl ov27_0211EF30
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	bl sub_0200EB28
	ldmia sp!, {r4, pc}
	arm_func_end ov27_0211EBEC

	arm_func_start ov27_0211EC68
ov27_0211EC68: ; 0x0211EC68
	stmdb sp!, {r4, lr}
	ldr r2, [r0, #0x90]
	ldr r1, [r0, #0x18]
	ldr r3, [r2, r1, lsl #4]
	cmp r3, #0
	bne _0211EC98
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
	ldmia sp!, {r4, pc}
	arm_func_end ov27_0211EC68
_0211EC98:
	ldr r4, [r0, #0x30]
	ldr lr, [r0, #0x2c]
	cmp lr, r4
	ldmneia sp!, {r4, pc}
	ldr ip, [r0, #0xc]
	ldr r3, [r0, #0x14]
	add r3, ip, r3
	sub ip, r3, #8
	cmp lr, ip
	bge _0211ED08
	cmp lr, r4
	addeq r3, lr, #0x10
	addne r3, r4, #0x10
	str r3, [r0, #0x30]
	ldr r3, [r0, #0x30]
	cmp r3, ip
	strgt ip, [r0, #0x30]
	ldr ip, [r0, #0x30]
	ldr r3, [r0, #0xc]
	ldr lr, [r0, #0x1c]
	sub r3, ip, r3
	sub r3, r3, #8
	ldr r1, [r2, r1, lsl #4]
	add r2, lr, r3, asr #4
	cmp r2, r1
	ldrge r1, [r0, #0x2c]
	strge r1, [r0, #0x30]
	b _0211ED38
_0211ED08:
	ldr r3, [r0, #0x1c]
	add r3, r3, #1
	str r3, [r0, #0x20]
	ldr r2, [r2, r1, lsl #4]
	cmp r3, r2
	subge r1, r2, #1
	strge r1, [r0, #0x20]
	bge _0211ED38
	add r1, r3, #7
	cmp r1, r2
	subgt r1, r2, #7
	strgt r1, [r0, #0x20]
_0211ED38:
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x1c]
	cmp r2, r1
	ldreq r1, [r0, #0x30]
	ldreq r0, [r0, #0x2c]
	cmpeq r1, r0
	beq _0211ED6C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x108
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211ED6C:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211ED84
ov27_0211ED84: ; 0x0211ED84
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x30]
	ldr r2, [r0, #0x2c]
	cmp r2, r3
	ldmneia sp!, {r3, pc}
	ldr r1, [r0, #0xc]
	add ip, r1, #8
	cmp r2, ip
	ble _0211EDC8
	cmp r3, r2
	subeq r1, r2, #0x10
	subne r1, r3, #0x10
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x30]
	cmp r1, ip
	strlt ip, [r0, #0x30]
	b _0211EDDC
	arm_func_end ov27_0211ED84
_0211EDC8:
	ldr r1, [r0, #0x1c]
	subs r1, r1, #1
	str r1, [r0, #0x20]
	movmi r1, #0
	strmi r1, [r0, #0x20]
_0211EDDC:
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x1c]
	cmp r2, r1
	ldreq r1, [r0, #0x30]
	ldreq r0, [r0, #0x2c]
	cmpeq r1, r0
	beq _0211EE10
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x108
	bl sub_02034C44
	ldmia sp!, {r3, pc}
_0211EE10:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
	ldmia sp!, {r3, pc}

	arm_func_start ov27_0211EE28
ov27_0211EE28: ; 0x0211EE28
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x90]
	cmp r0, r2
	addeq r3, r2, #7
	addne r3, r0, #7
	ldr r0, [r4, #0x18]
	ldr r0, [r1, r0, lsl #4]
	sub r0, r0, #7
	cmp r3, r0
	movgt r3, r0
	cmp r3, #0
	movlt r3, #0
	cmp r3, r2
	beq _0211EEA0
	str r3, [r4, #0x20]
	mov r0, r4
	mov r1, #0
	str r3, [r4, #0x1c]
	bl ov27_0211F714
	mov r0, r4
	bl ov27_0211EF30
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x108
	bl sub_02034C44
	ldmia sp!, {r4, pc}
	arm_func_end ov27_0211EE28
_0211EEA0:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211EEB8
ov27_0211EEB8: ; 0x0211EEB8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	cmp r0, r1
	subeq r2, r1, #7
	subne r2, r0, #7
	cmp r2, #0
	movlt r2, #0
	cmp r2, r1
	beq _0211EF18
	str r2, [r4, #0x20]
	mov r0, r4
	mov r1, #0
	str r2, [r4, #0x1c]
	bl ov27_0211F714
	mov r0, r4
	bl ov27_0211EF30
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x108
	bl sub_02034C44
	ldmia sp!, {r4, pc}
	arm_func_end ov27_0211EEB8
_0211EF18:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211EF30
ov27_0211EF30: ; 0x0211EF30
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x90]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	mov r1, #1
	strb r1, [r0, #0x194]
	ldr r1, [r0, #0x1c]
	ldr ip, _0211EFC0 ; =0x2AAAAAAB
	cmp r1, #3
	mov r2, r1, lsr #0x1f
	bgt _0211EF88
	smull r3, lr, ip, r1
	add lr, r2, lr, asr #1
	mov ip, #0xc
	smull r2, r3, ip, lr
	ldr r3, [r0, #0xc]
	sub lr, r1, r2
	sub r1, r3, lr, lsl #4
	rsb r1, r1, #0x100
	and r1, r1, #0xff
	str r1, [r0, #0x34]
	b _0211EFB0
	arm_func_end ov27_0211EF30
_0211EF88:
	smull r3, lr, ip, r1
	add lr, r2, lr, asr #1
	mov ip, #0xc
	smull r2, r3, ip, lr
	ldr r3, [r0, #0xc]
	sub lr, r1, r2
	rsbs r1, r3, lr, lsl #4
	str r1, [r0, #0x34]
	addmi r1, r1, #0xc0
	strmi r1, [r0, #0x34]
_0211EFB0:
	ldr r2, [r0, #0x1c]
	mov r1, #0
	bl ov27_0211EFC4
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211EFC0: .word 0x2AAAAAAB

	arm_func_start ov27_0211EFC4
ov27_0211EFC4: ; 0x0211EFC4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r3, #0xc
	mul r3, r2, r3
	str r2, [sp]
	mov r2, #0
	str r2, [sp, #8]
	mov sl, r0
	ldr r8, [sp, #8]
	ldr r2, [sl, #0x90]
	ldr r0, [sl, #0x18]
	str r3, [sp, #4]
	mov sb, r1
	mov r6, r8
	mov r7, r8
	add fp, r2, r0, lsl #4
	arm_func_end ov27_0211EFC4
_0211F004:
	ldr r0, [sp]
	ldr r2, [sl, #0xc]
	add r1, r0, r8
	add r0, r2, #8
	add r4, r0, r6
	ldr r0, [fp]
	cmp r1, r0
	bge _0211F0E8
	ldr r2, [fp, #4]
	ldr r0, [sp, #4]
	add r1, sl, r8, lsl #2
	add r0, r0, r2
	add r0, r7, r0
	ldr r5, [r0, #4]
	ldr r0, [r1, #0x68]
	cmp r0, #0
	beq _0211F078
	ldr r1, [sl, #0x24]
	add r2, sb, r4
	bl sub_0200EB28
	cmp r5, #1
	moveq r1, #1
	add r0, sl, r8, lsl #2
	movne r1, #0
	cmp r1, #0
	movne r1, #1
	ldr r0, [r0, #0x68]
	moveq r1, #0
	str r1, [r0, #0x14]
_0211F078:
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _0211F0B8
	ldr r1, [sl, #0x24]
	add r2, sb, r4
	bl sub_0200EB28
	cmp r5, #2
	movne r1, #1
	add r0, sl, r8, lsl #2
	moveq r1, #0
	cmp r1, #0
	movne r1, #1
	ldr r0, [r0, #0x48]
	moveq r1, #0
	str r1, [r0, #0x14]
_0211F0B8:
	ldr r0, [sl, #0x88]
	cmp r0, #0
	beq _0211F100
	cmp r5, #2
	bne _0211F100
	ldr r1, [sl, #0x24]
	add r2, sb, r4
	bl sub_0200EB28
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	b _0211F100
_0211F0E8:
	add r2, sl, r8, lsl #2
	ldr r1, [r2, #0x48]
	mov r0, #0
	str r0, [r1, #0x14]
	ldr r1, [r2, #0x68]
	str r0, [r1, #0x14]
_0211F100:
	add r6, r6, #0x10
	add r7, r7, #0xc
	add r8, r8, #1
	cmp r8, #7
	blt _0211F004
	ldr r1, [sl, #0x88]
	cmp r1, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r1, #0x14]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov27_0211F140
ov27_0211F140: ; 0x0211F140
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r6, [r8, #0x90]
	ldr r5, [r8, #0x18]
	ldr r0, [r6, r5, lsl #4]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl sub_0201001C
	ldr r2, [r8, #0x1c]
	ldr r1, [r8, #0x20]
	mov r4, r0
	cmp r2, r1
	ldreq r0, [r8, #0x2c]
	ldreq r1, [r8, #0x30]
	cmpeq r0, r1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr lr, [r4, #0x18]
	mvn r7, #0
	ldrb r1, [lr, #4]
	cmp r1, #0
	beq _0211F240
	ldrh ip, [lr, #0xa]
	ldr r3, [r8, #8]
	ldrh r1, [lr, #0xc]
	cmp r3, ip
	bgt _0211F268
	ldr r0, [r8, #0x10]
	add r0, r3, r0
	cmp ip, r0
	bge _0211F268
	ldr r0, [r8, #0xc]
	cmp r0, r1
	bgt _0211F268
	ldr r3, [r8, #0x14]
	add r3, r0, r3
	cmp r1, r3
	bge _0211F268
	sub r1, r1, r0
	bic r3, r1, #0xf
	ldr r1, [r6, r5, lsl #4]
	add r2, r2, r3, asr #4
	cmp r2, r1
	bge _0211F268
	add r0, r0, #8
	add r2, r0, r3
	str r2, [r8, #0x30]
	str r2, [r8, #0x2c]
	ldr r0, [r8, #0x40]
	ldr r1, [r8, #0x28]
	bl sub_0200EB28
	ldr r1, [r8, #0xc]
	add r0, r4, #0x1000
	ldr r2, [r8, #0x2c]
	add r1, r1, #8
	sub r2, r2, r1
	ldr r3, [r8, #0x1c]
	ldr r0, [r0, #0x48c]
	mov r1, #0xfa
	add r7, r3, r2, asr #4
	bl sub_02034C44
	mov r0, r8
	mov r1, #1
	bl ov27_0211F714
	b _0211F268
	arm_func_end ov27_0211F140
_0211F240:
	ldr r1, [r4, #0x14]
	ldrh r1, [r1, #2]
	and r1, r1, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	beq _0211F268
	ldr r1, [r8, #0xc]
	add r1, r1, #8
	sub r0, r0, r1
	add r7, r2, r0, asr #4
_0211F268:
	cmp r7, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #0x3c]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r0]
	ldr r1, [r8, #4]
	ldr r3, [r3]
	mov r2, r7
	blx r3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov27_0211F294
ov27_0211F294: ; 0x0211F294
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x90]
	ldr r0, [r5, #0x18]
	ldr r0, [r1, r0, lsl #4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_0201001C
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	cmp r0, r1
	beq _0211F328
	bge _0211F2E0
	sub r1, r1, #2
	str r1, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	strle r0, [r5, #0x2c]
	b _0211F2F4
	arm_func_end ov27_0211F294
_0211F2E0:
	add r1, r1, #2
	str r1, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	strge r0, [r5, #0x2c]
_0211F2F4:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl sub_0200EB28
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	bne _0211F320
	mov r0, r5
	mov r1, #0
	bl ov27_0211F714
_0211F320:
	mov r0, #0
	strb r0, [r5, #0x44]
_0211F328:
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	cmp r0, r1
	beq _0211F420
	movgt r4, #1
	movle r4, #0
	cmp r4, #0
	ldr r0, [r5, #0x34]
	beq _0211F3B0
	add r0, r0, #2
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x1c]
	cmp r0, #3
	ldr r0, [r5, #0x34]
	andle r0, r0, #0xff
	strle r0, [r5, #0x34]
	ble _0211F378
	cmp r0, #0xc0
	subge r0, r0, #0xc0
	strge r0, [r5, #0x34]
_0211F378:
	ldr r0, [r5, #0x34]
	tst r0, #0xf
	bne _0211F40C
	ldr r1, [r5, #0x1c]
	mov r0, r5
	add r1, r1, #1
	str r1, [r5, #0x1c]
	mov r1, #0
	bl ov27_0211F714
	ldr r1, [r5, #0x1c]
	mov r0, r5
	add r1, r1, #8
	bl ov27_0211F574
	b _0211F40C
_0211F3B0:
	subs r0, r0, #2
	str r0, [r5, #0x34]
	bpl _0211F3D8
	ldr r0, [r5, #0x1c]
	cmp r0, #3
	ldr r0, [r5, #0x34]
	andle r0, r0, #0xff
	strle r0, [r5, #0x34]
	addgt r0, r0, #0xc0
	strgt r0, [r5, #0x34]
_0211F3D8:
	ldr r0, [r5, #0x34]
	tst r0, #0xf
	bne _0211F40C
	ldr r1, [r5, #0x1c]
	mov r0, r5
	sub r1, r1, #1
	str r1, [r5, #0x1c]
	mov r1, #0
	bl ov27_0211F714
	ldr r1, [r5, #0x1c]
	mov r0, r5
	sub r1, r1, #2
	bl ov27_0211F574
_0211F40C:
	mov r0, r5
	mov r1, r4
	bl ov27_0211F470
	mov r0, #0
	strb r0, [r5, #0x44]
_0211F420:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x44]
	add r1, r0, #1
	and r0, r1, #0xff
	cmp r0, #0xc
	strb r1, [r5, #0x44]
	movhs r0, #0
	strcsb r0, [r5, #0x44]
	ldrb r0, [r5, #0x44]
	ldr r1, [r5, #0x40]
	cmp r0, #6
	movlo r0, #1
	movhs r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r1, #0x14]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov27_0211F470
ov27_0211F470: ; 0x0211F470
	ldr r2, [r0, #0x34]
	and r2, r2, #0xf
	cmp r2, #8
	bge _0211F494
	cmp r1, #0
	rsb r1, r2, #0
	ldrne r2, [r0, #0x1c]
	ldreq r2, [r0, #0x20]
	b _0211F4A4
	arm_func_end ov27_0211F470
_0211F494:
	cmp r1, #0
	rsb r1, r2, #0x10
	ldrne r2, [r0, #0x20]
	ldreq r2, [r0, #0x1c]
_0211F4A4:
	ldr ip, _0211F4AC ; =ov27_0211EFC4
	bx ip
	.align 2, 0
_0211F4AC: .word ov27_0211EFC4

	arm_func_start ov27_0211F4B0
ov27_0211F4B0: ; 0x0211F4B0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0x18]
	cmp r4, r1
	beq _0211F564
	ldr r3, [r6, #0x90]
	ldr r2, [r6, #0x1c]
	add r5, r3, r4, lsl #4
	str r2, [r5, #8]
	ldr r3, [r6, #0x2c]
	ldr r2, [r6, #0xc]
	sub r3, r3, #8
	ldr r4, [r6, #0x1c]
	sub r2, r3, r2
	add r2, r4, r2, asr #4
	str r2, [r5, #0xc]
	str r1, [r6, #0x18]
	ldr r5, [r6, #0x90]
	mov r4, r1
	add r3, r5, r4, lsl #4
	ldr r1, [r3, #8]
	str r1, [r6, #0x20]
	str r1, [r6, #0x1c]
	ldr r2, [r3, #0xc]
	ldr r1, [r3, #8]
	ldr r3, [r6, #0xc]
	sub r1, r2, r1
	add r1, r3, r1, lsl #4
	add r1, r1, #8
	str r1, [r6, #0x30]
	str r1, [r6, #0x2c]
	bl ov27_0211EF30
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x2c]
	bl sub_0200EB28
	ldr r0, [r5, r4, lsl #4]
	ldr r1, [r6, #0x40]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r1, #0x14]
	arm_func_end ov27_0211F4B0
_0211F564:
	mov r0, r6
	mov r1, #0
	bl ov27_0211F714
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov27_0211F574
ov27_0211F574: ; 0x0211F574
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r2, [r8, #0x90]
	ldr r0, [r8, #0x18]
	movs r7, r1
	add r4, r2, r0, lsl #4
	addmi sp, sp, #0x10
	ldmmiia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4]
	cmp r7, r0
	addge sp, sp, #0x10
	ldmgeia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _0211F644 ; =0x2AAAAAAB
	mov r0, r7, lsr #0x1f
	smull r1, r5, r2, r7
	add r5, r0, r5, asr #1
	mov r2, #0xc
	smull r0, r1, r2, r5
	sub r5, r7, r0
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r6, [r0, #0x498]
	mov r1, r5
	mov r0, r6
	bl sub_0200CF7C
	mov r3, #3
	mov r1, #0xc
	mov r0, r6
	mul r6, r7, r1
	str r3, [sp]
	ldr r1, [r4, #4]
	mov r2, #0
	ldr r7, [r1, r6]
	mov r1, r5
	str r7, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, #0x20
	bl sub_0200CDA0
	bl G2S_GetBG3ScrPtr
	add r1, r0, r5, lsl #7
	ldr r0, [r4, #4]
	mov r2, #0x80
	add r0, r0, r6
	ldr r0, [r0, #4]
	cmp r0, #2
	addeq r0, r8, #0x94
	addne r0, r8, #0x114
	bl MI_CpuCopy8
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211F644: .word 0x2AAAAAAB
	arm_func_end ov27_0211F574

	arm_func_start ov27_0211F648
ov27_0211F648: ; 0x0211F648
	cmp r1, #0
	blt _0211F66C
	ldr r2, [r0, #0x8c]
	cmp r1, r2
	bge _0211F66C
	ldr r0, [r0, #0x90]
	cmp r0, #0
	ldrne r0, [r0, r1, lsl #4]
	bxne lr
	arm_func_end ov27_0211F648
_0211F66C:
	mov r0, #0
	bx lr

	arm_func_start ov27_0211F674
ov27_0211F674: ; 0x0211F674
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x34]
	str r0, [r4, #0x38]
	ldrb r0, [r4, #0x194]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _0211F710 ; =0x04000006
	ldrh r0, [r0]
	bl sub_0201001C
	mov r5, #0
	arm_func_end ov27_0211F674
_0211F6A0:
	ldr r1, [r4, #0x1c]
	mov r0, r4
	add r1, r1, r5
	bl ov27_0211F574
	add r5, r5, #1
	cmp r5, #7
	blt _0211F6A0
	ldr r1, [r4, #0x1c]
	mov r0, r4
	sub r1, r1, #2
	bl ov27_0211F574
	ldr r1, [r4, #0x1c]
	mov r0, r4
	sub r1, r1, #1
	bl ov27_0211F574
	ldr r1, [r4, #0x1c]
	mov r0, r4
	add r1, r1, #7
	bl ov27_0211F574
	ldr r1, [r4, #0x1c]
	mov r0, r4
	add r1, r1, #8
	bl ov27_0211F574
	mov r1, #0
	ldr r0, _0211F710 ; =0x04000006
	strb r1, [r4, #0x194]
	ldrh r0, [r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211F710: .word 0x04000006

	arm_func_start ov27_0211F714
ov27_0211F714: ; 0x0211F714
	stmdb sp!, {r3, r4, r5, lr}
	mov ip, r0
	ldr r0, [ip, #0x3c]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr lr, [ip, #0x90]
	ldr r3, [ip, #0x18]
	mvn r2, #0
	ldr r4, [lr, r3, lsl #4]
	cmp r4, #0
	ble _0211F758
	ldr r2, [ip, #0xc]
	ldr r3, [ip, #0x2c]
	add r2, r2, #8
	ldr lr, [ip, #0x1c]
	sub r2, r3, r2
	add r2, lr, r2, asr #4
	arm_func_end ov27_0211F714
_0211F758:
	ldr r5, [ip, #0x1c]
	mov r3, #0
	add lr, r5, #7
	cmp lr, r4
	orrlt r3, r3, #1
	cmp r5, #0
	orrgt r3, r3, #2
	str r1, [sp]
	cmp r2, #0
	sub lr, r4, #1
	orrgt r3, r3, #8
	cmp r2, lr
	ldr lr, [r0]
	ldr r1, [ip, #4]
	ldr lr, [lr, #4]
	orrlt r3, r3, #4
	blx lr
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov27_0211F7A0
ov27_0211F7A0: ; 0x0211F7A0
	stmdb sp!, {r3, lr}
	ldr r1, _0211F834 ; =0x04001010
	mov r2, #0xd80000
	str r2, [r1]
	ldr r2, [r0, #0x38]
	ldr r1, _0211F838 ; =OVERLAY27_BSS_02121680
	ldr r0, _0211F83C ; =OVERLAY27_BSS_021216AC
	strb r2, [r1]
	bl OS_CancelVAlarm
	ldr r2, _0211F838 ; =OVERLAY27_BSS_02121680
	mvn r1, #0
	ldrb r0, [r2]
	cmp r0, #0x10
	bls _0211F810
	cmp r0, #0xc0
	bhs _0211F810
	sub r0, r0, #0x10
	rsb r0, r0, #0xb0
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	cmp r3, #0x30
	rsblt r0, r3, #0x100
	strltb r0, [r2]
	blt _0211F810
	sub r0, r3, #2
	mov r0, r0, lsl #0x10
	strb r3, [r2, #1]
	mov r1, r0, asr #0x10
	arm_func_end ov27_0211F7A0
_0211F810:
	cmp r1, #0
	ldmltia sp!, {r3, pc}
	ldr r0, _0211F83C ; =OVERLAY27_BSS_021216AC
	mov ip, #0
	ldr r3, _0211F840 ; =ov27_0211F870
	mov r2, #4
	str ip, [sp]
	bl OS_SetVAlarm
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211F834: .word 0x04001010
_0211F838: .word OVERLAY27_BSS_02121680
_0211F83C: .word OVERLAY27_BSS_021216AC
_0211F840: .word ov27_0211F870

	arm_func_start ov27_0211F844
ov27_0211F844: ; 0x0211F844
	ldr r1, _0211F864 ; =OVERLAY27_BSS_02121680
	ldr r0, _0211F868 ; =0x01FF0000
	ldrb r2, [r1]
	ldr r1, _0211F86C ; =0x04001010
	and r0, r0, r2, lsl #16
	str r0, [r1]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0211F864: .word OVERLAY27_BSS_02121680
_0211F868: .word 0x01FF0000
_0211F86C: .word 0x04001010
	arm_func_end ov27_0211F844

	arm_func_start ov27_0211F870
ov27_0211F870: ; 0x0211F870
	ldr r1, _0211F894 ; =OVERLAY27_BSS_02121680
	ldr r0, _0211F898 ; =0x01FF0000
	ldrb r2, [r1, #1]
	ldr r1, _0211F89C ; =0x04001010
	rsb r2, r2, #0x100
	and r0, r0, r2, lsl #16
	str r0, [r1]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0211F894: .word OVERLAY27_BSS_02121680
_0211F898: .word 0x01FF0000
_0211F89C: .word 0x04001010
	arm_func_end ov27_0211F870

	arm_func_start ov27_0211F8A0
ov27_0211F8A0: ; 0x0211F8A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	strb r1, [r4]
	add r0, r4, #4
	mov r2, #0x18
	strb r1, [r4, #1]
	bl MI_CpuFill8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov27_0211F8A0

	arm_func_start ov27_0211F8C8
ov27_0211F8C8: ; 0x0211F8C8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x30]
	ldr r7, [sp, #0x38]
	sub r5, r4, #0xa
	ldr r8, [sp, #0x34]
	mov sl, r0
	mov sb, r1
	mov fp, r2
	str r3, [sp, #4]
	mov r6, #0
	add r4, r7, #1
	arm_func_end ov27_0211F8C8
_0211F8F8:
	ldr r1, [sp, #4]
	mov r0, sb
	mov r2, r5
	mov r3, r8
	str r4, [sp]
	bl sub_0200F4FC
	add r1, sl, r6, lsl #3
	str r0, [r1, #4]
	mov r0, sb
	mov r1, fp
	mov r2, r5
	mov r3, r8
	str r7, [sp]
	bl sub_0200F4FC
	add r1, sl, r6, lsl #3
	add r6, r6, #1
	str r0, [r1, #8]
	cmp r6, #3
	add r5, r5, #0xa
	blt _0211F8F8
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov27_0211F954
ov27_0211F954: ; 0x0211F954
	stmdb sp!, {r3, lr}
	strb r1, [r0]
	tst r1, #0xff
	mov lr, #0
	mov ip, #1
	beq _0211F998
	strb lr, [r0, #1]
	mov r2, lr
	arm_func_end ov27_0211F954
_0211F974:
	add r3, r0, lr, lsl #3
	ldr r1, [r3, #4]
	add lr, lr, #1
	str ip, [r1, #0x14]
	ldr r1, [r3, #8]
	cmp lr, #3
	str r2, [r1, #0x14]
	blt _0211F974
	ldmia sp!, {r3, pc}
_0211F998:
	mov r2, lr
_0211F99C:
	add r3, r0, lr, lsl #3
	ldr r1, [r3, #4]
	add lr, lr, #1
	str ip, [r1, #0x14]
	ldr r1, [r3, #8]
	cmp lr, #3
	str r2, [r1, #0x14]
	blt _0211F99C
	ldmia sp!, {r3, pc}

	arm_func_start ov27_0211F9C0
ov27_0211F9C0: ; 0x0211F9C0
	ldrb r1, [r0]
	cmp r1, #0
	bxeq lr
	ldrb r1, [r0, #1]
	ldr r2, [r0, #8]
	and r1, r1, #0x3f
	cmp r1, #0x24
	movlo r3, #1
	movhs r3, #0
	cmp r3, #0
	movne ip, #1
	moveq ip, #0
	str ip, [r2, #0x14]
	cmp r3, #0
	ldr r2, [r0, #0x10]
	beq _0211FA0C
	cmp r1, #0xc
	movhs ip, #1
	bhs _0211FA10
	arm_func_end ov27_0211F9C0
_0211FA0C:
	mov ip, #0
_0211FA10:
	cmp ip, #0
	movne ip, #1
	moveq ip, #0
	str ip, [r2, #0x14]
	cmp r3, #0
	ldr r2, [r0, #0x18]
	beq _0211FA38
	cmp r1, #0x18
	movhs r1, #1
	bhs _0211FA3C
_0211FA38:
	mov r1, #0
_0211FA3C:
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	str r1, [r2, #0x14]
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	bx lr

	arm_func_start ov27_0211FA5C
ov27_0211FA5C: ; 0x0211FA5C
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	arm_func_end ov27_0211FA5C

	arm_func_start ov27_0211FA70
ov27_0211FA70: ; 0x0211FA70
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov27_0211FB5C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov27_0211FA70

	arm_func_start ov27_0211FA84
ov27_0211FA84: ; 0x0211FA84
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl ov27_0211FB5C
	cmp r5, #0
	beq _0211FB30
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _0211FAB8
	mov r1, r5
	mov r2, #0
	bl CBinaryFileMes_ctor
	arm_func_end ov27_0211FA84
_0211FAB8:
	str r0, [r4]
	cmp r0, #0
	beq _0211FB30
	ldr r1, [r0, #0x4c]
	ldr r0, [r1, #4]
	add r5, r1, #8
	str r0, [r4, #4]
	cmp r0, #0
	ble _0211FB30
	mov r0, r0, lsl #2
	bl _Znam
	str r0, [r4, #8]
	cmp r0, #0
	beq _0211FB30
	ldr r0, [r4, #4]
	mov r3, #0
	cmp r0, #0
	ble _0211FB30
_0211FB00:
	ldr r1, [r5]
	ldr r0, [r4, #8]
	add r2, r5, #4
	str r2, [r0, r3, lsl #2]
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r1, r0, asr #2
	ldr r0, [r4, #4]
	add r3, r3, #1
	cmp r3, r0
	add r5, r2, r1, lsl #2
	blt _0211FB00
_0211FB30:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov27_0211FB38
ov27_0211FB38: ; 0x0211FB38
	cmp r1, #0
	blt _0211FB54
	ldr r2, [r0, #4]
	cmp r1, r2
	ldrlt r0, [r0, #8]
	ldrlt r0, [r0, r1, lsl #2]
	bxlt lr
	arm_func_end ov27_0211FB38
_0211FB54:
	mov r0, #0
	bx lr

	arm_func_start ov27_0211FB5C
ov27_0211FB5C: ; 0x0211FB5C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211FB7C
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #8]
	arm_func_end ov27_0211FB5C
_0211FB7C:
	ldr r0, [r4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	beq _0211FB98
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211FB98:
	mov r0, #0
	str r0, [r4]
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211FBA4
ov27_0211FBA4: ; 0x0211FBA4
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x38]
	bl ov27_0211FBD0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov27_0211FBA4

	arm_func_start ov27_0211FBBC
ov27_0211FBBC: ; 0x0211FBBC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov27_0211FD70
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov27_0211FBBC

	arm_func_start ov27_0211FBD0
ov27_0211FBD0: ; 0x0211FBD0
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r4, r0
	strh r2, [r4]
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	str r2, [r4, #0xc]
	str r2, [r4, #0x10]
	mov r1, r2
	arm_func_end ov27_0211FBD0
_0211FBF4:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x20]
	cmp r2, #5
	blt _0211FBF4
	mov r0, #0x68
	str r1, [r4, #4]
	bl _Znwm
	cmp r0, #0
	beq _0211FC24
	ldr r1, [r4, #0x38]
	bl sub_0202A510
_0211FC24:
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211FC2C
ov27_0211FC2C: ; 0x0211FC2C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0211FC44
	bl sub_0200F64C
	arm_func_end ov27_0211FC2C
_0211FC44:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0211FC54
	bl sub_0200F64C
_0211FC54:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211FC64
	bl sub_0202A5A8
_0211FC64:
	ldrh r0, [r4]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211FCDC
_0211FC74: ; jump table
	b _0211FCDC ; case 0
	b _0211FCA8 ; case 1
	b _0211FC90 ; case 2
	b _0211FCB4 ; case 3
	b _0211FCDC ; case 4
	b _0211FCD4 ; case 5
	b _0211FCDC ; case 6
_0211FC90:
	mov r0, r4
	bl ov27_02120564
	cmp r0, #0
	bne _0211FCDC
	mov r0, #1
	strh r0, [r4]
_0211FCA8:
	mov r0, r4
	bl ov27_0212020C
	b _0211FCDC
_0211FCB4:
	mov r0, r4
	bl ov27_02120564
	cmp r0, #0
	bne _0211FCDC
	mov r0, #5
	strh r0, [r4]
	mov r0, #0
	ldmia sp!, {r4, pc}
_0211FCD4:
	mov r0, #0
	ldmia sp!, {r4, pc}
_0211FCDC:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211FCE4
ov27_0211FCE4: ; 0x0211FCE4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211FCFC
	bl sub_0202A5EC
	arm_func_end ov27_0211FCE4
_0211FCFC:
	ldrh r0, [r4]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0211FD0C: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _0211FD28 ; case 1
	b _0211FD28 ; case 2
	b _0211FD28 ; case 3
	b _0211FD28 ; case 4
	ldmia sp!, {r4, pc} ; case 5
	b _0211FD28 ; case 6
_0211FD28:
	mov r0, r4
	bl ov27_0211FE2C
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211FD34
ov27_0211FD34: ; 0x0211FD34
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211FD4C
	bl sub_0202A5F8
	arm_func_end ov27_0211FD34
_0211FD4C:
	mov r0, r4
	bl ov27_0212033C
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211FD58
ov27_0211FD58: ; 0x0211FD58
	ldr r0, [r0, #0x38]
	ldr ip, _0211FD6C ; =FUN_0200CB90
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bx ip
	.align 2, 0
_0211FD6C: .word sub_0200CB90
	arm_func_end ov27_0211FD58

	arm_func_start ov27_0211FD70
ov27_0211FD70: ; 0x0211FD70
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x38]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _0211FDB0
	beq _0211FDA8
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov27_0211FD70
_0211FDA8:
	mov r0, #0
	str r0, [r4, #0x10]
_0211FDB0:
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0211FDD8
	beq _0211FDD0
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211FDD0:
	mov r0, #0
	str r0, [r4, #0x14]
_0211FDD8:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _0211FE00
	beq _0211FDF8
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211FDF8:
	mov r0, #0
	str r0, [r4, #0x18]
_0211FE00:
	ldr r5, [r4, #8]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0211FE20
	mov r0, r5
	bl sub_0202A528
	mov r0, r5
	bl _ZdlPv
_0211FE20:
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov27_0211FE2C
ov27_0211FE2C: ; 0x0211FE2C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0211FE44
	bl sub_0200F71C
	arm_func_end ov27_0211FE2C
_0211FE44:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start ov27_0211FE58
ov27_0211FE58: ; 0x0211FE58
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	bl ov27_02120128
	mov r2, #0
	mov r1, #2
	str r1, [sp, #0xc]
	add r0, sp, #0xc
	str r2, [sp, #0x10]
	strb r2, [sp, #8]
	stmia sp, {r0, r2}
	ldr r0, [r4, #8]
	add r2, sp, #8
	add r3, sp, #0x10
	mov r1, #6
	bl sub_0202A724
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211FED4
	ldr r2, [r4, #0x38]
	mov r1, #0x40
	str r1, [sp]
	ldrb r3, [sp, #8]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add r1, r1, #0x400
	ldr r2, [r2, #0x4a8]
	add r1, r1, r3, lsl #3
	mov r3, #1
	bl sub_0200ECD0
	arm_func_end ov27_0211FE58
_0211FED4:
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r0, [r4, #0x18]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02120054 ; =s_data_menu_overlay_27_021214a0
	ldr r2, _02120058 ; =s_ma005_00_overlay_27_021214ac
	mov r3, r3, asr #5
	bl sub_0200F168
	ldr r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	bl sub_0200F398
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #0xf0
	mov r3, #0x10
	bl sub_0200F4FC
	str r0, [r4, #0x28]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x28]
	mov r1, #0x20
	mov r2, r1
	bl sub_0200EBF4
	ldrb r2, [sp, #8]
	ldr r1, [r4, #0x18]
	mov r0, #0x44
	ldr r1, [r1, #0x30]
	add r1, r2, r1
	strb r1, [sp, #8]
	bl _Znwm
	cmp r0, #0
	beq _0211FF98
	ldr r2, [r4, #0x38]
	mov r1, #0x40
	str r1, [sp]
	ldrb r3, [sp, #8]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add r1, r1, #0x400
	ldr r2, [r2, #0x4a8]
	add r1, r1, r3, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0211FF98:
	str r0, [r4, #0x14]
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r0, [r4, #0x14]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02120054 ; =s_data_menu_overlay_27_021214a0
	ldr r2, _0212005C ; =s_ql000_01_overlay_27_021214b8
	mov r3, r3, asr #5
	bl sub_0200F168
	ldr r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
	bl sub_0200F398
	mov r1, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x14]
	mov r2, r1
	mov r3, r1
	bl sub_0200F4FC
	str r0, [r4, #0x20]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x20]
	mov r1, #0x18
	mov r2, r1
	bl sub_0200EBF4
	ldrb r2, [sp, #8]
	ldr r1, [r4, #0x14]
	ldr r0, _02120060 ; =MAIN_BSS_0210CA6C
	ldr r1, [r1, #0x30]
	ldr r0, [r0]
	add r1, r2, r1
	strb r1, [sp, #8]
	str r0, [r4, #0xc]
	mov r0, #4
	bl _Znwm
	cmp r0, #0
	beq _02120048
	ldr r1, _02120064 ; =s_data_message_etc_place_name_overlay_27_021214c4
	bl sub_02021404
_02120048:
	str r0, [r4, #0x10]
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02120054: .word s_data_menu_overlay_27_021214a0
_02120058: .word s_ma005_00_overlay_27_021214ac
_0212005C: .word s_ql000_01_overlay_27_021214b8
_02120060: .word MAIN_BSS_0210CA6C
_02120064: .word s_data_message_etc_place_name_overlay_27_021214c4

	arm_func_start ov27_02120068
ov27_02120068: ; 0x02120068
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	bl ov27_02120128
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0212008C
	mov r1, #0
	bl sub_0202AD04
	arm_func_end ov27_02120068
_0212008C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0212009C
	bl sub_0200F398
_0212009C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021200AC
	bl sub_0200F398
_021200AC:
	mov r0, r4
	bl ov27_021204B4
	ldr r0, [r4, #0x38]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r0, [r4, #0x38]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	ldr r0, [r4, #0x38]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CC88
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r0, [r4, #0x38]
	mov r2, #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CCD0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov27_02120128
ov27_02120128: ; 0x02120128
	ldr r0, _021201A4 ; =0x04001000
	ldr r1, _021201A8 ; =0xFFCFFFEF
	ldr r3, [r0]
	mov r2, #0
	bic r3, r3, #0x1f00
	orr r3, r3, #0x1500
	str r3, [r0]
	ldr r3, [r0]
	and r1, r3, r1
	orr r1, r1, #0x10
	str r1, [r0]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	ldrh r1, [r0, #0xc]
	and r1, r1, #0x43
	orr r1, r1, #0x990
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #8]
	bic r1, r1, #3
	strh r1, [r0, #8]
	ldrh r1, [r0, #0xa]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xc]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r0, #0xc]
	bx lr
	.align 2, 0
_021201A4: .word 0x04001000
_021201A8: .word 0xFFCFFFEF
	arm_func_end ov27_02120128

	arm_func_start ov27_021201AC
ov27_021201AC: ; 0x021201AC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #2
	mov r4, r1
	strh r2, [r5]
	bl ov27_021201DC
	mov r0, r5
	mov r1, r4
	bl ov27_02120410
	mov r0, r5
	bl ov27_02120514
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov27_021201AC

	arm_func_start ov27_021201DC
ov27_021201DC: ; 0x021201DC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov27_02120068
	mov r0, r4
	bl ov27_0211FD58
	ldr r0, [r4, #0x38]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov27_021201DC

	arm_func_start ov27_0212020C
ov27_0212020C: ; 0x0212020C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x28]
	ldr r1, [r1, #0x14]
	ldrh r1, [r1, #2]
	and r1, r1, #2
	mov r5, r1, lsl #0x10
	bl sub_0200EB84
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	orrs r0, r0, r5, lsr #16
	beq _02120250
	mov r0, r4
	bl ov27_021202F8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov27_0212020C
_02120250:
	ldr r0, [r4, #0x20]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0212028C
	bl sub_0200EB84
	cmp r0, #0
	beq _0212028C
	ldr r0, [r4, #0x38]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	bl ov27_02120490
	ldmia sp!, {r3, r4, r5, pc}
_0212028C:
	ldr r0, [r4, #8]
	add r1, sp, #2
	add r2, sp, #0
	bl sub_0202B5A8
	ldrh r0, [sp, #2]
	cmp r0, #1
	beq _021202B4
	cmp r0, #6
	beq _021202D4
	ldmia sp!, {r3, r4, r5, pc}
_021202B4:
	ldr r0, [r4, #0x38]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	bl ov27_021204B4
	ldmia sp!, {r3, r4, r5, pc}
_021202D4:
	ldr r0, [r4, #0x38]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldrh r1, [sp]
	mov r0, r4
	bl ov27_021204E0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov27_021202F8
ov27_021202F8: ; 0x021202F8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x38]
	ldr r1, _02120328 ; =0x00000103
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r1, #3
	mov r0, r4
	strh r1, [r4]
	bl ov27_0212053C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02120328: .word 0x00000103
	arm_func_end ov27_021202F8

	arm_func_start ov27_0212032C
ov27_0212032C: ; 0x0212032C
	strh r1, [r0, #0x34]
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end ov27_0212032C

	arm_func_start ov27_0212033C
ov27_0212033C: ; 0x0212033C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #4]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #0x34]
	and r4, r0, #0xff
	cmp r4, #0xc8
	subhi r0, r4, #0x9b
	andhi r4, r0, #0xff
	bhi _021203B0
	cmp r4, #0x64
	bls _021203B0
	ldr r2, _0212040C ; =0x51EB851F
	mov r0, r4, lsr #0x1f
	smull r1, r3, r2, r4
	add r3, r0, r3, asr #5
	mov r2, #0x64
	smull r0, r1, r2, r3
	sub r3, r4, r0
	and r4, r3, #0xff
	arm_func_end ov27_0212033C
_021203B0:
	ldr r0, [r5, #0x38]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0x10]
	add r2, r1, #0x1000
	mov r1, r4
	ldr r4, [r2, #0x498]
	bl sub_020215F8
	mov r3, #3
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #8]
	mov r0, r4
	mov r2, r1
	str r1, [sp, #0xc]
	bl sub_0200CDA0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0212040C: .word 0x51EB851F

	arm_func_start ov27_02120410
ov27_02120410: ; 0x02120410
	ldr r2, _0212043C ; =DAT_overlay_27_021213ae
	mov r1, r1, lsl #2
	ldrh r2, [r2, r1]
	ldr ip, _02120440 ; =ov27_02120444
	mov r3, #1
	strh r2, [r0, #0x36]
	ldr r2, [r0, #0x20]
	mov r1, #0
	str r3, [r2, #0x14]
	ldrh r2, [r0, #0x36]
	bx ip
	.align 2, 0
_0212043C: .word DAT_overlay_27_021213ae
_02120440: .word ov27_02120444
	arm_func_end ov27_02120410

	arm_func_start ov27_02120444
ov27_02120444: ; 0x02120444
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, r2
	add r2, sp, #4
	add r3, sp, #0
	bl sub_0202B370
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl sub_0200EB28
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov27_02120444

	arm_func_start ov27_02120490
ov27_02120490: ; 0x02120490
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0x36]
	mov r2, #2
	bl ov27_02120504
	ldrh r1, [r4, #0x36]
	mov r0, r4
	bl ov27_0212032C
	ldmia sp!, {r4, pc}
	arm_func_end ov27_02120490

	arm_func_start ov27_021204B4
ov27_021204B4: ; 0x021204B4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #8]
	mov r2, #2
	ldrh r4, [r1, #0x56]
	mov r1, r4
	bl ov27_02120504
	mov r0, r5
	mov r1, r4
	bl ov27_0212032C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov27_021204B4

	arm_func_start ov27_021204E0
ov27_021204E0: ; 0x021204E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #3
	bl ov27_02120504
	mov r0, r5
	mov r1, r4
	bl ov27_0212032C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov27_021204E0

	arm_func_start ov27_02120504
ov27_02120504: ; 0x02120504
	ldr ip, _02120510 ; =FUN_0202B50C
	ldr r0, [r0, #8]
	bx ip
	.align 2, 0
_02120510: .word sub_0202B50C
	arm_func_end ov27_02120504

	arm_func_start ov27_02120514
ov27_02120514: ; 0x02120514
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x38]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r3, pc}
	arm_func_end ov27_02120514

	arm_func_start ov27_0212053C
ov27_0212053C: ; 0x0212053C
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x38]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #4
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r3, pc}
	arm_func_end ov27_0212053C

	arm_func_start ov27_02120564
ov27_02120564: ; 0x02120564
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x38]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0212059C
	ldr r0, [r4, #0x38]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	beq _021205A4
	arm_func_end ov27_02120564
_0212059C:
	mov r0, #1
	ldmia sp!, {r4, pc}
_021205A4:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov27_021205AC
ov27_021205AC: ; 0x021205AC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr ip, _021205F0 ; =sub_0203C068
	ldr r3, _021205F4 ; =sub_0203BFD4
	add r0, r4, #0x30
	mov r1, #2
	mov r2, #0xe0
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x1f4
	bl sub_02040F34
	mov r0, r4
	bl ov27_0212062C
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_021205F0: .word sub_0203C068
_021205F4: .word sub_0203BFD4
	arm_func_end ov27_021205AC

	arm_func_start ov27_021205F8
ov27_021205F8: ; 0x021205F8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov27_02120758
	add r0, r4, #0x1f4
	bl sub_02040F88
	ldr r3, _02120628 ; =sub_0203C068
	add r0, r4, #0x30
	mov r1, #2
	mov r2, #0xe0
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02120628: .word sub_0203C068
	arm_func_end ov27_021205F8

	arm_func_start ov27_0212062C
ov27_0212062C: ; 0x0212062C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mvn r3, #0
	str r3, [r4]
	mov r2, #0
	strb r2, [r4, #5]
	str r2, [r4, #0xc]
	str r2, [r4, #0x10]
	str r2, [r4, #0x2c]
	strb r2, [r4, #0x1f1]
	add r0, r4, #0x2bc
	add r1, r4, #0x2dc
	strb r2, [r4, #0x1f0]
	add r0, r0, #0x1000
	add r1, r1, #0x1000
	mov r2, #1
	str r3, [r4, #8]
	bl OS_InitMessageQueue
	add r3, r4, #0x2bc
	mov r0, #0x1000
	ldr r1, _021206B0 ; =ov27_02120E2C
	mov r2, r4
	str r0, [sp]
	mov ip, #0x14
	add r0, r4, #0x1fc
	add r3, r3, #0x1000
	str ip, [sp, #4]
	bl OS_CreateThread
	add r0, r4, #0x1fc
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021206B0: .word ov27_02120E2C
	arm_func_end ov27_0212062C

	arm_func_start ov27_021206B4
ov27_021206B4: ; 0x021206B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r1, [r0, #0x5d0]
	ldr r0, _02120740 ; =0x01FF0000
	mov r1, r1, asr #0xc
	rsb r2, r1, #0
	ldr r1, _02120744 ; =0x04000014
	and r0, r0, r2, lsl #16
	str r0, [r1]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F64C
	ldrb r0, [r4, #0x1f1]
	cmp r0, #0
	beq _02120714
	ldrb r1, [r4, #0x1f0]
	add r2, r4, #0x30
	mov r0, #0xe0
	mla r0, r1, r0, r2
	mov r1, #0
	bl sub_0203C87C
	arm_func_end ov27_021206B4
_02120714:
	ldr r1, [r4, #8]
	cmp r1, #0
	ldmltia sp!, {r4, pc}
	add r0, r4, #0x2bc
	add r0, r0, #0x1000
	mov r2, #0
	bl OS_SendMessage
	cmp r0, #0
	mvnne r0, #0
	strne r0, [r4, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02120740: .word 0x01FF0000
_02120744: .word 0x04000014

	arm_func_start thunk_FUN_overlay_27__021207e4
thunk_FUN_overlay_27__021207e4: ; 0x02120748
	ldr ip, _02120750 ; =ov27_021207E4
	bx ip
	.align 2, 0
_02120750: .word ov27_021207E4
	arm_func_end thunk_FUN_overlay_27__021207e4

	arm_func_start ov27_02120754
ov27_02120754: ; 0x02120754
	bx lr
	arm_func_end ov27_02120754

	arm_func_start ov27_02120758
ov27_02120758: ; 0x02120758
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C3D0
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _02120798
	beq _02120790
	mov r0, r4
	bl sub_0200372C
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov27_02120758
_02120790:
	mov r0, #0
	str r0, [r5, #0xc]
_02120798:
	ldr r4, [r5, #0x10]
	cmp r4, #0
	beq _021207C0
	beq _021207B8
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_021207B8:
	mov r0, #0
	str r0, [r5, #0x10]
_021207C0:
	add r0, r5, #0x2bc
	mvn r1, #0
	add r0, r0, #0x1000
	mov r2, #1
	str r1, [r5, #8]
	bl OS_SendMessage
	add r0, r5, #0x1fc
	bl OS_JoinThread
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov27_021207E4
ov27_021207E4: ; 0x021207E4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
	ldr r1, [r4, #0xc]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0x41000
	str r0, [r1, #0x1c]
	sub r0, r0, #0x58000
	str r0, [r1, #0x20]
	ldr r0, [r4, #0xc]
	bl sub_020037B4
	ldr r0, [r4, #0xc]
	bl sub_0200381C
	ldr r0, _0212086C ; =0x0400044C
	mov r2, #0
	str r2, [r0]
	ldrb r0, [r4, #0x1f1]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r3, [r4, #0x1f0]
	mov r0, #0xe0
	ldr r1, [r4, #0xc]
	mla r0, r3, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, [r0]
	ldr r3, [r3, #8]
	blx r3
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212086C: .word 0x0400044C
	arm_func_end ov27_021207E4

	arm_func_start ov27_02120870
ov27_02120870: ; 0x02120870
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, r0
	mov r5, r1
	bl sub_0201001C
	mov lr, #0x4000000
	ldr r2, [lr]
	ldr r1, _02120C88 ; =0xFFCFFFEF
	bic r2, r2, #0x1f00
	orr r2, r2, #0x1600
	str r2, [lr]
	ldr r2, [lr]
	mov ip, #0
	and r1, r2, r1
	orr r1, r1, #0x10
	str r1, [lr]
	str ip, [lr, #0x14]
	str ip, [lr, #0x18]
	str ip, [lr, #0x1c]
	ldrh r1, [lr, #0xa]
	mov r4, r0
	ldr r3, _02120C8C ; =s_mmq000_overlay_27_021215ec
	and r0, r1, #0x43
	orr r0, r0, #0x210
	strh r0, [lr, #0xa]
	ldrh r1, [lr, #0xc]
	ldr r0, _02120C90 ; =s_menu_overlay_27_021215d8
	mov r2, #1
	and r1, r1, #0x43
	orr r1, r1, #0x310
	strh r1, [lr, #0xc]
	ldrh r7, [lr, #8]
	ldr r1, _02120C94 ; =s_mmq000_bg_overlay_27_021215e0
	bic r7, r7, #3
	strh r7, [lr, #8]
	ldrh r7, [lr, #0xa]
	bic r7, r7, #3
	orr r7, r7, #2
	strh r7, [lr, #0xa]
	ldrh r7, [lr, #0xc]
	bic r7, r7, #3
	orr r7, r7, #3
	strh r7, [lr, #0xc]
	ldrh r7, [lr, #0xe]
	bic r7, r7, #3
	strh r7, [lr, #0xe]
	str ip, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	bl sub_02020804
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _02120C90 ; =s_menu_overlay_27_021215d8
	ldr r1, _02120C94 ; =s_mmq000_bg_overlay_27_021215e0
	mov r2, #2
	ldr r3, _02120C98 ; =s_mmq000_02_overlay_27_021215f4
	bl sub_02020FF0
	mov r2, #1
	str r2, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r0, _02120C90 ; =s_menu_overlay_27_021215d8
	ldr r1, _02120C94 ; =s_mmq000_bg_overlay_27_021215e0
	ldr r3, _02120C9C ; =s_mmq000_01_overlay_27_02121600
	str ip, [sp, #0xc]
	bl sub_02020FF0
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r0, _02120C88 ; =0xFFCFFFEF
	mov r1, #0
	and r0, r2, r0
	orr r0, r0, #0x10
	str r0, [r3]
	str r1, [r3, #0x14]
	str r1, [r3, #0x18]
	str r1, [r3, #0x1c]
	mov ip, #7
	add r0, r3, #0x50
	mov r1, #2
	mov r2, #6
	mov r3, #8
	str ip, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _021209FC
	mov r1, #0x40
	str r1, [sp]
	add r1, r4, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r4, #0x74
	mov r3, #0
	bl sub_0200ECD0
	arm_func_end ov27_02120870
_021209FC:
	str r0, [r6, #0x10]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x10]
	ldr r1, _02120CA0 ; =s_data_menu_overlay_27_0212160c
	ldr r2, _02120CA4 ; =s_mmq000_00_overlay_27_02121618
	mov r3, #0
	bl sub_0200EE14
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x10]
	mov r1, #5
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r6, #0x28]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x10]
	mov r1, #2
	mov r2, #0x16
	mov r3, #0x17
	bl sub_0200F4FC
	str r0, [r6, #0x14]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x10]
	mov r1, #2
	mov r2, #0xea
	mov r3, #0x17
	bl sub_0200F4FC
	str r0, [r6, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x10]
	mov r1, #0
	mov r2, #0x80
	mov r3, #0x18
	bl sub_0200F4FC
	str r0, [r6, #0x1c]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x10]
	mov r1, #3
	mov r2, #0x80
	mov r3, #0x90
	bl sub_0200F4FC
	str r0, [r6, #0x20]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x10]
	mov r1, #4
	mov r2, #0x78
	mov r3, #0x38
	bl sub_0200F4FC
	str r0, [r6, #0x24]
	cmp r5, #0
	beq _02120B14
	mov r2, #0
	mov r0, r2
_02120AEC:
	cmp r2, #5
	addne r1, r6, r2, lsl #2
	ldrne r1, [r1, #0x14]
	add r2, r2, #1
	cmpne r1, #0
	strne r0, [r1, #0x14]
	cmp r2, #6
	blt _02120AEC
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
_02120B14:
	mov r2, #0x4000000
	ldr r1, [r2]
	add r0, r4, #0x1000
	bic r1, r1, #0x1f00
	orr r1, r1, #0x1f00
	str r1, [r2]
	ldr r4, [r0, #0x494]
	mov r0, r4
	bl sub_0200C3D0
	mov r0, r4
	mov r1, #3
	mov r2, #0xc
	mov r3, #6
	bl sub_0200C408
	mov r0, r4
	mov r1, #4
	bl sub_0200C680
	mov r0, #4
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, r4
	mov r2, #0x18
	bl sub_0200C6C8
	mov r0, #5
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	mov r0, r4
	mov r1, #1
	mov r2, #0x11
	bl sub_0200C6C8
	mov r0, #6
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0x5a
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r0, r4
	mov r2, #0xf
	mov r3, r1
	bl sub_0200C6C8
	mov r0, r4
	mov r1, #1
	str r1, [sp]
	mov r1, #0xc
	str r1, [sp, #4]
	mov r1, #0x78
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r1, #3
	mov r2, #0x1e
	mov r3, #0xa
	bl sub_0200C6C8
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	beq _02120C48
	bl sub_02003718
_02120C48:
	mov r1, #0x100000
	str r0, [r6, #0xc]
	str r1, [sp]
	sub r0, r1, #0x500000
	str r0, [sp, #4]
	mov r0, #0x800000
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x400000
	str r0, [sp, #0xc]
	ldr r0, [r6, #0xc]
	mov r3, r1
	mov r2, #0xc0000
	bl sub_02003788
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02120C88: .word 0xFFCFFFEF
_02120C8C: .word s_mmq000_overlay_27_021215ec
_02120C90: .word s_menu_overlay_27_021215d8
_02120C94: .word s_mmq000_bg_overlay_27_021215e0
_02120C98: .word s_mmq000_02_overlay_27_021215f4
_02120C9C: .word s_mmq000_01_overlay_27_02121600
_02120CA0: .word s_data_menu_overlay_27_0212160c
_02120CA4: .word s_mmq000_00_overlay_27_02121618

	arm_func_start ov27_02120CA8
ov27_02120CA8: ; 0x02120CA8
	str r1, [r0, #0x2c]
	strb r3, [r0, #5]
	mov r1, #1
	strb r1, [r0, #0x1f1]
	str r2, [r0, #8]
	mov r0, r1
	bx lr
	arm_func_end ov27_02120CA8

	arm_func_start ov27_02120CC4
ov27_02120CC4: ; 0x02120CC4
	stmdb sp!, {r3, lr}
	bl ov27_02120870
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov27_02120CC4

	arm_func_start ov27_02120CD4
ov27_02120CD4: ; 0x02120CD4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r4, [r0, #0x494]
	mov r1, #0
	mov r0, r4
	bl sub_0200C980
	mov r0, r4
	mov r1, #1
	bl sub_0200C980
	mov r0, r4
	mov r1, #2
	bl sub_0200C980
	mov r0, r4
	mov r1, #3
	bl sub_0200C980
	ldrb r0, [r5, #0x1f1]
	cmp r0, #0
	ldrne r0, [r5, #0x2c]
	cmpne r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #5]
	cmp r1, #0
	movne r1, #5
	moveq r1, #1
	bl ov27_0211FB38
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #8]
	mov r0, r4
	mov r2, r1
	str r1, [sp, #0xc]
	mov r3, #2
	bl sub_0200C7A4
	ldr r0, [r5, #0x2c]
	mov r1, #2
	bl ov27_0211FB38
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r1, #1
	mov r2, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, r4
	mov r3, r2
	bl sub_0200C7A4
	ldr r0, [r5, #0x2c]
	mov r1, #3
	bl ov27_0211FB38
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, r4
	mov r1, #2
	mov r3, r2
	bl sub_0200C7A4
	ldrb r0, [r5, #5]
	cmp r0, #0
	movne r1, #6
	ldr r0, [r5, #0x2c]
	moveq r1, #4
	bl ov27_0211FB38
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r5, #0
	str r5, [sp, #8]
	mov r0, r4
	mov r1, #3
	mov r2, #2
	mov r3, #6
	str r5, [sp, #0xc]
	bl sub_0200C7A4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov27_02120CD4

	arm_func_start ov27_02120E2C
ov27_02120E2C: ; 0x02120E2C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r7, #0x2bc
	add r6, sp, #0
	mov r5, #1
	arm_func_end ov27_02120E2C
_02120E44:
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x1000
	bl OS_ReceiveMessage
	ldr r1, [sp]
	cmp r1, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl ov27_02120E70
	b _02120E44
_02120E6C:
	.byte 0xF8, 0x80, 0xBD, 0xE8

	arm_func_start ov27_02120E70
ov27_02120E70: ; 0x02120E70
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, [r5]
	mov r4, r1
	cmp r0, r4
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, pc}
	sub r1, r4, #1
	ldr r0, _02120F24 ; =DAT_overlay_27_021214e4
	mov r1, r1, lsl #2
	ldrh r2, [r0, r1]
	mov r0, #2
	mov r3, #0
	str r0, [sp]
	str r3, [sp, #4]
	ldrb ip, [r5, #0x1f0]
	cmp r2, #0
	add lr, r5, #0x30
	mov r0, #0xe0
	rsb ip, ip, #1
	mla r0, ip, r0, lr
	mov r1, #1
	moveq r1, #4
	moveq r2, #3
	bl sub_0203C418
	ldrb r1, [r5, #0x1f0]
	mov r0, #0xe0
	rsb r1, r1, #1
	mla r0, r1, r0, r5
	ldr r0, [r0, #0x38]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _02120F04
	mov r1, #0x4000
	bl sub_020128EC
	arm_func_end ov27_02120E70
_02120F04:
	ldrb r1, [r5, #0x1f0]
	mov r0, r5
	rsb r1, r1, #1
	strb r1, [r5, #0x1f0]
	bl ov27_02120CD4
	str r4, [r5]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02120F24: .word DAT_overlay_27_021214e4

	arm_func_start ov27_02120F28
ov27_02120F28: ; 0x02120F28
	ldr r1, _02120F48 ; =ptr_FUN_overlay_3_0211e250_overlay_27_02121260
	mov r2, #0
	str r1, [r0]
	ldr r1, _02120F4C ; =ptr_FUN_overlay_27_02120f50_overlay_27_02121650
	stmia r0, {r1, r2}
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	.align 2, 0
_02120F48: .word ptr_FUN_overlay_3_0211e250_overlay_27_02121260
_02120F4C: .word ptr_FUN_overlay_27_02120f50_overlay_27_02121650
	arm_func_end ov27_02120F28

	arm_func_start ov27_02120F50
ov27_02120F50: ; 0x02120F50
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02120F90 ; =ptr_FUN_overlay_27_02120f50_overlay_27_02121650
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _02120F88
	beq _02120F80
	mov r0, r4
	bl ov27_0211FBBC
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov27_02120F50
_02120F80:
	mov r0, #0
	str r0, [r5, #8]
_02120F88:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02120F90: .word ptr_FUN_overlay_27_02120f50_overlay_27_02121650

	arm_func_start ov27_02120F94
ov27_02120F94: ; 0x02120F94
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02120FDC ; =ptr_FUN_overlay_27_02120f50_overlay_27_02121650
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _02120FCC
	beq _02120FC4
	mov r0, r4
	bl ov27_0211FBBC
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov27_02120F94
_02120FC4:
	mov r0, #0
	str r0, [r5, #8]
_02120FCC:
	mov r0, r5
	bl _ZdlPv
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02120FDC: .word ptr_FUN_overlay_27_02120f50_overlay_27_02121650

	arm_func_start ov27_02120FE0
ov27_02120FE0: ; 0x02120FE0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _02121010
	beq _02121008
	mov r0, r4
	bl ov27_0211FBBC
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov27_02120FE0
_02121008:
	mov r0, #0
	str r0, [r5, #8]
_02121010:
	mov r0, #0x3c
	bl _Znwm
	movs r4, r0
	beq _02121034
	bl sub_0201001C
	mov r1, r0
	mov r0, r4
	bl ov27_0211FBA4
	mov r4, r0
_02121034:
	mov r0, r4
	str r4, [r5, #8]
	bl ov27_0211FE58
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov27_02121044
ov27_02121044: ; 0x02121044
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #8]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0212106C
	mov r0, r4
	bl ov27_0211FBBC
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov27_02121044
_0212106C:
	mov r0, #0
	str r0, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov27_02121078
ov27_02121078: ; 0x02121078
	bx lr
	arm_func_end ov27_02121078

	arm_func_start ov27_0212107C
ov27_0212107C: ; 0x0212107C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_0201001C
	mov r4, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021210B4
	ldr r1, [r5, #0xc]
	cmp r1, #0
	ble _021210B4
	sub r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov27_021201AC
	arm_func_end ov27_0212107C
_021210B4:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
	mov r0, #0
	str r0, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov27_021210D4
ov27_021210D4: ; 0x021210D4
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021210F4
	bl ov27_0211FC2C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	arm_func_end ov27_021210D4
_021210F4:
	mov r0, #1
	ldmia sp!, {r3, pc}

	arm_func_start ov27_021210FC
ov27_021210FC: ; 0x021210FC
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov27_0211FCE4
	ldmia sp!, {r3, pc}
	arm_func_end ov27_021210FC

	arm_func_start ov27_02121114
ov27_02121114: ; 0x02121114
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov27_0211FD34
	ldmia sp!, {r3, pc}
	arm_func_end ov27_02121114
	; 0x0212112C

    .section .sinit,4 ; 0x0212112C

    .data
PTR_ptr_FUN_020835bc_overlay_27_02121140: ; 0x02121140
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_15CQuestListScene_overlay_27_0212114c
	.word PTR_ptr_FUN_02083578_0208a804
s_15CQuestListScene_overlay_27_0212114c: ; 0x0212114C
	.asciz "15CQuestListScene"
_0212115E:
	.byte 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_27_02121140
ptr_FUN_overlay_27_0211ca34_overlay_27_02121168: ; 0x02121168
	.word ov27_0211CA34
ptr_FUN_overlay_27_0211ca84_overlay_27_0212116c: ; 0x0212116C
	.word ov27_0211CA84
ptr_FUN_overlay_21_0211cadc_overlay_27_02121170: ; 0x02121170
	.word ov27_0211CADC
ptr_FUN_overlay_22_0211cb90_overlay_27_02121174: ; 0x02121174
	.word ov27_0211CB90
ptr_FUN_overlay_27_0211cbc4_overlay_27_02121178: ; 0x02121178
	.word ov27_0211CBC4
ptr_FUN_overlay_27_0211ce84_overlay_27_0212117c: ; 0x0212117C
	.word ov27_0211CE84
ptr_FUN_02007cc4_overlay_27_02121180: ; 0x02121180
	.word sub_02007CC4
ptr_FUN_overlay_27_0211cbfc_overlay_27_02121184: ; 0x02121184
	.word ov27_0211CBFC
ptr_FUN_overlay_27_0211cd6c_overlay_27_02121188: ; 0x02121188
	.word ov27_0211CD6C
ptr_FUN_overlay_27_0211ce1c_overlay_27_0212118c: ; 0x0212118C
	.word ov27_0211CE1C
	.word ov27_0211CEB4
PTR_ptr_FUN_02083578_overlay_27_02121194: ; 0x02121194
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_20CQuestListScreenBase_overlay_27_021211e4
PTR_ptr_FUN_02083578_overlay_27_0212119c: ; 0x0212119C
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
ptr_FUN_overlay_11_02121214_overlay_27_021211a0: ; 0x021211A0
	.word s_23IQLListBoxEventListener_overlay_27_02121214
PTR_ptr_FUN_02083578_overlay_27_021211a4: ; 0x021211A4
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_21IQLPushButtonListener_overlay_27_021211fc
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_27_021211a4
DAT_overlay_27_021211b4: ; 0x021211B4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
s_16CQuestListScreen_overlay_27_021211bc: ; 0x021211BC
	.asciz "16CQuestListScreen"
_021211CF:
	.byte 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_27_0212119c
DAT_overlay_27_021211d8: ; 0x021211D8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
s_20CQuestListScreenBase_overlay_27_021211e4: ; 0x021211E4
	.asciz "20CQuestListScreenBase"
_021211FB:
	.byte 0x00
s_21IQLPushButtonListener_overlay_27_021211fc: ; 0x021211FC
	.asciz "21IQLPushButtonListener"
s_23IQLListBoxEventListener_overlay_27_02121214: ; 0x02121214
	.asciz "23IQLListBoxEventListener"
_0212122E:
	.byte 0x00, 0x00
PTR_ptr_FUN_020835ec_overlay_27_02121230: ; 0x02121230
	.word _ZTVN10__cxxabiv121__vmi_class_type_infoE+8
	.word s_16CQuestListScreen_overlay_27_021211bc
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_27_02121194
	.byte 0x02, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_27_021211a4
	.byte 0x02, 0x08, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_27_0212119c
	.byte 0x02, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_27_02121194
ptr_FUN_overlay_3_0211e250_overlay_27_02121260: ; 0x02121260
	.word 0x0211E250
ptr_FUN_overlay_27_0211e23c_overlay_27_02121264: ; 0x02121264
	.word ov27_0211E23C
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word ov27_0211CBF8
	.word ov27_0211CEB0
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835ec_overlay_27_02121230
ptr_FUN_overlay_27_0211cfd0_overlay_27_02121290: ; 0x02121290
	.word ov27_0211CFD0
ptr_FUN_overlay_27_0211d054_overlay_27_02121294: ; 0x02121294
	.word ov27_0211D054
ptr_FUN_overlay_22_0211d2d4_overlay_27_02121298: ; 0x02121298
	.word ov27_0211D2D4
ptr_FUN_overlay_27_0211d604_overlay_27_0212129c: ; 0x0212129C
	.word ov27_0211D604
ptr_FUN_overlay_27_0211d1f0_overlay_27_021212a0: ; 0x021212A0
	.word ov27_0211D1F0
ptr_FUN_overlay_27_0211d6dc_overlay_27_021212a4: ; 0x021212A4
	.word ov27_0211D6DC
	.word ov27_0211D964
ptr_FUN_overlay_27_0211db20_overlay_27_021212ac: ; 0x021212AC
	.word ov27_0211DB20
	.word ov27_0211CBF8
	.word ov27_0211DBA4
	.word ov27_0211E074
	.word ov27_0211E128
	.word 0x0211E12C
ptr_FUN_overlay_27_0211e130_overlay_27_021212c4: ; 0x021212C4
	.word 0x0211E130
ptr_FUN_overlay_19_0211e200_overlay_27_021212c8: ; 0x021212C8
	.word 0x0211E200
	.byte 0xF8, 0xFF, 0xFF, 0xFF
	.word PTR_ptr_FUN_020835ec_overlay_27_02121230
PTR_LAB_overlay_27_0211e264_overlay_27_021212d4: ; 0x021212D4
	.word 0x0211E264
	.word 0x0211E254
	.byte 0xF4, 0xFF, 0xFF, 0xFF
	.word PTR_ptr_FUN_020835ec_overlay_27_02121230
PTR_LAB_overlay_27_0211e294_overlay_27_021212e4: ; 0x021212E4
	.word ov27_0211E294
	.word ov27_0211E284
	.word ov27_0211E274
s_data_menu_overlay_27_021212f0: ; 0x021212F0
	.asciz "data/menu"
_021212FA:
	.byte 0x00, 0x00
s_ql000_00_overlay_27_021212fc: ; 0x021212FC
	.asciz "ql000_00"
_02121305:
	.byte 0x00, 0x00, 0x00
s_ma005_00_overlay_27_02121308: ; 0x02121308
	.asciz "ma005_00"
_02121311:
	.byte 0x00, 0x00, 0x00
s_BGS_overlay_27_02121314: ; 0x02121314
	.asciz "BGS"
s_data_menu_ql000_bg_LZ_bin_overlay_27_02121318: ; 0x02121318
	.asciz "data/menu/ql000_bg_LZ.bin"
_02121332:
	.byte 0x00, 0x00
s_ql000_overlay_27_02121334: ; 0x02121334
	.asciz "ql000"
_0212133A:
	.byte 0x00, 0x00
s_ql000_02_overlay_27_0212133c: ; 0x0212133C
	.asciz "ql000_02"
_02121345:
	.byte 0x00, 0x00, 0x00
s_ql000_01_overlay_27_02121348: ; 0x02121348
	.asciz "ql000_01"
_02121351:
	.byte 0x00, 0x00, 0x00
s_ql000_03_overlay_27_02121354: ; 0x02121354
	.asciz "ql000_03"
_0212135D:
	.byte 0x00, 0x00, 0x00
s_data_message_etc_quest_info_02d_overlay_27_02121360: ; 0x02121360
	.asciz "data/message/etc/quest_info_%02d"
_02121381:
	.byte 0x00, 0x00, 0x00
PTR_ptr_FUN_02083578_overlay_27_02121384: ; 0x02121384
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_10CQLListBox_overlay_27_0212138c
s_10CQLListBox_overlay_27_0212138c: ; 0x0212138C
	.asciz "10CQLListBox"
_02121399:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_27_02121384
ptr_FUN_overlay_27_0211e8d8_overlay_27_021213a4: ; 0x021213A4
	.word ov27_0211E8D8
ptr_FUN_overlay_27_0211e914_overlay_27_021213a8: ; 0x021213A8
	.byte 0x14, 0xE9, 0x11, 0x02, 0x39, 0x00
DAT_overlay_27_021213ae: ; 0x021213AE
	.byte 0x04, 0x00
	.byte 0x2B, 0x00, 0x04, 0x00, 0x2E, 0x00, 0x04, 0x00, 0x58, 0x00, 0x09, 0x00, 0x54, 0x00, 0x0A, 0x00
	.byte 0x2B, 0x00, 0x0A, 0x00, 0x2B, 0x00, 0x09, 0x00, 0x2D, 0x00, 0x0A, 0x00, 0x24, 0x00, 0x0E, 0x00
	.byte 0x2C, 0x00, 0x01, 0x00, 0x3B, 0x00, 0x04, 0x00, 0x28, 0x00, 0x0F, 0x00, 0x57, 0x00, 0x12, 0x00
	.byte 0x30, 0x00, 0x12, 0x00, 0x2A, 0x00, 0x0A, 0x00, 0x58, 0x00, 0x0F, 0x00, 0x2C, 0x00, 0x0A, 0x00
	.byte 0x24, 0x00, 0x19, 0x00, 0x66, 0x00, 0x19, 0x00, 0x5A, 0x00, 0x0A, 0x00, 0x31, 0x00, 0x12, 0x00
	.byte 0x35, 0x00, 0x1A, 0x00, 0x31, 0x00, 0x0A, 0x00, 0x31, 0x00, 0x0A, 0x00, 0x24, 0x00, 0x21, 0x00
	.byte 0x30, 0x00, 0x21, 0x00, 0x34, 0x00, 0x21, 0x00, 0x37, 0x00, 0x04, 0x00, 0x1C, 0x00, 0x11, 0x00
	.byte 0x20, 0x00, 0x11, 0x00, 0x24, 0x00, 0x11, 0x00, 0x86, 0x00, 0x1A, 0x00, 0x02, 0x00, 0x08, 0x00
	.byte 0x28, 0x00, 0x0E, 0x00, 0x56, 0x00, 0x09, 0x00, 0x27, 0x00, 0x0F, 0x00, 0x30, 0x00, 0x15, 0x00
	.byte 0x86, 0x00, 0x1A, 0x00, 0x30, 0x00, 0x13, 0x00, 0x30, 0x00, 0x16, 0x00, 0x04, 0x00, 0x01, 0x00
	.byte 0x03, 0x00, 0x08, 0x00, 0x30, 0x00, 0x23, 0x00, 0x2D, 0x00, 0x11, 0x00, 0x36, 0x00, 0x1A, 0x00
	.byte 0x25, 0x00, 0x08, 0x00, 0x52, 0x00, 0x21, 0x00, 0x2E, 0x00, 0x12, 0x00, 0x26, 0x00, 0x08, 0x00
	.byte 0x54, 0x00, 0x04, 0x00, 0x64, 0x00, 0x0E, 0x00, 0x01, 0x00, 0x08, 0x00, 0x2E, 0x00, 0x21, 0x00
	.byte 0x2C, 0x00, 0x08, 0x00, 0x05, 0x00, 0x01, 0x00, 0x57, 0x00, 0x12, 0x00, 0x38, 0x00, 0x04, 0x00
	.byte 0x66, 0x00, 0x19, 0x00, 0x1F, 0x00, 0x11, 0x00, 0x3A, 0x00, 0x0A, 0x00, 0x3E, 0x00, 0x16, 0x00
s_data_menu_overlay_27_021214a0: ; 0x021214A0
	.asciz "data/menu"
_021214AA:
	.byte 0x00, 0x00
s_ma005_00_overlay_27_021214ac: ; 0x021214AC
	.asciz "ma005_00"
_021214B5:
	.byte 0x00, 0x00, 0x00
s_ql000_01_overlay_27_021214b8: ; 0x021214B8
	.asciz "ql000_01"
_021214C1:
	.byte 0x00, 0x00, 0x00
s_data_message_etc_place_name_overlay_27_021214c4: ; 0x021214C4
	.asciz "/data/message/etc/place_name"
_021214E1:
	.byte 0x00, 0x00, 0x00
DAT_overlay_27_021214e4: ; 0x021214E4
	.byte 0x39, 0x00, 0x04, 0x00, 0x2B, 0x00, 0x04, 0x00, 0x2E, 0x00, 0x04, 0x00
	.byte 0x58, 0x00, 0x09, 0x00, 0x54, 0x00, 0x0A, 0x00, 0x2B, 0x00, 0x0A, 0x00, 0x2B, 0x00, 0x09, 0x00
	.byte 0x2D, 0x00, 0x0A, 0x00, 0x24, 0x00, 0x0E, 0x00, 0x2C, 0x00, 0x01, 0x00, 0x3B, 0x00, 0x04, 0x00
	.byte 0x28, 0x00, 0x0F, 0x00, 0x57, 0x00, 0x12, 0x00, 0x30, 0x00, 0x12, 0x00, 0x2A, 0x00, 0x0A, 0x00
	.byte 0x58, 0x00, 0x0F, 0x00, 0x2C, 0x00, 0x0A, 0x00, 0x24, 0x00, 0x19, 0x00, 0x66, 0x00, 0x19, 0x00
	.byte 0x5A, 0x00, 0x0A, 0x00, 0x31, 0x00, 0x12, 0x00, 0x35, 0x00, 0x1A, 0x00, 0x31, 0x00, 0x0A, 0x00
	.byte 0x31, 0x00, 0x0A, 0x00, 0x24, 0x00, 0x21, 0x00, 0x30, 0x00, 0x21, 0x00, 0x34, 0x00, 0x21, 0x00
	.byte 0x37, 0x00, 0x04, 0x00, 0x1C, 0x00, 0x11, 0x00, 0x20, 0x00, 0x11, 0x00, 0x24, 0x00, 0x11, 0x00
	.byte 0x86, 0x00, 0x1A, 0x00, 0x02, 0x00, 0x08, 0x00, 0x28, 0x00, 0x0E, 0x00, 0x56, 0x00, 0x09, 0x00
	.byte 0x27, 0x00, 0x0F, 0x00, 0x30, 0x00, 0x15, 0x00, 0x86, 0x00, 0x1A, 0x00, 0x30, 0x00, 0x13, 0x00
	.byte 0x30, 0x00, 0x16, 0x00, 0x04, 0x00, 0x01, 0x00, 0x03, 0x00, 0x08, 0x00, 0x30, 0x00, 0x23, 0x00
	.byte 0x2D, 0x00, 0x11, 0x00, 0x36, 0x00, 0x1A, 0x00, 0x25, 0x00, 0x08, 0x00, 0x52, 0x00, 0x21, 0x00
	.byte 0x2E, 0x00, 0x12, 0x00, 0x26, 0x00, 0x08, 0x00, 0x54, 0x00, 0x04, 0x00, 0x64, 0x00, 0x0E, 0x00
	.byte 0x01, 0x00, 0x08, 0x00, 0x2E, 0x00, 0x21, 0x00, 0x2C, 0x00, 0x08, 0x00, 0x05, 0x00, 0x01, 0x00
	.byte 0x57, 0x00, 0x12, 0x00, 0x38, 0x00, 0x04, 0x00, 0x66, 0x00, 0x19, 0x00, 0x1F, 0x00, 0x11, 0x00
	.byte 0x3A, 0x00, 0x0A, 0x00, 0x3E, 0x00, 0x16, 0x00
s_menu_overlay_27_021215d8: ; 0x021215D8
	.asciz "menu/"
_021215DE:
	.byte 0x00, 0x00
s_mmq000_bg_overlay_27_021215e0: ; 0x021215E0
	.asciz "mmq000_bg_"
_021215EB:
	.byte 0x00
s_mmq000_overlay_27_021215ec: ; 0x021215EC
	.asciz "mmq000"
_021215F3:
	.byte 0x00
s_mmq000_02_overlay_27_021215f4: ; 0x021215F4
	.asciz "mmq000_02"
_021215FE:
	.byte 0x00, 0x00
s_mmq000_01_overlay_27_02121600: ; 0x02121600
	.asciz "mmq000_01"
_0212160A:
	.byte 0x00, 0x00
s_data_menu_overlay_27_0212160c: ; 0x0212160C
	.asciz "data/menu"
_02121616:
	.byte 0x00, 0x00
s_mmq000_00_overlay_27_02121618: ; 0x02121618
	.asciz "mmq000_00"
_02121622:
	.byte 0x00, 0x00
PTR_ptr_FUN_020835bc_overlay_27_02121624: ; 0x02121624
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_19CQuestListMapScreen_overlay_27_02121630
	.word PTR_ptr_FUN_02083578_overlay_27_02121194
s_19CQuestListMapScreen_overlay_27_02121630: ; 0x02121630
	.asciz "19CQuestListMapScreen"
_02121646:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x16, 0x12, 0x02
ptr_FUN_overlay_27_02120f50_overlay_27_02121650: ; 0x02121650
	.word ov27_02120F50
ptr_FUN_overlay_27_02120f94_overlay_27_02121654: ; 0x02121654
	.word ov27_02120F94
ptr_FUN_overlay_27_02120fe0_overlay_27_02121658: ; 0x02121658
	.word ov27_02120FE0
ptr_FUN_overlay_27_02121044_overlay_27_0212165c: ; 0x0212165C
	.word ov27_02121044
	.word ov27_02121078
ptr_FUN_overlay_27_0212107c_overlay_27_02121664: ; 0x02121664
	.word ov27_0212107C
ptr_FUN_overlay_27_021210d4_overlay_27_02121668: ; 0x02121668
	.word ov27_021210D4
ptr_FUN_overlay_27_021210fc_overlay_27_0212166c: ; 0x0212166C
	.word ov27_021210FC
ptr_FUN_overlay_27_02121114_overlay_27_02121670: ; 0x02121670
	.word ov27_02121114
	.word ov27_0211CEB0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x02121680

    .bss
OVERLAY27_BSS_02121680: ; 0x02121680
    .space 0x4
OVERLAY27_BSS_02121684: ; 0x02121684
    .space 0x28
OVERLAY27_BSS_021216AC: ; 0x021216AC
    .space 0x28
OVERLAY27_BSS_021216D4: ; 0x021216D4
    .space 0x2C
