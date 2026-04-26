    .include "macros.inc"
    .include "include/overlay_25_0211C9E0.inc"

    .text

	arm_func_start _ZN15CStaffrollSceneC1Ev
_ZN15CStaffrollSceneC1Ev: ; 0x0211C9E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN6CSceneC2Ev
	ldr r0, _0211CA20 ; =PTR_LAB_overlay_25_0211ca24_overlay_25_0211fc70
	mov r1, #0
	stmia r4, {r0, r1}
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	str r1, [r4, #0x18]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	str r1, [r4, #0x24]
	str r1, [r4, #0x2c]
	mov r0, r4
	str r1, [r4, #0x30]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CA20: .word PTR_LAB_overlay_25_0211ca24_overlay_25_0211fc70
	arm_func_end _ZN15CStaffrollSceneC1Ev

	arm_func_start ov25_0211CA24
ov25_0211CA24: ; 0x0211CA24
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov25_0211CA24

	arm_func_start ov25_0211CA38
ov25_0211CA38: ; 0x0211CA38
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov25_0211CA38

	arm_func_start ov25_0211CA54
ov25_0211CA54: ; 0x0211CA54
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sb, r0
	ldr r0, [sb, #4]
	cmp r0, #2
	beq _0211CB70
	mov sl, #4
	ldr r8, _0211CEC4 ; =DAT_overlay_25_0211fb08
	ldr r4, _0211CEC8 ; =s_game
	mov r7, #0
	mov r5, #2
	mov fp, sl
	mov r6, #5
	arm_func_end ov25_0211CA54
_0211CA88:
	ldrh r1, [r8]
	ldr r0, [sb, #0x2c]
	cmp r1, r0
	bne _0211CB60
	ldrb r0, [r8, #2]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211CB60
_0211CAA8: ; jump table
	b _0211CABC ; case 0
	b _0211CAE0 ; case 1
	b _0211CAF0 ; case 2
	b _0211CAFC ; case 3
	b _0211CB58 ; case 4
_0211CABC:
	ldr r0, [r8, #8]
	ldr r3, [r8, #4]
	mov r2, r6
	stmia sp, {r0, r3}
	str r0, [sp, #8]
	ldrsb r1, [r8, #3]
	ldr r0, [sb, #0x24]
	bl ov25_0211F048
	b _0211CB60
_0211CAE0:
	ldr r0, [sb, #0x24]
	ldmib r8, {r1, r2}
	bl ov25_0211F16C
	b _0211CB60
_0211CAF0:
	ldr r0, [r8, #4]
	str r0, [sb, #0xc]
	b _0211CB60
_0211CAFC:
	str r5, [sb, #4]
	ldr r0, [r4]
	ldr r1, [r8, #8]
	add r0, r0, #0x1000
	mov r2, r1, lsl #0x10
	ldr r0, [r0, #0x4bc]
	mov r1, sl
	mov r2, r2, lsr #0x10
	bl sub_0200E0E0
	ldr r0, [r4]
	ldr r1, [r8, #8]
	add r0, r0, #0x1000
	mov r2, r1, lsl #0x10
	ldr r0, [r0, #0x4c0]
	mov r1, fp
	mov r2, r2, lsr #0x10
	bl sub_0200E0E0
	ldr r0, [r4]
	ldr r1, [r8, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B58
	b _0211CB60
_0211CB58:
	ldr r0, [sb, #0x28]
	bl ov25_0211FA54
_0211CB60:
	add r7, r7, #1
	cmp r7, #0x14
	add r8, r8, #0x10
	blo _0211CA88
_0211CB70:
	ldr r1, [sb, #0x2c]
	ldr r0, _0211CEC8 ; =s_game
	add r1, r1, #1
	str r1, [sb, #0x2c]
	ldr r0, [r0]
	ldr r1, [sb, #4]
	add r0, r0, #0x1000
	ldr r2, [r0, #0x4a0]
	cmp r1, #0
	ldr r7, [r2, #8]
	beq _0211CBB0
	cmp r1, #1
	beq _0211CC20
	cmp r1, #2
	beq _0211CDCC
	b _0211CEA8
_0211CBB0:
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CC20
	ldr r0, _0211CEC8 ; =s_game
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CC20
	mov r0, #1
	str r0, [sb, #4]
	mov r1, #0
	ldr r0, _0211CEC8 ; =s_game
	str r1, [sb, #8]
	ldr r0, [r0]
	mov r1, #0x3b
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	ldr r0, _0211CEC8 ; =s_game
	mov r1, #0x13
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
_0211CC20:
	ldr r1, [sb, #8]
	ldr r0, [sb, #0xc]
	mov r4, r1, asr #0xc
	add r0, r1, r0
	mov r5, r0, asr #0xc
	str r0, [sb, #8]
	cmp r5, r1, asr #12
	beq _0211CD48
	ldr r0, [sb, #0x14]
	mov r2, r5
	mov r1, #0
	bl ov25_0211DD30
	ldr r0, [sb, #0x10]
	add r2, r5, #0xc0
	mov r1, #0
	bl ov25_0211DD30
	mov r1, r5, asr #4
	cmp r1, r4, asr #4
	beq _0211CD48
	ldr r0, [sb, #0x18]
	sub r8, r1, #1
	sub r4, r1, #0xd
	bl sub_02021628
	mov r6, r0
	cmp r8, #0
	blt _0211CCE4
	cmp r8, r6
	bge _0211CCC0
	ldr r0, [sb, #0x18]
	mov r1, r8
	bl sub_020215F8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sb, #0x10]
	add r2, r5, #0x180
	mov r1, #0x80
	mov r3, #3
	bl ov25_0211DBBC
	b _0211CCE4
_0211CCC0:
	ldr r1, _0211CECC ; =DAT_overlay_25_0211fc9c
	mov r0, #2
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sb, #0x10]
	add r2, r5, #0x180
	mov r1, #0x80
	mov r3, #3
	bl ov25_0211DBBC
_0211CCE4:
	cmp r4, #0
	blt _0211CD48
	cmp r4, r6
	bge _0211CD24
	ldr r0, [sb, #0x18]
	mov r1, r4
	bl sub_020215F8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sb, #0x14]
	add r2, r5, #0xc0
	mov r1, #0x80
	mov r3, #3
	bl ov25_0211DBBC
	b _0211CD48
_0211CD24:
	ldr r1, _0211CECC ; =DAT_overlay_25_0211fc9c
	mov r0, #2
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sb, #0x14]
	add r2, r5, #0xc0
	mov r1, #0x80
	mov r3, #3
	bl ov25_0211DBBC
_0211CD48:
	cmp r7, #0x45
	bne _0211CEA8
	ldr r1, _0211CEC8 ; =s_game
	ldr r0, _0211CED0 ; =0x00000C0B
	ldr r2, [r1]
	ldr r2, [r2, #0x14]
	ldrh r2, [r2, #2]
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211CEA8
	mov r0, #2
	str r0, [sb, #4]
	ldr r0, [r1]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x14
	bl sub_0200E0E0
	ldr r0, _0211CEC8 ; =s_game
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0x14
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	ldr r0, _0211CEC8 ; =s_game
	mov r1, #0x14
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B58
	b _0211CEA8
_0211CDCC:
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CEA8
	ldr r0, _0211CEC8 ; =s_game
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CEA8
	cmp r7, #0x45
	addge sp, sp, #0x1c
	movge r0, #1
	ldmgeia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _0211CED4 ; =s_c000First_0208ac1c
	ldr r8, _0211CED8 ; =MAIN_BSS_020B26A0
	ldr r0, [r1, #0x7a4]
	ldr r2, [r1, #0x7a0]
	mov r4, r0, lsl #0xc
	ldr r0, _0211CEC8 ; =s_game
	mov r5, r2, lsl #0xc
	ldr r6, [r1, #0x79c]
	ldrb r7, [r8, #2]
	ldr r0, [r0]
	mov r3, r5, asr #0xc
	mov r2, r4, asr #0xc
	mov r1, #0
	strb r7, [r8, #1]
	strh r6, [r8, #0x1a]
	strh r3, [r8, #0x1c]
	strh r2, [r8, #0x1e]
	strh r1, [r8, #0x24]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	bl sub_02018E30
	ldr r0, _0211CEC8 ; =s_game
	mov r1, #0x45
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E94
	ldr r0, _0211CEC8 ; =s_game
	mov r2, #0x45
	ldr r1, [r0]
	add sp, sp, #0x1c
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4a0]
	mov r0, #0x18
	str r2, [r1, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211CEA8:
	ldr r0, [sb, #0x24]
	bl ov25_0211E1B0
	ldr r0, [sb, #0x28]
	bl ov25_0211F890
	mvn r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211CEC4: .word DAT_overlay_25_0211fb08
_0211CEC8: .word s_game
_0211CECC: .word DAT_overlay_25_0211fc9c
_0211CED0: .word 0x00000C0B
_0211CED4: .word s_c000First_0208ac1c
_0211CED8: .word MAIN_BSS_020B26A0

	arm_func_start ov25_0211CEDC
ov25_0211CEDC: ; 0x0211CEDC
	ldr ip, _0211CEE8 ; =ov25_0211FA20
	ldr r0, [r0, #0x28]
	bx ip
	.align 2, 0
_0211CEE8: .word ov25_0211FA20
	arm_func_end ov25_0211CEDC

	arm_func_start ov25_0211CEEC
ov25_0211CEEC: ; 0x0211CEEC
	bx lr
	arm_func_end ov25_0211CEEC

	arm_func_start ov25_0211CEF0
ov25_0211CEF0: ; 0x0211CEF0
	ldr ip, _0211CEF8 ; =FUN_02007D98
	bx ip
	.align 2, 0
_0211CEF8: .word sub_02007D98
	arm_func_end ov25_0211CEF0

	arm_func_start ov25_0211CEFC
ov25_0211CEFC: ; 0x0211CEFC
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
	ldr r0, _0211D07C ; =0x000001FF
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
	ldr r1, _0211D080 ; =0x07000400
	mov r2, #0x400
	bl MIi_CpuClearFast
	mov r0, #0
	ldr r1, _0211D084 ; =0x05000400
	mov r2, #0x400
	bl MIi_CpuClearFast
	mov r0, #0
	bl GX_SetBankForTex
	mov r0, #0
	bl GX_SetBankForTexPltt
	mov r0, #0
	bl GX_SetBankForOBJ
	mov r0, #3
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #0
	mov r2, r1
	bl GX_SetGraphicsMode
	mov r0, #0x10
	bl GX_SetBankForBGExtPltt
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, #8
	bl GX_SetBankForSubOBJ
	mov r0, #0x80
	bl GX_SetBankForSubBGExtPltt
	mov r1, #0
	str r1, [sp]
	ldr r0, _0211D088 ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr lr, _0211D08C ; =0x04000060
	mov r2, #0x4000000
	ldrh r1, [lr]
	add ip, lr, #0x2a4
	ldr r0, _0211D090 ; =0xFFFFFDF1
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
	orr r0, r0, #0x1000
	str r0, [r1]
	bl GX_DispOn
	ldr r1, _0211D094 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211D07C: .word 0x000001FF
_0211D080: .word 0x07000400
_0211D084: .word 0x05000400
_0211D088: .word 0x04000050
_0211D08C: .word 0x04000060
_0211D090: .word 0xFFFFFDF1
_0211D094: .word 0x04001000
	arm_func_end ov25_0211CEFC

	arm_func_start ov25_0211D098
ov25_0211D098: ; 0x0211D098
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x4c
	ldr r1, _0211D38C ; =s_game
	mov sl, r0
	ldr r0, [r1]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r1, #0
	str r1, [sl, #4]
	str r1, [sl, #8]
	ldr r0, _0211D38C ; =s_game
	str r1, [sl, #0xc]
	ldr r0, [r0]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, _0211D38C ; =s_game
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	ldr r0, _0211D38C ; =s_game
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	mov r0, #0x28
	bl _Znwm
	cmp r0, #0
	beq _0211D130
	bl ov25_0211D6D4
	arm_func_end ov25_0211D098
_0211D130:
	str r0, [sl, #0x10]
	mov r0, #0x28
	bl _Znwm
	cmp r0, #0
	beq _0211D148
	bl ov25_0211D6D4
_0211D148:
	ldr r1, _0211D38C ; =s_game
	str r0, [sl, #0x14]
	ldr r1, [r1]
	ldr r0, [sl, #0x10]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4ac]
	add r1, r1, #0x14
	bl ov25_0211D6FC
	ldr r1, _0211D38C ; =s_game
	ldr r0, [sl, #0x14]
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4ac]
	add r1, r1, #0x14
	bl ov25_0211D6FC
	mov r0, #4
	bl _Znwm
	cmp r0, #0
	beq _0211D19C
	ldr r1, _0211D390 ; =s_data_message_etc_staffroll_overlay_25_0211fca0
	bl sub_02021404
_0211D19C:
	str r0, [sl, #0x18]
	mov r0, #0xbc
	bl _Znwm
	movs r4, r0
	beq _0211D1C8
	ldr r1, _0211D394 ; =s_data_font_prs_lc_jp_NCLR_overlay_25_0211fcbc
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov r4, r0
_0211D1C8:
	ldr r0, [r4, #0xb8]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #0xb8]
	mov r1, #0x1e0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GX_LoadBGPltt
	ldr r0, [r4, #0xb8]
	mov r1, #0x1e0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GXS_LoadBGPltt
	cmp r4, #0
	beq _0211D218
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D218:
	mov r0, #0xf
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r0, [sl, #0x10]
	mov r1, #4
	mov r3, #2
	bl ov25_0211D758
	mov r1, #0
	mov r0, #0xf
	stmia sp, {r0, r1}
	ldr r0, [sl, #0x14]
	mov r2, r1
	mov r3, #2
	bl ov25_0211D758
	mov r0, #0
	mov r1, #0x6200000
	mov r2, #0x20
	bl MIi_CpuClearFast
	ldr r2, _0211D398 ; =0x0400000A
	mov r0, #0x30
	ldrh r1, [r2]
	and r1, r1, #0x43
	orr r1, r1, #0x190
	strh r1, [r2]
	ldrh r1, [r2, #2]
	and r1, r1, #0x43
	orr r1, r1, #0x2a0
	strh r1, [r2, #2]
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r2]
	ldrh r1, [r2, #2]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r2, #2]
	bl _Znwm
	cmp r0, #0
	beq _0211D2BC
	bl ov25_0211E0BC
_0211D2BC:
	mov r1, #0x10
	mov r2, #1
	mov r3, #2
	str r0, [sl, #0x24]
	bl ov25_0211E108
	ldr r0, _0211D39C ; =MAIN_BSS_020B26A0
	mov sb, #0
	ldrb r0, [r0]
	mov r1, #0
	ldr r6, _0211D3A0 ; =s_edu_03d_overlay_25_0211fcd8
	cmp r0, #0
	ldr r0, _0211D3A4 ; =PTR_DAT_overlay_25_0211fa88_overlay_25_0211fa80
	movne r1, #1
	ldr r8, [r0, r1, lsl #2]
	ldr fp, _0211D3A8 ; =s_edu_03d_overlay_25_0211fce4
	add r7, sp, #0x2c
	add r5, sp, #0xc
	mov r4, sb
_0211D304:
	ldr r2, [r8, sb, lsl #2]
	mov r0, r7
	mov r1, r6
	bl OS_SPrintf
	ldr r2, [r8, sb, lsl #2]
	mov r0, r5
	mov r1, fp
	bl OS_SPrintf
	str r5, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sl, #0x24]
	ldr r2, _0211D3AC ; =s_ending_overlay_25_0211fcec
	mov r1, sb
	mov r3, r7
	bl ov25_0211EFFC
	add sb, sb, #1
	cmp sb, #0x10
	blt _0211D304
	mov r1, #0
	str r1, [sl, #0x1c]
	str r1, [sl, #0x20]
	mov r0, #0x18
	str r1, [sl, #0x2c]
	bl _Znwm
	cmp r0, #0
	beq _0211D374
	bl ov25_0211F71C
_0211D374:
	str r0, [sl, #0x28]
	bl ov25_0211F750
	mov r0, #0
	str r0, [sl, #0x30]
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211D38C: .word s_game
_0211D390: .word s_data_message_etc_staffroll_overlay_25_0211fca0
_0211D394: .word s_data_font_prs_lc_jp_NCLR_overlay_25_0211fcbc
_0211D398: .word 0x0400000A
_0211D39C: .word MAIN_BSS_020B26A0
_0211D3A0: .word s_edu_03d_overlay_25_0211fcd8
_0211D3A4: .word PTR_DAT_overlay_25_0211fa88_overlay_25_0211fa80
_0211D3A8: .word s_edu_03d_overlay_25_0211fce4
_0211D3AC: .word s_ending_overlay_25_0211fcec

	arm_func_start ov25_0211D3B0
ov25_0211D3B0: ; 0x0211D3B0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0211D3D8
	mov r1, #0
	mov r2, r1
	bl ov25_0211DD30
	ldr r0, [r4, #0x14]
	bl ov25_0211DD14
	arm_func_end ov25_0211D3B0
_0211D3D8:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0211D3F8
	mov r1, #0
	mov r2, r1
	bl ov25_0211DD30
	ldr r0, [r4, #0x10]
	bl ov25_0211DD14
_0211D3F8:
	ldr r5, [r4, #0x24]
	cmp r5, #0
	beq _0211D420
	beq _0211D418
	mov r0, r5
	bl ov25_0211E0F4
	mov r0, r5
	bl _ZdlPv
_0211D418:
	mov r0, #0
	str r0, [r4, #0x24]
_0211D420:
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _0211D448
	beq _0211D440
	mov r0, r5
	bl ov25_0211D6E8
	mov r0, r5
	bl _ZdlPv
_0211D440:
	mov r0, #0
	str r0, [r4, #0x10]
_0211D448:
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0211D470
	beq _0211D468
	mov r0, r5
	bl ov25_0211D6E8
	mov r0, r5
	bl _ZdlPv
_0211D468:
	mov r0, #0
	str r0, [r4, #0x14]
_0211D470:
	ldr r0, _0211D4D8 ; =s_game
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AC90Ev
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _0211D4AC
	beq _0211D4A4
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl _ZdlPv
_0211D4A4:
	mov r0, #0
	str r0, [r4, #0x18]
_0211D4AC:
	ldr r5, [r4, #0x28]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0211D4CC
	mov r0, r5
	bl ov25_0211F73C
	mov r0, r5
	bl _ZdlPv
_0211D4CC:
	mov r0, #0
	str r0, [r4, #0x28]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211D4D8: .word s_game

	arm_func_start ov25_0211D4DC
ov25_0211D4DC: ; 0x0211D4DC
	mov r0, #0x1a
	bx lr
	arm_func_end ov25_0211D4DC

	arm_func_start ov25_0211D4E4
ov25_0211D4E4: ; 0x0211D4E4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #0x10]
	bl ov25_0211D5DC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov25_0211D4E4

	arm_func_start ov25_0211D500
ov25_0211D500: ; 0x0211D500
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov25_0211D514
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov25_0211D500

	arm_func_start ov25_0211D514
ov25_0211D514: ; 0x0211D514
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #4]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0211D53C
	mov r0, r4
	bl sub_0201FCB4
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov25_0211D514
_0211D53C:
	mov r0, #0
	str r0, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov25_0211D548
ov25_0211D548: ; 0x0211D548
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211D5D4
_0211D560: ; jump table
	b _0211D5CC ; case 0
	b _0211D5D4 ; case 1
	b _0211D578 ; case 2
	b _0211D5A0 ; case 3
	b _0211D5B8 ; case 4
	b _0211D5CC ; case 5
	arm_func_end ov25_0211D548
_0211D578:
	ldmib r4, {r0, r1, r2}
	bl sub_0201FD4C
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	movge r0, #3
	strgeh r0, [r4]
	b _0211D5D4
_0211D5A0:
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0201FDE8
	mov r0, #4
	strh r0, [r4]
	b _0211D5D4
_0211D5B8:
	ldr r0, [r4, #4]
	bl sub_0201FEBC
	mov r0, #5
	strh r0, [r4]
	b _0211D5D4
_0211D5CC:
	mov r0, #0
	ldmia sp!, {r4, pc}
_0211D5D4:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start ov25_0211D5DC
ov25_0211D5DC: ; 0x0211D5DC
	mov r1, #0
	str r1, [r0, #4]
	strh r1, [r0]
	bx lr
	arm_func_end ov25_0211D5DC

	arm_func_start ov25_0211D5EC
ov25_0211D5EC: ; 0x0211D5EC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r0
	ldr r4, [r8, #4]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r4, #0
	beq _0211D620
	mov r0, r4
	bl sub_0201FCB4
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov25_0211D5EC
_0211D620:
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _0211D638
	ldr r1, [r8, #0x10]
	bl sub_0201FC9C
_0211D638:
	mov r1, r7
	mov r2, r6
	str r0, [r8, #4]
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r8, #4]
	ldr r3, [sp, #0x28]
	mov r1, r5
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r8, #4]
	ldr r3, [sp, #0x2c]
	mov r1, r5
	bl sub_0202055C
	ldr r0, [sp, #0x28]
	mov r2, #0
	stmia sp, {r0, r2}
	str r2, [sp, #8]
	ldr r0, [r8, #4]
	ldr r3, [sp, #0x2c]
	mov r1, r5
	bl sub_020205DC
	ldr r0, [r8, #4]
	bl sub_020204A8
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}

	arm_func_start ov25_0211D6A8
ov25_0211D6A8: ; 0x0211D6A8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #2
	strh r0, [r5]
	ldr r0, [r5, #4]
	mov r4, r2
	bl sub_02020328
	str r4, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov25_0211D6A8

	arm_func_start ov25_0211D6D4
ov25_0211D6D4: ; 0x0211D6D4
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0]
	bx lr
	arm_func_end ov25_0211D6D4

	arm_func_start ov25_0211D6E8
ov25_0211D6E8: ; 0x0211D6E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov25_0211D704
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov25_0211D6E8

	arm_func_start ov25_0211D6FC
ov25_0211D6FC: ; 0x0211D6FC
	str r1, [r0]
	bx lr
	arm_func_end ov25_0211D6FC

	arm_func_start ov25_0211D704
ov25_0211D704: ; 0x0211D704
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0211D724
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #4]
	arm_func_end ov25_0211D704
_0211D724:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211D73C
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #8]
_0211D73C:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x1c]
	ldmia sp!, {r4, pc}

	arm_func_start ov25_0211D758
ov25_0211D758: ; 0x0211D758
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x34]
	bl ov25_0211D704
	mov r0, #0x18
	bl _Znwm
	str r0, [sb, #4]
	mov r0, #0x10
	bl _Znwm
	str r0, [sb, #8]
	str r8, [sb, #0xc]
	str r7, [sb, #0x10]
	mov r4, #0
	ldr r0, [sp, #0x30]
	str r6, [sb, #0x14]
	mov sl, r4
	str r0, [sb, #0x18]
	cmp r8, #7
	addls pc, pc, r8, lsl #2
	b _0211DAE4
_0211D7B8: ; jump table
	b _0211D7D8 ; case 0
	b _0211D83C ; case 1
	b _0211D8A0 ; case 2
	b _0211D900 ; case 3
	b _0211D960 ; case 4
	b _0211D9C4 ; case 5
	b _0211DA28 ; case 6
	b _0211DA88 ; case 7
	arm_func_end ov25_0211D758
_0211D7D8:
	ldr r0, _0211DB9C ; =0x04000008
	mov r3, #0x4000000
	ldrh r1, [r0]
	and r1, r1, #0x43
	orr r1, r1, r7, lsl #8
	orr r1, r1, r6, lsl #2
	orr r1, r1, #0x2000
	strh r1, [r0]
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov r4, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r4, #1
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, r5
	strh r1, [r0]
	bl G2_GetBG0ScrPtr
	mov r4, r0
	bl G2_GetBG0CharPtr
	mov sl, r0
	b _0211DAE4
_0211D83C:
	ldr r0, _0211DBA0 ; =0x0400000A
	mov r3, #0x4000000
	ldrh r1, [r0]
	and r1, r1, #0x43
	orr r1, r1, r7, lsl #8
	orr r1, r1, r6, lsl #2
	orr r1, r1, #0x2000
	strh r1, [r0]
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov r4, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r4, #2
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, r5
	strh r1, [r0]
	bl G2_GetBG1ScrPtr
	mov r4, r0
	bl G2_GetBG1CharPtr
	mov sl, r0
	b _0211DAE4
_0211D8A0:
	ldr r0, _0211DBA4 ; =0x0400000C
	mov r3, #0x4000000
	ldrh r1, [r0]
	and r1, r1, #0x43
	orr r1, r1, r7, lsl #8
	orr r1, r1, r6, lsl #2
	strh r1, [r0]
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov r4, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r4, #4
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, r5
	strh r1, [r0]
	bl G2_GetBG2ScrPtr
	mov r4, r0
	bl G2_GetBG2CharPtr
	mov sl, r0
	b _0211DAE4
_0211D900:
	ldr r0, _0211DBA8 ; =0x0400000E
	mov r3, #0x4000000
	ldrh r1, [r0]
	and r1, r1, #0x43
	orr r1, r1, r7, lsl #8
	orr r1, r1, r6, lsl #2
	strh r1, [r0]
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov r4, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r4, #8
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, r5
	strh r1, [r0]
	bl G2_GetBG3ScrPtr
	mov r4, r0
	bl G2_GetBG3CharPtr
	mov sl, r0
	b _0211DAE4
_0211D960:
	ldr r0, _0211DBAC ; =0x04001008
	ldrh r1, [r0]
	sub r3, r0, #8
	and r1, r1, #0x43
	orr r1, r1, r7, lsl #8
	orr r1, r1, r6, lsl #2
	orr r1, r1, #0x2000
	strh r1, [r0]
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov r4, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r4, #1
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, r5
	strh r1, [r0]
	bl G2S_GetBG0ScrPtr
	mov r4, r0
	bl G2S_GetBG0CharPtr
	mov sl, r0
	b _0211DAE4
_0211D9C4:
	ldr r0, _0211DBB0 ; =0x0400100A
	ldrh r1, [r0]
	sub r3, r0, #0xa
	and r1, r1, #0x43
	orr r1, r1, r7, lsl #8
	orr r1, r1, r6, lsl #2
	orr r1, r1, #0x2000
	strh r1, [r0]
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov r4, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r4, #2
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, r5
	strh r1, [r0]
	bl G2S_GetBG1ScrPtr
	mov r4, r0
	bl G2S_GetBG1CharPtr
	mov sl, r0
	b _0211DAE4
_0211DA28:
	ldr r0, _0211DBB4 ; =0x0400100C
	ldrh r1, [r0]
	sub r3, r0, #0xc
	and r1, r1, #0x43
	orr r1, r1, r7, lsl #8
	orr r1, r1, r6, lsl #2
	strh r1, [r0]
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov r4, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r4, #4
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, r5
	strh r1, [r0]
	bl G2S_GetBG2ScrPtr
	mov r4, r0
	bl G2S_GetBG2CharPtr
	mov sl, r0
	b _0211DAE4
_0211DA88:
	ldr r0, _0211DBB8 ; =0x0400100E
	ldrh r1, [r0]
	sub r3, r0, #0xe
	and r1, r1, #0x43
	orr r1, r1, r7, lsl #8
	orr r1, r1, r6, lsl #2
	strh r1, [r0]
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov r4, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r4, #8
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, r5
	strh r1, [r0]
	bl G2S_GetBG3ScrPtr
	mov r4, r0
	bl G2S_GetBG3CharPtr
	mov sl, r0
_0211DAE4:
	mov r1, r4
	mov r0, #0
	mov r2, #0x800
	bl MIi_CpuClearFast
	mov r0, #4
	str r0, [sp]
	mov r2, #0x20
	ldr r0, [sb, #4]
	mov r1, sl
	mov r3, r2
	bl NNS_G2dCharCanvasInitForBG
	mov r0, r4
	ldr r5, [sb]
	ldmib sb, {r2, r3}
	stmia r3, {r2, r5}
	mov r2, #1
	str r2, [r3, #8]
	mov r2, #3
	str r2, [r3, #0xc]
	mov r1, #0x20
	mov r3, #0
	ldr r4, [sp, #0x30]
	str r3, [sp]
	mov r2, r1
	stmib sp, {r1, r3, r4}
	bl NNS_G2dMapScrToCharText
	mov r0, sb
	bl ov25_0211DD14
	mov r0, #0x800
	mov r1, #4
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r3, [sp, #0x30]
	str r0, [sb, #0x1c]
	mov r4, #0
_0211DB6C:
	ldr r1, [sb, #0x1c]
	orr r2, r4, r3, lsl #12
	mov r0, r4, lsl #1
	add r4, r4, #1
	strh r2, [r1, r0]
	cmp r4, #0x400
	blt _0211DB6C
	mov r0, #0
	str r0, [sb, #0x20]
	str r0, [sb, #0x24]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0211DB9C: .word 0x04000008
_0211DBA0: .word 0x0400000A
_0211DBA4: .word 0x0400000C
_0211DBA8: .word 0x0400000E
_0211DBAC: .word 0x04001008
_0211DBB0: .word 0x0400100A
_0211DBB4: .word 0x0400100C
_0211DBB8: .word 0x0400100E

	arm_func_start ov25_0211DBBC
ov25_0211DBBC: ; 0x0211DBBC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	ldr r6, [sl, #8]
	mov r8, r2
	ldr r4, [r6, #4]
	mov sb, r1
	ldr r1, [r4]
	ldr r0, [sp, #0x34]
	ldrsb r1, [r1, #1]
	ldr r2, [r6, #0xc]
	and r0, r0, #3
	str r3, [sp, #8]
	cmp r0, #1
	and sb, sb, #0xff
	and r8, r8, #0xff
	add r5, r2, r1
	ldr fp, [r6, #8]
	ldr r7, [r4, #4]
	beq _0211DC44
	cmp r0, #2
	beq _0211DC20
	cmp r0, #3
	beq _0211DC34
	b _0211DC44
	arm_func_end ov25_0211DBBC
_0211DC20:
	ldr r2, [sp, #0x30]
	ldmib r6, {r0, r1}
	bl NNSi_G2dFontGetTextWidth
	sub sb, sb, r0, asr #1
	b _0211DC44
_0211DC34:
	ldr r2, [sp, #0x30]
	ldmib r6, {r0, r1}
	bl NNSi_G2dFontGetTextWidth
	sub sb, sb, r0
_0211DC44:
	ldr r0, [sl, #4]
	mov r1, #0
	ldr r3, [r0, #4]
	mov r2, r1
	mov r3, r3, lsl #3
	stmia sp, {r3, r5}
	ldr r6, [r0, #0x14]
	mov r3, r8
	ldr r6, [r6, #8]
	blx r6
	mov r6, sb
_0211DC70:
	add r0, sp, #0x30
	blx r7
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0x5b
	bne _0211DCE0
	add r0, sp, #0x30
	blx r7
	cmp r0, #0x45
	bne _0211DCD0
	ldmib sl, {r0, r2}
	ldr r1, [r0, #4]
	ldr r0, [r2]
	rsb r1, sb, r1, lsl #3
	stmia sp, {r1, r5}
	ldr r1, [r0, #0x14]
	add r8, r8, r5
	ldr ip, [r1, #8]
	mov r1, #0
	mov r2, sb
	mov r3, r8
	mov r6, sb
	blx ip
_0211DCD0:
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	b _0211DC70
_0211DCE0:
	ldr r1, [sp, #8]
	mov r2, r6
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sl, #4]
	mov r1, r4
	mov r3, r8
	bl NNS_G2dCharCanvasDrawChar
	add r0, r6, r0
	add r6, r0, fp
	b _0211DC70
_0211DD0C:
	.byte 0x0C, 0xD0, 0x8D, 0xE2
	.byte 0xF0, 0x8F, 0xBD, 0xE8

	arm_func_start ov25_0211DD14
ov25_0211DD14: ; 0x0211DD14
	ldr r1, [r0, #4]
	ldr ip, _0211DD2C ; =FUN_02067E20
	mov r0, #0
	ldr r1, [r1]
	mov r2, #0x8000
	bx ip
	.align 2, 0
_0211DD2C: .word MIi_CpuClearFast
	arm_func_end ov25_0211DD14

	arm_func_start ov25_0211DD30
ov25_0211DD30: ; 0x0211DD30
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x20]
	and r1, r1, #0xff
	cmp r0, r1, asr #3
	and r2, r2, #0xff
	ldreq r3, [r5, #0x24]
	mov r4, r2, asr #3
	mov ip, r1, asr #3
	cmpeq r4, r3
	strne ip, [r5, #0x20]
	strne r4, [r5, #0x24]
	mov r0, #0
	ldr r3, [r5, #0xc]
	movne r0, #1
	cmp r3, #7
	addls pc, pc, r3, lsl #2
	ldmia sp!, {r4, r5, r6, pc}
_0211DD78: ; jump table
	b _0211DD98 ; case 0
	b _0211DDF8 ; case 1
	b _0211DE58 ; case 2
	b _0211DEB8 ; case 3
	b _0211DF18 ; case 4
	b _0211DF78 ; case 5
	b _0211DFD8 ; case 6
	b _0211E038 ; case 7
	arm_func_end ov25_0211DD30
_0211DD98:
	ldr r3, _0211E098 ; =0x000001FF
	mov ip, r2, lsl #0x1d
	mov r2, r3, lsl #0x10
	and r3, r1, r3
	and r2, r2, ip, lsr #13
	ldr r1, _0211E09C ; =0x04000010
	orr r2, r3, r2
	str r2, [r1]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	rsb r1, r4, #0x20
	mov r6, r1, lsl #6
	ldr r0, [r5, #0x1c]
	mov r2, r6
	add r0, r0, r4, lsl #6
	mov r1, #0
	bl GX_LoadBG0Scr
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x1c]
	mov r1, r6
	mov r2, r4, lsl #6
	bl GX_LoadBG0Scr
	ldmia sp!, {r4, r5, r6, pc}
_0211DDF8:
	ldr r3, _0211E098 ; =0x000001FF
	mov ip, r2, lsl #0x1d
	mov r2, r3, lsl #0x10
	and r3, r1, r3
	and r2, r2, ip, lsr #13
	ldr r1, _0211E0A0 ; =0x04000014
	orr r2, r3, r2
	str r2, [r1]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	rsb r1, r4, #0x20
	mov r6, r1, lsl #6
	ldr r0, [r5, #0x1c]
	mov r2, r6
	add r0, r0, r4, lsl #6
	mov r1, #0
	bl GX_LoadBG1Scr
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x1c]
	mov r1, r6
	mov r2, r4, lsl #6
	bl GX_LoadBG1Scr
	ldmia sp!, {r4, r5, r6, pc}
_0211DE58:
	ldr r3, _0211E098 ; =0x000001FF
	mov ip, r2, lsl #0x1d
	mov r2, r3, lsl #0x10
	and r3, r1, r3
	and r2, r2, ip, lsr #13
	ldr r1, _0211E0A4 ; =0x04000018
	orr r2, r3, r2
	str r2, [r1]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	rsb r1, r4, #0x20
	mov r6, r1, lsl #6
	ldr r0, [r5, #0x1c]
	mov r2, r6
	add r0, r0, r4, lsl #6
	mov r1, #0
	bl GX_LoadBG2Scr
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x1c]
	mov r1, r6
	mov r2, r4, lsl #6
	bl GX_LoadBG2Scr
	ldmia sp!, {r4, r5, r6, pc}
_0211DEB8:
	ldr r3, _0211E098 ; =0x000001FF
	mov ip, r2, lsl #0x1d
	mov r2, r3, lsl #0x10
	and r3, r1, r3
	and r2, r2, ip, lsr #13
	ldr r1, _0211E0A8 ; =0x0400001C
	orr r2, r3, r2
	str r2, [r1]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	rsb r1, r4, #0x20
	mov r6, r1, lsl #6
	ldr r0, [r5, #0x1c]
	mov r2, r6
	add r0, r0, r4, lsl #6
	mov r1, #0
	bl GX_LoadBG3Scr
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x1c]
	mov r1, r6
	mov r2, r4, lsl #6
	bl GX_LoadBG3Scr
	ldmia sp!, {r4, r5, r6, pc}
_0211DF18:
	ldr r3, _0211E098 ; =0x000001FF
	mov ip, r2, lsl #0x1d
	mov r2, r3, lsl #0x10
	and r3, r1, r3
	and r2, r2, ip, lsr #13
	ldr r1, _0211E0AC ; =0x04001010
	orr r2, r3, r2
	str r2, [r1]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	rsb r1, r4, #0x20
	mov r6, r1, lsl #6
	ldr r0, [r5, #0x1c]
	mov r2, r6
	add r0, r0, r4, lsl #6
	mov r1, #0
	bl GXS_LoadBG0Scr
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x1c]
	mov r1, r6
	mov r2, r4, lsl #6
	bl GXS_LoadBG0Scr
	ldmia sp!, {r4, r5, r6, pc}
_0211DF78:
	ldr r3, _0211E098 ; =0x000001FF
	mov ip, r2, lsl #0x1d
	mov r2, r3, lsl #0x10
	and r3, r1, r3
	and r2, r2, ip, lsr #13
	ldr r1, _0211E0B0 ; =0x04001014
	orr r2, r3, r2
	str r2, [r1]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	rsb r1, r4, #0x20
	mov r6, r1, lsl #6
	ldr r0, [r5, #0x1c]
	mov r2, r6
	add r0, r0, r4, lsl #6
	mov r1, #0
	bl GXS_LoadBG1Scr
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x1c]
	mov r1, r6
	mov r2, r4, lsl #6
	bl GXS_LoadBG1Scr
	ldmia sp!, {r4, r5, r6, pc}
_0211DFD8:
	ldr r3, _0211E098 ; =0x000001FF
	mov ip, r2, lsl #0x1d
	mov r2, r3, lsl #0x10
	and r3, r1, r3
	and r2, r2, ip, lsr #13
	ldr r1, _0211E0B4 ; =0x04001018
	orr r2, r3, r2
	str r2, [r1]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	rsb r1, r4, #0x20
	mov r6, r1, lsl #6
	ldr r0, [r5, #0x1c]
	mov r2, r6
	add r0, r0, r4, lsl #6
	mov r1, #0
	bl GXS_LoadBG2Scr
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x1c]
	mov r1, r6
	mov r2, r4, lsl #6
	bl GXS_LoadBG2Scr
	ldmia sp!, {r4, r5, r6, pc}
_0211E038:
	ldr r3, _0211E098 ; =0x000001FF
	mov ip, r2, lsl #0x1d
	mov r2, r3, lsl #0x10
	and r3, r1, r3
	and r2, r2, ip, lsr #13
	ldr r1, _0211E0B8 ; =0x0400101C
	orr r2, r3, r2
	str r2, [r1]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	rsb r1, r4, #0x20
	mov r6, r1, lsl #6
	ldr r0, [r5, #0x1c]
	mov r2, r6
	add r0, r0, r4, lsl #6
	mov r1, #0
	bl GXS_LoadBG3Scr
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x1c]
	mov r1, r6
	mov r2, r4, lsl #6
	bl GXS_LoadBG3Scr
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211E098: .word 0x000001FF
_0211E09C: .word 0x04000010
_0211E0A0: .word 0x04000014
_0211E0A4: .word 0x04000018
_0211E0A8: .word 0x0400001C
_0211E0AC: .word 0x04001010
_0211E0B0: .word 0x04001014
_0211E0B4: .word 0x04001018
_0211E0B8: .word 0x0400101C

	arm_func_start ov25_0211E0BC
ov25_0211E0BC: ; 0x0211E0BC
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	str r1, [r0, #0x14]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	bx lr
	arm_func_end ov25_0211E0BC

	arm_func_start ov25_0211E0F4
ov25_0211E0F4: ; 0x0211E0F4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov25_0211E174
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov25_0211E0F4

	arm_func_start ov25_0211E108
ov25_0211E108: ; 0x0211E108
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, _0211E16C ; =ov25_0211D500
	mov r6, r1
	mov r4, r3
	mov r7, r0
	mov r5, r2
	ldr r3, _0211E170 ; =ov25_0211D4E4
	mov r0, r6
	str ip, [sp]
	mov r1, #0x14
	mov r2, #8
	bl __cxa_vec_new
	stmia r7, {r0, r6}
	mov r0, #0
	str r0, [r7, #8]
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	str r0, [r7, #0x18]
	str r0, [r7, #0x14]
	str r0, [r7, #0x1c]
	str r5, [r7, #0x20]
	str r4, [r7, #0x24]
	str r0, [r7, #0x28]
	str r0, [r7, #0x2c]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211E16C: .word ov25_0211D500
_0211E170: .word ov25_0211D4E4
	arm_func_end ov25_0211E108

	arm_func_start ov25_0211E174
ov25_0211E174: ; 0x0211E174
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0211E1A0
	ldr r3, _0211E1AC ; =ov25_0211D500
	mov r1, #0x14
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4]
	arm_func_end ov25_0211E174
_0211E1A0:
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211E1AC: .word ov25_0211D500

	arm_func_start ov25_0211E1B0
ov25_0211E1B0: ; 0x0211E1B0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov sb, r0
	ldr r0, [sb, #0x28]
	mov r4, #0
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0x20]
	cmp r0, #3
	movle r8, #1
	ldr r0, [sb, #0x2c]
	movgt r8, #0
	cmp r0, #0
	beq _0211E1F8
	bl ov25_0211D548
	cmp r0, #0
	moveq r0, r4
	streq r0, [sb, #0x2c]
	movne r4, #1
	arm_func_end ov25_0211E1B0
_0211E1F8:
	ldr r0, [sb, #8]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211EFE0
_0211E208: ; jump table
	b _0211EFE0 ; case 0
	b _0211E218 ; case 1
	b _0211EFE0 ; case 2
	b _0211EA70 ; case 3
_0211E218:
	cmp r4, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, [sb, #0x28]
	mov r0, sb
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x20]
	bl ov25_0211F1D4
	ldr r0, [sb, #0xc]
	add r6, r0, #1
	str r6, [sb, #0xc]
	ldr r7, [sb, #0x18]
	cmp r6, r7
	blt _0211E304
	cmp r8, #0
	mov r1, #0
	beq _0211E278
	ldr r0, _0211EFE8 ; =0x04000050
	strh r1, [r0]
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0xe000
	str r0, [r1]
	b _0211E290
_0211E278:
	ldr r0, _0211EFEC ; =0x04001050
	strh r1, [r0]
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0xe000
	str r0, [r1]
_0211E290:
	ldr r0, [sb, #0x28]
	mov r2, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	mov r0, sb
	mov r3, r2
	bl ov25_0211F5CC
	ldr r0, [sb, #0x28]
	mov r2, #0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	mov r0, sb
	mov r3, r2
	bl ov25_0211F5CC
	ldr r0, [sb, #0x28]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	mov r0, sb
	bl ov25_0211F344
	mov r0, #2
	add sp, sp, #4
	str r0, [sb, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E304:
	mov r1, r7
	mov r0, r6, lsl #4
	bl _s32_div_f
	mov sl, r0
	mov r1, r7
	mov r0, r6, lsl #8
	rsb r4, sl, #0x10
	bl _s32_div_f
	mov r1, #0xc0
	mov r5, r0
	mul r0, r6, r1
	mov r1, r7
	bl _s32_div_f
	ldr r1, [sb, #0x10]
	mov r6, r0
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211E368
_0211E34C: ; jump table
	b _0211E368 ; case 0
	b _0211E3BC ; case 1
	b _0211E4A8 ; case 2
	b _0211E624 ; case 3
	b _0211E78C ; case 4
	b _0211E908 ; case 5
	b _0211E410 ; case 6
_0211E368:
	ldr r0, [sb, #0x28]
	cmp r8, #0
	mov r2, #1
	add r0, sb, r0, lsl #2
	beq _0211E39C
	ldr r1, [r0, #0x20]
	ldr r0, _0211EFE8 ; =0x04000050
	and r1, r1, #3
	mov r1, r2, lsl r1
	rsb r2, r4, #0
	bl G2x_SetBlendBrightness_
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E39C:
	ldr r1, [r0, #0x20]
	ldr r0, _0211EFEC ; =0x04001050
	and r1, r1, #3
	mov r1, r2, lsl r1
	rsb r2, r4, #0
	bl G2x_SetBlendBrightness_
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E3BC:
	ldr r0, [sb, #0x28]
	cmp r8, #0
	mov r2, #1
	add r0, sb, r0, lsl #2
	beq _0211E3F0
	ldr r1, [r0, #0x20]
	ldr r0, _0211EFE8 ; =0x04000050
	and r1, r1, #3
	mov r1, r2, lsl r1
	mov r2, r4
	bl G2x_SetBlendBrightness_
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E3F0:
	ldr r1, [r0, #0x20]
	ldr r0, _0211EFEC ; =0x04001050
	and r1, r1, #3
	mov r1, r2, lsl r1
	mov r2, r4
	bl G2x_SetBlendBrightness_
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E410:
	cmp r8, #0
	ldr r0, [sb, #0x28]
	mov r2, #1
	beq _0211E464
	cmp r0, #0
	moveq r1, #1
	movne r1, #0
	str sl, [sp]
	add r1, sb, r1, lsl #2
	add r0, sb, r0, lsl #2
	ldr r1, [r1, #0x20]
	ldr r0, [r0, #0x20]
	and r1, r1, #3
	and r0, r0, #3
	mov r1, r2, lsl r1
	mov r2, r2, lsl r0
	ldr r0, _0211EFE8 ; =0x04000050
	mov r3, r4
	bl G2x_SetBlendAlpha_
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E464:
	cmp r0, #0
	moveq r1, #1
	movne r1, #0
	str sl, [sp]
	add r1, sb, r1, lsl #2
	add r0, sb, r0, lsl #2
	ldr r1, [r1, #0x20]
	ldr r0, [r0, #0x20]
	and r1, r1, #3
	and r0, r0, #3
	mov r1, r2, lsl r1
	mov r2, r2, lsl r0
	ldr r0, _0211EFEC ; =0x04001050
	mov r3, r4
	bl G2x_SetBlendAlpha_
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E4A8:
	ldr r0, [sb, #0x28]
	mov r2, r5
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	mov r0, sb
	mov r3, #0
	bl ov25_0211F5CC
	ldr r0, [sb, #0x28]
	rsb r4, r5, #0x100
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	mov r0, sb
	rsb r2, r4, #0
	mov r3, #0
	bl ov25_0211F5CC
	cmp r8, #0
	mov r5, #1
	beq _0211E590
	mov r1, #0x4000000
	ldr r0, [r1]
	add sp, sp, #4
	bic r0, r0, #0xe000
	orr r0, r0, #0x2000
	str r0, [r1]
	ldr r0, [sb, #0x28]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	ldr r0, _0211EFF0 ; =0x04000048
	and r1, r1, #3
	ldrh r2, [r0]
	mvn r1, r5, lsl r1
	bic r2, r2, #0x3f
	and r1, r1, #0x1f
	orr r1, r2, r1
	strh r1, [r0]
	ldr r1, [sb, #0x28]
	ldrh r3, [r0, #2]
	add r1, sb, r1, lsl #2
	ldr r2, [r1, #0x20]
	mov r1, r4, lsl #8
	and r2, r2, #3
	mvn r2, r5, lsl r2
	and r1, r1, #0xff00
	bic r3, r3, #0x3f
	and r2, r2, #0x1f
	orr r2, r3, r2
	strh r2, [r0, #2]
	orr r1, r1, #0xff
	strh r1, [r0, #-8]
	mov r1, #0xbf
	strh r1, [r0, #-4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E590:
	ldr r1, _0211EFF4 ; =0x04001000
	add sp, sp, #4
	ldr r0, [r1]
	bic r0, r0, #0xe000
	orr r0, r0, #0x2000
	str r0, [r1]
	ldr r0, [sb, #0x28]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	ldr r0, _0211EFF8 ; =0x04001048
	and r1, r1, #3
	ldrh r2, [r0]
	mvn r1, r5, lsl r1
	bic r2, r2, #0x3f
	and r1, r1, #0x1f
	orr r1, r2, r1
	strh r1, [r0]
	ldr r1, [sb, #0x28]
	ldrh r3, [r0, #2]
	add r1, sb, r1, lsl #2
	ldr r2, [r1, #0x20]
	mov r1, r4, lsl #8
	and r2, r2, #3
	mvn r2, r5, lsl r2
	and r1, r1, #0xff00
	bic r3, r3, #0x3f
	and r2, r2, #0x1f
	orr r2, r3, r2
	strh r2, [r0, #2]
	orr r1, r1, #0xff
	strh r1, [r0, #-8]
	mov r1, #0xbf
	strh r1, [r0, #-4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E624:
	ldr r0, [sb, #0x28]
	rsb r2, r5, #0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	mov r0, sb
	mov r3, #0
	bl ov25_0211F5CC
	ldr r1, [sb, #0x28]
	mov r0, sb
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x20]
	rsb r2, r5, #0x100
	mov r3, #0
	bl ov25_0211F5CC
	cmp r8, #0
	mov r3, #1
	beq _0211E700
	mov r1, #0x4000000
	ldr r0, [r1]
	add sp, sp, #4
	bic r0, r0, #0xe000
	orr r0, r0, #0x2000
	str r0, [r1]
	ldr r0, [sb, #0x28]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	ldr r0, _0211EFF0 ; =0x04000048
	and r1, r1, #3
	ldrh r2, [r0]
	mvn r1, r3, lsl r1
	bic r2, r2, #0x3f
	and r1, r1, #0x1f
	orr r1, r2, r1
	strh r1, [r0]
	ldr r1, [sb, #0x28]
	ldrh r2, [r0, #2]
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x20]
	bic r2, r2, #0x3f
	and r1, r1, #3
	mvn r1, r3, lsl r1
	and r1, r1, #0x1f
	orr r1, r2, r1
	strh r1, [r0, #2]
	and r1, r5, #0xff
	strh r1, [r0, #-8]
	mov r1, #0xbf
	strh r1, [r0, #-4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E700:
	ldr r1, _0211EFF4 ; =0x04001000
	add sp, sp, #4
	ldr r0, [r1]
	bic r0, r0, #0xe000
	orr r0, r0, #0x2000
	str r0, [r1]
	ldr r0, [sb, #0x28]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	ldr r0, _0211EFF8 ; =0x04001048
	and r1, r1, #3
	ldrh r2, [r0]
	mvn r1, r3, lsl r1
	bic r2, r2, #0x3f
	and r1, r1, #0x1f
	orr r1, r2, r1
	strh r1, [r0]
	ldr r1, [sb, #0x28]
	ldrh r2, [r0, #2]
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x20]
	bic r2, r2, #0x3f
	and r1, r1, #3
	mvn r1, r3, lsl r1
	and r1, r1, #0x1f
	orr r1, r2, r1
	strh r1, [r0, #2]
	and r1, r5, #0xff
	strh r1, [r0, #-8]
	mov r1, #0xbf
	strh r1, [r0, #-4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E78C:
	ldr r0, [sb, #0x28]
	mov r3, r6
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	mov r0, sb
	mov r2, #0
	bl ov25_0211F5CC
	ldr r0, [sb, #0x28]
	rsb r4, r6, #0xc0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	mov r0, sb
	rsb r3, r4, #0
	mov r2, #0
	bl ov25_0211F5CC
	cmp r8, #0
	mov r5, #1
	beq _0211E874
	mov r1, #0x4000000
	ldr r0, [r1]
	add sp, sp, #4
	bic r0, r0, #0xe000
	orr r0, r0, #0x2000
	str r0, [r1]
	ldr r0, [sb, #0x28]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	ldr r0, _0211EFF0 ; =0x04000048
	and r1, r1, #3
	ldrh r2, [r0]
	mvn r1, r5, lsl r1
	bic r2, r2, #0x3f
	and r1, r1, #0x1f
	orr r1, r2, r1
	strh r1, [r0]
	ldr r1, [sb, #0x28]
	ldrh r3, [r0, #2]
	add r1, sb, r1, lsl #2
	ldr r2, [r1, #0x20]
	mov r1, r4, lsl #8
	and r2, r2, #3
	mvn r2, r5, lsl r2
	and r1, r1, #0xff00
	bic r3, r3, #0x3f
	and r2, r2, #0x1f
	orr r2, r3, r2
	strh r2, [r0, #2]
	mov r2, #0xff
	strh r2, [r0, #-8]
	orr r1, r1, #0xbf
	strh r1, [r0, #-4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E874:
	ldr r1, _0211EFF4 ; =0x04001000
	add sp, sp, #4
	ldr r0, [r1]
	bic r0, r0, #0xe000
	orr r0, r0, #0x2000
	str r0, [r1]
	ldr r0, [sb, #0x28]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	ldr r0, _0211EFF8 ; =0x04001048
	and r1, r1, #3
	ldrh r2, [r0]
	mvn r1, r5, lsl r1
	bic r2, r2, #0x3f
	and r1, r1, #0x1f
	orr r1, r2, r1
	strh r1, [r0]
	ldr r1, [sb, #0x28]
	ldrh r3, [r0, #2]
	add r1, sb, r1, lsl #2
	ldr r2, [r1, #0x20]
	mov r1, r4, lsl #8
	and r2, r2, #3
	mvn r2, r5, lsl r2
	and r1, r1, #0xff00
	bic r3, r3, #0x3f
	and r2, r2, #0x1f
	orr r2, r3, r2
	strh r2, [r0, #2]
	mov r2, #0xff
	strh r2, [r0, #-8]
	orr r1, r1, #0xbf
	strh r1, [r0, #-4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E908:
	ldr r0, [sb, #0x28]
	rsb r3, r6, #0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	mov r0, sb
	mov r2, #0
	bl ov25_0211F5CC
	ldr r1, [sb, #0x28]
	mov r0, sb
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x20]
	rsb r3, r6, #0xc0
	mov r2, #0
	bl ov25_0211F5CC
	cmp r8, #0
	mov r3, #1
	beq _0211E9E4
	mov r1, #0x4000000
	ldr r0, [r1]
	add sp, sp, #4
	bic r0, r0, #0xe000
	orr r0, r0, #0x2000
	str r0, [r1]
	ldr r0, [sb, #0x28]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	ldr r0, _0211EFF0 ; =0x04000048
	and r1, r1, #3
	ldrh r2, [r0]
	mvn r1, r3, lsl r1
	bic r2, r2, #0x3f
	and r1, r1, #0x1f
	orr r1, r2, r1
	strh r1, [r0]
	ldr r1, [sb, #0x28]
	ldrh r2, [r0, #2]
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x20]
	bic r2, r2, #0x3f
	and r1, r1, #3
	mvn r1, r3, lsl r1
	and r1, r1, #0x1f
	orr r1, r2, r1
	strh r1, [r0, #2]
	mov r1, #0xff
	strh r1, [r0, #-8]
	and r1, r6, #0xff
	strh r1, [r0, #-4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211E9E4:
	ldr r1, _0211EFF4 ; =0x04001000
	add sp, sp, #4
	ldr r0, [r1]
	bic r0, r0, #0xe000
	orr r0, r0, #0x2000
	str r0, [r1]
	ldr r0, [sb, #0x28]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	ldr r0, _0211EFF8 ; =0x04001048
	and r1, r1, #3
	ldrh r2, [r0]
	mvn r1, r3, lsl r1
	bic r2, r2, #0x3f
	and r1, r1, #0x1f
	orr r1, r2, r1
	strh r1, [r0]
	ldr r1, [sb, #0x28]
	ldrh r2, [r0, #2]
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x20]
	bic r2, r2, #0x3f
	and r1, r1, #3
	mvn r1, r3, lsl r1
	and r1, r1, #0x1f
	orr r1, r2, r1
	strh r1, [r0, #2]
	mov r1, #0xff
	strh r1, [r0, #-8]
	and r1, r6, #0xff
	strh r1, [r0, #-4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211EA70:
	ldr r0, [sb, #0xc]
	add r4, r0, #1
	str r4, [sb, #0xc]
	ldr r7, [sb, #0x1c]
	cmp r4, r7
	blt _0211EB68
	cmp r8, #0
	mov r1, #0
	beq _0211EAB0
	ldr r0, _0211EFE8 ; =0x04000050
	strh r1, [r0]
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0xe000
	str r0, [r1]
	b _0211EAC8
_0211EAB0:
	ldr r0, _0211EFEC ; =0x04001050
	strh r1, [r0]
	sub r1, r0, #0x50
	ldr r0, [r1]
	bic r0, r0, #0xe000
	str r0, [r1]
_0211EAC8:
	ldr r0, [sb, #0x28]
	mov r2, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	mov r0, sb
	mov r3, r2
	bl ov25_0211F5CC
	ldr r0, [sb, #0x28]
	mov r2, #0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, sb, r0, lsl #2
	ldr r1, [r0, #0x20]
	mov r0, sb
	mov r3, r2
	bl ov25_0211F5CC
	ldr r1, [sb, #0x28]
	mov r0, sb
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x20]
	bl ov25_0211F344
	ldr r0, [sb, #0x18]
	cmp r0, #0
	blt _0211EB58
	ldr r0, [sb, #0x28]
	add sp, sp, #4
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	str r0, [sb, #0x28]
	mov r0, #0
	str r0, [sb, #0xc]
	mov r0, #1
	str r0, [sb, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211EB58:
	mov r0, #0
	add sp, sp, #4
	str r0, [sb, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211EB68:
	mov r1, r7
	rsb r0, r4, r4, lsl #5
	bl _s32_div_f
	mov r6, r0
	mov r1, r7
	mov r0, r4, lsl #8
	bl _s32_div_f
	mov r1, #0xc0
	mov r5, r0
	mul r0, r4, r1
	mov r1, r7
	bl _s32_div_f
	ldr r1, [sb, #0x14]
	mov r4, r0
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211EBC8
_0211EBAC: ; jump table
	b _0211EBC8 ; case 0
	b _0211EC00 ; case 1
	b _0211EC34 ; case 2
	b _0211ED1C ; case 3
	b _0211EE0C ; case 4
	b _0211EEF8 ; case 5
	b _0211EBC8 ; case 6
_0211EBC8:
	rsb r0, r6, #0
	cmp r8, #0
	add r1, r0, r0, lsr #31
	beq _0211EBEC
	ldr r0, _0211EFE8 ; =0x04000050
	mov r1, r1, asr #1
	bl G2x_ChangeBlendBrightness_
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211EBEC:
	ldr r0, _0211EFEC ; =0x04001050
	mov r1, r1, asr #1
	bl G2x_ChangeBlendBrightness_
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211EC00:
	cmp r8, #0
	add r1, r6, r6, lsr #31
	beq _0211EC20
	ldr r0, _0211EFE8 ; =0x04000050
	mov r1, r1, asr #1
	bl G2x_ChangeBlendBrightness_
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211EC20:
	ldr r0, _0211EFEC ; =0x04001050
	mov r1, r1, asr #1
	bl G2x_ChangeBlendBrightness_
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211EC34:
	ldr r1, [sb, #0x28]
	mov r0, sb
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r2, r5
	mov r3, #0
	bl ov25_0211F5CC
	cmp r8, #0
	mov r3, #1
	beq _0211ECC4
	mov r0, #0x4000000
	ldr r2, [r0]
	rsb r1, r5, #0x100
	bic r2, r2, #0xe000
	orr r2, r2, #0x2000
	str r2, [r0]
	ldrh r2, [r0, #0x48]
	and r1, r1, #0xff
	add sp, sp, #4
	bic r2, r2, #0x3f
	orr r2, r2, #0x1f
	strh r2, [r0, #0x48]
	ldr r2, [sb, #0x28]
	ldrh r4, [r0, #0x4a]
	add r2, sb, r2, lsl #2
	ldr r2, [r2, #0x20]
	bic r4, r4, #0x3f
	and r2, r2, #3
	mvn r2, r3, lsl r2
	and r2, r2, #0x1f
	orr r2, r4, r2
	strh r2, [r0, #0x4a]
	strh r1, [r0, #0x40]
	mov r1, #0xbf
	strh r1, [r0, #0x44]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211ECC4:
	ldr r0, _0211EFF8 ; =0x04001048
	rsb r1, r5, #0x100
	ldrh r2, [r0]
	and r1, r1, #0xff
	add sp, sp, #4
	bic r2, r2, #0x3f
	orr r2, r2, #0x1f
	strh r2, [r0]
	ldr r2, [sb, #0x28]
	ldrh r4, [r0, #2]
	add r2, sb, r2, lsl #2
	ldr r2, [r2, #0x20]
	bic r4, r4, #0x3f
	and r2, r2, #3
	mvn r2, r3, lsl r2
	and r2, r2, #0x1f
	orr r2, r4, r2
	strh r2, [r0, #2]
	strh r1, [r0, #-8]
	mov r1, #0xbf
	strh r1, [r0, #-4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211ED1C:
	ldr r1, [sb, #0x28]
	mov r0, sb
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x20]
	rsb r2, r5, #0
	mov r3, #0
	bl ov25_0211F5CC
	cmp r8, #0
	mov r3, #1
	beq _0211EDB0
	mov r0, #0x4000000
	ldr r2, [r0]
	mov r1, r5, lsl #8
	bic r2, r2, #0xe000
	orr r2, r2, #0x2000
	str r2, [r0]
	ldrh r2, [r0, #0x48]
	and r1, r1, #0xff00
	orr r1, r1, #0xff
	bic r2, r2, #0x3f
	orr r2, r2, #0x1f
	strh r2, [r0, #0x48]
	ldr r2, [sb, #0x28]
	ldrh r4, [r0, #0x4a]
	add r2, sb, r2, lsl #2
	ldr r2, [r2, #0x20]
	bic r4, r4, #0x3f
	and r2, r2, #3
	mvn r2, r3, lsl r2
	and r2, r2, #0x1f
	orr r2, r4, r2
	strh r2, [r0, #0x4a]
	strh r1, [r0, #0x40]
	mov r1, #0xbf
	strh r1, [r0, #0x44]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211EDB0:
	ldr r0, _0211EFF8 ; =0x04001048
	mov r1, r5, lsl #8
	ldrh r2, [r0]
	and r1, r1, #0xff00
	orr r1, r1, #0xff
	bic r2, r2, #0x3f
	orr r2, r2, #0x1f
	strh r2, [r0]
	ldr r2, [sb, #0x28]
	ldrh r4, [r0, #2]
	add r2, sb, r2, lsl #2
	ldr r2, [r2, #0x20]
	bic r4, r4, #0x3f
	and r2, r2, #3
	mvn r2, r3, lsl r2
	and r2, r2, #0x1f
	orr r2, r4, r2
	strh r2, [r0, #2]
	strh r1, [r0, #-8]
	mov r1, #0xbf
	strh r1, [r0, #-4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211EE0C:
	ldr r1, [sb, #0x28]
	mov r0, sb
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r4
	mov r2, #0
	bl ov25_0211F5CC
	cmp r8, #0
	beq _0211EE9C
	mov r0, #0x4000000
	ldr r2, [r0]
	rsb r1, r4, #0xc0
	bic r2, r2, #0xe000
	orr r2, r2, #0x2000
	str r2, [r0]
	ldrh r3, [r0, #0x48]
	mov r4, #1
	mov r2, #0xff
	bic r3, r3, #0x3f
	orr r3, r3, #0x1f
	strh r3, [r0, #0x48]
	ldr r3, [sb, #0x28]
	ldrh r5, [r0, #0x4a]
	add r3, sb, r3, lsl #2
	ldr r3, [r3, #0x20]
	bic r5, r5, #0x3f
	and r3, r3, #3
	mvn r3, r4, lsl r3
	and r3, r3, #0x1f
	orr r3, r5, r3
	strh r3, [r0, #0x4a]
	strh r2, [r0, #0x40]
	and r1, r1, #0xff
	strh r1, [r0, #0x44]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211EE9C:
	ldr r0, _0211EFF8 ; =0x04001048
	rsb r1, r4, #0xc0
	ldrh r3, [r0]
	mov r4, #1
	mov r2, #0xff
	bic r3, r3, #0x3f
	orr r3, r3, #0x1f
	strh r3, [r0]
	ldr r3, [sb, #0x28]
	ldrh r5, [r0, #2]
	add r3, sb, r3, lsl #2
	ldr r3, [r3, #0x20]
	bic r5, r5, #0x3f
	and r3, r3, #3
	mvn r3, r4, lsl r3
	and r3, r3, #0x1f
	orr r3, r5, r3
	strh r3, [r0, #2]
	strh r2, [r0, #-8]
	and r1, r1, #0xff
	strh r1, [r0, #-4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211EEF8:
	ldr r1, [sb, #0x28]
	mov r0, sb
	add r1, sb, r1, lsl #2
	ldr r1, [r1, #0x20]
	rsb r3, r4, #0
	mov r2, #0
	bl ov25_0211F5CC
	cmp r8, #0
	mov r3, #1
	beq _0211EF8C
	mov r0, #0x4000000
	ldr r2, [r0]
	mov r1, r4, lsl #8
	bic r2, r2, #0xe000
	orr r2, r2, #0x2000
	str r2, [r0]
	ldrh r2, [r0, #0x48]
	and r1, r1, #0xff00
	orr r1, r1, #0xbf
	bic r2, r2, #0x3f
	orr r2, r2, #0x1f
	strh r2, [r0, #0x48]
	ldr r2, [sb, #0x28]
	ldrh r4, [r0, #0x4a]
	add r2, sb, r2, lsl #2
	ldr r2, [r2, #0x20]
	bic r4, r4, #0x3f
	and r2, r2, #3
	mvn r2, r3, lsl r2
	and r2, r2, #0x1f
	orr r2, r4, r2
	strh r2, [r0, #0x4a]
	mov r2, #0xff
	strh r2, [r0, #0x40]
	strh r1, [r0, #0x44]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_0211EF8C:
	ldr r0, _0211EFF8 ; =0x04001048
	mov r1, r4, lsl #8
	ldrh r2, [r0]
	and r1, r1, #0xff00
	orr r1, r1, #0xbf
	bic r2, r2, #0x3f
	orr r2, r2, #0x1f
	strh r2, [r0]
	ldr r2, [sb, #0x28]
	ldrh r4, [r0, #2]
	add r2, sb, r2, lsl #2
	ldr r2, [r2, #0x20]
	bic r4, r4, #0x3f
	and r2, r2, #3
	mvn r2, r3, lsl r2
	and r2, r2, #0x1f
	orr r2, r4, r2
	strh r2, [r0, #2]
	mov r2, #0xff
	strh r2, [r0, #-8]
	strh r1, [r0, #-4]
_0211EFE0:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0211EFE8: .word 0x04000050
_0211EFEC: .word 0x04001050
_0211EFF0: .word 0x04000048
_0211EFF4: .word 0x04001000
_0211EFF8: .word 0x04001048

	arm_func_start ov25_0211EFFC
ov25_0211EFFC: ; 0x0211EFFC
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr ip, [r0, #4]
	cmp r1, ip
	addge sp, sp, #8
	ldmgeia sp!, {r3, pc}
	ldr lr, [sp, #0x14]
	ldr ip, [sp, #0x18]
	str lr, [sp]
	str ip, [sp, #4]
	ldr ip, [r0]
	mov r0, #0x14
	mla r0, r1, r0, ip
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #0x10]
	bl ov25_0211D5EC
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end ov25_0211EFFC

	arm_func_start ov25_0211F048
ov25_0211F048: ; 0x0211F048
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, r3
	cmp r1, r0
	ldmgeia sp!, {r4, r5, r6, pc}
	mov r0, #0x14
	mul r4, r1, r0
	ldr r0, [r6, #0x28]
	ldr r3, [r6]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, r6, r0, lsl #2
	ldr r1, [r0, #0x20]
	add r0, r3, r4
	bl ov25_0211D6A8
	ldr r0, [r6]
	cmp r5, #6
	add r0, r0, r4
	str r0, [r6, #0x2c]
	addls pc, pc, r5, lsl #2
	b _0211F0C0
_0211F0A4: ; jump table
	b _0211F0C0 ; case 0
	b _0211F0C0 ; case 1
	b _0211F104 ; case 2
	b _0211F104 ; case 3
	b _0211F104 ; case 4
	b _0211F104 ; case 5
	b _0211F104 ; case 6
_0211F0C0:
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _0211F0E8
	mov r1, #1
	str r1, [r6, #8]
	ldr r0, [r6, #0x28]
	cmp r0, #0
	movne r1, #0
	str r1, [r6, #0x28]
	b _0211F154
	arm_func_end ov25_0211F048
_0211F0E8:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	mov r0, r6
	bl ov25_0211F16C
	mov r0, #3
	str r0, [r6, #8]
	b _0211F154
_0211F104:
	mov r1, #1
	str r1, [r6, #8]
	ldr r0, [r6, #0x28]
	mov r2, #2
	cmp r0, #0
	movne r1, #0
	add r0, r6, r1, lsl #2
	str r1, [r6, #0x28]
	ldr r1, [r0, #0x20]
	mov r0, r6
	bl ov25_0211F4C0
	ldr r0, [r6, #0x28]
	mov r2, #1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add r0, r6, r0, lsl #2
	ldr r1, [r0, #0x20]
	mov r0, r6
	bl ov25_0211F4C0
_0211F154:
	ldr r0, [sp, #0x10]
	str r5, [r6, #0x10]
	str r0, [r6, #0x18]
	mov r0, #0
	str r0, [r6, #0xc]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov25_0211F16C
ov25_0211F16C: ; 0x0211F16C
	stmdb sp!, {r3, lr}
	mov r3, #3
	str r3, [r0, #8]
	str r1, [r0, #0x14]
	str r2, [r0, #0x1c]
	mov r2, #0
	str r2, [r0, #0xc]
	sub r1, r2, #1
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	ldr r1, [r0, #0x28]
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x20]
	mov r1, #1
	cmp r0, #3
	and r0, r0, #3
	mov r1, r1, lsl r0
	bgt _0211F1C0
	ldr r0, _0211F1CC ; =0x04000050
	bl G2x_SetBlendBrightness_
	ldmia sp!, {r3, pc}
	arm_func_end ov25_0211F16C
_0211F1C0:
	ldr r0, _0211F1D0 ; =0x04001050
	bl G2x_SetBlendBrightness_
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211F1CC: .word 0x04000050
_0211F1D0: .word 0x04001050

	arm_func_start ov25_0211F1D4
ov25_0211F1D4: ; 0x0211F1D4
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	bx lr
_0211F1E0: ; jump table
	b _0211F200 ; case 0
	b _0211F228 ; case 1
	b _0211F250 ; case 2
	b _0211F278 ; case 3
	b _0211F2A0 ; case 4
	b _0211F2C8 ; case 5
	b _0211F2F0 ; case 6
	b _0211F318 ; case 7
	arm_func_end ov25_0211F1D4
_0211F200:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r3, #1
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	bx lr
_0211F228:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r3, #2
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	bx lr
_0211F250:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r3, #4
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	bx lr
_0211F278:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r3, #8
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	bx lr
_0211F2A0:
	ldr r2, _0211F340 ; =0x04001000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r3, #1
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	bx lr
_0211F2C8:
	ldr r2, _0211F340 ; =0x04001000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r3, #2
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	bx lr
_0211F2F0:
	ldr r2, _0211F340 ; =0x04001000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r3, #4
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	bx lr
_0211F318:
	ldr r2, _0211F340 ; =0x04001000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r3, #8
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	bx lr
	.align 2, 0
_0211F340: .word 0x04001000

	arm_func_start ov25_0211F344
ov25_0211F344: ; 0x0211F344
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	bx lr
_0211F350: ; jump table
	b _0211F370 ; case 0
	b _0211F398 ; case 1
	b _0211F3C0 ; case 2
	b _0211F3E8 ; case 3
	b _0211F410 ; case 4
	b _0211F43C ; case 5
	b _0211F468 ; case 6
	b _0211F494 ; case 7
	arm_func_end ov25_0211F344
_0211F370:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	bic r0, r3, #1
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	bx lr
_0211F398:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	bic r0, r3, #2
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	bx lr
_0211F3C0:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	bic r0, r3, #4
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	bx lr
_0211F3E8:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	bic r0, r3, #8
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	bx lr
_0211F410:
	mov r1, #0x4000000
	ldr r0, [r1]
	add r1, r1, #0x1000
	and r2, r0, #0x1f00
	ldr r0, [r1]
	mov r3, r2, lsr #8
	bic r2, r0, #0x1f00
	bic r0, r3, #1
	orr r0, r2, r0, lsl #8
	str r0, [r1]
	bx lr
_0211F43C:
	mov r1, #0x4000000
	ldr r0, [r1]
	add r1, r1, #0x1000
	and r2, r0, #0x1f00
	ldr r0, [r1]
	mov r3, r2, lsr #8
	bic r2, r0, #0x1f00
	bic r0, r3, #2
	orr r0, r2, r0, lsl #8
	str r0, [r1]
	bx lr
_0211F468:
	mov r1, #0x4000000
	ldr r0, [r1]
	add r1, r1, #0x1000
	and r2, r0, #0x1f00
	ldr r0, [r1]
	mov r3, r2, lsr #8
	bic r2, r0, #0x1f00
	bic r0, r3, #4
	orr r0, r2, r0, lsl #8
	str r0, [r1]
	bx lr
_0211F494:
	mov r1, #0x4000000
	ldr r0, [r1]
	add r1, r1, #0x1000
	and r2, r0, #0x1f00
	ldr r0, [r1]
	mov r3, r2, lsr #8
	bic r2, r0, #0x1f00
	bic r0, r3, #8
	orr r0, r2, r0, lsl #8
	str r0, [r1]
	bx lr

	arm_func_start ov25_0211F4C0
ov25_0211F4C0: ; 0x0211F4C0
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	bx lr
_0211F4CC: ; jump table
	b _0211F4EC ; case 0
	b _0211F504 ; case 1
	b _0211F51C ; case 2
	b _0211F534 ; case 3
	b _0211F54C ; case 4
	b _0211F564 ; case 5
	b _0211F57C ; case 6
	b _0211F594 ; case 7
	arm_func_end ov25_0211F4C0
_0211F4EC:
	ldr r1, _0211F5AC ; =0x04000008
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, r2
	strh r0, [r1]
	bx lr
_0211F504:
	ldr r1, _0211F5B0 ; =0x0400000A
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, r2
	strh r0, [r1]
	bx lr
_0211F51C:
	ldr r1, _0211F5B4 ; =0x0400000C
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, r2
	strh r0, [r1]
	bx lr
_0211F534:
	ldr r1, _0211F5B8 ; =0x0400000E
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, r2
	strh r0, [r1]
	bx lr
_0211F54C:
	ldr r1, _0211F5BC ; =0x04001008
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, r2
	strh r0, [r1]
	bx lr
_0211F564:
	ldr r1, _0211F5C0 ; =0x0400100A
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, r2
	strh r0, [r1]
	bx lr
_0211F57C:
	ldr r1, _0211F5C4 ; =0x0400100C
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, r2
	strh r0, [r1]
	bx lr
_0211F594:
	ldr r1, _0211F5C8 ; =0x0400100E
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_0211F5AC: .word 0x04000008
_0211F5B0: .word 0x0400000A
_0211F5B4: .word 0x0400000C
_0211F5B8: .word 0x0400000E
_0211F5BC: .word 0x04001008
_0211F5C0: .word 0x0400100A
_0211F5C4: .word 0x0400100C
_0211F5C8: .word 0x0400100E

	arm_func_start ov25_0211F5CC
ov25_0211F5CC: ; 0x0211F5CC
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	bx lr
_0211F5D8: ; jump table
	b _0211F5F8 ; case 0
	b _0211F618 ; case 1
	b _0211F638 ; case 2
	b _0211F658 ; case 3
	b _0211F678 ; case 4
	b _0211F698 ; case 5
	b _0211F6B8 ; case 6
	b _0211F6D8 ; case 7
	arm_func_end ov25_0211F5CC
_0211F5F8:
	ldr r0, _0211F6F8 ; =0x000001FF
	ldr ip, _0211F6FC ; =0x04000010
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r0, r1, r3, lsl #16
	orr r0, r2, r0
	str r0, [ip]
	bx lr
_0211F618:
	ldr r0, _0211F6F8 ; =0x000001FF
	ldr ip, _0211F700 ; =0x04000014
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r0, r1, r3, lsl #16
	orr r0, r2, r0
	str r0, [ip]
	bx lr
_0211F638:
	ldr r0, _0211F6F8 ; =0x000001FF
	ldr ip, _0211F704 ; =0x04000018
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r0, r1, r3, lsl #16
	orr r0, r2, r0
	str r0, [ip]
	bx lr
_0211F658:
	ldr r0, _0211F6F8 ; =0x000001FF
	ldr ip, _0211F708 ; =0x0400001C
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r0, r1, r3, lsl #16
	orr r0, r2, r0
	str r0, [ip]
	bx lr
_0211F678:
	ldr r0, _0211F6F8 ; =0x000001FF
	ldr ip, _0211F70C ; =0x04001010
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r0, r1, r3, lsl #16
	orr r0, r2, r0
	str r0, [ip]
	bx lr
_0211F698:
	ldr r0, _0211F6F8 ; =0x000001FF
	ldr ip, _0211F710 ; =0x04001014
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r0, r1, r3, lsl #16
	orr r0, r2, r0
	str r0, [ip]
	bx lr
_0211F6B8:
	ldr r0, _0211F6F8 ; =0x000001FF
	ldr ip, _0211F714 ; =0x04001018
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r0, r1, r3, lsl #16
	orr r0, r2, r0
	str r0, [ip]
	bx lr
_0211F6D8:
	ldr r0, _0211F6F8 ; =0x000001FF
	ldr ip, _0211F718 ; =0x0400101C
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r0, r1, r3, lsl #16
	orr r0, r2, r0
	str r0, [ip]
	bx lr
	.align 2, 0
_0211F6F8: .word 0x000001FF
_0211F6FC: .word 0x04000010
_0211F700: .word 0x04000014
_0211F704: .word 0x04000018
_0211F708: .word 0x0400001C
_0211F70C: .word 0x04001010
_0211F710: .word 0x04001014
_0211F714: .word 0x04001018
_0211F718: .word 0x0400101C

	arm_func_start ov25_0211F71C
ov25_0211F71C: ; 0x0211F71C
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	arm_func_end ov25_0211F71C

	arm_func_start ov25_0211F73C
ov25_0211F73C: ; 0x0211F73C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov25_0211F840
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov25_0211F73C

	arm_func_start ov25_0211F750
ov25_0211F750: ; 0x0211F750
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl ov25_0211F840
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211F794
	mov r2, #0x40
	ldr r1, _0211F834 ; =s_game
	str r2, [sp]
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, #0x24
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
	arm_func_end ov25_0211F750
_0211F794:
	str r0, [r4]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	ldr r1, _0211F838 ; =s_data_ending_overlay_25_0211fcf4
	ldr r2, _0211F83C ; =s_edobj000_overlay_25_0211fd00
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4]
	sub r2, r1, #0x20
	mov r3, #0x40
	bl sub_0200F4FC
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, #1
	mov r2, #0x80
	mov r3, #0x40
	bl sub_0200F4FC
	str r0, [r4, #4]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0x80
	mov r3, #0x70
	bl sub_0200F4FC
	str r0, [r4, #8]
	mov r2, #0
	ldr r1, [r4, #4]
	mov r0, #1
	str r2, [r1, #0x14]
	ldr r1, [r4, #8]
	str r2, [r1, #0x14]
	ldr r1, [r4, #0xc]
	str r2, [r1, #0x14]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211F834: .word s_game
_0211F838: .word s_data_ending_overlay_25_0211fcf4
_0211F83C: .word s_edobj000_overlay_25_0211fd00

	arm_func_start ov25_0211F840
ov25_0211F840: ; 0x0211F840
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5]
	cmp r4, #0
	beq _0211F870
	beq _0211F868
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov25_0211F840
_0211F868:
	mov r0, #0
	str r0, [r5]
_0211F870:
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5, #8]
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov25_0211F890
ov25_0211F890: ; 0x0211F890
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0211FA08
_0211F8A8: ; jump table
	b _0211FA08 ; case 0
	b _0211F8D0 ; case 1
	b _0211F900 ; case 2
	b _0211F940 ; case 3
	b _0211FA08 ; case 4
	b _0211F96C ; case 5
	b _0211F99C ; case 6
	b _0211F9F0 ; case 7
	b _0211FA08 ; case 8
	b _0211FA08 ; case 9
	arm_func_end ov25_0211F890
_0211F8D0:
	ldr r0, [r4, #4]
	mov r3, #1
	str r3, [r0, #0x14]
	ldr r0, [r4, #8]
	mov r2, #0
	str r2, [r0, #0x14]
	ldr r1, [r4, #0xc]
	mov r0, #2
	str r3, [r1, #0x14]
	str r2, [r4, #0x14]
	str r0, [r4, #0x10]
	b _0211FA08
_0211F900:
	ldr r0, [r4, #0x14]
	mov r2, #0x40
	add r0, r0, #1
	mov r1, r0, lsl #2
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	sub r1, r1, #0x20
	bl sub_0200EB28
	ldr r0, [r4, #0x14]
	cmp r0, #0x48
	blt _0211FA08
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #3
	str r0, [r4, #0x10]
	b _0211FA08
_0211F940:
	ldr r0, [r4, #0xc]
	mvn r1, #0x1f
	mov r2, #0x70
	bl sub_0200EB28
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r4, #0x14]
	mov r0, #5
	str r0, [r4, #0x10]
	b _0211FA08
_0211F96C:
	ldr r0, [r4, #4]
	mov r3, #1
	str r3, [r0, #0x14]
	ldr r0, [r4, #8]
	mov r2, #0
	str r2, [r0, #0x14]
	ldr r1, [r4, #0xc]
	mov r0, #6
	str r3, [r1, #0x14]
	str r2, [r4, #0x14]
	str r0, [r4, #0x10]
	b _0211FA08
_0211F99C:
	ldr r0, [r4, #0x14]
	mov r2, #0x70
	add r0, r0, #1
	mov r1, r0, lsl #2
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	sub r1, r1, #0x20
	bl sub_0200EB28
	ldr r0, [r4, #0x14]
	cmp r0, #8
	ldreq r0, [r4, #8]
	moveq r1, #1
	streq r1, [r0, #0x14]
	ldr r0, [r4, #0x14]
	cmp r0, #0x48
	blt _0211FA08
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #7
	str r0, [r4, #0x10]
	b _0211FA08
_0211F9F0:
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r4, #0x14]
	mov r0, #8
	str r0, [r4, #0x10]
_0211FA08:
	ldr r0, [r4]
	cmp r0, #0
	beq _0211FA18
	bl sub_0200F64C
_0211FA18:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start ov25_0211FA20
ov25_0211FA20: ; 0x0211FA20
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	beq _0211FA4C
	ldr r0, [r0, #0x10]
	cmp r0, #1
	blt _0211FA4C
	cmp r0, #8
	bgt _0211FA4C
	mov r0, r1
	bl sub_0200F71C
	arm_func_end ov25_0211FA20
_0211FA4C:
	mov r0, #1
	ldmia sp!, {r3, pc}

	arm_func_start ov25_0211FA54
ov25_0211FA54: ; 0x0211FA54
	mov r1, #1
	str r1, [r0, #0x10]
	mov r0, r1
	bx lr
	arm_func_end ov25_0211FA54
	; 0x0211FA64

    .section .sinit,4 ; 0x0211FA64

    .data

    .global PTR_DAT_overlay_25_0211fa88_overlay_25_0211fa80
PTR_DAT_overlay_25_0211fa88_overlay_25_0211fa80: ; 0x0211FA80
	.word DAT_overlay_25_0211fa88
	.word DAT_overlay_25_0211fac8

    .global DAT_overlay_25_0211fa88
DAT_overlay_25_0211fa88: ; 0x0211FA88
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00

    .global DAT_overlay_25_0211fac8
DAT_overlay_25_0211fac8: ; 0x0211FAC8
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x19, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00
	.byte 0x1D, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00

    .global DAT_overlay_25_0211fb08
DAT_overlay_25_0211fb08: ; 0x0211FB08
	.byte 0x3C, 0x00

    .global DAT_overlay_25_0211fb0a
DAT_overlay_25_0211fb0a: ; 0x0211FB0A
	.byte 0x02

    .global DAT_overlay_25_0211fb0b
DAT_overlay_25_0211fb0b: ; 0x0211FB0B
	.byte 0x00

    .global DAT_overlay_25_0211fb0c
DAT_overlay_25_0211fb0c: ; 0x0211FB0C
	.byte 0x07, 0x0C, 0x00, 0x00

    .global DAT_overlay_25_0211fb10
DAT_overlay_25_0211fb10: ; 0x0211FB10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

    .global DAT_overlay_25_0211fb18
DAT_overlay_25_0211fb18: ; 0x0211FB18
	.byte 0x78, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word 0x0200021C
	.byte 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x03, 0x00, 0x03, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x05, 0x00, 0x04, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x07, 0x00, 0x05, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xAC, 0x08, 0x00, 0x06, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8C, 0x0A, 0x00, 0x07, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x0C, 0x00, 0x08, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x0E, 0x00, 0x09, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x10, 0x00, 0x0A, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x12, 0x00, 0x0B, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEC, 0x13, 0x00, 0x0C, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCC, 0x15, 0x00, 0x0D, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xAC, 0x17, 0x00, 0x0E, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8C, 0x19, 0x00, 0x0F, 0x06, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x1B, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x1C, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

    .global PTR_ptr_FUN_020835bc_overlay_25_0211fc48
PTR_ptr_FUN_020835bc_overlay_25_0211fc48: ; 0x0211FC48
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_15CStaffrollScene_overlay_25_0211fc54
	.word PTR_ptr_FUN_02083578_0208a804

    .global s_15CStaffrollScene_overlay_25_0211fc54
s_15CStaffrollScene_overlay_25_0211fc54: ; 0x0211FC54
	.asciz "15CStaffrollScene"

    .global DAT_overlay_25_0211FC66
DAT_overlay_25_0211FC66:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    .word PTR_ptr_FUN_020835bc_overlay_25_0211fc48

    .global PTR_LAB_overlay_25_0211ca24_overlay_25_0211fc70
PTR_LAB_overlay_25_0211ca24_overlay_25_0211fc70: ; 0x0211FC70
	.word ov25_0211CA24

    .global ptr_FUN_overlay_20_0211ca38_overlay_25_0211fc74
ptr_FUN_overlay_20_0211ca38_overlay_25_0211fc74: ; 0x0211FC74
	.word ov25_0211CA38

    .global ptr_FUN_overlay_25_0211ca54_overlay_25_0211fc78
ptr_FUN_overlay_25_0211ca54_overlay_25_0211fc78: ; 0x0211FC78
	.word ov25_0211CA54

    .global ptr_FUN_overlay_28_0211cedc_overlay_25_0211fc7c
ptr_FUN_overlay_28_0211cedc_overlay_25_0211fc7c: ; 0x0211FC7C
	.word ov25_0211CEDC
	.word ov25_0211CEEC

    .global ptr_FUN_overlay_9_0211cef0_overlay_25_0211fc84
ptr_FUN_overlay_9_0211cef0_overlay_25_0211fc84: ; 0x0211FC84
	.word ov25_0211CEF0

    .global ptr_FUN_02007cc4_overlay_25_0211fc88
ptr_FUN_02007cc4_overlay_25_0211fc88: ; 0x0211FC88
	.word sub_02007CC4

    .global ptr_FUN_overlay_25_0211cefc_overlay_25_0211fc8c
ptr_FUN_overlay_25_0211cefc_overlay_25_0211fc8c: ; 0x0211FC8C
	.word ov25_0211CEFC

    .global ptr_FUN_overlay_25_0211d098_overlay_25_0211fc90
ptr_FUN_overlay_25_0211d098_overlay_25_0211fc90: ; 0x0211FC90
	.word ov25_0211D098

    .global ptr_FUN_overlay_25_0211d3b0_overlay_25_0211fc94
ptr_FUN_overlay_25_0211d3b0_overlay_25_0211fc94: ; 0x0211FC94
	.word ov25_0211D3B0
	.word ov25_0211D4DC

    .global DAT_overlay_25_0211fc9c
DAT_overlay_25_0211fc9c: ; 0x0211FC9C
	.byte 0x00, 0x00, 0x00, 0x00

    .global s_data_message_etc_staffroll_overlay_25_0211fca0
s_data_message_etc_staffroll_overlay_25_0211fca0: ; 0x0211FCA0
	.asciz "/data/message/etc/staffroll"

    .global s_data_font_prs_lc_jp_NCLR_overlay_25_0211fcbc
s_data_font_prs_lc_jp_NCLR_overlay_25_0211fcbc: ; 0x0211FCBC
	.asciz "data/font/prs_lc_jp.NCLR"

    .global DAT_overlay_25_0211FCD5
DAT_overlay_25_0211FCD5:
	.byte 0x00, 0x00, 0x00

    .global s_edu_03d_overlay_25_0211fcd8
s_edu_03d_overlay_25_0211fcd8: ; 0x0211FCD8
	.asciz "edu%03d_"

    .global DAT_overlay_25_0211FCE1
DAT_overlay_25_0211FCE1:
	.byte 0x00, 0x00, 0x00

    .global s_edu_03d_overlay_25_0211fce4
s_edu_03d_overlay_25_0211fce4: ; 0x0211FCE4
	.asciz "edu%03d"

    .global s_ending_overlay_25_0211fcec
s_ending_overlay_25_0211fcec: ; 0x0211FCEC
	.asciz "ending/"

    .global s_data_ending_overlay_25_0211fcf4
s_data_ending_overlay_25_0211fcf4: ; 0x0211FCF4
	.asciz "data/ending"

    .global s_edobj000_overlay_25_0211fd00
s_edobj000_overlay_25_0211fd00: ; 0x0211FD00
	.asciz "edobj000"
	; 0x0211FD09
