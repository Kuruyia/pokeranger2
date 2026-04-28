    .include "macros.inc"
    .include "include/overlay_22_0211C9E0.inc"

    .text

	arm_func_start _ZN18CEncyclopediaSceneC1Ev
_ZN18CEncyclopediaSceneC1Ev: ; 0x0211C9E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZN6CSceneC2Ev
	ldr r0, _0211CAB8 ; =DAT_overlay_22_02121710
	ldr r1, _0211CABC ; =ptr_FUN_overlay_22_0211cac4_overlay_22_02121770
	str r0, [r4, #4]
	ldr r0, _0211CAC0 ; =PTR_LAB_overlay_22_0211d30c_overlay_22_021217a8
	str r1, [r4]
	str r0, [r4, #4]
	mov r1, #0
	add r0, r4, #0x1c
	str r1, [r4, #8]
	bl ov22_0211F3DC
	mov r1, #0
	str r1, [r4, #0x28]
	sub r0, r1, #1
	str r0, [r4, #0x2c]
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	str r1, [r4, #0x40]
	str r1, [r4, #0x44]
	mov r0, #0x18
	strb r0, [r4, #0x48]
	mov r2, #8
	strb r2, [r4, #0x49]
	mov r3, #1
	strb r3, [r4, #0x4a]
	add r0, r4, #0x30
	strb r3, [r4, #0x4b]
	bl MI_CpuFill8
	add r0, r4, #0x4c
	bl ov22_0211F4E0
	mov r1, #0
	mov r0, #0x1d0
	str r1, [r4, #0x3a4]
	bl _Znwm
	cmp r0, #0
	beq _0211CA80
	add r1, r4, #0x2c
	bl ov22_0211D31C
	arm_func_end _ZN18CEncyclopediaSceneC1Ev
_0211CA80:
	str r0, [r4, #0x14]
	mov r0, #0xd0
	bl _Znwm
	cmp r0, #0
	beq _0211CA9C
	add r1, r4, #0x2c
	bl ov22_0211E204
_0211CA9C:
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	mov r0, r4
	str r1, [r4, #0xc]
	ldr r1, [r4, #0x18]
	str r1, [r4, #0x10]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CAB8: .word DAT_overlay_22_02121710
_0211CABC: .word ptr_FUN_overlay_22_0211cac4_overlay_22_02121770
_0211CAC0: .word PTR_LAB_overlay_22_0211d30c_overlay_22_021217a8

	arm_func_start ov22_0211CAC4
ov22_0211CAC4: ; 0x0211CAC4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _0211CB74 ; =ptr_FUN_overlay_22_0211cac4_overlay_22_02121770
	mov r4, r0
	ldr r0, _0211CB78 ; =PTR_LAB_overlay_22_0211d30c_overlay_22_021217a8
	str r1, [r4]
	str r0, [r4, #4]
	ldr r5, [r4, #0x3a4]
	cmp r5, #0
	beq _0211CB0C
	beq _0211CB04
	add r0, r5, #0xc
	bl ov22_02120A10
	mov r0, r5
	bl ov22_02120A10
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov22_0211CAC4
_0211CB04:
	mov r0, #0
	str r0, [r4, #0x3a4]
_0211CB0C:
	mov r6, #0
	mov r5, r6
_0211CB14:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0211CB3C
	beq _0211CB34
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CB34:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0xc]
_0211CB3C:
	add r6, r6, #1
	cmp r6, #2
	blt _0211CB14
	bl sub_0201001C
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	mov r1, #0x1e
	bl sub_02008DB4
	add r0, r4, #0x4c
	bl ov22_0211F544
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211CB74: .word ptr_FUN_overlay_22_0211cac4_overlay_22_02121770
_0211CB78: .word PTR_LAB_overlay_22_0211d30c_overlay_22_021217a8

	arm_func_start ov22_0211CB7C
ov22_0211CB7C: ; 0x0211CB7C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov22_0211CB7C

	arm_func_start ov22_0211CB90
ov22_0211CB90: ; 0x0211CB90
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _0211CC48 ; =ptr_FUN_overlay_22_0211cac4_overlay_22_02121770
	mov r4, r0
	ldr r0, _0211CC4C ; =PTR_LAB_overlay_22_0211d30c_overlay_22_021217a8
	str r1, [r4]
	str r0, [r4, #4]
	ldr r5, [r4, #0x3a4]
	cmp r5, #0
	beq _0211CBD8
	beq _0211CBD0
	add r0, r5, #0xc
	bl ov22_02120A10
	mov r0, r5
	bl ov22_02120A10
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov22_0211CB90
_0211CBD0:
	mov r0, #0
	str r0, [r4, #0x3a4]
_0211CBD8:
	mov r6, #0
	mov r5, r6
_0211CBE0:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0211CC08
	beq _0211CC00
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CC00:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0xc]
_0211CC08:
	add r6, r6, #1
	cmp r6, #2
	blt _0211CBE0
	bl sub_0201001C
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	mov r1, #0x1e
	bl sub_02008DB4
	add r0, r4, #0x4c
	bl ov22_0211F544
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211CC48: .word ptr_FUN_overlay_22_0211cac4_overlay_22_02121770
_0211CC4C: .word PTR_LAB_overlay_22_0211d30c_overlay_22_021217a8

	arm_func_start ov22_0211CC50
ov22_0211CC50: ; 0x0211CC50
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	mvn r4, #0
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0211CD40
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	movs r7, r0
	movmi r4, #6
	bmi _0211CD40
	ldr r0, [r6, #8]
	cmp r7, r0
	beq _0211CD40
	str r7, [r6, #8]
	add r0, r6, r7, lsl #2
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0211CD40
	bl sub_0201001C
	mov r5, r0
	cmp r7, #1
	bne _0211CCE4
	ldr r0, [r6, #0x3a4]
	cmp r0, #0
	beq _0211CCD4
	ldr r0, [r6, #0x14]
	bl ov22_0211DE9C
	ldr r1, [r6, #0x3a4]
	str r0, [r1, #0x18]
	arm_func_end ov22_0211CC50
_0211CCD4:
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x18]
	ldr r1, [r1, #0x18]
	bl ov22_0211E66C
_0211CCE4:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r0, [r6, #8]
	add r1, r6, #0x4c
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0xc]
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
_0211CD40:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov22_0211CD48
ov22_0211CD48: ; 0x0211CD48
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0211CD70
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	arm_func_end ov22_0211CD48
_0211CD70:
	ldr r0, [r4, #0x28]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start ov22_0211CD7C
ov22_0211CD7C: ; 0x0211CD7C
	bx lr
	arm_func_end ov22_0211CD7C

	arm_func_start ov22_0211CD80
ov22_0211CD80: ; 0x0211CD80
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _0211CF3C ; =0x04001000
	mov r4, r0
	ldr r0, [r2]
	and r0, r0, #0xe000
	mov r0, r0, lsr #0xd
	str r0, [r4, #0x3a8]
	ldrb r0, [r2, #0x48]
	strb r0, [sp, #5]
	ldrb r1, [sp, #5]
	strb r1, [r4, #0x3ac]
	ldrb r0, [r2, #0x4a]
	strb r1, [sp, #7]
	strb r0, [sp, #4]
	ldrb r0, [sp, #4]
	strb r0, [sp, #6]
	strb r0, [r4, #0x3ad]
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
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	mov r0, #0
	bl GXS_SetGraphicsMode
	ldr r1, _0211CF3C ; =0x04001000
	mov r2, #0
	ldr r3, [r1]
	ldr r0, _0211CF40 ; =0xFFCFFFEF
	bic r3, r3, #0x1f00
	orr r3, r3, #0x1f00
	str r3, [r1]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	str r2, [r1, #0x18]
	str r2, [r1, #0x1c]
	ldr r3, [r1]
	mov r2, #0xff
	and r0, r3, r0
	orr r0, r0, #0x10
	str r0, [r1]
	ldr r0, _0211CF44 ; =0x000030B0
	strh r2, [r1, #0x40]
	strh r0, [r1, #0x44]
	ldrh r0, [r1, #0x48]
	bic r0, r0, #0x3f
	orr r0, r0, #0x1f
	strh r0, [r1, #0x48]
	ldrh r0, [r1, #0x4a]
	bic r0, r0, #0x3f
	orr r2, r0, #0x16
	add r0, r4, #0x4c
	strh r2, [r1, #0x4a]
	bl ov22_0211F594
	mov r1, #0
	ldr r0, _0211CF48 ; =0x04001050
	mov r2, r1
	mov r3, r1
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	ldr lr, _0211CF4C ; =0x04000060
	mov r2, #0
	ldrh r0, [lr]
	add ip, lr, #0x2a4
	add r1, r4, r2, lsl #2
	bic r0, r0, #0x3000
	orr r0, r0, #8
	strh r0, [lr]
	ldrh r3, [lr]
	ldr r0, _0211CF50 ; =0xFFFFFDF1
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
	str r2, [r4, #8]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0211CF0C
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	arm_func_end ov22_0211CD80
_0211CF0C:
	bl GX_DispOn
	ldr r1, _0211CF3C ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	bl sub_0201001C
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	mov r1, #0x3c
	bl sub_02008DB4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CF3C: .word 0x04001000
_0211CF40: .word 0xFFCFFFEF
_0211CF44: .word 0x000030B0
_0211CF48: .word 0x04001050
_0211CF4C: .word 0x04000060
_0211CF50: .word 0xFFFFFDF1

	arm_func_start ov22_0211CF54
ov22_0211CF54: ; 0x0211CF54
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl ov22_0211D1A4
	mov r0, r4
	bl ov22_0211D294
	mov r0, r4
	bl ov22_0211D200
	mov r5, #0
	arm_func_end ov22_0211CF54
_0211CF74:
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #0xc]
	add r1, r4, #0x1c
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r5, r5, #1
	cmp r5, #2
	blt _0211CF74
	ldr r5, [r4, #0x3a4]
	cmp r5, #0
	beq _0211CFC8
	beq _0211CFC0
	add r0, r5, #0xc
	bl ov22_02120A10
	mov r0, r5
	bl ov22_02120A10
	mov r0, r5
	bl _ZdlPv
_0211CFC0:
	mov r0, #0
	str r0, [r4, #0x3a4]
_0211CFC8:
	mov r0, #0x1c
	bl _Znwm
	movs r6, r0
	beq _0211CFEC
	bl ov22_021209FC
	add r0, r6, #0xc
	bl ov22_021209FC
	mov r0, #0
	str r0, [r6, #0x18]
_0211CFEC:
	str r6, [r4, #0x3a4]
	cmp r6, #0
	beq _0211D02C
	ldr r0, [r6, #8]
	ldr r5, _0211D088 ; =s_data_message_etc_dictionary03_m_overlay_22_021217ac
	cmp r0, #0
	ldr r1, _0211D08C ; =s_data_message_etc_dictionary01_m_overlay_22_021217d0
	bne _0211D014
	mov r0, r6
	bl ov22_02120A24
_0211D014:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _0211D02C
	mov r1, r5
	add r0, r6, #0xc
	bl ov22_02120A24
_0211D02C:
	ldr r2, [r4, #0x3a4]
	ldr r0, [r4, #0x18]
	add r1, r4, #0x4c
	str r2, [r0, #0x64]
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xc]
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
	bl sub_0201001C
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211D088: .word s_data_message_etc_dictionary03_m_overlay_22_021217ac
_0211D08C: .word s_data_message_etc_dictionary01_m_overlay_22_021217d0

	arm_func_start ov22_0211D090
ov22_0211D090: ; 0x0211D090
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0x3a4]
	cmp r5, #0
	beq _0211D0C8
	beq _0211D0C0
	add r0, r5, #0xc
	bl ov22_02120A10
	mov r0, r5
	bl ov22_02120A10
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov22_0211D090
_0211D0C0:
	mov r0, #0
	str r0, [r4, #0x3a4]
_0211D0C8:
	mov r5, #0
_0211D0CC:
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0211D0E8
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
_0211D0E8:
	add r5, r5, #1
	cmp r5, #2
	blt _0211D0CC
	ldr r5, [r4, #0x28]
	cmp r5, #0
	beq _0211D11C
	beq _0211D114
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211D114:
	mov r0, #0
	str r0, [r4, #0x28]
_0211D11C:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C3D0
	ldr r0, _0211D19C ; =0x04001048
	ldrb r1, [r4, #0x3ac]
	ldrh r2, [r0]
	mov r0, r1, lsl #0x1a
	movs r0, r0, lsr #0x1f
	mov r1, r1, lsl #0x1b
	bic r2, r2, #0x3f
	orr r1, r2, r1, lsr #27
	ldr r0, _0211D19C ; =0x04001048
	orrne r1, r1, #0x20
	strh r1, [r0]
	ldrh r2, [r0, #2]
	ldrb r1, [r4, #0x3ad]
	bic r2, r2, #0x3f
	mov r0, r1, lsl #0x1a
	movs r0, r0, lsr #0x1f
	mov r1, r1, lsl #0x1b
	orr r1, r2, r1, lsr #27
	ldr r0, _0211D1A0 ; =0x0400104A
	orrne r1, r1, #0x20
	sub r2, r0, #0x4a
	strh r1, [r0]
	ldr r1, [r2]
	ldr r0, [r4, #0x3a8]
	bic r1, r1, #0xe000
	orr r0, r1, r0, lsl #13
	str r0, [r2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211D19C: .word 0x04001048
_0211D1A0: .word 0x0400104A

	arm_func_start ov22_0211D1A4
ov22_0211D1A4: ; 0x0211D1A4
	stmdb sp!, {r3, lr}
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	ldr r1, _0211D1FC ; =0x04001008
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0x20c
	orr r0, r0, #0x400
	strh r0, [r1]
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
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211D1FC: .word 0x04001008
	arm_func_end ov22_0211D1A4

	arm_func_start ov22_0211D200
ov22_0211D200: ; 0x0211D200
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	mov r0, #0
	str r0, [sp]
	ldr r1, _0211D28C ; =s_data_menu_overlay_22_021217f4
	ldr r2, _0211D290 ; =s_ma005_00_overlay_22_02121800
	add r0, r4, #0x1c
	mov r3, #1
	bl ov22_0211F3F0
	str r0, [r4, #0x28]
	mov r1, #0
	str r1, [sp]
	mov r0, #0xf0
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r2, [r4, #0x28]
	mov r3, r1
	add r0, r4, #0x2c
	bl ov22_0211F134
	mov r0, r4
	cmp r4, #0
	addne r0, r4, #4
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x28]
	add r0, r4, #0x1c
	mov r2, #0
	bl ov22_0211F4A4
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D28C: .word s_data_menu_overlay_22_021217f4
_0211D290: .word s_ma005_00_overlay_22_02121800
	arm_func_end ov22_0211D200

	arm_func_start ov22_0211D294
ov22_0211D294: ; 0x0211D294
	ldr ip, _0211D2A0 ; =ov22_0211F72C
	add r0, r0, #0x4c
	bx ip
	.align 2, 0
_0211D2A0: .word ov22_0211F72C
	arm_func_end ov22_0211D294

	arm_func_start ov22_0211D2A4
ov22_0211D2A4: ; 0x0211D2A4
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #8]
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0211D2C8
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	arm_func_end ov22_0211D2A4
_0211D2C8:
	bl sub_02007D98
	ldmia sp!, {r3, pc}

	arm_func_start ov22_0211D2D0
ov22_0211D2D0: ; 0x0211D2D0
	bx lr
	arm_func_end ov22_0211D2D0

	arm_func_start ov22_0211D2D4
ov22_0211D2D4: ; 0x0211D2D4
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	ldr r1, [r0, #8]
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end ov22_0211D2D4

	arm_func_start ov22_0211D304
ov22_0211D304: ; 0x0211D304
	mov r0, #0x17
	bx lr
	arm_func_end ov22_0211D304

    arm_func_start ov22_0211D30C
ov22_0211D30C: ; 0x0211D30C
	ldr ip, _0211D318 ; =0xFFFFFFFC
	add r0, r0, ip
	b ov22_0211D2D4
	.align 2, 0
	arm_func_end ov22_0211D30C
_0211D318: .word 0xFFFFFFFC

	arm_func_start ov22_0211D31C
ov22_0211D31C: ; 0x0211D31C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, _0211D434 ; =PTR_LAB_overlay_22_0211e158_overlay_22_021218b0
	mov sl, r0
	str r1, [sp]
	str r2, [sl]
	mov r1, #0
	ldr r0, _0211D438 ; =DAT_overlay_22_02121710
	str r1, [sl, #4]
	str r0, [sl, #8]
	ldr r2, _0211D43C ; =DAT_overlay_22_02121838
	ldr r0, _0211D440 ; =DAT_overlay_22_0212182c
	str r2, [sl, #0xc]
	str r0, [sl, #0x10]
	ldr r2, _0211D444 ; =ptr_FUN_overlay_22_0211e15c_overlay_22_02121910
	ldr r0, _0211D448 ; =PTR_LAB_overlay_22_0211e1c4_overlay_22_02121950
	str r2, [sl]
	str r0, [sl, #8]
	ldr r2, _0211D44C ; =PTR_LAB_overlay_22_0211e1e4_overlay_22_0212195c
	ldr r0, _0211D450 ; =PTR_LAB_overlay_22_0211e1f4_overlay_22_0212196c
	str r2, [sl, #0xc]
	str r0, [sl, #0x10]
	sub r0, r1, #1
	str r0, [sl, #0x14]
	str r1, [sl, #0x18]
	add r0, sl, #0x24
	mov r2, #3
	str r1, [sl, #0x1c]
	bl ov22_02120668
	add r0, sl, #0x34
	mov r1, #3
	bl ov22_0211F9BC
	add sb, sl, #0xa4
	add r4, sl, #0x124
	mvn r8, #0
	mov r7, #0
	mov r6, #0x18
	mov fp, #8
	mov r5, #1
	arm_func_end ov22_0211D31C
_0211D3B4:
	str r8, [sb]
	str r7, [sb, #0xc]
	str r7, [sb, #0x10]
	str r7, [sb, #0x14]
	str r7, [sb, #0x18]
	strb r6, [sb, #0x1c]
	strb fp, [sb, #0x1d]
	strb r5, [sb, #0x1e]
	mov r1, r7
	mov r2, fp
	add r0, sb, #4
	strb r5, [sb, #0x1f]
	bl MI_CpuFill8
	add sb, sb, #0x20
	cmp sb, r4
	blo _0211D3B4
	ldr r1, [sp]
	add r0, sl, #0x128
	str r1, [sl, #0x124]
	bl ov22_021209FC
	add r0, sl, #0x134
	bl ov22_02120B4C
	mov r2, #0
	str r2, [sl, #0x160]
	mov r1, r2
_0211D418:
	add r0, sl, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x164]
	cmp r2, #3
	blt _0211D418
	mov r0, sl
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211D434: .word PTR_LAB_overlay_22_0211e158_overlay_22_021218b0
_0211D438: .word DAT_overlay_22_02121710
_0211D43C: .word DAT_overlay_22_02121838
_0211D440: .word DAT_overlay_22_0212182c
_0211D444: .word ptr_FUN_overlay_22_0211e15c_overlay_22_02121910
_0211D448: .word PTR_LAB_overlay_22_0211e1c4_overlay_22_02121950
_0211D44C: .word PTR_LAB_overlay_22_0211e1e4_overlay_22_0212195c
_0211D450: .word PTR_LAB_overlay_22_0211e1f4_overlay_22_0212196c

	arm_func_start ov22_0211D454
ov22_0211D454: ; 0x0211D454
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x44
	mov sl, r0
	str r1, [sp, #0x20]
	ldr r1, _0211D8E8 ; =s_data_message_etc_dictionary02_m_overlay_22_02121970
	add r0, sl, #0x128
	bl ov22_02120A24
	ldr r1, _0211D8EC ; =s_data_encyclo_encyclopedia_bin_overlay_22_02121994
	add r0, sl, #0x134
	bl ov22_02120BB4
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a4]
	str r0, [sp, #0x24]
	cmp r0, #0
	beq _0211D58C
	mov sb, #0
	str sb, [sp, #0x28]
	arm_func_end ov22_0211D454
_0211D49C:
	add r2, sp, #0x38
	mov r3, #0
	mov r1, sb
	add r0, sl, #0x134
	str r3, [r2, sb, lsl #2]
	bl ov22_02120F14
	mov r6, r0
	cmp r6, #0
	mov r7, #0
	ble _0211D558
	ldr r0, [sp, #0x24]
	mov fp, r7
	add r5, r0, sb, lsl #4
	add r4, sp, #0x38
_0211D4D4:
	cmp sb, #0
	blt _0211D520
	cmp sb, #3
	bge _0211D520
	cmp r7, #0
	blt _0211D520
	cmp r7, #0x40
	bge _0211D520
	mov r0, r7, asr #3
	add r0, r7, r0, lsr #28
	mov r0, r0, asr #4
	add r0, r5, r0, lsl #2
	add r0, r0, #0x7000
	mov r1, r7, lsl #0x1c
	ldr r2, [r0, #0xf30]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r8, r0, #3
	b _0211D524
_0211D520:
	mov r8, fp
_0211D524:
	mov r1, sb
	mov r2, r7
	add r0, sl, #0x134
	bl ov22_02120F34
	cmp r0, #0
	strne r8, [r0, #0x1c]
	cmp r8, #0
	ldrne r0, [r4, sb, lsl #2]
	add r7, r7, #1
	addne r0, r0, #1
	strne r0, [r4, sb, lsl #2]
	cmp r7, r6
	blt _0211D4D4
_0211D558:
	add r0, sp, #0x38
	ldr r1, [r0, sb, lsl #2]
	ldr r0, [sp, #0x28]
	add sb, sb, #1
	add r0, r0, r1
	cmp sb, #3
	str r0, [sp, #0x28]
	blt _0211D49C
	cmp r0, #0
	ble _0211D58C
	ldr r1, [sp, #0x28]
	mov r0, sl
	bl ov22_0211D918
_0211D58C:
	mov r4, #0
	ldr r3, _0211D8F0 ; =s_md000_overlay_22_021219c8
	str r4, [sp]
	ldr r0, _0211D8F4 ; =s_menu_overlay_22_021219b4
	ldr r1, _0211D8F8 ; =s_md000_bg_overlay_22_021219bc
	mov r2, #5
	stmib sp, {r3, r4}
	bl sub_02020804
	ldr r0, _0211D8FC ; =0x05000400
	add r1, sl, #0x170
	mov r2, #0x60
	bl MI_CpuCopy8
	mov r2, r4
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, _0211D8F4 ; =s_menu_overlay_22_021219b4
	ldr r1, _0211D8F8 ; =s_md000_bg_overlay_22_021219bc
	ldr r3, _0211D900 ; =s_md000_02_overlay_22_021219d0
	mov r2, #5
	bl sub_02020FF0
	mov r0, r4
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0211D8F4 ; =s_menu_overlay_22_021219b4
	ldr r1, _0211D8F8 ; =s_md000_bg_overlay_22_021219bc
	ldr r3, _0211D904 ; =s_md000_01_overlay_22_021219dc
	mov r2, #6
	bl sub_02020FF0
	mov r0, r4
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0211D8F4 ; =s_menu_overlay_22_021219b4
	ldr r1, _0211D8F8 ; =s_md000_bg_overlay_22_021219bc
	ldr r3, _0211D908 ; =s_md000_03_overlay_22_021219e8
	mov r2, #7
	bl sub_02020FF0
	mvn r1, #0
	str r1, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, _0211D90C ; =s_data_menu_overlay_22_021219f4
	ldr r2, _0211D910 ; =s_md000_00_overlay_22_02121a00
	mov r3, #4
	bl ov22_0211F3F0
	str r0, [sl, #0x20]
	ldr r0, _0211D914 ; =DAT_overlay_22_021216d4
	mov r7, r4
	add r6, sp, #0x2c
	ldmia r0, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	mov r8, #0x2d
	mov sb, #0x16
	mov r5, #0x1c
	mov r4, #0x43
	mov fp, #0x20
_0211D67C:
	ldr r1, [r6, r7, lsl #2]
	add r0, sl, #0x128
	bl ov22_02120AE0
	add r1, r7, #0xa
	stmia sp, {r1, r8}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str fp, [sp, #0x10]
	mov r1, #3
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r2, [sl, #0x20]
	add r0, sl, #0x24
	mov r1, r7
	add r3, r7, #0xd
	bl ov22_021206DC
	str sb, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r2, [sl, #0x20]
	add r0, sl, #0x24
	mov r1, r7
	mov r3, #8
	bl ov22_021207E8
	add r7, r7, #1
	add r8, r8, #0x43
	add sb, sb, #0x44
	cmp r7, #3
	blt _0211D67C
	mov r0, sl
	cmp sl, #0
	addne r0, sl, #0x10
	str r0, [sl, #0x30]
	mov r1, #8
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	mov r0, #0xd0
	str r0, [sp, #0xc]
	mov r0, #0x80
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	mov r1, #0
	str r1, [sp, #0x1c]
	ldr r2, [sl, #0x20]
	add r0, sl, #0x34
	mov r3, #9
	bl ov22_0211FAD4
	mov r0, sl
	cmp sl, #0
	addne r0, sl, #0xc
	str r0, [sl, #0x6c]
	mov r1, #1
	str r1, [sp]
	mov r0, #0xe8
	str r0, [sp, #4]
	mov r0, #0x33
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r1, #0
	ldr r2, [sl, #0x20]
	mov r3, r1
	add r0, sl, #0xa4
	bl ov22_0211F134
	mov r0, sl
	cmp sl, #0
	addne r0, sl, #8
	str r0, [sl, #0xb0]
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
	ldr r2, [sl, #0x20]
	add r0, sl, #0xc4
	mov r3, #2
	bl ov22_0211F134
	mov r0, sl
	cmp sl, #0
	addne r0, sl, #8
	str r0, [sl, #0xd0]
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
	ldr r2, [sl, #0x20]
	add r0, sl, #0xe4
	mov r1, #2
	mov r3, #4
	bl ov22_0211F134
	mov r0, sl
	cmp sl, #0
	addne r0, sl, #8
	str r0, [sl, #0xf0]
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
	ldr r2, [sl, #0x20]
	add r0, sl, #0x104
	mov r1, #3
	mov r3, #6
	bl ov22_0211F134
	mov r0, sl
	cmp sl, #0
	addne r0, sl, #8
	str r0, [sl, #0x110]
	ldr r0, [sl, #0x20]
	bl sub_0200F64C
	mov r6, #0
	mov r4, r6
	mov r5, #1
_0211D8AC:
	add r0, sl, r6, lsl #2
	ldr r0, [r0, #0x164]
	mov r1, r6
	cmp r0, #0
	movgt r2, r5
	movle r2, r4
	add r0, sl, #0x24
	bl ov22_0212086C
	add r6, r6, #1
	cmp r6, #3
	blt _0211D8AC
	add r0, sl, #0x34
	bl ov22_0211FBE4
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211D8E8: .word s_data_message_etc_dictionary02_m_overlay_22_02121970
_0211D8EC: .word s_data_encyclo_encyclopedia_bin_overlay_22_02121994
_0211D8F0: .word s_md000_overlay_22_021219c8
_0211D8F4: .word s_menu_overlay_22_021219b4
_0211D8F8: .word s_md000_bg_overlay_22_021219bc
_0211D8FC: .word 0x05000400
_0211D900: .word s_md000_02_overlay_22_021219d0
_0211D904: .word s_md000_01_overlay_22_021219dc
_0211D908: .word s_md000_03_overlay_22_021219e8
_0211D90C: .word s_data_menu_overlay_22_021219f4
_0211D910: .word s_md000_00_overlay_22_02121a00
_0211D914: .word DAT_overlay_22_021216d4

	arm_func_start ov22_0211D918
ov22_0211D918: ; 0x0211D918
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r2, #0xc
	mov sl, r0
	mul r0, r1, r2
	bl _Znam
	str r0, [sl, #0x160]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r5, #0
	mov r6, r5
	mov sb, r5
	arm_func_end ov22_0211D918
_0211D944:
	mov r1, r6
	add r0, sl, #0x134
	bl ov22_02120F14
	mov r7, r0
	add r4, sl, r6, lsl #2
	mov r8, #0
	str r5, [sp]
	str r8, [r4, #0x164]
	cmp r7, #0
	ble _0211D9EC
	mov fp, #1
_0211D970:
	mov r1, r6
	mov r2, r8
	add r0, sl, #0x134
	bl ov22_02120F34
	cmp r0, #0
	ldrne r1, [r0, #0x1c]
	cmpne r1, #0
	beq _0211D9E0
	ldr r2, [r0]
	ldr r1, [sl, #0x160]
	str r2, [r1, sb]
	ldr r1, [sl, #0x160]
	add r1, r1, sb
	str r0, [r1, #8]
	ldr r0, [r0, #0x1c]
	cmp r0, #1
	ldr r0, [sl, #0x160]
	addne r1, r0, sb
	movne r0, #0
	strne r0, [r1, #4]
	bne _0211D9D8
	add r0, r0, sb
	str fp, [r0, #4]
	ldr r0, [r4, #0x164]
	add r0, r0, #1
	str r0, [r4, #0x164]
_0211D9D8:
	add sb, sb, #0xc
	add r5, r5, #1
_0211D9E0:
	add r8, r8, #1
	cmp r8, r7
	blt _0211D970
_0211D9EC:
	ldr r2, [sl, #0x160]
	ldr r0, [sp]
	mov r1, #0xc
	mla r2, r0, r1, r2
	ldr r3, [sp]
	mov r1, r6
	add r0, sl, #0x34
	sub r3, r5, r3
	bl ov22_0211FC24
	add r6, r6, #1
	cmp r6, #3
	blt _0211D944
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov22_0211DA20
ov22_0211DA20: ; 0x0211DA20
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0211DA50
	beq _0211DA48
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov22_0211DA20
_0211DA48:
	mov r0, #0
	str r0, [r5, #0x20]
_0211DA50:
	ldr r0, [r5, #0x160]
	cmp r0, #0
	beq _0211DA68
	bl _ZdaPv
	mov r0, #0
	str r0, [r5, #0x160]
_0211DA68:
	add r0, r5, #0x134
	bl ov22_02120E80
	add r0, r5, #0x128
	bl ov22_02120B04
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov22_0211DA7C
ov22_0211DA7C: ; 0x0211DA7C
	ldr r0, _0211DB18 ; =0x0400100A
	mov r1, #0
	ldrh r2, [r0]
	sub ip, r0, #2
	sub r3, r0, #0xa
	and r2, r2, #0x43
	orr r2, r2, #4
	strh r2, [r0]
	ldrh r2, [r0, #2]
	and r2, r2, #0x43
	orr r2, r2, #0x204
	strh r2, [r0, #2]
	ldrh r2, [r0, #4]
	and r2, r2, #0x43
	orr r2, r2, #4
	orr r2, r2, #0x400
	strh r2, [r0, #4]
	ldrh r2, [ip]
	bic r2, r2, #3
	strh r2, [ip]
	ldrh r2, [r0]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r0]
	ldrh r2, [r0, #2]
	bic r2, r2, #3
	orr r2, r2, #2
	strh r2, [r0, #2]
	ldrh r2, [r0, #4]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r0, #4]
	ldr r2, [r3]
	bic r2, r2, #0xe000
	orr r2, r2, #0x2000
	str r2, [r3]
	str r1, [r0, #6]
	str r1, [r0, #0x12]
	bx lr
	.align 2, 0
_0211DB18: .word 0x0400100A
	arm_func_end ov22_0211DA7C

	arm_func_start ov22_0211DB1C
ov22_0211DB1C: ; 0x0211DB1C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sl, r0
	str r1, [sp, #0x14]
	bl sub_0201001C
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
	arm_func_end ov22_0211DB1C
_0211DB64:
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
	blt _0211DB64
	ldr r0, [sp, #0x14]
	bl ov22_0211F8A8
	ldr r1, _0211DBE0 ; =s_data_menu_rd000_LZ_bin_overlay_22_02121a0c
	ldr r2, _0211DBE4 ; =s_rd000_nbfs_overlay_22_02121a24
	ldr r0, [sp, #0x14]
	bl ov22_0211F7B8
	mov r0, #0
	str r0, [sl, #4]
	ldr r1, [sl, #0x18]
	add r0, sl, #0x24
	bl ov22_021208DC
	mvn r0, #0
	str r0, [sl, #0x14]
	ldr r0, [sl, #0x124]
	bl ov22_0211F3C8
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211DBE0: .word s_data_menu_rd000_LZ_bin_overlay_22_02121a0c
_0211DBE4: .word s_rd000_nbfs_overlay_22_02121a24

	arm_func_start ov22_0211DBE8
ov22_0211DBE8: ; 0x0211DBE8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	bl sub_0201001C
	ldr r1, [r6, #4]
	mov r4, r0
	cmp r1, #0
	mov r5, #0
	beq _0211DC1C
	cmp r1, #1
	beq _0211DC4C
	cmp r1, #2
	beq _0211DD60
	b _0211DD88
	arm_func_end ov22_0211DBE8
_0211DC1C:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211DD88
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	moveq r0, #1
	streq r0, [r6, #4]
	b _0211DD88
_0211DC4C:
	add r0, r6, #0x24
	bl ov22_0212098C
	ldr r0, [r6, #0x124]
	bl ov22_0211F1D0
	ldr r0, [r6, #0x124]
	bl ov22_0211F2A4
	add r8, r6, #0xa4
	mov r7, r5
_0211DC6C:
	mov r0, r8
	bl ov22_0211F1D0
	add r7, r7, #1
	cmp r7, #3
	add r8, r8, #0x20
	ble _0211DC6C
	ldr r0, [r4, #0x14]
	ldrh r1, [r0, #6]
	and r0, r1, #0x200
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211DCB4
	ldr r0, [r6, #0x18]
	subs r1, r0, #1
	movmi r1, #2
	add r0, r6, #0x24
	bl ov22_021208DC
	b _0211DCDC
_0211DCB4:
	and r0, r1, #0x100
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211DCDC
	ldr r0, [r6, #0x18]
	add r1, r0, #1
	cmp r1, #2
	movgt r1, #0
	add r0, r6, #0x24
	bl ov22_021208DC
_0211DCDC:
	ldr r0, [r4, #0x14]
	ldrh r0, [r0]
	and r0, r0, #0x40
	str r0, [r6, #0xf8]
	ldr r0, [r4, #0x14]
	ldrh r0, [r0]
	and r0, r0, #0x80
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r6, #0x118]
	ldr r0, [r4, #0x14]
	ldrh r0, [r0]
	and r0, r0, #0x20
	str r0, [r6, #0xb8]
	ldr r0, [r4, #0x14]
	ldrh r0, [r0]
	and r0, r0, #0x10
	str r0, [r6, #0xd8]
	ldr r0, [r6, #0x20]
	bl sub_0200F64C
	add r0, r6, #0x34
	bl ov22_0212005C
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #2]
	and r0, r0, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211DD88
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	b _0211DD88
_0211DD60:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211DD88
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	ldreq r5, [r6, #0x14]
_0211DD88:
	add r7, r6, #0xa4
	mov r4, #0
_0211DD90:
	mov r0, r7
	bl ov22_0211F2A4
	add r4, r4, #1
	cmp r4, #3
	add r7, r7, #0x20
	ble _0211DD90
	add r0, r6, #0x34
	bl ov22_021201B0
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov22_0211DDB8
ov22_0211DDB8: ; 0x0211DDB8
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0200F71C
	ldmia sp!, {r3, pc}
	arm_func_end ov22_0211DDB8

	arm_func_start ov22_0211DDD0
ov22_0211DDD0: ; 0x0211DDD0
	ldr ip, _0211DDDC ; =ov22_0212058C
	add r0, r0, #0x34
	bx ip
	.align 2, 0
_0211DDDC: .word ov22_0212058C
	arm_func_end ov22_0211DDD0

	arm_func_start ov22_0211DDE0
ov22_0211DDE0: ; 0x0211DDE0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_0201001C
	mov r1, #2
	mov r4, r0
	str r1, [r5, #4]
	sub r0, r1, #3
	str r0, [r5, #0x14]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x48c]
	ldr r1, _0211DE3C ; =0x00000103
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
_0211DE3C: .word 0x00000103
	arm_func_end ov22_0211DDE0

	arm_func_start ov22_0211DE40
ov22_0211DE40: ; 0x0211DE40
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x34
	str r1, [r4, #0x18]
	bl ov22_02120414
	add r0, r4, #0x34
	bl ov22_0211FF20
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0211DE7C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfa
	bl sub_02034C44
	arm_func_end ov22_0211DE40
_0211DE7C:
	ldr r0, [r4, #0x18]
	add r1, r4, #0x170
	add r2, r1, r0, lsl #5
	mov r0, #0x1f
	mov r1, #0
	mov r3, #0x20
	bl NNS_GfdRegisterNewVramTransferTask
	ldmia sp!, {r4, pc}

	arm_func_start ov22_0211DE9C
ov22_0211DE9C: ; 0x0211DE9C
	ldr r0, [r0, #0x1c]
	bx lr
	arm_func_end ov22_0211DE9C

	arm_func_start ov22_0211DEA4
ov22_0211DEA4: ; 0x0211DEA4
	stmdb sp!, {r3, lr}
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_0211DEB4: ; jump table
	b _0211DEC4 ; case 0
	b _0211DED0 ; case 1
	b _0211DEDC ; case 2
	b _0211DEE8 ; case 3
	arm_func_end ov22_0211DEA4
_0211DEC4:
	add r0, r0, #0x34
	bl ov22_0211FEA8
	ldmia sp!, {r3, pc}
_0211DED0:
	add r0, r0, #0x34
	bl ov22_0211FE18
	ldmia sp!, {r3, pc}
_0211DEDC:
	add r0, r0, #0x34
	bl ov22_0211FD74
	ldmia sp!, {r3, pc}
_0211DEE8:
	add r0, r0, #0x34
	bl ov22_0211FC58
	ldmia sp!, {r3, pc}

	arm_func_start ov22_0211DEF4
ov22_0211DEF4: ; 0x0211DEF4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	mov r8, r2
	bl sub_0201001C
	ldr r1, [r5, #0x18]
	mov r4, #0
	mov r6, r0
	mov r7, r4
	cmp r1, #0
	ble _0211DF3C
	arm_func_end ov22_0211DEF4
_0211DF1C:
	mov r1, r7
	add r0, r5, #0x34
	bl ov22_02120560
	ldr r1, [r5, #0x18]
	add r7, r7, #1
	cmp r7, r1
	add r4, r4, r0
	blt _0211DF1C
_0211DF3C:
	add r1, r4, r8
	mov r0, #0xc
	mul r4, r1, r0
	ldr r0, [r5, #0x160]
	add r1, r6, #0x1000
	add r0, r0, r4
	ldr r0, [r0, #8]
	str r0, [r5, #0x1c]
	ldr r2, [r5, #0x18]
	ldr r0, [r0, #4]
	cmp r2, #0
	ldr r1, [r1, #0x4a4]
	blt _0211DFB8
	cmp r2, #3
	bge _0211DFB8
	cmp r0, #0
	blt _0211DFB8
	cmp r0, #0x40
	bge _0211DFB8
	mov r3, r0, asr #3
	add r3, r0, r3, lsr #28
	add ip, r1, r2, lsl #4
	mov r3, r3, asr #4
	add r3, ip, r3, lsl #2
	add r3, r3, #0x7000
	mov ip, r0, lsl #0x1c
	ldr lr, [r3, #0xf30]
	mov r3, ip, lsr #0x1b
	mov r3, lr, lsr r3
	and r3, r3, #3
	b _0211DFBC
_0211DFB8:
	mov r3, #0
_0211DFBC:
	cmp r3, #1
	bne _0211E028
	cmp r2, #0
	blt _0211E024
	cmp r2, #3
	bge _0211E024
	cmp r0, #0
	blt _0211E024
	cmp r0, #0x40
	bge _0211E024
	add r1, r1, #0xf30
	mov r3, r0, asr #3
	mov lr, r0, lsl #0x1c
	add r0, r0, r3, lsr #28
	add ip, r1, #0x7000
	mov r1, lr, lsr #0x1b
	mov r3, #3
	add lr, ip, r2, lsl #4
	mov r0, r0, asr #4
	mvn r2, r3, lsl r1
	ldr ip, [lr, r0, lsl #2]
	mov r3, #2
	and r2, ip, r2
	orr r1, r2, r3, lsl r1
	str r1, [lr, r0, lsl #2]
	b _0211E028
_0211E024:
	mov r3, #0
_0211E028:
	ldr r0, [r5, #0x1c]
	str r3, [r0, #0x1c]
	ldr r0, [r5, #0x160]
	add r0, r0, r4
	ldr r0, [r0, #4]
	tst r0, #1
	beq _0211E08C
	ldr r1, [r5, #0x18]
	add r2, r5, #0x164
	ldr r0, [r2, r1, lsl #2]
	sub r0, r0, #1
	str r0, [r2, r1, lsl #2]
	ldr r1, [r5, #0x18]
	add r0, r5, r1, lsl #2
	ldr r0, [r0, #0x164]
	cmp r0, #0
	bne _0211E078
	add r0, r5, #0x24
	mov r2, #0
	bl ov22_0212086C
_0211E078:
	ldr r0, [r5, #0x160]
	add r1, r0, #4
	ldr r0, [r1, r4]
	bic r0, r0, #1
	str r0, [r1, r4]
_0211E08C:
	mov r0, #1
	str r0, [r5, #0x14]
	mov r0, #2
	str r0, [r5, #4]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfa
	bl sub_02034C44
	add r0, r6, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #4
	mov r2, #0xf
	bl sub_0200E0E0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #4
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov22_0211E0D8
ov22_0211E0D8: ; 0x0211E0D8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r3
	mov r5, r0
	tst r4, #2
	movne r1, #1
	moveq r1, #0
	add r0, r5, #0xa4
	bl ov22_0211F344
	tst r4, #8
	movne r1, #1
	moveq r1, #0
	add r0, r5, #0xe4
	bl ov22_0211F344
	tst r4, #1
	movne r1, #1
	moveq r1, #0
	add r0, r5, #0xc4
	bl ov22_0211F344
	tst r4, #4
	movne r1, #1
	moveq r1, #0
	add r0, r5, #0x104
	bl ov22_0211F344
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov22_0211E0D8

	arm_func_start ov22_0211E138
ov22_0211E138: ; 0x0211E138
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldmltia sp!, {r3, pc}
	cmp r2, #3
	ldmgeia sp!, {r3, pc}
	mov r1, r2
	bl ov22_0211DE40
	ldmia sp!, {r3, pc}
	arm_func_end ov22_0211E138

	arm_func_start ov22_0211E158
ov22_0211E158: ; 0x0211E158
	bx lr
	arm_func_end ov22_0211E158

	arm_func_start ov22_0211E15C
ov22_0211E15C: ; 0x0211E15C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x134
	bl ov22_02120B98
	add r0, r4, #0x128
	bl ov22_02120A10
	add r0, r4, #0x34
	bl ov22_0211FA64
	add r0, r4, #0x24
	bl ov22_021206B4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov22_0211E15C

	arm_func_start ov22_0211E18C
ov22_0211E18C: ; 0x0211E18C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x134
	bl ov22_02120B98
	add r0, r4, #0x128
	bl ov22_02120A10
	add r0, r4, #0x34
	bl ov22_0211FA64
	add r0, r4, #0x24
	bl ov22_021206B4
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov22_0211E18C

	arm_func_start ov22_0211E1C4
ov22_0211E1C4: ; 0x0211E1C4
	ldr ip, _0211E1D0 ; =0xFFFFFFF8
	add r0, r0, ip
	b ov22_0211DEA4
	.align 2, 0
	arm_func_end ov22_0211E1C4
_0211E1D0: .word 0xFFFFFFF8

	arm_func_start ov22_0211E1D4
ov22_0211E1D4: ; 0x0211E1D4
	ldr ip, _0211E1E0 ; =0xFFFFFFF4
	add r0, r0, ip
	b ov22_0211E0D8
	.align 2, 0
	arm_func_end ov22_0211E1D4
_0211E1E0: .word 0xFFFFFFF4

	arm_func_start ov22_0211E1E4
ov22_0211E1E4: ; 0x0211E1E4
	ldr ip, _0211E1F0 ; =0xFFFFFFF4
	add r0, r0, ip
	b ov22_0211DEF4
	.align 2, 0
	arm_func_end ov22_0211E1E4
_0211E1F0: .word 0xFFFFFFF4

	arm_func_start ov22_0211E1F4
ov22_0211E1F4: ; 0x0211E1F4
	ldr ip, _0211E200 ; =0xFFFFFFF0
	add r0, r0, ip
	b ov22_0211E138
	.align 2, 0
	arm_func_end ov22_0211E1F4
_0211E200: .word 0xFFFFFFF0

	arm_func_start ov22_0211E204
ov22_0211E204: ; 0x0211E204
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, _0211E2C8 ; =PTR_LAB_overlay_22_0211e158_overlay_22_021218b0
	mov sl, r0
	str r2, [sl]
	mov r3, #0
	ldr r0, _0211E2CC ; =DAT_overlay_22_02121710
	str r3, [sl, #4]
	str r0, [sl, #8]
	ldr r2, _0211E2D0 ; =PTR_LAB_overlay_22_0211f10c_overlay_22_02121a94
	ldr r0, _0211E2D4 ; =PTR_LAB_overlay_22_0211f124_overlay_22_02121ac8
	str r2, [sl]
	str r0, [sl, #8]
	str r3, [sl, #0xc]
	str r3, [sl, #0x10]
	strb r3, [sl, #0x14]
	str r3, [sl, #0x18]
	str r1, [sp]
	str r3, [sl, #0x1c]
	add sb, sl, #0x20
	add r4, sl, #0x60
	mvn r8, #0
	mov r7, r3
	mov r6, #0x18
	mov fp, #8
	mov r5, #1
	arm_func_end ov22_0211E204
_0211E268:
	str r8, [sb]
	str r7, [sb, #0xc]
	str r7, [sb, #0x10]
	str r7, [sb, #0x14]
	str r7, [sb, #0x18]
	strb r6, [sb, #0x1c]
	strb fp, [sb, #0x1d]
	strb r5, [sb, #0x1e]
	mov r1, r7
	mov r2, fp
	add r0, sb, #4
	strb r5, [sb, #0x1f]
	bl MI_CpuFill8
	add sb, sb, #0x20
	cmp sb, r4
	blo _0211E268
	ldr r0, [sp]
	mov r1, #0
	str r0, [sl, #0x60]
	str r1, [sl, #0x64]
	str r1, [sl, #0xc8]
	mov r0, sl
	str r1, [sl, #0xcc]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211E2C8: .word PTR_LAB_overlay_22_0211e158_overlay_22_021218b0
_0211E2CC: .word DAT_overlay_22_02121710
_0211E2D0: .word PTR_LAB_overlay_22_0211f10c_overlay_22_02121a94
_0211E2D4: .word PTR_LAB_overlay_22_0211f124_overlay_22_02121ac8

	arm_func_start ov22_0211E2D8
ov22_0211E2D8: ; 0x0211E2D8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r3, _0211E488 ; =s_md001_overlay_22_02121ae0
	mov r2, #0x200
	mov r5, r0
	mov r4, r1
	stmia sp, {r2, r3}
	mov ip, #1
	ldr r0, _0211E48C ; =s_menu_overlay_22_02121acc
	ldr r1, _0211E490 ; =s_md001_bg_overlay_22_02121ad4
	mov r2, #5
	str ip, [sp, #8]
	bl sub_02020804
	ldr r0, _0211E494 ; =0x05000420
	add r1, r5, #0x68
	mov r2, #0x60
	bl MI_CpuCopy8
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0x800
	str r1, [sp, #0xc]
	ldr r0, _0211E48C ; =s_menu_overlay_22_02121acc
	ldr r1, _0211E490 ; =s_md001_bg_overlay_22_02121ad4
	ldr r3, _0211E498 ; =s_md001_01_overlay_22_02121ae8
	mov r2, #5
	bl sub_02020FF0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x800
	str r0, [sp, #0xc]
	ldr r0, _0211E48C ; =s_menu_overlay_22_02121acc
	ldr r1, _0211E490 ; =s_md001_bg_overlay_22_02121ad4
	ldr r3, _0211E49C ; =s_md001_02_overlay_22_02121af4
	mov r2, #6
	bl sub_02020FF0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x800
	str r0, [sp, #0xc]
	ldr r0, _0211E48C ; =s_menu_overlay_22_02121acc
	ldr r1, _0211E490 ; =s_md001_bg_overlay_22_02121ad4
	ldr r3, _0211E4A0 ; =s_md001_03_overlay_22_02121b00
	mov r2, #7
	bl sub_02020FF0
	mvn r0, #0
	str r0, [sp]
	ldr r1, _0211E4A4 ; =s_data_menu_overlay_22_02121b0c
	ldr r2, _0211E4A8 ; =s_md001_00_overlay_22_02121b18
	mov r0, r4
	mov r3, #1
	bl ov22_0211F3F0
	str r0, [r5, #0x18]
	mov r1, #1
	str r1, [sp]
	mov r0, #0xf0
	str r0, [sp, #4]
	mov r0, #0x74
	str r0, [sp, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r3, #0
	str r3, [sp, #0x14]
	ldr r2, [r5, #0x18]
	add r0, r5, #0x40
	bl ov22_0211F134
	mov r0, r5
	cmp r5, #0
	addne r0, r5, #8
	str r0, [r5, #0x4c]
	mov r0, #3
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x74
	str r0, [sp, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r1, #0
	str r1, [sp, #0x14]
	ldr r2, [r5, #0x18]
	add r0, r5, #0x20
	mov r3, #2
	bl ov22_0211F134
	mov r0, r5
	cmp r5, #0
	addne r0, r5, #8
	str r0, [r5, #0x2c]
	ldr r1, [r5, #0x18]
	mov r0, r4
	mov r2, #0
	bl ov22_0211F4A4
	mov r0, r5
	bl ov22_0211E4AC
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211E488: .word s_md001_overlay_22_02121ae0
_0211E48C: .word s_menu_overlay_22_02121acc
_0211E490: .word s_md001_bg_overlay_22_02121ad4
_0211E494: .word 0x05000420
_0211E498: .word s_md001_01_overlay_22_02121ae8
_0211E49C: .word s_md001_02_overlay_22_02121af4
_0211E4A0: .word s_md001_03_overlay_22_02121b00
_0211E4A4: .word s_data_menu_overlay_22_02121b0c
_0211E4A8: .word s_md001_00_overlay_22_02121b18
	arm_func_end ov22_0211E2D8

	arm_func_start ov22_0211E4AC
ov22_0211E4AC: ; 0x0211E4AC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xb8
	ldr r1, _0211E5A4 ; =DAT_overlay_22_021216e0
	mov r7, r0
	ldr r1, [r1, #4]
	add r0, sp, #0
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #0xcc]
	cmp r0, #0
	ldrne r6, [sp, #0x4c]
	cmpne r6, #0
	beq _0211E594
	ldr r1, [r6]
	mov r5, #2
	str r1, [r0]
	ldr r1, [r6, #4]
	ldr r0, [r7, #0xcc]
	str r1, [r0, #4]
	ldr r0, [r7, #0xcc]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #0xcc]
	mov r4, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0xcc]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0211E594
	arm_func_end ov22_0211E4AC
_0211E52C:
	ldr r1, [r6, r5, lsl #2]
	ldr r0, [r2, #8]
	add r5, r5, #1
	str r1, [r0, r4, lsl #3]
	ldr r0, [r7, #0xcc]
	ldr r0, [r0, #8]
	ldr r0, [r0, r4, lsl #3]
	bl _Znam
	ldr r1, [r7, #0xcc]
	ldr r1, [r1, #8]
	add r1, r1, r4, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0xcc]
	add r0, r6, r5, lsl #2
	ldr r2, [r1, #8]
	add r1, r2, r4, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r4, lsl #3]
	bl MI_CpuCopy8
	ldr r2, [r7, #0xcc]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r4, lsl #3]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, r1, lsr #2
	blo _0211E52C
_0211E594:
	add r0, sp, #0
	bl sub_02002C7C
	add sp, sp, #0xb8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211E5A4: .word DAT_overlay_22_021216e0

	arm_func_start ov22_0211E5A8
ov22_0211E5A8: ; 0x0211E5A8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0xcc]
	cmp r1, #0
	beq _0211E640
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211E60C
	mov r6, r4
	arm_func_end ov22_0211E5A8
_0211E5D0:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211E5F8
	bl _ZdaPv
	ldr r0, [r5, #0xcc]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211E5F8:
	ldr r1, [r5, #0xcc]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211E5D0
_0211E60C:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211E628
	bl _ZdaPv
	ldr r0, [r5, #0xcc]
	mov r1, #0
	str r1, [r0, #8]
_0211E628:
	ldr r0, [r5, #0xcc]
	cmp r0, #0
	beq _0211E640
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0xcc]
_0211E640:
	ldr r4, [r5, #0x18]
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	beq _0211E660
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0211E660:
	mov r0, #0
	str r0, [r5, #0x18]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov22_0211E66C
ov22_0211E66C: ; 0x0211E66C
	cmp r1, #0
	blt _0211E67C
	cmp r1, #3
	blt _0211E680
	arm_func_end ov22_0211E66C
_0211E67C:
	mov r1, #0
_0211E680:
	str r1, [r0, #0xc8]
	bx lr

	arm_func_start ov22_0211E688
ov22_0211E688: ; 0x0211E688
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211E744 ; =0x0400100A
	mov ip, r0
	ldrh r0, [r2]
	mov r1, #0x20
	sub r7, r2, #2
	and r0, r0, #0x43
	orr r0, r0, #0x108
	strh r0, [r2]
	ldrh r0, [r2, #2]
	sub r6, r2, #0xa
	mov r4, #0
	and r0, r0, #0x43
	orr r0, r0, #0x308
	strh r0, [r2, #2]
	ldrh r0, [r2, #4]
	add lr, ip, #0x68
	mov r3, r1
	and r0, r0, #0x43
	orr r0, r0, #0x108
	orr r0, r0, #0x400
	strh r0, [r2, #4]
	ldrh r5, [r7]
	mov r0, #0x1f
	bic r5, r5, #3
	strh r5, [r7]
	ldrh r5, [r2]
	bic r5, r5, #3
	orr r5, r5, #1
	strh r5, [r2]
	ldrh r5, [r2, #2]
	bic r5, r5, #3
	orr r5, r5, #2
	strh r5, [r2, #2]
	ldrh r5, [r2, #4]
	bic r5, r5, #3
	orr r5, r5, #3
	strh r5, [r2, #4]
	ldr r5, [r6]
	bic r5, r5, #0xe000
	str r5, [r6]
	str r4, [r2, #6]
	str r4, [r2, #0x12]
	ldr r2, [ip, #0xc8]
	add r2, lr, r2, lsl #5
	bl NNS_GfdRegisterNewVramTransferTask
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211E744: .word 0x0400100A
	arm_func_end ov22_0211E688

	arm_func_start ov22_0211E748
ov22_0211E748: ; 0x0211E748
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	str r1, [r5, #0x1c]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r4, [r0, #0x498]
	mov r0, r4
	bl sub_0200CAE0
	mov r0, r4
	mov r1, #1
	bl sub_0200CC88
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #2
	str r2, [sp, #0x10]
	mov r2, #0x20
	mov r0, r4
	mov r3, r2
	bl sub_0200CCD0
	mov r1, #0
	str r1, [r5, #0x10]
	mov r0, r5
	bl ov22_0211EF04
	ldr r1, [r5, #0x10]
	mov r0, r5
	bl ov22_0211EA78
	ldr r0, [r5, #0x60]
	bl ov22_0211F3C8
	mov r0, #0
	str r0, [r5, #4]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov22_0211E748

	arm_func_start ov22_0211E7D8
ov22_0211E7D8: ; 0x0211E7D8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl sub_0201001C
	ldr r1, [r8, #4]
	mov r4, r0
	cmp r1, #0
	mov r5, #1
	beq _0211E80C
	cmp r1, #1
	beq _0211E848
	cmp r1, #2
	beq _0211E99C
	b _0211E9C4
	arm_func_end ov22_0211E7D8
_0211E80C:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211E9C4
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211E9C4
	mov r0, r5
	str r0, [r8, #4]
	mov r0, #0
	str r0, [r8, #0xc]
	b _0211E9C4
_0211E848:
	ldr r0, [r8, #0xc]
	cmp r0, #1
	beq _0211E860
	cmp r0, #2
	beq _0211E8B4
	b _0211E8E0
_0211E860:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211E8E0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211E8E0
	ldr r1, [r8, #0x10]
	mov r0, r8
	bl ov22_0211EF04
	mov r0, #2
	str r0, [r8, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
	b _0211E8E0
_0211E8B4:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211E8E0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	moveq r0, #0
	streq r0, [r8, #0xc]
_0211E8E0:
	ldr r0, [r4, #0x14]
	add r7, r8, #0x20
	ldrh r0, [r0]
	mov r6, #0
	and r0, r0, #0x10
	str r0, [r8, #0x54]
	ldr r0, [r4, #0x14]
	ldrh r0, [r0]
	and r0, r0, #0x20
	str r0, [r8, #0x34]
_0211E908:
	mov r0, r7
	bl ov22_0211F1D0
	add r6, r6, #1
	cmp r6, #1
	add r7, r7, #0x20
	ble _0211E908
	ldrb r0, [r8, #0x14]
	cmp r0, #0
	beq _0211E950
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #4
	mov r2, #0xf
	bl sub_0200E0E0
	mov r0, #1
	str r0, [r8, #0xc]
	mov r0, #0
	strb r0, [r8, #0x14]
_0211E950:
	ldr r0, [r8, #0x18]
	cmp r0, #0
	beq _0211E960
	bl sub_0200F64C
_0211E960:
	ldr r0, [r8, #0x60]
	bl ov22_0211F1D0
	ldr r0, [r8, #0x60]
	bl ov22_0211F2A4
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #2]
	and r0, r0, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211E9C4
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	b _0211E9C4
_0211E99C:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211E9C4
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	moveq r5, #0
_0211E9C4:
	add r6, r8, #0x20
	mov r4, #0
_0211E9CC:
	mov r0, r6
	bl ov22_0211F2A4
	add r4, r4, #1
	cmp r4, #1
	add r6, r6, #0x20
	ble _0211E9CC
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov22_0211E9EC
ov22_0211E9EC: ; 0x0211E9EC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0211EA04
	bl sub_0200F71C
	arm_func_end ov22_0211E9EC
_0211EA04:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov22_0211F928
	ldmia sp!, {r4, pc}

	arm_func_start ov22_0211EA18
ov22_0211EA18: ; 0x0211EA18
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_0201001C
	mov r1, #2
	mov r4, r0
	str r1, [r5, #4]
	mov r0, #0
	str r0, [r5, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x48c]
	ldr r1, _0211EA74 ; =0x00000103
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
_0211EA74: .word 0x00000103
	arm_func_end ov22_0211EA18

	arm_func_start ov22_0211EA78
ov22_0211EA78: ; 0x0211EA78
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r7, r0
	ldr r0, [r7, #0x10]
	mov r5, r1
	cmp r0, #0
	movgt r1, #1
	movle r1, #0
	add r0, r7, #0x20
	bl ov22_0211F398
	ldr r0, [r7, #0x64]
	cmp r0, #0
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _0211EADC
	ldr r0, [r0, #0x18]
	ldr r1, [r7, #0x10]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	moveq r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movlt r1, #1
	movge r1, #0
	arm_func_end ov22_0211EA78
_0211EADC:
	add r0, r7, #0x40
	bl ov22_0211F398
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r6, [r0, #0x498]
	mov r1, #0
	mov r0, r6
	bl sub_0200CF7C
	ldr r0, [r7, #0x64]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r0, #0x18]
	mov r3, #0xb
	cmp r0, #0
	ldrne r1, [r0]
	mov r0, #1
	moveq r1, #0
	stmia sp, {r0, r1}
	mov r1, #0
	str r0, [sp, #8]
	mov r0, r6
	mov r2, r1
	str r1, [sp, #0xc]
	bl sub_0200CDA0
	ldr r4, [r7, #0x64]
	mov r2, r5
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0211EBA0
	ldr r0, [r1, #0xc]
	cmp r5, #0
	movlt r2, #0
	cmp r2, r0
	subge r2, r0, #1
	ldr r1, [r1, #8]
	mov r0, r4
	add r1, r2, r1
	add r8, r1, #1
	bl ov22_02120AD8
	cmp r8, r0
	blt _0211EB90
	mov r0, r4
	bl ov22_02120AD8
	sub r8, r0, #1
_0211EB90:
	mov r0, r4
	mov r1, r8
	bl ov22_02120AE0
	b _0211EBA4
_0211EBA0:
	mov r0, #0
_0211EBA4:
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r0, r6
	str r1, [sp, #0xc]
	mov r2, #0x30
	mov r3, #0x33
	bl sub_0200CDA0
	ldr r0, [r7, #0xcc]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl sub_0201001C
	ldr r1, [r7, #0xcc]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x4ac]
	ldr r1, [r1, #8]
	add r0, r5, #9
	add r0, r1, r0, lsl #3
	ldr r5, [r0, #4]
	add r2, sp, #0x10
	add r0, r4, #0x14
	mov r1, #1
	str r5, [sp, #0x10]
	bl ov22_021214CC
	mov r1, #1
	rsb r0, r0, #0xa
	stmia sp, {r1, r5}
	add r0, r0, r0, lsr #31
	mov r2, r0, asr #1
	mov r1, #0
	str r1, [sp, #8]
	mov r0, r6
	add r2, r2, #0xdd
	str r1, [sp, #0xc]
	mov r3, #0xb4
	bl sub_0200CDA0
	ldr r1, [r7, #0xcc]
	add r0, r4, #0x14
	ldr r2, [r1, #8]
	mov r1, #1
	ldr r5, [r2, #0xf4]
	add r2, sp, #0x10
	str r5, [sp, #0x10]
	bl ov22_021214CC
	rsb r0, r0, #0xa
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	add r2, r0, #0xe8
	mov r0, #1
	stmia sp, {r0, r5}
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, r6
	mov r3, #0xb4
	bl sub_0200CDA0
	ldr r0, [r7, #0x64]
	ldr r1, [r7, #0xcc]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #8]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	add r2, sp, #0x10
	moveq r0, #0
	add r0, r0, #8
	add r0, r1, r0, lsl #3
	ldr r5, [r0, #4]
	add r0, r4, #0x14
	mov r1, #1
	str r5, [sp, #0x10]
	bl ov22_021214CC
	rsb r0, r0, #0xa
	mov r1, #1
	add r0, r0, r0, lsr #31
	mov r2, r0, asr #1
	stmia sp, {r1, r5}
	mov r1, #0
	str r1, [sp, #8]
	mov r0, r6
	add r2, r2, #0xf3
	mov r3, #0xb4
	str r1, [sp, #0xc]
	bl sub_0200CDA0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}

	arm_func_start ov22_0211ED04
ov22_0211ED04: ; 0x0211ED04
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x64]
	cmp r0, #0
	beq _0211EDF4
	ldr r3, [r0, #0x18]
	ldr r2, [r5, #0x10]
	cmp r3, #0
	ldrne r0, [r3, #0xc]
	moveq r0, #0
	sub r0, r0, #1
	cmp r2, r0
	bge _0211EDF4
	cmp r3, #0
	beq _0211ED70
	ldr r1, [r3, #0x10]
	cmp r1, #0
	beq _0211ED68
	cmp r2, #0
	blt _0211ED68
	ldr r0, [r3, #0xc]
	cmp r2, r0
	movlt r0, r2, lsl #1
	ldrlth r4, [r1, r0]
	blt _0211ED74
	arm_func_end ov22_0211ED04
_0211ED68:
	mov r4, #0
	b _0211ED74
_0211ED70:
	mov r4, #0
_0211ED74:
	ldr r1, [r5, #0x10]
	mov r0, r5
	add r1, r1, #1
	str r1, [r5, #0x10]
	bl ov22_0211EA78
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfa
	bl sub_02034C44
	ldr r0, [r5, #0x64]
	ldr r2, [r5, #0x10]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0211EDE0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0211EDD8
	cmp r2, #0
	blt _0211EDD8
	ldr r0, [r0, #0xc]
	cmp r2, r0
	movlt r0, r2, lsl #1
	ldrlth r0, [r1, r0]
	blt _0211EDE4
_0211EDD8:
	mov r0, #0
	b _0211EDE4
_0211EDE0:
	mov r0, #0
_0211EDE4:
	cmp r4, r0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0211EDF4:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov22_0211EE10
ov22_0211EE10: ; 0x0211EE10
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x10]
	cmp r2, #0
	ble _0211EEE8
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0211EE64
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0211EE5C
	cmp r2, #0
	blt _0211EE5C
	ldr r0, [r0, #0xc]
	cmp r2, r0
	movlt r0, r2, lsl #1
	ldrlth r4, [r1, r0]
	blt _0211EE68
	arm_func_end ov22_0211EE10
_0211EE5C:
	mov r4, #0
	b _0211EE68
_0211EE64:
	mov r4, #0
_0211EE68:
	ldr r1, [r5, #0x10]
	mov r0, r5
	sub r1, r1, #1
	str r1, [r5, #0x10]
	bl ov22_0211EA78
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfa
	bl sub_02034C44
	ldr r0, [r5, #0x64]
	ldr r2, [r5, #0x10]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0211EED4
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0211EECC
	cmp r2, #0
	blt _0211EECC
	ldr r0, [r0, #0xc]
	cmp r2, r0
	movlt r0, r2, lsl #1
	ldrlth r0, [r1, r0]
	blt _0211EED8
_0211EECC:
	mov r0, #0
	b _0211EED8
_0211EED4:
	mov r0, #0
_0211EED8:
	cmp r4, r0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0211EEE8:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov22_0211EF04
ov22_0211EF04: ; 0x0211EF04
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xd0
	mov sl, r0
	ldr r0, [sl, #0x64]
	mov sb, r1
	cmp r0, #0
	addeq sp, sp, #0xd0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0211EF60
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0211EF58
	cmp sb, #0
	blt _0211EF58
	ldr r0, [r0, #0xc]
	cmp sb, r0
	movlt r0, sb, lsl #1
	ldrlth r4, [r1, r0]
	blt _0211EF64
	arm_func_end ov22_0211EF04
_0211EF58:
	mov r4, #0
	b _0211EF64
_0211EF60:
	mov r4, #0
_0211EF64:
	ldr r1, _0211F0B4 ; =s_data_menu_rd_03d_LZ_bin_overlay_22_02121b24
	add r0, sp, #0x70
	mov r2, r4
	bl OS_SPrintf
	ldr r1, _0211F0B8 ; =s_rd_03d_nbfs_overlay_22_02121b3c
	add r0, sp, #0x10
	mov r2, r4
	bl OS_SPrintf
	ldr r0, [sl, #0x1c]
	add r1, sp, #0x70
	add r2, sp, #0x10
	bl ov22_0211F7B8
	ldr r0, [sl, #0x1c]
	bl ov22_0211F8A8
	ldr r0, [sl, #0x64]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0211EFE4
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0211EFDC
	cmp sb, #0
	blt _0211EFDC
	ldr r0, [r0, #0xc]
	cmp sb, r0
	bge _0211EFDC
	ldrsb r8, [r1, sb]
	cmp r8, #0
	rsblt r8, r8, #0
	b _0211EFE8
_0211EFDC:
	mov r8, #0
	b _0211EFE8
_0211EFE4:
	mov r8, #0
_0211EFE8:
	cmp r8, #0
	mov r4, #0
	addle sp, sp, #0xd0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211EFF8:
	ldr r0, [sl, #0x64]
	mov r1, sb
	mov r2, r4
	bl ov22_0211F0F0
	cmp r0, #0
	beq _0211F0A0
	ldrh r2, [r0, #2]
	ldrb r1, [r0]
	cmp r2, #0
	str r1, [sp, #0xc]
	ldrb r1, [r0, #1]
	str r1, [sp, #8]
	ldrh fp, [r0, #6]
	beq _0211F040
	cmp r2, #1
	beq _0211F048
	cmp r2, #2
	beq _0211F050
_0211F040:
	mov r5, #3
	b _0211F054
_0211F048:
	mov r5, #1
	b _0211F054
_0211F050:
	mov r5, #5
_0211F054:
	ldrh r0, [r0, #4]
	ldr r6, [sl, #0x64]
	add r7, r0, #1
	add r0, r6, #0xc
	bl ov22_02120AD8
	cmp r7, r0
	blt _0211F07C
	add r0, r6, #0xc
	bl ov22_02120AD8
	sub r7, r0, #1
_0211F07C:
	mov r1, r7
	add r0, r6, #0xc
	bl ov22_02120AE0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	mov r3, r5
	stmia sp, {r0, fp}
	ldr r0, [sl, #0x1c]
	bl ov22_0211F8C4
_0211F0A0:
	add r4, r4, #1
	cmp r4, r8
	blt _0211EFF8
	add sp, sp, #0xd0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211F0B4: .word s_data_menu_rd_03d_LZ_bin_overlay_22_02121b24
_0211F0B8: .word s_rd_03d_nbfs_overlay_22_02121b3c

	arm_func_start ov22_0211F0BC
ov22_0211F0BC: ; 0x0211F0BC
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _0211F0D8
	cmp r1, #1
	beq _0211F0E4
	ldmia sp!, {r4, pc}
	arm_func_end ov22_0211F0BC
_0211F0D8:
	bl ov22_0211EE10
	strb r0, [r4, #0x14]
	ldmia sp!, {r4, pc}
_0211F0E4:
	bl ov22_0211ED04
	strb r0, [r4, #0x14]
	ldmia sp!, {r4, pc}

	arm_func_start ov22_0211F0F0
ov22_0211F0F0: ; 0x0211F0F0
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov22_02120FA8
	ldmia sp!, {r3, pc}
	arm_func_end ov22_0211F0F0

	arm_func_start ov22_0211F10C
ov22_0211F10C: ; 0x0211F10C
	bx lr
	arm_func_end ov22_0211F10C

	arm_func_start ov22_0211F110
ov22_0211F110: ; 0x0211F110
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov22_0211F110

    arm_func_start ov22_0211F124
ov22_0211F124: ; 0x0211F124
	ldr ip, _0211F130 ; =0xFFFFFFF8
	add r0, r0, ip
	b ov22_0211F0BC
	.align 2, 0
	arm_func_end ov22_0211F124
_0211F130: .word 0xFFFFFFF8

	arm_func_start ov22_0211F134
ov22_0211F134: ; 0x0211F134
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r2
	str r1, [r4]
	mov r1, r3
	ldr ip, [sp, #0x24]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	mov r0, r5
	str ip, [sp]
	bl sub_0200F4FC
	str r0, [r4, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	mov r0, r5
	bl sub_0200F4FC
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0211F1B4
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, #0
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0x10
	str r3, [sp]
	bl sub_0200EBF4
	arm_func_end ov22_0211F134
_0211F1B4:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldrne r0, [r4, #8]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov22_0211F1D0
ov22_0211F1D0: ; 0x0211F1D0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	ldrne r0, [r5, #4]
	cmpne r0, #0
	ldrne r1, [r5, #8]
	cmpne r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0x18]
	mov r4, #0
	eor r1, r1, r2
	tst r2, r1
	bne _0211F218
	bl sub_0200EB84
	cmp r0, #0
	beq _0211F228
	arm_func_end ov22_0211F1D0
_0211F218:
	ldrsb r0, [r5, #0x1c]
	mov r4, #1
	str r0, [r5, #0x10]
	b _0211F278
_0211F228:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0211F244
	ldr r0, [r5, #4]
	bl sub_0200EBBC
	cmp r0, #0
	beq _0211F270
_0211F244:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ble _0211F278
	sub r0, r0, #1
	str r0, [r5, #0x10]
	cmp r0, #0
	bgt _0211F278
	ldrsb r0, [r5, #0x1d]
	mov r4, #1
	str r0, [r5, #0x10]
	b _0211F278
_0211F270:
	mov r0, r4
	str r0, [r5, #0x10]
_0211F278:
	cmp r4, #0
	ldrne r0, [r5, #0xc]
	cmpne r0, #0
	beq _0211F298
	ldr r2, [r0]
	ldr r1, [r5]
	ldr r2, [r2]
	blx r2
_0211F298:
	ldr r0, [r5, #0x14]
	str r0, [r5, #0x18]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov22_0211F2A4
ov22_0211F2A4: ; 0x0211F2A4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldrne r1, [r4, #8]
	cmpne r1, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0x1e]
	cmp r1, #0
	bne _0211F2EC
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r4, #8]
	mov r1, #1
	str r1, [r0, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end ov22_0211F2A4
_0211F2EC:
	bl sub_0200EBBC
	cmp r0, #0
	ldreq r0, [r4, #0x14]
	cmpeq r0, #0
	beq _0211F328
	ldr r0, [r4, #0x10]
	cmp r0, #4
	blt _0211F328
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r4, #8]
	mov r1, #1
	str r1, [r0, #0x14]
	ldmia sp!, {r4, pc}
_0211F328:
	ldr r0, [r4, #4]
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r0, [r4, #8]
	mov r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r4, pc}

	arm_func_start ov22_0211F344
ov22_0211F344: ; 0x0211F344
	strb r1, [r0, #0x1e]
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _0211F368
	ldrb r1, [r0, #0x1e]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	str r1, [r2, #0x14]
	arm_func_end ov22_0211F344
_0211F368:
	ldr r1, [r0, #8]
	cmp r1, #0
	bxeq lr
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r1, #0x14]
	bx lr

	arm_func_start ov22_0211F398
ov22_0211F398: ; 0x0211F398
	strb r1, [r0, #0x1f]
	tst r1, #0xff
	bxne lr
	ldr r2, [r0, #4]
	cmp r2, #0
	movne r1, #0
	strne r1, [r2, #0x14]
	ldr r1, [r0, #8]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x14]
	bx lr
	arm_func_end ov22_0211F398

	arm_func_start ov22_0211F3C8
ov22_0211F3C8: ; 0x0211F3C8
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	bx lr
	arm_func_end ov22_0211F3C8

	arm_func_start ov22_0211F3DC
ov22_0211F3DC: ; 0x0211F3DC
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	arm_func_end ov22_0211F3DC

	arm_func_start ov22_0211F3F0
ov22_0211F3F0: ; 0x0211F3F0
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
	beq _0211F45C
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
	arm_func_end ov22_0211F3F0
_0211F45C:
	ldr r1, [sb, #4]
	mov r0, r5
	str r1, [sp]
	ldr r3, [sb]
	mov r1, r8
	mov r2, r7
	bl sub_0200EE14
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

	arm_func_start ov22_0211F4A4
ov22_0211F4A4: ; 0x0211F4A4
	cmp r2, #0
	ldr r3, [r1, #0x30]
	ldrlt r2, [r0, #8]
	ldr r1, [r0, #8]
	add r2, r2, r3
	cmp r2, r1
	strgt r2, [r0, #8]
	bx lr
	arm_func_end ov22_0211F4A4

	arm_func_start ov22_0211F4C4
ov22_0211F4C4: ; 0x0211F4C4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02004114
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x60]
	ldmia sp!, {r4, pc}
	arm_func_end ov22_0211F4C4

	arm_func_start ov22_0211F4E0
ov22_0211F4E0: ; 0x0211F4E0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, #0
	str r0, [r4, #4]
	ldr ip, _0211F528 ; =ov22_0211F530
	str r0, [r4, #8]
	ldr r3, _0211F52C ; =ov22_0211F4C4
	add r0, r4, #0x34
	mov r1, #8
	mov r2, #0x64
	str ip, [sp]
	bl __cxa_vec_ctor
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x354]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211F528: .word ov22_0211F530
_0211F52C: .word ov22_0211F4C4
	arm_func_end ov22_0211F4E0

	arm_func_start ov22_0211F530
ov22_0211F530: ; 0x0211F530
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02004160
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov22_0211F530

	arm_func_start ov22_0211F544
ov22_0211F544: ; 0x0211F544
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov22_0211F6F8
	ldr r3, _0211F590 ; =ov22_0211F530
	add r0, r4, #0x34
	mov r1, #8
	mov r2, #0x64
	bl __cxa_vec_cleanup
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0211F588
	beq _0211F580
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov22_0211F544
_0211F580:
	mov r0, #0
	str r0, [r4, #4]
_0211F588:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211F590: .word ov22_0211F530

	arm_func_start ov22_0211F594
ov22_0211F594: ; 0x0211F594
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r4, r0
	mov r0, #0
	bl GX_SetBankForTex
	mov r0, #0
	bl GX_SetBankForTexPltt
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #3
	mov r2, r0
	bl GX_SetGraphicsMode
	ldr r1, _0211F6EC ; =0x0400000E
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0x284
	orr r0, r0, #0x4000
	strh r0, [r1]
	bl G2_GetBG3ScrPtr
	mov r1, r0
	mov r0, #0x8000
	mov r2, #0x18000
	bl MIi_CpuClear16
	ldr r3, _0211F6F0 ; =0x0400000A
	mov r1, #0
	ldrh r2, [r3]
	add r0, sp, #0x10
	and r2, r2, #0x43
	orr r2, r2, #0xf00
	strh r2, [r3]
	str r1, [r3, #6]
	str r1, [r3, #0xa]
	bl MTX_Identity22_
	mov r2, #0
	str r2, [sp]
	ldr r0, _0211F6F4 ; =0x04000030
	add r1, sp, #0x10
	mov r3, r2
	str r2, [sp, #4]
	bl G2x_SetBGyAffine_
	ldr ip, _0211F6F0 ; =0x0400000A
	mov r3, #0
	ldrh r1, [ip]
	sub r5, ip, #2
	add r0, ip, #0x46
	bic r1, r1, #3
	strh r1, [ip]
	ldrh lr, [r5]
	mov r1, #1
	mov r2, #8
	bic lr, lr, #3
	orr lr, lr, #1
	strh lr, [r5]
	ldrh lr, [ip, #4]
	bic lr, lr, #3
	orr lr, lr, #2
	strh lr, [ip, #4]
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0xb00
	str r0, [r1]
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	beq _0211F6AC
	bl sub_02003718
	arm_func_end ov22_0211F594
_0211F6AC:
	mov r1, #0x100000
	str r0, [r4, #8]
	str r1, [sp]
	sub r0, r1, #0x500000
	str r0, [sp, #4]
	mov r0, #0x800000
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x400000
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	mov r3, r1
	mov r2, #0xc0000
	bl sub_02003788
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211F6EC: .word 0x0400000E
_0211F6F0: .word 0x0400000A
_0211F6F4: .word 0x04000030

	arm_func_start ov22_0211F6F8
ov22_0211F6F8: ; 0x0211F6F8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #8]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0211F720
	mov r0, r4
	bl sub_0200372C
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov22_0211F6F8
_0211F720:
	mov r0, #0
	str r0, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov22_0211F72C
ov22_0211F72C: ; 0x0211F72C
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r6, [r0, #0x4ac]
	bl G2_GetBG1ScrPtr
	mov r5, r0
	bl G2_GetBG1CharPtr
	mov r3, r0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	add r1, r6, #0x14
	mov r2, r5
	add r0, r4, #0xc
	bl ov22_02121024
	mov r0, #0
	str r0, [r4, #0x354]
	arm_func_end ov22_0211F72C
_0211F79C:
	str r0, [r4, #0x94]
	add r0, r0, #1
	cmp r0, #8
	add r4, r4, #0x64
	blt _0211F79C
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}

	arm_func_start ov22_0211F7B8
ov22_0211F7B8: ; 0x0211F7B8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x194
	mov r5, r1
	mov r4, r2
	bl sub_0201001C
	mov r3, #1
	add r0, r0, #0x1000
	str r3, [sp]
	ldr r0, [r0, #0x4a8]
	mov ip, #0
	stmib sp, {r0, ip}
	ldr r1, _0211F8A0 ; =s_DCB_overlay_22_02121b48
	add r0, sp, #0x10
	mov r2, r5
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	ldr r0, [sp, #0x78]
	cmp r0, #0
	ldrne r0, [r0, #0x4c]
	cmpne r0, #0
	bne _0211F81C
	add r0, sp, #0x10
	bl _ZN19CSmartNNSFndArchiveD1Ev
	add sp, sp, #0x194
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov22_0211F7B8
_0211F81C:
	ldr r1, _0211F8A4 ; =s_DCB_s_overlay_22_02121b4c
	add r0, sp, #0x7c
	mov r2, r4
	bl OS_SPrintf
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r0, sp, #0xdc
	add r1, sp, #0x7c
	str r3, [sp, #8]
	mov r2, #1
	bl sub_02002BC4
	ldr r0, [sp, #0x128]
	cmp r0, #0
	bne _0211F870
	add r0, sp, #0xdc
	bl CBinaryFile_complete_obj_dtor
	add r0, sp, #0x10
	bl _ZN19CSmartNNSFndArchiveD1Ev
	add sp, sp, #0x194
	ldmia sp!, {r4, r5, pc}
_0211F870:
	ldr r1, [sp, #0x12c]
	bl DC_FlushRange
	ldr r0, [sp, #0x128]
	ldr r2, [sp, #0x12c]
	mov r1, #0
	bl GX_LoadBG3Scr
	add r0, sp, #0xdc
	bl CBinaryFile_complete_obj_dtor
	add r0, sp, #0x10
	bl _ZN19CSmartNNSFndArchiveD1Ev
	add sp, sp, #0x194
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0211F8A0: .word s_DCB_overlay_22_02121b48
_0211F8A4: .word s_DCB_s_overlay_22_02121b4c

	arm_func_start ov22_0211F8A8
ov22_0211F8A8: ; 0x0211F8A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xc
	bl ov22_02121110
	mov r0, #0
	str r0, [r4, #0x354]
	ldmia sp!, {r4, pc}
	arm_func_end ov22_0211F8A8

	arm_func_start ov22_0211F8C4
ov22_0211F8C4: ; 0x0211F8C4
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr ip, [r4, #0x354]
	mov lr, r2
	cmp ip, #8
	bge _0211F91C
	add r2, r4, #0x34
	mov r0, #0x64
	mla r0, ip, r0, r2
	str r3, [sp]
	ldr r2, [sp, #0x18]
	ldr ip, [sp, #0x1c]
	str r2, [sp, #4]
	mov r2, r1
	mov r3, lr
	str ip, [sp, #8]
	add r1, r4, #0xc
	bl ov22_0212112C
	ldr r0, [r4, #0x354]
	add r0, r0, #1
	str r0, [r4, #0x354]
	arm_func_end ov22_0211F8C4
_0211F91C:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov22_0211F928
ov22_0211F928: ; 0x0211F928
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #0x80000
	rsb r0, r0, #0
	str r0, [r1, #0x1c]
	add r0, r0, #0x20000
	str r0, [r1, #0x20]
	ldr r0, [r4, #8]
	bl sub_020037B4
	ldr r0, [r4, #8]
	bl sub_0200381C
	ldr r0, _0211F9A0 ; =0x0400044C
	mov r5, #0
	str r5, [r0]
	ldr r0, [r4, #0x354]
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	add r6, r4, #0x34
	arm_func_end ov22_0211F928
_0211F97C:
	ldr r1, [r4, #8]
	mov r0, r6
	bl ov22_021213F0
	ldr r0, [r4, #0x354]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #0x64
	blt _0211F97C
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211F9A0: .word 0x0400044C

	arm_func_start ov22_0211F9A4
ov22_0211F9A4: ; 0x0211F9A4
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end ov22_0211F9A4

	arm_func_start ov22_0211F9BC
ov22_0211F9BC: ; 0x0211F9BC
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0211FA5C ; =ptr_FUN_overlay_22_0211fa64_overlay_22_02121b64
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
	str r1, [r5, #0x38]
	str r1, [r5, #0x3c]
	strb r1, [r5, #0x40]
	add r0, r5, #0x44
	mov r2, #0x24
	str r1, [r5, #0x6c]
	bl MI_CpuFill8
	mov r0, r4
	cmp r0, #0
	str r4, [r5, #0x68]
	movle r0, #0
	ble _0211FA50
	ldr r3, _0211FA60 ; =ov22_0211F9A4
	mov r2, #0
	mov r1, #0x10
	str r2, [sp]
	bl __cxa_vec_new
	arm_func_end ov22_0211F9BC
_0211FA50:
	str r0, [r5, #0x6c]
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211FA5C: .word ptr_FUN_overlay_22_0211fa64_overlay_22_02121b64
_0211FA60: .word ov22_0211F9A4

	arm_func_start ov22_0211FA64
ov22_0211FA64: ; 0x0211FA64
	stmdb sp!, {r4, lr}
	ldr r1, _0211FA94 ; =ptr_FUN_overlay_22_0211fa64_overlay_22_02121b64
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _0211FA8C
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x6c]
	arm_func_end ov22_0211FA64
_0211FA8C:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211FA94: .word ptr_FUN_overlay_22_0211fa64_overlay_22_02121b64

	arm_func_start ov22_0211FA98
ov22_0211FA98: ; 0x0211FA98
	stmdb sp!, {r4, lr}
	ldr r1, _0211FAD0 ; =ptr_FUN_overlay_22_0211fa64_overlay_22_02121b64
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _0211FAC0
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x6c]
	arm_func_end ov22_0211FA98
_0211FAC0:
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211FAD0: .word ptr_FUN_overlay_22_0211fa64_overlay_22_02121b64

	arm_func_start ov22_0211FAD4
ov22_0211FAD4: ; 0x0211FAD4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov sl, r0
	str r1, [sl, #4]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r1, [sl, #0x10]
	str r0, [sl, #0x14]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r1, [sl, #8]
	str r0, [sl, #0xc]
	ldr r0, [sl, #0x10]
	ldr r1, [sl, #8]
	add r0, r0, r0, lsr #31
	ldr r4, [sp, #0x3c]
	add r0, r1, r0, asr #1
	add r0, r4, r0
	str r0, [sl, #0x28]
	ldr r1, [sl, #0xc]
	mov r0, #0
	add r5, r1, #8
	mov r1, r3
	str r0, [sp]
	mov sb, r2
	ldr r2, [sl, #0x28]
	mov r0, sb
	mov r3, r5
	ldr r8, [sp, #0x28]
	bl sub_0200F4FC
	str r0, [sl, #0x3c]
	ldr r1, [sl, #8]
	ldr r0, [sp, #0x40]
	mov r7, r5
	add r0, r1, r0
	str r0, [sl, #0x24]
	mov r6, #0
	mov r4, #1
	arm_func_end ov22_0211FAD4
_0211FB6C:
	str r4, [sp]
	ldr r2, [sl, #0x24]
	mov r0, sb
	mov r1, r8
	mov r3, r7
	bl sub_0200F4FC
	add r1, sl, r6, lsl #2
	add r6, r6, #1
	str r0, [r1, #0x44]
	cmp r6, #8
	add r7, r7, #0x10
	blt _0211FB6C
	str r5, [sl, #0x30]
	str r5, [sl, #0x2c]
	ldr r1, [sl, #0x34]
	ldr r0, _0211FBDC ; =0x01FF0000
	ldr r2, _0211FBE0 ; =0x04001010
	and r1, r0, r1, lsl #16
	str r1, [r2]
	ldr r1, [sl, #0x34]
	and r0, r0, r1, lsl #16
	str r0, [r2, #0xc]
	ldr r0, [sl, #0x3c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0211FBDC: .word 0x01FF0000
_0211FBE0: .word 0x04001010

	arm_func_start ov22_0211FBE4
ov22_0211FBE4: ; 0x0211FBE4
	ldr r3, [r0, #0x3c]
	cmp r3, #0
	bxeq lr
	ldr r1, [r0, #0x6c]
	mov r2, #0
	cmp r1, #0
	beq _0211FC10
	ldr r0, [r0, #0x18]
	ldr r0, [r1, r0, lsl #4]
	cmp r0, #0
	movgt r2, #1
	arm_func_end ov22_0211FBE4
_0211FC10:
	cmp r2, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r3, #0x14]
	bx lr

	arm_func_start ov22_0211FC24
ov22_0211FC24: ; 0x0211FC24
	cmp r1, #0
	bxlt lr
	ldr ip, [r0, #0x68]
	cmp r1, ip
	bxge lr
	ldr ip, [r0, #0x6c]
	cmp ip, #0
	bxeq lr
	str r3, [ip, r1, lsl #4]
	ldr r0, [r0, #0x6c]
	add r0, r0, r1, lsl #4
	str r2, [r0, #4]
	bx lr
	arm_func_end ov22_0211FC24

	arm_func_start ov22_0211FC58
ov22_0211FC58: ; 0x0211FC58
	stmdb sp!, {r4, lr}
	ldr r2, [r0, #0x6c]
	ldr r1, [r0, #0x18]
	ldr r3, [r2, r1, lsl #4]
	cmp r3, #0
	bne _0211FC88
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
	ldmia sp!, {r4, pc}
	arm_func_end ov22_0211FC58
_0211FC88:
	ldr r4, [r0, #0x30]
	ldr lr, [r0, #0x2c]
	cmp lr, r4
	ldmneia sp!, {r4, pc}
	ldr ip, [r0, #0xc]
	ldr r3, [r0, #0x14]
	add r3, ip, r3
	sub ip, r3, #8
	cmp lr, ip
	bge _0211FCF8
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
	b _0211FD28
_0211FCF8:
	ldr r3, [r0, #0x1c]
	add r3, r3, #1
	str r3, [r0, #0x20]
	ldr r2, [r2, r1, lsl #4]
	cmp r3, r2
	subge r1, r2, #1
	strge r1, [r0, #0x20]
	bge _0211FD28
	add r1, r3, #8
	cmp r1, r2
	subgt r1, r2, #8
	strgt r1, [r0, #0x20]
_0211FD28:
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x1c]
	cmp r2, r1
	ldreq r1, [r0, #0x30]
	ldreq r0, [r0, #0x2c]
	cmpeq r1, r0
	beq _0211FD5C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x108
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211FD5C:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
	ldmia sp!, {r4, pc}

	arm_func_start ov22_0211FD74
ov22_0211FD74: ; 0x0211FD74
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x30]
	ldr r2, [r0, #0x2c]
	cmp r2, r3
	ldmneia sp!, {r3, pc}
	ldr r1, [r0, #0xc]
	add ip, r1, #8
	cmp r2, ip
	ble _0211FDB8
	cmp r3, r2
	subeq r1, r2, #0x10
	subne r1, r3, #0x10
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x30]
	cmp r1, ip
	strlt ip, [r0, #0x30]
	b _0211FDCC
	arm_func_end ov22_0211FD74
_0211FDB8:
	ldr r1, [r0, #0x1c]
	subs r1, r1, #1
	str r1, [r0, #0x20]
	movmi r1, #0
	strmi r1, [r0, #0x20]
_0211FDCC:
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x1c]
	cmp r2, r1
	ldreq r1, [r0, #0x30]
	ldreq r0, [r0, #0x2c]
	cmpeq r1, r0
	beq _0211FE00
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x108
	bl sub_02034C44
	ldmia sp!, {r3, pc}
_0211FE00:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
	ldmia sp!, {r3, pc}

	arm_func_start ov22_0211FE18
ov22_0211FE18: ; 0x0211FE18
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x6c]
	cmp r0, r2
	addeq r3, r2, #8
	addne r3, r0, #8
	ldr r0, [r4, #0x18]
	ldr r0, [r1, r0, lsl #4]
	sub r0, r0, #8
	cmp r3, r0
	movgt r3, r0
	cmp r3, #0
	movlt r3, #0
	cmp r3, r2
	beq _0211FE90
	str r3, [r4, #0x20]
	mov r0, r4
	mov r1, #1
	str r3, [r4, #0x1c]
	bl ov22_021205B8
	mov r0, r4
	bl ov22_0211FF20
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x108
	bl sub_02034C44
	ldmia sp!, {r4, pc}
	arm_func_end ov22_0211FE18
_0211FE90:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
	ldmia sp!, {r4, pc}

	arm_func_start ov22_0211FEA8
ov22_0211FEA8: ; 0x0211FEA8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	cmp r0, r1
	subeq r2, r1, #8
	subne r2, r0, #8
	cmp r2, #0
	movlt r2, #0
	cmp r2, r1
	beq _0211FF08
	str r2, [r4, #0x20]
	mov r0, r4
	mov r1, #1
	str r2, [r4, #0x1c]
	bl ov22_021205B8
	mov r0, r4
	bl ov22_0211FF20
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x108
	bl sub_02034C44
	ldmia sp!, {r4, pc}
	arm_func_end ov22_0211FEA8
_0211FF08:
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xfd
	bl sub_02034C44
	ldmia sp!, {r4, pc}

	arm_func_start ov22_0211FF20
ov22_0211FF20: ; 0x0211FF20
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r1, [sb, #0x6c]
	ldr r4, [r0, #0x498]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r5, #0
	arm_func_end ov22_0211FF20
_0211FF44:
	mov r0, r4
	mov r1, r5
	bl sub_0200CF7C
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211FF44
	mov r4, #0
_0211FF60:
	ldr r1, [sb, #0x1c]
	mov r0, sb
	add r1, r1, r4
	sub r1, r1, #3
	bl ov22_021204D8
	add r4, r4, #1
	cmp r4, #0x10
	blt _0211FF60
	ldr r0, [sb, #0x1c]
	ldr r1, [sb, #0xc]
	mov r0, r0, lsl #0x1c
	sub r0, r1, r0, lsr #24
	rsb r0, r0, #0x100
	and r1, r0, #0xff
	ldr r0, _02120054 ; =0x01FF0000
	str r1, [sb, #0x34]
	ldr r2, _02120058 ; =0x04001010
	and r1, r0, r1, lsl #16
	str r1, [r2]
	ldr r1, [sb, #0x34]
	mov r8, #0
	and r0, r0, r1, lsl #16
	str r0, [r2, #0xc]
	ldr r1, [sb, #0x6c]
	ldr r0, [sb, #0x18]
	mov r7, r8
	add r6, r1, r0, lsl #4
	mov r4, r8
	mov r5, #1
	mov sl, #0xc
_0211FFD8:
	add r0, sb, r8, lsl #2
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _02120040
	ldr r2, [sb, #0xc]
	ldr r1, [sb, #0x24]
	add r2, r2, #8
	add r2, r2, r7
	bl sub_0200EB28
	ldr r1, [sb, #0x1c]
	ldr r0, [r6]
	add r1, r1, r8
	cmp r1, r0
	bge _02120034
	ldr r0, [r6, #4]
	mla r0, r1, sl, r0
	ldr r0, [r0, #4]
	tst r0, #1
	beq _02120034
	add r0, sb, r8, lsl #2
	ldr r0, [r0, #0x44]
	str r5, [r0, #0x14]
	b _02120040
_02120034:
	add r0, sb, r8, lsl #2
	ldr r0, [r0, #0x44]
	str r4, [r0, #0x14]
_02120040:
	add r8, r8, #1
	cmp r8, #9
	add r7, r7, #0x10
	blt _0211FFD8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02120054: .word 0x01FF0000
_02120058: .word 0x04001010

	arm_func_start ov22_0212005C
ov22_0212005C: ; 0x0212005C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r6, [r8, #0x6c]
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
	beq _0212015C
	ldrh ip, [lr, #0xa]
	ldr r3, [r8, #8]
	ldrh r1, [lr, #0xc]
	cmp r3, ip
	bgt _02120184
	ldr r0, [r8, #0x10]
	add r0, r3, r0
	cmp ip, r0
	bge _02120184
	ldr r0, [r8, #0xc]
	cmp r0, r1
	bgt _02120184
	ldr r3, [r8, #0x14]
	add r3, r0, r3
	cmp r1, r3
	bge _02120184
	sub r1, r1, r0
	bic r3, r1, #0xf
	ldr r1, [r6, r5, lsl #4]
	add r2, r2, r3, asr #4
	cmp r2, r1
	bge _02120184
	add r0, r0, #8
	add r2, r0, r3
	str r2, [r8, #0x30]
	str r2, [r8, #0x2c]
	ldr r0, [r8, #0x3c]
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
	bl ov22_021205B8
	b _02120184
	arm_func_end ov22_0212005C
_0212015C:
	ldr r1, [r4, #0x14]
	ldrh r1, [r1, #2]
	and r1, r1, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	beq _02120184
	ldr r1, [r8, #0xc]
	add r1, r1, #8
	sub r0, r0, r1
	add r7, r2, r0, asr #4
_02120184:
	cmp r7, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #0x38]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r0]
	ldr r1, [r8, #4]
	ldr r3, [r3]
	mov r2, r7
	blx r3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov22_021201B0
ov22_021201B0: ; 0x021201B0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x6c]
	ldr r0, [r5, #0x18]
	ldr r0, [r1, r0, lsl #4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_0201001C
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	cmp r0, r1
	beq _02120244
	bge _021201FC
	sub r1, r1, #2
	str r1, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	strle r0, [r5, #0x2c]
	b _02120210
	arm_func_end ov22_021201B0
_021201FC:
	add r1, r1, #2
	str r1, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	strge r0, [r5, #0x2c]
_02120210:
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl sub_0200EB28
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	bne _0212023C
	mov r0, r5
	mov r1, #1
	bl ov22_021205B8
_0212023C:
	mov r0, #0
	strb r0, [r5, #0x40]
_02120244:
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	cmp r0, r1
	beq _021202F8
	movgt r4, #1
	movle r4, #0
	cmp r4, #0
	ldr r0, [r5, #0x34]
	beq _021202A8
	add r1, r0, #2
	and r0, r1, #0xff
	str r0, [r5, #0x34]
	tst r0, #0xf
	bne _021202E4
	ldr r1, [r5, #0x1c]
	mov r0, r5
	add r1, r1, #1
	str r1, [r5, #0x1c]
	mov r1, #1
	bl ov22_021205B8
	ldr r1, [r5, #0x1c]
	mov r0, r5
	add r1, r1, #0xc
	bl ov22_021204D8
	b _021202E4
_021202A8:
	sub r1, r0, #2
	and r0, r1, #0xff
	str r0, [r5, #0x34]
	tst r0, #0xf
	bne _021202E4
	ldr r1, [r5, #0x1c]
	mov r0, r5
	sub r1, r1, #1
	str r1, [r5, #0x1c]
	mov r1, #1
	bl ov22_021205B8
	ldr r1, [r5, #0x1c]
	mov r0, r5
	sub r1, r1, #3
	bl ov22_021204D8
_021202E4:
	mov r0, r5
	mov r1, r4
	bl ov22_02120348
	mov r0, #0
	strb r0, [r5, #0x40]
_021202F8:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x40]
	add r1, r0, #1
	and r0, r1, #0xff
	cmp r0, #0xc
	strb r1, [r5, #0x40]
	movhs r0, #0
	strhsb r0, [r5, #0x40]
	ldrb r0, [r5, #0x40]
	ldr r1, [r5, #0x3c]
	cmp r0, #6
	movlo r0, #1
	movhs r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r1, #0x14]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov22_02120348
ov22_02120348: ; 0x02120348
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r0, [sl, #0x34]
	and r0, r0, #0xf
	cmp r0, #8
	bge _02120374
	cmp r1, #0
	ldrne r1, [sl, #0x1c]
	rsb sb, r0, #0
	ldreq r1, [sl, #0x20]
	b _02120384
	arm_func_end ov22_02120348
_02120374:
	cmp r1, #0
	ldrne r1, [sl, #0x20]
	rsb sb, r0, #0x10
	ldreq r1, [sl, #0x1c]
_02120384:
	mov r0, #0xc
	mul r8, r1, r0
	mov r5, #0
	ldr r1, [sl, #0x6c]
	ldr r0, [sl, #0x18]
	mov r6, r5
	mov r7, r5
	add r4, r1, r0, lsl #4
	mov fp, #1
_021203A8:
	add r0, sl, r5, lsl #2
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _021203FC
	ldr r2, [sl, #0xc]
	ldr r1, [sl, #0x24]
	add r2, r2, #8
	add r2, r2, r6
	add r2, sb, r2
	bl sub_0200EB28
	ldr r0, [r4, #4]
	add r0, r8, r0
	add r0, r7, r0
	ldr r0, [r0, #4]
	tst r0, #1
	add r0, sl, r5, lsl #2
	ldrne r0, [r0, #0x44]
	strne fp, [r0, #0x14]
	ldreq r1, [r0, #0x44]
	moveq r0, #0
	streq r0, [r1, #0x14]
_021203FC:
	add r5, r5, #1
	cmp r5, #8
	add r6, r6, #0x10
	add r7, r7, #0xc
	blt _021203A8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov22_02120414
ov22_02120414: ; 0x02120414
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0x18]
	cmp r4, r1
	beq _021204C8
	ldr r3, [r6, #0x6c]
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
	ldr r5, [r6, #0x6c]
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
	bl ov22_0211FF20
	ldr r0, [r6, #0x3c]
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x2c]
	bl sub_0200EB28
	ldr r0, [r5, r4, lsl #4]
	ldr r1, [r6, #0x3c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r1, #0x14]
	arm_func_end ov22_02120414
_021204C8:
	mov r0, r6
	mov r1, #1
	bl ov22_021205B8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov22_021204D8
ov22_021204D8: ; 0x021204D8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r2, [r0, #0x6c]
	ldr r0, [r0, #0x18]
	movs r7, r1
	add r4, r2, r0, lsl #4
	addmi sp, sp, #0x10
	ldmmiia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4]
	cmp r7, r0
	addge sp, sp, #0x10
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	and r5, r7, #0xf
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r6, [r0, #0x498]
	mov r1, r5
	mov r0, r6
	bl sub_0200CF7C
	mov r0, #0xc
	mov r3, #3
	str r3, [sp]
	ldr r1, [r4, #4]
	mul r0, r7, r0
	ldr r1, [r1, r0]
	mov r4, #0
	stmib sp, {r1, r4}
	mov r0, r6
	mov r1, r5
	mov r2, #0x20
	str r4, [sp, #0xc]
	bl sub_0200CDA0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov22_021204D8

	arm_func_start ov22_02120560
ov22_02120560: ; 0x02120560
	cmp r1, #0
	blt _02120584
	ldr r2, [r0, #0x68]
	cmp r1, r2
	bge _02120584
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	ldrne r0, [r0, r1, lsl #4]
	bxne lr
	arm_func_end ov22_02120560
_02120584:
	mov r0, #0
	bx lr

	arm_func_start ov22_0212058C
ov22_0212058C: ; 0x0212058C
	ldr r3, [r0, #0x34]
	ldr r1, _021205B0 ; =0x01FF0000
	ldr r2, _021205B4 ; =0x04001010
	and r3, r1, r3, lsl #16
	str r3, [r2]
	ldr r0, [r0, #0x34]
	and r0, r1, r0, lsl #16
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_021205B0: .word 0x01FF0000
_021205B4: .word 0x04001010
	arm_func_end ov22_0212058C

	arm_func_start ov22_021205B8
ov22_021205B8: ; 0x021205B8
	stmdb sp!, {r3, r4, r5, lr}
	mov ip, r0
	ldr r0, [ip, #0x38]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr lr, [ip, #0x6c]
	ldr r3, [ip, #0x18]
	mvn r2, #0
	ldr r4, [lr, r3, lsl #4]
	cmp r4, #0
	ble _021205FC
	ldr r2, [ip, #0xc]
	ldr r3, [ip, #0x2c]
	add r2, r2, #8
	ldr lr, [ip, #0x1c]
	sub r2, r3, r2
	add r2, lr, r2, asr #4
	arm_func_end ov22_021205B8
_021205FC:
	ldr r5, [ip, #0x1c]
	mov r3, #0
	add lr, r5, #8
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

	arm_func_start ov22_02120644
ov22_02120644: ; 0x02120644
	mvn r1, #0
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	arm_func_end ov22_02120644

	arm_func_start ov22_02120668
ov22_02120668: ; 0x02120668
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	cmp r2, #0
	stmia r4, {r1, r2}
	movle r0, #0
	ble _021206A0
	mov r1, #0
	mov r0, r2
	ldr r3, _021206B0 ; =ov22_02120644
	mov r2, r1
	str r1, [sp]
	mov r1, #0x18
	bl __cxa_vec_new
	arm_func_end ov22_02120668
_021206A0:
	str r0, [r4, #8]
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_021206B0: .word ov22_02120644

	arm_func_start ov22_021206B4
ov22_021206B4: ; 0x021206B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021206D4
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #8]
	arm_func_end ov22_021206B4
_021206D4:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov22_021206DC
ov22_021206DC: ; 0x021206DC
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr ip, [r6, #8]
	mov r5, r2
	cmp ip, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr lr, [r6, #4]
	mov r2, #0
	cmp lr, #0
	addle sp, sp, #4
	ldmleia sp!, {r3, r4, r5, r6, pc}
	mov r4, ip
	arm_func_end ov22_021206DC
_02120714:
	ldr r0, [r4]
	cmp r0, #0
	bge _021207D0
	mov r0, #0x18
	mul r4, r2, r0
	str r1, [ip, r4]
	ldr r0, [r6, #8]
	ldr r2, [sp, #0x30]
	add r0, r0, r4
	str r2, [r0, #0x10]
	ldr ip, [sp, #0x2c]
	mov r1, r3
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	mov r0, r5
	str ip, [sp]
	bl sub_0200F4FC
	ldr r1, [r6, #8]
	ldr ip, [sp, #0x2c]
	add r1, r1, r4
	str r0, [r1, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	mov r0, r5
	str ip, [sp]
	bl sub_0200F4FC
	ldr r1, [r6, #8]
	add r1, r1, r4
	str r0, [r1, #8]
	ldr r0, [r6, #8]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, #0
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0x10
	str r3, [sp]
	bl sub_0200EBF4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
_021207D0:
	add r2, r2, #1
	cmp r2, lr
	add r4, r4, #0x18
	blt _02120714
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}

	arm_func_start ov22_021207E8
ov22_021207E8: ; 0x021207E8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r7, [r5, #4]
	mov r4, #0
	cmp r7, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, [r5, #8]
	mov lr, r4
	mov ip, r6
	arm_func_end ov22_021207E8
_0212080C:
	ldr r0, [ip]
	cmp r0, #0
	blt _02120854
	ldr r0, [r6, lr]
	cmp r1, r0
	bne _02120854
	ldr ip, [sp, #0x20]
	mov r0, r2
	mov r1, r3
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str ip, [sp]
	bl sub_0200F4FC
	ldr r2, [r5, #8]
	mov r1, #0x18
	mla r1, r4, r1, r2
	str r0, [r1, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02120854:
	add r4, r4, #1
	cmp r4, r7
	add ip, ip, #0x18
	add lr, lr, #0x18
	blt _0212080C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov22_0212086C
ov22_0212086C: ; 0x0212086C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r5, [r0, #4]
	mov r3, #0
	cmp r5, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldr r4, [r0, #8]
	mov lr, r3
	mov ip, r4
	arm_func_end ov22_0212086C
_0212088C:
	ldr r0, [ip]
	cmp r0, #0
	blt _021208C4
	ldr r0, [r4, lr]
	cmp r1, r0
	bne _021208C4
	mov r0, #0x18
	mla r0, r3, r0, r4
	cmp r2, #0
	movne r1, #1
	ldr r0, [r0, #0xc]
	moveq r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r3, r4, r5, pc}
_021208C4:
	add r3, r3, #1
	cmp r3, r5
	add ip, ip, #0x18
	add lr, lr, #0x18
	blt _0212088C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov22_021208DC
ov22_021208DC: ; 0x021208DC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov lr, r0
	ldr r0, [lr, #4]
	mov r2, r1
	cmp r0, #0
	mov r3, #0
	ble _0212096C
	mov r5, #1
	mov ip, r3
	mov r6, r3
	mov r1, r5
	mov r0, r3
	arm_func_end ov22_021208DC
_0212090C:
	ldr r7, [lr, #8]
	ldr r4, [r7, ip]
	add r7, r7, ip
	cmp r4, #0
	blt _02120958
	cmp r2, r4
	ldr r4, [r7, #4]
	bne _02120944
	str r1, [r4, #0x14]
	ldr r4, [lr, #8]
	add r4, r4, ip
	ldr r4, [r4, #8]
	str r0, [r4, #0x14]
	b _02120958
_02120944:
	str r6, [r4, #0x14]
	ldr r4, [lr, #8]
	add r4, r4, ip
	ldr r4, [r4, #8]
	str r5, [r4, #0x14]
_02120958:
	ldr r4, [lr, #4]
	add r3, r3, #1
	cmp r3, r4
	add ip, ip, #0x18
	blt _0212090C
_0212096C:
	ldr r0, [lr, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, [r0]
	ldr r1, [lr]
	ldr r3, [r3]
	blx r3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov22_0212098C
ov22_0212098C: ; 0x0212098C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	mov r6, r4
	arm_func_end ov22_0212098C
_021209A8:
	ldr r0, [r5, #8]
	add r0, r0, r6
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021209E4
	bl sub_0200EB84
	cmp r0, #0
	beq _021209E4
	mov r0, #0x18
	mul r1, r4, r0
	ldr r2, [r5, #8]
	mov r0, r5
	ldr r1, [r2, r1]
	bl ov22_021208DC
	ldmia sp!, {r4, r5, r6, pc}
_021209E4:
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	add r6, r6, #0x18
	blt _021209A8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov22_021209FC
ov22_021209FC: ; 0x021209FC
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	arm_func_end ov22_021209FC

	arm_func_start ov22_02120A10
ov22_02120A10: ; 0x02120A10
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov22_02120B04
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov22_02120A10

	arm_func_start ov22_02120A24
ov22_02120A24: ; 0x02120A24
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl ov22_02120B04
	cmp r5, #0
	beq _02120AD0
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _02120A58
	mov r1, r5
	mov r2, #0
	bl _ZN14CBinaryFileMesC1EPcm
	arm_func_end ov22_02120A24
_02120A58:
	str r0, [r4]
	cmp r0, #0
	beq _02120AD0
	ldr r1, [r0, #0x4c]
	ldr r0, [r1, #4]
	add r5, r1, #8
	str r0, [r4, #4]
	cmp r0, #0
	ble _02120AD0
	mov r0, r0, lsl #2
	bl _Znam
	str r0, [r4, #8]
	cmp r0, #0
	beq _02120AD0
	ldr r0, [r4, #4]
	mov r3, #0
	cmp r0, #0
	ble _02120AD0
_02120AA0:
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
	blt _02120AA0
_02120AD0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov22_02120AD8
ov22_02120AD8: ; 0x02120AD8
	ldr r0, [r0, #4]
	bx lr
	arm_func_end ov22_02120AD8

	arm_func_start ov22_02120AE0
ov22_02120AE0: ; 0x02120AE0
	cmp r1, #0
	blt _02120AFC
	ldr r2, [r0, #4]
	cmp r1, r2
	ldrlt r0, [r0, #8]
	ldrlt r0, [r0, r1, lsl #2]
	bxlt lr
	arm_func_end ov22_02120AE0
_02120AFC:
	mov r0, #0
	bx lr

	arm_func_start ov22_02120B04
ov22_02120B04: ; 0x02120B04
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02120B24
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #8]
	arm_func_end ov22_02120B04
_02120B24:
	ldr r0, [r4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	beq _02120B40
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02120B40:
	mov r0, #0
	str r0, [r4]
	ldmia sp!, {r4, pc}

	arm_func_start ov22_02120B4C
ov22_02120B4C: ; 0x02120B4C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	add r0, r4, #0x20
	str r1, [r4, #0x1c]
	bl ov22_021209FC
	mov r2, #0
	mov r1, r2
	arm_func_end ov22_02120B4C
_02120B7C:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #4]
	cmp r2, #3
	blt _02120B7C
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov22_02120B98
ov22_02120B98: ; 0x02120B98
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov22_02120E80
	add r0, r4, #0x20
	bl ov22_02120A10
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov22_02120B98

	arm_func_start ov22_02120BB4
ov22_02120BB4: ; 0x02120BB4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0xc4
	movs r6, r1
	mov r4, r0
	mov r5, #0
	beq _02120E50
	ldr r1, _02120E5C ; =s_data_message_etc_dictionary_mes_overlay_22_02121b7c
	add r0, r4, #0x20
	bl ov22_02120A24
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a8]
	mov r3, r5
	stmia sp, {r0, r3}
	add r0, sp, #0xc
	mov r1, r6
	str r3, [sp, #8]
	mov r2, #1
	bl sub_02002BC4
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _02120E48
	mov r2, r5
	str r2, [r4]
	add r8, r0, #6
	arm_func_end ov22_02120BB4
_02120C18:
	ldrh r1, [r8], #2
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #4]
	ldr r0, [r4]
	cmp r2, #3
	add r0, r0, r1
	str r0, [r4]
	blt _02120C18
	ldr r0, [r4]
	cmp r0, #0
	ble _02120E48
	mov r2, #0
	ldr r3, _02120E60 ; =ov22_02120E64
	mov r1, #0x20
	str r2, [sp]
	bl __cxa_vec_new
	str r0, [r4, #0x10]
	cmp r0, #0
	beq _02120E48
	ldrh r5, [r8], #2
	cmp r5, #0
	ble _02120C9C
	mov r6, r5, lsl #1
	mov r0, r6
	bl _Znam
	movs r1, r0
	str r0, [r4, #0x14]
	beq _02120C98
	mov r0, r8
	mov r2, r6
	bl MI_CpuCopy8
_02120C98:
	add r8, r8, r5, lsl #1
_02120C9C:
	ldrh r0, [r8], #2
	cmp r0, #0
	ble _02120CD4
	mov r5, r0, lsl #3
	mov r0, r5
	bl _Znam
	movs r1, r0
	str r0, [r4, #0x18]
	beq _02120CCC
	mov r0, r8
	mov r2, r5
	bl MI_CpuCopy8
_02120CCC:
	bic r0, r5, #1
	add r8, r8, r0
_02120CD4:
	ldrh r5, [r8], #2
	cmp r5, #0
	ble _02120D10
	mov r0, r5
	bl _Znam
	movs r1, r0
	str r0, [r4, #0x1c]
	beq _02120D00
	mov r0, r8
	mov r2, r5
	bl MI_CpuCopy8
_02120D00:
	add r0, r5, #1
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	add r8, r8, r0, lsl #1
_02120D10:
	ldr r0, [r4]
	mov r5, #0
	mov sl, r5
	cmp r0, #0
	ble _02120DF0
	mov sb, r5
_02120D28:
	ldr r0, [r4, #0x10]
	ldrh r6, [r8]
	ldrh r7, [r8, #2]
	add r1, r0, sb
	add r0, r4, #0x20
	str r6, [r1, #8]
	str r7, [r1, #0xc]
	add r1, sl, #1
	add r8, r8, #4
	bl ov22_02120AE0
	ldr r1, [r4, #0x10]
	str r0, [r1, sl, lsl #5]
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _02120D74
	ldr r0, [r4, #0x10]
	add r1, r1, r6, lsl #1
	add r0, r0, sl, lsl #5
	str r1, [r0, #0x10]
_02120D74:
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _02120D90
	ldr r0, [r4, #0x10]
	add r1, r1, r5, lsl #3
	add r0, r0, sl, lsl #5
	str r1, [r0, #0x18]
_02120D90:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _02120DDC
	ldr r0, [r4, #0x10]
	add r1, r1, r6
	add r0, r0, sl, lsl #5
	str r1, [r0, #0x14]
	cmp r7, #0
	mov r1, #0
	ble _02120DDC
	ldr r0, [r4, #0x1c]
	add r2, r0, r6
_02120DC0:
	ldrsb r0, [r2]
	add r1, r1, #1
	add r2, r2, #1
	cmp r0, #0
	addgt r5, r5, r0
	cmp r1, r7
	blt _02120DC0
_02120DDC:
	ldr r0, [r4]
	add sl, sl, #1
	cmp sl, r0
	add sb, sb, #0x20
	blt _02120D28
_02120DF0:
	mov r3, #0
	mov r5, r3
	mov r2, r3
_02120DFC:
	add r1, r4, r5, lsl #2
	ldr r0, [r1, #4]
	mov r6, r2
	mov r7, r2
	cmp r0, #0
	ble _02120E38
_02120E14:
	ldr r0, [r4, #0x10]
	add r7, r7, #1
	add r0, r0, r3, lsl #5
	str r6, [r0, #4]
	ldr r0, [r1, #4]
	add r3, r3, #1
	cmp r7, r0
	add r6, r6, #1
	blt _02120E14
_02120E38:
	add r5, r5, #1
	cmp r5, #3
	blt _02120DFC
	mov r5, #1
_02120E48:
	add r0, sp, #0xc
	bl CBinaryFile_complete_obj_dtor
_02120E50:
	mov r0, r5
	add sp, sp, #0xc4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02120E5C: .word s_data_message_etc_dictionary_mes_overlay_22_02121b7c
_02120E60: .word ov22_02120E64

	arm_func_start ov22_02120E64
ov22_02120E64: ; 0x02120E64
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end ov22_02120E64

	arm_func_start ov22_02120E80
ov22_02120E80: ; 0x02120E80
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02120EA0
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x1c]
	arm_func_end ov22_02120E80
_02120EA0:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02120EB8
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x18]
_02120EB8:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02120ED0
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x14]
_02120ED0:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02120EE8
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x10]
_02120EE8:
	add r0, r4, #0x20
	bl ov22_02120B04
	mov r2, #0
	mov r1, r2
_02120EF8:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #4]
	cmp r2, #3
	blt _02120EF8
	str r1, [r4]
	ldmia sp!, {r4, pc}

	arm_func_start ov22_02120F14
ov22_02120F14: ; 0x02120F14
	cmp r1, #0
	blt _02120F2C
	cmp r1, #3
	addlt r0, r0, r1, lsl #2
	ldrlt r0, [r0, #4]
	bxlt lr
	arm_func_end ov22_02120F14
_02120F2C:
	mov r0, #0
	bx lr

	arm_func_start ov22_02120F34
ov22_02120F34: ; 0x02120F34
	stmdb sp!, {r4, lr}
	ldr r4, [r0, #0x10]
	cmp r4, #0
	beq _02120FA0
	cmp r1, #0
	blt _02120FA0
	cmp r1, #3
	bge _02120FA0
	cmp r2, #0
	blt _02120FA0
	add r3, r0, r1, lsl #2
	ldr r3, [r3, #4]
	cmp r2, r3
	bge _02120FA0
	mov ip, #0
	mov lr, ip
	cmp r1, #0
	ble _02120F94
	arm_func_end ov22_02120F34
_02120F7C:
	add r3, r0, lr, lsl #2
	ldr r3, [r3, #4]
	add lr, lr, #1
	cmp lr, r1
	add ip, ip, r3
	blt _02120F7C
_02120F94:
	add r0, ip, r2
	add r0, r4, r0, lsl #5
	ldmia sp!, {r4, pc}
_02120FA0:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov22_02120FA8
ov22_02120FA8: ; 0x02120FA8
	stmdb sp!, {r4, lr}
	ldr r4, [r0, #0x14]
	cmp r4, #0
	ldrne r3, [r0, #0x18]
	cmpne r3, #0
	beq _0212101C
	cmp r1, #0
	blt _0212101C
	ldr r0, [r0, #0xc]
	cmp r1, r0
	bge _0212101C
	cmp r1, #0
	mov ip, #0
	ble _02121000
	mov lr, r4
	arm_func_end ov22_02120FA8
_02120FE4:
	ldrsb r0, [lr]
	add ip, ip, #1
	add lr, lr, #1
	cmp r0, #0
	addge r3, r3, r0, lsl #3
	cmp ip, r1
	blt _02120FE4
_02121000:
	ldrsb r0, [r4, r1]
	cmp r0, #0
	addlt r3, r3, r0, lsl #3
	rsblt r0, r0, #0
	cmp r2, r0
	addlt r0, r3, r2, lsl #3
	ldmltia sp!, {r4, pc}
_0212101C:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov22_02121024
ov22_02121024: ; 0x02121024
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr ip, [sp, #0x20]
	mov r5, r0
	mov r6, r1
	mov r4, r2
	add r1, r3, ip, lsl #5
	mov ip, #4
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	add r0, r5, #0x10
	str ip, [sp]
	bl NNS_G2dCharCanvasInitForBG
	add r0, r5, #0x10
	str r0, [r5]
	ldr r0, [sp, #0x34]
	str r6, [r5, #4]
	ldr r1, [sp, #0x38]
	str r0, [r5, #8]
	ldr r0, [sp, #0x28]
	str r1, [r5, #0xc]
	str r0, [sp]
	mov r1, #0x20
	ldr r0, [sp, #0x20]
	str r1, [sp, #4]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, r4
	bl NNS_G2dMapScrToCharText
	mov r0, r5
	bl ov22_021210B8
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov22_02121024

	arm_func_start ov22_021210B8
ov22_021210B8: ; 0x021210B8
	stmdb sp!, {r3, lr}
	sub sp, sp, #0xc0
	mov r3, #0
	ldr r1, _0212110C ; =s_data_font_prs_lc_jp_NCLR_overlay_22_02121ba0
	add r0, sp, #4
	str r3, [sp]
	mov r2, #1
	bl _ZN9CNCLRFileC1EPcmmm
	ldr r0, [sp, #0xbc]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp, #0xbc]
	mov r1, #0x1c0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GX_LoadBGPltt
	add r0, sp, #4
	bl CNCLRFile_complete_obj_dtor
	add sp, sp, #0xc0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0212110C: .word s_data_font_prs_lc_jp_NCLR_overlay_22_02121ba0
	arm_func_end ov22_021210B8

	arm_func_start ov22_02121110
ov22_02121110: ; 0x02121110
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x24]
	add r0, r0, #0x10
	ldr r2, [r1, #4]
	mov r1, #0
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end ov22_02121110

	arm_func_start ov22_0212112C
ov22_0212112C: ; 0x0212112C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	ldr r4, [sp, #0x4c]
	str r1, [sp, #0x14]
	ldmib r1, {r6, r7}
	ldr r1, [r1, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x18]
	mov sl, r2
	mov sb, r3
	str r4, [sp, #0x1c]
	cmp r4, #0
	ldr r8, [sp, #0x50]
	mov r4, #0
	mov r5, #1
	beq _02121198
	add fp, sp, #0x1c
	arm_func_end ov22_0212112C
_02121170:
	mov r0, r6
	mov r1, r7
	mov r2, fp
	bl ov22_021214CC
	cmp r0, r4
	movgt r4, r0
	ldr r0, [sp, #0x1c]
	add r5, r5, #1
	cmp r0, #0
	bne _02121170
_02121198:
	ldr r0, [r6]
	and r1, r8, #0xc
	ldrsb r2, [r0, #1]
	ldr r0, [sp, #0x18]
	sub r3, r5, #1
	add r0, r0, r2
	mul r2, r3, r0
	ldr r0, [sp, #0x18]
	cmp r1, #4
	sub r0, r2, r0
	beq _021211D0
	cmp r1, #8
	beq _021211F8
	b _02121204
_021211D0:
	tst r8, #0x100
	beq _021211E8
	add r1, r4, #1
	add r1, r1, r1, lsr #31
	sub sl, sl, r1, asr #1
	b _02121204
_021211E8:
	add r1, r4, #9
	add r1, r1, r1, lsr #31
	sub sl, sl, r1, asr #1
	b _02121204
_021211F8:
	sub sl, sl, r4
	tst r8, #0x100
	subeq sl, sl, #8
_02121204:
	and r1, r8, #0x30
	cmp r1, #0x10
	beq _0212121C
	cmp r1, #0x20
	beq _02121244
	b _02121250
_0212121C:
	tst r8, #0x100
	beq _02121234
	add r1, r0, #1
	add r1, r1, r1, lsr #31
	sub sb, sb, r1, asr #1
	b _02121250
_02121234:
	add r1, r0, #5
	add r1, r1, r1, lsr #31
	sub sb, sb, r1, asr #1
	b _02121250
_02121244:
	sub sb, sb, r0
	tst r8, #0x100
	subeq sb, sb, #4
_02121250:
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, sl
	mov r2, sb
	mov r3, r4
	str r8, [sp, #4]
	bl ov22_021212A4
	tst r8, #0x100
	addeq sb, sb, #2
	addeq sl, sl, #4
	ldr r0, [sp, #0x48]
	str sb, [sp]
	stmib sp, {r0, r4}
	ldr r2, [sp, #0x4c]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r3, sl
	str r8, [sp, #0xc]
	bl ov22_02121304
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov22_021212A4
ov22_021212A4: ; 0x021212A4
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr ip, [sp, #0x24]
	add lr, r3, #8
	tst ip, #0x100
	ldr ip, [sp, #0x20]
	subne r2, r2, #2
	subne r1, r1, #4
	mov r2, r2, lsl #0xc
	add r3, ip, #4
	mov r1, r1, lsl #0xc
	add r3, r2, r3, lsl #12
	str r3, [sp]
	add ip, r1, lr, lsl #12
	str ip, [sp, #4]
	str r3, [sp, #8]
	str ip, [sp, #0xc]
	mov r3, r1
	str r2, [sp, #0x10]
	mov ip, #0
	str ip, [sp, #0x14]
	bl sub_020041A4
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	arm_func_end ov22_021212A4

	arm_func_start ov22_02121304
ov22_02121304: ; 0x02121304
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	ldmib r1, {r5, r6, r7}
	ldr r4, [r5]
	str r1, [sp, #0x10]
	ldrsb r1, [r4, #1]
	ldr sb, [sp, #0x4c]
	ldr r8, [sp, #0x50]
	ldr r4, [sp, #0x48]
	str r0, [sp, #0xc]
	mov sl, r3
	str r2, [sp, #0x1c]
	cmp r2, #0
	add fp, r7, r1
	addeq sp, sp, #0x20
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp, #0x54]
	add r0, r8, #1
	add r0, r0, r0, lsr #31
	and r7, r1, #3
	str r0, [sp, #0x14]
	arm_func_end ov22_02121304
_02121358:
	cmp r7, #1
	mov r3, sl
	beq _02121370
	cmp r7, #2
	beq _021213A0
	b _021213BC
_02121370:
	str r2, [sp, #0x18]
	mov r0, r5
	mov r1, r6
	add r2, sp, #0x18
	bl ov22_021214CC
	add r0, r0, #1
	add r0, r0, r0, lsr #31
	mov r1, r0, asr #1
	ldr r0, [sp, #0x14]
	rsb r0, r1, r0, asr #1
	add r3, sl, r0
	b _021213BC
_021213A0:
	str r2, [sp, #0x18]
	mov r0, r5
	mov r1, r6
	add r2, sp, #0x18
	bl ov22_021214CC
	sub r0, r8, r0
	add r3, sl, r0
_021213BC:
	stmia sp, {r4, sb}
	add r0, sp, #0x1c
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r2, r6
	bl ov22_021215C8
	ldr r2, [sp, #0x1c]
	add r4, r4, fp
	cmp r2, #0
	bne _02121358
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov22_021213F0
ov22_021213F0: ; 0x021213F0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x60]
	mov r3, #0x1f
	add r2, r2, r2, lsl #1
	add r2, r2, #1
	str r2, [r5, #4]
	ldr r2, _021214C0 ; =0x00007FFF
	str r3, [r5, #0x14]
	strh r2, [r5, #8]
	ldr r2, [r0]
	mov r4, r1
	ldr r2, [r2, #8]
	blx r2
	ldr r0, [r5, #0x60]
	mov r1, #0
	add r0, r0, r0, lsl #1
	add r0, r0, #2
	str r0, [r5, #4]
	str r1, [r5, #0x14]
	mov r0, r5
	strh r1, [r5, #8]
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldr r3, _021214C4 ; =0x04000444
	mov ip, #0
	str ip, [r3]
	ldrh r2, [r4, #0x28]
	mov r1, #1
	mov r0, #2
	mov r1, r1, lsl r2
	mov r0, r0, lsl r2
	str r1, [r3, #0x2c]
	str r0, [r3, #0x2c]
	str ip, [r3, #0x2c]
	ldr r1, [r5, #0x60]
	mov r0, #0x10
	add r1, r1, r1, lsl #1
	str r1, [r5, #4]
	str r0, [r5, #0x14]
	mov r0, r5
	strh ip, [r5, #8]
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldr r0, _021214C8 ; =0x04000448
	mov r1, #1
	str r1, [r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021214C0: .word 0x00007FFF
_021214C4: .word 0x04000444
_021214C8: .word 0x04000448
	arm_func_end ov22_021213F0

	arm_func_start ov22_021214CC
ov22_021214CC: ; 0x021214CC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs fp, r2
	mov sl, r0
	mov sb, r1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [fp]
	mov r5, #0
	str r0, [sp]
	ldr r8, [sl, #4]
	mov r6, r5
	add r4, sp, #0
	arm_func_end ov22_021214CC
_021214FC:
	mov r0, r4
	blx r8
	movs r7, r0
	beq _02121594
	cmp r7, #0xa
	moveq r5, #1
	beq _02121598
	cmp r7, #0x5b
	bne _0212155C
	mov r0, r4
	blx r8
	mov r7, r0
	cmp r7, #0x45
	moveq r5, #1
	b _02121544
_02121538:
	mov r0, r4
	blx r8
	mov r7, r0
_02121544:
	cmp r7, #0
	cmpne r7, #0x5d
	bne _02121538
	cmp r7, #0
	moveq r5, #1
	b _02121598
_0212155C:
	mov r0, sl
	mov r1, r7
	bl NNS_G2dFontFindGlyphIndex
	mov r1, r0
	ldr r0, _021215C4 ; =0x0000FFFF
	cmp r1, r0
	ldreq r0, [sl]
	ldreqh r1, [r0, #2]
	mov r0, sl
	bl NNS_G2dFontGetCharWidthsFromIndex
	ldrsb r0, [r0, #2]
	add r0, sb, r0
	add r6, r6, r0
	b _02121598
_02121594:
	mov r5, #1
_02121598:
	cmp r5, #0
	beq _021214FC
	cmp r7, #0
	cmpne r7, #0xa
	moveq r0, #0
	ldrne r0, [sp]
	cmp r6, #0
	subgt r6, r6, sb
	str r0, [fp]
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021215C4: .word 0x0000FFFF

	arm_func_start ov22_021215C8
ov22_021215C8: ; 0x021215C8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	ldr r0, [sp, #0x40]
	ldr r8, [sp, #0x3c]
	str r0, [sp, #0x40]
	cmp r0, #0
	ldr r0, [sp, #0x38]
	mov sl, r1
	str r0, [sp, #0x38]
	mov fp, r2
	mov sb, r3
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl, #4]
	mov r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r4, sp, #0xc
	ldr r1, [r0]
	ldr r0, [sp, #8]
	ldr r7, [r0, #4]
	str r1, [sp, #0xc]
	arm_func_end ov22_021215C8
_02121620:
	mov r0, r4
	blx r7
	movs r6, r0
	beq _021216A8
	cmp r6, #0xa
	moveq r5, #1
	beq _021216AC
	cmp r6, #0x5b
	bne _02121680
	mov r0, r4
	blx r7
	mov r6, r0
	cmp r6, #0x45
	moveq r5, #1
	b _02121668
_0212165C:
	mov r0, r4
	blx r7
	mov r6, r0
_02121668:
	cmp r6, #0
	cmpne r6, #0x5d
	bne _0212165C
	cmp r6, #0
	moveq r5, #1
	b _021216AC
_02121680:
	str r8, [sp]
	str r6, [sp, #4]
	ldr r0, [sl]
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x38]
	mov r2, sb
	bl NNS_G2dCharCanvasDrawChar
	add r0, r0, fp
	add sb, sb, r0
	b _021216AC
_021216A8:
	mov r5, #1
_021216AC:
	cmp r5, #0
	beq _02121620
	cmp r6, #0
	cmpne r6, #0xa
	moveq r1, #0
	ldrne r1, [sp, #0xc]
	ldr r0, [sp, #0x40]
	str r1, [r0]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; 0x021216D4

    .rodata

    .global DAT_overlay_22_021216d4
DAT_overlay_22_021216d4: ; 0x021216D4
	.byte 0x01, 0x00, 0x00, 0x00

    .global DAT_overlay_22_021216d8
DAT_overlay_22_021216d8: ; 0x021216D8
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_22_021216dc
DAT_overlay_22_021216dc: ; 0x021216DC
	.byte 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_22_021216e0
DAT_overlay_22_021216e0: ; 0x021216E0
	.byte 0x01, 0x00, 0x00, 0x00

    .global ptr_s_data_message_etc_menu_mes_overlay_22_02121a30_overlay_22_021216e4
ptr_s_data_message_etc_menu_mes_overlay_22_02121a30_overlay_22_021216e4: ; 0x021216E4
	.word s_data_message_etc_menu_mes_overlay_22_02121a30

    .section .sinit,4 ; 0x021216E8

    .data

    .global PTR_ptr_FUN_02083578_overlay_22_02121700
PTR_ptr_FUN_02083578_overlay_22_02121700: ; 0x02121700
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_24IEncycPushButtonListener_overlay_22_0212172c
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_22_02121700

    .global DAT_overlay_22_02121710
DAT_overlay_22_02121710: ; 0x02121710
	.byte 0x00, 0x00, 0x00, 0x00

    .global s_18CEncyclopediaScene_overlay_22_02121714
s_18CEncyclopediaScene_overlay_22_02121714: ; 0x02121714
	.asciz "18CEncyclopediaScene"

    .global DAT_overlay_22_02121729
DAT_overlay_22_02121729:
	.byte 0x00, 0x00, 0x00

    .global s_24IEncycPushButtonListener_overlay_22_0212172c
s_24IEncycPushButtonListener_overlay_22_0212172c: ; 0x0212172C
	.asciz "24IEncycPushButtonListener"

    .global DAT_overlay_22_02121747
DAT_overlay_22_02121747:
	.byte 0x00

    .global PTR_ptr_FUN_020835ec_overlay_22_02121748
PTR_ptr_FUN_020835ec_overlay_22_02121748: ; 0x02121748
	.word _ZTVN10__cxxabiv121__vmi_class_type_infoE+8

    .global ptr_FUN_overlay_1_02121714_overlay_22_0212174c
ptr_FUN_overlay_1_02121714_overlay_22_0212174c: ; 0x0212174C
	.word s_18CEncyclopediaScene_overlay_22_02121714
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_0208a804
	.byte 0x02, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_22_02121700
	.byte 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835ec_overlay_22_02121748

    .global ptr_FUN_overlay_22_0211cac4_overlay_22_02121770
ptr_FUN_overlay_22_0211cac4_overlay_22_02121770: ; 0x02121770
	.word ov22_0211CAC4

    .global ptr_FUN_overlay_22_0211cb90_overlay_22_02121774
ptr_FUN_overlay_22_0211cb90_overlay_22_02121774: ; 0x02121774
	.word ov22_0211CB90

    .global ptr_FUN_overlay_22_0211cc50_overlay_22_02121778
ptr_FUN_overlay_22_0211cc50_overlay_22_02121778: ; 0x02121778
	.word ov22_0211CC50

    .global ptr_FUN_overlay_11_0211cd48_overlay_22_0212177c
ptr_FUN_overlay_11_0211cd48_overlay_22_0212177c: ; 0x0212177C
	.word ov22_0211CD48
	.word ov22_0211CD7C

    .global ptr_FUN_overlay_22_0211d2a4_overlay_22_02121784
ptr_FUN_overlay_22_0211d2a4_overlay_22_02121784: ; 0x02121784
	.word ov22_0211D2A4

    .global ptr_FUN_02007cc4_overlay_22_02121788
ptr_FUN_02007cc4_overlay_22_02121788: ; 0x02121788
	.word sub_02007CC4

    .global ptr_FUN_overlay_1_0211cd80_overlay_22_0212178c
ptr_FUN_overlay_1_0211cd80_overlay_22_0212178c: ; 0x0212178C
	.word ov22_0211CD80

    .global ptr_FUN_overlay_22_0211cf54_overlay_22_02121790
ptr_FUN_overlay_22_0211cf54_overlay_22_02121790: ; 0x02121790
	.word ov22_0211CF54

    .global ptr_FUN_overlay_22_0211d090_overlay_22_02121794
ptr_FUN_overlay_22_0211d090_overlay_22_02121794: ; 0x02121794
	.word ov22_0211D090
	.word ov22_0211D304

    .global ptr_FUN_overlay_22_0211d2d4_overlay_22_0212179c
ptr_FUN_overlay_22_0211d2d4_overlay_22_0212179c: ; 0x0212179C
	.word ov22_0211D2D4
	.byte 0xFC, 0xFF, 0xFF, 0xFF
	.word PTR_ptr_FUN_020835ec_overlay_22_02121748

    .global PTR_LAB_overlay_22_0211d30c_overlay_22_021217a8
PTR_LAB_overlay_22_0211d30c_overlay_22_021217a8: ; 0x021217A8
	.word ov22_0211D30C

    .global s_data_message_etc_dictionary03_m_overlay_22_021217ac
s_data_message_etc_dictionary03_m_overlay_22_021217ac: ; 0x021217AC
	.asciz "/data/message/etc/dictionary03_mes"

    .global DAT_overlay_22_021217CF
DAT_overlay_22_021217CF:
	.byte 0x00

    .global s_data_message_etc_dictionary01_m_overlay_22_021217d0
s_data_message_etc_dictionary01_m_overlay_22_021217d0: ; 0x021217D0
	.asciz "/data/message/etc/dictionary01_mes"

    .global DAT_overlay_22_021217F3
DAT_overlay_22_021217F3:
	.byte 0x00

    .global s_data_menu_overlay_22_021217f4
s_data_menu_overlay_22_021217f4: ; 0x021217F4
	.asciz "data/menu"

    .global DAT_overlay_22_021217FE
DAT_overlay_22_021217FE:
	.byte 0x00, 0x00

    .global s_ma005_00_overlay_22_02121800
s_ma005_00_overlay_22_02121800: ; 0x02121800
	.asciz "ma005_00"

    .global DAT_overlay_22_02121809
DAT_overlay_22_02121809:
	.byte 0x00, 0x00, 0x00

    .global PTR_ptr_FUN_02083578_overlay_22_0212180c
PTR_ptr_FUN_02083578_overlay_22_0212180c: ; 0x0212180C
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_16CEncycMenuScreen_overlay_22_02121840

    .global PTR_ptr_FUN_02083578_overlay_22_02121814
PTR_ptr_FUN_02083578_overlay_22_02121814: ; 0x02121814
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_26IEncycListBoxEventListener_overlay_22_02121888

    .global PTR_ptr_FUN_02083578_overlay_22_0212181c
PTR_ptr_FUN_02083578_overlay_22_0212181c: ; 0x0212181C
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_25IEncycRadioButtonListener_overlay_22_0212186c
	.byte 0x00, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_21_0212181c_overlay_22_02121828
ptr_FUN_overlay_21_0212181c_overlay_22_02121828: ; 0x02121828
	.word PTR_ptr_FUN_02083578_overlay_22_0212181c

    .global DAT_overlay_22_0212182c
DAT_overlay_22_0212182c: ; 0x0212182C
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_22_02121814

    .global DAT_overlay_22_02121838
DAT_overlay_22_02121838: ; 0x02121838
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

    .global s_16CEncycMenuScreen_overlay_22_02121840
s_16CEncycMenuScreen_overlay_22_02121840: ; 0x02121840
	.asciz "16CEncycMenuScreen"

    .global DAT_overlay_22_02121853
DAT_overlay_22_02121853:
	.byte 0x00

    .global s_20CEncycItemListScreen_overlay_22_02121854
s_20CEncycItemListScreen_overlay_22_02121854: ; 0x02121854
	.asciz "20CEncycItemListScreen"

    .global DAT_overlay_22_0212186B
DAT_overlay_22_0212186B:
	.byte 0x00

    .global s_25IEncycRadioButtonListener_overlay_22_0212186c
s_25IEncycRadioButtonListener_overlay_22_0212186c: ; 0x0212186C
	.asciz "25IEncycRadioButtonListener"

    .global s_26IEncycListBoxEventListener_overlay_22_02121888
s_26IEncycListBoxEventListener_overlay_22_02121888: ; 0x02121888
	.asciz "26IEncycListBoxEventListener"

    .global DAT_overlay_22_021218A5
DAT_overlay_22_021218A5:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    .word PTR_ptr_FUN_02083578_overlay_22_0212180c

    .global PTR_LAB_overlay_22_0211e158_overlay_22_021218b0
PTR_LAB_overlay_22_0211e158_overlay_22_021218b0: ; 0x021218B0
	.word ov22_0211E158
	.word ov22_0211CB7C
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov22_0211D2D0

    .global PTR_ptr_FUN_020835ec_overlay_22_021218d8
PTR_ptr_FUN_020835ec_overlay_22_021218d8: ; 0x021218D8
	.word _ZTVN10__cxxabiv121__vmi_class_type_infoE+8
	.word s_20CEncycItemListScreen_overlay_22_02121854
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_22_0212180c
	.byte 0x02, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_22_02121700
	.byte 0x02, 0x08, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_22_02121814
	.byte 0x02, 0x0C, 0x00, 0x00

    .global ptr_FUN_overlay_21_0212181c_overlay_22_02121900
ptr_FUN_overlay_21_0212181c_overlay_22_02121900: ; 0x02121900
	.word PTR_ptr_FUN_02083578_overlay_22_0212181c
	.byte 0x02, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835ec_overlay_22_021218d8

    .global ptr_FUN_overlay_22_0211e15c_overlay_22_02121910
ptr_FUN_overlay_22_0211e15c_overlay_22_02121910: ; 0x02121910
	.word ov22_0211E15C

    .global ptr_FUN_overlay_22_0211e18c_overlay_22_02121914
ptr_FUN_overlay_22_0211e18c_overlay_22_02121914: ; 0x02121914
	.word ov22_0211E18C

    .global ptr_FUN_overlay_22_0211d454_overlay_22_02121918
ptr_FUN_overlay_22_0211d454_overlay_22_02121918: ; 0x02121918
	.word ov22_0211D454

    .global ptr_FUN_overlay_22_0211da20_overlay_22_0212191c
ptr_FUN_overlay_22_0211da20_overlay_22_0212191c: ; 0x0212191C
	.word ov22_0211DA20
	.word ov22_0211DA7C

    .global ptr_FUN_overlay_22_0211db1c_overlay_22_02121924
ptr_FUN_overlay_22_0211db1c_overlay_22_02121924: ; 0x02121924
	.word ov22_0211DB1C

    .global ptr_FUN_overlay_22_0211dbe8_overlay_22_02121928
ptr_FUN_overlay_22_0211dbe8_overlay_22_02121928: ; 0x02121928
	.word ov22_0211DBE8

    .global ptr_FUN_overlay_22_0211ddb8_overlay_22_0212192c
ptr_FUN_overlay_22_0211ddb8_overlay_22_0212192c: ; 0x0212192C
	.word ov22_0211DDB8

    .global ptr_FUN_overlay_22_0211dde0_overlay_22_02121930
ptr_FUN_overlay_22_0211dde0_overlay_22_02121930: ; 0x02121930
	.word ov22_0211DDE0
	.word ov22_0211DDD0

    .global ptr_FUN_overlay_22_0211dea4_overlay_22_02121938
ptr_FUN_overlay_22_0211dea4_overlay_22_02121938: ; 0x02121938
	.word ov22_0211DEA4

    .global ptr_FUN_overlay_22_0211def4_overlay_22_0212193c
ptr_FUN_overlay_22_0211def4_overlay_22_0212193c: ; 0x0212193C
	.word ov22_0211DEF4

    .global ptr_FUN_overlay_22_0211e0d8_overlay_22_02121940
ptr_FUN_overlay_22_0211e0d8_overlay_22_02121940: ; 0x02121940
	.word ov22_0211E0D8

    .global ptr_FUN_overlay_22_0211e138_overlay_22_02121944
ptr_FUN_overlay_22_0211e138_overlay_22_02121944: ; 0x02121944
	.word ov22_0211E138
	.byte 0xF8, 0xFF, 0xFF, 0xFF
	.word PTR_ptr_FUN_020835ec_overlay_22_021218d8

    .global PTR_LAB_overlay_22_0211e1c4_overlay_22_02121950
PTR_LAB_overlay_22_0211e1c4_overlay_22_02121950: ; 0x02121950
	.word ov22_0211E1C4
	.byte 0xF4, 0xFF, 0xFF, 0xFF
	.word PTR_ptr_FUN_020835ec_overlay_22_021218d8

    .global PTR_LAB_overlay_22_0211e1e4_overlay_22_0212195c
PTR_LAB_overlay_22_0211e1e4_overlay_22_0212195c: ; 0x0212195C
	.word ov22_0211E1E4
	.word ov22_0211E1D4
	.byte 0xF0, 0xFF, 0xFF, 0xFF
	.word PTR_ptr_FUN_020835ec_overlay_22_021218d8

    .global PTR_LAB_overlay_22_0211e1f4_overlay_22_0212196c
PTR_LAB_overlay_22_0211e1f4_overlay_22_0212196c: ; 0x0212196C
	.word ov22_0211E1F4

    .global s_data_message_etc_dictionary02_m_overlay_22_02121970
s_data_message_etc_dictionary02_m_overlay_22_02121970: ; 0x02121970
	.asciz "/data/message/etc/dictionary02_mes"

    .global DAT_overlay_22_02121993
DAT_overlay_22_02121993:
	.byte 0x00

    .global s_data_encyclo_encyclopedia_bin_overlay_22_02121994
s_data_encyclo_encyclopedia_bin_overlay_22_02121994: ; 0x02121994
	.asciz "/data/encyclo/encyclopedia.bin"

    .global DAT_overlay_22_021219B3
DAT_overlay_22_021219B3:
	.byte 0x00

    .global s_menu_overlay_22_021219b4
s_menu_overlay_22_021219b4: ; 0x021219B4
	.asciz "menu/"

    .global DAT_overlay_22_021219BA
DAT_overlay_22_021219BA:
	.byte 0x00, 0x00

    .global s_md000_bg_overlay_22_021219bc
s_md000_bg_overlay_22_021219bc: ; 0x021219BC
	.asciz "md000_bg_"

    .global DAT_overlay_22_021219C6
DAT_overlay_22_021219C6:
	.byte 0x00, 0x00

    .global s_md000_overlay_22_021219c8
s_md000_overlay_22_021219c8: ; 0x021219C8
	.asciz "md000"

    .global DAT_overlay_22_021219CE
DAT_overlay_22_021219CE:
	.byte 0x00, 0x00

    .global s_md000_02_overlay_22_021219d0
s_md000_02_overlay_22_021219d0: ; 0x021219D0
	.asciz "md000_02"

    .global DAT_overlay_22_021219D9
DAT_overlay_22_021219D9:
	.byte 0x00, 0x00, 0x00

    .global s_md000_01_overlay_22_021219dc
s_md000_01_overlay_22_021219dc: ; 0x021219DC
	.asciz "md000_01"

    .global DAT_overlay_22_021219E5
DAT_overlay_22_021219E5:
	.byte 0x00, 0x00, 0x00

    .global s_md000_03_overlay_22_021219e8
s_md000_03_overlay_22_021219e8: ; 0x021219E8
	.asciz "md000_03"

    .global DAT_overlay_22_021219F1
DAT_overlay_22_021219F1:
	.byte 0x00, 0x00, 0x00

    .global s_data_menu_overlay_22_021219f4
s_data_menu_overlay_22_021219f4: ; 0x021219F4
	.asciz "data/menu"

    .global DAT_overlay_22_021219FE
DAT_overlay_22_021219FE:
	.byte 0x00, 0x00

    .global s_md000_00_overlay_22_02121a00
s_md000_00_overlay_22_02121a00: ; 0x02121A00
	.asciz "md000_00"

    .global DAT_overlay_22_02121A09
DAT_overlay_22_02121A09:
	.byte 0x00, 0x00, 0x00

    .global s_data_menu_rd000_LZ_bin_overlay_22_02121a0c
s_data_menu_rd000_LZ_bin_overlay_22_02121a0c: ; 0x02121A0C
	.asciz "data/menu/rd000_LZ.bin"

    .global DAT_overlay_22_02121A23
DAT_overlay_22_02121A23:
	.byte 0x00

    .global s_rd000_nbfs_overlay_22_02121a24
s_rd000_nbfs_overlay_22_02121a24: ; 0x02121A24
	.asciz "rd000.nbfs"

    .global DAT_overlay_22_02121A2F
DAT_overlay_22_02121A2F:
	.byte 0x00

    .global s_data_message_etc_menu_mes_overlay_22_02121a30
s_data_message_etc_menu_mes_overlay_22_02121a30: ; 0x02121A30
	.asciz "data/message/etc/menu_mes"

    .global DAT_overlay_22_02121A4A
DAT_overlay_22_02121A4A:
	.byte 0x00, 0x00

    .global s_27CEncycItemDescriptionScreen_overlay_22_02121a4c
s_27CEncycItemDescriptionScreen_overlay_22_02121a4c: ; 0x02121A4C
	.asciz "27CEncycItemDescriptionScreen"

    .global DAT_overlay_22_02121A6A
DAT_overlay_22_02121A6A:
	.byte 0x00, 0x00

    .global PTR_ptr_FUN_020835ec_overlay_22_02121a6c
PTR_ptr_FUN_020835ec_overlay_22_02121a6c: ; 0x02121A6C
	.word _ZTVN10__cxxabiv121__vmi_class_type_infoE+8
	.word s_27CEncycItemDescriptionScreen_overlay_22_02121a4c
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_22_0212180c
	.byte 0x02, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_22_02121700
	.byte 0x02, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835ec_overlay_22_02121a6c

    .global PTR_LAB_overlay_22_0211f10c_overlay_22_02121a94
PTR_LAB_overlay_22_0211f10c_overlay_22_02121a94: ; 0x02121A94
	.word ov22_0211F10C

    .global ptr_FUN_overlay_22_0211f110_overlay_22_02121a98
ptr_FUN_overlay_22_0211f110_overlay_22_02121a98: ; 0x02121A98
	.word ov22_0211F110

    .global ptr_FUN_overlay_22_0211e2d8_overlay_22_02121a9c
ptr_FUN_overlay_22_0211e2d8_overlay_22_02121a9c: ; 0x02121A9C
	.word ov22_0211E2D8

    .global ptr_FUN_overlay_22_0211e5a8_overlay_22_02121aa0
ptr_FUN_overlay_22_0211e5a8_overlay_22_02121aa0: ; 0x02121AA0
	.word ov22_0211E5A8

    .global ptr_FUN_overlay_22_0211e688_overlay_22_02121aa4
ptr_FUN_overlay_22_0211e688_overlay_22_02121aa4: ; 0x02121AA4
	.word ov22_0211E688

    .global ptr_FUN_overlay_22_0211e748_overlay_22_02121aa8
ptr_FUN_overlay_22_0211e748_overlay_22_02121aa8: ; 0x02121AA8
	.word ov22_0211E748

    .global ptr_FUN_overlay_21_0211e7d8_overlay_22_02121aac
ptr_FUN_overlay_21_0211e7d8_overlay_22_02121aac: ; 0x02121AAC
	.word ov22_0211E7D8

    .global ptr_FUN_overlay_22_0211e9ec_overlay_22_02121ab0
ptr_FUN_overlay_22_0211e9ec_overlay_22_02121ab0: ; 0x02121AB0
	.word ov22_0211E9EC

    .global ptr_FUN_overlay_22_0211ea18_overlay_22_02121ab4
ptr_FUN_overlay_22_0211ea18_overlay_22_02121ab4: ; 0x02121AB4
	.word ov22_0211EA18
	.word ov22_0211D2D0

    .global ptr_FUN_overlay_11_0211f0bc_overlay_22_02121abc
ptr_FUN_overlay_11_0211f0bc_overlay_22_02121abc: ; 0x02121ABC
	.word ov22_0211F0BC
	.byte 0xF8, 0xFF, 0xFF, 0xFF
	.word PTR_ptr_FUN_020835ec_overlay_22_02121a6c

    .global PTR_LAB_overlay_22_0211f124_overlay_22_02121ac8
PTR_LAB_overlay_22_0211f124_overlay_22_02121ac8: ; 0x02121AC8
	.word ov22_0211F124

    .global s_menu_overlay_22_02121acc
s_menu_overlay_22_02121acc: ; 0x02121ACC
	.asciz "menu/"

    .global DAT_overlay_22_02121AD2
DAT_overlay_22_02121AD2:
	.byte 0x00, 0x00

    .global s_md001_bg_overlay_22_02121ad4
s_md001_bg_overlay_22_02121ad4: ; 0x02121AD4
	.asciz "md001_bg_"

    .global DAT_overlay_22_02121ADE
DAT_overlay_22_02121ADE:
	.byte 0x00, 0x00

    .global s_md001_overlay_22_02121ae0
s_md001_overlay_22_02121ae0: ; 0x02121AE0
	.asciz "md001"

    .global DAT_overlay_22_02121AE6
DAT_overlay_22_02121AE6:
	.byte 0x00, 0x00

    .global s_md001_01_overlay_22_02121ae8
s_md001_01_overlay_22_02121ae8: ; 0x02121AE8
	.asciz "md001_01"

    .global DAT_overlay_22_02121AF1
DAT_overlay_22_02121AF1:
	.byte 0x00, 0x00, 0x00

    .global s_md001_02_overlay_22_02121af4
s_md001_02_overlay_22_02121af4: ; 0x02121AF4
	.asciz "md001_02"

    .global DAT_overlay_22_02121AFD
DAT_overlay_22_02121AFD:
	.byte 0x00, 0x00, 0x00

    .global s_md001_03_overlay_22_02121b00
s_md001_03_overlay_22_02121b00: ; 0x02121B00
	.asciz "md001_03"

    .global DAT_overlay_22_02121B09
DAT_overlay_22_02121B09:
	.byte 0x00, 0x00, 0x00

    .global s_data_menu_overlay_22_02121b0c
s_data_menu_overlay_22_02121b0c: ; 0x02121B0C
	.asciz "data/menu"

    .global DAT_overlay_22_02121B16
DAT_overlay_22_02121B16:
	.byte 0x00, 0x00

    .global s_md001_00_overlay_22_02121b18
s_md001_00_overlay_22_02121b18: ; 0x02121B18
	.asciz "md001_00"

    .global DAT_overlay_22_02121B21
DAT_overlay_22_02121B21:
	.byte 0x00, 0x00, 0x00

    .global s_data_menu_rd_03d_LZ_bin_overlay_22_02121b24
s_data_menu_rd_03d_LZ_bin_overlay_22_02121b24: ; 0x02121B24
	.asciz "data/menu/rd%03d_LZ.bin"

    .global s_rd_03d_nbfs_overlay_22_02121b3c
s_rd_03d_nbfs_overlay_22_02121b3c: ; 0x02121B3C
	.asciz "rd%03d.nbfs"

    .global s_DCB_overlay_22_02121b48
s_DCB_overlay_22_02121b48: ; 0x02121B48
	.asciz "DCB"

    .global s_DCB_s_overlay_22_02121b4c
s_DCB_s_overlay_22_02121b4c: ; 0x02121B4C
	.asciz "DCB:%s"

    .global DAT_overlay_22_02121B53
DAT_overlay_22_02121B53:
	.byte 0x00

    .global PTR_ptr_FUN_02083578_overlay_22_02121b54
PTR_ptr_FUN_02083578_overlay_22_02121b54: ; 0x02121B54
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_13CEncycListBox_overlay_22_02121b6c
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_22_02121b54

    .global ptr_FUN_overlay_22_0211fa64_overlay_22_02121b64
ptr_FUN_overlay_22_0211fa64_overlay_22_02121b64: ; 0x02121B64
	.word ov22_0211FA64

    .global ptr_FUN_overlay_22_0211fa98_overlay_22_02121b68
ptr_FUN_overlay_22_0211fa98_overlay_22_02121b68: ; 0x02121B68
	.word ov22_0211FA98

    .global s_13CEncycListBox_overlay_22_02121b6c
s_13CEncycListBox_overlay_22_02121b6c: ; 0x02121B6C
	.asciz "13CEncycListBox"

    .global s_data_message_etc_dictionary_mes_overlay_22_02121b7c
s_data_message_etc_dictionary_mes_overlay_22_02121b7c: ; 0x02121B7C
	.asciz "/data/message/etc/dictionary_mes"

    .global DAT_overlay_22_02121B9D
DAT_overlay_22_02121B9D:
	.byte 0x00, 0x00, 0x00

    .global s_data_font_prs_lc_jp_NCLR_overlay_22_02121ba0
s_data_font_prs_lc_jp_NCLR_overlay_22_02121ba0: ; 0x02121BA0
	.asciz "data/font/prs_lc_jp.NCLR"
	; 0x02121BB9
