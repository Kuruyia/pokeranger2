    .include "asm/macros.inc"
    .include "asm/include/overlay_07.inc"

    .text

	arm_func_start ov7_0211C9E0
ov7_0211C9E0: ; 0x0211C9E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02007C98
	ldr r1, _0211CA10 ; =ptr_FUN_overlay_7_0211ca14_overlay_7_0211f664
	mov r0, r5
	stmia r5, {r1, r4}
	mov r1, #0
	str r1, [r5, #8]
	bl ov7_0211CAB4
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA10: .word ptr_FUN_overlay_7_0211ca14_overlay_7_0211f664
	arm_func_end ov7_0211C9E0

	arm_func_start ov7_0211CA14
ov7_0211CA14: ; 0x0211CA14
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0211CA5C ; =ptr_FUN_overlay_7_0211ca14_overlay_7_0211f664
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211CA4C
	beq _0211CA44
	mov r0, r4
	bl ov7_0211CDB4
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov7_0211CA14
_0211CA44:
	mov r0, #0
	str r0, [r5, #8]
_0211CA4C:
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA5C: .word ptr_FUN_overlay_7_0211ca14_overlay_7_0211f664

	arm_func_start ov7_0211CA60
ov7_0211CA60: ; 0x0211CA60
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0211CAB0 ; =ptr_FUN_overlay_7_0211ca14_overlay_7_0211f664
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211CA98
	beq _0211CA90
	mov r0, r4
	bl ov7_0211CDB4
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov7_0211CA60
_0211CA90:
	mov r0, #0
	str r0, [r5, #8]
_0211CA98:
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	bl _ZdlPv
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CAB0: .word ptr_FUN_overlay_7_0211ca14_overlay_7_0211f664

	arm_func_start ov7_0211CAB4
ov7_0211CAB4: ; 0x0211CAB4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x280
	bl _Znwm
	cmp r0, #0
	beq _0211CAD4
	ldr r1, [r4, #4]
	bl ov7_0211CD84
	arm_func_end ov7_0211CAB4
_0211CAD4:
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}

	arm_func_start ov7_0211CADC
ov7_0211CADC: ; 0x0211CADC
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
	mov r0, #7
	bl NitroSDK_gx_GX_SetBankForTex
	mov r0, #0x40
	bl NitroSDK_gx_GX_SetBankForTexPltt
	mov r0, #0x10
	bl sub_02061954
	mov r0, #8
	bl sub_020616C4
	mov r0, #1
	mov r1, #0
	mov r2, r0
	bl sub_02061500
	ldr r2, _0211CC7C ; =0x04000008
	mov r0, #0
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
	bl sub_02061568
	mov r0, #0x80
	bl sub_02062110
	mov r0, #0x100
	bl sub_020621B8
	ldr r3, _0211CC80 ; =0x04001008
	ldrh r0, [r3]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r3, #4]
	ldrh r2, [r3, #6]
	mov r1, #0
	ldr r0, _0211CC84 ; =0x04000050
	bic r2, r2, #3
	strh r2, [r3, #6]
	mov r2, r1
	mov r3, r1
	str r1, [sp]
	bl sub_02062C10
	ldr lr, _0211CC88 ; =0x04000060
	mov r2, #0x4000000
	ldrh r1, [lr]
	add ip, lr, #0x2a4
	ldr r0, _0211CC8C ; =0xFFFFFDF1
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
	orr r0, r0, #0x900
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r1]
	bl sub_020614B8
	ldr r1, _0211CC90 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CC7C: .word 0x04000008
_0211CC80: .word 0x04001008
_0211CC84: .word 0x04000050
_0211CC88: .word 0x04000060
_0211CC8C: .word 0xFFFFFDF1
_0211CC90: .word 0x04001000
	arm_func_end ov7_0211CADC

	arm_func_start ov7_0211CC94
ov7_0211CC94: ; 0x0211CC94
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r1, #0x60000
	mov r2, #0
	mov r3, #0x4000
	bl sub_020101F4
	bl NitroSystem_gfd_VramManager_NNS_GfdResetLnkTexVramState
	bl NitroSystem_gfd_VramManager_NNS_GfdResetLnkPlttVramState
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov7_0211E02C
	ldmia sp!, {r4, pc}
	arm_func_end ov7_0211CC94

	arm_func_start ov7_0211CCCC
ov7_0211CCCC: ; 0x0211CCCC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl NitroSystem_gfd_VramManager_NNS_GfdResetLnkTexVramState
	bl NitroSystem_gfd_VramManager_NNS_GfdResetLnkPlttVramState
	ldr r0, [r4, #4]
	mov r1, #0x80000
	mov r2, #0
	mov r3, #0x4000
	bl sub_020101F4
	ldmia sp!, {r4, pc}
	arm_func_end ov7_0211CCCC

	arm_func_start ov7_0211CCF4
ov7_0211CCF4: ; 0x0211CCF4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211CD30
	bl ov7_0211D054
	ldr r0, [r4, #8]
	bl ov7_0211F604
	mvn r1, #0
	cmp r0, r1
	beq _0211CD38
	cmp r0, #0
	moveq r0, #6
	movne r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov7_0211CCF4
_0211CD30:
	mov r0, #1
	ldmia sp!, {r4, pc}
_0211CD38:
	mov r0, r1
	ldmia sp!, {r4, pc}

	arm_func_start ov7_0211CD40
ov7_0211CD40: ; 0x0211CD40
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov7_0211D38C
	ldmia sp!, {r3, pc}
	arm_func_end ov7_0211CD40

	arm_func_start ov7_0211CD58
ov7_0211CD58: ; 0x0211CD58
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov7_0211D3F0
	ldmia sp!, {r3, pc}
	arm_func_end ov7_0211CD58

	arm_func_start ov7_0211CD70
ov7_0211CD70: ; 0x0211CD70
	ldr ip, _0211CD78 ; =FUN_02007D98
	bx ip
	.align 2, 0
_0211CD78: .word sub_02007D98
	arm_func_end ov7_0211CD70

	arm_func_start ov7_0211CD7C
ov7_0211CD7C: ; 0x0211CD7C
	mov r0, #7
	bx lr
	arm_func_end ov7_0211CD7C

	arm_func_start ov7_0211CD84
ov7_0211CD84: ; 0x0211CD84
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x18
	mov r4, r1
	bl sub_02003B64
	add r0, r5, #0x22c
	bl sub_02005150
	mov r0, r5
	str r4, [r5, #0x27c]
	bl ov7_0211CFB4
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov7_0211CD84

	arm_func_start ov7_0211CDB4
ov7_0211CDB4: ; 0x0211CDB4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl ov7_0211D62C
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0211CDE8
	beq _0211CDE0
	mov r0, r5
	bl sub_02042120
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov7_0211CDB4
_0211CDE0:
	mov r0, #0
	str r0, [r4, #0x14]
_0211CDE8:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _0211CE10
	beq _0211CE08
	mov r0, r5
	bl sub_0200372C
	mov r0, r5
	bl _ZdlPv
_0211CE08:
	mov r0, #0
	str r0, [r4, #0xc]
_0211CE10:
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _0211CE38
	beq _0211CE30
	mov r0, r5
	bl sub_0200D414
	mov r0, r5
	bl _ZdlPv
_0211CE30:
	mov r0, #0
	str r0, [r4, #0x10]
_0211CE38:
	ldr r5, [r4, #0x58]
	cmp r5, #0
	beq _0211CE60
	beq _0211CE58
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211CE58:
	mov r0, #0
	str r0, [r4, #0x58]
_0211CE60:
	ldr r5, [r4, #0x5c]
	cmp r5, #0
	beq _0211CE88
	beq _0211CE80
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211CE80:
	mov r0, #0
	str r0, [r4, #0x5c]
_0211CE88:
	ldr r5, [r4, #0xa0]
	cmp r5, #0
	beq _0211CEB0
	beq _0211CEA8
	mov r0, r5
	bl sub_02040F88
	mov r0, r5
	bl _ZdlPv
_0211CEA8:
	mov r0, #0
	str r0, [r4, #0xa0]
_0211CEB0:
	ldr r0, [r4, #0xa8]
	cmp r0, #0
	beq _0211CED4
	ldr r3, _0211CFAC ; =0x0211CFB0
	mov r1, #4
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0xa8]
_0211CED4:
	ldr r0, [r4, #0xa4]
	cmp r0, #0
	beq _0211CEF8
	beq _0211CEF0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CEF0:
	mov r0, #0
	str r0, [r4, #0xa4]
_0211CEF8:
	ldr r5, [r4, #0xac]
	cmp r5, #0
	beq _0211CF20
	beq _0211CF18
	mov r0, r5
	bl sub_02041704
	mov r0, r5
	bl _ZdlPv
_0211CF18:
	mov r0, #0
	str r0, [r4, #0xac]
_0211CF20:
	ldr r5, [r4, #0x224]
	cmp r5, #0
	beq _0211CF48
	beq _0211CF40
	mov r0, r5
	bl sub_0201CAF0
	mov r0, r5
	bl _ZdlPv
_0211CF40:
	mov r0, #0
	str r0, [r4, #0x224]
_0211CF48:
	ldr r5, [r4, #0x228]
	cmp r5, #0
	beq _0211CF70
	beq _0211CF68
	mov r0, r5
	bl sub_0201AB14
	mov r0, r5
	bl _ZdlPv
_0211CF68:
	mov r0, #0
	str r0, [r4, #0x228]
_0211CF70:
	ldr r0, [r4, #0x278]
	cmp r0, #0
	beq _0211CF94
	beq _0211CF8C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CF8C:
	mov r0, #0
	str r0, [r4, #0x278]
_0211CF94:
	add r0, r4, #0x22c
	bl sub_020051C8
	add r0, r4, #0x18
	bl sub_02003BB0
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CFAC: .word 0x0211CFB0
_0211CFB0:
	.byte 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start ov7_0211CFB4
ov7_0211CFB4: ; 0x0211CFB4
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r4, r0
	strh r1, [r4]
	str r1, [r4, #0x14]
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	str r1, [r4, #0x58]
	str r1, [r4, #0x5c]
	str r1, [r4, #0xa0]
	str r1, [r4, #0xa4]
	str r1, [r4, #0xa8]
	str r1, [r4, #0xac]
	mov r2, r1
	arm_func_end ov7_0211CFB4
_0211CFEC:
	add r0, r4, r1, lsl #2
	add r1, r1, #1
	str r2, [r0, #0x60]
	cmp r1, #8
	blt _0211CFEC
	mov r1, r4
	mov r0, #0
_0211D008:
	add r2, r2, #1
	str r0, [r1, #0xb4]
	cmp r2, #0x10
	add r1, r1, #0x14
	blt _0211D008
	str r0, [r4, #0x224]
	add r1, r4, #0x200
	mov r2, #0x10
	strh r2, [r1, #0x20]
	mov r0, r4
	strh r2, [r1, #0x22]
	bl ov7_0211EFE4
	mov r1, #0
	str r0, [r4, #8]
	str r1, [r4, #0x228]
	str r1, [r4, #0x278]
	sub r0, r1, #1
	str r0, [r4, #0x21c]
	ldmia sp!, {r4, pc}

	arm_func_start ov7_0211D054
ov7_0211D054: ; 0x0211D054
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _0211D070
	bl sub_0200F64C
	arm_func_end ov7_0211D054
_0211D070:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _0211D080
	bl sub_0200F64C
_0211D080:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0211D0A8
	bl sub_0200D9CC
	ldr r0, [r4, #0xa4]
	mov r1, #0
	ldr r3, [r0]
	mov r2, r1
	ldr r3, [r3, #0x1c]
	blx r3
_0211D0A8:
	ldr r0, [r4, #0x224]
	cmp r0, #0
	beq _0211D0B8
	bl sub_0201F930
_0211D0B8:
	ldr r0, [r4, #0x278]
	cmp r0, #0
	beq _0211D0D0
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_0211D0D0:
	ldrh r0, [r4]
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _0211D384
_0211D0E0: ; jump table
	b _0211D384 ; case 0
	b _0211D1A8 ; case 1
	b _0211D1B8 ; case 2
	b _0211D30C ; case 3
	b _0211D33C ; case 4
	b _0211D27C ; case 5
	b _0211D384 ; case 6
	b _0211D184 ; case 7
	b _0211D110 ; case 8
	b _0211D384 ; case 9
	b _0211D36C ; case 10
	b _0211D37C ; case 11
_0211D110:
	mov r0, r4
	bl ov7_0211F5BC
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl ov7_0211F4FC
	cmp r0, #0
	bne _0211D14C
	ldr r0, [r4, #0x1f4]
	sub r0, r0, #1
	cmp r0, #0
	addgt sp, sp, #8
	str r0, [r4, #0x1f4]
	ldmgtia sp!, {r3, r4, r5, pc}
_0211D14C:
	mov r1, #1
	strh r1, [r4]
	ldr r0, [r4, #0x27c]
	mov r2, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009FB0
	ldr r0, [r4, #0x27c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_0211D184:
	ldr r0, [r4, #0x27c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	moveq r0, #1
	add sp, sp, #8
	streqh r0, [r4]
	ldmia sp!, {r3, r4, r5, pc}
_0211D1A8:
	mov r0, r4
	bl ov7_0211E1B4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_0211D1B8:
	add r1, r4, #0x200
	ldrh r0, [r1, #0x18]
	sub r0, r0, #1
	strh r0, [r1, #0x18]
	ldrh r0, [r1, #0x18]
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
	mov r2, #0xa
	mov r0, r4
	strh r2, [r1, #0x18]
	bl ov7_0211F100
	cmp r0, #0
	movne r5, #1
	mov r0, r4
	moveq r5, #0
	bl ov7_0211F168
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	mov r0, r4
	mov r1, r5
	bl ov7_0211EE6C
	mov r0, r4
	bl ov7_0211EF5C
	cmp r0, #1
	ldr r0, [r4, #0x204]
	ble _0211D260
	mov r2, #1
	cmp r0, #0
	mov r1, #0x5d
	movne r1, #0x5e
	mov r0, r4
	mov r3, r2
	str r2, [sp]
	mov ip, #0
	str ip, [sp, #4]
	bl ov7_0211F1FC
	mov r0, #5
	add sp, sp, #8
	strh r0, [r4]
	ldmia sp!, {r3, r4, r5, pc}
_0211D260:
	cmp r0, #0
	movne r0, #3
	strneh r0, [r4]
	moveq r0, #4
	add sp, sp, #8
	streqh r0, [r4]
	ldmia sp!, {r3, r4, r5, pc}
_0211D27C:
	ldr r0, [r4, #0x27c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_02009ECC
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x27c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B6A4
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x27c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B6D4
	cmp r0, #0
	bne _0211D2FC
	add r0, r4, #0x200
	mov r1, #1
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x204]
	add sp, sp, #8
	cmp r0, #0
	movne r0, #3
	strneh r0, [r4]
	moveq r0, #4
	streqh r0, [r4]
	ldmia sp!, {r3, r4, r5, pc}
_0211D2FC:
	mov r0, #1
	add sp, sp, #8
	strh r0, [r4]
	ldmia sp!, {r3, r4, r5, pc}
_0211D30C:
	add r0, r4, #0x200
	ldrh r1, [r0, #0x18]
	sub r1, r1, #1
	strh r1, [r0, #0x18]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl ov7_0211EC8C
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_0211D33C:
	add r0, r4, #0x200
	ldrh r1, [r0, #0x18]
	sub r1, r1, #1
	strh r1, [r0, #0x18]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl ov7_0211EB7C
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_0211D36C:
	mov r0, r4
	bl ov7_0211E894
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
_0211D37C:
	mov r0, r4
	bl ov7_0211E680
_0211D384:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov7_0211D38C
ov7_0211D38C: ; 0x0211D38C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4]
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _0211D3E4
_0211D3A4: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _0211D3E4 ; case 1
	b _0211D3E4 ; case 2
	b _0211D3E4 ; case 3
	b _0211D3E4 ; case 4
	b _0211D3E4 ; case 5
	b _0211D3D4 ; case 6
	b _0211D3E4 ; case 7
	b _0211D3E4 ; case 8
	ldmia sp!, {r4, pc} ; case 9
	b _0211D3E4 ; case 10
	b _0211D3E4 ; case 11
	arm_func_end ov7_0211D38C
_0211D3D4:
	bl ov7_0211F5BC
	cmp r0, #0
	moveq r0, #9
	streqh r0, [r4]
_0211D3E4:
	mov r0, r4
	bl ov7_0211D698
	ldmia sp!, {r4, pc}

	arm_func_start ov7_0211D3F0
ov7_0211D3F0: ; 0x0211D3F0
	stmdb sp!, {r3, lr}
	add r1, r0, #0x200
	ldrh r3, [r1, #0x22]
	ldrh r2, [r1, #0x20]
	cmp r2, r3
	ldmeqia sp!, {r3, pc}
	strh r3, [r1, #0x20]
	ldrh r2, [r1, #0x20]
	mov r1, #0
	cmp r2, #0x10
	movne r1, #0x14
	mlane r1, r2, r1, r0
	ldrneh r1, [r1, #0xc0]
	bl ov7_0211F2B0
	ldmia sp!, {r3, pc}
	arm_func_end ov7_0211D3F0

	arm_func_start ov7_0211D42C
ov7_0211D42C: ; 0x0211D42C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r6, #0
	mov r7, r0
	mov r5, r6
	mov r4, #0x10
	mov r8, #0xe
	arm_func_end ov7_0211D42C
_0211D448:
	add r0, r6, r6, lsr #31
	add r0, r6, r0, asr #1
	mul r2, r0, r8
	str r5, [sp]
	ldr r0, [r7, #0x58]
	mov r1, r5
	mov r3, r4
	add r2, r2, #0x10
	bl sub_0200F4FC
	add r1, r7, r6, lsl #2
	str r0, [r1, #0x60]
	ldr r0, [r7, #0x58]
	add r6, r6, #1
	ldr r0, [r0, #0x24]
	cmp r6, #2
	str r0, [r1, #0x80]
	ble _0211D448
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7, #0x58]
	mov r1, #0xa
	mov r2, #0x2c
	mov r3, #0x10
	bl sub_0200F4FC
	str r0, [r7, #0x6c]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7, #0x58]
	mov r1, #0xb
	mov r2, #0x50
	mov r3, #0x10
	bl sub_0200F4FC
	str r0, [r7, #0x70]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7, #0x58]
	mov r1, #0xd
	mov r2, #0x80
	mov r3, #0xf
	bl sub_0200F4FC
	str r0, [r7, #0x74]
	ldr r0, [r7, #0x58]
	mov r3, #0
	ldr r0, [r0, #0x24]
	mov r1, #0x40
	str r0, [r7, #0x94]
	str r3, [sp]
	ldr r0, [r7, #0x74]
	mov r2, #0x20
	bl sub_0200EBF4
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7, #0x58]
	mov r1, #0x10
	mov r2, #0xc3
	mov r3, #0xf
	bl sub_0200F4FC
	str r0, [r7, #0x78]
	ldr r0, [r7, #0x58]
	mov r3, #0
	ldr r0, [r0, #0x24]
	mov r1, #0x40
	str r0, [r7, #0x98]
	str r3, [sp]
	ldr r0, [r7, #0x78]
	mov r2, #0x20
	bl sub_0200EBF4
	ldr r0, _0211D628 ; =MAIN_BSS_020B26A0
	mvn r1, #0
	bl sub_020161E4
	mov r5, r0
	ldr r0, _0211D628 ; =MAIN_BSS_020B26A0
	mov r1, #0xff
	sub r2, r1, #0x100
	bl sub_020161AC
	mov r6, r0
	cmp r5, r6
	bgt _0211D5D8
	mov r1, #0
	str r1, [sp]
	ldr r0, [r7, #0x5c]
	mov r2, #0xf0
	mov r3, #0x10
	bl sub_0200F4FC
	mov r1, #0x20
	str r0, [r7, #0x7c]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7, #0x7c]
	mov r2, r1
	bl sub_0200EBF4
	mov r2, #1
	mov r0, r7
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0x17
	mov r3, #2
	bl ov7_0211F1FC
	b _0211D5F8
_0211D5D8:
	mov r2, #1
	mov r0, r7
	str r2, [sp]
	mov r4, #0
	mov r1, #0x66
	mov r3, #2
	str r4, [sp, #4]
	bl ov7_0211F1FC
_0211D5F8:
	mov r0, r7
	mov r1, r5
	bl ov7_0211E080
	mov r0, r7
	mov r1, r6
	bl ov7_0211E168
	mov r1, #0
	mov r0, r7
	mov r2, r1
	bl ov7_0211EE6C
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211D628: .word MAIN_BSS_020B26A0

	arm_func_start ov7_0211D62C
ov7_0211D62C: ; 0x0211D62C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x27c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA14
	ldr r0, [r4, #0x27c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	bl sub_02005120
	ldr r0, [r4, #0x27c]
	mov r1, #0x1e
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	ldr r0, [r4, #0x27c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AC90
	ldr r0, [r4, #0x27c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_020092D4
	ldmia sp!, {r4, pc}
	arm_func_end ov7_0211D62C

	arm_func_start ov7_0211D698
ov7_0211D698: ; 0x0211D698
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _0211D6B0
	bl sub_0200F71C
	arm_func_end ov7_0211D698
_0211D6B0:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _0211D6C0
	bl sub_0200F71C
_0211D6C0:
	ldr r0, [r4, #0x224]
	cmp r0, #0
	beq _0211D6D0
	bl sub_0201F988
_0211D6D0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl sub_020037B4
	ldr r0, [r4, #0xc]
	bl sub_0200381C
	ldr r0, _0211D7F4 ; =0x0400044C
	mov r1, #0
	str r1, [r0]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0211D708
	ldr r1, [r4, #0xc]
	bl sub_020423F4
_0211D708:
	ldr r0, [r4, #0xa4]
	ldr r1, [r4, #0xa8]
	ldr r3, [r0]
	ldr r2, [r4, #0xac]
	ldr r3, [r3, #0x34]
	blx r3
	ldrh r0, [r4]
	cmp r0, #0xa
	beq _0211D760
	cmp r0, #0xb
	bne _0211D754
	ldrb r1, [r4, #0x216]
	add r0, r4, #0x18
	str r1, [r4, #0x2c]
	ldr r2, [r0]
	ldr r1, [r4, #0xc]
	ldr r2, [r2, #8]
	blx r2
	b _0211D760
_0211D754:
	ldr r1, [r4, #0xc]
	mov r0, r4
	bl ov7_0211F370
_0211D760:
	ldr r6, [r4, #0xa8]
	ldr r1, [r4, #0xc]
	mov r0, r6
	mov r2, #0
	bl sub_02009188
	mov r5, r0
	mov r0, r6
	bl sub_020091DC
	ldr r0, [r4, #0xac]
	ldr r1, [r4, #0xc]
	rsb r3, r5, #0
	mov r2, #0
	bl sub_02041924
	ldr r6, [r4, #0xa8]
	ldr r1, [r4, #0xc]
	ldr r2, _0211D7F8 ; =0x00000618
	add r0, r6, #0x10
	bl sub_02009188
	mov r5, r0
	add r0, r6, #0x10
	bl sub_020091DC
	ldr r3, _0211D7F8 ; =0x00000618
	ldr r0, [r4, #0xac]
	ldr r1, [r4, #0xc]
	mov r2, #4
	sub r3, r3, r5
	bl sub_02041924
	ldr r0, [r4, #0xac]
	bl sub_020419AC
	ldr r0, [r4, #0x278]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, [r0]
	ldr r1, [r4, #0xc]
	ldr r2, [r2, #0xc]
	blx r2
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211D7F4: .word 0x0400044C
_0211D7F8: .word 0x00000618

	arm_func_start ov7_0211D7FC
ov7_0211D7FC: ; 0x0211D7FC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r1, #0x4000000
	ldr r3, [r1]
	ldr r2, [r1]
	and r3, r3, #0x1f00
	mov r4, r3, lsr #8
	bic r3, r2, #0x1f00
	orr r2, r4, #0x14
	orr r2, r3, r2, lsl #8
	str r2, [r1]
	ldr r4, [r1]
	ldr r2, _0211DFD8 ; =0xFFCFFFEF
	mov r3, #0
	and r2, r4, r2
	orr r2, r2, #0x10
	str r2, [r1]
	str r3, [r1, #0x14]
	str r3, [r1, #0x18]
	ldr r2, _0211DFDC ; =0x04001010
	str r3, [r1, #0x1c]
	str r3, [r2]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	ldrh r2, [r1, #8]
	mov sl, r0
	bic r0, r2, #3
	orr r0, r0, #3
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xc]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0xe]
	bic r0, r0, #3
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	and r0, r0, #0x43
	orr r0, r0, #0x104
	orr r0, r0, #0xc00
	strh r0, [r1, #0xc]
	bl sub_020050C8
	ldr r0, [sl, #0x27c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020345D4
	ldr r5, [sl, #0x58]
	mov r4, #0
	cmp r5, #0
	beq _0211D8F4
	beq _0211D8EC
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov7_0211D7FC
_0211D8EC:
	mov r0, #0
	str r0, [sl, #0x58]
_0211D8F4:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D924
	ldr r3, [sl, #0x27c]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x224
	mov r3, #0
	bl sub_0200ECD0
_0211D924:
	str r0, [sl, #0x58]
	mov r0, #4
	str r0, [sp]
	ldr r0, [sl, #0x58]
	ldr r1, _0211DFE0 ; =s_data_menu_overlay_7_0211f798
	ldr r2, _0211DFE4 ; =s_mr000_00_overlay_7_0211f7a4
	mov r3, #0
	bl sub_0200EE14
	ldr r5, [sl, #0x5c]
	add r4, r4, r0
	cmp r5, #0
	beq _0211D970
	beq _0211D968
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211D968:
	mov r0, #0
	str r0, [sl, #0x5c]
_0211D970:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D9A0
	ldr r3, [sl, #0x27c]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x2a4
	mov r3, #0
	bl sub_0200ECD0
_0211D9A0:
	str r0, [sl, #0x5c]
	mov r0, #9
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [sl, #0x5c]
	ldr r1, _0211DFE0 ; =s_data_menu_overlay_7_0211f798
	ldr r2, _0211DFE8 ; =s_ma005_00_overlay_7_0211f7b0
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r4, [sl, #0x27c]
	mov r2, #0x10
	add r0, r4, #0x1000
	ldr r3, [r0, #0x4b0]
	add r1, r4, #0x24
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
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	add r3, r3, #0xc
	bl sub_02009328
	ldr r0, [sl, #0x27c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	mov r0, #0x100
	str r0, [sp]
	ldr r3, _0211DFEC ; =s_mr000_overlay_7_0211f7d0
	mov r0, #1
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0211DFF0 ; =s_menu_overlay_7_0211f7bc
	ldr r1, _0211DFF4 ; =s_mr000_bg_overlay_7_0211f7c4
	mov r2, #2
	bl sub_02020804
	mov r0, #1
	str r0, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0211DFF0 ; =s_menu_overlay_7_0211f7bc
	ldr r1, _0211DFF4 ; =s_mr000_bg_overlay_7_0211f7c4
	mov r2, #2
	ldr r3, _0211DFE4 ; =s_mr000_00_overlay_7_0211f7a4
	bl sub_02020FF0
	ldr r4, [sl, #0xc]
	cmp r4, #0
	beq _0211DAAC
	beq _0211DAA4
	mov r0, r4
	bl sub_0200372C
	mov r0, r4
	bl _ZdlPv
_0211DAA4:
	mov r0, #0
	str r0, [sl, #0xc]
_0211DAAC:
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	beq _0211DAC0
	bl sub_02003718
_0211DAC0:
	str r0, [sl, #0xc]
	ldr r4, [sl, #0x10]
	cmp r4, #0
	beq _0211DAEC
	beq _0211DAE4
	mov r0, r4
	bl sub_0200D414
	mov r0, r4
	bl _ZdlPv
_0211DAE4:
	mov r0, #0
	str r0, [sl, #0x10]
_0211DAEC:
	mov r0, #0x28
	bl _Znwm
	cmp r0, #0
	beq _0211DB04
	ldr r1, [sl, #0xc]
	bl sub_0200D3F8
_0211DB04:
	mov r1, #0x100000
	str r0, [sl, #0x10]
	str r1, [sp]
	sub r0, r1, #0x500000
	str r0, [sp, #4]
	mov r0, #0x800000
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x400000
	str r0, [sp, #0xc]
	ldr r0, [sl, #0xc]
	mov r3, r1
	mov r2, #0xc0000
	bl sub_02003788
	ldr r0, _0211DFF8 ; =MAIN_BSS_020B26A0
	str r0, [sl, #0xb0]
	ldr r4, [sl, #0x14]
	cmp r4, #0
	beq _0211DB6C
	beq _0211DB64
	mov r0, r4
	bl sub_02042120
	mov r0, r4
	bl _ZdlPv
_0211DB64:
	mov r0, #0
	str r0, [sl, #0x14]
_0211DB6C:
	mov r0, #0x1c
	bl _Znwm
	cmp r0, #0
	beq _0211DB90
	ldr r1, [sl, #0xb0]
	add r1, r1, #0x8000
	ldr r1, [r1, #0xba0]
	and r1, r1, #0xff
	bl sub_02042108
_0211DB90:
	str r0, [sl, #0x14]
	mov r0, #8
	bl _Znwm
	cmp r0, #0
	beq _0211DBA8
	bl sub_02040F34
_0211DBA8:
	str r0, [sl, #0xa0]
	ldr r0, [sl, #0xa4]
	cmp r0, #0
	beq _0211DBD0
	beq _0211DBC8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211DBC8:
	mov r0, #0
	str r0, [sl, #0xa4]
_0211DBD0:
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _0211DBE4
	bl sub_0203EF40
_0211DBE4:
	str r0, [sl, #0xa4]
	ldr r2, [r0]
	mov r1, #0x10
	ldr r2, [r2, #8]
	blx r2
	ldr r0, [sl, #0xa8]
	cmp r0, #0
	beq _0211DC1C
	ldr r3, _0211DFFC ; =0x0211CFB0
	mov r1, #4
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [sl, #0xa8]
_0211DC1C:
	mov r0, #0
	ldr r3, _0211E000 ; =ov7_0211E018
	str r0, [sp]
	mov r0, #0xa
	mov r1, #4
	mov r2, #8
	bl __cxa_vec_new
	str r0, [sl, #0xa8]
	ldr r4, [sl, #0xac]
	cmp r4, #0
	beq _0211DC64
	beq _0211DC5C
	mov r0, r4
	bl sub_02041704
	mov r0, r4
	bl _ZdlPv
_0211DC5C:
	mov r0, #0
	str r0, [sl, #0xac]
_0211DC64:
	ldr r0, _0211E004 ; =0x00000918
	bl _Znwm
	cmp r0, #0
	beq _0211DC7C
	mov r1, #5
	bl sub_020416AC
_0211DC7C:
	mov r7, #0
	str r0, [sl, #0xac]
	ldr r0, [sl, #0xb0]
	sub r1, r7, #1
	mov r5, r7
	bl sub_020161E4
	cmp r0, #0
	ble _0211DCC4
	mvn r4, #0
_0211DCA0:
	add r0, r7, r5
	mov r2, r0, lsl #0x10
	ldr r0, [sl, #0xb0]
	mov r1, r4
	add r5, r5, #1
	mov r7, r2, lsr #0x10
	bl sub_020161E4
	cmp r5, r0
	blt _0211DCA0
_0211DCC4:
	mvn r0, #0
	str r0, [sp, #0x20]
	add r0, r0, #0x1000
	mov r6, sl
	mov sb, #0
	str r0, [sp, #0x24]
_0211DCDC:
	mov r0, #0
	strh r0, [r6, #0xbe]
	strh r0, [r6, #0xc0]
	str r0, [r6, #0xb8]
	ldr r0, [sl, #0xb0]
	mov r1, sb
	bl sub_020155FC
	movs r8, r0
	beq _0211DEB4
	ldr r0, [r8, #8]
	tst r0, #1
	beq _0211DEB4
	tst r0, #2
	bne _0211DEB4
	ldrh r0, [r8, #2]
	ldrh r3, [r8, #4]
	ldr r1, [sl, #0x27c]
	mov r2, r0, lsl #0x14
	ldr r0, [sp, #0x24]
	and r3, r3, r0
	mov r0, r2, lsr #8
	orr r0, r0, #0x6000000
	orr fp, r3, r0
	add r0, r1, #0x1000
	ldrh r1, [r8]
	ldr r0, [r0, #0x434]
	bl sub_020107A8
	mov r4, r0
	mov r0, #0xe0
	bl _Znwm
	movs r5, r0
	beq _0211DD64
	bl sub_0203BFD4
	mov r5, r0
_0211DD64:
	mov r0, r5
	ldr r2, [r0]
	mov r1, fp
	ldr r2, [r2, #0x20]
	blx r2
	mov r0, #0xe
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	mov r0, r5
	mov r1, #0
	bl sub_0203C418
	ldrh r0, [r4]
	mov r2, r7, lsl #1
	mov r1, r2, lsl #1
	strh r0, [r6, #0xbe]
	ldrh r0, [r8]
	strh r0, [r6, #0xc0]
	ldrb r0, [r4, #5]
	cmp r0, #9
	ldreqb r0, [r4, #6]
	ldrne r0, [sp, #0x20]
	strh r0, [r6, #0xbc]
	ldr r0, [r8, #8]
	and r0, r0, #4
	str r0, [r6, #0xb8]
	ldr r0, _0211E008 ; =DAT_overlay_7_0211f690
	ldrsb r8, [r4, #0xb]
	ldrsb r3, [r4, #0xa]
	add r0, r0, r2, lsl #1
	strb r3, [r5, #0xbc]
	strb r8, [r5, #0xbd]
	ldrsb r3, [r4, #0xd]
	ldrsb r2, [r4, #0xc]
	strb r2, [r5, #0xbe]
	strb r3, [r5, #0xbf]
	ldrsh r2, [r0, #2]
	ldr r0, _0211E008 ; =DAT_overlay_7_0211f690
	ldr r8, [r5, #8]
	ldrsh r1, [r0, r1]
	sub r0, r2, #0x60
	mov r0, r0, lsl #0xc
	str r0, [sp, #0x1c]
	sub r0, r1, #0x80
	cmp r8, #0
	ldrne fp, [r8, #0xc]
	mov r0, r0, lsl #0xc
	str r0, [sp, #0x18]
	cmpne fp, #0
	beq _0211DE6C
	ldr r1, [sp, #0x18]
	add r0, fp, #0xc
	bl sub_02011D1C
	ldr r1, [sp, #0x1c]
	add r0, fp, #0xc
	bl sub_02011D2C
	ldr r0, [r8, #0xc]
	ldr r1, [r0, #0xc4]
	cmp r1, #0
	beq _0211DE6C
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x18]
	ldr r0, [sp, #0x1c]
	str r0, [r1, #0x1c]
_0211DE6C:
	cmp sb, #0
	ldrsb r2, [r4, #8]
	ldrb r1, [r4, #9]
	ldrsb r0, [r4, #7]
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xd
	mov r0, r0, lsl #0xc
	str r0, [r5, #0x24]
	str r2, [r5, #0x28]
	str r1, [r5, #0x2c]
	str r1, [r5, #0x30]
	ldr r1, [sl, #0xa4]
	blt _0211DEB0
	ldr r0, [r1, #4]
	cmp sb, r0
	ldrlt r0, [r1, #8]
	strlt r5, [r0, sb, lsl #2]
_0211DEB0:
	add r7, r7, #1
_0211DEB4:
	add sb, sb, #1
	cmp sb, #0xa
	add r6, r6, #0x14
	blt _0211DCDC
	ldr r4, [sl, #0x224]
	cmp r4, #0
	beq _0211DEEC
	beq _0211DEE4
	mov r0, r4
	bl sub_0201CAF0
	mov r0, r4
	bl _ZdlPv
_0211DEE4:
	mov r0, #0
	str r0, [sl, #0x224]
_0211DEEC:
	mov r0, #0x7c
	bl _Znwm
	cmp r0, #0
	beq _0211DF00
	bl sub_0201CA6C
_0211DF00:
	str r0, [sl, #0x224]
	bl sub_0201CB0C
	mov r1, #0
	ldr r0, [sl, #0x224]
	mov r2, r1
	mov r3, r1
	bl sub_0201CE00
	ldr r0, [sl, #0x278]
	cmp r0, #0
	beq _0211DF40
	beq _0211DF38
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211DF38:
	mov r0, #0
	str r0, [sl, #0x278]
_0211DF40:
	ldr r0, _0211E00C ; =0x000005E4
	bl _Znwm
	cmp r0, #0
	beq _0211DF54
	bl sub_02019284
_0211DF54:
	str r0, [sl, #0x278]
	mov r1, #1
	bl sub_0201A140
	ldr r2, [sl, #0xb0]
	ldr r0, [sl, #0x278]
	ldrb r1, [r2, #1]
	ldrb r2, [r2, #2]
	bl sub_0201A000
	ldr r0, [sl, #0x278]
	mov r1, #0
	bl sub_0201A178
	mov r0, sl
	bl ov7_0211F2E0
	mov r3, #0x100000
	ldr r1, _0211E010 ; =0x000003F2
	str r3, [sp]
	str r1, [sp, #4]
	mov r1, #0
	add r0, sl, #0x18
	mov r2, r1
	bl sub_02003BE0
	mov r0, #0
	strh r0, [sl, #0x20]
	mov r0, #0x2b
	str r0, [sl, #0x28]
	mov r3, #8
	ldr r0, _0211E014 ; =0x04000050
	mov r1, #4
	mov r2, #1
	str r3, [sp]
	bl sub_02062C10
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211DFD8: .word 0xFFCFFFEF
_0211DFDC: .word 0x04001010
_0211DFE0: .word s_data_menu_overlay_7_0211f798
_0211DFE4: .word s_mr000_00_overlay_7_0211f7a4
_0211DFE8: .word s_ma005_00_overlay_7_0211f7b0
_0211DFEC: .word s_mr000_overlay_7_0211f7d0
_0211DFF0: .word s_menu_overlay_7_0211f7bc
_0211DFF4: .word s_mr000_bg_overlay_7_0211f7c4
_0211DFF8: .word MAIN_BSS_020B26A0
_0211DFFC: .word 0x0211CFB0
_0211E000: .word ov7_0211E018
_0211E004: .word 0x00000918
_0211E008: .word DAT_overlay_7_0211f690
_0211E00C: .word 0x000005E4
_0211E010: .word 0x000003F2
_0211E014: .word 0x04000050

	arm_func_start ov7_0211E018
ov7_0211E018: ; 0x0211E018
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020091DC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov7_0211E018

	arm_func_start ov7_0211E02C
ov7_0211E02C: ; 0x0211E02C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	strh r1, [r4]
	bl ov7_0211E050
	mov r0, r4
	bl ov7_0211F534
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov7_0211E02C

	arm_func_start ov7_0211E050
ov7_0211E050: ; 0x0211E050
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov7_0211D7FC
	mov r0, r4
	bl ov7_0211D42C
	ldr r0, [r4, #0x27c]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov7_0211E050

	arm_func_start ov7_0211E080
ov7_0211E080: ; 0x0211E080
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x58]
	mov r4, r1
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr ip, _0211E160 ; =0x66666667
	mov r1, r4, lsr #0x1f
	smull r3, r2, ip, r4
	add r2, r1, r2, asr #2
	cmp r2, #0
	ldrle r0, [r5, #0x60]
	movle r1, #0
	strle r1, [r0, #0x14]
	ble _0211E0D0
	ldr r1, [r5, #0x60]
	mov r3, #1
	str r3, [r1, #0x14]
	ldr r1, [r5, #0x80]
	bl ov7_0211E19C
	arm_func_end ov7_0211E080
_0211E0D0:
	ldr r3, _0211E160 ; =0x66666667
	mov r0, r4, lsr #0x1f
	smull r1, r2, r3, r4
	add r2, r0, r2, asr #2
	mov r1, #0xa
	smull r2, r0, r1, r2
	ldr r1, [r5, #0x84]
	mov r0, r5
	sub r2, r4, r2
	bl ov7_0211E19C
	ldr r0, _0211E164 ; =MAIN_BSS_020B26A0
	mvn r1, #0
	bl sub_020161E4
	mov r4, r0
	mov r0, r5
	bl ov7_0211EF5C
	sub r4, r4, r0
	mov r1, #0xff
	ldr r0, _0211E164 ; =MAIN_BSS_020B26A0
	sub r2, r1, #0x100
	bl sub_020161AC
	cmp r4, r0
	ldr r0, [r5, #0x60]
	ble _0211E148
	mov r1, #5
	bl sub_0200EB20
	ldr r0, [r5, #0x64]
	mov r1, #5
	bl sub_0200EB20
	ldmia sp!, {r3, r4, r5, pc}
_0211E148:
	mov r1, #4
	bl sub_0200EB20
	ldr r0, [r5, #0x64]
	mov r1, #4
	bl sub_0200EB20
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211E160: .word 0x66666667
_0211E164: .word MAIN_BSS_020B26A0

	arm_func_start ov7_0211E168
ov7_0211E168: ; 0x0211E168
	stmdb sp!, {r3, lr}
	mov lr, r1
	ldr ip, _0211E198 ; =0x66666667
	mov r1, lr, lsr #0x1f
	smull r3, r2, ip, lr
	add r2, r1, r2, asr #2
	mov r3, #0xa
	smull r2, r1, r3, r2
	ldr r1, [r0, #0x88]
	sub r2, lr, r2
	bl ov7_0211E19C
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211E198: .word 0x66666667
	arm_func_end ov7_0211E168

	arm_func_start ov7_0211E19C
ov7_0211E19C: ; 0x0211E19C
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x58]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0200F628
	ldmia sp!, {r3, pc}
	arm_func_end ov7_0211E19C

	arm_func_start ov7_0211E1B4
ov7_0211E1B4: ; 0x0211E1B4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov sl, r0
	ldr r0, [sl, #0x7c]
	cmp r0, #0
	beq _0211E218
	ldr r1, [sl, #0x27c]
	ldr r1, [r1, #0x14]
	ldrh r1, [r1, #2]
	and r1, r1, #2
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	bne _0211E1F4
	bl sub_0200EB84
	cmp r0, #0
	beq _0211E218
	arm_func_end ov7_0211E1B4
_0211E1F4:
	ldr r0, [sl, #0x27c]
	ldr r1, _0211E674 ; =0x00000103
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, sl
	bl ov7_0211F1E8
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211E218:
	ldr r0, [sl, #0x74]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	beq _0211E260
	mov r0, sl
	bl ov7_0211F168
	cmp r0, #0
	beq _0211E260
	ldr r0, [sl, #0x74]
	bl sub_0200EB84
	cmp r0, #0
	beq _0211E260
	mov r0, sl
	mov r1, #0
	bl ov7_0211EF14
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211E260:
	ldr r0, [sl, #0x78]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	beq _0211E2A8
	mov r0, sl
	bl ov7_0211F100
	cmp r0, #0
	beq _0211E2A8
	ldr r0, [sl, #0x78]
	bl sub_0200EB84
	cmp r0, #0
	beq _0211E2A8
	mov r0, sl
	mov r1, #1
	bl ov7_0211EF14
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211E2A8:
	ldr r0, [sl, #0x27c]
	ldr r2, [r0, #0x18]
	ldrb r0, [r2, #4]
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, [sl, #0xc]
	ldrh r1, [r2, #0xa]
	ldrh r5, [r2, #0xc]
	ldr r0, [sl, #0xa4]
	ldr r2, [r4, #0x1c]
	sub r3, r1, #0x80
	ldr r1, [r0, #4]
	rsb r3, r2, r3, lsl #12
	ldr r2, [r4, #0x20]
	sub r4, r5, #0x60
	rsb r2, r2, r4, lsl #12
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	cmp r1, #0
	mov r8, #0
	ble _0211E610
	sub r5, sp, #8
	mov fp, r8
	add r7, sp, #0x14
	mov r6, r8
	add r4, sp, #0xc
_0211E314:
	cmp r1, r8
	ldrgt r0, [r0, #8]
	movle sb, fp
	ldrgt sb, [r0, r8, lsl #2]
	cmp sb, #0
	beq _0211E5FC
	ldrb r0, [sb, #0x20]
	mov r1, #1
	cmp r0, #2
	cmpne r0, #3
	movne r1, #0
	cmp r1, #0
	beq _0211E5FC
	ldr r0, [sb, #4]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0211E430
	ldr r0, [sb, #0x2c]
	cmp r0, #0
	ldrgt r0, [sb, #0x30]
	cmpgt r0, #0
	ble _0211E430
	add r0, sb, #0x24
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	ldr r0, [sb, #8]
	cmp r0, #0
	beq _0211E3A0
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldrne r2, [r1, #0x20]
	moveq r2, #0
	b _0211E3A4
_0211E3A0:
	mov r2, #0
_0211E3A4:
	cmp r0, #0
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	str r1, [sp, #0x14]
	beq _0211E3CC
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldrne r1, [r1, #0x24]
	moveq r1, #0
	b _0211E3D0
_0211E3CC:
	mov r1, #0
_0211E3D0:
	cmp r0, #0
	beq _0211E400
	ldr r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #0
	beq _0211E404
	ldr r3, [r0, #0xb0]
	ldr r2, [r0, #0x8c]
	ldr r0, [r0, #0xa0]
	add r0, r2, r0
	add r0, r3, r0
	b _0211E404
_0211E400:
	mov r0, #0
_0211E404:
	sub r0, r1, r0
	ldr r1, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x18]
	str r6, [sp, #8]
	ldmia r7, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldmia r5, {r2, r3}
	ldmia r4, {r0, r1}
	bl sub_02006000
	b _0211E434
_0211E430:
	mov r0, #0
_0211E434:
	cmp r0, #0
	beq _0211E5FC
	mov r0, #0x14
	mul r4, r8, r0
	add r1, sl, r4
	ldr r0, [r1, #0xb8]
	cmp r0, #0
	beq _0211E48C
	ldr r0, [sl, #0x27c]
	mov r1, #0xfd
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r2, #1
	mov r0, sl
	str r2, [sp]
	mov r4, #0
	mov r1, #0x1b
	mov r3, #2
	str r4, [sp, #4]
	bl ov7_0211F1FC
	b _0211E610
_0211E48C:
	ldr r0, [r1, #0xb4]
	cmp r0, #0
	bne _0211E590
	ldr r0, [sl, #0x27c]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr r2, [sl, #0x21c]
	cmp r2, r8
	beq _0211E5E0
	cmp r2, #0x10
	bge _0211E4F8
	ldr r1, [sl, #0xa4]
	ldr r0, [r1, #4]
	cmp r0, r2
	movle r0, #0
	ldrgt r0, [r1, #8]
	ldrgt r0, [r0, r2, lsl #2]
	cmp r0, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrne r1, [r0, #0xc]
	cmpne r1, #0
	ldrne r0, [r1, #0x1a8]
	bicne r0, r0, #1
	strne r0, [r1, #0x1a8]
_0211E4F8:
	str r8, [sl, #0x21c]
	ldr r0, [sb, #8]
	cmp r0, #0
	beq _0211E57C
	ldr r1, [r0, #0xc]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x1b0]
	ldr r0, [sb, #8]
	ldr r2, [r0, #0xc]
	cmp r2, #0
	beq _0211E53C
	ldr r1, _0211E678 ; =0x00007FE0
	add r0, r2, #0x100
	strh r1, [r0, #0xac]
	mov r0, #0
	str r0, [r2, #0x1b0]
_0211E53C:
	ldr r0, [sb, #8]
	ldr r1, [r0, #0xc]
	cmp r1, #0
	movne r0, #2
	strneb r0, [r1, #0x1c4]
	ldr r0, [sb, #8]
	ldr r2, [r0, #0xc]
	cmp r2, #0
	beq _0211E57C
	ldr r1, [r2, #0x1a8]
	mvn r0, #0
	orr r1, r1, #1
	str r1, [r2, #0x1a8]
	str r0, [r2, #0x1b4]
	mov r0, #0
	str r0, [r2, #0x1b0]
_0211E57C:
	mov r1, r8, lsl #0x10
	mov r0, sl
	mov r1, r1, lsr #0x10
	bl ov7_0211F29C
	b _0211E5E0
_0211E590:
	ldr r0, [sl, #0x21c]
	cmp r0, r8
	bne _0211E5CC
	ldr r0, [sb, #8]
	cmp r0, #0
	ldrne r1, [r0, #0xc]
	cmpne r1, #0
	ldrne r0, [r1, #0x1a8]
	bicne r0, r0, #1
	strne r0, [r1, #0x1a8]
	mov r0, sl
	mov r1, #0x10
	bl ov7_0211F29C
	mov r0, #0x10
	str r0, [sl, #0x21c]
_0211E5CC:
	ldr r0, [sl, #0x27c]
	mov r1, #0xfe
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_0211E5E0:
	add r1, sl, #0xb4
	ldr r0, [r1, r4]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	str r0, [r1, r4]
	b _0211E610
_0211E5FC:
	add r8, r8, #1
	ldr r0, [sl, #0xa4]
	ldr r1, [r0, #4]
	cmp r8, r1
	blt _0211E314
_0211E610:
	mov r0, sl
	bl ov7_0211EF5C
	mov r4, r0
	ldr r0, _0211E67C ; =MAIN_BSS_020B26A0
	mvn r1, #0
	bl sub_020161E4
	mov r1, r0
	mov r0, sl
	sub r1, r1, r4
	bl ov7_0211E080
	mov r0, sl
	bl ov7_0211F100
	cmp r0, #0
	movne r4, #1
	mov r0, sl
	moveq r4, #0
	bl ov7_0211F168
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	mov r0, sl
	mov r1, r4
	bl ov7_0211EE6C
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211E674: .word 0x00000103
_0211E678: .word 0x00007FE0
_0211E67C: .word MAIN_BSS_020B26A0

	arm_func_start ov7_0211E680
ov7_0211E680: ; 0x0211E680
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r1, r4, #0x100
	ldrh r1, [r1, #0xf8]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0211E880
_0211E6A0: ; jump table
	b _0211E6B4 ; case 0
	b _0211E758 ; case 1
	b _0211E770 ; case 2
	b _0211E81C ; case 3
	b _0211E870 ; case 4
	arm_func_end ov7_0211E680
_0211E6B4:
	bl ov7_0211F100
	str r0, [r4, #0x1fc]
	ldr ip, [r4, #0xa4]
	mov r3, #0
	ldr lr, [ip, #4]
	cmp lr, #0
	bls _0211E714
	mov r1, r3
	mov r2, #1
_0211E6D8:
	ldr r0, [r4, #0x1fc]
	tst r0, r2, lsl r3
	beq _0211E700
	cmp lr, r3
	movle ip, r1
	ldrgt r0, [ip, #8]
	ldrgt ip, [r0, r3, lsl #2]
	ldr r0, [ip, #4]
	orr r0, r0, #0x100
	str r0, [ip, #4]
_0211E700:
	ldr ip, [r4, #0xa4]
	add r3, r3, #1
	ldr lr, [ip, #4]
	cmp r3, lr
	blo _0211E6D8
_0211E714:
	ldr r0, [r4, #0x27c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, #0
	bl sub_02009FB0
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl ov7_0211EE6C
	mov r0, r4
	mov r1, #0x1f
	mov r2, #0x3c
	bl ov7_0211EB04
	add r0, r4, #0x100
	mov r1, #1
	strh r1, [r0, #0xf8]
_0211E758:
	ldr r0, [r4, #0x208]
	cmp r0, #0
	bne _0211E880
	add r0, r4, #0x100
	mov r1, #2
	strh r1, [r0, #0xf8]
_0211E770:
	mov r1, #0
	mov r0, r4
	strh r1, [sp, #2]
	strh r1, [sp]
	bl ov7_0211F100
	cmp r0, #0
	addeq sp, sp, #4
	str r0, [r4, #0x1fc]
	ldmeqia sp!, {r3, r4, pc}
	add r1, sp, #0
	add r2, sp, #2
	mov r0, r4
	bl ov7_0211F01C
	ldr r0, [r4, #0xb0]
	ldrh r1, [sp]
	ldrb r0, [r0, #1]
	add r0, r1, r0
	strh r0, [sp]
	ldr r1, [r4, #0xb0]
	ldrh r0, [sp]
	ldrb r1, [r1, #2]
	cmp r0, r1
	strgth r1, [sp]
	ldrh r1, [sp]
	ldr r0, [r4, #0xb0]
	strb r1, [r0, #1]
	ldrh r1, [sp]
	ldr r0, [r4, #0x278]
	bl sub_0201A018
	ldrh r1, [sp, #2]
	ldr r0, [r4, #0x278]
	bl sub_0201A024
	ldr r0, [r4, #0x27c]
	ldr r1, _0211E890 ; =0x00000143
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	add r2, r4, #0x100
	mov r3, #3
	mov r1, #1
	strh r3, [r2, #0xf8]
	bl ov7_0211ED10
_0211E81C:
	ldr r0, [r4, #0x278]
	bl sub_0201A0DC
	cmp r0, #0
	bne _0211E880
	ldr r0, [r4, #0x27c]
	ldr r1, _0211E890 ; =0x00000143
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C5C
	add r1, r4, #0x100
	mov r2, #4
	mov r0, r4
	strh r2, [r1, #0xf8]
	mov r2, #0x1e
	mov r1, #0
	str r2, [r4, #0x200]
	bl ov7_0211ED10
	mov r0, r4
	mov r1, #0x3c
	bl ov7_0211EB3C
	b _0211E880
_0211E870:
	ldr r1, [r4, #0x208]
	cmp r1, #0
	bne _0211E880
	bl ov7_0211EB7C
_0211E880:
	mov r0, r4
	bl ov7_0211EA74
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211E890: .word 0x00000143

	arm_func_start ov7_0211E894
ov7_0211E894: ; 0x0211E894
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	add r4, sl, #0x200
	ldrh r0, [r4, #0x18]
	mov sb, #0
	add r0, r0, #1
	strh r0, [r4, #0x18]
	ldr r1, [sl, #0xa4]
	ldr r2, [r1, #4]
	cmp r2, #0
	ble _0211E98C
	mov fp, #1
	mov r8, sl
	mov r7, sb
	mov r5, sb
	mov r6, fp
	arm_func_end ov7_0211E894
_0211E8D8:
	ldr r0, [r8, #0xb4]
	cmp r0, #0
	beq _0211E974
	cmp r2, sb
	movle r1, r7
	ldrgt r0, [r1, #8]
	ldrgt r1, [r0, sb, lsl #2]
	ldrh r0, [r8, #0xc2]
	cmp r0, #0
	beq _0211E90C
	cmp r0, #1
	beq _0211E93C
	b _0211E974
_0211E90C:
	ldrh r2, [r4, #0x18]
	ldrh r0, [r8, #0xc4]
	cmp r2, r0
	bls _0211E974
	strh r6, [r8, #0xc2]
	ldr r2, [r1, #4]
	mov r0, sl
	orr r3, r2, #0x100
	mov r2, sb
	str r3, [r1, #4]
	bl ov7_0211ECA4
	b _0211E974
_0211E93C:
	cmp r1, #0
	beq _0211E974
	ldr r0, [r1, #0xc8]
	cmp r0, #0
	movne r0, fp
	moveq r0, #0
	cmp r0, #0
	bne _0211E974
	str r5, [r8, #0xb4]
	ldr r0, [sl, #0xa4]
	mov r1, sb
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
_0211E974:
	ldr r1, [sl, #0xa4]
	add sb, sb, #1
	ldr r2, [r1, #4]
	add r8, r8, #0x14
	cmp sb, r2
	blt _0211E8D8
_0211E98C:
	mov r0, sl
	bl ov7_0211EF5C
	cmp r0, #0
	addgt sp, sp, #8
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _0211EA70 ; =MAIN_BSS_020B26A0
	mvn r1, #0
	bl sub_020161E4
	mov r1, r0
	mov r0, sl
	bl ov7_0211E080
	mov r1, #1
	strh r1, [sl]
	ldr r0, [sl, #0x7c]
	cmp r0, #0
	bne _0211EA14
	mov r0, sl
	bl ov7_0211EFE4
	cmp r0, #0
	bne _0211E9EC
	mov r0, sl
	bl ov7_0211F1E8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211E9EC:
	mov r2, #1
	mov r0, sl
	str r2, [sp]
	mov r4, #0
	mov r1, #0x66
	mov r3, #2
	str r4, [sp, #4]
	bl ov7_0211F1FC
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211EA14:
	ldr r0, _0211EA70 ; =MAIN_BSS_020B26A0
	sub r1, r1, #2
	bl sub_020161E4
	mov r4, r0
	mov r0, sl
	bl ov7_0211EFA0
	sub r0, r4, r0
	cmp r0, #0
	bgt _0211EA48
	mov r0, sl
	bl ov7_0211F1E8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211EA48:
	mov r2, #1
	mov r0, sl
	str r2, [sp]
	mov r4, #0
	mov r1, #0x17
	mov r3, #2
	str r4, [sp, #4]
	bl ov7_0211F1FC
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211EA70: .word MAIN_BSS_020B26A0

	arm_func_start ov7_0211EA74
ov7_0211EA74: ; 0x0211EA74
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x208]
	cmp r0, #0
	beq _0211EAF8
	ldr r0, [r4, #0x210]
	cmp r0, #0
	ble _0211EAF8
	ldr r0, [r4, #0x20c]
	add r2, r0, #1
	str r2, [r4, #0x20c]
	ldrb r0, [r4, #0x214]
	ldrb r1, [r4, #0x215]
	ldr r3, [r4, #0x210]
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl sub_02007068
	mov r0, r0, asr #0xc
	strb r0, [r4, #0x216]
	ldr r1, [r4, #0x20c]
	ldr r0, [r4, #0x210]
	cmp r1, r0
	ldmltia sp!, {r4, pc}
	mov r1, #0
	str r1, [r4, #0x210]
	str r1, [r4, #0x20c]
	ldrb r0, [r4, #0x216]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	str r1, [r4, #0x208]
	strb r1, [r4, #0x214]
	strb r1, [r4, #0x216]
	ldmia sp!, {r4, pc}
	arm_func_end ov7_0211EA74
_0211EAF8:
	mov r0, #0
	str r0, [r4, #0x208]
	ldmia sp!, {r4, pc}

	arm_func_start ov7_0211EB04
ov7_0211EB04: ; 0x0211EB04
	mov r3, #1
	str r3, [r0, #0x208]
	mov r3, #0
	str r3, [r0, #0x20c]
	strb r3, [r0, #0x214]
	cmp r2, #0
	strlt r3, [r0, #0x210]
	strltb r3, [r0, #0x215]
	strltb r1, [r0, #0x216]
	bxlt lr
	str r2, [r0, #0x210]
	strb r1, [r0, #0x215]
	strb r3, [r0, #0x216]
	bx lr
	arm_func_end ov7_0211EB04

	arm_func_start ov7_0211EB3C
ov7_0211EB3C: ; 0x0211EB3C
	mov r2, #0
	str r2, [r0, #0x20c]
	strb r2, [r0, #0x215]
	cmp r1, #0
	blt _0211EB68
	mov r2, #1
	str r2, [r0, #0x208]
	str r1, [r0, #0x210]
	ldrb r1, [r0, #0x216]
	strb r1, [r0, #0x214]
	bx lr
	arm_func_end ov7_0211EB3C
_0211EB68:
	str r2, [r0, #0x208]
	str r2, [r0, #0x210]
	strb r2, [r0, #0x214]
	strb r2, [r0, #0x216]
	bx lr

	arm_func_start ov7_0211EB7C
ov7_0211EB7C: ; 0x0211EB7C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	bl ov7_0211EF5C
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sl, #0x200
	mov r7, #0
	strh r7, [r0, #0x18]
	ldr r0, [sl, #0xa4]
	ldr r1, [r0, #4]
	cmp r1, #0
	ble _0211EC2C
	mov r8, sl
	mov sb, r7
	mov r6, r7
	mov fp, r7
	mov r5, #0xa
	mov r4, r7
	arm_func_end ov7_0211EB7C
_0211EBCC:
	cmp r1, r7
	movle r0, r6
	ldrgt r0, [r0, #8]
	ldrgt r0, [r0, r7, lsl #2]
	cmp r0, #0
	ldrne r0, [r8, #0xb4]
	cmpne r0, #0
	beq _0211EC14
	ldr r0, [sl, #0x27c]
	ldrh r2, [r8, #0xbe]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r1, fp
	bl sub_020097FC
	strh r5, [sl]
	strh r4, [r8, #0xc2]
	add sb, sb, #0x14
	strh sb, [r8, #0xc4]
_0211EC14:
	ldr r0, [sl, #0xa4]
	add r7, r7, #1
	ldr r1, [r0, #4]
	add r8, r8, #0x14
	cmp r7, r1
	blt _0211EBCC
_0211EC2C:
	mov r0, sl
	bl ov7_0211EF5C
	cmp r0, #1
	mov r0, #1
	mov r2, #0
	str r0, [sp]
	bne _0211EC60
	mov r0, sl
	mov r3, r2
	mov r1, #0x18
	str r2, [sp, #4]
	bl ov7_0211F1FC
	b _0211EC74
_0211EC60:
	mov r0, sl
	mov r3, r2
	mov r1, #0x19
	str r2, [sp, #4]
	bl ov7_0211F1FC
_0211EC74:
	mov r1, #0
	mov r0, sl
	mov r2, r1
	bl ov7_0211EE6C
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov7_0211EC8C
ov7_0211EC8C: ; 0x0211EC8C
	add r1, r0, #0x100
	mov r2, #0
	strh r2, [r1, #0xf8]
	mov r1, #0xb
	strh r1, [r0]
	bx lr
	arm_func_end ov7_0211EC8C

	arm_func_start ov7_0211ECA4
ov7_0211ECA4: ; 0x0211ECA4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x14
	mla r3, r2, r0, r5
	ldr r0, [r5, #0x27c]
	mov r4, r1
	add r0, r0, #0x1000
	ldrh r1, [r3, #0xbe]
	ldr r0, [r0, #0x48c]
	mov r2, #0x40
	bl sub_02034CF4
	ldr r0, [r5, #0xb0]
	ldr r1, [r4, #0x58]
	bl sub_02015E54
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrne r1, [r0, #0xc]
	cmpne r1, #0
	ldrne r0, [r1, #0x1a8]
	bicne r0, r0, #1
	strne r0, [r1, #0x1a8]
	ldr r1, [r5, #0xc]
	mov r0, r4
	add r1, r1, #0x1c
	ldmia r1, {r1, r2}
	bl sub_0203D404
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov7_0211ECA4

	arm_func_start ov7_0211ED10
ov7_0211ED10: ; 0x0211ED10
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r2, [sl, #0xa4]
	mov r6, #0
	ldr r3, [r2, #4]
	mov sb, r1
	mov r5, r6
	cmp r3, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r7, sl
	mvn r4, #0
	mov fp, #1
	arm_func_end ov7_0211ED10
_0211ED40:
	ldr r0, [sl, #0x1fc]
	tst r0, fp, lsl r5
	beq _0211EE4C
	cmp r3, r5
	ldrgt r0, [r2, #8]
	movle r8, #0
	ldrgt r8, [r0, r5, lsl #2]
	cmp sb, #0
	mov r0, r8
	mov r2, #0
	beq _0211EE20
	ldr r3, [r0]
	mov r1, #8
	ldr r3, [r3, #0x38]
	blx r3
	ldr r0, [r8, #8]
	cmp r0, #0
	beq _0211EDF8
	ldr r1, [r0, #0xc]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x1b0]
	ldr r0, [r8, #8]
	ldr r2, [r0, #0xc]
	cmp r2, #0
	beq _0211EDBC
	ldr r0, _0211EE68 ; =0x00007FE0
	add r1, r2, #0x100
	strh r0, [r1, #0xac]
	mov r0, #0
	str r0, [r2, #0x1b0]
_0211EDBC:
	ldr r0, [r8, #8]
	ldr r1, [r0, #0xc]
	cmp r1, #0
	movne r0, #2
	strneb r0, [r1, #0x1c4]
	ldr r0, [r8, #8]
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _0211EDF8
	ldr r0, [r1, #0x1a8]
	orr r0, r0, #1
	str r0, [r1, #0x1a8]
	str r4, [r1, #0x1b4]
	mov r0, #0
	str r0, [r1, #0x1b0]
_0211EDF8:
	cmp r6, #0
	bne _0211EE4C
	ldr r0, [sl, #0x27c]
	ldrh r1, [r7, #0xbe]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r2, #0x40
	bl sub_02034CF4
	mov r6, #1
	b _0211EE4C
_0211EE20:
	ldr r3, [r0]
	mov r1, #2
	ldr r3, [r3, #0x38]
	blx r3
	ldr r0, [r8, #8]
	cmp r0, #0
	ldrne r1, [r0, #0xc]
	cmpne r1, #0
	ldrne r0, [r1, #0x1a8]
	bicne r0, r0, #1
	strne r0, [r1, #0x1a8]
_0211EE4C:
	add r7, r7, #0x14
	add r5, r5, #1
	ldr r2, [sl, #0xa4]
	ldr r3, [r2, #4]
	cmp r5, r3
	blt _0211ED40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211EE68: .word 0x00007FE0

	arm_func_start ov7_0211EE6C
ov7_0211EE6C: ; 0x0211EE6C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x78]
	mov r4, r2
	cmp r0, #0
	beq _0211EE9C
	cmp r1, #0
	movne r2, #0xf
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x98]
	moveq r2, #0x10
	bl sub_0200F628
	arm_func_end ov7_0211EE6C
_0211EE9C:
	ldr r0, [r5, #0x74]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	movne r2, #0xc
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x94]
	moveq r2, #0xd
	bl sub_0200F628
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov7_0211EEC4
ov7_0211EEC4: ; 0x0211EEC4
	stmdb sp!, {r3, lr}
	mov r2, r0
	cmp r1, #0
	beq _0211EEF4
	ldr r0, [r2, #0x78]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r2, #0x58]
	ldr r1, [r2, #0x98]
	mov r2, #0x11
	bl sub_0200F628
	ldmia sp!, {r3, pc}
	arm_func_end ov7_0211EEC4
_0211EEF4:
	ldr r0, [r2, #0x74]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r2, #0x58]
	ldr r1, [r2, #0x94]
	mov r2, #0xe
	bl sub_0200F628
	ldmia sp!, {r3, pc}

	arm_func_start ov7_0211EF14
ov7_0211EF14: ; 0x0211EF14
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x27c]
	mov r4, r1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0xff
	bl sub_02034C44
	mov r0, r5
	mov r1, r4
	bl ov7_0211EEC4
	str r4, [r5, #0x204]
	mov r0, #2
	strh r0, [r5]
	add r0, r5, #0x200
	mov r1, #0xa
	strh r1, [r0, #0x18]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov7_0211EF14

	arm_func_start ov7_0211EF5C
ov7_0211EF5C: ; 0x0211EF5C
	ldr r1, [r0, #0xa4]
	mov r3, #0
	ldr ip, [r1, #4]
	mov r2, r3
	cmp ip, #0
	ble _0211EF98
	arm_func_end ov7_0211EF5C
_0211EF74:
	ldr r1, [r0, #0xb4]
	add r2, r2, #1
	cmp r1, #0
	addne r1, r3, #1
	movne r1, r1, lsl #0x10
	movne r3, r1, asr #0x10
	cmp r2, ip
	add r0, r0, #0x14
	blt _0211EF74
_0211EF98:
	mov r0, r3
	bx lr

	arm_func_start ov7_0211EFA0
ov7_0211EFA0: ; 0x0211EFA0
	ldr r1, [r0, #0xa4]
	mov r3, #0
	ldr ip, [r1, #4]
	mov r2, r3
	cmp ip, #0
	ble _0211EFDC
	arm_func_end ov7_0211EFA0
_0211EFB8:
	ldr r1, [r0, #0xb8]
	add r2, r2, #1
	cmp r1, #0
	addne r1, r3, #1
	movne r1, r1, lsl #0x10
	movne r3, r1, asr #0x10
	cmp r2, ip
	add r0, r0, #0x14
	blt _0211EFB8
_0211EFDC:
	mov r0, r3
	bx lr

	arm_func_start ov7_0211EFE4
ov7_0211EFE4: ; 0x0211EFE4
	stmdb sp!, {r4, lr}
	ldr r0, _0211F018 ; =MAIN_BSS_020B26A0
	mvn r1, #0
	bl sub_020161E4
	mov r4, r0
	mov r1, #0xff
	ldr r0, _0211F018 ; =MAIN_BSS_020B26A0
	sub r2, r1, #0x100
	bl sub_020161AC
	cmp r4, r0
	movgt r0, #1
	movle r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211F018: .word MAIN_BSS_020B26A0
	arm_func_end ov7_0211EFE4

	arm_func_start ov7_0211F01C
ov7_0211F01C: ; 0x0211F01C
	stmdb sp!, {r3, r4, r5, lr}
	mov ip, #0
	strh ip, [r1]
	strh ip, [r2]
	ldr r3, [r0, #0xa4]
	ldr r3, [r3, #4]
	cmp r3, #0
	ble _0211F0EC
	mov lr, r0
	mov r3, #1
	arm_func_end ov7_0211F01C
_0211F044:
	ldr r4, [r0, #0x1fc]
	tst r4, r3, lsl ip
	beq _0211F0D4
	ldrh r5, [r2]
	ldrsh r4, [lr, #0xbc]
	add r4, r5, r4
	strh r4, [r2]
	ldrsh r4, [lr, #0xbc]
	cmp r4, #5
	addls pc, pc, r4, lsl #2
	b _0211F088
_0211F070: ; jump table
	b _0211F088 ; case 0
	b _0211F088 ; case 1
	b _0211F098 ; case 2
	b _0211F0A8 ; case 3
	b _0211F0B8 ; case 4
	b _0211F0C8 ; case 5
_0211F088:
	ldrh r4, [r1]
	add r4, r4, #5
	strh r4, [r1]
	b _0211F0D4
_0211F098:
	ldrh r4, [r1]
	add r4, r4, #0xa
	strh r4, [r1]
	b _0211F0D4
_0211F0A8:
	ldrh r4, [r1]
	add r4, r4, #0x14
	strh r4, [r1]
	b _0211F0D4
_0211F0B8:
	ldrh r4, [r1]
	add r4, r4, #0x1e
	strh r4, [r1]
	b _0211F0D4
_0211F0C8:
	ldrh r4, [r1]
	add r4, r4, #0x32
	strh r4, [r1]
_0211F0D4:
	ldr r4, [r0, #0xa4]
	add ip, ip, #1
	ldr r4, [r4, #4]
	add lr, lr, #0x14
	cmp ip, r4
	blt _0211F044
_0211F0EC:
	ldrh r0, [r2]
	cmp r0, #5
	movhi r0, #5
	strhih r0, [r2]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov7_0211F100
ov7_0211F100: ; 0x0211F100
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl ov7_0211F4E0
	cmp r0, #0
	movne r0, r4
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov7_0211F168
	ldr r1, [r5, #0xa4]
	mov r3, r4
	ldr ip, [r1, #4]
	cmp ip, #0
	bls _0211F160
	mov r2, #1
	arm_func_end ov7_0211F100
_0211F13C:
	tst r0, r2, lsl r3
	beq _0211F150
	ldrsh r1, [r5, #0xbc]
	cmp r1, #0
	orrge r4, r4, r2, lsl r3
_0211F150:
	add r3, r3, #1
	cmp r3, ip
	add r5, r5, #0x14
	blo _0211F13C
_0211F160:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov7_0211F168
ov7_0211F168: ; 0x0211F168
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, [r0, #0xa4]
	mov r5, #0
	ldr r8, [r7, #4]
	mov r4, r5
	cmp r8, #0
	bls _0211F1E0
	mov ip, #1
	mov lr, r5
	mov r3, r5
	mov r1, ip
	arm_func_end ov7_0211F168
_0211F194:
	cmp r8, r4
	movle r2, lr
	ldrgt r2, [r7, #8]
	ldrgt r2, [r2, r4, lsl #2]
	cmp r2, #0
	beq _0211F1D0
	ldrb r2, [r2, #0x20]
	mov r6, ip
	cmp r2, #2
	cmpne r2, #3
	movne r6, r3
	cmp r6, #0
	ldrne r2, [r0, #0xb4]
	cmpne r2, #0
	orrne r5, r5, r1, lsl r4
_0211F1D0:
	add r4, r4, #1
	cmp r4, r8
	add r0, r0, #0x14
	blo _0211F194
_0211F1E0:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov7_0211F1E8
ov7_0211F1E8: ; 0x0211F1E8
	ldr ip, _0211F1F8 ; =ov7_0211F578
	mov r1, #6
	strh r1, [r0]
	bx ip
	.align 2, 0
_0211F1F8: .word ov7_0211F578
	arm_func_end ov7_0211F1E8

	arm_func_start ov7_0211F1FC
ov7_0211F1FC: ; 0x0211F1FC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, [r6, #0x27c]
	mov r5, r1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r7, r2
	mov r1, #1
	mov r2, #0
	mov r4, r3
	bl sub_02009FB0
	ldr r0, [r6, #0x27c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	str r0, [sp]
	ldr r0, [r6, #0x27c]
	mov r1, r5
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r3, r7
	bl sub_0200AD34
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #1
	beq _0211F27C
	cmp r4, #2
	beq _0211F288
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov7_0211F1FC
_0211F27C:
	mov r0, #7
	strh r0, [r6]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0211F288:
	mov r0, #8
	strh r0, [r6]
	mov r0, #0x5a
	str r0, [r6, #0x1f4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov7_0211F29C
ov7_0211F29C: ; 0x0211F29C
	add r0, r0, #0x200
	ldrh r2, [r0, #0x20]
	cmp r2, r1
	strneh r1, [r0, #0x22]
	bx lr
	arm_func_end ov7_0211F29C

	arm_func_start ov7_0211F2B0
ov7_0211F2B0: ; 0x0211F2B0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x224]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0
	bl sub_0201DF54
	ldr r0, [r4, #0x224]
	bl sub_0201EC80
	ldr r0, [r4, #0x224]
	bl sub_0201E27C
	ldmia sp!, {r4, pc}
	arm_func_end ov7_0211F2B0

	arm_func_start ov7_0211F2E0
ov7_0211F2E0: ; 0x0211F2E0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r4, [r5, #0x228]
	cmp r4, #0
	beq _0211F314
	beq _0211F30C
	mov r0, r4
	bl sub_0201AB14
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov7_0211F2E0
_0211F30C:
	mov r0, #0
	str r0, [r5, #0x228]
_0211F314:
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0211F34C
	ldr r2, _0211F358 ; =s_RSC_mr001_NCLR_overlay_7_0211f80c
	ldr r1, _0211F35C ; =s_RSC_mr001_00_NCER_overlay_7_0211f81c
	str r2, [sp]
	ldr ip, _0211F360 ; =s_RSC_mr001_00_cac_overlay_7_0211f830
	str r1, [sp, #4]
	ldr r1, _0211F364 ; =s_RSC_overlay_7_0211f7d8
	ldr r2, _0211F368 ; =s_data_menu_mr001_00_LZ_bin_overlay_7_0211f7dc
	ldr r3, _0211F36C ; =s_RSC_mr001_00_NCBR_overlay_7_0211f7f8
	str ip, [sp, #8]
	bl sub_0201AAE0
_0211F34C:
	str r0, [r5, #0x228]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0211F358: .word s_RSC_mr001_NCLR_overlay_7_0211f80c
_0211F35C: .word s_RSC_mr001_00_NCER_overlay_7_0211f81c
_0211F360: .word s_RSC_mr001_00_cac_overlay_7_0211f830
_0211F364: .word s_RSC_overlay_7_0211f7d8
_0211F368: .word s_data_menu_mr001_00_LZ_bin_overlay_7_0211f7dc
_0211F36C: .word s_RSC_mr001_00_NCBR_overlay_7_0211f7f8

	arm_func_start ov7_0211F370
ov7_0211F370: ; 0x0211F370
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	mov r6, r0
	ldr r0, [r6, #0x228]
	add sb, r6, #0x22c
	ldr r0, [r0]
	mov r8, #0
	str r0, [sb, #0x2c]
	str r8, [sb, #0x30]
	ldr r3, [r6, #0x228]
	mov r2, #0x10
	ldr r3, [r3, #4]
	mov r5, r1
	str r3, [sb, #0x34]
	ldr r1, [r6, #0x228]
	sub r0, r2, #0x204
	ldr r1, [r1, #8]
	str r1, [sb, #0x38]
	str r2, [sb, #0x14]
	str r0, [sb, #4]
	ldr r0, [r6, #0xa4]
	ldr r1, [r0, #4]
	cmp r1, #0
	addle sp, sp, #0x30
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov sl, r6
	mov fp, r8
	add r7, sp, #0
	arm_func_end ov7_0211F370
_0211F3E0:
	cmp r1, r8
	ldrgt r0, [r0, #8]
	movle r4, #0
	ldrgt r4, [r0, r8, lsl #2]
	cmp r4, #0
	ldrne r0, [sl, #0xb4]
	cmpne r0, #0
	beq _0211F4C0
	ldrsh r0, [sl, #0xbc]
	cmp r0, #0
	blt _0211F41C
	mov r0, r6
	bl ov7_0211F4E0
	cmp r0, #0
	beq _0211F424
_0211F41C:
	strh fp, [sb, #0x2a]
	b _0211F42C
_0211F424:
	mov r0, #1
	strh r0, [sb, #0x2a]
_0211F42C:
	ldr ip, [r4, #8]
	cmp ip, #0
	beq _0211F44C
	ldr r0, [ip, #0xc]
	cmp r0, #0
	ldrne lr, [r0, #0x20]
	moveq lr, #0
	b _0211F450
_0211F44C:
	mov lr, #0
_0211F450:
	add r0, r4, #0x24
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	add r4, sp, #0x20
	ldmia r7, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, [sp, #0x20]
	cmp ip, #0
	add lr, lr, r0
	beq _0211F48C
	ldr r0, [ip, #0xc]
	cmp r0, #0
	ldrne ip, [r0, #0x24]
	moveq ip, #0
	b _0211F490
_0211F48C:
	mov ip, #0
_0211F490:
	add r4, sp, #0x10
	ldmia r7, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	str lr, [sb, #0x18]
	ldr r1, [sp, #0x14]
	mov r0, sb
	add r1, ip, r1
	str r1, [sb, #0x1c]
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #8]
	blx r2
_0211F4C0:
	add sl, sl, #0x14
	add r8, r8, #1
	ldr r0, [r6, #0xa4]
	ldr r1, [r0, #4]
	cmp r8, r1
	blt _0211F3E0
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov7_0211F4E0
ov7_0211F4E0: ; 0x0211F4E0
	ldr r0, [r0, #0xb0]
	ldrb r1, [r0, #1]
	ldrb r0, [r0, #2]
	cmp r1, r0
	movhs r0, #1
	movlo r0, #0
	bx lr
	arm_func_end ov7_0211F4E0

	arm_func_start ov7_0211F4FC
ov7_0211F4FC: ; 0x0211F4FC
	stmdb sp!, {r4, lr}
	ldr r0, [r0, #0x27c]
	ldr r4, [r0, #0x14]
	bl sub_0201001C
	ldrh r1, [r4, #2]
	ldr r2, [r0, #0x18]
	and r0, r1, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldreqb r0, [r2, #4]
	cmpeq r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov7_0211F4FC

	arm_func_start ov7_0211F534
ov7_0211F534: ; 0x0211F534
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x27c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
	ldr r0, [r4, #0x27c]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end ov7_0211F534

	arm_func_start ov7_0211F578
ov7_0211F578: ; 0x0211F578
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x27c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r1, #4
	mov r2, #0xf
	bl sub_0200E0E0
	ldr r0, [r4, #0x27c]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end ov7_0211F578

	arm_func_start ov7_0211F5BC
ov7_0211F5BC: ; 0x0211F5BC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x27c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211F5F4
	ldr r0, [r4, #0x27c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	beq _0211F5FC
	arm_func_end ov7_0211F5BC
_0211F5F4:
	mov r0, #1
	ldmia sp!, {r4, pc}
_0211F5FC:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov7_0211F604
ov7_0211F604: ; 0x0211F604
	ldrh r1, [r0]
	cmp r1, #9
	mvnne r0, #0
	bxne lr
	ldr r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov7_0211F604
	; 0x0211F628

    .section .sinit,4

    .data
PTR_ptr_FUN_020835bc_overlay_7_0211f640: ; 0x0211F640
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
ptr_FUN_overlay_5_0211f64c_overlay_7_0211f644: ; 0x0211F644
	.word s_13CReleaseScene_overlay_7_0211f64c
	.word PTR_ptr_FUN_02083578_0208a804
s_13CReleaseScene_overlay_7_0211f64c: ; 0x0211F64C
	.asciz "13CReleaseScene"
_0211F65C:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_7_0211f640
ptr_FUN_overlay_7_0211ca14_overlay_7_0211f664: ; 0x0211F664
	.word ov7_0211CA14
ptr_FUN_overlay_7_0211ca60_overlay_7_0211f668: ; 0x0211F668
	.word ov7_0211CA60
ptr_FUN_overlay_7_0211ccf4_overlay_7_0211f66c: ; 0x0211F66C
	.word ov7_0211CCF4
ptr_FUN_overlay_7_0211cd40_overlay_7_0211f670: ; 0x0211F670
	.word ov7_0211CD40
ptr_FUN_overlay_7_0211cd58_overlay_7_0211f674: ; 0x0211F674
	.word ov7_0211CD58
	.word ov7_0211CD70
ptr_FUN_02007cc4_overlay_7_0211f67c: ; 0x0211F67C
	.word sub_02007CC4
ptr_FUN_overlay_21_0211cadc_overlay_7_0211f680: ; 0x0211F680
	.word ov7_0211CADC
ptr_FUN_overlay_7_0211cc94_overlay_7_0211f684: ; 0x0211F684
	.word ov7_0211CC94
ptr_FUN_overlay_7_0211cccc_overlay_7_0211f688: ; 0x0211F688
	.word ov7_0211CCCC
	.word ov7_0211CD7C
DAT_overlay_7_0211f690: ; 0x0211F690
	.byte 0x80, 0x00
DAT_overlay_7_0211f692: ; 0x0211F692
	.byte 0x7C, 0x00, 0x50, 0x00, 0x7C, 0x00, 0xB0, 0x00, 0x7C, 0x00, 0x80, 0x00, 0x58, 0x00
	.byte 0x48, 0x00, 0x88, 0x00, 0xB8, 0x00, 0x88, 0x00, 0x58, 0x00, 0x58, 0x00, 0x58, 0x00, 0x90, 0x00
	.byte 0xA8, 0x00, 0x58, 0x00, 0xA8, 0x00, 0x90, 0x00, 0x80, 0x00, 0x58, 0x00, 0x38, 0x00, 0x58, 0x00
	.byte 0xC8, 0x00, 0x58, 0x00, 0x58, 0x00, 0x90, 0x00, 0xA8, 0x00, 0x90, 0x00, 0x28, 0x00, 0x58, 0x00
	.byte 0x70, 0x00, 0x58, 0x00, 0xB8, 0x00, 0x58, 0x00, 0x48, 0x00, 0x90, 0x00, 0x90, 0x00, 0x90, 0x00
	.byte 0xD8, 0x00, 0x90, 0x00, 0x60, 0x00, 0x58, 0x00, 0xA0, 0x00, 0x58, 0x00, 0x20, 0x00, 0x58, 0x00
	.byte 0xE0, 0x00, 0x58, 0x00, 0x80, 0x00, 0x90, 0x00, 0xC0, 0x00, 0x90, 0x00, 0x40, 0x00, 0x90, 0x00
	.byte 0x60, 0x00, 0x58, 0x00, 0xA0, 0x00, 0x58, 0x00, 0x20, 0x00, 0x58, 0x00, 0xE0, 0x00, 0x58, 0x00
	.byte 0x60, 0x00, 0x90, 0x00, 0xA0, 0x00, 0x90, 0x00, 0x20, 0x00, 0x90, 0x00, 0xE0, 0x00, 0x90, 0x00
	.byte 0x78, 0x00, 0x50, 0x00, 0xC8, 0x00, 0x50, 0x00, 0x28, 0x00, 0x50, 0x00, 0x90, 0x00, 0x78, 0x00
	.byte 0xE0, 0x00, 0x78, 0x00, 0x40, 0x00, 0x78, 0x00, 0x78, 0x00, 0xA0, 0x00, 0xC8, 0x00, 0xA0, 0x00
	.byte 0x28, 0x00, 0xA0, 0x00, 0x60, 0x00, 0x50, 0x00, 0xA0, 0x00, 0x50, 0x00, 0x20, 0x00, 0x50, 0x00
	.byte 0xE0, 0x00, 0x50, 0x00, 0x40, 0x00, 0x78, 0x00, 0xC0, 0x00, 0x78, 0x00, 0x60, 0x00, 0x98, 0x00
	.byte 0xA0, 0x00, 0x98, 0x00, 0x20, 0x00, 0x98, 0x00, 0xE0, 0x00, 0x98, 0x00, 0x60, 0x00, 0x50, 0x00
	.byte 0xA0, 0x00, 0x50, 0x00, 0x20, 0x00, 0x50, 0x00, 0xE0, 0x00, 0x50, 0x00, 0x80, 0x00, 0x78, 0x00
	.byte 0xC8, 0x00, 0x78, 0x00, 0x30, 0x00, 0x78, 0x00, 0x60, 0x00, 0x98, 0x00, 0xA0, 0x00, 0x98, 0x00
	.byte 0x20, 0x00, 0x98, 0x00, 0xE0, 0x00, 0x98, 0x00
s_data_menu_overlay_7_0211f798: ; 0x0211F798
	.asciz "data/menu"
_0211F7A2:
	.byte 0x00, 0x00
s_mr000_00_overlay_7_0211f7a4: ; 0x0211F7A4
	.asciz "mr000_00"
_0211F7AD:
	.byte 0x00, 0x00, 0x00
s_ma005_00_overlay_7_0211f7b0: ; 0x0211F7B0
	.asciz "ma005_00"
_0211F7B9:
	.byte 0x00, 0x00, 0x00
s_menu_overlay_7_0211f7bc: ; 0x0211F7BC
	.asciz "menu/"
_0211F7C2:
	.byte 0x00, 0x00
s_mr000_bg_overlay_7_0211f7c4: ; 0x0211F7C4
	.asciz "mr000_bg_"
_0211F7CE:
	.byte 0x00, 0x00
s_mr000_overlay_7_0211f7d0: ; 0x0211F7D0
	.asciz "mr000"
_0211F7D6:
	.byte 0x00, 0x00
s_RSC_overlay_7_0211f7d8: ; 0x0211F7D8
	.asciz "RSC"
s_data_menu_mr001_00_LZ_bin_overlay_7_0211f7dc: ; 0x0211F7DC
	.asciz "data/menu/mr001_00_LZ.bin"
_0211F7F6:
	.byte 0x00, 0x00
s_RSC_mr001_00_NCBR_overlay_7_0211f7f8: ; 0x0211F7F8
	.asciz "RSC:mr001_00.NCBR"
_0211F80A:
	.byte 0x00, 0x00
s_RSC_mr001_NCLR_overlay_7_0211f80c: ; 0x0211F80C
	.asciz "RSC:mr001.NCLR"
_0211F81B:
	.byte 0x00
s_RSC_mr001_00_NCER_overlay_7_0211f81c: ; 0x0211F81C
	.asciz "RSC:mr001_00.NCER"
_0211F82E:
	.byte 0x00, 0x00
s_RSC_mr001_00_cac_overlay_7_0211f830: ; 0x0211F830
	.asciz "RSC:mr001_00.cac"
	; 0x0211F841
