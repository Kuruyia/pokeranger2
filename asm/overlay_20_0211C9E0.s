    .include "macros.inc"
    .include "include/overlay_20.inc"

    .text

    arm_func_start _ZN14CAutoSaveSceneC1Ev
_ZN14CAutoSaveSceneC1Ev: ; 0x0211C9E0
    stmdb sp!, {r4, lr}
    mov r4, r0
    bl _ZN6CSceneC2Ev
    ldr r0, _0211CA04 ; =CAutoSaveSceneVtable
    mov r1, #0
    stmia r4, {r0, r1}
    mov r0, r4
    str r1, [r4, #8]
    ldmia sp!, {r4, pc}
    .align 2, 0
_0211CA04: .word CAutoSaveSceneVtable
    arm_func_end _ZN14CAutoSaveSceneC1Ev

    arm_func_start ov20_0211CA08
ov20_0211CA08: ; 0x0211CA08
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
    arm_func_end ov20_0211CA08

	arm_func_start ov20_0211CA1C
ov20_0211CA1C: ; 0x0211CA1C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov20_0211CA1C

	arm_func_start ov20_0211CA38
ov20_0211CA38: ; 0x0211CA38
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x24
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211CCE8
_0211CA54: ; jump table
	b _0211CA68 ; case 0
	b _0211CB70 ; case 1
	b _0211CCE8 ; case 2
	b _0211CC2C ; case 3
	b _0211CCA8 ; case 4
	arm_func_end ov20_0211CA38
_0211CA68:
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CCE8
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CCE8
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	mov r1, #0x45
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020349E8
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	mov r1, #0x42
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r3, #0x100
	bl sub_02034DE8
	add r0, sp, #0x18
	bl RTC_GetTime
	add r0, sp, #8
	bl RTC_GetDate
	ldr r0, _0211CCF8 ; =MAIN_BSS_020B26A0
	add r1, sp, #0x18
	add r2, sp, #8
	bl _ZN17UnkClass_020B26A012sub_0201630CEP7RTCTimeP7RTCDate
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	bl sub_02010400
	mov r0, #0x74
	bl _Znwm
	cmp r0, #0
	beq _0211CB1C
	mov r1, #1
	bl sub_02027FE8
_0211CB1C:
	mov r1, #0
	str r0, [r4, #0xc]
	bl sub_02028220
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #1
	str r0, [r4, #8]
	b _0211CCE8
_0211CB70:
	ldr r0, [r4, #0xc]
	bl sub_0202841C
	cmp r0, #0
	beq _0211CCE8
	tst r0, #0x80
	bne _0211CBCC
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x21
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #3
	b _0211CC0C
_0211CBCC:
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x56
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #2
_0211CC0C:
	str r0, [r4, #8]
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034E38
	b _0211CCE8
_0211CC2C:
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _0211CCE8
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009FB0
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	mov r1, #2
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	mov r1, #2
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	mov r0, #4
	str r0, [r4, #8]
	b _0211CCE8
_0211CCA8:
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CCE8
	ldr r0, _0211CCF4 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, #0x11
	ldmeqia sp!, {r3, r4, pc}
_0211CCE8:
	mvn r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211CCF4: .word MAIN_BSS_0208F304
_0211CCF8: .word MAIN_BSS_020B26A0

	arm_func_start ov20_0211CCFC
ov20_0211CCFC: ; 0x0211CCFC
	stmdb sp!, {r3, lr}
	ldr r0, _0211CD28 ; =MAIN_BSS_0208F304
	mov r1, #0xa
	ldr r0, [r0]
	ldr r3, _0211CD2C ; =s_Auto_Save_overlay_20_0211cff4
	ldr r0, [r0, #0xc24]
	mov ip, #0
	mov r2, r1
	str ip, [r0, #0x24]
	bl sub_020028A4
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CD28: .word MAIN_BSS_0208F304
_0211CD2C: .word s_Auto_Save_overlay_20_0211cff4
	arm_func_end ov20_0211CCFC

	arm_func_start ov20_0211CD30
ov20_0211CD30: ; 0x0211CD30
	bx lr
	arm_func_end ov20_0211CD30

	arm_func_start ov20_0211CD34
ov20_0211CD34: ; 0x0211CD34
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
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	mov r1, #0
	str r1, [sp]
	ldr r0, _0211CE44 ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr lr, _0211CE48 ; =0x04000060
	ldr r0, _0211CE4C ; =0xFFFFFDF1
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
	ldr r1, _0211CE50 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CE44: .word 0x04000050
_0211CE48: .word 0x04000060
_0211CE4C: .word 0xFFFFFDF1
_0211CE50: .word 0x04001000
	arm_func_end ov20_0211CD34

	arm_func_start ov20_0211CE54
ov20_0211CE54: ; 0x0211CE54
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	mov lr, #0
	str lr, [r0, #4]
	ldr r1, _0211CF2C ; =MAIN_BSS_0208F304
	str lr, [r0, #8]
	ldr ip, [r1]
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
	bl sub_02007D68
	ldr r0, _0211CF2C ; =MAIN_BSS_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	ldr r0, _0211CF2C ; =MAIN_BSS_0208F304
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _0211CF2C ; =MAIN_BSS_0208F304
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	ldr r0, _0211CF2C ; =MAIN_BSS_0208F304
	mov r1, #0x3c
	ldr r0, [r0]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CF2C: .word MAIN_BSS_0208F304
	arm_func_end ov20_0211CE54

	arm_func_start ov20_0211CF30
ov20_0211CF30: ; 0x0211CF30
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _0211CF60
	beq _0211CF58
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov20_0211CF30
_0211CF58:
	mov r0, #0
	str r0, [r5, #0xc]
_0211CF60:
	ldr r0, _0211CF8C ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AC90Ev
	ldr r0, _0211CF8C ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020092D4Ev
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CF8C: .word MAIN_BSS_0208F304

	arm_func_start ov20_0211CF90
ov20_0211CF90: ; 0x0211CF90
	mov r0, #0x15
	bx lr
	arm_func_end ov20_0211CF90
	; 0x0211CF98

    .section .sinit,4 ; 0x0211CF98

    .data

    .global PTR_ptr_FUN_020835bc_overlay_20_0211cfa0
PTR_ptr_FUN_020835bc_overlay_20_0211cfa0: ; 0x0211CFA0
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_14CAutoSaveScene_overlay_20_0211cfac
	.word PTR_ptr_FUN_02083578_0208a804

    .global s_14CAutoSaveScene_overlay_20_0211cfac
s_14CAutoSaveScene_overlay_20_0211cfac: ; 0x0211CFAC
	.asciz "14CAutoSaveScene"

    .global DAT_overlay_20_0211CFBD
DAT_overlay_20_0211CFBD:
	.byte 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_20_0211cfa0

    .global CAutoSaveSceneVtable
CAutoSaveSceneVtable: ; 0x0211CFC8
	.word ov20_0211CA08
	.word ov20_0211CA1C
	.word ov20_0211CA38
	.word ov20_0211CCFC
	.word ov20_0211CD30
	.word sub_02007CE0
	.word sub_02007CC4
	.word ov20_0211CD34
	.word ov20_0211CE54
	.word ov20_0211CF30
	.word ov20_0211CF90

    .global s_Auto_Save_overlay_20_0211cff4
s_Auto_Save_overlay_20_0211cff4: ; 0x0211CFF4
	.asciz "Auto Save"
	; 0x0211CFFE
