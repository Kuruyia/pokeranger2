    .include "macros.inc"
    .include "include/overlay_11_0211C9E0.inc"

    .text

	arm_func_start _ZN15CRangerNetSceneC1EP5CGame
_ZN15CRangerNetSceneC1EP5CGame: ; 0x0211C9E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl _ZN6CSceneC2Ev
	ldr r1, _0211CA08 ; =ptr_FUN_overlay_11_0211ca0c_overlay_11_021660e8
	mov r0, r5
	stmia r5, {r1, r4}
	bl ov11_0211CAE4
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA08: .word ptr_FUN_overlay_11_0211ca0c_overlay_11_021660e8
	arm_func_end _ZN15CRangerNetSceneC1EP5CGame

	arm_func_start ov11_0211CA0C
ov11_0211CA0C: ; 0x0211CA0C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0211CA6C ; =ptr_FUN_overlay_11_0211ca0c_overlay_11_021660e8
	mov r5, r0
	ldr r1, _0211CA70 ; =0x04000304
	str r2, [r5]
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211CA54
	beq _0211CA4C
	mov r0, r4
	bl ov11_0211E0BC
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov11_0211CA0C
_0211CA4C:
	mov r0, #0
	str r0, [r5, #8]
_0211CA54:
	mov r0, #0
	bl sub_0200FA48
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA6C: .word ptr_FUN_overlay_11_0211ca0c_overlay_11_021660e8
_0211CA70: .word 0x04000304

	arm_func_start ov11_0211CA74
ov11_0211CA74: ; 0x0211CA74
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0211CADC ; =ptr_FUN_overlay_11_0211ca0c_overlay_11_021660e8
	mov r5, r0
	ldr r1, _0211CAE0 ; =0x04000304
	str r2, [r5]
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211CABC
	beq _0211CAB4
	mov r0, r4
	bl ov11_0211E0BC
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov11_0211CA74
_0211CAB4:
	mov r0, #0
	str r0, [r5, #8]
_0211CABC:
	mov r0, #0
	bl sub_0200FA48
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	bl _ZdlPv
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CADC: .word ptr_FUN_overlay_11_0211ca0c_overlay_11_021660e8
_0211CAE0: .word 0x04000304

	arm_func_start ov11_0211CAE4
ov11_0211CAE4: ; 0x0211CAE4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x730
	bl _Znwm
	cmp r0, #0
	beq _0211CB08
	ldr r1, [r4, #4]
	mov r2, #0
	bl ov11_0211E05C
	arm_func_end ov11_0211CAE4
_0211CB08:
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, #1
	bl sub_0200FA48
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0211CB2C
ov11_0211CB2C: ; 0x0211CB2C
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
	mov r0, #2
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r0, #0x30
	bl GX_SetBankForOBJ
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #0
	mov r2, r0
	bl GX_SetGraphicsMode
	mov r0, #0
	bl GXS_SetGraphicsMode
	mov r0, #4
	bl GX_SetBankForSubBG
	bl GX_DisableBankForSubBG
	mov r0, #8
	bl GX_SetBankForSubOBJ
	mov r0, #0x180
	bl GX_SetBankForSubBG
	ldr ip, _0211CC6C ; =0x04000304
	mov r1, #0
	ldrh r3, [ip]
	sub r0, ip, #0x2b4
	mov r2, r1
	orr r3, r3, #0x8000
	strh r3, [ip]
	str r1, [sp]
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr ip, _0211CC70 ; =0x04000060
	ldr r0, _0211CC74 ; =0xFFFFFDF1
	ldrh r1, [ip]
	add r3, ip, #0x2a4
	mov r2, #0x4000000
	bic r1, r1, #0x3000
	orr r1, r1, #8
	strh r1, [ip]
	ldrh r1, [ip]
	bic r1, r1, #0x3000
	orr r1, r1, #0x10
	strh r1, [ip]
	ldrh r1, [r3]
	and r0, r1, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [r3]
	ldr r0, [r2]
	bic r0, r0, #0x38000000
	str r0, [r2]
	ldr r0, [r2]
	add r1, r2, #0x1000
	bic r0, r0, #0x7000000
	str r0, [r2]
	ldr r0, [r2]
	bic r0, r0, #0x1f00
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	str r0, [r1]
	bl GX_DispOn
	ldr r1, _0211CC78 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CC6C: .word 0x04000304
_0211CC70: .word 0x04000060
_0211CC74: .word 0xFFFFFDF1
_0211CC78: .word 0x04001000
	arm_func_end ov11_0211CB2C

	arm_func_start ov11_0211CC7C
ov11_0211CC7C: ; 0x0211CC7C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r1, #0x20000
	mov r2, #0
	mov r3, #0x4000
	bl sub_020101F4
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov11_02121EEC
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0211CC7C

	arm_func_start ov11_0211CCAC
ov11_0211CCAC: ; 0x0211CCAC
	ldr ip, _0211CCC4 ; =FUN_020101F4
	ldr r0, [r0, #4]
	mov r1, #0x80000
	mov r2, #0
	mov r3, #0x4000
	bx ip
	.align 2, 0
_0211CCC4: .word sub_020101F4
	arm_func_end ov11_0211CCAC

	arm_func_start ov11_0211CCC8
ov11_0211CCC8: ; 0x0211CCC8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211CD28
	bl ov11_0211E2EC
	ldr r0, [r4, #8]
	bl ov11_02123FF8
	mvn r1, #0
	cmp r0, r1
	beq _0211CD28
	cmp r0, #0
	beq _0211CD10
	cmp r0, #1
	beq _0211CD18
	cmp r0, #2
	beq _0211CD20
	b _0211CD18
	arm_func_end ov11_0211CCC8
_0211CD10:
	mov r0, #0xe
	ldmia sp!, {r4, pc}
_0211CD18:
	mov r0, #0x1c
	ldmia sp!, {r4, pc}
_0211CD20:
	mov r0, #0x21
	ldmia sp!, {r4, pc}
_0211CD28:
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0211CD30
ov11_0211CD30: ; 0x0211CD30
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov11_0211E414
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0211CD30

	arm_func_start ov11_0211CD48
ov11_0211CD48: ; 0x0211CD48
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov11_0211E438
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0211CD48

	arm_func_start ov11_0211CD60
ov11_0211CD60: ; 0x0211CD60
	mov r0, #8
	bx lr
	arm_func_end ov11_0211CD60

	arm_func_start ov11_0211CD68
ov11_0211CD68: ; 0x0211CD68
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr ip, _0211CDB4 ; =sub_0203C068
	mov r6, r0
	mov r5, r1
	mov r4, r2
	ldr r3, _0211CDB8 ; =sub_0203BFD4
	str ip, [sp]
	add r0, r6, #0xa0
	mov r1, #6
	mov r2, #0xe0
	bl __cxa_vec_ctor
	str r5, [r6, #0x5f0]
	mov r0, r6
	str r4, [r6, #0x58]
	bl ov11_0211CDE8
	mov r0, r6
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0211CDB4: .word sub_0203C068
_0211CDB8: .word sub_0203BFD4
	arm_func_end ov11_0211CD68

	arm_func_start ov11_0211CDBC
ov11_0211CDBC: ; 0x0211CDBC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_0211CF40
	ldr r3, _0211CDE4 ; =sub_0203C068
	add r0, r4, #0xa0
	mov r1, #6
	mov r2, #0xe0
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CDE4: .word sub_0203C068
	arm_func_end ov11_0211CDBC

	arm_func_start ov11_0211CDE8
ov11_0211CDE8: ; 0x0211CDE8
	mov r2, #0
	strh r2, [r0]
	str r2, [r0, #0x18]
	str r2, [r0, #0x10]
	mov r1, #1
	str r2, [r0, #4]
	str r1, [r0, #0x5e0]
	str r2, [r0, #0x5e4]
	str r2, [r0, #0x5e8]
	strh r2, [r0, #0x62]
	str r2, [r0, #0x64]
	sub r1, r1, #2
	str r1, [r0, #0x68]
	bx lr
	arm_func_end ov11_0211CDE8

	arm_func_start ov11_0211CE20
ov11_0211CE20: ; 0x0211CE20
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x5f0]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008E50
	mov r1, r0
	mov r0, #0x3c
	bl _s32_div_f
	ldr r1, [r4, #0x64]
	cmp r1, #0x780
	addlt r0, r1, r0, lsl #3
	strlt r0, [r4, #0x64]
	blt _0211CE80
	ldrh r1, [r4, #0x62]
	add r0, r1, r0
	strh r0, [r4, #0x62]
	ldrh r0, [r4, #0x62]
	cmp r0, #0x3c
	bls _0211CE80
	mov r0, #0
	strh r0, [r4, #0x62]
	sub r0, r0, #0x280
	str r0, [r4, #0x64]
	arm_func_end ov11_0211CE20
_0211CE80:
	ldr r1, [r4, #0x64]
	ldr r2, _0211CEF8 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #2
	ldr r0, _0211CEFC ; =0x01FF0000
	rsb r2, r3, #0
	ldr r1, _0211CF00 ; =0x04000014
	and r0, r0, r2, lsl #16
	str r0, [r1]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F64C
	ldr r0, [r4, #0x68]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0211CEC8: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	ldmia sp!, {r4, pc} ; case 1
	b _0211CEDC ; case 2
	ldmia sp!, {r4, pc} ; case 3
	ldmia sp!, {r4, pc} ; case 4
_0211CEDC:
	ldr r1, [r4, #0x5ec]
	add r2, r4, #0xa0
	mov r0, #0xe0
	mla r0, r1, r0, r2
	mov r1, #0
	bl sub_0203C87C
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CEF8: .word 0x66666667
_0211CEFC: .word 0x01FF0000
_0211CF00: .word 0x04000014

	arm_func_start thunk_FUN_overlay_11__0211d02c
thunk_FUN_overlay_11__0211d02c: ; 0x0211CF04
	ldr ip, _0211CF0C ; =ov11_0211D02C
	bx ip
	.align 2, 0
_0211CF0C: .word ov11_0211D02C
	arm_func_end thunk_FUN_overlay_11__0211d02c

	arm_func_start thunk_FUN_overlay_11__0211d8c4
thunk_FUN_overlay_11__0211d8c4: ; 0x0211CF10
	ldr ip, _0211CF18 ; =ov11_0211D8C4
	bx ip
	.align 2, 0
_0211CF18: .word ov11_0211D8C4
	arm_func_end thunk_FUN_overlay_11__0211d8c4

	arm_func_start ov11_0211CF1C
ov11_0211CF1C: ; 0x0211CF1C
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x18]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x5f0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C588
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0211CF1C

	arm_func_start ov11_0211CF40
ov11_0211CF40: ; 0x0211CF40
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _0211CF70
	beq _0211CF68
	mov r0, r5
	bl sub_0200372C
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov11_0211CF40
_0211CF68:
	mov r0, #0
	str r0, [r4, #8]
_0211CF70:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _0211CF98
	beq _0211CF90
	mov r0, r5
	bl sub_02040F88
	mov r0, r5
	bl _ZdlPv
_0211CF90:
	mov r0, #0
	str r0, [r4, #0xc]
_0211CF98:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _0211CFC0
	beq _0211CFB8
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211CFB8:
	mov r0, #0
	str r0, [r4, #0x18]
_0211CFC0:
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _0211CFE8
	beq _0211CFE0
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211CFE0:
	mov r0, #0
	str r0, [r4, #0x10]
_0211CFE8:
	mov r6, #0
	mov r5, r6
_0211CFF0:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0x40]
	cmp r7, #0
	beq _0211D01C
	beq _0211D014
	mov r0, r7
	bl sub_02021428
	mov r0, r7
	bl _ZdlPv
_0211D014:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x40]
_0211D01C:
	add r6, r6, #1
	cmp r6, #6
	blt _0211CFF0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov11_0211D02C
ov11_0211D02C: ; 0x0211D02C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
	ldr r0, [r4, #0x68]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0211D054: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	ldmia sp!, {r4, pc} ; case 1
	b _0211D068 ; case 2
	ldmia sp!, {r4, pc} ; case 3
	ldmia sp!, {r4, pc} ; case 4
	arm_func_end ov11_0211D02C
_0211D068:
	ldr r1, [r4, #8]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0x41000
	str r0, [r1, #0x1c]
	sub r0, r0, #0x58000
	str r0, [r1, #0x20]
	ldr r0, [r4, #8]
	bl sub_020037B4
	ldr r0, [r4, #8]
	bl sub_0200381C
	ldr r0, _0211D0CC ; =0x0400044C
	mov r2, #0
	str r2, [r0]
	ldr r1, [r4, #0x5ec]
	mov r0, #0xe0
	mla r0, r1, r0, r4
	ldr r0, [r0, #0xa8]
	ldr r1, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, [r0]
	ldr r3, [r3, #8]
	blx r3
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D0CC: .word 0x0400044C

	arm_func_start ov11_0211D0D0
ov11_0211D0D0: ; 0x0211D0D0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x50
	mov r5, #0x4000000
	ldr r1, [r5]
	mov sl, r0
	bic r0, r1, #0x1f00
	orr r0, r0, #0x1600
	str r0, [r5]
	ldr r1, [r5]
	ldr r0, _0211D498 ; =0xFFCFFFEF
	mov r4, #0
	and r0, r1, r0
	orr r0, r0, #0x10
	str r0, [r5]
	str r4, [r5, #0x14]
	str r4, [r5, #0x18]
	str r4, [r5, #0x1c]
	ldrh r1, [r5, #0xa]
	ldr r3, _0211D49C ; =s_rn000_overlay_11_02166140
	ldr r0, _0211D4A0 ; =s_menu_overlay_11_0216612c
	and r1, r1, #0x43
	orr r1, r1, #0x210
	strh r1, [r5, #0xa]
	ldrh r6, [r5, #0xc]
	ldr r1, _0211D4A4 ; =s_rn000_bg_overlay_11_02166134
	mov r2, #1
	and r6, r6, #0x43
	orr r6, r6, #0x310
	strh r6, [r5, #0xc]
	ldrh r6, [r5, #8]
	bic r6, r6, #3
	strh r6, [r5, #8]
	ldrh r6, [r5, #0xa]
	bic r6, r6, #3
	orr r6, r6, #2
	strh r6, [r5, #0xa]
	ldrh r6, [r5, #0xc]
	bic r6, r6, #3
	orr r6, r6, #3
	strh r6, [r5, #0xc]
	ldrh r6, [r5, #0xe]
	bic r6, r6, #3
	strh r6, [r5, #0xe]
	str r4, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	bl sub_02020804
	mov r0, #1
	stmia sp, {r0, r4}
	str r4, [sp, #8]
	ldr r0, _0211D4A0 ; =s_menu_overlay_11_0216612c
	ldr r1, _0211D4A4 ; =s_rn000_bg_overlay_11_02166134
	ldr r3, _0211D4A8 ; =s_rn000_02_overlay_11_02166148
	mov r2, #2
	str r4, [sp, #0xc]
	bl sub_02020FF0
	mov r2, #1
	str r2, [sp]
	mov r3, r4
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, _0211D4A0 ; =s_menu_overlay_11_0216612c
	ldr r1, _0211D4A4 ; =s_rn000_bg_overlay_11_02166134
	ldr r3, _0211D4AC ; =s_rn000_01_overlay_11_02166154
	bl sub_02020FF0
	mov r3, r5
	ldr r2, [r3]
	ldr r0, _0211D498 ; =0xFFCFFFEF
	mov r1, r4
	and r0, r2, r0
	orr r0, r0, #0x10
	str r0, [r3]
	str r1, [r3, #0x14]
	str r1, [r3, #0x18]
	str r1, [r3, #0x1c]
	mov r4, #7
	add r0, r3, #0x50
	mov r1, #2
	mov r2, #6
	mov r3, #8
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D24C
	ldr r3, [sl, #0x5f0]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x24
	mov r3, #0
	bl sub_0200ECD0
	arm_func_end ov11_0211D0D0
_0211D24C:
	str r0, [sl, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x18]
	ldr r1, _0211D4B0 ; =s_data_menu_overlay_11_02166160
	ldr r2, _0211D4B4 ; =s_rn000_00_overlay_11_0216616c
	mov r3, #0
	bl sub_0200EE14
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x18]
	mov r1, #0
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [sl, #0x20]
	mov r1, #1
	str r1, [sp]
	ldr r0, [sl, #0x18]
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [sl, #0x24]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x18]
	mov r1, #2
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [sl, #0x28]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x18]
	mov r1, #3
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [sl, #0x2c]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x18]
	mov r1, #4
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [sl, #0x30]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x18]
	mov r1, #5
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [sl, #0x34]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x18]
	mov r1, #8
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [sl, #0x1c]
	mov r0, sl
	bl ov11_0211DED0
	mov r2, #0x4000000
	ldr r0, [r2]
	mov r1, #3
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1f00
	str r0, [r2]
	ldr r0, [sl, #0x5f0]
	mov r2, #0xc
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r3, #6
	bl sub_0200C408
	mov r0, #8
	bl _Znwm
	cmp r0, #0
	beq _0211D394
	bl sub_02040F34
_0211D394:
	str r0, [sl, #0xc]
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	beq _0211D3AC
	bl sub_02003718
_0211D3AC:
	mov r1, #0x100000
	str r0, [sl, #8]
	str r1, [sp]
	sub r0, r1, #0x500000
	str r0, [sp, #4]
	mov r0, #0x800000
	str r0, [sp, #8]
	mov r0, #0x400000
	mov r1, #0
	str r0, [sp, #0xc]
	ldr r0, [sl, #8]
	mov r3, r1
	mov r2, #0xc0000
	bl sub_02003788
	ldr r5, _0211D4B8 ; =DAT_overlay_11_02166114
	mov r8, sl
	add r7, sl, #0xa0
	mov sb, #0
	add r4, sp, #0x10
	mov fp, #2
_0211D3FC:
	mov r0, sb, lsl #2
	ldrh r6, [r5, r0]
	ldr r1, _0211D4BC ; =s_data_message_etc_mission_info_0_overlay_11_02166178
	mov r0, r4
	add r2, sb, #0x50
	bl OS_SPrintf
	mov r0, #4
	bl _Znwm
	cmp r0, #0
	beq _0211D42C
	mov r1, r4
	bl sub_02021404
_0211D42C:
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x40]
	cmp r6, #0
	mov r1, #1
	moveq r6, #3
	str fp, [sp]
	mov r0, #0
	str r0, [sp, #4]
	moveq r1, #4
	mov r2, r6
	mov r0, r7
	mov r3, #0
	bl sub_0203C418
	ldr r0, [r8, #0xa8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0211D47C
	mov r1, #0x4000
	bl sub_020128EC
_0211D47C:
	add r7, r7, #0xe0
	add r8, r8, #0xe0
	add sb, sb, #1
	cmp sb, #6
	blt _0211D3FC
	add sp, sp, #0x50
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211D498: .word 0xFFCFFFEF
_0211D49C: .word s_rn000_overlay_11_02166140
_0211D4A0: .word s_menu_overlay_11_0216612c
_0211D4A4: .word s_rn000_bg_overlay_11_02166134
_0211D4A8: .word s_rn000_02_overlay_11_02166148
_0211D4AC: .word s_rn000_01_overlay_11_02166154
_0211D4B0: .word s_data_menu_overlay_11_02166160
_0211D4B4: .word s_rn000_00_overlay_11_0216616c
_0211D4B8: .word DAT_overlay_11_02166114
_0211D4BC: .word s_data_message_etc_mission_info_0_overlay_11_02166178

	arm_func_start ov11_0211D4C0
ov11_0211D4C0: ; 0x0211D4C0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #0x68]
	mov r4, r1
	cmp r0, r4
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, pc}
	str r4, [r5, #0x68]
	ldr r0, [r5, #0x5f0]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r2, #0xc
	mov r3, #6
	bl sub_0200C408
	ldr r0, [r5, #0x5f0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C3D0
	mov r0, r5
	bl ov11_0211DED0
	mov r0, #0x4000000
	ldr r2, [r0]
	ldr r1, [r0]
	and r2, r2, #0x1f00
	mov r3, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r3, #8
	orr r1, r2, r1, lsl #8
	str r1, [r0]
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _0211D7B8
_0211D548: ; jump table
	b _0211D55C ; case 0
	b _0211D580 ; case 1
	b _0211D5DC ; case 2
	b _0211D710 ; case 3
	b _0211D710 ; case 4
	arm_func_end ov11_0211D4C0
_0211D55C:
	ldr r2, [r0]
	ldr r1, [r0]
	and r2, r2, #0x1f00
	mov r3, r2, lsr #8
	bic r2, r1, #0x1f00
	bic r1, r3, #8
	orr r1, r2, r1, lsl #8
	str r1, [r0]
	b _0211D7B8
_0211D580:
	ldr r0, [r5, #0x2c]
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r0, [r5, #0x5f0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C680
	mov r0, #3
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r5, #0x5f0]
	mov r2, #0x1a
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r3, #0x14
	bl sub_0200C6C8
	b _0211D7B8
_0211D5DC:
	ldr r0, [r5, #0x1c]
	mov r2, #1
	str r2, [r0, #0x14]
	ldr r0, [r5, #0x20]
	mov r1, #4
	str r2, [r0, #0x14]
	ldr r0, [r5, #0x24]
	str r2, [r0, #0x14]
	ldr r0, [r5, #0x28]
	str r2, [r0, #0x14]
	ldr r0, [r5, #0x5f0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
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
	ldr r0, [r5, #0x5f0]
	mov r2, #0x18
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
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
	ldr r0, [r5, #0x5f0]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
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
	ldr r0, [r5, #0x5f0]
	mov r2, #0xf
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r3, r1
	bl sub_0200C6C8
	mov r1, #2
	str r1, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x78
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x5f0]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r2, #0x1e
	mov r3, #0xa
	bl sub_0200C6C8
	b _0211D7B8
_0211D710:
	ldr r0, [r5, #0x30]
	mov r2, #1
	str r2, [r0, #0x14]
	ldr r0, [r5, #0x34]
	mov r1, #2
	str r2, [r0, #0x14]
	ldr r0, [r5, #0x5f0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C680
	mov r0, #3
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r5, #0x5f0]
	mov r2, #0x1b
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r3, #0xa
	bl sub_0200C6C8
	mov r0, #3
	str r0, [sp]
	mov r1, #0x10
	ldr r0, _0211D7D0 ; =0x00000116
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x5f0]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r2, #0x1b
	mov r3, #4
	bl sub_0200C6C8
_0211D7B8:
	ldr r0, [r5, #0x18]
	bl sub_0200F64C
	ldr r0, [r5, #0x18]
	bl sub_0200F71C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0211D7D0: .word 0x00000116

	arm_func_start ov11_0211D7D4
ov11_0211D7D4: ; 0x0211D7D4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	str r1, [r6, #0x6c]
	bl ov11_0211D860
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov11_0211D880
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_0211D7D4

	arm_func_start ov11_0211D804
ov11_0211D804: ; 0x0211D804
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	str r4, [r5, #0x5ec]
	mov r1, #2
	str r1, [r5, #0x6c]
	bl ov11_0211D860
	add r0, r5, r4, lsl #2
	ldr r2, [r0, #0x40]
	mov r0, r5
	mov r1, #1
	bl ov11_0211D880
	mov r0, r5
	mov r1, #2
	bl ov11_0211D8A0
	mov r0, r5
	mov r1, #3
	bl ov11_0211D8A0
	mov r0, r5
	mov r1, #4
	bl ov11_0211D8A0
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_0211D804

	arm_func_start ov11_0211D860
ov11_0211D860: ; 0x0211D860
	bx lr
	arm_func_end ov11_0211D860

	arm_func_start ov11_0211D864
ov11_0211D864: ; 0x0211D864
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_0211D0D0
	mov r0, r4
	bl ov11_0211CF1C
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0211D864

	arm_func_start ov11_0211D880
ov11_0211D880: ; 0x0211D880
	mov r3, #1
	str r3, [r0, #4]
	str r2, [r0, #0x70]
	mov r2, #0
	ldr ip, _0211D89C ; =ov11_0211D8A0
	str r2, [r0, #0x9c]
	bx ip
	.align 2, 0
_0211D89C: .word ov11_0211D8A0
	arm_func_end ov11_0211D880

	arm_func_start ov11_0211D8A0
ov11_0211D8A0: ; 0x0211D8A0
	ldr r2, [r0, #0x9c]
	cmp r2, #0xa
	bxge lr
	add r2, r0, r2, lsl #2
	str r1, [r2, #0x74]
	ldr r1, [r0, #0x9c]
	add r1, r1, #1
	str r1, [r0, #0x9c]
	bx lr
	arm_func_end ov11_0211D8A0

	arm_func_start ov11_0211D8C4
ov11_0211D8C4: ; 0x0211D8C4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, #0
	str r1, [r4, #4]
	ldr r1, [r4, #0x6c]
	bl ov11_0211D4C0
	ldr r0, [r4, #0x6c]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211DEC8
_0211D900: ; jump table
	b _0211DEC8 ; case 0
	b _0211D914 ; case 1
	b _0211D980 ; case 2
	b _0211DA94 ; case 3
	b _0211DCB0 ; case 4
	arm_func_end ov11_0211D8C4
_0211D914:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x5f0]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C980
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r2, r1, #0x1000
	ldr r1, [r4, #0x74]
	ldr r4, [r2, #0x494]
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r0, r4
	mov r2, r1
	mov r3, #2
	str r1, [sp, #0xc]
	bl sub_0200C7A4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
_0211D980:
	ldr r0, [r4, #0x5ec]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x40]
	str r0, [r4, #0x70]
	ldr r2, [r4, #0x5f0]
	ldr r1, [r4, #0x74]
	add r2, r2, #0x1000
	ldr r5, [r2, #0x494]
	bl sub_020215F8
	mov r3, #3
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #8]
	mov r0, r5
	mov r2, r1
	str r1, [sp, #0xc]
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r2, r1, #0x1000
	ldr r1, [r4, #0x78]
	ldr r5, [r2, #0x494]
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r1, #1
	mov r2, #0
	str r1, [sp, #8]
	mov r0, r5
	str r2, [sp, #0xc]
	mov r3, r2
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x494]
	ldr r1, [r4, #0x7c]
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r2, #0
	mov r0, r5
	str r2, [sp, #0xc]
	mov r1, #2
	mov r3, r2
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x494]
	ldr r1, [r4, #0x80]
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r5
	mov r3, #6
	str r2, [sp, #0xc]
	bl sub_0200C7A4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
_0211DA94:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x5f0]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C980
	ldr r0, [r4, #0x5f0]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C980
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r2, r1, #0x1000
	ldr r1, [r4, #0x74]
	ldr r5, [r2, #0x494]
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, r1
	mov r3, #2
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x494]
	mov r1, #0xf
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, r1
	mov r3, #0xe
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x494]
	mov r1, #0x10
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, r1
	mov r3, #0x26
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x494]
	mov r1, #0x11
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, r1
	mov r3, #0x32
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x494]
	mov r1, #0x12
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r5
	str r2, [sp, #0xc]
	mov r1, #1
	mov r3, #2
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x494]
	mov r1, #0x13
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, r5
	mov r1, #1
	mov r2, #0x8c
	mov r3, #0xe
	bl sub_0200C7A4
	mvn r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x58]
	mov r1, #0
	mov r2, #0x50
	mov r3, #0x26
	bl ov11_0212331C
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x58]
	mov r1, #0
	mov r2, #0x64
	mov r3, #0x32
	bl ov11_02123228
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
_0211DCB0:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x5f0]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C980
	ldr r0, [r4, #0x5f0]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C980
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r2, r1, #0x1000
	ldr r1, [r4, #0x74]
	ldr r5, [r2, #0x494]
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, r1
	mov r3, #2
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x494]
	mov r1, #0xf
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, r1
	mov r3, #0xe
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x494]
	mov r1, #0xa
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, r1
	mov r3, #0x26
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x494]
	mov r1, #0x10
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, r1
	mov r3, #0x32
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x494]
	mov r1, #0x11
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r5
	str r2, [sp, #0xc]
	mov r1, #1
	mov r3, #2
	bl sub_0200C7A4
	ldr r1, [r4, #0x5f0]
	ldr r0, [r4, #0x70]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x494]
	mov r1, #0x12
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #1
	mov r2, #0x8c
	mov r3, #0xe
	bl sub_0200C7A4
	mvn r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x58]
	mov r1, #0
	mov r2, #0x50
	mov r3, #0x26
	bl ov11_0212331C
	mov r1, #0
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0x58]
	mov r2, #0x50
	mov r3, #0x32
	bl ov11_02123598
_0211DEC8:
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_0211DED0
ov11_0211DED0: ; 0x0211DED0
	mov r3, #1
	mov r1, #0
	arm_func_end ov11_0211DED0
_0211DED8:
	add r2, r0, r3, lsl #2
	ldr r2, [r2, #0x1c]
	add r3, r3, #1
	cmp r2, #0
	strne r1, [r2, #0x14]
	cmp r3, #7
	blt _0211DED8
	bx lr

	arm_func_start _ZN18CRangerNetAGBSceneC1EP5CGame
_ZN18CRangerNetAGBSceneC1EP5CGame: ; 0x0211DEF8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN6CSceneC2Ev
	ldr r1, _0211DF14 ; =PTR_LAB_overlay_11_0211df18_overlay_11_021661c8
	mov r0, r4
	str r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211DF14: .word PTR_LAB_overlay_11_0211df18_overlay_11_021661c8
	arm_func_end _ZN18CRangerNetAGBSceneC1EP5CGame

	arm_func_start ov11_0211DF18
ov11_0211DF18: ; 0x0211DF18
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0211DF18

	arm_func_start ov11_0211DF2C
ov11_0211DF2C: ; 0x0211DF2C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0211DF2C

	arm_func_start ov11_0211DF48
ov11_0211DF48: ; 0x0211DF48
	bx lr
	arm_func_end ov11_0211DF48

	arm_func_start ov11_0211DF4C
ov11_0211DF4C: ; 0x0211DF4C
	bx lr
	arm_func_end ov11_0211DF4C

	arm_func_start ov11_0211DF50
ov11_0211DF50: ; 0x0211DF50
	bx lr
	arm_func_end ov11_0211DF50

	arm_func_start ov11_0211DF54
ov11_0211DF54: ; 0x0211DF54
	mov r0, #0x11
	bx lr
	arm_func_end ov11_0211DF54

	arm_func_start ov11_0211DF5C
ov11_0211DF5C: ; 0x0211DF5C
	bx lr
	arm_func_end ov11_0211DF5C

	arm_func_start ov11_0211DF60
ov11_0211DF60: ; 0x0211DF60
	bx lr
	arm_func_end ov11_0211DF60

	arm_func_start ov11_0211DF64
ov11_0211DF64: ; 0x0211DF64
	mov r0, #9
	bx lr
	arm_func_end ov11_0211DF64

	arm_func_start ov11_0211DF6C
ov11_0211DF6C: ; 0x0211DF6C
	stmdb sp!, {r3, lr}
	bl CTRDG_GetAgbGameCode
	mov r2, r0, lsr #8
	ldr r1, _0211DFDC ; =DAT_overlay_11_021661f4
	mov ip, r0, lsr #0x10
	mov lr, r0, lsr #0x18
	ldr r1, [r1]
	mov r3, r0, lsl #0x18
	mov r0, r2, lsl #0x18
	mov r2, ip, lsl #0x18
	orr r0, r3, r0, lsr #8
	and r3, lr, #0xff
	orr r0, r0, r2, lsr #16
	cmp r1, #0
	orr r3, r3, r0
	mov r2, #0
	bls _0211DFD4
	ldr r1, _0211DFE0 ; =DAT_overlay_11_021661f4
	arm_func_end ov11_0211DF6C
_0211DFB4:
	ldr r0, [r1, r2, lsl #2]
	cmp r3, r0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	add r2, r2, #1
	ldr r0, [r1, r2, lsl #2]
	cmp r2, r0
	blo _0211DFB4
_0211DFD4:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211DFDC: .word DAT_overlay_11_021661f4
_0211DFE0: .word DAT_overlay_11_021661f4

	arm_func_start ov11_0211DFE4
ov11_0211DFE4: ; 0x0211DFE4
	stmdb sp!, {r3, lr}
	bl CTRDG_Init
	bl CTRDG_IsAgbCartridge
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #1
	bl CTRDG_Enable
	bl CTRDG_GetAgbMakerCode
	ldr r1, _0211E02C ; =0x00003130
	cmp r0, r1
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_0211DF6C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211E02C: .word 0x00003130
	arm_func_end ov11_0211DFE4

	arm_func_start ov11_0211E030
ov11_0211E030: ; 0x0211E030
	stmdb sp!, {r3, lr}
	bl ov11_0211DFE4
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _0211E058 ; =0x08100004
	add r1, sp, #0
	bl CTRDG_Read32
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211E058: .word 0x08100004
	arm_func_end ov11_0211E030

	arm_func_start ov11_0211E05C
ov11_0211E05C: ; 0x0211E05C
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr ip, _0211E0B4 ; =0x021245A4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	ldr r3, _0211E0B8 ; =ov11_02124578
	str ip, [sp]
	add r0, r6, #0x108
	mov r1, #4
	mov r2, #0x88
	bl __cxa_vec_ctor
	str r5, [r6, #0x72c]
	cmp r4, #0
	mov r0, r6
	beq _0211E0A4
	bl thunk_FUN_overlay_11__0211e1e8
	b _0211E0A8
	arm_func_end ov11_0211E05C
_0211E0A4:
	bl ov11_0211E0E8
_0211E0A8:
	mov r0, r6
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0211E0B4: .word ov11_021245A4
_0211E0B8: .word ov11_02124578

	arm_func_start ov11_0211E0BC
ov11_0211E0BC: ; 0x0211E0BC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_0211F52C
	ldr r3, _0211E0E4 ; =0x021245A4
	add r0, r4, #0x108
	mov r1, #4
	mov r2, #0x88
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211E0E4: .word ov11_021245A4
	arm_func_end ov11_0211E0BC

	arm_func_start ov11_0211E0E8
ov11_0211E0E8: ; 0x0211E0E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_0211E1E8
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211E10C
	ldr r1, [r4, #0x72c]
	bl ov11_021302D8
	arm_func_end ov11_0211E0E8
_0211E10C:
	str r0, [r4, #0x718]
	ldr r0, _0211E1D0 ; =0x000004E4
	bl _Znwm
	cmp r0, #0
	beq _0211E130
	ldr r1, [r4, #0x72c]
	ldr r2, [r4, #0x718]
	mov r3, r4
	bl ov11_021304DC
_0211E130:
	str r0, [r4, #0x714]
	mov r0, #0x198
	bl _Znwm
	cmp r0, #0
	beq _0211E14C
	mov r1, r4
	bl ov11_0212D97C
_0211E14C:
	str r0, [r4, #0x71c]
	mov r0, #0x3ec
	bl _Znwm
	cmp r0, #0
	beq _0211E16C
	ldr r1, [r4, #0x72c]
	mov r2, r4
	bl ov11_0212CE58
_0211E16C:
	mov r1, #0
	str r0, [r4, #0x720]
	mov r0, r4
	mov r2, r1
	bl ov11_02124038
	mov r1, #0
	ldr r0, _0211E1D4 ; =MAIN_BSS_0210CA6C
	strh r1, [r4, #2]
	ldr r1, [r0]
	mov r0, #4
	str r1, [r4, #0x44]
	bl _Znwm
	cmp r0, #0
	beq _0211E1AC
	ldr r1, _0211E1D8 ; =s_data_message_etc_place_name_overlay_11_02166300
	bl sub_02021404
_0211E1AC:
	str r0, [r4, #8]
	ldr r0, [r4, #0x364]
	mov r1, #0
	add r0, r4, r0, lsl #2
	str r1, [r0, #0x350]
	sub r0, r1, #1
	str r0, [r4, #0x59c]
	str r1, [r4, #0xec]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211E1D0: .word 0x000004E4
_0211E1D4: .word MAIN_BSS_0210CA6C
_0211E1D8: .word s_data_message_etc_place_name_overlay_11_02166300

	arm_func_start thunk_FUN_overlay_11__0211e1e8
thunk_FUN_overlay_11__0211e1e8: ; 0x0211E1DC
	ldr ip, _0211E1E4 ; =ov11_0211E1E8
	bx ip
	.align 2, 0
_0211E1E4: .word ov11_0211E1E8
	arm_func_end thunk_FUN_overlay_11__0211e1e8

	arm_func_start ov11_0211E1E8
ov11_0211E1E8: ; 0x0211E1E8
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r4, r0
	strh r2, [r4]
	str r2, [r4, #0xc]
	str r2, [r4, #0x10]
	str r2, [r4, #0xa8]
	str r2, [r4, #0xac]
	str r2, [r4, #0xb0]
	str r2, [r4, #0xb4]
	mov r1, r2
	arm_func_end ov11_0211E1E8
_0211E214:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0xc4]
	cmp r2, #3
	blt _0211E214
	str r1, [r4, #0x38]
	str r1, [r4, #0x718]
	str r1, [r4, #0x714]
	str r1, [r4, #0x71c]
	str r1, [r4, #0x720]
	str r1, [r4, #0x724]
	mov r0, #0x64
	bl _Znam
	str r0, [r4, #0x14]
	mov r0, #0x64
	bl _Znam
	str r0, [r4, #0x1c]
	mov r0, #0x64
	bl _Znam
	mov r1, #0
	str r0, [r4, #0x20]
	mov r0, r4
	mov r2, r1
	bl ov11_02124038
	mov r2, #0
	strh r2, [r4, #2]
	str r2, [r4, #0x44]
	str r2, [r4, #8]
	ldr r1, [r4, #0x364]
	ldr r0, _0211E2E8 ; =0x0000300C
	add r1, r4, r1, lsl #2
	str r2, [r1, #0x350]
	sub r1, r2, #1
	str r1, [r4, #0x59c]
	bl _Znwm
	cmp r0, #0
	beq _0211E2AC
	bl sub_0201100C
_0211E2AC:
	str r0, [r4, #0x620]
	bl sub_0201105C
	mov r1, #0
	str r1, [r4, #0xec]
	str r1, [r4, #0x700]
	str r1, [r4, #0x364]
	mov r0, #0x74
	str r1, [r4, #0x708]
	bl _Znwm
	cmp r0, #0
	beq _0211E2E0
	mov r1, #1
	bl sub_02027FE8
_0211E2E0:
	str r0, [r4, #0x728]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211E2E8: .word 0x0000300C

	arm_func_start ov11_0211E2EC
ov11_0211E2EC: ; 0x0211E2EC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x724]
	cmp r0, #0
	beq _0211E304
	bl ov11_0211CE20
	arm_func_end ov11_0211E2EC
_0211E304:
	mov r0, r4
	bl ov11_02123FB0
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldrh r0, [r4]
	cmp r0, #0x10
	addls pc, pc, r0, lsl #2
	b _0211E404
_0211E324: ; jump table
	b _0211E404 ; case 0
	b _0211E368 ; case 1
	b _0211E404 ; case 2
	b _0211E3B0 ; case 3
	b _0211E380 ; case 4
	b _0211E38C ; case 5
	b _0211E398 ; case 6
	b _0211E3A4 ; case 7
	b _0211E3BC ; case 8
	b _0211E3C8 ; case 9
	b _0211E3D4 ; case 10
	b _0211E404 ; case 11
	b _0211E3F4 ; case 12
	b _0211E404 ; case 13
	b _0211E3E0 ; case 14
	b _0211E374 ; case 15
	b _0211E404 ; case 16
_0211E368:
	mov r0, r4
	bl ov11_021202E4
	b _0211E404
_0211E374:
	mov r0, r4
	bl ov11_02120EBC
	b _0211E404
_0211E380:
	mov r0, r4
	bl ov11_02120DA8
	b _0211E404
_0211E38C:
	mov r0, r4
	bl ov11_02120A80
	b _0211E404
_0211E398:
	mov r0, r4
	bl ov11_02120AE8
	b _0211E404
_0211E3A4:
	mov r0, r4
	bl ov11_02120C1C
	b _0211E404
_0211E3B0:
	mov r0, r4
	bl ov11_021204B0
	b _0211E404
_0211E3BC:
	mov r0, r4
	bl ov11_02121A08
	b _0211E404
_0211E3C8:
	mov r0, r4
	bl ov11_02121168
	b _0211E404
_0211E3D4:
	mov r0, r4
	bl ov11_02121214
	b _0211E404
_0211E3E0:
	ldr r2, _0211E410 ; =0x0000FFFF
	mov r0, r4
	mov r1, #0xd
	bl ov11_02124038
	b _0211E404
_0211E3F4:
	ldr r2, _0211E410 ; =0x0000FFFF
	mov r0, r4
	mov r1, #0xb
	bl ov11_02124038
_0211E404:
	mov r0, r4
	bl ov11_02121A7C
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211E410: .word 0x0000FFFF

	arm_func_start ov11_0211E414
ov11_0211E414: ; 0x0211E414
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x724]
	cmp r0, #0
	beq _0211E42C
	bl thunk_FUN_overlay_11__0211d02c
	arm_func_end ov11_0211E414
_0211E42C:
	mov r0, r4
	bl ov11_02121B38
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0211E438
ov11_0211E438: ; 0x0211E438
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x724]
	cmp r0, #0
	beq _0211E450
	bl thunk_FUN_overlay_11__0211d8c4
	arm_func_end ov11_0211E438
_0211E450:
	mov r0, r4
	bl ov11_02123B98
	mov r0, r4
	bl ov11_02122C60
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0211E464
ov11_0211E464: ; 0x0211E464
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x44
	mov sl, r0
	mov r0, #0
	str r0, [sl, #0x40]
	ldr r2, _0211EF20 ; =0x04001000
	strb r0, [sl, #0x3c]
	ldr r1, [r2]
	ldr r0, _0211EF24 ; =0xFFCFFFEF
	and r0, r1, r0
	orr r0, r0, #0x10
	orr r0, r0, #0x100000
	str r0, [r2]
	ldr r0, [sl, #0x10]
	cmp r0, #0
	beq _0211E4B0
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [sl, #0x10]
	arm_func_end ov11_0211E464
_0211E4B0:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211E4EC
	ldr r2, [sl, #0x72c]
	mov r1, #0x40
	str r1, [sp]
	ldrb r3, [sl, #0x3c]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add r1, r1, #0x400
	ldr r2, [r2, #0x4a8]
	add r1, r1, r3, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0211E4EC:
	str r0, [sl, #0x10]
	mov r0, #0
	str r0, [sp]
	ldr r2, [sl, #0x40]
	ldr r0, [sl, #0x10]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0211EF28 ; =s_data_menu_overlay_11_02166320
	ldr r2, _0211EF2C ; =s_ma005_64_overlay_11_0216632c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [sl, #0x40]
	mov r1, #0
	add r0, r2, r0
	str r0, [sl, #0x40]
	str r1, [sp]
	ldr r0, [sl, #0x10]
	mov r2, #0xf0
	mov r3, #0x10
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r3, #0
	str r0, [r2]
	str r3, [sp]
	ldr r0, [sl, #0x14]
	mov r1, #0x20
	ldr r0, [r0]
	mov r2, r1
	bl sub_0200EBF4
	ldr r0, [sl, #0x10]
	add sb, sl, #0x108
	ldr r0, [r0, #0x24]
	mov r8, #0
	str r0, [sl, #0x5f8]
	ldr r0, [sl, #0x10]
	ldrb r1, [sl, #0x3c]
	ldr r0, [r0, #0x30]
	mov r7, #0x40
	add r0, r1, r0
	strb r0, [sl, #0x3c]
	add r6, sp, #4
	mov r5, #1
	mov fp, #0x44
_0211E598:
	mov r0, fp
	bl _Znwm
	cmp r0, #0
	beq _0211E5D0
	ldr r2, [sl, #0x72c]
	mov r3, #1
	str r7, [sp]
	ldrb r4, [sl, #0x3c]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add r1, r1, #0x400
	ldr r2, [r2, #0x4a8]
	add r1, r1, r4, lsl #3
	bl sub_0200ECD0
_0211E5D0:
	add r1, sl, r8, lsl #2
	str r0, [r1, #0x48]
	ldr r1, _0211EF30 ; =s_rn001_02d_overlay_11_02166338
	mov r0, r6
	add r2, r8, #0xa
	bl OS_SPrintf
	str r5, [sp]
	ldr r4, [sl, #0x40]
	add r0, sl, r8, lsl #2
	mov r3, r4, asr #4
	add r3, r4, r3, lsr #27
	ldr r0, [r0, #0x48]
	ldr r1, _0211EF28 ; =s_data_menu_overlay_11_02166320
	mov r2, r6
	mov r3, r3, asr #5
	bl sub_0200F168
	mov r4, r0
	cmp r8, #4
	bge _0211E654
	ldr r3, [sl, #0x40]
	mov r0, sb
	mov r2, r8
	add r1, sl, #0x48
	bl ov11_021245A8
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x48]
	ldrb r1, [sl, #0x3c]
	ldr r0, [r0, #0x30]
	add r0, r1, r0
	strb r0, [sl, #0x3c]
	ldr r0, [sl, #0x40]
	add r0, r0, r4
	str r0, [sl, #0x40]
_0211E654:
	add r8, r8, #1
	cmp r8, #0x16
	add sb, sb, #0x88
	blt _0211E598
	ldr r0, [sl, #0xc]
	cmp r0, #0
	beq _0211E67C
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [sl, #0xc]
_0211E67C:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211E6B8
	ldr r2, [sl, #0x72c]
	mov r1, #0x40
	str r1, [sp]
	ldrb r3, [sl, #0x3c]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add r1, r1, #0x400
	ldr r2, [r2, #0x4a8]
	add r1, r1, r3, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0211E6B8:
	str r0, [sl, #0xc]
	mov r0, #1
	str r0, [sp]
	ldr r2, [sl, #0x40]
	ldr r0, [sl, #0xc]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0211EF28 ; =s_data_menu_overlay_11_02166320
	ldr r2, _0211EF34 ; =s_rn001_00_overlay_11_02166344
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sl, #0x40]
	mov r8, #1
	add r0, r1, r0
	str r0, [sl, #0x40]
	mov r7, #0x18
	mov r6, #0
	mov r5, #3
	mov r4, #0x80
_0211E704:
	str r6, [sp]
	ldr r0, [sl, #0xc]
	mov r1, r5
	mov r2, r4
	rsb r3, r7, #0x78
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	add r1, sl, r8, lsl #2
	str r0, [r2, r8, lsl #2]
	ldr r0, [sl, #0xc]
	add r8, r8, #1
	ldr r0, [r0, #0x24]
	cmp r8, #5
	str r0, [r1, #0x60c]
	add r7, r7, #0x18
	blt _0211E704
	mov r0, #0
	str r0, [sp]
	ldr r0, [sl, #0xc]
	mov r1, #5
	mov r2, #0x94
	mov r3, #0xb5
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x14]
	str r1, [sp]
	ldr r0, [sl, #0xc]
	mov r1, #0xa
	mov r2, #0xa4
	mov r3, #0xb5
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #1
	str r0, [r2, #0x18]
	str r1, [sp]
	ldr r0, [sl, #0xc]
	mov r1, #2
	mov r2, #0x80
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x24]
	str r1, [sp]
	ldr r0, [sl, #0xc]
	mov r2, #0x50
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x30]
	str r1, [sp]
	ldr r0, [sl, #0xc]
	mov r1, #1
	mov r2, #0xb0
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x34]
	str r1, [sp]
	ldr r0, [sl, #0xc]
	mov r1, #0x17
	mov r2, #0xb0
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x50]
	str r1, [sp]
	ldr r0, [sl, #0xc]
	mov r1, #0x18
	mov r2, #0x50
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #2
	str r0, [r2, #0x54]
	str r1, [sp]
	ldr r0, [sl, #0xc]
	mov r1, #0x13
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	ldr r1, [sl, #0x14]
	mov r3, #1
	str r0, [r1, #0x58]
	ldr r0, [sl, #0x14]
	mov r1, #0
	ldr r0, [r0, #0x58]
	mov r2, r1
	strb r3, [r0, #0x28]
	ldr r0, [sl, #0x14]
	ldr r0, [r0, #0x58]
	bl sub_0200EB34
	mov r0, #0
	str r0, [sp]
	mov r2, #0xc
	ldr r0, [sl, #0xc]
	mov r3, r2
	mov r1, #6
	bl sub_0200F4FC
	ldr r1, [sl, #0x14]
	mov r3, #0
	str r0, [r1, #0x1c]
	ldr r0, [sl, #0xc]
	mov r2, #0xc
	ldr r0, [r0, #0x24]
	mov r1, #0xb
	str r0, [sl, #0x5fc]
	str r3, [sp]
	ldr r0, [sl, #0xc]
	mov r3, r2
	bl sub_0200F4FC
	ldr r1, [sl, #0x14]
	mov r4, #0
	str r0, [r1, #0x20]
	ldr r0, [sl, #0xc]
	mov r6, r4
	ldr r0, [r0, #0x24]
	mov r5, #0x10
	str r0, [sl, #0x600]
_0211E8F0:
	str r6, [sp]
	ldr r0, [sl, #0xc]
	mov r2, r5
	mov r3, r6
	add r1, r4, #0x11
	bl sub_0200F4FC
	add r1, sl, r4, lsl #2
	add r4, r4, #1
	str r0, [r1, #0xa0]
	cmp r4, #2
	blt _0211E8F0
	mov r6, sl
	add r5, sl, #0x108
	mov r7, #0
	add r4, sl, #0xa0
_0211E92C:
	ldr r1, [sl, #0xc]
	mov r0, r5
	bl ov11_02124604
	add r7, r7, #1
	str r4, [r6, #0x120]
	cmp r7, #4
	add r5, r5, #0x88
	add r6, r6, #0x88
	blt _0211E92C
	ldr r0, [sl, #0xc]
	ldrb r1, [sl, #0x3c]
	ldr r0, [r0, #0x30]
	add r0, r1, r0
	strb r0, [sl, #0x3c]
	ldr r0, [sl, #0xa8]
	cmp r0, #0
	beq _0211E97C
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [sl, #0xa8]
_0211E97C:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211E9B8
	ldr r2, [sl, #0x72c]
	mov r1, #0x40
	str r1, [sp]
	ldrb r3, [sl, #0x3c]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add r1, r1, #0x400
	ldr r2, [r2, #0x4a8]
	add r1, r1, r3, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0211E9B8:
	str r0, [sl, #0xa8]
	ldr r2, [sl, #0x40]
	mov r1, #1
	mov r0, r2, asr #4
	str r1, [sp]
	add r0, r2, r0, lsr #27
	mov r4, r0, asr #5
	ldr r0, [sl, #0xa8]
	ldr r1, _0211EF28 ; =s_data_menu_overlay_11_02166320
	ldr r2, _0211EF38 ; =s_rn001_01_overlay_11_02166350
	mov r3, r4
	bl sub_0200F168
	ldr r1, [sl, #0x40]
	add r0, r1, r0
	str r0, [sl, #0x40]
	ldr r0, [sl, #0xa8]
	bl sub_0200F398
	mov r0, #1
	str r0, [sl, #0x4ac]
	mov r1, #0
	str r1, [sp]
	ldr r0, [sl, #0xa8]
	mov r2, #0x50
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x28]
	str r1, [sp]
	ldr r0, [sl, #0xa8]
	mov r1, #1
	mov r2, #0xb0
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x2c]
	str r1, [sp]
	ldr r0, [sl, #0xa8]
	mov r1, #2
	mov r2, #0x80
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x40]
	str r1, [sp]
	ldr r0, [sl, #0xa8]
	mov r1, #3
	mov r2, #0x80
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r1, [sl, #0x14]
	str r0, [r1, #0x44]
	ldr r0, [sl, #0xac]
	cmp r0, #0
	beq _0211EAA8
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [sl, #0xac]
_0211EAA8:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211EAE4
	ldr r2, [sl, #0x72c]
	mov r1, #0x40
	str r1, [sp]
	ldrb r3, [sl, #0x3c]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add r1, r1, #0x400
	ldr r2, [r2, #0x4a8]
	add r1, r1, r3, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0211EAE4:
	str r0, [sl, #0xac]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0xac]
	ldr r1, _0211EF28 ; =s_data_menu_overlay_11_02166320
	ldr r2, _0211EF3C ; =s_rn001_02_overlay_11_0216635c
	mov r3, r4
	bl sub_0200F168
	mov r1, #0
	str r1, [sp]
	ldr r0, [sl, #0xac]
	mov r2, #0x50
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x38]
	str r1, [sp]
	ldr r0, [sl, #0xac]
	mov r1, #1
	mov r2, #0xb0
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x3c]
	str r1, [sp]
	ldr r0, [sl, #0xac]
	mov r1, #2
	mov r2, #0x80
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x48]
	str r1, [sp]
	ldr r0, [sl, #0xac]
	mov r1, #3
	mov r2, #0x80
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x4c]
	str r1, [sp]
	ldr r0, [sl, #0xac]
	mov r1, #4
	mov r2, #0xb0
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r2, [sl, #0x14]
	mov r1, #0
	str r0, [r2, #0x5c]
	str r1, [sp]
	ldr r0, [sl, #0xac]
	mov r1, #5
	mov r2, #0x50
	mov r3, #0xb4
	bl sub_0200F4FC
	ldr r1, [sl, #0x14]
	str r0, [r1, #0x60]
	ldr r0, _0211EF40 ; =DAT_overlay_11_02166248
	mov r7, #0
	ldrsh r1, [r0, #0x58]
	sub r0, r7, #1
	cmp r1, r0
	beq _0211EC40
	ldr r4, _0211EF44 ; =DAT_overlay_11_021662a0
	mov r6, r7
	mov r5, r7
	mvn r8, #0
_0211EC00:
	str r5, [sp]
	mov r1, r6, lsl #1
	add r0, r4, r6, lsl #1
	ldrsh r3, [r4, r1]
	ldr sb, [sl, #0x14]
	ldrsh r1, [r0, #2]
	ldrsh r2, [r0, #4]
	ldr r0, [sb, r3, lsl #2]
	mov r3, r5
	bl sub_0200EBF4
	add r6, r6, #3
	mov r0, r6, lsl #1
	ldrsh r0, [r4, r0]
	add r7, r7, #1
	cmp r0, r8
	bne _0211EC00
_0211EC40:
	ldr r0, [sl, #0xa8]
	ldrb r1, [sl, #0x3c]
	ldr r0, [r0, #0x30]
	add r1, r1, r0
	strb r1, [sl, #0x3c]
	ldr r0, [sl, #0xb0]
	and r4, r1, #0xff
	cmp r0, #0
	ldr r5, [sl, #0x40]
	beq _0211EC74
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [sl, #0xb0]
_0211EC74:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211ECAC
	ldr r6, [sl, #0x72c]
	mov r2, #0x40
	add r1, r6, #0x24
	add r3, r1, #0x400
	str r2, [sp]
	add r1, r6, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, r4, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0211ECAC:
	str r0, [sl, #0xb0]
	mov r0, #9
	str r0, [sp]
	mov r0, r5, asr #4
	add r3, r5, r0, lsr #27
	ldr r0, [sl, #0xb0]
	ldr r1, _0211EF28 ; =s_data_menu_overlay_11_02166320
	ldr r2, _0211EF48 ; =s_rn001_03_overlay_11_02166368
	mov r3, r3, asr #5
	bl sub_0200F168
	ldr r1, [sl, #0xb0]
	add r5, r5, r0
	ldr r1, [r1, #0x30]
	ldr r0, [sl, #0xb4]
	add r1, r4, r1
	cmp r0, #0
	and r4, r1, #0xff
	beq _0211ED00
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [sl, #0xb4]
_0211ED00:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211ED38
	ldr r6, [sl, #0x72c]
	mov r2, #0x40
	add r1, r6, #0x24
	add r3, r1, #0x400
	str r2, [sp]
	add r1, r6, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, r4, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0211ED38:
	str r0, [sl, #0xb4]
	mov r0, #9
	str r0, [sp]
	mov r0, r5, asr #4
	add r3, r5, r0, lsr #27
	ldr r0, [sl, #0xb4]
	ldr r1, _0211EF28 ; =s_data_menu_overlay_11_02166320
	ldr r2, _0211EF4C ; =s_rn001_04_overlay_11_02166374
	mov r3, r3, asr #5
	bl sub_0200F168
	mov sb, #0
	ldr r7, _0211EF30 ; =s_rn001_02d_overlay_11_02166338
	mov r6, sb
	mov r5, #0x40
	mov fp, #0x44
	mov r4, #9
	add r8, sp, #4
_0211ED7C:
	mov r0, r8
	mov r1, r7
	add r2, sb, #7
	bl OS_SPrintf
	add r0, sl, sb, lsl #2
	ldr r0, [r0, #0xc4]
	cmp r0, #0
	beq _0211EDA8
	bl _Z9Heap_FreePv
	add r0, sl, sb, lsl #2
	str r6, [r0, #0xc4]
_0211EDA8:
	mov r0, fp
	bl _Znwm
	cmp r0, #0
	beq _0211EDE0
	ldr r2, [sl, #0x72c]
	mov r3, #1
	str r5, [sp]
	ldrb ip, [sl, #0x3c]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add r1, r1, #0x400
	ldr r2, [r2, #0x4a8]
	add r1, r1, ip, lsl #3
	bl sub_0200ECD0
_0211EDE0:
	add r1, sl, sb, lsl #2
	str r0, [r1, #0xc4]
	str r4, [sp]
	ldr r2, [sl, #0x40]
	ldr r0, [r1, #0xc4]
	mov r1, r2, asr #4
	add r2, r2, r1, lsr #27
	mov r3, r2, asr #5
	ldr r1, _0211EF28 ; =s_data_menu_overlay_11_02166320
	mov r2, r8
	bl sub_0200F168
	add sb, sb, #1
	cmp sb, #3
	blt _0211ED7C
	mov r0, sl
	bl ov11_0211F904
	mov r0, sl
	bl ov11_0211F96C
	mov r1, #0
	mov r0, sl
	sub r2, r1, #1
	bl ov11_0211FB08
	ldr r0, [sl, #0x724]
	cmp r0, #0
	beq _0211EE50
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [sl, #0x724]
_0211EE50:
	ldr r0, _0211EF50 ; =0x000005F4
	bl _Znwm
	cmp r0, #0
	beq _0211EE6C
	ldr r1, [sl, #0x72c]
	mov r2, sl
	bl ov11_0211CD68
_0211EE6C:
	str r0, [sl, #0x724]
	bl ov11_0211D864
	mov r1, #0
	ldr r0, [sl, #0x724]
	mov r2, r1
	mov r3, r1
	bl ov11_0211D7D4
	mov r0, sl
	mov r1, #0
	bl ov11_02124438
	mov r0, sl
	mov r1, #3
	bl ov11_02123794
	mov r0, #6
	str r0, [sp]
	ldr r0, _0211EF54 ; =0x04001050
	mov r1, #0
	mov r2, #0xc
	mov r3, #0xa
	bl G2x_SetBlendAlpha_
	ldr r0, [sl, #0x72c]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	ldr r0, [sl, #0x72c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020345D4
	ldr r0, [sl, #0x72c]
	mov r1, #0xc6
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020349E8
	ldr r1, [sl, #0x14]
	mov r2, #0
	ldr r1, [r1, #0x14]
	ldr r0, _0211EF58 ; =0x00042680
	str r2, [r1, #0x14]
	ldr r1, [sl, #0x14]
	ldr r1, [r1, #0x18]
	str r2, [r1, #0x14]
	str r0, [sl, #0xb8]
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211EF20: .word 0x04001000
_0211EF24: .word 0xFFCFFFEF
_0211EF28: .word s_data_menu_overlay_11_02166320
_0211EF2C: .word s_ma005_64_overlay_11_0216632c
_0211EF30: .word s_rn001_02d_overlay_11_02166338
_0211EF34: .word s_rn001_00_overlay_11_02166344
_0211EF38: .word s_rn001_01_overlay_11_02166350
_0211EF3C: .word s_rn001_02_overlay_11_0216635c
_0211EF40: .word DAT_overlay_11_02166248
_0211EF44: .word DAT_overlay_11_021662a0
_0211EF48: .word s_rn001_03_overlay_11_02166368
_0211EF4C: .word s_rn001_04_overlay_11_02166374
_0211EF50: .word 0x000005F4
_0211EF54: .word 0x04001050
_0211EF58: .word 0x00042680

	arm_func_start ov11_0211EF5C
ov11_0211EF5C: ; 0x0211EF5C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0xb0]
	bl sub_0200F398
	mov r0, r4
	bl ov11_0211EFB4
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #0xb8]
	ldr r3, _0211EFB0 ; =0x10624DD3
	mov r1, r0, lsr #0x1f
	smull r0, r2, r3, r0
	ldr r0, [r4, #0xb0]
	add r2, r1, r2, asr #6
	mov r1, #0
	mov r3, #0x5c
	bl sub_0200F4FC
	str r0, [r4, #0xbc]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211EFB0: .word 0x10624DD3
	arm_func_end ov11_0211EF5C

	arm_func_start ov11_0211EFB4
ov11_0211EFB4: ; 0x0211EFB4
	ldr ip, _0211EFC0 ; =FUN_0200F6C4
	ldr r0, [r0, #0xb0]
	bx ip
	.align 2, 0
_0211EFC0: .word sub_0200F6C4
	arm_func_end ov11_0211EFB4

	arm_func_start ov11_0211EFC4
ov11_0211EFC4: ; 0x0211EFC4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0xb4]
	bl sub_0200F398
	ldr r0, [r4, #0xb4]
	bl sub_0200F6C4
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #0xb4]
	mov r1, #0
	mov r2, #0x120
	mov r3, #0x5c
	bl sub_0200F4FC
	str r0, [r4, #0xc0]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov11_0211EFC4

	arm_func_start ov11_0211F008
ov11_0211F008: ; 0x0211F008
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, #1
	str r0, [sp]
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0xc4]
	mov r1, #0
	mov r2, #0x80
	mov r3, #0x90
	bl sub_0200F4FC
	add r1, r5, r4, lsl #2
	str r0, [r5, #0xd0]
	ldr r0, [r1, #0xc4]
	bl sub_0200F398
	ldr r0, [r5, #0xd0]
	mov r2, #0
	str r2, [r0, #0x14]
	ldr r0, [r5, #0xd0]
	mov r1, #1
	bl sub_0200EB34
	mov r0, #0
	str r0, [r5, #0xd8]
	str r0, [r5, #0xe8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_0211F008

	arm_func_start ov11_0211F06C
ov11_0211F06C: ; 0x0211F06C
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #0xb8]
	mov r1, #0x7d00
	sub r2, r2, #0x258
	rsb r1, r1, #0
	cmp r2, r1
	ldrle r1, _0211F0B4 ; =0x00042680
	str r2, [r0, #0xb8]
	strle r1, [r0, #0xb8]
	ldr r1, [r0, #0xb8]
	ldr ip, _0211F0B8 ; =0x10624DD3
	mov r2, r1, lsr #0x1f
	smull r3, r1, ip, r1
	add r1, r2, r1, asr #6
	ldr r0, [r0, #0xbc]
	mov r2, #0x5c
	bl sub_0200EB28
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211F0B4: .word 0x00042680
_0211F0B8: .word 0x10624DD3
	arm_func_end ov11_0211F06C

	arm_func_start ov11_0211F0BC
ov11_0211F0BC: ; 0x0211F0BC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_0211EFC4
	ldr r0, [r4, #0xbc]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r4, #0xb8]
	ldr r3, _0211F0F8 ; =0x10624DD3
	mov r2, r0, lsr #0x1f
	smull r0, r1, r3, r0
	ldr r0, [r4, #0xc0]
	add r1, r2, r1, asr #6
	mov r2, #0x5c
	bl sub_0200EB28
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211F0F8: .word 0x10624DD3
	arm_func_end ov11_0211F0BC

	arm_func_start ov11_0211F0FC
ov11_0211F0FC: ; 0x0211F0FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xd8]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0211F260
_0211F114: ; jump table
	b _0211F128 ; case 0
	b _0211F168 ; case 1
	b _0211F1A8 ; case 2
	b _0211F210 ; case 3
	b _0211F23C ; case 4
	arm_func_end ov11_0211F0FC
_0211F128:
	mov r0, #0x3c
	str r0, [r4, #0xe0]
	ldr r0, [r4, #0xd0]
	mov r1, #1
	str r1, [r0, #0x14]
	str r1, [r4, #0xd8]
	str r1, [r4, #0xec]
	mov r2, #0
	mov r1, #0x1000
_0211F14C:
	add r0, r4, r2, lsl #2
	str r1, [r0, #0xf8]
	add r2, r2, #1
	str r1, [r0, #0x100]
	cmp r2, #2
	blt _0211F14C
	b _0211F260
_0211F168:
	ldr r0, [r4, #0xe0]
	sub r0, r0, #1
	str r0, [r4, #0xe0]
	cmp r0, #0
	bgt _0211F260
	mov r1, #2
	mov r0, #0
	mov r2, r0
	str r1, [r4, #0xd8]
	mov r1, #0x1f000
	mov r3, #0x3c000
	bl ov11_021243F8
	str r0, [r4, #0xf0]
	mov r0, #0
	str r0, [r4, #0xe0]
	b _0211F260
_0211F1A8:
	bl ov11_0211F26C
	ldr r0, [r4, #0x14]
	mov r1, #1
	ldr r0, [r0, #0x58]
	str r1, [r0, #0x14]
	ldr r0, [r4, #0xe0]
	add r2, r0, #1
	str r2, [r4, #0xe0]
	cmp r2, #0x3c
	bge _0211F1E8
	mov r0, #0
	ldr r3, [r4, #0xf0]
	mov r1, r0
	mov r2, r2, lsl #0xc
	bl ov11_021243C4
	b _0211F1FC
_0211F1E8:
	mov r0, #3
	str r0, [r4, #0xd8]
	mov r0, #0x3c
	str r0, [r4, #0xe0]
	mov r0, #0x1f000
_0211F1FC:
	mov r1, r0, asr #0xc
	ldr r0, _0211F268 ; =0x04001052
	orr r1, r1, #0x1000
	strh r1, [r0]
	b _0211F260
_0211F210:
	bl ov11_0211F26C
	ldr r0, [r4, #0xe0]
	sub r0, r0, #1
	str r0, [r4, #0xe0]
	cmp r0, #0
	bgt _0211F260
	mov r0, #0
	str r0, [r4, #0xdc]
	mov r0, #4
	str r0, [r4, #0xd8]
	b _0211F260
_0211F23C:
	bl ov11_0211F26C
	mov r0, r4
	bl ov11_0211F3A8
	cmp r0, #0
	bne _0211F260
	mov r0, r4
	bl ov11_0211F32C
	mov r0, #0
	ldmia sp!, {r4, pc}
_0211F260:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211F268: .word 0x04001052

	arm_func_start ov11_0211F26C
ov11_0211F26C: ; 0x0211F26C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xe8]
	ldr ip, _0211F324 ; =0xB60B60B7
	add r0, r0, #4
	smull r1, r2, ip, r0
	add r2, r0, r2
	mov r1, r0, lsr #0x1f
	add r2, r1, r2, asr #7
	mov r3, #0xb4
	smull r1, r2, r3, r2
	sub r2, r0, r1
	mov r1, r2, lsl #0x10
	mov r2, r1, lsr #0x10
	mov r3, r2, lsl #0x10
	smull r1, lr, ip, r3
	mov r1, r3, lsr #0x1f
	add lr, lr, r2, lsl #16
	add lr, r1, lr, asr #8
	mov r2, lr, asr #4
	ldr r1, _0211F328 ; =FX_SinCosTable_
	mov r2, r2, lsl #2
	ldrsh ip, [r1, r2]
	mov r2, #0xa000
	mov r3, #0
	mov r1, ip, asr #0x1f
	mov r1, r1, lsl #0xc
	mov lr, ip, lsl #0xc
	orr r1, r1, ip, lsr #20
	mov ip, lr, lsr #0xc
	orr ip, ip, r1, lsl #20
	add ip, ip, #0x9000
	mov r1, ip, asr #0x1f
	mov r1, r1, lsl #0xc
	str r0, [r4, #0xe8]
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	bl _ll_div
	mov r2, r0
	mov r0, #0x1000000
	mov r1, #0
	mov r3, r2, asr #0x1f
	str r2, [r4, #0xf8]
	bl _ll_div
	str r0, [r4, #0xf8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211F324: .word 0xB60B60B7
_0211F328: .word FX_SinCosTable_
	arm_func_end ov11_0211F26C

	arm_func_start ov11_0211F32C
ov11_0211F32C: ; 0x0211F32C
	mov r1, #0x3c
	str r1, [r0, #0xe0]
	bx lr
	arm_func_end ov11_0211F32C

	arm_func_start ov11_0211F338
ov11_0211F338: ; 0x0211F338
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_0211F26C
	mov r0, #0
	mov r2, r0
	mov r1, #0x1f000
	mov r3, #0x3c000
	bl ov11_021243F8
	ldr r1, [r4, #0xe0]
	mov r3, r0
	sub r2, r1, #1
	str r2, [r4, #0xe0]
	cmp r2, #0
	mov r0, #0
	ble _0211F380
	mov r1, r0
	mov r2, r2, lsl #0xc
	bl ov11_021243C4
	arm_func_end ov11_0211F338
_0211F380:
	mov r1, r0, asr #0xc
	ldr r0, _0211F3A4 ; =0x04001052
	orr r1, r1, #0x1000
	strh r1, [r0]
	ldr r0, [r4, #0xe0]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211F3A4: .word 0x04001052

	arm_func_start ov11_0211F3A8
ov11_0211F3A8: ; 0x0211F3A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xdc]
	cmp r0, #0
	beq _0211F3D0
	cmp r0, #1
	beq _0211F3F0
	cmp r0, #2
	beq _0211F464
	b _0211F524
	arm_func_end ov11_0211F3A8
_0211F3D0:
	mov r0, #0x1000
	str r0, [r4, #0xfc]
	ldr r1, [r4, #0xdc]
	mov r0, #0x14
	add r1, r1, #1
	str r1, [r4, #0xdc]
	str r0, [r4, #0xe0]
	b _0211F524
_0211F3F0:
	ldr r0, [r4, #0xe0]
	sub r0, r0, #1
	str r0, [r4, #0xe0]
	cmp r0, #0
	bgt _0211F524
	mov r0, #0xa000
	mov r1, #0x1000
	mov r2, #0
	mov r3, #0x5000
	bl ov11_021243F8
	mov r1, #0
	str r0, [r4, #0xf0]
	mov r2, r1
	mov r0, #0x1000
	mov r3, #0xc000
	bl ov11_021243F8
	str r0, [r4, #0xf4]
	ldr r1, [r4, #0xdc]
	mov r0, #0
	add r1, r1, #1
	str r1, [r4, #0xdc]
	str r0, [r4, #0xe0]
	str r0, [r4, #0xe4]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xcd
	bl sub_02034C44
	b _0211F524
_0211F464:
	ldr r0, [r4, #0xe0]
	mov r1, #0
	cmp r0, #5
	addlt r0, r0, #1
	strlt r0, [r4, #0xe0]
	ldr r0, [r4, #0xe0]
	ldr r3, [r4, #0xf0]
	mov r2, r0, lsl #0xc
	mov r0, #0xa000
	bl ov11_021243C4
	mov r1, r0, asr #0x1f
	mov r1, r1, lsl #0xc
	orr r1, r1, r0, lsr #20
	mov r0, r0, lsl #0xc
	mov r2, #0xa000
	mov r3, #0
	bl _ll_div
	mov r2, r0
	mov r3, r2, asr #0x1f
	mov r0, #0x1000000
	mov r1, #0
	bl _ll_div
	str r0, [r4, #0xfc]
	ldr r0, [r4, #0xe4]
	mov r1, #0
	cmp r0, #0xc
	addlt r0, r0, #1
	strlt r0, [r4, #0xe4]
	ldr r0, [r4, #0xe4]
	ldr r3, [r4, #0xf4]
	mov r2, r0, lsl #0xc
	mov r0, #0x1000
	bl ov11_021243C4
	mov r1, #0xb0000
	umull r3, r2, r0, r1
	mov r0, r0, asr #0x1f
	mla r2, r0, r1, r2
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #20
	mov r1, r0, asr #0xc
	sub r2, r1, #0x20
	ldr r0, [r4, #0xd0]
	mov r1, #0x80
	bl sub_0200EB28
	ldr r0, [r4, #0xe4]
	cmp r0, #0xc
	movge r0, #0
	ldmgeia sp!, {r4, pc}
_0211F524:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0211F52C
ov11_0211F52C: ; 0x0211F52C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl thunk_FUN_overlay_11__02128b40
	ldr r0, [r4, #0x72c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _0211F570
	beq _0211F568
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov11_0211F52C
_0211F568:
	mov r0, #0
	str r0, [r4, #0xc]
_0211F570:
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _0211F598
	beq _0211F590
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211F590:
	mov r0, #0
	str r0, [r4, #0x10]
_0211F598:
	ldr r5, [r4, #0xa8]
	cmp r5, #0
	beq _0211F5C0
	beq _0211F5B8
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211F5B8:
	mov r0, #0
	str r0, [r4, #0xa8]
_0211F5C0:
	ldr r5, [r4, #0xac]
	cmp r5, #0
	beq _0211F5E8
	beq _0211F5E0
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211F5E0:
	mov r0, #0
	str r0, [r4, #0xac]
_0211F5E8:
	ldr r5, [r4, #0xb0]
	cmp r5, #0
	beq _0211F610
	beq _0211F608
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211F608:
	mov r0, #0
	str r0, [r4, #0xb0]
_0211F610:
	ldr r5, [r4, #0xb4]
	cmp r5, #0
	beq _0211F638
	beq _0211F630
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211F630:
	mov r0, #0
	str r0, [r4, #0xb4]
_0211F638:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0211F650
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x14]
_0211F650:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0211F668
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x1c]
_0211F668:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0211F680
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x20]
_0211F680:
	mov r6, #0
	mov r5, r6
_0211F688:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0x48]
	cmp r7, #0
	beq _0211F6B4
	beq _0211F6AC
	mov r0, r7
	bl sub_0200ED2C
	mov r0, r7
	bl _ZdlPv
_0211F6AC:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x48]
_0211F6B4:
	add r6, r6, #1
	cmp r6, #0x16
	blt _0211F688
	ldr r5, [r4, #0x724]
	cmp r5, #0
	beq _0211F6E8
	beq _0211F6E0
	mov r0, r5
	bl ov11_0211CDBC
	mov r0, r5
	bl _ZdlPv
_0211F6E0:
	mov r0, #0
	str r0, [r4, #0x724]
_0211F6E8:
	mov r7, #0
	mov r5, r7
_0211F6F0:
	add r0, r4, r7, lsl #2
	ldr r6, [r0, #0xc4]
	cmp r6, #0
	beq _0211F71C
	beq _0211F714
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_0211F714:
	add r0, r4, r7, lsl #2
	str r5, [r0, #0xc4]
_0211F71C:
	add r7, r7, #1
	cmp r7, #3
	blt _0211F6F0
	ldr r5, [r4, #0x718]
	cmp r5, #0
	beq _0211F750
	beq _0211F748
	mov r0, r5
	bl ov11_021302F0
	mov r0, r5
	bl _ZdlPv
_0211F748:
	mov r0, #0
	str r0, [r4, #0x718]
_0211F750:
	ldr r5, [r4, #0x714]
	cmp r5, #0
	beq _0211F778
	beq _0211F770
	mov r0, r5
	bl ov11_021304FC
	mov r0, r5
	bl _ZdlPv
_0211F770:
	mov r0, #0
	str r0, [r4, #0x714]
_0211F778:
	ldr r5, [r4, #0x71c]
	cmp r5, #0
	beq _0211F7A0
	beq _0211F798
	mov r0, r5
	bl ov11_0212D9E8
	mov r0, r5
	bl _ZdlPv
_0211F798:
	mov r0, #0
	str r0, [r4, #0x71c]
_0211F7A0:
	ldr r5, [r4, #0x720]
	cmp r5, #0
	beq _0211F7C8
	beq _0211F7C0
	mov r0, r5
	bl ov11_0212CEC0
	mov r0, r5
	bl _ZdlPv
_0211F7C0:
	mov r0, #0
	str r0, [r4, #0x720]
_0211F7C8:
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _0211F7F0
	beq _0211F7E8
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl _ZdlPv
_0211F7E8:
	mov r0, #0
	str r0, [r4, #8]
_0211F7F0:
	ldr r5, [r4, #0x620]
	cmp r5, #0
	beq _0211F818
	beq _0211F810
	mov r0, r5
	bl sub_0201101C
	mov r0, r5
	bl _ZdlPv
_0211F810:
	mov r0, #0
	str r0, [r4, #0x620]
_0211F818:
	mov r7, #0
	mov r5, r7
_0211F820:
	add r0, r4, r7, lsl #2
	ldr r6, [r0, #0x534]
	cmp r6, #0
	beq _0211F84C
	beq _0211F844
	mov r0, r6
	bl sub_02021428
	mov r0, r6
	bl _ZdlPv
_0211F844:
	add r0, r4, r7, lsl #2
	str r5, [r0, #0x534]
_0211F84C:
	add r7, r7, #1
	cmp r7, #8
	blt _0211F820
	mov r7, #0
	mov r5, r7
_0211F860:
	add r0, r4, r7, lsl #2
	ldr r6, [r0, #0x584]
	cmp r6, #0
	beq _0211F88C
	beq _0211F884
	mov r0, r6
	bl sub_0201FCB4
	mov r0, r6
	bl _ZdlPv
_0211F884:
	add r0, r4, r7, lsl #2
	str r5, [r0, #0x584]
_0211F88C:
	add r7, r7, #1
	cmp r7, #2
	ble _0211F860
	ldr r0, [r4, #0x700]
	cmp r0, #0
	beq _0211F8B0
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x700]
_0211F8B0:
	ldr r5, [r4, #0x708]
	cmp r5, #0
	beq _0211F8D8
	beq _0211F8D0
	mov r0, r5
	bl ov11_0212F42C
	mov r0, r5
	bl _ZdlPv
_0211F8D0:
	mov r0, #0
	str r0, [r4, #0x708]
_0211F8D8:
	ldr r5, [r4, #0x728]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	beq _0211F8F8
	mov r0, r5
	bl sub_02028054
	mov r0, r5
	bl _ZdlPv
_0211F8F8:
	mov r0, #0
	str r0, [r4, #0x728]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov11_0211F904
ov11_0211F904: ; 0x0211F904
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, #0
	mov r4, r0
	add sb, r4, #0x108
	mov r7, r8
	mov r6, r8
	mvn r5, #0
	arm_func_end ov11_0211F904
_0211F920:
	mov r0, sb
	mov r1, r7
	bl ov11_02124EBC
	mov r0, sb
	mov r1, r6
	bl ov11_021248EC
	add r0, r4, r8, lsl #2
	add r8, r8, #1
	str r5, [r0, #0x328]
	cmp r8, #4
	add sb, sb, #0x88
	blt _0211F920
	ldr r1, [r4, #0x364]
	mov r0, r4
	add r2, r4, r1, lsl #2
	mov r1, #0
	str r1, [r2, #0x33c]
	bl ov11_02124370
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov11_0211F96C
ov11_0211F96C: ; 0x0211F96C
	mov r3, #9
	mov r2, #0
	arm_func_end ov11_0211F96C
_0211F974:
	ldr r1, [r0, #0x14]
	ldr r1, [r1, r3, lsl #2]
	add r3, r3, #1
	str r2, [r1, #0x14]
	cmp r3, #0x18
	ble _0211F974
	bx lr

	arm_func_start ov11_0211F990
ov11_0211F990: ; 0x0211F990
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, #0
	mov sb, r0
	mov r8, r6
	add r5, sb, #0x108
	arm_func_end ov11_0211F990
_0211F9A4:
	ldr r1, _0211FB04 ; =DAT_overlay_11_02166274
	mov r0, sb
	ldr r1, [r1, r8, lsl #2]
	mov r7, #0
	bl ov11_021202CC
	cmp r0, #0
	bne _0211FACC
	cmp r8, #3
	addls pc, pc, r8, lsl #2
	b _0211FA3C
_0211F9CC: ; jump table
	b _0211F9DC ; case 0
	b _0211F9F8 ; case 1
	b _0211FA14 ; case 2
	b _0211FA30 ; case 3
_0211F9DC:
	mov r0, sb
	bl ov11_02120150
	cmp r0, #0
	movlt r0, r7
	movge r7, r0
	movge r0, #1
	b _0211FA40
_0211F9F8:
	mov r0, sb
	bl ov11_02120178
	cmp r0, #0
	movlt r0, r7
	movge r7, r0
	movge r0, #1
	b _0211FA40
_0211FA14:
	mov r0, sb
	bl ov11_02120248
	cmp r0, #0
	movlt r0, r7
	movge r7, r0
	movge r0, #1
	b _0211FA40
_0211FA30:
	mov r7, #3
	mov r0, #1
	b _0211FA40
_0211FA3C:
	mov r0, #1
_0211FA40:
	cmp r0, #0
	beq _0211FACC
	mov r0, sb
	bl ov11_02124054
	mov sl, r0
	mov r0, sb
	bl ov11_02124094
	mov fp, r0
	mov r0, sb
	mov r1, sl
	mov r2, fp
	bl ov11_02124260
	mov r0, #0x88
	mul r4, sl, r0
	ldr r1, _0211FB04 ; =DAT_overlay_11_02166274
	add r0, r5, r4
	ldr r1, [r1, r8, lsl #2]
	bl ov11_02124820
	mov r1, r7
	add r0, r5, r4
	bl ov11_02124730
	add r0, r5, r4
	mov r1, #0
	mov r2, #1
	bl ov11_02124680
	mov r1, r6, lsr #0x1f
	rsb r0, r1, r6, lsl #31
	adds r0, r1, r0, ror #31
	add r0, r5, r4
	mov r1, fp
	beq _0211FAC4
	bl ov11_02124A6C
	b _0211FAC8
_0211FAC4:
	bl ov11_02124B10
_0211FAC8:
	add r6, r6, #1
_0211FACC:
	add r8, r8, #1
	cmp r8, #4
	blt _0211F9A4
	ldr r0, [sb, #0x14]
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0, #0x14]
	ldr r0, [sb, #0x14]
	ldr r0, [r0, #0x18]
	str r1, [r0, #0x14]
	ldr r0, [sb, #0x14]
	ldr r0, [r0, #0x24]
	str r1, [r0, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211FB04: .word DAT_overlay_11_02166274

	arm_func_start ov11_0211FB08
ov11_0211FB08: ; 0x0211FB08
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x710]
	cmp r0, #0
	moveq r1, #0
	cmp r1, #0
	beq _0211FB38
	cmp r1, #1
	beq _0211FB5C
	cmp r1, #2
	beq _0211FBA0
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0211FB08
_0211FB38:
	ldr r0, [r4, #0x14]
	mov r1, #0
	ldr r0, [r0, #0x1c]
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0x20]
	str r1, [r0, #0x14]
	str r1, [r4, #0x710]
	ldmia sp!, {r4, pc}
_0211FB5C:
	ldr r0, [r4, #0x14]
	mov r3, #1
	ldr r0, [r0, #0x1c]
	mov r1, #0
	str r3, [r0, #0x14]
	ldr r0, [r4, #0x14]
	cmp r2, #0
	ldr r0, [r0, #0x20]
	str r1, [r0, #0x14]
	bge _0211FB8C
	bl DWC_GetLinkLevel
	mov r2, r0
_0211FB8C:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x5fc]
	rsb r2, r2, #9
	bl sub_0200F628
	ldmia sp!, {r4, pc}
_0211FBA0:
	cmp r2, #0
	bge _0211FBB0
	bl WM_GetLinkLevel
	mov r2, r0
_0211FBB0:
	ldr r0, [r4, #0x14]
	mov r3, #0
	ldr r0, [r0, #0x1c]
	mov r1, #1
	str r3, [r0, #0x14]
	ldr r0, [r4, #0x14]
	rsb r2, r2, #0xe
	ldr r0, [r0, #0x20]
	str r1, [r0, #0x14]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x600]
	bl sub_0200F628
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0211FBE4
ov11_0211FBE4: ; 0x0211FBE4
	stmdb sp!, {r3, lr}
	mov r3, r0
	cmp r1, #3
	beq _0211FC08
	cmp r1, #4
	beq _0211FC1C
	cmp r1, #5
	beq _0211FC40
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0211FBE4
_0211FC08:
	ldr r0, [r3, #0x14]
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}
_0211FC1C:
	ldr r0, [r3, #0x14]
	mov r1, #1
	ldr r0, [r0]
	mov r2, #0
	str r1, [r0, #0x14]
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x5f8]
	bl sub_0200F628
	ldmia sp!, {r3, pc}
_0211FC40:
	ldr r0, [r3, #0x14]
	mov r2, #1
	ldr r0, [r0]
	str r2, [r0, #0x14]
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x5f8]
	bl sub_0200F628
	ldmia sp!, {r3, pc}

	arm_func_start ov11_0211FC60
ov11_0211FC60: ; 0x0211FC60
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov sb, #0
	str sb, [r4, #0x4b4]
	ldr r0, [r4, #0x364]
	sub r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x350]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02120134
_0211FC90: ; jump table
	b _0211FCA4 ; case 0
	b _0211FD88 ; case 1
	b _0211FEC8 ; case 2
	b _0211FF94 ; case 3
	b _02120060 ; case 4
	arm_func_end ov11_0211FC60
_0211FCA4:
	mvn r0, #0
	mov sl, sb
	mov r8, sb
	add r6, r4, #0x108
	str r0, [sp, #0xc]
_0211FCB8:
	ldr r0, _02120140 ; =DAT_overlay_11_02166248
	ldr r0, [r0, sl, lsl #2]
	cmp r0, #6
	beq _0211FCD4
	cmp r0, #7
	beq _0211FCF0
	b _0211FD08
_0211FCD4:
	mov r0, r4
	bl ov11_02120170
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq _0211FD74
	mov sb, #3
	b _0211FD08
_0211FCF0:
	ldr r0, [r4, #0x72c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x5dc]
	cmp r0, #0
	beq _0211FD74
	mov sb, #4
_0211FD08:
	mov r0, r4
	bl ov11_02124054
	mov r7, r0
	mov r0, r4
	bl ov11_02124094
	mov fp, r0
	mov r0, r4
	mov r1, r7
	mov r2, fp
	bl ov11_02124260
	mov r0, #0x88
	mul r5, r7, r0
	ldr r1, _02120140 ; =DAT_overlay_11_02166248
	add r0, r6, r5
	ldr r1, [r1, sl, lsl #2]
	bl ov11_02124820
	add r0, r6, r5
	mov r1, sb
	bl ov11_02124730
	add r0, r6, r5
	mov r1, #0
	mov r2, #1
	bl ov11_02124680
	add r0, r6, r5
	mov r1, fp
	mov r2, r8
	bl ov11_02124BB0
_0211FD74:
	add sl, sl, #1
	cmp sl, #2
	add r8, r8, #0x5000
	blo _0211FCB8
	b _02120134
_0211FD88:
	mvn r0, #0
	mov sl, sb
	mov r8, sb
	add r6, r4, #0x108
	str r0, [sp, #0x10]
_0211FD9C:
	ldr r0, _02120144 ; =DAT_overlay_11_0216625c
	ldr r1, [r0, sl, lsl #2]
	mov r0, r4
	bl ov11_021202CC
	cmp r0, #0
	bne _0211FEB4
	ldr r0, _02120144 ; =DAT_overlay_11_0216625c
	ldr r1, [r0, sl, lsl #2]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	cmp r1, #1
	str r0, [sp, #4]
	beq _0211FDE8
	cmp r1, #2
	beq _0211FE00
	cmp r1, #3
	beq _0211FE1C
	b _0211FE34
_0211FDE8:
	mov r0, #2
	mov sb, #0
	str r0, [sp, #8]
	mov r0, sb
	str r0, [sp, #4]
	b _0211FE34
_0211FE00:
	mov r0, r4
	bl ov11_021201A8
	mov sb, r0
	ldr r0, [sp, #0x10]
	cmp sb, r0
	beq _0211FEB4
	b _0211FE34
_0211FE1C:
	mov r0, r4
	bl ov11_021201F8
	mov sb, r0
	ldr r0, [sp, #0x10]
	cmp sb, r0
	beq _0211FEB4
_0211FE34:
	mov r0, r4
	bl ov11_02124054
	mov r7, r0
	mov r0, r4
	bl ov11_02124094
	mov fp, r0
	mov r0, r4
	mov r1, r7
	mov r2, fp
	bl ov11_02124260
	mov r0, #0x88
	mul r5, r7, r0
	ldr r1, _02120144 ; =DAT_overlay_11_0216625c
	add r0, r6, r5
	ldr r1, [r1, sl, lsl #2]
	bl ov11_02124820
	add r0, r6, r5
	mov r1, sb
	bl ov11_02124730
	ldr r1, [sp, #8]
	add r0, r6, r5
	mov r2, #1
	bl ov11_02124680
	ldr r0, [sp, #4]
	mov r1, fp
	cmp r0, #0
	add r0, r6, r5
	beq _0211FEB0
	mov r2, r8
	bl ov11_02124BB0
	b _0211FEB4
_0211FEB0:
	bl ov11_02124A6C
_0211FEB4:
	add sl, sl, #1
	cmp sl, #3
	add r8, r8, #0x5000
	blo _0211FD9C
	b _02120134
_0211FEC8:
	mov lr, #3
	mov r0, #0xc
	ldr r2, _02120148 ; =0x55555556
	mov ip, sb
	str sb, [r4, #0x4b4]
	mov r5, #1
	mvn sl, #0
	mov r8, sb
	mov r1, lr
	mov r3, r0
_0211FEF0:
	smull r6, r7, r2, ip
	add r7, r7, ip, lsr #31
	smull r6, r7, r1, r7
	sub r7, ip, r6
	mla r6, r7, r3, r4
	str sl, [r6, #0x4b8]
	str r8, [r6, #0x4bc]
	str r8, [r6, #0x4c0]
	add r6, r4, ip, lsl #2
	ldr r6, [r6, #0x638]
	cmp r6, #0
	blt _0211FF74
	beq _0211FF48
	cmp r6, #1
	beq _0211FF38
	cmp r6, #2
	beq _0211FF40
	b _0211FF48
_0211FF38:
	mov fp, #1
	b _0211FF4C
_0211FF40:
	mov fp, #2
	b _0211FF4C
_0211FF48:
	mov fp, #0
_0211FF4C:
	smull r7, r6, r2, sb
	add r6, r6, sb, lsr #31
	smull r6, r7, lr, r6
	sub r6, sb, r6
	mla r7, r6, r0, r4
	add r6, ip, #0xb
	str r6, [r7, #0x4b8]
	str fp, [r7, #0x4bc]
	str r5, [r7, #0x4c0]
	add sb, sb, #1
_0211FF74:
	add ip, ip, #1
	cmp ip, #3
	blt _0211FEF0
	mov r0, r4
	mov r1, #0
	mov r2, #1
	bl ov11_021229F0
	b _02120134
_0211FF94:
	mov lr, #3
	mov r0, #0xc
	ldr r2, _02120148 ; =0x55555556
	mov ip, sb
	str sb, [r4, #0x4b4]
	mov r5, #1
	mvn sl, #0
	mov r8, sb
	mov r1, lr
	mov r3, r0
_0211FFBC:
	smull r6, r7, r2, ip
	add r7, r7, ip, lsr #31
	smull r6, r7, r1, r7
	sub r7, ip, r6
	mla r6, r7, r3, r4
	str sl, [r6, #0x4b8]
	str r8, [r6, #0x4bc]
	str r8, [r6, #0x4c0]
	add r6, r4, ip, lsl #2
	ldr r6, [r6, #0x644]
	cmp r6, #0
	blt _02120040
	beq _02120014
	cmp r6, #1
	beq _02120004
	cmp r6, #2
	beq _0212000C
	b _02120014
_02120004:
	mov fp, #1
	b _02120018
_0212000C:
	mov fp, #2
	b _02120018
_02120014:
	mov fp, #0
_02120018:
	smull r7, r6, r2, sb
	add r6, r6, sb, lsr #31
	smull r6, r7, lr, r6
	sub r6, sb, r6
	mla r7, r6, r0, r4
	add r6, ip, #0xe
	str r6, [r7, #0x4b8]
	str fp, [r7, #0x4bc]
	str r5, [r7, #0x4c0]
	add sb, sb, #1
_02120040:
	add ip, ip, #1
	cmp ip, #3
	blt _0211FFBC
	mov r0, r4
	mov r1, #0
	mov r2, #1
	bl ov11_021229F0
	b _02120134
_02120060:
	mov fp, sb
	mov sl, sb
	mov r8, sb
	add r6, r4, #0x108
_02120070:
	add r0, r4, sl, lsl #2
	ldr r0, [r0, #0x62c]
	mov r1, #0
	cmp r0, #0
	beq _021200A4
	cmp r0, #1
	beq _0212009C
	cmp r0, #2
	moveq r1, #1
	moveq sb, #0
	b _021200A4
_0212009C:
	mov sb, #1
	mov r1, sb
_021200A4:
	cmp r1, #0
	beq _02120128
	mov r0, r4
	bl ov11_02124054
	mov r7, r0
	mov r0, r4
	bl ov11_02124094
	str r0, [sp]
	ldr r2, [sp]
	mov r0, r4
	mov r1, r7
	bl ov11_02124260
	mov r0, #0x88
	mul r5, r7, r0
	ldr r1, _0212014C ; =DAT_overlay_11_02166250
	add r0, r6, r5
	ldr r1, [r1, sl, lsl #2]
	bl ov11_02124820
	add r0, r6, r5
	mov r1, sb
	bl ov11_02124730
	cmp sb, #1
	moveq r2, #1
	movne r2, #0
	add r0, r6, r5
	mov r1, #0
	bl ov11_02124680
	ldr r1, [sp]
	add r0, r6, r5
	mov r2, r8
	bl ov11_02124BB0
	add r8, r8, #0x5000
	add fp, fp, #1
_02120128:
	add sl, sl, #1
	cmp sl, #3
	blt _02120070
_02120134:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02120140: .word DAT_overlay_11_02166248
_02120144: .word DAT_overlay_11_0216625c
_02120148: .word 0x55555556
_0212014C: .word DAT_overlay_11_02166250

	arm_func_start ov11_02120150
ov11_02120150: ; 0x02120150
	stmdb sp!, {r4, lr}
	mov r4, #4
	bl ov11_02120170
	mvn r1, #0
	cmp r0, r1
	moveq r4, r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02120150

	arm_func_start ov11_02120170
ov11_02120170: ; 0x02120170
	mov r0, #0
	bx lr
	arm_func_end ov11_02120170

	arm_func_start ov11_02120178
ov11_02120178: ; 0x02120178
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl ov11_021201A8
	mov r4, r0
	mov r0, r5
	bl ov11_021201F8
	mvn r1, #0
	cmp r0, r1
	cmpne r4, #1
	movne r4, r0
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02120178

	arm_func_start ov11_021201A8
ov11_021201A8: ; 0x021201A8
	stmdb sp!, {r4, lr}
	mov r4, #0
	mov r2, #1
	mov lr, r4
	mov ip, r4
	mov r1, r2
	arm_func_end ov11_021201A8
_021201C0:
	add r3, r0, ip, lsl #2
	ldr r3, [r3, #0x638]
	cmp r3, #0
	blt _021201DC
	cmp r3, #1
	moveq r4, r2
	mov lr, r1
_021201DC:
	add ip, ip, #1
	cmp ip, #3
	blt _021201C0
	cmp lr, #0
	mvneq r4, #0
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov11_021201F8
ov11_021201F8: ; 0x021201F8
	stmdb sp!, {r4, lr}
	mov r4, #0
	mov r2, #1
	mov lr, r4
	mov ip, r4
	mov r1, r2
	arm_func_end ov11_021201F8
_02120210:
	add r3, r0, ip, lsl #2
	ldr r3, [r3, #0x644]
	cmp r3, #0
	blt _0212022C
	cmp r3, #1
	moveq r4, r2
	mov lr, r1
_0212022C:
	add ip, ip, #1
	cmp ip, #3
	blt _02120210
	cmp lr, #0
	mvneq r4, #0
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02120248
ov11_02120248: ; 0x02120248
	stmdb sp!, {r3, lr}
	mov lr, #0
	mov ip, lr
	mov r3, lr
	mov r1, #1
	arm_func_end ov11_02120248
_0212025C:
	add r2, r0, r3, lsl #2
	ldr r2, [r2, #0x62c]
	cmp r2, #0
	beq _02120278
	cmp r2, #1
	mov ip, r1
	moveq lr, r1
_02120278:
	add r3, r3, #1
	cmp r3, #3
	blt _0212025C
	cmp ip, #0
	mvneq lr, #0
	mov r0, lr
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02120294
ov11_02120294: ; 0x02120294
	mov r3, #0
	arm_func_end ov11_02120294
_02120298:
	ldr r2, [r0, #0x140]
	cmp r2, #0
	beq _021202B4
	ldr r2, [r0, #0x15c]
	cmp r1, r2
	moveq r0, r3
	bxeq lr
_021202B4:
	add r3, r3, #1
	cmp r3, #4
	add r0, r0, #0x88
	blt _02120298
	mvn r0, #0
	bx lr

	arm_func_start ov11_021202CC
ov11_021202CC: ; 0x021202CC
	stmdb sp!, {r3, lr}
	bl ov11_02120294
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021202CC

	arm_func_start ov11_021202E4
ov11_021202E4: ; 0x021202E4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #2]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r4, pc}
_021202FC: ; jump table
	b _02120310 ; case 0
	b _02120320 ; case 1
	b _021203A4 ; case 2
	b _0212041C ; case 3
	b _0212044C ; case 4
	arm_func_end ov11_021202E4
_02120310:
	mov r0, #0
	str r0, [r4, #0x650]
	mov r0, #1
	strh r0, [r4, #2]
_02120320:
	ldr r1, [r4, #0x650]
	mov r0, #0x14
	mul r2, r1, r0
	ldr r1, _021204A8 ; =MAIN_BSS_020AF5E4
	add r0, r1, r2
	add r1, r1, r2
	bl sub_02010F78
	cmp r0, #0
	beq _02120368
	ldr r1, [r4, #0x650]
	ldr r2, _021204A8 ; =MAIN_BSS_020AF5E4
	mov r0, #0x14
	mla r0, r1, r0, r2
	bl sub_02010FC8
	ldr r1, [r4, #0x650]
	add r1, r4, r1, lsl #2
	str r0, [r1, #0x62c]
	b _02120378
_02120368:
	ldr r0, [r4, #0x650]
	mov r1, #0
	add r0, r4, r0, lsl #2
	str r1, [r0, #0x62c]
_02120378:
	ldr r0, [r4, #0x650]
	add r0, r0, #1
	str r0, [r4, #0x650]
	cmp r0, #3
	ldmltia sp!, {r4, pc}
	mov r0, #0
	str r0, [r4, #0x650]
	mov r0, #2
	strh r0, [r4, #2]
	ldr r0, [r4, #0x620]
	bl sub_020110E8
_021203A4:
	ldr r0, [r4, #0x620]
	ldr r1, [r4, #0x650]
	bl sub_02011188
	add r0, r0, #2
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_021203C0: ; jump table
	b _021203F8 ; case 0
	b _021203DC ; case 1
	ldmia sp!, {r4, pc} ; case 2
	b _021203D0 ; case 3
_021203D0:
	mov r0, #3
	strh r0, [r4, #2]
	ldmia sp!, {r4, pc}
_021203DC:
	ldr r0, [r4, #0x650]
	mvn r1, #0
	add r0, r4, r0, lsl #2
	str r1, [r0, #0x638]
	mov r0, #4
	strh r0, [r4, #2]
	ldmia sp!, {r4, pc}
_021203F8:
	ldr r0, [r4, #0x650]
	mvn ip, #0
	add r3, r4, r0, lsl #2
	mov r0, r4
	add r2, ip, #0x10000
	mov r1, #0x11
	str ip, [r3, #0x638]
	bl ov11_02124038
	ldmia sp!, {r4, pc}
_0212041C:
	ldr r1, [r4, #0x650]
	ldr r0, _021204AC ; =MAIN_BSS_020AF598
	bl sub_02011318
	cmp r0, #0
	ldr r0, [r4, #0x650]
	movne r1, #2
	moveq r1, #1
	add r0, r4, r0, lsl #2
	str r1, [r0, #0x638]
	mov r0, #4
	strh r0, [r4, #2]
	ldmia sp!, {r4, pc}
_0212044C:
	ldr r1, [r4, #0x650]
	add r1, r1, #1
	str r1, [r4, #0x650]
	cmp r1, #6
	bge _02120474
	ldr r0, [r4, #0x620]
	bl sub_020110E8
	mov r0, #2
	strh r0, [r4, #2]
	ldmia sp!, {r4, pc}
_02120474:
	bl ov11_02123EBC
	mov r0, r4
	mov r1, #3
	mov r2, #0
	bl ov11_02124038
	mov r2, #0
	strh r2, [r4, #2]
	ldr r0, [r4, #0x72c]
	mov r1, #0x16
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
	ldmia sp!, {r4, pc}
	.align 2, 0
_021204A8: .word MAIN_BSS_020AF5E4
_021204AC: .word MAIN_BSS_020AF598

	arm_func_start ov11_021204B0
ov11_021204B0: ; 0x021204B0
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrh r1, [r4, #2]
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _02120A78
_021204CC: ; jump table
	b _0212050C ; case 0
	b _0212058C ; case 1
	b _021205DC ; case 2
	b _02120980 ; case 3
	b _02120618 ; case 4
	b _02120670 ; case 5
	b _021206B0 ; case 6
	b _021206F8 ; case 7
	b _02120740 ; case 8
	b _02120848 ; case 9
	b _021208D4 ; case 10
	b _02120918 ; case 11
	b _021209C8 ; case 12
	b _021209EC ; case 13
	b _02120A38 ; case 14
	b _02120A78 ; case 15
	arm_func_end ov11_021204B0
_0212050C:
	bl ov11_02123FB0
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r1, #1
	mov r0, r4
	strh r1, [r4, #2]
	bl ov11_0211F990
	mov r5, #1
	mov r0, r4
	mov r1, #0
	mov r2, #5
	mov r3, #3
	str r5, [sp]
	bl ov11_02122B7C
	mov r1, #0
	mov r0, r4
	mov r3, r1
	mov r2, #5
	bl ov11_02122C18
	mov r0, r4
	mov r1, #0x19
	bl ov11_02123A78
	mov r0, r4
	mov r1, #4
	bl ov11_0211FBE4
	mov r1, #0
	mov r0, r4
	sub r2, r1, #1
	bl ov11_0211FB08
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_0212058C:
	mvn r1, #0
	bl ov11_021242B8
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r4, #0x364]
	mov r0, r4
	bl ov11_02121658
	ldr r1, [r4, #0x364]
	mov r0, r4
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x350]
	bl ov11_02120294
	mov r1, r0
	mov r0, r4
	bl ov11_02123C04
	mov r0, #2
	add sp, sp, #4
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, r6, pc}
_021205DC:
	mov r1, #1
	bl ov11_02121F48
	mov r1, r0
	cmp r1, #4
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	cmp r1, #0
	mov r0, r4
	blt _0212060C
	bl ov11_0212253C
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_0212060C:
	bl ov11_021224E4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_02120618:
	ldr r0, [r4, #0x708]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	bl ov11_0212F46C
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r5, [r4, #0x708]
	cmp r5, #0
	beq _02120660
	beq _02120658
	mov r0, r5
	bl ov11_0212F42C
	mov r0, r5
	bl _ZdlPv
_02120658:
	mov r0, #0
	str r0, [r4, #0x708]
_02120660:
	mov r0, #5
	add sp, sp, #4
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, r6, pc}
_02120670:
	mvn r1, #0
	bl ov11_021242B8
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r4, #0x364]
	mov r0, r4
	sub r1, r1, #1
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x33c]
	mov r2, #0
	bl ov11_021241EC
	mov r0, #6
	add sp, sp, #4
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, r6, pc}
_021206B0:
	mvn r1, #0
	bl ov11_021242B8
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r4, #0x328]
	add r2, r4, #0x108
	mov r0, #0x88
	mla r0, r1, r0, r2
	mov r1, #2
	mov r2, #1
	bl ov11_02124680
	mov r0, r4
	bl ov11_0211FC60
	mov r0, #7
	add sp, sp, #4
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, r6, pc}
_021206F8:
	mvn r1, #0
	bl ov11_021242B8
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r4, #0x364]
	mov r0, r4
	bl ov11_02121658
	mov r0, r4
	mov r1, #1
	bl ov11_021240C0
	mov r1, r0
	mov r0, r4
	bl ov11_02123C04
	mov r0, #8
	add sp, sp, #4
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, r6, pc}
_02120740:
	ldr r1, [r4, #0x4b4]
	cmp r1, #0
	beq _02120808
	mov r5, #0
	bl ov11_02121168
	cmp r0, #0x17
	beq _02120768
	cmp r0, #0x18
	beq _02120784
	b _021207A0
_02120768:
	ldr r0, [r4, #0x4b0]
	cmp r0, #1
	bge _021207C0
	add r0, r0, #1
	str r0, [r4, #0x4b0]
	mov r5, #1
	b _021207C0
_02120784:
	ldr r0, [r4, #0x4b0]
	cmp r0, #0
	ble _021207C0
	sub r0, r0, #1
	str r0, [r4, #0x4b0]
	mov r5, #1
	b _021207C0
_021207A0:
	ldr r0, [r4, #0x52c]
	cmp r0, #2
	bne _021207C0
	mov r0, r4
	mov r1, r5
	bl ov11_02124370
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_021207C0:
	cmp r5, #0
	beq _02120808
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x524]
	bl ov11_02124370
	ldr r1, [r4, #0x4b0]
	mov r0, r4
	mov r2, #0
	bl ov11_021229F0
	mov r0, r4
	mov r1, #1
	bl ov11_021240C0
	mov r1, r0
	mov r0, r4
	bl ov11_02123C04
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_02120808:
	mov r0, r4
	mov r1, #1
	bl ov11_02121F48
	mov r1, r0
	cmp r1, #4
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	cmp r1, #0
	mov r0, r4
	blt _0212083C
	bl ov11_0212253C
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_0212083C:
	bl ov11_02121550
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_02120848:
	mvn r1, #0
	bl ov11_021242B8
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r0, r4
	mov r1, #0
	bl ov11_021240C0
	mov r1, #0x88
	mul r6, r0, r1
	add r5, r4, #0x108
	add r0, r5, r6
	mov r1, #0
	mov r2, #1
	bl ov11_02124680
	ldr r1, [r4, #0x51c]
	add r0, r5, r6
	bl ov11_02124730
	ldr r1, [r4, #0x364]
	add r0, r4, r6
	sub r2, r1, #1
	str r2, [r4, #0x364]
	ldr r1, [r0, #0x15c]
	add r0, r4, r2, lsl #2
	str r1, [r0, #0x350]
	ldr r1, [r4, #0x364]
	mov r0, r4
	add r1, r4, r1, lsl #2
	ldr r2, [r1, #0x33c]
	mov r1, #0
	bl ov11_021241EC
	mov r0, #0xb
	add sp, sp, #4
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, r6, pc}
_021208D4:
	mvn r1, #0
	bl ov11_021242B8
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r4, #0x364]
	mov r0, r4
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x350]
	bl ov11_02120294
	mov r1, r0
	mov r0, r4
	bl ov11_02123C04
	mov r0, #8
	add sp, sp, #4
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, r6, pc}
_02120918:
	mvn r1, #0
	bl ov11_021242B8
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r4, #0x364]
	add r0, r4, r1, lsl #2
	ldr r0, [r0, #0x350]
	cmp r0, #2
	cmpne r0, #3
	bne _0212095C
	mov r0, r4
	bl ov11_021216C4
	mov r0, #0xa
	add sp, sp, #4
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, r6, pc}
_0212095C:
	mov r2, #1
	mov r0, r4
	mov r1, #4
	strh r2, [r4, #2]
	bl ov11_0211FBE4
	mov r0, r4
	bl ov11_0211F990
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_02120980:
	mvn r1, #0
	bl ov11_021242B8
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r0, r4
	bl ov11_02124278
	mov r1, r0
	mov r0, r4
	bl ov11_021240C0
	add r2, r4, #0x108
	mov r1, #0x88
	mla r0, r1, r0, r2
	bl ov11_02124C28
	mov r0, #0xc
	add sp, sp, #4
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, r6, pc}
_021209C8:
	mvn r1, #0
	bl ov11_021242B8
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r0, r4
	bl ov11_0212280C
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_021209EC:
	bl ov11_02121168
	mvn r1, #1
	cmp r0, r1
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	cmp r0, #0xe
	bne _02120A18
	mov r0, r4
	bl ov11_02122510
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_02120A18:
	ldr r1, [r4, #0x364]
	mov r0, r4
	sub r1, r1, #2
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x350]
	bl ov11_02121964
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_02120A38:
	bl ov11_02122428
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov ip, #1
	mov r0, r4
	mov r1, #0
	mov r2, #5
	mov r3, #3
	str ip, [sp]
	bl ov11_02122B7C
	mov r2, #0xa
	mov r0, r4
	mov r1, #1
	strh r2, [r4, #2]
	bl ov11_02124370
_02120A78:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}

	arm_func_start ov11_02120A80
ov11_02120A80: ; 0x02120A80
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02120AA0
	cmp r0, #3
	beq _02120AC8
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02120A80
_02120AA0:
	mov r0, #3
	strh r0, [r4, #2]
	bl ov11_02128FEC
	ldr r0, [r4, #0x71c]
	mov r1, #2
	bl ov11_0212E9B4
	mov r0, r4
	mov r1, #3
	bl ov11_0211FBE4
	ldmia sp!, {r4, pc}
_02120AC8:
	ldr r0, [r4, #0x71c]
	bl ov11_0212DA48
	cmp r0, #8
	cmpne r0, #0xa
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov11_02121288
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02120AE8
ov11_02120AE8: ; 0x02120AE8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrh r1, [r4, #2]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02120C14
_02120B04: ; jump table
	b _02120B14 ; case 0
	b _02120B54 ; case 1
	b _02120B94 ; case 2
	b _02120BF4 ; case 3
	arm_func_end ov11_02120AE8
_02120B14:
	mov r3, #1
	strh r3, [r4, #2]
	mov r1, #2
	mov r2, #3
	str r3, [sp]
	bl ov11_02122B7C
	mov r1, #1
	mov r0, r4
	mov r3, r1
	mov r2, #3
	bl ov11_02122C18
	mov r0, r4
	mov r1, #0x11
	bl ov11_021217C0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02120B54:
	bl ov11_02121168
	mvn r1, #1
	cmp r0, r1
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	cmp r0, #0x13
	bne _02120B80
	mov r0, #2
	add sp, sp, #4
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, pc}
_02120B80:
	mov r0, r4
	mov r1, #4
	bl ov11_02121964
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02120B94:
	mov ip, #0
	mov r1, #4
	mov r2, #3
	mov r3, #1
	str ip, [sp]
	bl ov11_02122B7C
	mov r1, #3
	mov r0, r4
	mov r2, r1
	mov r3, #1
	bl ov11_02122C18
	mov r0, #3
	strh r0, [r4, #2]
	bl ov11_02128FEC
	ldr r0, [r4, #0x71c]
	mov r1, #0xe
	bl ov11_0212E9B4
	mov r0, r4
	mov r1, #5
	bl ov11_0211FBE4
	mov r0, #1
	add sp, sp, #4
	str r0, [r4, #0x710]
	ldmia sp!, {r3, r4, pc}
_02120BF4:
	ldr r0, [r4, #0x71c]
	bl ov11_0212DA48
	cmp r0, #8
	cmpne r0, #0xa
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	mov r0, r4
	bl ov11_02121288
_02120C14:
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov11_02120C1C
ov11_02120C1C: ; 0x02120C1C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrh r1, [r4, #2]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, r4, r5, pc}
_02120C34: ; jump table
	b _02120C4C ; case 0
	b _02120C8C ; case 1
	b _02120CC0 ; case 2
	b _02120D1C ; case 3
	b _02120D5C ; case 4
	b _02120D88 ; case 5
	arm_func_end ov11_02120C1C
_02120C4C:
	mov r5, #1
	strh r5, [r4, #2]
	mov r1, #2
	mov r2, #4
	mov r3, #0
	str r5, [sp]
	bl ov11_02122B7C
	mov r1, r5
	mov r0, r4
	mov r3, r1
	mov r2, #4
	bl ov11_02122C18
	mov r0, r4
	mov r1, #0x11
	bl ov11_021217C0
	ldmia sp!, {r3, r4, r5, pc}
_02120C8C:
	bl ov11_02121168
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0x13
	bne _02120CB0
	mov r0, #2
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, pc}
_02120CB0:
	mov r0, r4
	mov r1, #4
	bl ov11_02121964
	ldmia sp!, {r3, r4, r5, pc}
_02120CC0:
	mov r1, #4
	mov r5, #0
	mov r2, r1
	mov r3, #1
	str r5, [sp]
	bl ov11_02122B7C
	mov r0, r4
	mov r1, #3
	mov r2, #4
	mov r3, #1
	bl ov11_02122C18
	mov r0, #3
	strh r0, [r4, #2]
	bl ov11_02128FEC
	mov r0, #1
	str r0, [r4, #0x710]
	ldr r0, [r4, #0x720]
	ldr r1, [r4, #0x604]
	bl ov11_0212D018
	mov r0, r4
	mov r1, #5
	bl ov11_0211FBE4
	ldmia sp!, {r3, r4, r5, pc}
_02120D1C:
	ldr r0, [r4, #0x720]
	bl ov11_0212D030
	mov r1, #2
	mov r5, r0
	mov r0, r4
	sub r2, r1, #3
	bl ov11_0211FB08
	cmp r5, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov11_02123E40
	cmp r0, #0
	movne r0, #4
	strneh r0, [r4, #2]
	moveq r0, #5
	streqh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, pc}
_02120D5C:
	ldr r1, _02120DA0 ; =OVERLAY11_BSS_02169B40
	ldr r0, [r1]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _02120DA4 ; =ov11_02123EA8
	mov r2, #0
	str r2, [r1]
	bl WM_End
	mov r0, #5
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, pc}
_02120D88:
	ldr r1, _02120DA0 ; =OVERLAY11_BSS_02169B40
	ldr r1, [r1]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl ov11_02121288
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02120DA0: .word OVERLAY11_BSS_02169B40
_02120DA4: .word ov11_02123EA8

	arm_func_start ov11_02120DA8
ov11_02120DA8: ; 0x02120DA8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r1, [r5, #2]
	cmp r1, #0
	beq _02120DD0
	cmp r1, #1
	beq _02120DF8
	cmp r1, #2
	beq _02120E60
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02120DA8
_02120DD0:
	mov r3, #1
	strh r3, [r5, #2]
	mov r1, #0x10
	mov r2, #0
	str r3, [sp]
	bl ov11_02122B7C
	mov r0, r5
	mov r1, #0xb
	bl ov11_021217C0
	ldmia sp!, {r3, r4, r5, pc}
_02120DF8:
	bl ov11_02121168
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0xe
	bne _02120E50
	mov r0, #2
	strh r0, [r5, #2]
	bl ov11_02128FEC
	ldr r0, [r5, #0x714]
	bl ov11_02130B30
	mov r2, #0
	mov r4, #1
	mov r0, r5
	mov r3, r2
	mov r1, #0x16
	str r4, [sp]
	bl ov11_02122B7C
	mov r0, r5
	mov r1, #5
	bl ov11_0211FBE4
	ldmia sp!, {r3, r4, r5, pc}
_02120E50:
	mov r0, r5
	mov r1, #0
	bl ov11_02121964
	ldmia sp!, {r3, r4, r5, pc}
_02120E60:
	ldr r0, [r5, #0x714]
	bl ov11_0213051C
	mov r1, #1
	mov r4, r0
	mov r0, r5
	sub r2, r1, #2
	bl ov11_0211FB08
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	ldmia sp!, {r3, r4, r5, pc}
_02120E88: ; jump table
	b _02120E98 ; case 0
	b _02120EA4 ; case 1
	ldmia sp!, {r3, r4, r5, pc} ; case 2
	b _02120EB0 ; case 3
_02120E98:
	mov r0, r5
	bl ov11_02121288
	ldmia sp!, {r3, r4, r5, pc}
_02120EA4:
	mov r0, r5
	bl ov11_02121288
	ldmia sp!, {r3, r4, r5, pc}
_02120EB0:
	mov r0, r5
	bl ov11_02121288
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02120EBC
ov11_02120EBC: ; 0x02120EBC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrh r1, [r4, #2]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _02120FF8
_02120ED8: ; jump table
	b _02120EF8 ; case 0
	b _02120F14 ; case 1
	b _02120F2C ; case 2
	b _02120F6C ; case 3
	b _02120FA4 ; case 4
	b _02120FF8 ; case 5
	b _02120FF8 ; case 6
	b _02120FF8 ; case 7
	arm_func_end ov11_02120EBC
_02120EF8:
	bl ov11_02123DDC
	mov r0, r4
	bl ov11_02123EBC
	mov r0, #1
	add sp, sp, #4
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, pc}
_02120F14:
	bl ov11_02123FB0
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #4
	streqh r0, [r4, #2]
	ldmia sp!, {r3, r4, pc}
_02120F2C:
	bl ov11_021212B4
	cmp r0, #0
	addlt sp, sp, #4
	ldmltia sp!, {r3, r4, pc}
	sub r0, r0, #0xb
	mov r2, #1
	str r0, [r4, #0x6ec]
	mov r0, #3
	strh r0, [r4, #2]
	mov r0, r4
	mov r3, r2
	mov r1, #4
	str r2, [sp]
	bl ov11_02122B7C
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02120F6C:
	bl ov11_0211EF5C
	mov r0, #4
	strh r0, [r4, #2]
	ldr r1, [r4, #0x700]
	mov r0, r4
	bl ov11_02121000
	mov r2, #1
	mov r0, r4
	mov r3, r2
	mov r1, #6
	str r2, [sp]
	bl ov11_02122B7C
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02120FA4:
	bl ov11_02121010
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	cmp r0, #0
	mov r2, #1
	bge _02120FE4
	mov r0, r4
	mov r1, #0xd
	mov r3, #0
	str r2, [sp]
	bl ov11_02122B7C
	mov r0, #7
	add sp, sp, #4
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, pc}
_02120FE4:
	ldr r1, [r4, #0x6ec]
	mov r0, r4
	bl ov11_0212374C
	mov r0, #6
	strh r0, [r4, #2]
_02120FF8:
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov11_02121000
ov11_02121000: ; 0x02121000
	str r1, [r0, #0x6f4]
	mov r1, #2
	str r1, [r0, #0x6fc]
	bx lr
	arm_func_end ov11_02121000

	arm_func_start ov11_02121010
ov11_02121010: ; 0x02121010
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x6fc]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0212115C
_02121028: ; jump table
	b _0212115C ; case 0
	b _0212115C ; case 1
	b _02121044 ; case 2
	b _02121060 ; case 3
	b _02121104 ; case 4
	b _0212115C ; case 5
	b _02121144 ; case 6
	arm_func_end ov11_02121010
_02121044:
	ldr r0, [r4, #0x620]
	bl sub_020110E8
	mov r0, #0
	str r0, [r4, #0x6f0]
	mov r0, #3
	str r0, [r4, #0x6fc]
	b _0212115C
_02121060:
	bl ov11_0211F06C
	ldr r1, [r4, #0x6f0]
	cmp r1, #6
	bge _021210B4
	ldr r5, _02121164 ; =MAIN_BSS_020AF624
_02121074:
	ldr r2, [r4, #0x6f4]
	mov r0, r4
	mov r3, r5
	bl ov11_02123D20
	cmp r0, #0
	beq _021210A0
	mov r0, #4
	str r0, [r4, #0x6fc]
	ldr r0, [r4, #0x620]
	bl sub_020110E8
	b _021210B4
_021210A0:
	ldr r0, [r4, #0x6f0]
	add r1, r0, #1
	str r1, [r4, #0x6f0]
	cmp r1, #6
	blt _02121074
_021210B4:
	ldr r0, [r4, #0x6f0]
	cmp r0, #6
	blt _0212115C
	mov r1, #0x78
	mov r0, r4
	str r1, [r4, #0x6f8]
	bl ov11_0211F0BC
	mov r0, #6
	str r0, [r4, #0x6fc]
	ldr r0, [r4, #0x72c]
	mov r1, #0xd1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C5C
	ldr r0, [r4, #0x72c]
	mov r1, #0xf0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	b _0212115C
_02121104:
	bl ov11_0211F06C
	ldr r0, [r4, #0x620]
	ldr r1, [r4, #0x6f0]
	bl sub_020110F8
	cmp r0, #0
	beq _0212115C
	cmp r0, #1
	bne _0212113C
	ldr r1, [r4, #0x6f0]
	mov r0, #3
	add r1, r1, #1
	str r1, [r4, #0x6f0]
	str r0, [r4, #0x6fc]
	b _0212115C
_0212113C:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02121144:
	ldr r0, [r4, #0x6f8]
	sub r0, r0, #1
	str r0, [r4, #0x6f8]
	cmp r0, #0
	movle r0, #1
	ldmleia sp!, {r3, r4, r5, pc}
_0212115C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02121164: .word MAIN_BSS_020AF624

	arm_func_start ov11_02121168
ov11_02121168: ; 0x02121168
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x52c]
	cmp r1, #0
	beq _02121190
	cmp r1, #1
	beq _02121198
	cmp r1, #2
	beq _021211EC
	b _0212120C
	arm_func_end ov11_02121168
_02121190:
	mov r0, #1
	str r0, [r4, #0x52c]
_02121198:
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x70c]
	bl ov11_02122150
	mvn r1, #0
	cmp r0, r1
	bne _021211CC
	ldr r0, [r4, #0x14]
	mov r3, #0
	ldr r2, [r0, #0x18]
	mov r0, r1
	str r3, [r2, #0x14]
	ldmia sp!, {r4, pc}
_021211CC:
	cmp r0, #0
	blt _0212120C
	str r0, [r4, #0x528]
	mov r0, #2
	str r0, [r4, #0x52c]
	mov r0, #0
	str r0, [r4, #0x524]
	b _0212120C
_021211EC:
	ldr r1, [r4, #0x524]
	add r1, r1, #1
	str r1, [r4, #0x524]
	cmp r1, #0x1e
	blt _0212120C
	bl ov11_02123BD4
	ldr r0, [r4, #0x528]
	ldmia sp!, {r4, pc}
_0212120C:
	mvn r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02121214
ov11_02121214: ; 0x02121214
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #2]
	cmp r1, #1
	beq _02121234
	cmp r1, #2
	beq _02121250
	b _02121268
	arm_func_end ov11_02121214
_02121234:
	bl ov11_02122428
	cmp r0, #0
	beq _02121268
	mov r1, #2
	mov r0, r4
	strh r1, [r4, #2]
	bl ov11_02123F58
_02121250:
	mov r0, r4
	bl ov11_02123FB0
	cmp r0, #0
	bne _02121268
	mov r0, r4
	bl ov11_02121270
_02121268:
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02121270
ov11_02121270: ; 0x02121270
	stmdb sp!, {r3, lr}
	mov r0, #0
	bl sub_0200FA48
	mov r0, #0
	bl OS_ResetSystem
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02121270

	arm_func_start ov11_02121288
ov11_02121288: ; 0x02121288
	stmdb sp!, {r4, lr}
	ldr r2, _021212B0 ; =0x0000FFFF
	mov r4, r0
	mov r3, #2
	mov r1, #0xa
	strh r3, [r4, #2]
	bl ov11_02124038
	mov r0, r4
	bl ov11_02123F58
	ldmia sp!, {r4, pc}
	.align 2, 0
_021212B0: .word 0x0000FFFF
	arm_func_end ov11_02121288

	arm_func_start ov11_021212B4
ov11_021212B4: ; 0x021212B4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, [r4, #0x530]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _0212141C
_021212D0: ; jump table
	b _021212E8 ; case 0
	b _02121304 ; case 1
	b _0212141C ; case 2
	b _02121350 ; case 3
	b _021213B8 ; case 4
	b _021213F8 ; case 5
	arm_func_end ov11_021212B4
_021212E8:
	mov r5, #1
	str r5, [r4, #0x530]
	mov r1, #0
	mov r2, #5
	mov r3, #3
	str r5, [sp]
	bl ov11_02122B7C
_02121304:
	mov r0, r4
	mvn r1, #0
	bl ov11_021242B8
	cmp r0, #0
	bne _0212141C
	mov r0, r4
	mov r1, #1
	bl ov11_021240C0
	movs r1, r0
	bpl _0212133C
	mov r0, r4
	mov r1, #0
	bl ov11_021240C0
	mov r1, r0
_0212133C:
	mov r0, r4
	bl ov11_02123C04
	mov r0, #3
	str r0, [r4, #0x530]
	b _0212141C
_02121350:
	bl ov11_02121428
	movs r6, r0
	bmi _0212141C
	mov r0, r4
	mov r1, r6
	bl ov11_02120294
	mov r5, r0
	mov r0, r4
	mov r1, r5
	bl ov11_02123C04
	mov r0, r4
	mov r1, #0
	bl ov11_02124370
	mov r0, r4
	mov r1, r5
	mov r2, #0x1e
	bl ov11_021241C8
	mov r1, r5
	mov r0, r4
	bl ov11_021240D4
	ldr r1, [r4, #0x364]
	mov r0, #4
	add r1, r4, r1, lsl #2
	str r6, [r1, #0x350]
	str r0, [r4, #0x530]
	b _0212141C
_021213B8:
	mvn r1, #0
	bl ov11_021242B8
	cmp r0, #0
	bne _0212141C
	mov r0, r4
	bl ov11_02124278
	mov r1, r0
	mov r0, r4
	bl ov11_021240C0
	add r2, r4, #0x108
	mov r1, #0x88
	mla r0, r1, r0, r2
	bl ov11_02124C28
	mov r0, #5
	str r0, [r4, #0x530]
	b _0212141C
_021213F8:
	mvn r1, #0
	bl ov11_021242B8
	cmp r0, #0
	bne _0212141C
	ldr r0, [r4, #0x364]
	add sp, sp, #4
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x350]
	ldmia sp!, {r3, r4, r5, r6, pc}
_0212141C:
	mvn r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}

	arm_func_start ov11_02121428
ov11_02121428: ; 0x02121428
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x4b4]
	cmp r1, #0
	beq _021214F8
	mov r5, #0
	bl ov11_02121168
	cmp r0, #0x17
	beq _02121458
	cmp r0, #0x18
	beq _02121474
	b _02121490
	arm_func_end ov11_02121428
_02121458:
	ldr r0, [r4, #0x4b0]
	cmp r0, #1
	bge _021214B0
	add r0, r0, #1
	str r0, [r4, #0x4b0]
	mov r5, #1
	b _021214B0
_02121474:
	ldr r0, [r4, #0x4b0]
	cmp r0, #0
	ble _021214B0
	sub r0, r0, #1
	str r0, [r4, #0x4b0]
	mov r5, #1
	b _021214B0
_02121490:
	ldr r0, [r4, #0x52c]
	cmp r0, #2
	bne _021214B0
	mov r0, r4
	mov r1, r5
	bl ov11_02124370
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021214B0:
	cmp r5, #0
	beq _021214F8
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x524]
	bl ov11_02124370
	ldr r1, [r4, #0x4b0]
	mov r0, r4
	mov r2, #0
	bl ov11_021229F0
	mov r0, r4
	mov r1, #1
	bl ov11_021240C0
	mov r1, r0
	mov r0, r4
	bl ov11_02123C04
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021214F8:
	mov r0, r4
	mov r1, #1
	bl ov11_02121F48
	mov r5, r0
	cmp r5, #4
	beq _02121548
	cmp r5, #0
	mov r0, r4
	blt _0212153C
	bl ov11_02123BD4
	mov r0, r4
	mov r1, r5
	bl ov11_021240C0
	mov r1, #0x88
	mla r1, r0, r1, r4
	ldr r0, [r1, #0x15c]
	ldmia sp!, {r3, r4, r5, pc}
_0212153C:
	bl ov11_02121550
	mvn r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02121548:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02121550
ov11_02121550: ; 0x02121550
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl ov11_02124278
	mov r1, r0
	mov r0, r4
	bl ov11_021240C0
	mov r1, #0x88
	mul r3, r0, r1
	add r0, r4, r3
	add r1, r4, #0x108
	ldr r2, [r0, #0x150]
	add r0, r1, r3
	mov r1, #0
	bl ov11_02124680
	mov r0, r4
	mov r1, #0
	bl ov11_02124370
	mov r0, r4
	mov r1, #0
	bl ov11_021240C0
	mov r5, r0
	mov r0, r4
	mov r1, r5
	bl ov11_021240D4
	mov r0, #0
	str r0, [r4, #0x51c]
	mov r0, #0x88
	mla r0, r5, r0, r4
	ldr r0, [r0, #0x15c]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02121644
_021215D0: ; jump table
	b _021215E4 ; case 0
	b _021215F8 ; case 1
	b _0212160C ; case 2
	b _02121620 ; case 3
	b _02121634 ; case 4
	arm_func_end ov11_02121550
_021215E4:
	mov r0, r4
	bl ov11_02120150
	cmp r0, #0
	strge r0, [r4, #0x51c]
	b _02121644
_021215F8:
	mov r0, r4
	bl ov11_02120178
	cmp r0, #0
	strge r0, [r4, #0x51c]
	b _02121644
_0212160C:
	mov r0, r4
	bl ov11_021201A8
	cmp r0, #0
	strge r0, [r4, #0x51c]
	b _02121644
_02121620:
	mov r0, r4
	bl ov11_021201F8
	cmp r0, #0
	strge r0, [r4, #0x51c]
	b _02121644
_02121634:
	mov r0, r4
	bl ov11_02120248
	cmp r0, #0
	strge r0, [r4, #0x51c]
_02121644:
	mov r1, #9
	mov r0, r4
	strh r1, [r4, #2]
	bl ov11_02123BD4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02121658
ov11_02121658: ; 0x02121658
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, #0
	add r4, r7, r1, lsl #4
	mvn r5, #0
	mov r8, #0x88
	arm_func_end ov11_02121658
_02121670:
	mov r0, r7
	mov r1, r6
	bl ov11_021240C0
	cmp r0, #0
	addlt r0, r4, r6, lsl #2
	strlt r5, [r0, #0x3b8]
	blt _021216B4
	mla r2, r0, r8, r7
	ldr r0, [r2, #0x158]
	add r1, r4, r6, lsl #2
	str r0, [r1, #0x368]
	ldr r0, [r2, #0x15c]
	str r0, [r1, #0x3b8]
	ldr r0, [r2, #0x154]
	str r0, [r1, #0x408]
	ldr r0, [r2, #0x150]
	str r0, [r1, #0x458]
_021216B4:
	add r6, r6, #1
	cmp r6, #4
	blt _02121670
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov11_021216C4
ov11_021216C4: ; 0x021216C4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r6, #0
	mov r8, r6
	add r4, sl, #0x108
	add r5, sl, r1, lsl #4
	arm_func_end ov11_021216C4
_021216DC:
	mov r0, sl
	mov r1, r8
	bl ov11_021240C0
	cmp r0, #0
	bge _021217B0
	mov r0, sl
	bl ov11_02124054
	mov fp, r0
	mov r0, #0x88
	mul sb, fp, r0
	add r0, sl, sb
	ldr r0, [r0, #0x140]
	cmp r0, #0
	bne _021217B0
	add r1, r5, r8, lsl #2
	ldr r0, [r1, #0x3b8]
	cmp r0, #0
	blt _021217B0
	ldr r0, [r1, #0x368]
	add r7, r4, sb
	cmp r0, #2
	mov r2, #1
	mov r0, r7
	beq _02121748
	mov r1, #0
	bl ov11_02124680
	b _02121750
_02121748:
	mov r1, #2
	bl ov11_02124680
_02121750:
	add r0, r5, r8, lsl #2
	ldr r1, [r0, #0x3b8]
	add r0, r4, sb
	bl ov11_02124820
	add r1, r5, r8, lsl #2
	ldr r1, [r1, #0x408]
	add r0, r4, sb
	bl ov11_02124730
	add r1, r5, r8, lsl #2
	ldr r1, [r1, #0x458]
	add r0, r4, sb
	bl ov11_021247A8
	add r0, sl, r8, lsl #2
	mov r1, r6, lsr #0x1f
	str fp, [r0, #0x328]
	rsb r0, r1, r6, lsl #31
	adds r0, r1, r0, ror #31
	mov r0, r7
	mov r1, r8
	beq _021217A8
	bl ov11_02124A6C
	b _021217AC
_021217A8:
	bl ov11_02124B10
_021217AC:
	add r6, r6, #1
_021217B0:
	add r8, r8, #1
	cmp r8, #4
	blt _021216DC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov11_021217C0
ov11_021217C0: ; 0x021217C0
	ldr ip, _021217D0 ; =ov11_02123A78
	mov r2, #0
	str r2, [r0, #0x52c]
	bx ip
	.align 2, 0
_021217D0: .word ov11_02123A78
	arm_func_end ov11_021217C0

	arm_func_start ov11_021217D4
ov11_021217D4: ; 0x021217D4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r4, #0
	mov r6, r0
	mov r5, r1
	str r2, [sp]
	str r3, [sp, #4]
	mov r7, r4
	str r4, [r6, #0x530]
	arm_func_end ov11_021217D4
_021217F8:
	mov r0, r6
	mov r1, r7
	bl ov11_02124150
	add r7, r7, #1
	cmp r7, #4
	blt _021217F8
	mov ip, #0
	ldr r2, _02121960 ; =0x55555556
	str ip, [r6, #0x4b4]
	mvn r8, #0
	mov r7, ip
	mov r0, #0x30
	mov r1, #3
	mov r3, #0xc
_02121830:
	smull sl, sb, r2, ip
	add sb, sb, ip, lsr #31
	smull fp, sl, r2, ip
	add sl, sl, ip, lsr #31
	mla fp, sl, r0, r6
	smull sb, sl, r1, sb
	sub sb, ip, sb
	mla sl, sb, r3, fp
	str r8, [sl, #0x4b8]
	str r7, [sl, #0x4bc]
	str r7, [sl, #0x4c0]
	add ip, ip, #1
	cmp ip, #6
	blt _02121830
	ldr r0, _02121960 ; =0x55555556
	mov ip, #0
	mov r3, #1
	mov fp, #0x30
	mov sl, #3
	mov r1, #0xc
	mvn r2, #0
_02121884:
	ldr r8, [r5, r7, lsl #2]
	mov sb, #0
	cmp r8, r2
	movne sb, #1
	cmp sb, #0
	beq _021218E0
	smull sb, r8, r0, r4
	add r8, r8, r4, lsr #31
	mla lr, r8, fp, r6
	smull r8, sb, r0, r4
	add sb, sb, r4, lsr #31
	smull r8, sb, sl, sb
	sub sb, r4, r8
	mla r8, sb, r1, lr
	add sb, r7, #0xb
	str sb, [r8, #0x4b8]
	str ip, [r8, #0x4bc]
	cmp r4, #3
	str r3, [r8, #0x4c0]
	add r4, r4, #1
	strge r3, [r6, #0x4b4]
	cmp r4, #6
	bge _021218EC
_021218E0:
	add r7, r7, #1
	cmp r7, #0xb
	blt _02121884
_021218EC:
	ldr r0, [sp]
	cmp r0, #0
	beq _02121948
	ldr r1, [sp, #4]
	mov r0, r6
	mov r2, #0
	mov r3, #2
	bl ov11_02122B04
	mov r1, #0x88
	mul r4, r0, r1
	add r5, r6, #0x108
	mov r0, #0
	bl ov11_02124EB0
	mov r2, r0
	add r0, r5, r4
	mov r1, #0x80
	bl ov11_02124844
	add r0, r5, r4
	mov r1, #1
	bl ov11_021248EC
	add r0, r5, r4
	mov r1, #1
	bl ov11_02124EBC
_02121948:
	mov r0, r6
	mov r1, #0
	mov r2, #1
	bl ov11_021229F0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02121960: .word 0x55555556

	arm_func_start ov11_02121964
ov11_02121964: ; 0x02121964
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl ov11_021241A0
	mov r0, r4
	bl ov11_0211F96C
	mov r0, r4
	mov r1, r5
	mov r2, #0
	mov r3, #2
	bl ov11_02122B04
	add r2, r4, #0x108
	mov r1, #0x88
	mla r0, r1, r0, r2
	mov r1, #0
	bl ov11_02124A6C
	ldr r1, [r4, #0x364]
	mov r0, r4
	sub r1, r1, #1
	str r1, [r4, #0x364]
	bl ov11_0211FC60
	mov r0, r4
	mov r1, #3
	ldr r2, _02121A04 ; =0x0000FFFF
	bl ov11_02124038
	mov r0, #0xa
	strh r0, [r4, #2]
	mov r0, #1
	str r0, [sp]
	mov r0, r4
	mov r1, #0
	mov r2, #5
	mov r3, #3
	bl ov11_02122B7C
	mov r0, r4
	mov r1, #0
	mov r2, #5
	mov r3, r1
	bl ov11_02122C18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02121A04: .word 0x0000FFFF
	arm_func_end ov11_02121964

	arm_func_start ov11_02121A08
ov11_02121A08: ; 0x02121A08
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r1, [r5, #2]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov11_02123FB0
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov11_0211F52C
	bl ov11_02128FEC
	bl OS_InitAlarm
	ldr r1, _02121A74 ; =0x04000210
	mov r0, #0
	ldr r4, [r1]
	bl OS_SetIrqMask
	ldr r0, [r5, #0x718]
	bl ov11_021304B4
	mov r0, r4
	bl OS_SetIrqMask
	ldr r2, _02121A78 ; =0x04000208
	mov r0, r5
	ldrh r1, [r2]
	mov r1, #1
	strh r1, [r2]
	bl ov11_02121270
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02121A74: .word 0x04000210
_02121A78: .word 0x04000208
	arm_func_end ov11_02121A08

	arm_func_start ov11_02121A7C
ov11_02121A7C: ; 0x02121A7C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _02121A94
	bl sub_0200F64C
	arm_func_end ov11_02121A7C
_02121A94:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _02121AA4
	bl sub_0200F64C
_02121AA4:
	ldr r0, [r6, #0xa8]
	cmp r0, #0
	beq _02121AB4
	bl sub_0200F64C
_02121AB4:
	ldr r0, [r6, #0xac]
	cmp r0, #0
	beq _02121AC4
	bl sub_0200F64C
_02121AC4:
	ldr r0, [r6, #0xb0]
	cmp r0, #0
	beq _02121AD4
	bl sub_0200F64C
_02121AD4:
	ldr r0, [r6, #0xb4]
	cmp r0, #0
	beq _02121AE4
	bl sub_0200F64C
_02121AE4:
	add r5, r6, #0x108
	mov r4, #0
_02121AEC:
	mov r0, r5
	bl ov11_02124888
	add r4, r4, #1
	cmp r4, #4
	add r5, r5, #0x88
	blt _02121AEC
	ldr r0, [r6, #0xec]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r4, #0
_02121B14:
	add r0, r6, r4, lsl #2
	ldr r0, [r0, #0xc4]
	cmp r0, #0
	beq _02121B28
	bl sub_0200F64C
_02121B28:
	add r4, r4, #1
	cmp r4, #3
	blt _02121B14
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02121B38
ov11_02121B38: ; 0x02121B38
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02121B50
	bl sub_0200F71C
	arm_func_end ov11_02121B38
_02121B50:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02121B60
	bl sub_0200F71C
_02121B60:
	ldr r0, [r4, #0xa8]
	cmp r0, #0
	beq _02121B70
	bl sub_0200F71C
_02121B70:
	ldr r0, [r4, #0xac]
	cmp r0, #0
	beq _02121B80
	bl sub_0200F71C
_02121B80:
	ldr r0, [r4, #0xb0]
	cmp r0, #0
	beq _02121B90
	bl sub_0200F71C
_02121B90:
	ldr r0, [r4, #0xb4]
	cmp r0, #0
	beq _02121BA0
	bl sub_0200F71C
_02121BA0:
	add r6, r4, #0x108
	mov r5, #0
_02121BA8:
	mov r0, r6
	bl ov11_021248CC
	add r5, r5, #1
	cmp r5, #4
	add r6, r6, #0x88
	blt _02121BA8
	ldr r0, [r4, #0xec]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r5, #0
_02121BD0:
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #0xc4]
	cmp r0, #0
	beq _02121BE4
	bl sub_0200F71C
_02121BE4:
	add r5, r5, #1
	cmp r5, #3
	blt _02121BD0
	mov r6, #0
	mov r5, r6
_02121BF8:
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0xf8]
	ldr r2, [r0, #0x100]
	mov r0, r6
	mov r3, r5
	bl sub_0201FC50
	add r6, r6, #1
	cmp r6, #2
	blt _02121BF8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02121C20
ov11_02121C20: ; 0x02121C20
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x50
	ldr r5, _02121EB8 ; =0x04001000
	mov sl, r0
	ldr r2, [r5]
	mov r4, #0
	bic r0, r2, #0x1f00
	orr r0, r0, #0x1700
	str r0, [r5]
	ldr r2, [r5]
	ldr r0, _02121EBC ; =0xFFCFFFEF
	ldr r1, _02121EC0 ; =0x00000D08
	and r0, r2, r0
	orr r0, r0, #0x10
	orr r0, r0, #0x100000
	str r0, [r5]
	str r4, [r5, #0x10]
	str r4, [r5, #0x14]
	str r4, [r5, #0x18]
	str r4, [r5, #0x1c]
	ldrh r3, [r5, #0xa]
	add r0, r1, #0x100
	add r2, r1, #0x200
	and r1, r3, #0x43
	orr r1, r1, #0x108
	orr r1, r1, #0xc00
	strh r1, [r5, #0xa]
	ldrh r1, [r5, #0xc]
	mov r6, #0x100
	ldr r3, _02121EC4 ; =s_rn001_overlay_11_02166394
	and r1, r1, #0x43
	orr r0, r1, r0
	strh r0, [r5, #0xc]
	ldrh r7, [r5, #0xe]
	ldr r0, _02121EC8 ; =s_menu_overlay_11_02166380
	ldr r1, _02121ECC ; =s_rn001_bg_overlay_11_02166388
	and r7, r7, #0x43
	orr r2, r7, r2
	strh r2, [r5, #0xe]
	ldrh r7, [r5, #8]
	mov r2, #5
	bic r7, r7, #3
	strh r7, [r5, #8]
	ldrh r7, [r5, #0xa]
	bic r7, r7, #3
	orr r7, r7, #1
	strh r7, [r5, #0xa]
	ldrh r7, [r5, #0xc]
	bic r7, r7, #3
	orr r7, r7, #3
	strh r7, [r5, #0xc]
	ldrh r7, [r5, #0xe]
	bic r7, r7, #3
	orr r7, r7, #1
	strh r7, [r5, #0xe]
	str r6, [sp]
	stmib sp, {r3, r4}
	bl sub_02020804
	str r4, [sp]
	mov r0, r6
	stmib sp, {r0, r4}
	ldr r0, _02121EC8 ; =s_menu_overlay_11_02166380
	ldr r1, _02121ECC ; =s_rn001_bg_overlay_11_02166388
	ldr r3, _02121ED0 ; =s_rn001_02_overlay_11_0216635c
	mov r2, #6
	str r4, [sp, #0xc]
	bl sub_02020FF0
	str r4, [sp]
	mov r0, r6
	stmib sp, {r0, r4}
	ldr r0, _02121EC8 ; =s_menu_overlay_11_02166380
	ldr r1, _02121ECC ; =s_rn001_bg_overlay_11_02166388
	ldr r3, _02121ED4 ; =s_rn001_01_overlay_11_02166350
	mov r2, #5
	str r4, [sp, #0xc]
	bl sub_02020FF0
	ldr r6, _02121ED8 ; =DAT_overlay_11_02166268
	mov sb, r4
	mov fp, #7
	add r7, sp, #0x10
	mov r5, #0x100
	mov r8, #0x64
	arm_func_end ov11_02121C20
_02121D68:
	mov r0, r8
	bl _Znwm
	cmp r0, #0
	beq _02121D80
	ldr r1, [sl, #0x72c]
	bl sub_0201FC9C
_02121D80:
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x584]
	mov r1, fp
	bl sub_02020328
	add r0, sl, sb, lsl #2
	ldr r0, [r0, #0x584]
	ldr r1, _02121EC8 ; =s_menu_overlay_11_02166380
	ldr r2, _02121ECC ; =s_rn001_bg_overlay_11_02166388
	bl sub_0202048C
	ldr r1, _02121EDC ; =s_rn001_02d_overlay_11_02166338
	ldr r2, [r6, sb, lsl #2]
	mov r0, r7
	bl OS_SPrintf
	str r5, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	add r0, sl, sb, lsl #2
	ldr r0, [r0, #0x584]
	mov r1, r7
	mov r2, r4
	mov r3, r4
	bl sub_020205DC
	add r0, sl, sb, lsl #2
	ldr r0, [r0, #0x584]
	bl sub_020204A8
	add r0, sl, sb, lsl #2
	mov r1, #0x100
	ldr r0, [r0, #0x584]
	mov r2, r1
	bl sub_0201FE18
	add sb, sb, #1
	cmp sb, #2
	ble _02121D68
	ldr r0, [sl, #0x72c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020345D4
	ldr r0, [sl, #0x72c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r1, _02121EE0 ; =0x04001008
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0x3000
	strh r0, [r1]
	ldr r0, [sl, #0x72c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB90
	mov r0, #4
	bl _Znwm
	cmp r0, #0
	beq _02121E60
	ldr r1, _02121EE4 ; =s_data_message_etc_network_mes_overlay_11_0216639c
	bl sub_02021404
_02121E60:
	ldr r5, _02121EE8 ; =s_data_message_etc_network_02d_mes_overlay_11_021663bc
	str r0, [sl, #0x534]
	mov r7, #1
	add r6, sp, #0x10
	mov r4, #4
_02121E74:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl OS_SPrintf
	mov r0, r4
	bl _Znwm
	cmp r0, #0
	beq _02121E9C
	mov r1, r6
	bl sub_02021404
_02121E9C:
	add r1, sl, r7, lsl #2
	add r7, r7, #1
	str r0, [r1, #0x534]
	cmp r7, #8
	blt _02121E74
	add sp, sp, #0x50
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02121EB8: .word 0x04001000
_02121EBC: .word 0xFFCFFFEF
_02121EC0: .word 0x00000D08
_02121EC4: .word s_rn001_overlay_11_02166394
_02121EC8: .word s_menu_overlay_11_02166380
_02121ECC: .word s_rn001_bg_overlay_11_02166388
_02121ED0: .word s_rn001_02_overlay_11_0216635c
_02121ED4: .word s_rn001_01_overlay_11_02166350
_02121ED8: .word DAT_overlay_11_02166268
_02121EDC: .word s_rn001_02d_overlay_11_02166338
_02121EE0: .word 0x04001008
_02121EE4: .word s_data_message_etc_network_mes_overlay_11_0216639c
_02121EE8: .word s_data_message_etc_network_02d_mes_overlay_11_021663bc

	arm_func_start ov11_02121EEC
ov11_02121EEC: ; 0x02121EEC
	stmdb sp!, {r4, lr}
	mov r1, #1
	mov r4, r0
	rsb r2, r1, #0x10000
	bl ov11_02124038
	mov r1, #0
	mov r0, r4
	strh r1, [r4, #2]
	bl ov11_02121F18
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02121EEC

	arm_func_start ov11_02121F18
ov11_02121F18: ; 0x02121F18
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02121C20
	mov r0, r4
	bl ov11_0211E464
	ldr r0, [r4, #0x72c]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02121F18

	arm_func_start ov11_02121F48
ov11_02121F48: ; 0x02121F48
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x72c]
	mov r4, #0
	ldr r5, [r0, #0x14]
	mov r6, r1
	str r4, [r7, #0x70c]
	ldrh r1, [r5, #6]
	and r0, r1, #0x80
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	movne r4, #0x80
	bne _02121F8C
	and r0, r1, #0x40
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	movne r4, #0x40
	arm_func_end ov11_02121F48
_02121F8C:
	cmp r4, #0
	beq _02122048
	mov r0, r7
	bl ov11_02124278
	mov r2, #1
	mov r3, #0x88
_02121FA4:
	cmp r4, #0x40
	beq _02121FD0
	cmp r4, #0x80
	bne _02121FD0
	add r1, r2, r0
	mov r5, r1, lsr #0x1f
	rsb r1, r5, r1, lsl #30
	add r1, r5, r1, ror #30
	add r1, r7, r1, lsl #2
	ldr r1, [r1, #0x328]
	b _02121FEC
_02121FD0:
	rsb r1, r2, #4
	add r1, r1, r0
	mov r5, r1, lsr #0x1f
	rsb r1, r5, r1, lsl #30
	add r1, r5, r1, ror #30
	add r1, r7, r1, lsl #2
	ldr r1, [r1, #0x328]
_02121FEC:
	cmp r1, #0
	blt _02122010
	mla r5, r1, r3, r7
	ldr r5, [r5, #0x158]
	cmp r5, #0
	bne _02122010
	mov r0, r7
	bl ov11_02123C04
	b _0212201C
_02122010:
	add r2, r2, #1
	cmp r2, #4
	blt _02121FA4
_0212201C:
	cmp r6, #0
	beq _02122038
	ldr r0, [r7, #0x72c]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_02122038:
	mov r0, #1
	str r0, [r7, #0x70c]
	mov r0, #4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02122048:
	ldr r0, [r7, #0x14]
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021220A8
	bl sub_0200EB84
	cmp r0, #0
	bne _0212207C
	ldrh r0, [r5, #2]
	and r0, r0, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _021220A8
_0212207C:
	cmp r6, #0
	beq _02122098
	ldr r0, [r7, #0x72c]
	mov r1, #0x100
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_02122098:
	mov r0, #1
	str r0, [r7, #0x70c]
	sub r0, r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021220A8:
	ldrh r0, [r5, #2]
	and r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _021220EC
	cmp r6, #0
	beq _021220D8
	ldr r0, [r7, #0x72c]
	mov r1, #0xff
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_021220D8:
	mov r1, #1
	mov r0, r7
	str r1, [r7, #0x70c]
	bl ov11_02124278
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021220EC:
	add r5, r7, #0x108
	mov r4, #0
_021220F4:
	mov r0, r5
	bl ov11_02124ED0
	cmp r0, #0
	beq _02122138
	cmp r6, #0
	beq _02122120
	ldr r0, [r7, #0x72c]
	mov r1, #0xff
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_02122120:
	mov r0, #0x88
	mla r0, r4, r0, r7
	mov r1, #1
	str r1, [r7, #0x70c]
	ldr r0, [r0, #0x160]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02122138:
	add r4, r4, #1
	cmp r4, #4
	add r5, r5, #0x88
	blt _021220F4
	mov r0, #4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov11_02122150
ov11_02122150: ; 0x02122150
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x72c]
	ldr r4, [r0, #0x14]
	ldrh r2, [r4, #6]
	and r0, r2, #0x20
	mov r1, r0, lsl #0x10
	movs r1, r1, lsr #0x10
	bne _02122184
	and r1, r2, #0x10
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	beq _021221FC
	arm_func_end ov11_02122150
_02122184:
	ldr r1, [r6, #0x520]
	cmp r1, #0xa
	beq _0212219C
	cmp r1, #0xb
	beq _021221CC
	b _021221FC
_0212219C:
	mov r0, r6
	mov r1, #0xb
	bl ov11_02123A78
	ldr r0, [r6, #0x72c]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #1
	str r0, [r6, #0x70c]
	sub r0, r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021221CC:
	mov r0, r6
	mov r1, #0xa
	bl ov11_02123A78
	ldr r0, [r6, #0x72c]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #1
	str r0, [r6, #0x70c]
	sub r0, r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021221FC:
	ldr r1, [r6, #0x520]
	sub r1, r1, #0x14
	cmp r1, #1
	bhi _021222A0
	and r1, r2, #0x10
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	beq _02122258
	ldr r0, [r6, #0x4b0]
	cmp r0, #1
	bge _021222A0
	mov r0, r6
	mov r1, #0x17
	bl ov11_02123A78
	ldr r0, [r6, #0x72c]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #1
	str r0, [r6, #0x70c]
	mov r0, #0x17
	ldmia sp!, {r4, r5, r6, pc}
_02122258:
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _021222A0
	ldr r0, [r6, #0x4b0]
	cmp r0, #0
	ble _021222A0
	mov r0, r6
	mov r1, #0x18
	bl ov11_02123A78
	ldr r0, [r6, #0x72c]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #1
	str r0, [r6, #0x70c]
	mov r0, #0x18
	ldmia sp!, {r4, r5, r6, pc}
_021222A0:
	ldr r0, [r6, #0x14]
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021222F8
	bl sub_0200EB84
	cmp r0, #0
	bne _021222D4
	ldrh r0, [r4, #2]
	and r0, r0, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _021222F8
_021222D4:
	ldr r0, [r6, #0x72c]
	mov r1, #0x100
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #1
	str r0, [r6, #0x70c]
	sub r0, r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021222F8:
	ldrh r0, [r4, #2]
	mvn r4, #0
	and r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02122324
	ldr r0, [r6, #0x520]
	cmp r0, #0x14
	cmpne r0, #0x15
	movne r4, r0
	b _02122358
_02122324:
	mov r5, #0xa
_02122328:
	ldr r0, [r6, #0x14]
	ldr r0, [r0, r5, lsl #2]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0212234C
	bl sub_0200EB84
	cmp r0, #0
	movne r4, r5
	bne _02122358
_0212234C:
	add r5, r5, #1
	cmp r5, #0x18
	ble _02122328
_02122358:
	mvn r5, #0
	cmp r4, r5
	beq _02122420
	sub r0, r4, #9
	cmp r0, #0xc
	mov r4, #0xff
	addls pc, pc, r0, lsl #2
	b _021223E4
_02122378: ; jump table
	b _021223E0 ; case 0
	b _021223AC ; case 1
	b _021223B4 ; case 2
	b _021223AC ; case 3
	b _021223B4 ; case 4
	b _021223E4 ; case 5
	b _021223E4 ; case 6
	b _021223C0 ; case 7
	b _021223C8 ; case 8
	b _021223E4 ; case 9
	b _021223E4 ; case 10
	b _021223D0 ; case 11
	b _021223D8 ; case 12
_021223AC:
	mov r5, #0xe
	b _021223E4
_021223B4:
	mov r5, #0xf
	mov r4, #0x100
	b _021223E4
_021223C0:
	mov r5, #0x12
	b _021223E4
_021223C8:
	mov r5, #0x13
	b _021223E4
_021223D0:
	mov r5, #0x17
	b _021223E4
_021223D8:
	mov r5, #0x18
	b _021223E4
_021223E0:
	mov r5, #9
_021223E4:
	mvn r0, #0
	cmp r5, r0
	beq _02122420
	mov r0, r6
	mov r1, r5
	bl ov11_02123A78
	ldr r0, [r6, #0x72c]
	mov r1, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r1, #1
	mov r0, r5
	str r1, [r6, #0x70c]
	ldmia sp!, {r4, r5, r6, pc}
_02122420:
	mvn r0, #1
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02122428
ov11_02122428: ; 0x02122428
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x72c]
	ldr r5, [r0, #0x14]
	bl sub_0201001C
	ldrh r1, [r5, #2]
	ldr r2, [r0, #0x18]
	and r0, r1, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldreqb r0, [r2, #4]
	cmpeq r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x72c]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02122428

	arm_func_start ov11_0212247C
ov11_0212247C: ; 0x0212247C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x72c]
	ldr r0, [r0]
	ldr r2, [r1, #0x14]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021224DC
	ldrh r1, [r2, #2]
	and r1, r1, #2
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	bne _021224C0
	bl sub_0200EB84
	cmp r0, #0
	beq _021224DC
	arm_func_end ov11_0212247C
_021224C0:
	ldr r0, [r4, #0x72c]
	mov r1, #0x100
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mvn r0, #0
	ldmia sp!, {r4, pc}
_021224DC:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_021224E4
ov11_021224E4: ; 0x021224E4
	stmdb sp!, {r4, lr}
	ldr r2, _0212250C ; =0x0000FFFF
	mov r4, r0
	mov r1, #0xe
	bl ov11_02124038
	mov r1, #0xf
	mov r0, r4
	strh r1, [r4, #2]
	bl ov11_02123F58
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212250C: .word 0x0000FFFF
	arm_func_end ov11_021224E4

	arm_func_start ov11_02122510
ov11_02122510: ; 0x02122510
	stmdb sp!, {r4, lr}
	ldr r2, _02122538 ; =0x0000FFFF
	mov r4, r0
	mov r1, #0xc
	bl ov11_02124038
	mov r1, #0xf
	mov r0, r4
	strh r1, [r4, #2]
	bl ov11_02123F00
	ldmia sp!, {r4, pc}
	.align 2, 0
_02122538: .word 0x0000FFFF
	arm_func_end ov11_02122510

	arm_func_start ov11_0212253C
ov11_0212253C: ; 0x0212253C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x364]
	add r2, r5, r2, lsl #2
	str r1, [r2, #0x33c]
	bl ov11_021240C0
	mov r4, r0
	mov r0, #0x88
	mla r2, r4, r0, r5
	ldr r0, [r5, #0x364]
	ldr r1, [r2, #0x15c]
	add r0, r5, r0, lsl #2
	str r1, [r0, #0x350]
	ldr r0, [r5, #0x364]
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0x350]
	cmp r0, #0x10
	addls pc, pc, r0, lsl #2
	b _021227C4
_02122588: ; jump table
	b _021225CC ; case 0
	b _02122660 ; case 1
	b _02122674 ; case 2
	b _02122674 ; case 3
	b _02122660 ; case 4
	b _02122688 ; case 5
	b _02122688 ; case 6
	b _02122688 ; case 7
	b _0212276C ; case 8
	b _0212276C ; case 9
	b _0212276C ; case 10
	b _0212269C ; case 11
	b _02122704 ; case 12
	b _02122704 ; case 13
	b _02122704 ; case 14
	b _02122704 ; case 15
	b _02122704 ; case 16
	arm_func_end ov11_0212253C
_021225CC:
	mov r0, r5
	bl ov11_02123BD4
	mov r2, #4
	mov r0, r5
	mov r1, r4
	strh r2, [r5, #2]
	bl ov11_02123C04
	mov r0, r5
	mov r1, #0
	bl ov11_02124370
	mov r0, r5
	mov r1, r4
	mov r2, #0x1e
	bl ov11_021241C8
	mov r0, r5
	mov r1, r4
	bl ov11_021240D4
	ldr r0, [r5, #0x364]
	add r0, r0, #1
	str r0, [r5, #0x364]
	ldr r4, [r5, #0x708]
	cmp r4, #0
	beq _02122644
	beq _0212263C
	mov r0, r4
	bl ov11_0212F42C
	mov r0, r4
	bl _ZdlPv
_0212263C:
	mov r0, #0
	str r0, [r5, #0x708]
_02122644:
	mov r0, #0xc
	bl _Znwm
	cmp r0, #0
	beq _02122658
	bl ov11_0212F3DC
_02122658:
	str r0, [r5, #0x708]
	ldmia sp!, {r3, r4, r5, pc}
_02122660:
	mov r0, r5
	bl ov11_02123BD4
	mov r0, #5
	strh r0, [r5, #2]
	b _021227C4
_02122674:
	mov r0, r5
	bl ov11_02123BD4
	mov r0, #5
	strh r0, [r5, #2]
	b _021227C4
_02122688:
	mov r0, r5
	bl ov11_02123BD4
	mov r0, #3
	strh r0, [r5, #2]
	b _021227C4
_0212269C:
	ldr r0, _02122808 ; =MAIN_BSS_020B26A0
	ldrb r0, [r0, #3]
	mov r0, r0, asr #4
	and r0, r0, #0xf
	cmp r0, #1
	bhs _021226F0
	mov r1, #1
	mov r0, r5
	mov r3, r1
	mov r2, #2
	str r1, [sp]
	bl ov11_02122B7C
	mov r2, #0xe
	mov r0, r5
	mov r1, r4
	strh r2, [r5, #2]
	bl ov11_02123C04
	mov r0, r5
	mov r1, #0
	bl ov11_02124370
	ldmia sp!, {r3, r4, r5, pc}
_021226F0:
	mov r0, r5
	bl ov11_02123BD4
	mov r0, #3
	strh r0, [r5, #2]
	b _021227C4
_02122704:
	ldr r0, [r5, #0x72c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	ldr r0, [r0, #8]
	cmp r0, #0x45
	bge _02122758
	mov r1, #2
	mov r3, #1
	mov r0, r5
	mov r2, r1
	str r3, [sp]
	bl ov11_02122B7C
	mov r2, #0xe
	mov r0, r5
	mov r1, r4
	strh r2, [r5, #2]
	bl ov11_02123C04
	mov r0, r5
	mov r1, #0
	bl ov11_02124370
	ldmia sp!, {r3, r4, r5, pc}
_02122758:
	mov r0, r5
	bl ov11_02123BD4
	mov r0, #3
	strh r0, [r5, #2]
	b _021227C4
_0212276C:
	ldr r0, [r2, #0x150]
	cmp r0, #0
	bne _021227B4
	mov r3, #1
	mov r0, r5
	mov r1, #2
	mov r2, #5
	str r3, [sp]
	bl ov11_02122B7C
	mov r2, #0xe
	mov r0, r5
	mov r1, r4
	strh r2, [r5, #2]
	bl ov11_02123C04
	mov r0, r5
	mov r1, #0
	bl ov11_02124370
	ldmia sp!, {r3, r4, r5, pc}
_021227B4:
	mov r0, r5
	bl ov11_02123BD4
	mov r0, #3
	strh r0, [r5, #2]
_021227C4:
	mov r0, r5
	mov r1, r4
	bl ov11_02123C04
	mov r0, r5
	mov r1, #0
	bl ov11_02124370
	mov r0, r5
	mov r1, r4
	mov r2, #0x1e
	bl ov11_021241C8
	mov r0, r5
	mov r1, r4
	bl ov11_021240D4
	ldr r0, [r5, #0x364]
	add r0, r0, #1
	str r0, [r5, #0x364]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02122808: .word MAIN_BSS_020B26A0

	arm_func_start ov11_0212280C
ov11_0212280C: ; 0x0212280C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x364]
	sub r1, r1, #1
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x350]
	cmp r1, #0x10
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, r4, r5, pc}
_02122830: ; jump table
	ldmia sp!, {r3, r4, r5, pc} ; case 0
	ldmia sp!, {r3, r4, r5, pc} ; case 1
	ldmia sp!, {r3, r4, r5, pc} ; case 2
	ldmia sp!, {r3, r4, r5, pc} ; case 3
	ldmia sp!, {r3, r4, r5, pc} ; case 4
	b _02122874 ; case 5
	b _02122894 ; case 6
	b _021228AC ; case 7
	b _02122944 ; case 8
	b _0212295C ; case 9
	b _021229A0 ; case 10
	b _021228C4 ; case 11
	b _021228C4 ; case 12
	b _021228C4 ; case 13
	b _021228C4 ; case 14
	b _021228C4 ; case 15
	b _021228C4 ; case 16
	arm_func_end ov11_0212280C
_02122874:
	ldr r2, _021229E4 ; =0x0000FFFF
	mov r1, #8
	bl ov11_02124038
	mov r1, #0
	mov r0, r5
	strh r1, [r5, #2]
	bl ov11_02123F58
	ldmia sp!, {r3, r4, r5, pc}
_02122894:
	ldr r2, _021229E4 ; =0x0000FFFF
	mov r1, #4
	bl ov11_02124038
	mov r0, #0
	strh r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
_021228AC:
	ldr r2, _021229E4 ; =0x0000FFFF
	mov r1, #5
	bl ov11_02124038
	mov r0, #0
	strh r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
_021228C4:
	sub r4, r1, #0xb
	mov r1, r4
	bl ov11_02122C48
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x638]
	mov r1, #3
	cmp r0, #2
	bne _021228EC
	cmp r4, #3
	movlt r1, #4
_021228EC:
	mov r2, #1
	str r2, [sp]
	mov r0, r5
	mov r2, #2
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r5, #0x72c]
	ldr r2, _021229E4 ; =0x0000FFFF
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4a4]
	mov r0, r5
	add r3, r1, #0x8000
	add r4, r4, #1
	mov r1, #3
	str r4, [r3, #0x1ac]
	bl ov11_02124038
	mov r2, #0xd
	mov r0, r5
	mov r1, #0xb
	strh r2, [r5, #2]
	bl ov11_021217C0
	ldmia sp!, {r3, r4, r5, pc}
_02122944:
	ldr r2, _021229E4 ; =0x0000FFFF
	mov r1, #6
	bl ov11_02124038
	mov r0, #0
	strh r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
_0212295C:
	ldr r1, [r5, #0x72c]
	mov r4, #1
	add r1, r1, #0x1000
	ldr r1, [r1, #0x498]
	ldr ip, _021229E8 ; =0x000001EB
	rsb r2, r4, #0x10000
	str ip, [r1, #0x30]
	ldr r3, [r5, #0x72c]
	mov r1, #7
	add r3, r3, #0x1000
	ldr r3, [r3, #0x494]
	str ip, [r3, #0x34]
	str r4, [r5, #0x604]
	bl ov11_02124038
	mov r0, #0
	strh r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
_021229A0:
	ldr r1, [r5, #0x72c]
	ldr ip, _021229EC ; =0x000001BF
	add r1, r1, #0x1000
	ldr r1, [r1, #0x498]
	ldr r2, _021229E4 ; =0x0000FFFF
	str ip, [r1, #0x30]
	ldr r1, [r5, #0x72c]
	mov r3, #0
	add r1, r1, #0x1000
	ldr r4, [r1, #0x494]
	mov r1, #7
	str ip, [r4, #0x34]
	str r3, [r5, #0x604]
	bl ov11_02124038
	mov r0, #0
	strh r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021229E4: .word 0x0000FFFF
_021229E8: .word 0x000001EB
_021229EC: .word 0x000001BF

	arm_func_start ov11_021229F0
ov11_021229F0: ; 0x021229F0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	str r1, [sp]
	mov sb, r2
	mov r4, #1
	arm_func_end ov11_021229F0
_02122A04:
	mov r0, sl
	mov r1, r4
	bl ov11_02124150
	add r4, r4, #1
	cmp r4, #4
	blt _02122A04
	ldr r0, [sp]
	mov r1, #0x30
	mla r5, r0, r1, sl
	mov r8, #0
	mov r6, r8
	str r0, [sl, #0x4b0]
	add r4, sl, #0x108
	mov fp, #0x88
_02122A3C:
	ldr r1, [r5, #0x4b8]
	cmp r1, #0
	blt _02122ABC
	ldr r2, [r5, #0x4bc]
	mov r0, sl
	mov r3, #0
	bl ov11_02122B04
	mul r7, r0, fp
	ldr r1, [r5, #0x4c0]
	add r0, r4, r7
	bl ov11_021247A8
	cmp sb, #0
	beq _02122A88
	add r1, sl, r7
	add r0, r4, r7
	ldr r1, [r1, #0x160]
	mov r2, r6
	bl ov11_02124BB0
	b _02122ABC
_02122A88:
	add r0, sl, r7
	ldr r0, [r0, #0x160]
	bl ov11_02124EB0
	mov r2, r0
	add r0, r4, r7
	mov r1, #0x80
	bl ov11_02124844
	add r0, r4, r7
	mov r1, #1
	bl ov11_021248EC
	add r0, r4, r7
	mov r1, #1
	bl ov11_02124EBC
_02122ABC:
	add r8, r8, #1
	cmp r8, #3
	add r5, r5, #0xc
	add r6, r6, #0x5000
	blt _02122A3C
	ldr r0, [sl, #0x4b4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp]
	cmp r0, #0
	mov r0, sl
	bne _02122AF8
	mov r1, #0x14
	bl ov11_021217C0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02122AF8:
	mov r1, #0x15
	bl ov11_021217C0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov11_02122B04
ov11_02122B04: ; 0x02122B04
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	bl ov11_02124054
	movs r6, r0
	mvnmi r0, #0
	ldmmiia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r5
	bl ov11_02124094
	mov r2, r0
	mov r0, r5
	mov r1, r6
	bl ov11_02124260
	mov r0, #0x88
	mul r4, r6, r0
	add r5, r5, #0x108
	mov r1, sb
	add r0, r5, r4
	bl ov11_02124820
	mov r1, r8
	add r0, r5, r4
	bl ov11_02124730
	add r0, r5, r4
	mov r1, r7
	mov r2, #1
	bl ov11_02124680
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov11_02122B04

	arm_func_start ov11_02122B7C
ov11_02122B7C: ; 0x02122B7C
	stmdb sp!, {r3, lr}
	mov ip, #1
	str ip, [r0, #0x38]
	str r3, [r0, #0x5a0]
	str r2, [r0, #0x554]
	mov r3, #0
	ldr r2, [sp, #8]
	str r3, [r0, #0x580]
	str r2, [r0, #0x5a4]
	bl ov11_02122BD4
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02122B7C

	arm_func_start ov11_02122BA8
ov11_02122BA8: ; 0x02122BA8
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x72c]
	cmp r2, #0
	add r0, r0, #0x1000
	beq _02122BC8
	ldr r0, [r0, #0x494]
	bl sub_0200CA70
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02122BA8
_02122BC8:
	ldr r0, [r0, #0x498]
	bl sub_0200CFB0
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02122BD4
ov11_02122BD4: ; 0x02122BD4
	ldr r2, [r0, #0x580]
	cmp r2, #0xa
	bxge lr
	add r2, r0, r2, lsl #2
	str r1, [r2, #0x558]
	ldr r1, [r0, #0x580]
	add r1, r1, #1
	str r1, [r0, #0x580]
	bx lr
	arm_func_end ov11_02122BD4

	arm_func_start ov11_02122BF8
ov11_02122BF8: ; 0x02122BF8
	cmp r1, #0xa
	addlt r0, r0, r1, lsl #2
	strlt r2, [r0, #0x5d0]
	bx lr
	arm_func_end ov11_02122BF8

	arm_func_start ov11_02122C08
ov11_02122C08: ; 0x02122C08
	cmp r1, #0xa
	addlt r0, r0, r1, lsl #2
	strlt r2, [r0, #0x5a8]
	bx lr
	arm_func_end ov11_02122C08

	arm_func_start ov11_02122C18
ov11_02122C18: ; 0x02122C18
	stmdb sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0x724]
	mov ip, r1
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r2, lr, r2, lsl #2
	mov r1, r3
	ldr r3, [r2, #0x534]
	mov r2, ip
	bl ov11_0211D7D4
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02122C18

	arm_func_start ov11_02122C48
ov11_02122C48: ; 0x02122C48
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x724]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov11_0211D804
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02122C48

	arm_func_start ov11_02122C60
ov11_02122C60: ; 0x02122C60
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r1, [r4, #0x38]
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, #0
	str r1, [r4, #0x38]
	ldr r1, [r4, #0x5a0]
	bl ov11_02123794
	ldr r0, [r4, #0x72c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	ldr r0, [r4, #0x5a4]
	cmp r0, #0
	beq _02122CEC
	ldr r1, [r4, #0x72c]
	ldr r0, [r4, #0x548]
	add r1, r1, #0x1000
	ldr r5, [r1, #0x498]
	mov r1, #1
	bl sub_020215F8
	mov r3, #3
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #8]
	mov r0, r5
	mov r2, r1
	str r1, [sp, #0xc]
	bl sub_0200CDA0
	arm_func_end ov11_02122C60
_02122CEC:
	ldr r0, [r4, #0x59c]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02123220
_02122CFC: ; jump table
	b _02122D14 ; case 0
	b _02122D74 ; case 1
	b _02122DD4 ; case 2
	b _02123220 ; case 3
	b _02122EA8 ; case 4
	b _02123064 ; case 5
_02122D14:
	ldr r0, [r4, #0x72c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	ldr r0, [r4, #0x554]
	ldr r1, [r4, #0x72c]
	add r0, r4, r0, lsl #2
	add r2, r1, #0x1000
	ldr r1, [r4, #0x558]
	ldr r0, [r0, #0x534]
	ldr r4, [r2, #0x498]
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r4
	mov r3, #3
	str r2, [sp, #0xc]
	bl sub_0200CDA0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
_02122D74:
	ldr r0, [r4, #0x72c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	ldr r0, [r4, #0x554]
	ldr r1, [r4, #0x72c]
	add r0, r4, r0, lsl #2
	add r2, r1, #0x1000
	ldr r1, [r4, #0x558]
	ldr r0, [r0, #0x534]
	ldr r4, [r2, #0x498]
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r4
	mov r3, #3
	str r2, [sp, #0xc]
	bl sub_0200CDA0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
_02122DD4:
	ldr r0, [r4, #0x72c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	ldr r0, [r4, #0x72c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	ldr r0, [r4, #0x72c]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	ldr r0, [r4, #0x554]
	ldr r2, [r4, #0x72c]
	add r1, r4, r0, lsl #2
	add r0, r2, #0x1000
	ldr r5, [r0, #0x498]
	ldr r0, [r1, #0x534]
	ldr r1, [r4, #0x558]
	bl sub_020215F8
	mov r3, #3
	str r3, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, r5
	mov r1, #1
	mov r2, #0x17
	bl sub_0200CDA0
	ldr r0, [r4, #0x72c]
	ldr r1, [r4, #0x554]
	add r0, r0, #0x1000
	ldr r5, [r0, #0x498]
	add r0, r4, r1, lsl #2
	ldr r0, [r0, #0x534]
	ldr r1, [r4, #0x55c]
	bl sub_020215F8
	mov r3, #3
	str r3, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r2, #0
	mov r0, r5
	mov r1, #2
	str r2, [sp, #0xc]
	bl sub_0200CDA0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
_02122EA8:
	ldr r0, [r4, #0x72c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	ldr r0, [r4, #0x554]
	ldr r1, [r4, #0x72c]
	add r0, r4, r0, lsl #2
	add r1, r1, #0x1000
	ldr r5, [r1, #0x498]
	ldr r0, [r0, #0x534]
	mov r1, #9
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r5
	str r2, [sp, #0xc]
	mov r3, #3
	bl sub_0200CDA0
	ldr r0, [r4, #0x554]
	ldr r2, [r4, #0x72c]
	add r1, r4, r0, lsl #2
	add r0, r2, #0x1000
	ldr r5, [r0, #0x498]
	ldr r0, [r1, #0x534]
	mov r1, #0xa
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r5
	str r2, [sp, #0xc]
	mov r3, #0xe
	bl sub_0200CDA0
	ldr r0, [r4, #0x5a8]
	mov r1, #1
	stmia sp, {r0, r1}
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, r4
	mov r2, #0x46
	mov r3, #0xe
	bl ov11_0212331C
	ldr r0, [r4, #0x72c]
	ldr r1, [r4, #0x554]
	add r0, r0, #0x1000
	ldr r5, [r0, #0x498]
	add r0, r4, r1, lsl #2
	ldr r0, [r0, #0x534]
	mov r1, #0xb
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r5
	mov r3, #0x1a
	str r2, [sp, #0xc]
	bl sub_0200CDA0
	mov r1, #1
	str r1, [sp]
	mov r2, #0
	mov r0, r4
	str r2, [sp, #4]
	mov r3, #0x26
	bl ov11_02123228
	ldr r0, [r4, #0x554]
	ldr r1, [r4, #0x72c]
	add r0, r4, r0, lsl #2
	add r1, r1, #0x1000
	ldr r5, [r1, #0x498]
	ldr r0, [r0, #0x534]
	mov r1, #0xc
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, r5
	mov r2, #0x64
	mov r3, #0x26
	bl sub_0200CDA0
	ldr r0, [r4, #0x554]
	ldr r2, [r4, #0x72c]
	add r1, r4, r0, lsl #2
	add r0, r2, #0x1000
	ldr r5, [r0, #0x498]
	ldr r0, [r1, #0x534]
	ldr r1, [r4, #0x558]
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r5
	mov r3, #0x3e
	str r2, [sp, #0xc]
	bl sub_0200CDA0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
_02123064:
	ldr r0, [r4, #0x72c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	ldr r0, [r4, #0x554]
	ldr r1, [r4, #0x72c]
	add r0, r4, r0, lsl #2
	add r1, r1, #0x1000
	ldr r5, [r1, #0x498]
	ldr r0, [r0, #0x534]
	mov r1, #9
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r5
	str r2, [sp, #0xc]
	mov r3, #3
	bl sub_0200CDA0
	ldr r0, [r4, #0x554]
	ldr r2, [r4, #0x72c]
	add r1, r4, r0, lsl #2
	add r0, r2, #0x1000
	ldr r5, [r0, #0x498]
	ldr r0, [r1, #0x534]
	mov r1, #0xa
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r5
	str r2, [sp, #0xc]
	mov r3, #0xe
	bl sub_0200CDA0
	ldr r0, [r4, #0x5a8]
	mov r1, #1
	stmia sp, {r0, r1}
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, r4
	mov r2, #0x50
	mov r3, #0xe
	bl ov11_0212331C
	ldr r0, [r4, #0x72c]
	ldr r1, [r4, #0x554]
	add r0, r0, #0x1000
	ldr r5, [r0, #0x498]
	add r0, r4, r1, lsl #2
	ldr r0, [r0, #0x534]
	mov r1, #0xb
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r5
	mov r3, #0x1a
	str r2, [sp, #0xc]
	bl sub_0200CDA0
	ldr r0, [r4, #0x5d0]
	mov r1, #1
	stmia sp, {r0, r1}
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r4
	mov r2, #0x50
	mov r3, #0x1a
	bl ov11_02123598
	ldr r0, [r4, #0x554]
	ldr r1, [r4, #0x72c]
	add r0, r4, r0, lsl #2
	add r1, r1, #0x1000
	ldr r5, [r1, #0x498]
	ldr r0, [r0, #0x534]
	mov r1, #0xc
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, r5
	mov r2, #0x64
	mov r3, #0x26
	bl sub_0200CDA0
	ldr r0, [r4, #0x554]
	ldr r2, [r4, #0x72c]
	add r1, r4, r0, lsl #2
	add r0, r2, #0x1000
	ldr r5, [r0, #0x498]
	ldr r0, [r1, #0x534]
	ldr r1, [r4, #0x558]
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, r5
	mov r3, #0x3e
	str r2, [sp, #0xc]
	bl sub_0200CDA0
_02123220:
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02123228
ov11_02123228: ; 0x02123228
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r5, [r8, #0x5ac]
	ldr r4, [sp, #0x30]
	str r5, [sp]
	ldr r5, [sp, #0x34]
	mov ip, #4
	stmib sp, {r4, r5}
	mov r7, r1
	mov r6, r2
	mov r5, r3
	str ip, [sp, #0xc]
	bl ov11_0212331C
	ldr r0, [sp, #0x34]
	ldr r1, [r8, #0x72c]
	cmp r0, #0
	ldr r0, [r8, #0x54c]
	beq _021232B0
	add r1, r1, #0x1000
	ldr sb, [r1, #0x494]
	mov r1, #0xa
	bl sub_020215F8
	str r4, [sp]
	str r0, [sp, #4]
	mov ip, #0
	str ip, [sp, #8]
	mov r0, sb
	mov r1, r7
	mov r3, r5
	add r2, r6, #0x1c
	str ip, [sp, #0xc]
	bl sub_0200C7A4
	b _021232E8
	arm_func_end ov11_02123228
_021232B0:
	add r1, r1, #0x1000
	ldr sb, [r1, #0x498]
	mov r1, #0xa
	bl sub_020215F8
	str r4, [sp]
	str r0, [sp, #4]
	mov ip, #0
	str ip, [sp, #8]
	mov r0, sb
	mov r1, r7
	mov r3, r5
	add r2, r6, #0x1c
	str ip, [sp, #0xc]
	bl sub_0200CDA0
_021232E8:
	ldr r0, [r8, #0x5b0]
	ldr r2, [sp, #0x34]
	stmia sp, {r0, r4}
	str r2, [sp, #8]
	mov r4, #4
	mov r0, r8
	mov r1, r7
	mov r3, r5
	add r2, r6, #0x23
	str r4, [sp, #0xc]
	bl ov11_0212331C
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov11_0212331C
ov11_0212331C: ; 0x0212331C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	ldr r6, [sp, #0x40]
	mov sl, r0
	mov fp, r3
	ldr r0, [sp, #0x48]
	cmp r6, #0
	ldr r3, [sp, #0x4c]
	ldrlt r6, [sl, #0x5a8]
	mov sb, r1
	mov r8, r2
	ldr r7, [sp, #0x44]
	str r0, [sp, #0x48]
	mov r4, #1
	mov r5, #0xa
	cmp r3, #0
	blt _0212338C
	cmp r3, #1
	mov r2, #1
	ble _021233AC
	mov r1, #0xa
	arm_func_end ov11_0212331C
_02123370:
	mul r0, r5, r1
	add r2, r2, #1
	mov r5, r0
	cmp r2, r3
	add r4, r4, #1
	blt _02123370
	b _021233AC
_0212338C:
	cmp r6, #0xa
	blt _021233AC
	mov r1, #0xa
_02123398:
	mul r0, r5, r1
	mov r5, r0
	cmp r6, r0
	add r4, r4, #1
	bge _02123398
_021233AC:
	mov r0, #0
	cmp r4, #0
	str r0, [sp, #0x10]
	addle sp, sp, #0x1c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021233C0:
	mov r0, r6
	mov r1, r5
	bl _s32_div_f
	ldr r2, _021234A4 ; =0x66666667
	mov r0, r1
	smull r3, r1, r2, r5
	mov r2, r5, lsr #0x1f
	add r1, r2, r1, asr #2
	bl _s32_div_f
	mov r1, r0
	ldr r0, [sp, #0x48]
	ldr r2, [sl, #0x72c]
	cmp r0, #0
	ldr r0, [sl, #0x54c]
	beq _02123438
	add r2, r2, #0x1000
	ldr r2, [r2, #0x494]
	str r2, [sp, #0x18]
	bl sub_020215F8
	str r7, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x18]
	mov r1, sb
	mov r2, r8
	mov r3, fp
	bl sub_0200C7A4
	b _02123470
_02123438:
	add r2, r2, #0x1000
	ldr r2, [r2, #0x498]
	str r2, [sp, #0x14]
	bl sub_020215F8
	str r7, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	mov r1, sb
	mov r2, r8
	mov r3, fp
	bl sub_0200CDA0
_02123470:
	ldr r0, _021234A4 ; =0x66666667
	mov r2, r5
	smull r1, r5, r0, r2
	mov r0, r2, lsr #0x1f
	add r5, r0, r5, asr #2
	ldr r0, [sp, #0x10]
	add r8, r8, #7
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r4
	blt _021233C0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021234A4: .word 0x66666667

	arm_func_start ov11_021234A8
ov11_021234A8: ; 0x021234A8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs r8, r2
	mov sl, r0
	ldrmi r8, [sl, #0x5a8]
	mov sb, r1
	mov r4, #1
	mov r5, #0xa
	cmp r3, #0
	blt _021234F8
	cmp r3, #1
	mov r2, #1
	ble _02123518
	mov r1, #0xa
	arm_func_end ov11_021234A8
_021234DC:
	mul r0, r5, r1
	add r2, r2, #1
	mov r5, r0
	cmp r2, r3
	add r4, r4, #1
	blt _021234DC
	b _02123518
_021234F8:
	cmp r8, #0xa
	blt _02123518
	mov r1, #0xa
_02123504:
	mul r0, r5, r1
	mov r5, r0
	cmp r8, r0
	add r4, r4, #1
	bge _02123504
_02123518:
	mov r7, #0
	strb r7, [sb]
	cmp r4, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr fp, _02123594 ; =0x66666667
	mov r6, r7
_02123530:
	mov r0, r8
	mov r1, r5
	bl _s32_div_f
	mov r0, r1
	smull r3, r1, fp, r5
	mov r2, r5, lsr #0x1f
	add r1, r2, r1, asr #2
	bl _s32_div_f
	mov r1, r0
	ldr r0, [sl, #0x54c]
	bl sub_020215F8
	mov r1, r0
	mov r0, sb
	bl STD_ConcatenateString
	add r7, r7, #1
	add r6, r6, #3
	mov r0, #0
	mov r1, r5
	strb r0, [sb, r6]
	smull r0, r5, fp, r1
	mov r0, r1, lsr #0x1f
	add r5, r0, r5, asr #2
	cmp r7, r4
	blt _02123530
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02123594: .word 0x66666667

	arm_func_start ov11_02123598
ov11_02123598: ; 0x02123598
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x44
	ldr sb, [sp, #0x68]
	mov r8, r0
	cmp sb, #0
	ldreq sb, [r8, #0x5d0]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	add sl, sp, #0x10
	arm_func_end ov11_02123598
_021235C0:
	ldrh r4, [sb], #2
	cmp r4, #0
	ldrne r0, _02123744 ; =0x0000FFFF
	cmpne r4, r0
	beq _021236BC
	mov r1, #0
	ldr r3, _02123748 ; =DAT_overlay_11_02166284
	mov r0, r1
_021235E0:
	mov ip, r0, lsl #1
	ldrh r2, [r3, ip]
	cmp r4, r2
	blo _02123600
	add r2, r3, ip
	ldrh r2, [r2, #2]
	cmp r4, r2
	bls _02123610
_02123600:
	add r1, r1, #1
	cmp r1, #7
	add r0, r0, #2
	blt _021235E0
_02123610:
	cmp r1, #7
	movge r0, #0x20
	strgeb r0, [sl], #1
	bge _021235C0
	ldr r0, _02123748 ; =DAT_overlay_11_02166284
	mov r2, r1, lsl #2
	ldrh r2, [r0, r2]
	ldr r0, [r8, #0x550]
	sub r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r4, r2, lsr #0x10
	bl sub_020215F8
	cmp r4, #0
	mov r1, #0
	ble _0212368C
_0212364C:
	ldrsb r2, [r0]
	and r2, r2, #0x80
	cmp r2, #0x80
	addne r0, r0, #1
	bne _02123680
	ldrsb r2, [r0, #1]!
	and r2, r2, #0xc0
	cmp r2, #0x80
	bne _02123680
_02123670:
	ldrsb r2, [r0, #1]!
	and r2, r2, #0xc0
	cmp r2, #0x80
	beq _02123670
_02123680:
	add r1, r1, #1
	cmp r1, r4
	blt _0212364C
_0212368C:
	ldrsb r2, [r0]
	and r1, r2, #0x80
	cmp r1, #0x80
	strneb r2, [sl], #1
	bne _021235C0
_021236A0:
	ldrsb r1, [r0]
	strb r1, [sl], #1
	ldrsb r1, [r0, #1]!
	and r1, r1, #0xc0
	cmp r1, #0x80
	beq _021236A0
	b _021235C0
_021236BC:
	mov r2, #0
	strb r2, [sl]
	ldr r0, [sp, #0x70]
	strb r2, [sl, #1]
	cmp r0, #0
	strb r2, [sl, #2]
	add r0, sp, #0x10
	beq _02123710
	ldr r1, [sp, #0x6c]
	mov r3, r5
	str r1, [sp]
	stmib sp, {r0, r2}
	str r2, [sp, #0xc]
	ldr r0, [r8, #0x72c]
	mov r1, r7
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r2, r6
	bl sub_0200C7A4
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_02123710:
	ldr r1, [sp, #0x6c]
	mov r3, r5
	str r1, [sp]
	stmib sp, {r0, r2}
	str r2, [sp, #0xc]
	ldr r0, [r8, #0x72c]
	mov r1, r7
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r2, r6
	bl sub_0200CDA0
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02123744: .word 0x0000FFFF
_02123748: .word DAT_overlay_11_02166284

	arm_func_start ov11_0212374C
ov11_0212374C: ; 0x0212374C
	stmdb sp!, {r3, lr}
	mov r3, #0
	cmp r2, #0
	movne r3, #1
	cmp r1, #6
	addlt r1, r1, #7
	blt _0212377C
	cmp r2, #0
	mov r2, #0x28
	movne r2, #0x13
	sub r1, r1, #6
	add r1, r1, r2
	arm_func_end ov11_0212374C
_0212377C:
	mov ip, #1
	mov r2, r3
	mov r3, #0
	str ip, [sp]
	bl ov11_02122B7C
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02123794
ov11_02123794: ; 0x02123794
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #0x59c]
	cmp r0, r1
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, pc}
	str r1, [r5, #0x59c]
	ldr r0, [r5, #0x72c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	bl G2S_GetBG0CharPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x20
	bl MIi_CpuClearFast
	bl G2S_GetBG0ScrPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x800
	bl MIi_CpuClearFast
	ldr r0, [r5, #0x14]
	mov r2, #0
	ldr r0, [r0, #0x24]
	mov r1, #2
	str r2, [r0, #0x14]
	ldr r0, [r5, #0x59c]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _021239F8
_02123810: ; jump table
	b _0212382C ; case 0
	b _0212382C ; case 1
	b _02123828 ; case 2
	b _021239F8 ; case 3
	b _0212382C ; case 4
	b _0212382C ; case 5
	arm_func_end ov11_02123794
_02123828:
	add r1, r1, #1
_0212382C:
	ldr r3, _02123A74 ; =0x04001000
	ldr r2, [r3]
	ldr r0, [r3]
	and r2, r2, #0x1f00
	mov r4, r2, lsr #8
	bic r2, r0, #0x1f00
	orr r0, r4, #8
	orr r0, r2, r0, lsl #8
	str r0, [r3]
	ldr r0, [r5, #0x72c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CC88
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r0, [r5, #0x72c]
	mov r2, #0x14
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CCD0
	ldr r4, [r5, #0x59c]
	cmp r4, #5
	addls pc, pc, r4, lsl #2
	b _021239E4
_021238AC: ; jump table
	b _021238C8 ; case 0
	b _02123910 ; case 1
	b _02123954 ; case 2
	b _021239E4 ; case 3
	b _021238C4 ; case 4
	b _021238C4 ; case 5
_021238C4:
	mov r4, #0
_021238C8:
	mov r0, #6
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x72c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r2, #0x16
	mov r3, #0x10
	bl sub_0200CCD0
	b _021239E4
_02123910:
	mov r3, #6
	str r3, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x72c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r2, #0x16
	bl sub_0200CCD0
	b _021239E4
_02123954:
	mov r0, #5
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x72c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r2, #0x16
	mov r3, #6
	bl sub_0200CCD0
	mov r0, #5
	mov r1, #2
	str r0, [sp]
	mov r2, #0x16
	str r2, [sp, #4]
	mov r0, #0xb4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x72c]
	mov r3, r1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CCD0
	ldr r0, [r5, #0x14]
	mov r1, #1
	ldr r0, [r0, #0x24]
	str r1, [r0, #0x14]
_021239E4:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x584]
	bl sub_0201FEBC
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
_021239F8:
	ldr r0, [r5, #0x72c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CC88
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r0, [r5, #0x72c]
	mov r2, #0x14
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CCD0
	ldr r2, _02123A74 ; =0x04001000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	bic r0, r3, #8
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02123A74: .word 0x04001000

	arm_func_start ov11_02123A78
ov11_02123A78: ; 0x02123A78
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x520]
	bl ov11_02123BD4
	ldr r0, [r4, #0x520]
	sub r0, r0, #9
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _02123B64
_02123A9C: ; jump table
	b _02123B64 ; case 0
	b _02123ADC ; case 1
	b _02123AF0 ; case 2
	b _02123B64 ; case 3
	b _02123B64 ; case 4
	b _02123B04 ; case 5
	b _02123B1C ; case 6
	b _02123B44 ; case 7
	b _02123B34 ; case 8
	b _02123B5C ; case 9
	b _02123B4C ; case 10
	b _02123B44 ; case 11
	b _02123B44 ; case 12
	b _02123B64 ; case 13
	b _02123B5C ; case 14
	b _02123B5C ; case 15
	arm_func_end ov11_02123A78
_02123ADC:
	ldr r1, [r4, #0x14]
	mov r0, #1
	ldr r1, [r1, #0x34]
	str r0, [r1, #0x14]
	b _02123B68
_02123AF0:
	ldr r1, [r4, #0x14]
	mov r0, #1
	ldr r1, [r1, #0x30]
	str r0, [r1, #0x14]
	b _02123B68
_02123B04:
	ldr r0, [r4, #0x14]
	mov r2, #1
	ldr r1, [r0, #0x34]
	mov r0, #0
	str r2, [r1, #0x14]
	b _02123B68
_02123B1C:
	ldr r0, [r4, #0x14]
	mov r2, #1
	ldr r1, [r0, #0x30]
	mov r0, #0
	str r2, [r1, #0x14]
	b _02123B68
_02123B34:
	ldr r0, [r4, #0x14]
	mov r1, #1
	ldr r0, [r0, #0x18]
	str r1, [r0, #0x14]
_02123B44:
	mov r0, #1
	b _02123B68
_02123B4C:
	ldr r0, [r4, #0x14]
	mov r1, #1
	ldr r0, [r0, #0x18]
	str r1, [r0, #0x14]
_02123B5C:
	mov r0, #0
	b _02123B68
_02123B64:
	ldmia sp!, {r4, pc}
_02123B68:
	ldr r3, [r4, #0x520]
	cmp r3, #0x19
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0x14]
	mov r2, #1
	ldr r1, [r1, r3, lsl #2]
	str r2, [r1, #0x14]
	ldr r1, [r4, #0x4ac]
	cmp r1, r0
	strne r0, [r4, #0x4ac]
	strne r2, [r4, #0x4a8]
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02123B98
ov11_02123B98: ; 0x02123B98
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x4a8]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	mov r1, #0
	str r1, [r0, #0x4a8]
	ldr r1, [r0, #0x4ac]
	cmp r1, #0
	beq _02123BC8
	ldr r0, [r0, #0xa8]
	bl sub_0200F398
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02123B98
_02123BC8:
	ldr r0, [r0, #0xac]
	bl sub_0200F398
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02123BD4
ov11_02123BD4: ; 0x02123BD4
	mov r3, #0xa
	mov r2, #0
	arm_func_end ov11_02123BD4
_02123BDC:
	ldr r1, [r0, #0x14]
	ldr r1, [r1, r3, lsl #2]
	add r3, r3, #1
	str r2, [r1, #0x14]
	cmp r3, #0x18
	ble _02123BDC
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x18]
	str r2, [r0, #0x14]
	bx lr

	arm_func_start ov11_02123C04
ov11_02123C04: ; 0x02123C04
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	mov r4, #0
	mov r6, r1
	add r5, r7, #0x108
	mov r8, r4
	mov sb, #1
	arm_func_end ov11_02123C04
_02123C20:
	ldr r0, [r7, #0x140]
	cmp r0, #0
	beq _02123C74
	cmp r6, r4
	ldr r0, [r7, #0x158]
	bne _02123C5C
	cmp r0, #0
	bne _02123C74
	ldr r2, [r7, #0x150]
	mov r0, r5
	mov r1, sb
	bl ov11_02124680
	mov r0, r5
	bl ov11_021249E0
	b _02123C74
_02123C5C:
	cmp r0, #1
	bne _02123C74
	ldr r2, [r7, #0x150]
	mov r0, r5
	mov r1, r8
	bl ov11_02124680
_02123C74:
	add r4, r4, #1
	cmp r4, #4
	add r7, r7, #0x88
	add r5, r5, #0x88
	blt _02123C20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov11_02123C8C
ov11_02123C8C: ; 0x02123C8C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	ldr r4, _02123CE8 ; =s_PRS_MISSION_02d_prs_overlay_11_021663e0
	mov r7, r1
	mov r6, #0
	add r5, sp, #0
	arm_func_end ov11_02123C8C
_02123CA4:
	mov r0, r5
	mov r1, r4
	add r2, r6, #1
	bl OS_SPrintf
	mov r0, r5
	mov r1, r7
	bl strcmp
	cmp r0, #0
	addeq sp, sp, #0x30
	moveq r0, r6
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r6, r6, #1
	cmp r6, #0xb
	blt _02123CA4
	mvn r0, #0
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02123CE8: .word s_PRS_MISSION_02d_prs_overlay_11_021663e0

	arm_func_start ov11_02123CEC
ov11_02123CEC: ; 0x02123CEC
	ldr ip, _02123D04 ; =FUN_02056F00
	add r0, r0, #0x258
	mov r2, r1
	ldr r1, _02123D08 ; =s_RNS_overlay_11_021663f8
	add r0, r0, #0x400
	bx ip
	.align 2, 0
_02123D04: .word NNS_FndMountArchive
_02123D08: .word s_RNS_overlay_11_021663f8
	arm_func_end ov11_02123CEC

	arm_func_start ov11_02123D0C
ov11_02123D0C: ; 0x02123D0C
	ldr ip, _02123D1C ; =FUN_02057048
	add r0, r0, #0x258
	add r0, r0, #0x400
	bx ip
	.align 2, 0
_02123D1C: .word NNS_FndUnmountArchive
	arm_func_end ov11_02123D0C

	arm_func_start ov11_02123D20
ov11_02123D20: ; 0x02123D20
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0xa8
	mov r5, r1
	mov r1, r2
	mov r6, r0
	mov r4, r3
	bl ov11_02123CEC
	cmp r0, #0
	addeq sp, sp, #0xa8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, _02123DD4 ; =s_PRS_MISSION_0d_dat_overlay_11_021663fc
	add r0, sp, #0x30
	add r2, r5, #1
	bl OS_SPrintf
	ldr r1, _02123DD8 ; =s_RNS_s_overlay_11_02166410
	add r0, sp, #0
	add r2, sp, #0x30
	bl OS_SPrintf
	add r0, sp, #0x60
	bl FS_InitFile
	add r0, sp, #0x60
	add r1, sp, #0
	bl FS_OpenFile
	cmp r0, #0
	bne _02123D9C
	mov r0, r6
	bl ov11_02123D0C
	add sp, sp, #0xa8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02123D20
_02123D9C:
	ldr r3, [sp, #0x88]
	ldr r2, [sp, #0x84]
	add r0, sp, #0x60
	mov r1, r4
	sub r2, r3, r2
	bl FS_ReadFile
	mov r4, r0
	mov r0, r6
	bl ov11_02123D0C
	cmp r4, #0
	movge r0, #1
	movlt r0, #0
	add sp, sp, #0xa8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02123DD4: .word s_PRS_MISSION_0d_dat_overlay_11_021663fc
_02123DD8: .word s_RNS_s_overlay_11_02166410

	arm_func_start ov11_02123DDC
ov11_02123DDC: ; 0x02123DDC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_0211E030
	str r0, [r4, #0x6ec]
	mov r2, #0
	mvn r1, #0
	arm_func_end ov11_02123DDC
_02123DF4:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x6c0]
	cmp r2, #0xb
	blt _02123DF4
	ldr r0, [r4, #0x6ec]
	mov lr, #1
	cmp r0, #0
	movlt r0, #0xa
	strlt r0, [r4, #0x6ec]
	ldr r1, [r4, #0x6ec]
	mov r0, r4
	add ip, r4, r1, lsl #2
	add r1, r4, #0x6c0
	mov r2, #0
	mov r3, #6
	str lr, [ip, #0x6c0]
	bl ov11_021217D4
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02123E40
ov11_02123E40: ; 0x02123E40
	stmdb sp!, {r3, lr}
	ldr r1, _02123E88 ; =OVERLAY11_BSS_02169B40
	mov r2, #0
	ldr r0, _02123E8C ; =ov11_02123E94
	str r2, [r1]
	bl WM_Reset
	cmp r0, #2
	beq _02123E80
	ldr r0, _02123E90 ; =ov11_02123EA8
	bl WM_End
	cmp r0, #2
	ldrne r0, _02123E88 ; =OVERLAY11_BSS_02169B40
	movne r1, #1
	strne r1, [r0]
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02123E40
_02123E80:
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_02123E88: .word OVERLAY11_BSS_02169B40
_02123E8C: .word ov11_02123E94
_02123E90: .word ov11_02123EA8

	arm_func_start ov11_02123E94
ov11_02123E94: ; 0x02123E94
	ldr r0, _02123EA4 ; =OVERLAY11_BSS_02169B40
	mov r1, #1
	str r1, [r0]
	bx lr
	.align 2, 0
_02123EA4: .word OVERLAY11_BSS_02169B40
	arm_func_end ov11_02123E94

	arm_func_start ov11_02123EA8
ov11_02123EA8: ; 0x02123EA8
	ldr r0, _02123EB8 ; =OVERLAY11_BSS_02169B40
	mov r1, #1
	str r1, [r0]
	bx lr
	.align 2, 0
_02123EB8: .word OVERLAY11_BSS_02169B40
	arm_func_end ov11_02123EA8

	arm_func_start ov11_02123EBC
ov11_02123EBC: ; 0x02123EBC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x72c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
	ldr r0, [r4, #0x72c]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02123EBC

	arm_func_start ov11_02123F00
ov11_02123F00: ; 0x02123F00
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x72c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xa
	bl sub_02034B58
	ldr r0, [r4, #0x72c]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0xf
	bl sub_0200E0E0
	ldr r0, [r4, #0x72c]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02123F00

	arm_func_start ov11_02123F58
ov11_02123F58: ; 0x02123F58
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x72c]
	mov r1, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B58
	ldr r0, [r4, #0x72c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #2
	mov r2, #0xf
	bl sub_0200E0E0
	ldr r0, [r4, #0x72c]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02123F58

	arm_func_start ov11_02123FB0
ov11_02123FB0: ; 0x02123FB0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x72c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02123FE8
	ldr r0, [r4, #0x72c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	beq _02123FF0
	arm_func_end ov11_02123FB0
_02123FE8:
	mov r0, #1
	ldmia sp!, {r4, pc}
_02123FF0:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02123FF8
ov11_02123FF8: ; 0x02123FF8
	ldrh r0, [r0]
	cmp r0, #0xb
	beq _02124020
	cmp r0, #0xd
	beq _02124018
	cmp r0, #0x11
	beq _02124028
	b _02124030
	arm_func_end ov11_02123FF8
_02124018:
	mov r0, #0
	bx lr
_02124020:
	mov r0, #1
	bx lr
_02124028:
	mov r0, #2
	bx lr
_02124030:
	mvn r0, #0
	bx lr

	arm_func_start ov11_02124038
ov11_02124038: ; 0x02124038
	ldr r3, _02124050 ; =0x0000FFFF
	cmp r2, r3
	ldreqh r2, [r0]
	strh r2, [r0, #0x34]
	strh r1, [r0]
	bx lr
	.align 2, 0
_02124050: .word 0x0000FFFF
	arm_func_end ov11_02124038

	arm_func_start ov11_02124054
ov11_02124054: ; 0x02124054
	mov ip, #0
	mov r1, ip
	mov r2, #1
	arm_func_end ov11_02124054
_02124060:
	ldr r3, [r0, #0x140]
	cmp r3, #0
	moveq r3, r2
	movne r3, r1
	cmp r3, #0
	movne r0, ip
	bxne lr
	add ip, ip, #1
	cmp ip, #4
	add r0, r0, #0x88
	blt _02124060
	mvn r0, #0
	bx lr

	arm_func_start ov11_02124094
ov11_02124094: ; 0x02124094
	mov r2, #0
	arm_func_end ov11_02124094
_02124098:
	add r1, r0, r2, lsl #2
	ldr r1, [r1, #0x328]
	cmp r1, #0
	movlt r0, r2
	bxlt lr
	add r2, r2, #1
	cmp r2, #4
	blt _02124098
	mvn r0, #0
	bx lr

	arm_func_start ov11_021240C0
ov11_021240C0: ; 0x021240C0
	cmp r1, #0
	movlt r0, #0
	addge r0, r0, r1, lsl #2
	ldrge r0, [r0, #0x328]
	bx lr
	arm_func_end ov11_021240C0

	arm_func_start ov11_021240D4
ov11_021240D4: ; 0x021240D4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, #0
	mov sl, r0
	mov fp, #0x88
	mov sb, r1
	mov r8, r7
	add r6, sl, #0x108
	mvn r5, #0
	mov r4, fp
	arm_func_end ov11_021240D4
_021240F8:
	add r0, sl, r8, lsl #2
	ldr r2, [r0, #0x328]
	cmp r2, #0
	blt _02124140
	cmp r2, sb
	beq _02124140
	mov r1, r7, lsr #0x1f
	rsb r0, r1, r7, lsl #31
	adds r0, r1, r0, ror #31
	bne _0212412C
	mla r0, r2, r4, r6
	bl ov11_02124AD4
	b _02124134
_0212412C:
	mla r0, r2, fp, r6
	bl ov11_02124B78
_02124134:
	add r0, sl, r8, lsl #2
	str r5, [r0, #0x328]
	add r7, r7, #1
_02124140:
	add r8, r8, #1
	cmp r8, #4
	blt _021240F8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov11_02124150
ov11_02124150: ; 0x02124150
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x328]
	cmp r1, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x88
	mul r4, r1, r0
	add r5, r7, #0x108
	add r0, r5, r4
	mov r1, #0
	bl ov11_021248EC
	add r0, r5, r4
	mov r1, #0
	bl ov11_02124EBC
	add r0, r7, r6, lsl #2
	mvn r1, #0
	str r1, [r0, #0x328]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov11_02124150

	arm_func_start ov11_021241A0
ov11_021241A0: ; 0x021241A0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	arm_func_end ov11_021241A0
_021241AC:
	mov r0, r5
	mov r1, r4
	bl ov11_02124150
	add r4, r4, #1
	cmp r4, #4
	blt _021241AC
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_021241C8
ov11_021241C8: ; 0x021241C8
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldmltia sp!, {r3, pc}
	add r3, r0, #0x108
	mov r0, #0x88
	mla r0, r1, r0, r3
	mov r1, r2, lsl #0xc
	bl ov11_0212494C
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021241C8

	arm_func_start ov11_021241EC
ov11_021241EC: ; 0x021241EC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	mov r5, r2
	mov r6, r1
	bl ov11_021240C0
	add r1, r7, r5, lsl #2
	ldr r1, [r1, #0x328]
	mov r4, r0
	cmp r4, r1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, #0x88
	mul r8, r4, r0
	add sb, r7, #0x108
	mov r1, r4
	mov r2, r5
	add r0, sb, r8
	bl ov11_02124C64
	add r0, sb, r8
	mov r1, #1
	bl ov11_021247A8
	add r1, r7, r6, lsl #2
	mvn r2, #0
	mov r0, r7
	str r2, [r1, #0x328]
	add r2, r7, r5, lsl #2
	mov r1, #0
	str r4, [r2, #0x328]
	bl ov11_02124370
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov11_021241EC

	arm_func_start ov11_02124260
ov11_02124260: ; 0x02124260
	mov r3, #0x88
	mla r3, r1, r3, r0
	str r2, [r3, #0x160]
	add r0, r0, r2, lsl #2
	str r1, [r0, #0x328]
	bx lr
	arm_func_end ov11_02124260

	arm_func_start ov11_02124278
ov11_02124278: ; 0x02124278
	mov ip, #0
	mov r1, #0x88
	arm_func_end ov11_02124278
_02124280:
	add r2, r0, ip, lsl #2
	ldr r3, [r2, #0x328]
	cmp r3, #0
	blt _021242A4
	mla r2, r3, r1, r0
	ldr r2, [r2, #0x158]
	cmp r2, #1
	moveq r0, ip
	bxeq lr
_021242A4:
	add ip, ip, #1
	cmp ip, #4
	blt _02124280
	mvn r0, #0
	bx lr

	arm_func_start ov11_021242B8
ov11_021242B8: ; 0x021242B8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl ov11_02124318
	cmp r4, #0
	bge _021242F8
	mov r1, #0
	arm_func_end ov11_021242B8
_021242D4:
	ldr r0, [r5, #0x13c]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	add r1, r1, #1
	cmp r1, #4
	add r5, r5, #0x88
	blt _021242D4
	b _02124310
_021242F8:
	mov r0, #0x88
	mla r0, r4, r0, r5
	ldr r0, [r0, #0x13c]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02124310:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02124318
ov11_02124318: ; 0x02124318
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov ip, r5
	mov lr, #1
	mvn r3, #0
	mov r1, #0x88
	arm_func_end ov11_02124318
_02124330:
	add r2, r0, r5, lsl #2
	ldr r4, [r2, #0x328]
	cmp r4, #0
	ble _02124360
	mla r2, r4, r1, r0
	ldr r2, [r2, #0x140]
	cmp r2, #0
	moveq r2, lr
	movne r2, ip
	cmp r2, #0
	addne r2, r0, r5, lsl #2
	strne r3, [r2, #0x328]
_02124360:
	add r5, r5, #1
	cmp r5, #4
	blt _02124330
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02124370
ov11_02124370: ; 0x02124370
	cmp r1, #0
	movne r3, #1
	moveq r3, #0
	ldr r2, [r0, #0xa0]
	cmp r1, #0
	str r3, [r2, #0x14]
	movne r1, #1
	ldr r0, [r0, #0xa4]
	moveq r1, #0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end ov11_02124370

	arm_func_start ov11_0212439C
ov11_0212439C: ; 0x0212439C
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, asr #0x1f
	mov r2, r0, lsl #0xd
	mov r0, r1, lsl #0xd
	orr r2, r2, r1, lsr #19
	mov r0, r0, lsr #0xc
	orr r0, r0, r2, lsl #20
	bx lr
	arm_func_end ov11_0212439C

	arm_func_start ov11_021243C4
ov11_021243C4: ; 0x021243C4
	stmdb sp!, {r4, lr}
	smull lr, ip, r2, r2
	mov lr, lr, lsr #0xc
	orr lr, lr, ip, lsl #20
	smull r4, ip, r1, r2
	smull r2, r1, r3, lr
	mov r3, r4, lsr #0xc
	mov r2, r2, lsr #0xc
	orr r3, r3, ip, lsl #20
	orr r2, r2, r1, lsl #20
	add r1, r3, r2
	add r0, r0, r1
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021243C4

	arm_func_start ov11_021243F8
ov11_021243F8: ; 0x021243F8
	stmdb sp!, {r4, lr}
	smull r4, lr, r2, r3
	smull r2, ip, r3, r3
	mov r3, r4, lsr #0xc
	orr r3, r3, lr, lsl #20
	sub r1, r1, r3
	sub r3, r1, r0
	mov r0, r3, asr #0x1f
	mov r2, r2, lsr #0xc
	mov r1, r0, lsl #0xc
	orr r2, r2, ip, lsl #20
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021243F8

	arm_func_start ov11_02124438
ov11_02124438: ; 0x02124438
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	cmp r1, #0
	beq _02124454
	cmp r1, #1
	beq _02124478
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov11_02124438
_02124454:
	mov r2, #1
	mov r1, #0
_0212445C:
	ldr r0, [r7, #0x14]
	ldr r0, [r0, r2, lsl #2]
	add r2, r2, #1
	str r1, [r0, #0x14]
	cmp r2, #5
	blt _0212445C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02124478:
	ldr r1, [r7, #0x608]
	ldr r2, _0212451C ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #3
	mov r1, r3, lsr #0x1f
	rsb r0, r1, r3, lsl #30
	mov r6, #1
	add r5, r1, r0, ror #30
	mov r8, #4
	mov sb, #3
	mov r4, r6
_021244A8:
	ldr r1, [r7, #0x14]
	sub r0, r6, #1
	ldr r1, [r1, r6, lsl #2]
	cmp r0, r5
	str r4, [r1, #0x14]
	add r1, r7, r6, lsl #2
	ldr r0, [r7, #0xc]
	bne _021244D8
	ldr r1, [r1, #0x60c]
	mov r2, sb
	bl sub_0200F628
	b _021244E4
_021244D8:
	ldr r1, [r1, #0x60c]
	mov r2, r8
	bl sub_0200F628
_021244E4:
	add r6, r6, #1
	cmp r6, #5
	blt _021244A8
	ldr r0, [r7, #0x608]
	ldr r2, _0212451C ; =0x66666667
	add r3, r0, #1
	mov r0, r3, lsr #0x1f
	smull r1, r4, r2, r3
	add r4, r0, r4, asr #5
	mov r2, #0x50
	smull r0, r1, r2, r4
	sub r4, r3, r0
	str r4, [r7, #0x608]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0212451C: .word 0x66666667

	arm_func_start ov11_02124520
ov11_02124520: ; 0x02124520
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x72c]
	mov r1, #0xd1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C5C
	mov r0, r4
	bl ov11_0211F96C
	mov r0, r4
	mov r1, #3
	bl ov11_0211FBE4
	mov r0, r4
	mov r1, #0
	bl ov11_02124438
	mov r0, r4
	mov r1, #0
	sub r2, r1, #1
	bl ov11_0211FB08
	mov r0, r4
	bl ov11_0211F904
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02124520

	arm_func_start ov11_02124578
ov11_02124578: ; 0x02124578
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #0x4c]
	str r1, [r4, #0x30]
	str r1, [r4, #0x34]
	str r1, [r4, #0x3c]
	bl ov11_02124EBC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02124578

    arm_func_start ov11_021245A4
ov11_021245A4: ; 0x021245A4
    bx lr
    arm_func_end ov11_021245A4

	arm_func_start ov11_021245A8
ov11_021245A8: ; 0x021245A8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	str r1, [r4]
	mov r0, r3, asr #4
	ldr r1, [r1, r2, lsl #2]
	add r0, r3, r0, lsr #27
	str r1, [r4, #4]
	mov r1, #0
	mov r0, r0, asr #5
	str r0, [r4, #0x28]
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r2, r1
	mov r3, r1
	bl sub_0200F4FC
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x24]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov11_021245A8

	arm_func_start ov11_02124604
ov11_02124604: ; 0x02124604
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r2, #0
	str r4, [r5, #8]
	mov r1, #3
	mov r0, r4
	mov r3, r2
	str r1, [sp]
	mov r1, #0x15
	bl sub_0200F4FC
	str r0, [r5, #0x10]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #0xe0
	mov r2, #0x10
	bl sub_0200EBF4
	ldr r0, [r4, #0x24]
	mov r2, #0
	str r0, [r5, #0x1c]
	mov r0, #2
	str r0, [sp]
	mov r0, r4
	mov r1, #0x10
	mov r3, r2
	bl sub_0200F4FC
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x24]
	str r0, [r5, #0x20]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02124604

	arm_func_start ov11_02124680
ov11_02124680: ; 0x02124680
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	str r1, [r5, #0x50]
	cmp r1, #0
	beq _02124708
	cmp r1, #1
	beq _021246AC
	cmp r1, #2
	beq _021246D4
	b _02124708
	arm_func_end ov11_02124680
_021246AC:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x1c]
	mov r2, #0x15
	bl sub_0200F628
	mov r2, #1
	mov r0, r5
	mov r1, r4
	str r2, [r5, #0x30]
	bl ov11_021247A8
	ldmia sp!, {r3, r4, r5, pc}
_021246D4:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x1c]
	mov r2, #0x16
	bl sub_0200F628
	mov r2, #0
	mov r0, r5
	mov r1, r4
	str r2, [r5, #0x30]
	bl ov11_021247A8
	mov r0, r5
	mov r1, #0
	bl ov11_02124730
	ldmia sp!, {r3, r4, r5, pc}
_02124708:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x1c]
	mov r2, #0x14
	bl sub_0200F628
	mov r2, #0
	mov r0, r5
	mov r1, r4
	str r2, [r5, #0x30]
	bl ov11_021247A8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02124730
ov11_02124730: ; 0x02124730
	stmdb sp!, {r3, lr}
	mov r3, r0
	str r1, [r3, #0x4c]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0212477C
_02124748: ; jump table
	b _0212477C ; case 0
	b _0212475C ; case 1
	b _02124764 ; case 2
	b _0212476C ; case 3
	b _02124774 ; case 4
	arm_func_end ov11_02124730
_0212475C:
	mov r2, #0xf
	b _0212478C
_02124764:
	mov r2, #0x10
	b _0212478C
_0212476C:
	mov r2, #5
	b _0212478C
_02124774:
	mov r2, #0xa
	b _0212478C
_0212477C:
	ldr r0, [r3, #0x14]
	mov r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}
_0212478C:
	ldr r0, [r3, #0x14]
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r0, [r3, #8]
	ldr r1, [r3, #0x20]
	bl sub_0200F628
	ldmia sp!, {r3, pc}

	arm_func_start ov11_021247A8
ov11_021247A8: ; 0x021247A8
	stmdb sp!, {r3, lr}
	mov r3, r0
	str r1, [r3, #0x48]
	cmp r1, #0
	ldr r0, [r3, #0x10]
	beq _02124804
	mov r2, #0
	strb r2, [r0, #0x28]
	ldr r0, [r3, #0x50]
	cmp r0, #0
	cmpne r0, #1
	beq _021247F0
	cmp r0, #2
	bne _021247F0
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x24]
	bl sub_0200F628
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021247A8
_021247F0:
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x24]
	mov r2, #1
	bl sub_0200F628
	ldmia sp!, {r3, pc}
_02124804:
	mov r1, #1
	strb r1, [r0, #0x28]
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x24]
	mov r2, #2
	bl sub_0200F628
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02124820
ov11_02124820: ; 0x02124820
	mov r3, r0
	str r1, [r3, #0x54]
	ldr r0, [r3]
	ldr ip, _02124840 ; =FUN_0200F358
	ldr r0, [r0, r1, lsl #2]
	mov r2, #1
	ldr r1, [r3, #0x28]
	bx ip
	.align 2, 0
_02124840: .word sub_0200F358
	arm_func_end ov11_02124820

	arm_func_start ov11_02124844
ov11_02124844: ; 0x02124844
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	str r5, [r6, #0x80]
	str r4, [r6, #0x84]
	ldr r0, [r6, #0xc]
	bl sub_0200EB28
	ldr r0, [r6, #0x10]
	mov r1, r5
	mov r2, r4
	bl sub_0200EB28
	ldr r0, [r6, #0x14]
	mov r2, r4
	add r1, r5, #0x58
	bl sub_0200EB28
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02124844

	arm_func_start ov11_02124888
ov11_02124888: ; 0x02124888
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021248AC
	bl sub_0200F64C
	arm_func_end ov11_02124888
_021248AC:
	mov r0, r4
	bl ov11_02124CBC
	ldr r0, [r4, #0x50]
	cmp r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov11_02124E38
	ldmia sp!, {r4, pc}

	arm_func_start ov11_021248CC
ov11_021248CC: ; 0x021248CC
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x38]
	cmp r1, #0
	ldrne r0, [r0, #4]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0200F71C
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021248CC

	arm_func_start ov11_021248EC
ov11_021248EC: ; 0x021248EC
	str r1, [r0, #0x2c]
	cmp r1, #0
	movne r3, #1
	moveq r3, #0
	ldr r2, [r0, #0x10]
	cmp r1, #0
	str r3, [r2, #0x14]
	movne r3, #1
	ldr r2, [r0, #0xc]
	moveq r3, #0
	str r3, [r2, #0x14]
	ldr r2, [r0, #0x4c]
	cmp r2, #0
	bne _02124934
	ldr r0, [r0, #0x14]
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end ov11_021248EC
_02124934:
	cmp r1, #0
	movne r1, #1
	ldr r0, [r0, #0x14]
	moveq r1, #0
	str r1, [r0, #0x14]
	bx lr

	arm_func_start ov11_0212494C
ov11_0212494C: ; 0x0212494C
	mov r2, #0
	str r2, [r0, #0x70]
	str r1, [r0, #0x74]
	mov r1, #1
	str r1, [r0, #0x44]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end ov11_0212494C

	arm_func_start ov11_02124968
ov11_02124968: ; 0x02124968
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r3
	mov r6, r2
	mov r7, r1
	mov r4, r0
	ldr r3, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov11_021243F8
	str r0, [r4, #0x64]
	str r5, [r4, #0x60]
	str r7, [r4, #0x68]
	ldr r0, [sp, #0x18]
	str r6, [r4, #0x6c]
	str r0, [r4, #0x74]
	mov r3, #0
	str r3, [r4, #0x70]
	mov r1, #1
	ldr r0, [sp, #0x1c]
	str r1, [r4, #0x34]
	ldr r2, [sp, #0x24]
	str r0, [r4, #0x78]
	ldr r0, [sp, #0x20]
	str r2, [r4, #0x7c]
	str r0, [r4, #0x40]
	mov r0, r4
	str r3, [r4, #0x44]
	bl ov11_02124EBC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov11_02124968

	arm_func_start ov11_021249E0
ov11_021249E0: ; 0x021249E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	mov r2, r0
	mov r1, #0x4000
	mov r3, #0x14000
	bl ov11_021243F8
	str r0, [r4, #0x64]
	mov r1, r0
	mov r0, #0x14000
	bl ov11_0212439C
	mvn r2, #0
	mov r1, r2, lsl #0xc
	umull ip, r3, r0, r1
	mla r3, r0, r2, r3
	mov r2, r0, asr #0x1f
	mla r3, r2, r1, r3
	mov r1, ip, lsr #0xc
	orr r1, r1, r3, lsl #20
	str r1, [r4, #0x60]
	mov r1, #0
	str r1, [r4, #0x68]
	mov r0, #0x4000
	str r0, [r4, #0x6c]
	mov r0, #0x27000
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	ldr r0, [r4, #0x18]
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #4]
	str r1, [r0, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021249E0

	arm_func_start ov11_02124A6C
ov11_02124A6C: ; 0x02124A6C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r1
	mov r5, r0
	mov r1, #0
	mov r0, r4
	str r1, [r5, #0x3c]
	bl ov11_02124EB0
	mov r2, r0
	mov r0, r5
	mvn r1, #0x7f
	bl ov11_02124844
	mov r0, #0xf000
	mov r1, #0x80000
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	mov r0, r5
	sub r2, r1, #0x100000
	bl ov11_02124968
	str r4, [r5, #0x58]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02124A6C

	arm_func_start ov11_02124AD4
ov11_02124AD4: ; 0x02124AD4
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, #1
	str r2, [r0, #0x3c]
	mov r1, #0xa000
	str r1, [sp]
	mov r1, #0x80000
	str r2, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	sub r2, r1, #0x100000
	str r3, [sp, #0xc]
	bl ov11_02124968
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02124AD4

	arm_func_start ov11_02124B10
ov11_02124B10: ; 0x02124B10
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r1
	mov r5, r0
	mov r1, #0
	mov r0, r4
	str r1, [r5, #0x3c]
	bl ov11_02124EB0
	mov r2, r0
	mov r0, r5
	mov r1, #0x180
	bl ov11_02124844
	mov r0, #0xf000
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, r5
	str r1, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	mov r1, #0x80000
	mov r2, #0x180000
	bl ov11_02124968
	str r4, [r5, #0x58]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02124B10

	arm_func_start ov11_02124B78
ov11_02124B78: ; 0x02124B78
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, #1
	str r2, [r0, #0x3c]
	mov r1, #0xa000
	stmia sp, {r1, r2}
	mov r3, #0
	str r3, [sp, #8]
	mov r1, #0x80000
	mov r2, #0x180000
	str r3, [sp, #0xc]
	bl ov11_02124968
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02124B78

	arm_func_start ov11_02124BB0
ov11_02124BB0: ; 0x02124BB0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r1
	mov r6, r0
	mov r1, #0
	mov r4, r2
	str r1, [r6, #0x3c]
	bl ov11_021248EC
	mov r0, r5
	bl ov11_02124EB0
	add r2, r0, #0xc0
	mov r0, r6
	mov r1, #0x80
	bl ov11_02124844
	mov r0, r5
	bl ov11_02124EB0
	mov r1, r0, lsl #0xc
	mov r0, #0xf000
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, r6
	mov r2, #0xf0000
	str r4, [sp, #0xc]
	bl ov11_02124968
	str r5, [r6, #0x58]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02124BB0

	arm_func_start ov11_02124C28
ov11_02124C28: ; 0x02124C28
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r1, #1
	str r1, [r0, #0x3c]
	mov r3, #0
	mov r1, #0xa000
	stmia sp, {r1, r3}
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r0, #0x84]
	sub r2, r3, #0x30000
	mov r1, r1, lsl #0xc
	bl ov11_02124968
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02124C28

	arm_func_start ov11_02124C64
ov11_02124C64: ; 0x02124C64
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r2
	mov r5, r0
	mov r0, r4
	bl ov11_02124EB0
	mov r1, #0x14000
	str r1, [sp]
	mov r1, r0
	mov r3, #0
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x84]
	mov r0, r5
	mov r1, r1, lsl #0xc
	mov r2, r2, lsl #0xc
	bl ov11_02124968
	str r4, [r5, #0x58]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02124C64

	arm_func_start ov11_02124CBC
ov11_02124CBC: ; 0x02124CBC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x34]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x7c]
	cmp r1, #0
	subgt r0, r1, #0x1000
	strgt r0, [r5, #0x7c]
	ldmgtia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x44]
	cmp r1, #0
	beq _02124D68
	ldr r2, [r5, #0x70]
	ldr r1, [r5, #0x74]
	cmp r2, r1
	bge _02124D44
	mov r1, r2, asr #0xc
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #29
	add r1, r2, r1, ror #29
	cmp r1, #4
	bge _02124D28
	mov r1, #1
	mov r2, r1
	bl ov11_02124680
	b _02124D34
	arm_func_end ov11_02124CBC
_02124D28:
	mov r1, #0
	mov r2, #1
	bl ov11_02124680
_02124D34:
	ldr r0, [r5, #0x70]
	add r0, r0, #0x1000
	str r0, [r5, #0x70]
	ldmia sp!, {r3, r4, r5, pc}
_02124D44:
	mov r1, #1
	mov r2, r1
	bl ov11_02124680
	mov r0, r5
	mov r1, #1
	bl ov11_021248EC
	mov r0, #0
	str r0, [r5, #0x34]
	ldmia sp!, {r3, r4, r5, pc}
_02124D68:
	mov r1, #1
	bl ov11_021248EC
	ldr r1, [r5, #0x74]
	ldr r2, [r5, #0x70]
	ldr r0, [r5, #0x40]
	cmp r2, r1
	bge _02124DB0
	cmp r0, #0
	subne r2, r1, r2
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x60]
	ldr r3, [r5, #0x64]
	bl ov11_021243C4
	ldr r1, [r5, #0x70]
	mov r4, r0
	add r0, r1, #0x1000
	str r0, [r5, #0x70]
	b _02124DDC
_02124DB0:
	ldr r4, [r5, #0x6c]
	cmp r0, #0
	ldrne r4, [r5, #0x68]
	mov r1, #0
	str r1, [r5, #0x34]
	str r1, [r5, #0x70]
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _02124DDC
	mov r0, r5
	bl ov11_02124EBC
_02124DDC:
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq _02124DFC
	ldr r2, [r5, #0x84]
	mov r0, r5
	mov r1, r4, asr #0xc
	bl ov11_02124844
	ldmia sp!, {r3, r4, r5, pc}
_02124DFC:
	mov r0, #0x20000
	rsb r0, r0, #0
	cmp r4, r0
	blt _02124E14
	cmp r4, #0xa1000
	ble _02124E24
_02124E14:
	mov r0, r5
	mov r1, #0
	bl ov11_021248EC
	ldmia sp!, {r3, r4, r5, pc}
_02124E24:
	ldr r1, [r5, #0x80]
	mov r0, r5
	mov r2, r4, asr #0xc
	bl ov11_02124844
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02124E38
ov11_02124E38: ; 0x02124E38
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x60]
	ldr r2, [r4, #0x70]
	ldr r3, [r4, #0x64]
	bl ov11_021243C4
	ldr r2, [r4, #0x70]
	ldr r1, [r4, #0x74]
	mov r5, r0, asr #0xc
	cmp r2, r1
	addlt r1, r2, #0x1000
	movge r1, #0
	str r1, [r4, #0x70]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x84]
	ldr r0, [r1]
	add r1, r5, #0x14
	bl sub_0200EB28
	ldr r0, [r4, #0x18]
	ldr r2, [r4, #0x84]
	ldr r0, [r0, #4]
	rsb r1, r5, #0xec
	bl sub_0200EB28
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02124E38

	arm_func_start ov11_02124EB0
ov11_02124EB0: ; 0x02124EB0
	mov r0, r0, lsl #5
	add r0, r0, #0x34
	bx lr
	arm_func_end ov11_02124EB0

	arm_func_start ov11_02124EBC
ov11_02124EBC: ; 0x02124EBC
	str r1, [r0, #0x38]
	cmp r1, #0
	moveq r1, #0
	streq r1, [r0, #0x34]
	bx lr
	arm_func_end ov11_02124EBC

	arm_func_start ov11_02124ED0
ov11_02124ED0: ; 0x02124ED0
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x38]
	cmp r1, #0
	ldrne r1, [r0, #0x2c]
	cmpne r1, #0
	ldrne r1, [r0, #0x50]
	cmpne r1, #2
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x10]
	bl sub_0200EB84
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02124ED0

	arm_func_start ov11_02124F00
ov11_02124F00: ; 0x02124F00
	stmdb sp!, {r3, lr}
	mov r0, #4
	bl ov11_02126D64
	bl ov11_02126CE4
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02124F00

	arm_func_start ov11_02124F14
ov11_02124F14: ; 0x02124F14
	stmdb sp!, {r3, lr}
	bl ov11_02126F70
	str r0, [sp]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02124F14

	arm_func_start ov11_02124F24
ov11_02124F24: ; 0x02124F24
	stmdb sp!, {r3, lr}
	bl ov11_02126FAC
	strh r0, [sp]
	ldrsh r0, [sp]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02124F24

	arm_func_start ov11_02124F38
ov11_02124F38: ; 0x02124F38
	stmdb sp!, {r4, lr}
	bl ov11_02126D78
	cmp r0, #0xc
	bne _02124F70
	bl ov11_02126D48
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _02124F68
	bl ov11_02126CE4
	mov r0, #1
	str r0, [r4, #0x1c]
	arm_func_end ov11_02124F38
_02124F68:
	mov r0, #1
	ldmia sp!, {r4, pc}
_02124F70:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02124F78
ov11_02124F78: ; 0x02124F78
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126EAC
	ldr r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldrh r1, [r0, #6]
	cmp r4, r1
	moveq r1, #0
	streqb r1, [r0, #8]
	streqb r1, [r0, #0xa]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02124F78

	arm_func_start ov11_02124FA8
ov11_02124FA8: ; 0x02124FA8
	stmdb sp!, {r3, lr}
	bl ov11_02126EAC
	ldrh r1, [r0, #0xe]
	tst r1, #1
	beq _02124FCC
	bic r1, r1, #1
	strh r1, [r0, #0xe]
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02124FA8
_02124FCC:
	tst r1, #0x40
	beq _02124FE4
	bic r1, r1, #0x40
	strh r1, [r0, #0xe]
	mov r0, #7
	ldmia sp!, {r3, pc}
_02124FE4:
	tst r1, #0x1000
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bic r1, r1, #0x1000
	strh r1, [r0, #0xe]
	mov r0, #0xd
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02125000
ov11_02125000: ; 0x02125000
	stmdb sp!, {r4, lr}
	bl ov11_02126EAC
	mov r4, r0
	mov r0, #1
	strb r0, [r4, #0xc]
	bl WM_GetAllowedChannel
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	cmpne r0, #0x8000
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0x66
	strb r0, [r4, #0xd]
	mov r0, #0
	strb r0, [r4, #0x10]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02125000

	arm_func_start ov11_02125048
ov11_02125048: ; 0x02125048
	stmdb sp!, {r4, lr}
	bl ov11_02126D3C
	mov r4, r0
	bl WM_GetDispersionBeaconPeriod
	strh r0, [r4, #0x18]
	bl WM_GetNextTgid
	strh r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02125048

	arm_func_start ov11_02125068
ov11_02125068: ; 0x02125068
	stmdb sp!, {r4, lr}
	bl ov11_02126DD0
	mov r4, r0
	bl ov11_02126E20
	str r0, [r4]
	bl ov11_02126D3C
	ldrh r0, [r0, #0x32]
	strh r0, [r4, #4]
	bl WM_GetDispersionScanPeriod
	strh r0, [r4, #6]
	mov r0, #0xff
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02125068

	arm_func_start ov11_021250B0
ov11_021250B0: ; 0x021250B0
	stmdb sp!, {r3, r4, r5, lr}
	bl ov11_02126DD0
	mov r4, r0
	bl WM_GetAllowedChannel
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r5, [r4, #4]
	mov ip, #0
	mov r3, #1
	mov lr, r5
	arm_func_end ov11_021250B0
_021250D8:
	mov r2, lr, lsr #0x1f
	rsb r1, r2, lr, lsl #28
	add r1, r2, r1, ror #28
	tst r0, r3, lsl r1
	beq _02125108
	add r0, r5, ip
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #28
	add r0, r1, r0, ror #28
	add r0, r0, #1
	strh r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
_02125108:
	add ip, ip, #1
	cmp ip, #0x10
	add lr, lr, #1
	blt _021250D8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_0212511C
ov11_0212511C: ; 0x0212511C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #4]
	bl ov11_02126968
	ldrh r0, [r4, #2]
	cmp r0, #8
	ldmneia sp!, {r4, pc}
	bl ov11_02126964
	bl ov11_02124F00
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212511C

	arm_func_start ov11_02125144
ov11_02125144: ; 0x02125144
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #8]
	bl ov11_02126968
	ldrh r0, [r4, #2]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov11_02126964
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02125144

	arm_func_start ov11_02125168
ov11_02125168: ; 0x02125168
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _021251B8
	mov r0, #2
	bl ov11_02126D64
	bl ov11_02126D78
	cmp r0, #0xc
	bne _0212519C
	bl ov11_02126A1C
	mov r0, #2
	bl ov11_02126D64
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02125168
_0212519C:
	bl ov11_02126C90
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_02126A1C
	mov r0, #2
	bl ov11_02126D64
	ldmia sp!, {r3, pc}
_021251B8:
	bl ov11_02126964
	bl ov11_02126A1C
	ldmia sp!, {r3, pc}

	arm_func_start ov11_021251C4
ov11_021251C4: ; 0x021251C4
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02125204
	bl ov11_02126D78
	cmp r0, #0xc
	bne _021251F8
	bl WM_Finish
	mov r0, #0xc
	bl ov11_02126D64
	mov r0, #1
	bl ov11_02126E7C
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021251C4
_021251F8:
	mov r0, #1
	bl ov11_02126D64
	ldmia sp!, {r3, pc}
_02125204:
	bl ov11_02126964
	mov r0, #4
	bl ov11_02126D64
	bl OS_Terminate
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02125218
ov11_02125218: ; 0x02125218
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _02125298
	bl ov11_02126EAC
	mov r4, r0
	ldrh r1, [r5, #0xa]
	ldrb r0, [r4, #0xd]
	cmp r0, r1
	strgtb r1, [r4, #0xd]
	ldrgth r0, [r5, #8]
	strgtb r0, [r4, #0x10]
	bl ov11_02124FA8
	cmp r0, #0
	beq _0212526C
	bl ov11_02126A48
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov11_02124F00
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02125218
_0212526C:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x66
	bhs _02125290
	bl ov11_02125048
	bl ov11_02126A88
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov11_02124F00
	ldmia sp!, {r3, r4, r5, pc}
_02125290:
	bl ov11_02124F00
	ldmia sp!, {r3, r4, r5, pc}
_02125298:
	bl ov11_02126964
	bl ov11_02124F00
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_021252A4
ov11_021252A4: ; 0x021252A4
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _021252D4
	bl ov11_02124F38
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_02126ADC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_02124F00
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021252A4
_021252D4:
	bl ov11_02126964
	bl ov11_02124F00
	ldmia sp!, {r3, pc}

	arm_func_start ov11_021252E0
ov11_021252E0: ; 0x021252E0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldrh r0, [r5, #8]
	bl ov11_02126968
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _021254C0
	bl ov11_02126EAC
	mov r4, r0
	mov r0, #8
	bl ov11_02126D64
	bl ov11_02124F38
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, pc}
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	moveq r0, #2
	streqb r0, [r4, #0xc]
	ldrh r0, [r5, #8]
	cmp r0, #7
	bgt _02125368
	bge _021253A0
	cmp r0, #2
	addgt sp, sp, #0xc
	ldmgtia sp!, {r4, r5, pc}
	cmp r0, #0
	addlt sp, sp, #0xc
	ldmltia sp!, {r4, r5, pc}
	beq _02125378
	add sp, sp, #0xc
	cmp r0, #2
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov11_021252E0
_02125368:
	cmp r0, #9
	beq _021254B0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
_02125378:
	bl ov11_02126BDC
	cmp r0, #0
	bne _02125390
	bl ov11_02124F00
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
_02125390:
	mov r0, #0
	bl ov11_02126E30
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
_021253A0:
	bl ov11_02126EAC
	bl ov11_02126980
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, pc}
	bl ov11_02126F04
	ldr r1, [r5, #0x14]
	mov r1, r1, lsl #0x18
	cmp r0, r1, lsr #24
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, pc}
	bl ov11_02126F1C
	ldr r1, [r5, #0x14]
	mov r1, r1, lsl #0x14
	cmp r0, r1, lsr #28
	addlo sp, sp, #0xc
	ldmloia sp!, {r4, r5, pc}
	bl ov11_02126F34
	ldr r1, [r5, #0x18]
	cmp r0, r1, lsr #16
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, pc}
	bl ov11_02126EAC
	mov r4, r0
	add r0, r5, #0xa
	bl ov11_02124F14
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0xa
	bl ov11_02124F24
	strh r0, [sp]
	ldrh r0, [sp]
	ldr r2, [sp, #8]
	mov r1, r4
	mov r3, #0
	strh r0, [sp, #2]
_02125434:
	ldr r0, [r1]
	cmp r0, r2
	bne _02125460
	mov r0, #0xc
	mla r1, r3, r0, r4
	ldrh r2, [r5, #0x10]
	mov r0, #1
	add sp, sp, #0xc
	strh r2, [r1, #6]
	strb r0, [r1, #0xa]
	ldmia sp!, {r4, r5, pc}
_02125460:
	cmp r0, #0
	bne _02125498
	mov r0, #0xc
	mul r1, r3, r0
	ldrh r0, [sp, #2]
	str r2, [r4, r1]
	add r2, r4, r1
	strh r0, [r2, #4]
	ldrh r1, [r5, #0x10]
	mov r0, #1
	add sp, sp, #0xc
	strh r1, [r2, #6]
	strb r0, [r2, #0xa]
	ldmia sp!, {r4, r5, pc}
_02125498:
	add r3, r3, #1
	cmp r3, #1
	add r1, r1, #0xc
	blt _02125434
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
_021254B0:
	ldrh r0, [r5, #0x10]
	bl ov11_02124F78
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
_021254C0:
	bl ov11_02126964
	bl ov11_02124F00
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}

	arm_func_start ov11_021254D0
ov11_021254D0: ; 0x021254D0
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r1
	mov r6, r0
	bl ov11_02126EA0
	mov r4, r0
	add r0, r5, #4
	bl ov11_02124F14
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #4
	bl ov11_02124F24
	strh r0, [sp]
	ldrh r0, [sp]
	ldr r2, [sp, #8]
	mov ip, r4
	strh r0, [sp, #2]
	ldrh r0, [sp, #2]
	mov r3, #0
	arm_func_end ov11_021254D0
_0212551C:
	ldr lr, [ip]
	cmp lr, r2
	ldreqh r1, [ip, #0x34]
	cmpeq r1, r0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	cmp lr, #0
	bne _021255D0
	mov r0, #0x38
	mul r0, r3, r0
	ldr r2, [sp, #8]
	add r1, r4, r0
	str r2, [r4, r0]
	add lr, r5, #0x58
	add ip, r1, #4
	mov r3, #6
_02125560:
	ldrh r2, [lr]
	ldrh r1, [lr, #2]
	add lr, lr, #4
	subs r3, r3, #1
	strh r2, [ip]
	strh r1, [ip, #2]
	add ip, ip, #4
	bne _02125560
	add r1, r4, r0
	add ip, r5, #0x70
	add r5, r1, #0x1c
	mov r3, #6
_02125590:
	ldrh r2, [ip]
	ldrh r1, [ip, #2]
	add ip, ip, #4
	subs r3, r3, #1
	strh r2, [r5]
	strh r1, [r5, #2]
	add r5, r5, #4
	bne _02125590
	ldrh r1, [sp, #2]
	add r2, r4, r0
	add sp, sp, #0xc
	strh r1, [r2, #0x34]
	ldrh r1, [r6, #0x12]
	mov r0, #1
	strb r1, [r2, #0x36]
	ldmia sp!, {r3, r4, r5, r6, pc}
_021255D0:
	add r3, r3, #1
	cmp r3, #1
	add ip, ip, #0x38
	blt _0212551C
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}

	arm_func_start ov11_021255EC
ov11_021255EC: ; 0x021255EC
	stmdb sp!, {r3, lr}
	bl ov11_021250B0
	bl ov11_02126B04
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_02124F00
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021255EC

	arm_func_start ov11_02125608
ov11_02125608: ; 0x02125608
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl ov11_02126E20
	mov r4, r0
	bl ov11_02126EA0
	mov r6, r0
	bl ov11_02124F38
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, #0
	mov r2, r1
	mov r3, r6
	arm_func_end ov11_02125608
_0212563C:
	ldr r0, [r3]
	cmp r0, #0
	movne r1, #1
	bne _0212565C
	add r2, r2, #1
	cmp r2, #1
	add r3, r3, #0x38
	blt _0212563C
_0212565C:
	cmp r1, #0
	beq _02125688
	ldrh r0, [r6, #0x38]
	cmp r0, #0
	bne _02125688
	bl ov11_02126B34
	cmp r0, #0
	bne _02125680
	bl ov11_02124F00
_02125680:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02125688:
	mov r0, r4
	mov r1, #0xc0
	bl DC_InvalidateRange
	bl ov11_02126EA0
	bl ov11_0212697C
	ldrh r0, [r5, #0x36]
	cmp r0, #8
	blo _02125750
	bl ov11_02126EF4
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bne _02125750
	bl ov11_02126F04
	ldr r1, [r4, #0x50]
	mov r1, r1, lsl #0x18
	cmp r0, r1, lsr #24
	bne _02125750
	bl ov11_02126F1C
	ldr r1, [r4, #0x50]
	mov r1, r1, lsl #0x14
	cmp r0, r1, lsr #28
	blo _02125750
	bl ov11_02126F34
	ldr r1, [r4, #0x54]
	cmp r0, r1, lsr #16
	bne _02125750
	mov r0, r5
	mov r1, r4
	bl ov11_021254D0
	cmp r0, #0
	beq _02125738
	bl ov11_02126EA0
	ldrb r1, [r0, #0x3a]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0, #0x3a]
	cmp r1, #0x1c
	bls _02125750
	bl ov11_02126B34
	cmp r0, #0
	bne _02125750
	bl ov11_02124F00
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02125738:
	bl ov11_02126B34
	cmp r0, #0
	bne _02125748
	bl ov11_02124F00
_02125748:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02125750:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02125758
ov11_02125758: ; 0x02125758
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #8]
	bl ov11_02126968
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _021257EC
	bl ov11_02126E20
	bl ov11_0212696C
	mov r0, #6
	bl ov11_02126D64
	bl ov11_02124F38
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl ov11_02126D9C
	cmp r0, #1
	bne _021257B0
	bl ov11_02126EA0
	ldrb r1, [r0, #0x3b]
	bic r1, r1, #0xf0
	orr r1, r1, #0x10
	strb r1, [r0, #0x3b]
	arm_func_end ov11_02125758
_021257B0:
	ldrh r0, [r4, #8]
	cmp r0, #4
	beq _021257D4
	cmp r0, #5
	bne _021257DC
	mov r0, r4
	bl ov11_02125608
	cmp r0, #0
	ldmneia sp!, {r4, pc}
_021257D4:
	bl ov11_021255EC
	ldmia sp!, {r4, pc}
_021257DC:
	ldrh r0, [r4, #2]
	bl ov11_02126964
	bl ov11_02124F00
	ldmia sp!, {r4, pc}
_021257EC:
	bl ov11_02126964
	bl ov11_02124F00
	ldmia sp!, {r4, pc}

	arm_func_start ov11_021257F8
ov11_021257F8: ; 0x021257F8
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02125860
	mov r0, #7
	bl ov11_02126D64
	bl ov11_02124F38
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_02126D9C
	cmp r0, #1
	ldmneia sp!, {r3, pc}
	bl ov11_02126EA0
	ldrb r0, [r0, #0x3b]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #2
	ldmneia sp!, {r3, pc}
	bl ov11_02126B5C
	cmp r0, #0
	bne _02125854
	bl ov11_02124F00
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021257F8
_02125854:
	mov r0, #3
	bl ov11_02126D64
	ldmia sp!, {r3, pc}
_02125860:
	bl ov11_02126964
	bl ov11_02124F00
	ldmia sp!, {r3, pc}

	arm_func_start ov11_0212586C
ov11_0212586C: ; 0x0212586C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #8]
	bl ov11_02126968
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02125930
	mov r0, #9
	bl ov11_02126D64
	bl ov11_02124F38
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldrh r0, [r4, #8]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02125920
_021258AC: ; jump table
	b _02125920 ; case 0
	b _02125920 ; case 1
	b _02125920 ; case 2
	b _02125920 ; case 3
	b _02125920 ; case 4
	b _02125920 ; case 5
	ldmia sp!, {r4, pc} ; case 6
	b _021258D4 ; case 7
	ldmia sp!, {r4, pc} ; case 8
	b _02125900 ; case 9
	arm_func_end ov11_0212586C
_021258D4:
	ldrh r0, [r4, #0xa]
	bl ov11_02126E30
	mov r0, #1
	bl ov11_02126E54
	mov r0, #0
	bl ov11_02126E68
	bl ov11_02126BDC
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl ov11_02124F00
	ldmia sp!, {r4, pc}
_02125900:
	bl ov11_02126E44
	cmp r0, #0
	beq _02125914
	mov r0, #1
	bl ov11_02126E68
_02125914:
	mov r0, #0
	bl ov11_02126E54
	ldmia sp!, {r4, pc}
_02125920:
	ldrh r0, [r4, #2]
	bl ov11_02126964
	bl ov11_02124F00
	ldmia sp!, {r4, pc}
_02125930:
	bl ov11_02126964
	bl ov11_02124F00
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0212593C
ov11_0212593C: ; 0x0212593C
	stmdb sp!, {r3, lr}
	bl ov11_02126D9C
	cmp r0, #1
	beq _02125990
	cmp r0, #2
	ldmneia sp!, {r3, pc}
	bl ov11_02125000
	cmp r0, #0
	beq _02125988
	bl ov11_02124FA8
	bl ov11_02126A48
	cmp r0, #0
	beq _02125988
	bl ov11_02126EAC
	mov r1, #1
	strb r1, [r0, #0xc]
	mov r0, #3
	bl ov11_02126D64
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212593C
_02125988:
	bl ov11_02124F00
	ldmia sp!, {r3, pc}
_02125990:
	bl ov11_02125068
	bl ov11_02126B04
	cmp r0, #0
	bne _021259A8
	bl ov11_02124F00
	ldmia sp!, {r3, pc}
_021259A8:
	mov r0, #3
	bl ov11_02126D64
	ldmia sp!, {r3, pc}

	arm_func_start ov11_021259B4
ov11_021259B4: ; 0x021259B4
	stmdb sp!, {r4, r5, r6, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	bne _021259F8
	ldrh r6, [r0, #0xa]
	mov r5, #1
	mov r4, r5
	arm_func_end ov11_021259B4
_021259D0:
	tst r6, r4, lsl r5
	beq _021259E0
	mov r0, r5
	bl ov11_02124F78
_021259E0:
	add r5, r5, #1
	cmp r5, #0x10
	blo _021259D0
	bl ov11_02124F38
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021259F8:
	mov r0, r1
	bl ov11_02126964
	bl ov11_02124F00
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02125A08
ov11_02125A08: ; 0x02125A08
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #4]
	bl ov11_02126968
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02125A68
	ldrh r0, [r4]
	cmp r0, #0xe
	bne _02125A3C
	bl ov11_02124F38
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	arm_func_end ov11_02125A08
_02125A3C:
	bl ov11_02126D9C
	cmp r0, #1
	beq _02125A5C
	cmp r0, #2
	ldmneia sp!, {r4, pc}
	mov r0, #0xa
	bl ov11_02126D64
	ldmia sp!, {r4, pc}
_02125A5C:
	mov r0, #0xb
	bl ov11_02126D64
	ldmia sp!, {r4, pc}
_02125A68:
	cmp r0, #9
	cmpne r0, #0xd
	cmpne r0, #0xf
	ldmeqia sp!, {r4, pc}
	bl ov11_02124F00
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02125A80
ov11_02125A80: ; 0x02125A80
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl ov11_02126ED0
	mov r4, r0
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	bl DC_FlushRange
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	bl MI_CpuCopy8
	bl ov11_02126F04
	ldr r1, [r5]
	mov r1, r1, lsl #0x18
	cmp r0, r1, lsr #24
	ldmneia sp!, {r4, r5, r6, pc}
	bl ov11_02126F1C
	ldr r1, [r5]
	mov r1, r1, lsl #0x14
	cmp r0, r1, lsr #28
	ldmloia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	bl ov11_02127274
	ldr r1, [r5, #8]
	ldrb r0, [r4, #0x1c]
	mov r1, r1, lsl #0x18
	cmp r0, r1, lsr #24
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	bl ov11_02126984
	ldr r0, [r4, #0xc]
	bl ov11_021272C4
	cmp r0, #0
	beq _02125B34
	ldr r0, [r5, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x18
	cmp r0, #1
	movne r0, #2
	strneb r0, [r4, #0x19]
	ldmneia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02125A80
_02125B34:
	mov r0, #0
	strb r0, [r4, #0x19]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02125B40
ov11_02125B40: ; 0x02125B40
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl ov11_02126ED0
	mov r4, r0
	bl ov11_02126D9C
	cmp r0, #2
	ldmneia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrh r1, [r5, #0x10]
	ldr r0, [r5, #0xc]
	ldr r6, [r4, #0xc]
	bl DC_FlushRange
	ldrh r2, [r5, #0x10]
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0xc]
	bl MI_CpuCopy8
	bl ov11_02126F04
	ldr r1, [r6]
	mov r1, r1, lsl #0x18
	cmp r0, r1, lsr #24
	ldmneia sp!, {r4, r5, r6, pc}
	bl ov11_02126F1C
	ldr r1, [r6]
	mov r1, r1, lsl #0x14
	cmp r0, r1, lsr #28
	ldmloia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	bl ov11_02127274
	ldr r0, [r6, #8]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x18
	cmp r0, #0xfd
	ldmneia sp!, {r4, r5, r6, pc}
	bl ov11_02126EAC
	ldrh r5, [r5, #0x12]
	mov r3, r0
	mov r2, #0
	arm_func_end ov11_02125B40
_02125BDC:
	ldrh r1, [r3, #6]
	cmp r5, r1
	bne _02125C14
	mov r1, #0xc
	mla r1, r2, r1, r0
	mov r0, #1
	strb r0, [r1, #8]
	mov r0, #3
	strb r0, [r1, #9]
	mov r0, #0xb4
	strb r0, [r4, #0x1a]
	mov r0, #0
	strb r0, [r4, #0x19]
	ldmia sp!, {r4, r5, r6, pc}
_02125C14:
	add r2, r2, #1
	cmp r2, #1
	add r3, r3, #0xc
	blt _02125BDC
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02125C28
ov11_02125C28: ; 0x02125C28
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl ov11_02126ED0
	mov r4, r0
	ldrb r0, [r4, #0x1c]
	cmp r0, #0xfd
	bne _02125C50
	mov r0, r6
	bl ov11_02125B40
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02125C28
_02125C50:
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	ldrneb r0, [r4, #0x19]
	cmpne r0, #3
	ldmneia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	bl DC_FlushRange
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	bl MI_CpuCopy8
	bl ov11_02126F04
	ldr r1, [r5]
	mov r1, r1, lsl #0x18
	cmp r0, r1, lsr #24
	ldmneia sp!, {r4, r5, r6, pc}
	bl ov11_02126F1C
	ldr r1, [r5]
	mov r1, r1, lsl #0x14
	cmp r0, r1, lsr #28
	ldmloia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	bl ov11_02127274
	ldr r1, [r5, #8]
	ldrb r0, [r4, #0x1c]
	mov r1, r1, lsl #0x18
	cmp r0, r1, lsr #24
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	bl ov11_02126984
	mov r0, #0
	strb r0, [r4, #0x19]
	ldr r0, [r4, #0xc]
	bl ov11_021272C4
	cmp r0, #0
	ldr r0, [r5, #8]
	beq _02125D48
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x18
	cmp r0, #0xfd
	bne _02125D14
	mov r0, r6
	bl ov11_02125B40
	b _02125D30
_02125D14:
	ldr r2, [r5, #0xc]
	ldr r3, [r4, #0xc]
	mov r0, r2, lsl #0x18
	ldr r1, [r4, #4]
	add r0, r3, r0, lsr #24
	mov r2, r2, lsr #8
	bl MI_CpuCopy8
_02125D30:
	ldr r1, [r5, #8]
	mov r0, #4
	bic r1, r1, #0xff00
	str r1, [r5, #8]
	strb r0, [r4, #0x1b]
	ldmia sp!, {r4, r5, r6, pc}
_02125D48:
	bic r0, r0, #0xff00
	orr r0, r0, #0x100
	str r0, [r5, #8]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02125D58
ov11_02125D58: ; 0x02125D58
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #4]
	bl ov11_02126968
	ldrh r0, [r4, #2]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldrh r0, [r4, #4]
	cmp r0, #7
	beq _02125DD4
	cmp r0, #9
	beq _02125DE8
	cmp r0, #0x15
	ldmneia sp!, {r4, pc}
	bl ov11_02126D54
	cmp r0, #0xa
	cmpne r0, #0xb
	ldmneia sp!, {r4, pc}
	bl ov11_02126ED0
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	beq _02125DBC
	cmp r0, #2
	beq _02125DC8
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02125D58
_02125DBC:
	mov r0, r4
	bl ov11_02125A80
	ldmia sp!, {r4, pc}
_02125DC8:
	mov r0, r4
	bl ov11_02125C28
	ldmia sp!, {r4, pc}
_02125DD4:
	mov r0, #1
	bl ov11_02126E54
	mov r0, #0
	bl ov11_02126E68
	ldmia sp!, {r4, pc}
_02125DE8:
	bl ov11_02126E44
	cmp r0, #0
	beq _02125DFC
	mov r0, #1
	bl ov11_02126E68
_02125DFC:
	bl ov11_02126D54
	cmp r0, #0xa
	beq _02125E14
	cmp r0, #0xb
	beq _02125E20
	ldmia sp!, {r4, pc}
_02125E14:
	ldrh r0, [r4, #0x12]
	bl ov11_02124F78
	ldmia sp!, {r4, pc}
_02125E20:
	mov r0, #0
	bl ov11_02126E54
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02125E2C
ov11_02125E2C: ; 0x02125E2C
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02125E50
	bl ov11_02124F38
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_0212593C
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02125E2C
_02125E50:
	bl ov11_02126964
	mov r0, #4
	bl ov11_02126D64
	bl OS_Terminate
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02125E64
ov11_02125E64: ; 0x02125E64
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02125E94
	bl ov11_02126A1C
	cmp r0, #0
	bne _02125E88
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02125E64
_02125E88:
	mov r0, #2
	bl ov11_02126D64
	ldmia sp!, {r3, pc}
_02125E94:
	bl ov11_02126964
	bl ov11_02124F00
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02125EA0
ov11_02125EA0: ; 0x02125EA0
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02125F04
	mov r0, #0
	bl ov11_02126E30
	bl ov11_02126D78
	cmp r0, #0xc
	bne _02125EE4
	bl ov11_02126D10
	cmp r0, #0
	bne _02125ED8
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02125EA0
_02125ED8:
	mov r0, #3
	bl ov11_02126D64
	ldmia sp!, {r3, pc}
_02125EE4:
	bl ov11_02126CB8
	cmp r0, #0
	bne _02125EF8
	bl OS_Terminate
	ldmia sp!, {r3, pc}
_02125EF8:
	mov r0, #3
	bl ov11_02126D64
	ldmia sp!, {r3, pc}
_02125F04:
	bl ov11_02126964
	mov r0, #4
	bl ov11_02126D64
	bl OS_Terminate
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02125F18
ov11_02125F18: ; 0x02125F18
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02125F3C
	mov r0, #0xc
	bl ov11_02126D64
	mov r0, #1
	bl ov11_02126E7C
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02125F18
_02125F3C:
	bl ov11_02126964
	mov r0, #4
	bl ov11_02126D64
	bl OS_Terminate
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02125F50
ov11_02125F50: ; 0x02125F50
	stmdb sp!, {r3, lr}
	ldr r0, _02125F78 ; =ov11_0212511C
	bl WM_SetIndCallback
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	mov r0, #4
	bl ov11_02126D64
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02125F78: .word ov11_0212511C
	arm_func_end ov11_02125F50

	arm_func_start ov11_02125F7C
ov11_02125F7C: ; 0x02125F7C
	stmdb sp!, {r3, lr}
	bl ov11_02126D54
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	ldmneia sp!, {r3, pc}
	bl ov11_021269F4
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02125F7C

	arm_func_start ov11_02125F9C
ov11_02125F9C: ; 0x02125F9C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov11_02126D3C
	ldrh r0, [r0, #0x34]
	cmp r5, r0
	ldmhiia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl DC_FlushRange
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov11_02126988
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02125F9C

	arm_func_start ov11_02125FDC
ov11_02125FDC: ; 0x02125FDC
	mov r0, #0x5c0
	bx lr
	arm_func_end ov11_02125FDC

	arm_func_start ov11_02125FE4
ov11_02125FE4: ; 0x02125FE4
	mov r0, #0x5c0
	bx lr
	arm_func_end ov11_02125FE4

	arm_func_start ov11_02125FEC
ov11_02125FEC: ; 0x02125FEC
	stmdb sp!, {r4, lr}
	mov r4, #0xf00
	bl ov11_02125FDC
	add r4, r4, r0, lsl #1
	bl ov11_02125FE4
	add r0, r4, r0, lsl #1
	add r0, r0, #0x100
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02125FEC

	arm_func_start ov11_0212600C
ov11_0212600C: ; 0x0212600C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r6, r0
	bl ov11_02126D3C
	bl ov11_02126D48
	mov r4, r0
	ands r0, r5, #0x1f
	rsbne r0, r0, #0x20
	addne r5, r5, r0
	add r0, sp, #0
	bl OS_GetMacAddress
	mov r2, #0
	strb r2, [r4]
	strb r2, [r4, #1]
	strb r2, [r4, #2]
	mov r1, #4
	ldr r0, _021261C0 ; =0x00400131
	strb r1, [r4, #3]
	str r0, [r4, #4]
	strh r2, [r4, #0xc]
	str r5, [r4, #0x34]
	add r5, r5, #0xf00
	str r5, [r4, #0x38]
	bl ov11_02125FDC
	str r0, [r4, #0x2c]
	add r5, r5, r0
	str r5, [r4, #0x3c]
	bl ov11_02125FE4
	add r2, r5, r0
	str r0, [r4, #0x30]
	str r2, [r4, #0x28]
	add r0, r2, #0xc0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x34]
	mov r1, #2
	add r5, r2, #0xe0
	bl WM_Init
	bl ov11_02125F50
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x40]
	bic r1, r1, #0xff
	orr r1, r1, #0xf
	bic r1, r1, #0xf00
	orr r1, r1, #0x100
	bic r1, r1, #0xf000
	orr r1, r1, #0x1000
	str r1, [r4, #0x40]
	ldr r1, [r6]
	ldr r2, [r4, #0x44]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x18
	bic r2, r2, #0xff
	and r1, r1, #0xff
	orr r1, r2, r1
	str r1, [r4, #0x44]
	bic r2, r1, #0xf00
	ldr r1, [r6]
	mov r1, r1, lsl #0x14
	mov r1, r1, lsr #0x1c
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #20
	str r1, [r4, #0x44]
	bic r2, r1, #0xf000
	ldr r1, [r6]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x1c
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #16
	str r1, [r4, #0x44]
	ldr r1, [r6]
	ldr r3, [r4, #0x44]
	mov r2, r1, lsr #0x10
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	orr r1, r2, r1, lsr #16
	str r1, [r4, #0x44]
	ldr r3, [r6, #8]
	ldr r6, [r6, #4]
	b _02126178
	arm_func_end ov11_0212600C
_02126160:
	ldrh r1, [r3], #2
	add r2, r4, r0, lsl #1
	add r0, r0, #1
	strh r1, [r2, #0x48]
	ldrh r1, [r6], #2
	strh r1, [r2, #0x60]
_02126178:
	cmp r3, #0
	beq _02126188
	cmp r0, #0xc
	blo _02126160
_02126188:
	ldr r0, [r4, #0x40]
	str r0, [r4, #0x78]
	ldr r0, [r4, #0x44]
	str r0, [r4, #0x7c]
	bl ov11_02126EE0
	bl ov11_02126ED0
	str r5, [r0, #8]
	ldr r0, [r4, #0x2c]
	add r5, r5, r0
	bl ov11_02126ED0
	str r5, [r0, #0xc]
	bl WM_GetNextTgid
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021261C0: .word 0x00400131

	arm_func_start ov11_021261C4
ov11_021261C4: ; 0x021261C4
	stmdb sp!, {r3, r4, r5, lr}
	bl ov11_02126ED0
	mov r4, r0
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _021261F8
	ldrb r0, [r4, #0x1a]
	sub r0, r0, #1
	strb r0, [r4, #0x1a]
	tst r0, #0xff
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #0
	strb r0, [r4, #0x19]
	arm_func_end ov11_021261C4
_021261F8:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov11_0212702C
	ldrb r1, [r4, #0x1c]
	rsb r5, r0, #0x40
	mov r2, r5
	str r1, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	mov r3, #3
	bl ov11_021270B8
	bl ov11_0212702C
	mov r1, r0
	ldr r0, [r4, #8]
	add r1, r5, r1
	ldr r2, _02126254 ; =0x0000FFFF
	bl ov11_02125F9C
	mov r0, #1
	strb r0, [r4, #0x19]
	mov r0, #0x3c
	strb r0, [r4, #0x1a]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02126254: .word 0x0000FFFF

	arm_func_start ov11_02126258
ov11_02126258: ; 0x02126258
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	bl ov11_02126ED0
	mov r4, r0
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0x1c]
	cmp r0, #0xfd
	bne _02126328
	bl ov11_02126EAC
	mov r5, r0
	mov r2, r5
	mov r1, #0
	arm_func_end ov11_02126258
_0212628C:
	ldrb r0, [r2, #9]
	cmp r0, #0
	beq _021262FC
	mov r0, #0xc
	mul r6, r1, r0
	add r0, r5, r6
	ldrh r1, [r0, #6]
	mov r0, #0xfd
	mov r2, #1
	str r0, [sp]
	mov r0, r2, lsl r1
	mov ip, r0, lsl #0x10
	mov r2, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	mov r3, r2
	mov r7, ip, lsr #0x10
	bl ov11_021270B8
	bl ov11_0212702C
	mov r1, r0
	ldr r0, [r4, #8]
	mov r2, r7
	bl ov11_02125F9C
	add r1, r5, #9
	ldrb r0, [r1, r6]
	sub r0, r0, #1
	strb r0, [r1, r6]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021262FC:
	add r1, r1, #1
	cmp r1, #1
	add r2, r2, #0xc
	blt _0212628C
	ldrb r0, [r4, #0x1a]
	sub r0, r0, #1
	strb r0, [r4, #0x1a]
	tst r0, #0xff
	moveq r0, #2
	streqb r0, [r4, #0x19]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02126328:
	bl ov11_0212702C
	bl ov11_02125FDC
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	mov r0, r0, lsl #0x10
	movs r3, r0, lsr #0x18
	bne _02126360
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	moveq r0, #2
	streqb r0, [r4, #0x19]
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	sub r0, r0, #1
	strb r0, [r4, #0x1b]
_02126360:
	ldrb r0, [r4, #0x1c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl ov11_021270B8
	bl ov11_0212702C
	mov r1, r0
	ldr r0, [r4, #8]
	ldr r2, _02126390 ; =0x0000FFFF
	bl ov11_02125F9C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02126390: .word 0x0000FFFF

	arm_func_start ov11_02126394
ov11_02126394: ; 0x02126394
	stmdb sp!, {r3, lr}
	bl ov11_02126ED0
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	beq _021263B4
	cmp r0, #2
	beq _021263BC
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126394
_021263B4:
	bl ov11_021261C4
	ldmia sp!, {r3, pc}
_021263BC:
	bl ov11_02126258
	ldmia sp!, {r3, pc}

	arm_func_start ov11_021263C4
ov11_021263C4: ; 0x021263C4
	stmdb sp!, {r4, lr}
	bl ov11_02126EA0
	mov r4, r0
	bl ov11_02126D54
	cmp r0, #6
	beq _021263E8
	cmp r0, #0xb
	beq _021263FC
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021263C4
_021263E8:
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	subne r0, r0, #1
	strneh r0, [r4, #0x38]
	ldmia sp!, {r4, pc}
_021263FC:
	bl ov11_02126394
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02126404
ov11_02126404: ; 0x02126404
	stmdb sp!, {r3, lr}
	bl ov11_02126D54
	cmp r0, #0xa
	ldmneia sp!, {r3, pc}
	bl ov11_02126394
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126404

	arm_func_start ov11_0212641C
ov11_0212641C: ; 0x0212641C
	stmdb sp!, {r3, lr}
	bl ov11_02126D54
	cmp r0, #0xc
	ldmeqia sp!, {r3, pc}
	bl ov11_02126D78
	cmp r0, #0xc
	bne _0212644C
	bl ov11_02126D54
	cmp r0, #7
	ldmneia sp!, {r3, pc}
	bl ov11_02126CE4
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212641C
_0212644C:
	bl ov11_02126D9C
	cmp r0, #1
	beq _02126464
	cmp r0, #2
	beq _0212646C
	b _02126474
_02126464:
	bl ov11_021263C4
	ldmia sp!, {r3, pc}
_0212646C:
	bl ov11_02126404
	ldmia sp!, {r3, pc}
_02126474:
	bl ov11_02126D48
	bl ov11_02126D54
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02126480
ov11_02126480: ; 0x02126480
	stmdb sp!, {r3, lr}
	bl ov11_02126EB8
	mov r0, #2
	bl ov11_02126DAC
	bl ov11_02125F7C
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126480

	arm_func_start ov11_02126498
ov11_02126498: ; 0x02126498
	stmdb sp!, {r3, r4, r5, lr}
	bl ov11_02126D9C
	mov r4, r0
	cmp r4, #1
	mov r5, #0
	beq _021264B4
	bl OS_Terminate
	arm_func_end ov11_02126498
_021264B4:
	cmp r4, #1
	bne _021264E0
	bl ov11_02126EA0
	ldrb r1, [r0, #0x3b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	bne _021264E0
	ldr r0, [r0]
	cmp r0, #0
	addne r5, r5, #1
_021264E0:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_021264E8
ov11_021264E8: ; 0x021264E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126EA0
	mov r1, #0x38
	mul r1, r4, r1
	ldr r0, [r0, r1]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021264E8

	arm_func_start ov11_02126504
ov11_02126504: ; 0x02126504
	stmdb sp!, {r3, r4, r5, lr}
	bl ov11_02126D9C
	mov r4, r0
	cmp r4, #2
	mov r5, #0
	beq _02126520
	bl OS_Terminate
	arm_func_end ov11_02126504
_02126520:
	cmp r4, #2
	bne _0212654C
	bl ov11_02126EAC
	ldrb r1, [r0, #0xc]
	cmp r1, #2
	bne _0212654C
	ldr r1, [r0]
	cmp r1, #0
	ldrneb r0, [r0, #0xa]
	cmpne r0, #0
	addne r5, r5, #1
_0212654C:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02126554
ov11_02126554: ; 0x02126554
	stmdb sp!, {r3, r4, r5, lr}
	bl ov11_02126D9C
	mov r4, r0
	cmp r4, #2
	mov r5, #0
	beq _02126570
	bl OS_Terminate
	arm_func_end ov11_02126554
_02126570:
	cmp r4, #2
	bne _021265A4
	bl ov11_02126EAC
	ldrb r1, [r0, #0xc]
	cmp r1, #2
	bne _021265A4
	ldr r1, [r0]
	cmp r1, #0
	ldrneb r1, [r0, #8]
	cmpne r1, #0
	ldrneb r0, [r0, #0xa]
	cmpne r0, #0
	addne r5, r5, #1
_021265A4:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_021265AC
ov11_021265AC: ; 0x021265AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126EAC
	mov r2, #0
	mov r3, r2
	arm_func_end ov11_021265AC
_021265C0:
	ldr r1, [r0]
	cmp r1, #0
	ldrneb r1, [r0, #8]
	cmpne r1, #0
	ldrneb r1, [r0, #0xa]
	cmpne r1, #0
	beq _021265EC
	cmp r2, r4
	moveq r0, r3
	ldmeqia sp!, {r4, pc}
	add r2, r2, #1
_021265EC:
	add r3, r3, #1
	cmp r3, #1
	add r0, r0, #0xc
	blo _021265C0
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02126604
ov11_02126604: ; 0x02126604
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126EAC
	mov r1, #0xc
	mul r1, r4, r1
	ldr r0, [r0, r1]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02126604

	arm_func_start ov11_02126620
ov11_02126620: ; 0x02126620
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126EAC
	ldr r1, [r0]
	mov r2, #0
	cmp r1, #0
	cmpne r4, r1
	ldrneb r1, [r0, #0xa]
	cmpne r1, #0
	ldrneh r0, [r0, #6]
	movne r1, #1
	orrne r2, r2, r1, lsl r0
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_02126BB0
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02126620

	arm_func_start ov11_02126668
ov11_02126668: ; 0x02126668
	stmdb sp!, {r3, lr}
	bl ov11_02126D9C
	cmp r0, #1
	beq _02126684
	cmp r0, #2
	beq _0212668C
	b _02126694
	arm_func_end ov11_02126668
_02126684:
	bl ov11_02126498
	ldmia sp!, {r3, pc}
_0212668C:
	bl ov11_02126504
	ldmia sp!, {r3, pc}
_02126694:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov11_0212669C
ov11_0212669C: ; 0x0212669C
	stmdb sp!, {r3, lr}
	bl ov11_02126D9C
	cmp r0, #1
	beq _021266B8
	cmp r0, #2
	beq _021266C0
	b _021266C8
	arm_func_end ov11_0212669C
_021266B8:
	mov r0, #0
	ldmia sp!, {r3, pc}
_021266C0:
	bl ov11_02126554
	ldmia sp!, {r3, pc}
_021266C8:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov11_021266D0
ov11_021266D0: ; 0x021266D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126D9C
	cmp r0, #1
	beq _021266F0
	cmp r0, #2
	beq _021266FC
	b _02126708
	arm_func_end ov11_021266D0
_021266F0:
	mov r0, r4
	bl ov11_021264E8
	ldmia sp!, {r4, pc}
_021266FC:
	mov r0, r4
	bl ov11_02126604
	ldmia sp!, {r4, pc}
_02126708:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02126710
ov11_02126710: ; 0x02126710
	stmdb sp!, {r3, lr}
	bl ov11_021265AC
	bl ov11_021266D0
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126710

	arm_func_start ov11_02126720
ov11_02126720: ; 0x02126720
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	bl ov11_02126ED0
	cmp r4, #0xf0
	ldmgtia sp!, {r4, r5, r6, pc}
	mov r1, #1
	strb r1, [r0, #0x18]
	mov r2, #0
	strb r2, [r0, #0x19]
	str r6, [r0]
	str r6, [r0, #4]
	str r5, [r0, #0x10]
	str r5, [r0, #0x14]
	mov r1, #0x78
	strb r1, [r0, #0x1a]
	strb r2, [r0, #0x1b]
	strb r4, [r0, #0x1c]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02126720

	arm_func_start ov11_02126770
ov11_02126770: ; 0x02126770
	stmdb sp!, {r4, lr}
	bl ov11_02126ED0
	mov r4, r0
	bl ov11_02126D9C
	cmp r0, #2
	ldmneia sp!, {r4, pc}
	mov r0, #2
	strb r0, [r4, #0x18]
	mov r0, #3
	strb r0, [r4, #0x19]
	mov r1, #0
	str r1, [r4]
	str r1, [r4, #4]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	mov r0, #0x78
	strb r0, [r4, #0x1a]
	strb r1, [r4, #0x1b]
	mov r0, #0xfd
	strb r0, [r4, #0x1c]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02126770

	arm_func_start ov11_021267C4
ov11_021267C4: ; 0x021267C4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126ED0
	mov r1, #2
	strb r1, [r0, #0x18]
	mov r1, #3
	strb r1, [r0, #0x19]
	str r4, [r0]
	str r4, [r0, #4]
	mov r1, #0x30
	str r1, [r0, #0x10]
	mov r2, #0
	str r2, [r0, #0x14]
	mov r1, #0x78
	strb r1, [r0, #0x1a]
	strb r2, [r0, #0x1b]
	mov r1, #0xfe
	strb r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021267C4

	arm_func_start ov11_02126810
ov11_02126810: ; 0x02126810
	stmdb sp!, {r3, lr}
	bl ov11_02126D9C
	cmp r0, #1
	cmpne r0, #2
	bne _02126848
	bl ov11_02126D54
	cmp r0, #0xa
	cmpne r0, #0xb
	bne _02126848
	bl ov11_02126ED0
	ldrb r0, [r0, #0x19]
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	arm_func_end ov11_02126810
_02126848:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02126850
ov11_02126850: ; 0x02126850
	stmdb sp!, {r3, lr}
	bl ov11_02126D9C
	cmp r0, #1
	cmpne r0, #2
	bne _02126888
	bl ov11_02126D54
	cmp r0, #0xa
	cmpne r0, #0xb
	bne _02126888
	bl ov11_02126ED0
	ldrb r0, [r0, #0x19]
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	arm_func_end ov11_02126850
_02126888:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02126890
ov11_02126890: ; 0x02126890
	stmdb sp!, {r3, lr}
	bl ov11_02126D9C
	cmp r0, #2
	bne _021268D8
	bl ov11_02126EAC
	mov r2, #0
	arm_func_end ov11_02126890
_021268A8:
	ldr r1, [r0]
	cmp r1, #0
	ldrneb r1, [r0, #0xa]
	cmpne r1, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
	add r2, r2, #1
	cmp r2, #1
	add r0, r0, #0xc
	blt _021268A8
	mov r0, #0
	ldmia sp!, {r3, pc}
_021268D8:
	bl ov11_02126E44
	ldmia sp!, {r3, pc}

	arm_func_start ov11_021268E0
ov11_021268E0: ; 0x021268E0
	stmdb sp!, {r3, lr}
	bl ov11_0212669C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021268E0

	arm_func_start ov11_021268F8
ov11_021268F8: ; 0x021268F8
	stmdb sp!, {r4, lr}
	mov r0, #0xc
	bl ov11_02126D88
	bl ov11_02126D54
	cmp r0, #0
	cmpne r0, #1
	beq _02126920
	cmp r0, #9
	beq _02126930
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021268F8
_02126920:
	bl WM_Finish
	mov r0, #1
	bl ov11_02126E7C
	ldmia sp!, {r4, pc}
_02126930:
	bl ov11_02126E44
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl ov11_02126D48
	mov r4, r0
	bl ov11_02126CE4
	mov r0, #1
	str r0, [r4, #0x1c]
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02126954
ov11_02126954: ; 0x02126954
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldr r0, [r0, #0x20]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126954

	arm_func_start ov11_02126964
ov11_02126964: ; 0x02126964
	bx lr
	arm_func_end ov11_02126964

	arm_func_start ov11_02126968
ov11_02126968: ; 0x02126968
	bx lr
	arm_func_end ov11_02126968

	arm_func_start ov11_0212696C
ov11_0212696C: ; 0x0212696C
	ldr ip, _02126978 ; =FUN_020660A0
	mov r1, #0xc0
	bx ip
	.align 2, 0
_02126978: .word DC_InvalidateRange
	arm_func_end ov11_0212696C

	arm_func_start ov11_0212697C
ov11_0212697C: ; 0x0212697C
	bx lr
	arm_func_end ov11_0212697C

	arm_func_start ov11_02126980
ov11_02126980: ; 0x02126980
	bx lr
	arm_func_end ov11_02126980

	arm_func_start ov11_02126984
ov11_02126984: ; 0x02126984
	bx lr
	arm_func_end ov11_02126984

	arm_func_start ov11_02126988
ov11_02126988: ; 0x02126988
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov11_02126DC0
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	str r4, [sp]
	mov r1, r5, lsl #0x10
	str r3, [sp, #4]
	mov ip, #2
	mov r3, r1, lsr #0x10
	ldr r0, _021269F0 ; =ov11_02125144
	mov r2, r6
	mov r1, #0
	str ip, [sp, #8]
	bl WM_SetMPDataToPortEx
	cmp r0, #2
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	bl ov11_02126964
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_021269F0: .word ov11_02125144
	arm_func_end ov11_02126988

	arm_func_start ov11_021269F4
ov11_021269F4: ; 0x021269F4
	stmdb sp!, {r3, lr}
	ldr r0, _02126A18 ; =ov11_02125168
	bl WM_Enable
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02126964
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02126A18: .word ov11_02125168
	arm_func_end ov11_021269F4

	arm_func_start ov11_02126A1C
ov11_02126A1C: ; 0x02126A1C
	stmdb sp!, {r3, lr}
	ldr r0, _02126A44 ; =ov11_021251C4
	bl WM_Disable
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02126964
	bl OS_Terminate
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02126A44: .word ov11_021251C4
	arm_func_end ov11_02126A1C

	arm_func_start ov11_02126A48
ov11_02126A48: ; 0x02126A48
	stmdb sp!, {r3, lr}
	mov r1, r0, lsl #0x10
	mov ip, #0x1e
	mov r3, r1, lsr #0x10
	ldr r0, _02126A84 ; =ov11_02125218
	mov r1, #3
	mov r2, #0x11
	str ip, [sp]
	bl WM_MeasureChannel
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02126964
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02126A84: .word ov11_02125218
	arm_func_end ov11_02126A48

	arm_func_start ov11_02126A88
ov11_02126A88: ; 0x02126A88
	stmdb sp!, {r3, r4, r5, lr}
	bl ov11_02126D3C
	mov r5, r0
	bl ov11_02126F50
	mov r4, r0
	bl ov11_02126EAC
	ldrb r0, [r0, #0x10]
	strh r0, [r5, #0x32]
	str r4, [r5]
	bl ov11_02126F48
	strh r0, [r5, #4]
	ldr r0, _02126AD8 ; =ov11_021252A4
	mov r1, r5
	bl WM_SetParentParameter
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	bl ov11_02126964
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02126AD8: .word ov11_021252A4
	arm_func_end ov11_02126A88

	arm_func_start ov11_02126ADC
ov11_02126ADC: ; 0x02126ADC
	stmdb sp!, {r3, lr}
	ldr r0, _02126B00 ; =ov11_021252E0
	bl WM_StartParent
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02126964
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02126B00: .word ov11_021252E0
	arm_func_end ov11_02126ADC

	arm_func_start ov11_02126B04
ov11_02126B04: ; 0x02126B04
	stmdb sp!, {r3, lr}
	bl ov11_02126DD0
	mov r1, r0
	ldr r0, _02126B30 ; =ov11_02125758
	bl WM_StartScan
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02126964
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02126B30: .word ov11_02125758
	arm_func_end ov11_02126B04

	arm_func_start ov11_02126B34
ov11_02126B34: ; 0x02126B34
	stmdb sp!, {r3, lr}
	ldr r0, _02126B58 ; =ov11_021257F8
	bl WM_EndScan
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02126964
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02126B58: .word ov11_021257F8
	arm_func_end ov11_02126B34

	arm_func_start ov11_02126B5C
ov11_02126B5C: ; 0x02126B5C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl ov11_02126F60
	mov r4, r0
	bl ov11_02126E20
	mov r1, r0
	mov ip, #0
	ldr r0, _02126BAC ; =ov11_0212586C
	mov r2, r4
	mov r3, #1
	str ip, [sp]
	bl WM_StartConnectEx
	cmp r0, #2
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r3, r4, pc}
	bl ov11_02126964
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02126BAC: .word ov11_0212586C
	arm_func_end ov11_02126B5C

	arm_func_start ov11_02126BB0
ov11_02126BB0: ; 0x02126BB0
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldr r0, _02126BD8 ; =ov11_021259B4
	bl WM_DisconnectChildren
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02126964
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02126BD8: .word ov11_021259B4
	arm_func_end ov11_02126BB0

	arm_func_start ov11_02126BDC
ov11_02126BDC: ; 0x02126BDC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _02126C88 ; =ov11_02125D58
	mov r0, #4
	mov r2, #0
	bl WM_SetPortCallback
	cmp r0, #0
	beq _02126C0C
	bl ov11_02126964
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov11_02126BDC
_02126C0C:
	bl ov11_02126D3C
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	moveq r7, #1
	movne r7, #0
	bl ov11_02126E10
	mov r6, r0
	bl ov11_02126DF0
	mov r5, r0
	bl ov11_02126E00
	mov r4, r0
	bl ov11_02126DE0
	mov r1, r7, lsl #0x10
	mov r0, r0, lsl #0x10
	mov ip, r1, lsr #0x10
	mov r0, r0, lsr #0x10
	mov r2, r5, lsl #0x10
	stmia sp, {r0, ip}
	ldr r0, _02126C8C ; =ov11_02125A08
	mov r1, r6
	mov r2, r2, lsr #0x10
	mov r3, r4
	bl WM_StartMP
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov11_02126964
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02126C88: .word ov11_02125D58
_02126C8C: .word ov11_02125A08

	arm_func_start ov11_02126C90
ov11_02126C90: ; 0x02126C90
	stmdb sp!, {r3, lr}
	ldr r0, _02126CB4 ; =ov11_02125E2C
	bl WM_PowerOn
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02126964
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02126CB4: .word ov11_02125E2C
	arm_func_end ov11_02126C90

	arm_func_start ov11_02126CB8
ov11_02126CB8: ; 0x02126CB8
	stmdb sp!, {r3, lr}
	ldr r0, _02126CE0 ; =ov11_02125E64
	bl WM_PowerOff
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02126964
	bl OS_Terminate
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02126CE0: .word ov11_02125E64
	arm_func_end ov11_02126CB8

	arm_func_start ov11_02126CE4
ov11_02126CE4: ; 0x02126CE4
	stmdb sp!, {r3, lr}
	ldr r0, _02126D0C ; =ov11_02125EA0
	bl WM_Reset
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02126964
	bl OS_Terminate
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02126D0C: .word ov11_02125EA0
	arm_func_end ov11_02126CE4

	arm_func_start ov11_02126D10
ov11_02126D10: ; 0x02126D10
	stmdb sp!, {r3, lr}
	ldr r0, _02126D38 ; =ov11_02125F18
	bl WM_End
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02126964
	bl OS_Terminate
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02126D38: .word ov11_02125F18
	arm_func_end ov11_02126D10

	arm_func_start ov11_02126D3C
ov11_02126D3C: ; 0x02126D3C
	ldr r0, _02126D44 ; =DAT_overlay_11_02166420
	bx lr
	.align 2, 0
_02126D44: .word DAT_overlay_11_02166420
	arm_func_end ov11_02126D3C

	arm_func_start ov11_02126D48
ov11_02126D48: ; 0x02126D48
	ldr r0, _02126D50 ; =OVERLAY11_BSS_02169B58
	bx lr
	.align 2, 0
_02126D50: .word OVERLAY11_BSS_02169B58
	arm_func_end ov11_02126D48

	arm_func_start ov11_02126D54
ov11_02126D54: ; 0x02126D54
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldrb r0, [r0]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126D54

	arm_func_start ov11_02126D64
ov11_02126D64: ; 0x02126D64
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126D48
	strb r4, [r0]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02126D64

	arm_func_start ov11_02126D78
ov11_02126D78: ; 0x02126D78
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldrb r0, [r0, #1]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126D78

	arm_func_start ov11_02126D88
ov11_02126D88: ; 0x02126D88
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126D48
	strb r4, [r0, #1]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02126D88

	arm_func_start ov11_02126D9C
ov11_02126D9C: ; 0x02126D9C
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldrb r0, [r0, #2]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126D9C

	arm_func_start ov11_02126DAC
ov11_02126DAC: ; 0x02126DAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126D48
	strb r4, [r0, #2]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02126DAC

	arm_func_start ov11_02126DC0
ov11_02126DC0: ; 0x02126DC0
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldrb r0, [r0, #3]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126DC0

	arm_func_start ov11_02126DD0
ov11_02126DD0: ; 0x02126DD0
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldr r0, [r0, #0x24]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126DD0

	arm_func_start ov11_02126DE0
ov11_02126DE0: ; 0x02126DE0
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldr r0, [r0, #0x2c]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126DE0

	arm_func_start ov11_02126DF0
ov11_02126DF0: ; 0x02126DF0
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldr r0, [r0, #0x30]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126DF0

	arm_func_start ov11_02126E00
ov11_02126E00: ; 0x02126E00
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldr r0, [r0, #0x38]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126E00

	arm_func_start ov11_02126E10
ov11_02126E10: ; 0x02126E10
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldr r0, [r0, #0x3c]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126E10

	arm_func_start ov11_02126E20
ov11_02126E20: ; 0x02126E20
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldr r0, [r0, #0x28]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126E20

	arm_func_start ov11_02126E30
ov11_02126E30: ; 0x02126E30
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126D48
	strh r4, [r0, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02126E30

	arm_func_start ov11_02126E44
ov11_02126E44: ; 0x02126E44
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldr r0, [r0, #0x14]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126E44

	arm_func_start ov11_02126E54
ov11_02126E54: ; 0x02126E54
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126D48
	str r4, [r0, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02126E54

	arm_func_start ov11_02126E68
ov11_02126E68: ; 0x02126E68
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126D48
	str r4, [r0, #0x18]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02126E68

	arm_func_start ov11_02126E7C
ov11_02126E7C: ; 0x02126E7C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126D48
	str r4, [r0, #0x20]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02126E7C

	arm_func_start ov11_02126E90
ov11_02126E90: ; 0x02126E90
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	add r0, r0, #0x90
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126E90

	arm_func_start ov11_02126EA0
ov11_02126EA0: ; 0x02126EA0
	ldr ip, _02126EA8 ; =ov11_02126E90
	bx ip
	.align 2, 0
_02126EA8: .word ov11_02126E90
	arm_func_end ov11_02126EA0

	arm_func_start ov11_02126EAC
ov11_02126EAC: ; 0x02126EAC
	ldr ip, _02126EB4 ; =ov11_02126E90
	bx ip
	.align 2, 0
_02126EB4: .word ov11_02126E90
	arm_func_end ov11_02126EAC

	arm_func_start ov11_02126EB8
ov11_02126EB8: ; 0x02126EB8
	stmdb sp!, {r3, lr}
	bl ov11_02126EAC
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126EB8

	arm_func_start ov11_02126ED0
ov11_02126ED0: ; 0x02126ED0
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	add r0, r0, #0xcc
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126ED0

	arm_func_start ov11_02126EE0
ov11_02126EE0: ; 0x02126EE0
	stmdb sp!, {r3, lr}
	bl ov11_02126ED0
	mov r1, #0
	strb r1, [r0, #0x18]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126EE0

	arm_func_start ov11_02126EF4
ov11_02126EF4: ; 0x02126EF4
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldr r0, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126EF4

	arm_func_start ov11_02126F04
ov11_02126F04: ; 0x02126F04
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldr r0, [r0, #0x40]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x18
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126F04

	arm_func_start ov11_02126F1C
ov11_02126F1C: ; 0x02126F1C
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldr r0, [r0, #0x40]
	mov r0, r0, lsl #0x14
	mov r0, r0, lsr #0x1c
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126F1C

	arm_func_start ov11_02126F34
ov11_02126F34: ; 0x02126F34
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	ldr r0, [r0, #0x44]
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126F34

	arm_func_start ov11_02126F48
ov11_02126F48: ; 0x02126F48
	mov r0, #0x38
	bx lr
	arm_func_end ov11_02126F48

	arm_func_start ov11_02126F50
ov11_02126F50: ; 0x02126F50
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	add r0, r0, #0x40
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126F50

	arm_func_start ov11_02126F60
ov11_02126F60: ; 0x02126F60
	stmdb sp!, {r3, lr}
	bl ov11_02126D48
	add r0, r0, #0x78
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02126F60

	arm_func_start ov11_02126F70
ov11_02126F70: ; 0x02126F70
	stmdb sp!, {r3}
	sub sp, sp, #4
	mov r2, #0
	add r3, sp, #0
	str r2, [sp]
	arm_func_end ov11_02126F70
_02126F84:
	add r1, r0, r2
	ldrb r1, [r1, #2]
	add r2, r2, #1
	cmp r2, #4
	strb r1, [r3], #1
	blo _02126F84
	ldr r0, [sp]
	add sp, sp, #4
	ldmia sp!, {r3}
	bx lr

	arm_func_start ov11_02126FAC
ov11_02126FAC: ; 0x02126FAC
	stmdb sp!, {r3}
	sub sp, sp, #4
	mov r2, #0
	add r3, sp, #0
	strh r2, [sp]
	arm_func_end ov11_02126FAC
_02126FC0:
	ldrb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, #2
	strb r1, [r3], #1
	blo _02126FC0
	ldrsh r0, [sp]
	add sp, sp, #4
	ldmia sp!, {r3}
	bx lr

	arm_func_start ov11_02126FE4
ov11_02126FE4: ; 0x02126FE4
	stmdb sp!, {r4, r5, r6, lr}
	ldr lr, _02127024 ; =0xD1B71759
	ldr r4, _02127028 ; =0x00002710
	umull r3, r6, r0, lr
	mov r6, r6, lsr #0xd
	umull r3, r5, r0, lr
	mov r5, r5, lsr #0xd
	umull r3, ip, r4, r6
	umull ip, lr, r5, lr
	mov lr, lr, lsr #0xd
	umull ip, lr, r4, lr
	sub r6, r0, r3
	str r6, [r1]
	rsb lr, ip, r5
	str lr, [r2]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02127024: .word 0xD1B71759
_02127028: .word 0x00002710
	arm_func_end ov11_02126FE4

	arm_func_start ov11_0212702C
ov11_0212702C: ; 0x0212702C
	mov r0, #0x10
	bx lr
	arm_func_end ov11_0212702C

	arm_func_start ov11_02127034
ov11_02127034: ; 0x02127034
	stmdb sp!, {r4, lr}
	ldr r0, _02127054 ; =0x04000006
	ldrh r4, [r0]
	bl OS_GetTick
	adds r0, r0, r4
	bic r0, r0, #1
	add r0, r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02127054: .word 0x04000006
	arm_func_end ov11_02127034

	arm_func_start ov11_02127058
ov11_02127058: ; 0x02127058
	stmdb sp!, {r4, r5, r6, lr}
	movs r3, r1, lsr #2
	mov r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr lr, _021270B0 ; =0x5D588B65
	ldr r4, _021270B4 ; =0x00269EC3
	arm_func_end ov11_02127058
_02127070:
	mla r5, r0, lr, r4
	mla r0, r5, lr, r4
	mov r6, r5, lsr #0x10
	mov r5, r0, lsr #0x10
	mov ip, r6, lsl #0x10
	mov r5, r5, lsl #0x10
	add r1, r1, #1
	mov r6, ip, lsr #0x10
	mov r5, r5, lsr #0x10
	ldr ip, [r2]
	orr r5, r5, r6, lsl #16
	eor r5, ip, r5
	cmp r1, r3
	str r5, [r2], #4
	blo _02127070
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021270B0: .word 0x5D588B65
_021270B4: .word 0x00269EC3

	arm_func_start ov11_021270B8
ov11_021270B8: ; 0x021270B8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl ov11_02126F50
	mov r4, r0
	ldr r0, [r4]
	ldr r1, [r8]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x18
	bic r1, r1, #0xff
	and r0, r0, #0xff
	orr r1, r1, r0
	str r1, [r8]
	ldr r0, [r4]
	bic r1, r1, #0xf00
	mov r0, r0, lsl #0x14
	mov r0, r0, lsr #0x1c
	mov r0, r0, lsl #0x1c
	orr r1, r1, r0, lsr #20
	str r1, [r8]
	ldr r0, [r4]
	bic r1, r1, #0xf000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x1c
	mov r0, r0, lsl #0x1c
	orr r0, r1, r0, lsr #16
	str r0, [r8]
	bl ov11_02127034
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r2, [r8]
	mov r1, r1, lsl #0x10
	mov r0, r2, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [r8]
	ldr r0, [r4, #4]
	ldr r1, [r8, #4]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x18
	bic r1, r1, #0xff
	and r0, r0, #0xff
	orr r2, r1, r0
	str r2, [r8, #4]
	ldr r0, [r4, #4]
	bic r2, r2, #0xf00
	mov r0, r0, lsl #0x14
	mov r1, r0, lsr #0x1c
	mov r1, r1, lsl #0x1c
	orr r3, r2, r1, lsr #20
	str r3, [r8, #4]
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x18]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x1c
	and r1, r0, #0xff
	bic r3, r3, #0xf000
	mov r0, r2, lsl #0x1c
	orr r2, r3, r0, lsr #16
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r8, #4]
	ldr r0, [r8, #8]
	bic r0, r0, #0xff
	orr r2, r0, r1
	bic r1, r2, #0xff00
	mov r0, r5, lsl #0x18
	orr r0, r1, r0, lsr #16
	str r0, [r8, #8]
	mov r1, r7
	mov r2, r6
	mov r0, #0
	blx sub_0200071A
	ldr r2, [r8, #8]
	mov r1, r0, lsl #0x10
	mov r0, r2, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [r8, #8]
	bl ov11_0212702C
	ldr r1, [r8, #0xc]
	and r0, r0, #0xff
	bic r1, r1, #0xff
	orr r1, r1, r0
	and r0, r1, #0xff
	orr r0, r0, r6, lsl #8
	str r0, [r8, #0xc]
	cmp r6, #0
	beq _02127234
	ldr r1, [r8, #0xc]
	mov r0, r7
	mov r1, r1, lsl #0x18
	mov r2, r6
	add r1, r8, r1, lsr #24
	bl MI_CpuCopy8
	arm_func_end ov11_021270B8
_02127234:
	mov r0, r8
	bl ov11_02126984
	ldr r0, [r4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #0xc]
	ldr r2, [r8]
	mov r0, r0, lsl #0x18
	add r1, r6, r0, lsr #24
	mov r0, r2, lsr #0x10
	sub r1, r1, #4
	add r2, r8, #4
	bl ov11_02127058
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov11_02127274
ov11_02127274: ; 0x02127274
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_02126F50
	ldr r0, [r4]
	mov r1, r0, lsl #0x10
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	ldmneia sp!, {r4, pc}
	mov r0, r0, lsr #0x10
	add r2, r4, #4
	mov r1, #0xc
	bl ov11_02127058
	ldr r1, [r4, #0xc]
	add r2, r4, #0x10
	mov r3, r1, lsl #0x18
	mov r1, r1, lsr #8
	add r1, r1, r3, lsr #24
	sub r1, r1, #0x10
	bl ov11_02127058
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02127274

	arm_func_start ov11_021272C4
ov11_021272C4: ; 0x021272C4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0xc]
	mov r0, #0
	mov r1, r2, lsl #0x18
	add r1, r4, r1, lsr #24
	mov r2, r2, lsr #8
	blx sub_0200071A
	ldr r1, [r4, #8]
	cmp r0, r1, lsr #16
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021272C4

	arm_func_start ov11_021272F8
ov11_021272F8: ; 0x021272F8
	ldr r1, _0212730C ; =OVERLAY11_BSS_02169C44
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r0, [r1, #0x330]
	bx lr
	.align 2, 0
_0212730C: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_021272F8

	arm_func_start ov11_02127310
ov11_02127310: ; 0x02127310
	ldr r1, _02127330 ; =OVERLAY11_BSS_02169C44
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r2, [r1, #0x330]
	sub r2, r2, #9
	cmp r2, #1
	strhi r0, [r1, #0x34c]
	bx lr
	.align 2, 0
_02127330: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02127310

	arm_func_start ov11_02127334
ov11_02127334: ; 0x02127334
	stmdb sp!, {r3, lr}
	mov r0, #3
	bl ov11_021272F8
	ldr r1, _02127374 ; =OVERLAY11_BSS_02169C44
	ldr r0, _02127378 ; =ov11_0212737C
	ldr r1, [r1]
	add r1, r1, #0xf20
	bl WM_SetParentParameter
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02127310
	mov r0, #9
	bl ov11_021272F8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02127374: .word OVERLAY11_BSS_02169C44
_02127378: .word ov11_0212737C
	arm_func_end ov11_02127334

	arm_func_start ov11_0212737C
ov11_0212737C: ; 0x0212737C
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0212739C
	bl ov11_02127310
	mov r0, #9
	bl ov11_021272F8
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212737C
_0212739C:
	bl ov11_021273B4
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov11_021272F8
	ldmia sp!, {r3, pc}

	arm_func_start ov11_021273B4
ov11_021273B4: ; 0x021273B4
	stmdb sp!, {r4, lr}
	ldr r0, _02127444 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x330]
	sub r0, r0, #4
	cmp r0, #2
	movls r0, #1
	ldmlsia sp!, {r4, pc}
	bl WMi_GetStatusAddress
	mov r4, r0
	add r0, r4, #0x198
	mov r1, #4
	bl DC_InvalidateRange
	mov r2, #0
	add r0, r4, #0x198
	mov r1, #4
	str r2, [r4, #0x198]
	bl DC_FlushRange
	ldr r0, _02127448 ; =ov11_0212744C
	bl WM_StartParent
	cmp r0, #2
	beq _0212741C
	bl ov11_02127310
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021273B4
_0212741C:
	ldr r2, _02127444 ; =OVERLAY11_BSS_02169C44
	mov r3, #0
	ldr r1, [r2]
	mov r0, #1
	add r1, r1, #0x1300
	strh r3, [r1, #0x48]
	ldr r1, [r2]
	add r1, r1, #0x1300
	strh r0, [r1, #0x4a]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02127444: .word OVERLAY11_BSS_02169C44
_02127448: .word ov11_0212744C

	arm_func_start ov11_0212744C
ov11_0212744C: ; 0x0212744C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrh r1, [r4, #0x10]
	ldrh r0, [r4, #2]
	mov r2, #1
	mov r1, r2, lsl r1
	cmp r0, #0
	mov r5, r1, lsl #0x10
	beq _02127480
	bl ov11_02127310
	mov r0, #9
	bl ov11_021272F8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_0212744C
_02127480:
	ldrh r0, [r4, #8]
	cmp r0, #7
	bgt _021274B0
	bge _021274E4
	cmp r0, #2
	ldmgtia sp!, {r3, r4, r5, pc}
	cmp r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	beq _021275C4
	cmp r0, #2
	beq _021274C8
	ldmia sp!, {r3, r4, r5, pc}
_021274B0:
	cmp r0, #9
	bgt _021274C0
	beq _02127588
	ldmia sp!, {r3, r4, r5, pc}
_021274C0:
	cmp r0, #0x1a
	ldmia sp!, {r3, r4, r5, pc}
_021274C8:
	ldr r0, _021275DC ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x361]
	add r1, r1, #1
	strb r1, [r0, #0x361]
	ldmia sp!, {r3, r4, r5, pc}
_021274E4:
	ldr r0, _021275DC ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x35f]
	cmp r1, #1
	ldrneb r0, [r0, #0x35e]
	cmpne r0, #1
	beq _02127548
	bl ov11_02127ABC
	ldr r1, _021275DC ; =OVERLAY11_BSS_02169C44
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x350]
	cmp r0, r1
	bge _02127548
	bl ov11_02128EE0
	ldrb r1, [r4, #0x14]
	cmp r1, r0
	bne _02127548
	ldr r0, _021275E0 ; =s_DP_overlay_11_02166460
	add r1, r4, #0x15
	mov r2, #3
	bl memcmp
	cmp r0, #0
	beq _0212756C
_02127548:
	ldrh r1, [r4, #0x10]
	mov r0, #0
	bl WM_Disconnect
	cmp r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	bl ov11_02127310
	mov r0, #9
	bl ov11_021272F8
	ldmia sp!, {r3, r4, r5, pc}
_0212756C:
	ldr r0, _021275DC ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1300
	ldrh r1, [r0, #0x4a]
	orr r1, r1, r5, lsr #16
	strh r1, [r0, #0x4a]
	ldmia sp!, {r3, r4, r5, pc}
_02127588:
	ldr r1, _021275DC ; =OVERLAY11_BSS_02169C44
	mvn r2, r5, lsr #16
	ldr r0, [r1]
	add r0, r0, #0x1300
	ldrh r3, [r0, #0x4a]
	and r2, r3, r2
	strh r2, [r0, #0x4a]
	ldr r0, [r1]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x344]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #0x10]
	blx r1
	ldmia sp!, {r3, r4, r5, pc}
_021275C4:
	bl ov11_021275E4
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl ov11_021272F8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021275DC: .word OVERLAY11_BSS_02169C44
_021275E0: .word s_DP_overlay_11_02166460

	arm_func_start ov11_021275E4
ov11_021275E4: ; 0x021275E4
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _02127674 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x330]
	sub r0, r0, #4
	cmp r0, #2
	addls sp, sp, #8
	movls r0, #1
	ldmlsia sp!, {r3, pc}
	mov r0, #4
	bl ov11_021272F8
	ldr r0, _02127674 ; =OVERLAY11_BSS_02169C44
	mov ip, #1
	ldr lr, [r0]
	ldr r0, _02127678 ; =ov11_0212767C
	add r3, lr, #0x1000
	ldr r2, [r3, #0x324]
	add r1, lr, #0x1040
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	stmia sp, {r2, ip}
	ldr r2, [r3, #0x328]
	add r3, lr, #0xf60
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl WM_StartMP
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02127310
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02127674: .word OVERLAY11_BSS_02169C44
_02127678: .word ov11_0212767C
	arm_func_end ov11_021275E4

	arm_func_start ov11_0212767C
ov11_0212767C: ; 0x0212767C
	stmdb sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _021276A0
	mov r0, r1
	bl ov11_02127310
	mov r0, #9
	bl ov11_021272F8
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212767C
_021276A0:
	ldrh r0, [r0, #4]
	sub r0, r0, #0xa
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_021276B4: ; jump table
	b _021276C4 ; case 0
	ldmia sp!, {r3, pc} ; case 1
	ldmia sp!, {r3, pc} ; case 2
	ldmia sp!, {r3, pc} ; case 3
_021276C4:
	ldr r0, _021276FC ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x334]
	cmp r1, #2
	bne _021276F0
	ldr r0, [r0, #0x330]
	cmp r0, #4
	beq _021276F0
	cmp r0, #6
	ldmeqia sp!, {r3, pc}
_021276F0:
	mov r0, #4
	bl ov11_021272F8
	ldmia sp!, {r3, pc}
	.align 2, 0
_021276FC: .word OVERLAY11_BSS_02169C44

	arm_func_start ov11_02127700
ov11_02127700: ; 0x02127700
	stmdb sp!, {r3, lr}
	mov r0, #3
	bl ov11_021272F8
	ldr r0, _0212772C ; =ov11_02127730
	bl WM_EndMP
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02127310
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212772C: .word ov11_02127730
	arm_func_end ov11_02127700

	arm_func_start ov11_02127730
ov11_02127730: ; 0x02127730
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0212774C
	bl ov11_02127310
	bl ov11_02128220
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02127730
_0212774C:
	bl ov11_02127760
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_02128220
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02127760
ov11_02127760: ; 0x02127760
	stmdb sp!, {r3, lr}
	ldr r0, _02127784 ; =ov11_02127788
	bl WM_EndParent
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02127310
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02127784: .word ov11_02127788
	arm_func_end ov11_02127760

	arm_func_start ov11_02127788
ov11_02127788: ; 0x02127788
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _021277A0
	bl ov11_02127310
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02127788
_021277A0:
	mov r0, #1
	bl ov11_021272F8
	ldmia sp!, {r3, pc}

	arm_func_start ov11_021277AC
ov11_021277AC: ; 0x021277AC
	stmdb sp!, {r3, lr}
	ldr r0, _021277DC ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x330]
	cmp r0, #2
	movne r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #3
	bl ov11_021272F8
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_021277DC: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_021277AC

	arm_func_start ov11_021277E0
ov11_021277E0: ; 0x021277E0
	stmdb sp!, {r3, lr}
	mov r0, #3
	bl ov11_021272F8
	ldr r0, _0212780C ; =ov11_02127810
	bl WM_EndMP
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02127310
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212780C: .word ov11_02127810
	arm_func_end ov11_021277E0

	arm_func_start ov11_02127810
ov11_02127810: ; 0x02127810
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0212782C
	bl ov11_02127310
	bl ov11_0212825C
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02127810
_0212782C:
	bl ov11_02127844
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov11_021272F8
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02127844
ov11_02127844: ; 0x02127844
	stmdb sp!, {r3, lr}
	mov r0, #3
	bl ov11_021272F8
	ldr r0, _02127878 ; =ov11_0212787C
	mov r1, #0
	bl WM_Disconnect
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02127310
	bl ov11_02128220
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02127878: .word ov11_0212787C
	arm_func_end ov11_02127844

	arm_func_start ov11_0212787C
ov11_0212787C: ; 0x0212787C
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02127894
	bl ov11_02127310
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212787C
_02127894:
	mov r0, #1
	bl ov11_021272F8
	ldmia sp!, {r3, pc}

	arm_func_start ov11_021278A0
ov11_021278A0: ; 0x021278A0
	stmdb sp!, {r3, lr}
	mov r0, #3
	bl ov11_021272F8
	ldr r0, _021278CC ; =ov11_021278D0
	bl WM_Reset
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02127310
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_021278CC: .word ov11_021278D0
	arm_func_end ov11_021278A0

	arm_func_start ov11_021278D0
ov11_021278D0: ; 0x021278D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _021278F8
	mov r0, #9
	bl ov11_021272F8
	ldrh r0, [r4, #2]
	bl ov11_02127310
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021278D0
_021278F8:
	mov r0, #1
	bl ov11_021272F8
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02127904
ov11_02127904: ; 0x02127904
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r5, _02127978 ; =OVERLAY11_BSS_02169C44
	mov r4, r1
	ldr ip, [r5]
	mov r5, r0
	add r0, ip, #0x1000
	ldr r1, [r0, #0x324]
	add r0, ip, #0xf60
	mov r7, r2
	mov r6, r3
	bl DC_FlushRange
	ldr r1, _0212797C ; =0x0000FFFF
	mov r0, r7, lsl #0x10
	str r1, [sp]
	mov ip, r0, lsr #0x10
	mov r3, r4
	ldr r0, _02127980 ; =ov11_02127984
	mov r1, r6
	mov r2, r5
	str ip, [sp, #4]
	mov r4, #2
	str r4, [sp, #8]
	bl WM_SetMPDataToPortEx
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02127978: .word OVERLAY11_BSS_02169C44
_0212797C: .word 0x0000FFFF
_02127980: .word ov11_02127984
	arm_func_end ov11_02127904

	arm_func_start ov11_02127984
ov11_02127984: ; 0x02127984
	stmdb sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	cmpne r1, #0xf
	beq _021279A4
	mov r0, r1
	bl ov11_02127310
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02127984
_021279A4:
	ldr r2, [r0, #0x20]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #0
	moveq r0, #1
	movne r0, #0
	blx r2
	ldmia sp!, {r3, pc}

	arm_func_start ov11_021279C4
ov11_021279C4: ; 0x021279C4
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _021279E0
	bl ov11_02127310
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021279C4
_021279E0:
	ldr r0, _02127A38 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r3, [r0, #0x338]
	cmp r3, #0
	ldrneh r0, [r1, #4]
	cmpne r0, #0x19
	ldmeqia sp!, {r3, pc}
	cmp r0, #0x15
	bne _02127A1C
	ldrh r0, [r1, #0x12]
	ldrh r2, [r1, #0x10]
	ldr r1, [r1, #0xc]
	blx r3
	ldmia sp!, {r3, pc}
_02127A1C:
	cmp r0, #9
	ldmneia sp!, {r3, pc}
	ldrh r0, [r1, #0x12]
	mov r1, #0
	mov r2, r1
	blx r3
	ldmia sp!, {r3, pc}
	.align 2, 0
_02127A38: .word OVERLAY11_BSS_02169C44

	arm_func_start ov11_02127A3C
ov11_02127A3C: ; 0x02127A3C
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02127A58
	mov r0, #0xa
	bl ov11_021272F8
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02127A3C
_02127A58:
	mov r0, #0
	mov r1, r0
	bl sub_02046B84
	mov r0, #0
	bl ov11_021272F8
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02127A70
ov11_02127A70: ; 0x02127A70
	ldr r1, _02127A80 ; =OVERLAY11_BSS_02169C44
	ldr r1, [r1]
	str r0, [r1, #0xf28]
	bx lr
	.align 2, 0
_02127A80: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02127A70

	arm_func_start ov11_02127A84
ov11_02127A84: ; 0x02127A84
	ldr r2, _02127AA0 ; =OVERLAY11_BSS_02169C44
	ldr r3, [r2]
	str r0, [r3, #0xf20]
	ldr r0, [r2]
	add r0, r0, #0xf00
	strh r1, [r0, #0x24]
	bx lr
	.align 2, 0
_02127AA0: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02127A84

	arm_func_start ov11_02127AA4
ov11_02127AA4: ; 0x02127AA4
	ldr r0, _02127AB8 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0x4a]
	bx lr
	.align 2, 0
_02127AB8: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02127AA4

	arm_func_start ov11_02127ABC
ov11_02127ABC: ; 0x02127ABC
	ldr r1, _02127B04 ; =OVERLAY11_BSS_02169C44
	mov r0, #0
	ldr r1, [r1]
	mov r2, r0
	add r1, r1, #0x1300
	ldrh r3, [r1, #0x4a]
	arm_func_end ov11_02127ABC
_02127AD4:
	add r1, r2, #1
	mov r2, r1, lsl #0x10
	tst r3, #1
	addne r0, r0, #1
	movne r0, r0, lsl #0x10
	mov r1, r3, lsl #0xf
	mov r2, r2, lsr #0x10
	movne r0, r0, lsr #0x10
	cmp r2, #0x10
	mov r3, r1, lsr #0x10
	blo _02127AD4
	bx lr
	.align 2, 0
_02127B04: .word OVERLAY11_BSS_02169C44

	arm_func_start ov11_02127B08
ov11_02127B08: ; 0x02127B08
	ldr r0, _02127B1C ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x330]
	bx lr
	.align 2, 0
_02127B1C: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02127B08

	arm_func_start ov11_02127B20
ov11_02127B20: ; 0x02127B20
	ldr r0, _02127B34 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x34c]
	bx lr
	.align 2, 0
_02127B34: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02127B20

	arm_func_start ov11_02127B38
ov11_02127B38: ; 0x02127B38
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl OS_GetMacAddress
	ldr r0, _02127C14 ; =0x027FFC3C
	ldrh r1, [sp]
	ldr ip, [r0]
	ldr r2, _02127C18 ; =OVERLAY11_BSS_02169C44
	add r1, r1, ip
	ldrh r3, [sp, #2]
	ldr r0, [r2]
	ldrh ip, [sp, #4]
	add r1, r3, r1
	add r0, r0, #0x1000
	add r1, ip, r1
	str r1, [r0, #0x354]
	ldr r1, [r2]
	ldr r0, _02127C1C ; =0x00010DCD
	add r1, r1, #0x1000
	ldr r3, [r1, #0x354]
	mov ip, #0
	mul r0, r3, r0
	add r0, r0, #0x39
	add r0, r0, #0x3000
	str r0, [r1, #0x354]
	ldr r0, [r2]
	mov r3, #0x65
	add r0, r0, #0x1300
	strh ip, [r0, #0x58]
	ldr r1, [r2]
	mov r0, #3
	add r1, r1, #0x1300
	strh r3, [r1, #0x5a]
	bl ov11_021272F8
	mov r0, #1
	bl ov11_02127C20
	cmp r0, #0x18
	bne _02127BEC
	mov r0, #0x18
	bl ov11_02127310
	mov r0, #9
	bl ov11_021272F8
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02127B38
_02127BEC:
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02127310
	mov r0, #9
	bl ov11_021272F8
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02127C14: .word 0x027FFC3C
_02127C18: .word OVERLAY11_BSS_02169C44
_02127C1C: .word 0x00010DCD

	arm_func_start ov11_02127C20
ov11_02127C20: ; 0x02127C20
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	bne _02127C4C
	mov r0, #3
	bl ov11_02127310
	mov r0, #9
	bl ov11_021272F8
	mov r0, #3
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02127C20
_02127C4C:
	cmp r0, #0
	bne _02127C6C
	mov r0, #0x16
	bl ov11_02127310
	mov r0, #9
	bl ov11_021272F8
	mov r0, #0x18
	ldmia sp!, {r4, pc}
_02127C6C:
	sub r1, r4, #1
	mov r2, #1
	tst r0, r2, lsl r1
	bne _02127CA0
_02127C7C:
	add r1, r4, #1
	mov r1, r1, lsl #0x10
	mov r4, r1, lsr #0x10
	cmp r4, #0x10
	movhi r0, #0x18
	ldmhiia sp!, {r4, pc}
	sub r1, r4, #1
	tst r0, r2, lsl r1
	beq _02127C7C
_02127CA0:
	ldr r0, _02127CB8 ; =ov11_02127CBC
	mov r1, r4
	bl ov11_02127D7C
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_02127CB8: .word ov11_02127CBC

	arm_func_start ov11_02127CBC
ov11_02127CBC: ; 0x02127CBC
	stmdb sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _02127CE0
	mov r0, r1
	bl ov11_02127310
	mov r0, #9
	bl ov11_021272F8
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02127CBC
_02127CE0:
	ldr r3, _02127D78 ; =OVERLAY11_BSS_02169C44
	ldrh lr, [r0, #0xa]
	ldr r1, [r3]
	ldrh r0, [r0, #8]
	add r2, r1, #0x1300
	ldrh ip, [r2, #0x5a]
	add r1, r1, #0x5a
	add r1, r1, #0x1300
	cmp ip, lr
	bls _02127D28
	strh lr, [r1]
	ldr r1, [r3]
	sub r2, r0, #1
	mov r3, #1
	mov r2, r3, lsl r2
	add r1, r1, #0x1300
	strh r2, [r1, #0x5c]
	b _02127D40
_02127D28:
	bne _02127D40
	ldrh ip, [r2, #0x5c]
	sub r1, r0, #1
	mov r3, #1
	orr r1, ip, r3, lsl r1
	strh r1, [r2, #0x5c]
_02127D40:
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_02127C20
	cmp r0, #0x18
	bne _02127D64
	mov r0, #7
	bl ov11_021272F8
	ldmia sp!, {r3, pc}
_02127D64:
	cmp r0, #2
	ldmeqia sp!, {r3, pc}
	mov r0, #9
	bl ov11_021272F8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02127D78: .word OVERLAY11_BSS_02169C44

	arm_func_start ov11_02127D7C
ov11_02127D7C: ; 0x02127D7C
	stmdb sp!, {r3, lr}
	mov r3, r1
	mov ip, #0x1e
	mov r1, #3
	mov r2, #0x11
	str ip, [sp]
	bl WM_MeasureChannel
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02127D7C

	arm_func_start ov11_02127D9C
ov11_02127D9C: ; 0x02127D9C
	stmdb sp!, {r3, lr}
	mov r0, #1
	bl ov11_021272F8
	ldr r0, _02127DDC ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0x5c]
	bl ov11_02127DE0
	ldr r2, _02127DDC ; =OVERLAY11_BSS_02169C44
	ldr r1, [r2]
	add r1, r1, #0x1300
	strh r0, [r1, #0x58]
	ldr r0, [r2]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0x58]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02127DDC: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02127D9C

	arm_func_start ov11_02127DE0
ov11_02127DE0: ; 0x02127DE0
	stmdb sp!, {r4, lr}
	mov r3, #0
	mov r1, r3
	mov ip, r3
	mov r4, #1
	arm_func_end ov11_02127DE0
_02127DF4:
	tst r0, r4, lsl ip
	beq _02127E14
	add r3, ip, #1
	add r2, r1, #1
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, asr #0x10
	mov r1, r2, lsr #0x10
_02127E14:
	add r2, ip, #1
	mov r2, r2, lsl #0x10
	mov ip, r2, asr #0x10
	cmp ip, #0x10
	blt _02127DF4
	cmp r1, #1
	movls r0, r3
	ldmlsia sp!, {r4, pc}
	ldr lr, _02127EC8 ; =OVERLAY11_BSS_02169C44
	ldr r3, _02127ECC ; =0x00010DCD
	ldr r4, [lr]
	mov r2, #0
	add ip, r4, #0x1000
	ldr r4, [ip, #0x354]
	mul r3, r4, r3
	add r3, r3, #0x39
	add r3, r3, #0x3000
	str r3, [ip, #0x354]
	ldr r3, [lr]
	add r3, r3, #0x1000
	ldr r3, [r3, #0x354]
	and r3, r3, #0xff
	mul r3, r1, r3
	mov r1, r3, lsl #8
	mov r3, r1, lsr #0x10
_02127E78:
	tst r0, #1
	beq _02127EA4
	cmp r3, #0
	bne _02127E98
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	ldmia sp!, {r4, pc}
_02127E98:
	sub r1, r3, #1
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
_02127EA4:
	add r1, r2, #1
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0xf
	mov r2, r1, asr #0x10
	cmp r2, #0x10
	mov r0, r0, lsr #0x10
	blt _02127E78
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02127EC8: .word OVERLAY11_BSS_02169C44
_02127ECC: .word 0x00010DCD

	arm_func_start ov11_02127ED0
ov11_02127ED0: ; 0x02127ED0
	stmdb sp!, {r3, lr}
	ldr r0, _02127F9C ; =0x00001364
	mov r1, #0x20
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r1, _02127FA0 ; =OVERLAY11_BSS_02169C44
	add r2, r0, #0x1000
	str r0, [r1]
	mov r0, #0
	str r0, [r2, #0x328]
	ldr r2, [r1]
	mov ip, #1
	add r2, r2, #0x1000
	str r0, [r2, #0x324]
	ldr r2, [r1]
	mov r3, #8
	add r2, r2, #0x1000
	str r0, [r2, #0x338]
	ldr r2, [r1]
	add r2, r2, #0x1300
	strh r0, [r2, #0x48]
	ldr r2, [r1]
	add r2, r2, #0x1300
	strh ip, [r2, #0x4a]
	ldr r2, [r1]
	add r2, r2, #0x1000
	str r0, [r2, #0x34c]
	ldr r2, [r1]
	add r2, r2, #0x1000
	str r0, [r2, #0x330]
	ldr r2, [r1]
	str r0, [r2, #0xf20]
	ldr r2, [r1]
	add r2, r2, #0xf00
	strh r0, [r2, #0x24]
	ldr r2, [r1]
	add r2, r2, #0x1000
	str r0, [r2, #0x33c]
	ldr r2, [r1]
	add r2, r2, #0x1000
	strb r3, [r2, #0x350]
	ldr r2, [r1]
	add r2, r2, #0x1000
	strb r0, [r2, #0x351]
	ldr r1, [r1]
	add r1, r1, #0x1000
	strb r0, [r1, #0x35e]
	bl ov11_02127FD4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02127F9C: .word 0x00001364
_02127FA0: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02127ED0

	arm_func_start ov11_02127FA4
ov11_02127FA4: ; 0x02127FA4
	ldr r0, _02127FAC ; =0x00001384
	bx lr
	.align 2, 0
_02127FAC: .word 0x00001384
	arm_func_end ov11_02127FA4

	arm_func_start ov11_02127FB0
ov11_02127FB0: ; 0x02127FB0
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #8
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov11_021272F8
	mov r0, #0x19
	bl ov11_02127310
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02127FB0

	arm_func_start ov11_02127FD4
ov11_02127FD4: ; 0x02127FD4
	stmdb sp!, {r3, lr}
	mov r0, #3
	bl ov11_021272F8
	ldr r0, _02128014 ; =OVERLAY11_BSS_02169C44
	ldr r1, _02128018 ; =ov11_0212801C
	ldr r0, [r0]
	mov r2, #2
	bl WM_Initialize
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_02127310
	mov r0, #0xa
	bl ov11_021272F8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128014: .word OVERLAY11_BSS_02169C44
_02128018: .word ov11_0212801C
	arm_func_end ov11_02127FD4

	arm_func_start ov11_0212801C
ov11_0212801C: ; 0x0212801C
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0212803C
	bl ov11_02127310
	mov r0, #0xa
	bl ov11_021272F8
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212801C
_0212803C:
	ldr r0, _02128068 ; =ov11_02127FB0
	bl WM_SetIndCallback
	cmp r0, #0
	beq _0212805C
	bl ov11_02127310
	mov r0, #0xa
	bl ov11_021272F8
	ldmia sp!, {r3, pc}
_0212805C:
	mov r0, #1
	bl ov11_021272F8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128068: .word ov11_02127FB0

	arm_func_start ov11_0212806C
ov11_0212806C: ; 0x0212806C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _021281C8 ; =OVERLAY11_BSS_02169C44
	mov r7, r0
	ldr r0, [r4]
	mov r5, #0x1c0
	add r0, r0, #0x1000
	str r5, [r0, #0x328]
	ldr r0, [r4]
	mov r5, #0xe0
	add r0, r0, #0x1000
	str r5, [r0, #0x324]
	ldr r4, [r4]
	mov r0, #3
	add ip, r4, #0x1000
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str r7, [ip, #0x334]
	bl ov11_021272F8
	ldr r1, _021281C8 ; =OVERLAY11_BSS_02169C44
	ldrh r2, [sp, #0x18]
	ldr r0, [r1]
	cmp r7, #0
	add r0, r0, #0xf00
	strh r6, [r0, #0x2c]
	ldr r0, [r1]
	add r0, r0, #0xf00
	strh r5, [r0, #0x52]
	ldr r0, [r1]
	add r0, r0, #0xf00
	strh r2, [r0, #0x38]
	beq _021280F8
	cmp r7, #4
	beq _02128134
	b _02128154
	arm_func_end ov11_0212806C
_021280F8:
	ldr r0, [r1]
	mov r2, #0xc0
	add r0, r0, #0xf00
	strh r2, [r0, #0x54]
	cmp r4, #5
	ldr r0, [r1]
	blo _02128124
	mov r1, #0xc
	add r0, r0, #0xf00
	strh r1, [r0, #0x56]
	b _02128154
_02128124:
	mov r1, #0x26
	add r0, r0, #0xf00
	strh r1, [r0, #0x56]
	b _02128154
_02128134:
	ldr r0, [r1]
	mov r2, #0x64
	add r0, r0, #0xf00
	strh r2, [r0, #0x54]
	ldr r0, [r1]
	mov r1, #0xc
	add r0, r0, #0xf00
	strh r1, [r0, #0x56]
_02128154:
	ldr r2, _021281C8 ; =OVERLAY11_BSS_02169C44
	mov r0, #0
	ldr r1, [r2]
	ldr r3, [sp, #0x1c]
	add r1, r1, #0xf00
	strh r4, [r1, #0x30]
	ldr r1, [r2]
	cmp r7, #2
	add r1, r1, #0xf00
	strh r0, [r1, #0x36]
	ldr r1, [r2]
	add r1, r1, #0xf00
	strh r0, [r1, #0x32]
	ldr r1, [r2]
	moveq r0, #1
	add r1, r1, #0xf00
	strh r3, [r1, #0x2e]
	ldr r1, _021281C8 ; =OVERLAY11_BSS_02169C44
	cmp r7, #0
	ldr r1, [r1]
	cmpne r7, #2
	add r1, r1, #0xf00
	strh r0, [r1, #0x34]
	cmpne r7, #4
	bne _021281C0
	bl ov11_02127334
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021281C0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021281C8: .word OVERLAY11_BSS_02169C44

	arm_func_start ov11_021281CC
ov11_021281CC: ; 0x021281CC
	stmdb sp!, {r3, lr}
	ldr r2, _0212820C ; =OVERLAY11_BSS_02169C44
	mov r3, r1, lsl #0x10
	ldr r2, [r2]
	ldr r1, _02128210 ; =ov11_021279C4
	add r2, r2, #0x1000
	str r0, [r2, #0x338]
	mov r0, r3, lsr #0x10
	mov r2, #0
	bl WM_SetPortCallback
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #9
	bl ov11_021272F8
	arm_func_end ov11_021281CC
_02128204:
	b _02128204
_02128208:
	.byte 0x08, 0x80, 0xBD, 0xE8
_0212820C: .word OVERLAY11_BSS_02169C44
_02128210: .word ov11_021279C4

	arm_func_start thunk_FUN_overlay_11__02127904
thunk_FUN_overlay_11__02127904: ; 0x02128214
	ldr ip, _0212821C ; =ov11_02127904
	bx ip
	.align 2, 0
_0212821C: .word ov11_02127904
	arm_func_end thunk_FUN_overlay_11__02127904

	arm_func_start ov11_02128220
ov11_02128220: ; 0x02128220
	stmdb sp!, {r3, lr}
	ldr r0, _02128258 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x330]
	cmp r0, #2
	bne _02128240
	arm_func_end ov11_02128220
_0212823C:
	b _0212823C
_02128240:
	bl ov11_021278A0
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0xa
	bl ov11_021272F8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128258: .word OVERLAY11_BSS_02169C44

	arm_func_start ov11_0212825C
ov11_0212825C: ; 0x0212825C
	stmdb sp!, {r3, lr}
	ldr r0, _021282F8 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x330]
	cmp r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r0, #6
	cmpne r0, #5
	cmpne r0, #4
	mov r0, #3
	beq _02128298
	bl ov11_021272F8
	bl ov11_02128220
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212825C
_02128298:
	bl ov11_021272F8
	ldr r0, _021282F8 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x334]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_021282B8: ; jump table
	b _021282E4 ; case 0
	b _021282D0 ; case 1
	ldmia sp!, {r3, pc} ; case 2
	ldmia sp!, {r3, pc} ; case 3
	b _021282E4 ; case 4
	b _021282D0 ; case 5
_021282D0:
	bl ov11_021277E0
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_02128220
	ldmia sp!, {r3, pc}
_021282E4:
	bl ov11_02127700
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_02128220
	ldmia sp!, {r3, pc}
	.align 2, 0
_021282F8: .word OVERLAY11_BSS_02169C44

	arm_func_start ov11_021282FC
ov11_021282FC: ; 0x021282FC
	stmdb sp!, {r3, lr}
	mov r0, #3
	bl ov11_021272F8
	ldr r0, _0212832C ; =ov11_02127A3C
	bl WM_End
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	mov r0, #9
	bl ov11_021272F8
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212832C: .word ov11_02127A3C
	arm_func_end ov11_021282FC

	arm_func_start ov11_02128330
ov11_02128330: ; 0x02128330
	ldr r0, _02128344 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0x48]
	bx lr
	.align 2, 0
_02128344: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02128330

	arm_func_start ov11_02128348
ov11_02128348: ; 0x02128348
	ldr r0, _02128368 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x330]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_02128368: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02128348

	arm_func_start ov11_0212836C
ov11_0212836C: ; 0x0212836C
	ldr r0, _0212838C ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x330]
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_0212838C: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_0212836C

	arm_func_start ov11_02128390
ov11_02128390: ; 0x02128390
	ldr r0, _021283B0 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x330]
	cmp r0, #9
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_021283B0: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02128390

	arm_func_start ov11_021283B4
ov11_021283B4: ; 0x021283B4
	ldr r0, _021283E4 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	cmp r0, #0
	beq _021283DC
	add r0, r0, #0x1000
	ldr r0, [r0, #0x330]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end ov11_021283B4
_021283DC:
	mov r0, #0
	bx lr
	.align 2, 0
_021283E4: .word OVERLAY11_BSS_02169C44

	arm_func_start ov11_021283E8
ov11_021283E8: ; 0x021283E8
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr ip, _02128440 ; =OVERLAY11_BSS_02169C44
	ldr ip, [ip]
	add ip, ip, #0x1000
	ldr ip, [ip, #0x330]
	cmp ip, #4
	addne sp, sp, #8
	ldmneia sp!, {r3, pc}
	mov r3, r3, lsl #0x10
	mov lr, r3, lsr #0x10
	mov ip, r1, lsl #0x10
	mov r1, r0
	mov r3, r2
	str lr, [sp]
	mov lr, #1
	mov r2, ip, lsr #0x10
	mov r0, #0
	str lr, [sp, #4]
	bl WM_SetGameInfo
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128440: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_021283E8

	arm_func_start ov11_02128444
ov11_02128444: ; 0x02128444
	ldr r0, _0212845C ; =OVERLAY11_BSS_02169C44
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	strb r1, [r0, #0x361]
	bx lr
	.align 2, 0
_0212845C: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02128444

	arm_func_start ov11_02128460
ov11_02128460: ; 0x02128460
	ldr r0, _02128474 ; =OVERLAY11_BSS_02169C44
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x35e]
	bx lr
	.align 2, 0
_02128474: .word OVERLAY11_BSS_02169C44
	arm_func_end ov11_02128460

	arm_func_start ov11_02128478
ov11_02128478: ; 0x02128478
	stmdb sp!, {r4, lr}
	ldr r1, _021284D8 ; =OVERLAY11_BSS_02169C4C
	mov r4, r0
	ldr r1, [r1]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	bl ov11_0212CDF4
	mov r0, #0x3d0
	bl _Z10Heap_Allocm
	ldr r3, _021284D8 ; =OVERLAY11_BSS_02169C4C
	mov r1, #0
	mov r2, #0x3d0
	str r0, [r3]
	bl MI_CpuFill8
	ldr r0, _021284D8 ; =OVERLAY11_BSS_02169C4C
	mov r2, #0x32
	ldr r1, [r0]
	strh r2, [r1, #0x20]
	ldr r1, [r0]
	str r4, [r1]
	ldr r0, [r0]
	add r0, r0, #4
	bl ov11_0212C21C
	ldmia sp!, {r4, pc}
	.align 2, 0
_021284D8: .word OVERLAY11_BSS_02169C4C
	arm_func_end ov11_02128478

	arm_func_start ov11_021284DC
ov11_021284DC: ; 0x021284DC
	ldr r2, _021284F4 ; =OVERLAY11_BSS_02169C4C
	ldr r3, [r2]
	str r0, [r3, #0x1c]
	ldr r0, [r2]
	strh r1, [r0, #0x20]
	bx lr
	.align 2, 0
_021284F4: .word OVERLAY11_BSS_02169C4C
	arm_func_end ov11_021284DC

	arm_func_start ov11_021284F8
ov11_021284F8: ; 0x021284F8
	stmdb sp!, {r3, lr}
	bl ov11_0212C154
	bl ov11_0212BEA0
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r3, #0
	ldr r0, _02128544 ; =OVERLAY11_BSS_02169C4C
	mov r2, r3
	arm_func_end ov11_021284F8
_02128518:
	ldr r1, [r0]
	add r1, r1, r3
	add r3, r3, #1
	strb r2, [r1, #0x3bd]
	cmp r3, #0x10
	blt _02128518
	bl ov11_021287A8
	ldr r0, _02128548 ; =ov11_0212854C
	mov r1, #0
	bl ov11_021284DC
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128544: .word OVERLAY11_BSS_02169C4C
_02128548: .word ov11_0212854C

	arm_func_start ov11_0212854C
ov11_0212854C: ; 0x0212854C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, _021285A8 ; =OVERLAY11_BSS_02169C4C
	mov r5, #0
	arm_func_end ov11_0212854C
_02128558:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _02128590
	mov r0, r5
	bl ov11_0212BEA0
	cmp r0, #1
	bne _02128590
	mov r0, r5
	bl ov11_02128A30
	ldr r1, [r4]
	add r1, r1, r5, lsl #2
	str r0, [r1, #0x24]
_02128590:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	cmp r5, #0x10
	blo _02128558
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021285A8: .word OVERLAY11_BSS_02169C4C

	arm_func_start ov11_021285AC
ov11_021285AC: ; 0x021285AC
	stmdb sp!, {r3, lr}
	ldr r0, _021285DC ; =OVERLAY11_BSS_02169C4C
	ldr r0, [r0]
	cmp r0, #0
	ldrne r1, [r0, #0x1c]
	cmpne r1, #0
	ldmeqia sp!, {r3, pc}
	ldrb r0, [r0, #0x22]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	blx r1
	ldmia sp!, {r3, pc}
	.align 2, 0
_021285DC: .word OVERLAY11_BSS_02169C4C
	arm_func_end ov11_021285AC

	arm_func_start ov11_021285E0
ov11_021285E0: ; 0x021285E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov11_0212BF7C
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl ov11_02128B9C
	mov r0, r5
	bl ov11_02128478
	ldr r0, _02128618 ; =ov11_021284F8
	mov r1, #0
	bl ov11_021284DC
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02128618: .word ov11_021284F8
	arm_func_end ov11_021285E0

	arm_func_start ov11_0212861C
ov11_0212861C: ; 0x0212861C
	ldr ip, _02128630 ; =ov11_0212B9CC
	mov r2, r1
	mov r1, r0
	mov r0, #0x16
	bx ip
	.align 2, 0
_02128630: .word ov11_0212B9CC
	arm_func_end ov11_0212861C

	arm_func_start ov11_02128634
ov11_02128634: ; 0x02128634
	ldr r1, _02128650 ; =OVERLAY11_BSS_02169C4C
	ldr r2, [r1]
	ldrb r1, [r2, #0x23]
	cmp r1, r0
	moveq r0, #1
	streqb r0, [r2, #0x3bc]
	bx lr
	.align 2, 0
_02128650: .word OVERLAY11_BSS_02169C4C
	arm_func_end ov11_02128634

	arm_func_start ov11_02128654
ov11_02128654: ; 0x02128654
	mov r0, #0x358
	bx lr
	arm_func_end ov11_02128654

	arm_func_start ov11_0212865C
ov11_0212865C: ; 0x0212865C
	ldr r0, _0212866C ; =OVERLAY11_BSS_02169C4C
	ldr r0, [r0]
	add r0, r0, #0x64
	bx lr
	.align 2, 0
_0212866C: .word OVERLAY11_BSS_02169C4C
	arm_func_end ov11_0212865C

	arm_func_start ov11_02128670
ov11_02128670: ; 0x02128670
	ldr r1, _02128688 ; =OVERLAY11_BSS_02169C4C
	mov r2, #1
	ldr r1, [r1]
	add r0, r1, r0
	strb r2, [r0, #0x3bd]
	bx lr
	.align 2, 0
_02128688: .word OVERLAY11_BSS_02169C4C
	arm_func_end ov11_02128670

	arm_func_start ov11_0212868C
ov11_0212868C: ; 0x0212868C
	stmdb sp!, {r3, lr}
	ldr r0, _021286B8 ; =OVERLAY11_BSS_02169C4C
	ldr r0, [r0]
	cmp r0, #0
	beq _021286A4
	bl _Z9Heap_FreePv
	arm_func_end ov11_0212868C
_021286A4:
	ldr r0, _021286B8 ; =OVERLAY11_BSS_02169C4C
	mov r1, #0
	str r1, [r0]
	bl ov11_02128BDC
	ldmia sp!, {r3, pc}
	.align 2, 0
_021286B8: .word OVERLAY11_BSS_02169C4C

	arm_func_start ov11_021286BC
ov11_021286BC: ; 0x021286BC
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _02128748 ; =OVERLAY11_BSS_02169C50
	ldr r0, [r0]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0x39c
	bl _Z10Heap_Allocm
	ldr r3, _02128748 ; =OVERLAY11_BSS_02169C50
	mov r1, #0
	mov r2, #0x39c
	str r0, [r3]
	bl MI_CpuFill8
	mov r5, #0
	ldr r4, _02128748 ; =OVERLAY11_BSS_02169C50
	mov r6, r5
	arm_func_end ov11_021286BC
_021286F8:
	ldr r3, [r4]
	mov r0, r5
	add r1, r3, r6
	add r2, r1, #0x20
	add r1, r3, r5, lsl #2
	str r2, [r1, #0x340]
	bl ov11_02128974
	add r5, r5, #1
	cmp r5, #8
	add r6, r6, #0x68
	blt _021286F8
	ldr r0, _02128748 ; =OVERLAY11_BSS_02169C50
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0x398]
	ldr r1, [r0]
	strb r2, [r1, #0x399]
	ldr r0, [r0]
	strb r2, [r0, #0x39a]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02128748: .word OVERLAY11_BSS_02169C50

	arm_func_start ov11_0212874C
ov11_0212874C: ; 0x0212874C
	stmdb sp!, {r3, lr}
	ldr r0, _021287A4 ; =OVERLAY11_BSS_02169C50
	ldr r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	mov r3, #0
	mov r2, r3
	arm_func_end ov11_0212874C
_02128768:
	ldr r1, [r0]
	add r1, r1, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0x340]
	cmp r3, #8
	blt _02128768
	ldr r0, _021287A4 ; =OVERLAY11_BSS_02169C50
	ldr r0, [r0]
	cmp r0, #0
	beq _02128794
	bl _Z9Heap_FreePv
_02128794:
	ldr r0, _021287A4 ; =OVERLAY11_BSS_02169C50
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_021287A4: .word OVERLAY11_BSS_02169C50

	arm_func_start ov11_021287A8
ov11_021287A8: ; 0x021287A8
	stmdb sp!, {r4, lr}
	bl ov11_0212C154
	mov r1, #0x68
	ldr r2, _021287E8 ; =OVERLAY11_BSS_02169C50
	mul r4, r0, r1
	ldr r0, [r2]
	add r0, r0, r4
	add r0, r0, #0x5c
	bl OS_GetMacAddress
	ldr r1, _021287E8 ; =OVERLAY11_BSS_02169C50
	mov r0, #3
	ldr r1, [r1]
	mov r2, #0x68
	add r1, r1, r4
	bl ov11_0212B938
	ldmia sp!, {r4, pc}
	.align 2, 0
_021287E8: .word OVERLAY11_BSS_02169C50
	arm_func_end ov11_021287A8

	arm_func_start ov11_021287EC
ov11_021287EC: ; 0x021287EC
	mov r0, #0x68
	bx lr
	arm_func_end ov11_021287EC

	arm_func_start ov11_021287F4
ov11_021287F4: ; 0x021287F4
	ldr r0, _0212880C ; =0x02169C50
	ldr r1, [r0]
	cmp r1, #0
	movne r0, #1
	strneb r0, [r1, #0x398]
	bx lr
	.align 2, 0
	arm_func_end ov11_021287F4
_0212880C: .word OVERLAY11_BSS_02169C50

	arm_func_start ov11_02128810
ov11_02128810: ; 0x02128810
	stmdb sp!, {r4, lr}
	ldr r1, _021288B8 ; =0x02169C50
	mov r4, r2
	ldr ip, [r1]
	cmp ip, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0x39]
	cmp r1, #2
	beq _02128848
    mov r0, r0, lsl #0x10
    mov r1, r0, lsr #0x10
	mov r0, #0
	bl WM_Disconnect
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02128810
_02128848:
	ldrb r3, [r4, #0x62]
	mov r2, #0x68
	mov r0, r4
	mla r1, r3, r2, ip
	bl MI_CpuCopy8
	ldr r0, _021288B8 ; =0x02169C50
	ldrb r2, [r4, #0x62]
	ldr r1, [r0]
	strb r2, [r1, #0x39a]
	ldr r1, [r0]
	ldrb r2, [r1, #0x39a]
	add r3, r1, #0x390
	ldrb r1, [r3, r2]
	cmp r1, #2
	ldmhsia sp!, {r4, pc}
	mov r1, #1
	strb r1, [r3, r2]
	ldr r0, [r0]
	ldrb r4, [r0, #0x39a]
	bl ov11_0212C154
	cmp r4, r0
	ldmneia sp!, {r4, pc}
	ldr r0, _021288B8 ; =0x02169C50
	mov r1, #3
	ldr r0, [r0]
	add r0, r0, r4
	strb r1, [r0, #0x390]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021288B8: .word OVERLAY11_BSS_02169C50

	arm_func_start ov11_021288BC
ov11_021288BC: ; 0x021288BC
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02128970 ; =0x02169C50
	mov r4, r0
	ldr r3, [r1]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r2, #0x39]
	cmp r0, #2
	beq _021288F4
    mov r0, r4, lsl #0x10
    mov r1, r0, lsr #0x10
	mov r0, #0
	bl WM_Disconnect
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_021288BC
_021288F4:
	mov r1, #0x68
	mul r5, r4, r1
	mov r0, r2
	mov r2, r1
	add r1, r3, r5
	bl MI_CpuCopy8
	ldr r0, _02128970 ; =0x02169C50
	mov r1, r4
	ldr r0, [r0]
	add r0, r0, r5
	add r0, r0, #0x5c
	bl ov11_02129800
	ldr r0, _02128970 ; =0x02169C50
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, r4
	strb r1, [r0, #0x390]
	bl ov11_0212C154
	cmp r4, r0
	bne _0212895C
	ldr r0, _02128970 ; =0x02169C50
	mov r1, #3
	ldr r0, [r0]
	add r0, r0, r4
	strb r1, [r0, #0x390]
	ldmia sp!, {r3, r4, r5, pc}
_0212895C:
	ldr r0, _02128970 ; =0x02169C50
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x399]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02128970: .word OVERLAY11_BSS_02169C50

	arm_func_start ov11_02128974
ov11_02128974: ; 0x02128974
	stmdb sp!, {r4, lr}
	ldr r1, _021289A8 ; =OVERLAY11_BSS_02169C50
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x340]
	bl ov11_02128A74
	ldr r0, _021289A8 ; =OVERLAY11_BSS_02169C50
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, r4
	strb r1, [r0, #0x390]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021289A8: .word OVERLAY11_BSS_02169C50
	arm_func_end ov11_02128974

	arm_func_start ov11_021289AC
ov11_021289AC: ; 0x021289AC
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, _02128A2C ; =OVERLAY11_BSS_02169C50
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl ov11_0212BF48
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r4, _02128A2C ; =OVERLAY11_BSS_02169C50
	mov r5, #0
	arm_func_end ov11_021289AC
_021289D4:
	mov r0, r5
	bl ov11_0212BEA0
	cmp r0, #0
	bne _02128A14
	cmp r5, #0
	bne _021289F8
	bl ov11_0212C1D0
	cmp r0, #0
	bne _02128A14
_021289F8:
	ldr r0, [r4]
	add r0, r0, r5
	ldrb r0, [r0, #0x390]
	cmp r0, #0
	beq _02128A14
	mov r0, r5
	bl ov11_02128974
_02128A14:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	cmp r5, #8
	blo _021289D4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02128A2C: .word OVERLAY11_BSS_02169C50

	arm_func_start ov11_02128A30
ov11_02128A30: ; 0x02128A30
	ldr r1, _02128A70 ; =OVERLAY11_BSS_02169C50
	ldr r2, [r1]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	add r1, r2, r0
	ldrb r1, [r1, #0x390]
	cmp r1, #1
	cmpne r1, #2
	cmpne r1, #3
	bne _02128A68
	add r0, r2, r0, lsl #2
	ldr r0, [r0, #0x340]
	bx lr
	arm_func_end ov11_02128A30
_02128A68:
	mov r0, #0
	bx lr
	.align 2, 0
_02128A70: .word OVERLAY11_BSS_02169C50

	arm_func_start ov11_02128A74
ov11_02128A74: ; 0x02128A74
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x20
	mov r4, r0
	bl memset
	mov r0, #2
	strb r0, [r4, #0x19]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02128A74

	arm_func_start ov11_02128A94
ov11_02128A94: ; 0x02128A94
	stmdb sp!, {r4, lr}
	ldr r1, _02128B38 ; =OVERLAY11_BSS_02169C54
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #0x44
	bl _Z10Heap_Allocm
	ldr r3, _02128B38 ; =OVERLAY11_BSS_02169C54
	mov r1, #0
	mov r2, #0x44
	str r0, [r3]
	bl MI_CpuFill8
	ldr r0, _02128B38 ; =OVERLAY11_BSS_02169C54
	mov r2, #0x32
	ldr r1, [r0]
	mov r3, #1
	strh r2, [r1, #0x2e]
	ldr r1, [r0]
	ldr r2, _02128B3C ; =DAT_overlay_11_02166464
	strb r3, [r1, #0x37]
	ldr r1, [r0]
	mov r3, #2
	str r2, [r1, #0x24]
	ldr r1, [r0]
	mov r2, #0
	strb r3, [r1, #0x30]
	ldr r1, [r0]
	strb r2, [r1, #0x31]
	ldr r1, [r0]
	strb r2, [r1, #0x3c]
	ldr r1, [r0]
	strb r4, [r1, #0x33]
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_0212C21C
	mov r0, #0
	mov r1, r0
	mov r2, r0
	bl ov11_0212CA60
	ldmia sp!, {r4, pc}
	.align 2, 0
_02128B38: .word OVERLAY11_BSS_02169C54
_02128B3C: .word DAT_overlay_11_02166464
	arm_func_end ov11_02128A94

	arm_func_start ov11_02128B40
ov11_02128B40: ; 0x02128B40
	stmdb sp!, {r3, lr}
	ldr r0, _02128B7C ; =OVERLAY11_BSS_02169C54
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov11_0212CAE0
	ldr r0, _02128B7C ; =OVERLAY11_BSS_02169C54
	ldr r0, [r0]
	cmp r0, #0
	beq _02128B6C
	bl _Z9Heap_FreePv
	arm_func_end ov11_02128B40
_02128B6C:
	ldr r0, _02128B7C ; =OVERLAY11_BSS_02169C54
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128B7C: .word OVERLAY11_BSS_02169C54

	arm_func_start ov11_02128B80
ov11_02128B80: ; 0x02128B80
	ldr r0, _02128B98 ; =OVERLAY11_BSS_02169C54
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_02128B98: .word OVERLAY11_BSS_02169C54
	arm_func_end ov11_02128B80

	arm_func_start ov11_02128B9C
ov11_02128B9C: ; 0x02128B9C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_0212BF7C
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov11_02128A94
	ldr r1, _02128BD4 ; =OVERLAY11_BSS_02169C54
	ldr r0, _02128BD8 ; =ov11_02128E84
	ldr r2, [r1]
	mov r1, #0
	strb r4, [r2, #0x33]
	bl ov11_02128C3C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02128BD4: .word OVERLAY11_BSS_02169C54
_02128BD8: .word ov11_02128E84
	arm_func_end ov11_02128B9C

	arm_func_start ov11_02128BDC
ov11_02128BDC: ; 0x02128BDC
	stmdb sp!, {r3, lr}
	ldr r0, _02128C00 ; =OVERLAY11_BSS_02169C54
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _02128C04 ; =ov11_02128C70
	mov r1, #5
	bl ov11_02128C3C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128C00: .word OVERLAY11_BSS_02169C54
_02128C04: .word ov11_02128C70
	arm_func_end ov11_02128BDC

	arm_func_start thunk_FUN_overlay_11__02128b40
thunk_FUN_overlay_11__02128b40: ; 0x02128C08
	ldr ip, _02128C10 ; =ov11_02128B40
	bx ip
	.align 2, 0
_02128C10: .word ov11_02128B40
	arm_func_end thunk_FUN_overlay_11__02128b40

	arm_func_start ov11_02128C14
ov11_02128C14: ; 0x02128C14
	stmdb sp!, {r3, lr}
	ldr r0, _02128C38 ; =OVERLAY11_BSS_02169C54
	ldr r0, [r0]
	cmp r0, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	blx r0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128C38: .word OVERLAY11_BSS_02169C54
	arm_func_end ov11_02128C14

	arm_func_start ov11_02128C3C
ov11_02128C3C: ; 0x02128C3C
	ldr r2, _02128C54 ; =OVERLAY11_BSS_02169C54
	ldr r3, [r2]
	str r0, [r3, #0x20]
	ldr r0, [r2]
	strh r1, [r0, #0x2e]
	bx lr
	.align 2, 0
_02128C54: .word OVERLAY11_BSS_02169C54
	arm_func_end ov11_02128C3C

	arm_func_start ov11_02128C58
ov11_02128C58: ; 0x02128C58
	stmdb sp!, {r3, lr}
	bl ov11_0212BF7C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_02128B40
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02128C58

	arm_func_start ov11_02128C70
ov11_02128C70: ; 0x02128C70
	stmdb sp!, {r3, lr}
	ldr r0, _02128CC0 ; =OVERLAY11_BSS_02169C54
	ldr r1, [r0]
	ldrh r0, [r1, #0x2e]
	cmp r0, #0
	subne r0, r0, #1
	strneh r0, [r1, #0x2e]
	bl ov11_021291DC
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _02128CC0 ; =OVERLAY11_BSS_02169C54
	ldr r0, [r0]
	ldrh r0, [r0, #0x2e]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_0212A668
	ldr r0, _02128CC4 ; =ov11_02128C58
	mov r1, #0
	bl ov11_02128C3C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128CC0: .word OVERLAY11_BSS_02169C54
_02128CC4: .word ov11_02128C58
	arm_func_end ov11_02128C70

	arm_func_start ov11_02128CC8
ov11_02128CC8: ; 0x02128CC8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r2
	bl ov11_0212C154
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr ip, _02128D54 ; =s_FREAK_overlay_11_02166484
	mov r3, #1
	mov r2, #0
	arm_func_end ov11_02128CC8
_02128CEC:
	ldrb r1, [ip]
	ldrb r0, [r5, r2]
	cmp r1, r0
	movne r3, #0
	bne _02128D10
	add r2, r2, #1
	cmp r2, #6
	add ip, ip, #1
	blo _02128CEC
_02128D10:
	cmp r3, #0
	beq _02128D40
	ldr r0, _02128D58 ; =OVERLAY11_BSS_02169C54
	ldr r0, [r0]
	ldrb r0, [r0, #0x3c]
	cmp r0, #0
	bne _02128D40
	ldr r1, _02128D5C ; =s_GAME_overlay_11_0216648c
	mov r0, #7
	strb r4, [r1]
	bl ov11_0212BB6C
	ldmia sp!, {r3, r4, r5, pc}
_02128D40:
	ldr r1, _02128D60 ; =s_FULL_overlay_11_02166494
	mov r0, #7
	strb r4, [r1]
	bl ov11_0212BB6C
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02128D54: .word s_FREAK_overlay_11_02166484
_02128D58: .word OVERLAY11_BSS_02169C54
_02128D5C: .word s_GAME_overlay_11_0216648c
_02128D60: .word s_FULL_overlay_11_02166494

	arm_func_start ov11_02128D64
ov11_02128D64: ; 0x02128D64
	stmdb sp!, {r4, lr}
	mov r4, #1
	ldr ip, _02128E24 ; =0x0216648D
	mov r3, r4
	arm_func_end ov11_02128D64
_02128D74:
	ldrb r1, [ip]
	ldrb r0, [r2, r3]
	cmp r1, r0
	movne r4, #0
	bne _02128D98
	add r3, r3, #1
	cmp r3, #6
	add ip, ip, #1
	blo _02128D74
_02128D98:
	cmp r4, #0
	beq _02128DC4
	ldrb r4, [r2]
	bl ov11_0212C154
	cmp r4, r0
	ldmneia sp!, {r4, pc}
	ldr r0, _02128E28 ; =OVERLAY11_BSS_02169C54
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x31]
	ldmia sp!, {r4, pc}
_02128DC4:
	mov r4, #1
	ldr r3, _02128E2C ; =0x02166495
	mov ip, r4
_02128DD0:
	ldrb r1, [r3]
	ldrb r0, [r2, ip]
	cmp r1, r0
	movne r4, #0
	bne _02128DF4
	add ip, ip, #1
	cmp ip, #6
	add r3, r3, #1
	blo _02128DD0
_02128DF4:
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	ldrb r4, [r2]
	bl ov11_0212C154
	and r0, r0, #0xff
	cmp r4, r0
	ldmneia sp!, {r4, pc}
	ldr r0, _02128E28 ; =OVERLAY11_BSS_02169C54
	mov r1, #2
	ldr r0, [r0]
	strb r1, [r0, #0x31]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02128E24: .word s_GAME_overlay_11_0216648c+1
_02128E28: .word OVERLAY11_BSS_02169C54
_02128E2C: .word s_FULL_overlay_11_02166494+1

    arm_func_start ov11_02128E30
ov11_02128E30: ; 0x02128E30
    mov r0, #6
    bx lr
    arm_func_end ov11_02128E30

	arm_func_start ov11_02128E38
ov11_02128E38: ; 0x02128E38
	stmdb sp!, {r3, lr}
	bl ov11_0212C154
	bl ov11_0212BEA0
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _02128E5C ; =ov11_02128E60
	mov r1, #0
	bl ov11_02128C3C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128E5C: .word ov11_02128E60
	arm_func_end ov11_02128E38

	arm_func_start ov11_02128E60
ov11_02128E60: ; 0x02128E60
	stmdb sp!, {r3, lr}
	bl ov11_0212BF7C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02128E80 ; =ov11_02128C58
	mov r1, #0
	bl ov11_02128C3C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128E80: .word ov11_02128C58
	arm_func_end ov11_02128E60

	arm_func_start ov11_02128E84
ov11_02128E84: ; 0x02128E84
	stmdb sp!, {r3, lr}
	bl ov11_02129024
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _02128ED8 ; =OVERLAY11_BSS_02169C54
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	bl ov11_02128F1C
	bl ov11_021286BC
	mov r0, #1
	mov r1, r0
	mov r3, r0
	mov r2, #0x200
	bl ov11_0212A524
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov11_0212A630
	ldr r0, _02128EDC ; =ov11_02128E38
	mov r1, #0
	bl ov11_02128C3C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128ED8: .word OVERLAY11_BSS_02169C54
_02128EDC: .word ov11_02128E38
	arm_func_end ov11_02128E84

	arm_func_start ov11_02128EE0
ov11_02128EE0: ; 0x02128EE0
	ldr r0, _02128EF8 ; =OVERLAY11_BSS_02169C54
	ldr r0, [r0]
	cmp r0, #0
	ldrneb r0, [r0, #0x33]
	moveq r0, #1
	bx lr
	.align 2, 0
_02128EF8: .word OVERLAY11_BSS_02169C54
	arm_func_end ov11_02128EE0

	arm_func_start ov11_02128EFC
ov11_02128EFC: ; 0x02128EFC
	ldr r0, _02128F14 ; =OVERLAY11_BSS_02169C54
	ldr r0, [r0]
	cmp r0, #0
	ldrneb r0, [r0, #0x34]
	moveq r0, #0
	bx lr
	.align 2, 0
_02128F14: .word OVERLAY11_BSS_02169C54
	arm_func_end ov11_02128EFC
_02128F18:
	b _02128F18

	arm_func_start ov11_02128F1C
ov11_02128F1C: ; 0x02128F1C
	stmdb sp!, {r4, lr}
	ldr r1, _02128FA8 ; =OVERLAY11_BSS_02169C58
	mov r4, r0
	ldr r0, [r1, #8]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _02128FAC ; =0x00000DA4
	mov r1, #0x20
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r3, _02128FA8 ; =OVERLAY11_BSS_02169C58
	ldr r2, _02128FAC ; =0x00000DA4
	mov r1, #0
	str r0, [r3, #8]
	bl MI_CpuFill8
	bl ov11_02127FA4
	mov r1, #0x20
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r1, _02128FA8 ; =OVERLAY11_BSS_02169C58
	ldr r1, [r1, #8]
	str r0, [r1, #0xd84]
	bl ov11_02127FA4
	mov r2, r0
	ldr r0, _02128FA8 ; =OVERLAY11_BSS_02169C58
	mov r1, #0
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xd84]
	bl MI_CpuFill8
	ldr r2, _02128FB0 ; =0x00000333
	ldr r0, _02128FA8 ; =OVERLAY11_BSS_02169C58
	ldr r1, [r0, #8]
	str r2, [r1, #0xd94]
	ldr r0, [r0, #8]
	str r4, [r0, #0xd90]
	bl ov11_02129080
	ldmia sp!, {r4, pc}
	.align 2, 0
_02128FA8: .word OVERLAY11_BSS_02169C58
_02128FAC: .word 0x00000DA4
_02128FB0: .word 0x00000333
	arm_func_end ov11_02128F1C

	arm_func_start ov11_02128FB4
ov11_02128FB4: ; 0x02128FB4
	stmdb sp!, {r3, lr}
	cmp r1, #0
	beq _02128FC4
	bl OS_Terminate
	arm_func_end ov11_02128FB4
_02128FC4:
	ldr r0, _02128FD4 ; =OVERLAY11_BSS_02169C58
	mov r1, #2
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02128FD4: .word OVERLAY11_BSS_02169C58

    arm_func_start ov11_02128FD8
ov11_02128FD8: ; 0x02128FD8
	ldr r0, _02128FE8 ; =0x02169C58
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	arm_func_end ov11_02128FD8
_02128FE8: .word OVERLAY11_BSS_02169C58

	arm_func_start ov11_02128FEC
ov11_02128FEC: ; 0x02128FEC
	stmdb sp!, {r3, lr}
	ldr r3, _0212901C ; =OVERLAY11_BSS_02169C58
	mov ip, #1
	ldr r1, _02129020 ; =ov11_02128FB4
	mov r0, #4
	mov r2, #0
	str ip, [r3, #4]
	bl sub_02046948
	cmp r0, #1
	ldmeqia sp!, {r3, pc}
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212901C: .word OVERLAY11_BSS_02169C58
_02129020: .word ov11_02128FB4
	arm_func_end ov11_02128FEC

	arm_func_start ov11_02129024
ov11_02129024: ; 0x02129024
	ldr r0, _0212903C ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #4]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_0212903C: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_02129024

	arm_func_start ov11_02129040
ov11_02129040: ; 0x02129040
	ldr ip, _02129050 ; =FUN_02046B84
	ldr r0, _02129054 ; =0x02128FD8
	mov r1, #0
	bx ip
	.align 2, 0
_02129050: .word sub_02046B84
_02129054: .word ov11_02128FD8
	arm_func_end ov11_02129040

	arm_func_start ov11_02129058
ov11_02129058: ; 0x02129058
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bxne lr
	ldr r0, _0212907C ; =OVERLAY11_BSS_02169C58
	ldr r1, [r0, #8]
	cmp r1, #0
	movne r0, #2
	strne r0, [r1, #0xd88]
	bx lr
	.align 2, 0
_0212907C: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_02129058

	arm_func_start ov11_02129080
ov11_02129080: ; 0x02129080
	stmdb sp!, {r3, lr}
	ldr r0, _021290B4 ; =OVERLAY11_BSS_02169C58
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [r0, #0xd88]
	bl ov11_02127ED0
	ldr r0, _021290B8 ; =ov11_02129058
	bl WM_SetIndCallback
	ldr r0, _021290B4 ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xd94]
	bl ov11_02127A70
	ldmia sp!, {r3, pc}
	.align 2, 0
_021290B4: .word OVERLAY11_BSS_02169C58
_021290B8: .word ov11_02129058
	arm_func_end ov11_02129080

	arm_func_start ov11_021290BC
ov11_021290BC: ; 0x021290BC
	ldr r1, _021290E0 ; =OVERLAY11_BSS_02169C58
	and r0, r0, #0xff
	ldr r2, [r1, #8]
	mov r0, r0, lsl #0x1f
	ldrb r1, [r2, #0xda1]
	bic r1, r1, #8
	orr r0, r1, r0, lsr #28
	strb r0, [r2, #0xda1]
	bx lr
	.align 2, 0
_021290E0: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_021290BC

	arm_func_start ov11_021290E4
ov11_021290E4: ; 0x021290E4
	ldr r1, _02129140 ; =OVERLAY11_BSS_02169C58
	mov r0, #0
	ldr r2, [r1, #8]
	strb r0, [r2, #0xd8c]
	ldr r3, [r1, #8]
	ldrb r2, [r3, #0xda1]
	bic r2, r2, #1
	strb r2, [r3, #0xda1]
	ldr r3, [r1, #8]
	ldrb r2, [r3, #0xda1]
	bic r2, r2, #4
	strb r2, [r3, #0xda1]
	ldr r2, [r1, #8]
	strb r0, [r2, #0xd9e]
	ldr r3, [r1, #8]
	ldrb r2, [r3, #0xda1]
	bic r2, r2, #0x10
	strb r2, [r3, #0xda1]
	ldr r2, [r1, #8]
	strb r0, [r2, #0xda0]
	ldr r1, [r1, #8]
	strb r0, [r1, #0xd9f]
	bx lr
	.align 2, 0
_02129140: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_021290E4

	arm_func_start ov11_02129144
ov11_02129144: ; 0x02129144
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	bl ov11_021290E4
	mov r0, r5
	bl ov11_021290BC
	bl ov11_02128444
	ldr r0, _021291D4 ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0xd9f]
	cmp r0, #0
	bne _02129190
	ldr r0, _021291D8 ; =ov11_0212B0C0
	mov r1, #0xe
	bl ov11_021281CC
	ldr r0, _021291D4 ; =OVERLAY11_BSS_02169C58
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0xd9f]
	arm_func_end ov11_02129144
_02129190:
	ldr r0, _021291D4 ; =OVERLAY11_BSS_02169C58
	and r1, r4, #0xff
	ldr r2, [r0, #8]
	mov r0, r1, lsl #0x1f
	ldrb r1, [r2, #0xda1]
	bic r1, r1, #0x20
	orr r0, r1, r0, lsr #26
	strb r0, [r2, #0xda1]
	bl ov11_02127B08
	cmp r0, #1
	bne _021291CC
	bl ov11_02127B38
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_021291CC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021291D4: .word OVERLAY11_BSS_02169C58
_021291D8: .word ov11_0212B0C0

	arm_func_start ov11_021291DC
ov11_021291DC: ; 0x021291DC
	stmdb sp!, {r3, lr}
	ldr r0, _021292B4 ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldrb r0, [r0, #0xda0]
	cmp r0, #0
	beq _02129214
	cmp r0, #1
	beq _0212925C
	cmp r0, #2
	beq _02129280
	b _021292AC
	arm_func_end ov11_021291DC
_02129214:
	bl ov11_021283B4
	cmp r0, #0
	beq _02129238
	bl ov11_021277AC
	ldr r0, _021292B4 ; =OVERLAY11_BSS_02169C58
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0xda0]
	b _021292AC
_02129238:
	bl ov11_0212836C
	cmp r0, #0
	bne _021292AC
	bl ov11_0212825C
	ldr r0, _021292B4 ; =OVERLAY11_BSS_02169C58
	mov r1, #2
	ldr r0, [r0, #8]
	strb r1, [r0, #0xda0]
	b _021292AC
_0212925C:
	bl ov11_0212836C
	cmp r0, #0
	bne _021292AC
	bl ov11_0212825C
	ldr r0, _021292B4 ; =OVERLAY11_BSS_02169C58
	mov r1, #2
	ldr r0, [r0, #8]
	strb r1, [r0, #0xda0]
	b _021292AC
_02129280:
	bl ov11_02128348
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
	bl ov11_02128390
	cmp r0, #0
	beq _021292AC
	ldr r0, _021292B4 ; =OVERLAY11_BSS_02169C58
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0xda0]
_021292AC:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_021292B4: .word OVERLAY11_BSS_02169C58

	arm_func_start ov11_021292B8
ov11_021292B8: ; 0x021292B8
	stmdb sp!, {r3, lr}
	ldr r0, _021292F4 ; =OVERLAY11_BSS_02169C58
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021292EC
	ldrb r0, [r1, #0xd9e]
	cmp r0, #0
	bne _021292EC
	mov r0, #1
	strb r0, [r1, #0xd9e]
	bl ov11_0212825C
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021292B8
_021292EC:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_021292F4: .word OVERLAY11_BSS_02169C58

	arm_func_start ov11_021292F8
ov11_021292F8: ; 0x021292F8
	stmdb sp!, {r3, lr}
	ldr r0, _02129348 ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xd84]
	cmp r0, #0
	beq _02129324
	bl _Z9Heap_FreePv
	ldr r0, _02129348 ; =OVERLAY11_BSS_02169C58
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [r0, #0xd84]
	arm_func_end ov11_021292F8
_02129324:
	ldr r0, _02129348 ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02129338
	bl _Z9Heap_FreePv
_02129338:
	ldr r0, _02129348 ; =OVERLAY11_BSS_02169C58
	mov r1, #0
	str r1, [r0, #8]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02129348: .word OVERLAY11_BSS_02169C58

	arm_func_start ov11_0212934C
ov11_0212934C: ; 0x0212934C
	stmdb sp!, {r3, r4, r5, lr}
	bl ov11_02128EE0
	mov r5, r0
	bl ov11_021297EC
	mov r4, r0
	cmp r5, #0xf
	beq _021293A0
	ldr r0, _021293FC ; =OVERLAY11_BSS_02169C58
	ldr r5, [r0, #8]
	bl ov11_0212C2FC
	mov r2, r0
	mov r0, r4
	add r1, r5, #0x10
	bl MI_CpuCopy8
	ldr r0, [r4, #0x10]
	str r0, [r5]
	bl ov11_02128EE0
	strb r0, [r5, #4]
	bl ov11_02128460
	strb r0, [r5, #0x54]
	b _021293D8
	arm_func_end ov11_0212934C
_021293A0:
	ldr r0, _021293FC ; =OVERLAY11_BSS_02169C58
	ldr r1, [r4, #0x10]
	ldr r4, [r0, #8]
	str r1, [r4]
	bl ov11_02128EE0
	strb r0, [r4, #4]
	bl ov11_02128EFC
	ldr r1, _021293FC ; =OVERLAY11_BSS_02169C58
	strb r0, [r4, #5]
	ldr r0, [r1, #8]
	add r1, r4, #8
	add r0, r0, #0xe0
	mov r2, #0x54
	bl MI_CpuCopy8
_021293D8:
	ldr r0, _021293FC ; =OVERLAY11_BSS_02169C58
	mov r1, #0x5c
	ldr r0, [r0, #8]
	bl DC_FlushRange
	ldr r0, _021293FC ; =OVERLAY11_BSS_02169C58
	mov r1, #0x5c
	ldr r0, [r0, #8]
	bl ov11_02127A84
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021293FC: .word OVERLAY11_BSS_02169C58

	arm_func_start ov11_02129400
ov11_02129400: ; 0x02129400
	stmdb sp!, {r4, lr}
	ldr r0, _02129460 ; =OVERLAY11_BSS_02169C58
	ldr r4, [r0, #8]
	bl ov11_02129730
	ldrb r1, [r4, #6]
	cmp r1, r0
	ldmeqia sp!, {r4, pc}
	bl ov11_02129730
	ldr r1, _02129460 ; =OVERLAY11_BSS_02169C58
	strb r0, [r4, #6]
	ldr r0, [r1, #8]
	mov r1, #0x5c
	bl DC_FlushRange
	ldr r0, _02129460 ; =OVERLAY11_BSS_02169C58
	mov r1, #0x5c
	ldr r0, [r0, #8]
	bl ov11_02127A84
	ldr r2, _02129460 ; =OVERLAY11_BSS_02169C58
	mov r1, #0x5c
	ldr r0, [r2, #8]
	ldrh r3, [r2]
	ldr r2, [r0, #0xd94]
	bl ov11_021283E8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02129460: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_02129400

	arm_func_start ov11_02129464
ov11_02129464: ; 0x02129464
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	bl ov11_02127B08
	mov r4, r0
	bl ov11_021289AC
	bl ov11_02129400
	bl ov11_02128330
	cmp r0, #0
	bne _021294B8
	bl ov11_0212978C
	cmp r0, #0
	bne _021294B8
	ldr r0, _021296C0 ; =OVERLAY11_BSS_02169C58
	ldr r2, [r0, #8]
	ldrb r0, [r2, #0xda1]
	mov r1, r0, lsl #0x1d
	movs r1, r1, lsr #0x1f
	bicne r0, r0, #1
	orrne r0, r0, #1
	strneb r0, [r2, #0xda1]
	arm_func_end ov11_02129464
_021294B8:
	ldr r0, _021296C0 ; =OVERLAY11_BSS_02169C58
	ldr r1, _021296C4 ; =0x0000FFFF
	ldr r0, [r0, #8]
	add r0, r0, #0xd00
	ldrh r2, [r0, #0x9a]
	cmp r2, r1
	streqh r5, [r0, #0x9a]
	ldr r0, _021296C0 ; =OVERLAY11_BSS_02169C58
	ldr r2, [r0, #8]
	ldrb r1, [r2, #0xda1]
	mov r0, r1, lsl #0x1e
	movs r0, r0, lsr #0x1f
	beq _02129504
	add r0, r2, #0xd00
	ldrh r0, [r0, #0x9a]
	cmp r0, r5
	bichi r0, r1, #1
	orrhi r0, r0, #1
	strhib r0, [r2, #0xda1]
_02129504:
	bl ov11_02127B20
	cmp r0, #0x19
	bne _02129518
	mov r0, #0
	bl _02128F18
_02129518:
	cmp r4, #9
	addls pc, pc, r4, lsl #2
	b _021296B8
_02129524: ; jump table
	b _0212954C ; case 0
	b _02129580 ; case 1
	b _021296B8 ; case 2
	b _021296B8 ; case 3
	b _021296B8 ; case 4
	b _021296B8 ; case 5
	b _021296B8 ; case 6
	b _021295F8 ; case 7
	b _021295CC ; case 8
	b _021295CC ; case 9
_0212954C:
	ldr r0, _021296C0 ; =OVERLAY11_BSS_02169C58
	ldr r1, [r0, #8]
	ldrb r0, [r1, #0xd9e]
	cmp r0, #1
	bne _0212956C
	bl ov11_021292F8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_0212956C:
	cmp r0, #2
	moveq r0, #3
	streqb r0, [r1, #0xd9e]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_02129580:
	ldr r0, _021296C0 ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0xd9e]
	cmp r0, #1
	bne _021295A4
	bl ov11_021282FC
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
_021295A4:
	ldr r0, _021296C0 ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0xd9e]
	cmp r0, #2
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov11_021282FC
	add sp, sp, #8
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021295CC:
	ldr r0, _021296C0 ; =OVERLAY11_BSS_02169C58
	ldr r1, [r0, #8]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r1, #0xda1]
	add sp, sp, #8
	bic r0, r0, #1
	orr r0, r0, #1
	strb r0, [r1, #0xda1]
	ldmia sp!, {r3, r4, r5, pc}
_021295F8:
	bl ov11_02127D9C
	ldr r2, _021296C0 ; =OVERLAY11_BSS_02169C58
	ldr r3, [r2, #8]
	ldrb r1, [r3, #0xd9d]
	cmp r1, #0
	subne r0, r1, #1
	strneb r0, [r3, #0xd9d]
	bne _0212962C
	add r1, r3, #0xd00
	strh r0, [r1, #0x98]
	ldr r0, [r2, #8]
	mov r1, #5
	strb r1, [r0, #0xd9d]
_0212962C:
	ldr r1, _021296C0 ; =OVERLAY11_BSS_02169C58
	ldr r0, [r1, #8]
	ldrb r2, [r0, #0xda1]
	add r0, r0, #0xd00
	ldrh r4, [r0, #0x98]
	mov r0, r2, lsl #0x1c
	movs r0, r0, lsr #0x1f
	ldrneh r0, [r1]
	addne r0, r0, #1
	strneh r0, [r1]
	bl ov11_0212934C
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212CE10
	mov r5, r0
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_021297BC
	str r0, [sp]
	ldr r1, _021296C0 ; =OVERLAY11_BSS_02169C58
	mov r3, r5
	ldr r5, [r1, #8]
	mov r0, #0
	ldrb r5, [r5, #0xda1]
	mov r2, r4
	mov r5, r5, lsl #0x1a
	mov r5, r5, lsr #0x1f
	str r5, [sp, #4]
	ldrh r1, [r1]
	bl ov11_0212806C
	ldr r0, _021296C0 ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #8]
	strb r4, [r0, #0xd9c]
_021296B8:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021296C0: .word OVERLAY11_BSS_02169C58
_021296C4: .word 0x0000FFFF

	arm_func_start ov11_021296C8
ov11_021296C8: ; 0x021296C8
	stmdb sp!, {r3, lr}
	ldr r1, _021296E4 ; =OVERLAY11_BSS_02169C58
	ldr r1, [r1, #8]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	bl ov11_02129464
	ldmia sp!, {r3, pc}
	.align 2, 0
_021296E4: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_021296C8

	arm_func_start ov11_021296E8
ov11_021296E8: ; 0x021296E8
	stmdb sp!, {r4, lr}
	ldr r1, _0212972C ; =OVERLAY11_BSS_02169C58
	mov r4, r0
	ldr r0, [r1, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov11_02127B08
	cmp r0, #4
	movne r0, #0
	ldmneia sp!, {r4, pc}
	bl ov11_02127AA4
	mov r1, #1
	tst r0, r1, lsl r4
	moveq r1, #0
	mov r0, r1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212972C: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_021296E8

	arm_func_start ov11_02129730
ov11_02129730: ; 0x02129730
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r4
	arm_func_end ov11_02129730
_0212973C:
	mov r0, r5
	bl ov11_021296E8
	cmp r0, #0
	addne r0, r4, #1
	movne r0, r0, lsl #0x10
	movne r4, r0, lsr #0x10
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	cmp r5, #8
	blo _0212973C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02129770
ov11_02129770: ; 0x02129770
	ldr r0, _02129788 ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_02129788: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_02129770

	arm_func_start ov11_0212978C
ov11_0212978C: ; 0x0212978C
	stmdb sp!, {r3, lr}
	ldr r0, _021297B4 ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov11_02127AA4
	ldr r1, _021297B8 ; =0x0000FFFE
	and r0, r0, r1
	ldmia sp!, {r3, pc}
	.align 2, 0
_021297B4: .word OVERLAY11_BSS_02169C58
_021297B8: .word 0x0000FFFE
	arm_func_end ov11_0212978C

	arm_func_start ov11_021297BC
ov11_021297BC: ; 0x021297BC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl WM_GetDispersionBeaconPeriod
	cmp r4, #0xa
	moveq r0, r0, lsl #0xe
	moveq r0, r0, lsr #0x10
	ldmeqia sp!, {r4, pc}
	cmp r4, #9
	cmpne r4, #0xd
	moveq r0, r0, lsl #0xe
	moveq r0, r0, lsr #0x10
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021297BC

	arm_func_start ov11_021297EC
ov11_021297EC: ; 0x021297EC
	ldr r0, _021297FC ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xd90]
	bx lr
	.align 2, 0
_021297FC: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_021297EC

	arm_func_start ov11_02129800
ov11_02129800: ; 0x02129800
	stmdb sp!, {r3, lr}
	ldr r2, _0212982C ; =OVERLAY11_BSS_02169C58
	ldr r2, [r2, #8]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	add r2, r2, #0x134
	add r3, r2, #0xc00
	mov r2, #6
	mla r1, r2, r1, r3
	bl MI_CpuCopy8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212982C: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_02129800

	arm_func_start ov11_02129830
ov11_02129830: ; 0x02129830
	ldr r0, _02129854 ; =OVERLAY11_BSS_02169C58
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldrb r0, [r0, #0xda1]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1f
	bx lr
	.align 2, 0
_02129854: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_02129830

	arm_func_start ov11_02129858
ov11_02129858: ; 0x02129858
	ldr r0, _02129874 ; =OVERLAY11_BSS_02169C58
	ldr r1, [r0, #8]
	cmp r1, #0
	ldrneb r0, [r1, #0xda1]
	orrne r0, r0, #0x10
	strneb r0, [r1, #0xda1]
	bx lr
	.align 2, 0
_02129874: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_02129858

	arm_func_start ov11_02129878
ov11_02129878: ; 0x02129878
	stmdb sp!, {r3, lr}
	bl ov11_0212934C
	ldr r2, _0212989C ; =OVERLAY11_BSS_02169C58
	mov r1, #0x5c
	ldr r0, [r2, #8]
	ldrh r3, [r2]
	ldr r2, [r0, #0xd94]
	bl ov11_021283E8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212989C: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_02129878

	arm_func_start ov11_021298A0
ov11_021298A0: ; 0x021298A0
	stmdb sp!, {r3, lr}
	ldr r1, _021298C0 ; =OVERLAY11_BSS_02169C58
	mov r2, #0x54
	ldr r1, [r1, #8]
	add r1, r1, #0xe0
	bl MI_CpuCopy8
	bl ov11_02129878
	ldmia sp!, {r3, pc}
	.align 2, 0
_021298C0: .word OVERLAY11_BSS_02169C58
	arm_func_end ov11_021298A0

	arm_func_start ov11_021298C4
ov11_021298C4: ; 0x021298C4
	stmdb sp!, {r3, lr}
	ldr r0, _0212993C ; =OVERLAY11_BSS_02169C64
	ldr r0, [r0]
	cmp r0, #0
	bne _021298F4
	ldr r0, _02129940 ; =0x00000253
	bl _Z10Heap_Allocm
	ldr r3, _0212993C ; =OVERLAY11_BSS_02169C64
	ldr r2, _02129940 ; =0x00000253
	mov r1, #0
	str r0, [r3]
	bl MI_CpuFill8
	arm_func_end ov11_021298C4
_021298F4:
	ldr r0, _0212993C ; =OVERLAY11_BSS_02169C64
	mov r2, #0
	mov r3, #0xff
_02129900:
	ldr r1, [r0]
	add r1, r1, r2
	add r2, r2, #1
	strb r3, [r1, #0x10]
	cmp r2, #8
	blt _02129900
	ldr r0, _0212993C ; =OVERLAY11_BSS_02169C64
	mov r1, #0
	ldr r2, [r0]
	strb r3, [r2, #0x250]
	ldr r2, [r0]
	strb r3, [r2, #0x251]
	ldr r0, [r0]
	strb r1, [r0, #0x252]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212993C: .word OVERLAY11_BSS_02169C64
_02129940: .word 0x00000253

	arm_func_start ov11_02129944
ov11_02129944: ; 0x02129944
	stmdb sp!, {r3, lr}
	ldr r0, _0212996C ; =OVERLAY11_BSS_02169C64
	ldr r0, [r0]
	cmp r0, #0
	beq _0212995C
	bl _Z9Heap_FreePv
	arm_func_end ov11_02129944
_0212995C:
	ldr r0, _0212996C ; =OVERLAY11_BSS_02169C64
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212996C: .word OVERLAY11_BSS_02169C64

	arm_func_start ov11_02129970
ov11_02129970: ; 0x02129970
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldrb r1, [r2]
	mov r6, r0
	strb r1, [sp]
	bl ov11_0212C154
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldrb r2, [sp]
	add r1, sp, #1
	mov r0, #0x12
	strb r6, [sp, #1]
	strb r2, [sp, #2]
	bl ov11_0212BB6C
	ldr r5, _02129A18 ; =OVERLAY11_BSS_02169C64
	ldrb r1, [sp]
	ldr r0, [r5]
	mov r4, #0
	add r0, r0, r6
	strb r1, [r0, #0x10]
	arm_func_end ov11_02129970
_021299C4:
	mov r0, r4
	bl ov11_0212BEA0
	cmp r0, #0
	beq _021299F0
	ldr r0, [r5]
	ldrb r1, [sp]
	add r0, r0, r4
	ldrb r0, [r0, #0x10]
	cmp r1, r0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
_021299F0:
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	cmp r4, #8
	blo _021299C4
	add r1, sp, #0
	mov r0, #0x11
	bl ov11_0212BB6C
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02129A18: .word OVERLAY11_BSS_02169C64

	arm_func_start ov11_02129A1C
ov11_02129A1C: ; 0x02129A1C
	ldr r0, _02129A38 ; =0x02169C64
	ldrb r1, [r2]
	ldr r0, [r0]
	ldrb r2, [r2, #1]
	add r0, r0, r1
	strb r2, [r0, #0x10]
	bx lr
	.align 2, 0
	arm_func_end ov11_02129A1C
_02129A38: .word OVERLAY11_BSS_02169C64

	arm_func_start ov11_02129A3C
ov11_02129A3C: ; 0x02129A3C
	ldr r0, _02129A50 ; =0x02169C64
	ldrb r1, [r2]
	ldr r0, [r0]
	strb r1, [r0, #0x250]
	bx lr
	.align 2, 0
	arm_func_end ov11_02129A3C
_02129A50: .word OVERLAY11_BSS_02169C64

	arm_func_start ov11_02129A54
ov11_02129A54: ; 0x02129A54
	ldr r1, _02129A70 ; =OVERLAY11_BSS_02169C64
	mov r2, #1
	ldr r3, [r1]
	strb r0, [r3, #0x251]
	ldr r0, [r1]
	strb r2, [r0, #0x252]
	bx lr
	.align 2, 0
_02129A70: .word OVERLAY11_BSS_02169C64
	arm_func_end ov11_02129A54

	arm_func_start ov11_02129A74
ov11_02129A74: ; 0x02129A74
	stmdb sp!, {r3, lr}
	ldr r0, _02129ABC ; =OVERLAY11_BSS_02169C64
	ldr r1, [r0]
	cmp r1, #0
	ldrneb r0, [r1, #0x252]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r1, #0x51
	add r1, r0, #0x200
	mov r0, #0x10
	bl ov11_0212C198
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _02129ABC ; =OVERLAY11_BSS_02169C64
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x252]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02129ABC: .word OVERLAY11_BSS_02169C64
	arm_func_end ov11_02129A74

	arm_func_start ov11_02129AC0
ov11_02129AC0: ; 0x02129AC0
	ldr r1, _02129AE8 ; =OVERLAY11_BSS_02169C64
	ldr r1, [r1]
	cmp r1, #0
	moveq r0, #1
	bxeq lr
	ldrb r1, [r1, #0x250]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_02129AE8: .word OVERLAY11_BSS_02169C64
	arm_func_end ov11_02129AC0

	arm_func_start ov11_02129AEC
ov11_02129AEC: ; 0x02129AEC
	ldr r1, _02129B10 ; =0x02169C64
	ldrb ip, [r2]
	ldr r3, [r1]
	strb ip, [r3, r0, lsl #1]
	ldr r1, [r1]
	ldrb r2, [r2, #1]
	add r0, r1, r0, lsl #1
	strb r2, [r0, #1]
	bx lr
	.align 2, 0
	arm_func_end ov11_02129AEC
_02129B10: .word OVERLAY11_BSS_02169C64

	arm_func_start ov11_02129B14
ov11_02129B14: ; 0x02129B14
	mov r0, #2
	bx lr
	arm_func_end ov11_02129B14

	arm_func_start ov11_02129B1C
ov11_02129B1C: ; 0x02129B1C
	stmdb sp!, {r3, lr}
	ldr r1, _02129B54 ; =OVERLAY11_BSS_02169C64
	mov ip, r0
	ldr r3, [r1]
	mov r0, r2
	add r2, r3, ip
	mov r3, #1
	strb r3, [r2, #0x248]
	ldr r1, [r1]
	mov r2, #0x46
	add r1, r1, #0x18
	mla r1, ip, r2, r1
	bl MI_CpuCopy8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02129B54: .word OVERLAY11_BSS_02169C64
	arm_func_end ov11_02129B1C

    arm_func_start ov11_02129B58
ov11_02129B58: ; 0x02129B58
    mov r0, #0x46
    bx lr
    arm_func_end ov11_02129B58

	arm_func_start ov11_02129B60
ov11_02129B60: ; 0x02129B60
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _02129D5C ; =OVERLAY11_BSS_02169C68
	mov r4, #0
	mov r6, r1
	strb r4, [r2]
	cmp r0, #0
	beq _02129CF0
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212CE10
	ldr r1, _02129D5C ; =OVERLAY11_BSS_02169C68
	add r5, r0, #1
	ldr r0, [r1, #4]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl ov11_021298C4
	ldr r0, _02129D60 ; =0x00000688
	bl _Z10Heap_Allocm
	ldr r3, _02129D5C ; =OVERLAY11_BSS_02169C68
	ldr r2, _02129D60 ; =0x00000688
	mov r1, r4
	str r0, [r3, #4]
	bl MI_CpuFill8
	ldr r0, _02129D5C ; =OVERLAY11_BSS_02169C68
	add r2, r6, #0x40
	ldr r1, [r0, #4]
	mov r3, r4
	str r2, [r1, #0x654]
	ldr r1, [r0, #4]
	mov r2, #0x1b
	strb r3, [r1, #0x679]
	ldr r1, [r0, #4]
	strb r2, [r1, #0x67a]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x654]
	mov r0, r0, lsl #1
	bl _Z10Heap_Allocm
	ldr r1, _02129D5C ; =OVERLAY11_BSS_02169C68
	ldr r2, [r1, #4]
	str r0, [r2, #0x45c]
	ldr r0, [r1, #4]
	ldr r0, [r0, #0x654]
	bl _Z10Heap_Allocm
	ldr r1, _02129D5C ; =OVERLAY11_BSS_02169C68
	ldr r2, [r1, #4]
	str r0, [r2, #0x460]
	ldr r0, [r1, #4]
	ldr r0, [r0, #0x654]
	mul r0, r5, r0
	bl _Z10Heap_Allocm
	ldr r1, _02129D5C ; =OVERLAY11_BSS_02169C68
	ldr r2, [r1, #4]
	str r0, [r2, #0x458]
	ldr r0, [r1, #4]
	ldr r0, [r0, #0x654]
	mul r0, r5, r0
	bl _Z10Heap_Allocm
	ldr r1, _02129D5C ; =OVERLAY11_BSS_02169C68
	ldr r1, [r1, #4]
	str r0, [r1, #0x454]
	bl ov11_02128EE0
	cmp r0, #0xa
	bne _02129CAC
	ldr r0, _02129D5C ; =OVERLAY11_BSS_02169C68
	mov r1, #0x64
	ldr r2, [r0, #4]
	add r0, r2, #0x148
	add r2, r2, #0x64
	add r0, r0, #0x400
	add r2, r2, #0x400
	bl ov11_0212C7FC
	ldr r0, _02129D5C ; =OVERLAY11_BSS_02169C68
	mov r1, #0x320
	ldr r2, [r0, #4]
	add r0, r2, #0x168
	add r2, r2, #0xdc
	add r0, r0, #0x400
	add r2, r2, #0x400
	bl ov11_0212C7FC
	b _02129CF4
	arm_func_end ov11_02129B60
_02129CAC:
	ldr r0, _02129D5C ; =OVERLAY11_BSS_02169C68
	mov r1, #0x14
	ldr r2, [r0, #4]
	add r0, r2, #0x148
	add r2, r2, #0x64
	add r0, r0, #0x400
	add r2, r2, #0x400
	bl ov11_0212C7FC
	ldr r0, _02129D5C ; =OVERLAY11_BSS_02169C68
	mov r1, #0x118
	ldr r2, [r0, #4]
	add r0, r2, #0x168
	add r2, r2, #0xdc
	add r0, r0, #0x400
	add r2, r2, #0x400
	bl ov11_0212C7FC
	b _02129CF4
_02129CF0:
	mov r4, #1
_02129CF4:
	ldr r1, _02129D5C ; =OVERLAY11_BSS_02169C68
	mov r3, #0
	ldr r0, [r1, #4]
	mov r2, #0xff
	add r0, r0, #0x600
	strh r3, [r0, #0x58]
_02129D0C:
	ldr r0, [r1, #4]
	add r0, r0, r3
	add r3, r3, #1
	strb r2, [r0, #0x673]
	cmp r3, #4
	blt _02129D0C
	cmp r4, #0
	bne _02129D30
	bl ov11_02129D64
_02129D30:
	ldr r0, _02129D5C ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	add r0, r0, #0x1f4
	add r0, r0, #0x400
	bl ov11_0212C21C
	ldr r0, _02129D5C ; =OVERLAY11_BSS_02169C68
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #1
	strb r2, [r1, #0x683]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02129D5C: .word OVERLAY11_BSS_02169C68
_02129D60: .word 0x00000688

	arm_func_start ov11_02129D64
ov11_02129D64: ; 0x02129D64
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	mov r2, #0
	ldr r1, [r0, #4]
	strb r2, [r1, #0x628]
	ldr r1, [r0, #4]
	strb r2, [r1, #0x629]
	ldr r1, [r0, #4]
	strb r2, [r1, #0x67b]
	ldr r0, [r0, #4]
	strb r2, [r0, #0x67c]
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212CE10
	ldr r1, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	add r5, r0, #1
	ldr r0, [r1, #4]
	mov r1, #0
	ldr r3, [r0, #0x654]
	ldr r0, [r0, #0x458]
	mul r2, r3, r5
	bl MI_CpuFill8
	cmp r5, #0
	mov r4, #0
	ble _02129E04
	ldr r7, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	mov r6, r4
	arm_func_end ov11_02129D64
_02129DD4:
	ldr r0, [r7, #4]
	ldr r2, [r0, #0x654]
	ldr r1, [r0, #0x458]
	add r0, r0, #0xe8
	mla r1, r4, r2, r1
	add r0, r0, #0x400
	add r0, r0, r6
	bl ov11_0212C89C
	add r4, r4, #1
	cmp r4, r5
	add r6, r6, #0xc
	blt _02129DD4
_02129E04:
	ldr r0, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	ldr r3, [r0, #0x654]
	ldr r0, [r0, #0x454]
	mul r2, r3, r5
	bl MI_CpuFill8
	cmp r5, #0
	mov r6, #0
	ble _02129E64
	ldr r7, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	mov r4, r6
_02129E34:
	ldr r0, [r7, #4]
	ldr r2, [r0, #0x654]
	ldr r1, [r0, #0x454]
	add r0, r0, #0x7c
	mla r1, r6, r2, r1
	add r0, r0, #0x400
	add r0, r0, r4
	bl ov11_0212C89C
	add r6, r6, #1
	cmp r6, r5
	add r4, r4, #0xc
	blt _02129E34
_02129E64:
	ldr r0, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	mov r2, #0x180
	add r0, r0, #0x2d4
	bl MI_CpuFill8
	ldr r0, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	mov r2, #0x180
	ldr r1, [r0, #4]
	add r0, r1, #0xdc
	add r0, r0, #0x400
	add r1, r1, #0x2d4
	bl ov11_0212C89C
	ldr r0, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	mov r3, #0
	mov r2, #0xee
_02129EA4:
	ldr r1, [r0, #4]
	add r1, r1, r3
	strb r2, [r1, #0x154]
	ldr r1, [r0, #4]
	add r1, r1, r3
	add r3, r3, #1
	strb r2, [r1, #0x214]
	cmp r3, #0xc0
	blt _02129EA4
	ldr r0, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	mov r2, #0x108
	add r0, r0, #0x4c
	bl MI_CpuFill8
	ldr r0, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	mov r2, #0x108
	ldr r1, [r0, #4]
	add r0, r1, #0x64
	add r0, r0, #0x400
	add r1, r1, #0x4c
	bl ov11_0212C89C
	ldr r0, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	mov r2, #0xff
	ldr r1, [r0, #4]
	mov r3, #1
	strb r2, [r1]
	ldr r1, [r0, #4]
	strb r2, [r1, #0x26]
	mov r2, #0xee
_02129F1C:
	ldr r1, [r0, #4]
	strb r2, [r1, r3]
	ldr r1, [r0, #4]
	add r1, r1, r3
	add r3, r3, #1
	strb r2, [r1, #0x26]
	cmp r3, #0x26
	blt _02129F1C
	ldr r0, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	ldr r2, [r0, #0x654]
	ldr r0, [r0, #0x45c]
	mov r2, r2, lsl #1
	bl MI_CpuFill8
	ldr r0, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	ldr r2, [r0, #0x654]
	ldr r1, [r0, #0x45c]
	add r0, r0, #0x470
	mov r2, r2, lsl #1
	bl ov11_0212C89C
	mov r5, #0
	ldr ip, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	mov r4, r5
	ldr r0, [ip, #4]
	mov r3, r5
	strb r5, [r0, #0x680]
	ldr r0, [ip, #4]
	mov r2, #1
	strb r5, [r0, #0x681]
	ldr r0, _0212A0B8 ; =0x0000FFFF
	mov r1, #0xee
_02129FA0:
	ldr r6, [ip, #4]
	add r6, r6, r5
	strb r3, [r6, #0x65b]
	ldr r6, [ip, #4]
	add r6, r6, r5
	strb r2, [r6, #0x663]
	ldr r6, [ip, #4]
	add r6, r6, r5
	strb r2, [r6, #0x66b]
	ldr r6, [ip, #4]
	add r6, r6, r5, lsl #1
	add r6, r6, #0x600
	strh r3, [r6, #0xc]
	ldr r6, [ip, #4]
	add r6, r6, r4
	strb r1, [r6, #0x592]
	ldr r6, [ip, #4]
	add r6, r6, r4
	add r6, r6, #0x500
	strh r0, [r6, #0x90]
	ldr r6, [ip, #4]
	add r6, r6, r4
	str r3, [r6, #0x58c]
	ldr r6, [ip, #4]
	add r6, r6, r4
	str r3, [r6, #0x588]
	ldr r6, [ip, #4]
	add r4, r4, #0xc
	add r6, r6, r5, lsl #2
	add r5, r5, #1
	str r3, [r6, #0x634]
	cmp r5, #8
	blt _02129FA0
	ldr r5, _0212A0B4 ; =OVERLAY11_BSS_02169C68
	ldr r4, _0212A0BC ; =DAT_overlay_11_0216649c
	ldr r7, [r5, #4]
	mov r6, #4
	str r3, [r7, #0x630]
	ldr r7, [r5, #4]
	str r2, [r7, #0x62c]
	ldr r7, [r5, #4]
	strb r1, [r7, #0x5f2]
	ldr r1, [r5, #4]
	add r1, r1, #0x500
	strh r0, [r1, #0xf0]
	ldr r0, [r5, #4]
	str r3, [r0, #0x5ec]
	ldr r0, [r5, #4]
	str r3, [r0, #0x5e8]
	ldr r0, [r5, #4]
	strb r2, [r0, #0x67e]
	ldr r0, [r5, #4]
	strb r2, [r0, #0x67f]
	strb r6, [r4, #1]
	strb r6, [r4]
	ldr r0, [r5, #4]
	add r0, r0, #0x148
	add r0, r0, #0x400
	bl ov11_0212C840
	mov r0, r5
	ldr r0, [r0, #4]
	add r0, r0, #0x168
	add r0, r0, #0x400
	bl ov11_0212C840
	mov r0, r5
	ldr r0, [r0, #4]
	mov r1, #0
	strb r1, [r0, #0x684]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0212A0B4: .word OVERLAY11_BSS_02169C68
_0212A0B8: .word 0x0000FFFF
_0212A0BC: .word DAT_overlay_11_0216649c

	arm_func_start ov11_0212A0C0
ov11_0212A0C0: ; 0x0212A0C0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0212A3DC ; =OVERLAY11_BSS_02169C68
	mov r2, #0
	ldr r1, [r0, #4]
	strb r2, [r1, #0x628]
	ldr r0, [r0, #4]
	strb r2, [r0, #0x629]
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212CE10
	ldr r1, _0212A3DC ; =OVERLAY11_BSS_02169C68
	add r5, r0, #1
	ldr r0, [r1, #4]
	mov r1, #0
	ldr r3, [r0, #0x654]
	ldr r0, [r0, #0x458]
	mul r2, r3, r5
	bl MI_CpuFill8
	cmp r5, #0
	mov r4, #0
	ble _0212A150
	ldr r7, _0212A3DC ; =OVERLAY11_BSS_02169C68
	mov r6, r4
	arm_func_end ov11_0212A0C0
_0212A120:
	ldr r0, [r7, #4]
	ldr r2, [r0, #0x654]
	ldr r1, [r0, #0x458]
	add r0, r0, #0xe8
	mla r1, r4, r2, r1
	add r0, r0, #0x400
	add r0, r0, r6
	bl ov11_0212C89C
	add r4, r4, #1
	cmp r4, r5
	add r6, r6, #0xc
	blt _0212A120
_0212A150:
	ldr r0, _0212A3DC ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	ldr r3, [r0, #0x654]
	ldr r0, [r0, #0x454]
	mul r2, r3, r5
	bl MI_CpuFill8
	cmp r5, #0
	mov r6, #0
	ble _0212A1B0
	ldr r7, _0212A3DC ; =OVERLAY11_BSS_02169C68
	mov r4, r6
_0212A180:
	ldr r0, [r7, #4]
	ldr r2, [r0, #0x654]
	ldr r1, [r0, #0x454]
	add r0, r0, #0x7c
	mla r1, r6, r2, r1
	add r0, r0, #0x400
	add r0, r0, r4
	bl ov11_0212C89C
	add r6, r6, #1
	cmp r6, r5
	add r4, r4, #0xc
	blt _0212A180
_0212A1B0:
	ldr r0, _0212A3DC ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	mov r2, #0x180
	add r0, r0, #0x2d4
	bl MI_CpuFill8
	ldr r0, _0212A3DC ; =OVERLAY11_BSS_02169C68
	mov r2, #0x180
	ldr r1, [r0, #4]
	add r0, r1, #0xdc
	add r0, r0, #0x400
	add r1, r1, #0x2d4
	bl ov11_0212C89C
	ldr r0, _0212A3DC ; =OVERLAY11_BSS_02169C68
	mov r3, #0
	mov r2, #0xee
_0212A1F0:
	ldr r1, [r0, #4]
	add r1, r1, r3
	strb r2, [r1, #0x154]
	ldr r1, [r0, #4]
	add r1, r1, r3
	add r3, r3, #1
	strb r2, [r1, #0x214]
	cmp r3, #0xc0
	blt _0212A1F0
	ldr r0, _0212A3DC ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	mov r2, #0x108
	add r0, r0, #0x4c
	bl MI_CpuFill8
	ldr r0, _0212A3DC ; =OVERLAY11_BSS_02169C68
	mov r2, #0x108
	ldr r1, [r0, #4]
	add r0, r1, #0x64
	add r0, r0, #0x400
	add r1, r1, #0x4c
	bl ov11_0212C89C
	ldr r0, _0212A3DC ; =OVERLAY11_BSS_02169C68
	mov r2, #0xff
	ldr r1, [r0, #4]
	mov r3, #1
	strb r2, [r1]
	ldr r1, [r0, #4]
	strb r2, [r1, #0x26]
	mov r2, #0xee
_0212A268:
	ldr r1, [r0, #4]
	strb r2, [r1, r3]
	ldr r1, [r0, #4]
	add r1, r1, r3
	add r3, r3, #1
	strb r2, [r1, #0x26]
	cmp r3, #0x26
	blt _0212A268
	ldr r0, _0212A3DC ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	ldr r2, [r0, #0x654]
	ldr r0, [r0, #0x45c]
	mov r2, r2, lsl #1
	bl MI_CpuFill8
	ldr r0, _0212A3DC ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	ldr r2, [r0, #0x654]
	ldr r1, [r0, #0x45c]
	add r0, r0, #0x470
	mov r2, r2, lsl #1
	bl ov11_0212C89C
	mov r5, #0
	ldr ip, _0212A3DC ; =OVERLAY11_BSS_02169C68
	mov r4, r5
	ldr r0, [ip, #4]
	mov r3, r5
	strb r5, [r0, #0x680]
	ldr r0, [ip, #4]
	mov r2, #1
	strb r5, [r0, #0x681]
	ldr r0, _0212A3E0 ; =0x0000FFFF
	mov r1, #0xee
_0212A2EC:
	ldr r6, [ip, #4]
	add r6, r6, r5
	strb r3, [r6, #0x65b]
	ldr r6, [ip, #4]
	add r6, r6, r5
	strb r2, [r6, #0x663]
	ldr r6, [ip, #4]
	add r6, r6, r5
	strb r2, [r6, #0x66b]
	ldr r6, [ip, #4]
	add r6, r6, r5, lsl #1
	add r6, r6, #0x600
	strh r3, [r6, #0xc]
	ldr r6, [ip, #4]
	add r5, r5, #1
	add r6, r6, r4
	strb r1, [r6, #0x592]
	ldr r6, [ip, #4]
	cmp r5, #8
	add r6, r6, r4
	add r6, r6, #0x500
	strh r0, [r6, #0x90]
	ldr r6, [ip, #4]
	add r6, r6, r4
	str r3, [r6, #0x58c]
	ldr r6, [ip, #4]
	add r6, r6, r4
	str r3, [r6, #0x588]
	add r4, r4, #0xc
	blt _0212A2EC
	ldr r4, _0212A3DC ; =OVERLAY11_BSS_02169C68
	ldr r5, [r4, #4]
	str r2, [r5, #0x62c]
	ldr r5, [r4, #4]
	strb r1, [r5, #0x5f2]
	ldr r1, [r4, #4]
	add r1, r1, #0x500
	strh r0, [r1, #0xf0]
	ldr r0, [r4, #4]
	str r3, [r0, #0x5ec]
	ldr r0, [r4, #4]
	str r3, [r0, #0x5e8]
	ldr r0, [r4, #4]
	strb r2, [r0, #0x67e]
	ldr r0, [r4, #4]
	strb r2, [r0, #0x67f]
	ldr r0, [r4, #4]
	add r0, r0, #0x148
	add r0, r0, #0x400
	bl ov11_0212C840
	mov r0, r4
	ldr r0, [r0, #4]
	add r0, r0, #0x168
	add r0, r0, #0x400
	bl ov11_0212C840
	mov r0, r4
	ldr r0, [r0, #4]
	mov r1, #0
	strb r1, [r0, #0x684]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0212A3DC: .word OVERLAY11_BSS_02169C68
_0212A3E0: .word 0x0000FFFF

	arm_func_start ov11_0212A3E4
ov11_0212A3E4: ; 0x0212A3E4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0212A4BC ; =OVERLAY11_BSS_02169C68
	mov r5, r0
	ldr r2, [r1, #4]
	mov r0, #0xc
	add r2, r2, r5
	mov ip, #0
	strb ip, [r2, #0x65b]
	ldr r2, [r1, #4]
	mov r3, #1
	add r2, r2, r5
	strb r3, [r2, #0x663]
	ldr r2, [r1, #4]
	mul r4, r5, r0
	add r0, r2, r5, lsl #2
	str ip, [r0, #0x634]
	ldr r0, [r1, #4]
	add r0, r0, r5
	strb r3, [r0, #0x66b]
	ldr r1, [r1, #4]
	add r0, r1, #0x7c
	add r0, r0, #0x400
	ldr r2, [r1, #0x654]
	ldr r1, [r1, #0x454]
	add r0, r0, r4
	mla r1, r5, r2, r1
	bl ov11_0212C89C
	ldr r0, _0212A4BC ; =OVERLAY11_BSS_02169C68
	ldr r1, [r0, #4]
	add r0, r1, #0xe8
	add r0, r0, #0x400
	ldr r2, [r1, #0x654]
	ldr r1, [r1, #0x458]
	add r0, r0, r4
	mla r1, r5, r2, r1
	bl ov11_0212C89C
	ldr r1, _0212A4BC ; =OVERLAY11_BSS_02169C68
	mov r2, #0xee
	ldr r0, [r1, #4]
	ldr r3, _0212A4C0 ; =0x0000FFFF
	add r0, r0, r4
	strb r2, [r0, #0x592]
	ldr r0, [r1, #4]
	mov r2, #0
	add r0, r0, r4
	add r0, r0, #0x500
	strh r3, [r0, #0x90]
	ldr r0, [r1, #4]
	add r0, r0, r4
	str r2, [r0, #0x58c]
	ldr r0, [r1, #4]
	add r0, r0, r4
	str r2, [r0, #0x588]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0212A4BC: .word OVERLAY11_BSS_02169C68
_0212A4C0: .word 0x0000FFFF
	arm_func_end ov11_0212A3E4

	arm_func_start ov11_0212A4C4
ov11_0212A4C4: ; 0x0212A4C4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, _0212A520 ; =OVERLAY11_BSS_02169C68
	mov r5, #1
	arm_func_end ov11_0212A4C4
_0212A4D0:
	mov r0, r5
	bl ov11_0212BEA0
	cmp r0, #0
	bne _0212A508
	ldr r0, [r4, #4]
	add r0, r0, r5
	ldrb r0, [r0, #0x663]
	cmp r0, #0
	bne _0212A508
	bl ov11_0212C1D0
	cmp r0, #0
	bne _0212A508
	mov r0, r5
	bl ov11_0212A3E4
_0212A508:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	cmp r5, #8
	blo _0212A4D0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0212A520: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212A524
ov11_0212A524: ; 0x0212A524
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, #1
	bl ov11_02128EE0
	cmp r0, #0x13
	bge _0212A55C
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl ov11_02129144
	mov r4, r0
	arm_func_end ov11_0212A524
_0212A55C:
	mov r0, r8
	mov r1, r6
	bl ov11_02129B60
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov11_0212A570
ov11_0212A570: ; 0x0212A570
	stmdb sp!, {r4, lr}
	mov r4, #0
	bl ov11_0212C154
	cmp r0, #0
	bne _0212A598
	ldr r0, _0212A5F0 ; =DAT_overlay_11_0216649c
	ldrb r0, [r0, #1]
	cmp r0, #4
	beq _0212A5A8
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212A570
_0212A598:
	ldr r0, _0212A5F0 ; =DAT_overlay_11_0216649c
	ldrb r0, [r0]
	cmp r0, #4
	ldmneia sp!, {r4, pc}
_0212A5A8:
	ldr r0, _0212A5F4 ; =OVERLAY11_BSS_02169C68
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x679]
	cmp r0, #2
	moveq r0, #0
	streqb r0, [r1, #0x679]
	ldr r0, _0212A5F4 ; =OVERLAY11_BSS_02169C68
	moveq r4, #1
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x679]
	cmp r0, #3
	moveq r4, #1
	streqb r4, [r1, #0x679]
	cmp r4, #0
	beq _0212A5E8
	bl ov11_0212A0C0
_0212A5E8:
	bl ov11_0212BFD4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212A5F0: .word DAT_overlay_11_0216649c
_0212A5F4: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212A5F8
ov11_0212A5F8: ; 0x0212A5F8
	ldr r1, _0212A62C ; =OVERLAY11_BSS_02169C68
	ldr r2, [r1, #4]
	ldrb r1, [r2, #0x679]
	cmp r1, #0
	cmpeq r0, #1
	moveq r0, #3
	streqb r0, [r2, #0x679]
	bxeq lr
	cmp r1, #1
	cmpeq r0, #0
	moveq r0, #2
	streqb r0, [r2, #0x679]
	bx lr
	.align 2, 0
_0212A62C: .word OVERLAY11_BSS_02169C68
	arm_func_end ov11_0212A5F8

	arm_func_start ov11_0212A630
ov11_0212A630: ; 0x0212A630
	ldr ip, _0212A63C ; =ov11_0212A5F8
	mov r0, #1
	bx ip
	.align 2, 0
_0212A63C: .word ov11_0212A5F8
	arm_func_end ov11_0212A630

	arm_func_start ov11_0212A640
ov11_0212A640: ; 0x0212A640
	ldr r0, _0212A664 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x679]
	cmp r0, #2
	moveq r0, #1
	bxeq lr
	cmp r0, #3
	moveq r0, #0
	bx lr
	.align 2, 0
_0212A664: .word OVERLAY11_BSS_02169C68
	arm_func_end ov11_0212A640

	arm_func_start ov11_0212A668
ov11_0212A668: ; 0x0212A668
	stmdb sp!, {r4, lr}
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	mov r4, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0212A69C
	bl ov11_02128EE0
	cmp r0, #0x13
	movge r4, #1
	bge _0212A69C
	bl ov11_021292B8
	cmp r0, #0
	movne r4, #1
	arm_func_end ov11_0212A668
_0212A69C:
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	bl ov11_02129944
	bl ov11_0212874C
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	strb r1, [r0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x45c]
	cmp r0, #0
	beq _0212A6DC
	bl _Z9Heap_FreePv
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x45c]
_0212A6DC:
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x460]
	cmp r0, #0
	beq _0212A704
	bl _Z9Heap_FreePv
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x460]
_0212A704:
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x458]
	cmp r0, #0
	beq _0212A72C
	bl _Z9Heap_FreePv
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x458]
_0212A72C:
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x454]
	cmp r0, #0
	beq _0212A754
	bl _Z9Heap_FreePv
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x454]
_0212A754:
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	add r0, r0, #0x168
	add r0, r0, #0x400
	bl ov11_0212C878
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	add r0, r0, #0x148
	add r0, r0, #0x400
	bl ov11_0212C878
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0212A790
	bl _Z9Heap_FreePv
_0212A790:
	ldr r0, _0212A7A0 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212A7A0: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212A7A4
ov11_0212A7A4: ; 0x0212A7A4
	stmdb sp!, {r3, lr}
	ldr r0, _0212A800 ; =OVERLAY11_BSS_02169C68
	ldr r1, [r0, #4]
	cmp r1, #0
	ldrneb r0, [r0]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov11_0212B2A0
	bl ov11_0212C154
	cmp r0, #0
	bne _0212A7E0
	mov r0, #0
	bl ov11_0212BEA0
	cmp r0, #0
	bne _0212A7EC
	arm_func_end ov11_0212A7A4
_0212A7E0:
	bl ov11_0212C1D0
	cmp r0, #0
	beq _0212A7F0
_0212A7EC:
	bl ov11_0212AB58
_0212A7F0:
	ldr r0, _0212A800 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	strb r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212A800: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212A804
ov11_0212A804: ; 0x0212A804
	stmdb sp!, {r3, lr}
	bl ov11_02129830
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov11_0212C154
	cmp r0, #0
	bne _0212A834
	bl ov11_0212978C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_0212A668
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212A804
_0212A834:
	bl ov11_0212A668
	ldmia sp!, {r3, pc}

	arm_func_start ov11_0212A83C
ov11_0212A83C: ; 0x0212A83C
	stmdb sp!, {r3, lr}
	bl ov11_021285AC
	bl ov11_02128C14
	ldr r0, _0212A940 ; =OVERLAY11_BSS_02169C68
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0212A928
	ldrb r1, [r1, #0x686]
	cmp r1, #0
	bne _0212A8FC
	mov r1, #0
	strb r1, [r0]
	bl ov11_0212A570
	bl ov11_0212A944
	ldr r0, _0212A940 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	add r0, r0, #0x600
	ldrh r1, [r0, #0x24]
	and r1, r1, #0x8000
	strh r1, [r0, #0x24]
	bl ov11_0212A640
	cmp r0, #0
	bne _0212A89C
	bl ov11_0212BD58
	arm_func_end ov11_0212A83C
_0212A89C:
	bl ov11_0212C154
	cmp r0, #0
	bne _0212A8B8
	mov r0, #0
	bl ov11_0212BEA0
	cmp r0, #0
	bne _0212A8C4
_0212A8B8:
	bl ov11_0212C1D0
	cmp r0, #0
	beq _0212A8C8
_0212A8C4:
	bl ov11_0212AD8C
_0212A8C8:
	bl ov11_0212C154
	cmp r0, #0
	beq _0212A8EC
	bl ov11_0212A640
	cmp r0, #1
	beq _0212A8EC
	bl ov11_0212C1D0
	cmp r0, #0
	beq _0212A8F0
_0212A8EC:
	bl ov11_0212BDC8
_0212A8F0:
	ldr r0, _0212A940 ; =OVERLAY11_BSS_02169C68
	mov r1, #1
	strb r1, [r0]
_0212A8FC:
	ldr r0, _0212A940 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x58]
	bl ov11_021296C8
	bl ov11_0212C154
	cmp r0, #0
	bne _0212A920
	bl ov11_0212A4C4
_0212A920:
	bl ov11_0212A804
	b _0212A930
_0212A928:
	mov r0, #0
	bl ov11_021296C8
_0212A930:
	bl ov11_02129A74
	bl ov11_0212A7A4
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212A940: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212A944
ov11_0212A944: ; 0x0212A944
	stmdb sp!, {r3, lr}
	ldr r0, _0212AA5C ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x67f]
	cmp r0, #0
	beq _0212A9C4
	bl ov11_02128EE0
	cmp r0, #0x13
	ldmgeia sp!, {r3, pc}
	bl ov11_02127B08
	cmp r0, #4
	bne _0212A984
	bl ov11_0212C154
	bl ov11_0212BEA0
	cmp r0, #0
	bne _0212A990
	arm_func_end ov11_0212A944
_0212A984:
	bl ov11_0212C1D0
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
_0212A990:
	ldr r0, _0212AA60 ; =DAT_overlay_11_0216649c
	mov r1, #0
	strb r1, [r0]
	bl ov11_0212B2A0
	ldr r0, _0212AA60 ; =DAT_overlay_11_0216649c
	ldrb r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _0212AA5C ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x67f]
	ldmia sp!, {r3, pc}
_0212A9C4:
	bl ov11_02128EE0
	cmp r0, #0x13
	ldmgeia sp!, {r3, pc}
	bl ov11_02127B08
	cmp r0, #4
	bne _0212A9EC
	bl ov11_0212C154
	bl ov11_0212BEA0
	cmp r0, #0
	bne _0212A9F8
_0212A9EC:
	bl ov11_0212C1D0
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
_0212A9F8:
	ldr r0, _0212AA60 ; =DAT_overlay_11_0216649c
	ldrb r0, [r0]
	cmp r0, #4
	ldmneia sp!, {r3, pc}
	ldr r0, _0212AA5C ; =OVERLAY11_BSS_02169C68
	ldr r2, [r0, #4]
	ldr r0, [r2, #0x630]
	cmp r0, #3
	ldmgtia sp!, {r3, pc}
	ldrb r1, [r2, #0x67b]
	mov r0, #0x26
	mla r0, r1, r0, r2
	bl ov11_0212B6AC
	ldr r1, _0212AA5C ; =OVERLAY11_BSS_02169C68
	mov r0, #0x26
	ldr r2, [r1, #4]
	ldrb r1, [r2, #0x67b]
	rsb r1, r1, #1
	mla r0, r1, r0, r2
	bl ov11_0212B6AC
	ldr r0, _0212AA60 ; =DAT_overlay_11_0216649c
	mov r1, #0
	strb r1, [r0]
	bl ov11_0212B2A0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212AA5C: .word OVERLAY11_BSS_02169C68
_0212AA60: .word DAT_overlay_11_0216649c

	arm_func_start ov11_0212AA64
ov11_0212AA64: ; 0x0212AA64
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	mov r7, #0
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212C1A8
	mov r5, r0
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212CE10
	add fp, r0, #1
	cmp fp, #0
	mov r6, r7
	ble _0212AB44
	mov r0, #0xc0
	mul sl, r4, r0
	ldr r4, _0212AB54 ; =OVERLAY11_BSS_02169C68
	mov r8, r6
	mov sb, r6
	arm_func_end ov11_0212AA64
_0212AAB8:
	ldr r0, [r4, #4]
	add r0, r0, #0x7c
	add r0, r0, #0x400
	add r0, r0, r8
	bl ov11_0212CA54
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212BEA0
	cmp r0, #0
	beq _0212AAF4
	ldr r0, [r4, #4]
	add r0, sl, r0
	add r1, sb, r0
	mov r0, #0xe
	strb r0, [r1, #0x154]
_0212AAF4:
	ldr r1, [r4, #4]
	mov r2, r5
	add r0, r1, #0x7c
	add r1, r1, #0x154
	add r0, r0, #0x400
	add r1, r1, sl
	add r0, r0, r8
	add r1, r1, sb
	bl ov11_0212C938
	ldr r0, [r4, #4]
	add r6, r6, #1
	add r0, sl, r0
	add r0, sb, r0
	ldrb r0, [r0, #0x154]
	add r8, r8, #0xc
	add sb, sb, r5
	cmp r0, #0xe
	addeq r7, r7, #1
	cmp r6, fp
	blt _0212AAB8
_0212AB44:
	cmp r7, fp
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212AB54: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212AB58
ov11_0212AB58: ; 0x0212AB58
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _0212AD80 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov11_02128EE0
	cmp r0, #0x13
	ldmgeia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212C1A8
	mov r6, r0
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212CE10
	ldr r1, _0212AD84 ; =DAT_overlay_11_0216649c
	add r7, r0, #1
	ldrb r0, [r1, #1]
	cmp r0, #2
	ldrneb r0, [r1, #1]
	cmpne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _0212AD84 ; =DAT_overlay_11_0216649c
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	bl ov11_0212A640
	cmp r0, #1
	bne _0212ABE4
	ldr r0, _0212AD80 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x67c]
	bl ov11_0212AA64
	arm_func_end ov11_0212AB58
_0212ABE4:
	bl ov11_02127B08
	cmp r0, #4
	bne _0212AC38
	bl ov11_0212C1D0
	cmp r0, #0
	bne _0212AC38
	ldr r0, _0212AD80 ; =OVERLAY11_BSS_02169C68
	mov r1, #0xc0
	ldr r0, [r0, #4]
	ldr r3, _0212AD88 ; =ov11_0212B280
	ldrb r4, [r0, #0x67c]
	add r0, r0, #0x154
	mov r2, #0xe
	mla r0, r4, r1, r0
	bl thunk_FUN_overlay_11__02127904
	cmp r0, #0
	bne _0212AC38
	ldr r0, _0212AD84 ; =DAT_overlay_11_0216649c
	ldrb r1, [r0, #1]
	sub r1, r1, #1
	strb r1, [r0, #1]
_0212AC38:
	ldr r0, _0212AD84 ; =DAT_overlay_11_0216649c
	ldrb r1, [r0, #1]
	cmp r1, #1
	ldrneb r0, [r0, #1]
	cmpne r0, #3
	bne _0212ACF4
	cmp r7, #0
	mov r4, #0
	ble _0212ACC0
	ldr r5, _0212AD80 ; =OVERLAY11_BSS_02169C68
_0212AC60:
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212BEA0
	cmp r0, #0
	beq _0212AC8C
	ldr r0, [r5, #4]
	add r1, r0, r4, lsl #2
	ldr r0, [r1, #0x634]
	add r0, r0, #1
	str r0, [r1, #0x634]
	b _0212ACB4
_0212AC8C:
	bl ov11_0212C1D0
	cmp r0, #0
	beq _0212ACB4
	cmp r4, #0
	bne _0212ACB4
	ldr r0, [r5, #4]
	add r1, r0, r4, lsl #2
	ldr r0, [r1, #0x634]
	add r0, r0, #1
	str r0, [r1, #0x634]
_0212ACB4:
	add r4, r4, #1
	cmp r4, r7
	blt _0212AC60
_0212ACC0:
	ldr r0, _0212AD80 ; =OVERLAY11_BSS_02169C68
	mov r2, #0xc0
	ldr r1, [r0, #4]
	mov r0, #0
	ldrb r3, [r1, #0x67c]
	add r1, r1, #0x154
	mla r1, r3, r2, r1
	bl ov11_0212AED4
	ldr r0, _0212AD80 ; =OVERLAY11_BSS_02169C68
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x67c]
	rsb r0, r0, #1
	strb r0, [r1, #0x67c]
_0212ACF4:
	cmp r7, #0
	mov sb, #0
	ble _0212AD54
	ldr r4, _0212AD80 ; =OVERLAY11_BSS_02169C68
	mov r8, sb
	mov r5, #0xff
	mov sl, #0xc0
_0212AD10:
	mov r0, sb, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212BEA0
	cmp r0, #0
	bne _0212AD44
	bl ov11_0212A640
	cmp r0, #1
	bne _0212AD44
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x67c]
	mla r0, r1, sl, r0
	add r0, r8, r0
	strb r5, [r0, #0x154]
_0212AD44:
	add sb, sb, #1
	cmp sb, r7
	add r8, r8, r6
	blt _0212AD10
_0212AD54:
	bl ov11_02127B08
	cmp r0, #4
	bne _0212AD6C
	bl ov11_0212C1D0
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0212AD6C:
	ldr r0, _0212AD84 ; =DAT_overlay_11_0216649c
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0212AD80: .word OVERLAY11_BSS_02169C68
_0212AD84: .word DAT_overlay_11_0216649c
_0212AD88: .word ov11_0212B280

	arm_func_start ov11_0212AD8C
ov11_0212AD8C: ; 0x0212AD8C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, _0212AECC ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x67f]
	cmp r0, #0
	beq _0212ADE4
	bl ov11_02127B08
	cmp r0, #4
	beq _0212ADBC
	bl ov11_0212C1D0
	cmp r0, #0
	beq _0212ADE4
	arm_func_end ov11_0212AD8C
_0212ADBC:
	bl ov11_0212AB58
	ldr r0, _0212AED0 ; =DAT_overlay_11_0216649c
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0212ADE4
	ldr r0, _0212AECC ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x67f]
	ldmia sp!, {r3, r4, r5, pc}
_0212ADE4:
	bl ov11_02127B08
	cmp r0, #4
	beq _0212ADFC
	bl ov11_0212C1D0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_0212ADFC:
	ldr r0, _0212AED0 ; =DAT_overlay_11_0216649c
	ldrb r0, [r0, #1]
	cmp r0, #4
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r5, _0212AECC ; =OVERLAY11_BSS_02169C68
	mov r4, #1
_0212AE14:
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212BEA0
	cmp r0, #0
	beq _0212AE40
	ldr r0, [r5, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x634]
	cmp r0, #3
	ble _0212AE64
	ldmia sp!, {r3, r4, r5, pc}
_0212AE40:
	cmp r4, #0
	bne _0212AE64
	bl ov11_0212C1D0
	cmp r0, #0
	beq _0212AE64
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x634]
	cmp r0, #3
	ldmgtia sp!, {r3, r4, r5, pc}
_0212AE64:
	add r4, r4, #1
	cmp r4, #8
	blt _0212AE14
	bl ov11_0212A640
	cmp r0, #0
	bne _0212AEB8
	ldr r1, _0212AECC ; =OVERLAY11_BSS_02169C68
	mov r0, #0xc0
	ldr r2, [r1, #4]
	ldrb r1, [r2, #0x67c]
	add r2, r2, #0x154
	mla r0, r1, r0, r2
	bl ov11_0212B7E4
	ldr r1, _0212AECC ; =OVERLAY11_BSS_02169C68
	mov r0, #0xc0
	ldr r2, [r1, #4]
	ldrb r1, [r2, #0x67c]
	add r2, r2, #0x154
	rsb r1, r1, #1
	mla r0, r1, r0, r2
	bl ov11_0212B7E4
_0212AEB8:
	ldr r0, _0212AED0 ; =DAT_overlay_11_0216649c
	mov r1, #0
	strb r1, [r0, #1]
	bl ov11_0212AB58
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0212AECC: .word OVERLAY11_BSS_02169C68
_0212AED0: .word DAT_overlay_11_0216649c

	arm_func_start ov11_0212AED4
ov11_0212AED4: ; 0x0212AED4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r0, _0212B0B4 ; =OVERLAY11_BSS_02169C68
	movs sl, r1
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x630]
	sub r0, r0, #1
	str r0, [r1, #0x630]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [sl]
	cmp r0, #0xb
	bne _0212AF14
	bl ov11_0212A640
	cmp r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add sl, sl, #1
	b _0212AF20
	arm_func_end ov11_0212AED4
_0212AF14:
	bl ov11_0212A640
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0212AF20:
	ldr r0, _0212B0B4 ; =OVERLAY11_BSS_02169C68
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x67e]
	cmp r0, #0
	beq _0212AF40
	ldrb r0, [sl]
	tst r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0212AF40:
	mov r0, #0
	strb r0, [r1, #0x67e]
	bl ov11_0212A640
	cmp r0, #1
	bne _0212B058
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212C1A8
	mov r7, r0
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212CE10
	add r5, r0, #1
	mov sb, #0
	cmp r5, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _0212B0B4 ; =OVERLAY11_BSS_02169C68
	mov r6, sb
	sub r8, r7, #1
	mov fp, #1
_0212AF98:
	ldrb r0, [sl]
	cmp r0, #0xff
	ldr r0, [r4, #4]
	bne _0212AFC0
	add r0, r0, #0x600
	ldrh r2, [r0, #0x58]
	mvn r1, fp, lsl sb
	and r1, r2, r1
	strh r1, [r0, #0x58]
	b _0212AFD4
_0212AFC0:
	add r1, r0, #0x600
	ldrh r2, [r1, #0x58]
	mov r0, #1
	orr r0, r2, r0, lsl sb
	strh r0, [r1, #0x58]
_0212AFD4:
	ldrb r1, [sl]
	cmp r1, #0xff
	addeq sl, sl, r7
	beq _0212B044
	cmp r1, #0xe
	addeq sl, sl, r7
	beq _0212B044
	ldr r2, [r4, #4]
	add r0, r2, sb
	ldrb r0, [r0, #0x663]
	cmp r0, #0
	beq _0212B010
	tst r1, #1
	addne sl, sl, r7
	bne _0212B044
_0212B010:
	add r0, r2, #0xe8
	add sl, sl, #1
	add r0, r0, #0x400
	ldr r3, _0212B0B8 ; =0x000005E6
	mov r1, sl
	add r0, r0, r6
	mov r2, r8
	bl ov11_0212C8B8
	ldr r0, [r4, #4]
	add sl, sl, r8
	add r1, r0, sb
	mov r0, #0
	strb r0, [r1, #0x663]
_0212B044:
	add sb, sb, #1
	cmp sb, r5
	add r6, r6, #0xc
	blt _0212AF98
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0212B058:
	ldr r2, _0212B0B4 ; =OVERLAY11_BSS_02169C68
	ldrb r1, [sl, #1]
	ldr r0, [r2, #4]
	ldr r3, _0212B0BC ; =0x000005FF
	add r0, r0, #0x600
	strh r1, [r0, #0x58]
	ldr r0, [r2, #4]
	add r1, sl, #4
	add r0, r0, #0x600
	ldrh r4, [r0, #0x58]
	mov r4, r4, lsl #8
	strh r4, [r0, #0x58]
	ldr r0, [r2, #4]
	ldrb r4, [sl, #2]
	add r0, r0, #0x600
	ldrh r5, [r0, #0x58]
	add r4, r5, r4
	strh r4, [r0, #0x58]
	ldr r0, [r2, #4]
	ldrb r2, [sl, #3]
	add r0, r0, #0x470
	bl ov11_0212C8B8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212B0B4: .word OVERLAY11_BSS_02169C68
_0212B0B8: .word 0x000005E6
_0212B0BC: .word 0x000005FF

	arm_func_start ov11_0212B0C0
ov11_0212B0C0: ; 0x0212B0C0
	stmdb sp!, {r3, lr}
	ldr r3, _0212B10C ; =OVERLAY11_BSS_02169C68
	ldr lr, [r3, #4]
	add ip, lr, r0
	ldrb ip, [ip, #0x66b]
	cmp ip, #0
	beq _0212B104
	add r1, lr, #0x234
	add ip, r1, #0x400
	ldr r1, [ip, r0, lsl #2]
	mov r2, #0
	sub r1, r1, #1
	str r1, [ip, r0, lsl #2]
	ldr r1, [r3, #4]
	add r0, r1, r0
	strb r2, [r0, #0x66b]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212B0C0
_0212B104:
	bl ov11_0212B110
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B10C: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212B110
ov11_0212B110: ; 0x0212B110
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _0212B254 ; =OVERLAY11_BSS_02169C68
	movs r5, r1
	ldr r1, [r2, #4]
	mov r6, r0
	add r0, r1, #0x234
	add r1, r0, #0x400
	ldr r0, [r1, r6, lsl #2]
	sub r0, r0, #1
	str r0, [r1, r6, lsl #2]
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r2, #4]
	add r0, r0, #0x63
	add r1, r0, #0x600
	ldrb r0, [r1, r6]
	cmp r0, #0
	beq _0212B160
	ldrb r0, [r5]
	tst r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_0212B110
_0212B160:
	mov r0, #0
	strb r0, [r1, r6]
	bl ov11_0212A640
	cmp r0, #1
	bne _0212B1EC
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212C1A8
	mov r4, r0
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212CE10
	ldrb r0, [r5]
	tst r0, #2
	bne _0212B1CC
	ldr r0, _0212B254 ; =OVERLAY11_BSS_02169C68
	mov r1, #0xc
	ldr r0, [r0, #4]
	ldr r3, _0212B258 ; =0x0000065E
	add r0, r0, #0x7c
	add r0, r0, #0x400
	mla r0, r6, r1, r0
	mov r1, r5
	mov r2, r4
	bl ov11_0212C8B8
_0212B1CC:
	ldr r0, _0212B254 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	add r0, r0, #0x5b
	add r1, r0, #0x600
	ldrb r0, [r1, r6]
	add r0, r0, #1
	strb r0, [r1, r6]
	ldmia sp!, {r4, r5, r6, pc}
_0212B1EC:
	mov r0, r5
	mov r1, r6
	bl ov11_0212B4B4
	ldrb r0, [r5]
	tst r0, #2
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0xc
	ldr r1, _0212B254 ; =OVERLAY11_BSS_02169C68
	mul r4, r6, r0
	ldr r0, [r1, #4]
	add r0, r0, #0xe8
	add r0, r0, #0x400
	add r0, r0, r4
	bl ov11_0212CA20
	cmp r0, #0xb
	ldmltia sp!, {r4, r5, r6, pc}
	ldr r0, _0212B254 ; =OVERLAY11_BSS_02169C68
	ldr r3, _0212B25C ; =0x0000066E
	ldr r0, [r0, #4]
	add r1, r5, #1
	add r0, r0, #0xe8
	add r0, r0, #0x400
	add r0, r0, r4
	mov r2, #0xb
	bl ov11_0212C8B8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212B254: .word OVERLAY11_BSS_02169C68
_0212B258: .word 0x0000065E
_0212B25C: .word 0x0000066E

	arm_func_start ov11_0212B260
ov11_0212B260: ; 0x0212B260
	cmp r0, #0
	bxeq lr
	ldr r0, _0212B27C ; =DAT_overlay_11_0216649c
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0212B27C: .word DAT_overlay_11_0216649c
	arm_func_end ov11_0212B260

	arm_func_start ov11_0212B280
ov11_0212B280: ; 0x0212B280
	cmp r0, #0
	bxeq lr
	ldr r0, _0212B29C ; =DAT_overlay_11_0216649c
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_0212B29C: .word DAT_overlay_11_0216649c
	arm_func_end ov11_0212B280

	arm_func_start ov11_0212B2A0
ov11_0212B2A0: ; 0x0212B2A0
	stmdb sp!, {r4, lr}
	ldr r0, _0212B4A4 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov11_02128EE0
	cmp r0, #0x13
	ldmgeia sp!, {r4, pc}
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212C1A8
	mov r4, r0
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212CE10
	bl ov11_0212C1D0
	cmp r0, #0
	beq _0212B36C
	ldr r0, _0212B4A8 ; =DAT_overlay_11_0216649c
	ldrb r1, [r0]
	cmp r1, #2
	ldrneb r0, [r0]
	cmpne r0, #0
	bne _0212B36C
	ldr r1, _0212B4A8 ; =DAT_overlay_11_0216649c
	mov r0, #1
	ldrb r2, [r1]
	add r2, r2, #1
	strb r2, [r1]
	bl ov11_0212B260
	mov r0, r4, lsl #0x10
	ldr r1, _0212B4A4 ; =OVERLAY11_BSS_02169C68
	mov r2, r0, lsr #0x10
	ldr r4, [r1, #4]
	mov r1, #0x26
	ldrb r3, [r4, #0x67b]
	mov r0, #0
	mla r1, r3, r1, r4
	bl ov11_0212B110
	ldr r0, _0212B4A4 ; =OVERLAY11_BSS_02169C68
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x67b]
	rsb r1, r1, #1
	strb r1, [r2, #0x67b]
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x630]
	add r0, r0, #1
	str r0, [r1, #0x630]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212B2A0
_0212B36C:
	bl ov11_02127B08
	cmp r0, #4
	ldmneia sp!, {r4, pc}
	bl ov11_0212C154
	bl ov11_0212BEA0
	cmp r0, #0
	bne _0212B390
	bl ov11_0212C154
	ldmia sp!, {r4, pc}
_0212B390:
	ldr r0, _0212B4A8 ; =DAT_overlay_11_0216649c
	ldrb r1, [r0]
	cmp r1, #2
	ldrneb r0, [r0]
	cmpne r0, #0
	ldmneia sp!, {r4, pc}
	bl ov11_0212C154
	cmp r0, #0
	beq _0212B430
	ldr r2, _0212B4A8 ; =DAT_overlay_11_0216649c
	ldr r0, _0212B4A4 ; =OVERLAY11_BSS_02169C68
	ldrb r3, [r2]
	mov r1, r4, lsl #0x10
	ldr r4, [r0, #4]
	add r0, r3, #1
	strb r0, [r2]
	ldrb r2, [r4, #0x67b]
	mov r0, #0x26
	ldr r3, _0212B4AC ; =ov11_0212B260
	mla r0, r2, r0, r4
	mov r1, r1, lsr #0x10
	mov r2, #0xe
	bl thunk_FUN_overlay_11__02127904
	cmp r0, #0
	bne _0212B408
	ldr r0, _0212B4A8 ; =DAT_overlay_11_0216649c
	ldrb r1, [r0]
	sub r1, r1, #1
	strb r1, [r0]
	ldmia sp!, {r4, pc}
_0212B408:
	ldr r0, _0212B4A4 ; =OVERLAY11_BSS_02169C68
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x67b]
	rsb r1, r1, #1
	strb r1, [r2, #0x67b]
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x630]
	add r0, r0, #1
	str r0, [r1, #0x630]
	ldmia sp!, {r4, pc}
_0212B430:
	bl ov11_02127AA4
	ldr r1, _0212B4B0 ; =0x0000FFFE
	tst r0, r1
	ldmeqia sp!, {r4, pc}
	ldr r1, _0212B4A8 ; =DAT_overlay_11_0216649c
	mov r0, #1
	ldrb r2, [r1]
	add r2, r2, #1
	strb r2, [r1]
	bl ov11_0212B260
	ldr r1, _0212B4A4 ; =OVERLAY11_BSS_02169C68
	mov r0, r4, lsl #0x10
	ldr r4, [r1, #4]
	mov r1, #0x26
	ldrb r3, [r4, #0x67b]
	mov r2, r0, lsr #0x10
	mov r0, #0
	mla r1, r3, r1, r4
	bl ov11_0212B110
	ldr r0, _0212B4A4 ; =OVERLAY11_BSS_02169C68
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x67b]
	rsb r1, r1, #1
	strb r1, [r2, #0x67b]
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x630]
	add r0, r0, #1
	str r0, [r1, #0x630]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212B4A4: .word OVERLAY11_BSS_02169C68
_0212B4A8: .word DAT_overlay_11_0216649c
_0212B4AC: .word ov11_0212B260
_0212B4B0: .word 0x0000FFFE

	arm_func_start ov11_0212B4B4
ov11_0212B4B4: ; 0x0212B4B4
	stmdb sp!, {r3, lr}
	ldr ip, _0212B598 ; =OVERLAY11_BSS_02169C68
	mov lr, #0
	ldr r3, [ip, #4]
	mov r2, r1, lsl #1
	add r3, r3, r1, lsl #1
	add r3, r3, #0x600
	strh lr, [r3, #0xc]
	ldrb lr, [r0]
	and r3, lr, #0x10
	cmp r3, #0x10
	bne _0212B590
	and r3, lr, #0xc
	ands r3, r3, #0xff
	bne _0212B50C
	ldr r3, [ip, #4]
	add r3, r3, #0x20c
	add ip, r3, #0x400
	ldrh r3, [ip, r2]
	orr r3, r3, #0x40
	strh r3, [ip, r2]
	b _0212B574
	arm_func_end ov11_0212B4B4
_0212B50C:
	cmp r3, #4
	bne _0212B530
	ldr r3, [ip, #4]
	add r3, r3, #0x20c
	add ip, r3, #0x400
	ldrh r3, [ip, r2]
	orr r3, r3, #0x80
	strh r3, [ip, r2]
	b _0212B574
_0212B530:
	cmp r3, #8
	bne _0212B554
	ldr r3, [ip, #4]
	add r3, r3, #0x20c
	add ip, r3, #0x400
	ldrh r3, [ip, r2]
	orr r3, r3, #0x20
	strh r3, [ip, r2]
	b _0212B574
_0212B554:
	cmp r3, #0xc
	bne _0212B574
	ldr r3, [ip, #4]
	add r3, r3, #0x20c
	add ip, r3, #0x400
	ldrh r3, [ip, r2]
	orr r3, r3, #0x10
	strh r3, [ip, r2]
_0212B574:
	ldrb r2, [r0]
	ldr r0, _0212B598 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	mov r2, r2, asr #5
	and r2, r2, #7
	add r0, r0, r1
	strb r2, [r0, #0x61c]
_0212B590:
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B598: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212B59C
ov11_0212B59C: ; 0x0212B59C
	stmdb sp!, {r4, lr}
	ldr r1, _0212B6A8 ; =OVERLAY11_BSS_02169C68
	mov r4, r0
	ldr r0, [r1, #4]
	ldrb r0, [r0, #0x626]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	bl ov11_0212BFAC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _0212B6A8 ; =OVERLAY11_BSS_02169C68
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x67d]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r1, #0x67d]
	ldr r1, _0212B6A8 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r1, #4]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x24]
	tst r0, #0x40
	beq _0212B618
	ldrb r0, [r4]
	mov r2, #8
	orr r0, r0, #0x10
	strb r0, [r4]
	ldr r0, [r1, #4]
	strb r2, [r0, #0x67d]
	b _0212B680
	arm_func_end ov11_0212B59C
_0212B618:
	tst r0, #0x80
	beq _0212B63C
	ldrb r0, [r4]
	mov r2, #8
	orr r0, r0, #0x14
	strb r0, [r4]
	ldr r0, [r1, #4]
	strb r2, [r0, #0x67d]
	b _0212B680
_0212B63C:
	tst r0, #0x20
	beq _0212B660
	ldrb r0, [r4]
	mov r2, #8
	orr r0, r0, #0x18
	strb r0, [r4]
	ldr r0, [r1, #4]
	strb r2, [r0, #0x67d]
	b _0212B680
_0212B660:
	tst r0, #0x10
	beq _0212B680
	ldrb r0, [r4]
	mov r2, #8
	orr r0, r0, #0x1c
	strb r0, [r4]
	ldr r0, [r1, #4]
	strb r2, [r0, #0x67d]
_0212B680:
	ldr r0, _0212B6A8 ; =OVERLAY11_BSS_02169C68
	ldrb r2, [r4]
	ldr r1, [r0, #4]
	mov r0, #0
	ldrb r1, [r1, #0x627]
	mov r1, r1, lsl #5
	and r1, r1, #0xff
	orr r1, r2, r1
	strb r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212B6A8: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212B6AC
ov11_0212B6AC: ; 0x0212B6AC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212C1A8
	mov r4, r0
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212CE10
	ldr r0, _0212B7E0 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x680]
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	strb r0, [r5]
	bl ov11_0212A640
	cmp r0, #0
	bne _0212B70C
	mov r0, r5
	bl ov11_0212B59C
	arm_func_end ov11_0212B6AC
_0212B70C:
	ldr r0, _0212B7E0 ; =OVERLAY11_BSS_02169C68
	mov r2, #0
	ldr r1, [r0, #4]
	strb r2, [r1, #0x680]
	ldr r0, [r0, #4]
	add r0, r0, #0x148
	add r0, r0, #0x400
	bl ov11_0212C33C
	cmp r0, #0
	beq _0212B754
	ldrb r0, [r5]
	orr r0, r0, #2
	strb r0, [r5]
	cmp r0, #2
	bne _0212B7D4
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0212B754:
	ldr r0, _0212B7E0 ; =OVERLAY11_BSS_02169C68
	sub r4, r4, #1
	ldr r0, [r0, #4]
	add r3, r5, #1
	add r0, r0, #0x148
	add r1, sp, #0
	add r0, r0, #0x400
	mov r2, #1
	str r4, [sp, #4]
	str r3, [sp]
	bl ov11_0212C724
	cmp r0, #0
	bne _0212B798
	ldr r0, _0212B7E0 ; =OVERLAY11_BSS_02169C68
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x680]
_0212B798:
	bl ov11_0212A640
	cmp r0, #1
	bne _0212B7D4
	ldr r0, _0212B7E0 ; =OVERLAY11_BSS_02169C68
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x65a]
	add r1, r1, #1
	strb r1, [r2, #0x65a]
	ldr r0, [r0, #4]
	ldrb r1, [r5]
	ldrb r0, [r0, #0x65a]
	mov r0, r0, lsl #4
	and r0, r0, #0xf0
	orr r0, r1, r0
	strb r0, [r5]
_0212B7D4:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0212B7E0: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212B7E4
ov11_0212B7E4: ; 0x0212B7E4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r1, #0xb
	ldr r0, _0212B89C ; =OVERLAY11_BSS_02169C68
	strb r1, [r4]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x681]
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	strb r0, [r4, #1]
	bl ov11_02127AA4
	mov r1, r0, asr #8
	strb r1, [r4, #2]
	ldr r1, _0212B89C ; =OVERLAY11_BSS_02169C68
	strb r0, [r4, #3]
	ldr r0, [r1, #4]
	add r3, r4, #5
	add r0, r0, #0x168
	mov ip, #0xbb
	add r1, sp, #0
	add r0, r0, #0x400
	mov r2, #0
	str ip, [sp, #4]
	str r3, [sp]
	bl ov11_0212C724
	cmp r0, #0
	beq _0212B87C
	ldr r0, _0212B89C ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x681]
	ldr r0, [sp, #4]
	add sp, sp, #8
	rsb r0, r0, #0xbb
	strb r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212B7E4
_0212B87C:
	ldr r0, _0212B89C ; =OVERLAY11_BSS_02169C68
	mov r2, #1
	ldr r1, [r0, #4]
	mov r0, #0xbb
	strb r2, [r1, #0x681]
	strb r0, [r4, #4]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212B89C: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212B8A0
ov11_0212B8A0: ; 0x0212B8A0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov11_0212C154
	bl ov11_0212BEA0
	cmp r0, #0
	bne _0212B8D8
	bl ov11_0212C1D0
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_0212B8A0
_0212B8D8:
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, _0212B934 ; =OVERLAY11_BSS_02169C68
	mov r1, r6
	ldr r0, [r0, #4]
	mov r2, r5
	add r0, r0, #0x148
	mov r3, r4
	add r0, r0, #0x400
	bl ov11_0212C5FC
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	bl ov11_02128EE0
	cmp r0, #0xa
	bne _0212B928
	bl ov11_0212C2E4
_0212B928:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212B934: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212B938
ov11_0212B938: ; 0x0212B938
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov11_0212C154
	bl ov11_0212BEA0
	cmp r0, #0
	bne _0212B970
	bl ov11_0212C1D0
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_0212B938
_0212B970:
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _0212B9C8 ; =OVERLAY11_BSS_02169C68
	mov r1, r6
	ldr r0, [r0, #4]
	mov r2, r5
	add r0, r0, #0x148
	mov r3, r4
	add r0, r0, #0x400
	bl ov11_0212C5FC
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	bl ov11_02128EE0
	cmp r0, #0xa
	bne _0212B9BC
	bl ov11_0212C2E4
_0212B9BC:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212B9C8: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212B9CC
ov11_0212B9CC: ; 0x0212B9CC
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov11_0212C154
	cmp r0, #0
	addne sp, sp, #8
	mov r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	bl ov11_0212BEA0
	cmp r0, #0
	bne _0212BA14
	bl ov11_0212C1D0
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_0212B9CC
_0212BA14:
	bl ov11_0212A640
	cmp r0, #1
	bne _0212BA38
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov11_0212B8A0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_0212BA38:
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, _0212BA94 ; =OVERLAY11_BSS_02169C68
	mov r1, r6
	ldr r0, [r0, #4]
	mov r2, r5
	add r0, r0, #0x168
	mov r3, r4
	add r0, r0, #0x400
	bl ov11_0212C5FC
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	bl ov11_02128EE0
	cmp r0, #0xa
	bne _0212BA88
	bl ov11_0212C2E4
_0212BA88:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212BA94: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212BA98
ov11_0212BA98: ; 0x0212BA98
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov11_0212C154
	cmp r0, #0
	beq _0212BAC8
	bl ov11_0212C2E4
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_0212BA98
_0212BAC8:
	mov r0, #0
	bl ov11_0212BEA0
	cmp r0, #0
	bne _0212BAEC
	bl ov11_0212C1D0
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_0212BAEC:
	bl ov11_0212A640
	cmp r0, #1
	bne _0212BB10
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov11_0212B938
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_0212BB10:
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _0212BB68 ; =OVERLAY11_BSS_02169C68
	mov r1, r6
	ldr r0, [r0, #4]
	mov r2, r5
	add r0, r0, #0x168
	mov r3, r4
	add r0, r0, #0x400
	bl ov11_0212C5FC
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	bl ov11_02128EE0
	cmp r0, #0xa
	bne _0212BB5C
	bl ov11_0212C2E4
_0212BB5C:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212BB68: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212BB6C
ov11_0212BB6C: ; 0x0212BB6C
	ldr ip, _0212BB78 ; =ov11_0212BA98
	mov r2, #0
	bx ip
	.align 2, 0
_0212BB78: .word ov11_0212BA98
	arm_func_end ov11_0212BB6C

	arm_func_start ov11_0212BB7C
ov11_0212BB7C: ; 0x0212BB7C
	stmdb sp!, {r4, lr}
	ldr r4, [sp, #8]
	bl ov11_0212CB10
	mov r1, #0xee
	ldr r0, _0212BBA8 ; =0x0000FFFF
	strb r1, [r4, #0xa]
	strh r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212BBA8: .word 0x0000FFFF
	arm_func_end ov11_0212BB7C

	arm_func_start ov11_0212BBAC
ov11_0212BBAC: ; 0x0212BBAC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r6, [sp, #0x28]
	mov sb, r0
	mov r8, r1
	mov r7, r2
	bl ov11_0212C9F4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr fp, _0212BD50 ; =0x0000FFFF
	arm_func_end ov11_0212BBAC
_0212BBD0:
	ldrb r5, [r6, #0xa]
	cmp r5, #0xee
	bne _0212BBF0
	mov r0, sb
	bl ov11_0212C964
	mov r5, r0
	cmp r5, #0xee
	beq _0212BD3C
_0212BBF0:
	ldrsh r4, [sb, #4]
	strb r5, [r6, #0xa]
	ldrh sl, [r6, #8]
	cmp sl, fp
	bne _0212BC60
	mov r0, r5
	bl ov11_0212CBA4
	ldr r1, _0212BD54 ; =OVERLAY11_BSS_02169C68
	mov sl, r0
	ldr r1, [r1, #4]
	ldrb r0, [r1, #0x685]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, fp
	bne _0212BC5C
	mov r0, sb
	bl ov11_0212C9F4
	cmp r0, #1
	strlth r4, [sb, #4]
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb
	bl ov11_0212C964
	mov sl, r0
	mov r0, sb
	bl ov11_0212C964
	ldrsh r4, [sb, #4]
	add sl, r0, sl, lsl #8
_0212BC5C:
	strh sl, [r6, #8]
_0212BC60:
	mov r0, r5
	bl ov11_0212CC34
	cmp r0, #0
	beq _0212BCF8
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0212BC90
	ldrh r2, [r6, #8]
	mov r0, r5
	mov r1, r8
	bl ov11_0212CC90
	str r0, [r6, #4]
_0212BC90:
	ldr r2, [r6]
	mov r0, sb
	mov r1, r7
	sub r2, sl, r2
	bl ov11_0212C938
	ldr r3, [r6, #4]
	mov r4, r0
	cmp r3, #0
	beq _0212BCC8
	ldr r1, [r6]
	mov r0, r7
	mov r2, r4
	add r1, r3, r1
	bl MI_CpuCopy8
_0212BCC8:
	ldr r0, [r6]
	add r0, r0, r4
	str r0, [r6]
	cmp r0, sl
	blt _0212BD3C
	str r6, [sp]
	ldr r3, [r6, #4]
	mov r0, r8
	mov r1, r5
	mov r2, sl
	bl ov11_0212BB7C
	b _0212BD3C
_0212BCF8:
	mov r0, sb
	bl ov11_0212C9F4
	cmp r0, sl
	blt _0212BD34
	mov r0, sb
	mov r1, r7
	mov r2, sl
	bl ov11_0212C938
	mov r0, r8
	mov r1, r5
	mov r2, sl
	mov r3, r7
	str r6, [sp]
	bl ov11_0212BB7C
	b _0212BD3C
_0212BD34:
	strh r4, [sb, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0212BD3C:
	mov r0, sb
	bl ov11_0212C9F4
	cmp r0, #0
	bne _0212BBD0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212BD50: .word 0x0000FFFF
_0212BD54: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212BD58
ov11_0212BD58: ; 0x0212BD58
	stmdb sp!, {r3, lr}
	ldr r0, _0212BDC4 ; =OVERLAY11_BSS_02169C68
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldrb r0, [r1, #0x687]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r1, #0x470
	bl ov11_0212CA54
	ldr r0, _0212BDC4 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	add r0, r0, #0x470
	bl ov11_0212C9F4
	cmp r0, #0
	ldmleia sp!, {r3, pc}
	ldr r0, _0212BDC4 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr ip, [r0, #4]
	mov r3, #1
	add r0, ip, #0x1e8
	add r0, r0, #0x400
	str r0, [sp]
	ldr r2, [ip, #0x460]
	add r0, ip, #0x470
	bl ov11_0212BBAC
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212BDC4: .word OVERLAY11_BSS_02169C68
	arm_func_end ov11_0212BD58

	arm_func_start ov11_0212BDC8
ov11_0212BDC8: ; 0x0212BDC8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r0, _0212BE9C ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [r0, #0x687]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl ov11_02128EE0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212CE10
	add r7, r0, #1
	cmp r7, #0
	mov r6, #0
	addle sp, sp, #4
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r4, _0212BE9C ; =OVERLAY11_BSS_02169C68
	mov r8, r6
	mov r5, r6
	arm_func_end ov11_0212BDC8
_0212BE24:
	ldr r0, [r4, #4]
	add r0, r0, #0xe8
	add r0, r0, #0x400
	add r0, r0, r8
	bl ov11_0212CA54
	ldr r0, [r4, #4]
	add r0, r0, #0xe8
	add r0, r0, #0x400
	add r0, r0, r8
	bl ov11_0212C9F4
	cmp r0, #0
	ble _0212BE84
	ldr r2, [r4, #4]
	mov r1, r6
	add r0, r2, #0x188
	add r0, r0, #0x400
	add r0, r0, r8
	str r0, [sp]
	add r0, r2, #0xe8
	add r0, r0, #0x400
	ldr r2, [r2, #0x460]
	mov r3, r5
	add r0, r0, r8
	bl ov11_0212BBAC
_0212BE84:
	add r6, r6, #1
	cmp r6, r7
	add r8, r8, #0xc
	blt _0212BE24
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0212BE9C: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212BEA0
ov11_0212BEA0: ; 0x0212BEA0
	stmdb sp!, {r4, lr}
	ldr r1, _0212BF44 ; =OVERLAY11_BSS_02169C68
	mov r4, r0
	ldr r0, [r1, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov11_02128EE0
	cmp r0, #0x13
	movge r0, #0
	ldmgeia sp!, {r4, pc}
	bl ov11_0212BF7C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov11_02127B08
	cmp r0, #4
	movne r0, #0
	ldmneia sp!, {r4, pc}
	bl ov11_0212C154
	cmp r4, r0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	bl ov11_0212C154
	cmp r0, #0
	bne _0212BF20
	bl ov11_02127AA4
	mov r1, #1
	tst r0, r1, lsl r4
	beq _0212BF3C
	mov r0, r1
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212BEA0
_0212BF20:
	ldr r1, _0212BF44 ; =OVERLAY11_BSS_02169C68
	mov r0, #1
	ldr r1, [r1, #4]
	add r1, r1, #0x600
	ldrh r1, [r1, #0x58]
	tst r1, r0, lsl r4
	ldmneia sp!, {r4, pc}
_0212BF3C:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212BF44: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212BF48
ov11_0212BF48: ; 0x0212BF48
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r4
	arm_func_end ov11_0212BF48
_0212BF54:
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212BEA0
	cmp r0, #0
	add r5, r5, #1
	addne r4, r4, #1
	cmp r5, #8
	blt _0212BF54
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_0212BF7C
ov11_0212BF7C: ; 0x0212BF7C
	stmdb sp!, {r3, lr}
	ldr r0, _0212BFA8 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0212BFA0
	bl ov11_02128EE0
	cmp r0, #0x13
	movge r0, #1
	ldmgeia sp!, {r3, pc}
	arm_func_end ov11_0212BF7C
_0212BFA0:
	bl ov11_02129770
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212BFA8: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212BFAC
ov11_0212BFAC: ; 0x0212BFAC
	ldr r0, _0212BFD0 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
	add r0, r0, #0x600
	ldrh r0, [r0, #0x24]
	and r0, r0, #0x8000
	bx lr
	.align 2, 0
_0212BFD0: .word OVERLAY11_BSS_02169C68
	arm_func_end ov11_0212BFAC

	arm_func_start ov11_0212BFD4
ov11_0212BFD4: ; 0x0212BFD4
	stmdb sp!, {r3, lr}
	ldr r0, _0212C098 ; =OVERLAY11_BSS_02169C68
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldrb r0, [r1, #0x677]
	cmp r0, #1
	beq _0212C000
	cmp r0, #3
	beq _0212C05C
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212BFD4
_0212C000:
	bl ov11_0212A640
	cmp r0, #1
	mov r0, #0xb
	bne _0212C028
	ldr r1, _0212C098 ; =OVERLAY11_BSS_02169C68
	ldr r1, [r1, #4]
	add r1, r1, #0x278
	add r1, r1, #0x400
	bl ov11_0212C198
	b _0212C040
_0212C028:
	ldr r1, _0212C098 ; =OVERLAY11_BSS_02169C68
	mov r2, #1
	ldr r1, [r1, #4]
	add r1, r1, #0x278
	add r1, r1, #0x400
	bl ov11_0212BA98
_0212C040:
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _0212C098 ; =OVERLAY11_BSS_02169C68
	mov r1, #2
	ldr r0, [r0, #4]
	strb r1, [r0, #0x677]
	ldmia sp!, {r3, pc}
_0212C05C:
	add r0, r1, #0x278
	add r1, r0, #0x400
	mov r0, #0xc
	bl ov11_0212C198
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _0212C098 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x678]
	bl ov11_0212A5F8
	ldr r0, _0212C098 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x677]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212C098: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212C09C
ov11_0212C09C: ; 0x0212C09C
	stmdb sp!, {r4, lr}
	mov r4, r2
	bl ov11_0212C154
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _0212C0D0 ; =OVERLAY11_BSS_02169C68
	mov r2, #1
	ldr r1, [r0, #4]
	strb r2, [r1, #0x677]
	ldrb r1, [r4]
	ldr r0, [r0, #4]
	strb r1, [r0, #0x678]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212C0D0: .word OVERLAY11_BSS_02169C68
	arm_func_end ov11_0212C09C

	arm_func_start ov11_0212C0D4
ov11_0212C0D4: ; 0x0212C0D4
	stmdb sp!, {r4, lr}
	mov r4, r2
	bl ov11_0212C154
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _0212C108 ; =OVERLAY11_BSS_02169C68
	ldrb r3, [r4]
	ldr r2, [r0, #4]
	mov r1, #3
	strb r3, [r2, #0x678]
	ldr r0, [r0, #4]
	strb r1, [r0, #0x677]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212C108: .word OVERLAY11_BSS_02169C68
	arm_func_end ov11_0212C0D4

	arm_func_start ov11_0212C10C
ov11_0212C10C: ; 0x0212C10C
	stmdb sp!, {r4, lr}
	mov r4, r2
	bl ov11_0212C154
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _0212C150 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x677]
	cmp r0, #2
	ldmneia sp!, {r4, pc}
	ldrb r0, [r4]
	bl ov11_0212A5F8
	ldr r0, _0212C150 ; =OVERLAY11_BSS_02169C68
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x677]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212C150: .word OVERLAY11_BSS_02169C68
	arm_func_end ov11_0212C10C

	arm_func_start ov11_0212C154
ov11_0212C154: ; 0x0212C154
	stmdb sp!, {r3, lr}
	ldr r0, _0212C194 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0212C18C
	bl ov11_02128EE0
	cmp r0, #0x13
	bge _0212C18C
	bl ov11_0212C1D0
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl ov11_02128330
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212C154
_0212C18C:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212C194: .word OVERLAY11_BSS_02169C68

	arm_func_start ov11_0212C198
ov11_0212C198: ; 0x0212C198
	ldr ip, _0212C1A4 ; =ov11_0212B938
	mov r2, #0
	bx ip
	.align 2, 0
_0212C1A4: .word ov11_0212B938
	arm_func_end ov11_0212C198

	arm_func_start ov11_0212C1A8
ov11_0212C1A8: ; 0x0212C1A8
	stmdb sp!, {r3, lr}
	bl ov11_0212CE10
	cmp r0, #5
	movhs r0, #0xc
	ldmhsia sp!, {r3, pc}
	bl ov11_0212A640
	cmp r0, #0
	moveq r0, #0xc
	movne r0, #0x26
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212C1A8

	arm_func_start ov11_0212C1D0
ov11_0212C1D0: ; 0x0212C1D0
	ldr r0, _0212C1E8 ; =OVERLAY11_BSS_02169C68
	ldr r0, [r0, #4]
	cmp r0, #0
	ldrneb r0, [r0, #0x682]
	moveq r0, #0
	bx lr
	.align 2, 0
_0212C1E8: .word OVERLAY11_BSS_02169C68
	arm_func_end ov11_0212C1D0

	arm_func_start ov11_0212C1EC
ov11_0212C1EC: ; 0x0212C1EC
	stmdb sp!, {r3, lr}
	bl ov11_02129830
	cmp r0, #0
	bne _0212C214
	bl ov11_0212C154
	cmp r0, #0
	bne _0212C214
	add r1, sp, #0
	mov r0, #2
	bl ov11_0212BB6C
	arm_func_end ov11_0212C1EC
_0212C214:
	bl ov11_02129858
	ldmia sp!, {r3, pc}

	arm_func_start ov11_0212C21C
ov11_0212C21C: ; 0x0212C21C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	add r0, sp, #0xc
	bl RTC_GetDate
	add r0, sp, #0
	bl RTC_GetTime
	mov r0, #0
	mov r2, r0, lsl #4
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	orr r2, r2, r1, lsr #28
	adds r3, r3, r1, lsl #4
	adc r1, r2, #0
	mov r1, r1, lsl #5
	ldr r2, [sp, #0x14]
	orr r1, r1, r3, lsr #27
	adds r2, r2, r3, lsl #5
	adc r1, r1, #0
	mov r1, r1, lsl #5
	ldr r3, [sp]
	orr r1, r1, r2, lsr #27
	adds r2, r3, r2, lsl #5
	adc r1, r1, #0
	mov r1, r1, lsl #6
	ldr r3, [sp, #4]
	orr r1, r1, r2, lsr #26
	adds r2, r3, r2, lsl #6
	ldr r0, [sp, #8]
	adc r1, r1, #0
	add r3, r0, #0x25
	mov r0, r1, lsl #6
	adds r1, r3, r2, lsl #6
	orr r0, r0, r2, lsr #26
	str r1, [r4]
	adc r1, r0, #0
	str r1, [r4, #4]
	ldr r0, _0212C2D8 ; =0x6C078965
	ldr r1, _0212C2DC ; =0x5D588B65
	str r0, [r4, #8]
	ldr r0, _0212C2E0 ; =0x00269EC3
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0212C2D8: .word 0x6C078965
_0212C2DC: .word 0x5D588B65
_0212C2E0: .word 0x00269EC3
	arm_func_end ov11_0212C21C

	arm_func_start ov11_0212C2E4
ov11_0212C2E4: ; 0x0212C2E4
	ldr r0, _0212C2F8 ; =OVERLAY11_BSS_02169C68
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x685]
	bx lr
	.align 2, 0
_0212C2F8: .word OVERLAY11_BSS_02169C68
	arm_func_end ov11_0212C2E4

	arm_func_start ov11_0212C2FC
ov11_0212C2FC: ; 0x0212C2FC
	mov r0, #0x20
	bx lr
	arm_func_end ov11_0212C2FC

	arm_func_start ov11_0212C304
ov11_0212C304: ; 0x0212C304
	ldr r3, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	cmp r3, #0
	mov r2, #0
	ble _0212C334
	arm_func_end ov11_0212C304
_0212C318:
	ldrb r1, [r0, #0xe]
	cmp r1, #0
	bxeq lr
	add r2, r2, #1
	cmp r2, r3
	add r0, r0, #0x10
	blt _0212C318
_0212C334:
	mov r0, #0
	bx lr

	arm_func_start ov11_0212C33C
ov11_0212C33C: ; 0x0212C33C
	ldr r3, [r0, #0x1c]
	ldr r1, [r0, #0x18]
	cmp r3, #0
	mov r2, #0
	ble _0212C370
	arm_func_end ov11_0212C33C
_0212C350:
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	movne r0, #0
	bxne lr
	add r2, r2, #1
	cmp r2, r3
	add r1, r1, #0x10
	blt _0212C350
_0212C370:
	mov r0, #1
	bx lr

	arm_func_start ov11_0212C378
ov11_0212C378: ; 0x0212C378
	ldr r1, [r0]
	cmp r1, #0
	beq _0212C3B0
	ldr r1, [r1, #8]
	cmp r1, #0
	moveq r1, #0
	streq r1, [r0]
	streq r1, [r0, #4]
	beq _0212C3A8
	str r1, [r0]
	mov r0, #0
	str r0, [r1, #4]
	arm_func_end ov11_0212C378
_0212C3A8:
	mov r0, #1
	bx lr
_0212C3B0:
	mov r0, #0
	bx lr

	arm_func_start ov11_0212C3B8
ov11_0212C3B8: ; 0x0212C3B8
	ldr r2, [r0]
	strb r1, [r2]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldr r1, [r0, #4]
	subs r1, r1, #1
	str r1, [r0, #4]
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end ov11_0212C3B8

	arm_func_start ov11_0212C3E4
ov11_0212C3E4: ; 0x0212C3E4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r0, [r5, #0xe]
	mov r4, r1
	bl ov11_0212CBA4
	mov r6, r0
	ldr r1, _0212C49C ; =0x0000FFFF
	ldr r0, [r4, #4]
	cmp r6, r1
	bne _0212C428
	cmp r0, #3
	bge _0212C444
	ldrb r1, [r5, #0xf]
	mov r0, #1
	bic r1, r1, #1
	strb r1, [r5, #0xf]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_0212C3E4
_0212C428:
	cmp r0, #1
	bge _0212C444
	ldrb r1, [r5, #0xf]
	mov r0, #1
	bic r1, r1, #1
	strb r1, [r5, #0xf]
	ldmia sp!, {r4, r5, r6, pc}
_0212C444:
	ldrb r1, [r5, #0xe]
	mov r0, r4
	bl ov11_0212C3B8
	ldr r0, _0212C49C ; =0x0000FFFF
	cmp r6, r0
	strneh r6, [r5, #0xc]
	bne _0212C484
	ldrh r1, [r5, #0xc]
	mov r0, r4
	mov r1, r1, asr #8
	and r1, r1, #0xff
	bl ov11_0212C3B8
	ldrh r1, [r5, #0xc]
	mov r0, r4
	and r1, r1, #0xff
	bl ov11_0212C3B8
_0212C484:
	ldrb r1, [r5, #0xf]
	mov r0, #0
	bic r1, r1, #1
	orr r1, r1, #1
	strb r1, [r5, #0xf]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212C49C: .word 0x0000FFFF

	arm_func_start ov11_0212C4A0
ov11_0212C4A0: ; 0x0212C4A0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrb r0, [r7, #0xe]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov11_0212CBA4
	ldr r1, _0212C5F8 ; =0x0000FFFF
	cmp r0, r1
	moveq r2, #3
	ldrh r0, [r7, #0xc]
	movne r2, #1
	ldr r1, [r6, #4]
	add r0, r0, r2
	cmp r1, r0
	bge _0212C4EC
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov11_0212C4A0
_0212C4EC:
	ldrb r0, [r7, #0xf]
	mov r0, r0, lsl #0x1f
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	beq _0212C518
	mov r0, r7
	mov r1, r6
	bl ov11_0212C3E4
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_0212C518:
	ldrb r0, [r7, #0xf]
	ldrh r3, [r7, #0xc]
	ldr r2, [r6, #4]
	mov r0, r0, lsl #0x1e
	cmp r2, r3
	bge _0212C5A4
	movs r0, r0, lsr #0x1f
	beq _0212C548
	ldr r1, [r6]
	mov r0, r5
	bl ov11_0212C938
	b _0212C574
_0212C548:
	cmp r2, #0
	mov r2, #0
	ble _0212C574
_0212C554:
	ldr r1, [r7]
	ldr r0, [r6]
	ldrb r1, [r1, r2]
	strb r1, [r0, r2]
	ldr r0, [r6, #4]
	add r2, r2, #1
	cmp r2, r0
	blt _0212C554
_0212C574:
	ldr r2, [r7]
	ldr r0, [r6, #4]
	mvn r1, #0
	add r0, r2, r0
	str r0, [r7]
	ldrh r3, [r7, #0xc]
	ldr r2, [r6, #4]
	mov r0, #1
	sub r2, r3, r2
	strh r2, [r7, #0xc]
	str r1, [r6, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0212C5A4:
	movs r0, r0, lsr #0x1f
	beq _0212C5C0
	ldr r1, [r6]
	mov r0, r5
	mov r2, r3
	bl ov11_0212C938
	b _0212C5D0
_0212C5C0:
	ldr r0, [r7]
	ldr r1, [r6]
	mov r2, r3
	bl MI_CpuCopy8
_0212C5D0:
	ldrh r1, [r7, #0xc]
	ldr r2, [r6]
	mov r0, #1
	add r1, r2, r1
	str r1, [r6]
	ldrh r1, [r7, #0xc]
	ldr r2, [r6, #4]
	sub r1, r2, r1
	str r1, [r6, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0212C5F8: .word 0x0000FFFF

	arm_func_start ov11_0212C5FC
ov11_0212C5FC: ; 0x0212C5FC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov sb, r3
	bl ov11_0212C304
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r7
	bl ov11_0212CBA4
	mov r5, r0
	ldr r1, _0212C6BC ; =0x0000FFFF
	ldr r0, [sp, #0x24]
	cmp r5, r1
	moveq r5, sb
	cmp r0, #0
	beq _0212C684
	ldr r0, [r8, #0x14]
	bl ov11_0212CA20
	add r1, r5, #3
	cmp r1, r0
	movge r0, #0
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r8, #0x14]
	mov r1, r6
	mov r2, r5
	mov r3, #0x108
	bl ov11_0212C8B8
	ldr r0, [r8, #0x14]
	bl ov11_0212CA54
	ldrb r0, [r4, #0xf]
	orr r0, r0, #2
	strb r0, [r4, #0xf]
	arm_func_end ov11_0212C5FC
_0212C684:
	strh r5, [r4, #0xc]
	strb r7, [r4, #0xe]
	str r6, [r4]
	ldr r0, [r8, #4]
	cmp r0, #0
	streq r4, [r8, #4]
	streq r4, [r8]
	beq _0212C6B4
	str r4, [r0, #8]
	ldr r0, [r8, #4]
	str r0, [r4, #4]
	str r4, [r8, #4]
_0212C6B4:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0212C6BC: .word 0x0000FFFF

	arm_func_start ov11_0212C6C0
ov11_0212C6C0: ; 0x0212C6C0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	movne r0, r1
	bxne lr
	ldr r1, [r0]
	cmp r1, #0
	movne r0, r1
	bxne lr
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0
	bx lr
	arm_func_end ov11_0212C6C0

	arm_func_start ov11_0212C6F0
ov11_0212C6F0: ; 0x0212C6F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	movne r0, #0
	strne r0, [r4, #0x10]
	ldmneia sp!, {r4, pc}
	bl ov11_0212C378
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	add r0, r4, #8
	bl ov11_0212C378
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212C6F0

	arm_func_start ov11_0212C724
ov11_0212C724: ; 0x0212C724
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	ldr r1, [sb, #4]
	mov sl, r0
	mov r8, r2
	cmp r1, #0
	mov r7, #1
	ble _0212C7BC
	mov r5, #0
	mov fp, #0x10
	mvn r4, #0
	arm_func_end ov11_0212C724
_0212C750:
	mov r0, sl
	bl ov11_0212C6C0
	movs r6, r0
	beq _0212C7BC
	mov r0, sl
	bl ov11_0212C6F0
	ldr r2, [sl, #0x14]
	mov r0, r6
	mov r3, r7
	mov r1, sb
	bl ov11_0212C4A0
	cmp r0, #0
	streq r6, [sl, #0x10]
	beq _0212C7BC
	ldr r0, [sb, #4]
	cmp r0, r4
	streq r6, [sl, #0x10]
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r6
	mov r1, r5
	mov r2, fp
	bl MI_CpuFill8
	ldr r0, [sb, #4]
	mov r7, r8
	cmp r0, #0
	bgt _0212C750
_0212C7BC:
	ldr r0, [sb, #4]
	mov r2, #0
	cmp r0, #0
	ble _0212C7F4
	mov r1, #0xee
_0212C7D0:
	ldr r0, [sb]
	add r2, r2, #1
	strb r1, [r0]
	ldr r0, [sb]
	add r0, r0, #1
	str r0, [sb]
	ldr r0, [sb, #4]
	cmp r2, r0
	blt _0212C7D0
_0212C7F4:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov11_0212C7FC
ov11_0212C7FC: ; 0x0212C7FC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, r2
	mov r1, #0
	mov r2, #0x20
	mov r7, r0
	bl MI_CpuFill8
	mov r4, r6, lsl #4
	mov r0, r4
	bl _Z10Heap_Allocm
	mov r2, r4
	mov r1, #0
	str r0, [r7, #0x18]
	bl MI_CpuFill8
	str r6, [r7, #0x1c]
	str r5, [r7, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov11_0212C7FC

	arm_func_start ov11_0212C840
ov11_0212C840: ; 0x0212C840
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	mov r2, r1, lsl #4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212C840

	arm_func_start ov11_0212C878
ov11_0212C878: ; 0x0212C878
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x18]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212C878

	arm_func_start ov11_0212C89C
ov11_0212C89C: ; 0x0212C89C
	str r1, [r0]
	strh r2, [r0, #0xa]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	bx lr
	arm_func_end ov11_0212C89C

	arm_func_start ov11_0212C8B8
ov11_0212C8B8: ; 0x0212C8B8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r2
	mov r8, r0
	mov r7, r1
	bl ov11_0212CA20
	cmp r0, r6
	bgt _0212C8DC
	bl ov11_0212C2E4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov11_0212C8B8
_0212C8DC:
	ldrsh r4, [r8, #8]
	ldrsh r0, [r8, #8]
	mov r5, #0
	add r0, r0, r6
	cmp r4, r0
	bge _0212C924
_0212C8F4:
	mov r0, r8
	mov r1, r4
	bl ov11_0212CA38
	ldrb r2, [r7, r5]
	ldr r1, [r8]
	add r4, r4, #1
	strb r2, [r1, r0]
	ldrsh r0, [r8, #8]
	add r5, r5, #1
	add r0, r0, r6
	cmp r4, r0
	blt _0212C8F4
_0212C924:
	mov r0, r8
	mov r1, r4
	bl ov11_0212CA38
	strh r0, [r8, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov11_0212C938
ov11_0212C938: ; 0x0212C938
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl ov11_0212C97C
	mov r4, r0
	ldrsh r1, [r5, #4]
	mov r0, r5
	add r1, r1, r4
	bl ov11_0212CA38
	strh r0, [r5, #4]
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_0212C938

	arm_func_start ov11_0212C964
ov11_0212C964: ; 0x0212C964
	stmdb sp!, {r3, lr}
	add r1, sp, #0
	mov r2, #1
	bl ov11_0212C938
	ldrb r0, [sp]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212C964

	arm_func_start ov11_0212C97C
ov11_0212C97C: ; 0x0212C97C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldrsh r4, [r8, #4]
	mov r6, r2
	mov r7, r1
	add r0, r4, r6
	cmp r4, r0
	mov r5, #0
	bge _0212C9EC
	arm_func_end ov11_0212C97C
_0212C9A0:
	mov r0, r8
	mov r1, r4
	bl ov11_0212CA38
	ldrsh r1, [r8, #6]
	cmp r1, r0
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r4
	bl ov11_0212CA38
	ldr r1, [r8]
	add r4, r4, #1
	ldrb r0, [r1, r0]
	strb r0, [r7, r5]
	ldrsh r0, [r8, #4]
	add r5, r5, #1
	add r0, r0, r6
	cmp r4, r0
	blt _0212C9A0
_0212C9EC:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov11_0212C9F4
ov11_0212C9F4: ; 0x0212C9F4
	ldrsh r2, [r0, #4]
	ldrsh r1, [r0, #6]
	cmp r2, r1
	ldrlesh r0, [r0, #6]
	suble r0, r0, r2
	bxle lr
	ldrsh r1, [r0, #0xa]
	ldrsh r0, [r0, #6]
	add r0, r1, r0
	sub r0, r0, r2
	bx lr
	arm_func_end ov11_0212C9F4

	arm_func_start ov11_0212CA20
ov11_0212CA20: ; 0x0212CA20
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_0212C9F4
	ldrsh r1, [r4, #0xa]
	sub r0, r1, r0
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212CA20

	arm_func_start ov11_0212CA38
ov11_0212CA38: ; 0x0212CA38
	stmdb sp!, {r3, lr}
	mov r2, r0
	mov r0, r1
	ldrsh r1, [r2, #0xa]
	bl _s32_div_f
	mov r0, r1
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212CA38

	arm_func_start ov11_0212CA54
ov11_0212CA54: ; 0x0212CA54
	ldrsh r1, [r0, #8]
	strh r1, [r0, #6]
	bx lr
	arm_func_end ov11_0212CA54

	arm_func_start ov11_0212CA60
ov11_0212CA60: ; 0x0212CA60
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, _0212CADC ; =OVERLAY11_BSS_02169C70
	mov r6, r0
	ldr r0, [r3]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	bne _0212CA90
	mov r0, #0x18
	bl _Z10Heap_Allocm
	ldr r1, _0212CADC ; =OVERLAY11_BSS_02169C70
	str r0, [r1]
	arm_func_end ov11_0212CA60
_0212CA90:
	ldr r0, _0212CADC ; =OVERLAY11_BSS_02169C70
	mov r3, #0
	ldr r1, [r0]
	mov r2, r3
	str r6, [r1]
	ldr r1, [r0]
	str r5, [r1, #4]
	ldr r1, [r0]
	str r4, [r1, #8]
_0212CAB4:
	ldr r1, [r0]
	add r1, r1, r3
	add r3, r3, #1
	strb r2, [r1, #0xc]
	cmp r3, #8
	blt _0212CAB4
	ldr r0, _0212CADC ; =OVERLAY11_BSS_02169C70
	ldr r0, [r0]
	strb r2, [r0, #0x14]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212CADC: .word OVERLAY11_BSS_02169C70

	arm_func_start ov11_0212CAE0
ov11_0212CAE0: ; 0x0212CAE0
	stmdb sp!, {r3, lr}
	ldr r0, _0212CB0C ; =OVERLAY11_BSS_02169C70
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	beq _0212CAFC
	bl _Z9Heap_FreePv
	arm_func_end ov11_0212CAE0
_0212CAFC:
	ldr r0, _0212CB0C ; =OVERLAY11_BSS_02169C70
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212CB0C: .word OVERLAY11_BSS_02169C70

	arm_func_start ov11_0212CB10
ov11_0212CB10: ; 0x0212CB10
	stmdb sp!, {r3, lr}
	cmp r1, #0x16
	bge _0212CB30
	mov ip, #0xc
	mul ip, r1, ip
	ldr r1, _0212CB9C ; =DAT_overlay_11_021629b4
	ldr lr, [r1, ip]
	b _0212CB64
	arm_func_end ov11_0212CB10
_0212CB30:
	ldr ip, _0212CBA0 ; =OVERLAY11_BSS_02169C70
	ldr lr, [ip]
	ldr ip, [lr, #4]
	add ip, ip, #0x16
	cmp r1, ip
	ble _0212CB50
	bl ov11_0212C2E4
	ldmia sp!, {r3, pc}
_0212CB50:
	sub ip, r1, #0x16
	mov r1, #0xc
	mul r1, ip, r1
	ldr ip, [lr]
	ldr lr, [ip, r1]
_0212CB64:
	cmp lr, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, _0212CBA0 ; =OVERLAY11_BSS_02169C70
	ldr ip, [r1]
	mov r1, r2
	cmp ip, #0
	mov r2, r3
	beq _0212CB90
	ldr r3, [ip, #8]
	blx lr
	ldmia sp!, {r3, pc}
_0212CB90:
	mov r3, #0
	blx lr
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212CB9C: .word DAT_overlay_11_021629b4
_0212CBA0: .word OVERLAY11_BSS_02169C70

	arm_func_start ov11_0212CBA4
ov11_0212CBA4: ; 0x0212CBA4
	stmdb sp!, {r3, lr}
	cmp r0, #0x16
	mov r3, #0
	bge _0212CBC8
	mov r1, #0xc
	mul r1, r0, r1
	ldr r0, _0212CC2C ; =PTR_LAB_overlay_11_0212ccf0_overlay_11_021629b8
	ldr r0, [r0, r1]
	b _0212CC14
	arm_func_end ov11_0212CBA4
_0212CBC8:
	ldr r1, _0212CC30 ; =OVERLAY11_BSS_02169C70
	ldr r2, [r1]
	cmp r2, #0
	bne _0212CBE4
	bl ov11_0212C2E4
	mov r0, #0
	ldmia sp!, {r3, pc}
_0212CBE4:
	ldr r1, [r2, #4]
	add r1, r1, #0x16
	cmp r0, r1
	ble _0212CC00
	bl ov11_0212C2E4
	mov r0, #0
	ldmia sp!, {r3, pc}
_0212CC00:
	ldr r2, [r2]
	sub r1, r0, #0x16
	mov r0, #0xc
	mla r0, r1, r0, r2
	ldr r0, [r0, #4]
_0212CC14:
	cmp r0, #0
	beq _0212CC24
	blx r0
	mov r3, r0
_0212CC24:
	mov r0, r3
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212CC2C: .word PTR_LAB_overlay_11_0212ccf0_overlay_11_021629b8
_0212CC30: .word OVERLAY11_BSS_02169C70

	arm_func_start ov11_0212CC34
ov11_0212CC34: ; 0x0212CC34
	cmp r0, #0x16
	bge _0212CC5C
	mov r1, #0xc
	mul r1, r0, r1
	ldr r0, _0212CC88 ; =DAT_overlay_11_021629bc
	ldr r0, [r0, r1]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov11_0212CC34
_0212CC5C:
	ldr r1, _0212CC8C ; =OVERLAY11_BSS_02169C70
	sub r2, r0, #0x16
	ldr r1, [r1]
	mov r0, #0xc
	ldr r1, [r1]
	mla r0, r2, r0, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_0212CC88: .word DAT_overlay_11_021629bc
_0212CC8C: .word OVERLAY11_BSS_02169C70

	arm_func_start ov11_0212CC90
ov11_0212CC90: ; 0x0212CC90
	stmdb sp!, {r3, lr}
	cmp r0, #0x16
	bge _0212CCBC
	mov r3, #0xc
	mul ip, r0, r3
	ldr r3, _0212CCE8 ; =DAT_overlay_11_021629bc
	mov r0, r1
	ldr r3, [r3, ip]
	mov r1, #0
	blx r3
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212CC90
_0212CCBC:
	ldr r3, _0212CCEC ; =OVERLAY11_BSS_02169C70
	sub ip, r0, #0x16
	ldr lr, [r3]
	mov r0, r1
	ldr r3, [lr]
	mov r1, #0xc
	mla r3, ip, r1, r3
	ldr r1, [lr, #8]
	ldr r3, [r3, #8]
	blx r3
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212CCE8: .word DAT_overlay_11_021629bc
_0212CCEC: .word OVERLAY11_BSS_02169C70

	arm_func_start ov11_0212CCF0
ov11_0212CCF0: ; 0x0212CCF0
	mov r0, #0
	bx lr
	arm_func_end ov11_0212CCF0

    arm_func_start ov11_0212CCF8
ov11_0212CCF8: ; 0x0212CCF8
	mov r0, #1
	bx lr
    arm_func_end ov11_0212CCF8

    arm_func_start ov11_0212CD00
ov11_0212CD00: ; 0x0212CD00
	mov r0, #2
	bx lr
    arm_func_end ov11_0212CD00

	arm_func_start ov11_0212CD08
ov11_0212CD08: ; 0x0212CD08
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl ov11_0212C154
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r5, _0212CD7C ; =OVERLAY11_BSS_02169C70
	mov r1, #1
	ldr r0, [r5]
	mov r4, #0
	add r0, r0, r6
	strb r1, [r0, #0xc]
	arm_func_end ov11_0212CD08
_0212CD34:
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov11_0212BEA0
	cmp r0, #0
	beq _0212CD5C
	ldr r0, [r5]
	add r0, r0, r4
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_0212CD5C:
	add r4, r4, #1
	cmp r4, #8
	blt _0212CD34
	mov r1, #0
	mov r2, r1
	mov r0, #0xe
	bl ov11_0212BA98
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212CD7C: .word OVERLAY11_BSS_02169C70

	arm_func_start ov11_0212CD80
ov11_0212CD80: ; 0x0212CD80
	stmdb sp!, {r3, lr}
	ldr r3, _0212CDC0 ; =OVERLAY11_BSS_02169C70
	mov lr, #0
	ldr r0, [r3]
	mov r1, r2
	str lr, [r0]
	ldr r0, [r3]
	mov ip, #1
	str lr, [r0, #4]
	ldr r2, [r3]
	mov r0, #0xf
	str lr, [r2, #8]
	ldr r2, [r3]
	strb ip, [r2, #0x14]
	bl ov11_0212C198
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212CDC0: .word OVERLAY11_BSS_02169C70
	arm_func_end ov11_0212CD80

	arm_func_start ov11_0212CDC4
ov11_0212CDC4: ; 0x0212CDC4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_0212C154
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _0212CDF0 ; =OVERLAY11_BSS_02169C70
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, r4
	strb r1, [r0, #0xc]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212CDF0: .word OVERLAY11_BSS_02169C70
	arm_func_end ov11_0212CDC4

	arm_func_start ov11_0212CDF4
ov11_0212CDF4: ; 0x0212CDF4
	ldr ip, _0212CE08 ; =ov11_0212CA60
	mov r2, r0
	ldr r0, _0212CE0C ; =PTR_LAB_overlay_11_02128634_overlay_11_02162ab0
	mov r1, #2
	bx ip
	.align 2, 0
_0212CE08: .word ov11_0212CA60
_0212CE0C: .word PTR_LAB_overlay_11_02128634_overlay_11_02162ab0
	arm_func_end ov11_0212CDF4

	arm_func_start ov11_0212CE10
ov11_0212CE10: ; 0x0212CE10
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	ldr lr, _0212CE54 ; =DAT_overlay_11_02162ac8
	add ip, sp, #0
	mov r3, #0xd
	arm_func_end ov11_0212CE10
_0212CE24:
	ldrb r2, [lr]
	ldrb r1, [lr, #1]
	add lr, lr, #2
	strb r2, [ip]
	strb r1, [ip, #1]
	add ip, ip, #2
	subs r3, r3, #1
	bne _0212CE24
	add r1, sp, #0
	ldrb r0, [r1, r0]
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	.align 2, 0
_0212CE54: .word DAT_overlay_11_02162ac8

	arm_func_start ov11_0212CE58
ov11_0212CE58: ; 0x0212CE58
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, [r2, #8]
	mov r4, r0
	str r3, [r4, #0x3bc]
	ldr r3, [r2, #0xc]
	add lr, r2, #2
	str r3, [r4, #0x3c0]
	ldr r3, [r2, #0x10]
	add ip, r2, #4
	str r3, [r4, #0x3c4]
	ldr r5, [r2, #0x14]
	add r3, r2, #6
	str r5, [r4, #0x3c8]
	ldr r5, [r2, #0x18]
	str r5, [r4, #0x3cc]
	ldr r5, [r2, #0x1c]
	str r5, [r4, #0x3d0]
	str r2, [r4, #0x3d8]
	str lr, [r4, #0x3dc]
	str ip, [r4, #0x3e0]
	str r3, [r4, #0x3e4]
	str r2, [r4, #0x3b4]
	str r1, [r4, #0x3e8]
	bl ov11_0212CFD4
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_0212CE58

	arm_func_start ov11_0212CEC0
ov11_0212CEC0: ; 0x0212CEC0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0212CEE0
	bl _ZdlPv
	mov r0, #0
	str r0, [r4]
	arm_func_end ov11_0212CEC0
_0212CEE0:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0212CEE8
ov11_0212CEE8: ; 0x0212CEE8
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	sub sp, sp, #0x400
	mov r5, r0
	mov r6, r1
	add r0, r5, #4
	mov r1, #0
	mov r2, #0x3a8
	bl MI_CpuFill8
	mov r0, #0xb8
	bl _Znwm
	movs r4, r0
	beq _0212CF48
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a8]
	mov r3, #0
	stmia sp, {r0, r3}
	mov r0, r4
	mov r1, r6
	mov r2, #1
	str r3, [sp, #8]
	bl sub_02002BC4
	mov r4, r0
	arm_func_end ov11_0212CEE8
_0212CF48:
	ldr r1, [r4, #0x4c]
	add r0, r5, #4
	mov r2, #0x3a8
	bl memcpy
	ldr ip, _0212CFD0 ; =DAT_overlay_11_02162afc
	add r3, sp, #0xc
	mov r2, #8
_0212CF64:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _0212CF64
	add r0, sp, #0x1c
	add r1, sp, #0xc
	mov r2, #0x10
	bl CRYPTO_RC4FastInit
	add r1, r5, #4
	add r0, sp, #0x1c
	mov r3, r1
	mov r2, #0x3a8
	bl CRYPTO_RC4FastEncrypt
	cmp r4, #0
	beq _0212CFC0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0212CFC0:
	add r0, r5, #4
	add sp, sp, #0x24
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0212CFD0: .word DAT_overlay_11_02162afc

	arm_func_start ov11_0212CFD4
ov11_0212CFD4: ; 0x0212CFD4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0212D014 ; =0x00001E24
	bl _Z10Heap_Allocm
	ldr r2, _0212D014 ; =0x00001E24
	str r0, [r4]
	mov r1, #0
	bl memset
	ldr r0, [r4]
	mov r1, #1
	add r0, r0, #0x1000
	str r1, [r0, #0xac0]
	ldr r0, [r4]
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212D014: .word 0x00001E24
	arm_func_end ov11_0212CFD4

	arm_func_start ov11_0212D018
ov11_0212D018: ; 0x0212D018
	ldr r2, [r0]
	mov r3, #4
	add r2, r2, #0x1000
	str r3, [r2, #0xac4]
	str r1, [r0, #0x3ac]
	bx lr
	arm_func_end ov11_0212D018

	arm_func_start ov11_0212D030
ov11_0212D030: ; 0x0212D030
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5]
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x3b4]
	bl ov11_0212247C
	cmp r0, #0
	bge _0212D068
	ldr r0, [r5]
	mov r1, #0x13
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	arm_func_end ov11_0212D030
_0212D068:
	bl ov11_0212A83C
	ldr r2, [r5]
	add r0, r2, #0x1000
	ldr r1, [r0, #0xac4]
	add r0, r2, #0x2c4
	cmp r1, #0x15
	add r2, r0, #0x1800
	addls pc, pc, r1, lsl #2
	b _0212D83C
_0212D08C: ; jump table
	b _0212D0E4 ; case 0
	b _0212D83C ; case 1
	b _0212D83C ; case 2
	b _0212D83C ; case 3
	b _0212D0F0 ; case 4
	b _0212D130 ; case 5
	b _0212D370 ; case 6
	b _0212D240 ; case 7
	b _0212D4EC ; case 8
	b _0212D510 ; case 9
	b _0212D4D8 ; case 10
	b _0212D59C ; case 11
	b _0212D600 ; case 12
	b _0212D660 ; case 13
	b _0212D710 ; case 14
	b _0212D728 ; case 15
	b _0212D75C ; case 16
	b _0212D790 ; case 17
	b _0212D7C4 ; case 18
	b _0212D7F8 ; case 19
	b _0212D828 ; case 20
	b _0212D83C ; case 21
_0212D0E4:
	mov r0, #1
	str r0, [r2]
	b _0212D83C
_0212D0F0:
	ldr r2, [r5, #0x3ac]
	mov r0, r5
	mov r1, r4
	bl ov11_0212D854
	ldr r0, [r5]
	mov r2, #5
	add r0, r0, #0x1000
	ldr r1, _0212D844 ; =0x00004650
	str r2, [r0, #0xac4]
	str r1, [r5, #0x3b0]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C44
	b _0212D83C
_0212D130:
	ldr r0, [r5, #0x3b4]
	mov r1, #1
	bl ov11_02124438
	mov r0, #0
	bl ov11_0212BEA0
	cmp r0, #0
	beq _0212D218
	add r0, r5, #4
	bl ov11_021298A0
	mov r0, r5
	mov r1, r4
	bl ov11_0212D880
	cmp r0, #0
	ble _0212D218
	mov r0, #1
	bl ov11_02128A30
	str r0, [r5, #0x3b8]
	ldr r0, [r5]
	mov r1, #7
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x3b4]
	mov r1, #0xd
	mov r2, #4
	mov r3, #5
	bl ov11_02122B7C
	ldr r0, [r5, #0x3b4]
	ldr r2, [r5, #0x3b8]
	mov r1, #0
	bl ov11_02122BF8
	ldr r1, [r5, #0x3b8]
	ldr r0, [r5, #0x3b4]
	ldr r2, [r1, #0x10]
	mov r1, #0
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl ov11_02122C08
	ldr r0, [r5, #0x3b4]
	mov r1, #0x10
	bl ov11_021217C0
	ldr r0, [r5, #0x3b4]
	mov r1, #0
	bl ov11_02124438
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C5C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd2
	bl sub_02034C44
	ldr r0, _0212D848 ; =0x00001C20
	str r0, [r5, #0x3b0]
	b _0212D83C
_0212D218:
	ldr r0, [r5, #0x3b0]
	sub r0, r0, #1
	str r0, [r5, #0x3b0]
	cmp r0, #0
	bgt _0212D83C
	ldr r0, [r5]
	mov r1, #0xf
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	b _0212D83C
_0212D240:
	ldr r1, [r5, #0x3b0]
	mov r0, #0
	sub r1, r1, #1
	str r1, [r5, #0x3b0]
	bl ov11_0212BEA0
	cmp r0, #0
	beq _0212D35C
	add r0, r5, #4
	bl ov11_021298A0
	mov r0, r5
	mov r1, r4
	bl ov11_0212D880
	cmp r0, #0
	ble _0212D35C
	ldr r0, [r5, #0x3b4]
	bl ov11_02121168
	cmp r0, #0
	bge _0212D2A8
	ldr r0, [r5, #0x3b0]
	cmp r0, #0
	bgt _0212D83C
	ldr r0, [r5]
	mov r1, #0x13
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	b _0212D83C
_0212D2A8:
	cmp r0, #0x12
	bne _0212D348
	mov r0, #1
	bl ov11_02128A30
	str r0, [r5, #0x3b8]
	ldr r0, [r5]
	mov r1, #7
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x3b4]
	mov r1, #0xe
	mov r2, #4
	mov r3, #5
	bl ov11_02122B7C
	ldr r0, [r5, #0x3b4]
	ldr r2, [r5, #0x3b8]
	mov r1, #0
	bl ov11_02122BF8
	ldr r1, [r5, #0x3b8]
	ldr r0, [r5, #0x3b4]
	ldr r2, [r1, #0x10]
	mov r1, #0
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl ov11_02122C08
	ldr r0, [r5, #0x3b4]
	mov r1, #8
	mov r2, #4
	mov r3, #1
	bl ov11_02122C18
	ldr r0, [r5, #0x3b4]
	mov r1, #0xb
	bl ov11_021217C0
	ldr r0, [r5]
	mov r1, #6
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	b _0212D83C
_0212D348:
	ldr r0, [r5]
	mov r1, #0x13
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	b _0212D83C
_0212D35C:
	ldr r0, [r5]
	mov r1, #0x10
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	b _0212D83C
_0212D370:
	mov r0, #0
	bl ov11_0212BEA0
	cmp r0, #0
	beq _0212D4C4
	add r0, r5, #4
	bl ov11_021298A0
	mov r0, r5
	mov r1, r4
	bl ov11_0212D880
	cmp r0, #0
	ble _0212D4C4
	ldr r0, [r5, #0x3b4]
	bl ov11_02121168
	cmp r0, #0
	blt _0212D83C
	cmp r0, #0xe
	bne _0212D4B0
	mov r0, #0xab
	bl ov11_02129A54
	add r0, r4, #0x1000
	mov r1, #1
	str r1, [r0, #0xabc]
	ldr r0, [r5]
	mov r1, #9
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x3b4]
	mov r1, #0x13
	mov r2, #4
	mov r3, #2
	bl ov11_02122B7C
	ldr r0, [r5, #0x3b4]
	mov r1, #0x14
	bl ov11_02122BD4
	mov r2, #4
	ldr r0, [r5, #0x3b4]
	mov r1, #9
	mov r3, r2
	bl ov11_02122C18
	ldr r0, [r5, #0x3b4]
	mov r1, #3
	bl ov11_0211FBE4
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C44
	ldr r0, [r5, #0x3ac]
	cmp r0, #0
	beq _0212D44C
	cmp r0, #1
	beq _0212D468
	b _0212D484
_0212D44C:
	ldr r0, _0212D84C ; =MAIN_BSS_020AF5F8
	mov r1, #1
	bl sub_02010FAC
	ldr r0, [r5, #0x3b4]
	mov r1, #2
	bl ov11_0211F008
	b _0212D49C
_0212D468:
	ldr r0, _0212D850 ; =MAIN_BSS_020AF60C
	mov r1, #2
	bl sub_02010FAC
	ldr r0, [r5, #0x3b4]
	mov r1, #1
	bl ov11_0211F008
	b _0212D49C
_0212D484:
	ldr r0, [r5]
	mov r1, #0x10
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_0212D49C:
	ldr r0, [r5, #0x3b4]
	mov r1, #0
	ldr r0, [r0, #0x728]
	bl sub_020292CC
	b _0212D83C
_0212D4B0:
	ldr r0, [r5]
	mov r1, #0x13
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	b _0212D83C
_0212D4C4:
	ldr r0, [r5]
	mov r1, #0x10
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	b _0212D83C
_0212D4D8:
	bl ov11_02128B80
	cmp r0, #0
	bne _0212D83C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0212D4EC:
	mov r0, #0xab
	bl ov11_02129AC0
	cmp r0, #1
	bne _0212D83C
	ldr r0, [r5]
	mov r1, #9
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	b _0212D83C
_0212D510:
	ldr r0, [r5, #0x3b4]
	ldr r0, [r0, #0x728]
	bl sub_02028E20
	tst r0, #0x80
	beq _0212D534
	ldr r0, [r5]
	mov r1, #0x12
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
_0212D534:
	mov r0, #0
	bl ov11_0212BEA0
	cmp r0, #0
	beq _0212D83C
	ldr r0, [r5, #0x3b4]
	bl ov11_0211F0FC
	cmp r0, #0
	bne _0212D83C
	add r2, r4, #0x2c8
	mov r0, r5
	add r1, r5, #4
	add r2, r2, #0x1800
	bl ov11_0212D8A0
	add r0, r4, #0x2c8
	add r0, r0, #0x1800
	mov r1, #0x358
	bl ov11_0212861C
	ldr r0, [r5]
	mov r1, #0xb
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	ldr r0, [r5, #0x3b4]
	bl ov11_0211F32C
	ldr r0, _0212D844 ; =0x00004650
	str r0, [r5, #0x3b0]
	b _0212D83C
_0212D59C:
	ldr r0, [r5, #0x3b4]
	bl ov11_0211F338
	mov r0, #0
	bl ov11_0212BEA0
	cmp r0, #0
	beq _0212D83C
	ldr r0, [r5, #0x3b4]
	ldr r0, [r0, #0x728]
	bl sub_02028E20
	cmp r0, #2
	bne _0212D5E4
	mov r0, #0x93
	bl ov11_02129A54
	ldr r0, [r5]
	mov r1, #0xc
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	b _0212D83C
_0212D5E4:
	tst r0, #0x80
	beq _0212D83C
	ldr r0, [r5]
	mov r1, #0x12
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	b _0212D83C
_0212D600:
	ldr r0, [r5, #0x3b4]
	bl ov11_0211F338
	mov r0, r5
	mov r1, r4
	bl ov11_0212D880
	cmp r0, #0
	bne _0212D630
	ldr r0, [r5]
	mov r1, #0x11
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	b _0212D83C
_0212D630:
	mov r0, #0x93
	bl ov11_02129AC0
	cmp r0, #1
	bne _0212D83C
	ldr r0, [r5]
	mov r1, #0xd
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	ldr r0, [r5, #0x3b4]
	ldr r0, [r0, #0x728]
	bl sub_02029378
	b _0212D83C
_0212D660:
	ldr r0, [r5, #0x3b4]
	bl ov11_0211F338
	ldr r0, [r5, #0x3b4]
	ldr r0, [r0, #0x728]
	bl sub_02028E20
	cmp r0, #0
	beq _0212D83C
	tst r0, #0x80
	beq _0212D698
	ldr r0, [r5]
	mov r1, #0x12
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	b _0212D83C
_0212D698:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x3b4]
	mov r1, #0x15
	mov r2, #4
	mov r3, #2
	bl ov11_02122B7C
	ldr r0, [r5, #0x3b4]
	mov r1, #0x17
	bl ov11_02122BD4
	ldr r0, [r5]
	mov r1, #0xe
	add r0, r0, #0x1000
	str r1, [r0, #0xac4]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C5C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd2
	bl sub_02034C44
	ldr r0, [r5, #0x3b4]
	mov r1, #0
	sub r2, r1, #1
	bl ov11_0211FB08
	bl ov11_0212868C
	b _0212D83C
_0212D710:
	ldr r0, [r5, #0x3b4]
	bl ov11_02122428
	cmp r0, #0
	beq _0212D83C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0212D728:
	mov r0, #0x14
	str r0, [r2]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x3b4]
	mov r1, #5
	mov r2, #4
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r5, #0x3b4]
	bl ov11_02124520
	bl ov11_0212868C
	b _0212D83C
_0212D75C:
	mov r0, #0x14
	str r0, [r2]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x3b4]
	mov r1, #7
	mov r2, #4
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r5, #0x3b4]
	bl ov11_02124520
	bl ov11_0212868C
	b _0212D83C
_0212D790:
	mov r0, #0x14
	str r0, [r2]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x3b4]
	mov r1, #0x16
	mov r2, #4
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r5, #0x3b4]
	bl ov11_02124520
	bl ov11_0212868C
	b _0212D83C
_0212D7C4:
	mov r0, #0x15
	str r0, [r2]
	mov r0, #1
	str r0, [sp]
	mov r1, #5
	ldr r0, [r5, #0x3b4]
	mov r2, r1
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r5, #0x3b4]
	bl ov11_02124520
	bl ov11_0212868C
	b _0212D83C
_0212D7F8:
	mov r0, #0x14
	str r0, [r2]
	mov r2, #1
	str r2, [sp]
	ldr r0, [r5, #0x3b4]
	mov r1, #0xf
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r5, #0x3b4]
	bl ov11_02124520
	bl ov11_0212868C
	b _0212D83C
_0212D828:
	ldr r0, [r5, #0x3b4]
	bl ov11_02122428
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
_0212D83C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0212D844: .word 0x00004650
_0212D848: .word 0x00001C20
_0212D84C: .word MAIN_BSS_020AF5F8
_0212D850: .word MAIN_BSS_020AF60C

	arm_func_start ov11_0212D854
ov11_0212D854: ; 0x0212D854
	stmdb sp!, {r4, lr}
	ldr r3, _0212D87C ; =ptr_null_overlay_11_021664a0
	mov r4, r1
	ldr r1, [r3, r2, lsl #2]
	bl ov11_0212CEE8
	add r0, r4, #4
	mov r1, #0xf
	bl ov11_021285E0
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212D87C: .word ptr_null_overlay_11_021664a0
	arm_func_end ov11_0212D854

	arm_func_start ov11_0212D880
ov11_0212D880: ; 0x0212D880
	stmdb sp!, {r4, lr}
	mov r0, #1
	mov r4, #0
	bl ov11_02128A30
	cmp r0, #0
	addne r4, r4, #1
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212D880

	arm_func_start ov11_0212D8A0
ov11_0212D8A0: ; 0x0212D8A0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r0, #0x200
	mov r5, r1
	mov r4, r2
	bl _Z10Heap_Allocm
	ldr r1, _0212D970 ; =0x0000A001
	mov r6, r0
	bl MATHi_CRC16InitTableRev
	mov r0, r6
	mov r1, r5
	mov r2, #0x50
	bl MATH_CalcCRC16
	mov r7, r0
	cmp r6, #0
	beq _0212D8E8
	mov r0, r6
	bl _Z9Heap_FreePv
	arm_func_end ov11_0212D8A0
_0212D8E8:
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrh r0, [sp, #2]
	ldr r3, _0212D974 ; =0x0000D679
	mov r6, #0
	strh r0, [sp, #6]
	strh r7, [sp, #2]
	add r1, sp, #0
_0212D908:
	mov r2, r6, lsl #1
	ldrh r0, [r1, r2]
	add r6, r6, #1
	cmp r6, #4
	eor r0, r3, r0
	strh r0, [r1, r2]
	ldrh r3, [r1, r2]
	blt _0212D908
	mov r0, #0x104
	bl _Z10Heap_Allocm
	add r1, sp, #0
	mov r6, r0
	mov r2, #8
	bl CRYPTO_RC4Init
	mov r0, r6
	mov r3, r4
	add r1, r5, #0x50
	mov r2, #0x358
	bl CRYPTO_RC4Encrypt
	cmp r6, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl _Z9Heap_FreePv
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0212D970: .word 0x0000A001
_0212D974: .word 0x0000D679

	arm_func_start ov11_0212D978
ov11_0212D978: ; 0x0212D978
	bx lr
	arm_func_end ov11_0212D978

	arm_func_start ov11_0212D97C
ov11_0212D97C: ; 0x0212D97C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov11_0212D978
	str r4, [r5, #0x194]
	bl ov11_02125FEC
	bl _Znam
	str r0, [r5, #0x5c]
	mov r0, #0x30
	bl _Znwm
	str r0, [r5, #0x60]
	mov r0, #0x30
	bl _Znwm
	str r0, [r5, #0x64]
	bl ov11_021301D4
	rsb r0, r0, r0, lsl #1
	bl _Znam
	str r0, [r5, #0x4c]
	mov r0, #0xf000
	bl _Znam
	str r0, [r5, #0x50]
	mov r1, #0
	strb r1, [r5, #0x150]
	mov r0, r5
	bl ov11_0212E9B4
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_0212D97C

	arm_func_start ov11_0212D9E8
ov11_0212D9E8: ; 0x0212D9E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _0212DA00
	bl _ZdaPv
	arm_func_end ov11_0212D9E8
_0212DA00:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0212DA10
	bl _ZdlPv
_0212DA10:
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _0212DA20
	bl _ZdlPv
_0212DA20:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0212DA30
	bl _ZdaPv
_0212DA30:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0212DA40
	bl _ZdaPv
_0212DA40:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0212DA48
ov11_0212DA48: ; 0x0212DA48
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x194]
	bl ov11_0212247C
	cmp r0, #0
	bge _0212DAD4
	mov r2, #1
	str r2, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #0xf
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r4, #0x194]
	bl ov11_02124520
	ldrb r0, [r4, #0x150]
	cmp r0, #2
	cmpne r0, #3
	cmpne r0, #4
	bne _0212DAAC
	bl ov11_0212FD74
	mov r0, r4
	mov r1, #0x14
	bl ov11_0212E9B4
	b _0212DAC8
	arm_func_end ov11_0212DA48
_0212DAAC:
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	beq _0212DABC
	bl ov11_021268F8
_0212DABC:
	mov r0, r4
	mov r1, #0x12
	bl ov11_0212E9B4
_0212DAC8:
	add sp, sp, #4
	ldrb r0, [r4, #0x150]
	ldmia sp!, {r3, r4, pc}
_0212DAD4:
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	beq _0212DAF4
	bl ov11_0212641C
	bl ov11_02126954
	cmp r0, #0
	movne r0, #0
	strneb r0, [r4, #0x6c]
_0212DAF4:
	ldrb r0, [r4, #0x150]
	cmp r0, #0x14
	addls pc, pc, r0, lsl #2
	b _0212DC78
_0212DB04: ; jump table
	b _0212DC78 ; case 0
	b _0212DC78 ; case 1
	b _0212DBE4 ; case 2
	b _0212DBF0 ; case 3
	b _0212DC10 ; case 4
	b _0212DC78 ; case 5
	b _0212DC78 ; case 6
	b _0212DC30 ; case 7
	b _0212DC78 ; case 8
	b _0212DC78 ; case 9
	b _0212DC78 ; case 10
	b _0212DC78 ; case 11
	b _0212DC78 ; case 12
	b _0212DC78 ; case 13
	b _0212DB58 ; case 14
	b _0212DC78 ; case 15
	b _0212DB74 ; case 16
	b _0212DB90 ; case 17
	b _0212DBAC ; case 18
	b _0212DC3C ; case 19
	b _0212DC50 ; case 20
_0212DB58:
	mov r0, r4
	bl ov11_0212DC84
	mov r1, #2
	ldr r0, [r4, #0x194]
	sub r2, r1, #3
	bl ov11_0211FB08
	b _0212DC78
_0212DB74:
	mov r0, r4
	bl ov11_0212E128
	mov r1, #2
	ldr r0, [r4, #0x194]
	sub r2, r1, #3
	bl ov11_0211FB08
	b _0212DC78
_0212DB90:
	mov r0, r4
	bl ov11_0212E518
	mov r1, #2
	ldr r0, [r4, #0x194]
	sub r2, r1, #3
	bl ov11_0211FB08
	b _0212DC78
_0212DBAC:
	mov r1, #2
	ldr r0, [r4, #0x194]
	sub r2, r1, #3
	bl ov11_0211FB08
	bl ov11_02126954
	cmp r0, #0
	beq _0212DC78
	ldr r0, [r4, #0x194]
	bl ov11_02122428
	cmp r0, #0
	beq _0212DC78
	add sp, sp, #4
	mov r0, #0xa
	ldmia sp!, {r3, r4, pc}
_0212DBE4:
	mov r0, r4
	bl ov11_0212EBCC
	b _0212DC78
_0212DBF0:
	bl ov11_021301BC
	mov r2, r0
	ldr r0, [r4, #0x194]
	mov r1, #2
	bl ov11_0211FB08
	mov r0, r4
	bl ov11_0212EE24
	b _0212DC78
_0212DC10:
	bl ov11_021301BC
	mov r2, r0
	ldr r0, [r4, #0x194]
	mov r1, #2
	bl ov11_0211FB08
	mov r0, r4
	bl ov11_0212EF94
	b _0212DC78
_0212DC30:
	mov r0, r4
	bl ov11_0212F158
	b _0212DC78
_0212DC3C:
	mov r1, #2
	ldr r0, [r4, #0x194]
	sub r2, r1, #3
	bl ov11_0211FB08
	b _0212DC78
_0212DC50:
	mov r1, #2
	ldr r0, [r4, #0x194]
	sub r2, r1, #3
	bl ov11_0211FB08
	ldr r0, [r4, #0x194]
	bl ov11_02122428
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0xa
	ldmneia sp!, {r3, r4, pc}
_0212DC78:
	ldrb r0, [r4, #0x150]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov11_0212DC84
ov11_0212DC84: ; 0x0212DC84
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r1, [r4, #0x152]
	cmp r1, #0xc
	addls pc, pc, r1, lsl #2
	b _0212E11C
_0212DCA0: ; jump table
	b _0212DCD4 ; case 0
	b _0212DD08 ; case 1
	b _0212E11C ; case 2
	b _0212E11C ; case 3
	b _0212DD34 ; case 4
	b _0212DD44 ; case 5
	b _0212DD60 ; case 6
	b _0212DDC4 ; case 7
	b _0212E0B0 ; case 8
	b _0212E11C ; case 9
	b _0212E0EC ; case 10
	b _0212E0FC ; case 11
	b _0212E118 ; case 12
	arm_func_end ov11_0212DC84
_0212DCD4:
	ldrb r0, [r4, #0x151]
	cmp r0, #0x10
	moveq r0, #1
	addeq sp, sp, #4
	streqb r0, [r4, #0x152]
	ldmeqia sp!, {r3, r4, pc}
	add r0, r4, #0x100
	mov r1, #0x1e
	strh r1, [r0, #0x44]
	mov r0, #4
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212DD08:
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	add r0, r4, #0x100
	mov r1, #0xa
	strh r1, [r0, #0x44]
	mov r0, #6
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212DD34:
	mov r0, #5
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212DD44:
	add r0, r4, #0x100
	mov r1, #0xa
	strh r1, [r0, #0x44]
	mov r0, #6
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212DD60:
	add r1, r4, #0x100
	ldrh r2, [r1, #0x44]
	sub r2, r2, #1
	strh r2, [r1, #0x44]
	ldrh r2, [r1, #0x44]
	cmp r2, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	mov r3, #7
	ldr r2, _0212E124 ; =0x00001C20
	strb r3, [r4, #0x152]
	strh r2, [r1, #0x44]
	mov r1, #1
	strb r1, [r4, #0x153]
	bl ov11_0212EA38
	bl ov11_02126480
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C44
	mov r0, #1
	add sp, sp, #4
	strb r0, [r4, #0x6c]
	ldmia sp!, {r3, r4, pc}
_0212DDC4:
	ldrb r0, [r4, #0x153]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0212E11C
_0212DDD4: ; jump table
	b _0212E11C ; case 0
	b _0212DDF4 ; case 1
	b _0212E11C ; case 2
	b _0212E11C ; case 3
	b _0212DE80 ; case 4
	b _0212DF28 ; case 5
	b _0212DFF4 ; case 6
	b _0212E04C ; case 7
_0212DDF4:
	ldr r0, [r4, #0x194]
	mov r1, #1
	bl ov11_02124438
	bl ov11_02126668
	cmp r0, #0
	beq _0212DE34
	mov r0, #2
	strb r0, [r4, #0x153]
	bl ov11_02126770
	ldr r1, _0212E124 ; =0x00001C20
	add r0, r4, #0x100
	strh r1, [r0, #0x44]
	mov r0, #4
	add sp, sp, #4
	strb r0, [r4, #0x153]
	ldmia sp!, {r3, r4, pc}
_0212DE34:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x44]
	sub r1, r1, #1
	strh r1, [r0, #0x44]
	ldrh r1, [r0, #0x44]
	cmp r1, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	mov r1, #6
	strb r1, [r4, #0x153]
	mov r1, #0x3c
	strh r1, [r0, #0x44]
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	bl ov11_021268F8
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212DE80:
	ldr r0, [r4, #0x194]
	mov r1, #1
	bl ov11_02124438
	add r0, r4, #0x100
	ldrh r1, [r0, #0x44]
	sub r1, r1, #1
	strh r1, [r0, #0x44]
	ldrh r0, [r0, #0x44]
	cmp r0, #0
	beq _0212DEB4
	bl ov11_02126890
	cmp r0, #0
	bne _0212DEF0
_0212DEB4:
	mov r0, #7
	strb r0, [r4, #0x153]
	add r0, r4, #0x100
	mov r1, #0x3c
	strh r1, [r0, #0x44]
	ldr r0, [r4, #0x194]
	mov r1, #0
	bl ov11_02124438
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	bl ov11_021268F8
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212DEF0:
	bl ov11_0212669C
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	add r0, r4, #0x100
	mov r1, #0x1e
	strh r1, [r0, #0x44]
	mov r0, #5
	strb r0, [r4, #0x153]
	ldr r0, [r4, #0x194]
	mov r1, #0
	bl ov11_02124438
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212DF28:
	bl ov11_021268E0
	cmp r0, #0
	beq _0212DFC4
	add r0, r4, #0x100
	ldrh r1, [r0, #0x44]
	cmp r1, #0
	subne r1, r1, #1
	strneh r1, [r0, #0x44]
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	bl ov11_0212669C
	cmp r0, #1
	addlt sp, sp, #4
	ldmltia sp!, {r3, r4, pc}
	mov r0, #0
	str r0, [r4, #0x68]
	bl ov11_02126710
	bl ov11_02126620
	mov r0, #8
	strb r0, [r4, #0x152]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl ov11_02122B7C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C5C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd2
	bl sub_02034C44
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212DFC4:
	mov r0, #7
	strb r0, [r4, #0x153]
	add r0, r4, #0x100
	mov r1, #0x3c
	strh r1, [r0, #0x44]
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	bl ov11_021268F8
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212DFF4:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x44]
	cmp r1, #0
	subne r1, r1, #1
	strneh r1, [r0, #0x44]
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r4, #0x194]
	bl ov11_0211F96C
	mov r0, #0xb
	strb r0, [r4, #0x152]
	ldr r0, [r4, #0x194]
	bl ov11_02124520
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212E04C:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x44]
	cmp r1, #0
	subne r1, r1, #1
	strneh r1, [r0, #0x44]
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r4, #0x194]
	bl ov11_0211F96C
	ldr r0, [r4, #0x194]
	mov r1, #0
	bl ov11_02124438
	ldr r0, [r4, #0x194]
	bl ov11_02124520
	mov r0, #0xb
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212E0B0:
	ldr r0, [r4, #0x194]
	bl ov11_02122428
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	ldr r1, [r4, #0x60]
	mov r0, #0
	mov r2, #4
	bl MIi_CpuClear16
	ldr r0, [r4, #0x60]
	bl ov11_021267C4
	mov r0, #0xa
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212E0EC:
	mov r1, #0x10
	bl ov11_0212E9B4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212E0FC:
	ldr r0, [r4, #0x194]
	bl ov11_02122428
	cmp r0, #0
	movne r0, #0xc
	add sp, sp, #4
	strneb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212E118:
	bl ov11_0212E9D8
_0212E11C:
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0212E124: .word 0x00001C20

	arm_func_start ov11_0212E128
ov11_0212E128: ; 0x0212E128
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldrb r1, [r4, #0x152]
	cmp r1, #0x19
	addls pc, pc, r1, lsl #2
	b _0212E510
_0212E144: ; jump table
	b _0212E1AC ; case 0
	b _0212E1F4 ; case 1
	b _0212E510 ; case 2
	b _0212E510 ; case 3
	b _0212E21C ; case 4
	b _0212E23C ; case 5
	b _0212E510 ; case 6
	b _0212E510 ; case 7
	b _0212E34C ; case 8
	b _0212E404 ; case 9
	b _0212E4DC ; case 10
	b _0212E4EC ; case 11
	b _0212E50C ; case 12
	b _0212E510 ; case 13
	b _0212E510 ; case 14
	b _0212E510 ; case 15
	b _0212E510 ; case 16
	b _0212E510 ; case 17
	b _0212E510 ; case 18
	b _0212E510 ; case 19
	b _0212E2D4 ; case 20
	b _0212E320 ; case 21
	b _0212E510 ; case 22
	b _0212E33C ; case 23
	b _0212E510 ; case 24
	b _0212E50C ; case 25
	arm_func_end ov11_0212E128
_0212E1AC:
	bl ov11_021268E0
	cmp r0, #0
	beq _0212E1E4
	bl ov11_02126850
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, pc}
	add r0, r4, #0x100
	mov r1, #0x1e
	strh r1, [r0, #0x44]
	mov r0, #1
	add sp, sp, #0xc
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212E1E4:
	mov r0, #0x14
	add sp, sp, #0xc
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212E1F4:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x44]
	add sp, sp, #0xc
	sub r1, r1, #1
	strh r1, [r0, #0x44]
	ldrh r0, [r0, #0x44]
	cmp r0, #0
	moveq r0, #4
	streqb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212E21C:
	bl ov11_021268E0
	cmp r0, #0
	moveq r0, #0x14
	streqb r0, [r4, #0x152]
	movne r0, #5
	add sp, sp, #0xc
	strneb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212E23C:
	mov r1, #8
	mov r0, #0
	strb r1, [r4, #0x152]
	bl ov11_02126710
	add r1, sp, #8
	add r2, sp, #4
	bl ov11_02126FE4
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #0xd
	mov r2, #3
	mov r3, #4
	bl ov11_02122B7C
	ldr r1, [r4, #0x60]
	mov r0, r4
	add r1, r1, #0x18
	bl ov11_0212EBA4
	mov r2, r0
	ldr r0, [r4, #0x194]
	mov r1, #0
	bl ov11_02122C08
	ldr r0, [r4, #0x194]
	ldr r2, [sp, #8]
	mov r1, #1
	bl ov11_02122C08
	ldr r0, [r4, #0x194]
	ldr r2, [sp, #4]
	mov r1, #2
	bl ov11_02122C08
	ldr r0, [r4, #0x194]
	mov r1, #0x10
	bl ov11_021217C0
	add r0, r4, #0x100
	mov r1, #0xe10
	strh r1, [r0, #0x44]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_0212E2D4:
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	beq _0212E2E4
	bl ov11_021268F8
_0212E2E4:
	mov r0, #0x15
	strb r0, [r4, #0x152]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r4, #0x194]
	bl ov11_0211F96C
	ldr r0, [r4, #0x194]
	bl ov11_02124520
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_0212E320:
	ldr r0, [r4, #0x194]
	bl ov11_02122428
	cmp r0, #0
	movne r0, #0x17
	add sp, sp, #0xc
	strneb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212E33C:
	mov r0, #0x19
	add sp, sp, #0xc
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212E34C:
	bl ov11_021268E0
	cmp r0, #0
	moveq r0, #0x14
	addeq sp, sp, #0xc
	streqb r0, [r4, #0x152]
	ldmeqia sp!, {r3, r4, pc}
	add r0, r4, #0x100
	ldrh r1, [r0, #0x44]
	sub r1, r1, #1
	strh r1, [r0, #0x44]
	ldrh r0, [r0, #0x44]
	cmp r0, #0
	moveq r0, #0x14
	addeq sp, sp, #0xc
	streqb r0, [r4, #0x152]
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [r4, #0x194]
	bl ov11_02121168
	cmp r0, #0
	addlt sp, sp, #0xc
	ldmltia sp!, {r3, r4, pc}
	cmp r0, #0x12
	addne sp, sp, #0xc
	ldmneia sp!, {r3, r4, pc}
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #0xe
	mov r2, #3
	mov r3, #4
	bl ov11_02122B7C
	ldr r0, [r4, #0x194]
	mov r1, #8
	mov r2, #3
	mov r3, #1
	bl ov11_02122C18
	ldr r0, [r4, #0x194]
	mov r1, #0xb
	bl ov11_021217C0
	mov r0, #9
	strb r0, [r4, #0x152]
	add r0, r4, #0x100
	mov r1, #0xe10
	strh r1, [r0, #0x44]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_0212E404:
	bl ov11_021268E0
	cmp r0, #0
	moveq r0, #0x14
	addeq sp, sp, #0xc
	streqb r0, [r4, #0x152]
	ldmeqia sp!, {r3, r4, pc}
	add r0, r4, #0x100
	ldrh r1, [r0, #0x44]
	sub r1, r1, #1
	strh r1, [r0, #0x44]
	ldrh r0, [r0, #0x44]
	cmp r0, #0
	moveq r0, #0x14
	addeq sp, sp, #0xc
	streqb r0, [r4, #0x152]
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [r4, #0x194]
	bl ov11_02121168
	cmp r0, #0
	addlt sp, sp, #0xc
	ldmltia sp!, {r3, r4, pc}
	cmp r0, #0xe
	bne _0212E4CC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #0x14
	mov r2, #3
	mov r3, #2
	bl ov11_02122B7C
	ldr r0, [r4, #0x194]
	mov r1, #0x15
	bl ov11_02122BD4
	mov r2, #3
	ldr r0, [r4, #0x194]
	mov r3, r2
	mov r1, #9
	bl ov11_02122C18
	mov r0, #0xa
	strb r0, [r4, #0x152]
	ldr r0, [r4, #0x194]
	mov r1, #3
	bl ov11_0211FBE4
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C44
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_0212E4CC:
	mov r0, r4
	bl ov11_0212E9E8
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_0212E4DC:
	mov r1, #0x11
	bl ov11_0212E9B4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_0212E4EC:
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	beq _0212E4FC
	bl ov11_021268F8
_0212E4FC:
	mov r0, #0xc
	add sp, sp, #0xc
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212E50C:
	bl ov11_0212E9D8
_0212E510:
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov11_0212E518
ov11_0212E518: ; 0x0212E518
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r1, [r4, #0x152]
	cmp r1, #0x19
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, r4, r5, pc}
_0212E530: ; jump table
	b _0212E598 ; case 0
	b _0212E5BC ; case 1
	ldmia sp!, {r3, r4, r5, pc} ; case 2
	ldmia sp!, {r3, r4, r5, pc} ; case 3
	b _0212E6AC ; case 4
	ldmia sp!, {r3, r4, r5, pc} ; case 5
	ldmia sp!, {r3, r4, r5, pc} ; case 6
	ldmia sp!, {r3, r4, r5, pc} ; case 7
	ldmia sp!, {r3, r4, r5, pc} ; case 8
	ldmia sp!, {r3, r4, r5, pc} ; case 9
	ldmia sp!, {r3, r4, r5, pc} ; case 10
	b _0212E97C ; case 11
	b _0212E994 ; case 12
	b _0212E728 ; case 13
	ldmia sp!, {r3, r4, r5, pc} ; case 14
	ldmia sp!, {r3, r4, r5, pc} ; case 15
	b _0212E754 ; case 16
	b _0212E7B0 ; case 17
	b _0212E824 ; case 18
	ldmia sp!, {r3, r4, r5, pc} ; case 19
	b _0212E8D0 ; case 20
	b _0212E958 ; case 21
	b _0212E914 ; case 22
	b _0212E964 ; case 23
	ldmia sp!, {r3, r4, r5, pc} ; case 24
	b _0212E99C ; case 25
	arm_func_end ov11_0212E518
_0212E598:
	add r0, r4, #0x100
	mov r1, #0x1e
	strh r1, [r0, #0x44]
	mov r0, #1
	strb r0, [r4, #0x152]
	ldr r0, [r4, #0x194]
	mov r1, #0
	bl ov11_0211F008
	ldmia sp!, {r3, r4, r5, pc}
_0212E5BC:
	ldr r0, [r4, #0x194]
	bl ov11_0211F0FC
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x64]
	mov r0, #0
	mov r2, #4
	bl MIi_CpuClear16
	ldr ip, _0212E9A4 ; =DAT_overlay_11_021664e0
	ldr r0, _0212E9A8 ; =0x00000457
	ldrh r1, [ip]
	mov r5, #0
	cmp r1, #0
	beq _0212E618
_0212E5F4:
	mov r3, r5, lsl #1
	ldrh r2, [ip, r3]
	ldr r1, [r4, #0x64]
	add r5, r5, #1
	strh r2, [r1, r3]
	mov r1, r5, lsl #1
	ldrh r1, [ip, r1]
	cmp r1, #0
	bne _0212E5F4
_0212E618:
	ldr lr, _0212E9AC ; =0xCCCCCCCD
	mov r1, #0
	mov ip, #0xa
_0212E624:
	umull r2, r5, r0, lr
	mov r5, r5, lsr #3
	umull r2, r3, ip, r5
	sub r5, r0, r2
	mov r3, r0
	umull r2, r0, r3, lr
	rsb r2, r1, #7
	ldr r3, [r4, #0x64]
	add r1, r1, #1
	add r5, r5, #0xa2
	add r2, r3, r2, lsl #1
	strh r5, [r2, #0x18]
	cmp r1, #8
	mov r0, r0, lsr #3
	blt _0212E624
	ldr r0, [r4, #0x64]
	mov r1, #4
	mov r2, #1
	bl ov11_02126720
	add r0, r4, #0x100
	mov r1, #0xe10
	strh r1, [r0, #0x44]
	mov r0, #4
	strb r0, [r4, #0x152]
	ldr r0, [r4, #0x194]
	bl ov11_0211F32C
	ldr r0, _0212E9B0 ; =MAIN_BSS_020AF5E4
	mov r1, #0
	bl sub_02010FAC
	ldr r0, [r4, #0x194]
	mov r1, #0
	ldr r0, [r0, #0x728]
	bl sub_020292CC
	ldmia sp!, {r3, r4, r5, pc}
_0212E6AC:
	ldr r0, [r4, #0x194]
	bl ov11_0211F338
	ldr r0, [r4, #0x194]
	ldr r0, [r0, #0x728]
	bl sub_02028E20
	tst r0, #0x80
	movne r0, #0x14
	strneb r0, [r4, #0x152]
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov11_02126810
	cmp r0, #0
	movne r0, #0xd
	strneb r0, [r4, #0x152]
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r4, #0x100
	ldrh r1, [r0, #0x44]
	sub r1, r1, #1
	strh r1, [r0, #0x44]
	ldrh r0, [r0, #0x44]
	cmp r0, #0
	beq _0212E70C
	bl ov11_021268E0
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
_0212E70C:
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	beq _0212E71C
	bl ov11_021268F8
_0212E71C:
	mov r0, #0x14
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, r5, pc}
_0212E728:
	ldr r0, [r4, #0x194]
	ldr r0, [r0, #0x728]
	bl sub_02028E20
	tst r0, #0x80
	movne r0, #0x14
	strneb r0, [r4, #0x152]
	ldr r0, [r4, #0x194]
	bl ov11_0211F338
	mov r0, #0x10
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, r5, pc}
_0212E754:
	ldr r0, [r4, #0x194]
	bl ov11_0211F338
	ldr r0, [r4, #0x194]
	ldr r0, [r0, #0x728]
	bl sub_02028E20
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #2
	bne _0212E7A0
	ldr r0, [r4, #0x64]
	mov r1, #4
	mov r2, #2
	bl ov11_02126720
	mov r0, #0x11
	strb r0, [r4, #0x152]
	add r0, r4, #0x100
	mov r1, #0xe10
	strh r1, [r0, #0x44]
	ldmia sp!, {r3, r4, r5, pc}
_0212E7A0:
	tst r0, #0x80
	movne r0, #0x14
	strneb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, r5, pc}
_0212E7B0:
	ldr r0, [r4, #0x194]
	bl ov11_0211F338
	bl ov11_02126810
	cmp r0, #0
	beq _0212E7EC
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	beq _0212E7D4
	bl ov11_021268F8
_0212E7D4:
	mov r0, #0x12
	strb r0, [r4, #0x152]
	ldr r0, [r4, #0x194]
	ldr r0, [r0, #0x728]
	bl sub_02029378
	ldmia sp!, {r3, r4, r5, pc}
_0212E7EC:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x44]
	sub r1, r1, #1
	strh r1, [r0, #0x44]
	ldrh r0, [r0, #0x44]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	beq _0212E818
	bl ov11_021268F8
_0212E818:
	mov r0, #0x14
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, r5, pc}
_0212E824:
	ldr r0, [r4, #0x194]
	bl ov11_0211F338
	ldr r0, [r4, #0x194]
	ldr r0, [r0, #0x728]
	bl sub_02028E20
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	tst r0, #0x80
	movne r0, #0x14
	strneb r0, [r4, #0x152]
	ldmneia sp!, {r3, r4, r5, pc}
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C5C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd2
	bl sub_02034C44
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #0x16
	mov r2, #3
	mov r3, #2
	bl ov11_02122B7C
	ldr r0, [r4, #0x194]
	mov r1, #0x18
	bl ov11_02122BD4
	mov r0, #0xa
	strb r0, [r4, #0x152]
	mov r1, #0x1e
	add r0, r4, #0x100
	strh r1, [r0, #0x44]
	mov r0, #0xb
	strb r0, [r4, #0x152]
	mov r1, #0
	ldr r0, [r4, #0x194]
	sub r2, r1, #1
	bl ov11_0211FB08
	ldmia sp!, {r3, r4, r5, pc}
_0212E8D0:
	add r0, r4, #0x100
	mov r1, #0x1e
	strh r1, [r0, #0x44]
	mov r0, #0x15
	strb r0, [r4, #0x152]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #0x17
	mov r2, #3
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r4, #0x194]
	bl ov11_0211F96C
	ldr r0, [r4, #0x194]
	bl ov11_02124520
	ldmia sp!, {r3, r4, r5, pc}
_0212E914:
	add r0, r4, #0x100
	mov r1, #0x1e
	strh r1, [r0, #0x44]
	mov r0, #0x15
	strb r0, [r4, #0x152]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #0x17
	mov r2, #3
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r4, #0x194]
	bl ov11_0211F96C
	ldr r0, [r4, #0x194]
	bl ov11_02124520
	ldmia sp!, {r3, r4, r5, pc}
_0212E958:
	mov r0, #0x17
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, r5, pc}
_0212E964:
	ldr r0, [r4, #0x194]
	bl ov11_02122428
	cmp r0, #0
	movne r0, #0xc
	strneb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, r5, pc}
_0212E97C:
	ldr r0, [r4, #0x194]
	bl ov11_02122428
	cmp r0, #0
	movne r0, #0x19
	strneb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, r5, pc}
_0212E994:
	bl ov11_0212E9D8
	ldmia sp!, {r3, r4, r5, pc}
_0212E99C:
	bl ov11_0212E9D8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0212E9A4: .word DAT_overlay_11_021664e0
_0212E9A8: .word 0x00000457
_0212E9AC: .word 0xCCCCCCCD
_0212E9B0: .word MAIN_BSS_020AF5E4

	arm_func_start ov11_0212E9B4
ov11_0212E9B4: ; 0x0212E9B4
	ldrb ip, [r0, #0x150]
	mov r3, #0
	add r2, r0, #0x100
	strb ip, [r0, #0x151]
	strb r1, [r0, #0x150]
	strb r3, [r0, #0x152]
	strh r3, [r2, #0x44]
	strh r3, [r2, #0x46]
	bx lr
	arm_func_end ov11_0212E9B4

	arm_func_start ov11_0212E9D8
ov11_0212E9D8: ; 0x0212E9D8
	ldr ip, _0212E9E4 ; =ov11_0212E9B4
	mov r1, #8
	bx ip
	.align 2, 0
_0212E9E4: .word ov11_0212E9B4
	arm_func_end ov11_0212E9D8

	arm_func_start ov11_0212E9E8
ov11_0212E9E8: ; 0x0212E9E8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r2, #1
	mov r4, r0
	str r2, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #0xf
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r4, #0x194]
	bl ov11_02124520
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	beq _0212EA24
	bl ov11_021268F8
	arm_func_end ov11_0212E9E8
_0212EA24:
	mov r0, r4
	mov r1, #0x12
	bl ov11_0212E9B4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov11_0212EA38
ov11_0212EA38: ; 0x0212EA38
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r5, r0
	ldr r0, _0212EB4C ; =0x00000458
	add r4, sp, #0x14
	mov r3, #0
	add r1, sp, #4
	add r2, sp, #0
	strh r3, [r4]
	strh r3, [r4, #2]
	strh r3, [r4, #4]
	strh r3, [r4, #6]
	strh r3, [r4, #8]
	strh r3, [r4, #0xa]
	strh r3, [r4, #0xc]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0x10]
	strh r3, [r4, #0x12]
	ldr r4, _0212EB50 ; =DAT_overlay_11_021664ec
	bl ov11_0212EB5C
	ldr r1, [sp, #4]
	ldr ip, _0212EB54 ; =0xCCCCCCCD
	mov r0, #3
	add r7, sp, #0x14
	mov r6, #0xa
	arm_func_end ov11_0212EA38
_0212EA9C:
	umull r2, lr, r1, ip
	mov lr, lr, lsr #3
	umull r2, r3, r6, lr
	sub lr, r1, r2
	mov r3, r1
	umull r2, r1, r3, ip
	mov r2, r0, lsl #1
	add r3, lr, #0xa2
	strh r3, [r7, r2]
	mov r1, r1, lsr #3
	subs r0, r0, #1
	bpl _0212EA9C
	mov r0, #0xf1
	strh r0, [sp, #0x1c]
	ldr ip, [sp]
	ldr r6, _0212EB54 ; =0xCCCCCCCD
	str r1, [sp, #4]
	mov r0, #3
	add r3, sp, #0x14
	mov lr, #0xa
_0212EAEC:
	umull r1, r7, ip, r6
	mov r7, r7, lsr #3
	umull r1, r2, lr, r7
	sub r7, ip, r1
	mov r2, ip
	umull r1, ip, r2, r6
	add r1, r3, r0, lsl #1
	add r2, r7, #0xa2
	strh r2, [r1, #0xa]
	mov ip, ip, lsr #3
	subs r0, r0, #1
	bpl _0212EAEC
	ldr r0, _0212EB58 ; =DAT_overlay_11_02162b0c
	add r6, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	str ip, [sp]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	ldr r1, [r5, #0x5c]
	mov r0, r6
	bl ov11_0212600C
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0212EB4C: .word 0x00000458
_0212EB50: .word DAT_overlay_11_021664ec
_0212EB54: .word 0xCCCCCCCD
_0212EB58: .word DAT_overlay_11_02162b0c

	arm_func_start ov11_0212EB5C
ov11_0212EB5C: ; 0x0212EB5C
	stmdb sp!, {r4, r5, r6, lr}
	ldr lr, _0212EB9C ; =0xD1B71759
	ldr r4, _0212EBA0 ; =0x00002710
	umull r3, r6, r0, lr
	mov r6, r6, lsr #0xd
	umull r3, r5, r0, lr
	mov r5, r5, lsr #0xd
	umull r3, ip, r4, r6
	umull ip, lr, r5, lr
	mov lr, lr, lsr #0xd
	umull ip, lr, r4, lr
	sub r6, r0, r3
	str r6, [r1]
	rsb lr, ip, r5
	str lr, [r2]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212EB9C: .word 0xD1B71759
_0212EBA0: .word 0x00002710
	arm_func_end ov11_0212EB5C

	arm_func_start ov11_0212EBA4
ov11_0212EBA4: ; 0x0212EBA4
	mov r0, #0
	mov r2, #0xa
	arm_func_end ov11_0212EBA4
_0212EBAC:
	ldrh r3, [r1], #2
	cmp r3, #0x30
	bxlo lr
	cmp r3, #0x39
	subls r3, r3, #0x30
	mlals r0, r2, r0, r3
	bls _0212EBAC
	bx lr

	arm_func_start ov11_0212EBCC
ov11_0212EBCC: ; 0x0212EBCC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r0, [r4, #0x152]
	cmp r0, #0x14
	bgt _0212EC28
	bge _0212EDF0
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _0212EE10
_0212EBF4: ; jump table
	b _0212EC34 ; case 0
	b _0212EC50 ; case 1
	b _0212EE10 ; case 2
	b _0212ECE4 ; case 3
	b _0212ED08 ; case 4
	b _0212EE10 ; case 5
	b _0212EE10 ; case 6
	b _0212EE10 ; case 7
	b _0212EE10 ; case 8
	b _0212EE10 ; case 9
	b _0212EE10 ; case 10
	b _0212EDCC ; case 11
	b _0212EDDC ; case 12
	arm_func_end ov11_0212EBCC
_0212EC28:
	add sp, sp, #4
	cmp r0, #0x19
	ldmia sp!, {r3, r4, pc}
_0212EC34:
	ldr r0, _0212EE18 ; =OVERLAY11_BSS_02169C74
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #1
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212EC50:
	ldr r0, [r4, #0x194]
	mov r1, #1
	str r1, [r0, #0x710]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C44
	mov r2, #1
	str r2, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #2
	mov r3, #0
	bl ov11_02122B7C
	ldr r0, [r4, #0x50]
	ldr r2, [r4, #0x4c]
	ldr r1, _0212EE1C ; =ov11_0212F32C
	bl ov11_0212FE30
	cmp r0, #0
	bne _0212ECC8
	mov r2, #1
	str r2, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #3
	mov r3, #0
	bl ov11_02122B7C
	mov r0, r4
	bl ov11_0212F3B0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212ECC8:
	mov r0, #3
	strb r0, [r4, #0x152]
	ldr r1, _0212EE20 ; =0x00001C20
	add r0, r4, #0x100
	strh r1, [r0, #0x44]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212ECE4:
	bl ov11_02130200
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [r4, #0x194]
	mov r1, #5
	bl ov11_0211FBE4
	mov r0, #4
	strb r0, [r4, #0x152]
_0212ED08:
	bl ov11_021301BC
	mov r2, r0
	ldr r0, [r4, #0x194]
	mov r1, #2
	bl ov11_0211FB08
	ldr r0, _0212EE18 ; =OVERLAY11_BSS_02169C74
	ldr r0, [r0, #4]
	cmp r0, #2
	cmpne r0, #4
	bne _0212ED7C
	bl ov11_021301DC
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	mov r1, #3
	bl ov11_0212E9B4
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C5C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd2
	bl sub_02034C44
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212ED7C:
	cmp r0, #5
	beq _0212EDA4
	add r0, r4, #0x100
	ldrh r1, [r0, #0x44]
	sub r1, r1, #1
	strh r1, [r0, #0x44]
	ldrh r0, [r0, #0x44]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
_0212EDA4:
	mov r2, #1
	str r2, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #3
	mov r3, #0
	bl ov11_02122B7C
	mov r0, r4
	bl ov11_0212F3B0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212EDCC:
	mov r0, #0xc
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212EDDC:
	mov r0, #0x19
	strb r0, [r4, #0x152]
	bl ov11_0212FD74
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212EDF0:
	ldr r0, [r4, #0x194]
	bl ov11_02122428
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	mov r1, #8
	bl ov11_0212E9B4
_0212EE10:
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0212EE18: .word OVERLAY11_BSS_02169C74
_0212EE1C: .word ov11_0212F32C
_0212EE20: .word 0x00001C20

	arm_func_start ov11_0212EE24
ov11_0212EE24: ; 0x0212EE24
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl ov11_021301DC
	ldrb r2, [r4, #0x152]
	mov r1, r0
	cmp r2, #0x14
	bgt _0212EE80
	bge _0212EF6C
	cmp r2, #0xa
	addls pc, pc, r2, lsl #2
	b _0212EF8C
_0212EE54: ; jump table
	b _0212EE8C ; case 0
	b _0212EF8C ; case 1
	b _0212EF8C ; case 2
	b _0212EE9C ; case 3
	b _0212EEAC ; case 4
	b _0212EF14 ; case 5
	b _0212EF8C ; case 6
	b _0212EF8C ; case 7
	b _0212EF8C ; case 8
	b _0212EF8C ; case 9
	b _0212EF58 ; case 10
	arm_func_end ov11_0212EE24
_0212EE80:
	add sp, sp, #4
	cmp r2, #0x19
	ldmia sp!, {r3, r4, pc}
_0212EE8C:
	mov r0, #4
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212EE9C:
	mov r0, #4
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212EEAC:
	ldr r0, [r4, #0x194]
	bl ov11_02123C8C
	str r0, [r4, #0x188]
	mov r2, #0
	mvn r1, #0
_0212EEC0:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x15c]
	cmp r2, #0xb
	blt _0212EEC0
	ldr r0, [r4, #0x188]
	mov r2, #1
	cmp r0, #0
	movlt r0, #0xa
	strlt r0, [r4, #0x188]
	ldr r0, [r4, #0x188]
	add r1, r4, #0x15c
	add r0, r4, r0, lsl #2
	str r2, [r0, #0x15c]
	ldr r0, [r4, #0x194]
	mov r3, #7
	bl ov11_021217D4
	mov r0, #5
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212EF14:
	ldr r0, [r4, #0x194]
	bl ov11_021212B4
	cmp r0, #0
	addlt sp, sp, #4
	ldmltia sp!, {r3, r4, pc}
	sub r0, r0, #0xb
	mov r2, #1
	str r0, [r4, #0x188]
	str r2, [sp]
	ldr r0, [r4, #0x194]
	mov r3, r2
	mov r1, #4
	bl ov11_02122B7C
	mov r0, #0xa
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212EF58:
	mov r0, r4
	mov r1, #4
	bl ov11_0212E9B4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212EF6C:
	ldr r0, [r4, #0x194]
	bl ov11_02122428
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	mov r1, #8
	bl ov11_0212E9B4
_0212EF8C:
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov11_0212EF94
ov11_0212EF94: ; 0x0212EF94
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r4, #0x48]
	ldrb r0, [r4, #0x152]
	cmp r0, #0xc
	bgt _0212EFF4
	cmp r0, #0xb
	blt _0212EFCC
	beq _0212F0F8
	cmp r0, #0xc
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_0212EF94
_0212EFCC:
	cmp r0, #4
	ldmgtia sp!, {r3, r4, r5, pc}
	cmp r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	beq _0212F00C
	cmp r0, #3
	beq _0212F050
	cmp r0, #4
	beq _0212F05C
	ldmia sp!, {r3, r4, r5, pc}
_0212EFF4:
	cmp r0, #0x14
	bgt _0212F004
	beq _0212F130
	ldmia sp!, {r3, r4, r5, pc}
_0212F004:
	cmp r0, #0x19
	ldmia sp!, {r3, r4, r5, pc}
_0212F00C:
	ldr r1, _0212F150 ; =0x00001C20
	mov r0, #4
	str r1, [r4, #0x48]
	strb r0, [r4, #0x152]
	mov r0, #0
	str r0, [r4, #0x154]
	add r0, r4, #0x100
	mov r1, #0xf
	strh r1, [r0, #0x44]
	ldr r0, [r4, #0x194]
	bl ov11_0211EF5C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C44
	ldmia sp!, {r3, r4, r5, pc}
_0212F050:
	mov r0, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, r5, pc}
_0212F05C:
	ldr r0, [r4, #0x194]
	bl ov11_0211F06C
	bl ov11_0213018C
	mov r5, r0
	bl ov11_021301A4
	cmp r5, r0
	ldreq r0, _0212F154 ; =OVERLAY11_BSS_02169C74
	ldreq r0, [r0, #4]
	cmpeq r0, #3
	bne _0212F094
	mov r0, #0xb
	strb r0, [r4, #0x152]
	bl ov11_0212FD74
	ldmia sp!, {r3, r4, r5, pc}
_0212F094:
	ldr r0, _0212F154 ; =OVERLAY11_BSS_02169C74
	ldr r0, [r0, #4]
	cmp r0, #5
	ldrne r0, [r4, #0x48]
	cmpne r0, #0
	bne _0212F0D0
	mov r2, #1
	str r2, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #0x10
	mov r3, #0
	bl ov11_02122B7C
	mov r0, r4
	bl ov11_0212F3B0
	ldmia sp!, {r3, r4, r5, pc}
_0212F0D0:
	bl ov11_021301BC
	cmp r0, #1
	ldmgtia sp!, {r3, r4, r5, pc}
	mov r2, #1
	str r2, [sp]
	ldr r0, [r4, #0x194]
	mov r3, r2
	mov r1, #0xe
	bl ov11_02122B7C
	ldmia sp!, {r3, r4, r5, pc}
_0212F0F8:
	ldr r0, [r4, #0x194]
	bl ov11_0211F06C
	ldr r0, _0212F154 ; =OVERLAY11_BSS_02169C74
	ldr r0, [r0, #4]
	cmp r0, #4
	cmpne r0, #6
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x50]
	mov r1, r0
	bl ov11_02130210
	mov r0, r4
	mov r1, #7
	bl ov11_0212E9B4
	ldmia sp!, {r3, r4, r5, pc}
_0212F130:
	ldr r0, [r4, #0x194]
	bl ov11_02122428
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #8
	bl ov11_0212E9B4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0212F150: .word 0x00001C20
_0212F154: .word OVERLAY11_BSS_02169C74

	arm_func_start ov11_0212F158
ov11_0212F158: ; 0x0212F158
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r1, [r4, #0x152]
	cmp r1, #0x14
	bgt _0212F1AC
	subs r0, r1, #0xd
	addpl pc, pc, r0, lsl #2
	b _0212F19C
_0212F17C: ; jump table
	b _0212F220 ; case 0
	b _0212F324 ; case 1
	b _0212F324 ; case 2
	b _0212F27C ; case 3
	b _0212F324 ; case 4
	b _0212F324 ; case 5
	b _0212F324 ; case 6
	b _0212F304 ; case 7
	arm_func_end ov11_0212F158
_0212F19C:
	cmp r1, #0
	beq _0212F1BC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212F1AC:
	cmp r1, #0x19
	beq _0212F2DC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212F1BC:
	ldr r0, [r4, #0x194]
	mov r1, #0
	str r1, [r0, #0x710]
	ldr r0, [r4, #0x194]
	bl ov11_0211F06C
	mov r2, #1
	add r0, r4, #0x100
	mov r1, #0x78
	strh r1, [r0, #0x44]
	mov r0, #0xd
	strb r0, [r4, #0x152]
	str r2, [sp]
	ldr r0, [r4, #0x194]
	mov r3, r2
	mov r1, #5
	bl ov11_02122B7C
	ldr r0, [r4, #0x194]
	mov r1, #3
	bl ov11_0211FBE4
	mov r1, #0
	ldr r0, [r4, #0x194]
	sub r2, r1, #1
	bl ov11_0211FB08
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212F220:
	ldr r0, [r4, #0x194]
	bl ov11_0211F06C
	add r0, r4, #0x100
	ldrh r1, [r0, #0x44]
	sub r1, r1, #1
	strh r1, [r0, #0x44]
	ldrh r0, [r0, #0x44]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	mov r0, #0x10
	strb r0, [r4, #0x152]
	ldr r0, [r4, #0x194]
	ldr r1, [r4, #0x50]
	bl ov11_02121000
	mov r2, #1
	str r2, [sp]
	ldr r0, [r4, #0x194]
	mov r3, r2
	mov r1, #6
	bl ov11_02122B7C
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212F27C:
	ldr r0, [r4, #0x194]
	bl ov11_02121010
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	bge _0212F2BC
	mov r2, #1
	str r2, [sp]
	ldr r0, [r4, #0x194]
	mov r1, #0xd
	mov r3, #0
	bl ov11_02122B7C
	mov r0, #0x13
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212F2BC:
	ldr r0, [r4, #0x194]
	ldr r1, [r4, #0x188]
	mov r2, #0
	bl ov11_0212374C
	mov r0, #0x19
	add sp, sp, #4
	strb r0, [r4, #0x152]
	ldmia sp!, {r3, r4, pc}
_0212F2DC:
	ldr r0, [r4, #0x194]
	bl ov11_02122428
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	mov r1, #8
	bl ov11_0212E9B4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0212F304:
	ldr r0, [r4, #0x194]
	bl ov11_02122428
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	mov r1, #8
	bl ov11_0212E9B4
_0212F324:
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov11_0212F32C
ov11_0212F32C: ; 0x0212F32C
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	bx lr
_0212F338: ; jump table
	b _0212F34C ; case 0
	b _0212F35C ; case 1
	b _0212F36C ; case 2
	b _0212F37C ; case 3
	b _0212F39C ; case 4
	arm_func_end ov11_0212F32C
_0212F34C:
	ldr r0, _0212F3AC ; =OVERLAY11_BSS_02169C74
	mov r1, #1
	str r1, [r0, #4]
	bx lr
_0212F35C:
	ldr r0, _0212F3AC ; =OVERLAY11_BSS_02169C74
	mov r1, #2
	str r1, [r0, #4]
	bx lr
_0212F36C:
	ldr r0, _0212F3AC ; =OVERLAY11_BSS_02169C74
	mov r1, #3
	str r1, [r0, #4]
	bx lr
_0212F37C:
	ldr r0, _0212F3AC ; =OVERLAY11_BSS_02169C74
	ldr r1, [r0, #4]
	cmp r1, #3
	moveq r1, #4
	streq r1, [r0, #4]
	movne r1, #6
	strne r1, [r0, #4]
	bx lr
_0212F39C:
	ldr r0, _0212F3AC ; =OVERLAY11_BSS_02169C74
	mov r1, #5
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0212F3AC: .word OVERLAY11_BSS_02169C74

	arm_func_start ov11_0212F3B0
ov11_0212F3B0: ; 0x0212F3B0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_0212FD74
	mov r0, #0x14
	strb r0, [r4, #0x152]
	ldr r0, [r4, #0x194]
	bl ov11_02124520
	ldr r0, [r4, #0x194]
	mov r1, #0
	str r1, [r0, #0x710]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212F3B0

	arm_func_start ov11_0212F3DC
ov11_0212F3DC: ; 0x0212F3DC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_021301D4
	rsb r0, r0, r0, lsl #1
	bl _Znam
	str r0, [r4]
	mov r0, #0xf000
	bl _Znam
	str r0, [r4, #4]
	mov r1, #0
	ldr r0, _0212F428 ; =OVERLAY11_BSS_02169C74
	strb r1, [r4, #8]
	str r1, [r0]
	bl sub_0201001C
	add r1, r0, #0x1000
	mov r2, #0
	mov r0, r4
	str r2, [r1, #0x5dc]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212F428: .word OVERLAY11_BSS_02169C74
	arm_func_end ov11_0212F3DC

	arm_func_start ov11_0212F42C
ov11_0212F42C: ; 0x0212F42C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0212F44C
	bl _ZdaPv
	mov r0, #0
	str r0, [r4]
	arm_func_end ov11_0212F42C
_0212F44C:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0212F464
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #4]
_0212F464:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0212F46C
ov11_0212F46C: ; 0x0212F46C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #8]
	cmp r0, #0x18
	bgt _0212F4A4
	bge _0212F588
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0212F5B8
_0212F490: ; jump table
	b _0212F4C0 ; case 0
	b _0212F4D0 ; case 1
	b _0212F5B8 ; case 2
	b _0212F504 ; case 3
	b _0212F51C ; case 4
	arm_func_end ov11_0212F46C
_0212F4A4:
	cmp r0, #0x19
	bgt _0212F4B4
	beq _0212F578
	b _0212F5B8
_0212F4B4:
	cmp r0, #0x1a
	beq _0212F5B0
	b _0212F5B8
_0212F4C0:
	mov r0, #1
	strb r0, [r4, #8]
	bl ov11_02128FEC
	b _0212F5B8
_0212F4D0:
	ldr r0, [r4, #4]
	ldr r2, [r4]
	ldr r1, _0212F5C0 ; =ov11_0212F5C8
	bl ov11_0212FE30
	cmp r0, #0
	moveq r0, #0x19
	streqb r0, [r4, #8]
	beq _0212F5B8
	mov r0, #3
	strb r0, [r4, #8]
	mov r0, #0x1e
	strh r0, [r4, #0xa]
	b _0212F5B8
_0212F504:
	ldr r0, _0212F5C4 ; =OVERLAY11_BSS_02169C74
	ldr r0, [r0]
	cmp r0, #1
	bne _0212F5B8
	mov r0, #4
	strb r0, [r4, #8]
_0212F51C:
	ldr r0, _0212F5C4 ; =OVERLAY11_BSS_02169C74
	ldr r1, [r0]
	sub r0, r1, #2
	cmp r0, #1
	bhi _0212F54C
	bl sub_0201001C
	add r0, r0, #0x1000
	mov r1, #1
	str r1, [r0, #0x5dc]
	mov r0, #0x19
	strb r0, [r4, #8]
	b _0212F5B8
_0212F54C:
	cmp r1, #5
	beq _0212F56C
	ldrh r0, [r4, #0xa]
	sub r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	bne _0212F5B8
_0212F56C:
	mov r0, #0x19
	strb r0, [r4, #8]
	b _0212F5B8
_0212F578:
	bl ov11_0212FD74
	mov r0, #0x18
	strb r0, [r4, #8]
	b _0212F5B8
_0212F588:
	ldr r0, _0212F5C4 ; =OVERLAY11_BSS_02169C74
	ldr r0, [r0]
	cmp r0, #4
	cmpne r0, #5
	cmpne r0, #6
	bne _0212F5B8
	bl ov11_02129040
	mov r0, #0x1a
	strb r0, [r4, #8]
	b _0212F5B8
_0212F5B0:
	mov r0, #0
	ldmia sp!, {r4, pc}
_0212F5B8:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212F5C0: .word ov11_0212F5C8
_0212F5C4: .word OVERLAY11_BSS_02169C74

	arm_func_start ov11_0212F5C8
ov11_0212F5C8: ; 0x0212F5C8
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	bx lr
_0212F5D4: ; jump table
	b _0212F5E8 ; case 0
	b _0212F5F8 ; case 1
	b _0212F608 ; case 2
	b _0212F618 ; case 3
	b _0212F638 ; case 4
	arm_func_end ov11_0212F5C8
_0212F5E8:
	ldr r0, _0212F648 ; =OVERLAY11_BSS_02169C74
	mov r1, #1
	str r1, [r0]
	bx lr
_0212F5F8:
	ldr r0, _0212F648 ; =OVERLAY11_BSS_02169C74
	mov r1, #2
	str r1, [r0]
	bx lr
_0212F608:
	ldr r0, _0212F648 ; =OVERLAY11_BSS_02169C74
	mov r1, #3
	str r1, [r0]
	bx lr
_0212F618:
	ldr r0, _0212F648 ; =OVERLAY11_BSS_02169C74
	ldr r1, [r0]
	cmp r1, #3
	moveq r1, #4
	streq r1, [r0]
	movne r1, #6
	strne r1, [r0]
	bx lr
_0212F638:
	ldr r0, _0212F648 ; =OVERLAY11_BSS_02169C74
	mov r1, #5
	str r1, [r0]
	bx lr
	.align 2, 0
_0212F648: .word OVERLAY11_BSS_02169C74

	arm_func_start ov11_0212F64C
ov11_0212F64C: ; 0x0212F64C
	stmdb sp!, {r4, lr}
	ldr r1, _0212F6BC ; =OVERLAY11_BSS_02169C7C
	mov r4, r0
	ldr r3, [r1]
	cmp r3, #0
	beq _0212F680
	ldr r0, [r1, #4]
	ldr r1, _0212F6C0 ; =ptr_s_mywh_SYSSTATE_STOP_overlay_11_0216650c_overlay_11_021665ec
	add r0, r0, #0x1000
	ldr r2, [r0, #0x150]
	ldr r0, _0212F6C4 ; =s_s_overlay_11_02166614
	ldr r1, [r1, r2, lsl #2]
	blx r3
	arm_func_end ov11_0212F64C
_0212F680:
	ldr r1, _0212F6BC ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r4, [r0, #0x150]
	ldr r3, [r1]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r1, #4]
	ldr r1, _0212F6C0 ; =ptr_s_mywh_SYSSTATE_STOP_overlay_11_0216650c_overlay_11_021665ec
	add r0, r0, #0x1000
	ldr r2, [r0, #0x150]
	ldr r0, _0212F6C8 ; =s_s_overlay_11_0216661c
	ldr r1, [r1, r2, lsl #2]
	blx r3
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212F6BC: .word OVERLAY11_BSS_02169C7C
_0212F6C0: .word ptr_s_mywh_SYSSTATE_STOP_overlay_11_0216650c_overlay_11_021665ec
_0212F6C4: .word s_s_overlay_11_02166614
_0212F6C8: .word s_s_overlay_11_0216661c

	arm_func_start ov11_0212F6CC
ov11_0212F6CC: ; 0x0212F6CC
	ldr r1, _0212F6EC ; =OVERLAY11_BSS_02169C7C
	ldr r1, [r1, #4]
	add r1, r1, #0x1000
	ldr r2, [r1, #0x150]
	sub r2, r2, #9
	cmp r2, #1
	strhi r0, [r1, #0x154]
	bx lr
	.align 2, 0
_0212F6EC: .word OVERLAY11_BSS_02169C7C
	arm_func_end ov11_0212F6CC

	arm_func_start ov11_0212F6F0
ov11_0212F6F0: ; 0x0212F6F0
	stmdb sp!, {r3, lr}
	ldr r0, _0212F7B8 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x150]
	cmp r0, #4
	bne _0212F710
	bl OS_Terminate
	arm_func_end ov11_0212F6F0
_0212F710:
	mov r0, #2
	bl ov11_0212F64C
	ldr r1, _0212F7B8 ; =OVERLAY11_BSS_02169C7C
	ldr r2, _0212F7BC ; =0x0000FFFF
	ldr r0, [r1, #4]
	add r0, r0, #0xf00
	strh r2, [r0, #0xcc]
	ldr r0, [r1, #4]
	add r0, r0, #0xf00
	strh r2, [r0, #0xca]
	ldr r0, [r1, #4]
	add r0, r0, #0xf00
	strh r2, [r0, #0xc8]
	bl ov11_0212F7C0
	cmp r0, #0
	bne _0212F780
	mov r0, #9
	bl ov11_0212F64C
	ldr r0, _0212F7B8 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	beq _0212F778
	mov r0, #4
	blx r1
_0212F778:
	mov r0, #0
	ldmia sp!, {r3, pc}
_0212F780:
	ldr r1, _0212F7B8 ; =OVERLAY11_BSS_02169C7C
	mov r2, #2
	ldr r0, [r1, #4]
	add r0, r0, #0x1100
	strh r2, [r0, #0x58]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	beq _0212F7B0
	mov r0, #0
	blx r1
_0212F7B0:
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212F7B8: .word OVERLAY11_BSS_02169C7C
_0212F7BC: .word 0x0000FFFF

	arm_func_start ov11_0212F7C0
ov11_0212F7C0: ; 0x0212F7C0
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _0212F92C ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x150]
	cmp r0, #2
	beq _0212F7E4
	bl OS_Terminate
	movs r0, #0
	arm_func_end ov11_0212F7C0
_0212F7E4:
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	bne _0212F800
	mov r0, #3
	bl ov11_0212F6CC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0212F800:
	cmp r0, #0
	bne _0212F818
	mov r0, #0x16
	bl ov11_0212F6CC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0212F818:
	ldr r1, _0212F92C ; =OVERLAY11_BSS_02169C7C
	ldr r2, [r1, #4]
	add r1, r2, #0x1100
	ldrh r1, [r1, #0x76]
	cmp r1, #0x10
	blo _0212F89C
	sub r5, r1, #0x10
	mov r6, #0
	mov lr, #1
	ldr ip, _0212F930 ; =0x4EC4EC4F
	mov r3, #0xd
	b _0212F86C
_0212F848:
	add r4, r5, #1
	mov r1, r4, lsr #0x1f
	smull r2, r5, ip, r4
	add r5, r1, r5, asr #2
	smull r1, r2, r3, r5
	sub r5, r4, r1
	tst r0, lr, lsl r5
	bne _0212F874
	add r6, r6, #1
_0212F86C:
	cmp r6, #0xd
	blt _0212F848
_0212F874:
	ldr r1, _0212F92C ; =OVERLAY11_BSS_02169C7C
	add r3, r5, #0x10
	ldr r0, [r1, #4]
	add r2, r5, #1
	add r0, r0, #0x1100
	strh r3, [r0, #0x76]
	ldr r0, [r1, #4]
	add r0, r0, #0xf00
	strh r2, [r0, #0xc4]
	b _0212F8A4
_0212F89C:
	add r0, r2, #0xf00
	strh r1, [r0, #0xc4]
_0212F8A4:
	ldr r1, _0212F92C ; =OVERLAY11_BSS_02169C7C
	mov r2, #0xdc
	ldr r0, [r1, #4]
	add r0, r0, #0xf00
	strh r2, [r0, #0xc6]
	ldr r0, [r1, #4]
	add r2, r0, #0xf00
	str r2, [r0, #0xfc0]
	ldr r0, [r1, #4]
	add r0, r0, #0x1100
	ldrh r0, [r0, #0x58]
	cmp r0, #3
	bne _0212F900
	mov r3, #0
	b _0212F8F8
_0212F8E0:
	ldr r0, [r1, #4]
	add r2, r0, r3
	add r0, r2, #0x1000
	ldrb r0, [r0, #0x170]
	add r3, r3, #1
	strb r0, [r2, #0xfc8]
_0212F8F8:
	cmp r3, #6
	blt _0212F8E0
_0212F900:
	ldr r1, _0212F92C ; =OVERLAY11_BSS_02169C7C
	ldr r0, _0212F934 ; =ov11_0212F938
	ldr r1, [r1, #4]
	add r1, r1, #0xfc0
	bl WM_StartScan
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	bl ov11_0212F6CC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212F92C: .word OVERLAY11_BSS_02169C7C
_0212F930: .word 0x4EC4EC4F
_0212F934: .word ov11_0212F938

	arm_func_start ov11_0212F938
ov11_0212F938: ; 0x0212F938
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0212F97C
	bl ov11_0212F6CC
	mov r0, #9
	bl ov11_0212F64C
	ldr r0, _0212FB34 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #4
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212F938
_0212F97C:
	ldr r0, _0212FB34 ; =OVERLAY11_BSS_02169C7C
	ldr r2, [r0, #4]
	add r0, r2, #0x1000
	ldr r1, [r0, #0x150]
	cmp r1, #2
	beq _0212F9CC
	bl ov11_0212FB40
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #9
	bl ov11_0212F64C
	ldr r0, _0212FB34 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #4
	blx r1
	ldmia sp!, {r4, pc}
_0212F9CC:
	ldrh r1, [r4, #8]
	cmp r1, #3
	ldmeqia sp!, {r4, pc}
	cmp r1, #4
	beq _0212F9EC
	cmp r1, #5
	beq _0212F9F8
	b _0212FAFC
_0212F9EC:
	mov r1, #0
	str r1, [r0, #0x16c]
	b _0212FAFC
_0212F9F8:
	add r0, r2, #0xf00
	mov r1, #0xc0
	bl DC_InvalidateRange
	ldrh r0, [r4, #0x36]
	cmp r0, #8
	blo _0212FA20
	ldr r1, [r4, #0x3c]
	ldr r0, _0212FB38 ; =0x00400643
	cmp r1, r0
	beq _0212FA44
_0212FA20:
	ldr r0, _0212FB34 ; =OVERLAY11_BSS_02169C7C
	ldr r3, [r0]
	cmp r3, #0
	beq _0212FAFC
	ldr r1, [r4, #0x3c]
	ldr r0, _0212FB3C ; =s_not_my_parent_ggid_d_d_overlay_11_02166620
	ldr r2, _0212FB38 ; =0x00400643
	blx r3
	b _0212FAFC
_0212FA44:
	ldr r1, _0212FB34 ; =OVERLAY11_BSS_02169C7C
	ldrh r2, [r4, #0x12]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x16c]
	ldr r0, [r1, #4]
	add r0, r0, #0x1100
	ldrh r0, [r0, #0x58]
	cmp r0, #2
	bne _0212FAD4
	add r0, r4, #0x48
	bl ov11_0212FEC8
	ldr r1, _0212FB34 ; =OVERLAY11_BSS_02169C7C
	mov r3, #0
_0212FA7C:
	add r2, r4, r3
	ldr r0, [r1, #4]
	ldrb r2, [r2, #0xa]
	add r0, r0, r3
	add r0, r0, #0x1000
	add r3, r3, #1
	strb r2, [r0, #0x170]
	cmp r3, #6
	blt _0212FA7C
	ldr r1, _0212FB34 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r1, #4]
	add r0, r0, #0x1100
	ldrh r2, [r0, #0x76]
	sub r2, r2, #0xf
	strh r2, [r0, #0x76]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	beq _0212FAD4
	mov r0, #1
	blx r1
_0212FAD4:
	add r0, r4, #0x48
	bl ov11_0212FF98
	cmp r0, #0
	beq _0212FAFC
	ldr r0, _0212FB34 ; =OVERLAY11_BSS_02169C7C
	mov r1, #4
	ldr r0, [r0, #4]
	add r0, r0, #0x1100
	strh r1, [r0, #0x58]
	ldmia sp!, {r4, pc}
_0212FAFC:
	bl ov11_0212F7C0
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #9
	bl ov11_0212F64C
	ldr r0, _0212FB34 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #4
	blx r1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212FB34: .word OVERLAY11_BSS_02169C7C
_0212FB38: .word 0x00400643
_0212FB3C: .word s_not_my_parent_ggid_d_d_overlay_11_02166620

	arm_func_start ov11_0212FB40
ov11_0212FB40: ; 0x0212FB40
	stmdb sp!, {r3, lr}
	ldr r0, _0212FB64 ; =ov11_0212FB68
	bl WM_EndScan
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_0212F6CC
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212FB64: .word ov11_0212FB68
	arm_func_end ov11_0212FB40

	arm_func_start ov11_0212FB68
ov11_0212FB68: ; 0x0212FB68
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0212FB80
	bl ov11_0212F6CC
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212FB68
_0212FB80:
	mov r0, #1
	bl ov11_0212F64C
	ldmia sp!, {r3, pc}

	arm_func_start ov11_0212FB8C
ov11_0212FB8C: ; 0x0212FB8C
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0212FBA8
	mov r0, #0xa
	bl ov11_0212F64C
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212FB8C
_0212FBA8:
	mov r0, #0
	bl ov11_0212F64C
	ldr r0, _0212FBD4 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #3
	blx r1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212FBD4: .word OVERLAY11_BSS_02169C7C

	arm_func_start ov11_0212FBD8
ov11_0212FBD8: ; 0x0212FBD8
	stmdb sp!, {r3, lr}
	ldr r1, _0212FC08 ; =OVERLAY11_BSS_02169C7C
	mov r2, #0
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x154]
	str r2, [r1, #8]
	bl ov11_0212FC50
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212FC08: .word OVERLAY11_BSS_02169C7C
	arm_func_end ov11_0212FBD8

	arm_func_start ov11_0212FC0C
ov11_0212FC0C: ; 0x0212FC0C
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #8
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov11_0212F64C
	ldr r0, _0212FC4C ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	beq _0212FC44
	mov r0, #4
	blx r1
	arm_func_end ov11_0212FC0C
_0212FC44:
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212FC4C: .word OVERLAY11_BSS_02169C7C

	arm_func_start ov11_0212FC50
ov11_0212FC50: ; 0x0212FC50
	stmdb sp!, {r3, lr}
	mov r0, #3
	bl ov11_0212F64C
	ldr r0, _0212FC90 ; =OVERLAY11_BSS_02169C7C
	ldr r1, _0212FC94 ; =ov11_0212FC98
	ldr r0, [r0, #4]
	mov r2, #2
	bl WM_Initialize
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_0212F6CC
	mov r0, #0xa
	bl ov11_0212F64C
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212FC90: .word OVERLAY11_BSS_02169C7C
_0212FC94: .word ov11_0212FC98
	arm_func_end ov11_0212FC50

	arm_func_start ov11_0212FC98
ov11_0212FC98: ; 0x0212FC98
	stmdb sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0212FCB8
	bl ov11_0212F6CC
	mov r0, #0xa
	bl ov11_0212F64C
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212FC98
_0212FCB8:
	ldr r0, _0212FCF4 ; =ov11_0212FC0C
	bl WM_SetIndCallback
	cmp r0, #0
	beq _0212FCD8
	bl ov11_0212F6CC
	mov r0, #0xa
	bl ov11_0212F64C
	ldmia sp!, {r3, pc}
_0212FCD8:
	mov r0, #1
	bl ov11_0212F64C
	ldr r0, _0212FCF8 ; =OVERLAY11_BSS_02169C7C
	mov r1, #1
	str r1, [r0, #8]
	bl ov11_0212F6F0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212FCF4: .word ov11_0212FC0C
_0212FCF8: .word OVERLAY11_BSS_02169C7C

	arm_func_start ov11_0212FCFC
ov11_0212FCFC: ; 0x0212FCFC
	stmdb sp!, {r3, lr}
	ldr r0, _0212FD6C ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x150]
	cmp r0, #1
	beq _0212FD1C
	bl OS_Terminate
	arm_func_end ov11_0212FCFC
_0212FD1C:
	mov r0, #3
	bl ov11_0212F64C
	ldr r0, _0212FD70 ; =ov11_0212FB8C
	bl WM_End
	cmp r0, #2
	beq _0212FD64
	mov r0, #9
	bl ov11_0212F64C
	ldr r0, _0212FD6C ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	beq _0212FD5C
	mov r0, #4
	blx r1
_0212FD5C:
	mov r0, #0
	ldmia sp!, {r3, pc}
_0212FD64:
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212FD6C: .word OVERLAY11_BSS_02169C7C
_0212FD70: .word ov11_0212FB8C

	arm_func_start ov11_0212FD74
ov11_0212FD74: ; 0x0212FD74
	stmdb sp!, {r3, lr}
	ldr r0, _0212FDA0 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x150]
	cmp r0, #1
	bne _0212FD98
	bl ov11_0212FCFC
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0212FD74
_0212FD98:
	bl ov11_0212FDA4
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212FDA0: .word OVERLAY11_BSS_02169C7C

	arm_func_start ov11_0212FDA4
ov11_0212FDA4: ; 0x0212FDA4
	stmdb sp!, {r3, lr}
	mov r0, #3
	bl ov11_0212F64C
	ldr r0, _0212FDD0 ; =ov11_0212FDD4
	bl WM_Reset
	cmp r0, #2
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov11_0212F6CC
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212FDD0: .word ov11_0212FDD4
	arm_func_end ov11_0212FDA4

	arm_func_start ov11_0212FDD4
ov11_0212FDD4: ; 0x0212FDD4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0212FE1C
	mov r0, #9
	bl ov11_0212F64C
	ldrh r0, [r4, #2]
	bl ov11_0212F6CC
	ldr r0, _0212FE2C ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #4
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0212FDD4
_0212FE1C:
	mov r0, #1
	bl ov11_0212F64C
	bl ov11_0212FCFC
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212FE2C: .word OVERLAY11_BSS_02169C7C

	arm_func_start ov11_0212FE30
ov11_0212FE30: ; 0x0212FE30
	stmdb sp!, {r3, lr}
	add r2, r2, #0x1f
	bic r2, r2, #0x1f
	ldr ip, _0212FEC4 ; =OVERLAY11_BSS_02169C7C
	add r3, r2, #0x1000
	str r2, [ip, #4]
	mov r2, #0
	str r2, [r3, #0x150]
	ldr r3, [ip, #4]
	mov lr, #1
	add r3, r3, #0x1100
	strh lr, [r3, #0x58]
	ldr r3, [ip, #4]
	mov lr, #0x10
	add r3, r3, #0x1000
	str r0, [r3, #0x178]
	ldr r0, [ip, #4]
	sub r3, lr, #0x11
	add r0, r0, #0x1100
	strh r2, [r0, #0x5c]
	ldr r0, [ip, #4]
	add r0, r0, #0x1100
	strh r2, [r0, #0x5e]
	ldr r0, [ip, #4]
	add r0, r0, #0x1000
	str r1, [r0, #0x17c]
	ldr r0, [ip, #4]
	add r0, r0, #0x1100
	strh lr, [r0, #0x76]
	ldr r0, [ip, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x48]
	ldr r0, [ip, #4]
	add r0, r0, #0x1000
	str r3, [r0, #0x16c]
	bl ov11_0212FBD8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212FEC4: .word OVERLAY11_BSS_02169C7C
	arm_func_end ov11_0212FE30

	arm_func_start ov11_0212FEC8
ov11_0212FEC8: ; 0x0212FEC8
	stmdb sp!, {r3, lr}
	ldr r1, _0212FF90 ; =OVERLAY11_BSS_02169C7C
	mov r2, #0
	ldr r3, [r1, #4]
	mov lr, #3
	add r3, r3, #0x1000
	str r2, [r3, #0x48]
	ldr r3, [r1, #4]
	ldr ip, _0212FF94 ; =0x4EC4EC4F
	add r3, r3, #0x1100
	strh lr, [r3, #0x58]
	ldr r3, [r1, #4]
	ldrh lr, [r0]
	add r3, r3, #0x1100
	strh lr, [r3, #0x5a]
	ldr r3, [r1, #4]
	ldr lr, [r0, #4]
	add r0, r3, #0x1000
	str lr, [r0, #0x160]
	ldr r3, [r1, #4]
	add r0, r3, #0x1000
	ldr r0, [r0, #0x160]
	add r3, r3, #0x1100
	sub lr, r0, #1
	umull r0, ip, lr, ip
	mov ip, ip, lsr #5
	add r0, ip, #1
	strh r0, [r3, #0x5c]
	ldr r0, [r1, #4]
	add r0, r0, #0x1100
	strh r2, [r0, #0x5e]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x164]
	ldr ip, [r1, #4]
	add r0, ip, #0x1100
	ldrh r0, [r0, #0x5c]
	cmp r0, #0
	ldmleia sp!, {r3, pc}
	mov r3, r2
	arm_func_end ov11_0212FEC8
_0212FF68:
	add r0, ip, r2
	add r0, r0, #0x1000
	strb r3, [r0, #0x180]
	ldr ip, [r1, #4]
	add r2, r2, #1
	add r0, ip, #0x1100
	ldrh r0, [r0, #0x5c]
	cmp r2, r0
	blt _0212FF68
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212FF90: .word OVERLAY11_BSS_02169C7C
_0212FF94: .word 0x4EC4EC4F

	arm_func_start ov11_0212FF98
ov11_0212FF98: ; 0x0212FF98
	stmdb sp!, {r4, lr}
	ldr r1, _02130184 ; =OVERLAY11_BSS_02169C7C
	mov r4, r0
	ldr r2, [r1, #4]
	ldrh r1, [r4]
	add r0, r2, #0x1100
	ldrh r0, [r0, #0x5a]
	cmp r0, r1
	bne _0212FFD0
	add r0, r2, #0x1000
	ldr r1, [r0, #0x160]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _0213001C
	arm_func_end ov11_0212FF98
_0212FFD0:
	add r0, r2, #0x1000
	ldr r2, [r0, #0x164]
	add r1, r2, #1
	str r1, [r0, #0x164]
	cmp r2, #0x10
	blo _02130014
	mov r0, r4
	bl ov11_0212FEC8
	ldr r0, _02130184 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	beq _0213001C
	mov r0, #5
	blx r1
	b _0213001C
_02130014:
	mov r0, #0
	ldmia sp!, {r4, pc}
_0213001C:
	ldrh r2, [r4, #2]
	ldr r0, _02130188 ; =0x0000FFFF
	cmp r2, r0
	bne _0213005C
	ldr r1, _02130184 ; =OVERLAY11_BSS_02169C7C
	add r0, r4, #8
	ldr r1, [r1, #4]
	mov r2, #0x68
	add r1, r1, #0xfe0
	bl MIi_CpuCopy32
	ldr r0, _02130184 ; =OVERLAY11_BSS_02169C7C
	mov r1, #1
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #0x48]
	b _0213017C
_0213005C:
	ldr r1, _02130184 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x168]
	ldr r2, [r1, #4]
	ldrh r1, [r4, #2]
	add r0, r2, #0x1100
	ldrh r0, [r0, #0x5c]
	cmp r1, r0
	blo _021300A4
	add r0, r2, #0x1000
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	beq _0213009C
	mov r0, #4
	blx r1
_0213009C:
	mov r0, #9
	bl ov11_0212F64C
_021300A4:
	ldr r0, _02130184 ; =OVERLAY11_BSS_02169C7C
	ldrh r2, [r4, #2]
	ldr r1, [r0, #4]
	add r3, r1, #0x1180
	ldrb r1, [r3, r2]
	cmp r1, #0
	bne _0213017C
	mov r1, #1
	strb r1, [r3, r2]
	ldr r1, [r0, #4]
	ldrh ip, [r4, #2]
	add r0, r1, #0x1100
	ldrh r0, [r0, #0x5c]
	sub r0, r0, #1
	cmp ip, r0
	bne _0213010C
	mov r0, #0x68
	mul r3, ip, r0
	add r0, r1, #0x1000
	ldr r1, [r0, #0x178]
	ldr r2, [r0, #0x160]
	add r0, r4, #8
	add r1, r1, r3
	sub r2, r2, r3
	bl MIi_CpuCopy32
	b _02130124
_0213010C:
	add r0, r1, #0x1000
	ldr r0, [r0, #0x178]
	mov r2, #0x68
	mla r1, ip, r2, r0
	add r0, r4, #8
	bl MIi_CpuCopy32
_02130124:
	ldr r1, _02130184 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r1, #4]
	add r0, r0, #0x1100
	ldrh r2, [r0, #0x5e]
	add r2, r2, #1
	strh r2, [r0, #0x5e]
	ldr r2, [r1, #4]
	add r0, r2, #0x1100
	ldrh r1, [r0, #0x5e]
	ldrh r0, [r0, #0x5c]
	cmp r1, r0
	addeq r0, r2, #0x1000
	ldreq r1, [r0, #0x48]
	cmpeq r1, #1
	bne _0213017C
	ldr r1, [r0, #0x17c]
	cmp r1, #0
	beq _02130174
	mov r0, #2
	blx r1
_02130174:
	mov r0, #1
	ldmia sp!, {r4, pc}
_0213017C:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02130184: .word OVERLAY11_BSS_02169C7C
_02130188: .word 0x0000FFFF

	arm_func_start ov11_0213018C
ov11_0213018C: ; 0x0213018C
	ldr r0, _021301A0 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1100
	ldrh r0, [r0, #0x5e]
	bx lr
	.align 2, 0
_021301A0: .word OVERLAY11_BSS_02169C7C
	arm_func_end ov11_0213018C

	arm_func_start ov11_021301A4
ov11_021301A4: ; 0x021301A4
	ldr r0, _021301B8 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1100
	ldrh r0, [r0, #0x5c]
	bx lr
	.align 2, 0
_021301B8: .word OVERLAY11_BSS_02169C7C
	arm_func_end ov11_021301A4

	arm_func_start ov11_021301BC
ov11_021301BC: ; 0x021301BC
	ldr r0, _021301D0 ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x16c]
	bx lr
	.align 2, 0
_021301D0: .word OVERLAY11_BSS_02169C7C
	arm_func_end ov11_021301BC

	arm_func_start ov11_021301D4
ov11_021301D4: ; 0x021301D4
	mov r0, #0x1400
	bx lr
	arm_func_end ov11_021301D4

	arm_func_start ov11_021301DC
ov11_021301DC: ; 0x021301DC
	ldr r0, _021301FC ; =OVERLAY11_BSS_02169C7C
	ldr r1, [r0, #4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x48]
	cmp r0, #0
	addne r0, r1, #0xfe0
	moveq r0, #0
	bx lr
	.align 2, 0
_021301FC: .word OVERLAY11_BSS_02169C7C
	arm_func_end ov11_021301DC

	arm_func_start ov11_02130200
ov11_02130200: ; 0x02130200
	ldr r0, _0213020C ; =OVERLAY11_BSS_02169C7C
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_0213020C: .word OVERLAY11_BSS_02169C7C
	arm_func_end ov11_02130200

	arm_func_start ov11_02130210
ov11_02130210: ; 0x02130210
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, _021302D0 ; =OVERLAY11_BSS_02169C7C
	mov r4, r1
	ldr r1, [r0, #4]
	add r3, sp, #0
	mov r2, #0
	arm_func_end ov11_02130210
_02130230:
	add r0, r1, r2
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x170]
	add r2, r2, #1
	cmp r2, #6
	strb r0, [r3], #1
	blt _02130230
	ldr r0, _021302D0 ; =OVERLAY11_BSS_02169C7C
	ldrh r1, [sp, #2]
	ldr lr, [r0, #4]
	ldr ip, _021302D4 ; =0x00005FA2
	strh r1, [sp, #6]
	add r0, lr, #0x1100
	ldrh r0, [r0, #0x5a]
	mov r3, #0
	add r1, sp, #0
	strh r0, [sp, #2]
_02130274:
	mov r2, r3, lsl #1
	ldrh r0, [r1, r2]
	add r3, r3, #1
	cmp r3, #4
	eor r0, ip, r0
	strh r0, [r1, r2]
	ldrh ip, [r1, r2]
	blt _02130274
	add r0, lr, #0x4c
	add r0, r0, #0x1000
	mov r2, #8
	bl CRYPTO_RC4Init
	ldr r0, _021302D0 ; =OVERLAY11_BSS_02169C7C
	mov r1, r5
	ldr r0, [r0, #4]
	mov r3, r4
	add r2, r0, #0x1000
	add r0, r0, #0x4c
	ldr r2, [r2, #0x160]
	add r0, r0, #0x1000
	bl CRYPTO_RC4Encrypt
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021302D0: .word OVERLAY11_BSS_02169C7C
_021302D4: .word 0x00005FA2

	arm_func_start ov11_021302D8
ov11_021302D8: ; 0x021302D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x10]
	bl ov11_02130310
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021302D8

	arm_func_start ov11_021302F0
ov11_021302F0: ; 0x021302F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02130308
	bl _Z9Heap_FreePv
	arm_func_end ov11_021302F0
_02130308:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02130310
ov11_02130310: ; 0x02130310
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end ov11_02130310

	arm_func_start ov11_0213031C
ov11_0213031C: ; 0x0213031C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0213033C
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r5, #0x14]
	arm_func_end ov11_0213031C
_0213033C:
	mov r0, #0x700
	mov r1, #0x20
	bl _Z23Heap_AllocWithAlignmentmm
	str r0, [r5, #0x14]
	bl DWC_Init
	mov r4, r0
	bl DWC_ClearError
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _02130370
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r5, #0x14]
_02130370:
	ldr r0, _02130384 ; =ov11_02130470
	ldr r1, _02130388 ; =ov11_021304A4
	bl DWC_SetMemFunc
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02130384: .word ov11_02130470
_02130388: .word ov11_021304A4

	arm_func_start ov11_0213038C
ov11_0213038C: ; 0x0213038C
	mov r1, #0
	strh r1, [r0]
	bx lr
	arm_func_end ov11_0213038C

	arm_func_start ov11_02130398
ov11_02130398: ; 0x02130398
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x3c
	mov r4, r0
	ldrh r1, [r4]
	cmp r1, #0
	beq _021303C4
	cmp r1, #1
	beq _021303FC
	cmp r1, #2
	beq _02130418
	b _02130464
	arm_func_end ov11_02130398
_021303C4:
	bl ov11_0213031C
	cmp r0, #3
	addeq sp, sp, #0x3c
	moveq r0, #1
	ldmeqia sp!, {r3, r4, pc}
	bl _Z15SetupInterruptsv
	add r0, r4, #4
	bl DWC_InitInet
	mov r0, #2
	bl DWC_SetAuthServer
	bl DWC_ConnectInetAsync
	mov r0, #1
	strh r0, [r4]
	b _02130464
_021303FC:
	bl DWC_ProcessInet
	bl DWC_GetInetStatus
	bl DWC_CheckInet
	cmp r0, #0
	beq _02130464
	mov r0, #2
	strh r0, [r4]
_02130418:
	bl DWC_GetInetStatus
	cmp r0, #4
	beq _02130450
	cmp r0, #7
	beq _02130438
	cmp r0, #8
	beq _02130444
	b _02130464
_02130438:
	add sp, sp, #0x3c
	mov r0, #2
	ldmia sp!, {r3, r4, pc}
_02130444:
	add sp, sp, #0x3c
	mov r0, #2
	ldmia sp!, {r3, r4, pc}
_02130450:
	add r0, sp, #0
	bl DWC_GetApInfo
	add sp, sp, #0x3c
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_02130464:
	mov r0, #3
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov11_02130470
ov11_02130470: ; 0x02130470
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r4, r2
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r6
	mov r1, r4
	bl _Z23Heap_AllocWithAlignmentmm
	mov r4, r0
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02130470

	arm_func_start ov11_021304A4
ov11_021304A4: ; 0x021304A4
	ldr ip, _021304B0 ; =FUN_020022F4
	mov r0, r1
	bx ip
	.align 2, 0
_021304B0: .word _Z9Heap_FreePv
	arm_func_end ov11_021304A4

	arm_func_start ov11_021304B4
ov11_021304B4: ; 0x021304B4
	stmdb sp!, {r4, lr}
	mov r0, #0x40000
	bl _Z10Heap_Allocm
	mov r4, r0
	mov r1, #1
	mov r2, #0
	bl DWC_StartUtility
	mov r0, r4
	bl _Z9Heap_FreePv
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021304B4

	arm_func_start ov11_021304DC
ov11_021304DC: ; 0x021304DC
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x4dc]
	str r2, [r4, #0x4d8]
	str r3, [r4, #0x4e0]
	bl ov11_02130B14
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021304DC

	arm_func_start ov11_021304FC
ov11_021304FC: ; 0x021304FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x4c0]
	cmp r0, #0
	beq _02130514
	bl _Z9Heap_FreePv
	arm_func_end ov11_021304FC
_02130514:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0213051C
ov11_0213051C: ; 0x0213051C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrh r1, [r4, #0x2c]
	cmp r1, #0xe
	addls pc, pc, r1, lsl #2
	b _02130AF8
_02130538: ; jump table
	b _02130AF8 ; case 0
	b _02130574 ; case 1
	b _021305AC ; case 2
	b _02130678 ; case 3
	b _021307B8 ; case 4
	b _021307C8 ; case 5
	b _021307E4 ; case 6
	b _02130AF8 ; case 7
	b _02130AF8 ; case 8
	b _02130854 ; case 9
	b _0213087C ; case 10
	b _021309C0 ; case 11
	b _021309F4 ; case 12
	b _02130A8C ; case 13
	b _02130AA4 ; case 14
	arm_func_end ov11_0213051C
_02130574:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C44
	ldr r0, [r4, #0x4d8]
	bl ov11_0213038C
	mov r0, #2
	strh r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x4b8]
	ldr r0, [r4, #0x4e0]
	mov r1, #1
	str r1, [r0, #0x710]
_021305AC:
	ldr r0, [r4, #0x4e0]
	bl ov11_0212247C
	cmp r0, #0
	bge _021305D8
	ldr r0, _02130B04 ; =DAT_overlay_11_02166640
	mov r1, #6
	str r1, [r0]
	strh r1, [r4, #0x2c]
	ldr r0, [r4, #0x4e0]
	bl ov11_02124520
	b _02130AF8
_021305D8:
	ldr r0, [r4, #0x4d8]
	bl ov11_02130398
	cmp r0, #3
	beq _02130AF8
	cmp r0, #1
	bne _02130634
	ldr r0, _02130B04 ; =DAT_overlay_11_02166640
	mov r1, #9
	str r1, [r0]
	mov r1, #6
	ldr r0, _02130B08 ; =0x00001C20
	strh r1, [r4, #0x2c]
	str r0, [r4, #0x4c4]
	ldr r0, [r4, #0x4e0]
	bl ov11_02124520
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4, #0x4e0]
	mov r3, r2
	mov r1, #0xf
	bl ov11_02122B7C
	b _02130AF8
_02130634:
	cmp r0, #2
	bne _0213065C
	ldr r0, _02130B04 ; =DAT_overlay_11_02166640
	mov r1, #8
	str r1, [r0]
	ldr r0, [r4, #0x4e0]
	bl ov11_02124520
	mov r0, #6
	strh r0, [r4, #0x2c]
	b _02130AF8
_0213065C:
	mov r0, #3
	strh r0, [r4, #0x2c]
	add r0, r4, #0x400
	mov r1, #0x18
	strh r1, [r0, #0xb4]
	mov r0, #0
	str r0, [r4, #0x4b8]
_02130678:
	mov r0, r4
	bl ov11_02130B48
	ldr r1, _02130B04 ; =DAT_overlay_11_02166640
	cmp r0, #8
	str r0, [r1]
	addls pc, pc, r0, lsl #2
	b _02130AF8
_02130694: ; jump table
	b _0213072C ; case 0
	b _021306F4 ; case 1
	b _02130AF8 ; case 2
	b _02130AF8 ; case 3
	b _02130740 ; case 4
	b _0213075C ; case 5
	b _021306B8 ; case 6
	b _02130794 ; case 7
	b _02130710 ; case 8
_021306B8:
	mov r0, #6
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x4e0]
	bl ov11_02124520
	ldr r0, [r4, #0x4b8]
	cmp r0, #0
	beq _02130AF8
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4, #0x4e0]
	mov r3, r2
	mov r1, #0x18
	bl ov11_02122B7C
	b _02130AF8
_021306F4:
	mov r0, #1
	str r0, [r1]
	mov r0, #6
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x4e0]
	bl ov11_02124520
	b _02130AF8
_02130710:
	ldr r0, [r4, #0x4e0]
	bl ov11_02124520
	ldr r0, [r4, #0x4e0]
	bl ov11_0211EFB4
	mov r0, #6
	strh r0, [r4, #0x2c]
	b _02130AF8
_0213072C:
	mov r0, #0xc
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x4e0]
	bl ov11_02124520
	b _02130AF8
_02130740:
	ldr r0, [r4, #0x4e0]
	bl ov11_02124520
	mov r0, #6
	strh r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x4c4]
	b _02130AF8
_0213075C:
	ldr r0, [r4, #0x4e0]
	bl ov11_02124520
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4, #0x4e0]
	mov r3, r2
	mov r1, #0x18
	bl ov11_02122B7C
	mov r0, #4
	strh r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x4c4]
	b _02130AF8
_02130794:
	ldr r0, [r4, #0x4e0]
	bl ov11_02124520
	ldr r0, [r4, #0x4e0]
	bl ov11_0211EFB4
	mov r0, #6
	strh r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x4c4]
	b _02130AF8
_021307B8:
	mov r0, #0x78
	str r0, [r4, #0x4c4]
	mov r0, #5
	strh r0, [r4, #0x2c]
_021307C8:
	ldr r0, [r4, #0x4c4]
	sub r0, r0, #1
	str r0, [r4, #0x4c4]
	cmp r0, #0
	movle r0, #6
	strleh r0, [r4, #0x2c]
	b _02130AF8
_021307E4:
	mov r1, #0x78
	ldr r0, _02130B04 ; =DAT_overlay_11_02166640
	str r1, [r4, #0x4c4]
	ldr r0, [r0]
	cmp r0, #5
	beq _02130810
	cmp r0, #6
	bne _02130818
	ldr r0, [r4, #0x4b8]
	cmp r0, #0
	beq _02130818
_02130810:
	mov r0, #0
	str r0, [r4, #0x4c4]
_02130818:
	ldr r0, [r4, #0x4e0]
	bl ov11_02124520
	ldr r1, _02130B0C ; =OVERLAY11_BSS_02169C88
	mov r2, #0
	ldr r0, _02130B10 ; =ov11_021316C4
	str r2, [r1, #4]
	bl DWC_NdCleanupAsync
	cmp r0, #0
	movne r0, #9
	strneh r0, [r4, #0x2c]
	bne _02130AF8
	bl DWC_CleanupInet
	mov r0, #0xa
	strh r0, [r4, #0x2c]
	b _02130AF8
_02130854:
	ldr r1, [r4, #0x4c4]
	ldr r0, _02130B0C ; =OVERLAY11_BSS_02169C88
	add r1, r1, #1
	str r1, [r4, #0x4c4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02130AF8
	bl DWC_CleanupInet
	mov r0, #0xa
	strh r0, [r4, #0x2c]
_0213087C:
	ldr r0, [r4, #0x4c4]
	add r0, r0, #1
	str r0, [r4, #0x4c4]
	cmp r0, #0x78
	blt _02130AF8
	mov r0, #0xc
	strh r0, [r4, #0x2c]
	mov r2, #0
	ldr r0, _02130B04 ; =DAT_overlay_11_02166640
	str r2, [r4, #0x4c4]
	ldr r0, [r0]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02130AF8
_021308B4: ; jump table
	b _02130AF8 ; case 0
	b _021308D8 ; case 1
	b _02130AF8 ; case 2
	b _02130AF8 ; case 3
	b _0213095C ; case 4
	b _02130988 ; case 5
	b _0213091C ; case 6
	b _021308F4 ; case 7
	b _021309B4 ; case 8
_021308D8:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x4e0]
	mov r3, r2
	mov r1, #3
	bl ov11_02122B7C
	b _02130AF8
_021308F4:
	ldr r0, [r4, #0x4e0]
	bl ov11_0211EFB4
	mov r0, #1
	str r0, [sp]
	mov r1, #5
	ldr r0, [r4, #0x4e0]
	mov r2, r1
	mov r3, #0
	bl ov11_02122B7C
	b _02130AF8
_0213091C:
	ldr r0, [r4, #0x4b8]
	cmp r0, #0
	moveq r0, #0xb
	streqh r0, [r4, #0x2c]
	beq _02130AF8
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x4e0]
	mov r3, r2
	mov r1, #0x19
	bl ov11_02122B7C
	mov r0, #0x78
	str r0, [r4, #0x4c4]
	mov r0, #0xb
	strh r0, [r4, #0x2c]
	b _02130AF8
_0213095C:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x4e0]
	mov r3, r2
	mov r1, #0x31
	bl ov11_02122B7C
	mov r0, #0
	str r0, [r4, #0x4c4]
	mov r0, #0xc
	strh r0, [r4, #0x2c]
	b _02130AF8
_02130988:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x4e0]
	mov r3, r2
	mov r1, #0x30
	bl ov11_02122B7C
	mov r0, #0
	str r0, [r4, #0x4c4]
	mov r0, #0xc
	strh r0, [r4, #0x2c]
	b _02130AF8
_021309B4:
	mov r0, r4
	bl ov11_02131710
	b _02130AF8
_021309C0:
	ldr r0, [r4, #0x4c4]
	sub r0, r0, #1
	str r0, [r4, #0x4c4]
	cmp r0, #0
	bgt _02130AF8
	mov r2, #1
	str r2, [sp]
	ldr r0, [r4, #0x4e0]
	mov r1, #0xf
	mov r3, #0
	bl ov11_02122B7C
	mov r0, #0xc
	strh r0, [r4, #0x2c]
_021309F4:
	ldr r0, _02130B04 ; =DAT_overlay_11_02166640
	ldr r0, [r0]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02130A80
_02130A08: ; jump table
	b _02130A80 ; case 0
	b _02130A30 ; case 1
	b _02130A80 ; case 2
	b _02130A80 ; case 3
	b _02130A30 ; case 4
	b _02130A30 ; case 5
	b _02130A4C ; case 6
	b _02130AF8 ; case 7
	b _02130A30 ; case 8
	b _02130A30 ; case 9
_02130A30:
	ldr r0, [r4, #0x4e0]
	bl ov11_02122428
	cmp r0, #0
	beq _02130AF8
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r3, r4, pc}
_02130A4C:
	ldr r0, [r4, #0x4e0]
	bl ov11_02122428
	cmp r0, #0
	beq _02130AF8
	mov r1, #0
	ldr r0, [r4, #0x4e0]
	sub r2, r1, #1
	bl ov11_0211FB08
	ldr r0, [r4, #0x4e0]
	bl ov11_02124520
	add sp, sp, #4
	mov r0, #3
	ldmia sp!, {r3, r4, pc}
_02130A80:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_02130A8C:
	bl ov11_02131710
	mov r1, #0xe
	ldr r0, _02130B08 ; =0x00001C20
	strh r1, [r4, #0x2c]
	str r0, [r4, #0x4c4]
	b _02130AF8
_02130AA4:
	ldr r0, [r4, #0x4c4]
	sub r0, r0, #1
	str r0, [r4, #0x4c4]
	ldr r0, [r4, #0x4e0]
	bl ov11_02122428
	cmp r0, #0
	bne _02130ACC
	ldr r0, [r4, #0x4c4]
	cmp r0, #0
	bgt _02130AF8
_02130ACC:
	mov r1, #0
	ldr r0, _02130B04 ; =DAT_overlay_11_02166640
	str r1, [r4, #0x4c4]
	ldr r0, [r0]
	cmp r0, #9
	bne _02130AF0
	mov r0, #6
	strh r0, [r4, #0x2c]
	b _02130AF8
_02130AF0:
	mov r0, #5
	strh r0, [r4, #0x2c]
_02130AF8:
	mov r0, #2
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02130B04: .word DAT_overlay_11_02166640
_02130B08: .word 0x00001C20
_02130B0C: .word OVERLAY11_BSS_02169C88
_02130B10: .word ov11_021316C4

	arm_func_start ov11_02130B14
ov11_02130B14: ; 0x02130B14
	mov r1, #0
	str r1, [r0, #0x4c0]
	strh r1, [r0, #0x2c]
	add r0, r0, #0x400
	mov r1, #0x18
	strh r1, [r0, #0xb4]
	bx lr
	arm_func_end ov11_02130B14

	arm_func_start ov11_02130B30
ov11_02130B30: ; 0x02130B30
	mov r1, #1
	strh r1, [r0, #0x2c]
	add r0, r0, #0x400
	mov r1, #0x18
	strh r1, [r0, #0xb4]
	bx lr
	arm_func_end ov11_02130B30

	arm_func_start ov11_02130B48
ov11_02130B48: ; 0x02130B48
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	mov r4, r0
	ldr r0, [r4, #0x4e0]
	bl ov11_0212247C
	cmp r0, #0
	bge _02130BE8
	ldr r0, [r4, #0x4b8]
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x4e0]
	bl ov11_0211F96C
	ldr r0, [r4, #0x4e0]
	mov r1, #3
	bl ov11_0211FBE4
	ldr r0, [r4, #0x4e0]
	mov r1, #0
	bl ov11_02124438
	ldr r0, [r4, #0x4e0]
	bl ov11_0211F904
	ldr r0, [r4, #0x4e0]
	mov r1, #0xb
	bl ov11_021217C0
	ldr r0, [r4, #0x4e0]
	bl ov11_0211EFB4
	mov r2, #0
	mov r1, #0xa
	add r0, r4, #0x400
	strh r1, [r0, #0xb4]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x4e0]
	mov r1, #0x17
	mov r3, r2
	bl ov11_02122B7C
	add sp, sp, #0x34
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov11_02130B48
_02130BE8:
	add r0, r4, #0x400
	ldrh r1, [r0, #0xb4]
	cmp r1, #0x19
	addls pc, pc, r1, lsl #2
	b _02131668
_02130BFC: ; jump table
	b _02130CEC ; case 0
	b _02130D2C ; case 1
	b _02130DF4 ; case 2
	b _02130ED4 ; case 3
	b _02130D9C ; case 4
	b _02130E1C ; case 5
	b _02130E80 ; case 6
	b _02130EFC ; case 7
	b _0213103C ; case 8
	b _02131068 ; case 9
	b _0213158C ; case 10
	b _0213110C ; case 11
	b _021311CC ; case 12
	b _02131200 ; case 13
	b _0213151C ; case 14
	b _02131558 ; case 15
	b _021312C4 ; case 16
	b _02131340 ; case 17
	b _02131380 ; case 18
	b _02131668 ; case 19
	b _021313CC ; case 20
	b _02131418 ; case 21
	b _021314CC ; case 22
	b _02131574 ; case 23
	b _02130C64 ; case 24
	b _02130CAC ; case 25
_02130C64:
	mov r3, #0
	str r3, [r4, #0x4b8]
	mov r2, #0x18
	ldr r1, _02131684 ; =OVERLAY11_BSS_02169C88
	strh r2, [r0, #0xb6]
	str r3, [r1]
	str r3, [r1, #8]
	bl DWC_NASLoginAsync
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r4, #0x400
	mov r2, #0x19
	ldr r1, _02131688 ; =0x00001C20
	strh r2, [r0, #0xb4]
	str r1, [r4, #0x4c8]
	b _02131668
_02130CAC:
	bl DWC_NASLoginProcess
	cmp r0, #2
	beq _02130CC4
	cmp r0, #3
	beq _02130CD0
	b _02130CE0
_02130CC4:
	add sp, sp, #0x34
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02130CD0:
	add r0, r4, #0x400
	mov r1, #0
	strh r1, [r0, #0xb4]
	b _02131668
_02130CE0:
	add sp, sp, #0x34
	mov r0, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02130CEC:
	ldr r3, _02131684 ; =OVERLAY11_BSS_02169C88
	mov r5, #0
	str r5, [r3]
	ldr r0, _0213168C ; =ov11_021316A8
	ldr r1, _02131690 ; =s_YP2E_overlay_11_02166644
	ldr r2, _02131694 ; =s_griUBMRWtExs4ZNS_overlay_11_0216664c
	str r5, [r3, #8]
	bl DWC_NdInitAsync
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r4, #0x400
	mov r1, #1
	strh r1, [r0, #0xb4]
	b _02131668
_02130D2C:
	bl DWC_UpdateConnection
	cmp r0, #0
	addne sp, sp, #0x34
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov11_021316D8
	cmp r0, #0
	beq _02131668
	ldr r0, _02131684 ; =OVERLAY11_BSS_02169C88
	ldr r0, [r0]
	cmp r0, #1
	addeq sp, sp, #0x34
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4, #0x4e0]
	mov r3, r2
	mov r1, #2
	bl ov11_02122B7C
	mov r0, #1
	str r0, [r4, #0x4b8]
	add r0, r4, #0x400
	mov r1, #2
	strh r1, [r0, #0xb6]
	mov r1, #4
	strh r1, [r0, #0xb4]
_02130D9C:
	mov r0, r4
	bl ov11_02131980
	cmp r0, #0
	addne sp, sp, #0x34
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r4
	bl ov11_021316E8
	ldr r1, _02131684 ; =OVERLAY11_BSS_02169C88
	mov r2, #0
	str r2, [r1]
	add r0, r4, #0x4b0
	str r2, [r1, #8]
	bl DWC_NdGetFileListNumAsync
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r4, #0x400
	mov r1, #5
	strh r1, [r0, #0xb4]
	b _02131668
_02130DF4:
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4, #0x4e0]
	mov r3, r2
	mov r1, #2
	bl ov11_02122B7C
	add r0, r4, #0x400
	mov r1, #5
	strh r1, [r0, #0xb4]
_02130E1C:
	mov r0, r4
	bl ov11_02131980
	cmp r0, #0
	addne sp, sp, #0x34
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov11_021316D8
	cmp r0, #0
	beq _02131668
	ldr r0, _02131684 ; =OVERLAY11_BSS_02169C88
	ldr r0, [r0]
	cmp r0, #1
	addeq sp, sp, #0x34
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x4b0]
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r4, #0x400
	mov r1, #6
	strh r1, [r0, #0xb4]
	mov r1, #3
	strh r1, [r0, #0xb6]
_02130E80:
	mov r0, r4
	bl ov11_02131980
	cmp r0, #0
	addne sp, sp, #0x34
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r3, _02131684 ; =OVERLAY11_BSS_02169C88
	mov r1, #0
	str r1, [r3]
	add r0, r4, #0x38
	mov r2, #6
	str r1, [r3, #8]
	bl DWC_NdGetFileListAsync
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r4, #0x400
	mov r1, #7
	strh r1, [r0, #0xb4]
	b _02131668
_02130ED4:
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4, #0x4e0]
	mov r3, r2
	mov r1, #2
	bl ov11_02122B7C
	add r0, r4, #0x400
	mov r1, #7
	strh r1, [r0, #0xb4]
_02130EFC:
	mov r0, r4
	bl ov11_02131980
	cmp r0, #0
	addne sp, sp, #0x34
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov11_021316D8
	cmp r0, #0
	beq _02131668
	ldr r0, _02131684 ; =OVERLAY11_BSS_02169C88
	ldr r0, [r0]
	cmp r0, #1
	addeq sp, sp, #0x34
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x4b0]
	cmp r0, #0
	beq _02130F4C
	cmp r0, #6
	ble _02130F58
_02130F4C:
	add sp, sp, #0x34
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02130F58:
	mov fp, #0
	mov r2, fp
	mvn r1, #0
_02130F64:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x484]
	cmp r2, #0xb
	blt _02130F64
	mov r7, #0
	add r6, sp, #0xc
	mvn r5, #0
_02130F84:
	ldr r1, _02131698 ; =s_PRS_MISSION_02d_prs_overlay_11_02166660
	mov r0, r6
	add r2, r7, #1
	bl OS_SPrintf
	ldr sl, [r4, #0x4b0]
	mov r8, #0
	cmp sl, #0
	ble _02130FD4
	add sb, r4, #0x38
_02130FA8:
	mov r0, r6
	mov r1, sb
	bl strcmp
	cmp r0, #0
	addeq r0, r4, r8, lsl #2
	streq r7, [r0, #0x484]
	beq _02130FD4
	add r8, r8, #1
	cmp r8, sl
	add sb, sb, #0xb0
	blt _02130FA8
_02130FD4:
	ldr r0, [r4, #0x4b0]
	cmp r8, r0
	addge r0, r4, r7, lsl #2
	strge r5, [r0, #0x458]
	bge _02130FF8
	mov fp, #1
	add r1, r4, r7, lsl #2
	mov r0, fp
	str r0, [r1, #0x458]
_02130FF8:
	add r7, r7, #1
	cmp r7, #0xb
	blt _02130F84
	cmp fp, #0
	addeq sp, sp, #0x34
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C5C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd2
	bl sub_02034C44
_0213103C:
	add r1, r4, #0x58
	ldr r0, [r4, #0x4e0]
	add r1, r1, #0x400
	mov r2, #1
	mov r3, #6
	bl ov11_021217D4
	add r0, r4, #0x400
	mov r1, #8
	strh r1, [r0, #0xb6]
	mov r1, #9
	strh r1, [r0, #0xb4]
_02131068:
	mov r0, r4
	bl ov11_02131980
	cmp r0, #0
	addne sp, sp, #0x34
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x4e0]
	bl ov11_021212B4
	cmp r0, #0
	bge _021310C8
	ldr r0, [r4, #0x4e0]
	ldr r0, [r0, #0x70c]
	cmp r0, #0
	ldrne r0, _02131688 ; =0x00001C20
	strne r0, [r4, #0x4c8]
	bne _02131668
	ldr r0, [r4, #0x4c8]
	sub r0, r0, #1
	str r0, [r4, #0x4c8]
	cmp r0, #0
	bgt _02131668
	add sp, sp, #0x34
	mov r0, #5
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021310C8:
	ldr r3, [r4, #0x4b0]
	mov r2, #0
	cmp r3, #0
	ble _021310F8
	sub r1, r0, #0xb
_021310DC:
	add r0, r4, r2, lsl #2
	ldr r0, [r0, #0x484]
	cmp r1, r0
	beq _021310F8
	add r2, r2, #1
	cmp r2, r3
	blt _021310DC
_021310F8:
	cmp r2, r3
	strlt r2, [r4, #0x4bc]
	add r0, r4, #0x400
	mov r1, #0xb
	strh r1, [r0, #0xb4]
_0213110C:
	mov r0, r4
	bl ov11_02131980
	cmp r0, #0
	addne sp, sp, #0x34
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x4c0]
	cmp r0, #0
	beq _0213113C
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x4c0]
_0213113C:
	ldr r1, [r4, #0x4bc]
	mov r0, #0xb0
	mla r0, r1, r0, r4
	ldr r0, [r0, #0xe4]
	bl _Z10Heap_Allocm
	cmp r0, #0
	str r0, [r4, #0x4c0]
	addeq sp, sp, #0x34
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _02131684 ; =OVERLAY11_BSS_02169C88
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	ldr r1, [r4, #0x4bc]
	mov r0, #0xb0
	mul r5, r1, r0
	add r0, r4, r5
	add r3, r4, #0x38
	ldr r2, [r0, #0xe4]
	ldr r1, [r4, #0x4c0]
	add r0, r3, r5
	bl DWC_NdGetFileAsync
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C44
	mov r0, #0
	str r0, [r4, #0x34]
	str r0, [r4, #0x4d0]
	str r0, [r4, #0x4d4]
_021311CC:
	mov r3, #1
	str r3, [sp]
	ldr r0, [r4, #0x4e0]
	mov r1, #4
	mov r2, #0
	bl ov11_02122B7C
	ldr r0, [r4, #0x4e0]
	bl ov11_0211EF5C
	add r0, r4, #0x400
	mov r1, #0xd
	strh r1, [r0, #0xb4]
	mov r1, #0xc
	strh r1, [r0, #0xb6]
_02131200:
	mov r0, r4
	bl ov11_02131980
	cmp r0, #0
	addne sp, sp, #0x34
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x4e0]
	bl ov11_0211F06C
	ldr r0, _02131684 ; =OVERLAY11_BSS_02169C88
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02131288
	add r0, sp, #8
	add r1, sp, #4
	bl DWC_NdGetProgress
	cmp r0, #1
	bne _02131264
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x4d4]
	cmp r0, r1
	beq _02131264
	str r1, [r4, #0x4d4]
	mov r0, #0
	str r0, [r4, #0x4d0]
	b _02131668
_02131264:
	ldr r1, [r4, #0x4d0]
	ldr r0, _0213169C ; =0x00000708
	add r1, r1, #1
	str r1, [r4, #0x4d0]
	cmp r1, r0
	blt _02131668
	add sp, sp, #0x34
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02131288:
	ldr r0, [r4, #0x4e0]
	mov r1, #3
	bl ov11_0211FBE4
	mov r3, #1
	str r3, [sp]
	ldr r0, [r4, #0x4e0]
	mov r1, #0x2d
	mov r2, #0
	bl ov11_02122B7C
	add r0, r4, #0x400
	mov r1, #0x10
	strh r1, [r0, #0xb4]
	mov r0, #0x78
	str r0, [r4, #0x4c4]
	b _02131668
_021312C4:
	ldr r0, [r4, #0x4e0]
	bl ov11_0211F06C
	ldr r0, [r4, #0x4c4]
	sub r0, r0, #1
	str r0, [r4, #0x4c4]
	cmp r0, #0
	bgt _02131668
	mov r3, #1
	str r3, [sp]
	ldr r0, [r4, #0x4e0]
	mov r1, #0x2e
	mov r2, #0
	bl ov11_02122B7C
	add r0, r4, #0x400
	mov r1, #0x11
	strh r1, [r0, #0xb4]
	mov r2, #0x78
	str r2, [r4, #0x4c4]
	ldr r1, _02131684 ; =OVERLAY11_BSS_02169C88
	mov r2, #0
	ldr r0, _021316A0 ; =ov11_021316C4
	str r2, [r1, #4]
	bl DWC_NdCleanupAsync
	cmp r0, #0
	ldreq r0, _02131684 ; =OVERLAY11_BSS_02169C88
	moveq r1, #1
	streq r1, [r0, #4]
	ldr r0, [r4, #0x4e0]
	mov r1, #0
	str r1, [r0, #0x710]
	b _02131668
_02131340:
	ldr r0, [r4, #0x4e0]
	bl ov11_0211F06C
	ldr r0, _02131684 ; =OVERLAY11_BSS_02169C88
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02131668
	ldr r0, [r4, #0x4c4]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r4, #0x4c4]
	bl DWC_CleanupInetAsync
	cmp r0, #0
	beq _02131668
	add r0, r4, #0x400
	mov r1, #0x12
	strh r1, [r0, #0xb4]
_02131380:
	ldr r0, [r4, #0x4e0]
	bl ov11_0211F06C
	ldr r0, [r4, #0x4c4]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r4, #0x4c4]
	bgt _02131668
	mov r3, #1
	str r3, [sp]
	ldr r0, [r4, #0x4e0]
	mov r1, #0x2f
	mov r2, #0
	bl ov11_02122B7C
	add r0, r4, #0x400
	mov r1, #0x14
	strh r1, [r0, #0xb4]
	mov r0, #0x78
	str r0, [r4, #0x4c4]
	b _02131668
_021313CC:
	ldr r0, [r4, #0x4e0]
	bl ov11_0211F06C
	ldr r0, [r4, #0x4c4]
	sub r0, r0, #1
	str r0, [r4, #0x4c4]
	cmp r0, #0
	bgt _02131668
	mov r3, #1
	str r3, [sp]
	ldr r0, [r4, #0x4e0]
	mov r1, #6
	mov r2, #0
	bl ov11_02122B7C
	add r0, r4, #0x400
	mov r1, #0x15
	strh r1, [r0, #0xb4]
	mov r0, #0
	str r0, [r4, #0x4cc]
	b _02131668
_02131418:
	ldr r0, [r4, #0x4e0]
	bl ov11_0211F06C
	ldr r1, [r4, #0x4cc]
	cmp r1, #6
	bge _02131478
	ldr r5, _021316A4 ; =MAIN_BSS_020AF624
_02131430:
	ldr r0, [r4, #0x4e0]
	ldr r2, [r4, #0x4c0]
	mov r3, r5
	bl ov11_02123D20
	cmp r0, #0
	beq _02131464
	add r0, r4, #0x400
	mov r1, #0x16
	strh r1, [r0, #0xb4]
	ldr r0, [r4, #0x4e0]
	ldr r0, [r0, #0x620]
	bl sub_020110E8
	b _02131478
_02131464:
	ldr r0, [r4, #0x4cc]
	add r1, r0, #1
	str r1, [r4, #0x4cc]
	cmp r1, #6
	blt _02131430
_02131478:
	ldr r0, [r4, #0x4cc]
	cmp r0, #6
	blt _02131668
	add r0, r4, #0x400
	mov r1, #0xe
	strh r1, [r0, #0xb4]
	mov r0, #0
	str r0, [r4, #0x4c4]
	ldr r0, [r4, #0x4e0]
	bl ov11_0211F0BC
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xd1
	bl sub_02034C5C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xf0
	bl sub_02034C44
	b _02131668
_021314CC:
	ldr r0, [r4, #0x4e0]
	bl ov11_0211F06C
	ldr r0, [r4, #0x4e0]
	ldr r1, [r4, #0x4cc]
	ldr r0, [r0, #0x620]
	bl sub_020110F8
	cmp r0, #0
	beq _02131668
	cmp r0, #1
	bne _02131510
	ldr r1, [r4, #0x4cc]
	add r0, r4, #0x400
	add r1, r1, #1
	str r1, [r4, #0x4cc]
	mov r1, #0x15
	strh r1, [r0, #0xb4]
	b _02131668
_02131510:
	add sp, sp, #0x34
	mov r0, #7
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213151C:
	ldr r0, [r4, #0x4c4]
	add r0, r0, #1
	str r0, [r4, #0x4c4]
	cmp r0, #0xb4
	blt _02131668
	ldr r1, [r4, #0x4bc]
	ldr r0, [r4, #0x4e0]
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x484]
	mov r2, #0
	bl ov11_0212374C
	add r0, r4, #0x400
	mov r1, #0xf
	strh r1, [r0, #0xb4]
	b _02131668
_02131558:
	ldr r0, [r4, #0x4e0]
	bl ov11_02122428
	cmp r0, #0
	beq _02131668
	add sp, sp, #0x34
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02131574:
	bl ov11_021316D8
	cmp r0, #0
	beq _02131668
	add sp, sp, #0x34
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213158C:
	mov r0, r4
	bl ov11_02131980
	cmp r0, #0
	addne sp, sp, #0x34
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x4e0]
	bl ov11_02121168
	mvn r1, #1
	cmp r0, r1
	beq _021315C4
	cmp r0, #0xe
	beq _021315FC
	b _02131624
_021315C4:
	ldr r0, [r4, #0x4e0]
	ldr r0, [r0, #0x70c]
	cmp r0, #0
	ldrne r0, _02131688 ; =0x00001C20
	strne r0, [r4, #0x4c8]
	bne _02131668
	ldr r0, [r4, #0x4c8]
	sub r0, r0, #1
	str r0, [r4, #0x4c8]
	cmp r0, #0
	bgt _02131668
	add sp, sp, #0x34
	mov r0, #5
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021315FC:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x4e0]
	mov r1, #0
	mov r2, #5
	mov r3, #3
	bl ov11_02122B7C
	add sp, sp, #0x34
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02131624:
	ldr r0, [r4, #0x4e0]
	bl ov11_0211F904
	ldr r0, [r4, #0x4e0]
	bl ov11_0211F96C
	add r0, r4, #0x400
	ldrh r2, [r0, #0xb6]
	mov r1, #5
	strh r2, [r0, #0xb4]
	ldr r0, [r4, #0x4e0]
	bl ov11_0211FBE4
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x4e0]
	mov r1, #0
	mov r2, #5
	mov r3, #3
	bl ov11_02122B7C
_02131668:
	ldr r0, _02131684 ; =OVERLAY11_BSS_02169C88
	ldr r0, [r0]
	cmp r0, #1
	moveq r0, #8
	movne r0, #3
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02131684: .word OVERLAY11_BSS_02169C88
_02131688: .word 0x00001C20
_0213168C: .word ov11_021316A8
_02131690: .word s_YP2E_overlay_11_02166644
_02131694: .word s_griUBMRWtExs4ZNS_overlay_11_0216664c
_02131698: .word s_PRS_MISSION_02d_prs_overlay_11_02166660
_0213169C: .word 0x00000708
_021316A0: .word ov11_021316C4
_021316A4: .word MAIN_BSS_020AF624

	arm_func_start ov11_021316A8
ov11_021316A8: ; 0x021316A8
	ldr r0, _021316C0 ; =OVERLAY11_BSS_02169C88
	mov r2, #1
	str r2, [r0, #8]
	cmp r1, #0
	strne r2, [r0]
	bx lr
	.align 2, 0
_021316C0: .word OVERLAY11_BSS_02169C88
	arm_func_end ov11_021316A8

	arm_func_start ov11_021316C4
ov11_021316C4: ; 0x021316C4
	ldr r0, _021316D4 ; =OVERLAY11_BSS_02169C88
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_021316D4: .word OVERLAY11_BSS_02169C88
	arm_func_end ov11_021316C4

	arm_func_start ov11_021316D8
ov11_021316D8: ; 0x021316D8
	ldr r0, _021316E4 ; =OVERLAY11_BSS_02169C88
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_021316E4: .word OVERLAY11_BSS_02169C88
	arm_func_end ov11_021316D8

	arm_func_start ov11_021316E8
ov11_021316E8: ; 0x021316E8
	stmdb sp!, {r3, lr}
	ldr r0, _0213170C ; =DAT_overlay_11_02166678
	mov r1, r0
	mov r2, r0
	bl DWC_NdSetAttr
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	.align 2, 0
_0213170C: .word DAT_overlay_11_02166678
	arm_func_end ov11_021316E8

	arm_func_start ov11_02131710
ov11_02131710: ; 0x02131710
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r5, r0
	add r0, sp, #4
	mov r4, #0x1a
	bl DWC_GetLastError
	ldr r1, [sp, #4]
	mvn r0, #0
	mul r2, r1, r0
	ldr r1, _02131950 ; =0x00004E20
	str r2, [sp, #4]
	cmp r2, r1
	blt _02131788
	ldr r0, _02131954 ; =0x00005207
	cmp r2, r0
	bgt _02131788
	add r0, r1, #0x65
	cmp r2, r0
	beq _02131778
	add r0, r1, #0x6c
	cmp r2, r0
	beq _02131780
	add r0, r1, #0x6e
	cmp r2, r0
	moveq r4, #0x1d
	b _0213190C
	arm_func_end ov11_02131710
_02131778:
	mov r4, #0x1b
	b _0213190C
_02131780:
	mov r4, #0x1c
	b _0213190C
_02131788:
	ldr r0, _02131958 ; =0x000059D8
	cmp r2, r0
	blt _021317A4
	ldr r0, _0213195C ; =0x00005DBF
	cmp r2, r0
	movle r4, #0x1b
	ble _0213190C
_021317A4:
	ldr r1, _02131960 ; =0x0000CB20
	cmp r2, r1
	blt _02131868
	ldr r0, _02131964 ; =0x0000D033
	cmp r2, r0
	bgt _02131868
	add r0, r1, #0x68
	cmp r2, r0
	bgt _02131820
	bge _02131860
	add r0, r1, #0x64
	cmp r2, r0
	bgt _021317FC
	bge _02131860
	sub r0, r2, r1
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0213190C
_021317EC: ; jump table
	b _02131860 ; case 0
	b _02131860 ; case 1
	b _02131860 ; case 2
	b _02131860 ; case 3
_021317FC:
	ldr r0, _02131968 ; =0x0000CB86
	cmp r2, r0
	bgt _02131810
	beq _02131860
	b _0213190C
_02131810:
	add r0, r0, #1
	cmp r2, r0
	beq _02131860
	b _0213190C
_02131820:
	add r0, r1, #0xc9
	cmp r2, r0
	bgt _02131840
	bge _02131860
	add r0, r1, #0xc8
	cmp r2, r0
	beq _02131860
	b _0213190C
_02131840:
	add r0, r1, #0xca
	cmp r2, r0
	bgt _02131854
	beq _02131860
	b _0213190C
_02131854:
	add r0, r1, #0xcb
	cmp r2, r0
	bne _0213190C
_02131860:
	mov r4, #0x27
	b _0213190C
_02131868:
	cmp r2, #0xc800
	blt _02131880
	ldr r0, _0213196C ; =0x0000C863
	cmp r2, r0
	movle r4, #0x1e
	ble _0213190C
_02131880:
	ldr r0, _02131970 ; =0x0000C350
	cmp r2, r0
	blt _0213189C
	add r0, r0, #0x63
	cmp r2, r0
	movle r4, #0x1f
	ble _0213190C
_0213189C:
	ldr r0, _02131974 ; =0x0000C738
	cmp r2, r0
	blt _021318B8
	add r0, r0, #0x63
	cmp r2, r0
	movle r4, #0x20
	ble _0213190C
_021318B8:
	ldr r1, _02131978 ; =0x0000C79C
	cmp r2, r1
	blt _021318EC
	add r0, r1, #0x63
	cmp r2, r0
	bgt _021318EC
	add r0, r1, #3
	cmp r2, r0
	bne _021318E4
	mov r4, #0x21
	b _0213190C
_021318E4:
	mov r4, #0x20
	b _0213190C
_021318EC:
	ldr r0, _0213197C ; =0x0000C864
	cmp r2, r0
	blt _02131908
	add r0, r0, #0x63
	cmp r2, r0
	movle r4, #0x20
	ble _0213190C
_02131908:
	mov r4, #0x22
_0213190C:
	ldr r0, [r5, #0x4e0]
	add r1, sp, #8
	mvn r3, #0
	bl ov11_021234A8
	ldr r0, [r5, #0x4e0]
	add r1, sp, #8
	mov r2, #0
	bl ov11_02122BA8
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	ldr r0, [r5, #0x4e0]
	mov r1, r4
	mov r3, r2
	bl ov11_02122B7C
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02131950: .word 0x00004E20
_02131954: .word 0x00005207
_02131958: .word 0x000059D8
_0213195C: .word 0x00005DBF
_02131960: .word 0x0000CB20
_02131964: .word 0x0000D033
_02131968: .word 0x0000CB86
_0213196C: .word 0x0000C863
_02131970: .word 0x0000C350
_02131974: .word 0x0000C738
_02131978: .word 0x0000C79C
_0213197C: .word 0x0000C864

	arm_func_start ov11_02131980
ov11_02131980: ; 0x02131980
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _021319E8 ; =OVERLAY11_BSS_02169C88
	ldr r0, [r0]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r3, pc}
	bl DWC_UpdateConnection
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r3, pc}
	add r0, sp, #4
	add r1, sp, #0
	bl DWC_GetLastErrorEx
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r3, pc}
	ldr r0, [sp]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_021319E8: .word OVERLAY11_BSS_02169C88
	arm_func_end ov11_02131980

	arm_func_start _ZN17CCompanyLogoSceneC1Ev
_ZN17CCompanyLogoSceneC1Ev: ; 0x021319EC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN6CSceneC2Ev
	mov r2, #0
	ldr r0, _02131A38 ; =ptr_FUN_overlay_11_02131a3c_overlay_11_021666a4
	mov r1, r2
	stmia r4, {r0, r2}
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	str r2, [r4, #0x24]
	str r2, [r4, #0x1c]
	str r2, [r4, #0x20]
	arm_func_end _ZN17CCompanyLogoSceneC1Ev
_02131A1C:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x10]
	cmp r2, #3
	blt _02131A1C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02131A38: .word ptr_FUN_overlay_11_02131a3c_overlay_11_021666a4

	arm_func_start ov11_02131A3C
ov11_02131A3C: ; 0x02131A3C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02131AEC ; =ptr_FUN_overlay_11_02131a3c_overlay_11_021666a4
	mov r4, r0
	str r1, [r4]
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	beq _02131A74
	beq _02131A6C
	mov r0, r5
	bl ov11_0212F42C
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov11_02131A3C
_02131A6C:
	mov r0, #0
	str r0, [r4, #0x1c]
_02131A74:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02131A9C
	beq _02131A94
	mov r0, r5
	bl sub_02028054
	mov r0, r5
	bl _ZdlPv
_02131A94:
	mov r0, #0
	str r0, [r4, #0xc]
_02131A9C:
	mov r6, #0
	mov r5, r6
_02131AA4:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0x10]
	cmp r7, #0
	beq _02131AD0
	beq _02131AC8
	mov r0, r7
	bl sub_0201FCB4
	mov r0, r7
	bl _ZdlPv
_02131AC8:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x10]
_02131AD0:
	add r6, r6, #1
	cmp r6, #3
	blt _02131AA4
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02131AEC: .word ptr_FUN_overlay_11_02131a3c_overlay_11_021666a4

	arm_func_start ov11_02131AF0
ov11_02131AF0: ; 0x02131AF0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02131BA8 ; =ptr_FUN_overlay_11_02131a3c_overlay_11_021666a4
	mov r4, r0
	str r1, [r4]
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	beq _02131B28
	beq _02131B20
	mov r0, r5
	bl ov11_0212F42C
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov11_02131AF0
_02131B20:
	mov r0, #0
	str r0, [r4, #0x1c]
_02131B28:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02131B50
	beq _02131B48
	mov r0, r5
	bl sub_02028054
	mov r0, r5
	bl _ZdlPv
_02131B48:
	mov r0, #0
	str r0, [r4, #0xc]
_02131B50:
	mov r6, #0
	mov r5, r6
_02131B58:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0x10]
	cmp r7, #0
	beq _02131B84
	beq _02131B7C
	mov r0, r7
	bl sub_0201FCB4
	mov r0, r7
	bl _ZdlPv
_02131B7C:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x10]
_02131B84:
	add r6, r6, #1
	cmp r6, #3
	blt _02131B58
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02131BA8: .word ptr_FUN_overlay_11_02131a3c_overlay_11_021666a4

	arm_func_start ov11_02131BAC
ov11_02131BAC: ; 0x02131BAC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02131BD0
	ldr r0, [r4, #0x1c]
	bl ov11_0212F46C
	str r0, [r4, #0x20]
	arm_func_end ov11_02131BAC
_02131BD0:
	ldr r0, [r4, #8]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _02132000
_02131BE0: ; jump table
	b _02131C1C ; case 0
	b _02131C30 ; case 1
	b _02131CB8 ; case 2
	b _02131CD0 ; case 3
	b _02131D58 ; case 4
	b _02131D9C ; case 5
	b _02131DE8 ; case 6
	b _02131E10 ; case 7
	b _02131E84 ; case 8
	b _02131EE4 ; case 9
	b _02131F38 ; case 10
	b _02132000 ; case 11
	b _02131F8C ; case 12
	b _02131FA4 ; case 13
	b _02132000 ; case 14
_02131C1C:
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02028408
	mov r0, #1
	str r0, [r4, #8]
_02131C30:
	ldr r0, [r4, #0xc]
	bl sub_0202841C
	cmp r0, #0
	beq _02132000
	tst r0, #0x80
	bne _02131C5C
	mov r0, #2
	str r0, [r4, #0x24]
	mov r0, #4
	str r0, [r4, #8]
	b _02132000
_02131C5C:
	and r0, r0, #0x7f
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02131CA4
_02131C6C: ; jump table
	b _02131CA4 ; case 0
	b _02131C90 ; case 1
	b _02131C90 ; case 2
	b _02131CA4 ; case 3
	b _02131C90 ; case 4
	b _02131CA4 ; case 5
	b _02131C90 ; case 6
	b _02131CA4 ; case 7
	b _02131C90 ; case 8
_02131C90:
	mov r0, #3
	str r0, [r4, #0x24]
	mov r0, #4
	str r0, [r4, #8]
	b _02132000
_02131CA4:
	mov r0, #1
	str r0, [r4, #0x24]
	mov r0, #2
	str r0, [r4, #8]
	b _02132000
_02131CB8:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02028408
	mov r0, #3
	str r0, [r4, #8]
	b _02132000
_02131CD0:
	ldr r0, [r4, #0xc]
	bl sub_0202841C
	cmp r0, #0
	beq _02132000
	tst r0, #0x80
	bne _02131CFC
	mov r0, #2
	str r0, [r4, #0x24]
	mov r0, #4
	str r0, [r4, #8]
	b _02132000
_02131CFC:
	and r0, r0, #0x7f
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02131D44
_02131D0C: ; jump table
	b _02131D44 ; case 0
	b _02131D30 ; case 1
	b _02131D30 ; case 2
	b _02131D44 ; case 3
	b _02131D30 ; case 4
	b _02131D44 ; case 5
	b _02131D30 ; case 6
	b _02131D44 ; case 7
	b _02131D30 ; case 8
_02131D30:
	mov r0, #3
	str r0, [r4, #0x24]
	mov r0, #4
	str r0, [r4, #8]
	b _02132000
_02131D44:
	mov r0, #1
	str r0, [r4, #0x24]
	mov r0, #4
	str r0, [r4, #8]
	b _02132000
_02131D58:
	ldr r0, _0213200C ; =s_game
	mov r1, #1
	ldr r0, [r0]
	mov r2, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _0213200C ; =s_game
	mov r1, #1
	ldr r0, [r0]
	mov r2, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	mov r0, #5
	str r0, [r4, #8]
	b _02132000
_02131D9C:
	ldr r0, _0213200C ; =s_game
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02132000
	ldr r0, _0213200C ; =s_game
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02132000
	mov r0, #6
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #4]
	b _02132000
_02131DE8:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	ble _02132000
	mov r0, #7
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #4]
	b _02132000
_02131E10:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0xa
	ble _02131E58
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #8
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	bl sub_0201FD24
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_0201FDE8
	ldr r0, [r4, #0x18]
	bl sub_0201FEBC
	ldr r2, _02132010 ; =0x001F001F
	b _02131E70
_02131E58:
	ldr r1, _02132014 ; =0x66666667
	rsb r3, r0, r0, lsl #5
	smull r0, r2, r1, r3
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #2
	orr r2, r2, r2, lsl #16
_02131E70:
	ldr r0, _0213200C ; =s_game
	ldr r1, _02132018 ; =ov11_0213251C
	ldr r0, [r0]
	bl _ZN5CGame12sub_020100E4EPFvvEm
	b _02132000
_02131E84:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0xa
	ble _02131EB0
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #9
	str r0, [r4, #8]
	mov r2, #0x1f
	b _02131ED0
_02131EB0:
	rsb r0, r0, #0xa
	rsb r1, r0, r0, lsl #5
	ldr r2, _02132014 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #2
	mov r0, r3, lsl #0x10
	orr r2, r0, #0x1f
_02131ED0:
	ldr r0, _0213200C ; =s_game
	ldr r1, _02132018 ; =ov11_0213251C
	ldr r0, [r0]
	bl _ZN5CGame12sub_020100E4EPFvvEm
	b _02132000
_02131EE4:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	ble _02132000
	mov r2, #0xa
	ldr r0, _0213200C ; =s_game
	str r2, [r4, #8]
	ldr r0, [r0]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _0213200C ; =s_game
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	b _02132000
_02131F38:
	ldr r0, _0213200C ; =s_game
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02132000
	ldr r0, _0213200C ; =s_game
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02132000
	ldr r0, [r4, #0x24]
	cmp r0, #3
	moveq r0, #0xd
	streq r0, [r4, #8]
	movne r0, #0xc
	strne r0, [r4, #8]
	b _02132000
_02131F8C:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _02132000
	add sp, sp, #8
	mov r0, #0x12
	ldmia sp!, {r4, pc}
_02131FA4:
	ldr r0, _0213200C ; =s_game
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	mov r1, #0x4000000
	ldr r0, [r1]
	mov r3, #1
	bic r0, r0, #0x1f00
	str r0, [r1]
	str r3, [sp]
	mov r1, #0
	ldr r0, _0213200C ; =s_game
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0x45
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AA84Emmmmm
	mov r0, #0xe
	str r0, [r4, #8]
_02132000:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213200C: .word s_game
_02132010: .word 0x001F001F
_02132014: .word 0x66666667
_02132018: .word ov11_0213251C

	arm_func_start ov11_0213201C
ov11_0213201C: ; 0x0213201C
	bx lr
	arm_func_end ov11_0213201C

	arm_func_start ov11_02132020
ov11_02132020: ; 0x02132020
	bx lr
	arm_func_end ov11_02132020

	arm_func_start ov11_02132024
ov11_02132024: ; 0x02132024
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
	ldr r0, _02132170 ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr lr, _02132174 ; =0x04000060
	ldr r0, _02132178 ; =0xFFFFFDF1
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
	orr r0, r0, #0x100
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x100
	str r0, [r1]
	bl GX_DispOn
	ldr r2, _0213217C ; =0x04001000
	ldr r1, _02132180 ; =0x04000008
	ldr r0, [r2]
	orr r0, r0, #0x10000
	str r0, [r2]
	ldrh r0, [r2, #8]
	and r0, r0, #0x43
	orr r0, r0, #8
	strh r0, [r2, #8]
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0x10
	orr r0, r0, #0x1000
	strh r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02132170: .word 0x04000050
_02132174: .word 0x04000060
_02132178: .word 0xFFFFFDF1
_0213217C: .word 0x04001000
_02132180: .word 0x04000008
	arm_func_end ov11_02132024

	arm_func_start ov11_02132184
ov11_02132184: ; 0x02132184
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r1, _0213245C ; =s_game
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	mov r0, #0x74
	str r1, [r4, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _021321D0
	mov r1, #1
	bl sub_02027FE8
	arm_func_end ov11_02132184
_021321D0:
	ldr r1, _0213245C ; =s_game
	str r0, [r4, #0xc]
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
	mov r1, #0
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x4ac]
	ldr r0, [r0, #0x490]
	ldr r1, [ip, #0x14]
	ldr r2, [ip, #0x18]
	add r3, r3, #0xc
	bl _ZN17UnkClass_020091E812sub_02009328EP17UnkClass_02001C04P11CTouchPanelP10NNSG2dFontPvmS6_mmm
	ldr r0, _0213245C ; =s_game
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AB28Elm
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _0213225C
	ldr r1, _0213245C ; =s_game
	ldr r1, [r1]
	bl sub_0201FC9C
_0213225C:
	str r0, [r4, #0x10]
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _0213227C
	ldr r1, _0213245C ; =s_game
	ldr r1, [r1]
	bl sub_0201FC9C
_0213227C:
	str r0, [r4, #0x14]
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _0213229C
	ldr r1, _0213245C ; =s_game
	ldr r1, [r1]
	bl sub_0201FC9C
_0213229C:
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl sub_02020328
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02020328
	ldr r0, [r4, #0x18]
	mov r1, #4
	bl sub_02020328
	ldr r0, [r4, #0x10]
	ldr r1, _02132460 ; =s_title_overlay_11_021666d0
	ldr r2, _02132464 ; =s_copyright000_overlay_11_021666d8
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x10]
	ldr r1, _02132468 ; =s_copyright000_overlay_11_021666e8
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x10]
	ldr r1, _02132468 ; =s_copyright000_overlay_11_021666e8
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	strh r2, [r0]
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #0x10]
	ldr r1, _02132468 ; =s_copyright000_overlay_11_021666e8
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r4, #0x10]
	bl sub_020204A8
	ldr r0, [r4, #0x14]
	ldr r1, _02132460 ; =s_title_overlay_11_021666d0
	ldr r2, _0213246C ; =s_copyright001_overlay_11_021666f8
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x14]
	ldr r1, _02132470 ; =s_copyright001_overlay_11_02166708
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x14]
	ldr r1, _02132470 ; =s_copyright001_overlay_11_02166708
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	strh r2, [r0]
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r1, _02132470 ; =s_copyright001_overlay_11_02166708
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r4, #0x14]
	bl sub_020204A8
	ldr r0, [r4, #0x18]
	ldr r1, _02132460 ; =s_title_overlay_11_021666d0
	ldr r2, _02132474 ; =s_copyright002_overlay_11_02166718
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x18]
	ldr r1, _02132478 ; =s_copyright002_overlay_11_02166728
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x18]
	ldr r1, _02132478 ; =s_copyright002_overlay_11_02166728
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	strh r2, [r0]
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #0x18]
	ldr r1, _02132478 ; =s_copyright002_overlay_11_02166728
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r4, #0x18]
	bl sub_020204A8
	ldr r0, [r4, #0x10]
	bl sub_0201FD24
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0201FDE8
	ldr r0, [r4, #0x10]
	bl sub_0201FEBC
	ldr r0, [r4, #0x14]
	bl sub_0201FD24
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0201FDE8
	ldr r0, [r4, #0x14]
	bl sub_0201FEBC
	ldr r0, _0213245C ; =s_game
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020345D4
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213245C: .word s_game
_02132460: .word s_title_overlay_11_021666d0
_02132464: .word s_copyright000_overlay_11_021666d8
_02132468: .word s_copyright000_overlay_11_021666e8
_0213246C: .word s_copyright001_overlay_11_021666f8
_02132470: .word s_copyright001_overlay_11_02166708
_02132474: .word s_copyright002_overlay_11_02166718
_02132478: .word s_copyright002_overlay_11_02166728

	arm_func_start ov11_0213247C
ov11_0213247C: ; 0x0213247C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _021324AC
	beq _021324A4
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov11_0213247C
_021324A4:
	mov r0, #0
	str r0, [r5, #0xc]
_021324AC:
	ldr r0, _02132510 ; =s_game
	mov r1, #0x1e
	ldr r0, [r0]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	ldr r0, _02132510 ; =s_game
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AC90Ev
	ldr r0, _02132514 ; =0x04000050
	mov r1, #1
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, _02132518 ; =0x04001050
	mov r1, #1
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, _02132510 ; =s_game
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020092D4Ev
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02132510: .word s_game
_02132514: .word 0x04000050
_02132518: .word 0x04001050

	arm_func_start ov11_0213251C
ov11_0213251C: ; 0x0213251C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, r4, lsl #0x10
	ldr r0, _02132554 ; =0x04000050
	mov r2, r1, lsr #0x10
	mov r1, #1
	bl G2x_SetBlendBrightness_
	mov r0, r4, asr #0x10
	mov r1, r0, lsl #0x10
	ldr r0, _02132558 ; =0x04001050
	mov r2, r1, lsr #0x10
	mov r1, #1
	bl G2x_SetBlendBrightness_
	ldmia sp!, {r4, pc}
	.align 2, 0
_02132554: .word 0x04000050
_02132558: .word 0x04001050
	arm_func_end ov11_0213251C

	arm_func_start ov11_0213255C
ov11_0213255C: ; 0x0213255C
	mov r0, #0x11
	bx lr
	arm_func_end ov11_0213255C

	arm_func_start DWC_AC_Create
DWC_AC_Create: ; 0x02132564
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4]
	mov r0, #1
	mov r1, #0x18
	blx r2
	mov r1, r0
	ldr r3, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r0, #0
	mov r2, #0x18
	str r1, [r3, #0x10]
	bl MIi_CpuClear32
	ldr r0, _02132704 ; =OVERLAY11_BSS_02169C94
	ldr r1, [r4]
	ldr r3, [r0, #0x10]
	mov r2, #1
	str r1, [r3]
	ldr r0, [r4, #4]
	ldr r1, _02132708 ; =0x00000D18
	str r0, [r3, #4]
	strb r2, [r3, #9]
	strb r2, [r3, #0x16]
	mov r0, #0x10
	strb r2, [r3, #8]
	bl ov11_02132984
	ldr r2, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r1, #0x2300
	str r0, [r2]
	mov r0, #2
	bl ov11_02132984
	ldr r2, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r1, #0x58
	str r0, [r2, #4]
	mov r0, #4
	bl ov11_02132984
	ldr r2, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r1, #0xc
	str r0, [r2, #8]
	mov r0, #8
	bl ov11_02132984
	ldr r1, _02132704 ; =OVERLAY11_BSS_02169C94
	ldr r2, _02132708 ; =0x00000D18
	str r0, [r1, #0xc]
	ldr r1, [r1]
	mov r0, #0
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r2, #0x2300
	ldr r1, [r1, #4]
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r2, #0x58
	ldr r1, [r1, #8]
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r2, #0xc
	ldr r1, [r1, #0xc]
	bl MIi_CpuClear32
	ldr r1, _02132704 ; =OVERLAY11_BSS_02169C94
	ldrb r2, [r4, #8]
	ldr r0, [r1]
	strb r2, [r0, #0xd0a]
	ldrb r3, [r0, #0xd0b]
	ldrb r2, [r4, #9]
	bic r3, r3, #3
	and r2, r2, #3
	orr r2, r3, r2
	strb r2, [r0, #0xd0b]
	ldr r3, [r1, #0xc]
	ldr r2, [r4]
	mov r1, #0
	str r2, [r3]
	ldr r2, [r4, #4]
	str r2, [r3, #4]
	str r1, [r3, #8]
	ldrb r2, [r0, #0xd0c]
	ldrb r1, [r4, #0xa]
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r2, r2, r1
	strb r2, [r0, #0xd0c]
	ldrb r1, [r4, #0xb]
	and r2, r2, #0xff
	bic r2, r2, #0x30
	mov r1, r1, lsl #0x1e
	orr r1, r2, r1, lsr #26
	strb r1, [r0, #0xd0c]
	bl ov11_02139914
	ldr r0, _02132704 ; =OVERLAY11_BSS_02169C94
	mov r1, #0x2300
	ldr r0, [r0, #4]
	bl WCM_Init
	cmp r0, #1
	beq _021326F0
	cmp r0, #4
	blt _021326FC
	arm_func_end DWC_AC_Create
_021326F0:
	bl ov11_02132A0C
	mov r0, #0
	ldmia sp!, {r4, pc}
_021326FC:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02132704: .word OVERLAY11_BSS_02169C94
_02132708: .word 0x00000D18

	arm_func_start DWC_AC_Process
DWC_AC_Process: ; 0x0213270C
	stmdb sp!, {r3, r4, r5, lr}
	bl ov11_02132BD4
	mov r5, r0
	cmp r5, #1
	bne _0213272C
	bl ov11_02134898
	mov r5, r0
	b _021327A0
	arm_func_end DWC_AC_Process
_0213272C:
	cmp r5, #7
	bhs _02132754
	bl OS_DisableInterrupts
	mov r4, r0
	bl ov11_021340C8
	mov r5, r0
	bl ov11_02132B74
	mov r0, r4
	bl OS_RestoreInterrupts
	b _021327A0
_02132754:
	cmp r5, #9
	bhs _02132768
	bl ov11_0213332C
	mov r5, r0
	b _021327A0
_02132768:
	cmp r5, #0xa
	bhs _0213277C
	bl ov11_02133FEC
	mov r5, r0
	b _021327A0
_0213277C:
	cmp r5, #0x10
	bhs _02132790
	bl ov11_02134920
	mov r5, r0
	b _021327A0
_02132790:
	cmp r5, #0x11
	bne _021327A0
	bl ov11_021339B4
	mov r5, r0
_021327A0:
	mov r0, r5
	bl ov11_02132B74
	cmp r5, #0x10
	bne _021327C4
	bl ov11_02132C84
	mov r4, r0
	bl ov11_02132C4C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
_021327C4:
	cmp r5, #0x12
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov11_02132C4C
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start DWC_AC_GetStatus
DWC_AC_GetStatus: ; 0x021327DC
	stmdb sp!, {r3, lr}
	bl ov11_02132BD4
	cmp r0, #1
	movls r0, #0
	ldmlsia sp!, {r3, pc}
	cmp r0, #7
	movlo r0, #1
	ldmloia sp!, {r3, pc}
	cmp r0, #9
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	cmp r0, #0xa
	movlo r0, #2
	ldmloia sp!, {r3, pc}
	cmp r0, #0xb
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	cmp r0, #0x10
	movlo r0, #3
	ldmloia sp!, {r3, pc}
	moveq r0, #5
	ldmeqia sp!, {r3, pc}
	cmp r0, #0x11
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	bl ov11_021339D8
	ldmia sp!, {r3, pc}
	arm_func_end DWC_AC_GetStatus

	arm_func_start DWC_AC_GetApType
DWC_AC_GetApType: ; 0x02132848
	stmdb sp!, {r4, lr}
	ldr r0, _02132888 ; =OVERLAY11_BSS_02169C94
	mov r4, #0xff
	ldr r0, [r0, #0x10]
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, pc}
	bl ov11_02132BD4
	cmp r0, #0xa
	blo _02132880
	cmp r0, #0x10
	ldrls r0, _02132888 ; =OVERLAY11_BSS_02169C94
	ldrls r0, [r0, #0x10]
	ldrlsb r4, [r0, #0x17]
	arm_func_end DWC_AC_GetApType
_02132880:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02132888: .word OVERLAY11_BSS_02169C94

	arm_func_start DWC_AC_GetApSpotInfo
DWC_AC_GetApSpotInfo: ; 0x0213288C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov11_02132B1C
	mov r5, r0
	bl ov11_02132BD4
	cmp r0, #0xa
	blo _02132914
	cmp r0, #0x10
	bhi _02132914
	bl WCM_GetApMacAddress
	mov r4, r0
	mov r1, #6
	bl DC_InvalidateRange
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r6
	mov r2, #6
	bl MI_CpuCopy8
	ldrb r0, [r5, #0x17]
	cmp r0, #4
	bne _0213290C
	mov r0, #0
	bl WCM_GetApEssid
	mov r4, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	mov r0, r4
	add r1, r6, #6
	bl ov11_02134E3C
	arm_func_end DWC_AC_GetApSpotInfo
_0213290C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02132914:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start DWC_AC_Destroy
DWC_AC_Destroy: ; 0x0213291C
	stmdb sp!, {r3, lr}
	bl ov11_02132BD4
	strb r0, [sp]
	ands r0, r0, #0xff
	cmpne r0, #0x12
	bne _02132940
	bl ov11_02132A0C
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end DWC_AC_Destroy
_02132940:
	add r0, sp, #0
	bl ov11_0213386C
	ldrb r0, [sp]
	bl ov11_02132B74
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02132958
ov11_02132958: ; 0x02132958
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	mov r4, r1
	bl ov11_02132B1C
	mov r1, r0
	mov r0, r4
	add r1, r1, r5, lsl #8
	mov r2, #0xf0
	bl MIi_CpuCopy32
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02132958

	arm_func_start ov11_02132984
ov11_02132984: ; 0x02132984
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl ov11_02132B1C
	ldrb r1, [r0, #8]
	tst r1, r5
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	orr r1, r1, r5
	strb r1, [r0, #8]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02132984

	arm_func_start ov11_021329C4
ov11_021329C4: ; 0x021329C4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r5, r1
	mov r4, r2
	bl ov11_02132B1C
	ldrb r2, [r0, #8]
	tst r2, r6
	ldmeqia sp!, {r4, r5, r6, pc}
	mvn r1, r6
	and r1, r2, r1
	strb r1, [r0, #8]
	ldr r3, [r0, #4]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_021329C4

	arm_func_start ov11_02132A0C
ov11_02132A0C: ; 0x02132A0C
	stmdb sp!, {r4, lr}
	mov r0, #1
	bl ov11_02132B1C
	mov r4, r0
	ldrb r0, [r4, #8]
	tst r0, #0x10
	beq _02132A50
	mov r0, #0x10
	bl ov11_02132B1C
	ldrb r3, [r4, #8]
	mov r1, r0
	ldr r2, _02132B18 ; =0x00000D18
	bic r0, r3, #0x10
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r0, #0x10
	blx r3
	arm_func_end ov11_02132A0C
_02132A50:
	ldrb r0, [r4, #8]
	tst r0, #8
	beq _02132A84
	mov r0, #8
	bl ov11_02132B1C
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #8
	bic r2, r2, #8
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0xc
	blx r3
_02132A84:
	ldrb r0, [r4, #8]
	tst r0, #4
	beq _02132AB8
	mov r0, #4
	bl ov11_02132B1C
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #4
	bic r2, r2, #4
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x58
	blx r3
_02132AB8:
	ldrb r0, [r4, #8]
	tst r0, #2
	beq _02132AEC
	mov r0, #2
	bl ov11_02132B1C
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #2
	bic r2, r2, #2
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x2300
	blx r3
_02132AEC:
	ldrb r0, [r4, #8]
	tst r0, #1
	ldmeqia sp!, {r4, pc}
	bic r0, r0, #1
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, r4
	mov r0, #1
	mov r2, #0x18
	blx r3
	ldmia sp!, {r4, pc}
	.align 2, 0
_02132B18: .word 0x00000D18

	arm_func_start ov11_02132B1C
ov11_02132B1C: ; 0x02132B1C
	tst r0, #1
	ldrne r0, _02132B70 ; =OVERLAY11_BSS_02169C94
	ldrne r0, [r0, #0x10]
	bxne lr
	tst r0, #2
	ldrne r0, _02132B70 ; =OVERLAY11_BSS_02169C94
	ldrne r0, [r0, #4]
	bxne lr
	tst r0, #4
	ldrne r0, _02132B70 ; =OVERLAY11_BSS_02169C94
	ldrne r0, [r0, #8]
	bxne lr
	tst r0, #8
	ldrne r0, _02132B70 ; =OVERLAY11_BSS_02169C94
	ldrne r0, [r0, #0xc]
	bxne lr
	tst r0, #0x10
	ldrne r0, _02132B70 ; =OVERLAY11_BSS_02169C94
	ldrne r0, [r0]
	moveq r0, #0
	bx lr
	.align 2, 0
_02132B70: .word OVERLAY11_BSS_02169C94
	arm_func_end ov11_02132B1C

	arm_func_start ov11_02132B74
ov11_02132B74: ; 0x02132B74
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov11_02132B1C
	mov r5, r0
	mov r0, #0x10
	bl ov11_02132B1C
	mov r4, r0
	strb r6, [r5, #9]
	cmp r6, #0x10
	ldmhsia sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x16]
	cmp r6, r0
	strhib r6, [r5, #0x16]
	cmphi r6, #7
	ldmlsia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xd0d]
	bl ov11_02132C3C
	strb r0, [r5, #0x15]
	ldrb r0, [r4, #0xd13]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x444]
	strb r0, [r5, #0x14]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02132B74

	arm_func_start ov11_02132BD4
ov11_02132BD4: ; 0x02132BD4
	ldr r0, _02132BE4 ; =OVERLAY11_BSS_02169C94
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, #9]
	bx lr
	.align 2, 0
_02132BE4: .word OVERLAY11_BSS_02169C94
	arm_func_end ov11_02132BD4

	arm_func_start ov11_02132BE8
ov11_02132BE8: ; 0x02132BE8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl ov11_02132B1C
	mov r4, r0
	str r5, [r4, #0xc]
	bl ov11_02132BD4
	strb r0, [r4, #0xa]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02132BE8

	arm_func_start ov11_02132C0C
ov11_02132C0C: ; 0x02132C0C
	ldr r0, _02132C1C ; =OVERLAY11_BSS_02169C94
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
_02132C1C: .word OVERLAY11_BSS_02169C94
	arm_func_end ov11_02132C0C

	arm_func_start ov11_02132C20
ov11_02132C20: ; 0x02132C20
	stmdb sp!, {r3, lr}
	bl ov11_02132C3C
	ldr r1, _02132C38 ; =OVERLAY11_BSS_02169C94
	ldr r1, [r1, #0x10]
	strb r0, [r1, #0x17]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02132C38: .word OVERLAY11_BSS_02169C94
	arm_func_end ov11_02132C20

	arm_func_start ov11_02132C3C
ov11_02132C3C: ; 0x02132C3C
	cmp r0, #2
	subhi r0, r0, #3
	andhi r0, r0, #0xff
	bx lr
	arm_func_end ov11_02132C3C

	arm_func_start ov11_02132C4C
ov11_02132C4C: ; 0x02132C4C
	stmdb sp!, {r3, lr}
	ldr r1, _02132C7C ; =OVERLAY11_BSS_02169C94
	mov r0, #8
	ldr r1, [r1, #0xc]
	mov r2, #0xc
	bl ov11_021329C4
	ldr r0, _02132C7C ; =OVERLAY11_BSS_02169C94
	ldr r2, _02132C80 ; =0x00000D18
	ldr r1, [r0]
	mov r0, #0x10
	bl ov11_021329C4
	ldmia sp!, {r3, pc}
	.align 2, 0
_02132C7C: .word OVERLAY11_BSS_02169C94
_02132C80: .word 0x00000D18
	arm_func_end ov11_02132C4C

	arm_func_start ov11_02132C84
ov11_02132C84: ; 0x02132C84
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _02132D20 ; =OVERLAY11_BSS_02169C94
	mov r1, #0xc0
	ldr r8, [r0]
	ldrb r7, [r8, #0xd13]
	ldrb r2, [r8, #0xd0d]
	add r0, r8, #0x74
	smulbb r4, r7, r1
	add r5, r0, #0x400
	cmp r2, #6
	movhs r0, #1
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb sb, [r8, #0xd12]
	mov r6, #0
	cmp sb, #0
	bls _02132D18
	mov sl, r1
	arm_func_end ov11_02132C84
_02132CC8:
	cmp r6, r7
	beq _02132D08
	add r0, r8, r6, lsl #2
	ldrb r0, [r0, #0x445]
	cmp r0, #6
	bhs _02132D08
	mul r1, r6, sl
	add r0, r8, r1
	add r0, r0, #0x400
	ldrh r2, [r0, #0x7a]
	add r0, r5, r4
	add r1, r5, r1
	bl strncmp
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02132D08:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, sb
	blo _02132CC8
_02132D18:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02132D20: .word OVERLAY11_BSS_02169C94

	arm_func_start ov11_02132D24
ov11_02132D24: ; 0x02132D24
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0x10
	mvn r4, #0
	bl ov11_02132B1C
	mov r6, r0
	mov r0, #1
	bl ov11_02132B1C
	mov r1, #1
	strb r1, [r0, #0xb]
	bl ov11_02132BD4
	cmp r0, #3
	beq _02132D6C
	cmp r0, #4
	beq _02132DD4
	cmp r0, #5
	beq _02132E20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov11_02132D24
_02132D6C:
	ldrh r1, [r7, #0xa]
	ldrb r5, [r6, #0xd11]
	cmp r1, #0
	ldrneb r0, [r7, #0xc]
	cmpne r0, #0
	bne _02132D90
	ldrh r0, [r7, #0x36]
	bl ov11_0213418C
	b _02132E68
_02132D90:
	cmp r1, #1
	cmpne r0, #0x20
	bne _02132DBC
	ldrh r0, [r7, #0x36]
	bl ov11_0213418C
	ldrb r1, [r6, #0xd10]
	mov r0, r7
	add r2, r6, #0x300
	bl ov11_02132F24
	mov r4, r0
	b _02132E68
_02132DBC:
	ldrb r1, [r6, #0xd10]
	mov r0, r7
	add r2, r6, #0x300
	bl ov11_02132F24
	mov r4, r0
	b _02132E68
_02132DD4:
	ldrb r2, [r6, #0xd0f]
	mov r1, #0xc0
	mov r0, r7
	mla r1, r2, r1, r6
	add r1, r1, #0x400
	ldrh r2, [r1, #0xa6]
	mov r1, r6
	sub r2, r2, #1
	and r5, r2, #0xff
	bl ov11_02132FA0
	movs r4, r0
	bmi _02132E68
	ldrb r1, [r6, #0xd0f]
	add r0, r6, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	b _02132E68
_02132E20:
	ldrb r1, [r6, #0xd0f]
	add r2, r6, #0x300
	mov r0, #0x24
	mla r2, r1, r0, r2
	mov r0, r7
	mov r1, #1
	ldrb r5, [r6, #0xd11]
	bl ov11_02132F24
	movs r4, r0
	bmi _02132E68
	ldrb r1, [r6, #0xd0f]
	mov r0, #0x24
	add r2, r6, #0x300
	smulbb r1, r1, r0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	orr r0, r0, #1
	strb r0, [r2, r1]
_02132E68:
	cmp r4, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r7
	mov r2, r5
	mov r3, r6
	bl ov11_02133030
	mov r1, r6
	bl ov11_021331B0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov11_02132E90
ov11_02132E90: ; 0x02132E90
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl ov11_02132B1C
	mov r4, r0
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #4
	bne _02132EE0
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _02132EE0
	add r0, r5, #0xc
	bl ov11_02134E88
	cmp r0, #1
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02132E90
_02132EE0:
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #5
	bne _02132F1C
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _02132F1C
	add r0, r5, #0xc
	bl ov11_02134DDC
	cmp r0, #1
	moveq r0, #7
	ldmeqia sp!, {r3, r4, r5, pc}
_02132F1C:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02132F24
ov11_02132F24: ; 0x02132F24
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	ldrh r3, [r6, #0xa]
	mov r5, r1
	mov r4, r2
	cmp r3, #0x20
	bne _02132F4C
	bl ov11_02132E90
	cmp r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov11_02132F24
_02132F4C:
	cmp r5, #0
	mov r8, #0
	ble _02132F98
	ldrh sb, [r6, #0xa]
	and r7, sb, #0xff
_02132F60:
	ldrb r0, [r4, #3]
	cmp r7, r0
	bne _02132F88
	mov r2, sb
	add r0, r6, #0xc
	add r1, r4, #4
	bl strncmp
	cmp r0, #0
	ldreqb r0, [r4, #1]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02132F88:
	add r8, r8, #1
	cmp r8, r5
	add r4, r4, #0x24
	blt _02132F60
_02132F98:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov11_02132FA0
ov11_02132FA0: ; 0x02132FA0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	ldrh r2, [sl, #0xa]
	mov sb, r1
	cmp r2, #0x20
	bne _02132FC4
	bl ov11_02132E90
	cmp r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov11_02132FA0
_02132FC4:
	ldrb r8, [sb, #0xd12]
	mov r4, #0
	cmp r8, #0
	ble _02133028
	ldrh r7, [sl, #0xa]
	add r0, sb, #0x7c
	mov r5, sb
	add r6, r0, #0x400
_02132FE4:
	add r0, r5, #0x400
	ldrh r0, [r0, #0x7a]
	cmp r7, r0
	bne _02133014
	mov r1, r6
	mov r2, r7
	add r0, sl, #0xc
	bl strncmp
	cmp r0, #0
	addeq r0, sb, r4, lsl #2
	ldreqb r0, [r0, #0x445]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02133014:
	add r4, r4, #1
	cmp r4, r8
	add r5, r5, #0xc0
	add r6, r6, #0xc0
	blt _02132FE4
_02133028:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start ov11_02133030
ov11_02133030: ; 0x02133030
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r3
	ldrb r5, [r6, #0xd12]
	mvn r4, #0
	mov r3, #0
	cmp r5, #0
	ble _021330B4
	ldrb lr, [r1, #4]
	add ip, r6, #0x74
	add ip, ip, #0x400
	arm_func_end ov11_02133030
_02133058:
	ldrb r7, [ip]
	cmp lr, r7
	ldreqb r8, [r1, #5]
	ldreqb r7, [ip, #1]
	cmpeq r8, r7
	ldreqb r8, [r1, #6]
	ldreqb r7, [ip, #2]
	cmpeq r8, r7
	ldreqb r8, [r1, #7]
	ldreqb r7, [ip, #3]
	cmpeq r8, r7
	ldreqb r8, [r1, #8]
	ldreqb r7, [ip, #4]
	cmpeq r8, r7
	ldreqb r8, [r1, #9]
	ldreqb r7, [ip, #5]
	cmpeq r8, r7
	moveq r4, r3
	beq _021330B4
	add r3, r3, #1
	cmp r3, r5
	add ip, ip, #0xc0
	blt _02133058
_021330B4:
	mvn r3, #0
	cmp r4, r3
	bne _021330E4
	mov r3, r6
	and r0, r0, #0xff
	bl ov11_021330F8
	ldrb r0, [r6, #0xd12]
	mov r4, #0xa
	cmp r0, #0xa
	addlo r0, r0, #1
	strlob r0, [r6, #0xd12]
	b _021330F0
_021330E4:
	mov r0, r4
	mov r3, r6
	bl ov11_02133144
_021330F0:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov11_021330F8
ov11_021330F8: ; 0x021330F8
	stmdb sp!, {r3, lr}
	add ip, r3, #0x6c
	strb r0, [ip, #0x401]
	ldrh r0, [r1, #2]
	and r2, r2, #0x7f
	tst r0, #2
	mov r0, r0, asr #2
	addeq r0, r0, #0x19
	and r0, r0, #0xff
	strb r0, [ip, #0x402]
	ldrb lr, [ip, #0x403]
	mov r0, r1
	bic r1, lr, #0x7f
	orr lr, r1, r2
	add r1, r3, #0xbf0
	mov r2, #0xc0
	strb lr, [ip, #0x403]
	bl MIi_CpuCopy32
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021330F8

	arm_func_start ov11_02133144
ov11_02133144: ; 0x02133144
	stmdb sp!, {r3, r4, r5, lr}
	ldrh r4, [r1, #2]
	add ip, r3, #0x44
	mov lr, #0xc0
	add r5, ip, #0x400
	mul ip, r0, lr
	tst r4, #2
	add r0, r5, r0, lsl #2
	mov r4, r4, asr #2
	addeq r4, r4, #0x19
	and r4, r4, #0xff
	ldrb lr, [r0, #2]
	and r4, r4, #0xff
	add r3, r3, #0x470
	cmp r4, lr
	bls _0213319C
	strb r4, [r0, #2]
	ldrb lr, [r0, #3]
	and r2, r2, #0x7f
	bic lr, lr, #0x7f
	orr r2, lr, r2
	strb r2, [r0, #3]
	arm_func_end ov11_02133144
_0213319C:
	mov r0, r1
	add r1, r3, ip
	mov r2, #0xc0
	bl MIi_CpuCopy32
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_021331B0
ov11_021331B0: ; 0x021331B0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc4
	mov r4, r0
	add r0, r1, #0x44
	add r7, r0, #0x400
	add r8, r1, #0x470
	subs r6, r4, #1
	bmi _02133278
	mov r0, #0xc0
	mla sl, r6, r0, r8
	add sb, r7, r6, lsl #2
	add fp, sp, #0
	arm_func_end ov11_021331B0
_021331E0:
	add r0, r7, r4, lsl #2
	ldrb r1, [r0, #2]
	add r0, r7, r6, lsl #2
	ldrb r0, [r0, #2]
	cmp r1, r0
	blo _02133278
	mov r0, sb
	mov r1, fp
	mov r2, #4
	bl MIi_CpuCopy32
	add r5, r7, r4, lsl #2
	mov r0, r5
	mov r1, sb
	mov r2, #4
	bl MIi_CpuCopy32
	mov r1, r5
	mov r0, fp
	mov r2, #4
	bl MIi_CpuCopy32
	mov r0, sl
	add r1, sp, #4
	mov r2, #0xc0
	bl MIi_CpuCopy32
	mov r0, #0xc0
	mul r5, r4, r0
	add r0, r8, r5
	mov r1, sl
	mov r2, #0xc0
	bl MIi_CpuCopy32
	add r1, r8, r5
	add r0, sp, #4
	mov r2, #0xc0
	bl MIi_CpuCopy32
	mov r4, r6
	sub sb, sb, #4
	sub sl, sl, #0xc0
	subs r6, r6, #1
	bpl _021331E0
_02133278:
	add r1, r7, #0x28
	mov r0, #0
	mov r2, #4
	bl MIi_CpuClear32
	add r1, r8, #0x780
	mov r0, #0
	mov r2, #0xc0
	bl MIi_CpuClear32
	add sp, sp, #0xc4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov11_021332A0
ov11_021332A0: ; 0x021332A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	ldrsh r1, [r4]
	cmp r1, #5
	bne _02133318
	ldrsh r1, [r4, #2]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #8]
	cmp r1, #0xd
	beq _021332E8
	cmp r1, #0xf
	beq _021332F4
	cmp r1, #0x11
	beq _02133300
	b _0213330C
	arm_func_end ov11_021332A0
_021332E8:
	mov r1, #1
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021332F4:
	mov r1, #2
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_02133300:
	mov r1, #3
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_0213330C:
	mov r1, #4
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_02133318:
	cmp r1, #7
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl ov11_02132D24
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0213332C
ov11_0213332C: ; 0x0213332C
	stmdb sp!, {r4, lr}
	bl ov11_02132BD4
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	cmp r4, #7
	beq _02133354
	cmp r4, #8
	beq _02133360
	b _02133368
	arm_func_end ov11_0213332C
_02133354:
	bl ov11_02133370
	mov r4, r0
	b _02133368
_02133360:
	bl ov11_02133468
	mov r4, r0
_02133368:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02133370
ov11_02133370: ; 0x02133370
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0xd13]
	add r3, r5, #0x470
	mov r1, #0xc0
	mla r4, r2, r1, r3
	bl ov11_021335A4
	add r1, r5, #0xb8
	strb r0, [r5, #0xd0d]
	add r0, r1, #0xc00
	mov r1, #0
	mov r2, #0x52
	bl MI_CpuFill8
	add r2, r5, #0xb8
	ldrb r1, [r5, #0xd0d]
	mov r0, r5
	add r2, r2, #0xc00
	bl ov11_02133778
	cmp r0, #0
	ldrb r0, [r5, #0xd0b]
	bic r0, r0, #0xc
	beq _02133424
	orr r0, r0, #4
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	tst r0, #1
	bne _021333F8
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02133370
_021333F8:
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldreqb r0, [r4, #0x15]
	cmpeq r0, #0
	bne _02133454
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, pc}
_02133424:
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _02133454
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, pc}
_02133454:
	mov r0, #0
	strb r0, [r5, #0xd15]
	strb r0, [r5, #0xd14]
	mov r0, #8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02133468
ov11_02133468: ; 0x02133468
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl WCM_GetPhase
	ldrb r2, [r7, #0xd13]
	mov r1, #0xc0
	cmp r0, #3
	add r5, r7, #0x470
	smulbb r4, r2, r1
	bne _02133578
	mov r0, r7
	bl ov11_02133740
	ldrb r1, [r7, #0xd15]
	mov r6, r0
	add r0, r1, #1
	and r1, r0, #0xff
	strb r0, [r7, #0xd15]
	cmp r1, #3
	bls _021334D0
	mov r0, #0
	strb r0, [r7, #0xd15]
	ldrb r1, [r7, #0xd13]
	mov r2, #1
	mov r0, #9
	add r1, r7, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov11_02133468
_021334D0:
	cmp r1, #1
	beq _02133554
	ldrb r0, [r7, #0xd14]
	cmp r0, #1
	bne _021334F4
	ldrb r0, [r7, #0xd0b]
	bic r0, r0, #0xc
	strb r0, [r7, #0xd0b]
	b _02133554
_021334F4:
	cmp r0, #2
	bne _0213351C
	mov r0, #0
	strb r0, [r7, #0xd15]
	ldrb r1, [r7, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r7, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0213351C:
	cmp r0, #3
	bne _02133544
	mov r0, #0
	strb r0, [r7, #0xd15]
	ldrb r1, [r7, #0xd13]
	mov r2, #4
	mov r0, #9
	add r1, r7, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02133544:
	cmp r1, #3
	ldreqb r0, [r7, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r7, #0xd0b]
_02133554:
	mov r0, r7
	bl ov11_0213375C
	mov r2, r0
	add r1, r7, #0xb8
	add r0, r5, r4
	add r1, r1, #0xc00
	orr r2, r6, r2
	bl WCM_ConnectAsync
	b _0213359C
_02133578:
	cmp r0, #9
	bne _0213359C
	mov r0, #0
	strb r0, [r7, #0xd15]
	bl OS_GetTick
	str r0, [r7, #0xcb0]
	str r1, [r7, #0xcb4]
	mov r0, #0xa
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0213359C:
	mov r0, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov11_021335A4
ov11_021335A4: ; 0x021335A4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldrb r2, [sl, #0xd13]
	ldrb r1, [sl, #0xd0c]
	add r3, sl, #0x470
	mov r0, #0xc0
	mla r4, r2, r0, r3
	mov r0, r1, lsl #0x18
	movs r0, r0, lsr #0x1e
	mov r0, #0
	str r0, [sp]
	bne _021336C0
	ldrh r0, [r4, #0xa]
	ldr r6, [sp]
	cmp r0, #0x20
	bne _02133604
	mov r0, r4
	bl ov11_02132E90
	cmp r0, #0
	str r0, [sp]
	movle r0, #0
	addgt r6, r6, #1
	strle r0, [sp]
	b _02133628
	arm_func_end ov11_021335A4
_02133604:
	cmp r0, #8
	bne _02133628
	mov r0, r4
	bl ov11_02133C78
	cmp r0, #0
	str r0, [sp]
	moveq r0, #0
	addne r6, r6, #1
	streq r0, [sp]
_02133628:
	ldrb r0, [sl, #0xd10]
	mov r5, #0
	cmp r0, #0
	ble _02133734
	mov r7, sl
	add r8, sl, #0x304
	add sb, sl, #0x300
	add fp, sl, #0x10c
_02133648:
	ldrh r2, [r4, #0xa]
	ldrb r0, [r7, #0x303]
	cmp r2, r0
	bne _021336A0
	mov r1, r8
	add r0, r4, #0xc
	bl strncmp
	cmp r0, #0
	bne _021336A0
	cmp r6, #0
	ldreqb r0, [r7, #0x301]
	streq r0, [sp]
	beq _0213369C
	ldrb r0, [sb]
	bic r0, r0, #0xf0
	orr r0, r0, #0x10
	strb r0, [sb]
	ldrb r0, [fp, #0xc00]
	bic r0, r0, #0xc0
	orr r0, r0, #0x40
	strb r0, [fp, #0xc00]
_0213369C:
	add r6, r6, #1
_021336A0:
	ldrb r0, [sl, #0xd10]
	add r5, r5, #1
	add r7, r7, #0x24
	cmp r5, r0
	add r8, r8, #0x24
	add sb, sb, #0x24
	blt _02133648
	b _02133734
_021336C0:
	ldrb r0, [sl, #0xd10]
	ldr r5, [sp]
	mov r4, r5
	cmp r0, #0
	ble _02133724
	mov r3, sl
	add r2, sl, #0x300
_021336DC:
	ldrb r0, [r2]
	mov r1, r0, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	bne _0213370C
	cmp r4, #0
	bne _02133708
	bic r0, r0, #0xf0
	strb r0, [r2]
	ldrb r0, [r3, #0x301]
	str r0, [sp]
_02133708:
	add r4, r4, #1
_0213370C:
	ldrb r0, [sl, #0xd10]
	add r5, r5, #1
	add r2, r2, #0x24
	cmp r5, r0
	add r3, r3, #0x24
	blt _021336DC
_02133724:
	cmp r4, #1
	ldreqb r0, [sl, #0xd0c]
	biceq r0, r0, #0xc0
	streqb r0, [sl, #0xd0c]
_02133734:
	ldr r0, [sp]
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov11_02133740
ov11_02133740: ; 0x02133740
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0x30000
	movne r0, #0x20000
	bx lr
	arm_func_end ov11_02133740

	arm_func_start ov11_0213375C
ov11_0213375C: ; 0x0213375C
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xc0000
	movne r0, #0x80000
	bx lr
	arm_func_end ov11_0213375C

	arm_func_start ov11_02133778
ov11_02133778: ; 0x02133778
	stmdb sp!, {r4, lr}
	mov r4, r2
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _02133858
_0213378C: ; jump table
	b _021337BC ; case 0
	b _021337B8 ; case 1
	b _021337B4 ; case 2
	b _021337E8 ; case 3
	b _021337E4 ; case 4
	b _021337E0 ; case 5
	b _0213380C ; case 6
	b _02133834 ; case 7
	b _02133858 ; case 8
	b _02133858 ; case 9
	arm_func_end ov11_02133778
_021337B4:
	add r0, r0, #0x100
_021337B8:
	add r0, r0, #0x100
_021337BC:
	ldrb r2, [r0, #0xe6]
	add r0, r0, #0x80
	add r1, r4, #2
	mov r2, r2, lsl #0x1e
	mov r3, r2, lsr #0x1e
	mov r2, #0x50
	strb r3, [r4]
	bl MI_CpuCopy8
	b _02133858
_021337E0:
	add r0, r0, #0x100
_021337E4:
	add r0, r0, #0x100
_021337E8:
	mov r3, #1
	add r0, r0, #0xd1
	add r1, r4, #2
	mov r2, #0x14
	strb r3, [r4]
	bl MI_CpuCopy8
	mov r0, #0
	strb r0, [r4, #0x16]
	b _02133858
_0213380C:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl ov11_02134EAC
	b _02133858
_02133834:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl ov11_02134E14
_02133858:
	ldrb r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_0213386C
ov11_0213386C: ; 0x0213386C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _021338B8
	bl ov11_021338F4
	cmp r0, #1
	bne _0213389C
	mov r0, #0
	strb r0, [r4]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0213386C
_0213389C:
	mvn r1, #0
	cmp r0, r1
	bne _021338EC
	mov r0, #0x12
	strb r0, [r4]
	mov r0, #1
	ldmia sp!, {r4, pc}
_021338B8:
	cmp r0, #0xe
	bne _021338D4
	bl ov11_02137D38
	bl ov11_02137C40
	mov r0, #0xc
	strb r0, [r4]
	b _021338EC
_021338D4:
	cmp r0, #0x12
	bhs _021338EC
	bl ov11_02133984
	cmp r0, #1
	moveq r0, #0xa
	streqb r0, [r4]
_021338EC:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_021338F4
ov11_021338F4: ; 0x021338F4
	stmdb sp!, {r3, lr}
	bl WCM_GetPhase
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _0213397C
_02133908: ; jump table
	b _0213393C ; case 0
	b _02133944 ; case 1
	b _0213397C ; case 2
	b _0213394C ; case 3
	b _0213397C ; case 4
	b _0213397C ; case 5
	b _02133954 ; case 6
	b _0213397C ; case 7
	b _0213397C ; case 8
	b _0213395C ; case 9
	b _0213397C ; case 10
	b _0213396C ; case 11
	b _02133964 ; case 12
	arm_func_end ov11_021338F4
_0213393C:
	mov r0, #1
	ldmia sp!, {r3, pc}
_02133944:
	bl WCM_Finish
	b _0213397C
_0213394C:
	bl WCM_CleanupAsync
	b _0213397C
_02133954:
	bl WCM_EndSearchAsync
	b _0213397C
_0213395C:
	bl WCM_DisconnectAsync
	b _0213397C
_02133964:
	bl WCM_TerminateAsync
	b _0213397C
_0213396C:
	mov r0, #0
	bl ov11_02132BE8
	mvn r0, #0
	ldmia sp!, {r3, pc}
_0213397C:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02133984
ov11_02133984: ; 0x02133984
	stmdb sp!, {r3, lr}
	bl SOCL_CalmDown
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl SOC_Cleanup
	cmp r0, #0
	mvnne r1, #0x26
	cmpne r0, r1
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02133984

	arm_func_start ov11_021339B4
ov11_021339B4: ; 0x021339B4
	stmdb sp!, {r3, lr}
	mov r0, #1
	bl ov11_02132B1C
	add r0, r0, #0xa
	bl ov11_0213386C
	cmp r0, #1
	moveq r0, #0x12
	movne r0, #0x11
	ldmia sp!, {r3, pc}
	arm_func_end ov11_021339B4

	arm_func_start ov11_021339D8
ov11_021339D8: ; 0x021339D8
	stmdb sp!, {r4, lr}
	mov r0, #1
	bl ov11_02132B1C
	mov r4, r0
	bl ov11_02132C0C
	cmp r0, #4
	bge _021339FC
	bl ov11_02133A28
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021339D8
_021339FC:
	cmp r0, #5
	bge _02133A0C
	bl ov11_02133A6C
	ldmia sp!, {r4, pc}
_02133A0C:
	cmp r0, #5
	mov r0, r4
	bne _02133A20
	bl ov11_02133A74
	ldmia sp!, {r4, pc}
_02133A20:
	bl ov11_02133A90
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02133A28
ov11_02133A28: ; 0x02133A28
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02133A64
_02133A34: ; jump table
	b _02133A4C ; case 0
	b _02133A44 ; case 1
	b _02133A54 ; case 2
	b _02133A5C ; case 3
	arm_func_end ov11_02133A28
_02133A44:
	mvn r0, #8
	bx lr
_02133A4C:
	mvn r0, #9
	bx lr
_02133A54:
	mvn r0, #7
	bx lr
_02133A5C:
	mvn r0, #6
	bx lr
_02133A64:
	mov r0, #0
	bx lr

	arm_func_start ov11_02133A6C
ov11_02133A6C: ; 0x02133A6C
	mvn r0, #5
	bx lr
	arm_func_end ov11_02133A6C

	arm_func_start ov11_02133A74
ov11_02133A74: ; 0x02133A74
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	ldreq r0, _02133A88 ; =0xFFFF3C4D
	ldrne r0, _02133A8C ; =0xFFFF3865
	bx lr
	.align 2, 0
_02133A88: .word 0xFFFF3C4D
_02133A8C: .word 0xFFFF3865
	arm_func_end ov11_02133A74

	arm_func_start ov11_02133A90
ov11_02133A90: ; 0x02133A90
	ldrb r1, [r0, #0x16]
	cmp r1, #0xa
	bhs _02133ADC
	ldrb r1, [r0, #0x14]
	cmp r1, #3
	bne _02133AB8
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BBC ; =0xFFFF3864
	sub r3, r0, r1
	b _02133BB4
	arm_func_end ov11_02133A90
_02133AB8:
	cmp r1, #4
	ldrb r1, [r0, #0x15]
	ldrne r0, _02133BC0 ; =0xFFFF379C
	subne r3, r0, r1
	bne _02133BB4
	mov r0, #0xc800
	rsb r0, r0, #0
	sub r3, r0, r1
	b _02133BB4
_02133ADC:
	cmp r1, #0xd
	bhs _02133AF4
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BC4 ; =0xFFFF34E0
	sub r3, r0, r1
	b _02133BB4
_02133AF4:
	ldr r3, [r0, #0x10]
	cmp r3, #0
	bne _02133B10
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BC8 ; =0xFFFF3CB0
	sub r3, r0, r1
	b _02133BB4
_02133B10:
	mvn r2, #0
	cmp r3, r2
	bne _02133B2C
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BCC ; =0xFFFF347C
	sub r3, r0, r1
	b _02133BB4
_02133B2C:
	sub r1, r2, #1
	cmp r3, r1
	bne _02133B48
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BD0 ; =0xFFFF3418
	sub r3, r0, r1
	b _02133BB4
_02133B48:
	sub r1, r2, #2
	cmp r3, r1
	bne _02133B64
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BD4 ; =0xFFFF33B4
	sub r3, r0, r1
	b _02133BB4
_02133B64:
	sub r1, r2, #3
	cmp r3, r1
	bne _02133B80
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BD8 ; =0xFFFF30F8
	sub r3, r0, r1
	b _02133BB4
_02133B80:
	sub r1, r2, #4
	cmp r3, r1
	bne _02133B9C
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BDC ; =0xFFFF3094
	sub r3, r0, r1
	b _02133BB4
_02133B9C:
	sub r1, r2, #5
	cmp r3, r1
	bne _02133BB4
	ldrb r1, [r0, #0x15]
	ldr r0, _02133BE0 ; =0xFFFF3030
	sub r3, r0, r1
_02133BB4:
	mov r0, r3
	bx lr
	.align 2, 0
_02133BBC: .word 0xFFFF3864
_02133BC0: .word 0xFFFF379C
_02133BC4: .word 0xFFFF34E0
_02133BC8: .word 0xFFFF3CB0
_02133BCC: .word 0xFFFF347C
_02133BD0: .word 0xFFFF3418
_02133BD4: .word 0xFFFF33B4
_02133BD8: .word 0xFFFF30F8
_02133BDC: .word 0xFFFF3094
_02133BE0: .word 0xFFFF3030

	arm_func_start ov11_02133BE4
ov11_02133BE4: ; 0x02133BE4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl ov11_02132B1C
	mov r4, r0
	cmp r5, #0
	beq _02133C14
	cmp r5, #1
	beq _02133C34
	cmp r5, #2
	beq _02133C4C
	b _02133C70
	arm_func_end ov11_02133BE4
_02133C14:
	add r1, r4, #0x300
	mov r0, #0
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r0, r4
	bl ov11_02133CC4
	strb r0, [r4, #0xd10]
	b _02133C70
_02133C34:
	bl ov11_02133F18
	strb r0, [r4, #0xd10]
	mov r0, r4
	bl ov11_02133FA8
	strb r0, [r4, #0xd0f]
	b _02133C70
_02133C4C:
	add r1, r4, #0x300
	mov r0, #0
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r1, #0
	mov r0, r4
	strb r1, [r4, #0xd0f]
	bl ov11_02133D24
	strb r0, [r4, #0xd10]
_02133C70:
	ldrb r0, [r4, #0xd10]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02133C78
ov11_02133C78: ; 0x02133C78
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	ldrb r0, [r0, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #6
	bne _02133CB8
	ldr r1, _02133CC0 ; =0x02162B20
	add r0, r4, #0xc
	mov r2, #8
	bl strncmp
	cmp r0, #0
	moveq r0, #8
	ldmeqia sp!, {r4, pc}
	arm_func_end ov11_02133C78
_02133CB8:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02133CC0: .word s_FREESPOT_overlay_11_02162b20

	arm_func_start ov11_02133CC4
ov11_02133CC4: ; 0x02133CC4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r4, r5, #0x300
	bl ov11_02133E10
	ldrb r1, [r5, #0xd0c]
	mov r5, r0
	mov r0, #0x24
	mla r4, r5, r0, r4
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #6
	bne _02133D18
	ldr r0, _02133D20 ; =0x02162B20
	add r1, r4, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	strb r1, [r4, #3]
	add r0, r5, #1
	strb r1, [r4, #1]
	and r5, r0, #0xff
	arm_func_end ov11_02133CC4
_02133D18:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02133D20: .word s_FREESPOT_overlay_11_02162b20

	arm_func_start ov11_02133D24
ov11_02133D24: ; 0x02133D24
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r5, r6, #0x300
	bl ov11_02133E10
	ldrb r1, [r6, #0xd0c]
	mov r4, r0
	mov r0, #0x24
	mla r5, r4, r0, r5
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #4
	bne _02133D80
	ldr r0, _02133E04 ; =s_NWCUSBAP_overlay_11_02166738
	add r1, r5, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	add r0, r4, #1
	strb r1, [r5, #3]
	mov r1, #6
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
	arm_func_end ov11_02133D24
_02133D80:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #7
	bne _02133DC0
	ldr r0, _02133E08 ; =s_Wayport2FREESPOTNINTENDOWFC_overlay_11_02162b18
	add r1, r5, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	add r0, r4, #1
	strb r1, [r5, #3]
	mov r1, #9
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
_02133DC0:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #8
	bne _02133DFC
	ldr r0, _02133E0C ; =0x02162B28
	add r1, r5, #4
	mov r2, #0xb
	bl MI_CpuCopy8
	mov r1, #0xb
	add r0, r4, #1
	strb r1, [r5, #3]
	mov r1, #0xa
	strb r1, [r5, #1]
	and r4, r0, #0xff
_02133DFC:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02133E04: .word s_NWCUSBAP_overlay_11_02166738
_02133E08: .word s_Wayport2_overlay_11_02162b18
_02133E0C: .word s_NINTENDOWFC_overlay_11_02162b28

	arm_func_start ov11_02133E10
ov11_02133E10: ; 0x02133E10
	stmdb sp!, {r4, r5, r6, lr}
	mov r2, #0
	mov r3, r0
	mov r1, r2
	add ip, r0, #0x300
	arm_func_end ov11_02133E10
_02133E24:
	ldrb r4, [r0, #0xd0c]
	mov r4, r4, lsl #0x1c
	movs r5, r4, lsr #0x1c
	addne r4, r1, #1
	cmpne r5, r4
	bne _02133F00
	ldrb r4, [r3, #0xe7]
	cmp r4, #0xff
	beq _02133F00
	mov r6, #0
_02133E4C:
	add r4, r3, r6
	ldrb lr, [r4, #0x40]
	cmp lr, #0
	beq _02133E74
	add r4, r6, #1
	add r5, ip, r6
	and r6, r4, #0xff
	strb lr, [r5, #4]
	cmp r6, #0x20
	blo _02133E4C
_02133E74:
	cmp r6, #0
	moveq r4, #0
	beq _02133E8C
	strb r6, [ip, #3]
	strb r1, [ip, #1]
	mov r4, #1
_02133E8C:
	cmp r4, #0
	ldrb r4, [r3, #0xe7]
	addne r2, r2, #1
	andne r2, r2, #0xff
	addne ip, ip, #0x24
	cmp r4, #1
	bne _02133F00
	mov r6, #0
_02133EAC:
	add r4, r3, r6
	ldrb r5, [r4, #0x60]
	cmp r5, #0
	beq _02133ED4
	add lr, r6, #1
	add r4, ip, r6
	and r6, lr, #0xff
	strb r5, [r4, #4]
	cmp r6, #0x20
	blo _02133EAC
_02133ED4:
	cmp r6, #0
	moveq r4, #0
	beq _02133EF0
	strb r6, [ip, #3]
	add lr, r1, #3
	strb lr, [ip, #1]
	mov r4, #1
_02133EF0:
	cmp r4, #0
	addne r2, r2, #1
	andne r2, r2, #0xff
	addne ip, ip, #0x24
_02133F00:
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #0x100
	blt _02133E24
	mov r0, r2
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02133F18
ov11_02133F18: ; 0x02133F18
	stmdb sp!, {r3, r4, r5, lr}
	ldrb r3, [r0, #0xd12]
	mov r2, #0
	mov r1, r2
	cmp r3, #0
	ble _02133FA0
	add r3, r0, #0x47
	mov ip, r0
	add r3, r3, #0x400
	arm_func_end ov11_02133F18
_02133F3C:
	add r4, r0, r1, lsl #2
	ldrb r4, [r4, #0x444]
	cmp r4, #0
	bne _02133F7C
	add lr, ip, #0x400
	ldrh r4, [lr, #0xa6]
	ldrb lr, [r3]
	sub r5, r4, #1
	mov r4, lr, lsl #0x19
	cmp r5, r4, lsr #25
	beq _02133F7C
	bic lr, lr, #0x80
	add r2, r2, #1
	strb lr, [r3]
	and r2, r2, #0xff
	b _02133F88
_02133F7C:
	ldrb lr, [r3]
	orr lr, lr, #0x80
	strb lr, [r3]
_02133F88:
	ldrb lr, [r0, #0xd12]
	add r1, r1, #1
	add r3, r3, #4
	cmp r1, lr
	add ip, ip, #0xc0
	blt _02133F3C
_02133FA0:
	mov r0, r2
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02133FA8
ov11_02133FA8: ; 0x02133FA8
	ldrb ip, [r0, #0xd12]
	mov r3, #0
	mov r2, r3
	cmp ip, #0
	bls _02133FE4
	arm_func_end ov11_02133FA8
_02133FBC:
	add r1, r0, r2, lsl #2
	ldrb r1, [r1, #0x447]
	mov r1, r1, lsl #0x18
	movs r1, r1, lsr #0x1f
	moveq r3, r2
	beq _02133FE4
	add r1, r2, #1
	and r2, r1, #0xff
	cmp r2, ip
	blo _02133FBC
_02133FE4:
	mov r0, r3
	bx lr

	arm_func_start ov11_02133FEC
ov11_02133FEC: ; 0x02133FEC
	stmdb sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl ov11_02132B1C
	mov r4, r0
	mov r5, #9
	bl WCM_GetPhase
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _021340C0
_02134010: ; jump table
	b _021340C0 ; case 0
	b _021340C0 ; case 1
	b _021340C0 ; case 2
	b _02134044 ; case 3
	b _021340C0 ; case 4
	b _021340C0 ; case 5
	b _02134090 ; case 6
	b _021340C0 ; case 7
	b _021340C0 ; case 8
	b _02134098 ; case 9
	b _021340C0 ; case 10
	b _021340B4 ; case 11
	b _021340A0 ; case 12
	arm_func_end ov11_02133FEC
_02134044:
	ldrb r0, [r4, #0xd0c]
	ldrb r5, [r4, #0xd0e]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	bne _02134074
	ldrb r0, [r4, #0xd13]
	mov r1, #0
	mov r5, #7
	add r0, r4, r0, lsl #2
	strb r1, [r0, #0x444]
	b _021340C0
_02134074:
	cmp r5, #3
	blo _021340C0
	cmp r5, #5
	bhi _021340C0
	mov r0, r5
	bl ov11_02134228
	b _021340C0
_02134090:
	bl WCM_EndSearchAsync
	b _021340C0
_02134098:
	bl WCM_DisconnectAsync
	b _021340C0
_021340A0:
	bl WCM_TerminateAsync
	mov r0, #4
	bl ov11_02132BE8
	mov r5, #0x11
	b _021340C0
_021340B4:
	mov r0, #0
	bl ov11_02132BE8
	mov r5, #0x11
_021340C0:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_021340C8
ov11_021340C8: ; 0x021340C8
	stmdb sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl ov11_02132B1C
	mov r4, r0
	bl ov11_02132BD4
	mov r5, r0
	bl WCM_GetPhase
	cmp r5, #2
	cmpeq r0, #3
	bne _02134100
	mov r0, r4
	bl ov11_02134308
	mov r5, r0
	b _02134184
	arm_func_end ov11_021340C8
_02134100:
	cmp r5, #6
	bne _0213411C
	mov r0, r4
	mov r1, r5
	bl ov11_02134750
	mov r5, r0
	b _02134184
_0213411C:
	cmp r0, #3
	cmpne r0, #6
	bne _02134184
	mov r0, r4
	mov r1, r5
	bl ov11_02134750
	mov r5, r0
	cmp r5, #7
	beq _02134184
	cmp r5, #3
	bne _02134158
	mov r0, r4
	bl ov11_02134358
	mov r5, r0
	b _02134184
_02134158:
	cmp r5, #4
	bne _02134170
	mov r0, r4
	bl ov11_02134444
	mov r5, r0
	b _02134184
_02134170:
	cmp r5, #5
	bne _02134184
	mov r0, r4
	bl ov11_0213456C
	mov r5, r0
_02134184:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_0213418C
ov11_0213418C: ; 0x0213418C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	add r0, r0, #0xd00
	cmp r4, #0xd
	movhi r4, #0xd
	ldrh r3, [r0, #0x16]
	sub r1, r4, #1
	mov r2, #1
	orr r1, r3, r2, lsl r1
	strh r1, [r0, #0x16]
	ldmia sp!, {r4, pc}
	arm_func_end ov11_0213418C

	arm_func_start ov11_021341C0
ov11_021341C0: ; 0x021341C0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	add r0, r0, #0xd00
	ldrh ip, [r0, #0x16]
	cmp ip, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0
	mov r3, r2
	mov r1, #1
	arm_func_end ov11_021341C0
_021341F0:
	tst ip, r1, lsl r2
	beq _02134210
	cmp r3, r4
	moveq r0, r2, lsl #0x18
	moveq r0, r0, asr #0x18
	ldmeqia sp!, {r4, pc}
	add r0, r3, #1
	and r3, r0, #0xff
_02134210:
	add r0, r2, #1
	and r2, r0, #0xff
	cmp r2, #0xd
	blo _021341F0
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02134228
ov11_02134228: ; 0x02134228
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl ov11_02132B1C
	mov r4, r0
	cmp r5, #3
	beq _02134258
	cmp r5, #4
	beq _02134280
	cmp r5, #5
	beq _021342CC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02134228
_02134258:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _02134300 ; =WCM_Bssid_Any
	ldr r1, _02134304 ; =WCM_Essid_Any
	mov r3, #0x200000
	bl ov11_02134874
	ldmia sp!, {r3, r4, r5, pc}
_02134280:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	add r1, r4, #0x74
	smulbb ip, r2, r0
	add r0, r4, ip
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	add r0, r4, #0x7c
	add r3, r1, #0x400
	add r1, r0, #0x400
	add r0, r3, ip
	add r1, r1, ip
	sub r2, r2, #1
	mov r3, #0x300000
	bl ov11_02134874
	ldmia sp!, {r3, r4, r5, pc}
_021342CC:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	add r2, r4, #0xd00
	mla r1, r3, r0, r1
	ldrsb r2, [r2, #0x11]
	ldr r0, _02134300 ; =WCM_Bssid_Any
	mov r3, #0x300000
	bl ov11_02134874
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02134300: .word WCM_Bssid_Any
_02134304: .word WCM_Essid_Any

	arm_func_start ov11_02134308
ov11_02134308: ; 0x02134308
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	mov r0, #0
	strb r0, [r4, #0xd11]
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _02134350 ; =WCM_Bssid_Any
	ldr r1, _02134354 ; =WCM_Essid_Any
	mov r3, #0x200000
	bl ov11_02134874
	mov r0, #3
	ldmia sp!, {r4, pc}
	.align 2, 0
_02134350: .word WCM_Bssid_Any
_02134354: .word WCM_Essid_Any
	arm_func_end ov11_02134308

	arm_func_start ov11_02134358
ov11_02134358: ; 0x02134358
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021343F0 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x12c
	blo _021343E8
	add r0, r4, #0xd00
	ldrsb r1, [r0, #0x11]
	add r1, r1, #2
	strb r1, [r4, #0xd11]
	ldrsb r0, [r0, #0x11]
	cmp r0, #0xd
	blt _021343C4
	mov r0, r4
	mov r1, #3
	bl ov11_0213468C
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02134358
_021343C4:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _021343F4 ; =WCM_Bssid_Any
	ldr r1, _021343F8 ; =WCM_Essid_Any
	mov r3, #0x200000
	bl ov11_02134874
_021343E8:
	mov r0, #3
	ldmia sp!, {r4, pc}
	.align 2, 0
_021343F0: .word 0x000082EA
_021343F4: .word WCM_Bssid_Any
_021343F8: .word WCM_Essid_Any

	arm_func_start ov11_021343FC
ov11_021343FC: ; 0x021343FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	strb r0, [r4, #0xd15]
	ldrb r2, [r4, #0xd0b]
	mov r1, r2, lsl #0x18
	mov r1, r1, lsr #0x1c
	add r1, r1, #1
	and r1, r1, #0xff
	bic r2, r2, #0xf0
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #24
	strb r1, [r4, #0xd0b]
	bl ov11_02133BE4
	mov r0, #1
	strb r0, [r4, #0xd11]
	mov r0, #3
	ldmia sp!, {r4, pc}
	arm_func_end ov11_021343FC

	arm_func_start ov11_02134444
ov11_02134444: ; 0x02134444
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _02134568 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x96
	bhs _021344A0
	ldrb r0, [r4, #0xd0f]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _02134560
	arm_func_end ov11_02134444
_021344A0:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldrb r2, [r4, #0xd12]
	ldrb r1, [r4, #0xd0f]
	cmp r1, r2
	bhs _021344F8
_021344C8:
	add r0, r4, r1, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _021344F8
	ldrb r0, [r4, #0xd0f]
	add r0, r0, #1
	strb r0, [r4, #0xd0f]
	ldrb r2, [r4, #0xd12]
	and r1, r0, #0xff
	cmp r1, r2
	blo _021344C8
_021344F8:
	cmp r2, r1
	bhi _02134518
	mov r2, #0
	mov r0, r4
	mov r1, #4
	strb r2, [r4, #0xd0f]
	bl ov11_0213468C
	ldmia sp!, {r4, pc}
_02134518:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	add r1, r4, #0x74
	smulbb ip, r2, r0
	add r0, r4, ip
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	add r0, r4, #0x7c
	add r3, r1, #0x400
	add r1, r0, #0x400
	add r0, r3, ip
	add r1, r1, ip
	sub r2, r2, #1
	mov r3, #0x300000
	bl ov11_02134874
_02134560:
	mov r0, #4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02134568: .word 0x000082EA

	arm_func_start ov11_0213456C
ov11_0213456C: ; 0x0213456C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _02134684 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x96
	bhs _021345CC
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	mla r0, r1, r0, r4
	ldrb r0, [r0, #0x300]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	bne _0213467C
	arm_func_end ov11_0213456C
_021345CC:
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	add r2, r4, #0x300
	smulbb r1, r1, r0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	strb r0, [r2, r1]
	ldrb r0, [r4, #0xd0f]
	add r0, r0, #1
	strb r0, [r4, #0xd0f]
	ldrb r1, [r4, #0xd10]
	and r0, r0, #0xff
	cmp r1, r0
	bhi _02134624
	ldrb r1, [r4, #0xd15]
	mov r0, #0
	add r1, r1, #1
	strb r1, [r4, #0xd15]
	strb r0, [r4, #0xd0f]
	ldrb r0, [r4, #0xd15]
	bl ov11_021341C0
	strb r0, [r4, #0xd11]
_02134624:
	add r0, r4, #0xd00
	ldrsb r0, [r0, #0x11]
	cmp r0, #0
	bge _0213464C
	mov r2, #0
	mov r0, r4
	mov r1, #5
	strb r2, [r4, #0xd15]
	bl ov11_0213468C
	ldmia sp!, {r4, pc}
_0213464C:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	add r2, r4, #0xd00
	mla r1, r3, r0, r1
	ldrsb r2, [r2, #0x11]
	ldr r0, _02134688 ; =WCM_Bssid_Any
	mov r3, #0x300000
	bl ov11_02134874
_0213467C:
	mov r0, #5
	ldmia sp!, {r4, pc}
	.align 2, 0
_02134684: .word 0x000082EA
_02134688: .word WCM_Bssid_Any

	arm_func_start ov11_0213468C
ov11_0213468C: ; 0x0213468C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	beq _021346B4
	cmp r4, #4
	beq _02134714
	cmp r4, #5
	beq _02134720
	b _02134740
	arm_func_end ov11_0213468C
_021346B4:
	ldrb r1, [r5, #0xd12]
	cmp r1, #0
	addeq r1, r5, #0xd00
	ldreqh r1, [r1, #0x16]
	cmpeq r1, #0
	beq _021346F0
	mov r0, #1
	bl ov11_02133BE4
	cmp r0, #0
	movne r4, #4
	bne _02134740
	mov r0, r5
	bl ov11_02134814
	mov r4, r0
	b _02134740
_021346F0:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _02134740
	bl ov11_021343FC
	mov r4, r0
	b _02134740
_02134714:
	bl ov11_02134814
	mov r4, r0
	b _02134740
_02134720:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _02134740
	bl ov11_021343FC
	mov r4, r0
_02134740:
	mov r0, r4
	bl ov11_02134228
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02134750
ov11_02134750: ; 0x02134750
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0x11
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r2, [r5, #0xd12]
	mov r1, #0
	cmp r2, #0
	bls _02134798
	arm_func_end ov11_02134750
_02134778:
	add r0, r5, r1, lsl #2
	ldrb r0, [r0, #0x444]
	cmp r0, #0
	beq _02134798
	add r0, r1, #1
	and r1, r0, #0xff
	cmp r1, r2
	blo _02134778
_02134798:
	cmp r4, #6
	bne _021347CC
	cmp r2, r1
	bne _021347F8
	cmp r1, #0
	bne _021347BC
	mov r0, #5
	bl ov11_02132BE8
	b _021347C4
_021347BC:
	mov r0, #6
	bl ov11_02132BE8
_021347C4:
	mov r0, #0x11
	ldmia sp!, {r3, r4, r5, pc}
_021347CC:
	cmp r2, #0
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r2, r1
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r5, r1, lsl #2
	ldrb r0, [r0, #0x446]
	cmp r0, #0x14
	movlo r0, r4
	ldmloia sp!, {r3, r4, r5, pc}
_021347F8:
	strb r1, [r5, #0xd13]
	bl WCM_EndSearchAsync
	cmp r0, #1
	strneb r4, [r5, #0xd0e]
	movne r4, #7
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02134814
ov11_02134814: ; 0x02134814
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xd00
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _02134850
	mov r0, #2
	bl ov11_02133BE4
	cmp r0, #0
	beq _02134850
	mov r0, #0
	bl ov11_021341C0
	strb r0, [r4, #0xd11]
	mov r0, #5
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02134814
_02134850:
	ldrb r0, [r4, #0xd0b]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	movhs r0, #6
	ldmhsia sp!, {r4, pc}
	mov r0, r4
	bl ov11_021343FC
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02134874
ov11_02134874: ; 0x02134874
	stmdb sp!, {r3, lr}
	ldr ip, _02134894 ; =DAT_overlay_11_02162b34
	cmp r2, #0xc
	movgt r2, #0xc
	ldr r2, [ip, r2, lsl #2]
	orr r2, r3, r2
	bl WCM_SearchAsync
	ldmia sp!, {r3, pc}
	.align 2, 0
_02134894: .word DAT_overlay_11_02162b34
	arm_func_end ov11_02134874

	arm_func_start ov11_02134898
ov11_02134898: ; 0x02134898
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	bl WCM_GetPhase
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	cmp r4, #1
	bne _02134904
	ldrb r1, [r0, #0xd0a]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl ov11_02133BE4
	ldr r1, _0213491C ; =ov11_021332A0
	add r0, sp, #0
	bl WCM_StartupAsync
	cmp r0, #1
	beq _021348F0
	cmp r0, #4
	blt _02134910
	arm_func_end ov11_02134898
_021348F0:
	mov r0, #1
	bl ov11_02132BE8
	add sp, sp, #0x10
	mov r0, #0x11
	ldmia sp!, {r4, pc}
_02134904:
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, pc}
_02134910:
	mov r0, #2
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213491C: .word ov11_021332A0

	arm_func_start ov11_02134920
ov11_02134920: ; 0x02134920
	stmdb sp!, {r3, r4, r5, lr}
	bl ov11_02132BD4
	mov r4, r0
	mov r0, #0x10
	bl ov11_02132B1C
	mov r5, r0
	bl WCM_GetPhase
	cmp r0, #9
	bne _021349C4
	sub r0, r4, #0xa
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02134A14
_02134954: ; jump table
	b _0213496C ; case 0
	b _021349B8 ; case 1
	b _0213497C ; case 2
	b _0213498C ; case 3
	b _02134998 ; case 4
	b _021349A8 ; case 5
	arm_func_end ov11_02134920
_0213496C:
	mov r0, r5
	bl ov11_02134A1C
	mov r4, r0
	b _02134A14
_0213497C:
	mov r0, r5
	bl ov11_02134A80
	mov r4, r0
	b _02134A14
_0213498C:
	bl ov11_02134B10
	mov r4, r0
	b _02134A14
_02134998:
	mov r0, r5
	bl ov11_02134B3C
	mov r4, r0
	b _02134A14
_021349A8:
	mov r0, r5
	bl ov11_02134BA8
	mov r4, r0
	b _02134A14
_021349B8:
	bl ov11_02134BBC
	mov r4, r0
	b _02134A14
_021349C4:
	cmp r4, #0xb
	beq _021349EC
	cmp r4, #0xe
	beq _021349F8
	cmp r4, #0xf
	bne _02134A00
	mov r0, r5
	bl ov11_02134BA8
	mov r4, r0
	b _02134A14
_021349EC:
	bl ov11_02134BBC
	mov r4, r0
	b _02134A14
_021349F8:
	bl ov11_02137D38
	bl ov11_02137C40
_02134A00:
	ldrb r0, [r5, #0xd13]
	mov r1, #2
	mov r4, #0xb
	add r0, r5, r0, lsl #2
	strb r1, [r0, #0x444]
_02134A14:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov11_02134A1C
ov11_02134A1C: ; 0x02134A1C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov11_02132B1C
	mov r5, r0
	mov r0, #4
	bl ov11_02132B1C
	mov r4, r0
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl ov11_02134BEC
	ldr r1, _02134A7C ; =SOCLiYieldWait
	mov r2, #4
	mov r0, r4
	str r2, [r1]
	bl SOC_Startup
	cmp r0, #0
	moveq r0, #0xc
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #2
	bl ov11_02132BE8
	mov r0, #0x11
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02134A7C: .word SOCLiYieldWait
	arm_func_end ov11_02134A1C

	arm_func_start ov11_02134A80
ov11_02134A80: ; 0x02134A80
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl SOC_GetHostID
	cmp r0, #0
	beq _02134AB8
	mov r0, r4
	bl ov11_02134D54
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xf
	movne r0, #0xd
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02134A80
_02134AB8:
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _02134B0C ; =0x01FF6210
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0xa
	movlo r0, #0xc
	ldmloia sp!, {r4, pc}
	ldrb r1, [r4, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r4, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02134B0C: .word 0x01FF6210

	arm_func_start ov11_02134B10
ov11_02134B10: ; 0x02134B10
	stmdb sp!, {r3, lr}
	mov r0, #8
	bl ov11_02132B1C
	bl ov11_02137B60
	cmp r0, #0
	moveq r0, #0xe
	ldmeqia sp!, {r3, pc}
	mov r0, #3
	bl ov11_02132BE8
	mov r0, #0x11
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02134B10

	arm_func_start ov11_02134B3C
ov11_02134B3C: ; 0x02134B3C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov11_02132B1C
	mov r4, r0
	bl ov11_02137DA0
	movs r5, r0
	beq _02134BA0
	ldrb r0, [r6, #0xd0d]
	bl ov11_02132C3C
	ldrb r1, [r4, #0x15]
	cmp r1, r0
	bne _02134B78
	bl ov11_02137DE0
	str r0, [r4, #0x10]
	arm_func_end ov11_02134B3C
_02134B78:
	bl ov11_02137C40
	cmp r5, #0xb
	moveq r0, #0xf
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r1, [r6, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, r5, r6, pc}
_02134BA0:
	mov r0, #0xe
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02134BA8
ov11_02134BA8: ; 0x02134BA8
	stmdb sp!, {r3, lr}
	ldrb r0, [r0, #0xd0d]
	bl ov11_02132C20
	mov r0, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02134BA8

	arm_func_start ov11_02134BBC
ov11_02134BBC: ; 0x02134BBC
	stmdb sp!, {r3, lr}
	bl SOCL_CalmDown
	cmp r0, #0
	movne r0, #0xb
	ldmneia sp!, {r3, pc}
	bl SOC_Cleanup
	cmp r0, #0
	mvnne r1, #0x26
	cmpne r0, r1
	moveq r0, #9
	movne r0, #0xb
	ldmia sp!, {r3, pc}
	arm_func_end ov11_02134BBC

	arm_func_start ov11_02134BEC
ov11_02134BEC: ; 0x02134BEC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r1
	ldr r0, _02134CA8 ; =DAT_overlay_11_02162b68
	mov r1, r4
	mov r2, #0x58
	bl MI_CpuCopy8
	ldr r0, [r6]
	str r0, [r4, #4]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldmhsia sp!, {r4, r5, r6, pc}
	bl ov11_02132C3C
	add r5, r5, r0, lsl #8
	ldrb r0, [r5, #0xc0]
	cmp r0, #0
	beq _02134C84
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0xc0
	bl ov11_02134CAC
	str r0, [r4, #0x10]
	ldrb r0, [r5, #0xd0]
	bl ov11_02134D00
	str r0, [r4, #0x14]
	add r0, r5, #0xc4
	bl ov11_02134CAC
	str r0, [r4, #0x18]
	add r0, r5, #0xc8
	bl ov11_02134CAC
	str r0, [r4, #0x1c]
	add r0, r5, #0xcc
	bl ov11_02134CAC
	str r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02134BEC
_02134C84:
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02134CA8: .word DAT_overlay_11_02162b68

	arm_func_start ov11_02134CAC
ov11_02134CAC: ; 0x02134CAC
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	mov r3, #0
	orr r3, r3, r1, lsl #24
	ldrb r1, [r0, #2]
	orr r2, r3, r2, lsl #16
	ldrb r0, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r3, r1, r0
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end ov11_02134CAC

	arm_func_start ov11_02134D00
ov11_02134D00: ; 0x02134D00
	rsb r1, r0, #0x20
	cmp r1, #0
	mvn r3, #0
	mov r0, #0
	ble _02134D24
	arm_func_end ov11_02134D00
_02134D14:
	add r0, r0, #1
	cmp r0, r1
	mov r3, r3, lsl #1
	blt _02134D14
_02134D24:
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr

	arm_func_start ov11_02134D54
ov11_02134D54: ; 0x02134D54
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r0, [r4, #0xd0d]
	cmp r0, #6
	addhs sp, sp, #8
	ldmhsia sp!, {r4, pc}
	bl ov11_02132C3C
	add r4, r4, r0, lsl #8
	ldrb r0, [r4, #0xc0]
	ldrb r2, [r4, #0xc8]
	ldrb r1, [r4, #0xc9]
	cmp r0, #0
	ldrb r3, [r4, #0xca]
	add r1, r2, r1
	ldrb r2, [r4, #0xcb]
	add r1, r3, r1
	addne sp, sp, #8
	add r0, r2, r1
	ldmneia sp!, {r4, pc}
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0xc8
	bl ov11_02134CAC
	str r0, [sp, #4]
	add r0, r4, #0xcc
	bl ov11_02134CAC
	str r0, [sp]
	add r0, sp, #4
	add r1, sp, #0
	bl SOC_SetResolver
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02134D54

	arm_func_start ov11_02134DDC
ov11_02134DDC: ; 0x02134DDC
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	add r1, sp, #0
	bl ov11_02134EBC
	ldr r1, _02134E10 ; =s_NDWCSHAP_overlay_11_021667b8
	add r0, sp, #0
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	.align 2, 0
_02134E10: .word s_NDWCSHAP_overlay_11_021667b8
	arm_func_end ov11_02134DDC

	arm_func_start ov11_02134E14
ov11_02134E14: ; 0x02134E14
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r1
	add r1, sp, #0
	bl ov11_02134EBC
	add r0, sp, #0
	mov r1, r4
	bl ov11_02134FC0
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02134E14

	arm_func_start ov11_02134E3C
ov11_02134E3C: ; 0x02134E3C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r1
	add r1, sp, #0
	bl ov11_02134EBC
	ldr r1, _02134E84 ; =s_NDWCSHAP_overlay_11_021667b8
	add r0, sp, #0
	mov r2, #8
	bl memcmp
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, pc}
	add r0, sp, #8
	mov r1, r4
	mov r2, #0xa
	bl MI_CpuCopy8
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_02134E84: .word s_NDWCSHAP_overlay_11_021667b8
	arm_func_end ov11_02134E3C

	arm_func_start ov11_02134E88
ov11_02134E88: ; 0x02134E88
	stmdb sp!, {r3, lr}
	ldr r1, _02134EA8 ; =s_NWCUSBAP_overlay_11_021667c4
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02134EA8: .word s_NWCUSBAP_overlay_11_021667c4
	arm_func_end ov11_02134E88

	arm_func_start ov11_02134EAC
ov11_02134EAC: ; 0x02134EAC
	ldr ip, _02134EB8 ; =ov11_0213500C
	add r0, r0, #0xc
	bx ip
	.align 2, 0
_02134EB8: .word ov11_0213500C
	arm_func_end ov11_02134EAC

	arm_func_start ov11_02134EBC
ov11_02134EBC: ; 0x02134EBC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr lr, _02134FB8 ; =DAT_overlay_11_02162bc3
	add ip, sp, #0
	mov r4, r1
	mov r3, #0xc
	arm_func_end ov11_02134EBC
_02134ED4:
	ldrb r2, [lr]
	ldrb r1, [lr, #1]
	add lr, lr, #2
	strb r2, [ip]
	strb r1, [ip, #1]
	add ip, ip, #2
	subs r3, r3, #1
	bne _02134ED4
	mov r1, r4
	mov r2, #0x20
	mov r3, #0x18
	bl ov11_02135228
	ldr r0, _02134FBC ; =PTR_DAT_overlay_11_0216679c_overlay_11_02166750
	mov r3, #0
_02134F0C:
	ldr r1, [r0, #8]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _02134F0C
	mov r7, #0
	add ip, sp, #0
	mov r1, #0xff
_02134F38:
	and lr, r7, #0xff
	ldrb r0, [ip, lr]
	mov r5, lr
	ldrb r6, [r4, r7]
	cmp r0, #0xff
	beq _02134F7C
_02134F50:
	add r3, ip, r5
	ldrb r5, [ip, r5]
	ldrb r0, [ip, lr]
	ldrb r2, [r4, r5]
	mov lr, r5
	strb r6, [r4, r0]
	strb r1, [r3]
	ldrb r0, [ip, r5]
	mov r6, r2
	cmp r0, #0xff
	bne _02134F50
_02134F7C:
	add r7, r7, #1
	cmp r7, #0x18
	blt _02134F38
	ldr r0, _02134FBC ; =PTR_DAT_overlay_11_0216679c_overlay_11_02166750
	mov r3, #0
_02134F90:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _02134F90
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02134FB8: .word DAT_overlay_11_02162bc3
_02134FBC: .word PTR_DAT_overlay_11_0216679c_overlay_11_02166750

	arm_func_start ov11_02134FC0
ov11_02134FC0: ; 0x02134FC0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x6c
	mov r5, r0
	add r0, sp, #0x14
	mov r4, r1
	bl DGT_Hash1Reset
	add r0, sp, #0x14
	mov r1, r5
	mov r2, #0x18
	bl DGT_Hash1SetSource
	add r0, sp, #0
	add r1, sp, #0x14
	bl DGT_Hash1GetDigest_R
	add r0, sp, #3
	mov r1, r4
	mov r2, #0xd
	bl MI_CpuCopy8
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov11_02134FC0

	arm_func_start ov11_0213500C
ov11_0213500C: ; 0x0213500C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr lr, _021351A8 ; =0x92492493
	mov r4, r1
	mov r1, #0
	mov ip, #7
	arm_func_end ov11_0213500C
_02135024:
	smull r2, r3, lr, r1
	add r3, r1, r3
	mov r2, r1, lsr #0x1f
	add r3, r2, r3, asr #2
	smull r2, r3, ip, r3
	sub r3, r1, r2
	add r2, r0, r3
	ldrb r3, [r0, r1]
	ldrb r2, [r2, #0xd]
	eor r2, r3, r2
	strb r2, [r4, r1]
	add r1, r1, #1
	cmp r1, #0xd
	blt _02135024
	mov ip, #0
_02135060:
	add r3, r4, ip
	add r1, r0, ip
	ldrb r2, [r3, #3]
	ldrb r1, [r1, #0xd]
	add ip, ip, #1
	cmp ip, #7
	eor r1, r2, r1
	strb r1, [r3, #3]
	blt _02135060
	ldr r0, _021351AC ; =PTR_DAT_overlay_11_0216679c_overlay_11_02166750
	mov r3, #0
_0213508C:
	ldr r1, [r0, #4]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _0213508C
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl MI_CpuCopy8
	ldr r3, _021351B0 ; =DAT_overlay_11_02162bdc
	add r2, sp, #0
	mov ip, #0
_021350C8:
	ldrb r1, [r2], #1
	ldrb r0, [r3], #1
	add ip, ip, #1
	cmp ip, #0xd
	strb r1, [r4, r0]
	blt _021350C8
	ldr r0, _021351AC ; =PTR_DAT_overlay_11_0216679c_overlay_11_02166750
	mov r3, #0
_021350E8:
	ldr r1, [r0, #0xc]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _021350E8
	ldr r2, _021351B4 ; =DAT_overlay_11_02162bec
	mov ip, #0
_02135110:
	ldrb r3, [r4, ip]
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4, ip]
	add ip, ip, #1
	cmp ip, #0xd
	blt _02135110
	mov r1, #0
_02135140:
	add r0, r4, r1
	ldrb r3, [r4, r1]
	ldrb r2, [r0, #6]
	eor r2, r3, r2
	strb r2, [r4, r1]
	ldrb r3, [r0, #3]
	ldrb r2, [r0, #9]
	eor r2, r3, r2
	strb r2, [r0, #3]
	ldrb r3, [r0, #6]
	and r2, r2, #0xff
	eor r2, r3, r2
	strb r2, [r0, #6]
	ldrb r3, [r0, #9]
	ldrb r2, [r4, r1]
	eor r2, r3, r2
	strb r2, [r0, #9]
	ldrb r0, [r4, r1]
	ldrb r2, [r4, #0xc]
	add r1, r1, #1
	cmp r1, #3
	eor r0, r2, r0
	strb r0, [r4, #0xc]
	blt _02135140
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_021351A8: .word 0x92492493
_021351AC: .word PTR_DAT_overlay_11_0216679c_overlay_11_02166750
_021351B0: .word DAT_overlay_11_02162bdc
_021351B4: .word DAT_overlay_11_02162bec

	arm_func_start ov11_021351B8
ov11_021351B8: ; 0x021351B8
	cmp r0, #0x41
	blo _021351CC
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
	arm_func_end ov11_021351B8
_021351CC:
	cmp r0, #0x61
	blo _021351E4
	cmp r0, #0x7a
	subls r0, r0, #0x61
	addls r0, r0, #0x1a
	bxls lr
_021351E4:
	cmp r0, #0x30
	blo _021351FC
	cmp r0, #0x39
	subls r0, r0, #0x30
	addls r0, r0, #0x34
	bxls lr
_021351FC:
	cmp r0, #0x2b
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2f
	moveq r0, #0x3f
	bxeq lr
	cmp r0, #0x3d
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	bx lr

	arm_func_start ov11_02135228
ov11_02135228: ; 0x02135228
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	add r4, r2, r2, lsl #1
	str r0, [sp]
	mov r0, r4, lsr #2
	str r1, [sp, #4]
	cmp r3, r4, lsr #2
	str r0, [sp, #8]
	blo _0213525C
	and fp, r2, #3
	sub r0, r2, fp
	str r0, [sp, #0xc]
	b _02135268
	arm_func_end ov11_02135228
_0213525C:
	add sp, sp, #0x18
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135268:
	cmp r0, #0
	mov r7, #0
	ble _021352F0
	mov sb, r7
	add r5, sp, #0x14
	mov r4, #6
_02135280:
	ldr r0, [sp]
	mov r6, #0
	mov r8, r6
	add sl, r0, r7
_02135290:
	ldrb r0, [sl], #1
	bl ov11_021351B8
	rsb r1, r8, #3
	mul r2, r1, r4
	orr r6, r6, r0, lsl r2
	add r8, r8, #1
	cmp r8, #4
	blt _02135290
	ldr r0, [sp, #4]
	add r1, sb, sb, lsl #1
	mov r2, #0
	str r6, [sp, #0x14]
	add r1, r0, r1
_021352C4:
	rsb r0, r2, #2
	ldrb r0, [r5, r0]
	add r2, r2, #1
	cmp r2, #3
	strb r0, [r1], #1
	blt _021352C4
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	cmp r7, r0
	add sb, sb, #1
	blt _02135280
_021352F0:
	cmp fp, #0
	beq _02135384
	mov r5, #0
	mov r6, r5
	str r5, [sp, #0x10]
	ble _02135344
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	mov r8, r5
	add r4, r1, r0
	mov r7, #6
_0213531C:
	ldrb r0, [r4], #1
	bl ov11_021351B8
	rsb r1, r6, #3
	mul r2, r1, r7
	orr r5, r5, r0, lsl r2
	add r6, r6, #1
	cmp r6, fp
	orr r8, r8, r5
	blt _0213531C
	str r8, [sp, #0x10]
_02135344:
	cmp fp, #0
	mov r3, #0
	ble _02135384
	ldr r0, [sp, #0xc]
	add r1, r0, r0, lsl #1
	mov r0, r1, asr #1
	add r1, r1, r0, lsr #30
	ldr r0, [sp, #4]
	add r2, r0, r1, asr #2
	add r1, sp, #0x10
_0213536C:
	rsb r0, r3, #2
	ldrb r0, [r1, r0]
	add r3, r3, #1
	cmp r3, fp
	strb r0, [r2], #1
	blt _0213536C
_02135384:
	ldr r0, [sp, #8]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start DWC_Auth_SetCustomNas
DWC_Auth_SetCustomNas: ; 0x02135390
	ldr r1, _0213539C ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	str r0, [r1]
	bx lr
	.align 2, 0
_0213539C: .word ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	arm_func_end DWC_Auth_SetCustomNas

	arm_func_start DWC_Auth_Create
DWC_Auth_Create: ; 0x021353A0
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _021354B4 ; =OVERLAY11_BSS_02169CA8
	mov r5, r0
	ldr r0, [r2, #8]
	mov r4, r1
	cmp r0, #0
	ldr r2, [r5, #0x40]
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _021354B8 ; =s_ALLOC_DWCauth_overlay_11_02166814
	ldr r1, _021354BC ; =0x000013F4
	blx r2
	ldr r1, _021354B4 ; =OVERLAY11_BSS_02169CA8
	cmp r0, #0
	str r0, [r1, #8]
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, _021354BC ; =0x000013F4
	mov r1, #0
	bl MI_CpuFill8
	ldr r3, _021354B4 ; =OVERLAY11_BSS_02169CA8
	mov r1, #0
	ldr r0, [r3, #8]
	mov r2, #0x1c4
	add r0, r0, #0x1000
	str r4, [r0, #0x314]
	str r1, [r3]
	ldr r0, [r3, #8]
	add r0, r0, #8
	add r0, r0, #0x1000
	bl MI_CpuFill8
	ldr r1, _021354B4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _021354C0 ; =0x00004E84
	ldr r0, [r1, #8]
	mov r4, #4
	add r0, r0, #0x1000
	str r2, [r0, #8]
	ldr lr, [r1, #8]
	add r0, lr, #0x1cc
	add ip, r0, #0x1000
	arm_func_end DWC_Auth_Create
_02135440:
	ldmia r5!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02135440
	ldmia r5, {r0, r1}
	stmia ip, {r0, r1}
	add r0, lr, #0x1100
	mov r2, #0
	strh r2, [r0, #0xfe]
	ldr r1, _021354B4 ; =OVERLAY11_BSS_02169CA8
	mov r0, #1
	ldr r1, [r1, #8]
	add r1, r1, #0x1000
	strb r2, [r1, #0x20b]
	bl ov11_02135768
	ldr r2, _021354B4 ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r2, #8]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r2, #4]
	bl ov11_021354C4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021354B4: .word OVERLAY11_BSS_02169CA8
_021354B8: .word s_ALLOC_DWCauth_overlay_11_02166814
_021354BC: .word 0x000013F4
_021354C0: .word 0x00004E84

	arm_func_start ov11_021354C4
ov11_021354C4: ; 0x021354C4
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _0213556C ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_InitMutex
	ldr r1, _0213556C ; =OVERLAY11_BSS_02169CA8
	mov r2, #0
	ldr r0, [r1, #8]
	add r0, r0, #0x1000
	str r2, [r0, #0x3f0]
	ldr r1, [r1, #8]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	beq _02135520
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, pc}
	arm_func_end ov11_021354C4
_02135520:
	ldr r0, _0213556C ; =OVERLAY11_BSS_02169CA8
	mov r3, #0x1000
	ldr lr, [r0, #8]
	ldr r1, _02135570 ; =ov11_02135878
	add r0, lr, #0x318
	ldr r2, _02135574 ; =OVERLAY11_BSS_02169CB0
	str r3, [sp]
	mov ip, #0x10
	add r0, r0, #0x1000
	add r3, lr, #0x1000
	str ip, [sp, #4]
	bl OS_CreateThread
	ldr r0, _0213556C ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	add r0, r0, #0x318
	add r0, r0, #0x1000
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0213556C: .word OVERLAY11_BSS_02169CA8
_02135570: .word ov11_02135878
_02135574: .word OVERLAY11_BSS_02169CB0

	arm_func_start ov11_02135578
ov11_02135578: ; 0x02135578
	stmdb sp!, {r3, lr}
	ldr r0, _02135600 ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, _02135600 ; =OVERLAY11_BSS_02169CA8
	mov r2, #1
	ldr r0, [r1, #8]
	add r0, r0, #0x1000
	str r2, [r0, #0x3f0]
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldr r0, _02135600 ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	cmp r0, #0
	beq _021355D8
	bl ov11_02136A30
	arm_func_end ov11_02135578
_021355D8:
	ldr r0, _02135600 ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r0, #8]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_JoinThread
	ldmia sp!, {r3, pc}
	.align 2, 0
_02135600: .word OVERLAY11_BSS_02169CA8

	arm_func_start DWC_Auth_Destroy
DWC_Auth_Destroy: ; 0x02135604
	stmdb sp!, {r4, lr}
	ldr r0, _02135654 ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r1, r0, #0x1000
	ldr r0, [r1, #0x314]
	ldr r4, [r1, #0x210]
	cmp r0, #0
	beq _02135630
	bl ov11_02136F74
	arm_func_end DWC_Auth_Destroy
_02135630:
	ldr r1, _02135654 ; =OVERLAY11_BSS_02169CA8
	ldr r0, _02135658 ; =s_FREE_DWCauth_overlay_11_02166824
	ldr r1, [r1, #8]
	mov r2, #0
	blx r4
	ldr r0, _02135654 ; =OVERLAY11_BSS_02169CA8
	mov r1, #0
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02135654: .word OVERLAY11_BSS_02169CA8
_02135658: .word s_FREE_DWCauth_overlay_11_02166824

	arm_func_start ov11_0213565C
ov11_0213565C: ; 0x0213565C
	stmdb sp!, {r3, lr}
	ldr r0, _02135688 ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r0, #8]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_JoinThread
	ldmia sp!, {r3, pc}
	.align 2, 0
_02135688: .word OVERLAY11_BSS_02169CA8
	arm_func_end ov11_0213565C

	arm_func_start DWC_Auth_GetError
DWC_Auth_GetError: ; 0x0213568C
	stmdb sp!, {r4, lr}
	ldr r0, _021356D4 ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0x16
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, _021356D4 ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r0, #8]
	add r0, r1, #0x3d8
	add r1, r1, #0x1000
	add r0, r0, #0x1000
	ldr r4, [r1, #4]
	bl OS_UnlockMutex
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021356D4: .word OVERLAY11_BSS_02169CA8
	arm_func_end DWC_Auth_GetError

	arm_func_start DWC_Auth_GetResult
DWC_Auth_GetResult: ; 0x021356D8
	stmdb sp!, {r4, lr}
	ldr r1, _02135754 ; =OVERLAY11_BSS_02169CA8
	mov r4, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	bne _021356FC
	mov r1, #0
	mov r2, #0x1c4
	bl MI_CpuFill8
	arm_func_end DWC_Auth_GetResult
_021356FC:
	ldr r0, _02135754 ; =OVERLAY11_BSS_02169CA8
	mov r1, r4
	ldr r0, [r0, #8]
	mov r2, #0x1c4
	add r0, r0, #8
	add r0, r0, #0x1000
	bl MI_CpuCopy8
	ldr r1, [r4]
	ldr r0, _02135758 ; =0x00004E20
	cmp r1, r0
	blt _02135734
	ldr r0, _0213575C ; =0x00007530
	cmp r1, r0
	blt _0213573C
_02135734:
	ldr r0, _02135760 ; =0x00005206
	str r0, [r4]
_0213573C:
	ldr r1, [r4]
	ldr r0, _02135764 ; =0x00004E84
	cmp r1, r0
	rsbge r0, r1, #0
	strge r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02135754: .word OVERLAY11_BSS_02169CA8
_02135758: .word 0x00004E20
_0213575C: .word 0x00007530
_02135760: .word 0x00005206
_02135764: .word 0x00004E84

	arm_func_start ov11_02135768
ov11_02135768: ; 0x02135768
	stmdb sp!, {r4, lr}
	ldr r1, _02135860 ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	mov r4, r0
	ldr r0, [r1]
	ldr r1, _02135864 ; =s_https_nas_nintendowifi_net_ac_overlay_11_02166834
	bl strcmp
	cmp r0, #0
	ldrne r0, _02135860 ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	movne r1, #1
	strne r1, [r0, #0x14]
	ldr r0, _02135868 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135860 ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	ldr r0, [r0, #8]
	ldr r1, _0213586C ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	add r0, r0, #0x1000
	ldr r3, [r0, #0x20c]
	str r3, [r2, #0xc]
	ldr r3, [r0, #0x210]
	str r3, [r2, #0x10]
	ldr r0, [r0, #0x314]
	bl ov11_021367C0
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	cmp r4, #1
	bne _021357D8
	ldr r0, _02135870 ; =OVERLAY11_BSS_02169CB4
	bl ov11_02139940
	arm_func_end ov11_02135768
_021357D8:
	ldr r0, _02135868 ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r0, #8]
	add r0, r1, #0x1000
	add r2, r1, #0x1cc
	ldr r0, [r0, #0x314]
	add r1, r1, #0x1200
	add r2, r2, #0x1000
	bl ov11_02135FCC
	ldr r2, _02135868 ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r2, #8]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	ldr r0, [r0, #0x314]
	bl ov11_021368DC
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	ldr r0, _02135874 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r1, _02135868 ; =OVERLAY11_BSS_02169CA8
	ldr r2, [r1, #8]
	sub r1, r0, #1
	add r0, r2, #0x1000
	ldr r0, [r0, #0x314]
	bl ov11_02136974
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02135860: .word ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
_02135864: .word s_https_nas_nintendowifi_net_ac_overlay_11_02166834
_02135868: .word OVERLAY11_BSS_02169CA8
_0213586C: .word ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
_02135870: .word OVERLAY11_BSS_02169CB4
_02135874: .word OSi_ThreadInfo

	arm_func_start ov11_02135878
ov11_02135878: ; 0x02135878
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #0
	arm_func_end ov11_02135878
_02135880:
	ldr r0, _02135B1C ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _021358AC
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_021358AC:
	ldr r2, _02135B1C ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #8
	beq _02135948
	ldr r1, _02135B20 ; =0x00004E84
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x20]
	cmp r0, #7
	bne _021358FC
	mov r0, #0x14
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021358FC:
	cmp r8, #2
	ble _02135938
	cmp r0, #2
	bne _02135918
	mov r0, #9
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135918:
	cmp r0, #3
	bne _0213592C
	mov r0, #0xb
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213592C:
	mov r0, #0xd
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135938:
	mov r0, #1
	add r8, r8, #1
	str r0, [sp]
	b _021359B8
_02135948:
	bl ov11_02135B2C
	cmp r0, #0x10
	beq _02135970
	cmp r0, #0x11
	beq _02135994
	cmp r0, #0x15
	bne _0213599C
	mov r0, #0x15
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135970:
	cmp r8, #2
	ble _02135984
	mov r0, #0x10
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135984:
	mov r0, #0
	add r8, r8, #1
	str r0, [sp]
	b _021359B8
_02135994:
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213599C:
	cmp r8, #2
	blt _021359AC
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021359AC:
	mov r0, #1
	add r8, r8, #1
	str r0, [sp]
_021359B8:
	bl OS_GetTick
	mov sb, r0
	mov sl, r1
	bl OS_GetTick
	subs r2, r0, sb
	sbc r0, r1, sl
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	ldr r2, _02135B24 ; =0x000082EA
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	ldr r7, _02135B28 ; =0x00001388
	cmpeq r0, r7
	bhs _02135A98
	mov fp, #0
	ldr r6, _02135B24 ; =0x000082EA
	ldr r5, _02135B1C ; =OVERLAY11_BSS_02169CA8
	mov r4, fp
_02135A08:
	ldr r0, [r5, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r2, [r5, #8]
	add r0, r2, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #1
	bne _02135A54
	ldr r2, _02135B20 ; =0x00004E84
	ldr r1, _02135B1C ; =OVERLAY11_BSS_02169CA8
	str r2, [r0, #8]
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	mov r0, #0x14
	bl ov11_02136170
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135A54:
	add r0, r2, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	mov r0, r7
	bl OS_Sleep
	bl OS_GetTick
	subs r2, r0, sb
	sbc r0, r1, sl
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	mov r2, r6
	mov r3, fp
	bl _ll_udiv
	cmp r1, r4
	cmpeq r0, r7
	blo _02135A08
_02135A98:
	ldr r0, _02135B1C ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	bl ov11_02136F74
	ldr r0, _02135B1C ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, [sp]
	bl ov11_02135768
	ldr r2, _02135B1C ; =OVERLAY11_BSS_02169CA8
	ldr r1, [r2, #8]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r3, [r2, #8]
	add r0, r3, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02135B08
	ldr r1, _02135B20 ; =0x00004E84
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135B08:
	add r0, r3, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	b _02135880
_02135B18:
	.byte 0xF8, 0x8F, 0xBD, 0xE8
_02135B1C: .word OVERLAY11_BSS_02169CA8
_02135B20: .word 0x00004E84
_02135B24: .word 0x000082EA
_02135B28: .word 0x00001388

	arm_func_start ov11_02135B2C
ov11_02135B2C: ; 0x02135B2C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	mov r1, #0
	ldr r0, [r0, #8]
	add r2, r0, #0x1000
	ldr r0, [r2, #0x314]
	ldr r4, [r2, #0x20c]
	ldr r5, [r2, #0x210]
	bl ov11_0213774C
	cmp r0, #1
	beq _02135B74
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135CE8 ; =0x00004E84
	ldr r1, [r0, #8]
	mov r0, #0xe
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02135B2C
_02135B74:
	bl ov11_02135D04
	cmp r0, #0
	movne r0, #0xe
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r1, _02135CE8 ; =0x00004E84
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r2, [r0, #8]
	cmp r2, r1
	bge _02135C34
	sub r0, r1, #0x62
	cmp r2, r0
	bne _02135C2C
	ldr r0, _02135CEC ; =s_ALLOC_bmwork_overlay_11_02166854
	ldr r1, _02135CF0 ; =0x0000071F
	blx r4
	movs r4, r0
	bne _02135BDC
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135CE8 ; =0x00004E84
	ldr r1, [r0, #8]
	mov r0, #2
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135BDC:
	add r1, r4, #0x1f
	ldr r0, _02135CF4 ; =OVERLAY11_BSS_02169CB4
	bic r1, r1, #0x1f
	bl ov11_0213AD60
	cmp r0, #1
	mov r2, #0
	beq _02135C20
	ldr r0, _02135CF8 ; =s_FREE_bmwork_overlay_11_02166864
	mov r1, r4
	blx r5
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135CE8 ; =0x00004E84
	ldr r1, [r0, #8]
	mov r0, #0xf
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135C20:
	ldr r0, _02135CF8 ; =s_FREE_bmwork_overlay_11_02166864
	mov r1, r4
	blx r5
_02135C2C:
	mov r0, #0x15
	ldmia sp!, {r3, r4, r5, pc}
_02135C34:
	add r0, r1, #4
	cmp r2, r0
	beq _02135C50
	add r0, r1, #8
	cmp r2, r0
	beq _02135C74
	b _02135CDC
_02135C50:
	ldr r0, _02135CF4 ; =OVERLAY11_BSS_02169CB4
	bl ov11_0213ADB0
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135CFC ; =0x00004E88
	ldr r1, [r0, #8]
	mov r0, #0x10
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135C74:
	ldr r0, _02135CEC ; =s_ALLOC_bmwork_overlay_11_02166854
	mov r1, #0x700
	blx r4
	movs r4, r0
	bne _02135CA4
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135D00 ; =0x00004E8C
	ldr r1, [r0, #8]
	mov r0, #0x11
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135CA4:
	add r0, r4, #0x1f
	bic r0, r0, #0x1f
	bl DWCi_AUTH_MakeWiFiID
	ldr r0, _02135CF8 ; =s_FREE_bmwork_overlay_11_02166864
	mov r1, r4
	mov r2, #0
	blx r5
	ldr r0, _02135CE4 ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135D00 ; =0x00004E8C
	ldr r1, [r0, #8]
	mov r0, #0x11
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135CDC:
	mov r0, #0x12
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02135CE4: .word OVERLAY11_BSS_02169CA8
_02135CE8: .word 0x00004E84
_02135CEC: .word s_ALLOC_bmwork_overlay_11_02166854
_02135CF0: .word 0x0000071F
_02135CF4: .word OVERLAY11_BSS_02169CB4
_02135CF8: .word s_FREE_bmwork_overlay_11_02166864
_02135CFC: .word 0x00004E88
_02135D00: .word 0x00004E8C

	arm_func_start ov11_02135D04
ov11_02135D04: ; 0x02135D04
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, _02135F9C ; =OVERLAY11_BSS_02169CA8
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [sp]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _02135FA0 ; =s_Date_overlay_11_02166870
	bl ov11_021379EC
	str r0, [sp]
	cmp r0, #0
	beq _02135D38
	bl ov11_02138DC8
	arm_func_end ov11_02135D04
_02135D38:
	ldr r0, _02135F9C ; =OVERLAY11_BSS_02169CA8
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02135FA4 ; =errno
	str r2, [sp]
	str r2, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _02135FA8 ; =s_httpresult_overlay_11_02166878
	bl ov11_021379EC
	bl atol
	ldr r1, _02135FA4 ; =errno
	ldr r1, [r1]
	cmp r1, #0x22
	bne _02135D90
	ldr r0, _02135F9C ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135FAC ; =0x00004E85
	ldr r1, [r0, #8]
	mov r0, #0xc
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135D90:
	cmp r0, #0xc8
	beq _02135DB8
	ldr r1, _02135F9C ; =OVERLAY11_BSS_02169CA8
	add r0, r0, #0x1d8
	ldr r1, [r1, #8]
	add r2, r0, #0x5800
	add r0, r1, #0x1000
	str r2, [r0, #8]
	mov r0, #0x12
	ldmia sp!, {r3, r4, r5, pc}
_02135DB8:
	ldr r0, _02135F9C ; =OVERLAY11_BSS_02169CA8
	ldr r1, _02135FB0 ; =s_returncd_overlay_11_02166884
	ldr r2, [r0, #8]
	mov r3, #4
	add r0, r2, #0x1000
	add r2, r2, #0xc
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	bl ov11_02137A44
	cmp r0, #0
	bgt _02135E00
	ldr r0, _02135F9C ; =OVERLAY11_BSS_02169CA8
	ldr r2, _02135FAC ; =0x00004E85
	ldr r1, [r0, #8]
	mov r0, #0xe
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_02135E00:
	ldr r0, _02135F9C ; =OVERLAY11_BSS_02169CA8
	add r1, sp, #0
	ldr r0, [r0, #8]
	mov r2, #0xa
	add r0, r0, #0xc
	add r0, r0, #0x1000
	bl strtol
	ldr r1, _02135F9C ; =OVERLAY11_BSS_02169CA8
	mov r4, r0
	ldr r5, [r1, #8]
	add r0, r5, #0xc
	add r0, r0, #0x1000
	bl strlen
	add r1, r5, #0xc
	add r1, r1, #0x1000
	ldr r2, [sp]
	add r0, r1, r0
	cmp r2, r0
	beq _02135E60
	ldr r1, _02135FAC ; =0x00004E85
	add r0, r5, #0x1000
	str r1, [r0, #8]
	mov r0, #0xc
	ldmia sp!, {r3, r4, r5, pc}
_02135E60:
	add r0, r4, #0xe20
	add r1, r0, #0x4000
	add r0, r5, #0x1000
	str r1, [r0, #8]
	cmp r4, #0x64
	bge _02135F94
	ldr r5, _02135F9C ; =OVERLAY11_BSS_02169CA8
	mov r0, #0
	ldr r2, [r5, #8]
	ldr r1, _02135FB4 ; =s_token_overlay_11_02166890
	add r2, r2, #0x1000
	strb r0, [r2, #0x52]
	ldr r2, [r5, #8]
	ldr r3, _02135FB8 ; =0x0000012D
	add r2, r2, #0x1000
	strb r0, [r2, #0x1f]
	ldr r2, [r5, #8]
	add r2, r2, #0x1000
	strb r0, [r2, #0x17f]
	ldr r2, [r5, #8]
	add r2, r2, #0x1000
	strb r0, [r2, #0x10]
	ldr r2, [r5, #8]
	add r2, r2, #0x1000
	strb r0, [r2, #0x188]
	ldr r2, [r5, #8]
	add r0, r2, #0x1000
	add r2, r2, #0x52
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	bl ov11_02137A44
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _02135FBC ; =s_locator_overlay_11_02166898
	add r0, r2, #0x1000
	add r2, r2, #0x1f
	ldr r0, [r0, #0x314]
	mov r3, #0x33
	add r2, r2, #0x1000
	bl ov11_02137A44
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _02135FC0 ; =s_challenge_overlay_11_021668a0
	add r0, r2, #0x1000
	add r2, r2, #0x7f
	ldr r0, [r0, #0x314]
	mov r3, #9
	add r2, r2, #0x1100
	bl ov11_02137A44
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _02135FC4 ; =s_datetime_overlay_11_021668ac
	add r0, r2, #0x1000
	add r2, r2, #0x10
	ldr r0, [r0, #0x314]
	mov r3, #0xf
	add r2, r2, #0x1000
	bl ov11_02137A44
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _02135FC8 ; =s_Set_Cookie_overlay_11_021668b8
	add r0, r2, #0x1000
	add r2, r2, #0x188
	ldr r0, [r0, #0x314]
	mov r3, #0x41
	add r2, r2, #0x1000
	bl ov11_02137A98
	mov r1, r5
	ldr r0, [r1, #8]
	mov r2, #0
	add r0, r0, #0x1000
	cmp r4, #0x28
	strb r2, [r0, #0x1b3]
	movne r0, #1
	strne r0, [r1]
	moveq r0, #2
	streq r0, [r1]
_02135F94:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02135F9C: .word OVERLAY11_BSS_02169CA8
_02135FA0: .word s_Date_overlay_11_02166870
_02135FA4: .word errno
_02135FA8: .word s_httpresult_overlay_11_02166878
_02135FAC: .word 0x00004E85
_02135FB0: .word s_returncd_overlay_11_02166884
_02135FB4: .word s_token_overlay_11_02166890
_02135FB8: .word 0x0000012D
_02135FBC: .word s_locator_overlay_11_02166898
_02135FC0: .word s_challenge_overlay_11_021668a0
_02135FC4: .word s_datetime_overlay_11_021668ac
_02135FC8: .word s_Set_Cookie_overlay_11_021668b8

	arm_func_start ov11_02135FCC
ov11_02135FCC: ; 0x02135FCC
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x94
	ldr r3, _02136148 ; =OVERLAY11_BSS_02169CA8
	mov r4, r0
	ldr r0, [r3, #0x10]
	ldr r3, [r3, #0xc]
	cmp r0, #0
	mov r6, r1
	mov r5, r2
	cmpeq r3, #0
	bne _02136028
	ldr r0, _0213614C ; =s_acctcreate_overlay_11_021668c4
	bl strlen
	mov r3, r0
	ldr r1, _02136150 ; =s_action_overlay_11_021668d0
	ldr r2, _0213614C ; =s_acctcreate_overlay_11_021668c4
	mov r0, r4
	bl ov11_021371C4
	cmp r0, #0
	beq _02136080
	add sp, sp, #0x94
	mov r0, #8
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov11_02135FCC
_02136028:
	ldr r0, _02136154 ; =s_login_overlay_11_021668d8
	bl strlen
	mov r3, r0
	ldr r1, _02136150 ; =s_action_overlay_11_021668d0
	ldr r2, _02136154 ; =s_login_overlay_11_021668d8
	mov r0, r4
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	bl strlen
	mov r3, r0
	ldr r1, _02136158 ; =s_gsbrcd_overlay_11_021668e0
	mov r0, r4
	mov r2, r6
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmneia sp!, {r3, r4, r5, r6, pc}
_02136080:
	ldr r1, _0213615C ; =OVERLAY11_BSS_02169CB4
	add r0, sp, #0
	bl ov11_021361DC
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #5
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _02136160 ; =OVERLAY11_BSS_02169CD0
	add r1, sp, #0
	ldr r2, [r0]
	mov r0, r4
	bl ov11_0213647C
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #8
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _02136148 ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021360FC
	ldr r0, _02136164 ; =s_Y_overlay_11_021668e8
	bl strlen
	mov r3, r0
	ldr r1, _02136168 ; =s_iswfc_overlay_11_021668ec
	ldr r2, _02136164 ; =s_Y_overlay_11_021668e8
	mov r0, r4
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmneia sp!, {r3, r4, r5, r6, pc}
_021360FC:
	mov r0, r5
	bl wcslen
	cmp r0, #0
	beq _0213613C
	mov r0, r5
	bl wcslen
	mov r3, r0
	ldr r1, _0213616C ; =s_ingamesn_overlay_11_021668f4
	mov r0, r4
	mov r2, r5
	mov r3, r3, lsl #1
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmneia sp!, {r3, r4, r5, r6, pc}
_0213613C:
	mov r0, #0
	add sp, sp, #0x94
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02136148: .word OVERLAY11_BSS_02169CA8
_0213614C: .word s_acctcreate_overlay_11_021668c4
_02136150: .word s_action_overlay_11_021668d0
_02136154: .word s_login_overlay_11_021668d8
_02136158: .word s_gsbrcd_overlay_11_021668e0
_0213615C: .word OVERLAY11_BSS_02169CB4
_02136160: .word OVERLAY11_BSS_02169CD0
_02136164: .word s_Y_overlay_11_021668e8
_02136168: .word s_iswfc_overlay_11_021668ec
_0213616C: .word s_ingamesn_overlay_11_021668f4

	arm_func_start ov11_02136170
ov11_02136170: ; 0x02136170
	stmdb sp!, {r4, lr}
	ldr r1, _021361B0 ; =OVERLAY11_BSS_02169CA8
	mov r4, r0
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, _021361B0 ; =OVERLAY11_BSS_02169CA8
	ldr r0, [r1, #8]
	add r0, r0, #0x1000
	str r4, [r0, #4]
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmia sp!, {r4, pc}
	.align 2, 0
_021361B0: .word OVERLAY11_BSS_02169CA8
	arm_func_end ov11_02136170

	arm_func_start ov11_021361B4
ov11_021361B4: ; 0x021361B4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl ov11_02139940
	add r1, sp, #0
	mov r0, r4
	bl ov11_021361DC
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov11_021361B4

	arm_func_start ov11_021361DC
ov11_021361DC: ; 0x021361DC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x8c
	mov r6, r1
	mov r1, #0
	mov r2, #0x94
	mov r4, r0
	bl MI_CpuFill8
	ldmia r6, {r3, r5}
	cmp r5, #0
	cmpeq r3, #0
	mov r1, #0xe
	beq _02136220
	ldr r2, _0213645C ; =s_013llu_overlay_11_02166900
	mov r0, r4
	str r5, [sp]
	bl OS_SNPrintf
	b _02136238
	arm_func_end ov11_021361DC
_02136220:
	ldr r3, [r6, #8]
	ldr r5, [r6, #0xc]
	ldr r2, _0213645C ; =s_013llu_overlay_11_02166900
	mov r0, r4
	str r5, [sp]
	bl OS_SNPrintf
_02136238:
	ldrh r3, [r6, #0x10]
	ldr r2, _02136460 ; =s_03u_overlay_11_02166908
	add r0, r4, #0xe
	mov r1, #7
	bl OS_SNPrintf
	ldr r0, _02136464 ; =0x027FFE0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02136260
	bl OS_Terminate
_02136260:
	ldr r0, _02136464 ; =0x027FFE0C
	add r1, r4, #0x15
	mov r2, #4
	bl MI_CpuCopy8
	ldr r0, _02136468 ; =0x027FFE10
	ldrb r0, [r0]
	cmp r0, #0
	bne _02136284
	bl OS_Terminate
_02136284:
	ldr r0, _02136468 ; =0x027FFE10
	add r1, r4, #0x1a
	mov r2, #2
	bl MI_CpuCopy8
	mov r1, #0x30
	add r0, sp, #0x16
	strb r1, [r4, #0x1d]
	bl OS_GetMacAddress
	ldr r5, _0213646C ; =s_02x_overlay_11_02166910
	add r7, sp, #0x16
	add r8, r4, #0x1f
	mov r6, #0
_021362B4:
	ldrb r2, [r7], #1
	mov r0, r8
	mov r1, r5
	bl OS_SPrintf
	add r6, r6, #1
	cmp r6, #6
	add r8, r8, #2
	blt _021362B4
	add r0, sp, #0x38
	bl OS_GetOwnerInfo
	ldrb r0, [sp, #0x38]
	ldr r2, _0213646C ; =s_02x_overlay_11_02166910
	mov r1, #3
	cmp r0, #8
	movhs r0, #1
	strcsb r0, [sp, #0x38]
	ldrb r3, [sp, #0x38]
	add r0, r4, #0x2c
	bl OS_SNPrintf
	add r0, sp, #0x3c
	add r1, r4, #0x7e
	mov r2, #0x14
	bl MI_CpuCopy8
	ldrb r1, [sp, #0x3b]
	ldr r2, _02136470 ; =s_02x_02x_overlay_11_02166918
	add r0, r4, #0x2f
	str r1, [sp]
	ldrb r3, [sp, #0x3a]
	mov r1, #5
	bl OS_SNPrintf
	add r0, sp, #0x28
	add r1, sp, #0x1c
	bl RTC_GetDateTime
	cmp r0, #0
	addne sp, sp, #0x8c
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sp, #0x2c]
	ldr r2, _02136474 ; =s_02d_02d_02d_02d_02d_02d_overlay_11_02166924
	str r0, [sp]
	ldr r1, [sp, #0x30]
	add r0, r4, #0x34
	str r1, [sp, #4]
	ldr r3, [sp, #0x1c]
	mov r1, #0xd
	str r3, [sp, #8]
	ldr r3, [sp, #0x20]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x24]
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x28]
	bl OS_SNPrintf
	bl OS_DisableInterrupts
	mov r6, r0
	bl WCM_GetApMacAddress
	mov r7, r0
	mov r1, #6
	bl DC_InvalidateRange
	cmp r7, #0
	bne _021363B8
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #0x8c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021363B8:
	ldr r5, _0213646C ; =s_02x_overlay_11_02166910
	add r8, r4, #0x41
	mov sb, #0
_021363C4:
	ldrb r2, [r7, sb]
	mov r0, r8
	mov r1, r5
	bl OS_SPrintf
	add sb, sb, #1
	cmp sb, #6
	add r8, r8, #2
	blt _021363C4
	bl DWC_AC_GetApType
	mov r3, r0
	ldr r2, _02136478 ; =s_02d_0000000_00_overlay_11_02166940
	add r0, r4, #0x6f
	mov r1, #0xe
	bl OS_SNPrintf
	add r0, sp, #0x14
	bl WCM_GetApEssid
	mov r5, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	cmp r5, #0
	bne _0213642C
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #0x8c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_0213642C:
	mov r0, r5
	add r1, r4, #0x72
	bl ov11_02134E3C
	mov r0, r5
	add r1, r4, #0x4e
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #1
	add sp, sp, #0x8c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0213645C: .word s_013llu_overlay_11_02166900
_02136460: .word s_03u_overlay_11_02166908
_02136464: .word 0x027FFE0C
_02136468: .word 0x027FFE10
_0213646C: .word s_02x_overlay_11_02166910
_02136470: .word s_02x_02x_overlay_11_02166918
_02136474: .word s_02d_02d_02d_02d_02d_02d_overlay_11_02166924
_02136478: .word s_02d_0000000_00_overlay_11_02166940

	arm_func_start ov11_0213647C
ov11_0213647C: ; 0x0213647C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x28
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov r3, #2
	ldr r2, _02136778 ; =s_03d_03d_overlay_11_02166950
	add r0, sp, #4
	mov r1, #0x21
	str r3, [sp]
	bl OS_SNPrintf
	add r0, sp, #4
	bl strlen
	mov r3, r0
	ldr r1, _0213677C ; =s_sdkver_overlay_11_0216695c
	mov r0, r6
	add r2, sp, #4
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl strlen
	mov r3, r0
	ldr r1, _02136780 ; =s_userid_overlay_11_02166964
	mov r0, r6
	mov r2, r5
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0xe
	bl strlen
	mov r3, r0
	ldr r1, _02136784 ; =s_passwd_overlay_11_0216696c
	mov r0, r6
	add r2, r5, #0xe
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x41
	bl strlen
	mov r3, r0
	ldr r1, _02136788 ; =s_bssid_overlay_11_02166974
	mov r0, r6
	add r2, r5, #0x41
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x6f
	bl strlen
	mov r3, r0
	ldr r1, _0213678C ; =s_apinfo_overlay_11_0216697c
	mov r0, r6
	add r2, r5, #0x6f
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x15
	bl strlen
	mov r3, r0
	ldr r1, _02136790 ; =s_gamecd_overlay_11_02166984
	mov r0, r6
	add r2, r5, #0x15
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1a
	bl strlen
	mov r3, r0
	ldr r1, _02136794 ; =s_makercd_overlay_11_0216698c
	mov r0, r6
	add r2, r5, #0x1a
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1d
	bl strlen
	mov r3, r0
	ldr r1, _02136798 ; =s_unitcd_overlay_11_02166994
	mov r0, r6
	add r2, r5, #0x1d
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1f
	bl strlen
	mov r3, r0
	ldr r1, _0213679C ; =s_macadr_overlay_11_0216699c
	mov r0, r6
	add r2, r5, #0x1f
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x2c
	bl strlen
	mov r3, r0
	ldr r1, _021367A0 ; =s_lang_overlay_11_021669a4
	mov r0, r6
	add r2, r5, #0x2c
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x2f
	bl strlen
	mov r3, r0
	ldr r1, _021367A4 ; =s_birth_overlay_11_021669ac
	mov r0, r6
	add r2, r5, #0x2f
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x34
	bl strlen
	mov r3, r0
	ldr r1, _021367A8 ; =s_devtime_overlay_11_021669b4
	mov r0, r6
	add r2, r5, #0x34
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x7e
	bl wcslen
	mov r3, r0
	ldr r1, _021367AC ; =s_devname_overlay_11_021669bc
	mov r0, r6
	add r2, r5, #0x7e
	mov r3, r3, lsl #1
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r4, #1
	bne _0213671C
	add r0, r5, #0x4e
	bl strlen
	mov r3, r0
	ldr r1, _021367B0 ; =s_ssid_overlay_11_021669c4
	mov r0, r6
	add r2, r5, #0x4e
	bl ov11_021371C4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_0213647C
_0213671C:
	ldr r2, _021367B4 ; =s_Nitro_WiFi_SDK_d_d_overlay_11_021669cc
	mov r3, #2
	add r0, sp, #4
	mov r1, #0x21
	str r3, [sp]
	bl OS_SNPrintf
	ldr r1, _021367B8 ; =s_User_Agent_overlay_11_021669e4
	add r2, sp, #4
	mov r0, r6
	bl ov11_021370E8
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021367BC ; =s_HTTP_X_GAMECD_overlay_11_021669f0
	mov r0, r6
	add r2, r5, #0x15
	bl ov11_021370E8
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02136778: .word s_03d_03d_overlay_11_02166950
_0213677C: .word s_sdkver_overlay_11_0216695c
_02136780: .word s_userid_overlay_11_02166964
_02136784: .word s_passwd_overlay_11_0216696c
_02136788: .word s_bssid_overlay_11_02166974
_0213678C: .word s_apinfo_overlay_11_0216697c
_02136790: .word s_gamecd_overlay_11_02166984
_02136794: .word s_makercd_overlay_11_0216698c
_02136798: .word s_unitcd_overlay_11_02166994
_0213679C: .word s_macadr_overlay_11_0216699c
_021367A0: .word s_lang_overlay_11_021669a4
_021367A4: .word s_birth_overlay_11_021669ac
_021367A8: .word s_devtime_overlay_11_021669b4
_021367AC: .word s_devname_overlay_11_021669bc
_021367B0: .word s_ssid_overlay_11_021669c4
_021367B4: .word s_Nitro_WiFi_SDK_d_d_overlay_11_021669cc
_021367B8: .word s_User_Agent_overlay_11_021669e4
_021367BC: .word s_HTTP_X_GAMECD_overlay_11_021669f0

	arm_func_start ov11_021367C0
ov11_021367C0: ; 0x021367C0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r2, _021368C8 ; =0x00001C14
	mov r6, r0
	ldr r4, [r5, #0xc]
	mov r1, #0
	bl MI_CpuFill8
	add r1, r6, #4
	add r0, r6, #0x1000
	mvn r2, #0
	str r2, [r0, #0xa30]
	mov lr, r5
	str r2, [r0, #0xa34]
	add ip, r1, #0x1000
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldr r0, _021368CC ; =s_ALLOC_http_lowrecvbuf_overlay_11_02166a30
	ldr r1, _021368D0 ; =0x00000B68
	blx r4
	add r1, r6, #0x1000
	str r0, [r1, #0x9cc]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r1, #0x20]
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _021368D4 ; =s_ALLOC_http_lowsendbuf_overlay_11_02166a48
	ldr r1, _021368D8 ; =0x000005EA
	blx r4
	add r2, r6, #0x1000
	str r0, [r2, #0x9d0]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r2, #0x20]
	ldmeqia sp!, {r4, r5, r6, pc}
	add r1, r6, #0x208
	ldr r2, [r2, #0xc]
	mov r0, r6
	add r1, r1, #0x1800
	bl ov11_02137364
	cmp r0, #0
	bne _0213687C
	add r1, r6, #0x1000
	mov r0, #1
	str r0, [r1, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_021367C0
_0213687C:
	ldr r1, [r5]
	mov r0, r6
	bl ov11_021374A4
	cmp r0, #0
	bne _021368A0
	add r1, r6, #0x1000
	mov r0, #1
	str r0, [r1, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
_021368A0:
	mov r0, r6
	bl ov11_02137028
	add r1, r6, #0x1000
	str r0, [r1, #0x20]
	cmp r0, #0
	moveq r0, #0xff
	streqb r0, [r1]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021368C8: .word 0x00001C14
_021368CC: .word s_ALLOC_http_lowrecvbuf_overlay_11_02166a30
_021368D0: .word 0x00000B68
_021368D4: .word s_ALLOC_http_lowsendbuf_overlay_11_02166a48
_021368D8: .word 0x000005EA

	arm_func_start ov11_021368DC
ov11_021368DC: ; 0x021368DC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _02136960 ; =s_Connection_overlay_11_02166a60
	ldr r2, _02136964 ; =s_close_overlay_11_02166a6c
	mov r4, r0
	bl ov11_021370E8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x1000
	ldr r0, [r0, #0x9f8]
	ldr r1, _02136968 ; =s_overlay_11_02166a74
	bl strstr
	add r0, r0, #4
	bl strlen
	movs r3, r0
	beq _02136954
	ldr r2, _0213696C ; =s_d_overlay_11_02166a7c
	add r0, sp, #0
	mov r1, #7
	bl OS_SNPrintf
	ldr r1, _02136970 ; =s_Content_Length_overlay_11_02166a80
	add r2, sp, #0
	mov r0, r4
	bl ov11_021370E8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	arm_func_end ov11_021368DC
_02136954:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02136960: .word s_Connection_overlay_11_02166a60
_02136964: .word s_close_overlay_11_02166a6c
_02136968: .word s_overlay_11_02166a74
_0213696C: .word s_d_overlay_11_02166a7c
_02136970: .word s_Content_Length_overlay_11_02166a80

	arm_func_start ov11_02136974
ov11_02136974: ; 0x02136974
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	add r0, r5, #0x3f8
	add r2, r5, #0x1000
	mov r3, #0
	add r0, r0, #0x1800
	mov r4, r1
	str r3, [r2, #0xc10]
	bl OS_InitMutex
	add r0, r5, #0x218
	add r0, r0, #0x1800
	bl OS_InitMutex
	add r0, r5, #0x1000
	ldr r0, [r0, #0x18]
	cmp r0, #1
	ldreq r0, _02136A28 ; =OVERLAY11_BSS_02169CC8
	moveq r1, #1
	ldrne r0, _02136A28 ; =OVERLAY11_BSS_02169CC8
	movne r1, #0
	str r1, [r0]
	add r0, r5, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _021369F0
	add r0, r5, #0x338
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02136974
_021369F0:
	add r0, r5, #0x338
	mov r1, #0x1000
	str r1, [sp]
	ldr r1, _02136A2C ; =ov11_02136C58
	mov r2, r5
	add r0, r0, #0x1800
	add r3, r5, #0x1000
	str r4, [sp, #4]
	bl OS_CreateThread
	add r0, r5, #0x338
	add r0, r0, #0x1800
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02136A28: .word OVERLAY11_BSS_02169CC8
_02136A2C: .word ov11_02136C58

	arm_func_start ov11_02136A30
ov11_02136A30: ; 0x02136A30
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0]
	cmp r0, #0xff
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x3f8
	add r0, r0, #0x1800
	bl OS_LockMutex
	add r0, r4, #0x3f8
	add r1, r4, #0x1000
	mov r2, #1
	add r0, r0, #0x1800
	str r2, [r1, #0xc10]
	bl OS_UnlockMutex
	add r0, r4, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
	ldmia sp!, {r4, pc}
	arm_func_end ov11_02136A30

	arm_func_start ov11_02136A8C
ov11_02136A8C: ; 0x02136A8C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x130]
	cmp r0, #1
	bne _02136AC0
	add r0, r4, #0x1d4
	add r0, r0, #0x1800
	bl OS_GetLowEntropyData
	add r0, r4, #0x1d4
	add r0, r0, #0x1800
	mov r1, #0x20
	bl CPS_SslAddRandomSeed
	arm_func_end ov11_02136A8C
_02136AC0:
	add r0, r4, #0x3f8
	add r0, r0, #0x1800
	bl OS_LockMutex
	add r0, r4, #0x1000
	ldr r0, [r0, #0xc10]
	cmp r0, #1
	add r0, r4, #0x3f8
	add r0, r0, #0x1800
	bne _02136AF0
	bl OS_UnlockMutex
	mov r0, #0
	ldmia sp!, {r4, pc}
_02136AF0:
	bl OS_UnlockMutex
	mov r0, #0xa
	bl OS_Sleep
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02136B04
ov11_02136B04: ; 0x02136B04
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x138
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x64
	bl MI_CpuFill8
	ldr r0, _02136B54 ; =0x00000B68
	add r1, r4, #0x1000
	str r0, [r1, #0x174]
	ldr r3, [r1, #0x9cc]
	add r0, r4, #0x138
	ldr r2, _02136B58 ; =0x000005EA
	str r3, [r1, #0x178]
	str r2, [r1, #0x180]
	ldr r2, [r1, #0x9d0]
	add r0, r0, #0x1000
	str r2, [r1, #0x184]
	bl CPS_SocRegister
	ldmia sp!, {r4, pc}
	.align 2, 0
_02136B54: .word 0x00000B68
_02136B58: .word 0x000005EA
	arm_func_end ov11_02136B04

	arm_func_start ov11_02136B5C
ov11_02136B5C: ; 0x02136B5C
	ldr ip, _02136B6C ; =FUN_0204E710
	add r0, r0, #0x1000
	ldr r0, [r0, #0x124]
	bx ip
	.align 2, 0
_02136B6C: .word CPS_Resolve
	arm_func_end ov11_02136B5C

	arm_func_start ov11_02136B70
ov11_02136B70: ; 0x02136B70
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r6, [r0, #0xa08]
	add r2, r5, #0x208
	ldr r1, _02136C4C ; =s_overlay_11_02166a74
	mov r0, r6
	add r4, r2, #0x1800
	bl strstr
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _02136C4C ; =s_overlay_11_02166a74
	mov r0, r6
	bl strstr
	add r1, r5, #0x218
	add r6, r0, #4
	add r0, r1, #0x1800
	bl OS_LockMutex
	ldr r0, [r4, #4]
	add r1, r5, #0x218
	sub r2, r0, r6
	add r0, r5, #0x1000
	str r2, [r0, #0xa34]
	add r0, r1, #0x1800
	bl OS_UnlockMutex
	ldr r0, [r4]
	ldr r1, _02136C50 ; =s_Content_Length_overlay_11_02166a90
	bl strstr
	movs r8, r0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _02136C50 ; =s_Content_Length_overlay_11_02166a90
	bl strlen
	mov r7, r0
	ldr r1, _02136C54 ; =s_overlay_11_02166aa4
	add r0, r8, r7
	bl strstr
	mov r6, r0
	add r0, r5, #0x218
	ldrsb r4, [r6]
	mov r1, #0
	add r0, r0, #0x1800
	strb r1, [r6]
	bl OS_LockMutex
	add r0, r8, r7
	bl atol
	add r1, r5, #0x1000
	add r2, r5, #0x218
	str r0, [r1, #0xa30]
	add r0, r2, #0x1800
	bl OS_UnlockMutex
	strb r4, [r6]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02136C4C: .word s_overlay_11_02166a74
_02136C50: .word s_Content_Length_overlay_11_02166a90
_02136C54: .word s_overlay_11_02166aa4
	arm_func_end ov11_02136B70

	arm_func_start ov11_02136C58
ov11_02136C58: ; 0x02136C58
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	add r0, sl, #0x1000
	ldr r8, [r0, #0x1c]
	add r0, sl, #0x138
	add r1, sl, #0x19c
	add r2, sl, #0x208
	add r4, r0, #0x1000
	cmp r8, #0
	mov r0, sl
	add r5, r1, #0x1000
	add r7, r2, #0x1800
	mov fp, #0
	ldrle r8, _02136F60 ; =0x0000EA60
	bl ov11_02136B04
	mov r0, sl
	bl ov11_02136B5C
	movs r6, r0
	add r0, sl, #0x1000
	moveq r1, #2
	streq r1, [r0, #0x20]
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str r6, [r0, #0x12c]
	bl CPS_SocUse
	add r0, sl, #0x1000
	ldr r0, [r0, #0x130]
	cmp r0, #1
	bne _02136D0C
	mov r0, r5
	mov r1, #0
	mov r2, #0x830
	bl MI_CpuFill8
	ldr r1, _02136F64 ; =ov11_02137358
	add r0, sl, #0x1000
	str r1, [r5, #0x810]
	ldr r1, [r0, #0x124]
	ldr r0, _02136F68 ; =PTR_ptr_null_overlay_11_02167838_overlay_11_02166a00
	str r1, [r5, #0x800]
	mov r1, #0xc
	str r5, [r4, #0xc]
	bl CPS_SetRootCa
	mov r0, #1
	bl CPS_SetSsl
	arm_func_end ov11_02136C58
_02136D0C:
	add r0, sl, #0x1100
	ldrh r1, [r0, #0x34]
	mov r2, r6
	mov r0, #0
	bl CPS_SocBind
	bl CPS_TcpConnect
	cmp r0, #0
	add r0, sl, #0x1000
	beq _02136D48
	mov r1, #3
	str r1, [r0, #0x20]
	bl CPS_SocRelease
	bl CPS_SocUnRegister
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02136D48:
	ldr r4, [r0, #0x9f8]
	mov r0, r4
	bl strlen
	mov r1, r0
	mov r0, r4
	bl CPS_SocWrite
	str r0, [sp, #0x10]
	cmp r0, #0
	bgt _02136D7C
	add r0, sl, #0x1000
	mov r1, #5
	str r1, [r0, #0x20]
	b _02136F48
_02136D7C:
	bl CPS_SocFlush
	mov r0, sl
	bl ov11_02136A8C
	cmp r0, #0
	bne _02136DA0
	add r0, sl, #0x1000
	mov r1, #7
	str r1, [r0, #0x20]
	b _02136F48
_02136DA0:
	ldr r0, [r7]
	str r0, [r7, #4]
	ldr r1, [r7]
	ldr r0, [r7, #0xc]
	add r0, r1, r0
	str r0, [r7, #8]
	bl OS_GetTick
	str r0, [sp, #8]
	add r0, sl, #0x234
	str r1, [sp, #4]
	add r5, sl, #0x218
	add r6, r0, #0x1800
	add r4, sl, #0x1000
_02136DD4:
	ldr r0, _02136F6C ; =CPSMyIp
	ldr r0, [r0]
	cmp r0, #0
	bne _02136DF4
	add r0, sl, #0x1000
	mov r1, #5
	str r1, [r0, #0x20]
	b _02136F48
_02136DF4:
	bl CPS_SocGetLength
	str r0, [sp, #0x10]
	cmp r0, #0
	blt _02136F24
	ble _02136EA8
	bl OS_GetTick
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r1, [sp, #4]
	bl CPS_SocRead
	cmp r0, #0
	beq _02136F24
	ldmib r7, {r1, r2}
	sub r2, r2, #1
	ldr sb, [sp, #0x10]
	sub r2, r2, r1
	cmp sb, r2
	movge sb, r2
	mov r2, sb
	bl MI_CpuCopy8
	ldr r0, [r7, #4]
	cmp fp, #1
	add r1, r0, sb
	str r1, [r7, #4]
	mov r0, #0
	strb r0, [r1]
	bne _02136E80
	add r0, r5, #0x1800
	bl OS_LockMutex
	ldr r1, [r6]
	add r0, r5, #0x1800
	add r1, r1, sb
	str r1, [r6]
	bl OS_UnlockMutex
	b _02136E8C
_02136E80:
	mov r0, sl
	bl ov11_02136B70
	mov fp, r0
_02136E8C:
	ldr r0, [sp, #0x10]
	cmp r0, sb
	bls _02136EA0
	bl CPS_SocConsume
	b _02136F24
_02136EA0:
	mov r0, sb
	bl CPS_SocConsume
_02136EA8:
	ldr r1, [r4, #0xa30]
	cmp r1, #0
	ldrge r0, [r4, #0xa34]
	cmpge r0, r1
	bge _02136F24
	bl OS_GetTick
	ldr r2, [sp, #8]
	mov r3, #0
	subs r2, r0, r2
	ldr r0, [sp, #4]
	sbc r0, r1, r0
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	ldr r2, _02136F70 ; =0x000082EA
	bl _ll_udiv
	cmp r1, r8, asr #31
	cmpeq r0, r8
	bls _02136F04
	add r0, sl, #0x1000
	mov r1, #6
	str r1, [r0, #0x20]
	b _02136F48
_02136F04:
	mov r0, sl
	bl ov11_02136A8C
	cmp r0, #0
	bne _02136DD4
	add r0, sl, #0x1000
	mov r1, #7
	str r1, [r0, #0x20]
	b _02136F48
_02136F24:
	bl CPS_TcpShutdown
	bl CPS_TcpClose
	bl CPS_SocRelease
	bl CPS_SocUnRegister
	add r0, sl, #0x1000
	mov r1, #8
	str r1, [r0, #0x20]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02136F48:
	bl CPS_TcpShutdown
	bl CPS_TcpClose
	bl CPS_SocRelease
	bl CPS_SocUnRegister
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02136F60: .word 0x0000EA60
_02136F64: .word ov11_02137358
_02136F68: .word PTR_ptr_null_overlay_11_02167838_overlay_11_02166a00
_02136F6C: .word CPSMyIp
_02136F70: .word 0x000082EA

	arm_func_start ov11_02136F74
ov11_02136F74: ; 0x02136F74
	stmdb sp!, {r3, r4, r5, lr}
	movs r5, r0
	add r1, r5, #0x1000
	ldr r4, [r1, #0x14]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r1, r5, #0x238
	add r1, r1, #0x1800
	mov r2, #0x20
	bl ov11_02137AD8
	add r1, r5, #0x208
	mov r0, r5
	add r1, r1, #0x1800
	bl ov11_021373BC
	add r1, r5, #0x1f8
	mov r0, r5
	add r1, r1, #0x1800
	bl ov11_021373BC
	add r0, r5, #0x1000
	ldr r1, [r0, #0x9cc]
	cmp r1, #0
	beq _02136FE0
	ldr r0, _0213701C ; =s_FREE_http_lowrecvbuf_overlay_11_02166aa8
	mov r2, #0
	blx r4
	add r0, r5, #0x1000
	mov r1, #0
	str r1, [r0, #0x9cc]
	arm_func_end ov11_02136F74
_02136FE0:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x9d0]
	cmp r1, #0
	beq _02137008
	ldr r0, _02137020 ; =s_FREE_http_lowsendbuf_overlay_11_02166ac0
	mov r2, #0
	blx r4
	add r0, r5, #0x1000
	mov r1, #0
	str r1, [r0, #0x9d0]
_02137008:
	ldr r2, _02137024 ; =0x00001C14
	mov r0, r5
	mov r1, #0
	bl MI_CpuFill8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0213701C: .word s_FREE_http_lowrecvbuf_overlay_11_02166aa8
_02137020: .word s_FREE_http_lowsendbuf_overlay_11_02166ac0
_02137024: .word 0x00001C14

	arm_func_start ov11_02137028
ov11_02137028: ; 0x02137028
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	add r0, r7, #0x1000
	ldr r1, [r0, #8]
	add r0, r7, #0x1f8
	cmp r1, #0
	ldreq r6, _021370E0 ; =s_POST_s_HTTP_1_0_Content_type_a_overlay_11_02166ad8
	add r5, r0, #0x1800
	add r0, r7, #0x1000
	ldrne r6, _021370E4 ; =s_GET_s_HTTP_1_0_Host_s_overlay_11_02166b2c
	ldr r0, [r0, #0x124]
	bl strlen
	mov r4, r0
	mov r0, r6
	bl strlen
	add r1, r7, #0x1000
	mov r8, r0
	ldr r0, [r1, #0x128]
	bl strlen
	sub r1, r8, #4
	add r0, r1, r0
	add r2, r4, r0
	add r0, r7, #0x1f8
	add r1, r0, #0x1800
	add r2, r2, #0x400
	mov r0, r7
	bl ov11_02137364
	cmp r0, #1
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r3, r7, #0x1000
	ldr r0, [r3, #0x124]
	mov r2, r6
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0x128]
	bl OS_SNPrintf
	ldr r1, [r5, #4]
	add r0, r1, r0
	str r0, [r5, #4]
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021370E0: .word s_POST_s_HTTP_1_0_Content_type_a_overlay_11_02166ad8
_021370E4: .word s_GET_s_HTTP_1_0_Host_s_overlay_11_02166b2c
	arm_func_end ov11_02137028

	arm_func_start ov11_021370E8
ov11_021370E8: ; 0x021370E8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r6, r2
	add r2, r8, #0x1f8
	mov r0, r6
	mov r7, r1
	add r5, r2, #0x1800
	bl strlen
	mov r4, r0
	ldr r0, _021371BC ; =s_s_s_overlay_11_02166b4c
	bl strlen
	mov sb, r0
	mov r0, r7
	bl strlen
	sub r1, sb, #4
	add r0, r1, r0
	add r4, r4, r0
	ldmib r5, {r1, r2}
	add r0, r4, #1
	sub r1, r2, r1
	cmp r0, r1
	ble _02137160
	sub r2, r4, r1
	mov r0, r8
	mov r1, r5
	add r2, r2, #1
	bl ov11_021373FC
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov11_021370E8
_02137160:
	ldr r0, [r5]
	ldr r1, _021371C0 ; =s_overlay_11_02166a74
	bl strstr
	add sb, r0, #2
	ldrsb r8, [r0, #2]
	mov r0, sb
	bl strlen
	add r2, r0, #1
	add r0, sb, r4
	mov r1, sb
	bl memmove
	ldr r2, _021371BC ; =s_s_s_overlay_11_02166b4c
	str r6, [sp]
	mov r3, r7
	mov r0, sb
	add r1, r4, #1
	bl OS_SNPrintf
	strb r8, [sb, r0]
	ldr r1, [r5, #4]
	mov r0, #0
	add r1, r1, r4
	str r1, [r5, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021371BC: .word s_s_s_overlay_11_02166b4c
_021371C0: .word s_overlay_11_02166a74

	arm_func_start ov11_021371C4
ov11_021371C4: ; 0x021371C4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	add r0, sl, #0x1000
	ldr r4, [r0, #0x9f4]
	add r0, sl, #0x1f8
	cmp r4, #0
	ldreq r7, _021372C8 ; =s_s_overlay_11_02166b58
	mov r8, r2
	add r4, sl, #0x1000
	add r6, r0, #0x1800
	ldr r0, [r4, #0x9f4]
	mov fp, r3
	add r5, r0, #1
	mov r2, #0
	mov sb, r1
	ldrne r7, _021372CC ; =s_s_overlay_11_02166b5c
	mov r0, r8
	mov r1, fp
	mov r3, r2
	str r5, [r4, #0x9f4]
	bl DWC_Auth_Base64Encode
	mov r5, r0
	mov r0, r7
	bl strlen
	mov r4, r0
	mov r0, sb
	bl strlen
	sub r1, r4, #2
	add r2, r1, r0
	ldmib r6, {r0, r1}
	add r2, r5, r2
	sub r1, r1, r0
	cmp r2, r1
	ble _02137274
	sub r2, r2, r1
	mov r0, sl
	mov r1, r6
	add r2, r2, #1
	bl ov11_021373FC
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldmib r6, {r0, r1}
	sub r1, r1, r0
	arm_func_end ov11_021371C4
_02137274:
	mov r2, r7
	mov r3, sb
	bl OS_SNPrintf
	ldr r2, [r6, #4]
	mov r1, fp
	add r2, r2, r0
	str r2, [r6, #4]
	ldr r0, [r6, #8]
	sub r3, r0, r2
	mov r0, r8
	sub r3, r3, #1
	bl DWC_Auth_Base64Encode
	cmp r0, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r6, #4]
	mov r0, #0
	add r1, r1, r5
	str r1, [r6, #4]
	strb r0, [r1]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021372C8: .word s_s_overlay_11_02166b58
_021372CC: .word s_s_overlay_11_02166b5c

	arm_func_start ov11_021372D0
ov11_021372D0: ; 0x021372D0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	add r1, r7, #0x1f8
	mov r0, r6
	add r5, r1, #0x1800
	bl strlen
	mov r4, r0
	ldmib r5, {r0, r1}
	sub r1, r1, r0
	cmp r4, r1
	ble _02137328
	sub r2, r4, r1
	mov r0, r7
	mov r1, r5
	add r2, r2, #1
	bl ov11_021373FC
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldmib r5, {r0, r1}
	sub r1, r1, r0
	arm_func_end ov11_021372D0
_02137328:
	ldr r2, _02137354 ; =s_s_overlay_11_02166b64
	mov r3, r6
	bl OS_SNPrintf
	cmp r0, r4
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5, #4]
	add r0, r1, r0
	str r0, [r5, #4]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02137354: .word s_s_overlay_11_02166b64

	arm_func_start ov11_02137358
ov11_02137358: ; 0x02137358
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr
	arm_func_end ov11_02137358

	arm_func_start ov11_02137364
ov11_02137364: ; 0x02137364
	stmdb sp!, {r3, r4, r5, lr}
	movs r4, r2
	add r0, r0, #0x1000
	ldr r2, [r0, #0x10]
	mov r5, r1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _021373B8 ; =s_ALLOC_buf_buffer_overlay_11_02166b68
	mov r1, r4
	blx r2
	str r0, [r5]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	str r0, [r5, #4]
	str r4, [r5, #0xc]
	ldr r0, [r5]
	add r0, r0, r4
	str r0, [r5, #8]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021373B8: .word s_ALLOC_buf_buffer_overlay_11_02166b68
	arm_func_end ov11_02137364

	arm_func_start ov11_021373BC
ov11_021373BC: ; 0x021373BC
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	add r0, r0, #0x1000
	cmp r1, #0
	ldr r3, [r0, #0x14]
	beq _021373E4
	ldr r0, _021373F8 ; =s_FREE_buf_buffer_overlay_11_02166b7c
	mov r2, #0
	blx r3
	arm_func_end ov11_021373BC
_021373E4:
	mov r0, r4
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021373F8: .word s_FREE_buf_buffer_overlay_11_02166b7c

	arm_func_start ov11_021373FC
ov11_021373FC: ; 0x021373FC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	add r0, r0, #0x1000
	ldr r7, [r0, #0x14]
	mov r5, r2
	mov r6, r1
	cmp r5, #0
	ldr r2, [r0, #0x10]
	movle r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0xc]
	ldr r0, _0213749C ; =s_ALLOC_newptr_overlay_11_02166b90
	add r1, r1, r5
	blx r2
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6]
	ldr r2, [r6, #0xc]
	mov r1, r4
	bl MI_CpuCopy8
	ldr r1, [r6]
	ldr r0, _021374A0 ; =s_FREE_buf_buffer_overlay_11_02166b7c
	mov r2, #0
	blx r7
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldmia r6, {r0, r1}
	sub r0, r4, r0
	add r0, r1, r0
	str r0, [r6, #4]
	ldr r1, [r6, #0xc]
	mov r0, #1
	add r1, r1, r5
	str r1, [r6, #0xc]
	str r4, [r6]
	ldr r1, [r6, #0xc]
	add r1, r4, r1
	str r1, [r6, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0213749C: .word s_ALLOC_newptr_overlay_11_02166b90
_021374A0: .word s_FREE_buf_buffer_overlay_11_02166b7c
	arm_func_end ov11_021373FC

	arm_func_start ov11_021374A4
ov11_021374A4: ; 0x021374A4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r0
	mov r0, r6
	mov r4, #0
	bl strlen
	cmp r0, #0x100
	movhs r0, r4
	ldmhsia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x24
	mov r1, r6
	add r0, r0, #0x1000
	mov r2, #0x100
	bl strncpy
	mov r0, r6
	bl strlen
	add r1, r5, #0x24
	mov r6, r0
	add r0, r1, #0x1000
	bl strlen
	cmp r6, r0
	movne r0, r4
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x24
	ldr r1, _021375E8 ; =s_http_overlay_11_02166ba0
	add r0, r0, #0x1000
	bl strstr
	cmp r0, #0
	beq _02137540
	add r0, r5, #0x2b
	add r1, r0, #0x1000
	add r0, r5, #0x1000
	str r1, [r0, #0x124]
	mov r1, r4
	str r1, [r0, #0x130]
	add r0, r5, #0x1100
	mov r1, #0x50
	strh r1, [r0, #0x34]
	b _0213757C
	arm_func_end ov11_021374A4
_02137540:
	add r0, r5, #0x24
	ldr r1, _021375EC ; =s_https_overlay_11_02166ba8
	add r0, r0, #0x1000
	bl strstr
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, pc}
	add r2, r0, #8
	add r0, r5, #0x1000
	mov r1, #1
	str r2, [r0, #0x124]
	str r1, [r0, #0x130]
	rsb r1, r1, #0x1bc
	add r0, r5, #0x1100
	strh r1, [r0, #0x34]
_0213757C:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x124]
	ldr r1, _021375F0 ; =s_overlay_11_02166bb4
	bl strstr
	cmp r0, #0
	movne r1, #0
	strneb r1, [r0]
	addne r4, r0, #1
	add r0, r5, #0x1000
	ldr r0, [r0, #0x124]
	ldr r1, _021375F4 ; =s_overlay_11_02166bb8
	bl strstr
	cmp r0, #0
	mov r1, #0
	addeq r0, r5, #0x1000
	strneb r1, [r0]
	addne r1, r0, #1
	addne r0, r5, #0x1000
	str r1, [r0, #0x128]
	cmp r4, #0
	beq _021375E0
	mov r0, r4
	bl atol
	add r1, r5, #0x1100
	strh r0, [r1, #0x34]
_021375E0:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021375E8: .word s_http_overlay_11_02166ba0
_021375EC: .word s_https_overlay_11_02166ba8
_021375F0: .word s_overlay_11_02166bb4
_021375F4: .word s_overlay_11_02166bb8

	arm_func_start ov11_021375F8
ov11_021375F8: ; 0x021375F8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	add r0, r0, #0x1000
	ldmib r8, {r1, r4}
	cmp r4, r1
	ldr r4, [r0, #0x10]
	ldr r5, [r0, #0x14]
	mov r7, r2
	mov r6, r3
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl strlen
	mov r1, r0
	ldr r0, _0213773C ; =s_ALLOC_result_entry_i_label_overlay_11_02166bbc
	add r1, r1, #1
	blx r4
	ldr r2, [r8]
	ldr r1, [r8, #8]
	str r0, [r2, r1, lsl #3]
	ldr r1, [r8, #8]
	ldr r2, [r8]
	ldr r0, [r2, r1, lsl #3]
	cmp r0, #0
	beq _021376D4
	mov r0, r6
	bl strlen
	mov r1, r0
	ldr r0, _02137740 ; =s_ALLOC_result_entry_i_value_overlay_11_02166bdc
	add r1, r1, #1
	blx r4
	ldr r2, [r8]
	ldr r1, [r8, #8]
	add r1, r2, r1, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #8]
	ldr r2, [r8]
	add r0, r2, r1, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021376D4
	ldr r0, [r2, r1, lsl #3]
	mov r1, r7
	bl strcpy
	ldr r2, [r8]
	ldr r0, [r8, #8]
	mov r1, r6
	add r0, r2, r0, lsl #3
	ldr r0, [r0, #4]
	bl strcpy
	ldr r1, [r8, #8]
	mov r0, #1
	add r1, r1, #1
	str r1, [r8, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov11_021375F8
_021376D4:
	ldr r1, [r2, r1, lsl #3]
	cmp r1, #0
	beq _021376FC
	ldr r0, _02137744 ; =s_FREE_result_entry_i_label_overlay_11_02166bfc
	mov r2, #0
	blx r5
	ldr r1, [r8]
	ldr r0, [r8, #8]
	mov r2, #0
	str r2, [r1, r0, lsl #3]
_021376FC:
	ldr r1, [r8]
	ldr r0, [r8, #8]
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02137734
	ldr r0, _02137748 ; =s_FREE_result_entry_i_value_overlay_11_02166c18
	mov r2, #0
	blx r5
	ldr r1, [r8]
	ldr r0, [r8, #8]
	mov r2, #0
	add r0, r1, r0, lsl #3
	str r2, [r0, #4]
_02137734:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0213773C: .word s_ALLOC_result_entry_i_label_overlay_11_02166bbc
_02137740: .word s_ALLOC_result_entry_i_value_overlay_11_02166bdc
_02137744: .word s_FREE_result_entry_i_label_overlay_11_02166bfc
_02137748: .word s_FREE_result_entry_i_value_overlay_11_02166c18

	arm_func_start ov11_0213774C
ov11_0213774C: ; 0x0213774C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov r4, r0
	add r0, r4, #0x238
	mov r6, r1
	add r0, r0, #0x1800
	mov r3, #0x20
	mov r1, #0
	mov r2, #0x100
	str r0, [sp, #4]
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	bl MI_CpuFill8
	add r0, r4, #0x1000
	ldr r5, [r0, #0xa08]
	ldr r1, _021379CC ; =s_overlay_11_02166a74
	mov r0, r5
	bl strstr
	str r0, [sp]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r0, #4
	bl strlen
	ldr r1, [sp]
	add r1, r1, #4
	add fp, r1, r0
	ldr r1, _021379D0 ; =s_overlay_11_02166c34
	mov r0, r5
	bl strstr
	movs r7, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrsb sb, [r7, #4]
	ldr r2, _021379D4 ; =s_httpresult_overlay_11_02166c38
	mov r5, #0
	add r1, sp, #4
	mov r0, r4
	add r3, r7, #1
	strb r5, [r7, #4]
	bl ov11_021375F8
	cmp r0, #1
	addne sp, sp, #0x10
	strb sb, [r7, #4]
	movne r0, r5
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r6, #1
	beq _0213782C
	ldr r1, _021379D8 ; =s_200_overlay_11_02166c44
	add r0, r7, #1
	mov r2, #3
	bl strncmp
	cmp r0, #0
	beq _02137838
	arm_func_end ov11_0213774C
_0213782C:
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02137838:
	ldr r1, _021379DC ; =s_overlay_11_02166aa4
	add r0, r7, #5
	bl strstr
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, r5
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add sb, r0, #2
	b _021378EC
_0213785C:
	ldr r1, _021379E0 ; =s_overlay_11_02166c48
	mov r0, sb
	bl strstr
	movs r6, r0
	beq _02137900
	ldrsb r7, [r6]
	mov r1, #0
	add sl, r6, #2
	strb r1, [r6]
	ldr r1, _021379DC ; =s_overlay_11_02166aa4
	mov r0, sl
	bl strstr
	movs r5, r0
	streqb r7, [r6]
	beq _02137900
	ldrsb r8, [r5]
	mov r1, #0
	mov r2, sb
	strb r1, [r5]
	mov r0, r4
	add r1, sp, #4
	mov r3, sl
	bl ov11_021375F8
	cmp r0, #1
	beq _021378D4
	strb r7, [r6]
	add sp, sp, #0x10
	strb r8, [r5]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021378D4:
	mov r0, sl
	bl strlen
	strb r7, [r6]
	add r0, sl, r0
	strb r8, [r5]
	add sb, r0, #2
_021378EC:
	ldrsb r0, [sb]
	cmp r0, #0xd
	ldrnesb r0, [sb, #1]
	cmpne r0, #0xa
	bne _0213785C
_02137900:
	ldr r0, [sp]
	add r7, r0, #4
	cmp r7, fp
	bhs _021379C0
_02137910:
	ldr r1, _021379E4 ; =s_overlay_11_02166c4c
	mov r0, r7
	bl strstr
	movs r5, r0
	beq _021379C0
	ldrsb sb, [r5]
	mov r1, #0
	add r6, r5, #1
	strb r1, [r5]
	ldr r1, _021379E8 ; =s_overlay_11_02166c50
	mov r0, r6
	bl strstr
	movs sl, r0
	bne _02137958
	ldr r1, _021379DC ; =s_overlay_11_02166aa4
	mov r0, r6
	bl strstr
	mov sl, r0
_02137958:
	cmp sl, #0
	ldrnesb r8, [sl]
	movne r0, #0
	mov r2, r7
	strneb r0, [sl]
	mov r0, r4
	add r1, sp, #4
	mov r3, r6
	bl ov11_021375F8
	cmp r0, #1
	beq _0213799C
	strb sb, [r5]
	cmp sl, #0
	add sp, sp, #0x10
	strneb r8, [sl]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213799C:
	mov r0, r6
	bl strlen
	add r0, r6, r0
	strb sb, [r5]
	cmp sl, #0
	add r7, r0, #1
	strneb r8, [sl]
	cmp r7, fp
	blo _02137910
_021379C0:
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021379CC: .word s_overlay_11_02166a74
_021379D0: .word s_overlay_11_02166c34
_021379D4: .word s_httpresult_overlay_11_02166c38
_021379D8: .word s_200_overlay_11_02166c44
_021379DC: .word s_overlay_11_02166aa4
_021379E0: .word s_overlay_11_02166c48
_021379E4: .word s_overlay_11_02166c4c
_021379E8: .word s_overlay_11_02166c50

	arm_func_start ov11_021379EC
ov11_021379EC: ; 0x021379EC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	arm_func_end ov11_021379EC
_021379FC:
	add r0, r6, r4, lsl #3
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa38]
	cmp r1, #0
	beq _02137A3C
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _02137A30
	add r0, r6, r4, lsl #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa3c]
	ldmia sp!, {r4, r5, r6, pc}
_02137A30:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021379FC
_02137A3C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02137A44
ov11_02137A44: ; 0x02137A44
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl ov11_021379EC
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl strlen
	mov r1, r0
	mov r0, r4
	mov r2, r6
	mov r3, r5
	bl ov11_021397A8
	mvn r1, #0
	cmp r0, r1
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r0, r5
	ldmhsia sp!, {r4, r5, r6, pc}
	mov r1, #0
	strb r1, [r6, r0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02137A44

	arm_func_start ov11_02137A98
ov11_02137A98: ; 0x02137A98
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl ov11_021379EC
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl strlen
	cmp r0, r5
	movge r0, #0
	ldmgeia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl strcpy
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02137A98

	arm_func_start ov11_02137AD8
ov11_02137AD8: ; 0x02137AD8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add r0, r0, #0x1000
	ldr r6, [r0, #0x14]
	mov sb, r2
	mov sl, r1
	mov r8, #0
	cmp sb, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr fp, _02137B58 ; =s_FREE_array_entry_i_label_overlay_11_02166c54
	ldr r7, _02137B5C ; =s_FREE_array_entry_i_value_overlay_11_02166c70
	mov r5, r8
	mov r4, r8
	arm_func_end ov11_02137AD8
_02137B08:
	ldr r1, [sl, r8, lsl #3]
	cmp r1, #0
	beq _02137B24
	mov r0, fp
	mov r2, #0
	blx r6
	str r5, [sl, r8, lsl #3]
_02137B24:
	add r0, sl, r8, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02137B48
	mov r0, r7
	mov r2, #0
	blx r6
	add r0, sl, r8, lsl #3
	str r4, [r0, #4]
_02137B48:
	add r8, r8, #1
	cmp r8, sb
	blt _02137B08
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02137B58: .word s_FREE_array_entry_i_label_overlay_11_02166c54
_02137B5C: .word s_FREE_array_entry_i_value_overlay_11_02166c70

	arm_func_start ov11_02137B60
ov11_02137B60: ; 0x02137B60
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02137C28 ; =OVERLAY11_BSS_02169CCC
	mov r5, r0
	ldr r0, [r1]
	ldr r4, [r5]
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _02137C2C ; =s_ALLOC_DWCnetcheck_overlay_11_02166cb4
	ldr r1, _02137C30 ; =0x000011F4
	blx r4
	ldr r1, _02137C28 ; =OVERLAY11_BSS_02169CCC
	cmp r0, #0
	str r0, [r1]
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, _02137C30 ; =0x000011F4
	mov r1, #0
	bl MI_CpuFill8
	ldr ip, _02137C28 ; =OVERLAY11_BSS_02169CCC
	ldr r1, _02137C34 ; =0xFFFE7961
	ldr r0, [ip]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	ldr r3, [ip]
	ldmia r5, {r0, r1, r2}
	add r3, r3, #0x108
	add r3, r3, #0x1000
	stmia r3, {r0, r1, r2}
	ldr r0, [ip, #0x14]
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _02137C38 ; =s_ALLOC_DWChttp_overlay_11_02166cc8
	ldr r1, _02137C3C ; =0x00001C14
	blx r4
	ldr r1, _02137C28 ; =OVERLAY11_BSS_02169CCC
	cmp r0, #0
	str r0, [r1, #0x14]
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r1, #4]
	ldr r0, [r1]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_InitMutex
	bl ov11_02137DF8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02137C28: .word OVERLAY11_BSS_02169CCC
_02137C2C: .word s_ALLOC_DWCnetcheck_overlay_11_02166cb4
_02137C30: .word 0x000011F4
_02137C34: .word 0xFFFE7961
_02137C38: .word s_ALLOC_DWChttp_overlay_11_02166cc8
_02137C3C: .word 0x00001C14
	arm_func_end ov11_02137B60

	arm_func_start ov11_02137C40
ov11_02137C40: ; 0x02137C40
	stmdb sp!, {r4, lr}
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0]
	ldr r0, [r0, #0x14]
	add r1, r1, #0x1000
	cmp r0, #0
	ldr r4, [r1, #0x10c]
	beq _02137C84
	bl ov11_02136F74
	ldr r1, _02137D24 ; =OVERLAY11_BSS_02169CCC
	ldr r0, _02137D28 ; =s_FREE_DWChttp_overlay_11_02166cd8
	ldr r1, [r1, #0x14]
	mov r2, #0
	blx r4
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	mov r1, #0
	str r1, [r0, #0x14]
	arm_func_end ov11_02137C40
_02137C84:
	bl DWC_Auth_Destroy
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r1, [r0, #0x114]
	cmp r1, #0
	beq _02137CC8
	ldr r0, _02137D2C ; =s_FREE_DWCnetcheck_body_302_overlay_11_02166ce8
	mov r2, #0
	blx r4
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0x114]
_02137CC8:
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _02137D00
	ldr r0, _02137D30 ; =s_FREE_DWCnetcheck_body_wayport_overlay_11_02166d04
	mov r2, #0
	blx r4
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0x118]
_02137D00:
	ldr r1, _02137D24 ; =OVERLAY11_BSS_02169CCC
	ldr r0, _02137D34 ; =s_FREE_DWCnetcheck_overlay_11_02166d24
	ldr r1, [r1]
	mov r2, #0
	blx r4
	ldr r0, _02137D24 ; =OVERLAY11_BSS_02169CCC
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02137D24: .word OVERLAY11_BSS_02169CCC
_02137D28: .word s_FREE_DWChttp_overlay_11_02166cd8
_02137D2C: .word s_FREE_DWCnetcheck_body_302_overlay_11_02166ce8
_02137D30: .word s_FREE_DWCnetcheck_body_wayport_overlay_11_02166d04
_02137D34: .word s_FREE_DWCnetcheck_overlay_11_02166d24

	arm_func_start ov11_02137D38
ov11_02137D38: ; 0x02137D38
	stmdb sp!, {r3, lr}
	ldr r0, _02137D9C ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _02137D5C
	bl ov11_02136A30
	arm_func_end ov11_02137D38
_02137D5C:
	bl ov11_02135578
	ldr r0, _02137D9C ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _02137D84
	add r0, r1, #0x11c
	add r0, r0, #0x1000
	bl OS_JoinThread
_02137D84:
	ldr r0, _02137D9C ; =OVERLAY11_BSS_02169CCC
	mvn r1, #6
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02137D9C: .word OVERLAY11_BSS_02169CCC

	arm_func_start ov11_02137DA0
ov11_02137DA0: ; 0x02137DA0
	stmdb sp!, {r4, lr}
	ldr r0, _02137DDC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, _02137DDC ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0]
	add r0, r1, #0x1dc
	add r1, r1, #0x1000
	add r0, r0, #0x1000
	ldr r4, [r1]
	bl OS_UnlockMutex
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02137DDC: .word OVERLAY11_BSS_02169CCC
	arm_func_end ov11_02137DA0

	arm_func_start ov11_02137DE0
ov11_02137DE0: ; 0x02137DE0
	ldr r0, _02137DF4 ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_02137DF4: .word OVERLAY11_BSS_02169CCC
	arm_func_end ov11_02137DE0

	arm_func_start ov11_02137DF8
ov11_02137DF8: ; 0x02137DF8
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _02137E78 ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _02137E30
	add r0, r1, #0x11c
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, pc}
	arm_func_end ov11_02137DF8
_02137E30:
	ldr r0, _02137E78 ; =OVERLAY11_BSS_02169CCC
	mov r3, #0x1000
	ldr r2, [r0]
	ldr r1, _02137E7C ; =ov11_02137E80
	add r0, r2, #0x11c
	str r3, [sp]
	mov ip, #0x10
	add r0, r0, #0x1000
	add r3, r2, #0x1000
	str ip, [sp, #4]
	bl OS_CreateThread
	ldr r0, _02137E78 ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	add r0, r0, #0x11c
	add r0, r0, #0x1000
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02137E78: .word OVERLAY11_BSS_02169CCC
_02137E7C: .word ov11_02137E80

	arm_func_start ov11_02137E80
ov11_02137E80: ; 0x02137E80
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x29c
	ldr r5, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mov sb, #0
	ldr r0, [r5]
	mov fp, sb
	add r0, r0, #0x1000
	ldr r7, [r0, #0x108]
	ldr r8, [r0, #0x10c]
	mvn r0, #2
	str r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	mov sl, sb
	sub r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, _02138D00 ; =0x00009C40
	mov r4, sb
	mov r0, r0, lsr #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	arm_func_end ov11_02137E80
_02137EE0:
	ldr r0, _02138D04 ; =ptr_s_http_conntest_nintendowifi_net_overlay_11_02166c90_overlay_11_02166c8c
	ldr r1, _02138D08 ; =OVERLAY11_BSS_02169CE4
	ldr r0, [r0]
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	mov r0, #0x1000
	str r0, [r5, #0x20]
	str r7, [r5, #0x24]
	ldr r0, [sp, #0x18]
	str r8, [r5, #0x28]
	str r0, [r5, #0x30]
	ldr r0, [r5]
	add r2, r0, #0x1000
	ldr r0, [sp, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r5, #0x14]
	bl ov11_021367C0
	cmp r0, #0
	beq _02137F48
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_02137F48:
	ldr r0, [r5, #0x14]
	bl ov11_021368DC
	cmp r0, #0
	beq _02137F70
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_02137F70:
	ldr r0, _02138D0C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r5, #0x14]
	bl ov11_02136974
	ldr r1, [r5, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _02137FA8
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_02137FA8:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _02137FC8
	cmp r1, #8
	beq _02137FF4
	b _02137FDC
_02137FC8:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_02137FDC:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #3
	bl ov11_02138D84
	b _02138CA8
_02137FF4:
	mov r1, #0
	bl ov11_0213774C
	cmp r0, #1
	beq _0213801C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_0213801C:
	ldr r0, [r5, #0x14]
	ldr r1, _02138D10 ; =s_httpresult_overlay_11_02166da0
	bl ov11_021379EC
	bl atol
	mov r6, r0
	ldr r0, _02138D14 ; =errno
	ldr r0, [r0]
	cmp r0, #0x22
	bne _0213804C
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_0213804C:
	cmp r6, #0xc8
	beq _02138064
	ldr r0, _02138D18 ; =0x0000012E
	cmp r6, r0
	beq _02138078
	b _0213835C
_02138064:
	ldr r0, [r5, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x12c]
	str r0, [r5, #8]
	b _02138374
_02138078:
	mov r0, #1
	str r0, [r5, #4]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _021382C8
	ldr r1, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mvn r2, #5
	str r2, [r0, #4]
	ldr r0, [r1, #0x14]
	bl ov11_02136F74
	ldr r0, _02138D1C ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	ldr r2, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	mov r1, #0
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	mov r1, #0x200
	str r1, [r2, #0x20]
	str r7, [r2, #0x24]
	ldr r3, _02138D20 ; =0x00004E20
	str r8, [r2, #0x28]
	ldr r1, _02138D24 ; =s_https_nas_nintendowifi_net_ac_overlay_11_02166dac
	str r3, [r2, #0x30]
	bl strcmp
	cmp r0, #0
	ldrne r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	movne r1, #1
	strne r1, [r0, #0x2c]
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r1, _02138D08 ; =OVERLAY11_BSS_02169CE4
	ldr r0, [r0, #0x14]
	bl ov11_021367C0
	cmp r0, #0
	beq _02138120
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_02138120:
	add r0, sp, #0x44
	bl ov11_021361B4
	cmp r0, #0
	beq _0213814C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	add r1, sp, #0x44
	ldr r0, [r0, #0x14]
	mov r2, #1
	bl ov11_0213647C
	cmp r0, #0
	bne _02138164
_0213814C:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #8
	bl ov11_02138D84
	b _02138CA8
_02138164:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r1, _02138D28 ; =s_action_overlay_11_02166dcc
	ldr r0, [r0, #0x14]
	ldr r2, _02138D2C ; =s_message_overlay_11_02166dd4
	mov r3, #7
	bl ov11_021371C4
	cmp r0, #0
	bne _021381BC
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x118]
	mov r0, r4
	bl strlen
	ldr r1, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mov r3, r0
	ldr r0, [r1, #0x14]
	ldr r1, _02138D30 ; =s_HotSpotResponse_overlay_11_02166ddc
	mov r2, r4
	bl ov11_021371C4
	cmp r0, #0
	beq _021381D4
_021381BC:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #8
	bl ov11_02138D84
	b _02138CA8
_021381D4:
	ldr r1, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, _02138D34 ; =s_FREE_DWCnetcheck_body_wayport_overlay_11_02166d04
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x118]
	blx r8
	ldr r1, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mov r2, #0
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r2, [r0, #0x118]
	ldr r0, [r1, #0x14]
	bl ov11_021368DC
	cmp r0, #0
	beq _0213822C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_0213822C:
	ldr r0, _02138D0C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r2, _02138CFC ; =OVERLAY11_BSS_02169CCC
	sub r1, r0, #1
	ldr r0, [r2, #0x14]
	bl ov11_02136974
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _0213826C
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_0213826C:
	ldr r2, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r2, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _02138290
	cmp r1, #8
	beq _021382B8
	b _021382A0
_02138290:
	ldr r0, [r2]
	mvn r1, #0
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021382A0:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #3
	bl ov11_02138D84
	b _02138CA8
_021382B8:
	bl ov11_02136F74
	mov r0, #7
	bl ov11_02138D84
	b _02138CA8
_021382C8:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0xa08]
	str r1, [sp, #0x14]
	cmp r1, #0
	bne _021382F0
	bl ov11_02136F74
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_021382F0:
	mov r0, r1
	bl strlen
	add r1, r0, #1
	ldr r0, _02138D38 ; =s_ALLOC_DWCnetcheck_body_302_overlay_11_02166d38
	blx r7
	ldr r1, [r5]
	add r1, r1, #0x1000
	str r0, [r1, #0x114]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x114]
	str r0, [sp, #4]
	cmp r0, #0
	bne _02138340
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #4
	bl ov11_02138D84
	b _02138CA8
_02138340:
	ldr r0, [sp, #0x14]
	bl strlen
	mov r2, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	bl strncpy
	b _02138374
_0213835C:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #0xa
	bl ov11_02138D84
	b _02138CA8
_02138374:
	ldr r0, [r5, #0x14]
	bl ov11_02136F74
	add r0, sp, #0x30
	bl ov11_02139940
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r4
	bne _021384A4
	ldr r1, [r5]
	ldr r0, _02138D3C ; =OVERLAY11_BSS_02169D00
	add r2, r1, #0x1000
	ldr r1, [sp, #0x20]
	str r1, [r2, #4]
	mov r1, #0
	strh r1, [r5, #0x34]
	strb r1, [r5, #0x68]
	ldr r1, [r5]
	add r1, r1, #0x1000
	ldr r2, [r1, #0x108]
	str r2, [r5, #0x74]
	ldr r1, [r1, #0x10c]
	str r1, [r5, #0x78]
	ldr r1, [r5, #0x14]
	bl DWC_Auth_Create
	cmp r0, #0
	beq _021383F0
	mov r0, #5
	bl ov11_02138D84
	b _02138CA8
_021383F0:
	bl ov11_0213565C
	bl DWC_Auth_GetError
	cmp r0, #0x15
	beq _021384A0
	bl DWC_Auth_GetError
	cmp r0, #9
	bne _02138424
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	b _02138490
_02138424:
	add r0, sp, #0xd8
	bl DWC_Auth_GetResult
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _0213847C
	ldr r1, [sp, #0xd8]
	ldr r0, _02138D40 ; =0xFFFFA4FA
	cmp r1, r0
	beq _02138458
	bl DWC_Auth_GetError
	cmp r0, #0xb
	bne _0213847C
_02138458:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	bl DWC_Auth_Destroy
	mov r0, #0xb
	bl ov11_02138D84
	b _02138CA8
_0213847C:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r1, [sp, #0xd8]
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_02138490:
	bl DWC_Auth_Destroy
	mov r0, #6
	bl ov11_02138D84
	b _02138CA8
_021384A0:
	bl DWC_Auth_Destroy
_021384A4:
	cmp r6, #0xc8
	bne _021384CC
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	bl ov11_02138D84
	b _02138CA8
_021384CC:
	ldr r0, [r5]
	ldr r1, _02138D24 ; =s_https_nas_nintendowifi_net_ac_overlay_11_02166dac
	add r2, r0, #0x1000
	ldr r0, [sp, #0x24]
	str r0, [r2, #4]
	ldr r0, _02138D1C ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	mov r2, #0
	ldr r0, [r0]
	str r0, [r5, #0x18]
	str r2, [r5, #0x1c]
	mov r2, #0x1000
	str r2, [r5, #0x20]
	str r7, [r5, #0x24]
	ldr r2, _02138D00 ; =0x00009C40
	str r8, [r5, #0x28]
	str r2, [r5, #0x30]
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [r5, #0x2c]
	ldr r0, [r5, #0x14]
	ldr r1, _02138D08 ; =OVERLAY11_BSS_02169CE4
	bl ov11_021367C0
	cmp r0, #0
	beq _02138548
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_02138548:
	add r0, sp, #0x44
	bl ov11_021361B4
	cmp r0, #0
	beq _02138570
	ldr r0, [r5, #0x14]
	add r1, sp, #0x44
	mov r2, #1
	bl ov11_0213647C
	cmp r0, #0
	bne _02138588
_02138570:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #8
	bl ov11_02138D84
	b _02138CA8
_02138588:
	ldr r0, [r5, #0x14]
	ldr r1, _02138D28 ; =s_action_overlay_11_02166dcc
	ldr r2, _02138D44 ; =s_parse_overlay_11_02166dec
	mov r3, #5
	bl ov11_021371C4
	cmp r0, #0
	bne _021385D4
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r6, [r0, #0x114]
	mov r0, r6
	bl strlen
	mov r3, r0
	ldr r0, [r5, #0x14]
	ldr r1, _02138D48 ; =s_HTML_overlay_11_02166df4
	mov r2, r6
	bl ov11_021371C4
	cmp r0, #0
	beq _021385EC
_021385D4:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #8
	bl ov11_02138D84
	b _02138CA8
_021385EC:
	ldr r1, [r5]
	ldr r0, _02138D4C ; =s_FREE_DWCnetcheck_body_302_overlay_11_02166ce8
	add r1, r1, #0x1000
	ldr r1, [r1, #0x114]
	mov r2, #0
	blx r8
	ldr r0, [r5]
	add r1, r0, #0x1000
	mov r0, #0
	str r0, [r1, #0x114]
	ldr r0, [r5, #0x14]
	bl ov11_021368DC
	cmp r0, #0
	beq _0213863C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_0213863C:
	ldr r0, _02138D0C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r5, #0x14]
	bl ov11_02136974
	ldr r1, [r5, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _02138674
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_02138674:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _021386D8
	cmp r1, #3
	beq _0213869C
	cmp r1, #8
	beq _02138704
	b _021386EC
_0213869C:
	bl ov11_02136F74
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _021386CC
	ldr r0, [r0]
	mov r2, #0
	add r1, r0, #0x1000
	mov r0, #0xb
	str r2, [r1, #4]
	bl ov11_02138D84
	b _02138CA8
_021386CC:
	mov r0, #3
	bl ov11_02138D84
	b _02138CA8
_021386D8:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021386EC:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #3
	bl ov11_02138D84
	b _02138CA8
_02138704:
	mov r1, #0
	bl ov11_0213774C
	cmp r0, #1
	beq _0213872C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_0213872C:
	ldr r0, [r5, #0x14]
	ldr r1, _02138D10 ; =s_httpresult_overlay_11_02166da0
	bl ov11_021379EC
	bl atol
	mov r6, r0
	ldr r0, _02138D14 ; =errno
	ldr r0, [r0]
	cmp r0, #0x22
	bne _02138768
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_02138768:
	cmp r6, #0xc8
	beq _021387BC
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	ldr r1, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r1, #0xc]
	cmp r0, #1
	ldreq r0, _02138D18 ; =0x0000012E
	cmpeq r6, r0
	bne _021387B0
	ldr r0, [r1]
	mov r2, #0
	add r1, r0, #0x1000
	mov r0, #0xb
	str r2, [r1, #4]
	bl ov11_02138D84
	b _02138CA8
_021387B0:
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_021387BC:
	ldr r0, [r5, #0x14]
	ldr r1, _02138D50 ; =s_returncd_overlay_11_02166dfc
	add r2, sp, #0x2c
	mov r3, #4
	bl ov11_02137A44
	cmp r0, #0
	bgt _021387F0
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_021387F0:
	add r0, sp, #0x2c
	bl atol
	ldr r1, _02138D14 ; =errno
	ldr r1, [r1]
	cmp r1, #0x22
	bne _02138820
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_02138820:
	ldr r1, [r5, #0xc]
	cmp r1, #1
	cmpeq r0, #0x72
	bne _02138850
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	bl ov11_02138D84
	b _02138CA8
_02138850:
	cmp r0, #0x64
	blt _02138870
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #6
	bl ov11_02138D84
	b _02138CA8
_02138870:
	mov r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, _02138D54 ; =s_url_overlay_11_02166e08
	mov r3, r2
	bl ov11_02137A44
	str r0, [sp, #0x10]
	cmp r0, #0
	bgt _021388A8
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_021388A8:
	mov r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, _02138D58 ; =s_data_overlay_11_02166e0c
	mov r3, r2
	bl ov11_02137A44
	str r0, [sp, #0xc]
	cmp r0, #0
	bgt _021388E0
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_021388E0:
	mov r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, _02138D5C ; =s_wait_overlay_11_02166e14
	mov r3, r2
	bl ov11_02137A44
	ldr r1, [sp, #0x10]
	mov r6, r0
	ldr r0, _02138D60 ; =s_ALLOC_url_overlay_11_02166d54
	add r1, r1, #1
	blx r7
	movs sb, r0
	bne _02138928
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #4
	bl ov11_02138D84
	b _02138CA8
_02138928:
	ldr r1, [sp, #0xc]
	ldr r0, _02138D64 ; =s_ALLOC_data_len_overlay_11_02166d60
	add r1, r1, #1
	blx r7
	movs fp, r0
	bne _02138958
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #4
	bl ov11_02138D84
	b _02138CA8
_02138958:
	cmp r6, #0
	ble _0213898C
	ldr r0, _02138D68 ; =s_ALLOC_wait_len_overlay_11_02166d70
	add r1, r6, #1
	blx r7
	movs sl, r0
	bne _0213898C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #4
	bl ov11_02138D84
	b _02138CA8
_0213898C:
	ldr r0, [sp, #0x10]
	ldr r1, _02138D54 ; =s_url_overlay_11_02166e08
	add r3, r0, #1
	ldr r0, [r5, #0x14]
	mov r2, sb
	bl ov11_02137A44
	cmp r0, #0
	bge _021389C4
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_021389C4:
	ldr r1, [sp, #0xc]
	mov r2, fp
	add r3, r1, #1
	mov r1, #0
	strb r1, [sb, r0]
	ldr r0, [r5, #0x14]
	ldr r1, _02138D58 ; =s_data_overlay_11_02166e0c
	bl ov11_02137A44
	cmp r0, #0
	bge _02138A04
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_02138A04:
	mov r1, #0
	strb r1, [fp, r0]
	mov r0, r1
	cmp r6, #0
	str r0, [sp, #8]
	ble _02138AA0
	ldr r0, [r5, #0x14]
	ldr r1, _02138D5C ; =s_wait_overlay_11_02166e14
	add r3, r6, #1
	mov r2, sl
	bl ov11_02137A44
	cmp r0, #0
	bge _02138A50
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_02138A50:
	mov r1, #0
	strb r1, [sl, r0]
	mov r0, sl
	bl atol
	ldr r1, _02138D14 ; =errno
	ldr r1, [r1]
	cmp r1, #0x22
	bne _02138A88
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #9
	bl ov11_02138D84
	b _02138CA8
_02138A88:
	mov r1, #0x3e8
	mul r1, r0, r1
	ldr r0, _02138D6C ; =0x0002BF20
	str r1, [sp, #8]
	cmp r1, r0
	strgt r0, [sp, #8]
_02138AA0:
	ldr r0, [r5, #0x14]
	bl ov11_02136F74
	ldr r0, [r5]
	ldr r1, _02138D08 ; =OVERLAY11_BSS_02169CE4
	add r2, r0, #0x1000
	ldr r0, [sp, #0x28]
	str r0, [r2, #4]
	str sb, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x1c]
	mov r0, #0x1000
	str r0, [r5, #0x20]
	str r7, [r5, #0x24]
	ldr r0, _02138D70 ; =0x0001D4C0
	str r8, [r5, #0x28]
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x14]
	bl ov11_021367C0
	cmp r0, #0
	beq _02138B08
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_02138B08:
	ldr r0, [r5, #0x14]
	mov r1, fp
	bl ov11_021372D0
	cmp r0, #0
	beq _02138B34
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #8
	bl ov11_02138D84
	b _02138CA8
_02138B34:
	ldr r0, [r5, #0x14]
	bl ov11_021368DC
	cmp r0, #0
	beq _02138B5C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #1
	bl ov11_02138D84
	b _02138CA8
_02138B5C:
	ldr r0, _02138D0C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r5, #0x14]
	bl ov11_02136974
	ldr r1, [r5, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _02138B94
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_02138B94:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _02138BB4
	cmp r1, #8
	beq _02138BE0
	b _02138BC8
_02138BB4:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_02138BC8:
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #3
	bl ov11_02138D84
	b _02138CA8
_02138BE0:
	mov r1, #1
	bl ov11_0213774C
	cmp r0, #1
	beq _02138C08
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_02138C08:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r6, [r1, #0xa08]
	cmp r6, #0
	bne _02138C2C
	bl ov11_02136F74
	mov r0, #2
	bl ov11_02138D84
	b _02138CA8
_02138C2C:
	mov r0, r6
	bl strlen
	add r1, r0, #1
	ldr r0, _02138D74 ; =s_ALLOC_DWCnetcheck_body_wayport_overlay_11_02166d80
	blx r7
	ldr r1, [r5]
	add r1, r1, #0x1000
	str r0, [r1, #0x118]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x118]
	str r0, [sp]
	cmp r0, #0
	bne _02138C7C
	ldr r0, _02138CFC ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r0, #0x14]
	bl ov11_02136F74
	mov r0, #4
	bl ov11_02138D84
	b _02138CA8
_02138C7C:
	mov r0, r6
	bl strlen
	mov r2, r0
	ldr r0, [sp]
	mov r1, r6
	bl strncpy
	ldr r0, [r5, #0x14]
	bl ov11_02136F74
	ldr r0, [sp, #8]
	bl OS_Sleep
	b _02137EE0
_02138CA8:
	cmp sb, #0
	beq _02138CC0
	ldr r0, _02138D78 ; =s_FREE_url_overlay_11_02166e1c
	mov r1, sb
	mov r2, #0
	blx r8
_02138CC0:
	cmp fp, #0
	beq _02138CD8
	ldr r0, _02138D7C ; =s_FREE_data_overlay_11_02166e28
	mov r1, fp
	mov r2, #0
	blx r8
_02138CD8:
	cmp sl, #0
	addeq sp, sp, #0x29c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _02138D80 ; =s_FREE_wait_overlay_11_02166e34
	mov r1, sl
	mov r2, #0
	blx r8
	add sp, sp, #0x29c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02138CFC: .word OVERLAY11_BSS_02169CCC
_02138D00: .word 0x00009C40
_02138D04: .word ptr_s_http_conntest_nintendowifi_net_overlay_11_02166c90_overlay_11_02166c8c
_02138D08: .word OVERLAY11_BSS_02169CE4
_02138D0C: .word OSi_ThreadInfo
_02138D10: .word s_httpresult_overlay_11_02166da0
_02138D14: .word errno
_02138D18: .word 0x0000012E
_02138D1C: .word ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
_02138D20: .word 0x00004E20
_02138D24: .word s_https_nas_nintendowifi_net_ac_overlay_11_02166dac
_02138D28: .word s_action_overlay_11_02166dcc
_02138D2C: .word s_message_overlay_11_02166dd4
_02138D30: .word s_HotSpotResponse_overlay_11_02166ddc
_02138D34: .word s_FREE_DWCnetcheck_body_wayport_overlay_11_02166d04
_02138D38: .word s_ALLOC_DWCnetcheck_body_302_overlay_11_02166d38
_02138D3C: .word OVERLAY11_BSS_02169D00
_02138D40: .word 0xFFFFA4FA
_02138D44: .word s_parse_overlay_11_02166dec
_02138D48: .word s_HTML_overlay_11_02166df4
_02138D4C: .word s_FREE_DWCnetcheck_body_302_overlay_11_02166ce8
_02138D50: .word s_returncd_overlay_11_02166dfc
_02138D54: .word s_url_overlay_11_02166e08
_02138D58: .word s_data_overlay_11_02166e0c
_02138D5C: .word s_wait_overlay_11_02166e14
_02138D60: .word s_ALLOC_url_overlay_11_02166d54
_02138D64: .word s_ALLOC_data_len_overlay_11_02166d60
_02138D68: .word s_ALLOC_wait_len_overlay_11_02166d70
_02138D6C: .word 0x0002BF20
_02138D70: .word 0x0001D4C0
_02138D74: .word s_ALLOC_DWCnetcheck_body_wayport_overlay_11_02166d80
_02138D78: .word s_FREE_url_overlay_11_02166e1c
_02138D7C: .word s_FREE_data_overlay_11_02166e28
_02138D80: .word s_FREE_wait_overlay_11_02166e34

	arm_func_start ov11_02138D84
ov11_02138D84: ; 0x02138D84
	stmdb sp!, {r4, lr}
	ldr r1, _02138DC4 ; =OVERLAY11_BSS_02169CCC
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, _02138DC4 ; =OVERLAY11_BSS_02169CCC
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r4, [r0]
	ldr r0, [r1]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmia sp!, {r4, pc}
	.align 2, 0
_02138DC4: .word OVERLAY11_BSS_02169CCC
	arm_func_end ov11_02138D84

	arm_func_start ov11_02138DC8
ov11_02138DC8: ; 0x02138DC8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x3c
	mov r6, r0
	bl strlen
	mov r4, r0
	ldr r0, _02138FD4 ; =s_Fri_03_Mar_2006_01_28_13_GMT_overlay_11_02166ea0
	bl strlen
	cmp r4, r0
	ldreqsb r0, [r6, #7]
	cmpeq r0, #0x20
	ldreqsb r0, [r6, #0xb]
	cmpeq r0, #0x20
	ldreqsb r0, [r6, #0x10]
	cmpeq r0, #0x20
	ldreqsb r0, [r6, #0x13]
	cmpeq r0, #0x3a
	ldreqsb r0, [r6, #0x16]
	cmpeq r0, #0x3a
	ldreqsb r0, [r6, #0x19]
	cmpeq r0, #0x20
	bne _02138FC8
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl RTC_GetDateTime
	cmp r0, #0
	bne _02138FC8
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl RTC_ConvertDateTimeToSecond
	mov r4, r0
	mov r5, r1
	mvn r0, #0
	cmp r5, r0
	cmpeq r4, r0
	beq _02138FC8
	add r0, sp, #0
	mov r1, r6
	bl strcpy
	mov r2, #0
	ldr r1, _02138FD8 ; =errno
	add r0, sp, #0xc
	strb r2, [sp, #7]
	strb r2, [sp, #0xb]
	strb r2, [sp, #0x10]
	strb r2, [sp, #0x13]
	strb r2, [sp, #0x16]
	strb r2, [sp, #0x19]
	str r2, [r1]
	bl atol
	ldr r1, _02138FD8 ; =errno
	str r0, [sp, #0x2c]
	ldr r1, [r1]
	cmp r1, #0x22
	beq _02138FC8
	sub r1, r0, #0x7d0
	mov r0, #0xd
	ldr r7, _02138FDC ; =ptr_s_Jan_overlay_11_02166e6c_overlay_11_02166e70
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r8, #0
	add r6, sp, #8
	arm_func_end ov11_02138DC8
_02138EBC:
	ldr r0, [r7, r8, lsl #2]
	mov r1, r6
	bl strcmp
	cmp r0, #0
	addeq r0, r8, #1
	streq r0, [sp, #0x30]
	beq _02138EE4
	add r8, r8, #1
	cmp r8, #0xc
	blt _02138EBC
_02138EE4:
	ldr r0, [sp, #0x30]
	cmp r0, #0xc
	bhi _02138FC8
	ldr r1, _02138FD8 ; =errno
	mov r2, #0
	add r0, sp, #5
	str r2, [r1]
	bl atol
	ldr r1, _02138FD8 ; =errno
	str r0, [sp, #0x34]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _02138FC8
	mov r2, #0
	add r0, sp, #0x11
	str r2, [r1]
	bl atol
	ldr r1, _02138FD8 ; =errno
	str r0, [sp, #0x20]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _02138FC8
	mov r2, #0
	add r0, sp, #0x14
	str r2, [r1]
	bl atol
	ldr r1, _02138FD8 ; =errno
	str r0, [sp, #0x24]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _02138FC8
	mov r2, #0
	add r0, sp, #0x17
	str r2, [r1]
	bl atol
	ldr r1, _02138FD8 ; =errno
	str r0, [sp, #0x28]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _02138FC8
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl RTC_ConvertDateTimeToSecond
	mvn r2, #0
	cmp r1, r2
	cmpeq r0, r2
	beq _02138FC8
	ldr r2, _02138FE0 ; =OVERLAY11_BSS_02169D48
	subs r0, r4, r0
	str r0, [r2, #0xc]
	sbc r0, r5, r1
	str r0, [r2, #0x10]
	stmib r2, {r4, r5}
	mov r0, #1
	str r0, [r2]
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02138FC8:
	mov r0, #0
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02138FD4: .word s_Fri_03_Mar_2006_01_28_13_GMT_overlay_11_02166ea0
_02138FD8: .word errno
_02138FDC: .word ptr_s_Jan_overlay_11_02166e6c_overlay_11_02166e70
_02138FE0: .word OVERLAY11_BSS_02169D48

	arm_func_start DWC_Svl_Init
DWC_Svl_Init: ; 0x02138FE4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0213906C ; =OVERLAY11_BSS_02169D5C
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	cmp r0, #0
	beq _02139014
	ldr r1, _02139070 ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DWC_Svl_Init
_02139014:
	ldr r0, _02139074 ; =s_ALLOC_intwork_overlay_11_02166ec0
	ldr r1, _02139078 ; =0x00001C20
	blx r5
	ldr r1, _0213906C ; =OVERLAY11_BSS_02169D5C
	cmp r0, #0
	str r0, [r1]
	bne _02139044
	ldr r1, _02139070 ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02139044:
	ldr r2, _02139078 ; =0x00001C20
	mov r1, #0
	bl MI_CpuFill8
	ldr r1, _0213906C ; =OVERLAY11_BSS_02169D5C
	mov r0, #1
	ldr r2, [r1]
	str r5, [r2]
	ldr r1, [r1]
	str r4, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0213906C: .word OVERLAY11_BSS_02169D5C
_02139070: .word 0xFFFFA1DC
_02139074: .word s_ALLOC_intwork_overlay_11_02166ec0
_02139078: .word 0x00001C20

	arm_func_start DWC_Svl_Cleanup
DWC_Svl_Cleanup: ; 0x0213907C
	stmdb sp!, {r3, lr}
	ldr r0, _021390C0 ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #8
	bl ov11_02136F74
	ldr r1, _021390C0 ; =OVERLAY11_BSS_02169D5C
	ldr r0, _021390C4 ; =s_FREE_intwork_overlay_11_02166ed0
	ldr r1, [r1]
	mov r2, #0
	ldr r3, [r1, #4]
	blx r3
	ldr r0, _021390C0 ; =OVERLAY11_BSS_02169D5C
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_021390C0: .word OVERLAY11_BSS_02169D5C
_021390C4: .word s_FREE_intwork_overlay_11_02166ed0
	arm_func_end DWC_Svl_Cleanup

	arm_func_start DWC_Svl_GetTokenAsync
DWC_Svl_GetTokenAsync: ; 0x021390C8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0xb0
	ldr r2, _0213930C ; =OVERLAY11_BSS_02169D5C
	mov r5, r0
	ldr r2, [r2]
	mov r0, r1
	add r2, r2, #0x1000
	str r1, [r2, #0xc1c]
	mov r1, #0
	mov r2, #0x174
	bl MI_CpuFill8
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbac]
	cmp r0, #0
	beq _02139120
	add r0, r1, #0x1b40
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _02139120
	bl OS_Terminate
	arm_func_end DWC_Svl_GetTokenAsync
_02139120:
	ldr r0, _02139310 ; =ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
	ldr r1, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	mov r3, #0
	ldr r4, [r1]
	mov r2, #0x1000
	str r0, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	ldr r2, [r4]
	ldr r1, _02139314 ; =s_https_nas_nintendowifi_net_ac_overlay_11_02166ee0
	str r2, [sp, #0xc]
	ldr r2, [r4, #4]
	str r2, [sp, #0x10]
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x14]
	moveq r0, #0
	ldr r2, _02139318 ; =0x00004E20
	streq r0, [sp, #0x14]
	add r1, sp, #0
	add r0, r4, #8
	str r2, [sp, #0x18]
	bl ov11_021367C0
	cmp r0, #0
	beq _021391A4
	ldr r1, _0213931C ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021391A4:
	add r0, sp, #0x1c
	bl ov11_021361B4
	cmp r0, #0
	beq _021391D4
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	add r1, sp, #0x1c
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #8
	bl ov11_0213647C
	cmp r0, #0
	bne _021391FC
_021391D4:
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_02136F74
	ldr r1, _0213931C ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021391FC:
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r1, _02139320 ; =s_action_overlay_11_02166f00
	ldr r0, [r0]
	ldr r2, _02139324 ; =s_SVCLOC_overlay_11_02166f08
	add r0, r0, #8
	mov r3, #6
	bl ov11_021371C4
	cmp r0, #0
	bne _02139244
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r1, _02139328 ; =s_svc_overlay_11_02166f10
	ldr r0, [r0]
	mov r2, r5
	add r0, r0, #8
	mov r3, #4
	bl ov11_021371C4
	cmp r0, #0
	beq _0213926C
_02139244:
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_02136F74
	ldr r1, _0213931C ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0213926C:
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_021368DC
	cmp r0, #0
	beq _021392AC
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_02136F74
	ldr r1, _0213931C ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021392AC:
	ldr r0, _0213932C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r1, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r2, [r1]
	sub r1, r0, #1
	add r0, r2, #8
	bl ov11_02136974
	ldr r0, _0213930C ; =OVERLAY11_BSS_02169D5C
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbac]
	cmp r0, #0
	addne sp, sp, #0xb0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r1, #8
	bl ov11_02136F74
	ldr r1, _0213931C ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	mov r0, #0
	add sp, sp, #0xb0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0213930C: .word OVERLAY11_BSS_02169D5C
_02139310: .word ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
_02139314: .word s_https_nas_nintendowifi_net_ac_overlay_11_02166ee0
_02139318: .word 0x00004E20
_0213931C: .word 0xFFFFA1DC
_02139320: .word s_action_overlay_11_02166f00
_02139324: .word s_SVCLOC_overlay_11_02166f08
_02139328: .word s_svc_overlay_11_02166f10
_0213932C: .word OSi_ThreadInfo

	arm_func_start DWC_Svl_Process
DWC_Svl_Process: ; 0x02139330
	stmdb sp!, {r3, lr}
	ldr r0, _021393FC ; =OVERLAY11_BSS_02169D5C
	ldr r1, [r0]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbac]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	add r0, r1, #0x1b40
	bl OS_IsThreadTerminated
	cmp r0, #1
	bne _021393F4
	ldr r0, _021393FC ; =OVERLAY11_BSS_02169D5C
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x28]
	cmp r0, #7
	beq _021393C8
	cmp r0, #8
	bne _021393D8
	bl ov11_02139404
	cmp r0, #0
	bne _021393B0
	ldr r0, _021393FC ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_02136F74
	mov r0, #4
	ldmia sp!, {r3, pc}
	arm_func_end DWC_Svl_Process
_021393B0:
	ldr r0, _021393FC ; =OVERLAY11_BSS_02169D5C
	ldr r0, [r0]
	add r0, r0, #8
	bl ov11_02136F74
	mov r0, #3
	ldmia sp!, {r3, pc}
_021393C8:
	add r0, r1, #8
	bl ov11_02136F74
	mov r0, #5
	ldmia sp!, {r3, pc}
_021393D8:
	add r0, r1, #8
	bl ov11_02136F74
	ldr r1, _02139400 ; =0xFFFFA1DB
	mov r0, #0x11
	bl DWCi_SetError
	mov r0, #4
	ldmia sp!, {r3, pc}
_021393F4:
	mov r0, #2
	ldmia sp!, {r3, pc}
	.align 2, 0
_021393FC: .word OVERLAY11_BSS_02169D5C
_02139400: .word 0xFFFFA1DB

	arm_func_start ov11_02139404
ov11_02139404: ; 0x02139404
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _021395F4 ; =OVERLAY11_BSS_02169D5C
	mov r1, #0
	ldr r4, [r0]
	add r0, r4, #8
	bl ov11_0213774C
	cmp r0, #0
	bne _02139440
	ldr r1, _021395F8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov11_02139404
_02139440:
	ldr r1, _021395FC ; =s_Date_overlay_11_02166f14
	add r0, r4, #8
	bl ov11_021379EC
	cmp r0, #0
	beq _02139458
	bl ov11_02138DC8
_02139458:
	ldr r1, _02139600 ; =s_httpresult_overlay_11_02166f1c
	add r0, r4, #8
	bl ov11_021379EC
	cmp r0, #0
	bne _02139484
	ldr r1, _021395F8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_02139484:
	bl atol
	ldr r1, _02139604 ; =errno
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0x22
	bne _021394B4
	ldr r1, _021395F8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_021394B4:
	cmp r2, #0xc8
	beq _021394D8
	ldr r1, _02139608 ; =0xFFFF9E58
	mov r0, #0x10
	sub r1, r1, r2
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_021394D8:
	ldr r1, _0213960C ; =s_returncd_overlay_11_02166f28
	add r2, sp, #0
	add r0, r4, #8
	mov r3, #4
	bl ov11_02137A44
	cmp r0, #0
	bgt _0213950C
	ldr r1, _021395F8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_0213950C:
	add r0, sp, #0
	bl atol
	ldr r1, _02139604 ; =errno
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0x22
	bne _02139540
	ldr r1, _021395F8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_02139540:
	cmp r2, #0x64
	blt _02139564
	ldr r1, _02139610 ; =0xFFFFA240
	mov r0, #0x10
	sub r1, r1, r2
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_02139564:
	ldr r0, _021395F4 ; =OVERLAY11_BSS_02169D5C
	ldr r1, _02139614 ; =s_svchost_overlay_11_02166f34
	ldr r2, [r0]
	add r0, r4, #8
	add r2, r2, #0x1000
	ldr r2, [r2, #0xc1c]
	mov r3, #0x40
	add r2, r2, #4
	bl ov11_02137A44
	ldr r0, _021395F4 ; =OVERLAY11_BSS_02169D5C
	ldr r1, _02139618 ; =s_servicetoken_overlay_11_02166f3c
	ldr r2, [r0]
	add r0, r4, #8
	add r2, r2, #0x1000
	ldr r2, [r2, #0xc1c]
	mov r3, #0x12c
	add r2, r2, #0x45
	bl ov11_02137A44
	ldr r1, _0213961C ; =s_statusdata_overlay_11_02166f4c
	add r2, sp, #0
	add r0, r4, #8
	mov r3, #1
	bl ov11_02137A44
	ldrsb r0, [sp]
	cmp r0, #0x59
	ldreq r0, _021395F4 ; =OVERLAY11_BSS_02169D5C
	moveq r1, #1
	ldrne r0, _021395F4 ; =OVERLAY11_BSS_02169D5C
	movne r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xc1c]
	str r1, [r0]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_021395F4: .word OVERLAY11_BSS_02169D5C
_021395F8: .word 0xFFFF9DF3
_021395FC: .word s_Date_overlay_11_02166f14
_02139600: .word s_httpresult_overlay_11_02166f1c
_02139604: .word errno
_02139608: .word 0xFFFF9E58
_0213960C: .word s_returncd_overlay_11_02166f28
_02139610: .word 0xFFFFA240
_02139614: .word s_svchost_overlay_11_02166f34
_02139618: .word s_servicetoken_overlay_11_02166f3c
_0213961C: .word s_statusdata_overlay_11_02166f4c

	arm_func_start DWC_Auth_Base64Encode
DWC_Auth_Base64Encode: ; 0x02139620
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r4, _021397A0 ; =0xAAAAAAAB
	str r2, [sp]
	umull r4, r5, r1, r4
	mov r6, #3
	mov r5, r5, lsr #1
	umull r4, r5, r6, r5
	mov sl, r0
	subs r5, r1, r4
	movne r5, #4
	ldr r2, _021397A0 ; =0xAAAAAAAB
	ldr r0, [sp]
	moveq r5, #0
	cmp r0, #0
	umull r0, r4, r1, r2
	mov r4, r4, lsr #1
	addeq sp, sp, #8
	add r0, r5, r4, lsl #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r3, r0
	addlo sp, sp, #8
	mvnlo r0, #0
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r7, sl, r1
	ldr r8, [sp]
	cmp sl, r7
	beq _02139790
	sub fp, r2, #0x80000000
	ldr r5, _021397A4 ; =ptr_s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c_overlay_11_02166f58
	mov r4, fp
	arm_func_end DWC_Auth_Base64Encode
_0213969C:
	sub sb, r7, sl
	mov r0, sb, lsl #3
	smull r1, r2, r4, r0
	add r2, r2, r0, lsr #31
	mov r1, #6
	smull r2, r3, r1, r2
	subs r2, r0, r2
	smull r1, r2, fp, r0
	movne r3, #1
	moveq r3, #0
	add r2, r2, r0, lsr #31
	cmp sb, #3
	add r6, r2, r3
	movge sb, #3
	add r0, sp, #4
	mov r1, #0
	mov r2, #3
	bl MI_CpuFill8
	mov r0, sl
	add r1, sp, #4
	mov r2, sb
	bl MI_CpuCopy8
	ldrb r0, [sp, #4]
	ldr r1, [r5]
	cmp r6, #2
	mov r0, r0, asr #2
	ldrsb r0, [r1, r0]
	strb r0, [r8]
	movlt r0, #0x2a
	blt _02139730
	ldrb r2, [sp, #4]
	ldrb r1, [sp, #5]
	ldr r0, [r5]
	mov r2, r2, lsl #4
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #4
	ldrsb r0, [r0, r1]
_02139730:
	strb r0, [r8, #1]
	cmp r6, #3
	movlt r0, #0x2a
	blt _0213975C
	ldrb r2, [sp, #5]
	ldrb r1, [sp, #6]
	ldr r0, [r5]
	mov r2, r2, lsl #2
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #6
	ldrsb r0, [r0, r1]
_0213975C:
	strb r0, [r8, #2]
	cmp r6, #4
	movlt r0, #0x2a
	blt _0213977C
	ldrb r0, [sp, #6]
	ldr r1, [r5]
	and r0, r0, #0x3f
	ldrsb r0, [r1, r0]
_0213977C:
	add sl, sl, sb
	strb r0, [r8, #3]
	cmp sl, r7
	add r8, r8, #4
	bne _0213969C
_02139790:
	ldr r0, [sp]
	sub r0, r8, r0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021397A0: .word 0xAAAAAAAB
_021397A4: .word ptr_s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c_overlay_11_02166f58

	arm_func_start ov11_021397A8
ov11_021397A8: ; 0x021397A8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	tst r1, #3
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov ip, r5
	cmp r1, #0
	bls _021397E0
	arm_func_end ov11_021397A8
_021397C8:
	ldrsb r4, [r0, ip]
	add ip, ip, #1
	cmp r4, #0x2a
	addne r5, r5, #6
	cmp ip, r1
	blo _021397C8
_021397E0:
	mov ip, r5, asr #2
	add ip, r5, ip, lsr #29
	mov ip, ip, asr #3
	cmp r2, #0
	moveq r0, ip
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r3, ip
	mvnlo r0, #0
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r2]
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r2
_02139818:
	mov r7, #0
	add r6, sp, #0
	mov r3, r7
	mov r4, #0x3f
	mov lr, #0x3e
_0213982C:
	ldrsb r5, [r0, r7]
	cmp r5, #0x41
	blt _02139848
	cmp r5, #0x5a
	suble r5, r5, #0x41
	strleb r5, [r6]
	ble _02139890
_02139848:
	cmp r5, #0x61
	blt _02139860
	cmp r5, #0x7a
	suble r5, r5, #0x47
	strleb r5, [r6]
	ble _02139890
_02139860:
	cmp r5, #0x30
	blt _02139878
	cmp r5, #0x39
	addle r5, r5, #4
	strleb r5, [r6]
	ble _02139890
_02139878:
	cmp r5, #0x2e
	streqb lr, [r6]
	beq _02139890
	cmp r5, #0x2d
	streqb r4, [r6]
	strneb r3, [r6]
_02139890:
	add r7, r7, #1
	cmp r7, #4
	add r6, r6, #1
	blt _0213982C
	ldrsb r4, [sp, #1]
	ldrsb lr, [sp]
	add r3, r1, #1
	mov r4, r4, asr #4
	orr r4, r4, lr, lsl #2
	sub r3, r3, r2
	strb r4, [r1]
	cmp r3, ip
	add r0, r0, #4
	bge _0213990C
	ldrsb lr, [sp, #2]
	ldrsb r4, [sp, #1]
	add r3, r1, #2
	mov lr, lr, asr #2
	orr r4, lr, r4, lsl #4
	sub r3, r3, r2
	strb r4, [r1, #1]
	cmp r3, ip
	bge _0213990C
	ldrsb lr, [sp, #2]
	ldrsb r3, [sp, #3]
	orr r3, r3, lr, lsl #6
	strb r3, [r1, #2]
	add r1, r1, #3
	sub r3, r1, r2
	cmp r3, ip
	blt _02139818
_0213990C:
	mov r0, r3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov11_02139914
ov11_02139914: ; 0x02139914
	stmdb sp!, {r3, lr}
	ldr r1, _0213993C ; =OVERLAY11_BSS_02169D60
	mov r2, r0
	ldr r0, [r1, #8]
	mov r1, #0x300
	bl ov11_0213A248
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0213993C: .word OVERLAY11_BSS_02169D60
	arm_func_end ov11_02139914

	arm_func_start ov11_02139940
ov11_02139940: ; 0x02139940
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02139A00 ; =OVERLAY11_BSS_02169D6C
	mov r1, r4
	mov r2, #6
	bl MI_CpuCopy8
	ldr r1, _02139A04 ; =0x000007FF
	ldr r3, [r4]
	sub r0, r1, #0x800
	ldr r2, [r4, #4]
	and r0, r3, r0
	str r0, [r4]
	and r1, r2, r1
	str r1, [r4, #4]
	ldr r0, _02139A08 ; =OVERLAY11_BSS_02169D71
	add r1, r4, #8
	mov r2, #6
	bl MI_CpuCopy8
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r1, r1, lsr #3
	orr r1, r1, r0, lsl #29
	str r1, [r4, #8]
	mov r3, r0, lsr #3
	str r3, [r4, #0xc]
	ldr r1, _02139A04 ; =0x000007FF
	ldr r2, [r4, #8]
	sub r0, r1, #0x800
	and r0, r2, r0
	str r0, [r4, #8]
	and r1, r1, r3
	str r1, [r4, #0xc]
	ldr r0, _02139A0C ; =OVERLAY11_BSS_02169D76
	add r1, r4, #0x10
	mov r2, #2
	bl MI_CpuCopy8
	ldrh r1, [r4, #0x10]
	ldr r3, _02139A10 ; =0x000003FF
	ldr r0, _02139A14 ; =OVERLAY11_BSS_02169D78
	mov r1, r1, asr #6
	strh r1, [r4, #0x10]
	ldrh ip, [r4, #0x10]
	add r1, r4, #0x12
	mov r2, #2
	and r3, ip, r3
	strh r3, [r4, #0x10]
	bl MI_CpuCopy8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02139A00: .word OVERLAY11_BSS_02169D6C
_02139A04: .word 0x000007FF
_02139A08: .word OVERLAY11_BSS_02169D71
_02139A0C: .word OVERLAY11_BSS_02169D76
_02139A10: .word 0x000003FF
_02139A14: .word OVERLAY11_BSS_02169D78
	arm_func_end ov11_02139940

	arm_func_start ov11_02139A18
ov11_02139A18: ; 0x02139A18
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, _02139AE8 ; =OVERLAY11_BSS_02169D60
	mov sl, r1
	ldr sb, [r2, #8]
	bl ov11_0213A43C
	ldr r1, _02139AEC ; =0x0000A001
	add r0, sl, #0x200
	bl MATHi_CRC16InitTableRev
	mov r5, #0x100
	ldr r6, _02139AF0 ; =OVERLAY11_BSS_02169D6C
	mov r8, #0
	mov r4, r5
	mov fp, #0xe
	mov r7, r5
	arm_func_end ov11_02139A18
_02139A50:
	mov r0, sb
	mov r1, r7
	mov r2, sl
	bl ov11_0213A248
	cmp r0, #0
	bne _02139A74
	bl OS_Terminate
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02139A74:
	mov r0, r6
	mov r2, fp
	add r1, sl, #0xf0
	bl MI_CpuCopy8
	mov r1, sl
	mov r2, #0xfe
	add r0, sl, #0x200
	bl MATH_CalcCRC16
	strh r0, [sl, #0xfe]
_02139A98:
	mov r0, sb
	mov r1, r5
	mov r2, sl
	bl ov11_0213A2D8
	mov r0, sl
	mov r1, sb
	mov r2, r4
	add r3, sl, #0x100
	bl ov11_0213A354
	cmp r0, #0
	beq _02139A98
	add r8, r8, #1
	cmp r8, #2
	add sb, sb, #0x100
	blt _02139A50
	bl ov11_0213A3A0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02139AE8: .word OVERLAY11_BSS_02169D60
_02139AEC: .word 0x0000A001
_02139AF0: .word OVERLAY11_BSS_02169D6C

	arm_func_start ov11_02139AF4
ov11_02139AF4: ; 0x02139AF4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x20
	mov r1, r0
	mov r2, r4
	bl ov11_0213A248
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r2, [r4]
	ldr r1, _02139B34 ; =OVERLAY11_BSS_02169D60
	mov r0, #1
	mov r2, r2, lsl #3
	sub r2, r2, #0x400
	str r2, [r1, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02139B34: .word OVERLAY11_BSS_02169D60
	arm_func_end ov11_02139AF4

	arm_func_start ov11_02139B38
ov11_02139B38: ; 0x02139B38
	stmdb sp!, {r3, lr}
	ldr r1, _02139B60 ; =OVERLAY11_BSS_02169D60
	mov r2, r0
	ldr r0, [r1, #8]
	mov r1, #0x400
	bl ov11_0213A248
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02139B60: .word OVERLAY11_BSS_02169D60
	arm_func_end ov11_02139B38

	arm_func_start ov11_02139B64
ov11_02139B64: ; 0x02139B64
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r3, _02139BE8 ; =OVERLAY11_BSS_02169D60
	mov sl, #0x100
	ldr r5, [r3, #8]
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, #0
	mov sb, sl
	arm_func_end ov11_02139B64
_02139B88:
	ldr r0, [r7, r4, lsl #2]
	cmp r0, #0
	beq _02139BC0
_02139B94:
	mov r0, r5
	mov r1, sl
	mov r2, r8
	bl ov11_0213A2D8
	mov r0, r8
	mov r1, r5
	mov r2, sb
	mov r3, r6
	bl ov11_0213A354
	cmp r0, #0
	beq _02139B94
_02139BC0:
	add r4, r4, #1
	cmp r4, #4
	add r8, r8, #0x100
	add r5, r5, #0x100
	blt _02139B88
	bl ov11_0213A3A0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02139BE8: .word OVERLAY11_BSS_02169D60

	arm_func_start ov11_02139BEC
ov11_02139BEC: ; 0x02139BEC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r1, _02139C7C ; =OVERLAY11_BSS_02169D60
	mov r8, r0
	mov sl, #0x100
	ldr r6, [r1, #8]
	mov r7, r8
	mov r5, #0
	mov sb, sl
	mov r4, #0xfe
	arm_func_end ov11_02139BEC
_02139C10:
	mov r1, r7
	mov r2, r4
	add r0, r8, #0x500
	bl MATH_CalcCRC16
	add r1, r8, r5, lsl #8
	strh r0, [r1, #0xfe]
_02139C28:
	mov r0, r6
	mov r1, sl
	mov r2, r7
	bl ov11_0213A2D8
	mov r0, r7
	mov r1, r6
	mov r2, sb
	add r3, r8, #0x400
	bl ov11_0213A354
	cmp r0, #0
	beq _02139C28
	add r5, r5, #1
	cmp r5, #4
	add r7, r7, #0x100
	add r6, r6, #0x100
	blt _02139C10
	bl ov11_0213A3A0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02139C7C: .word OVERLAY11_BSS_02169D60

	arm_func_start ov11_02139C80
ov11_02139C80: ; 0x02139C80
	ldr ip, _02139C90 ; =MI_CpuCopy8
	ldr r1, _02139C94 ; =OVERLAY11_BSS_02169D6C
	mov r2, #0xe
	bx ip
	.align 2, 0
_02139C90: .word MI_CpuCopy8
_02139C94: .word OVERLAY11_BSS_02169D6C
	arm_func_end ov11_02139C80

	arm_func_start ov11_02139C98
ov11_02139C98: ; 0x02139C98
	stmdb sp!, {r4, lr}
	mov ip, #0
	mov r3, ip
	mov r2, ip
	arm_func_end ov11_02139C98
_02139CA8:
	ldrb r4, [r0, ip]
	mov lr, r2
_02139CB0:
	mov r1, r4, asr lr
	tst r1, #1
	add lr, lr, #1
	addne r3, r3, #1
	cmp lr, #8
	blt _02139CB0
	add ip, ip, #1
	cmp ip, #4
	blt _02139CA8
	and r0, r3, #0xff
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02139CDC
ov11_02139CDC: ; 0x02139CDC
	mvn r2, #0
	mov r3, #0
	eor r2, r2, r2, lsr r0
	mov ip, r3
	arm_func_end ov11_02139CDC
_02139CEC:
	rsb r0, ip, #0x18
	mov r0, r2, lsr r0
	strb r0, [r1, r3]
	add r3, r3, #1
	cmp r3, #4
	add ip, ip, #8
	blt _02139CEC
	bx lr

	arm_func_start ov11_02139D0C
ov11_02139D0C: ; 0x02139D0C
	mov r2, #0
	arm_func_end ov11_02139D0C
_02139D10:
	ldrb r1, [r0, r2]
	cmp r1, #0
	movne r0, #1
	bxne lr
	add r2, r2, #1
	cmp r2, #0x20
	blt _02139D10
	mov r0, #0
	bx lr

	arm_func_start ov11_02139D34
ov11_02139D34: ; 0x02139D34
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	bl ov11_02139DB0
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r1, sp, #4
	mov r0, r5
	mov r2, #4
	bl MI_CpuCopy8
	add r1, sp, #0
	mov r0, r4
	mov r2, #4
	bl MI_CpuCopy8
	ldr r3, [sp]
	ldr r2, [sp, #4]
	mvn r0, #1
	orr r1, r2, r3
	cmp r1, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mvn r0, r3
	tst r2, r0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_02139D34

	arm_func_start ov11_02139DB0
ov11_02139DB0: ; 0x02139DB0
	ldrb r0, [r0]
	cmp r0, #0x7f
	moveq r0, #0
	bxeq lr
	cmp r0, #1
	movlo r0, #0
	bxlo lr
	cmp r0, #0xdf
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end ov11_02139DB0

	arm_func_start ov11_02139DDC
ov11_02139DDC: ; 0x02139DDC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x3c
	ldr sl, _0213A230 ; =OVERLAY11_BSS_02169D80
	mov r8, r1, lsr #0x10
	mov r4, sl, lsl #8
	mov sb, r4
	and r4, r4, #0xff00
	mov r1, r1, lsl #0x10
	orr r4, r4, #0x20000
	mov r5, r3, lsr #0x10
	mov r7, r0
	ldr ip, _0213A234 ; =0x01020000
	mov r1, r1, lsr #0x10
	str r4, [sp, #0x30]
	orr r4, r1, #0x10000
	mov r3, r3, lsl #0x10
	add r1, ip, #0x30000
	orr r1, r1, r3, lsr #16
	str r1, [sp, #0x10]
	mov r1, r3, lsr #0x10
	orr r1, r1, #0x1040000
	ldr r0, _0213A238 ; =0x02002200
	str r1, [sp, #0x24]
	orr r1, r0, sl, lsr #24
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x30]
	mov sb, sb, lsr #0x10
	orr r1, r1, #0x1000000
	str r1, [sp, #0x30]
	add r1, r0, #0x300
	and r8, r8, #0xff
	add r0, r0, #0x100
	orr r0, r8, r0
	orr r1, r8, r1
	str r0, [sp]
	orr r0, r2, #0x20000
	str r0, [sp, #0x1c]
	orr r0, r5, #0x30000
	str r0, [sp, #0x20]
	orr r0, r5, #0x40000
	str r0, [sp, #0xc]
	ldr r0, _0213A23C ; =0x03002100
	mov r6, #0
	sub r0, r0, #0x100
	str r0, [sp, #0x14]
	mov r0, r2, lsr #0x10
	orr r0, r0, #0x20000
	str r0, [sp, #4]
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	orr sb, sb, #0x10000
	orr r0, r0, #0x30000
	str sb, [sp, #0x2c]
	str r1, [sp, #0x18]
	str r0, [sp, #8]
	mov r5, r6
	mov r8, #0xfa0
_02139EC0:
	cmp r6, #0
	bne _0213A100
	ldr r0, _0213A240 ; =OVERLAY11_BSS_02169D60
	cmp r7, #7
	str r5, [r0, #4]
	addls pc, pc, r7, lsl #2
	b _02139EC0
_02139EDC: ; jump table
	b _02139EC0 ; case 0
	b _02139EFC ; case 1
	b _02139FA8 ; case 2
	b _02139FC8 ; case 3
	b _0213A064 ; case 4
	b _0213A064 ; case 5
	b _0213A0BC ; case 6
	b _0213A0E0 ; case 7
	arm_func_end ov11_02139DDC
_02139EFC:
	ldr r1, [sp]
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	mov r0, #4
	mov r1, r4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	ldr r1, [sp, #4]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	ldr r1, [sp, #8]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	ldr r1, [sp, #0xc]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	ldr r1, [sp, #0x10]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _02139EC0
_02139FA8:
	ldr r1, [sp, #0x14]
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _02139EC0
_02139FC8:
	ldr r1, [sp, #0x18]
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _0213A054
	mov r0, #4
	mov r1, r4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _0213A054
	ldr r1, [sp, #0x1c]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _0213A054
	ldr r1, [sp, #0x20]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _0213A054
	ldr r1, [sp, #0x24]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
_0213A054:
	bl OS_GetTick
	str r0, [sp, #0x34]
	mov fp, r1
	b _02139EC0
_0213A064:
	ldr r1, [sp, #0x28]
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	ldr r1, [sp, #0x2c]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	blt _02139EC0
	ldr r1, [sp, #0x30]
	mov r0, #4
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _02139EC0
_0213A0BC:
	ldr r1, _0213A23C ; =0x03002100
	mov r0, #4
	add r1, r1, #0xc00
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _02139EC0
_0213A0E0:
	ldr r1, _0213A23C ; =0x03002100
	mov r0, #4
	mov r2, r5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r6, #0
	movge r6, #1
	b _02139EC0
_0213A100:
	ldr r0, _0213A240 ; =OVERLAY11_BSS_02169D60
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _02139EC0
	ldr r0, _0213A240 ; =OVERLAY11_BSS_02169D60
	mov r6, #0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0213A224
	cmp r7, #7
	addls pc, pc, r7, lsl #2
	b _02139EC0
_0213A130: ; jump table
	b _02139EC0 ; case 0
	b _0213A150 ; case 1
	b _0213A15C ; case 2
	b _0213A164 ; case 3
	b _0213A16C ; case 4
	b _0213A16C ; case 5
	b _0213A20C ; case 6
	b _0213A218 ; case 7
_0213A150:
	add sp, sp, #0x3c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213A15C:
	mov r7, #4
	b _02139EC0
_0213A164:
	mov r7, #5
	b _02139EC0
_0213A16C:
	mov r0, sl
	mov r1, #1
	bl DC_InvalidateRange
	cmp r7, #4
	ldrb r0, [sl]
	bne _0213A19C
	tst r0, #2
	movne r7, #3
	bne _02139EC0
	add sp, sp, #0x3c
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213A19C:
	tst r0, #1
	addeq sp, sp, #0x3c
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	tst r0, #0x20
	bne _0213A1F8
	bl OS_GetTick
	ldr r2, [sp, #0x34]
	mov ip, r6
	subs sb, r0, r2
	mov r0, #0x40
	sbc lr, r1, fp
	umull r0, r1, sb, r0
	mla r1, sb, ip, r1
	mov sb, #0x40
	mla r1, lr, sb, r1
	ldr r2, _0213A244 ; =0x000082EA
	mov r3, r6
	bl _ll_udiv
	mov r2, r6
	cmp r1, r2
	cmpeq r0, r8
	bls _0213A200
_0213A1F8:
	mov r7, #6
	b _02139EC0
_0213A200:
	mov r0, #0x4000
	blx SVC_WaitByLoop
	b _02139EC0
_0213A20C:
	add sp, sp, #0x3c
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213A218:
	add sp, sp, #0x3c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213A224:
	mov r0, r6
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0213A230: .word OVERLAY11_BSS_02169D80
_0213A234: .word 0x01020000
_0213A238: .word 0x02002200
_0213A23C: .word 0x03002100
_0213A240: .word OVERLAY11_BSS_02169D60
_0213A244: .word 0x000082EA

	arm_func_start ov11_0213A248
ov11_0213A248: ; 0x0213A248
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r2
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl DC_InvalidateRange
	mov r8, #4
	mov r7, #1
	arm_func_end ov11_0213A248
_0213A268:
	mov r0, r8
	mov r1, r7
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0213A268
	ldr r1, _0213A2D4 ; =ov11_0213A40C
	mov r0, #4
	bl PXI_SetFifoRecvCallback
	mov r0, r5, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r7, #0x40000
	mov sb, #1
_0213A298:
	mov r0, sb
	mov r1, r6
	mov r2, r8
	mov r3, r4
	bl ov11_02139DDC
	cmp r0, #1
	beq _0213A2C0
	mov r0, r7
	blx SVC_WaitByLoop
	b _0213A298
_0213A2C0:
	mov r0, r4
	mov r1, r5
	bl DC_InvalidateRange
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0213A2D4: .word ov11_0213A40C

	arm_func_start ov11_0213A2D8
ov11_0213A2D8: ; 0x0213A2D8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #4
	mov r4, #1
	arm_func_end ov11_0213A2D8
_0213A2F0:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0213A2F0
	ldr r1, _0213A350 ; =ov11_0213A40C
	mov r0, #4
	bl PXI_SetFifoRecvCallback
	mov r0, r6
	mov r1, r7
	bl DC_StoreRange
	mov r4, #0x40000
	mov r5, #2
_0213A324:
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl ov11_02139DDC
	cmp r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	blx SVC_WaitByLoop
	b _0213A324
_0213A34C:
	.byte 0xF0, 0x81, 0xBD, 0xE8
_0213A350: .word ov11_0213A40C

	arm_func_start ov11_0213A354
ov11_0213A354: ; 0x0213A354
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r4, r3
	mov r6, r0
	mov r0, r1
	mov r1, r5
	mov r2, r4
	bl ov11_0213A248
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_0213A354

	arm_func_start ov11_0213A3A0
ov11_0213A3A0: ; 0x0213A3A0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, #4
	mov r4, #1
	arm_func_end ov11_0213A3A0
_0213A3AC:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0213A3AC
	ldr r1, _0213A408 ; =ov11_0213A40C
	mov r0, #4
	bl PXI_SetFifoRecvCallback
	mov r4, #0x40000
	mov r6, #7
	mov r5, #0
_0213A3D8:
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r5
	bl ov11_02139DDC
	cmp r0, #1
	beq _0213A400
	mov r0, r4
	blx SVC_WaitByLoop
	b _0213A3D8
_0213A400:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0213A408: .word ov11_0213A40C

	arm_func_start ov11_0213A40C
ov11_0213A40C: ; 0x0213A40C
	ldr r0, _0213A438 ; =OVERLAY11_BSS_02169D60
	and r1, r1, #0xff
	strh r1, [r0]
	mov r1, #1
	str r1, [r0, #4]
	cmp r2, #0
	movne r1, #0xff
	strneh r1, [r0]
	ldr r0, _0213A438 ; =OVERLAY11_BSS_02169D60
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0213A438: .word OVERLAY11_BSS_02169D60
	arm_func_end ov11_0213A40C

	arm_func_start ov11_0213A43C
ov11_0213A43C: ; 0x0213A43C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r3, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r1, _0213A4F0 ; =OVERLAY11_BSS_02169D6C
	str r2, [sp, #4]
	str r3, [sp]
	mov r2, #5
	bl MI_CpuCopy8
	ldr r2, [sp]
	ldr r1, [sp, #4]
	mov ip, r2, lsr #5
	ldr lr, [r4, #4]
	mov r3, r1, lsr #5
	orr ip, ip, r1, lsl #27
	mov r0, #7
	and r1, r0, lr, lsr #8
	and r0, r2, #0x1f
	orr lr, r1, r0, lsl #3
	ldr r2, _0213A4F0 ; =OVERLAY11_BSS_02169D6C
	ldr r1, _0213A4F4 ; =OVERLAY11_BSS_02169D72
	strb lr, [r2, #5]
	add r0, sp, #0
	str ip, [sp]
	str r3, [sp, #4]
	mov r2, #4
	bl MI_CpuCopy8
	ldrh r0, [r4, #0x10]
	ldr r1, [sp, #4]
	ldr r3, _0213A4F0 ; =OVERLAY11_BSS_02169D6C
	and r1, r1, #0x3f
	mov r0, r0, lsl #0x1e
	orr r0, r1, r0, lsr #24
	strb r0, [r3, #0xa]
	ldrh r2, [r4, #0x10]
	add r0, r4, #0x12
	ldr r1, _0213A4F8 ; =OVERLAY11_BSS_02169D78
	mov r4, r2, asr #2
	mov r2, #2
	strb r4, [r3, #0xb]
	bl MI_CpuCopy8
	ldr r0, _0213A4F0 ; =OVERLAY11_BSS_02169D6C
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213A4F0: .word OVERLAY11_BSS_02169D6C
_0213A4F4: .word OVERLAY11_BSS_02169D72
_0213A4F8: .word OVERLAY11_BSS_02169D78
	arm_func_end ov11_0213A43C

	arm_func_start ov11_0213A4FC
ov11_0213A4FC: ; 0x0213A4FC
	ldr r0, _0213A504 ; =OVERLAY11_BSS_02169D6C
	bx lr
	.align 2, 0
_0213A504: .word OVERLAY11_BSS_02169D6C
	arm_func_end ov11_0213A4FC

	arm_func_start DWC_BM_Init
DWC_BM_Init: ; 0x0213A508
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r1, #0
	mov r2, #0x700
	bl MI_CpuFill8
	mov r0, r8
	bl ov11_02139AF4
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _0213A7FC ; =0xFFFFD8EF
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _0213A800 ; =0x0000A001
	add r0, r8, #0x500
	bl MATHi_CRC16InitTableRev
	mov r0, r8
	bl ov11_02139B38
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _0213A7FC ; =0xFFFFD8EF
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r6, r8
	mov r7, r8
	mov r5, #0
	mov sl, #1
	add sb, sp, #0
	mov r4, #0xfe
	arm_func_end DWC_BM_Init
_0213A584:
	mov r1, r6
	mov r2, r4
	add r0, r8, #0x500
	bl MATH_CalcCRC16
	add r1, r8, r5, lsl #8
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	bne _0213A5B4
	mov r0, r7
	bl ov11_0213A810
	cmp r0, #0
	strne sl, [sb, r5, lsl #2]
_0213A5B4:
	add r5, r5, #1
	cmp r5, #3
	add r6, r6, #0x100
	add r7, r7, #0x100
	blt _0213A584
	add r0, r8, #0x500
	add r1, r8, #0x300
	mov r2, #0xfe
	bl MATH_CalcCRC16
	add r1, r8, #0x300
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	moveq r0, #1
	ldr r1, [sp]
	streq r0, [sp, #0xc]
	cmp r1, #0
	ldrne r0, [sp, #4]
	cmpne r0, #0
	ldrne r0, [sp, #8]
	cmpne r0, #0
	ldrne r0, [sp, #0xc]
	cmpne r0, #0
	beq _0213A624
	add r0, r8, #0xf0
	bl ov11_02139C80
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0213A624:
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	ldreq r0, [sp, #0xc]
	cmpeq r0, #0
	bne _0213A668
	mov r0, r8
	bl ov11_0213A910
	mov r0, r8
	bl ov11_02139BEC
	cmp r0, #0
	movne r0, #0
	add sp, sp, #0x10
	ldreq r0, _0213A804 ; =0xFFFFD8F0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0213A668:
	cmp r1, #0
	ldrne r0, [sp, #4]
	cmpne r0, #0
	bne _0213A6B0
	ldr r0, [sp, #8]
	cmp r0, #0
	ldrne r0, [sp, #0xc]
	cmpne r0, #0
	bne _0213A6B0
	mov r0, r8
	bl ov11_0213A910
	mov r0, r8
	bl ov11_02139BEC
	cmp r0, #0
	movne r0, #0
	add sp, sp, #0x10
	ldreq r0, _0213A804 ; =0xFFFFD8F0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0213A6B0:
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	bne _0213A6E4
	mov r0, r8
	bl ov11_0213A910
	mov r0, r8
	bl ov11_02139BEC
	cmp r0, #0
	ldrne r0, _0213A808 ; =0xFFFFD8ED
	add sp, sp, #0x10
	ldreq r0, _0213A804 ; =0xFFFFD8F0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0213A6E4:
	cmp r1, #0
	bne _0213A714
	mov r0, r8
	mov r1, #0
	bl ov11_0213A990
	add r0, r8, #0x1f0
	add r1, r8, #0xf0
	mov r2, #0xe
	bl MI_CpuCopy8
	ldrb r0, [r8, #0x1ef]
	strb r0, [r8, #0xef]
	b _0213A744
_0213A714:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0213A744
	mov r0, r8
	mov r1, #1
	bl ov11_0213A990
	add r0, r8, #0xf0
	add r1, r8, #0x1f0
	mov r2, #0xe
	bl MI_CpuCopy8
	ldrb r0, [r8, #0xef]
	strb r0, [r8, #0x1ef]
_0213A744:
	add r0, r8, #0xf0
	bl ov11_02139C80
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0213A764
	mov r0, r8
	mov r1, #2
	bl ov11_0213A990
_0213A764:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0213A780
	add r1, r8, #0x300
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear16
_0213A780:
	mov r4, #0
	mov r5, r4
	mov r2, #1
	add r3, sp, #0
_0213A790:
	ldr r0, [r3, r5, lsl #2]
	cmp r0, #0
	bne _0213A7C4
	ldrb r0, [r8, #0xef]
	tst r0, r2, lsl r5
	beq _0213A7C4
	mov r1, r0
	mvn r0, r2, lsl r5
	and r0, r1, r0
	strb r0, [r8, #0xef]
	and r0, r0, #0xff
	mov r4, r2
	strb r0, [r8, #0x1ef]
_0213A7C4:
	add r5, r5, #1
	cmp r5, #3
	blt _0213A790
	mov r0, r8
	bl ov11_02139BEC
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _0213A804 ; =0xFFFFD8F0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r4, #0
	ldrne r0, _0213A80C ; =0xFFFFD8EE
	moveq r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0213A7FC: .word 0xFFFFD8EF
_0213A800: .word 0x0000A001
_0213A804: .word 0xFFFFD8F0
_0213A808: .word 0xFFFFD8ED
_0213A80C: .word 0xFFFFD8EE

	arm_func_start ov11_0213A810
ov11_0213A810: ; 0x0213A810
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r0, [r4, #0xe7]
	cmp r0, #0xff
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r3, r4, pc}
	cmp r0, #2
	addhi sp, sp, #4
	movhi r0, #0
	ldmhiia sp!, {r3, r4, pc}
	add r0, r4, #0x40
	bl ov11_02139D0C
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r1, _0213A90C ; =DAT_overlay_11_02162bfc
	add r0, r4, #0xc0
	mov r2, #4
	bl memcmp
	cmp r0, #0
	beq _0213A8C0
	add r0, r4, #0xc4
	bl ov11_02139DB0
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldrb r0, [r4, #0xd0]
	cmp r0, #0x20
	addhi sp, sp, #4
	movhi r0, #0
	ldmhiia sp!, {r3, r4, pc}
	add r1, sp, #0
	bl ov11_02139CDC
	add r1, sp, #0
	add r0, r4, #0xc0
	bl ov11_02139D34
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	arm_func_end ov11_0213A810
_0213A8C0:
	ldr r1, _0213A90C ; =DAT_overlay_11_02162bfc
	add r0, r4, #0xc8
	mov r2, #4
	bl memcmp
	cmp r0, #0
	beq _0213A900
	add r0, r4, #0xc8
	bl ov11_02139DB0
	cmp r0, #0
	bne _0213A900
	add r0, r4, #0xcc
	bl ov11_02139DB0
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
_0213A900:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0213A90C: .word DAT_overlay_11_02162bfc

	arm_func_start ov11_0213A910
ov11_0213A910: ; 0x0213A910
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r1, r7
	mov r0, #0
	mov r2, #0x400
	bl MIi_CpuClear16
	mov r2, #0
	mov r1, #0xff
	arm_func_end ov11_0213A910
_0213A934:
	add r0, r7, r2, lsl #8
	add r2, r2, #1
	strb r1, [r0, #0xe7]
	cmp r2, #3
	blt _0213A934
	add r0, sp, #0
	bl ov11_0213AB40
	add r0, sp, #0
	bl ov11_0213A43C
	mov r5, r0
	mov r6, #0
	mov r4, #0xe
_0213A964:
	mov r0, r5
	mov r2, r4
	add r1, r7, #0xf0
	bl MI_CpuCopy8
	add r6, r6, #1
	cmp r6, #2
	add r7, r7, #0x100
	blt _0213A964
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start ov11_0213A990
ov11_0213A990: ; 0x0213A990
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r1, r5, r4, lsl #8
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear16
	add r0, r5, r4, lsl #8
	mov r1, #0xff
	strb r1, [r0, #0xe7]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_0213A990

	arm_func_start ov11_0213A9BC
ov11_0213A9BC: ; 0x0213A9BC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r4, _0213AB34 ; =0x0000FFFF
	mov lr, #0
	and ip, lr, #0
	add r5, r4, #0xff0000
	and r2, r2, #1
	mov r6, ip, lsl #2
	and r3, r3, #3
	and r5, r1, r5
	orr r1, r3, r2, lsl #2
	orr r6, r6, r2, lsr #30
	mov r7, ip, lsl #3
	and r2, r0, r4
	orr r0, r1, r5, lsl #3
	orr r1, r0, r2, lsl #27
	mov r3, ip, lsl #0x1b
	orr r3, r3, r2, lsr #5
	orr r7, r7, r5, lsr #29
	orr r0, ip, r6
	orr r0, r7, r0
	orr r0, r3, r0
	add r2, sp, #8
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	arm_func_end ov11_0213A9BC
_0213AA20:
	ldrb r0, [r2]
	add lr, lr, #1
	cmp lr, #6
	eor r0, r0, #0xd6
	strb r0, [r2], #1
	blt _0213AA20
	ldr r2, _0213AB38 ; =DAT_overlay_11_02162c08
	add r4, sp, #8
	mov r5, #0
_0213AA44:
	ldrb r3, [r4]
	add r5, r5, #1
	cmp r5, #5
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4], #1
	blt _0213AA44
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #8
	bl MI_CpuCopy8
	ldr r4, _0213AB3C ; =DAT_overlay_11_02162c00
	add r3, sp, #0
	mov r5, #0
	add r0, sp, #8
_0213AA90:
	ldrb r2, [r3], #1
	ldrb r1, [r4], #1
	add r5, r5, #1
	cmp r5, #5
	strb r2, [r0, r1]
	blt _0213AA90
	ldrb r2, [sp, #0xd]
	mov r1, #0
	ldr r3, [sp, #8]
	and r2, r2, #7
	strb r1, [sp, #0xf]
	strb r1, [sp, #0xe]
	strb r2, [sp, #0xd]
	ldr r2, [sp, #0xc]
	mov r4, r3, lsl #1
	mov r2, r2, lsl #1
	orr r2, r2, r3, lsr #31
	str r2, [sp, #0xc]
	ldrb r2, [sp, #0xd]
	str r4, [sp, #8]
	ldrb r3, [sp, #8]
	mov r2, r2, asr #3
	and r2, r2, #1
	orr r2, r3, r2
	strb r2, [sp, #8]
_0213AAF4:
	ldrb r2, [r0]
	add r1, r1, #1
	cmp r1, #6
	eor r2, r2, #0x67
	strb r2, [r0], #1
	blt _0213AAF4
	ldrb r0, [sp, #0xd]
	mov r1, #0
	strb r1, [sp, #0xf]
	and r0, r0, #7
	strb r1, [sp, #0xe]
	strb r0, [sp, #0xd]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0213AB34: .word 0x0000FFFF
_0213AB38: .word DAT_overlay_11_02162c08
_0213AB3C: .word DAT_overlay_11_02162c00

	arm_func_start ov11_0213AB40
ov11_0213AB40: ; 0x0213AB40
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov sl, r0
	bl ov11_02139940
	bl RTC_Init
	add r0, sp, #0x14
	bl RTC_GetDate
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #8
	bl RTC_GetTime
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #0x14
	add r1, sp, #8
	bl RTC_ConvertDateTimeToSecond
	mov r4, r0
	mov r0, #0
	subs r2, r4, r0
	sbcs r2, r1, r0
	addlt sp, sp, #0x24
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl OS_IsTickAvailable
	cmp r0, #0
	beq _0213ABBC
	ldr r0, _0213AD0C ; =FUN_020668E8
	adds r4, r4, r0
	arm_func_end ov11_0213AB40
_0213ABBC:
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrb r0, [sp, #1]
	ldr r5, _0213AD10 ; =0x5D588B65
	ldr r6, _0213AD14 ; =0x00269EC3
	ldrb r1, [sp]
	mla sb, r4, r5, r6
	mov r0, r0, lsl #8
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldr r0, _0213AD18 ; =0x000009BF
	ldrb r7, [sp, #4]
	orr r1, r2, r1
	cmp r1, r0
	mov r2, sb, lsr #0x10
	mov r0, #0x3e8
	mul r3, r2, r0
	mov r2, r3, lsr #0x10
	movne r1, #1
	ldrb r0, [sp, #5]
	ldrb r4, [sp, #3]
	mov r3, r7, lsl #8
	moveq r1, #0
	orr r4, r3, r4, lsl #16
	strh r2, [sl, #0x10]
	mov r3, #0
	str r3, [sl]
	str r3, [sl, #4]
	ldrh r2, [sl, #0x12]
	and r7, r1, #0xff
	orr r8, r0, r4
	str r3, [sl, #8]
	cmp r2, #0
	str r3, [sl, #0xc]
	bne _0213ACAC
	ldr r0, [sl, #8]
	cmp r3, r3
	cmpeq r0, r3
	bne _0213AD00
	mov fp, r3
	mov r4, r3
_0213AC60:
	mul r0, sb, r5
	adds sb, r0, r6
	bne _0213AC78
_0213AC6C:
	mul r0, sb, r5
	adds sb, r0, r6
	beq _0213AC6C
_0213AC78:
	strh sb, [sl, #0x12]
	ldrh r0, [sl, #0x12]
	mov r1, r8
	mov r2, r7
	mov r3, #0
	bl ov11_0213A9BC
	str r0, [sl, #8]
	str r1, [sl, #0xc]
	ldr r0, [sl, #8]
	cmp r1, fp
	cmpeq r0, r4
	beq _0213AC60
	b _0213AD00
_0213ACAC:
	ldr r0, [sl, #8]
	cmp r3, r3
	cmpeq r0, r3
	bne _0213AD00
	mov r6, r3
	mov r5, r3
	mov r4, r3
_0213ACC8:
	ldrh r0, [sl, #0x12]
	mov r1, r8
	mov r2, r7
	add r0, r0, #1
	strh r0, [sl, #0x12]
	ldrh r0, [sl, #0x12]
	mov r3, r6
	bl ov11_0213A9BC
	str r0, [sl, #8]
	str r1, [sl, #0xc]
	ldr r0, [sl, #8]
	cmp r1, r5
	cmpeq r0, r4
	beq _0213ACC8
_0213AD00:
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0213AD0C: .word OS_GetTick
_0213AD10: .word 0x5D588B65
_0213AD14: .word 0x00269EC3
_0213AD18: .word 0x000009BF

	arm_func_start DWCi_AUTH_MakeWiFiID
DWCi_AUTH_MakeWiFiID: ; 0x0213AD1C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl ov11_0213AB40
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #0
	mov r1, r4
	bl ov11_02139A18
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end DWCi_AUTH_MakeWiFiID

	arm_func_start ov11_0213AD60
ov11_0213AD60: ; 0x0213AD60
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl ov11_02139940
	add ip, r5, #8
	ldmia ip, {r2, r3}
	stmia r5, {r2, r3}
	add r1, sp, #8
	ldmia r1, {r2, r3}
	mov r0, r5
	mov r1, r4
	stmia ip, {r2, r3}
	bl ov11_02139A18
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov11_0213AD60

	arm_func_start ov11_0213ADB0
ov11_0213ADB0: ; 0x0213ADB0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	add r2, sp, #0
	mov r1, #0
	mov sl, r0
	strb r1, [r2]
	strb r1, [r2, #1]
	strb r1, [r2, #2]
	strb r1, [r2, #3]
	strb r1, [r2, #4]
	strb r1, [r2, #5]
	bl ov11_02139940
	bl RTC_Init
	add r0, sp, #0x14
	bl RTC_GetDate
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #8
	bl RTC_GetTime
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #0x14
	add r1, sp, #8
	bl RTC_ConvertDateTimeToSecond
	mov r4, r0
	mov r0, #0
	subs r2, r4, r0
	sbcs r2, r1, r0
	addlt sp, sp, #0x24
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl OS_IsTickAvailable
	cmp r0, #0
	beq _0213AE4C
	ldr r0, _0213AF40 ; =FUN_020668E8
	adds r4, r4, r0
	arm_func_end ov11_0213ADB0
_0213AE4C:
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrb r0, [sp, #1]
	ldr r5, _0213AF44 ; =0x5D588B65
	ldr r6, _0213AF48 ; =0x00269EC3
	ldrb r1, [sp]
	mov r0, r0, lsl #8
	mla sb, r4, r5, r6
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldr r0, _0213AF4C ; =0x000009BF
	ldrb r7, [sp, #4]
	orr r1, r2, r1
	cmp r1, r0
	movne r1, #1
	mov r2, sb, lsr #0x10
	mov r0, #0x3e8
	mul r4, r2, r0
	mov r2, r4, lsr #0x10
	ldrb r0, [sp, #5]
	ldrb r8, [sp, #3]
	mov r4, r7, lsl #8
	moveq r1, #0
	mov r3, #0
	strh r2, [sl, #0x10]
	str r3, [sl, #8]
	str r3, [sl, #0xc]
	orr r4, r4, r8, lsl #16
	ldr r2, [sl, #8]
	cmp r3, #0
	cmpeq r2, #0
	and r7, r1, #0xff
	orr r8, r0, r4
	bne _0213AF34
	mov fp, r3
	mov r4, r3
_0213AEDC:
	mla sb, r5, sb, r6
	b _0213AEE8
_0213AEE4:
	mla sb, r5, sb, r6
_0213AEE8:
	cmp sb, #0
	beq _0213AEE4
	ldrh r2, [sl, #0x12]
	mov r0, sb, lsl #0x10
	mov r1, r0, lsr #0x10
	cmp r2, r0, lsr #16
	beq _0213AEE4
	strh r1, [sl, #0x12]
	ldrh r0, [sl, #0x12]
	mov r1, r8
	mov r2, r7
	mov r3, #0
	bl ov11_0213A9BC
	str r0, [sl, #8]
	str r1, [sl, #0xc]
	ldr r0, [sl, #8]
	cmp r1, fp
	cmpeq r0, r4
	beq _0213AEDC
_0213AF34:
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0213AF40: .word OS_GetTick
_0213AF44: .word 0x5D588B65
_0213AF48: .word 0x00269EC3
_0213AF4C: .word 0x000009BF

	arm_func_start DWC_Auth_CheckWiFiIDNeedCreate
DWC_Auth_CheckWiFiIDNeedCreate: ; 0x0213AF50
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	add r0, sp, #0
	bl ov11_02139940
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	cmp r0, #0
	cmpeq r1, #0
	mov r0, #0
	bne _0213AF94
	ldr r1, [sp, #4]
	ldr r2, [sp]
	cmp r1, r0
	cmpeq r2, r0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {pc}
	arm_func_end DWC_Auth_CheckWiFiIDNeedCreate
_0213AF94:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {pc}

    .rodata

    .global DAT_overlay_11_021629b4
DAT_overlay_11_021629b4: ; 0x021629B4
	.byte 0x00, 0x00, 0x00, 0x00

    .global PTR_LAB_overlay_11_0212ccf0_overlay_11_021629b8
PTR_LAB_overlay_11_0212ccf0_overlay_11_021629b8: ; 0x021629B8
	.word ov11_0212CCF0

    .global DAT_overlay_11_021629bc
DAT_overlay_11_021629bc: ; 0x021629BC
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov11_0212CCF0
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_0212c1ec_overlay_11_021629cc
ptr_FUN_overlay_11_0212c1ec_overlay_11_021629cc: ; 0x021629CC
	.word ov11_0212C1EC
	.word ov11_0212CCF0
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_021288bc_overlay_11_021629d8
ptr_FUN_overlay_11_021288bc_overlay_11_021629d8: ; 0x021629D8
	.word ov11_021288BC
	.word ov11_021287EC
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_02128810_overlay_11_021629e4
ptr_FUN_overlay_11_02128810_overlay_11_021629e4: ; 0x021629E4
	.word ov11_02128810
	.word ov11_021287EC
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov11_021287F4
	.word ov11_0212CCF0
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_02128cc8_overlay_11_021629fc
ptr_FUN_overlay_11_02128cc8_overlay_11_021629fc: ; 0x021629FC
	.word ov11_02128CC8

    .global ptr_FUN_overlay_3_02128e30_overlay_11_02162a00
ptr_FUN_overlay_3_02128e30_overlay_11_02162a00: ; 0x02162A00
	.word ov11_02128E30
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_02128d64_overlay_11_02162a08
ptr_FUN_overlay_11_02128d64_overlay_11_02162a08: ; 0x02162A08
	.word ov11_02128D64

    .global ptr_FUN_overlay_3_02128e30_overlay_11_02162a0c
ptr_FUN_overlay_3_02128e30_overlay_11_02162a0c: ; 0x02162A0C
	.word ov11_02128E30
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_0212c09c_overlay_11_02162a2c
ptr_FUN_overlay_11_0212c09c_overlay_11_02162a2c: ; 0x02162A2C
	.word ov11_0212C09C
	.word ov11_0212CCF8
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_0212c0d4_overlay_11_02162a38
ptr_FUN_overlay_11_0212c0d4_overlay_11_02162a38: ; 0x02162A38
	.word ov11_0212C0D4
	.word ov11_0212CCF8
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_0212c10c_overlay_11_02162a44
ptr_FUN_overlay_11_0212c10c_overlay_11_02162a44: ; 0x02162A44
	.word ov11_0212C10C
	.word ov11_0212CCF8
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_0212cd08_overlay_11_02162a50
ptr_FUN_overlay_11_0212cd08_overlay_11_02162a50: ; 0x02162A50
	.word ov11_0212CD08
	.word ov11_0212CCF0
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_0212cd80_overlay_11_02162a5c
ptr_FUN_overlay_11_0212cd80_overlay_11_02162a5c: ; 0x02162A5C
	.word ov11_0212CD80
	.word ov11_0212CCF0
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_0212cdc4_overlay_11_02162a68
ptr_FUN_overlay_11_0212cdc4_overlay_11_02162a68: ; 0x02162A68
	.word ov11_0212CDC4
	.word ov11_0212CCF0
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_02129970_overlay_11_02162a74
ptr_FUN_overlay_11_02129970_overlay_11_02162a74: ; 0x02162A74
	.word ov11_02129970
	.word ov11_0212CCF8
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov11_02129A3C
	.word ov11_0212CCF8
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov11_02129A1C
	.word ov11_0212CD00
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov11_02129AEC
	.word ov11_02129B14
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_11_02129b1c_overlay_11_02162aa4
ptr_FUN_overlay_11_02129b1c_overlay_11_02162aa4: ; 0x02162AA4
	.word ov11_02129B1C
	.word ov11_02129B58
	.byte 0x00, 0x00, 0x00, 0x00

    .global PTR_LAB_overlay_11_02128634_overlay_11_02162ab0
PTR_LAB_overlay_11_02128634_overlay_11_02162ab0: ; 0x02162AB0
	.word ov11_02128634
	.word ov11_02128654
	.word ov11_0212865C
	.word ov11_02128670
	.word ov11_0212CCF0
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02162ac8
DAT_overlay_11_02162ac8: ; 0x02162AC8
	.byte 0x01

    .global DAT_overlay_11_02162ac9
DAT_overlay_11_02162ac9: ; 0x02162AC9
	.byte 0x01

    .global DAT_overlay_11_02162aca
DAT_overlay_11_02162aca: ; 0x02162ACA
	.byte 0x01

    .global DAT_overlay_11_02162acb
DAT_overlay_11_02162acb: ; 0x02162ACB
	.byte 0x01, 0x03, 0x03, 0x03, 0x04
	.byte 0x03, 0x04, 0x07, 0x03, 0x07, 0x04, 0x01, 0x01, 0x01, 0x01, 0x04, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x03, 0x03, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00

    .global DAT_overlay_11_02162afc
DAT_overlay_11_02162afc: ; 0x02162AFC
	.byte 0xF9

    .global DAT_overlay_11_02162afd
DAT_overlay_11_02162afd: ; 0x02162AFD
	.byte 0x7D

    .global DAT_overlay_11_02162afe
DAT_overlay_11_02162afe: ; 0x02162AFE
	.byte 0x80

    .global DAT_overlay_11_02162aff
DAT_overlay_11_02162aff: ; 0x02162AFF
	.byte 0xC3
	.byte 0x79, 0x4B, 0x2E, 0xA0, 0x95, 0x18, 0x73, 0x85, 0x99, 0x6A, 0x1C, 0x32

    .global DAT_overlay_11_02162b0c
DAT_overlay_11_02162b0c: ; 0x02162B0C
	.byte 0x16, 0x01, 0x15, 0x00

    .global DAT_overlay_11_02162b10
DAT_overlay_11_02162b10: ; 0x02162B10
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02162b14
DAT_overlay_11_02162b14: ; 0x02162B14
	.byte 0x00, 0x00, 0x00, 0x00

    .global s_Wayport2_overlay_11_02162b18
s_Wayport2_overlay_11_02162b18: ; 0x02162B18
	.ascii "Wayport2"

    .global s_FREESPOT_overlay_11_02162b20
s_FREESPOT_overlay_11_02162b20: ; 0x02162B20
    .ascii "FREESPOT"

    .global s_NINTENDOWFC_overlay_11_02162b28
s_NINTENDOWFC_overlay_11_02162b28: ; 0x02162B28
    .asciz "NINTENDOWFC"

    .global DAT_overlay_11_02162b34
DAT_overlay_11_02162b34: ; 0x02162B34
	.byte 0x02, 0x80, 0x00, 0x00, 0x04, 0x80, 0x00, 0x00, 0x08, 0x80, 0x00, 0x00
	.byte 0x10, 0x80, 0x00, 0x00, 0x20, 0x80, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x80, 0x80, 0x00, 0x00
	.byte 0x00, 0x81, 0x00, 0x00, 0x00, 0x82, 0x00, 0x00, 0x00, 0x84, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00
	.byte 0x00, 0x90, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00

    .global DAT_overlay_11_02162b68
DAT_overlay_11_02162b68: ; 0x02162B68
	.byte 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word s_NINTENDO_DS_overlay_11_02166744
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x61, 0x61, 0x61

    .global DAT_overlay_11_02162bc3
DAT_overlay_11_02162bc3: ; 0x02162BC3
	.byte 0x17

    .global DAT_overlay_11_02162bc4
DAT_overlay_11_02162bc4: ; 0x02162BC4
	.byte 0x14

    .global DAT_overlay_11_02162bc5
DAT_overlay_11_02162bc5: ; 0x02162BC5
	.byte 0x11

    .global DAT_overlay_11_02162bc6
DAT_overlay_11_02162bc6: ; 0x02162BC6
	.byte 0x0D, 0x0B, 0x06, 0x0F, 0x0E, 0x09, 0x15, 0x0C, 0x04, 0x02
	.byte 0x01, 0x12, 0x10, 0x05, 0x03, 0x13, 0x0A, 0x07, 0x08, 0x00, 0x16, 0x00

    .global DAT_overlay_11_02162bdc
DAT_overlay_11_02162bdc: ; 0x02162BDC
	.byte 0x05

    .global DAT_overlay_11_02162bdd
DAT_overlay_11_02162bdd: ; 0x02162BDD
	.byte 0x01, 0x0C, 0x04
	.byte 0x02, 0x03, 0x0A, 0x00, 0x0B, 0x07, 0x09, 0x08, 0x06, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02162bec
DAT_overlay_11_02162bec: ; 0x02162BEC
	.byte 0x0A, 0x0D, 0x0E, 0x08
	.byte 0x09, 0x03, 0x06, 0x00, 0x0C, 0x05, 0x02, 0x07, 0x0B, 0x01, 0x0F, 0x04

    .global DAT_overlay_11_02162bfc
DAT_overlay_11_02162bfc: ; 0x02162BFC
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02162c00
DAT_overlay_11_02162c00: ; 0x02162C00
	.byte 0x01

    .global DAT_overlay_11_02162c01
DAT_overlay_11_02162c01: ; 0x02162C01
	.byte 0x02, 0x00, 0x04, 0x03, 0x05, 0x06, 0x07

    .global DAT_overlay_11_02162c08
DAT_overlay_11_02162c08: ; 0x02162C08
	.byte 0x05, 0x09, 0x01, 0x0E, 0x0C, 0x02, 0x0A, 0x00
	.byte 0x0B, 0x0D, 0x03, 0x04, 0x08, 0x06, 0x0F, 0x07

    .section .sinit,4 ; 0x021660AC

    .data

    .global PTR_ptr_FUN_020835bc_overlay_11_021660c0
PTR_ptr_FUN_020835bc_overlay_11_021660c0: ; 0x021660C0
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_15CRangerNetScene_overlay_11_021660cc
	.word PTR_ptr_FUN_02083578_0208a804

    .global s_15CRangerNetScene_overlay_11_021660cc
s_15CRangerNetScene_overlay_11_021660cc: ; 0x021660CC
	.asciz "15CRangerNetScene"

    .global DAT_overlay_11_021660DE
DAT_overlay_11_021660DE:
	.byte 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_11_021660c0

    .global ptr_FUN_overlay_11_0211ca0c_overlay_11_021660e8
ptr_FUN_overlay_11_0211ca0c_overlay_11_021660e8: ; 0x021660E8
	.word ov11_0211CA0C

    .global ptr_FUN_overlay_11_0211ca74_overlay_11_021660ec
ptr_FUN_overlay_11_0211ca74_overlay_11_021660ec: ; 0x021660EC
	.word ov11_0211CA74

    .global ptr_FUN_overlay_11_0211ccc8_overlay_11_021660f0
ptr_FUN_overlay_11_0211ccc8_overlay_11_021660f0: ; 0x021660F0
	.word ov11_0211CCC8

    .global ptr_FUN_overlay_11_0211cd30_overlay_11_021660f4
ptr_FUN_overlay_11_0211cd30_overlay_11_021660f4: ; 0x021660F4
	.word ov11_0211CD30

    .global ptr_FUN_overlay_11_0211cd48_overlay_11_021660f8
ptr_FUN_overlay_11_0211cd48_overlay_11_021660f8: ; 0x021660F8
	.word ov11_0211CD48

    .global ptr_FUN_02007ce0_overlay_11_021660fc
ptr_FUN_02007ce0_overlay_11_021660fc: ; 0x021660FC
	.word sub_02007CE0

    .global ptr_FUN_02007cc4_overlay_11_02166100
ptr_FUN_02007cc4_overlay_11_02166100: ; 0x02166100
	.word sub_02007CC4

    .global ptr_FUN_overlay_11_0211cb2c_overlay_11_02166104
ptr_FUN_overlay_11_0211cb2c_overlay_11_02166104: ; 0x02166104
	.word ov11_0211CB2C

    .global ptr_FUN_overlay_11_0211cc7c_overlay_11_02166108
ptr_FUN_overlay_11_0211cc7c_overlay_11_02166108: ; 0x02166108
	.word ov11_0211CC7C

    .global ptr_FUN_overlay_29_0211ccac_overlay_11_0216610c
ptr_FUN_overlay_29_0211ccac_overlay_11_0216610c: ; 0x0216610C
	.word ov11_0211CCAC
	.word ov11_0211CD60

    .global DAT_overlay_11_02166114
DAT_overlay_11_02166114: ; 0x02166114
	.byte 0x12, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02166118
DAT_overlay_11_02166118: ; 0x02166118
	.byte 0x12, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00

    .global s_menu_overlay_11_0216612c
s_menu_overlay_11_0216612c: ; 0x0216612C
	.asciz "menu/"

    .global DAT_overlay_11_02166132
DAT_overlay_11_02166132:
	.byte 0x00, 0x00

    .global s_rn000_bg_overlay_11_02166134
s_rn000_bg_overlay_11_02166134: ; 0x02166134
	.asciz "rn000_bg_"

    .global DAT_overlay_11_0216613E
DAT_overlay_11_0216613E:
	.byte 0x00, 0x00

    .global s_rn000_overlay_11_02166140
s_rn000_overlay_11_02166140: ; 0x02166140
	.asciz "rn000"

    .global DAT_overlay_11_02166146
DAT_overlay_11_02166146:
	.byte 0x00, 0x00

    .global s_rn000_02_overlay_11_02166148
s_rn000_02_overlay_11_02166148: ; 0x02166148
	.asciz "rn000_02"

    .global DAT_overlay_11_02166151
DAT_overlay_11_02166151:
	.byte 0x00, 0x00, 0x00

    .global s_rn000_01_overlay_11_02166154
s_rn000_01_overlay_11_02166154: ; 0x02166154
	.asciz "rn000_01"

    .global DAT_overlay_11_0216615D
DAT_overlay_11_0216615D:
	.byte 0x00, 0x00, 0x00

    .global s_data_menu_overlay_11_02166160
s_data_menu_overlay_11_02166160: ; 0x02166160
	.asciz "data/menu"

    .global DAT_overlay_11_0216616A
DAT_overlay_11_0216616A:
	.byte 0x00, 0x00

    .global s_rn000_00_overlay_11_0216616c
s_rn000_00_overlay_11_0216616c: ; 0x0216616C
	.asciz "rn000_00"

    .global DAT_overlay_11_02166175
DAT_overlay_11_02166175:
	.byte 0x00, 0x00, 0x00

    .global s_data_message_etc_mission_info_0_overlay_11_02166178
s_data_message_etc_mission_info_0_overlay_11_02166178: ; 0x02166178
	.asciz "data/message/etc/mission_info_%02d"

    .global DAT_overlay_11_0216619B
DAT_overlay_11_0216619B:
	.byte 0x00

    .global PTR_ptr_FUN_020835bc_overlay_11_0216619c
PTR_ptr_FUN_020835bc_overlay_11_0216619c: ; 0x0216619C
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_18CRangerNetAGBScene_overlay_11_021661a8
	.word PTR_ptr_FUN_02083578_0208a804

    .global s_18CRangerNetAGBScene_overlay_11_021661a8
s_18CRangerNetAGBScene_overlay_11_021661a8: ; 0x021661A8
	.asciz "18CRangerNetAGBScene"

    .global DAT_overlay_11_021661BD
DAT_overlay_11_021661BD:
	.byte 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_11_0216619c

    .global PTR_LAB_overlay_11_0211df18_overlay_11_021661c8
PTR_LAB_overlay_11_0211df18_overlay_11_021661c8: ; 0x021661C8
	.word ov11_0211DF18

    .global ptr_FUN_overlay_11_0211df2c_overlay_11_021661cc
ptr_FUN_overlay_11_0211df2c_overlay_11_021661cc: ; 0x021661CC
	.word ov11_0211DF2C
	.word ov11_0211DF54
	.word ov11_0211DF5C
	.word ov11_0211DF60

    .global ptr_FUN_02007ce0_overlay_11_021661dc
ptr_FUN_02007ce0_overlay_11_021661dc: ; 0x021661DC
	.word sub_02007CE0

    .global ptr_FUN_02007cc4_overlay_11_021661e0
ptr_FUN_02007cc4_overlay_11_021661e0: ; 0x021661E0
	.word sub_02007CC4
	.word ov11_0211DF48
	.word ov11_0211DF4C
	.word ov11_0211DF50
	.word ov11_0211DF64

    .global DAT_overlay_11_021661f4
DAT_overlay_11_021661f4: ; 0x021661F4
	.byte 0x4A, 0x41, 0x37, 0x42

    .global DAT_overlay_11_021661f8
DAT_overlay_11_021661f8: ; 0x021661F8
	.byte 0x4A, 0x42, 0x37, 0x42

    .global s_JC7BJD7BJE7BJJ7BJK7BJL7BJN7BJO7B_overlay_11_021661fc
s_JC7BJD7BJE7BJJ7BJK7BJL7BJN7BJO7B_overlay_11_021661fc: ; 0x021661FC
	.asciz "JC7BJD7BJE7BJJ7BJK7BJL7BJN7BJO7BJP7BJQ7BJR7BJS7BJT7BJU7BJV7BJW7BJX7BJY7B"

    .global DAT_overlay_11_02166245
DAT_overlay_11_02166245:
	.byte 0x00, 0x00, 0x00

    .global DAT_overlay_11_02166248
DAT_overlay_11_02166248: ; 0x02166248
	.byte 0x06, 0x00, 0x00, 0x00

    .global DAT_overlay_11_0216624c
DAT_overlay_11_0216624c: ; 0x0216624C
	.byte 0x07, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02166250
DAT_overlay_11_02166250: ; 0x02166250
	.byte 0x08, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00

    .global DAT_overlay_11_0216625c
DAT_overlay_11_0216625c: ; 0x0216625C
	.byte 0x01, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02166260
DAT_overlay_11_02166260: ; 0x02166260
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02166268
DAT_overlay_11_02166268: ; 0x02166268
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02166274
DAT_overlay_11_02166274: ; 0x02166274
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02166278
DAT_overlay_11_02166278: ; 0x02166278
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02166284
DAT_overlay_11_02166284: ; 0x02166284
	.byte 0x01, 0x00

    .global DAT_overlay_11_02166286
DAT_overlay_11_02166286: ; 0x02166286
	.byte 0x51, 0x00

    .global DAT_overlay_11_02166288
DAT_overlay_11_02166288: ; 0x02166288
	.byte 0x52, 0x00, 0xA1, 0x00, 0xA2, 0x00, 0xDF, 0x00
	.byte 0xE1, 0x00, 0x11, 0x01, 0x21, 0x01, 0x5E, 0x01, 0x5F, 0x01, 0x9E, 0x01, 0xA9, 0x01, 0xDD, 0x01

    .global DAT_overlay_11_021662a0
DAT_overlay_11_021662a0: ; 0x021662A0
	.byte 0x09, 0x00

    .global DAT_overlay_11_021662a2
DAT_overlay_11_021662a2: ; 0x021662A2
	.byte 0x90, 0x00

    .global DAT_overlay_11_021662a4
DAT_overlay_11_021662a4: ; 0x021662A4
	.byte 0x18, 0x00

    .global DAT_overlay_11_021662a6
DAT_overlay_11_021662a6: ; 0x021662A6
	.byte 0x0A, 0x00

    .global DAT_overlay_11_021662a8
DAT_overlay_11_021662a8: ; 0x021662A8
	.byte 0x30, 0x00

    .global DAT_overlay_11_021662aa
DAT_overlay_11_021662aa: ; 0x021662AA
	.byte 0x18, 0x00, 0x0B, 0x00, 0x30, 0x00
	.byte 0x18, 0x00, 0x0C, 0x00, 0x30, 0x00, 0x18, 0x00, 0x0D, 0x00, 0x30, 0x00, 0x18, 0x00, 0x0E, 0x00
	.byte 0x30, 0x00, 0x18, 0x00, 0x0F, 0x00, 0x30, 0x00, 0x18, 0x00, 0x10, 0x00, 0x90, 0x00, 0x18, 0x00
	.byte 0x11, 0x00, 0x90, 0x00, 0x18, 0x00, 0x12, 0x00, 0x90, 0x00, 0x18, 0x00, 0x13, 0x00, 0x90, 0x00
	.byte 0x18, 0x00, 0x14, 0x00, 0x30, 0x00, 0x18, 0x00, 0x15, 0x00, 0x30, 0x00, 0x18, 0x00, 0x17, 0x00
	.byte 0x30, 0x00, 0x18, 0x00, 0x18, 0x00, 0x30, 0x00, 0x18, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF

    .global s_data_message_etc_place_name_overlay_11_02166300
s_data_message_etc_place_name_overlay_11_02166300: ; 0x02166300
	.asciz "/data/message/etc/place_name"

    .global DAT_overlay_11_0216631D
DAT_overlay_11_0216631D:
	.byte 0x00, 0x00, 0x00

    .global s_data_menu_overlay_11_02166320
s_data_menu_overlay_11_02166320: ; 0x02166320
	.asciz "data/menu"

    .global DAT_overlay_11_0216632A
DAT_overlay_11_0216632A:
	.byte 0x00, 0x00

    .global s_ma005_64_overlay_11_0216632c
s_ma005_64_overlay_11_0216632c: ; 0x0216632C
	.asciz "ma005_64"

    .global DAT_overlay_11_02166335
DAT_overlay_11_02166335:
	.byte 0x00, 0x00, 0x00

    .global s_rn001_02d_overlay_11_02166338
s_rn001_02d_overlay_11_02166338: ; 0x02166338
	.asciz "rn001_%02d"

    .global DAT_overlay_11_02166343
DAT_overlay_11_02166343:
	.byte 0x00

    .global s_rn001_00_overlay_11_02166344
s_rn001_00_overlay_11_02166344: ; 0x02166344
	.asciz "rn001_00"

    .global DAT_overlay_11_0216634D
DAT_overlay_11_0216634D:
	.byte 0x00, 0x00, 0x00

    .global s_rn001_01_overlay_11_02166350
s_rn001_01_overlay_11_02166350: ; 0x02166350
	.asciz "rn001_01"

    .global DAT_overlay_11_02166359
DAT_overlay_11_02166359:
	.byte 0x00, 0x00, 0x00

    .global s_rn001_02_overlay_11_0216635c
s_rn001_02_overlay_11_0216635c: ; 0x0216635C
	.asciz "rn001_02"

    .global DAT_overlay_11_02166365
DAT_overlay_11_02166365:
	.byte 0x00, 0x00, 0x00

    .global s_rn001_03_overlay_11_02166368
s_rn001_03_overlay_11_02166368: ; 0x02166368
	.asciz "rn001_03"

    .global DAT_overlay_11_02166371
DAT_overlay_11_02166371:
	.byte 0x00, 0x00, 0x00

    .global s_rn001_04_overlay_11_02166374
s_rn001_04_overlay_11_02166374: ; 0x02166374
	.asciz "rn001_04"

    .global DAT_overlay_11_0216637D
DAT_overlay_11_0216637D:
	.byte 0x00, 0x00, 0x00

    .global s_menu_overlay_11_02166380
s_menu_overlay_11_02166380: ; 0x02166380
	.asciz "menu/"

    .global DAT_overlay_11_02166386
DAT_overlay_11_02166386:
	.byte 0x00, 0x00

    .global s_rn001_bg_overlay_11_02166388
s_rn001_bg_overlay_11_02166388: ; 0x02166388
	.asciz "rn001_bg_"

    .global DAT_overlay_11_02166392
DAT_overlay_11_02166392:
	.byte 0x00, 0x00

    .global s_rn001_overlay_11_02166394
s_rn001_overlay_11_02166394: ; 0x02166394
	.asciz "rn001"

    .global DAT_overlay_11_0216639A
DAT_overlay_11_0216639A:
	.byte 0x00, 0x00

    .global s_data_message_etc_network_mes_overlay_11_0216639c
s_data_message_etc_network_mes_overlay_11_0216639c: ; 0x0216639C
	.asciz "data/message/etc/network_mes"

    .global DAT_overlay_11_021663B9
DAT_overlay_11_021663B9:
	.byte 0x00, 0x00, 0x00

    .global s_data_message_etc_network_02d_mes_overlay_11_021663bc
s_data_message_etc_network_02d_mes_overlay_11_021663bc: ; 0x021663BC
	.asciz "data/message/etc/network%02d_mes"

    .global DAT_overlay_11_021663DD
DAT_overlay_11_021663DD:
	.byte 0x00, 0x00, 0x00

    .global s_PRS_MISSION_02d_prs_overlay_11_021663e0
s_PRS_MISSION_02d_prs_overlay_11_021663e0: ; 0x021663E0
	.asciz "PRS_MISSION_%02d.prs"

    .global DAT_overlay_11_021663F5
DAT_overlay_11_021663F5:
	.byte 0x00, 0x00, 0x00

    .global s_RNS_overlay_11_021663f8
s_RNS_overlay_11_021663f8: ; 0x021663F8
	.asciz "RNS"

    .global s_PRS_MISSION_0d_dat_overlay_11_021663fc
s_PRS_MISSION_0d_dat_overlay_11_021663fc: ; 0x021663FC
	.asciz "PRS_MISSION_%0d.dat"

    .global s_RNS_s_overlay_11_02166410
s_RNS_s_overlay_11_02166410: ; 0x02166410
	.asciz "RNS:%s"

    .global DAT_overlay_11_02166417
DAT_overlay_11_02166417:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02166420
DAT_overlay_11_02166420: ; 0x02166420
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x31, 0x01, 0x40, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

    .global s_DP_overlay_11_02166460
s_DP_overlay_11_02166460: ; 0x02166460
	.asciz "DP"

    .global DAT_overlay_11_02166463
DAT_overlay_11_02166463:
	.byte 0x00

    .global DAT_overlay_11_02166464
DAT_overlay_11_02166464: ; 0x02166464
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

    .global s_FREAK_overlay_11_02166484
s_FREAK_overlay_11_02166484: ; 0x02166484
	.asciz "FREAK"

    .global DAT_overlay_11_0216648A
DAT_overlay_11_0216648A:
	.byte 0x00, 0x00

    .global s_GAME_overlay_11_0216648c
s_GAME_overlay_11_0216648c: ; 0x0216648C
	.asciz " GAME"

    .global DAT_overlay_11_02166492
DAT_overlay_11_02166492:
	.byte 0x00, 0x00

    .global s_FULL_overlay_11_02166494
s_FULL_overlay_11_02166494: ; 0x02166494
	.asciz " FULL"

    .global DAT_overlay_11_0216649A
DAT_overlay_11_0216649A:
	.byte 0x00, 0x00

    .global DAT_overlay_11_0216649c
DAT_overlay_11_0216649c: ; 0x0216649C
	.byte 0x04

    .global DAT_overlay_11_0216649d
DAT_overlay_11_0216649d: ; 0x0216649D
	.byte 0x04, 0x00, 0x00

    .global ptr_null_overlay_11_021664a0
ptr_null_overlay_11_021664a0: ; 0x021664A0
	.word s_data_sendbin_sendbin1_bin_overlay_11_021664a8
	.word s_data_sendbin_sendbin2_bin_overlay_11_021664c4

    .global s_data_sendbin_sendbin1_bin_overlay_11_021664a8
s_data_sendbin_sendbin1_bin_overlay_11_021664a8: ; 0x021664A8
	.asciz "data/sendbin/sendbin1.bin"

    .global DAT_overlay_11_021664C2
DAT_overlay_11_021664C2:
	.byte 0x00, 0x00

    .global s_data_sendbin_sendbin2_bin_overlay_11_021664c4
s_data_sendbin_sendbin2_bin_overlay_11_021664c4: ; 0x021664C4
	.asciz "data/sendbin/sendbin2.bin"

    .global DAT_overlay_11_021664DE
DAT_overlay_11_021664DE:
	.byte 0x00, 0x00

    .global DAT_overlay_11_021664e0
DAT_overlay_11_021664e0: ; 0x021664E0
	.byte 0x82, 0xA0

    .global DAT_overlay_11_021664e2
DAT_overlay_11_021664e2: ; 0x021664E2
	.byte 0x82, 0xA2

    .global DAT_overlay_11_021664e4
DAT_overlay_11_021664e4: ; 0x021664E4
	.byte 0x82, 0xA4, 0x82, 0xA6, 0x82, 0xA8, 0x00, 0x00

    .global DAT_overlay_11_021664ec
DAT_overlay_11_021664ec: ; 0x021664EC
	.byte 0x82, 0xA9, 0x82, 0xAB
	.byte 0x82, 0xAD, 0x82, 0xAF, 0x82, 0xB1, 0x00, 0x00

    .global s_mywh_SYSSTATE_IDLE_overlay_11_021664f8
s_mywh_SYSSTATE_IDLE_overlay_11_021664f8: ; 0x021664F8
	.asciz "mywh_SYSSTATE_IDLE"

    .global DAT_overlay_11_0216650B
DAT_overlay_11_0216650B:
	.byte 0x00

    .global s_mywh_SYSSTATE_STOP_overlay_11_0216650c
s_mywh_SYSSTATE_STOP_overlay_11_0216650c: ; 0x0216650C
	.asciz "mywh_SYSSTATE_STOP"

    .global DAT_overlay_11_0216651F
DAT_overlay_11_0216651F:
	.byte 0x00

    .global s_mywh_SYSSTATE_BUSY_overlay_11_02166520
s_mywh_SYSSTATE_BUSY_overlay_11_02166520: ; 0x02166520
	.asciz "mywh_SYSSTATE_BUSY"

    .global DAT_overlay_11_02166533
DAT_overlay_11_02166533:
	.byte 0x00

    .global s_mywh_SYSSTATE_ERROR_overlay_11_02166534
s_mywh_SYSSTATE_ERROR_overlay_11_02166534: ; 0x02166534
	.asciz "mywh_SYSSTATE_ERROR"

    .global s_mywh_SYSSTATE_SCANNING_overlay_11_02166548
s_mywh_SYSSTATE_SCANNING_overlay_11_02166548: ; 0x02166548
	.asciz "mywh_SYSSTATE_SCANNING"

    .global DAT_overlay_11_0216655F
DAT_overlay_11_0216655F:
	.byte 0x00

    .global s_mywh_SYSSTATE_CONNECTED_overlay_11_02166560
s_mywh_SYSSTATE_CONNECTED_overlay_11_02166560: ; 0x02166560
	.asciz "mywh_SYSSTATE_CONNECTED"

    .global s_mywh_SYSSTATE_KEYSHARING_overlay_11_02166578
s_mywh_SYSSTATE_KEYSHARING_overlay_11_02166578: ; 0x02166578
	.asciz "mywh_SYSSTATE_KEYSHARING"

    .global DAT_overlay_11_02166591
DAT_overlay_11_02166591:
	.byte 0x00, 0x00, 0x00

    .global s_mywh_SYSSTATE_DATASHARING_overlay_11_02166594
s_mywh_SYSSTATE_DATASHARING_overlay_11_02166594: ; 0x02166594
	.asciz "mywh_SYSSTATE_DATASHARING"

    .global DAT_overlay_11_021665AE
DAT_overlay_11_021665AE:
	.byte 0x00, 0x00

    .global s_mywh_SYSSTATE_CONNECT_FAIL_overlay_11_021665b0
s_mywh_SYSSTATE_CONNECT_FAIL_overlay_11_021665b0: ; 0x021665B0
	.asciz "mywh_SYSSTATE_CONNECT_FAIL"

    .global DAT_overlay_11_021665CB
DAT_overlay_11_021665CB:
	.byte 0x00

    .global s_mywh_SYSSTATE_MEASURECHANNEL_overlay_11_021665cc
s_mywh_SYSSTATE_MEASURECHANNEL_overlay_11_021665cc: ; 0x021665CC
	.asciz "mywh_SYSSTATE_MEASURECHANNEL"

    .global DAT_overlay_11_021665E9
DAT_overlay_11_021665E9:
	.byte 0x00, 0x00, 0x00

    .global ptr_s_mywh_SYSSTATE_STOP_overlay_11_0216650c_overlay_11_021665ec
ptr_s_mywh_SYSSTATE_STOP_overlay_11_0216650c_overlay_11_021665ec: ; 0x021665EC
	.word s_mywh_SYSSTATE_STOP_overlay_11_0216650c
	.word s_mywh_SYSSTATE_IDLE_overlay_11_021664f8
	.word s_mywh_SYSSTATE_SCANNING_overlay_11_02166548
	.word s_mywh_SYSSTATE_BUSY_overlay_11_02166520
	.word s_mywh_SYSSTATE_CONNECTED_overlay_11_02166560
	.word s_mywh_SYSSTATE_DATASHARING_overlay_11_02166594
	.word s_mywh_SYSSTATE_KEYSHARING_overlay_11_02166578
	.word s_mywh_SYSSTATE_MEASURECHANNEL_overlay_11_021665cc
	.word s_mywh_SYSSTATE_CONNECT_FAIL_overlay_11_021665b0
	.word s_mywh_SYSSTATE_ERROR_overlay_11_02166534

    .global s_s_overlay_11_02166614
s_s_overlay_11_02166614: ; 0x02166614
	.asciz "%s -> "

    .global DAT_overlay_11_0216661B
DAT_overlay_11_0216661B:
	.byte 0x00

    .global s_s_overlay_11_0216661c
s_s_overlay_11_0216661c: ; 0x0216661C
	.asciz "%s\n"

    .global s_not_my_parent_ggid_d_d_overlay_11_02166620
s_not_my_parent_ggid_d_d_overlay_11_02166620: ; 0x02166620
	.asciz "not my parent ggid (%d != %d)\n"

    .global DAT_overlay_11_0216663F
DAT_overlay_11_0216663F:
	.byte 0x00

    .global DAT_overlay_11_02166640
DAT_overlay_11_02166640: ; 0x02166640
	.byte 0x03, 0x00, 0x00, 0x00

    .global s_YP2E_overlay_11_02166644
s_YP2E_overlay_11_02166644: ; 0x02166644
	.asciz "YP2E"

    .global DAT_overlay_11_02166649
DAT_overlay_11_02166649:
	.byte 0x00, 0x00, 0x00

    .global s_griUBMRWtExs4ZNS_overlay_11_0216664c
s_griUBMRWtExs4ZNS_overlay_11_0216664c: ; 0x0216664C
	.asciz "griUBMRWtExs4ZNS"

    .global DAT_overlay_11_0216665D
DAT_overlay_11_0216665D:
	.byte 0x00, 0x00, 0x00

    .global s_PRS_MISSION_02d_prs_overlay_11_02166660
s_PRS_MISSION_02d_prs_overlay_11_02166660: ; 0x02166660
	.asciz "PRS_MISSION_%02d.prs"

    .global DAT_overlay_11_02166675
DAT_overlay_11_02166675:
	.byte 0x00, 0x00, 0x00

    .global DAT_overlay_11_02166678
DAT_overlay_11_02166678: ; 0x02166678
	.byte 0x00, 0x00, 0x00, 0x00

    .global PTR_ptr_FUN_020835bc_overlay_11_0216667c
PTR_ptr_FUN_020835bc_overlay_11_0216667c: ; 0x0216667C
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_17CCompanyLogoScene_overlay_11_02166688
	.word PTR_ptr_FUN_02083578_0208a804

    .global s_17CCompanyLogoScene_overlay_11_02166688
s_17CCompanyLogoScene_overlay_11_02166688: ; 0x02166688
	.asciz "17CCompanyLogoScene"

    .global DAT_overlay_11_0216669C
DAT_overlay_11_0216669C:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_11_0216667c

    .global ptr_FUN_overlay_11_02131a3c_overlay_11_021666a4
ptr_FUN_overlay_11_02131a3c_overlay_11_021666a4: ; 0x021666A4
	.word ov11_02131A3C

    .global ptr_FUN_overlay_11_02131af0_overlay_11_021666a8
ptr_FUN_overlay_11_02131af0_overlay_11_021666a8: ; 0x021666A8
	.word ov11_02131AF0

    .global ptr_FUN_overlay_11_02131bac_overlay_11_021666ac
ptr_FUN_overlay_11_02131bac_overlay_11_021666ac: ; 0x021666AC
	.word ov11_02131BAC
	.word ov11_0213201C
	.word ov11_02132020

    .global ptr_FUN_02007ce0_overlay_11_021666b8
ptr_FUN_02007ce0_overlay_11_021666b8: ; 0x021666B8
	.word sub_02007CE0

    .global ptr_FUN_02007cc4_overlay_11_021666bc
ptr_FUN_02007cc4_overlay_11_021666bc: ; 0x021666BC
	.word sub_02007CC4

    .global ptr_FUN_overlay_11_02132024_overlay_11_021666c0
ptr_FUN_overlay_11_02132024_overlay_11_021666c0: ; 0x021666C0
	.word ov11_02132024

    .global ptr_FUN_overlay_11_02132184_overlay_11_021666c4
ptr_FUN_overlay_11_02132184_overlay_11_021666c4: ; 0x021666C4
	.word ov11_02132184

    .global ptr_FUN_overlay_11_0213247c_overlay_11_021666c8
ptr_FUN_overlay_11_0213247c_overlay_11_021666c8: ; 0x021666C8
	.word ov11_0213247C
	.word ov11_0213255C

    .global s_title_overlay_11_021666d0
s_title_overlay_11_021666d0: ; 0x021666D0
	.asciz "title/"

    .global DAT_overlay_11_021666D7
DAT_overlay_11_021666D7:
	.byte 0x00

    .global s_copyright000_overlay_11_021666d8
s_copyright000_overlay_11_021666d8: ; 0x021666D8
	.asciz "copyright000_"

    .global DAT_overlay_11_021666E6
DAT_overlay_11_021666E6:
	.byte 0x00, 0x00

    .global s_copyright000_overlay_11_021666e8
s_copyright000_overlay_11_021666e8: ; 0x021666E8
	.asciz "copyright000"

    .global DAT_overlay_11_021666F5
DAT_overlay_11_021666F5:
	.byte 0x00, 0x00, 0x00

    .global s_copyright001_overlay_11_021666f8
s_copyright001_overlay_11_021666f8: ; 0x021666F8
	.asciz "copyright001_"

    .global DAT_overlay_11_02166706
DAT_overlay_11_02166706:
	.byte 0x00, 0x00

    .global s_copyright001_overlay_11_02166708
s_copyright001_overlay_11_02166708: ; 0x02166708
	.asciz "copyright001"

    .global DAT_overlay_11_02166715
DAT_overlay_11_02166715:
	.byte 0x00, 0x00, 0x00

    .global s_copyright002_overlay_11_02166718
s_copyright002_overlay_11_02166718: ; 0x02166718
	.asciz "copyright002_"

    .global DAT_overlay_11_02166726
DAT_overlay_11_02166726:
	.byte 0x00, 0x00

    .global s_copyright002_overlay_11_02166728
s_copyright002_overlay_11_02166728: ; 0x02166728
	.asciz "copyright002"

    .global DAT_overlay_11_02166735
DAT_overlay_11_02166735:
	.byte 0x00, 0x00, 0x00

    .global s_NWCUSBAP_overlay_11_02166738
s_NWCUSBAP_overlay_11_02166738: ; 0x02166738
	.asciz "NWCUSBAP"

    .global DAT_overlay_11_02166741
DAT_overlay_11_02166741:
	.byte 0x00, 0x00, 0x00

    .global s_NINTENDO_DS_overlay_11_02166744
s_NINTENDO_DS_overlay_11_02166744: ; 0x02166744
	.asciz "NINTENDO-DS"

    .global PTR_DAT_overlay_11_0216679c_overlay_11_02166750
PTR_DAT_overlay_11_0216679c_overlay_11_02166750: ; 0x02166750
	.word DAT_overlay_11_0216679c

    .global PTR_DAT_overlay_11_02166760_overlay_11_02166754
PTR_DAT_overlay_11_02166760_overlay_11_02166754: ; 0x02166754
	.word DAT_overlay_11_02166760

    .global ptr_FUN_overlay_0_02166780_overlay_11_02166758
ptr_FUN_overlay_0_02166780_overlay_11_02166758: ; 0x02166758
	.word DAT_overlay_11_02166780

    .global PTR_DAT_overlay_11_02166770_overlay_11_0216675c
PTR_DAT_overlay_11_02166770_overlay_11_0216675c: ; 0x0216675C
	.word DAT_overlay_11_02166770

    .global DAT_overlay_11_02166760
DAT_overlay_11_02166760: ; 0x02166760
	.byte 0x67

    .global s_wi_6_fs_0Nf_overlay_11_02166761
s_wi_6_fs_0Nf_overlay_11_02166761: ; 0x02166761
	.asciz "wi'6&fs=0Nf~"

    .global DAT_overlay_11_0216676E
DAT_overlay_11_0216676E:
	.byte 0x00, 0x00

    .global DAT_overlay_11_02166770
DAT_overlay_11_02166770: ; 0x02166770
	.byte 0x25

    .global s_egEr_ag_s_m_overlay_11_02166771
s_egEr_ag_s_m_overlay_11_02166771: ; 0x02166771
	.asciz "(egEr)ag(s&m"

    .global DAT_overlay_11_0216677E
DAT_overlay_11_0216677E:
	.byte 0x00, 0x00

    .global DAT_overlay_11_02166780
DAT_overlay_11_02166780: ; 0x02166780
	.byte 0x39

    .global s_52uybjnpmu903bia_bk5m_overlay_11_02166781
s_52uybjnpmu903bia_bk5m_overlay_11_02166781: ; 0x02166781
	.asciz "52uybjnpmu903bia@bk5m[-"

    .global DAT_overlay_11_02166799
DAT_overlay_11_02166799:
	.byte 0x00, 0x00, 0x00

    .global DAT_overlay_11_0216679c
DAT_overlay_11_0216679c: ; 0x0216679C
	.byte 0x33

    .global s_8g6zxjk20gvmv_6_j_vY1_overlay_11_0216679d
s_8g6zxjk20gvmv_6_j_vY1_overlay_11_0216679d: ; 0x0216679D
	.asciz "8g6zxjk20gvmv]6^=j&%vY1"

    .global DAT_overlay_11_021667B5
DAT_overlay_11_021667B5:
	.byte 0x00, 0x00, 0x00

    .global s_NDWCSHAP_overlay_11_021667b8
s_NDWCSHAP_overlay_11_021667b8: ; 0x021667B8
	.asciz "NDWCSHAP"

    .global DAT_overlay_11_021667C1
DAT_overlay_11_021667C1:
	.byte 0x00, 0x00, 0x00

    .global s_NWCUSBAP_overlay_11_021667c4
s_NWCUSBAP_overlay_11_021667c4: ; 0x021667C4
	.asciz "NWCUSBAP"

    .global DAT_overlay_11_021667CD
DAT_overlay_11_021667CD:
	.byte 0x00, 0x00, 0x00

    .global ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0
ptr_s_https_nas_test_nintendowifi_ne_overlay_11_021667ec_overlay_11_021667d0: ; 0x021667D0
	.word s_https_nas_test_nintendowifi_ne_overlay_11_021667ec
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00

    .global DAT_overlay_11_021667dc
DAT_overlay_11_021667dc: ; 0x021667DC
	.byte 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_11_021667e0
DAT_overlay_11_021667e0: ; 0x021667E0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x4E, 0x00, 0x00

    .global s_https_nas_test_nintendowifi_ne_overlay_11_021667ec
s_https_nas_test_nintendowifi_ne_overlay_11_021667ec: ; 0x021667EC
	.asciz "https://nas.test.nintendowifi.net/ac"

    .global DAT_overlay_11_02166811
DAT_overlay_11_02166811:
	.byte 0x00, 0x00, 0x00

    .global s_ALLOC_DWCauth_overlay_11_02166814
s_ALLOC_DWCauth_overlay_11_02166814: ; 0x02166814
	.asciz "ALLOC DWCauth"

    .global DAT_overlay_11_02166822
DAT_overlay_11_02166822:
	.byte 0x00, 0x00

    .global s_FREE_DWCauth_overlay_11_02166824
s_FREE_DWCauth_overlay_11_02166824: ; 0x02166824
	.asciz "FREE DWCauth"

    .global DAT_overlay_11_02166831
DAT_overlay_11_02166831:
	.byte 0x00, 0x00, 0x00

    .global s_https_nas_nintendowifi_net_ac_overlay_11_02166834
s_https_nas_nintendowifi_net_ac_overlay_11_02166834: ; 0x02166834
	.asciz "https://nas.nintendowifi.net/ac"

    .global s_ALLOC_bmwork_overlay_11_02166854
s_ALLOC_bmwork_overlay_11_02166854: ; 0x02166854
	.asciz "ALLOC bmwork"

    .global DAT_overlay_11_02166861
DAT_overlay_11_02166861:
	.byte 0x00, 0x00, 0x00

    .global s_FREE_bmwork_overlay_11_02166864
s_FREE_bmwork_overlay_11_02166864: ; 0x02166864
	.asciz "FREE bmwork"

    .global s_Date_overlay_11_02166870
s_Date_overlay_11_02166870: ; 0x02166870
	.asciz "Date"

    .global DAT_overlay_11_02166875
DAT_overlay_11_02166875:
	.byte 0x00, 0x00, 0x00

    .global s_httpresult_overlay_11_02166878
s_httpresult_overlay_11_02166878: ; 0x02166878
	.asciz "httpresult"

    .global DAT_overlay_11_02166883
DAT_overlay_11_02166883:
	.byte 0x00

    .global s_returncd_overlay_11_02166884
s_returncd_overlay_11_02166884: ; 0x02166884
	.asciz "returncd"

    .global DAT_overlay_11_0216688D
DAT_overlay_11_0216688D:
	.byte 0x00, 0x00, 0x00

    .global s_token_overlay_11_02166890
s_token_overlay_11_02166890: ; 0x02166890
	.asciz "token"

    .global DAT_overlay_11_02166896
DAT_overlay_11_02166896:
	.byte 0x00, 0x00

    .global s_locator_overlay_11_02166898
s_locator_overlay_11_02166898: ; 0x02166898
	.asciz "locator"

    .global s_challenge_overlay_11_021668a0
s_challenge_overlay_11_021668a0: ; 0x021668A0
	.asciz "challenge"

    .global DAT_overlay_11_021668AA
DAT_overlay_11_021668AA:
	.byte 0x00, 0x00

    .global s_datetime_overlay_11_021668ac
s_datetime_overlay_11_021668ac: ; 0x021668AC
	.asciz "datetime"

    .global DAT_overlay_11_021668B5
DAT_overlay_11_021668B5:
	.byte 0x00, 0x00, 0x00

    .global s_Set_Cookie_overlay_11_021668b8
s_Set_Cookie_overlay_11_021668b8: ; 0x021668B8
	.asciz "Set-Cookie"

    .global DAT_overlay_11_021668C3
DAT_overlay_11_021668C3:
	.byte 0x00

    .global s_acctcreate_overlay_11_021668c4
s_acctcreate_overlay_11_021668c4: ; 0x021668C4
	.asciz "acctcreate"

    .global DAT_overlay_11_021668CF
DAT_overlay_11_021668CF:
	.byte 0x00

    .global s_action_overlay_11_021668d0
s_action_overlay_11_021668d0: ; 0x021668D0
	.asciz "action"

    .global DAT_overlay_11_021668D7
DAT_overlay_11_021668D7:
	.byte 0x00

    .global s_login_overlay_11_021668d8
s_login_overlay_11_021668d8: ; 0x021668D8
	.asciz "login"

    .global DAT_overlay_11_021668DE
DAT_overlay_11_021668DE:
	.byte 0x00, 0x00

    .global s_gsbrcd_overlay_11_021668e0
s_gsbrcd_overlay_11_021668e0: ; 0x021668E0
	.asciz "gsbrcd"

    .global DAT_overlay_11_021668E7
DAT_overlay_11_021668E7:
	.byte 0x00

    .global s_Y_overlay_11_021668e8
s_Y_overlay_11_021668e8: ; 0x021668E8
	.asciz "Y"

    .global DAT_overlay_11_021668EA
DAT_overlay_11_021668EA:
	.byte 0x00, 0x00

    .global s_iswfc_overlay_11_021668ec
s_iswfc_overlay_11_021668ec: ; 0x021668EC
	.asciz "iswfc"

    .global DAT_overlay_11_021668F2
DAT_overlay_11_021668F2:
	.byte 0x00, 0x00

    .global s_ingamesn_overlay_11_021668f4
s_ingamesn_overlay_11_021668f4: ; 0x021668F4
	.asciz "ingamesn"

    .global DAT_overlay_11_021668FD
DAT_overlay_11_021668FD:
	.byte 0x00, 0x00, 0x00

    .global s_013llu_overlay_11_02166900
s_013llu_overlay_11_02166900: ; 0x02166900
	.asciz "%013llu"

    .global s_03u_overlay_11_02166908
s_03u_overlay_11_02166908: ; 0x02166908
	.asciz "%03u"

    .global DAT_overlay_11_0216690D
DAT_overlay_11_0216690D:
	.byte 0x00, 0x00, 0x00

    .global s_02x_overlay_11_02166910
s_02x_overlay_11_02166910: ; 0x02166910
	.asciz "%02x"

    .global DAT_overlay_11_02166915
DAT_overlay_11_02166915:
	.byte 0x00, 0x00, 0x00

    .global s_02x_02x_overlay_11_02166918
s_02x_02x_overlay_11_02166918: ; 0x02166918
	.asciz "%02x%02x"

    .global DAT_overlay_11_02166921
DAT_overlay_11_02166921:
	.byte 0x00, 0x00, 0x00

    .global s_02d_02d_02d_02d_02d_02d_overlay_11_02166924
s_02d_02d_02d_02d_02d_02d_overlay_11_02166924: ; 0x02166924
	.asciz "%02d%02d%02d%02d%02d%02d"

    .global DAT_overlay_11_0216693D
DAT_overlay_11_0216693D:
	.byte 0x00, 0x00, 0x00

    .global s_02d_0000000_00_overlay_11_02166940
s_02d_0000000_00_overlay_11_02166940: ; 0x02166940
	.asciz "%02d:0000000-00"

    .global s_03d_03d_overlay_11_02166950
s_03d_03d_overlay_11_02166950: ; 0x02166950
	.asciz "%03d%03d"

    .global DAT_overlay_11_02166959
DAT_overlay_11_02166959:
	.byte 0x00, 0x00, 0x00

    .global s_sdkver_overlay_11_0216695c
s_sdkver_overlay_11_0216695c: ; 0x0216695C
	.asciz "sdkver"

    .global DAT_overlay_11_02166963
DAT_overlay_11_02166963:
	.byte 0x00

    .global s_userid_overlay_11_02166964
s_userid_overlay_11_02166964: ; 0x02166964
	.asciz "userid"

    .global DAT_overlay_11_0216696B
DAT_overlay_11_0216696B:
	.byte 0x00

    .global s_passwd_overlay_11_0216696c
s_passwd_overlay_11_0216696c: ; 0x0216696C
	.asciz "passwd"

    .global DAT_overlay_11_02166973
DAT_overlay_11_02166973:
	.byte 0x00

    .global s_bssid_overlay_11_02166974
s_bssid_overlay_11_02166974: ; 0x02166974
	.asciz "bssid"

    .global DAT_overlay_11_0216697A
DAT_overlay_11_0216697A:
	.byte 0x00, 0x00

    .global s_apinfo_overlay_11_0216697c
s_apinfo_overlay_11_0216697c: ; 0x0216697C
	.asciz "apinfo"

    .global DAT_overlay_11_02166983
DAT_overlay_11_02166983:
	.byte 0x00

    .global s_gamecd_overlay_11_02166984
s_gamecd_overlay_11_02166984: ; 0x02166984
	.asciz "gamecd"

    .global DAT_overlay_11_0216698B
DAT_overlay_11_0216698B:
	.byte 0x00

    .global s_makercd_overlay_11_0216698c
s_makercd_overlay_11_0216698c: ; 0x0216698C
	.asciz "makercd"

    .global s_unitcd_overlay_11_02166994
s_unitcd_overlay_11_02166994: ; 0x02166994
	.asciz "unitcd"

    .global DAT_overlay_11_0216699B
DAT_overlay_11_0216699B:
	.byte 0x00

    .global s_macadr_overlay_11_0216699c
s_macadr_overlay_11_0216699c: ; 0x0216699C
	.asciz "macadr"

    .global DAT_overlay_11_021669A3
DAT_overlay_11_021669A3:
	.byte 0x00

    .global s_lang_overlay_11_021669a4
s_lang_overlay_11_021669a4: ; 0x021669A4
	.asciz "lang"

    .global DAT_overlay_11_021669A9
DAT_overlay_11_021669A9:
	.byte 0x00, 0x00, 0x00

    .global s_birth_overlay_11_021669ac
s_birth_overlay_11_021669ac: ; 0x021669AC
	.asciz "birth"

    .global DAT_overlay_11_021669B2
DAT_overlay_11_021669B2:
	.byte 0x00, 0x00

    .global s_devtime_overlay_11_021669b4
s_devtime_overlay_11_021669b4: ; 0x021669B4
	.asciz "devtime"

    .global s_devname_overlay_11_021669bc
s_devname_overlay_11_021669bc: ; 0x021669BC
	.asciz "devname"

    .global s_ssid_overlay_11_021669c4
s_ssid_overlay_11_021669c4: ; 0x021669C4
	.asciz "ssid"

    .global DAT_overlay_11_021669C9
DAT_overlay_11_021669C9:
	.byte 0x00, 0x00, 0x00

    .global s_Nitro_WiFi_SDK_d_d_overlay_11_021669cc
s_Nitro_WiFi_SDK_d_d_overlay_11_021669cc: ; 0x021669CC
	.asciz "Nitro WiFi SDK/%d.%d"

    .global DAT_overlay_11_021669E1
DAT_overlay_11_021669E1:
	.byte 0x00, 0x00, 0x00

    .global s_User_Agent_overlay_11_021669e4
s_User_Agent_overlay_11_021669e4: ; 0x021669E4
	.asciz "User-Agent"

    .global DAT_overlay_11_021669EF
DAT_overlay_11_021669EF:
	.byte 0x00

    .global s_HTTP_X_GAMECD_overlay_11_021669f0
s_HTTP_X_GAMECD_overlay_11_021669f0: ; 0x021669F0
	.asciz "HTTP_X_GAMECD"

    .global DAT_overlay_11_021669FE
DAT_overlay_11_021669FE:
	.byte 0x00, 0x00

    .global PTR_ptr_null_overlay_11_02167838_overlay_11_02166a00
PTR_ptr_null_overlay_11_02167838_overlay_11_02166a00: ; 0x02166A00
	.word ptr_null_overlay_11_02167838
	.word PTR_s_US_VeriSign_Inc_Class_3_Publ_overlay_11_021677a0_overlay_11_0216770c
	.word ptr_null_overlay_11_021679ec
	.word ptr_null_overlay_11_02167ac8
	.word ptr_null_overlay_11_02166fa4
	.word ptr_null_overlay_11_02167240
	.word ptr_null_overlay_11_02167328
	.word ptr_null_overlay_11_021670f0
	.word ptr_null_overlay_11_021675f4
	.word PTR_s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167568_overlay_11_021674d4

    .global ptr_FUN_overlay_0_02167ba4_overlay_11_02166a28
ptr_FUN_overlay_0_02167ba4_overlay_11_02166a28: ; 0x02166A28
	.word ptr_null_overlay_11_02167ba4
	.word ptr_null_overlay_11_021673ec

    .global s_ALLOC_http_lowrecvbuf_overlay_11_02166a30
s_ALLOC_http_lowrecvbuf_overlay_11_02166a30: ; 0x02166A30
	.asciz "ALLOC http->lowrecvbuf"

    .global DAT_overlay_11_02166A47
DAT_overlay_11_02166A47:
	.byte 0x00

    .global s_ALLOC_http_lowsendbuf_overlay_11_02166a48
s_ALLOC_http_lowsendbuf_overlay_11_02166a48: ; 0x02166A48
	.asciz "ALLOC http->lowsendbuf"

    .global DAT_overlay_11_02166A5F
DAT_overlay_11_02166A5F:
	.byte 0x00

    .global s_Connection_overlay_11_02166a60
s_Connection_overlay_11_02166a60: ; 0x02166A60
	.asciz "Connection"

    .global DAT_overlay_11_02166A6B
DAT_overlay_11_02166A6B:
	.byte 0x00

    .global s_close_overlay_11_02166a6c
s_close_overlay_11_02166a6c: ; 0x02166A6C
	.asciz "close"

    .global DAT_overlay_11_02166A72
DAT_overlay_11_02166A72:
	.byte 0x00, 0x00

    .global s_overlay_11_02166a74
s_overlay_11_02166a74: ; 0x02166A74
	.asciz "\r\n\r\n"

    .global DAT_overlay_11_02166A79
DAT_overlay_11_02166A79:
	.byte 0x00, 0x00, 0x00

    .global s_d_overlay_11_02166a7c
s_d_overlay_11_02166a7c: ; 0x02166A7C
	.asciz "%d"

    .global DAT_overlay_11_02166A7F
DAT_overlay_11_02166A7F:
	.byte 0x00

    .global s_Content_Length_overlay_11_02166a80
s_Content_Length_overlay_11_02166a80: ; 0x02166A80
	.asciz "Content-Length"

    .global DAT_overlay_11_02166A8F
DAT_overlay_11_02166A8F:
	.byte 0x00

    .global s_Content_Length_overlay_11_02166a90
s_Content_Length_overlay_11_02166a90: ; 0x02166A90
	.asciz "Content-Length: "

    .global DAT_overlay_11_02166AA1
DAT_overlay_11_02166AA1:
	.byte 0x00, 0x00, 0x00

    .global s_overlay_11_02166aa4
s_overlay_11_02166aa4: ; 0x02166AA4
	.asciz "\r\n"

    .global DAT_overlay_11_02166AA7
DAT_overlay_11_02166AA7:
	.byte 0x00

    .global s_FREE_http_lowrecvbuf_overlay_11_02166aa8
s_FREE_http_lowrecvbuf_overlay_11_02166aa8: ; 0x02166AA8
	.asciz "FREE http->lowrecvbuf"

    .global DAT_overlay_11_02166ABE
DAT_overlay_11_02166ABE:
	.byte 0x00, 0x00

    .global s_FREE_http_lowsendbuf_overlay_11_02166ac0
s_FREE_http_lowsendbuf_overlay_11_02166ac0: ; 0x02166AC0
	.asciz "FREE http->lowsendbuf"

    .global DAT_overlay_11_02166AD6
DAT_overlay_11_02166AD6:
	.byte 0x00, 0x00

    .global s_POST_s_HTTP_1_0_Content_type_a_overlay_11_02166ad8
s_POST_s_HTTP_1_0_Content_type_a_overlay_11_02166ad8: ; 0x02166AD8
	.asciz "POST /%s HTTP/1.0\r\nContent-type: application/x-www-form-urlencoded\r\nHost: %s\r\n\r\n"

    .global DAT_overlay_11_02166B29
DAT_overlay_11_02166B29:
	.byte 0x00, 0x00, 0x00

    .global s_GET_s_HTTP_1_0_Host_s_overlay_11_02166b2c
s_GET_s_HTTP_1_0_Host_s_overlay_11_02166b2c: ; 0x02166B2C
	.asciz "GET /%s HTTP/1.0\r\nHost: %s\r\n\r\n"

    .global DAT_overlay_11_02166B4B
DAT_overlay_11_02166B4B:
	.byte 0x00

    .global s_s_s_overlay_11_02166b4c
s_s_s_overlay_11_02166b4c: ; 0x02166B4C
	.asciz "%s: %s\r\n"

    .global DAT_overlay_11_02166B55
DAT_overlay_11_02166B55:
	.byte 0x00, 0x00, 0x00

    .global s_s_overlay_11_02166b58
s_s_overlay_11_02166b58: ; 0x02166B58
	.asciz "%s="

    .global s_s_overlay_11_02166b5c
s_s_overlay_11_02166b5c: ; 0x02166B5C
	.asciz "&%s="

    .global DAT_overlay_11_02166B61
DAT_overlay_11_02166B61:
	.byte 0x00, 0x00, 0x00

    .global s_s_overlay_11_02166b64
s_s_overlay_11_02166b64: ; 0x02166B64
	.asciz "%s"

    .global DAT_overlay_11_02166B67
DAT_overlay_11_02166B67:
	.byte 0x00

    .global s_ALLOC_buf_buffer_overlay_11_02166b68
s_ALLOC_buf_buffer_overlay_11_02166b68: ; 0x02166B68
	.asciz "ALLOC buf->buffer"

    .global DAT_overlay_11_02166B7A
DAT_overlay_11_02166B7A:
	.byte 0x00, 0x00

    .global s_FREE_buf_buffer_overlay_11_02166b7c
s_FREE_buf_buffer_overlay_11_02166b7c: ; 0x02166B7C
	.asciz "FREE buf->buffer"

    .global DAT_overlay_11_02166B8D
DAT_overlay_11_02166B8D:
	.byte 0x00, 0x00, 0x00

    .global s_ALLOC_newptr_overlay_11_02166b90
s_ALLOC_newptr_overlay_11_02166b90: ; 0x02166B90
	.asciz "ALLOC newptr"

    .global DAT_overlay_11_02166B9D
DAT_overlay_11_02166B9D:
	.byte 0x00, 0x00, 0x00

    .global s_http_overlay_11_02166ba0
s_http_overlay_11_02166ba0: ; 0x02166BA0
	.asciz "http://"

    .global s_https_overlay_11_02166ba8
s_https_overlay_11_02166ba8: ; 0x02166BA8
	.asciz "https://"

    .global DAT_overlay_11_02166BB1
DAT_overlay_11_02166BB1:
	.byte 0x00, 0x00, 0x00

    .global s_overlay_11_02166bb4
s_overlay_11_02166bb4: ; 0x02166BB4
	.asciz ":"

    .global DAT_overlay_11_02166BB6
DAT_overlay_11_02166BB6:
	.byte 0x00, 0x00

    .global s_overlay_11_02166bb8
s_overlay_11_02166bb8: ; 0x02166BB8
	.asciz "/"

    .global DAT_overlay_11_02166BBA
DAT_overlay_11_02166BBA:
	.byte 0x00, 0x00

    .global s_ALLOC_result_entry_i_label_overlay_11_02166bbc
s_ALLOC_result_entry_i_label_overlay_11_02166bbc: ; 0x02166BBC
	.asciz "ALLOC result->entry[i].label"

    .global DAT_overlay_11_02166BD9
DAT_overlay_11_02166BD9:
	.byte 0x00, 0x00, 0x00

    .global s_ALLOC_result_entry_i_value_overlay_11_02166bdc
s_ALLOC_result_entry_i_value_overlay_11_02166bdc: ; 0x02166BDC
	.asciz "ALLOC result->entry[i].value"

    .global DAT_overlay_11_02166BF9
DAT_overlay_11_02166BF9:
	.byte 0x00, 0x00, 0x00

    .global s_FREE_result_entry_i_label_overlay_11_02166bfc
s_FREE_result_entry_i_label_overlay_11_02166bfc: ; 0x02166BFC
	.asciz "FREE result->entry[i].label"

    .global s_FREE_result_entry_i_value_overlay_11_02166c18
s_FREE_result_entry_i_value_overlay_11_02166c18: ; 0x02166C18
	.asciz "FREE result->entry[i].value"

    .global s_overlay_11_02166c34
s_overlay_11_02166c34: ; 0x02166C34
	.asciz " "

    .global DAT_overlay_11_02166C36
DAT_overlay_11_02166C36:
	.byte 0x00, 0x00

    .global s_httpresult_overlay_11_02166c38
s_httpresult_overlay_11_02166c38: ; 0x02166C38
	.asciz "httpresult"

    .global DAT_overlay_11_02166C43
DAT_overlay_11_02166C43:
	.byte 0x00

    .global s_200_overlay_11_02166c44
s_200_overlay_11_02166c44: ; 0x02166C44
	.asciz "200"

    .global s_overlay_11_02166c48
s_overlay_11_02166c48: ; 0x02166C48
	.asciz ": "

    .global DAT_overlay_11_02166C4B
DAT_overlay_11_02166C4B:
	.byte 0x00

    .global s_overlay_11_02166c4c
s_overlay_11_02166c4c: ; 0x02166C4C
	.asciz "="

    .global DAT_overlay_11_02166C4E
DAT_overlay_11_02166C4E:
	.byte 0x00, 0x00

    .global s_overlay_11_02166c50
s_overlay_11_02166c50: ; 0x02166C50
	.asciz "&"

    .global DAT_overlay_11_02166C52
DAT_overlay_11_02166C52:
	.byte 0x00, 0x00

    .global s_FREE_array_entry_i_label_overlay_11_02166c54
s_FREE_array_entry_i_label_overlay_11_02166c54: ; 0x02166C54
	.asciz "FREE array_entry[i].label"

    .global DAT_overlay_11_02166C6E
DAT_overlay_11_02166C6E:
	.byte 0x00, 0x00

    .global s_FREE_array_entry_i_value_overlay_11_02166c70
s_FREE_array_entry_i_value_overlay_11_02166c70: ; 0x02166C70
	.asciz "FREE array_entry[i].value"

    .global DAT_overlay_11_02166C8A
DAT_overlay_11_02166C8A:
	.byte 0x00, 0x00

    .global ptr_s_http_conntest_nintendowifi_net_overlay_11_02166c90_overlay_11_02166c8c
ptr_s_http_conntest_nintendowifi_net_overlay_11_02166c90_overlay_11_02166c8c: ; 0x02166C8C
	.word s_http_conntest_nintendowifi_net_overlay_11_02166c90

    .global s_http_conntest_nintendowifi_net_overlay_11_02166c90
s_http_conntest_nintendowifi_net_overlay_11_02166c90: ; 0x02166C90
	.asciz "http://conntest.nintendowifi.net/"

    .global DAT_overlay_11_02166CB2
DAT_overlay_11_02166CB2:
	.byte 0x00, 0x00

    .global s_ALLOC_DWCnetcheck_overlay_11_02166cb4
s_ALLOC_DWCnetcheck_overlay_11_02166cb4: ; 0x02166CB4
	.asciz "ALLOC DWCnetcheck"

    .global DAT_overlay_11_02166CC6
DAT_overlay_11_02166CC6:
	.byte 0x00, 0x00

    .global s_ALLOC_DWChttp_overlay_11_02166cc8
s_ALLOC_DWChttp_overlay_11_02166cc8: ; 0x02166CC8
	.asciz "ALLOC DWChttp"

    .global DAT_overlay_11_02166CD6
DAT_overlay_11_02166CD6:
	.byte 0x00, 0x00

    .global s_FREE_DWChttp_overlay_11_02166cd8
s_FREE_DWChttp_overlay_11_02166cd8: ; 0x02166CD8
	.asciz "FREE DWChttp"

    .global DAT_overlay_11_02166CE5
DAT_overlay_11_02166CE5:
	.byte 0x00, 0x00, 0x00

    .global s_FREE_DWCnetcheck_body_302_overlay_11_02166ce8
s_FREE_DWCnetcheck_body_302_overlay_11_02166ce8: ; 0x02166CE8
	.asciz "FREE DWCnetcheck->body_302"

    .global DAT_overlay_11_02166D03
DAT_overlay_11_02166D03:
	.byte 0x00

    .global s_FREE_DWCnetcheck_body_wayport_overlay_11_02166d04
s_FREE_DWCnetcheck_body_wayport_overlay_11_02166d04: ; 0x02166D04
	.asciz "FREE DWCnetcheck->body_wayport"

    .global DAT_overlay_11_02166D23
DAT_overlay_11_02166D23:
	.byte 0x00

    .global s_FREE_DWCnetcheck_overlay_11_02166d24
s_FREE_DWCnetcheck_overlay_11_02166d24: ; 0x02166D24
	.asciz "FREE DWCnetcheck"

    .global DAT_overlay_11_02166D35
DAT_overlay_11_02166D35:
	.byte 0x00, 0x00, 0x00

    .global s_ALLOC_DWCnetcheck_body_302_overlay_11_02166d38
s_ALLOC_DWCnetcheck_body_302_overlay_11_02166d38: ; 0x02166D38
	.asciz "ALLOC DWCnetcheck->body_302"

    .global s_ALLOC_url_overlay_11_02166d54
s_ALLOC_url_overlay_11_02166d54: ; 0x02166D54
	.asciz "ALLOC url"

    .global DAT_overlay_11_02166D5E
DAT_overlay_11_02166D5E:
	.byte 0x00, 0x00

    .global s_ALLOC_data_len_overlay_11_02166d60
s_ALLOC_data_len_overlay_11_02166d60: ; 0x02166D60
	.asciz "ALLOC data_len"

    .global DAT_overlay_11_02166D6F
DAT_overlay_11_02166D6F:
	.byte 0x00

    .global s_ALLOC_wait_len_overlay_11_02166d70
s_ALLOC_wait_len_overlay_11_02166d70: ; 0x02166D70
	.asciz "ALLOC wait_len"

    .global DAT_overlay_11_02166D7F
DAT_overlay_11_02166D7F:
	.byte 0x00

    .global s_ALLOC_DWCnetcheck_body_wayport_overlay_11_02166d80
s_ALLOC_DWCnetcheck_body_wayport_overlay_11_02166d80: ; 0x02166D80
	.asciz "ALLOC DWCnetcheck->body_wayport"

    .global s_httpresult_overlay_11_02166da0
s_httpresult_overlay_11_02166da0: ; 0x02166DA0
	.asciz "httpresult"

    .global DAT_overlay_11_02166DAB
DAT_overlay_11_02166DAB:
	.byte 0x00

    .global s_https_nas_nintendowifi_net_ac_overlay_11_02166dac
s_https_nas_nintendowifi_net_ac_overlay_11_02166dac: ; 0x02166DAC
	.asciz "https://nas.nintendowifi.net/ac"

    .global s_action_overlay_11_02166dcc
s_action_overlay_11_02166dcc: ; 0x02166DCC
	.asciz "action"

    .global DAT_overlay_11_02166DD3
DAT_overlay_11_02166DD3:
	.byte 0x00

    .global s_message_overlay_11_02166dd4
s_message_overlay_11_02166dd4: ; 0x02166DD4
	.asciz "message"

    .global s_HotSpotResponse_overlay_11_02166ddc
s_HotSpotResponse_overlay_11_02166ddc: ; 0x02166DDC
	.asciz "HotSpotResponse"

    .global s_parse_overlay_11_02166dec
s_parse_overlay_11_02166dec: ; 0x02166DEC
	.asciz "parse"

    .global DAT_overlay_11_02166DF2
DAT_overlay_11_02166DF2:
	.byte 0x00, 0x00

    .global s_HTML_overlay_11_02166df4
s_HTML_overlay_11_02166df4: ; 0x02166DF4
	.asciz "HTML"

    .global DAT_overlay_11_02166DF9
DAT_overlay_11_02166DF9:
	.byte 0x00, 0x00, 0x00

    .global s_returncd_overlay_11_02166dfc
s_returncd_overlay_11_02166dfc: ; 0x02166DFC
	.asciz "returncd"

    .global DAT_overlay_11_02166E05
DAT_overlay_11_02166E05:
	.byte 0x00, 0x00, 0x00

    .global s_url_overlay_11_02166e08
s_url_overlay_11_02166e08: ; 0x02166E08
	.asciz "url"

    .global s_data_overlay_11_02166e0c
s_data_overlay_11_02166e0c: ; 0x02166E0C
	.asciz "data"

    .global DAT_overlay_11_02166E11
DAT_overlay_11_02166E11:
	.byte 0x00, 0x00, 0x00

    .global s_wait_overlay_11_02166e14
s_wait_overlay_11_02166e14: ; 0x02166E14
	.asciz "wait"

    .global DAT_overlay_11_02166E19
DAT_overlay_11_02166E19:
	.byte 0x00, 0x00, 0x00

    .global s_FREE_url_overlay_11_02166e1c
s_FREE_url_overlay_11_02166e1c: ; 0x02166E1C
	.asciz "FREE url"

    .global DAT_overlay_11_02166E25
DAT_overlay_11_02166E25:
	.byte 0x00, 0x00, 0x00

    .global s_FREE_data_overlay_11_02166e28
s_FREE_data_overlay_11_02166e28: ; 0x02166E28
	.asciz "FREE data"

    .global DAT_overlay_11_02166E32
DAT_overlay_11_02166E32:
	.byte 0x00, 0x00

    .global s_FREE_wait_overlay_11_02166e34
s_FREE_wait_overlay_11_02166e34: ; 0x02166E34
	.asciz "FREE wait"

    .global DAT_overlay_11_02166E3E
DAT_overlay_11_02166E3E:
	.byte 0x00, 0x00

    .global s_Jun_overlay_11_02166e40
s_Jun_overlay_11_02166e40: ; 0x02166E40
	.asciz "Jun"

    .global s_Jul_overlay_11_02166e44
s_Jul_overlay_11_02166e44: ; 0x02166E44
	.asciz "Jul"

    .global s_Dec_overlay_11_02166e48
s_Dec_overlay_11_02166e48: ; 0x02166E48
	.asciz "Dec"

    .global s_Sep_overlay_11_02166e4c
s_Sep_overlay_11_02166e4c: ; 0x02166E4C
	.asciz "Sep"

    .global s_Aug_overlay_11_02166e50
s_Aug_overlay_11_02166e50: ; 0x02166E50
	.asciz "Aug"

    .global s_Nov_overlay_11_02166e54
s_Nov_overlay_11_02166e54: ; 0x02166E54
	.asciz "Nov"

    .global s_Oct_overlay_11_02166e58
s_Oct_overlay_11_02166e58: ; 0x02166E58
	.asciz "Oct"

    .global s_May_overlay_11_02166e5c
s_May_overlay_11_02166e5c: ; 0x02166E5C
	.asciz "May"

    .global s_Apr_overlay_11_02166e60
s_Apr_overlay_11_02166e60: ; 0x02166E60
	.asciz "Apr"

    .global s_Mar_overlay_11_02166e64
s_Mar_overlay_11_02166e64: ; 0x02166E64
	.asciz "Mar"

    .global s_Feb_overlay_11_02166e68
s_Feb_overlay_11_02166e68: ; 0x02166E68
	.asciz "Feb"

    .global s_Jan_overlay_11_02166e6c
s_Jan_overlay_11_02166e6c: ; 0x02166E6C
	.asciz "Jan"

    .global ptr_s_Jan_overlay_11_02166e6c_overlay_11_02166e70
ptr_s_Jan_overlay_11_02166e6c_overlay_11_02166e70: ; 0x02166E70
	.word s_Jan_overlay_11_02166e6c

    .global ptr_s_Feb_overlay_11_02166e68_overlay_11_02166e74
ptr_s_Feb_overlay_11_02166e68_overlay_11_02166e74: ; 0x02166E74
	.word s_Feb_overlay_11_02166e68
	.word s_Mar_overlay_11_02166e64
	.word s_Apr_overlay_11_02166e60
	.word s_May_overlay_11_02166e5c
	.word s_Jun_overlay_11_02166e40
	.word s_Jul_overlay_11_02166e44
	.word s_Aug_overlay_11_02166e50
	.word s_Sep_overlay_11_02166e4c
	.word s_Oct_overlay_11_02166e58
	.word s_Nov_overlay_11_02166e54
	.word s_Dec_overlay_11_02166e48

    .global s_Fri_03_Mar_2006_01_28_13_GMT_overlay_11_02166ea0
s_Fri_03_Mar_2006_01_28_13_GMT_overlay_11_02166ea0: ; 0x02166EA0
	.asciz "Fri, 03 Mar 2006 01:28:13 GMT"

    .global DAT_overlay_11_02166EBE
DAT_overlay_11_02166EBE:
	.byte 0x00, 0x00

    .global s_ALLOC_intwork_overlay_11_02166ec0
s_ALLOC_intwork_overlay_11_02166ec0: ; 0x02166EC0
	.asciz "ALLOC intwork"

    .global DAT_overlay_11_02166ECE
DAT_overlay_11_02166ECE:
	.byte 0x00, 0x00

    .global s_FREE_intwork_overlay_11_02166ed0
s_FREE_intwork_overlay_11_02166ed0: ; 0x02166ED0
	.asciz "FREE intwork"

    .global DAT_overlay_11_02166EDD
DAT_overlay_11_02166EDD:
	.byte 0x00, 0x00, 0x00

    .global s_https_nas_nintendowifi_net_ac_overlay_11_02166ee0
s_https_nas_nintendowifi_net_ac_overlay_11_02166ee0: ; 0x02166EE0
	.asciz "https://nas.nintendowifi.net/ac"

    .global s_action_overlay_11_02166f00
s_action_overlay_11_02166f00: ; 0x02166F00
	.asciz "action"

    .global DAT_overlay_11_02166F07
DAT_overlay_11_02166F07:
	.byte 0x00

    .global s_SVCLOC_overlay_11_02166f08
s_SVCLOC_overlay_11_02166f08: ; 0x02166F08
	.asciz "SVCLOC"

    .global DAT_overlay_11_02166F0F
DAT_overlay_11_02166F0F:
	.byte 0x00

    .global s_svc_overlay_11_02166f10
s_svc_overlay_11_02166f10: ; 0x02166F10
	.asciz "svc"

    .global s_Date_overlay_11_02166f14
s_Date_overlay_11_02166f14: ; 0x02166F14
	.asciz "Date"

    .global DAT_overlay_11_02166F19
DAT_overlay_11_02166F19:
	.byte 0x00, 0x00, 0x00

    .global s_httpresult_overlay_11_02166f1c
s_httpresult_overlay_11_02166f1c: ; 0x02166F1C
	.asciz "httpresult"

    .global DAT_overlay_11_02166F27
DAT_overlay_11_02166F27:
	.byte 0x00

    .global s_returncd_overlay_11_02166f28
s_returncd_overlay_11_02166f28: ; 0x02166F28
	.asciz "returncd"

    .global DAT_overlay_11_02166F31
DAT_overlay_11_02166F31:
	.byte 0x00, 0x00, 0x00

    .global s_svchost_overlay_11_02166f34
s_svchost_overlay_11_02166f34: ; 0x02166F34
	.asciz "svchost"

    .global s_servicetoken_overlay_11_02166f3c
s_servicetoken_overlay_11_02166f3c: ; 0x02166F3C
	.asciz "servicetoken"

    .global DAT_overlay_11_02166F49
DAT_overlay_11_02166F49:
	.byte 0x00, 0x00, 0x00

    .global s_statusdata_overlay_11_02166f4c
s_statusdata_overlay_11_02166f4c: ; 0x02166F4C
	.asciz "statusdata"

    .global DAT_overlay_11_02166F57
DAT_overlay_11_02166F57:
	.byte 0x00

    .global ptr_s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c_overlay_11_02166f58
ptr_s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c_overlay_11_02166f58: ; 0x02166F58
	.word s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c

    .global s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c
s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02166f5c: ; 0x02166F5C
	.asciz "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-"

    .global DAT_overlay_11_02166F9D
DAT_overlay_11_02166F9D:
	.byte 0x00, 0x00, 0x00

    .global DAT_overlay_11_02166fa0
DAT_overlay_11_02166fa0: ; 0x02166FA0
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_02166fa4
ptr_null_overlay_11_02166fa4: ; 0x02166FA4
	.word s_BE_GlobalSign_nv_sa_Root_CA_G_overlay_11_02166fb8
	.byte 0x00, 0x01, 0x00, 0x00
	.word DAT_overlay_11_02166fec
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02166fa0

    .global s_BE_GlobalSign_nv_sa_Root_CA_G_overlay_11_02166fb8
s_BE_GlobalSign_nv_sa_Root_CA_G_overlay_11_02166fb8: ; 0x02166FB8
	.asciz "BE, GlobalSign nv-sa, Root CA, GlobalSign Root CA"

    .global DAT_overlay_11_02166FEA
DAT_overlay_11_02166FEA:
	.byte 0x00, 0x00

    .global DAT_overlay_11_02166fec
DAT_overlay_11_02166fec: ; 0x02166FEC
	.byte 0xDA, 0x0E, 0xE6, 0x99
	.byte 0x8D, 0xCE, 0xA3, 0xE3, 0x4F, 0x8A, 0x7E, 0xFB, 0xF1, 0x8B, 0x83, 0x25, 0x6B, 0xEA, 0x48, 0x1F
	.byte 0xF1, 0x2A, 0xB0, 0xB9, 0x95, 0x11, 0x04, 0xBD, 0xF0, 0x63, 0xD1, 0xE2, 0x67, 0x66, 0xCF, 0x1C
	.byte 0xDD, 0xCF, 0x1B, 0x48, 0x2B, 0xEE, 0x8D, 0x89, 0x8E, 0x9A, 0xAF, 0x29, 0x80, 0x65, 0xAB, 0xE9
	.byte 0xC7, 0x2D, 0x12, 0xCB, 0xAB, 0x1C, 0x4C, 0x70, 0x07, 0xA1, 0x3D, 0x0A, 0x30, 0xCD, 0x15, 0x8D
	.byte 0x4F, 0xF8, 0xDD, 0xD4, 0x8C, 0x50, 0x15, 0x1C, 0xEF, 0x50, 0xEE, 0xC4, 0x2E, 0xF7, 0xFC, 0xE9
	.byte 0x52, 0xF2, 0x91, 0x7D, 0xE0, 0x6D, 0xD5, 0x35, 0x30, 0x8E, 0x5E, 0x43, 0x73, 0xF2, 0x41, 0xE9
	.byte 0xD5, 0x6A, 0xE3, 0xB2, 0x89, 0x3A, 0x56, 0x39, 0x38, 0x6F, 0x06, 0x3C, 0x88, 0x69, 0x5B, 0x2A
	.byte 0x4D, 0xC5, 0xA7, 0x54, 0xB8, 0x6C, 0x89, 0xCC, 0x9B, 0xF9, 0x3C, 0xCA, 0xE5, 0xFD, 0x89, 0xF5
	.byte 0x12, 0x3C, 0x92, 0x78, 0x96, 0xD6, 0xDC, 0x74, 0x6E, 0x93, 0x44, 0x61, 0xD1, 0x8D, 0xC7, 0x46
	.byte 0xB2, 0x75, 0x0E, 0x86, 0xE8, 0x19, 0x8A, 0xD5, 0x6D, 0x6C, 0xD5, 0x78, 0x16, 0x95, 0xA2, 0xE9
	.byte 0xC8, 0x0A, 0x38, 0xEB, 0xF2, 0x24, 0x13, 0x4F, 0x73, 0x54, 0x93, 0x13, 0x85, 0x3A, 0x1B, 0xBC
	.byte 0x1E, 0x34, 0xB5, 0x8B, 0x05, 0x8C, 0xB9, 0x77, 0x8B, 0xB1, 0xDB, 0x1F, 0x20, 0x91, 0xAB, 0x09
	.byte 0x53, 0x6E, 0x90, 0xCE, 0x7B, 0x37, 0x74, 0xB9, 0x70, 0x47, 0x91, 0x22, 0x51, 0x63, 0x16, 0x79
	.byte 0xAE, 0xB1, 0xAE, 0x41, 0x26, 0x08, 0xC8, 0x19, 0x2B, 0xD1, 0x46, 0xAA, 0x48, 0xD6, 0x64, 0x2A
	.byte 0xD7, 0x83, 0x34, 0xFF, 0x2C, 0x2A, 0xC1, 0x6C, 0x19, 0x43, 0x4A, 0x07, 0x85, 0xE7, 0xD3, 0x7C
	.byte 0xF6, 0x21, 0x68, 0xEF, 0xEA, 0xF2, 0x52, 0x9F, 0x7F, 0x93, 0x90, 0xCF

    .global DAT_overlay_11_021670ec
DAT_overlay_11_021670ec: ; 0x021670EC
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_021670f0
ptr_null_overlay_11_021670f0: ; 0x021670F0
	.word s_IE_Baltimore_CyberTrust_Balti_overlay_11_02167104
	.byte 0x00, 0x01, 0x00, 0x00
	.word DAT_overlay_11_0216713c
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021670ec

    .global s_IE_Baltimore_CyberTrust_Balti_overlay_11_02167104
s_IE_Baltimore_CyberTrust_Balti_overlay_11_02167104: ; 0x02167104
	.asciz "IE, Baltimore, CyberTrust, Baltimore CyberTrust Root"

    .global DAT_overlay_11_02167139
DAT_overlay_11_02167139:
	.byte 0x00, 0x00, 0x00

    .global DAT_overlay_11_0216713c
DAT_overlay_11_0216713c: ; 0x0216713C
	.byte 0xA3, 0x04, 0xBB, 0x22
	.byte 0xAB, 0x98, 0x3D, 0x57, 0xE8, 0x26, 0x72, 0x9A, 0xB5, 0x79, 0xD4, 0x29, 0xE2, 0xE1, 0xE8, 0x95
	.byte 0x80, 0xB1, 0xB0, 0xE3, 0x5B, 0x8E, 0x2B, 0x29, 0x9A, 0x64, 0xDF, 0xA1, 0x5D, 0xED, 0xB0, 0x09
	.byte 0x05, 0x6D, 0xDB, 0x28, 0x2E, 0xCE, 0x62, 0xA2, 0x62, 0xFE, 0xB4, 0x88, 0xDA, 0x12, 0xEB, 0x38
	.byte 0xEB, 0x21, 0x9D, 0xC0, 0x41, 0x2B, 0x01, 0x52, 0x7B, 0x88, 0x77, 0xD3, 0x1C, 0x8F, 0xC7, 0xBA
	.byte 0xB9, 0x88, 0xB5, 0x6A, 0x09, 0xE7, 0x73, 0xE8, 0x11, 0x40, 0xA7, 0xD1, 0xCC, 0xCA, 0x62, 0x8D
	.byte 0x2D, 0xE5, 0x8F, 0x0B, 0xA6, 0x50, 0xD2, 0xA8, 0x50, 0xC3, 0x28, 0xEA, 0xF5, 0xAB, 0x25, 0x87
	.byte 0x8A, 0x9A, 0x96, 0x1C, 0xA9, 0x67, 0xB8, 0x3F, 0x0C, 0xD5, 0xF7, 0xF9, 0x52, 0x13, 0x2F, 0xC2
	.byte 0x1B, 0xD5, 0x70, 0x70, 0xF0, 0x8F, 0xC0, 0x12, 0xCA, 0x06, 0xCB, 0x9A, 0xE1, 0xD9, 0xCA, 0x33
	.byte 0x7A, 0x77, 0xD6, 0xF8, 0xEC, 0xB9, 0xF1, 0x68, 0x44, 0x42, 0x48, 0x13, 0xD2, 0xC0, 0xC2, 0xA4
	.byte 0xAE, 0x5E, 0x60, 0xFE, 0xB6, 0xA6, 0x05, 0xFC, 0xB4, 0xDD, 0x07, 0x59, 0x02, 0xD4, 0x59, 0x18
	.byte 0x98, 0x63, 0xF5, 0xA5, 0x63, 0xE0, 0x90, 0x0C, 0x7D, 0x5D, 0xB2, 0x06, 0x7A, 0xF3, 0x85, 0xEA
	.byte 0xEB, 0xD4, 0x03, 0xAE, 0x5E, 0x84, 0x3E, 0x5F, 0xFF, 0x15, 0xED, 0x69, 0xBC, 0xF9, 0x39, 0x36
	.byte 0x72, 0x75, 0xCF, 0x77, 0x52, 0x4D, 0xF3, 0xC9, 0x90, 0x2C, 0xB9, 0x3D, 0xE5, 0xC9, 0x23, 0x53
	.byte 0x3F, 0x1F, 0x24, 0x98, 0x21, 0x5C, 0x07, 0x99, 0x29, 0xBD, 0xC6, 0x3A, 0xEC, 0xE7, 0x6E, 0x86
	.byte 0x3A, 0x6B, 0x97, 0x74, 0x63, 0x33, 0xBD, 0x68, 0x18, 0x31, 0xF0, 0x78, 0x8D, 0x76, 0xBF, 0xFC
	.byte 0x9E, 0x8E, 0x5D, 0x2A, 0x86, 0xA7, 0x4D, 0x90, 0xDC, 0x27, 0x1A, 0x39

    .global DAT_overlay_11_0216723c
DAT_overlay_11_0216723c: ; 0x0216723C
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_02167240
ptr_null_overlay_11_02167240: ; 0x02167240
	.word s_US_GTE_Corporation_GTE_CyberTr_overlay_11_02167254
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021672a4
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_0216723c

    .global s_US_GTE_Corporation_GTE_CyberTr_overlay_11_02167254
s_US_GTE_Corporation_GTE_CyberTr_overlay_11_02167254: ; 0x02167254
	.asciz "US, GTE Corporation, GTE CyberTrust Solutions, Inc., GTE CyberTrust Global Root"

    .global DAT_overlay_11_021672a4
DAT_overlay_11_021672a4: ; 0x021672A4
	.byte 0x95, 0x0F, 0xA0, 0xB6, 0xF0, 0x50, 0x9C, 0xE8, 0x7A, 0xC7, 0x88, 0xCD
	.byte 0xDD, 0x17, 0x0E, 0x2E, 0xB0, 0x94, 0xD0, 0x1B, 0x3D, 0x0E, 0xF6, 0x94, 0xC0, 0x8A, 0x94, 0xC7
	.byte 0x06, 0xC8, 0x90, 0x97, 0xC8, 0xB8, 0x64, 0x1A, 0x7A, 0x7E, 0x6C, 0x3C, 0x53, 0xE1, 0x37, 0x28
	.byte 0x73, 0x60, 0x7F, 0xB2, 0x97, 0x53, 0x07, 0x9F, 0x53, 0xF9, 0x6D, 0x58, 0x94, 0xD2, 0xAF, 0x8D
	.byte 0x6D, 0x88, 0x67, 0x80, 0xE6, 0xED, 0xB2, 0x95, 0xCF, 0x72, 0x31, 0xCA, 0xA5, 0x1C, 0x72, 0xBA
	.byte 0x5C, 0x02, 0xE7, 0x64, 0x42, 0xE7, 0xF9, 0xA9, 0x2C, 0xD6, 0x3A, 0x0D, 0xAC, 0x8D, 0x42, 0xAA
	.byte 0x24, 0x01, 0x39, 0xE6, 0x9C, 0x3F, 0x01, 0x85, 0x57, 0x0D, 0x58, 0x87, 0x45, 0xF8, 0xD3, 0x85
	.byte 0xAA, 0x93, 0x69, 0x26, 0x85, 0x70, 0x48, 0x80, 0x3F, 0x12, 0x15, 0xC7, 0x79, 0xB4, 0x1F, 0x05
	.byte 0x2F, 0x3B, 0x62, 0x99

    .global DAT_overlay_11_02167324
DAT_overlay_11_02167324: ; 0x02167324
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_02167328
ptr_null_overlay_11_02167328: ; 0x02167328
	.word s_US_GTE_Corporation_GTE_CyberTr_overlay_11_0216733c
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167368
	.byte 0x03, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_0_02167324_overlay_11_02167338
ptr_FUN_overlay_0_02167324_overlay_11_02167338: ; 0x02167338
	.word DAT_overlay_11_02167324

    .global s_US_GTE_Corporation_GTE_CyberTr_overlay_11_0216733c
s_US_GTE_Corporation_GTE_CyberTr_overlay_11_0216733c: ; 0x0216733C
	.asciz "US, GTE Corporation, GTE CyberTrust Root"

    .global DAT_overlay_11_02167365
DAT_overlay_11_02167365:
	.byte 0x00, 0x00, 0x00

    .global DAT_overlay_11_02167368
DAT_overlay_11_02167368: ; 0x02167368
	.byte 0xB8, 0xE6, 0x4F, 0xBA, 0xDB, 0x98, 0x7C, 0x71
	.byte 0x7C, 0xAF, 0x44, 0xB7, 0xD3, 0x0F, 0x46, 0xD9, 0x64, 0xE5, 0x93, 0xC1, 0x42, 0x8E, 0xC7, 0xBA
	.byte 0x49, 0x8D, 0x35, 0x2D, 0x7A, 0xE7, 0x8B, 0xBD, 0xE5, 0x05, 0x31, 0x59, 0xC6, 0xB1, 0x2F, 0x0A
	.byte 0x0C, 0xFB, 0x9F, 0xA7, 0x3F, 0xA2, 0x09, 0x66, 0x84, 0x56, 0x1E, 0x37, 0x29, 0x1B, 0x87, 0xE9
	.byte 0x7E, 0x0C, 0xCA, 0x9A, 0x9F, 0xA5, 0x7F, 0xF5, 0x15, 0x94, 0xA3, 0xD5, 0xA2, 0x46, 0x82, 0xD8
	.byte 0x68, 0x4C, 0xD1, 0x37, 0x15, 0x06, 0x68, 0xAF, 0xBD, 0xF8, 0xB0, 0xB3, 0xF0, 0x29, 0xF5, 0x95
	.byte 0x5A, 0x09, 0x16, 0x61, 0x77, 0x0A, 0x22, 0x25, 0xD4, 0x4F, 0x45, 0xAA, 0xC7, 0xBD, 0xE5, 0x96
	.byte 0xDF, 0xF9, 0xD4, 0xA8, 0x8E, 0x42, 0xCC, 0x24, 0xC0, 0x1E, 0x91, 0x27, 0x4A, 0xB5, 0x6D, 0x06
	.byte 0x80, 0x63, 0x39, 0xC4, 0xA2, 0x5E, 0x38, 0x03

    .global DAT_overlay_11_021673e8
DAT_overlay_11_021673e8: ; 0x021673E8
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_021673ec
ptr_null_overlay_11_021673ec: ; 0x021673EC
	.word s_US_Washington_Nintendo_of_Amer_overlay_11_02167400
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167450
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021673e8

    .global s_US_Washington_Nintendo_of_Amer_overlay_11_02167400
s_US_Washington_Nintendo_of_Amer_overlay_11_02167400: ; 0x02167400
	.asciz "US, Washington, Nintendo of America Inc, NOA, Nintendo CA, ca@noa.nintendo.com"

    .global DAT_overlay_11_0216744F
DAT_overlay_11_0216744F:
	.byte 0x00

    .global DAT_overlay_11_02167450
DAT_overlay_11_02167450: ; 0x02167450
	.byte 0xB3, 0xCD, 0x79, 0x97, 0x77, 0x5D, 0x8A, 0xAF, 0x86, 0xA8, 0xE8, 0xD7, 0x73, 0x1C, 0x77, 0xDF
	.byte 0x10, 0x90, 0x1F, 0x81, 0xF8, 0x41, 0x9E, 0x21, 0x55, 0xDF, 0xBC, 0xFC, 0x63, 0xFB, 0x19, 0x43
	.byte 0xF1, 0xF6, 0xC4, 0x72, 0x42, 0x49, 0xBD, 0xAD, 0x44, 0x68, 0x4E, 0xF3, 0xDA, 0x1D, 0xE6, 0x4D
	.byte 0xD8, 0xF9, 0x59, 0x88, 0xDC, 0xAE, 0x3E, 0x9B, 0x38, 0x09, 0xCA, 0x7F, 0xFF, 0xDC, 0x24, 0xA2
	.byte 0x44, 0x78, 0x78, 0x49, 0x93, 0xD4, 0x84, 0x40, 0x10, 0xB8, 0xEC, 0x3E, 0xDB, 0x2D, 0x93, 0xC8
	.byte 0x11, 0xC8, 0xFD, 0x78, 0x2D, 0x61, 0xAD, 0x31, 0xAE, 0x86, 0x26, 0xB0, 0xFD, 0x5A, 0x3F, 0xA1
	.byte 0x3D, 0xBF, 0xE2, 0x4B, 0x49, 0xEC, 0xCE, 0x66, 0x98, 0x58, 0x26, 0x12, 0xC0, 0xFB, 0xF4, 0x77
	.byte 0x65, 0x1B, 0xEA, 0xFB, 0xCB, 0x7F, 0xE0, 0x8C, 0xCB, 0x02, 0xA3, 0x4E, 0x5E, 0x8C, 0xEA, 0x9B

    .global DAT_overlay_11_021674d0
DAT_overlay_11_021674d0: ; 0x021674D0
	.byte 0x01, 0x00, 0x01, 0x00

    .global PTR_s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167568_overlay_11_021674d4
PTR_s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167568_overlay_11_021674d4: ; 0x021674D4
	.word s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167568
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021674e8
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021674d0

    .global DAT_overlay_11_021674e8
DAT_overlay_11_021674e8: ; 0x021674E8
	.byte 0xD2, 0x36, 0x36, 0x6A, 0x8B, 0xD7, 0xC2, 0x5B
	.byte 0x9E, 0xDA, 0x81, 0x41, 0x62, 0x8F, 0x38, 0xEE, 0x49, 0x04, 0x55, 0xD6, 0xD0, 0xEF, 0x1C, 0x1B
	.byte 0x95, 0x16, 0x47, 0xEF, 0x18, 0x48, 0x35, 0x3A, 0x52, 0xF4, 0x2B, 0x6A, 0x06, 0x8F, 0x3B, 0x2F
	.byte 0xEA, 0x56, 0xE3, 0xAF, 0x86, 0x8D, 0x9E, 0x17, 0xF7, 0x9E, 0xB4, 0x65, 0x75, 0x02, 0x4D, 0xEF
	.byte 0xCB, 0x09, 0xA2, 0x21, 0x51, 0xD8, 0x9B, 0xD0, 0x67, 0xD0, 0xBA, 0x0D, 0x92, 0x06, 0x14, 0x73
	.byte 0xD4, 0x93, 0xCB, 0x97, 0x2A, 0x00, 0x9C, 0x5C, 0x4E, 0x0C, 0xBC, 0xFA, 0x15, 0x52, 0xFC, 0xF2
	.byte 0x44, 0x6E, 0xDA, 0x11, 0x4A, 0x6E, 0x08, 0x9F, 0x2F, 0x2D, 0xE3, 0xF9, 0xAA, 0x3A, 0x86, 0x73
	.byte 0xB6, 0x46, 0x53, 0x58, 0xC8, 0x89, 0x05, 0xBD, 0x83, 0x11, 0xB8, 0x73, 0x3F, 0xAA, 0x07, 0x8D
	.byte 0xF4, 0x42, 0x4D, 0xE7, 0x40, 0x9D, 0x1C, 0x37

    .global s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167568
s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167568: ; 0x02167568
	.byte 0x5A, 0x41, 0x2C, 0x20, 0x57, 0x65, 0x73, 0x74
	.byte 0x65, 0x72, 0x6E, 0x20, 0x43, 0x61, 0x70, 0x65, 0x2C, 0x20, 0x43, 0x61, 0x70, 0x65, 0x20, 0x54
	.byte 0x6F, 0x77, 0x6E, 0x2C, 0x20, 0x54, 0x68, 0x61, 0x77, 0x74, 0x65, 0x20, 0x43, 0x6F, 0x6E, 0x73
	.byte 0x75, 0x6C, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x63, 0x63, 0x2C, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69
	.byte 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65
	.byte 0x73, 0x20, 0x44, 0x69, 0x76, 0x69, 0x73, 0x69, 0x6F, 0x6E, 0x2C, 0x20, 0x54, 0x68, 0x61, 0x77
	.byte 0x74, 0x65, 0x20, 0x50, 0x72, 0x65, 0x6D, 0x69, 0x75, 0x6D, 0x20, 0x53, 0x65, 0x72, 0x76, 0x65
	.byte 0x72, 0x20, 0x43, 0x41, 0x2C, 0x20, 0x70, 0x72, 0x65, 0x6D, 0x69, 0x75, 0x6D, 0x2D, 0x73, 0x65
	.byte 0x72, 0x76, 0x65, 0x72, 0x40, 0x74, 0x68, 0x61, 0x77, 0x74, 0x65, 0x2E, 0x63, 0x6F, 0x6D, 0x00

    .global DAT_overlay_11_021675f0
DAT_overlay_11_021675f0: ; 0x021675F0
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_021675f4
ptr_null_overlay_11_021675f4: ; 0x021675F4
	.word s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167608
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167688
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021675f0

    .global s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167608
s_ZA_Western_Cape_Cape_Town_Tha_overlay_11_02167608: ; 0x02167608
	.asciz "ZA, Western Cape, Cape Town, Thawte Consulting cc, Certification Services Division, Thawte Server CA, server-certs@thawte.com"

    .global DAT_overlay_11_02167686
DAT_overlay_11_02167686:
	.byte 0x00, 0x00

    .global DAT_overlay_11_02167688
DAT_overlay_11_02167688: ; 0x02167688
	.byte 0xD3, 0xA4, 0x50, 0x6E, 0xC8, 0xFF, 0x56, 0x6B
	.byte 0xE6, 0xCF, 0x5D, 0xB6, 0xEA, 0x0C, 0x68, 0x75, 0x47, 0xA2, 0xAA, 0xC2, 0xDA, 0x84, 0x25, 0xFC
	.byte 0xA8, 0xF4, 0x47, 0x51, 0xDA, 0x85, 0xB5, 0x20, 0x74, 0x94, 0x86, 0x1E, 0x0F, 0x75, 0xC9, 0xE9
	.byte 0x08, 0x61, 0xF5, 0x06, 0x6D, 0x30, 0x6E, 0x15, 0x19, 0x02, 0xE9, 0x52, 0xC0, 0x62, 0xDB, 0x4D
	.byte 0x99, 0x9E, 0xE2, 0x6A, 0x0C, 0x44, 0x38, 0xCD, 0xFE, 0xBE, 0xE3, 0x64, 0x09, 0x70, 0xC5, 0xFE
	.byte 0xB1, 0x6B, 0x29, 0xB6, 0x2F, 0x49, 0xC8, 0x3B, 0xD4, 0x27, 0x04, 0x25, 0x10, 0x97, 0x2F, 0xE7
	.byte 0x90, 0x6D, 0xC0, 0x28, 0x42, 0x99, 0xD7, 0x4C, 0x43, 0xDE, 0xC3, 0xF5, 0x21, 0x6D, 0x54, 0x9F
	.byte 0x5D, 0xC3, 0x58, 0xE1, 0xC0, 0xE4, 0xD9, 0x5B, 0xB0, 0xB8, 0xDC, 0xB4, 0x7B, 0xDF, 0x36, 0x3A
	.byte 0xC2, 0xB5, 0x66, 0x22, 0x12, 0xD6, 0x87, 0x0D

    .global DAT_overlay_11_02167708
DAT_overlay_11_02167708: ; 0x02167708
	.byte 0x01, 0x00, 0x01, 0x00

    .global PTR_s_US_VeriSign_Inc_Class_3_Publ_overlay_11_021677a0_overlay_11_0216770c
PTR_s_US_VeriSign_Inc_Class_3_Publ_overlay_11_021677a0_overlay_11_0216770c: ; 0x0216770C
	.word s_US_VeriSign_Inc_Class_3_Publ_overlay_11_021677a0
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167720
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167708

    .global DAT_overlay_11_02167720
DAT_overlay_11_02167720: ; 0x02167720
	.byte 0xCC, 0x5E, 0xD1, 0x11, 0x5D, 0x5C, 0x69, 0xD0, 0xAB, 0xD3, 0xB9, 0x6A, 0x4C, 0x99, 0x1F, 0x59
	.byte 0x98, 0x30, 0x8E, 0x16, 0x85, 0x20, 0x46, 0x6D, 0x47, 0x3F, 0xD4, 0x85, 0x20, 0x84, 0xE1, 0x6D
	.byte 0xB3, 0xF8, 0xA4, 0xED, 0x0C, 0xF1, 0x17, 0x0F, 0x3B, 0xF9, 0xA7, 0xF9, 0x25, 0xD7, 0xC1, 0xCF
	.byte 0x84, 0x63, 0xF2, 0x7C, 0x63, 0xCF, 0xA2, 0x47, 0xF2, 0xC6, 0x5B, 0x33, 0x8E, 0x64, 0x40, 0x04
	.byte 0x68, 0xC1, 0x80, 0xB9, 0x64, 0x1C, 0x45, 0x77, 0xC7, 0xD8, 0x6E, 0xF5, 0x95, 0x29, 0x3C, 0x50
	.byte 0xE8, 0x34, 0xD7, 0x78, 0x1F, 0xA8, 0xBA, 0x6D, 0x43, 0x91, 0x95, 0x8F, 0x45, 0x57, 0x5E, 0x7E
	.byte 0xC5, 0xFB, 0xCA, 0xA4, 0x04, 0xEB, 0xEA, 0x97, 0x37, 0x54, 0x30, 0x6F, 0xBB, 0x01, 0x47, 0x32
	.byte 0x33, 0xCD, 0xDC, 0x57, 0x9B, 0x64, 0x69, 0x61, 0xF8, 0x9B, 0x1D, 0x1C, 0x89, 0x4F, 0x5C, 0x67

    .global s_US_VeriSign_Inc_Class_3_Publ_overlay_11_021677a0
s_US_VeriSign_Inc_Class_3_Publ_overlay_11_021677a0: ; 0x021677A0
	.byte 0x55, 0x53, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67, 0x6E, 0x2C, 0x20, 0x49, 0x6E
	.byte 0x63, 0x2E, 0x2C, 0x20, 0x43, 0x6C, 0x61, 0x73, 0x73, 0x20, 0x33, 0x20, 0x50, 0x75, 0x62, 0x6C
	.byte 0x69, 0x63, 0x20, 0x50, 0x72, 0x69, 0x6D, 0x61, 0x72, 0x79, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69
	.byte 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x41, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69
	.byte 0x74, 0x79, 0x20, 0x2D, 0x20, 0x47, 0x32, 0x2C, 0x20, 0x28, 0x63, 0x29, 0x20, 0x31, 0x39, 0x39
	.byte 0x38, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67, 0x6E, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E
	.byte 0x20, 0x2D, 0x20, 0x46, 0x6F, 0x72, 0x20, 0x61, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x7A, 0x65
	.byte 0x64, 0x20, 0x75, 0x73, 0x65, 0x20, 0x6F, 0x6E, 0x6C, 0x79, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69
	.byte 0x53, 0x69, 0x67, 0x6E, 0x20, 0x54, 0x72, 0x75, 0x73, 0x74, 0x20, 0x4E, 0x65, 0x74, 0x77, 0x6F
	.byte 0x72, 0x6B, 0x00, 0x00

    .global DAT_overlay_11_02167834
DAT_overlay_11_02167834: ; 0x02167834
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_02167838
ptr_null_overlay_11_02167838: ; 0x02167838
	.word s_US_VeriSign_Inc_VeriSign_Tru_overlay_11_0216784c
	.byte 0x00, 0x01, 0x00, 0x00
	.word DAT_overlay_11_021678e8
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167834

    .global s_US_VeriSign_Inc_VeriSign_Tru_overlay_11_0216784c
s_US_VeriSign_Inc_VeriSign_Tru_overlay_11_0216784c: ; 0x0216784C
	.asciz "US, VeriSign, Inc., VeriSign Trust Network, (c) 1999 VeriSign, Inc. - For authorized use only, VeriSign Class 3 Public Primary Certification Authority - G3"

    .global DAT_overlay_11_021678e8
DAT_overlay_11_021678e8: ; 0x021678E8
	.byte 0xCB, 0xBA, 0x9C, 0x52, 0xFC, 0x78, 0x1F, 0x1A
	.byte 0x1E, 0x6F, 0x1B, 0x37, 0x73, 0xBD, 0xF8, 0xC9, 0x6B, 0x94, 0x12, 0x30, 0x4F, 0xF0, 0x36, 0x47
	.byte 0xF5, 0xD0, 0x91, 0x0A, 0xF5, 0x17, 0xC8, 0xA5, 0x61, 0xC1, 0x16, 0x40, 0x4D, 0xFB, 0x8A, 0x61
	.byte 0x90, 0xE5, 0x76, 0x20, 0xC1, 0x11, 0x06, 0x7D, 0xAB, 0x2C, 0x6E, 0xA6, 0xF5, 0x11, 0x41, 0x8E
	.byte 0xFA, 0x2D, 0xAD, 0x2A, 0x61, 0x59, 0xA4, 0x67, 0x26, 0x4C, 0xD0, 0xE8, 0xBC, 0x52, 0x5B, 0x70
	.byte 0x20, 0x04, 0x58, 0xD1, 0x7A, 0xC9, 0xA4, 0x69, 0xBC, 0x83, 0x17, 0x64, 0xAD, 0x05, 0x8B, 0xBC
	.byte 0xD0, 0x58, 0xCE, 0x8D, 0x8C, 0xF5, 0xEB, 0xF0, 0x42, 0x49, 0x0B, 0x9D, 0x97, 0x27, 0x67, 0x32
	.byte 0x6E, 0xE1, 0xAE, 0x93, 0x15, 0x1C, 0x70, 0xBC, 0x20, 0x4D, 0x2F, 0x18, 0xDE, 0x92, 0x88, 0xE8
	.byte 0x6C, 0x85, 0x57, 0x11, 0x1A, 0xE9, 0x7E, 0xE3, 0x26, 0x11, 0x54, 0xA2, 0x45, 0x96, 0x55, 0x83
	.byte 0xCA, 0x30, 0x89, 0xE8, 0xDC, 0xD8, 0xA3, 0xED, 0x2A, 0x80, 0x3F, 0x7F, 0x79, 0x65, 0x57, 0x3E
	.byte 0x15, 0x20, 0x66, 0x08, 0x2F, 0x95, 0x93, 0xBF, 0xAA, 0x47, 0x2F, 0xA8, 0x46, 0x97, 0xF0, 0x12
	.byte 0xE2, 0xFE, 0xC2, 0x0A, 0x2B, 0x51, 0xE6, 0x76, 0xE6, 0xB7, 0x46, 0xB7, 0xE2, 0x0D, 0xA6, 0xCC
	.byte 0xA8, 0xC3, 0x4C, 0x59, 0x55, 0x89, 0xE6, 0xE8, 0x53, 0x5C, 0x1C, 0xEA, 0x9D, 0xF0, 0x62, 0x16
	.byte 0x0B, 0xA7, 0xC9, 0x5F, 0x0C, 0xF0, 0xDE, 0xC2, 0x76, 0xCE, 0xAF, 0xF7, 0x6A, 0xF2, 0xFA, 0x41
	.byte 0xA6, 0xA2, 0x33, 0x14, 0xC9, 0xE5, 0x7A, 0x63, 0xD3, 0x9E, 0x62, 0x37, 0xD5, 0x85, 0x65, 0x9E
	.byte 0x0E, 0xE6, 0x53, 0x24, 0x74, 0x1B, 0x5E, 0x1D, 0x12, 0x53, 0x5B, 0xC7, 0x2C, 0xE7, 0x83, 0x49
	.byte 0x3B, 0x15, 0xAE, 0x8A, 0x68, 0xB9, 0x57, 0x97

    .global DAT_overlay_11_021679e8
DAT_overlay_11_021679e8: ; 0x021679E8
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_021679ec
ptr_null_overlay_11_021679ec: ; 0x021679EC
	.word s_US_VeriSign_Inc_Class_3_Publ_overlay_11_02167a00
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167a44
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021679e8

    .global s_US_VeriSign_Inc_Class_3_Publ_overlay_11_02167a00
s_US_VeriSign_Inc_Class_3_Publ_overlay_11_02167a00: ; 0x02167A00
	.asciz "US, VeriSign, Inc., Class 3 Public Primary Certification Authority"

    .global DAT_overlay_11_02167A43
DAT_overlay_11_02167A43:
	.byte 0x00

    .global DAT_overlay_11_02167a44
DAT_overlay_11_02167a44: ; 0x02167A44
	.byte 0xC9, 0x5C, 0x59, 0x9E, 0xF2, 0x1B, 0x8A, 0x01, 0x14, 0xB4, 0x10, 0xDF
	.byte 0x04, 0x40, 0xDB, 0xE3, 0x57, 0xAF, 0x6A, 0x45, 0x40, 0x8F, 0x84, 0x0C, 0x0B, 0xD1, 0x33, 0xD9
	.byte 0xD9, 0x11, 0xCF, 0xEE, 0x02, 0x58, 0x1F, 0x25, 0xF7, 0x2A, 0xA8, 0x44, 0x05, 0xAA, 0xEC, 0x03
	.byte 0x1F, 0x78, 0x7F, 0x9E, 0x93, 0xB9, 0x9A, 0x00, 0xAA, 0x23, 0x7D, 0xD6, 0xAC, 0x85, 0xA2, 0x63
	.byte 0x45, 0xC7, 0x72, 0x27, 0xCC, 0xF4, 0x4C, 0xC6, 0x75, 0x71, 0xD2, 0x39, 0xEF, 0x4F, 0x42, 0xF0
	.byte 0x75, 0xDF, 0x0A, 0x90, 0xC6, 0x8E, 0x20, 0x6F, 0x98, 0x0F, 0xF8, 0xAC, 0x23, 0x5F, 0x70, 0x29
	.byte 0x36, 0xA4, 0xC9, 0x86, 0xE7, 0xB1, 0x9A, 0x20, 0xCB, 0x53, 0xA5, 0x85, 0xE7, 0x3D, 0xBE, 0x7D
	.byte 0x9A, 0xFE, 0x24, 0x45, 0x33, 0xDC, 0x76, 0x15, 0xED, 0x0F, 0xA2, 0x71, 0x64, 0x4C, 0x65, 0x2E
	.byte 0x81, 0x68, 0x45, 0xA7

    .global DAT_overlay_11_02167ac4
DAT_overlay_11_02167ac4: ; 0x02167AC4
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_02167ac8
ptr_null_overlay_11_02167ac8: ; 0x02167AC8
	.word s_US_RSA_Data_Security_Inc_Sec_overlay_11_02167adc
	.byte 0x7D, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167b20
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167ac4

    .global s_US_RSA_Data_Security_Inc_Sec_overlay_11_02167adc
s_US_RSA_Data_Security_Inc_Sec_overlay_11_02167adc: ; 0x02167ADC
	.asciz "US, RSA Data Security, Inc., Secure Server Certification Authority"

    .global DAT_overlay_11_02167B1F
DAT_overlay_11_02167B1F:
	.byte 0x00

    .global DAT_overlay_11_02167b20
DAT_overlay_11_02167b20: ; 0x02167B20
	.byte 0x92, 0xCE, 0x7A, 0xC1, 0xAE, 0x83, 0x3E, 0x5A, 0xAA, 0x89, 0x83, 0x57, 0xAC, 0x25, 0x01, 0x76
	.byte 0x0C, 0xAD, 0xAE, 0x8E, 0x2C, 0x37, 0xCE, 0xEB, 0x35, 0x78, 0x64, 0x54, 0x03, 0xE5, 0x84, 0x40
	.byte 0x51, 0xC9, 0xBF, 0x8F, 0x08, 0xE2, 0x8A, 0x82, 0x08, 0xD2, 0x16, 0x86, 0x37, 0x55, 0xE9, 0xB1
	.byte 0x21, 0x02, 0xAD, 0x76, 0x68, 0x81, 0x9A, 0x05, 0xA2, 0x4B, 0xC9, 0x4B, 0x25, 0x66, 0x22, 0x56
	.byte 0x6C, 0x88, 0x07, 0x8F, 0xF7, 0x81, 0x59, 0x6D, 0x84, 0x07, 0x65, 0x70, 0x13, 0x71, 0x76, 0x3E
	.byte 0x9B, 0x77, 0x4C, 0xE3, 0x50, 0x89, 0x56, 0x98, 0x48, 0xB9, 0x1D, 0xA7, 0x29, 0x1A, 0x13, 0x2E
	.byte 0x4A, 0x11, 0x59, 0x9C, 0x1E, 0x15, 0xD5, 0x49, 0x54, 0x2C, 0x73, 0x3A, 0x69, 0x82, 0xB1, 0x97
	.byte 0x39, 0x9C, 0x6D, 0x70, 0x67, 0x48, 0xE5, 0xDD, 0x2D, 0xD6, 0xC8, 0x1E, 0x7B, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02167ba0
DAT_overlay_11_02167ba0: ; 0x02167BA0
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_null_overlay_11_02167ba4
ptr_null_overlay_11_02167ba4: ; 0x02167BA4
	.word s_GlobalSign_Root_CA_R2_GlobalS_overlay_11_02167bb8
	.byte 0x00, 0x01, 0x00, 0x00
	.word DAT_overlay_11_02167be8
	.byte 0x03, 0x00, 0x00, 0x00
	.word DAT_overlay_11_02167ba0

    .global s_GlobalSign_Root_CA_R2_GlobalS_overlay_11_02167bb8
s_GlobalSign_Root_CA_R2_GlobalS_overlay_11_02167bb8: ; 0x02167BB8
	.asciz "GlobalSign Root CA - R2, GlobalSign, GlobalSign"

    .global DAT_overlay_11_02167be8
DAT_overlay_11_02167be8: ; 0x02167BE8
	.byte 0xA6, 0xCF, 0x24, 0x0E, 0xBE, 0x2E, 0x6F, 0x28
	.byte 0x99, 0x45, 0x42, 0xC4, 0xAB, 0x3E, 0x21, 0x54, 0x9B, 0x0B, 0xD3, 0x7F, 0x84, 0x70, 0xFA, 0x12
	.byte 0xB3, 0xCB, 0xBF, 0x87, 0x5F, 0xC6, 0x7F, 0x86, 0xD3, 0xB2, 0x30, 0x5C, 0xD6, 0xFD, 0xAD, 0xF1
	.byte 0x7B, 0xDC, 0xE5, 0xF8, 0x60, 0x96, 0x09, 0x92, 0x10, 0xF5, 0xD0, 0x53, 0xDE, 0xFB, 0x7B, 0x7E
	.byte 0x73, 0x88, 0xAC, 0x52, 0x88, 0x7B, 0x4A, 0xA6, 0xCA, 0x49, 0xA6, 0x5E, 0xA8, 0xA7, 0x8C, 0x5A
	.byte 0x11, 0xBC, 0x7A, 0x82, 0xEB, 0xBE, 0x8C, 0xE9, 0xB3, 0xAC, 0x96, 0x25, 0x07, 0x97, 0x4A, 0x99
	.byte 0x2A, 0x07, 0x2F, 0xB4, 0x1E, 0x77, 0xBF, 0x8A, 0x0F, 0xB5, 0x02, 0x7C, 0x1B, 0x96, 0xB8, 0xC5
	.byte 0xB9, 0x3A, 0x2C, 0xBC, 0xD6, 0x12, 0xB9, 0xEB, 0x59, 0x7D, 0xE2, 0xD0, 0x06, 0x86, 0x5F, 0x5E
	.byte 0x49, 0x6A, 0xB5, 0x39, 0x5E, 0x88, 0x34, 0xEC, 0xBC, 0x78, 0x0C, 0x08, 0x98, 0x84, 0x6C, 0xA8
	.byte 0xCD, 0x4B, 0xB4, 0xA0, 0x7D, 0x0C, 0x79, 0x4D, 0xF0, 0xB8, 0x2D, 0xCB, 0x21, 0xCA, 0xD5, 0x6C
	.byte 0x5B, 0x7D, 0xE1, 0xA0, 0x29, 0x84, 0xA1, 0xF9, 0xD3, 0x94, 0x49, 0xCB, 0x24, 0x62, 0x91, 0x20
	.byte 0xBC, 0xDD, 0x0B, 0xD5, 0xD9, 0xCC, 0xF9, 0xEA, 0x27, 0x0A, 0x2B, 0x73, 0x91, 0xC6, 0x9D, 0x1B
	.byte 0xAC, 0xC8, 0xCB, 0xE8, 0xE0, 0xA0, 0xF4, 0x2F, 0x90, 0x8B, 0x4D, 0xFB, 0xB0, 0x36, 0x1B, 0xF6
	.byte 0x19, 0x7A, 0x85, 0xE0, 0x6D, 0xF2, 0x61, 0x13, 0x88, 0x5C, 0x9F, 0xE0, 0x93, 0x0A, 0x51, 0x97
	.byte 0x8A, 0x5A, 0xCE, 0xAF, 0xAB, 0xD5, 0xF7, 0xAA, 0x09, 0xAA, 0x60, 0xBD, 0xDC, 0xD9, 0x5F, 0xDF
	.byte 0x72, 0xA9, 0x60, 0x13, 0x5E, 0x00, 0x01, 0xC9, 0x4A, 0xFA, 0x3F, 0xA4, 0xEA, 0x07, 0x03, 0x21
	.byte 0x02, 0x8E, 0x82, 0xCA, 0x03, 0xC2, 0x9B, 0x8F

    .bss

    .global OVERLAY11_BSS_02169B40
OVERLAY11_BSS_02169B40: ; 0x02169B40
    .space 0x18

    .global OVERLAY11_BSS_02169B58
OVERLAY11_BSS_02169B58: ; 0x02169B58
    .space 0xEC

    .global OVERLAY11_BSS_02169C44
OVERLAY11_BSS_02169C44: ; 0x02169C44
    .space 0x8

    .global OVERLAY11_BSS_02169C4C
OVERLAY11_BSS_02169C4C: ; 0x02169C4C
    .space 0x4

    .global OVERLAY11_BSS_02169C50
OVERLAY11_BSS_02169C50: ; 0x02169C50
    .space 0x4

    .global OVERLAY11_BSS_02169C54
OVERLAY11_BSS_02169C54: ; 0x02169C54
    .space 0x4

    .global OVERLAY11_BSS_02169C58
OVERLAY11_BSS_02169C58: ; 0x02169C58
    .space 0xC

    .global OVERLAY11_BSS_02169C64
OVERLAY11_BSS_02169C64: ; 0x02169C64
    .space 0x4

    .global OVERLAY11_BSS_02169C68
OVERLAY11_BSS_02169C68: ; 0x02169C68
    .space 0x8

    .global OVERLAY11_BSS_02169C70
OVERLAY11_BSS_02169C70: ; 0x02169C70
    .space 0x4

    .global OVERLAY11_BSS_02169C74
OVERLAY11_BSS_02169C74: ; 0x02169C74
    .space 0x8

    .global OVERLAY11_BSS_02169C7C
OVERLAY11_BSS_02169C7C: ; 0x02169C7C
    .space 0xC

    .global OVERLAY11_BSS_02169C88
OVERLAY11_BSS_02169C88: ; 0x02169C88
    .space 0xC

    .global OVERLAY11_BSS_02169C94
OVERLAY11_BSS_02169C94: ; 0x02169C94
    .space 0x14

    .global OVERLAY11_BSS_02169CA8
OVERLAY11_BSS_02169CA8: ; 0x02169CA8
    .space 0x8

    .global OVERLAY11_BSS_02169CB0
OVERLAY11_BSS_02169CB0: ; 0x02169CB0
    .space 0x4

    .global OVERLAY11_BSS_02169CB4
OVERLAY11_BSS_02169CB4: ; 0x02169CB4
    .space 0x14

    .global OVERLAY11_BSS_02169CC8
OVERLAY11_BSS_02169CC8: ; 0x02169CC8
    .space 0x4

    .global OVERLAY11_BSS_02169CCC
OVERLAY11_BSS_02169CCC: ; 0x02169CCC
    .space 0x4

    .global OVERLAY11_BSS_02169CD0
OVERLAY11_BSS_02169CD0: ; 0x02169CD0
    .space 0x14

    .global OVERLAY11_BSS_02169CE4
OVERLAY11_BSS_02169CE4: ; 0x02169CE4
    .space 0x1C

    .global OVERLAY11_BSS_02169D00
OVERLAY11_BSS_02169D00: ; 0x02169D00
    .space 0x48

    .global OVERLAY11_BSS_02169D48
OVERLAY11_BSS_02169D48: ; 0x02169D48
    .space 0x14

    .global OVERLAY11_BSS_02169D5C
OVERLAY11_BSS_02169D5C: ; 0x02169D5C
    .space 0x4

    .global OVERLAY11_BSS_02169D60
OVERLAY11_BSS_02169D60: ; 0x02169D60
    .space 0xC

    .global OVERLAY11_BSS_02169D6C
OVERLAY11_BSS_02169D6C: ; 0x02169D6C
    .space 0x5

    .global OVERLAY11_BSS_02169D71
OVERLAY11_BSS_02169D71: ; 0x02169D71
    .space 0x1

    .global OVERLAY11_BSS_02169D72
OVERLAY11_BSS_02169D72: ; 0x02169D72
    .space 0x4

    .global OVERLAY11_BSS_02169D76
OVERLAY11_BSS_02169D76: ; 0x02169D76
    .space 0x2

    .global OVERLAY11_BSS_02169D78
OVERLAY11_BSS_02169D78: ; 0x02169D78
    .space 0x8

    .global OVERLAY11_BSS_02169D80
OVERLAY11_BSS_02169D80: ; 0x02169D80
    .space 0x20
