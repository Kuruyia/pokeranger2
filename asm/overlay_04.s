    .include "asm/macros.inc"
    .include "asm/include/overlay_04.inc"

    .text

	arm_func_start ov4_0211C9E0
ov4_0211C9E0: ; 0x0211C9E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02007C98
	ldr r1, _0211CA2C ; =ptr_FUN_overlay_4_0211ca30_overlay_4_0211d7e4
	add r0, r4, #0x6c
	str r1, [r5]
	add r0, r0, #0x1400
	mov r1, #0x1e
	str r4, [r5, #4]
	bl sub_02008DB4
	mov r1, #0
	str r1, [r5, #8]
	str r1, [r5, #0x2c]
	str r1, [r5, #0x20]
	str r1, [r5, #0x24]
	mov r0, r5
	str r1, [r5, #0x28]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA2C: .word ptr_FUN_overlay_4_0211ca30_overlay_4_0211d7e4
	arm_func_end ov4_0211C9E0

	arm_func_start ov4_0211CA30
ov4_0211CA30: ; 0x0211CA30
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _0211CB24 ; =ptr_FUN_overlay_4_0211ca30_overlay_4_0211d7e4
	mov r5, r0
	str r1, [r5]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0211CAD0
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211CA9C
	mov r6, r4
	arm_func_end ov4_0211CA30
_0211CA60:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211CA88
	bl _ZdaPv
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211CA88:
	ldr r1, [r5, #8]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211CA60
_0211CA9C:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211CAB8
	bl _ZdaPv
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #8]
_0211CAB8:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0211CAD0
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #8]
_0211CAD0:
	ldr r4, [r5, #0x2c]
	cmp r4, #0
	beq _0211CAF8
	beq _0211CAF0
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0211CAF0:
	mov r0, #0
	str r0, [r5, #0x2c]
_0211CAF8:
	bl NitroSystem_gfd_VramManager_NNS_GfdResetLnkTexVramState
	bl NitroSystem_gfd_VramManager_NNS_GfdResetLnkPlttVramState
	ldr r0, [r5, #4]
	mov r1, #0x1e
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211CB24: .word ptr_FUN_overlay_4_0211ca30_overlay_4_0211d7e4

	arm_func_start ov4_0211CB28
ov4_0211CB28: ; 0x0211CB28
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _0211CC24 ; =ptr_FUN_overlay_4_0211ca30_overlay_4_0211d7e4
	mov r5, r0
	str r1, [r5]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0211CBC8
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211CB94
	mov r6, r4
	arm_func_end ov4_0211CB28
_0211CB58:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211CB80
	bl _ZdaPv
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211CB80:
	ldr r1, [r5, #8]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211CB58
_0211CB94:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211CBB0
	bl _ZdaPv
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #8]
_0211CBB0:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0211CBC8
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #8]
_0211CBC8:
	ldr r4, [r5, #0x2c]
	cmp r4, #0
	beq _0211CBF0
	beq _0211CBE8
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0211CBE8:
	mov r0, #0
	str r0, [r5, #0x2c]
_0211CBF0:
	bl NitroSystem_gfd_VramManager_NNS_GfdResetLnkTexVramState
	bl NitroSystem_gfd_VramManager_NNS_GfdResetLnkPlttVramState
	ldr r0, [r5, #4]
	mov r1, #0x1e
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	bl _ZdlPv
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211CC24: .word ptr_FUN_overlay_4_0211ca30_overlay_4_0211d7e4

	arm_func_start ov4_0211CC28
ov4_0211CC28: ; 0x0211CC28
	stmdb sp!, {r3, lr}
	bl sub_0206235C
	bl sub_02062370
	bl NitroSDK_gx_GX_ResetBankForBGExtPltt
	bl NitroSDK_gx_GX_ResetBankForOBJExtPltt
	bl NitroSDK_gx_GX_ResetBankForTex
	bl NitroSDK_gx_GX_ResetBankForTexPltt
	bl NitroSDK_gx_GX_ResetBankForClearImage
	bl sub_0206241C
	bl sub_02062430
	bl NitroSDK_gx_GX_ResetBankForSubBGExtPltt
	bl NitroSDK_gx_GX_ResetBankForSubOBJExtPltt
	bl sub_02062408
	mov r0, #1
	bl sub_020616C4
	mov r0, #0x10
	bl sub_02061954
	mov r0, #1
	mov r1, #0
	mov r2, r1
	bl sub_02061500
	mov r0, #4
	bl sub_02062110
	mov r0, #0x100
	bl sub_020621B8
	ldr r2, _0211CCCC ; =0x04000304
	ldr r0, _0211CCD0 ; =0xFFFFFDF1
	ldrh r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [r2]
	ldrh r0, [r2]
	bic r0, r0, #0x8000
	strh r0, [r2]
	bl sub_020614B8
	ldr r1, _0211CCD4 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CCCC: .word 0x04000304
_0211CCD0: .word 0xFFFFFDF1
_0211CCD4: .word 0x04001000
	arm_func_end ov4_0211CC28

	arm_func_start ov4_0211CCD8
ov4_0211CCD8: ; 0x0211CCD8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r7, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211CD14
	ldr r3, [r7, #4]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x24
	mov r3, #0
	bl sub_0200ECD0
	arm_func_end ov4_0211CCD8
_0211CD14:
	str r0, [r7, #0x2c]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7, #0x2c]
	ldr r1, _0211D04C ; =s_data_eventicon_overlay_4_0211d810
	ldr r2, _0211D050 ; =s_eventicon000_overlay_4_0211d820
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	ldr r0, [r7, #0x2c]
	mov r2, #0xf0
	mov r3, #0xb3
	bl sub_0200F4FC
	ldr r0, [r7, #4]
	mov r1, #8
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	ldr r0, [r0, #0x10]
	str r0, [r7, #0xc]
	str r1, [r7, #0x18]
	str r1, [r7, #0x1c]
	ldr r1, [r7, #0xc]
	cmp r1, #0x2a
	bgt _0211CE08
	bge _0211CE70
	cmp r1, #0x22
	bgt _0211CDEC
	bge _0211CE84
	cmp r1, #0x19
	bgt _0211CDE0
	subs r0, r1, #8
	addpl pc, pc, r0, lsl #2
	b _0211CE98
_0211CD98: ; jump table
	b _0211CE84 ; case 0
	b _0211CE98 ; case 1
	b _0211CE4C ; case 2
	b _0211CE98 ; case 3
	b _0211CE4C ; case 4
	b _0211CE98 ; case 5
	b _0211CE4C ; case 6
	b _0211CE98 ; case 7
	b _0211CE98 ; case 8
	b _0211CE98 ; case 9
	b _0211CE98 ; case 10
	b _0211CE4C ; case 11
	b _0211CE4C ; case 12
	b _0211CE98 ; case 13
	b _0211CE84 ; case 14
	b _0211CE98 ; case 15
	b _0211CE98 ; case 16
	b _0211CE84 ; case 17
_0211CDE0:
	cmp r1, #0x20
	beq _0211CE84
	b _0211CE98
_0211CDEC:
	cmp r1, #0x25
	bgt _0211CDFC
	beq _0211CE84
	b _0211CE98
_0211CDFC:
	cmp r1, #0x28
	beq _0211CE70
	b _0211CE98
_0211CE08:
	cmp r1, #0x31
	bgt _0211CE30
	bge _0211CE84
	cmp r1, #0x2c
	bgt _0211CE24
	beq _0211CE84
	b _0211CE98
_0211CE24:
	cmp r1, #0x2f
	beq _0211CE84
	b _0211CE98
_0211CE30:
	cmp r1, #0x39
	bgt _0211CE40
	beq _0211CE84
	b _0211CE98
_0211CE40:
	cmp r1, #0x384
	beq _0211CE84
	b _0211CE98
_0211CE4C:
	mov r0, #0xc
	str r0, [r7, #0x18]
	mov r1, #0x12
	ldr r0, _0211D054 ; =0x33333333
	str r1, [r7, #0x1c]
	str r0, [r7, #0x10]
	mov r0, #0
	str r0, [r7, #0x14]
	b _0211CEB0
_0211CE70:
	ldr r1, _0211D054 ; =0x33333333
	mov r0, #1
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	b _0211CEB0
_0211CE84:
	ldr r1, _0211D058 ; =0x66666666
	mov r0, #2
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	b _0211CEB0
_0211CE98:
	mov r1, #0x31
	ldr r0, _0211D058 ; =0x66666666
	str r1, [r7, #0xc]
	str r0, [r7, #0x10]
	mov r0, #2
	str r0, [r7, #0x14]
_0211CEB0:
	ldr r1, [r7, #0x10]
	ldr r0, _0211D054 ; =0x33333333
	mov r2, #0
	cmp r1, r0
	ldr r0, [r7, #4]
	bne _0211CEF4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #2
	bl sub_0200E0E0
	ldr r0, [r7, #4]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0
	bl sub_0200E0E0
	b _0211CF1C
_0211CEF4:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #4
	bl sub_0200E0E0
	ldr r0, [r7, #4]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0
	bl sub_0200E0E0
_0211CF1C:
	ldr r2, [r7, #0xc]
	ldr r1, _0211D05C ; =s_data_message_chapter_chapter_03d_overlay_4_0211d830
	add r0, sp, #4
	bl sub_02064F28
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0211CF4C
	add r1, sp, #4
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0211CF4C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #8]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #8]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #8]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #8]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0211D014
_0211CFA4:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #8]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #8]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #8]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #8]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0211CFA4
_0211D014:
	cmp r6, #0
	beq _0211D02C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D02C:
	mov r0, r7
	bl ov4_0211D060
	mov r0, r7
	bl ov4_0211D394
	mov r0, r7
	bl ov4_0211D440
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0211D04C: .word s_data_eventicon_overlay_4_0211d810
_0211D050: .word s_eventicon000_overlay_4_0211d820
_0211D054: .word 0x33333333
_0211D058: .word 0x66666666
_0211D05C: .word s_data_message_chapter_chapter_03d_overlay_4_0211d830

	arm_func_start ov4_0211D060
ov4_0211D060: ; 0x0211D060
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _0211D0A4
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r1, _0211D368 ; =s_BGM_overlay_4_0211d858
	ldr r2, _0211D36C ; =s_data_menu_ml000_bg_LZ_bin_overlay_4_0211d85c
	str r3, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
	arm_func_end ov4_0211D060
_0211D0A4:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _0211D0CC
	mov r2, #0
	ldr r1, _0211D370 ; =s_BGM_ml000_NCGR_overlay_4_0211d878
	mov r3, r2
	str r2, [sp]
	bl sub_0200365C
	mov r5, r0
_0211D0CC:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _0211D0F4
	mov r2, #0
	ldr r1, _0211D374 ; =s_BGM_ml000_NCLR_overlay_4_0211d888
	mov r3, r2
	str r2, [sp]
	bl sub_020033B0
	mov r6, r0
_0211D0F4:
	ldr r0, [r8, #0x14]
	cmp r0, #0
	beq _0211D114
	cmp r0, #1
	beq _0211D140
	cmp r0, #2
	beq _0211D16C
	b _0211D194
_0211D114:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _0211D194
	mov r2, #0
	ldr r1, _0211D378 ; =s_BGM_ml000_00_2_NSCR_overlay_4_0211d898
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
	mov r7, r0
	b _0211D194
_0211D140:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _0211D194
	mov r2, #0
	ldr r1, _0211D37C ; =s_BGM_ml000_00_1_NSCR_overlay_4_0211d8ac
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
	mov r7, r0
	b _0211D194
_0211D16C:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _0211D194
	mov r2, #0
	ldr r1, _0211D380 ; =s_BGM_ml000_00_0_NSCR_overlay_4_0211d8c0
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
	mov r7, r0
_0211D194:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r7, #0xb8]
	ldr r2, [r5, #0xb8]
	ldr r3, [r6, #0xb8]
	mov r0, #1
	bl NitroSystem_g2d_Screen_NNS_G2dBGSetupEx
	cmp r7, #0
	beq _0211D1D8
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D1D8:
	cmp r5, #0
	beq _0211D1F0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D1F0:
	cmp r6, #0
	beq _0211D208
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D208:
	cmp r4, #0
	beq _0211D220
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
_0211D220:
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _0211D258
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r1, _0211D368 ; =s_BGM_overlay_4_0211d858
	ldr r2, _0211D384 ; =s_data_menu_mnd000_bg_LZ_bin_overlay_4_0211d8d4
	str r3, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
_0211D258:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _0211D280
	mov r2, #0
	ldr r1, _0211D388 ; =s_BGM_mnd000_NCGR_overlay_4_0211d8f0
	mov r3, r2
	str r2, [sp]
	bl sub_0200365C
	mov r5, r0
_0211D280:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _0211D2A8
	mov r2, #0
	ldr r1, _0211D38C ; =s_BGM_mnd000_NCLR_overlay_4_0211d900
	mov r3, r2
	str r2, [sp]
	bl sub_020033B0
	mov r6, r0
_0211D2A8:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _0211D2D0
	mov r2, #0
	ldr r1, _0211D390 ; =s_BGM_mnd000_00_NSCR_overlay_4_0211d910
	mov r3, r2
	str r2, [sp]
	bl sub_02003494
	mov r7, r0
_0211D2D0:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r7, #0xb8]
	ldr r2, [r5, #0xb8]
	ldr r3, [r6, #0xb8]
	mov r0, #4
	bl NitroSystem_g2d_Screen_NNS_G2dBGSetupEx
	cmp r7, #0
	beq _0211D314
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D314:
	cmp r5, #0
	beq _0211D32C
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D32C:
	cmp r6, #0
	beq _0211D344
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D344:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211D368: .word s_BGM_overlay_4_0211d858
_0211D36C: .word s_data_menu_ml000_bg_LZ_bin_overlay_4_0211d85c
_0211D370: .word s_BGM_ml000_NCGR_overlay_4_0211d878
_0211D374: .word s_BGM_ml000_NCLR_overlay_4_0211d888
_0211D378: .word s_BGM_ml000_00_2_NSCR_overlay_4_0211d898
_0211D37C: .word s_BGM_ml000_00_1_NSCR_overlay_4_0211d8ac
_0211D380: .word s_BGM_ml000_00_0_NSCR_overlay_4_0211d8c0
_0211D384: .word s_data_menu_mnd000_bg_LZ_bin_overlay_4_0211d8d4
_0211D388: .word s_BGM_mnd000_NCGR_overlay_4_0211d8f0
_0211D38C: .word s_BGM_mnd000_NCLR_overlay_4_0211d900
_0211D390: .word s_BGM_mnd000_00_NSCR_overlay_4_0211d910

	arm_func_start ov4_0211D394
ov4_0211D394: ; 0x0211D394
	mov r0, #0x4000000
	ldr r1, [r0]
	add r3, r0, #0x1000
	bic r1, r1, #0x1f00
	orr r1, r1, #0x1200
	str r1, [r0]
	ldr r2, [r3]
	ldr r1, _0211D43C ; =0x04001008
	bic r2, r2, #0x1f00
	orr r2, r2, #0x100
	str r2, [r3]
	ldrh r2, [r0, #8]
	bic r2, r2, #3
	strh r2, [r0, #8]
	ldrh r2, [r0, #0xa]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r0, #0xa]
	ldrh r2, [r0, #0xc]
	bic r2, r2, #3
	orr r2, r2, #2
	strh r2, [r0, #0xc]
	ldrh r2, [r0, #0xe]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r0, #0xe]
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1, #4]
	ldrh r0, [r1, #6]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_0211D43C: .word 0x04001008
	arm_func_end ov4_0211D394

	arm_func_start ov4_0211D440
ov4_0211D440: ; 0x0211D440
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r0, [r4, #4]
	mov r2, #1
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4ac]
	ldr r0, [r0, #0x494]
	add r1, r1, #0xc
	bl sub_0200C3BC
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C3D0
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r3, r1
	mov r2, #0xc
	bl sub_0200C408
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C680
	mov r0, #1
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r4, #4]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r3, #0x14
	bl sub_0200C6C8
	ldr r1, [r4, #0x10]
	ldr r0, _0211D55C ; =0x33333333
	mov r2, #0xb4
	cmp r1, r0
	ldr r0, [r4, #4]
	bne _0211D52C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #1
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0xb4
	bl sub_0200E0E0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov4_0211D440
_0211D52C:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #3
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0xb4
	bl sub_0200E0E0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211D55C: .word 0x33333333

	arm_func_start ov4_0211D560
ov4_0211D560: ; 0x0211D560
	bx lr
	arm_func_end ov4_0211D560

	arm_func_start ov4_0211D564
ov4_0211D564: ; 0x0211D564
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, [r4, #0x2c]
	bl sub_0200F64C
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0211D5B8
	subs r0, r0, #1
	str r0, [r4, #0x20]
	bne _0211D778
	ldr r0, [r4, #4]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4ac]
	ldr r0, [r0, #0x494]
	add r1, r1, #0x14
	bl sub_0200C3BC
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov4_0211D564
_0211D5B8:
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	ldr r0, [r1, #0x18]
	ldr ip, [r1, #0x14]
	cmp r2, #0xf0
	addlt r0, r2, #1
	strlt r0, [r4, #0x24]
	blt _0211D6CC
	ldr r3, [r4, #0x10]
	ldr r2, _0211D784 ; =0x33333333
	cmp r3, r2
	ldrh r3, [ip, #2]
	and r2, r3, #1
	bne _0211D660
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	bne _0211D614
	and r2, r3, #2
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	ldreqb r0, [r0, #4]
	cmpeq r0, #0
	beq _0211D6CC
_0211D614:
	add r0, r1, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #2
	mov r2, #0x3c
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x3c
	bl sub_0200E0E0
	mov r0, #0x3c
	str r0, [r4, #0x20]
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	b _0211D6CC
_0211D660:
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	bne _0211D684
	and r2, r3, #2
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	ldreqb r0, [r0, #4]
	cmpeq r0, #0
	beq _0211D6CC
_0211D684:
	add r0, r1, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #4
	mov r2, #0x3c
	bl sub_0200E0E0
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x3c
	bl sub_0200E0E0
	mov r0, #0x3c
	str r0, [r4, #0x20]
	ldr r0, [r4, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_0211D6CC:
	ldr r0, [r4, #0x28]
	cmp r0, #0xa
	addlt r0, r0, #1
	strlt r0, [r4, #0x28]
	ldr r0, [r4, #0x28]
	cmp r0, #2
	bne _0211D778
	ldr r1, [r4, #0x10]
	ldr r0, _0211D784 ; =0x33333333
	ldr ip, [r4, #4]
	cmp r1, r0
	add r0, ip, #0x1000
	ldr r0, [r0, #0x4a4]
	moveq lr, #4
	ldr r1, [r4, #0xc]
	movne lr, #1
	cmp r1, #0xa
	cmpne r1, #0xc
	ldrb r2, [r0]
	cmpne r1, #0xe
	beq _0211D72C
	sub r0, r1, #0x13
	cmp r0, #1
	bhi _0211D73C
_0211D72C:
	cmp r2, #0
	moveq r3, #1
	movne r3, #2
	b _0211D740
_0211D73C:
	mov r3, #1
_0211D740:
	str lr, [sp]
	ldr r0, [r4, #8]
	mov r1, #0
	ldr r2, [r0, #8]
	add r0, ip, #0x1000
	add r2, r2, r3, lsl #3
	ldr r2, [r2, #4]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x494]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl sub_0200C7A4
_0211D778:
	mvn r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D784: .word 0x33333333

	arm_func_start ov4_0211D788
ov4_0211D788: ; 0x0211D788
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x24]
	cmp r1, #0xf0
	ldmltia sp!, {r3, pc}
	ldr r0, [r0, #0x2c]
	bl sub_0200F71C
	ldmia sp!, {r3, pc}
	arm_func_end ov4_0211D788

	arm_func_start ov4_0211D7A4
ov4_0211D7A4: ; 0x0211D7A4
	mov r0, #2
	bx lr
	arm_func_end ov4_0211D7A4

    .section .sinit,4 ; 0x0211D7AC

    .data
PTR_ptr_FUN_020835bc_overlay_4_0211d7c0: ; 0x0211D7C0
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_12CLetterScene_overlay_4_0211d7cc
	.word PTR_ptr_FUN_02083578_0208a804
s_12CLetterScene_overlay_4_0211d7cc: ; 0x0211D7CC
	.asciz "12CLetterScene"
_0211D7DB:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_4_0211d7c0
ptr_FUN_overlay_4_0211ca30_overlay_4_0211d7e4: ; 0x0211D7E4
	.word ov4_0211CA30
ptr_FUN_overlay_0_0211cb28_overlay_4_0211d7e8: ; 0x0211D7E8
	.word ov4_0211CB28
ptr_FUN_overlay_4_0211d564_overlay_4_0211d7ec: ; 0x0211D7EC
	.word ov4_0211D564
	.word ov4_0211D788
ptr_thunk_FUN_02001210_overlay_4_0211d7f4: ; 0x0211D7F4
	.word sub_02007CD4
ptr_FUN_02007ce0_overlay_4_0211d7f8: ; 0x0211D7F8
	.word sub_02007CE0
ptr_FUN_02007cc4_overlay_4_0211d7fc: ; 0x0211D7FC
	.word sub_02007CC4
ptr_FUN_overlay_4_0211cc28_overlay_4_0211d800: ; 0x0211D800
	.word ov4_0211CC28
ptr_FUN_overlay_4_0211ccd8_overlay_4_0211d804: ; 0x0211D804
	.word ov4_0211CCD8
	.word ov4_0211D560
	.word ov4_0211D7A4
s_data_eventicon_overlay_4_0211d810: ; 0x0211D810
	.asciz "data/eventicon"
_0211D81F:
	.byte 0x00
s_eventicon000_overlay_4_0211d820: ; 0x0211D820
	.asciz "eventicon000"
_0211D82D:
	.byte 0x00, 0x00, 0x00
s_data_message_chapter_chapter_03d_overlay_4_0211d830: ; 0x0211D830
	.asciz "data/message/chapter/chapter%03d_mes"
_0211D855:
	.byte 0x00, 0x00, 0x00
s_BGM_overlay_4_0211d858: ; 0x0211D858
	.asciz "BGM"
s_data_menu_ml000_bg_LZ_bin_overlay_4_0211d85c: ; 0x0211D85C
	.asciz "data/menu/ml000_bg_LZ.bin"
_0211D876:
	.byte 0x00, 0x00
s_BGM_ml000_NCGR_overlay_4_0211d878: ; 0x0211D878
	.asciz "BGM:ml000.NCGR"
_0211D887:
	.byte 0x00
s_BGM_ml000_NCLR_overlay_4_0211d888: ; 0x0211D888
	.asciz "BGM:ml000.NCLR"
_0211D897:
	.byte 0x00
s_BGM_ml000_00_2_NSCR_overlay_4_0211d898: ; 0x0211D898
	.asciz "BGM:ml000_00_2.NSCR"
s_BGM_ml000_00_1_NSCR_overlay_4_0211d8ac: ; 0x0211D8AC
	.asciz "BGM:ml000_00_1.NSCR"
s_BGM_ml000_00_0_NSCR_overlay_4_0211d8c0: ; 0x0211D8C0
	.asciz "BGM:ml000_00_0.NSCR"
s_data_menu_mnd000_bg_LZ_bin_overlay_4_0211d8d4: ; 0x0211D8D4
	.asciz "data/menu/mnd000_bg_LZ.bin"
_0211D8EF:
	.byte 0x00
s_BGM_mnd000_NCGR_overlay_4_0211d8f0: ; 0x0211D8F0
	.asciz "BGM:mnd000.NCGR"
s_BGM_mnd000_NCLR_overlay_4_0211d900: ; 0x0211D900
	.asciz "BGM:mnd000.NCLR"
s_BGM_mnd000_00_NSCR_overlay_4_0211d910: ; 0x0211D910
	.asciz "BGM:mnd000_00.NSCR"
	; 0x0211D923
