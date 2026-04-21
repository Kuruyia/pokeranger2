    .include "macros.inc"
    .include "include/overlay_29.inc"

    .text

	arm_func_start ov29_0211C9E0
ov29_0211C9E0: ; 0x0211C9E0
	mvn r0, #0
	bx lr
	arm_func_end ov29_0211C9E0

	arm_func_start ov29_0211C9E8
ov29_0211C9E8: ; 0x0211C9E8
	bx lr
	arm_func_end ov29_0211C9E8

	arm_func_start ov29_0211C9EC
ov29_0211C9EC: ; 0x0211C9EC
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
	mov r0, #3
	bl GX_SetBankForBG
	mov r0, #0
	bl GX_SetBankForOBJ
	mov r0, #0
	bl GX_SetBankForTex
	mov r0, #0
	bl GX_SetBankForTexPltt
	mov r0, #1
	mov r1, #0
	mov r2, r1
	bl GX_SetGraphicsMode
	mov r0, #4
	bl GX_SetBankForSubBG
	bl GX_DisableBankForSubBG
	mov r0, #0x180
	bl GX_SetBankForSubBG
	mov r0, #0
	bl GX_SetBankForSubOBJ
	mov r1, #0
	str r1, [sp]
	ldr r0, _0211CB40 ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr lr, _0211CB44 ; =0x04000060
	ldr r0, _0211CB48 ; =0xFFFFFDF1
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
	bic r0, r0, #0x8000
	strh r0, [ip]
	ldr r0, [r2]
	bic r0, r0, #0x1f00
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	str r0, [r1]
	bl GX_DispOn
	ldr r3, _0211CB4C ; =0x04001000
	ldr r2, _0211CB50 ; =0x04000008
	ldr r1, [r3]
	mov r0, #0
	orr r1, r1, #0x10000
	str r1, [r3]
	ldrh r1, [r2]
	and r1, r1, #0x43
	orr r1, r1, #8
	strh r1, [r2]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
	str r0, [r2, #0x10]
	str r0, [r2, #0x14]
	str r0, [r3, #0x10]
	str r0, [r3, #0x14]
	str r0, [r3, #0x18]
	str r0, [r3, #0x1c]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CB40: .word 0x04000050
_0211CB44: .word 0x04000060
_0211CB48: .word 0xFFFFFDF1
_0211CB4C: .word 0x04001000
_0211CB50: .word 0x04000008
	arm_func_end ov29_0211C9EC

	arm_func_start ov29_0211CB54
ov29_0211CB54: ; 0x0211CB54
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r0, _0211CC40 ; =MAIN_BSS_0208F304
	mov r1, #0x3c
	ldr r0, [r0]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	ldr r0, _0211CC40 ; =MAIN_BSS_0208F304
	mov r3, #0x10
	ldr lr, [r0]
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
	ldr r0, _0211CC40 ; =MAIN_BSS_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	ldr r0, _0211CC40 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020345D4
	ldr r0, _0211CC40 ; =MAIN_BSS_0208F304
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, _0211CC40 ; =MAIN_BSS_0208F304
	mov r2, #0x45
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CC40: .word MAIN_BSS_0208F304
	arm_func_end ov29_0211CB54

	arm_func_start ov29_0211CC44
ov29_0211CC44: ; 0x0211CC44
	stmdb sp!, {r3, lr}
	ldr r0, _0211CC8C ; =MAIN_BSS_0208F304
	mov r1, #0x1e
	ldr r0, [r0]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	ldr r0, _0211CC8C ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AC90Ev
	ldr r0, _0211CC8C ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020092D4Ev
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CC8C: .word MAIN_BSS_0208F304
	arm_func_end ov29_0211CC44

	arm_func_start ov29_0211CC90
ov29_0211CC90: ; 0x0211CC90
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov29_0211CC90

	arm_func_start ov29_0211CCAC
ov29_0211CCAC: ; 0x0211CCAC
	mov r0, #0x21
	bx lr
	arm_func_end ov29_0211CCAC

	arm_func_start ov29_0211CCB4
ov29_0211CCB4: ; 0x0211CCB4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov29_0211CCB4

    .section .sinit,4 ; 0x0211CCC8

    .data
_0211CCE0: ; 0x0211CCE0
    .word _ZTVN10__cxxabiv120__si_class_type_infoE+8
    .word _0211CCEC
    .word PTR_ptr_FUN_02083578_0208a804

_0211CCEC: ; 0x0211CCEC
    .string "21CCardAccessErrorScene"

    .global _ZTV21CCardAccessErrorScene
_ZTV21CCardAccessErrorScene: ; 0x0211CD04
    .byte 0x00, 0x00, 0x00, 0x00
    .word _0211CCE0

    .global CCardAccessErrorScene_vtable
CCardAccessErrorScene_vtable: ; 0x0211CD0C
    .word ov29_0211CCB4
    .word ov29_0211CC90
    .word ov29_0211C9E0
    .word ov29_0211C9E8
    .word sub_02007CD4
    .word sub_02007CE0
    .word sub_02007CC4
    .word ov29_0211C9EC
    .word ov29_0211CB54
    .word ov29_0211CC44
    .word ov29_0211CCAC
