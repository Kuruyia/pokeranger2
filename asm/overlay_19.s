    .include "asm/macros.inc"
    .include "asm/include/overlay_19.inc"

    .text

	arm_func_start ov19_0211C9E0
ov19_0211C9E0: ; 0x0211C9E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007C98
	ldr r0, _0211CA54 ; =ptr_FUN_overlay_19_0211ca58_overlay_19_0211e3e8
	str r0, [r4]
	bl sub_0201001C
	str r0, [r4, #0x1c]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	str r0, [r4, #0x18]
	bl sub_020345D4
	ldr r0, [r4, #0x18]
	mov r1, #0xbc
	bl sub_020349E8
	ldr r0, [r4, #0x18]
	mov r1, #0xbd
	bl sub_020349E8
	ldr r0, [r4, #0x18]
	mov r1, #3
	bl sub_0203499C
	mov r0, #1
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CA54: .word ptr_FUN_overlay_19_0211ca58_overlay_19_0211e3e8
	arm_func_end ov19_0211C9E0

	arm_func_start ov19_0211CA58
ov19_0211CA58: ; 0x0211CA58
	stmdb sp!, {r4, lr}
	ldr r1, _0211CA94 ; =ptr_FUN_overlay_19_0211ca58_overlay_19_0211e3e8
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x18]
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
_0211CA94: .word ptr_FUN_overlay_19_0211ca58_overlay_19_0211e3e8
	arm_func_end ov19_0211CA58

	arm_func_start ov19_0211CA98
ov19_0211CA98: ; 0x0211CA98
	stmdb sp!, {r4, lr}
	ldr r1, _0211CADC ; =ptr_FUN_overlay_19_0211ca58_overlay_19_0211e3e8
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0x18]
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
_0211CADC: .word ptr_FUN_overlay_19_0211ca58_overlay_19_0211e3e8
	arm_func_end ov19_0211CA98

	arm_func_start ov19_0211CAE0
ov19_0211CAE0: ; 0x0211CAE0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	bl sub_02007D68
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	beq _0211CB04
	bl sub_02003718
	arm_func_end ov19_0211CAE0
_0211CB04:
	mov r1, #0x100000
	str r0, [r4, #0x20]
	str r1, [sp]
	sub r0, r1, #0x500000
	str r0, [sp, #4]
	mov r0, #0x800000
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x400000
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x20]
	mov r3, r1
	mov r2, #0xc0000
	bl sub_02003788
	mov r0, r4
	bl ov19_0211CFC0
	mov r0, r4
	bl ov19_0211CDA0
	mov r0, r4
	bl ov19_0211D070
	mov r0, r4
	bl ov19_0211D17C
	mov r0, r4
	bl ov19_0211D300
	mov r0, #0x4c
	bl _Znwm
	cmp r0, #0
	beq _0211CB78
	bl sub_02005150
_0211CB78:
	str r0, [r4, #0x68]
	mov r1, #0xa
	str r1, [r0, #4]
	ldr r0, [r4, #0x18]
	mov r1, #0x16
	mov r2, #0x40
	bl sub_02034A40
	ldr r0, [r4, #0x1c]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #0x1c]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}

	arm_func_start ov19_0211CBCC
ov19_0211CBCC: ; 0x0211CBCC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _0211CBF8
	beq _0211CBF0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov19_0211CBCC
_0211CBF0:
	mov r0, #0
	str r0, [r4, #0x6c]
_0211CBF8:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0211CC1C
	beq _0211CC14
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CC14:
	mov r0, #0
	str r0, [r4, #0x68]
_0211CC1C:
	ldr r5, [r4, #0x20]
	cmp r5, #0
	beq _0211CC44
	beq _0211CC3C
	mov r0, r5
	bl sub_0200372C
	mov r0, r5
	bl _ZdlPv
_0211CC3C:
	mov r0, #0
	str r0, [r4, #0x20]
_0211CC44:
	mov r6, #0
	mov r5, r6
_0211CC4C:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _0211CC74
	beq _0211CC6C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CC6C:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x70]
_0211CC74:
	add r6, r6, #1
	cmp r6, #3
	blt _0211CC4C
	mov r6, #0
	mov r5, r6
_0211CC88:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0x24]
	cmp r7, #0
	beq _0211CCB4
	beq _0211CCAC
	mov r0, r7
	bl sub_0201FCB4
	mov r0, r7
	bl _ZdlPv
_0211CCAC:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x24]
_0211CCB4:
	add r6, r6, #1
	cmp r6, #2
	blt _0211CC88
	mov r6, #0
	mov r5, r6
_0211CCC8:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0x3c]
	cmp r7, #0
	beq _0211CCF4
	beq _0211CCEC
	mov r0, r7
	bl sub_0200ED2C
	mov r0, r7
	bl _ZdlPv
_0211CCEC:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x3c]
_0211CCF4:
	add r6, r6, #1
	cmp r6, #5
	blt _0211CCC8
	mov r6, #0
	mov r5, r6
_0211CD08:
	add r0, r4, r6, lsl #2
	ldr r7, [r0, #0x2c]
	cmp r7, #0
	beq _0211CD34
	beq _0211CD2C
	mov r0, r7
	bl sub_0201AB14
	mov r0, r7
	bl _ZdlPv
_0211CD2C:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x2c]
_0211CD34:
	add r6, r6, #1
	cmp r6, #4
	blt _0211CD08
	ldr r0, [r4, #0x1c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_020092D4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov19_0211CD54
ov19_0211CD54: ; 0x0211CD54
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r7, r0
	mov r4, r5
	arm_func_end ov19_0211CD54
_0211CD64:
	add r0, r7, r5, lsl #2
	ldr r6, [r0, #0x3c]
	cmp r6, #0
	beq _0211CD90
	beq _0211CD88
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_0211CD88:
	add r0, r7, r5, lsl #2
	str r4, [r0, #0x3c]
_0211CD90:
	add r5, r5, #1
	cmp r5, #5
	blt _0211CD64
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov19_0211CDA0
ov19_0211CDA0: ; 0x0211CDA0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _0211CDC4
	ldr r1, [r4, #0x1c]
	bl sub_0201FC9C
	arm_func_end ov19_0211CDA0
_0211CDC4:
	str r0, [r4, #0x24]
	mov r1, #5
	bl sub_02020328
	ldr r0, [r4, #0x24]
	ldr r1, _0211CF9C ; =s_menu_overlay_19_0211e414
	ldr r2, _0211CFA0 ; =s_mnd000_bg_overlay_19_0211e41c
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x24]
	ldr r1, _0211CFA4 ; =s_mnd000_overlay_19_0211e428
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x24]
	ldr r1, _0211CFA4 ; =s_mnd000_overlay_19_0211e428
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #0x24]
	ldr r1, _0211CFA8 ; =s_mnd000_00_overlay_19_0211e430
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r4, #0x24]
	bl sub_020204A8
	mov r1, #0x100
	ldr r0, [r4, #0x24]
	mov r2, r1
	bl sub_0201FE18
	ldr r0, [r4, #0x24]
	bl sub_0201FEDC
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _0211CE88
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0211CFAC ; =s_BGD_overlay_19_0211e43c
	ldr r2, _0211CFB0 ; =s_data_menu_mps000_bg_LZ_bin_overlay_19_0211e440
	str r4, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
_0211CE88:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _0211CEB0
	ldr r1, _0211CFB4 ; =s_BGD_mps000_NCGR_overlay_19_0211e45c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_0200365C
	mov r6, r0
_0211CEB0:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _0211CED8
	ldr r1, _0211CFB8 ; =s_BGD_mps000_NCLR_overlay_19_0211e46c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
	mov r5, r0
_0211CED8:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _0211CF00
	ldr r1, _0211CFBC ; =s_BGD_mps000_00_NSCR_overlay_19_0211e47c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_02003494
	mov r7, r0
_0211CF00:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [r7, #0xb8]
	ldr r2, [r6, #0xb8]
	ldr r3, [r5, #0xb8]
	mov r0, #3
	bl NNS_G2dBGSetupEx
	cmp r7, #0
	beq _0211CF48
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CF48:
	cmp r6, #0
	beq _0211CF60
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CF60:
	cmp r5, #0
	beq _0211CF78
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CF78:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211CF9C: .word s_menu_overlay_19_0211e414
_0211CFA0: .word s_mnd000_bg_overlay_19_0211e41c
_0211CFA4: .word s_mnd000_overlay_19_0211e428
_0211CFA8: .word s_mnd000_00_overlay_19_0211e430
_0211CFAC: .word s_BGD_overlay_19_0211e43c
_0211CFB0: .word s_data_menu_mps000_bg_LZ_bin_overlay_19_0211e440
_0211CFB4: .word s_BGD_mps000_NCGR_overlay_19_0211e45c
_0211CFB8: .word s_BGD_mps000_NCLR_overlay_19_0211e46c
_0211CFBC: .word s_BGD_mps000_00_NSCR_overlay_19_0211e47c

	arm_func_start ov19_0211CFC0
ov19_0211CFC0: ; 0x0211CFC0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	ldr ip, [r4, #0x1c]
	mov r2, #0x10
	add r0, ip, #0x1000
	ldr r3, [r0, #0x4b0]
	add r1, ip, #0x24
	str r3, [sp]
	str r1, [sp, #4]
	ldr r3, [r4, #0x18]
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
	bl sub_02009328
	ldr r0, [r4, #0x1c]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	ldr r0, [r4, #0x1c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	mov r3, r1
	bl sub_0200AD34
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	arm_func_end ov19_0211CFC0

	arm_func_start ov19_0211D070
ov19_0211D070: ; 0x0211D070
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x40
	bl _Znwm
	cmp r0, #0
	beq _0211D08C
	bl sub_02003B64
	arm_func_end ov19_0211D070
_0211D08C:
	mov r1, #0x38000
	rsb r1, r1, #0
	str r0, [r4, #0x70]
	str r1, [r0, #0x18]
	add r1, r1, #0x20000
	str r1, [r0, #0x1c]
	ldr r2, [r4, #0x70]
	mov r0, #0x50000
	str r0, [r2, #0x20]
	mov r1, #0x88000
	mov r0, #0x40
	str r1, [r2, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _0211D0CC
	bl sub_02003B64
_0211D0CC:
	mov r1, #0
	str r0, [r4, #0x74]
	str r1, [r0, #0x18]
	sub r1, r1, #0x18000
	str r1, [r0, #0x1c]
	ldr r2, [r4, #0x74]
	mov r0, #0x50000
	str r0, [r2, #0x20]
	mov r1, #0x88000
	mov r0, #0x40
	str r1, [r2, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _0211D108
	bl sub_02003B64
_0211D108:
	mov r1, #0x38000
	str r0, [r4, #0x78]
	str r1, [r0, #0x18]
	sub r1, r1, #0x50000
	str r1, [r0, #0x1c]
	ldr r2, [r4, #0x78]
	mov r0, #0x50000
	str r0, [r2, #0x20]
	mov r1, #0x88000
	mov r0, #0x40
	str r1, [r2, #0x24]
	bl _Znwm
	cmp r0, #0
	beq _0211D144
	bl sub_02003B64
_0211D144:
	str r0, [r4, #0x6c]
	mov r2, #0
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	ldr r1, [r4, #0x6c]
	mov r0, #0x100000
	str r0, [r1, #0x20]
	mov r0, #0xc0000
	str r0, [r1, #0x24]
	ldr r0, [r4, #0x6c]
	strh r2, [r0, #8]
	ldr r0, [r4, #0x6c]
	str r2, [r0, #4]
	ldmia sp!, {r4, pc}

	arm_func_start ov19_0211D17C
ov19_0211D17C: ; 0x0211D17C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211D1C0
	ldr r2, _0211D2A8 ; =s_SS6_player3_NCLR_overlay_19_0211e4c4
	ldr r1, _0211D2AC ; =s_SS6_player3_00_NCER_overlay_19_0211e4d8
	str r2, [sp]
	ldr ip, _0211D2B0 ; =s_SS6_player3_00_cac_overlay_19_0211e4ec
	str r1, [sp, #4]
	ldr r1, _0211D2B4 ; =s_SS6_overlay_19_0211e490
	ldr r2, _0211D2B8 ; =s_data_player_player3_LZ_bin_overlay_19_0211e494
	ldr r3, _0211D2BC ; =s_SS6_player3_00_NCBR_overlay_19_0211e4b0
	str ip, [sp, #8]
	bl sub_0201AAE0
	arm_func_end ov19_0211D17C
_0211D1C0:
	str r0, [r4, #0x2c]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211D1FC
	ldr r2, _0211D2C0 ; =s_SS7_player4_NCLR_overlay_19_0211e534
	ldr r1, _0211D2C4 ; =s_SS7_player4_00_NCER_overlay_19_0211e548
	str r2, [sp]
	ldr ip, _0211D2C8 ; =s_SS7_player4_00_cac_overlay_19_0211e55c
	str r1, [sp, #4]
	ldr r1, _0211D2CC ; =s_SS7_overlay_19_0211e500
	ldr r2, _0211D2D0 ; =s_data_player_player4_LZ_bin_overlay_19_0211e504
	ldr r3, _0211D2D4 ; =s_SS7_player4_00_NCBR_overlay_19_0211e520
	str ip, [sp, #8]
	bl sub_0201AAE0
_0211D1FC:
	str r0, [r4, #0x34]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211D238
	ldr r2, _0211D2D8 ; =s_SS8_player3_NCLR_overlay_19_0211e588
	ldr r1, _0211D2DC ; =s_SS8_player3_02_NCER_overlay_19_0211e59c
	str r2, [sp]
	ldr ip, _0211D2E0 ; =s_SS8_player3_02_cac_overlay_19_0211e5b0
	str r1, [sp, #4]
	ldr r1, _0211D2E4 ; =s_SS8_overlay_19_0211e570
	ldr r2, _0211D2B8 ; =s_data_player_player3_LZ_bin_overlay_19_0211e494
	ldr r3, _0211D2E8 ; =s_SS8_player3_02_NCBR_overlay_19_0211e574
	str ip, [sp, #8]
	bl sub_0201AAE0
_0211D238:
	str r0, [r4, #0x30]
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	strh r0, [r4, #0xc]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211D288
	ldr r2, _0211D2EC ; =s_SS9_player4_NCLR_overlay_19_0211e5dc
	ldr r1, _0211D2F0 ; =s_SS9_player4_02_NCER_overlay_19_0211e5f0
	str r2, [sp]
	ldr ip, _0211D2F4 ; =s_SS9_player4_02_cac_overlay_19_0211e604
	str r1, [sp, #4]
	ldr r1, _0211D2F8 ; =s_SS9_overlay_19_0211e5c4
	ldr r2, _0211D2D0 ; =s_data_player_player4_LZ_bin_overlay_19_0211e504
	ldr r3, _0211D2FC ; =s_SS9_player4_02_NCBR_overlay_19_0211e5c8
	str ip, [sp, #8]
	bl sub_0201AAE0
_0211D288:
	str r0, [r4, #0x38]
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	strh r0, [r4, #0xe]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211D2A8: .word s_SS6_player3_NCLR_overlay_19_0211e4c4
_0211D2AC: .word s_SS6_player3_00_NCER_overlay_19_0211e4d8
_0211D2B0: .word s_SS6_player3_00_cac_overlay_19_0211e4ec
_0211D2B4: .word s_SS6_overlay_19_0211e490
_0211D2B8: .word s_data_player_player3_LZ_bin_overlay_19_0211e494
_0211D2BC: .word s_SS6_player3_00_NCBR_overlay_19_0211e4b0
_0211D2C0: .word s_SS7_player4_NCLR_overlay_19_0211e534
_0211D2C4: .word s_SS7_player4_00_NCER_overlay_19_0211e548
_0211D2C8: .word s_SS7_player4_00_cac_overlay_19_0211e55c
_0211D2CC: .word s_SS7_overlay_19_0211e500
_0211D2D0: .word s_data_player_player4_LZ_bin_overlay_19_0211e504
_0211D2D4: .word s_SS7_player4_00_NCBR_overlay_19_0211e520
_0211D2D8: .word s_SS8_player3_NCLR_overlay_19_0211e588
_0211D2DC: .word s_SS8_player3_02_NCER_overlay_19_0211e59c
_0211D2E0: .word s_SS8_player3_02_cac_overlay_19_0211e5b0
_0211D2E4: .word s_SS8_overlay_19_0211e570
_0211D2E8: .word s_SS8_player3_02_NCBR_overlay_19_0211e574
_0211D2EC: .word s_SS9_player4_NCLR_overlay_19_0211e5dc
_0211D2F0: .word s_SS9_player4_02_NCER_overlay_19_0211e5f0
_0211D2F4: .word s_SS9_player4_02_cac_overlay_19_0211e604
_0211D2F8: .word s_SS9_overlay_19_0211e5c4
_0211D2FC: .word s_SS9_player4_02_NCBR_overlay_19_0211e5c8

	arm_func_start ov19_0211D300
ov19_0211D300: ; 0x0211D300
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x44
	mov r4, #0
	bl _Znwm
	cmp r0, #0
	beq _0211D33C
	ldr r3, [r5, #0x1c]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x124
	mov r3, r4
	bl sub_0200ECD0
	arm_func_end ov19_0211D300
_0211D33C:
	str r0, [r5, #0x40]
	mov r0, #5
	str r0, [sp]
	ldr r0, [r5, #0x40]
	ldr r1, _0211D490 ; =s_data_menu_overlay_19_0211e618
	ldr r2, _0211D494 ; =s_mp005_00_overlay_19_0211e624
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	add r4, r4, r0
	ldr r0, [r5, #0x40]
	mov r2, #0x48
	mov r3, #0x4e
	bl sub_0200F4FC
	str r0, [r5, #0x58]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D3AC
	ldr r3, [r5, #0x1c]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x1a4
	mov r3, #0
	bl sub_0200ECD0
_0211D3AC:
	str r0, [r5, #0x48]
	mov r0, #7
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r5, #0x48]
	ldr r1, _0211D490 ; =s_data_menu_overlay_19_0211e618
	ldr r2, _0211D498 ; =s_mp006_00_overlay_19_0211e630
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	add r4, r4, r0
	ldr r0, [r5, #0x48]
	mov r2, #0xb8
	mov r3, #0x4e
	bl sub_0200F4FC
	str r0, [r5, #0x5c]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D424
	ldr r3, [r5, #0x1c]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x224
	mov r3, #0
	bl sub_0200ECD0
_0211D424:
	str r0, [r5, #0x3c]
	mov r0, #9
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r5, #0x3c]
	ldr r1, _0211D490 ; =s_data_menu_overlay_19_0211e618
	ldr r2, _0211D49C ; =s_mps000_00_overlay_19_0211e63c
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r0, #3
	str r0, [sp]
	mov r2, #0x48
	ldr r0, [r5, #0x3c]
	mov r3, r2
	mov r1, #0
	bl sub_0200F4FC
	str r0, [r5, #0x50]
	mov r0, #3
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	mov r1, #0
	mov r2, #0xb8
	mov r3, #0x48
	bl sub_0200F4FC
	str r0, [r5, #0x54]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211D490: .word s_data_menu_overlay_19_0211e618
_0211D494: .word s_mp005_00_overlay_19_0211e624
_0211D498: .word s_mp006_00_overlay_19_0211e630
_0211D49C: .word s_mps000_00_overlay_19_0211e63c

	arm_func_start ov19_0211D4A0
ov19_0211D4A0: ; 0x0211D4A0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D4DC
	ldr r3, [r4, #0x1c]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x124
	mov r3, #0
	bl sub_0200ECD0
	arm_func_end ov19_0211D4A0
_0211D4DC:
	str r0, [r4, #0x44]
	mov r0, #5
	str r0, [sp]
	ldr r0, [r4, #0x44]
	ldr r1, _0211D538 ; =s_data_menu_overlay_19_0211e618
	ldr r2, _0211D53C ; =s_mps001_00_overlay_19_0211e648
	mov r3, #0x100
	bl sub_0200EE14
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x44]
	mov r1, #8
	mov r2, #0x80
	mov r3, #0x70
	bl sub_0200F4FC
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x44]
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x44]
	bl sub_0200F64C
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211D538: .word s_data_menu_overlay_19_0211e618
_0211D53C: .word s_mps001_00_overlay_19_0211e648

	arm_func_start ov19_0211D540
ov19_0211D540: ; 0x0211D540
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D57C
	ldr r3, [r4, #0x1c]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x124
	mov r3, #0
	bl sub_0200ECD0
	arm_func_end ov19_0211D540
_0211D57C:
	str r0, [r4, #0x4c]
	mov r0, #5
	str r0, [sp]
	ldr r0, [r4, #0x4c]
	ldr r1, _0211D5D8 ; =s_data_menu_overlay_19_0211e618
	ldr r2, _0211D5DC ; =s_mps002_00_overlay_19_0211e654
	mov r3, #0x100
	bl sub_0200EE14
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x4c]
	mov r1, #8
	mov r2, #0x80
	mov r3, #0x70
	bl sub_0200F4FC
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x4c]
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x4c]
	bl sub_0200F64C
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211D5D8: .word s_data_menu_overlay_19_0211e618
_0211D5DC: .word s_mps002_00_overlay_19_0211e654

	arm_func_start ov19_0211D5E0
ov19_0211D5E0: ; 0x0211D5E0
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
	mov r0, #7
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r0, #0x30
	bl GX_SetBankForOBJ
	mov r0, #8
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #0
	mov r2, r0
	bl GX_SetGraphicsMode
	ldr r2, _0211D78C ; =0x04000008
	mov r0, #0x80
	ldrh r1, [r2]
	bic r1, r1, #3
	strh r1, [r2]
	ldrh r1, [r2, #2]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r2, #2]
	ldrh r1, [r2, #4]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r2, #4]
	ldrh r1, [r2, #6]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r2, #6]
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	ldr r1, _0211D790 ; =0x04001008
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
	ldr r0, _0211D794 ; =0x04000010
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	mov r2, r1
	mov r3, r1
	add r0, r0, #0x40
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	ldr lr, _0211D798 ; =0x04000060
	mov r2, #0x4000000
	ldrh r1, [lr]
	add ip, lr, #0x2a4
	ldr r0, _0211D79C ; =0xFFFFFDF1
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
	orr r0, r0, #0xb00
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x200
	str r0, [r1]
	bl GX_DispOn
	ldr r1, _0211D7A0 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211D78C: .word 0x04000008
_0211D790: .word 0x04001008
_0211D794: .word 0x04000010
_0211D798: .word 0x04000060
_0211D79C: .word 0xFFFFFDF1
_0211D7A0: .word 0x04001000
	arm_func_end ov19_0211D5E0

	arm_func_start ov19_0211D7A4
ov19_0211D7A4: ; 0x0211D7A4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r1, [r5, #4]
	mvn r4, #0
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0211D978
_0211D7C0: ; jump table
	b _0211D978 ; case 0
	b _0211D7E8 ; case 1
	b _0211D7F0 ; case 2
	b _0211D7F8 ; case 3
	b _0211D800 ; case 4
	b _0211D808 ; case 5
	b _0211D810 ; case 6
	b _0211D818 ; case 7
	b _0211D820 ; case 8
	b _0211D828 ; case 9
	arm_func_end ov19_0211D7A4
_0211D7E8:
	bl ov19_0211D9B0
	b _0211D978
_0211D7F0:
	bl ov19_0211DAE8
	b _0211D978
_0211D7F8:
	bl ov19_0211DC24
	b _0211D978
_0211D800:
	bl ov19_0211DD7C
	b _0211D978
_0211D808:
	bl ov19_0211DE04
	b _0211D978
_0211D810:
	bl ov19_0211DEF8
	b _0211D978
_0211D818:
	bl ov19_0211DF74
	b _0211D978
_0211D820:
	bl ov19_0211DFD8
	b _0211D978
_0211D828:
	ldr r0, [r5, #0x1c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211D978
	ldr r0, [r5, #0x1c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211D978
	ldr r0, [r5, #0x1c]
	bl sub_0200FAEC
	ldr r0, [r5, #0x1c]
	mov r2, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a4]
	mov r1, #0x10
	add r0, r0, #0x8000
	str r2, [r0, #0xb68]
	str r1, [r0, #0xb6c]
	ldr r0, [r5, #0x1c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E30
	ldr r0, [r5, #0x1c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02018E94
	ldr r0, [r5, #0x1c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	bl sub_020116C0
	ldrh r0, [r5, #6]
	ldr r1, _0211D9A4 ; =MAIN_BSS_020B26A0
	mov r3, #0
	cmp r0, #1
	bne _0211D920
	strb r3, [r1]
	mov r2, r3
_0211D8D4:
	add r0, r1, r3
	add r0, r0, #0x8000
	add r3, r3, #1
	strb r2, [r0, #0x7e3]
	cmp r3, #0x1e
	blt _0211D8D4
	ldr r3, _0211D9A8 ; =DAT_overlay_19_0211e3a8
	b _0211D908
_0211D8F4:
	add r0, r1, r2
	add r0, r0, #0x8000
	strb r4, [r0, #0x7e3]
	add r3, r3, #1
	add r2, r2, #1
_0211D908:
	cmp r2, #0x1e
	bge _0211D974
	ldrsb r4, [r3]
	cmp r4, #0
	bne _0211D8F4
	b _0211D974
_0211D920:
	mov r0, #1
	strb r0, [r1]
	mov r2, r3
_0211D92C:
	add r0, r1, r3
	add r0, r0, #0x8000
	add r3, r3, #1
	strb r2, [r0, #0x7e3]
	cmp r3, #0x1e
	blt _0211D92C
	ldr r3, _0211D9AC ; =DAT_overlay_19_0211e3ac
	b _0211D960
_0211D94C:
	add r0, r1, r2
	add r0, r0, #0x8000
	strb r4, [r0, #0x7e3]
	add r3, r3, #1
	add r2, r2, #1
_0211D960:
	cmp r2, #0x1e
	bge _0211D974
	ldrsb r4, [r3]
	cmp r4, #0
	bne _0211D94C
_0211D974:
	mov r4, #1
_0211D978:
	ldrh r0, [r5, #4]
	cmp r0, #4
	bhi _0211D99C
	ldr r0, [r5, #0x3c]
	bl sub_0200F64C
	ldr r0, [r5, #0x40]
	bl sub_0200F64C
	ldr r0, [r5, #0x48]
	bl sub_0200F64C
_0211D99C:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211D9A4: .word MAIN_BSS_020B26A0
_0211D9A8: .word DAT_overlay_19_0211e3a8
_0211D9AC: .word DAT_overlay_19_0211e3ac

	arm_func_start ov19_0211D9B0
ov19_0211D9B0: ; 0x0211D9B0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0x18]
	ldrh r2, [r0, #0xa]
	ldrh r1, [r0, #0xc]
	ldrb r0, [r0, #4]
	sub r2, r2, #0x80
	sub r1, r1, #0x60
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r3, r4, pc}
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x70]
	sub ip, sp, #8
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	add r0, sp, #0xc
	ldmia ip, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _0211DA68
	ldr r0, [r4, #0x50]
	mov ip, #1
	str ip, [r0, #0x14]
	ldr r0, [r4, #0x54]
	mov r3, #0
	str r3, [r0, #0x14]
	ldr r1, [r4, #0x58]
	mov r0, #2
	str ip, [r1, #0x14]
	ldr r2, [r4, #0x5c]
	mov r1, #0xfa
	str r3, [r2, #0x14]
	strh ip, [r4, #6]
	strh r0, [r4, #4]
	ldr r0, [r4, #0x18]
	bl sub_02034C44
	arm_func_end ov19_0211D9B0
_0211DA68:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x78]
	sub ip, sp, #8
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	add r0, sp, #0xc
	ldmia ip, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [r4, #0x50]
	mov r2, #0
	str r2, [r0, #0x14]
	ldr r0, [r4, #0x54]
	mov r3, #1
	str r3, [r0, #0x14]
	ldr r1, [r4, #0x58]
	mov r0, #2
	str r2, [r1, #0x14]
	ldr r2, [r4, #0x5c]
	mov r1, #0xfa
	str r3, [r2, #0x14]
	strh r0, [r4, #6]
	strh r0, [r4, #4]
	ldr r0, [r4, #0x18]
	bl sub_02034C44
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov19_0211DAE8
ov19_0211DAE8: ; 0x0211DAE8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrh r0, [r6, #6]
	mov r4, #0
	mov r3, r4
	cmp r0, #1
	mov ip, r4
	mov r5, r4
	ldreq ip, _0211DC1C ; =0x00003BBB
	moveq r4, #2
	moveq r3, #0x48
	cmp r0, #2
	bne _0211DB2C
	ldr ip, _0211DC20 ; =0xFFFFC445
	mov r4, #3
	mov r5, #1
	mov r3, #0xb8
	arm_func_end ov19_0211DAE8
_0211DB2C:
	ldrh r1, [r6, #8]
	add r0, r6, r4, lsl #2
	ldr r0, [r0, #0x50]
	mov r1, r1, lsl #0xc
	smull r2, r1, ip, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mov r1, r2, lsl #4
	add r1, r3, r1, lsr #16
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	mov r1, r7
	mov r2, #0x4e
	bl sub_0200EB28
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x50]
	mov r1, r7
	mov r2, #0x48
	bl sub_0200EB28
	ldrh r0, [r6, #8]
	cmp r0, #0xf
	addlo r0, r0, #1
	strloh r0, [r6, #8]
	ldrh r0, [r6, #8]
	cmp r0, #0xf
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, r4, lsl #2
	ldr r0, [r0, #0x50]
	mov r1, #0x80
	mov r2, #0x4e
	bl sub_0200EB28
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x50]
	mov r1, #0x80
	mov r2, #0x48
	bl sub_0200EB28
	ldr r0, [r6, #0x1c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	ldr r0, [r6, #0x1c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	mov r1, r4
	mov r3, #0
	str r3, [sp]
	ldr r0, [r6, #0x1c]
	mov r2, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AD34
	mov r0, #0
	strh r0, [r6, #8]
	mov r0, #4
	strh r0, [r6, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211DC1C: .word 0x00003BBB
_0211DC20: .word 0xFFFFC445

	arm_func_start ov19_0211DC24
ov19_0211DC24: ; 0x0211DC24
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldrh r0, [r7, #6]
	mov r5, #0
	mov r4, r5
	cmp r0, #1
	mov r3, r5
	mov r6, r5
	ldreq r3, _0211DD74 ; =0x00003BBB
	moveq r5, #2
	moveq r4, #0x48
	cmp r0, #2
	bne _0211DC6C
	ldr r3, _0211DD78 ; =0xFFFFC445
	mov r5, #3
	mov r6, #1
	mov r4, #0xb8
	arm_func_end ov19_0211DC24
_0211DC6C:
	ldrh r1, [r7, #8]
	add r0, r7, r5, lsl #2
	ldr r0, [r0, #0x50]
	mov r1, r1, lsl #0xc
	smull r2, r1, r3, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mov r1, r2, asr #0xc
	rsb r1, r1, #0x80
	mov r1, r1, lsl #0x10
	mov r8, r1, lsr #0x10
	mov r1, r8
	mov r2, #0x4e
	bl sub_0200EB28
	add r0, r7, r6, lsl #2
	ldr r0, [r0, #0x50]
	mov r1, r8
	mov r2, #0x48
	bl sub_0200EB28
	ldrh r0, [r7, #8]
	cmp r0, #0xf
	addlo r0, r0, #1
	strloh r0, [r7, #8]
	ldrh r0, [r7, #8]
	cmp r0, #0xf
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r7, r5, lsl #2
	ldr r0, [r0, #0x50]
	mov r1, r4
	mov r2, #0x4e
	bl sub_0200EB28
	add r0, r7, r6, lsl #2
	ldr r0, [r0, #0x50]
	mov r1, r4
	mov r2, #0x48
	bl sub_0200EB28
	ldr r0, [r7, #0x50]
	mov r2, #1
	str r2, [r0, #0x14]
	ldr r0, [r7, #0x54]
	mov r1, #0
	str r2, [r0, #0x14]
	ldr r0, [r7, #0x58]
	str r2, [r0, #0x14]
	ldr r0, [r7, #0x5c]
	str r2, [r0, #0x14]
	ldr r0, [r7, #0x1c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	mov r1, #1
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7, #0x1c]
	mov r2, r1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r3, r1
	bl sub_0200AD34
	mov r0, #0
	strh r0, [r7, #8]
	mov r0, #1
	strh r0, [r7, #4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211DD74: .word 0x00003BBB
_0211DD78: .word 0xFFFFC445

	arm_func_start ov19_0211DD7C
ov19_0211DD7C: ; 0x0211DD7C
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r6, [r0, #0x490]
	mov r0, r6
	bl sub_0200B6A4
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl sub_0200B6D4
	movs r5, r0
	bne _0211DDE0
	ldr r0, [r4, #0x50]
	mov ip, #0
	str ip, [r0, #0x14]
	ldr r3, [r4, #0x54]
	mov r1, #1
	mov r0, r6
	mov r2, r1
	str ip, [r3, #0x14]
	bl sub_02009FB0
	mov r0, #5
	strh r0, [r4, #4]
	arm_func_end ov19_0211DD7C
_0211DDE0:
	cmp r5, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, #1
	mov r0, r6
	mov r2, r1
	bl sub_02009FB0
	mov r0, #3
	strh r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov19_0211DE04
ov19_0211DE04: ; 0x0211DE04
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrh r0, [r4, #8]
	mov r2, #0x3c000
	mov r3, #0
	mov ip, r0, lsl #0xc
	mov r0, ip, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	bl _ll_div
	mov r1, #0x1f000
	umull r3, r2, r0, r1
	mov r0, r0, asr #0x1f
	mla r2, r0, r1, r2
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #20
	mov r0, r0, asr #0xc
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #8]
	mov r3, #0
	cmp r0, #0x3c
	bhs _0211DE94
	cmp r0, #0
	bne _0211DE80
	ldr r0, _0211DEF4 ; =0x04000050
	mov r1, #1
	mov r2, #8
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	arm_func_end ov19_0211DE04
_0211DE80:
	ldrh r0, [r4, #8]
	add sp, sp, #4
	add r0, r0, #1
	strh r0, [r4, #8]
	ldmia sp!, {r3, r4, pc}
_0211DE94:
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	strh r3, [r4, #8]
	ldr r0, [r4, #0x58]
	mov r1, #6
	str r3, [r0, #0x14]
	ldr r2, [r4, #0x5c]
	mov r0, r4
	str r3, [r2, #0x14]
	strh r1, [r4, #4]
	bl ov19_0211CD54
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0211DED4
	mov r0, r4
	bl ov19_0211D4A0
_0211DED4:
	ldrh r0, [r4, #6]
	cmp r0, #2
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	mov r0, r4
	bl ov19_0211D540
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211DEF4: .word 0x04000050

	arm_func_start ov19_0211DEF8
ov19_0211DEF8: ; 0x0211DEF8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r2, [r5, #6]
	mov r4, #0
	mov r1, r4
	cmp r2, #1
	bne _0211DF24
	ldr r0, [r5, #0x10]
	mov r4, #2
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	arm_func_end ov19_0211DEF8
_0211DF24:
	cmp r2, #2
	bne _0211DF3C
	ldr r0, [r5, #0x14]
	mov r4, #4
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
_0211DF3C:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x3c]
	mov r1, r1, lsl #1
	ldr r2, [r0, #8]
	ldr r0, [r0, #0x38]
	ldrh r1, [r2, r1]
	bl sub_02008860
	cmp r0, #0
	moveq r0, #7
	streqh r0, [r5, #4]
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x3c]
	bl sub_0200F64C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov19_0211DF74
ov19_0211DF74: ; 0x0211DF74
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #0x3c
	ldmneia sp!, {r4, pc}
	mov r0, #0
	strh r0, [r4, #8]
	mov r0, #8
	strh r0, [r4, #4]
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0211DFBC
	ldr r0, [r4, #0x18]
	mov r1, #0xb3
	bl sub_02034C44
	arm_func_end ov19_0211DF74
_0211DFBC:
	ldrh r0, [r4, #6]
	cmp r0, #2
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x18]
	mov r1, #0xb4
	bl sub_02034C44
	ldmia sp!, {r4, pc}

	arm_func_start ov19_0211DFD8
ov19_0211DFD8: ; 0x0211DFD8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrh r2, [r4, #6]
	mov r0, #0
	mov r1, r0
	cmp r2, #1
	moveq r0, #1
	ldreqh r1, [r4, #0xc]
	cmp r2, #2
	moveq r0, #3
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x2c]
	ldreqh r1, [r4, #0xe]
	ldr r5, [r0, #0xc]
	mov r0, r5
	bl sub_02008860
	cmp r0, #0
	bne _0211E058
	mov r0, #9
	strh r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x3c
	bl sub_0200E0E0
	ldr r0, [r4, #0x1c]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x3c
	bl sub_0200E0E0
	arm_func_end ov19_0211DFD8
_0211E058:
	mov r0, r5
	bl sub_020089EC
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov19_0211E064
ov19_0211E064: ; 0x0211E064
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_020037B4
	ldr r0, [r4, #0x20]
	bl sub_0200381C
	ldr r0, _0211E138 ; =0x0400044C
	mov r1, #0
	str r1, [r0]
	ldrh r0, [r4, #4]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0211E104
_0211E0A0: ; jump table
	b _0211E104 ; case 0
	b _0211E0C8 ; case 1
	b _0211E0C8 ; case 2
	b _0211E0C8 ; case 3
	b _0211E0C8 ; case 4
	b _0211E0C8 ; case 5
	b _0211E0E4 ; case 6
	b _0211E0F0 ; case 7
	b _0211E0FC ; case 8
	b _0211E0FC ; case 9
	arm_func_end ov19_0211E064
_0211E0C8:
	ldr r0, [r4, #0x3c]
	bl sub_0200F71C
	ldr r0, [r4, #0x40]
	bl sub_0200F71C
	ldr r0, [r4, #0x48]
	bl sub_0200F71C
	b _0211E104
_0211E0E4:
	mov r0, r4
	bl ov19_0211E16C
	b _0211E104
_0211E0F0:
	mov r0, r4
	bl ov19_0211E1A0
	b _0211E104
_0211E0FC:
	mov r0, r4
	bl ov19_0211E1D0
_0211E104:
	mov r0, r4
	bl ov19_0211E140
	ldr r0, _0211E13C ; =0x04000454
	mov r1, #0
	str r1, [r0]
	ldr r0, [r4, #0x20]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldr r0, [r4, #0x20]
	bl sub_020037B4
	ldr r0, [r4, #0x20]
	bl sub_0200381C
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211E138: .word 0x0400044C
_0211E13C: .word 0x04000454

	arm_func_start ov19_0211E140
ov19_0211E140: ; 0x0211E140
	stmdb sp!, {r3, lr}
	mov r2, r0
	ldrh r1, [r2, #0xa]
	ldr r0, [r2, #0x6c]
	str r1, [r0, #0x14]
	ldr r0, [r2, #0x6c]
	ldr r1, [r2, #0x20]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end ov19_0211E140

	arm_func_start ov19_0211E16C
ov19_0211E16C: ; 0x0211E16C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0211E188
	ldr r0, [r4, #0x44]
	bl sub_0200F71C
	arm_func_end ov19_0211E16C
_0211E188:
	ldrh r0, [r4, #6]
	cmp r0, #2
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x4c]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start ov19_0211E1A0
ov19_0211E1A0: ; 0x0211E1A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #6]
	cmp r1, #1
	bne _0211E1B8
	bl ov19_0211E270
	arm_func_end ov19_0211E1A0
_0211E1B8:
	ldrh r0, [r4, #6]
	cmp r0, #2
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov19_0211E200
	ldmia sp!, {r4, pc}

	arm_func_start ov19_0211E1D0
ov19_0211E1D0: ; 0x0211E1D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #6]
	cmp r1, #1
	bne _0211E1E8
	bl ov19_0211E270
	arm_func_end ov19_0211E1D0
_0211E1E8:
	ldrh r0, [r4, #6]
	cmp r0, #2
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov19_0211E308
	ldmia sp!, {r4, pc}

	arm_func_start ov19_0211E200
ov19_0211E200: ; 0x0211E200
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1, #0x34]
	ldr r2, [r1, #0x68]
	ldr r0, [r0]
	mov ip, #0
	str r0, [r2, #0x2c]
	str ip, [r2, #0x30]
	ldr r0, [r1, #0x34]
	ldr r2, [r1, #0x68]
	ldr r3, [r0, #4]
	mov r0, #0x10000
	str r3, [r2, #0x34]
	ldr r3, [r1, #0x34]
	ldr r2, [r1, #0x68]
	ldr r3, [r3, #8]
	str r3, [r2, #0x38]
	ldr r2, [r1, #0x68]
	strh ip, [r2, #0x2a]
	ldr r2, [r1, #0x68]
	str ip, [r2, #0x18]
	str r0, [r2, #0x1c]
	ldr r0, [r1, #0x68]
	ldr r1, [r1, #0x20]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end ov19_0211E200

	arm_func_start ov19_0211E270
ov19_0211E270: ; 0x0211E270
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x68]
	ldr r1, [r0]
	mov r0, #0
	str r1, [r2, #0x2c]
	str r0, [r2, #0x30]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x68]
	ldr r1, [r1, #4]
	str r1, [r0, #0x34]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x68]
	ldr r1, [r1, #8]
	str r1, [r0, #0x38]
	ldr r0, [r4, #0x30]
	ldrh r1, [r4, #0xc]
	ldr r5, [r0, #0xc]
	mov r0, r5
	bl sub_02008828
	ldr r1, [r4, #0x68]
	strh r0, [r1, #0x2a]
	ldrh r1, [r4, #0xc]
	mov r0, r5
	bl sub_02008844
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x68]
	ldr r0, [r0]
	add r2, r2, #0x10000
	str r0, [r1, #0x18]
	str r2, [r1, #0x1c]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x20]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov19_0211E270

	arm_func_start ov19_0211E308
ov19_0211E308: ; 0x0211E308
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x38]
	ldr r2, [r4, #0x68]
	ldr r1, [r0]
	mov r0, #0
	str r1, [r2, #0x2c]
	str r0, [r2, #0x30]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x68]
	ldr r1, [r1, #4]
	str r1, [r0, #0x34]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x68]
	ldr r1, [r1, #8]
	str r1, [r0, #0x38]
	ldr r0, [r4, #0x38]
	ldrh r1, [r4, #0xe]
	ldr r5, [r0, #0xc]
	mov r0, r5
	bl sub_02008828
	ldr r1, [r4, #0x68]
	strh r0, [r1, #0x2a]
	ldrh r1, [r4, #0xe]
	mov r0, r5
	bl sub_02008844
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x68]
	ldr r0, [r0]
	add r2, r2, #0x10000
	str r0, [r1, #0x18]
	str r2, [r1, #0x1c]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x20]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov19_0211E308

    arm_func_start ov19_0211E1E8
ov19_0211E1E8:
    mov r0, #0x13
    bx lr
	arm_func_end ov19_0211E1E8
	; 0x0211E3A8

    .rodata
DAT_overlay_19_0211e3a8: ; 0x0211E3A8
    .byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_19_0211e3ac: ; 0x0211E3AC
    .byte 0x00, 0x00, 0x00, 0x00

    .section .sinit,4 ; 0x0211E3B0

    .data
PTR_ptr_FUN_020835bc_overlay_19_0211e3c0: ; 0x0211E3C0
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_15CSexSelectScene_overlay_19_0211e3cc
	.word PTR_ptr_FUN_02083578_0208a804
s_15CSexSelectScene_overlay_19_0211e3cc: ; 0x0211E3CC
	.asciz "15CSexSelectScene"
_0211E3DE:
	.byte 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_19_0211e3c0
ptr_FUN_overlay_19_0211ca58_overlay_19_0211e3e8: ; 0x0211E3E8
	.word ov19_0211CA58
ptr_FUN_overlay_19_0211ca98_overlay_19_0211e3ec: ; 0x0211E3EC
	.word ov19_0211CA98
	.word ov19_0211D7A4
ptr_FUN_overlay_19_0211e064_overlay_19_0211e3f4: ; 0x0211E3F4
	.word ov19_0211E064
ptr_thunk_FUN_02001210_overlay_19_0211e3f8: ; 0x0211E3F8
	.word sub_02007CD4
ptr_FUN_02007ce0_overlay_19_0211e3fc: ; 0x0211E3FC
	.word sub_02007CE0
ptr_FUN_02007cc4_overlay_19_0211e400: ; 0x0211E400
	.word sub_02007CC4
ptr_FUN_overlay_19_0211d5e0_overlay_19_0211e404: ; 0x0211E404
	.word ov19_0211D5E0
ptr_FUN_overlay_19_0211cae0_overlay_19_0211e408: ; 0x0211E408
	.word ov19_0211CAE0
ptr_FUN_overlay_19_0211cbcc_overlay_19_0211e40c: ; 0x0211E40C
	.word ov19_0211CBCC
ptr_FUN_overlay_19_0211e3a0_overlay_19_0211e410: ; 0x0211E410
	.word 0x0211E3A0
s_menu_overlay_19_0211e414: ; 0x0211E414
	.asciz "menu/"
_0211E41A:
	.byte 0x00, 0x00
s_mnd000_bg_overlay_19_0211e41c: ; 0x0211E41C
	.asciz "mnd000_bg_"
_0211E427:
	.byte 0x00
s_mnd000_overlay_19_0211e428: ; 0x0211E428
	.asciz "mnd000"
_0211E42F:
	.byte 0x00
s_mnd000_00_overlay_19_0211e430: ; 0x0211E430
	.asciz "mnd000_00"
_0211E43A:
	.byte 0x00, 0x00
s_BGD_overlay_19_0211e43c: ; 0x0211E43C
	.asciz "BGD"
s_data_menu_mps000_bg_LZ_bin_overlay_19_0211e440: ; 0x0211E440
	.asciz "data/menu/mps000_bg_LZ.bin"
_0211E45B:
	.byte 0x00
s_BGD_mps000_NCGR_overlay_19_0211e45c: ; 0x0211E45C
	.asciz "BGD:mps000.NCGR"
s_BGD_mps000_NCLR_overlay_19_0211e46c: ; 0x0211E46C
	.asciz "BGD:mps000.NCLR"
s_BGD_mps000_00_NSCR_overlay_19_0211e47c: ; 0x0211E47C
	.asciz "BGD:mps000_00.NSCR"
_0211E48F:
	.byte 0x00
s_SS6_overlay_19_0211e490: ; 0x0211E490
	.asciz "SS6"
s_data_player_player3_LZ_bin_overlay_19_0211e494: ; 0x0211E494
	.asciz "/data/player/player3_LZ.bin"
s_SS6_player3_00_NCBR_overlay_19_0211e4b0: ; 0x0211E4B0
	.asciz "SS6:player3_00.NCBR"
s_SS6_player3_NCLR_overlay_19_0211e4c4: ; 0x0211E4C4
	.asciz "SS6:player3.NCLR"
_0211E4D5:
	.byte 0x00, 0x00, 0x00
s_SS6_player3_00_NCER_overlay_19_0211e4d8: ; 0x0211E4D8
	.asciz "SS6:player3_00.NCER"
s_SS6_player3_00_cac_overlay_19_0211e4ec: ; 0x0211E4EC
	.asciz "SS6:player3_00.cac"
_0211E4FF:
	.byte 0x00
s_SS7_overlay_19_0211e500: ; 0x0211E500
	.asciz "SS7"
s_data_player_player4_LZ_bin_overlay_19_0211e504: ; 0x0211E504
	.asciz "/data/player/player4_LZ.bin"
s_SS7_player4_00_NCBR_overlay_19_0211e520: ; 0x0211E520
	.asciz "SS7:player4_00.NCBR"
s_SS7_player4_NCLR_overlay_19_0211e534: ; 0x0211E534
	.asciz "SS7:player4.NCLR"
_0211E545:
	.byte 0x00, 0x00, 0x00
s_SS7_player4_00_NCER_overlay_19_0211e548: ; 0x0211E548
	.asciz "SS7:player4_00.NCER"
s_SS7_player4_00_cac_overlay_19_0211e55c: ; 0x0211E55C
	.asciz "SS7:player4_00.cac"
_0211E56F:
	.byte 0x00
s_SS8_overlay_19_0211e570: ; 0x0211E570
	.asciz "SS8"
s_SS8_player3_02_NCBR_overlay_19_0211e574: ; 0x0211E574
	.asciz "SS8:player3_02.NCBR"
s_SS8_player3_NCLR_overlay_19_0211e588: ; 0x0211E588
	.asciz "SS8:player3.NCLR"
_0211E599:
	.byte 0x00, 0x00, 0x00
s_SS8_player3_02_NCER_overlay_19_0211e59c: ; 0x0211E59C
	.asciz "SS8:player3_02.NCER"
s_SS8_player3_02_cac_overlay_19_0211e5b0: ; 0x0211E5B0
	.asciz "SS8:player3_02.cac"
_0211E5C3:
	.byte 0x00
s_SS9_overlay_19_0211e5c4: ; 0x0211E5C4
	.asciz "SS9"
s_SS9_player4_02_NCBR_overlay_19_0211e5c8: ; 0x0211E5C8
	.asciz "SS9:player4_02.NCBR"
s_SS9_player4_NCLR_overlay_19_0211e5dc: ; 0x0211E5DC
	.asciz "SS9:player4.NCLR"
_0211E5ED:
	.byte 0x00, 0x00, 0x00
s_SS9_player4_02_NCER_overlay_19_0211e5f0: ; 0x0211E5F0
	.asciz "SS9:player4_02.NCER"
s_SS9_player4_02_cac_overlay_19_0211e604: ; 0x0211E604
	.asciz "SS9:player4_02.cac"
_0211E617:
	.byte 0x00
s_data_menu_overlay_19_0211e618: ; 0x0211E618
	.asciz "data/menu"
_0211E622:
	.byte 0x00, 0x00
s_mp005_00_overlay_19_0211e624: ; 0x0211E624
	.asciz "mp005_00"
_0211E62D:
	.byte 0x00, 0x00, 0x00
s_mp006_00_overlay_19_0211e630: ; 0x0211E630
	.asciz "mp006_00"
_0211E639:
	.byte 0x00, 0x00, 0x00
s_mps000_00_overlay_19_0211e63c: ; 0x0211E63C
	.asciz "mps000_00"
_0211E646:
	.byte 0x00, 0x00
s_mps001_00_overlay_19_0211e648: ; 0x0211E648
	.asciz "mps001_00"
_0211E652:
	.byte 0x00, 0x00
s_mps002_00_overlay_19_0211e654: ; 0x0211E654
	.asciz "mps002_00"
	; 0x0211E65E
