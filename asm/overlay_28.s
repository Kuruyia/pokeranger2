    .include "asm/macros.inc"
    .include "asm/include/overlay_28.inc"

    .text

	arm_func_start ov28_0211C9E0
ov28_0211C9E0: ; 0x0211C9E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02007C98
	ldr r1, _0211CA08 ; =ptr_FUN_overlay_11_0211ca0c_overlay_28_0211dc04
	mov r0, r5
	stmia r5, {r1, r4}
	bl ov28_0211CAAC
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA08: .word ptr_FUN_overlay_11_0211ca0c_overlay_28_0211dc04
	arm_func_end ov28_0211C9E0

	arm_func_start ov28_0211CA0C
ov28_0211CA0C: ; 0x0211CA0C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0211CA54 ; =ptr_FUN_overlay_11_0211ca0c_overlay_28_0211dc04
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211CA44
	beq _0211CA3C
	mov r0, r4
	bl ov28_0211D188
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov28_0211CA0C
_0211CA3C:
	mov r0, #0
	str r0, [r5, #8]
_0211CA44:
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA54: .word ptr_FUN_overlay_11_0211ca0c_overlay_28_0211dc04

	arm_func_start ov28_0211CA58
ov28_0211CA58: ; 0x0211CA58
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0211CAA8 ; =ptr_FUN_overlay_11_0211ca0c_overlay_28_0211dc04
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211CA90
	beq _0211CA88
	mov r0, r4
	bl ov28_0211D188
	mov r0, r4
	bl _ZdlPv
	arm_func_end ov28_0211CA58
_0211CA88:
	mov r0, #0
	str r0, [r5, #8]
_0211CA90:
	mov r0, r5
	bl sub_02007CC0
	mov r0, r5
	bl _ZdlPv
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CAA8: .word ptr_FUN_overlay_11_0211ca0c_overlay_28_0211dc04

	arm_func_start ov28_0211CAAC
ov28_0211CAAC: ; 0x0211CAAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211CACC
	ldr r1, [r4, #4]
	bl ov28_0211D164
	arm_func_end ov28_0211CAAC
_0211CACC:
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}

	arm_func_start ov28_0211CAD4
ov28_0211CAD4: ; 0x0211CAD4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211CB04
	bl ov28_0211D218
	ldr r0, [r4, #8]
	bl ov28_0211DAB0
	mvn r1, #0
	cmp r0, r1
	movne r0, #6
	ldmneia sp!, {r4, pc}
	arm_func_end ov28_0211CAD4
_0211CB04:
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov28_0211CB0C
ov28_0211CB0C: ; 0x0211CB0C
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov28_0211D2DC
	ldmia sp!, {r3, pc}
	arm_func_end ov28_0211CB0C

	arm_func_start ov28_0211CB24
ov28_0211CB24: ; 0x0211CB24
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov28_0211D344
	ldmia sp!, {r3, pc}
	arm_func_end ov28_0211CB24

	arm_func_start ov28_0211CB3C
ov28_0211CB3C: ; 0x0211CB3C
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
	mov r0, #0
	bl GX_SetBankForTex
	mov r0, #0
	bl GX_SetBankForTexPltt
	mov r0, #2
	bl GX_SetBankForOBJ
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #0
	mov r2, r1
	bl GX_SetGraphicsMode
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, #8
	bl GX_SetBankForSubOBJ
	mov r1, #0
	str r1, [sp]
	ldr r0, _0211CC58 ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl G2x_SetBlendAlpha_
	ldr ip, _0211CC5C ; =0x04000060
	ldr r0, _0211CC60 ; =0xFFFFFDF1
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
	ldrh r0, [r3]
	bic r0, r0, #0x8000
	strh r0, [r3]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x800
	str r0, [r1]
	ldr r0, [r1]
	bic r0, r0, #0x38000000
	str r0, [r1]
	ldr r0, [r1]
	bic r0, r0, #0x7000000
	str r0, [r1]
	bl GX_DispOn
	ldr r1, _0211CC64 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CC58: .word 0x04000050
_0211CC5C: .word 0x04000060
_0211CC60: .word 0xFFFFFDF1
_0211CC64: .word 0x04001000
	arm_func_end ov28_0211CB3C

	arm_func_start ov28_0211CC68
ov28_0211CC68: ; 0x0211CC68
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov28_0211D700
	ldr r0, [r4, #8]
	bl ov28_0211D9E0
	ldmia sp!, {r4, pc}
	arm_func_end ov28_0211CC68

	arm_func_start ov28_0211CC8C
ov28_0211CC8C: ; 0x0211CC8C
	bx lr
	arm_func_end ov28_0211CC8C

	arm_func_start ov28_0211CC90
ov28_0211CC90: ; 0x0211CC90
	mov r0, #0x20
	bx lr
	arm_func_end ov28_0211CC90

	arm_func_start ov28_0211CC98
ov28_0211CC98: ; 0x0211CC98
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mvn r0, #0
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	bl OS_IsAlarmAvailable
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _0211CCCC
	bl OS_InitAlarm
	arm_func_end ov28_0211CC98
_0211CCCC:
	add r0, r4, #0xd8
	add r1, r4, #0xf8
	add r0, r0, #0x1000
	add r1, r1, #0x1000
	mov r2, #1
	bl OS_InitMessageQueue
	add r3, r4, #0xd8
	mov r0, #0x1000
	ldr r1, _0211CD20 ; =ov28_0211D030
	mov r2, r4
	str r0, [sp]
	mov ip, #0x14
	add r0, r4, #0x18
	add r3, r3, #0x1000
	str ip, [sp, #4]
	bl OS_CreateThread
	add r0, r4, #0x18
	bl OS_WakeupThreadDirect
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CD20: .word ov28_0211D030

	arm_func_start ov28_0211CD24
ov28_0211CD24: ; 0x0211CD24
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x18
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _0211CD58
	add r0, r4, #0xd8
	add r0, r0, #0x1000
	mvn r1, #0
	mov r2, #1
	bl OS_SendMessage
	add r0, r4, #0x18
	bl OS_JoinThread
	arm_func_end ov28_0211CD24
_0211CD58:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0211CD68
	bl OS_EndAlarm
_0211CD68:
	mov r0, r4
	bl ov28_0211CE60
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211CD94
	beq _0211CD8C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CD8C:
	mov r0, #0
	str r0, [r4, #8]
_0211CD94:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov28_0211CD9C
ov28_0211CD9C: ; 0x0211CD9C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	mov r0, #4
	bl GX_SetBankForSubBG
	ldr r1, _0211CE50 ; =0x04001000
	mov r0, #3
	ldr r1, [r1]
	str r1, [sp, #8]
	ldr r2, [sp, #8]
	mov r1, r2, lsl #0x1d
	mov r1, r1, lsr #0x1d
	str r2, [sp, #0xc]
	str r1, [r4, #0x10]
	bl GXS_SetGraphicsMode
	ldr r1, _0211CE54 ; =0x0400100E
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0x84
	orr r0, r0, #0x4000
	strh r0, [r1]
	bl G2S_GetBG3ScrPtr
	mov r1, r0
	mov r0, #0x8000
	mov r2, #0x18000
	bl MIi_CpuClear16
	ldr r1, _0211CE58 ; =0x0400101C
	mov r2, #0
	add r0, sp, #0x10
	str r2, [r1]
	bl sub_0205FDF0
	mov r2, #0
	str r2, [sp]
	ldr r0, _0211CE5C ; =0x04001030
	add r1, sp, #0x10
	mov r3, r2
	str r2, [sp, #4]
	bl G2x_SetBGyAffine_
	ldr r1, _0211CE50 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x800
	str r0, [r1]
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CE50: .word 0x04001000
_0211CE54: .word 0x0400100E
_0211CE58: .word 0x0400101C
_0211CE5C: .word 0x04001030
	arm_func_end ov28_0211CD9C

	arm_func_start ov28_0211CE60
ov28_0211CE60: ; 0x0211CE60
	ldr ip, _0211CE6C ; =FUN_02061568
	ldr r0, [r0, #0x10]
	bx ip
	.align 2, 0
_0211CE6C: .word GXS_SetGraphicsMode
	arm_func_end ov28_0211CE60

	arm_func_start ov28_0211CE70
ov28_0211CE70: ; 0x0211CE70
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xd8
	add r0, r0, #0x1000
	mov r2, #0
	str r1, [r4]
	bl OS_SendMessage
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mvn r0, #0
	str r0, [r4]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov28_0211CE70

	arm_func_start ov28_0211CEA8
ov28_0211CEA8: ; 0x0211CEA8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #0
	ldmltia sp!, {r4, pc}
	add r0, r4, #0xd8
	add r0, r0, #0x1000
	mov r2, #0
	bl OS_SendMessage
	cmp r0, #0
	mvnne r0, #0
	strne r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end ov28_0211CEA8

	arm_func_start ov28_0211CEDC
ov28_0211CEDC: ; 0x0211CEDC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x254
	mov r5, r0
	ldr r0, [r5, #0xc]
	mov r4, r1
	cmp r0, #0
	beq _0211D01C
	ldr ip, [r0]
	add r2, sp, #0x1f4
	ldr ip, [ip]
	mov r3, #0x60
	blx ip
	cmp r0, #0
	beq _0211D01C
	ldr r0, [r5, #0xc]
	add r2, sp, #0x194
	ldr ip, [r0]
	mov r1, r4
	ldr ip, [ip, #4]
	mov r3, #0x60
	blx ip
	cmp r0, #0
	beq _0211D01C
	bl sub_0201001C
	mov r3, #1
	add r0, r0, #0x1000
	str r3, [sp]
	ldr r0, [r0, #0x4a8]
	mov ip, #0
	stmib sp, {r0, ip}
	ldr r1, _0211D028 ; =s_DCB_overlay_28_0211dc30
	add r0, sp, #0x10
	add r2, sp, #0x1f4
	str ip, [sp, #0xc]
	bl sub_02002AEC
	ldr r0, [sp, #0x78]
	cmp r0, #0
	ldrne r0, [r0, #0x4c]
	cmpne r0, #0
	bne _0211CF8C
	add r0, sp, #0x10
	bl sub_02002B6C
	mov r0, #0
	b _0211D00C
	arm_func_end ov28_0211CEDC
_0211CF8C:
	ldr r1, _0211D02C ; =s_DCB_s_overlay_28_0211dc34
	add r0, sp, #0x7c
	add r2, sp, #0x194
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
	bne _0211CFE0
	add r0, sp, #0xdc
	bl CBinaryFile_complete_obj_dtor
	add r0, sp, #0x10
	bl sub_02002B6C
	mov r0, #0
	b _0211D00C
_0211CFE0:
	ldr r1, [sp, #0x12c]
	bl DC_FlushRange
	ldr r0, [sp, #0x128]
	ldr r2, [sp, #0x12c]
	mov r1, #0
	bl GXS_LoadBG3Scr
	add r0, sp, #0xdc
	bl CBinaryFile_complete_obj_dtor
	add r0, sp, #0x10
	bl sub_02002B6C
	mov r0, #1
_0211D00C:
	cmp r0, #0
	addne sp, sp, #0x254
	movne r0, #1
	ldmneia sp!, {r4, r5, pc}
_0211D01C:
	mov r0, #0
	add sp, sp, #0x254
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0211D028: .word s_DCB_overlay_28_0211dc30
_0211D02C: .word s_DCB_s_overlay_28_0211dc34

	arm_func_start ov28_0211D030
ov28_0211D030: ; 0x0211D030
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs fp, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r4, fp, #0xd8
	mov r6, #0x11
	add r7, sp, #0
	mov r5, #0
	arm_func_end ov28_0211D030
_0211D04C:
	mov r1, r7
	mov r2, #1
	add r0, r4, #0x1000
	bl OS_ReceiveMessage
	ldr r8, [sp]
	cmp r8, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr sl, [r0, #0x4c0]
	mov r0, sl
	bl sub_0200E324
	cmp r0, #4
	beq _0211D094
	mov r0, sl
	mov r1, #4
	mov r2, #0x1e
	bl sub_0200E0E0
_0211D094:
	mov r0, sl
	mov sb, #0
	bl sub_0200E310
	cmp r0, #0
	beq _0211D0DC
_0211D0A8:
	mov r0, r6
	bl OS_Sleep
	add r0, r4, #0x1000
	mov r1, r7
	mov r2, r5
	bl OS_ReadMessage
	cmp r0, #0
	movne sb, #1
	bne _0211D0DC
	mov r0, sl
	bl sub_0200E310
	cmp r0, #0
	bne _0211D0A8
_0211D0DC:
	cmp sb, #0
	bne _0211D04C
	mov r1, r8
	mov r0, fp
	bl ov28_0211CEDC
	mov r0, sl
	mov r1, #3
	mov r2, #0x1e
	bl sub_0200E0E0
	b _0211D04C
_0211D104:
	.byte 0xF8, 0x8F, 0xBD, 0xE8

	arm_func_start ov28_0211D108
ov28_0211D108: ; 0x0211D108
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x18
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _0211D140
	add r0, r4, #0xd8
	add r0, r0, #0x1000
	mvn r1, #0
	mov r2, #0
	bl OS_SendMessage
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
	arm_func_end ov28_0211D108
_0211D140:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov28_0211D148
ov28_0211D148: ; 0x0211D148
	stmdb sp!, {r3, lr}
	add r0, r0, #0x18
	bl OS_IsThreadTerminated
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov28_0211D148

	arm_func_start ov28_0211D164
ov28_0211D164: ; 0x0211D164
	stmdb sp!, {r4, lr}
	ldr r2, _0211D184 ; =ptr_FUN_overlay_28_0211dac8_overlay_28_0211dc58
	mov r4, r0
	str r2, [r4, #0x40]
	str r1, [r4, #0x3c]
	bl ov28_0211D19C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D184: .word ptr_FUN_overlay_28_0211dac8_overlay_28_0211dc58
	arm_func_end ov28_0211D164

	arm_func_start ov28_0211D188
ov28_0211D188: ; 0x0211D188
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov28_0211D380
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov28_0211D188

	arm_func_start ov28_0211D19C
ov28_0211D19C: ; 0x0211D19C
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r4, r0
	strh r2, [r4]
	str r2, [r4, #0x18]
	str r2, [r4, #0x14]
	str r2, [r4, #8]
	mov r1, r2
	arm_func_end ov28_0211D19C
_0211D1BC:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x20]
	cmp r2, #6
	blt _0211D1BC
	mov r0, #0x68
	str r1, [r4, #4]
	bl _Znwm
	cmp r0, #0
	beq _0211D1EC
	ldr r1, [r4, #0x3c]
	bl sub_0202A510
_0211D1EC:
	str r0, [r4, #0xc]
	ldr r0, _0211D214 ; =0x000010FC
	bl _Znwm
	cmp r0, #0
	beq _0211D204
	bl ov28_0211CC98
_0211D204:
	str r0, [r4, #8]
	add r1, r4, #0x40
	str r1, [r0, #0xc]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D214: .word 0x000010FC

	arm_func_start ov28_0211D218
ov28_0211D218: ; 0x0211D218
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0211D230
	bl sub_0200F64C
	arm_func_end ov28_0211D218
_0211D230:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211D240
	bl ov28_0211CEA8
_0211D240:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0211D250
	bl sub_0202A5A8
_0211D250:
	ldrh r0, [r4]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0211D260: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _0211D280 ; case 1
	ldmia sp!, {r4, pc} ; case 2
	ldmia sp!, {r4, pc} ; case 3
	ldmia sp!, {r4, pc} ; case 4
	ldmia sp!, {r4, pc} ; case 5
	b _0211D28C ; case 6
	b _0211D2B0 ; case 7
_0211D280:
	mov r0, r4
	bl ov28_0211D794
	ldmia sp!, {r4, pc}
_0211D28C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211D2A4
	bl ov28_0211D108
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
_0211D2A4:
	mov r0, #7
	strh r0, [r4]
	ldmia sp!, {r4, pc}
_0211D2B0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211D2C8
	bl ov28_0211D148
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
_0211D2C8:
	mov r0, r4
	bl ov28_0211DA24
	mov r0, #2
	strh r0, [r4]
	ldmia sp!, {r4, pc}

	arm_func_start ov28_0211D2DC
ov28_0211D2DC: ; 0x0211D2DC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0211D2F4
	bl sub_0202A5EC
	arm_func_end ov28_0211D2DC
_0211D2F4:
	ldrh r0, [r4]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0211D304: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _0211D338 ; case 1
	b _0211D324 ; case 2
	b _0211D338 ; case 3
	ldmia sp!, {r4, pc} ; case 4
	b _0211D338 ; case 5
	b _0211D338 ; case 6
	b _0211D338 ; case 7
_0211D324:
	mov r0, r4
	bl ov28_0211DA68
	cmp r0, #0
	moveq r0, #4
	streqh r0, [r4]
_0211D338:
	mov r0, r4
	bl ov28_0211D450
	ldmia sp!, {r4, pc}

	arm_func_start ov28_0211D344
ov28_0211D344: ; 0x0211D344
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0211D35C
	bl sub_0202A5F8
	arm_func_end ov28_0211D344
_0211D35C:
	mov r0, r4
	bl ov28_0211D8AC
	ldmia sp!, {r4, pc}

	arm_func_start ov28_0211D368
ov28_0211D368: ; 0x0211D368
	ldr r0, [r0, #0x3c]
	ldr ip, _0211D37C ; =FUN_0200C588
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bx ip
	.align 2, 0
_0211D37C: .word sub_0200C588
	arm_func_end ov28_0211D368

	arm_func_start ov28_0211D380
ov28_0211D380: ; 0x0211D380
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x3c]
	mov r1, #0x1e
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	ldr r0, [r4, #0x3c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C3D0
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _0211D3D4
	beq _0211D3CC
	mov r0, r5
	bl ov28_0211CD24
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov28_0211D380
_0211D3CC:
	mov r0, #0
	str r0, [r4, #8]
_0211D3D4:
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0211D3FC
	beq _0211D3F4
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl _ZdlPv
_0211D3F4:
	mov r0, #0
	str r0, [r4, #0x14]
_0211D3FC:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _0211D424
	beq _0211D41C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0211D41C:
	mov r0, #0
	str r0, [r4, #0x18]
_0211D424:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0211D444
	mov r0, r5
	bl sub_0202A528
	mov r0, r5
	bl _ZdlPv
_0211D444:
	mov r0, #0
	str r0, [r4, #0xc]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov28_0211D450
ov28_0211D450: ; 0x0211D450
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0200F71C
	ldmia sp!, {r3, pc}
	arm_func_end ov28_0211D450

	arm_func_start ov28_0211D468
ov28_0211D468: ; 0x0211D468
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r1, #0x4000000
	ldr r3, [r1]
	ldr r2, _0211D6F0 ; =0xFFCFFFEF
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
	orr r0, r0, #1
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xc]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #0xc]
	ldr r0, [r4, #0x3c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020345D4
	mov r1, #0
	mov r0, #0x20
	str r1, [sp, #0x1c]
	strb r0, [sp, #0x14]
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _0211D534
	beq _0211D52C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
	arm_func_end ov28_0211D468
_0211D52C:
	mov r0, #0
	str r0, [r4, #0x18]
_0211D534:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0211D56C
	ldr r2, [r4, #0x3c]
	mov r1, #0x40
	str r1, [sp]
	ldrb r3, [sp, #0x14]
	add r1, r2, #0x1000
	add ip, r2, #0x24
	ldr r2, [r1, #0x4a8]
	add r1, ip, r3, lsl #3
	mov r3, #0
	bl sub_0200ECD0
_0211D56C:
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	ldr r0, [r4, #0x18]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0211D6F4 ; =s_data_menu_overlay_28_0211dca0
	ldr r2, _0211D6F8 ; =s_ma005_00_overlay_28_0211dcac
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [sp, #0x1c]
	mov r1, #0
	add r0, r2, r0
	str r0, [sp, #0x1c]
	str r1, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #0xf0
	mov r3, #0x10
	bl sub_0200F4FC
	mov r1, #0x20
	str r0, [r4, #0x2c]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x2c]
	mov r2, r1
	bl sub_0200EBF4
	ldr r0, [r4, #0x18]
	ldrb r3, [sp, #0x14]
	ldr r2, [r0, #0x30]
	mov r1, #2
	add r2, r3, r2
	strb r2, [sp, #0x14]
	add r0, sp, #0x18
	str r1, [sp, #0x18]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, sp, #0x14
	add r3, sp, #0x1c
	bl sub_0202A724
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0211D63C
	beq _0211D634
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl _ZdlPv
_0211D634:
	mov r0, #0
	str r0, [r4, #0x14]
_0211D63C:
	mov r0, #4
	bl _Znwm
	cmp r0, #0
	beq _0211D654
	ldr r1, _0211D6FC ; =s_data_message_etc_place_name_overlay_28_0211dcb8
	bl sub_02021404
_0211D654:
	str r0, [r4, #0x14]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211D668
	bl ov28_0211CD9C
_0211D668:
	mov r0, r4
	bl ov28_0211D980
	ldr r0, [r4, #0x3c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C3D0
	ldr r0, [r4, #0x3c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	mov r3, r1
	mov r2, #0xc
	bl sub_0200C408
	ldr r0, [r4, #0x3c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C680
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r0, [r4, #0x3c]
	mov r2, #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C6C8
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211D6F0: .word 0xFFCFFFEF
_0211D6F4: .word s_data_menu_overlay_28_0211dca0
_0211D6F8: .word s_ma005_00_overlay_28_0211dcac
_0211D6FC: .word s_data_message_etc_place_name_overlay_28_0211dcb8

	arm_func_start ov28_0211D700
ov28_0211D700: ; 0x0211D700
	stmdb sp!, {r3, lr}
	mov r1, #1
	strh r1, [r0]
	bl ov28_0211D718
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov28_0211D700

	arm_func_start ov28_0211D718
ov28_0211D718: ; 0x0211D718
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov28_0211D468
	mov r0, r4
	bl ov28_0211D368
	ldr r0, [r4, #0x3c]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov28_0211D718

	arm_func_start ov28_0211D748
ov28_0211D748: ; 0x0211D748
	stmdb sp!, {r4, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, _0211D790 ; =DAT_overlay_28_0211db10
	mov r4, #1
	mov lr, #0
	arm_func_end ov28_0211D748
_0211D764:
	mov ip, lr, lsl #2
	ldrh r2, [r3, ip]
	add lr, lr, #1
	cmp r1, r2
	addeq r2, r3, ip
	ldreqh r4, [r2, #2]
	cmp lr, #0x2c
	blo _0211D764
	mov r1, r4
	bl ov28_0211CE70
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D790: .word DAT_overlay_28_0211db10

	arm_func_start ov28_0211D794
ov28_0211D794: ; 0x0211D794
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x2c]
	ldr r1, [r1, #0x14]
	ldrh r1, [r1, #2]
	and r1, r1, #2
	mov r5, r1, lsl #0x10
	bl sub_0200EB84
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	orrs r0, r0, r5, lsr #16
	beq _0211D7D8
	mov r0, r4
	bl ov28_0211D844
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov28_0211D794
_0211D7D8:
	ldr r0, [r4, #0xc]
	add r1, sp, #2
	add r2, sp, #0
	bl sub_0202B5A8
	ldrh r0, [sp, #2]
	cmp r0, #1
	beq _0211D800
	cmp r0, #6
	beq _0211D820
	ldmia sp!, {r3, r4, r5, pc}
_0211D800:
	ldr r0, [r4, #0x3c]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	bl ov28_0211D980
	ldmia sp!, {r3, r4, r5, pc}
_0211D820:
	ldr r0, [r4, #0x3c]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldrh r1, [sp]
	mov r0, r4
	bl ov28_0211D9AC
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov28_0211D844
ov28_0211D844: ; 0x0211D844
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x3c]
	ldr r1, _0211D888 ; =0x00000103
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr r0, [r4, #8]
	cmp r0, #0
	movne r0, #6
	strneh r0, [r4]
	ldmneia sp!, {r4, pc}
	mov r1, #2
	mov r0, r4
	strh r1, [r4]
	bl ov28_0211DA24
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D888: .word 0x00000103
	arm_func_end ov28_0211D844

	arm_func_start ov28_0211D88C
ov28_0211D88C: ; 0x0211D88C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov28_0211D748
	strh r4, [r5, #0x38]
	mov r0, #1
	str r0, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov28_0211D88C

	arm_func_start ov28_0211D8AC
ov28_0211D8AC: ; 0x0211D8AC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #4]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #0x38]
	and r4, r0, #0xff
	cmp r4, #0xc8
	subhi r0, r4, #0x9b
	andhi r4, r0, #0xff
	bhi _0211D920
	cmp r4, #0x64
	bls _0211D920
	ldr r2, _0211D97C ; =0x51EB851F
	mov r0, r4, lsr #0x1f
	smull r1, r3, r2, r4
	add r3, r0, r3, asr #5
	mov r2, #0x64
	smull r0, r1, r2, r3
	sub r3, r4, r0
	and r4, r3, #0xff
	arm_func_end ov28_0211D8AC
_0211D920:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C980
	ldr r1, [r5, #0x3c]
	ldr r0, [r5, #0x14]
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
_0211D97C: .word 0x51EB851F

	arm_func_start ov28_0211D980
ov28_0211D980: ; 0x0211D980
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xc]
	mov r2, #1
	ldrh r4, [r1, #0x56]
	mov r1, r4
	bl ov28_0211D9D0
	mov r0, r5
	mov r1, r4
	bl ov28_0211D88C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov28_0211D980

	arm_func_start ov28_0211D9AC
ov28_0211D9AC: ; 0x0211D9AC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #3
	bl ov28_0211D9D0
	mov r0, r5
	mov r1, r4
	bl ov28_0211D88C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov28_0211D9AC

	arm_func_start ov28_0211D9D0
ov28_0211D9D0: ; 0x0211D9D0
	ldr ip, _0211D9DC ; =FUN_0202B50C
	ldr r0, [r0, #0xc]
	bx ip
	.align 2, 0
_0211D9DC: .word sub_0202B50C
	arm_func_end ov28_0211D9D0

	arm_func_start ov28_0211D9E0
ov28_0211D9E0: ; 0x0211D9E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #3
	mov r2, #0xf
	bl sub_0200E0E0
	ldr r0, [r4, #0x3c]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end ov28_0211D9E0

	arm_func_start ov28_0211DA24
ov28_0211DA24: ; 0x0211DA24
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #4
	mov r2, #0xf
	bl sub_0200E0E0
	ldr r0, [r4, #0x3c]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0xf
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end ov28_0211DA24

	arm_func_start ov28_0211DA68
ov28_0211DA68: ; 0x0211DA68
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x3c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211DAA0
	ldr r0, [r4, #0x3c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	beq _0211DAA8
	arm_func_end ov28_0211DA68
_0211DAA0:
	mov r0, #1
	ldmia sp!, {r4, pc}
_0211DAA8:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start ov28_0211DAB0
ov28_0211DAB0: ; 0x0211DAB0
	ldrh r0, [r0]
	cmp r0, #4
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	bx lr
	arm_func_end ov28_0211DAB0

	arm_func_start ov28_0211DAC8
ov28_0211DAC8: ; 0x0211DAC8
	stmdb sp!, {r3, lr}
	mov r3, r1
	mov r0, r2
	ldr r1, _0211DAE8 ; =s_data_menu_rd_03d_LZ_bin_overlay_28_0211dcd8
	mov r2, r3
	bl OS_SPrintf
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211DAE8: .word s_data_menu_rd_03d_LZ_bin_overlay_28_0211dcd8
	arm_func_end ov28_0211DAC8

	arm_func_start ov28_0211DAEC
ov28_0211DAEC: ; 0x0211DAEC
	stmdb sp!, {r3, lr}
	mov r3, r1
	mov r0, r2
	ldr r1, _0211DB0C ; =s_rd_03d_nbfs_overlay_28_0211dcf0
	mov r2, r3
	bl OS_SPrintf
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211DB0C: .word s_rd_03d_nbfs_overlay_28_0211dcf0
	arm_func_end ov28_0211DAEC
	; 0x0211DB10

    .rodata
DAT_overlay_28_0211db10: ; 0x0211DB10
	.byte 0x08, 0x00, 0xF8, 0x01
DAT_overlay_28_0211db14: ; 0x0211DB14
	.byte 0x07, 0x00, 0xF4, 0x01, 0x04, 0x00, 0xF6, 0x01, 0x05, 0x00, 0xF6, 0x01
	.byte 0x02, 0x00, 0xF4, 0x01, 0x03, 0x00, 0xF4, 0x01, 0x01, 0x00, 0xF5, 0x01, 0x06, 0x00, 0xF7, 0x01
	.byte 0x09, 0x00, 0xF4, 0x01, 0x0A, 0x00, 0xF9, 0x01, 0x0E, 0x00, 0xFB, 0x01, 0xC9, 0x00, 0xF4, 0x01
	.byte 0x0B, 0x00, 0xFA, 0x01, 0x0F, 0x00, 0xF4, 0x01, 0x11, 0x00, 0xFE, 0x01, 0x10, 0x00, 0xFD, 0x01
	.byte 0xCA, 0x00, 0xF4, 0x01, 0x12, 0x00, 0xFF, 0x01
	.word 0x02000013
	.word 0x02010014
	.word 0x02010078
	.byte 0x15, 0x00, 0xF4, 0x01
	.word 0x02020016
	.word 0x02030017
	.byte 0x18, 0x00, 0xF4, 0x01, 0x1A, 0x00, 0xF4, 0x01
	.word 0x02040019
	.byte 0x1B, 0x00, 0xF4, 0x01
	.word 0x0205001C
	.byte 0xCB, 0x00, 0xF4, 0x01
	.word 0x0206001D
	.word 0x0207001E
	.byte 0xCC, 0x00, 0xF4, 0x01
	.word 0x02080020
	.word 0x02080021
	.byte 0x22, 0x00, 0xF4, 0x01
	.byte 0x23, 0x00, 0xF4, 0x01
	.word MAIN_BSS_02090024
	.byte 0x26, 0x00, 0xFC, 0x01
	.word MAIN_BSS_020A0027
	.word MAIN_BSS_020B0029
	.word MAIN_BSS_020B002A
	.word MAIN_BSS_020B002B
	.word MAIN_BSS_020B002C

    .section .sinit,4 ; 0x0211DBC0

    .data
PTR_ptr_FUN_020835bc_overlay_28_0211dbe0: ; 0x0211DBE0
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_13CMapDispScene_overlay_28_0211dbec
	.word PTR_ptr_FUN_02083578_0208a804
s_13CMapDispScene_overlay_28_0211dbec: ; 0x0211DBEC
	.asciz "13CMapDispScene"
_0211DBFC:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_28_0211dbe0
ptr_FUN_overlay_11_0211ca0c_overlay_28_0211dc04: ; 0x0211DC04
	.word ov28_0211CA0C
ptr_FUN_overlay_19_0211ca58_overlay_28_0211dc08: ; 0x0211DC08
	.word ov28_0211CA58
ptr_FUN_overlay_28_0211cad4_overlay_28_0211dc0c: ; 0x0211DC0C
	.word ov28_0211CAD4
ptr_FUN_overlay_28_0211cb0c_overlay_28_0211dc10: ; 0x0211DC10
	.word ov28_0211CB0C
ptr_FUN_overlay_28_0211cb24_overlay_28_0211dc14: ; 0x0211DC14
	.word ov28_0211CB24
ptr_FUN_02007ce0_overlay_28_0211dc18: ; 0x0211DC18
	.word sub_02007CE0
ptr_FUN_02007cc4_overlay_28_0211dc1c: ; 0x0211DC1C
	.word sub_02007CC4
ptr_FUN_overlay_28_0211cb3c_overlay_28_0211dc20: ; 0x0211DC20
	.word ov28_0211CB3C
ptr_FUN_overlay_9_0211cc68_overlay_28_0211dc24: ; 0x0211DC24
	.word ov28_0211CC68
	.word ov28_0211CC8C
ptr_FUN_overlay_29_0211cc90_overlay_28_0211dc2c: ; 0x0211DC2C
	.word ov28_0211CC90
s_DCB_overlay_28_0211dc30: ; 0x0211DC30
	.asciz "DCB"
s_DCB_s_overlay_28_0211dc34: ; 0x0211DC34
	.asciz "DCB:%s"
_0211DC3B:
	.byte 0x00
PTR_ptr_FUN_02083578_overlay_28_0211dc3c: ; 0x0211DC3C
	.word _ZTVN10__cxxabiv117__class_type_infoE+8
	.word s_22IMapDispRscPathBuilder_overlay_28_0211dc60
PTR_ptr_FUN_020835bc_overlay_28_0211dc44: ; 0x0211DC44
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_N14CMapDispScreen12CPathBuilderE_overlay_28_0211dc7c
	.word PTR_ptr_FUN_02083578_overlay_28_0211dc3c
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_28_0211dc44
ptr_FUN_overlay_28_0211dac8_overlay_28_0211dc58: ; 0x0211DC58
	.word ov28_0211DAC8
ptr_FUN_overlay_28_0211daec_overlay_28_0211dc5c: ; 0x0211DC5C
	.word ov28_0211DAEC
s_22IMapDispRscPathBuilder_overlay_28_0211dc60: ; 0x0211DC60
	.asciz "22IMapDispRscPathBuilder"
_0211DC79:
	.byte 0x00, 0x00, 0x00
s_N14CMapDispScreen12CPathBuilderE_overlay_28_0211dc7c: ; 0x0211DC7C
	.asciz "N14CMapDispScreen12CPathBuilderE"
_0211DC9D:
	.byte 0x00, 0x00, 0x00
s_data_menu_overlay_28_0211dca0: ; 0x0211DCA0
	.asciz "data/menu"
_0211DCAA:
	.byte 0x00, 0x00
s_ma005_00_overlay_28_0211dcac: ; 0x0211DCAC
	.asciz "ma005_00"
_0211DCB5:
	.byte 0x00, 0x00, 0x00
s_data_message_etc_place_name_overlay_28_0211dcb8: ; 0x0211DCB8
	.asciz "/data/message/etc/place_name"
_0211DCD5:
	.byte 0x00, 0x00, 0x00
s_data_menu_rd_03d_LZ_bin_overlay_28_0211dcd8: ; 0x0211DCD8
	.asciz "data/menu/rd%03d_LZ.bin"
s_rd_03d_nbfs_overlay_28_0211dcf0: ; 0x0211DCF0
	.asciz "rd%03d.nbfs"
	; 0x0211DCFC
