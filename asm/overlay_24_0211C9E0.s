    .include "macros.inc"
    .include "include/overlay_24.inc"

    .text

	arm_func_start _ZN11CRetrySceneC1Ev
_ZN11CRetrySceneC1Ev: ; 0x0211C9E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN6CSceneC2Ev
	ldr r1, _0211CA14 ; =PTR_LAB_overlay_24_0211ca18_overlay_24_0211d2e4
	mov r0, #0
	str r1, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	mov r1, #0x11
	mov r0, r4
	str r1, [r4, #0xc]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CA14: .word PTR_LAB_overlay_24_0211ca18_overlay_24_0211d2e4
	arm_func_end _ZN11CRetrySceneC1Ev

	arm_func_start ov24_0211CA18
ov24_0211CA18: ; 0x0211CA18
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov24_0211CA18

	arm_func_start ov24_0211CA2C
ov24_0211CA2C: ; 0x0211CA2C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov24_0211CA2C

	arm_func_start ov24_0211CA48
ov24_0211CA48: ; 0x0211CA48
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _0211CFE4
_0211CA64: ; jump table
	b _0211CA90 ; case 0
	b _0211CAFC ; case 1
	b _0211CB90 ; case 2
	b _0211CBC0 ; case 3
	b _0211CE9C ; case 4
	b _0211CD28 ; case 5
	b _0211CFE4 ; case 6
	b _0211CFE4 ; case 7
	b _0211CEEC ; case 8
	b _0211CFE4 ; case 9
	b _0211CF54 ; case 10
	arm_func_end ov24_0211CA48
_0211CA90:
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CFE4
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CFE4
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x4f
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #1
	str r0, [r4, #8]
	b _0211CFE4
_0211CAFC:
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _0211CFE4
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B6A4
	cmp r0, #0
	bne _0211CFE4
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B6D4
	cmp r0, #0
	moveq r0, #2
	streq r0, [r4, #8]
	beq _0211CFE4
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x51
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #8
	str r0, [r4, #8]
	b _0211CFE4
_0211CB90:
	mov r0, #0x74
	bl _Znwm
	cmp r0, #0
	beq _0211CBA8
	mov r1, #1
	bl sub_02027FE8
_0211CBA8:
	mov r1, #0
	str r0, [r4, #0x10]
	bl sub_020282CC
	mov r0, #3
	str r0, [r4, #8]
	b _0211CFE4
_0211CBC0:
	ldr r0, [r4, #0x10]
	bl sub_0202841C
	cmp r0, #0
	beq _0211CFE4
	tst r0, #0x80
	bne _0211CC70
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	bl sub_0201024C
	ldr r0, _0211CFF4 ; =MAIN_BSS_020B26A0
	ldr r2, _0211CFF8 ; =MAIN_BSS_0210CA6C
	ldrh r1, [r0, #0x1a]
	ldr r0, [r2]
	bl sub_02041D80
	ldrb r0, [r0, #4]
	ldr r1, _0211CFFC ; =MAIN_BSS_020BA6A0
	mov r2, #0
	strb r0, [r1, #0xb64]
	str r2, [r1, #0xb68]
	ldr r0, _0211D000 ; =MAIN_BSS_0210C1C0
	str r2, [r1, #0xb6c]
	mov r2, #1
	ldr r1, _0211D004 ; =MAIN_BSS_0210C228
	strb r2, [r0, #0x60]
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	strb r2, [r1, #0x800]
	ldr r0, [r0]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #0xa
	str r0, [r4, #8]
	b _0211CFE4
_0211CC70:
	bic r0, r0, #0x80
	cmp r0, #8
	bgt _0211CC9C
	bge _0211CCA8
	cmp r0, #2
	bgt _0211CD10
	cmp r0, #1
	blt _0211CD10
	cmpne r0, #2
	beq _0211CCA8
	b _0211CD10
_0211CC9C:
	cmp r0, #0xa
	beq _0211CCDC
	b _0211CD10
_0211CCA8:
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x45
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #7
	str r0, [r4, #8]
	b _0211CFE4
_0211CCDC:
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x50
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #4
	str r0, [r4, #8]
	b _0211CFE4
_0211CD10:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02028360
	mov r0, #5
	str r0, [r4, #8]
	b _0211CFE4
_0211CD28:
	ldr r0, [r4, #0x10]
	bl sub_0202841C
	movs r5, r0
	beq _0211CFE4
	ldr r6, [r4, #0x10]
	cmp r6, #0
	beq _0211CD60
	beq _0211CD58
	mov r0, r6
	bl sub_02028054
	mov r0, r6
	bl _ZdlPv
_0211CD58:
	mov r0, #0
	str r0, [r4, #0x10]
_0211CD60:
	tst r5, #0x80
	bne _0211CE00
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	bl sub_0201024C
	ldr r0, _0211CFF4 ; =MAIN_BSS_020B26A0
	ldr r2, _0211CFF8 ; =MAIN_BSS_0210CA6C
	ldrh r1, [r0, #0x1a]
	ldr r0, [r2]
	bl sub_02041D80
	ldrb r0, [r0, #4]
	ldr r1, _0211CFFC ; =MAIN_BSS_020BA6A0
	mov r2, #0
	strb r0, [r1, #0xb64]
	str r2, [r1, #0xb68]
	ldr r0, _0211D000 ; =MAIN_BSS_0210C1C0
	str r2, [r1, #0xb6c]
	mov r2, #1
	ldr r1, _0211D004 ; =MAIN_BSS_0210C228
	strb r2, [r0, #0x60]
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	strb r2, [r1, #0x800]
	ldr r0, [r0]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #0xa
	str r0, [r4, #8]
	b _0211CFE4
_0211CE00:
	bic r0, r5, #0x80
	cmp r0, #8
	bgt _0211CE2C
	bge _0211CE34
	cmp r0, #2
	bgt _0211CE68
	cmp r0, #1
	blt _0211CE68
	cmpne r0, #2
	beq _0211CE34
	b _0211CE68
_0211CE2C:
	cmp r0, #0xa
	b _0211CE68
_0211CE34:
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x45
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #7
	str r0, [r4, #8]
	b _0211CFE4
_0211CE68:
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x47
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #4
	str r0, [r4, #8]
	b _0211CFE4
_0211CE9C:
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _0211CFE4
	mov r3, #1
	str r3, [sp]
	mov r1, #0
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x51
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA84
	mov r0, #8
	str r0, [r4, #8]
	b _0211CFE4
_0211CEEC:
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	bne _0211CFE4
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	mov r0, #0x11
	str r0, [r4, #0xc]
	mov r0, #0xa
	str r0, [r4, #8]
	b _0211CFE4
_0211CF54:
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CFE4
	ldr r0, _0211CFF0 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CFE4
	add r0, sp, #0x18
	bl RTC_GetTime
	add r0, sp, #8
	bl RTC_GetDate
	ldr r1, [sp, #0x18]
	ldr r0, _0211CFFC ; =MAIN_BSS_020BA6A0
	ldr r2, [sp, #0x1c]
	str r1, [r0, #0xb94]
	str r2, [r0, #0xb98]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #8]
	str r1, [r0, #0xb9c]
	str r2, [r0, #0xb84]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	str r1, [r0, #0xb88]
	ldr r1, [sp, #0x14]
	str r2, [r0, #0xb8c]
	str r1, [r0, #0xb90]
	add sp, sp, #0x24
	ldr r0, [r4, #0xc]
	ldmia sp!, {r3, r4, r5, r6, pc}
_0211CFE4:
	mvn r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0211CFF0: .word MAIN_BSS_0208F304
_0211CFF4: .word MAIN_BSS_020B26A0
_0211CFF8: .word MAIN_BSS_0210CA6C
_0211CFFC: .word MAIN_BSS_020BA6A0
_0211D000: .word MAIN_BSS_0210C1C0
_0211D004: .word MAIN_BSS_0210C228

	arm_func_start ov24_0211D008
ov24_0211D008: ; 0x0211D008
	bx lr
	arm_func_end ov24_0211D008

	arm_func_start ov24_0211D00C
ov24_0211D00C: ; 0x0211D00C
	bx lr
	arm_func_end ov24_0211D00C

	arm_func_start ov24_0211D010
ov24_0211D010: ; 0x0211D010
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
	ldr r0, _0211D124 ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr lr, _0211D128 ; =0x04000060
	ldr r0, _0211D12C ; =0xFFFFFDF1
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
	orr r0, r0, #0x800
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	str r0, [r1]
	bl GX_DispOn
	ldr r1, _0211D130 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211D124: .word 0x04000050
_0211D128: .word 0x04000060
_0211D12C: .word 0xFFFFFDF1
_0211D130: .word 0x04001000
	arm_func_end ov24_0211D010

	arm_func_start ov24_0211D134
ov24_0211D134: ; 0x0211D134
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r1, _0211D21C ; =MAIN_BSS_0208F304
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r1, #0
	str r1, [r4, #4]
	ldr r0, _0211D220 ; =MAIN_BSS_020B26A0
	str r1, [r4, #8]
	bl sub_02015198
	bl sub_02007D68
	ldr r0, _0211D21C ; =MAIN_BSS_0208F304
	mov r3, #0x10
	ldr lr, [r0]
	mov r2, #0x4000
	add r1, lr, #0x1000
	ldr ip, [r1, #0x4b0]
	add r0, lr, #0x24
	str ip, [sp]
	str r0, [sp, #4]
	ldr ip, [r1, #0x48c]
	mov r0, #0
	str ip, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r1, #0x490]
	ldr r3, [r1, #0x4ac]
	ldr r1, [lr, #0x14]
	ldr r2, [lr, #0x18]
	add r3, r3, #0xc
	bl _ZN17UnkClass_020091E812sub_02009328EmmmPvmS0_mmm
	ldr r0, _0211D21C ; =MAIN_BSS_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	ldr r0, _0211D21C ; =MAIN_BSS_0208F304
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _0211D21C ; =MAIN_BSS_0208F304
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D21C: .word MAIN_BSS_0208F304
_0211D220: .word MAIN_BSS_020B26A0
	arm_func_end ov24_0211D134

	arm_func_start ov24_0211D224
ov24_0211D224: ; 0x0211D224
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x10]
	cmp r4, #0
	beq _0211D254
	beq _0211D24C
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov24_0211D224
_0211D24C:
	mov r0, #0
	str r0, [r5, #0x10]
_0211D254:
	ldr r0, _0211D298 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AC90Ev
	ldr r0, _0211D298 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020092D4Ev
	ldr r0, _0211D298 ; =MAIN_BSS_0208F304
	mov r1, #0x1e
	ldr r0, [r0]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211D298: .word MAIN_BSS_0208F304

	arm_func_start ov24_0211D29C
ov24_0211D29C: ; 0x0211D29C
	mov r0, #0x19
	bx lr
	arm_func_end ov24_0211D29C
	; 0x0211D2A4

    .section .sinit,4 ; 0x0211D2A4

    .data
PTR_ptr_FUN_020835bc_overlay_24_0211d2c0: ; 0x0211D2C0
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_11CRetryScene_overlay_24_0211d2cc
	.word PTR_ptr_FUN_02083578_0208a804
s_11CRetryScene_overlay_24_0211d2cc: ; 0x0211D2CC
	.asciz "11CRetryScene"
_0211D2DA:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_24_0211d2c0
PTR_LAB_overlay_24_0211ca18_overlay_24_0211d2e4: ; 0x0211D2E4
	.word ov24_0211CA18
ptr_FUN_overlay_24_0211ca2c_overlay_24_0211d2e8: ; 0x0211D2E8
	.word ov24_0211CA2C
ptr_FUN_overlay_24_0211ca48_overlay_24_0211d2ec: ; 0x0211D2EC
	.word ov24_0211CA48
	.word ov24_0211D008
	.word ov24_0211D00C
ptr_FUN_02007ce0_overlay_24_0211d2f8: ; 0x0211D2F8
	.word sub_02007CE0
ptr_FUN_02007cc4_overlay_24_0211d2fc: ; 0x0211D2FC
	.word sub_02007CC4
ptr_FUN_overlay_24_0211d010_overlay_24_0211d300: ; 0x0211D300
	.word ov24_0211D010
ptr_FUN_overlay_24_0211d134_overlay_24_0211d304: ; 0x0211D304
	.word ov24_0211D134
ptr_FUN_overlay_24_0211d224_overlay_24_0211d308: ; 0x0211D308
	.word ov24_0211D224
	.word ov24_0211D29C
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0211D320
