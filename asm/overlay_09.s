    .include "asm/macros.inc"
    .include "asm/include/overlay_09.inc"

    .text

	arm_func_start ov9_0211C9E0
ov9_0211C9E0: ; 0x0211C9E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02007C98
	ldr r1, _0211CA08 ; =ptr_FUN_overlay_11_0211ca0c_overlay_9_0211db24
	mov r0, r5
	stmia r5, {r1, r4}
	bl ov9_0211CAAC
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA08: .word ptr_FUN_overlay_11_0211ca0c_overlay_9_0211db24
	arm_func_end ov9_0211C9E0

	arm_func_start ov9_0211CA0C
ov9_0211CA0C: ; 0x0211CA0C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0211CA54 ; =ptr_FUN_overlay_11_0211ca0c_overlay_9_0211db24
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211CA44
	beq _0211CA3C
	mov r0, r4
	bl ov9_0211CCB8
	mov r0, r4
	bl sub_02001470
	arm_func_end ov9_0211CA0C
_0211CA3C:
	mov r0, #0
	str r0, [r5, #8]
_0211CA44:
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA54: .word ptr_FUN_overlay_11_0211ca0c_overlay_9_0211db24

	arm_func_start ov9_0211CA58
ov9_0211CA58: ; 0x0211CA58
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0211CAA8 ; =ptr_FUN_overlay_11_0211ca0c_overlay_9_0211db24
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211CA90
	beq _0211CA88
	mov r0, r4
	bl ov9_0211CCB8
	mov r0, r4
	bl sub_02001470
	arm_func_end ov9_0211CA58
_0211CA88:
	mov r0, #0
	str r0, [r5, #8]
_0211CA90:
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	bl sub_02001470
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CAA8: .word ptr_FUN_overlay_11_0211ca0c_overlay_9_0211db24

	arm_func_start ov9_0211CAAC
ov9_0211CAAC: ; 0x0211CAAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x58
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211CACC
	ldr r1, [r4, #4]
	bl ov9_0211CCA0
	arm_func_end ov9_0211CAAC
_0211CACC:
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}

	arm_func_start ov9_0211CAD4
ov9_0211CAD4: ; 0x0211CAD4
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
	mov r0, #0
	bl NitroSDK_gx_GX_SetBankForTex
	mov r0, #0
	bl NitroSDK_gx_GX_SetBankForTexPltt
	mov r0, #2
	bl sub_02061954
	mov r0, #1
	bl sub_020616C4
	mov r0, #1
	mov r1, #0
	mov r2, r1
	bl sub_02061500
	mov r0, #0x10
	bl NitroSDK_gx_GX_SetBankForBGExtPltt
	mov r0, #4
	bl sub_02062110
	mov r0, #8
	bl sub_020621B8
	mov r1, #0
	str r1, [sp]
	ldr r0, _0211CBF8 ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl sub_02062C10
	ldr ip, _0211CBFC ; =0x04000060
	ldr r0, _0211CC00 ; =0xFFFFFDF1
	ldrh r2, [ip]
	add r3, ip, #0x2a4
	mov r1, #0x4000000
	bic r2, r2, #0x3000
	orr r2, r2, #8
	strh r2, [ip]
	ldrh r2, [ip]
	bic r2, r2, #0x3000
	orr r2, r2, #0x10
	strh r2, [ip]
	ldrh r2, [r3]
	and r0, r2, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [r3]
	ldr r0, [r1]
	bic r0, r0, #0x38000000
	str r0, [r1]
	ldr r0, [r1]
	bic r0, r0, #0x7000000
	str r0, [r1]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	str r0, [r1]
	add r1, r1, #0x1000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	str r0, [r1]
	bl sub_020614B8
	ldr r1, _0211CC04 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CBF8: .word 0x04000050
_0211CBFC: .word 0x04000060
_0211CC00: .word 0xFFFFFDF1
_0211CC04: .word 0x04001000
	arm_func_end ov9_0211CAD4

	arm_func_start ov9_0211CC08
ov9_0211CC08: ; 0x0211CC08
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov9_0211D484
	ldr r0, [r4, #8]
	bl ov9_0211D9F0
	ldmia sp!, {r4, pc}
	arm_func_end ov9_0211CC08

	arm_func_start ov9_0211CC2C
ov9_0211CC2C: ; 0x0211CC2C
	bx lr
	arm_func_end ov9_0211CC2C

	arm_func_start ov9_0211CC30
ov9_0211CC30: ; 0x0211CC30
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211CC60
	bl ov9_0211CD40
	ldr r0, [r4, #8]
	bl ov9_0211DAC0
	mvn r1, #0
	cmp r0, r1
	movne r0, #1
	ldmneia sp!, {r4, pc}
	arm_func_end ov9_0211CC30
_0211CC60:
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov9_0211CC68
ov9_0211CC68: ; 0x0211CC68
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov9_0211CE80
	ldmia sp!, {r3, pc}
	arm_func_end ov9_0211CC68

	arm_func_start ov9_0211CC80
ov9_0211CC80: ; 0x0211CC80
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov9_0211CEF0
	ldmia sp!, {r3, pc}
	arm_func_end ov9_0211CC80

	arm_func_start ov9_0211CC98
ov9_0211CC98: ; 0x0211CC98
	mov r0, #0xb
	bx lr
	arm_func_end ov9_0211CC98

	arm_func_start ov9_0211CCA0
ov9_0211CCA0: ; 0x0211CCA0
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x54]
	bl ov9_0211CCCC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov9_0211CCA0

	arm_func_start ov9_0211CCB8
ov9_0211CCB8: ; 0x0211CCB8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov9_0211CF48
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov9_0211CCB8

	arm_func_start ov9_0211CCCC
ov9_0211CCCC: ; 0x0211CCCC
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r4, r0
	strh r2, [r4]
	str r2, [r4, #0x24]
	str r2, [r4, #0x28]
	str r2, [r4, #0x2c]
	str r2, [r4, #0x30]
	str r2, [r4, #0x34]
	str r2, [r4, #0x1c]
	str r2, [r4, #0x20]
	str r2, [r4, #0x18]
	mov r1, r2
	arm_func_end ov9_0211CCCC
_0211CD00:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x3c]
	cmp r2, #2
	blt _0211CD00
	str r1, [r4, #4]
	str r1, [r4, #0x10]
	mov r0, #0x68
	str r1, [r4, #0x50]
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211CD38
	ldr r1, [r4, #0x54]
	bl sub_0202A510
_0211CD38:
	str r0, [r4, #0x14]
	ldmia sp!, {r4, pc}

	arm_func_start ov9_0211CD40
ov9_0211CD40: ; 0x0211CD40
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0211CD58
	bl sub_0200F64C
	arm_func_end ov9_0211CD40
_0211CD58:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0211CD68
	bl sub_0200F64C
_0211CD68:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0211CD78
	bl sub_0201F930
_0211CD78:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0211CD88
	bl sub_0202A5A8
_0211CD88:
	ldrh r0, [r4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0211CD98: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _0211CE74 ; case 1
	ldmia sp!, {r4, pc} ; case 2
	b _0211CDE0 ; case 3
	b _0211CDB0 ; case 4
	ldmia sp!, {r4, pc} ; case 5
_0211CDB0:
	mov r0, r4
	bl ov9_0211D754
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r1, [r4, #0x40]
	mov r2, #0
	mov r0, r4
	str r2, [r1, #0x14]
	bl ov9_0211D790
	mov r0, #3
	strh r0, [r4]
	ldmia sp!, {r4, pc}
_0211CDE0:
	ldr r0, [r4, #0x54]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x54]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B6A4
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x54]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B6D4
	cmp r0, #0
	bne _0211CE44
	mov r0, r4
	bl ov9_0211D66C
	ldrh r1, [r4, #0x48]
	mov r0, r4
	bl ov9_0211D8F8
	ldmia sp!, {r4, pc}
_0211CE44:
	mov r0, #1
	strh r0, [r4]
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov r3, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r3, #0x10
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	ldmia sp!, {r4, pc}
_0211CE74:
	mov r0, r4
	bl ov9_0211D568
	ldmia sp!, {r4, pc}

	arm_func_start ov9_0211CE80
ov9_0211CE80: ; 0x0211CE80
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0211CE98
	bl sub_0201F988
	arm_func_end ov9_0211CE80
_0211CE98:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0211CEA8
	bl sub_0202A5EC
_0211CEA8:
	ldrh r0, [r4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0211CEB8: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _0211CEE4 ; case 1
	b _0211CED0 ; case 2
	b _0211CEE4 ; case 3
	b _0211CEE4 ; case 4
	ldmia sp!, {r4, pc} ; case 5
_0211CED0:
	mov r0, r4
	bl ov9_0211DA78
	cmp r0, #0
	moveq r0, #5
	streqh r0, [r4]
_0211CEE4:
	mov r0, r4
	bl ov9_0211D0A0
	ldmia sp!, {r4, pc}

	arm_func_start ov9_0211CEF0
ov9_0211CEF0: ; 0x0211CEF0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0211CF08
	bl sub_0202A5F8
	arm_func_end ov9_0211CEF0
_0211CF08:
	mov r0, r4
	bl ov9_0211D690
	ldmia sp!, {r4, pc}

	arm_func_start ov9_0211CF14
ov9_0211CF14: ; 0x0211CF14
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x14]
	mov r2, #4
	bl sub_0202B50C
	ldr r0, [r4, #0x54]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C588
	ldmia sp!, {r4, pc}
	arm_func_end ov9_0211CF14

	arm_func_start ov9_0211CF48
ov9_0211CF48: ; 0x0211CF48
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x54]
	mov r1, #0x1e
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	ldr r0, [r4, #0x54]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C3D0
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _0211CF9C
	beq _0211CF94
	mov r0, r5
	bl sub_0201CAF0
	mov r0, r5
	bl sub_02001470
	arm_func_end ov9_0211CF48
_0211CF94:
	mov r0, #0
	str r0, [r4, #0x18]
_0211CF9C:
	ldr r5, [r4, #0x20]
	cmp r5, #0
	beq _0211CFC4
	beq _0211CFBC
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl sub_02001470
_0211CFBC:
	mov r0, #0
	str r0, [r4, #0x20]
_0211CFC4:
	ldr r5, [r4, #0x24]
	cmp r5, #0
	beq _0211CFEC
	beq _0211CFE4
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl sub_02001470
_0211CFE4:
	mov r0, #0
	str r0, [r4, #0x24]
_0211CFEC:
	ldr r5, [r4, #0x30]
	cmp r5, #0
	beq _0211D014
	beq _0211D00C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl sub_02001470
_0211D00C:
	mov r0, #0
	str r0, [r4, #0x30]
_0211D014:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0211D02C
	bl sub_0200147C
	mov r0, #0
	str r0, [r4, #0x34]
_0211D02C:
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0211D054
	beq _0211D04C
	mov r0, r5
	bl sub_0202A528
	mov r0, r5
	bl sub_02001470
_0211D04C:
	mov r0, #0
	str r0, [r4, #0x14]
_0211D054:
	ldr r0, [r4, #0x54]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	ldr r0, [r4, #0x54]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	ldr r0, [r4, #0x54]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AC90
	ldr r0, [r4, #0x54]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_020092D4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov9_0211D0A0
ov9_0211D0A0: ; 0x0211D0A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0211D0B8
	bl sub_0200F71C
	arm_func_end ov9_0211D0A0
_0211D0B8:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start ov9_0211D0CC
ov9_0211D0CC: ; 0x0211D0CC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x24
	mov r1, #0x4000000
	ldr r3, [r1]
	ldr r2, _0211D46C ; =0xFFCFFFEF
	bic r3, r3, #0x1f00
	orr r3, r3, #0x1500
	str r3, [r1]
	ldr r4, [r1]
	mov r3, #0
	and r2, r4, r2
	orr r2, r2, #0x10
	str r2, [r1]
	str r3, [r1, #0x10]
	str r3, [r1, #0x14]
	str r3, [r1, #0x18]
	str r3, [r1, #0x1c]
	ldrh r2, [r1, #0xc]
	mov r4, r0
	and r0, r2, #0x43
	orr r0, r0, #0x990
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #8]
	bic r0, r0, #3
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	bic r0, r0, #3
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xc]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #0xc]
	ldr r0, [r4, #0x54]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020345D4
	ldr ip, [r4, #0x54]
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
	bl sub_02009328
	ldr r0, [r4, #0x54]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	ldr r0, [r4, #0x54]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C3D0
	ldr r0, [r4, #0x54]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r2, #0xc
	mov r3, #6
	bl sub_0200C408
	ldr r0, [r4, #0x54]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C680
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r0, [r4, #0x54]
	mov r2, #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C6C8
	mov r3, #0
	mov r2, #0x20
	mov r1, #5
	str r3, [sp, #0x20]
	strb r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r0, sp, #0x1c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	add r2, sp, #0x18
	add r3, sp, #0x20
	mov r1, #2
	bl sub_0202A724
	ldr r1, [sp, #0x1c]
	mov r0, #0x44
	add r1, r1, #2
	str r1, [sp, #0x1c]
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211D2B8
	ldr r2, [r4, #0x54]
	mov r1, #0x40
	str r1, [sp]
	ldrb r3, [sp, #0x18]
	add r1, r2, #0x1000
	add ip, r2, #0x24
	ldr r2, [r1, #0x4a8]
	add r1, ip, r3, lsl #3
	mov r3, #0
	bl sub_0200ECD0
	arm_func_end ov9_0211D0CC
_0211D2B8:
	str r0, [r4, #0x30]
	ldr r0, [sp, #0x1c]
	ldr r1, _0211D470 ; =s_data_menu_overlay_9_0211df2c
	str r0, [sp]
	ldr r3, [sp, #0x20]
	ldr r0, [r4, #0x30]
	mov r2, r3, asr #4
	add r3, r3, r2, lsr #27
	ldr r2, _0211D474 ; =s_ma005_00_overlay_9_0211df38
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [sp, #0x20]
	mov r1, #0
	add r0, r2, r0
	str r0, [sp, #0x20]
	str r1, [sp]
	ldr r0, [r4, #0x30]
	mov r2, #0xf0
	mov r3, #0x10
	bl sub_0200F4FC
	mov r1, #0x20
	str r0, [r4, #0x3c]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x3c]
	mov r2, r1
	bl sub_0200EBF4
	ldr r1, [r4, #0x30]
	ldr r0, [sp, #0x1c]
	ldrb r3, [sp, #0x18]
	ldr r2, [r1, #0x30]
	add r1, r0, #1
	add r2, r3, r2
	mov r0, #0x44
	strb r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211D37C
	ldr r2, [r4, #0x54]
	mov r1, #0x40
	str r1, [sp]
	ldrb r3, [sp, #0x18]
	add r1, r2, #0x1000
	add ip, r2, #0x24
	ldr r2, [r1, #0x4a8]
	add r1, ip, r3, lsl #3
	mov r3, #0
	bl sub_0200ECD0
_0211D37C:
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x1c]
	ldr r1, _0211D470 ; =s_data_menu_overlay_9_0211df2c
	str r0, [sp]
	ldr r3, [sp, #0x20]
	ldr r0, [r4, #0x24]
	mov r2, r3, asr #4
	add r3, r3, r2, lsr #27
	ldr r2, _0211D478 ; =s_mam000_01_overlay_9_0211df44
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [sp, #0x20]
	mov r1, #0
	add r0, r2, r0
	str r0, [sp, #0x20]
	str r1, [sp]
	ldr r0, [r4, #0x24]
	mov r2, #0x80
	mov r3, #0xb0
	bl sub_0200F4FC
	str r0, [r4, #0x40]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x40]
	mov r1, #0x28
	mov r2, #0x18
	mov r3, #0
	bl sub_0200EBF4
	ldr r0, [r4, #0x24]
	ldr r1, _0211D47C ; =MAIN_BSS_0210CA6C
	ldr r2, [r0, #0x24]
	mov r0, #4
	str r2, [r4, #0x44]
	ldr r2, [r4, #0x24]
	ldr r1, [r1]
	ldr r2, [r2, #0x30]
	ldrb r3, [sp, #0x18]
	add r2, r3, r2
	strb r2, [sp, #0x18]
	str r1, [r4, #0x1c]
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211D430
	ldr r1, _0211D480 ; =s_data_message_etc_place_name_overlay_9_0211df50
	bl sub_02021404
_0211D430:
	str r0, [r4, #0x20]
	mov r0, #0x7c
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211D448
	bl sub_0201CA6C
_0211D448:
	str r0, [r4, #0x18]
	bl sub_0201CB0C
	mov r2, #0
	ldr r0, [r4, #0x18]
	mov r3, r2
	mov r1, #0xac
	bl sub_0201CE00
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211D46C: .word 0xFFCFFFEF
_0211D470: .word s_data_menu_overlay_9_0211df2c
_0211D474: .word s_ma005_00_overlay_9_0211df38
_0211D478: .word s_mam000_01_overlay_9_0211df44
_0211D47C: .word MAIN_BSS_0210CA6C
_0211D480: .word s_data_message_etc_place_name_overlay_9_0211df50

	arm_func_start ov9_0211D484
ov9_0211D484: ; 0x0211D484
	stmdb sp!, {r3, lr}
	mov r1, #1
	strh r1, [r0]
	bl ov9_0211D49C
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov9_0211D484

	arm_func_start ov9_0211D49C
ov9_0211D49C: ; 0x0211D49C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov9_0211D0CC
	mov r0, r4
	bl ov9_0211CF14
	ldr r0, [r4, #0x54]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, r4
	bl ov9_0211D4D4
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov9_0211D49C

	arm_func_start ov9_0211D4D4
ov9_0211D4D4: ; 0x0211D4D4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r2, #0
	ldr r1, _0211D564 ; =DAT_overlay_9_0211dcac
	str r2, [sp]
	str r2, [sp, #4]
	mov r4, #1
	mov lr, r2
	arm_func_end ov9_0211D4D4
_0211D4F4:
	mov r5, r2, lsl #4
	ldrh r3, [r1, r5]
	cmp r3, #0
	beq _0211D538
	add r3, r1, r5
	ldrb ip, [r3, #0xb]
	ldr r7, [sp]
	ldr r6, [sp, #4]
	mov r5, lr, lsl ip
	rsb r3, ip, #0x20
	orr r5, r5, r4, lsr r3
	sub r3, ip, #0x20
	orr r5, r5, r4, lsl r3
	orr r7, r7, r4, lsl ip
	orr r3, r6, r5
	str r7, [sp]
	str r3, [sp, #4]
_0211D538:
	add r2, r2, #1
	cmp r2, #0x28
	blo _0211D4F4
	ldr r0, [r0, #0x14]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r1, sp, #0
	bl sub_0202B140
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211D564: .word DAT_overlay_9_0211dcac

	arm_func_start ov9_0211D568
ov9_0211D568: ; 0x0211D568
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x54]
	ldr r0, [r4, #0x3c]
	ldr r1, [r1, #0x14]
	ldrh r1, [r1, #2]
	and r1, r1, #2
	mov r5, r1, lsl #0x10
	bl sub_0200EB84
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	orrs r0, r0, r5, lsr #16
	beq _0211D5C0
	ldr r0, [r4, #0x54]
	ldr r1, _0211D668 ; =0x00000103
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	bl ov9_0211D66C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov9_0211D568
_0211D5C0:
	ldr r0, [r4, #0x40]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0211D5FC
	bl sub_0200EB84
	cmp r0, #0
	beq _0211D5FC
	ldr r0, [r4, #0x54]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	bl ov9_0211D84C
	ldmia sp!, {r3, r4, r5, pc}
_0211D5FC:
	ldr r0, [r4, #0x14]
	add r1, sp, #2
	add r2, sp, #0
	bl sub_0202B5A8
	ldrh r0, [sp, #2]
	cmp r0, #1
	beq _0211D624
	cmp r0, #6
	beq _0211D644
	ldmia sp!, {r3, r4, r5, pc}
_0211D624:
	ldr r0, [r4, #0x54]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	bl ov9_0211D7FC
	ldmia sp!, {r3, r4, r5, pc}
_0211D644:
	ldr r0, [r4, #0x54]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldrh r1, [sp]
	mov r0, r4
	bl ov9_0211D878
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211D668: .word 0x00000103

	arm_func_start ov9_0211D66C
ov9_0211D66C: ; 0x0211D66C
	ldr ip, _0211D67C ; =ov9_0211DA34
	mov r1, #2
	strh r1, [r0]
	bx ip
	.align 2, 0
_0211D67C: .word ov9_0211DA34
	arm_func_end ov9_0211D66C

	arm_func_start ov9_0211D680
ov9_0211D680: ; 0x0211D680
	strh r1, [r0, #0x48]
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end ov9_0211D680

	arm_func_start ov9_0211D690
ov9_0211D690: ; 0x0211D690
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #4]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r5, #4]
	ldrh r0, [r5, #0x48]
	and r4, r0, #0xff
	cmp r4, #0xc8
	subhi r0, r4, #0x9b
	andhi r4, r0, #0xff
	bhi _0211D6F4
	cmp r4, #0x64
	bls _0211D6F4
	ldr r2, _0211D750 ; =0x51EB851F
	mov r0, r4, lsr #0x1f
	smull r1, r3, r2, r4
	add r3, r0, r3, asr #5
	mov r2, #0x64
	smull r0, r1, r2, r3
	sub r3, r4, r0
	and r4, r3, #0xff
	arm_func_end ov9_0211D690
_0211D6F4:
	ldr r0, [r5, #0x54]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C980
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x20]
	add r2, r1, #0x1000
	mov r1, r4
	ldr r4, [r2, #0x494]
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
	bl sub_0200C7A4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211D750: .word 0x51EB851F

	arm_func_start ov9_0211D754
ov9_0211D754: ; 0x0211D754
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1, #8]
	add r0, r0, #1
	str r0, [r1, #8]
	cmp r0, #0xf
	movlt r0, #1
	ldmltia sp!, {r3, pc}
	mov r2, #0
	str r2, [r1, #8]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x44]
	bl sub_0200F628
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov9_0211D754

	arm_func_start ov9_0211D790
ov9_0211D790: ; 0x0211D790
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x54]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	ldr r0, [r4, #0x54]
	ldrh r1, [r4, #0x48]
	add r2, r0, #0x1000
	mov r0, r4
	and r1, r1, #0xff
	ldr r4, [r2, #0x490]
	bl ov9_0211D89C
	mov r3, #0
	ldr r1, _0211D7F8 ; =DAT_overlay_9_0211dcba
	str r3, [sp]
	mov r0, r0, lsl #4
	ldrh r1, [r1, r0]
	mov r2, #1
	mov r0, r4
	mov r3, r2
	bl sub_0200AD34
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211D7F8: .word DAT_overlay_9_0211dcba
	arm_func_end ov9_0211D790

	arm_func_start ov9_0211D7FC
ov9_0211D7FC: ; 0x0211D7FC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x14]
	ldrh r4, [r1, #0x56]
	mov r1, r4
	bl ov9_0211D680
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl ov9_0211D980
	ldrh r1, [r5, #0x4a]
	ldr r0, _0211D848 ; =DAT_overlay_9_0211dcb8
	mov r1, r1, lsl #4
	ldrh r0, [r0, r1]
	cmp r0, #2
	ldreq r0, [r5, #0x40]
	moveq r1, #0
	streq r1, [r0, #0x14]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211D848: .word DAT_overlay_9_0211dcb8
	arm_func_end ov9_0211D7FC

	arm_func_start ov9_0211D84C
ov9_0211D84C: ; 0x0211D84C
	mov r1, r0
	mov r0, #4
	strh r0, [r1]
	mov r0, #0
	str r0, [r1, #8]
	ldr r0, [r1, #0x24]
	ldr ip, _0211D874 ; =FUN_0200F628
	ldr r1, [r1, #0x44]
	mov r2, #1
	bx ip
	.align 2, 0
_0211D874: .word sub_0200F628
	arm_func_end ov9_0211D84C

	arm_func_start ov9_0211D878
ov9_0211D878: ; 0x0211D878
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov9_0211D680
	mov r0, r5
	mov r1, r4
	mov r2, #3
	bl ov9_0211D980
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov9_0211D878

	arm_func_start ov9_0211D89C
ov9_0211D89C: ; 0x0211D89C
	cmp r1, #0x14
	ldr r3, _0211D8F4 ; =DAT_overlay_9_0211dcac
	bne _0211D8C0
	ldr r0, [r0, #0x54]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	ldr r0, [r0, #8]
	cmp r0, #0x28
	movge r1, #0x78
	arm_func_end ov9_0211D89C
_0211D8C0:
	mov r0, #0
_0211D8C4:
	ldrb r2, [r3, #0xb]
	cmp r2, r1
	beq _0211D8E8
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #0x28
	add r3, r3, #0x10
	blt _0211D8C4
_0211D8E8:
	cmp r0, #0x28
	movge r0, #0
	bx lr
	.align 2, 0
_0211D8F4: .word DAT_overlay_9_0211dcac

	arm_func_start ov9_0211D8F8
ov9_0211D8F8: ; 0x0211D8F8
	stmdb sp!, {r4, lr}
	and r1, r1, #0xff
	mov r4, r0
	bl ov9_0211D89C
	mov lr, r0, lsl #4
	ldr ip, _0211D968 ; =DAT_overlay_9_0211dcac
	ldr r3, _0211D96C ; =DAT_overlay_9_0211dcae
	ldr r2, _0211D970 ; =DAT_overlay_9_0211dcb0
	ldr r1, _0211D974 ; =s_sFlying_overlay_9_0211df70
	ldrh ip, [ip, lr]
	ldr r0, _0211D978 ; =MAIN_BSS_020BB1A0
	cmp r1, #0
	ldrsh r3, [r3, lr]
	strh ip, [r0, #0x78]
	ldrsh r2, [r2, lr]
	strh r3, [r0, #0x7a]
	moveq r1, #0
	strh r2, [r0, #0x7c]
	ldr r0, _0211D97C ; =MAIN_BSS_020B26A0
	addeq r0, r0, #0x8000
	streqb r1, [r0, #0xb44]
	beq _0211D95C
	add r0, r0, #0x344
	add r0, r0, #0x8800
	bl MSL_C_string_strcpy
	arm_func_end ov9_0211D8F8
_0211D95C:
	mov r0, #1
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D968: .word DAT_overlay_9_0211dcac
_0211D96C: .word DAT_overlay_9_0211dcae
_0211D970: .word DAT_overlay_9_0211dcb0
_0211D974: .word s_sFlying_overlay_9_0211df70
_0211D978: .word MAIN_BSS_020BB1A0
_0211D97C: .word MAIN_BSS_020B26A0

	arm_func_start ov9_0211D980
ov9_0211D980: ; 0x0211D980
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	mov r4, r2
	bl sub_0202B50C
	cmp r4, #4
	bne _0211D9AC
	ldr r0, [r5, #0x40]
	mov r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov9_0211D980
_0211D9AC:
	ldrh r1, [r5, #0x48]
	mov r0, r5
	and r1, r1, #0xff
	bl ov9_0211D89C
	ldr r1, _0211D9EC ; =DAT_overlay_9_0211dcac
	mov r0, r0, lsl #4
	ldrh r0, [r1, r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r1, #1
	ldr r0, [r5, #0x40]
	moveq r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211D9EC: .word DAT_overlay_9_0211dcac

	arm_func_start ov9_0211D9F0
ov9_0211D9F0: ; 0x0211D9F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
	ldr r0, [r4, #0x54]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end ov9_0211D9F0

	arm_func_start ov9_0211DA34
ov9_0211DA34: ; 0x0211DA34
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #4
	mov r2, #0xf
	bl sub_0200E0E0
	ldr r0, [r4, #0x54]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end ov9_0211DA34

	arm_func_start ov9_0211DA78
ov9_0211DA78: ; 0x0211DA78
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x54]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211DAB0
	ldr r0, [r4, #0x54]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	beq _0211DAB8
	arm_func_end ov9_0211DA78
_0211DAB0:
	mov r0, #1
	ldmia sp!, {r4, pc}
_0211DAB8:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov9_0211DAC0
ov9_0211DAC0: ; 0x0211DAC0
	ldrh r1, [r0]
	cmp r1, #5
	bne _0211DAE0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov9_0211DAC0
_0211DAE0:
	mvn r0, #0
	bx lr
	; 0x0211DAE8

    .section .sinit,4 ; 0x0211DAE8

    .data
PTR_ptr_FUN_020835bc_overlay_9_0211db00: ; 0x0211DB00
	.word ptr_FUN_020835bc_0208f25c
	.word s_12CFlyingScene_overlay_9_0211db0c
	.word PTR_ptr_FUN_02083578_0208a804
s_12CFlyingScene_overlay_9_0211db0c: ; 0x0211DB0C
	.asciz "12CFlyingScene"
_0211DB1B:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_9_0211db00
ptr_FUN_overlay_11_0211ca0c_overlay_9_0211db24: ; 0x0211DB24
	.word ov9_0211CA0C
ptr_FUN_overlay_19_0211ca58_overlay_9_0211db28: ; 0x0211DB28
	.word ov9_0211CA58
ptr_FUN_overlay_9_0211cc30_overlay_9_0211db2c: ; 0x0211DB2C
	.word ov9_0211CC30
ptr_FUN_overlay_9_0211cc68_overlay_9_0211db30: ; 0x0211DB30
	.word ov9_0211CC68
ptr_FUN_overlay_9_0211cc80_overlay_9_0211db34: ; 0x0211DB34
	.word ov9_0211CC80
ptr_FUN_02007ce0_overlay_9_0211db38: ; 0x0211DB38
	.word sub_02007CE0
ptr_FUN_02007cc4_overlay_9_0211db3c: ; 0x0211DB3C
	.word sub_02007CC4
ptr_FUN_overlay_28_0211cad4_overlay_9_0211db40: ; 0x0211DB40
	.word ov9_0211CAD4
	.word ov9_0211CC08
	.word ov9_0211CC2C
ptr_FUN_overlay_28_0211cc98_overlay_9_0211db4c: ; 0x0211DB4C
	.word ov9_0211CC98
	.byte 0x12, 0x00, 0x04, 0x00, 0x12, 0x00, 0x06, 0x00, 0x12, 0x00, 0x09, 0x00, 0x12, 0x00, 0x0A, 0x00
	.byte 0x12, 0x00, 0x0B, 0x00, 0x12, 0x00, 0x10, 0x00, 0x13, 0x00, 0x01, 0x00, 0x13, 0x00, 0x12, 0x00
	.byte 0x1D, 0x00, 0x17, 0x00, 0x1A, 0x00, 0x1A, 0x00, 0x1A, 0x00, 0x12, 0x00, 0x00, 0x00, 0x1D, 0x00
	.byte 0x1E, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x11, 0x00, 0x1A, 0x00, 0x26, 0x00
	.byte 0x1A, 0x00, 0x26, 0x00, 0x12, 0x00, 0x08, 0x00, 0x1A, 0x00, 0x26, 0x00, 0x12, 0x00, 0x08, 0x00
	.byte 0x12, 0x00, 0x04, 0x00, 0x12, 0x00, 0x1E, 0x00, 0x1D, 0x00, 0x27, 0x00, 0x1A, 0x00, 0x1C, 0x00
	.byte 0x1A, 0x00, 0x24, 0x00, 0x1A, 0x00, 0x0A, 0x00, 0x39, 0x00, 0x04, 0x00, 0x2B, 0x00, 0x04, 0x00
	.byte 0x2E, 0x00, 0x04, 0x00, 0x58, 0x00, 0x09, 0x00, 0x54, 0x00, 0x0A, 0x00, 0x2B, 0x00, 0x0A, 0x00
	.byte 0x2B, 0x00, 0x09, 0x00, 0x2D, 0x00, 0x0A, 0x00, 0x24, 0x00, 0x0E, 0x00, 0x2C, 0x00, 0x01, 0x00
	.byte 0x3B, 0x00, 0x04, 0x00, 0x28, 0x00, 0x0F, 0x00, 0x57, 0x00, 0x12, 0x00, 0x30, 0x00, 0x12, 0x00
	.byte 0x2A, 0x00, 0x0A, 0x00, 0x58, 0x00, 0x0F, 0x00, 0x2C, 0x00, 0x0A, 0x00, 0x24, 0x00, 0x19, 0x00
	.byte 0x66, 0x00, 0x19, 0x00, 0x5A, 0x00, 0x0A, 0x00, 0x31, 0x00, 0x12, 0x00, 0x35, 0x00, 0x1A, 0x00
	.byte 0x31, 0x00, 0x0A, 0x00, 0x31, 0x00, 0x0A, 0x00, 0x24, 0x00, 0x21, 0x00, 0x30, 0x00, 0x21, 0x00
	.byte 0x34, 0x00, 0x21, 0x00, 0x37, 0x00, 0x04, 0x00, 0x1C, 0x00, 0x11, 0x00, 0x20, 0x00, 0x11, 0x00
	.byte 0x24, 0x00, 0x11, 0x00, 0x86, 0x00, 0x1A, 0x00, 0x02, 0x00, 0x08, 0x00, 0x28, 0x00, 0x0E, 0x00
	.byte 0x56, 0x00, 0x09, 0x00, 0x27, 0x00, 0x0F, 0x00, 0x30, 0x00, 0x15, 0x00, 0x86, 0x00, 0x1A, 0x00
	.byte 0x30, 0x00, 0x13, 0x00, 0x30, 0x00, 0x16, 0x00, 0x04, 0x00, 0x01, 0x00, 0x03, 0x00, 0x08, 0x00
	.byte 0x30, 0x00, 0x23, 0x00, 0x2D, 0x00, 0x11, 0x00, 0x36, 0x00, 0x1A, 0x00, 0x25, 0x00, 0x08, 0x00
	.byte 0x52, 0x00, 0x21, 0x00, 0x2E, 0x00, 0x12, 0x00, 0x26, 0x00, 0x08, 0x00, 0x54, 0x00, 0x04, 0x00
	.byte 0x64, 0x00, 0x0E, 0x00, 0x01, 0x00, 0x08, 0x00, 0x2E, 0x00, 0x21, 0x00, 0x2C, 0x00, 0x08, 0x00
	.byte 0x05, 0x00, 0x01, 0x00, 0x57, 0x00, 0x12, 0x00, 0x38, 0x00, 0x04, 0x00, 0x66, 0x00, 0x19, 0x00
	.byte 0x1F, 0x00, 0x11, 0x00, 0x3A, 0x00, 0x0A, 0x00, 0x3E, 0x00, 0x16, 0x00
DAT_overlay_9_0211dcac: ; 0x0211DCAC
	.byte 0x01, 0x00
DAT_overlay_9_0211dcae: ; 0x0211DCAE
	.byte 0xF0, 0x01
DAT_overlay_9_0211dcb0: ; 0x0211DCB0
	.byte 0x60, 0x01, 0x7C, 0x00, 0x98, 0x00, 0x01
DAT_overlay_9_0211dcb7: ; 0x0211DCB7
	.byte 0x01
DAT_overlay_9_0211dcb8: ; 0x0211DCB8
	.byte 0x00, 0x00
DAT_overlay_9_0211dcba: ; 0x0211DCBA
	.byte 0x32, 0x00
DAT_overlay_9_0211dcbc: ; 0x0211DCBC
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x6D, 0x00, 0x94, 0x00, 0x00
DAT_overlay_9_0211dcc7: ; 0x0211DCC7
	.byte 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x6D, 0x00, 0x94, 0x00, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00
	.word 0x02800016
	.byte 0x70, 0x01, 0x4C, 0x00, 0x8C, 0x00, 0x01, 0x04, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x3A, 0x00, 0x8E, 0x00, 0x00, 0x05, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01
	.byte 0xE0, 0x01, 0x40, 0x00, 0x7C, 0x00, 0x10, 0x06, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x5D, 0x00, 0x8E, 0x00, 0x00, 0x07, 0x02, 0x00, 0x00, 0x00, 0x2D, 0x00, 0xF0, 0x00
	.byte 0x00, 0x02, 0x5C, 0x00, 0x9C, 0x00, 0x01, 0x08, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x64, 0x00, 0x7C, 0x00, 0x15, 0x09, 0x02, 0x00, 0x00, 0x00, 0x49, 0x00, 0x50, 0x01
	.byte 0x30, 0x03, 0x7C, 0x00, 0x74, 0x00, 0x1C, 0x0A, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x8E, 0x00, 0x83, 0x00, 0x00, 0x0B, 0x02, 0x00, 0x00, 0x00, 0x65, 0x00, 0x10, 0x01
	.byte 0x70, 0x01, 0x8C, 0x00, 0x5C, 0x00, 0x1E, 0x26, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x66, 0x00, 0x4E, 0x00, 0x00, 0x0F, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x82, 0x00, 0x46, 0x00, 0x00, 0x10, 0x01, 0x00, 0x00, 0x00, 0x77, 0x00, 0x40, 0x01
	.byte 0xB0, 0x00, 0x34, 0x00, 0x44, 0x00, 0x1E, 0x11, 0x00, 0x00, 0x38, 0x00
	.word 0x02C00086
	.byte 0x50, 0x03, 0x2C, 0x00, 0xAC, 0x00, 0x26, 0x12, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x40, 0x00, 0xAC, 0x00, 0x00, 0x13, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x4C, 0x00, 0xB4, 0x00, 0x00, 0x14, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x8E, 0x00, 0xA1, 0x00, 0x00, 0x78, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xAC, 0x00, 0x38, 0x00, 0x00, 0x15, 0x02, 0x00, 0x00, 0x00, 0xB1, 0x00, 0x00, 0x01
	.byte 0x60, 0x03, 0xC4, 0x00, 0x25, 0x00, 0x2B, 0x16, 0x01, 0x00, 0x3A, 0x00, 0xB2, 0x00, 0x40, 0x01
	.byte 0x30, 0x01, 0xB0, 0x00, 0x24, 0x00, 0x2B, 0x17, 0x01, 0x00, 0x3B, 0x00, 0x00, 0x00, 0xF0, 0x00
	.byte 0x90, 0x00, 0x5C, 0x00, 0x3C, 0x00, 0x1E, 0x18, 0x02, 0x00, 0x00, 0x00, 0xCF, 0x00, 0xE0, 0x01
	.byte 0xC0, 0x01, 0x5C, 0x00, 0x28, 0x00, 0x2E, 0x19, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x44, 0x00, 0x2C, 0x00, 0x00, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x6D, 0x00, 0x31, 0x00, 0x00, 0x1B, 0x02, 0x00, 0x00, 0x00
	.word 0x028000D8
	.byte 0xF0, 0x00, 0x7C, 0x00, 0x28, 0x00, 0x30, 0x1C, 0x01, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xA0, 0x00, 0x8C, 0x00, 0x00, 0x1D, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x01, 0xE8, 0x00
	.byte 0xA8, 0x00, 0xAC, 0x00, 0x7C, 0x00, 0x36, 0x1E, 0x01, 0x00, 0x41, 0x00, 0x27, 0x01, 0xD0, 0x01
	.byte 0x80, 0x01, 0xBE, 0x00, 0xB4, 0x00, 0x00, 0x20, 0x00, 0x00, 0x42, 0x00, 0x27, 0x01, 0xD0, 0x01
	.byte 0x80, 0x01, 0xB4, 0x00, 0xA4, 0x00, 0x37, 0x21, 0x00, 0x00, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xCD, 0x00, 0xA1, 0x00, 0x00, 0x22, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xE4, 0x00, 0x9C, 0x00, 0x23, 0x23, 0x02, 0x00, 0x00, 0x00
	.word 0x02400130
	.byte 0x60, 0x01, 0xE4, 0x00, 0x9C, 0x00, 0x00, 0x24, 0x01, 0x00, 0x43, 0x00, 0x55, 0x01, 0x40, 0x01
	.byte 0x70, 0x01, 0xD6, 0x00, 0x5C, 0x00, 0x00, 0x27, 0x01, 0x00, 0x44, 0x00, 0x80, 0x01, 0x70, 0x01
	.byte 0xA0, 0x00, 0xD6, 0x00, 0x5C, 0x00, 0x00, 0x29, 0x00, 0x00, 0x65, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xD6, 0x00, 0x5C, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xD6, 0x00, 0x5C, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xD6, 0x00, 0x5C, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x88, 0x00, 0x68, 0x00, 0x00, 0x0E, 0x02, 0x00, 0x00, 0x00
s_data_menu_overlay_9_0211df2c: ; 0x0211DF2C
	.asciz "data/menu"
_0211DF36:
	.byte 0x00, 0x00
s_ma005_00_overlay_9_0211df38: ; 0x0211DF38
	.asciz "ma005_00"
_0211DF41:
	.byte 0x00, 0x00, 0x00
s_mam000_01_overlay_9_0211df44: ; 0x0211DF44
	.asciz "mam000_01"
_0211DF4E:
	.byte 0x00, 0x00
s_data_message_etc_place_name_overlay_9_0211df50: ; 0x0211DF50
	.asciz "/data/message/etc/place_name"
_0211DF6D:
	.byte 0x00, 0x00, 0x00
s_sFlying_overlay_9_0211df70: ; 0x0211DF70
	.asciz "sFlying"
	; 0x0211DF78
