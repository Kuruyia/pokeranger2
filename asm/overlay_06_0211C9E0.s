    .include "macros.inc"
    .include "include/overlay_06_0211C9E0.inc"

    .text

	arm_func_start _ZN12COptionSceneC1EP5CGame
_ZN12COptionSceneC1EP5CGame: ; 0x0211C9E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl _ZN6CSceneC2Ev
	ldr r1, _0211CA68 ; =ptr_FUN_overlay_23_0211ca6c_overlay_6_0211dc84
	add r0, r5, #0x6c
	str r1, [r4]
	add r0, r0, #0x1400
	mov r1, #0x3c
	str r5, [r4, #0x70]
	bl sub_02008DB4
	mov r0, #0
	str r0, [r4, #0x88]
	str r0, [r4, #0x74]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0x84]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #2
	bl sub_02019278
	cmp r0, #0
	bne _0211CA60
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #2
	mov r2, #4
	bl sub_0201926C
	add r0, r5, #0x1000
	ldr r0, [r0, #0x490]
	mov r1, #4
	str r1, [r0, #0x74]
	arm_func_end _ZN12COptionSceneC1EP5CGame
_0211CA60:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA68: .word ptr_FUN_overlay_23_0211ca6c_overlay_6_0211dc84

	arm_func_start ov6_0211CA6C
ov6_0211CA6C: ; 0x0211CA6C
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _0211CBD8 ; =ptr_FUN_overlay_23_0211ca6c_overlay_6_0211dc84
	mov r5, r0
	str r1, [r5]
	ldr r0, [r5, #0x70]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl _ZN17UnkClass_020091E812sub_02009FB0Emm
	ldr r0, [r5, #0x70]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020092D4Ev
	ldr r1, [r5, #0x88]
	cmp r1, #0
	beq _0211CB34
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211CB00
	mov r6, r4
	arm_func_end ov6_0211CA6C
_0211CAC4:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211CAEC
	bl _ZdaPv
	ldr r0, [r5, #0x88]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211CAEC:
	ldr r1, [r5, #0x88]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211CAC4
_0211CB00:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211CB1C
	bl _ZdaPv
	ldr r0, [r5, #0x88]
	mov r1, #0
	str r1, [r0, #8]
_0211CB1C:
	ldr r0, [r5, #0x88]
	cmp r0, #0
	beq _0211CB34
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x88]
_0211CB34:
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _0211CB5C
	beq _0211CB54
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0211CB54:
	mov r0, #0
	str r0, [r5, #4]
_0211CB5C:
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211CB84
	beq _0211CB7C
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0211CB7C:
	mov r0, #0
	str r0, [r5, #8]
_0211CB84:
	bl NNS_GfdResetLnkTexVramState
	bl NNS_GfdResetLnkPlttVramState
	ldr r4, [r5, #0x84]
	cmp r4, #0
	beq _0211CBB4
	beq _0211CBAC
	mov r0, r4
	bl sub_02025690
	mov r0, r4
	bl _ZdlPv
_0211CBAC:
	mov r0, #0
	str r0, [r5, #0x84]
_0211CBB4:
	ldr r0, [r5, #0x70]
	mov r1, #0x1e
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211CBD8: .word ptr_FUN_overlay_23_0211ca6c_overlay_6_0211dc84

	arm_func_start ov6_0211CBDC
ov6_0211CBDC: ; 0x0211CBDC
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _0211CD50 ; =ptr_FUN_overlay_23_0211ca6c_overlay_6_0211dc84
	mov r5, r0
	str r1, [r5]
	ldr r0, [r5, #0x70]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl _ZN17UnkClass_020091E812sub_02009FB0Emm
	ldr r0, [r5, #0x70]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_020092D4Ev
	ldr r1, [r5, #0x88]
	cmp r1, #0
	beq _0211CCA4
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211CC70
	mov r6, r4
	arm_func_end ov6_0211CBDC
_0211CC34:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211CC5C
	bl _ZdaPv
	ldr r0, [r5, #0x88]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211CC5C:
	ldr r1, [r5, #0x88]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211CC34
_0211CC70:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211CC8C
	bl _ZdaPv
	ldr r0, [r5, #0x88]
	mov r1, #0
	str r1, [r0, #8]
_0211CC8C:
	ldr r0, [r5, #0x88]
	cmp r0, #0
	beq _0211CCA4
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x88]
_0211CCA4:
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _0211CCCC
	beq _0211CCC4
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0211CCC4:
	mov r0, #0
	str r0, [r5, #4]
_0211CCCC:
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211CCF4
	beq _0211CCEC
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0211CCEC:
	mov r0, #0
	str r0, [r5, #8]
_0211CCF4:
	bl NNS_GfdResetLnkTexVramState
	bl NNS_GfdResetLnkPlttVramState
	ldr r4, [r5, #0x84]
	cmp r4, #0
	beq _0211CD24
	beq _0211CD1C
	mov r0, r4
	bl sub_02025690
	mov r0, r4
	bl _ZdlPv
_0211CD1C:
	mov r0, #0
	str r0, [r5, #0x84]
_0211CD24:
	ldr r0, [r5, #0x70]
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
_0211CD50: .word ptr_FUN_overlay_23_0211ca6c_overlay_6_0211dc84

	arm_func_start ov6_0211CD54
ov6_0211CD54: ; 0x0211CD54
	stmdb sp!, {r4, lr}
	mov r4, r0
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
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #0x10
	bl GX_SetBankForOBJ
	mov r0, #1
	mov r1, #0
	mov r2, r1
	bl GX_SetGraphicsMode
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	ldr r2, _0211CE18 ; =0x04000304
	ldr r0, _0211CE1C ; =0xFFFFFDF1
	ldrh r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [r2]
	ldrh r0, [r2]
	bic r0, r0, #0x8000
	strh r0, [r2]
	bl GX_DispOn
	ldr r2, _0211CE20 ; =0x04001000
	mov r0, #0x54
	ldr r1, [r2]
	orr r1, r1, #0x10000
	str r1, [r2]
	bl _Znwm
	cmp r0, #0
	beq _0211CE0C
	bl sub_02025648
	arm_func_end ov6_0211CD54
_0211CE0C:
	str r0, [r4, #0x84]
	bl sub_02026150
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CE18: .word 0x04000304
_0211CE1C: .word 0xFFFFFDF1
_0211CE20: .word 0x04001000

	arm_func_start ov6_0211CE24
ov6_0211CE24: ; 0x0211CE24
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r7, r0
	ldr r4, [r7, #0x70]
	mov r2, #0
	add r0, r4, #0x1000
	ldr r3, [r0, #0x4b0]
	add r1, r4, #0x24
	str r3, [sp]
	stmib sp, {r1, r2}
	mov r1, #0x10
	str r1, [sp, #0xc]
	mov r1, #0x4000
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r3, [r0, #0x4ac]
	ldr r0, [r0, #0x490]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	add r3, r3, #0xc
	bl _ZN17UnkClass_020091E812sub_02009328EP17UnkClass_02001C04P11CTouchPanelP10NNSG2dFontPvmS6_mmm
	ldr r0, [r7, #0x70]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02019278
	str r0, [r7, #0x7c]
	ldr r0, [r7, #0x70]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02019278
	str r0, [r7, #0x80]
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0211CEC8
	ldr r1, _0211D450 ; =s_data_message_etc_menu_mes_overlay_6_0211dcb0
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
	arm_func_end ov6_0211CE24
_0211CEC8:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #0x88]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #0x88]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #0x88]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #0x88]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0x88]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0211CF90
_0211CF20:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #0x88]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #0x88]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0x88]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #0x88]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0211CF20
_0211CF90:
	cmp r6, #0
	beq _0211CFA8
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CFA8:
	mov r0, #0x44
	mov r4, #0
	bl _Znwm
	cmp r0, #0
	beq _0211CFDC
	ldr r3, [r7, #0x70]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x24
	mov r3, r4
	bl sub_0200ECD0
_0211CFDC:
	str r0, [r7, #4]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7, #4]
	ldr r1, _0211D454 ; =s_data_menu_overlay_6_0211dccc
	ldr r2, _0211D458 ; =s_mo000_00_overlay_6_0211dcd8
	bl sub_0200EE14
	mov r1, #1
	str r1, [sp]
	add r4, r4, r0
	ldr r0, [r7, #4]
	mov r1, #0
	mov r2, #0x4c
	mov r3, #0x40
	bl sub_0200F4FC
	str r0, [r7, #0xc]
	ldr r1, [r7, #4]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #0x11
	str r2, [r7, #0x40]
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r2, #0x80
	mov r3, #0x40
	bl sub_0200F4FC
	str r0, [r7, #0x10]
	ldr r1, [r7, #4]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #0x14
	str r2, [r7, #0x44]
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r2, #0xb4
	mov r3, #0x40
	bl sub_0200F4FC
	str r0, [r7, #0x14]
	ldr r0, [r7, #4]
	ldr r0, [r0, #0x24]
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x80]
	cmp r0, #1
	beq _0211D104
	cmp r0, #2
	beq _0211D0D0
	cmp r0, #3
	bne _0211D134
	ldr r0, [r7, #4]
	ldr r1, [r7, #0x40]
	mov r2, #0
	bl sub_0200F628
	ldr r0, [r7, #4]
	ldr r1, [r7, #0x44]
	mov r2, #0xd
	bl sub_0200F628
	ldr r0, [r7, #4]
	ldr r1, [r7, #0x48]
	mov r2, #0xf
	bl sub_0200F628
	b _0211D134
_0211D0D0:
	ldr r0, [r7, #4]
	ldr r1, [r7, #0x40]
	mov r2, #1
	bl sub_0200F628
	ldr r0, [r7, #4]
	ldr r1, [r7, #0x44]
	mov r2, #0xc
	bl sub_0200F628
	ldr r0, [r7, #4]
	ldr r1, [r7, #0x48]
	mov r2, #0xf
	bl sub_0200F628
	b _0211D134
_0211D104:
	ldr r0, [r7, #4]
	ldr r1, [r7, #0x40]
	mov r2, #1
	bl sub_0200F628
	ldr r0, [r7, #4]
	ldr r1, [r7, #0x44]
	mov r2, #0xd
	bl sub_0200F628
	ldr r0, [r7, #4]
	ldr r1, [r7, #0x48]
	mov r2, #0xe
	bl sub_0200F628
_0211D134:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r1, #2
	mov r2, #0x38
	mov r3, #0x74
	bl sub_0200F4FC
	str r0, [r7, #0x18]
	ldr r1, [r7, #4]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #3
	str r2, [r7, #0x4c]
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r2, #0x68
	mov r3, #0x74
	bl sub_0200F4FC
	str r0, [r7, #0x1c]
	ldr r1, [r7, #4]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #4
	str r2, [r7, #0x50]
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r2, #0x98
	mov r3, #0x74
	bl sub_0200F4FC
	str r0, [r7, #0x20]
	ldr r1, [r7, #4]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #5
	str r2, [r7, #0x54]
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r2, #0xc8
	mov r3, #0x74
	bl sub_0200F4FC
	str r0, [r7, #0x24]
	ldr r1, [r7, #4]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #6
	str r2, [r7, #0x58]
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r2, #0x38
	mov r3, #0x8c
	bl sub_0200F4FC
	str r0, [r7, #0x28]
	ldr r1, [r7, #4]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #7
	str r2, [r7, #0x5c]
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r2, #0x68
	mov r3, #0x8c
	bl sub_0200F4FC
	str r0, [r7, #0x2c]
	ldr r0, [r7, #4]
	ldr r0, [r0, #0x24]
	str r0, [r7, #0x60]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r1, #8
	mov r2, #0x98
	mov r3, #0x8c
	bl sub_0200F4FC
	str r0, [r7, #0x30]
	ldr r1, [r7, #4]
	mov r0, #1
	ldr r2, [r1, #0x24]
	mov r1, #9
	str r2, [r7, #0x64]
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r2, #0xc8
	mov r3, #0x8c
	bl sub_0200F4FC
	str r0, [r7, #0x34]
	ldr r1, [r7, #4]
	mov r0, #2
	ldr r2, [r1, #0x24]
	mov r1, #0xa
	str r2, [r7, #0x68]
	str r0, [sp]
	ldr r0, [r7, #4]
	mov r2, #0x80
	mov r3, #0x10
	bl sub_0200F4FC
	ldr r1, [r7, #0x7c]
	mov r0, #1
	add r1, r1, #3
	add r1, r7, r1, lsl #2
	ldr r3, [r1, #0xc]
	mov r1, #0xb
	str r0, [sp]
	ldr r0, [r7, #4]
	ldrsh r2, [r3, #0xc]
	ldrsh r3, [r3, #0xe]
	bl sub_0200F4FC
	str r0, [r7, #0x38]
	ldr r1, [r7, #4]
	mov r0, #0x44
	ldr r1, [r1, #0x24]
	str r1, [r7, #0x6c]
	bl _Znwm
	cmp r0, #0
	beq _0211D31C
	ldr r3, [r7, #0x70]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x1b4
	mov r3, #0
	bl sub_0200ECD0
_0211D31C:
	str r0, [r7, #8]
	mov r0, #0xb
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r7, #8]
	ldr r1, _0211D454 ; =s_data_menu_overlay_6_0211dccc
	ldr r2, _0211D45C ; =s_ma005_00_overlay_6_0211dce4
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	ldr r0, [r7, #8]
	mov r2, #0xf0
	mov r3, #0x10
	bl sub_0200F4FC
	mov r1, #0x20
	str r0, [r7, #0x3c]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7, #0x3c]
	mov r2, r1
	bl sub_0200EBF4
	mov r8, #0
	mov r6, r8
	mov r5, #0x28
	mov r4, #0x18
_0211D388:
	str r6, [sp]
	add r0, r7, r8, lsl #2
	ldr r0, [r0, #0xc]
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl sub_0200EBF4
	add r8, r8, #1
	cmp r8, #3
	blt _0211D388
	mov r8, #3
	mov r6, #0
	mov r5, #0x2a
	mov r4, #0x10
_0211D3C0:
	str r6, [sp]
	add r0, r7, r8, lsl #2
	ldr r0, [r0, #0xc]
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl sub_0200EBF4
	add r8, r8, #1
	cmp r8, #0xb
	blt _0211D3C0
	mov r0, r7
	bl ov6_0211D460
	mov r0, r7
	bl ov6_0211D638
	mov r0, r7
	bl ov6_0211D6B4
	ldr r0, [r7, #0x70]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AB28Emm
	ldr r0, [r7, #0x70]
	ldr r1, [r7, #0x80]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AA04El
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7, #0x70]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, #1
	bl _ZN17UnkClass_020091E812sub_0200AD34Emmmm
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211D450: .word s_data_message_etc_menu_mes_overlay_6_0211dcb0
_0211D454: .word s_data_menu_overlay_6_0211dccc
_0211D458: .word s_mo000_00_overlay_6_0211dcd8
_0211D45C: .word s_ma005_00_overlay_6_0211dce4

	arm_func_start ov6_0211D460
ov6_0211D460: ; 0x0211D460
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _0211D4A0
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0211D620 ; =s_BGS_overlay_6_0211dcf0
	ldr r2, _0211D624 ; =s_data_menu_mo000_bg_LZ_bin_overlay_6_0211dcf4
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r4, r0
	arm_func_end ov6_0211D460
_0211D4A0:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _0211D4C8
	ldr r1, _0211D628 ; =s_BGS_mo000_NCGR_overlay_6_0211dd10
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
	mov r5, r0
_0211D4C8:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _0211D4F0
	ldr r1, _0211D62C ; =s_BGS_mo000_NCLR_overlay_6_0211dd20
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov r6, r0
_0211D4F0:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _0211D518
	ldr r1, _0211D630 ; =s_BGS_mo000_02_NSCR_overlay_6_0211dd30
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r7, r0
_0211D518:
	mov r0, #0xbc
	bl _Znwm
	movs r8, r0
	beq _0211D540
	ldr r1, _0211D634 ; =s_BGS_mo000_03_NSCR_overlay_6_0211dd44
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r8, r0
_0211D540:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [r7, #0xb8]
	ldr r2, [r5, #0xb8]
	ldr r3, [r6, #0xb8]
	mov r0, #2
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [r8, #0xb8]
	mov r3, r2
	mov r0, #3
	bl NNS_G2dBGSetupEx
	cmp r7, #0
	beq _0211D5B4
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D5B4:
	cmp r8, #0
	beq _0211D5CC
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D5CC:
	cmp r5, #0
	beq _0211D5E4
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D5E4:
	cmp r6, #0
	beq _0211D5FC
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D5FC:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211D620: .word s_BGS_overlay_6_0211dcf0
_0211D624: .word s_data_menu_mo000_bg_LZ_bin_overlay_6_0211dcf4
_0211D628: .word s_BGS_mo000_NCGR_overlay_6_0211dd10
_0211D62C: .word s_BGS_mo000_NCLR_overlay_6_0211dd20
_0211D630: .word s_BGS_mo000_02_NSCR_overlay_6_0211dd30
_0211D634: .word s_BGS_mo000_03_NSCR_overlay_6_0211dd44

	arm_func_start ov6_0211D638
ov6_0211D638: ; 0x0211D638
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov ip, #0x4000000
	ldr r1, [ip]
	add r0, ip, #0x50
	bic r1, r1, #0x1f00
	orr r1, r1, #0x1d00
	str r1, [ip]
	ldrh r2, [ip, #0xa]
	mov lr, #0x17
	mov r1, #4
	bic r2, r2, #3
	strh r2, [ip, #0xa]
	ldrh r4, [ip, #8]
	mov r2, #0x1c
	mov r3, #8
	bic r4, r4, #3
	orr r4, r4, #1
	strh r4, [ip, #8]
	ldrh r4, [ip, #0xc]
	bic r4, r4, #3
	orr r4, r4, #2
	strh r4, [ip, #0xc]
	ldrh r4, [ip, #0xe]
	bic r4, r4, #3
	orr r4, r4, #3
	strh r4, [ip, #0xe]
	str lr, [sp]
	bl G2x_SetBlendAlpha_
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov6_0211D638

	arm_func_start ov6_0211D6B4
ov6_0211D6B4: ; 0x0211D6B4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x68
	ldr r6, _0211D880 ; =DAT_overlay_6_0211dc08
	add r5, sp, #0x14
	mov sb, r0
	mov r4, #5
	arm_func_end ov6_0211D6B4
_0211D6CC:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0211D6CC
	ldr r0, [r6]
	mov r6, #0x240
	str r0, [r5]
	ldr r0, [sb, #0x70]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C3D0
	ldr r0, [sb, #0x70]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r3, r1
	mov r2, #0xc
	bl sub_0200C408
	ldr r0, [sb, #0x70]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C680
	mov r7, #0
	add r8, sp, #0x14
	mov r5, r7
	mov r4, #2
_0211D738:
	ldr r0, [r8, #8]
	mov r1, r7
	str r0, [sp]
	ldr r0, [r8, #0xc]
	stmib sp, {r0, r6}
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldr r0, [sb, #0x70]
	ldmia r8, {r2, r3}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C6C8
	add r7, r7, #1
	ldr r1, [r8]
	ldr r0, [r8, #4]
	cmp r7, #3
	mla r6, r1, r0, r6
	add r8, r8, #0x1c
	blt _0211D738
	ldr r1, [sp, #0x2c]
	mov r0, #1
	str r1, [sp]
	ldr r2, [sb, #0x88]
	mov r1, #0
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x18c]
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sb, #0x70]
	ldr r2, [sp, #0x24]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	ldr r3, [sp, #0x28]
	bl sub_0200C7A4
	ldr r0, [sp, #0x48]
	mov r1, #1
	str r0, [sp]
	ldr r2, [sb, #0x88]
	mov r0, #0
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x194]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sb, #0x70]
	ldr r2, [sp, #0x40]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	ldr r3, [sp, #0x44]
	bl sub_0200C7A4
	ldr r0, [sp, #0x64]
	mov r2, #1
	str r0, [sp]
	ldr r1, [sb, #0x88]
	mov r0, #0
	ldr r3, [r1, #8]
	mov r1, #2
	ldr r3, [r3, #0x19c]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sb, #0x70]
	ldr r2, [sp, #0x5c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	ldr r3, [sp, #0x60]
	bl sub_0200C7A4
	ldr r0, [sb, #0x70]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [sb, #0x70]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	add sp, sp, #0x68
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0211D880: .word DAT_overlay_6_0211dc08

	arm_func_start ov6_0211D884
ov6_0211D884: ; 0x0211D884
	ldr r0, [r0, #0x70]
	ldr ip, _0211D898 ; =FUN_020092D4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bx ip
	.align 2, 0
_0211D898: .word _ZN17UnkClass_020091E812sub_020092D4Ev
	arm_func_end ov6_0211D884

	arm_func_start ov6_0211D89C
ov6_0211D89C: ; 0x0211D89C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x84]
	bl sub_02027640
	ldr r0, [r4, #4]
	bl sub_0200F64C
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0211D8D4
	subs r0, r0, #1
	str r0, [r4, #0x74]
	bne _0211DBC8
	mov r0, #6
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov6_0211D89C
_0211D8D4:
	ldr r1, [r4, #0x70]
	ldr r0, [r4, #0x3c]
	ldr r5, [r1, #0x14]
	bl sub_0200EB84
	cmp r0, #0
	bne _0211D900
	ldrh r0, [r5, #2]
	and r0, r0, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211D950
_0211D900:
	ldr r0, [r4, #0x70]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #0x70]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	mov r1, #0x1e
	str r1, [r4, #0x74]
	ldr r0, [r4, #0x70]
	add r1, r1, #0xe5
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	b _0211DBC8
_0211D950:
	mov r5, #0
_0211D954:
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #0xc]
	bl sub_0200EB84
	cmp r0, #0
	beq _0211DB10
	cmp r5, #0
	beq _0211D984
	cmp r5, #1
	beq _0211D9E8
	cmp r5, #2
	beq _0211DA4C
	b _0211DAAC
_0211D984:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x40]
	mov r2, #0
	bl sub_0200F628
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x44]
	mov r2, #0xd
	bl sub_0200F628
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x48]
	mov r2, #0xf
	bl sub_0200F628
	mov r2, #3
	str r2, [r4, #0x80]
	ldr r0, [r4, #0x70]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_0201926C
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x80]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	str r1, [r0, #0x74]
	b _0211DAAC
_0211D9E8:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x40]
	mov r2, #1
	bl sub_0200F628
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x44]
	mov r2, #0xc
	bl sub_0200F628
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x48]
	mov r2, #0xf
	bl sub_0200F628
	mov r1, #2
	str r1, [r4, #0x80]
	ldr r0, [r4, #0x70]
	mov r2, r1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_0201926C
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x80]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	str r1, [r0, #0x74]
	b _0211DAAC
_0211DA4C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x40]
	mov r2, #1
	bl sub_0200F628
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x44]
	mov r2, #0xd
	bl sub_0200F628
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x48]
	mov r2, #0xe
	bl sub_0200F628
	mov r2, #1
	str r2, [r4, #0x80]
	ldr r0, [r4, #0x70]
	mov r1, #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_0201926C
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x80]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	str r1, [r0, #0x74]
_0211DAAC:
	ldr r0, [r4, #0x70]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr r0, [r4, #0x70]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200A088Em
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x80]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AA04El
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x70]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, #1
	bl _ZN17UnkClass_020091E812sub_0200AD34Emmmm
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0211DB10:
	add r5, r5, #1
	cmp r5, #3
	blt _0211D954
	mov r5, #3
_0211DB20:
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #0xc]
	bl sub_0200EB84
	cmp r0, #0
	beq _0211DBBC
	ldr r1, [r4, #0x7c]
	sub r0, r5, #3
	cmp r1, r0
	beq _0211DBB4
	str r0, [r4, #0x7c]
	add r0, r4, r5, lsl #2
	ldr r2, [r0, #0xc]
	ldr r0, [r4, #0x38]
	ldrsh r1, [r2, #0xc]
	ldrsh r2, [r2, #0xe]
	bl sub_0200EB28
	ldr r0, [r4, #0x70]
	ldr r2, [r4, #0x7c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #1
	bl sub_0201926C
	ldr r0, [r4, #0x70]
	ldr r2, [r4, #0x7c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r1, #0
	str r2, [r0, #0x70]
	ldr r0, [r4, #0x70]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200978CEm
	ldr r0, [r4, #0x70]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_0211DBB4:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0211DBBC:
	add r5, r5, #1
	cmp r5, #0xb
	blt _0211DB20
_0211DBC8:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov6_0211DBD0
ov6_0211DBD0: ; 0x0211DBD0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x84]
	bl sub_02027674
	ldr r0, [r4, #4]
	bl sub_0200F71C
	ldr r0, [r4, #8]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}
	arm_func_end ov6_0211DBD0

	arm_func_start ov6_0211DBF4
ov6_0211DBF4: ; 0x0211DBF4
	ldr ip, _0211DBFC ; =FUN_02007D98
	bx ip
	.align 2, 0
_0211DBFC: .word sub_02007D98
	arm_func_end ov6_0211DBF4

	arm_func_start ov6_0211DC00
ov6_0211DC00: ; 0x0211DC00
	mov r0, #4
	bx lr
	arm_func_end ov6_0211DC00
	; 0x0211DC08

    .rodata

    .global DAT_overlay_6_0211dc08
DAT_overlay_6_0211dc08: ; 0x0211DC08
	.byte 0x0C, 0x00, 0x00, 0x00

    .global DAT_overlay_6_0211dc0c
DAT_overlay_6_0211dc0c: ; 0x0211DC0C
	.byte 0x02, 0x00, 0x00, 0x00

    .global DAT_overlay_6_0211dc10
DAT_overlay_6_0211dc10: ; 0x0211DC10
	.byte 0x0A, 0x00, 0x00, 0x00

    .global DAT_overlay_6_0211dc14
DAT_overlay_6_0211dc14: ; 0x0211DC14
	.byte 0x01, 0x00, 0x00, 0x00

    .global DAT_overlay_6_0211dc18
DAT_overlay_6_0211dc18: ; 0x0211DC18
	.byte 0x04, 0x00, 0x00, 0x00

    .global DAT_overlay_6_0211dc1c
DAT_overlay_6_0211dc1c: ; 0x0211DC1C
	.byte 0x03, 0x00, 0x00, 0x00

    .global DAT_overlay_6_0211dc20
DAT_overlay_6_0211dc20: ; 0x0211DC20
	.byte 0x01, 0x00, 0x00, 0x00

    .global DAT_overlay_6_0211dc24
DAT_overlay_6_0211dc24: ; 0x0211DC24
	.byte 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00

    .section .sinit,4 ; 0x0211DC5C

    .data

    .global PTR_ptr_FUN_020835bc_overlay_6_0211dc60
PTR_ptr_FUN_020835bc_overlay_6_0211dc60: ; 0x0211DC60
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_12COptionScene_overlay_6_0211dc6c
	.word PTR_ptr_FUN_02083578_0208a804

    .global s_12COptionScene_overlay_6_0211dc6c
s_12COptionScene_overlay_6_0211dc6c: ; 0x0211DC6C
	.asciz "12COptionScene"

    .global DAT_overlay_6_0211DC7B
DAT_overlay_6_0211DC7B:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_6_0211dc60

    .global ptr_FUN_overlay_23_0211ca6c_overlay_6_0211dc84
ptr_FUN_overlay_23_0211ca6c_overlay_6_0211dc84: ; 0x0211DC84
	.word ov6_0211CA6C

    .global ptr_FUN_overlay_23_0211cbdc_overlay_6_0211dc88
ptr_FUN_overlay_23_0211cbdc_overlay_6_0211dc88: ; 0x0211DC88
	.word ov6_0211CBDC

    .global ptr_FUN_overlay_6_0211d89c_overlay_6_0211dc8c
ptr_FUN_overlay_6_0211d89c_overlay_6_0211dc8c: ; 0x0211DC8C
	.word ov6_0211D89C

    .global ptr_FUN_overlay_6_0211dbd0_overlay_6_0211dc90
ptr_FUN_overlay_6_0211dbd0_overlay_6_0211dc90: ; 0x0211DC90
	.word ov6_0211DBD0

    .global ptr_thunk_FUN_02001210_overlay_6_0211dc94
ptr_thunk_FUN_02001210_overlay_6_0211dc94: ; 0x0211DC94
	.word sub_02007CD4
	.word ov6_0211DBF4

    .global ptr_FUN_02007cc4_overlay_6_0211dc9c
ptr_FUN_02007cc4_overlay_6_0211dc9c: ; 0x0211DC9C
	.word sub_02007CC4

    .global ptr_FUN_overlay_19_0211cd54_overlay_6_0211dca0
ptr_FUN_overlay_19_0211cd54_overlay_6_0211dca0: ; 0x0211DCA0
	.word ov6_0211CD54

    .global ptr_FUN_overlay_6_0211ce24_overlay_6_0211dca4
ptr_FUN_overlay_6_0211ce24_overlay_6_0211dca4: ; 0x0211DCA4
	.word ov6_0211CE24
	.word ov6_0211D884
	.word ov6_0211DC00

    .global s_data_message_etc_menu_mes_overlay_6_0211dcb0
s_data_message_etc_menu_mes_overlay_6_0211dcb0: ; 0x0211DCB0
	.asciz "data/message/etc/menu_mes"

    .global DAT_overlay_6_0211DCCA
DAT_overlay_6_0211DCCA:
	.byte 0x00, 0x00

    .global s_data_menu_overlay_6_0211dccc
s_data_menu_overlay_6_0211dccc: ; 0x0211DCCC
	.asciz "data/menu"

    .global DAT_overlay_6_0211DCD6
DAT_overlay_6_0211DCD6:
	.byte 0x00, 0x00

    .global s_mo000_00_overlay_6_0211dcd8
s_mo000_00_overlay_6_0211dcd8: ; 0x0211DCD8
	.asciz "mo000_00"

    .global DAT_overlay_6_0211DCE1
DAT_overlay_6_0211DCE1:
	.byte 0x00, 0x00, 0x00

    .global s_ma005_00_overlay_6_0211dce4
s_ma005_00_overlay_6_0211dce4: ; 0x0211DCE4
	.asciz "ma005_00"

    .global DAT_overlay_6_0211DCED
DAT_overlay_6_0211DCED:
	.byte 0x00, 0x00, 0x00

    .global s_BGS_overlay_6_0211dcf0
s_BGS_overlay_6_0211dcf0: ; 0x0211DCF0
	.asciz "BGS"

    .global s_data_menu_mo000_bg_LZ_bin_overlay_6_0211dcf4
s_data_menu_mo000_bg_LZ_bin_overlay_6_0211dcf4: ; 0x0211DCF4
	.asciz "data/menu/mo000_bg_LZ.bin"

    .global DAT_overlay_6_0211DD0E
DAT_overlay_6_0211DD0E:
	.byte 0x00, 0x00

    .global s_BGS_mo000_NCGR_overlay_6_0211dd10
s_BGS_mo000_NCGR_overlay_6_0211dd10: ; 0x0211DD10
	.asciz "BGS:mo000.NCGR"

    .global DAT_overlay_6_0211DD1F
DAT_overlay_6_0211DD1F:
	.byte 0x00

    .global s_BGS_mo000_NCLR_overlay_6_0211dd20
s_BGS_mo000_NCLR_overlay_6_0211dd20: ; 0x0211DD20
	.asciz "BGS:mo000.NCLR"

    .global DAT_overlay_6_0211DD2F
DAT_overlay_6_0211DD2F:
	.byte 0x00

    .global s_BGS_mo000_02_NSCR_overlay_6_0211dd30
s_BGS_mo000_02_NSCR_overlay_6_0211dd30: ; 0x0211DD30
	.asciz "BGS:mo000_02.NSCR"

    .global DAT_overlay_6_0211DD42
DAT_overlay_6_0211DD42:
	.byte 0x00, 0x00

    .global s_BGS_mo000_03_NSCR_overlay_6_0211dd44
s_BGS_mo000_03_NSCR_overlay_6_0211dd44: ; 0x0211DD44
	.asciz "BGS:mo000_03.NSCR"
	; 0x0211DD56
