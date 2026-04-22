    .include "macros.inc"
    .include "include/overlay_08.inc"

    .text

	arm_func_start _ZN18CMissionQuestSceneC1EP5CGame
_ZN18CMissionQuestSceneC1EP5CGame: ; 0x0211C9E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl _ZN6CSceneC2Ev
	ldr r1, _0211CA08 ; =ptr_FUN_overlay_11_0211ca0c_overlay_8_0211e40c
	mov r0, r5
	stmia r5, {r1, r4}
	bl ov8_0211CAD4
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA08: .word ptr_FUN_overlay_11_0211ca0c_overlay_8_0211e40c
	arm_func_end _ZN18CMissionQuestSceneC1EP5CGame

	arm_func_start ov8_0211CA0C
ov8_0211CA0C: ; 0x0211CA0C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0211CA64 ; =ptr_FUN_overlay_11_0211ca0c_overlay_8_0211e40c
	mov r5, r0
	ldr r1, _0211CA68 ; =0x04000304
	str r2, [r5]
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211CA54
	beq _0211CA4C
	mov r0, r4
	bl ov8_0211CD18
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov8_0211CA0C
_0211CA4C:
	mov r0, #0
	str r0, [r5, #8]
_0211CA54:
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA64: .word ptr_FUN_overlay_11_0211ca0c_overlay_8_0211e40c
_0211CA68: .word 0x04000304

	arm_func_start ov8_0211CA6C
ov8_0211CA6C: ; 0x0211CA6C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0211CACC ; =ptr_FUN_overlay_11_0211ca0c_overlay_8_0211e40c
	mov r5, r0
	ldr r1, _0211CAD0 ; =0x04000304
	str r2, [r5]
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211CAB4
	beq _0211CAAC
	mov r0, r4
	bl ov8_0211CD18
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov8_0211CA6C
_0211CAAC:
	mov r0, #0
	str r0, [r5, #8]
_0211CAB4:
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	bl _ZdlPv
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CACC: .word ptr_FUN_overlay_11_0211ca0c_overlay_8_0211e40c
_0211CAD0: .word 0x04000304

	arm_func_start ov8_0211CAD4
ov8_0211CAD4: ; 0x0211CAD4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211CAF4
	ldr r1, [r4, #4]
	bl ov8_0211CD00
	arm_func_end ov8_0211CAD4
_0211CAF4:
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}

	arm_func_start ov8_0211CAFC
ov8_0211CAFC: ; 0x0211CAFC
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
	mov r0, #8
	bl GX_SetBankForSubOBJ
	mov r1, #0
	str r1, [sp]
	ldr r0, _0211CC2C ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr ip, _0211CC30 ; =0x04000060
	ldr r0, _0211CC34 ; =0xFFFFFDF1
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
	ldrh r0, [r3]
	orr r0, r0, #0x8000
	strh r0, [r3]
	ldr r0, [r2]
	bic r0, r0, #0x38000000
	str r0, [r2]
	ldr r0, [r2]
	bic r0, r0, #0x7000000
	str r0, [r2]
	ldr r0, [r2]
	add r1, r2, #0x1000
	bic r0, r0, #0x1f00
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	str r0, [r1]
	bl GX_DispOn
	ldr r1, _0211CC38 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CC2C: .word 0x04000050
_0211CC30: .word 0x04000060
_0211CC34: .word 0xFFFFFDF1
_0211CC38: .word 0x04001000
	arm_func_end ov8_0211CAFC

	arm_func_start ov8_0211CC3C
ov8_0211CC3C: ; 0x0211CC3C
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
	bl ov8_0211D310
	ldr r0, [r4, #8]
	bl ov8_0211D688
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211CC3C

	arm_func_start ov8_0211CC74
ov8_0211CC74: ; 0x0211CC74
	ldr ip, _0211CC8C ; =FUN_020101F4
	ldr r0, [r0, #4]
	mov r1, #0x80000
	mov r2, #0
	mov r3, #0x4000
	bx ip
	.align 2, 0
_0211CC8C: .word sub_020101F4
	arm_func_end ov8_0211CC74

	arm_func_start ov8_0211CC90
ov8_0211CC90: ; 0x0211CC90
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211CCC0
	bl ov8_0211CD8C
	ldr r0, [r4, #8]
	bl ov8_0211D758
	mvn r1, #0
	cmp r0, r1
	movne r0, #6
	ldmneia sp!, {r4, pc}
	arm_func_end ov8_0211CC90
_0211CCC0:
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov8_0211CCC8
ov8_0211CCC8: ; 0x0211CCC8
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov8_0211CE08
	ldmia sp!, {r3, pc}
	arm_func_end ov8_0211CCC8

	arm_func_start ov8_0211CCE0
ov8_0211CCE0: ; 0x0211CCE0
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov8_0211CE78
	ldmia sp!, {r3, pc}
	arm_func_end ov8_0211CCE0

	arm_func_start ov8_0211CCF8
ov8_0211CCF8: ; 0x0211CCF8
	mov r0, #0xa
	bx lr
	arm_func_end ov8_0211CCF8

	arm_func_start ov8_0211CD00
ov8_0211CD00: ; 0x0211CD00
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x40]
	bl ov8_0211CD2C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211CD00

	arm_func_start ov8_0211CD18
ov8_0211CD18: ; 0x0211CD18
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov8_0211CECC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211CD18

	arm_func_start ov8_0211CD2C
ov8_0211CD2C: ; 0x0211CD2C
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r4, r0
	strh r2, [r4]
	str r2, [r4, #0x18]
	str r2, [r4, #0x1c]
	str r2, [r4, #0x10]
	str r2, [r4, #0x14]
	str r2, [r4, #0xc]
	mov r1, r2
	arm_func_end ov8_0211CD2C
_0211CD54:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x24]
	cmp r2, #6
	blt _0211CD54
	mov r0, #0x68
	str r1, [r4, #4]
	bl _Znwm
	cmp r0, #0
	beq _0211CD84
	ldr r1, [r4, #0x40]
	bl sub_0202A510
_0211CD84:
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}

	arm_func_start ov8_0211CD8C
ov8_0211CD8C: ; 0x0211CD8C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0211CDA4
	bl sub_0200F64C
	arm_func_end ov8_0211CD8C
_0211CDA4:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0211CDB4
	bl sub_0200F64C
_0211CDB4:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0211CDC4
	bl ov8_0211D818
_0211CDC4:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211CDD4
	bl sub_0202A5A8
_0211CDD4:
	ldrh r0, [r4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0211CDE4: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _0211CDFC ; case 1
	ldmia sp!, {r4, pc} ; case 2
	ldmia sp!, {r4, pc} ; case 3
	ldmia sp!, {r4, pc} ; case 4
	ldmia sp!, {r4, pc} ; case 5
_0211CDFC:
	mov r0, r4
	bl ov8_0211D358
	ldmia sp!, {r4, pc}

	arm_func_start ov8_0211CE08
ov8_0211CE08: ; 0x0211CE08
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0211CE20
	bl thunk_FUN_overlay_8__0211d9e8
	arm_func_end ov8_0211CE08
_0211CE20:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211CE30
	bl sub_0202A5EC
_0211CE30:
	ldrh r0, [r4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0211CE40: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _0211CE6C ; case 1
	b _0211CE58 ; case 2
	b _0211CE6C ; case 3
	ldmia sp!, {r4, pc} ; case 4
	b _0211CE6C ; case 5
_0211CE58:
	mov r0, r4
	bl ov8_0211D710
	cmp r0, #0
	moveq r0, #4
	streqh r0, [r4]
_0211CE6C:
	mov r0, r4
	bl ov8_0211CFC4
	ldmia sp!, {r4, pc}

	arm_func_start ov8_0211CE78
ov8_0211CE78: ; 0x0211CE78
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0211CE90
	bl thunk_FUN_overlay_8__0211e170
	arm_func_end ov8_0211CE78
_0211CE90:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211CEA0
	bl sub_0202A5F8
_0211CEA0:
	mov r0, r4
	bl ov8_0211D488
	ldmia sp!, {r4, pc}

	arm_func_start ov8_0211CEAC
ov8_0211CEAC: ; 0x0211CEAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov8_0211D55C
	ldr r0, [r4, #0x40]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB90
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211CEAC

	arm_func_start ov8_0211CECC
ov8_0211CECC: ; 0x0211CECC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	mov r1, #0x1e
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	ldr r0, [r4, #0x40]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _0211CF20
	beq _0211CF18
	mov r0, r5
	bl ov8_0211D7B4
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov8_0211CECC
_0211CF18:
	mov r0, #0
	str r0, [r4, #0xc]
_0211CF20:
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0211CF48
	beq _0211CF40
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl _ZdlPv
_0211CF40:
	mov r0, #0
	str r0, [r4, #0x14]
_0211CF48:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _0211CF70
	beq _0211CF68
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211CF68:
	mov r0, #0
	str r0, [r4, #0x18]
_0211CF70:
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	beq _0211CF98
	beq _0211CF90
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211CF90:
	mov r0, #0
	str r0, [r4, #0x1c]
_0211CF98:
	ldr r5, [r4, #8]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0211CFB8
	mov r0, r5
	bl sub_0202A528
	mov r0, r5
	bl _ZdlPv
_0211CFB8:
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov8_0211CFC4
ov8_0211CFC4: ; 0x0211CFC4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0211CFDC
	bl sub_0200F71C
	arm_func_end ov8_0211CFC4
_0211CFDC:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start ov8_0211CFF0
ov8_0211CFF0: ; 0x0211CFF0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x20
	ldr r1, _0211D2F4 ; =0x04001000
	ldr r2, _0211D2F8 ; =0xFFCFFFEF
	ldr r4, [r1]
	mov r3, #0
	bic r4, r4, #0x1f00
	orr r4, r4, #0x1500
	str r4, [r1]
	ldr ip, [r1]
	mov r4, r0
	and r0, ip, r2
	orr r0, r0, #0x10
	str r0, [r1]
	str r3, [r1, #0x10]
	str r3, [r1, #0x14]
	str r3, [r1, #0x18]
	str r3, [r1, #0x1c]
	ldrh r0, [r1, #0xc]
	and r0, r0, #0x43
	orr r0, r0, #0x990
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #8]
	bic r0, r0, #3
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xc]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #0xc]
	ldr r0, [r4, #0x40]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020345D4
	mov r2, #0
	mov r1, #2
	str r1, [sp, #0x18]
	add r0, sp, #0x18
	str r2, [sp, #0x1c]
	strb r2, [sp, #0x14]
	stmia sp, {r0, r2}
	ldr r0, [r4, #8]
	add r2, sp, #0x14
	add r3, sp, #0x1c
	mov r1, #6
	bl sub_0202A724
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D0F0
	ldr r2, [r4, #0x40]
	mov r1, #0x40
	str r1, [sp]
	ldrb r3, [sp, #0x14]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add r1, r1, #0x400
	ldr r2, [r2, #0x4a8]
	add r1, r1, r3, lsl #3
	mov r3, #1
	bl sub_0200ECD0
	arm_func_end ov8_0211CFF0
_0211D0F0:
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	ldr r0, [r4, #0x1c]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0211D2FC ; =s_data_menu_overlay_8_0211e438
	ldr r2, _0211D300 ; =s_ma005_00_overlay_8_0211e444
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [sp, #0x1c]
	mov r1, #0
	add r0, r2, r0
	str r0, [sp, #0x1c]
	str r1, [sp]
	ldr r0, [r4, #0x1c]
	mov r2, #0xf0
	mov r3, #0x10
	bl sub_0200F4FC
	mov r1, #0x20
	str r0, [r4, #0x30]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x30]
	mov r2, r1
	bl sub_0200EBF4
	ldr r0, [r4, #0x1c]
	ldrb r2, [sp, #0x14]
	ldr r1, [r0, #0x30]
	mov r0, #0x44
	add r1, r2, r1
	strb r1, [sp, #0x14]
	bl _Znwm
	cmp r0, #0
	beq _0211D1AC
	ldr r2, [r4, #0x40]
	mov r1, #0x40
	str r1, [sp]
	ldrb r3, [sp, #0x14]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add r1, r1, #0x400
	ldr r2, [r2, #0x4a8]
	add r1, r1, r3, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0211D1AC:
	str r0, [r4, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	ldr r0, [r4, #0x18]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0211D2FC ; =s_data_menu_overlay_8_0211e438
	ldr r2, _0211D304 ; =s_mam000_00_overlay_8_0211e450
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r1, #0
	ldr r3, [sp, #0x1c]
	mov r2, #1
	add r0, r3, r0
	str r0, [sp, #0x1c]
	str r2, [sp]
	ldr r0, [r4, #0x18]
	mov r2, r1
	mov r3, r1
	bl sub_0200F4FC
	mov r1, #0x18
	str r0, [r4, #0x24]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x24]
	mov r2, r1
	bl sub_0200EBF4
	ldr r1, [r4, #0x18]
	ldr r0, _0211D308 ; =MAIN_BSS_0210CA6C
	ldrb r3, [sp, #0x14]
	ldr r2, [r1, #0x30]
	ldr r1, [r0]
	add r0, r3, r2
	strb r0, [sp, #0x14]
	mov r0, #4
	str r1, [r4, #0x10]
	bl _Znwm
	cmp r0, #0
	beq _0211D254
	ldr r1, _0211D30C ; =s_data_message_etc_place_name_overlay_8_0211e45c
	bl sub_02021404
_0211D254:
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x40]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r0, [r4, #0x40]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	ldr r0, [r4, #0x40]
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
	ldr r0, [r4, #0x40]
	mov r2, #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CCD0
	mov r0, #0x220
	bl _Znwm
	cmp r0, #0
	beq _0211D2DC
	ldr r1, [r4, #0x40]
	bl ov8_0211D770
_0211D2DC:
	str r0, [r4, #0xc]
	bl ov8_0211E148
	mov r0, r4
	bl ov8_0211D628
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D2F4: .word 0x04001000
_0211D2F8: .word 0xFFCFFFEF
_0211D2FC: .word s_data_menu_overlay_8_0211e438
_0211D300: .word s_ma005_00_overlay_8_0211e444
_0211D304: .word s_mam000_00_overlay_8_0211e450
_0211D308: .word MAIN_BSS_0210CA6C
_0211D30C: .word s_data_message_etc_place_name_overlay_8_0211e45c

	arm_func_start ov8_0211D310
ov8_0211D310: ; 0x0211D310
	stmdb sp!, {r3, lr}
	mov r1, #1
	strh r1, [r0]
	bl ov8_0211D328
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov8_0211D310

	arm_func_start ov8_0211D328
ov8_0211D328: ; 0x0211D328
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov8_0211CFF0
	mov r0, r4
	bl ov8_0211CEAC
	ldr r0, [r4, #0x40]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211D328

	arm_func_start ov8_0211D358
ov8_0211D358: ; 0x0211D358
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x30]
	ldr r1, [r1, #0x14]
	ldrh r1, [r1, #2]
	and r1, r1, #2
	mov r5, r1, lsl #0x10
	bl sub_0200EB84
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	orrs r0, r0, r5, lsr #16
	beq _0211D39C
	mov r0, r4
	bl ov8_0211D444
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov8_0211D358
_0211D39C:
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0211D3D8
	bl sub_0200EB84
	cmp r0, #0
	beq _0211D3D8
	ldr r0, [r4, #0x40]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	bl ov8_0211D604
	ldmia sp!, {r3, r4, r5, pc}
_0211D3D8:
	ldr r0, [r4, #8]
	add r1, sp, #2
	add r2, sp, #0
	bl sub_0202B5A8
	ldrh r0, [sp, #2]
	cmp r0, #1
	beq _0211D400
	cmp r0, #6
	beq _0211D420
	ldmia sp!, {r3, r4, r5, pc}
_0211D400:
	ldr r0, [r4, #0x40]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	bl ov8_0211D628
	ldmia sp!, {r3, r4, r5, pc}
_0211D420:
	ldr r0, [r4, #0x40]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldrh r1, [sp]
	mov r0, r4
	bl ov8_0211D654
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov8_0211D444
ov8_0211D444: ; 0x0211D444
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	ldr r1, _0211D474 ; =0x00000103
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r1, #2
	mov r0, r4
	strh r1, [r4]
	bl ov8_0211D6CC
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D474: .word 0x00000103
	arm_func_end ov8_0211D444

	arm_func_start ov8_0211D478
ov8_0211D478: ; 0x0211D478
	strh r1, [r0, #0x3c]
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end ov8_0211D478

	arm_func_start ov8_0211D488
ov8_0211D488: ; 0x0211D488
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
	ldrh r0, [r5, #0x3c]
	and r4, r0, #0xff
	cmp r4, #0xc8
	subhi r0, r4, #0x9b
	andhi r4, r0, #0xff
	bhi _0211D4FC
	cmp r4, #0x64
	bls _0211D4FC
	ldr r2, _0211D558 ; =0x51EB851F
	mov r0, r4, lsr #0x1f
	smull r1, r3, r2, r4
	add r3, r0, r3, asr #5
	mov r2, #0x64
	smull r0, r1, r2, r3
	sub r3, r4, r0
	and r4, r3, #0xff
	arm_func_end ov8_0211D488
_0211D4FC:
	ldr r0, [r5, #0x40]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	ldr r1, [r5, #0x40]
	ldr r0, [r5, #0x14]
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
_0211D558: .word 0x51EB851F

	arm_func_start ov8_0211D55C
ov8_0211D55C: ; 0x0211D55C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0211D58C
	ldr r0, [r4, #0x24]
	mov r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211D55C
_0211D58C:
	ldr r0, [r4, #0xc]
	bl ov8_0211E32C
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x24]
	mov r1, #1
	str r1, [r0, #0x14]
	ldrh r2, [r4, #0x3e]
	mov r0, r4
	mov r1, #0
	bl ov8_0211D5B8
	ldmia sp!, {r4, pc}

	arm_func_start ov8_0211D5B8
ov8_0211D5B8: ; 0x0211D5B8
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
	ldr r0, [r0, #0x24]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl sub_0200EB28
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov8_0211D5B8

	arm_func_start ov8_0211D604
ov8_0211D604: ; 0x0211D604
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0x3e]
	mov r2, #1
	bl ov8_0211D678
	ldrh r1, [r4, #0x3e]
	mov r0, r4
	bl ov8_0211D478
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211D604

	arm_func_start ov8_0211D628
ov8_0211D628: ; 0x0211D628
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #8]
	mov r2, #1
	ldrh r4, [r1, #0x56]
	mov r1, r4
	bl ov8_0211D678
	mov r0, r5
	mov r1, r4
	bl ov8_0211D478
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov8_0211D628

	arm_func_start ov8_0211D654
ov8_0211D654: ; 0x0211D654
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #3
	bl ov8_0211D678
	mov r0, r5
	mov r1, r4
	bl ov8_0211D478
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov8_0211D654

	arm_func_start ov8_0211D678
ov8_0211D678: ; 0x0211D678
	ldr ip, _0211D684 ; =FUN_0202B50C
	ldr r0, [r0, #8]
	bx ip
	.align 2, 0
_0211D684: .word sub_0202B50C
	arm_func_end ov8_0211D678

	arm_func_start ov8_0211D688
ov8_0211D688: ; 0x0211D688
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
	ldr r0, [r4, #0x40]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211D688

	arm_func_start ov8_0211D6CC
ov8_0211D6CC: ; 0x0211D6CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #4
	mov r2, #0xf
	bl sub_0200E0E0
	ldr r0, [r4, #0x40]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211D6CC

	arm_func_start ov8_0211D710
ov8_0211D710: ; 0x0211D710
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211D748
	ldr r0, [r4, #0x40]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	beq _0211D750
	arm_func_end ov8_0211D710
_0211D748:
	mov r0, #1
	ldmia sp!, {r4, pc}
_0211D750:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov8_0211D758
ov8_0211D758: ; 0x0211D758
	ldrh r0, [r0]
	cmp r0, #4
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	bx lr
	arm_func_end ov8_0211D758

	arm_func_start ov8_0211D770
ov8_0211D770: ; 0x0211D770
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr ip, _0211D7AC ; =sub_0203C068
	mov r4, r1
	ldr r3, _0211D7B0 ; =sub_0203BFD4
	add r0, r5, #0x50
	mov r1, #2
	mov r2, #0xe0
	str ip, [sp]
	bl __cxa_vec_ctor
	mov r0, r5
	str r4, [r5, #0x21c]
	bl ov8_0211D7E0
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211D7AC: .word sub_0203C068
_0211D7B0: .word sub_0203BFD4
	arm_func_end ov8_0211D770

	arm_func_start ov8_0211D7B4
ov8_0211D7B4: ; 0x0211D7B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov8_0211D8EC
	ldr r3, _0211D7DC ; =sub_0203C068
	add r0, r4, #0x50
	mov r1, #2
	mov r2, #0xe0
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D7DC: .word sub_0203C068
	arm_func_end ov8_0211D7B4

	arm_func_start ov8_0211D7E0
ov8_0211D7E0: ; 0x0211D7E0
	mov r2, #0
	strh r2, [r0]
	str r2, [r0, #0x18]
	str r2, [r0, #0x10]
	str r2, [r0, #0x3c]
	str r2, [r0, #0x40]
	str r2, [r0, #4]
	mov r1, #1
	str r1, [r0, #0x210]
	str r2, [r0, #0x214]
	str r2, [r0, #0x218]
	strh r2, [r0, #0x4a]
	str r2, [r0, #0x4c]
	bx lr
	arm_func_end ov8_0211D7E0

	arm_func_start ov8_0211D818
ov8_0211D818: ; 0x0211D818
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x21c]
	ldr r1, _0211D898 ; =0x01FF0000
	add r0, r0, #0x1000
	ldr r2, [r0, #0x5d0]
	ldr r0, _0211D89C ; =0x04000014
	mov r2, r2, asr #0xc
	rsb r2, r2, #0
	and r1, r1, r2, lsl #16
	str r1, [r0]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F64C
	ldr r0, [r4, #0x210]
	cmp r0, #0
	beq _0211D87C
	ldr r0, [r4, #0x214]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x50
	mov r1, #0
	bl sub_0203C87C
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211D818
_0211D87C:
	ldr r0, [r4, #0x218]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x130
	mov r1, #0
	bl sub_0203C87C
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D898: .word 0x01FF0000
_0211D89C: .word 0x04000014

	arm_func_start thunk_FUN_overlay_8__0211d9e8
thunk_FUN_overlay_8__0211d9e8: ; 0x0211D8A0
	ldr ip, _0211D8A8 ; =ov8_0211D9E8
	bx ip
	.align 2, 0
_0211D8A8: .word ov8_0211D9E8
	arm_func_end thunk_FUN_overlay_8__0211d9e8

	arm_func_start thunk_FUN_overlay_8__0211e170
thunk_FUN_overlay_8__0211e170: ; 0x0211D8AC
	ldr ip, _0211D8B4 ; =ov8_0211E170
	bx ip
	.align 2, 0
_0211D8B4: .word ov8_0211E170
	arm_func_end thunk_FUN_overlay_8__0211e170

	arm_func_start ov8_0211D8B8
ov8_0211D8B8: ; 0x0211D8B8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r1, #1
	mov r2, #0
	bl ov8_0211E0A4
	ldr r0, [r4, #0x21c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C588
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211D8B8

	arm_func_start ov8_0211D8EC
ov8_0211D8EC: ; 0x0211D8EC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _0211D91C
	beq _0211D914
	mov r0, r5
	bl sub_0200372C
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov8_0211D8EC
_0211D914:
	mov r0, #0
	str r0, [r4, #8]
_0211D91C:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _0211D944
	beq _0211D93C
	mov r0, r5
	bl sub_02040F88
	mov r0, r5
	bl _ZdlPv
_0211D93C:
	mov r0, #0
	str r0, [r4, #0xc]
_0211D944:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _0211D96C
	beq _0211D964
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211D964:
	mov r0, #0
	str r0, [r4, #0x18]
_0211D96C:
	ldr r5, [r4, #0x3c]
	cmp r5, #0
	beq _0211D994
	beq _0211D98C
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl _ZdlPv
_0211D98C:
	mov r0, #0
	str r0, [r4, #0x3c]
_0211D994:
	ldr r5, [r4, #0x40]
	cmp r5, #0
	beq _0211D9BC
	beq _0211D9B4
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl _ZdlPv
_0211D9B4:
	mov r0, #0
	str r0, [r4, #0x40]
_0211D9BC:
	ldr r5, [r4, #0x10]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0211D9DC
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211D9DC:
	mov r0, #0
	str r0, [r4, #0x10]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov8_0211D9E8
ov8_0211D9E8: ; 0x0211D9E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
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
	ldr r0, _0211DA94 ; =0x0400044C
	mov r2, #0
	str r2, [r0]
	ldr r0, [r4, #0x210]
	cmp r0, #0
	beq _0211DA6C
	ldr r0, [r4, #0x214]
	cmp r0, #0
	ldrne r0, [r4, #0x58]
	ldrne r1, [r4, #8]
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, [r0]
	ldr r3, [r3, #8]
	blx r3
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211D9E8
_0211DA6C:
	ldr r0, [r4, #0x218]
	cmp r0, #0
	ldrne r0, [r4, #0x138]
	ldrne r1, [r4, #8]
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, [r0]
	ldr r3, [r3, #8]
	blx r3
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211DA94: .word 0x0400044C

	arm_func_start ov8_0211DA98
ov8_0211DA98: ; 0x0211DA98
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x54
	mov r5, #0x4000000
	ldr r1, [r5]
	mov sl, r0
	bic r0, r1, #0x1f00
	orr r0, r0, #0x1600
	str r0, [r5]
	ldr r1, [r5]
	ldr r0, _0211E070 ; =0xFFCFFFEF
	mov r4, #0
	and r0, r1, r0
	orr r0, r0, #0x10
	str r0, [r5]
	str r4, [r5, #0x14]
	str r4, [r5, #0x18]
	str r4, [r5, #0x1c]
	ldrh r1, [r5, #0xa]
	ldr r3, _0211E074 ; =s_mmq000_overlay_8_0211e5ec
	ldr r0, _0211E078 ; =s_menu_overlay_8_0211e5d8
	and r1, r1, #0x43
	orr r1, r1, #0x210
	strh r1, [r5, #0xa]
	ldrh r6, [r5, #0xc]
	ldr r1, _0211E07C ; =s_mmq000_bg_overlay_8_0211e5e0
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
	ldr r0, _0211E078 ; =s_menu_overlay_8_0211e5d8
	ldr r1, _0211E07C ; =s_mmq000_bg_overlay_8_0211e5e0
	ldr r3, _0211E080 ; =s_mmq000_02_overlay_8_0211e5f4
	mov r2, #2
	str r4, [sp, #0xc]
	bl sub_02020FF0
	mov r2, #1
	str r2, [sp]
	mov r1, r4
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211E078 ; =s_menu_overlay_8_0211e5d8
	ldr r1, _0211E07C ; =s_mmq000_bg_overlay_8_0211e5e0
	ldr r3, _0211E084 ; =s_mmq000_01_overlay_8_0211e600
	bl sub_02020FF0
	mov r3, r5
	ldr r2, [r3]
	ldr r0, _0211E070 ; =0xFFCFFFEF
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
	beq _0211DC14
	ldr r3, [sl, #0x21c]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x74
	mov r3, #0
	bl sub_0200ECD0
	arm_func_end ov8_0211DA98
_0211DC14:
	str r0, [sl, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x18]
	ldr r1, _0211E088 ; =s_data_menu_overlay_8_0211e60c
	ldr r2, _0211E08C ; =s_mmq000_00_overlay_8_0211e618
	mov r3, #0
	bl sub_0200EE14
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x18]
	mov r1, #5
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [sl, #0x30]
	mov r1, #1
	str r1, [sp]
	ldr r0, [sl, #0x18]
	mov r2, #0x16
	mov r3, #0x17
	bl sub_0200F4FC
	str r0, [sl, #0x1c]
	ldr r1, [sl, #0x18]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #2
	str r2, [sl, #0x34]
	str r0, [sp]
	ldr r0, [sl, #0x18]
	mov r2, #0xea
	mov r3, #0x17
	bl sub_0200F4FC
	str r0, [sl, #0x20]
	ldr r1, [sl, #0x18]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #0
	str r2, [sl, #0x38]
	str r0, [sp]
	ldr r0, [sl, #0x18]
	mov r2, #0x80
	mov r3, #0x18
	bl sub_0200F4FC
	str r0, [sl, #0x24]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x18]
	mov r1, #3
	mov r2, #0x80
	mov r3, #0x90
	bl sub_0200F4FC
	str r0, [sl, #0x28]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sl, #0x18]
	mov r1, #4
	mov r2, #0x7c
	mov r3, #0x38
	bl sub_0200F4FC
	str r0, [sl, #0x2c]
	mov r0, sl
	bl ov8_0211E380
	cmp r0, #0
	bge _0211DD48
	mov r2, #0
	mov r0, r2
_0211DD20:
	cmp r2, #5
	addne r1, sl, r2, lsl #2
	ldrne r1, [r1, #0x1c]
	add r2, r2, #1
	cmpne r1, #0
	strne r0, [r1, #0x14]
	cmp r2, #6
	blt _0211DD20
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211DD48:
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1f00
	str r0, [r1]
	ldr r0, [sl, #0x21c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C3D0
	ldr r0, [sl, #0x21c]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r2, #0xc
	mov r3, #6
	bl sub_0200C408
	ldr r0, [sl, #0x21c]
	mov r1, #4
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
	ldr r0, [sl, #0x21c]
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
	ldr r0, [sl, #0x21c]
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
	ldr r0, [sl, #0x21c]
	mov r2, #0xf
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r3, r1
	bl sub_0200C6C8
	mov r0, #1
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x78
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sl, #0x21c]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r2, #0x1e
	mov r3, #0xa
	bl sub_0200C6C8
	mov r0, #8
	bl _Znwm
	cmp r0, #0
	beq _0211DEAC
	bl sub_02040F34
_0211DEAC:
	str r0, [sl, #0xc]
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	beq _0211DEC4
	bl sub_02003718
_0211DEC4:
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
	mov sb, sl
	add r8, sl, #0x50
	mov r6, #0
	mov fp, #1
	add r5, sp, #0x14
	mov r4, #4
_0211DF14:
	cmp r6, #0
	beq _0211DF28
	cmp r6, #1
	beq _0211DFA8
	b _0211DFF4
_0211DF28:
	mov r0, sl
	bl ov8_0211E380
	cmp r0, #0
	blt _0211E054
	cmp r0, #0x45
	subge r0, r0, #0x31
	mov r1, r0, lsl #2
	ldr r0, _0211E090 ; =DAT_overlay_8_0211e47c
	str fp, [sl, #0x214]
	ldrh r7, [r0, r1]
	mov r0, sl
	bl ov8_0211E380
	mov r2, r0
	cmp r2, #9
	bne _0211DF7C
	ldr r0, [sl, #0x21c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	ldr r0, [r0, #8]
	cmp r0, #0x30
	movge r2, #0x14
_0211DF7C:
	ldr r1, _0211E094 ; =s_data_message_etc_mission_info_0_overlay_8_0211e624
	mov r0, r5
	bl OS_SPrintf
	mov r0, #4
	bl _Znwm
	cmp r0, #0
	beq _0211DFA0
	mov r1, r5
	bl sub_02021404
_0211DFA0:
	str r0, [sl, #0x3c]
	b _0211DFF4
_0211DFA8:
	mov r0, sl
	bl ov8_0211E3A4
	movs r2, r0
	bmi _0211E054
	mov r0, #1
	str r0, [sl, #0x218]
	ldr r0, _0211E098 ; =DAT_overlay_8_0211e4e4
	mov r1, r2, lsl #2
	ldrh r7, [r0, r1]
	ldr r1, _0211E09C ; =s_data_message_etc_quest_info_02d_overlay_8_0211e648
	mov r0, r5
	bl OS_SPrintf
	mov r0, #4
	bl _Znwm
	cmp r0, #0
	beq _0211DFF0
	mov r1, r5
	bl sub_02021404
_0211DFF0:
	str r0, [sl, #0x40]
_0211DFF4:
	cmp r7, #0
	mov r1, #1
	bne _0211E018
	ldr r0, _0211E0A0 ; =MAIN_BSS_020B26A0
	mov r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	moveq r7, #3
	movne r7, r4
_0211E018:
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, r8
	mov r2, r7
	mov r3, #0
	bl sub_0203C4BC
	ldr r0, [sb, #0x58]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _0211E054
	mov r1, #0x4000
	bl sub_020128EC
_0211E054:
	add r8, r8, #0xe0
	add sb, sb, #0xe0
	add r6, r6, #1
	cmp r6, #2
	blt _0211DF14
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211E070: .word 0xFFCFFFEF
_0211E074: .word s_mmq000_overlay_8_0211e5ec
_0211E078: .word s_menu_overlay_8_0211e5d8
_0211E07C: .word s_mmq000_bg_overlay_8_0211e5e0
_0211E080: .word s_mmq000_02_overlay_8_0211e5f4
_0211E084: .word s_mmq000_01_overlay_8_0211e600
_0211E088: .word s_data_menu_overlay_8_0211e60c
_0211E08C: .word s_mmq000_00_overlay_8_0211e618
_0211E090: .word DAT_overlay_8_0211e47c
_0211E094: .word s_data_message_etc_mission_info_0_overlay_8_0211e624
_0211E098: .word DAT_overlay_8_0211e4e4
_0211E09C: .word s_data_message_etc_quest_info_02d_overlay_8_0211e648
_0211E0A0: .word MAIN_BSS_020B26A0

	arm_func_start ov8_0211E0A4
ov8_0211E0A4: ; 0x0211E0A4
	stmdb sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	mov r1, #0
	strh r1, [r5]
	beq _0211E0D0
	bl ov8_0211E380
	cmp r0, #0
	bge _0211E0E0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov8_0211E0A4
_0211E0D0:
	bl ov8_0211E3A4
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
_0211E0E0:
	mov r0, r5
	str r4, [r5, #0x210]
	bl ov8_0211E0FC
	mov r0, r5
	bl ov8_0211E164
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov8_0211E0FC
ov8_0211E0FC: ; 0x0211E0FC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x210]
	mov r4, #2
	cmp r0, #0
	movne r4, #1
	mov r5, #0
	arm_func_end ov8_0211E0FC
_0211E124:
	add r1, r6, r5, lsl #2
	ldr r0, [r6, #0x18]
	ldr r1, [r1, #0x34]
	mov r2, r4
	bl sub_0200F628
	add r5, r5, #1
	cmp r5, #2
	blt _0211E124
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov8_0211E148
ov8_0211E148: ; 0x0211E148
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov8_0211DA98
	mov r0, r4
	bl ov8_0211D8B8
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov8_0211E148

	arm_func_start ov8_0211E164
ov8_0211E164: ; 0x0211E164
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end ov8_0211E164

	arm_func_start ov8_0211E170
ov8_0211E170: ; 0x0211E170
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #4]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, #0
	str r1, [r5, #4]
	ldr r0, [r5, #0x21c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C980
	ldr r0, [r5, #0x21c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C980
	ldr r0, [r5, #0x21c]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C980
	ldr r0, [r5, #0x21c]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C980
	ldr r0, [r5, #0x210]
	cmp r0, #0
	beq _0211E204
	ldr r0, [r5, #0x214]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, [r5, #0x3c]
	b _0211E218
	arm_func_end ov8_0211E170
_0211E204:
	ldr r0, [r5, #0x218]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, [r5, #0x40]
_0211E218:
	ldr r1, [r5, #0x21c]
	mov r0, r4
	add r1, r1, #0x1000
	ldr r6, [r1, #0x494]
	mov r1, #1
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #8]
	mov r0, r6
	mov r2, r1
	str r1, [sp, #0xc]
	mov r3, #2
	bl sub_0200C7A4
	ldr r1, [r5, #0x21c]
	mov r0, r4
	add r1, r1, #0x1000
	ldr r6, [r1, #0x494]
	mov r1, #2
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r6
	mov r1, #1
	str r1, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r3, r2
	bl sub_0200C7A4
	ldr r1, [r5, #0x21c]
	mov r0, r4
	add r1, r1, #0x1000
	ldr r6, [r1, #0x494]
	mov r1, #3
	bl sub_020215F8
	mov r1, #3
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r6
	mov r1, #1
	str r1, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r1, #2
	mov r3, r2
	bl sub_0200C7A4
	ldr r1, [r5, #0x21c]
	mov r0, r4
	add r1, r1, #0x1000
	ldr r4, [r1, #0x494]
	mov r1, #4
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r4
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #3
	mov r2, #2
	mov r3, #6
	bl sub_0200C7A4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov8_0211E32C
ov8_0211E32C: ; 0x0211E32C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov8_0211E380
	cmp r0, #0
	mvnlt r0, #0
	ldmltia sp!, {r4, pc}
	cmp r0, #0x45
	subge r0, r0, #0x31
	ldr r1, _0211E37C ; =DAT_overlay_8_0211e47e
	mov r2, r0, lsl #2
	cmp r0, #9
	ldrh r0, [r1, r2]
	ldmneia sp!, {r4, pc}
	ldr r1, [r4, #0x21c]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4a0]
	ldr r1, [r1, #8]
	cmp r1, #0x30
	movge r0, #0x1c
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211E37C: .word DAT_overlay_8_0211e47e
	arm_func_end ov8_0211E32C

	arm_func_start ov8_0211E380
ov8_0211E380: ; 0x0211E380
	ldr r0, [r0, #0x21c]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4a0]
	ldrb r0, [r1]
	cmp r0, #0
	mvneq r0, #0
	ldrneb r0, [r1, #2]
	subne r0, r0, #1
	bx lr
	arm_func_end ov8_0211E380

	arm_func_start ov8_0211E3A4
ov8_0211E3A4: ; 0x0211E3A4
	ldr r0, [r0, #0x21c]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4a0]
	ldrb r0, [r1, #1]
	cmp r0, #0
	mvneq r0, #0
	ldrneb r0, [r1, #3]
	subne r0, r0, #1
	bx lr
	arm_func_end ov8_0211E3A4
	; 0x0211E3C8

    .section .sinit,4 ; 0x0211E3C8

    .data
PTR_ptr_FUN_020835bc_overlay_8_0211e3e0: ; 0x0211E3E0
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_18CMissionQuestScene_overlay_8_0211e3ec
	.word PTR_ptr_FUN_02083578_0208a804
s_18CMissionQuestScene_overlay_8_0211e3ec: ; 0x0211E3EC
	.asciz "18CMissionQuestScene"
_0211E401:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    .word PTR_ptr_FUN_020835bc_overlay_8_0211e3e0
ptr_FUN_overlay_11_0211ca0c_overlay_8_0211e40c: ; 0x0211E40C
	.word ov8_0211CA0C
ptr_FUN_overlay_23_0211ca6c_overlay_8_0211e410: ; 0x0211E410
	.word ov8_0211CA6C
ptr_FUN_overlay_29_0211cc90_overlay_8_0211e414: ; 0x0211E414
	.word ov8_0211CC90
ptr_FUN_overlay_11_0211ccc8_overlay_8_0211e418: ; 0x0211E418
	.word ov8_0211CCC8
ptr_FUN_overlay_8_0211cce0_overlay_8_0211e41c: ; 0x0211E41C
	.word ov8_0211CCE0
ptr_FUN_02007ce0_overlay_8_0211e420: ; 0x0211E420
	.word sub_02007CE0
ptr_FUN_02007cc4_overlay_8_0211e424: ; 0x0211E424
	.word sub_02007CC4
ptr_FUN_overlay_8_0211cafc_overlay_8_0211e428: ; 0x0211E428
	.word ov8_0211CAFC
ptr_FUN_overlay_8_0211cc3c_overlay_8_0211e42c: ; 0x0211E42C
	.word ov8_0211CC3C
ptr_FUN_overlay_5_0211cc74_overlay_8_0211e430: ; 0x0211E430
	.word ov8_0211CC74
	.word ov8_0211CCF8
s_data_menu_overlay_8_0211e438: ; 0x0211E438
	.asciz "data/menu"
_0211E442:
	.byte 0x00, 0x00
s_ma005_00_overlay_8_0211e444: ; 0x0211E444
	.asciz "ma005_00"
_0211E44D:
	.byte 0x00, 0x00, 0x00
s_mam000_00_overlay_8_0211e450: ; 0x0211E450
	.asciz "mam000_00"
_0211E45A:
	.byte 0x00, 0x00
s_data_message_etc_place_name_overlay_8_0211e45c: ; 0x0211E45C
	.asciz "/data/message/etc/place_name"
_0211E479:
	.byte 0x00, 0x00, 0x00
DAT_overlay_8_0211e47c: ; 0x0211E47C
	.byte 0x12, 0x00
DAT_overlay_8_0211e47e: ; 0x0211E47E
	.byte 0x04, 0x00
	.byte 0x12, 0x00, 0x06, 0x00, 0x12, 0x00, 0x09, 0x00, 0x12, 0x00, 0x0A, 0x00, 0x12, 0x00, 0x0B, 0x00
	.byte 0x12, 0x00, 0x10, 0x00, 0x13, 0x00, 0x01, 0x00, 0x13, 0x00, 0x12, 0x00, 0x1D, 0x00, 0x17, 0x00
	.byte 0x1A, 0x00, 0x1A, 0x00, 0x1A, 0x00, 0x12, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x1E, 0x00, 0x1E, 0x00
	.byte 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x11, 0x00, 0x1A, 0x00, 0x26, 0x00, 0x1A, 0x00, 0x26, 0x00
	.byte 0x12, 0x00, 0x08, 0x00, 0x1A, 0x00, 0x26, 0x00, 0x12, 0x00, 0x08, 0x00, 0x12, 0x00, 0x04, 0x00
	.byte 0x12, 0x00, 0x1E, 0x00, 0x1D, 0x00, 0x27, 0x00, 0x1A, 0x00, 0x1C, 0x00, 0x1A, 0x00, 0x24, 0x00
	.byte 0x1A, 0x00, 0x0A, 0x00
DAT_overlay_8_0211e4e4: ; 0x0211E4E4
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
s_menu_overlay_8_0211e5d8: ; 0x0211E5D8
	.asciz "menu/"
_0211E5DE:
	.byte 0x00, 0x00
s_mmq000_bg_overlay_8_0211e5e0: ; 0x0211E5E0
	.asciz "mmq000_bg_"
_0211E5EB:
	.byte 0x00
s_mmq000_overlay_8_0211e5ec: ; 0x0211E5EC
	.asciz "mmq000"
_0211E5F3:
	.byte 0x00
s_mmq000_02_overlay_8_0211e5f4: ; 0x0211E5F4
	.asciz "mmq000_02"
_0211E5FE:
	.byte 0x00, 0x00
s_mmq000_01_overlay_8_0211e600: ; 0x0211E600
	.asciz "mmq000_01"
_0211E60A:
	.byte 0x00, 0x00
s_data_menu_overlay_8_0211e60c: ; 0x0211E60C
	.asciz "data/menu"
_0211E616:
	.byte 0x00, 0x00
s_mmq000_00_overlay_8_0211e618: ; 0x0211E618
	.asciz "mmq000_00"
_0211E622:
	.byte 0x00, 0x00
s_data_message_etc_mission_info_0_overlay_8_0211e624: ; 0x0211E624
	.asciz "data/message/etc/mission_info_%02d"
_0211E647:
	.byte 0x00
s_data_message_etc_quest_info_02d_overlay_8_0211e648: ; 0x0211E648
	.asciz "data/message/etc/quest_info_%02d"
	; 0x0211E669
