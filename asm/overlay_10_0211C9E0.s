    .include "macros.inc"
    .include "include/overlay_10.inc"

    .text

	arm_func_start ov10_0211C9E0
ov10_0211C9E0: ; 0x0211C9E0
	bx lr
	arm_func_end ov10_0211C9E0

	arm_func_start ov10_0211C9E4
ov10_0211C9E4: ; 0x0211C9E4
	mov r0, #1
	bx lr
	arm_func_end ov10_0211C9E4

	arm_func_start ov10_0211C9EC
ov10_0211C9EC: ; 0x0211C9EC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov10_0211C9EC

	arm_func_start ov10_0211CA08
ov10_0211CA08: ; 0x0211CA08
	bx lr
	arm_func_end ov10_0211CA08

	arm_func_start ov10_0211CA0C
ov10_0211CA0C: ; 0x0211CA0C
	bx lr
	arm_func_end ov10_0211CA0C

	arm_func_start ov10_0211CA10
ov10_0211CA10: ; 0x0211CA10
	bx lr
	arm_func_end ov10_0211CA10

	arm_func_start ov10_0211CA14
ov10_0211CA14: ; 0x0211CA14
	bx lr
	arm_func_end ov10_0211CA14

	arm_func_start ov10_0211CA18
ov10_0211CA18: ; 0x0211CA18
	bx lr
	arm_func_end ov10_0211CA18

	arm_func_start ov10_0211CA1C
ov10_0211CA1C: ; 0x0211CA1C
	bx lr
	arm_func_end ov10_0211CA1C

	arm_func_start ov10_0211CA20
ov10_0211CA20: ; 0x0211CA20
	mov r0, #6
	bx lr
	arm_func_end ov10_0211CA20

	arm_func_start ov10_0211CA28
ov10_0211CA28: ; 0x0211CA28
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov10_0211CA28
	; 0x0211CA3C

    .section .sinit,4 ; 0x0211CA3C

    .data

    .global PTR_ptr_FUN_020835bc_overlay_10_0211ca40
PTR_ptr_FUN_020835bc_overlay_10_0211ca40: ; 0x0211CA40
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8

    .global ptr_FUN_overlay_26_0211ca4c_overlay_10_0211ca44
ptr_FUN_overlay_26_0211ca4c_overlay_10_0211ca44: ; 0x0211CA44
	.word s_17CFieldToMenuScene_overlay_10_0211ca4c
	.word PTR_ptr_FUN_02083578_0208a804

    .global s_17CFieldToMenuScene_overlay_10_0211ca4c
s_17CFieldToMenuScene_overlay_10_0211ca4c: ; 0x0211CA4C
	.asciz "17CFieldToMenuScene"

    .global DAT_overlay_10_0211CA60
DAT_overlay_10_0211CA60:

    .global _ZTV17CFieldToMenuScene
_ZTV17CFieldToMenuScene: ; 0x0211CA60
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_10_0211ca40

    .global CFieldToMenuScene_vtable
CFieldToMenuScene_vtable: ; 0x0211CA68
	.word ov10_0211CA28

    .global ptr_FUN_overlay_10_0211c9ec_overlay_10_0211ca6c
ptr_FUN_overlay_10_0211c9ec_overlay_10_0211ca6c: ; 0x0211CA6C
	.word ov10_0211C9EC
	.word ov10_0211C9E4

    .global ptr_FUN_overlay_7_0211ca14_overlay_10_0211ca74
ptr_FUN_overlay_7_0211ca14_overlay_10_0211ca74: ; 0x0211CA74
	.word ov10_0211CA14
	.word ov10_0211CA10

    .global ptr_FUN_overlay_11_0211ca0c_overlay_10_0211ca7c
ptr_FUN_overlay_11_0211ca0c_overlay_10_0211ca7c: ; 0x0211CA7C
	.word ov10_0211CA0C

    .global ptr_FUN_overlay_20_0211ca08_overlay_10_0211ca80
ptr_FUN_overlay_20_0211ca08_overlay_10_0211ca80: ; 0x0211CA80
	.word ov10_0211CA08

    .global ptr_FUN_overlay_20_0211ca1c_overlay_10_0211ca84
ptr_FUN_overlay_20_0211ca1c_overlay_10_0211ca84: ; 0x0211CA84
	.word ov10_0211CA1C

    .global ptr_FUN_overlay_0_0211c9e0_overlay_10_0211ca88
ptr_FUN_overlay_0_0211c9e0_overlay_10_0211ca88: ; 0x0211CA88
	.word ov10_0211C9E0
	.word ov10_0211CA18
	.word ov10_0211CA20
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0211CAA0
