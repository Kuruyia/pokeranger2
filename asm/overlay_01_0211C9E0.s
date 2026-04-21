    .include "macros.inc"
    .include "include/overlay_01.inc"

    .text

	arm_func_start _ZN12CBattleSceneC1EP5CGame
_ZN12CBattleSceneC1EP5CGame: ; 0x0211C9E0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r5, r0
	mov r4, r1
	bl _ZN6CSceneC2Ev
	ldr r1, _0211CD70 ; =ptr_FUN_overlay_1_0211cd80_overlay_1_02140764
	add r0, r4, #0x1000
	stmia r5, {r1, r4}
	ldr r2, [r0, #0x434]
	add r1, r4, #0x6c
	str r2, [r5, #0xc14]
	ldr r2, [r0, #0x43c]
	add r0, r1, #0x1400
	str r2, [r5, #0x1c]
	mov r1, #0x3c
	bl sub_02008DB4
	ldr r0, [r5, #0x1c]
	mov r6, #0
	bl sub_02010B90
	cmp r0, #0
	bls _0211CA60
	arm_func_end _ZN12CBattleSceneC1EP5CGame
_0211CA34:
	ldr r0, [r5, #0x1c]
	mov r1, r6
	bl sub_02010B98
	add r1, r5, r6, lsl #1
	strh r0, [r1, #0x82]
	add r1, r6, #1
	ldr r0, [r5, #0x1c]
	and r6, r1, #0xff
	bl sub_02010B90
	cmp r6, r0
	blo _0211CA34
_0211CA60:
	cmp r6, #8
	bhs _0211CA84
	mov r2, #0
_0211CA6C:
	add r0, r6, #1
	add r1, r5, r6, lsl #1
	and r6, r0, #0xff
	strh r2, [r1, #0x82]
	cmp r6, #8
	blo _0211CA6C
_0211CA84:
	ldr r0, [r5, #0x1c]
	mov r8, #0
	bl sub_02010B90
	cmp r0, #0
	bls _0211CAD4
	mov r6, r8
	mov r7, #1
_0211CAA0:
	ldr r0, [r5, #0x1c]
	mov r1, r8
	bl sub_02010BA4
	cmp r0, #0
	add r0, r5, r8
	strneb r7, [r0, #0x92]
	streqb r6, [r0, #0x92]
	add r1, r8, #1
	ldr r0, [r5, #0x1c]
	and r8, r1, #0xff
	bl sub_02010B90
	cmp r8, r0
	blo _0211CAA0
_0211CAD4:
	mov r6, #0
	add r2, r5, #0x9a
	mov ip, r6
_0211CAE0:
	add r1, r5, r6
	add r0, r6, #1
	strb ip, [r1, #0x9a]
	add r3, r2, r6
	add r1, r5, r6, lsl #2
	and r6, r0, #0xff
	str r3, [r1, #0xa4]
	cmp r6, #8
	blo _0211CAE0
	ldr r0, [r5, #0x1c]
	bl sub_02010B24
	cmp r0, #0x23
	bne _0211CB34
	ldr r0, _0211CD74 ; =MAIN_BSS_020B26A0
	mov r1, #0
	str r1, [r0, #0x28]
	ldr r0, [r5, #0x1c]
	bl sub_02010B34
	mov r1, r0
	ldr r0, _0211CD74 ; =MAIN_BSS_020B26A0
	bl sub_020160B8
_0211CB34:
	ldr r0, [r5, #0x1c]
	bl sub_02010B50
	str r0, [r5, #0x74]
	ldr r0, [r5, #0x1c]
	bl sub_02010B58
	str r0, [r5, #0x78]
	ldr r0, [r5, #0x1c]
	bl sub_02010B60
	ldr r1, _0211CD78 ; =DAT_overlay_1_0213fb70
	and r0, r0, #0xff
	ldr r1, [r1, r0, lsl #2]
	mov r0, #1
	str r1, [r5, #0x7c]
	str r0, [r5, #0x70]
	bl sub_0201001C
	ldr r0, [r0, #0x18]
	mov r2, #0
	str r0, [r5, #0x10]
	strh r2, [r5, #8]
	strh r2, [r5, #0xa]
	str r2, [r5, #0xc]
	str r2, [r5, #0x20]
	str r2, [r5, #0x24]
	str r2, [r5, #0x28]
	strh r2, [r5, #0x2c]
	strh r2, [r5, #0x2e]
	str r2, [r5, #0x34]
	str r2, [r5, #0x38]
	strb r2, [r5, #0x44]
	str r2, [r5, #0x3c]
	str r2, [r5, #0x58]
	strb r2, [r5, #0xbe4]
	strb r2, [r5, #0xc3c]
	mov r3, r2
_0211CBBC:
	add r0, r2, #1
	add r1, r5, r2, lsl #1
	and r2, r0, #0xff
	strh r3, [r1, #0x46]
	cmp r2, #8
	blo _0211CBBC
	str r3, [r5, #0x384]
	mov r0, #0
_0211CBDC:
	add r1, r3, #1
	add r2, r5, r3, lsl #2
	and r3, r1, #0xff
	str r0, [r2, #0x378]
	cmp r3, #3
	blo _0211CBDC
	add r1, r5, #0x1000
	str r0, [r1, #0x2c8]
	str r0, [r1, #0x2cc]
	mov r2, #0x110000
	str r2, [r1, #0x2d0]
	mov r2, #0xd0000
	str r2, [r1, #0x2d4]
	str r0, [r1, #0x2d8]
	str r0, [r1, #0x2dc]
	mov r2, #0x140000
	str r2, [r1, #0x2e0]
	mov r2, #0x100000
	str r2, [r1, #0x2e4]
	ldr lr, [r5, #4]
	mov r3, #0x10
	add r1, lr, #0x1000
	ldr ip, [r1, #0x4b0]
	add r2, lr, #0x24
	str ip, [sp]
	str r2, [sp, #4]
	ldr ip, [r1, #0x48c]
	mov r2, #0x4000
	str ip, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r3, [r1, #0x4ac]
	ldr r0, [r1, #0x490]
	ldr r1, [lr, #0x14]
	ldr r2, [lr, #0x18]
	add r3, r3, #0xc
	bl _ZN17UnkClass_020091E812sub_02009328EmmmPvmS0_mmm
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x49c]
	bl sub_02033F90
	ldr r0, [r5, #0x1c]
	bl sub_02010B7C
	cmp r0, #1
	mov r1, #0
	bne _0211CCDC
	ldr r0, [r5, #0x1c]
	bl sub_02010B70
	mov r1, r0
	ldr r0, [r5, #0xc14]
	bl sub_020107A8
	add r1, r4, #0x1000
	ldrh r2, [r0]
	ldr r0, [r1, #0x490]
	mov r1, #0
	bl _ZN17UnkClass_020091E812sub_020097FCEmm
	b _0211CCEC
_0211CCDC:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x490]
	ldr r2, _0211CD7C ; =0x000001EF
	bl _ZN17UnkClass_020091E812sub_020097FCEmm
_0211CCEC:
	add r0, r4, #0x1000
	ldr r6, [r0, #0x490]
	ldr r0, [r5, #0x1c]
	bl sub_02010C2C
	mov r2, r0
	mov r0, r6
	mov r1, #1
	bl _ZN17UnkClass_020091E812sub_020097FCEmm
	ldr r0, [r5, #0x1c]
	bl sub_02010B7C
	cmp r0, #1
	add r0, r4, #0x1000
	mov r1, #2
	ldr r0, [r0, #0x490]
	bne _0211CD34
	mov r2, #9
	bl _ZN17UnkClass_020091E812sub_020097FCEmm
	b _0211CD3C
_0211CD34:
	mov r2, #0xa
	bl _ZN17UnkClass_020091E812sub_020097FCEmm
_0211CD3C:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #1
	mov r2, #0x20
	bl sub_0200E0E0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #1
	mov r2, #0x20
	bl sub_0200E0E0
	mov r0, r5
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211CD70: .word ptr_FUN_overlay_1_0211cd80_overlay_1_02140764
_0211CD74: .word MAIN_BSS_020B26A0
_0211CD78: .word DAT_overlay_1_0213fb70
_0211CD7C: .word 0x000001EF

	arm_func_start ov1_0211CD80
ov1_0211CD80: ; 0x0211CD80
	stmdb sp!, {r4, lr}
	ldr r1, _0211CDDC ; =ptr_FUN_overlay_1_0211cd80_overlay_1_02140764
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B58
	mov r0, r4
	mov r1, #1
	bl ov1_02122D78
	bl NNS_GfdResetLnkTexVramState
	bl NNS_GfdResetLnkPlttVramState
	ldr r0, [r4, #4]
	mov r1, #0x1e
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CDDC: .word ptr_FUN_overlay_1_0211cd80_overlay_1_02140764
	arm_func_end ov1_0211CD80

	arm_func_start ov1_0211CDE0
ov1_0211CDE0: ; 0x0211CDE0
	stmdb sp!, {r4, lr}
	ldr r1, _0211CE44 ; =ptr_FUN_overlay_1_0211cd80_overlay_1_02140764
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B58
	mov r0, r4
	mov r1, #1
	bl ov1_02122D78
	bl NNS_GfdResetLnkTexVramState
	bl NNS_GfdResetLnkPlttVramState
	ldr r0, [r4, #4]
	mov r1, #0x1e
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CE44: .word ptr_FUN_overlay_1_0211cd80_overlay_1_02140764
	arm_func_end ov1_0211CDE0

	arm_func_start ov1_0211CE48
ov1_0211CE48: ; 0x0211CE48
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
	ldr r2, _0211CFA4 ; =0x04000008
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
	ldr ip, _0211CFA8 ; =0x04000304
	ldr r2, _0211CFAC ; =0xFFFFFDF1
	ldrh r3, [ip]
	mov r1, #0
	sub r0, ip, #0x2b4
	and r2, r3, r2
	orr r2, r2, #0xe
	orr r2, r2, #0x200
	strh r2, [ip]
	str r1, [sp]
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr r1, _0211CFB0 ; =0x04000060
	ldrh r0, [r1]
	bic r0, r0, #0x3000
	orr r0, r0, #8
	strh r0, [r1]
	ldrh r0, [r1]
	mov r3, #0x4000000
	add r2, r3, #0x1000
	bic r0, r0, #0x3000
	orr r0, r0, #0x10
	strh r0, [r1]
	ldr r0, [r3]
	add r1, r3, #0x304
	bic r0, r0, #0x1f00
	orr r0, r0, #0x100
	str r0, [r3]
	ldr r0, [r2]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1800
	str r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	bl GX_DispOn
	ldr r1, _0211CFB4 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CFA4: .word 0x04000008
_0211CFA8: .word 0x04000304
_0211CFAC: .word 0xFFFFFDF1
_0211CFB0: .word 0x04000060
_0211CFB4: .word 0x04001000
	arm_func_end ov1_0211CE48

	arm_func_start ov1_0211CFB8
ov1_0211CFB8: ; 0x0211CFB8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x198
	mov sl, r0
	bl NNS_GfdResetLnkTexVramState
	bl NNS_GfdResetLnkPlttVramState
	ldr r1, _0211DE2C ; =ptr_FUN_overlay_1_0212a298_overlay_1_02141038
	mov r0, #1
	bl sub_02044B38
	ldr r0, [sl, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020347C4
	mov r0, #8
	bl _Znwm
	cmp r0, #0
	beq _0211D008
	ldr r1, [sl, #4]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4a8]
	bl ov1_0212DC20
	arm_func_end ov1_0211CFB8
_0211D008:
	str r0, [sl, #0xc18]
	mov r0, #8
	bl _Znwm
	cmp r0, #0
	beq _0211D02C
	ldr r1, [sl, #4]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4a8]
	bl ov1_0212E008
_0211D02C:
	str r0, [sl, #0xc1c]
	mov r0, #8
	bl _Znwm
	cmp r0, #0
	beq _0211D054
	ldr r2, [sl, #4]
	ldr r1, _0211DE30 ; =s_data_param_BattleAssist_bin_overlay_1_02140790
	add r2, r2, #0x1000
	ldr r2, [r2, #0x4a8]
	bl ov1_0212EEB4
_0211D054:
	str r0, [sl, #0xc20]
	mov r0, #8
	bl _Znwm
	cmp r0, #0
	beq _0211D07C
	ldr r2, [sl, #4]
	ldr r1, _0211DE34 ; =s_data_param_BattleAssistPartner_b_overlay_1_021407ac
	add r2, r2, #0x1000
	ldr r2, [r2, #0x4a8]
	bl ov1_0212EEB4
_0211D07C:
	str r0, [sl, #0xc24]
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	beq _0211D094
	bl sub_02003718
_0211D094:
	str r0, [sl, #0xc4]
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	beq _0211D0AC
	bl sub_02003718
_0211D0AC:
	str r0, [sl, #0xc8]
	mov r0, #0x28
	bl _Znwm
	cmp r0, #0
	beq _0211D0C8
	ldr r1, [sl, #0xc4]
	bl sub_0200D3F8
_0211D0C8:
	mov r1, #0x100000
	str r0, [sl, #0xcc]
	str r1, [sp]
	sub r1, r1, #0x900000
	ldr r0, _0211DE38 ; =0x007FF000
	str r1, [sp, #4]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x400000
	str r0, [sp, #0xc]
	ldr r0, [sl, #0xc4]
	mov r3, r1
	mov r2, #0xc0000
	bl sub_02003788
	mov r0, #0x100000
	mov r1, #0
	str r0, [sp]
	sub r0, r0, #0x900000
	str r0, [sp, #4]
	mov r0, #0x800000
	str r0, [sp, #8]
	mov r0, #0x400000
	str r0, [sp, #0xc]
	ldr r0, [sl, #0xc8]
	mov r3, r1
	mov r2, #0xc0000
	bl sub_02003788
	mov r0, #0xd8
	bl _Znwm
	cmp r0, #0
	beq _0211D148
	bl sub_0201AD60
_0211D148:
	mov r1, #0x410
	str r0, [sl, #0xd0]
	add r2, r1, #1
	add r3, r1, #2
	bl sub_0201B5F4
	ldr r0, [sl, #0xd0]
	mov r1, #0x3a
	mov r2, #0x3b
	mov r3, #0x3c
	bl sub_0201B658
	mov r5, #0
	mov r4, #0xb4
_0211D178:
	mov r0, r4
	bl _Znwm
	cmp r0, #0
	beq _0211D18C
	bl ov1_02136730
_0211D18C:
	add r1, sl, r5, lsl #2
	add r5, r5, #1
	str r0, [r1, #0x3a8]
	cmp r5, #0x200
	blt _0211D178
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _0211D1BC
	add r1, sl, #0x3a8
	mov r2, #0x200
	bl ov1_02136AD4
_0211D1BC:
	mov r1, #1
	str r0, [sl, #0xba8]
	bl ov1_02136BD0
	mov r0, #0x268
	bl _Znwm
	cmp r0, #0
	beq _0211D1E0
	ldr r1, [sl, #0xba8]
	bl ov1_0212B7A0
_0211D1E0:
	str r0, [sl, #0xd8]
	ldr r0, [sl, #0x1c]
	bl sub_02010B2C
	ldr r1, [sl, #0xd8]
	mov r2, #0x3b
	strb r0, [r1, #0x19c]
	ldr r0, _0211DE3C ; =MAIN_BSS_020B26A0
	mov r1, #0x16
	strh r2, [sl, #0x30]
	bl sub_02016C14
	cmp r0, #0
	beq _0211D238
	cmp r0, #1
	beq _0211D22C
	cmp r0, #2
	ldreqh r0, [sl, #0x30]
	addeq r0, r0, #4
	streqh r0, [sl, #0x30]
	b _0211D238
_0211D22C:
	ldrh r0, [sl, #0x30]
	add r0, r0, #2
	strh r0, [sl, #0x30]
_0211D238:
	ldr r0, [sl, #0xd8]
	ldrh r1, [sl, #0x30]
	ldr r0, [r0, #0x1b8]
	bl ov1_02124AF4
	ldr r0, _0211DE3C ; =MAIN_BSS_020B26A0
	ldrb r0, [r0, #3]
	mov r0, r0, asr #4
	and r0, r0, #0xf
	cmp r0, #2
	ldr r0, [sl, #0xd8]
	movlo r1, #0
	strlo r1, [r0, #0x18c]
	blo _0211D280
	mov r1, #1
	str r1, [r0, #0x18c]
	ldr r0, [sl, #0xd8]
	mov r1, #0
	str r1, [r0, #0x190]
_0211D280:
	ldr r0, _0211DE3C ; =MAIN_BSS_020B26A0
	ldrb r0, [r0, #3]
	and r0, r0, #0xf
	cmp r0, #8
	ldr r0, [sl, #0xd8]
	movhs r1, #2
	ldr r0, [r0, #0x1c0]
	movlo r1, #1
	strb r1, [r0, #0xc71]
	ldr r0, _0211DE3C ; =MAIN_BSS_020B26A0
	ldrb r0, [r0, #3]
	and r0, r0, #0xf
	cmp r0, #6
	ldr r0, [sl, #0xd8]
	movlo r2, #0x64
	ldrlo r0, [r0, #0x1c0]
	movlo r1, #0x78
	blo _0211D2D4
	ldr r0, [r0, #0x1c0]
	mov r2, #0x46
	mov r1, #0x5a
_0211D2D4:
	add r0, r0, #0xc00
	strh r2, [r0, #0x74]
	strh r1, [r0, #0x76]
	ldr r1, [sl, #4]
	ldr r0, [sl, #0x1c]
	add r1, r1, #0x1000
	ldr r7, [r1, #0x434]
	mov r8, #0
	bl sub_02010B68
	cmp r0, #0
	bls _0211D394
	ldr r4, _0211DE40 ; =0x0000FFFF
	mov fp, #0x60
_0211D308:
	ldr r0, [sl, #0x1c]
	mov r1, r8
	bl sub_02010B70
	mov r6, r0
	cmp r6, r4
	beq _0211D37C
	mov r0, fp
	bl _Znwm
	movs sb, r0
	beq _0211D374
	mov r0, r7
	mov r1, r6
	bl sub_020107A8
	mov r5, r0
	ldr r0, [sl, #0xc18]
	mov r1, r6
	bl ov1_0212DFEC
	mov r1, r6
	mov r2, r5
	mov r3, r0
	ldr r5, [sl, #4]
	mov r0, sb
	add r5, r5, #0x1000
	ldr r5, [r5, #0x4a8]
	str r5, [sp]
	bl ov1_02124F90
	mov sb, r0
_0211D374:
	add r0, sl, r8, lsl #2
	str sb, [r0, #0xfc]
_0211D37C:
	add r1, r8, #1
	ldr r0, [sl, #0x1c]
	and r8, r1, #0xff
	bl sub_02010B68
	cmp r8, r0
	blo _0211D308
_0211D394:
	ldr r0, [sl, #0x1c]
	mov r5, #0
	bl sub_02010B7C
	cmp r0, #0
	bls _0211D458
	ldr r4, _0211DE44 ; =0x00000704
	mov r8, #1
_0211D3B0:
	ldr r0, [sl, #0x1c]
	mov r1, r5
	bl sub_02010B84
	cmp r0, #0xff
	beq _0211D440
	mov r0, r4
	bl _Znwm
	movs r6, r0
	beq _0211D3FC
	ldr r0, [sl, #0x1c]
	mov r1, r5
	bl sub_02010B84
	add r0, sl, r0, lsl #2
	add r1, r5, #1
	ldr r2, [r0, #0xfc]
	mov r0, r6
	and r1, r1, #0xff
	bl ov1_021251F4
	mov r6, r0
_0211D3FC:
	add r1, sl, r5, lsl #2
	mov r0, r6
	str r6, [r1, #0xdc]
	bl ov1_02126224
	add r0, sl, r5, lsl #2
	ldr r1, [r0, #0xdc]
	ldrh r0, [r1, #4]
	orr r0, r0, #0x100
	strh r0, [r1, #4]
	ldr r0, [sl, #0x1c]
	bl sub_02010C08
	cmp r0, #0
	beq _0211D440
	add r0, sl, r5, lsl #2
	ldr r0, [r0, #0xdc]
	mov r1, r8
	bl ov1_02126764
_0211D440:
	add r1, r5, #1
	ldr r0, [sl, #0x1c]
	and r5, r1, #0xff
	bl sub_02010B7C
	cmp r5, r0
	blo _0211D3B0
_0211D458:
	ldr r0, [sl, #0x1c]
	mov r4, #0
	bl sub_02010B7C
	cmp r0, #0
	bls _0211D4AC
_0211D46C:
	add r0, sl, r4, lsl #2
	ldr r0, [r0, #0xdc]
	cmp r0, #0
	beq _0211D494
	ldr r0, [r0, #0x184]
	ldrh r1, [sl, #0x2e]
	ldr r0, [r0, #0x1c]
	ldrh r0, [r0, #2]
	add r0, r1, r0
	strh r0, [sl, #0x2e]
_0211D494:
	add r1, r4, #1
	ldr r0, [sl, #0x1c]
	and r4, r1, #0xff
	bl sub_02010B7C
	cmp r4, r0
	blo _0211D46C
_0211D4AC:
	ldr r0, [sl, #0x1c]
	mov r5, #0
	mov r6, r5
	bl sub_02010B90
	cmp r0, #0
	bls _0211D58C
	mov fp, #0x40
	add r4, sp, #0x138
_0211D4CC:
	ldr r0, [sl, #0x1c]
	mov r1, r6
	bl sub_02010B98
	cmp r0, #0xff
	beq _0211D574
	ldr r0, [sl, #0x1c]
	mov r1, r6
	bl sub_02010B98
	mov sb, r0
	mov r0, #0x44
	bl _Znwm
	movs r8, r0
	beq _0211D520
	bl sub_0201001C
	mov r2, #0
	add r1, r0, #0x24
	mov r0, r8
	mov r3, r2
	str fp, [sp]
	bl sub_0200ECD0
	mov r8, r0
_0211D520:
	add r1, sl, r6, lsl #2
	str r8, [r1, #0x388]
	mov r0, r7
	mov r1, sb
	bl sub_020107A8
	ldrh r2, [r0]
	ldr r1, _0211DE48 ; =s_bp_03d_overlay_1_021407d0
	mov r0, r4
	bl OS_SPrintf
	add r0, r6, #8
	str r0, [sp]
	add r0, sl, r6, lsl #2
	ldr r0, [r0, #0x388]
	ldr r1, _0211DE4C ; =s_data_pokeOBJ_overlay_1_021407d8
	mov r2, r4
	mov r3, r5
	bl sub_0200EE14
	add r0, sl, r6, lsl #2
	ldr r0, [r0, #0x388]
	ldr r0, [r0, #0x28]
	add r5, r5, r0
_0211D574:
	add r1, r6, #1
	ldr r0, [sl, #0x1c]
	and r6, r1, #0xff
	bl sub_02010B90
	cmp r6, r0
	blo _0211D4CC
_0211D58C:
	ldr r4, _0211DE50 ; =0x00000468
	mov r5, #0
_0211D594:
	mov r0, r4
	bl _Znwm
	cmp r0, #0
	beq _0211D5B0
	add r1, r5, #9
	and r1, r1, #0xff
	bl ov1_02126B38
_0211D5B0:
	add r1, sl, r5, lsl #2
	add r5, r5, #1
	str r0, [r1, #0x130]
	cmp r5, #0x60
	blt _0211D594
	ldr r4, _0211DE50 ; =0x00000468
	mov r5, #0
_0211D5CC:
	mov r0, r4
	bl _Znwm
	cmp r0, #0
	beq _0211D5E8
	add r1, r5, #0x69
	and r1, r1, #0xff
	bl ov1_02126B38
_0211D5E8:
	add r1, sl, r5, lsl #2
	add r5, r5, #1
	str r0, [r1, #0x2f8]
	cmp r5, #0x20
	blt _0211D5CC
	mov r2, #0
	str r2, [sl, #0x384]
	mov r4, r2
_0211D608:
	add r0, r2, #1
	add r1, sl, r2, lsl #2
	and r2, r0, #0xff
	str r4, [r1, #0x378]
	cmp r2, #3
	blo _0211D608
	mov r6, r4
	mov r5, #0x14
_0211D628:
	mov r0, r5
	bl _Znwm
	cmp r0, #0
	beq _0211D63C
	bl ov1_02137DA4
_0211D63C:
	add r1, sl, r4, lsl #2
	add r4, r4, #1
	str r0, [r1, #0xbc4]
	str r6, [r0, #0xc]
	cmp r4, #8
	sub r6, r6, #0x80
	blt _0211D628
	ldr r0, _0211DE54 ; =0x0000341C
	bl _Znwm
	cmp r0, #0
	beq _0211D66C
	bl ov1_0212E88C
_0211D66C:
	str r0, [sl, #0xbac]
	mov r0, #0x14
	bl _Znwm
	cmp r0, #0
	beq _0211D684
	bl sub_02018B9C
_0211D684:
	str r0, [sl, #0xc28]
	mov r1, #0x3f
	bl sub_02018DC4
	ldr r0, [sl, #0xc28]
	mov r1, #8
	bl sub_02018DD0
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211D6B0
	bl ov1_021364AC
_0211D6B0:
	str r0, [sl, #0x12c]
	mov r8, #0
	mov r4, #0x388
_0211D6BC:
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0xdc]
	cmp r0, #0
	beq _0211D748
	mov r0, r4
	bl _Znwm
	cmp r0, #0
	beq _0211D6E4
	ldr r1, [sl, #0x12c]
	bl ov1_02135CA0
_0211D6E4:
	add r1, sl, r8, lsl #2
	str r0, [r1, #0x10c]
	ldr r5, [r1, #0xdc]
	mov r0, sl
	ldr r1, [r5, #0x184]
	ldr sb, [r5, #0x20]
	ldr r6, [r1, #0x1c]
	ldr r3, [r5, #0x24]
	ldrsb r2, [r6, #0xf]
	ldrb r1, [r6, #0xe]
	str sb, [sp, #0x10]
	add r2, r3, r2, lsl #12
	str r2, [sp, #0x14]
	bl ov1_02122D3C
	mov r2, sb
	str r2, [sp]
	ldr r1, [sp, #0x14]
	add r2, r5, #0x100
	str r1, [sp, #4]
	add r5, sl, r8, lsl #2
	mov r1, r0
	ldrh r2, [r2, #0x88]
	ldrh r3, [r6]
	ldr r0, [r5, #0x10c]
	bl ov1_02135E70
_0211D748:
	add r8, r8, #1
	cmp r8, #8
	blt _0211D6BC
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211D768
	bl ov1_02129B74
_0211D768:
	str r0, [sl, #0xbe8]
	mov r0, #0x14
	bl _Znwm
	cmp r0, #0
	beq _0211D780
	bl ov1_021297C0
_0211D780:
	str r0, [sl, #0xbec]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211D798
	bl ov1_021278E8
_0211D798:
	str r0, [sl, #0xbf0]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211D7B0
	bl ov1_021274AC
_0211D7B0:
	str r0, [sl, #0xbf4]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211D7C8
	bl ov1_021281B4
_0211D7C8:
	str r0, [sl, #0xbf8]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211D7E0
	bl ov1_02128600
_0211D7E0:
	str r0, [sl, #0xbfc]
	mov r0, #0x78
	bl _Znwm
	cmp r0, #0
	beq _0211D7F8
	bl ov1_02128E88
_0211D7F8:
	str r0, [sl, #0xc00]
	mov r0, #0x14
	bl _Znwm
	cmp r0, #0
	beq _0211D810
	bl ov1_021294BC
_0211D810:
	str r0, [sl, #0xc04]
	mov r4, #0
_0211D818:
	add r0, sl, r4, lsl #2
	ldr r0, [r0, #0xdc]
	cmp r0, #0
	beq _0211D8DC
	ldr r0, [r0, #0x198]
	ldr r1, [sl, #0xbe8]
	bl ov1_0212A058
	add r0, sl, r4, lsl #2
	ldr r0, [r0, #0xdc]
	ldr r1, [sl, #0xbec]
	ldr r0, [r0, #0x19c]
	bl ov1_02129AF4
	add r0, sl, r4, lsl #2
	ldr r0, [r0, #0xdc]
	ldr r1, [sl, #0xbf0]
	ldr r0, [r0, #0x1a0]
	bl ov1_02127C60
	add r0, sl, r4, lsl #2
	ldr r0, [r0, #0xdc]
	ldr r1, [sl, #0xbf4]
	ldr r0, [r0, #0x1a4]
	bl ov1_02127854
	add r0, sl, r4, lsl #2
	ldr r0, [r0, #0xdc]
	ldr r1, [sl, #0xbf8]
	ldr r0, [r0, #0x1a8]
	bl ov1_0212854C
	add r0, sl, r4, lsl #2
	ldr r0, [r0, #0xdc]
	ldr r1, [sl, #0xbfc]
	ldr r0, [r0, #0x1ac]
	bl ov1_0212891C
	add r0, sl, r4, lsl #2
	ldr r0, [r0, #0xdc]
	ldr r1, [sl, #0xc00]
	ldr r0, [r0, #0x1b0]
	bl ov1_02129274
	add r0, sl, r4, lsl #2
	ldr r0, [r0, #0xdc]
	ldr r1, [sl, #0xc04]
	ldr r0, [r0, #0x1b4]
	bl ov1_02129784
	add r2, sl, r4, lsl #2
	ldr r1, [r2, #0x10c]
	ldr r0, [r2, #0xdc]
	str r1, [r0, #0x1b8]
	ldr r0, [r2, #0xdc]
	ldr r1, [sl, #0xba8]
	str r1, [r0, #0x1bc]
_0211D8DC:
	add r4, r4, #1
	cmp r4, #8
	blt _0211D818
	mov r0, #0x158
	bl _Znwm
	movs r4, r0
	beq _0211D910
	ldr r0, [sl, #0x1c]
	bl sub_02010C34
	mov r1, r0
	mov r0, r4
	bl ov1_0213F028
	mov r4, r0
_0211D910:
	str r4, [sl, #0xc10]
	ldr r1, _0211DE3C ; =MAIN_BSS_020B26A0
	ldr r0, [sl, #0x1c]
	ldrb r5, [r1, #2]
	bl sub_02010B2C
	mov r4, r0
	ldr r0, _0211DE58 ; =0x000005E4
	bl _Znwm
	cmp r0, #0
	beq _0211D93C
	bl sub_02019284
_0211D93C:
	str r0, [sl, #0xbb0]
	mov r1, #1
	bl sub_0201A140
	ldr r0, [sl, #0xbb0]
	mov r1, r4
	mov r2, r5
	bl sub_0201A000
	ldr r0, [sl, #0x1c]
	bl sub_02010B3C
	cmp r0, #0
	ldr r0, [sl, #0xbb0]
	beq _0211D998
	mov r1, #1
	bl sub_0201A178
	ldr r1, [sl, #0x74]
	ldr r0, [sl, #0x78]
	mov r1, r1, lsl #4
	mov r2, r0, lsl #4
	ldr r0, [sl, #0xbb0]
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl sub_0201A220
	b _0211D9A0
_0211D998:
	mov r1, #0
	bl sub_0201A178
_0211D9A0:
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _0211D9B4
	bl ov1_021380AC
_0211D9B4:
	str r0, [sl, #0xc08]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _0211D9CC
	bl ov1_021382D0
_0211D9CC:
	str r0, [sl, #0xc0c]
	mov r0, #8
	bl _Znwm
	movs r4, r0
	beq _0211D9FC
	ldr r1, _0211DE5C ; =MAIN_BSS_0210CA78
	mov r2, #0
	str r4, [r1]
	str r2, [r4]
	mov r1, #8
	str r2, [r4, #4]
	bl sub_02035720
_0211D9FC:
	str r4, [sl, #0xc2c]
	ldr r0, [sl, #0x1c]
	bl sub_02010BB8
	mov r1, r0
	ldr r0, [sl, #0xc2c]
	bl sub_02035D38
	ldr r0, [sl, #0x1c]
	bl sub_02010BB8
	mov r1, r0
	mov r2, #0
	str r2, [sp]
	ldr r0, [sl, #0xc2c]
	sub r3, r2, #1
	bl sub_02035DA0
	mov r0, #0x1b8
	bl _Znwm
	cmp r0, #0
	beq _0211DA54
	ldr r1, [sl, #4]
	ldr r2, [sl, #0xd8]
	ldr r3, [sl, #0xbb0]
	bl ov1_0213A4D4
_0211DA54:
	str r0, [sl, #0xbbc]
	mov r0, #0xb20
	bl _Znwm
	cmp r0, #0
	beq _0211DA6C
	bl ov1_021384F8
_0211DA6C:
	mov r1, #0x500
	str r0, [sl, #0xbb8]
	bl ov1_02139CE4
	mov r0, #0x178
	bl _Znwm
	cmp r0, #0
	beq _0211DA90
	ldr r1, [sl, #4]
	bl ov1_0213CC28
_0211DA90:
	str r0, [sl, #0xc30]
	mov r1, #1
	bl ov1_0213EF94
	ldr r0, [sl, #0x1c]
	bl sub_02010B7C
	mov r1, r0
	ldr r0, [sl, #0xc30]
	bl ov1_0213E9F4
	ldr r0, [sl, #0x1c]
	mov r5, #0
	bl sub_02010B7C
	cmp r0, #0
	bls _0211DB24
_0211DAC4:
	ldr r0, [sl, #0x1c]
	mov r1, r5
	bl sub_02010B84
	mov r1, r0
	ldr r0, [sl, #0x1c]
	bl sub_02010B70
	mov r1, r0
	mov r0, r7
	bl sub_020107A8
	mov r4, r0
	ldrh r1, [r4]
	ldr r0, [sl, #0xc30]
	mov r2, r5
	bl ov1_0213EDA4
	ldrb r1, [r4, #3]
	ldr r0, [sl, #0xc30]
	mov r2, r5
	bl ov1_0213EC34
	add r0, r5, #1
	and r5, r0, #0xff
	ldr r0, [sl, #0x1c]
	bl sub_02010B7C
	cmp r5, r0
	blo _0211DAC4
_0211DB24:
	mov r0, #0x7c
	bl _Znwm
	cmp r0, #0
	beq _0211DB38
	bl sub_0201CA6C
_0211DB38:
	str r0, [sl, #0xc34]
	ldr r0, _0211DE60 ; =0x00000FFC
	bl _Znwm
	cmp r0, #0
	beq _0211DB64
	ldr r2, [sl, #0xd0]
	mov r1, r7
	str r2, [sp]
	ldr r2, [sl, #0xc18]
	ldr r3, [sl, #0xc30]
	bl ov1_0213AE18
_0211DB64:
	str r0, [sl, #0xbc0]
	mov r0, #0x1c
	bl _Znwm
	movs r4, r0
	beq _0211DB90
	ldr r0, [sl, #0x1c]
	bl sub_02010BB0
	mov r1, r0
	mov r0, r4
	bl sub_02042108
	mov r4, r0
_0211DB90:
	ldr r1, _0211DE64 ; =0x0400000E
	str r4, [sl, #0xd4]
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0x700
	strh r0, [r1]
	bl sub_0201001C
	mov r3, #0
	str r3, [sp]
	ldr r0, [r0, #0xc24]
	mov r1, #3
	mov r2, #0x2000
	bl sub_02002434
	mov r0, #8
	bl _Znwm
	cmp r0, #0
	beq _0211DBDC
	ldr r1, [sl, #4]
	bl ov1_02135BB4
_0211DBDC:
	str r0, [sl, #0xc40]
	ldr r0, [sl, #0x1c]
	bl sub_02010BC0
	mov r2, r0
	ldr r1, _0211DE68 ; =s_data_script_battle_sequence_s_03_overlay_1_021407e8
	add r0, sp, #0xd8
	bl OS_SPrintf
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _0211DC24
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	add r1, sp, #0xd8
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
_0211DC24:
	str r0, [sl, #0xc44]
	ldr r0, [r0, #0x4c]
	str r0, [sl, #0xc48]
	bl sub_02044AC8
	add r0, sl, #0x24c
	add r1, sl, #0x4c
	add r0, r0, #0xc00
	add r1, r1, #0xc00
	mov r2, #0x80
	bl sub_02044B48
	ldr r1, [sl, #0xe50]
	mov r0, #1
	sub r4, r1, #8
	str r4, [sl, #0xe50]
	str r0, [r4]
	ldr r0, [sl, #0x1c]
	bl sub_02010B7C
	str r0, [r4, #4]
	add r0, sl, #0x24c
	ldr r1, [sl, #0xc48]
	ldr r2, _0211DE6C ; =s_initialize_overlay_1_02140810
	add r0, r0, #0xc00
	mov r3, #2
	bl sub_02046040
	add r0, sl, #0x24c
	ldr r1, [sl, #0xc48]
	ldr r2, _0211DE70 ; =s_proc_overlay_1_0214081c
	add r0, r0, #0xc00
	bl sub_02045A18
	ldr r0, [sl, #0x1c]
	bl sub_02010BC8
	mov r2, r0
	ldr r1, _0211DE74 ; =s_data_script_battle_tutorial_t_03_overlay_1_02140824
	add r0, sp, #0x78
	bl OS_SPrintf
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _0211DCDC
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	add r1, sp, #0x78
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
_0211DCDC:
	str r0, [sl, #0xe70]
	ldr r0, [r0, #0x4c]
	str r0, [sl, #0xe74]
	bl sub_02044AC8
	add r0, sl, #0x78
	add r1, sl, #0x278
	add r0, r0, #0x1000
	add r1, r1, #0xc00
	mov r2, #0x80
	bl sub_02044B48
	add r0, sl, #0x1000
	ldr r2, [r0, #0x7c]
	mov r1, #1
	sub r4, r2, #8
	str r4, [r0, #0x7c]
	str r1, [r4]
	ldr r0, [sl, #0x1c]
	bl sub_02010B7C
	str r0, [r4, #4]
	add r0, sl, #0x78
	ldr r1, [sl, #0xe74]
	ldr r2, _0211DE6C ; =s_initialize_overlay_1_02140810
	add r0, r0, #0x1000
	mov r3, #2
	bl sub_02046040
	add r0, sl, #0x78
	ldr r1, [sl, #0xe74]
	ldr r2, _0211DE70 ; =s_proc_overlay_1_0214081c
	add r0, r0, #0x1000
	bl sub_02045A18
	ldr r0, [sl, #0x1c]
	bl sub_02010BD0
	mov r2, r0
	ldr r1, _0211DE78 ; =s_data_script_battle_start_s_03d_f_overlay_1_0214084c
	add r0, sp, #0x18
	bl OS_SPrintf
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _0211DD98
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	add r1, sp, #0x18
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
_0211DD98:
	add r1, sl, #0x1000
	str r0, [r1, #0x9c]
	ldr r0, [r0, #0x4c]
	str r0, [r1, #0xa0]
	bl sub_02044AC8
	add r0, sl, #0x2a4
	add r1, sl, #0xa4
	add r0, r0, #0x1000
	add r1, r1, #0x1000
	mov r2, #0x80
	bl sub_02044B48
	add r0, sl, #0x1000
	ldr r2, [r0, #0x2a8]
	mov r1, #1
	sub r4, r2, #8
	str r4, [r0, #0x2a8]
	str r1, [r4]
	ldr r0, [sl, #0x1c]
	bl sub_02010B7C
	str r0, [r4, #4]
	add r1, sl, #0x1000
	add r0, sl, #0x2a4
	ldr r1, [r1, #0xa0]
	ldr r2, _0211DE6C ; =s_initialize_overlay_1_02140810
	add r0, r0, #0x1000
	mov r3, #2
	bl sub_02046040
	add r1, sl, #0x1000
	add r0, sl, #0x2a4
	ldr r1, [r1, #0xa0]
	ldr r2, _0211DE70 ; =s_proc_overlay_1_0214081c
	add r0, r0, #0x1000
	bl sub_02045A18
	bl NNS_GfdDumpLnkTexVramManager
	bl NNS_GfdDumpLnkPlttVramManager
	add sp, sp, #0x198
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211DE2C: .word ptr_FUN_overlay_1_0212a298_overlay_1_02141038
_0211DE30: .word s_data_param_BattleAssist_bin_overlay_1_02140790
_0211DE34: .word s_data_param_BattleAssistPartner_b_overlay_1_021407ac
_0211DE38: .word 0x007FF000
_0211DE3C: .word MAIN_BSS_020B26A0
_0211DE40: .word 0x0000FFFF
_0211DE44: .word 0x00000704
_0211DE48: .word s_bp_03d_overlay_1_021407d0
_0211DE4C: .word s_data_pokeOBJ_overlay_1_021407d8
_0211DE50: .word 0x00000468
_0211DE54: .word 0x0000341C
_0211DE58: .word 0x000005E4
_0211DE5C: .word MAIN_BSS_0210CA78
_0211DE60: .word 0x00000FFC
_0211DE64: .word 0x0400000E
_0211DE68: .word s_data_script_battle_sequence_s_03_overlay_1_021407e8
_0211DE6C: .word s_initialize_overlay_1_02140810
_0211DE70: .word s_proc_overlay_1_0214081c
_0211DE74: .word s_data_script_battle_tutorial_t_03_overlay_1_02140824
_0211DE78: .word s_data_script_battle_start_s_03d_f_overlay_1_0214084c

	arm_func_start ov1_0211DE7C
ov1_0211DE7C: ; 0x0211DE7C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x49c]
	bl sub_02034290
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AC90Ev
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200B59CEv
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020092D4Ev
	ldr r5, [r4, #0xc4]
	cmp r5, #0
	beq _0211DEEC
	beq _0211DEE4
	mov r0, r5
	bl sub_0200372C
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_0211DE7C
_0211DEE4:
	mov r0, #0
	str r0, [r4, #0xc4]
_0211DEEC:
	ldr r5, [r4, #0xc8]
	cmp r5, #0
	beq _0211DF14
	beq _0211DF0C
	mov r0, r5
	bl sub_0200372C
	mov r0, r5
	bl _ZdlPv
_0211DF0C:
	mov r0, #0
	str r0, [r4, #0xc8]
_0211DF14:
	ldr r5, [r4, #0xcc]
	cmp r5, #0
	beq _0211DF3C
	beq _0211DF34
	mov r0, r5
	bl sub_0200D414
	mov r0, r5
	bl _ZdlPv
_0211DF34:
	mov r0, #0
	str r0, [r4, #0xcc]
_0211DF3C:
	ldr r5, [r4, #0xd0]
	cmp r5, #0
	beq _0211DF64
	beq _0211DF5C
	mov r0, r5
	bl sub_0201AE58
	mov r0, r5
	bl _ZdlPv
_0211DF5C:
	mov r0, #0
	str r0, [r4, #0xd0]
_0211DF64:
	ldr r5, [r4, #0xd4]
	cmp r5, #0
	beq _0211DF8C
	beq _0211DF84
	mov r0, r5
	bl sub_02042120
	mov r0, r5
	bl _ZdlPv
_0211DF84:
	mov r0, #0
	str r0, [r4, #0xd4]
_0211DF8C:
	ldr r0, [r4, #0xd8]
	cmp r0, #0
	beq _0211DFB0
	beq _0211DFA8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211DFA8:
	mov r0, #0
	str r0, [r4, #0xd8]
_0211DFB0:
	mov r6, #0
	mov r5, r6
_0211DFB8:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0xdc]
	cmp r0, #0
	beq _0211DFE0
	beq _0211DFD8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211DFD8:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0xdc]
_0211DFE0:
	add r6, r6, #1
	cmp r6, #8
	blt _0211DFB8
	mov r6, #0
	mov r5, r6
_0211DFF4:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0xfc]
	cmp r0, #0
	beq _0211E01C
	beq _0211E014
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E014:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0xfc]
_0211E01C:
	add r6, r6, #1
	cmp r6, #4
	blt _0211DFF4
	mov r6, #0
	mov r5, r6
_0211E030:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x10c]
	cmp r0, #0
	beq _0211E058
	beq _0211E050
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E050:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x10c]
_0211E058:
	add r6, r6, #1
	cmp r6, #4
	blt _0211E030
	ldr r5, [r4, #0x12c]
	cmp r5, #0
	beq _0211E08C
	beq _0211E084
	mov r0, r5
	bl ov1_021364C0
	mov r0, r5
	bl _ZdlPv
_0211E084:
	mov r0, #0
	str r0, [r4, #0x12c]
_0211E08C:
	mov r6, #0
	mov r5, r6
_0211E094:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x130]
	cmp r0, #0
	beq _0211E0BC
	beq _0211E0B4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E0B4:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x130]
_0211E0BC:
	add r6, r6, #1
	cmp r6, #0x60
	blt _0211E094
	mov r6, #0
	mov r5, r6
_0211E0D0:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x2b0]
	cmp r0, #0
	beq _0211E0F8
	beq _0211E0F0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E0F0:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x2b0]
_0211E0F8:
	add r6, r6, #1
	cmp r6, #0x12
	blt _0211E0D0
	mov r6, #0
	mov r5, r6
_0211E10C:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x2f8]
	cmp r0, #0
	beq _0211E134
	beq _0211E12C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E12C:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x2f8]
_0211E134:
	add r6, r6, #1
	cmp r6, #0x20
	blt _0211E10C
	mov r6, #0
	mov r5, r6
_0211E148:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x378]
	cmp r0, #0
	beq _0211E170
	beq _0211E168
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E168:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x378]
_0211E170:
	add r6, r6, #1
	cmp r6, #3
	blt _0211E148
	ldr r0, [r4, #0x384]
	cmp r0, #0
	beq _0211E1A0
	beq _0211E198
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E198:
	mov r0, #0
	str r0, [r4, #0x384]
_0211E1A0:
	mov r6, #0
	mov r5, r6
_0211E1A8:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0x388]
	cmp r7, #0
	beq _0211E1D4
	beq _0211E1CC
	mov r0, r7
	bl sub_0200ED2C
	mov r0, r7
	bl _ZdlPv
_0211E1CC:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x388]
_0211E1D4:
	add r6, r6, #1
	cmp r6, #8
	blt _0211E1A8
	mov r6, #0
	mov r5, r6
_0211E1E8:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0x3a8]
	cmp r7, #0
	beq _0211E214
	beq _0211E20C
	mov r0, r7
	bl ov1_0213674C
	mov r0, r7
	bl _ZdlPv
_0211E20C:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x3a8]
_0211E214:
	add r6, r6, #1
	cmp r6, #0x200
	blt _0211E1E8
	ldr r5, [r4, #0xba8]
	cmp r5, #0
	beq _0211E248
	beq _0211E240
	mov r0, r5
	bl ov1_02136AE8
	mov r0, r5
	bl _ZdlPv
_0211E240:
	mov r0, #0
	str r0, [r4, #0xba8]
_0211E248:
	ldr r5, [r4, #0xbac]
	cmp r5, #0
	beq _0211E270
	beq _0211E268
	mov r0, r5
	bl ov1_0212E8FC
	mov r0, r5
	bl _ZdlPv
_0211E268:
	mov r0, #0
	str r0, [r4, #0xbac]
_0211E270:
	ldr r0, [r4, #0xbb0]
	cmp r0, #0
	beq _0211E294
	beq _0211E28C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E28C:
	mov r0, #0
	str r0, [r4, #0xbb0]
_0211E294:
	ldr r0, [r4, #0xbb4]
	cmp r0, #0
	beq _0211E2B8
	beq _0211E2B0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E2B0:
	mov r0, #0
	str r0, [r4, #0xbb4]
_0211E2B8:
	ldr r5, [r4, #0xbb8]
	cmp r5, #0
	beq _0211E2E0
	beq _0211E2D8
	mov r0, r5
	bl ov1_02138CAC
	mov r0, r5
	bl _ZdlPv
_0211E2D8:
	mov r0, #0
	str r0, [r4, #0xbb8]
_0211E2E0:
	ldr r0, [r4, #0xbbc]
	cmp r0, #0
	beq _0211E304
	beq _0211E2FC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E2FC:
	mov r0, #0
	str r0, [r4, #0xbbc]
_0211E304:
	ldr r5, [r4, #0xbc0]
	cmp r5, #0
	beq _0211E32C
	beq _0211E324
	mov r0, r5
	bl ov1_0213B1B0
	mov r0, r5
	bl _ZdlPv
_0211E324:
	mov r0, #0
	str r0, [r4, #0xbc0]
_0211E32C:
	ldr r5, [r4, #0xc34]
	cmp r5, #0
	beq _0211E354
	beq _0211E34C
	mov r0, r5
	bl sub_0201CAF0
	mov r0, r5
	bl _ZdlPv
_0211E34C:
	mov r0, #0
	str r0, [r4, #0xc34]
_0211E354:
	mov r6, #0
	mov r5, r6
_0211E35C:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0xbc4]
	cmp r7, #0
	beq _0211E388
	beq _0211E380
	mov r0, r7
	bl ov1_02137DBC
	mov r0, r7
	bl _ZdlPv
_0211E380:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0xbc4]
_0211E388:
	add r6, r6, #1
	cmp r6, #8
	blt _0211E35C
	ldr r5, [r4, #0xbe8]
	cmp r5, #0
	beq _0211E3BC
	beq _0211E3B4
	mov r0, r5
	bl ov1_02129B88
	mov r0, r5
	bl _ZdlPv
_0211E3B4:
	mov r0, #0
	str r0, [r4, #0xbe8]
_0211E3BC:
	ldr r5, [r4, #0xbec]
	cmp r5, #0
	beq _0211E3E4
	beq _0211E3DC
	mov r0, r5
	bl ov1_021297D4
	mov r0, r5
	bl _ZdlPv
_0211E3DC:
	mov r0, #0
	str r0, [r4, #0xbec]
_0211E3E4:
	ldr r5, [r4, #0xbf0]
	cmp r5, #0
	beq _0211E40C
	beq _0211E404
	mov r0, r5
	bl ov1_021278FC
	mov r0, r5
	bl _ZdlPv
_0211E404:
	mov r0, #0
	str r0, [r4, #0xbf0]
_0211E40C:
	ldr r5, [r4, #0xbf4]
	cmp r5, #0
	beq _0211E434
	beq _0211E42C
	mov r0, r5
	bl ov1_021274C0
	mov r0, r5
	bl _ZdlPv
_0211E42C:
	mov r0, #0
	str r0, [r4, #0xbf4]
_0211E434:
	ldr r5, [r4, #0xbf8]
	cmp r5, #0
	beq _0211E45C
	beq _0211E454
	mov r0, r5
	bl ov1_021281C8
	mov r0, r5
	bl _ZdlPv
_0211E454:
	mov r0, #0
	str r0, [r4, #0xbf8]
_0211E45C:
	ldr r5, [r4, #0xbfc]
	cmp r5, #0
	beq _0211E484
	beq _0211E47C
	mov r0, r5
	bl ov1_02128614
	mov r0, r5
	bl _ZdlPv
_0211E47C:
	mov r0, #0
	str r0, [r4, #0xbfc]
_0211E484:
	ldr r5, [r4, #0xc00]
	cmp r5, #0
	beq _0211E4AC
	beq _0211E4A4
	mov r0, r5
	bl ov1_02128E9C
	mov r0, r5
	bl _ZdlPv
_0211E4A4:
	mov r0, #0
	str r0, [r4, #0xc00]
_0211E4AC:
	ldr r5, [r4, #0xc04]
	cmp r5, #0
	beq _0211E4D4
	beq _0211E4CC
	mov r0, r5
	bl ov1_021294D0
	mov r0, r5
	bl _ZdlPv
_0211E4CC:
	mov r0, #0
	str r0, [r4, #0xc04]
_0211E4D4:
	ldr r5, [r4, #0xc10]
	cmp r5, #0
	beq _0211E4FC
	beq _0211E4F4
	mov r0, r5
	bl ov1_0213F094
	mov r0, r5
	bl _ZdlPv
_0211E4F4:
	mov r0, #0
	str r0, [r4, #0xc10]
_0211E4FC:
	ldr r5, [r4, #0xc08]
	cmp r5, #0
	beq _0211E524
	beq _0211E51C
	mov r0, r5
	bl ov1_021380C0
	mov r0, r5
	bl _ZdlPv
_0211E51C:
	mov r0, #0
	str r0, [r4, #0xc08]
_0211E524:
	ldr r5, [r4, #0xc0c]
	cmp r5, #0
	beq _0211E54C
	beq _0211E544
	mov r0, r5
	bl ov1_021382E4
	mov r0, r5
	bl _ZdlPv
_0211E544:
	mov r0, #0
	str r0, [r4, #0xc0c]
_0211E54C:
	ldr r5, [r4, #0xc2c]
	cmp r5, #0
	beq _0211E580
	beq _0211E578
	mov r0, r5
	bl sub_02035774
	ldr r1, _0211E718 ; =MAIN_BSS_0210CA78
	mov r2, #0
	mov r0, r5
	str r2, [r1]
	bl _ZdlPv
_0211E578:
	mov r0, #0
	str r0, [r4, #0xc2c]
_0211E580:
	ldr r5, [r4, #0xc18]
	cmp r5, #0
	beq _0211E5A8
	beq _0211E5A0
	mov r0, r5
	bl ov1_0212DFC4
	mov r0, r5
	bl _ZdlPv
_0211E5A0:
	mov r0, #0
	str r0, [r4, #0xc18]
_0211E5A8:
	ldr r5, [r4, #0xc1c]
	cmp r5, #0
	beq _0211E5D0
	beq _0211E5C8
	mov r0, r5
	bl ov1_0212E304
	mov r0, r5
	bl _ZdlPv
_0211E5C8:
	mov r0, #0
	str r0, [r4, #0xc1c]
_0211E5D0:
	ldr r5, [r4, #0xc20]
	cmp r5, #0
	beq _0211E5F8
	beq _0211E5F0
	mov r0, r5
	bl ov1_0212F2E8
	mov r0, r5
	bl _ZdlPv
_0211E5F0:
	mov r0, #0
	str r0, [r4, #0xc20]
_0211E5F8:
	ldr r5, [r4, #0xc24]
	cmp r5, #0
	beq _0211E620
	beq _0211E618
	mov r0, r5
	bl ov1_0212F2E8
	mov r0, r5
	bl _ZdlPv
_0211E618:
	mov r0, #0
	str r0, [r4, #0xc24]
_0211E620:
	ldr r5, [r4, #0xc28]
	cmp r5, #0
	beq _0211E648
	beq _0211E640
	mov r0, r5
	bl sub_02018BB0
	mov r0, r5
	bl _ZdlPv
_0211E640:
	mov r0, #0
	str r0, [r4, #0xc28]
_0211E648:
	ldr r5, [r4, #0xc30]
	cmp r5, #0
	beq _0211E670
	beq _0211E668
	mov r0, r5
	bl ov1_0213CD2C
	mov r0, r5
	bl _ZdlPv
_0211E668:
	mov r0, #0
	str r0, [r4, #0xc30]
_0211E670:
	ldr r5, [r4, #0xc40]
	cmp r5, #0
	beq _0211E698
	beq _0211E690
	mov r0, r5
	bl ov1_02135BEC
	mov r0, r5
	bl _ZdlPv
_0211E690:
	mov r0, #0
	str r0, [r4, #0xc40]
_0211E698:
	ldr r0, [r4, #0xc44]
	cmp r0, #0
	beq _0211E6BC
	beq _0211E6B4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E6B4:
	mov r0, #0
	str r0, [r4, #0xc44]
_0211E6BC:
	ldr r0, [r4, #0xe70]
	cmp r0, #0
	beq _0211E6E0
	beq _0211E6D8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E6D8:
	mov r0, #0
	str r0, [r4, #0xe70]
_0211E6E0:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x9c]
	cmp r0, #0
	beq _0211E70C
	beq _0211E700
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E700:
	add r0, r4, #0x1000
	mov r1, #0
	str r1, [r0, #0x9c]
_0211E70C:
	bl NNS_GfdResetLnkTexVramState
	bl NNS_GfdResetLnkPlttVramState
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211E718: .word MAIN_BSS_0210CA78

	arm_func_start ov1_0211E71C
ov1_0211E71C: ; 0x0211E71C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	bl NNS_GfdDumpLnkTexVramManager
	ldr r4, [sb, #0xd4]
	cmp r4, #0
	beq _0211E754
	beq _0211E74C
	mov r0, r4
	bl sub_02042120
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov1_0211E71C
_0211E74C:
	mov r0, #0
	str r0, [sb, #0xd4]
_0211E754:
	ldr r0, [sb, #0x384]
	mov r4, #0
	cmp r0, #0
	beq _0211E7A8
	ldr r1, [r0]
	mov r4, #1
	ldr r1, [r1, #0x10]
	blx r1
	mov r5, r0
	ldr r0, [sb, #0x384]
	ldr r7, [sb, #0xc38]
	cmp r0, #0
	ldrh r6, [r0, #4]
	beq _0211E7A8
	cmp r0, #0
	beq _0211E7A0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E7A0:
	mov r0, #0
	str r0, [sb, #0x384]
_0211E7A8:
	mov r0, #0x1c
	bl _Znwm
	cmp r0, #0
	beq _0211E7C0
	mov r1, r8
	bl sub_02042108
_0211E7C0:
	str r0, [sb, #0xd4]
	cmp r4, #0
	beq _0211E7E0
	mov r0, sb
	mov r1, r5
	mov r2, r6
	mov r3, r7
	bl ov1_0211E928
_0211E7E0:
	bl NNS_GfdDumpLnkTexVramManager
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov1_0211E7E8
ov1_0211E7E8: ; 0x0211E7E8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r2, [r5, #0xbe4]
	mov r4, r1
	cmp r2, #0x12
	movhs r0, #0
	ldmhsia sp!, {r4, r5, r6, pc}
	cmp r2, #0
	mov r1, #0
	ble _0211E840
	arm_func_end ov1_0211E7E8
_0211E810:
	add r0, r5, r1, lsl #2
	ldr r0, [r0, #0x2b0]
	cmp r0, #0
	beq _0211E834
	ldr r0, [r0, #0x18]
	ldrh r0, [r0]
	cmp r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_0211E834:
	add r1, r1, #1
	cmp r1, r2
	blt _0211E810
_0211E840:
	ldr r1, [r5, #0xc1c]
	ldrh r0, [r1]
	cmp r4, r0
	ldrlo r1, [r1, #4]
	movhs r6, #0
	movlo r0, #0x1c
	mlalo r6, r4, r0, r1
	mov r0, #0x110
	bl _Znwm
	cmp r0, #0
	beq _0211E884
	ldr r2, [r5, #4]
	mov r1, r4
	add r2, r2, #0x1000
	ldr r3, [r2, #0x4a8]
	mov r2, r6
	bl ov1_02126800
_0211E884:
	ldrb r1, [r5, #0xbe4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x2b0]
	ldrb r1, [r5, #0xbe4]
	mov r0, #1
	add r1, r1, #1
	strb r1, [r5, #0xbe4]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_0211E8A4
ov1_0211E8A4: ; 0x0211E8A4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r2
	mov r6, r0
	ldr r0, [r4]
	mov r5, r1
	cmp r0, #0
	beq _0211E8D8
	beq _0211E8D0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_0211E8A4
_0211E8D0:
	mov r0, #0
	str r0, [r4]
_0211E8D8:
	ldr r1, [r6, #0xc1c]
	ldrh r0, [r1]
	cmp r5, r0
	ldrlo r1, [r1, #4]
	movhs r7, #0
	movlo r0, #0x1c
	mlalo r7, r5, r0, r1
	mov r0, #0x110
	bl _Znwm
	cmp r0, #0
	beq _0211E91C
	ldr r2, [r6, #4]
	mov r1, r5
	add r2, r2, #0x1000
	ldr r3, [r2, #0x4a8]
	mov r2, r7
	bl ov1_02126800
_0211E91C:
	str r0, [r4]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_0211E928
ov1_0211E928: ; 0x0211E928
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov1_02122B90
	ldr r0, [r7, #0x384]
	cmp r0, #0
	beq _0211E964
	beq _0211E95C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_0211E928
_0211E95C:
	mov r0, #0
	str r0, [r7, #0x384]
_0211E964:
	mov sb, #0
	mov r8, sb
_0211E96C:
	add r0, r7, sb, lsl #2
	ldr r0, [r0, #0x378]
	cmp r0, #0
	beq _0211E994
	beq _0211E98C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E98C:
	add r0, r7, sb, lsl #2
	str r8, [r0, #0x378]
_0211E994:
	add r0, sb, #1
	and sb, r0, #0xff
	cmp sb, #3
	blo _0211E96C
	cmp r4, #0
	ldrne r8, [r7, #0xc24]
	ldreq r8, [r7, #0xc20]
	str r4, [r7, #0xc38]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r4, [r0, #0x48c]
	cmp r6, #0x11
	addls pc, pc, r6, lsl #2
	b _0211EF08
_0211E9CC: ; jump table
	b _0211EA14 ; case 0
	b _0211EA40 ; case 1
	b _0211EA88 ; case 2
	b _0211EB18 ; case 3
	b _0211EAD0 ; case 4
	b _0211EB60 ; case 5
	b _0211EBB8 ; case 6
	b _0211EBE4 ; case 7
	b _0211EC2C ; case 8
	b _0211EC8C ; case 9
	b _0211ECD4 ; case 10
	b _0211ED1C ; case 11
	b _0211ED7C ; case 12
	b _0211EDC4 ; case 13
	b _0211EE0C ; case 14
	b _0211EE64 ; case 15
	b _0211EE90 ; case 16
	b _0211EED8 ; case 17
_0211EA14:
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211EA38
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_02133B44
_0211EA38:
	str r0, [r7, #0x384]
	b _0211EF08
_0211EA40:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xd6
	bl ov1_0211E8A4
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211EA74
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_02130B74
_0211EA74:
	str r0, [r7, #0x384]
	mov r0, r4
	mov r1, #0x90
	bl sub_020348DC
	b _0211EF08
_0211EA88:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xcb
	bl ov1_0211E8A4
	mov r0, #0x68
	bl _Znwm
	cmp r0, #0
	beq _0211EABC
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_021352D4
_0211EABC:
	str r0, [r7, #0x384]
	mov r0, r4
	mov r1, #0x8b
	bl sub_020348DC
	b _0211EF08
_0211EAD0:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xd5
	bl ov1_0211E8A4
	mov r0, #0xe4
	bl _Znwm
	cmp r0, #0
	beq _0211EB04
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_02131B48
_0211EB04:
	str r0, [r7, #0x384]
	mov r0, r4
	mov r1, #0x91
	bl sub_020348DC
	b _0211EF08
_0211EB18:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xd7
	bl ov1_0211E8A4
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _0211EB4C
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_0212FC28
_0211EB4C:
	str r0, [r7, #0x384]
	mov r0, r4
	mov r1, #0x92
	bl sub_020348DC
	b _0211EF08
_0211EB60:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xcd
	bl ov1_0211E8A4
	mov r0, r7
	add r2, r7, #0x37c
	mov r1, #0xce
	bl ov1_0211E8A4
	mov r0, #0xcc
	bl _Znwm
	cmp r0, #0
	beq _0211EBA4
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_02132534
_0211EBA4:
	str r0, [r7, #0x384]
	mov r0, r4
	mov r1, #0x8c
	bl sub_020348DC
	b _0211EF08
_0211EBB8:
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211EBDC
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_02131A84
_0211EBDC:
	str r0, [r7, #0x384]
	b _0211EF08
_0211EBE4:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xcf
	bl ov1_0211E8A4
	mov r0, #0xf4
	bl _Znwm
	cmp r0, #0
	beq _0211EC18
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_02133C08
_0211EC18:
	str r0, [r7, #0x384]
	mov r0, r4
	mov r1, #0x93
	bl sub_020348DC
	b _0211EF08
_0211EC2C:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xca
	bl ov1_0211E8A4
	mov r0, #0x2c
	bl _Znwm
	movs sb, r0
	beq _0211EC64
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_0213210C
	mov sb, r0
_0211EC64:
	mov r0, r7
	bl ov1_021227C4
	mov r1, r0
	mov r0, sb
	bl ov1_0213219C
	mov r0, r4
	mov r1, #0x8d
	str sb, [r7, #0x384]
	bl sub_020348DC
	b _0211EF08
_0211EC8C:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xd0
	bl ov1_0211E8A4
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	beq _0211ECC0
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_02130E48
_0211ECC0:
	str r0, [r7, #0x384]
	mov r0, r4
	mov r1, #0x94
	bl sub_020348DC
	b _0211EF08
_0211ECD4:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xcc
	bl ov1_0211E8A4
	mov r0, #0x88
	bl _Znwm
	cmp r0, #0
	beq _0211ED08
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_0213011C
_0211ED08:
	str r0, [r7, #0x384]
	mov r0, r4
	mov r1, #0x8f
	bl sub_020348DC
	b _0211EF08
_0211ED1C:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xd1
	bl ov1_0211E8A4
	mov r0, r7
	add r2, r7, #0x37c
	mov r1, #0xd2
	bl ov1_0211E8A4
	mov r0, #0xe8
	bl _Znwm
	cmp r0, #0
	beq _0211ED60
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_021330F8
_0211ED60:
	add r1, r7, #0x130
	str r0, [r7, #0x384]
	bl ov1_02133B3C
	mov r0, r4
	mov r1, #0x95
	bl sub_020348DC
	b _0211EF08
_0211ED7C:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xc8
	bl ov1_0211E8A4
	mov r0, #0x50
	bl _Znwm
	cmp r0, #0
	beq _0211EDB0
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_02134390
_0211EDB0:
	str r0, [r7, #0x384]
	mov r0, r4
	mov r1, #0x8e
	bl sub_020348DC
	b _0211EF08
_0211EDC4:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xd3
	bl ov1_0211E8A4
	mov r0, #0x7c
	bl _Znwm
	cmp r0, #0
	beq _0211EDF8
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_02131508
_0211EDF8:
	str r0, [r7, #0x384]
	mov r0, r4
	mov r1, #0x96
	bl sub_020348DC
	b _0211EF08
_0211EE0C:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xd4
	bl ov1_0211E8A4
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _0211EE40
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_0212F428
_0211EE40:
	str r0, [r7, #0x384]
	mov r0, r7
	bl ov1_021227C4
	ldr r2, [r7, #0x384]
	mov r1, #0x97
	str r0, [r2, #0x44]
	mov r0, r4
	bl sub_020348DC
	b _0211EF08
_0211EE64:
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211EE88
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_02130AB0
_0211EE88:
	str r0, [r7, #0x384]
	b _0211EF08
_0211EE90:
	mov r0, r7
	add r2, r7, #0x378
	mov r1, #0xc9
	bl ov1_0211E8A4
	mov r0, #0x68
	bl _Znwm
	cmp r0, #0
	beq _0211EEC4
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_02134A84
_0211EEC4:
	str r0, [r7, #0x384]
	mov r0, r4
	mov r1, #0x98
	bl sub_020348DC
	b _0211EF08
_0211EED8:
	mov r0, #0x20
	bl _Znwm
	cmp r0, #0
	beq _0211EEFC
	mov r3, r8
	add r1, r7, #0x2f8
	add r2, r7, #0x378
	str r5, [sp]
	bl ov1_02134244
_0211EEFC:
	str r0, [r7, #0x384]
	ldr r1, [r7, #0xbb0]
	str r1, [r0, #0x1c]
_0211EF08:
	cmp r6, #0
	bne _0211EF30
	ldrh r0, [r7, #0x30]
	ldr r2, [r7, #0xd8]
	add r0, r0, #0x10
	mov r1, r0, lsl #0x10
	ldr r0, [r2, #0x1b8]
	mov r1, r1, lsr #0x10
	bl ov1_02124AF4
	b _0211EF40
_0211EF30:
	ldr r0, [r7, #0xd8]
	ldrh r1, [r7, #0x30]
	ldr r0, [r0, #0x1b8]
	bl ov1_02124AF4
_0211EF40:
	cmp r6, #0x11
	ldr r0, [r7, #0xd8]
	beq _0211EF5C
	ldr r0, [r0, #0x1b8]
	mov r1, r6
	bl ov1_02124B08
	b _0211EF64
_0211EF5C:
	ldr r0, [r0, #0x1b8]
	bl ov1_02124DEC
_0211EF64:
	ldr r0, [r7, #0xd8]
	mov r1, #1
	str r1, [r0, #0x190]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov1_0211EF74
ov1_0211EF74: ; 0x0211EF74
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0xc14]
	mov r6, r1
	mov r5, r2
	bl sub_020107A8
	mov r4, r0
	ldr r0, [r7, #0xc18]
	mov r1, r6
	bl ov1_0212DFEC
	ldrb r1, [r4, #4]
	cmp r1, #0x11
	beq _0211EFCC
	mov r0, r7
	mov r1, r6
	bl ov1_0211F010
	mov r2, r0
	ldrb r1, [r4, #4]
	mov r0, r7
	mov r3, r5
	bl ov1_0211E928
	b _0211EFE0
	arm_func_end ov1_0211EF74
_0211EFCC:
	ldrb r2, [r0, #4]
	mov r0, r7
	mov r3, r5
	mov r1, #0x11
	bl ov1_0211E928
_0211EFE0:
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	ldrb r3, [r4, #6]
	ldr r0, [r7, #0xc30]
	bl ov1_0213EDB0
	ldr r0, [r7, #0xc14]
	mov r1, r6
	bl sub_020107A8
	ldrh r1, [r0]
	ldr r0, [r7, #0xc30]
	bl ov1_0213D92C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_0211F010
ov1_0211F010: ; 0x0211F010
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc14]
	mov r5, r1
	bl sub_020107A8
	mov r4, r0
	ldr r0, [r6, #0xc18]
	mov r1, r5
	bl ov1_0212DFEC
	ldrb r1, [r4, #4]
	cmp r1, #0x11
	beq _0211F0C8
	ldrb r2, [r0, #4]
	mov r1, #0x3c
	ldr r0, _0211F0D0 ; =MAIN_BSS_020B26A0
	smulbb r1, r2, r1
	mov r2, r1, lsl #0x10
	mov r1, #0x11
	mov r4, r2, lsr #0x10
	bl sub_02016C14
	cmp r0, #0
	beq _0211F0C0
	cmp r0, #1
	beq _0211F07C
	cmp r0, #2
	beq _0211F0A0
	b _0211F0C0
	arm_func_end ov1_0211F010
_0211F07C:
	mov r0, #0x78
	mul r1, r4, r0
	ldr r2, _0211F0D4 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	mov r0, r3, lsl #0x10
	mov r4, r0, lsr #0x10
	b _0211F0C0
_0211F0A0:
	mov r0, #0x8c
	mul r1, r4, r0
	ldr r2, _0211F0D4 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	mov r0, r3, lsl #0x10
	mov r4, r0, lsr #0x10
_0211F0C0:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_0211F0C8:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211F0D0: .word MAIN_BSS_020B26A0
_0211F0D4: .word 0x51EB851F

	arm_func_start ov1_0211F0D8
ov1_0211F0D8: ; 0x0211F0D8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, #0
	arm_func_end ov1_0211F0D8
_0211F0EC:
	add r0, r7, r4, lsl #2
	ldr r0, [r0, #0xdc]
	cmp r0, #0
	beq _0211F108
	mov r1, r6
	mov r2, r5
	bl ov1_021263A4
_0211F108:
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, #8
	blo _0211F0EC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_0211F11C
ov1_0211F11C: ; 0x0211F11C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x20]
	mvn r4, #0
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _0211F1F4
_0211F138: ; jump table
	b _0211F168 ; case 0
	b _0211F174 ; case 1
	b _0211F180 ; case 2
	b _0211F18C ; case 3
	b _0211F198 ; case 4
	b _0211F1A4 ; case 5
	b _0211F1BC ; case 6
	b _0211F1B0 ; case 7
	b _0211F1D4 ; case 8
	b _0211F1E0 ; case 9
	b _0211F1EC ; case 10
	b _0211F1C8 ; case 11
	arm_func_end ov1_0211F11C
_0211F168:
	bl ov1_0211F2B4
	mov r4, r0
	b _0211F1F4
_0211F174:
	bl ov1_0211F3CC
	mov r4, r0
	b _0211F1F4
_0211F180:
	bl ov1_0211F404
	mov r4, r0
	b _0211F1F4
_0211F18C:
	bl ov1_0211F984
	mov r4, r0
	b _0211F1F4
_0211F198:
	bl ov1_0211F9D8
	mov r4, r0
	b _0211F1F4
_0211F1A4:
	bl ov1_0211FA90
	mov r4, r0
	b _0211F1F4
_0211F1B0:
	bl ov1_0211FB88
	mov r4, r0
	b _0211F1F4
_0211F1BC:
	bl ov1_0211FC38
	mov r4, r0
	b _0211F1F4
_0211F1C8:
	bl ov1_0211FD68
	mov r4, r0
	b _0211F1F4
_0211F1D4:
	bl ov1_0211FCE0
	mov r4, r0
	b _0211F1F4
_0211F1E0:
	bl ov1_02120694
	mov r4, r0
	b _0211F1F4
_0211F1EC:
	bl ov1_021208BC
	mov r4, r0
_0211F1F4:
	ldr r1, [r5, #0xd8]
	ldr r0, [r5, #0xbb0]
	ldrb r1, [r1, #0x19c]
	bl sub_0201A018
	ldr r0, [r5, #0xbb0]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r0, [r5, #0xbb0]
	bl sub_0201A198
	ldr r1, [r5, #0xd8]
	strb r0, [r1, #0x19d]
	ldr r0, [r5, #0xd0]
	bl sub_0201AF40
	ldr r0, [r5, #0xc08]
	bl ov1_02138238
	ldr r0, [r5, #0xc0c]
	bl ov1_02138460
	ldr r0, [r5, #0x20]
	cmp r0, #2
	bne _0211F260
	ldr r0, [r5, #0x384]
	cmp r0, #0
	beq _0211F260
	ldrh r1, [r0, #4]
	ldr r0, [r5, #0xc30]
	bl ov1_0213E9E4
_0211F260:
	ldr r0, [r5, #0x20]
	cmp r0, #5
	ldr r0, [r5, #0xc30]
	bne _0211F27C
	mov r1, #0
	bl ov1_0213E32C
	b _0211F284
_0211F27C:
	mov r1, #1
	bl ov1_0213E32C
_0211F284:
	ldr r0, [r5, #0xc2c]
	mov r1, #0x3c
	bl sub_0203580C
	ldr r0, [r5, #0x20]
	str r0, [r5, #0x24]
	ldrh r0, [r5, #8]
	tst r0, #1
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x1c]
	bl sub_02010B24
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0211F2B4
ov1_0211F2B4: ; 0x0211F2B4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x9c]
	mov r5, #0
	cmp r0, #0
	beq _0211F2EC
	add r0, r4, #0x2a4
	ldr r1, _0211F3C8 ; =0x000FFFFF
	add r0, r0, #0x1000
	bl sub_02044C9C
	cmp r0, #2
	moveq r5, #1
	b _0211F2F0
	arm_func_end ov1_0211F2B4
_0211F2EC:
	mov r5, #1
_0211F2F0:
	cmp r5, #1
	bne _0211F398
	ldr r0, [r4, #0x1c]
	mov r5, #0
	bl sub_02010B7C
	cmp r0, #0
	bls _0211F33C
_0211F30C:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0xdc]
	cmp r1, #0
	ldrneh r0, [r1, #4]
	bicne r0, r0, #0x100
	strneh r0, [r1, #4]
	add r1, r5, #1
	ldr r0, [r4, #0x1c]
	and r5, r1, #0xff
	bl sub_02010B7C
	cmp r5, r0
	blo _0211F30C
_0211F33C:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r5, [r0, #0x48c]
	ldr r0, [r4, #0x1c]
	bl sub_02010BD8
	mov r1, r0
	mov r0, r5
	bl sub_0203481C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r5, [r0, #0x48c]
	ldr r0, [r4, #0x1c]
	bl sub_02010BD8
	mov r1, r0
	mov r0, r5
	mov r2, #0
	bl sub_02034AE4
	ldr r0, [r4, #0xc10]
	bl ov1_0213F8B4
	mov r0, #1
	str r0, [r4, #0x20]
	sub r0, r0, #2
	ldmia sp!, {r3, r4, r5, pc}
_0211F398:
	mov r0, r4
	bl ov1_02121350
	mov r0, r4
	bl ov1_021214B4
	mov r0, r4
	bl ov1_0212156C
	mov r0, r4
	bl ov1_0212157C
	ldr r0, [r4, #0xcc]
	bl sub_0200D9CC
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211F3C8: .word 0x000FFFFF

	arm_func_start ov1_0211F3CC
ov1_0211F3CC: ; 0x0211F3CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc10]
	bl ov1_0213F338
	ldr r0, [r4, #0xc10]
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r0, #2
	streq r0, [r4, #0x20]
	mvn r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0211F3CC

	arm_func_start ov1_0211F404
ov1_0211F404: ; 0x0211F404
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #0xc44]
	cmp r0, #0
	beq _0211F42C
	add r0, r5, #0x24c
	ldr r1, _0211F978 ; =0x000FFFFF
	add r0, r0, #0xc00
	bl sub_02044C9C
	arm_func_end ov1_0211F404
_0211F42C:
	ldr r0, [r5, #0xe70]
	cmp r0, #0
	beq _0211F448
	add r0, r5, #0x78
	ldr r1, _0211F978 ; =0x000FFFFF
	add r0, r0, #0x1000
	bl sub_02044C9C
_0211F448:
	ldrh r0, [r5, #8]
	tst r0, #2
	addne sp, sp, #0x14
	mvnne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x1c]
	bl sub_02010B7C
	ldrb r1, [r5, #0x44]
	cmp r1, r0
	ldrne r0, [r5, #0x28]
	addne r0, r0, #1
	strne r0, [r5, #0x28]
	mov r0, r5
	bl ov1_02121460
	mov r0, r5
	bl ov1_02121514
	ldr r0, [r5, #0x20]
	cmp r0, #2
	addne sp, sp, #0x14
	mvnne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, r5
	bl ov1_02121184
	mov r0, r5
	bl ov1_021209C4
	mov r0, r5
	bl ov1_02121350
	mov r0, r5
	bl ov1_021214B4
	mov r0, r5
	bl ov1_0212156C
	mov r0, r5
	bl ov1_0212157C
	ldr r1, [r5, #0x78]
	ldr r0, [r5, #0x74]
	cmp r0, r1
	strgt r1, [r5, #0x74]
	ldr r1, [r5, #0x74]
	ldr r0, [r5, #0xbb0]
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	bl sub_0201A1A4
	ldr r0, [r5, #0xcc]
	bl sub_0200D9CC
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x1c]
	ldrh r2, [r1, #0xa]
	ldrh r1, [r1, #0xc]
	sub r2, r2, #0x80
	sub r1, r1, #0x60
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	bl sub_02010B7C
	ldrb r1, [r5, #0x44]
	cmp r1, r0
	beq _0211F944
	ldr r0, [r5, #0x10]
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0211F608
	ldr r0, [r5, #0x1c]
	bl sub_02010BE0
	cmp r0, #0
	beq _0211F5A4
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0xc08]
	sub r6, sp, #8
	ldr r0, [r0, #4]
	add r4, sp, #0xc
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldmia r6, {r2, r3}
	ldmia r4, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _0211F5A4
	ldr r0, [r5, #0xc08]
	bl ov1_02138280
	ldrb r1, [r5, #0x80]
	mov r0, #0
	orr r1, r1, #1
	strb r1, [r5, #0x80]
	strb r0, [r5, #0x81]
_0211F5A4:
	ldr r0, [r5, #0x1c]
	bl sub_02010BF4
	cmp r0, #0
	beq _0211F608
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0xc0c]
	sub r6, sp, #8
	ldr r0, [r0, #4]
	add r4, sp, #0xc
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldmia r6, {r2, r3}
	ldmia r4, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _0211F608
	ldr r0, [r5, #0xc0c]
	bl ov1_021384A8
	ldrb r1, [r5, #0x80]
	mov r0, #0
	orr r1, r1, #2
	strb r1, [r5, #0x80]
	strb r0, [r5, #0x81]
_0211F608:
	ldr r0, [r5, #0x10]
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _0211F6E0
	ldrb r0, [r5, #0x80]
	mov r4, #1
	tst r0, #1
	beq _0211F674
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0xc08]
	sub ip, sp, #8
	ldr r0, [r0, #4]
	add r6, sp, #0xc
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldmia ip, {r2, r3}
	ldmia r6, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	bne _0211F674
	ldrb r0, [r5, #0x80]
	mov r4, #0
	bic r0, r0, #1
	strb r0, [r5, #0x80]
	b _0211F6C8
_0211F674:
	ldrb r0, [r5, #0x80]
	tst r0, #2
	beq _0211F6C8
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0xc0c]
	sub ip, sp, #8
	ldr r0, [r0, #4]
	add r6, sp, #0xc
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldmia ip, {r2, r3}
	ldmia r6, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	bne _0211F6C8
	ldrb r0, [r5, #0x80]
	mov r4, #0
	bic r0, r0, #2
	strb r0, [r5, #0x80]
_0211F6C8:
	cmp r4, #0
	beq _0211F6E0
	ldrb r0, [r5, #0x81]
	cmp r0, #0xff
	addlo r0, r0, #1
	strlob r0, [r5, #0x81]
_0211F6E0:
	ldr r0, [r5, #0x10]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _0211F944
	ldrb r0, [r5, #0x81]
	cmp r0, #0xc
	bhi _0211F930
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0xc08]
	sub r6, sp, #8
	ldr r0, [r0, #4]
	add r4, sp, #0xc
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldmia r6, {r2, r3}
	ldmia r4, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _0211F880
	ldrb r0, [r5, #0x80]
	tst r0, #1
	beq _0211F930
	bic r0, r0, #1
	strb r0, [r5, #0x80]
	ldr r0, [r5, #0x34]
	mov r1, #1
	sub r0, r0, #1
	str r0, [r5, #0x34]
	ldr r0, [r5, #0xc30]
	bl ov1_0213EF14
	ldr r0, [r5, #0xc30]
	mov r1, #1
	bl ov1_0213EF40
	ldr r0, [r5, #0xc30]
	bl thunk_FUN_overlay_1__0213e12c
	ldr r0, [r5, #0xd0]
	bl sub_0201B508
	mov r4, #0
	ldr r0, [r5, #0x1c]
	mov r7, r4
	bl sub_02010B90
	cmp r0, #0
	bls _0211F7C4
	mov r6, #1
_0211F798:
	add r0, r5, r7
	ldrb r0, [r0, #0x92]
	add r1, r7, #1
	cmp r0, #0
	orrne r0, r4, r6, lsl r7
	andne r4, r0, #0xff
	ldr r0, [r5, #0x1c]
	and r7, r1, #0xff
	bl sub_02010B90
	cmp r7, r0
	blo _0211F798
_0211F7C4:
	ldr r0, [r5, #0x1c]
	bl sub_02010B3C
	cmp r0, #0
	beq _0211F7F0
	ldr r1, [r5, #0x74]
	ldr r0, [r5, #0x78]
	cmp r1, r0
	orreq r0, r4, #1
	andeq r4, r0, #0xff
	bicne r0, r4, #1
	andne r4, r0, #0xff
_0211F7F0:
	ldr r0, _0211F97C ; =MAIN_BSS_020B26A0
	mov r1, #0xff
	bl sub_02015658
	mov r6, r0
	ldr r0, [r5, #0x1c]
	bl sub_02010B90
	cmp r6, r0
	bhi _0211F81C
	ldr r0, [r5, #0x1c]
	bl sub_02010B90
	b _0211F828
_0211F81C:
	ldr r0, _0211F97C ; =MAIN_BSS_020B26A0
	mov r1, #0xff
	bl sub_02015658
_0211F828:
	mov r6, r0
	ldr r0, [r5, #0x1c]
	bl sub_02010B3C
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0xbc0]
	mov r1, r6
	add r2, r5, #0x388
	add r3, r5, #0x82
	bl ov1_0213C2BC
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C70
	ldr r0, [r5, #4]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #5
	str r0, [r5, #0x20]
	b _0211F930
_0211F880:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0xc0c]
	sub ip, sp, #8
	ldr r0, [r0, #4]
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldmia ip, {r2, r3}
	ldmia r4, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _0211F930
	ldrb r0, [r5, #0x80]
	tst r0, #2
	beq _0211F930
	bic r0, r0, #2
	strb r0, [r5, #0x80]
	ldr r0, [r5, #0x34]
	sub r0, r0, #1
	str r0, [r5, #0x34]
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C70
	ldr r0, [r5, #0xd0]
	bl sub_0201B508
	ldr r0, [r5, #4]
	ldr r1, _0211F980 ; =s_system_001_overlay_1_02140870
	add r0, r0, #0x1000
	ldr r0, [r0, #0x49c]
	bl sub_02034184
	mov r0, #4
	str r0, [r5, #0x20]
	ldr r0, [r5, #4]
	mov r1, #0x3f
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F10
	ldr r0, [r5, #4]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_0211F930:
	ldrb r0, [r5, #0x80]
	bic r1, r0, #1
	and r0, r1, #0xff
	bic r0, r0, #2
	strb r0, [r5, #0x80]
_0211F944:
	mov r0, r5
	bl ov1_02121714
	ldr r0, [r5, #0xd8]
	ldrb r0, [r0, #0x19c]
	cmp r0, #0
	addne sp, sp, #0x14
	mvnne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, r5
	bl ov1_02122B70
	mvn r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0211F978: .word 0x000FFFFF
_0211F97C: .word MAIN_BSS_020B26A0
_0211F980: .word s_system_001_overlay_1_02140870

	arm_func_start ov1_0211F984
ov1_0211F984: ; 0x0211F984
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x14]
	ldrh r0, [r0, #2]
	and r0, r0, #0x100
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211F9B0
	ldr r0, [r4, #0xd0]
	bl sub_0201B568
	arm_func_end ov1_0211F984
_0211F9B0:
	ldr r0, [r4, #0xd0]
	ldrb r0, [r0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r0, #2
	streq r0, [r4, #0x20]
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0211F9D8
ov1_0211F9D8: ; 0x0211F9D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xe70]
	cmp r0, #0
	beq _0211F9FC
	add r0, r4, #0x78
	ldr r1, _0211FA8C ; =0x000FFFFF
	add r0, r0, #0x1000
	bl sub_02044C9C
	arm_func_end ov1_0211F9D8
_0211F9FC:
	ldrh r0, [r4, #8]
	tst r0, #2
	mvnne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0xd0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0211FA84
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B6A4
	cmp r0, #0
	bne _0211FA84
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B6D4
	cmp r0, #0
	bne _0211FA60
	mov r0, r4
	mov r1, #3
	bl ov1_021227CC
	b _0211FA70
_0211FA60:
	ldr r0, [r4, #0xd0]
	bl sub_0201B568
	mov r0, #2
	str r0, [r4, #0x20]
_0211FA70:
	ldr r0, [r4, #4]
	mov r1, #0x7f
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F10
_0211FA84:
	mvn r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211FA8C: .word 0x000FFFFF

	arm_func_start ov1_0211FA90
ov1_0211FA90: ; 0x0211FA90
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xe70]
	cmp r0, #0
	beq _0211FAB4
	add r0, r4, #0x78
	ldr r1, _0211FB84 ; =0x000FFFFF
	add r0, r0, #0x1000
	bl sub_02044C9C
	arm_func_end ov1_0211FA90
_0211FAB4:
	ldrh r0, [r4, #8]
	tst r0, #2
	mvnne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0xbc0]
	ldr r1, [r4, #0x10]
	bl ov1_0213B528
	ldr r0, [r4, #0xbc0]
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _0211FB7C
	bl ov1_0213C5F4
	cmp r0, #0
	bne _0211FB6C
	ldr r0, [r4, #0xbc0]
	bl ov1_0213C5FC
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xa4]
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r4, #0x1c]
	bl sub_02010B3C
	cmp r0, #0
	beq _0211FB38
	ldr r0, [r4, #0xbc0]
	bl ov1_0213C5FC
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x74]
	beq _0211FB4C
_0211FB38:
	ldr r0, [r4, #0xbc0]
	bl ov1_0213C5FC
	mov r1, r0
	mov r0, r4
	bl ov1_02122CA4
_0211FB4C:
	ldr r0, [r4, #0xbc0]
	bl ov1_0213C604
	cmp r0, #1
	bne _0211FB74
	ldr r0, [r4, #0xc]
	orr r0, r0, #8
	str r0, [r4, #0xc]
	b _0211FB74
_0211FB6C:
	ldr r0, [r4, #0xd0]
	bl sub_0201B568
_0211FB74:
	mov r0, #2
	str r0, [r4, #0x20]
_0211FB7C:
	mvn r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211FB84: .word 0x000FFFFF

	arm_func_start ov1_0211FB88
ov1_0211FB88: ; 0x0211FB88
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xbb8]
	bl ov1_02138FEC
	ldr r0, [r5, #0xbb8]
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0211FC30
	ldr r0, [r5, #4]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0xa
	bl sub_0200E0E0
	ldr r0, [r5, #4]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0xa
	bl sub_0200E0E0
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xbb8]
	add r2, r1, #0x1000
	ldrh r1, [r0, #0x2e]
	ldr r4, [r2, #0x444]
	bl ov1_0213A4A0
	strb r0, [r4, #0x6a]
	ldr r0, [r5, #0xbb8]
	mov r1, #8
	ldrsh r0, [r0, #8]
	str r0, [r4, #0x80]
	ldr r0, [r5, #0xbb0]
	ldr r2, [r5, #0xd8]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x96]
	and r0, r0, #0xff
	strb r0, [r2, #0x19c]
	strb r0, [r4, #4]
	str r1, [r5, #0x20]
	arm_func_end ov1_0211FB88
_0211FC30:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0211FC38
ov1_0211FC38: ; 0x0211FC38
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xbbc]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r0, [r4, #0xbbc]
	bl ov1_0213AA58
	cmp r0, #0
	bne _0211FC98
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr ip, [r0, #0x444]
	mov r0, r4
	str r1, [ip, #8]
	ldr r2, [r4, #0xbb0]
	ldr r3, [r4, #0xd8]
	add r2, r2, #0x500
	ldrh r2, [r2, #0x96]
	and r2, r2, #0xff
	strb r2, [r3, #0x19c]
	strb r2, [ip, #4]
	bl ov1_021227CC
	arm_func_end ov1_0211FC38
_0211FC98:
	mov r0, r4
	bl ov1_02121460
	mov r0, r4
	bl ov1_02121514
	mov r0, r4
	bl ov1_02121184
	mov r0, r4
	bl ov1_021209C4
	mov r0, r4
	bl ov1_02121350
	mov r0, r4
	bl ov1_021214B4
	mov r0, r4
	bl ov1_0212156C
	mov r0, r4
	bl ov1_0212157C
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0211FCE0
ov1_0211FCE0: ; 0x0211FCE0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211FD60
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211FD60
	ldrh r0, [r4, #8]
	orr r0, r0, #1
	strh r0, [r4, #8]
	ldr r1, [r4, #4]
	ldr r0, [r1, #8]
	cmp r0, #1
	beq _0211FD60
	add r0, r1, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #1
	mov r2, #0
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0
	bl sub_0200E0E0
	arm_func_end ov1_0211FCE0
_0211FD60:
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0211FD68
ov1_0211FD68: ; 0x0211FD68
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xc40]
	bl ov1_02135C58
	ldr r0, [r5, #0xc40]
	bl ov1_02135C68
	cmp r0, #0
	bne _02120688
	mov r1, #0
	ldr r0, _02120690 ; =0x04000050
	mov r2, r1
	bl G2x_SetBlendBrightness_
	mov r2, #0x4000000
	ldr r1, [r2]
	mov r0, #2
	bic r1, r1, #0x1f00
	orr r1, r1, #0x100
	str r1, [r2]
	str r0, [r5, #0x20]
	ldr r0, [r5, #0xc40]
	bl ov1_02135C8C
	mov r4, r0
	ldr r0, [r5, #0xc40]
	bl ov1_02135C78
	cmp r0, #0x26
	addls pc, pc, r0, lsl #2
	b _02120680
_0211FDD4: ; jump table
	b _02120680 ; case 0
	b _02120680 ; case 1
	b _02120680 ; case 2
	b _02120680 ; case 3
	b _02120680 ; case 4
	b _02120680 ; case 5
	b _0211FE70 ; case 6
	b _0211FE98 ; case 7
	b _0211FEC0 ; case 8
	b _0211FEE8 ; case 9
	b _0211FF10 ; case 10
	b _0211FF1C ; case 11
	b _0211FF3C ; case 12
	b _0211FF5C ; case 13
	b _0211FF7C ; case 14
	b _0211FF9C ; case 15
	b _0211FFBC ; case 16
	b _02120014 ; case 17
	b _0212006C ; case 18
	b _021200C4 ; case 19
	b _0212011C ; case 20
	b _02120174 ; case 21
	b _021201CC ; case 22
	b _02120224 ; case 23
	b _0212027C ; case 24
	b _021202D4 ; case 25
	b _0212032C ; case 26
	b _02120384 ; case 27
	b _021203DC ; case 28
	b _02120434 ; case 29
	b _0212048C ; case 30
	b _021204E4 ; case 31
	b _0212053C ; case 32
	b _02120594 ; case 33
	b _021205E4 ; case 34
	b _02120604 ; case 35
	b _02120624 ; case 36
	b _02120644 ; case 37
	b _02120664 ; case 38
	arm_func_end ov1_0211FD68
_0211FE70:
	cmp r4, #1
	ldreqh r0, [r5, #0xa]
	orreq r0, r0, #8
	streqh r0, [r5, #0xa]
	cmp r4, #2
	bne _02120680
	ldrh r0, [r5, #0xa]
	bic r0, r0, #8
	strh r0, [r5, #0xa]
	b _02120680
_0211FE98:
	cmp r4, #1
	ldreqh r0, [r5, #0xa]
	orreq r0, r0, #0x10
	streqh r0, [r5, #0xa]
	cmp r4, #2
	bne _02120680
	ldrh r0, [r5, #0xa]
	bic r0, r0, #0x10
	strh r0, [r5, #0xa]
	b _02120680
_0211FEC0:
	cmp r4, #1
	ldreqh r0, [r5, #0xa]
	orreq r0, r0, #2
	streqh r0, [r5, #0xa]
	cmp r4, #2
	bne _02120680
	ldrh r0, [r5, #0xa]
	bic r0, r0, #2
	strh r0, [r5, #0xa]
	b _02120680
_0211FEE8:
	cmp r4, #1
	ldreqh r0, [r5, #0xa]
	orreq r0, r0, #4
	streqh r0, [r5, #0xa]
	cmp r4, #2
	bne _02120680
	ldrh r0, [r5, #0xa]
	bic r0, r0, #4
	strh r0, [r5, #0xa]
	b _02120680
_0211FF10:
	ldr r0, [r5, #0xd8]
	strb r4, [r0, #0x19c]
	b _02120680
_0211FF1C:
	ldr r0, [r5, #0xd8]
	bl ov1_0212C5D8
	cmp r0, #0
	moveq r1, #1
	ldr r0, [r5, #0xd8]
	movne r1, #0
	bl ov1_0212C5F0
	b _02120680
_0211FF3C:
	mov r0, #0x3c
	mul r0, r4, r0
	mov r1, r0, lsl #0x10
	mov r0, r5
	mov r2, r1, lsr #0x10
	mov r1, #1
	bl ov1_0211F0D8
	b _02120680
_0211FF5C:
	mov r0, #0x3c
	mul r0, r4, r0
	mov r1, r0, lsl #0x10
	mov r0, r5
	mov r2, r1, lsr #0x10
	mov r1, #2
	bl ov1_0211F0D8
	b _02120680
_0211FF7C:
	mov r0, #0x3c
	mul r0, r4, r0
	mov r1, r0, lsl #0x10
	mov r0, r5
	mov r2, r1, lsr #0x10
	mov r1, #3
	bl ov1_0211F0D8
	b _02120680
_0211FF9C:
	mov r0, #0x3c
	mul r0, r4, r0
	mov r1, r0, lsl #0x10
	mov r0, r5
	mov r2, r1, lsr #0x10
	mov r1, #4
	bl ov1_0211F0D8
	b _02120680
_0211FFBC:
	mov r1, #0
	ldr r0, [r5, #0xc30]
	mov r2, r1
	mov r3, r1
	bl ov1_0213ECB4
	mov r1, #0
	ldr r0, [r5, #0xc30]
	mov r2, r1
	mov r3, r1
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #0
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, r1
	bl ov1_0211E928
	b _02120680
_02120014:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #1
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #1
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #1
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_0212006C:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #2
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #2
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #2
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_021200C4:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #4
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #4
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #4
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_0212011C:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #3
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #3
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #3
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_02120174:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #5
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #5
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #5
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_021201CC:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #6
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #6
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #6
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_02120224:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #7
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #7
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #7
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_0212027C:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #8
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #8
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #8
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_021202D4:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #9
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #9
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #9
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_0212032C:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0xa
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0xa
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #0xa
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_02120384:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0xb
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0xb
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #0xb
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_021203DC:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0xc
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0xc
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #0xc
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_02120434:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0xd
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0xd
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #0xd
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_0212048C:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0xe
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0xe
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #0xe
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_021204E4:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0xf
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0xf
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #0xf
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_0212053C:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0x10
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0x10
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r5
	mov r1, #0x10
	mov r2, #0x3c
	mul r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_02120594:
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0x11
	bl ov1_0213ECB4
	mov r2, #0
	ldr r0, [r5, #0xc30]
	mov r3, r2
	mov r1, #0x11
	bl ov1_0213EDB0
	ldr r0, [r5, #0xc30]
	mov r1, #0
	bl ov1_0213D92C
	mov r0, r4, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r5
	mov r1, #0x11
	mov r3, #0
	bl ov1_0211E928
	b _02120680
_021205E4:
	mov r1, #0
	ldr r0, _02120690 ; =0x04000050
	mov r2, r1
	bl G2x_SetBlendBrightness_
	mov r0, r5
	mov r1, #0
	bl ov1_021227CC
	b _02120680
_02120604:
	mov r1, #0
	ldr r0, _02120690 ; =0x04000050
	mov r2, r1
	bl G2x_SetBlendBrightness_
	mov r0, r5
	mov r1, #1
	bl ov1_021227CC
	b _02120680
_02120624:
	mov r1, #0
	ldr r0, _02120690 ; =0x04000050
	mov r2, r1
	bl G2x_SetBlendBrightness_
	mov r0, r5
	mov r1, #2
	bl ov1_021227CC
	b _02120680
_02120644:
	mov r1, #0
	ldr r0, _02120690 ; =0x04000050
	mov r2, r1
	bl G2x_SetBlendBrightness_
	mov r0, r5
	mov r1, #3
	bl ov1_021227CC
	b _02120680
_02120664:
	mov r1, #0
	ldr r0, _02120690 ; =0x04000050
	mov r2, r1
	bl G2x_SetBlendBrightness_
	mov r0, r5
	mov r1, #4
	bl ov1_021227CC
_02120680:
	ldr r0, [r5, #0xc40]
	bl ov1_02135C2C
_02120688:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02120690: .word 0x04000050

	arm_func_start ov1_02120694
ov1_02120694: ; 0x02120694
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r2, [r7, #4]
	ldr r0, [r7, #0x68]
	ldr r1, [r2, #0x14]
	cmp r0, #0
	beq _02120740
	ldr r0, [r7, #0x10]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _021206D4
	ldrh r0, [r1, #2]
	and r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _021208B0
	arm_func_end ov1_02120694
_021206D4:
	ldrb r1, [r7, #0x5d]
	ldrb r0, [r7, #0x5c]
	cmp r1, r0
	bne _02120734
	add r0, r2, #0x1000
	mov r1, #1
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	ldr r0, [r7, #0xbb8]
	ldr r1, [r7, #0xd8]
	ldr r2, [r7, #0xbb0]
	bl ov1_02139C30
	ldr r0, [r7, #0xd0]
	ldrb r1, [r0]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _02120728
	bl sub_0201B508
_02120728:
	mov r0, #7
	str r0, [r7, #0x20]
	b _021208B0
_02120734:
	mov r0, #0
	str r0, [r7, #0x68]
	b _021208B0
_02120740:
	add r0, r2, #0x1000
	ldr r6, [r0, #0x4c0]
	mov r1, #1
	mov r0, r6
	rsb r2, r1, #0x10000
	bl sub_0200E0E0
	mov r0, r6
	bl sub_0200E210
	ldr r0, [r7, #4]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	ldrb r2, [r7, #0x5d]
	ldr r0, [r7, #4]
	mov r1, #0
	add r2, r7, r2, lsl #1
	add r0, r0, #0x1000
	ldrh r2, [r2, #0x5e]
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020097FCEmm
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r2, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r1, #0x1a
	mov r3, r2
	bl sub_0200AD34
	mov r5, #0
_021207BC:
	ldr r0, [r7, #0xc14]
	mov r1, r5
	bl sub_020107A8
	ldrb r1, [r7, #0x5d]
	ldrh r0, [r0]
	add r1, r7, r1, lsl #1
	ldrh r1, [r1, #0x5e]
	cmp r1, r0
	moveq r4, r5
	beq _021207F8
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	cmp r5, #0x1f4
	blo _021207BC
_021207F8:
	mov r5, #0
	ldr lr, _021208B8 ; =MAIN_BSS_020B26A0
	mov r0, r5
	mov r2, r5
_02120808:
	cmp r0, #0
	blt _0212083C
	cmp r0, #0x1f4
	bge _0212083C
	mov r1, r0, asr #4
	add r1, lr, r1, lsl #2
	add r1, r1, #0x7000
	mov r3, r0, lsl #0x1c
	ldr ip, [r1, #0xc3c]
	mov r1, r3, lsr #0x1b
	mov r1, ip, lsr r1
	and r1, r1, #3
	b _02120840
_0212083C:
	mov r1, r2
_02120840:
	add r0, r0, #1
	cmp r1, #2
	addhs r5, r5, #1
	cmp r0, #0x1f4
	blt _02120808
	ldr r0, [r7, #0xc34]
	bl sub_0201CB0C
	ldrb r2, [r7, #0x5d]
	ldr r0, [r7, #0xc34]
	mov r1, r4
	add r2, r5, r2
	add r3, r2, #1
	mov r2, #0
	bl sub_0201CE00
	ldr r0, [r7, #4]
	mov r1, #0x3f
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r6
	mov r1, #1
	mov r2, #0x20
	bl sub_0200E0E0
	ldrb r1, [r7, #0x5d]
	mov r0, #1
	add r1, r1, #1
	strb r1, [r7, #0x5d]
	str r0, [r7, #0x68]
_021208B0:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021208B8: .word MAIN_BSS_020B26A0

	arm_func_start ov1_021208BC
ov1_021208BC: ; 0x021208BC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #0x6c]
	add r0, r0, #1
	strh r0, [r4, #0x6c]
	ldrh r0, [r4, #0x6c]
	cmp r0, #0x98
	bls _02120984
	ldrb r0, [r4, #0x5c]
	cmp r0, #0
	beq _0212094C
	ldr r0, [r4, #0x1c]
	bl sub_02010B24
	cmp r0, #0x23
	bne _02120934
	ldr r0, [r4, #0xbb8]
	ldr r1, [r4, #0xd8]
	ldr r2, [r4, #0xbb0]
	bl ov1_02139C30
	ldr r0, [r4, #0xd0]
	ldrb r1, [r0]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _02120928
	bl sub_0201B508
	arm_func_end ov1_021208BC
_02120928:
	mov r0, #7
	str r0, [r4, #0x20]
	b _02120984
_02120934:
	ldr r0, [r4, #0xc30]
	mov r1, #0
	bl ov1_0213EF94
	mov r0, #9
	str r0, [r4, #0x20]
	b _02120984
_0212094C:
	ldr r0, [r4, #0xbb8]
	ldr r1, [r4, #0xd8]
	ldr r2, [r4, #0xbb0]
	bl ov1_02139C30
	ldr r0, [r4, #0xd0]
	ldrb r1, [r0]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _0212097C
	bl sub_0201B508
_0212097C:
	mov r0, #7
	str r0, [r4, #0x20]
_02120984:
	mov r0, r4
	bl ov1_02121460
	mov r0, r4
	bl ov1_02121514
	mov r0, r4
	bl ov1_02121184
	mov r0, r4
	bl ov1_02121350
	mov r0, r4
	bl ov1_021214B4
	mov r0, r4
	bl ov1_0212156C
	mov r0, r4
	bl ov1_0212157C
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov1_021209C4
ov1_021209C4: ; 0x021209C4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	mov sl, r0
	ldr r1, [sl, #0x10]
	ldr r0, [sl, #0x1c]
	ldrh r2, [r1, #0xa]
	ldrh r1, [r1, #0xc]
	sub r2, r2, #0x80
	sub r1, r1, #0x60
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	bl sub_02010B7C
	ldrb r1, [sl, #0x44]
	cmp r1, r0
	beq _0212114C
	ldr r0, [sl, #0xd8]
	bl ov1_0212C4B8
	cmp r0, #0
	beq _0212114C
	ldr r1, [sl, #0x10]
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _02120AA4
	mov r0, #0
	str r0, [sl, #0x40]
	ldr r0, [sl, #0xd8]
	add r1, sp, #0x28
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [sl, #0xd8]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	bl ov1_0212C610
	ldr r0, [sl, #0xd8]
	mov r1, #1
	bl ov1_0212C514
	ldr r0, [sl, #0xd8]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r0, [sl, #4]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034E48
	ldr r0, [sl, #0x34]
	mov r1, #0
	add r0, r0, #1
	str r0, [sl, #0x34]
	str r1, [sl, #0x3c]
	ldr r0, [sl, #0xd8]
	strb r1, [r0, #0x187]
	b _0212114C
	arm_func_end ov1_021209C4
_02120AA4:
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _02120AE4
	ldr r0, [sl, #0xd8]
	mov r1, #0
	bl ov1_0212C514
	ldr r0, [sl, #0xd8]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r0, [sl, #4]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034ED8
	b _0212114C
_02120AE4:
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _0212114C
	ldr r0, [sl, #0xd8]
	bl ov1_0212C5C0
	cmp r0, #0
	beq _0212114C
	ldr r0, [sl, #0xd8]
	add r1, sp, #0x28
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [sl, #0xd8]
	mov r1, #0x28
	ldr r5, [r0, #0x1b8]
	ldr r3, [sp, #0x28]
	add r0, r5, #0x5400
	ldrh r4, [r0, #0xa2]
	ldr r2, [sp, #0x2c]
	mla r0, r4, r1, r5
	ldr r4, [r0, #0x20]
	ldr r5, [r0, #0x1c]
	sub r1, r2, r4
	sub r0, r3, r5
	str r5, [sp, #0x20]
	str r4, [sp, #0x24]
	bl sub_02007254
	cmp r0, #0
	rsblt r0, r0, #0
	cmp r0, #0x8000
	ldr r0, [sl, #4]
	blt _02120B78
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xc
	bl sub_02034E80
	b _02120B88
_02120B78:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mvn r1, #0xb
	bl sub_02034E80
_02120B88:
	ldr r0, [sl, #0xd8]
	add r1, sp, #0x28
	ldmia r1, {r1, r2}
	bl ov1_0212C1C4
	ldr r0, [sl, #0xd8]
	bl ov1_0212C4CC
	cmp r0, #0
	beq _0212114C
	mov r5, #0
	mov r6, r5
	mov sb, r5
	add r4, sp, #0x18
_02120BB8:
	add r0, sl, sb, lsl #2
	ldr r7, [r0, #0xdc]
	cmp r7, #0
	beq _02120F40
	add r0, r7, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02120F40
	ldrh r0, [r7, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02120F40
	ldr r0, [sl, #0xd8]
	ldr r1, [r7, #0x20]
	ldr r0, [r0, #0x1b8]
	ldr r2, [r7, #0x24]
	ldr fp, [r7, #0xb0]
	ldr r8, [r7, #0x8c]
	ldr r3, [r7, #0xa0]
	add r3, r8, r3
	add r3, fp, r3
	sub r2, r2, r3
	bl ov1_02124650
	cmp r0, #0
	beq _02120F40
	cmp r5, #0
	bne _02120C4C
	ldr r0, [sl, #0x3c]
	add r1, r0, #1
	str r1, [sl, #0x3c]
	ldr r0, [sl, #0xd8]
	strb r1, [r0, #0x187]
_02120C4C:
	add r0, r5, #1
	and r5, r0, #0xff
	ldr r0, _02121178 ; =MAIN_BSS_020BAE7B
	ldr r2, [sl, #4]
	ldrb r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x438]
	bl sub_02010E90
	ldr r1, [r7, #0x184]
	mov fp, r0
	ldr r0, [sl, #0x384]
	ldr r1, [r1, #0x18]
	cmp r0, #0
	ldrb r8, [r1, #3]
	moveq r2, #0x12
	beq _02120C9C
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r2, r0
_02120C9C:
	ldr r0, [sl, #0xd8]
	mov r1, fp
	mov r3, r8
	bl ov1_0212CD6C
	mov r1, r0
	mov r0, r7
	mov r2, #0
	bl ov1_02126310
	ldr r0, [r7, #0x20]
	ldr r2, [r7, #0x8c]
	ldr r1, [r7, #0xa0]
	str r0, [sp, #0x18]
	ldr r3, [r7, #0xb0]
	add r1, r2, r1
	add r1, r3, r1
	ldr r8, [r7, #0x24]
	ldr r0, [sl, #0xd8]
	sub r1, r8, r1
	str r1, [sp, #0x1c]
	add r1, r0, #0x100
	ldrh r1, [r1, #0x94]
	mov r3, #0x14
	tst r1, #0x80
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _02120D1C
	mov r1, #0x4000
	str r1, [sp]
	ldmia r4, {r1, r2}
	bl ov1_0212CBA0
	b _02120D50
_02120D1C:
	ldrh r1, [r7, #4]
	tst r1, #0x1000
	mov r1, #0x4000
	str r1, [sp]
	ldr r1, _0212117C ; =0x00007FFF
	beq _02120D44
	str r1, [sp, #4]
	ldmia r4, {r1, r2}
	bl ov1_0212C990
	b _02120D50
_02120D44:
	str r1, [sp, #4]
	ldmia r4, {r1, r2}
	bl ov1_0212C7E8
_02120D50:
	ldr r0, [sl, #0x1c]
	bl sub_02010B3C
	cmp r0, #0
	beq _02120D70
	ldr r1, [sl, #0x74]
	ldr r0, [sl, #0x7c]
	add r0, r1, r0
	str r0, [sl, #0x74]
_02120D70:
	add r0, r7, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02120F40
	ldr r1, [r7, #0x184]
	add r0, r6, #1
	ldr r1, [r1, #0x1c]
	and r6, r0, #0xff
	ldrh r2, [sl, #0x2c]
	ldrh r0, [r1, #2]
	add r0, r2, r0
	strh r0, [sl, #0x2c]
	ldr r1, [r7, #0x184]
	ldrb r0, [sl, #0x44]
	ldrh r1, [r1, #0x16]
	add r0, sl, r0, lsl #1
	strh r1, [r0, #0x46]
	ldrb r0, [sl, #0x44]
	add r0, r0, #1
	strb r0, [sl, #0x44]
	ldrh r0, [r7, #4]
	tst r0, #0x2000
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r7
	beq _02120DF4
	mov r1, #0xf0
	bl ov1_0212677C
	b _02120E0C
_02120DF4:
	mov r1, #6
	mul r1, r6, r1
	add r1, r1, #0x78
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov1_0212677C
_02120E0C:
	ldr r0, [sl, #0xd8]
	ldr r0, [r0, #0x1c0]
	bl ov1_02137AD4
	ldrh r1, [sl, #0x56]
	cmp r0, r1
	bls _02120E34
	ldr r0, [sl, #0xd8]
	ldr r0, [r0, #0x1c0]
	bl ov1_02137AD4
	strh r0, [sl, #0x56]
_02120E34:
	ldr r0, [sl, #0x1c]
	bl sub_02010B7C
	ldrb r1, [sl, #0x44]
	cmp r1, r0
	bne _02120E90
	ldr r0, [sl, #0xd8]
	mov r1, #0
	bl ov1_0212C514
	ldr r0, [sl, #0x384]
	cmp r0, #0
	beq _02120E6C
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
_02120E6C:
	ldr r0, [sl, #0xd8]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r0, [sl, #4]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034ED8
_02120E90:
	ldr r1, [r7, #0x184]
	ldr r0, [r7, #0x20]
	ldr r3, [r1, #0x1c]
	ldr r2, [r7, #0x24]
	ldrsb r3, [r3, #0xf]
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	add r0, r7, #0x100
	ldrh r1, [r0, #0x88]
	add r0, sl, sb, lsl #2
	str r2, [sp, #0xc]
	add r2, r2, r3, lsl #12
	str r2, [sp, #0x14]
	add r2, sp, #0x10
	ldr r0, [r0, #0x10c]
	ldmia r2, {r2, r3}
	bl ov1_02135F2C
	add r0, sl, sb, lsl #2
	ldr r0, [r0, #0x10c]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r0, _02121180 ; =MAIN_BSS_020B26A0
	mov r1, #0x14
	bl sub_02016C14
	ldr r2, [sl, #0xd8]
	cmp r0, #0
	ldrb r1, [r2, #0x19c]
	beq _02120F24
	cmp r0, #1
	beq _02120F1C
	cmp r0, #2
	addeq r0, r1, #3
	andeq r1, r0, #0xff
	b _02120F24
_02120F1C:
	add r0, r1, #1
	and r1, r0, #0xff
_02120F24:
	ldr r0, _02121180 ; =MAIN_BSS_020B26A0
	ldrb r0, [r0, #2]
	cmp r1, r0
	movhs r1, r0
	strb r1, [r2, #0x19c]
	ldr r0, [sl, #0xbb0]
	bl sub_0201A018
_02120F40:
	add r0, sb, #1
	and sb, r0, #0xff
	cmp sb, #8
	blo _02120BB8
	ldr r0, [sl, #0x384]
	cmp r0, #0
	beq _02121018
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	cmp r0, #0xf
	bne _02121018
	mov sb, #0
	mov r7, #1
	mov r4, sb
	mov fp, r7
_02120F80:
	add r0, sl, sb, lsl #2
	ldr r8, [r0, #0x130]
	ldr r0, [r8, #0x104]
	cmp r0, #0
	movne r0, r7
	moveq r0, r4
	cmp r0, #0
	beq _02121008
	ldrh r0, [r8, #4]
	tst r0, #0x100
	moveq r0, fp
	movne r0, #0
	cmp r0, #0
	beq _02121008
	ldr r0, [r8, #0x184]
	ldr r0, [r0, #0x18]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _02121008
	ldr r3, [r8, #0x8c]
	ldr r2, [r8, #0xa0]
	ldr r1, [sl, #0xd8]
	ldr r0, [r8, #0xb0]
	add r3, r3, r2
	ldr r2, [r8, #0x24]
	add r3, r0, r3
	ldr r0, [r1, #0x1b8]
	ldr r1, [r8, #0x20]
	sub r2, r2, r3
	bl ov1_02124650
	cmp r0, #0
	beq _02121008
	mov r0, r8
	bl ov1_021272AC
_02121008:
	add r0, sb, #1
	and sb, r0, #0xff
	cmp sb, #0x60
	blo _02120F80
_02121018:
	cmp r5, #0
	beq _021210AC
	cmp r6, #0
	beq _02121040
	ldr r0, [sl, #4]
	mov r1, #0x1f
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	b _02121074
_02121040:
	ldr r1, [sl, #0x3c]
	ldr r0, [sl, #4]
	cmp r1, #5
	bls _02121064
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x1f
	bl sub_02034C44
	b _02121074
_02121064:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	add r1, r1, #0x1a
	bl sub_02034C44
_02121074:
	ldr r0, [sl, #0x1c]
	bl sub_02010B7C
	cmp r0, #2
	blo _0212109C
	ldr r0, [sl, #0x1c]
	bl sub_02010B7C
	cmp r5, r0
	ldreq r0, [sl, #0xc]
	orreq r0, r0, #0x10000
	streq r0, [sl, #0xc]
_0212109C:
	ldr r0, [sl, #0x58]
	add r0, r0, #1
	str r0, [sl, #0x58]
	b _021210C0
_021210AC:
	ldr r0, [sl, #4]
	mov r1, #0x3a
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_021210C0:
	ldr r0, [sl, #0xd8]
	add r4, sp, #0x30
	ldr r0, [r0, #0x1b8]
	add r0, r0, #0xec
	add r0, r0, #0x5400
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, [sl, #0xbac]
	ldmia r4, {r1, r2}
	bl ov1_0212EA1C
	ldr r0, [sl, #0xd8]
	mov r4, #0
	ldr r2, [r0, #0x1b8]
	add r0, r2, #0x6400
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	bls _02121144
	mov r5, #0x28
_02121108:
	mla r0, r4, r5, r2
	add r0, r0, #0xec
	add r1, r0, #0x5400
	ldr r0, [sl, #0xbac]
	ldmia r1, {r1, r2}
	bl ov1_0212EA7C
	ldr r0, [sl, #0xd8]
	add r1, r4, #1
	ldr r2, [r0, #0x1b8]
	mov r0, r1, lsl #0x10
	add r1, r2, #0x6400
	ldrh r1, [r1, #0x14]
	mov r4, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _02121108
_02121144:
	ldr r0, [sl, #0xbac]
	bl ov1_0212EAD4
_0212114C:
	ldr r0, [sl, #0xd8]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r0, [sl, #0xd8]
	ldr r0, [r0, #0x254]
	bl ov1_02127EE4
	ldr r0, [sl, #0xbac]
	bl ov1_0212E940
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02121178: .word MAIN_BSS_020BAE7B
_0212117C: .word 0x00007FFF
_02121180: .word MAIN_BSS_020B26A0

	arm_func_start ov1_02121184
ov1_02121184: ; 0x02121184
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	bl sub_02010B7C
	ldrb r1, [r4, #0x44]
	cmp r1, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xd8]
	bl ov1_0212C4B8
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x384]
	cmp r0, #0
	beq _021212FC
	ldr r5, [r0]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0xd8]
	ldr r5, [r5, #8]
	add r3, r4, #0xdc
	blx r5
	cmp r0, #0
	bne _021212B4
	mov r0, r4
	bl ov1_02122B90
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x20
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x20
	bl sub_0200E0E0
	ldr r0, [r4, #0xd8]
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0x9e]
	ldr r0, [r4, #0xd8]
	ldr r0, [r0, #0x1b8]
	bl ov1_02124DEC
	ldr r0, [r4, #0xd8]
	ldrh r1, [r4, #0x30]
	ldr r0, [r0, #0x1b8]
	bl ov1_02124AF4
	ldr r0, [r4, #0xd8]
	mov r1, #0
	str r1, [r0, #0x190]
	ldr r0, [r4, #4]
	mov r1, #0x13
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr r0, [r4, #0x384]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, [r4, #0x384]
	cmp r0, #0
	beq _02121294
	beq _0212128C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_02121184
_0212128C:
	mov r0, #0
	str r0, [r4, #0x384]
_02121294:
	ldr r0, [r4, #0xc30]
	mov r1, #0
	bl ov1_0213EF40
	ldr r0, [r4, #0xc30]
	bl ov1_0213EEB8
	ldr r0, [r4, #0xc30]
	bl ov1_0213EDDC
	b _021212FC
_021212B4:
	ldr r0, [r4, #0x384]
	ldrh r5, [r0, #4]
	cmp r5, #0x12c
	bhi _021212FC
	ldr r2, _0212134C ; =0x88888889
	mov r0, r5, lsr #0x1f
	smull r1, r3, r2, r5
	add r3, r5, r3
	add r3, r0, r3, asr #5
	mov r2, #0x3c
	smull r0, r1, r2, r3
	subs r3, r5, r0
	bne _021212FC
	ldr r0, [r4, #4]
	mov r1, #0x12
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_021212FC:
	mov r7, #0
	mov r5, r7
	mov r6, #1
_02121308:
	add r0, r4, r7, lsl #2
	ldr r0, [r0, #0x2f8]
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, r6
	moveq r1, r5
	cmp r1, #0
	beq _02121334
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_02121334:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	cmp r7, #0x20
	blo _02121308
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0212134C: .word 0x88888889

	arm_func_start ov1_02121350
ov1_02121350: ; 0x02121350
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sb, #0
	mov r7, #1
	mov sl, r0
	mov r6, sb
	mov fp, r7
	add r5, sp, #8
	arm_func_end ov1_02121350
_02121370:
	add r0, sl, sb, lsl #2
	ldr r8, [r0, #0xdc]
	cmp r8, #0
	beq _02121448
	ldr r0, [r8, #0x104]
	cmp r0, #0
	movne r0, r7
	moveq r0, r6
	cmp r0, #0
	beq _02121448
	ldr r1, [r8, #0x184]
	ldr r0, [r8, #0x20]
	ldr r2, [r1, #0x1c]
	add r1, r8, #0x100
	ldrh r1, [r1, #0x88]
	ldr r3, [r8, #0x24]
	ldrsb r2, [r2, #0xf]
	str r0, [sp]
	str r0, [sp, #8]
	cmp r1, #0
	movne r0, fp
	add r2, r3, r2, lsl #12
	moveq r0, #0
	str r3, [sp, #4]
	str r2, [sp, #0xc]
	cmp r0, #0
	beq _021213EC
	add r0, sl, sb, lsl #2
	ldr r0, [r0, #0x10c]
	ldmia r5, {r2, r3}
	bl ov1_02135F2C
_021213EC:
	mov r0, r8
	bl ov1_021267E8
	mov r4, r0
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r0, sl, sb, lsl #2
	ldr r0, [r0, #0x10c]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r4, #0
	bne _02121448
	mov r0, r8
	bl ov1_021267E8
	cmp r0, #1
	bne _02121448
	ldr r0, [sl, #0xc30]
	mov r1, sb
	bl ov1_0213EA2C
	ldr r0, [sl, #0xc30]
	bl ov1_0213EDDC
_02121448:
	add r0, sb, #1
	and sb, r0, #0xff
	cmp sb, #8
	blo _02121370
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_02121460
ov1_02121460: ; 0x02121460
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r5, r7
	mov r6, #1
	arm_func_end ov1_02121460
_02121474:
	add r0, r4, r7, lsl #2
	ldr r0, [r0, #0xdc]
	cmp r0, #0
	beq _021214A0
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, r6
	moveq r1, r5
	cmp r1, #0
	beq _021214A0
	bl ov1_0212580C
_021214A0:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #8
	blo _02121474
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_021214B4
ov1_021214B4: ; 0x021214B4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r5, r7
	mov r6, #1
	arm_func_end ov1_021214B4
_021214C8:
	add r0, r4, r7, lsl #2
	ldr r0, [r0, #0x130]
	cmp r0, #0
	beq _021214FC
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, r6
	moveq r1, r5
	cmp r1, #0
	beq _021214FC
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_021214FC:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	cmp r7, #0x60
	blo _021214C8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_02121514
ov1_02121514: ; 0x02121514
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r5, r7
	mov r6, #1
	arm_func_end ov1_02121514
_02121528:
	add r0, r4, r7, lsl #2
	ldr r0, [r0, #0x130]
	cmp r0, #0
	beq _02121554
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, r6
	moveq r1, r5
	cmp r1, #0
	beq _02121554
	bl ov1_02126F90
_02121554:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	cmp r7, #0x60
	blo _02121528
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_0212156C
ov1_0212156C: ; 0x0212156C
	ldr ip, _02121578 ; =ov1_02136AEC
	ldr r0, [r0, #0xba8]
	bx ip
	.align 2, 0
_02121578: .word ov1_02136AEC
	arm_func_end ov1_0212156C

	arm_func_start ov1_0212157C
ov1_0212157C: ; 0x0212157C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	mov sb, #0
	add r0, sl, #0x2c8
	add r1, sl, #0x2d8
	sub r6, sp, #8
	add r5, r0, #0x1000
	add r4, r1, #0x1000
	mov r7, sb
	mov fp, sb
	arm_func_end ov1_0212157C
_021215A8:
	add r0, sl, sb, lsl #2
	ldr r8, [r0, #0x130]
	ldr r0, [r8, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02121638
	ldr r0, [r8, #0x184]
	ldr r0, [r0, #0x18]
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _02121638
	str r7, [sp, #8]
	ldmia r5, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	add r0, r8, #0x20
	ldmia r0, {r0, r1}
	ldmia r6, {r2, r3}
	bl sub_02006000
	cmp r0, #0
	bne _0212160C
	mov r0, r8
	bl ov1_02127300
	b _02121638
_0212160C:
	str fp, [sp, #8]
	ldmia r4, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	add r0, r8, #0x20
	ldmia r0, {r0, r1}
	ldmia r6, {r2, r3}
	bl sub_02006000
	cmp r0, #0
	bne _02121638
	mov r0, r8
	bl ov1_02127300
_02121638:
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, lsr #0x10
	cmp sb, #0x60
	blo _021215A8
	mov r8, #0
	add r0, sl, #0x2c8
	add r1, sl, #0x2d8
	sub r6, sp, #8
	add r5, r0, #0x1000
	add r4, r1, #0x1000
	mov r7, r8
	mov fp, r8
_0212166C:
	add r0, sl, r8, lsl #2
	ldr sb, [r0, #0x2f8]
	ldr r0, [sb, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _021216FC
	ldr r0, [sb, #0x184]
	ldr r0, [r0, #0x18]
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021216FC
	str r7, [sp, #8]
	ldmia r5, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	add r0, sb, #0x20
	ldmia r0, {r0, r1}
	ldmia r6, {r2, r3}
	bl sub_02006000
	cmp r0, #0
	bne _021216D0
	mov r0, sb
	bl ov1_02127300
	b _021216FC
_021216D0:
	str fp, [sp, #8]
	ldmia r4, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	add r0, sb, #0x20
	ldmia r0, {r0, r1}
	ldmia r6, {r2, r3}
	bl sub_02006000
	cmp r0, #0
	bne _021216FC
	mov r0, sb
	bl ov1_02127300
_021216FC:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #0x20
	blo _0212166C
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_02121714
ov1_02121714: ; 0x02121714
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xd8]
	bl ov1_0212C4E4
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0xd8]
	bl ov1_0212C5D8
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldrb r1, [r4, #0x80]
	tst r1, #2
	beq _02121754
	ldrb r0, [r4, #0x81]
	cmp r0, #0xc
	ldmloia sp!, {r4, pc}
	arm_func_end ov1_02121714
_02121754:
	tst r1, #1
	beq _02121768
	ldrb r0, [r4, #0x81]
	cmp r0, #0xc
	ldmloia sp!, {r4, pc}
_02121768:
	mov r0, r4
	bl ov1_02121774
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02121774
ov1_02121774: ; 0x02121774
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x48
	mov sl, r0
	mov fp, #0
	arm_func_end ov1_02121774
_02121784:
	add r0, sl, fp, lsl #2
	ldr r8, [r0, #0x130]
	cmp r8, #0
	beq _021219B8
	ldr r0, [r8, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _021219B8
	ldrh r0, [r8, #4]
	tst r0, #0x100
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _021219B8
	add r0, r8, #0x430
	add r3, sp, #0x30
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r4, [sp, #0x30]
	ldr r3, [sp, #0x38]
	ldr r1, [r8, #0x8c]
	ldr r0, [r8, #0xa0]
	ldr r2, [r8, #0xb0]
	add r0, r1, r0
	ldr r1, [sp, #0x34]
	add r0, r2, r0
	sub r1, r1, r0
	ldr r0, [sl, #0xd8]
	str r4, [sp, #0x3c]
	str r3, [sp, #0x44]
	str r1, [sp, #0x40]
	mov sb, #0
	bl ov1_0212C6C0
	add r0, r0, #1
	cmp r0, #0
	ble _021219B8
	sub r6, sp, #8
	add r7, sp, #0x1c
	add r5, sp, #0x3c
_02121828:
	ldr r0, [sl, #0xd8]
	mov r1, sb
	bl ov1_0212C6B0
	mov r2, r0
	ldr r1, [sl, #0xd8]
	mov r0, r7
	bl ov1_0212C670
	ldmia r5, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	ldmia r6, {r2, r3}
	ldmia r7, {r0, r1}
	bl sub_02006100
	cmp r0, #0
	beq _02121998
	mov r0, sl
	bl ov1_02122BE8
	ldr r0, [sl, #0xd8]
	mov r1, #0
	bl ov1_0212C514
	ldr r1, [r8, #0x184]
	add r0, r8, #0x100
	ldr r2, [r1, #0x18]
	ldrh r1, [r0, #0x8e]
	ldr r2, [r2, #0xc]
	ldr r0, [sl, #0xd8]
	and r2, r2, #0xff
	bl ov1_0212C33C
	mov r4, r0
	ldr r0, [sl, #0xd8]
	add r1, sp, #0x3c
	ldr r0, [r0, #0x25c]
	mov r3, r4
	ldmia r1, {r1, r2}
	bl ov1_02128E34
	ldr r0, [sl, #0x384]
	cmp r0, #0
	beq _021218C8
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
_021218C8:
	ldr r0, [sl, #0xd8]
	ldr r1, _02121B40 ; =0x00007FFF
	bl ov1_0212C6D0
	add r0, r8, #0x100
	ldrh r0, [r0, #0x8e]
	cmp r4, r0
	beq _02121904
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	ldr r0, [sl, #0xd8]
	mov r3, #3
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	bl ov1_0212CF0C
	b _02121920
_02121904:
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	ldr r0, [sl, #0xd8]
	mov r3, #1
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl ov1_0212CF0C
_02121920:
	cmp r4, #0
	ldr r0, [sl, #4]
	beq _02121940
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x25
	bl sub_02034C44
	b _02121950
_02121940:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xf
	bl sub_02034C44
_02121950:
	ldr r0, [sl, #4]
	mov r1, #0xb
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C5C
	ldr r0, [sl, #0x38]
	add r0, r0, #1
	str r0, [sl, #0x38]
	ldr r0, [r8, #0x184]
	ldr r0, [r0, #0x18]
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0212198C
	mov r0, r8
	bl ov1_02127300
_0212198C:
	add sp, sp, #0x48
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02121998:
	add r0, sb, #1
	mov r4, r0, lsl #0x10
	ldr r0, [sl, #0xd8]
	mov sb, r4, lsr #0x10
	bl ov1_0212C6C0
	add r0, r0, #1
	cmp r0, r4, lsr #16
	bgt _02121828
_021219B8:
	add r0, fp, #1
	and fp, r0, #0xff
	cmp fp, #0x60
	blo _02121784
	mov r7, #0
_021219CC:
	add r0, sl, r7, lsl #2
	ldr r1, [r0, #0xdc]
	cmp r1, #0
	beq _02121B24
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02121B24
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02121B24
	add r0, r1, #0x2f8
	add r0, r0, #0x400
	add r3, sp, #0x24
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [sl, #0xd8]
	str r3, [sp, #0x3c]
	str r2, [sp, #0x40]
	str r1, [sp, #0x44]
	mov r8, #0
	bl ov1_0212C6C0
	add r0, r0, #1
	cmp r0, #0
	ble _02121B24
	sub r5, sp, #8
	add r6, sp, #0x14
	add r4, sp, #0x3c
_02121A60:
	ldr r0, [sl, #0xd8]
	mov r1, r8
	bl ov1_0212C6B0
	mov r2, r0
	ldr r1, [sl, #0xd8]
	mov r0, r6
	bl ov1_0212C670
	ldmia r4, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldmia r5, {r2, r3}
	ldmia r6, {r0, r1}
	bl sub_02006100
	cmp r0, #0
	beq _02121B04
	ldr r0, [sl, #0xd8]
	ldr r1, _02121B40 ; =0x00007FFF
	bl ov1_0212C6D0
	mov r0, sl
	bl ov1_02122BE8
	ldr r0, [sl, #0xd8]
	mov r1, #0
	bl ov1_0212C514
	ldr r0, [sl, #0x384]
	cmp r0, #0
	beq _02121AD0
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
_02121AD0:
	ldr r0, [sl, #4]
	mov r1, #0x28
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr r0, [sl, #4]
	mov r1, #0xb
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C5C
	add sp, sp, #0x48
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02121B04:
	add r0, r8, #1
	mov sb, r0, lsl #0x10
	ldr r0, [sl, #0xd8]
	mov r8, sb, lsr #0x10
	bl ov1_0212C6C0
	add r0, r0, #1
	cmp r0, sb, lsr #16
	bgt _02121A60
_02121B24:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #8
	blo _021219CC
	mov r0, #0
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02121B40: .word 0x00007FFF

	arm_func_start ov1_02121B44
ov1_02121B44: ; 0x02121B44
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0xc4]
	bl sub_020037B4
	ldr r0, [r4, #0xc4]
	bl sub_0200381C
	ldr r0, _02121D48 ; =0x0400044C
	mov r1, #0
	str r1, [r0]
	ldr r1, [r4, #0xc4]
	ldr r2, _02121D4C ; =0xFFFFFC01
	mov r0, r4
	bl ov1_02121DB0
	mov r2, r0
	ldr r1, [r4, #0xc4]
	mov r0, r4
	bl ov1_021222E8
	mov r7, #0
	mov r2, #2
	mov r5, r7
	mov r6, #1
	arm_func_end ov1_02121B44
_02121B98:
	add r0, r4, r7, lsl #2
	ldr r0, [r0, #0xdc]
	cmp r0, #0
	beq _02121BCC
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, r6
	moveq r1, r5
	cmp r1, #0
	beq _02121BCC
	ldr r1, [r4, #0xc4]
	bl ov1_02125E00
	mov r2, r0
_02121BCC:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #8
	blo _02121B98
	ldr r1, [r4, #0xc4]
	mov r0, r4
	bl ov1_021220B4
	mov r5, r0
	add r1, r5, #3
	ldr r0, [r4, #0xd0]
	mov r2, r1
	mov r3, r1
	bl sub_0201B5F4
	ldr r0, [r4, #0xd0]
	ldr r1, [r4, #0xc4]
	bl sub_0201B460
	ldr r0, [r4, #0x24]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02121CCC
_02121C1C: ; jump table
	b _02121C44 ; case 0
	b _02121C58 ; case 1
	b _02121CCC ; case 2
	b _02121C6C ; case 3
	b _02121C6C ; case 4
	b _02121C80 ; case 5
	b _02121CA8 ; case 6
	b _02121C94 ; case 7
	b _02121CCC ; case 8
	b _02121CBC ; case 9
_02121C44:
	ldr r1, [r4, #0xc4]
	mov r0, r4
	add r2, r5, #3
	bl ov1_02121D78
	b _02121CCC
_02121C58:
	ldr r1, [r4, #0xc4]
	mov r0, r4
	add r2, r5, #3
	bl ov1_02121D80
	b _02121CCC
_02121C6C:
	ldr r1, [r4, #0xc4]
	mov r0, r4
	add r2, r5, #3
	bl ov1_02122010
	b _02121CCC
_02121C80:
	ldr r1, [r4, #0xc4]
	mov r0, r4
	add r2, r5, #3
	bl ov1_02122018
	b _02121CCC
_02121C94:
	ldr r1, [r4, #0xc4]
	mov r0, r4
	add r2, r5, #3
	bl ov1_02122044
	b _02121CCC
_02121CA8:
	ldr r1, [r4, #0xc4]
	mov r0, r4
	add r2, r5, #3
	bl ov1_02122074
	b _02121CCC
_02121CBC:
	ldr r1, [r4, #0xc4]
	mov r0, r4
	add r2, r5, #3
	bl ov1_021220AC
_02121CCC:
	ldr r0, [r4, #0xbb0]
	mov r1, #0x3ac
	bl sub_0201A10C
	mov r5, r0
	ldr r0, [r4, #0xbb0]
	ldr r1, [r4, #0xc8]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r0, [r4, #0x1c]
	bl sub_02010BE0
	cmp r0, #0
	beq _02121D1C
	ldr r0, [r4, #0xc08]
	mov r1, r5
	bl ov1_021382A4
	mov r5, r0
	ldr r0, [r4, #0xc08]
	ldr r1, [r4, #0xc8]
	bl ov1_02138268
_02121D1C:
	ldr r0, [r4, #0x1c]
	bl sub_02010BF4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc0c]
	mov r1, r5
	bl ov1_021384CC
	ldr r0, [r4, #0xc0c]
	ldr r1, [r4, #0xc8]
	bl ov1_02138490
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02121D48: .word 0x0400044C
_02121D4C: .word 0xFFFFFC01

	arm_func_start ov1_02121D50
ov1_02121D50: ; 0x02121D50
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0x5d]
	cmp r1, #0
	beq _02121D6C
	ldr r0, [r0, #0xc34]
	bl sub_0201F988
	ldmia sp!, {r3, pc}
	arm_func_end ov1_02121D50
_02121D6C:
	ldr r0, [r0, #0xc30]
	bl ov1_0213E728
	ldmia sp!, {r3, pc}

	arm_func_start ov1_02121D78
ov1_02121D78: ; 0x02121D78
	mov r0, r2
	bx lr
	arm_func_end ov1_02121D78

	arm_func_start ov1_02121D80
ov1_02121D80: ; 0x02121D80
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc10]
	mov r5, r1
	mov r1, r2
	bl ov1_0213F970
	mov r4, r0
	ldr r0, [r6, #0xc10]
	mov r1, r5
	bl ov1_0213F82C
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_02121D80

	arm_func_start ov1_02121DB0
ov1_02121DB0: ; 0x02121DB0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	mov r4, r2
	mov r6, #0
	arm_func_end ov1_02121DB0
_02121DC0:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0xbc4]
	bl ov1_02137EE8
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #8
	blo _02121DC0
	mov r8, #0
	mov r6, r8
	mov r7, #1
_02121DE8:
	add r0, r5, r8, lsl #2
	ldr r1, [r0, #0xdc]
	cmp r1, #0
	beq _02121E18
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, r7
	moveq r0, r6
	cmp r0, #0
	beq _02121E18
	ldr r0, [r5, #0xbd4]
	bl ov1_02137DF8
_02121E18:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #8
	blo _02121DE8
	mov r8, #0
	mov r6, r8
	mov r7, #1
_02121E34:
	add r0, r5, r8, lsl #2
	ldr r1, [r0, #0x130]
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, r7
	moveq r0, r6
	cmp r0, #0
	beq _02121E6C
	ldr r0, [r1, #0x184]
	ldr r0, [r0, #0x18]
	ldrb r0, [r0, #8]
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0xbc4]
	bl ov1_02137DF8
_02121E6C:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #0x60
	blo _02121E34
	mov r8, #0
	mov r6, r8
	mov r7, #1
_02121E88:
	add r0, r5, r8, lsl #2
	ldr r1, [r0, #0x2f8]
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, r7
	moveq r0, r6
	cmp r0, #0
	beq _02121EC0
	ldr r0, [r1, #0x184]
	ldr r0, [r0, #0x18]
	ldrb r0, [r0, #8]
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0xbc4]
	bl ov1_02137DF8
_02121EC0:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #0x20
	blo _02121E88
	ldr r0, [r5, #0xd4]
	mov r1, r4
	bl sub_0204240C
	mov r4, r0
	ldr r0, [r5, #0xd4]
	ldr r1, [r5, #0xc4]
	bl sub_020423F4
	ldr r0, [r5, #0xbe0]
	str r4, [r0, #0xc]
	ldr r0, [r5, #0xbe0]
	ldr r1, [r5, #0xc4]
	bl ov1_02137F28
	ldr r1, [r5, #0xbdc]
	str r0, [r1, #0xc]
	ldr r0, [r5, #0xbdc]
	ldr r1, [r5, #0xc4]
	bl ov1_02137F28
	mov r2, r0
	mov r0, r5
	ldr r1, [r5, #0xc4]
	bl ov1_0212233C
	mov r1, r0
	ldr r0, [r5, #0xbac]
	bl ov1_0212EDB4
	mov r4, r0
	ldr r0, [r5, #0xbac]
	ldr r1, [r5, #0xc4]
	bl ov1_0212E998
	mov r1, r4
	ldr r0, [r5, #0xd8]
	bl ov1_0212D124
	mov r4, r0
	ldr r0, [r5, #0xd8]
	ldr r1, [r5, #0xc4]
	bl ov1_0212C00C
	ldr r0, [r5, #0xbd8]
	str r4, [r0, #0xc]
	ldr r0, [r5, #0xbd8]
	ldr r1, [r5, #0xc4]
	bl ov1_02137F28
	ldr r1, [r5, #0xbd4]
	str r0, [r1, #0xc]
	ldr r0, [r5, #0xbd4]
	ldr r1, [r5, #0xc4]
	bl ov1_02137F28
	mov r1, r0
	ldr r0, [r5, #0xd8]
	bl ov1_0212D0D4
	mov r4, r0
	ldr r0, [r5, #0xd8]
	ldr r1, [r5, #0xc4]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r0, [r5, #0xbd0]
	str r4, [r0, #0xc]
	ldr r0, [r5, #0xbd0]
	ldr r1, [r5, #0xc4]
	bl ov1_02137F28
	ldr r1, [r5, #0xbcc]
	str r0, [r1, #0xc]
	ldr r0, [r5, #0xbcc]
	ldr r1, [r5, #0xc4]
	bl ov1_02137F28
	ldr r1, [r5, #0xbc8]
	str r0, [r1, #0xc]
	ldr r0, [r5, #0xbc8]
	ldr r1, [r5, #0xc4]
	bl ov1_02137F28
	ldr r1, [r5, #0xbc4]
	str r0, [r1, #0xc]
	ldr r0, [r5, #0xbc4]
	ldr r1, [r5, #0xc4]
	bl ov1_02137F28
	mov r4, r0
	ldr r0, [r5, #0xba8]
	ldr r1, [r5, #0xc4]
	bl ov1_02136B88
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov1_02122010
ov1_02122010: ; 0x02122010
	mov r0, r2
	bx lr
	arm_func_end ov1_02122010

	arm_func_start ov1_02122018
ov1_02122018: ; 0x02122018
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xbc0]
	mov r1, r2
	bl ov1_0213C67C
	mov r4, r0
	ldr r0, [r5, #0xbc0]
	ldr r1, [r5, #0xc4]
	bl ov1_0213BFFC
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_02122018

	arm_func_start ov1_02122044
ov1_02122044: ; 0x02122044
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xbb8]
	mov r5, r1
	mov r1, r2
	bl ov1_02139CE4
	mov r4, r0
	ldr r0, [r6, #0xbb8]
	mov r1, r5
	bl ov1_021399A8
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_02122044

	arm_func_start ov1_02122074
ov1_02122074: ; 0x02122074
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xbbc]
	mov r5, r1
	mov r1, r2
	bl ov1_0213AA90
	mov r4, r0
	ldr r0, [r6, #0xbbc]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_02122074

	arm_func_start ov1_021220AC
ov1_021220AC: ; 0x021220AC
	mov r0, r2
	bx lr
	arm_func_end ov1_021220AC

	arm_func_start ov1_021220B4
ov1_021220B4: ; 0x021220B4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r1, _021222DC ; =0x04000454
	mov r3, #0
	mov r5, r0
	str r3, [r1]
	ldr r0, [r5, #0xc8]
	mov r4, r2
	bl sub_020037B4
	ldr r0, [r5, #0xc8]
	bl sub_0200381C
	ldr r0, _021222E0 ; =0x0400044C
	mov r1, #0
	str r1, [r0]
	ldr r0, [r5, #0x70]
	cmp r0, #0
	beq _021222D0
	ldr r0, [r5, #0x1c]
	bl sub_02010C08
	cmp r0, #0
	beq _02122234
	ldr r6, [r5, #0xdc]
	cmp r6, #0
	beq _02122194
	ldr r0, [r6, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02122170
	ldr r1, _021222E4 ; =DAT_overlay_1_0213fb68
	add r0, r6, #0x100
	ldr r3, [r1]
	ldr r2, [r1, #4]
	mov r1, #8
	str r3, [sp]
	str r2, [sp, #4]
	ldr r3, [r6, #0x184]
	ldrh r2, [r0, #0x88]
	ldr r3, [r3, #0x1c]
	ldr r0, [r5, #0x10c]
	ldrh r3, [r3]
	bl ov1_02135E70
	ldr r0, [r5, #0x10c]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	arm_func_end ov1_021220B4
_02122170:
	ldr r0, [r5, #0x10c]
	mov r1, r4
	bl ov1_02136248
	mov r4, r0
	ldr r0, [r5, #0x10c]
	ldr r1, [r5, #0xc8]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
_02122194:
	mov sl, #1
	mov r8, #0
	mov sb, sl
	mov r6, r8
	mov r7, sl
_021221A8:
	add r0, r5, sl, lsl #2
	ldr r1, [r0, #0xdc]
	cmp r1, #0
	beq _02122220
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, sb
	moveq r0, r8
	cmp r0, #0
	beq _02122220
	ldrb r0, [r1, #0x108]
	cmp r0, #0x1f
	bne _02122220
	ldrh r0, [r1, #4]
	tst r0, #0x400
	moveq r0, r7
	movne r0, r6
	cmp r0, #0
	beq _02122220
	add r0, r5, sl, lsl #2
	ldr r0, [r0, #0x10c]
	mov r1, r4
	bl ov1_02136248
	add r1, r5, sl, lsl #2
	mov r4, r0
	ldr r0, [r1, #0x10c]
	ldr r1, [r5, #0xc8]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
_02122220:
	add r0, sl, #1
	and sl, r0, #0xff
	cmp sl, #8
	blo _021221A8
	b _021222D0
_02122234:
	mov sl, #0
	mov sb, #1
	mov r8, sl
	mov r6, sl
	mov r7, sb
_02122248:
	add r0, r5, sl, lsl #2
	ldr r1, [r0, #0xdc]
	cmp r1, #0
	beq _021222C0
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, sb
	moveq r0, r8
	cmp r0, #0
	beq _021222C0
	ldrb r0, [r1, #0x108]
	cmp r0, #0x1f
	bne _021222C0
	ldrh r0, [r1, #4]
	tst r0, #0x400
	moveq r0, r7
	movne r0, r6
	cmp r0, #0
	beq _021222C0
	add r0, r5, sl, lsl #2
	ldr r0, [r0, #0x10c]
	mov r1, r4
	bl ov1_02136248
	add r1, r5, sl, lsl #2
	mov r4, r0
	ldr r0, [r1, #0x10c]
	ldr r1, [r5, #0xc8]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
_021222C0:
	add r0, sl, #1
	and sl, r0, #0xff
	cmp sl, #8
	blo _02122248
_021222D0:
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021222DC: .word 0x04000454
_021222E0: .word 0x0400044C
_021222E4: .word DAT_overlay_1_0213fb68

	arm_func_start ov1_021222E8
ov1_021222E8: ; 0x021222E8
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02122338 ; =0x04000454
	mov r3, #0
	mov r5, r0
	str r3, [r1]
	ldr r0, [r5, #0xc4]
	mov r4, r2
	str r3, [r0, #0x1c]
	str r3, [r0, #0x20]
	ldr r0, [r5, #0xc4]
	bl sub_020037B4
	ldr r0, [r5, #0xc4]
	bl sub_0200381C
	ldr r0, [r5, #0xc2c]
	cmp r0, #0
	beq _02122330
	ldr r1, [r5, #0xc4]
	bl sub_020358AC
	arm_func_end ov1_021222E8
_02122330:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02122338: .word 0x04000454

	arm_func_start ov1_0212233C
ov1_0212233C: ; 0x0212233C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x60
	mov r4, #0
	mov sl, #1
	mov r6, r0
	mov r5, r2
	mov sb, r4
	mov fp, sl
	add r7, sp, #0x50
	add r8, sp, #0x20
	arm_func_end ov1_0212233C
_02122364:
	add r0, r6, r4, lsl #2
	ldr ip, [r0, #0xdc]
	cmp ip, #0
	beq _02122480
	ldr r0, [ip, #0x104]
	cmp r0, #0
	movne r0, sl
	moveq r0, sb
	cmp r0, #0
	beq _02122480
	ldrh r0, [ip, #4]
	tst r0, #0x800
	moveq r0, fp
	movne r0, #0
	cmp r0, #0
	beq _02122480
	ldr r1, [ip, #0x8c]
	ldr r2, [ip, #0xb0]
	ldr r0, [ip, #0xa0]
	add r0, r1, r0
	add r0, r2, r0
	cmp r0, #0x60000
	bgt _02122480
	ldr r0, [ip, #0x184]
	add r0, r0, #0x2c
	ldmia r0, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	ldr r1, [sp, #0x20]
	ldr r0, [ip, #0x20]
	ldr r2, [sp, #0x24]
	add r0, r1, r0
	str r0, [sp, #0x20]
	ldr r1, [ip, #0x24]
	add r1, r2, r1
	str r1, [sp, #0x24]
	ldr r1, [ip, #0x484]
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldmia r8, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	ldr r0, [sp, #0x58]
	cmp r0, #0
	ldrne r0, [sp, #0x5c]
	cmpne r0, #0
	beq _02122480
	ldr r2, [ip, #0x8c]
	ldr lr, [ip, #0xb0]
	ldr ip, [ip, #0xa0]
	mov r0, #0x1000
	add r2, r2, ip
	mov r1, #0
	mov r3, #0x60000
	add r2, lr, r2
	bl sub_02007068
	ldr r2, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	smull ip, r3, r2, r0
	mov r2, ip, lsr #0xc
	orr r2, r2, r3, lsl #20
	str r2, [sp, #0x58]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x5c]
	ldr r0, [r6, #0xc28]
	mov r1, r7
	mov r2, r5
	bl sub_02018D94
	ldr r0, [r6, #0xc28]
	ldr r1, [r6, #0xc4]
	bl sub_02018DDC
_02122480:
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, #8
	blo _02122364
	mov r4, #0
	mov sb, r4
	mov sl, #1
	add r8, sp, #0x10
	add r7, sp, #0x40
_021224A4:
	add r0, r6, r4, lsl #2
	ldr fp, [r0, #0x130]
	ldr r0, [fp, #0x104]
	cmp r0, #0
	movne r0, sl
	moveq r0, sb
	cmp r0, #0
	beq _021225CC
	ldrh r0, [fp, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _021225CC
	ldr r0, [fp, #0x184]
	ldr r0, [r0, #0x18]
	ldrb r1, [r0, #0x17]
	cmp r1, #0
	beq _021225CC
	ldr r3, [fp, #0xb0]
	ldr r2, [fp, #0x8c]
	ldr r1, [fp, #0xa0]
	add r1, r2, r1
	add r1, r3, r1
	cmp r1, #0x60000
	bgt _021225CC
	ldrsb r3, [r0, #0x18]
	ldrsb r2, [r0, #0x19]
	ldrb r1, [r0, #0x1a]
	ldrb r0, [r0, #0x1b]
	mov r3, r3, lsl #0xc
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	mov r0, r0, lsl #0xc
	str r3, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldmia r8, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	ldr r1, [sp, #0x40]
	ldr r0, [fp, #0x20]
	ldr r2, [sp, #0x44]
	add r0, r1, r0
	str r0, [sp, #0x40]
	ldr r1, [fp, #0x24]
	mov r0, #0x1000
	add r1, r2, r1
	str r1, [sp, #0x44]
	ldr ip, [fp, #0xb0]
	ldr r2, [fp, #0x8c]
	ldr fp, [fp, #0xa0]
	mov r1, #0
	add r2, r2, fp
	mov r3, #0x60000
	add r2, ip, r2
	bl sub_02007068
	ldr r2, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	smull fp, r3, r2, r0
	mov r2, fp, lsr #0xc
	orr r2, r2, r3, lsl #20
	str r2, [sp, #0x48]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x4c]
	ldr r0, [r6, #0xc28]
	mov r1, r7
	mov r2, r5
	bl sub_02018D94
	ldr r0, [r6, #0xc28]
	ldr r1, [r6, #0xc4]
	bl sub_02018DDC
_021225CC:
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, #0x60
	blo _021224A4
	mov sl, #0
	mov r8, sl
	mov sb, #1
	add r7, sp, #0
	add r4, sp, #0x30
_021225F0:
	add r0, r6, sl, lsl #2
	ldr fp, [r0, #0x2f8]
	ldr r0, [fp, #0x104]
	cmp r0, #0
	movne r0, sb
	moveq r0, r8
	cmp r0, #0
	beq _0212270C
	ldr r0, [fp, #0x184]
	ldr r0, [r0, #0x18]
	ldrb r1, [r0, #0x17]
	cmp r1, #0
	beq _0212270C
	ldrb r1, [fp, #0x108]
	cmp r1, #0x1f
	bne _0212270C
	ldr r2, [fp, #0x8c]
	ldr r1, [fp, #0xa0]
	ldr r3, [fp, #0xb0]
	add r1, r2, r1
	add r1, r3, r1
	cmp r1, #0x60000
	bgt _0212270C
	ldrsb r3, [r0, #0x18]
	ldrsb r2, [r0, #0x19]
	ldrb r1, [r0, #0x1a]
	ldrb r0, [r0, #0x1b]
	mov r3, r3, lsl #0xc
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	mov r0, r0, lsl #0xc
	str r3, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldmia r7, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r1, [sp, #0x30]
	ldr r0, [fp, #0x20]
	ldr r2, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x30]
	ldr r1, [fp, #0x24]
	mov r0, #0x1000
	add r1, r2, r1
	str r1, [sp, #0x34]
	ldr ip, [fp, #0xb0]
	ldr r2, [fp, #0x8c]
	ldr fp, [fp, #0xa0]
	mov r1, #0
	add r2, r2, fp
	mov r3, #0x60000
	add r2, ip, r2
	bl sub_02007068
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	smull fp, r3, r2, r0
	mov r2, fp, lsr #0xc
	orr r2, r2, r3, lsl #20
	str r2, [sp, #0x38]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x3c]
	ldr r0, [r6, #0xc28]
	mov r1, r4
	mov r2, r5
	bl sub_02018D94
	ldr r0, [r6, #0xc28]
	ldr r1, [r6, #0xc4]
	bl sub_02018DDC
_0212270C:
	add r0, sl, #1
	and sl, r0, #0xff
	cmp sl, #0x20
	blo _021225F0
	add r0, r5, #1
	add sp, sp, #0x60
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_02122728
ov1_02122728: ; 0x02122728
	cmp r0, #1
	blo _0212273C
	cmp r0, #9
	movlo r0, #1
	bxlo lr
	arm_func_end ov1_02122728
_0212273C:
	cmp r0, #9
	blo _02122750
	cmp r0, #0x89
	movlo r0, #2
	bxlo lr
_02122750:
	cmp r0, #0
	moveq r0, #0
	movne r0, #3
	bx lr

	arm_func_start ov1_02122760
ov1_02122760: ; 0x02122760
	cmp r1, #1
	blo _02122780
	cmp r1, #9
	bhs _02122780
	sub r1, r1, #1
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0xdc]
	bx lr
	arm_func_end ov1_02122760
_02122780:
	mov r0, #0
	bx lr

	arm_func_start ov1_02122788
ov1_02122788: ; 0x02122788
	cmp r1, #9
	blo _021227A8
	cmp r1, #0x89
	bhs _021227A8
	sub r1, r1, #9
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x130]
	bx lr
	arm_func_end ov1_02122788
_021227A8:
	mov r0, #0
	bx lr

	arm_func_start ov1_021227B0
ov1_021227B0: ; 0x021227B0
	cmp r1, #0x12
	movhs r0, #0
	addlo r0, r0, r1, lsl #2
	ldrlo r0, [r0, #0x2b0]
	bx lr
	arm_func_end ov1_021227B0

	arm_func_start ov1_021227C4
ov1_021227C4: ; 0x021227C4
	ldr r0, [r0, #0xcc]
	bx lr
	arm_func_end ov1_021227C4

	arm_func_start ov1_021227CC
ov1_021227CC: ; 0x021227CC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203491C
	ldr r0, [r6, #4]
	mov r3, #0
	add r0, r0, #0x1000
	ldr r4, [r0, #0x444]
	str r5, [r4, #8]
	ldr r0, [r6, #0x74]
	str r0, [r4, #0x10]
	arm_func_end ov1_021227CC
_02122804:
	add r0, r6, r3
	ldrb r2, [r0, #0x9a]
	add r0, r3, #1
	add r1, r4, r3
	and r3, r0, #0xff
	strb r2, [r1, #0x6d]
	cmp r3, #8
	blo _02122804
	ldr r1, [r6, #0xd8]
	sub r0, r5, #1
	ldr r1, [r1, #0x1b8]
	cmp r0, #2
	add r0, r1, #0x5000
	ldr r0, [r0, #0x4c8]
	mov r0, r0, lsl #3
	str r0, [r4, #0x78]
	ldr r0, [r6, #0x58]
	str r0, [r4, #0x7c]
	bhi _021228B4
	str r5, [r6, #0x18]
	ldr r0, [r6, #0xbb0]
	ldr r2, [r6, #0xd8]
	add r0, r0, #0x500
	ldrh r3, [r0, #0x96]
	mov r0, #0
	mov r1, #4
	and r3, r3, #0xff
	strb r3, [r2, #0x19c]
	strb r3, [r4, #4]
	strb r0, [r4, #0x58]
	ldr r0, [r6, #4]
	mov r2, #0x40
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, [r6, #4]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x40
	bl sub_0200E0E0
	mov r0, #8
	str r0, [r6, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
_021228B4:
	ldrh r1, [r6, #0x2c]
	ldr r0, [r6, #0xbb8]
	mov r3, #0
	strh r1, [r0, #0xa]
	ldrb r0, [r6, #0x44]
	strb r0, [r4, #0x58]
	ldrb r1, [r6, #0x44]
	cmp r1, #0
	bls _021228FC
_021228D8:
	add r0, r6, r3, lsl #1
	ldrh r2, [r0, #0x46]
	add r1, r4, r3, lsl #1
	add r0, r3, #1
	strh r2, [r1, #0x5a]
	ldrb r1, [r6, #0x44]
	and r3, r0, #0xff
	cmp r3, r1
	blo _021228D8
_021228FC:
	cmp r1, #0
	beq _02122A88
	ldr r0, [r6, #0x34]
	cmp r0, #1
	ldreq r0, [r6, #0xc]
	orreq r0, r0, #0x80
	streq r0, [r6, #0xc]
	cmp r5, #2
	beq _021229A0
	ldr r0, [r6, #0x38]
	cmp r0, #0
	bne _02122994
	ldr r0, [r6, #0x1c]
	bl sub_02010C1C
	cmp r0, #0
	beq _0212294C
	cmp r0, #1
	beq _02122964
	cmp r0, #2
	b _0212297C
_0212294C:
	ldr r1, [r6, #0xc]
	mov r0, #1
	orr r1, r1, #0x400
	str r1, [r6, #0xc]
	strb r0, [r4, #0x6b]
	b _021229AC
_02122964:
	ldr r1, [r6, #0xc]
	mov r0, #2
	orr r1, r1, #0x800
	str r1, [r6, #0xc]
	strb r0, [r4, #0x6b]
	b _021229AC
_0212297C:
	ldr r1, [r6, #0xc]
	mov r0, #2
	orr r1, r1, #0x1000
	str r1, [r6, #0xc]
	strb r0, [r4, #0x6b]
	b _021229AC
_02122994:
	mov r0, #0
	strb r0, [r4, #0x6b]
	b _021229AC
_021229A0:
	ldr r0, [r6, #0x1c]
	bl sub_02010C1C
	strb r0, [r4, #0x6b]
_021229AC:
	ldr r0, [r6, #0x28]
	cmp r0, #0x258
	ldrls r0, [r6, #0xc]
	orrls r0, r0, #1
	strls r0, [r6, #0xc]
	ldr r0, [r6, #0x28]
	cmp r0, #0xb4
	ldrls r0, [r6, #0xc]
	orrls r0, r0, #2
	strls r0, [r6, #0xc]
	ldr r0, [r6, #0xbb0]
	bl sub_0201A198
	cmp r0, #2
	ldreq r0, [r6, #0xc]
	orreq r0, r0, #0x8000
	streq r0, [r6, #0xc]
	ldr r0, [r6, #0x58]
	cmp r0, #0x64
	blo _02122A08
	ldr r0, [r6, #0xc]
	orr r0, r0, #0x4000
	str r0, [r6, #0xc]
	b _02122A18
_02122A08:
	cmp r0, #0x32
	ldrhs r0, [r6, #0xc]
	orrhs r0, r0, #0x2000
	strhs r0, [r6, #0xc]
_02122A18:
	ldr r0, [r6, #0x1c]
	bl sub_02010C08
	cmp r0, #0
	ldrne r0, [r6, #0xc]
	ldr r1, _02122B6C ; =0x000186A0
	orrne r0, r0, #4
	strne r0, [r6, #0xc]
	ldr r0, [r6, #0xd8]
	ldr r0, [r0, #0x1b8]
	add r0, r0, #0x5000
	ldr r0, [r0, #0x4c8]
	cmp r1, r0, lsl #3
	ldrls r0, [r6, #0xc]
	orrls r0, r0, #0x10
	strls r0, [r6, #0xc]
	ldrh r0, [r6, #0x56]
	cmp r0, #1
	bne _02122A70
	ldr r0, [r6, #0xc]
	orr r0, r0, #0x100
	str r0, [r6, #0xc]
	b _02122A80
_02122A70:
	cmp r0, #2
	ldreq r0, [r6, #0xc]
	orreq r0, r0, #0x200
	streq r0, [r6, #0xc]
_02122A80:
	mov r0, r6
	bl ov1_02122DB4
_02122A88:
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0xbb8]
	cmp r5, #0
	str r1, [r0, #0x28]
	bne _02122AC8
	ldr r0, [r6, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r2, #0
	bl sub_02034A40
	mov r0, #0
	strh r0, [r6, #0x6c]
	mov r0, #0xa
	str r0, [r6, #0x20]
	b _02122B64
_02122AC8:
	ldrb r0, [r6, #0x5c]
	cmp r0, #0
	beq _02122B2C
	ldr r0, [r6, #0x1c]
	bl sub_02010B24
	cmp r0, #0x23
	bne _02122B20
	ldr r0, [r6, #0xbb8]
	ldr r1, [r6, #0xd8]
	ldr r2, [r6, #0xbb0]
	bl ov1_02139C30
	ldr r0, [r6, #0xd0]
	ldrb r1, [r0]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _02122B14
	bl sub_0201B508
_02122B14:
	mov r0, #7
	str r0, [r6, #0x20]
	b _02122B64
_02122B20:
	mov r0, #9
	str r0, [r6, #0x20]
	b _02122B64
_02122B2C:
	ldr r0, [r6, #0xbb8]
	ldr r1, [r6, #0xd8]
	ldr r2, [r6, #0xbb0]
	bl ov1_02139C30
	ldr r0, [r6, #0xd0]
	ldrb r1, [r0]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _02122B5C
	bl sub_0201B508
_02122B5C:
	mov r0, #7
	str r0, [r6, #0x20]
_02122B64:
	str r5, [r6, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02122B6C: .word 0x000186A0

	arm_func_start ov1_02122B70
ov1_02122B70: ; 0x02122B70
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02122BE8
	ldr r0, [r4, #0xbbc]
	bl ov1_0213AC30
	mov r0, #6
	str r0, [r4, #0x20]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02122B70

	arm_func_start ov1_02122B90
ov1_02122B90: ; 0x02122B90
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r5, r7
	mov r6, #1
	arm_func_end ov1_02122B90
_02122BA4:
	add r0, r4, r7, lsl #2
	ldr r0, [r0, #0x2f8]
	cmp r0, #0
	beq _02122BD0
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, r6
	moveq r1, r5
	cmp r1, #0
	beq _02122BD0
	bl ov1_02127300
_02122BD0:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	cmp r7, #0x20
	blo _02122BA4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_02122BE8
ov1_02122BE8: ; 0x02122BE8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r1, [r4, #0xd8]
	add r0, sp, #8
	mov r2, #0
	bl ov1_0212C670
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r0, [r4, #0xbac]
	add r1, sp, #0x18
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldmia r1, {r1, r2}
	bl ov1_0212EA1C
	ldr r0, [r4, #0xd8]
	mov r8, #0
	bl ov1_0212C6C0
	cmp r0, #0
	bls _02122C94
	add r7, sp, #0
	add r6, sp, #0x10
	arm_func_end ov1_02122BE8
_02122C40:
	ldr r0, [r4, #0xd8]
	mov r1, r8
	bl ov1_0212C6B0
	mov r2, r0
	ldr r1, [r4, #0xd8]
	mov r0, r7
	bl ov1_0212C690
	ldr r2, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0xbac]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	ldmia r6, {r1, r2}
	bl ov1_0212EA7C
	add r0, r8, #1
	mov r5, r0, lsl #0x10
	ldr r0, [r4, #0xd8]
	mov r8, r5, lsr #0x10
	bl ov1_0212C6C0
	cmp r0, r5, lsr #16
	bhi _02122C40
_02122C94:
	ldr r0, [r4, #0xbac]
	bl ov1_0212E940
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov1_02122CA4
ov1_02122CA4: ; 0x02122CA4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r6, [r0, #0x388]
	cmp r6, #0
	beq _02122CE0
	beq _02122CD4
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
	arm_func_end ov1_02122CA4
_02122CD4:
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x388]
_02122CE0:
	cmp r4, #7
	bhs _02122D24
_02122CE8:
	add r2, r5, r4, lsl #1
	ldrh r0, [r2, #0x84]
	add r3, r5, r4
	add r1, r5, r4, lsl #2
	strh r0, [r2, #0x82]
	ldrb r2, [r3, #0x93]
	add r0, r4, #1
	and r4, r0, #0xff
	strb r2, [r3, #0x92]
	ldr r0, [r1, #0x38c]
	cmp r4, #7
	str r0, [r1, #0x388]
	ldr r0, [r1, #0xa8]
	str r0, [r1, #0xa4]
	blo _02122CE8
_02122D24:
	mov r0, #0
	strh r0, [r5, #0x90]
	strb r0, [r5, #0x99]
	str r0, [r5, #0x3a4]
	str r0, [r5, #0xc0]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_02122D3C
ov1_02122D3C: ; 0x02122D3C
	cmp r1, #0
	beq _02122D58
	cmp r1, #1
	beq _02122D60
	cmp r1, #2
	beq _02122D68
	b _02122D70
	arm_func_end ov1_02122D3C
_02122D58:
	mov r0, #1
	bx lr
_02122D60:
	mov r0, #2
	bx lr
_02122D68:
	mov r0, #4
	bx lr
_02122D70:
	mov r0, #1
	bx lr

	arm_func_start ov1_02122D78
ov1_02122D78: ; 0x02122D78
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _02122D98
	bl sub_0201001C
	mov r1, #0
	bl sub_02010178
	b _02122DA4
	arm_func_end ov1_02122D78
_02122D98:
	bl sub_0201001C
	mov r1, #1
	bl sub_02010178
_02122DA4:
	bl sub_0201001C
	ldr r0, [r0, #0x20]
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02122DB4
ov1_02122DB4: ; 0x02122DB4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sl, r0
	add r0, sp, #8
	mov r1, #0
	mov r2, #8
	ldr r7, _02123060 ; =MAIN_BSS_020B26A0
	bl MI_CpuFill8
	add r0, sp, #4
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	ldr r0, [sl, #0x1c]
	mov r5, #0
	bl sub_02010B68
	cmp r0, #0
	bls _02122E4C
	add r4, sp, #8
	add r6, sp, #4
	arm_func_end ov1_02122DB4
_02122E00:
	ldr r0, [sl, #0x1c]
	mov r1, r5
	bl sub_02010B70
	mov r1, r0
	ldr r0, [sl, #0xc14]
	bl sub_020107A8
	ldrh r3, [r0]
	mov r2, r5, lsl #1
	add r1, r5, #1
	add r0, r7, r3
	add r0, r0, #0x7000
	ldrb r0, [r0, #0xcbc]
	strh r3, [r4, r2]
	strb r0, [r6, r5]
	ldr r0, [sl, #0x1c]
	and r5, r1, #0xff
	bl sub_02010B68
	cmp r5, r0
	blo _02122E00
_02122E4C:
	ldr r0, [sl, #0x1c]
	mov r1, #0
	str r1, [sp]
	bl sub_02010B68
	cmp r0, #0
	bls _02122F10
_02122E64:
	ldrb r0, [sl, #0x44]
	mov r8, #0
	cmp r0, #0
	bls _02122EEC
	ldr r0, [sp]
	mov fp, #0xff
	mov r6, r0, lsl #1
	mov r4, r8
	add r5, sp, #8
_02122E88:
	add r0, sl, r8, lsl #1
	ldrh r1, [r0, #0x46]
	ldr r0, [sl, #0xc14]
	ldrh sb, [r5, r6]
	bl sub_020107A8
	ldrh r0, [r0]
	cmp sb, r0
	bne _02122ED8
	add r2, r7, sb
	add r0, r2, #0x7000
	ldrb r1, [r0, #0xcbc]
	add r0, r2, #0xbc
	add r2, r0, #0x7c00
	add r0, r1, #1
	cmp r0, #0
	strleb r4, [r2]
	ble _02122ED8
	cmp r0, #0xff
	strgeb fp, [r2]
	strltb r0, [r2]
_02122ED8:
	ldrb r0, [sl, #0x44]
	add r1, r8, #1
	and r8, r1, #0xff
	cmp r8, r0
	blo _02122E88
_02122EEC:
	ldr r0, [sp]
	add r1, r0, #1
	ldr r0, [sl, #0x1c]
	and r1, r1, #0xff
	str r1, [sp]
	bl sub_02010B68
	ldr r1, [sp]
	cmp r1, r0
	blo _02122E64
_02122F10:
	mov r1, #0
	strb r1, [sl, #0x5c]
	strb r1, [sl, #0x5d]
	str r1, [sl, #0x68]
	add r0, sl, #0x5e
	mov r2, #8
	bl MI_CpuFill8
	ldr r0, [sl, #0x1c]
	mov r6, #0
	bl sub_02010B68
	cmp r0, #0
	bls _02122FDC
	add r5, sp, #8
	add r4, sp, #4
_02122F48:
	mov r0, r6, lsl #1
	ldrh r1, [r5, r0]
	ldrb r2, [r4, r6]
	add r0, r7, r1
	add r0, r0, #0x7000
	cmp r2, #0
	ldrb r0, [r0, #0xcbc]
	bne _02122F8C
	cmp r0, #0
	beq _02122F8C
	ldrb r0, [sl, #0x5c]
	add r0, sl, r0, lsl #1
	strh r1, [r0, #0x5e]
	ldrb r0, [sl, #0x5c]
	add r0, r0, #1
	strb r0, [sl, #0x5c]
	b _02122FC4
_02122F8C:
	cmp r2, #0xa
	bhs _02122FAC
	cmp r0, #0xa
	blo _02122FAC
	ldr r0, [sl, #0xc]
	orr r0, r0, #0x20
	str r0, [sl, #0xc]
	b _02122FC4
_02122FAC:
	cmp r2, #0x64
	bhs _02122FC4
	cmp r0, #0x64
	ldrhs r0, [sl, #0xc]
	orrhs r0, r0, #0x40
	strhs r0, [sl, #0xc]
_02122FC4:
	add r1, r6, #1
	ldr r0, [sl, #0x1c]
	and r6, r1, #0xff
	bl sub_02010B68
	cmp r6, r0
	blo _02122F48
_02122FDC:
	ldr r0, [sl, #0x1c]
	mov sb, #0
	bl sub_02010B68
	cmp r0, #0
	addls sp, sp, #0x10
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0xff
	mov r5, sb
	add r8, sp, #4
	add r6, sp, #8
_02123004:
	ldrb r1, [r8, sb]
	mov r0, sb, lsl #1
	ldrh r0, [r6, r0]
	cmp r1, #0
	bgt _02123028
	add r0, r7, r0
	add r0, r0, #0x7000
	strb r5, [r0, #0xcbc]
	b _02123040
_02123028:
	add r0, r7, r0
	cmp r1, #0xff
	addge r0, r0, #0x7000
	strgeb r4, [r0, #0xcbc]
	addlt r0, r0, #0x7000
	strltb r1, [r0, #0xcbc]
_02123040:
	add r1, sb, #1
	ldr r0, [sl, #0x1c]
	and sb, r1, #0xff
	bl sub_02010B68
	cmp sb, r0
	blo _02123004
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02123060: .word MAIN_BSS_020B26A0

	arm_func_start ov1_02123064
ov1_02123064: ; 0x02123064
	mov r0, #0
	bx lr
	arm_func_end ov1_02123064

	arm_func_start ov1_0212306C
ov1_0212306C: ; 0x0212306C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr ip, _02123214 ; =FUN_020039E8
	ldr r3, _02123218 ; =FUN_020039B8
	add r0, r4, #4
	mov r1, #0x60
	mov r2, #0x28
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x304
	ldr ip, _0212321C ; =FUN_02004160
	mov r1, #0x60
	ldr r3, _02123220 ; =FUN_02004114
	mov r2, r1
	add r0, r0, #0xc00
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x304
	add r0, r0, #0x3000
	bl sub_02005150
	add r0, r4, #0x350
	add r0, r0, #0x3000
	bl sub_02005150
	ldr r1, _02123224 ; =sub_02004D00
	add r0, r4, #0x39c
	str r1, [sp]
	add r0, r0, #0x3000
	mov r1, #0x60
	mov r2, #0x50
	ldr r3, _02123228 ; =sub_02004CB4
	bl __cxa_vec_ctor
	ldr r1, _02123214 ; =FUN_020039E8
	add r0, r4, #0xd4
	str r1, [sp]
	add r0, r0, #0x5400
	mov r1, #0x60
	mov r2, #0x28
	ldr r3, _02123218 ; =FUN_020039B8
	bl __cxa_vec_ctor
	add r0, r4, #0x3d4
	add r0, r0, #0x6000
	bl sub_02003B64
	mov r1, #0
	add r0, r4, #0x5400
	strh r1, [r0, #0xc0]
	mov r0, r4
	bl ov1_021232CC
	mov r0, r4
	mov r1, #0
	mov r2, r1
	bl ov1_02124548
	mov r0, r4
	mov r1, #0x20000
	mov r2, r1
	bl ov1_021243CC
	mov r1, #0
	add r2, r4, #0x5000
	str r1, [r2, #0x4c8]
	mov r3, #0x60
	add r0, r4, #0x5400
	strh r3, [r0, #0x9e]
	mov r0, #0x3800
	str r0, [r2, #0x4a8]
	add r0, r4, #0x6400
	strh r1, [r0, #0x14]
	add r0, r4, #0x6000
	ldr ip, [r0, #0x42c]
	ldr r3, [r0, #0x41c]
	ldr r2, [r0, #0x418]
	add r0, r4, #0x3000
	str r2, [r0, #0x330]
	str r1, [r0, #0x334]
	str r3, [r0, #0x338]
	str ip, [r0, #0x33c]
	mov r3, #0x1000
	str r3, [sp]
	str r1, [sp, #4]
	mov r0, #0x3e8
	str r0, [sp, #8]
	add r0, r4, #0x304
	add r0, r0, #0x3000
	mov r2, r1
	bl sub_020051F8
	add r0, r4, #0x6000
	ldr lr, [r0, #0x42c]
	ldr r3, [r0, #0x41c]
	mov r1, #0
	ldr r2, [r0, #0x418]
	add r0, r4, #0x3000
	str r2, [r0, #0x37c]
	str r1, [r0, #0x380]
	str r3, [r0, #0x384]
	add ip, r4, #0x350
	str lr, [r0, #0x388]
	mov r3, #0x1000
	str r3, [sp]
	mov r2, r1
	str r1, [sp, #4]
	mov lr, #0x3e8
	add r0, ip, #0x3000
	str lr, [sp, #8]
	bl sub_020051F8
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02123214: .word sub_020039E8
_02123218: .word sub_020039B8
_0212321C: .word sub_02004160
_02123220: .word sub_02004114
_02123224: .word sub_02004D00
_02123228: .word sub_02004CB4
	arm_func_end ov1_0212306C

	arm_func_start ov1_0212322C
ov1_0212322C: ; 0x0212322C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_021235E8
	add r0, r4, #0x3d4
	add r0, r0, #0x6000
	bl sub_02003BB0
	add r0, r4, #0xd4
	ldr r3, _021232C0 ; =FUN_020039E8
	add r0, r0, #0x5400
	mov r1, #0x60
	mov r2, #0x28
	bl __cxa_vec_cleanup
	add r0, r4, #0x39c
	add r0, r0, #0x3000
	mov r1, #0x60
	mov r2, #0x50
	ldr r3, _021232C4 ; =sub_02004D00
	bl __cxa_vec_cleanup
	add r0, r4, #0x350
	add r0, r0, #0x3000
	bl sub_020051C8
	add r0, r4, #0x304
	add r0, r0, #0x3000
	bl sub_020051C8
	add r0, r4, #0x304
	add r0, r0, #0xc00
	mov r1, #0x60
	mov r2, r1
	ldr r3, _021232C8 ; =FUN_02004160
	bl __cxa_vec_cleanup
	add r0, r4, #4
	mov r1, #0x60
	mov r2, #0x28
	ldr r3, _021232C0 ; =FUN_020039E8
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021232C0: .word sub_020039E8
_021232C4: .word sub_02004D00
_021232C8: .word sub_02004160
	arm_func_end ov1_0212322C

	arm_func_start ov1_021232CC
ov1_021232CC: ; 0x021232CC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x1f0
	ldr r1, _021235C0 ; =s_data_interface_i001_LZ_bin_overlay_1_0214087c
	mov r5, r0
	add r0, sp, #0x190
	bl OS_SPrintf
	ldr r1, _021235C4 ; =s_BLN_i001_00_NCBR_overlay_1_02140898
	add r0, sp, #0x130
	bl OS_SPrintf
	ldr r1, _021235C8 ; =s_BLN_i001_NCLR_overlay_1_021408ac
	add r0, sp, #0xd0
	bl OS_SPrintf
	ldr r1, _021235CC ; =s_BLN_i001_00_NCER_overlay_1_021408bc
	add r0, sp, #0x70
	bl OS_SPrintf
	ldr r1, _021235D0 ; =s_BLN_i001_00_cac_overlay_1_021408d0
	add r0, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _0212334C
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _021235D4 ; =s_BLN_overlay_1_021408e0
	add r2, sp, #0x190
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r4, r0
	arm_func_end ov1_021232CC
_0212334C:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02123370
	mov r2, #0
	add r1, sp, #0x130
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_02123370:
	add r2, r5, #0x6000
	str r0, [r2, #0x418]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	add r1, r5, #0x6000
	mov r2, r0
	str r0, [r1, #0x420]
	ldr r0, [r1, #0x418]
	mov r1, r2, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	add r0, r5, #0x6000
	ldr r0, [r0, #0x418]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _021233D0
	mov r2, #0
	add r1, sp, #0xd0
	mov r3, r2
	bl sub_02007AC0
_021233D0:
	add r1, r5, #0x6000
	str r0, [r1, #0x41c]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	add r1, r5, #0x6000
	mov r2, r0
	str r0, [r1, #0x424]
	ldr r0, [r1, #0x41c]
	mov r1, r2, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	add r0, r5, #0x6000
	ldr r0, [r0, #0x41c]
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02123438
	mov r2, #0
	add r1, sp, #0x70
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_02123438:
	add r1, r5, #0x6000
	str r0, [r1, #0x42c]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02123454
	bl sub_02008788
_02123454:
	add r1, r5, #0x6000
	mov r2, #0
	str r0, [r1, #0x430]
	add r1, sp, #0x10
	mov r3, r2
	bl sub_0200887C
	add r0, r5, #0x6000
	ldr r0, [r0, #0x430]
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	add r2, r5, #0x5400
	strh r0, [r2, #0xc2]
	add r0, r5, #0x6000
	ldrh r1, [r2, #0xc2]
	ldrh r2, [r2, #0xc0]
	ldr r0, [r0, #0x430]
	bl sub_02008990
	cmp r4, #0
	beq _021234B4
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
_021234B4:
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _021234D0
	ldr r1, _021235D8 ; =s_data_interface_i072_00_ntft_overlay_1_021408e4
	ldr r2, _021235DC ; =s_data_interface_i072_00_ntfp_overlay_1_02140900
	bl ov1_0213F9D0
_021234D0:
	add r1, r5, #0x6000
	str r0, [r1, #0x4fc]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _021234F4
	ldr r1, _021235E0 ; =s_data_interface_i072_01_ntft_overlay_1_0214091c
	ldr r2, _021235E4 ; =s_data_interface_i072_01_ntfp_overlay_1_02140938
	bl ov1_0213F9D0
_021234F4:
	add r6, r5, #0x6000
	str r0, [r6, #0x500]
	mov r2, r5
	mov r3, r5
	mov r4, r5
	mov r1, #0
	mov r0, #0x1f
	mov sb, #0x1e
	mov r7, #0x7c00
_02123518:
	strh r0, [r2, #0xc]
	ldr r8, [r6, #0x418]
	add ip, r4, #0x3000
	str r8, [r3, #0xf5c]
	ldr r8, [r6, #0x41c]
	add lr, r2, #0x5400
	str r8, [r3, #0xf60]
	str sb, [r3, #0xf18]
	ldr r8, [r6, #0x418]
	add r1, r1, #1
	str r8, [ip, #0x3e4]
	ldr r8, [r6, #0x41c]
	cmp r1, #0x60
	str r8, [ip, #0x3e8]
	str sb, [ip, #0x3b0]
	strh r7, [lr, #0xdc]
	add r2, r2, #0x28
	add r3, r3, #0x60
	add r4, r4, #0x50
	blt _02123518
	add r0, r5, #0x6000
	ldr r0, [r0, #0x418]
	mov r2, #0x60000
	ldrh r0, [r0, #0x34]
	mov r3, #0
	mov r4, r0, lsl #0xc
	mov r0, r4, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r4, lsr #20
	mov r0, r4, lsl #0xc
	bl _ll_div
	add r1, r5, #0x6000
	mov r2, #8
	str r0, [r1, #0x428]
	add r0, r5, #0x6300
	mov r3, #0x7c00
	strh r3, [r0, #0xdc]
	str r2, [r1, #0x3e8]
	sub r0, r2, #0x18
	str r0, [r1, #0x3d8]
	add sp, sp, #0x1f0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021235C0: .word s_data_interface_i001_LZ_bin_overlay_1_0214087c
_021235C4: .word s_BLN_i001_00_NCBR_overlay_1_02140898
_021235C8: .word s_BLN_i001_NCLR_overlay_1_021408ac
_021235CC: .word s_BLN_i001_00_NCER_overlay_1_021408bc
_021235D0: .word s_BLN_i001_00_cac_overlay_1_021408d0
_021235D4: .word s_BLN_overlay_1_021408e0
_021235D8: .word s_data_interface_i072_00_ntft_overlay_1_021408e4
_021235DC: .word s_data_interface_i072_00_ntfp_overlay_1_02140900
_021235E0: .word s_data_interface_i072_01_ntft_overlay_1_0214091c
_021235E4: .word s_data_interface_i072_01_ntfp_overlay_1_02140938

	arm_func_start ov1_021235E8
ov1_021235E8: ; 0x021235E8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl ov1_02124DEC
	add r0, r4, #0x6000
	ldr r5, [r0, #0x418]
	cmp r5, #0
	beq _02123624
	beq _02123618
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_021235E8
_02123618:
	add r0, r4, #0x6000
	mov r1, #0
	str r1, [r0, #0x418]
_02123624:
	add r0, r4, #0x6000
	ldr r5, [r0, #0x41c]
	cmp r5, #0
	beq _02123654
	beq _02123648
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
_02123648:
	add r0, r4, #0x6000
	mov r1, #0
	str r1, [r0, #0x41c]
_02123654:
	add r0, r4, #0x6000
	ldr r0, [r0, #0x42c]
	cmp r0, #0
	beq _02123680
	beq _02123674
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02123674:
	add r0, r4, #0x6000
	mov r1, #0
	str r1, [r0, #0x42c]
_02123680:
	add r0, r4, #0x6000
	ldr r5, [r0, #0x430]
	cmp r5, #0
	beq _021236B0
	beq _021236A4
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_021236A4:
	add r0, r4, #0x6000
	mov r1, #0
	str r1, [r0, #0x430]
_021236B0:
	add r0, r4, #0x6000
	ldr r5, [r0, #0x4fc]
	cmp r5, #0
	beq _021236E0
	beq _021236D4
	mov r0, r5
	bl ov1_0213F9E4
	mov r0, r5
	bl _ZdlPv
_021236D4:
	add r0, r4, #0x6000
	mov r1, #0
	str r1, [r0, #0x4fc]
_021236E0:
	add r0, r4, #0x6000
	ldr r5, [r0, #0x500]
	cmp r5, #0
	beq _02123710
	beq _02123704
	mov r0, r5
	bl ov1_0213F9E4
	mov r0, r5
	bl _ZdlPv
_02123704:
	add r0, r4, #0x6000
	mov r1, #0
	str r1, [r0, #0x500]
_02123710:
	add r0, r4, #0x6000
	ldr r0, [r0, #0x420]
	bl NNS_GfdFreeLnkTexVram
	add r0, r4, #0x6000
	ldr r0, [r0, #0x424]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212372C
ov1_0212372C: ; 0x0212372C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5]
	mov r4, r1
	cmp r2, #1
	bne _0212374C
	bl ov1_02123A9C
	b _02123760
	arm_func_end ov1_0212372C
_0212374C:
	cmp r2, #2
	bne _0212375C
	bl ov1_02123A9C
	b _02123760
_0212375C:
	bl ov1_02123774
_02123760:
	mov r0, r5
	mov r1, r4
	bl ov1_02123770
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02123770
ov1_02123770: ; 0x02123770
	bx lr
	arm_func_end ov1_02123770

	arm_func_start ov1_02123774
ov1_02123774: ; 0x02123774
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sl, r0
	add r0, sl, #0x304
	add r0, r0, #0x3000
	ldr r2, [r0]
	mov r4, r1
	ldr r2, [r2, #8]
	ldrh r8, [r4, #0x28]
	blx r2
	add r0, sl, #0x350
	add r0, r0, #0x3000
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, sl, #0x5400
	ldrh r0, [r0, #0x9c]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sl, #0x6000
	ldr r1, [r0, #0x48c]
	ldr r2, _02123A7C ; =0x001F00C0
	cmp r1, #0
	ldrne r0, [r0, #0x490]
	ldreq r1, [r0, #0x418]
	ldreq r0, [r0, #0x41c]
	add r4, r1, #8
	add r5, r0, #8
	add r0, sl, #0x5000
	ldr fp, [r0, #0x4b4]
	ldr r1, _02123A80 ; =0x040004A4
	mov r0, r4
	str r2, [r1]
	mov r1, #0
	bl NNS_G2dGetImageLocation
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0xc]
	mov r1, r1, lsl #0x1a
	orr r0, r1, r0, lsr #3
	orr r0, r0, #0x40000000
	orr r0, r0, r2, lsl #20
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x1c]
	orr r0, r0, r1, lsl #23
	orr r1, r0, #0x30000
	ldr r0, _02123A84 ; =0x040004A8
	orr r1, r1, r2, lsl #29
	str r1, [r0]
	ldr r4, [r4, #0x14]
	mov r0, r5
	mov r1, #0
	bl NNS_G2dGetImagePaletteLocation
	cmp r4, #2
	moveq r1, #1
	movne r1, #0
	rsb r1, r1, #4
	mov r1, r0, lsr r1
	ldr r3, _02123A88 ; =0x040004AC
	mov r0, #3
	str r1, [r3]
	str r0, [r3, #0x54]
	ldr r2, _02123A8C ; =0x00007FFF
	mov r0, sl
	mov r1, #0
	str r2, [r3, #-0x2c]
	bl ov1_02124AD4
	mov r6, #0
	add r0, sl, #0x5400
	ldr r5, _02123A90 ; =0x04000488
	mov r7, r6
	add r4, sl, #0x5000
	str r0, [sp, #4]
	arm_func_end ov1_02123774
_0212389C:
	mov r0, sl
	mov r1, r7
	bl ov1_02124AD4
	mov sb, r0
	cmp r6, #0
	beq _021238E8
	add r1, sl, sb, lsl #3
	add r2, r1, #0x5000
	add r1, r1, #0x19c
	add r1, r1, #0x5000
	str r1, [sp]
	ldr r0, [r6, #4]
	ldr r3, [r6]
	ldr r6, [r2, #0x1a0]
	ldr r1, [r2, #0x19c]
	add r0, r0, r6
	add r1, r3, r1
	bl FX_Atan2Idx
	b _02123908
_021238E8:
	add r2, sl, sb, lsl #3
	add r1, r2, #0x5000
	ldr r0, [r1, #0x1a0]
	add r2, r2, #0x19c
	add r2, r2, #0x5000
	ldr r1, [r1, #0x19c]
	str r2, [sp]
	bl FX_Atan2Idx
_02123908:
	add r0, r0, #1
	add r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	ldr r0, _02123A94 ; =FX_SinCosTable_
	mov r1, r3, lsl #1
	ldrsh r2, [r0, r1]
	add r3, r0, r3, lsl #1
	mov r1, #0x28
	ldr r0, [r4, #0x4a8]
	mla r1, sb, r1, sl
	ldrsh r3, [r3, #2]
	smull sb, r2, r0, r2
	smull r3, ip, r0, r3
	mov r0, sb, lsr #0xc
	orr r0, r0, r2, lsl #20
	mov r2, fp, lsl #8
	mov r2, r2, asr #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsr #0xc
	mov r2, r2, lsr #0x10
	orr r3, r3, ip, lsl #20
	ldr ip, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	mov lr, r2, lsl #0x10
	orr r2, lr, #0x200
	str r2, [r5]
	add r2, ip, r3
	sub r3, ip, r3
	str ip, [sp, #8]
	add ip, r1, r0
	sub r0, r1, r0
	str r1, [sp, #0xc]
	mov r1, ip, asr #0xc
	mov r1, r1, lsl r8
	mov r2, r2, asr #0xc
	ldr sb, [r4, #0x4bc]
	mov r2, r2, lsl r8
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	add sb, sb, r7
	mov r2, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0xc
	mov sb, sb, lsl #0x10
	mov r2, r2, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl r8
	mov sb, sb, asr #0x10
	mov r3, r3, asr #0xc
	mov sb, sb, lsl #0x10
	mov r3, r3, lsl r8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r3, lsl #0x10
	mov r0, r0, lsl #0x10
	mov r3, r3, asr #0x10
	mov r0, r0, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r1, r1, r2, lsr #16
	str r1, [r5, #4]
	mov sb, sb, lsr #0x10
	str sb, [r5, #4]
	str lr, [r5]
	add r1, r7, #1
	mov r3, r3, lsl #0x10
	mov r0, r0, lsl #0x10
	ldr r2, [r4, #0x4bc]
	orr r0, r0, r3, lsr #16
	str r0, [r5, #4]
	add r0, r2, r7
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r5, #4]
	ldr r0, [r4, #0x4b8]
	mov r1, r1, lsl #0x10
	add fp, fp, r0
	ldr r0, [sp, #4]
	ldr r6, [sp]
	ldrh r0, [r0, #0x9c]
	mov r7, r1, lsr #0x10
	cmp r0, r1, lsr #16
	bhs _0212389C
	ldr r0, _02123A98 ; =0x04000504
	mov r1, #0
	str r1, [r0]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02123A7C: .word 0x001F00C0
_02123A80: .word 0x040004A4
_02123A84: .word 0x040004A8
_02123A88: .word 0x040004AC
_02123A8C: .word 0x00007FFF
_02123A90: .word 0x04000488
_02123A94: .word FX_SinCosTable_
_02123A98: .word 0x04000504

	arm_func_start ov1_02123A9C
ov1_02123A9C: ; 0x02123A9C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	ldrh r7, [r1, #0x28]
	ldr sb, _0212400C ; =0x040004A4
	mov r8, r0
	ldr r1, _02124010 ; =0x001F00C0
	add lr, r8, #0x6000
	str r1, [sb]
	ldr r2, [lr, #0x500]
	ldr r1, _02124014 ; =0x58900000
	ldr r2, [r2, #8]
	add sl, r8, #0x5000
	orr r1, r1, r2, lsr #3
	str r1, [sb, #4]
	ldr r1, [lr, #0x500]
	mov r3, #1
	ldr r1, [r1, #0xc]
	rsb r2, r3, #0x8000
	mov r1, r1, lsr #4
	str r1, [sb, #8]
	ldrb r5, [sl, #0x4d1]
	add r1, r8, #0x3000
	str r1, [sp, #0x10]
	str r3, [sb, #0x5c]
	str r2, [sb, #-0x24]
	ldr r3, [r1, #0x31c]
	ldr r2, [r1, #0x320]
	sub r6, sb, #0x1c
	mov r1, #0
	str r1, [r6]
	ldr fp, [sl, #0x4ac]
	ldr r4, [sl, #0x4bc]
	sub ip, r3, fp
	sub fp, r2, fp
	mov fp, fp, asr #0xc
	mov fp, fp, lsl r7
	mov ip, ip, asr #0xc
	mov ip, ip, lsl r7
	mov fp, fp, lsl #0x10
	mov fp, fp, asr #0x10
	add r4, r4, #0x60
	mov ip, ip, lsl #0x10
	mov fp, fp, lsl #0x10
	mov r4, r4, lsl #0x10
	mov ip, ip, asr #0x10
	mov fp, fp, lsr #0x10
	mov r4, r4, asr #0x10
	mov r4, r4, lsl #0x10
	mov ip, ip, lsl #0x10
	mov fp, fp, lsl #0x10
	orr ip, fp, ip, lsr #16
	sub fp, sb, #0x18
	mov r4, r4, lsr #0x10
	str ip, [fp]
	str r4, [fp]
	mov r4, #0x100
	str r4, [r6]
	ldr fp, [sl, #0x4ac]
	sub r4, sb, #0x10
	add ip, r3, fp
	sub fp, r2, fp
	mov fp, fp, asr #0xc
	mov fp, fp, lsl r7
	mov ip, ip, asr #0xc
	mov ip, ip, lsl r7
	mov fp, fp, lsl #0x10
	mov fp, fp, asr #0x10
	mov ip, ip, lsl #0x10
	mov fp, fp, lsl #0x10
	mov ip, ip, asr #0x10
	mov fp, fp, lsr #0x10
	mov ip, ip, lsl #0x10
	mov fp, fp, lsl #0x10
	orr fp, fp, ip, lsr #16
	str fp, [r4]
	mov fp, #0x100
	sub fp, fp, #0xff000000
	str fp, [sp, #8]
	str fp, [r6]
	ldr fp, [sl, #0x4ac]
	str r3, [sp, #0x28]
	add ip, r3, fp
	add fp, r2, fp
	mov fp, fp, asr #0xc
	mov fp, fp, lsl r7
	mov ip, ip, asr #0xc
	mov ip, ip, lsl r7
	mov fp, fp, lsl #0x10
	mov fp, fp, asr #0x10
	mov ip, ip, lsl #0x10
	mov fp, fp, lsl #0x10
	mov ip, ip, asr #0x10
	mov fp, fp, lsr #0x10
	mov ip, ip, lsl #0x10
	mov fp, fp, lsl #0x10
	orr fp, fp, ip, lsr #16
	str r2, [sp, #0x2c]
	str fp, [r4]
	mov fp, #0x1000000
	str fp, [r6]
	ldr fp, [sl, #0x4ac]
	add r2, r2, fp
	mov r2, r2, asr #0xc
	sub r3, r3, fp
	mov r2, r2, lsl r7
	mov r3, r3, asr #0xc
	mov r3, r3, lsl r7
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	mov r3, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, asr #0x10
	mov r2, r2, lsr #0x10
	mov r3, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	orr r2, r2, r3, lsr #16
	str r2, [r4]
	ldr r2, [sp, #0x10]
	ldr r3, [r2, #0x368]
	ldr r2, [r2, #0x36c]
	str r3, [sp, #0x20]
	str r1, [r6]
	ldr fp, [sl, #0x4ac]
	str r2, [sp, #0x24]
	sub ip, r3, fp
	sub fp, r2, fp
	mov fp, fp, asr #0xc
	mov fp, fp, lsl r7
	mov ip, ip, asr #0xc
	mov ip, ip, lsl r7
	mov fp, fp, lsl #0x10
	mov fp, fp, asr #0x10
	mov ip, ip, lsl #0x10
	mov fp, fp, lsl #0x10
	mov ip, ip, asr #0x10
	mov fp, fp, lsr #0x10
	mov ip, ip, lsl #0x10
	mov fp, fp, lsl #0x10
	orr fp, fp, ip, lsr #16
	str fp, [r4]
	mov fp, #0x100
	str fp, [r6]
	ldr fp, [sl, #0x4ac]
	add ip, r3, fp
	sub fp, r2, fp
	mov fp, fp, asr #0xc
	mov fp, fp, lsl r7
	mov ip, ip, asr #0xc
	mov ip, ip, lsl r7
	mov fp, fp, lsl #0x10
	mov fp, fp, asr #0x10
	mov ip, ip, lsl #0x10
	mov fp, fp, lsl #0x10
	mov ip, ip, asr #0x10
	mov fp, fp, lsr #0x10
	mov ip, ip, lsl #0x10
	mov fp, fp, lsl #0x10
	orr fp, fp, ip, lsr #16
	str fp, [r4]
	ldr fp, [sp, #8]
	str fp, [r6]
	ldr fp, [sl, #0x4ac]
	add ip, r3, fp
	add fp, r2, fp
	mov fp, fp, asr #0xc
	mov fp, fp, lsl r7
	mov ip, ip, asr #0xc
	mov ip, ip, lsl r7
	mov fp, fp, lsl #0x10
	mov fp, fp, asr #0x10
	mov ip, ip, lsl #0x10
	mov fp, fp, lsl #0x10
	mov ip, ip, asr #0x10
	mov fp, fp, lsr #0x10
	mov ip, ip, lsl #0x10
	mov fp, fp, lsl #0x10
	orr fp, fp, ip, lsr #16
	str fp, [r4]
	mov fp, #0x1000000
	str fp, [r6]
	ldr r6, [sl, #0x4ac]
	add r2, r2, r6
	mov r2, r2, asr #0xc
	sub r3, r3, r6
	mov r2, r2, lsl r7
	mov r3, r3, asr #0xc
	mov r6, r3, lsl r7
	mov r2, r2, lsl #0x10
	mov r3, r2, asr #0x10
	mov r2, r6, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r2, r2, asr #0x10
	mov r3, r3, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	orr r2, r3, r2, lsr #16
	str r2, [r4]
	str r1, [sb, #0x60]
	add r2, r8, #0x5400
	ldrh r2, [r2, #0x9c]
	cmp r2, #0
	addeq sp, sp, #0x30
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [lr, #0x4fc]
	ldr r3, _02124018 ; =0x41230000
	ldr r4, [r2, #8]
	ldr r2, [sl, #0x4b4]
	str r2, [sp, #4]
	orr r2, r3, r4, lsr #3
	str r2, [sb, #4]
	ldr r3, [lr, #0x4fc]
	mov r2, #3
	ldr r3, [r3, #0xc]
	mov r3, r3, lsr #4
	str r3, [sb, #8]
	str r2, [sb, #0x5c]
	bl ov1_02124AD4
	mov fp, #0
	add r0, r8, #0x5400
	ldr r4, _0212401C ; =0x04000480
	mov r6, fp
	mov sb, sl
	str r0, [sp, #0x14]
	arm_func_end ov1_02123A9C
_02123E18:
	cmp r5, #0xb
	movhs r5, #0
	addlo r0, r5, #1
	andlo r5, r0, #0xff
	ldr r0, _02124020 ; =DAT_overlay_1_0213fb94
	mov r1, r5, lsl #1
	ldrh r2, [r0, r1]
	mov r0, r8
	mov r1, r6
	str r2, [r4]
	bl ov1_02124AD4
	mov sl, r0
	add r1, r8, sl, lsl #3
	cmp fp, #0
	add r0, r1, #0x19c
	beq _02123E80
	add r0, r0, #0x5000
	str r0, [sp]
	add r0, r1, #0x5000
	ldr r3, [r0, #0x1a0]
	ldr r1, [r0, #0x19c]
	ldmia fp, {r2, ip}
	add r0, ip, r3
	add r1, r2, r1
	bl FX_Atan2Idx
	b _02123E98
_02123E80:
	add r0, r0, #0x5000
	add r1, r1, #0x5000
	str r0, [sp]
	ldr r0, [r1, #0x1a0]
	ldr r1, [r1, #0x19c]
	bl FX_Atan2Idx
_02123E98:
	add r0, r0, #1
	add r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, #0x28
	mla r2, sl, r0, r8
	mov r0, r1, asr #4
	mov r1, r0, lsl #1
	ldr r0, [r2, #0x20]
	ldr ip, [r2, #0x1c]
	ldr r2, _02124024 ; =FX_SinCosTable_
	str r0, [sp, #0xc]
	str r0, [sp, #0x1c]
	mov r0, r1, lsl #1
	add r1, r2, r1, lsl #1
	ldrsh r2, [r1, #2]
	ldr r1, _02124024 ; =FX_SinCosTable_
	ldr lr, [sb, #0x4a8]
	ldrsh r1, [r1, r0]
	smull r3, sl, lr, r2
	smull r2, r1, lr, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [sp, #4]
	ldr r0, [sb, #0x4bc]
	mov r1, r1, lsl #8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r3, r3, lsr #0xc
	mov r1, r1, lsl #0x10
	orr r3, r3, sl, lsl #20
	orr sl, r1, #0x200
	str sl, [r4, #8]
	add sl, ip, r3
	sub r3, ip, r3
	mov r3, r3, asr #0xc
	mov r3, r3, lsl r7
	mov sl, sl, asr #0xc
	mov sl, sl, lsl r7
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	mov sl, sl, lsl #0x10
	mov lr, r3, lsl #0x10
	add r0, r0, r6
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	ldr r3, [sp, #0xc]
	mov sl, sl, asr #0x10
	str ip, [sp, #0x18]
	mov ip, sl, lsl #0x10
	add sl, r3, r2
	sub r2, r3, r2
	mov r3, sl, asr #0xc
	mov r3, r3, lsl r7
	mov r3, r3, lsl #0x10
	mov r2, r2, asr #0xc
	mov r3, r3, asr #0x10
	mov r2, r2, lsl r7
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r2, r2, asr #0x10
	orr r3, r3, ip, lsr #16
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	str r3, [r4, #0xc]
	str r0, [r4, #0xc]
	str r1, [r4, #8]
	orr r2, r2, lr, lsr #16
	str r2, [r4, #0xc]
	str r0, [r4, #0xc]
	add r1, r6, #1
	mov r1, r1, lsl #0x10
	ldr r2, [sb, #0x4b8]
	ldr r0, [sp, #4]
	ldr fp, [sp]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r6, r1, lsr #0x10
	ldrh r0, [r0, #0x9c]
	cmp r0, r1, lsr #16
	bhs _02123E18
	ldr r0, _02124028 ; =0x04000504
	mov r1, #0
	str r1, [r0]
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212400C: .word 0x040004A4
_02124010: .word 0x001F00C0
_02124014: .word 0x58900000
_02124018: .word 0x41230000
_0212401C: .word 0x04000480
_02124020: .word DAT_overlay_1_0213fb94
_02124024: .word FX_SinCosTable_
_02124028: .word 0x04000504

	arm_func_start ov1_0212402C
ov1_0212402C: ; 0x0212402C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r0
	add r2, r4, #0x6000
	ldr r0, [r2, #0x48c]
	cmp r0, #0
	add r0, r4, #0x5400
	beq _02124070
	ldrh r1, [r0, #0xc4]
	ldr r0, [r2, #0x4a0]
	bl sub_02008A38
	add r1, r4, #0x5400
	add r0, r4, #0x6000
	ldrh r1, [r1, #0xc4]
	ldr r0, [r0, #0x4a0]
	bl sub_02008828
	b _02124090
	arm_func_end ov1_0212402C
_02124070:
	ldrh r1, [r0, #0xc2]
	ldr r0, [r2, #0x430]
	bl sub_02008A38
	add r1, r4, #0x5400
	add r0, r4, #0x6000
	ldrh r1, [r1, #0xc2]
	ldr r0, [r0, #0x430]
	bl sub_02008828
_02124090:
	add r1, r4, #0x3300
	strh r0, [r1, #0x2e]
	strh r0, [r1, #0x7a]
	add r0, r4, #0x5400
	ldrh r3, [r0, #0xa0]
	mov r0, #0x28
	add r1, r4, #0x3000
	mla r2, r3, r0, r4
	ldr r0, [r2, #0x1c]
	ldr r2, [r2, #0x20]
	str r0, [sp]
	str r0, [r1, #0x31c]
	str r2, [r1, #0x320]
	ldr r0, [r4]
	str r2, [sp, #4]
	cmp r0, #1
	bne _02124194
	add r1, r4, #0x5000
	ldrb r2, [r1, #0x4d0]
	add r0, r4, #0x4d0
	add r3, r0, #0x5000
	add r2, r2, #1
	and r0, r2, #0xff
	strb r2, [r1, #0x4d0]
	cmp r0, #7
	ldrhsb r0, [r3]
	add r2, r4, #0x5000
	ldr ip, _021242C4 ; =DAT_overlay_1_0213fbac
	subhs r0, r0, #7
	strcsb r0, [r3]
	ldrb r0, [r2, #0x4d0]
	add r1, r4, #0xd1
	ldr r5, [ip, r0, lsl #2]
	mov r0, #0xa000
	mov r3, r5, asr #0x1f
	mov r3, r3, lsl #0xc
	mov lr, r5, lsl #0xc
	orr r3, r3, r5, lsr #20
	mov r5, lr, lsr #0xc
	orr r5, r5, r3, lsl #20
	str r5, [r2, #0x4a8]
	ldrb r5, [r2, #0x4d0]
	add r3, r1, #0x5400
	ldr r1, [ip, r5, lsl #2]
	umull ip, r5, r1, r0
	mov r1, r1, asr #0x1f
	mla r5, r1, r0, r5
	mov r0, ip, lsr #0xc
	orr r0, r0, r5, lsl #20
	str r0, [r2, #0x4ac]
	ldrb r0, [r2, #0x4d1]
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r2, #0x4d1]
	cmp r0, #0xc
	ldrhsb r0, [r3]
	ldr r1, _021242C8 ; =DAT_overlay_1_0213fb94
	subhs r0, r0, #0xc
	strcsb r0, [r3]
	add r0, r4, #0x5000
	ldrb r2, [r0, #0x4d1]
	add r0, r4, #0x5400
	mov r2, r2, lsl #1
	ldrh r1, [r1, r2]
	strh r1, [r0, #0xb0]
_02124194:
	ldr r0, [r4]
	cmp r0, #2
	bne _02124260
	add r1, r4, #0x5000
	ldrb r2, [r1, #0x4d0]
	add r0, r4, #0x4d0
	add r3, r0, #0x5000
	add r2, r2, #1
	and r0, r2, #0xff
	strb r2, [r1, #0x4d0]
	cmp r0, #7
	ldrhsb r0, [r3]
	add r2, r4, #0x5000
	ldr lr, _021242CC ; =DAT_overlay_1_0213fbc8
	subhs r0, r0, #7
	strcsb r0, [r3]
	ldrb r0, [r2, #0x4d0]
	add r1, r4, #0xd1
	ldr ip, [lr, r0, lsl #2]
	mov r0, #0xa000
	mov r3, ip, asr #0x1f
	mov r3, r3, lsl #0xc
	mov r5, ip, lsl #0xc
	orr r3, r3, ip, lsr #20
	mov r5, r5, lsr #0xc
	orr r5, r5, r3, lsl #20
	str r5, [r2, #0x4a8]
	ldrb ip, [r2, #0x4d0]
	add r3, r1, #0x5400
	ldr r1, [lr, ip, lsl #2]
	umull lr, ip, r1, r0
	mov r1, r1, asr #0x1f
	mla ip, r1, r0, ip
	mov r0, lr, lsr #0xc
	orr r0, r0, ip, lsl #20
	str r0, [r2, #0x4ac]
	ldrb r0, [r2, #0x4d1]
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r2, #0x4d1]
	cmp r0, #0xc
	ldrhsb r0, [r3]
	ldr r1, _021242C8 ; =DAT_overlay_1_0213fb94
	subhs r0, r0, #0xc
	strcsb r0, [r3]
	add r0, r4, #0x5000
	ldrb r2, [r0, #0x4d1]
	add r0, r4, #0x5400
	mov r2, r2, lsl #1
	ldrh r1, [r1, r2]
	strh r1, [r0, #0xb0]
_02124260:
	ldr r0, [r4]
	cmp r0, #4
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
	add r1, r4, #0x5000
	ldr r0, [r1, #0x4b4]
	mov r2, #0x20000
	add r3, r0, #0x3000
	rsb r2, r2, #0
	add r0, r4, #0xb4
	str r3, [r1, #0x4b4]
	cmp r3, r2
	add r1, r0, #0x5400
	bgt _021242AC
	ldr r0, [r1]
	add sp, sp, #8
	add r0, r0, #0x20000
	str r0, [r1]
	ldmia sp!, {r3, r4, r5, pc}
_021242AC:
	cmp r3, #0x20000
	ldrge r0, [r1]
	subge r0, r0, #0x20000
	strge r0, [r1]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021242C4: .word DAT_overlay_1_0213fbac
_021242C8: .word DAT_overlay_1_0213fb94
_021242CC: .word DAT_overlay_1_0213fbc8

	arm_func_start ov1_021242D0
ov1_021242D0: ; 0x021242D0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r6, r0
	add r3, r6, #0x5400
	ldrh r5, [r3, #0xa2]
	add r7, r6, #4
	mov r4, #0x28
	mla r7, r5, r4, r7
	mov r5, r1
	mov r4, r2
	str r5, [r7, #0x20]
	str r4, [r7, #0x24]
	ldrh r2, [r3, #0xa2]
	ldr lr, [r7, #0x18]
	ldr r1, [r7, #0x20]
	add r8, r6, r2, lsl #3
	ldr ip, [r7, #0x1c]
	sub sb, r1, lr
	add r7, r8, #0x5000
	mov r2, r4
	str sb, [r7, #0x19c]
	ldrh r7, [r3, #0xa2]
	sub r8, r2, ip
	str r1, [sp]
	add r7, r6, r7, lsl #3
	add r7, r7, #0x5000
	str r8, [r7, #0x1a0]
	ldrh r7, [r3, #0xa2]
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	add r1, r7, #1
	strh r1, [r3, #0xa2]
	ldrh r1, [r3, #0xa2]
	str r2, [sp, #4]
	bl ov1_02124AB8
	add r1, r6, #0x5400
	strh r0, [r1, #0xa2]
	ldrh r2, [r1, #0xa2]
	add r3, r6, #4
	mov r0, #0x28
	mla r0, r2, r0, r3
	str r5, [r0, #0x18]
	str r4, [r0, #0x1c]
	ldrh r0, [r1, #0x9c]
	add r0, r0, #1
	strh r0, [r1, #0x9c]
	ldrh r2, [r1, #0x9c]
	ldrh r0, [r1, #0x9e]
	cmp r2, r0
	addls sp, sp, #0x10
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrh r2, [r1, #0xa0]
	mov r0, r6
	add r2, r2, #1
	strh r2, [r1, #0xa0]
	ldrh r1, [r1, #0xa0]
	bl ov1_02124AB8
	add r1, r6, #0x5400
	strh r0, [r1, #0xa0]
	ldrh r0, [r1, #0x9e]
	strh r0, [r1, #0x9c]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov1_021242D0

	arm_func_start ov1_021243CC
ov1_021243CC: ; 0x021243CC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	add r0, sl, #0x5400
	ldrh r3, [r0, #0xa2]
	add r4, sl, #4
	mov r0, #0x28
	mla r5, r3, r0, r4
	ldr r0, [r5, #0x18]
	str r1, [sp]
	sub r4, r1, r0
	ldr r0, [r5, #0x1c]
	str r2, [sp, #4]
	sub sb, r2, r0
	mov r0, r4
	mov r1, sb
	mov r6, #0
	bl sub_02007254
	mov r8, r0
	mov r0, r4, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r7, r8, asr #0x1f
	orr r1, r1, r4, lsr #20
	mov r0, r4, lsl #0xc
	mov r2, r8
	mov r3, r7
	bl _ll_div
	mov r5, r0
	mov r0, sb, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, sb, lsr #20
	mov r0, sb, lsl #0xc
	mov r2, r8
	mov r3, r7
	bl _ll_div
	mov r4, r0
	cmp r8, #0x8000
	blt _02124528
	mov r1, r7, lsl #0xc
	orr r1, r1, r8, lsr #20
	mov r0, r8, lsl #0xc
	mov r2, #0x8000
	mov r3, r6
	bl _ll_div
	mov fp, r0, asr #0xc
	cmp fp, #0
	mov r7, r6
	ble _02124528
	mov r1, r4, asr #0x1f
	mov r2, r1, lsl #0xf
	mov r0, r5, asr #0x1f
	mov r0, r0, lsl #0xf
	mov r1, r5, lsl #0xf
	mov sb, r1, lsr #0xc
	orr r0, r0, r5, lsr #17
	mov r3, r4, lsl #0xf
	orr sb, sb, r0, lsl #20
	add r0, sl, #0xc8
	add r5, r0, #0x5400
	add r0, sl, #0x5400
	orr r2, r2, r4, lsr #17
	mov r8, r3, lsr #0xc
	add r1, sl, #0xcc
	orr r8, r8, r2, lsl #20
	add r4, r1, #0x5400
	str r0, [sp, #8]
	arm_func_end ov1_021243CC
_021244D4:
	ldr r0, [sp, #8]
	mov r1, #0x28
	ldrh r2, [r0, #0xa2]
	mov r0, sl
	mla r3, r2, r1, sl
	ldr r1, [r3, #0x1c]
	ldr r2, [r3, #0x20]
	add r1, r1, sb
	add r2, r2, r8
	bl ov1_021242D0
	ldr r1, [r5]
	add r0, r6, #1
	add r1, r1, #1
	str r1, [r5]
	add r7, r7, #1
	ldr r1, [r4]
	and r6, r0, #0xff
	add r0, r1, #1
	str r0, [r4]
	cmp r7, fp
	blt _021244D4
_02124528:
	ldr r0, [sp]
	add r2, sl, #0x3000
	str r0, [r2, #0x368]
	ldr r1, [sp, #4]
	mov r0, r6
	str r1, [r2, #0x36c]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_02124548
ov1_02124548: ; 0x02124548
	add r3, r0, #0x5400
	mov ip, #0
	strh ip, [r3, #0x9c]
	strh ip, [r3, #0xa0]
	strh ip, [r3, #0xa2]
	strh ip, [r3, #0xa4]
	add r3, r0, #0x5000
	str ip, [r3, #0x4cc]
	add r3, r0, #0x3000
	str r1, [r3, #0x31c]
	str r2, [r3, #0x320]
	str r1, [r3, #0x368]
	str r2, [r3, #0x36c]
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	bx lr
	arm_func_end ov1_02124548

	arm_func_start ov1_02124588
ov1_02124588: ; 0x02124588
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	add r5, sl, #0x5400
	ldrh r0, [r5, #0x9c]
	mov sb, #0
	sub r0, r0, #1
	cmp r0, #0
	ble _0212463C
	mov fp, sp
	add r7, sp, #0x3c
	mov r6, sb
	mov r4, #0x28
	arm_func_end ov1_02124588
_021245C0:
	ldrh r0, [r5, #0xa0]
	add r0, sb, r0
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	cmp r8, #0x60
	subhs r0, r8, #0x60
	movhs r0, r0, lsl #0x10
	movhs r8, r0, lsr #0x10
	mla ip, r8, r4, sl
	ldmia r7, {r0, r1, r2, r3}
	stmia fp, {r0, r1, r2, r3}
	str r6, [sp, #0x10]
	add r0, ip, #0x1c
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006610
	cmp r0, #0
	beq _02124620
	add r0, sl, #0x5400
	strh r8, [r0, #0xa4]
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_02124620:
	ldrh r1, [r5, #0x9c]
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	sub r1, r1, #1
	cmp r1, r0, lsr #16
	mov sb, r0, lsr #0x10
	bgt _021245C0
_0212463C:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start ov1_02124650
ov1_02124650: ; 0x02124650
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	mov sl, r0
	add r0, sl, #0x3ec
	mov r3, #0
	mov r5, r2
	str r1, [sp, #0x18]
	str r3, [sp, #8]
	add r0, r0, #0x6000
	sub r4, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, [sp, #0x18]
	add r1, sp, #0x1c
	str r5, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldmia r4, {r2, r3}
	ldmia r1, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r4, sl, #0x6400
	ldrh r0, [r4, #0x14]
	mov r6, #0
	ldr r1, [sp, #0x18]
	sub r2, r6, #0x80000
	mov r7, r6
	mov r8, r6
	str r1, [sp, #0x24]
	str r5, [sp, #0x28]
	str r2, [sp, #0x2c]
	str r5, [sp, #0x30]
	cmp r0, #0
	bls _0212474C
	mov r5, r6
	add fp, sp, #0x24
	arm_func_end ov1_02124650
_021246E8:
	mov r0, #0x28
	mla sb, r8, r0, sl
	add r0, sb, #0xec
	add r0, r0, #0x5400
	mov ip, sp
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	str r5, [sp, #0x10]
	ldmia fp, {r0, r1, r2, r3}
	str r5, [sp, #0x14]
	bl sub_02006350
	cmp r0, #0
	beq _02124734
	add r0, r7, #1
	mov r1, r0, lsl #0x10
	ldr r0, _02124820 ; =0x000003FF
	add r2, sb, #0x5400
	strh r0, [r2, #0xdc]
	mov r7, r1, lsr #0x10
_02124734:
	ldrh r0, [r4, #0x14]
	add r1, r8, #1
	mov r1, r1, lsl #0x10
	cmp r0, r1, lsr #16
	mov r8, r1, lsr #0x10
	bhi _021246E8
_0212474C:
	cmp r7, #0
	addeq sp, sp, #0x34
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r2, #0x80000
	ldr r1, [sp, #0x18]
	rsb r2, r2, #0
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	cmp r0, #0
	mov r8, #0
	bls _021247EC
	add r4, sl, #0x6400
	mov r5, r8
	add fp, sp, #0x24
_02124788:
	mov r0, #0x28
	mla sb, r8, r0, sl
	add r0, sb, #0xec
	add r0, r0, #0x5400
	mov ip, sp
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	str r5, [sp, #0x10]
	ldmia fp, {r0, r1, r2, r3}
	str r5, [sp, #0x14]
	bl sub_02006350
	cmp r0, #0
	beq _021247D4
	add r0, r6, #1
	mov r1, r0, lsl #0x10
	ldr r0, _02124824 ; =0x00007FE0
	add r2, sb, #0x5400
	strh r0, [r2, #0xdc]
	mov r6, r1, lsr #0x10
_021247D4:
	ldrh r1, [r4, #0x14]
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	mov r8, r0, lsr #0x10
	bhi _02124788
_021247EC:
	cmp r6, #0
	addeq sp, sp, #0x34
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	tst r6, #1
	beq _02124814
	tst r7, #1
	addne sp, sp, #0x34
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02124814:
	mov r0, #0
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02124820: .word 0x000003FF
_02124824: .word 0x00007FE0

	arm_func_start ov1_02124828
ov1_02124828: ; 0x02124828
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, r0
	add r2, r4, #0x5400
	ldrh r0, [r2, #0xa0]
	cmp r1, r0
	bne _02124884
	ldrh r3, [r2, #0xa2]
	mov r0, #0x28
	mov r1, #0
	mla r0, r3, r0, r4
	ldr r3, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	str r3, [sp]
	strh r1, [r2, #0x9c]
	strh r1, [r2, #0xa0]
	strh r1, [r2, #0xa2]
	strh r1, [r2, #0xa4]
	str r3, [r4, #0x1c]
	str r0, [sp, #4]
	add sp, sp, #8
	str r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_02124828
_02124884:
	cmp r1, #0
	subne r0, r1, #1
	moveq r0, #0x5f
	add r5, r4, #0x5400
	strh r0, [r2, #0xa2]
	ldrh r0, [r5, #0xa0]
	mov r1, #0
	strh r1, [r5, #0x9c]
	add r1, r4, #0x9c
	add r6, r1, #0x5400
_021248AC:
	ldrh r1, [r5, #0xa2]
	cmp r0, r1
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r0, #1
	mov r1, r0, lsl #0x10
	mov r0, r4
	mov r1, r1, lsr #0x10
	bl ov1_02124AB8
	ldrh r1, [r6]
	add r1, r1, #1
	strh r1, [r6]
	b _021248AC
_021248E0:
	.byte 0x08, 0xD0, 0x8D, 0xE2, 0x70, 0x80, 0xBD, 0xE8

	arm_func_start ov1_021248E8
ov1_021248E8: ; 0x021248E8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov r4, r0
	add r6, r4, #0x6400
	mov r0, #0
	mov ip, r1
	strh r0, [r6, #0x14]
	add r0, r4, #0x14
	add r1, r4, #0xd4
	mov fp, #0x28
	mov sl, r2
	add r7, r0, #0x6400
	add sb, r1, #0x5400
	mov r8, #0x7c00
	mov r5, fp
	arm_func_end ov1_021248E8
_02124924:
	ldrh r2, [r6, #0x14]
	mla r0, ip, fp, r4
	mov r1, #0x28
	mla r1, r2, r1, sb
	ldr r3, [r0, #8]
	add r2, r0, #0x1c
	str r3, [r1, #4]
	ldrh r3, [r0, #0xc]
	add lr, r1, #0x18
	cmp ip, sl
	strh r3, [r1, #8]
	ldr r3, [r0, #0x10]
	str r3, [r1, #0xc]
	ldr r3, [r0, #0x14]
	str r3, [r1, #0x10]
	ldr r0, [r0, #0x18]
	str r0, [r1, #0x14]
	ldmia r2, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldrh r1, [r6, #0x14]
	mla r0, r1, r5, r4
	add r0, r0, #0x5400
	strh r8, [r0, #0xdc]
	beq _021249AC
	ldrh r2, [r7]
	add r0, ip, #1
	mov r1, r0, lsl #0x10
	add r2, r2, #1
	mov r0, r4
	mov r1, r1, lsr #0x10
	strh r2, [r7]
	bl ov1_02124AB8
	mov ip, r0
	b _02124924
_021249AC:
	add r7, r4, #0x6400
	ldrh sl, [r7, #0x14]
	mov r5, #0x28
	add r6, r4, #0x5000
	sub r1, sl, #1
	mla r0, r1, r5, r4
	add r0, r0, #0x5000
	ldr r3, [r0, #0x4f4]
	ldr r2, [r0, #0x4f8]
	mla r0, sl, r5, sb
	str r3, [r0, #0x18]
	str r2, [r0, #0x1c]
	ldrh sl, [r7, #0x14]
	ldr r1, [r6, #0x4ec]
	ldr r0, [r6, #0x4f0]
	mla sb, sl, r5, sb
	str r1, [sb, #0x20]
	str r0, [sb, #0x24]
	ldrh sb, [r7, #0x14]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	mla r2, sb, r5, r4
	add r2, r2, #0x5400
	strh r8, [r2, #0xdc]
	ldrh r2, [r7, #0x14]
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r2, #1
	strh r0, [r7, #0x14]
	ldrh r8, [r7, #0x14]
	ldr r3, [r6, #0x4f4]
	ldr r6, [r6, #0x4f8]
	mov r5, r3
	mov r7, r6
	cmp r8, #0
	mov r1, #0
	ble _02124A84
	mov r2, r4
_02124A44:
	add r0, r2, #0x5000
	ldr r0, [r0, #0x4f4]
	add r1, r1, #1
	cmp r3, r0
	movge r3, r0
	cmp r5, r0
	movle r5, r0
	add r0, r2, #0x5000
	ldr r0, [r0, #0x4f8]
	add r2, r2, #0x28
	cmp r6, r0
	movge r6, r0
	cmp r7, r0
	movle r7, r0
	cmp r1, r8
	blt _02124A44
_02124A84:
	add r0, r3, r5
	add r1, r6, r7
	mov r2, r0, asr #1
	add r0, r4, #0x6000
	str r2, [r0, #0x3ec]
	mov r1, r1, asr #1
	str r1, [r0, #0x3f0]
	sub r1, r5, r3
	str r1, [r0, #0x3f4]
	sub r1, r7, r6
	str r1, [r0, #0x3f8]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_02124AB8
ov1_02124AB8: ; 0x02124AB8
	cmp r1, #0x60
	blo _02124ACC
	sub r0, r1, #0x60
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	arm_func_end ov1_02124AB8
_02124ACC:
	mov r0, r1
	bx lr

	arm_func_start ov1_02124AD4
ov1_02124AD4: ; 0x02124AD4
	add r2, r0, #0x5400
	ldrh r2, [r2, #0xa0]
	ldr ip, _02124AF0 ; =ov1_02124AB8
	add r1, r1, r2
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bx ip
	.align 2, 0
_02124AF0: .word ov1_02124AB8
	arm_func_end ov1_02124AD4

	arm_func_start ov1_02124AF4
ov1_02124AF4: ; 0x02124AF4
	cmp r1, #0x60
	add r0, r0, #0x5400
	movhs r1, #0x60
	strh r1, [r0, #0x9e]
	bx lr
	arm_func_end ov1_02124AF4

	arm_func_start ov1_02124B08
ov1_02124B08: ; 0x02124B08
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x1f0
	mov r6, r0
	mov r5, r1
	bl ov1_02124DEC
	ldr r1, _02124DD0 ; =DAT_overlay_1_0213fb80
	add r0, sp, #0x190
	ldrb r4, [r1, r5]
	ldr r1, _02124DD4 ; =s_data_interface_i_03d_LZ_bin_overlay_1_02140954
	mov r2, r4
	bl OS_SPrintf
	ldr r1, _02124DD8 ; =s_BAL_i_03d_00_NCBR_overlay_1_02140970
	add r0, sp, #0x130
	mov r2, r4
	bl OS_SPrintf
	ldr r1, _02124DDC ; =s_BAL_i_03d_NCLR_overlay_1_02140984
	add r0, sp, #0xd0
	mov r2, r4
	bl OS_SPrintf
	ldr r1, _02124DE0 ; =s_BAL_i_03d_00_NCER_overlay_1_02140994
	add r0, sp, #0x70
	mov r2, r4
	bl OS_SPrintf
	ldr r1, _02124DE4 ; =s_BAL_i_03d_00_cac_overlay_1_021409a8
	mov r2, r4
	add r0, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _02124BAC
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _02124DE8 ; =s_BAL_overlay_1_021409bc
	add r2, sp, #0x190
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r4, r0
	arm_func_end ov1_02124B08
_02124BAC:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02124BD0
	mov r2, #0
	add r1, sp, #0x130
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_02124BD0:
	add r2, r6, #0x6000
	str r0, [r2, #0x48c]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	add r1, r6, #0x6000
	mov r2, r0
	str r0, [r1, #0x494]
	ldr r0, [r1, #0x48c]
	mov r1, r2, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	add r0, r6, #0x6000
	ldr r0, [r0, #0x48c]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02124C30
	mov r2, #0
	add r1, sp, #0xd0
	mov r3, r2
	bl sub_02007AC0
_02124C30:
	add r1, r6, #0x6000
	str r0, [r1, #0x490]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	add r1, r6, #0x6000
	mov r2, r0
	str r0, [r1, #0x498]
	ldr r0, [r1, #0x490]
	mov r1, r2, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	add r0, r6, #0x6000
	ldr r0, [r0, #0x490]
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02124C98
	mov r2, #0
	add r1, sp, #0x70
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_02124C98:
	add r1, r6, #0x6000
	str r0, [r1, #0x49c]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02124CB4
	bl sub_02008788
_02124CB4:
	add r1, r6, #0x6000
	mov r2, #0
	str r0, [r1, #0x4a0]
	add r1, sp, #0x10
	mov r3, r2
	bl sub_0200887C
	add r0, r6, #0x6000
	ldr r0, [r0, #0x4a0]
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	add r2, r6, #0x5400
	strh r0, [r2, #0xc4]
	add r0, r6, #0x6000
	ldrh r1, [r2, #0xc4]
	ldrh r2, [r2, #0xc0]
	ldr r0, [r0, #0x4a0]
	bl sub_02008990
	cmp r4, #0
	beq _02124D14
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
_02124D14:
	mov r2, #0
	add r1, r6, #0x6000
	mov r0, #0x60
_02124D20:
	mla r4, r2, r0, r6
	ldr r3, [r1, #0x48c]
	add r2, r2, #1
	str r3, [r4, #0xf5c]
	ldr r3, [r1, #0x490]
	and r2, r2, #0xff
	str r3, [r4, #0xf60]
	cmp r2, #0x60
	blo _02124D20
	add r0, r6, #0x6000
	ldr ip, [r0, #0x49c]
	ldr r3, [r0, #0x490]
	ldr r2, [r0, #0x48c]
	add r1, r6, #0x3000
	str r2, [r1, #0x330]
	mov r4, #0
	str r4, [r1, #0x334]
	str r3, [r1, #0x338]
	str ip, [r1, #0x33c]
	ldr r3, [r0, #0x49c]
	ldr r2, [r0, #0x490]
	ldr r0, [r0, #0x48c]
	cmp r5, #6
	str r0, [r1, #0x37c]
	str r4, [r1, #0x380]
	str r2, [r1, #0x384]
	str r3, [r1, #0x388]
	bne _02124DB0
	mov r0, #4
	str r0, [r6]
	add r0, r6, #0x5000
	str r4, [r0, #0x4b4]
	mov r1, #0x18000
	str r1, [r0, #0x4b8]
	add sp, sp, #0x1f0
	ldmia sp!, {r4, r5, r6, pc}
_02124DB0:
	mov r0, #3
	str r0, [r6]
	add r0, r6, #0x5000
	str r4, [r0, #0x4b4]
	mov r1, #0x8000
	str r1, [r0, #0x4b8]
	add sp, sp, #0x1f0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02124DD0: .word DAT_overlay_1_0213fb80
_02124DD4: .word s_data_interface_i_03d_LZ_bin_overlay_1_02140954
_02124DD8: .word s_BAL_i_03d_00_NCBR_overlay_1_02140970
_02124DDC: .word s_BAL_i_03d_NCLR_overlay_1_02140984
_02124DE0: .word s_BAL_i_03d_00_NCER_overlay_1_02140994
_02124DE4: .word s_BAL_i_03d_00_cac_overlay_1_021409a8
_02124DE8: .word s_BAL_overlay_1_021409bc

	arm_func_start ov1_02124DEC
ov1_02124DEC: ; 0x02124DEC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r2, r4, #0x6000
	ldr r0, [r2, #0x48c]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #0x5400
	ldrh r1, [r0, #0xc4]
	ldr r0, [r2, #0x4a0]
	bl sub_02008B80
	add r0, r4, #0x6000
	ldr r5, [r0, #0x48c]
	cmp r5, #0
	beq _02124E44
	beq _02124E38
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_02124DEC
_02124E38:
	add r0, r4, #0x6000
	mov r1, #0
	str r1, [r0, #0x48c]
_02124E44:
	add r0, r4, #0x6000
	ldr r5, [r0, #0x490]
	cmp r5, #0
	beq _02124E74
	beq _02124E68
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
_02124E68:
	add r0, r4, #0x6000
	mov r1, #0
	str r1, [r0, #0x490]
_02124E74:
	add r0, r4, #0x6000
	ldr r0, [r0, #0x49c]
	cmp r0, #0
	beq _02124EA0
	beq _02124E94
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02124E94:
	add r0, r4, #0x6000
	mov r1, #0
	str r1, [r0, #0x49c]
_02124EA0:
	add r0, r4, #0x6000
	ldr r5, [r0, #0x4a0]
	cmp r5, #0
	beq _02124ED0
	beq _02124EC4
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_02124EC4:
	add r0, r4, #0x6000
	mov r1, #0
	str r1, [r0, #0x4a0]
_02124ED0:
	add r0, r4, #0x6000
	ldr r0, [r0, #0x494]
	bl NNS_GfdFreeLnkTexVram
	add r0, r4, #0x6000
	ldr r0, [r0, #0x498]
	bl NNS_GfdFreeLnkPlttVram
	add r1, r4, #0x5000
	mov r2, #0
	mov r0, r4
	str r2, [r1, #0x4b4]
	mov r2, #0x8000
	str r2, [r1, #0x4b8]
	bl ov1_02124F08
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02124F08
ov1_02124F08: ; 0x02124F08
	stmdb sp!, {r4, lr}
	add r1, r0, #0x5000
	mov r2, #0x3800
	str r2, [r1, #0x4a8]
	add r1, r0, #0x6000
	ldr r4, [r1, #0x42c]
	ldr ip, [r1, #0x41c]
	ldr r3, [r1, #0x418]
	add r2, r0, #0x3000
	str r3, [r2, #0x330]
	mov lr, #0
	str lr, [r2, #0x334]
	str ip, [r2, #0x338]
	str r4, [r2, #0x33c]
	ldr ip, [r1, #0x42c]
	ldr r3, [r1, #0x41c]
	ldr r1, [r1, #0x418]
	str r1, [r2, #0x37c]
	str lr, [r2, #0x380]
	str r3, [r2, #0x384]
	str ip, [r2, #0x388]
	str lr, [r0]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02124F08

	arm_func_start ov1_02124F64
ov1_02124F64: ; 0x02124F64
	add r1, r0, #0x5000
	mov r2, #0
	strb r2, [r1, #0x4a6]
	strb r2, [r1, #0x4d0]
	strb r2, [r1, #0x4d1]
	mov r1, #1
	str r1, [r0]
	bx lr
	arm_func_end ov1_02124F64

	arm_func_start ov1_02124F84
ov1_02124F84: ; 0x02124F84
	mov r1, #2
	str r1, [r0]
	bx lr
	arm_func_end ov1_02124F84

	arm_func_start ov1_02124F90
ov1_02124F90: ; 0x02124F90
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x6c
	mov r4, #0x26
	str r4, [sp]
	mov r4, #1
	mov r7, r1
	str r4, [sp, #4]
	mov r1, #0
	mov r5, r2
	str r1, [sp, #8]
	mov r4, r3
	ldrh r2, [r5]
	ldrb r3, [r5, #2]
	mov r6, r0
	bl sub_02012FF8
	ldr r1, _0212512C ; =ptr_FUN_overlay_1_02125134_overlay_1_021409e8
	mov r0, r6
	str r1, [r6]
	strh r7, [r6, #0x16]
	str r5, [r6, #0x18]
	str r4, [r6, #0x1c]
	bl sub_02014364
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	str r0, [r6, #0x5c]
	ldr r1, [r6, #0x5c]
	mov r0, r6
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_0201429C
	mov r0, r6
	bl sub_020142F8
	ldrsb r2, [r4, #6]
	ldr r1, _02125130 ; =s_data_script_battle_pokemon_p_03d_overlay_1_02140a04
	add r0, sp, #0xc
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x20]
	ldrsb r2, [r4, #7]
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x24]
	ldrb r2, [r4, #8]
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x28]
	ldrsb r2, [r5, #0xa]
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x2c]
	ldrsb r2, [r5, #0xb]
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x30]
	ldrsb r2, [r5, #0xc]
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x34]
	ldrsb r2, [r5, #0xd]
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x38]
	ldrsb r2, [r4, #0x10]
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x3c]
	ldrsb r2, [r4, #0x11]
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x40]
	ldrsb r2, [r4, #0x12]
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x44]
	ldrsb r2, [r4, #0x13]
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x48]
	ldrsb r2, [r4, #0x14]
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x4c]
	ldrsb r2, [r4, #0x15]
	mov r2, r2, lsl #0xc
	str r2, [r6, #0x50]
	ldrh r2, [r6, #0x16]
	bl OS_SPrintf
	ldr r1, [sp, #0x80]
	add r0, sp, #0xc
	bl sub_02003108
	cmp r0, #0
	beq _02125114
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _02125100
	ldr r1, [sp, #0x80]
	mov r2, #0
	stmia sp, {r1, r2}
	add r1, sp, #0xc
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
	arm_func_end ov1_02124F90
_02125100:
	str r0, [r6, #0x54]
	ldr r0, [r0, #0x4c]
	str r0, [r6, #0x58]
	bl sub_02044AC8
	b _02125120
_02125114:
	mov r0, #0
	str r0, [r6, #0x54]
	str r0, [r6, #0x58]
_02125120:
	mov r0, r6
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0212512C: .word ptr_FUN_overlay_1_02125134_overlay_1_021409e8
_02125130: .word s_data_script_battle_pokemon_p_03d_overlay_1_02140a04

	arm_func_start ov1_02125134
ov1_02125134: ; 0x02125134
	stmdb sp!, {r4, lr}
	ldr r1, _0212518C ; =ptr_FUN_overlay_1_02125134_overlay_1_021409e8
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _02125174
	beq _0212516C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_02125134
_0212516C:
	mov r0, #0
	str r0, [r4, #0x54]
_02125174:
	ldr r0, [r4, #0x5c]
	bl NNS_GfdFreeLnkPlttVram
	mov r0, r4
	bl sub_02013110
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212518C: .word ptr_FUN_overlay_1_02125134_overlay_1_021409e8

	arm_func_start ov1_02125190
ov1_02125190: ; 0x02125190
	stmdb sp!, {r4, lr}
	ldr r1, _021251F0 ; =ptr_FUN_overlay_1_02125134_overlay_1_021409e8
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _021251D0
	beq _021251C8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_02125190
_021251C8:
	mov r0, #0
	str r0, [r4, #0x54]
_021251D0:
	ldr r0, [r4, #0x5c]
	bl NNS_GfdFreeLnkPlttVram
	mov r0, r4
	bl sub_02013110
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021251F0: .word ptr_FUN_overlay_1_02125134_overlay_1_021409e8

	arm_func_start ov1_021251F4
ov1_021251F4: ; 0x021251F4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r5, r1
	mov sb, r2
	bl sub_02011D60
	ldr r0, _0212545C ; =ptr_FUN_overlay_0_0212546c_overlay_1_02140a50
	ldr r4, _02125460 ; =sub_02007784
	str r0, [sl]
	ldr r3, _02125464 ; =sub_02007770
	add r0, sl, #0x1c0
	mov r1, #0x1d
	mov r2, #0x18
	str r4, [sp]
	bl __cxa_vec_ctor
	add r0, sl, #0x2b8
	add r0, r0, #0x400
	bl sub_020039B8
	add r0, sl, #0x6e0
	bl sub_020049A4
	strb r5, [sl, #0x48c]
	mov r0, sl
	mov r1, sb
	str sb, [sl, #0x184]
	bl sub_02011FF4
	mov r6, #0
	mov r7, r6
	add r4, sl, #0x1c0
	mov fp, #0x18
	arm_func_end ov1_021251F4
_02125264:
	mov r0, sb
	ldr r2, [r0]
	mov r1, r7
	ldr r2, [r2, #0xc]
	blx r2
	movs r5, r0
	beq _021252B8
	ldrb r0, [r5]
	tst r0, #1
	beq _021252B8
	mul r8, r7, fp
	ldr r1, [r5, #4]
	add r0, r4, r8
	bl sub_020077CC
	ldr r1, [r5, #8]
	add r0, r4, r8
	bl sub_020077E4
	add r0, sl, r8
	ldr r0, [r0, #0x1d0]
	cmp r6, r0
	movlo r6, r0
_021252B8:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #0x1d
	blo _02125264
	mov r1, #0
	mov r0, r6
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	str r0, [sl, #0x478]
	mov r0, #0x20
	bl _Znwm
	cmp r0, #0
	beq _021252F0
	bl ov1_02129DD4
_021252F0:
	str r0, [sl, #0x198]
	mov r0, #0x1c
	bl _Znwm
	cmp r0, #0
	beq _02125308
	bl ov1_021299CC
_02125308:
	str r0, [sl, #0x19c]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02125320
	bl ov1_02127B48
_02125320:
	str r0, [sl, #0x1a0]
	mov r0, #0x20
	bl _Znwm
	cmp r0, #0
	beq _02125338
	bl ov1_0212770C
_02125338:
	str r0, [sl, #0x1a4]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02125350
	bl ov1_02128414
_02125350:
	str r0, [sl, #0x1a8]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02125368
	bl ov1_02128860
_02125368:
	str r0, [sl, #0x1ac]
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	beq _02125380
	bl ov1_021291BC
_02125380:
	str r0, [sl, #0x1b0]
	mov r0, #0x14
	bl _Znwm
	cmp r0, #0
	beq _02125398
	bl ov1_021296C8
_02125398:
	str r0, [sl, #0x1b4]
	ldr r0, [sb, #0x1c]
	add r1, sl, #0x100
	ldrh r2, [r0]
	mov r3, #0
	mov r0, sl
	strh r2, [r1, #0x88]
	ldr r1, [sl, #0x1ac]
	strh r2, [r1, #8]
	ldr r4, [sl, #0x198]
	mov r2, #0x1000
	str r3, [r4, #0x14]
	strh r3, [r4, #0x18]
	strh r3, [r4, #0x1a]
	mov r1, #1
	str r2, [r4, #0xc]
	bl ov1_0212671C
	mov r1, #0
	str r1, [sl, #0x18c]
	ldr r0, [sl, #0x1b0]
	bl ov1_021293D8
	add r0, sl, #0x400
	mov r2, #0
	strh r2, [r0, #0x80]
	str r2, [sl, #0x484]
	ldr r1, _02125468 ; =0x00007FFF
	str r2, [sl, #0x488]
	add r0, sl, #0x600
	strh r1, [r0, #0xe8]
	mov r1, #0x400
	str r1, [sl, #0x6e4]
	mov r1, #0x10
	str r1, [sl, #0x6f4]
	ldr r1, [sb, #0x1c]
	mov r4, #0x3f
	ldrb r5, [r1, #8]
	mov r3, #0x7c00
	rsb r2, r4, #0x440
	mov r5, r5, lsl #0xc
	str r5, [sl, #0x700]
	str r4, [sl, #0x6f0]
	strh r3, [r0, #0xc0]
	mov r1, #0x1f
	str r2, [sl, #0x6bc]
	str r1, [sl, #0x6cc]
	mov r1, #0x3e
	mov r0, sl
	str r1, [sl, #0x6c8]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212545C: .word ptr_FUN_overlay_0_0212546c_overlay_1_02140a50
_02125460: .word sub_02007784
_02125464: .word sub_02007770
_02125468: .word 0x00007FFF

	arm_func_start ov1_0212546C
ov1_0212546C: ; 0x0212546C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _021255FC ; =ptr_FUN_overlay_0_0212546c_overlay_1_02140a50
	mov r4, r0
	str r1, [r4]
	ldr r5, [r4, #0x198]
	cmp r5, #0
	beq _021254A4
	beq _0212549C
	mov r0, r5
	bl ov1_02129E48
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_0212546C
_0212549C:
	mov r0, #0
	str r0, [r4, #0x198]
_021254A4:
	ldr r5, [r4, #0x19c]
	cmp r5, #0
	beq _021254CC
	beq _021254C4
	mov r0, r5
	bl ov1_02129A0C
	mov r0, r5
	bl _ZdlPv
_021254C4:
	mov r0, #0
	str r0, [r4, #0x19c]
_021254CC:
	ldr r5, [r4, #0x1a0]
	cmp r5, #0
	beq _021254F4
	beq _021254EC
	mov r0, r5
	bl ov1_02127B88
	mov r0, r5
	bl _ZdlPv
_021254EC:
	mov r0, #0
	str r0, [r4, #0x1a0]
_021254F4:
	ldr r5, [r4, #0x1a4]
	cmp r5, #0
	beq _0212551C
	beq _02125514
	mov r0, r5
	bl ov1_0212774C
	mov r0, r5
	bl _ZdlPv
_02125514:
	mov r0, #0
	str r0, [r4, #0x1a4]
_0212551C:
	ldr r5, [r4, #0x1a8]
	cmp r5, #0
	beq _02125544
	beq _0212553C
	mov r0, r5
	bl ov1_02128458
	mov r0, r5
	bl _ZdlPv
_0212553C:
	mov r0, #0
	str r0, [r4, #0x1a8]
_02125544:
	ldr r5, [r4, #0x1ac]
	cmp r5, #0
	beq _0212556C
	beq _02125564
	mov r0, r5
	bl ov1_021288E8
	mov r0, r5
	bl _ZdlPv
_02125564:
	mov r0, #0
	str r0, [r4, #0x1ac]
_0212556C:
	ldr r5, [r4, #0x1b0]
	cmp r5, #0
	beq _02125594
	beq _0212558C
	mov r0, r5
	bl ov1_02129240
	mov r0, r5
	bl _ZdlPv
_0212558C:
	mov r0, #0
	str r0, [r4, #0x1b0]
_02125594:
	ldr r5, [r4, #0x1b4]
	cmp r5, #0
	beq _021255BC
	beq _021255B4
	mov r0, r5
	bl ov1_02129750
	mov r0, r5
	bl _ZdlPv
_021255B4:
	mov r0, #0
	str r0, [r4, #0x1b4]
_021255BC:
	ldr r0, [r4, #0x478]
	bl NNS_GfdFreeLnkTexVram
	add r0, r4, #0x6e0
	bl sub_020049D4
	add r0, r4, #0x2b8
	add r0, r0, #0x400
	bl sub_020039E8
	ldr r3, _02125600 ; =sub_02007784
	add r0, r4, #0x1c0
	mov r1, #0x1d
	mov r2, #0x18
	bl __cxa_vec_cleanup
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021255FC: .word ptr_FUN_overlay_0_0212546c_overlay_1_02140a50
_02125600: .word sub_02007784

	arm_func_start ov1_02125604
ov1_02125604: ; 0x02125604
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0212579C ; =ptr_FUN_overlay_0_0212546c_overlay_1_02140a50
	mov r4, r0
	str r1, [r4]
	ldr r5, [r4, #0x198]
	cmp r5, #0
	beq _0212563C
	beq _02125634
	mov r0, r5
	bl ov1_02129E48
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_02125604
_02125634:
	mov r0, #0
	str r0, [r4, #0x198]
_0212563C:
	ldr r5, [r4, #0x19c]
	cmp r5, #0
	beq _02125664
	beq _0212565C
	mov r0, r5
	bl ov1_02129A0C
	mov r0, r5
	bl _ZdlPv
_0212565C:
	mov r0, #0
	str r0, [r4, #0x19c]
_02125664:
	ldr r5, [r4, #0x1a0]
	cmp r5, #0
	beq _0212568C
	beq _02125684
	mov r0, r5
	bl ov1_02127B88
	mov r0, r5
	bl _ZdlPv
_02125684:
	mov r0, #0
	str r0, [r4, #0x1a0]
_0212568C:
	ldr r5, [r4, #0x1a4]
	cmp r5, #0
	beq _021256B4
	beq _021256AC
	mov r0, r5
	bl ov1_0212774C
	mov r0, r5
	bl _ZdlPv
_021256AC:
	mov r0, #0
	str r0, [r4, #0x1a4]
_021256B4:
	ldr r5, [r4, #0x1a8]
	cmp r5, #0
	beq _021256DC
	beq _021256D4
	mov r0, r5
	bl ov1_02128458
	mov r0, r5
	bl _ZdlPv
_021256D4:
	mov r0, #0
	str r0, [r4, #0x1a8]
_021256DC:
	ldr r5, [r4, #0x1ac]
	cmp r5, #0
	beq _02125704
	beq _021256FC
	mov r0, r5
	bl ov1_021288E8
	mov r0, r5
	bl _ZdlPv
_021256FC:
	mov r0, #0
	str r0, [r4, #0x1ac]
_02125704:
	ldr r5, [r4, #0x1b0]
	cmp r5, #0
	beq _0212572C
	beq _02125724
	mov r0, r5
	bl ov1_02129240
	mov r0, r5
	bl _ZdlPv
_02125724:
	mov r0, #0
	str r0, [r4, #0x1b0]
_0212572C:
	ldr r5, [r4, #0x1b4]
	cmp r5, #0
	beq _02125754
	beq _0212574C
	mov r0, r5
	bl ov1_02129750
	mov r0, r5
	bl _ZdlPv
_0212574C:
	mov r0, #0
	str r0, [r4, #0x1b4]
_02125754:
	ldr r0, [r4, #0x478]
	bl NNS_GfdFreeLnkTexVram
	add r0, r4, #0x6e0
	bl sub_020049D4
	add r0, r4, #0x2b8
	add r0, r0, #0x400
	bl sub_020039E8
	ldr r3, _021257A0 ; =sub_02007784
	add r0, r4, #0x1c0
	mov r1, #0x1d
	mov r2, #0x18
	bl __cxa_vec_cleanup
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0212579C: .word ptr_FUN_overlay_0_0212546c_overlay_1_02140a50
_021257A0: .word sub_02007784

	arm_func_start ov1_021257A4
ov1_021257A4: ; 0x021257A4
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	add r1, r0, #0x100
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _021257E4
	bl ov1_0212586C
	ldmia sp!, {r3, pc}
	arm_func_end ov1_021257A4
_021257E4:
	ldrh r1, [r0, #4]
	tst r1, #0x2000
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _02125804
	bl ov1_02125B74
	ldmia sp!, {r3, pc}
_02125804:
	bl ov1_02125A80
	ldmia sp!, {r3, pc}

	arm_func_start ov1_0212580C
ov1_0212580C: ; 0x0212580C
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	add r1, r0, #0x100
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	ldrne r1, [r0, #0x18c]
	cmpne r1, #4
	ldmeqia sp!, {r3, pc}
	ldrh r1, [r0, #4]
	tst r1, #0x100
	ldmneia sp!, {r3, pc}
	ldr r1, _02125868 ; =0x000FFFFF
	add r0, r0, #0x690
	bl sub_02044C9C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02125868: .word 0x000FFFFF
	arm_func_end ov1_0212580C

	arm_func_start ov1_0212586C
ov1_0212586C: ; 0x0212586C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r4, r0
	ldr r0, [r4, #0x18c]
	cmp r0, #0
	beq _021258E8
	ldr r0, [r4, #0x1b0]
	bl ov1_021292CC
	add r0, r4, #0x100
	ldrh r1, [r0, #0x90]
	cmp r1, #1
	bhi _021258E0
	ldr r0, [r4, #0x18c]
	cmp r0, #0
	bne _021258B8
	add r0, r4, #0x400
	mov r1, #0
	strh r1, [r0, #0x7c]
	strb r1, [r4, #0x47e]
	arm_func_end ov1_0212586C
_021258B8:
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl ov1_021263A4
	ldr r0, [r4, #0x1b0]
	ldr r1, [r4, #0x18c]
	bl ov1_021293D8
	mov r0, r4
	bl sub_0201287C
	b _021258E8
_021258E0:
	sub r1, r1, #1
	strh r1, [r0, #0x90]
_021258E8:
	ldr r0, [r4, #0x18c]
	cmp r0, #2
	beq _02125964
	add r0, r4, #0x400
	ldrh r1, [r0, #0x7c]
	cmp r1, #0xb4
	blo _0212595C
	ldrb r0, [r4, #0x47e]
	add r1, r0, #1
	strb r1, [r4, #0x47e]
	ldr r0, [r4, #0x184]
	and r1, r1, #0xff
	ldr r0, [r0, #0x1c]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	bne _02125964
	mov r0, #0
	strb r0, [r4, #0x47e]
	ldr r1, [r4, #0x184]
	add r0, r4, #0x100
	ldr r3, [r1, #0x1c]
	ldrh r1, [r0, #0x88]
	ldrb r2, [r3, #0x17]
	ldrh r3, [r3]
	add r1, r1, r2
	cmp r1, r3
	strgeh r3, [r0, #0x88]
	strlth r1, [r0, #0x88]
	b _02125964
_0212595C:
	add r1, r1, #1
	strh r1, [r0, #0x7c]
_02125964:
	ldr r0, [r4, #0x18c]
	cmp r0, #4
	beq _021259C4
	mov r0, r4
	bl sub_020121F4
	mov r0, r4
	bl ov1_02125C94
	ldr r5, [r4, #0xc4]
	ldr lr, [r4, #0x484]
	ldr r3, [r5, #0x18]
	ldr ip, [r4, #0x488]
	ldr r2, [r5, #0x1c]
	add r1, r3, lr
	add r0, r2, ip
	str r1, [r5, #0x18]
	str lr, [sp, #0x20]
	str ip, [sp, #0x24]
	str r3, [sp, #0x28]
	str r2, [sp, #0x2c]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [r5, #0x1c]
_021259C4:
	ldr r0, [r4, #0x1a0]
	bl ov1_02127BCC
	ldr r0, [r4, #0x1a4]
	bl ov1_02127780
	ldr r0, [r4, #0x1a8]
	bl ov1_0212849C
	ldr r0, [r4, #0x184]
	add r3, sp, #0x3c
	add r0, r0, #0x20
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr ip, [r4, #0x20]
	ldr r2, [r4, #0x24]
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add lr, r1, ip
	str ip, [sp, #8]
	add ip, r0, r2
	str lr, [sp, #0x3c]
	str ip, [sp, #0x40]
	str r2, [sp, #0xc]
	ldr r2, [r4, #0x484]
	ldr r1, [r4, #0x488]
	add r0, lr, r2
	add lr, ip, r1
	str r0, [sp, #0x3c]
	str lr, [sp, #0x40]
	str r1, [sp, #4]
	str r2, [sp]
	ldr r1, [r4, #0x8c]
	ldr r0, [r4, #0xa0]
	ldr r2, [r4, #0xb0]
	add r0, r1, r0
	add r0, r2, r0
	sub r0, lr, r0
	str r0, [sp, #0x40]
	add ip, sp, #0x30
	ldmia r3, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r1, [r4, #0x6f8]
	str r0, [r4, #0x6fc]
	ldr r0, [sp, #0x38]
	str r0, [r4, #0x700]
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02125A80
ov1_02125A80: ; 0x02125A80
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x198]
	bl ov1_02129ED4
	ldr r0, [r4, #0x19c]
	bl ov1_02129A40
	mov r0, r4
	bl sub_02012648
	mov r0, r4
	bl sub_020126C8
	mov r0, r4
	bl sub_020123AC
	add r0, r4, #0x100
	ldrh r1, [r0, #0x92]
	ldrh r0, [r0, #0x94]
	cmp r1, r0
	bne _02125ADC
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xe
	bl sub_02034C44
	b _02125B60
	arm_func_end ov1_02125A80
_02125ADC:
	cmp r1, #0x30
	bne _02125B50
	ldrh r1, [r4, #4]
	mov r2, #0
	mov r0, r4
	orr r1, r1, #1
	orr r1, r1, #0x400
	strh r1, [r4, #4]
	ldrh r3, [r4, #4]
	mov r1, #0x1000
	orr r3, r3, #0x800
	strh r3, [r4, #4]
	ldr r3, [r4, #0x198]
	str r2, [r3, #0x14]
	strh r2, [r3, #0x18]
	strh r2, [r3, #0x1a]
	str r1, [r3, #0xc]
	bl ov1_02126434
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xe
	bl sub_02034C5C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x39
	bl sub_02034C44
	b _02125B60
_02125B50:
	cmp r1, #0
	bne _02125B60
	mov r0, r4
	bl ov1_021262AC
_02125B60:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x92]
	sub r1, r1, #1
	strh r1, [r0, #0x92]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02125B74
ov1_02125B74: ; 0x02125B74
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x198]
	bl ov1_02129ED4
	ldr r0, [r4, #0x19c]
	bl ov1_02129A40
	mov r0, r4
	bl sub_02012648
	mov r0, r4
	bl sub_020126C8
	mov r0, r4
	bl sub_020123AC
	add r0, r4, #0x100
	ldrh r1, [r0, #0x94]
	ldrh r0, [r0, #0x92]
	cmp r0, r1
	bne _02125BD0
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xe
	bl sub_02034C44
	b _02125C80
	arm_func_end ov1_02125B74
_02125BD0:
	cmp r0, #0x30
	bne _02125C44
	ldrh r1, [r4, #4]
	mov r2, #0
	mov r0, r4
	orr r1, r1, #1
	orr r1, r1, #0x400
	strh r1, [r4, #4]
	ldrh r3, [r4, #4]
	mov r1, #0x1000
	orr r3, r3, #0x800
	strh r3, [r4, #4]
	ldr r3, [r4, #0x198]
	str r2, [r3, #0x14]
	strh r2, [r3, #0x18]
	strh r2, [r3, #0x1a]
	str r1, [r3, #0xc]
	bl ov1_02126434
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xe
	bl sub_02034C5C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x39
	bl sub_02034C44
	b _02125C80
_02125C44:
	cmp r0, #0
	bne _02125C58
	mov r0, r4
	bl ov1_021262AC
	b _02125C80
_02125C58:
	cmp r0, #0x70
	bls _02125C80
	sub r2, r1, r0
	mov r0, #0
	mov r1, #8
	mov r3, #0x30
	bl sub_02007068
	and r1, r0, #0xff
	mov r0, r4
	bl ov1_0212656C
_02125C80:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x92]
	sub r1, r1, #1
	strh r1, [r0, #0x92]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02125C94
ov1_02125C94: ; 0x02125C94
	stmdb sp!, {r4, lr}
	ldr r1, [r0, #0x184]
	ldr r1, [r1, #0x1c]
	ldrb r2, [r1, #9]
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	add r2, r0, #0x400
	ldrh r4, [r2, #0x80]
	ldrh r3, [r1, #0xc]
	ldr ip, _02125D20 ; =FX_SinCosTable_
	add r3, r4, r3
	strh r3, [r2, #0x80]
	ldrh r3, [r2, #0x80]
	ldrb lr, [r1, #0xa]
	mov r3, r3, asr #4
	mov r3, r3, lsl #1
	add r3, r3, #1
	mov r3, r3, lsl #1
	ldrsh r3, [ip, r3]
	mov lr, lr, lsl #0xc
	smull r4, r3, lr, r3
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	str r4, [r0, #0x484]
	ldrh r2, [r2, #0x80]
	ldrb r3, [r1, #0xb]
	mov r1, r2, asr #4
	mov r1, r1, lsl #2
	ldrsh r1, [ip, r1]
	mov r2, r3, lsl #0xc
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r0, #0x488]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02125D20: .word FX_SinCosTable_
	arm_func_end ov1_02125C94

	arm_func_start ov1_02125D24
ov1_02125D24: ; 0x02125D24
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrh r0, [r7, #4]
	mov r6, r1
	tst r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x104]
	ldrb r1, [r7, #0xc0]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldrb r2, [r7, #0xc0]
	add r3, r7, #0x1c0
	mov r1, #0x18
	mla r4, r2, r1, r3
	ldr r5, [r7, #0xc4]
	mov r1, #0
	str r4, [r5, #0x30]
	str r1, [r5, #0x2c]
	ldr r1, [r0, #8]
	str r1, [r5, #0x38]
	ldrb r1, [r7, #0xc0]
	ldr r0, [r0, #0xc]
	add r1, r7, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008828
	mov r1, r0
	strh r1, [r5, #0x2a]
	mov r0, r4
	bl sub_020078E4
	mov r0, r4
	ldr r1, [r7, #0x478]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007A94
	mov r0, #0
	ldr r1, [r7, #0x478]
	ldr r2, [r4, #0x14]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	ldr r3, [r4, #0x10]
	bl NNS_GfdRegisterNewVramTransferTask
	mov r1, r6
	ldrb r2, [r7, #0x108]
	mov r0, r5
	str r2, [r5, #0x14]
	ldr r2, [r7, #0x11c]
	str r2, [r5, #0x20]
	ldr r2, [r7, #0x134]
	str r2, [r5, #0x24]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	strh r0, [r7, #6]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov1_02125D24

	arm_func_start ov1_02125E00
ov1_02125E00: ; 0x02125E00
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x88
	mov r6, r0
	ldrb r0, [r6, #0x108]
	mov r5, r1
	mov r4, r2
	cmp r0, #0x1f
	bne _021260D8
	ldr r3, [r6, #0x8c]
	ldr r2, [r6, #0xa0]
	ldr r0, [r6, #0x198]
	ldr lr, [r6, #0x20]
	ldr r1, [r0, #0x14]
	ldr ip, [r6, #0xb0]
	add r2, r3, r2
	ldr r3, [r6, #0x24]
	add r2, ip, r2
	sub r2, r3, r2
	str lr, [sp, #0x80]
	str r2, [sp, #0x84]
	cmp r1, #0
	beq _02125EB0
	mov r1, r4
	bl ov1_0212A0D8
	ldr r1, [r6, #0x198]
	ldr lr, [sp, #0x80]
	ldr r1, [r1, #4]
	ldr ip, [sp, #0x84]
	str lr, [r1, #0x18]
	str ip, [r1, #0x1c]
	ldr r1, [r6, #0x198]
	ldr r3, [r6, #0x6f8]
	ldr r2, [r6, #0x6fc]
	ldr r1, [r1, #8]
	mov r4, r0
	str r3, [r1, #0x18]
	str r2, [r1, #0x1c]
	ldr r0, [r6, #0x198]
	mov r1, r5
	str lr, [sp, #0x70]
	str ip, [sp, #0x74]
	str r3, [sp, #0x68]
	str r2, [sp, #0x6c]
	bl ov1_02129FD0
	arm_func_end ov1_02125E00
_02125EB0:
	ldr r0, [r6, #0x19c]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02125F40
	ldr r0, [sp, #0x84]
	add r2, sp, #0x78
	mov r1, #0
	cmp r0, #0
	str r1, [r2, #4]
	subge r0, r1, #0x20000
	strge r0, [sp, #0x7c]
	addlt r0, r1, #0x20000
	str r1, [r2]
	strlt r0, [sp, #0x7c]
	ldr r0, [r6, #0x19c]
	mov r1, r4
	bl ov1_02129B48
	ldr lr, [sp, #0x78]
	ldr r1, [sp, #0x80]
	ldr ip, [sp, #0x7c]
	add r3, r1, lr
	ldr r2, [sp, #0x84]
	ldr r1, [r6, #0x19c]
	add r2, r2, ip
	str r3, [r1, #0x14]
	str r2, [r1, #0x18]
	mov r4, r0
	ldr r0, [r6, #0x19c]
	mov r1, r5
	str lr, [sp, #0x60]
	str ip, [sp, #0x64]
	str r3, [sp, #0x58]
	str r2, [sp, #0x5c]
	str r3, [sp, #0x50]
	str r2, [sp, #0x54]
	bl ov1_02129A98
_02125F40:
	add r0, r6, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _021260D8
	ldr r0, [r6, #0x1b0]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02125FC4
	mov r1, r4
	bl ov1_02129490
	ldr r2, [r6, #0x184]
	ldr r1, [sp, #0x80]
	ldr lr, [r2, #0x44]
	ldr ip, [r2, #0x48]
	add r3, r1, lr
	ldr r2, [sp, #0x84]
	ldr r1, [r6, #0x1b0]
	add r2, r2, ip
	str r3, [r1, #0x18]
	str r2, [r1, #0x1c]
	mov r4, r0
	ldr r0, [r6, #0x1b0]
	mov r1, r5
	str lr, [sp, #0x48]
	str ip, [sp, #0x4c]
	str r3, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x38]
	str r2, [sp, #0x3c]
	bl ov1_02129368
_02125FC4:
	ldr r0, [r6, #0x1a0]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0212602C
	mov r1, r4
	bl ov1_02127CAC
	ldr r2, [r6, #0x184]
	ldr r1, [sp, #0x80]
	ldr lr, [r2, #0x3c]
	ldr ip, [r2, #0x40]
	add r3, r1, lr
	ldr r2, [sp, #0x84]
	ldr r1, [r6, #0x1a0]
	add r2, r2, ip
	str r3, [r1, #0xc]
	str r2, [r1, #0x10]
	mov r4, r0
	ldr r0, [r6, #0x1a0]
	mov r1, r5
	str lr, [sp, #0x30]
	str ip, [sp, #0x34]
	str r3, [sp, #0x28]
	str r2, [sp, #0x2c]
	str r3, [sp, #0x20]
	str r2, [sp, #0x24]
	bl ov1_02127BF0
_0212602C:
	ldr r0, [r6, #0x1a4]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02126094
	mov r1, r4
	bl ov1_021278BC
	ldr r2, [r6, #0x184]
	ldr r1, [sp, #0x80]
	ldr lr, [r2, #0x4c]
	ldr ip, [r2, #0x50]
	add r3, r1, lr
	ldr r2, [sp, #0x84]
	ldr r1, [r6, #0x1a4]
	add r2, r2, ip
	str r3, [r1, #0x18]
	str r2, [r1, #0x1c]
	mov r4, r0
	ldr r0, [r6, #0x1a4]
	mov r1, r5
	str lr, [sp, #0x18]
	str ip, [sp, #0x1c]
	str r3, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	bl ov1_02127810
_02126094:
	ldr r0, [r6, #0x1a8]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021260D8
	mov r1, r4
	bl ov1_021285D4
	ldr r3, [sp, #0x80]
	ldr r1, [r6, #0x1a8]
	ldr r2, [sp, #0x84]
	str r3, [r1, #0xc]
	str r2, [r1, #0x10]
	mov r4, r0
	ldr r0, [r6, #0x1a8]
	mov r1, r5
	str r3, [sp]
	str r2, [sp, #4]
	bl ov1_021284C0
_021260D8:
	mov r0, r4
	add sp, sp, #0x88
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_021260E4
ov1_021260E4: ; 0x021260E4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x28
	mov r5, r0
	add r0, r5, #0x600
	ldrh r0, [r0, #0xb4]
	ldr r3, [r5, #0x20]
	ldr r2, [r5, #0x24]
	mov r4, r1
	str r3, [sp, #0x20]
	str r2, [sp, #0x24]
	tst r0, #2
	beq _02126140
	ldrh r0, [r5, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02126140
	add r0, r5, #0x6e0
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	arm_func_end ov1_021260E4
_02126140:
	add r0, r5, #0x600
	ldrh r0, [r0, #0xb4]
	tst r0, #4
	beq _02126198
	ldr r6, [sp, #0x20]
	ldr lr, [sp, #0x24]
	str r6, [r5, #0x6d0]
	str lr, [r5, #0x6d4]
	ldr ip, [r5, #0x38]
	ldr r3, [r5, #0x3c]
	add r0, r5, #0x2b8
	str ip, [r5, #0x6d8]
	str r3, [r5, #0x6dc]
	add r0, r0, #0x400
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	str r6, [sp, #0x18]
	str lr, [sp, #0x1c]
	str ip, [sp, #0x10]
	str r3, [sp, #0x14]
	blx r2
_02126198:
	add r0, r5, #0x600
	ldrh r0, [r0, #0xb4]
	tst r0, #8
	beq _021261E0
	add r0, r5, #0x100
	ldrh r1, [r0, #0x88]
	ldr r0, [r5, #0x1ac]
	ldr r3, [sp, #0x20]
	strh r1, [r0, #8]
	ldr r0, [r5, #0x1ac]
	ldr r2, [sp, #0x24]
	str r3, [r0]
	str r2, [r0, #4]
	ldr r0, [r5, #0x1ac]
	mov r1, r4
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	bl ov1_02128970
_021261E0:
	add r0, r5, #0x600
	ldrh r0, [r0, #0xb4]
	tst r0, #0x10
	addeq sp, sp, #0x28
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r3, [sp, #0x20]
	ldr r0, [r5, #0x1b0]
	ldr r2, [sp, #0x24]
	str r3, [r0, #0x18]
	str r2, [r0, #0x1c]
	ldr r0, [r5, #0x1b0]
	mov r1, r4
	str r3, [sp]
	str r2, [sp, #4]
	bl ov1_021293D4
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_02126224
ov1_02126224: ; 0x02126224
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x184]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x690
	add r1, r4, #0x490
	mov r2, #0x80
	bl sub_02044B48
	ldr r0, [r4, #0x694]
	ldr r2, _021262A4 ; =s_initialize_overlay_1_02140a64
	sub r3, r0, #4
	str r3, [r4, #0x694]
	ldrb r1, [r4, #0x48c]
	add r0, r4, #0x690
	str r1, [r3]
	ldr r1, [r4, #0x184]
	mov r3, #1
	ldr r1, [r1, #0x58]
	bl sub_02046040
	ldr r0, [r4, #0x694]
	ldr r2, _021262A8 ; =s_proc_overlay_1_02140a70
	sub r3, r0, #4
	str r3, [r4, #0x694]
	ldrb r1, [r4, #0x48c]
	add r0, r4, #0x690
	str r1, [r3]
	ldr r1, [r4, #0x184]
	ldr r1, [r1, #0x58]
	bl sub_02045A18
	ldmia sp!, {r4, pc}
	.align 2, 0
_021262A4: .word s_initialize_overlay_1_02140a64
_021262A8: .word s_proc_overlay_1_02140a70
	arm_func_end ov1_02126224

	arm_func_start ov1_021262AC
ov1_021262AC: ; 0x021262AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x184]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _021262F8
	add r0, r4, #0x690
	bl sub_02044B84
	ldr r0, [r4, #0x694]
	ldr r2, _0212630C ; =s_terminate_overlay_1_02140a78
	sub r3, r0, #4
	str r3, [r4, #0x694]
	ldrb r1, [r4, #0x48c]
	add r0, r4, #0x690
	str r1, [r3]
	ldr r1, [r4, #0x184]
	mov r3, #1
	ldr r1, [r1, #0x58]
	bl sub_02046040
	arm_func_end ov1_021262AC
_021262F8:
	mov r0, r4
	bl sub_020120B0
	mov r0, #0
	str r0, [r4, #0x184]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212630C: .word s_terminate_overlay_1_02140a78

	arm_func_start ov1_02126310
ov1_02126310: ; 0x02126310
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #4]
	tst r0, #0x1000
	movne r1, #0
	bne _02126388
	add r3, r4, #0x100
	ldrh ip, [r3, #0x88]
	cmp r1, ip
	blo _02126374
	cmp r2, #0
	beq _02126364
	sub r0, ip, #1
	mov r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r3, #0x88]
	add r1, r4, #0x400
	mov r2, #0
	strh r2, [r1, #0x7c]
	mov r1, r0, lsr #0x10
	b _02126388
	arm_func_end ov1_02126310
_02126364:
	mov r0, #0
	mov r1, ip
	strh r0, [r3, #0x88]
	b _02126388
_02126374:
	sub r0, ip, r1
	strh r0, [r3, #0x88]
	add r0, r4, #0x400
	mov r2, #0
	strh r2, [r0, #0x7c]
_02126388:
	ldr r0, [r4, #0x1b8]
	bl ov1_021362A0
	add r0, r4, #0x100
	ldrh r1, [r0, #0x88]
	ldr r0, [r4, #0x1ac]
	strh r1, [r0, #8]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_021263A4
ov1_021263A4: ; 0x021263A4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrh r0, [r4, #4]
	mov r5, r1
	tst r0, #0x1000
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x18c]
	cmp r0, r5
	bne _021263DC
	add r0, r4, #0x100
	ldrh r1, [r0, #0x90]
	cmp r1, r2
	strloh r2, [r0, #0x90]
	b _021263F0
	arm_func_end ov1_021263A4
_021263DC:
	str r5, [r4, #0x18c]
	add r0, r4, #0x100
	strh r2, [r0, #0x90]
	ldr r0, [r4, #0x1b0]
	bl ov1_021293D8
_021263F0:
	cmp r5, #4
	ldrneh r0, [r4, #4]
	orrne r0, r0, #8
	strneh r0, [r4, #4]
	ldmneia sp!, {r3, r4, r5, pc}
	add r1, r4, #0x20
	add r0, r4, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldrh r0, [r4, #4]
	bic r0, r0, #8
	strh r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02126424
ov1_02126424: ; 0x02126424
	ldr r0, [r0, #0x184]
	ldr r0, [r0, #0x1c]
	ldrb r0, [r0, #9]
	bx lr
	arm_func_end ov1_02126424

	arm_func_start ov1_02126434
ov1_02126434: ; 0x02126434
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	str r0, [sp, #0xc]
	bl sub_0201001C
	ldr r1, [sp, #0xc]
	mov r5, #0
	ldr r1, [r1, #0x20]
	str r1, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr fp, [r1, #0x24]
	add r1, r0, #0x48
	ldr r0, [sp, #0x10]
	str fp, [sp, #0x18]
	str r0, [sp, #0x14]
	add r6, r1, #0x1400
	arm_func_end ov1_02126434
_02126470:
	ldr r4, [r6]
	ldmib r6, {r0, r8}
	umull sl, sb, r8, r4
	mla sb, r8, r0, sb
	ldr r7, [r6, #0xc]
	ldr lr, [r6, #0x10]
	mla sb, r7, r4, sb
	mov r3, #0
	ldr ip, [r6, #0x14]
	adds r4, lr, sl
	adc r0, ip, sb
	str r4, [r6]
	str r0, [r6, #4]
	mov r0, #0
	str r0, [sp]
	mov r0, #0x1000
	str r0, [sp, #4]
	ldr r0, _02126568 ; =0x00007FFF
	mov r3, r3, lsl #0x12
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r4, [r6, #4]
	ldr r2, [sp, #0x10]
	orr r3, r3, r4, lsr #14
	ldr r0, [r0, #0x1bc]
	mov r1, #0x40
	sub r3, fp, r3
	bl ov1_02136B24
	ldr r3, [r6]
	ldmib r6, {r1, lr}
	umull r8, r7, lr, r3
	mla r7, lr, r1, r7
	ldr ip, [r6, #0xc]
	ldr sl, [r6, #0x10]
	mla r7, ip, r3, r7
	ldr sb, [r6, #0x14]
	adds r1, sl, r8
	adc r3, sb, r7
	stmia r6, {r1, r3}
	mov r1, #0x3000
	umull r1, r7, r3, r1
	mov r1, #0
	mov r3, r1
	mov r1, #0x3000
	mla r7, r3, r1, r7
	mov r4, r0
	mov r2, #0x1000
	rsb r1, r7, #0
	bl ov1_02136A58
	mov r0, r4
	mov r1, #0x1f
	mov r2, #0
	bl ov1_02136A88
	mov r0, r4
	mov r1, #0x1000
	mov r2, #0x28
	bl ov1_02136AA0
	add r5, r5, #1
	cmp r5, #8
	blt _02126470
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02126568: .word 0x00007FFF

	arm_func_start ov1_0212656C
ov1_0212656C: ; 0x0212656C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	mov r6, r0
	bl sub_0201001C
	ldr r1, [sp, #0xc]
	cmp r1, #0
	mov r1, #0
	str r1, [sp, #0x10]
	addls sp, sp, #0x24
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r1, r0, #0x460
	add r2, r0, #0x48
	ldr r0, [sp, #0xc]
	add r4, r1, #0x1000
	cmp r0, #0
	add r5, r2, #0x1400
	addls sp, sp, #0x24
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov1_0212656C
_021265B8:
	ldr r0, [r6, #0x6fc]
	ldr r3, [r6, #0x6f8]
	str r0, [sp, #0x14]
	str r0, [sp, #0x20]
	ldmia r4, {r0, r2, r7}
	mla r0, r2, r0, r7
	str r0, [r4]
	mov r0, r0, lsr #0x10
	rsb r0, r0, r0, lsl #16
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov lr, r0, lsl #1
	ldr ip, _02126714 ; =FX_SinCosTable_
	ldr r8, [r5]
	add ip, ip, lr, lsl #1
	ldmib r5, {r7, sl}
	mov fp, lr, lsl #1
	str ip, [sp, #0x18]
	umull lr, ip, sl, r8
	mla ip, sl, r7, ip
	ldr sb, [r5, #0xc]
	ldr r2, [r5, #0x10]
	mla ip, sb, r8, ip
	ldr r0, [r5, #0x14]
	adds r2, r2, lr
	adc r8, r0, ip
	mov r7, #0x30000
	umull sb, r7, r8, r7
	ldr r0, [sp, #0x18]
	stmia r5, {r2, r8}
	ldrsh r2, [r0, #2]
	ldr r0, _02126714 ; =FX_SinCosTable_
	mov sb, #0
	mov r8, sb
	ldrsh r0, [r0, fp]
	add sb, r7, #0x20000
	str r3, [sp, #0x1c]
	str r8, [sp]
	mov r8, #0x1000
	str r8, [sp, #4]
	ldr r8, _02126718 ; =0x00007FFF
	mov r1, #0x40
	str r8, [sp, #8]
	smull r7, r8, sb, r2
	mov r7, r7, lsr #0xc
	smull r2, r0, sb, r0
	orr r7, r7, r8, lsl #20
	mov r8, r2, lsr #0xc
	orr r8, r8, r0, lsl #20
	ldr r0, [sp, #0x14]
	add r2, r3, r7
	add r3, r0, r8
	ldr r0, [r6, #0x1bc]
	bl ov1_02136B24
	rsb r2, r7, #0
	mov r1, r2, asr #5
	add r1, r2, r1, lsr #26
	mov r1, r1, asr #6
	mov r2, #0x1000
	mov r7, r0
	bl ov1_02136A40
	rsb r2, r8, #0
	mov r1, r2, asr #5
	add r1, r2, r1, lsr #26
	mov r0, r7
	mov r1, r1, asr #6
	mov r2, #0x1000
	bl ov1_02136A58
	mov r0, r7
	mov r1, #1
	mov r2, #0x1f
	bl ov1_02136A88
	mov r0, r7
	mov r1, #0x1800
	mov r2, #0x800
	bl ov1_02136AA0
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	and r1, r0, #0xff
	str r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	blo _021265B8
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02126714: .word FX_SinCosTable_
_02126718: .word 0x00007FFF

	arm_func_start ov1_0212671C
ov1_0212671C: ; 0x0212671C
	cmp r1, #0
	ldrh r1, [r0, #4]
	bicne r1, r1, #0x200
	orreq r1, r1, #0x200
	strh r1, [r0, #4]
	bx lr
	arm_func_end ov1_0212671C

	arm_func_start ov1_02126734
ov1_02126734: ; 0x02126734
	cmp r1, #0
	ldrh r1, [r0, #4]
	orrne r1, r1, #0x1000
	biceq r1, r1, #0x1000
	strh r1, [r0, #4]
	bx lr
	arm_func_end ov1_02126734

	arm_func_start ov1_0212674C
ov1_0212674C: ; 0x0212674C
	cmp r1, #0
	ldrh r1, [r0, #4]
	bicne r1, r1, #0x800
	orreq r1, r1, #0x800
	strh r1, [r0, #4]
	bx lr
	arm_func_end ov1_0212674C

	arm_func_start ov1_02126764
ov1_02126764: ; 0x02126764
	cmp r1, #0
	ldrh r1, [r0, #4]
	orrne r1, r1, #0x2000
	biceq r1, r1, #0x2000
	strh r1, [r0, #4]
	bx lr
	arm_func_end ov1_02126764

	arm_func_start ov1_0212677C
ov1_0212677C: ; 0x0212677C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r1
	mov r5, r0
	cmp r4, #0x71
	movlo r4, #0x71
	ldr r0, [r5, #0x19c]
	mov r1, r4
	bl ov1_02129B30
	add r0, r5, #0x2f8
	add r0, r0, #0x400
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r2, [r5, #0x198]
	mov r0, #1
	str r0, [r2, #0x14]
	strh r4, [r2, #0x18]
	strh r4, [r2, #0x1a]
	ldr r1, [sp, #8]
	add r0, r5, #0x100
	add r1, r1, #0x10000
	str r1, [r2, #0xc]
	strh r4, [r0, #0x92]
	strh r4, [r0, #0x94]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov1_0212677C

	arm_func_start ov1_021267E8
ov1_021267E8: ; 0x021267E8
	add r0, r0, #0x100
	ldrh r0, [r0, #0x92]
	cmp r0, #0x30
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end ov1_021267E8

	arm_func_start ov1_02126800
ov1_02126800: ; 0x02126800
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xd4
	mov r4, #0x20
	str r3, [sp, #0x10]
	str r4, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	mov sb, r2
	ldrh r2, [sb, #2]
	mov r1, #3
	mov sl, r0
	bl sub_02012FF8
	ldr r2, _021269AC ; =ptr_FUN_overlay_1_021269b8_overlay_1_02140ab4
	mov r0, sl
	add r1, sl, #0x98
	str r2, [sl]
	bl sub_02014218
	mov r0, sl
	bl sub_020142B4
	mov r0, sl
	bl sub_02014364
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	str r0, [sl, #0x10c]
	ldr r1, [sl, #0x10c]
	mov r0, sl
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_0201429C
	mov r0, sl
	bl sub_020142F8
	mov r8, #0
	ldr r6, _021269B0 ; =s_ACT_e_03d_a_02d_NANR_overlay_1_02140ad0
	str sb, [sl, #0x18]
	mov fp, r8
	add r7, sp, #0x74
	mov r4, #0xbc
	mov r5, r8
	arm_func_end ov1_02126800
_021268A4:
	ldrh r2, [sb, #2]
	mov r0, r7
	mov r1, r6
	add r3, r8, #1
	bl OS_SPrintf
	mov r0, r7
	mov r1, r5
	bl sub_02003108
	cmp r0, #0
	beq _021268F8
	mov r0, r4
	bl _Znwm
	cmp r0, #0
	beq _021268F0
	mov r1, r7
	mov r2, #1
	mov r3, fp
	str fp, [sp]
	bl sub_02003578
_021268F0:
	add r1, sl, r8, lsl #2
	str r0, [r1, #0x38]
_021268F8:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #0xc
	blo _021268A4
	ldr r1, _021269B4 ; =s_data_script_battle_effect_e_03d_overlay_1_02140ae8
	ldr r2, [sp, #0xc]
	add r0, sp, #0x14
	bl OS_SPrintf
	ldr r1, [sp, #0x10]
	add r0, sp, #0x14
	bl sub_02003108
	cmp r0, #0
	beq _0212696C
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _02126958
	ldr r1, [sp, #0x10]
	mov r2, #0
	stmia sp, {r1, r2}
	add r1, sp, #0x14
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
_02126958:
	str r0, [sl, #0x90]
	ldr r0, [r0, #0x4c]
	str r0, [sl, #0x94]
	bl sub_02044AC8
	b _02126978
_0212696C:
	mov r0, #0
	str r0, [sl, #0x90]
	str r0, [sl, #0x94]
_02126978:
	ldr r4, [sl, #8]
	cmp r4, #0
	beq _021269A0
	beq _02126998
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
_02126998:
	mov r0, #0
	str r0, [sl, #8]
_021269A0:
	mov r0, sl
	add sp, sp, #0xd4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021269AC: .word ptr_FUN_overlay_1_021269b8_overlay_1_02140ab4
_021269B0: .word s_ACT_e_03d_a_02d_NANR_overlay_1_02140ad0
_021269B4: .word s_data_script_battle_effect_e_03d_overlay_1_02140ae8

	arm_func_start ov1_021269B8
ov1_021269B8: ; 0x021269B8
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _02126A70 ; =ptr_FUN_overlay_1_021269b8_overlay_1_02140ab4
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r6, #0
	mov r5, r6
	arm_func_end ov1_021269B8
_021269DC:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _02126A04
	beq _021269FC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_021269FC:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x1c]
_02126A04:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0xc
	blo _021269DC
	ldr r0, [r4, #0x90]
	cmp r0, #0
	beq _02126A38
	beq _02126A30
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02126A30:
	mov r0, #0
	str r0, [r4, #0x90]
_02126A38:
	mov r5, #0
_02126A3C:
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #0x98]
	bl NNS_GfdFreeLnkTexVram
	add r0, r5, #1
	and r5, r0, #0xff
	cmp r5, #0x1d
	blo _02126A3C
	ldr r0, [r4, #0x10c]
	bl NNS_GfdFreeLnkPlttVram
	mov r0, r4
	bl sub_02013110
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02126A70: .word ptr_FUN_overlay_1_021269b8_overlay_1_02140ab4

	arm_func_start ov1_02126A74
ov1_02126A74: ; 0x02126A74
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _02126B34 ; =ptr_FUN_overlay_1_021269b8_overlay_1_02140ab4
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r6, #0
	mov r5, r6
	arm_func_end ov1_02126A74
_02126A98:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _02126AC0
	beq _02126AB8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02126AB8:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x1c]
_02126AC0:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0xc
	blo _02126A98
	ldr r0, [r4, #0x90]
	cmp r0, #0
	beq _02126AF4
	beq _02126AEC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02126AEC:
	mov r0, #0
	str r0, [r4, #0x90]
_02126AF4:
	mov r5, #0
_02126AF8:
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #0x98]
	bl NNS_GfdFreeLnkTexVram
	add r0, r5, #1
	and r5, r0, #0xff
	cmp r5, #0x1d
	blo _02126AF8
	ldr r0, [r4, #0x10c]
	bl NNS_GfdFreeLnkPlttVram
	mov r0, r4
	bl sub_02013110
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02126B34: .word ptr_FUN_overlay_1_021269b8_overlay_1_02140ab4

	arm_func_start ov1_02126B38
ov1_02126B38: ; 0x02126B38
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl sub_02011D60
	add r0, r4, #0x18
	ldr r1, _02126BD0 ; =ptr_FUN_overlay_1_02126bd4_overlay_1_02140b38
	add r0, r0, #0x400
	str r1, [r4]
	bl sub_020049A4
	add r0, r4, #0x440
	bl sub_020039B8
	mov r1, #0x3f
	strb r5, [r4, #0x1f0]
	mov r0, #0
	str r0, [r4, #0x184]
	str r0, [r4, #0x190]
	add r0, r4, #0x100
	mov r2, #1
	strh r2, [r0, #0x8e]
	add r0, r4, #0x400
	mov r3, #0x7c00
	strh r3, [r0, #0x20]
	mov r2, #0x400
	str r2, [r4, #0x41c]
	mov r2, #8
	str r2, [r4, #0x42c]
	mov r2, #0x8000
	str r2, [r4, #0x438]
	str r1, [r4, #0x428]
	strh r3, [r0, #0x48]
	rsb r0, r1, #0x440
	str r0, [r4, #0x444]
	mov r0, #0x1f
	str r0, [r4, #0x454]
	mov r1, #0x3e
	mov r0, r4
	str r1, [r4, #0x450]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02126BD0: .word ptr_FUN_overlay_1_02126bd4_overlay_1_02140b38
	arm_func_end ov1_02126B38

	arm_func_start ov1_02126BD4
ov1_02126BD4: ; 0x02126BD4
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x440
	bl sub_020039E8
	add r0, r4, #0x18
	add r0, r0, #0x400
	bl sub_020049D4
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02126BD4

	arm_func_start ov1_02126C00
ov1_02126C00: ; 0x02126C00
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x440
	bl sub_020039E8
	add r0, r4, #0x18
	add r0, r0, #0x400
	bl sub_020049D4
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02126C00

	arm_func_start ov1_02126C34
ov1_02126C34: ; 0x02126C34
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x5c
	mov r4, r0
	ldr r0, [r4, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x5c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r4, #0x190]
	cmp r1, #0
	beq _02126D04
	ldr r0, [r4, #0x194]
	cmp r0, #0
	beq _02126C88
	cmp r0, #1
	beq _02126CB0
	cmp r0, #2
	beq _02126CDC
	b _02126D04
	arm_func_end ov1_02126C34
_02126C88:
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02126D04
	mov r0, r4
	bl ov1_02127300
	add sp, sp, #0x5c
	ldmia sp!, {r3, r4, r5, r6, pc}
_02126CB0:
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02126D04
	mov r0, r4
	bl ov1_02127300
	add sp, sp, #0x5c
	ldmia sp!, {r3, r4, r5, r6, pc}
_02126CDC:
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02126D04
	mov r0, r4
	bl ov1_02127300
	add sp, sp, #0x5c
	ldmia sp!, {r3, r4, r5, r6, pc}
_02126D04:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x88]
	add r1, r1, #1
	strh r1, [r0, #0x88]
	ldr r0, [r4, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x5c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r0, r4
	bl sub_02012340
	mov r0, r4
	bl sub_020123AC
	mov r0, r4
	bl sub_020123FC
	mov r0, r4
	bl sub_020124BC
	add r0, r4, #0x198
	mov r1, #0x1000
	bl NNS_G2dTickCellAnimation
	ldr r1, [r4, #0x198]
	mov r0, r4
	ldr r2, [r1]
	add r1, r4, #0x100
	ldrh r2, [r2]
	strh r2, [r1, #0x8a]
	bl sub_02012648
	mov r0, r4
	bl sub_020126C8
	ldr r3, [r4, #0x20]
	ldr r1, [r4, #0x8c]
	ldr r0, [r4, #0xa0]
	str r3, [sp, #0x30]
	add r0, r1, r0
	ldr r1, [r4, #0xb0]
	str r3, [sp, #0x20]
	add r1, r1, r0
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0xc4]
	sub r1, r2, r1
	str r3, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r0, [r4, #0x190]
	str r1, [sp, #0x34]
	str r1, [sp, #0x24]
	cmp r0, #0
	beq _02126E0C
	ldr ip, [r0, #0x20]
	ldr r5, [r4, #0x20]
	ldr r6, [r0, #0x24]
	ldr r3, [r4, #0x24]
	add r2, r5, ip
	add r1, r3, r6
	ldr r0, [r4, #0xc4]
	str ip, [sp, #0x18]
	str r2, [r0, #0x18]
	str r6, [sp, #0x1c]
	str r5, [sp, #0x28]
	str r3, [sp, #0x2c]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [r0, #0x1c]
_02126E0C:
	ldr r0, [r4, #0x184]
	ldr r0, [r0, #0x18]
	ldr r0, [r0, #4]
	cmp r0, #2
	bne _02126E58
	ldrh r1, [r4, #0x72]
	mov r0, r4
	bl ov1_02127484
	ldrb r1, [r4, #0x18c]
	cmp r1, r0
	beq _02126E58
	ldrh r1, [r4, #0x72]
	mov r0, r4
	bl ov1_02127484
	strb r0, [r4, #0x18c]
	and r2, r0, #0xff
	ldrb r1, [r4, #0x18d]
	mov r0, r4
	bl ov1_021273A0
_02126E58:
	ldr r1, [r4, #0x184]
	add r0, sp, #0x44
	ldr r3, [r1, #0x18]
	add r5, sp, #0x50
	ldrsb r6, [r3, #0x10]
	ldrsb r2, [r3, #0x11]
	ldrb r1, [r3, #0x12]
	mov r6, r6, lsl #0xc
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	str r6, [sp, #0x44]
	str r2, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldr ip, [r4, #0x11c]
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x54]
	smull r5, r2, r1, ip
	mov r1, r5, lsr #0xc
	orr r1, r1, r2, lsl #20
	str r1, [sp, #0x50]
	ldr r2, [r4, #0x134]
	smull r6, r5, r0, r2
	mov r0, r6, lsr #0xc
	orr r0, r0, r5, lsl #20
	str r0, [sp, #0x54]
	ldr r3, [r3, #4]
	cmp r3, #1
	bne _02126F14
	ldrh r3, [r4, #0x72]
	ldr r5, _02126F8C ; =FX_SinCosTable_
	mov r3, r3, asr #4
	mov r6, r3, lsl #1
	add r3, r6, #1
	mov lr, r3, lsl #1
	mov r3, r6, lsl #1
	ldrsh lr, [r5, lr]
	ldrsh r3, [r5, r3]
	smull lr, r5, r1, lr
	smull r3, r1, r0, r3
	mov lr, lr, lsr #0xc
	mov r0, r3, lsr #0xc
	orr lr, lr, r5, lsl #20
	orr r0, r0, r1, lsl #20
	str lr, [sp, #0x50]
	str r0, [sp, #0x54]
_02126F14:
	ldr r0, [sp, #0x58]
	cmp ip, r2
	movgt ip, r2
	smull r3, r2, r0, ip
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #20
	str r0, [sp, #0x58]
	ldr r2, [r4, #0xc4]
	ldr r1, [sp, #0x50]
	ldr ip, [r2, #0x18]
	ldr r3, [r2, #0x1c]
	add r2, r1, ip
	ldr r0, [sp, #0x54]
	add lr, sp, #0x38
	add r1, r0, r3
	add r0, sp, #0x50
	str r2, [sp, #0x50]
	str r1, [sp, #0x54]
	ldmia r0, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	str ip, [sp]
	str r1, [r4, #0x430]
	str r0, [r4, #0x434]
	ldr r0, [sp, #0x40]
	str r3, [sp, #4]
	str r0, [r4, #0x438]
	add sp, sp, #0x5c
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02126F8C: .word FX_SinCosTable_

	arm_func_start ov1_02126F90
ov1_02126F90: ; 0x02126F90
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, [r0, #0x190]
	cmp r2, #0
	beq _02126FEC
	ldr r1, [r0, #0x194]
	cmp r1, #1
	bne _02126FEC
	ldr r1, [r2, #0x18c]
	cmp r1, #4
	ldrne r1, [r0, #0x184]
	ldrne r1, [r1, #0x94]
	cmpne r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, _0212700C ; =0x000FFFFF
	add r0, r0, #0x3f4
	bl sub_02044C9C
	ldmia sp!, {r3, pc}
	arm_func_end ov1_02126F90
_02126FEC:
	ldr r1, [r0, #0x184]
	ldr r1, [r1, #0x94]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, _0212700C ; =0x000FFFFF
	add r0, r0, #0x3f4
	bl sub_02044C9C
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212700C: .word 0x000FFFFF

	arm_func_start ov1_02127010
ov1_02127010: ; 0x02127010
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x184]
	mov r4, r1
	ldr r1, [r0, #0x18]
	ldr r0, [r5, #0x104]
	ldrh r1, [r1, #2]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r0]
	ldrb r1, [r5, #0x18d]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r1, [r5, #0xc4]
	ldr r3, [r0, #4]
	mov r2, #0
	str r3, [r1, #0x2c]
	str r2, [r1, #0x30]
	ldr r2, [r0, #8]
	add r0, r5, #0x100
	str r2, [r1, #0x38]
	ldrh r0, [r0, #0x8a]
	strh r0, [r1, #0x2a]
	ldrb r0, [r5, #0x108]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x11c]
	str r0, [r1, #0x20]
	ldr r0, [r5, #0x134]
	str r0, [r1, #0x24]
	ldr r0, [r5, #0x184]
	ldr r0, [r0, #0x18]
	ldr r0, [r0, #4]
	cmp r0, #1
	ldreqh r0, [r5, #0x72]
	streqh r0, [r1, #0x28]
	mov r0, r1
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	strh r0, [r5, #6]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_02127010

	arm_func_start ov1_021270B8
ov1_021270B8: ; 0x021270B8
	stmdb sp!, {r3, lr}
	add r2, r0, #0x400
	ldrh r2, [r2, #0x3c]
	tst r2, #2
	ldmeqia sp!, {r3, pc}
	ldrh r2, [r0, #4]
	tst r2, #0x100
	moveq r2, #1
	movne r2, #0
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0x18
	add r0, r0, #0x400
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end ov1_021270B8

	arm_func_start ov1_021270FC
ov1_021270FC: ; 0x021270FC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	mov r4, r1
	bl sub_02011FF4
	mov r0, r5
	str r4, [r5, #0x184]
	add r3, r5, #0x100
	mov r2, #0
	mov r1, #7
	strh r2, [r3, #0x88]
	bl ov1_021273A0
	mov r2, #0x1000
	mov r0, r5
	mov r3, r2
	mov r1, #0
	bl sub_02012A3C
	mov r0, r5
	mov r1, #0
	mov r2, #0x1f
	bl sub_020129F4
	ldr r2, [r5, #0xc4]
	mov r1, #0
	mov r0, r5
	strh r1, [r2, #0x28]
	bl sub_020128EC
	mov r0, r5
	bl sub_0201287C
	ldr r1, [r4, #0x18]
	add r0, sp, #0
	ldrsb r3, [r1, #0x10]
	ldrsb r2, [r1, #0x11]
	ldrb r1, [r1, #0x12]
	mov r3, r3, lsl #0xc
	str r3, [sp]
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	add r3, sp, #0xc
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #0x14]
	cmp r0, #0
	mov r0, r5
	bne _021271C0
	mov r1, #0
	bl ov1_02127388
	b _021271C8
	arm_func_end ov1_021270FC
_021271C0:
	mov r1, #1
	bl ov1_02127388
_021271C8:
	mov r1, #0
	mov r0, r5
	mov r2, #1
	str r1, [r5, #0xc]
	bl sub_02012860
	mov r1, #0
	mov r0, r5
	mov r2, r1
	bl sub_020127D0
	add r0, r5, #0x100
	mov r1, #0
	strh r1, [r0, #0x8a]
	strb r1, [r5, #0x18c]
	mov r0, #7
	strb r0, [r5, #0x18d]
	ldr r0, [r4, #0x94]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r5, #0x3f4
	add r1, r5, #0x1f4
	mov r2, #0x80
	bl sub_02044B48
	ldr r0, [r5, #0x3f8]
	ldr r2, _02127278 ; =s_initialize_overlay_1_02140b4c
	sub r3, r0, #4
	str r3, [r5, #0x3f8]
	ldrb r1, [r5, #0x1f0]
	add r0, r5, #0x3f4
	str r1, [r3]
	ldr r1, [r4, #0x94]
	mov r3, #1
	bl sub_02046040
	ldr r0, [r5, #0x3f8]
	ldr r2, _0212727C ; =s_proc_overlay_1_02140b58
	sub r3, r0, #4
	str r3, [r5, #0x3f8]
	ldrb r1, [r5, #0x1f0]
	add r0, r5, #0x3f4
	str r1, [r3]
	ldr r1, [r4, #0x94]
	bl sub_02045A18
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02127278: .word s_initialize_overlay_1_02140b4c
_0212727C: .word s_proc_overlay_1_02140b58

	arm_func_start thunk_FUN_020120b0
thunk_FUN_020120b0: ; 0x02127280
	ldr ip, _02127288 ; =FUN_020120B0
	bx ip
	.align 2, 0
_02127288: .word sub_020120B0
	arm_func_end thunk_FUN_020120b0

	arm_func_start ov1_0212728C
ov1_0212728C: ; 0x0212728C
	ldr r3, [r0, #0x104]
	cmp r3, #0
	movne r3, #1
	moveq r3, #0
	cmp r3, #0
	strne r1, [r0, #0x190]
	strne r2, [r0, #0x194]
	bx lr
	arm_func_end ov1_0212728C

	arm_func_start ov1_021272AC
ov1_021272AC: ; 0x021272AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x184]
	cmp r0, #0
	ldrne r0, [r0, #0x94]
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x3f4
	bl sub_02044B84
	ldr r0, [r4, #0x3f8]
	ldr r2, _021272FC ; =s_vanish_overlay_1_02140b60
	sub r3, r0, #4
	str r3, [r4, #0x3f8]
	ldrb r1, [r4, #0x1f0]
	add r0, r4, #0x3f4
	str r1, [r3]
	ldr r1, [r4, #0x184]
	ldr r1, [r1, #0x94]
	bl sub_02045A18
	ldmia sp!, {r4, pc}
	.align 2, 0
_021272FC: .word s_vanish_overlay_1_02140b60
	arm_func_end ov1_021272AC

	arm_func_start ov1_02127300
ov1_02127300: ; 0x02127300
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x184]
	cmp r0, #0
	ldrne r0, [r0, #0x94]
	cmpne r0, #0
	beq _02127350
	add r0, r4, #0x3f4
	bl sub_02044B84
	ldr r0, [r4, #0x3f8]
	ldr r2, _0212736C ; =s_terminate_overlay_1_02140b68
	sub r3, r0, #4
	str r3, [r4, #0x3f8]
	ldrb r1, [r4, #0x1f0]
	add r0, r4, #0x3f4
	str r1, [r3]
	ldr r1, [r4, #0x184]
	mov r3, #1
	ldr r1, [r1, #0x94]
	bl sub_02046040
	arm_func_end ov1_02127300
_02127350:
	mov r0, r4
	bl thunk_FUN_020120b0
	add r0, r4, #0x100
	mov r1, #0
	strh r1, [r0, #0x88]
	str r1, [r4, #0x190]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212736C: .word s_terminate_overlay_1_02140b68

	arm_func_start ov1_02127370
ov1_02127370: ; 0x02127370
	cmp r1, #0
	ldrh r1, [r0, #4]
	bicne r1, r1, #0x200
	orreq r1, r1, #0x200
	strh r1, [r0, #4]
	bx lr
	arm_func_end ov1_02127370

	arm_func_start ov1_02127388
ov1_02127388: ; 0x02127388
	cmp r1, #0
	ldrh r1, [r0, #4]
	bicne r1, r1, #0x100
	orreq r1, r1, #0x100
	strh r1, [r0, #4]
	bx lr
	arm_func_end ov1_02127388

	arm_func_start ov1_021273A0
ov1_021273A0: ; 0x021273A0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x184]
	mov r4, r1
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x1c]
	mov r1, r2
	ldr r0, [r0, #0xb8]
	bl NNS_G2dGetAnimSequenceByIdx
	mov r6, r0
	ldr r0, [r5, #0x184]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldrne r0, [r0, #8]
	mov r1, r6
	ldrne r2, [r0, #0xb8]
	add r0, r5, #0x198
	moveq r2, #0
	bl NNS_G2dInitCellAnimation
	mov r0, #1
	str r0, [r5, #0x1a4]
	strb r4, [r5, #0x18d]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_021273A0

	arm_func_start ov1_02127408
ov1_02127408: ; 0x02127408
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x184]
	mov r4, r1
	ldr r2, [r2, #0x18]
	ldr r2, [r2, #4]
	cmp r2, #2
	bne _02127448
	ldrh r1, [r5, #0x72]
	bl ov1_02127484
	strb r0, [r5, #0x18c]
	and r2, r0, #0xff
	mov r0, r5
	mov r1, r4
	bl ov1_021273A0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_02127408
_02127448:
	mov r2, #0
	bl ov1_021273A0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02127454
ov1_02127454: ; 0x02127454
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x184]
	ldr r3, [r0]
	ldr r3, [r3, #0x14]
	blx r3
	mov r1, r0
	mov r0, r4
	bl ov1_02127408
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02127454

	arm_func_start ov1_0212747C
ov1_0212747C: ; 0x0212747C
	ldr r0, [r0, #0x1a4]
	bx lr
	arm_func_end ov1_0212747C

	arm_func_start ov1_02127484
ov1_02127484: ; 0x02127484
	cmp r1, #0x4000
	movlo r0, #3
	bxlo lr
	cmp r1, #0x8000
	movlo r0, #0
	bxlo lr
	cmp r1, #0xc000
	movlo r0, #1
	movhs r0, #2
	bx lr
	arm_func_end ov1_02127484

	arm_func_start ov1_021274AC
ov1_021274AC: ; 0x021274AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_021274D4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021274AC

	arm_func_start ov1_021274C0
ov1_021274C0: ; 0x021274C0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02127654
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021274C0

	arm_func_start ov1_021274D4
ov1_021274D4: ; 0x021274D4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x6c
	bl _Znwm
	movs r5, r0
	beq _02127518
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _0212763C ; =s_BEX_overlay_1_02140b74
	ldr r2, _02127640 ; =s_data_interface_i034_LZ_bin_overlay_1_02140b78
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
	arm_func_end ov1_021274D4
_02127518:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _0212753C
	mov r2, #0
	ldr r1, _02127644 ; =s_BEX_i034_00_NCBR_overlay_1_02140b94
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_0212753C:
	str r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r4, #0x10]
	mov r1, r1, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r4]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02127590
	mov r2, #0
	ldr r1, _02127648 ; =s_BEX_i034_NCLR_overlay_1_02140ba8
	mov r3, r2
	bl sub_02007AC0
_02127590:
	str r0, [r4, #4]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r4, #0x14]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #4]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r4, #4]
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _021275EC
	mov r2, #0
	ldr r1, _0212764C ; =s_BEX_i034_00_NCER_overlay_1_02140bb8
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_021275EC:
	str r0, [r4, #8]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02127604
	bl sub_02008788
_02127604:
	mov r2, #0
	ldr r1, _02127650 ; =s_BEX_i034_00_cac_overlay_1_02140bcc
	mov r3, r2
	str r0, [r4, #0xc]
	bl sub_0200887C
	cmp r5, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0212763C: .word s_BEX_overlay_1_02140b74
_02127640: .word s_data_interface_i034_LZ_bin_overlay_1_02140b78
_02127644: .word s_BEX_i034_00_NCBR_overlay_1_02140b94
_02127648: .word s_BEX_i034_NCLR_overlay_1_02140ba8
_0212764C: .word s_BEX_i034_00_NCER_overlay_1_02140bb8
_02127650: .word s_BEX_i034_00_cac_overlay_1_02140bcc

	arm_func_start ov1_02127654
ov1_02127654: ; 0x02127654
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4]
	cmp r5, #0
	beq _02127684
	beq _0212767C
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_02127654
_0212767C:
	mov r0, #0
	str r0, [r4]
_02127684:
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _021276AC
	beq _021276A4
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
_021276A4:
	mov r0, #0
	str r0, [r4, #4]
_021276AC:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021276D0
	beq _021276C8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_021276C8:
	mov r0, #0
	str r0, [r4, #8]
_021276D0:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _021276F8
	beq _021276F0
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_021276F0:
	mov r0, #0
	str r0, [r4, #0xc]
_021276F8:
	ldr r0, [r4, #0x10]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r4, #0x14]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212770C
ov1_0212770C: ; 0x0212770C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	mov r0, #0x4c
	str r1, [r4, #8]
	bl _Znwm
	cmp r0, #0
	beq _02127734
	bl sub_02005150
	arm_func_end ov1_0212770C
_02127734:
	mov r1, r0
	str r0, [r4, #4]
	mov r2, #0x400
	mov r0, r4
	str r2, [r1, #4]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212774C
ov1_0212774C: ; 0x0212774C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02127778
	beq _02127770
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_0212774C
_02127770:
	mov r0, #0
	str r0, [r4, #4]
_02127778:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02127780
ov1_02127780: ; 0x02127780
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r4, #0xe]
	add r0, r0, #1
	strh r0, [r4, #0xe]
	ldrh r2, [r4, #0xe]
	mov r0, #0
	cmp r2, #0x10
	strhi r0, [r4, #0x14]
	bhi _021277F4
	mov r1, #0x8000
	mov r3, #0x10
	bl sub_02007068
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #4
	ldr r0, _0212780C ; =FX_SinCosTable_
	mov r1, r1, lsl #2
	ldrsh r1, [r0, r1]
	mov r0, r1, asr #0x1f
	mov r0, r0, lsl #0x10
	mov r2, r1, lsl #0x10
	orr r0, r0, r1, lsr #16
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r4, #0x14]
	arm_func_end ov1_02127780
_021277F4:
	ldrh r1, [r4, #0xe]
	ldrh r0, [r4, #0xc]
	cmp r1, r0
	movhs r0, #0
	strhs r0, [r4, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212780C: .word FX_SinCosTable_

	arm_func_start ov1_02127810
ov1_02127810: ; 0x02127810
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #8]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r3, [r0, #0x18]
	ldr r2, [r0, #4]
	str r3, [r2, #0x18]
	ldr ip, [r0, #0x1c]
	ldr r3, [r0, #0x14]
	ldr r2, [r0, #4]
	sub r3, ip, r3
	str r3, [r2, #0x1c]
	ldr r0, [r0, #4]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end ov1_02127810

	arm_func_start ov1_02127854
ov1_02127854: ; 0x02127854
	str r1, [r0]
	ldr ip, [r0, #4]
	ldr r3, [r1]
	mov r2, #0
	str r3, [ip, #0x2c]
	str r2, [ip, #0x30]
	ldr r3, [r1, #4]
	ldr r2, [r0, #4]
	str r3, [r2, #0x34]
	ldr r1, [r1, #8]
	ldr r0, [r0, #4]
	str r1, [r0, #0x38]
	bx lr
	arm_func_end ov1_02127854

	arm_func_start ov1_02127888
ov1_02127888: ; 0x02127888
	ldr r3, [r0]
	cmp r3, #0
	cmpne r2, #0
	bxeq lr
	mov r3, #1
	str r3, [r0, #8]
	strh r2, [r0, #0xc]
	mov r2, #0
	strh r2, [r0, #0xe]
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	strh r1, [r0, #0x2a]
	bx lr
	arm_func_end ov1_02127888

	arm_func_start ov1_021278BC
ov1_021278BC: ; 0x021278BC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	add r2, r4, r0
	ldr r1, [r5, #4]
	add r0, r2, #1
	str r2, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_021278BC

	arm_func_start ov1_021278E8
ov1_021278E8: ; 0x021278E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02127910
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021278E8

	arm_func_start ov1_021278FC
ov1_021278FC: ; 0x021278FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02127A90
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021278FC

	arm_func_start ov1_02127910
ov1_02127910: ; 0x02127910
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x6c
	bl _Znwm
	movs r5, r0
	beq _02127954
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _02127A78 ; =s_BSW_overlay_1_02140bdc
	ldr r2, _02127A7C ; =s_data_interface_i035_LZ_bin_overlay_1_02140be0
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
	arm_func_end ov1_02127910
_02127954:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02127978
	mov r2, #0
	ldr r1, _02127A80 ; =s_BSW_i035_00_NCBR_overlay_1_02140bfc
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_02127978:
	str r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r4, #0x10]
	mov r1, r1, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r4]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _021279CC
	mov r2, #0
	ldr r1, _02127A84 ; =s_BSW_i035_NCLR_overlay_1_02140c10
	mov r3, r2
	bl sub_02007AC0
_021279CC:
	str r0, [r4, #4]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r4, #0x14]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #4]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r4, #4]
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02127A28
	mov r2, #0
	ldr r1, _02127A88 ; =s_BSW_i035_00_NCER_overlay_1_02140c20
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_02127A28:
	str r0, [r4, #8]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02127A40
	bl sub_02008788
_02127A40:
	mov r2, #0
	ldr r1, _02127A8C ; =s_BSW_i035_00_cac_overlay_1_02140c34
	mov r3, r2
	str r0, [r4, #0xc]
	bl sub_0200887C
	cmp r5, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02127A78: .word s_BSW_overlay_1_02140bdc
_02127A7C: .word s_data_interface_i035_LZ_bin_overlay_1_02140be0
_02127A80: .word s_BSW_i035_00_NCBR_overlay_1_02140bfc
_02127A84: .word s_BSW_i035_NCLR_overlay_1_02140c10
_02127A88: .word s_BSW_i035_00_NCER_overlay_1_02140c20
_02127A8C: .word s_BSW_i035_00_cac_overlay_1_02140c34

	arm_func_start ov1_02127A90
ov1_02127A90: ; 0x02127A90
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4]
	cmp r5, #0
	beq _02127AC0
	beq _02127AB8
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_02127A90
_02127AB8:
	mov r0, #0
	str r0, [r4]
_02127AC0:
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _02127AE8
	beq _02127AE0
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
_02127AE0:
	mov r0, #0
	str r0, [r4, #4]
_02127AE8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02127B0C
	beq _02127B04
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02127B04:
	mov r0, #0
	str r0, [r4, #8]
_02127B0C:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02127B34
	beq _02127B2C
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_02127B2C:
	mov r0, #0
	str r0, [r4, #0xc]
_02127B34:
	ldr r0, [r4, #0x10]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r4, #0x14]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02127B48
ov1_02127B48: ; 0x02127B48
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	mov r0, #0x4c
	str r1, [r4, #8]
	bl _Znwm
	cmp r0, #0
	beq _02127B70
	bl sub_02005150
	arm_func_end ov1_02127B48
_02127B70:
	mov r1, r0
	str r0, [r4, #4]
	mov r2, #0x400
	mov r0, r4
	str r2, [r1, #4]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02127B88
ov1_02127B88: ; 0x02127B88
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	ldrh r1, [r4, #0x14]
	ldr r0, [r0, #0xc]
	bl sub_02008B80
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02127BC4
	beq _02127BBC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_02127B88
_02127BBC:
	mov r0, #0
	str r0, [r4, #4]
_02127BC4:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02127BCC
ov1_02127BCC: ; 0x02127BCC
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, [r0]
	ldrh r1, [r0, #0x14]
	ldr r0, [r2, #0xc]
	bl sub_02008A38
	ldmia sp!, {r3, pc}
	arm_func_end ov1_02127BCC

	arm_func_start ov1_02127BF0
ov1_02127BF0: ; 0x02127BF0
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #8]
	mov r5, r1
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	ldrh r1, [r4, #0x14]
	ldr r0, [r0, #0xc]
	bl sub_02008828
	ldr r2, [r4, #4]
	mov r1, r5
	strh r0, [r2, #0x2a]
	ldr r3, [r4, #0xc]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #4]
	str r3, [sp]
	str r3, [r0, #0x18]
	str r2, [r0, #0x1c]
	ldr r0, [r4, #4]
	str r2, [sp, #4]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_02127BF0

	arm_func_start ov1_02127C60
ov1_02127C60: ; 0x02127C60
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4]
	ldr r3, [r4, #4]
	ldr r0, [r1]
	mov r2, #0
	str r0, [r3, #0x2c]
	str r2, [r3, #0x30]
	ldr r3, [r1, #4]
	ldr r0, [r4, #4]
	str r3, [r0, #0x34]
	ldr r3, [r1, #8]
	ldr r0, [r4, #4]
	str r3, [r0, #0x38]
	ldr r0, [r1, #0xc]
	mov r1, #1
	bl sub_02008A80
	strh r0, [r4, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02127C60

	arm_func_start ov1_02127CAC
ov1_02127CAC: ; 0x02127CAC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	add r2, r4, r0
	ldr r1, [r5, #4]
	add r0, r2, #1
	str r2, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_02127CAC

	arm_func_start ov1_02127CD8
ov1_02127CD8: ; 0x02127CD8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02127D00
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02127CD8

	arm_func_start ov1_02127CEC
ov1_02127CEC: ; 0x02127CEC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02127DB8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02127CEC

	arm_func_start ov1_02127D00
ov1_02127D00: ; 0x02127D00
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02127D44
	ldr r2, _02127D8C ; =s_BHM_i027_NCLR_overlay_1_02140c78
	ldr r1, _02127D90 ; =s_BHM_i027_00_NCER_overlay_1_02140c88
	str r2, [sp]
	ldr ip, _02127D94 ; =s_BHM_i027_00_cac_overlay_1_02140c9c
	str r1, [sp, #4]
	ldr r1, _02127D98 ; =s_BHM_overlay_1_02140c44
	ldr r2, _02127D9C ; =s_data_interface_i027_LZ_bin_overlay_1_02140c48
	ldr r3, _02127DA0 ; =s_BHM_i027_00_NCBR_overlay_1_02140c64
	str ip, [sp, #8]
	bl sub_0201AAE0
	arm_func_end ov1_02127D00
_02127D44:
	str r0, [r4]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02127D80
	ldr r2, _02127DA4 ; =s_BHM_i068_NCLR_overlay_1_02140cdc
	ldr r1, _02127DA8 ; =s_BHM_i068_00_NCER_overlay_1_02140cec
	str r2, [sp]
	ldr ip, _02127DAC ; =s_BHM_i068_00_cac_overlay_1_02140d00
	str r1, [sp, #4]
	ldr r1, _02127D98 ; =s_BHM_overlay_1_02140c44
	ldr r2, _02127DB0 ; =s_data_interface_i068_LZ_bin_overlay_1_02140cac
	ldr r3, _02127DB4 ; =s_BHM_i068_00_NCBR_overlay_1_02140cc8
	str ip, [sp, #8]
	bl sub_0201AAE0
_02127D80:
	str r0, [r4, #4]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02127D8C: .word s_BHM_i027_NCLR_overlay_1_02140c78
_02127D90: .word s_BHM_i027_00_NCER_overlay_1_02140c88
_02127D94: .word s_BHM_i027_00_cac_overlay_1_02140c9c
_02127D98: .word s_BHM_overlay_1_02140c44
_02127D9C: .word s_data_interface_i027_LZ_bin_overlay_1_02140c48
_02127DA0: .word s_BHM_i027_00_NCBR_overlay_1_02140c64
_02127DA4: .word s_BHM_i068_NCLR_overlay_1_02140cdc
_02127DA8: .word s_BHM_i068_00_NCER_overlay_1_02140cec
_02127DAC: .word s_BHM_i068_00_cac_overlay_1_02140d00
_02127DB0: .word s_data_interface_i068_LZ_bin_overlay_1_02140cac
_02127DB4: .word s_BHM_i068_00_NCBR_overlay_1_02140cc8

	arm_func_start ov1_02127DB8
ov1_02127DB8: ; 0x02127DB8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5]
	cmp r4, #0
	beq _02127DE8
	beq _02127DE0
	mov r0, r4
	bl sub_0201AB14
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov1_02127DB8
_02127DE0:
	mov r0, #0
	str r0, [r5]
_02127DE8:
	ldr r4, [r5, #4]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02127E08
	mov r0, r4
	bl sub_0201AB14
	mov r0, r4
	bl _ZdlPv
_02127E08:
	mov r0, #0
	str r0, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02127E14
ov1_02127E14: ; 0x02127E14
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	mov r0, #0x4c
	str r1, [r4, #4]
	bl _Znwm
	cmp r0, #0
	beq _02127E3C
	bl sub_02005150
	arm_func_end ov1_02127E14
_02127E3C:
	ldr r1, _02127E88 ; =0x000003FF
	str r0, [r4, #0x1c]
	str r1, [r0, #4]
	ldr r1, [r4, #0x1c]
	mov r2, #1
	mov r0, #0x4c
	strh r2, [r1, #0x2a]
	bl _Znwm
	cmp r0, #0
	beq _02127E68
	bl sub_02005150
_02127E68:
	str r0, [r4, #0x20]
	mov r1, #0x400
	str r1, [r0, #4]
	ldr r1, [r4, #0x20]
	mov r2, #1
	mov r0, r4
	strh r2, [r1, #0x2a]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02127E88: .word 0x000003FF

	arm_func_start ov1_02127E8C
ov1_02127E8C: ; 0x02127E8C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02127EB8
	beq _02127EB0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_02127E8C
_02127EB0:
	mov r0, #0
	str r0, [r4, #0x1c]
_02127EB8:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02127EDC
	beq _02127ED4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02127ED4:
	mov r0, #0
	str r0, [r4, #0x20]
_02127EDC:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02127EE4
ov1_02127EE4: ; 0x02127EE4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0xa]
	mov r4, #1
	tst r0, #1
	beq _02127F44
	ldr r6, [r5, #0x24]
	ldrh r7, [r5, #0x2c]
	mov r0, r6
	bl sub_020089EC
	mov r0, r6
	mov r1, r7
	bl sub_02008828
	strh r0, [r5, #0x18]
	mov r0, r6
	mov r1, r7
	bl sub_02008860
	cmp r0, #0
	moveq r0, r4
	movne r0, #0
	and r4, r4, r0
	arm_func_end ov1_02127EE4
_02127F44:
	ldrb r0, [r5, #0xa]
	tst r0, #2
	beq _02127F8C
	ldr r6, [r5, #0x28]
	ldrh r7, [r5, #0x2e]
	mov r0, r6
	bl sub_020089EC
	mov r0, r6
	mov r1, r7
	bl sub_02008828
	strh r0, [r5, #0x1a]
	mov r0, r6
	mov r1, r7
	bl sub_02008860
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r4, r4, r0
_02127F8C:
	mov r0, #0x1f
	strb r0, [r5, #0xb]
	mov r0, #0x1000
	str r0, [r5, #0xc]
	cmp r4, #0
	movne r0, #0
	strne r0, [r5, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_02127FAC
ov1_02127FAC: ; 0x02127FAC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0xa]
	tst r0, #1
	beq _0212801C
	ldrb r2, [r5, #0xb]
	ldr r0, [r5, #0x1c]
	str r2, [r0, #0x14]
	ldr r2, [r5, #0xc]
	str r2, [r0, #0x20]
	str r2, [r0, #0x24]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	str r2, [sp, #8]
	str r2, [r0, #0x18]
	str r3, [r0, #0x1c]
	ldrh r2, [r5, #0x18]
	str r3, [sp, #0xc]
	strh r2, [r0, #0x2a]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	arm_func_end ov1_02127FAC
_0212801C:
	ldrb r0, [r5, #0xa]
	tst r0, #2
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r2, [r5, #0xb]
	ldr r0, [r5, #0x20]
	mov r1, r4
	str r2, [r0, #0x14]
	ldr r2, [r5, #0xc]
	str r2, [r0, #0x20]
	str r2, [r0, #0x24]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	str r2, [sp]
	str r2, [r0, #0x18]
	str r3, [r0, #0x1c]
	ldrh r2, [r5, #0x1a]
	str r3, [sp, #4]
	strh r2, [r0, #0x2a]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212807C
ov1_0212807C: ; 0x0212807C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	str r5, [r4]
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0, #0xc]
	mov r2, #0
	str r0, [r4, #0x24]
	bl sub_02008A80
	strh r0, [r4, #0x2c]
	ldr r0, [r5, #4]
	mov r1, #1
	ldr r0, [r0, #0xc]
	mov r2, #0
	str r0, [r4, #0x28]
	bl sub_02008A80
	strh r0, [r4, #0x2e]
	ldr r0, [r4]
	ldr r1, [r4, #0x1c]
	ldr r2, [r0]
	mov r3, #0
	ldr r0, [r2]
	str r0, [r1, #0x2c]
	str r3, [r1, #0x30]
	ldr r1, [r2, #4]
	ldr r0, [r4, #0x1c]
	str r1, [r0, #0x34]
	ldr r1, [r2, #8]
	ldr r0, [r4, #0x1c]
	str r1, [r0, #0x38]
	ldr r0, [r4]
	ldr r1, [r4, #0x20]
	ldr r2, [r0, #4]
	ldr r0, [r2]
	str r0, [r1, #0x2c]
	str r3, [r1, #0x30]
	ldr r1, [r2, #4]
	ldr r0, [r4, #0x20]
	str r1, [r0, #0x34]
	ldr r1, [r2, #8]
	ldr r0, [r4, #0x20]
	str r1, [r0, #0x38]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_0212807C

	arm_func_start ov1_0212812C
ov1_0212812C: ; 0x0212812C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	str r0, [r4, #4]
	mov ip, #0
	strh ip, [r4, #8]
	str r1, [r4, #0x10]
	and r0, r3, #0xff
	str r2, [r4, #0x14]
	mov r1, #0x1f
	strb r1, [r4, #0xb]
	mov r1, #0x1000
	str r1, [r4, #0xc]
	strb r3, [r4, #0xa]
	tst r0, #1
	beq _02128188
	ldrh r1, [r4, #0x2c]
	ldr r0, [r4, #0x24]
	mov r2, ip
	bl sub_02008990
	ldrh r1, [r4, #0x2c]
	ldr r0, [r4, #0x24]
	bl sub_020089B8
	arm_func_end ov1_0212812C
_02128188:
	ldrb r0, [r4, #0xa]
	tst r0, #2
	ldmeqia sp!, {r4, pc}
	ldrh r1, [r4, #0x2e]
	ldr r0, [r4, #0x28]
	mov r2, #0
	bl sub_02008990
	ldrh r1, [r4, #0x2e]
	ldr r0, [r4, #0x28]
	bl sub_020089B8
	ldmia sp!, {r4, pc}

	arm_func_start ov1_021281B4
ov1_021281B4: ; 0x021281B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_021281DC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021281B4

	arm_func_start ov1_021281C8
ov1_021281C8: ; 0x021281C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212835C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021281C8

	arm_func_start ov1_021281DC
ov1_021281DC: ; 0x021281DC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x6c
	bl _Znwm
	movs r5, r0
	beq _02128220
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _02128344 ; =s_BSW_overlay_1_02140d10
	ldr r2, _02128348 ; =s_data_interface_i028_LZ_bin_overlay_1_02140d14
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
	arm_func_end ov1_021281DC
_02128220:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02128244
	mov r2, #0
	ldr r1, _0212834C ; =s_BSW_i028_00_NCBR_overlay_1_02140d30
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_02128244:
	str r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r4, #0x10]
	mov r1, r1, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r4]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02128298
	mov r2, #0
	ldr r1, _02128350 ; =s_BSW_i028_NCLR_overlay_1_02140d44
	mov r3, r2
	bl sub_02007AC0
_02128298:
	str r0, [r4, #4]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r4, #0x14]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #4]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r4, #4]
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _021282F4
	mov r2, #0
	ldr r1, _02128354 ; =s_BSW_i028_00_NCER_overlay_1_02140d54
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_021282F4:
	str r0, [r4, #8]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _0212830C
	bl sub_02008788
_0212830C:
	mov r2, #0
	ldr r1, _02128358 ; =s_BSW_i028_00_cac_overlay_1_02140d68
	mov r3, r2
	str r0, [r4, #0xc]
	bl sub_0200887C
	cmp r5, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02128344: .word s_BSW_overlay_1_02140d10
_02128348: .word s_data_interface_i028_LZ_bin_overlay_1_02140d14
_0212834C: .word s_BSW_i028_00_NCBR_overlay_1_02140d30
_02128350: .word s_BSW_i028_NCLR_overlay_1_02140d44
_02128354: .word s_BSW_i028_00_NCER_overlay_1_02140d54
_02128358: .word s_BSW_i028_00_cac_overlay_1_02140d68

	arm_func_start ov1_0212835C
ov1_0212835C: ; 0x0212835C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4]
	cmp r5, #0
	beq _0212838C
	beq _02128384
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_0212835C
_02128384:
	mov r0, #0
	str r0, [r4]
_0212838C:
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _021283B4
	beq _021283AC
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
_021283AC:
	mov r0, #0
	str r0, [r4, #4]
_021283B4:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021283D8
	beq _021283D0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_021283D0:
	mov r0, #0
	str r0, [r4, #8]
_021283D8:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02128400
	beq _021283F8
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_021283F8:
	mov r0, #0
	str r0, [r4, #0xc]
_02128400:
	ldr r0, [r4, #0x10]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r4, #0x14]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02128414
ov1_02128414: ; 0x02128414
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	mov r0, #0x4c
	str r1, [r4, #8]
	bl _Znwm
	cmp r0, #0
	beq _0212843C
	bl sub_02005150
	arm_func_end ov1_02128414
_0212843C:
	ldr r2, _02128454 ; =0x000003FF
	mov r1, r0
	str r0, [r4, #4]
	mov r0, r4
	str r2, [r1, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02128454: .word 0x000003FF

	arm_func_start ov1_02128458
ov1_02128458: ; 0x02128458
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	ldrh r1, [r4, #0x14]
	ldr r0, [r0, #0xc]
	bl sub_02008B80
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02128494
	beq _0212848C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_02128458
_0212848C:
	mov r0, #0
	str r0, [r4, #4]
_02128494:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212849C
ov1_0212849C: ; 0x0212849C
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, [r0]
	ldrh r1, [r0, #0x14]
	ldr r0, [r2, #0xc]
	bl sub_02008A38
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212849C

	arm_func_start ov1_021284C0
ov1_021284C0: ; 0x021284C0
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #8]
	mov r5, r1
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	ldrh r1, [r4, #0x14]
	ldr r0, [r0, #0xc]
	bl sub_02008828
	ldr r2, [r4, #4]
	mov r1, r5
	strh r0, [r2, #0x2a]
	ldr r3, [r4, #0xc]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #4]
	str r2, [sp, #4]
	str r3, [r0, #0x18]
	str r2, [r0, #0x1c]
	ldr r0, [r4, #4]
	str r3, [sp]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldr r0, [r4]
	ldrh r1, [r4, #0x14]
	ldr r0, [r0, #0xc]
	bl sub_02008860
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #8]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_021284C0

	arm_func_start ov1_0212854C
ov1_0212854C: ; 0x0212854C
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4]
	ldr r3, [r4, #4]
	ldr r0, [r1]
	mov r2, #0
	str r0, [r3, #0x2c]
	str r2, [r3, #0x30]
	ldr r3, [r1, #4]
	ldr r0, [r4, #4]
	str r3, [r0, #0x34]
	ldr r3, [r1, #8]
	ldr r0, [r4, #4]
	str r3, [r0, #0x38]
	ldr r0, [r1, #0xc]
	mov r1, #1
	bl sub_02008A80
	strh r0, [r4, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212854C

	arm_func_start ov1_02128598
ov1_02128598: ; 0x02128598
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	str r0, [r4, #8]
	mov r2, r1, lsl #0x10
	ldr r0, [r4]
	ldrh r1, [r4, #0x14]
	ldr r0, [r0, #0xc]
	mov r2, r2, lsr #0x10
	bl sub_02008990
	ldr r0, [r4]
	ldrh r1, [r4, #0x14]
	ldr r0, [r0, #0xc]
	bl sub_020089B8
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02128598

	arm_func_start ov1_021285D4
ov1_021285D4: ; 0x021285D4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	add r2, r4, r0
	ldr r1, [r5, #4]
	add r0, r2, #1
	str r2, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_021285D4

	arm_func_start ov1_02128600
ov1_02128600: ; 0x02128600
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02128628
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02128600

	arm_func_start ov1_02128614
ov1_02128614: ; 0x02128614
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_021287A8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02128614

	arm_func_start ov1_02128628
ov1_02128628: ; 0x02128628
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x6c
	bl _Znwm
	movs r5, r0
	beq _0212866C
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _02128790 ; =s_BHP_overlay_1_02140d78
	ldr r2, _02128794 ; =s_data_battle_system_battle_number_overlay_1_02140d7c
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
	arm_func_end ov1_02128628
_0212866C:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02128690
	mov r2, #0
	ldr r1, _02128798 ; =s_BHP_battle_number01_NCBR_overlay_1_02140da8
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_02128690:
	str r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r4, #0x10]
	mov r1, r1, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r4]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _021286E4
	mov r2, #0
	ldr r1, _0212879C ; =s_BHP_battle_number01_NCLR_overlay_1_02140dc4
	mov r3, r2
	bl sub_02007AC0
_021286E4:
	str r0, [r4, #4]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r4, #0x14]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #4]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r4, #4]
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02128740
	mov r2, #0
	ldr r1, _021287A0 ; =s_BHP_battle_number01_NCER_overlay_1_02140de0
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_02128740:
	str r0, [r4, #8]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02128758
	bl sub_02008788
_02128758:
	mov r2, #0
	ldr r1, _021287A4 ; =s_BHP_battle_number01_cac_overlay_1_02140dfc
	mov r3, r2
	str r0, [r4, #0xc]
	bl sub_0200887C
	cmp r5, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02128790: .word s_BHP_overlay_1_02140d78
_02128794: .word s_data_battle_system_battle_number_overlay_1_02140d7c
_02128798: .word s_BHP_battle_number01_NCBR_overlay_1_02140da8
_0212879C: .word s_BHP_battle_number01_NCLR_overlay_1_02140dc4
_021287A0: .word s_BHP_battle_number01_NCER_overlay_1_02140de0
_021287A4: .word s_BHP_battle_number01_cac_overlay_1_02140dfc

	arm_func_start ov1_021287A8
ov1_021287A8: ; 0x021287A8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4]
	cmp r5, #0
	beq _021287D8
	beq _021287D0
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_021287A8
_021287D0:
	mov r0, #0
	str r0, [r4]
_021287D8:
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _02128800
	beq _021287F8
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
_021287F8:
	mov r0, #0
	str r0, [r4, #4]
_02128800:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02128824
	beq _0212881C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0212881C:
	mov r0, #0
	str r0, [r4, #8]
_02128824:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _0212884C
	beq _02128844
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_02128844:
	mov r0, #0
	str r0, [r4, #0xc]
_0212884C:
	ldr r0, [r4, #0x10]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r4, #0x14]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02128860
ov1_02128860: ; 0x02128860
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r1, #0
	mov r0, #0x4c
	str r1, [r4, #0x10]
	bl _Znwm
	cmp r0, #0
	beq _02128888
	bl sub_02005150
	arm_func_end ov1_02128860
_02128888:
	str r0, [r4, #0xc]
	mov r3, #0x1000
	mov r1, #0
	str r3, [sp]
	ldr r0, _021288E0 ; =0x00000401
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r2, r1
	bl sub_020051F8
	ldr r0, [r4, #0xc]
	ldr r2, _021288E4 ; =0x00007FFF
	mov r1, #0x1f
	strh r2, [r0, #8]
	ldr r0, [r4, #0xc]
	mov r2, #0
	str r1, [r0, #0x14]
	ldr r1, [r4, #0xc]
	mov r0, r4
	str r2, [r1, #0x10]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_021288E0: .word 0x00000401
_021288E4: .word 0x00007FFF

	arm_func_start ov1_021288E8
ov1_021288E8: ; 0x021288E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02128914
	beq _0212890C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_021288E8
_0212890C:
	mov r0, #0
	str r0, [r4, #0xc]
_02128914:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212891C
ov1_0212891C: ; 0x0212891C
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x10]
	ldr r3, [r4, #0xc]
	ldr r0, [r1]
	mov r2, #0
	str r0, [r3, #0x2c]
	str r2, [r3, #0x30]
	ldr r3, [r1, #4]
	ldr r0, [r4, #0xc]
	str r3, [r0, #0x34]
	ldr r3, [r1, #8]
	ldr r0, [r4, #0xc]
	str r3, [r0, #0x38]
	ldr r0, [r4, #0xc]
	strh r2, [r0, #0x2a]
	ldr r0, [r1, #0xc]
	mov r1, #1
	bl sub_02008A80
	strh r0, [r4, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212891C

	arm_func_start ov1_02128970
ov1_02128970: ; 0x02128970
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sl, r0
	ldrh r5, [sl, #8]
	ldr r4, [sl]
	ldr r3, [sl, #4]
	ldr r0, [sl, #0xc]
	mov r2, #0xa
	str r4, [r0, #0x18]
	str r3, [r0, #0x1c]
	ldr r0, [sl, #0xc]
	mov sb, r1
	strh r2, [r0, #0x2a]
	ldr r0, [sl, #0xc]
	str r4, [sp, #0x10]
	ldr r2, [r0]
	str r4, [sp, #8]
	ldr r2, [r2, #8]
	str r3, [sp, #0x14]
	str r3, [sp, #0xc]
	mov r4, #0
	blx r2
	ldr fp, _02128A5C ; =DAT_overlay_1_0213fbe4
	mov r7, r4
	arm_func_end ov1_02128970
_021289D0:
	mov r0, r7, lsl #1
	ldrh r8, [fp, r0]
	mov r0, r5
	mov r1, r8
	bl _s32_div_f
	ands r6, r0, #0xff
	cmpeq r4, #0
	beq _02128A38
	ldr r3, [sp, #0x10]
	ldr r0, [sl, #0xc]
	ldr r2, [sp, #0x14]
	str r3, [r0, #0x18]
	str r2, [r0, #0x1c]
	ldr r0, [sl, #0xc]
	mov r1, sb
	strh r6, [r0, #0x2a]
	ldr r0, [sl, #0xc]
	mov r4, #1
	ldr ip, [r0]
	str r3, [sp]
	ldr ip, [ip, #8]
	str r2, [sp, #4]
	blx ip
	ldr r0, [sp, #0x10]
	add r0, r0, #0x4000
	str r0, [sp, #0x10]
_02128A38:
	mul r0, r6, r8
	sub r0, r5, r0
	mov r0, r0, lsl #0x10
	add r7, r7, #1
	cmp r7, #5
	mov r5, r0, lsr #0x10
	blt _021289D0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02128A5C: .word DAT_overlay_1_0213fbe4

	arm_func_start ov1_02128A60
ov1_02128A60: ; 0x02128A60
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02128A88
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02128A60

	arm_func_start ov1_02128A74
ov1_02128A74: ; 0x02128A74
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02128AF0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02128A74

	arm_func_start ov1_02128A88
ov1_02128A88: ; 0x02128A88
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02128ACC
	ldr r2, _02128AD8 ; =s_BDN_i069_NCLR_overlay_1_02140e48
	ldr r1, _02128ADC ; =s_BDN_i069_00_NCER_overlay_1_02140e58
	str r2, [sp]
	ldr ip, _02128AE0 ; =s_BDN_i069_00_cac_overlay_1_02140e6c
	str r1, [sp, #4]
	ldr r1, _02128AE4 ; =s_BDN_overlay_1_02140e14
	ldr r2, _02128AE8 ; =s_data_interface_i069_LZ_bin_overlay_1_02140e18
	ldr r3, _02128AEC ; =s_BDN_i069_00_NCBR_overlay_1_02140e34
	str ip, [sp, #8]
	bl sub_0201AAE0
	arm_func_end ov1_02128A88
_02128ACC:
	str r0, [r4]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02128AD8: .word s_BDN_i069_NCLR_overlay_1_02140e48
_02128ADC: .word s_BDN_i069_00_NCER_overlay_1_02140e58
_02128AE0: .word s_BDN_i069_00_cac_overlay_1_02140e6c
_02128AE4: .word s_BDN_overlay_1_02140e14
_02128AE8: .word s_data_interface_i069_LZ_bin_overlay_1_02140e18
_02128AEC: .word s_BDN_i069_00_NCBR_overlay_1_02140e34

	arm_func_start ov1_02128AF0
ov1_02128AF0: ; 0x02128AF0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02128B18
	mov r0, r4
	bl sub_0201AB14
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov1_02128AF0
_02128B18:
	mov r0, #0
	str r0, [r5]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02128B24
ov1_02128B24: ; 0x02128B24
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #0x4c
	strh r1, [r4, #2]
	bl _Znwm
	cmp r0, #0
	beq _02128B54
	bl sub_02005150
	arm_func_end ov1_02128B24
_02128B54:
	str r0, [r4, #0x14]
	mov r3, #0x1000
	mov r1, #0
	str r3, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r2, r1
	bl sub_020051F8
	ldr r0, [r4, #0x14]
	ldr r2, _02128BAC ; =0x00007FFF
	mov r1, #0x1f
	strh r2, [r0, #8]
	ldr r0, [r4, #0x14]
	mov r2, #0
	str r1, [r0, #0x14]
	ldr r1, [r4, #0x14]
	mov r0, r4
	str r2, [r1, #0x10]
	str r2, [r4, #0x18]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02128BAC: .word 0x00007FFF

	arm_func_start ov1_02128BB0
ov1_02128BB0: ; 0x02128BB0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02128BDC
	beq _02128BD4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_02128BB0
_02128BD4:
	mov r0, #0
	str r0, [r4, #0x14]
_02128BDC:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02128BE4
ov1_02128BE4: ; 0x02128BE4
	str r1, [r0, #0x18]
	ldr r2, [r1]
	ldr r3, [r0, #0x14]
	ldr r2, [r2]
	mov ip, #0
	str r2, [r3, #0x2c]
	str ip, [r3, #0x30]
	ldr r3, [r1]
	ldr r2, [r0, #0x14]
	ldr r3, [r3, #4]
	str r3, [r2, #0x34]
	ldr r2, [r1]
	ldr r1, [r0, #0x14]
	ldr r2, [r2, #8]
	str r2, [r1, #0x38]
	ldr r0, [r0, #0x14]
	strh ip, [r0, #0x2a]
	bx lr
	arm_func_end ov1_02128BE4

	arm_func_start ov1_02128C2C
ov1_02128C2C: ; 0x02128C2C
	stmdb sp!, {r3, lr}
	ldrb r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	ldrb r1, [r0]
	cmp r1, #1
	beq _02128C60
	cmp r1, #2
	beq _02128C68
	ldmia sp!, {r3, pc}
	arm_func_end ov1_02128C2C
_02128C60:
	bl ov1_02128DD4
	ldmia sp!, {r3, pc}
_02128C68:
	bl ov1_02128DF4
	ldmia sp!, {r3, pc}

	arm_func_start ov1_02128C70
ov1_02128C70: ; 0x02128C70
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	ldrb r0, [r8]
	mov r7, r1
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r6, [r8, #2]
	cmp r6, #0xa
	movhs r0, #2
	movlo r0, #1
	and r5, r0, #0xff
	cmp r5, #1
	streqb r6, [sp]
	beq _02128CDC
	ldr r2, _02128DD0 ; =0x66666667
	mov r1, r6, lsr #0x1f
	smull r0, r3, r2, r6
	smull r0, r4, r2, r6
	add r4, r1, r4, asr #2
	add r3, r1, r3, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r3
	sub r3, r6, r0
	strb r4, [sp]
	strb r3, [sp, #1]
	arm_func_end ov1_02128C70
_02128CDC:
	sub r0, r5, #1
	add r0, r0, r0, lsl #1
	ldr r1, [r8, #8]
	ldr r2, [r8, #4]
	mov r0, r0, lsl #0xe
	sub r3, r2, r0, asr #1
	sub r2, r1, #0x6000
	ldr r1, [r8, #0xc]
	ldr r0, [r8, #0x14]
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [r0, #4]
	cmp r5, #0
	mov r6, #0
	bls _02128D74
	add r4, sp, #0
_02128D1C:
	ldr ip, [sp, #0x14]
	ldr r0, [r8, #0x14]
	ldr r3, [sp, #0x18]
	str ip, [r0, #0x18]
	str r3, [r0, #0x1c]
	ldrb r2, [r4, r6]
	ldr r0, [r8, #0x14]
	mov r1, r7
	strh r2, [r0, #0x2a]
	ldr r0, [r8, #0x14]
	str ip, [sp, #0xc]
	ldr r2, [r0]
	str r3, [sp, #0x10]
	ldr r2, [r2, #8]
	blx r2
	ldr r1, [sp, #0x14]
	add r0, r6, #1
	add r1, r1, #0xc000
	and r6, r0, #0xff
	str r1, [sp, #0x14]
	cmp r6, r5
	blo _02128D1C
_02128D74:
	ldr r4, [r8, #4]
	ldr r2, [r8, #8]
	ldr r1, [r8, #0x10]
	ldr r0, [r8, #0x14]
	add r3, r2, #0x5000
	str r1, [r0, #4]
	ldr r0, [r8, #0x14]
	mov r2, #0xc
	str r4, [r0, #0x18]
	str r3, [r0, #0x1c]
	ldr r0, [r8, #0x14]
	mov r1, r7
	strh r2, [r0, #0x2a]
	ldr r0, [r8, #0x14]
	str r4, [sp, #0x14]
	ldr r2, [r0]
	str r3, [sp, #0x18]
	ldr r2, [r2, #8]
	str r4, [sp, #4]
	str r3, [sp, #8]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02128DD0: .word 0x66666667

	arm_func_start ov1_02128DD4
ov1_02128DD4: ; 0x02128DD4
	ldrb r1, [r0, #1]
	cmp r1, #0xa
	bxlo lr
	mov r1, #2
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	arm_func_end ov1_02128DD4

	arm_func_start ov1_02128DF4
ov1_02128DF4: ; 0x02128DF4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #1]
	mov r1, #1
	mov r3, #0x14
	cmp r0, #0x14
	movhs r0, #0
	strcsb r0, [r4]
	strcsb r0, [r4, #1]
	ldrb r2, [r4, #1]
	mov r0, #0x1f
	bl sub_02007068
	ldr r1, [r4, #0x14]
	and r0, r0, #0xff
	str r0, [r1, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02128DF4

	arm_func_start ov1_02128E34
ov1_02128E34: ; 0x02128E34
	stmdb sp!, {r0, r1, r2, r3}
	sub sp, sp, #8
	mov ip, #1
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x10]
	strb ip, [r0]
	mov ip, #0
	strb ip, [r0, #1]
	str r2, [r0, #4]
	str r1, [r0, #8]
	str r2, [sp]
	str r1, [sp, #4]
	strh r3, [r0, #2]
	add sp, sp, #8
	add sp, sp, #0x10
	bx lr
	arm_func_end ov1_02128E34

	arm_func_start ov1_02128E74
ov1_02128E74: ; 0x02128E74
	str r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0x10]
	mov r0, r1
	bx lr
	arm_func_end ov1_02128E74

	arm_func_start ov1_02128E88
ov1_02128E88: ; 0x02128E88
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02128EB0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02128E88

	arm_func_start ov1_02128E9C
ov1_02128E9C: ; 0x02128E9C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_021290D4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02128E9C

	arm_func_start ov1_02128EB0
ov1_02128EB0: ; 0x02128EB0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x70
	mov fp, #0
	ldr r6, _021290BC ; =s_BST_overlay_1_02140e7c
	mov sl, r0
	mov r8, #0x1d
	mov sb, #1
	add r5, sp, #0x10
	mov r4, fp
	arm_func_end ov1_02128EB0
_02128ED4:
	ldr r1, _021290C0 ; =s_data_interface_i_03d_LZ_bin_overlay_1_02140e80
	mov r0, r5
	mov r2, r8
	bl OS_SPrintf
	mov r0, #0x6c
	bl _Znwm
	movs r7, r0
	beq _02128F18
	mov r1, #1
	stmia sp, {r1, fp}
	str fp, [sp, #8]
	mov r1, r6
	mov r2, r5
	mov r3, #1
	str fp, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r7, r0
_02128F18:
	ldr r1, _021290C4 ; =s_s_i_03d_00_NCBR_overlay_1_02140e9c
	mov r0, r5
	mov r2, r6
	mov r3, r8
	bl OS_SPrintf
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02128F54
	mov r1, #0
	mov r2, #0
	str r1, [sp]
	mov r1, r5
	mov r3, r2
	bl sub_020074E8
_02128F54:
	str r0, [sl, sb, lsl #2]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x50]
	mov r1, r0
	mov r1, r1, lsl #0x10
	ldr r0, [sl, sb, lsl #2]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [sl, sb, lsl #2]
	bl sub_020076B0
	ldr r1, _021290C8 ; =s_s_i_03d_NCLR_overlay_1_02140eb0
	mov r0, r5
	mov r2, r6
	mov r3, r8
	bl OS_SPrintf
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02128FC0
	mov r2, #0
	mov r1, r5
	mov r3, r2
	bl sub_02007AC0
_02128FC0:
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x14]
	ldr r0, [r0, #4]
	mov r1, r4
	ldr r0, [r0, #8]
	mov r2, r4
	bl NNS_GfdAllocLnkPlttVram
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x64]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x64]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	add r0, sl, sb, lsl #2
	ldr r0, [r0, #0x14]
	bl sub_02007BC4
	ldr r1, _021290CC ; =s_s_i_03d_00_NCER_overlay_1_02140ec0
	mov r0, r5
	mov r2, r6
	mov r3, r8
	bl OS_SPrintf
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02129040
	mov r1, #0
	mov r2, #0
	str r1, [sp]
	mov r1, r5
	mov r3, r2
	bl sub_020031E8
_02129040:
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x28]
	ldr r1, _021290D0 ; =s_s_i_03d_00_cac_overlay_1_02140ed4
	mov r0, r5
	mov r2, r6
	mov r3, r8
	bl OS_SPrintf
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02129070
	bl sub_02008788
_02129070:
	add r1, sl, sb, lsl #2
	mov r2, #0
	str r0, [r1, #0x3c]
	mov r1, r5
	mov r3, r2
	bl sub_0200887C
	cmp r7, #0
	beq _021290A0
	mov r0, r7
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r7
	bl _ZdlPv
_021290A0:
	add r0, r8, #1
	and r8, r0, #0xff
	add sb, sb, #1
	cmp sb, #5
	blt _02128ED4
	add sp, sp, #0x70
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021290BC: .word s_BST_overlay_1_02140e7c
_021290C0: .word s_data_interface_i_03d_LZ_bin_overlay_1_02140e80
_021290C4: .word s_s_i_03d_00_NCBR_overlay_1_02140e9c
_021290C8: .word s_s_i_03d_NCLR_overlay_1_02140eb0
_021290CC: .word s_s_i_03d_00_NCER_overlay_1_02140ec0
_021290D0: .word s_s_i_03d_00_cac_overlay_1_02140ed4

	arm_func_start ov1_021290D4
ov1_021290D4: ; 0x021290D4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r7, #0
	mov sb, r0
	mov r8, #1
	mov r6, r7
	mov r5, r7
	mov r4, r7
	arm_func_end ov1_021290D4
_021290F0:
	ldr sl, [sb, r8, lsl #2]
	cmp sl, #0
	beq _02129114
	beq _02129110
	mov r0, sl
	bl sub_02007548
	mov r0, sl
	bl _ZdlPv
_02129110:
	str r7, [sb, r8, lsl #2]
_02129114:
	add r0, sb, r8, lsl #2
	ldr sl, [r0, #0x14]
	cmp sl, #0
	beq _02129140
	beq _02129138
	mov r0, sl
	bl sub_02007B28
	mov r0, sl
	bl _ZdlPv
_02129138:
	add r0, sb, r8, lsl #2
	str r6, [r0, #0x14]
_02129140:
	add r0, sb, r8, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02129168
	beq _02129160
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02129160:
	add r0, sb, r8, lsl #2
	str r5, [r0, #0x28]
_02129168:
	add r0, sb, r8, lsl #2
	ldr sl, [r0, #0x3c]
	cmp sl, #0
	beq _02129194
	beq _0212918C
	mov r0, sl
	bl sub_020087C8
	mov r0, sl
	bl _ZdlPv
_0212918C:
	add r0, sb, r8, lsl #2
	str r4, [r0, #0x3c]
_02129194:
	add r0, sb, r8, lsl #2
	ldr r0, [r0, #0x50]
	bl NNS_GfdFreeLnkTexVram
	add r0, sb, r8, lsl #2
	ldr r0, [r0, #0x64]
	bl NNS_GfdFreeLnkPlttVram
	add r8, r8, #1
	cmp r8, #5
	blt _021290F0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start ov1_021291BC
ov1_021291BC: ; 0x021291BC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	mov r0, #0x4c
	str r1, [r4, #0x14]
	bl _Znwm
	cmp r0, #0
	beq _021291E8
	bl sub_02005150
	arm_func_end ov1_021291BC
_021291E8:
	str r0, [r4, #4]
	mov r3, #0x1000
	mov r1, #0
	str r3, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	mov r2, r1
	bl sub_020051F8
	ldr r0, [r4, #4]
	ldr r2, _0212923C ; =0x00007FFF
	mov r1, #0x1f
	strh r2, [r0, #8]
	ldr r0, [r4, #4]
	mov r2, #0
	str r1, [r0, #0x14]
	ldr r1, [r4, #4]
	mov r0, r4
	str r2, [r1, #0x10]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0212923C: .word 0x00007FFF

	arm_func_start ov1_02129240
ov1_02129240: ; 0x02129240
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0212926C
	beq _02129264
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_02129240
_02129264:
	mov r0, #0
	str r0, [r4, #4]
_0212926C:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02129274
ov1_02129274: ; 0x02129274
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	mov r6, r0
	str r5, [r6]
	mov r1, #0
	ldr r0, [r6, #4]
	mov r4, #1
	strh r1, [r0, #0x2a]
	mov r8, r4
	mov r7, r1
	arm_func_end ov1_02129274
_0212929C:
	and r0, r4, #0xff
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0x3c]
	mov r1, r8
	mov r2, r7
	bl sub_02008A80
	add r1, r6, r4, lsl #1
	add r4, r4, #1
	strh r0, [r1, #0x20]
	cmp r4, #5
	blt _0212929C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov1_021292CC
ov1_021292CC: ; 0x021292CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r4, #0xc]
	add r0, r0, #1
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xc]
	mov r0, #0
	cmp r2, #0x10
	strhi r0, [r4, #0x14]
	bhi _02129340
	mov r1, #0x8000
	mov r3, #0x10
	bl sub_02007068
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #4
	ldr r0, _02129364 ; =FX_SinCosTable_
	mov r1, r1, lsl #2
	ldrsh r1, [r0, r1]
	mov r0, r1, asr #0x1f
	mov r0, r0, lsl #0x10
	mov r2, r1, lsl #0x10
	orr r0, r0, r1, lsr #16
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r4, #0x14]
	arm_func_end ov1_021292CC
_02129340:
	ldr r0, [r4, #0x10]
	ldr r2, [r4]
	and r1, r0, #0xff
	add r0, r4, r0, lsl #1
	add r2, r2, r1, lsl #2
	ldrh r1, [r0, #0x20]
	ldr r0, [r2, #0x3c]
	bl sub_02008A38
	ldmia sp!, {r4, pc}
	.align 2, 0
_02129364: .word FX_SinCosTable_

	arm_func_start ov1_02129368
ov1_02129368: ; 0x02129368
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x18]
	ldr r0, [r5, #4]
	mov r4, r1
	str r2, [r0, #0x18]
	ldr r2, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #4]
	sub r1, r2, r1
	str r1, [r0, #0x1c]
	ldr r0, [r5, #0x10]
	ldr r2, [r5]
	and r1, r0, #0xff
	add r0, r5, r0, lsl #1
	add r2, r2, r1, lsl #2
	ldrh r1, [r0, #0x20]
	ldr r0, [r2, #0x3c]
	bl sub_02008828
	ldr r2, [r5, #4]
	mov r1, r4
	strh r0, [r2, #0x2a]
	ldr r0, [r5, #4]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_02129368

	arm_func_start ov1_021293D4
ov1_021293D4: ; 0x021293D4
	bx lr
	arm_func_end ov1_021293D4

	arm_func_start ov1_021293D8
ov1_021293D8: ; 0x021293D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	str r1, [r4, #0x10]
	moveq r0, #0
	streq r0, [r4, #8]
	ldmeqia sp!, {r4, pc}
	and r3, r1, #0xff
	ldmia r4, {r0, r2}
	ldr r1, [r0, r3, lsl #2]
	mov r0, #0
	str r1, [r2, #0x2c]
	str r0, [r2, #0x30]
	ldr r1, [r4]
	ldr r0, [r4, #4]
	add r1, r1, r3, lsl #2
	ldr r1, [r1, #0x14]
	str r1, [r0, #0x34]
	ldr r1, [r4]
	ldr r0, [r4, #4]
	add r1, r1, r3, lsl #2
	ldr r1, [r1, #0x28]
	str r1, [r0, #0x38]
	ldr r0, [r4, #0x10]
	ldr r2, [r4]
	and r1, r0, #0xff
	add r0, r4, r0, lsl #1
	add r2, r2, r1, lsl #2
	ldrh r1, [r0, #0x20]
	ldr r0, [r2, #0x3c]
	bl sub_020089B8
	ldr r0, [r4, #0x10]
	ldr r2, [r4]
	and r1, r0, #0xff
	add r0, r4, r0, lsl #1
	add r2, r2, r1, lsl #2
	ldrh r1, [r0, #0x20]
	ldr r0, [r2, #0x3c]
	bl sub_02008828
	ldr r2, [r4, #4]
	mov r1, #0
	strh r0, [r2, #0x2a]
	strh r1, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021293D8

	arm_func_start ov1_02129490
ov1_02129490: ; 0x02129490
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	add r2, r4, r0
	ldr r1, [r5, #4]
	add r0, r2, #1
	str r2, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_02129490

	arm_func_start ov1_021294BC
ov1_021294BC: ; 0x021294BC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_021294E4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021294BC

	arm_func_start ov1_021294D0
ov1_021294D0: ; 0x021294D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02129638
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021294D0

	arm_func_start ov1_021294E4
ov1_021294E4: ; 0x021294E4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x6c
	bl _Znwm
	movs r5, r0
	beq _02129528
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _02129624 ; =s_BST_overlay_1_02140ee4
	ldr r2, _02129628 ; =s_data_battle_system_battle_status_overlay_1_02140ee8
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
	arm_func_end ov1_021294E4
_02129528:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _0212954C
	mov r2, #0
	ldr r1, _0212962C ; =s_BST_battle_status_debug_NCBR_overlay_1_02140f18
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_0212954C:
	str r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r4, #0xc]
	mov r1, r1, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r4]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _021295A0
	mov r2, #0
	ldr r1, _02129630 ; =s_BST_battle_status_debug_NCLR_overlay_1_02140f38
	mov r3, r2
	bl sub_02007AC0
_021295A0:
	str r0, [r4, #4]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r4, #0x10]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #4]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r4, #4]
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _021295FC
	mov r2, #0
	ldr r1, _02129634 ; =s_BST_battle_status_debug_NCER_overlay_1_02140f58
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_021295FC:
	cmp r5, #0
	addeq sp, sp, #0x10
	str r0, [r4, #8]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02129624: .word s_BST_overlay_1_02140ee4
_02129628: .word s_data_battle_system_battle_status_overlay_1_02140ee8
_0212962C: .word s_BST_battle_status_debug_NCBR_overlay_1_02140f18
_02129630: .word s_BST_battle_status_debug_NCLR_overlay_1_02140f38
_02129634: .word s_BST_battle_status_debug_NCER_overlay_1_02140f58

	arm_func_start ov1_02129638
ov1_02129638: ; 0x02129638
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5]
	cmp r4, #0
	beq _02129668
	beq _02129660
	mov r0, r4
	bl sub_02007548
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov1_02129638
_02129660:
	mov r0, #0
	str r0, [r5]
_02129668:
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _02129690
	beq _02129688
	mov r0, r4
	bl sub_02007B28
	mov r0, r4
	bl _ZdlPv
_02129688:
	mov r0, #0
	str r0, [r5, #4]
_02129690:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021296B4
	beq _021296AC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_021296AC:
	mov r0, #0
	str r0, [r5, #8]
_021296B4:
	ldr r0, [r5, #0xc]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r5, #0x10]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_021296C8
ov1_021296C8: ; 0x021296C8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r1, #0
	mov r0, #0x4c
	str r1, [r4, #0xc]
	bl _Znwm
	cmp r0, #0
	beq _021296F0
	bl sub_02005150
	arm_func_end ov1_021296C8
_021296F0:
	str r0, [r4, #0x10]
	mov r3, #0x1000
	mov r1, #0
	str r3, [sp]
	ldr r0, _02129748 ; =0x00000401
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	mov r2, r1
	bl sub_020051F8
	ldr r0, [r4, #0x10]
	ldr r2, _0212974C ; =0x00007FFF
	mov r1, #0x1f
	strh r2, [r0, #8]
	ldr r0, [r4, #0x10]
	mov r2, #0
	str r1, [r0, #0x14]
	ldr r1, [r4, #0x10]
	mov r0, r4
	str r2, [r1, #0x10]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02129748: .word 0x00000401
_0212974C: .word 0x00007FFF

	arm_func_start ov1_02129750
ov1_02129750: ; 0x02129750
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0212977C
	beq _02129774
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_02129750
_02129774:
	mov r0, #0
	str r0, [r4, #0x10]
_0212977C:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02129784
ov1_02129784: ; 0x02129784
	str r1, [r0, #0xc]
	ldr r3, [r0, #0x10]
	ldr r2, [r1]
	mov ip, #0
	str r2, [r3, #0x2c]
	str ip, [r3, #0x30]
	ldr r3, [r1, #4]
	ldr r2, [r0, #0x10]
	str r3, [r2, #0x34]
	ldr r2, [r1, #8]
	ldr r1, [r0, #0x10]
	str r2, [r1, #0x38]
	ldr r0, [r0, #0x10]
	strh ip, [r0, #0x2a]
	bx lr
	arm_func_end ov1_02129784

	arm_func_start ov1_021297C0
ov1_021297C0: ; 0x021297C0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_021297E8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021297C0

	arm_func_start ov1_021297D4
ov1_021297D4: ; 0x021297D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212993C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021297D4

	arm_func_start ov1_021297E8
ov1_021297E8: ; 0x021297E8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x6c
	bl _Znwm
	movs r5, r0
	beq _0212982C
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _02129928 ; =s_BOK_overlay_1_02140f78
	ldr r2, _0212992C ; =s_data_interface_i026_LZ_bin_overlay_1_02140f7c
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
	arm_func_end ov1_021297E8
_0212982C:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02129850
	mov r2, #0
	ldr r1, _02129930 ; =s_BOK_i026_00_NCBR_overlay_1_02140f98
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_02129850:
	str r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r4, #0xc]
	mov r1, r1, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r4]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _021298A4
	mov r2, #0
	ldr r1, _02129934 ; =s_BOK_i026_NCLR_overlay_1_02140fac
	mov r3, r2
	bl sub_02007AC0
_021298A4:
	str r0, [r4, #4]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r4, #0x10]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #4]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r4, #4]
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02129900
	mov r2, #0
	ldr r1, _02129938 ; =s_BOK_i026_00_NCER_overlay_1_02140fbc
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_02129900:
	cmp r5, #0
	addeq sp, sp, #0x10
	str r0, [r4, #8]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02129928: .word s_BOK_overlay_1_02140f78
_0212992C: .word s_data_interface_i026_LZ_bin_overlay_1_02140f7c
_02129930: .word s_BOK_i026_00_NCBR_overlay_1_02140f98
_02129934: .word s_BOK_i026_NCLR_overlay_1_02140fac
_02129938: .word s_BOK_i026_00_NCER_overlay_1_02140fbc

	arm_func_start ov1_0212993C
ov1_0212993C: ; 0x0212993C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5]
	cmp r4, #0
	beq _0212996C
	beq _02129964
	mov r0, r4
	bl sub_02007548
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov1_0212993C
_02129964:
	mov r0, #0
	str r0, [r5]
_0212996C:
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _02129994
	beq _0212998C
	mov r0, r4
	bl sub_02007B28
	mov r0, r4
	bl _ZdlPv
_0212998C:
	mov r0, #0
	str r0, [r5, #4]
_02129994:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021299B8
	beq _021299B0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_021299B0:
	mov r0, #0
	str r0, [r5, #8]
_021299B8:
	ldr r0, [r5, #0xc]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r5, #0x10]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_021299CC
ov1_021299CC: ; 0x021299CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	mov r0, #0x4c
	str r1, [r4, #8]
	bl _Znwm
	cmp r0, #0
	beq _021299F4
	bl sub_02005150
	arm_func_end ov1_021299CC
_021299F4:
	mov r1, r0
	str r0, [r4, #4]
	mov r2, #0x400
	mov r0, r4
	str r2, [r1, #4]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02129A0C
ov1_02129A0C: ; 0x02129A0C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02129A38
	beq _02129A30
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_02129A0C
_02129A30:
	mov r0, #0
	str r0, [r4, #4]
_02129A38:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02129A40
ov1_02129A40: ; 0x02129A40
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r4, #0xe]
	add r0, r0, #1
	strh r0, [r4, #0xe]
	ldrh r2, [r4, #0xe]
	ldrh r0, [r4, #0xc]
	cmp r0, r2
	movls r0, #0
	strls r0, [r4, #8]
	ldmlsia sp!, {r4, pc}
	cmp r2, #8
	ldmhiia sp!, {r4, pc}
	mov r0, #0x4000
	mov r1, #0x1000
	mov r3, #8
	bl sub_02007068
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02129A40

	arm_func_start ov1_02129A98
ov1_02129A98: ; 0x02129A98
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, [r0, #8]
	cmp r2, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, pc}
	ldr r3, [r0, #0x14]
	ldr ip, [r0, #0x18]
	ldr r2, [r0, #4]
	str r3, [sp]
	str r3, [r2, #0x18]
	str ip, [r2, #0x1c]
	ldr r3, [r0, #0x10]
	ldr r2, [r0, #4]
	str ip, [sp, #4]
	str r3, [r2, #0x20]
	str r3, [r2, #0x24]
	ldr r0, [r0, #4]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end ov1_02129A98

	arm_func_start ov1_02129AF4
ov1_02129AF4: ; 0x02129AF4
	str r1, [r0]
	ldr r3, [r0, #4]
	ldr r2, [r1]
	mov ip, #0
	str r2, [r3, #0x2c]
	str ip, [r3, #0x30]
	ldr r3, [r1, #4]
	ldr r2, [r0, #4]
	str r3, [r2, #0x34]
	ldr r2, [r1, #8]
	ldr r1, [r0, #4]
	str r2, [r1, #0x38]
	ldr r0, [r0, #4]
	strh ip, [r0, #0x2a]
	bx lr
	arm_func_end ov1_02129AF4

	arm_func_start ov1_02129B30
ov1_02129B30: ; 0x02129B30
	mov r2, #1
	str r2, [r0, #8]
	strh r1, [r0, #0xc]
	mov r1, #0
	strh r1, [r0, #0xe]
	bx lr
	arm_func_end ov1_02129B30

	arm_func_start ov1_02129B48
ov1_02129B48: ; 0x02129B48
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	add r2, r4, r0
	ldr r1, [r5, #4]
	add r0, r2, #1
	str r2, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_02129B48

	arm_func_start ov1_02129B74
ov1_02129B74: ; 0x02129B74
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02129B9C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02129B74

	arm_func_start ov1_02129B88
ov1_02129B88: ; 0x02129B88
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02129D1C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02129B88

	arm_func_start ov1_02129B9C
ov1_02129B9C: ; 0x02129B9C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x6c
	bl _Znwm
	movs r5, r0
	beq _02129BE0
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _02129D04 ; =s_BCE_overlay_1_02140fd0
	ldr r2, _02129D08 ; =s_data_interface_i033_LZ_bin_overlay_1_02140fd4
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
	arm_func_end ov1_02129B9C
_02129BE0:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02129C04
	mov r2, #0
	ldr r1, _02129D0C ; =s_BCE_i033_00_NCBR_overlay_1_02140ff0
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_02129C04:
	str r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r4, #0x10]
	mov r1, r1, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r4]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02129C58
	mov r2, #0
	ldr r1, _02129D10 ; =s_BCE_i033_NCLR_overlay_1_02141004
	mov r3, r2
	bl sub_02007AC0
_02129C58:
	str r0, [r4, #4]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r4, #0x14]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #4]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r4, #4]
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02129CB4
	mov r2, #0
	ldr r1, _02129D14 ; =s_BCE_i033_00_NCER_overlay_1_02141014
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_02129CB4:
	str r0, [r4, #8]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02129CCC
	bl sub_02008788
_02129CCC:
	mov r2, #0
	ldr r1, _02129D18 ; =s_BCE_i033_00_cac_overlay_1_02141028
	mov r3, r2
	str r0, [r4, #0xc]
	bl sub_0200887C
	cmp r5, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02129D04: .word s_BCE_overlay_1_02140fd0
_02129D08: .word s_data_interface_i033_LZ_bin_overlay_1_02140fd4
_02129D0C: .word s_BCE_i033_00_NCBR_overlay_1_02140ff0
_02129D10: .word s_BCE_i033_NCLR_overlay_1_02141004
_02129D14: .word s_BCE_i033_00_NCER_overlay_1_02141014
_02129D18: .word s_BCE_i033_00_cac_overlay_1_02141028

	arm_func_start ov1_02129D1C
ov1_02129D1C: ; 0x02129D1C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4]
	cmp r5, #0
	beq _02129D4C
	beq _02129D44
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_02129D1C
_02129D44:
	mov r0, #0
	str r0, [r4]
_02129D4C:
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _02129D74
	beq _02129D6C
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
_02129D6C:
	mov r0, #0
	str r0, [r4, #4]
_02129D74:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02129D98
	beq _02129D90
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02129D90:
	mov r0, #0
	str r0, [r4, #8]
_02129D98:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02129DC0
	beq _02129DB8
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_02129DB8:
	mov r0, #0
	str r0, [r4, #0xc]
_02129DC0:
	ldr r0, [r4, #0x10]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r4, #0x14]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02129DD4
ov1_02129DD4: ; 0x02129DD4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	mov r0, #0x4c
	str r1, [r4, #0x14]
	bl _Znwm
	cmp r0, #0
	beq _02129DFC
	bl sub_02005150
	arm_func_end ov1_02129DD4
_02129DFC:
	str r0, [r4, #4]
	mov r0, #0x4c
	bl _Znwm
	cmp r0, #0
	beq _02129E14
	bl sub_02005150
_02129E14:
	str r0, [r4, #8]
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02129E2C
	bl sub_020049A4
_02129E2C:
	ldr r2, _02129E44 ; =0x00007FFF
	mov r1, r0
	str r0, [r4, #0x10]
	mov r0, r4
	strh r2, [r1, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02129E44: .word 0x00007FFF

	arm_func_start ov1_02129E48
ov1_02129E48: ; 0x02129E48
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	ldrh r1, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	bl sub_02008B80
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02129E84
	beq _02129E7C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_02129E48
_02129E7C:
	mov r0, #0
	str r0, [r4, #4]
_02129E84:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02129EA8
	beq _02129EA0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02129EA0:
	mov r0, #0
	str r0, [r4, #8]
_02129EA8:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02129ECC
	beq _02129EC4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02129EC4:
	mov r0, #0
	str r0, [r4, #0x10]
_02129ECC:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02129ED4
ov1_02129ED4: ; 0x02129ED4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	moveq r0, #0
	addeq sp, sp, #8
	streq r0, [r4, #0x14]
	ldmeqia sp!, {r4, pc}
	sub r0, r0, #1
	strh r0, [r4, #0x18]
	ldrh r3, [r4, #0x1a]
	ldrh r2, [r4, #0x18]
	ldr r1, [r4, #0xc]
	mov r0, #0
	sub r2, r3, r2
	bl sub_02007068
	mov r1, r0, asr #0x1f
	mov r1, r1, lsl #0xc
	orr r1, r1, r0, lsr #20
	mov r0, r0, lsl #0xc
	mov r2, #0x10000
	mov r3, #0
	bl _ll_div
	ldr r1, [r4, #8]
	str r0, [r1, #0x20]
	str r0, [r1, #0x24]
	ldrh r0, [r4, #0x18]
	cmp r0, #8
	bhs _02129FB8
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	ldr lr, [r0, #0x18]
	ldr ip, [r0, #0x1c]
	mov r0, #0x40000
	str lr, [r1, #0x18]
	str ip, [r1, #0x1c]
	ldrh r2, [r4, #0x18]
	mov r1, #0x8000
	mov r3, #8
	str lr, [sp]
	str ip, [sp, #4]
	bl sub_02007068
	ldr r2, [r4, #0x10]
	mov r1, #0x10
	str r0, [r2, #0x20]
	ldrh r2, [r4, #0x18]
	mov r0, #1
	mov r3, #8
	bl sub_02007068
	ldr r1, [r4, #0x10]
	and r0, r0, #0xff
	str r0, [r1, #0x14]
	arm_func_end ov1_02129ED4
_02129FB8:
	ldr r0, [r4]
	ldrh r1, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	bl sub_02008A38
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02129FD0
ov1_02129FD0: ; 0x02129FD0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	mov r4, r1
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5]
	ldrh r1, [r5, #0x1c]
	ldr r0, [r0, #0xc]
	bl sub_02008828
	ldr r2, [r5, #4]
	mov r1, r4
	strh r0, [r2, #0x2a]
	ldr r0, [r5, #4]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldrh r0, [r5, #0x18]
	tst r0, #1
	beq _0212A034
	ldr r0, [r5, #8]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	arm_func_end ov1_02129FD0
_0212A034:
	ldrh r0, [r5, #0x18]
	cmp r0, #8
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x10]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212A058
ov1_0212A058: ; 0x0212A058
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4]
	ldr r3, [r4, #4]
	ldr r0, [r1]
	mov r2, #0
	str r0, [r3, #0x2c]
	str r2, [r3, #0x30]
	ldr ip, [r1, #4]
	ldr r0, [r4, #4]
	mov r3, #8
	str ip, [r0, #0x34]
	ldr ip, [r1, #8]
	ldr r0, [r4, #4]
	str ip, [r0, #0x38]
	ldr ip, [r4, #8]
	ldr r0, [r1]
	str r0, [ip, #0x2c]
	str r2, [ip, #0x30]
	ldr ip, [r1, #4]
	ldr r0, [r4, #8]
	str ip, [r0, #0x34]
	ldr ip, [r1, #8]
	ldr r0, [r4, #8]
	str ip, [r0, #0x38]
	ldr r0, [r4, #8]
	strh r3, [r0, #0x2a]
	ldr r0, [r1, #0xc]
	mov r1, #1
	bl sub_02008A80
	strh r0, [r4, #0x1c]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212A058

	arm_func_start ov1_0212A0D8
ov1_0212A0D8: ; 0x0212A0D8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r4, r1
	str r4, [r0, #4]
	ldr r0, [r5, #4]
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	ldr r1, [r5, #4]
	add r4, r4, r0
	str r4, [r1, #4]
	ldr r0, [r5, #8]
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	add r2, r4, r0
	ldr r1, [r5, #8]
	add r0, r2, #1
	str r2, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_0212A0D8

	arm_func_start ov1_0212A124
ov1_0212A124: ; 0x0212A124
	ldr r0, _0212A138 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xd8]
	bx lr
	.align 2, 0
_0212A138: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212A124

	arm_func_start ov1_0212A13C
ov1_0212A13C: ; 0x0212A13C
	ldr r0, _0212A150 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x384]
	bx lr
	.align 2, 0
_0212A150: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212A13C

	arm_func_start ov1_0212A154
ov1_0212A154: ; 0x0212A154
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02122728
	cmp r0, #0
	mov r1, #0
	beq _0212A180
	cmp r0, #1
	beq _0212A18C
	cmp r0, #2
	beq _0212A19C
	b _0212A1A8
	arm_func_end ov1_0212A154
_0212A180:
	bl ov1_0212A124
	mov r1, r0
	b _0212A1A8
_0212A18C:
	mov r0, r4
	bl ov1_0212A1B0
	mov r1, r0
	b _0212A1A8
_0212A19C:
	mov r0, r4
	bl ov1_0212A1D0
	mov r1, r0
_0212A1A8:
	mov r0, r1
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212A1B0
ov1_0212A1B0: ; 0x0212A1B0
	ldr r2, _0212A1C8 ; =MAIN_BSS_0208F304
	mov r1, r0
	ldr r0, [r2]
	ldr ip, _0212A1CC ; =ov1_02122760
	ldr r0, [r0, #0xc]
	bx ip
	.align 2, 0
_0212A1C8: .word MAIN_BSS_0208F304
_0212A1CC: .word ov1_02122760
	arm_func_end ov1_0212A1B0

	arm_func_start ov1_0212A1D0
ov1_0212A1D0: ; 0x0212A1D0
	ldr r2, _0212A1E8 ; =MAIN_BSS_0208F304
	mov r1, r0
	ldr r0, [r2]
	ldr ip, _0212A1EC ; =ov1_02122788
	ldr r0, [r0, #0xc]
	bx ip
	.align 2, 0
_0212A1E8: .word MAIN_BSS_0208F304
_0212A1EC: .word ov1_02122788
	arm_func_end ov1_0212A1D0

	arm_func_start ov1_0212A1F0
ov1_0212A1F0: ; 0x0212A1F0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r4, r6
	mov r5, #1
	arm_func_end ov1_0212A1F0
_0212A200:
	add r7, r6, #9
	and r0, r7, #0xff
	bl ov1_0212A1D0
	ldr r0, [r0, #0x104]
	cmp r0, #0
	movne r0, r5
	moveq r0, r4
	cmp r0, #0
	andeq r0, r7, #0xff
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x60
	blo _0212A200
	mov r0, #0x89
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_0212A240
ov1_0212A240: ; 0x0212A240
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _0212A294 ; =MAIN_BSS_0208F304
	mov r4, r0
	ldr r0, [r1]
	mov r6, #0
	ldr r5, [r0, #0xc]
	arm_func_end ov1_0212A240
_0212A258:
	mov r0, r5
	mov r1, r6
	bl ov1_021227B0
	cmp r0, #0
	beq _0212A27C
	ldr r1, [r0, #0x18]
	ldrh r1, [r1]
	cmp r4, r1
	ldmeqia sp!, {r4, r5, r6, pc}
_0212A27C:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x12
	blo _0212A258
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212A294: .word MAIN_BSS_0208F304

	arm_func_start ov1_0212A298
ov1_0212A298: ; 0x0212A298
	stmdb sp!, {r3, lr}
	ldr r1, _0212A2C8 ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	ldr r0, [r2, #0xc]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl ov1_0211E7E8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212A2C8: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212A298

	arm_func_start ov1_0212A2CC
ov1_0212A2CC: ; 0x0212A2CC
	stmdb sp!, {r3, lr}
	ldr r1, _0212A2F0 ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B45C
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212A2F0: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212A2CC

	arm_func_start ov1_0212A2F4
ov1_0212A2F4: ; 0x0212A2F4
	stmdb sp!, {r3, lr}
	ldr r1, _0212A318 ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_0203499C
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212A318: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212A2F4

	arm_func_start ov1_0212A31C
ov1_0212A31C: ; 0x0212A31C
	stmdb sp!, {r3, lr}
	ldr r1, _0212A340 ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034870
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212A340: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212A31C

	arm_func_start ov1_0212A344
ov1_0212A344: ; 0x0212A344
	stmdb sp!, {r3, lr}
	ldr r1, _0212A368 ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	ldr r0, [r2, #0xc]
	and r1, r1, #0xff
	bl ov1_0211E71C
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212A368: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212A344

	arm_func_start ov1_0212A36C
ov1_0212A36C: ; 0x0212A36C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	bl ov1_0212A1F0
	mov r4, r0
	cmp r4, #0x89
	addeq sp, sp, #8
	moveq r0, #0x89
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov1_0212A240
	movs r5, r0
	addeq sp, sp, #8
	moveq r0, #0x89
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl ov1_0212A1D0
	mov r1, r5
	mov r5, r0
	bl ov1_021270FC
	ldr r0, [r6, #8]
	ldr r2, [r6, #4]
	str r0, [sp, #4]
	add r1, sp, #0
	str r2, [sp]
	add r0, r5, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	add r1, r5, #0x100
	mov r2, #1
	mov r0, r4
	strh r2, [r1, #0x8e]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_0212A36C

	arm_func_start ov1_0212A3FC
ov1_0212A3FC: ; 0x0212A3FC
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	bl ov1_0212A1F0
	mov r4, r0
	cmp r4, #0x89
	addeq sp, sp, #8
	moveq r0, #0x89
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov1_0212A240
	movs r6, r0
	addeq sp, sp, #8
	moveq r0, #0x89
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl ov1_0212A1D0
	mov r1, r6
	mov r6, r0
	bl ov1_021270FC
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	str r0, [sp, #4]
	add r1, sp, #0
	str r2, [sp]
	add r0, r6, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r2, [r5, #0xc]
	add r1, r6, #0x100
	mov r0, r4
	strh r2, [r1, #0x8e]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_0212A3FC

	arm_func_start ov1_0212A48C
ov1_0212A48C: ; 0x0212A48C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0xc]
	ldr ip, [r4, #4]
	ldr r3, [r4, #8]
	mov r1, r1, lsl #0x10
	str r3, [sp, #4]
	add r2, sp, #0
	str ip, [sp]
	mov r3, r1, lsr #0x10
	add r0, r0, #0xc
	ldmia r2, {r1, r2}
	bl sub_02011AB0
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212A48C

	arm_func_start ov1_0212A4EC
ov1_0212A4EC: ; 0x0212A4EC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr ip, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r1, sp, #0
	str ip, [sp]
	str r2, [sp, #4]
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011C20
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212A4EC

	arm_func_start ov1_0212A544
ov1_0212A544: ; 0x0212A544
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmib r4, {r1, r2}
	mov r1, r1, lsl #0x10
	add r0, r0, #0xc
	mov r1, r1, lsr #0x10
	bl sub_02011C90
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212A544

	arm_func_start ov1_0212A580
ov1_0212A580: ; 0x0212A580
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	movs r2, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #8]
	add r0, r2, #0xc
	str r1, [sp]
	ldr r1, [r4, #0xc]
	add r2, r2, #0x20
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp, #4]
	ldr r1, [r4, #0x10]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp, #8]
	ldr r1, [r4, #0x14]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp, #0xc]
	ldr r3, [r4, #4]
	ldmia r2, {r1, r2}
	bl sub_02011CB4
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212A580

	arm_func_start ov1_0212A600
ov1_0212A600: ; 0x0212A600
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmib r4, {r1, r2}
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl sub_020127D0
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212A600

	arm_func_start ov1_0212A638
ov1_0212A638: ; 0x0212A638
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmib r4, {r1, r2}
	bl sub_02012808
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212A638

	arm_func_start ov1_0212A668
ov1_0212A668: ; 0x0212A668
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r1, r0, #0x20
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212A668

	arm_func_start ov1_0212A69C
ov1_0212A69C: ; 0x0212A69C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmib r4, {r1, r2}
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl sub_02012860
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212A69C

	arm_func_start ov1_0212A6D4
ov1_0212A6D4: ; 0x0212A6D4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	tst r0, #0xff
	ldreq r0, [r4, #4]
	cmpeq r0, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A1D0
	cmp r0, #0
	beq _0212A734
	ldmib r4, {r1, r2}
	sub r2, r2, #1
	and r2, r2, #0xff
	bl ov1_02127454
	b _0212A74C
	arm_func_end ov1_0212A6D4
_0212A734:
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	sub r2, r0, #1
	mov r0, r5
	and r2, r2, #0xff
	bl sub_02012114
_0212A74C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212A754
ov1_0212A754: ; 0x0212A754
	stmdb sp!, {r4, lr}
	ldr r0, [r0]
	and r4, r0, #0xff
	mov r0, r4
	bl ov1_02122728
	cmp r0, #0
	beq _0212A7A0
	cmp r0, #1
	beq _0212A784
	cmp r0, #2
	beq _0212A794
	b _0212A7A0
	arm_func_end ov1_0212A754
_0212A784:
	mov r0, r4
	bl ov1_0212A1B0
	bl ov1_021262AC
	b _0212A7A0
_0212A794:
	mov r0, r4
	bl ov1_0212A1D0
	bl ov1_02127300
_0212A7A0:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212A7A8
ov1_0212A7A8: ; 0x0212A7A8
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A1B0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrh r1, [r0, #4]
	orr r1, r1, #0x100
	strh r1, [r0, #4]
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212A7A8

	arm_func_start ov1_0212A7D8
ov1_0212A7D8: ; 0x0212A7D8
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A1B0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrh r1, [r0, #4]
	bic r1, r1, #0x100
	strh r1, [r0, #4]
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212A7D8

	arm_func_start ov1_0212A808
ov1_0212A808: ; 0x0212A808
	stmdb sp!, {r4, lr}
	ldr r0, [r0]
	and r4, r0, #0xff
	mov r0, r4
	bl ov1_02122728
	cmp r0, #1
	beq _0212A830
	cmp r0, #2
	beq _0212A844
	b _0212A854
	arm_func_end ov1_0212A808
_0212A830:
	mov r0, r4
	bl ov1_0212A1B0
	mov r1, #1
	bl ov1_0212671C
	b _0212A854
_0212A844:
	mov r0, r4
	bl ov1_0212A1D0
	mov r1, #1
	bl ov1_02127388
_0212A854:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212A85C
ov1_0212A85C: ; 0x0212A85C
	stmdb sp!, {r4, lr}
	ldr r0, [r0]
	and r4, r0, #0xff
	mov r0, r4
	bl ov1_02122728
	cmp r0, #1
	beq _0212A884
	cmp r0, #2
	beq _0212A898
	b _0212A8A8
	arm_func_end ov1_0212A85C
_0212A884:
	mov r0, r4
	bl ov1_0212A1B0
	mov r1, #0
	bl ov1_0212671C
	b _0212A8A8
_0212A898:
	mov r0, r4
	bl ov1_0212A1D0
	mov r1, #0
	bl ov1_02127388
_0212A8A8:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212A8B0
ov1_0212A8B0: ; 0x0212A8B0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6]
	and r0, r0, #0xff
	bl ov1_0212A1D0
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	and r0, r0, #0xff
	bl ov1_0212A154
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	and r0, r0, #0xff
	bl ov1_02122728
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl ov1_0212728C
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_0212A8B0

	arm_func_start ov1_0212A90C
ov1_0212A90C: ; 0x0212A90C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0xc]
	ldmib r4, {r2, r3}
	bl sub_02012A3C
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212A90C

	arm_func_start ov1_0212A940
ov1_0212A940: ; 0x0212A940
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	and r2, r2, #0xff
	bl sub_020129F4
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212A940

	arm_func_start ov1_0212A978
ov1_0212A978: ; 0x0212A978
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5]
	and r0, r0, #0xff
	bl ov1_0212A154
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #8]
	mov r1, r1, lsl #0x10
	movs r1, r1, asr #0x10
	bne _0212A9B8
	ldr r1, [r5, #4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_020128EC
	arm_func_end ov1_0212A978
_0212A9B8:
	ldr r0, [r5, #4]
	ldrh r3, [r4, #0x72]
	mov r1, r0, lsl #0x10
	mov ip, r1, lsr #0x10
	cmp r3, r1, lsr #16
	subhs r2, r3, ip
	addlo r1, r3, #0x10000
	sublo r2, r1, ip
	cmp r3, ip
	subls r1, ip, r3
	addhi r1, ip, #0x10000
	subhi r1, r1, r3
	cmp r2, r1
	ldr r1, [r5, #8]
	mov r1, r1, lsl #0x10
	blo _0212AA04
	movs r1, r1, asr #0x10
	rsbmi r1, r1, #0
	b _0212AA10
_0212AA04:
	movs r1, r1, asr #0x10
	rsbmi r1, r1, #0
	rsb r1, r1, #0
_0212AA10:
	mov r1, r1, lsl #0x10
	mov r2, r1, asr #0x10
	mov r1, r0, lsl #0x10
	mov r0, r4
	mov r1, r1, lsr #0x10
	bl sub_02012990
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212AA30
ov1_0212AA30: ; 0x0212AA30
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0201287C
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212AA30

	arm_func_start ov1_0212AA58
ov1_0212AA58: ; 0x0212AA58
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, [r4, #4]
	ldr r2, [r4, #8]
	add r1, sp, #0
	str r3, [sp]
	str r2, [sp, #4]
	ldmia r1, {r1, r2}
	bl sub_02012894
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212AA58

	arm_func_start ov1_0212AAA8
ov1_0212AAA8: ; 0x0212AAA8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #4]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_020128C0
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212AAA8

	arm_func_start ov1_0212AAE0
ov1_0212AAE0: ; 0x0212AAE0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A1B0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #8]
	ldr r0, [r0, #0x1a4]
	mov r2, r1, lsl #0x10
	ldr r1, [r4, #4]
	mov r2, r2, lsr #0x10
	bl ov1_02127888
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212AAE0

	arm_func_start ov1_0212AB20
ov1_0212AB20: ; 0x0212AB20
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A1B0
	cmp r0, #0
	moveq r0, #0
	ldrne r1, [r0, #0x1a0]
	movne r0, #1
	strne r0, [r1, #8]
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212AB20

	arm_func_start ov1_0212AB48
ov1_0212AB48: ; 0x0212AB48
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A1B0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x1a0]
	mov r1, #0
	str r1, [r0, #8]
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212AB48

	arm_func_start ov1_0212AB78
ov1_0212AB78: ; 0x0212AB78
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A1B0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	mov r1, #1
	bl ov1_02126734
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212AB78

	arm_func_start ov1_0212ABA4
ov1_0212ABA4: ; 0x0212ABA4
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A1B0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	mov r1, #0
	bl ov1_02126734
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212ABA4

	arm_func_start ov1_0212ABD0
ov1_0212ABD0: ; 0x0212ABD0
	stmdb sp!, {r4, lr}
	ldr r0, [r0]
	and r4, r0, #0xff
	mov r0, r4
	bl ov1_02122728
	cmp r0, #1
	beq _0212ABF8
	cmp r0, #2
	beq _0212AC0C
	b _0212AC1C
	arm_func_end ov1_0212ABD0
_0212ABF8:
	mov r0, r4
	bl ov1_0212A1B0
	mov r1, #1
	bl ov1_0212674C
	b _0212AC1C
_0212AC0C:
	mov r0, r4
	bl ov1_0212A1D0
	mov r1, #1
	bl ov1_02127370
_0212AC1C:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212AC24
ov1_0212AC24: ; 0x0212AC24
	stmdb sp!, {r4, lr}
	ldr r0, [r0]
	and r4, r0, #0xff
	mov r0, r4
	bl ov1_02122728
	cmp r0, #1
	beq _0212AC4C
	cmp r0, #2
	beq _0212AC60
	b _0212AC70
	arm_func_end ov1_0212AC24
_0212AC4C:
	mov r0, r4
	bl ov1_0212A1B0
	mov r1, #0
	bl ov1_0212674C
	b _0212AC70
_0212AC60:
	mov r0, r4
	bl ov1_0212A1D0
	mov r1, #0
	bl ov1_02127370
_0212AC70:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212AC78
ov1_0212AC78: ; 0x0212AC78
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A1B0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmib r4, {r1, r2}
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl ov1_021263A4
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212AC78

	arm_func_start ov1_0212ACB0
ov1_0212ACB0: ; 0x0212ACB0
	stmdb sp!, {r3, lr}
	bl ov1_0212A124
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r1, r0, #0x100
	ldrh r2, [r1, #0x94]
	mov r0, #1
	orr r2, r2, #0x80
	strh r2, [r1, #0x94]
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212ACB0

	arm_func_start ov1_0212ACDC
ov1_0212ACDC: ; 0x0212ACDC
	stmdb sp!, {r3, lr}
	bl ov1_0212A124
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r1, r0, #0x100
	ldrh r2, [r1, #0x94]
	mov r0, #1
	bic r2, r2, #0x80
	strh r2, [r1, #0x94]
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212ACDC

	arm_func_start ov1_0212AD08
ov1_0212AD08: ; 0x0212AD08
	ldr r1, _0212AD24 ; =MAIN_BSS_0208F304
	ldr r2, [r0]
	ldr r1, [r1]
	mov r0, #1
	ldr r1, [r1, #0xc]
	str r2, [r1, #0x7c]
	bx lr
	.align 2, 0
_0212AD24: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212AD08

	arm_func_start ov1_0212AD28
ov1_0212AD28: ; 0x0212AD28
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, [r0]
	and r4, r0, #0xff
	mov r0, r4
	bl ov1_02122728
	cmp r0, #0
	beq _0212AD58
	cmp r0, #1
	beq _0212AD64
	cmp r0, #2
	beq _0212AD78
	b _0212AD80
	arm_func_end ov1_0212AD28
_0212AD58:
	bl ov1_0212A124
	ldrb r5, [r0, #0x19c]
	b _0212AD80
_0212AD64:
	mov r0, r4
	bl ov1_0212A1B0
	add r0, r0, #0x100
	ldrh r5, [r0, #0x88]
	b _0212AD80
_0212AD78:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0212AD80:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212AD88
ov1_0212AD88: ; 0x0212AD88
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, [r0]
	and r5, r0, #0xff
	mov r0, r5
	bl ov1_02122728
	cmp r0, #0
	beq _0212ADB8
	cmp r0, #1
	beq _0212ADF8
	cmp r0, #2
	beq _0212AE20
	b _0212AE28
	arm_func_end ov1_0212AD88
_0212ADB8:
	ldr r0, _0212AE3C ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x43c]
	bl sub_02010B34
	mov r5, r0
	bl ov1_0212A124
	ldr r1, _0212AE3C ; =MAIN_BSS_0208F304
	ldrb r4, [r0, #0x19c]
	ldr r0, [r1]
	mov r1, r5
	add r0, r0, #0x1000
	ldr r0, [r0, #0x438]
	bl sub_02010E78
	mov r6, r0
	b _0212AE28
_0212ADF8:
	mov r0, r5
	bl ov1_0212A1B0
	add r1, r0, #0x100
	mov r0, r5
	ldrh r4, [r1, #0x88]
	bl ov1_0212A1B0
	ldr r0, [r0, #0x184]
	ldr r0, [r0, #0x1c]
	ldrh r6, [r0]
	b _0212AE28
_0212AE20:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0212AE28:
	mov r0, #0x64
	mul r0, r4, r0
	mov r1, r6
	bl _s32_div_f
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212AE3C: .word MAIN_BSS_0208F304

	arm_func_start ov1_0212AE40
ov1_0212AE40: ; 0x0212AE40
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A1B0
	cmp r0, #0
	ldrne r0, [r0, #0x18c]
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212AE40

	arm_func_start ov1_0212AE60
ov1_0212AE60: ; 0x0212AE60
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	ldrne r0, [r0, #0x20]
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212AE60

	arm_func_start ov1_0212AE80
ov1_0212AE80: ; 0x0212AE80
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	ldrne r0, [r0, #0x24]
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212AE80

	arm_func_start ov1_0212AEA0
ov1_0212AEA0: ; 0x0212AEA0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x28]
	ldr r0, [r4, #4]
	sub r1, r2, r1
	mla r0, r1, r0, r2
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212AEA0

	arm_func_start ov1_0212AED8
ov1_0212AED8: ; 0x0212AED8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r0, #0x24]
	ldr r1, [r0, #0x2c]
	ldr r0, [r4, #4]
	sub r1, r2, r1
	mla r0, r1, r0, r2
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212AED8

	arm_func_start ov1_0212AF10
ov1_0212AF10: ; 0x0212AF10
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	ldrneh r0, [r0, #0x72]
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212AF10

	arm_func_start ov1_0212AF30
ov1_0212AF30: ; 0x0212AF30
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, [r0]
	mov r4, #0
	and r5, r0, #0xff
	mov r0, r5
	bl ov1_02122728
	cmp r0, #1
	beq _0212AF5C
	cmp r0, #2
	beq _0212AF74
	b _0212AF84
	arm_func_end ov1_0212AF30
_0212AF5C:
	mov r0, r5
	bl ov1_0212A1B0
	ldr r0, [r0, #0x184]
	ldr r0, [r0, #0x1c]
	ldrb r4, [r0, #5]
	b _0212AF84
_0212AF74:
	mov r0, r5
	bl ov1_0212A1D0
	add r0, r0, #0x100
	ldrh r4, [r0, #0x8e]
_0212AF84:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212AF8C
ov1_0212AF8C: ; 0x0212AF8C
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212AF8C

	arm_func_start ov1_0212AFBC
ov1_0212AFBC: ; 0x0212AFBC
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212AFBC

	arm_func_start ov1_0212AFEC
ov1_0212AFEC: ; 0x0212AFEC
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	ldrne r0, [r0, #0x90]
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212AFEC

	arm_func_start ov1_0212B00C
ov1_0212B00C: ; 0x0212B00C
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	ldrne r0, [r0, #0xa4]
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212B00C

	arm_func_start ov1_0212B02C
ov1_0212B02C: ; 0x0212B02C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r0, [r0]
	and r5, r0, #0xff
	mov r0, r5
	bl ov1_0212A154
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov1_02122728
	cmp r0, #2
	mov r0, r4
	bne _0212B068
	bl ov1_0212747C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_0212B02C
_0212B068:
	bl sub_02012AFC
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212B070
ov1_0212B070: ; 0x0212B070
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	and r0, r0, #0xff
	bl ov1_0212A154
	cmp r0, #0
	ldrne r0, [r0, #0x74]
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212B070

	arm_func_start ov1_0212B090
ov1_0212B090: ; 0x0212B090
	stmdb sp!, {r3, lr}
	bl ov1_0212A124
	mov r1, #1
	bl ov1_0212C514
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212B090

	arm_func_start ov1_0212B0A8
ov1_0212B0A8: ; 0x0212B0A8
	stmdb sp!, {r3, lr}
	bl ov1_0212A124
	mov r1, #0
	bl ov1_0212C514
	ldr r0, _0212B0F0 ; =MAIN_BSS_0208F304
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034ED8
	bl ov1_0212A13C
	cmp r0, #0
	beq _0212B0E8
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	arm_func_end ov1_0212B0A8
_0212B0E8:
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B0F0: .word MAIN_BSS_0208F304

	arm_func_start ov1_0212B0F4
ov1_0212B0F4: ; 0x0212B0F4
	stmdb sp!, {r3, lr}
	bl ov1_0212A124
	bl ov1_0212C5C0
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212B0F4

	arm_func_start ov1_0212B104
ov1_0212B104: ; 0x0212B104
	ldr r0, _0212B118 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x28]
	bx lr
	.align 2, 0
_0212B118: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B104

	arm_func_start ov1_0212B11C
ov1_0212B11C: ; 0x0212B11C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r6
	mov r4, r6
	mov r5, #1
	arm_func_end ov1_0212B11C
_0212B130:
	add r0, r7, #1
	and r0, r0, #0xff
	bl ov1_0212A1B0
	cmp r0, #0
	beq _0212B15C
	ldr r0, [r0, #0x104]
	cmp r0, #0
	movne r0, r5
	moveq r0, r4
	cmp r0, #0
	addne r6, r6, #1
_0212B15C:
	add r7, r7, #1
	cmp r7, #8
	blt _0212B130
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_0212B170
ov1_0212B170: ; 0x0212B170
	stmdb sp!, {r3, lr}
	mov r2, #0
	ldr r1, _0212B1A8 ; =MAIN_BSS_0208F304
	str r2, [sp]
	ldr r1, [r1]
	mov r3, r0
	add r0, r1, #0x1000
	mov r2, #1
	ldr r0, [r0, #0x490]
	ldr r1, [r3]
	mov r3, r2
	bl sub_0200B640
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B1A8: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B170

	arm_func_start ov1_0212B1AC
ov1_0212B1AC: ; 0x0212B1AC
	stmdb sp!, {r3, lr}
	mov r2, #0
	ldr r1, _0212B1E0 ; =MAIN_BSS_0208F304
	str r2, [sp]
	ldr r1, [r1]
	mov r3, r0
	add r0, r1, #0x1000
	ldr r0, [r0, #0x490]
	ldr r1, [r3]
	mov r3, #1
	bl sub_0200B640
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B1E0: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B1AC

	arm_func_start ov1_0212B1E4
ov1_0212B1E4: ; 0x0212B1E4
	ldr r0, _0212B1FC ; =MAIN_BSS_0208F304
	ldr ip, _0212B200 ; =FUN_02009ECC
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bx ip
	.align 2, 0
_0212B1FC: .word MAIN_BSS_0208F304
_0212B200: .word sub_02009ECC
	arm_func_end ov1_0212B1E4

	arm_func_start ov1_0212B204
ov1_0212B204: ; 0x0212B204
	stmdb sp!, {r3, lr}
	ldr r0, _0212B22C ; =MAIN_BSS_0208F304
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009FB0
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B22C: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B204

	arm_func_start ov1_0212B230
ov1_0212B230: ; 0x0212B230
	ldr r1, _0212B250 ; =MAIN_BSS_0208F304
	mov r0, #1
	ldr r1, [r1]
	ldr r2, [r1, #0xc]
	ldrh r1, [r2, #8]
	orr r1, r1, #2
	strh r1, [r2, #8]
	bx lr
	.align 2, 0
_0212B250: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B230

	arm_func_start ov1_0212B254
ov1_0212B254: ; 0x0212B254
	ldr r1, _0212B274 ; =MAIN_BSS_0208F304
	mov r0, #1
	ldr r1, [r1]
	ldr r2, [r1, #0xc]
	ldrh r1, [r2, #8]
	bic r1, r1, #2
	strh r1, [r2, #8]
	bx lr
	.align 2, 0
_0212B274: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B254

	arm_func_start ov1_0212B278
ov1_0212B278: ; 0x0212B278
	ldr r1, _0212B290 ; =MAIN_BSS_0208F304
	mov r0, #1
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	str r0, [r1, #0x70]
	bx lr
	.align 2, 0
_0212B290: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B278

	arm_func_start ov1_0212B294
ov1_0212B294: ; 0x0212B294
	ldr r0, _0212B2B0 ; =MAIN_BSS_0208F304
	mov r2, #0
	ldr r1, [r0]
	mov r0, #1
	ldr r1, [r1, #0xc]
	str r2, [r1, #0x70]
	bx lr
	.align 2, 0
_0212B2B0: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B294

	arm_func_start ov1_0212B2B4
ov1_0212B2B4: ; 0x0212B2B4
	stmdb sp!, {r3, lr}
	ldr r1, _0212B2D4 ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	ldr r0, [r2, #0xc]
	bl ov1_021227CC
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B2D4: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B2B4

	arm_func_start ov1_0212B2D8
ov1_0212B2D8: ; 0x0212B2D8
	stmdb sp!, {r3, lr}
	ldr r0, _0212B2F8 ; =MAIN_BSS_0208F304
	mov r1, #0
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl ov1_02122D78
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B2F8: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B2D8

	arm_func_start ov1_0212B2FC
ov1_0212B2FC: ; 0x0212B2FC
	stmdb sp!, {r3, lr}
	ldr r0, _0212B31C ; =MAIN_BSS_0208F304
	mov r1, #1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl ov1_02122D78
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B31C: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B2FC

	arm_func_start ov1_0212B320
ov1_0212B320: ; 0x0212B320
	stmdb sp!, {r3, lr}
	ldr r1, _0212B350 ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldr r0, [r0, #0x4bc]
	mov r1, #2
	bl sub_0200E0E0
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B350: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B320

	arm_func_start ov1_0212B354
ov1_0212B354: ; 0x0212B354
	stmdb sp!, {r3, lr}
	ldr r1, _0212B384 ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldr r0, [r0, #0x4bc]
	mov r1, #1
	bl sub_0200E0E0
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B384: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B354

	arm_func_start ov1_0212B388
ov1_0212B388: ; 0x0212B388
	stmdb sp!, {r3, lr}
	ldr r1, _0212B3B8 ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldr r0, [r0, #0x4bc]
	mov r1, #4
	bl sub_0200E0E0
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B3B8: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B388

	arm_func_start ov1_0212B3BC
ov1_0212B3BC: ; 0x0212B3BC
	stmdb sp!, {r3, lr}
	ldr r1, _0212B3EC ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldr r0, [r0, #0x4bc]
	mov r1, #3
	bl sub_0200E0E0
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B3EC: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B3BC

	arm_func_start ov1_0212B3F0
ov1_0212B3F0: ; 0x0212B3F0
	stmdb sp!, {r3, lr}
	ldr r1, _0212B414 ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B414: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B3F0

	arm_func_start ov1_0212B418
ov1_0212B418: ; 0x0212B418
	stmdb sp!, {r3, lr}
	ldr r1, _0212B43C ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C5C
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B43C: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B418

	arm_func_start ov1_0212B440
ov1_0212B440: ; 0x0212B440
	stmdb sp!, {r3, lr}
	ldr r1, _0212B468 ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	mov r2, #0x40
	bl sub_02034CF4
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B468: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B440

	arm_func_start ov1_0212B46C
ov1_0212B46C: ; 0x0212B46C
	stmdb sp!, {r3, lr}
	ldr r1, _0212B494 ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	mov r2, #0
	bl sub_02034A40
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B494: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B46C

	arm_func_start ov1_0212B498
ov1_0212B498: ; 0x0212B498
	stmdb sp!, {r3, lr}
	ldr r1, _0212B4BC ; =MAIN_BSS_0208F304
	ldr r2, [r1]
	ldr r1, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B58
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212B4BC: .word MAIN_BSS_0208F304
	arm_func_end ov1_0212B498

	arm_func_start ov1_0212B4C0
ov1_0212B4C0: ; 0x0212B4C0
	ldr r0, [r0]
	ldr r1, _0212B4E0 ; =FX_SinCosTable_
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r0, r0, lsl #2
	ldrsh r0, [r1, r0]
	bx lr
	.align 2, 0
_0212B4E0: .word FX_SinCosTable_
	arm_func_end ov1_0212B4C0

	arm_func_start ov1_0212B4E4
ov1_0212B4E4: ; 0x0212B4E4
	ldr r0, [r0]
	ldr r1, _0212B50C ; =FX_SinCosTable_
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r0, r0, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r1, r0]
	bx lr
	.align 2, 0
_0212B50C: .word FX_SinCosTable_
	arm_func_end ov1_0212B4E4

	arm_func_start ov1_0212B510
ov1_0212B510: ; 0x0212B510
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #0xc]
	ldr r2, [r0, #8]
	ldmia r0, {r1, r3}
	sub r0, ip, r3
	sub r1, r2, r1
	bl FX_Atan2Idx
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212B510

	arm_func_start ov1_0212B530
ov1_0212B530: ; 0x0212B530
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201001C
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmia r4, {r1, r2}
	bl sub_0200215C
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212B530

	arm_func_start ov1_0212B55C
ov1_0212B55C: ; 0x0212B55C
	stmdb sp!, {r3, lr}
	bl sub_0201001C
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02002178
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212B55C

	arm_func_start ov1_0212B580
ov1_0212B580: ; 0x0212B580
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201001C
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r4, #8]
	ldr r1, [r4]
	mov r3, r2, lsl #0x10
	ldr r2, [r4, #4]
	mov r3, r3, lsr #0x10
	bl sub_02002198
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212B580

	arm_func_start ov1_0212B5BC
ov1_0212B5BC: ; 0x0212B5BC
	ldr r0, _0212B5D0 ; =MAIN_BSS_0208F304
	ldr ip, _0212B5D4 ; =ov1_021227C4
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bx ip
	.align 2, 0
_0212B5D0: .word MAIN_BSS_0208F304
_0212B5D4: .word ov1_021227C4
	arm_func_end ov1_0212B5BC

	arm_func_start ov1_0212B5D8
ov1_0212B5D8: ; 0x0212B5D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212B5BC
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldmia r4, {r1, r2}
	bl sub_0200D44C
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212B5D8

	arm_func_start ov1_0212B600
ov1_0212B600: ; 0x0212B600
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212B5BC
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r1, [r4]
	bl sub_0200D460
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212B600

	arm_func_start ov1_0212B628
ov1_0212B628: ; 0x0212B628
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212B5BC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmia r4, {r1, r2, r3}
	bl sub_0200D490
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212B628

	arm_func_start ov1_0212B650
ov1_0212B650: ; 0x0212B650
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212B5BC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r4, #0xc]
	ldr r1, [r4]
	mov r3, r2, lsl #0x10
	ldr r2, [r4, #4]
	mov r3, r3, lsr #0x10
	bl sub_0200D5FC
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212B650

	arm_func_start ov1_0212B688
ov1_0212B688: ; 0x0212B688
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212B5BC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmia r4, {r1, r2}
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl sub_0200D748
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212B688

	arm_func_start ov1_0212B6B8
ov1_0212B6B8: ; 0x0212B6B8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212B5BC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	mov r2, r2, lsl #0x10
	mov r3, r1, lsl #0x10
	ldr r1, [r4]
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	bl sub_0200D6E8
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212B6B8

	arm_func_start ov1_0212B6F8
ov1_0212B6F8: ; 0x0212B6F8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212B5BC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmia r4, {r1, r2}
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl sub_0200D870
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212B6F8

	arm_func_start ov1_0212B728
ov1_0212B728: ; 0x0212B728
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212B5BC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmia r4, {r1, r2}
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl sub_0200D7B8
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212B728

	arm_func_start ov1_0212B760
ov1_0212B760: ; 0x0212B760
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212B5BC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	mov r2, r2, lsl #0x10
	mov r3, r1, lsl #0x10
	ldr r1, [r4]
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	bl sub_0200D7F4
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212B760

	arm_func_start ov1_0212B7A0
ov1_0212B7A0: ; 0x0212B7A0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r6, r1
	bl sub_02011D60
	ldr r1, _0212BA34 ; =ptr_FUN_overlay_1_0212ba58_overlay_1_021411f8
	add r0, r7, #0x1c4
	str r1, [r7]
	bl sub_020049A4
	add r0, r7, #0x1e8
	bl sub_02003B64
	mov r0, r7
	bl ov1_0212BAD0
	ldr r0, _0212BA38 ; =0x00006504
	bl _Znwm
	cmp r0, #0
	beq _0212B7E8
	bl ov1_0212306C
	arm_func_end ov1_0212B7A0
_0212B7E8:
	str r0, [r7, #0x1b8]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0212B800
	bl ov1_02128860
_0212B800:
	str r0, [r7, #0x1bc]
	mov r0, #0xc80
	bl _Znwm
	cmp r0, #0
	beq _0212B818
	bl ov1_02136C00
_0212B818:
	str r0, [r7, #0x1c0]
	mov r0, #0x4c
	bl _Znwm
	cmp r0, #0
	beq _0212B830
	bl sub_02005150
_0212B830:
	str r0, [r7, #0x228]
	mov r0, #0x4c
	bl _Znwm
	cmp r0, #0
	beq _0212B848
	bl sub_02005150
_0212B848:
	str r0, [r7, #0x234]
	mov r0, #0x190
	bl _Znwm
	cmp r0, #0
	beq _0212B860
	bl ov1_0212E32C
_0212B860:
	ldr r1, _0212BA3C ; =ov1_0212E5C8
	str r0, [r7, #0x248]
	ldr r3, _0212BA40 ; =ov1_0212E528
	str r1, [sp]
	mov r0, #7
	mov r1, #0x19c
	mov r2, #8
	bl __cxa_vec_new
	str r0, [r7, #0x24c]
	mov r0, #8
	bl _Znwm
	cmp r0, #0
	beq _0212B898
	bl ov1_02127CD8
_0212B898:
	str r0, [r7, #0x258]
	mov r0, #0x30
	bl _Znwm
	cmp r0, #0
	beq _0212B8B0
	bl ov1_02127E14
_0212B8B0:
	str r0, [r7, #0x254]
	ldr r1, [r7, #0x258]
	bl ov1_0212807C
	mov r0, #4
	bl _Znwm
	cmp r0, #0
	beq _0212B8D0
	bl ov1_02128A60
_0212B8D0:
	str r0, [r7, #0x260]
	mov r0, #0x1c
	bl _Znwm
	cmp r0, #0
	beq _0212B8E8
	bl ov1_02128B24
_0212B8E8:
	str r0, [r7, #0x25c]
	ldr r1, [r7, #0x260]
	bl ov1_02128BE4
	ldr r0, [r7, #0x25c]
	ldr r1, _0212BA44 ; =0x00000401
	bl ov1_02128E74
	mov r4, #0
	ldr sb, _0212BA48 ; =DAT_overlay_1_0213fbf8
	ldr r8, _0212BA4C ; =DAT_overlay_1_0213fc14
	mov r3, r7
	mov r5, r4
_0212B914:
	ldr r0, [r7, #0x24c]
	ldr r1, [sb, r4, lsl #2]
	ldr r2, [r8, r4, lsl #2]
	add r0, r0, r5
	bl ov1_0212E69C
	ldr r0, [r7, #0x24c]
	add r4, r4, #1
	add r3, r0, r5
	cmp r4, #7
	add r5, r5, #0x19c
	blt _0212B914
	mov r1, #0
	add r0, r7, #0x100
	strh r1, [r0, #0x98]
	strh r1, [r0, #0x9a]
	mov r2, #0x20
	strh r2, [r0, #0x94]
	ldr r0, [r7, #0x1b8]
	mov r2, r1
	bl ov1_02124548
	mov r2, #0x1f
	add r0, r7, #0x100
	strh r2, [r0, #0xcc]
	rsb r1, r2, #0x420
	str r1, [r7, #0x1c8]
	mov r1, #0x10
	str r1, [r7, #0x1d8]
	mov r1, #0x8000
	str r1, [r7, #0x1e4]
	mov r1, #0x3e
	str r1, [r7, #0x1d4]
	ldr r4, [r7, #0x20]
	ldr r3, [r7, #0x24]
	mov r1, #0x400
	str r4, [r7, #0x1dc]
	str r3, [r7, #0x1e0]
	strh r2, [r0, #0xf0]
	str r1, [r7, #0x1ec]
	mov r0, #0
	str r0, [r7, #0x1fc]
	mov r0, #0x18000
	str r0, [r7, #0x208]
	str r0, [r7, #0x20c]
	mov r0, #0x3f
	str r0, [r7, #0x1f8]
	ldr r2, [r7, #0x20]
	ldr r1, [r7, #0x24]
	mov r0, r7
	str r2, [r7, #0x200]
	str r1, [r7, #0x204]
	str r4, [sp, #0xc]
	str r3, [sp, #0x10]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r6, [r7, #0x250]
	bl ov1_0212CF1C
	mov r3, #0
	ldr r2, _0212BA50 ; =0x0000319F
	str r3, [r7, #0x18c]
	add r0, r7, #0x200
	ldr r1, _0212BA54 ; =0x00007D8C
	strh r2, [r0, #0x42]
	strh r1, [r0, #0x44]
	add r1, r2, #0x260
	strh r1, [r0, #0x46]
	strb r3, [r7, #0x184]
	strb r3, [r7, #0x185]
	strb r3, [r7, #0x186]
	mov r0, r7
	strb r3, [r7, #0x188]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0212BA34: .word ptr_FUN_overlay_1_0212ba58_overlay_1_021411f8
_0212BA38: .word 0x00006504
_0212BA3C: .word ov1_0212E5C8
_0212BA40: .word ov1_0212E528
_0212BA44: .word 0x00000401
_0212BA48: .word DAT_overlay_1_0213fbf8
_0212BA4C: .word DAT_overlay_1_0213fc14
_0212BA50: .word 0x0000319F
_0212BA54: .word 0x00007D8C

	arm_func_start ov1_0212BA58
ov1_0212BA58: ; 0x0212BA58
	stmdb sp!, {r4, lr}
	ldr r1, _0212BA8C ; =ptr_FUN_overlay_1_0212ba58_overlay_1_021411f8
	mov r4, r0
	str r1, [r4]
	bl ov1_0212BC54
	add r0, r4, #0x1e8
	bl sub_02003BB0
	add r0, r4, #0x1c4
	bl sub_020049D4
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212BA8C: .word ptr_FUN_overlay_1_0212ba58_overlay_1_021411f8
	arm_func_end ov1_0212BA58

	arm_func_start ov1_0212BA90
ov1_0212BA90: ; 0x0212BA90
	stmdb sp!, {r4, lr}
	ldr r1, _0212BACC ; =ptr_FUN_overlay_1_0212ba58_overlay_1_021411f8
	mov r4, r0
	str r1, [r4]
	bl ov1_0212BC54
	add r0, r4, #0x1e8
	bl sub_02003BB0
	add r0, r4, #0x1c4
	bl sub_020049D4
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212BACC: .word ptr_FUN_overlay_1_0212ba58_overlay_1_021411f8
	arm_func_end ov1_0212BA90

	arm_func_start ov1_0212BAD0
ov1_0212BAD0: ; 0x0212BAD0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1ec
	mov sl, r0
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0212BB14
	ldr r2, _0212BC20 ; =s_BDS_i019_NCLR_overlay_1_02141240
	ldr r1, _0212BC24 ; =s_BDS_i019_00_NCER_overlay_1_02141250
	str r2, [sp]
	ldr r4, _0212BC28 ; =s_BDS_i019_00_cac_overlay_1_02141264
	str r1, [sp, #4]
	ldr r1, _0212BC2C ; =s_BDS_overlay_1_0214120c
	ldr r2, _0212BC30 ; =s_data_interface_i019_LZ_bin_overlay_1_02141210
	ldr r3, _0212BC34 ; =s_BDS_i019_00_NCBR_overlay_1_0214122c
	str r4, [sp, #8]
	bl sub_0201AAE0
	arm_func_end ov1_0212BAD0
_0212BB14:
	str r0, [sl, #0x22c]
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	add r1, sl, #0x200
	strh r0, [r1, #0x30]
	ldr r1, _0212BC38 ; =s_data_interface_i019_LZ_bin_overlay_1_02141274
	add r0, sp, #0x18c
	bl OS_SPrintf
	ldr r8, _0212BC3C ; =ptr_s_DP1_overlay_1_021411c0_overlay_1_021411cc
	ldr r7, _0212BC40 ; =ptr_s_00_overlay_1_021411b8_overlay_1_021411c4
	mov sb, #0
	add r6, sp, #0xcc
	add r5, sp, #0x6c
	add r4, sp, #0xc
	add fp, sp, #0x12c
_0212BB58:
	ldr r1, _0212BC44 ; =s_s_i019_s_NCBR_overlay_1_02141290
	ldr r2, [r8, sb, lsl #2]
	ldr r3, [r7, sb, lsl #2]
	mov r0, fp
	bl OS_SPrintf
	ldr r1, _0212BC48 ; =s_s_i019_NCLR_overlay_1_021412a0
	ldr r2, [r8, sb, lsl #2]
	mov r0, r6
	bl OS_SPrintf
	ldr r1, _0212BC4C ; =s_s_i019_s_NCER_overlay_1_021412b0
	ldr r2, [r8, sb, lsl #2]
	ldr r3, [r7, sb, lsl #2]
	mov r0, r5
	bl OS_SPrintf
	ldr r1, _0212BC50 ; =s_s_i019_s_cac_overlay_1_021412c0
	ldr r2, [r8, sb, lsl #2]
	ldr r3, [r7, sb, lsl #2]
	mov r0, r4
	bl OS_SPrintf
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0212BBD0
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [r8, sb, lsl #2]
	add r2, sp, #0x18c
	mov r3, fp
	bl sub_0201AAE0
_0212BBD0:
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x238]
	add sb, sb, #1
	cmp sb, #2
	blt _0212BB58
	ldr r0, [sl, #0x238]
	mov r1, #1
	ldr r0, [r0, #0xc]
	mov r2, #0
	bl sub_02008A80
	add r1, sl, #0x200
	strh r0, [r1, #0x40]
	mov r0, #0x400
	bl _Znwm
	cmp r0, #0
	beq _0212BC14
	bl ov1_0212D2C4
_0212BC14:
	str r0, [sl, #0x264]
	add sp, sp, #0x1ec
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212BC20: .word s_BDS_i019_NCLR_overlay_1_02141240
_0212BC24: .word s_BDS_i019_00_NCER_overlay_1_02141250
_0212BC28: .word s_BDS_i019_00_cac_overlay_1_02141264
_0212BC2C: .word s_BDS_overlay_1_0214120c
_0212BC30: .word s_data_interface_i019_LZ_bin_overlay_1_02141210
_0212BC34: .word s_BDS_i019_00_NCBR_overlay_1_0214122c
_0212BC38: .word s_data_interface_i019_LZ_bin_overlay_1_02141274
_0212BC3C: .word ptr_s_DP1_overlay_1_021411c0_overlay_1_021411cc
_0212BC40: .word ptr_s_00_overlay_1_021411b8_overlay_1_021411c4
_0212BC44: .word s_s_i019_s_NCBR_overlay_1_02141290
_0212BC48: .word s_s_i019_NCLR_overlay_1_021412a0
_0212BC4C: .word s_s_i019_s_NCER_overlay_1_021412b0
_0212BC50: .word s_s_i019_s_cac_overlay_1_021412c0

	arm_func_start ov1_0212BC54
ov1_0212BC54: ; 0x0212BC54
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r4, r0
	mov r5, r6
	arm_func_end ov1_0212BC54
_0212BC64:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0x238]
	cmp r7, #0
	beq _0212BC90
	beq _0212BC88
	mov r0, r7
	bl sub_0201AB14
	mov r0, r7
	bl _ZdlPv
_0212BC88:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x238]
_0212BC90:
	add r6, r6, #1
	cmp r6, #2
	blt _0212BC64
	ldr r0, [r4, #0x228]
	cmp r0, #0
	beq _0212BCC0
	beq _0212BCB8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0212BCB8:
	mov r0, #0
	str r0, [r4, #0x228]
_0212BCC0:
	ldr r0, [r4, #0x234]
	cmp r0, #0
	beq _0212BCE4
	beq _0212BCDC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0212BCDC:
	mov r0, #0
	str r0, [r4, #0x234]
_0212BCE4:
	ldr r0, [r4, #0x1c0]
	cmp r0, #0
	beq _0212BD08
	beq _0212BD00
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0212BD00:
	mov r0, #0
	str r0, [r4, #0x1c0]
_0212BD08:
	ldr r0, [r4, #0x248]
	cmp r0, #0
	beq _0212BD2C
	beq _0212BD24
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0212BD24:
	mov r0, #0
	str r0, [r4, #0x248]
_0212BD2C:
	ldr r0, [r4, #0x24c]
	cmp r0, #0
	beq _0212BD50
	ldr r3, _0212BE94 ; =ov1_0212E5C8
	mov r1, #0x19c
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x24c]
_0212BD50:
	ldr r5, [r4, #0x258]
	cmp r5, #0
	beq _0212BD78
	beq _0212BD70
	mov r0, r5
	bl ov1_02127CEC
	mov r0, r5
	bl _ZdlPv
_0212BD70:
	mov r0, #0
	str r0, [r4, #0x258]
_0212BD78:
	ldr r5, [r4, #0x254]
	cmp r5, #0
	beq _0212BDA0
	beq _0212BD98
	mov r0, r5
	bl ov1_02127E8C
	mov r0, r5
	bl _ZdlPv
_0212BD98:
	mov r0, #0
	str r0, [r4, #0x254]
_0212BDA0:
	ldr r5, [r4, #0x25c]
	cmp r5, #0
	beq _0212BDC8
	beq _0212BDC0
	mov r0, r5
	bl ov1_02128BB0
	mov r0, r5
	bl _ZdlPv
_0212BDC0:
	mov r0, #0
	str r0, [r4, #0x25c]
_0212BDC8:
	ldr r5, [r4, #0x260]
	cmp r5, #0
	beq _0212BDF0
	beq _0212BDE8
	mov r0, r5
	bl ov1_02128A74
	mov r0, r5
	bl _ZdlPv
_0212BDE8:
	mov r0, #0
	str r0, [r4, #0x260]
_0212BDF0:
	ldr r5, [r4, #0x264]
	cmp r5, #0
	beq _0212BE18
	beq _0212BE10
	mov r0, r5
	bl ov1_0212D520
	mov r0, r5
	bl _ZdlPv
_0212BE10:
	mov r0, #0
	str r0, [r4, #0x264]
_0212BE18:
	ldr r5, [r4, #0x22c]
	cmp r5, #0
	beq _0212BE40
	beq _0212BE38
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
_0212BE38:
	mov r0, #0
	str r0, [r4, #0x22c]
_0212BE40:
	ldr r5, [r4, #0x1b8]
	cmp r5, #0
	beq _0212BE68
	beq _0212BE60
	mov r0, r5
	bl ov1_0212322C
	mov r0, r5
	bl _ZdlPv
_0212BE60:
	mov r0, #0
	str r0, [r4, #0x1b8]
_0212BE68:
	ldr r5, [r4, #0x1bc]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	beq _0212BE88
	mov r0, r5
	bl ov1_021288E8
	mov r0, r5
	bl _ZdlPv
_0212BE88:
	mov r0, #0
	str r0, [r4, #0x1bc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0212BE94: .word ov1_0212E5C8

	arm_func_start ov1_0212BE98
ov1_0212BE98: ; 0x0212BE98
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, [r4, #0x25c]
	bl ov1_02128C2C
	ldr r0, [r4, #0x264]
	bl ov1_0212D5DC
	mov r0, r4
	bl ov1_0212C5C0
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl sub_020121F4
	ldr r0, [r4, #0x1b8]
	bl ov1_0212402C
	ldr r0, [r4, #0x18c]
	cmp r0, #0
	beq _0212BEF8
	ldr r0, [r4, #0x190]
	cmp r0, #0
	bne _0212BEF8
	mov r0, r4
	bl ov1_0212C414
	arm_func_end ov1_0212BE98
_0212BEF8:
	mov r0, r4
	bl ov1_0212C3B4
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	str r1, [sp, #8]
	str r1, [r4, #0x200]
	str r0, [r4, #0x204]
	ldr r2, [r4, #0x20]
	ldr r1, [r4, #0x24]
	str r0, [sp, #0xc]
	str r2, [r4, #0x1dc]
	str r1, [r4, #0x1e0]
	ldr r0, [r4, #0x22c]
	str r2, [sp]
	ldr r0, [r0, #0xc]
	str r1, [sp, #4]
	bl sub_020089EC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212BF44
ov1_0212BF44: ; 0x0212BF44
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x25c]
	mov r4, r1
	bl ov1_02128C70
	ldr r0, [r5, #0x254]
	mov r1, r4
	bl ov1_02127FAC
	add r0, r5, #0x100
	ldrh r0, [r0, #0x94]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0212BF8C
	ldr r0, [r5, #0x264]
	mov r1, r4
	bl ov1_0212D974
	arm_func_end ov1_0212BF44
_0212BF8C:
	ldrb r0, [r5, #0x188]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov1_0212C02C
	ldr r0, [r5, #0x18c]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x190]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x1c0]
	bl ov1_02137ABC
	cmp r0, #0
	beq _0212BFD8
	mov r0, r5
	mov r1, r4
	bl ov1_0212C0B8
_0212BFD8:
	ldr r0, [r5, #0x1c0]
	bl ov1_02137AD4
	cmp r0, #0
	beq _0212BFF4
	mov r0, r5
	mov r1, r4
	bl ov1_0212C144
_0212BFF4:
	ldr r0, [r5, #0x1c0]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212C00C
ov1_0212C00C: ; 0x0212C00C
	stmdb sp!, {r3, lr}
	ldrb r2, [r0, #0x188]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x1b8]
	bl ov1_0212372C
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212C00C

	arm_func_start ov1_0212C028
ov1_0212C028: ; 0x0212C028
	bx lr
	arm_func_end ov1_0212C028

	arm_func_start ov1_0212C02C
ov1_0212C02C: ; 0x0212C02C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x22c]
	ldr r4, [r6, #0x228]
	ldr r2, [r0]
	mov r0, #0
	str r2, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldr r2, [r6, #0x22c]
	add r0, r6, #0x200
	ldr r2, [r2, #4]
	mov r5, r1
	str r2, [r4, #0x34]
	ldr r1, [r6, #0x22c]
	ldr r1, [r1, #8]
	str r1, [r4, #0x38]
	ldr r2, [r6, #0x22c]
	ldrh r1, [r0, #0x30]
	ldr r0, [r2, #0xc]
	bl sub_02008828
	strh r0, [r4, #0x2a]
	ldr ip, [r6, #0x20]
	ldr r3, [r6, #0x24]
	mov r0, r4
	str ip, [r4, #0x18]
	str r3, [r4, #0x1c]
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #8]
	str ip, [sp]
	str r3, [sp, #4]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_0212C02C

	arm_func_start ov1_0212C0B8
ov1_0212C0B8: ; 0x0212C0B8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x238]
	ldr r4, [r6, #0x234]
	ldr r2, [r0]
	mov r0, #0
	str r2, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldr r2, [r6, #0x238]
	add r0, r6, #0x200
	ldr r2, [r2, #4]
	mov r5, r1
	str r2, [r4, #0x34]
	ldr r1, [r6, #0x238]
	ldr r1, [r1, #8]
	str r1, [r4, #0x38]
	ldr r2, [r6, #0x238]
	ldrh r1, [r0, #0x40]
	ldr r0, [r2, #0xc]
	bl sub_02008828
	strh r0, [r4, #0x2a]
	ldr ip, [r6, #0x20]
	ldr r3, [r6, #0x24]
	mov r0, r4
	str ip, [r4, #0x18]
	str r3, [r4, #0x1c]
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #8]
	str ip, [sp]
	str r3, [sp, #4]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_0212C0B8

	arm_func_start ov1_0212C144
ov1_0212C144: ; 0x0212C144
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x23c]
	ldr r4, [r6, #0x234]
	ldr r2, [r0]
	mov r0, #0
	str r2, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldr r0, [r6, #0x23c]
	mov r5, r1
	ldr r0, [r0, #4]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x23c]
	ldr r0, [r0, #8]
	str r0, [r4, #0x38]
	ldr r0, [r6, #0x1c0]
	bl ov1_02137AD4
	strh r0, [r4, #0x2a]
	ldr ip, [r6, #0x20]
	ldr r3, [r6, #0x24]
	mov r0, r4
	str ip, [r4, #0x18]
	str r3, [r4, #0x1c]
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #8]
	str ip, [sp]
	str r3, [sp, #4]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_0212C144

	arm_func_start ov1_0212C1C4
ov1_0212C1C4: ; 0x0212C1C4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	mov r4, r0
	add r0, r4, #0x100
	ldrh r1, [r0, #0x94]
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	bic r1, r1, #0x10
	strh r1, [r0, #0x94]
	ldr ip, [r4, #0x1b8]
	mov r1, #0x28
	add r0, ip, #0x5400
	ldrh r5, [r0, #0xa2]
	add r0, sp, #0x14
	sub lr, sp, #0xc
	mla r1, r5, r1, ip
	ldr r6, [r1, #0x1c]
	ldr r5, [r1, #0x20]
	str r6, [sp, #0x14]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	mov r0, ip
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	ldmia lr, {r1, r2, r3}
	bl ov1_02124588
	cmp r0, #0
	beq _0212C278
	ldr r0, [r4, #0x1b8]
	add r2, r0, #0x5400
	ldrh r1, [r2, #0xa4]
	ldrh r2, [r2, #0xa2]
	bl ov1_021248E8
	ldr r0, [r4, #0x1b8]
	add r1, r0, #0x5400
	ldrh r1, [r1, #0xa4]
	bl ov1_02124828
	add r0, r4, #0x100
	ldrh r1, [r0, #0x94]
	orr r1, r1, #0x10
	strh r1, [r0, #0x94]
	arm_func_end ov1_0212C1C4
_0212C278:
	ldr r0, [r4, #0x1b8]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	bl ov1_021243CC
	add r1, sp, #0x3c
	add r0, r4, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	add r0, r4, #0x100
	ldrh r0, [r0, #0x94]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0212C2D0
	ldr r2, [sp, #0x3c]
	ldr r0, [r4, #0x264]
	ldr r1, [sp, #0x40]
	str r2, [r0, #0xc]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [r0, #0x10]
_0212C2D0:
	ldr r0, [r4, #0x1b8]
	ldr r0, [r0]
	cmp r0, #1
	bne _0212C304
	add r1, sp, #0x3c
	mov r0, r4
	mov r3, #1
	ldmia r1, {r1, r2}
	bl ov1_0212D148
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_0212C304:
	cmp r0, #2
	addne sp, sp, #0x24
	ldmneia sp!, {r3, r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	add r1, sp, #0x3c
	mov r0, r4
	mov r3, #2
	ldmia r1, {r1, r2}
	bl ov1_0212D148
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start ov1_0212C33C
ov1_0212C33C: ; 0x0212C33C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x100
	ldrh r0, [r0, #0x94]
	mov r4, r1
	tst r0, #0x40
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r5, r2
	ldrb r0, [r0, #0x1a4]
	cmp r4, r0
	ble _0212C394
	ldrb r1, [r5, #0x19c]
	sub r0, r4, r0
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	mov r4, r0, lsr #0x10
	movle r0, #0
	strleb r0, [r5, #0x19c]
	subgt r0, r1, r4
	strgtb r0, [r5, #0x19c]
	b _0212C398
	arm_func_end ov1_0212C33C
_0212C394:
	mov r4, #0
_0212C398:
	ldr r0, [r5, #0x1c0]
	bl ov1_021371F0
	mov r0, r5
	mov r1, #0
	bl ov1_0212C514
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212C3B4
ov1_0212C3B4: ; 0x0212C3B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212C5C0
	cmp r0, #0
	add r0, r4, #0x100
	ldreqh r1, [r0, #0x98]
	orreq r1, r1, #1
	ldrneh r1, [r0, #0x98]
	bicne r1, r1, #1
	strh r1, [r0, #0x98]
	add r0, r4, #0x100
	ldrh r0, [r0, #0x98]
	tst r0, #1
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x248]
	add r1, r4, #0x20
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [r4, #0x248]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212C3B4

	arm_func_start ov1_0212C414
ov1_0212C414: ; 0x0212C414
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl ov1_0212C5C0
	cmp r0, #0
	ldr r0, [r5, #0x1c0]
	beq _0212C43C
	add r1, r5, #0x20
	ldmia r1, {r1, r2}
	bl ov1_02137094
	b _0212C440
	arm_func_end ov1_0212C414
_0212C43C:
	bl ov1_02137144
_0212C440:
	ldr r0, [r5, #0x1c0]
	bl ov1_02137AD4
	mov r4, r0
	ldr r0, [r5, #0x1c0]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r0, [r5, #0x1c0]
	bl ov1_02137AD4
	cmp r4, r0
	beq _0212C4A8
	cmp r0, #0
	beq _0212C488
	cmp r0, #1
	beq _0212C494
	cmp r0, #2
	beq _0212C4A0
	b _0212C4A8
_0212C488:
	ldr r0, [r5, #0x1b8]
	bl ov1_02124F08
	b _0212C4A8
_0212C494:
	ldr r0, [r5, #0x1b8]
	bl ov1_02124F64
	b _0212C4A8
_0212C4A0:
	ldr r0, [r5, #0x1b8]
	bl ov1_02124F84
_0212C4A8:
	ldr r0, [r5, #0x238]
	ldr r0, [r0, #0xc]
	bl sub_020089EC
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212C4B8
ov1_0212C4B8: ; 0x0212C4B8
	ldrb r0, [r0, #0x19c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov1_0212C4B8

	arm_func_start ov1_0212C4CC
ov1_0212C4CC: ; 0x0212C4CC
	add r0, r0, #0x100
	ldrh r0, [r0, #0x94]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov1_0212C4CC

	arm_func_start ov1_0212C4E4
ov1_0212C4E4: ; 0x0212C4E4
	ldrb r0, [r0, #0x188]
	bx lr
	arm_func_end ov1_0212C4E4

	arm_func_start ov1_0212C4EC
ov1_0212C4EC: ; 0x0212C4EC
	strb r1, [r0, #0x188]
	bx lr
	arm_func_end ov1_0212C4EC

	arm_func_start ov1_0212C4F4
ov1_0212C4F4: ; 0x0212C4F4
	add r0, r0, #0x100
	cmp r1, #0
	ldrneh r1, [r0, #0x94]
	orrne r1, r1, #0x20
	ldreqh r1, [r0, #0x94]
	biceq r1, r1, #0x20
	strh r1, [r0, #0x94]
	bx lr
	arm_func_end ov1_0212C4F4

	arm_func_start ov1_0212C514
ov1_0212C514: ; 0x0212C514
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _0212C558
	mov r2, #1
	strb r2, [r4, #0x188]
	add r0, r4, #0x100
	ldrh r1, [r0, #0x94]
	orr r1, r1, #2
	tst r1, #0x80
	moveq r2, #0
	strh r1, [r0, #0x94]
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x264]
	bl ov1_0212DAF0
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212C514
_0212C558:
	ldr r0, [r4, #0x1c0]
	bl ov1_02137144
	ldr r0, [r4, #0x1b8]
	ldr r1, [r0]
	cmp r1, #1
	cmpne r1, #2
	bne _0212C578
	bl ov1_02124F08
_0212C578:
	add r0, r4, #0x100
	ldrh r0, [r0, #0x94]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrne r0, [r4, #0x264]
	ldrne r1, [r0]
	cmpne r1, #0
	beq _0212C5A4
	bl ov1_0212DB04
_0212C5A4:
	mov r0, #0
	strb r0, [r4, #0x188]
	add r0, r4, #0x100
	ldrh r1, [r0, #0x94]
	bic r1, r1, #2
	strh r1, [r0, #0x94]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212C5C0
ov1_0212C5C0: ; 0x0212C5C0
	add r0, r0, #0x100
	ldrh r0, [r0, #0x94]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov1_0212C5C0

	arm_func_start ov1_0212C5D8
ov1_0212C5D8: ; 0x0212C5D8
	add r0, r0, #0x100
	ldrh r0, [r0, #0x94]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov1_0212C5D8

	arm_func_start ov1_0212C5F0
ov1_0212C5F0: ; 0x0212C5F0
	add r0, r0, #0x100
	cmp r1, #0
	ldrneh r1, [r0, #0x94]
	orrne r1, r1, #0x40
	ldreqh r1, [r0, #0x94]
	biceq r1, r1, #0x40
	strh r1, [r0, #0x94]
	bx lr
	arm_func_end ov1_0212C5F0

	arm_func_start ov1_0212C610
ov1_0212C610: ; 0x0212C610
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r0, [r6, #0x1b8]
	mov r5, r1
	mov r4, r2
	bl ov1_02124548
	add r0, r6, #0x100
	ldrh r0, [r0, #0x94]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x264]
	str r5, [sp, #8]
	str r5, [r0, #0xc]
	str r4, [sp, #0xc]
	str r5, [sp]
	str r4, [sp, #4]
	str r4, [r0, #0x10]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_0212C610

	arm_func_start ov1_0212C670
ov1_0212C670: ; 0x0212C670
	ldr r3, [r1, #0x1b8]
	mov r1, #0x28
	mla r1, r2, r1, r3
	ldr r2, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	arm_func_end ov1_0212C670

	arm_func_start ov1_0212C690
ov1_0212C690: ; 0x0212C690
	ldr r3, [r1, #0x1b8]
	mov r1, #0x28
	mla r1, r2, r1, r3
	ldr r2, [r1, #0x24]
	ldr r1, [r1, #0x28]
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	arm_func_end ov1_0212C690

	arm_func_start ov1_0212C6B0
ov1_0212C6B0: ; 0x0212C6B0
	ldr ip, _0212C6BC ; =ov1_02124AD4
	ldr r0, [r0, #0x1b8]
	bx ip
	.align 2, 0
_0212C6BC: .word ov1_02124AD4
	arm_func_end ov1_0212C6B0

	arm_func_start ov1_0212C6C0
ov1_0212C6C0: ; 0x0212C6C0
	ldr r0, [r0, #0x1b8]
	add r0, r0, #0x5400
	ldrh r0, [r0, #0x9c]
	bx lr
	arm_func_end ov1_0212C6C0

	arm_func_start ov1_0212C6D0
ov1_0212C6D0: ; 0x0212C6D0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov r7, r0
	str r1, [sp, #0xc]
	bl sub_0201001C
	mov r4, r0
	mov r0, r7
	mov r6, #0
	bl ov1_0212C6C0
	cmp r0, #0
	addle sp, sp, #0x18
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r4, #0x48
	add r4, r0, #0x1400
	arm_func_end ov1_0212C6D0
_0212C708:
	mov r0, r7
	and r1, r6, #0xff
	bl ov1_0212C6B0
	mov r2, r0
	add r0, sp, #0x10
	mov r1, r7
	bl ov1_0212C690
	mov r0, #0
	str r0, [sp]
	mov r0, #0x2800
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #0x50
	str r0, [sp, #8]
	ldr r0, [r7, #0x250]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl ov1_02136B24
	ldr fp, [r4]
	ldmib r4, {r1, ip}
	umull r8, lr, ip, fp
	mla lr, ip, r1, lr
	ldr r3, [r4, #0xc]
	ldr sl, [r4, #0x10]
	mla lr, r3, fp, lr
	ldr sb, [r4, #0x14]
	adds r1, sl, r8
	adc r3, sb, lr
	stmia r4, {r1, r3}
	mov r1, #0x3000
	umull r1, r8, r3, r1
	mov r1, #0
	mov r3, r1
	mov r1, #0x3000
	mla r8, r3, r1, r8
	add r1, r8, #0x1000
	ldr r2, _0212C7E4 ; =0x00001028
	mov r5, r0
	rsb r1, r1, #0
	bl ov1_02136A58
	mov r0, r5
	mov r1, #0x1f
	mov r2, #0
	bl ov1_02136A88
	mov r0, r5
	mov r1, #0x1000
	mov r2, #0x28
	bl ov1_02136AA0
	add r6, r6, #1
	mov r0, r7
	bl ov1_0212C6C0
	cmp r6, r0
	blt _0212C708
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212C7E4: .word 0x00001028

	arm_func_start ov1_0212C7E8
ov1_0212C7E8: ; 0x0212C7E8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	mov r8, r0
	ldr r0, [sp, #0x68]
	mov r7, r3
	str r0, [sp, #0x68]
	ldr r6, [sp, #0x6c]
	ldr fp, [sp, #0x60]
	bl sub_0201001C
	ldr r0, [r8, #0x1b8]
	mov r1, r7
	add r0, r0, #0x6400
	ldrh r0, [r0, #0x14]
	mov r0, r0, lsl #0xf
	bl _s32_div_f
	str r0, [sp, #0xc]
	cmp r7, #0
	mov r4, #0
	addle sp, sp, #0x34
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addle sp, sp, #0x10
	bxle lr
	ldr r0, [sp, #0x5c]
	mov r5, r4
	str r0, [sp, #0x10]
	arm_func_end ov1_0212C7E8
_0212C850:
	mov r0, r5, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r5, lsr #20
	mov r0, r5, lsl #0xc
	mov r2, #0x8000
	mov r3, #0
	bl _ll_div
	mov r0, r0, lsl #4
	mov r2, r0, lsr #0x10
	ldr r1, [r8, #0x1b8]
	mov r0, #0x28
	mla r0, r2, r0, r1
	add r0, r0, #0xec
	add r0, r0, #0x5400
	sub sb, r5, r2, lsl #15
	add sl, sp, #0x14
	ldmia r0, {r0, r1, r2, r3}
	stmia sl, {r0, r1, r2, r3}
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x1c]
	str r2, [sp, #0x30]
	mov r2, sb
	mov r3, #8
	str r0, [sp, #0x24]
	str r1, [sp, #0x2c]
	bl sub_02007068
	mov r2, sb
	mov sb, r0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x30]
	mov r3, #8
	bl sub_02007068
	mov r1, #0
	str r1, [sp]
	mov r1, #0x1000
	stmib sp, {r1, r6}
	mov sl, r0
	ldr r0, [r8, #0x250]
	mov r1, #0xc
	mov r2, sb
	mov r3, sl
	bl ov1_02136B24
	ldr r1, [sp, #0x10]
	ldr r2, _0212C98C ; =0x2AAAAAAB
	sub ip, r1, sb
	smull r3, r1, r2, ip
	mov r2, ip, lsr #0x1f
	add r1, r2, r1, asr #1
	mov r2, #0x1000
	mov sb, r0
	bl ov1_02136A40
	ldr r2, _0212C98C ; =0x2AAAAAAB
	sub sl, fp, sl
	smull r3, r1, r2, sl
	mov r2, sl, lsr #0x1f
	add r1, r2, r1, asr #1
	mov r0, sb
	mov r2, #0x1000
	bl ov1_02136A58
	ldr r1, [sp, #0x68]
	mov r0, sb
	mov r2, #0x1000
	bl ov1_02136AA0
	mov r0, sb
	mov r1, #0x1f
	mov r2, #0x10
	bl ov1_02136A88
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, r7
	blt _0212C850
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0212C98C: .word 0x2AAAAAAB

	arm_func_start ov1_0212C990
ov1_0212C990: ; 0x0212C990
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x38
	mov sl, r0
	ldr r0, [sp, #0x70]
	mov sb, r3
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x68]
	ldr fp, [sp, #0x74]
	str r0, [sp, #0xc]
	bl sub_0201001C
	ldr r0, [sl, #0x1b8]
	mov r1, sb
	add r0, r0, #0x6400
	ldrh r0, [r0, #0x14]
	mov r0, r0, lsl #0xf
	bl _s32_div_f
	str r0, [sp, #0x10]
	cmp sb, #0
	mov r5, #0
	addle sp, sp, #0x38
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addle sp, sp, #0x10
	bxle lr
	ldr r0, [sp, #0x64]
	mov r8, r5
	str r0, [sp, #0x14]
	arm_func_end ov1_0212C990
_0212C9FC:
	mov r0, r8, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r8, lsr #20
	mov r0, r8, lsl #0xc
	mov r2, #0x8000
	mov r3, #0
	bl _ll_div
	mov r0, r0, lsl #4
	mov r2, r0, lsr #0x10
	ldr r1, [sl, #0x1b8]
	mov r0, #0x28
	mla r0, r2, r0, r1
	add r0, r0, #0xec
	add r0, r0, #0x5400
	sub r4, r8, r2, lsl #15
	add r6, sp, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	str r2, [sp, #0x34]
	mov r2, r4
	mov r3, #8
	str r0, [sp, #0x28]
	str r1, [sp, #0x30]
	bl sub_02007068
	mov r6, r0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x34]
	mov r2, r4
	mov r3, #8
	bl sub_02007068
	mov r1, #0
	str r1, [sp]
	mov r1, #0x1000
	stmib sp, {r1, fp}
	mov r4, r0
	ldr r0, [sl, #0x250]
	mov r1, #0x18
	mov r2, r6
	mov r3, r4
	bl ov1_02136B24
	ldr r1, [sp, #0x14]
	ldr r3, _0212CB9C ; =0x2AAAAAAB
	sub r2, r1, r6
	smull r7, r6, r3, r2
	ldr r1, [sp, #0xc]
	mov r2, r2, lsr #0x1f
	sub r1, r1, r4
	add r6, r2, r6, asr #1
	mov r2, r3
	smull r3, r7, r2, r1
	mov r1, r1, lsr #0x1f
	add r7, r1, r7, asr #1
	mov r4, r0
	mov r1, r6
	mov r2, #0x1000
	bl ov1_02136A40
	mov r0, r4
	mov r1, r7
	mov r2, #0x1000
	bl ov1_02136A58
	ldr r1, [sp, #0x70]
	mov r0, r4
	mov r2, #0x1000
	bl ov1_02136AA0
	mov r0, r4
	mov r1, #0x1f
	mov r2, #0x10
	bl ov1_02136A88
	rsb r2, r6, #0
	mov r0, r2, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r2, lsr #20
	mov r0, r2, lsl #0xc
	mov r2, #0x4000
	mov r3, #0
	bl _ll_div
	rsb r2, r7, #0
	mov r6, r0
	mov r0, r2, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r2, lsr #20
	mov r0, r2, lsl #0xc
	mov r2, #0x4000
	mov r3, #0
	bl _ll_div
	mov r2, r0
	mov r1, r6
	mov r0, r4
	mov r3, #0
	bl ov1_02136AB8
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	add r8, r8, r0
	cmp r5, sb
	blt _0212C9FC
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0212CB9C: .word 0x2AAAAAAB

	arm_func_start ov1_0212CBA0
ov1_0212CBA0: ; 0x0212CBA0
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	mov r8, r0
	ldr r0, [sp, #0x68]
	mov r7, r3
	str r0, [sp, #0x68]
	ldr fp, [sp, #0x60]
	bl sub_0201001C
	ldr r0, [r8, #0x1b8]
	mov r1, r7
	add r0, r0, #0x6400
	ldrh r0, [r0, #0x14]
	mov r0, r0, lsl #0xf
	bl _s32_div_f
	mov r4, #0
	str r0, [sp, #0xc]
	cmp r7, #0
	mov r5, r4
	addle sp, sp, #0x34
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addle sp, sp, #0x10
	bxle lr
	ldr r0, [sp, #0x5c]
	mov r6, r4
	str r0, [sp, #0x10]
	arm_func_end ov1_0212CBA0
_0212CC08:
	mov r0, r6, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r6, lsr #20
	mov r0, r6, lsl #0xc
	mov r2, #0x8000
	mov r3, #0
	bl _ll_div
	mov r0, r0, lsl #4
	mov r2, r0, lsr #0x10
	ldr r1, [r8, #0x1b8]
	mov r0, #0x28
	mla r0, r2, r0, r1
	add r0, r0, #0xec
	add r0, r0, #0x5400
	sub sb, r6, r2, lsl #15
	add sl, sp, #0x14
	ldmia r0, {r0, r1, r2, r3}
	stmia sl, {r0, r1, r2, r3}
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x1c]
	str r2, [sp, #0x30]
	mov r2, sb
	mov r3, #8
	str r0, [sp, #0x24]
	str r1, [sp, #0x2c]
	bl sub_02007068
	mov r2, sb
	mov sb, r0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x30]
	mov r3, #8
	bl sub_02007068
	mov sl, r0
	mov r1, #0
	str r1, [sp]
	mov r1, #0x1000
	add r0, r8, r4, lsl #1
	str r1, [sp, #4]
	add r0, r0, #0x200
	ldrh r0, [r0, #0x42]
	mov r1, #0xc
	mov r2, sb
	str r0, [sp, #8]
	ldr r0, [r8, #0x250]
	mov r3, sl
	bl ov1_02136B24
	ldr r1, [sp, #0x10]
	ldr r2, _0212CD68 ; =0x2AAAAAAB
	sub ip, r1, sb
	smull r3, r1, r2, ip
	mov r2, ip, lsr #0x1f
	add r1, r2, r1, asr #1
	mov r2, #0x1000
	mov sb, r0
	bl ov1_02136A40
	ldr r2, _0212CD68 ; =0x2AAAAAAB
	sub sl, fp, sl
	smull r3, r1, r2, sl
	mov r2, sl, lsr #0x1f
	add r1, r2, r1, asr #1
	mov r0, sb
	mov r2, #0x1000
	bl ov1_02136A58
	ldr r1, [sp, #0x68]
	mov r0, sb
	mov r2, #0x1000
	bl ov1_02136AA0
	mov r0, sb
	mov r1, #0x1f
	mov r2, #0x10
	bl ov1_02136A88
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, #3
	subhs r0, r4, #3
	andhs r4, r0, #0xff
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r6, r6, r0
	cmp r5, r7
	blt _0212CC08
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0212CD68: .word 0x2AAAAAAB

	arm_func_start ov1_0212CD6C
ov1_0212CD6C: ; 0x0212CD6C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	mov r8, r1
	ldr r0, [sb, #0x1c0]
	mov r5, r8, lsl #0xc
	mov r7, r2
	mov r6, r3
	ldr sl, _0212CF08 ; =MAIN_BSS_020B26A0
	bl ov1_02137ADC
	smull r0, r2, r5, r0
	mov r4, r0, lsr #0xc
	mov r0, sl
	mov r1, #0x12
	orr r4, r4, r2, lsl #20
	bl sub_02016C14
	cmp r0, #0
	beq _0212CDF0
	cmp r0, #1
	beq _0212CDC4
	cmp r0, #2
	beq _0212CDD8
	b _0212CDF0
	arm_func_end ov1_0212CD6C
_0212CDC4:
	ldrb r0, [sb, #0x19d]
	cmp r0, #2
	moveq r0, r8, asr #1
	addeq r4, r4, r0, lsl #12
	b _0212CDF0
_0212CDD8:
	ldrb r0, [sb, #0x19d]
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #1
	movls r0, r8, asr #1
	addls r4, r4, r0, lsl #12
_0212CDF0:
	mov r0, sl
	mov r1, #0x13
	bl sub_02016C14
	cmp r0, #0
	beq _0212CE38
	cmp r0, #1
	beq _0212CE18
	cmp r0, #2
	beq _0212CE2C
	b _0212CE38
_0212CE18:
	ldrb r0, [sb, #0x187]
	cmp r0, #6
	movhs r0, r8, asr #1
	addhs r4, r4, r0, lsl #12
	b _0212CE38
_0212CE2C:
	ldrb r0, [sb, #0x187]
	cmp r0, #6
	addhs r4, r4, r5
_0212CE38:
	cmp r7, #6
	bgt _0212CE58
	cmp r7, #0
	blt _0212CE78
	cmpne r7, #1
	cmpne r7, #6
	beq _0212CE6C
	b _0212CE78
_0212CE58:
	cmp r7, #0xf
	addeq r0, sb, #0x100
	ldreqh r0, [r0, #0x9e]
	subeq r4, r4, r0, lsl #12
	b _0212CE78
_0212CE6C:
	add r0, sb, #0x100
	ldrh r0, [r0, #0x9e]
	add r4, r4, r0, lsl #12
_0212CE78:
	cmp r7, #6
	bgt _0212CE98
	cmp r7, #0
	blt _0212CEB8
	cmpne r7, #1
	cmpne r7, #6
	beq _0212CEA0
	b _0212CEB8
_0212CE98:
	cmp r7, #0xf
	bne _0212CEB8
_0212CEA0:
	mov r0, r7
	mov r1, r6
	bl ov1_0212EE80
	smull r1, r0, r4, r0
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
_0212CEB8:
	mov r0, sl
	mov r1, #0x17
	bl sub_02016C14
	cmp r0, #0
	beq _0212CEFC
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0212CEFC
_0212CED8: ; jump table
	b _0212CEFC ; case 0
	b _0212CEE8 ; case 1
	b _0212CEF0 ; case 2
	b _0212CEF8 ; case 3
_0212CEE8:
	add r4, r4, #0x3000
	b _0212CEFC
_0212CEF0:
	add r4, r4, #0x5000
	b _0212CEFC
_0212CEF8:
	add r4, r4, #0x7000
_0212CEFC:
	mov r0, r4, lsl #4
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0212CF08: .word MAIN_BSS_020B26A0

	arm_func_start ov1_0212CF0C
ov1_0212CF0C: ; 0x0212CF0C
	ldr ip, _0212CF18 ; =ov1_0212812C
	ldr r0, [r0, #0x254]
	bx ip
	.align 2, 0
_0212CF18: .word ov1_0212812C
	arm_func_end ov1_0212CF0C

	arm_func_start ov1_0212CF1C
ov1_0212CF1C: ; 0x0212CF1C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1a4
	mov r1, #0
	mov r2, #0x13
	bl MI_CpuFill8
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	mov r1, #0
	bl sub_02016CF0
	ldrb r2, [r4, #0x1a8]
	mov r1, #1
	add r2, r2, r0
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	strb r2, [r4, #0x1a8]
	bl sub_02016CF0
	ldrb r2, [r4, #0x1a6]
	mov r1, #2
	add r2, r2, r0
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	strb r2, [r4, #0x1a6]
	bl sub_02016CF0
	ldrb r2, [r4, #0x1a7]
	mov r1, #3
	add r2, r2, r0
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	strb r2, [r4, #0x1a7]
	bl sub_02016CF0
	ldrb r2, [r4, #0x1a5]
	mov r1, #4
	add r0, r2, r0
	strb r0, [r4, #0x1a5]
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	bl sub_02016CF0
	ldrb r2, [r4, #0x1aa]
	mov r1, #5
	add r0, r2, r0
	strb r0, [r4, #0x1aa]
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	bl sub_02016CF0
	ldrb r2, [r4, #0x1ab]
	mov r1, #6
	add r0, r2, r0
	strb r0, [r4, #0x1ab]
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	bl sub_02016CF0
	ldrb r2, [r4, #0x1ae]
	mov r1, #7
	add r0, r2, r0
	strb r0, [r4, #0x1ae]
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	bl sub_02016CF0
	ldrb r2, [r4, #0x1af]
	mov r1, #8
	add r2, r2, r0
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	strb r2, [r4, #0x1af]
	bl sub_02016CF0
	ldrb r2, [r4, #0x1ac]
	mov r1, #9
	add r2, r2, r0
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	strb r2, [r4, #0x1ac]
	bl sub_02016CF0
	ldrb r2, [r4, #0x1b0]
	mov r1, #0xa
	add r2, r2, r0
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	strb r2, [r4, #0x1b0]
	bl sub_02016CF0
	ldrb r2, [r4, #0x1ad]
	mov r1, #0xb
	add r2, r2, r0
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	strb r2, [r4, #0x1ad]
	bl sub_02016CF0
	ldrb r2, [r4, #0x1b3]
	mov r1, #0xc
	add r2, r2, r0
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	strb r2, [r4, #0x1b3]
	bl sub_02016CF0
	ldrb r2, [r4, #0x1b1]
	mov r1, #0xd
	add r0, r2, r0
	strb r0, [r4, #0x1b1]
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	bl sub_02016CF0
	ldrb r2, [r4, #0x1a9]
	mov r1, #0xe
	add r0, r2, r0
	strb r0, [r4, #0x1a9]
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	bl sub_02016CF0
	ldrb r2, [r4, #0x1a4]
	mov r1, #0xf
	add r0, r2, r0
	strb r0, [r4, #0x1a4]
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	bl sub_02016CF0
	ldrb r2, [r4, #0x1b4]
	mov r1, #0x10
	add r2, r2, r0
	ldr r0, _0212D0D0 ; =MAIN_BSS_020B26A0
	strb r2, [r4, #0x1b4]
	bl sub_02016CF0
	ldrb r1, [r4, #0x1b2]
	add r0, r1, r0
	strb r0, [r4, #0x1b2]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212D0D0: .word MAIN_BSS_020B26A0
	arm_func_end ov1_0212CF1C

	arm_func_start ov1_0212D0D4
ov1_0212D0D4: ; 0x0212D0D4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x1c0]
	bl ov1_02137D7C
	mov r4, r0
	ldr r0, [r5, #0x234]
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	ldr r1, [r5, #0x234]
	add r4, r4, r0
	str r4, [r1, #4]
	ldr r0, [r5, #0x228]
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	ldr r2, [r5, #0x228]
	add r1, r4, r0
	str r1, [r2, #4]
	ldr r0, [r5, #0x264]
	bl ov1_0212DB18
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_0212D0D4

	arm_func_start ov1_0212D124
ov1_0212D124: ; 0x0212D124
	ldr r3, [r0, #0x1b8]
	add r2, r1, #0x60
	add r0, r3, #0x5000
	str r1, [r0, #0x4bc]
	add r0, r3, #0x3000
	str r2, [r0, #0x308]
	str r2, [r0, #0x354]
	add r0, r1, #0x61
	bx lr
	arm_func_end ov1_0212D124

	arm_func_start ov1_0212D148
ov1_0212D148: ; 0x0212D148
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x48]
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	bl sub_0201001C
	ldr r1, [sp, #0x10]
	mov fp, #0
	cmp r1, #0
	addle sp, sp, #0x1c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addle sp, sp, #0x10
	bxle lr
	add r1, r0, #0x48
	ldr r0, [sp, #0x10]
	add r5, r1, #0x1400
	cmp r0, #0
	addle sp, sp, #0x1c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addle sp, sp, #0x10
	bxle lr
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x18]
	ldr r0, _0212D2B4 ; =0x00001199
	sub r6, r0, #0x800
	arm_func_end ov1_0212D148
_0212D1B4:
	ldr r4, [r5]
	ldmib r5, {r0, r8}
	umull sl, sb, r8, r4
	mla sb, r8, r0, sb
	ldr r7, [r5, #0xc]
	ldr lr, [r5, #0x10]
	mla sb, r7, r4, sb
	mov r1, #0
	ldr ip, [r5, #0x14]
	adds r4, lr, sl
	adc r0, ip, sb
	str r4, [r5]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [sp]
	mov r0, #0x1000
	str r0, [sp, #4]
	ldr r0, _0212D2B8 ; =0x00007FFF
	mov r1, r1, lsl #5
	str r0, [sp, #8]
	ldr r4, [r5, #4]
	ldr r0, [sp, #0xc]
	orr r1, r1, r4, lsr #27
	add r1, r1, #0x20
	mov r1, r1, lsl #0x10
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x14]
	ldr r0, [r0, #0x250]
	mov r1, r1, lsr #0x10
	bl ov1_02136B24
	ldr r3, [r5]
	ldmib r5, {r1, lr}
	umull r8, r7, lr, r3
	mla r7, lr, r1, r7
	ldr ip, [r5, #0xc]
	ldr sl, [r5, #0x10]
	mla r7, ip, r3, r7
	ldr sb, [r5, #0x14]
	adds r1, sl, r8
	adc r7, sb, r7
	stmia r5, {r1, r7}
	umull r1, r3, r7, r6
	ldr r1, _0212D2BC ; =0xFFFFFB34
	mov r2, #0x1000
	add r1, r3, r1
	mov r4, r0
	bl ov1_02136A40
	ldr r1, _0212D2C0 ; =0xFFFFFCCD
	ldr r2, _0212D2B4 ; =0x00001199
	mov r0, r4
	bl ov1_02136A70
	mov r0, r4
	mov r1, #0x18
	mov r2, #1
	bl ov1_02136A88
	add r0, fp, #1
	and fp, r0, #0xff
	ldr r0, [sp, #0x10]
	cmp fp, r0
	blt _0212D1B4
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0212D2B4: .word 0x00001199
_0212D2B8: .word 0x00007FFF
_0212D2BC: .word 0xFFFFFB34
_0212D2C0: .word 0xFFFFFCCD

	arm_func_start ov1_0212D2C4
ov1_0212D2C4: ; 0x0212D2C4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, r0
	ldr r4, _0212D4FC ; =FUN_020039E8
	ldr r3, _0212D500 ; =FUN_020039B8
	add r0, sb, #0x40
	mov r1, #0x18
	mov r2, #0x28
	str r4, [sp]
	bl __cxa_vec_ctor
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0212D324
	ldr r2, _0212D504 ; =s_BSE_i071_NCLR_overlay_1_02141304
	ldr r1, _0212D508 ; =s_BSE_i071_00_NCER_overlay_1_02141314
	str r2, [sp]
	ldr r4, _0212D50C ; =s_BSE_i071_00_cac_overlay_1_02141328
	str r1, [sp, #4]
	ldr r1, _0212D510 ; =s_BSE_overlay_1_021412d0
	ldr r2, _0212D514 ; =s_data_interface_i071_LZ_bin_overlay_1_021412d4
	ldr r3, _0212D518 ; =s_BSE_i071_00_NCBR_overlay_1_021412f0
	str r4, [sp, #8]
	bl sub_0201AAE0
	arm_func_end ov1_0212D2C4
_0212D324:
	str r0, [sb, #0x14]
	mov r8, #0
	ldr r0, [r0, #0xc]
	mov r7, #1
	str r0, [sb, #0x30]
	mov r6, r8
	mov r5, r7
	mov r4, r8
_0212D344:
	ldr r0, [sb, #0x30]
	mov r1, r7
	mov r2, r6
	bl sub_02008A80
	add r1, sb, r8, lsl #1
	strh r0, [r1, #0x34]
	ldr r0, [sb, #0x30]
	mov r1, r5
	mov r2, r4
	bl sub_02008A80
	add r2, sb, r8, lsl #1
	add r1, r8, #1
	and r8, r1, #0xff
	strh r0, [r2, #0x3a]
	cmp r8, #3
	blo _0212D344
	mov r8, #0
	mov fp, #0x4c
	mov r5, r8
	mov r4, #0x12
	mov r7, r8
	mov sl, #0x1f
	mov r6, fp
_0212D3A0:
	mov r0, r6
	bl _Znwm
	cmp r0, #0
	beq _0212D3B4
	bl sub_02005150
_0212D3B4:
	add r1, sb, r8, lsl #2
	str r0, [r1, #0x18]
	ldr r2, [sb, #0x14]
	mov r3, r0
	ldmia r2, {r2, ip, lr}
	str r2, [r3, #0x2c]
	str r5, [r3, #0x30]
	str ip, [r3, #0x34]
	str lr, [r3, #0x38]
	ldr r1, [r1, #0x18]
	mov r0, fp
	str r4, [r1, #0x14]
	bl _Znwm
	cmp r0, #0
	beq _0212D3F4
	bl sub_02005150
_0212D3F4:
	add r1, sb, r8, lsl #2
	str r0, [r1, #0x24]
	ldr r3, [sb, #0x14]
	add r2, r8, #1
	ldmia r3, {r3, ip, lr}
	str r3, [r0, #0x2c]
	str r7, [r0, #0x30]
	str ip, [r0, #0x34]
	str lr, [r0, #0x38]
	ldr r0, [r1, #0x24]
	and r8, r2, #0xff
	cmp r8, #3
	str sl, [r0, #0x14]
	blo _0212D3A0
_0212D42C:
	add r0, sb, r7, lsl #1
	ldrh r1, [r0, #0x34]
	mov r2, r7, lsl #0x10
	ldr r0, [sb, #0x30]
	mov r2, r2, lsr #0x10
	bl sub_02008990
	add r1, sb, r7, lsl #1
	add r0, r7, #3
	mov r2, r0, lsl #0x10
	ldrh r1, [r1, #0x3a]
	ldr r0, [sb, #0x30]
	mov r2, r2, lsr #0x10
	bl sub_02008990
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #3
	blo _0212D42C
	ldr r0, _0212D51C ; =DAT_overlay_1_0213fc30
	mov r5, #0
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	ldrh r0, [r0, #4]
	add r4, sp, #0xc
	strh r2, [sp, #0xc]
	strh r0, [sp, #0x10]
	strh r1, [sp, #0xe]
	mov r3, r5
	mov r0, #0x28
_0212D49C:
	mov r1, r5, lsl #1
	ldrh r7, [r4, r1]
	add r1, r5, r5, lsl #2
	mov r6, r3
	add r8, sb, r1, lsl #6
_0212D4B0:
	mla r2, r6, r0, r8
	add r1, r6, #1
	and r6, r1, #0xff
	strh r7, [r2, #0x48]
	cmp r6, #8
	blo _0212D4B0
	add r1, r5, #1
	and r5, r1, #0xff
	cmp r5, #3
	blo _0212D49C
	mov r1, #0
	strh r1, [sb, #6]
	mov r0, #0x20000
	str r0, [sb, #8]
	str r1, [sb, #0xc]
	mov r0, sb
	str r1, [sb, #0x10]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212D4FC: .word sub_020039E8
_0212D500: .word sub_020039B8
_0212D504: .word s_BSE_i071_NCLR_overlay_1_02141304
_0212D508: .word s_BSE_i071_00_NCER_overlay_1_02141314
_0212D50C: .word s_BSE_i071_00_cac_overlay_1_02141328
_0212D510: .word s_BSE_overlay_1_021412d0
_0212D514: .word s_data_interface_i071_LZ_bin_overlay_1_021412d4
_0212D518: .word s_BSE_i071_00_NCBR_overlay_1_021412f0
_0212D51C: .word DAT_overlay_1_0213fc30

	arm_func_start ov1_0212D520
ov1_0212D520: ; 0x0212D520
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r6, r0
	mov r4, r5
	mov r7, r5
	arm_func_end ov1_0212D520
_0212D534:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0212D55C
	beq _0212D554
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0212D554:
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x18]
_0212D55C:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _0212D584
	beq _0212D57C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0212D57C:
	add r0, r6, r5, lsl #2
	str r7, [r0, #0x24]
_0212D584:
	add r0, r5, #1
	and r5, r0, #0xff
	cmp r5, #3
	blo _0212D534
	ldr r4, [r6, #0x14]
	cmp r4, #0
	beq _0212D5BC
	beq _0212D5B4
	mov r0, r4
	bl sub_0201AB14
	mov r0, r4
	bl _ZdlPv
_0212D5B4:
	mov r0, #0
	str r0, [r6, #0x14]
_0212D5BC:
	ldr r3, _0212D5D8 ; =FUN_020039E8
	add r0, r6, #0x40
	mov r1, #0x18
	mov r2, #0x28
	bl __cxa_vec_cleanup
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0212D5D8: .word sub_020039E8

	arm_func_start ov1_0212D5DC
ov1_0212D5DC: ; 0x0212D5DC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldrh r0, [r4, #6]
	add r0, r0, #0x400
	strh r0, [r4, #6]
	ldr r0, [r4, #0x30]
	bl sub_020089EC
	ldr r0, [r4]
	cmp r0, #1
	beq _0212D61C
	cmp r0, #2
	beq _0212D634
	cmp r0, #3
	beq _0212D628
	b _0212D634
	arm_func_end ov1_0212D5DC
_0212D61C:
	mov r0, r4
	bl ov1_0212D774
	b _0212D63C
_0212D628:
	mov r0, r4
	bl ov1_0212D880
	b _0212D63C
_0212D634:
	mov r0, r4
	bl ov1_0212D870
_0212D63C:
	mov r2, #0
_0212D640:
	ldrh r0, [r4, #6]
	ldr r5, _0212D76C ; =0x00005555
	add r6, r2, r2, lsl #2
	mla r0, r2, r5, r0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r1, asr #4
	mov r3, r0, lsl #1
	ldr r0, _0212D770 ; =FX_SinCosTable_
	mov r7, r3, lsl #1
	add r3, r0, r3, lsl #1
	ldrsh r8, [r3, #2]
	ldr r3, [r4, #8]
	ldrsh r7, [r0, r7]
	smull sl, sb, r3, r8
	smull r8, r7, r3, r7
	mov r3, r8, lsr #0xc
	mov sl, sl, lsr #0xc
	orr sl, sl, sb, lsl #20
	ldr r8, [r4, #0xc]
	sub lr, r5, #0x5000
	add r8, r8, sl
	ldr sb, [r4, #0x10]
	orr r3, r3, r7, lsl #20
	add r3, sb, r3
	str r3, [sp, #0x1c]
	str r8, [sp, #0x18]
	add ip, r4, r6, lsl #6
	mov r3, #0
	mov r5, #0x28
_0212D6B8:
	sub r1, r1, lr
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r6, r1, asr #4
	mov r7, r6, lsl #1
	add r6, r0, r7, lsl #1
	mov r7, r7, lsl #1
	ldrsh r8, [r6, #2]
	ldr r6, [r4, #8]
	ldrsh r7, [r0, r7]
	smull sl, sb, r6, r8
	smull r8, r7, r6, r7
	ldr r6, [sp, #0x18]
	mov sl, sl, lsr #0xc
	orr sl, sl, sb, lsl #20
	mov sb, r8, lsr #0xc
	orr sb, sb, r7, lsl #20
	str r6, [sp, #8]
	ldr r8, [r4, #0xc]
	ldr r7, [r4, #0x10]
	add r8, r8, sl
	add r7, r7, sb
	str r8, [sp, #0x10]
	str r7, [sp, #0x14]
	str r8, [sp]
	str r7, [sp, #4]
	str r8, [sp, #0x18]
	ldr sl, [sp, #0x1c]
	mla sb, r3, r5, ip
	str r6, [sb, #0x58]
	str sl, [sp, #0xc]
	str sl, [sb, #0x5c]
	str r8, [sb, #0x60]
	add r3, r3, #1
	str r7, [sb, #0x64]
	and r3, r3, #0xff
	str r7, [sp, #0x1c]
	cmp r3, #8
	blo _0212D6B8
	add r0, r2, #1
	and r2, r0, #0xff
	cmp r2, #3
	blo _0212D640
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0212D76C: .word 0x00005555
_0212D770: .word FX_SinCosTable_

	arm_func_start ov1_0212D774
ov1_0212D774: ; 0x0212D774
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r2, [r4, #4]
	mov r0, #0x40000
	mov r1, #0x20000
	add r2, r2, #1
	strh r2, [r4, #4]
	ldrh r2, [r4, #4]
	mov r3, #0x10
	bl sub_02007068
	str r0, [r4, #8]
	ldrh r2, [r4, #4]
	mov r0, #1
	mov r1, #0x12
	mov r3, #0x10
	bl sub_02007068
	and r2, r0, #0xff
	mov r0, #0
	arm_func_end ov1_0212D774
_0212D7BC:
	add r1, r4, r0, lsl #2
	add r0, r0, #1
	ldr r1, [r1, #0x18]
	and r0, r0, #0xff
	str r2, [r1, #0x14]
	cmp r0, #3
	blo _0212D7BC
	ldrh r2, [r4, #4]
	mov r0, #1
	mov r1, #0x1f
	mov r3, #0x10
	bl sub_02007068
	and r1, r0, #0xff
	mov r0, #0
_0212D7F4:
	add r2, r4, r0, lsl #2
	add r0, r0, #1
	ldr r2, [r2, #0x24]
	and r0, r0, #0xff
	str r1, [r2, #0x14]
	cmp r0, #3
	blo _0212D7F4
	mov r0, r4
	bl ov1_0212DBB0
	ldrh r0, [r4, #4]
	cmp r0, #0x10
	ldmloia sp!, {r4, pc}
	mov r0, #0x20000
	str r0, [r4, #8]
	mov r0, #0
	mov ip, #0x12
	mov r2, #0x1f
_0212D838:
	add r3, r4, r0, lsl #2
	ldr r1, [r3, #0x18]
	add r0, r0, #1
	str ip, [r1, #0x14]
	ldr r1, [r3, #0x24]
	and r0, r0, #0xff
	str r2, [r1, #0x14]
	cmp r0, #3
	blo _0212D838
	mov r0, #2
	str r0, [r4]
	mov r0, #0
	strh r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212D870
ov1_0212D870: ; 0x0212D870
	ldr ip, _0212D87C ; =ov1_0212DBB0
	mov r1, #0x1f
	bx ip
	.align 2, 0
_0212D87C: .word ov1_0212DBB0
	arm_func_end ov1_0212D870

	arm_func_start ov1_0212D880
ov1_0212D880: ; 0x0212D880
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r2, [r4, #4]
	mov r0, #0x20000
	mov r1, #0x40000
	add r2, r2, #1
	strh r2, [r4, #4]
	ldrh r2, [r4, #4]
	mov r3, #0x10
	bl sub_02007068
	str r0, [r4, #8]
	ldrh r2, [r4, #4]
	mov r0, #0x12
	mov r1, #1
	mov r3, #0x10
	bl sub_02007068
	and r2, r0, #0xff
	mov r0, #0
	arm_func_end ov1_0212D880
_0212D8C8:
	add r1, r4, r0, lsl #2
	add r0, r0, #1
	ldr r1, [r1, #0x18]
	and r0, r0, #0xff
	str r2, [r1, #0x14]
	cmp r0, #3
	blo _0212D8C8
	ldrh r2, [r4, #4]
	mov r0, #0x1f
	mov r1, #1
	mov r3, #0x10
	bl sub_02007068
	and r1, r0, #0xff
	mov r0, #0
_0212D900:
	add r2, r4, r0, lsl #2
	add r0, r0, #1
	ldr r2, [r2, #0x24]
	and r0, r0, #0xff
	str r1, [r2, #0x14]
	cmp r0, #3
	blo _0212D900
	mov r0, r4
	bl ov1_0212DBB0
	ldrh r0, [r4, #4]
	cmp r0, #0x10
	ldmloia sp!, {r4, pc}
	mov r0, #0x40000
	str r0, [r4, #8]
	mov r0, #0
	mov r3, #1
_0212D940:
	add r2, r4, r0, lsl #2
	ldr r1, [r2, #0x18]
	add r0, r0, #1
	str r3, [r1, #0x14]
	ldr r1, [r2, #0x24]
	and r0, r0, #0xff
	str r3, [r1, #0x14]
	cmp r0, #3
	blo _0212D940
	mov r0, #0
	str r0, [r4]
	strh r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212D974
ov1_0212D974: ; 0x0212D974
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x18
	mov sb, r0
	ldr r0, [sb]
	mov r8, r1
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrh r4, [sb, #6]
	mov r5, #0
	arm_func_end ov1_0212D974
_0212D99C:
	mov r0, r4, asr #4
	mov r0, r0, lsl #1
	ldr r2, _0212DAEC ; =FX_SinCosTable_
	mov r3, r0, lsl #1
	add r0, r2, r0, lsl #1
	ldrsh r1, [r0, #2]
	ldr r7, [sb, #8]
	ldrsh r0, [r2, r3]
	smull r6, r3, r7, r1
	smull r2, r1, r7, r0
	add r0, sb, r5, lsl #1
	mov r6, r6, lsr #0xc
	mov r2, r2, lsr #0xc
	ldr r7, [sb, #0xc]
	orr r6, r6, r3, lsl #20
	add r3, r7, r6
	ldr r6, [sb, #0x10]
	orr r2, r2, r1, lsl #20
	add r2, r6, r2
	ldrh r1, [r0, #0x34]
	ldr r0, [sb, #0x30]
	str r3, [sp, #0x10]
	str r2, [sp, #0x14]
	bl sub_02008828
	add r2, sb, r5, lsl #2
	ldr r1, [r2, #0x18]
	ldr r6, [sp, #0x10]
	strh r0, [r1, #0x2a]
	ldr r0, [r2, #0x18]
	ldr r3, [sp, #0x14]
	str r6, [r0, #0x18]
	str r3, [r0, #0x1c]
	ldr r0, [r2, #0x18]
	mov r1, r8
	ldr r2, [r0]
	str r6, [sp, #8]
	ldr r2, [r2, #8]
	str r3, [sp, #0xc]
	blx r2
	add r0, sb, r5, lsl #1
	ldrh r1, [r0, #0x3a]
	ldr r0, [sb, #0x30]
	bl sub_02008828
	add r3, sb, r5, lsl #2
	ldr r1, [r3, #0x24]
	ldr r2, [sp, #0x10]
	strh r0, [r1, #0x2a]
	str r2, [sp]
	ldr r1, [sp, #0x14]
	ldr r0, [r3, #0x24]
	str r1, [sp, #4]
	str r2, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r0, [r3, #0x24]
	mov r1, r8
	strh r4, [r0, #0x28]
	ldr r0, [r3, #0x24]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r0, r4, #0x55
	add r0, r0, #0x5500
	mov r0, r0, lsl #0x10
	add r2, sb, #0x40
	add r1, r5, r5, lsl #2
	mov r4, r0, lsr #0x10
	add r7, r2, r1, lsl #6
	mov r6, #0
	mov sl, #0x28
_0212DAB0:
	mla r0, r6, sl, r7
	ldr r2, [r0]
	mov r1, r8
	ldr r2, [r2, #8]
	blx r2
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #8
	blo _0212DAB0
	add r0, r5, #1
	and r5, r0, #0xff
	cmp r5, #3
	blo _0212D99C
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0212DAEC: .word FX_SinCosTable_

	arm_func_start ov1_0212DAF0
ov1_0212DAF0: ; 0x0212DAF0
	mov r1, #1
	str r1, [r0]
	mov r1, #0
	strh r1, [r0, #4]
	bx lr
	arm_func_end ov1_0212DAF0

	arm_func_start ov1_0212DB04
ov1_0212DB04: ; 0x0212DB04
	mov r1, #3
	str r1, [r0]
	mov r1, #0
	strh r1, [r0, #4]
	bx lr
	arm_func_end ov1_0212DB04

	arm_func_start ov1_0212DB18
ov1_0212DB18: ; 0x0212DB18
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r7, r0
	mov r6, r1
	mov r4, r5
	arm_func_end ov1_0212DB18
_0212DB2C:
	add r0, r7, r5, lsl #2
	ldr r0, [r0, #0x18]
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	add r2, r7, r5, lsl #2
	ldr r1, [r2, #0x18]
	add r6, r6, r0
	str r6, [r1, #4]
	ldr r0, [r2, #0x24]
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	add r2, r0, #1
	add r1, r7, r5, lsl #2
	add r0, r5, r5, lsl #2
	add ip, r7, r0, lsl #6
	ldr r1, [r1, #0x24]
	add r6, r6, r2
	mov r3, r4
	str r6, [r1, #4]
	mov r0, #0x28
_0212DB7C:
	mla r2, r3, r0, ip
	add r1, r3, #1
	add r6, r6, #1
	and r3, r1, #0xff
	str r6, [r2, #0x44]
	cmp r3, #8
	blo _0212DB7C
	add r0, r5, #1
	and r5, r0, #0xff
	cmp r5, #3
	blo _0212DB2C
	add r0, r6, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_0212DBB0
ov1_0212DBB0: ; 0x0212DBB0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov fp, r0
	mov sb, r1, lsl #0xc
	mov r7, #0
	mov r6, #0x1000
	mov r5, #8
	mov r4, #0x28
	arm_func_end ov1_0212DBB0
_0212DBCC:
	add r0, r7, r7, lsl #2
	mov r8, #0
	add sl, fp, r0, lsl #6
_0212DBD8:
	mov r0, sb
	mov r1, r6
	mov r2, r8
	mov r3, r5
	bl sub_02007068
	mov r2, r0, asr #0xc
	mla r1, r8, r4, sl
	add r0, r8, #1
	and r2, r2, #0xff
	and r8, r0, #0xff
	str r2, [r1, #0x54]
	cmp r8, #8
	blo _0212DBD8
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #3
	blo _0212DBCC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_0212DC20
ov1_0212DC20: ; 0x0212DC20
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r0, #0x20
	mov r4, r1
	bl _Znwm
	movs r8, r0
	beq _0212DC48
	mov r1, r4
	bl sub_0200D114
	mov r8, r0
	arm_func_end ov1_0212DC20
_0212DC48:
	ldr r1, _0212DFC0 ; =s_data_param_BattlePokemon_bin_overlay_1_02141338
	mov r0, r8
	bl sub_0200D148
	mov r0, r8
	bl sub_0200D390
	strh r0, [sl]
	ldrh r1, [sl]
	mov r0, #0x18
	mul r0, r1, r0
	bl _Znam
	str r0, [sl, #4]
	mov r7, #0
	str r7, [sp]
	ldrh r0, [sl]
	cmp r0, #0
	ble _0212DFA0
	mov sb, r7
	add r5, sp, #0
	mov r6, #1
	mov r4, #2
	mov fp, #3
_0212DC9C:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #4]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	mov r3, r5
	bl sub_0200D3B8
	ldr r2, [sp]
	ldr r1, [sl, #4]
	mov r0, r8
	strh r2, [r1, sb]
	mov r1, r7
	mov r2, fp
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #2]
	mov r0, r8
	mov r1, r7
	mov r2, #4
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #5]
	mov r0, r8
	mov r1, r7
	mov r2, #5
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #6]
	mov r0, r8
	mov r1, r7
	mov r2, #6
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #7]
	mov r0, r8
	mov r1, r7
	mov r2, #7
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #8]
	mov r0, r8
	mov r1, r7
	mov r2, #8
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	strb r1, [r0, #9]
	mov r0, r8
	mov r1, r7
	mov r2, #9
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xa]
	mov r0, r8
	mov r1, r7
	mov r2, #0xa
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xb]
	mov r0, r8
	mov r1, r7
	mov r2, #0xb
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, #0xc
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xe]
	mov r0, r8
	mov r1, r7
	mov r2, #0xd
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xf]
	mov r0, r8
	mov r1, r7
	mov r2, #0xe
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x10]
	mov r0, r8
	mov r1, r7
	mov r2, #0xf
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x11]
	mov r0, r8
	mov r1, r7
	mov r2, #0x10
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	strb r1, [r0, #0x12]
	mov r0, r8
	mov r1, r7
	mov r2, #0x11
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x13]
	mov r0, r8
	mov r1, r7
	mov r2, #0x12
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x14]
	mov r0, r8
	mov r1, r7
	mov r2, #0x13
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x15]
	mov r0, r8
	mov r1, r7
	mov r2, #0x14
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x16]
	mov r0, r8
	mov r1, r7
	mov r2, #0x15
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	strb r1, [r0, #0x17]
	ldrh r0, [sl]
	add r7, r7, #1
	add sb, sb, #0x18
	cmp r7, r0
	blt _0212DC9C
_0212DFA0:
	cmp r8, #0
	beq _0212DFB8
	mov r0, r8
	bl sub_0200D134
	mov r0, r8
	bl _ZdlPv
_0212DFB8:
	mov r0, sl
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212DFC0: .word s_data_param_BattlePokemon_bin_overlay_1_02141338

	arm_func_start ov1_0212DFC4
ov1_0212DFC4: ; 0x0212DFC4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0212DFE4
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #4]
	arm_func_end ov1_0212DFC4
_0212DFE4:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212DFEC
ov1_0212DFEC: ; 0x0212DFEC
	ldrh r2, [r0]
	cmp r1, r2
	movhi r0, #0
	ldrls r2, [r0, #4]
	movls r0, #0x18
	mlals r0, r1, r0, r2
	bx lr
	arm_func_end ov1_0212DFEC

	arm_func_start ov1_0212E008
ov1_0212E008: ; 0x0212E008
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r0, #0x20
	mov r4, r1
	bl _Znwm
	movs r8, r0
	beq _0212E030
	mov r1, r4
	bl sub_0200D114
	mov r8, r0
	arm_func_end ov1_0212E008
_0212E030:
	ldr r1, _0212E300 ; =s_data_param_BattleEffect_bin_overlay_1_02141358
	mov r0, r8
	bl sub_0200D148
	mov r0, r8
	bl sub_0200D390
	strh r0, [sl]
	ldrh r1, [sl]
	mov r0, #0x1c
	mul r0, r1, r0
	bl _Znam
	str r0, [sl, #4]
	mov r7, #0
	str r7, [sp]
	ldrh r0, [sl]
	cmp r0, #0
	ble _0212E2E0
	mov sb, r7
	add r5, sp, #0
	mov r6, #1
	mov r4, #2
	mov fp, #3
_0212E084:
	ldr r1, [sl, #4]
	mov r0, r8
	strh r7, [r1, sb]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #2]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	str r2, [r1, #4]
	mov r0, r8
	mov r1, r7
	mov r2, fp
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #8]
	mov r0, r8
	mov r1, r7
	mov r2, #4
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	str r2, [r1, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, #5
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x10]
	mov r0, r8
	mov r1, r7
	mov r2, #6
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x11]
	mov r0, r8
	mov r1, r7
	mov r2, #7
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x12]
	mov r0, r8
	mov r1, r7
	mov r2, #8
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	strb r1, [r0, #0x13]
	mov r0, r8
	mov r1, r7
	mov r2, #9
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x14]
	mov r0, r8
	mov r1, r7
	mov r2, #0xa
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x15]
	mov r0, r8
	mov r1, r7
	mov r2, #0xb
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x16]
	mov r0, r8
	mov r1, r7
	mov r2, #0xc
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x17]
	mov r0, r8
	mov r1, r7
	mov r2, #0xd
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x18]
	mov r0, r8
	mov r1, r7
	mov r2, #0xe
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x19]
	mov r0, r8
	mov r1, r7
	mov r2, #0xf
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0x1a]
	mov r0, r8
	mov r1, r7
	mov r2, #0x10
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	strb r1, [r0, #0x1b]
	ldrh r0, [sl]
	add r7, r7, #1
	add sb, sb, #0x1c
	cmp r7, r0
	blt _0212E084
_0212E2E0:
	cmp r8, #0
	beq _0212E2F8
	mov r0, r8
	bl sub_0200D134
	mov r0, r8
	bl _ZdlPv
_0212E2F8:
	mov r0, sl
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212E300: .word s_data_param_BattleEffect_bin_overlay_1_02141358

	arm_func_start ov1_0212E304
ov1_0212E304: ; 0x0212E304
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0212E324
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #4]
	arm_func_end ov1_0212E304
_0212E324:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212E32C
ov1_0212E32C: ; 0x0212E32C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02011D60
	ldr r1, _0212E3B4 ; =PTR_LAB_overlay_1_0212e3b8_overlay_1_02141398
	mov r0, r4
	str r1, [r4]
	bl ov1_0212E410
	ldr r1, [r4, #0x184]
	mov r0, r4
	bl sub_02011FF4
	ldr r0, [r4, #0x184]
	bl sub_02014310
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0xd
	ldr r0, [r4, #0x184]
	bl sub_020141AC
	ldr r0, [r4, #0x184]
	bl sub_020142B4
	ldr r0, [r4, #0x184]
	bl sub_02014364
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0xd
	ldr r0, [r4, #0x184]
	bl sub_0201429C
	ldr r0, [r4, #0x184]
	bl sub_020142F8
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212E3B4: .word PTR_LAB_overlay_1_0212e3b8_overlay_1_02141398
	arm_func_end ov1_0212E32C

	arm_func_start ov1_0212E3B8
ov1_0212E3B8: ; 0x0212E3B8
	stmdb sp!, {r4, lr}
	ldr r1, _0212E3DC ; =PTR_LAB_overlay_1_0212e3b8_overlay_1_02141398
	mov r4, r0
	str r1, [r4]
	bl ov1_0212E45C
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212E3DC: .word PTR_LAB_overlay_1_0212e3b8_overlay_1_02141398
	arm_func_end ov1_0212E3B8

	arm_func_start ov1_0212E3E0
ov1_0212E3E0: ; 0x0212E3E0
	stmdb sp!, {r4, lr}
	ldr r1, _0212E40C ; =PTR_LAB_overlay_1_0212e3b8_overlay_1_02141398
	mov r4, r0
	str r1, [r4]
	bl ov1_0212E45C
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212E40C: .word PTR_LAB_overlay_1_0212e3b8_overlay_1_02141398
	arm_func_end ov1_0212E3E0

	arm_func_start ov1_0212E410
ov1_0212E410: ; 0x0212E410
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0212E448
	mov r3, #1
	ldr r1, _0212E454 ; =s_data_cursor_LZ_bin_overlay_1_021413ac
	ldr r2, _0212E458 ; =s_cursor_overlay_1_021413c0
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	bl sub_02013060
	arm_func_end ov1_0212E410
_0212E448:
	str r0, [r4, #0x184]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212E454: .word s_data_cursor_LZ_bin_overlay_1_021413ac
_0212E458: .word s_cursor_overlay_1_021413c0

	arm_func_start ov1_0212E45C
ov1_0212E45C: ; 0x0212E45C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x184]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	beq _0212E480
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_0212E45C
_0212E480:
	mov r0, #0
	str r0, [r4, #0x184]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212E48C
ov1_0212E48C: ; 0x0212E48C
	ldr ip, _0212E494 ; =FUN_020121F4
	bx ip
	.align 2, 0
_0212E494: .word sub_020121F4
	arm_func_end ov1_0212E48C

	arm_func_start ov1_0212E498
ov1_0212E498: ; 0x0212E498
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x104]
	mov r5, r1
	ldr r2, [r0]
	ldrb r1, [r6, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r4, [r6, #0xc4]
	ldr r2, [r0, #4]
	mov r1, #0
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	ldr r1, [r0, #8]
	str r1, [r4, #0x38]
	ldrb r1, [r6, #0xc0]
	ldr r0, [r0, #0xc]
	add r1, r6, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008828
	strh r0, [r4, #0x2a]
	ldr ip, [r6, #0x20]
	ldr r3, [r6, #0x24]
	mov r0, r4
	str ip, [r4, #0x18]
	str r3, [r4, #0x1c]
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #8]
	str ip, [sp]
	str r3, [sp, #4]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_0212E498

	arm_func_start ov1_0212E524
ov1_0212E524: ; 0x0212E524
	bx lr
	arm_func_end ov1_0212E524

	arm_func_start ov1_0212E528
ov1_0212E528: ; 0x0212E528
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02011D60
	ldr r1, _0212E5C4 ; =PTR_LAB_overlay_1_0212e5c8_overlay_1_021413ec
	mov r0, r4
	str r1, [r4]
	bl ov1_0212E620
	ldr r1, [r4, #0x184]
	mov r0, r4
	bl sub_02011FF4
	ldr r0, [r4, #0x184]
	bl sub_02014310
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0xd
	ldr r0, [r4, #0x184]
	bl sub_020141AC
	ldr r0, [r4, #0x184]
	bl sub_020142B4
	ldr r0, [r4, #0x184]
	bl sub_02014364
	mov r1, #0
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0xd
	ldr r0, [r4, #0x184]
	bl sub_0201429C
	ldr r0, [r4, #0x184]
	bl sub_020142F8
	mov r0, #0
	str r0, [r4, #0x190]
	str r0, [r4, #0x194]
	mov r0, #0x1000
	str r0, [r4, #0x198]
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212E5C4: .word PTR_LAB_overlay_1_0212e5c8_overlay_1_021413ec
	arm_func_end ov1_0212E528

	arm_func_start ov1_0212E5C8
ov1_0212E5C8: ; 0x0212E5C8
	stmdb sp!, {r4, lr}
	ldr r1, _0212E5EC ; =PTR_LAB_overlay_1_0212e5c8_overlay_1_021413ec
	mov r4, r0
	str r1, [r4]
	bl ov1_0212E66C
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212E5EC: .word PTR_LAB_overlay_1_0212e5c8_overlay_1_021413ec
	arm_func_end ov1_0212E5C8

	arm_func_start ov1_0212E5F0
ov1_0212E5F0: ; 0x0212E5F0
	stmdb sp!, {r4, lr}
	ldr r1, _0212E61C ; =PTR_LAB_overlay_1_0212e5c8_overlay_1_021413ec
	mov r4, r0
	str r1, [r4]
	bl ov1_0212E66C
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212E61C: .word PTR_LAB_overlay_1_0212e5c8_overlay_1_021413ec
	arm_func_end ov1_0212E5F0

	arm_func_start ov1_0212E620
ov1_0212E620: ; 0x0212E620
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0212E658
	mov r3, #1
	ldr r1, _0212E664 ; =s_data_disk02_LZ_bin_overlay_1_02141400
	ldr r2, _0212E668 ; =s_disk02_overlay_1_02141414
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	bl sub_02013060
	arm_func_end ov1_0212E620
_0212E658:
	str r0, [r4, #0x184]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212E664: .word s_data_disk02_LZ_bin_overlay_1_02141400
_0212E668: .word s_disk02_overlay_1_02141414

	arm_func_start ov1_0212E66C
ov1_0212E66C: ; 0x0212E66C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x184]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	beq _0212E690
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_0212E66C
_0212E690:
	mov r0, #0
	str r0, [r4, #0x184]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212E69C
ov1_0212E69C: ; 0x0212E69C
	str r3, [r0, #0x190]
	str r1, [r0, #0x194]
	str r2, [r0, #0x198]
	bx lr
	arm_func_end ov1_0212E69C

	arm_func_start ov1_0212E6AC
ov1_0212E6AC: ; 0x0212E6AC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov sl, r0
	ldr r3, [sl, #0x20]
	ldr r1, [sl, #0x24]
	ldr r0, [sl, #0x190]
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r2, [r0, #0x20]
	ldr sb, [r0, #0x24]
	sub r5, r3, r2
	sub r6, r1, sb
	mov r0, r5
	mov r1, r6
	str r2, [sp]
	str sb, [sp, #4]
	bl sub_02007254
	mov r7, r0
	mov r0, r6
	mov r1, r5
	bl FX_Atan2Idx
	ldr r4, [sl, #0x194]
	cmp r7, r4
	ble _0212E770
	mov r0, r0, asr #4
	mov r8, r0, lsl #1
	add r1, r8, #1
	ldr r0, _0212E7E0 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r1, [r0, r1]
	ldr r3, [sp]
	add r0, sl, #0xc
	smull r2, r1, r4, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r3, r2
	bl sub_02011D1C
	ldr r0, _0212E7E0 ; =FX_SinCosTable_
	mov r1, r8, lsl #1
	ldrsh r1, [r0, r1]
	add r0, sl, #0xc
	smull r2, r1, r4, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, sb, r2
	bl sub_02011D2C
	arm_func_end ov1_0212E6AC
_0212E770:
	ldr r0, [sl, #0x194]
	cmp r7, r0
	addge sp, sp, #0x10
	ldmgeia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r5, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r5, lsr #20
	mov r0, r5, lsl #0xc
	mov r2, #0x2000
	mov r3, #0
	bl _ll_div
	mov r2, r0
	ldr r1, [sp]
	add r0, sl, #0xc
	add r1, r1, r2
	bl sub_02011D1C
	mov r0, r6, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r6, lsr #20
	mov r0, r6, lsl #0xc
	mov r2, #0x2000
	mov r3, #0
	bl _ll_div
	add r1, sb, r0
	add r0, sl, #0xc
	bl sub_02011D2C
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0212E7E0: .word FX_SinCosTable_

	arm_func_start ov1_0212E7E4
ov1_0212E7E4: ; 0x0212E7E4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x104]
	mov r5, r1
	ldr r2, [r0]
	ldrb r1, [r6, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r4, [r6, #0xc4]
	ldr r2, [r0, #4]
	mov r1, #0
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	ldr r1, [r0, #8]
	str r1, [r4, #0x38]
	ldrb r1, [r6, #0xc0]
	ldr r0, [r0, #0xc]
	add r1, r6, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008828
	strh r0, [r4, #0x2a]
	ldr r2, [r6, #0x20]
	ldr r3, [r6, #0x24]
	mov r0, #0x10
	str r2, [r4, #0x18]
	str r3, [r4, #0x1c]
	str r0, [r4, #0x14]
	ldr r1, [r6, #0x198]
	mov r0, r4
	str r2, [sp]
	str r1, [r4, #0x20]
	ldr r2, [r6, #0x198]
	mov r1, r5
	str r2, [r4, #0x24]
	ldr r2, [r0]
	str r3, [sp, #4]
	ldr r2, [r2, #8]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_0212E7E4

	arm_func_start ov1_0212E888
ov1_0212E888: ; 0x0212E888
	bx lr
	arm_func_end ov1_0212E888

	arm_func_start ov1_0212E88C
ov1_0212E88C: ; 0x0212E88C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr ip, _0212E8EC ; =FUN_020039E8
	ldr r3, _0212E8F0 ; =FUN_020039B8
	add r0, r4, #4
	mov r1, #0x62
	mov r2, #0x28
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x354
	ldr ip, _0212E8F4 ; =FUN_02004160
	ldr r3, _0212E8F8 ; =FUN_02004114
	add r0, r0, #0xc00
	mov r1, #0x62
	mov r2, #0x60
	str ip, [sp]
	bl __cxa_vec_ctor
	mov r0, r4
	mov r1, #0
	bl ov1_0212EDB4
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0212E8EC: .word sub_020039E8
_0212E8F0: .word sub_020039B8
_0212E8F4: .word sub_02004160
_0212E8F8: .word sub_02004114
	arm_func_end ov1_0212E88C

	arm_func_start ov1_0212E8FC
ov1_0212E8FC: ; 0x0212E8FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x354
	ldr r3, _0212E938 ; =FUN_02004160
	add r0, r0, #0xc00
	mov r1, #0x62
	mov r2, #0x60
	bl __cxa_vec_cleanup
	ldr r3, _0212E93C ; =FUN_020039E8
	add r0, r4, #4
	mov r1, #0x62
	mov r2, #0x28
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212E938: .word sub_02004160
_0212E93C: .word sub_020039E8
	arm_func_end ov1_0212E8FC

	arm_func_start ov1_0212E940
ov1_0212E940: ; 0x0212E940
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r1, r4, #0x3400
	ldrh r1, [r1, #0x1a]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r2, r4, #0x3000
	ldr ip, [r2, #0x414]
	ldr r1, _0212E994 ; =0x00000E66
	mov r3, ip, asr #0x1f
	umull r5, lr, ip, r1
	mla lr, r3, r1, lr
	mov r1, r5, lsr #0xc
	orr r1, r1, lr, lsl #20
	str r1, [r2, #0x414]
	bl ov1_0212EB20
	add r0, r4, #0x3400
	ldrh r1, [r0, #0x1a]
	sub r1, r1, #1
	strh r1, [r0, #0x1a]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0212E994: .word 0x00000E66
	arm_func_end ov1_0212E940

	arm_func_start ov1_0212E998
ov1_0212E998: ; 0x0212E998
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	add r4, r8, #0x3400
	ldrh r0, [r4, #0x1a]
	mov r7, r1
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrh r0, [r8]
	mov r6, #1
	cmp r0, #1
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r8, #0x354
	add r5, r0, #0xc00
	mov sb, #0x60
	arm_func_end ov1_0212E998
_0212E9D0:
	mul r0, r6, sb
	add r3, r8, r0
	ldrh r2, [r4, #0x18]
	add r1, r3, #0xf00
	add r0, r5, r0
	strh r2, [r1, #0x5c]
	ldrh r2, [r4, #0x1a]
	mov r1, r7
	str r2, [r3, #0xf68]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r8]
	mov r6, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _0212E9D0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov1_0212EA1C
ov1_0212EA1C: ; 0x0212EA1C
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r2, r0, #0x3400
	mov r1, #0x18
	strh r1, [r2, #0x1a]
	ldr ip, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r1, r0, #0x3000
	mov r4, #0x10000
	ldr lr, _0212EA78 ; =0x000003FF
	str r4, [r1, #0x414]
	strh lr, [r2, #0x18]
	mov r1, #0
	strh r1, [r0]
	str ip, [r0, #0x1c]
	str ip, [sp]
	str r3, [sp, #4]
	str r3, [r0, #0x20]
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0212EA78: .word 0x000003FF
	arm_func_end ov1_0212EA1C

	arm_func_start ov1_0212EA7C
ov1_0212EA7C: ; 0x0212EA7C
	stmdb sp!, {r0, r1, r2, r3}
	sub sp, sp, #0x10
	ldrh r2, [r0]
	ldr r3, [sp, #0x14]
	add ip, r0, #4
	mov r1, #0x28
	mla ip, r2, r1, ip
	ldr r2, [sp, #0x18]
	str r3, [ip, #0x20]
	str r2, [ip, #0x24]
	ldrh r1, [r0]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	add r1, r1, #1
	strh r1, [r0]
	str r3, [ip, #0x18]
	str r3, [sp]
	str r2, [sp, #4]
	str r2, [ip, #0x1c]
	add sp, sp, #0x10
	add sp, sp, #0x10
	bx lr
	arm_func_end ov1_0212EA7C

	arm_func_start ov1_0212EAD4
ov1_0212EAD4: ; 0x0212EAD4
	stmdb sp!, {r3, lr}
	ldrh lr, [r0]
	add ip, r0, #4
	mov r1, #0x28
	sub r2, lr, #1
	mla r3, r2, r1, ip
	mla ip, lr, r1, ip
	ldr r2, [r3, #0x24]
	ldr r1, [r3, #0x20]
	str r1, [ip, #0x18]
	str r2, [ip, #0x1c]
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x1c]
	str r1, [ip, #0x20]
	str r2, [ip, #0x24]
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0212EAD4

	arm_func_start ov1_0212EB20
ov1_0212EB20: ; 0x0212EB20
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x38
	ldrh r2, [r0]
	str r0, [sp]
	mov fp, #0
	cmp r2, #0
	addle sp, sp, #0x38
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r1, r1, lsr #31
	ldr r7, [sp]
	mov sl, r0, asr #1
	ldr r4, _0212EDB0 ; =FX_SinCosTable_
	mov r8, r7
	mov sb, sl, asr #0x1f
	arm_func_end ov1_0212EB20
_0212EB58:
	cmp fp, #0
	beq _0212EB84
	ldr r2, [r7, #-0xc]
	ldr r3, [r7, #-8]
	ldr r5, [r7, #-4]
	ldr r6, [r7]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	str r5, [sp, #0x28]
	str r6, [sp, #0x2c]
	b _0212EBB8
_0212EB84:
	mov r0, #0x28
	mul r1, r2, r0
	ldr r0, [sp]
	add r0, r0, r1
	ldr r2, [r0, #-0xc]
	ldr r3, [r0, #-8]
	ldr r5, [r0, #-4]
	ldr r0, [sp]
	str r2, [sp, #0x20]
	ldr r6, [r0, r1]
	str r3, [sp, #0x24]
	str r5, [sp, #0x18]
	str r6, [sp, #0x1c]
_0212EBB8:
	sub r0, r6, r3
	sub r1, r5, r2
	bl FX_Atan2Idx
	sub r1, r0, #0x4000
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r0, r3, lsl #1
	str r0, [sp, #4]
	add r1, r4, r2, lsl #1
	mov lr, r2, lsl #1
	ldrsh r2, [r1, #2]
	add r0, r4, r3, lsl #1
	mov r1, r2, asr #0x1f
	umull ip, r3, sl, r2
	mla r3, sl, r1, r3
	mla r3, sb, r2, r3
	mov r1, ip, lsr #0xc
	orr r1, r1, r3, lsl #20
	add r1, r5, r1
	str r1, [r8, #0xf6c]
	ldrsh r2, [r4, lr]
	mov r1, r2, asr #0x1f
	umull ip, r3, sl, r2
	mla r3, sl, r1, r3
	mla r3, sb, r2, r3
	mov r1, ip, lsr #0xc
	orr r1, r1, r3, lsl #20
	add r1, r6, r1
	str r1, [r8, #0xf70]
	ldrsh r1, [r0, #2]
	mov r0, r1, asr #0x1f
	umull r3, r2, sl, r1
	mla r2, sl, r0, r2
	mla r2, sb, r1, r2
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #20
	add r0, r5, r0
	str r0, [r8, #0xf74]
	ldr r0, [sp, #4]
	ldrsh r1, [r4, r0]
	mov r0, r1, asr #0x1f
	umull r3, r2, sl, r1
	mla r2, sl, r0, r2
	mla r2, sb, r1, r2
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #20
	add r0, r6, r0
	str r0, [r8, #0xf78]
	ldr r1, [r7, #0x1c]
	ldr r2, [r7, #0x20]
	ldr r0, [r7, #0x24]
	ldr r5, [r7, #0x28]
	str r1, [sp, #0x10]
	sub r1, r0, r1
	str r0, [sp, #8]
	sub r0, r5, r2
	str r2, [sp, #0x14]
	str r5, [sp, #0xc]
	bl FX_Atan2Idx
	add r1, r0, #0x4000
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	mov r2, r1, lsl #1
	add r1, r4, r1, lsl #1
	ldrsh lr, [r1, #2]
	ldr ip, [sp, #8]
	mov r1, lr, asr #0x1f
	umull r6, r3, sl, lr
	mla r3, sl, r1, r3
	mla r3, sb, lr, r3
	mov r1, r6, lsr #0xc
	orr r1, r1, r3, lsl #20
	add r1, ip, r1
	str r1, [r8, #0xf7c]
	ldrsh r2, [r4, r2]
	mov r1, r2, asr #0x1f
	umull r6, r3, sl, r2
	mla r3, sl, r1, r3
	mla r3, sb, r2, r3
	mov r1, r6, lsr #0xc
	orr r1, r1, r3, lsl #20
	add r1, r5, r1
	str r1, [r8, #0xf80]
	sub r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r2, r0, lsl #1
	add r0, r4, r2, lsl #1
	ldrsh r1, [r0, #2]
	mov r2, r2, lsl #1
	add fp, fp, #1
	mov r0, r1, asr #0x1f
	umull r6, r3, sl, r1
	mla r3, sl, r0, r3
	mla r3, sb, r1, r3
	mov r0, r6, lsr #0xc
	orr r0, r0, r3, lsl #20
	add r0, ip, r0
	str r0, [r8, #0xf84]
	ldrsh r1, [r4, r2]
	add r7, r7, #0x28
	mov r0, r1, asr #0x1f
	umull r3, r2, sl, r1
	mla r2, sl, r0, r2
	mla r2, sb, r1, r2
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #20
	add r0, r5, r0
	str r0, [r8, #0xf88]
	ldr r0, [sp]
	add r8, r8, #0x60
	ldrh r2, [r0]
	cmp fp, r2
	blt _0212EB58
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212EDB0: .word FX_SinCosTable_

	arm_func_start ov1_0212EDB4
ov1_0212EDB4: ; 0x0212EDB4
	mov r3, #0
	mov r2, #0x60
	arm_func_end ov1_0212EDB4
_0212EDBC:
	mla ip, r3, r2, r0
	add r3, r3, #1
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	str r1, [ip, #0xf58]
	cmp r3, #0x62
	blo _0212EDBC
	add r0, r1, #1
	bx lr

	arm_func_start ov1_0212EDE0
ov1_0212EDE0: ; 0x0212EDE0
	stmdb sp!, {r4, lr}
	ldrh ip, [sp, #8]
	ldr lr, _0212EE1C ; =PTR_LAB_overlay_1_0212ee20_overlay_1_0214143c
	mov r4, r0
	str lr, [r4]
	strh ip, [r4, #4]
	str r1, [r4, #8]
	str r2, [r4, #0xc]
	str r3, [r4, #0x10]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r1, [r0, #0x48c]
	mov r0, r4
	str r1, [r4, #0x14]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212EE1C: .word PTR_LAB_overlay_1_0212ee20_overlay_1_0214143c
	arm_func_end ov1_0212EDE0
_0212EE20:
	.byte 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start ov1_0212EE24
ov1_0212EE24: ; 0x0212EE24
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212EE24

	arm_func_start ov1_0212EE38
ov1_0212EE38: ; 0x0212EE38
	bx lr
	arm_func_end ov1_0212EE38

	arm_func_start ov1_0212EE3C
ov1_0212EE3C: ; 0x0212EE3C
	stmdb sp!, {r3, lr}
	mov ip, #0
	ldr lr, [r0, #8]
	mov r1, ip
	mov r2, #1
	arm_func_end ov1_0212EE3C
_0212EE50:
	ldr r0, [lr, ip, lsl #2]
	ldr r3, [r0, #0x104]
	cmp r3, #0
	movne r3, r2
	moveq r3, r1
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	add ip, ip, #1
	cmp ip, #0x20
	blt _0212EE50
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov1_0212EE80
ov1_0212EE80: ; 0x0212EE80
	ldr r3, _0212EE94 ; =DAT_overlay_1_0213fcac
	mov r2, #0x4c
	mla r2, r0, r2, r3
	ldr r0, [r2, r1, lsl #2]
	bx lr
	.align 2, 0
_0212EE94: .word DAT_overlay_1_0213fcac
	arm_func_end ov1_0212EE80

	arm_func_start ov1_0212EE98
ov1_0212EE98: ; 0x0212EE98
	ldr r3, _0212EEB0 ; =DAT_overlay_1_0213fc38
	mov r2, #6
	mla r2, r0, r2, r3
	mov r0, r1, lsl #1
	ldrh r0, [r0, r2]
	bx lr
	.align 2, 0
_0212EEB0: .word DAT_overlay_1_0213fc38
	arm_func_end ov1_0212EE98

	arm_func_start ov1_0212EEB4
ov1_0212EEB4: ; 0x0212EEB4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r0, #0x20
	mov r5, r1
	mov r4, r2
	bl _Znwm
	movs r8, r0
	beq _0212EEE0
	mov r1, r4
	bl sub_0200D114
	mov r8, r0
	arm_func_end ov1_0212EEB4
_0212EEE0:
	mov r0, r8
	mov r1, r5
	bl sub_0200D148
	mov r0, r8
	bl sub_0200D390
	strh r0, [sl]
	ldrh r1, [sl]
	mov r0, #0x32
	mul r0, r1, r0
	bl _Znam
	str r0, [sl, #4]
	mov r7, #0
	str r7, [sp]
	ldrh r0, [sl]
	cmp r0, #0
	ble _0212F2C8
	mov sb, r7
	add r5, sp, #0
	mov r6, #1
	mov r4, #2
	mov fp, #3
_0212EF34:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl sub_0200D3B8
	ldr r2, [sp]
	ldr r1, [sl, #4]
	mov r0, r8
	strh r2, [r1, sb]
	mov r1, r7
	mov r2, r4
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #2]
	mov r0, r8
	mov r1, r7
	mov r2, fp
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #4]
	mov r0, r8
	mov r1, r7
	mov r2, #4
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #6]
	mov r0, r8
	mov r1, r7
	mov r2, #5
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #8]
	mov r0, r8
	mov r1, r7
	mov r2, #6
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0xa]
	mov r0, r8
	mov r1, r7
	mov r2, #7
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, #8
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	strh r1, [r0, #0xe]
	mov r0, r8
	mov r1, r7
	mov r2, #9
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x10]
	mov r0, r8
	mov r1, r7
	mov r2, #0xa
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x12]
	mov r0, r8
	mov r1, r7
	mov r2, #0xb
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x14]
	mov r0, r8
	mov r1, r7
	mov r2, #0xc
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x16]
	mov r0, r8
	mov r1, r7
	mov r2, #0xd
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x18]
	mov r0, r8
	mov r1, r7
	mov r2, #0xe
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x1a]
	mov r0, r8
	mov r1, r7
	mov r2, #0xf
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x1c]
	mov r0, r8
	mov r1, r7
	mov r2, #0x10
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	strh r1, [r0, #0x1e]
	mov r0, r8
	mov r1, r7
	mov r2, #0x11
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x20]
	mov r0, r8
	mov r1, r7
	mov r2, #0x12
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x22]
	mov r0, r8
	mov r1, r7
	mov r2, #0x13
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x24]
	mov r0, r8
	mov r1, r7
	mov r2, #0x14
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x26]
	mov r0, r8
	mov r1, r7
	mov r2, #0x15
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x28]
	mov r0, r8
	mov r1, r7
	mov r2, #0x16
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x2a]
	mov r0, r8
	mov r1, r7
	mov r2, #0x17
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x2c]
	mov r0, r8
	mov r1, r7
	mov r2, #0x18
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	strh r1, [r0, #0x2e]
	mov r0, r8
	mov r1, r7
	mov r2, #0x19
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	strh r1, [r0, #0x30]
	ldrh r0, [sl]
	add r7, r7, #1
	add sb, sb, #0x32
	cmp r7, r0
	blt _0212EF34
_0212F2C8:
	cmp r8, #0
	beq _0212F2E0
	mov r0, r8
	bl sub_0200D134
	mov r0, r8
	bl _ZdlPv
_0212F2E0:
	mov r0, sl
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_0212F2E8
ov1_0212F2E8: ; 0x0212F2E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0212F308
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #4]
	arm_func_end ov1_0212F2E8
_0212F308:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0212F310
ov1_0212F310: ; 0x0212F310
	ldrh r2, [r0]
	cmp r1, r2
	movgt r0, #0
	ldrle r2, [r0, #4]
	movle r0, #0x32
	mlale r0, r1, r0, r2
	bx lr
	arm_func_end ov1_0212F310

	arm_func_start ov1_0212F32C
ov1_0212F32C: ; 0x0212F32C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r1, r2
	mov r5, r3
	mov r4, #0
	bl ov1_0212F310
	cmp r6, #0x11
	addls pc, pc, r6, lsl #2
	b _0212F420
_0212F350: ; jump table
	b _0212F398 ; case 0
	b _0212F3A0 ; case 1
	b _0212F3A8 ; case 2
	b _0212F3B4 ; case 3
	b _0212F420 ; case 4
	b _0212F3BC ; case 5
	b _0212F3C8 ; case 6
	b _0212F420 ; case 7
	b _0212F3D0 ; case 8
	b _0212F3D8 ; case 9
	b _0212F3E0 ; case 10
	b _0212F3E8 ; case 11
	b _0212F3F4 ; case 12
	b _0212F3FC ; case 13
	b _0212F404 ; case 14
	b _0212F410 ; case 15
	b _0212F418 ; case 16
	b _0212F420 ; case 17
	arm_func_end ov1_0212F32C
_0212F398:
	ldrh r4, [r0]
	b _0212F420
_0212F3A0:
	ldrh r4, [r0, #2]
	b _0212F420
_0212F3A8:
	add r0, r0, r5, lsl #1
	ldrh r4, [r0, #4]
	b _0212F420
_0212F3B4:
	ldrh r4, [r0, #0xa]
	b _0212F420
_0212F3BC:
	add r0, r0, r5, lsl #1
	ldrh r4, [r0, #0xc]
	b _0212F420
_0212F3C8:
	ldrh r4, [r0, #0x12]
	b _0212F420
_0212F3D0:
	ldrh r4, [r0, #0x14]
	b _0212F420
_0212F3D8:
	ldrh r4, [r0, #0x16]
	b _0212F420
_0212F3E0:
	ldrh r4, [r0, #0x18]
	b _0212F420
_0212F3E8:
	add r0, r0, r5, lsl #1
	ldrh r4, [r0, #0x1a]
	b _0212F420
_0212F3F4:
	ldrh r4, [r0, #0x20]
	b _0212F420
_0212F3FC:
	ldrh r4, [r0, #0x22]
	b _0212F420
_0212F404:
	add r0, r0, r5, lsl #1
	ldrh r4, [r0, #0x24]
	b _0212F420
_0212F410:
	ldrh r4, [r0, #0x2a]
	b _0212F420
_0212F418:
	add r0, r0, r5, lsl #1
	ldrh r4, [r0, #0x2c]
_0212F420:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_0212F428
ov1_0212F428: ; 0x0212F428
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r0, _0212F45C ; =ptr_FUN_overlay_1_0212f460_overlay_1_0214147c
	mov r1, #0
	str r0, [r4]
	mov r0, r4
	str r1, [r4, #0x18]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0212F45C: .word ptr_FUN_overlay_1_0212f460_overlay_1_0214147c
	arm_func_end ov1_0212F428

	arm_func_start ov1_0212F460
ov1_0212F460: ; 0x0212F460
	stmdb sp!, {r4, lr}
	ldr r1, _0212F488 ; =ptr_FUN_overlay_1_0212f460_overlay_1_0214147c
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x44]
	bl sub_0200D980
	mov r0, r4
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212F488: .word ptr_FUN_overlay_1_0212f460_overlay_1_0214147c
	arm_func_end ov1_0212F460

	arm_func_start ov1_0212F48C
ov1_0212F48C: ; 0x0212F48C
	stmdb sp!, {r4, lr}
	ldr r1, _0212F4BC ; =ptr_FUN_overlay_1_0212f460_overlay_1_0214147c
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x44]
	bl sub_0200D980
	mov r0, r4
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212F4BC: .word ptr_FUN_overlay_1_0212f460_overlay_1_0214147c
	arm_func_end ov1_0212F48C

	arm_func_start ov1_0212F4C0
ov1_0212F4C0: ; 0x0212F4C0
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r5, [r4, #4]
	cmp r5, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	sub r5, r5, #1
	strh r5, [r4, #4]
	ldr r5, [r4, #0x18]
	cmp r5, #3
	addls pc, pc, r5, lsl #2
	b _0212F51C
_0212F4F0: ; jump table
	b _0212F500 ; case 0
	b _0212F508 ; case 1
	b _0212F510 ; case 2
	b _0212F518 ; case 3
	arm_func_end ov1_0212F4C0
_0212F500:
	bl ov1_0212F56C
	b _0212F51C
_0212F508:
	bl ov1_0212F620
	b _0212F51C
_0212F510:
	bl ov1_0212F700
	b _0212F51C
_0212F518:
	bl ov1_0212F9D4
_0212F51C:
	mov r6, #0
	mov r5, r6
_0212F524:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _0212F554
	bl ov1_0212747C
	cmp r0, #0
	bne _0212F554
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x50]
	bl ov1_02127300
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x50]
_0212F554:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #5
	blo _0212F524
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_0212F56C
ov1_0212F56C: ; 0x0212F56C
	stmdb sp!, {r4, lr}
	ldrb r2, [r1, #4]
	mov r4, r0
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0
	strh r2, [r4, #0x1c]
	strh r2, [r4, #0x1e]
	strb r2, [r4, #0x20]
	strb r2, [r4, #0x21]
	ldrh r3, [r1, #0xa]
	mov r2, #0xc000
	sub r3, r3, #0x80
	mov r3, r3, lsl #0xc
	str r3, [r4, #0x24]
	ldrh r1, [r1, #0xc]
	sub r1, r1, #0x60
	mov r1, r1, lsl #0xc
	str r1, [r4, #0x28]
	ldr r1, [r4, #0x24]
	str r1, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	str r1, [r4, #0x30]
	str r2, [r4, #0x34]
	bl ov1_0212EE3C
	str r0, [r4, #0x48]
	ldr r1, [r4, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	ldr r0, [r4, #0x48]
	mov r1, #0x20
	mov r2, #0
	bl ov1_02127454
	ldr r0, [r4, #0x48]
	add r1, r4, #0x24
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [r4, #0x14]
	ldr r1, _0212F61C ; =0x0000013D
	bl sub_02034C44
	mov r0, #1
	str r0, [r4, #0x18]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212F61C: .word 0x0000013D
	arm_func_end ov1_0212F56C

	arm_func_start ov1_0212F620
ov1_0212F620: ; 0x0212F620
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldrh r3, [r1, #0xa]
	ldrh r2, [r1, #0xc]
	ldrb r1, [r1, #6]
	sub r3, r3, #0x80
	sub r2, r2, #0x60
	mov r3, r3, lsl #0xc
	mov r2, r2, lsl #0xc
	mov r4, r0
	str r3, [sp, #4]
	str r2, [sp, #8]
	cmp r1, #0
	bne _0212F680
	add r0, r4, #0x2c
	add ip, sp, #4
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r3, {r2, r3}
	ldmia ip, {r0, r1}
	bl sub_02006100
	cmp r0, #0
	bne _0212F69C
	arm_func_end ov1_0212F620
_0212F680:
	mov r0, #2
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	ldr r1, _0212F6F8 ; =0x0000013D
	bl sub_02034C5C
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_0212F69C:
	ldrb r0, [r4, #0x21]
	cmp r0, #3
	addhs sp, sp, #0xc
	ldmhsia sp!, {r3, r4, pc}
	ldrh r1, [r4, #0x1c]
	ldr r0, _0212F6FC ; =DAT_overlay_1_02140250
	add r1, r1, #1
	strh r1, [r4, #0x1c]
	ldrb r1, [r4, #0x21]
	ldrh r3, [r4, #0x1c]
	mov r2, r1, lsl #1
	ldrh r0, [r0, r2]
	cmp r3, r0
	addlo sp, sp, #0xc
	ldmloia sp!, {r3, r4, pc}
	add r1, r1, #1
	strb r1, [r4, #0x21]
	ldr r0, [r4, #0x48]
	and r2, r1, #0xff
	mov r1, #7
	bl ov1_021273A0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0212F6F8: .word 0x0000013D
_0212F6FC: .word DAT_overlay_1_02140250

	arm_func_start ov1_0212F700
ov1_0212F700: ; 0x0212F700
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, r0
	ldrh r1, [sb, #0x1e]
	mov r8, r3
	cmp r1, #1
	beq _0212F730
	cmp r1, #0x3c
	beq _0212F74C
	cmp r1, #0x78
	beq _0212F800
	b _0212F9AC
	arm_func_end ov1_0212F700
_0212F730:
	ldr r0, [sb, #0x44]
	mov r1, #0x1000
	bl sub_0200D8C8
	ldr r0, [sb, #0x14]
	ldr r1, _0212F9C0 ; =0x0000013E
	bl sub_02034C44
	b _0212F9AC
_0212F74C:
	bl ov1_0212EE3C
	str r0, [sb, #0x4c]
	ldr r1, [sb, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	ldr r0, [sb, #0x4c]
	mov r1, #0x20
	mov r2, #1
	bl ov1_02127454
	ldr r2, [sb, #0x24]
	ldr r1, [sb, #0x28]
	ldr r0, [sb, #0x24]
	str r2, [sp, #0xc]
	cmp r0, #0
	str r1, [sp, #0x10]
	ldr r0, [sb, #0x4c]
	blt _0212F7A4
	sub r2, r2, #0x80000
	mov r1, #0x2000
	str r2, [sp, #0xc]
	bl sub_020128EC
	b _0212F7B4
_0212F7A4:
	add r2, r2, #0x80000
	mov r1, #0x6000
	str r2, [sp, #0xc]
	bl sub_020128EC
_0212F7B4:
	ldr r0, [sb, #0x4c]
	add r1, sp, #0xc
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [sb, #0x4c]
	add r1, sb, #0x24
	add r0, r0, #0xc
	mov r3, #0x3c
	ldmia r1, {r1, r2}
	bl sub_02011AB0
	ldr r0, [sb, #0x4c]
	mov r1, #0xc0000
	str r1, [r0, #0x8c]
	ldr r0, [sb, #0x4c]
	mov r1, #0
	mov r2, #0x3c
	bl sub_020127D0
	b _0212F9AC
_0212F800:
	ldr r0, [sb, #0x4c]
	bl ov1_02127300
	ldr r0, [sb, #0x14]
	ldr r1, _0212F9C4 ; =0x0000013F
	bl sub_02034C44
	ldr r0, [sb, #0x48]
	bl ov1_02127300
	mov r7, #0
	str r7, [sb, #0x48]
	ldr r1, [sb, #0x24]
	mov r0, #0x18000
	str r1, [sb, #0x38]
	ldr r1, [sb, #0x28]
	ldr r6, _0212F9C8 ; =MAIN_BSS_020BAE7B
	str r1, [sb, #0x3c]
	str r0, [sb, #0x40]
	sub r5, sp, #4
	add r4, sb, #0x38
	mov fp, r7
_0212F84C:
	ldr r1, [r8, r7, lsl #2]
	cmp r1, #0
	beq _0212F988
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0212F988
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0212F988
	add r0, r1, #0x2f8
	add r0, r0, #0x400
	str fp, [sp, #8]
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldr r3, [r5]
	ldmia r4, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _0212F988
	ldrb r2, [r6]
	ldrb r3, [sb, #0x21]
	ldr r0, [sb, #0x10]
	mov r1, #0xe
	bl ov1_0212F32C
	mov sl, r0
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [r8, r7, lsl #2]
	ldr r1, [r1, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	bl ov1_0212EE80
	mov r1, sl, lsl #0xc
	mov sl, r0
	smull r1, r0, sl, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [r8, r7, lsl #2]
	mov r2, #1
	bl ov1_02126310
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldrb r1, [sb, #0x21]
	bl ov1_0212EE98
	mov r2, r0
	ldr r0, [r8, r7, lsl #2]
	mov r1, #2
	bl ov1_021263A4
	cmp sl, #0x1000
	bne _0212F95C
	ldr r0, [r8, r7, lsl #2]
	mov r1, #0
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _0212F988
_0212F95C:
	ble _0212F974
	ldr r0, [r8, r7, lsl #2]
	mov r1, #1
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _0212F988
_0212F974:
	bge _0212F988
	ldr r0, [r8, r7, lsl #2]
	mov r1, #2
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
_0212F988:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #8
	blo _0212F84C
	ldr r0, [sb, #0x44]
	mov r1, #0x8000
	bl sub_0200D9A8
	mov r0, #3
	str r0, [sb, #0x18]
_0212F9AC:
	ldrh r0, [sb, #0x1e]
	add r0, r0, #1
	strh r0, [sb, #0x1e]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212F9C0: .word 0x0000013E
_0212F9C4: .word 0x0000013F
_0212F9C8: .word MAIN_BSS_020BAE7B

	arm_func_start ov1_0212F9CC
ov1_0212F9CC: ; 0x0212F9CC
	mov r0, #0xe
	bx lr
	arm_func_end ov1_0212F9CC

	arm_func_start ov1_0212F9D4
ov1_0212F9D4: ; 0x0212F9D4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r1, [r4, #0x20]
	str r1, [sp]
	ldrb r3, [r4, #0x21]
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x28]
	bl ov1_0212FA80
	cmp r0, #1
	bne _0212FA10
	ldr r0, [r4, #0x44]
	bl sub_0200D980
	mov r0, #0
	str r0, [r4, #0x18]
	arm_func_end ov1_0212F9D4
_0212FA10:
	ldrb r0, [r4, #0x20]
	add r0, r0, #1
	strb r0, [r4, #0x20]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov1_0212FA24
ov1_0212FA24: ; 0x0212FA24
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _0212FA4C
	ldr r0, [r4, #0x48]
	bl ov1_02127300
	mov r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x18]
	arm_func_end ov1_0212FA24
_0212FA4C:
	ldr r0, [r4, #0x14]
	ldr r1, _0212FA74 ; =0x0000013D
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _0212FA78 ; =0x0000013E
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _0212FA7C ; =0x0000013F
	bl sub_02034C5C
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212FA74: .word 0x0000013D
_0212FA78: .word 0x0000013E
_0212FA7C: .word 0x0000013F

	arm_func_start ov1_0212FA80
ov1_0212FA80: ; 0x0212FA80
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r3, #0
	mov r4, #0
	beq _0212FAA8
	cmp r3, #1
	beq _0212FACC
	cmp r3, #2
	beq _0212FB24
	b _0212FBC8
	arm_func_end ov1_0212FA80
_0212FAA8:
	ldrb r3, [sp, #0x10]
	cmp r3, #1
	beq _0212FAC0
	cmp r3, #8
	moveq r4, #1
	b _0212FBC8
_0212FAC0:
	bl ov1_0212FBD0
	str r0, [r5, #0x50]
	b _0212FBC8
_0212FACC:
	ldrb r3, [sp, #0x10]
	cmp r3, #1
	beq _0212FAEC
	cmp r3, #8
	beq _0212FAF8
	cmp r3, #0x10
	beq _0212FB0C
	b _0212FBC8
_0212FAEC:
	bl ov1_0212FBD0
	str r0, [r5, #0x50]
	b _0212FBC8
_0212FAF8:
	sub r1, r1, #0x18000
	add r2, r2, #0xc000
	bl ov1_0212FBD0
	str r0, [r5, #0x54]
	b _0212FBC8
_0212FB0C:
	add r1, r1, #0x10000
	sub r2, r2, #0x12000
	bl ov1_0212FBD0
	str r0, [r5, #0x58]
	mov r4, #1
	b _0212FBC8
_0212FB24:
	ldrb r3, [sp, #0x10]
	cmp r3, #0x10
	bgt _0212FB50
	bge _0212FB8C
	cmp r3, #1
	bgt _0212FB44
	beq _0212FB6C
	b _0212FBC8
_0212FB44:
	cmp r3, #8
	beq _0212FB78
	b _0212FBC8
_0212FB50:
	cmp r3, #0x18
	bgt _0212FB60
	beq _0212FBA0
	b _0212FBC8
_0212FB60:
	cmp r3, #0x20
	beq _0212FBB4
	b _0212FBC8
_0212FB6C:
	bl ov1_0212FBD0
	str r0, [r5, #0x50]
	b _0212FBC8
_0212FB78:
	sub r1, r1, #0x18000
	add r2, r2, #0xc000
	bl ov1_0212FBD0
	str r0, [r5, #0x54]
	b _0212FBC8
_0212FB8C:
	add r1, r1, #0x10000
	sub r2, r2, #0x12000
	bl ov1_0212FBD0
	str r0, [r5, #0x58]
	b _0212FBC8
_0212FBA0:
	sub r1, r1, #0xc000
	sub r2, r2, #0x10000
	bl ov1_0212FBD0
	str r0, [r5, #0x5c]
	b _0212FBC8
_0212FBB4:
	add r1, r1, #0x1c000
	add r2, r2, #0x16000
	bl ov1_0212FBD0
	str r0, [r5, #0x60]
	mov r4, #1
_0212FBC8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0212FBD0
ov1_0212FBD0: ; 0x0212FBD0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl ov1_0212EE3C
	movs r4, r0
	beq _0212FC20
	ldr r1, [r7, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	mov r0, r4
	mov r1, #0x20
	mov r2, #2
	bl ov1_02127454
	mov r1, r6
	add r0, r4, #0xc
	bl sub_02011D1C
	mov r1, r5
	add r0, r4, #0xc
	bl sub_02011D2C
	arm_func_end ov1_0212FBD0
_0212FC20:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_0212FC28
ov1_0212FC28: ; 0x0212FC28
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _0212FC54 ; =PTR_LAB_overlay_1_0212fc58_overlay_1_021414bc
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0212FC54: .word PTR_LAB_overlay_1_0212fc58_overlay_1_021414bc
	arm_func_end ov1_0212FC28

	arm_func_start ov1_0212FC58
ov1_0212FC58: ; 0x0212FC58
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212FC58

	arm_func_start ov1_0212FC6C
ov1_0212FC6C: ; 0x0212FC6C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0212FC6C

	arm_func_start ov1_0212FC88
ov1_0212FC88: ; 0x0212FC88
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov sb, r0
	ldrh r0, [sb, #4]
	mov r8, r3
	cmp r0, #0
	addeq sp, sp, #0x28
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r0, r0, #1
	strh r0, [sb, #4]
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0212FDA0
	ldrh r0, [r1, #0xc]
	ldrh r2, [r1, #0xa]
	mov r7, #0
	sub r0, r0, #0x60
	sub r1, r2, #0x80
	mov r1, r1, lsl #0xc
	mov r0, r0, lsl #0xc
	mov sl, r7
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	sub r5, sp, #8
	mov fp, r7
	mov r6, #1
	add r4, sp, #0x14
	arm_func_end ov1_0212FC88
_0212FCF8:
	ldr r1, [r8, sl, lsl #2]
	cmp r1, #0
	beq _0212FD5C
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, r6
	moveq r0, fp
	cmp r0, #0
	beq _0212FD5C
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0212FD5C
	add r0, r1, #0x2f8
	add r0, r0, #0x400
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldmia r5, {r2, r3}
	ldmia r4, {r0, r1}
	bl sub_02006100
	cmp r0, #0
	movne r7, #1
_0212FD5C:
	add r0, sl, #1
	and sl, r0, #0xff
	cmp sl, #8
	blo _0212FCF8
	cmp r7, #0
	bne _0212FDA0
	mov r0, sb
	bl ov1_02130038
	movs r1, r0
	beq _0212FDA0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	mov r0, sb
	bl ov1_02130074
	ldr r0, [sb, #0x14]
	ldr r1, _0212FFE4 ; =0x00000131
	bl sub_02034C44
_0212FDA0:
	ldrb r0, [sb, #0x18]
	ldr r6, _0212FFE8 ; =MAIN_BSS_020BAE7B
	tst r0, #1
	beq _0212FFD8
	ldrh r0, [sb, #0x1a]
	add r0, r0, #1
	strh r0, [sb, #0x1a]
	ldrh r0, [sb, #0x1a]
	cmp r0, #0x3c
	beq _0212FDE4
	cmp r0, #0x46
	beq _0212FE18
	cmp r0, #0x5e
	ldreqb r0, [sb, #0x18]
	biceq r0, r0, #1
	streqb r0, [sb, #0x18]
	b _0212FFD8
_0212FDE4:
	ldr r0, [sb, #0x1c]
	mov r1, #0x20
	mov r2, #0
	bl ov1_02127454
	ldr r0, [sb, #0x1c]
	ldr r1, [r0, #0x24]
	add r0, r0, #0xc
	sub r1, r1, #0x60000
	bl sub_02011D2C
	ldr r0, [sb, #0x14]
	ldr r1, _0212FFEC ; =0x00000132
	bl sub_02034C44
	b _0212FFD8
_0212FE18:
	ldr r0, [sb, #0x1c]
	mov r1, #0x20
	mov r2, #2
	bl ov1_02127454
	ldr r0, [sb, #0x1c]
	ldr r1, [r0, #0x24]
	add r0, r0, #0xc
	add r1, r1, #0x60000
	bl sub_02011D2C
	ldr r0, [sb, #0x14]
	ldr r1, _0212FFF0 ; =0x00000133
	bl sub_02034C44
	ldr r1, [sb, #0x1c]
	mov r0, #0x20000
	ldr r2, [r1, #0x20]
	ldr r1, [r1, #0x24]
	mov r7, #0
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	sub r4, sp, #4
	mov r5, r7
	add fp, sp, #0x1c
_0212FE7C:
	ldr r1, [r8, r7, lsl #2]
	cmp r1, #0
	beq _0212FFC8
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0212FFC8
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0212FFC8
	add r0, r1, #0x2f8
	add r0, r0, #0x400
	str r5, [sp, #8]
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r3, [r4]
	ldmia fp, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _0212FFC8
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r1, r0
	ldrb r2, [r6]
	ldr r0, [sb, #0x10]
	mov r3, #0
	bl ov1_0212F32C
	mov sl, r0
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [r8, r7, lsl #2]
	ldr r1, [r1, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	bl ov1_0212EE80
	mov r1, sl, lsl #0xc
	mov sl, r0
	smull r1, r0, sl, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [r8, r7, lsl #2]
	mov r2, #1
	bl ov1_02126310
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r1, #0
	bl ov1_0212EE98
	mov r2, r0
	ldr r0, [r8, r7, lsl #2]
	mov r1, #4
	bl ov1_021263A4
	cmp sl, #0x1000
	bne _0212FF9C
	ldr r0, [r8, r7, lsl #2]
	mov r1, #0
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _0212FFC8
_0212FF9C:
	ble _0212FFB4
	ldr r0, [r8, r7, lsl #2]
	mov r1, #1
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _0212FFC8
_0212FFB4:
	bge _0212FFC8
	ldr r0, [r8, r7, lsl #2]
	mov r1, #2
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
_0212FFC8:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #8
	blo _0212FE7C
_0212FFD8:
	mov r0, #1
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0212FFE4: .word 0x00000131
_0212FFE8: .word MAIN_BSS_020BAE7B
_0212FFEC: .word 0x00000132
_0212FFF0: .word 0x00000133

	arm_func_start ov1_0212FFF4
ov1_0212FFF4: ; 0x0212FFF4
	mov r0, #3
	bx lr
	arm_func_end ov1_0212FFF4

	arm_func_start ov1_0212FFFC
ov1_0212FFFC: ; 0x0212FFFC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, _0213002C ; =0x00000131
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02130030 ; =0x00000132
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02130034 ; =0x00000133
	bl sub_02034C5C
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213002C: .word 0x00000131
_02130030: .word 0x00000132
_02130034: .word 0x00000133
	arm_func_end ov1_0212FFFC

	arm_func_start ov1_02130038
ov1_02130038: ; 0x02130038
	mov ip, #0
	mov r1, #0xc
	arm_func_end ov1_02130038
_02130040:
	mul r3, ip, r1
	add r2, r0, r3
	ldrb r2, [r2, #0x18]
	tst r2, #1
	addeq r0, r0, #0x18
	addeq r0, r0, r3
	bxeq lr
	add r2, ip, #1
	and ip, r2, #0xff
	cmp ip, #1
	blo _02130040
	mov r0, #0
	bx lr

	arm_func_start ov1_02130074
ov1_02130074: ; 0x02130074
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r0
	ldr r0, [r4, #4]
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	beq _02130098
	bl ov1_02127300
	arm_func_end ov1_02130074
_02130098:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021300A8
	bl ov1_02127300
_021300A8:
	mov r0, r7
	bl ov1_0212EE3C
	str r0, [r4, #4]
	cmp r0, #0
	ldreqb r0, [r4]
	biceq r0, r0, #1
	streqb r0, [r4]
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r7, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	ldr r0, [r4, #4]
	mov r1, #0x20
	mov r2, #3
	bl ov1_02127454
	ldr r0, [r4, #4]
	mov r1, r6
	add r0, r0, #0xc
	bl sub_02011D1C
	ldr r0, [r4, #4]
	mov r1, r5
	add r0, r0, #0xc
	bl sub_02011D2C
	mov r0, #0
	strh r0, [r4, #2]
	ldrb r0, [r4]
	orr r0, r0, #1
	strb r0, [r4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_0213011C
ov1_0213011C: ; 0x0213011C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _02130148 ; =PTR_LAB_overlay_1_0213014c_overlay_1_021414fc
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02130148: .word PTR_LAB_overlay_1_0213014c_overlay_1_021414fc
	arm_func_end ov1_0213011C

	arm_func_start ov1_0213014C
ov1_0213014C: ; 0x0213014C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213014C

	arm_func_start ov1_02130160
ov1_02130160: ; 0x02130160
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02130160

	arm_func_start ov1_0213017C
ov1_0213017C: ; 0x0213017C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov sl, r0
	ldrh r4, [sl, #4]
	mov fp, r1
	mov sb, r2
	cmp r4, #0
	mov r8, r3
	addeq sp, sp, #0x28
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r2, r4, #1
	mov r1, r8
	strh r2, [sl, #4]
	bl ov1_021304F0
	ldrh r2, [fp, #0xa]
	ldrh r1, [fp, #0xc]
	ldrb r0, [fp, #4]
	sub r2, r2, #0x80
	sub r1, r1, #0x60
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	cmp r0, #0
	beq _02130278
	mov r7, #0
	sub r6, sp, #4
	add r5, sp, #0x10
	mov r4, #0x14
	arm_func_end ov1_0213017C
_021301F4:
	add r0, sl, r7, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02130268
	ldr r0, [r0, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02130268
	mla r0, r7, r4, sl
	add r0, r0, #0x3c
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldr r3, [r6]
	mov r0, sl
	ldmia r5, {r1, r2}
	bl ov1_021309F4
	cmp r0, #0
	beq _02130268
	ldr r1, [sp, #0x10]
	strb r7, [sl, #0x19]
	ldr r0, [sp, #0x14]
	str r1, [sl, #0x20]
	str r0, [sl, #0x24]
	ldrb r0, [sl, #0x18]
	orr r0, r0, #2
	strb r0, [sl, #0x18]
	b _02130278
_02130268:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #4
	blo _021301F4
_02130278:
	ldrb r0, [fp, #5]
	cmp r0, #0
	beq _02130428
	ldrb r0, [sl, #0x18]
	tst r0, #2
	bne _021303F8
	mov r0, sb
	bl ov1_0212C4CC
	cmp r0, #0
	beq _021303F8
	mov r6, #0
	mov r4, r6
	mov r5, #1
_021302AC:
	ldr r2, [r8, r6, lsl #2]
	cmp r2, #0
	beq _021302F4
	add r0, r2, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, r5
	moveq r0, r4
	cmp r0, #0
	beq _021302F4
	ldr r1, [r2, #0x20]
	ldr r0, [sb, #0x1b8]
	ldr r2, [r2, #0x24]
	bl ov1_02124650
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021302F4:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #8
	blo _021302AC
	ldr r0, [sb, #0x1b8]
	add r4, sp, #0x18
	add r0, r0, #0x3ec
	add r0, r0, #0x6000
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, [sp, #0x20]
	cmp r0, #0x20000
	ldrge r0, [sp, #0x24]
	cmpge r0, #0x20000
	blt _021303F8
	mov r2, #0
	add r1, sp, #0xc
	mov r0, sl
	strb r2, [sp, #0xc]
	bl ov1_0213071C
	cmp r0, #0
	beq _021303F8
	ldrb r0, [sp, #0xc]
	mov r1, #0x14
	add r4, sl, #0x3c
	strb r0, [sl, #0x19]
	ldrb r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	mov r3, #0x30000
	smulbb r6, r0, r1
	str r2, [r4, r6]
	ldr r1, [sp, #0x1c]
	add r5, r4, r6
	str r1, [r5, #4]
	ldr r1, [sp, #0x20]
	add r2, sl, r6
	str r1, [r5, #8]
	ldr r4, [sp, #0x24]
	mov r1, #0x20000
	str r4, [r5, #0xc]
	str r3, [r2, #0x44]
	str r1, [r2, #0x48]
	add r0, sl, r0, lsl #2
	ldr r4, [r0, #0x28]
	ldr r1, [sp, #0x18]
	add r0, r4, #0xc
	bl sub_02011D1C
	ldr r1, [sp, #0x1c]
	add r0, r4, #0xc
	bl sub_02011D2C
	ldrb r0, [sp, #0xc]
	mov r1, #0
	add r0, sl, r0, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_02127388
	ldrb r0, [sp, #0xc]
	mov r1, #0
	mov r2, #0x1000
	add r0, sl, r0, lsl #2
	ldr r0, [r0, #0x28]
	mov r3, r2
	bl sub_02012A3C
	ldr r0, [sl, #0x14]
	ldr r1, _021304EC ; =0x00000127
	bl sub_02034C44
_021303F8:
	ldrh r0, [sl, #0x1c]
	cmp r0, #0xa
	bne _02130420
	mov r0, #0
	ldr r1, [sp, #0x10]
	strh r0, [sl, #0x1c]
	ldr r0, [sp, #0x14]
	str r1, [sl, #0x20]
	str r0, [sl, #0x24]
	b _02130428
_02130420:
	addlo r0, r0, #1
	strloh r0, [sl, #0x1c]
_02130428:
	ldrb r0, [fp, #6]
	cmp r0, #0
	beq _021304E0
	ldrb r0, [sl, #0x18]
	tst r0, #2
	beq _021304D4
	ldrb r0, [sl, #0x19]
	add r0, sl, r0, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021304D4
	ldr r0, [r0, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _021304D4
	ldr r3, [sp, #0x14]
	ldr r0, [sl, #0x24]
	ldr r2, [sp, #0x10]
	ldr r1, [sl, #0x20]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	ldrb r3, [sl, #0x19]
	mov r1, r0
	mov r2, #0x1000
	add r0, sl, r3, lsl #2
	ldr r0, [r0, #0x28]
	add r0, r0, #0xc
	bl sub_02011C90
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r1, [sl, #0x20]
	str r0, [sl, #0x24]
	ldrb r1, [sl, #0x19]
	mov r0, #0x14
	mov r2, #1
	mla r0, r1, r0, sl
	strb r2, [r0, #0x38]
	ldr r0, [sl, #0x14]
	mov r1, #0x128
	bl sub_02034C44
_021304D4:
	ldrb r0, [sl, #0x18]
	bic r0, r0, #2
	strb r0, [sl, #0x18]
_021304E0:
	mov r0, #1
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021304EC: .word 0x00000127

	arm_func_start ov1_021304F0
ov1_021304F0: ; 0x021304F0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r8, #0
	mov r5, #0x14
	mov sl, r0
	mov sb, r1
	mov fp, #1
	mov r7, r8
	mov r6, #2
	mov r4, r5
	arm_func_end ov1_021304F0
_02130518:
	add r0, sl, r8, lsl #2
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _02130610
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, fp
	moveq r0, #0
	cmp r0, #0
	beq _02130610
	ldrh r0, [r1, #4]
	tst r0, #0x100
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _021305A0
	mov r0, sl
	mov r2, sb
	bl ov1_021307E8
	cmp r0, #0
	beq _021305A0
	add r2, sl, r8, lsl #2
	ldr r0, [r2, #0x28]
	mov r1, #0x20
	str r7, [r0, #0xc]
	ldr r0, [r2, #0x28]
	mov r2, #2
	bl ov1_02127454
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	mov r1, #0
	bl ov1_02127388
	mla r0, r8, r5, sl
	strb r6, [r0, #0x39]
_021305A0:
	mov r0, sl
	mov r1, r8
	bl ov1_02130628
	add r0, sl, r8, lsl #2
	ldr r1, [r0, #0x28]
	mla r0, r8, r4, sl
	ldr r2, [r1, #0x20]
	ldr r1, [r1, #0x24]
	str r2, [sp]
	str r1, [sp, #4]
	ldr ip, [r0, #0x44]
	mov r3, ip, asr #0x1f
	mov r3, r3, lsl #0xb
	orr r3, r3, ip, lsr #21
	mov ip, ip, lsl #0xb
	mov ip, ip, lsr #0xc
	orr ip, ip, r3, lsl #20
	sub r2, r2, ip
	str r2, [r0, #0x3c]
	ldr r3, [r0, #0x48]
	mov r2, r3, asr #0x1f
	mov r2, r2, lsl #0xb
	orr r2, r2, r3, lsr #21
	mov r3, r3, lsl #0xb
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r1, r1, r3
	str r1, [r0, #0x40]
_02130610:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #4
	blo _02130518
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_02130628
ov1_02130628: ; 0x02130628
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_0212747C
	cmp r0, #0
	bne _02130688
	mov r0, #0x14
	mul r1, r4, r0
	add r3, r5, #0x39
	ldrb r0, [r3, r1]
	cmp r0, #0
	bne _02130688
	mov r2, #1
	strb r2, [r3, r1]
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x28]
	mov r1, #0x20
	bl ov1_02127454
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x28]
	mov r1, #1
	bl ov1_02127388
	arm_func_end ov1_02130628
_02130688:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_0212747C
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #0x14
	mla r0, r4, r0, r5
	ldrb r0, [r0, #0x39]
	cmp r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_02127300
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_021306C0
ov1_021306C0: ; 0x021306C0
	stmdb sp!, {r3, lr}
	mov lr, #0
	mov r3, lr
	mov ip, #1
	arm_func_end ov1_021306C0
_021306D0:
	add r2, r0, lr, lsl #2
	ldr r2, [r2, #0x28]
	cmp r2, #0
	beq _021306F8
	ldr r2, [r2, #0x104]
	cmp r2, #0
	movne r2, ip
	moveq r2, r3
	cmp r2, #0
	bne _02130704
_021306F8:
	strb lr, [r1]
	mov r0, #1
	ldmia sp!, {r3, pc}
_02130704:
	add r2, lr, #1
	and lr, r2, #0xff
	cmp lr, #4
	blo _021306D0
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov1_0213071C
ov1_0213071C: ; 0x0213071C
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r2, #0
	add r1, sp, #0
	mov r6, r0
	strb r2, [sp]
	bl ov1_021306C0
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	bl ov1_0212EE3C
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldrb r3, [sp]
	mov r1, #0x14
	mov ip, #0
	mla r2, r3, r1, r6
	strb ip, [r2, #0x38]
	ldrb r3, [sp]
	mla r2, r3, r1, r6
	strb ip, [r2, #0x39]
	ldrb r2, [sp]
	mla r1, r2, r1, r6
	strh ip, [r1, #0x3a]
	ldr r1, [r6, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	mov r0, r4
	mov r1, #0x20
	mov r2, #0
	bl ov1_02127454
	mov r0, r4
	mov r1, #1
	bl ov1_02127388
	mov r0, r4
	mov r1, #0
	mov r2, r1
	mov r3, r1
	bl sub_02012A3C
	ldrb r2, [sp]
	mov r0, #1
	add r1, r6, r2, lsl #2
	str r4, [r1, #0x28]
	strb r2, [r5]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov1_0213071C

	arm_func_start ov1_021307E8
ov1_021307E8: ; 0x021307E8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov sb, r1
	add r3, sp, #0x10
	add r1, sb, #0x430
	mov sl, r0
	mov r8, r2
	ldmia r1, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, #0
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r7, r0
	ldr r0, _021309E4 ; =0x00000147
	str r3, [sp, #0x1c]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	sub r6, sp, #4
	sub fp, r0, #1
	sub r4, r0, #0x1e
	arm_func_end ov1_021307E8
_02130840:
	ldr r1, [r8, r7, lsl #2]
	cmp r1, #0
	beq _021309CC
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _021309CC
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _021309CC
	add r0, r1, #0x2f8
	add r1, r0, #0x400
	mov r0, #0
	str r0, [sp, #8]
	ldmia r1, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	add r0, sp, #0x1c
	ldr r3, [r6]
	ldmia r0, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _021309CC
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [r8, r7, lsl #2]
	ldr r1, [r1, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	bl ov1_0212EE80
	mov r5, r0
	ldr r0, [sb, #0x54]
	cmp r0, #0
	beq _021309CC
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r2, _021309E8 ; =MAIN_BSS_020BAE7B
	mov r1, r0
	ldrb r2, [r2]
	ldr r0, [sl, #0x10]
	mov r3, #0
	bl ov1_0212F32C
	mov r0, r0, lsl #0xc
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [r8, r7, lsl #2]
	mov r2, #1
	bl ov1_02126310
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r1, #0
	bl ov1_0212EE98
	mov r2, r0
	ldr r0, [r8, r7, lsl #2]
	mov r1, #4
	bl ov1_021263A4
	cmp r5, #0x1000
	bne _02130980
	ldr r0, [sl, #0x14]
	mov r1, r4
	bl sub_02034C44
	ldr r0, [r8, r7, lsl #2]
	mov r1, #0
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _021309C4
_02130980:
	ble _021309A4
	ldr r0, [sl, #0x14]
	mov r1, fp
	bl sub_02034C44
	ldr r0, [r8, r7, lsl #2]
	mov r1, #1
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _021309C4
_021309A4:
	bge _021309C4
	ldr r0, [sl, #0x14]
	ldr r1, _021309E4 ; =0x00000147
	bl sub_02034C44
	ldr r0, [r8, r7, lsl #2]
	mov r1, #2
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
_021309C4:
	mov r0, #1
	str r0, [sp, #0xc]
_021309CC:
	add r7, r7, #1
	cmp r7, #8
	blt _02130840
	ldr r0, [sp, #0xc]
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021309E4: .word 0x00000147
_021309E8: .word MAIN_BSS_020BAE7B

	arm_func_start ov1_021309EC
ov1_021309EC: ; 0x021309EC
	mov r0, #0xa
	bx lr
	arm_func_end ov1_021309EC

	arm_func_start ov1_021309F4
ov1_021309F4: ; 0x021309F4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	ldr lr, [sp, #0x1c]
	cmp r0, r1
	ldr ip, [sp, #0x10]
	ldr r3, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bgt _02130A48
	add r0, r0, lr
	cmp r0, r1
	blt _02130A48
	cmp r3, ip
	bgt _02130A48
	add r0, r3, r2
	cmp r0, ip
	movge r0, #1
	ldmgeia sp!, {r3, lr}
	addge sp, sp, #0x10
	bxge lr
	arm_func_end ov1_021309F4
_02130A48:
	mov r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start ov1_02130A58
ov1_02130A58: ; 0x02130A58
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, _02130AA0 ; =0x00000127
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	mov r1, #0x128
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02130AA4 ; =0x00000129
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02130AA8 ; =0x00000146
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02130AAC ; =0x00000147
	bl sub_02034C5C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02130AA0: .word 0x00000127
_02130AA4: .word 0x00000129
_02130AA8: .word 0x00000146
_02130AAC: .word 0x00000147
	arm_func_end ov1_02130A58

	arm_func_start ov1_02130AB0
ov1_02130AB0: ; 0x02130AB0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _02130ADC ; =PTR_LAB_overlay_1_02130ae0_overlay_1_02141538
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02130ADC: .word PTR_LAB_overlay_1_02130ae0_overlay_1_02141538
	arm_func_end ov1_02130AB0

	arm_func_start ov1_02130AE0
ov1_02130AE0: ; 0x02130AE0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02130AE0

	arm_func_start ov1_02130AF4
ov1_02130AF4: ; 0x02130AF4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02130AF4

	arm_func_start ov1_02130B10
ov1_02130B10: ; 0x02130B10
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, [r0]
	mov r5, r0
	ldr r1, [r1, #0x10]
	mov r4, r2
	blx r1
	ldr r2, _02130B64 ; =MAIN_BSS_020BA6A0
	mov r1, r0
	ldrb r2, [r2, #0x7db]
	ldr r0, [r5, #0x10]
	mov r3, #0
	bl ov1_0212F32C
	add r1, r4, #0x100
	strh r0, [r1, #0x9e]
	ldrh r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	strneh r0, [r5, #4]
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02130B64: .word MAIN_BSS_020BA6A0
	arm_func_end ov1_02130B10

	arm_func_start ov1_02130B68
ov1_02130B68: ; 0x02130B68
	mov r0, #0xf
	bx lr
	arm_func_end ov1_02130B68

	arm_func_start ov1_02130B70
ov1_02130B70: ; 0x02130B70
	bx lr
	arm_func_end ov1_02130B70

	arm_func_start ov1_02130B74
ov1_02130B74: ; 0x02130B74
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _02130BA0 ; =PTR_LAB_overlay_1_02130ba4_overlay_1_02141574
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02130BA0: .word PTR_LAB_overlay_1_02130ba4_overlay_1_02141574
	arm_func_end ov1_02130B74

	arm_func_start ov1_02130BA4
ov1_02130BA4: ; 0x02130BA4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02130BA4

	arm_func_start ov1_02130BB8
ov1_02130BB8: ; 0x02130BB8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02130BB8

	arm_func_start ov1_02130BD4
ov1_02130BD4: ; 0x02130BD4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	ldr r1, [r0]
	mov sl, r0
	ldr r1, [r1, #0x10]
	mov sb, r2
	mov r8, r3
	blx r1
	ldr r2, _02130E20 ; =MAIN_BSS_020BA6A0
	mov r1, r0
	ldrb r2, [r2, #0x7db]
	ldr r0, [sl, #0x10]
	mov r3, #0
	bl ov1_0212F32C
	add r1, sb, #0x100
	mov r6, #0
	strh r0, [r1, #0x9e]
	mov r4, r6
	mov r5, #1
	arm_func_end ov1_02130BD4
_02130C20:
	ldr r0, [sl, #8]
	ldr r0, [r0, r6, lsl #2]
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, r5
	moveq r1, r4
	cmp r1, #0
	beq _02130C58
	bl ov1_0212747C
	cmp r0, #0
	bne _02130C58
	ldr r0, [sl, #8]
	ldr r0, [r0, r6, lsl #2]
	bl ov1_02127300
_02130C58:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x20
	blo _02130C20
	mov r0, sb
	mov r6, #0
	bl ov1_0212C5C0
	cmp r0, #0
	beq _02130E00
	mov r0, sb
	bl ov1_0212C4CC
	cmp r0, #0
	beq _02130E00
	mov r7, r6
	add fp, sp, #0x10
	add r5, sp, #0x18
_02130C98:
	ldr r1, [r8, r7, lsl #2]
	cmp r1, #0
	beq _02130DDC
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02130DDC
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02130DDC
	add r0, r1, #0x2f8
	add r0, r0, #0x400
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x20]
	ldr r0, [sb, #0x1b8]
	str r3, [sp, #0x2c]
	bl ov1_02124650
	cmp r0, #0
	beq _02130DDC
	mov r0, sl
	bl ov1_0212EE3C
	movs r4, r0
	beq _02130DEC
	ldr r1, [sl, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	mov r0, r4
	mov r1, #0x20
	mov r2, #0
	bl ov1_02127454
	ldr r2, [r8, r7, lsl #2]
	mov r0, r4
	ldr r2, [r2, #0x184]
	mov r1, #7
	ldr r2, [r2, #0x1c]
	ldrb r2, [r2, #0xe]
	bl ov1_021273A0
	ldr r2, [r8, r7, lsl #2]
	add r0, r4, #0xc
	ldr r4, [r2, #0x484]
	ldr r1, [r2, #0x20]
	ldr r3, [r2, #0x488]
	add r1, r1, r4
	str r4, [sp]
	ldr r6, [r2, #0x24]
	str r1, [sp, #0x10]
	add r1, r6, r3
	str r3, [sp, #4]
	ldr r4, [r2, #0xb0]
	ldr r3, [r2, #0x8c]
	ldr r2, [r2, #0xa0]
	add r2, r3, r2
	add r2, r4, r2
	sub r1, r1, r2
	str r1, [sp, #0x14]
	ldmia fp, {r1, r2}
	bl sub_02011D3C
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r1, #0
	bl ov1_0212EE98
	mov r2, r0
	ldr r0, [r8, r7, lsl #2]
	mov r1, #2
	bl ov1_021263A4
	mov r6, #1
_02130DDC:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #8
	blo _02130C98
_02130DEC:
	cmp r6, #0
	beq _02130E00
	ldr r0, [sl, #0x14]
	ldr r1, _02130E24 ; =0x0000012E
	bl sub_02034C44
_02130E00:
	ldrh r0, [sl, #4]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	strneh r0, [sl, #4]
	movne r0, #1
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02130E20: .word MAIN_BSS_020BA6A0
_02130E24: .word 0x0000012E

	arm_func_start ov1_02130E28
ov1_02130E28: ; 0x02130E28
	mov r0, #1
	bx lr
	arm_func_end ov1_02130E28

	arm_func_start ov1_02130E30
ov1_02130E30: ; 0x02130E30
	ldr ip, _02130E40 ; =FUN_02034C5C
	ldr r0, [r0, #0x14]
	ldr r1, _02130E44 ; =0x0000012E
	bx ip
	.align 2, 0
_02130E40: .word sub_02034C5C
_02130E44: .word 0x0000012E
	arm_func_end ov1_02130E30

	arm_func_start ov1_02130E48
ov1_02130E48: ; 0x02130E48
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r0, _02130E80 ; =PTR_LAB_overlay_1_02130e84_overlay_1_021415b0
	mov r1, #0
	str r0, [r4]
	str r1, [r4, #0x28]
	mov r0, r4
	strb r1, [r4, #0x24]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02130E80: .word PTR_LAB_overlay_1_02130e84_overlay_1_021415b0
	arm_func_end ov1_02130E48

	arm_func_start ov1_02130E84
ov1_02130E84: ; 0x02130E84
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02130E84

	arm_func_start ov1_02130E98
ov1_02130E98: ; 0x02130E98
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02130E98

	arm_func_start ov1_02130EB4
ov1_02130EB4: ; 0x02130EB4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	mov r6, #0
	mov r8, r0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r7, r3
	mov r4, r6
	mov r5, #1
	arm_func_end ov1_02130EB4
_02130ED8:
	ldr r1, [r8, #0x28]
	cmp r1, #0
	beq _02130EF4
	ldr r0, [r8, #8]
	ldr r0, [r0, r6, lsl #2]
	cmp r0, r1
	beq _02130F38
_02130EF4:
	ldr r0, [r8, #8]
	ldr r3, [r0, r6, lsl #2]
	ldr r0, [r3, #0x104]
	cmp r0, #0
	movne r0, r5
	moveq r0, r4
	cmp r0, #0
	beq _02130F38
	ldrh r1, [r3, #0x50]
	ldr r2, [r3, #0x54]
	add r0, r3, #0xc
	add r1, r1, #0x200
	mov r1, r1, lsl #0x10
	add r2, r2, #0x33
	mov r1, r1, lsr #0x10
	add r2, r2, #0x300
	bl sub_02011C90
_02130F38:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x20
	blo _02130ED8
	ldr r0, [r8, #0x28]
	cmp r0, #0
	beq _02130F6C
	ldrb r1, [r0, #0x108]
	cmp r1, #0
	bne _02130F6C
	bl ov1_02127300
	mov r0, #0
	str r0, [r8, #0x28]
_02130F6C:
	ldr fp, _021311D4 ; =MAIN_BSS_020BAE7B
	mov r5, #0
_02130F74:
	ldr r1, [r7, r5, lsl #2]
	cmp r1, #0
	beq _02131160
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02131160
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02131160
	add r0, r1, #0x2f8
	add r0, r0, #0x400
	add r3, sp, #0x14
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x28]
	ldr r0, _021311D8 ; =0x0000014D
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	mov r6, #0
	sub r4, sp, #4
	sub sb, r0, #0x16
_02130FF0:
	ldr r0, [r8, #8]
	ldr r1, [r0, r6, lsl #2]
	ldr r2, [r1, #0x104]
	cmp r2, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02131150
	ldr r0, [r8, #0x28]
	cmp r0, #0
	beq _02131024
	cmp r1, r0
	beq _02131150
_02131024:
	cmp r2, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02131150
	mov r0, #0
	add r1, r1, #0x430
	str r0, [sp, #8]
	ldmia r1, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add r0, sp, #0x20
	ldr r3, [r4]
	ldmia r0, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _02131150
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r1, r0
	ldrb r2, [fp]
	ldr r0, [r8, #0x10]
	mov r3, #0
	bl ov1_0212F32C
	mov sl, r0
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [r7, r5, lsl #2]
	ldr r1, [r1, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	bl ov1_0212EE80
	mov r1, sl, lsl #0xc
	mov sl, r0
	smull r1, r0, sl, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [r7, r5, lsl #2]
	mov r2, #1
	bl ov1_02126310
	cmp sl, #0x1000
	bne _02131100
	ldr r0, [r8, #0x14]
	mov r1, sb
	bl sub_02034C44
	ldr r0, [r7, r5, lsl #2]
	mov r1, #0
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _02131144
_02131100:
	ble _02131124
	ldr r0, [r8, #0x14]
	mov r1, #0x14c
	bl sub_02034C44
	ldr r0, [r7, r5, lsl #2]
	mov r1, #1
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _02131144
_02131124:
	bge _02131144
	ldr r0, [r8, #0x14]
	ldr r1, _021311D8 ; =0x0000014D
	bl sub_02034C44
	ldr r0, [r7, r5, lsl #2]
	mov r1, #2
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
_02131144:
	ldr r0, [r8, #8]
	ldr r0, [r0, r6, lsl #2]
	bl ov1_02127300
_02131150:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x20
	blo _02130FF0
_02131160:
	add r0, r5, #1
	and r5, r0, #0xff
	cmp r5, #8
	blo _02130F74
	ldr r0, [r8, #0x18]
	cmp r0, #0
	beq _02131188
	cmp r0, #1
	beq _021311A0
	b _021311B4
_02131188:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, r8
	mov r3, r7
	bl ov1_021311E4
	b _021311B4
_021311A0:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, r8
	mov r3, r7
	bl ov1_021311F8
_021311B4:
	ldrh r0, [r8, #4]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	strneh r0, [r8, #4]
	movne r0, #1
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021311D4: .word MAIN_BSS_020BAE7B
_021311D8: .word 0x0000014D

	arm_func_start ov1_021311DC
ov1_021311DC: ; 0x021311DC
	mov r0, #9
	bx lr
	arm_func_end ov1_021311DC

	arm_func_start ov1_021311E4
ov1_021311E4: ; 0x021311E4
	ldrb r1, [r1, #4]
	cmp r1, #0
	movne r1, #1
	strne r1, [r0, #0x18]
	bx lr
	arm_func_end ov1_021311E4

	arm_func_start ov1_021311F8
ov1_021311F8: ; 0x021311F8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldrb r1, [r1, #6]
	mov r4, r0
	mov r5, r2
	cmp r1, #0
	beq _0213125C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0213124C
	mov r1, #0x18
	mov r2, #0
	bl sub_020129F4
	mov r2, #0x1800
	ldr r0, [r4, #0x28]
	mov r3, r2
	mov r1, #0x18
	bl sub_02012A3C
	ldr r0, [r4, #0x14]
	ldr r1, _0213138C ; =0x00000135
	bl sub_02034C5C
	arm_func_end ov1_021311F8
_0213124C:
	mov r0, #0
	add sp, sp, #0x20
	str r0, [r4, #0x18]
	ldmia sp!, {r3, r4, r5, pc}
_0213125C:
	mov r0, r5
	bl ov1_0212C4CC
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0x28]
	ldr r0, [r5, #0x1b8]
	cmp r2, #0
	bne _021312B8
	add r0, r0, #0x3ec
	add r0, r0, #0x6000
	add ip, sp, #0x10
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov r0, r4
	bl ov1_02131410
	ldr r0, [r4, #0x14]
	ldr r1, _0213138C ; =0x00000135
	bl sub_02034C44
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
_021312B8:
	ldr r1, [r2, #0x20]
	ldr r2, [r2, #0x24]
	bl ov1_02124650
	cmp r0, #0
	beq _0213135C
	ldrb r0, [r4, #0x24]
	cmp r0, #5
	blo _02131330
	mov r5, #0
_021312DC:
	ldr r0, [r4, #0x28]
	ldrh r3, [r4, #0x26]
	ldr r1, [r0, #0x20]
	ldr r2, [r0, #0x24]
	mov r0, r4
	bl ov1_021314A0
	ldrh r1, [r4, #0x26]
	add r0, r5, #1
	and r5, r0, #0xff
	add r0, r1, #0x4000
	strh r0, [r4, #0x26]
	cmp r5, #4
	blo _021312DC
	ldrh r0, [r4, #0x26]
	ldr r1, _02131390 ; =0x00000136
	add r0, r0, #0x1000
	strh r0, [r4, #0x26]
	ldr r0, [r4, #0x14]
	bl sub_02034C44
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
_02131330:
	add r2, r0, #1
	ldr r0, _02131394 ; =DAT_overlay_1_02140258
	and r1, r2, #0xff
	strb r2, [r4, #0x24]
	ldr r2, [r0, r1, lsl #2]
	ldr r0, [r4, #0x28]
	mov r3, r2
	mov r1, #0x20
	bl sub_02012A3C
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
_0213135C:
	ldr r0, [r5, #0x1b8]
	add ip, sp, #0
	add r0, r0, #0x3ec
	add r0, r0, #0x6000
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldr r1, [sp]
	ldr r2, [sp, #4]
	mov r0, r4
	bl ov1_02131410
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0213138C: .word 0x00000135
_02131390: .word 0x00000136
_02131394: .word DAT_overlay_1_02140258

	arm_func_start ov1_02131398
ov1_02131398: ; 0x02131398
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021313B8
	mov r1, #0x3c
	mov r2, #0
	bl sub_020129F4
	arm_func_end ov1_02131398
_021313B8:
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	ldr r1, _02131400 ; =0x00000135
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02131404 ; =0x00000136
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02131408 ; =0x00000137
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	mov r1, #0x14c
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _0213140C ; =0x0000014D
	bl sub_02034C5C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02131400: .word 0x00000135
_02131404: .word 0x00000136
_02131408: .word 0x00000137
_0213140C: .word 0x0000014D

	arm_func_start ov1_02131410
ov1_02131410: ; 0x02131410
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x28]
	mov r4, r1
	mov r5, r2
	cmp r0, #0
	beq _02131430
	bl ov1_02127300
	arm_func_end ov1_02131410
_02131430:
	mov r1, #1
	mov r0, r6
	strb r1, [r6, #0x24]
	bl ov1_0212EE3C
	str r0, [r6, #0x28]
	ldr r1, [r6, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	ldr r0, [r6, #0x28]
	mov r1, #0x20
	mov r2, #0
	bl ov1_02127454
	mov r1, r4
	ldr r4, [r6, #0x28]
	add r0, r4, #0xc
	bl sub_02011D1C
	add r0, r4, #0xc
	mov r1, r5
	bl sub_02011D2C
	ldrb r3, [r6, #0x24]
	ldr r2, _0213149C ; =DAT_overlay_1_02140258
	ldr r0, [r6, #0x28]
	ldr r2, [r2, r3, lsl #2]
	mov r1, #0
	mov r3, r2
	bl sub_02012A3C
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0213149C: .word DAT_overlay_1_02140258

	arm_func_start ov1_021314A0
ov1_021314A0: ; 0x021314A0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl ov1_0212EE3C
	movs r4, r0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r8, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	mov r0, r4
	mov r1, #7
	mov r2, #1
	bl ov1_021273A0
	mov r1, r7
	add r0, r4, #0xc
	bl sub_02011D1C
	mov r1, r6
	add r0, r4, #0xc
	bl sub_02011D2C
	add r0, r4, #0xc
	mov r1, r5
	mov r2, #0x4000
	bl sub_02011C90
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov1_021314A0

	arm_func_start ov1_02131508
ov1_02131508: ; 0x02131508
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r3, _02131544 ; =PTR_LAB_overlay_1_02131548_overlay_1_021415f0
	add r0, r4, #0x18
	mov r1, #0
	mov r2, #0x64
	str r3, [r4]
	bl MI_CpuFill8
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02131544: .word PTR_LAB_overlay_1_02131548_overlay_1_021415f0
	arm_func_end ov1_02131508

	arm_func_start ov1_02131548
ov1_02131548: ; 0x02131548
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02131548

	arm_func_start ov1_0213155C
ov1_0213155C: ; 0x0213155C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213155C

	arm_func_start ov1_02131578
ov1_02131578: ; 0x02131578
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x48
	mov sb, r0
	ldrh r0, [sb, #4]
	str r2, [sp, #0xc]
	mov r8, r3
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r0, r0, #1
	strh r0, [sb, #4]
	mov r0, #0
	ldr fp, _02131A0C ; =MAIN_BSS_020BAE7B
	str r0, [sp, #0x10]
	arm_func_end ov1_02131578
_021315B4:
	ldr r0, [sp, #0x10]
	mov r1, #0x14
	mla r6, r0, r1, sb
	ldrb r0, [r6, #0x18]
	tst r0, #1
	beq _02131878
	ldrh r2, [r6, #0x1c]
	mov r0, #0
	mov r1, #0x40000
	add r2, r2, #0x100
	strh r2, [r6, #0x1c]
	ldrh r2, [r6, #0x1a]
	mov r3, #0xf0
	bl sub_02007068
	ldrh r1, [r6, #0x1c]
	ldr r3, _02131A10 ; =FX_SinCosTable_
	ldr r2, [r6, #0x20]
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	mov r5, r1, lsl #1
	add r1, r3, r1, lsl #1
	ldrsh r4, [r1, #2]
	ldrsh r3, [r3, r5]
	ldr r1, [r6, #0x24]
	smull r5, r4, r0, r4
	mov r5, r5, lsr #0xc
	orr r5, r5, r4, lsl #20
	add r4, r2, r5
	smull r3, r2, r0, r3
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	ldr r0, [r6, #0x28]
	add r1, r1, r3
	str r4, [sp, #0x24]
	add r2, sp, #0x24
	str r1, [sp, #0x28]
	add r0, r0, #0xc
	ldmia r2, {r1, r2}
	bl sub_02011D3C
	ldr r1, [r6, #0x28]
	mov r2, #0x800
	add r0, r1, #0xc
	ldrh r1, [r1, #0x50]
	add r1, r1, #0x100
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_02011C90
	ldrh r0, [r6, #0x1a]
	add r0, r0, #1
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1a]
	cmp r0, #0xf0
	blo _021316C4
	ldr r0, [r6, #0x28]
	mov r1, #0x20
	mov r2, #0
	bl sub_020129F4
	mov r2, #0x2000
	ldr r0, [r6, #0x28]
	mov r3, r2
	mov r1, #0x20
	bl sub_02012A3C
	ldr r0, [r6, #0x28]
	mov r1, #0
	bl ov1_02127388
	ldrb r0, [r6, #0x18]
	bic r0, r0, #1
	strb r0, [r6, #0x18]
_021316C4:
	ldr r1, [r6, #0x28]
	ldrh r0, [r1, #4]
	tst r0, #0x100
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02131878
	add r0, r1, #0x430
	add r5, sp, #0x2c
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	mov r7, #0
	sub r4, sp, #4
_021316F8:
	ldr r1, [r8, r7, lsl #2]
	cmp r1, #0
	beq _02131868
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02131868
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02131868
	add r0, r1, #0x2f8
	add r1, r0, #0x400
	mov r0, #0
	str r0, [sp, #8]
	ldmia r1, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r3, [r4]
	ldmia r5, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _02131868
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r1, r0
	ldrb r2, [fp]
	ldr r0, [sb, #0x10]
	mov r3, #0
	bl ov1_0212F32C
	mov sl, r0
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [r8, r7, lsl #2]
	ldr r1, [r1, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	bl ov1_0212EE80
	mov r1, sl, lsl #0xc
	mov sl, r0
	smull r1, r0, sl, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [r8, r7, lsl #2]
	mov r2, #1
	bl ov1_02126310
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r1, #0
	bl ov1_0212EE98
	mov r2, r0
	ldr r0, [r8, r7, lsl #2]
	mov r1, #2
	bl ov1_021263A4
	cmp sl, #0x1000
	bne _0213181C
	ldr r0, [r8, r7, lsl #2]
	mov r1, #0
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _02131848
_0213181C:
	ble _02131834
	ldr r0, [r8, r7, lsl #2]
	mov r1, #1
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _02131848
_02131834:
	bge _02131848
	ldr r0, [r8, r7, lsl #2]
	mov r1, #2
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
_02131848:
	ldr r0, [r6, #0x28]
	bl ov1_02127300
	ldr r0, [sb, #0x14]
	mov r1, #0x13c
	bl sub_02034C44
	ldrb r0, [r6, #0x18]
	bic r0, r0, #1
	strb r0, [r6, #0x18]
_02131868:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #8
	blo _021316F8
_02131878:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	and r0, r0, #0xff
	str r0, [sp, #0x10]
	cmp r0, #5
	blo _021315B4
	ldr r0, [sp, #0xc]
	bl ov1_0212C5C0
	cmp r0, #0
	beq _02131A00
	ldr r0, [sp, #0xc]
	bl ov1_0212C4CC
	cmp r0, #0
	beq _02131A00
	mov sl, #0
	mov r7, #1
	mov r6, sl
	mov r4, sl
	mov r5, r7
_021318C4:
	ldr r2, [r8, sl, lsl #2]
	cmp r2, #0
	beq _02131930
	add r0, r2, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, r7
	moveq r0, r6
	cmp r0, #0
	beq _02131930
	ldrh r0, [r2, #4]
	tst r0, #0x200
	moveq r0, r5
	movne r0, r4
	cmp r0, #0
	beq _02131930
	ldr r0, [sp, #0xc]
	ldr r1, [r2, #0x20]
	ldr r2, [r2, #0x24]
	ldr r0, [r0, #0x1b8]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	bl ov1_02124650
	cmp r0, #0
	addne sp, sp, #0x48
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02131930:
	add r0, sl, #1
	and sl, r0, #0xff
	cmp sl, #8
	blo _021318C4
	ldr r0, [sp, #0xc]
	add r4, sp, #0x38
	ldr r0, [r0, #0x1b8]
	add r0, r0, #0x3ec
	add r0, r0, #0x6000
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, [sp, #0x40]
	cmp r0, #0x20000
	ldrge r0, [sp, #0x44]
	cmpge r0, #0x20000
	blt _02131A00
	mov r0, sb
	bl ov1_02131A48
	movs r4, r0
	beq _02131A00
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	mov r0, sb
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	bl ov1_0212EE3C
	str r0, [r4, #0x10]
	ldr r1, [sb, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	ldr r0, [r4, #0x10]
	add r1, sp, #0x1c
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [r4, #0x10]
	mov r1, #0
	add r0, r0, #0xc
	mov r2, #0x800
	bl sub_02011C90
	mov r0, #0
	strh r0, [r4, #2]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sb, #0x14]
	ldr r1, _02131A14 ; =0x0000013B
	bl sub_02034C44
	ldrb r0, [r4]
	orr r0, r0, #1
	strb r0, [r4]
_02131A00:
	mov r0, #1
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02131A0C: .word MAIN_BSS_020BAE7B
_02131A10: .word FX_SinCosTable_
_02131A14: .word 0x0000013B

	arm_func_start ov1_02131A18
ov1_02131A18: ; 0x02131A18
	mov r0, #0xd
	bx lr
	arm_func_end ov1_02131A18

	arm_func_start ov1_02131A20
ov1_02131A20: ; 0x02131A20
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, _02131A44 ; =0x0000013B
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	mov r1, #0x13c
	bl sub_02034C5C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02131A44: .word 0x0000013B
	arm_func_end ov1_02131A20

	arm_func_start ov1_02131A48
ov1_02131A48: ; 0x02131A48
	mov ip, #0
	mov r1, #0x14
	arm_func_end ov1_02131A48
_02131A50:
	mul r3, ip, r1
	add r2, r0, r3
	ldrb r2, [r2, #0x18]
	tst r2, #1
	addeq r0, r0, #0x18
	addeq r0, r0, r3
	bxeq lr
	add r2, ip, #1
	and ip, r2, #0xff
	cmp ip, #5
	blo _02131A50
	mov r0, #0
	bx lr

	arm_func_start ov1_02131A84
ov1_02131A84: ; 0x02131A84
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _02131AB0 ; =PTR_LAB_overlay_1_02131ab4_overlay_1_02141630
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02131AB0: .word PTR_LAB_overlay_1_02131ab4_overlay_1_02141630
	arm_func_end ov1_02131A84

	arm_func_start ov1_02131AB4
ov1_02131AB4: ; 0x02131AB4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02131AB4

	arm_func_start ov1_02131AC8
ov1_02131AC8: ; 0x02131AC8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02131AC8

	arm_func_start ov1_02131AE4
ov1_02131AE4: ; 0x02131AE4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, [r0]
	mov r5, r0
	ldr r1, [r1, #0x10]
	mov r4, r2
	blx r1
	ldr r2, _02131B38 ; =MAIN_BSS_020BA6A0
	mov r1, r0
	ldrb r2, [r2, #0x7db]
	ldr r0, [r5, #0x10]
	mov r3, #0
	bl ov1_0212F32C
	add r1, r4, #0x100
	strh r0, [r1, #0x9e]
	ldrh r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	strneh r0, [r5, #4]
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02131B38: .word MAIN_BSS_020BA6A0
	arm_func_end ov1_02131AE4

	arm_func_start ov1_02131B3C
ov1_02131B3C: ; 0x02131B3C
	mov r0, #6
	bx lr
	arm_func_end ov1_02131B3C

	arm_func_start ov1_02131B44
ov1_02131B44: ; 0x02131B44
	bx lr
	arm_func_end ov1_02131B44

	arm_func_start ov1_02131B48
ov1_02131B48: ; 0x02131B48
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r0, _02131B8C ; =PTR_LAB_overlay_1_02131b90_overlay_1_02141670
	mov r1, #0
	str r0, [r4]
	strb r1, [r4, #0x18]
	add r0, r4, #0x24
	mov r2, #0xc0
	strb r1, [r4, #0x19]
	bl MI_CpuFill8
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02131B8C: .word PTR_LAB_overlay_1_02131b90_overlay_1_02141670
	arm_func_end ov1_02131B48

	arm_func_start ov1_02131B90
ov1_02131B90: ; 0x02131B90
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02131B90

	arm_func_start ov1_02131BA4
ov1_02131BA4: ; 0x02131BA4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02131BA4

	arm_func_start ov1_02131BC0
ov1_02131BC0: ; 0x02131BC0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov sb, r0
	ldrh r0, [sb, #4]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	cmp r0, #0
	mov r8, r3
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r0, r0, #1
	strh r0, [sb, #4]
	mov r0, #0
	str r0, [sp, #0x14]
	arm_func_end ov1_02131BC0
_02131BFC:
	ldr r0, [sp, #0x14]
	add r2, sb, #0x24
	ldrb r1, [r2, r0, lsl #3]
	add r6, r2, r0, lsl #3
	tst r1, #1
	beq _02131EE4
	tst r1, #4
	beq _02131C58
	ldr r0, [r6, #4]
	bl ov1_0212747C
	cmp r0, #0
	bne _02131C58
	ldr r0, [r6, #4]
	mov r1, #0x20
	mov r2, #1
	bl ov1_02127454
	ldrb r2, [r6, #1]
	ldr r0, [r6, #4]
	mov r1, #8
	bl ov1_021273A0
	ldrb r0, [r6]
	bic r0, r0, #4
	strb r0, [r6]
_02131C58:
	ldrh r0, [r6, #2]
	add r0, r0, #1
	strh r0, [r6, #2]
	ldrh r0, [r6, #2]
	cmp r0, #0x12c
	blo _02131C90
	ldr r0, [r6, #4]
	mov r1, #0x18
	mov r2, #0
	bl sub_020129F4
	ldrb r0, [r6]
	bic r0, r0, #1
	strb r0, [r6]
	b _02131EE4
_02131C90:
	ldrb r0, [sb, #0x19]
	mov r7, #0
	add sl, sp, #0x18
	strb r0, [sb, #0x1a]
	ldr r0, [r6, #4]
	sub r5, sp, #4
	add r0, r0, #0x430
	ldmia r0, {r0, r1, r2}
	stmia sl, {r0, r1, r2}
	mov fp, r7
	mov r4, #0xc00
_02131CBC:
	ldr r0, [r8, r7, lsl #2]
	cmp r0, #0
	beq _02131E8C
	add r1, r0, #0x100
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _02131E8C
	ldrh r1, [r0, #4]
	tst r1, #0x200
	moveq r1, #1
	movne r1, #0
	cmp r1, #0
	beq _02131E8C
	bl ov1_02126424
	cmp r0, #0
	bne _02131E8C
	str fp, [sp, #8]
	ldr r0, [r8, r7, lsl #2]
	add r0, r0, #0x2f8
	add r0, r0, #0x400
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldr r3, [r5]
	ldmia sl, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _02131E48
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r1, #0
	bl ov1_0212EE98
	mov r2, r0
	ldr r0, [r8, r7, lsl #2]
	ldr r1, [r0, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	cmp r1, #0x10
	addls pc, pc, r1, lsl #2
	b _02131DF8
_02131D6C: ; jump table
	b _02131DF8 ; case 0
	b _02131DD8 ; case 1
	b _02131DB0 ; case 2
	b _02131DF8 ; case 3
	b _02131DD8 ; case 4
	b _02131DF8 ; case 5
	b _02131DF8 ; case 6
	b _02131DD8 ; case 7
	b _02131DB0 ; case 8
	b _02131DD8 ; case 9
	b _02131DF8 ; case 10
	b _02131DD8 ; case 11
	b _02131DB0 ; case 12
	b _02131DF8 ; case 13
	b _02131DD8 ; case 14
	b _02131DF8 ; case 15
	b _02131DD8 ; case 16
_02131DB0:
	mov r2, r2, lsl #0xc
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xd
	orr r1, r1, r2, lsr #19
	mov r2, r2, lsl #0xd
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mov r1, r2, lsl #4
	mov r2, r1, lsr #0x10
	b _02131DF8
_02131DD8:
	mov r3, r2, lsl #0xc
	umull lr, ip, r3, r4
	mov r2, r3, asr #0x1f
	mla ip, r2, r4, ip
	mov r1, lr, lsr #0xc
	orr r1, r1, ip, lsl #20
	mov r1, r1, lsl #4
	mov r2, r1, lsr #0x10
_02131DF8:
	mov r1, #3
	bl ov1_021263A4
	ldrb r0, [r6]
	tst r0, #2
	bne _02131E8C
	ldr r0, [r6, #4]
	mov r1, #0x20
	mov r2, #2
	bl ov1_02127454
	ldrb r2, [r6, #1]
	ldr r0, [r6, #4]
	mov r1, #9
	bl ov1_021273A0
	ldrb r0, [sb, #0x19]
	add r0, r0, #1
	strb r0, [sb, #0x19]
	ldrb r0, [r6]
	orr r0, r0, #2
	strb r0, [r6]
	b _02131E8C
_02131E48:
	ldrb r0, [r6]
	tst r0, #2
	beq _02131E8C
	ldr r0, [r6, #4]
	mov r1, #0x20
	mov r2, #1
	bl ov1_02127454
	ldrb r2, [r6, #1]
	ldr r0, [r6, #4]
	mov r1, #8
	bl ov1_021273A0
	ldrb r0, [sb, #0x19]
	sub r0, r0, #1
	strb r0, [sb, #0x19]
	ldrb r0, [r6]
	bic r0, r0, #2
	strb r0, [r6]
_02131E8C:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #8
	blo _02131CBC
	ldrb r1, [sb, #0x1a]
	cmp r1, #0
	bne _02131EC4
	ldrb r0, [sb, #0x19]
	cmp r0, #1
	blo _02131EC4
	ldr r0, [sb, #0x14]
	mov r1, #0x130
	bl sub_02034C44
	b _02131EE4
_02131EC4:
	ldrb r0, [sb, #0x19]
	cmp r0, #0
	bne _02131EE4
	cmp r1, #1
	blo _02131EE4
	ldr r0, [sb, #0x14]
	mov r1, #0x130
	bl sub_02034C5C
_02131EE4:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	and r0, r0, #0xff
	str r0, [sp, #0x14]
	cmp r0, #0x18
	blo _02131BFC
	ldr r0, [sp, #0xc]
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _02131F38
	ldr r0, [sp, #0xc]
	ldrh r0, [r0, #0xa]
	sub r0, r0, #0x80
	mov r0, r0, lsl #0xc
	str r0, [sb, #0x1c]
	ldr r0, [sp, #0xc]
	ldrh r0, [r0, #0xc]
	sub r0, r0, #0x60
	mov r0, r0, lsl #0xc
	str r0, [sb, #0x20]
	b _02131FA4
_02131F38:
	ldr r0, [sp, #0x10]
	bl ov1_0212C5C0
	cmp r0, #0
	beq _02131FA4
	ldr r0, [sp, #0xc]
	ldrh r2, [r0, #0xa]
	ldrh r1, [r0, #0xc]
	ldr r0, [sb, #0x1c]
	sub r3, r2, #0x80
	sub r2, r1, #0x60
	ldr r1, [sb, #0x20]
	rsb r0, r0, r3, lsl #12
	rsb r1, r1, r2, lsl #12
	mov r4, r3, lsl #0xc
	mov r5, r2, lsl #0xc
	bl sub_02007254
	cmp r0, #0x10000
	blt _02131FA4
	mov r0, sb
	mov r1, r4
	mov r2, r5
	bl ov1_02131FE4
	ldr r0, [sb, #0x14]
	ldr r1, _02131FB0 ; =0x0000012F
	bl sub_02034C44
	str r4, [sb, #0x1c]
	str r5, [sb, #0x20]
_02131FA4:
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02131FB0: .word 0x0000012F

	arm_func_start ov1_02131FB4
ov1_02131FB4: ; 0x02131FB4
	mov r0, #4
	bx lr
	arm_func_end ov1_02131FB4

	arm_func_start ov1_02131FBC
ov1_02131FBC: ; 0x02131FBC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, _02131FE0 ; =0x0000012F
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	mov r1, #0x130
	bl sub_02034C5C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02131FE0: .word 0x0000012F
	arm_func_end ov1_02131FBC

	arm_func_start ov1_02131FE4
ov1_02131FE4: ; 0x02131FE4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldrb r0, [r7, #0x18]
	add r3, r7, #0x24
	mov r6, r1
	add r4, r3, r0, lsl #3
	ldr r0, [r4, #4]
	mov r5, r2
	cmp r0, #0
	beq _02132010
	bl ov1_02127300
	arm_func_end ov1_02131FE4
_02132010:
	mov r0, r7
	bl ov1_0212EE3C
	str r0, [r4, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl sub_0201001C
	add r1, r0, #0x460
	add r0, r0, #0x1000
	add r1, r1, #0x1000
	ldmib r1, {r3, ip}
	ldr r2, [r0, #0x460]
	mov r1, #0x64
	mla ip, r3, r2, ip
	mov r2, ip, lsr #0x10
	mul r1, r2, r1
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str ip, [r0, #0x460]
	cmp r1, #1
	movls r0, #2
	strlsb r0, [r4, #1]
	bls _02132084
	cmp r1, #0xa
	movls r0, #1
	strlsb r0, [r4, #1]
	movhi r0, #0
	strhib r0, [r4, #1]
_02132084:
	ldr r1, [r7, #0xc]
	ldr r0, [r4, #4]
	ldr r1, [r1]
	bl ov1_021270FC
	ldr r0, [r4, #4]
	mov r1, #0x20
	mov r2, #0
	bl ov1_02127454
	ldrb r2, [r4, #1]
	ldr r0, [r4, #4]
	mov r1, #7
	bl ov1_021273A0
	ldr r8, [r4, #4]
	mov r1, r6
	add r0, r8, #0xc
	bl sub_02011D1C
	add r0, r8, #0xc
	mov r1, r5
	bl sub_02011D2C
	mov r0, #0
	strh r0, [r4, #2]
	ldrb r0, [r4]
	orr r0, r0, #5
	strb r0, [r4]
	ldrb r0, [r7, #0x18]
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r7, #0x18]
	cmp r0, #0x18
	ldrhsb r0, [r7, #0x18]
	subhs r0, r0, #0x18
	strcsb r0, [r7, #0x18]
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov1_0213210C
ov1_0213210C: ; 0x0213210C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _02132138 ; =ptr_FUN_overlay_1_0213213c_overlay_1_021416b0
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02132138: .word ptr_FUN_overlay_1_0213213c_overlay_1_021416b0
	arm_func_end ov1_0213210C

	arm_func_start ov1_0213213C
ov1_0213213C: ; 0x0213213C
	stmdb sp!, {r4, lr}
	ldr r1, _02132164 ; =ptr_FUN_overlay_1_0213213c_overlay_1_021416b0
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x28]
	bl sub_0200D994
	mov r0, r4
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02132164: .word ptr_FUN_overlay_1_0213213c_overlay_1_021416b0
	arm_func_end ov1_0213213C

	arm_func_start ov1_02132168
ov1_02132168: ; 0x02132168
	stmdb sp!, {r4, lr}
	ldr r1, _02132198 ; =ptr_FUN_overlay_1_0213213c_overlay_1_021416b0
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x28]
	bl sub_0200D994
	mov r0, r4
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02132198: .word ptr_FUN_overlay_1_0213213c_overlay_1_021416b0
	arm_func_end ov1_02132168

	arm_func_start ov1_0213219C
ov1_0213219C: ; 0x0213219C
	str r1, [r0, #0x28]
	bx lr
	arm_func_end ov1_0213219C

	arm_func_start ov1_021321A4
ov1_021321A4: ; 0x021321A4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r0
	ldrh r0, [sb, #4]
	mov r6, r1
	mov r8, r3
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r0, r0, #1
	strh r0, [sb, #4]
	ldr r0, [sb, #0x28]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r6, #4]
	ldrh r2, [r6, #0xa]
	ldrh r1, [r6, #0xc]
	cmp r0, #0
	movne r0, #1
	strne r0, [sb, #0x1c]
	ldrb r0, [r6, #5]
	sub r2, r2, #0x80
	sub r1, r1, #0x60
	cmp r0, #0
	ldrne r0, [sb, #0x1c]
	mov r4, r2, lsl #0xc
	mov r5, r1, lsl #0xc
	cmpne r0, #0
	beq _021322A0
	ldr r0, [sb, #0x20]
	ldr r1, [sb, #0x24]
	sub r0, r4, r0
	sub r1, r5, r1
	bl sub_02007254
	mov r7, r0
	cmp r7, #0x8000
	ble _02132274
	ldr r0, [sb, #0x28]
	movge r7, #0x8000
	bl sub_0200E098
	cmp r0, #0
	bne _02132298
	ldr r0, [sb, #0x28]
	mov r1, r7
	bl sub_0200D924
	ldrh r0, [sb, #0x18]
	mov r1, #0x12c
	add r0, r0, #1
	strh r0, [sb, #0x18]
	ldr r0, [sb, #0x14]
	bl sub_02034C44
	b _02132298
	arm_func_end ov1_021321A4
_02132274:
	ldr r0, [sb, #0x28]
	bl sub_0200E098
	cmp r0, #0
	beq _02132298
	ldr r0, [sb, #0x28]
	bl sub_0200D994
	ldr r0, [sb, #0x14]
	mov r1, #0x12c
	bl sub_02034C5C
_02132298:
	str r4, [sb, #0x20]
	str r5, [sb, #0x24]
_021322A0:
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _021322DC
	ldr r0, [sb, #0x28]
	bl sub_0200E098
	cmp r0, #0
	beq _021322DC
	ldr r0, [sb, #0x28]
	bl sub_0200D994
	ldr r0, [sb, #0x14]
	mov r1, #0x12c
	bl sub_02034C5C
	mov r0, #0
	strh r0, [sb, #0x18]
	str r0, [sb, #0x1c]
_021322DC:
	ldrh r0, [sb, #0x18]
	cmp r0, #5
	bne _021324A4
	mov sl, #0
	ldr r6, _021324AC ; =MAIN_BSS_020BAE7B
	mov r5, sl
	mov r7, sl
	mov fp, sl
	mov r4, #1
_02132300:
	ldr r0, [r8, r7, lsl #2]
	cmp r0, #0
	beq _02132440
	add r1, r0, #0x100
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	movne r1, r4
	moveq r1, fp
	cmp r1, #0
	beq _02132440
	ldrh r1, [r0, #4]
	tst r1, #0x200
	moveq r1, #1
	movne r1, #0
	cmp r1, #0
	beq _02132440
	bl ov1_02126424
	cmp r0, #0
	bne _02132440
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r1, r0
	ldrb r2, [r6]
	ldr r0, [sb, #0x10]
	mov r3, #0
	bl ov1_0212F32C
	mov sl, r0
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [r8, r7, lsl #2]
	ldr r1, [r1, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	bl ov1_0212EE80
	mov r1, sl, lsl #0xc
	mov sl, r0
	smull r1, r0, sl, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [r8, r7, lsl #2]
	mov r2, #1
	bl ov1_02126310
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r1, #0
	bl ov1_0212EE98
	mov r2, r0
	ldr r0, [r8, r7, lsl #2]
	mov r1, #1
	bl ov1_021263A4
	cmp sl, #0x1000
	bne _02132404
	ldr r0, [r8, r7, lsl #2]
	mov r1, #0
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _0213243C
_02132404:
	ble _02132420
	ldr r0, [r8, r7, lsl #2]
	mov r5, #1
	ldr r0, [r0, #0x1a8]
	mov r1, r5
	bl ov1_02128598
	b _0213243C
_02132420:
	bge _0213243C
	ldr r0, [r8, r7, lsl #2]
	cmp r5, #0
	ldr r0, [r0, #0x1a8]
	mov r1, #2
	moveq r5, #1
	bl ov1_02128598
_0213243C:
	mov sl, #1
_02132440:
	add r7, r7, #1
	cmp r7, #8
	blt _02132300
	cmp sl, #0
	beq _0213249C
	cmp r5, #0
	beq _02132470
	cmp r5, #1
	beq _02132480
	cmp r5, #2
	beq _02132490
	b _0213249C
_02132470:
	ldr r0, [sb, #0x14]
	ldr r1, _021324B0 ; =0x0000012D
	bl sub_02034C44
	b _0213249C
_02132480:
	ldr r0, [sb, #0x14]
	ldr r1, _021324B4 ; =0x0000014A
	bl sub_02034C44
	b _0213249C
_02132490:
	ldr r0, [sb, #0x14]
	ldr r1, _021324B8 ; =0x0000014B
	bl sub_02034C44
_0213249C:
	mov r0, #0
	strh r0, [sb, #0x18]
_021324A4:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021324AC: .word MAIN_BSS_020BAE7B
_021324B0: .word 0x0000012D
_021324B4: .word 0x0000014A
_021324B8: .word 0x0000014B

	arm_func_start ov1_021324BC
ov1_021324BC: ; 0x021324BC
	mov r0, #8
	bx lr
	arm_func_end ov1_021324BC

	arm_func_start ov1_021324C4
ov1_021324C4: ; 0x021324C4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	bl sub_0200E098
	cmp r0, #0
	beq _021324EC
	ldr r0, [r4, #0x28]
	bl sub_0200D994
	mov r0, #0
	strh r0, [r4, #0x18]
	arm_func_end ov1_021324C4
_021324EC:
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x14]
	mov r1, #0x12c
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02132528 ; =0x0000012D
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _0213252C ; =0x0000014A
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02132530 ; =0x0000014B
	bl sub_02034C5C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02132528: .word 0x0000012D
_0213252C: .word 0x0000014A
_02132530: .word 0x0000014B

	arm_func_start ov1_02132534
ov1_02132534: ; 0x02132534
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _02132560 ; =ptr_FUN_overlay_11_02132564_overlay_1_021416ec
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02132560: .word ptr_FUN_overlay_11_02132564_overlay_1_021416ec
	arm_func_end ov1_02132534

	arm_func_start ov1_02132564
ov1_02132564: ; 0x02132564
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02132564

	arm_func_start ov1_02132578
ov1_02132578: ; 0x02132578
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02132578

	arm_func_start ov1_02132594
ov1_02132594: ; 0x02132594
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sb, r0
	ldrh r0, [sb, #4]
	mov r7, r1
	mov fp, r2
	cmp r0, #0
	mov r8, r3
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r6, #0
	sub r0, r0, #1
	strh r0, [sb, #4]
	mov sl, r6
	mov r5, #1
	mov r4, r6
	arm_func_end ov1_02132594
_021325D8:
	add r0, sb, r6, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0213260C
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, r5
	moveq r1, sl
	cmp r1, #0
	bne _0213260C
	bl ov1_02127300
	add r0, sb, r6, lsl #2
	str r4, [r0, #0x28]
_0213260C:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #4
	blo _021325D8
	mov r0, sb
	mov r1, r8
	str fp, [sb, #0xc8]
	bl ov1_021329C8
	ldrh r2, [r7, #0xa]
	ldrh r1, [r7, #0xc]
	ldrb r0, [r7, #4]
	sub r2, r2, #0x80
	sub r1, r1, #0x60
	mov r3, r2, lsl #0xc
	mov r2, r1, lsl #0xc
	str r3, [sp, #4]
	str r2, [sp, #8]
	cmp r0, #0
	beq _021326B8
	str r3, [sb, #0x20]
	str r2, [sb, #0x24]
	mov r2, #0
	add r1, sp, #0
	mov r0, sb
	strb r2, [sp]
	bl ov1_02132BD4
	cmp r0, #0
	beq _021326B8
	ldrb r1, [sp]
	add r0, sp, #4
	strb r1, [sb, #0x19]
	ldrb r3, [sp]
	ldmia r0, {r1, r2}
	add r0, sb, r3, lsl #2
	ldr r0, [r0, #0x28]
	add r0, r0, #0xc
	bl sub_02011D3C
	ldrb r0, [sb, #0x18]
	mov r1, #0x124
	orr r0, r0, #1
	strb r0, [sb, #0x18]
	ldr r0, [sb, #0x14]
	bl sub_02034C44
_021326B8:
	ldrb r0, [r7, #5]
	cmp r0, #0
	beq _021327EC
	ldrb r0, [sb, #0x18]
	tst r0, #1
	beq _021327EC
	ldrb r0, [sb, #0x19]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021327BC
	ldr r0, [r0, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _021327BC
	add r1, sp, #4
	mov r0, sb
	ldmia r1, {r1, r2}
	bl ov1_02132EC4
	ldr r3, [sb, #0x24]
	ldr r0, [sp, #8]
	ldr r2, [sb, #0x20]
	ldr r1, [sp, #4]
	sub r0, r3, r0
	sub r1, r2, r1
	bl sub_02007254
	cmp r0, #0x8000
	ble _02132778
	ldrb r1, [sb, #0x19]
	mov r0, #0xc
	add r3, sb, #0x40
	smulbb r2, r1, r0
	ldr r1, [r3, r2]
	add r1, r1, #0xa
	cmp r1, #0x2000
	bgt _0213276C
	str r1, [r3, r2]
	ldrb r1, [sb, #0x19]
	add r3, sb, #0x3a
	mul r2, r1, r0
	ldrb r0, [r3, r2]
	add r0, r0, #1
	strb r0, [r3, r2]
_0213276C:
	ldr r0, [sb, #0x14]
	mov r1, #0x124
	bl sub_02034C44
_02132778:
	ldrb r1, [sb, #0x19]
	add r0, sp, #4
	add r1, sb, r1, lsl #2
	ldr r3, [r1, #0x28]
	ldmia r0, {r1, r2}
	add r0, r3, #0xc
	bl sub_02011D3C
	ldr r1, [sb, #0xc8]
	mov r0, sb
	ldr r1, [r1, #0x1b8]
	add r1, r1, #0x5000
	ldr r1, [r1, #0x4cc]
	bl ov1_021330DC
	ldrb r2, [sb, #0x19]
	mov r1, #0xc
	mla r1, r2, r1, sb
	strb r0, [r1, #0x3b]
_021327BC:
	ldrh r0, [sb, #0x1c]
	cmp r0, #0xa
	bne _021327E4
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r1, [sb, #0x20]
	str r0, [sb, #0x24]
	mov r0, #0
	strh r0, [sb, #0x1c]
	b _021327EC
_021327E4:
	addlo r0, r0, #1
	strloh r0, [sb, #0x1c]
_021327EC:
	ldrb r0, [r7, #6]
	cmp r0, #0
	beq _021328BC
	ldrb r0, [sb, #0x18]
	tst r0, #1
	beq _021328B0
	ldrb r0, [sb, #0x19]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0213289C
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _0213289C
	add r1, sp, #4
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r3, [sp, #8]
	ldr r0, [sb, #0x24]
	ldr r2, [sp, #4]
	ldr r1, [sb, #0x20]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	ldrb r3, [sb, #0x19]
	mov r1, r0
	mov r2, #0x1800
	add r0, sb, r3, lsl #2
	ldr r0, [r0, #0x28]
	add r0, r0, #0xc
	bl sub_02011C90
	ldr r0, [sb, #0x14]
	ldr r1, _021329C0 ; =0x00000125
	bl sub_02034C44
	ldrb r1, [sb, #0x19]
	mov r0, #0xc
	mov r2, #1
	mla r0, r1, r0, sb
	strb r2, [r0, #0x38]
	b _021328B0
_0213289C:
	bl ov1_02127300
	ldrb r0, [sb, #0x19]
	mov r1, #0
	add r0, sb, r0, lsl #2
	str r1, [r0, #0x28]
_021328B0:
	ldrb r0, [sb, #0x18]
	bic r0, r0, #1
	strb r0, [sb, #0x18]
_021328BC:
	mov r7, #0
	mov sl, r7
	mov fp, r7
	mov r4, #3
	mov r5, #2
_021328D0:
	mov r0, #0xc
	mla r1, r7, r0, sb
	ldr r0, [r1, #0x68]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021329A4
_021328E8: ; jump table
	b _021329A4 ; case 0
	b _021328F8 ; case 1
	b _02132928 ; case 2
	b _0213297C ; case 3
_021328F8:
	ldr r0, [r1, #0x70]
	bl ov1_0212747C
	cmp r0, #0
	bne _021329A4
	mov r0, #0xc
	mla r1, r7, r0, sb
	str r5, [r1, #0x68]
	ldrb r2, [r1, #0x6c]
	ldr r0, [r1, #0x70]
	mov r1, #8
	bl ov1_021273A0
	b _021329A4
_02132928:
	ldr r1, [r8, r7, lsl #2]
	ldr r0, [r1, #0x18c]
	cmp r0, #0
	beq _02132950
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _021329A4
_02132950:
	mov r0, #0xc
	mla r1, r7, r0, sb
	str r4, [r1, #0x68]
	ldrb r2, [r1, #0x6c]
	ldr r0, [r1, #0x70]
	mov r1, #9
	bl ov1_021273A0
	ldr r0, [sb, #0x14]
	ldr r1, _021329C4 ; =0x00000151
	bl sub_02034C44
	b _021329A4
_0213297C:
	ldr r0, [r1, #0x70]
	bl ov1_0212747C
	cmp r0, #0
	bne _021329A4
	mov r0, #0xc
	mla r6, r7, r0, sb
	str sl, [r6, #0x68]
	ldr r0, [r6, #0x70]
	bl ov1_02127300
	str fp, [r6, #0x70]
_021329A4:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #8
	blo _021328D0
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021329C0: .word 0x00000125
_021329C4: .word 0x00000151

	arm_func_start ov1_021329C8
ov1_021329C8: ; 0x021329C8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #0
	mov r5, #2
	mov sl, r0
	mov sb, r1
	mov r6, r8
	mov r4, r8
	mov fp, r5
	arm_func_end ov1_021329C8
_021329E8:
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02132B64
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _02132B64
	mov r1, #0xc
	mla r7, r8, r1, sl
	ldr r2, [r7, #0x40]
	mov r1, #0
	mov r3, r2
	bl sub_02012A3C
	ldrb r0, [sl, #0x18]
	tst r0, #1
	beq _02132A40
	ldrb r0, [sl, #0x19]
	cmp r0, r8
	beq _02132B64
_02132A40:
	add r0, sl, r8, lsl #2
	ldr r1, [r0, #0x28]
	ldrh r0, [r1, #4]
	tst r0, #0x100
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02132AA8
	mov r0, sl
	mov r2, sb
	ldrb r3, [r7, #0x3b]
	bl ov1_02132CAC
	cmp r0, #0
	beq _02132AA8
	add r2, sl, r8, lsl #2
	ldr r0, [r2, #0x28]
	mov r1, #0x20
	str r6, [r0, #0xc]
	ldr r0, [r2, #0x28]
	mov r2, #2
	bl ov1_02127454
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	mov r1, #0
	bl ov1_02127388
	strb r5, [r7, #0x39]
_02132AA8:
	add r0, sl, r8, lsl #2
	ldr r1, [r0, #0x28]
	ldrh r0, [r1, #4]
	tst r0, #0x100
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02132B2C
	ldrb r0, [r7, #0x38]
	cmp r0, #1
	bne _02132B2C
	ldrh r0, [r7, #0x3c]
	cmp r0, #0x78
	bne _02132B24
	str r4, [r1, #0xc]
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	mov r1, #0x20
	mov r2, #2
	bl ov1_02127454
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	mov r1, #0
	bl ov1_02127388
	mov r0, #0xc
	mla r1, r8, r0, sl
	strb fp, [r1, #0x39]
	mov r0, #0
	strb r0, [r1, #0x38]
	strh r0, [r1, #0x3c]
	b _02132B2C
_02132B24:
	addlo r0, r0, #1
	strloh r0, [r7, #0x3c]
_02132B2C:
	ldrb r0, [r7, #0x39]
	cmp r0, #2
	bne _02132B64
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_0212747C
	cmp r0, #0
	bne _02132B64
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_02127300
	add r1, sl, r8, lsl #2
	mov r0, #0
	str r0, [r1, #0x28]
_02132B64:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #4
	blo _021329E8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_02132B78
ov1_02132B78: ; 0x02132B78
	stmdb sp!, {r3, lr}
	mov lr, #0
	mov r3, lr
	mov ip, #1
	arm_func_end ov1_02132B78
_02132B88:
	add r2, r0, lr, lsl #2
	ldr r2, [r2, #0x28]
	cmp r2, #0
	beq _02132BB0
	ldr r2, [r2, #0x104]
	cmp r2, #0
	movne r2, ip
	moveq r2, r3
	cmp r2, #0
	bne _02132BBC
_02132BB0:
	strb lr, [r1]
	mov r0, #1
	ldmia sp!, {r3, pc}
_02132BBC:
	add r2, lr, #1
	and lr, r2, #0xff
	cmp lr, #4
	blo _02132B88
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov1_02132BD4
ov1_02132BD4: ; 0x02132BD4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r2, #0
	add r1, sp, #0
	mov r6, r0
	strb r2, [sp]
	bl ov1_02132B78
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	bl ov1_0212EE3C
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldrb r3, [sp]
	mov r1, #0xc
	mov lr, #0
	mla r2, r3, r1, r6
	strb lr, [r2, #0x38]
	ldrb ip, [sp]
	mov r2, #0x800
	mla r3, ip, r1, r6
	strb lr, [r3, #0x39]
	ldrb r3, [sp]
	mla r1, r3, r1, r6
	strh lr, [r1, #0x3c]
	str r2, [r1, #0x40]
	strb lr, [r1, #0x3a]
	ldr r1, [r6, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	mov r0, r4
	mov r1, #0x20
	mov r2, #0
	bl ov1_02127454
	mov r0, r4
	mov r1, #1
	bl ov1_02127388
	mov r0, r4
	mov r1, #0
	mov r2, #0x800
	mov r3, r2
	bl sub_02012A3C
	ldrb r2, [sp]
	mov r0, #1
	add r1, r6, r2, lsl #2
	str r4, [r1, #0x28]
	strb r2, [r5]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov1_02132BD4

	arm_func_start ov1_02132CAC
ov1_02132CAC: ; 0x02132CAC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	add r4, sp, #0x10
	add r1, r1, #0x430
	mov sl, r0
	mov r8, #0
	mov sb, r2
	ldmia r1, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r7, sp, #0x1c
	str r3, [sp, #0xc]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	sub r4, sp, #4
	mov fp, r8
	mov r6, #1
	mov r5, r8
	arm_func_end ov1_02132CAC
_02132D00:
	ldr r1, [sb, r8, lsl #2]
	cmp r1, #0
	beq _02132E98
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, r6
	moveq r0, fp
	cmp r0, #0
	beq _02132E98
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02132E98
	add r0, r1, #0x2f8
	str r5, [sp, #8]
	add r0, r0, #0x400
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r3, [r4]
	ldmia r7, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _02132E98
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r2, _02132EB0 ; =MAIN_BSS_020BA6A0
	mov r1, r0
	ldrb r2, [r2, #0x7db]
	ldr r0, [sl, #0x10]
	ldr r3, [sp, #0xc]
	bl ov1_0212F32C
	mov r4, r0
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [sb, r8, lsl #2]
	ldr r1, [r1, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	bl ov1_0212EE80
	mov r1, r4, lsl #0xc
	mov r4, r0
	smull r1, r0, r4, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [sb, r8, lsl #2]
	mov r2, #1
	bl ov1_02126310
	cmp r4, #0x1000
	bne _02132E08
	ldr r0, [sl, #0x14]
	ldr r1, _02132EB4 ; =0x00000126
	bl sub_02034C44
	ldr r0, [sb, r8, lsl #2]
	mov r1, #0
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _02132E4C
_02132E08:
	ble _02132E2C
	ldr r0, [sl, #0x14]
	mov r1, #0x144
	bl sub_02034C44
	ldr r0, [sb, r8, lsl #2]
	mov r1, #1
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _02132E4C
_02132E2C:
	bge _02132E4C
	ldr r0, [sl, #0x14]
	ldr r1, _02132EB8 ; =0x00000145
	bl sub_02034C44
	ldr r0, [sb, r8, lsl #2]
	mov r1, #2
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
_02132E4C:
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [sp, #0xc]
	bl ov1_0212EE98
	mov r2, r0
	ldr r0, [sb, r8, lsl #2]
	mov r1, #4
	bl ov1_021263A4
	add r1, sl, #0x68
	mov r0, #0xc
	mla r1, r8, r0, r1
	ldr r2, [sb, r8, lsl #2]
	mov r0, sl
	bl ov1_02132FD4
	add sp, sp, #0x28
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02132E98:
	add r8, r8, #1
	cmp r8, #8
	blt _02132D00
	mov r0, #0
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02132EB0: .word MAIN_BSS_020BA6A0
_02132EB4: .word 0x00000126
_02132EB8: .word 0x00000145

	arm_func_start ov1_02132EBC
ov1_02132EBC: ; 0x02132EBC
	mov r0, #5
	bx lr
	arm_func_end ov1_02132EBC

	arm_func_start ov1_02132EC4
ov1_02132EC4: ; 0x02132EC4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #0x24]
	ldr r3, [sp, #0x10]
	ldr r2, [r0, #0x20]
	ldr r1, [sp, #0xc]
	sub r0, ip, r3
	sub r1, r2, r1
	bl FX_Atan2Idx
	ldr r1, _02132F08 ; =0xFFFF4FFC
	adds r0, r0, r1
	addmi r0, r0, #0x10000
	mov r0, r0, asr #0xd
	and r0, r0, #0xff
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_02132F08: .word 0xFFFF4FFC
	arm_func_end ov1_02132EC4

	arm_func_start ov1_02132F0C
ov1_02132F0C: ; 0x02132F0C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x18]
	tst r0, #1
	beq _02132F6C
	ldrb r0, [r4, #0x19]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02132F60
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _02132F60
	bl ov1_02127300
	ldrb r0, [r4, #0x19]
	mov r1, #0
	add r0, r4, r0, lsl #2
	str r1, [r0, #0x28]
	arm_func_end ov1_02132F0C
_02132F60:
	ldrb r0, [r4, #0x18]
	bic r0, r0, #1
	strb r0, [r4, #0x18]
_02132F6C:
	ldr r0, [r4, #0x14]
	mov r1, #0x124
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02132FC4 ; =0x00000125
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02132FC8 ; =0x00000126
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	mov r1, #0x144
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02132FCC ; =0x00000145
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	mov r1, #0x150
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02132FD0 ; =0x00000151
	bl sub_02034C5C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02132FC4: .word 0x00000125
_02132FC8: .word 0x00000126
_02132FCC: .word 0x00000145
_02132FD0: .word 0x00000151

	arm_func_start ov1_02132FD4
ov1_02132FD4: ; 0x02132FD4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r5, r1
	mov r6, r0
	ldr r0, [r5, #8]
	mov r4, r2
	cmp r0, #0
	beq _02132FF8
	bl ov1_02127300
	arm_func_end ov1_02132FD4
_02132FF8:
	mov r0, r6
	bl ov1_0212EE3C
	cmp r0, #0
	addeq sp, sp, #0x1c
	str r0, [r5, #8]
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov lr, #0
	add r0, r4, #0x2f8
	strh lr, [r5, #6]
	mov ip, #1
	add r3, sp, #0x10
	str ip, [r5]
	add r0, r0, #0x400
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #0x18]
	cmp r0, #0x10000
	movge r0, #2
	strgeb r0, [r5, #4]
	bge _02133054
	cmp r0, #0xb000
	strleb lr, [r5, #4]
	strgtb ip, [r5, #4]
_02133054:
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #8]
	ldr r1, [r1, #4]
	bl ov1_021270FC
	ldrb r2, [r5, #4]
	ldr r0, [r5, #8]
	mov r1, #7
	bl ov1_021273A0
	ldr r2, [r4, #0x484]
	ldr r0, [r5, #8]
	ldr r3, [r4, #0x20]
	ldr r1, [r4, #0x488]
	add r5, r3, r2
	str r2, [sp]
	ldr r3, [r4, #0x8c]
	ldr r2, [r4, #0xa0]
	ldr ip, [r4, #0x24]
	add r2, r3, r2
	ldr r4, [r4, #0xb0]
	add r3, ip, r1
	add r2, r4, r2
	sub r2, r3, r2
	str r5, [sp, #8]
	add r3, sp, #8
	add r0, r0, #0xc
	str r2, [sp, #0xc]
	str r1, [sp, #4]
	ldmia r3, {r1, r2}
	bl sub_02011D3C
	ldr r0, [r6, #0x14]
	mov r1, #0x150
	bl sub_02034C44
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}

	arm_func_start ov1_021330DC
ov1_021330DC: ; 0x021330DC
	cmp r1, #0x28
	movhs r0, #2
	bxhs lr
	cmp r1, #0x14
	movhs r0, #1
	movlo r0, #0
	bx lr
	arm_func_end ov1_021330DC

	arm_func_start ov1_021330F8
ov1_021330F8: ; 0x021330F8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r3, _02133144 ; =PTR_LAB_overlay_1_02133148_overlay_1_0214172c
	add r0, r4, #0x60
	mov r1, #0
	mov r2, #8
	str r3, [r4]
	bl MI_CpuFill8
	add r0, r4, #0x68
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02133144: .word PTR_LAB_overlay_1_02133148_overlay_1_0214172c
	arm_func_end ov1_021330F8

	arm_func_start ov1_02133148
ov1_02133148: ; 0x02133148
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02133148

	arm_func_start ov1_0213315C
ov1_0213315C: ; 0x0213315C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213315C

	arm_func_start ov1_02133178
ov1_02133178: ; 0x02133178
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	mov sb, #0
	mov r8, r0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r7, r3
	mov r5, sb
	mov r6, #1
	mov r4, sb
	arm_func_end ov1_02133178
_021331A0:
	add r0, r8, sb, lsl #1
	ldrb r0, [r0, #0x60]
	tst r0, #1
	beq _021331EC
	add r0, r8, sb, lsl #2
	ldr r0, [r0, #0x4c]
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, r6
	moveq r1, r5
	cmp r1, #0
	bne _021331EC
	bl ov1_02127300
	add r0, r8, sb, lsl #2
	str r4, [r0, #0x4c]
	add r1, r8, sb, lsl #1
	ldrb r0, [r1, #0x60]
	bic r0, r0, #1
	strb r0, [r1, #0x60]
_021331EC:
	add r0, sb, #1
	and sb, r0, #0xff
	cmp sb, #4
	blo _021331A0
	mov sl, #0
	add r6, r8, #0x68
	mov r4, sl
	mov r5, #0x40
	mov fp, sl
_02133210:
	ldrb r0, [r6, sl, lsl #3]
	add sb, r6, sl, lsl #3
	tst r0, #1
	ldr r0, [sb, #4]
	beq _02133240
	mov r1, r5
	mov r2, fp
	bl sub_020129F4
	ldrb r0, [sb]
	bic r0, r0, #1
	strb r0, [sb]
	b _0213325C
_02133240:
	cmp r0, #0
	beq _0213325C
	ldrb r1, [r0, #0x108]
	cmp r1, #0
	bne _0213325C
	bl ov1_02127300
	str r4, [sb, #4]
_0213325C:
	add r0, sl, #1
	and sl, r0, #0xff
	cmp sl, #0x10
	blo _02133210
	ldr fp, _02133594 ; =MAIN_BSS_020BAE7B
	mov r5, #0
_02133274:
	ldr r1, [r7, r5, lsl #2]
	cmp r1, #0
	beq _02133520
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02133520
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02133520
	add r0, r1, #0x2f8
	add r0, r0, #0x400
	add r3, sp, #0x28
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r2, [sp, #0x34]
	str r1, [sp, #0x38]
	str r0, [sp, #0x3c]
	mov r6, #0
	add sb, r8, #0x68
	sub r4, sp, #4
_021332EC:
	add r0, r8, r6, lsl #2
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _02133510
	add r1, r0, #0x430
	mov r0, #0
	str r0, [sp, #8]
	ldmia r1, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add r0, sp, #0x34
	ldr r3, [r4]
	ldmia r0, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _02133510
	add r3, r8, r6, lsl #1
	ldrb r3, [r3, #0x61]
	ldrb r2, [fp]
	ldr r0, [r8, #0x10]
	sub r3, r3, #1
	mov r1, #0xb
	and r3, r3, #0xff
	bl ov1_0212F32C
	mov sl, r0
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [r7, r5, lsl #2]
	ldr r1, [r1, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	bl ov1_0212EE80
	mov r1, sl, lsl #0xc
	mov sl, r0
	smull r1, r0, sl, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [r7, r5, lsl #2]
	mov r2, #1
	bl ov1_02126310
	cmp sl, #0x1000
	bne _021333B4
	ldr r0, [r7, r5, lsl #2]
	mov r1, #0
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _021333E0
_021333B4:
	ble _021333CC
	ldr r0, [r7, r5, lsl #2]
	mov r1, #1
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _021333E0
_021333CC:
	bge _021333E0
	ldr r0, [r7, r5, lsl #2]
	mov r1, #2
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
_021333E0:
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	add r1, r8, r6, lsl #1
	ldrb r1, [r1, #0x61]
	sub r1, r1, #1
	and r1, r1, #0xff
	bl ov1_0212EE98
	mov r2, r0
	ldr r0, [r7, r5, lsl #2]
	mov r1, #3
	bl ov1_021263A4
	add r0, r8, r6, lsl #2
	ldr r0, [r0, #0x4c]
	bl ov1_02127300
	add r1, r8, r6, lsl #2
	mov r0, #0
	str r0, [r1, #0x4c]
	add r2, r8, r6, lsl #1
	ldrb r0, [r2, #0x60]
	ldr r1, _02133598 ; =0x0000013A
	bic r0, r0, #1
	strb r0, [r2, #0x60]
	ldr r0, [r8, #0x14]
	bl sub_02034C44
	mov r0, r8
	add r1, sp, #0x14
	bl ov1_02133B08
	cmp r0, #0
	beq _02133510
	ldrb r1, [sp, #0x14]
	ldrb r0, [sb, r1, lsl #3]
	add sl, sb, r1, lsl #3
	orr r0, r0, #1
	strb r0, [sb, r1, lsl #3]
	mov r0, #0
	strb r0, [sl, #1]
	ldr r0, [sl, #4]
	cmp r0, #0
	beq _02133488
	bl ov1_02127300
_02133488:
	mov r0, r8
	bl ov1_0212EE3C
	str r0, [sl, #4]
	cmp r0, #0
	beq _02133510
	ldr r1, [r8, #0xc]
	ldr r1, [r1, #4]
	bl ov1_021270FC
	ldr r0, [sl, #4]
	mov r1, #0x20
	mov r2, #2
	bl ov1_02127454
	ldr r3, [r7, r5, lsl #2]
	ldr r0, [sl, #4]
	ldr r2, [r3, #0x484]
	ldr r1, [r3, #0x20]
	ldr sl, [r3, #0x488]
	add r1, r1, r2
	str r1, [sp, #0x20]
	ldr ip, [r3, #0x24]
	str r2, [sp, #0x18]
	add r2, ip, sl
	str sl, [sp, #0x1c]
	ldr r1, [r3, #0xb0]
	ldr sl, [r3, #0x8c]
	ldr r3, [r3, #0xa0]
	add r0, r0, #0xc
	add r3, sl, r3
	add r1, r1, r3
	sub r1, r2, r1
	str r1, [sp, #0x24]
	add r1, sp, #0x20
	ldmia r1, {r1, r2}
	bl sub_02011D3C
_02133510:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #4
	blo _021332EC
_02133520:
	add r0, r5, #1
	and r5, r0, #0xff
	cmp r5, #8
	blo _02133274
	ldr r0, [r8, #0x18]
	cmp r0, #0
	beq _02133548
	cmp r0, #1
	beq _02133560
	b _02133574
_02133548:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, r8
	mov r3, r7
	bl ov1_021335A4
	b _02133574
_02133560:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, r8
	mov r3, r7
	bl ov1_021336CC
_02133574:
	ldrh r0, [r8, #4]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	strneh r0, [r8, #4]
	movne r0, #1
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02133594: .word MAIN_BSS_020BAE7B
_02133598: .word 0x0000013A

	arm_func_start ov1_0213359C
ov1_0213359C: ; 0x0213359C
	mov r0, #0xb
	bx lr
	arm_func_end ov1_0213359C

	arm_func_start ov1_021335A4
ov1_021335A4: ; 0x021335A4
	stmdb sp!, {r4, lr}
	ldrb r2, [r1, #4]
	mov r4, r0
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	ldrh r2, [r1, #0xa]
	sub r2, r2, #0x80
	mov r2, r2, lsl #0xc
	str r2, [r4, #0x24]
	str r2, [r4, #0x1c]
	ldrh r1, [r1, #0xc]
	sub r1, r1, #0x60
	mov r1, r1, lsl #0xc
	str r1, [r4, #0x28]
	str r1, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	str r1, [r4, #0x2c]
	ldr r1, [r4, #0x20]
	str r1, [r4, #0x30]
	bl ov1_0212EE3C
	str r0, [r4, #0x40]
	ldr r1, [r4, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	ldr r0, [r4, #0x40]
	add r1, r4, #0x1c
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [r4, #0x40]
	mov r1, #0x20
	mov r2, #0
	bl ov1_02127454
	mov r0, r4
	bl ov1_0212EE3C
	str r0, [r4, #0x44]
	ldr r1, [r4, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	ldr r0, [r4, #0x44]
	add r1, r4, #0x1c
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [r4, #0x44]
	mov r1, #0x20
	mov r2, #1
	bl ov1_02127454
	mov r2, #0x28
	ldr r0, [r4, #0x44]
	mov r1, #0
	mov r3, r2
	bl sub_02012A3C
	mov r0, r4
	bl ov1_0212EE3C
	str r0, [r4, #0x48]
	ldr r1, [r4, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	ldr r0, [r4, #0x48]
	add r1, r4, #0x24
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [r4, #0x48]
	mov r1, #0x20
	mov r2, #2
	bl ov1_02127454
	ldr r0, [r4, #0x14]
	mov r1, #0x138
	bl sub_02034C44
	mov r0, #1
	str r0, [r4, #0x18]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021335A4

	arm_func_start ov1_021336CC
ov1_021336CC: ; 0x021336CC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldrb r2, [r1, #6]
	mov sl, r0
	mov sb, r3
	cmp r2, #0
	beq _02133800
	ldr r3, [sl, #0x24]
	ldr r0, [sl, #0x1c]
	ldr r2, [sl, #0x28]
	ldr r1, [sl, #0x20]
	sub r0, r3, r0
	sub r1, r2, r1
	bl sub_02007254
	mov r1, r0
	mov r0, sl
	bl ov1_02133AAC
	movs r5, r0
	beq _021337CC
	add r1, sp, #0x14
	mov r0, sl
	bl ov1_02133AD4
	cmp r0, #0
	beq _021337CC
	mov r0, sl
	bl ov1_0212EE3C
	ldrb r1, [sp, #0x14]
	mov r4, r0
	add r1, sl, r1, lsl #2
	str r4, [r1, #0x4c]
	ldr r1, [sl, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	mov r0, r4
	mov r1, #0x20
	mov r2, #2
	bl ov1_02127454
	add r1, sl, #0x24
	add r0, r4, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r1, [sl, #0x20]
	ldr r0, [sl, #0x28]
	ldr r2, [sl, #0x1c]
	sub r0, r1, r0
	ldr r1, [sl, #0x24]
	sub r1, r2, r1
	bl FX_Atan2Idx
	mov r1, r0
	add r0, r4, #0xc
	ldr r2, _02133A40 ; =DAT_overlay_1_02140270
	ldr r2, [r2, r5, lsl #2]
	bl sub_02011C90
	ldrb r0, [sp, #0x14]
	ldr r1, _02133A44 ; =0x00000139
	add r0, sl, r0, lsl #1
	strb r5, [r0, #0x61]
	ldr r0, [sl, #0x14]
	bl sub_02034C44
	add r2, sl, #0x60
	ldrb r1, [sp, #0x14]
	ldrb r0, [r2, r1, lsl #1]
	orr r0, r0, #1
	strb r0, [r2, r1, lsl #1]
	arm_func_end ov1_021336CC
_021337CC:
	ldr r0, [sl, #0x40]
	bl ov1_02127300
	ldr r0, [sl, #0x44]
	bl ov1_02127300
	ldr r0, [sl, #0x48]
	bl ov1_02127300
	ldr r0, [sl, #0x14]
	mov r1, #0x138
	bl sub_02034C5C
	mov r0, #0
	add sp, sp, #0x18
	str r0, [sl, #0x18]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02133800:
	ldrh r2, [r1, #0xa]
	add r0, sl, #0x24
	sub r2, r2, #0x80
	mov r2, r2, lsl #0xc
	str r2, [sl, #0x24]
	ldrh r1, [r1, #0xc]
	sub r1, r1, #0x60
	mov r1, r1, lsl #0xc
	str r1, [sl, #0x28]
	ldr r3, [sl, #0x48]
	ldmia r0, {r1, r2}
	add r0, r3, #0xc
	bl sub_02011D3C
	ldr r0, [sl, #0x24]
	str r0, [sl, #0x34]
	ldr r0, [sl, #0x28]
	str r0, [sl, #0x38]
	ldr r3, [sl, #0x24]
	ldr r0, [sl, #0x1c]
	ldr r2, [sl, #0x28]
	ldr r1, [sl, #0x20]
	sub r0, r3, r0
	sub r1, r2, r1
	bl sub_02007254
	mov r1, r0, asr #0x1f
	mov r1, r1, lsl #0xc
	orr r1, r1, r0, lsr #20
	mov r0, r0, lsl #0xc
	mov r2, #0x2c000
	mov r3, #0
	bl _ll_div
	mov r2, r0
	ldr r0, [sl, #0x44]
	mov r1, #0
	mov r3, #0x1000
	bl sub_02012A3C
	add r1, sl, #0x24
	ldr r0, [sl, #0x44]
	ldmia r1, {r1, r2}
	bl sub_02012894
	mov r7, #0
	mov r8, r7
	add r4, sl, #0x2c
	mov fp, r7
	mov r6, #1
	mov r5, r7
_021338B8:
	ldr r1, [sb, r8, lsl #2]
	cmp r1, #0
	beq _02133944
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, r6
	moveq r0, fp
	cmp r0, #0
	beq _02133944
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02133944
	add r0, r1, #0x2f8
	add r0, r0, #0x400
	mov r3, sp
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	ldmia r4, {r0, r1, r2, r3}
	bl sub_02006764
	cmp r0, #0
	beq _02133944
	ldr r0, [sb, r8, lsl #2]
	ldr r1, [r0, #0x8c]
	ldr r2, [r0, #0xb0]
	ldr r0, [r0, #0xa0]
	add r0, r1, r0
	add r0, r2, r0
	cmp r0, #0x8000
	movlt r7, #1
_02133944:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #8
	blo _021338B8
	mov sb, #0
	mov r8, #1
	add r4, sl, #0x2c
	mov r6, sb
	mov fp, r8
	mov r5, sb
_0213396C:
	ldr r0, [sl, #0x5c]
	ldr r1, [r0, sb, lsl #2]
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, r8
	moveq r0, r6
	cmp r0, #0
	beq _021339F0
	ldrh r0, [r1, #4]
	tst r0, #0x100
	moveq r0, fp
	movne r0, #0
	cmp r0, #0
	beq _021339F0
	add r0, r1, #0x430
	mov r3, sp
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	ldmia r4, {r0, r1, r2, r3}
	bl sub_02006764
	cmp r0, #0
	beq _021339F0
	ldr r0, [sl, #0x5c]
	ldr r2, [r0, sb, lsl #2]
	ldr r1, [r2, #0x8c]
	ldr r0, [r2, #0xa0]
	ldr r2, [r2, #0xb0]
	add r0, r1, r0
	add r0, r2, r0
	cmp r0, #0x8000
	movlt r7, #1
_021339F0:
	add r0, sb, #1
	and sb, r0, #0xff
	cmp sb, #0x60
	blo _0213396C
	cmp r7, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl, #0x40]
	bl ov1_02127300
	ldr r0, [sl, #0x44]
	bl ov1_02127300
	ldr r0, [sl, #0x48]
	bl ov1_02127300
	ldr r0, [sl, #0x14]
	mov r1, #0x138
	bl sub_02034C5C
	mov r0, #0
	str r0, [sl, #0x18]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02133A40: .word DAT_overlay_1_02140270
_02133A44: .word 0x00000139

	arm_func_start ov1_02133A48
ov1_02133A48: ; 0x02133A48
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _02133A7C
	ldr r0, [r4, #0x40]
	bl ov1_02127300
	ldr r0, [r4, #0x44]
	bl ov1_02127300
	ldr r0, [r4, #0x48]
	bl ov1_02127300
	mov r0, #0
	str r0, [r4, #0x18]
	arm_func_end ov1_02133A48
_02133A7C:
	ldr r0, [r4, #0x14]
	mov r1, #0x138
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02133AA4 ; =0x00000139
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02133AA8 ; =0x0000013A
	bl sub_02034C5C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02133AA4: .word 0x00000139
_02133AA8: .word 0x0000013A

	arm_func_start ov1_02133AAC
ov1_02133AAC: ; 0x02133AAC
	cmp r1, #0x10000
	movlt r0, #0
	bxlt lr
	cmp r1, #0x30000
	movlt r0, #1
	bxlt lr
	cmp r1, #0x5c000
	movlt r0, #2
	movge r0, #3
	bx lr
	arm_func_end ov1_02133AAC

	arm_func_start ov1_02133AD4
ov1_02133AD4: ; 0x02133AD4
	mov r3, #0
	arm_func_end ov1_02133AD4
_02133AD8:
	add r2, r0, r3, lsl #1
	ldrb r2, [r2, #0x60]
	tst r2, #1
	streqb r3, [r1]
	moveq r0, #1
	bxeq lr
	add r2, r3, #1
	and r3, r2, #0xff
	cmp r3, #4
	blo _02133AD8
	mov r0, #0
	bx lr

	arm_func_start ov1_02133B08
ov1_02133B08: ; 0x02133B08
	mov r3, #0
	arm_func_end ov1_02133B08
_02133B0C:
	add r2, r0, r3, lsl #1
	ldrb r2, [r2, #0x60]
	tst r2, #1
	streqb r3, [r1]
	moveq r0, #1
	bxeq lr
	add r2, r3, #1
	and r3, r2, #0xff
	cmp r3, #0x10
	blo _02133B0C
	mov r0, #0
	bx lr

	arm_func_start ov1_02133B3C
ov1_02133B3C: ; 0x02133B3C
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end ov1_02133B3C

	arm_func_start ov1_02133B44
ov1_02133B44: ; 0x02133B44
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _02133B70 ; =PTR_LAB_overlay_1_02133b74_overlay_1_0214176c
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02133B70: .word PTR_LAB_overlay_1_02133b74_overlay_1_0214176c
	arm_func_end ov1_02133B44

	arm_func_start ov1_02133B74
ov1_02133B74: ; 0x02133B74
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02133B74

	arm_func_start ov1_02133B88
ov1_02133B88: ; 0x02133B88
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02133B88

	arm_func_start ov1_02133BA4
ov1_02133BA4: ; 0x02133BA4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, [r0]
	mov r5, r0
	ldr r1, [r1, #0x10]
	mov r4, r2
	blx r1
	ldr r2, _02133BF8 ; =MAIN_BSS_020BA6A0
	mov r1, r0
	ldrb r2, [r2, #0x7db]
	ldr r0, [r5, #0x10]
	mov r3, #0
	bl ov1_0212F32C
	add r1, r4, #0x100
	strh r0, [r1, #0x9e]
	ldrh r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	strneh r0, [r5, #4]
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02133BF8: .word MAIN_BSS_020BA6A0
	arm_func_end ov1_02133BA4

	arm_func_start ov1_02133BFC
ov1_02133BFC: ; 0x02133BFC
	mov r0, #0
	bx lr
	arm_func_end ov1_02133BFC

	arm_func_start ov1_02133C04
ov1_02133C04: ; 0x02133C04
	bx lr
	arm_func_end ov1_02133C04

	arm_func_start ov1_02133C08
ov1_02133C08: ; 0x02133C08
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _02133C34 ; =PTR_LAB_overlay_1_02133c38_overlay_1_021417ac
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02133C34: .word PTR_LAB_overlay_1_02133c38_overlay_1_021417ac
	arm_func_end ov1_02133C08

	arm_func_start ov1_02133C38
ov1_02133C38: ; 0x02133C38
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02133C38

	arm_func_start ov1_02133C4C
ov1_02133C4C: ; 0x02133C4C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02133C4C

	arm_func_start ov1_02133C68
ov1_02133C68: ; 0x02133C68
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, r0
	mov r7, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r8, r3
	add r5, sb, #0x34
	mov r4, r7
	mov fp, #0x3c
	mov sl, #0xc
	arm_func_end ov1_02133C68
_02133C94:
	mla r6, r7, sl, r5
	ldr r0, [sb, #0x30]
	cmp r0, r6
	beq _02133D08
	ldrb r0, [r6]
	tst r0, #1
	beq _02133CE8
	ldrh r0, [r6, #2]
	sub r0, r0, #1
	strh r0, [r6, #2]
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _02133D08
	ldr r0, [r6, #8]
	mov r1, fp
	mov r2, #0
	bl sub_020129F4
	ldrb r0, [r6]
	bic r0, r0, #1
	strb r0, [r6]
	b _02133D08
_02133CE8:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _02133D08
	ldrb r1, [r0, #0x108]
	cmp r1, #0
	bne _02133D08
	bl ov1_02127300
	str r4, [r6, #8]
_02133D08:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #0x10
	blo _02133C94
	mov r7, #0
_02133D1C:
	ldr r0, [r8, r7, lsl #2]
	cmp r0, #0
	beq _02133EA4
	add r1, r0, #0x100
	ldrh r1, [r1, #0x88]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _02133EA4
	ldrh r1, [r0, #4]
	tst r1, #0x200
	moveq r1, #1
	movne r1, #0
	cmp r1, #0
	beq _02133EA4
	bl ov1_02126424
	cmp r0, #0
	bne _02133EA4
	mov r6, #0
	sub r4, sp, #4
	add r5, sb, #0x34
	mov fp, r6
	mov sl, #0xc00
_02133D7C:
	mov r0, #0xc
	mul r0, r6, r0
	add r1, r5, r0
	ldrb r0, [r5, r0]
	tst r0, #1
	beq _02133E94
	str fp, [sp, #8]
	ldr r0, [r1, #8]
	add r0, r0, #0x430
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r3, [r4]
	ldr r0, [r8, r7, lsl #2]
	add r0, r0, #0x2f8
	add r0, r0, #0x400
	ldmia r0, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _02133E94
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r1, #0
	bl ov1_0212EE98
	mov r2, r0
	ldr r0, [r8, r7, lsl #2]
	ldr r1, [r0, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	cmp r1, #0x10
	addls pc, pc, r1, lsl #2
	b _02133E8C
_02133E00: ; jump table
	b _02133E8C ; case 0
	b _02133E8C ; case 1
	b _02133E8C ; case 2
	b _02133E8C ; case 3
	b _02133E44 ; case 4
	b _02133E8C ; case 5
	b _02133E8C ; case 6
	b _02133E6C ; case 7
	b _02133E6C ; case 8
	b _02133E8C ; case 9
	b _02133E8C ; case 10
	b _02133E8C ; case 11
	b _02133E6C ; case 12
	b _02133E6C ; case 13
	b _02133E8C ; case 14
	b _02133E8C ; case 15
	b _02133E6C ; case 16
_02133E44:
	mov r2, r2, lsl #0xc
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xd
	orr r1, r1, r2, lsr #19
	mov r2, r2, lsl #0xd
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mov r1, r2, lsl #4
	mov r2, r1, lsr #0x10
	b _02133E8C
_02133E6C:
	mov r3, r2, lsl #0xc
	umull lr, ip, r3, sl
	mov r2, r3, asr #0x1f
	mla ip, r2, sl, ip
	mov r1, lr, lsr #0xc
	orr r1, r1, ip, lsl #20
	mov r1, r1, lsl #4
	mov r2, r1, lsr #0x10
_02133E8C:
	mov r1, #2
	bl ov1_021263A4
_02133E94:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x10
	blo _02133D7C
_02133EA4:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #8
	blo _02133D1C
	ldr r0, [sb, #0x18]
	cmp r0, #0
	beq _02133ECC
	cmp r0, #1
	beq _02133EE4
	b _02133EF8
_02133ECC:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, sb
	mov r3, r8
	bl ov1_02133F9C
	b _02133EF8
_02133EE4:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, sb
	mov r3, r8
	bl ov1_02134120
_02133EF8:
	ldrh r0, [sb, #4]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	strneh r0, [sb, #4]
	movne r0, #1
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_02133F18
ov1_02133F18: ; 0x02133F18
	mov r0, #7
	bx lr
	arm_func_end ov1_02133F18

	arm_func_start ov1_02133F20
ov1_02133F20: ; 0x02133F20
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x30]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r1, #2]
	ldr r4, [r1, #8]
	mov r1, #0
	cmp r0, #0x1e
	ldr r2, [r4, #0x11c]
	ldr r3, [r4, #0x134]
	blo _02133F68
	mov r0, r4
	bl sub_02012A3C
	ldr r0, [r5, #0x30]
	mov r1, #0xb4
	strh r1, [r0, #2]
	b _02133F80
	arm_func_end ov1_02133F20
_02133F68:
	mov r0, r4
	bl sub_02012A3C
	mov r0, r4
	mov r1, #0x3c
	mov r2, #0
	bl sub_020129F4
_02133F80:
	mov r0, #0
	str r0, [r5, #0x30]
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x14]
	mov r1, #0x134
	bl sub_02034C5C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02133F9C
ov1_02133F9C: ; 0x02133F9C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldrb r2, [r1, #4]
	mov sl, r0
	mov sb, r3
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r2, [r1, #0xa]
	mov r8, #0
	mov r7, #1
	sub r2, r2, #0x80
	mov r2, r2, lsl #0xc
	str r2, [sl, #0x1c]
	ldrh r1, [r1, #0xc]
	mov r0, #0x10000
	sub r5, sp, #8
	sub r1, r1, #0x60
	mov r1, r1, lsl #0xc
	str r1, [sl, #0x20]
	ldr r1, [sl, #0x1c]
	add r4, sl, #0x1c
	str r1, [sl, #0x24]
	ldr r1, [sl, #0x20]
	mov r6, r8
	str r1, [sl, #0x28]
	str r0, [sl, #0x2c]
	mov fp, r7
	arm_func_end ov1_02133F9C
_02134004:
	ldr r1, [sb, r8, lsl #2]
	cmp r1, #0
	beq _02134068
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, r7
	moveq r0, r6
	cmp r0, #0
	beq _02134068
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, fp
	movne r0, #0
	cmp r0, #0
	beq _02134068
	add r0, r1, #0x2f8
	add r0, r0, #0x400
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	ldmia r5, {r2, r3}
	ldmia r4, {r0, r1}
	bl sub_02006100
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02134068:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #8
	blo _02134004
	mov r0, sl
	bl ov1_021341FC
	str r0, [sl, #0x30]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	bl ov1_0212EE3C
	movs r4, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sl, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	add r1, sl, #0x1c
	add r0, r4, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	mov r0, r4
	mov r1, #0x20
	mov r2, #0
	bl ov1_02127454
	mov r0, r4
	mov r1, #0
	mov r2, #0x28
	mov r3, r2
	bl sub_02012A3C
	mov r0, r4
	mov r1, #0x3c
	mov r2, #0x1000
	mov r3, r2
	bl sub_02012A3C
	ldr r0, [sl, #0x30]
	mov r1, #0x134
	str r4, [r0, #8]
	ldr r2, [sl, #0x30]
	ldrb r0, [r2]
	orr r0, r0, #1
	strb r0, [r2]
	ldr r0, [sl, #0x14]
	bl sub_02034C44
	mov r0, #1
	str r0, [sl, #0x18]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_02134120
ov1_02134120: ; 0x02134120
	stmdb sp!, {r3, r4, r5, lr}
	ldrh r2, [r1, #0xa]
	mov r4, r0
	sub r0, r2, #0x80
	mov r0, r0, lsl #0xc
	str r0, [r4, #0x1c]
	ldrh r0, [r1, #0xc]
	sub r0, r0, #0x60
	mov r0, r0, lsl #0xc
	str r0, [r4, #0x20]
	ldr r2, [r4, #0x30]
	ldrh r0, [r2, #2]
	add r0, r0, #1
	strh r0, [r2, #2]
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _0213418C
	add r0, r4, #0x24
	sub r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, r4, #0x1c
	ldmia r3, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006100
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_02134120
_0213418C:
	ldr r1, [r4, #0x30]
	ldrh r0, [r1, #2]
	ldr r5, [r1, #8]
	mov r1, #0
	cmp r0, #0x1e
	ldr r2, [r5, #0x11c]
	ldr r3, [r5, #0x134]
	blo _021341C4
	mov r0, r5
	bl sub_02012A3C
	ldr r0, [r4, #0x30]
	mov r1, #0xb4
	strh r1, [r0, #2]
	b _021341EC
_021341C4:
	mov r0, r5
	bl sub_02012A3C
	mov r0, r5
	mov r1, #0x3c
	mov r2, #0
	bl sub_020129F4
	ldr r1, [r4, #0x30]
	ldrb r0, [r1]
	bic r0, r0, #1
	strb r0, [r1]
_021341EC:
	mov r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x18]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_021341FC
ov1_021341FC: ; 0x021341FC
	stmdb sp!, {r3, lr}
	mov lr, #0
	mov r1, #0xc
	arm_func_end ov1_021341FC
_02134208:
	mul ip, lr, r1
	add r3, r0, ip
	ldrb r2, [r3, #0x34]
	tst r2, #1
	ldreq r2, [r3, #0x3c]
	cmpeq r2, #0
	addeq r0, r0, #0x34
	addeq r0, r0, ip
	ldmeqia sp!, {r3, pc}
	add r2, lr, #1
	and lr, r2, #0xff
	cmp lr, #0x10
	blo _02134208
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov1_02134244
ov1_02134244: ; 0x02134244
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _02134270 ; =PTR_LAB_overlay_1_02134274_overlay_1_021417ec
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02134270: .word PTR_LAB_overlay_1_02134274_overlay_1_021417ec
	arm_func_end ov1_02134244

	arm_func_start ov1_02134274
ov1_02134274: ; 0x02134274
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02134274

	arm_func_start ov1_02134288
ov1_02134288: ; 0x02134288
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02134288

	arm_func_start ov1_021342A4
ov1_021342A4: ; 0x021342A4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x18]
	tst r0, #1
	bne _0213431C
	ldr r0, _02134348 ; =MAIN_BSS_020B26A0
	ldrh r3, [r4, #4]
	ldrb r1, [r2, #0x19c]
	ldrb r0, [r0, #2]
	add r1, r3, r1
	and r1, r1, #0xff
	cmp r1, r0
	movhs r1, r0
	strb r1, [r2, #0x19c]
	ldr r0, [r4, #0x1c]
	bl sub_0201A018
	ldrh r1, [r4, #4]
	mov r0, r4
	and r1, r1, #0xff
	bl ov1_02134354
	mov r1, r0
	ldr r0, [r4, #0x1c]
	bl sub_0201A024
	ldr r0, [r4, #0x14]
	ldr r1, _0213434C ; =0x00000143
	bl sub_02034C44
	ldrb r0, [r4, #0x18]
	orr r0, r0, #1
	strb r0, [r4, #0x18]
	b _02134340
	arm_func_end ov1_021342A4
_0213431C:
	ldr r0, [r4, #0x1c]
	bl sub_0201A0DC
	cmp r0, #0
	bne _02134340
	ldr r0, [r4, #0x14]
	ldr r1, _0213434C ; =0x00000143
	bl sub_02034C5C
	mov r0, #0
	ldmia sp!, {r4, pc}
_02134340:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02134348: .word MAIN_BSS_020B26A0
_0213434C: .word 0x00000143

	arm_func_start ov1_02134350
ov1_02134350: ; 0x02134350
	bx lr
	arm_func_end ov1_02134350

	arm_func_start ov1_02134354
ov1_02134354: ; 0x02134354
	cmp r1, #5
	movls r0, #0
	bxls lr
	cmp r1, #0xa
	movls r0, #1
	bxls lr
	cmp r1, #0x14
	movls r0, #2
	bxls lr
	cmp r1, #0x1e
	movls r0, #3
	movhi r0, #4
	bx lr
	arm_func_end ov1_02134354

	arm_func_start ov1_02134388
ov1_02134388: ; 0x02134388
	mov r0, #0x11
	bx lr
	arm_func_end ov1_02134388

	arm_func_start ov1_02134390
ov1_02134390: ; 0x02134390
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _021343BC ; =PTR_LAB_overlay_1_021343c0_overlay_1_02141828
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_021343BC: .word PTR_LAB_overlay_1_021343c0_overlay_1_02141828
	arm_func_end ov1_02134390

	arm_func_start ov1_021343C0
ov1_021343C0: ; 0x021343C0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021343C0

	arm_func_start ov1_021343D4
ov1_021343D4: ; 0x021343D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021343D4

	arm_func_start ov1_021343F0
ov1_021343F0: ; 0x021343F0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldrh r2, [r5, #4]
	mov r4, r1
	cmp r2, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	sub r2, r2, #1
	mov r1, r3
	strh r2, [r5, #4]
	bl ov1_02134600
	ldrh r2, [r4, #0xa]
	ldrh r1, [r4, #0xc]
	ldrb r0, [r4, #4]
	sub r2, r2, #0x80
	sub r1, r1, #0x60
	mov r3, r2, lsl #0xc
	mov r2, r1, lsl #0xc
	str r3, [sp, #4]
	str r2, [sp, #8]
	cmp r0, #0
	beq _021344A4
	str r3, [r5, #0x20]
	str r2, [r5, #0x24]
	mov r2, #0
	add r1, sp, #0
	mov r0, r5
	strb r2, [sp]
	bl ov1_02134770
	cmp r0, #0
	beq _021344A4
	ldrb r1, [sp]
	add r0, sp, #4
	strb r1, [r5, #0x19]
	ldrb r3, [sp]
	ldmia r0, {r1, r2}
	add r0, r5, r3, lsl #2
	ldr r0, [r0, #0x28]
	add r0, r0, #0xc
	bl sub_02011D3C
	ldrb r0, [r5, #0x18]
	orr r0, r0, #1
	strb r0, [r5, #0x18]
	arm_func_end ov1_021343F0
_021344A4:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _02134528
	ldrb r0, [r5, #0x18]
	tst r0, #1
	beq _021344F8
	ldrb r0, [r5, #0x19]
	add r0, r5, r0, lsl #2
	ldr r2, [r0, #0x28]
	cmp r2, #0
	beq _021344F8
	ldr r0, [r2, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _021344F8
	add r1, sp, #4
	add r0, r2, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
_021344F8:
	ldrh r0, [r5, #0x1c]
	cmp r0, #0xa
	bne _02134520
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r1, [r5, #0x20]
	str r0, [r5, #0x24]
	mov r0, #0
	strh r0, [r5, #0x1c]
	b _02134528
_02134520:
	addlo r0, r0, #1
	strloh r0, [r5, #0x1c]
_02134528:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _021345F0
	ldrb r0, [r5, #0x18]
	tst r0, #1
	beq _021345E4
	ldrb r0, [r5, #0x19]
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021345E0
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _021345E0
	add r1, sp, #4
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r3, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #4]
	ldr r1, [r5, #0x20]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	ldrb r3, [r5, #0x19]
	mov r1, r0
	mov r2, #0x6000
	add r0, r5, r3, lsl #2
	ldr r0, [r0, #0x28]
	add r0, r0, #0xc
	bl sub_02011C90
	ldr r0, [r5, #0x14]
	ldr r1, _021345FC ; =0x0000012A
	bl sub_02034C44
	ldrb r1, [r5, #0x19]
	mov r0, #6
	add r2, r5, #0x38
	smulbb r1, r1, r0
	ldrb r0, [r2, r1]
	orr r0, r0, #1
	strb r0, [r2, r1]
	b _021345E4
_021345E0:
	bl ov1_02127300
_021345E4:
	ldrb r0, [r5, #0x18]
	bic r0, r0, #1
	strb r0, [r5, #0x18]
_021345F0:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021345FC: .word 0x0000012A

	arm_func_start ov1_02134600
ov1_02134600: ; 0x02134600
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #0
	mov r7, #1
	mov r5, #6
	mov sl, r0
	mov sb, r1
	mov r6, r8
	mov fp, r7
	mov r4, r5
	arm_func_end ov1_02134600
_02134624:
	add r0, sl, r8, lsl #2
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _02134700
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, r7
	moveq r0, r6
	cmp r0, #0
	beq _02134700
	ldrb r0, [sl, #0x18]
	tst r0, #1
	beq _02134664
	ldrb r0, [sl, #0x19]
	cmp r0, r8
	beq _02134700
_02134664:
	ldrh r0, [r1, #4]
	tst r0, #0x100
	moveq r0, fp
	movne r0, #0
	cmp r0, #0
	beq _021346D0
	mov r0, sl
	mov r2, sb
	bl ov1_02134820
	cmp r0, #0
	beq _021346D0
	add r3, sl, r8, lsl #2
	mov r1, #0
	ldr r2, [r3, #0x28]
	mov r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r3, #0x28]
	bl ov1_02127388
	mla r3, r8, r5, sl
	ldrb r2, [r3, #0x38]
	add r0, sl, r8, lsl #2
	mov r1, #0x20
	orr r2, r2, #2
	strb r2, [r3, #0x38]
	ldr r0, [r0, #0x28]
	mov r2, #1
	bl ov1_02127454
_021346D0:
	mla r0, r8, r4, sl
	ldrb r0, [r0, #0x38]
	tst r0, #2
	beq _02134700
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_0212747C
	cmp r0, #0
	bne _02134700
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_02127300
_02134700:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #4
	blo _02134624
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_02134714
ov1_02134714: ; 0x02134714
	stmdb sp!, {r3, lr}
	mov lr, #0
	mov r3, lr
	mov ip, #1
	arm_func_end ov1_02134714
_02134724:
	add r2, r0, lr, lsl #2
	ldr r2, [r2, #0x28]
	cmp r2, #0
	beq _0213474C
	ldr r2, [r2, #0x104]
	cmp r2, #0
	movne r2, ip
	moveq r2, r3
	cmp r2, #0
	bne _02134758
_0213474C:
	strb lr, [r1]
	mov r0, #1
	ldmia sp!, {r3, pc}
_02134758:
	add r2, lr, #1
	and lr, r2, #0xff
	cmp lr, #4
	blo _02134724
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov1_02134770
ov1_02134770: ; 0x02134770
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r2, #0
	add r1, sp, #0
	mov r6, r0
	strb r2, [sp]
	bl ov1_02134714
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	bl ov1_0212EE3C
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldrb r3, [sp]
	mov r1, #6
	mov lr, #0
	mla r2, r3, r1, r6
	strb lr, [r2, #0x38]
	ldrb ip, [sp]
	mov r2, #0x1f
	mla r3, ip, r1, r6
	strb lr, [r3, #0x39]
	ldrb r3, [sp]
	mla r1, r3, r1, r6
	strh lr, [r1, #0x3c]
	strb r2, [r1, #0x3a]
	ldr r1, [r6, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	mov r0, r4
	mov r1, #1
	bl ov1_02127388
	ldrb r2, [sp]
	mov r0, #1
	add r1, r6, r2, lsl #2
	str r4, [r1, #0x28]
	strb r2, [r5]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov1_02134770

	arm_func_start ov1_02134820
ov1_02134820: ; 0x02134820
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	add r3, sp, #0xc
	add r1, r1, #0x430
	mov r8, #0
	mov sl, r0
	mov sb, r2
	ldmia r1, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r7, sp, #0x18
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	sub r4, sp, #4
	mov fp, r8
	mov r6, #1
	mov r5, r8
	arm_func_end ov1_02134820
_02134870:
	ldr r1, [sb, r8, lsl #2]
	cmp r1, #0
	beq _021349C8
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, r6
	moveq r0, fp
	cmp r0, #0
	beq _021349C8
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _021349C8
	add r0, r1, #0x2f8
	str r5, [sp, #8]
	add r0, r0, #0x400
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r3, [r4]
	ldmia r7, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _021349C8
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r2, _021349E0 ; =MAIN_BSS_020BA6A0
	mov r1, r0
	ldrb r2, [r2, #0x7db]
	ldr r0, [sl, #0x10]
	mov r3, #0
	bl ov1_0212F32C
	mov r4, r0
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [sb, r8, lsl #2]
	ldr r1, [r1, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	bl ov1_0212EE80
	mov r1, r4, lsl #0xc
	mov r4, r0
	smull r1, r0, r4, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [sb, r8, lsl #2]
	mov r2, #1
	bl ov1_02126310
	cmp r4, #0x1000
	bne _02134978
	ldr r0, [sl, #0x14]
	ldr r1, _021349E4 ; =0x0000012B
	bl sub_02034C44
	ldr r0, [sb, r8, lsl #2]
	mov r1, #0
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _021349BC
_02134978:
	ble _0213499C
	ldr r0, [sl, #0x14]
	mov r1, #0x148
	bl sub_02034C44
	ldr r0, [sb, r8, lsl #2]
	mov r1, #1
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _021349BC
_0213499C:
	bge _021349BC
	ldr r0, [sl, #0x14]
	ldr r1, _021349E8 ; =0x00000149
	bl sub_02034C44
	ldr r0, [sb, r8, lsl #2]
	mov r1, #2
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
_021349BC:
	add sp, sp, #0x24
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021349C8:
	add r8, r8, #1
	cmp r8, #8
	blt _02134870
	mov r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021349E0: .word MAIN_BSS_020BA6A0
_021349E4: .word 0x0000012B
_021349E8: .word 0x00000149

	arm_func_start ov1_021349EC
ov1_021349EC: ; 0x021349EC
	mov r0, #0xc
	bx lr
	arm_func_end ov1_021349EC

	arm_func_start ov1_021349F4
ov1_021349F4: ; 0x021349F4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x18]
	tst r0, #1
	beq _02134A44
	ldrb r0, [r4, #0x19]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02134A38
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _02134A38
	bl ov1_02127300
	arm_func_end ov1_021349F4
_02134A38:
	ldrb r0, [r4, #0x18]
	bic r0, r0, #1
	strb r0, [r4, #0x18]
_02134A44:
	ldr r0, [r4, #0x14]
	ldr r1, _02134A78 ; =0x0000012A
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02134A7C ; =0x0000012B
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	mov r1, #0x148
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02134A80 ; =0x00000149
	bl sub_02034C5C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02134A78: .word 0x0000012A
_02134A7C: .word 0x0000012B
_02134A80: .word 0x00000149

	arm_func_start ov1_02134A84
ov1_02134A84: ; 0x02134A84
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _02134AB0 ; =PTR_LAB_overlay_1_02134ab4_overlay_1_02141868
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02134AB0: .word PTR_LAB_overlay_1_02134ab4_overlay_1_02141868
	arm_func_end ov1_02134A84

	arm_func_start ov1_02134AB4
ov1_02134AB4: ; 0x02134AB4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02134AB4

	arm_func_start ov1_02134AC8
ov1_02134AC8: ; 0x02134AC8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02134AC8

	arm_func_start ov1_02134AE4
ov1_02134AE4: ; 0x02134AE4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldrh r2, [r5, #4]
	mov r4, r1
	cmp r2, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	sub r2, r2, #1
	mov r1, r3
	strh r2, [r5, #4]
	bl ov1_02134E04
	ldrh r2, [r4, #0xa]
	ldrh r1, [r4, #0xc]
	ldrb r0, [r4, #4]
	sub r2, r2, #0x80
	sub r1, r1, #0x60
	mov r3, r2, lsl #0xc
	mov r2, r1, lsl #0xc
	str r3, [sp, #4]
	str r2, [sp, #8]
	cmp r0, #0
	beq _02134BA4
	str r3, [r5, #0x20]
	str r2, [r5, #0x24]
	mov r2, #0
	add r1, sp, #0
	mov r0, r5
	strb r2, [sp]
	bl ov1_02134F68
	cmp r0, #0
	beq _02134BA4
	ldrb r1, [sp]
	add r0, sp, #4
	strb r1, [r5, #0x19]
	ldrb r3, [sp]
	ldmia r0, {r1, r2}
	add r0, r5, r3, lsl #2
	ldr r0, [r0, #0x28]
	add r0, r0, #0xc
	bl sub_02011D3C
	ldrb r0, [r5, #0x18]
	mov r1, #0x140
	orr r0, r0, #1
	strb r0, [r5, #0x18]
	ldr r0, [r5, #0x14]
	bl sub_02034C44
	arm_func_end ov1_02134AE4
_02134BA4:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _02134D1C
	ldrb r0, [r5, #0x18]
	tst r0, #1
	beq _02134CEC
	ldrb r0, [r5, #0x19]
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02134CEC
	ldr r0, [r0, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02134CEC
	ldr r3, [r5, #0x24]
	ldr r0, [sp, #8]
	ldr r2, [r5, #0x20]
	ldr r1, [sp, #4]
	sub r0, r3, r0
	sub r1, r2, r1
	bl sub_02007254
	cmp r0, #0x5000
	ldrb r1, [r5, #0x19]
	mov r0, #0xc
	ble _02134C30
	smulbb r1, r1, r0
	add r2, r5, #0x3c
	ldr r0, [r2, r1]
	add r0, r0, #0x28
	cmp r0, #0x1000
	strlt r0, [r2, r1]
	b _02134C4C
_02134C30:
	smulbb r2, r1, r0
	add r3, r5, #0x3c
	ldr r1, [r3, r2]
	ldr r0, _02134DFC ; =0x00000333
	sub r1, r1, #0x14
	cmp r1, r0
	strgt r1, [r3, r2]
_02134C4C:
	ldrb r2, [r5, #0x19]
	mov r1, #0xc
	mov r0, r5
	mla r1, r2, r1, r5
	ldr r1, [r1, #0x3c]
	bl ov1_021352B0
	ldrb ip, [r5, #0x19]
	mov r2, #0xc
	mov r1, #0
	mla r3, ip, r2, r5
	strb r0, [r3, #0x40]
	ldrb r0, [r5, #0x19]
	mla r2, r0, r2, r5
	add r0, r5, r0, lsl #2
	ldr r2, [r2, #0x3c]
	ldr r0, [r0, #0x28]
	mov r3, r2
	bl sub_02012A3C
	ldrb r1, [r5, #0x19]
	add r0, sp, #4
	add r1, r5, r1, lsl #2
	ldr r3, [r1, #0x28]
	ldmia r0, {r1, r2}
	add r0, r3, #0xc
	bl sub_02011D3C
	ldrb r0, [r5, #0x19]
	add r0, r5, r0, lsl #2
	ldr r2, [r0, #0x28]
	cmp r2, #0
	beq _02134CEC
	ldr r0, [r2, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02134CEC
	add r1, sp, #4
	add r0, r2, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
_02134CEC:
	ldrh r0, [r5, #0x1c]
	cmp r0, #0xa
	bne _02134D14
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r1, [r5, #0x20]
	str r0, [r5, #0x24]
	mov r0, #0
	strh r0, [r5, #0x1c]
	b _02134D1C
_02134D14:
	addlo r0, r0, #1
	strloh r0, [r5, #0x1c]
_02134D1C:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _02134DF0
	ldrb r0, [r5, #0x18]
	tst r0, #1
	beq _02134DE4
	ldrb r0, [r5, #0x19]
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02134DD4
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _02134DD4
	add r1, sp, #4
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r3, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #4]
	ldr r1, [r5, #0x20]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	ldrb r3, [r5, #0x19]
	mov r1, r0
	mov r2, #0x4000
	add r0, r5, r3, lsl #2
	ldr r0, [r0, #0x28]
	add r0, r0, #0xc
	bl sub_02011C90
	ldrb r1, [r5, #0x19]
	mov r0, #0xc
	add r3, r5, #0x38
	smulbb r2, r1, r0
	ldrb r0, [r3, r2]
	ldr r1, _02134E00 ; =0x00000141
	orr r0, r0, #1
	strb r0, [r3, r2]
	ldr r0, [r5, #0x14]
	bl sub_02034C44
	b _02134DD8
_02134DD4:
	bl ov1_02127300
_02134DD8:
	ldr r0, [r5, #0x14]
	mov r1, #0x140
	bl sub_02034C5C
_02134DE4:
	ldrb r0, [r5, #0x18]
	bic r0, r0, #1
	strb r0, [r5, #0x18]
_02134DF0:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02134DFC: .word 0x00000333
_02134E00: .word 0x00000141

	arm_func_start ov1_02134E04
ov1_02134E04: ; 0x02134E04
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #0
	mov r4, #0xc
	mov sl, r0
	mov sb, r1
	mov r6, r8
	mov r5, #1
	mov fp, r4
	arm_func_end ov1_02134E04
_02134E24:
	add r0, sl, r8, lsl #2
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _02134EF8
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02134EF8
	ldrb r0, [sl, #0x18]
	tst r0, #1
	beq _02134E64
	ldrb r0, [sl, #0x19]
	cmp r0, r8
	beq _02134EF8
_02134E64:
	ldrh r0, [r1, #4]
	tst r0, #0x100
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02134EC8
	mla r7, r8, r4, sl
	mov r0, sl
	mov r2, sb
	ldrb r3, [r7, #0x40]
	bl ov1_0213502C
	cmp r0, #0
	beq _02134EC8
	add r2, sl, r8, lsl #2
	ldr r0, [r2, #0x28]
	mov r1, #8
	str r6, [r0, #0xc]
	ldr r0, [r2, #0x28]
	mov r2, #2
	bl ov1_021273A0
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	mov r1, #0
	bl ov1_02127388
	strb r5, [r7, #0x39]
_02134EC8:
	mla r0, r8, fp, sl
	ldrb r0, [r0, #0x39]
	cmp r0, #1
	bne _02134EF8
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_0212747C
	cmp r0, #0
	bne _02134EF8
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_02127300
_02134EF8:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #4
	blo _02134E24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_02134F0C
ov1_02134F0C: ; 0x02134F0C
	stmdb sp!, {r3, lr}
	mov lr, #0
	mov r3, lr
	mov ip, #1
	arm_func_end ov1_02134F0C
_02134F1C:
	add r2, r0, lr, lsl #2
	ldr r2, [r2, #0x28]
	cmp r2, #0
	beq _02134F44
	ldr r2, [r2, #0x104]
	cmp r2, #0
	movne r2, ip
	moveq r2, r3
	cmp r2, #0
	bne _02134F50
_02134F44:
	strb lr, [r1]
	mov r0, #1
	ldmia sp!, {r3, pc}
_02134F50:
	add r2, lr, #1
	and lr, r2, #0xff
	cmp lr, #4
	blo _02134F1C
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov1_02134F68
ov1_02134F68: ; 0x02134F68
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r2, #0
	add r1, sp, #0
	mov r6, r0
	strb r2, [sp]
	bl ov1_02134F0C
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	bl ov1_0212EE3C
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldrb r3, [sp]
	mov r1, #0xc
	mov lr, #0
	mla r2, r3, r1, r6
	strb lr, [r2, #0x38]
	ldrb ip, [sp]
	ldr r2, _02135028 ; =0x00000333
	mla r3, ip, r1, r6
	strb lr, [r3, #0x39]
	ldrb r3, [sp]
	mla r1, r3, r1, r6
	strh lr, [r1, #0x3a]
	str r2, [r1, #0x3c]
	ldr r1, [r6, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	mov r0, r4
	mov r1, #7
	mov r2, #2
	bl ov1_021273A0
	mov r0, r4
	mov r1, #1
	bl ov1_02127388
	ldrb r2, [sp]
	mov r0, #1
	add r1, r6, r2, lsl #2
	str r4, [r1, #0x28]
	strb r2, [r5]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02135028: .word 0x00000333
	arm_func_end ov1_02134F68

	arm_func_start ov1_0213502C
ov1_0213502C: ; 0x0213502C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	add r4, sp, #0x10
	add r1, r1, #0x430
	mov sl, r0
	mov r8, #0
	mov sb, r2
	ldmia r1, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r7, sp, #0x1c
	str r3, [sp, #0xc]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	sub r4, sp, #4
	mov fp, r8
	mov r6, #1
	mov r5, r8
	arm_func_end ov1_0213502C
_02135080:
	ldr r1, [sb, r8, lsl #2]
	cmp r1, #0
	beq _02135200
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, r6
	moveq r0, fp
	cmp r0, #0
	beq _02135200
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02135200
	add r0, r1, #0x2f8
	str r5, [sp, #8]
	add r0, r0, #0x400
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r3, [r4]
	ldmia r7, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _02135200
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r2, _02135218 ; =MAIN_BSS_020BA6A0
	mov r1, r0
	ldrb r2, [r2, #0x7db]
	ldr r0, [sl, #0x10]
	ldr r3, [sp, #0xc]
	bl ov1_0212F32C
	mov r4, r0
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [sb, r8, lsl #2]
	ldr r1, [r1, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	bl ov1_0212EE80
	mov r1, r4, lsl #0xc
	mov r4, r0
	smull r1, r0, r4, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [sb, r8, lsl #2]
	mov r2, #1
	bl ov1_02126310
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [sp, #0xc]
	bl ov1_0212EE98
	mov r2, r0
	ldr r0, [sb, r8, lsl #2]
	mov r1, #1
	bl ov1_021263A4
	cmp r4, #0x1000
	bne _021351B0
	ldr r0, [sl, #0x14]
	ldr r1, _0213521C ; =0x00000142
	bl sub_02034C44
	ldr r0, [sb, r8, lsl #2]
	mov r1, #0
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _021351F4
_021351B0:
	ble _021351D4
	ldr r0, [sl, #0x14]
	ldr r1, _02135220 ; =0x0000014E
	bl sub_02034C44
	ldr r0, [sb, r8, lsl #2]
	mov r1, #1
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _021351F4
_021351D4:
	bge _021351F4
	ldr r0, [sl, #0x14]
	ldr r1, _02135224 ; =0x0000014F
	bl sub_02034C44
	ldr r0, [sb, r8, lsl #2]
	mov r1, #2
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
_021351F4:
	add sp, sp, #0x28
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135200:
	add r8, r8, #1
	cmp r8, #8
	blt _02135080
	mov r0, #0
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02135218: .word MAIN_BSS_020BA6A0
_0213521C: .word 0x00000142
_02135220: .word 0x0000014E
_02135224: .word 0x0000014F

	arm_func_start ov1_02135228
ov1_02135228: ; 0x02135228
	mov r0, #0x10
	bx lr
	arm_func_end ov1_02135228

	arm_func_start ov1_02135230
ov1_02135230: ; 0x02135230
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x18]
	tst r0, #1
	beq _02135260
	ldrb r0, [r4, #0x19]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_02127300
	ldrb r0, [r4, #0x18]
	bic r0, r0, #1
	strb r0, [r4, #0x18]
	arm_func_end ov1_02135230
_02135260:
	ldr r0, [r4, #0x14]
	mov r1, #0x140
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _021352A0 ; =0x00000141
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _021352A4 ; =0x00000142
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _021352A8 ; =0x0000014E
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _021352AC ; =0x0000014F
	bl sub_02034C5C
	ldmia sp!, {r4, pc}
	.align 2, 0
_021352A0: .word 0x00000141
_021352A4: .word 0x00000142
_021352A8: .word 0x0000014E
_021352AC: .word 0x0000014F

	arm_func_start ov1_021352B0
ov1_021352B0: ; 0x021352B0
	cmp r1, #0x800
	movle r0, #0
	bxle lr
	ldr r0, _021352D0 ; =0x00000E66
	cmp r1, r0
	movle r0, #1
	movgt r0, #2
	bx lr
	.align 2, 0
_021352D0: .word 0x00000E66
	arm_func_end ov1_021352B0

	arm_func_start ov1_021352D4
ov1_021352D4: ; 0x021352D4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh ip, [sp, #0x10]
	mov r4, r0
	str ip, [sp]
	bl ov1_0212EDE0
	ldr r1, _02135300 ; =PTR_LAB_overlay_1_02135304_overlay_1_021418a8
	mov r0, r4
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02135300: .word PTR_LAB_overlay_1_02135304_overlay_1_021418a8
	arm_func_end ov1_021352D4

	arm_func_start ov1_02135304
ov1_02135304: ; 0x02135304
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02135304

	arm_func_start ov1_02135318
ov1_02135318: ; 0x02135318
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0212EE38
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02135318

	arm_func_start ov1_02135334
ov1_02135334: ; 0x02135334
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldrh r2, [r5, #4]
	mov r4, r1
	cmp r2, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	sub r2, r2, #1
	mov r1, r3
	strh r2, [r5, #4]
	bl ov1_021355B0
	ldrh r2, [r4, #0xa]
	ldrh r1, [r4, #0xc]
	ldrb r0, [r4, #4]
	sub r2, r2, #0x80
	sub r1, r1, #0x60
	mov r3, r2, lsl #0xc
	mov r2, r1, lsl #0xc
	str r3, [sp, #4]
	str r2, [sp, #8]
	cmp r0, #0
	beq _021353F4
	str r3, [r5, #0x20]
	str r2, [r5, #0x24]
	mov r2, #0
	add r1, sp, #0
	mov r0, r5
	strb r2, [sp]
	bl ov1_02135848
	cmp r0, #0
	beq _021353F4
	ldrb r1, [sp]
	add r0, sp, #4
	strb r1, [r5, #0x19]
	ldrb r3, [sp]
	ldmia r0, {r1, r2}
	add r0, r5, r3, lsl #2
	ldr r0, [r0, #0x28]
	add r0, r0, #0xc
	bl sub_02011D3C
	ldrb r0, [r5, #0x18]
	ldr r1, _021355A8 ; =0x00000121
	orr r0, r0, #1
	strb r0, [r5, #0x18]
	ldr r0, [r5, #0x14]
	bl sub_02034C44
	arm_func_end ov1_02135334
_021353F4:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _02135484
	ldrb r0, [r5, #0x18]
	tst r0, #1
	beq _02135484
	ldrb r0, [r5, #0x19]
	add r0, r5, r0, lsl #2
	ldr r2, [r0, #0x28]
	cmp r2, #0
	beq _02135448
	ldr r0, [r2, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02135448
	add r1, sp, #4
	add r0, r2, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
_02135448:
	ldrb r1, [r5, #0x19]
	mov r0, r5
	bl ov1_02135794
	ldrh r0, [r5, #0x1c]
	cmp r0, #5
	bne _0213547C
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r1, [r5, #0x20]
	str r0, [r5, #0x24]
	mov r0, #0
	strh r0, [r5, #0x1c]
	b _02135484
_0213547C:
	addlo r0, r0, #1
	strloh r0, [r5, #0x1c]
_02135484:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0213559C
	ldrb r0, [r5, #0x18]
	tst r0, #1
	beq _02135584
	ldrb r0, [r5, #0x19]
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02135584
	ldr r0, [r0, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02135584
	ldr r4, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r3, [sp, #4]
	ldr r2, [r5, #0x20]
	sub r1, r4, r0
	sub r0, r3, r2
	bl sub_02007254
	cmp r0, #0x8000
	blt _02135560
	ldrb r1, [r5, #0x19]
	add r0, sp, #4
	add r1, r5, r1, lsl #2
	ldr r3, [r1, #0x28]
	ldmia r0, {r1, r2}
	add r0, r3, #0xc
	bl sub_02011D3C
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #4]
	ldr r1, [r5, #0x20]
	sub r0, r4, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	ldrb r3, [r5, #0x19]
	mov r1, r0
	mov r2, #0x2000
	add r0, r5, r3, lsl #2
	ldr r0, [r0, #0x28]
	add r0, r0, #0xc
	bl sub_02011C90
	ldrb r1, [r5, #0x19]
	mov r0, #0xc
	mov r2, #1
	mla r0, r1, r0, r5
	strb r2, [r0, #0x38]
	ldr r0, [r5, #0x14]
	ldr r1, _021355AC ; =0x00000122
	bl sub_02034C44
	b _02135584
_02135560:
	ldrb r0, [r5, #0x19]
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_02127300
	ldrb r1, [r5, #0x19]
	mov r0, #0xc
	mov r2, #1
	mla r0, r1, r0, r5
	strb r2, [r0, #0x38]
_02135584:
	ldr r0, [r5, #0x14]
	ldr r1, _021355A8 ; =0x00000121
	bl sub_02034C5C
	ldrb r0, [r5, #0x18]
	bic r0, r0, #1
	strb r0, [r5, #0x18]
_0213559C:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021355A8: .word 0x00000121
_021355AC: .word 0x00000122

	arm_func_start ov1_021355B0
ov1_021355B0: ; 0x021355B0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #0
	mov r5, #1
	mov sl, r0
	mov sb, r1
	mov r6, r8
	mov r4, r8
	mov fp, r5
	arm_func_end ov1_021355B0
_021355D0:
	add r0, sl, r8, lsl #2
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _02135724
	ldr r0, [r1, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02135724
	ldrb r0, [sl, #0x18]
	tst r0, #1
	beq _02135610
	ldrb r0, [sl, #0x19]
	cmp r0, r8
	beq _02135724
_02135610:
	ldrh r0, [r1, #4]
	tst r0, #0x100
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02135678
	mov r0, #0xc
	mla r7, r8, r0, sl
	ldrb r3, [r7, #0x3a]
	mov r0, sl
	mov r2, sb
	bl ov1_02135938
	cmp r0, #0
	beq _02135678
	add r2, sl, r8, lsl #2
	ldr r0, [r2, #0x28]
	mov r1, #8
	str r6, [r0, #0xc]
	ldr r0, [r2, #0x28]
	mov r2, #2
	bl ov1_021273A0
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	mov r1, #0
	bl ov1_02127388
	strb r5, [r7, #0x39]
_02135678:
	add r0, sl, r8, lsl #2
	ldr r2, [r0, #0x28]
	ldrh r0, [r2, #4]
	tst r0, #0x100
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02135704
	mov r0, #0xc
	mla r1, r8, r0, sl
	ldrb r0, [r1, #0x38]
	cmp r0, #1
	bne _02135704
	ldrh r0, [r1, #0x3c]
	cmp r0, #0x78
	bne _021356FC
	str r4, [r2, #0xc]
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	mov r1, #0x20
	mov r2, #1
	bl ov1_02127454
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	mov r1, #0
	bl ov1_02127388
	mov r0, #0xc
	mla r1, r8, r0, sl
	strb fp, [r1, #0x39]
	mov r0, #0
	strb r0, [r1, #0x38]
	strh r0, [r1, #0x3c]
	b _02135704
_021356FC:
	addlo r0, r0, #1
	strloh r0, [r1, #0x3c]
_02135704:
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_0212747C
	cmp r0, #0
	bne _02135724
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x28]
	bl ov1_02127300
_02135724:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #4
	blo _021355D0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_02135738
ov1_02135738: ; 0x02135738
	stmdb sp!, {r3, lr}
	mov lr, #0
	mov r3, lr
	mov ip, #1
	arm_func_end ov1_02135738
_02135748:
	add r2, r0, lr, lsl #2
	ldr r2, [r2, #0x28]
	cmp r2, #0
	beq _02135770
	ldr r2, [r2, #0x104]
	cmp r2, #0
	movne r2, ip
	moveq r2, r3
	cmp r2, #0
	bne _0213577C
_02135770:
	strb lr, [r1]
	mov r0, #1
	ldmia sp!, {r3, pc}
_0213577C:
	add r2, lr, #1
	and lr, r2, #0xff
	cmp lr, #4
	blo _02135748
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start ov1_02135794
ov1_02135794: ; 0x02135794
	stmdb sp!, {r4, r5, r6, lr}
	mov r2, #0xc
	mul lr, r1, r2
	add ip, r0, #0x3a
	ldrb r4, [ip, lr]
	add r3, r0, #0x3e
	add r2, r0, lr
	cmp r4, #0
	ldrh r6, [r3, lr]
	ldr r2, [r2, #0x40]
	bne _021357EC
	cmp r6, #0x32
	bne _021357D8
	mov r6, #0
	mov r4, #1
	mov r2, #0xc00
	b _02135818
	arm_func_end ov1_02135794
_021357D8:
	bhs _02135818
	add r5, r6, #1
	mov r5, r5, lsl #0x10
	mov r6, r5, lsr #0x10
	b _02135818
_021357EC:
	cmp r4, #1
	bne _02135818
	cmp r6, #0x32
	bne _0213580C
	mov r6, #0
	mov r4, #2
	mov r2, #0x1000
	b _02135818
_0213580C:
	addlo r5, r6, #1
	movlo r5, r5, lsl #0x10
	movlo r6, r5, lsr #0x10
_02135818:
	mov r5, #0xc
	mul r5, r1, r5
	strb r4, [ip, lr]
	add r1, r0, r1, lsl #2
	strh r6, [r3, lr]
	add r0, r0, #0x40
	str r2, [r0, r5]
	ldr r0, [r1, #0x28]
	mov r3, r2
	mov r1, #0
	bl sub_02012A3C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_02135848
ov1_02135848: ; 0x02135848
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r2, #0
	add r1, sp, #0
	mov r6, r0
	strb r2, [sp]
	bl ov1_02135738
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	bl ov1_0212EE3C
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldrb ip, [sp]
	mov r2, #0xc
	mov r1, #0
	mla r3, ip, r2, r6
	strb r1, [r3, #0x38]
	ldrb lr, [sp]
	mov r3, #0x800
	mla ip, lr, r2, r6
	strb r1, [ip, #0x39]
	ldrb lr, [sp]
	mla ip, lr, r2, r6
	strb r1, [ip, #0x3a]
	ldrb ip, [sp]
	mla r2, ip, r2, r6
	strh r1, [r2, #0x3c]
	strh r1, [r2, #0x3e]
	str r3, [r2, #0x40]
	ldr r1, [r6, #0xc]
	ldr r1, [r1]
	bl ov1_021270FC
	mov r0, r4
	mov r1, #7
	mov r2, #2
	bl ov1_021273A0
	mov r0, r4
	mov r1, #1
	bl ov1_02127388
	ldrb r2, [sp]
	mov r1, #0xc
	mov r0, r4
	mla r1, r2, r1, r6
	ldr r2, [r1, #0x40]
	mov r1, #0
	mov r3, r2
	bl sub_02012A3C
	ldrb r2, [sp]
	mov r0, #1
	add r1, r6, r2, lsl #2
	str r4, [r1, #0x28]
	strb r2, [r5]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov1_02135848

	arm_func_start ov1_02135938
ov1_02135938: ; 0x02135938
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	add r4, sp, #0x10
	add r1, r1, #0x430
	mov sl, r0
	mov r8, #0
	mov sb, r2
	ldmia r1, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r7, sp, #0x1c
	str r3, [sp, #0xc]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	sub r4, sp, #4
	mov fp, r8
	mov r6, #1
	mov r5, r8
	arm_func_end ov1_02135938
_0213598C:
	ldr r1, [sb, r8, lsl #2]
	cmp r1, #0
	beq _02135AF4
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	movne r0, r6
	moveq r0, fp
	cmp r0, #0
	beq _02135AF4
	ldrh r0, [r1, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02135AF4
	add r0, r1, #0x2f8
	str r5, [sp, #8]
	add r0, r0, #0x400
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r3, [r4]
	ldmia r7, {r0, r1, r2}
	bl sub_02006164
	cmp r0, #0
	beq _02135AF4
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r2, _02135B0C ; =MAIN_BSS_020BA6A0
	mov r1, r0
	ldrb r2, [r2, #0x7db]
	ldr r0, [sl, #0x10]
	ldr r3, [sp, #0xc]
	bl ov1_0212F32C
	mov r4, r0
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [sb, r8, lsl #2]
	ldr r1, [r1, #0x184]
	ldr r1, [r1, #0x18]
	ldrb r1, [r1, #3]
	bl ov1_0212EE80
	mov r1, r4, lsl #0xc
	mov r4, r0
	smull r1, r0, r4, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [sb, r8, lsl #2]
	mov r2, #1
	bl ov1_02126310
	mov r0, sl
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r1, [sp, #0xc]
	bl ov1_0212EE98
	mov r2, r0
	ldr r0, [sb, r8, lsl #2]
	mov r1, #3
	bl ov1_021263A4
	cmp r4, #0x1000
	bne _02135AB0
	ldr r0, [sb, r8, lsl #2]
	mov r1, #0
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _02135ADC
_02135AB0:
	ble _02135AC8
	ldr r0, [sb, r8, lsl #2]
	mov r1, #1
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
	b _02135ADC
_02135AC8:
	bge _02135ADC
	ldr r0, [sb, r8, lsl #2]
	mov r1, #2
	ldr r0, [r0, #0x1a8]
	bl ov1_02128598
_02135ADC:
	ldr r0, [sl, #0x14]
	ldr r1, _02135B10 ; =0x00000123
	bl sub_02034C44
	add sp, sp, #0x28
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02135AF4:
	add r8, r8, #1
	cmp r8, #8
	blt _0213598C
	mov r0, #0
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02135B0C: .word MAIN_BSS_020BA6A0
_02135B10: .word 0x00000123

	arm_func_start ov1_02135B14
ov1_02135B14: ; 0x02135B14
	mov r0, #2
	bx lr
	arm_func_end ov1_02135B14

	arm_func_start ov1_02135B1C
ov1_02135B1C: ; 0x02135B1C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x18]
	tst r0, #1
	beq _02135B80
	ldrb r0, [r4, #0x19]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02135B74
	ldr r1, [r0, #0x104]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _02135B74
	bl ov1_02127300
	ldrb r1, [r4, #0x19]
	mov r0, #0xc
	mov r2, #1
	mla r0, r1, r0, r4
	strb r2, [r0, #0x38]
	arm_func_end ov1_02135B1C
_02135B74:
	ldrb r0, [r4, #0x18]
	bic r0, r0, #1
	strb r0, [r4, #0x18]
_02135B80:
	ldr r0, [r4, #0x14]
	ldr r1, _02135BA8 ; =0x00000121
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02135BAC ; =0x00000122
	bl sub_02034C5C
	ldr r0, [r4, #0x14]
	ldr r1, _02135BB0 ; =0x00000123
	bl sub_02034C5C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02135BA8: .word 0x00000121
_02135BAC: .word 0x00000122
_02135BB0: .word 0x00000123

	arm_func_start ov1_02135BB4
ov1_02135BB4: ; 0x02135BB4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #0xb4
	str r4, [r5]
	bl _Znwm
	cmp r0, #0
	beq _02135BE0
	ldr r1, [r4, #0xc24]
	ldr r2, [r4, #0x14]
	bl sub_02008FA8
	arm_func_end ov1_02135BB4
_02135BE0:
	str r0, [r5, #4]
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02135BEC
ov1_02135BEC: ; 0x02135BEC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	bl sub_02009020
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _02135C24
	beq _02135C1C
	mov r0, r4
	bl sub_02009004
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov1_02135BEC
_02135C1C:
	mov r0, #0
	str r0, [r5, #4]
_02135C24:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02135C2C
ov1_02135C2C: ; 0x02135C2C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	ldr r0, [r4, #4]
	mov r2, r1
	bl sub_020090E8
	ldr r0, [r4, #4]
	mov r1, #1
	mov r2, #0
	bl sub_020090E8
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02135C2C

	arm_func_start ov1_02135C58
ov1_02135C58: ; 0x02135C58
	ldr ip, _02135C64 ; =FUN_02009050
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
_02135C64: .word sub_02009050
	arm_func_end ov1_02135C58

	arm_func_start ov1_02135C68
ov1_02135C68: ; 0x02135C68
	ldr ip, _02135C74 ; =FUN_02009108
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
_02135C74: .word sub_02009108
	arm_func_end ov1_02135C68

	arm_func_start ov1_02135C78
ov1_02135C78: ; 0x02135C78
	ldr ip, _02135C88 ; =FUN_020090F4
	ldr r0, [r0, #4]
	mov r1, #0
	bx ip
	.align 2, 0
_02135C88: .word sub_020090F4
	arm_func_end ov1_02135C78

	arm_func_start ov1_02135C8C
ov1_02135C8C: ; 0x02135C8C
	ldr ip, _02135C9C ; =FUN_020090F4
	ldr r0, [r0, #4]
	mov r1, #1
	bx ip
	.align 2, 0
_02135C9C: .word sub_020090F4
	arm_func_end ov1_02135C8C

	arm_func_start ov1_02135CA0
ov1_02135CA0: ; 0x02135CA0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02011D60
	ldr r1, _02135CF8 ; =ptr_FUN_overlay_1_02135d04_overlay_1_021418e4
	add r0, r5, #0x184
	str r1, [r5]
	bl sub_02004114
	add r0, r5, #0x20c
	bl sub_02005150
	ldr r1, _02135CFC ; =sub_020051C8
	add r0, r5, #0x258
	str r1, [sp]
	mov r1, #4
	mov r2, #0x4c
	ldr r3, _02135D00 ; =FUN_02005150
	bl __cxa_vec_ctor
	str r4, [r5, #0x1f4]
	mov r0, r5
	bl ov1_02135D8C
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02135CF8: .word ptr_FUN_overlay_1_02135d04_overlay_1_021418e4
_02135CFC: .word sub_020051C8
_02135D00: .word sub_02005150
	arm_func_end ov1_02135CA0

	arm_func_start ov1_02135D04
ov1_02135D04: ; 0x02135D04
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r3, _02135D40 ; =sub_020051C8
	add r0, r4, #0x258
	mov r1, #4
	mov r2, #0x4c
	bl __cxa_vec_cleanup
	add r0, r4, #0x20c
	bl sub_020051C8
	add r0, r4, #0x184
	bl sub_02004160
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02135D40: .word sub_020051C8
	arm_func_end ov1_02135D04

	arm_func_start ov1_02135D44
ov1_02135D44: ; 0x02135D44
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r3, _02135D88 ; =sub_020051C8
	add r0, r4, #0x258
	mov r1, #4
	mov r2, #0x4c
	bl __cxa_vec_cleanup
	add r0, r4, #0x20c
	bl sub_020051C8
	add r0, r4, #0x184
	bl sub_02004160
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02135D88: .word sub_020051C8
	arm_func_end ov1_02135D44

	arm_func_start ov1_02135D8C
ov1_02135D8C: ; 0x02135D8C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr r1, _02135E6C ; =0x000003FF
	mov r4, r0
	bl ov1_02136248
	mov r1, #0
	add r0, r4, #0x100
	strh r1, [r0, #0xec]
	strh r1, [r0, #0xee]
	strh r1, [r0, #0xf0]
	strb r1, [r4, #0x1f2]
	str r1, [r4, #0x1e4]
	strh r1, [r0, #0xf8]
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r4, #0x1e8]
	mov r2, r1
	add r5, r0, #1
	mov r3, r1
	add r0, r4, #0x184
	str r5, [sp, #0x14]
	bl sub_020041A4
	ldr r1, _02135E6C ; =0x000003FF
	add r0, r4, #0x100
	strh r1, [r0, #0x8c]
	mov r0, #0x1f
	str r0, [r4, #0x198]
	ldr r1, [r4, #0x1f4]
	mov r0, #0
	ldr r1, [r1, #0x14]
	add r2, r4, #0x200
	ldmia r1, {r5, r6, ip}
	str r5, [r4, #0x238]
	str r0, [r4, #0x23c]
	str r6, [r4, #0x240]
	mov r3, #0xa
	str ip, [r4, #0x244]
	strh r3, [r2, #0x36]
	mov r3, r0
	mov r2, #0x4c
	arm_func_end ov1_02135D8C
_02135E38:
	mla lr, r0, r2, r4
	ldmib r1, {r5, r6}
	ldr ip, [r1]
	add r0, r0, #1
	str ip, [lr, #0x284]
	str r3, [lr, #0x288]
	and r0, r0, #0xff
	str r5, [lr, #0x28c]
	cmp r0, #4
	str r6, [lr, #0x290]
	blo _02135E38
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02135E6C: .word 0x000003FF

	arm_func_start ov1_02135E70
ov1_02135E70: ; 0x02135E70
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x100
	strh r2, [r0, #0xee]
	strh r3, [r0, #0xf0]
	strh r1, [r0, #0xec]
	ldrh r1, [r0, #0xec]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _02135F08
_02135E98: ; jump table
	b _02135F08 ; case 0
	b _02135EBC ; case 1
	b _02135ED0 ; case 2
	b _02135F08 ; case 3
	b _02135EE4 ; case 4
	b _02135F08 ; case 5
	b _02135F08 ; case 6
	b _02135F08 ; case 7
	b _02135EF8 ; case 8
	arm_func_end ov1_02135E70
_02135EBC:
	mov r1, #0x19
	strb r1, [r4, #0x1f2]
	mov r1, #0
	strh r1, [r0, #0xf8]
	b _02135F08
_02135ED0:
	mov r1, #0x29
	strb r1, [r4, #0x1f2]
	mov r1, #1
	strh r1, [r0, #0xf8]
	b _02135F08
_02135EE4:
	mov r1, #0x39
	strb r1, [r4, #0x1f2]
	mov r1, #2
	strh r1, [r0, #0xf8]
	b _02135F08
_02135EF8:
	mov r1, #0x99
	strb r1, [r4, #0x1f2]
	mov r1, #3
	strh r1, [r0, #0xf8]
_02135F08:
	add r1, sp, #8
	add r0, r4, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	add r0, r4, #0x100
	ldrh r1, [r0, #0xec]
	orr r1, r1, #0x10
	strh r1, [r0, #0xec]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_02135F2C
ov1_02135F2C: ; 0x02135F2C
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	add r2, r0, #0x100
	add r3, sp, #0x10
	strh r1, [r2, #0xee]
	add r0, r0, #0xc
	ldmia r3, {r1, r2}
	bl sub_02011D3C
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov1_02135F2C

	arm_func_start ov1_02135F58
ov1_02135F58: ; 0x02135F58
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r7, r0
	add r0, r7, #0x100
	ldrb r1, [r7, #0x1f2]
	ldrh r2, [r0, #0xf0]
	ldrh r0, [r0, #0xee]
	mov r4, r1, lsl #0xc
	mov r1, r4, asr #0x1f
	sub r0, r2, r0
	mov r3, r0, lsl #0xc
	mov r5, r1, lsl #0xb
	mov r6, r4, lsl #0xb
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	ldr ip, [r7, #0x24]
	ldr lr, [r7, #0x20]
	mov r2, r2, lsl #0xc
	orr r5, r5, r4, lsr #21
	mov r6, r6, lsr #0xc
	orr r6, r6, r5, lsl #20
	sub r5, lr, r6
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	str lr, [sp, #0x18]
	str ip, [sp, #0x1c]
	sub r6, ip, #0x1000
	bl _ll_div
	smull r1, r0, r4, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r7, #0x1fc]
	add r0, r7, #0x100
	ldrh r0, [r0, #0xec]
	mov r2, r6
	tst r0, #8
	addne r5, r5, #0x8000
	add r3, r5, r1
	str r6, [sp]
	str r3, [sp, #4]
	add r0, r6, #0x3000
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x1e8]
	mov r1, r5
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x14]
	add r0, r7, #0x184
	bl sub_020041A4
	ldrb r0, [r7, #0x201]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02136074
_0213603C: ; jump table
	b _02136074 ; case 0
	b _0213604C ; case 1
	b _0213605C ; case 2
	b _0213606C ; case 3
	arm_func_end ov1_02135F58
_0213604C:
	mov r0, r7
	bl ov1_02136344
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0213605C:
	mov r0, r7
	bl ov1_021363D0
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0213606C:
	mov r0, r7
	bl ov1_0213642C
_02136074:
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_0213607C
ov1_0213607C: ; 0x0213607C
	add r0, r0, #0x100
	ldrh r0, [r0, #0xec]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov1_0213607C

	arm_func_start ov1_02136094
ov1_02136094: ; 0x02136094
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r7, r0
	mov r6, r1
	bl ov1_0213607C
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r7, #0x1f4]
	ldr r0, [r7, #0xc4]
	ldr r2, [r1]
	mov r1, #0
	str r2, [r0, #0x2c]
	str r1, [r0, #0x30]
	ldr r1, [r7, #0x1f4]
	add r2, r7, #0x100
	ldr r3, [r1, #4]
	mov r1, r6
	str r3, [r0, #0x34]
	ldr r3, [r7, #0x1f4]
	ldr r3, [r3, #8]
	str r3, [r0, #0x38]
	ldrh r2, [r2, #0xf8]
	strh r2, [r0, #0x2a]
	ldr r2, [r7, #0x20]
	ldr r3, [r7, #0x24]
	str r2, [sp, #0x10]
	str r2, [r0, #0x18]
	str r3, [r0, #0x1c]
	ldr r2, [r0]
	str r3, [sp, #0x14]
	ldr r2, [r2, #8]
	blx r2
	add r0, r7, #0x100
	ldrh r1, [r0, #0xee]
	ldrh r0, [r0, #0xf0]
	cmp r1, r0
	bhs _02136140
	add r0, r7, #0x184
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
	arm_func_end ov1_02136094
_02136140:
	ldrb r0, [r7, #0x201]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r7, #0x1f2]
	ldr r3, [r7, #0x24]
	ldr r4, [r7, #0x20]
	mov r1, r0, lsl #0xc
	mov r0, r1, asr #0x1f
	mov r0, r0, lsl #0xb
	mov r2, r1, lsl #0xb
	orr r0, r0, r1, lsr #21
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r0, r4, r1
	add r2, r0, #0x8000
	sub r3, r3, #0x1000
	ldr r1, [r7, #0x208]
	ldr r0, [r7, #0x1fc]
	add r1, r2, r1
	add r4, r1, r0
	str r4, [r7, #0x224]
	str r3, [r7, #0x228]
	add r0, r7, #0x20c
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	str r4, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r4, [sp, #8]
	str r3, [sp, #0xc]
	blx r2
	ldrb r0, [r7, #0x202]
	mov r1, r4
	add r1, r1, #0x5000
	str r1, [sp, #0x18]
	cmp r0, #0
	mov r5, #0
	addls sp, sp, #0x20
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
	add r4, r7, #0x258
	mov r8, #0x4c
_021361E8:
	mul r1, r5, r8
	ldr ip, [sp, #0x18]
	add r0, r7, r1
	ldr r3, [sp, #0x1c]
	str ip, [r0, #0x270]
	str r3, [r0, #0x274]
	add r0, r4, r1
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	str ip, [sp]
	str r3, [sp, #4]
	blx r2
	ldr r0, [sp, #0x18]
	add r1, r5, #1
	add r2, r0, #0x5000
	ldrb r0, [r7, #0x202]
	and r5, r1, #0xff
	str r2, [sp, #0x18]
	cmp r5, r0
	blo _021361E8
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov1_02136244
ov1_02136244: ; 0x02136244
	bx lr
	arm_func_end ov1_02136244

	arm_func_start ov1_02136248
ov1_02136248: ; 0x02136248
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0xc4]
	ldrh r1, [r5, #0x2a]
	mov r0, r5
	bl sub_02005FDC
	str r0, [r5, #4]
	add r1, r0, #1
	str r1, [r4, #0x188]
	add r5, r0, #2
	str r5, [r4, #0x210]
	mov r2, #0
	mov r1, #0x4c
	arm_func_end ov1_02136248
_0213627C:
	mla r3, r2, r1, r4
	add r2, r2, #1
	and r2, r2, #0xff
	str r5, [r3, #0x25c]
	cmp r2, #4
	blo _0213627C
	add r0, r0, #3
	str r0, [r4, #0x1e8]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_021362A0
ov1_021362A0: ; 0x021362A0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _0213633C ; =0x00002710
	mov r2, r1
	mov r4, r0
	cmp r2, r3
	addlo r0, r4, #0x200
	strloh r2, [r0, #4]
	blo _021362D0
	sub r1, r3, #1
	add r0, r4, #0x200
	strh r1, [r0, #4]
	arm_func_end ov1_021362A0
_021362D0:
	mov r0, #0
	strb r0, [r4, #0x200]
	mov r3, #1
	ldr r1, _02136340 ; =s_d_overlay_1_021418f8
	add r0, sp, #0
	strb r3, [r4, #0x201]
	bl OS_SPrintf
	tst r0, #0xff
	addeq sp, sp, #8
	strb r0, [r4, #0x202]
	mov r2, #0
	ldmeqia sp!, {r4, pc}
	add ip, sp, #0
	mov r0, #0x4c
_02136308:
	mla r1, r2, r0, r4
	ldrsb r3, [ip, r2]
	add r1, r1, #0x200
	add r2, r2, #1
	sub r3, r3, #0x30
	and r3, r3, #0xff
	strh r3, [r1, #0x82]
	ldrb r1, [r4, #0x202]
	and r2, r2, #0xff
	cmp r2, r1
	blo _02136308
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213633C: .word 0x00002710
_02136340: .word s_d_overlay_1_021418f8

	arm_func_start ov1_02136344
ov1_02136344: ; 0x02136344
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x200]
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r4, #0x200]
	cmp r0, #0xc
	blo _02136374
	mov r0, #0
	strb r0, [r4, #0x200]
	mov r0, #2
	strb r0, [r4, #0x201]
	arm_func_end ov1_02136344
_02136374:
	ldrb r2, [r4, #0x200]
	mov r0, #0x8000
	rsb r0, r0, #0
	mov r1, #0
	mov r3, #0xc
	bl sub_02007068
	str r0, [r4, #0x208]
	ldrb r2, [r4, #0x200]
	mov r0, #1
	mov r1, #0x1f
	mov r3, #0xc
	bl sub_02007068
	and r3, r0, #0xff
	str r3, [r4, #0x220]
	mov r1, #0
	mov r0, #0x4c
_021363B4:
	mla r2, r1, r0, r4
	add r1, r1, #1
	and r1, r1, #0xff
	str r3, [r2, #0x26c]
	cmp r1, #4
	blo _021363B4
	ldmia sp!, {r4, pc}

	arm_func_start ov1_021363D0
ov1_021363D0: ; 0x021363D0
	ldrb r1, [r0, #0x200]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0, #0x200]
	cmp r1, #0x20
	blo _021363F8
	mov r1, #0
	strb r1, [r0, #0x200]
	mov r1, #3
	strb r1, [r0, #0x201]
	arm_func_end ov1_021363D0
_021363F8:
	mov r2, #0
	mov r1, #0x1f
	str r2, [r0, #0x208]
	str r1, [r0, #0x220]
	mov ip, r1
	mov r1, #0x4c
_02136410:
	mla r3, r2, r1, r0
	add r2, r2, #1
	and r2, r2, #0xff
	str ip, [r3, #0x26c]
	cmp r2, #4
	blo _02136410
	bx lr

	arm_func_start ov1_0213642C
ov1_0213642C: ; 0x0213642C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x200]
	mov r3, #0xc
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r4, #0x200]
	cmp r0, #0xc
	movhs r0, #0
	strcsb r0, [r4, #0x200]
	strcsb r0, [r4, #0x201]
	ldrb r2, [r4, #0x200]
	mov r0, #0
	mov r1, #0x8000
	bl sub_02007068
	str r0, [r4, #0x208]
	ldrb r2, [r4, #0x200]
	mov r0, #0x1f
	mov r1, #1
	mov r3, #0xc
	bl sub_02007068
	and r3, r0, #0xff
	str r3, [r4, #0x220]
	mov r1, #0
	mov r0, #0x4c
	arm_func_end ov1_0213642C
_02136490:
	mla r2, r1, r0, r4
	add r1, r1, #1
	and r1, r1, #0xff
	str r3, [r2, #0x26c]
	cmp r1, #4
	blo _02136490
	ldmia sp!, {r4, pc}

	arm_func_start ov1_021364AC
ov1_021364AC: ; 0x021364AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_021364D4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021364AC

	arm_func_start ov1_021364C0
ov1_021364C0: ; 0x021364C0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02136678
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021364C0

	arm_func_start ov1_021364D4
ov1_021364D4: ; 0x021364D4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x6c
	bl _Znwm
	movs r5, r0
	beq _02136518
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _0213664C ; =s_BEG_overlay_1_021418fc
	ldr r2, _02136650 ; =s_data_interface_i000_LZ_bin_overlay_1_02141900
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
	arm_func_end ov1_021364D4
_02136518:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _0213653C
	mov r2, #0
	ldr r1, _02136654 ; =s_BEG_i000_00_NCBR_overlay_1_0214191c
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_0213653C:
	str r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r4, #0xc]
	mov r1, r1, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r4]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02136590
	mov r2, #0
	ldr r1, _02136658 ; =s_BEG_i000_NCLR_overlay_1_02141930
	mov r3, r2
	bl sub_02007AC0
_02136590:
	str r0, [r4, #4]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r4, #0x10]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #4]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r4, #4]
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _021365EC
	ldr r1, _0213665C ; =s_BEG_i000_00_NCER_overlay_1_02141940
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020031E8
_021365EC:
	str r0, [r4, #8]
	cmp r5, #0
	beq _02136608
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
_02136608:
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02136640
	ldr r2, _02136660 ; =s_BDN_i070_NCLR_overlay_1_02141988
	ldr r1, _02136664 ; =s_BDN_i070_00_NCER_overlay_1_02141998
	str r2, [sp]
	ldr ip, _02136668 ; =s_BDN_i070_00_cac_overlay_1_021419ac
	str r1, [sp, #4]
	ldr r1, _0213666C ; =s_BDN_overlay_1_02141954
	ldr r2, _02136670 ; =s_data_interface_i070_LZ_bin_overlay_1_02141958
	ldr r3, _02136674 ; =s_BDN_i070_00_NCBR_overlay_1_02141974
	str ip, [sp, #8]
	bl sub_0201AAE0
_02136640:
	str r0, [r4, #0x14]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0213664C: .word s_BEG_overlay_1_021418fc
_02136650: .word s_data_interface_i000_LZ_bin_overlay_1_02141900
_02136654: .word s_BEG_i000_00_NCBR_overlay_1_0214191c
_02136658: .word s_BEG_i000_NCLR_overlay_1_02141930
_0213665C: .word s_BEG_i000_00_NCER_overlay_1_02141940
_02136660: .word s_BDN_i070_NCLR_overlay_1_02141988
_02136664: .word s_BDN_i070_00_NCER_overlay_1_02141998
_02136668: .word s_BDN_i070_00_cac_overlay_1_021419ac
_0213666C: .word s_BDN_overlay_1_02141954
_02136670: .word s_data_interface_i070_LZ_bin_overlay_1_02141958
_02136674: .word s_BDN_i070_00_NCBR_overlay_1_02141974

	arm_func_start ov1_02136678
ov1_02136678: ; 0x02136678
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4]
	cmp r5, #0
	beq _021366A8
	beq _021366A0
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_02136678
_021366A0:
	mov r0, #0
	str r0, [r4]
_021366A8:
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _021366D0
	beq _021366C8
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
_021366C8:
	mov r0, #0
	str r0, [r4, #4]
_021366D0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021366F4
	beq _021366EC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_021366EC:
	mov r0, #0
	str r0, [r4, #8]
_021366F4:
	ldr r0, [r4, #0xc]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r4, #0x10]
	bl NNS_GfdFreeLnkPlttVram
	ldr r5, [r4, #0x14]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02136724
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
_02136724:
	mov r0, #0
	str r0, [r4, #0x14]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02136730
ov1_02136730: ; 0x02136730
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02004114
	mov r1, #0
	mov r0, r4
	strh r1, [r4, #0x80]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02136730

	arm_func_start ov1_0213674C
ov1_0213674C: ; 0x0213674C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02004160
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213674C

	arm_func_start ov1_02136760
ov1_02136760: ; 0x02136760
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0x80]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldrh r1, [r4, #0x60]
	tst r1, #1
	beq _02136784
	bl ov1_0213680C
	arm_func_end ov1_02136760
_02136784:
	ldrh r0, [r4, #0x60]
	tst r0, #2
	beq _02136798
	mov r0, r4
	bl ov1_02136840
_02136798:
	ldrh r0, [r4, #0x60]
	tst r0, #4
	beq _021367AC
	mov r0, r4
	bl ov1_02136874
_021367AC:
	ldrh r0, [r4, #0x60]
	tst r0, #8
	beq _021367C0
	mov r0, r4
	bl ov1_021368A8
_021367C0:
	ldrh r0, [r4, #0x60]
	tst r0, #0x10
	beq _021367D4
	mov r0, r4
	bl ov1_021368D0
_021367D4:
	ldrh r0, [r4, #0x60]
	tst r0, #0x20
	beq _021367E8
	mov r0, r4
	bl ov1_021368F8
_021367E8:
	ldrh r0, [r4, #0x60]
	tst r0, #0x80
	beq _021367FC
	mov r0, r4
	bl ov1_021368FC
_021367FC:
	ldrh r0, [r4, #0x80]
	sub r0, r0, #1
	strh r0, [r4, #0x80]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0213680C
ov1_0213680C: ; 0x0213680C
	ldr r2, [r0, #0x88]
	cmp r2, #0x1000
	beq _0213682C
	ldr r1, [r0, #0x84]
	smull r3, r2, r1, r2
	mov r1, r3, lsr #0xc
	orr r1, r1, r2, lsl #20
	str r1, [r0, #0x84]
	arm_func_end ov1_0213680C
_0213682C:
	ldr r2, [r0, #0x64]
	ldr r1, [r0, #0x84]
	add r1, r2, r1
	str r1, [r0, #0x64]
	bx lr

	arm_func_start ov1_02136840
ov1_02136840: ; 0x02136840
	ldr r2, [r0, #0x90]
	cmp r2, #0x1000
	beq _02136860
	ldr r1, [r0, #0x8c]
	smull r3, r2, r1, r2
	mov r1, r3, lsr #0xc
	orr r1, r1, r2, lsl #20
	str r1, [r0, #0x8c]
	arm_func_end ov1_02136840
_02136860:
	ldr r2, [r0, #0x68]
	ldr r1, [r0, #0x8c]
	add r1, r2, r1
	str r1, [r0, #0x68]
	bx lr

	arm_func_start ov1_02136874
ov1_02136874: ; 0x02136874
	ldr r2, [r0, #0x98]
	cmp r2, #0x1000
	beq _02136894
	ldr r1, [r0, #0x94]
	smull r3, r2, r1, r2
	mov r1, r3, lsr #0xc
	orr r1, r1, r2, lsl #20
	str r1, [r0, #0x94]
	arm_func_end ov1_02136874
_02136894:
	ldr r2, [r0, #0x6c]
	ldr r1, [r0, #0x94]
	add r1, r2, r1
	str r1, [r0, #0x6c]
	bx lr

	arm_func_start ov1_021368A8
ov1_021368A8: ; 0x021368A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r3, [r4, #0x7e]
	ldrh r2, [r4, #0x80]
	ldrb r0, [r4, #0x9c]
	ldrb r1, [r4, #0x9d]
	sub r2, r3, r2
	bl sub_02007068
	strb r0, [r4, #0x74]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021368A8

	arm_func_start ov1_021368D0
ov1_021368D0: ; 0x021368D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r3, [r4, #0x7e]
	ldrh r2, [r4, #0x80]
	ldr r0, [r4, #0xa0]
	ldr r1, [r4, #0xa4]
	sub r2, r3, r2
	bl sub_02007068
	str r0, [r4, #0x78]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021368D0

	arm_func_start ov1_021368F8
ov1_021368F8: ; 0x021368F8
	bx lr
	arm_func_end ov1_021368F8

	arm_func_start ov1_021368FC
ov1_021368FC: ; 0x021368FC
	ldr r2, [r0, #0x84]
	ldr r1, [r0, #0xa8]
	add r1, r2, r1
	str r1, [r0, #0x84]
	ldr r2, [r0, #0x8c]
	ldr r1, [r0, #0xac]
	add r1, r2, r1
	str r1, [r0, #0x8c]
	ldr r2, [r0, #0x94]
	ldr r1, [r0, #0xb0]
	add r1, r2, r1
	str r1, [r0, #0x94]
	bx lr
	arm_func_end ov1_021368FC

	arm_func_start ov1_02136930
ov1_02136930: ; 0x02136930
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r6, r0
	ldrh r3, [r6, #0x80]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	ldrneb r1, [r6, #0x74]
	cmpne r1, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #0x7c]
	ldr ip, _021369F8 ; =0x000003FF
	strh r1, [r6, #8]
	ldrb r1, [r6, #0x74]
	str r1, [r6, #0x14]
	ldr r2, [r6, #0x70]
	ldr r1, [r6, #0x78]
	ldr lr, [r6, #0x6c]
	smull r1, r7, r2, r1
	mov r3, r1, lsr #0xc
	ldr r2, [r6, #0x68]
	ldr r1, [r6, #0x64]
	add lr, r2, lr
	orr r3, r3, r7, lsl #20
	str lr, [sp]
	str r1, [sp, #4]
	add r2, r3, lr
	str r2, [sp, #8]
	sub r2, r1, r3
	str r2, [sp, #0xc]
	str lr, [sp, #0x10]
	sub r2, lr, r3
	add r3, r1, r3
	str ip, [sp, #0x14]
	bl sub_020041A4
	cmp r4, #0
	mov r0, r6
	beq _021369E0
	mov r1, r5
	mov r2, r4
	bl sub_0200420C
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov1_02136930
_021369E0:
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #8]
	blx r2
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021369F8: .word 0x000003FF

	arm_func_start ov1_021369FC
ov1_021369FC: ; 0x021369FC
	mov ip, #0
	strh ip, [r0, #0x60]
	str r2, [r0, #0x64]
	ldr ip, [sp]
	str r3, [r0, #0x68]
	ldr r2, [sp, #4]
	str ip, [r0, #0x6c]
	ldrh r3, [sp, #8]
	str r2, [r0, #0x70]
	mov r2, #0x1f
	strh r3, [r0, #0x7c]
	strb r2, [r0, #0x74]
	mov r2, #0x1000
	str r2, [r0, #0x78]
	strh r1, [r0, #0x7e]
	strh r1, [r0, #0x80]
	bx lr
	arm_func_end ov1_021369FC

	arm_func_start ov1_02136A40
ov1_02136A40: ; 0x02136A40
	ldrh r3, [r0, #0x60]
	orr r3, r3, #1
	strh r3, [r0, #0x60]
	str r1, [r0, #0x84]
	str r2, [r0, #0x88]
	bx lr
	arm_func_end ov1_02136A40

	arm_func_start ov1_02136A58
ov1_02136A58: ; 0x02136A58
	ldrh r3, [r0, #0x60]
	orr r3, r3, #2
	strh r3, [r0, #0x60]
	str r1, [r0, #0x8c]
	str r2, [r0, #0x90]
	bx lr
	arm_func_end ov1_02136A58

	arm_func_start ov1_02136A70
ov1_02136A70: ; 0x02136A70
	ldrh r3, [r0, #0x60]
	orr r3, r3, #4
	strh r3, [r0, #0x60]
	str r1, [r0, #0x94]
	str r2, [r0, #0x98]
	bx lr
	arm_func_end ov1_02136A70

	arm_func_start ov1_02136A88
ov1_02136A88: ; 0x02136A88
	ldrh r3, [r0, #0x60]
	orr r3, r3, #8
	strh r3, [r0, #0x60]
	strb r1, [r0, #0x9c]
	strb r2, [r0, #0x9d]
	bx lr
	arm_func_end ov1_02136A88

	arm_func_start ov1_02136AA0
ov1_02136AA0: ; 0x02136AA0
	ldrh r3, [r0, #0x60]
	orr r3, r3, #0x10
	strh r3, [r0, #0x60]
	str r1, [r0, #0xa0]
	str r2, [r0, #0xa4]
	bx lr
	arm_func_end ov1_02136AA0

	arm_func_start ov1_02136AB8
ov1_02136AB8: ; 0x02136AB8
	ldrh ip, [r0, #0x60]
	orr ip, ip, #0x80
	strh ip, [r0, #0x60]
	str r1, [r0, #0xa8]
	str r2, [r0, #0xac]
	str r3, [r0, #0xb0]
	bx lr
	arm_func_end ov1_02136AB8

	arm_func_start ov1_02136AD4
ov1_02136AD4: ; 0x02136AD4
	strh r2, [r0]
	str r1, [r0, #4]
	mov r1, #0
	strh r1, [r0, #8]
	bx lr
	arm_func_end ov1_02136AD4

	arm_func_start ov1_02136AE8
ov1_02136AE8: ; 0x02136AE8
	bx lr
	arm_func_end ov1_02136AE8

	arm_func_start ov1_02136AEC
ov1_02136AEC: ; 0x02136AEC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_02136AEC
_02136B04:
	ldr r0, [r5, #4]
	ldr r0, [r0, r4, lsl #2]
	bl ov1_02136760
	ldrh r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blt _02136B04
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02136B24
ov1_02136B24: ; 0x02136B24
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldrh r0, [r5, #8]
	ldr r4, [r5, #4]
	ldr ip, [sp, #0x18]
	ldr r4, [r4, r0, lsl #2]
	ldr r0, [sp, #0x1c]
	str ip, [sp]
	ldrh ip, [sp, #0x20]
	str r0, [sp, #4]
	mov r0, r4
	str ip, [sp, #8]
	bl ov1_021369FC
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
	ldrh r1, [r5, #8]
	ldrh r0, [r5]
	cmp r1, r0
	movhs r0, #0
	strhsh r0, [r5, #8]
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov1_02136B24

	arm_func_start ov1_02136B88
ov1_02136B88: ; 0x02136B88
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrh r0, [r7]
	mov r6, r1
	mov r5, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, r5
	arm_func_end ov1_02136B88
_02136BA8:
	ldr r0, [r7, #4]
	mov r1, r6
	ldr r0, [r0, r5, lsl #2]
	mov r2, r4
	bl ov1_02136930
	ldrh r0, [r7]
	add r5, r5, #1
	cmp r5, r0
	blt _02136BA8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_02136BD0
ov1_02136BD0: ; 0x02136BD0
	ldrh r2, [r0]
	mov r3, #0
	cmp r2, #0
	bxle lr
	arm_func_end ov1_02136BD0
_02136BE0:
	ldr r2, [r0, #4]
	ldr r2, [r2, r3, lsl #2]
	add r3, r3, #1
	str r1, [r2, #0x10]
	ldrh r2, [r0]
	cmp r3, r2
	blt _02136BE0
	bx lr

	arm_func_start ov1_02136C00
ov1_02136C00: ; 0x02136C00
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	bl sub_02011D60
	ldr r1, _02136D20 ; =ptr_FUN_overlay_1_02136d60_overlay_1_02141a04
	add r0, r4, #0x214
	str r1, [r4]
	bl sub_02005150
	add r0, r4, #0x260
	bl sub_02005150
	ldr r1, _02136D24 ; =ov1_02136D48
	ldr r3, _02136D28 ; =ov1_02136D30
	str r1, [sp]
	add r0, r4, #0x2b0
	mov r1, #0x30
	mov r2, #0x34
	bl __cxa_vec_ctor
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r1, [r0, #0x48c]
	mov r0, r4
	str r1, [r4, #0x184]
	bl ov1_021371C4
	mov r0, r4
	bl ov1_02136E08
	mov r6, #0
	mov r5, #0xb4
	arm_func_end ov1_02136C00
_02136C6C:
	mov r0, r5
	bl _Znwm
	cmp r0, #0
	beq _02136C80
	bl ov1_02136730
_02136C80:
	add r1, r4, r6, lsl #2
	add r6, r6, #1
	str r0, [r1, #0x1b4]
	cmp r6, #0x14
	blt _02136C6C
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02136CB0
	add r1, r4, #0x1b4
	mov r2, #0x14
	bl ov1_02136AD4
_02136CB0:
	mov r1, #1
	str r0, [r4, #0x204]
	bl ov1_02136BD0
	mov r0, #2
	strb r0, [r4, #0xc71]
	mov r5, #0
	add r0, r4, #0xc00
	mov r1, #0x64
	strh r1, [r0, #0x74]
	mov r1, #0x78
	strh r1, [r0, #0x76]
	ldr r3, _02136D2C ; =0x000013FF
	strb r5, [r4, #0x2ac]
	mov ip, r5
	mov r2, #1
	mov r0, #0x34
_02136CF0:
	mla lr, r5, r0, r4
	add r1, r5, #1
	and r5, r1, #0xff
	strb ip, [lr, #0x2b0]
	add r1, lr, #0x200
	strh r3, [r1, #0xc4]
	str r2, [lr, #0x2cc]
	cmp r5, #0x30
	blo _02136CF0
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02136D20: .word ptr_FUN_overlay_1_02136d60_overlay_1_02141a04
_02136D24: .word ov1_02136D48
_02136D28: .word ov1_02136D30
_02136D2C: .word 0x000013FF

	arm_func_start ov1_02136D30
ov1_02136D30: ; 0x02136D30
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xc
	bl sub_020039B8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02136D30

	arm_func_start ov1_02136D48
ov1_02136D48: ; 0x02136D48
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xc
	bl sub_020039E8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02136D48

	arm_func_start ov1_02136D60
ov1_02136D60: ; 0x02136D60
	stmdb sp!, {r4, lr}
	ldr r1, _02136DA8 ; =ptr_FUN_overlay_1_02136d60_overlay_1_02141a04
	mov r4, r0
	str r1, [r4]
	bl ov1_02136FB8
	ldr r3, _02136DAC ; =ov1_02136D48
	add r0, r4, #0x2b0
	mov r1, #0x30
	mov r2, #0x34
	bl __cxa_vec_cleanup
	add r0, r4, #0x260
	bl sub_020051C8
	add r0, r4, #0x214
	bl sub_020051C8
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02136DA8: .word ptr_FUN_overlay_1_02136d60_overlay_1_02141a04
_02136DAC: .word ov1_02136D48
	arm_func_end ov1_02136D60

	arm_func_start ov1_02136DB0
ov1_02136DB0: ; 0x02136DB0
	stmdb sp!, {r4, lr}
	ldr r1, _02136E00 ; =ptr_FUN_overlay_1_02136d60_overlay_1_02141a04
	mov r4, r0
	str r1, [r4]
	bl ov1_02136FB8
	ldr r3, _02136E04 ; =ov1_02136D48
	add r0, r4, #0x2b0
	mov r1, #0x30
	mov r2, #0x34
	bl __cxa_vec_cleanup
	add r0, r4, #0x260
	bl sub_020051C8
	add r0, r4, #0x214
	bl sub_020051C8
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02136E00: .word ptr_FUN_overlay_1_02136d60_overlay_1_02141a04
_02136E04: .word ov1_02136D48
	arm_func_end ov1_02136DB0

	arm_func_start ov1_02136E08
ov1_02136E08: ; 0x02136E08
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1ec
	ldr r8, _02136F84 ; =ptr_s_PSE_overlay_1_021419c8_overlay_1_021419cc
	ldr r7, _02136F88 ; =ptr_s_00_overlay_1_021419c0_overlay_1_021419d4
	mov sl, r0
	mov sb, #0
	add r6, sp, #0xcc
	add r5, sp, #0x6c
	add r4, sp, #0xc
	add fp, sp, #0x18c
	arm_func_end ov1_02136E08
_02136E30:
	ldr r1, _02136F8C ; =s_data_interface_i025_LZ_bin_overlay_1_02141a18
	mov r0, fp
	bl OS_SPrintf
	ldr r1, _02136F90 ; =s_s_i025_s_NCBR_overlay_1_02141a34
	ldr r2, [r8, sb, lsl #2]
	ldr r3, [r7, sb, lsl #2]
	add r0, sp, #0x12c
	bl OS_SPrintf
	ldr r1, _02136F94 ; =s_s_i025_NCLR_overlay_1_02141a44
	ldr r2, [r8, sb, lsl #2]
	mov r0, r6
	bl OS_SPrintf
	ldr r1, _02136F98 ; =s_s_i025_s_NCER_overlay_1_02141a54
	ldr r2, [r8, sb, lsl #2]
	ldr r3, [r7, sb, lsl #2]
	mov r0, r5
	bl OS_SPrintf
	ldr r1, _02136F9C ; =s_s_i025_s_cac_overlay_1_02141a64
	ldr r2, [r8, sb, lsl #2]
	ldr r3, [r7, sb, lsl #2]
	mov r0, r4
	bl OS_SPrintf
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02136EB4
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [r8, sb, lsl #2]
	mov r2, fp
	add r3, sp, #0x12c
	bl sub_0201AAE0
_02136EB4:
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x188]
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	add r1, sl, sb, lsl #1
	add r1, r1, #0x100
	add sb, sb, #1
	strh r0, [r1, #0xb0]
	cmp sb, #2
	blt _02136E30
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02136F1C
	ldr r2, _02136FA0 ; =s_BLD_i066_NCLR_overlay_1_02141aa8
	ldr r1, _02136FA4 ; =s_BLD_i066_00_NCER_overlay_1_02141ab8
	str r2, [sp]
	ldr r4, _02136FA8 ; =s_BLD_i066_00_cac_overlay_1_02141acc
	str r1, [sp, #4]
	ldr r1, _02136FAC ; =s_BLD_overlay_1_02141a74
	ldr r2, _02136FB0 ; =s_data_interface_i066_LZ_bin_overlay_1_02141a78
	ldr r3, _02136FB4 ; =s_BLD_i066_00_NCBR_overlay_1_02141a94
	str r4, [sp, #8]
	bl sub_0201AAE0
_02136F1C:
	str r0, [sl, #0x210]
	ldmia r0, {r0, r1, r3}
	str r0, [sl, #0x240]
	mov r2, #0
	str r2, [sl, #0x244]
	str r1, [sl, #0x248]
	mov r1, #1
	str r3, [sl, #0x24c]
	add r0, sl, #0x200
	strh r1, [r0, #0x3e]
	rsb r5, r1, #0x400
	str r5, [sl, #0x218]
	ldr r0, [sl, #0x210]
	ldmia r0, {r0, r3, r4}
	str r0, [sl, #0x28c]
	str r2, [sl, #0x290]
	str r3, [sl, #0x294]
	str r4, [sl, #0x298]
	str r5, [sl, #0x264]
	ldr r0, [sl, #0x210]
	ldr r0, [r0, #0xc]
	bl sub_02008A80
	add r1, sl, #0x200
	strh r0, [r1, #0xe]
	add sp, sp, #0x1ec
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02136F84: .word ptr_s_PSE_overlay_1_021419c8_overlay_1_021419cc
_02136F88: .word ptr_s_00_overlay_1_021419c0_overlay_1_021419d4
_02136F8C: .word s_data_interface_i025_LZ_bin_overlay_1_02141a18
_02136F90: .word s_s_i025_s_NCBR_overlay_1_02141a34
_02136F94: .word s_s_i025_NCLR_overlay_1_02141a44
_02136F98: .word s_s_i025_s_NCER_overlay_1_02141a54
_02136F9C: .word s_s_i025_s_cac_overlay_1_02141a64
_02136FA0: .word s_BLD_i066_NCLR_overlay_1_02141aa8
_02136FA4: .word s_BLD_i066_00_NCER_overlay_1_02141ab8
_02136FA8: .word s_BLD_i066_00_cac_overlay_1_02141acc
_02136FAC: .word s_BLD_overlay_1_02141a74
_02136FB0: .word s_data_interface_i066_LZ_bin_overlay_1_02141a78
_02136FB4: .word s_BLD_i066_00_NCBR_overlay_1_02141a94

	arm_func_start ov1_02136FB8
ov1_02136FB8: ; 0x02136FB8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r4, r0
	mov r5, r6
	arm_func_end ov1_02136FB8
_02136FC8:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0x1b4]
	cmp r7, #0
	beq _02136FF4
	beq _02136FEC
	mov r0, r7
	bl ov1_0213674C
	mov r0, r7
	bl _ZdlPv
_02136FEC:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x1b4]
_02136FF4:
	add r6, r6, #1
	cmp r6, #0x14
	blt _02136FC8
	ldr r5, [r4, #0x204]
	cmp r5, #0
	beq _02137028
	beq _02137020
	mov r0, r5
	bl ov1_02136AE8
	mov r0, r5
	bl _ZdlPv
_02137020:
	mov r0, #0
	str r0, [r4, #0x204]
_02137028:
	mov r6, #0
	mov r5, r6
_02137030:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0x188]
	cmp r7, #0
	beq _0213705C
	beq _02137054
	mov r0, r7
	bl sub_0201AB14
	mov r0, r7
	bl _ZdlPv
_02137054:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x188]
_0213705C:
	add r6, r6, #1
	cmp r6, #2
	blt _02137030
	ldr r5, [r4, #0x210]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	beq _02137088
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
_02137088:
	mov r0, #0
	str r0, [r4, #0x210]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_02137094
ov1_02137094: ; 0x02137094
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x100
	ldrh r2, [r1, #0xa8]
	tst r2, #1
	beq _021370E4
	add r1, sp, #0xc
	ldmia r1, {r1, r2}
	bl ov1_021374FC
	cmp r0, #0
	bne _02137118
	add r0, r4, #0x100
	ldrh r2, [r0, #0xa8]
	mov r1, #0
	bic r2, r2, #3
	strh r2, [r0, #0xa8]
	strb r1, [r4, #0xc72]
	strh r1, [r0, #0xac]
	b _02137118
	arm_func_end ov1_02137094
_021370E4:
	orr r0, r2, #1
	ldr r2, [sp, #0xc]
	strh r0, [r1, #0xa8]
	ldr r0, [sp, #0x10]
	str r2, [r4, #0x190]
	str r0, [r4, #0x194]
	ldr r0, [r4, #0x184]
	mov r1, #0x32
	bl sub_02034C5C
	add r0, r4, #0x100
	ldrh r1, [r0, #0xa8]
	bic r1, r1, #0x10
	strh r1, [r0, #0xa8]
_02137118:
	add r1, sp, #0xc
	add r0, r4, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r1, [r4, #0x1a0]
	str r0, [r4, #0x1a4]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start ov1_02137144
ov1_02137144: ; 0x02137144
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x100
	ldrh r3, [r1, #0xa8]
	mov r2, #0
	bic r3, r3, #3
	strh r3, [r1, #0xa8]
	strb r2, [r4, #0xc72]
	bl ov1_021371F0
	ldr r0, [r4, #0x184]
	mov r1, #0x32
	bl sub_02034C5C
	add r0, r4, #0x100
	ldrh r1, [r0, #0xa8]
	bic r1, r1, #0x10
	strh r1, [r0, #0xa8]
	ldrh r1, [r0, #0xa8]
	bic r1, r1, #0x20
	strh r1, [r0, #0xa8]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02137144

	arm_func_start ov1_02137194
ov1_02137194: ; 0x02137194
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x100
	ldr r2, [r4, #0x18c]
	ldrh r1, [r0, #0xb2]
	ldr r0, [r2, #0xc]
	bl sub_020089B8
	add r0, r4, #0x100
	ldrh r1, [r0, #0xa8]
	orr r1, r1, #4
	strh r1, [r0, #0xa8]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_02137194

	arm_func_start ov1_021371C4
ov1_021371C4: ; 0x021371C4
	add r1, r0, #0x100
	mov r2, #0
	strh r2, [r1, #0xa8]
	strh r2, [r1, #0xaa]
	strh r2, [r1, #0xac]
	strb r2, [r0, #0xc70]
	strb r2, [r0, #0xc72]
	mov r1, #0xf
	strb r1, [r0, #0xc7c]
	str r2, [r0, #0xc78]
	bx lr
	arm_func_end ov1_021371C4

	arm_func_start ov1_021371F0
ov1_021371F0: ; 0x021371F0
	add r1, r0, #0xc00
	mov r2, #0
	strh r2, [r1, #0x7e]
	strb r2, [r0, #0xc70]
	add r0, r0, #0x100
	strh r2, [r0, #0xac]
	bx lr
	arm_func_end ov1_021371F0

	arm_func_start ov1_0213720C
ov1_0213720C: ; 0x0213720C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	mov r4, r0
	bl sub_0201001C
	add r2, r0, #0x1000
	add r1, r0, #0x460
	add r1, r1, #0x1000
	ldmib r1, {r5, r6}
	ldr r3, [r2, #0x460]
	ldr r1, _021373E8 ; =0x000036B0
	mla r6, r5, r3, r6
	mov r3, r6, lsr #0x10
	ldr r8, [r4, #0x1a0]
	ldr r7, [r4, #0x1a4]
	add r0, r0, #0x48
	str r6, [r2, #0x460]
	mul r1, r3, r1
	add lr, r0, #0x1400
	mov r0, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r0, [lr, #8]
	mov r5, #0
	str r0, [sp, #0xc]
	mov r0, r5, lsl #0x10
	ldr r3, [r2, #0x448]
	ldr sl, [sp, #0xc]
	ldr r5, _021373EC ; =0xFFFFE4A8
	mov r1, r1, lsl #0x10
	add r1, r5, r1, asr #16
	ldr r5, [lr, #0x14]
	umull sb, ip, sl, r3
	str r5, [sp, #0x20]
	ldr r5, [lr, #0xc]
	str sb, [sp, #0x24]
	str r5, [sp, #0x10]
	ldr r5, [lr, #4]
	mov r6, #0xc000
	str r5, [sp, #0x14]
	ldr sb, [sp, #0x14]
	mov r1, r1, lsl #0x10
	mla ip, sl, sb, ip
	ldr sb, [sp, #0x10]
	add r1, r6, r1, asr #16
	mla ip, sb, r3, ip
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	add r5, r1, #1
	mov r6, r5, lsl #1
	ldr r5, _021373F0 ; =FX_SinCosTable_
	ldr fp, [lr, #0x10]
	ldr r3, [sp, #0x24]
	ldrsh r6, [r5, r6]
	adds r3, fp, r3
	str r3, [r2, #0x448]
	ldr r2, [sp, #0x20]
	mov r1, r1, lsl #1
	adc r3, r2, ip
	ldrsh r5, [r5, r1]
	mov r1, r6, asr #0x1f
	str r1, [sp, #0x1c]
	mov r1, r5, asr #0x1f
	str r1, [sp, #0x18]
	str r3, [lr, #4]
	mov r2, #0
	str r2, [sp]
	mov r2, #0x3000
	str r2, [sp, #4]
	ldr r2, _021373F4 ; =0x000013FF
	orr r0, r0, r3, lsr #16
	str r2, [sp, #8]
	add r3, r0, #0x18000
	ldr r0, [r4, #0x204]
	smull r4, r2, r3, r6
	mov r4, r4, lsr #0xc
	orr r4, r4, r2, lsl #20
	str r8, [sp, #0x28]
	add r2, r8, r4
	smull r8, r4, r3, r5
	mov r3, r8, lsr #0xc
	orr r3, r3, r4, lsl #20
	mov r1, #0x14
	add r3, r7, r3
	str r7, [sp, #0x2c]
	bl ov1_02136B24
	ldr r3, _021373F8 ; =0xFFFFECCD
	mvn r1, #0
	umull r8, r7, r6, r3
	mla r7, r6, r1, r7
	ldr r1, [sp, #0x1c]
	mov r2, #0x1000
	mla r7, r1, r3, r7
	mov r1, r8, lsr #0xc
	orr r1, r1, r7, lsl #20
	mov r4, r0
	bl ov1_02136A40
	ldr r1, _021373F8 ; =0xFFFFECCD
	mvn r0, #0
	umull r3, r2, r5, r1
	mla r2, r5, r0, r2
	ldr r0, [sp, #0x18]
	mla r2, r0, r1, r2
	mov r1, r3, lsr #0xc
	orr r1, r1, r2, lsl #20
	mov r0, r4
	mov r2, #0x1000
	bl ov1_02136A58
	mov r0, r4
	mov r1, #0xc
	mov r2, #0x1f
	bl ov1_02136A88
	mov r0, r4
	mov r1, #0x1000
	mov r2, #4
	bl ov1_02136AA0
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021373E8: .word 0x000036B0
_021373EC: .word 0xFFFFE4A8
_021373F0: .word FX_SinCosTable_
_021373F4: .word 0x000013FF
_021373F8: .word 0xFFFFECCD
	arm_func_end ov1_0213720C

	arm_func_start ov1_021373FC
ov1_021373FC: ; 0x021373FC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	bl sub_0201001C
	ldrb r2, [r4, #0x2ac]
	mov r1, #0x34
	add r5, r4, #0x2b0
	smulbb r2, r2, r1
	mov r1, #1
	strb r1, [r5, r2]
	add r3, r0, #0x460
	add r2, r5, r2
	mov r1, #0
	strh r1, [r2, #2]
	add lr, r0, #0x1000
	add r3, r3, #0x1000
	ldmib r3, {r6, r7}
	ldr r5, [lr, #0x460]
	ldr r3, _021374F4 ; =0x000036B0
	mla r7, r6, r5, r7
	mov r5, r7, lsr #0x10
	mul r3, r5, r3
	mov r3, r3, lsr #0x10
	mov r3, r3, lsl #0x10
	add ip, r0, #0x48
	mov r5, r3, lsr #0x10
	str r7, [lr, #0x460]
	mov r0, #0xc000
	strh r0, [r2, #4]
	mov r0, r5, lsl #0x10
	ldr r3, _021374F8 ; =0xFFFFE4A8
	ldrh r5, [r2, #4]
	add r0, r3, r0, asr #16
	mov r0, r0, lsl #0x10
	add r0, r5, r0, asr #16
	strh r0, [r2, #4]
	mov r3, #0x20000
	str r3, [r2, #8]
	add r0, ip, #0x1400
	ldr ip, [lr, #0x448]
	ldmib r0, {r3, r5}
	umull r7, r6, r5, ip
	mla r6, r5, r3, r6
	ldr r3, [r0, #0xc]
	ldr r8, [r0, #0x10]
	mla r6, r3, ip, r6
	ldr r5, [r0, #0x14]
	adds r7, r8, r7
	adc r5, r5, r6
	str r7, [lr, #0x448]
	str r5, [r0, #4]
	mov r0, #0x18000
	umull r0, r3, r5, r0
	ldr ip, [r2, #8]
	add r0, ip, r3
	str r0, [r2, #8]
	ldrb r0, [r4, #0x2ac]
	add r2, r0, #1
	and r0, r2, #0xff
	strb r2, [r4, #0x2ac]
	cmp r0, #0x30
	strcsb r1, [r4, #0x2ac]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021374F4: .word 0x000036B0
_021374F8: .word 0xFFFFE4A8
	arm_func_end ov1_021373FC

	arm_func_start ov1_021374FC
ov1_021374FC: ; 0x021374FC
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x190]
	ldr r2, [sp, #0xc]
	ldr r1, [r0, #0x194]
	ldr r0, [sp, #0x10]
	sub lr, r3, r2
	sub ip, r1, r0
	smull r3, r2, lr, lr
	smull r1, r0, ip, ip
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	cmp r0, #0x40000
	movle r0, #1
	movgt r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov1_021374FC

	arm_func_start ov1_02137550
ov1_02137550: ; 0x02137550
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	mov r4, r0
	add r0, r4, #0x100
	ldrh r2, [r0, #0xa8]
	tst r2, #1
	beq _02137584
	ldrb r1, [r4, #0xc72]
	cmp r1, #0x1e
	orreq r1, r2, #2
	streqh r1, [r0, #0xa8]
	addne r0, r1, #1
	strneb r0, [r4, #0xc72]
	arm_func_end ov1_02137550
_02137584:
	add r1, r4, #0x100
	ldrh r0, [r1, #0xa8]
	tst r0, #2
	beq _0213765C
	tst r0, #4
	bne _0213765C
	tst r0, #8
	bne _0213765C
	ldrb r3, [r4, #0xc70]
	ldrb r0, [r4, #0xc71]
	cmp r3, r0
	bhs _0213764C
	add r0, r4, r3, lsl #1
	add r0, r0, #0xc00
	ldrh r2, [r1, #0xac]
	ldrh r0, [r0, #0x74]
	cmp r2, r0
	bne _0213761C
	add r0, r3, #1
	strb r0, [r4, #0xc70]
	mov r2, #0
	mov r0, r4
	strh r2, [r1, #0xac]
	bl ov1_02137194
	ldr r0, [r4, #0x184]
	mov r1, #0x32
	bl sub_02034C5C
	ldr r0, [r4, #0x184]
	mov r1, #0x33
	bl sub_02034C44
	add r1, r4, #0x100
	ldrh r2, [r1, #0xa8]
	mov r0, r4
	bic r2, r2, #0x10
	strh r2, [r1, #0xa8]
	ldrb r1, [r4, #0xc70]
	bl ov1_02137D44
	b _0213764C
_0213761C:
	add r0, r2, #1
	strh r0, [r1, #0xac]
	ldrh r0, [r1, #0xa8]
	tst r0, #0x10
	bne _0213764C
	ldr r0, [r4, #0x184]
	mov r1, #0x32
	bl sub_02034C44
	add r0, r4, #0x100
	ldrh r1, [r0, #0xa8]
	orr r1, r1, #0x10
	strh r1, [r0, #0xa8]
_0213764C:
	add r0, r4, #0x100
	ldrh r1, [r0, #0xaa]
	add r1, r1, #1
	strh r1, [r0, #0xaa]
_0213765C:
	add r1, r4, #0x100
	ldrh r0, [r1, #0xa8]
	tst r0, #8
	beq _02137698
	add r0, r4, #0xc00
	ldrh r2, [r0, #0x7e]
	cmp r2, #0x18
	addne r1, r2, #1
	strneh r1, [r0, #0x7e]
	bne _02137698
	mov r2, #0
	strh r2, [r0, #0x7e]
	ldrh r0, [r1, #0xa8]
	bic r0, r0, #8
	strh r0, [r1, #0xa8]
_02137698:
	add r1, r4, #0x100
	ldrh r3, [r1, #0xac]
	ldrb r2, [r4, #0xc70]
	ldr r0, _02137AA8 ; =DAT_overlay_1_02140280
	mov r3, r3, lsl #0xc
	ldr r2, [r0, r2, lsl #2]
	mov r0, #0xf000
	smull r5, r2, r3, r2
	mov r6, r5, lsr #0xc
	orr r6, r6, r2, lsl #20
	umull r5, r3, r6, r0
	mov r2, r6, asr #0x1f
	rsb r6, r6, #0x1000
	mla r3, r2, r0, r3
	mov r0, r5, lsr #0xc
	orr r0, r0, r3, lsl #20
	rsb r0, r0, #0x1f000
	str r6, [r4, #0xc78]
	mov r0, r0, asr #0xc
	strb r0, [r4, #0xc7c]
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x24]
	str r0, [sp, #0x10]
	str r0, [r4, #0x198]
	str r2, [r4, #0x19c]
	ldrh r0, [r1, #0xa8]
	str r2, [sp, #0x14]
	tst r0, #2
	beq _02137730
	ldrb r2, [r4, #0xc70]
	ldrb r0, [r4, #0xc71]
	cmp r2, r0
	bhs _02137730
	ldrh r0, [r1, #0xaa]
	tst r0, #1
	beq _02137730
	mov r0, r4
	bl ov1_0213720C
_02137730:
	ldr r0, [r4, #0x204]
	bl ov1_02136AEC
	ldr r0, [r4, #0x188]
	ldr r0, [r0, #0xc]
	bl sub_020089EC
	add r0, r4, #0x100
	ldrh r1, [r0, #0xa8]
	tst r1, #4
	beq _02137790
	ldr r2, [r4, #0x18c]
	ldrh r1, [r0, #0xb2]
	ldr r5, [r2, #0xc]
	mov r0, r5
	bl sub_02008860
	cmp r0, #0
	bne _02137788
	add r0, r4, #0x100
	ldrh r1, [r0, #0xa8]
	orr r1, r1, #8
	bic r1, r1, #4
	strh r1, [r0, #0xa8]
	b _02137790
_02137788:
	mov r0, r5
	bl sub_020089EC
_02137790:
	add r0, r4, #0x100
	ldrh r0, [r0, #0xa8]
	tst r0, #0x20
	beq _02137904
	add r0, r4, #0x200
	ldrh r1, [r0, #0xc]
	add r1, r1, #1
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #0x209]
	cmp r1, #1
	beq _021377D0
	cmp r1, #2
	beq _0213782C
	cmp r1, #3
	beq _021378B0
	b _02137904
_021377D0:
	ldrh r2, [r0, #0xc]
	ldr r1, _02137AAC ; =0x00000CCC
	mov r0, #0x2000
	mov r3, #8
	bl sub_02007068
	str r0, [r4, #0x234]
	str r0, [r4, #0x238]
	mov r0, #1
	str r0, [r4, #0x274]
	add r0, r4, #0x200
	ldrh r1, [r0, #0xc]
	cmp r1, #8
	blo _02137904
	ldr r2, [r4, #0x210]
	ldrh r1, [r0, #0xe]
	ldr r0, [r2, #0xc]
	bl sub_020089B8
	mov r0, #2
	strb r0, [r4, #0x209]
	add r0, r4, #0x200
	mov r1, #0
	strh r1, [r0, #0xc]
	b _02137904
_0213782C:
	mov r1, #0x1000
	str r1, [r4, #0x234]
	str r1, [r4, #0x238]
	ldr r2, [r4, #0x210]
	ldrh r1, [r0, #0xe]
	ldr r0, [r2, #0xc]
	bl sub_02008A38
	mov r0, #0x1f
	str r0, [r4, #0x274]
	add r0, r4, #0x200
	ldr r2, [r4, #0x210]
	ldrh r1, [r0, #0xe]
	ldr r0, [r2, #0xc]
	bl sub_02008860
	cmp r0, #0
	bne _02137904
	ldrb r0, [r4, #0x20a]
	cmp r0, #0
	beq _02137898
	sub r0, r0, #1
	strb r0, [r4, #0x20a]
	add r0, r4, #0x200
	ldr r2, [r4, #0x210]
	ldrh r1, [r0, #0xe]
	ldr r0, [r2, #0xc]
	bl sub_020089B8
	b _02137904
_02137898:
	mov r0, #3
	strb r0, [r4, #0x209]
	add r0, r4, #0x200
	mov r1, #0
	strh r1, [r0, #0xc]
	b _02137904
_021378B0:
	ldrh r2, [r0, #0xc]
	ldr r0, _02137AB0 ; =0x00001666
	mov r1, #0x800
	mov r3, #8
	bl sub_02007068
	mov r1, #0x1000
	str r1, [r4, #0x234]
	str r0, [r4, #0x238]
	mov r0, #1
	str r0, [r4, #0x274]
	add r0, r4, #0x200
	ldrh r1, [r0, #0xc]
	cmp r1, #8
	blo _02137904
	mov r1, #0
	strb r1, [r4, #0x209]
	strh r1, [r0, #0xc]
	add r0, r4, #0x100
	ldrh r1, [r0, #0xa8]
	bic r1, r1, #0x20
	strh r1, [r0, #0xa8]
_02137904:
	add r0, r4, #0x100
	ldrh r1, [r0, #0xa8]
	tst r1, #2
	addeq sp, sp, #0x20
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r2, [r4, #0xc70]
	ldrb r1, [r4, #0xc71]
	cmp r2, r1
	addhs sp, sp, #0x20
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r0, [r0, #0xaa]
	tst r0, #1
	beq _02137940
	mov r0, r4
	bl ov1_021373FC
_02137940:
	mov r7, #0
	ldr lr, _02137AB4 ; =DAT_overlay_1_02140294
	ldr ip, _02137AB8 ; =FX_SinCosTable_
	add r5, r4, #0x2b0
	mov fp, r7
_02137954:
	mov r0, #0x34
	mul r1, r7, r0
	ldrb r0, [r5, r1]
	add r6, r5, r1
	cmp r0, #0
	beq _02137A90
	ldrh r3, [r6, #2]
	mov r1, #0xc
	ldrh r2, [r6, #4]
	mul r1, r3, r1
	ldr r3, [lr, r1]
	ldr r0, [r6, #8]
	mov r1, r2, asr #4
	smull r3, r2, r0, r3
	mov r8, r3, lsr #0xc
	mov r0, r1, lsl #1
	orr r8, r8, r2, lsl #20
	mov r2, r0, lsl #1
	add r0, ip, r0, lsl #1
	ldrsh r1, [r0, #2]
	ldrsh r0, [ip, r2]
	ldr sl, [r4, #0x1a0]
	smull r3, r2, r8, r1
	smull r1, r0, r8, r0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r2, sl, r3
	ldr sb, [r4, #0x1a4]
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, sb, r1
	str r2, [r6, #0x24]
	str r0, [r6, #0x28]
	ldrh r1, [r6, #4]
	ldrh r8, [r6, #2]
	mov sb, #0xc
	mov r1, r1, asr #4
	mla sb, r8, sb, lr
	mov r1, r1, lsl #1
	mov r8, r1, lsl #1
	str r0, [sp, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [r6, #8]
	ldr sb, [sb, #4]
	add r1, ip, r1, lsl #1
	smull sl, sb, r0, sb
	mov r0, sl, lsr #0xc
	orr r0, r0, sb, lsl #20
	ldrsh sb, [r1, #2]
	ldrsh r1, [ip, r8]
	ldr r3, [r4, #0x1a0]
	smull sl, sb, r0, sb
	smull r8, r1, r0, r1
	mov r0, sl, lsr #0xc
	orr r0, r0, sb, lsl #20
	add r3, r3, r0
	str r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [r4, #0x1a4]
	mov r0, r8, lsr #0xc
	orr r0, r0, r1, lsl #20
	add r0, r2, r0
	str r3, [r6, #0x2c]
	str r0, [r6, #0x30]
	ldrh r1, [r6, #2]
	str r0, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #0xc
	mla r0, r1, r0, lr
	ldrb r0, [r0, #8]
	str r3, [sp, #0x18]
	str r3, [sp]
	str r0, [r6, #0x20]
	ldrh r0, [r6, #2]
	add r0, r0, #1
	strh r0, [r6, #2]
	ldrh r0, [r6, #2]
	cmp r0, #0x2a
	strcsb fp, [r6]
_02137A90:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #0x30
	blo _02137954
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02137AA8: .word DAT_overlay_1_02140280
_02137AAC: .word 0x00000CCC
_02137AB0: .word 0x00001666
_02137AB4: .word DAT_overlay_1_02140294
_02137AB8: .word FX_SinCosTable_

	arm_func_start ov1_02137ABC
ov1_02137ABC: ; 0x02137ABC
	add r0, r0, #0x100
	ldrh r0, [r0, #0xa8]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov1_02137ABC

	arm_func_start ov1_02137AD4
ov1_02137AD4: ; 0x02137AD4
	ldrb r0, [r0, #0xc70]
	bx lr
	arm_func_end ov1_02137AD4

	arm_func_start ov1_02137ADC
ov1_02137ADC: ; 0x02137ADC
	ldrb r1, [r0, #0xc70]
	ldr r0, _02137AEC ; =DAT_overlay_1_02140288
	ldr r0, [r0, r1, lsl #2]
	bx lr
	.align 2, 0
_02137AEC: .word DAT_overlay_1_02140288
	arm_func_end ov1_02137ADC

	arm_func_start ov1_02137AF0
ov1_02137AF0: ; 0x02137AF0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov1_02137ABC
	cmp r0, #0
	beq _02137B38
	add r0, r5, #0x100
	ldrh r0, [r0, #0xa8]
	tst r0, #4
	bne _02137B38
	tst r0, #8
	bne _02137B38
	mov r0, r5
	mov r1, r4
	bl ov1_02137B94
	ldr r0, [r5, #0x204]
	mov r1, r4
	bl ov1_02136B88
	arm_func_end ov1_02137AF0
_02137B38:
	add r0, r5, #0x100
	ldrh r0, [r0, #0xa8]
	tst r0, #4
	beq _02137B54
	mov r0, r5
	mov r1, r4
	bl ov1_02137B98
_02137B54:
	mov r0, r5
	mov r1, r4
	bl ov1_02137C3C
	add r0, r5, #0x100
	ldrh r0, [r0, #0xa8]
	tst r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #0xc70]
	ldrb r0, [r5, #0xc71]
	cmp r1, r0
	ldmhsia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov1_02137CF0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02137B90
ov1_02137B90: ; 0x02137B90
	bx lr
	arm_func_end ov1_02137B90

	arm_func_start ov1_02137B94
ov1_02137B94: ; 0x02137B94
	bx lr
	arm_func_end ov1_02137B94

	arm_func_start ov1_02137B98
ov1_02137B98: ; 0x02137B98
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x18c]
	ldr r4, [r6, #0xc4]
	ldr r2, [r0]
	mov r0, #0
	str r2, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldr r2, [r6, #0x18c]
	add r0, r6, #0x100
	ldr r2, [r2, #4]
	mov r5, r1
	str r2, [r4, #0x34]
	ldr r1, [r6, #0x18c]
	ldr r1, [r1, #8]
	str r1, [r4, #0x38]
	ldr r2, [r6, #0x18c]
	ldrh r1, [r0, #0xb2]
	ldr r0, [r2, #0xc]
	bl sub_02008828
	strh r0, [r4, #0x2a]
	ldr ip, [r6, #0x20]
	ldr r3, [r6, #0x24]
	mov r0, #0x1800
	str ip, [r4, #0x18]
	str r3, [r4, #0x1c]
	str r0, [r4, #0x20]
	mov r0, #0x1000
	str r0, [r4, #0x24]
	mov r1, #0x1f
	mov r0, r4
	str r1, [r4, #0x14]
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #8]
	str ip, [sp]
	str r3, [sp, #4]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_02137B98

	arm_func_start ov1_02137C3C
ov1_02137C3C: ; 0x02137C3C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	add r0, r5, #0x100
	ldrh r0, [r0, #0xa8]
	mov r4, r1
	tst r0, #0x20
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r5, #0x200
	ldr r2, [r5, #0x210]
	ldr ip, [r5, #0x20]
	ldr r3, [r5, #0x24]
	ldrh r1, [r0, #0xe]
	sub r3, r3, #0x20000
	ldr r0, [r2, #0xc]
	str ip, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_02008828
	add r1, r5, #0x200
	ldr ip, [sp, #0x10]
	strh r0, [r1, #0x8a]
	ldr r3, [sp, #0x14]
	str ip, [r5, #0x278]
	str r3, [r5, #0x27c]
	add r0, r5, #0x260
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	str ip, [sp, #8]
	str r3, [sp, #0xc]
	blx r2
	ldr ip, [sp, #0x10]
	ldr r3, [sp, #0x14]
	str ip, [r5, #0x22c]
	str r3, [r5, #0x230]
	add r0, r5, #0x214
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	str ip, [sp]
	str r3, [sp, #4]
	blx r2
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_02137C3C

	arm_func_start ov1_02137CF0
ov1_02137CF0: ; 0x02137CF0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	add r8, r6, #0x2bc
	mov r7, #0x34
	arm_func_end ov1_02137CF0
_02137D08:
	mul r1, r4, r7
	add r0, r6, r1
	ldrb r0, [r0, #0x2b0]
	cmp r0, #0
	beq _02137D30
	add r0, r8, r1
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #8]
	blx r2
_02137D30:
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, #0x30
	blo _02137D08
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov1_02137D44
ov1_02137D44: ; 0x02137D44
	cmp r1, #0
	bxeq lr
	mov r2, #1
	strb r2, [r0, #0x209]
	add r2, r0, #0x200
	mov r3, #0
	strh r3, [r2, #0xc]
	sub r1, r1, #1
	strb r1, [r0, #0x20a]
	add r0, r0, #0x100
	ldrh r1, [r0, #0xa8]
	orr r1, r1, #0x20
	strh r1, [r0, #0xa8]
	bx lr
	arm_func_end ov1_02137D44

	arm_func_start ov1_02137D7C
ov1_02137D7C: ; 0x02137D7C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, [r0, #0xc4]
	mov r5, r1
	ldrh r1, [r4, #0x2a]
	mov r0, r4
	bl sub_02005FDC
	add r0, r5, r0
	str r0, [r4, #4]
	add r0, r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_02137D7C

	arm_func_start ov1_02137DA4
ov1_02137DA4: ; 0x02137DA4
	mov r2, #0
	add r1, r0, #4
	str r2, [r0]
	str r1, [r1, #4]
	str r1, [r0, #4]
	bx lr
	arm_func_end ov1_02137DA4

	arm_func_start ov1_02137DBC
ov1_02137DBC: ; 0x02137DBC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	add r0, r4, #4
	str r0, [sp, #8]
	ldr ip, [r4, #8]
	add r0, sp, #0
	add r2, sp, #4
	add r3, sp, #8
	mov r1, r4
	str ip, [sp, #4]
	bl ov1_02138028
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov1_02137DBC

	arm_func_start ov1_02137DF8
ov1_02137DF8: ; 0x02137DF8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r2, [sp, #0x24]
	mov r4, r0
	cmp r2, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [r4]
	cmp r0, #0
	bne _02137E50
	add ip, r4, #4
	add r0, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0x24
	mov r1, r4
	str ip, [sp, #0x10]
	bl ov1_02137F80
	b _02137EC8
	arm_func_end ov1_02137DF8
_02137E50:
	ldr ip, [r4, #8]
	add r1, r4, #4
	cmp ip, r1
	mov r3, #0
	beq _02137EA4
	ldr r2, [r2, #0x24]
_02137E68:
	ldr r0, [ip, #8]
	ldr r0, [r0, #0x24]
	cmp r2, r0
	bge _02137E98
	add r0, sp, #8
	add r2, sp, #0xc
	add r3, sp, #0x24
	mov r1, r4
	str ip, [sp, #0xc]
	bl ov1_02137F80
	mov r3, #1
	b _02137EA4
_02137E98:
	ldr ip, [ip, #4]
	cmp ip, r1
	bne _02137E68
_02137EA4:
	cmp r3, #0
	bne _02137EC8
	add ip, r4, #4
	add r0, sp, #4
	add r2, sp, #0
	add r3, sp, #0x24
	mov r1, r4
	str ip, [sp]
	bl ov1_02137F80
_02137EC8:
	ldrh r1, [r4, #0x10]
	mov r0, #1
	add r1, r1, #1
	strh r1, [r4, #0x10]
	add sp, sp, #0x18
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start ov1_02137EE8
ov1_02137EE8: ; 0x02137EE8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	add r0, r4, #4
	str r0, [sp, #8]
	ldr ip, [r4, #8]
	add r0, sp, #0
	add r2, sp, #4
	add r3, sp, #8
	mov r1, r4
	str ip, [sp, #4]
	bl ov1_02138028
	mov r0, #0
	strh r0, [r4, #0x10]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov1_02137EE8

	arm_func_start ov1_02137F28
ov1_02137F28: ; 0x02137F28
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #8]
	add r5, r0, #4
	mov r7, r1
	cmp r6, r5
	ldr r4, [r0, #0xc]
	beq _02137F78
	arm_func_end ov1_02137F28
_02137F44:
	ldr r0, [r6, #8]
	mov r1, r7
	ldrh r2, [r0, #6]
	ldr r0, [r0, #0xc4]
	add r4, r4, r2
	str r4, [r0, #4]
	ldr r0, [r6, #8]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r6, [r6, #4]
	cmp r6, r5
	bne _02137F44
_02137F78:
	add r0, r4, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_02137F80
ov1_02137F80: ; 0x02137F80
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r8, r0
	mov r0, #0xc
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl _Znwm
	movs r4, r0
	bne _02137FB4
	ldr r0, _02138024 ; =s_Memory_allocation_failure_overlay_1_02141adc
	bl printf
	bl abort
	arm_func_end ov1_02137F80
_02137FB4:
	mov r1, #0
	add r0, r7, #4
	strb r1, [sp]
	str r0, [sp, #0xc]
	adds r1, r4, #8
	ldrne r0, [r5]
	str r4, [sp, #0x10]
	strne r0, [r1]
	ldr r2, [r6]
	movs r0, #0
	ldr r1, [r2]
	str r4, [sp, #4]
	str r4, [r1, #4]
	ldr r1, [r2]
	str r4, [sp, #8]
	str r1, [r4]
	str r4, [r2]
	str r2, [r4, #4]
	ldr r1, [r7]
	str r0, [sp, #0x10]
	add r1, r1, #1
	str r1, [r7]
	addeq sp, sp, #0x14
	str r4, [r8]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl _ZdlPv
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02138024: .word s_Memory_allocation_failure_overlay_1_02141adc

	arm_func_start ov1_02138028
ov1_02138028: ; 0x02138028
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r4, r3
	ldr r2, [r4]
	ldr r3, [r5]
	mov r7, r0
	cmp r3, r2
	mov r6, r1
	streq r2, [r7]
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, [r2]
	ldr r0, [r3]
	ldr r1, [r2, #4]
	str r1, [r0, #4]
	ldr r1, [r3]
	ldr r0, [r2, #4]
	str r1, [r0]
	ldr r1, [r4]
	ldr r0, [r5]
	cmp r0, r1
	beq _021380A4
	arm_func_end ov1_02138028
_0213807C:
	ldr r1, [r0, #4]
	str r1, [r5]
	bl _ZdlPv
	ldr r0, [r6]
	sub r0, r0, #1
	str r0, [r6]
	ldr r1, [r4]
	ldr r0, [r5]
	cmp r0, r1
	bne _0213807C
_021380A4:
	str r1, [r7]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_021380AC
ov1_021380AC: ; 0x021380AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_021380D4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021380AC

	arm_func_start ov1_021380C0
ov1_021380C0: ; 0x021380C0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_021381BC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021380C0

	arm_func_start ov1_021380D4
ov1_021380D4: ; 0x021380D4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r0, #0x40
	bl _Znwm
	cmp r0, #0
	beq _021380F4
	bl sub_02003B64
	arm_func_end ov1_021380D4
_021380F4:
	str r0, [r4, #4]
	mov r1, #0x70000
	str r1, [r0, #0x18]
	mov r1, #0x50000
	str r1, [r0, #0x1c]
	ldr r2, [r4, #4]
	mov r1, #0x20000
	str r1, [r2, #0x20]
	mov r0, #0x18
	str r1, [r2, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _02138150
	ldr r2, _021381A4 ; =s_BAS_i046_NCLR_overlay_1_02141b2c
	ldr r1, _021381A8 ; =s_BAS_i046_00_NCER_overlay_1_02141b3c
	str r2, [sp]
	ldr ip, _021381AC ; =s_BAS_i046_00_cac_overlay_1_02141b50
	str r1, [sp, #4]
	ldr r1, _021381B0 ; =s_BAS_overlay_1_02141af8
	ldr r2, _021381B4 ; =s_data_interface_i046_LZ_bin_overlay_1_02141afc
	ldr r3, _021381B8 ; =s_BAS_i046_00_NCBR_overlay_1_02141b18
	str ip, [sp, #8]
	bl sub_0201AAE0
_02138150:
	str r0, [r4, #0xc]
	mov r0, #0x4c
	bl _Znwm
	cmp r0, #0
	beq _02138168
	bl sub_02005150
_02138168:
	str r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldmia r1, {r2, r3, ip}
	mov r1, #0
	str r2, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r3, [r0, #0x34]
	str ip, [r0, #0x38]
	ldr r1, [r4, #8]
	mov r0, #0x70000
	str r0, [r1, #0x18]
	mov r0, #0x50000
	str r0, [r1, #0x1c]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_021381A4: .word s_BAS_i046_NCLR_overlay_1_02141b2c
_021381A8: .word s_BAS_i046_00_NCER_overlay_1_02141b3c
_021381AC: .word s_BAS_i046_00_cac_overlay_1_02141b50
_021381B0: .word s_BAS_overlay_1_02141af8
_021381B4: .word s_data_interface_i046_LZ_bin_overlay_1_02141afc
_021381B8: .word s_BAS_i046_00_NCBR_overlay_1_02141b18

	arm_func_start ov1_021381BC
ov1_021381BC: ; 0x021381BC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021381E8
	beq _021381E0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_021381BC
_021381E0:
	mov r0, #0
	str r0, [r5, #4]
_021381E8:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0213820C
	beq _02138204
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02138204:
	mov r0, #0
	str r0, [r5, #8]
_0213820C:
	ldr r4, [r5, #0xc]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0213822C
	mov r0, r4
	bl sub_0201AB14
	mov r0, r4
	bl _ZdlPv
_0213822C:
	mov r0, #0
	str r0, [r5, #0xc]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02138238
ov1_02138238: ; 0x02138238
	ldrb r1, [r0]
	tst r1, #1
	bxeq lr
	ldrb r1, [r0, #1]
	add r2, r1, #1
	and r1, r2, #0xff
	cmp r1, #0x10
	strb r2, [r0, #1]
	ldrhs r0, [r0, #8]
	movhs r1, #0
	strhsh r1, [r0, #0x2a]
	bx lr
	arm_func_end ov1_02138238

	arm_func_start ov1_02138268
ov1_02138268: ; 0x02138268
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end ov1_02138268

	arm_func_start ov1_02138280
ov1_02138280: ; 0x02138280
	ldrb r3, [r0]
	mov r2, #0
	mov r1, #1
	orr r3, r3, #1
	strb r3, [r0]
	strb r2, [r0, #1]
	ldr r0, [r0, #8]
	strh r1, [r0, #0x2a]
	bx lr
	arm_func_end ov1_02138280

	arm_func_start ov1_021382A4
ov1_021382A4: ; 0x021382A4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	add r2, r4, r0
	ldr r1, [r5, #8]
	add r0, r2, #1
	str r2, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_021382A4

	arm_func_start ov1_021382D0
ov1_021382D0: ; 0x021382D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_021382F8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021382D0

	arm_func_start ov1_021382E4
ov1_021382E4: ; 0x021382E4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_021383E4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021382E4

	arm_func_start ov1_021382F8
ov1_021382F8: ; 0x021382F8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r0, #0x40
	bl _Znwm
	cmp r0, #0
	beq _02138318
	bl sub_02003B64
	arm_func_end ov1_021382F8
_02138318:
	mov r1, #0x70000
	str r0, [r4, #4]
	rsb r1, r1, #0
	str r1, [r0, #0x18]
	mov r1, #0x51000
	str r1, [r0, #0x1c]
	ldr r2, [r4, #4]
	mov r1, #0x20000
	str r1, [r2, #0x20]
	mov r0, #0x18
	str r1, [r2, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _02138378
	ldr r2, _021383CC ; =s_BES_i047_NCLR_overlay_1_02141b94
	ldr r1, _021383D0 ; =s_BES_i047_00_NCER_overlay_1_02141ba4
	str r2, [sp]
	ldr ip, _021383D4 ; =s_BES_i047_00_cac_overlay_1_02141bb8
	str r1, [sp, #4]
	ldr r1, _021383D8 ; =DAT_overlay_1_02141b60
	ldr r2, _021383DC ; =s_data_interface_i047_LZ_bin_overlay_1_02141b64
	ldr r3, _021383E0 ; =s_BES_i047_00_NCBR_overlay_1_02141b80
	str ip, [sp, #8]
	bl sub_0201AAE0
_02138378:
	str r0, [r4, #0xc]
	mov r0, #0x4c
	bl _Znwm
	cmp r0, #0
	beq _02138390
	bl sub_02005150
_02138390:
	str r0, [r4, #8]
	ldr r1, [r4, #0xc]
	mov r2, #0
	ldmia r1, {r1, r3, ip}
	str r1, [r0, #0x2c]
	str r2, [r0, #0x30]
	str r3, [r0, #0x34]
	str ip, [r0, #0x38]
	ldr r1, [r4, #8]
	sub r0, r2, #0x70000
	str r0, [r1, #0x18]
	mov r0, #0x51000
	str r0, [r1, #0x1c]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_021383CC: .word s_BES_i047_NCLR_overlay_1_02141b94
_021383D0: .word s_BES_i047_00_NCER_overlay_1_02141ba4
_021383D4: .word s_BES_i047_00_cac_overlay_1_02141bb8
_021383D8: .word DAT_overlay_1_02141b60
_021383DC: .word s_data_interface_i047_LZ_bin_overlay_1_02141b64
_021383E0: .word s_BES_i047_00_NCBR_overlay_1_02141b80

	arm_func_start ov1_021383E4
ov1_021383E4: ; 0x021383E4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02138410
	beq _02138408
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_021383E4
_02138408:
	mov r0, #0
	str r0, [r5, #4]
_02138410:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02138434
	beq _0213842C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0213842C:
	mov r0, #0
	str r0, [r5, #8]
_02138434:
	ldr r4, [r5, #0xc]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02138454
	mov r0, r4
	bl sub_0201AB14
	mov r0, r4
	bl _ZdlPv
_02138454:
	mov r0, #0
	str r0, [r5, #0xc]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02138460
ov1_02138460: ; 0x02138460
	ldrb r1, [r0]
	tst r1, #1
	bxeq lr
	ldrb r1, [r0, #1]
	add r2, r1, #1
	and r1, r2, #0xff
	cmp r1, #0x10
	strb r2, [r0, #1]
	ldrhs r0, [r0, #8]
	movhs r1, #0
	strhsh r1, [r0, #0x2a]
	bx lr
	arm_func_end ov1_02138460

	arm_func_start ov1_02138490
ov1_02138490: ; 0x02138490
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end ov1_02138490

	arm_func_start ov1_021384A8
ov1_021384A8: ; 0x021384A8
	ldrb r3, [r0]
	mov r2, #0
	mov r1, #1
	orr r3, r3, #1
	strb r3, [r0]
	strb r2, [r0, #1]
	ldr r0, [r0, #8]
	strh r1, [r0, #0x2a]
	bx lr
	arm_func_end ov1_021384A8

	arm_func_start ov1_021384CC
ov1_021384CC: ; 0x021384CC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	add r2, r4, r0
	ldr r1, [r5, #8]
	add r0, r2, #1
	str r2, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_021384CC

	arm_func_start ov1_021384F8
ov1_021384F8: ; 0x021384F8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r0, r4, #0x48
	bl sub_02005150
	add r0, r4, #0x94
	bl sub_02005150
	add r0, r4, #0xe0
	bl sub_02005150
	add r0, r4, #0x12c
	bl sub_02005150
	add r0, r4, #0x178
	bl sub_02005150
	add r0, r4, #0x1c4
	bl sub_02005150
	ldr r1, _02138C9C ; =sub_020051C8
	add r0, r4, #0x210
	str r1, [sp]
	mov r1, #2
	mov r2, #0x4c
	ldr r3, _02138CA0 ; =FUN_02005150
	bl __cxa_vec_ctor
	ldr r1, _02138C9C ; =sub_020051C8
	add r0, r4, #0x2a8
	str r1, [sp]
	mov r1, #2
	mov r2, #0x4c
	ldr r3, _02138CA0 ; =FUN_02005150
	bl __cxa_vec_ctor
	add r0, r4, #0x340
	bl sub_02005150
	add r0, r4, #0x38c
	bl sub_02005150
	ldr r1, _02138C9C ; =sub_020051C8
	add r0, r4, #0x3d8
	str r1, [sp]
	mov r1, #3
	mov r2, #0x4c
	ldr r3, _02138CA0 ; =FUN_02005150
	bl __cxa_vec_ctor
	add r0, r4, #0xbc
	add r0, r0, #0x400
	bl sub_02005150
	add r0, r4, #0x108
	add r0, r0, #0x400
	bl sub_02005150
	ldr r1, _02138C9C ; =sub_020051C8
	add r0, r4, #0x154
	str r1, [sp]
	add r0, r0, #0x400
	mov r1, #3
	mov r2, #0x4c
	ldr r3, _02138CA0 ; =FUN_02005150
	bl __cxa_vec_ctor
	add r0, r4, #0x238
	add r0, r0, #0x400
	bl sub_02005150
	add r0, r4, #0x284
	add r0, r0, #0x400
	bl sub_02005150
	add r0, r4, #0x6d0
	bl sub_02004114
	ldr r1, _02138C9C ; =sub_020051C8
	add r0, r4, #0x730
	str r1, [sp]
	mov r1, #4
	mov r2, #0x4c
	ldr r3, _02138CA0 ; =FUN_02005150
	bl __cxa_vec_ctor
	add r0, r4, #0x860
	bl sub_02005150
	add r0, r4, #0xac
	add r0, r0, #0x800
	bl sub_02005150
	add r0, r4, #0xf8
	ldr ip, _02138C9C ; =sub_020051C8
	ldr r3, _02138CA0 ; =FUN_02005150
	add r0, r0, #0x800
	mov r1, #5
	mov r2, #0x4c
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x274
	add r0, r0, #0x800
	bl sub_02005150
	add r0, r4, #0xac0
	bl sub_02005150
	mov r0, r4
	bl ov1_02138DE4
	mov r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	strb r0, [r4, #0x24]
	str r0, [r4, #0x28]
	strh r0, [r4, #0x2e]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	str r0, [r4, #0x3c]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r1, [r0, #0x438]
	ldr r0, _02138CA4 ; =MAIN_BSS_020B26A0
	str r1, [r4, #0x34]
	str r0, [r4, #0x38]
	ldr r2, [r4, #0xb14]
	ldr r1, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	mov ip, #0
	str r0, [r4, #0x664]
	str ip, [r4, #0x668]
	str r1, [r4, #0x66c]
	str r2, [r4, #0x670]
	ldr r2, [r4, #0xb14]
	ldr r1, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	mov lr, r4
	str r0, [r4, #0x6b0]
	str ip, [r4, #0x6b4]
	str r1, [r4, #0x6b8]
	str r2, [r4, #0x6bc]
	mov r0, ip
	arm_func_end ov1_021384F8
_021386E0:
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r1, [r4, #0xb0c]
	add ip, ip, #1
	str r1, [lr, #0x75c]
	str r0, [lr, #0x760]
	str r2, [lr, #0x764]
	str r3, [lr, #0x768]
	cmp ip, #4
	add lr, lr, #0x4c
	blt _021386E0
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r1, [r4, #0xb0c]
	mov lr, r4
	str r1, [r4, #0x88c]
	str r0, [r4, #0x890]
	str r2, [r4, #0x894]
	str r3, [r4, #0x898]
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r1, [r4, #0xb0c]
	str r1, [r4, #0x8d8]
	str r0, [r4, #0x8dc]
	str r2, [r4, #0x8e0]
	str r3, [r4, #0x8e4]
	mov r1, #0
_0213874C:
	ldr ip, [r4, #0xb14]
	ldr r3, [r4, #0xb10]
	ldr r2, [r4, #0xb0c]
	add r0, r0, #1
	str r2, [lr, #0x924]
	str r1, [lr, #0x928]
	str r3, [lr, #0x92c]
	str ip, [lr, #0x930]
	cmp r0, #5
	add lr, lr, #0x4c
	blt _0213874C
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	mov lr, r4
	str r0, [r4, #0x74]
	str r1, [r4, #0x78]
	str r2, [r4, #0x7c]
	str r3, [r4, #0x80]
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	mov ip, #0
	str r0, [r4, #0xc0]
	str r1, [r4, #0xc4]
	str r2, [r4, #0xc8]
	str r3, [r4, #0xcc]
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	str r0, [r4, #0x10c]
	str r1, [r4, #0x110]
	str r2, [r4, #0x114]
	str r3, [r4, #0x118]
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	str r0, [r4, #0x158]
	str r1, [r4, #0x15c]
	str r2, [r4, #0x160]
	str r3, [r4, #0x164]
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	str r0, [r4, #0x1a4]
	str r1, [r4, #0x1a8]
	str r2, [r4, #0x1ac]
	str r3, [r4, #0x1b0]
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	str r0, [r4, #0x1f0]
	str r1, [r4, #0x1f4]
	str r2, [r4, #0x1f8]
	str r3, [r4, #0x1fc]
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	str r0, [r4, #0x36c]
	str r1, [r4, #0x370]
	str r2, [r4, #0x374]
	str r3, [r4, #0x378]
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	str r0, [r4, #0x3b8]
	str r1, [r4, #0x3bc]
	str r2, [r4, #0x3c0]
	str r3, [r4, #0x3c4]
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	str r0, [r4, #0x4e8]
	str r1, [r4, #0x4ec]
	str r2, [r4, #0x4f0]
	str r3, [r4, #0x4f4]
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	str r0, [r4, #0x534]
	str r1, [r4, #0x538]
	str r2, [r4, #0x53c]
	str r3, [r4, #0x540]
_02138898:
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	add r1, r1, #1
	str r0, [lr, #0x23c]
	str ip, [lr, #0x240]
	str r2, [lr, #0x244]
	str r3, [lr, #0x248]
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	cmp r1, #2
	str r0, [lr, #0x2d4]
	str ip, [lr, #0x2d8]
	str r2, [lr, #0x2dc]
	str r3, [lr, #0x2e0]
	add lr, lr, #0x4c
	blt _02138898
	mov r3, r4
	mov lr, #0
_021388E8:
	ldr r2, [r4, #0xb14]
	ldr r1, [r4, #0xb10]
	ldr r0, [r4, #0xb0c]
	add ip, ip, #1
	str r0, [r3, #0x404]
	str lr, [r3, #0x408]
	str r1, [r3, #0x40c]
	str r2, [r3, #0x410]
	cmp ip, #3
	add r3, r3, #0x4c
	blt _021388E8
	mov ip, r4
	mov r0, #0
_0213891C:
	ldr r3, [r4, #0xb14]
	ldr r2, [r4, #0xb10]
	ldr r1, [r4, #0xb0c]
	add lr, lr, #1
	str r1, [ip, #0x580]
	str r0, [ip, #0x584]
	str r2, [ip, #0x588]
	str r3, [ip, #0x58c]
	cmp lr, #3
	add ip, ip, #0x4c
	blt _0213891C
	ldr ip, [r4, #0xb14]
	ldr r3, [r4, #0xb10]
	ldr r2, [r4, #0xb0c]
	add r1, r4, #0x600
	str r2, [r4, #0xaa0]
	str r0, [r4, #0xaa4]
	str r3, [r4, #0xaa8]
	str ip, [r4, #0xaac]
	ldr lr, [r4, #0xb14]
	ldr ip, [r4, #0xb10]
	ldr r3, [r4, #0xb0c]
	mov r2, #0xd
	str r3, [r4, #0xaec]
	str r0, [r4, #0xaf0]
	str ip, [r4, #0xaf4]
	str lr, [r4, #0xaf8]
	strh r2, [r1, #0x62]
	mov r2, #0xe
	strh r2, [r1, #0xae]
	add r1, r4, #0x800
	mov r2, #0x11
	strh r2, [r1, #0x8a]
	mov r2, #0x23
	strh r2, [r1, #0xd6]
	strh r0, [r4, #0x72]
	mov r1, #2
	strh r1, [r4, #0xbe]
	add r1, r4, #0x100
	mov r2, #1
	strh r2, [r1, #0xa]
	mov r2, #6
	strh r2, [r1, #0x56]
	mov r2, #7
	strh r2, [r1, #0xa2]
	mov r2, #8
	strh r2, [r1, #0xee]
	add r1, r4, #0x300
	mov r2, #9
	strh r2, [r1, #0x6a]
	mov r2, #0xa
	strh r2, [r1, #0xb6]
	add r1, r4, #0x400
	mov r2, #0xb
	strh r2, [r1, #0xe6]
	add r1, r4, #0x500
	mov r2, #0xc
	strh r2, [r1, #0x32]
	add r1, r4, #0xa00
	mov r2, #0xf
	strh r2, [r1, #0x9e]
	mov r2, #0x10
	strh r2, [r1, #0xea]
	mov r3, r4
	mov r2, #0x24
_02138A20:
	add r1, r3, #0x200
	strh r2, [r1, #0x3a]
	add r0, r0, #1
	strh r2, [r1, #0xd2]
	cmp r0, #2
	add r3, r3, #0x4c
	blt _02138A20
	mov r3, r4
	mov r2, #0
	mov r1, #0x24
_02138A48:
	add r0, r3, #0x400
	add r2, r2, #1
	strh r1, [r0, #2]
	cmp r2, #3
	add r3, r3, #0x4c
	blt _02138A48
	mov r3, r4
	mov r2, #0
	mov r1, #0x24
_02138A6C:
	add r0, r3, #0x500
	add r2, r2, #1
	strh r1, [r0, #0x7e]
	cmp r2, #3
	add r3, r3, #0x4c
	blt _02138A6C
	mov r3, r4
	mov r2, #0
	mov r1, #0x24
_02138A90:
	add r0, r3, #0x700
	add r2, r2, #1
	strh r1, [r0, #0x5a]
	cmp r2, #4
	add r3, r3, #0x4c
	blt _02138A90
	mov r3, r4
	mov r2, #0
	mov r1, #0x24
_02138AB4:
	add r0, r3, #0x900
	add r2, r2, #1
	strh r1, [r0, #0x22]
	cmp r2, #5
	add r3, r3, #0x4c
	blt _02138AB4
	mov r0, #0xe
	str r0, [r4, #0xf4]
	str r0, [r4, #0x8c0]
	str r0, [r4, #0x18c]
	str r0, [r4, #0x3a0]
	str r0, [r4, #0x51c]
	mov r0, #0
	mov r2, r4
	str r0, [r4, #0x874]
	mov r1, r0
_02138AF4:
	add r0, r0, #1
	str r1, [r2, #0x90c]
	cmp r0, #5
	add r2, r2, #0x4c
	blt _02138AF4
	mov r2, r4
	mov r0, #0x800
_02138B10:
	str r0, [r2, #0x230]
	str r0, [r2, #0x234]
	str r0, [r2, #0x2c8]
	add r1, r1, #1
	str r0, [r2, #0x2cc]
	cmp r1, #2
	add r2, r2, #0x4c
	blt _02138B10
	mov r2, r4
	mov r1, #0
	mov r0, #0x800
_02138B3C:
	str r0, [r2, #0x3f8]
	add r1, r1, #1
	str r0, [r2, #0x3fc]
	cmp r1, #3
	add r2, r2, #0x4c
	blt _02138B3C
	mov r2, r4
	mov r1, #0
	mov r0, #0x800
_02138B60:
	str r0, [r2, #0x574]
	add r1, r1, #1
	str r0, [r2, #0x578]
	cmp r1, #3
	add r2, r2, #0x4c
	blt _02138B60
	ldr r1, _02138CA8 ; =0x000043F0
	add r0, r4, #0x100
	strh r1, [r4, #0x50]
	strh r1, [r0, #0x34]
	add r0, r4, #0x300
	strh r1, [r0, #0x48]
	add r0, r4, #0x400
	strh r1, [r0, #0xc4]
	add r0, r4, #0x600
	mov r3, r4
	strh r1, [r0, #0xd8]
	mov r2, #0
_02138BA8:
	add r0, r3, #0x700
	add r2, r2, #1
	strh r1, [r0, #0x38]
	cmp r2, #4
	add r3, r3, #0x4c
	blt _02138BA8
	ldr r1, _02138CA8 ; =0x000043F0
	mov r3, r4
	mov r2, #0
_02138BCC:
	add r0, r3, #0x900
	add r2, r2, #1
	strh r1, [r0]
	cmp r2, #5
	add r3, r3, #0x4c
	blt _02138BCC
	mov r1, #0x100000
	rsb r1, r1, #0
	mov r0, r4
	add r2, r1, #0xd8000
	bl ov1_02139DE0
	mov r1, #0x100000
	mov r0, r4
	rsb r1, r1, #0
	mov r2, #0x28000
	bl ov1_02139DFC
	mov r0, r4
	mov r1, #0x140000
	mov r2, #0x28000
	bl ov1_02139E70
	mov r0, r4
	mov r1, #0x140000
	mov r2, #0x28000
	bl ov1_02139EAC
	mov r0, r4
	mov r1, #0x100000
	rsb r1, r1, #0
	mov r2, #0x18000
	bl ov1_02139EE8
	mov r0, r4
	mov r1, #0x100000
	rsb r1, r1, #0
	mov r2, #0x18000
	bl ov1_02139EFC
	mov r0, r4
	mov r1, #0x100000
	mov r2, #0x18000
	bl ov1_02139F5C
	mov r0, r4
	mov r1, #0x100000
	sub r2, r1, #0x12c000
	bl ov1_02139FC4
	mov r0, r4
	mov r1, #0x100000
	sub r2, r1, #0x148000
	bl ov1_02139F88
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02138C9C: .word sub_020051C8
_02138CA0: .word sub_02005150
_02138CA4: .word MAIN_BSS_020B26A0
_02138CA8: .word 0x000043F0

	arm_func_start ov1_02138CAC
ov1_02138CAC: ; 0x02138CAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_02138F5C
	add r0, r4, #0xac0
	bl sub_020051C8
	add r0, r4, #0x274
	add r0, r0, #0x800
	bl sub_020051C8
	add r0, r4, #0xf8
	add r0, r0, #0x800
	mov r1, #5
	mov r2, #0x4c
	ldr r3, _02138DE0 ; =sub_020051C8
	bl __cxa_vec_cleanup
	add r0, r4, #0xac
	add r0, r0, #0x800
	bl sub_020051C8
	add r0, r4, #0x860
	bl sub_020051C8
	add r0, r4, #0x730
	mov r1, #4
	mov r2, #0x4c
	ldr r3, _02138DE0 ; =sub_020051C8
	bl __cxa_vec_cleanup
	add r0, r4, #0x6d0
	bl sub_02004160
	add r0, r4, #0x284
	add r0, r0, #0x400
	bl sub_020051C8
	add r0, r4, #0x238
	add r0, r0, #0x400
	bl sub_020051C8
	add r0, r4, #0x154
	add r0, r0, #0x400
	mov r1, #3
	mov r2, #0x4c
	ldr r3, _02138DE0 ; =sub_020051C8
	bl __cxa_vec_cleanup
	add r0, r4, #0x108
	add r0, r0, #0x400
	bl sub_020051C8
	add r0, r4, #0xbc
	add r0, r0, #0x400
	bl sub_020051C8
	add r0, r4, #0x3d8
	mov r1, #3
	mov r2, #0x4c
	ldr r3, _02138DE0 ; =sub_020051C8
	bl __cxa_vec_cleanup
	add r0, r4, #0x38c
	bl sub_020051C8
	add r0, r4, #0x340
	bl sub_020051C8
	add r0, r4, #0x2a8
	mov r1, #2
	mov r2, #0x4c
	ldr r3, _02138DE0 ; =sub_020051C8
	bl __cxa_vec_cleanup
	add r0, r4, #0x210
	mov r1, #2
	mov r2, #0x4c
	ldr r3, _02138DE0 ; =sub_020051C8
	bl __cxa_vec_cleanup
	add r0, r4, #0x1c4
	bl sub_020051C8
	add r0, r4, #0x178
	bl sub_020051C8
	add r0, r4, #0x12c
	bl sub_020051C8
	add r0, r4, #0xe0
	bl sub_020051C8
	add r0, r4, #0x94
	bl sub_020051C8
	add r0, r4, #0x48
	bl sub_020051C8
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02138DE0: .word sub_020051C8
	arm_func_end ov1_02138CAC

	arm_func_start ov1_02138DE4
ov1_02138DE4: ; 0x02138DE4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x70
	ldr r1, _02138F48 ; =s_data_battle_result_r000_00_LZ_bi_overlay_1_02141bc8
	mov r4, r0
	add r0, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x6c
	bl _Znwm
	movs r5, r0
	beq _02138E34
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _02138F4C ; =s_BRM_overlay_1_02141bec
	add r2, sp, #0x10
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
	arm_func_end ov1_02138DE4
_02138E34:
	ldr r1, _02138F50 ; =s_BRM_r000_00_NCBR_overlay_1_02141bf0
	add r0, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02138E64
	mov r2, #0
	add r1, sp, #0x10
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_02138E64:
	str r0, [r4, #0xb0c]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r4, #0xb18]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #0xb0c]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r4, #0xb0c]
	bl sub_020076B0
	ldr r1, _02138F54 ; =s_BRM_r000_NCLR_overlay_1_02141c04
	add r0, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02138EC4
	mov r2, #0
	add r1, sp, #0x10
	mov r3, r2
	bl sub_02007AC0
_02138EC4:
	str r0, [r4, #0xb10]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r4, #0xb1c]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #0xb10]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r4, #0xb10]
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02138F20
	mov r2, #0
	ldr r1, _02138F58 ; =s_BRM_r000_00_NCER_overlay_1_02141c14
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_02138F20:
	cmp r5, #0
	addeq sp, sp, #0x70
	str r0, [r4, #0xb14]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
	add sp, sp, #0x70
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02138F48: .word s_data_battle_result_r000_00_LZ_bi_overlay_1_02141bc8
_02138F4C: .word s_BRM_overlay_1_02141bec
_02138F50: .word s_BRM_r000_00_NCBR_overlay_1_02141bf0
_02138F54: .word s_BRM_r000_NCLR_overlay_1_02141c04
_02138F58: .word s_BRM_r000_00_NCER_overlay_1_02141c14

	arm_func_start ov1_02138F5C
ov1_02138F5C: ; 0x02138F5C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb0c]
	cmp r4, #0
	beq _02138F8C
	beq _02138F84
	mov r0, r4
	bl sub_02007548
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov1_02138F5C
_02138F84:
	mov r0, #0
	str r0, [r5, #0xb0c]
_02138F8C:
	ldr r4, [r5, #0xb10]
	cmp r4, #0
	beq _02138FB4
	beq _02138FAC
	mov r0, r4
	bl sub_02007B28
	mov r0, r4
	bl _ZdlPv
_02138FAC:
	mov r0, #0
	str r0, [r5, #0xb10]
_02138FB4:
	ldr r0, [r5, #0xb14]
	cmp r0, #0
	beq _02138FD8
	beq _02138FD0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02138FD0:
	mov r0, #0
	str r0, [r5, #0xb14]
_02138FD8:
	ldr r0, [r5, #0xb18]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r5, #0xb1c]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_02138FEC
ov1_02138FEC: ; 0x02138FEC
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldr r1, [r0, #4]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_0213900C: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _02139038 ; case 1
	b _02139040 ; case 2
	b _02139048 ; case 3
	b _02139050 ; case 4
	b _02139058 ; case 5
	b _02139060 ; case 6
	b _02139068 ; case 7
	b _02139078 ; case 8
	b _02139070 ; case 9
	b _02139080 ; case 10
	arm_func_end ov1_02138FEC
_02139038:
	bl ov1_02139088
	ldmia sp!, {r3, pc}
_02139040:
	bl ov1_021390A8
	ldmia sp!, {r3, pc}
_02139048:
	bl ov1_02139154
	ldmia sp!, {r3, pc}
_02139050:
	bl ov1_02139280
	ldmia sp!, {r3, pc}
_02139058:
	bl ov1_021392F8
	ldmia sp!, {r3, pc}
_02139060:
	bl ov1_02139364
	ldmia sp!, {r3, pc}
_02139068:
	bl ov1_021396C0
	ldmia sp!, {r3, pc}
_02139070:
	bl ov1_0213985C
	ldmia sp!, {r3, pc}
_02139078:
	bl ov1_021397FC
	ldmia sp!, {r3, pc}
_02139080:
	bl ov1_021398F4
	ldmia sp!, {r3, pc}

	arm_func_start ov1_02139088
ov1_02139088: ; 0x02139088
	ldr r1, [r0]
	cmp r1, #0x10
	bxlo lr
	mov r1, #0
	str r1, [r0]
	mov r1, #2
	str r1, [r0, #4]
	bx lr
	arm_func_end ov1_02139088

	arm_func_start ov1_021390A8
ov1_021390A8: ; 0x021390A8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrsh r1, [r4, #8]
	bl ov1_02139FD8
	ldr r0, [r4, #0x38]
	ldrh r2, [r4, #0x1a]
	ldr r1, [r0, #0x28]
	mov r0, r4
	mov r1, r1, lsl #0xc
	mov r2, r2, lsl #0xc
	bl ov1_0213A09C
	mov r0, #0x100000
	ldr r2, [r4]
	rsb r0, r0, #0
	mov r1, #0
	mov r3, #0x18
	bl sub_02007068
	mov r5, r0
	mov r0, r4
	mov r1, r5
	mov r2, #0x18000
	bl ov1_02139EE8
	mov r1, r5
	mov r0, r4
	mov r2, #0x18000
	bl ov1_02139EFC
	ldr r2, [r4]
	mov r0, #0x100000
	mov r1, #0
	mov r3, #0x18
	bl sub_02007068
	mov r1, r0
	mov r0, r4
	mov r2, #0x18000
	bl ov1_02139F5C
	ldr r0, [r4]
	cmp r0, #0x28
	ldmloia sp!, {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r4]
	mov r0, #3
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_021390A8

	arm_func_start ov1_02139154
ov1_02139154: ; 0x02139154
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	arm_func_end ov1_02139154
_02139160:
	ldrb r2, [r4, #0x24]
	cmp r2, #0x11
	blo _021391C4
	ldrh r1, [r4, #0x2e]
	mov r0, r4
	bl ov1_0213A4A0
	add r1, r0, #2
	strh r1, [r4, #0xbe]
	cmp r0, #0
	ldr r0, [r4, #0x3c]
	bne _02139198
	mov r1, #0x14
	bl sub_02034C44
	b _021391A0
_02139198:
	mov r1, #0x35
	bl sub_02034C44
_021391A0:
	mov r1, #0x100000
	mov r0, r4
	sub r2, r1, #0x148000
	bl ov1_02139F88
	mov r0, #0
	str r0, [r4]
	mov r0, #5
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
_021391C4:
	ldr r0, [r4, #0x28]
	tst r0, r1, lsl r2
	beq _02139264
	mov r0, #0x1f
	str r0, [r4, #0x874]
	ldrb r1, [r4, #0x24]
	add r0, r4, #0x800
	ldr ip, _02139278 ; =DAT_overlay_1_02140494
	add r1, r1, #0x11
	strh r1, [r0, #0x8a]
	ldrb r0, [r4, #0x24]
	ldrsh r2, [r4, #0xa]
	ldr r3, _0213927C ; =0x51EB851F
	mov r0, r0, lsl #1
	ldrh r1, [ip, r0]
	mov r0, r4
	mul lr, r2, r1
	mov r1, lr, lsr #0x1f
	smull r2, lr, r3, lr
	add lr, r1, lr, asr #5
	strh lr, [r4, #0x2c]
	ldrb r1, [r4, #0x24]
	ldrh r2, [r4, #0x2e]
	mov r1, r1, lsl #1
	ldrh r1, [ip, r1]
	add r1, r2, r1
	strh r1, [r4, #0x2e]
	ldrsh r1, [r4, #0x2c]
	bl ov1_0213A164
	ldr r0, [r4, #0x3c]
	mov r1, #0x38
	bl sub_02034C44
	mov r0, #0
	str r0, [r4]
	mov r0, #4
	str r0, [r4, #4]
	ldrb r0, [r4, #0x24]
	add r0, r0, #1
	strb r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
_02139264:
	mov r0, r2
	add r0, r0, #1
	strb r0, [r4, #0x24]
	b _02139160
_02139274:
	.byte 0x10, 0x80, 0xBD, 0xE8
_02139278: .word DAT_overlay_1_02140494
_0213927C: .word 0x51EB851F

	arm_func_start ov1_02139280
ov1_02139280: ; 0x02139280
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4]
	mov r0, #0x100000
	mov r1, #0
	mov r3, #8
	bl sub_02007068
	mov r2, #0x48000
	mov r1, r0
	mov r0, r4
	rsb r2, r2, #0
	bl ov1_02139F88
	ldr r0, [r4]
	cmp r0, #8
	bne _021392D8
	ldrsh r2, [r4, #8]
	ldrsh r1, [r4, #0x2c]
	mov r0, r4
	add r1, r2, r1
	strh r1, [r4, #8]
	ldrsh r1, [r4, #8]
	bl ov1_02139FD8
	arm_func_end ov1_02139280
_021392D8:
	ldr r0, [r4]
	cmp r0, #0x28
	ldmloia sp!, {r4, pc}
	mov r0, #0
	str r0, [r4]
	mov r0, #3
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_021392F8
ov1_021392F8: ; 0x021392F8
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x100000
	rsb r0, r0, #0
	ldr r2, [r4]
	add r1, r0, #0x80000
	mov r3, #8
	bl sub_02007068
	mov r2, #0x28000
	mov r1, r0
	mov r0, r4
	rsb r2, r2, #0
	bl ov1_02139DE0
	ldr r0, [r4]
	cmp r0, #0x28
	ldmloia sp!, {r4, pc}
	ldr r0, [r4, #0x3c]
	mov r1, #0x35
	bl sub_02034C5C
	ldr r0, [r4, #0x3c]
	mov r1, #0x36
	bl sub_02034C44
	mov r0, #0
	str r0, [r4]
	mov r0, #6
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_021392F8

	arm_func_start ov1_02139364
ov1_02139364: ; 0x02139364
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrsh r0, [r4, #0xa]
	cmp r0, #0
	bne _02139398
	ldr r0, [r4, #0x3c]
	mov r1, #0x36
	bl sub_02034C5C
	mov r0, #0
	str r0, [r4]
	mov r0, #0xa
	str r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_02139364
_02139398:
	ldr r0, [r4, #0xc]
	cmp r0, #0x40
	blo _0213949C
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _021393D0
	ldr r3, [r4, #0x38]
	ldrsh r2, [r4, #8]
	ldr r1, [r4, #0x1c]
	ldr r0, [r3, #0x28]
	sub r1, r2, r1
	adds r0, r1, r0
	movmi r0, #0
	str r0, [r3, #0x28]
_021393D0:
	ldrb r6, [r4, #0x18]
	ldrb r1, [r4, #0x19]
	cmp r6, r1
	beq _0213947C
	ldr r0, [r4, #0x34]
	bl sub_02010E90
	mov r5, r0
	ldr r0, [r4, #0x34]
	mov r1, r6
	bl sub_02010E90
	sub r2, r5, r0
	ldrb r1, [r4, #0x19]
	ldr r0, [r4, #0x34]
	and r6, r2, #0xff
	bl sub_02010E78
	mov r5, r0
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0x34]
	bl sub_02010E78
	sub r0, r5, r0
	and r5, r0, #0xff
	ldrb r1, [r4, #0x18]
	ldrb r2, [r4, #0x19]
	mov r0, r4
	bl ov1_0213A21C
	mov r1, r6
	mov r0, r4
	bl ov1_0213A358
	mov r1, r5
	mov r0, r4
	bl ov1_0213A3FC
	ldr r0, [r4, #0x3c]
	mov r1, #0x36
	bl sub_02034C5C
	ldr r0, [r4, #0x3c]
	mov r1, #0xb
	mov r2, #0
	mov r3, #0x100
	bl sub_02034DE8
	mov r0, #0
	str r0, [r4]
	mov r0, #9
	b _02139494
_0213947C:
	ldr r0, [r4, #0x3c]
	mov r1, #0x36
	bl sub_02034C5C
	mov r0, #0
	str r0, [r4]
	mov r0, #0xa
_02139494:
	str r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, pc}
_0213949C:
	bl sub_0201001C
	ldr r5, [r0, #0x14]
	bl sub_0201001C
	ldrh r1, [r5]
	ldr r2, [r0, #0x18]
	and r0, r1, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldreqb r0, [r2, #5]
	cmpeq r0, #0
	ldr r0, [r4, #0xc]
	beq _021394E4
	add r0, r0, #2
	str r0, [r4, #0xc]
	cmp r0, #0x40
	movhi r0, #0x40
	strhi r0, [r4, #0xc]
	b _021394EC
_021394E4:
	add r0, r0, #1
	str r0, [r4, #0xc]
_021394EC:
	ldrsh r0, [r4, #8]
	ldr r2, [r4, #0xc]
	mov r1, #0
	mov r0, r0, lsl #0xc
	mov r3, #0x40
	bl sub_02007068
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _0213954C
	ldrsh r1, [r4, #8]
	ldr r2, [r4, #0xc]
	mov r0, #0
	mov r1, r1, lsl #0xc
	mov r3, #0x40
	bl sub_02007068
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x38]
	ldr r1, [r1, #0x28]
	add r1, r0, r1, lsl #12
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	sub r0, r1, r0, lsl #12
	str r0, [r4, #0x14]
_0213954C:
	ldrh r0, [r4, #0x1a]
	ldr r1, [r4, #0x14]
	cmp r0, r1, asr #12
	bgt _02139674
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _02139674
	ldr r2, [r4, #0x38]
	ldrb r1, [r4, #0x19]
	ldr r0, [r4, #0x34]
	ldr r5, [r2, #0x28]
	bl sub_02010EAC
	ldr r1, [r4, #0x1c]
	sub r0, r0, r5
	add r0, r1, r0
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #0x19]
	add r1, r0, #1
	strb r1, [r4, #0x19]
	ldr r0, [r4, #0x34]
	and r1, r1, #0xff
	bl sub_02010EAC
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #0x38]
	mov r1, #0
	str r1, [r0, #0x28]
	ldrb r1, [r4, #0x19]
	ldr r0, [r4, #0x38]
	bl sub_020160B8
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x438]
	bl sub_02010E60
	ldrb r1, [r4, #0x19]
	cmp r1, r0
	moveq r0, #1
	streq r0, [r4, #0x20]
	ldrsh r2, [r4, #8]
	ldr r1, [r4, #0x1c]
	mov r0, r4
	sub r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl ov1_02139FD8
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl ov1_0213A09C
	mov r0, r4
	mov r1, #0
	mov r2, #0x18000
	bl ov1_02139EE8
	mov r0, r4
	mov r1, #0
	mov r2, #0x18000
	bl ov1_02139EFC
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x40]
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x19c]
	ldr r0, [r4, #0x44]
	mov r2, r1
	bl sub_0201A000
	ldr r0, [r4, #0x3c]
	mov r1, #0x36
	bl sub_02034C5C
	ldr r0, [r4, #0x3c]
	mov r1, #0x37
	bl sub_02034C44
	mov r0, #0
	str r0, [r4]
	mov r0, #8
	str r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, pc}
_02139674:
	ldr r1, [r4, #0x10]
	mov r0, r4
	mov r1, r1, lsl #4
	mov r1, r1, asr #0x10
	bl ov1_02139FD8
	mov r0, r4
	mov r1, #0
	mov r2, #0x18000
	bl ov1_02139EE8
	ldrh r2, [r4, #0x1a]
	ldr r1, [r4, #0x14]
	mov r0, r4
	mov r2, r2, lsl #0xc
	bl ov1_0213A09C
	mov r0, r4
	mov r1, #0
	mov r2, #0x18000
	bl ov1_02139EFC
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_021396C0
ov1_021396C0: ; 0x021396C0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0x40
	blo _02139724
	ldrsh r2, [r4, #8]
	ldr r1, [r4, #0x38]
	cmp r2, #0
	rsblt r3, r2, #0
	ldr r0, [r1, #0x28]
	movge r3, r2
	cmp r3, r0
	movhs r0, #0
	addlo r0, r2, r0
	cmp r0, #0
	movlt r0, #0
	str r0, [r1, #0x28]
	ldr r0, [r4, #0x3c]
	mov r1, #0x36
	bl sub_02034C5C
	mov r0, #0
	str r0, [r4]
	mov r0, #0xa
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_021396C0
_02139724:
	bl sub_0201001C
	ldr r5, [r0, #0x14]
	bl sub_0201001C
	ldrh r1, [r5]
	ldr r2, [r0, #0x18]
	and r0, r1, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldreqb r0, [r2, #5]
	cmpeq r0, #0
	ldr r0, [r4, #0xc]
	beq _0213976C
	add r0, r0, #2
	str r0, [r4, #0xc]
	cmp r0, #0x40
	movhi r0, #0x40
	strhi r0, [r4, #0xc]
	b _02139774
_0213976C:
	add r0, r0, #1
	str r0, [r4, #0xc]
_02139774:
	ldrsh r0, [r4, #8]
	ldr r2, [r4, #0xc]
	mov r1, #0
	mov r0, r0, lsl #0xc
	mov r3, #0x40
	bl sub_02007068
	str r0, [r4, #0x10]
	ldrsh r1, [r4, #8]
	ldr r2, [r4, #0xc]
	mov r0, #0
	mov r1, r1, lsl #0xc
	mov r3, #0x40
	bl sub_02007068
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x38]
	mov r2, r0
	ldr r1, [r1, #0x28]
	mov r0, r4
	add r1, r2, r1, lsl #12
	str r1, [r4, #0x14]
	ldr r1, [r4, #0x10]
	mov r1, r1, lsl #4
	mov r1, r1, asr #0x10
	bl ov1_02139FD8
	ldrh r2, [r4, #0x1a]
	ldr r1, [r4, #0x14]
	mov r0, r4
	mov r2, r2, lsl #0xc
	bl ov1_0213A09C
	mov r0, r4
	mov r1, #0
	mov r2, #0x18000
	bl ov1_02139EE8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_021397FC
ov1_021397FC: ; 0x021397FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4]
	mov r0, #0x1f
	mov r1, #4
	mov r3, #0x20
	bl sub_02007068
	and r0, r0, #0xff
	str r0, [r4, #0x6e4]
	ldr r1, _02139858 ; =0x00007FFF
	add r0, r4, #0x600
	strh r1, [r0, #0xd8]
	ldr r0, [r4]
	cmp r0, #0x40
	ldmloia sp!, {r4, pc}
	ldr r0, [r4, #0x3c]
	mov r1, #0x36
	bl sub_02034C44
	mov r0, #0
	str r0, [r4]
	mov r0, #6
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02139858: .word 0x00007FFF
	arm_func_end ov1_021397FC

	arm_func_start ov1_0213985C
ov1_0213985C: ; 0x0213985C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x100000
	rsb r0, r0, #0
	ldr r2, [r4]
	add r1, r0, #0x80000
	mov r3, #8
	bl sub_02007068
	mov r1, r0
	mov r0, r4
	mov r2, #0x28000
	bl ov1_02139DFC
	ldr r2, [r4]
	mov r0, #0x140000
	mov r1, #0x80000
	mov r3, #8
	bl sub_02007068
	mov r1, r0
	mov r0, r4
	mov r2, #0x28000
	bl ov1_02139E70
	ldr r2, [r4]
	mov r0, #0x140000
	mov r1, #0x80000
	mov r3, #8
	bl sub_02007068
	mov r1, r0
	mov r0, r4
	mov r2, #0x28000
	bl ov1_02139EAC
	ldr r0, [r4]
	cmp r0, #0x28
	ldmloia sp!, {r4, pc}
	mov r0, #0
	str r0, [r4]
	mov r0, #0xa
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213985C

	arm_func_start ov1_021398F4
ov1_021398F4: ; 0x021398F4
	stmdb sp!, {r3, r4, r5, lr}
	mov r1, #0
	mov r4, r0
	sub r2, r1, #0x2c000
	bl ov1_02139FC4
	ldrh r0, [r4, #0x30]
	ldr r1, _021399A4 ; =FX_SinCosTable_
	add r0, r0, #0x400
	strh r0, [r4, #0x30]
	ldrh r0, [r4, #0x30]
	cmp r0, #0x8000
	subhs r0, r0, #0x8000
	strhsh r0, [r4, #0x30]
	ldrh r2, [r4, #0x30]
	mov r0, #0x1f
	mov r2, r2, asr #4
	mov r2, r2, lsl #2
	ldrsh r2, [r1, r2]
	mov r1, r2, asr #0x1f
	mov r1, r1, lsl #0xf
	mov r3, r2, lsl #0xf
	orr r1, r1, r2, lsr #17
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	sub r1, r2, #0x2c000
	str r1, [r4, #0xa90]
	str r0, [r4, #0xa88]
	str r0, [r4, #0xad4]
	bl sub_0201001C
	ldr r5, [r0, #0x14]
	bl sub_0201001C
	ldr r0, [r0, #0x18]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02139994
	ldrh r0, [r5, #2]
	and r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_021398F4
_02139994:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021399A4: .word FX_SinCosTable_

	arm_func_start ov1_021399A8
ov1_021399A8: ; 0x021399A8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r0, r5, #0x48
	ldr r2, [r0]
	mov r4, r1
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x94
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0xe0
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x12c
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x178
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x1c4
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	mov r6, #0
	add r7, r5, #0x210
	arm_func_end ov1_021399A8
_02139A30:
	mov r0, r7
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, #1
	cmp r6, #2
	add r7, r7, #0x4c
	blt _02139A30
	add r7, r5, #0x2a8
	mov r6, #0
_02139A5C:
	mov r0, r7
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, #1
	cmp r6, #2
	add r7, r7, #0x4c
	blt _02139A5C
	add r0, r5, #0x340
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x38c
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r7, r5, #0x3d8
	mov r6, #0
_02139AB0:
	mov r0, r7
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, #1
	cmp r6, #3
	add r7, r7, #0x4c
	blt _02139AB0
	add r0, r5, #0xbc
	add r0, r0, #0x400
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x108
	add r0, r0, #0x400
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x154
	add r7, r0, #0x400
	mov r6, #0
_02139B10:
	mov r0, r7
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, #1
	cmp r6, #3
	add r7, r7, #0x4c
	blt _02139B10
	add r0, r5, #0x238
	add r0, r0, #0x400
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x284
	add r0, r0, #0x400
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x6d0
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r7, r5, #0x730
	mov r6, #0
_02139B80:
	mov r0, r7
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, #1
	cmp r6, #4
	add r7, r7, #0x4c
	blt _02139B80
	add r0, r5, #0x860
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0xac
	add r0, r0, #0x800
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0xf8
	add r7, r0, #0x800
	mov r6, #0
_02139BDC:
	mov r0, r7
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, #1
	cmp r6, #5
	add r7, r7, #0x4c
	blt _02139BDC
	add r0, r5, #0x274
	add r0, r0, #0x800
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0xac0
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_02139C30
ov1_02139C30: ; 0x02139C30
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x28]
	mov r5, r1
	tst r0, #0x20000
	movne r0, #0
	ldreqsh r0, [r6, #0xa]
	mov r1, #0
	mov r4, r2
	strh r0, [r6, #8]
	str r1, [r6, #0xc]
	ldrsh r0, [r6, #8]
	str r0, [r6, #0x10]
	ldrsh r0, [r6, #8]
	str r0, [r6, #0x14]
	str r1, [r6, #0x1c]
	ldr r0, [r6, #0x38]
	add r0, r0, #0x8000
	ldrb r0, [r0, #0x7db]
	strb r0, [r6, #0x18]
	strb r0, [r6, #0x19]
	ldrb r1, [r6, #0x18]
	ldr r0, [r6, #0x34]
	bl sub_02010EAC
	strh r0, [r6, #0x1a]
	ldr r0, [r6, #0x3c]
	mov r1, #4
	mov r2, #1
	bl sub_02034A40
	str r5, [r6, #0x40]
	str r4, [r6, #0x44]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x438]
	bl sub_02010E60
	ldrb r1, [r6, #0x18]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	str r0, [r6, #0x20]
	mov r0, #0
	str r0, [r6]
	mov r0, #1
	str r0, [r6, #4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_02139C30

	arm_func_start ov1_02139CE4
ov1_02139CE4: ; 0x02139CE4
	stmdb sp!, {r3, lr}
	add lr, r1, #0x40
	str lr, [r0, #0x4c]
	str lr, [r0, #0x98]
	add ip, r1, #0x20
	str ip, [r0, #0xe4]
	str lr, [r0, #0x130]
	str lr, [r0, #0x1c8]
	mov r3, r0
	str ip, [r0, #0x17c]
	mov r2, #0
	arm_func_end ov1_02139CE4
_02139D10:
	add r2, r2, #1
	str lr, [r3, #0x214]
	cmp r2, #2
	add r3, r3, #0x4c
	blt _02139D10
	mov r3, r0
	mov r2, #0
_02139D2C:
	add r2, r2, #1
	str lr, [r3, #0x2ac]
	cmp r2, #2
	add r3, r3, #0x4c
	blt _02139D2C
	str lr, [r0, #0x344]
	mov r3, r0
	str ip, [r0, #0x390]
	mov r2, #0
_02139D50:
	add r2, r2, #1
	str lr, [r3, #0x3dc]
	cmp r2, #3
	add r3, r3, #0x4c
	blt _02139D50
	str lr, [r0, #0x4c0]
	mov r3, r0
	str ip, [r0, #0x50c]
	mov r2, #0
_02139D74:
	add r2, r2, #1
	str lr, [r3, #0x558]
	cmp r2, #3
	add r3, r3, #0x4c
	blt _02139D74
	str lr, [r0, #0xa78]
	str lr, [r0, #0xac4]
	str lr, [r0, #0x63c]
	str ip, [r0, #0x688]
	mov r3, r0
	str lr, [r0, #0x6d4]
	mov r2, #0
_02139DA4:
	add r2, r2, #1
	str ip, [r3, #0x734]
	cmp r2, #4
	add r3, r3, #0x4c
	blt _02139DA4
	str lr, [r0, #0x864]
	str ip, [r0, #0x8b0]
	mov r2, #0
_02139DC4:
	add r2, r2, #1
	str ip, [r0, #0x8fc]
	cmp r2, #5
	add r0, r0, #0x4c
	blt _02139DC4
	add r0, r1, #0x41
	ldmia sp!, {r3, pc}

	arm_func_start ov1_02139DE0
ov1_02139DE0: ; 0x02139DE0
	str r1, [r0, #0x60]
	str r2, [r0, #0x64]
	str r1, [r0, #0xac]
	str r2, [r0, #0xb0]
	str r1, [r0, #0xf8]
	str r2, [r0, #0xfc]
	bx lr
	arm_func_end ov1_02139DE0

	arm_func_start ov1_02139DFC
ov1_02139DFC: ; 0x02139DFC
	str r1, [r0, #0x144]
	sub r3, r2, #0x2000
	str r3, [r0, #0x148]
	str r1, [r0, #0x190]
	str r2, [r0, #0x194]
	str r1, [r0, #0x1dc]
	sub r3, r2, #0x6000
	str r3, [r0, #0x1e0]
	add r3, r2, #0x17000
	mov ip, r0
	add r1, r1, #0x1a000
	mov r2, #0
	arm_func_end ov1_02139DFC
_02139E2C:
	str r1, [ip, #0x228]
	add r2, r2, #1
	str r3, [ip, #0x22c]
	cmp r2, #2
	add r1, r1, #0x10000
	add ip, ip, #0x4c
	blt _02139E2C
	add r1, r1, #0x9000
	mov r2, #0
_02139E50:
	str r1, [r0, #0x2c0]
	add r2, r2, #1
	str r3, [r0, #0x2c4]
	cmp r2, #2
	add r1, r1, #0x10000
	add r0, r0, #0x4c
	blt _02139E50
	bx lr

	arm_func_start ov1_02139E70
ov1_02139E70: ; 0x02139E70
	str r1, [r0, #0x358]
	str r2, [r0, #0x35c]
	str r1, [r0, #0x3a4]
	str r2, [r0, #0x3a8]
	add r3, r2, #0x2000
	sub r1, r1, #0x30000
	mov r2, #0
	arm_func_end ov1_02139E70
_02139E8C:
	str r1, [r0, #0x3f0]
	add r2, r2, #1
	str r3, [r0, #0x3f4]
	cmp r2, #3
	add r1, r1, #0x10000
	add r0, r0, #0x4c
	blt _02139E8C
	bx lr

	arm_func_start ov1_02139EAC
ov1_02139EAC: ; 0x02139EAC
	str r1, [r0, #0x4d4]
	str r2, [r0, #0x4d8]
	str r1, [r0, #0x520]
	str r2, [r0, #0x524]
	add r3, r2, #0x1f000
	sub r1, r1, #0x40000
	mov r2, #0
	arm_func_end ov1_02139EAC
_02139EC8:
	str r1, [r0, #0x56c]
	add r2, r2, #1
	str r3, [r0, #0x570]
	cmp r2, #3
	add r1, r1, #0x10000
	add r0, r0, #0x4c
	blt _02139EC8
	bx lr

	arm_func_start ov1_02139EE8
ov1_02139EE8: ; 0x02139EE8
	str r1, [r0, #0x650]
	str r2, [r0, #0x654]
	str r1, [r0, #0x69c]
	str r2, [r0, #0x6a0]
	bx lr
	arm_func_end ov1_02139EE8

	arm_func_start ov1_02139EFC
ov1_02139EFC: ; 0x02139EFC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r7, #0
	sub ip, r1, #0x12000
	sub r2, r2, #0x6000
	arm_func_end ov1_02139EFC
_02139F10:
	add r6, r0, r7, lsl #3
	ldr r5, [r6, #0x6e8]
	ldr r4, [r6, #0x6ec]
	add lr, r5, ip
	add r3, r4, r2
	add r1, r7, #1
	str lr, [r6, #0x6e8]
	and r7, r1, #0xff
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str lr, [sp, #0x10]
	str r3, [sp, #0x14]
	str lr, [sp]
	str r3, [sp, #4]
	str r3, [r6, #0x6ec]
	cmp r7, #4
	blo _02139F10
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_02139F5C
ov1_02139F5C: ; 0x02139F5C
	sub r3, r2, #0xc000
	add r1, r1, #0x10000
	mov r2, #0
	arm_func_end ov1_02139F5C
_02139F68:
	str r1, [r0, #0x748]
	add r2, r2, #1
	str r3, [r0, #0x74c]
	cmp r2, #4
	add r1, r1, #0x20000
	add r0, r0, #0x4c
	blt _02139F68
	bx lr

	arm_func_start ov1_02139F88
ov1_02139F88: ; 0x02139F88
	str r1, [r0, #0x878]
	str r2, [r0, #0x87c]
	str r1, [r0, #0x8c4]
	str r2, [r0, #0x8c8]
	add r3, r2, #0x32000
	sub r1, r1, #0x10000
	mov r2, #0
	arm_func_end ov1_02139F88
_02139FA4:
	str r1, [r0, #0x910]
	add r2, r2, #1
	str r3, [r0, #0x914]
	cmp r2, #5
	add r1, r1, #0x20000
	add r0, r0, #0x4c
	blt _02139FA4
	bx lr

	arm_func_start ov1_02139FC4
ov1_02139FC4: ; 0x02139FC4
	str r1, [r0, #0xa8c]
	str r2, [r0, #0xa90]
	str r1, [r0, #0xad8]
	str r2, [r0, #0xadc]
	bx lr
	arm_func_end ov1_02139FC4

	arm_func_start ov1_02139FD8
ov1_02139FD8: ; 0x02139FD8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r3, _0213A094 ; =0x00002710
	mov r2, r1
	mov r4, r0
	cmp r2, r3
	add r0, sp, #0
	blt _0213A008
	ldr r1, _0213A098 ; =s_4d_overlay_1_02141c28
	sub r2, r3, #1
	bl OS_SPrintf
	b _0213A010
	arm_func_end ov1_02139FD8
_0213A008:
	ldr r1, _0213A098 ; =s_4d_overlay_1_02141c28
	bl OS_SPrintf
_0213A010:
	mov r5, #0
	add r6, sp, #0
	mov ip, #0x1f
	mov r2, #0x2f
	mov r3, #0x2e
	mov lr, r5
_0213A028:
	ldrsb r0, [r6]
	cmp r0, #0x20
	streq lr, [r4, #0x744]
	beq _0213A078
	str ip, [r4, #0x744]
	ldrsb r0, [r6]
	cmp r0, #0x2b
	beq _0213A054
	cmp r0, #0x2d
	beq _0213A060
	b _0213A06C
_0213A054:
	add r0, r4, #0x700
	strh r3, [r0, #0x5a]
	b _0213A078
_0213A060:
	add r0, r4, #0x700
	strh r2, [r0, #0x5a]
	b _0213A078
_0213A06C:
	sub r1, r0, #0xc
	add r0, r4, #0x700
	strh r1, [r0, #0x5a]
_0213A078:
	add r5, r5, #1
	cmp r5, #4
	add r6, r6, #1
	add r4, r4, #0x4c
	blt _0213A028
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0213A094: .word 0x00002710
_0213A098: .word s_4d_overlay_1_02141c28

	arm_func_start ov1_0213A09C
ov1_0213A09C: ; 0x0213A09C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	movne r2, #0x8b
	bne _0213A108
	cmp r1, r2
	movge r2, #0x8b
	bge _0213A108
	cmp r1, #0
	movle r2, #0
	ble _0213A108
	mov r0, r1, asr #0x1f
	mov r3, r0, lsl #0xc
	orr r3, r3, r1, lsr #20
	mov r0, r1, lsl #0xc
	mov r1, r3
	mov r3, r2, asr #0x1f
	bl _ll_div
	mov r1, #0x8b000
	umull r3, r2, r0, r1
	mov r0, r0, asr #0x1f
	mla r2, r0, r1, r2
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #20
	mov r0, r0, asr #0xc
	and r2, r0, #0xff
	arm_func_end ov1_0213A09C
_0213A108:
	cmp r2, #0
	movne r0, #0x1f
	strne r0, [r4, #0x6e4]
	bne _0213A124
	mov r0, #1
	str r0, [r4, #0x6e4]
	ldmia sp!, {r4, pc}
_0213A124:
	ldr r1, _0213A160 ; =0x000043F0
	add r0, r4, #0x600
	strh r1, [r0, #0xd8]
	mov r1, #0
	str r1, [r4, #0x6e8]
	str r1, [r4, #0x6ec]
	mov r0, r2, lsl #0xc
	str r0, [r4, #0x6f0]
	str r1, [r4, #0x6f4]
	str r0, [r4, #0x6f8]
	mov r0, #0x2000
	str r0, [r4, #0x6fc]
	str r1, [r4, #0x700]
	str r0, [r4, #0x704]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213A160: .word 0x000043F0

	arm_func_start ov1_0213A164
ov1_0213A164: ; 0x0213A164
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, r0
	movs r2, r1
	add r0, sp, #0
	bpl _0213A188
	ldr r1, _0213A214 ; =s_5d_overlay_1_02141c2c
	bl OS_SPrintf
	b _0213A190
	arm_func_end ov1_0213A164
_0213A188:
	ldr r1, _0213A218 ; =s_4d_overlay_1_02141c30
	bl OS_SPrintf
_0213A190:
	mov r5, #0
	add r6, sp, #0
	mov ip, #0x1f
	mov r2, #0x2f
	mov r3, #0x2e
	mov lr, r5
_0213A1A8:
	ldrsb r0, [r6]
	cmp r0, #0x20
	streq lr, [r4, #0x90c]
	beq _0213A1F8
	str ip, [r4, #0x90c]
	ldrsb r0, [r6]
	cmp r0, #0x2b
	beq _0213A1D4
	cmp r0, #0x2d
	beq _0213A1E0
	b _0213A1EC
_0213A1D4:
	add r0, r4, #0x900
	strh r3, [r0, #0x22]
	b _0213A1F8
_0213A1E0:
	add r0, r4, #0x900
	strh r2, [r0, #0x22]
	b _0213A1F8
_0213A1EC:
	sub r1, r0, #0xc
	add r0, r4, #0x900
	strh r1, [r0, #0x22]
_0213A1F8:
	add r5, r5, #1
	cmp r5, #5
	add r6, r6, #1
	add r4, r4, #0x4c
	blt _0213A1A8
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0213A214: .word s_5d_overlay_1_02141c2c
_0213A218: .word s_4d_overlay_1_02141c30

	arm_func_start ov1_0213A21C
ov1_0213A21C: ; 0x0213A21C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r3, r1
	mov r5, r0
	mov r4, r2
	ldr r1, _0213A354 ; =s_2d_overlay_1_02141c38
	add r0, sp, #0
	mov r2, r3
	bl OS_SPrintf
	mov r2, #0
	add r3, sp, #0
	mov ip, r5
	mov r0, #0x1f
	mov r7, #0x2f
	mov r8, #0x2e
	mov r1, r2
	arm_func_end ov1_0213A21C
_0213A25C:
	ldrsb r6, [r3]
	cmp r6, #0x20
	streq r1, [ip, #0x224]
	beq _0213A2AC
	str r0, [ip, #0x224]
	ldrsb r6, [r3]
	cmp r6, #0x2b
	beq _0213A288
	cmp r6, #0x2d
	beq _0213A294
	b _0213A2A0
_0213A288:
	add lr, ip, #0x200
	strh r8, [lr, #0x3a]
	b _0213A2AC
_0213A294:
	add lr, ip, #0x200
	strh r7, [lr, #0x3a]
	b _0213A2AC
_0213A2A0:
	sub r6, r6, #0xc
	add lr, ip, #0x200
	strh r6, [lr, #0x3a]
_0213A2AC:
	add r2, r2, #1
	cmp r2, #2
	add r3, r3, #1
	add ip, ip, #0x4c
	blt _0213A25C
	ldr r1, _0213A354 ; =s_2d_overlay_1_02141c38
	add r0, sp, #0
	mov r2, r4
	bl OS_SPrintf
	mov r6, #0
	add r7, sp, #0
	mov r4, #0x1f
	mov r2, #0x2f
	mov r3, #0x2e
	mov ip, r6
_0213A2E8:
	ldrsb r0, [r7]
	cmp r0, #0x20
	streq ip, [r5, #0x2bc]
	beq _0213A338
	str r4, [r5, #0x2bc]
	ldrsb r0, [r7]
	cmp r0, #0x2b
	beq _0213A314
	cmp r0, #0x2d
	beq _0213A320
	b _0213A32C
_0213A314:
	add r0, r5, #0x200
	strh r3, [r0, #0xd2]
	b _0213A338
_0213A320:
	add r0, r5, #0x200
	strh r2, [r0, #0xd2]
	b _0213A338
_0213A32C:
	sub r1, r0, #0xc
	add r0, r5, #0x200
	strh r1, [r0, #0xd2]
_0213A338:
	add r6, r6, #1
	cmp r6, #2
	add r7, r7, #1
	add r5, r5, #0x4c
	blt _0213A2E8
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0213A354: .word s_2d_overlay_1_02141c38

	arm_func_start ov1_0213A358
ov1_0213A358: ; 0x0213A358
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r2, r1
	mov r4, r0
	ldr r1, _0213A3F8 ; =s_2d_overlay_1_02141c3c
	add r0, sp, #0
	bl OS_SPrintf
	mov r5, #0
	add r6, sp, #0
	mov ip, #0x1f
	mov r2, #0x2f
	mov r3, #0x2e
	mov lr, r5
	arm_func_end ov1_0213A358
_0213A38C:
	ldrsb r0, [r6]
	cmp r0, #0x20
	streq lr, [r4, #0x3ec]
	beq _0213A3DC
	str ip, [r4, #0x3ec]
	ldrsb r0, [r6]
	cmp r0, #0x2b
	beq _0213A3B8
	cmp r0, #0x2d
	beq _0213A3C4
	b _0213A3D0
_0213A3B8:
	add r0, r4, #0x400
	strh r3, [r0, #2]
	b _0213A3DC
_0213A3C4:
	add r0, r4, #0x400
	strh r2, [r0, #2]
	b _0213A3DC
_0213A3D0:
	sub r1, r0, #0xc
	add r0, r4, #0x400
	strh r1, [r0, #2]
_0213A3DC:
	add r5, r5, #1
	cmp r5, #3
	add r6, r6, #1
	add r4, r4, #0x4c
	blt _0213A38C
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0213A3F8: .word s_2d_overlay_1_02141c3c

	arm_func_start ov1_0213A3FC
ov1_0213A3FC: ; 0x0213A3FC
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r2, r1
	mov r4, r0
	ldr r1, _0213A49C ; =s_2d_overlay_1_02141c3c
	add r0, sp, #0
	bl OS_SPrintf
	mov r5, #0
	add r6, sp, #0
	mov ip, #0x1f
	mov r2, #0x2f
	mov r3, #0x2e
	mov lr, r5
	arm_func_end ov1_0213A3FC
_0213A430:
	ldrsb r0, [r6]
	cmp r0, #0x20
	streq lr, [r4, #0x568]
	beq _0213A480
	str ip, [r4, #0x568]
	ldrsb r0, [r6]
	cmp r0, #0x2b
	beq _0213A45C
	cmp r0, #0x2d
	beq _0213A468
	b _0213A474
_0213A45C:
	add r0, r4, #0x500
	strh r3, [r0, #0x7e]
	b _0213A480
_0213A468:
	add r0, r4, #0x500
	strh r2, [r0, #0x7e]
	b _0213A480
_0213A474:
	sub r1, r0, #0xc
	add r0, r4, #0x500
	strh r1, [r0, #0x7e]
_0213A480:
	add r5, r5, #1
	cmp r5, #3
	add r6, r6, #1
	add r4, r4, #0x4c
	blt _0213A430
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_0213A49C: .word s_2d_overlay_1_02141c3c

	arm_func_start ov1_0213A4A0
ov1_0213A4A0: ; 0x0213A4A0
	ldr r3, _0213A4D0 ; =DAT_overlay_1_0214048c
	mov r0, #0
	arm_func_end ov1_0213A4A0
_0213A4A8:
	mov r2, r0, lsl #1
	ldrh r2, [r3, r2]
	cmp r1, r2
	bxhs lr
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #4
	blo _0213A4A8
	mov r0, #3
	bx lr
	.align 2, 0
_0213A4D0: .word DAT_overlay_1_0214048c

	arm_func_start ov1_0213A4D4
ov1_0213A4D4: ; 0x0213A4D4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl sub_02011D60
	ldr r0, _0213A53C ; =ptr_FUN_overlay_1_0213a540_overlay_1_02141c6c
	str r0, [r4]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x57
	str r0, [r4, #0x184]
	bl sub_02034870
	str r7, [r4, #0x1ac]
	str r6, [r4, #0x1b0]
	str r5, [r4, #0x1b4]
	add r1, r4, #0x100
	mov r2, #0
	strh r2, [r1, #0x88]
	mov r1, #0x400
	mov r0, r4
	str r1, [r4, #0x194]
	bl ov1_0213A680
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0213A53C: .word ptr_FUN_overlay_1_0213a540_overlay_1_02141c6c
	arm_func_end ov1_0213A4D4

	arm_func_start ov1_0213A540
ov1_0213A540: ; 0x0213A540
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0213A5D8 ; =ptr_FUN_overlay_1_0213a540_overlay_1_02141c6c
	mov r4, r0
	str r1, [r4]
	ldr r5, [r4, #0x1a0]
	cmp r5, #0
	beq _0213A578
	beq _0213A570
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_0213A540
_0213A570:
	mov r0, #0
	str r0, [r4, #0x1a0]
_0213A578:
	ldr r5, [r4, #0x1a4]
	cmp r5, #0
	beq _0213A5A0
	beq _0213A598
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
_0213A598:
	mov r0, #0
	str r0, [r4, #0x1a4]
_0213A5A0:
	ldr r5, [r4, #0x1a8]
	cmp r5, #0
	beq _0213A5C8
	beq _0213A5C0
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
_0213A5C0:
	mov r0, #0
	str r0, [r4, #0x1a8]
_0213A5C8:
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0213A5D8: .word ptr_FUN_overlay_1_0213a540_overlay_1_02141c6c

	arm_func_start ov1_0213A5DC
ov1_0213A5DC: ; 0x0213A5DC
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0213A67C ; =ptr_FUN_overlay_1_0213a540_overlay_1_02141c6c
	mov r4, r0
	str r1, [r4]
	ldr r5, [r4, #0x1a0]
	cmp r5, #0
	beq _0213A614
	beq _0213A60C
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_0213A5DC
_0213A60C:
	mov r0, #0
	str r0, [r4, #0x1a0]
_0213A614:
	ldr r5, [r4, #0x1a4]
	cmp r5, #0
	beq _0213A63C
	beq _0213A634
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
_0213A634:
	mov r0, #0
	str r0, [r4, #0x1a4]
_0213A63C:
	ldr r5, [r4, #0x1a8]
	cmp r5, #0
	beq _0213A664
	beq _0213A65C
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
_0213A65C:
	mov r0, #0
	str r0, [r4, #0x1a8]
_0213A664:
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0213A67C: .word ptr_FUN_overlay_1_0213a540_overlay_1_02141c6c

	arm_func_start ov1_0213A680
ov1_0213A680: ; 0x0213A680
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0213A6A0
	mov r0, r4
	bl ov1_0213A77C
	mov r0, r4
	bl ov1_0213A858
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213A680

	arm_func_start ov1_0213A6A0
ov1_0213A6A0: ; 0x0213A6A0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x1ec
	ldr r1, _0213A764 ; =s_data_interface_i_03d_LZ_bin_overlay_1_02141c80
	mov r4, r0
	add r0, sp, #0xc
	mov r2, #0x13
	bl OS_SPrintf
	ldr r1, _0213A768 ; =s_BOA_i_03d_02d_NCBR_overlay_1_02141c9c
	add r0, sp, #0x6c
	mov r2, #0x13
	mov r3, #2
	bl OS_SPrintf
	ldr r1, _0213A76C ; =s_BOA_i_03d_NCLR_overlay_1_02141cb0
	add r0, sp, #0xcc
	mov r2, #0x13
	bl OS_SPrintf
	ldr r1, _0213A770 ; =s_BOA_i_03d_02d_NCER_overlay_1_02141cc0
	add r0, sp, #0x12c
	mov r2, #0x13
	mov r3, #2
	bl OS_SPrintf
	ldr r1, _0213A774 ; =s_BOA_i_03d_02d_cac_overlay_1_02141cd4
	add r0, sp, #0x18c
	mov r2, #0x13
	mov r3, #2
	bl OS_SPrintf
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0213A740
	add r2, sp, #0xcc
	str r2, [sp]
	add r1, sp, #0x12c
	str r1, [sp, #4]
	add ip, sp, #0x18c
	ldr r1, _0213A778 ; =s_BOA_overlay_1_02141ce8
	add r2, sp, #0xc
	add r3, sp, #0x6c
	str ip, [sp, #8]
	bl sub_0201AAE0
	arm_func_end ov1_0213A6A0
_0213A740:
	str r0, [r4, #0x1a0]
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	add r1, r4, #0x100
	strh r0, [r1, #0x98]
	add sp, sp, #0x1ec
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0213A764: .word s_data_interface_i_03d_LZ_bin_overlay_1_02141c80
_0213A768: .word s_BOA_i_03d_02d_NCBR_overlay_1_02141c9c
_0213A76C: .word s_BOA_i_03d_NCLR_overlay_1_02141cb0
_0213A770: .word s_BOA_i_03d_02d_NCER_overlay_1_02141cc0
_0213A774: .word s_BOA_i_03d_02d_cac_overlay_1_02141cd4
_0213A778: .word s_BOA_overlay_1_02141ce8

	arm_func_start ov1_0213A77C
ov1_0213A77C: ; 0x0213A77C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x1ec
	ldr r1, _0213A840 ; =s_data_interface_i_03d_LZ_bin_overlay_1_02141c80
	mov r4, r0
	add r0, sp, #0xc
	mov r2, #0x13
	bl OS_SPrintf
	ldr r1, _0213A844 ; =s_BOB_i_03d_02d_NCBR_overlay_1_02141cec
	add r0, sp, #0x6c
	mov r2, #0x13
	mov r3, #3
	bl OS_SPrintf
	ldr r1, _0213A848 ; =s_BOB_i_03d_NCLR_overlay_1_02141d00
	add r0, sp, #0xcc
	mov r2, #0x13
	bl OS_SPrintf
	ldr r1, _0213A84C ; =s_BOB_i_03d_02d_NCER_overlay_1_02141d10
	add r0, sp, #0x12c
	mov r2, #0x13
	mov r3, #3
	bl OS_SPrintf
	ldr r1, _0213A850 ; =s_BOB_i_03d_02d_cac_overlay_1_02141d24
	add r0, sp, #0x18c
	mov r2, #0x13
	mov r3, #3
	bl OS_SPrintf
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0213A81C
	add r2, sp, #0xcc
	str r2, [sp]
	add r1, sp, #0x12c
	str r1, [sp, #4]
	add ip, sp, #0x18c
	ldr r1, _0213A854 ; =s_BOB_overlay_1_02141d38
	add r2, sp, #0xc
	add r3, sp, #0x6c
	str ip, [sp, #8]
	bl sub_0201AAE0
	arm_func_end ov1_0213A77C
_0213A81C:
	str r0, [r4, #0x1a4]
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	add r1, r4, #0x100
	strh r0, [r1, #0x9a]
	add sp, sp, #0x1ec
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0213A840: .word s_data_interface_i_03d_LZ_bin_overlay_1_02141c80
_0213A844: .word s_BOB_i_03d_02d_NCBR_overlay_1_02141cec
_0213A848: .word s_BOB_i_03d_NCLR_overlay_1_02141d00
_0213A84C: .word s_BOB_i_03d_02d_NCER_overlay_1_02141d10
_0213A850: .word s_BOB_i_03d_02d_cac_overlay_1_02141d24
_0213A854: .word s_BOB_overlay_1_02141d38

	arm_func_start ov1_0213A858
ov1_0213A858: ; 0x0213A858
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x1ec
	ldr r1, _0213A8FC ; =s_data_interface_i019_LZ_bin_overlay_1_02141d3c
	mov r4, r0
	add r0, sp, #0xc
	bl OS_SPrintf
	ldr r1, _0213A900 ; =s_BOC_i019_03_NCBR_overlay_1_02141d58
	add r0, sp, #0x6c
	bl OS_SPrintf
	ldr r1, _0213A904 ; =s_BOC_i019_NCLR_overlay_1_02141d6c
	add r0, sp, #0xcc
	bl OS_SPrintf
	ldr r1, _0213A908 ; =s_BOC_i019_03_NCER_overlay_1_02141d7c
	add r0, sp, #0x12c
	bl OS_SPrintf
	ldr r1, _0213A90C ; =s_BOC_i019_03_cac_overlay_1_02141d90
	add r0, sp, #0x18c
	bl OS_SPrintf
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0213A8D8
	add r2, sp, #0xcc
	str r2, [sp]
	add r1, sp, #0x12c
	str r1, [sp, #4]
	add ip, sp, #0x18c
	ldr r1, _0213A910 ; =s_BOC_overlay_1_02141da0
	add r2, sp, #0xc
	add r3, sp, #0x6c
	str ip, [sp, #8]
	bl sub_0201AAE0
	arm_func_end ov1_0213A858
_0213A8D8:
	str r0, [r4, #0x1a8]
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	add r1, r4, #0x100
	strh r0, [r1, #0x9c]
	add sp, sp, #0x1ec
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0213A8FC: .word s_data_interface_i019_LZ_bin_overlay_1_02141d3c
_0213A900: .word s_BOC_i019_03_NCBR_overlay_1_02141d58
_0213A904: .word s_BOC_i019_NCLR_overlay_1_02141d6c
_0213A908: .word s_BOC_i019_03_NCER_overlay_1_02141d7c
_0213A90C: .word s_BOC_i019_03_cac_overlay_1_02141d90
_0213A910: .word s_BOC_overlay_1_02141da0

	arm_func_start ov1_0213A914
ov1_0213A914: ; 0x0213A914
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1b0]
	mov r1, #0
	bl ov1_0212C4F4
	ldr r0, [r4, #0x1b0]
	mov r1, #0
	bl ov1_0212C4EC
	mov r1, #0
	ldr r0, [r4, #0x1b0]
	mov r2, r1
	bl ov1_0212C610
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213A914

	arm_func_start ov1_0213A948
ov1_0213A948: ; 0x0213A948
	ldr r0, [r0, #0x1ac]
	ldr ip, _0213A964 ; =FUN_0200E0E0
	add r0, r0, #0x1000
	mov r1, #2
	ldr r0, [r0, #0x4bc]
	mov r2, #0x14
	bx ip
	.align 2, 0
_0213A964: .word sub_0200E0E0
	arm_func_end ov1_0213A948

	arm_func_start ov1_0213A968
ov1_0213A968: ; 0x0213A968
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1ac]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #8
	bl sub_0200E0E0
	add r0, r4, #0x100
	ldrh r1, [r0, #0x88]
	bic r1, r1, #0x1000
	strh r1, [r0, #0x88]
	ldrh r1, [r0, #0x88]
	orr r1, r1, #0x2000
	strh r1, [r0, #0x88]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213A968

	arm_func_start ov1_0213A9A8
ov1_0213A9A8: ; 0x0213A9A8
	add r0, r0, #0x100
	mov r2, #0
	strh r2, [r0, #0x8c]
	strh r1, [r0, #0x8e]
	bx lr
	arm_func_end ov1_0213A9A8

	arm_func_start ov1_0213A9BC
ov1_0213A9BC: ; 0x0213A9BC
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r2, r4, #0x100
	ldrh r1, [r2, #0x8a]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0213AA44
_0213A9D8: ; jump table
	b _0213AA44 ; case 0
	b _0213AA44 ; case 1
	b _0213AA00 ; case 2
	b _0213AA18 ; case 3
	b _0213AA20 ; case 4
	b _0213AA28 ; case 5
	b _0213AA34 ; case 6
	b _0213AA44 ; case 7
	b _0213AA44 ; case 8
	b _0213AA40 ; case 9
	arm_func_end ov1_0213A9BC
_0213AA00:
	ldrh r3, [r2, #0x88]
	mov r1, #0x5a
	orr r3, r3, #0x1000
	strh r3, [r2, #0x88]
	bl ov1_0213A9A8
	b _0213AA44
_0213AA18:
	bl ov1_0213A948
	b _0213AA44
_0213AA20:
	bl ov1_0213A968
	b _0213AA44
_0213AA28:
	mov r1, #0x3c
	bl ov1_0213A9A8
	b _0213AA44
_0213AA34:
	mov r1, #0x3c
	bl ov1_0213A9A8
	b _0213AA44
_0213AA40:
	bl ov1_0213AC90
_0213AA44:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x88]
	bic r1, r1, #2
	strh r1, [r0, #0x88]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0213AA58
ov1_0213AA58: ; 0x0213AA58
	add r0, r0, #0x100
	ldrh r0, [r0, #0x88]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov1_0213AA58

	arm_func_start ov1_0213AA70
ov1_0213AA70: ; 0x0213AA70
	add r0, r0, #0x100
	cmp r1, #0
	ldrneh r1, [r0, #0x88]
	orrne r1, r1, #1
	ldreqh r1, [r0, #0x88]
	biceq r1, r1, #1
	strh r1, [r0, #0x88]
	bx lr
	arm_func_end ov1_0213AA70

	arm_func_start ov1_0213AA90
ov1_0213AA90: ; 0x0213AA90
	str r1, [r0, #0x194]
	mov r0, r1
	bx lr
	arm_func_end ov1_0213AA90

	arm_func_start ov1_0213AA9C
ov1_0213AA9C: ; 0x0213AA9C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1ac]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov1_0213AC70
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213AA9C

	arm_func_start ov1_0213AAC8
ov1_0213AAC8: ; 0x0213AAC8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x1ac]
	add r1, r0, #0x1000
	ldr r0, [r1, #0x4bc]
	ldr r4, [r1, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl sub_0200E310
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov1_0213AC70
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_0213AAC8

	arm_func_start ov1_0213AB08
ov1_0213AB08: ; 0x0213AB08
	stmdb sp!, {r3, lr}
	add r1, r0, #0x100
	ldrh r3, [r1, #0x8c]
	ldrh r2, [r1, #0x8e]
	cmp r2, r3
	bne _0213AB28
	bl ov1_0213AC70
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0213AB08
_0213AB28:
	addhi r0, r3, #1
	strhih r0, [r1, #0x8c]
	ldmia sp!, {r3, pc}

	arm_func_start ov1_0213AB34
ov1_0213AB34: ; 0x0213AB34
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x100
	ldrh r1, [r1, #0x8a]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0213ABA4
_0213AB50: ; jump table
	b _0213ABA4 ; case 0
	b _0213AB78 ; case 1
	b _0213AB80 ; case 2
	b _0213AB88 ; case 3
	b _0213AB88 ; case 4
	b _0213AB80 ; case 5
	b _0213AB80 ; case 6
	b _0213AB90 ; case 7
	b _0213AB98 ; case 8
	b _0213ABA0 ; case 9
	arm_func_end ov1_0213AB34
_0213AB78:
	bl ov1_0213AC70
	b _0213ABA4
_0213AB80:
	bl ov1_0213AB08
	b _0213ABA4
_0213AB88:
	bl ov1_0213AA9C
	b _0213ABA4
_0213AB90:
	bl ov1_0213AAC8
	b _0213ABA4
_0213AB98:
	bl ov1_0213AC70
	b _0213ABA4
_0213ABA0:
	bl ov1_0213AC70
_0213ABA4:
	add r0, r4, #0x100
	ldrh r0, [r0, #0x88]
	tst r0, #2
	beq _0213ABBC
	mov r0, r4
	bl ov1_0213A9BC
_0213ABBC:
	ldr r0, [r4, #0x1a0]
	ldr r0, [r0, #0xc]
	bl sub_020089EC
	ldr r0, [r4, #0x1a4]
	ldr r0, [r0, #0xc]
	bl sub_020089EC
	add r0, r4, #0x100
	ldrh r0, [r0, #0x88]
	tst r0, #0x2000
	beq _0213ABF0
	ldr r0, [r4, #0x1a8]
	ldr r0, [r0, #0xc]
	bl sub_020089EC
_0213ABF0:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x88]
	tst r1, #0x2000
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r0, #0x90]
	cmp r0, #0x50
	bne _0213AC18
	ldr r0, [r4, #0x184]
	mov r1, #0x5d
	bl sub_02034C44
_0213AC18:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x90]
	cmp r1, #0x50
	addls r1, r1, #1
	strlsh r1, [r0, #0x90]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0213AC30
ov1_0213AC30: ; 0x0213AC30
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0213A914
	add r2, r4, #0x100
	mov r1, #1
	mov r0, r4
	strh r1, [r2, #0x8a]
	bl ov1_0213AA70
	ldr r0, [r4, #0x184]
	mov r1, #0x1e
	bl sub_02034B58
	add r0, r4, #0x100
	ldrh r1, [r0, #0x88]
	orr r1, r1, #2
	strh r1, [r0, #0x88]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213AC30

	arm_func_start ov1_0213AC70
ov1_0213AC70: ; 0x0213AC70
	add r0, r0, #0x100
	ldrh r1, [r0, #0x8a]
	add r1, r1, #1
	strh r1, [r0, #0x8a]
	ldrh r1, [r0, #0x88]
	orr r1, r1, #2
	strh r1, [r0, #0x88]
	bx lr
	arm_func_end ov1_0213AC70

	arm_func_start ov1_0213AC90
ov1_0213AC90: ; 0x0213AC90
	add r0, r0, #0x100
	ldrh r1, [r0, #0x88]
	bic r1, r1, #1
	strh r1, [r0, #0x88]
	bx lr
	arm_func_end ov1_0213AC90

	arm_func_start ov1_0213ACA4
ov1_0213ACA4: ; 0x0213ACA4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x1a0]
	ldr r4, [r6, #0xc4]
	ldr r2, [r0]
	mov r0, #0
	str r2, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldr r2, [r6, #0x1a0]
	add r0, r6, #0x100
	ldr r2, [r2, #4]
	mov r5, r1
	str r2, [r4, #0x34]
	ldr r1, [r6, #0x1a0]
	ldr r1, [r1, #8]
	str r1, [r4, #0x38]
	ldr r2, [r6, #0x1a0]
	ldrh r1, [r0, #0x98]
	ldr r0, [r2, #0xc]
	bl sub_02008828
	strh r0, [r4, #0x2a]
	ldr r1, [r6, #0x1b0]
	mov r0, r4
	ldr ip, [r1, #0x20]
	ldr r3, [r1, #0x24]
	mov r1, r5
	str ip, [r4, #0x18]
	str r3, [r4, #0x1c]
	ldr r2, [r6, #0x194]
	str ip, [sp]
	str r2, [r4, #4]
	ldr r2, [r0]
	str r3, [sp, #4]
	ldr r2, [r2, #8]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_0213ACA4

	arm_func_start ov1_0213AD3C
ov1_0213AD3C: ; 0x0213AD3C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x1a8]
	ldr r4, [r6, #0xc4]
	ldr r2, [r0]
	mov r0, #0
	str r2, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldr r2, [r6, #0x1a8]
	add r0, r6, #0x100
	ldr r2, [r2, #4]
	mov r5, r1
	str r2, [r4, #0x34]
	ldr r1, [r6, #0x1a8]
	ldr r1, [r1, #8]
	str r1, [r4, #0x38]
	ldr r2, [r6, #0x1a8]
	ldrh r1, [r0, #0x9c]
	ldr r0, [r2, #0xc]
	bl sub_02008828
	strh r0, [r4, #0x2a]
	ldr r1, [r6, #0x1b0]
	mov r0, r4
	ldr ip, [r1, #0x20]
	ldr r3, [r1, #0x24]
	mov r1, r5
	str ip, [r4, #0x18]
	str r3, [r4, #0x1c]
	ldr r2, [r6, #0x194]
	str ip, [sp]
	str r2, [r4, #4]
	ldr r2, [r0]
	str r3, [sp, #4]
	ldr r2, [r2, #8]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_0213AD3C

	arm_func_start ov1_0213ADD4
ov1_0213ADD4: ; 0x0213ADD4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r2, r5, #0x100
	ldrh r2, [r2, #0x88]
	mov r4, r1
	tst r2, #0x1000
	beq _0213ADF4
	bl ov1_0213ACA4
	arm_func_end ov1_0213ADD4
_0213ADF4:
	add r0, r5, #0x100
	ldrh r0, [r0, #0x88]
	tst r0, #0x2000
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov1_0213AD3C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0213AE14
ov1_0213AE14: ; 0x0213AE14
	bx lr
	arm_func_end ov1_0213AE14

	arm_func_start ov1_0213AE18
ov1_0213AE18: ; 0x0213AE18
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, r3
	ldr r8, _0213B194 ; =sub_020117AC
	mov r7, r1
	mov r6, r2
	ldr r3, _0213B198 ; =sub_0201179C
	add r0, r4, #0xfc
	mov r1, #8
	mov r2, #0x64
	str r8, [sp]
	bl __cxa_vec_ctor
	ldr r1, _0213B19C ; =sub_020051C8
	add r0, r4, #0x1c
	str r1, [sp]
	ldr r3, _0213B1A0 ; =FUN_02005150
	add r0, r0, #0x400
	mov r1, #8
	mov r2, #0x4c
	bl __cxa_vec_ctor
	add r0, r4, #0x27c
	add r0, r0, #0x400
	bl sub_02005150
	add r0, r4, #0x2c8
	add r0, r0, #0x400
	bl sub_02005150
	add r0, r4, #0x314
	add r0, r0, #0x400
	bl sub_02005150
	add r0, r4, #0x760
	bl sub_02005150
	add r0, r4, #0x3ac
	add r0, r0, #0x400
	bl sub_02005150
	ldr r1, _0213B19C ; =sub_020051C8
	add r0, r4, #0x3f8
	str r1, [sp]
	ldr r3, _0213B1A0 ; =FUN_02005150
	add r0, r0, #0x400
	mov r1, #0x12
	mov r2, #0x4c
	bl __cxa_vec_ctor
	ldr r1, _0213B1A4 ; =FUN_02003BB0
	add r0, r4, #0x164
	str r1, [sp]
	ldr r3, _0213B1A8 ; =FUN_02003B64
	add r0, r0, #0xc00
	mov r1, #8
	mov r2, #0x40
	bl __cxa_vec_ctor
	add r0, r4, #0x364
	add r0, r0, #0xc00
	bl sub_02003B64
	add r0, r4, #0x3a4
	add r0, r0, #0xc00
	bl sub_02003B64
	mov r0, r4
	bl ov1_0213B27C
	str r7, [r4, #0xf0]
	str r6, [r4, #0xf4]
	ldr r1, [sp, #0x28]
	str r5, [r4, #0xf8]
	str r1, [r4, #0xff8]
	mov r0, #0
	str r0, [r4, #8]
	strb r0, [r4, #0xc]
	ldr r1, _0213B1AC ; =0x0000042E
	mov r0, r4
	bl ov1_0213C67C
	mov r2, #0
	mov r1, #0x30000
	arm_func_end ov1_0213AE18
_0213AF38:
	add r0, r4, r2, lsl #6
	str r1, [r0, #0xd84]
	add r2, r2, #1
	str r1, [r0, #0xd88]
	cmp r2, #8
	blt _0213AF38
	str r1, [r4, #0xf84]
	mov r1, #0x20000
	mov r8, #0
	str r1, [r4, #0xf88]
	str r8, [r4, #0xf7c]
	sub r0, r8, #0x48000
	str r0, [r4, #0xf80]
	str r1, [r4, #0xfc4]
	str r1, [r4, #0xfc8]
	mov r0, #0x70000
	str r0, [r4, #0xfbc]
	sub r0, r0, #0xc0000
	str r0, [r4, #0xfc0]
	mov r1, r8
	mov r0, #0x4c
_0213AF8C:
	mla r3, r8, r0, r4
	add r2, r8, #1
	and r8, r2, #0xff
	ldr r7, [r4, #0xfe4]
	cmp r8, #8
	ldmia r7, {r2, r5, r6}
	str r2, [r3, #0x448]
	str r1, [r3, #0x44c]
	str r5, [r3, #0x450]
	str r6, [r3, #0x454]
	blo _0213AF8C
	ldr r0, [r4, #0xfe8]
	mov r5, #0x4c
	ldmia r0, {r0, r2, r3}
	str r0, [r4, #0x6a8]
	str r1, [r4, #0x6ac]
	str r2, [r4, #0x6b0]
	str r3, [r4, #0x6b4]
	ldr r0, [r4, #0xfec]
	mov r6, #0x1c8
	ldmia r0, {r0, r2, r3}
	str r0, [r4, #0x6f4]
	str r1, [r4, #0x6f8]
	str r2, [r4, #0x6fc]
	str r3, [r4, #0x700]
	ldr r0, [r4, #0xfe8]
	ldmia r0, {r0, r2, r3}
	str r0, [r4, #0x740]
	str r1, [r4, #0x744]
	str r2, [r4, #0x748]
	str r3, [r4, #0x74c]
	ldr r0, [r4, #0xff0]
	ldmia r0, {r0, r2, r3}
	str r0, [r4, #0x78c]
	str r1, [r4, #0x790]
	str r2, [r4, #0x794]
	str r3, [r4, #0x798]
	ldr r0, [r4, #0xff4]
	ldmia r0, {r0, r2, r3}
	str r0, [r4, #0x7d8]
	str r1, [r4, #0x7dc]
	str r2, [r4, #0x7e0]
	mov r2, #0
	str r3, [r4, #0x7e4]
	mov r0, r2
_0213B040:
	mla r3, r1, r6, r4
	mov sl, r0
_0213B048:
	mla ip, sl, r5, r3
	ldr sb, [r4, #0xff4]
	add r7, sl, #1
	and sl, r7, #0xff
	ldr r8, [sb, #8]
	ldmia sb, {r7, lr}
	str r7, [ip, #0x824]
	str r2, [ip, #0x828]
	str lr, [ip, #0x82c]
	cmp sl, #6
	str r8, [ip, #0x830]
	blo _0213B048
	add r1, r1, #1
	and r1, r1, #0xff
	cmp r1, #3
	blo _0213B040
	mov r0, #0
	mov r1, #0x4c
_0213B090:
	mla r3, r2, r1, r4
	add r2, r2, #1
	add r3, r3, #0x400
	and r2, r2, #0xff
	strh r0, [r3, #0x46]
	cmp r2, #8
	blo _0213B090
	add r1, r4, #0x600
	strh r0, [r1, #0xa6]
	strh r0, [r1, #0xf2]
	add r1, r4, #0x700
	mov r2, #1
	strh r2, [r1, #0x3e]
	mov r6, #0
	mov r1, #0x4c
	mov r3, #0x1c8
_0213B0D0:
	mla r8, r0, r3, r4
	add r2, r0, #1
	mov r5, r6
	and r7, r2, #0xff
_0213B0E0:
	mla r2, r5, r1, r8
	add r5, r5, #1
	add r2, r2, #0x800
	and r5, r5, #0xff
	strh r7, [r2, #0x22]
	cmp r5, #6
	blo _0213B0E0
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #3
	blo _0213B0D0
	mov r2, #0
	str r2, [r4, #0x694]
	sub r0, r2, #0x48000
	mov r1, #0x70000
	str r0, [r4, #0x698]
	str r1, [r4, #0x6e0]
	sub r0, r1, #0xc0000
	str r0, [r4, #0x6e4]
	sub r0, r1, #0xc4000
	str r2, [r4, #0x72c]
	str r0, [r4, #0x730]
	mov r0, r4
	str r2, [r4, #0x778]
	sub r1, r1, #0xa6000
	str r1, [r4, #0x77c]
	bl ov1_0213CAC8
	mov r1, #0
	mov r3, #0xe
	mov r0, #0x4c
_0213B158:
	mla r2, r1, r0, r4
	add r1, r1, #1
	and r1, r1, #0xff
	str r3, [r2, #0x430]
	cmp r1, #8
	blo _0213B158
	mov r0, #0x1000
	str r0, [r4, #0x7cc]
	str r0, [r4, #0x7d0]
	mov r1, #0
	str r1, [r4]
	mov r0, r4
	str r1, [r4, #4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0213B194: .word sub_020117AC
_0213B198: .word sub_0201179C
_0213B19C: .word sub_020051C8
_0213B1A0: .word sub_02005150
_0213B1A4: .word sub_02003BB0
_0213B1A8: .word sub_02003B64
_0213B1AC: .word 0x0000042E

	arm_func_start ov1_0213B1B0
ov1_0213B1B0: ; 0x0213B1B0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0213B454
	add r0, r4, #0x3a4
	add r0, r0, #0xc00
	bl sub_02003BB0
	add r0, r4, #0x364
	add r0, r0, #0xc00
	bl sub_02003BB0
	add r0, r4, #0x164
	add r0, r0, #0xc00
	mov r1, #8
	mov r2, #0x40
	ldr r3, _0213B270 ; =FUN_02003BB0
	bl __cxa_vec_cleanup
	add r0, r4, #0x3f8
	add r0, r0, #0x400
	mov r1, #0x12
	mov r2, #0x4c
	ldr r3, _0213B274 ; =sub_020051C8
	bl __cxa_vec_cleanup
	add r0, r4, #0x3ac
	add r0, r0, #0x400
	bl sub_020051C8
	add r0, r4, #0x760
	bl sub_020051C8
	add r0, r4, #0x314
	add r0, r0, #0x400
	bl sub_020051C8
	add r0, r4, #0x2c8
	add r0, r0, #0x400
	bl sub_020051C8
	add r0, r4, #0x27c
	add r0, r0, #0x400
	bl sub_020051C8
	add r0, r4, #0x1c
	add r0, r0, #0x400
	mov r1, #8
	mov r2, #0x4c
	ldr r3, _0213B274 ; =sub_020051C8
	bl __cxa_vec_cleanup
	add r0, r4, #0xfc
	mov r1, #8
	mov r2, #0x64
	ldr r3, _0213B278 ; =sub_020117AC
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213B270: .word sub_02003BB0
_0213B274: .word sub_020051C8
_0213B278: .word sub_020117AC
	arm_func_end ov1_0213B1B0

	arm_func_start ov1_0213B27C
ov1_0213B27C: ; 0x0213B27C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0213B2C0
	ldr r2, _0213B3FC ; =s_BAM_i062_NCLR_overlay_1_02141dd8
	ldr r1, _0213B400 ; =s_BAM_i062_00_NCER_overlay_1_02141de8
	str r2, [sp]
	ldr r5, _0213B404 ; =s_BAM_i062_00_cac_overlay_1_02141dfc
	str r1, [sp, #4]
	ldr r1, _0213B408 ; =s_BAM_overlay_1_02141da4
	ldr r2, _0213B40C ; =s_data_interface_i062_LZ_bin_overlay_1_02141da8
	ldr r3, _0213B410 ; =s_BAM_i062_00_NCBR_overlay_1_02141dc4
	str r5, [sp, #8]
	bl sub_0201AAE0
	arm_func_end ov1_0213B27C
_0213B2C0:
	str r0, [r4, #0xfe4]
	ldr r0, [r0, #0xc]
	mov r7, #0
	str r0, [r4, #0xd50]
	mov r6, #1
	mov r5, r7
_0213B2D8:
	ldr r0, [r4, #0xd50]
	mov r1, r6
	mov r2, r5
	bl sub_02008A80
	add r1, r4, r7, lsl #1
	add r2, r7, #1
	add r1, r1, #0xd00
	and r7, r2, #0xff
	strh r0, [r1, #0x54]
	cmp r7, #8
	blo _0213B2D8
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0213B33C
	ldr r1, _0213B414 ; =s_BAM_i060_NCLR_overlay_1_02141e3c
	ldr ip, _0213B418 ; =s_BAM_i060_00_NCER_overlay_1_02141e4c
	str r1, [sp]
	ldr r1, _0213B408 ; =s_BAM_overlay_1_02141da4
	ldr r2, _0213B41C ; =s_data_interface_i060_LZ_bin_overlay_1_02141e0c
	ldr r3, _0213B420 ; =s_BAM_i060_00_NCBR_overlay_1_02141e28
	str ip, [sp, #4]
	mov ip, #0
	str ip, [sp, #8]
	bl sub_0201AAE0
_0213B33C:
	str r0, [r4, #0xfe8]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0213B378
	ldr r1, _0213B424 ; =s_BAM_i061_NCLR_overlay_1_02141e90
	ldr ip, _0213B428 ; =s_BAM_i061_00_NCER_overlay_1_02141ea0
	str r1, [sp]
	ldr r1, _0213B408 ; =s_BAM_overlay_1_02141da4
	ldr r2, _0213B42C ; =s_data_interface_i061_LZ_bin_overlay_1_02141e60
	ldr r3, _0213B430 ; =s_BAM_i061_00_NCBR_overlay_1_02141e7c
	str ip, [sp, #4]
	mov ip, #0
	str ip, [sp, #8]
	bl sub_0201AAE0
_0213B378:
	str r0, [r4, #0xfec]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0213B3B4
	ldr r1, _0213B434 ; =s_BAM_i063_NCLR_overlay_1_02141ee4
	ldr ip, _0213B438 ; =s_BAM_i063_00_NCER_overlay_1_02141ef4
	str r1, [sp]
	ldr r1, _0213B408 ; =s_BAM_overlay_1_02141da4
	ldr r2, _0213B43C ; =s_data_interface_i063_LZ_bin_overlay_1_02141eb4
	ldr r3, _0213B440 ; =s_BAM_i063_00_NCBR_overlay_1_02141ed0
	str ip, [sp, #4]
	mov ip, #0
	str ip, [sp, #8]
	bl sub_0201AAE0
_0213B3B4:
	str r0, [r4, #0xff0]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0213B3F0
	ldr r1, _0213B444 ; =s_BAM_i064_NCLR_overlay_1_02141f38
	ldr ip, _0213B448 ; =s_BAM_i064_00_NCER_overlay_1_02141f48
	str r1, [sp]
	ldr r1, _0213B408 ; =s_BAM_overlay_1_02141da4
	ldr r2, _0213B44C ; =s_data_interface_i064_LZ_bin_overlay_1_02141f08
	ldr r3, _0213B450 ; =s_BAM_i064_00_NCBR_overlay_1_02141f24
	str ip, [sp, #4]
	mov ip, #0
	str ip, [sp, #8]
	bl sub_0201AAE0
_0213B3F0:
	str r0, [r4, #0xff4]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0213B3FC: .word s_BAM_i062_NCLR_overlay_1_02141dd8
_0213B400: .word s_BAM_i062_00_NCER_overlay_1_02141de8
_0213B404: .word s_BAM_i062_00_cac_overlay_1_02141dfc
_0213B408: .word s_BAM_overlay_1_02141da4
_0213B40C: .word s_data_interface_i062_LZ_bin_overlay_1_02141da8
_0213B410: .word s_BAM_i062_00_NCBR_overlay_1_02141dc4
_0213B414: .word s_BAM_i060_NCLR_overlay_1_02141e3c
_0213B418: .word s_BAM_i060_00_NCER_overlay_1_02141e4c
_0213B41C: .word s_data_interface_i060_LZ_bin_overlay_1_02141e0c
_0213B420: .word s_BAM_i060_00_NCBR_overlay_1_02141e28
_0213B424: .word s_BAM_i061_NCLR_overlay_1_02141e90
_0213B428: .word s_BAM_i061_00_NCER_overlay_1_02141ea0
_0213B42C: .word s_data_interface_i061_LZ_bin_overlay_1_02141e60
_0213B430: .word s_BAM_i061_00_NCBR_overlay_1_02141e7c
_0213B434: .word s_BAM_i063_NCLR_overlay_1_02141ee4
_0213B438: .word s_BAM_i063_00_NCER_overlay_1_02141ef4
_0213B43C: .word s_data_interface_i063_LZ_bin_overlay_1_02141eb4
_0213B440: .word s_BAM_i063_00_NCBR_overlay_1_02141ed0
_0213B444: .word s_BAM_i064_NCLR_overlay_1_02141f38
_0213B448: .word s_BAM_i064_00_NCER_overlay_1_02141f48
_0213B44C: .word s_data_interface_i064_LZ_bin_overlay_1_02141f08
_0213B450: .word s_BAM_i064_00_NCBR_overlay_1_02141f24

	arm_func_start ov1_0213B454
ov1_0213B454: ; 0x0213B454
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0xfe4]
	cmp r5, #0
	beq _0213B484
	beq _0213B47C
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov1_0213B454
_0213B47C:
	mov r0, #0
	str r0, [r4, #0xfe4]
_0213B484:
	ldr r5, [r4, #0xfe8]
	cmp r5, #0
	beq _0213B4AC
	beq _0213B4A4
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
_0213B4A4:
	mov r0, #0
	str r0, [r4, #0xfe8]
_0213B4AC:
	ldr r5, [r4, #0xfec]
	cmp r5, #0
	beq _0213B4D4
	beq _0213B4CC
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
_0213B4CC:
	mov r0, #0
	str r0, [r4, #0xfec]
_0213B4D4:
	ldr r5, [r4, #0xff0]
	cmp r5, #0
	beq _0213B4FC
	beq _0213B4F4
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
_0213B4F4:
	mov r0, #0
	str r0, [r4, #0xff0]
_0213B4FC:
	ldr r5, [r4, #0xff4]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0213B51C
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
_0213B51C:
	mov r0, #0
	str r0, [r4, #0xff4]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0213B528
ov1_0213B528: ; 0x0213B528
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov r4, r0
	ldr r2, [r4]
	add r2, r2, #1
	str r2, [r4]
	ldr r2, [r4, #4]
	cmp r2, #9
	addls pc, pc, r2, lsl #2
	b _0213B5BC
_0213B550: ; jump table
	b _0213B5BC ; case 0
	b _0213B578 ; case 1
	b _0213B580 ; case 2
	b _0213B588 ; case 3
	b _0213B590 ; case 4
	b _0213B598 ; case 5
	b _0213B5A0 ; case 6
	b _0213B5A8 ; case 7
	b _0213B5B0 ; case 8
	b _0213B5B8 ; case 9
	arm_func_end ov1_0213B528
_0213B578:
	bl ov1_0213B6B0
	b _0213B5BC
_0213B580:
	bl ov1_0213B6D0
	b _0213B5BC
_0213B588:
	bl ov1_0213B7C0
	b _0213B5BC
_0213B590:
	bl ov1_0213BC04
	b _0213B5BC
_0213B598:
	bl ov1_0213BCEC
	b _0213B5BC
_0213B5A0:
	bl ov1_0213BD0C
	b _0213B5BC
_0213B5A8:
	bl ov1_0213BDC0
	b _0213B5BC
_0213B5B0:
	bl ov1_0213BE30
	b _0213B5BC
_0213B5B8:
	bl ov1_0213BEE0
_0213B5BC:
	mov r7, #0
	add r6, r4, #0xfc
	mov r5, #0x64
_0213B5C8:
	mul r8, r7, r5
	add r0, r6, r8
	bl sub_020117B0
	add r0, r4, r8
	ldr r2, [r0, #0x110]
	ldr r3, [r0, #0x114]
	mov r0, r4
	mov r1, r7
	bl ov1_0213C838
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #8
	blo _0213B5C8
	ldr r0, [r4, #0xd50]
	bl sub_020089EC
	mov r6, #0
	mov r1, #0x90000
	ldr r5, _0213B6AC ; =DAT_overlay_1_021404e8
	rsb r1, r1, #0
	mov fp, r6
	mov r0, #0x4c
	mov r2, #0x1c8
_0213B620:
	mla r8, r6, r2, r4
	ldr sb, [r5, r6, lsl #2]
	mov r7, fp
_0213B62C:
	mla sl, r7, r0, r8
	ldr lr, [sl, #0x810]
	ldr ip, [sl, #0x814]
	sub r3, lr, sb
	str r3, [sp, #0x10]
	cmp r3, r1
	addle r3, r3, #0x120000
	add r7, r7, #1
	strle r3, [sp, #0x10]
	str ip, [sp, #0x14]
	str ip, [sp, #0xc]
	ldr ip, [sp, #0x10]
	ldr r3, [sp, #0x14]
	and r7, r7, #0xff
	str ip, [sl, #0x810]
	str lr, [sp, #8]
	str ip, [sp]
	str r3, [sp, #4]
	str r3, [sl, #0x814]
	cmp r7, #6
	blo _0213B62C
	add r3, r6, #1
	and r6, r3, #0xff
	cmp r6, #3
	blo _0213B620
	mov r0, r4
	bl ov1_0213BF20
	ldr r0, [r4, #0xf8]
	mov r1, #0
	bl ov1_0213E32C
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0213B6AC: .word DAT_overlay_1_021404e8

	arm_func_start ov1_0213B6B0
ov1_0213B6B0: ; 0x0213B6B0
	ldr r1, [r0]
	cmp r1, #8
	bxlo lr
	mov r1, #0
	str r1, [r0]
	mov r1, #2
	str r1, [r0, #4]
	bx lr
	arm_func_end ov1_0213B6B0

	arm_func_start ov1_0213B6D0
ov1_0213B6D0: ; 0x0213B6D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #0x14
	bhi _0213B720
	bhs _0213B774
	cmp r1, #0xc
	bhi _0213B714
	bhs _0213B75C
	cmp r1, #8
	bhi _0213B7A0
	cmp r1, #4
	blo _0213B7A0
	beq _0213B744
	cmp r1, #8
	beq _0213B750
	b _0213B7A0
	arm_func_end ov1_0213B6D0
_0213B714:
	cmp r1, #0x10
	beq _0213B768
	b _0213B7A0
_0213B720:
	cmp r1, #0x1c
	bhi _0213B738
	bhs _0213B78C
	cmp r1, #0x18
	beq _0213B780
	b _0213B7A0
_0213B738:
	cmp r1, #0x20
	beq _0213B798
	b _0213B7A0
_0213B744:
	mov r1, #0
	bl ov1_0213C8E8
	b _0213B7A0
_0213B750:
	mov r1, #1
	bl ov1_0213C8E8
	b _0213B7A0
_0213B75C:
	mov r1, #2
	bl ov1_0213C8E8
	b _0213B7A0
_0213B768:
	mov r1, #3
	bl ov1_0213C8E8
	b _0213B7A0
_0213B774:
	mov r1, #4
	bl ov1_0213C8E8
	b _0213B7A0
_0213B780:
	mov r1, #5
	bl ov1_0213C8E8
	b _0213B7A0
_0213B78C:
	mov r1, #6
	bl ov1_0213C8E8
	b _0213B7A0
_0213B798:
	mov r1, #7
	bl ov1_0213C8E8
_0213B7A0:
	ldr r0, [r4]
	cmp r0, #0x30
	ldmloia sp!, {r4, pc}
	mov r0, #0
	str r0, [r4]
	mov r0, #3
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0213B7C0
ov1_0213B7C0: ; 0x0213B7C0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sl, r0
	mov r4, r1
	bl sub_0201001C
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0213B818
	bl sub_0201001C
	ldr r0, [r0, #0x14]
	ldrh r0, [r0, #2]
	and r0, r0, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0213B818
	mov r0, #1
	str r0, [sl, #0x14]
	mov r0, #0
	str r0, [sl]
	mov r0, #4
	str r0, [sl, #4]
	arm_func_end ov1_0213B7C0
_0213B818:
	ldrh r2, [r4, #0xa]
	ldrh r1, [r4, #0xc]
	ldrb r0, [r4, #4]
	sub r2, r2, #0x80
	sub r1, r1, #0x60
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	mov r4, #0
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [sl, #0xd]
	mov sb, r4
	cmp r0, #0
	bls _0213B9CC
	sub r7, sp, #8
	mov r6, #1
	mov r8, r4
	add fp, sp, #0x10
_0213B870:
	ldr r0, [sl, #0x40]
	ldr r0, [r0, sb, lsl #2]
	cmp r0, #0
	beq _0213B9B8
	add r0, sl, sb, lsl #6
	add r0, r0, #0x17c
	add r0, r0, #0xc00
	str r8, [sp, #8]
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	ldmia r7, {r2, r3}
	ldmia fp, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _0213B9B8
	ldrb r0, [sl, #0xe]
	tst r0, r6, lsl sb
	beq _0213B9B8
	ldr r0, [sl, #8]
	cmp r0, #1
	ldreqb r0, [sl, #0xc]
	cmpeq r0, sb
	moveq r4, r6
	beq _0213B9B8
	mov r0, #1
	str r0, [sl, #8]
	strb sb, [sl, #0xc]
	and r0, sb, #0xff
	ldr r1, [sl, #0x3c]
	mov r0, r0, lsl #1
	ldrh r1, [r1, r0]
	ldr r0, [sl, #0xf0]
	bl sub_020107A8
	mov r5, r0
	ldrb r1, [r5, #4]
	mov r0, sl
	bl ov1_0213CA78
	bl sub_0201001C
	ldrb r1, [sl, #0xc]
	ldr r2, [sl, #0x3c]
	ldr r0, [r0, #0xc]
	mov r1, r1, lsl #1
	ldrh r1, [r2, r1]
	bl ov1_0211F010
	mov r4, r0
	ldrb r1, [r5, #4]
	ldrb r2, [r5, #5]
	ldrb r3, [r5, #6]
	ldr r0, [sl, #0xf8]
	bl ov1_0213ECB4
	mov r1, r4
	mov r4, r0
	str r4, [sl, #0x10]
	ldr r0, [sl, #0xf8]
	bl ov1_0213E8BC
	ldr r0, [sl, #0xf8]
	bl ov1_0213E68C
	cmp r4, #0
	beq _0213B970
	cmp r4, #1
	beq _0213B988
	cmp r4, #2
	beq _0213B9A0
	b _0213B9B4
_0213B970:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xc
	bl sub_02034C44
	b _0213B9B4
_0213B988:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfb
	bl sub_02034C44
	b _0213B9B4
_0213B9A0:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfc
	bl sub_02034C44
_0213B9B4:
	mov r4, #1
_0213B9B8:
	ldrb r0, [sl, #0xd]
	add r1, sb, #1
	and sb, r1, #0xff
	cmp sb, r0
	blo _0213B870
_0213B9CC:
	add r0, sl, #0x37c
	mov r1, #0
	str r1, [sp, #8]
	add r0, r0, #0xc00
	sub r5, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	add r0, sp, #0x10
	ldmia r5, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	ldrne r0, [sl, #8]
	mov r1, #0
	cmpne r0, #0
	movne r0, #1
	strne r0, [sp, #0xc]
	add r0, sl, #0x3bc
	str r1, [sp, #8]
	add r0, r0, #0xc00
	sub r5, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	add r0, sp, #0x10
	ldmia r5, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _0213BA84
	mov r0, #1
	str r0, [sl, #0x14]
	mov r0, #0
	str r0, [sl]
	mov r0, #4
	str r0, [sl, #4]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xc
	bl sub_02034C44
	ldr r0, [sl, #0xf8]
	mov r1, #0
	bl ov1_0213EF40
	ldr r0, [sl, #0xf8]
	bl ov1_0213EDDC
	mov r4, #1
_0213BA84:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0213BB8C
	mov r0, #0
	str r0, [sl, #0x14]
	ldrb r2, [sl, #0xc]
	ldr r1, _0213BBFC ; =DAT_overlay_1_021404d8
	add r3, sl, #0xfc
	mov r0, #0x64
	mla r0, r2, r0, r3
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldrb r1, [sl, #0xc]
	ldr r2, [sl, #0x3c]
	ldr r0, [sl, #0xf0]
	mov r1, r1, lsl #1
	ldrh r1, [r2, r1]
	bl sub_020107A8
	ldrb r1, [r0, #4]
	add r0, sl, #0x700
	strh r1, [r0, #0x8a]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #1
	mov r2, #0x40
	bl sub_0200E0E0
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #1
	mov r2, #0x40
	bl sub_0200E0E0
	ldr r0, [sl, #0xff8]
	bl sub_0201B568
	bl sub_0201001C
	ldr r0, [r0, #0xc]
	ldrb r1, [sl, #0xf]
	cmp r1, #0
	beq _0213BB48
	ldrb r1, [sl, #0xc]
	cmp r1, #0
	bne _0213BB48
	ldr r2, [sl, #0x3c]
	mov r1, r1, lsl #1
	ldrh r1, [r2, r1]
	mov r2, #1
	bl ov1_0211EF74
	b _0213BB60
_0213BB48:
	ldrb r1, [sl, #0xc]
	ldr r3, [sl, #0x3c]
	mov r2, #0
	mov r1, r1, lsl #1
	ldrh r1, [r3, r1]
	bl ov1_0211EF74
_0213BB60:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xc
	bl sub_02034C44
	mov r0, #0
	str r0, [sl]
	mov r0, #5
	add sp, sp, #0x18
	str r0, [sl, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0213BB8C:
	cmp r4, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl, #8]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	str r0, [sl, #8]
	bl sub_0201001C
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x490]
	mov r1, #1
	bl sub_0200A088
	add r0, r4, #0x1000
	ldr r0, [r0, #0x49c]
	ldr r1, _0213BC00 ; =s_sPokeSelect_overlay_1_02141f5c
	bl sub_02034184
	ldr r0, [sl, #0xf8]
	bl ov1_0213EDDC
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xc
	bl sub_02034C44
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0213BBFC: .word DAT_overlay_1_021404d8
_0213BC00: .word s_sPokeSelect_overlay_1_02141f5c

	arm_func_start ov1_0213BC04
ov1_0213BC04: ; 0x0213BC04
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #0x14
	bhi _0213BC54
	bhs _0213BCA8
	cmp r1, #0xc
	bhi _0213BC48
	bhs _0213BC90
	cmp r1, #8
	bhi _0213BCD4
	cmp r1, #4
	blo _0213BCD4
	beq _0213BC78
	cmp r1, #8
	beq _0213BC84
	b _0213BCD4
	arm_func_end ov1_0213BC04
_0213BC48:
	cmp r1, #0x10
	beq _0213BC9C
	b _0213BCD4
_0213BC54:
	cmp r1, #0x1c
	bhi _0213BC6C
	bhs _0213BCC0
	cmp r1, #0x18
	beq _0213BCB4
	b _0213BCD4
_0213BC6C:
	cmp r1, #0x20
	beq _0213BCCC
	b _0213BCD4
_0213BC78:
	mov r1, #0
	bl ov1_0213C9B8
	b _0213BCD4
_0213BC84:
	mov r1, #1
	bl ov1_0213C9B8
	b _0213BCD4
_0213BC90:
	mov r1, #2
	bl ov1_0213C9B8
	b _0213BCD4
_0213BC9C:
	mov r1, #3
	bl ov1_0213C9B8
	b _0213BCD4
_0213BCA8:
	mov r1, #4
	bl ov1_0213C9B8
	b _0213BCD4
_0213BCB4:
	mov r1, #5
	bl ov1_0213C9B8
	b _0213BCD4
_0213BCC0:
	mov r1, #6
	bl ov1_0213C9B8
	b _0213BCD4
_0213BCCC:
	mov r1, #7
	bl ov1_0213C9B8
_0213BCD4:
	ldr r0, [r4]
	cmp r0, #0x30
	ldmloia sp!, {r4, pc}
	mov r0, r4
	bl ov1_0213C60C
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0213BCEC
ov1_0213BCEC: ; 0x0213BCEC
	ldr r1, [r0]
	cmp r1, #0x40
	bxlo lr
	mov r1, #0
	str r1, [r0]
	mov r1, #6
	str r1, [r0, #4]
	bx lr
	arm_func_end ov1_0213BCEC

	arm_func_start ov1_0213BD0C
ov1_0213BD0C: ; 0x0213BD0C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #1
	bne _0213BD90
	add r1, sp, #8
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldrb r1, [r4, #0xc]
	add r2, r4, #0xfc
	mov r0, #0x64
	mla r0, r1, r0, r2
	ldr r1, _0213BDB8 ; =DAT_overlay_1_021404c0
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	mov r1, #0x10
	ldr r0, _0213BDBC ; =DAT_overlay_1_021404b8
	str r1, [sp, #4]
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	sub ip, sp, #4
	str r1, [ip]
	str r0, [ip, #4]
	ldrb r2, [r4, #0xc]
	add r3, r4, #0xfc
	mov r0, #0x64
	mla r0, r2, r0, r3
	add r1, sp, #8
	ldr r3, [ip]
	ldmia r1, {r1, r2}
	bl sub_02011B18
	arm_func_end ov1_0213BD0C
_0213BD90:
	ldr r0, [r4]
	cmp r0, #0x10
	addlo sp, sp, #0x10
	ldmloia sp!, {r4, pc}
	mov r0, #0
	str r0, [r4]
	mov r0, #7
	str r0, [r4, #4]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213BDB8: .word DAT_overlay_1_021404c0
_0213BDBC: .word DAT_overlay_1_021404b8

	arm_func_start ov1_0213BDC0
ov1_0213BDC0: ; 0x0213BDC0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #1
	bne _0213BE10
	bl sub_0201001C
	ldrb r1, [r4, #0xc]
	add r0, r0, #0x1000
	ldr r2, [r4, #0x3c]
	mov r1, r1, lsl #1
	ldrh r1, [r2, r1]
	ldr r0, [r0, #0x434]
	bl sub_020107A8
	ldrh r5, [r0]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, r5
	mov r2, #0x40
	bl sub_02034CF4
	arm_func_end ov1_0213BDC0
_0213BE10:
	ldr r0, [r4]
	cmp r0, #0x30
	ldmloia sp!, {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r4]
	mov r0, #8
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0213BE30
ov1_0213BE30: ; 0x0213BE30
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #1
	bne _0213BEB0
	add r3, sp, #8
	mov r0, #0
	str r0, [r3]
	str r0, [r3, #4]
	ldrb r1, [r4, #0xc]
	add r2, r4, #0xfc
	mov r0, #0x64
	mla r0, r1, r0, r2
	ldmia r3, {r1, r2}
	bl sub_02011D3C
	mov r1, #0x10
	ldr r0, _0213BED8 ; =DAT_overlay_1_021404b8
	str r1, [sp, #4]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	sub ip, sp, #4
	str r1, [ip]
	str r0, [ip, #4]
	ldrb r2, [r4, #0xc]
	add r3, r4, #0xfc
	mov r0, #0x64
	mla r0, r2, r0, r3
	ldr r1, _0213BEDC ; =DAT_overlay_1_021404e0
	ldr r3, [ip]
	ldmia r1, {r1, r2}
	bl sub_02011B18
	arm_func_end ov1_0213BE30
_0213BEB0:
	ldr r0, [r4]
	cmp r0, #0x10
	addlo sp, sp, #0x10
	ldmloia sp!, {r4, pc}
	mov r0, #0
	str r0, [r4]
	mov r0, #9
	str r0, [r4, #4]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213BED8: .word DAT_overlay_1_021404b8
_0213BEDC: .word DAT_overlay_1_021404e0

	arm_func_start ov1_0213BEE0
ov1_0213BEE0: ; 0x0213BEE0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4]
	mov r0, #0x1f
	mov r1, #1
	mov r3, #0x10
	bl sub_02007068
	and r1, r0, #0xff
	mov r0, r4
	bl ov1_0213CBD8
	ldr r0, [r4]
	cmp r0, #0x10
	ldmloia sp!, {r4, pc}
	mov r0, r4
	bl ov1_0213C60C
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213BEE0

	arm_func_start ov1_0213BF20
ov1_0213BF20: ; 0x0213BF20
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	ldrb r0, [r4, #0x19]
	beq _0213BF54
	add r1, r0, #1
	and r0, r1, #0xff
	cmp r0, #0x40
	strb r1, [r4, #0x19]
	movhs r0, #0
	strcsb r0, [r4, #0x18]
	b _0213BF68
	arm_func_end ov1_0213BF20
_0213BF54:
	sub r0, r0, #1
	strb r0, [r4, #0x19]
	tst r0, #0xff
	moveq r0, #1
	streqb r0, [r4, #0x18]
_0213BF68:
	ldrb r2, [r4, #0x19]
	mov r0, #0x1f
	mov r1, #0xc
	mov r3, #0x40
	bl sub_02007068
	and r5, r0, #0xff
	ldrb r2, [r4, #0x19]
	mov r0, #0x1f
	mov r1, #0xc
	mov r3, #0x40
	bl sub_02007068
	and r6, r0, #0xff
	mov r0, #0x1f
	ldrb r2, [r4, #0x19]
	mov r1, r0
	mov r3, #0x40
	bl sub_02007068
	and r1, r0, #0xff
	orr r0, r5, r6, lsl #5
	orr r0, r0, r1, lsl #10
	mov r0, r0, lsl #0x10
	mov r3, #0
	mov r2, r0, lsr #0x10
_0213BFC4:
	add r0, r3, #1
	add r1, r4, r3, lsl #1
	and r3, r0, #0xff
	strh r2, [r1, #0x1a]
	cmp r3, #0x10
	blo _0213BFC4
	add r0, r4, #0x1a
	mov r1, #0x20
	bl DC_FlushRange
	add r0, r4, #0x1a
	mov r1, #0xe0
	mov r2, #0x20
	bl GX_LoadOBJPltt
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_0213BFFC
ov1_0213BFFC: ; 0x0213BFFC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #4]
	mov r4, r1
	cmp r2, #9
	addls pc, pc, r2, lsl #2
	ldmia sp!, {r3, r4, r5, pc}
_0213C018: ; jump table
	ldmia sp!, {r3, r4, r5, pc} ; case 0
	b _0213C040 ; case 1
	b _0213C040 ; case 2
	b _0213C040 ; case 3
	b _0213C040 ; case 4
	b _0213C078 ; case 5
	b _0213C078 ; case 6
	b _0213C078 ; case 7
	b _0213C078 ; case 8
	b _0213C078 ; case 9
	arm_func_end ov1_0213BFFC
_0213C040:
	bl ov1_0213C0F8
	mov r0, r5
	mov r1, r4
	bl ov1_0213C090
	mov r0, r5
	mov r1, r4
	bl ov1_0213C2A0
	ldr r0, [r5, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov1_0213C264
	ldmia sp!, {r3, r4, r5, pc}
_0213C078:
	ldrb r2, [r5, #0xc]
	bl ov1_0213C1A8
	mov r0, r5
	mov r1, r4
	bl ov1_0213C1D8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0213C090
ov1_0213C090: ; 0x0213C090
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	add r0, r7, #0x1c
	mov r6, r1
	mov r5, #0
	add r4, r0, #0x400
	mov r8, #0x4c
	arm_func_end ov1_0213C090
_0213C0AC:
	add r0, r7, r5, lsl #1
	add r0, r0, #0xd00
	ldrh r1, [r0, #0x54]
	ldr r0, [r7, #0xd50]
	bl sub_02008828
	mul r2, r5, r8
	add r1, r7, r2
	add r1, r1, #0x400
	strh r0, [r1, #0x46]
	add r0, r4, r2
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #1
	and r5, r0, #0xff
	cmp r5, #8
	blo _0213C0AC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov1_0213C0F8
ov1_0213C0F8: ; 0x0213C0F8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	bl sub_0201001C
	ldrb r2, [sl, #0xd]
	mov r8, #0
	add r1, r0, #0x24
	cmp r2, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r4, r8
	mov r6, r8
	mov r7, r8
	arm_func_end ov1_0213C0F8
_0213C124:
	ldr r0, [sl, #0x40]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	beq _0213C190
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x44]
	mov r2, r7
	mov r3, r7
	bl sub_0200EB78
	ldrb r2, [sl, #0xc]
	mov r1, r0
	cmp r8, r2
	bne _0213C190
	ldr r0, [sl, #8]
	cmp r0, #0
	beq _0213C190
	mov sb, r6
	add r5, sl, r8, lsl #4
_0213C16C:
	add r0, r5, sb, lsl #2
	ldr r0, [r0, #0x64]
	mov r2, r4
	mov r3, r4
	bl sub_0200EB78
	add sb, sb, #1
	mov r1, r0
	cmp sb, #4
	blt _0213C16C
_0213C190:
	ldrb r0, [sl, #0xd]
	add r2, r8, #1
	and r8, r2, #0xff
	cmp r8, r0
	blo _0213C124
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start ov1_0213C1A8
ov1_0213C1A8: ; 0x0213C1A8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl sub_0201001C
	mov r1, r0
	add r0, r5, r4, lsl #2
	mov r2, #0
	ldr r0, [r0, #0x44]
	mov r3, r2
	add r1, r1, #0x24
	bl sub_0200EB78
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_0213C1A8

	arm_func_start ov1_0213C1D8
ov1_0213C1D8: ; 0x0213C1D8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov fp, r0
	add r0, fp, #0x3f8
	mov sl, r1
	mov r7, #0
	add r6, r0, #0x400
	mov r4, #0x4c
	mov r5, #0x1c8
	arm_func_end ov1_0213C1D8
_0213C1F8:
	mla sb, r7, r5, r6
	mov r8, #0
_0213C200:
	mla r0, r8, r4, sb
	ldr r2, [r0]
	mov r1, sl
	ldr r2, [r2, #8]
	blx r2
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #6
	blo _0213C200
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #3
	blo _0213C1F8
	add r0, fp, #0x760
	ldr r2, [r0]
	mov r1, sl
	ldr r2, [r2, #8]
	blx r2
	add r0, fp, #0x3ac
	add r0, r0, #0x400
	ldr r2, [r0]
	mov r1, sl
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_0213C264
ov1_0213C264: ; 0x0213C264
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x27c
	add r0, r0, #0x400
	ldr r2, [r0]
	mov r4, r1
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x314
	add r0, r0, #0x400
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_0213C264

	arm_func_start ov1_0213C2A0
ov1_0213C2A0: ; 0x0213C2A0
	stmdb sp!, {r3, lr}
	add r0, r0, #0x2c8
	add r0, r0, #0x400
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0213C2A0

	arm_func_start ov1_0213C2BC
ov1_0213C2BC: ; 0x0213C2BC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov r4, #0x4000000
	ldr r6, [r4]
	ldr r5, _0213C5D8 ; =0x00300010
	mov sl, r0
	and r0, r6, r5
	str r0, [sl, #0xec]
	ldr r5, [r4]
	ldr r0, _0213C5DC ; =0xFFCFFFEF
	mov r8, #0
	and r0, r5, r0
	orr r0, r0, #0x10
	str r0, [r4]
	ldr r5, [r4]
	ldr r0, [r4]
	and r5, r5, #0x1f00
	mov r6, r5, lsr #8
	bic r5, r0, #0x1f00
	orr r0, r6, #0x10
	orr r0, r5, r0, lsl #8
	str r0, [r4]
	str r2, [sl, #0x40]
	str r3, [sl, #0x3c]
	strb r1, [sl, #0xd]
	mov r6, r8
	mov r4, #7
	mov fp, r8
	mov r7, r8
	arm_func_end ov1_0213C2BC
_0213C330:
	ldr r0, [sl, #0x40]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	beq _0213C398
	mov r1, fp
	mov r2, fp
	mov r3, fp
	str fp, [sp]
	bl sub_0200F4FC
	add r1, sl, r8, lsl #2
	mov sb, r7
	str r0, [r1, #0x44]
	add r5, sl, r8, lsl #4
_0213C364:
	str r6, [sp]
	ldr r0, [sl, #0x40]
	mov r1, r6
	ldr r0, [r0, r8, lsl #2]
	mov r2, r6
	mov r3, r6
	bl sub_0200F4FC
	add r1, r5, sb, lsl #2
	add sb, sb, #1
	str r0, [r1, #0x64]
	strh r4, [r0, #0x1a]
	cmp sb, #4
	blt _0213C364
_0213C398:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #8
	blo _0213C330
	ldr r0, _0213C5E0 ; =DAT_overlay_1_021404b8
	add r6, sp, #0x14
	ldmia r0, {r7, sb}
	str r7, [sp, #4]
	str sb, [sp, #8]
	str r7, [sp, #0x14]
	str sb, [sp, #0x18]
	str r7, [sp, #0xc]
	str sb, [sp, #0x10]
	mov r8, #0
	add r5, sl, #0xfc
	mov fp, #0x4c
	mov r4, #0x64
_0213C3DC:
	mla r1, r8, fp, sl
	str r7, [r1, #0x434]
	mla r0, r8, r4, r5
	str sb, [r1, #0x438]
	ldmia r6, {r1, r2}
	bl sub_02011D3C
	mov r0, sl
	mov r1, r8
	mov r2, r7
	mov r3, sb
	bl ov1_0213C838
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #8
	blo _0213C3DC
	mov r1, #0
	str r1, [sl, #8]
	strb r1, [sl, #0xc]
	mov r1, #1
	mov r0, sl
	str r1, [sl, #0x14]
	bl ov1_0213CAC8
	mov r0, sl
	mov r1, #0x1f
	bl ov1_0213CBD8
	ldrb r2, [sp, #0x40]
	ldr r0, [sp, #0x44]
	ldr r3, _0213C5E4 ; =0x0000294A
	strb r2, [sl, #0xe]
	strb r0, [sl, #0xf]
	mov r0, #0
	ldr r5, _0213C5E8 ; =0x00007FFF
	mov r1, sl
	mov r7, #1
	mov r6, r0
_0213C468:
	ldr r2, [sl, #0x40]
	ldr r2, [r2, r0, lsl #2]
	cmp r2, #0
	beq _0213C4A8
	ldrb r2, [sl, #0xe]
	tst r2, r7, lsl r0
	add r2, sl, r0, lsl #2
	ldr r4, [r2, #0x44]
	beq _0213C49C
	add r2, r1, #0x400
	strb r6, [r4, #0x28]
	strh r5, [r2, #0x24]
	b _0213C4A8
_0213C49C:
	add r2, r1, #0x400
	strb r7, [r4, #0x28]
	strh r3, [r2, #0x24]
_0213C4A8:
	add r0, r0, #1
	cmp r0, #8
	add r1, r1, #0x4c
	blt _0213C468
	mov sb, #0
	mov r5, #1
	mov r4, #2
	mov r6, sb
	mov r7, sb
	mov r8, r5
_0213C4D0:
	ldrb r0, [sl, #0xe]
	tst r0, r8, lsl sb
	bne _0213C4F8
	add r0, sl, sb, lsl #1
	add r0, r0, #0xd00
	ldrh r1, [r0, #0x54]
	ldr r0, [sl, #0xd50]
	mov r2, r7
	bl sub_02008990
	b _0213C584
_0213C4F8:
	ldr r1, [sl, #0x3c]
	mov r0, sb, lsl #1
	ldrh r1, [r1, r0]
	ldr r0, [sl, #0xf0]
	bl sub_020107A8
	ldrb r1, [r0, #4]
	ldr r0, [sl, #0xf8]
	bl ov1_0213EC40
	cmp r0, #0
	beq _0213C534
	cmp r0, #1
	beq _0213C550
	cmp r0, #2
	beq _0213C56C
	b _0213C584
_0213C534:
	add r0, sl, sb, lsl #1
	add r0, r0, #0xd00
	ldrh r1, [r0, #0x54]
	ldr r0, [sl, #0xd50]
	mov r2, r6
	bl sub_02008990
	b _0213C584
_0213C550:
	add r0, sl, sb, lsl #1
	add r0, r0, #0xd00
	ldrh r1, [r0, #0x54]
	ldr r0, [sl, #0xd50]
	mov r2, r5
	bl sub_02008990
	b _0213C584
_0213C56C:
	add r0, sl, sb, lsl #1
	add r0, r0, #0xd00
	ldrh r1, [r0, #0x54]
	ldr r0, [sl, #0xd50]
	mov r2, r4
	bl sub_02008990
_0213C584:
	add r0, sb, #1
	and sb, r0, #0xff
	cmp sb, #8
	blo _0213C4D0
	ldr r0, _0213C5EC ; =0x04000050
	mov r1, #0
	mov r2, #1
	mov r3, #8
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x49c]
	ldr r1, _0213C5F0 ; =s_sPokeSelect_overlay_1_02141f5c
	bl sub_02034184
	mov r0, #0
	str r0, [sl]
	mov r0, #1
	str r0, [sl, #4]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0213C5D8: .word 0x00300010
_0213C5DC: .word 0xFFCFFFEF
_0213C5E0: .word DAT_overlay_1_021404b8
_0213C5E4: .word 0x0000294A
_0213C5E8: .word 0x00007FFF
_0213C5EC: .word 0x04000050
_0213C5F0: .word s_sPokeSelect_overlay_1_02141f5c

	arm_func_start ov1_0213C5F4
ov1_0213C5F4: ; 0x0213C5F4
	ldr r0, [r0, #0x14]
	bx lr
	arm_func_end ov1_0213C5F4

	arm_func_start ov1_0213C5FC
ov1_0213C5FC: ; 0x0213C5FC
	ldrb r0, [r0, #0xc]
	bx lr
	arm_func_end ov1_0213C5FC

	arm_func_start ov1_0213C604
ov1_0213C604: ; 0x0213C604
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end ov1_0213C604

	arm_func_start ov1_0213C60C
ov1_0213C60C: ; 0x0213C60C
	stmdb sp!, {r3, r4, r5, lr}
	mov r2, #0x4000000
	mov r4, r0
	ldr r1, [r2]
	ldr r0, _0213C678 ; =0xFFCFFFEF
	ldr r3, [r4, #0xec]
	and r0, r1, r0
	orr r0, r0, r3
	str r0, [r2]
	ldr r0, [r2]
	mov r5, #0
	bic r0, r0, #0x1f00
	orr r0, r0, #0x100
	str r0, [r2]
	arm_func_end ov1_0213C60C
_0213C644:
	ldr r0, [r4, #0x40]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	beq _0213C658
	bl sub_0200F6C4
_0213C658:
	add r0, r5, #1
	and r5, r0, #0xff
	cmp r5, #8
	blo _0213C644
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0213C678: .word 0xFFCFFFEF

	arm_func_start ov1_0213C67C
ov1_0213C67C: ; 0x0213C67C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r0
	add r0, r5, #0x1c
	mov r4, r1
	mov r7, #0
	add r6, r0, #0x400
	mov sb, #0x4c
	arm_func_end ov1_0213C67C
_0213C698:
	mul r2, r7, sb
	add r8, r5, r2
	add r0, r8, #0x400
	ldrh r1, [r0, #0x46]
	add r0, r6, r2
	bl sub_02005FDC
	add r1, r0, #1
	add r0, r7, #1
	add r4, r4, r1
	and r7, r0, #0xff
	str r4, [r8, #0x420]
	cmp r7, #8
	blo _0213C698
	add r0, r5, #0x600
	ldrh r1, [r0, #0xa6]
	add r0, r5, #0x27c
	add r0, r0, #0x400
	bl sub_02005FDC
	add r0, r0, #1
	add r4, r4, r0
	add r0, r5, #0x2c8
	str r4, [r5, #0x680]
	add r1, r5, #0x600
	ldrh r1, [r1, #0xf2]
	add r0, r0, #0x400
	bl sub_02005FDC
	add r0, r0, #1
	add r4, r4, r0
	add r0, r5, #0x314
	str r4, [r5, #0x6cc]
	add r1, r5, #0x700
	ldrh r1, [r1, #0x3e]
	add r0, r0, #0x400
	bl sub_02005FDC
	add r0, r0, #1
	add r4, r4, r0
	str r4, [r5, #0x718]
	add r0, r5, #0x700
	ldrh r1, [r0, #0x8a]
	add r0, r5, #0x760
	bl sub_02005FDC
	add r0, r0, #1
	add r4, r4, r0
	add r0, r5, #0x3ac
	str r4, [r5, #0x764]
	add r1, r5, #0x700
	ldrh r1, [r1, #0xd6]
	add r0, r0, #0x400
	bl sub_02005FDC
	add r0, r0, #1
	add r4, r4, r0
	add r0, r5, #0x388
	str r4, [r5, #0x7b0]
	mov r7, #0
	add r6, r0, #0x800
	mov sb, #0x4c
_0213C778:
	mul r2, r7, sb
	add r8, r5, r2
	add r0, r8, #0xb00
	ldrh r1, [r0, #0xb2]
	add r0, r6, r2
	bl sub_02005FDC
	add r1, r0, #1
	add r0, r7, #1
	add r4, r4, r1
	and r7, r0, #0xff
	str r4, [r8, #0xb8c]
	cmp r7, #6
	blo _0213C778
	mov r7, #0
	add r6, r5, #0x9c0
	mov sb, #0x4c
_0213C7B8:
	mul r2, r7, sb
	add r8, r5, r2
	add r0, r8, #0x900
	ldrh r1, [r0, #0xea]
	add r0, r6, r2
	bl sub_02005FDC
	add r1, r0, #1
	add r0, r7, #1
	add r4, r4, r1
	and r7, r0, #0xff
	str r4, [r8, #0x9c4]
	cmp r7, #6
	blo _0213C7B8
	add r0, r5, #0x3f8
	mov r7, #0
	add r6, r0, #0x400
	mov sb, #0x4c
_0213C7FC:
	mul r2, r7, sb
	add r8, r5, r2
	add r0, r8, #0x800
	ldrh r1, [r0, #0x22]
	add r0, r6, r2
	bl sub_02005FDC
	add r1, r0, #1
	add r0, r7, #1
	add r4, r4, r1
	and r7, r0, #0xff
	str r4, [r8, #0x7fc]
	cmp r7, #6
	blo _0213C7FC
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov1_0213C838
ov1_0213C838: ; 0x0213C838
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r0, #0x4c
	mla r0, r6, r0, r7
	str r2, [r0, #0x434]
	str r3, [r0, #0x438]
	add r0, r7, r6, lsl #6
	str r2, [r0, #0xd7c]
	str r3, [r0, #0xd80]
	ldr r0, [r7, #0x40]
	ldr r0, [r0, r6, lsl #2]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, r2, asr #0xc
	mov r1, r3, asr #0xc
	add r0, r7, r6, lsl #2
	add r4, r2, #0x80
	add r5, r1, #0x60
	ldr r0, [r0, #0x44]
	mov r1, r4
	mov r2, r5
	bl sub_0200EB28
	add r0, r7, r6, lsl #4
	ldr r0, [r0, #0x64]
	mov r1, r4
	sub r2, r5, #2
	bl sub_0200EB28
	add r0, r7, r6, lsl #4
	ldr r0, [r0, #0x68]
	mov r1, r4
	add r2, r5, #2
	bl sub_0200EB28
	add r0, r7, r6, lsl #4
	ldr r0, [r0, #0x6c]
	sub r1, r4, #2
	mov r2, r5
	bl sub_0200EB28
	add r0, r7, r6, lsl #4
	ldr r0, [r0, #0x70]
	add r1, r4, #2
	mov r2, r5
	bl sub_0200EB28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov1_0213C838

	arm_func_start ov1_0213C8E8
ov1_0213C8E8: ; 0x0213C8E8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r7, r0
	ldrb r2, [r7, #0xd]
	mov r6, r1
	cmp r6, r2
	addhs sp, sp, #0x18
	ldmhsia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x64
	mul r4, r6, r0
	ldr r0, _0213C9B0 ; =DAT_overlay_1_021404f4
	add r5, r7, #0xfc
	add r0, r0, r2, lsl #6
	ldr r1, [r0, r6, lsl #3]
	add r0, r5, r4
	add r1, r1, #0x100000
	bl sub_02011D1C
	ldrb r2, [r7, #0xd]
	ldr r1, _0213C9B4 ; =DAT_overlay_1_021404f8
	add r0, r5, r4
	add r1, r1, r2, lsl #6
	ldr r1, [r1, r6, lsl #3]
	bl sub_02011D2C
	ldrb r2, [r7, #0xd]
	ldr r0, _0213C9B0 ; =DAT_overlay_1_021404f4
	mov r1, #0x10
	add r0, r0, r2, lsl #6
	ldr r7, [r0, r6, lsl #3]
	add r0, r0, r6, lsl #3
	ldr r6, [r0, #4]
	add r2, r7, #0x20000
	str r1, [sp, #4]
	sub r1, sp, #4
	stmia r1, {r2, r6}
	ldr r3, [r1]
	add r0, r5, r4
	add r1, sp, #8
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	str r2, [sp, #0x10]
	str r6, [sp, #0x14]
	ldmia r1, {r1, r2}
	bl sub_02011B18
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xc
	bl sub_02034C44
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0213C9B0: .word DAT_overlay_1_021404f4
_0213C9B4: .word DAT_overlay_1_021404f8
	arm_func_end ov1_0213C8E8

	arm_func_start ov1_0213C9B8
ov1_0213C9B8: ; 0x0213C9B8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r7, r0
	ldrb r2, [r7, #0xd]
	mov r6, r1
	cmp r6, r2
	addhs sp, sp, #0x20
	ldmhsia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x64
	mul r4, r6, r0
	ldr r0, _0213CA74 ; =DAT_overlay_1_021404f4
	add r5, r7, #0xfc
	add r0, r0, r2, lsl #6
	add r1, r0, r6, lsl #3
	add r0, r5, r4
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldrb r2, [r7, #0xd]
	ldr r1, _0213CA74 ; =DAT_overlay_1_021404f4
	mov r0, #0x10
	add r1, r1, r2, lsl #6
	ldr ip, [r1, r6, lsl #3]
	add r1, r1, r6, lsl #3
	ldr r7, [r1, #4]
	add r1, ip, #0x20000
	str r0, [sp, #4]
	sub r0, sp, #4
	stmia r0, {r1, r7}
	ldr r3, [r0]
	sub r2, ip, #0x100000
	add r6, sp, #0x18
	str r7, [sp, #0x1c]
	add r0, r5, r4
	str r2, [sp, #0x18]
	str r1, [sp, #0x10]
	str ip, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x14]
	ldmia r6, {r1, r2}
	bl sub_02011B18
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xc
	bl sub_02034C44
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0213CA74: .word DAT_overlay_1_021404f4
	arm_func_end ov1_0213C9B8

	arm_func_start ov1_0213CA78
ov1_0213CA78: ; 0x0213CA78
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r2, r1
	ldr r1, _0213CAC4 ; =s_sAssist_03d_overlay_1_02141f68
	add r0, sp, #0
	and r2, r2, #0xff
	bl OS_SPrintf
	bl sub_0201001C
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x490]
	mov r1, #1
	bl sub_0200A088
	add r0, r4, #0x1000
	ldr r0, [r0, #0x49c]
	add r1, sp, #0
	bl sub_02034184
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213CAC4: .word s_sAssist_03d_overlay_1_02141f68
	arm_func_end ov1_0213CA78

	arm_func_start ov1_0213CAC8
ov1_0213CAC8: ; 0x0213CAC8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	str r0, [sp]
	bl sub_0201001C
	mov r1, #0
	str r1, [sp, #8]
	arm_func_end ov1_0213CAC8
_0213CAE0:
	ldr r2, [sp, #8]
	ldr r1, [sp]
	mov r3, #0x1c8
	mla r1, r2, r3, r1
	str r1, [sp, #4]
	add r1, r0, #0x48
	add sl, r1, #0x1400
	mov sb, #0
_0213CB00:
	ldr r2, [sl]
	ldmib sl, {r1, r3}
	umull r5, r4, r3, r2
	mla r4, r3, r1, r4
	ldr r1, [sl, #0xc]
	ldr r3, [sl, #0x10]
	mla r4, r1, r2, r4
	mov r1, #0
	ldr r2, [sl, #0x14]
	adds r3, r3, r5
	adc r8, r2, r4
	stmia sl, {r3, r8}
	mov r1, r1, lsl #8
	orr r1, r1, r8, lsr #24
	sub r1, r1, #0x80
	mov r7, r1, lsl #0xc
	mov r1, #0
	mov r2, r1, lsl #6
	ldr r6, [sl]
	ldr r3, [sl, #8]
	ldr r1, [sp, #4]
	mov ip, #0x4c
	mla r1, sb, ip, r1
	umull lr, ip, r3, r6
	ldr r5, [sl, #0x10]
	add sb, sb, #1
	mla ip, r3, r8, ip
	ldr fp, [sl, #0xc]
	ldr r4, [sl, #0x14]
	adds r5, r5, lr
	mla ip, fp, r6, ip
	adc r3, r4, ip
	str r5, [sl]
	orr r2, r2, r3, lsr #26
	str r3, [sl, #4]
	sub r2, r2, #0x20
	mov r2, r2, lsl #0xc
	and sb, sb, #0xff
	str r7, [r1, #0x810]
	str r7, [sp, #0x14]
	str r7, [sp, #0xc]
	str r2, [r1, #0x814]
	str r2, [sp, #0x18]
	str r2, [sp, #0x10]
	cmp sb, #6
	blo _0213CB00
	ldr r1, [sp, #8]
	add r1, r1, #1
	and r1, r1, #0xff
	str r1, [sp, #8]
	cmp r1, #3
	blo _0213CAE0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov1_0213CBD8
ov1_0213CBD8: ; 0x0213CBD8
	stmdb sp!, {r4, r5, r6, lr}
	str r1, [r0, #0x774]
	mov r5, #0
	str r1, [r0, #0x7c0]
	mov r4, r5
	mov r2, #0x4c
	mov r3, #0x1c8
	arm_func_end ov1_0213CBD8
_0213CBF4:
	mla r6, r5, r3, r0
	mov ip, r4
_0213CBFC:
	mla lr, ip, r2, r6
	add ip, ip, #1
	and ip, ip, #0xff
	str r1, [lr, #0x80c]
	cmp ip, #6
	blo _0213CBFC
	add ip, r5, #1
	and r5, ip, #0xff
	cmp r5, #3
	blo _0213CBF4
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_0213CC28
ov1_0213CC28: ; 0x0213CC28
	stmdb sp!, {r4, lr}
	ldr r2, _0213CD28 ; =OVERLAY1_BSS_02142200
	mov r4, r0
	str r4, [r2]
	str r1, [r4]
	mov r0, #0x12
	str r0, [r4, #4]
	str r0, [r4, #8]
	mov r2, #0
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xd]
	strb r2, [r4, #0xe]
	strb r2, [r4, #0xf]
	strh r2, [r4, #0x2c]
	strh r2, [r4, #0x2e]
	strb r2, [r4, #0x90]
	str r2, [r4, #0x9c]
	strh r2, [r4, #0x28]
	strh r2, [r4, #0x2a]
	mov r0, #0xdc
	strh r0, [r4, #0x20]
	strh r2, [r4, #0x22]
	strh r2, [r4, #0x24]
	strh r2, [r4, #0x26]
	mov r1, #0x12
	arm_func_end ov1_0213CC28
_0213CC8C:
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #0x91]
	cmp r2, #8
	blt _0213CC8C
	mov r1, #0
	str r1, [r4, #0x154]
	str r1, [r4, #0x164]
	str r1, [r4, #0x168]
	str r1, [r4, #0x158]
	str r1, [r4, #0x15c]
	strb r1, [r4, #0xd8]
	mov r0, #1
	strb r0, [r4, #0xd9]
	strb r1, [r4, #0xda]
	mov r0, r4
	str r1, [r4, #0x150]
	bl ov1_0213DE88
	mov r0, r4
	bl ov1_0213D018
	mov r0, r4
	bl ov1_0213DF20
	mov r0, r4
	bl ov1_0213E29C
	mov r0, r4
	mov r1, #1
	bl ov1_0213E7C4
	mov r0, r4
	mov r1, #0
	bl ov1_0213EF14
	mov r2, #0
	mov r1, r2
_0213CD0C:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x70]
	cmp r2, #8
	blt _0213CD0C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213CD28: .word OVERLAY1_BSS_02142200

	arm_func_start ov1_0213CD2C
ov1_0213CD2C: ; 0x0213CD2C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0213CD40
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213CD2C

	arm_func_start ov1_0213CD40
ov1_0213CD40: ; 0x0213CD40
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r4, [r5, #0x164]
	cmp r4, #0
	beq _0213CD70
	beq _0213CD68
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov1_0213CD40
_0213CD68:
	mov r0, #0
	str r0, [r5, #0x164]
_0213CD70:
	ldr r4, [r5, #0x168]
	cmp r4, #0
	beq _0213CD98
	beq _0213CD90
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0213CD90:
	mov r0, #0
	str r0, [r5, #0x168]
_0213CD98:
	ldr r0, [r5, #0x150]
	cmp r0, #0
	beq _0213CDBC
	beq _0213CDB4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0213CDB4:
	mov r0, #0
	str r0, [r5, #0x150]
_0213CDBC:
	ldr r4, [r5, #0x154]
	cmp r4, #0
	beq _0213CDE4
	beq _0213CDDC
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0213CDDC:
	mov r0, #0
	str r0, [r5, #0x154]
_0213CDE4:
	ldr r4, [r5, #0x158]
	cmp r4, #0
	beq _0213CE0C
	beq _0213CE04
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0213CE04:
	mov r0, #0
	str r0, [r5, #0x158]
_0213CE0C:
	ldr r4, [r5, #0x15c]
	cmp r4, #0
	beq _0213CE34
	beq _0213CE2C
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0213CE2C:
	mov r0, #0
	str r0, [r5, #0x15c]
_0213CE34:
	ldr r4, [r5, #0x160]
	cmp r4, #0
	beq _0213CE5C
	beq _0213CE54
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0213CE54:
	mov r0, #0
	str r0, [r5, #0x160]
_0213CE5C:
	ldr r1, [r5, #0x16c]
	cmp r1, #0
	beq _0213CEEC
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0213CEB8
	mov r6, r4
_0213CE7C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0213CEA4
	bl _ZdaPv
	ldr r0, [r5, #0x16c]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0213CEA4:
	ldr r1, [r5, #0x16c]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0213CE7C
_0213CEB8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0213CED4
	bl _ZdaPv
	ldr r0, [r5, #0x16c]
	mov r1, #0
	str r1, [r0, #8]
_0213CED4:
	ldr r0, [r5, #0x16c]
	cmp r0, #0
	beq _0213CEEC
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x16c]
_0213CEEC:
	ldr r1, [r5, #0x170]
	cmp r1, #0
	beq _0213CF7C
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0213CF48
	mov r6, r4
_0213CF0C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0213CF34
	bl _ZdaPv
	ldr r0, [r5, #0x170]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0213CF34:
	ldr r1, [r5, #0x170]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0213CF0C
_0213CF48:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0213CF64
	bl _ZdaPv
	ldr r0, [r5, #0x170]
	mov r1, #0
	str r1, [r0, #8]
_0213CF64:
	ldr r0, [r5, #0x170]
	cmp r0, #0
	beq _0213CF7C
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x170]
_0213CF7C:
	ldr r1, [r5, #0x174]
	cmp r1, #0
	beq _0213D00C
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0213CFD8
	mov r6, r4
_0213CF9C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0213CFC4
	bl _ZdaPv
	ldr r0, [r5, #0x174]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0213CFC4:
	ldr r1, [r5, #0x174]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0213CF9C
_0213CFD8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0213CFF4
	bl _ZdaPv
	ldr r0, [r5, #0x174]
	mov r1, #0
	str r1, [r0, #8]
_0213CFF4:
	ldr r0, [r5, #0x174]
	cmp r0, #0
	beq _0213D00C
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x174]
_0213D00C:
	mov r0, #0
	bl GXS_SetGraphicsMode
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_0213D018
ov1_0213D018: ; 0x0213D018
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	ldr r0, [r0, #0xc24]
	bl sub_020027E8
	ldr r0, [r4]
	ldr r0, [r0, #0xc28]
	bl sub_020027E8
	mov r0, r4
	mov r1, #0x12
	bl ov1_0213D058
	mov r0, r4
	bl ov1_0213DA14
	mov r0, r4
	bl ov1_0213D614
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213D018

	arm_func_start ov1_0213D058
ov1_0213D058: ; 0x0213D058
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x70
	mov r4, r0
	mov r0, #0x6c
	mov r7, r1
	bl _Znwm
	movs r5, r0
	beq _0213D0A0
	mov r3, #1
	str r3, [sp]
	mov r5, #0
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r1, _0213D32C ; =s_BGU_overlay_1_02141f74
	ldr r2, _0213D330 ; =s_data_menu_pam001_bg_LZ_bin_overlay_1_02141f78
	str r5, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
	arm_func_end ov1_0213D058
_0213D0A0:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _0213D0C8
	ldr r1, _0213D334 ; =s_BGU_pam001_NCGR_overlay_1_02141f94
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
	mov r6, r0
_0213D0C8:
	ldr r1, _0213D338 ; =s_BGU_pam_03d_NCLR_overlay_1_02141fa4
	add r0, sp, #0x10
	mov r2, r7
	bl OS_SPrintf
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0213D0FC
	mov r3, #0
	add r1, sp, #0x10
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
_0213D0FC:
	str r0, [r4, #0x150]
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _0213D128
	ldr r1, _0213D33C ; =s_BGU_pam001_00_NSCR_overlay_1_02141fb8
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r7, r0
_0213D128:
	ldr r8, _0213D340 ; =0x0400100E
	mov r2, #0
	ldrh r3, [r8]
	mov r1, #0xf
	mov r0, #7
	and r3, r3, #0x43
	orr r3, r3, #0x4000
	strh r3, [r8]
	str r2, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r3, [r4, #0x150]
	ldr r1, [r7, #0xb8]
	ldr r2, [r6, #0xb8]
	ldr r3, [r3, #0xb8]
	bl NNS_G2dBGSetupEx
	cmp r7, #0
	beq _0213D184
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0213D184:
	cmp r6, #0
	beq _0213D19C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0213D19C:
	cmp r5, #0
	beq _0213D1B4
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
_0213D1B4:
	mov r0, #0x6c
	bl _Znwm
	movs r5, r0
	beq _0213D1EC
	mov r3, #1
	str r3, [sp]
	mov r5, #0
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r1, _0213D32C ; =s_BGU_overlay_1_02141f74
	ldr r2, _0213D344 ; =s_data_menu_pam000_bg_LZ_bin_overlay_1_02141fcc
	str r5, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
_0213D1EC:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _0213D214
	ldr r1, _0213D348 ; =s_BGU_pam000_NCGR_overlay_1_02141fe8
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
	mov r6, r0
_0213D214:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _0213D23C
	ldr r1, _0213D34C ; =s_BGU_pam000_01_NSCR_overlay_1_02141ff8
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r7, r0
_0213D23C:
	mov r0, #0xbc
	bl _Znwm
	movs r8, r0
	beq _0213D264
	ldr r1, _0213D350 ; =s_BGU_pam000_02_NSCR_overlay_1_0214200c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r8, r0
_0213D264:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [r7, #0xb8]
	ldr r2, [r6, #0xb8]
	mov r0, #5
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [r8, #0xb8]
	mov r3, r2
	mov r0, #6
	bl NNS_G2dBGSetupEx
	cmp r7, #0
	beq _0213D2D4
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0213D2D4:
	cmp r8, #0
	beq _0213D2EC
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0213D2EC:
	cmp r6, #0
	beq _0213D304
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0213D304:
	cmp r5, #0
	beq _0213D31C
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
_0213D31C:
	mov r0, r4
	bl ov1_0213E4CC
	add sp, sp, #0x70
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0213D32C: .word s_BGU_overlay_1_02141f74
_0213D330: .word s_data_menu_pam001_bg_LZ_bin_overlay_1_02141f78
_0213D334: .word s_BGU_pam001_NCGR_overlay_1_02141f94
_0213D338: .word s_BGU_pam_03d_NCLR_overlay_1_02141fa4
_0213D33C: .word s_BGU_pam001_00_NSCR_overlay_1_02141fb8
_0213D340: .word 0x0400100E
_0213D344: .word s_data_menu_pam000_bg_LZ_bin_overlay_1_02141fcc
_0213D348: .word s_BGU_pam000_NCGR_overlay_1_02141fe8
_0213D34C: .word s_BGU_pam000_01_NSCR_overlay_1_02141ff8
_0213D350: .word s_BGU_pam000_02_NSCR_overlay_1_0214200c

	arm_func_start ov1_0213D354
ov1_0213D354: ; 0x0213D354
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x70
	mov r4, r0
	ldr r0, [r4, #0x150]
	mov r6, r1
	cmp r0, #0
	beq _0213D388
	beq _0213D380
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov1_0213D354
_0213D380:
	mov r0, #0
	str r0, [r4, #0x150]
_0213D388:
	mov r1, #0
	mov r0, #0x6c
	str r1, [r4, #0x150]
	bl _Znwm
	movs r5, r0
	beq _0213D3C8
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _0213D44C ; =s_BGU_overlay_1_02141f74
	ldr r2, _0213D450 ; =s_data_menu_pam000_bg_LZ_bin_overlay_1_02141fcc
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
_0213D3C8:
	ldr r1, _0213D454 ; =s_BGU_pam_03d_NCLR_overlay_1_02141fa4
	add r0, sp, #0x10
	mov r2, r6
	bl OS_SPrintf
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0213D3FC
	mov r3, #0
	add r1, sp, #0x10
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
_0213D3FC:
	str r0, [r4, #0x150]
	ldr r0, [r0, #0xb8]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #0x150]
	mov r1, #0
	ldr r0, [r0, #0xb8]
	mov r2, #0x20
	ldr r0, [r0, #0xc]
	bl GXS_LoadBGPltt
	cmp r5, #0
	addeq sp, sp, #0x70
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
	add sp, sp, #0x70
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0213D44C: .word s_BGU_overlay_1_02141f74
_0213D450: .word s_data_menu_pam000_bg_LZ_bin_overlay_1_02141fcc
_0213D454: .word s_BGU_pam_03d_NCLR_overlay_1_02141fa4

	arm_func_start ov1_0213D458
ov1_0213D458: ; 0x0213D458
	stmdb sp!, {r4, lr}
	ldr r1, [r0, #0x150]
	ldrb r0, [r0, #0xd9]
	ldr r2, [r1, #0xb8]
	mov r1, #0x10
	ldr r2, [r2, #0xc]
	add r4, r2, r0, lsl #5
	mov r0, r4
	bl DC_FlushRange
	mov r0, r4
	mov r1, #0x20
	mov r2, #0x10
	bl GXS_LoadBGPltt
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213D458

	arm_func_start ov1_0213D490
ov1_0213D490: ; 0x0213D490
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	ldr r0, [r4, #0xe0]
	mov r2, r1
	bl sub_0200EB34
	ldr r0, [r4]
	mov r1, #0x80
	add r0, r0, #0x44
	add r2, r0, #0x400
	strh r1, [r2, #6]
	mov r0, #0
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	strh r1, [r2, #0x1e]
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213D490

	arm_func_start ov1_0213D4D0
ov1_0213D4D0: ; 0x0213D4D0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r0, [r5, #0xdc]
	ldr r1, _0213D564 ; =0x0400104C
	orr r0, r0, r0, lsl #4
	strb r0, [r1]
	ldrb r0, [r5, #0xdc]
	orr r0, r0, r0, lsl #4
	strb r0, [r1, #1]
	ldrb r0, [r5, #0xdc]
	sub r0, r0, #1
	strb r0, [r5, #0xdc]
	tst r0, #0xff
	ldmneia sp!, {r4, r5, r6, pc}
	ldrh r0, [r1, #-0x44]!
	mov r4, #0
	bic r0, r0, #0x40
	strh r0, [r1]
	ldrb r0, [r5, #0xdb]
	cmp r0, #0
	ble _0213D548
	mov r6, r4
	arm_func_end ov1_0213D4D0
_0213D528:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0xf0]
	mov r1, r6
	bl sub_0200EB64
	ldrb r0, [r5, #0xdb]
	add r4, r4, #1
	cmp r4, r0
	blt _0213D528
_0213D548:
	ldr r0, [r5, #0x13c]
	mov r1, #0
	bl sub_0200EB64
	ldr r0, [r5, #0x140]
	mov r1, #0
	bl sub_0200EB64
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0213D564: .word 0x0400104C

	arm_func_start ov1_0213D568
ov1_0213D568: ; 0x0213D568
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r0, #0xf
	ldr r1, _0213D60C ; =0x04001008
	strb r0, [r5, #0xdc]
	ldrh r0, [r1]
	mov r4, #0
	orr r0, r0, #0x40
	strh r0, [r1]
	ldrb r0, [r5, #0xdb]
	cmp r0, #0
	ble _0213D5C4
	mov r6, #1
	arm_func_end ov1_0213D568
_0213D59C:
	add r2, r5, r4, lsl #2
	ldr r0, [r2, #0xf0]
	mov r1, r6
	str r6, [r0, #0x14]
	ldr r0, [r2, #0xf0]
	bl sub_0200EB64
	ldrb r0, [r5, #0xdb]
	add r4, r4, #1
	cmp r4, r0
	blt _0213D59C
_0213D5C4:
	ldr r0, [r5, #0x13c]
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r0, [r5, #0x140]
	str r1, [r0, #0x14]
	ldr r0, [r5, #0x13c]
	bl sub_0200EB64
	ldr r0, [r5, #0x140]
	mov r1, #1
	bl sub_0200EB64
	ldrb r0, [r5, #0xdc]
	ldr r1, _0213D610 ; =0x0400104C
	orr r0, r0, r0, lsl #4
	strb r0, [r1]
	ldrb r0, [r5, #0xdc]
	orr r0, r0, r0, lsl #4
	strb r0, [r1, #1]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0213D60C: .word 0x04001008
_0213D610: .word 0x0400104C

	arm_func_start ov1_0213D614
ov1_0213D614: ; 0x0213D614
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r0, #0xb8
	bl _Znwm
	movs r7, r0
	beq _0213D63C
	ldr r1, _0213D920 ; =s_data_message_etc_menu_mes_overlay_1_02142020
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r7, r0
	arm_func_end ov1_0213D614
_0213D63C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x16c]
	ldr r1, [r7, #0x4c]
	mov r5, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [r4, #0x16c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x16c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x16c]
	mov r6, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x16c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0213D704
_0213D694:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r5, lsl #2]
	add r5, r5, #1
	str r1, [r0, r6, lsl #3]
	ldr r0, [r4, #0x16c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r6, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x16c]
	ldr r1, [r1, #8]
	add r1, r1, r6, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x16c]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r5, lsl #2
	add r1, r2, r6, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r6, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x16c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r6, lsl #3]
	add r6, r6, #1
	cmp r6, r0
	add r5, r5, r1, lsr #2
	blo _0213D694
_0213D704:
	cmp r7, #0
	beq _0213D71C
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0213D71C:
	mov r0, #0xb8
	bl _Znwm
	movs r7, r0
	beq _0213D73C
	ldr r1, _0213D924 ; =s_data_message_etc_assist_mes_overlay_1_0214203c
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r7, r0
_0213D73C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x170]
	ldr r1, [r7, #0x4c]
	mov r5, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [r4, #0x170]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x170]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x170]
	mov r6, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x170]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0213D804
_0213D794:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r5, lsl #2]
	add r5, r5, #1
	str r1, [r0, r6, lsl #3]
	ldr r0, [r4, #0x170]
	ldr r0, [r0, #8]
	ldr r0, [r0, r6, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x170]
	ldr r1, [r1, #8]
	add r1, r1, r6, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x170]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r5, lsl #2
	add r1, r2, r6, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r6, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x170]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r6, lsl #3]
	add r6, r6, #1
	cmp r6, r0
	add r5, r5, r1, lsr #2
	blo _0213D794
_0213D804:
	cmp r7, #0
	beq _0213D81C
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0213D81C:
	mov r0, #0xb8
	bl _Znwm
	movs r7, r0
	beq _0213D83C
	ldr r1, _0213D928 ; =s_data_message_etc_fieldwaza_name_overlay_1_0214205c
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r7, r0
_0213D83C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x174]
	ldr r1, [r7, #0x4c]
	mov r5, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [r4, #0x174]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x174]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x174]
	mov r6, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x174]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0213D904
_0213D894:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r5, lsl #2]
	add r5, r5, #1
	str r1, [r0, r6, lsl #3]
	ldr r0, [r4, #0x174]
	ldr r0, [r0, #8]
	ldr r0, [r0, r6, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x174]
	ldr r1, [r1, #8]
	add r1, r1, r6, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x174]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r5, lsl #2
	add r1, r2, r6, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r6, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x174]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r6, lsl #3]
	add r6, r6, #1
	cmp r6, r0
	add r5, r5, r1, lsr #2
	blo _0213D894
_0213D904:
	cmp r7, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0213D920: .word s_data_message_etc_menu_mes_overlay_1_02142020
_0213D924: .word s_data_message_etc_assist_mes_overlay_1_0214203c
_0213D928: .word s_data_message_etc_fieldwaza_name_overlay_1_0214205c

	arm_func_start ov1_0213D92C
ov1_0213D92C: ; 0x0213D92C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x64
	mov r5, r0
	ldr r4, [r5, #0x9c]
	mov r0, #0
	str r0, [r5, #0x144]
	ldr r6, [r5, #0x154]
	mov r7, r1
	cmp r6, #0
	beq _0213D970
	beq _0213D968
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
	arm_func_end ov1_0213D92C
_0213D968:
	mov r0, #0
	str r0, [r5, #0x154]
_0213D970:
	ldr r1, _0213DA0C ; =s_bp_03d_overlay_1_02142080
	add r0, sp, #4
	mov r2, r7
	bl OS_SPrintf
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0213D9B4
	ldr r3, [r5]
	mov r1, #0x40
	str r1, [sp]
	add r2, r3, #0x1000
	add r1, r3, #0x3f4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0213D9B4:
	str r0, [r5, #0x154]
	mov r0, #0xf
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r5, #0x154]
	ldr r1, _0213DA10 ; =s_data_pokeOBJ_overlay_1_02142088
	add r2, sp, #4
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	ldr r0, [r5, #0x154]
	mov r2, #0xc0
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r5, #0x144]
	ldrh r0, [r5, #0x2c]
	orr r0, r0, #6
	strh r0, [r5, #0x2c]
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0213DA0C: .word s_bp_03d_overlay_1_02142080
_0213DA10: .word s_data_pokeOBJ_overlay_1_02142088

	arm_func_start ov1_0213DA14
ov1_0213DA14: ; 0x0213DA14
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r0, #0x44
	mov r4, #0
	bl _Znwm
	cmp r0, #0
	beq _0213DA54
	ldr r3, [sl]
	mov r1, #0x40
	str r1, [sp]
	add r2, r3, #0x1000
	add r1, r3, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
	arm_func_end ov1_0213DA14
_0213DA54:
	str r0, [sl, #0x160]
	mov r3, #0
	str r3, [sp]
	ldr r0, [sl, #0x160]
	ldr r1, _0213DE70 ; =s_data_menu_overlay_1_02142098
	ldr r2, _0213DE74 ; =s_pam003_00_overlay_1_021420a4
	bl sub_0200EE14
	add r4, r4, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0213DAA8
	ldr r3, [sl]
	mov r1, #0x40
	str r1, [sp]
	add r2, r3, #0x1000
	add r1, r3, #0x64
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0213DAA8:
	str r0, [sl, #0x158]
	mov r0, #2
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [sl, #0x158]
	ldr r1, _0213DE70 ; =s_data_menu_overlay_1_02142098
	ldr r2, _0213DE78 ; =s_pam001_00_overlay_1_021420b0
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r4, r4, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0213DB08
	ldr r3, [sl]
	mov r1, #0x40
	str r1, [sp]
	add r2, r3, #0x1000
	add r1, r3, #0x8c
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0213DB08:
	str r0, [sl, #0x15c]
	mov r0, #6
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [sl, #0x15c]
	ldr r1, _0213DE70 ; =s_data_menu_overlay_1_02142098
	ldr r2, _0213DE7C ; =s_pam002_00_overlay_1_021420bc
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r4, r4, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0213DB68
	ldr r3, [sl]
	mov r1, #0x40
	str r1, [sp]
	add r2, r3, #0x1000
	add r1, r3, #0x384
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0213DB68:
	str r0, [sl, #0x164]
	mov r0, #8
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [sl, #0x164]
	ldr r1, _0213DE70 ; =s_data_menu_overlay_1_02142098
	ldr r2, _0213DE80 ; =s_ma000_00_overlay_1_021420c8
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r4, r4, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0213DBC8
	ldr r3, [sl]
	mov r1, #0x40
	str r1, [sp]
	add r2, r3, #0x1000
	add r1, r3, #0x38c
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0213DBC8:
	str r0, [sl, #0x168]
	mov r0, #0xe
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [sl, #0x168]
	ldr r1, _0213DE70 ; =s_data_menu_overlay_1_02142098
	ldr r2, _0213DE84 ; =s_ma001_00_overlay_1_021420d4
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r0, r4, r0
	str r0, [sl, #0x9c]
	mov r1, #0
	str r1, [sp]
	ldr r0, [sl, #0x158]
	mov r2, #0x98
	mov r3, #0x9a
	bl sub_0200F4FC
	str r0, [sl, #0xe0]
	ldr r0, [sl, #0x158]
	mov r1, #0x20
	ldr r0, [r0, #0x24]
	mov r2, #0
	str r0, [sl, #0xa0]
	ldr r0, [sl, #0xe0]
	bl sub_0200EB34
	mov r1, #0
	str r1, [sp]
	ldr r0, [sl, #0x158]
	mov r2, #0xb6
	mov r3, #0x9a
	bl sub_0200F4FC
	str r0, [sl, #0xe4]
	ldr r0, [sl, #0x158]
	mov r1, #1
	ldr r0, [r0, #0x24]
	mov r2, r1
	str r0, [sl, #0xa4]
	ldr r0, [sl, #0xe4]
	bl sub_0200EB34
	mov r1, #0
	str r1, [sp]
	ldr r0, [sl, #0x158]
	mov r2, #0xd9
	mov r3, #0xaa
	bl sub_0200F4FC
	str r0, [sl, #0xe8]
	ldr r0, [sl, #0x158]
	mov r1, #0x20
	ldr r0, [r0, #0x24]
	mov r2, #0
	str r0, [sl, #0xa8]
	ldr r0, [sl, #0xe8]
	bl sub_0200EB34
	mov r1, #0
	str r1, [sp]
	ldr r0, [sl, #0x158]
	mov r2, #0xe9
	mov r3, #0xaa
	bl sub_0200F4FC
	str r0, [sl, #0xec]
	ldr r0, [sl, #0x158]
	mov r1, #0x20
	ldr r0, [r0, #0x24]
	mov r2, #0
	str r0, [sl, #0xac]
	ldr r0, [sl, #0xec]
	bl sub_0200EB34
	mov r0, #0
	str r0, [sp]
	ldr r0, [sl, #0x158]
	mov r1, #0xa
	mov r2, #0xda
	mov r3, #0x98
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x15c]
	mov r1, #4
	mov r2, #0xb4
	mov r3, #0x20
	bl sub_0200F4FC
	str r0, [sl, #0x130]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x15c]
	mov r1, #5
	mov r2, #0xc0
	mov r3, #0x98
	bl sub_0200F4FC
	str r0, [sl, #0x134]
	mov r0, #0
	str r0, [sp]
	ldr r0, [sl, #0x15c]
	mov r1, #6
	mov r2, #0x94
	mov r3, #0x14
	bl sub_0200F4FC
	str r0, [sl, #0x138]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x15c]
	mov r1, #0
	mov r2, #0x40
	mov r3, #0x19
	bl sub_0200F4FC
	str r0, [sl, #0x13c]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x15c]
	mov r1, #3
	mov r2, #0x40
	mov r3, #0xa9
	bl sub_0200F4FC
	mov r7, #1
	str r0, [sl, #0x140]
	mov sb, #0
	mov r8, #0x29
	mov fp, r7
	mov r4, #2
	mov r6, r7
	mov r5, #0x40
_0213DDB0:
	str r6, [sp]
	ldr r0, [sl, #0x15c]
	mov r1, r7
	mov r2, r5
	mov r3, r8
	bl sub_0200F4FC
	add r1, sl, sb, lsl #2
	str r0, [r1, #0xf0]
	mov r0, #0
	str r0, [sp]
	cmp r7, #1
	moveq r7, r4
	ldr r0, [sl, #0x160]
	mov r1, #0
	mov r2, #0x60
	mov r3, r8
	movne r7, fp
	bl sub_0200F4FC
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x110]
	ldr r0, [sl, #0x160]
	add sb, sb, #1
	ldr r0, [r0, #0x24]
	cmp sb, #8
	str r0, [r1, #0xb0]
	add r8, r8, #0x10
	blt _0213DDB0
	mov r1, #0
	str r1, [sp]
	ldr r0, [sl, #0x164]
	mov r2, #0x80
	mov r3, #0x31
	bl sub_0200F4FC
	str r0, [sl, #0x148]
	ldr r0, [sl, #0x164]
	mov r1, #0
	ldr r0, [r0, #0x24]
	mov r2, #0x8c
	str r0, [sl, #0xd0]
	str r1, [sp]
	ldr r0, [sl, #0x168]
	mov r3, #0x31
	bl sub_0200F4FC
	str r0, [sl, #0x14c]
	ldr r0, [sl, #0x168]
	ldr r0, [r0, #0x24]
	str r0, [sl, #0xd4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0213DE70: .word s_data_menu_overlay_1_02142098
_0213DE74: .word s_pam003_00_overlay_1_021420a4
_0213DE78: .word s_pam001_00_overlay_1_021420b0
_0213DE7C: .word s_pam002_00_overlay_1_021420bc
_0213DE80: .word s_ma000_00_overlay_1_021420c8
_0213DE84: .word s_ma001_00_overlay_1_021420d4

	arm_func_start ov1_0213DE88
ov1_0213DE88: ; 0x0213DE88
	stmdb sp!, {r3, lr}
	mov r0, #1
	bl GXS_SetGraphicsMode
	ldr ip, _0213DF1C ; =0x04001000
	mov r1, #0
	ldr r2, [ip]
	ldr r0, [ip]
	and r2, r2, #0x1f00
	mov r3, r2, lsr #8
	bic r2, r0, #0x1f00
	orr r0, r3, #0xe
	orr r0, r2, r0, lsl #8
	str r0, [ip]
	str r1, [ip, #0x10]
	str r1, [ip, #0x14]
	str r1, [ip, #0x18]
	ldrh r2, [ip, #8]
	add r0, ip, #0x50
	mov r3, #8
	bic r2, r2, #3
	strh r2, [ip, #8]
	ldrh lr, [ip, #0xa]
	mov r2, #0x1e
	bic lr, lr, #3
	orr lr, lr, #1
	strh lr, [ip, #0xa]
	ldrh lr, [ip, #0xc]
	bic lr, lr, #3
	orr lr, lr, #3
	strh lr, [ip, #0xc]
	ldrh lr, [ip, #0xe]
	bic lr, lr, #3
	orr lr, lr, #2
	strh lr, [ip, #0xe]
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	ldmia sp!, {r3, pc}
	.align 2, 0
_0213DF1C: .word 0x04001000
	arm_func_end ov1_0213DE88

	arm_func_start ov1_0213DF20
ov1_0213DF20: ; 0x0213DF20
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x14
	mov sl, r0
	ldr r0, [sl]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r0, [sl]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	ldr r0, [sl]
	mov r1, #0xc
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CC88
	mov r8, #0
	mov r7, #0x220
	mov sb, #4
	mov r6, #2
	mov r5, r8
	mov r4, #8
	arm_func_end ov1_0213DF20
_0213DF78:
	stmia sp, {r6, sb}
	str r7, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r0, [sl]
	mov r1, r8
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r2, r4
	mov r3, r6
	bl sub_0200CCD0
	add r8, r8, #1
	cmp r8, #8
	add r7, r7, #0x10
	add sb, sb, #2
	blt _0213DF78
	mov r3, #2
	str r3, [sp]
	stmib sp, {r3, r7}
	mov r0, #0
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [sl]
	mov r1, #8
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r2, #0xb
	bl sub_0200CCD0
	mov r0, #0x16
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	add r0, r7, #0x16
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [sl]
	mov r1, #9
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r2, #8
	bl sub_0200CCD0
	mov r0, #0x12
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r7, #0x26
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r0, [sl]
	mov r1, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r2, #0xc
	bl sub_0200CCD0
	mov r1, #0x14
	str r1, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	add r0, r7, #0x3e
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r0, [sl]
	mov r1, #0xb
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r2, #8
	bl sub_0200CCD0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start ov1_0213E0AC
ov1_0213E0AC: ; 0x0213E0AC
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r0, [r6, #8]
	mov r5, r1
	mov r4, r2
	cmp r0, #0x11
	beq _0213E104
	mov r0, #3
	str r0, [sp]
	ldr r0, [r6, #0x16c]
	mov r2, #0
	ldr r0, [r0, #8]
	mov r1, #0xb
	ldr r0, [r0, #0x104]
	mov r3, #4
	stmib sp, {r0, r2}
	str r2, [sp, #0xc]
	ldr r0, [r6]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CDA0
	arm_func_end ov1_0213E0AC
_0213E104:
	mov r0, r6
	bl ov1_0213E12C
	mov r0, r6
	mov r1, r5
	bl ov1_0213E1D8
	mov r0, r6
	mov r1, r4
	bl ov1_0213E244
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_0213E12C
ov1_0213E12C: ; 0x0213E12C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r1, #5
	mov r4, r0
	str r1, [sp]
	ldr r1, [r4, #0x16c]
	mov r0, #0
	ldr r2, [r1, #8]
	mov r1, #8
	ldr r3, [r2, #0xfc]
	mov r2, #2
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CDA0
	mov r7, #0
	mov r5, #3
	mov r6, #7
	arm_func_end ov1_0213E12C
_0213E184:
	add r0, r4, r7, lsl #1
	ldrh r1, [r0, #0x30]
	cmp r1, #0
	beq _0213E1C0
	add r0, r4, r7, lsl #2
	ldr r0, [r0, #0x70]
	mov r2, r7
	cmp r0, #0
	mov r0, r4
	beq _0213E1B8
	mov r3, r6
	bl ov1_0213EBB4
	b _0213E1C0
_0213E1B8:
	mov r3, r5
	bl ov1_0213EBB4
_0213E1C0:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #8
	blo _0213E184
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov1_0213E1D8
ov1_0213E1D8: ; 0x0213E1D8
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x10
	cmp r1, #0
	addlt sp, sp, #0x10
	ldmltia sp!, {r3, pc}
	cmp r1, #0x11
	addgt sp, sp, #0x10
	ldmgtia sp!, {r3, pc}
	mov ip, #1
	str ip, [sp]
	ldr r2, [r0, #0x170]
	add r1, r1, #1
	ldr r3, [r2, #8]
	sub r2, ip, #4
	add r1, r3, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #9
	stmib sp, {r3, ip}
	str r2, [sp, #0xc]
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r3, #2
	bl sub_0200CDA0
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0213E1D8

	arm_func_start ov1_0213E244
ov1_0213E244: ; 0x0213E244
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x10
	mov lr, #1
	str lr, [sp]
	ldr r2, [r0, #0x174]
	cmp r1, #0x19
	ldr ip, [r2, #8]
	movhs r1, #0x19
	add r1, ip, r1, lsl #3
	ldr ip, [r1, #4]
	mov r3, #2
	stmib sp, {ip, lr}
	str r3, [sp, #0xc]
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #0xa
	mov r3, #4
	bl sub_0200CDA0
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0213E244

	arm_func_start ov1_0213E29C
ov1_0213E29C: ; 0x0213E29C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	arm_func_end ov1_0213E29C
_0213E2A8:
	ldr r0, [r5]
	mov r1, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	add r4, r4, #1
	cmp r4, #0xc
	blt _0213E2A8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0213E2CC
ov1_0213E2CC: ; 0x0213E2CC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #9
	arm_func_end ov1_0213E2CC
_0213E2D8:
	ldr r0, [r5]
	mov r1, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	add r4, r4, #1
	cmp r4, #0xc
	blt _0213E2D8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0213E2FC
ov1_0213E2FC: ; 0x0213E2FC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	arm_func_end ov1_0213E2FC
_0213E308:
	ldr r0, [r5]
	mov r1, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	add r4, r4, #1
	cmp r4, #9
	blt _0213E308
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0213E32C
ov1_0213E32C: ; 0x0213E32C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrh r0, [r4, #0x2c]
	mov r5, r1
	tst r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	tst r0, #0x200
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x158]
	bl sub_0200F64C
	ldr r0, [r4, #0x15c]
	bl sub_0200F64C
	ldr r0, [r4, #0x160]
	bl sub_0200F64C
	ldr r0, [r4, #0x164]
	bl sub_0200F64C
	ldr r0, [r4, #0x168]
	bl sub_0200F64C
	cmp r5, #0
	beq _0213E388
	ldrh r1, [r4, #0x2e]
	mov r0, r4
	bl ov1_0213E8BC
	arm_func_end ov1_0213E32C
_0213E388:
	ldrb r0, [r4, #0xdc]
	cmp r0, #0
	beq _0213E39C
	mov r0, r4
	bl ov1_0213D4D0
_0213E39C:
	ldrb r0, [r4, #0xd8]
	cmp r0, #0xc
	addlo r0, r0, #1
	strlob r0, [r4, #0xd8]
	blo _0213E40C
	ldrb r0, [r4, #0xda]
	cmp r0, #0
	ldreqb r0, [r4, #0xd9]
	cmpeq r0, #5
	moveq r0, #1
	streqb r0, [r4, #0xda]
	ldrb r0, [r4, #0xda]
	cmp r0, #1
	ldreqb r0, [r4, #0xd9]
	cmpeq r0, #1
	moveq r0, #0
	streqb r0, [r4, #0xda]
	ldrb r1, [r4, #0xda]
	ldrb r2, [r4, #0xd9]
	mov r0, r4
	mov r1, r1, lsl #1
	rsb r1, r1, #0
	add r1, r1, #1
	add r1, r2, r1
	strb r1, [r4, #0xd9]
	mov r1, #0
	strb r1, [r4, #0xd8]
	bl ov1_0213D458
_0213E40C:
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _0213E424
	cmp r0, #2
	beq _0213E430
	b _0213E438
_0213E424:
	mov r0, r4
	bl ov1_0213E52C
	b _0213E438
_0213E430:
	mov r0, r4
	bl ov1_0213E60C
_0213E438:
	mov r0, r4
	bl ov1_0213E44C
	mov r0, r4
	bl ov1_0213D490
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0213E44C
ov1_0213E44C: ; 0x0213E44C
	stmdb sp!, {r3, lr}
	ldrh r2, [r0, #0x26]
	ldr r1, _0213E4C0 ; =0x0000FFFF
	ldr r3, _0213E4C4 ; =FX_SinCosTable_
	add r2, r2, #0x100
	cmp r2, r1
	movge r1, #0
	strgeh r1, [r0, #0x26]
	ldrh r2, [r0, #0x26]
	ldr r1, _0213E4C8 ; =ov1_0213E708
	mov r2, r2, asr #4
	mov ip, r2, lsl #1
	add r2, ip, #1
	mov r2, r2, lsl #1
	mov lr, ip, lsl #1
	ldrsh ip, [r3, r2]
	ldrsh r3, [r3, lr]
	mov r2, #0
	str ip, [r0, #0x10]
	str r3, [r0, #0x14]
	rsb r3, r3, #0
	str r3, [r0, #0x18]
	str ip, [r0, #0x1c]
	ldrh r3, [r0, #0x2c]
	orr r3, r3, #0x80
	strh r3, [r0, #0x2c]
	ldr r0, [r0]
	bl sub_020100E4
	ldmia sp!, {r3, pc}
	.align 2, 0
_0213E4C0: .word 0x0000FFFF
_0213E4C4: .word FX_SinCosTable_
_0213E4C8: .word ov1_0213E708
	arm_func_end ov1_0213E44C

	arm_func_start ov1_0213E4CC
ov1_0213E4CC: ; 0x0213E4CC
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r1, _0213E524 ; =FX_SinCosTable_
	mov ip, r0
	ldrsh r2, [r1, #2]
	ldrsh r1, [r1]
	ldr r0, _0213E528 ; =0x04001030
	str r2, [ip, #0x10]
	str r1, [ip, #0x14]
	rsb r1, r1, #0
	str r1, [ip, #0x18]
	str r2, [ip, #0x1c]
	ldrsh r3, [ip, #0x20]
	add r1, ip, #0x10
	mov r2, #0x80
	str r3, [sp]
	ldrsh ip, [ip, #0x22]
	mov r3, #0x60
	str ip, [sp, #4]
	bl G2x_SetBGyAffine_
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0213E524: .word FX_SinCosTable_
_0213E528: .word 0x04001030
	arm_func_end ov1_0213E4CC

	arm_func_start ov1_0213E52C
ov1_0213E52C: ; 0x0213E52C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0x2a]
	cmp r1, #0x3c
	bne _0213E564
	mov r1, #0
	strh r1, [r4, #0x26]
	strh r1, [r4, #0x2a]
	mov r1, #1
	strh r1, [r4, #0x28]
	bl ov1_0213E12C
	mov r0, r4
	bl ov1_0213D568
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213E52C
_0213E564:
	ldmhsia sp!, {r4, pc}
	cmp r1, #0x1e
	bhs _0213E580
	ldrsh r0, [r4, #0x20]
	sub r0, r0, #0xf
	strh r0, [r4, #0x20]
	b _0213E5B0
_0213E580:
	cmp r1, #0x2d
	bhs _0213E598
	ldrsh r0, [r4, #0x20]
	add r0, r0, #8
	strh r0, [r4, #0x20]
	b _0213E5B0
_0213E598:
	ldrsh r0, [r4, #0x20]
	cmp r1, #0x37
	addlo r0, r0, #4
	strloh r0, [r4, #0x20]
	addhs r0, r0, #1
	strhsh r0, [r4, #0x20]
_0213E5B0:
	ldrh r1, [r4, #0x2a]
	mov r2, #3
	cmp r1, #0
	beq _0213E5DC
	ldr r2, _0213E604 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #3
	rsb r0, r3, #3
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
_0213E5DC:
	ldr r0, _0213E608 ; =0x00000888
	ldrh r1, [r4, #0x26]
	mul r0, r2, r0
	mov r0, r0, lsl #0x10
	add r0, r1, r0, lsr #16
	strh r0, [r4, #0x26]
	ldrh r0, [r4, #0x2a]
	add r0, r0, #1
	strh r0, [r4, #0x2a]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213E604: .word 0x66666667
_0213E608: .word 0x00000888

	arm_func_start ov1_0213E60C
ov1_0213E60C: ; 0x0213E60C
	ldrh r2, [r0, #0x2a]
	cmp r2, #0x1e
	bne _0213E630
	mov r1, #0
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x2a]
	mov r1, #1
	strh r1, [r0, #0x28]
	bx lr
	arm_func_end ov1_0213E60C
_0213E630:
	bxhs lr
	cmp r2, #0
	mov r3, #3
	beq _0213E65C
	ldr r3, _0213E684 ; =0x66666667
	mov r1, r2, lsr #0x1f
	smull r2, ip, r3, r2
	add ip, r1, ip, asr #2
	rsb r1, ip, #3
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
_0213E65C:
	ldr r1, _0213E688 ; =0x00000888
	ldrh r2, [r0, #0x26]
	mul r1, r3, r1
	mov r1, r1, lsl #0x10
	add r1, r2, r1, lsr #16
	strh r1, [r0, #0x26]
	ldrh r1, [r0, #0x2a]
	add r1, r1, #1
	strh r1, [r0, #0x2a]
	bx lr
	.align 2, 0
_0213E684: .word 0x66666667
_0213E688: .word 0x00000888

	arm_func_start ov1_0213E68C
ov1_0213E68C: ; 0x0213E68C
	ldrh r1, [r0, #0x28]
	cmp r1, #0
	bxeq lr
	mov r1, #0
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x2a]
	mov r1, #2
	strh r1, [r0, #0x28]
	bx lr
	arm_func_end ov1_0213E68C

	arm_func_start ov1_0213E6B0
ov1_0213E6B0: ; 0x0213E6B0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrh r0, [r4, #0x2c]
	tst r0, #0x80
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldrsh r2, [r4, #0x20]
	ldr r0, _0213E704 ; =0x04001030
	add r1, r4, #0x10
	str r2, [sp]
	ldrsh ip, [r4, #0x22]
	mov r2, #0x80
	mov r3, #0x60
	str ip, [sp, #4]
	bl G2x_SetBGyAffine_
	ldrh r0, [r4, #0x2c]
	bic r0, r0, #0x80
	strh r0, [r4, #0x2c]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213E704: .word 0x04001030
	arm_func_end ov1_0213E6B0

	arm_func_start ov1_0213E708
ov1_0213E708: ; 0x0213E708
	stmdb sp!, {r3, lr}
	ldr r0, _0213E724 ; =OVERLAY1_BSS_02142200
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov1_0213E6B0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0213E724: .word OVERLAY1_BSS_02142200
	arm_func_end ov1_0213E708

	arm_func_start ov1_0213E728
ov1_0213E728: ; 0x0213E728
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0x2c]
	tst r1, #1
	beq _0213E744
	bl sub_02001210
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213E728
_0213E744:
	bl ov1_0213F01C
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r4, #0x2c]
	tst r0, #2
	beq _0213E76C
	tst r0, #4
	beq _0213E76C
	ldr r0, [r4, #0x154]
	bl sub_0200F71C
_0213E76C:
	ldr r0, [r4, #0x15c]
	bl sub_0200F71C
	ldr r0, [r4, #0x164]
	bl sub_0200F71C
	ldr r0, [r4, #0x168]
	bl sub_0200F71C
	ldrh r0, [r4, #0x2c]
	tst r0, #0x10
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x160]
	bl sub_0200F71C
	ldrh r0, [r4, #0x2c]
	tst r0, #0x40
	ldrne r0, [r4, #8]
	cmpne r0, #0x11
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x158]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start thunk_FUN_overlay_1__0213e12c
thunk_FUN_overlay_1__0213e12c: ; 0x0213E7B8
	ldr ip, _0213E7C0 ; =ov1_0213E12C
	bx ip
	.align 2, 0
_0213E7C0: .word ov1_0213E12C
	arm_func_end thunk_FUN_overlay_1__0213e12c

	arm_func_start ov1_0213E7C4
ov1_0213E7C4: ; 0x0213E7C4
	stmdb sp!, {r4, lr}
	mov ip, #0
	mov r2, #1
	mov r3, ip
	mov r4, ip
	arm_func_end ov1_0213E7C4
_0213E7D8:
	cmp r1, #0
	bne _0213E824
	cmp ip, #1
	ldreq lr, [r0, #8]
	cmpeq lr, #0x11
	add lr, r0, ip, lsl #2
	bne _0213E800
	ldr lr, [lr, #0x130]
	str r3, [lr, #0x14]
	b _0213E824
_0213E800:
	ldr lr, [lr, #0x130]
	str r2, [lr, #0x14]
	ldr lr, [r0, #0x148]
	str r2, [lr, #0x14]
	ldr lr, [r0, #0x14c]
	str r2, [lr, #0x14]
	ldrh lr, [r0, #0x2c]
	orr lr, lr, #0x40
	strh lr, [r0, #0x2c]
_0213E824:
	cmp r1, #1
	bne _0213E854
	add lr, r0, ip, lsl #2
	ldr lr, [lr, #0x130]
	str r4, [lr, #0x14]
	ldr lr, [r0, #0x148]
	str r4, [lr, #0x14]
	ldr lr, [r0, #0x14c]
	str r4, [lr, #0x14]
	ldrh lr, [r0, #0x2c]
	bic lr, lr, #0x40
	strh lr, [r0, #0x2c]
_0213E854:
	add ip, ip, #1
	cmp ip, #3
	blt _0213E7D8
	ldr r0, [r0, #0x15c]
	bl sub_0200F64C
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0213E86C
ov1_0213E86C: ; 0x0213E86C
	ldr ip, _0213E880 ; =FUN_0200F628
	add r1, r0, r1, lsl #2
	ldr r0, [r0, #0x158]
	ldr r1, [r1, #0xa0]
	bx ip
	.align 2, 0
_0213E880: .word sub_0200F628
	arm_func_end ov1_0213E86C

	arm_func_start ov1_0213E884
ov1_0213E884: ; 0x0213E884
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r4, [r5, #0xf]
	ldrb r2, [r5, #0xe]
	ldr r0, [r5, #0x164]
	cmp r4, #5
	ldr r1, [r5, #0xd0]
	movhi r4, #0
	bl sub_0200F628
	ldr r0, [r5, #0x168]
	ldr r1, [r5, #0xd4]
	mov r2, r4
	bl sub_0200F628
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_0213E884

	arm_func_start ov1_0213E8BC
ov1_0213E8BC: ; 0x0213E8BC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r5, r1
	bl ov1_0213EF2C
	cmp r0, #0
	beq _0213E8E0
	ldr r0, [r8, #8]
	cmp r0, #0x11
	moveq r5, #0
	arm_func_end ov1_0213E8BC
_0213E8E0:
	ldr r2, _0213E9AC ; =0x88888889
	mov r0, r5, lsr #0x1f
	smull r1, r4, r2, r5
	add r4, r5, r4
	add r4, r0, r4, asr #5
	mov r0, #0x3c
	mul r0, r4, r0
	sub r0, r5, r0
	cmp r0, #0
	mov r5, #0
	ble _0213E934
	add r0, r0, r0, lsl #2
	mov r2, r0, lsl #0xc
	mov r0, r2, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r3, r5
	orr r1, r1, r2, lsr #20
	mov r0, r2, lsl #0xc
	mov r2, #0x3000
	bl _ll_div
	mov r5, r0, asr #0xc
_0213E934:
	ldr ip, _0213E9B0 ; =0x66666667
	mov r0, r4, lsr #0x1f
	smull r1, r6, ip, r4
	add r6, r0, r6, asr #2
	mov r0, r8
	mov r2, r6
	mov r3, r5, lsr #0x1f
	smull r1, r7, ip, r5
	mov r1, #0
	add r7, r3, r7, asr #2
	bl ov1_0213E86C
	mov r0, #0xa
	mul r1, r6, r0
	mov r0, r8
	sub r2, r4, r1
	mov r1, #1
	bl ov1_0213E86C
	mov r0, r8
	mov r2, r7
	mov r1, #2
	bl ov1_0213E86C
	mov r0, r8
	mov r1, #3
	mov r2, #0xa
	mul r2, r7, r2
	sub r2, r5, r2
	bl ov1_0213E86C
	ldr r0, [r8, #0x158]
	bl sub_0200F64C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0213E9AC: .word 0x88888889
_0213E9B0: .word 0x66666667

	arm_func_start ov1_0213E9B4
ov1_0213E9B4: ; 0x0213E9B4
	stmdb sp!, {r3, lr}
	mov r0, r1
	mov r1, r2
	bl ov1_0212EE80
	cmp r0, #0x1000
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	movgt r0, #1
	ldmgtia sp!, {r3, pc}
	movlt r0, #2
	movge r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0213E9B4

	arm_func_start ov1_0213E9E4
ov1_0213E9E4: ; 0x0213E9E4
	strh r1, [r0, #0x2e]
	bx lr
	arm_func_end ov1_0213E9E4

	arm_func_start ov1_0213E9EC
ov1_0213E9EC: ; 0x0213E9EC
	mov r0, #0x29
	bx lr
	arm_func_end ov1_0213E9EC

	arm_func_start ov1_0213E9F4
ov1_0213E9F4: ; 0x0213E9F4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #1
	ldmloia sp!, {r3, r4, r5, pc}
	cmp r4, #8
	ldmhiia sp!, {r3, r4, r5, pc}
	strb r4, [r5, #0x90]
	bl ov1_0213E9EC
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl ov1_0213EA3C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_0213E9F4

	arm_func_start ov1_0213EA2C
ov1_0213EA2C: ; 0x0213EA2C
	add r0, r0, r1, lsl #2
	mov r1, #1
	str r1, [r0, #0x70]
	bx lr
	arm_func_end ov1_0213EA2C

	arm_func_start ov1_0213EA3C
ov1_0213EA3C: ; 0x0213EA3C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r3, #0
	mov r8, r2
	mov sl, r0
	mov sb, r1
	mov r2, r3
	arm_func_end ov1_0213EA3C
_0213EA54:
	add r1, sl, r3, lsl #2
	ldr r0, [r1, #0xf0]
	add r3, r3, #1
	str r2, [r0, #0x14]
	ldr r0, [r1, #0x110]
	cmp r3, #8
	str r2, [r0, #0x14]
	blt _0213EA54
	ldr r0, [sl, #0x13c]
	sub r2, r8, #0x10
	mov r1, #0x40
	bl sub_0200EB28
	ldr r0, [sl, #0x140]
	add r2, r8, sb, lsl #4
	mov r1, #0x40
	bl sub_0200EB28
	cmp sb, #0
	mov r7, #0
	ble _0213EAF8
	mov r6, #0x40
	mov r5, #0x60
	mov r4, r7
_0213EAAC:
	add r0, sl, r7, lsl #2
	ldr r0, [r0, #0xf0]
	mov r1, r6
	mov r2, r8
	bl sub_0200EB28
	add r0, sl, r7, lsl #2
	ldr r0, [r0, #0x110]
	mov r1, r5
	mov r2, r8
	bl sub_0200EB28
	add r1, sl, r7, lsl #2
	ldr r0, [r1, #0xf0]
	add r7, r7, #1
	str r4, [r0, #0x14]
	ldr r0, [r1, #0x110]
	cmp r7, sb
	str r4, [r0, #0x14]
	add r8, r8, #0x10
	blt _0213EAAC
_0213EAF8:
	ldr r0, [sl, #0x13c]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [sl, #0x140]
	str r1, [r0, #0x14]
	strb sb, [sl, #0xdb]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start ov1_0213EB14
ov1_0213EB14: ; 0x0213EB14
	stmdb sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	bne _0213EB38
	add r0, r6, r4, lsl #2
	ldr r0, [r0, #0x110]
	mov r1, #0
	str r1, [r0, #0x14]
	arm_func_end ov1_0213EB14
_0213EB38:
	cmp r5, #1
	bne _0213EB64
	add r1, r6, r4, lsl #2
	ldr r0, [r6, #0x160]
	ldr r1, [r1, #0xb0]
	mov r2, #0
	bl sub_0200F628
	add r0, r6, r4, lsl #2
	ldr r0, [r0, #0x110]
	mov r1, #1
	str r1, [r0, #0x14]
_0213EB64:
	cmp r5, #2
	bne _0213EB90
	add r1, r6, r4, lsl #2
	ldr r0, [r6, #0x160]
	ldr r1, [r1, #0xb0]
	mov r2, #1
	bl sub_0200F628
	add r0, r6, r4, lsl #2
	ldr r0, [r0, #0x110]
	mov r1, #1
	str r1, [r0, #0x14]
_0213EB90:
	ldr r0, [r6, #0x160]
	bl sub_0200F64C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_0213EB9C
ov1_0213EB9C: ; 0x0213EB9C
	ldr r0, [r0]
	ldr ip, _0213EBB0 ; =FUN_02018B10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b0]
	bx ip
	.align 2, 0
_0213EBB0: .word sub_02018B10
	arm_func_end ov1_0213EB9C

	arm_func_start ov1_0213EBB4
ov1_0213EBB4: ; 0x0213EBB4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r4, r0
	ldr r0, [r4]
	mov r6, r2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r7, r1
	mov r1, r6
	mov r5, r3
	bl sub_0200CF7C
	mov r0, r4
	mov r1, r7
	bl ov1_0213EB9C
	add r1, sp, #0x10
	mov r2, #0x1f
	bl sub_0202BC74
	str r5, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r2, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, r6
	mov r3, r2
	bl sub_0200CDA0
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov1_0213EBB4

	arm_func_start ov1_0213EC34
ov1_0213EC34: ; 0x0213EC34
	add r0, r0, r2
	strb r1, [r0, #0x91]
	bx lr
	arm_func_end ov1_0213EC34

	arm_func_start ov1_0213EC40
ov1_0213EC40: ; 0x0213EC40
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, #0
	mov r7, r0
	mov r6, r1
	mov r5, r4
	mov sb, #1
	mov r8, #2
	arm_func_end ov1_0213EC40
_0213EC5C:
	add r0, r7, r5
	ldrb r2, [r0, #0x91]
	cmp r2, #0x12
	beq _0213ECAC
	add r0, r7, r5, lsl #2
	ldr r0, [r0, #0x70]
	cmp r0, #0
	bne _0213EC9C
	mov r0, r7
	mov r1, r6
	bl ov1_0213E9B4
	cmp r0, #1
	moveq r4, sb
	cmp r0, #2
	cmpeq r4, #0
	moveq r4, r8
_0213EC9C:
	add r0, r5, #1
	and r5, r0, #0xff
	cmp r5, #8
	blo _0213EC5C
_0213ECAC:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov1_0213ECB4
ov1_0213ECB4: ; 0x0213ECB4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov sb, r1
	mov r4, r2
	str sb, [sl, #8]
	strb r4, [sl, #0xe]
	strb r3, [sl, #0xf]
	bl ov1_0213D354
	mov r0, sl
	bl ov1_0213E29C
	mov r0, sl
	mov r1, sb
	mov r2, r4
	bl ov1_0213E0AC
	mov r0, sl
	mov r1, #0
	bl ov1_0213E7C4
	mov r0, sl
	bl ov1_0213E884
	mov r0, sl
	mov r1, #1
	bl ov1_0213EF14
	mov r7, #0
	ldrh r0, [sl, #0x2c]
	mov r8, r7
	mov r5, #1
	bic r0, r0, #4
	strh r0, [sl, #0x2c]
	mov r4, #2
	mov r6, r7
	arm_func_end ov1_0213ECB4
_0213ED2C:
	add r0, sl, r8
	ldrb r2, [r0, #0x91]
	cmp r2, #0x12
	beq _0213ED9C
	add r0, sl, r8, lsl #2
	ldr r0, [r0, #0x70]
	cmp r0, #0
	mov r0, sl
	beq _0213ED60
	mov r1, r6
	mov r2, r8
	bl ov1_0213EB14
	b _0213ED8C
_0213ED60:
	mov r1, sb
	bl ov1_0213E9B4
	mov r1, r0
	cmp r1, #1
	moveq r7, r5
	cmp r1, #2
	cmpeq r7, #0
	mov r0, sl
	mov r2, r8
	moveq r7, r4
	bl ov1_0213EB14
_0213ED8C:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #8
	blo _0213ED2C
_0213ED9C:
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start ov1_0213EDA4
ov1_0213EDA4: ; 0x0213EDA4
	add r0, r0, r2, lsl #1
	strh r1, [r0, #0x30]
	bx lr
	arm_func_end ov1_0213EDA4

	arm_func_start ov1_0213EDB0
ov1_0213EDB0: ; 0x0213EDB0
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #4]
	strb r2, [r4, #0xc]
	strb r3, [r4, #0xd]
	bl ov1_0213E29C
	ldrb r2, [r4, #0xc]
	ldr r1, [r4, #4]
	mov r0, r4
	bl ov1_0213E0AC
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213EDB0

	arm_func_start ov1_0213EDDC
ov1_0213EDDC: ; 0x0213EDDC
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	str r1, [r4, #8]
	ldrb r1, [r4, #0xc]
	strb r1, [r4, #0xe]
	ldrb r1, [r4, #0xd]
	strb r1, [r4, #0xf]
	ldrh r1, [r4, #0x2c]
	tst r1, #2
	beq _0213EE38
	ldrh r1, [r4, #0x2e]
	bl ov1_0213E8BC
	ldr r1, [r4, #4]
	ldrb r2, [r4, #0xc]
	ldrb r3, [r4, #0xd]
	mov r0, r4
	and r1, r1, #0xff
	bl ov1_0213ECB4
	ldrh r0, [r4, #0x2c]
	orr r0, r0, #4
	strh r0, [r4, #0x2c]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov1_0213EDDC
_0213EE38:
	mov r1, #0x12
	bl ov1_0213D354
	mov r0, r4
	bl ov1_0213E2CC
	mov r0, r4
	mov r1, #0
	bl ov1_0213EF14
	mov r0, r4
	bl ov1_0213E884
	mov r0, r4
	mov r1, #1
	bl ov1_0213E7C4
	mov r0, r4
	bl ov1_0213E12C
	mov r0, r4
	bl ov1_0213EF80
	cmp r0, #0
	beq _0213EE8C
	mov r0, r4
	mov r1, #1
	bl ov1_0213EF14
_0213EE8C:
	mov r6, #0
	mov r5, r6
_0213EE94:
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl ov1_0213EB14
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #8
	blo _0213EE94
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov1_0213EEB8
ov1_0213EEB8: ; 0x0213EEB8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	str r0, [r5, #0x144]
	ldr r4, [r5, #0x154]
	cmp r4, #0
	beq _0213EEF0
	beq _0213EEE8
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov1_0213EEB8
_0213EEE8:
	mov r0, #0
	str r0, [r5, #0x154]
_0213EEF0:
	ldrh r0, [r5, #0x2c]
	mov r1, #0xa
	bic r0, r0, #2
	strh r0, [r5, #0x2c]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0213EF14
ov1_0213EF14: ; 0x0213EF14
	cmp r1, #0
	ldrh r1, [r0, #0x2c]
	orrne r1, r1, #0x10
	biceq r1, r1, #0x10
	strh r1, [r0, #0x2c]
	bx lr
	arm_func_end ov1_0213EF14

	arm_func_start ov1_0213EF2C
ov1_0213EF2C: ; 0x0213EF2C
	ldrh r0, [r0, #0x2c]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov1_0213EF2C

	arm_func_start ov1_0213EF40
ov1_0213EF40: ; 0x0213EF40
	cmp r1, #0
	ldrh r1, [r0, #0x2c]
	orrne r1, r1, #0x20
	strneh r1, [r0, #0x2c]
	bxne lr
	bic r1, r1, #0x20
	strh r1, [r0, #0x2c]
	ldrh r1, [r0, #0x2c]
	tst r1, #2
	bxne lr
	mov r1, #0x12
	str r1, [r0, #4]
	mov r1, #0
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	bx lr
	arm_func_end ov1_0213EF40

	arm_func_start ov1_0213EF80
ov1_0213EF80: ; 0x0213EF80
	ldrh r0, [r0, #0x2c]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov1_0213EF80

	arm_func_start ov1_0213EF94
ov1_0213EF94: ; 0x0213EF94
	stmdb sp!, {r4, lr}
	ldrh r2, [r0, #0x2c]
	cmp r1, #0
	mov lr, #0
	orrne r2, r2, #0x200
	biceq r2, r2, #0x200
	strh r2, [r0, #0x2c]
	cmp r1, #0
	movne r3, #1
	moveq r3, #0
	ldr r2, [r0, #0x13c]
	cmp r1, #0
	str r3, [r2, #0x14]
	movne r3, #1
	ldr r2, [r0, #0x140]
	moveq r3, #0
	str r3, [r2, #0x14]
	ldrb r2, [r0, #0xdb]
	cmp r2, #0
	ble _0213F014
	mov r3, lr
	mov ip, #1
	arm_func_end ov1_0213EF94
_0213EFEC:
	add r2, r0, lr, lsl #2
	cmp r1, #0
	movne r4, ip
	ldr r2, [r2, #0xf0]
	moveq r4, r3
	str r4, [r2, #0x14]
	ldrb r2, [r0, #0xdb]
	add lr, lr, #1
	cmp lr, r2
	blt _0213EFEC
_0213F014:
	bl ov1_0213E2FC
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0213F01C
ov1_0213F01C: ; 0x0213F01C
	ldrh r0, [r0, #0x2c]
	and r0, r0, #0x200
	bx lr
	arm_func_end ov1_0213F01C

	arm_func_start ov1_0213F028
ov1_0213F028: ; 0x0213F028
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	add r0, r5, #0x14
	mov r4, r1
	bl sub_02005150
	add r0, r5, #0x64
	bl sub_02005150
	add r0, r5, #0xb0
	bl sub_02005150
	add r0, r5, #0x100
	bl sub_02005150
	mov r0, r5
	mov r1, r4
	strh r4, [r5, #2]
	bl ov1_0213F0C8
	mov r0, #0
	mov r1, #0x18000
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp]
	str r0, [r5, #8]
	mov r0, r5
	str r1, [r5, #0xc]
	str r1, [sp, #4]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_0213F028

	arm_func_start ov1_0213F094
ov1_0213F094: ; 0x0213F094
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0213F2B4
	add r0, r4, #0x100
	bl sub_020051C8
	add r0, r4, #0xb0
	bl sub_020051C8
	add r0, r4, #0x64
	bl sub_020051C8
	add r0, r4, #0x14
	bl sub_020051C8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213F094

	arm_func_start ov1_0213F0C8
ov1_0213F0C8: ; 0x0213F0C8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x1ec
	cmp r1, #7
	mov r4, r0
	addeq sp, sp, #0x1ec
	ldmeqia sp!, {r4, r5, pc}
	addhi sp, sp, #0x1ec
	ldmhiia sp!, {r4, r5, pc}
	add r0, r1, #0x30
	and r5, r0, #0xff
	ldr r1, _0213F27C ; =s_data_interface_i_03d_LZ_bin_overlay_1_021420e0
	add r0, sp, #0x18c
	mov r2, r5
	bl OS_SPrintf
	ldr r1, _0213F280 ; =s_BCO_i_03d_00_NCBR_overlay_1_021420fc
	add r0, sp, #0x12c
	mov r2, r5
	bl OS_SPrintf
	ldr r1, _0213F284 ; =s_BCO_i_03d_NCLR_overlay_1_02142110
	add r0, sp, #0xcc
	mov r2, r5
	bl OS_SPrintf
	ldr r1, _0213F288 ; =s_BCO_i_03d_00_NCER_overlay_1_02142120
	add r0, sp, #0x6c
	mov r2, r5
	bl OS_SPrintf
	ldr r1, _0213F28C ; =s_BCO_i_03d_00_cac_overlay_1_02142134
	mov r2, r5
	add r0, sp, #0xc
	bl OS_SPrintf
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0213F178
	add r2, sp, #0xcc
	str r2, [sp]
	add r1, sp, #0x6c
	str r1, [sp, #4]
	add ip, sp, #0xc
	ldr r1, _0213F290 ; =s_BCO_overlay_1_02142148
	add r2, sp, #0x18c
	add r3, sp, #0x12c
	str ip, [sp, #8]
	bl sub_0201AAE0
	arm_func_end ov1_0213F0C8
_0213F178:
	str r0, [r4, #0x60]
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #0
	str r0, [r4, #0x150]
	bl sub_02008A80
	add r1, r4, #0x100
	strh r0, [r1, #0x54]
	ldr r0, [r4, #0x60]
	mov r1, #0
	ldmia r0, {r2, r3, ip}
	str r2, [r4, #0x40]
	str r1, [r4, #0x44]
	str r3, [r4, #0x48]
	mov r0, #0x18
	str ip, [r4, #0x4c]
	bl _Znwm
	cmp r0, #0
	beq _0213F1EC
	ldr r1, _0213F294 ; =s_BCO_i055_NCLR_overlay_1_0214217c
	ldr ip, _0213F298 ; =s_BCO_i055_00_NCER_overlay_1_0214218c
	str r1, [sp]
	ldr r1, _0213F290 ; =s_BCO_overlay_1_02142148
	ldr r2, _0213F29C ; =s_data_interface_i055_LZ_bin_overlay_1_0214214c
	ldr r3, _0213F2A0 ; =s_BCO_i055_00_NCBR_overlay_1_02142168
	str ip, [sp, #4]
	mov ip, #0
	str ip, [sp, #8]
	bl sub_0201AAE0
_0213F1EC:
	str r0, [r4, #0xfc]
	ldmia r0, {r0, r1, r2}
	str r0, [r4, #0x90]
	mov ip, #0
	str ip, [r4, #0x94]
	str r1, [r4, #0x98]
	str r2, [r4, #0x9c]
	ldr r1, [r4, #0xfc]
	mov r0, #0x18
	ldmia r1, {r1, r2, r3}
	str r1, [r4, #0xdc]
	str ip, [r4, #0xe0]
	str r2, [r4, #0xe4]
	str r3, [r4, #0xe8]
	bl _Znwm
	cmp r0, #0
	beq _0213F258
	ldr r1, _0213F2A4 ; =s_BCO_i056_NCLR_overlay_1_021421d0
	ldr ip, _0213F2A8 ; =s_BCO_i056_00_NCER_overlay_1_021421e0
	str r1, [sp]
	ldr r1, _0213F290 ; =s_BCO_overlay_1_02142148
	ldr r2, _0213F2AC ; =s_data_interface_i056_LZ_bin_overlay_1_021421a0
	ldr r3, _0213F2B0 ; =s_BCO_i056_00_NCBR_overlay_1_021421bc
	str ip, [sp, #4]
	mov ip, #0
	str ip, [sp, #8]
	bl sub_0201AAE0
_0213F258:
	str r0, [r4, #0x14c]
	ldmia r0, {r1, r2, r3}
	mov r0, #0
	str r1, [r4, #0x12c]
	str r0, [r4, #0x130]
	str r2, [r4, #0x134]
	str r3, [r4, #0x138]
	add sp, sp, #0x1ec
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0213F27C: .word s_data_interface_i_03d_LZ_bin_overlay_1_021420e0
_0213F280: .word s_BCO_i_03d_00_NCBR_overlay_1_021420fc
_0213F284: .word s_BCO_i_03d_NCLR_overlay_1_02142110
_0213F288: .word s_BCO_i_03d_00_NCER_overlay_1_02142120
_0213F28C: .word s_BCO_i_03d_00_cac_overlay_1_02142134
_0213F290: .word s_BCO_overlay_1_02142148
_0213F294: .word s_BCO_i055_NCLR_overlay_1_0214217c
_0213F298: .word s_BCO_i055_00_NCER_overlay_1_0214218c
_0213F29C: .word s_data_interface_i055_LZ_bin_overlay_1_0214214c
_0213F2A0: .word s_BCO_i055_00_NCBR_overlay_1_02142168
_0213F2A4: .word s_BCO_i056_NCLR_overlay_1_021421d0
_0213F2A8: .word s_BCO_i056_00_NCER_overlay_1_021421e0
_0213F2AC: .word s_data_interface_i056_LZ_bin_overlay_1_021421a0
_0213F2B0: .word s_BCO_i056_00_NCBR_overlay_1_021421bc

	arm_func_start ov1_0213F2B4
ov1_0213F2B4: ; 0x0213F2B4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x60]
	cmp r4, #0
	beq _0213F2E4
	beq _0213F2DC
	mov r0, r4
	bl sub_0201AB14
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov1_0213F2B4
_0213F2DC:
	mov r0, #0
	str r0, [r5, #0x60]
_0213F2E4:
	ldr r4, [r5, #0xfc]
	cmp r4, #0
	beq _0213F30C
	beq _0213F304
	mov r0, r4
	bl sub_0201AB14
	mov r0, r4
	bl _ZdlPv
_0213F304:
	mov r0, #0
	str r0, [r5, #0xfc]
_0213F30C:
	ldr r4, [r5, #0x14c]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0213F32C
	mov r0, r4
	bl sub_0201AB14
	mov r0, r4
	bl _ZdlPv
_0213F32C:
	mov r0, #0
	str r0, [r5, #0x14c]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov1_0213F338
ov1_0213F338: ; 0x0213F338
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_0213F34C: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _0213F37C ; case 1
	b _0213F384 ; case 2
	b _0213F38C ; case 3
	b _0213F394 ; case 4
	b _0213F39C ; case 5
	b _0213F3A4 ; case 6
	b _0213F3AC ; case 7
	b _0213F3B4 ; case 8
	b _0213F3BC ; case 9
	b _0213F3C4 ; case 10
	b _0213F3CC ; case 11
	arm_func_end ov1_0213F338
_0213F37C:
	bl ov1_0213F3D4
	ldmia sp!, {r3, pc}
_0213F384:
	bl ov1_0213F41C
	ldmia sp!, {r3, pc}
_0213F38C:
	bl ov1_0213F490
	ldmia sp!, {r3, pc}
_0213F394:
	bl ov1_0213F504
	ldmia sp!, {r3, pc}
_0213F39C:
	bl ov1_0213F578
	ldmia sp!, {r3, pc}
_0213F3A4:
	bl ov1_0213F5A0
	ldmia sp!, {r3, pc}
_0213F3AC:
	bl ov1_0213F608
	ldmia sp!, {r3, pc}
_0213F3B4:
	bl ov1_0213F688
	ldmia sp!, {r3, pc}
_0213F3BC:
	bl ov1_0213F6D0
	ldmia sp!, {r3, pc}
_0213F3C4:
	bl ov1_0213F794
	ldmia sp!, {r3, pc}
_0213F3CC:
	bl ov1_0213F7E4
	ldmia sp!, {r3, pc}

	arm_func_start ov1_0213F3D4
ov1_0213F3D4: ; 0x0213F3D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #1
	ldmloia sp!, {r4, pc}
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x49c]
	ldr r1, _0213F418 ; =s_system_000_overlay_1_021421f4
	bl sub_02034184
	mov r0, r4
	mov r1, #2
	bl ov1_0213F960
	ldmia sp!, {r4, pc}
	.align 2, 0
_0213F418: .word s_system_000_overlay_1_021421f4
	arm_func_end ov1_0213F3D4

	arm_func_start ov1_0213F41C
ov1_0213F41C: ; 0x0213F41C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrh r2, [r4]
	mov r0, #0x28
	mov r1, #0x1000
	mov r3, #6
	bl sub_02007068
	str r0, [r4, #0x120]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	str r0, [sp]
	str r0, [r4, #0x118]
	str r1, [r4, #0x11c]
	ldrh r0, [r4]
	str r1, [sp, #4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #6
	addls sp, sp, #8
	ldmlsia sp!, {r4, pc}
	mov r2, #0x1000
	mov r0, r4
	mov r1, #3
	str r2, [r4, #0x120]
	bl ov1_0213F960
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213F41C

	arm_func_start ov1_0213F490
ov1_0213F490: ; 0x0213F490
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrh r2, [r4]
	mov r0, #0x28
	mov r1, #0x1000
	mov r3, #0xa
	bl sub_02007068
	str r0, [r4, #0x124]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	str r0, [sp]
	str r0, [r4, #0x118]
	str r1, [r4, #0x11c]
	ldrh r0, [r4]
	str r1, [sp, #4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0xa
	addlo sp, sp, #8
	ldmloia sp!, {r4, pc}
	mov r2, #0x1000
	mov r0, r4
	mov r1, #4
	str r2, [r4, #0x124]
	bl ov1_0213F960
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213F490

	arm_func_start ov1_0213F504
ov1_0213F504: ; 0x0213F504
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldrh r2, [r4]
	mov r0, #0x100000
	sub r1, r0, #0x160000
	mov r3, #8
	bl sub_02007068
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #8]
	str r2, [sp, #0xc]
	add r1, r1, r0
	str r1, [r4, #0x2c]
	str r2, [r4, #0x30]
	ldrh r0, [r4]
	str r1, [sp, #8]
	str r1, [sp]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	str r2, [sp, #4]
	cmp r0, #8
	addls sp, sp, #0x10
	ldmlsia sp!, {r4, pc}
	mov r0, r4
	mov r1, #5
	bl ov1_0213F960
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213F504

	arm_func_start ov1_0213F578
ov1_0213F578: ; 0x0213F578
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrh r1, [r0]
	cmp r1, #0x30
	ldmlsia sp!, {r3, pc}
	mov r1, #6
	bl ov1_0213F960
	ldmia sp!, {r3, pc}
	arm_func_end ov1_0213F578

	arm_func_start ov1_0213F5A0
ov1_0213F5A0: ; 0x0213F5A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x100
	ldrh r1, [r0, #0x54]
	ldr r0, [r4, #0x150]
	bl sub_02008A38
	add r0, r4, #0x100
	ldrh r1, [r0, #0x54]
	ldr r0, [r4, #0x150]
	bl sub_02008828
	strh r0, [r4, #0x3e]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0x20
	ldmlsia sp!, {r4, pc}
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x3b
	bl sub_02034C44
	mov r0, r4
	mov r1, #7
	bl ov1_0213F960
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213F5A0

	arm_func_start ov1_0213F608
ov1_0213F608: ; 0x0213F608
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r2, [r4]
	cmp r2, #8
	bhi _0213F63C
	mov r0, #0x1f
	mov r1, #0
	mov r3, #8
	bl sub_02007068
	and r0, r0, #0xff
	str r0, [r4, #0xc4]
	mov r0, #0x1f
	str r0, [r4, #0x78]
	arm_func_end ov1_0213F608
_0213F63C:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x54]
	ldr r0, [r4, #0x150]
	bl sub_02008A38
	add r0, r4, #0x100
	ldrh r1, [r0, #0x54]
	ldr r0, [r4, #0x150]
	bl sub_02008828
	strh r0, [r4, #0x3e]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #8
	ldmloia sp!, {r4, pc}
	mov r0, r4
	mov r1, #8
	bl ov1_0213F960
	ldmia sp!, {r4, pc}

	arm_func_start ov1_0213F688
ov1_0213F688: ; 0x0213F688
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0x18
	ldmlsia sp!, {r4, pc}
	bl sub_0201001C
	add r0, r0, #0x1000
	mov r1, #1
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	mov r0, r4
	mov r1, #9
	bl ov1_0213F960
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213F688

	arm_func_start ov1_0213F6D0
ov1_0213F6D0: ; 0x0213F6D0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	mov r0, #0x60000
	rsb r0, r0, #0
	ldrh r2, [r4]
	sub r1, r0, #0x120000
	mov r3, #8
	bl sub_02007068
	ldr lr, [r4, #0xc]
	ldr r2, [r4, #8]
	mov r1, #0x100000
	add ip, r2, r0
	str ip, [r4, #0x2c]
	str lr, [r4, #0x30]
	ldrh r2, [r4]
	mov r0, #0x3b000
	mov r3, #8
	str lr, [sp, #0x1c]
	str ip, [sp, #0x18]
	str ip, [sp, #0x10]
	str lr, [sp, #0x14]
	bl sub_02007068
	ldr r2, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, r2, r0
	add r1, r1, #0x5000
	str r2, [r4, #0x7c]
	str r1, [r4, #0x80]
	str r2, [r4, #0xc8]
	str r1, [r4, #0xcc]
	ldrh r0, [r4]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp]
	str r1, [sp, #4]
	cmp r0, #8
	addls sp, sp, #0x20
	ldmlsia sp!, {r4, pc}
	mov r0, r4
	mov r1, #0xa
	bl ov1_0213F960
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213F6D0

	arm_func_start ov1_0213F794
ov1_0213F794: ; 0x0213F794
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r2, [r4]
	mov r0, #0x1000
	mov r1, #0x28
	mov r3, #0xa
	bl sub_02007068
	str r0, [r4, #0x124]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0xa
	ldmlsia sp!, {r4, pc}
	mov r2, #0x28
	mov r0, r4
	mov r1, #0xb
	str r2, [r4, #0x124]
	bl ov1_0213F960
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213F794

	arm_func_start ov1_0213F7E4
ov1_0213F7E4: ; 0x0213F7E4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r2, [r4]
	mov r0, #0x1000
	mov r1, #0x28
	mov r3, #6
	bl sub_02007068
	str r0, [r4, #0x120]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #6
	ldmlsia sp!, {r4, pc}
	mov r0, r4
	mov r1, #0
	bl ov1_0213F960
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213F7E4

	arm_func_start ov1_0213F82C
ov1_0213F82C: ; 0x0213F82C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _0213F8B0 ; =0x00000406
	mov r0, r5
	bl ov1_0213F970
	add r0, r5, #0x14
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x64
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0xb0
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x100
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0213F8B0: .word 0x00000406
	arm_func_end ov1_0213F82C

	arm_func_start ov1_0213F8B4
ov1_0213F8B4: ; 0x0213F8B4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrh r1, [r4, #2]
	cmp r1, #7
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	mov r1, #1
	bl ov1_0213F960
	mov r0, #0x28
	str r0, [r4, #0x120]
	str r0, [r4, #0x124]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mov ip, #0
	str r1, [r4, #0x118]
	str r0, [r4, #0x11c]
	strh ip, [r4, #0x8e]
	str ip, [r4, #0x78]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r2, r2, #0x3b000
	str r2, [r4, #0x7c]
	add r2, r3, #0x5000
	str r2, [r4, #0x80]
	mov r2, #1
	strh r2, [r4, #0xda]
	str ip, [r4, #0xc4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r2, r2, #0x3b000
	str r2, [r4, #0xc8]
	add r2, r3, #0x5000
	str r2, [r4, #0xcc]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r2, r2, #0x100000
	str r2, [r4, #0x2c]
	str r1, [sp]
	str r0, [sp, #4]
	str r3, [r4, #0x30]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213F8B4

	arm_func_start ov1_0213F960
ov1_0213F960: ; 0x0213F960
	mov r2, #0
	strh r2, [r0]
	str r1, [r0, #4]
	bx lr
	arm_func_end ov1_0213F960

	arm_func_start ov1_0213F970
ov1_0213F970: ; 0x0213F970
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x100
	mov r4, r1
	ldrh r1, [r0, #0x2a]
	bl sub_02005FDC
	add r4, r4, r0
	str r4, [r5, #0x104]
	ldrh r1, [r5, #0x3e]
	add r0, r5, #0x14
	bl sub_02005FDC
	add r4, r4, r0
	str r4, [r5, #0x18]
	ldrh r1, [r5, #0x8e]
	add r0, r5, #0x64
	bl sub_02005FDC
	add r4, r4, r0
	str r4, [r5, #0x68]
	ldrh r1, [r5, #0xda]
	add r0, r5, #0xb0
	bl sub_02005FDC
	add r0, r4, r0
	str r0, [r5, #0xb4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov1_0213F970

	arm_func_start ov1_0213F9D0
ov1_0213F9D0: ; 0x0213F9D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0213F9F8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213F9D0

	arm_func_start ov1_0213F9E4
ov1_0213F9E4: ; 0x0213F9E4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov1_0213FB4C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213F9E4

	arm_func_start ov1_0213F9F8
ov1_0213F9F8: ; 0x0213F9F8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r0, #0xb8
	mov r5, r1
	mov r6, r2
	bl _Znwm
	movs r4, r0
	beq _0213FA3C
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, r5
	mov r2, #1
	str r3, [sp, #8]
	bl sub_02002BC4
	mov r4, r0
	arm_func_end ov1_0213F9F8
_0213FA3C:
	mov r0, #0xb8
	bl _Znwm
	movs r5, r0
	beq _0213FA6C
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, r6
	mov r2, #1
	str r3, [sp, #8]
	bl sub_02002BC4
	mov r5, r0
_0213FA6C:
	ldr r0, [r5, #0x50]
	mov r1, #0
	mov r0, r0, lsr #1
	bic r3, r0, #7
	ldr r0, [r4, #0x50]
	mov r2, r1
	add r6, r3, #8
	bl NNS_GfdAllocLnkTexVram
	mov r1, #0
	mov r6, r6, lsl #1
	str r0, [r7]
	mov r0, r6
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	str r0, [r7, #4]
	ldr r0, [r7]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0xd
	str r0, [r7, #8]
	ldr r0, [r7, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0xd
	str r0, [r7, #0xc]
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	bl DC_FlushRange
	bl GX_BeginLoadTexPltt
	ldr r0, [r5, #0x4c]
	ldr r1, [r7, #0xc]
	mov r2, r6
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	bl DC_FlushRange
	bl GX_BeginLoadTex
	ldr r1, [r7, #8]
	ldr r0, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	bl GX_LoadTex
	bl GX_EndLoadTex
	cmp r4, #0
	beq _0213FB28
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0213FB28:
	cmp r5, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start ov1_0213FB4C
ov1_0213FB4C: ; 0x0213FB4C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r4, #4]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r4, pc}
	arm_func_end ov1_0213FB4C

    .rodata
DAT_overlay_1_0213fb68: ; 0x0213FB68
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_1_0213fb6c: ; 0x0213FB6C
	.byte 0x00, 0x80, 0xFA, 0xFF
DAT_overlay_1_0213fb70: ; 0x0213FB70
	.byte 0x00, 0x20, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x01, 0x00
DAT_overlay_1_0213fb80: ; 0x0213FB80
	.byte 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11
	.byte 0x12, 0x00, 0x00, 0x00
DAT_overlay_1_0213fb94: ; 0x0213FB94
	.byte 0x1F, 0x42, 0x1F, 0x43, 0xFF, 0x43, 0xF8, 0x43, 0xF0, 0x43, 0xF0, 0x63
	.byte 0xF0, 0x7F, 0x10, 0x7F, 0x10, 0x7E, 0x18, 0x7E, 0x1F, 0x7E, 0x1F, 0x62
DAT_overlay_1_0213fbac: ; 0x0213FBAC
	.byte 0x00, 0x20, 0x00, 0x00
	.byte 0xCC, 0x1C, 0x00, 0x00, 0x99, 0x19, 0x00, 0x00, 0x66, 0x16, 0x00, 0x00, 0x33, 0x13, 0x00, 0x00
	.byte 0x99, 0x11, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
DAT_overlay_1_0213fbc8: ; 0x0213FBC8
	.byte 0x00, 0x40, 0x00, 0x00, 0x99, 0x39, 0x00, 0x00
	.byte 0x33, 0x33, 0x00, 0x00, 0xCC, 0x2C, 0x00, 0x00, 0x66, 0x26, 0x00, 0x00, 0x33, 0x23, 0x00, 0x00
	.byte 0x00, 0x20, 0x00, 0x00
DAT_overlay_1_0213fbe4: ; 0x0213FBE4
	.byte 0x10, 0x27
DAT_overlay_1_0213fbe6: ; 0x0213FBE6
	.byte 0xE8, 0x03, 0x64, 0x00, 0x0A, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x0C, 0x00, 0x0C, 0x00, 0x00, 0x00
DAT_overlay_1_0213fbf8: ; 0x0213FBF8
	.byte 0x00, 0x40, 0x00, 0x00
DAT_overlay_1_0213fbfc: ; 0x0213FBFC
	.byte 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x20, 0x00, 0x00
DAT_overlay_1_0213fc14: ; 0x0213FC14
	.byte 0x00, 0x08, 0x00, 0x00
DAT_overlay_1_0213fc18: ; 0x0213FC18
	.byte 0x33, 0x07, 0x00, 0x00, 0x66, 0x06, 0x00, 0x00
	.byte 0x99, 0x05, 0x00, 0x00, 0xCC, 0x04, 0x00, 0x00, 0x33, 0x03, 0x00, 0x00, 0x99, 0x01, 0x00, 0x00
DAT_overlay_1_0213fc30: ; 0x0213FC30
	.byte 0x39, 0x7F
DAT_overlay_1_0213fc32: ; 0x0213FC32
	.byte 0x9F, 0x73
DAT_overlay_1_0213fc34: ; 0x0213FC34
	.byte 0xFF, 0x33, 0x00, 0x00
DAT_overlay_1_0213fc38: ; 0x0213FC38
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x84, 0x03
	.byte 0x84, 0x03, 0x84, 0x03
	.word 0x02580096
	.byte 0xB0, 0x04, 0xB4, 0x00, 0xB4, 0x00, 0xB4, 0x00
	.word 0x02580258
	.byte 0x58, 0x02, 0x1E, 0x00, 0xB4, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x08, 0x07, 0x08, 0x07, 0x08, 0x07, 0x68, 0x01, 0x68, 0x01, 0x68, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0xB4, 0x00, 0xB4, 0x00, 0x78, 0x00, 0xC2, 0x01, 0x84, 0x03
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x07, 0x08, 0x07, 0x08, 0x07, 0x08, 0x07, 0x60, 0x09
	.byte 0x10, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x00, 0xC2, 0x01, 0x84, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
DAT_overlay_1_0213fcac: ; 0x0213FCAC
	.byte 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
DAT_overlay_1_02140250: ; 0x02140250
	.byte 0x1E, 0x00, 0x3C, 0x00, 0xFF, 0xFF, 0x00, 0x00
DAT_overlay_1_02140258: ; 0x02140258
	.byte 0x28, 0x00, 0x00, 0x00
DAT_overlay_1_0214025c: ; 0x0214025C
	.byte 0x00, 0x04, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
DAT_overlay_1_02140270: ; 0x02140270
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00
DAT_overlay_1_02140280: ; 0x02140280
	.byte 0x28, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
DAT_overlay_1_02140288: ; 0x02140288
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x30, 0x00, 0x00
DAT_overlay_1_02140294: ; 0x02140294
	.byte 0x00, 0x10, 0x00, 0x00
DAT_overlay_1_02140298: ; 0x02140298
	.byte 0x00, 0x10, 0x00, 0x00
DAT_overlay_1_0214029c: ; 0x0214029C
	.byte 0x01, 0x00, 0x00, 0x00
	.byte 0x14, 0x10, 0x00, 0x00, 0x14, 0x10, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x28, 0x10, 0x00, 0x00
	.byte 0x28, 0x10, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x3D, 0x10, 0x00, 0x00, 0x3D, 0x10, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x51, 0x10, 0x00, 0x00, 0x51, 0x10, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x66, 0x10, 0x00, 0x00, 0x66, 0x10, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x7A, 0x10, 0x00, 0x00
	.byte 0x7A, 0x10, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x8F, 0x10, 0x00, 0x00, 0x8F, 0x10, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0xA3, 0x10, 0x00, 0x00, 0xA3, 0x10, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0xB8, 0x10, 0x00, 0x00, 0xB8, 0x10, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0xCC, 0x10, 0x00, 0x00
	.byte 0xCC, 0x10, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xE1, 0x10, 0x00, 0x00, 0xE1, 0x10, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0xF5, 0x10, 0x00, 0x00, 0xF5, 0x10, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x0A, 0x11, 0x00, 0x00, 0x0A, 0x11, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x1E, 0x11, 0x00, 0x00
	.byte 0x1E, 0x11, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x33, 0x11, 0x00, 0x00, 0x33, 0x11, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x37, 0x11, 0x00, 0x00, 0x37, 0x11, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x3B, 0x11, 0x00, 0x00, 0x3B, 0x11, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x3F, 0x11, 0x00, 0x00
	.byte 0x3F, 0x11, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x43, 0x11, 0x00, 0x00, 0x43, 0x11, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x47, 0x11, 0x00, 0x00, 0x47, 0x11, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x47, 0x11, 0x00, 0x00, 0x47, 0x11, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x47, 0x11, 0x00, 0x00
	.byte 0x47, 0x11, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x47, 0x11, 0x00, 0x00, 0x47, 0x11, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x47, 0x11, 0x00, 0x00, 0x47, 0x11, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x47, 0x11, 0x00, 0x00, 0x47, 0x11, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x66, 0x0E, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0xCC, 0x0C, 0x00, 0x00, 0x66, 0x0E, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x33, 0x0B, 0x00, 0x00, 0xCC, 0x0C, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x99, 0x09, 0x00, 0x00
	.byte 0x33, 0x0B, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x99, 0x09, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x33, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x66, 0x06, 0x00, 0x00, 0x33, 0x07, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x99, 0x05, 0x00, 0x00
	.byte 0x66, 0x06, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0xCC, 0x04, 0x00, 0x00, 0x99, 0x05, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0xCC, 0x04, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x33, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x66, 0x02, 0x00, 0x00
	.byte 0x33, 0x03, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x99, 0x01, 0x00, 0x00, 0x66, 0x02, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0xCC, 0x00, 0x00, 0x00, 0x99, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xCC, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
DAT_overlay_1_0214048c: ; 0x0214048C
	.byte 0x32, 0x00
DAT_overlay_1_0214048e: ; 0x0214048E
	.byte 0x19, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00
DAT_overlay_1_02140494: ; 0x02140494
	.byte 0x0C, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x19, 0x00
	.byte 0x32, 0x00, 0x19, 0x00, 0x0F, 0x00, 0x19, 0x00, 0x0A, 0x00, 0x0F, 0x00, 0x14, 0x00, 0x0A, 0x00
	.byte 0x14, 0x00, 0x0F, 0x00, 0x1E, 0x00, 0x00, 0x00
DAT_overlay_1_021404b8: ; 0x021404B8
	.byte 0x00, 0x00, 0x10, 0x00
DAT_overlay_1_021404bc: ; 0x021404BC
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_1_021404c0: ; 0x021404C0
	.byte 0x00, 0x00, 0x10, 0x00
DAT_overlay_1_021404c4: ; 0x021404C4
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_1_021404c8: ; 0x021404C8
	.byte 0x00, 0x00, 0xFC, 0xFF
DAT_overlay_1_021404cc: ; 0x021404CC
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_1_021404d0: ; 0x021404D0
	.byte 0x00, 0x00, 0x04, 0x00
DAT_overlay_1_021404d4: ; 0x021404D4
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_1_021404d8: ; 0x021404D8
	.byte 0x00, 0x00, 0x10, 0x00
DAT_overlay_1_021404dc: ; 0x021404DC
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_1_021404e0: ; 0x021404E0
	.byte 0x00, 0x00, 0xF0, 0xFF
DAT_overlay_1_021404e4: ; 0x021404E4
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_1_021404e8: ; 0x021404E8
	.byte 0x00, 0x80, 0x00, 0x00
DAT_overlay_1_021404ec: ; 0x021404EC
	.byte 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x20, 0x00, 0x00
DAT_overlay_1_021404f4: ; 0x021404F4
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_1_021404f8: ; 0x021404F8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFE, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x80, 0x01, 0x00
	.byte 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFE, 0xFF, 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x80, 0x01, 0x00
	.byte 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0xFD, 0xFF, 0x00, 0x40, 0xFE, 0xFF, 0x00, 0xC0, 0x00, 0x00
	.byte 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x40, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x00, 0x00, 0x40, 0x02, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFD, 0xFF, 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x00, 0x03, 0x00, 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x80, 0xFE, 0xFF
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0xFC, 0xFF, 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x40, 0xFF, 0xFF
	.byte 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x40, 0x02, 0x00, 0x00, 0x40, 0xFE, 0xFF, 0x00, 0xC0, 0xFD, 0xFF
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0xC0, 0x03, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFB, 0xFF, 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x80, 0xFE, 0xFF
	.byte 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x80, 0x01, 0x00, 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x80, 0x04, 0x00
	.byte 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x00, 0xFD, 0xFF, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0xFA, 0xFF, 0x00, 0x40, 0xFE, 0xFF, 0x00, 0xC0, 0xFD, 0xFF
	.byte 0x00, 0x40, 0xFE, 0xFF, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x40, 0xFE, 0xFF, 0x00, 0xC0, 0x03, 0x00
	.byte 0x00, 0x40, 0xFE, 0xFF, 0x00, 0x40, 0xFC, 0xFF, 0x00, 0x00, 0x01, 0x00, 0x00, 0x40, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x40, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x40, 0x05, 0x00
	.byte 0x00, 0x00, 0x01, 0x00

    .section .sinit,4 ; 0x02140734

    .data
PTR_ptr_FUN_020835bc_overlay_1_02140740: ; 0x02140740
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_12CBattleScene_overlay_1_0214074c
	.word PTR_ptr_FUN_02083578_0208a804
s_12CBattleScene_overlay_1_0214074c: ; 0x0214074C
	.asciz "12CBattleScene"
_0214075B:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_02140740
ptr_FUN_overlay_1_0211cd80_overlay_1_02140764: ; 0x02140764
	.word ov1_0211CD80
ptr_FUN_overlay_1_0211cde0_overlay_1_02140768: ; 0x02140768
	.word ov1_0211CDE0
ptr_FUN_overlay_1_0211f11c_overlay_1_0214076c: ; 0x0214076C
	.word ov1_0211F11C
ptr_FUN_overlay_1_02121b44_overlay_1_02140770: ; 0x02140770
	.word ov1_02121B44
ptr_FUN_overlay_1_02121d50_overlay_1_02140774: ; 0x02140774
	.word ov1_02121D50
ptr_FUN_02007ce0_overlay_1_02140778: ; 0x02140778
	.word sub_02007CE0
ptr_FUN_02007cc4_overlay_1_0214077c: ; 0x0214077C
	.word sub_02007CC4
ptr_FUN_overlay_1_0211ce48_overlay_1_02140780: ; 0x02140780
	.word ov1_0211CE48
ptr_FUN_overlay_1_0211cfb8_overlay_1_02140784: ; 0x02140784
	.word ov1_0211CFB8
ptr_FUN_overlay_1_0211de7c_overlay_1_02140788: ; 0x02140788
	.word ov1_0211DE7C
	.word ov1_02123064
s_data_param_BattleAssist_bin_overlay_1_02140790: ; 0x02140790
	.asciz "data/param/BattleAssist.bin"
s_data_param_BattleAssistPartner_b_overlay_1_021407ac: ; 0x021407AC
	.asciz "data/param/BattleAssistPartner.bin"
_021407CF:
	.byte 0x00
s_bp_03d_overlay_1_021407d0: ; 0x021407D0
	.asciz "bp%03d"
_021407D7:
	.byte 0x00
s_data_pokeOBJ_overlay_1_021407d8: ; 0x021407D8
	.asciz "data/pokeOBJ"
_021407E5:
	.byte 0x00, 0x00, 0x00
s_data_script_battle_sequence_s_03_overlay_1_021407e8: ; 0x021407E8
	.asciz "data/script/battle/sequence/s%03d.fsb"
_0214080E:
	.byte 0x00, 0x00
s_initialize_overlay_1_02140810: ; 0x02140810
	.asciz "initialize"
_0214081B:
	.byte 0x00
s_proc_overlay_1_0214081c: ; 0x0214081C
	.asciz "proc"
_02140821:
	.byte 0x00, 0x00, 0x00
s_data_script_battle_tutorial_t_03_overlay_1_02140824: ; 0x02140824
	.asciz "data/script/battle/tutorial/t%03d.fsb"
_0214084A:
	.byte 0x00, 0x00
s_data_script_battle_start_s_03d_f_overlay_1_0214084c: ; 0x0214084C
	.asciz "data/script/battle/start/s%03d.fsb"
_0214086F:
	.byte 0x00
s_system_001_overlay_1_02140870: ; 0x02140870
	.asciz "system_001"
_0214087B:
	.byte 0x00
s_data_interface_i001_LZ_bin_overlay_1_0214087c: ; 0x0214087C
	.asciz "data/interface/i001_LZ.bin"
_02140897:
	.byte 0x00
s_BLN_i001_00_NCBR_overlay_1_02140898: ; 0x02140898
	.asciz "BLN:i001_00.NCBR"
_021408A9:
	.byte 0x00, 0x00, 0x00
s_BLN_i001_NCLR_overlay_1_021408ac: ; 0x021408AC
	.asciz "BLN:i001.NCLR"
_021408BA:
	.byte 0x00, 0x00
s_BLN_i001_00_NCER_overlay_1_021408bc: ; 0x021408BC
	.asciz "BLN:i001_00.NCER"
_021408CD:
	.byte 0x00, 0x00, 0x00
s_BLN_i001_00_cac_overlay_1_021408d0: ; 0x021408D0
	.asciz "BLN:i001_00.cac"
s_BLN_overlay_1_021408e0: ; 0x021408E0
	.asciz "BLN"
s_data_interface_i072_00_ntft_overlay_1_021408e4: ; 0x021408E4
	.asciz "data/interface/i072_00.ntft"
s_data_interface_i072_00_ntfp_overlay_1_02140900: ; 0x02140900
	.asciz "data/interface/i072_00.ntfp"
s_data_interface_i072_01_ntft_overlay_1_0214091c: ; 0x0214091C
	.asciz "data/interface/i072_01.ntft"
s_data_interface_i072_01_ntfp_overlay_1_02140938: ; 0x02140938
	.asciz "data/interface/i072_01.ntfp"
s_data_interface_i_03d_LZ_bin_overlay_1_02140954: ; 0x02140954
	.asciz "data/interface/i%03d_LZ.bin"
s_BAL_i_03d_00_NCBR_overlay_1_02140970: ; 0x02140970
	.asciz "BAL:i%03d_00.NCBR"
_02140982:
	.byte 0x00, 0x00
s_BAL_i_03d_NCLR_overlay_1_02140984: ; 0x02140984
	.asciz "BAL:i%03d.NCLR"
_02140993:
	.byte 0x00
s_BAL_i_03d_00_NCER_overlay_1_02140994: ; 0x02140994
	.asciz "BAL:i%03d_00.NCER"
_021409A6:
	.byte 0x00, 0x00
s_BAL_i_03d_00_cac_overlay_1_021409a8: ; 0x021409A8
	.asciz "BAL:i%03d_00.cac"
_021409B9:
	.byte 0x00, 0x00, 0x00
s_BAL_overlay_1_021409bc: ; 0x021409BC
	.asciz "BAL"
PTR_ptr_FUN_020835bc_overlay_1_021409c0: ; 0x021409C0
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_16CBattleEnemyData_overlay_1_021409cc
	.word PTR_ptr_FUN_02083578_0208b49c
s_16CBattleEnemyData_overlay_1_021409cc: ; 0x021409CC
	.asciz "16CBattleEnemyData"
_021409DF:
	.byte 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_021409c0
ptr_FUN_overlay_1_02125134_overlay_1_021409e8: ; 0x021409E8
	.word ov1_02125134
ptr_FUN_overlay_1_02125190_overlay_1_021409ec: ; 0x021409EC
	.word ov1_02125190
ptr_FUN_02014034_overlay_1_021409f0: ; 0x021409F0
	.word sub_02014034
ptr_FUN_0201437c_overlay_1_021409f4: ; 0x021409F4
	.word sub_0201437C
ptr_FUN_020143b8_overlay_1_021409f8: ; 0x021409F8
	.word sub_020143B8
	.word sub_02014414
	.word sub_020150AC
s_data_script_battle_pokemon_p_03d_overlay_1_02140a04: ; 0x02140A04
	.asciz "data/script/battle/pokemon/p%03d.fsb"
_02140A29:
	.byte 0x00, 0x00, 0x00
PTR_ptr_FUN_020835bc_overlay_1_02140a2c: ; 0x02140A2C
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_12CBattleEnemy_overlay_1_02140a38
	.word PTR_ptr_FUN_02083578_0208b478
s_12CBattleEnemy_overlay_1_02140a38: ; 0x02140A38
	.asciz "12CBattleEnemy"
_02140A47:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x0A, 0x14, 0x02
ptr_FUN_overlay_0_0212546c_overlay_1_02140a50: ; 0x02140A50
	.word ov1_0212546C
ptr_FUN_overlay_1_02125604_overlay_1_02140a54: ; 0x02140A54
	.word ov1_02125604
ptr_FUN_overlay_1_021257a4_overlay_1_02140a58: ; 0x02140A58
	.word ov1_021257A4
ptr_FUN_overlay_1_02125d24_overlay_1_02140a5c: ; 0x02140A5C
	.word ov1_02125D24
ptr_FUN_overlay_1_021260e4_overlay_1_02140a60: ; 0x02140A60
	.word ov1_021260E4
s_initialize_overlay_1_02140a64: ; 0x02140A64
	.asciz "initialize"
_02140A6F:
	.byte 0x00
s_proc_overlay_1_02140a70: ; 0x02140A70
	.asciz "proc"
_02140A75:
	.byte 0x00, 0x00, 0x00
s_terminate_overlay_1_02140a78: ; 0x02140A78
	.asciz "terminate"
_02140A82:
	.byte 0x00, 0x00
PTR_ptr_FUN_020835bc_overlay_1_02140a84: ; 0x02140A84
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_23CBattleAttackEffectData_overlay_1_02140a90
	.word PTR_ptr_FUN_02083578_0208b49c
s_23CBattleAttackEffectData_overlay_1_02140a90: ; 0x02140A90
	.asciz "23CBattleAttackEffectData"
_02140AAA:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_02140a84
ptr_FUN_overlay_1_021269b8_overlay_1_02140ab4: ; 0x02140AB4
	.word ov1_021269B8
ptr_FUN_overlay_1_02126a74_overlay_1_02140ab8: ; 0x02140AB8
	.word ov1_02126A74
ptr_FUN_02014034_overlay_1_02140abc: ; 0x02140ABC
	.word sub_02014034
ptr_FUN_0201437c_overlay_1_02140ac0: ; 0x02140AC0
	.word sub_0201437C
ptr_FUN_020143b8_overlay_1_02140ac4: ; 0x02140AC4
	.word sub_020143B8
	.word sub_02014414
	.word sub_020150AC
s_ACT_e_03d_a_02d_NANR_overlay_1_02140ad0: ; 0x02140AD0
	.asciz "ACT:e%03d_a%02d.NANR"
_02140AE5:
	.byte 0x00, 0x00, 0x00
s_data_script_battle_effect_e_03d_overlay_1_02140ae8: ; 0x02140AE8
	.asciz "data/script/battle/effect/e%03d.fsb"
PTR_ptr_FUN_020835bc_overlay_1_02140b0c: ; 0x02140B0C
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_19CBattleAttackEffect_overlay_1_02140b18
	.word PTR_ptr_FUN_02083578_0208b478
s_19CBattleAttackEffect_overlay_1_02140b18: ; 0x02140B18
	.asciz "19CBattleAttackEffect"
_02140B2E:
	.byte 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_02140b0c
ptr_FUN_overlay_1_02126bd4_overlay_1_02140b38: ; 0x02140B38
	.word ov1_02126BD4
ptr_FUN_overlay_1_02126c00_overlay_1_02140b3c: ; 0x02140B3C
	.word ov1_02126C00
ptr_FUN_overlay_1_02126c34_overlay_1_02140b40: ; 0x02140B40
	.word ov1_02126C34
ptr_FUN_overlay_1_02127010_overlay_1_02140b44: ; 0x02140B44
	.word ov1_02127010
ptr_FUN_overlay_1_021270b8_overlay_1_02140b48: ; 0x02140B48
	.word ov1_021270B8
s_initialize_overlay_1_02140b4c: ; 0x02140B4C
	.asciz "initialize"
_02140B57:
	.byte 0x00
s_proc_overlay_1_02140b58: ; 0x02140B58
	.asciz "proc"
_02140B5D:
	.byte 0x00, 0x00, 0x00
s_vanish_overlay_1_02140b60: ; 0x02140B60
	.asciz "vanish"
_02140B67:
	.byte 0x00
s_terminate_overlay_1_02140b68: ; 0x02140B68
	.asciz "terminate"
_02140B72:
	.byte 0x00, 0x00
s_BEX_overlay_1_02140b74: ; 0x02140B74
	.asciz "BEX"
s_data_interface_i034_LZ_bin_overlay_1_02140b78: ; 0x02140B78
	.asciz "data/interface/i034_LZ.bin"
_02140B93:
	.byte 0x00
s_BEX_i034_00_NCBR_overlay_1_02140b94: ; 0x02140B94
	.asciz "BEX:i034_00.NCBR"
_02140BA5:
	.byte 0x00, 0x00, 0x00
s_BEX_i034_NCLR_overlay_1_02140ba8: ; 0x02140BA8
	.asciz "BEX:i034.NCLR"
_02140BB6:
	.byte 0x00, 0x00
s_BEX_i034_00_NCER_overlay_1_02140bb8: ; 0x02140BB8
	.asciz "BEX:i034_00.NCER"
_02140BC9:
	.byte 0x00, 0x00, 0x00
s_BEX_i034_00_cac_overlay_1_02140bcc: ; 0x02140BCC
	.asciz "BEX:i034_00.cac"
s_BSW_overlay_1_02140bdc: ; 0x02140BDC
	.asciz "BSW"
s_data_interface_i035_LZ_bin_overlay_1_02140be0: ; 0x02140BE0
	.asciz "data/interface/i035_LZ.bin"
_02140BFB:
	.byte 0x00
s_BSW_i035_00_NCBR_overlay_1_02140bfc: ; 0x02140BFC
	.asciz "BSW:i035_00.NCBR"
_02140C0D:
	.byte 0x00, 0x00, 0x00
s_BSW_i035_NCLR_overlay_1_02140c10: ; 0x02140C10
	.asciz "BSW:i035.NCLR"
_02140C1E:
	.byte 0x00, 0x00
s_BSW_i035_00_NCER_overlay_1_02140c20: ; 0x02140C20
	.asciz "BSW:i035_00.NCER"
_02140C31:
	.byte 0x00, 0x00, 0x00
s_BSW_i035_00_cac_overlay_1_02140c34: ; 0x02140C34
	.asciz "BSW:i035_00.cac"
s_BHM_overlay_1_02140c44: ; 0x02140C44
	.asciz "BHM"
s_data_interface_i027_LZ_bin_overlay_1_02140c48: ; 0x02140C48
	.asciz "data/interface/i027_LZ.bin"
_02140C63:
	.byte 0x00
s_BHM_i027_00_NCBR_overlay_1_02140c64: ; 0x02140C64
	.asciz "BHM:i027_00.NCBR"
_02140C75:
	.byte 0x00, 0x00, 0x00
s_BHM_i027_NCLR_overlay_1_02140c78: ; 0x02140C78
	.asciz "BHM:i027.NCLR"
_02140C86:
	.byte 0x00, 0x00
s_BHM_i027_00_NCER_overlay_1_02140c88: ; 0x02140C88
	.asciz "BHM:i027_00.NCER"
_02140C99:
	.byte 0x00, 0x00, 0x00
s_BHM_i027_00_cac_overlay_1_02140c9c: ; 0x02140C9C
	.asciz "BHM:i027_00.cac"
s_data_interface_i068_LZ_bin_overlay_1_02140cac: ; 0x02140CAC
	.asciz "data/interface/i068_LZ.bin"
_02140CC7:
	.byte 0x00
s_BHM_i068_00_NCBR_overlay_1_02140cc8: ; 0x02140CC8
	.asciz "BHM:i068_00.NCBR"
_02140CD9:
	.byte 0x00, 0x00, 0x00
s_BHM_i068_NCLR_overlay_1_02140cdc: ; 0x02140CDC
	.asciz "BHM:i068.NCLR"
_02140CEA:
	.byte 0x00, 0x00
s_BHM_i068_00_NCER_overlay_1_02140cec: ; 0x02140CEC
	.asciz "BHM:i068_00.NCER"
_02140CFD:
	.byte 0x00, 0x00, 0x00
s_BHM_i068_00_cac_overlay_1_02140d00: ; 0x02140D00
	.asciz "BHM:i068_00.cac"
s_BSW_overlay_1_02140d10: ; 0x02140D10
	.asciz "BSW"
s_data_interface_i028_LZ_bin_overlay_1_02140d14: ; 0x02140D14
	.asciz "data/interface/i028_LZ.bin"
_02140D2F:
	.byte 0x00
s_BSW_i028_00_NCBR_overlay_1_02140d30: ; 0x02140D30
	.asciz "BSW:i028_00.NCBR"
_02140D41:
	.byte 0x00, 0x00, 0x00
s_BSW_i028_NCLR_overlay_1_02140d44: ; 0x02140D44
	.asciz "BSW:i028.NCLR"
_02140D52:
	.byte 0x00, 0x00
s_BSW_i028_00_NCER_overlay_1_02140d54: ; 0x02140D54
	.asciz "BSW:i028_00.NCER"
_02140D65:
	.byte 0x00, 0x00, 0x00
s_BSW_i028_00_cac_overlay_1_02140d68: ; 0x02140D68
	.asciz "BSW:i028_00.cac"
s_BHP_overlay_1_02140d78: ; 0x02140D78
	.asciz "BHP"
s_data_battle_system_battle_number_overlay_1_02140d7c: ; 0x02140D7C
	.asciz "data/battle/system/battle_number01_LZ.bin"
_02140DA6:
	.byte 0x00, 0x00
s_BHP_battle_number01_NCBR_overlay_1_02140da8: ; 0x02140DA8
	.asciz "BHP:battle_number01.NCBR"
_02140DC1:
	.byte 0x00, 0x00, 0x00
s_BHP_battle_number01_NCLR_overlay_1_02140dc4: ; 0x02140DC4
	.asciz "BHP:battle_number01.NCLR"
_02140DDD:
	.byte 0x00, 0x00, 0x00
s_BHP_battle_number01_NCER_overlay_1_02140de0: ; 0x02140DE0
	.asciz "BHP:battle_number01.NCER"
_02140DF9:
	.byte 0x00, 0x00, 0x00
s_BHP_battle_number01_cac_overlay_1_02140dfc: ; 0x02140DFC
	.asciz "BHP:battle_number01.cac"
s_BDN_overlay_1_02140e14: ; 0x02140E14
	.asciz "BDN"
s_data_interface_i069_LZ_bin_overlay_1_02140e18: ; 0x02140E18
	.asciz "/data/interface/i069_LZ.bin"
s_BDN_i069_00_NCBR_overlay_1_02140e34: ; 0x02140E34
	.asciz "BDN:i069_00.NCBR"
_02140E45:
	.byte 0x00, 0x00, 0x00
s_BDN_i069_NCLR_overlay_1_02140e48: ; 0x02140E48
	.asciz "BDN:i069.NCLR"
_02140E56:
	.byte 0x00, 0x00
s_BDN_i069_00_NCER_overlay_1_02140e58: ; 0x02140E58
	.asciz "BDN:i069_00.NCER"
_02140E69:
	.byte 0x00, 0x00, 0x00
s_BDN_i069_00_cac_overlay_1_02140e6c: ; 0x02140E6C
	.asciz "BDN:i069_00.cac"
s_BST_overlay_1_02140e7c: ; 0x02140E7C
	.asciz "BST"
s_data_interface_i_03d_LZ_bin_overlay_1_02140e80: ; 0x02140E80
	.asciz "data/interface/i%03d_LZ.bin"
s_s_i_03d_00_NCBR_overlay_1_02140e9c: ; 0x02140E9C
	.asciz "%s:i%03d_00.NCBR"
_02140EAD:
	.byte 0x00, 0x00, 0x00
s_s_i_03d_NCLR_overlay_1_02140eb0: ; 0x02140EB0
	.asciz "%s:i%03d.NCLR"
_02140EBE:
	.byte 0x00, 0x00
s_s_i_03d_00_NCER_overlay_1_02140ec0: ; 0x02140EC0
	.asciz "%s:i%03d_00.NCER"
_02140ED1:
	.byte 0x00, 0x00, 0x00
s_s_i_03d_00_cac_overlay_1_02140ed4: ; 0x02140ED4
	.asciz "%s:i%03d_00.cac"
s_BST_overlay_1_02140ee4: ; 0x02140EE4
	.asciz "BST"
s_data_battle_system_battle_status_overlay_1_02140ee8: ; 0x02140EE8
	.asciz "data/battle/system/battle_status_debug_LZ.bin"
_02140F16:
	.byte 0x00, 0x00
s_BST_battle_status_debug_NCBR_overlay_1_02140f18: ; 0x02140F18
	.asciz "BST:battle_status_debug.NCBR"
_02140F35:
	.byte 0x00, 0x00, 0x00
s_BST_battle_status_debug_NCLR_overlay_1_02140f38: ; 0x02140F38
	.asciz "BST:battle_status_debug.NCLR"
_02140F55:
	.byte 0x00, 0x00, 0x00
s_BST_battle_status_debug_NCER_overlay_1_02140f58: ; 0x02140F58
	.asciz "BST:battle_status_debug.NCER"
_02140F75:
	.byte 0x00, 0x00, 0x00
s_BOK_overlay_1_02140f78: ; 0x02140F78
	.asciz "BOK"
s_data_interface_i026_LZ_bin_overlay_1_02140f7c: ; 0x02140F7C
	.asciz "data/interface/i026_LZ.bin"
_02140F97:
	.byte 0x00
s_BOK_i026_00_NCBR_overlay_1_02140f98: ; 0x02140F98
	.asciz "BOK:i026_00.NCBR"
_02140FA9:
	.byte 0x00, 0x00, 0x00
s_BOK_i026_NCLR_overlay_1_02140fac: ; 0x02140FAC
	.asciz "BOK:i026.NCLR"
_02140FBA:
	.byte 0x00, 0x00
s_BOK_i026_00_NCER_overlay_1_02140fbc: ; 0x02140FBC
	.asciz "BOK:i026_00.NCER"
_02140FCD:
	.byte 0x00, 0x00, 0x00
s_BCE_overlay_1_02140fd0: ; 0x02140FD0
	.asciz "BCE"
s_data_interface_i033_LZ_bin_overlay_1_02140fd4: ; 0x02140FD4
	.asciz "data/interface/i033_LZ.bin"
_02140FEF:
	.byte 0x00
s_BCE_i033_00_NCBR_overlay_1_02140ff0: ; 0x02140FF0
	.asciz "BCE:i033_00.NCBR"
_02141001:
	.byte 0x00, 0x00, 0x00
s_BCE_i033_NCLR_overlay_1_02141004: ; 0x02141004
	.asciz "BCE:i033.NCLR"
_02141012:
	.byte 0x00, 0x00
s_BCE_i033_00_NCER_overlay_1_02141014: ; 0x02141014
	.asciz "BCE:i033_00.NCER"
_02141025:
	.byte 0x00, 0x00, 0x00
s_BCE_i033_00_cac_overlay_1_02141028: ; 0x02141028
	.asciz "BCE:i033_00.cac"
ptr_FUN_overlay_1_0212a298_overlay_1_02141038: ; 0x02141038
	.word ov1_0212A298
	.word ov1_0212A2CC
	.word ov1_0212A2F4
	.word ov1_0212A31C
	.word ov1_0212A344
ptr_FUN_overlay_1_0212a36c_overlay_1_0214104c: ; 0x0214104C
	.word ov1_0212A36C
ptr_FUN_overlay_1_0212a3fc_overlay_1_02141050: ; 0x02141050
	.word ov1_0212A3FC
ptr_FUN_overlay_1_0212a48c_overlay_1_02141054: ; 0x02141054
	.word ov1_0212A48C
ptr_FUN_overlay_1_0212a4ec_overlay_1_02141058: ; 0x02141058
	.word ov1_0212A4EC
ptr_FUN_overlay_1_0212a544_overlay_1_0214105c: ; 0x0214105C
	.word ov1_0212A544
ptr_FUN_overlay_1_0212a580_overlay_1_02141060: ; 0x02141060
	.word ov1_0212A580
ptr_FUN_overlay_1_0212a600_overlay_1_02141064: ; 0x02141064
	.word ov1_0212A600
ptr_FUN_overlay_1_0212a638_overlay_1_02141068: ; 0x02141068
	.word ov1_0212A638
ptr_FUN_overlay_1_0212a668_overlay_1_0214106c: ; 0x0214106C
	.word ov1_0212A668
ptr_FUN_overlay_1_0212a69c_overlay_1_02141070: ; 0x02141070
	.word ov1_0212A69C
ptr_FUN_overlay_1_0212a6d4_overlay_1_02141074: ; 0x02141074
	.word ov1_0212A6D4
ptr_FUN_overlay_1_0212a754_overlay_1_02141078: ; 0x02141078
	.word ov1_0212A754
ptr_FUN_overlay_1_0212a7a8_overlay_1_0214107c: ; 0x0214107C
	.word ov1_0212A7A8
ptr_FUN_overlay_1_0212a7d8_overlay_1_02141080: ; 0x02141080
	.word ov1_0212A7D8
ptr_FUN_overlay_1_0212a808_overlay_1_02141084: ; 0x02141084
	.word ov1_0212A808
ptr_FUN_overlay_1_0212a85c_overlay_1_02141088: ; 0x02141088
	.word ov1_0212A85C
ptr_FUN_overlay_1_0212a8b0_overlay_1_0214108c: ; 0x0214108C
	.word ov1_0212A8B0
ptr_FUN_overlay_1_0212a90c_overlay_1_02141090: ; 0x02141090
	.word ov1_0212A90C
ptr_FUN_overlay_1_0212a940_overlay_1_02141094: ; 0x02141094
	.word ov1_0212A940
ptr_FUN_overlay_1_0212a978_overlay_1_02141098: ; 0x02141098
	.word ov1_0212A978
ptr_FUN_overlay_1_0212aa30_overlay_1_0214109c: ; 0x0214109C
	.word ov1_0212AA30
ptr_FUN_overlay_1_0212aa58_overlay_1_021410a0: ; 0x021410A0
	.word ov1_0212AA58
ptr_FUN_overlay_1_0212aaa8_overlay_1_021410a4: ; 0x021410A4
	.word ov1_0212AAA8
ptr_FUN_overlay_1_0212aae0_overlay_1_021410a8: ; 0x021410A8
	.word ov1_0212AAE0
ptr_FUN_overlay_1_0212ab20_overlay_1_021410ac: ; 0x021410AC
	.word ov1_0212AB20
ptr_FUN_overlay_1_0212ab48_overlay_1_021410b0: ; 0x021410B0
	.word ov1_0212AB48
ptr_FUN_overlay_1_0212ab78_overlay_1_021410b4: ; 0x021410B4
	.word ov1_0212AB78
ptr_FUN_overlay_1_0212aba4_overlay_1_021410b8: ; 0x021410B8
	.word ov1_0212ABA4
ptr_FUN_overlay_1_0212abd0_overlay_1_021410bc: ; 0x021410BC
	.word ov1_0212ABD0
ptr_FUN_overlay_1_0212ac24_overlay_1_021410c0: ; 0x021410C0
	.word ov1_0212AC24
ptr_FUN_overlay_1_0212ac78_overlay_1_021410c4: ; 0x021410C4
	.word ov1_0212AC78
ptr_FUN_overlay_1_0212ad28_overlay_1_021410c8: ; 0x021410C8
	.word ov1_0212AD28
ptr_FUN_overlay_1_0212ad88_overlay_1_021410cc: ; 0x021410CC
	.word ov1_0212AD88
	.word ov1_0212AE40
ptr_FUN_overlay_1_0212ae60_overlay_1_021410d4: ; 0x021410D4
	.word ov1_0212AE60
ptr_FUN_overlay_1_0212ae80_overlay_1_021410d8: ; 0x021410D8
	.word ov1_0212AE80
ptr_FUN_overlay_1_0212aea0_overlay_1_021410dc: ; 0x021410DC
	.word ov1_0212AEA0
ptr_FUN_overlay_1_0212aed8_overlay_1_021410e0: ; 0x021410E0
	.word ov1_0212AED8
ptr_FUN_overlay_1_0212af10_overlay_1_021410e4: ; 0x021410E4
	.word ov1_0212AF10
ptr_FUN_overlay_1_0212af30_overlay_1_021410e8: ; 0x021410E8
	.word ov1_0212AF30
ptr_FUN_overlay_1_0212af8c_overlay_1_021410ec: ; 0x021410EC
	.word ov1_0212AF8C
ptr_FUN_overlay_1_0212afbc_overlay_1_021410f0: ; 0x021410F0
	.word ov1_0212AFBC
ptr_FUN_overlay_1_0212afec_overlay_1_021410f4: ; 0x021410F4
	.word ov1_0212AFEC
ptr_FUN_overlay_1_0212b00c_overlay_1_021410f8: ; 0x021410F8
	.word ov1_0212B00C
ptr_FUN_overlay_1_0212b02c_overlay_1_021410fc: ; 0x021410FC
	.word ov1_0212B02C
ptr_FUN_overlay_1_0212b070_overlay_1_02141100: ; 0x02141100
	.word ov1_0212B070
ptr_FUN_overlay_1_0212b090_overlay_1_02141104: ; 0x02141104
	.word ov1_0212B090
ptr_FUN_overlay_1_0212b0a8_overlay_1_02141108: ; 0x02141108
	.word ov1_0212B0A8
	.word ov1_0212B0F4
ptr_FUN_overlay_1_0212acb0_overlay_1_02141110: ; 0x02141110
	.word ov1_0212ACB0
ptr_FUN_overlay_1_0212acdc_overlay_1_02141114: ; 0x02141114
	.word ov1_0212ACDC
	.word ov1_0212AD08
	.word ov1_0212B104
ptr_FUN_overlay_1_0212b11c_overlay_1_02141120: ; 0x02141120
	.word ov1_0212B11C
ptr_FUN_overlay_1_0212b170_overlay_1_02141124: ; 0x02141124
	.word ov1_0212B170
ptr_FUN_overlay_1_0212b1ac_overlay_1_02141128: ; 0x02141128
	.word ov1_0212B1AC
	.word ov1_0212B1E4
ptr_FUN_overlay_1_0212b204_overlay_1_02141130: ; 0x02141130
	.word ov1_0212B204
	.word ov1_0212B230
	.word ov1_0212B254
	.word ov1_0212B2B4
	.word ov1_0212B2D8
	.word ov1_0212B2FC
	.word ov1_0212B278
	.word ov1_0212B294
ptr_FUN_overlay_1_0212b320_overlay_1_02141150: ; 0x02141150
	.word ov1_0212B320
ptr_FUN_overlay_1_0212b354_overlay_1_02141154: ; 0x02141154
	.word ov1_0212B354
ptr_FUN_overlay_1_0212b388_overlay_1_02141158: ; 0x02141158
	.word ov1_0212B388
ptr_FUN_overlay_1_0212b3bc_overlay_1_0214115c: ; 0x0214115C
	.word ov1_0212B3BC
	.word ov1_0212B3F0
	.word ov1_0212B418
ptr_FUN_overlay_1_0212b440_overlay_1_02141168: ; 0x02141168
	.word ov1_0212B440
ptr_FUN_overlay_1_0212b46c_overlay_1_0214116c: ; 0x0214116C
	.word ov1_0212B46C
	.word ov1_0212B498
	.word ov1_0212B4C0
	.word ov1_0212B4E4
	.word ov1_0212B510
ptr_FUN_overlay_1_0212b530_overlay_1_02141180: ; 0x02141180
	.word ov1_0212B530
ptr_FUN_overlay_1_0212b55c_overlay_1_02141184: ; 0x02141184
	.word ov1_0212B55C
ptr_FUN_overlay_1_0212b580_overlay_1_02141188: ; 0x02141188
	.word ov1_0212B580
ptr_FUN_overlay_1_0212b5d8_overlay_1_0214118c: ; 0x0214118C
	.word ov1_0212B5D8
ptr_FUN_overlay_1_0212b600_overlay_1_02141190: ; 0x02141190
	.word ov1_0212B600
ptr_FUN_overlay_1_0212b628_overlay_1_02141194: ; 0x02141194
	.word ov1_0212B628
ptr_FUN_overlay_1_0212b650_overlay_1_02141198: ; 0x02141198
	.word ov1_0212B650
ptr_FUN_overlay_1_0212b688_overlay_1_0214119c: ; 0x0214119C
	.word ov1_0212B688
ptr_FUN_overlay_1_0212b6b8_overlay_1_021411a0: ; 0x021411A0
	.word ov1_0212B6B8
ptr_FUN_overlay_1_0212b6f8_overlay_1_021411a4: ; 0x021411A4
	.word ov1_0212B6F8
ptr_FUN_overlay_1_0212b728_overlay_1_021411a8: ; 0x021411A8
	.word ov1_0212B728
ptr_FUN_overlay_1_0212b760_overlay_1_021411ac: ; 0x021411AC
	.word ov1_0212B760
	.byte 0x00, 0x00, 0x00, 0x00
s_01_overlay_1_021411b4: ; 0x021411B4
	.asciz "01"
_021411B7:
	.byte 0x00
s_00_overlay_1_021411b8: ; 0x021411B8
	.asciz "00"
_021411BB:
	.byte 0x00
s_DP2_overlay_1_021411bc: ; 0x021411BC
	.asciz "DP2"
s_DP1_overlay_1_021411c0: ; 0x021411C0
	.asciz "DP1"
ptr_s_00_overlay_1_021411b8_overlay_1_021411c4: ; 0x021411C4
	.word s_00_overlay_1_021411b8
ptr_s_01_overlay_1_021411b4_overlay_1_021411c8: ; 0x021411C8
	.word s_01_overlay_1_021411b4
ptr_s_DP1_overlay_1_021411c0_overlay_1_021411cc: ; 0x021411CC
	.word s_DP1_overlay_1_021411c0
ptr_s_DP2_overlay_1_021411bc_overlay_1_021411d0: ; 0x021411D0
	.word s_DP2_overlay_1_021411bc
PTR_ptr_FUN_020835bc_overlay_1_021411d4: ; 0x021411D4
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_11CBattleDisk_overlay_1_021411e0
	.word PTR_ptr_FUN_02083578_0208b478
s_11CBattleDisk_overlay_1_021411e0: ; 0x021411E0
	.asciz "11CBattleDisk"
_021411EE:
	.byte 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_021411d4
ptr_FUN_overlay_1_0212ba58_overlay_1_021411f8: ; 0x021411F8
	.word ov1_0212BA58
ptr_FUN_overlay_1_0212ba90_overlay_1_021411fc: ; 0x021411FC
	.word ov1_0212BA90
ptr_FUN_overlay_1_0212be98_overlay_1_02141200: ; 0x02141200
	.word ov1_0212BE98
ptr_FUN_overlay_1_0212bf44_overlay_1_02141204: ; 0x02141204
	.word ov1_0212BF44
	.word ov1_0212C028
s_BDS_overlay_1_0214120c: ; 0x0214120C
	.asciz "BDS"
s_data_interface_i019_LZ_bin_overlay_1_02141210: ; 0x02141210
	.asciz "/data/interface/i019_LZ.bin"
s_BDS_i019_00_NCBR_overlay_1_0214122c: ; 0x0214122C
	.asciz "BDS:i019_00.NCBR"
_0214123D:
	.byte 0x00, 0x00, 0x00
s_BDS_i019_NCLR_overlay_1_02141240: ; 0x02141240
	.asciz "BDS:i019.NCLR"
_0214124E:
	.byte 0x00, 0x00
s_BDS_i019_00_NCER_overlay_1_02141250: ; 0x02141250
	.asciz "BDS:i019_00.NCER"
_02141261:
	.byte 0x00, 0x00, 0x00
s_BDS_i019_00_cac_overlay_1_02141264: ; 0x02141264
	.asciz "BDS:i019_00.cac"
s_data_interface_i019_LZ_bin_overlay_1_02141274: ; 0x02141274
	.asciz "data/interface/i019_LZ.bin"
_0214128F:
	.byte 0x00
s_s_i019_s_NCBR_overlay_1_02141290: ; 0x02141290
	.asciz "%s:i019_%s.NCBR"
s_s_i019_NCLR_overlay_1_021412a0: ; 0x021412A0
	.asciz "%s:i019.NCLR"
_021412AD:
	.byte 0x00, 0x00, 0x00
s_s_i019_s_NCER_overlay_1_021412b0: ; 0x021412B0
	.asciz "%s:i019_%s.NCER"
s_s_i019_s_cac_overlay_1_021412c0: ; 0x021412C0
	.asciz "%s:i019_%s.cac"
_021412CF:
	.byte 0x00
s_BSE_overlay_1_021412d0: ; 0x021412D0
	.asciz "BSE"
s_data_interface_i071_LZ_bin_overlay_1_021412d4: ; 0x021412D4
	.asciz "data/interface/i071_LZ.bin"
_021412EF:
	.byte 0x00
s_BSE_i071_00_NCBR_overlay_1_021412f0: ; 0x021412F0
	.asciz "BSE:i071_00.NCBR"
_02141301:
	.byte 0x00, 0x00, 0x00
s_BSE_i071_NCLR_overlay_1_02141304: ; 0x02141304
	.asciz "BSE:i071.NCLR"
_02141312:
	.byte 0x00, 0x00
s_BSE_i071_00_NCER_overlay_1_02141314: ; 0x02141314
	.asciz "BSE:i071_00.NCER"
_02141325:
	.byte 0x00, 0x00, 0x00
s_BSE_i071_00_cac_overlay_1_02141328: ; 0x02141328
	.asciz "BSE:i071_00.cac"
s_data_param_BattlePokemon_bin_overlay_1_02141338: ; 0x02141338
	.asciz "data/param/BattlePokemon.bin"
_02141355:
	.byte 0x00, 0x00, 0x00
s_data_param_BattleEffect_bin_overlay_1_02141358: ; 0x02141358
	.asciz "data/param/BattleEffect.bin"
PTR_ptr_FUN_020835bc_overlay_1_02141374: ; 0x02141374
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_11CDiskCursor_overlay_1_02141380
	.word PTR_ptr_FUN_02083578_0208b478
s_11CDiskCursor_overlay_1_02141380: ; 0x02141380
	.asciz "11CDiskCursor"
_0214138E:
	.byte 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_02141374
PTR_LAB_overlay_1_0212e3b8_overlay_1_02141398: ; 0x02141398
	.word ov1_0212E3B8
ptr_FUN_overlay_1_0212e3e0_overlay_1_0214139c: ; 0x0214139C
	.word ov1_0212E3E0
	.word ov1_0212E48C
ptr_FUN_overlay_1_0212e498_overlay_1_021413a4: ; 0x021413A4
	.word ov1_0212E498
	.word ov1_0212E524
s_data_cursor_LZ_bin_overlay_1_021413ac: ; 0x021413AC
	.asciz "data/cursor_LZ.bin"
_021413BF:
	.byte 0x00
s_cursor_overlay_1_021413c0: ; 0x021413C0
	.asciz "cursor"
_021413C7:
	.byte 0x00
PTR_ptr_FUN_020835bc_overlay_1_021413c8: ; 0x021413C8
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_11CLineEffect_overlay_1_021413d4
	.word PTR_ptr_FUN_02083578_0208b478
s_11CLineEffect_overlay_1_021413d4: ; 0x021413D4
	.asciz "11CLineEffect"
_021413E2:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC8, 0x13, 0x14, 0x02
PTR_LAB_overlay_1_0212e5c8_overlay_1_021413ec: ; 0x021413EC
	.word ov1_0212E5C8
ptr_FUN_overlay_1_0212e5f0_overlay_1_021413f0: ; 0x021413F0
	.word ov1_0212E5F0
ptr_FUN_overlay_1_0212e6ac_overlay_1_021413f4: ; 0x021413F4
	.word ov1_0212E6AC
ptr_FUN_overlay_1_0212e7e4_overlay_1_021413f8: ; 0x021413F8
	.word ov1_0212E7E4
	.word ov1_0212E888
s_data_disk02_LZ_bin_overlay_1_02141400: ; 0x02141400
	.asciz "data/disk02_LZ.bin"
_02141413:
	.byte 0x00
s_disk02_overlay_1_02141414: ; 0x02141414
	.asciz "disk02"
_0214141B:
	.byte 0x00
PTR_ptr_FUN_02083578_overlay_1_0214141c: ; 0x0214141C
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_13CBattleAssist_overlay_1_02141424
s_13CBattleAssist_overlay_1_02141424: ; 0x02141424
	.asciz "13CBattleAssist"
_02141434:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
PTR_LAB_overlay_1_0212ee20_overlay_1_0214143c: ; 0x0214143C
	.word 0x0212EE20
ptr_FUN_overlay_1_0212ee24_overlay_1_02141440: ; 0x02141440
	.word ov1_0212EE24
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
PTR_ptr_FUN_020835bc_overlay_1_02141450: ; 0x02141450
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_19CBattleAssistDragon_overlay_1_0214145c
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_19CBattleAssistDragon_overlay_1_0214145c: ; 0x0214145C
	.asciz "19CBattleAssistDragon"
_02141472:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x14, 0x14, 0x02
ptr_FUN_overlay_1_0212f460_overlay_1_0214147c: ; 0x0214147C
	.word ov1_0212F460
ptr_FUN_overlay_1_0212f48c_overlay_1_02141480: ; 0x02141480
	.word ov1_0212F48C
ptr_FUN_overlay_1_0212f4c0_overlay_1_02141484: ; 0x02141484
	.word ov1_0212F4C0
ptr_FUN_overlay_1_0212fa24_overlay_1_02141488: ; 0x02141488
	.word ov1_0212FA24
	.word ov1_0212F9CC
PTR_ptr_FUN_020835bc_overlay_1_02141490: ; 0x02141490
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_21CBattleAssistElectric_overlay_1_0214149c
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_21CBattleAssistElectric_overlay_1_0214149c: ; 0x0214149C
	.asciz "21CBattleAssistElectric"
_021414B4:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_02141490
PTR_LAB_overlay_1_0212fc58_overlay_1_021414bc: ; 0x021414BC
	.word ov1_0212FC58
ptr_FUN_overlay_1_0212fc6c_overlay_1_021414c0: ; 0x021414C0
	.word ov1_0212FC6C
ptr_FUN_overlay_1_0212fc88_overlay_1_021414c4: ; 0x021414C4
	.word ov1_0212FC88
ptr_FUN_overlay_1_0212fffc_overlay_1_021414c8: ; 0x021414C8
	.word ov1_0212FFFC
	.word ov1_0212FFF4
PTR_ptr_FUN_020835bc_overlay_1_021414d0: ; 0x021414D0
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_18CBattleAssistEsper_overlay_1_021414dc
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_18CBattleAssistEsper_overlay_1_021414dc: ; 0x021414DC
	.asciz "18CBattleAssistEsper"
_021414F1:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x14, 0x14, 0x02
PTR_LAB_overlay_1_0213014c_overlay_1_021414fc: ; 0x021414FC
	.word ov1_0213014C
ptr_FUN_overlay_1_02130160_overlay_1_02141500: ; 0x02141500
	.word ov1_02130160
ptr_FUN_overlay_1_0213017c_overlay_1_02141504: ; 0x02141504
	.word ov1_0213017C
ptr_FUN_overlay_1_02130a58_overlay_1_02141508: ; 0x02141508
	.word ov1_02130A58
	.word ov1_021309EC
PTR_ptr_FUN_020835bc_overlay_1_02141510: ; 0x02141510
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_17CBattleAssistEvil_overlay_1_0214151c
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_17CBattleAssistEvil_overlay_1_0214151c: ; 0x0214151C
	.asciz "17CBattleAssistEvil"
_02141530:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_02141510
PTR_LAB_overlay_1_02130ae0_overlay_1_02141538: ; 0x02141538
	.word ov1_02130AE0
ptr_FUN_overlay_1_02130af4_overlay_1_0214153c: ; 0x0214153C
	.word ov1_02130AF4
ptr_FUN_overlay_1_02130b10_overlay_1_02141540: ; 0x02141540
	.word ov1_02130B10
	.word ov1_02130B70
	.word ov1_02130B68
PTR_ptr_FUN_020835bc_overlay_1_0214154c: ; 0x0214154C
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_17CBattleAssistFire_overlay_1_02141558
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_17CBattleAssistFire_overlay_1_02141558: ; 0x02141558
	.asciz "17CBattleAssistFire"
_0214156C:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_0214154c
PTR_LAB_overlay_1_02130ba4_overlay_1_02141574: ; 0x02141574
	.word ov1_02130BA4
ptr_FUN_overlay_1_02130bb8_overlay_1_02141578: ; 0x02141578
	.word ov1_02130BB8
ptr_FUN_overlay_1_02130bd4_overlay_1_0214157c: ; 0x0214157C
	.word ov1_02130BD4
	.word ov1_02130E30
	.word ov1_02130E28
PTR_ptr_FUN_020835bc_overlay_1_02141588: ; 0x02141588
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_16CBattleAssistFly_overlay_1_02141594
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_16CBattleAssistFly_overlay_1_02141594: ; 0x02141594
	.asciz "16CBattleAssistFly"
_021415A7:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0x15, 0x14, 0x02
PTR_LAB_overlay_1_02130e84_overlay_1_021415b0: ; 0x021415B0
	.word ov1_02130E84
ptr_FUN_overlay_1_02130e98_overlay_1_021415b4: ; 0x021415B4
	.word ov1_02130E98
ptr_FUN_overlay_1_02130eb4_overlay_1_021415b8: ; 0x021415B8
	.word ov1_02130EB4
ptr_FUN_overlay_1_02131398_overlay_1_021415bc: ; 0x021415BC
	.word ov1_02131398
	.word ov1_021311DC
PTR_ptr_FUN_020835bc_overlay_1_021415c4: ; 0x021415C4
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_18CBattleAssistGhost_overlay_1_021415d0
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_18CBattleAssistGhost_overlay_1_021415d0: ; 0x021415D0
	.asciz "18CBattleAssistGhost"
_021415E5:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x15, 0x14, 0x02
PTR_LAB_overlay_1_02131548_overlay_1_021415f0: ; 0x021415F0
	.word ov1_02131548
ptr_FUN_overlay_1_0213155c_overlay_1_021415f4: ; 0x021415F4
	.word ov1_0213155C
ptr_FUN_overlay_1_02131578_overlay_1_021415f8: ; 0x021415F8
	.word ov1_02131578
ptr_FUN_overlay_1_02131a20_overlay_1_021415fc: ; 0x021415FC
	.word ov1_02131A20
	.word ov1_02131A18
PTR_ptr_FUN_020835bc_overlay_1_02141604: ; 0x02141604
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_20CBattleAssistGrapple_overlay_1_02141610
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_20CBattleAssistGrapple_overlay_1_02141610: ; 0x02141610
	.asciz "20CBattleAssistGrapple"
_02141627:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x16, 0x14, 0x02
PTR_LAB_overlay_1_02131ab4_overlay_1_02141630: ; 0x02141630
	.word ov1_02131AB4
ptr_FUN_overlay_1_02131ac8_overlay_1_02141634: ; 0x02141634
	.word ov1_02131AC8
ptr_FUN_overlay_1_02131ae4_overlay_1_02141638: ; 0x02141638
	.word ov1_02131AE4
	.word ov1_02131B44
	.word ov1_02131B3C
PTR_ptr_FUN_020835bc_overlay_1_02141644: ; 0x02141644
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_18CBattleAssistGrass_overlay_1_02141650
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_18CBattleAssistGrass_overlay_1_02141650: ; 0x02141650
	.asciz "18CBattleAssistGrass"
_02141665:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x16, 0x14, 0x02
PTR_LAB_overlay_1_02131b90_overlay_1_02141670: ; 0x02141670
	.word ov1_02131B90
ptr_FUN_overlay_1_02131ba4_overlay_1_02141674: ; 0x02141674
	.word ov1_02131BA4
ptr_FUN_overlay_1_02131bc0_overlay_1_02141678: ; 0x02141678
	.word ov1_02131BC0
ptr_FUN_overlay_1_02131fbc_overlay_1_0214167c: ; 0x0214167C
	.word ov1_02131FBC
	.word ov1_02131FB4
PTR_ptr_FUN_020835bc_overlay_1_02141684: ; 0x02141684
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_19CBattleAssistGround_overlay_1_02141690
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_19CBattleAssistGround_overlay_1_02141690: ; 0x02141690
	.asciz "19CBattleAssistGround"
_021416A6:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x84, 0x16, 0x14, 0x02
ptr_FUN_overlay_1_0213213c_overlay_1_021416b0: ; 0x021416B0
	.word ov1_0213213C
ptr_FUN_overlay_1_02132168_overlay_1_021416b4: ; 0x021416B4
	.word ov1_02132168
ptr_FUN_overlay_1_021321a4_overlay_1_021416b8: ; 0x021416B8
	.word ov1_021321A4
ptr_FUN_overlay_1_021324c4_overlay_1_021416bc: ; 0x021416BC
	.word ov1_021324C4
	.word ov1_021324BC
PTR_ptr_FUN_020835bc_overlay_1_021416c4: ; 0x021416C4
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_16CBattleAssistIce_overlay_1_021416d0
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_16CBattleAssistIce_overlay_1_021416d0: ; 0x021416D0
	.asciz "16CBattleAssistIce"
_021416E3:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x16, 0x14, 0x02
ptr_FUN_overlay_11_02132564_overlay_1_021416ec: ; 0x021416EC
	.word ov1_02132564
ptr_FUN_overlay_1_02132578_overlay_1_021416f0: ; 0x021416F0
	.word ov1_02132578
ptr_FUN_overlay_1_02132594_overlay_1_021416f4: ; 0x021416F4
	.word ov1_02132594
ptr_FUN_overlay_1_02132f0c_overlay_1_021416f8: ; 0x021416F8
	.word ov1_02132F0C
	.word ov1_02132EBC
PTR_ptr_FUN_020835bc_overlay_1_02141700: ; 0x02141700
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_19CBattleAssistInsect_overlay_1_0214170c
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_19CBattleAssistInsect_overlay_1_0214170c: ; 0x0214170C
	.asciz "19CBattleAssistInsect"
_02141722:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x14, 0x02
PTR_LAB_overlay_1_02133148_overlay_1_0214172c: ; 0x0214172C
	.word ov1_02133148
ptr_FUN_overlay_1_0213315c_overlay_1_02141730: ; 0x02141730
	.word ov1_0213315C
ptr_FUN_overlay_1_02133178_overlay_1_02141734: ; 0x02141734
	.word ov1_02133178
ptr_FUN_overlay_1_02133a48_overlay_1_02141738: ; 0x02141738
	.word ov1_02133A48
	.word ov1_0213359C
PTR_ptr_FUN_020835bc_overlay_1_02141740: ; 0x02141740
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_19CBattleAssistNormal_overlay_1_0214174c
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_19CBattleAssistNormal_overlay_1_0214174c: ; 0x0214174C
	.asciz "19CBattleAssistNormal"
_02141762:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x17, 0x14, 0x02
PTR_LAB_overlay_1_02133b74_overlay_1_0214176c: ; 0x0214176C
	.word ov1_02133B74
ptr_FUN_overlay_1_02133b88_overlay_1_02141770: ; 0x02141770
	.word ov1_02133B88
ptr_FUN_overlay_1_02133ba4_overlay_1_02141774: ; 0x02141774
	.word ov1_02133BA4
	.word ov1_02133C04
	.word ov1_02133BFC
PTR_ptr_FUN_020835bc_overlay_1_02141780: ; 0x02141780
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_19CBattleAssistPoison_overlay_1_0214178c
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_19CBattleAssistPoison_overlay_1_0214178c: ; 0x0214178C
	.asciz "19CBattleAssistPoison"
_021417A2:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x17, 0x14, 0x02
PTR_LAB_overlay_1_02133c38_overlay_1_021417ac: ; 0x021417AC
	.word ov1_02133C38
ptr_FUN_overlay_1_02133c4c_overlay_1_021417b0: ; 0x021417B0
	.word ov1_02133C4C
ptr_FUN_overlay_1_02133c68_overlay_1_021417b4: ; 0x021417B4
	.word ov1_02133C68
ptr_FUN_overlay_1_02133f20_overlay_1_021417b8: ; 0x021417B8
	.word ov1_02133F20
ptr_FUN_overlay_11_02133f18_overlay_1_021417bc: ; 0x021417BC
	.word ov1_02133F18
PTR_ptr_FUN_020835bc_overlay_1_021417c0: ; 0x021417C0
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_20CBattleAssistRecover_overlay_1_021417cc
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_20CBattleAssistRecover_overlay_1_021417cc: ; 0x021417CC
	.asciz "20CBattleAssistRecover"
_021417E3:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x17, 0x14, 0x02
PTR_LAB_overlay_1_02134274_overlay_1_021417ec: ; 0x021417EC
	.word ov1_02134274
ptr_FUN_overlay_1_02134288_overlay_1_021417f0: ; 0x021417F0
	.word ov1_02134288
ptr_FUN_overlay_1_021342a4_overlay_1_021417f4: ; 0x021417F4
	.word ov1_021342A4
	.word ov1_02134350
	.word ov1_02134388
PTR_ptr_FUN_020835bc_overlay_1_02141800: ; 0x02141800
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_17CBattleAssistRock_overlay_1_0214180c
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_17CBattleAssistRock_overlay_1_0214180c: ; 0x0214180C
	.asciz "17CBattleAssistRock"
_02141820:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_02141800
PTR_LAB_overlay_1_021343c0_overlay_1_02141828: ; 0x02141828
	.word ov1_021343C0
ptr_FUN_overlay_1_021343d4_overlay_1_0214182c: ; 0x0214182C
	.word ov1_021343D4
ptr_FUN_overlay_1_021343f0_overlay_1_02141830: ; 0x02141830
	.word ov1_021343F0
ptr_FUN_overlay_1_021349f4_overlay_1_02141834: ; 0x02141834
	.word ov1_021349F4
	.word ov1_021349EC
PTR_ptr_FUN_020835bc_overlay_1_0214183c: ; 0x0214183C
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_18CBattleAssistSteel_overlay_1_02141848
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_18CBattleAssistSteel_overlay_1_02141848: ; 0x02141848
	.asciz "18CBattleAssistSteel"
_0214185D:
	.byte 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_0214183c
PTR_LAB_overlay_1_02134ab4_overlay_1_02141868: ; 0x02141868
	.word ov1_02134AB4
ptr_FUN_overlay_1_02134ac8_overlay_1_0214186c: ; 0x0214186C
	.word ov1_02134AC8
ptr_FUN_overlay_1_02134ae4_overlay_1_02141870: ; 0x02141870
	.word ov1_02134AE4
ptr_FUN_overlay_1_02135230_overlay_1_02141874: ; 0x02141874
	.word ov1_02135230
ptr_FUN_overlay_11_02135228_overlay_1_02141878: ; 0x02141878
	.word ov1_02135228
PTR_ptr_FUN_020835bc_overlay_1_0214187c: ; 0x0214187C
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_18CBattleAssistWater_overlay_1_02141888
	.word PTR_ptr_FUN_02083578_overlay_1_0214141c
s_18CBattleAssistWater_overlay_1_02141888: ; 0x02141888
	.asciz "18CBattleAssistWater"
_0214189D:
	.byte 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_0214187c
PTR_LAB_overlay_1_02135304_overlay_1_021418a8: ; 0x021418A8
	.word ov1_02135304
ptr_FUN_overlay_1_02135318_overlay_1_021418ac: ; 0x021418AC
	.word ov1_02135318
ptr_FUN_overlay_1_02135334_overlay_1_021418b0: ; 0x021418B0
	.word ov1_02135334
ptr_FUN_overlay_1_02135b1c_overlay_1_021418b4: ; 0x021418B4
	.word ov1_02135B1C
	.word ov1_02135B14
PTR_ptr_FUN_020835bc_overlay_1_021418bc: ; 0x021418BC
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_17CBattleEnemyGauge_overlay_1_021418c8
	.word PTR_ptr_FUN_02083578_0208b478
s_17CBattleEnemyGauge_overlay_1_021418c8: ; 0x021418C8
	.asciz "17CBattleEnemyGauge"
_021418DC:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_021418bc
ptr_FUN_overlay_1_02135d04_overlay_1_021418e4: ; 0x021418E4
	.word ov1_02135D04
ptr_FUN_overlay_1_02135d44_overlay_1_021418e8: ; 0x021418E8
	.word ov1_02135D44
ptr_FUN_overlay_1_02135f58_overlay_1_021418ec: ; 0x021418EC
	.word ov1_02135F58
ptr_FUN_overlay_1_02136094_overlay_1_021418f0: ; 0x021418F0
	.word ov1_02136094
	.word ov1_02136244
s_d_overlay_1_021418f8: ; 0x021418F8
	.asciz "%d"
_021418FB:
	.byte 0x00
s_BEG_overlay_1_021418fc: ; 0x021418FC
	.asciz "BEG"
s_data_interface_i000_LZ_bin_overlay_1_02141900: ; 0x02141900
	.asciz "data/interface/i000_LZ.bin"
_0214191B:
	.byte 0x00
s_BEG_i000_00_NCBR_overlay_1_0214191c: ; 0x0214191C
	.asciz "BEG:i000_00.NCBR"
_0214192D:
	.byte 0x00, 0x00, 0x00
s_BEG_i000_NCLR_overlay_1_02141930: ; 0x02141930
	.asciz "BEG:i000.NCLR"
_0214193E:
	.byte 0x00, 0x00
s_BEG_i000_00_NCER_overlay_1_02141940: ; 0x02141940
	.asciz "BEG:i000_00.NCER"
_02141951:
	.byte 0x00, 0x00, 0x00
s_BDN_overlay_1_02141954: ; 0x02141954
	.asciz "BDN"
s_data_interface_i070_LZ_bin_overlay_1_02141958: ; 0x02141958
	.asciz "/data/interface/i070_LZ.bin"
s_BDN_i070_00_NCBR_overlay_1_02141974: ; 0x02141974
	.asciz "BDN:i070_00.NCBR"
_02141985:
	.byte 0x00, 0x00, 0x00
s_BDN_i070_NCLR_overlay_1_02141988: ; 0x02141988
	.asciz "BDN:i070.NCLR"
_02141996:
	.byte 0x00, 0x00
s_BDN_i070_00_NCER_overlay_1_02141998: ; 0x02141998
	.asciz "BDN:i070_00.NCER"
_021419A9:
	.byte 0x00, 0x00, 0x00
s_BDN_i070_00_cac_overlay_1_021419ac: ; 0x021419AC
	.asciz "BDN:i070_00.cac"
s_02_overlay_1_021419bc: ; 0x021419BC
	.asciz "02"
_021419BF:
	.byte 0x00
s_00_overlay_1_021419c0: ; 0x021419C0
	.asciz "00"
_021419C3:
	.byte 0x00
s_PSS_overlay_1_021419c4: ; 0x021419C4
	.asciz "PSS"
s_PSE_overlay_1_021419c8: ; 0x021419C8
	.asciz "PSE"
ptr_s_PSE_overlay_1_021419c8_overlay_1_021419cc: ; 0x021419CC
	.word s_PSE_overlay_1_021419c8
	.word s_PSS_overlay_1_021419c4
ptr_s_00_overlay_1_021419c0_overlay_1_021419d4: ; 0x021419D4
	.word s_00_overlay_1_021419c0
	.word s_02_overlay_1_021419bc
PTR_ptr_FUN_020835bc_overlay_1_021419dc: ; 0x021419DC
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_16CBattlePowerSave_overlay_1_021419e8
	.word PTR_ptr_FUN_02083578_0208b478
s_16CBattlePowerSave_overlay_1_021419e8: ; 0x021419E8
	.asciz "16CBattlePowerSave"
_021419FB:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_1_021419dc
ptr_FUN_overlay_1_02136d60_overlay_1_02141a04: ; 0x02141A04
	.word ov1_02136D60
ptr_FUN_overlay_1_02136db0_overlay_1_02141a08: ; 0x02141A08
	.word ov1_02136DB0
ptr_FUN_overlay_1_02137550_overlay_1_02141a0c: ; 0x02141A0C
	.word ov1_02137550
ptr_FUN_overlay_1_02137af0_overlay_1_02141a10: ; 0x02141A10
	.word ov1_02137AF0
	.word ov1_02137B90
s_data_interface_i025_LZ_bin_overlay_1_02141a18: ; 0x02141A18
	.asciz "data/interface/i025_LZ.bin"
_02141A33:
	.byte 0x00
s_s_i025_s_NCBR_overlay_1_02141a34: ; 0x02141A34
	.asciz "%s:i025_%s.NCBR"
s_s_i025_NCLR_overlay_1_02141a44: ; 0x02141A44
	.asciz "%s:i025.NCLR"
_02141A51:
	.byte 0x00, 0x00, 0x00
s_s_i025_s_NCER_overlay_1_02141a54: ; 0x02141A54
	.asciz "%s:i025_%s.NCER"
s_s_i025_s_cac_overlay_1_02141a64: ; 0x02141A64
	.asciz "%s:i025_%s.cac"
_02141A73:
	.byte 0x00
s_BLD_overlay_1_02141a74: ; 0x02141A74
	.asciz "BLD"
s_data_interface_i066_LZ_bin_overlay_1_02141a78: ; 0x02141A78
	.asciz "data/interface/i066_LZ.bin"
_02141A93:
	.byte 0x00
s_BLD_i066_00_NCBR_overlay_1_02141a94: ; 0x02141A94
	.asciz "BLD:i066_00.NCBR"
_02141AA5:
	.byte 0x00, 0x00, 0x00
s_BLD_i066_NCLR_overlay_1_02141aa8: ; 0x02141AA8
	.asciz "BLD:i066.NCLR"
_02141AB6:
	.byte 0x00, 0x00
s_BLD_i066_00_NCER_overlay_1_02141ab8: ; 0x02141AB8
	.asciz "BLD:i066_00.NCER"
_02141AC9:
	.byte 0x00, 0x00, 0x00
s_BLD_i066_00_cac_overlay_1_02141acc: ; 0x02141ACC
	.asciz "BLD:i066_00.cac"
s_Memory_allocation_failure_overlay_1_02141adc: ; 0x02141ADC
	.asciz "Memory allocation failure"
_02141AF6:
	.byte 0x00, 0x00
s_BAS_overlay_1_02141af8: ; 0x02141AF8
	.asciz "BAS"
s_data_interface_i046_LZ_bin_overlay_1_02141afc: ; 0x02141AFC
	.asciz "/data/interface/i046_LZ.bin"
s_BAS_i046_00_NCBR_overlay_1_02141b18: ; 0x02141B18
	.asciz "BAS:i046_00.NCBR"
_02141B29:
	.byte 0x00, 0x00, 0x00
s_BAS_i046_NCLR_overlay_1_02141b2c: ; 0x02141B2C
	.asciz "BAS:i046.NCLR"
_02141B3A:
	.byte 0x00, 0x00
s_BAS_i046_00_NCER_overlay_1_02141b3c: ; 0x02141B3C
	.asciz "BAS:i046_00.NCER"
_02141B4D:
	.byte 0x00, 0x00, 0x00
s_BAS_i046_00_cac_overlay_1_02141b50: ; 0x02141B50
	.asciz "BAS:i046_00.cac"
DAT_overlay_1_02141b60: ; 0x02141B60
	.byte 0x42, 0x45, 0x53, 0x00
s_data_interface_i047_LZ_bin_overlay_1_02141b64: ; 0x02141B64
	.asciz "/data/interface/i047_LZ.bin"
s_BES_i047_00_NCBR_overlay_1_02141b80: ; 0x02141B80
	.asciz "BES:i047_00.NCBR"
_02141B91:
	.byte 0x00, 0x00, 0x00
s_BES_i047_NCLR_overlay_1_02141b94: ; 0x02141B94
	.asciz "BES:i047.NCLR"
_02141BA2:
	.byte 0x00, 0x00
s_BES_i047_00_NCER_overlay_1_02141ba4: ; 0x02141BA4
	.asciz "BES:i047_00.NCER"
_02141BB5:
	.byte 0x00, 0x00, 0x00
s_BES_i047_00_cac_overlay_1_02141bb8: ; 0x02141BB8
	.asciz "BES:i047_00.cac"
s_data_battle_result_r000_00_LZ_bi_overlay_1_02141bc8: ; 0x02141BC8
	.asciz "data/battle/result/r000_00_LZ.bin"
_02141BEA:
	.byte 0x00, 0x00
s_BRM_overlay_1_02141bec: ; 0x02141BEC
	.asciz "BRM"
s_BRM_r000_00_NCBR_overlay_1_02141bf0: ; 0x02141BF0
	.asciz "BRM:r000_00.NCBR"
_02141C01:
	.byte 0x00, 0x00, 0x00
s_BRM_r000_NCLR_overlay_1_02141c04: ; 0x02141C04
	.asciz "BRM:r000.NCLR"
_02141C12:
	.byte 0x00, 0x00
s_BRM_r000_00_NCER_overlay_1_02141c14: ; 0x02141C14
	.asciz "BRM:r000_00.NCER"
_02141C25:
	.byte 0x00, 0x00, 0x00
s_4d_overlay_1_02141c28: ; 0x02141C28
	.asciz "%4d"
s_5d_overlay_1_02141c2c: ; 0x02141C2C
	.asciz "%5d"
s_4d_overlay_1_02141c30: ; 0x02141C30
	.asciz "+%4d"
_02141C35:
	.byte 0x00, 0x00, 0x00
s_2d_overlay_1_02141c38: ; 0x02141C38
	.asciz "%2d"
s_2d_overlay_1_02141c3c: ; 0x02141C3C
	.asciz "+%2d"
_02141C41:
	.byte 0x00, 0x00, 0x00
PTR_ptr_FUN_020835bc_overlay_1_02141c44: ; 0x02141C44
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_15CBattleGameOver_overlay_1_02141c50
	.word PTR_ptr_FUN_02083578_0208b478
s_15CBattleGameOver_overlay_1_02141c50: ; 0x02141C50
	.asciz "15CBattleGameOver"
_02141C62:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x1C, 0x14, 0x02
ptr_FUN_overlay_1_0213a540_overlay_1_02141c6c: ; 0x02141C6C
	.word ov1_0213A540
ptr_FUN_overlay_1_0213a5dc_overlay_1_02141c70: ; 0x02141C70
	.word ov1_0213A5DC
ptr_FUN_overlay_1_0213ab34_overlay_1_02141c74: ; 0x02141C74
	.word ov1_0213AB34
ptr_FUN_overlay_1_0213add4_overlay_1_02141c78: ; 0x02141C78
	.word ov1_0213ADD4
	.word ov1_0213AE14
s_data_interface_i_03d_LZ_bin_overlay_1_02141c80: ; 0x02141C80
	.asciz "data/interface/i%03d_LZ.bin"
s_BOA_i_03d_02d_NCBR_overlay_1_02141c9c: ; 0x02141C9C
	.asciz "BOA:i%03d_%02d.NCBR"
s_BOA_i_03d_NCLR_overlay_1_02141cb0: ; 0x02141CB0
	.asciz "BOA:i%03d.NCLR"
_02141CBF:
	.byte 0x00
s_BOA_i_03d_02d_NCER_overlay_1_02141cc0: ; 0x02141CC0
	.asciz "BOA:i%03d_%02d.NCER"
s_BOA_i_03d_02d_cac_overlay_1_02141cd4: ; 0x02141CD4
	.asciz "BOA:i%03d_%02d.cac"
_02141CE7:
	.byte 0x00
s_BOA_overlay_1_02141ce8: ; 0x02141CE8
	.asciz "BOA"
s_BOB_i_03d_02d_NCBR_overlay_1_02141cec: ; 0x02141CEC
	.asciz "BOB:i%03d_%02d.NCBR"
s_BOB_i_03d_NCLR_overlay_1_02141d00: ; 0x02141D00
	.asciz "BOB:i%03d.NCLR"
_02141D0F:
	.byte 0x00
s_BOB_i_03d_02d_NCER_overlay_1_02141d10: ; 0x02141D10
	.asciz "BOB:i%03d_%02d.NCER"
s_BOB_i_03d_02d_cac_overlay_1_02141d24: ; 0x02141D24
	.asciz "BOB:i%03d_%02d.cac"
_02141D37:
	.byte 0x00
s_BOB_overlay_1_02141d38: ; 0x02141D38
	.asciz "BOB"
s_data_interface_i019_LZ_bin_overlay_1_02141d3c: ; 0x02141D3C
	.asciz "data/interface/i019_LZ.bin"
_02141D57:
	.byte 0x00
s_BOC_i019_03_NCBR_overlay_1_02141d58: ; 0x02141D58
	.asciz "BOC:i019_03.NCBR"
_02141D69:
	.byte 0x00, 0x00, 0x00
s_BOC_i019_NCLR_overlay_1_02141d6c: ; 0x02141D6C
	.asciz "BOC:i019.NCLR"
_02141D7A:
	.byte 0x00, 0x00
s_BOC_i019_03_NCER_overlay_1_02141d7c: ; 0x02141D7C
	.asciz "BOC:i019_03.NCER"
_02141D8D:
	.byte 0x00, 0x00, 0x00
s_BOC_i019_03_cac_overlay_1_02141d90: ; 0x02141D90
	.asciz "BOC:i019_03.cac"
s_BOC_overlay_1_02141da0: ; 0x02141DA0
	.asciz "BOC"
s_BAM_overlay_1_02141da4: ; 0x02141DA4
	.asciz "BAM"
s_data_interface_i062_LZ_bin_overlay_1_02141da8: ; 0x02141DA8
	.asciz "data/interface/i062_LZ.bin"
_02141DC3:
	.byte 0x00
s_BAM_i062_00_NCBR_overlay_1_02141dc4: ; 0x02141DC4
	.asciz "BAM:i062_00.NCBR"
_02141DD5:
	.byte 0x00, 0x00, 0x00
s_BAM_i062_NCLR_overlay_1_02141dd8: ; 0x02141DD8
	.asciz "BAM:i062.NCLR"
_02141DE6:
	.byte 0x00, 0x00
s_BAM_i062_00_NCER_overlay_1_02141de8: ; 0x02141DE8
	.asciz "BAM:i062_00.NCER"
_02141DF9:
	.byte 0x00, 0x00, 0x00
s_BAM_i062_00_cac_overlay_1_02141dfc: ; 0x02141DFC
	.asciz "BAM:i062_00.cac"
s_data_interface_i060_LZ_bin_overlay_1_02141e0c: ; 0x02141E0C
	.asciz "data/interface/i060_LZ.bin"
_02141E27:
	.byte 0x00
s_BAM_i060_00_NCBR_overlay_1_02141e28: ; 0x02141E28
	.asciz "BAM:i060_00.NCBR"
_02141E39:
	.byte 0x00, 0x00, 0x00
s_BAM_i060_NCLR_overlay_1_02141e3c: ; 0x02141E3C
	.asciz "BAM:i060.NCLR"
_02141E4A:
	.byte 0x00, 0x00
s_BAM_i060_00_NCER_overlay_1_02141e4c: ; 0x02141E4C
	.asciz "BAM:i060_00.NCER"
_02141E5D:
	.byte 0x00, 0x00, 0x00
s_data_interface_i061_LZ_bin_overlay_1_02141e60: ; 0x02141E60
	.asciz "data/interface/i061_LZ.bin"
_02141E7B:
	.byte 0x00
s_BAM_i061_00_NCBR_overlay_1_02141e7c: ; 0x02141E7C
	.asciz "BAM:i061_00.NCBR"
_02141E8D:
	.byte 0x00, 0x00, 0x00
s_BAM_i061_NCLR_overlay_1_02141e90: ; 0x02141E90
	.asciz "BAM:i061.NCLR"
_02141E9E:
	.byte 0x00, 0x00
s_BAM_i061_00_NCER_overlay_1_02141ea0: ; 0x02141EA0
	.asciz "BAM:i061_00.NCER"
_02141EB1:
	.byte 0x00, 0x00, 0x00
s_data_interface_i063_LZ_bin_overlay_1_02141eb4: ; 0x02141EB4
	.asciz "data/interface/i063_LZ.bin"
_02141ECF:
	.byte 0x00
s_BAM_i063_00_NCBR_overlay_1_02141ed0: ; 0x02141ED0
	.asciz "BAM:i063_00.NCBR"
_02141EE1:
	.byte 0x00, 0x00, 0x00
s_BAM_i063_NCLR_overlay_1_02141ee4: ; 0x02141EE4
	.asciz "BAM:i063.NCLR"
_02141EF2:
	.byte 0x00, 0x00
s_BAM_i063_00_NCER_overlay_1_02141ef4: ; 0x02141EF4
	.asciz "BAM:i063_00.NCER"
_02141F05:
	.byte 0x00, 0x00, 0x00
s_data_interface_i064_LZ_bin_overlay_1_02141f08: ; 0x02141F08
	.asciz "data/interface/i064_LZ.bin"
_02141F23:
	.byte 0x00
s_BAM_i064_00_NCBR_overlay_1_02141f24: ; 0x02141F24
	.asciz "BAM:i064_00.NCBR"
_02141F35:
	.byte 0x00, 0x00, 0x00
s_BAM_i064_NCLR_overlay_1_02141f38: ; 0x02141F38
	.asciz "BAM:i064.NCLR"
_02141F46:
	.byte 0x00, 0x00
s_BAM_i064_00_NCER_overlay_1_02141f48: ; 0x02141F48
	.asciz "BAM:i064_00.NCER"
_02141F59:
	.byte 0x00, 0x00, 0x00
s_sPokeSelect_overlay_1_02141f5c: ; 0x02141F5C
	.asciz "sPokeSelect"
s_sAssist_03d_overlay_1_02141f68: ; 0x02141F68
	.asciz "sAssist%03d"
s_BGU_overlay_1_02141f74: ; 0x02141F74
	.asciz "BGU"
s_data_menu_pam001_bg_LZ_bin_overlay_1_02141f78: ; 0x02141F78
	.asciz "data/menu/pam001_bg_LZ.bin"
_02141F93:
	.byte 0x00
s_BGU_pam001_NCGR_overlay_1_02141f94: ; 0x02141F94
	.asciz "BGU:pam001.NCGR"
s_BGU_pam_03d_NCLR_overlay_1_02141fa4: ; 0x02141FA4
	.asciz "BGU:pam%03d.NCLR"
_02141FB5:
	.byte 0x00, 0x00, 0x00
s_BGU_pam001_00_NSCR_overlay_1_02141fb8: ; 0x02141FB8
	.asciz "BGU:pam001_00.NSCR"
_02141FCB:
	.byte 0x00
s_data_menu_pam000_bg_LZ_bin_overlay_1_02141fcc: ; 0x02141FCC
	.asciz "data/menu/pam000_bg_LZ.bin"
_02141FE7:
	.byte 0x00
s_BGU_pam000_NCGR_overlay_1_02141fe8: ; 0x02141FE8
	.asciz "BGU:pam000.NCGR"
s_BGU_pam000_01_NSCR_overlay_1_02141ff8: ; 0x02141FF8
	.asciz "BGU:pam000_01.NSCR"
_0214200B:
	.byte 0x00
s_BGU_pam000_02_NSCR_overlay_1_0214200c: ; 0x0214200C
	.asciz "BGU:pam000_02.NSCR"
_0214201F:
	.byte 0x00
s_data_message_etc_menu_mes_overlay_1_02142020: ; 0x02142020
	.asciz "/data/message/etc/menu_mes"
_0214203B:
	.byte 0x00
s_data_message_etc_assist_mes_overlay_1_0214203c: ; 0x0214203C
	.asciz "/data/message/etc/assist_mes"
_02142059:
	.byte 0x00, 0x00, 0x00
s_data_message_etc_fieldwaza_name_overlay_1_0214205c: ; 0x0214205C
	.asciz "/data/message/etc/fieldwaza_name"
_0214207D:
	.byte 0x00, 0x00, 0x00
s_bp_03d_overlay_1_02142080: ; 0x02142080
	.asciz "bp%03d"
_02142087:
	.byte 0x00
s_data_pokeOBJ_overlay_1_02142088: ; 0x02142088
	.asciz "data/pokeOBJ"
_02142095:
	.byte 0x00, 0x00, 0x00
s_data_menu_overlay_1_02142098: ; 0x02142098
	.asciz "data/menu"
_021420A2:
	.byte 0x00, 0x00
s_pam003_00_overlay_1_021420a4: ; 0x021420A4
	.asciz "pam003_00"
_021420AE:
	.byte 0x00, 0x00
s_pam001_00_overlay_1_021420b0: ; 0x021420B0
	.asciz "pam001_00"
_021420BA:
	.byte 0x00, 0x00
s_pam002_00_overlay_1_021420bc: ; 0x021420BC
	.asciz "pam002_00"
_021420C6:
	.byte 0x00, 0x00
s_ma000_00_overlay_1_021420c8: ; 0x021420C8
	.asciz "ma000_00"
_021420D1:
	.byte 0x00, 0x00, 0x00
s_ma001_00_overlay_1_021420d4: ; 0x021420D4
	.asciz "ma001_00"
_021420DD:
	.byte 0x00, 0x00, 0x00
s_data_interface_i_03d_LZ_bin_overlay_1_021420e0: ; 0x021420E0
	.asciz "data/interface/i%03d_LZ.bin"
s_BCO_i_03d_00_NCBR_overlay_1_021420fc: ; 0x021420FC
	.asciz "BCO:i%03d_00.NCBR"
_0214210E:
	.byte 0x00, 0x00
s_BCO_i_03d_NCLR_overlay_1_02142110: ; 0x02142110
	.asciz "BCO:i%03d.NCLR"
_0214211F:
	.byte 0x00
s_BCO_i_03d_00_NCER_overlay_1_02142120: ; 0x02142120
	.asciz "BCO:i%03d_00.NCER"
_02142132:
	.byte 0x00, 0x00
s_BCO_i_03d_00_cac_overlay_1_02142134: ; 0x02142134
	.asciz "BCO:i%03d_00.cac"
_02142145:
	.byte 0x00, 0x00, 0x00
s_BCO_overlay_1_02142148: ; 0x02142148
	.asciz "BCO"
s_data_interface_i055_LZ_bin_overlay_1_0214214c: ; 0x0214214C
	.asciz "data/interface/i055_LZ.bin"
_02142167:
	.byte 0x00
s_BCO_i055_00_NCBR_overlay_1_02142168: ; 0x02142168
	.asciz "BCO:i055_00.NCBR"
_02142179:
	.byte 0x00, 0x00, 0x00
s_BCO_i055_NCLR_overlay_1_0214217c: ; 0x0214217C
	.asciz "BCO:i055.NCLR"
_0214218A:
	.byte 0x00, 0x00
s_BCO_i055_00_NCER_overlay_1_0214218c: ; 0x0214218C
	.asciz "BCO:i055_00.NCER"
_0214219D:
	.byte 0x00, 0x00, 0x00
s_data_interface_i056_LZ_bin_overlay_1_021421a0: ; 0x021421A0
	.asciz "data/interface/i056_LZ.bin"
_021421BB:
	.byte 0x00
s_BCO_i056_00_NCBR_overlay_1_021421bc: ; 0x021421BC
	.asciz "BCO:i056_00.NCBR"
_021421CD:
	.byte 0x00, 0x00, 0x00
s_BCO_i056_NCLR_overlay_1_021421d0: ; 0x021421D0
	.asciz "BCO:i056.NCLR"
_021421DE:
	.byte 0x00, 0x00
s_BCO_i056_00_NCER_overlay_1_021421e0: ; 0x021421E0
	.asciz "BCO:i056_00.NCER"
_021421F1:
	.byte 0x00, 0x00, 0x00
s_system_000_overlay_1_021421f4: ; 0x021421F4
	.asciz "system_000"
	; 0x021421FF

    .bss
OVERLAY1_BSS_02142200: ; 0x02142200
    .space 0x20
