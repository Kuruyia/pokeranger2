    .include "asm/macros.inc"
    .include "asm/include/overlay_05.inc"

    .text

	arm_func_start ov5_0211C9E0
ov5_0211C9E0: ; 0x0211C9E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02007C98
	ldr r0, _0211CA14 ; =PTR_LAB_overlay_5_0211ca18_overlay_5_02120424
	mov r1, #0
	str r0, [r5]
	str r1, [r5, #0x14]
	str r1, [r5, #0x18]
	str r4, [r5, #0x10]
	mov r0, r5
	str r1, [r5, #0x24]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CA14: .word PTR_LAB_overlay_5_0211ca18_overlay_5_02120424
	arm_func_end ov5_0211C9E0

	arm_func_start ov5_0211CA18
    ov5_0211CA18: ; 0x0211CA18
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov5_0211CA18

	arm_func_start ov5_0211CA2C
ov5_0211CA2C: ; 0x0211CA2C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	bl sub_02001470
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov5_0211CA2C

	arm_func_start ov5_0211CA48
ov5_0211CA48: ; 0x0211CA48
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
	ldr r0, _0211CB48 ; =0x000001FF
	bl sub_020620F0
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0xa4000
	bl NitroSDK_mi_MIi_CpuClearFast
	bl sub_02062634
	mov r0, #1
	bl sub_020616C4
	mov r0, #2
	bl sub_02061954
	mov r0, #1
	mov r1, #0
	mov r2, r1
	bl sub_02061500
	mov r0, #4
	bl sub_02062110
	mov r0, #0x100
	bl sub_020621B8
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, _0211CB4C ; =0xFFCFFFEF
	mov r3, #0
	and r0, r1, r0
	orr r0, r0, #0x10
	str r0, [r2]
	str r3, [r2, #0x10]
	str r3, [r2, #0x14]
	str r3, [r2, #0x18]
	str r3, [r2, #0x1c]
	add r2, r2, #0x304
	ldr r1, _0211CB50 ; =0x04001010
	ldr r0, _0211CB54 ; =0xFFFFFDF1
	str r3, [r1]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #0xc]
	ldrh r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [r2]
	ldrh r0, [r2]
	bic r0, r0, #0x8000
	strh r0, [r2]
	bl sub_020614B8
	ldr r1, _0211CB58 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CB48: .word 0x000001FF
_0211CB4C: .word 0xFFCFFFEF
_0211CB50: .word 0x04001010
_0211CB54: .word 0xFFFFFDF1
_0211CB58: .word 0x04001000
	arm_func_end ov5_0211CA48

	arm_func_start ov5_0211CB5C
ov5_0211CB5C: ; 0x0211CB5C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r1, #0x3c
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, #0xe4
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211CB90
	ldr r1, [r4, #0x10]
	bl ov5_0211CE40
	arm_func_end ov5_0211CB5C
_0211CB90:
	str r0, [r4, #0x14]
	bl ov5_0211CE70
	ldr r0, [r4, #0x14]
	ldr r0, [r0]
	cmp r0, #0
	movne r1, #1
	moveq r1, #0
	mov r0, #0x78
	str r1, [r4, #0xc]
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211CBCC
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl ov5_0211D674
_0211CBCC:
	str r0, [r4, #0x18]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, #0x2f0
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211CBF8
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl ov5_0211F778
_0211CBF8:
	str r0, [r4, #0x20]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0211CC40
	mov r0, #0x230
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211CC30
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl ov5_0211EAE4
_0211CC30:
	str r0, [r4, #0x1c]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_0211CC40:
	ldr r0, [r4, #0x10]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x14
	bl sub_0200E0E0
	ldr r0, [r4, #0x10]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x14
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}

	arm_func_start ov5_0211CC74
ov5_0211CC74: ; 0x0211CC74
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0211CCA0
	beq _0211CC98
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov5_0211CC74
_0211CC98:
	mov r0, #0
	str r0, [r4, #0x18]
_0211CCA0:
	mov r6, #0
	mov r5, r6
_0211CCA8:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0211CCD0
	beq _0211CCC8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211CCC8:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x1c]
_0211CCD0:
	add r6, r6, #1
	cmp r6, #2
	blt _0211CCA8
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0211CD04
	beq _0211CCFC
	mov r0, r5
	bl ov5_0211CE5C
	mov r0, r5
	bl sub_02001470
_0211CCFC:
	mov r0, #0
	str r0, [r4, #0x14]
_0211CD04:
	ldr r0, [r4, #0x10]
	mov r1, #0x1e
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov5_0211CD1C
ov5_0211CD1C: ; 0x0211CD1C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02001470
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov5_0211CD1C

	arm_func_start ov5_0211CD30
ov5_0211CD30: ; 0x0211CD30
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	ldr r0, [r4, #0xc]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x1c]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	mvn r1, #0
	cmp r0, r1
	bne _0211CD80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	movne r0, #6
	moveq r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov5_0211CD30
_0211CD80:
	cmp r0, #1
	bne _0211CDC0
	ldr r0, [r4, #0xc]
	eor r0, r0, #1
	str r0, [r4, #0xc]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x1c]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r0, [r4, #0x10]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x14
	bl sub_0200E0E0
_0211CDC0:
	mvn r0, #0
	ldmia sp!, {r4, pc}
_0211CDC8:
	.byte 0x00, 0x10, 0xA0, 0xE3, 0x04, 0x10, 0x80, 0xE5
	.byte 0x08, 0x10, 0x80, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start ov5_0211CDD8
ov5_0211CDD8: ; 0x0211CDD8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	ldr r0, [r4, #0xc]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x1c]
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end ov5_0211CDD8

	arm_func_start ov5_0211CE0C
ov5_0211CE0C: ; 0x0211CE0C
	bx lr
	arm_func_end ov5_0211CE0C

	arm_func_start ov5_0211CE10
ov5_0211CE10: ; 0x0211CE10
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007D98
	ldr r0, [r4, #0xc]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x1c]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end ov5_0211CE10

	arm_func_start ov5_0211CE38
ov5_0211CE38: ; 0x0211CE38
	mov r0, #3
	bx lr
	arm_func_end ov5_0211CE38

	arm_func_start ov5_0211CE40
ov5_0211CE40: ; 0x0211CE40
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r1, [r0, #4]
	bx lr
	arm_func_end ov5_0211CE40

	arm_func_start ov5_0211CE5C
ov5_0211CE5C: ; 0x0211CE5C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov5_0211CECC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov5_0211CE5C

	arm_func_start ov5_0211CE70
ov5_0211CE70: ; 0x0211CE70
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	bl ov5_0211D048
	mov r0, r4
	bl ov5_0211D1E0
	mov r0, #0x28
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211CE9C
	bl sub_0202A2AC
	arm_func_end ov5_0211CE70
_0211CE9C:
	str r0, [r4, #0x10]
	mov r0, #0xf0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	mov r1, #0x3f0
	mov r2, #0
	mov r3, #0xf
	bl sub_0202A32C
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start ov5_0211CECC
ov5_0211CECC: ; 0x0211CECC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r4, [r5, #0x10]
	cmp r4, #0
	beq _0211CEFC
	beq _0211CEF4
	mov r0, r4
	bl sub_0202A2EC
	mov r0, r4
	bl sub_02001470
	arm_func_end ov5_0211CECC
_0211CEF4:
	mov r0, #0
	str r0, [r5, #0x10]
_0211CEFC:
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0211CF8C
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211CF58
	mov r6, r4
_0211CF1C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211CF44
	bl sub_0200147C
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211CF44:
	ldr r1, [r5, #8]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211CF1C
_0211CF58:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211CF74
	bl sub_0200147C
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #8]
_0211CF74:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0211CF8C
	bl sub_02001470
	mov r0, #0
	str r0, [r5, #8]
_0211CF8C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0211D01C
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211CFE8
	mov r6, r4
_0211CFAC:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211CFD4
	bl sub_0200147C
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211CFD4:
	ldr r1, [r5, #0xc]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211CFAC
_0211CFE8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211D004
	bl sub_0200147C
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r1, [r0, #8]
_0211D004:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0211D01C
	bl sub_02001470
	mov r0, #0
	str r0, [r5, #0xc]
_0211D01C:
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_020092D4
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov5_0211D048
ov5_0211D048: ; 0x0211D048
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02019278
	str r0, [r5]
	ldr r0, [r5, #4]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r2, #0
	bl sub_0201926C
	ldr r0, [r5]
	cmp r0, #0x1f
	bgt _0211D0A8
	cmp r0, #0x1b
	blt _0211D0F4
	beq _0211D0D4
	cmp r0, #0x1f
	moveq r0, #0x1e
	streq r0, [r5]
	b _0211D0F4
	arm_func_end ov5_0211D048
_0211D0A8:
	cmp r0, #0x28
	bgt _0211D0F4
	cmp r0, #0x22
	blt _0211D0F4
	beq _0211D0E0
	cmp r0, #0x26
	beq _0211D0EC
	cmp r0, #0x28
	moveq r0, #0x27
	streq r0, [r5]
	b _0211D0F4
_0211D0D4:
	mov r0, #0x1a
	str r0, [r5]
	b _0211D0F4
_0211D0E0:
	mov r0, #0x21
	str r0, [r5]
	b _0211D0F4
_0211D0EC:
	mov r0, #0x25
	str r0, [r5]
_0211D0F4:
	ldr r0, [r5, #4]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02019278
	ldr r1, [r5]
	cmp r1, #0
	beq _0211D140
	ldr r1, [r5, #4]
	add r2, r0, #1
	add r0, r1, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #4
	bl sub_0201926C
	ldr r0, [r5, #4]
	mov r1, #0xab
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020349E8
_0211D140:
	ldr r4, _0211D1DC ; =MAIN_BSS_020B26A0
	mov r6, #0
_0211D148:
	mov r0, r4
	mov r1, r6
	bl sub_02016C14
	add r1, r5, r6, lsl #2
	add r6, r6, #1
	str r0, [r1, #0x14]
	cmp r6, #0x1a
	blt _0211D148
	mov r0, #0
	str r0, [r5, #0x74]
	str r0, [r5, #0x78]
	ldrb r0, [r4, #3]
	mov r0, r0, asr #4
	and r0, r0, #0xf
	cmp r0, #2
	bne _0211D1A0
	ldr r0, [r5, #0x74]
	add r0, r0, #1
	str r0, [r5, #0x74]
	ldr r0, [r5, #0x78]
	add r0, r0, #1
	str r0, [r5, #0x78]
_0211D1A0:
	ldrb r0, [r4, #3]
	and r0, r0, #0xf
	cmp r0, #6
	ldrhs r0, [r5, #0x74]
	addhs r0, r0, #1
	strhs r0, [r5, #0x74]
	ldrb r0, [r4, #3]
	and r0, r0, #0xf
	cmp r0, #8
	ldrhs r0, [r5, #0x78]
	addhs r0, r0, #1
	strhs r0, [r5, #0x78]
	mov r0, r5
	bl ov5_0211D2A4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211D1DC: .word MAIN_BSS_020B26A0

	arm_func_start ov5_0211D1E0
ov5_0211D1E0: ; 0x0211D1E0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	ldr ip, [r4, #4]
	mov r2, #0
	add r0, ip, #0x1000
	ldr r3, [r0, #0x4b0]
	add r1, ip, #0x24
	str r3, [sp]
	stmib sp, {r1, r2}
	mov r1, #0x10
	str r1, [sp, #0xc]
	mov r1, #0x4000
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r3, [r0, #0x4ac]
	ldr r0, [r0, #0x490]
	ldr r1, [ip, #0x14]
	ldr r2, [ip, #0x18]
	add r3, r3, #0xc
	bl sub_02009328
	ldr r0, _0211D254 ; =s_data_message_etc_menu_mes_overlay_5_02120450
	bl ov5_0211D588
	str r0, [r4, #8]
	ldr r0, _0211D258 ; =s_data_message_etc_assist_mes_overlay_5_0212046c
	bl ov5_0211D588
	str r0, [r4, #0xc]
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D254: .word s_data_message_etc_menu_mes_overlay_5_02120450
_0211D258: .word s_data_message_etc_assist_mes_overlay_5_0212046c
	arm_func_end ov5_0211D1E0

	arm_func_start ov5_0211D25C
ov5_0211D25C: ; 0x0211D25C
	stmdb sp!, {r3, lr}
	add ip, r0, r1, lsl #2
	mov r3, #1
	str r3, [ip, #0x7c]
	ldr r3, [ip, #0x14]
	cmp r3, r2
	strge r2, [ip, #0x14]
	bge _0211D28C
	add r3, r0, #0x14
	ldr r2, [r3, r1, lsl #2]
	add r2, r2, #1
	str r2, [r3, r1, lsl #2]
	arm_func_end ov5_0211D25C
_0211D28C:
	add r0, r0, r1, lsl #2
	ldr r2, [r0, #0x14]
	ldr r0, _0211D2A0 ; =MAIN_BSS_020B26A0
	bl sub_02016C40
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211D2A0: .word MAIN_BSS_020B26A0

	arm_func_start ov5_0211D2A4
ov5_0211D2A4: ; 0x0211D2A4
	stmdb sp!, {r4, r5, r6, lr}
	mov r1, #0
	mov r6, r0
	mov r5, r1
	arm_func_end ov5_0211D2A4
_0211D2B4:
	add r0, r6, r1, lsl #2
	add r1, r1, #1
	str r5, [r0, #0x7c]
	cmp r1, #0x1a
	blt _0211D2B4
	ldr r0, [r6]
	cmp r0, #0x2a
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, r5, r6, pc}
_0211D2D8: ; jump table
	ldmia sp!, {r4, r5, r6, pc} ; case 0
	b _0211D384 ; case 1
	b _0211D398 ; case 2
	b _0211D3AC ; case 3
	b _0211D3C0 ; case 4
	b _0211D3D4 ; case 5
	b _0211D3E8 ; case 6
	b _0211D3FC ; case 7
	b _0211D410 ; case 8
	b _0211D424 ; case 9
	b _0211D438 ; case 10
	b _0211D44C ; case 11
	b _0211D460 ; case 12
	b _0211D474 ; case 13
	b _0211D488 ; case 14
	b _0211D49C ; case 15
	b _0211D4B0 ; case 16
	b _0211D4C4 ; case 17
	ldmia sp!, {r4, r5, r6, pc} ; case 18
	ldmia sp!, {r4, r5, r6, pc} ; case 19
	ldmia sp!, {r4, r5, r6, pc} ; case 20
	ldmia sp!, {r4, r5, r6, pc} ; case 21
	ldmia sp!, {r4, r5, r6, pc} ; case 22
	ldmia sp!, {r4, r5, r6, pc} ; case 23
	ldmia sp!, {r4, r5, r6, pc} ; case 24
	b _0211D4D8 ; case 25
	b _0211D4FC ; case 26
	ldmia sp!, {r4, r5, r6, pc} ; case 27
	ldmia sp!, {r4, r5, r6, pc} ; case 28
	ldmia sp!, {r4, r5, r6, pc} ; case 29
	b _0211D510 ; case 30
	ldmia sp!, {r4, r5, r6, pc} ; case 31
	ldmia sp!, {r4, r5, r6, pc} ; case 32
	b _0211D524 ; case 33
	ldmia sp!, {r4, r5, r6, pc} ; case 34
	b _0211D538 ; case 35
	ldmia sp!, {r4, r5, r6, pc} ; case 36
	b _0211D54C ; case 37
	ldmia sp!, {r4, r5, r6, pc} ; case 38
	b _0211D560 ; case 39
	ldmia sp!, {r4, r5, r6, pc} ; case 40
	ldmia sp!, {r4, r5, r6, pc} ; case 41
	b _0211D574 ; case 42
_0211D384:
	mov r0, r6
	mov r1, #0xe
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D398:
	mov r0, r6
	mov r1, r5
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D3AC:
	mov r0, r6
	mov r1, #1
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D3C0:
	mov r0, r6
	mov r1, #9
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D3D4:
	mov r0, r6
	mov r1, #7
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D3E8:
	mov r0, r6
	mov r1, #0xa
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D3FC:
	mov r1, #3
	mov r0, r6
	mov r2, r1
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D410:
	mov r0, r6
	mov r1, #4
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D424:
	mov r0, r6
	mov r1, #2
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D438:
	mov r0, r6
	mov r1, #8
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D44C:
	mov r0, r6
	mov r1, #0xf
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D460:
	mov r0, r6
	mov r1, #5
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D474:
	mov r0, r6
	mov r1, #0xc
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D488:
	mov r0, r6
	mov r1, #6
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D49C:
	mov r0, r6
	mov r1, #0xb
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D4B0:
	mov r0, r6
	mov r1, #0xd
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D4C4:
	mov r0, r6
	mov r1, #0x10
	mov r2, #3
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D4D8:
	mov r4, #3
_0211D4DC:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov5_0211D25C
	add r5, r5, #1
	cmp r5, #0x11
	blt _0211D4DC
	ldmia sp!, {r4, r5, r6, pc}
_0211D4FC:
	mov r0, r6
	mov r1, #0x16
	mov r2, #2
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D510:
	mov r0, r6
	mov r1, #0x11
	mov r2, #2
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D524:
	mov r0, r6
	mov r1, #0x12
	mov r2, #2
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D538:
	mov r0, r6
	mov r1, #0x13
	mov r2, #1
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D54C:
	mov r0, r6
	mov r1, #0x14
	mov r2, #2
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D560:
	mov r0, r6
	mov r1, #0x17
	mov r2, #2
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}
_0211D574:
	mov r0, r6
	mov r1, #0x15
	mov r2, #1
	bl ov5_0211D25C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov5_0211D588
ov5_0211D588: ; 0x0211D588
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r0, #0xc
	bl MemoryAlloc_Thunk1
	mov r4, r0
	mov r0, #0xb8
	bl MemoryAlloc_Thunk1
	movs r7, r0
	beq _0211D5BC
	mov r1, r5
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r7, r0
	arm_func_end ov5_0211D588
_0211D5BC:
	ldr r0, [r7, #0x4c]
	mov r5, #2
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, [r7, #0x4c]
	ldr r0, [r0, #4]
	str r0, [r4, #4]
	mov r0, r0, lsl #3
	bl MemoryAlloc_Thunk2
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #0
	bls _0211D654
_0211D5F4:
	ldr r1, [r7, #0x4c]
	ldr r0, [r4, #8]
	ldr r1, [r1, r5, lsl #2]
	add r5, r5, #1
	str r1, [r0, r6, lsl #3]
	ldr r0, [r4, #8]
	ldr r0, [r0, r6, lsl #3]
	bl MemoryAlloc_Thunk2
	ldr r1, [r4, #8]
	add r1, r1, r6, lsl #3
	str r0, [r1, #4]
	ldr r2, [r4, #8]
	ldr r3, [r7, #0x4c]
	add r0, r2, r6, lsl #3
	ldr r1, [r0, #4]
	ldr r2, [r2, r6, lsl #3]
	add r0, r3, r5, lsl #2
	bl sub_02067E7C
	ldmib r4, {r0, r1}
	ldr r1, [r1, r6, lsl #3]
	add r6, r6, #1
	cmp r6, r0
	add r5, r5, r1, lsr #2
	blo _0211D5F4
_0211D654:
	cmp r7, #0
	beq _0211D66C
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211D66C:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov5_0211D674
ov5_0211D674: ; 0x0211D674
	ldr r3, _0211D6EC ; =PTR_LAB_overlay_5_0211eae0_overlay_5_021204f8
	mov ip, #0
	stmia r0, {r3, ip}
	ldr r3, _0211D6F0 ; =PTR_LAB_overlay_5_0211d6f4_overlay_5_021204cc
	str ip, [r0, #8]
	str r3, [r0]
	str ip, [r0, #0xc]
	str ip, [r0, #0x10]
	str ip, [r0, #0x14]
	str ip, [r0, #0x18]
	str ip, [r0, #0x1c]
	str ip, [r0, #0x20]
	str ip, [r0, #0x24]
	str ip, [r0, #0x28]
	str ip, [r0, #0x2c]
	str ip, [r0, #0x30]
	str ip, [r0, #0x34]
	str ip, [r0, #0x44]
	str ip, [r0, #0x48]
	str r1, [r0, #0x3c]
	str r2, [r0, #0x38]
	ldr r1, [r2, #8]
	mov r2, ip
	str r1, [r0, #0x40]
	arm_func_end ov5_0211D674
_0211D6D4:
	add r1, r0, ip, lsl #2
	add ip, ip, #1
	str r2, [r1, #0x4c]
	cmp ip, #6
	blt _0211D6D4
	bx lr
	.align 2, 0
_0211D6EC: .word PTR_LAB_overlay_5_0211eae0_overlay_5_021204f8
_0211D6F0: .word PTR_LAB_overlay_5_0211d6f4_overlay_5_021204cc

	arm_func_start ov5_0211D6F4
ov5_0211D6F4: ; 0x0211D6F4
	stmdb sp!, {r4, lr}
	ldr r1, _0211D718 ; =PTR_LAB_overlay_5_0211d6f4_overlay_5_021204cc
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D718: .word PTR_LAB_overlay_5_0211d6f4_overlay_5_021204cc
	arm_func_end ov5_0211D6F4

	arm_func_start ov5_0211D71C
ov5_0211D71C: ; 0x0211D71C
	stmdb sp!, {r4, lr}
	ldr r1, _0211D748 ; =PTR_LAB_overlay_5_0211d6f4_overlay_5_021204cc
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_02001470
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D748: .word PTR_LAB_overlay_5_0211d6f4_overlay_5_021204cc
	arm_func_end ov5_0211D71C

	arm_func_start ov5_0211D74C
ov5_0211D74C: ; 0x0211D74C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov5_0211D7E0
	mov r0, r4
	bl ov5_0211D8A4
	mov r0, r4
	bl ov5_0211D918
	mov r0, r4
	bl ov5_0211E0D4
	mov r0, r4
	bl ov5_0211E310
	mov r0, r4
	bl ov5_0211E868
	ldmia sp!, {r4, pc}
	arm_func_end ov5_0211D74C

	arm_func_start ov5_0211D784
ov5_0211D784: ; 0x0211D784
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x44]
	cmp r4, #0
	beq _0211D7B4
	beq _0211D7AC
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl sub_02001470
	arm_func_end ov5_0211D784
_0211D7AC:
	mov r0, #0
	str r0, [r5, #0x44]
_0211D7B4:
	ldr r4, [r5, #0x48]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0211D7D4
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl sub_02001470
_0211D7D4:
	mov r0, #0
	str r0, [r5, #0x48]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov5_0211D7E0
ov5_0211D7E0: ; 0x0211D7E0
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r4, _0211D89C ; =MAIN_BSS_020B26A0
	mov r5, r0
	add r0, r4, #0x8000
	ldrb r0, [r0, #0x7db]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x28]
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x10]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x438]
	and r1, r1, #0xff
	bl sub_02010EAC
	str r0, [r5, #0x18]
	ldrb r1, [r4, #2]
	ldr r0, _0211D8A0 ; =DAT_overlay_5_021202a0
	add ip, sp, #0
	str r1, [r5, #0x1c]
	ldrb r4, [r4, #1]
	ldmia r0, {r0, r1, r2, r3}
	str r4, [r5, #0x20]
	ldr r4, [r5, #0x38]
	ldr r4, [r4, #0x6c]
	str r4, [r5, #0x24]
	stmia ip, {r0, r1, r2, r3}
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x10]
	add r0, r0, #0x1000
	ldr r2, [r5, #0x38]
	ldr r0, [r0, #0x438]
	and r1, r1, #0xff
	ldr r4, [r2, #0x70]
	bl sub_02010E90
	add r1, sp, #0
	ldr r1, [r1, r4, lsl #2]
	add r0, r0, r1
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x38]
	ldr r0, [r0, #0x74]
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x38]
	ldr r0, [r0, #0x78]
	str r0, [r5, #0x34]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211D89C: .word MAIN_BSS_020B26A0
_0211D8A0: .word DAT_overlay_5_021202a0
	arm_func_end ov5_0211D7E0

	arm_func_start ov5_0211D8A4
ov5_0211D8A4: ; 0x0211D8A4
	stmdb sp!, {r3, lr}
	ldr ip, _0211D914 ; =0x04001000
	mov r3, #8
	ldr r1, [ip]
	add r0, ip, #0x50
	bic r1, r1, #0x1f00
	orr r1, r1, #0x1e00
	str r1, [ip]
	ldrh lr, [ip, #8]
	mov r1, #2
	mov r2, #0x1c
	bic lr, lr, #3
	strh lr, [ip, #8]
	ldrh lr, [ip, #0xa]
	bic lr, lr, #3
	orr lr, lr, #1
	strh lr, [ip, #0xa]
	ldrh lr, [ip, #0xc]
	bic lr, lr, #3
	orr lr, lr, #2
	strh lr, [ip, #0xc]
	ldrh lr, [ip, #0xe]
	bic lr, lr, #3
	orr lr, lr, #3
	strh lr, [ip, #0xe]
	str r3, [sp]
	bl sub_02062C10
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211D914: .word 0x04001000
	arm_func_end ov5_0211D8A4

	arm_func_start ov5_0211D918
ov5_0211D918: ; 0x0211D918
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x44
	mov r4, #0x20
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211D958
	ldr r3, [r5, #0x3c]
	mov r1, #0x40
	str r1, [sp]
	add r2, r3, #0x1000
	add r1, r3, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
	arm_func_end ov5_0211D918
_0211D958:
	str r0, [r5, #0x44]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x44]
	ldr r1, _0211E0C0 ; =s_data_menu_overlay_5_0212051c
	ldr r2, _0211E0C4 ; =s_ms000_00_overlay_5_02120528
	mov r3, #1
	bl sub_0200EE14
	add r4, r4, r0
	mov r0, #0x44
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211D9B0
	ldr r3, [r5, #0x3c]
	mov r1, #0x40
	str r1, [sp]
	add r2, r3, #0x1000
	add r1, r3, #0x2f4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0211D9B0:
	str r0, [r5, #0x48]
	mov r0, #3
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r5, #0x48]
	ldr r1, _0211E0C0 ; =s_data_menu_overlay_5_0212051c
	ldr r2, _0211E0C8 ; =s_ma004_00_overlay_5_02120534
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r2, #0
	mov r1, r2
_0211D9E0:
	add r0, r5, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x4c]
	cmp r2, #6
	blt _0211D9E0
	ldr r0, [r5, #0x38]
	ldr r0, [r0, #0xd0]
	cmp r0, #0
	beq _0211DA24
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x15
	mov r2, #0xec
	mov r3, #0x58
	bl sub_0200F4FC
	str r0, [r5, #0x50]
_0211DA24:
	ldr r0, [r5, #0x38]
	ldr r0, [r0, #0xd4]
	cmp r0, #0
	beq _0211DA54
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x15
	mov r2, #0xec
	mov r3, #0x70
	bl sub_0200F4FC
	str r0, [r5, #0x54]
_0211DA54:
	ldr r0, [r5, #0x38]
	ldr r0, [r0, #0xd8]
	cmp r0, #0
	beq _0211DA84
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x15
	mov r2, #0xec
	mov r3, #0x88
	bl sub_0200F4FC
	str r0, [r5, #0x58]
_0211DA84:
	ldr r0, [r5, #0x38]
	ldr r0, [r0, #0xdc]
	cmp r0, #0
	beq _0211DAB4
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x15
	mov r2, #0xec
	mov r3, #0x98
	bl sub_0200F4FC
	str r0, [r5, #0x5c]
_0211DAB4:
	ldr r0, [r5, #0x38]
	ldr r0, [r0, #0xe0]
	cmp r0, #0
	beq _0211DAE4
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x15
	mov r2, #0xec
	mov r3, #0xa8
	bl sub_0200F4FC
	str r0, [r5, #0x60]
_0211DAE4:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x10]
	ldr r3, _0211E0CC ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r0, r1, r3, r0
	add r1, r2, r1, asr #2
	ldr r0, [r5, #0x44]
	mov r2, #0x48
	mov r3, #0x38
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r4, [r5, #0x10]
	ldr r3, _0211E0CC ; =0x66666667
	mov r0, r4, lsr #0x1f
	smull r2, r1, r3, r4
	add r1, r0, r1, asr #2
	mov r2, #0xa
	smull r1, r0, r2, r1
	ldr r0, [r5, #0x44]
	sub r1, r4, r1
	mov r2, #0x58
	mov r3, #0x38
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x18
	mov r2, #0x80
	mov r3, #0x43
	bl sub_0200F4FC
	ldr r0, [r5, #0x1c]
	ldr r4, [r5, #0x20]
	cmp r0, #0x64
	bge _0211DC88
	cmp r4, #0xa
	blt _0211DBA4
	ldr r2, _0211E0CC ; =0x66666667
	mov r3, #1
	smull r0, r1, r2, r4
	str r3, [sp]
	mov r2, r4, lsr #0x1f
	ldr r0, [r5, #0x44]
	add r1, r2, r1, asr #2
	mov r2, #0xa0
	mov r3, #0x58
	bl sub_0200F4FC
_0211DBA4:
	mov r0, #1
	str r0, [sp]
	ldr r4, [r5, #0x20]
	ldr r3, _0211E0CC ; =0x66666667
	mov r0, r4, lsr #0x1f
	smull r2, r1, r3, r4
	add r1, r0, r1, asr #2
	mov r2, #0xa
	smull r1, r0, r2, r1
	ldr r0, [r5, #0x44]
	sub r1, r4, r1
	mov r2, #0xb0
	mov r3, #0x58
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0xa
	mov r2, #0xc0
	mov r3, #0x58
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	ldr r3, _0211E0CC ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r0, r1, r3, r0
	ldr r0, [r5, #0x44]
	add r1, r2, r1, asr #2
	mov r2, #0xd0
	mov r3, #0x58
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	ldr ip, [r5, #0x1c]
	ldr r4, _0211E0CC ; =0x66666667
	mov r2, ip, lsr #0x1f
	smull r3, r1, r4, ip
	add r1, r2, r1, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r1
	sub r1, ip, r1
	mov r2, #0xe0
	mov r3, #0x58
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x19
	mov r2, #0x80
	mov r3, #0x50
	bl sub_0200F4FC
	ldr r0, [r5, #0x44]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0x64]
	b _0211DE28
_0211DC88:
	cmp r4, #0x64
	blt _0211DCB8
	ldr r2, _0211E0D0 ; =0x51EB851F
	mov r3, #1
	smull r0, r1, r2, r4
	str r3, [sp]
	mov r2, r4, lsr #0x1f
	ldr r0, [r5, #0x44]
	add r1, r2, r1, asr #5
	mov r2, #0x80
	mov r3, #0x58
	bl sub_0200F4FC
_0211DCB8:
	ldr r1, [r5, #0x20]
	cmp r1, #0xa
	blt _0211DD04
	ldr r3, _0211E0CC ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r4, r3, r1
	add r4, r0, r4, asr #2
	mov r0, #1
	str r0, [sp]
	mov r0, r4, lsr #0x1f
	smull r2, r1, r3, r4
	add r1, r0, r1, asr #2
	mov r2, #0xa
	smull r1, r0, r2, r1
	ldr r0, [r5, #0x44]
	sub r1, r4, r1
	mov r2, #0x90
	mov r3, #0x58
	bl sub_0200F4FC
_0211DD04:
	mov r0, #1
	str r0, [sp]
	ldr r4, [r5, #0x20]
	ldr r3, _0211E0CC ; =0x66666667
	mov r0, r4, lsr #0x1f
	smull r2, r1, r3, r4
	add r1, r0, r1, asr #2
	mov r2, #0xa
	smull r1, r0, r2, r1
	ldr r0, [r5, #0x44]
	sub r1, r4, r1
	mov r2, #0xa0
	mov r3, #0x58
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0xa
	mov r2, #0xb0
	mov r3, #0x58
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	ldr r3, _0211E0D0 ; =0x51EB851F
	mov r2, r0, lsr #0x1f
	smull r0, r1, r3, r0
	ldr r0, [r5, #0x44]
	add r1, r2, r1, asr #5
	mov r2, #0xc0
	mov r3, #0x58
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	ldr r2, [r5, #0x1c]
	ldr r3, _0211E0CC ; =0x66666667
	mov r1, r2, lsr #0x1f
	smull r2, r4, r3, r2
	add r4, r1, r4, asr #2
	smull r2, r1, r3, r4
	mov r2, r4, lsr #0x1f
	add r1, r2, r1, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r1
	sub r1, r4, r1
	mov r2, #0xd0
	mov r3, #0x58
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	ldr ip, [r5, #0x1c]
	ldr r4, _0211E0CC ; =0x66666667
	mov r2, ip, lsr #0x1f
	smull r3, r1, r4, ip
	add r1, r2, r1, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r1
	sub r1, ip, r1
	mov r2, #0xe0
	mov r3, #0x58
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x19
	mov r2, #0x80
	mov r3, #0x50
	bl sub_0200F4FC
	ldr r0, [r5, #0x44]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0x64]
_0211DE28:
	mov r0, #1
	str r0, [sp]
	ldr r1, [r5, #0x24]
	mov r0, #0x18
	mul r2, r1, r0
	ldr r0, [r5, #0x44]
	add r2, r2, #0xb0
	mov r1, #0x1f
	mov r3, #0x70
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x1d
	mov r2, #0x80
	mov r3, #0x68
	bl sub_0200F4FC
	ldr r0, [r5, #0x24]
	cmp r0, #0
	ble _0211DE94
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x1e
	mov r2, #0xb7
	mov r3, #0x70
	bl sub_0200F4FC
_0211DE94:
	ldr r0, [r5, #0x24]
	cmp r0, #1
	ble _0211DEBC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x1e
	mov r2, #0xcf
	mov r3, #0x70
	bl sub_0200F4FC
_0211DEBC:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x1c
	mov r2, #0x80
	mov r3, #0x68
	bl sub_0200F4FC
	ldr r0, [r5, #0x44]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0x68]
	ldr r4, [r5, #0x28]
	cmp r4, #0x64
	blt _0211DF18
	ldr r2, _0211E0D0 ; =0x51EB851F
	mov r3, #1
	smull r0, r1, r2, r4
	str r3, [sp]
	mov r2, r4, lsr #0x1f
	ldr r0, [r5, #0x44]
	add r1, r2, r1, asr #5
	mov r2, #0xc0
	mov r3, #0x88
	bl sub_0200F4FC
_0211DF18:
	mov r0, #1
	str r0, [sp]
	ldr r1, [r5, #0x28]
	ldr r3, _0211E0CC ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r4, r3, r1
	add r4, r0, r4, asr #2
	mov r0, r4, lsr #0x1f
	smull r2, r1, r3, r4
	add r1, r0, r1, asr #2
	mov r2, #0xa
	smull r1, r0, r2, r1
	ldr r0, [r5, #0x44]
	sub r1, r4, r1
	mov r2, #0xd0
	mov r3, #0x88
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r4, [r5, #0x28]
	ldr r3, _0211E0CC ; =0x66666667
	mov r0, r4, lsr #0x1f
	smull r2, r1, r3, r4
	add r1, r0, r1, asr #2
	mov r2, #0xa
	smull r1, r0, r2, r1
	ldr r0, [r5, #0x44]
	sub r1, r4, r1
	mov r2, #0xe0
	mov r3, #0x88
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x1a
	mov r2, #0x80
	mov r3, r2
	bl sub_0200F4FC
	ldr r0, [r5, #0x44]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0x6c]
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0211E02C
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x20
	mov r2, #0xd8
	mov r3, #0x98
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x44]
	add r1, r1, #0xb
	mov r2, #0xdf
	mov r3, #0x99
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x1b
	mov r2, #0xac
	mov r3, #0x98
	bl sub_0200F4FC
	ldr r0, [r5, #0x44]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0x70]
_0211E02C:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _0211E09C
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x20
	mov r2, #0xd8
	mov r3, #0xa8
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r1, [r5, #0x34]
	ldr r0, [r5, #0x44]
	add r1, r1, #0xb
	mov r2, #0xdf
	mov r3, #0xa9
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r1, #0x1b
	mov r2, #0xac
	mov r3, #0xa8
	bl sub_0200F4FC
	ldr r0, [r5, #0x44]
	ldr r0, [r0, #0x24]
	str r0, [r5, #0x74]
_0211E09C:
	mov r0, #3
	str r0, [sp]
	mov r2, #0x80
	ldr r0, [r5, #0x48]
	sub r3, r2, #0x88
	mov r1, #0
	bl sub_0200F4FC
	str r0, [r5, #0x4c]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211E0C0: .word s_data_menu_overlay_5_0212051c
_0211E0C4: .word s_ms000_00_overlay_5_02120528
_0211E0C8: .word s_ma004_00_overlay_5_02120534
_0211E0CC: .word 0x66666667
_0211E0D0: .word 0x51EB851F

	arm_func_start ov5_0211E0D4
ov5_0211E0D4: ; 0x0211E0D4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r0, #0x6c
	bl MemoryAlloc_Thunk1
	movs r4, r0
	beq _0211E114
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0211E2F4 ; =DAT_overlay_5_02120540
	ldr r2, _0211E2F8 ; =s_data_menu_ms000_bg_LZ_bin_overlay_5_02120544
	str r4, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
	arm_func_end ov5_0211E0D4
_0211E114:
	mov r0, #0xbc
	bl MemoryAlloc_Thunk1
	movs r5, r0
	beq _0211E13C
	ldr r1, _0211E2FC ; =s_BGS_ms000_NCGR_overlay_5_02120560
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_0200365C
	mov r5, r0
_0211E13C:
	mov r0, #0xbc
	bl MemoryAlloc_Thunk1
	movs r6, r0
	beq _0211E164
	ldr r1, _0211E300 ; =s_BGS_ms000_NCLR_overlay_5_02120570
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
	mov r6, r0
_0211E164:
	mov r0, #0xbc
	bl MemoryAlloc_Thunk1
	movs r7, r0
	beq _0211E18C
	ldr r1, _0211E304 ; =s_BGS_ms000_00_NSCR_overlay_5_02120580
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_02003494
	mov r7, r0
_0211E18C:
	mov r0, #0xbc
	bl MemoryAlloc_Thunk1
	movs r8, r0
	beq _0211E1B4
	ldr r1, _0211E308 ; =s_BGS_ms000_01_NSCR_overlay_5_02120594
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_02003494
	mov r8, r0
_0211E1B4:
	mov r0, #0xbc
	bl MemoryAlloc_Thunk1
	movs sb, r0
	beq _0211E1DC
	ldr r1, _0211E30C ; =s_BGS_ms000_02_NSCR_overlay_5_021205a8
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_02003494
	mov sb, r0
_0211E1DC:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r7, #0xb8]
	ldr r2, [r5, #0xb8]
	ldr r3, [r6, #0xb8]
	mov r0, #5
	bl NitroSystem_g2d_Screen_NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r8, #0xb8]
	mov r3, r2
	mov r0, #6
	bl NitroSystem_g2d_Screen_NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [sb, #0xb8]
	mov r0, #7
	mov r3, r2
	bl NitroSystem_g2d_Screen_NNS_G2dBGSetupEx
	cmp r7, #0
	beq _0211E270
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E270:
	cmp r8, #0
	beq _0211E288
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E288:
	cmp sb, #0
	beq _0211E2A0
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E2A0:
	cmp r5, #0
	beq _0211E2B8
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E2B8:
	cmp r6, #0
	beq _0211E2D0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E2D0:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl sub_02001470
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0211E2F4: .word DAT_overlay_5_02120540
_0211E2F8: .word s_data_menu_ms000_bg_LZ_bin_overlay_5_02120544
_0211E2FC: .word s_BGS_ms000_NCGR_overlay_5_02120560
_0211E300: .word s_BGS_ms000_NCLR_overlay_5_02120570
_0211E304: .word s_BGS_ms000_00_NSCR_overlay_5_02120580
_0211E308: .word s_BGS_ms000_01_NSCR_overlay_5_02120594
_0211E30C: .word s_BGS_ms000_02_NSCR_overlay_5_021205a8

	arm_func_start ov5_0211E310
ov5_0211E310: ; 0x0211E310
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x114
	mov sl, r0
	ldr r0, [sl, #0x3c]
	ldr r6, _0211E854 ; =DAT_overlay_5_021202d8
	add r0, r0, #0x1000
	ldr r7, [r0, #0x498]
	add r5, sp, #0x14
	mov r4, #0x10
	arm_func_end ov5_0211E310
_0211E334:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0211E334
	mov r0, r7
	bl sub_0200CAE0
	mov r0, r7
	bl sub_0200CB14
	mov r0, r7
	mov r1, #8
	bl sub_0200CC88
	mov r6, #0
	mov r5, #0x60
	add r4, sp, #0x14
	mov fp, r6
_0211E370:
	add r2, r4, r6, lsl #5
	ldr r8, [r2, #4]
	ldr sb, [r4, r6, lsl #5]
	ldr r1, [r2, #8]
	mov r0, r7
	str r1, [sp]
	ldr r2, [r2, #0xc]
	mov r1, r6
	stmib sp, {r2, r5, fp}
	mov ip, #2
	mov r2, sb
	mov r3, r8
	str ip, [sp, #0x10]
	bl sub_0200CCD0
	add r6, r6, #1
	mla r5, sb, r8, r5
	cmp r6, #8
	blt _0211E370
	mov r5, #0
	add r4, sp, #0x14
	mov r8, #1
	mov r6, r5
_0211E3C8:
	cmp r5, #2
	beq _0211E42C
	cmp r5, #6
	ldreq r0, [sl, #0x30]
	cmpeq r0, #0
	beq _0211E42C
	cmp r5, #7
	ldreq r0, [sl, #0x34]
	cmpeq r0, #0
	beq _0211E42C
	add r3, r4, r5, lsl #5
	ldr r1, [r3, #0x1c]
	mov r0, r7
	str r1, [sp]
	ldr r1, [sl, #0x40]
	ldr r2, [r3, #0x18]
	ldr sb, [r1, #8]
	mov r1, r5
	add r2, sb, r2, lsl #3
	ldr r2, [r2, #4]
	stmib sp, {r2, r8}
	str r6, [sp, #0xc]
	ldr r2, [r3, #0x10]
	ldr r3, [r3, #0x14]
	bl sub_0200CDA0
_0211E42C:
	add r5, r5, #1
	cmp r5, #8
	blt _0211E3C8
	ldr r0, [sl, #0x18]
	cmp r0, #0
	addeq sp, sp, #0x114
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r5, [sp, #0x68]
	ldr r4, [sp, #0x70]
	mov r2, #0
	str r4, [sp]
	ldr r1, [sl, #0x40]
	mov r0, r7
	ldr r1, [r1, #8]
	mov r3, r5
	ldr r6, [r1, #0xf4]
	mov r1, #2
	str r6, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x64]
	bl sub_0200CDA0
	str r4, [sp]
	ldr r1, [sl, #0x14]
	ldr r2, _0211E858 ; =0x68DB8BAD
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	ldr r6, [sl, #0x40]
	add r3, r0, r3, asr #12
	ldr r2, [r6, #8]
	add r0, r3, #8
	add r0, r2, r0, lsl #3
	mov r1, #2
	ldr r0, [r0, #4]
	mov r6, #0
	stmib sp, {r0, r6}
	mov r0, r7
	mov r2, r1
	mov r3, r5
	str r6, [sp, #0xc]
	bl sub_0200CDA0
	str r4, [sp]
	ldr r0, [sl, #0x40]
	ldr r6, [sl, #0x14]
	ldr r3, _0211E85C ; =0x10624DD3
	ldr r1, [r0, #8]
	smull r2, r0, r3, r6
	mov r2, r6, lsr #0x1f
	add r0, r2, r0, asr #6
	ldr r6, _0211E860 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r8, r6, r0
	add r8, r2, r8, asr #2
	mov r6, #0xa
	smull r2, r3, r6, r8
	sub r8, r0, r2
	add r0, r8, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r7
	mov r1, #2
	mov r2, #0xc
	mov r3, r5
	bl sub_0200CDA0
	str r4, [sp]
	ldr r0, [sl, #0x14]
	ldr r1, [sl, #0x40]
	ldr r6, _0211E864 ; =0x51EB851F
	mov r2, r0, lsr #0x1f
	smull r3, r0, r6, r0
	add r0, r2, r0, asr #5
	ldr r6, _0211E860 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r8, r6, r0
	add r8, r2, r8, asr #2
	mov r6, #0xa
	smull r2, r3, r6, r8
	sub r8, r0, r2
	ldr r1, [r1, #8]
	add r0, r8, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r7
	mov r1, #2
	mov r2, #0x16
	mov r3, r5
	bl sub_0200CDA0
	str r4, [sp]
	ldr r0, [sl, #0x14]
	ldr r1, [sl, #0x40]
	ldr r6, _0211E860 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r0, r6, r0
	add r0, r2, r0, asr #2
	smull r2, r3, r6, r0
	mov r2, r0, lsr #0x1f
	add r3, r2, r3, asr #2
	mov r6, #0xa
	smull r2, r3, r6, r3
	sub r3, r0, r2
	add r0, r3, #8
	ldr r1, [r1, #8]
	mov r2, #0x20
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r7
	mov r1, #2
	mov r3, r5
	bl sub_0200CDA0
	str r4, [sp]
	ldr r3, [sl, #0x14]
	ldr r2, _0211E860 ; =0x66666667
	mov r0, r3, lsr #0x1f
	smull r1, r6, r2, r3
	add r6, r0, r6, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r6
	sub r6, r3, r0
	ldr r8, [sl, #0x40]
	add r0, r6, #8
	ldr r1, [r8, #8]
	mov r3, r5
	add r0, r1, r0, lsl #3
	ldr r0, [r0, #4]
	mov r1, #0
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	mov r0, r7
	mov r1, #2
	mov r2, #0x2a
	bl sub_0200CDA0
	str r4, [sp]
	ldr r1, [sl, #0x18]
	ldr r2, _0211E858 ; =0x68DB8BAD
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	ldr r6, [sl, #0x40]
	add r3, r0, r3, asr #12
	add r0, r3, #8
	ldr r1, [r6, #8]
	mov r3, r5
	add r0, r1, r0, lsl #3
	ldr r0, [r0, #4]
	mov r1, #0
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	mov r0, r7
	mov r1, #2
	mov r2, #0x3e
	bl sub_0200CDA0
	str r4, [sp]
	ldr r0, [sl, #0x18]
	ldr r1, [sl, #0x40]
	ldr r6, _0211E85C ; =0x10624DD3
	mov r2, r0, lsr #0x1f
	smull r3, r0, r6, r0
	add r0, r2, r0, asr #6
	ldr r6, _0211E860 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r8, r6, r0
	add r8, r2, r8, asr #2
	mov r6, #0xa
	smull r2, r3, r6, r8
	sub r8, r0, r2
	ldr r1, [r1, #8]
	add r0, r8, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r7
	mov r1, #2
	mov r2, #0x48
	mov r3, r5
	bl sub_0200CDA0
	str r4, [sp]
	ldr r0, [sl, #0x18]
	ldr r1, [sl, #0x40]
	ldr r6, _0211E864 ; =0x51EB851F
	mov r2, r0, lsr #0x1f
	smull r3, r0, r6, r0
	add r0, r2, r0, asr #5
	ldr r6, _0211E860 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r8, r6, r0
	add r8, r2, r8, asr #2
	mov r6, #0xa
	smull r2, r3, r6, r8
	sub r8, r0, r2
	ldr r1, [r1, #8]
	add r0, r8, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r7
	mov r1, #2
	mov r2, #0x52
	mov r3, r5
	bl sub_0200CDA0
	str r4, [sp]
	ldr r0, [sl, #0x18]
	ldr r1, [sl, #0x40]
	ldr r6, _0211E860 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r0, r6, r0
	add r0, r2, r0, asr #2
	smull r2, r3, r6, r0
	mov r2, r0, lsr #0x1f
	add r3, r2, r3, asr #2
	mov r6, #0xa
	smull r2, r3, r6, r3
	sub r3, r0, r2
	add r0, r3, #8
	ldr r1, [r1, #8]
	mov r2, #0x5c
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r7
	mov r1, #2
	mov r3, r5
	bl sub_0200CDA0
	str r4, [sp]
	ldr r3, [sl, #0x18]
	ldr r2, _0211E860 ; =0x66666667
	mov r0, r3, lsr #0x1f
	smull r1, r4, r2, r3
	add r4, r0, r4, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r4
	sub r4, r3, r0
	ldr r6, [sl, #0x40]
	add r0, r4, #8
	ldr r1, [r6, #8]
	mov r4, #0
	add r0, r1, r0, lsl #3
	ldr r0, [r0, #4]
	mov r3, r5
	stmib sp, {r0, r4}
	mov r0, r7
	mov r1, #2
	mov r2, #0x66
	str r4, [sp, #0xc]
	bl sub_0200CDA0
	add sp, sp, #0x114
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211E854: .word DAT_overlay_5_021202d8
_0211E858: .word 0x68DB8BAD
_0211E85C: .word 0x10624DD3
_0211E860: .word 0x66666667
_0211E864: .word 0x51EB851F

	arm_func_start ov5_0211E868
ov5_0211E868: ; 0x0211E868
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, [r0, #0x18]
	ldr r0, [r0, #0x14]
	mov r1, r4
	mov r0, r0, lsl #7
	bl FP__s32_div_f
	mov r1, r0, asr #2
	mov r2, r0, lsr #0x1f
	add r1, r0, r1, lsr #29
	rsb r0, r2, r0, lsl #29
	cmp r4, #0
	mov r4, r1, asr #3
	add r5, r2, r0, ror #29
	beq _0211E918
	cmp r4, #0
	mov r6, #0
	ble _0211E8E4
	mov r7, #2
	arm_func_end ov5_0211E868
_0211E8B0:
	bl sub_02062724
	add r1, r6, #0xd
	mov r1, r1, lsl #1
	mov sb, r0
	add r8, r1, #0x200
	bl sub_0206281C
	mov r2, r7
	add r0, r0, #0x610
	add r1, sb, r8
	bl sub_02067DA8
	add r6, r6, #1
	cmp r6, r4
	blt _0211E8B0
_0211E8E4:
	bl sub_02062724
	add r1, r6, #0xd
	mov r1, r1, lsl #1
	mov r6, r0
	add r4, r1, #0x200
	bl sub_0206281C
	mov r1, r5, lsl #1
	add r1, r1, #0x600
	add r0, r0, r1
	add r1, r6, r4
	mov r2, #2
	bl sub_02067DA8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0211E918:
	mov r7, #0
	mov r4, #2
_0211E920:
	bl sub_02062724
	add r1, r7, #0xd
	mov r1, r1, lsl #1
	mov r6, r0
	add r5, r1, #0x200
	bl sub_0206281C
	mov r2, r4
	add r0, r0, #0x610
	add r1, r6, r5
	bl sub_02067DA8
	add r7, r7, #1
	cmp r7, #0x10
	blt _0211E920
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov5_0211E958
ov5_0211E958: ; 0x0211E958
	stmdb sp!, {r3, lr}
	bl ov5_0211E968
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov5_0211E958

	arm_func_start ov5_0211E968
ov5_0211E968: ; 0x0211E968
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	mov r8, r0
	ldr r1, [r8, #0x3c]
	ldr r0, [r8, #0x4c]
	add r1, r1, #0x1000
	ldr r2, [r1, #0x5d0]
	ldrsh r1, [r0, #0xc]
	mov r2, r2, asr #0xc
	bl sub_0200EB28
	ldr r0, [r8, #8]
	ldr r5, _0211EAB0 ; =DAT_overlay_5_021202b0
	add r0, r0, #1
	str r0, [r8, #8]
	add r4, sp, #0
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1}
	stmia r4, {r0, r1}
	ldr r0, [r8, #8]
	ldr r2, _0211EAB4 ; =0x55555556
	mov r1, r0, asr #3
	and r5, r1, #1
	mov r1, r0, asr #2
	add r1, r0, r1, lsr #29
	mov r4, r1, asr #3
	smull r1, r7, r2, r4
	add r7, r7, r4, lsr #31
	mov r3, #3
	smull r1, r2, r3, r7
	subs r7, r4, r1
	cmpne r7, #1
	beq _0211EA00
	cmp r7, #2
	beq _0211EA18
	b _0211EA2C
	arm_func_end ov5_0211E968
_0211EA00:
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	adds r0, r1, r0, ror #29
	mvneq r6, #0
	movne r6, #0
	b _0211EA2C
_0211EA18:
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	adds r0, r1, r0, ror #29
	moveq r6, #2
	movne r6, #0
_0211EA2C:
	mov r7, #0
	add r4, sp, #0
_0211EA34:
	add r1, r8, r7, lsl #2
	ldr r0, [r1, #0x50]
	cmp r0, #0
	beq _0211EA8C
	cmp r5, #0
	beq _0211EA60
	ldr r0, [r8, #0x44]
	ldr r1, [r1, #0x64]
	ldr r2, [r4, r7, lsl #3]
	bl sub_0200F628
	b _0211EA74
_0211EA60:
	add r2, r4, r7, lsl #3
	ldr r0, [r8, #0x44]
	ldr r1, [r1, #0x64]
	ldr r2, [r2, #4]
	bl sub_0200F628
_0211EA74:
	add r0, r8, r7, lsl #2
	ldr r0, [r0, #0x50]
	ldrsh r2, [r0, #0xe]
	ldrsh r1, [r0, #0xc]
	add r2, r6, r2
	bl sub_0200EB28
_0211EA8C:
	add r7, r7, #1
	cmp r7, #5
	blt _0211EA34
	ldr r0, [r8, #0x44]
	bl sub_0200F64C
	ldr r0, [r8, #0x48]
	bl sub_0200F64C
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211EAB0: .word DAT_overlay_5_021202b0
_0211EAB4: .word 0x55555556

	arm_func_start ov5_0211EAB8
ov5_0211EAB8: ; 0x0211EAB8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x44]
	bl sub_0200F71C
	ldr r0, [r4, #0x48]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}
	arm_func_end ov5_0211EAB8

	arm_func_start ov5_0211EAD4
ov5_0211EAD4: ; 0x0211EAD4
	bx lr
	arm_func_end ov5_0211EAD4

	arm_func_start ov5_0211EAD8
ov5_0211EAD8: ; 0x0211EAD8
	bx lr
	arm_func_end ov5_0211EAD8

	arm_func_start ov5_0211EADC
ov5_0211EADC: ; 0x0211EADC
	bx lr
	arm_func_end ov5_0211EADC
_0211EAE0:
	.byte 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start ov5_0211EAE4
ov5_0211EAE4: ; 0x0211EAE4
	ldr r3, _0211EB24 ; =PTR_LAB_overlay_5_0211eae0_overlay_5_021204f8
	mov ip, #0
	stmia r0, {r3, ip}
	ldr r3, _0211EB28 ; =PTR_LAB_overlay_5_0211eb2c_overlay_5_021205e8
	str ip, [r0, #8]
	str r3, [r0]
	str ip, [r0, #0xc]
	str ip, [r0, #0x220]
	str ip, [r0, #0x224]
	str r1, [r0, #0x214]
	str r2, [r0, #0x210]
	ldr r1, [r2, #8]
	str r1, [r0, #0x21c]
	ldr r1, [r2, #0x10]
	str r1, [r0, #0x218]
	bx lr
	.align 2, 0
_0211EB24: .word PTR_LAB_overlay_5_0211eae0_overlay_5_021204f8
_0211EB28: .word PTR_LAB_overlay_5_0211eb2c_overlay_5_021205e8
	arm_func_end ov5_0211EAE4

	arm_func_start ov5_0211EB2C
ov5_0211EB2C: ; 0x0211EB2C
	stmdb sp!, {r4, lr}
	ldr r1, _0211EB50 ; =PTR_LAB_overlay_5_0211eb2c_overlay_5_021205e8
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211EB50: .word PTR_LAB_overlay_5_0211eb2c_overlay_5_021205e8
	arm_func_end ov5_0211EB2C

	arm_func_start ov5_0211EB54
ov5_0211EB54: ; 0x0211EB54
	stmdb sp!, {r4, lr}
	ldr r1, _0211EB80 ; =PTR_LAB_overlay_5_0211eb2c_overlay_5_021205e8
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_02001470
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211EB80: .word PTR_LAB_overlay_5_0211eb2c_overlay_5_021205e8
	arm_func_end ov5_0211EB54

	arm_func_start ov5_0211EB84
ov5_0211EB84: ; 0x0211EB84
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov5_0211EC58
	mov r0, r4
	bl ov5_0211EC5C
	mov r0, r4
	bl ov5_0211ECFC
	mov r0, r4
	bl ov5_0211EF80
	mov r0, r4
	bl ov5_0211F08C
	ldmia sp!, {r4, pc}
	arm_func_end ov5_0211EB84

	arm_func_start ov5_0211EBB4
ov5_0211EBB4: ; 0x0211EBB4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x220]
	cmp r4, #0
	beq _0211EBE4
	beq _0211EBDC
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl sub_02001470
	arm_func_end ov5_0211EBB4
_0211EBDC:
	mov r0, #0
	str r0, [r5, #0x220]
_0211EBE4:
	ldr r4, [r5, #0x224]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0211EC04
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl sub_02001470
_0211EC04:
	mov r0, #0
	str r0, [r5, #0x224]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov5_0211EC10
ov5_0211EC10: ; 0x0211EC10
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	bl ov5_0211EC5C
	ldr r0, [r4, #0x228]
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r3, [r4, #0x22c]
	mov ip, #0
	ldr r1, _0211EC54 ; =0x05000200
	add r0, r4, #0x10
	mov r2, #0x1e0
	str ip, [r3, #0x14]
	bl sub_02067E7C
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211EC54: .word 0x05000200
	arm_func_end ov5_0211EC10

	arm_func_start ov5_0211EC58
ov5_0211EC58: ; 0x0211EC58
	bx lr
	arm_func_end ov5_0211EC58

	arm_func_start ov5_0211EC5C
ov5_0211EC5C: ; 0x0211EC5C
	mov r0, #0x4000000
	ldr r2, [r0]
	ldr r1, _0211ECF8 ; =0x00001310
	bic r2, r2, #0x1f00
	orr r2, r2, #0x1d00
	str r2, [r0]
	ldrh r3, [r0, #8]
	add r2, r1, #0x1f4
	add r1, r1, #0x3f4
	and r3, r3, #0x43
	orr r3, r3, #0x310
	orr r3, r3, #0x1000
	strh r3, [r0, #8]
	ldrh ip, [r0, #0xc]
	mov r3, #0
	and ip, ip, #0x43
	orr r2, ip, r2
	strh r2, [r0, #0xc]
	ldrh r2, [r0, #0xe]
	and r2, r2, #0x43
	orr r1, r2, r1
	strh r1, [r0, #0xe]
	ldrh r1, [r0, #0xa]
	bic r1, r1, #3
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #8]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r0, #8]
	ldrh r1, [r0, #0xc]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #0xe]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r0, #0xe]
	strh r3, [r0, #0x50]
	bx lr
	.align 2, 0
_0211ECF8: .word 0x00001310
	arm_func_end ov5_0211EC5C

	arm_func_start ov5_0211ECFC
ov5_0211ECFC: ; 0x0211ECFC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, #0x44
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211ED38
	ldr r3, [r4, #0x214]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x34
	mov r3, #0
	bl sub_0200ECD0
	arm_func_end ov5_0211ECFC
_0211ED38:
	str r0, [r4, #0x220]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x220]
	ldr r1, _0211EED8 ; =s_data_menu_overlay_5_0212083c
	ldr r2, _0211EEDC ; =s_stl000_00_overlay_5_02120848
	mov r3, #0x350
	bl sub_0200EE14
	mov r7, #0
	ldr r8, _0211EEE0 ; =DAT_overlay_5_021206e8
	mov r6, #0x1a
	mov r5, r7
_0211ED68:
	ldr r1, [r4, #0x210]
	ldr r0, [r8, #0x10]
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #0x14]
	cmp r0, #0
	ldrne r1, [r8, #8]
	str r5, [sp]
	ldr r2, [r8]
	ldr r0, [r8, #4]
	mov r2, r2, lsl #3
	mov r3, r0, lsl #3
	ldr r0, [r4, #0x220]
	moveq r1, r6
	sub r2, r2, #8
	add r3, r3, #8
	bl sub_0200F4FC
	add r7, r7, #1
	cmp r7, #0x11
	add r8, r8, #0x14
	blt _0211ED68
	mov r7, #0
	ldr r8, _0211EEE4 ; =DAT_overlay_5_0212060c
	mov r6, #0x1a
	mov r5, r7
_0211EDC8:
	ldr r1, [r4, #0x210]
	ldr r0, [r8, #0x10]
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #0x14]
	cmp r0, #0
	ldrne r1, [r8, #8]
	str r5, [sp]
	ldr r2, [r8]
	ldr r0, [r8, #4]
	mov r2, r2, lsl #3
	mov r3, r0, lsl #3
	ldr r0, [r4, #0x220]
	moveq r1, r6
	sub r2, r2, #8
	add r3, r3, #8
	bl sub_0200F4FC
	add r7, r7, #1
	cmp r7, #4
	add r8, r8, #0x14
	blt _0211EDC8
	mov r5, #0
	ldr r6, _0211EEE8 ; =DAT_overlay_5_0212065c
	mov r7, r5
_0211EE24:
	ldr r2, [r4, #0x210]
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0x10]
	add r1, r2, r1, lsl #2
	ldr r1, [r1, #0x14]
	cmp r1, r0
	blt _0211EE54
	str r7, [sp]
	ldr r0, [r4, #0x220]
	ldr r1, [r6, #8]
	ldmia r6, {r2, r3}
	bl sub_0200F4FC
_0211EE54:
	add r5, r5, #1
	cmp r5, #7
	add r6, r6, #0x14
	blt _0211EE24
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x220]
	mov r2, #0xf0
	mov r3, #0x5c
	bl sub_0200F4FC
	mov r1, #0x20
	str r0, [r4, #0x228]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x228]
	mov r2, r1
	bl sub_0200EBF4
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x220]
	mov r1, #0x1b
	mov r2, #0xf0
	mov r3, #0x5c
	bl sub_0200F4FC
	str r0, [r4, #0x22c]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, _0211EEEC ; =0x05000200
	add r1, r4, #0x10
	mov r2, #0x1e0
	bl sub_02067E7C
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211EED8: .word s_data_menu_overlay_5_0212083c
_0211EEDC: .word s_stl000_00_overlay_5_02120848
_0211EEE0: .word DAT_overlay_5_021206e8
_0211EEE4: .word DAT_overlay_5_0212060c
_0211EEE8: .word DAT_overlay_5_0212065c
_0211EEEC: .word 0x05000200

	arm_func_start ov5_0211EEF0
ov5_0211EEF0: ; 0x0211EEF0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, _0211EF78 ; =DAT_overlay_5_021203d8
	add r8, sp, #0
	ldrh r7, [r4]
	ldrh r6, [r4, #2]
	ldrh r5, [r4, #4]
	ldrh r4, [r4, #6]
	strh r6, [sp, #2]
	strh r7, [sp]
	strh r4, [sp, #6]
	mov r3, r3, lsl #1
	strh r5, [sp, #4]
	ldrh r5, [r8, r3]
	mov ip, #0
	ldr r6, _0211EF7C ; =0x00008FFF
	mov r3, ip
	arm_func_end ov5_0211EEF0
_0211EF34:
	mov lr, r3
	add r4, ip, r1
_0211EF3C:
	add r7, lr, r2
	add r7, r4, r7, lsl #5
	mov r8, r7, lsl #1
	ldrh r7, [r0, r8]
	add lr, lr, #1
	cmp lr, #2
	and r7, r7, r6
	orr r7, r7, r5
	strh r7, [r0, r8]
	blt _0211EF3C
	add ip, ip, #1
	cmp ip, #0xa
	blt _0211EF34
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211EF78: .word DAT_overlay_5_021203d8
_0211EF7C: .word 0x00008FFF

	arm_func_start ov5_0211EF80
ov5_0211EF80: ; 0x0211EF80
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x810
	mov r1, #0x200
	mov r4, r0
	str r1, [sp]
	ldr r3, _0211F074 ; =s_stl000_overlay_5_02120868
	ldr r0, _0211F078 ; =s_menu_overlay_5_02120854
	ldr r1, _0211F07C ; =s_stl000_bg_overlay_5_0212085c
	str r3, [sp, #4]
	mov r5, #8
	mov r2, #2
	str r5, [sp, #8]
	bl sub_02020804
	mov r0, r5
	str r0, [sp]
	mov r0, #0x200
	str r0, [sp, #4]
	add r2, sp, #0x10
	str r2, [sp, #8]
	mov r5, #0
	ldr r0, _0211F078 ; =s_menu_overlay_5_02120854
	ldr r1, _0211F07C ; =s_stl000_bg_overlay_5_0212085c
	ldr r3, _0211F080 ; =s_stl000_01_overlay_5_02120870
	mov r2, #2
	str r5, [sp, #0xc]
	bl sub_02020FF0
	mov r0, #8
	str r0, [sp]
	mov r0, #0x200
	str r0, [sp, #4]
	mov r2, r5
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, _0211F078 ; =s_menu_overlay_5_02120854
	ldr r1, _0211F07C ; =s_stl000_bg_overlay_5_0212085c
	ldr r3, _0211F084 ; =s_stl000_00_overlay_5_02120848
	mov r2, #3
	bl sub_02020FF0
	mov r6, r5
	ldr r7, _0211F088 ; =DAT_overlay_5_021206e8
	add r5, sp, #0x10
	arm_func_end ov5_0211EF80
_0211F024:
	ldr r1, [r4, #0x210]
	ldr r0, [r7, #0x10]
	add r0, r1, r0, lsl #2
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _0211F048
	mov r0, r5
	ldmia r7, {r1, r2}
	bl ov5_0211EEF0
_0211F048:
	add r6, r6, #1
	cmp r6, #0x11
	add r7, r7, #0x14
	blt _0211F024
	bl sub_02062798
	mov r1, r0
	add r0, sp, #0x10
	mov r2, #0x800
	bl sub_02067E7C
	add sp, sp, #0x810
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211F074: .word s_stl000_overlay_5_02120868
_0211F078: .word s_menu_overlay_5_02120854
_0211F07C: .word s_stl000_bg_overlay_5_0212085c
_0211F080: .word s_stl000_01_overlay_5_02120870
_0211F084: .word s_stl000_00_overlay_5_02120848
_0211F088: .word DAT_overlay_5_021206e8

	arm_func_start ov5_0211F08C
ov5_0211F08C: ; 0x0211F08C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	mov sl, r0
	ldr r0, [sl, #0x214]
	add r0, r0, #0x1000
	ldr r6, [r0, #0x494]
	mov r0, r6
	bl sub_0200C3D0
	mov r0, r6
	mov r1, #0
	mov r2, #0x13
	mov r3, #4
	bl sub_0200C408
	mov r0, r6
	mov r1, #0x16
	bl sub_0200C680
	ldr r0, [sl, #0x210]
	mov r4, #0x3d
	ldr r7, [r0, #0xc]
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	stmib sp, {r1, r4}
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, r6
	mov r2, #0xb
	mov r3, #3
	bl sub_0200C6C8
	ldr r0, [sl, #0x21c]
	add r4, r4, #0x21
	ldr r0, [r0, #8]
	ldr r1, [r0, #0x1fc]
	cmp r1, #0
	beq _0211F140
	mov r0, #3
	stmia sp, {r0, r1}
	mov r1, #0
	str r1, [sp, #8]
	mov r0, r6
	mov r2, #4
	mov r3, #6
	str r1, [sp, #0xc]
	bl sub_0200C7A4
	arm_func_end ov5_0211F08C
_0211F140:
	ldr r0, _0211F358 ; =DAT_overlay_5_021203e0
	add r3, sp, #0x14
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr sb, _0211F35C ; =DAT_overlay_5_021206e8
	mov r5, #0
	add fp, sp, #0x20
_0211F15C:
	ldr r1, [sb]
	mov r0, r6
	str r1, [sp]
	ldr r2, [sb, #4]
	add r1, r5, #1
	stmib sp, {r2, r4}
	mov r2, #0
	str r2, [sp, #0xc]
	mov r2, #2
	str r2, [sp, #0x10]
	mov r2, #0xa
	mov r3, #2
	bl sub_0200C6C8
	ldr r1, [sl, #0x210]
	ldr r0, [sb, #0x10]
	add r4, r4, #0x14
	add r0, r1, r0, lsl #2
	ldr r8, [r0, #0x14]
	cmp r8, #0
	beq _0211F238
	ldr r2, [r7, #8]
	ldr r1, [sb, #0xc]
	mov r0, r6
	add r1, r2, r1, lsl #3
	ldr r3, [r1, #0xc]
	mov r2, #3
	stmia sp, {r2, r3}
	mov r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, #2
	add r1, r5, #1
	mov r3, r2
	bl sub_0200C7A4
	add r0, sp, #0x14
	ldmia r0, {r0, r1, r2}
	stmia fp, {r0, r1, r2}
	mov r3, #3
	mov r0, r3
	str r0, [sp]
	add r8, fp, r8, lsl #2
	ldr r1, [sl, #0x21c]
	ldr r2, [r8, #-4]
	ldr r8, [r1, #8]
	mov r0, r6
	add r2, r8, r2, lsl #3
	ldr r8, [r2, #4]
	add r1, r5, #1
	str r8, [sp, #4]
	mov r8, #0
	str r8, [sp, #8]
	mov r2, #0x36
	str r8, [sp, #0xc]
	bl sub_0200C7A4
	b _0211F26C
_0211F238:
	mov r0, #3
	str r0, [sp]
	ldr r1, [r7, #8]
	mov r0, r6
	ldr r2, [r1, #0xcc]
	add r1, r5, #1
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, #4
	mov r3, #2
	bl sub_0200C7A4
_0211F26C:
	add sb, sb, #0x14
	add r5, r5, #1
	cmp r5, #0x11
	blt _0211F15C
	mov r8, #0
	ldr sb, _0211F360 ; =DAT_overlay_5_0212060c
	mov fp, #3
	mov r5, r8
_0211F28C:
	ldr r1, [sb]
	mov r0, r6
	str r1, [sp]
	ldr r2, [sb, #4]
	add r1, r8, #0x12
	stmib sp, {r2, r4, r5}
	mov r2, #2
	str r2, [sp, #0x10]
	mov r2, #0xa
	mov r3, #2
	bl sub_0200C6C8
	ldr r1, [sl, #0x210]
	ldr r0, [sb, #0x10]
	add r4, r4, #0x14
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #0x14]
	mov r3, #2
	cmp r0, #0
	beq _0211F310
	str fp, [sp]
	ldr r2, [r7, #8]
	ldr r1, [sb, #0xc]
	mov r0, r6
	add r1, r2, r1, lsl #3
	ldr r2, [r1, #4]
	add r1, r8, #0x12
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, #4
	bl sub_0200C7A4
	b _0211F340
_0211F310:
	mov r0, #3
	str r0, [sp]
	ldr r1, [r7, #8]
	mov r0, r6
	ldr r2, [r1, #0xcc]
	add r1, r8, #0x12
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r2, #4
	bl sub_0200C7A4
_0211F340:
	add sb, sb, #0x14
	add r8, r8, #1
	cmp r8, #4
	blt _0211F28C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211F358: .word DAT_overlay_5_021203e0
_0211F35C: .word DAT_overlay_5_021206e8
_0211F360: .word DAT_overlay_5_0212060c

	arm_func_start ov5_0211F364
ov5_0211F364: ; 0x0211F364
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x220]
	cmp r0, #0
	beq _0211F37C
	bl sub_0200F64C
	arm_func_end ov5_0211F364
_0211F37C:
	ldr r0, [r4, #0x224]
	cmp r0, #0
	beq _0211F38C
	bl sub_0200F64C
_0211F38C:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0211F3AC
	cmp r0, #1
	beq _0211F3E4
	cmp r0, #2
	beq _0211F4BC
	b _0211F514
_0211F3AC:
	ldr r0, [r4, #0x214]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211F514
	ldr r0, [r4, #0x214]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	moveq r0, #1
	streq r0, [r4, #4]
	b _0211F514
_0211F3E4:
	ldr r1, [r4, #0x214]
	ldr r0, [r4, #0x218]
	ldr r5, [r1, #0x14]
	bl sub_0202A404
	cmp r0, #0
	beq _0211F440
	mov r0, #2
	str r0, [r4, #4]
	ldr r0, [r4, #0x214]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x14
	bl sub_0200E0E0
	ldr r0, [r4, #0x214]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x14
	bl sub_0200E0E0
	mov r0, #0
	str r0, [r4, #0xc]
	b _0211F514
_0211F440:
	ldr r0, [r4, #0x228]
	bl sub_0200EB84
	cmp r0, #0
	bne _0211F464
	ldrh r0, [r5, #2]
	and r0, r0, #0x100
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211F514
_0211F464:
	ldr r0, [r4, #0x228]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x22c]
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x214]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #2
	str r0, [r4, #4]
	ldr r0, [r4, #0x214]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x14
	bl sub_0200E0E0
	mov r0, #1
	str r0, [r4, #0xc]
	b _0211F514
_0211F4BC:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldr r0, [r4, #0x214]
	add r0, r0, #0x1000
	bne _0211F500
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211F514
	ldr r0, [r4, #0x214]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211F514
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0211F500:
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
_0211F514:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov5_0211F51C
ov5_0211F51C: ; 0x0211F51C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x218]
	bl sub_0202A47C
	ldr r0, [r4, #0x220]
	cmp r0, #0
	beq _0211F53C
	bl sub_0200F71C
	arm_func_end ov5_0211F51C
_0211F53C:
	ldr r0, [r4, #0x224]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start ov5_0211F550
ov5_0211F550: ; 0x0211F550
	bx lr
	arm_func_end ov5_0211F550

	arm_func_start ov5_0211F554
ov5_0211F554: ; 0x0211F554
	bx lr
	arm_func_end ov5_0211F554

	arm_func_start ov5_0211F558
ov5_0211F558: ; 0x0211F558
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	str r1, [r5, #4]
	mov r1, r3
	str r4, [r5, #8]
	mov ip, #1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	mov r0, r4
	str ip, [sp]
	bl sub_0200F4FC
	str r0, [r5, #0xc]
	ldr r1, [r4, #0x24]
	ldr r0, [sp, #0x18]
	str r1, [r5]
	mov r3, #0
	cmp r0, #1
	mov r1, #0x20
	str r3, [sp]
	bne _0211F5BC
	ldr r0, [r5, #0xc]
	mov r2, #0x40
	bl sub_0200EBF4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov5_0211F558
_0211F5BC:
	ldr r0, [r5, #0xc]
	mov r2, r1
	bl sub_0200EBF4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov5_0211F5CC
ov5_0211F5CC: ; 0x0211F5CC
	ldr ip, _0211F5D8 ; =FUN_0200EB84
	ldr r0, [r0, #0xc]
	bx ip
	.align 2, 0
_0211F5D8: .word sub_0200EB84
	arm_func_end ov5_0211F5CC

	arm_func_start ov5_0211F5DC
ov5_0211F5DC: ; 0x0211F5DC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r1, #0
	str r4, [r5, #0x14]
	mov r0, r4
	mov r2, r1
	mov r3, r1
	str r1, [sp]
	bl sub_0200F4FC
	str r0, [r5, #0x18]
	ldr r0, [r4, #0x24]
	mov r2, #0
	str r0, [r5, #4]
	mov r0, r4
	mov r3, r2
	str r2, [sp]
	mov r1, #3
	bl sub_0200F4FC
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x24]
	mov r1, #0
	str r0, [r5, #8]
	ldr r0, [r5, #0x18]
	str r1, [r0, #0x14]
	ldr r0, [r5, #0x1c]
	str r1, [r0, #0x14]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov5_0211F5DC

	arm_func_start ov5_0211F64C
ov5_0211F64C: ; 0x0211F64C
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r3, [r4]
	cmp r3, #0
	beq _0211F66C
	cmp r3, #1
	beq _0211F6A0
	b _0211F6D0
	arm_func_end ov5_0211F64C
_0211F66C:
	ldr r0, [r4, #0x18]
	mov r3, #1
	str r3, [r0, #0x14]
	ldr r0, [r4, #0x1c]
	mov r3, #0
	str r3, [r0, #0x14]
	ldr r0, [r4, #0x18]
	bl sub_0200EB28
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #4]
	mov r2, #0
	bl sub_0200F628
	b _0211F6D0
_0211F6A0:
	ldr r0, [r4, #0x1c]
	mov r3, #1
	str r3, [r0, #0x14]
	ldr r0, [r4, #0x18]
	mov r3, #0
	str r3, [r0, #0x14]
	ldr r0, [r4, #0x1c]
	bl sub_0200EB28
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #8]
	mov r2, #3
	bl sub_0200F628
_0211F6D0:
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}

	arm_func_start ov5_0211F6E0
ov5_0211F6E0: ; 0x0211F6E0
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r3, r0
	ldr r1, [r3]
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #0xc
	ldmeqia sp!, {pc}
	ldr r0, _0211F774 ; =DAT_overlay_5_021203ec
	add ip, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldr r0, [r3, #0xc]
	add r1, r0, #1
	str r1, [r3, #0xc]
	ldr r0, [r3, #0x10]
	ldr r0, [ip, r0, lsl #2]
	cmp r1, r0
	addne sp, sp, #0xc
	ldmneia sp!, {pc}
	mov r1, #0
	str r1, [r3, #0xc]
	ldr r0, [r3, #0x10]
	add r0, r0, #1
	str r0, [r3, #0x10]
	cmp r0, #3
	streq r1, [r3, #0x10]
	ldr r0, [r3]
	ldr ip, [r3, #0x10]
	add r1, r3, r0, lsl #2
	add r2, r0, r0, lsl #1
	ldr r0, [r3, #0x14]
	ldr r1, [r1, #4]
	add r2, ip, r2
	bl sub_0200F628
	add sp, sp, #0xc
	ldmia sp!, {pc}
	.align 2, 0
_0211F774: .word DAT_overlay_5_021203ec
	arm_func_end ov5_0211F6E0

	arm_func_start ov5_0211F778
ov5_0211F778: ; 0x0211F778
	stmdb sp!, {r4, lr}
	ldr r3, _0211F7DC ; =PTR_LAB_overlay_5_0211eae0_overlay_5_021204f8
	mov r4, r0
	str r3, [r4]
	mov r3, #0
	str r3, [r4, #4]
	ldr r0, _0211F7E0 ; =PTR_LAB_overlay_5_0211f7e4_overlay_5_021208a8
	str r3, [r4, #8]
	str r0, [r4]
	str r3, [r4, #0x10]
	str r3, [r4, #0x14]
	str r3, [r4, #0x228]
	str r3, [r4, #0x22c]
	str r1, [r4, #0x21c]
	str r2, [r4, #0x218]
	ldr r0, [r2, #8]
	mov r1, r3
	str r0, [r4, #0x224]
	ldr r3, [r2, #0x10]
	add r0, r4, #0x230
	mov r2, #0xbc
	str r3, [r4, #0x220]
	bl MI_CpuFill8
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211F7DC: .word PTR_LAB_overlay_5_0211eae0_overlay_5_021204f8
_0211F7E0: .word PTR_LAB_overlay_5_0211f7e4_overlay_5_021208a8
	arm_func_end ov5_0211F778

	arm_func_start ov5_0211F7E4
ov5_0211F7E4: ; 0x0211F7E4
	stmdb sp!, {r4, lr}
	ldr r1, _0211F808 ; =PTR_LAB_overlay_5_0211f7e4_overlay_5_021208a8
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211F808: .word PTR_LAB_overlay_5_0211f7e4_overlay_5_021208a8
	arm_func_end ov5_0211F7E4

	arm_func_start ov5_0211F80C
ov5_0211F80C: ; 0x0211F80C
	stmdb sp!, {r4, lr}
	ldr r1, _0211F838 ; =PTR_LAB_overlay_5_0211f7e4_overlay_5_021208a8
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_02001470
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211F838: .word PTR_LAB_overlay_5_0211f7e4_overlay_5_021208a8
	arm_func_end ov5_0211F80C

	arm_func_start ov5_0211F83C
ov5_0211F83C: ; 0x0211F83C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov5_0211F978
	mov r0, r4
	bl ov5_0211F9A0
	mov r0, r4
	bl ov5_0211FA2C
	mov r0, r4
	bl ov5_0211FB04
	mov r0, r4
	bl ov5_0211FB6C
	mov r0, r4
	bl ov5_0211FD0C
	ldmia sp!, {r4, pc}
	arm_func_end ov5_0211F83C

	arm_func_start ov5_0211F874
ov5_0211F874: ; 0x0211F874
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r5, [r4, #0x228]
	cmp r5, #0
	beq _0211F8A4
	beq _0211F89C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl sub_02001470
	arm_func_end ov5_0211F874
_0211F89C:
	mov r0, #0
	str r0, [r4, #0x228]
_0211F8A4:
	ldr r5, [r4, #0x22c]
	cmp r5, #0
	beq _0211F8CC
	beq _0211F8C4
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl sub_02001470
_0211F8C4:
	mov r0, #0
	str r0, [r4, #0x22c]
_0211F8CC:
	mov r6, #0
	mov r5, r6
_0211F8D4:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x230]
	cmp r0, #0
	beq _0211F8F4
	beq _0211F8EC
	bl sub_02001470
_0211F8EC:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x230]
_0211F8F4:
	add r6, r6, #1
	cmp r6, #0x2f
	blt _0211F8D4
	ldr r0, [r4, #0x2ec]
	cmp r0, #0
	beq _0211F91C
	beq _0211F914
	bl sub_02001470
_0211F914:
	mov r0, #0
	str r0, [r4, #0x2ec]
_0211F91C:
	ldr r0, [r4, #0x21c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl sub_02009FB0
	ldr r0, [r4, #0x21c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_020092D4
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov5_0211F948
ov5_0211F948: ; 0x0211F948
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	bl ov5_0211F9A0
	ldr r1, _0211F974 ; =0x05000200
	add r0, r4, #0x18
	mov r2, #0x1e0
	bl sub_02067E7C
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211F974: .word 0x05000200
	arm_func_end ov5_0211F948

	arm_func_start ov5_0211F978
ov5_0211F978: ; 0x0211F978
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x218]
	ldr r1, [r1]
	str r1, [r4, #0xc]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	bl ov5_02120248
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end ov5_0211F978

	arm_func_start ov5_0211F9A0
ov5_0211F9A0: ; 0x0211F9A0
	mov r0, #0x4000000
	ldr r2, [r0]
	ldr r1, _0211FA28 ; =0x00001210
	bic r2, r2, #0x1f00
	orr r2, r2, #0x1b00
	str r2, [r0]
	ldrh r3, [r0, #8]
	add r1, r1, #0x3f4
	mov r2, #0
	and r3, r3, #0x43
	orr r3, r3, #0x210
	orr r3, r3, #0x1000
	strh r3, [r0, #8]
	ldrh r3, [r0, #0xe]
	and r3, r3, #0x43
	orr r1, r3, r1
	strh r1, [r0, #0xe]
	ldrh r1, [r0, #0xa]
	bic r1, r1, #3
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #8]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r0, #8]
	ldrh r1, [r0, #0xc]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #0xe]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x50]
	bx lr
	.align 2, 0
_0211FA28: .word 0x00001210
	arm_func_end ov5_0211F9A0

	arm_func_start ov5_0211FA2C
ov5_0211FA2C: ; 0x0211FA2C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x44
	mov r4, #0
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211FA68
	ldr r3, [r5, #0x21c]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x64
	mov r3, r4
	bl sub_0200ECD0
	arm_func_end ov5_0211FA2C
_0211FA68:
	str r0, [r5, #0x228]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x228]
	ldr r1, _0211FAF4 ; =s_data_menu_overlay_5_02120d34
	ldr r2, _0211FAF8 ; =s_stl001_00_overlay_5_02120d40
	bl sub_0200EE14
	add r4, r4, r0
	mov r0, #0x44
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211FAB8
	ldr r3, [r5, #0x21c]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x34
	mov r3, #0
	bl sub_0200ECD0
_0211FAB8:
	str r0, [r5, #0x22c]
	mov r0, #0xe
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r5, #0x22c]
	ldr r1, _0211FAF4 ; =s_data_menu_overlay_5_02120d34
	ldr r2, _0211FAFC ; =s_stl002_00_overlay_5_02120d4c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r0, _0211FB00 ; =0x05000200
	add r1, r5, #0x18
	mov r2, #0x1e0
	bl sub_02067E7C
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211FAF4: .word s_data_menu_overlay_5_02120d34
_0211FAF8: .word s_stl001_00_overlay_5_02120d40
_0211FAFC: .word s_stl002_00_overlay_5_02120d4c
_0211FB00: .word 0x05000200

	arm_func_start ov5_0211FB04
ov5_0211FB04: ; 0x0211FB04
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x10
	mov ip, #0
	ldr r3, _0211FB5C ; =s_stl001_overlay_5_02120d6c
	str ip, [sp]
	ldr r0, _0211FB60 ; =s_menu_overlay_5_02120d58
	ldr r1, _0211FB64 ; =s_stl001_bg_overlay_5_02120d60
	mov r2, #3
	stmib sp, {r3, ip}
	bl sub_02020804
	mov ip, #0
	str ip, [sp]
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r0, _0211FB60 ; =s_menu_overlay_5_02120d58
	ldr r1, _0211FB64 ; =s_stl001_bg_overlay_5_02120d60
	ldr r3, _0211FB68 ; =s_stl001_00_overlay_5_02120d40
	mov r2, #3
	str ip, [sp, #0xc]
	bl sub_02020FF0
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211FB5C: .word s_stl001_overlay_5_02120d6c
_0211FB60: .word s_menu_overlay_5_02120d58
_0211FB64: .word s_stl001_bg_overlay_5_02120d60
_0211FB68: .word s_stl001_00_overlay_5_02120d40
	arm_func_end ov5_0211FB04

	arm_func_start ov5_0211FB6C
ov5_0211FB6C: ; 0x0211FB6C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #0x21c]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x494]
	mov r0, r4
	bl sub_0200C3D0
	mov r0, r4
	mov r1, #0
	mov r2, #0x12
	mov r3, #4
	bl sub_0200C408
	mov r0, r4
	mov r1, #1
	bl sub_0200C680
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, r4
	mov r2, #0x14
	mov r3, #3
	bl sub_0200C6C8
	ldr r0, [r5, #0x224]
	ldr r0, [r0, #8]
	ldr r1, [r0, #0x204]
	cmp r1, #0
	beq _0211FC14
	mov r0, #3
	stmia sp, {r0, r1}
	mov r1, #0
	str r1, [sp, #8]
	mov r0, r4
	mov r2, #4
	mov r3, #6
	str r1, [sp, #0xc]
	bl sub_0200C7A4
	arm_func_end ov5_0211FB6C
_0211FC14:
	ldr r0, [r5, #0x21c]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AB28
	ldr r0, [r5, #0x21c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	ldr r0, [r5, #0xc]
	mov r2, #1
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	bne _0211FC74
	ldr r0, [r5, #0x21c]
	mov r3, r2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r1, #0x18
	bl sub_0200AD34
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
_0211FC74:
	ldr r0, [r5, #0x21c]
	ldr r1, _0211FC94 ; =OVERLAY5_BSS_02120D80
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r3, r2
	bl sub_02009D8C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0211FC94: .word OVERLAY5_BSS_02120D80

	arm_func_start ov5_0211FC98
ov5_0211FC98: ; 0x0211FC98
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r0, #0x10
	mov r6, r1
	mov r5, r2
	bl MemoryAlloc_Thunk1
	movs r4, r0
	beq _0211FCCC
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	arm_func_end ov5_0211FC98
_0211FCCC:
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #4]
	cmp r0, #0x19
	str r1, [sp]
	moveq r3, #1
	ldr r2, [r5, #8]
	movne r3, #0
	stmib sp, {r2, r3}
	ldr r2, [r7, #0x228]
	ldr r3, [r5]
	mov r0, r4
	mov r1, r6
	bl ov5_0211F558
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start ov5_0211FD0C
ov5_0211FD0C: ; 0x0211FD0C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, #0x2f
	mov r7, #0x30
	ldr sb, _0211FE30 ; =DAT_overlay_5_021208cc
	mov sl, r0
	mov r8, #0
	mov fp, r6
	mov r5, r7
	mov r4, #1
	arm_func_end ov5_0211FD0C
_0211FD30:
	ldr r2, [sl, #0x218]
	ldr r1, [sb, #0x10]
	ldr r0, [sb, #0x14]
	add r1, r2, r1, lsl #2
	ldr r1, [r1, #0x14]
	cmp r1, r0
	blt _0211FDA8
	mov r0, sl
	mov r1, r8
	mov r2, sb
	bl ov5_0211FC98
	add r1, sl, r8, lsl #2
	str r0, [r1, #0x230]
	ldr r0, [sl, #0xc]
	cmp r0, #0
	beq _0211FDC8
	ldr r0, [sl, #0x10]
	cmp sb, r0
	bne _0211FDC8
	ldr r0, [r1, #0x230]
	str r0, [sl, #0x14]
	ldr r0, [sb, #0xc]
	ldr r1, [sl, #0x14]
	cmp r0, #0x19
	moveq r2, r7
	ldr r0, [r1, #8]
	ldr r1, [r1]
	movne r2, r6
	bl sub_0200F628
	b _0211FDC8
_0211FDA8:
	ldr r0, [sb, #0xc]
	str r4, [sp]
	cmp r0, #0x19
	moveq r1, r5
	ldr r0, [sl, #0x228]
	movne r1, fp
	ldmib sb, {r2, r3}
	bl sub_0200F4FC
_0211FDC8:
	add r8, r8, #1
	cmp r8, #0x2f
	add sb, sb, #0x18
	blt _0211FD30
	mov r0, #0x20
	bl MemoryAlloc_Thunk1
	movs r4, r0
	beq _0211FE1C
	mvn r0, #0
	str r0, [r4]
	mov r1, #0
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	add r0, r4, #0x18
	mov r2, #8
	str r1, [r4, #0x14]
	bl MI_CpuFill8
	add r0, r4, #4
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
_0211FE1C:
	str r4, [sl, #0x2ec]
	ldr r1, [sl, #0x22c]
	mov r0, r4
	bl ov5_0211F5DC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211FE30: .word DAT_overlay_5_021208cc

	arm_func_start ov5_0211FE34
ov5_0211FE34: ; 0x0211FE34
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0211FEB0
	ldr r0, [r4, #8]
	cmp r0, #0x258
	bne _0211FEB0
	ldr r0, [r4, #0x21c]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200A088
	ldr r0, [r4, #0x21c]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200AA04
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x21c]
	mov r2, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r3, r2
	mov r1, #0x72
	bl sub_0200AD34
	arm_func_end ov5_0211FE34
_0211FEB0:
	ldr r0, [r4, #0x2ec]
	bl ov5_0211F6E0
	ldr r0, [r4, #0x228]
	cmp r0, #0
	beq _0211FEC8
	bl sub_0200F64C
_0211FEC8:
	ldr r0, [r4, #0x22c]
	cmp r0, #0
	beq _0211FED8
	bl sub_0200F64C
_0211FED8:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0211FEF8
	cmp r0, #1
	beq _0211FFFC
	cmp r0, #2
	beq _021200D0
	b _02120130
_0211FEF8:
	ldr r0, [r4, #0x21c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02120130
	ldr r0, [r4, #0x21c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02120130
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0211FFF0
	ldr r0, [r4, #8]
	cmp r0, #0x3c
	bne _02120130
	ldr r2, [r4, #0x10]
	ldr r0, [r2, #0xc]
	ldmib r2, {r1, r2}
	cmp r0, #0x19
	moveq r3, #1
	ldr r0, [r4, #0x2ec]
	movne r3, #0
	bl ov5_0211F64C
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x10]
	ldr r0, [r1, #8]
	ldr r1, [r1]
	ldr r2, [r2]
	bl sub_0200F628
	ldr r0, [r4, #0x21c]
	mov r1, #0xba
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr ip, [r4, #0xc]
	mov r0, #0
	cmp ip, #0x19
	mov r2, #1
	str r0, [sp]
	ble _0211FFCC
	ldr r0, [r4, #0x21c]
	ldr r1, [r4, #0x10]
	add r0, r0, #0x1000
	ldr r1, [r1, #0x14]
	add ip, ip, #0x17
	ldr r0, [r0, #0x490]
	mov r3, r2
	add r1, ip, r1
	bl sub_0200AD34
	b _0211FFE4
_0211FFCC:
	ldr r0, [r4, #0x21c]
	mov r3, r2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	add r1, ip, #0x18
	bl sub_0200AD34
_0211FFE4:
	mov r0, #1
	str r0, [r4, #4]
	b _02120130
_0211FFF0:
	mov r0, #1
	str r0, [r4, #4]
	b _02120130
_0211FFFC:
	ldr r2, [r4, #0x21c]
	ldr r0, [r4, #0xc]
	ldr r1, [r2, #0x14]
	cmp r0, #0
	ldr r0, [r2, #0x18]
	beq _02120090
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02120044
	ldrh r1, [r1, #2]
	and r0, r1, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	bne _02120044
	and r0, r1, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02120130
_02120044:
	add r0, r2, #0x1000
	ldr r0, [r0, #0x48c]
	ldr r1, _0212013C ; =0x00000103
	bl sub_02034C44
	mov r0, #2
	str r0, [r4, #4]
	ldr r0, [r4, #0x21c]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x14
	bl sub_0200E0E0
	ldr r0, [r4, #0x21c]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x14
	bl sub_0200E0E0
	b _02120130
_02120090:
	ldr r0, [r4, #0x220]
	bl sub_0202A404
	cmp r0, #0
	beq _021200C4
	mov r0, #2
	str r0, [r4, #4]
	ldr r0, [r4, #0x21c]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x14
	bl sub_0200E0E0
	b _02120130
_021200C4:
	mov r0, r4
	bl ov5_02120140
	b _02120130
_021200D0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldr r0, [r4, #0x21c]
	add r0, r0, #0x1000
	beq _02120118
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02120130
	ldr r0, [r4, #0x21c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02120130
	add sp, sp, #4
	mvn r0, #0
	ldmia sp!, {r3, r4, pc}
_02120118:
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r3, r4, pc}
_02120130:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0212013C: .word 0x00000103

	arm_func_start ov5_02120140
ov5_02120140: ; 0x02120140
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	arm_func_end ov5_02120140
_0212014C:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x230]
	cmp r0, #0
	beq _021201EC
	bl ov5_0211F5CC
	cmp r0, #0
	beq _021201EC
	ldr r1, _021201FC ; =DAT_overlay_5_021208cc
	mov r0, #0x18
	mla r1, r4, r0, r1
	ldr r0, [r5, #0x10]
	cmp r0, r1
	ldmeqia sp!, {r3, r4, r5, pc}
	str r1, [r5, #0x10]
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x230]
	mov r1, #0xfa
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x21c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr r2, [r5, #0x10]
	ldr r0, [r2, #0xc]
	ldmib r2, {r1, r2}
	cmp r0, #0x19
	moveq r3, #1
	ldr r0, [r5, #0x2ec]
	movne r3, #0
	bl ov5_0211F64C
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x21c]
	mov r2, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r3, r2
	add r1, r4, #0x77
	bl sub_0200AD34
	ldmia sp!, {r3, r4, r5, pc}
_021201EC:
	add r4, r4, #1
	cmp r4, #0x2f
	blt _0212014C
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021201FC: .word DAT_overlay_5_021208cc

	arm_func_start ov5_02120200
ov5_02120200: ; 0x02120200
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0212021C
	ldr r0, [r4, #0x220]
	bl sub_0202A47C
	arm_func_end ov5_02120200
_0212021C:
	ldr r0, [r4, #0x22c]
	cmp r0, #0
	beq _0212022C
	bl sub_0200F71C
_0212022C:
	ldr r0, [r4, #0x228]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start ov5_02120240
ov5_02120240: ; 0x02120240
	bx lr
	arm_func_end ov5_02120240

	arm_func_start ov5_02120244
ov5_02120244: ; 0x02120244
	bx lr
	arm_func_end ov5_02120244

	arm_func_start ov5_02120248
ov5_02120248: ; 0x02120248
	stmdb sp!, {r4, lr}
	ldr r4, _0212029C ; =DAT_overlay_5_021208cc
	mov lr, #0
	arm_func_end ov5_02120248
_02120254:
	ldr r2, [r4, #0xc]
	cmp r2, r1
	bne _02120280
	ldr r3, [r0, #0x218]
	ldr r2, [r4, #0x10]
	ldr ip, [r4, #0x14]
	add r2, r3, r2, lsl #2
	ldr r2, [r2, #0x14]
	cmp ip, r2
	moveq r0, r4
	ldmeqia sp!, {r4, pc}
_02120280:
	add lr, lr, #1
	cmp lr, #0x2f
	add r4, r4, #0x18
	blt _02120254
	bl OS_Terminate
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212029C: .word DAT_overlay_5_021208cc
	; 0x021202A0

    .rodata
DAT_overlay_5_021202a0: ; 0x021202A0
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_5_021202a4: ; 0x021202A4
	.byte 0x03, 0x00, 0x00, 0x00
DAT_overlay_5_021202a8: ; 0x021202A8
	.byte 0x05, 0x00, 0x00, 0x00
DAT_overlay_5_021202ac: ; 0x021202AC
	.byte 0x07, 0x00, 0x00, 0x00
DAT_overlay_5_021202b0: ; 0x021202B0
	.byte 0x19, 0x00, 0x00, 0x00
DAT_overlay_5_021202b4: ; 0x021202B4
	.byte 0x22, 0x00, 0x00, 0x00
DAT_overlay_5_021202b8: ; 0x021202B8
	.byte 0x1C, 0x00, 0x00, 0x00
DAT_overlay_5_021202bc: ; 0x021202BC
	.byte 0x23, 0x00, 0x00, 0x00
DAT_overlay_5_021202c0: ; 0x021202C0
	.byte 0x1A, 0x00, 0x00, 0x00
DAT_overlay_5_021202c4: ; 0x021202C4
	.byte 0x24, 0x00, 0x00, 0x00
DAT_overlay_5_021202c8: ; 0x021202C8
	.byte 0x1B, 0x00, 0x00, 0x00
DAT_overlay_5_021202cc: ; 0x021202CC
	.byte 0x25, 0x00, 0x00, 0x00
DAT_overlay_5_021202d0: ; 0x021202D0
	.byte 0x1B, 0x00, 0x00, 0x00
DAT_overlay_5_021202d4: ; 0x021202D4
	.byte 0x25, 0x00, 0x00, 0x00
DAT_overlay_5_021202d8: ; 0x021202D8
	.byte 0x10, 0x00, 0x00, 0x00
DAT_overlay_5_021202dc: ; 0x021202DC
	.byte 0x02, 0x00, 0x00, 0x00
DAT_overlay_5_021202e0: ; 0x021202E0
	.byte 0x08, 0x00, 0x00, 0x00
DAT_overlay_5_021202e4: ; 0x021202E4
	.byte 0x01, 0x00, 0x00, 0x00
DAT_overlay_5_021202e8: ; 0x021202E8
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_5_021202ec: ; 0x021202EC
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_5_021202f0: ; 0x021202F0
	.byte 0x28, 0x00, 0x00, 0x00
DAT_overlay_5_021202f4: ; 0x021202F4
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x29, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x1E, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x2B, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x2C, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x2D, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x2E, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
DAT_overlay_5_021203d8: ; 0x021203D8
	.byte 0x00, 0x10
DAT_overlay_5_021203da: ; 0x021203DA
	.byte 0x00, 0x20
DAT_overlay_5_021203dc: ; 0x021203DC
	.byte 0x00, 0x30
DAT_overlay_5_021203de: ; 0x021203DE
	.byte 0x00, 0x40
DAT_overlay_5_021203e0: ; 0x021203E0
	.byte 0x41, 0x00, 0x00, 0x00
DAT_overlay_5_021203e4: ; 0x021203E4
	.byte 0x42, 0x00, 0x00, 0x00
DAT_overlay_5_021203e8: ; 0x021203E8
	.byte 0x43, 0x00, 0x00, 0x00
DAT_overlay_5_021203ec: ; 0x021203EC
	.byte 0x14, 0x00, 0x00, 0x00
DAT_overlay_5_021203f0: ; 0x021203F0
	.byte 0x08, 0x00, 0x00, 0x00
DAT_overlay_5_021203f4: ; 0x021203F4
	.byte 0x08, 0x00, 0x00, 0x00

    .section .sinit,4 ; 0x021203F8

    .data
PTR_ptr_FUN_020835bc_overlay_5_02120400: ; 0x02120400
	.word ptr_FUN_020835bc_0208f25c
	.word s_12CStylerScene_overlay_5_0212040c
	.word PTR_ptr_FUN_02083578_0208a804
s_12CStylerScene_overlay_5_0212040c: ; 0x0212040C
	.asciz "12CStylerScene"
_0212041B:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_5_02120400
PTR_LAB_overlay_5_0211ca18_overlay_5_02120424: ; 0x02120424
	.word ov5_0211CA18
ptr_FUN_overlay_24_0211ca2c_overlay_5_02120428: ; 0x02120428
	.word ov5_0211CA2C
ptr_FUN_overlay_11_0211cd30_overlay_5_0212042c: ; 0x0212042C
	.word ov5_0211CD30
ptr_FUN_overlay_5_0211cdd8_overlay_5_02120430: ; 0x02120430
	.word ov5_0211CDD8
	.word ov5_0211CE0C
ptr_FUN_overlay_5_0211ce10_overlay_5_02120438: ; 0x02120438
	.word ov5_0211CE10
ptr_FUN_02007cc4_overlay_5_0212043c: ; 0x0212043C
	.word sub_02007CC4
ptr_FUN_overlay_24_0211ca48_overlay_5_02120440: ; 0x02120440
	.word ov5_0211CA48
ptr_FUN_overlay_5_0211cb5c_overlay_5_02120444: ; 0x02120444
	.word ov5_0211CB5C
ptr_FUN_overlay_5_0211cc74_overlay_5_02120448: ; 0x02120448
	.word ov5_0211CC74
	.word ov5_0211CE38
s_data_message_etc_menu_mes_overlay_5_02120450: ; 0x02120450
	.asciz "data/message/etc/menu_mes"
_0212046A:
	.byte 0x00, 0x00
s_data_message_etc_assist_mes_overlay_5_0212046c: ; 0x0212046C
	.asciz "data/message/etc/assist_mes"
PTR_ptr_FUN_02083578_overlay_5_02120488: ; 0x02120488
	.word ptr_FUN_02083578_0208f26c
	.word s_13CStylerScreen_overlay_5_0212049c
PTR_ptr_FUN_020835bc_overlay_5_02120490: ; 0x02120490
	.word ptr_FUN_020835bc_0208f25c
	.word s_18CStylerUpperScreen_overlay_5_021204ac
	.word PTR_ptr_FUN_02083578_overlay_5_02120488
s_13CStylerScreen_overlay_5_0212049c: ; 0x0212049C
	.asciz "13CStylerScreen"
s_18CStylerUpperScreen_overlay_5_021204ac: ; 0x021204AC
	.asciz "18CStylerUpperScreen"
_021204C1:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
ptr_FUN_overlay_21_02120490_overlay_5_021204c8: ; 0x021204C8
	.word PTR_ptr_FUN_020835bc_overlay_5_02120490
PTR_LAB_overlay_5_0211d6f4_overlay_5_021204cc: ; 0x021204CC
	.word ov5_0211D6F4
ptr_FUN_overlay_5_0211d71c_overlay_5_021204d0: ; 0x021204D0
	.word ov5_0211D71C
ptr_FUN_overlay_5_0211d74c_overlay_5_021204d4: ; 0x021204D4
	.word ov5_0211D74C
ptr_FUN_overlay_5_0211d784_overlay_5_021204d8: ; 0x021204D8
	.word ov5_0211D784
	.word ov5_0211EADC
ptr_FUN_overlay_27_0211e958_overlay_5_021204e0: ; 0x021204E0
	.word ov5_0211E958
	.word ov5_0211EAB8
	.word ov5_0211EAD4
	.word ov5_0211EAD8
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_02083578_overlay_5_02120488
PTR_LAB_overlay_5_0211eae0_overlay_5_021204f8: ; 0x021204F8
	.word 0x0211EAE0
ptr_FUN_overlay_5_0211cd1c_overlay_5_021204fc: ; 0x021204FC
	.word ov5_0211CD1C
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word 0x0211CDC8
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
s_data_menu_overlay_5_0212051c: ; 0x0212051C
	.asciz "data/menu"
_02120526:
	.byte 0x00, 0x00
s_ms000_00_overlay_5_02120528: ; 0x02120528
	.asciz "ms000_00"
_02120531:
	.byte 0x00, 0x00, 0x00
s_ma004_00_overlay_5_02120534: ; 0x02120534
	.asciz "ma004_00"
_0212053D:
	.byte 0x00, 0x00, 0x00
DAT_overlay_5_02120540: ; 0x02120540
	.byte 0x42, 0x47, 0x53, 0x00
s_data_menu_ms000_bg_LZ_bin_overlay_5_02120544: ; 0x02120544
	.asciz "data/menu/ms000_bg_LZ.bin"
_0212055E:
	.byte 0x00, 0x00
s_BGS_ms000_NCGR_overlay_5_02120560: ; 0x02120560
	.asciz "BGS:ms000.NCGR"
_0212056F:
	.byte 0x00
s_BGS_ms000_NCLR_overlay_5_02120570: ; 0x02120570
	.asciz "BGS:ms000.NCLR"
_0212057F:
	.byte 0x00
s_BGS_ms000_00_NSCR_overlay_5_02120580: ; 0x02120580
	.asciz "BGS:ms000_00.NSCR"
_02120592:
	.byte 0x00, 0x00
s_BGS_ms000_01_NSCR_overlay_5_02120594: ; 0x02120594
	.asciz "BGS:ms000_01.NSCR"
_021205A6:
	.byte 0x00, 0x00
s_BGS_ms000_02_NSCR_overlay_5_021205a8: ; 0x021205A8
	.asciz "BGS:ms000_02.NSCR"
_021205BA:
	.byte 0x00, 0x00
PTR_ptr_FUN_020835bc_overlay_5_021205bc: ; 0x021205BC
	.word ptr_FUN_020835bc_0208f25c
	.word s_19CStylerStatusScreen_overlay_5_021205c8
	.word PTR_ptr_FUN_02083578_overlay_5_02120488
s_19CStylerStatusScreen_overlay_5_021205c8: ; 0x021205C8
	.asciz "19CStylerStatusScreen"
_021205DE:
	.byte 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_5_021205bc
PTR_LAB_overlay_5_0211eb2c_overlay_5_021205e8: ; 0x021205E8
	.word ov5_0211EB2C
ptr_FUN_overlay_5_0211eb54_overlay_5_021205ec: ; 0x021205EC
	.word ov5_0211EB54
ptr_FUN_overlay_27_0211eb84_overlay_5_021205f0: ; 0x021205F0
	.word ov5_0211EB84
ptr_FUN_overlay_5_0211ebb4_overlay_5_021205f4: ; 0x021205F4
	.word ov5_0211EBB4
ptr_FUN_overlay_5_0211ec10_overlay_5_021205f8: ; 0x021205F8
	.word ov5_0211EC10
ptr_FUN_overlay_5_0211f364_overlay_5_021205fc: ; 0x021205FC
	.word ov5_0211F364
ptr_FUN_overlay_5_0211f51c_overlay_5_02120600: ; 0x02120600
	.word ov5_0211F51C
	.word ov5_0211F550
	.word ov5_0211F554
DAT_overlay_5_0212060c: ; 0x0212060C
	.byte 0x03, 0x00, 0x00, 0x00
DAT_overlay_5_02120610: ; 0x02120610
	.byte 0x13, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
DAT_overlay_5_02120618: ; 0x02120618
	.byte 0x15, 0x00, 0x00, 0x00
DAT_overlay_5_0212061c: ; 0x0212061C
	.byte 0x11, 0x00, 0x00, 0x00
DAT_overlay_5_02120620: ; 0x02120620
	.byte 0x12, 0x00, 0x00, 0x00
DAT_overlay_5_02120624: ; 0x02120624
	.byte 0x13, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
DAT_overlay_5_02120630: ; 0x02120630
	.byte 0x12, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x17, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
DAT_overlay_5_0212065c: ; 0x0212065C
	.byte 0x70, 0x00, 0x00, 0x00
DAT_overlay_5_02120660: ; 0x02120660
	.byte 0xA0, 0x00, 0x00, 0x00
DAT_overlay_5_02120664: ; 0x02120664
	.byte 0x18, 0x00, 0x00, 0x00
DAT_overlay_5_02120668: ; 0x02120668
	.byte 0x11, 0x00, 0x00, 0x00
DAT_overlay_5_0212066c: ; 0x0212066C
	.byte 0x01, 0x00, 0x00, 0x00
	.byte 0x78, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
DAT_overlay_5_0212067c: ; 0x0212067C
	.byte 0x11, 0x00, 0x00, 0x00
DAT_overlay_5_02120680: ; 0x02120680
	.byte 0x02, 0x00, 0x00, 0x00, 0xE8, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00
	.byte 0xB0, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x78, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0xEC, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
DAT_overlay_5_021206e8: ; 0x021206E8
	.byte 0x03, 0x00, 0x00, 0x00
DAT_overlay_5_021206ec: ; 0x021206EC
	.byte 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00
DAT_overlay_5_021206f4: ; 0x021206F4
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_5_021206f8: ; 0x021206F8
	.byte 0x0E, 0x00, 0x00, 0x00
DAT_overlay_5_021206fc: ; 0x021206FC
	.byte 0x03, 0x00, 0x00, 0x00
DAT_overlay_5_02120700: ; 0x02120700
	.byte 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
DAT_overlay_5_0212070c: ; 0x0212070C
	.byte 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
s_data_menu_overlay_5_0212083c: ; 0x0212083C
	.asciz "data/menu"
_02120846:
	.byte 0x00, 0x00
s_stl000_00_overlay_5_02120848: ; 0x02120848
	.asciz "stl000_00"
_02120852:
	.byte 0x00, 0x00
s_menu_overlay_5_02120854: ; 0x02120854
	.asciz "menu/"
_0212085A:
	.byte 0x00, 0x00
s_stl000_bg_overlay_5_0212085c: ; 0x0212085C
	.asciz "stl000_bg_"
_02120867:
	.byte 0x00
s_stl000_overlay_5_02120868: ; 0x02120868
	.asciz "stl000"
_0212086F:
	.byte 0x00
s_stl000_01_overlay_5_02120870: ; 0x02120870
	.asciz "stl000_01"
_0212087A:
	.byte 0x00, 0x00
PTR_ptr_FUN_020835bc_overlay_5_0212087c: ; 0x0212087C
	.word ptr_FUN_020835bc_0208f25c
	.word s_18CStylerPartsScreen_overlay_5_02120888
	.word PTR_ptr_FUN_02083578_overlay_5_02120488
s_18CStylerPartsScreen_overlay_5_02120888: ; 0x02120888
	.asciz "18CStylerPartsScreen"
_0212089D:
	.byte 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_5_0212087c
PTR_LAB_overlay_5_0211f7e4_overlay_5_021208a8: ; 0x021208A8
	.word ov5_0211F7E4
ptr_FUN_overlay_5_0211f80c_overlay_5_021208ac: ; 0x021208AC
	.word ov5_0211F80C
ptr_FUN_overlay_5_0211f83c_overlay_5_021208b0: ; 0x021208B0
	.word ov5_0211F83C
ptr_FUN_overlay_5_0211f874_overlay_5_021208b4: ; 0x021208B4
	.word ov5_0211F874
ptr_FUN_overlay_5_0211f948_overlay_5_021208b8: ; 0x021208B8
	.word ov5_0211F948
ptr_FUN_overlay_5_0211fe34_overlay_5_021208bc: ; 0x021208BC
	.word ov5_0211FE34
ptr_FUN_overlay_5_02120200_overlay_5_021208c0: ; 0x021208C0
	.word ov5_02120200
	.word ov5_02120240
	.word ov5_02120244
DAT_overlay_5_021208cc: ; 0x021208CC
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_5_021208d0: ; 0x021208D0
	.byte 0x13, 0x00, 0x00, 0x00
DAT_overlay_5_021208d4: ; 0x021208D4
	.byte 0x23, 0x00, 0x00, 0x00
DAT_overlay_5_021208d8: ; 0x021208D8
	.byte 0x01, 0x00, 0x00, 0x00
DAT_overlay_5_021208dc: ; 0x021208DC
	.byte 0x0E, 0x00, 0x00, 0x00
DAT_overlay_5_021208e0: ; 0x021208E0
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
DAT_overlay_5_021208f0: ; 0x021208F0
	.byte 0x01, 0x00, 0x00, 0x00
DAT_overlay_5_021208f4: ; 0x021208F4
	.byte 0x0E, 0x00, 0x00, 0x00
DAT_overlay_5_021208f8: ; 0x021208F8
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x43, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x73, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x8B, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0xA3, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0xBB, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x43, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x73, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x8B, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0xA3, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0xBB, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x43, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x73, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x8B, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0xA3, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0xBB, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00
	.byte 0x43, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00
	.byte 0x73, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x8B, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0xA3, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0xBB, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
	.byte 0x43, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00
	.byte 0x1E, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00
	.byte 0x73, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x8B, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00
	.byte 0xA3, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0xBB, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00
	.byte 0x25, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00
	.byte 0xD3, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00
	.byte 0xEB, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00
	.byte 0x27, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00
	.byte 0xEB, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00
	.byte 0xEB, 0x00, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00
s_data_menu_overlay_5_02120d34: ; 0x02120D34
	.asciz "data/menu"
_02120D3E:
	.byte 0x00, 0x00
s_stl001_00_overlay_5_02120d40: ; 0x02120D40
	.asciz "stl001_00"
_02120D4A:
	.byte 0x00, 0x00
s_stl002_00_overlay_5_02120d4c: ; 0x02120D4C
	.asciz "stl002_00"
_02120D56:
	.byte 0x00, 0x00
s_menu_overlay_5_02120d58: ; 0x02120D58
	.asciz "menu/"
_02120D5E:
	.byte 0x00, 0x00
s_stl001_bg_overlay_5_02120d60: ; 0x02120D60
	.asciz "stl001_bg_"
_02120D6B:
	.byte 0x00
s_stl001_overlay_5_02120d6c: ; 0x02120D6C
	.asciz "stl001"
	; 0x02120D73

    .bss
OVERLAY5_BSS_02120D80: ; 0x02120D80
    .space 0x20
