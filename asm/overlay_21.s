    .include "asm/macros.inc"
    .include "asm/include/overlay_21.inc"

    .text

    arm_func_start ov21_0211C9E0
ov21_0211C9E0: ; 0x0211C9E0
    ldr r1, _0211CA3C ; =0x04000006
    ldrh r2, [r1]
    cmp r2, #0x9c
    blt _0211C9FC
    cmp r2, #0xa3
    movle r0, #0
    strle r0, [r1, #0xe]
    arm_func_end ov21_0211C9E0
_0211C9FC:
    cmp r2, #0xc8
    blt _0211CA24
    cmp r2, #0xdc
    bgt _0211CA24
    ldr r1, _0211CA40 ; =OVERLAY21_BSS_021242C0
    ldr r0, _0211CA44 ; =0x000001FF
    ldr r2, [r1]
    ldr r1, _0211CA48 ; =0x04000014
    and r0, r2, r0
    str r0, [r1]
_0211CA24:
    ldr r0, _0211CA4C ; =OS_IRQTable
    add r0, r0, #0x3000
    ldr r1, [r0, #0xff8]
    orr r1, r1, #2
    str r1, [r0, #0xff8]
    bx lr
    .align 2, 0
_0211CA3C: .word 0x04000006
_0211CA40: .word OVERLAY21_BSS_021242C0
_0211CA44: .word 0x000001FF
_0211CA48: .word 0x04000014
_0211CA4C: .word OS_IRQTable
    arm_func_start ov21_0211CA50
ov21_0211CA50: ; 0x0211CA50
    stmdb sp!, {r4, lr}
    mov r4, r0
    bl sub_02007C98
    ldr r0, _0211CAA4 ; =ptr_FUN_overlay_28_0211caac_overlay_21_02122be4
    mov r1, #0
    str r0, [r4]
    str r1, [r4, #0xc]
    str r1, [r4, #0x10]
    mov r0, #2
    str r1, [r4, #8]
    bl sub_0206494C
    str r0, [r4, #0x1c]
    ldr r1, _0211CAA8 ; =ov21_0211C9E0
    mov r0, #2
    bl sub_020648C4
    mov r0, #2
    bl NitroSDK_os_OS_EnableIrqMask
    mov r0, #1
    bl sub_02061414
    mov r0, r4
    ldmia sp!, {r4, pc}
    .align 2, 0
_0211CAA4: .word ptr_FUN_overlay_28_0211caac_overlay_21_02122be4
_0211CAA8: .word ov21_0211C9E0
    arm_func_end ov21_0211CA50

	arm_func_start ov21_0211CAAC
ov21_0211CAAC: ; 0x0211CAAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov21_0211CAAC

	arm_func_start ov21_0211CAC0
ov21_0211CAC0: ; 0x0211CAC0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	bl sub_02001470
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov21_0211CAC0

	arm_func_start ov21_0211CADC
ov21_0211CADC: ; 0x0211CADC
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
	ldr r0, _0211CC90 ; =0x000001FF
	bl sub_020620F0
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0xa4000
	bl NitroSDK_mi_MIi_CpuClearFast
	bl sub_02062634
	mov r0, #0
	bl NitroSDK_gx_GX_SetBankForTex
	mov r0, #0
	bl NitroSDK_gx_GX_SetBankForTexPltt
	mov r0, #3
	bl sub_020616C4
	mov r0, #0x70
	bl sub_02061954
	mov r0, #1
	mov r1, #0
	mov r2, r1
	bl sub_02061500
	mov r0, #4
	bl sub_02062110
	mov r0, #0x100
	bl sub_020621B8
	ldr r3, _0211CC94 ; =0x04001008
	mov ip, #0x4000000
	ldrh r1, [r3]
	ldr r0, _0211CC98 ; =0xFFCFFFEF
	add r2, ip, #0x1000
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r3]
	ldrh r1, [r3, #2]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r3, #2]
	ldrh r1, [r3, #4]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r3, #4]
	ldrh r1, [r3, #6]
	bic r1, r1, #3
	strh r1, [r3, #6]
	ldr r1, [ip]
	and r1, r1, r0
	orr r1, r1, #0x10
	orr r1, r1, #0x100000
	str r1, [ip]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x10
	str r0, [r2]
	mov r1, #0
	mov r2, r1
	mov r3, r1
	add r0, ip, #0x50
	str r1, [sp]
	bl sub_02062C10
	ldr lr, _0211CC9C ; =0x04000060
	mov r2, #0x4000000
	ldrh r1, [lr]
	add ip, lr, #0x2a4
	ldr r0, _0211CCA0 ; =0xFFFFFDF1
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
	bic r0, r0, #0x38000000
	str r0, [r2]
	ldr r0, [r2]
	bic r0, r0, #0x7000000
	str r0, [r2]
	ldr r0, [r2]
	bic r0, r0, #0x1f00
	str r0, [r2]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	str r0, [r1]
	bl sub_020614B8
	ldr r1, _0211CCA4 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211CC90: .word 0x000001FF
_0211CC94: .word 0x04001008
_0211CC98: .word 0xFFCFFFEF
_0211CC9C: .word 0x04000060
_0211CCA0: .word 0xFFFFFDF1
_0211CCA4: .word 0x04001000
	arm_func_end ov21_0211CADC

	arm_func_start ov21_0211CCA8
ov21_0211CCA8: ; 0x0211CCA8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov ip, #0x4000000
	ldr r1, [ip]
	mov r4, r0
	and r0, r1, #0xe000
	mov r0, r0, lsr #0xd
	str r0, [r4, #0x14]
	ldrb r0, [ip, #0x48]
	ldr r2, _0211CD7C ; =OVERLAY21_BSS_021242C0
	mov r3, #0
	strb r0, [sp, #1]
	ldrb lr, [sp, #1]
	ldr r0, _0211CD80 ; =MAIN_BSS_0208F304
	mov r1, #0x3c
	strb lr, [r4, #0x18]
	ldrb ip, [ip, #0x4a]
	strb lr, [sp, #3]
	strb ip, [sp]
	ldrb ip, [sp]
	strb ip, [r4, #0x19]
	str r3, [r2]
	str r3, [r4, #0xc]
	str r3, [r4, #0x10]
	ldr r0, [r0]
	strb ip, [sp, #2]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	mov r0, #0x260
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211CD38
	ldr r1, _0211CD80 ; =MAIN_BSS_0208F304
	ldr r1, [r1]
	bl ov21_0211D330
	arm_func_end ov21_0211CCA8
_0211CD38:
	ldr r1, _0211CD80 ; =MAIN_BSS_0208F304
	str r0, [r4, #8]
	ldr r0, [r1]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, _0211CD80 ; =MAIN_BSS_0208F304
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211CD7C: .word OVERLAY21_BSS_021242C0
_0211CD80: .word MAIN_BSS_0208F304

	arm_func_start ov21_0211CD84
ov21_0211CD84: ; 0x0211CD84
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _0211CDB4
	beq _0211CDAC
	mov r0, r5
	bl ov21_0211D390
	mov r0, r5
	bl sub_02001470
	arm_func_end ov21_0211CD84
_0211CDAC:
	mov r0, #0
	str r0, [r4, #8]
_0211CDB4:
	ldr r0, _0211CE58 ; =MAIN_BSS_0208F304
	mov r1, #0x1e
	ldr r0, [r0]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008DB4
	ldr r0, _0211CE5C ; =0x04000048
	ldrb r1, [r4, #0x18]
	ldrh r2, [r0]
	mov r0, r1, lsl #0x1a
	movs r0, r0, lsr #0x1f
	mov r1, r1, lsl #0x1b
	bic r2, r2, #0x3f
	orr r1, r2, r1, lsr #27
	ldr r0, _0211CE5C ; =0x04000048
	orrne r1, r1, #0x20
	strh r1, [r0]
	ldrh r2, [r0, #2]
	ldrb r1, [r4, #0x19]
	bic r2, r2, #0x3f
	mov r0, r1, lsl #0x1a
	mov r1, r1, lsl #0x1b
	movs r0, r0, lsr #0x1f
	orr r1, r2, r1, lsr #27
	ldr r0, _0211CE60 ; =0x0400004A
	orrne r1, r1, #0x20
	strh r1, [r0]
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, [r4, #0x14]
	bic r1, r1, #0xe000
	orr r0, r1, r0, lsl #13
	str r0, [r2]
	ldr r1, [r4, #0x1c]
	mov r0, #2
	bl sub_020648C4
	mov r0, #2
	bl NitroSDK_os_OS_EnableIrqMask
	mov r0, #1
	bl sub_02061414
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211CE58: .word MAIN_BSS_0208F304
_0211CE5C: .word 0x04000048
_0211CE60: .word 0x0400004A

	arm_func_start ov21_0211CE64
ov21_0211CE64: ; 0x0211CE64
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #8]
	bl ov21_0212004C
	ldr r1, [r4, #8]
	ldr r0, _0211CFA4 ; =OVERLAY21_BSS_021242C0
	ldr r3, [r1, #0x78]
	ldr r2, [r1, #0x7c]
	mov r1, r3, asr #0xc
	str r1, [r0]
	ldr r0, [r4, #0x10]
	str r3, [sp]
	str r2, [sp, #4]
	cmp r0, #0
	beq _0211CEB8
	cmp r0, #1
	beq _0211CF04
	cmp r0, #2
	beq _0211CF58
	b _0211CF98
	arm_func_end ov21_0211CE64
_0211CEB8:
	ldr r0, _0211CFA8 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CF98
	ldr r0, _0211CFA8 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CF98
	mov r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0xc]
	b _0211CF98
_0211CF04:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x34]
	cmp r0, #3
	bne _0211CF98
	mov r1, #2
	ldr r0, _0211CFA8 ; =MAIN_BSS_0208F304
	str r1, [r4, #0x10]
	ldr r0, [r0]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x14
	bl sub_0200E0E0
	ldr r0, _0211CFA8 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0x14
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	b _0211CF98
_0211CF58:
	ldr r0, _0211CFA8 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CF98
	ldr r0, _0211CFA8 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #6
	ldmeqia sp!, {r4, pc}
_0211CF98:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CFA4: .word OVERLAY21_BSS_021242C0
_0211CFA8: .word MAIN_BSS_0208F304

	arm_func_start ov21_0211CFAC
ov21_0211CFAC: ; 0x0211CFAC
	ldr ip, _0211CFB8 ; =ov21_021203A8
	ldr r0, [r0, #8]
	bx ip
	.align 2, 0
_0211CFB8: .word ov21_021203A8
	arm_func_end ov21_0211CFAC

	arm_func_start ov21_0211CFBC
ov21_0211CFBC: ; 0x0211CFBC
	ldr ip, _0211CFC8 ; =ov21_02120490
	ldr r0, [r0, #8]
	bx ip
	.align 2, 0
_0211CFC8: .word ov21_02120490
	arm_func_end ov21_0211CFBC

	arm_func_start ov21_0211CFCC
ov21_0211CFCC: ; 0x0211CFCC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007D98
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov21_021204B0
	ldmia sp!, {r4, pc}
	arm_func_end ov21_0211CFCC

	arm_func_start ov21_0211CFEC
ov21_0211CFEC: ; 0x0211CFEC
	mov r0, #0x16
	bx lr
	arm_func_end ov21_0211CFEC

	arm_func_start ov21_0211CFF4
ov21_0211CFF4: ; 0x0211CFF4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	str r4, [r5, #4]
	strb r2, [r5, #9]
	ldr lr, [sp, #0x10]
	str r3, [r5, #0xc]
	mov r1, r2
	mov r2, r3
	ldr ip, [sp, #0x14]
	str lr, [r5, #0x10]
	mov r0, r4
	mov r3, lr
	str ip, [sp]
	bl sub_0200F4FC
	str r0, [r5]
	ldr r0, [r4, #0x24]
	strb r0, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov21_0211CFF4

	arm_func_start ov21_0211D040
ov21_0211D040: ; 0x0211D040
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	str r1, [r4]
	ldrb lr, [r1, #9]
	ldrsh r0, [sp, #0x14]
	mov ip, #0
	strb lr, [r4, #5]
	add lr, lr, #1
	strb lr, [r4, #6]
	strb ip, [r4, #4]
	str r0, [sp]
	ldr r0, [r1]
	mov r1, r2
	mov r2, r3
	ldrsh r3, [sp, #0x10]
	bl sub_0200EBF4
	ldrb r0, [sp, #0x18]
	strb r0, [r4, #8]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov21_0211D040

	arm_func_start ov21_0211D094
ov21_0211D094: ; 0x0211D094
	ldr r0, [r0]
	ldr ip, _0211D0A4 ; =FUN_0200EB84
	ldr r0, [r0]
	bx ip
	.align 2, 0
_0211D0A4: .word sub_0200EB84
	arm_func_end ov21_0211D094

	arm_func_start ov21_0211D0A8
ov21_0211D0A8: ; 0x0211D0A8
	ldr r0, [r0, #0xc]
	bx lr
	arm_func_end ov21_0211D0A8

	arm_func_start ov21_0211D0B0
ov21_0211D0B0: ; 0x0211D0B0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, [r7]
	ldrb r5, [r7, #6]
	mov r6, r1
	ldrb r1, [r4, #8]
	ldr r0, [r4, #4]
	mov r2, r5
	bl sub_0200F628
	strb r5, [r4, #9]
	strb r6, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov21_0211D0B0

	arm_func_start ov21_0211D0E0
ov21_0211D0E0: ; 0x0211D0E0
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r6, [r4]
	ldr r0, [r6]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	bne _0211D128
	ldrb r5, [r4, #5]
	ldrb r1, [r6, #8]
	ldr r0, [r6, #4]
	mov r2, r5
	bl sub_0200F628
	strb r5, [r6, #9]
	mov r0, #0
	strb r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov21_0211D0E0
_0211D128:
	bl sub_0200EB84
	cmp r0, #0
	beq _0211D148
	mov r0, #0x18
	strb r0, [r4, #9]
	mov r0, #1
	str r0, [r4, #0xc]
	b _0211D180
_0211D148:
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0200EBBC
	cmp r0, #0
	beq _0211D180
	ldrb r0, [r4, #9]
	sub r0, r0, #1
	strb r0, [r4, #9]
	tst r0, #0xff
	bne _0211D180
	mov r0, #4
	strb r0, [r4, #9]
	mov r0, #1
	str r0, [r4, #0xc]
_0211D180:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0211D1A0
	cmp r0, #1
	beq _0211D224
	cmp r0, #2
	beq _0211D284
	ldmia sp!, {r4, r5, r6, pc}
_0211D1A0:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0211D1DC
	sub r0, r0, #1
	strb r0, [r4, #4]
	tst r0, #0xff
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r5, [r4]
	ldrb r4, [r4, #5]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	mov r2, r4
	bl sub_0200F628
	strb r4, [r5, #9]
	ldmia sp!, {r4, r5, r6, pc}
_0211D1DC:
	ldr r0, [r4, #0x10]
	ldr r5, [r4]
	cmp r0, #0
	bne _0211D208
	ldrb r4, [r4, #6]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	mov r2, r4
	bl sub_0200F628
	strb r4, [r5, #9]
	ldmia sp!, {r4, r5, r6, pc}
_0211D208:
	ldrb r4, [r4, #5]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	mov r2, r4
	bl sub_0200F628
	strb r4, [r5, #9]
	ldmia sp!, {r4, r5, r6, pc}
_0211D224:
	ldrb r0, [r4, #4]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r4, #4]
	ldmneia sp!, {r4, r5, r6, pc}
	bl sub_0201001C
	ldr r0, [r0]
	ldr r5, [r4]
	tst r0, #8
	beq _0211D268
	ldrb r4, [r4, #6]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	mov r2, r4
	bl sub_0200F628
	strb r4, [r5, #9]
	ldmia sp!, {r4, r5, r6, pc}
_0211D268:
	ldrb r4, [r4, #5]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	mov r2, r4
	bl sub_0200F628
	strb r4, [r5, #9]
	ldmia sp!, {r4, r5, r6, pc}
_0211D284:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0211D2E8
	sub r0, r0, #1
	strb r0, [r4, #4]
	ands r0, r0, #0xff
	bne _0211D2C0
	ldr r5, [r4]
	ldrb r4, [r4, #5]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	mov r2, r4
	bl sub_0200F628
	strb r4, [r5, #9]
	ldmia sp!, {r4, r5, r6, pc}
_0211D2C0:
	cmp r0, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r5, [r4]
	ldrb r4, [r4, #7]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	mov r2, r4
	bl sub_0200F628
	strb r4, [r5, #9]
	ldmia sp!, {r4, r5, r6, pc}
_0211D2E8:
	ldr r0, [r4, #0x10]
	ldr r5, [r4]
	cmp r0, #0
	bne _0211D314
	ldrb r4, [r4, #6]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	mov r2, r4
	bl sub_0200F628
	strb r4, [r5, #9]
	ldmia sp!, {r4, r5, r6, pc}
_0211D314:
	ldrb r4, [r4, #5]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	mov r2, r4
	bl sub_0200F628
	strb r4, [r5, #9]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov21_0211D330
ov21_0211D330: ; 0x0211D330
	stmdb sp!, {r4, lr}
	mov r4, r0
	add ip, r4, #0x170
	add r0, r4, #0x24c
	mov r3, #0
	mov r2, #1
	arm_func_end ov21_0211D330
_0211D348:
	str r3, [ip]
	strb r3, [ip, #4]
	str r3, [ip, #0xc]
	str r2, [ip, #0x10]
	add ip, ip, #0x14
	cmp ip, r0
	blo _0211D348
	add r0, r1, #0x1000
	str r1, [r4]
	ldr r1, [r0, #0x494]
	mov r0, r4
	str r1, [r4, #0x20]
	str r3, [r4, #0x10]
	str r3, [r4, #0x24]
	str r3, [r4, #0x28]
	bl ov21_0211D824
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov21_0211D390
ov21_0211D390: ; 0x0211D390
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _0211D820 ; =0x04000048
	mov r4, #0
	ldrh r2, [r3]
	mov r1, #0x4000000
	mov r5, r0
	bic r0, r2, #0x3f
	orr r0, r0, #0x3f
	strh r0, [r3]
	ldrh r0, [r3]
	bic r0, r0, #0x3f00
	orr r0, r0, #0x3f00
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #0x3f
	orr r0, r0, #0x3f
	strh r0, [r3, #2]
	str r4, [r3, #-0x38]
	str r4, [r3, #-0x30]
	str r4, [r3, #-0x2c]
	ldr r0, [r1]
	bic r0, r0, #0xe000
	str r0, [r1]
	strh r4, [r1, #0x50]
	ldr r1, [r5, #0x250]
	cmp r1, #0
	beq _0211D47C
	ldr r0, [r1, #4]
	cmp r0, #0
	bls _0211D448
	mov r6, r4
	arm_func_end ov21_0211D390
_0211D40C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211D434
	bl sub_0200147C
	ldr r0, [r5, #0x250]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211D434:
	ldr r1, [r5, #0x250]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211D40C
_0211D448:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211D464
	bl sub_0200147C
	ldr r0, [r5, #0x250]
	mov r1, #0
	str r1, [r0, #8]
_0211D464:
	ldr r0, [r5, #0x250]
	cmp r0, #0
	beq _0211D47C
	bl sub_02001470
	mov r0, #0
	str r0, [r5, #0x250]
_0211D47C:
	ldr r1, [r5, #0x254]
	cmp r1, #0
	beq _0211D50C
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211D4D8
	mov r6, r4
_0211D49C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211D4C4
	bl sub_0200147C
	ldr r0, [r5, #0x254]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211D4C4:
	ldr r1, [r5, #0x254]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211D49C
_0211D4D8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211D4F4
	bl sub_0200147C
	ldr r0, [r5, #0x254]
	mov r1, #0
	str r1, [r0, #8]
_0211D4F4:
	ldr r0, [r5, #0x254]
	cmp r0, #0
	beq _0211D50C
	bl sub_02001470
	mov r0, #0
	str r0, [r5, #0x254]
_0211D50C:
	ldr r1, [r5, #0x258]
	cmp r1, #0
	beq _0211D59C
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211D568
	mov r6, r4
_0211D52C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211D554
	bl sub_0200147C
	ldr r0, [r5, #0x258]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211D554:
	ldr r1, [r5, #0x258]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211D52C
_0211D568:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211D584
	bl sub_0200147C
	ldr r0, [r5, #0x258]
	mov r1, #0
	str r1, [r0, #8]
_0211D584:
	ldr r0, [r5, #0x258]
	cmp r0, #0
	beq _0211D59C
	bl sub_02001470
	mov r0, #0
	str r0, [r5, #0x258]
_0211D59C:
	ldr r1, [r5, #0x25c]
	cmp r1, #0
	beq _0211D62C
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211D5F8
	mov r6, r4
_0211D5BC:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211D5E4
	bl sub_0200147C
	ldr r0, [r5, #0x25c]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211D5E4:
	ldr r1, [r5, #0x25c]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211D5BC
_0211D5F8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211D614
	bl sub_0200147C
	ldr r0, [r5, #0x25c]
	mov r1, #0
	str r1, [r0, #8]
_0211D614:
	ldr r0, [r5, #0x25c]
	cmp r0, #0
	beq _0211D62C
	bl sub_02001470
	mov r0, #0
	str r0, [r5, #0x25c]
_0211D62C:
	ldr r4, [r5, #0x10]
	cmp r4, #0
	beq _0211D654
	beq _0211D64C
	mov r0, r4
	bl ov21_02122720
	mov r0, r4
	bl sub_02001470
_0211D64C:
	mov r0, #0
	str r0, [r5, #0x10]
_0211D654:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0211D678
	beq _0211D670
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_0211D670:
	mov r0, #0
	str r0, [r5, #0x14]
_0211D678:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0211D69C
	beq _0211D694
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_0211D694:
	mov r0, #0
	str r0, [r5, #0x18]
_0211D69C:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0211D6C0
	beq _0211D6B8
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_0211D6B8:
	mov r0, #0
	str r0, [r5, #0x1c]
_0211D6C0:
	ldr r4, [r5, #0x80]
	cmp r4, #0
	beq _0211D6E8
	beq _0211D6E0
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl sub_02001470
_0211D6E0:
	mov r0, #0
	str r0, [r5, #0x80]
_0211D6E8:
	mov r6, #0
	mov r4, r6
_0211D6F0:
	add r0, r5, r6, lsl #2
	ldr r7, [r0, #0x84]
	cmp r7, #0
	beq _0211D71C
	beq _0211D714
	mov r0, r7
	bl sub_0200ED2C
	mov r0, r7
	bl sub_02001470
_0211D714:
	add r0, r5, r6, lsl #2
	str r4, [r0, #0x84]
_0211D71C:
	add r6, r6, #1
	cmp r6, #3
	blt _0211D6F0
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _0211D750
	beq _0211D748
	mov r0, r4
	bl sub_0201CAF0
	mov r0, r4
	bl sub_02001470
_0211D748:
	mov r0, #0
	str r0, [r5, #4]
_0211D750:
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0211D778
	beq _0211D770
	mov r0, r4
	bl ov21_021220A4
	mov r0, r4
	bl sub_02001470
_0211D770:
	mov r0, #0
	str r0, [r5, #8]
_0211D778:
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _0211D7A0
	beq _0211D798
	mov r0, r4
	bl sub_0202A2EC
	mov r0, r4
	bl sub_02001470
_0211D798:
	mov r0, #0
	str r0, [r5, #0xc]
_0211D7A0:
	ldr r4, [r5, #0x10]
	cmp r4, #0
	beq _0211D7C8
	beq _0211D7C0
	mov r0, r4
	bl ov21_02122720
	mov r0, r4
	bl sub_02001470
_0211D7C0:
	mov r0, #0
	str r0, [r5, #0x10]
_0211D7C8:
	ldr r4, [r5, #0x24]
	cmp r4, #0
	beq _0211D7F0
	beq _0211D7E8
	mov r0, r4
	bl sub_0200C3A8
	mov r0, r4
	bl sub_02001470
_0211D7E8:
	mov r0, #0
	str r0, [r5, #0x24]
_0211D7F0:
	ldr r4, [r5, #0x28]
	cmp r4, #0
	beq _0211D818
	beq _0211D810
	mov r0, r4
	bl sub_0200C3A8
	mov r0, r4
	bl sub_02001470
_0211D810:
	mov r0, #0
	str r0, [r5, #0x28]
_0211D818:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211D820: .word 0x04000048

	arm_func_start ov21_0211D824
ov21_0211D824: ; 0x0211D824
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0211D8D0 ; =OVERLAY21_BSS_021242C4
	mov r2, #0
	mov r4, r0
	str r2, [r1]
	str r2, [r4, #0x30]
	str r2, [r4, #0x34]
	strh r2, [r4, #0x6c]
	str r2, [r4, #0x70]
	str r2, [r4, #0x3c]
	mov r1, #3
	str r1, [r4, #0x40]
	str r2, [r4, #0x64]
	str r2, [r4, #0x74]
	str r2, [r4, #0x78]
	str r2, [r4, #0x7c]
	bl ov21_0211D8D4
	mov r0, r4
	bl ov21_0211DBA0
	mov r0, r4
	bl ov21_0211E14C
	mov r0, r4
	bl ov21_0211E600
	mov r0, r4
	bl ov21_0211E7D8
	mov r0, #0x28
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211D8A0
	bl sub_0202A2AC
	arm_func_end ov21_0211D824
_0211D8A0:
	str r0, [r4, #0xc]
	mov r0, #0xf0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r1, #0x3c0
	mov r2, #0
	mov r3, #0xf
	bl sub_0202A32C
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D8D0: .word OVERLAY21_BSS_021242C4

	arm_func_start ov21_0211D8D4
ov21_0211D8D4: ; 0x0211D8D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	ldr r1, _0211D94C ; =0x04001010
	str r2, [r4, #0x68]
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	mov r0, #0x4c
	str r2, [r1, #0xc]
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211D910
	ldr r1, [r4]
	bl ov21_0212208C
	arm_func_end ov21_0211D8D4
_0211D910:
	str r0, [r4, #8]
	bl ov21_02122214
	mov r0, #0x7c
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211D92C
	bl sub_0201CA6C
_0211D92C:
	str r0, [r4, #4]
	bl sub_0201CB0C
	mov r2, #0
	ldrh r1, [r4, #0x6c]
	ldr r0, [r4, #4]
	mov r3, r2
	bl sub_0201CE00
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211D94C: .word 0x04001010

	arm_func_start ov21_0211D950
ov21_0211D950: ; 0x0211D950
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r0, #0x64
	bl MemoryAlloc_Thunk1
	movs r6, r0
	beq _0211D974
	bl sub_0201FC80
	mov r6, r0
	arm_func_end ov21_0211D950
_0211D974:
	mov r0, r6
	mov r1, #1
	bl sub_02020328
	ldr r1, _0211DAA8 ; =s_interface_overlay_21_02122d40
	ldr r2, _0211DAAC ; =s_i059_overlay_21_02122d4c
	mov r0, r6
	bl sub_0202048C
	mov r2, #0
	ldr r1, _0211DAB0 ; =s_i059_00_overlay_21_02122d54
	mov r0, r6
	mov r3, r2
	str r2, [sp]
	bl sub_020204DC
	mov r2, #0
	mov r5, r0
	ldr r1, _0211DAB0 ; =s_i059_00_overlay_21_02122d54
	mov r0, r6
	mov r3, r2
	str r2, [sp]
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	mov r8, r0
	str r2, [sp, #4]
	ldr r1, _0211DAB0 ; =s_i059_00_overlay_21_02122d54
	mov r0, r6
	mov r3, r2
	str r2, [sp, #8]
	bl sub_020205DC
	mov r4, r0
	mov r0, r6
	bl sub_020204A8
	mov r0, r6
	bl sub_0201FD24
	ldr r0, [r7]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b4]
	bl sub_02019278
	mov r7, r0
	add r8, r8, r7, lsl #5
	mov r0, r8
	mov r1, #0x20
	bl DC_FlushRange
	mov r0, r8
	mov r1, #0xc0
	mov r2, #0x20
	bl NitroSDK_gx_GX_LoadBGPltt
	add r0, r7, #1
	add r5, r5, r0, lsl #8
	mov r0, r5
	mov r1, #0x100
	bl DC_FlushRange
	mov r0, r5
	mov r1, #0
	mov r2, #0x100
	bl NitroSDK_gx_GX_LoadBG1Char
	bl sub_02062744
	add r1, r0, #0x500
	add r0, r4, #0x600
	mov r2, #0xc0
	bl sub_02067E7C
	bl sub_02062744
	mov r1, r0
	add r0, r4, #0x740
	add r1, r1, #0x5c0
	mov r2, #0x40
	bl sub_02067E7C
	cmp r6, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl sub_0201FCB4
	mov r0, r6
	bl sub_02001470
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211DAA8: .word s_interface_overlay_21_02122d40
_0211DAAC: .word s_i059_overlay_21_02122d4c
_0211DAB0: .word s_i059_00_overlay_21_02122d54

	arm_func_start ov21_0211DAB4
ov21_0211DAB4: ; 0x0211DAB4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0xc
	mov r5, r1
	bl MemoryAlloc_Thunk1
	mov r4, r0
	mov r0, #0xb8
	bl MemoryAlloc_Thunk1
	movs r7, r0
	beq _0211DAE8
	mov r1, r5
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r7, r0
	arm_func_end ov21_0211DAB4
_0211DAE8:
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
	bls _0211DB80
_0211DB20:
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
	blo _0211DB20
_0211DB80:
	cmp r7, #0
	beq _0211DB98
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211DB98:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start ov21_0211DBA0
ov21_0211DBA0: ; 0x0211DBA0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r1, _0211E12C ; =s_data_message_etc_menu_mes_overlay_21_02122d5c
	mov sl, r0
	bl ov21_0211DAB4
	str r0, [sl, #0x250]
	ldr r1, _0211E130 ; =s_data_message_etc_pokebook_info_overlay_21_02122d78
	mov r0, sl
	bl ov21_0211DAB4
	str r0, [sl, #0x254]
	ldr r1, _0211E134 ; =s_data_message_etc_assist_mes_overlay_21_02122d98
	mov r0, sl
	bl ov21_0211DAB4
	str r0, [sl, #0x258]
	ldr r1, _0211E138 ; =s_data_message_etc_fieldwaza_name_overlay_21_02122db4
	mov r0, sl
	bl ov21_0211DAB4
	str r0, [sl, #0x25c]
	ldr r0, [sl, #0x20]
	bl sub_0200C3D0
	ldr r0, [sl, #0x20]
	mov r1, #0
	mov r2, #0x1e
	mov r3, #4
	bl sub_0200C408
	ldr r0, [sl, #0x20]
	mov r1, #0x10
	bl sub_0200C680
	mov r8, #0
	mov r7, #4
	mov sb, r8
	mov r6, #6
	mov r5, r8
	mov r4, #2
	mov fp, #0x12
	arm_func_end ov21_0211DBA0
_0211DC2C:
	stmia sp, {r6, sb}
	str r7, [sp, #8]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldr r0, [sl, #0x20]
	mov r1, r8
	mov r2, fp
	mov r3, r4
	bl sub_0200C6C8
	add r8, r8, #1
	cmp r8, #0x10
	add r7, r7, #0x24
	add sb, sb, #2
	blt _0211DC2C
	ldr r2, _0211E13C ; =0x04000008
	mov r0, #0x44
	ldrh r1, [r2]
	and r1, r1, #0x43
	orr r1, r1, #0xe10
	orr r1, r1, #0x5000
	strh r1, [r2]
	bl MemoryAlloc_Thunk1
	movs r4, r0
	beq _0211DCB8
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r5, [r0, #0x4b0]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4ac]
	mov r0, r4
	mov r2, r5
	add r1, r1, #0x14
	bl sub_0200C38C
	mov r4, r0
_0211DCB8:
	mov r0, r4
	mov r1, #1
	mov r2, #6
	mov r3, #0
	str r4, [sl, #0x24]
	bl sub_0200C408
	bl sub_020626F0
	add r1, r0, #0x800
	mov r0, #0
	mov r2, #0x800
	bl NitroSDK_mi_MIi_CpuClearFast
	mov r0, #0x44
	bl MemoryAlloc_Thunk1
	movs r4, r0
	beq _0211DD20
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r5, [r0, #0x4b0]
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r1, [r0, #0x4ac]
	mov r0, r4
	mov r2, r5
	add r1, r1, #0xc
	bl sub_0200C38C
	mov r4, r0
_0211DD20:
	mov r0, r4
	mov r1, #1
	mov r2, #6
	mov r3, #0
	str r4, [sl, #0x28]
	bl sub_0200C408
	ldr r1, _0211E140 ; =0x0400000A
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0x4600
	strh r0, [r1]
	bl sub_02062744
	add r1, r0, #0x800
	mov r0, #0
	mov r2, #0x800
	bl NitroSDK_mi_MIi_CpuClearFast
	mov r0, sl
	bl ov21_0211D950
	ldr r0, [sl, #0x24]
	mov r1, #6
	bl sub_0200C680
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x22
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sl, #0x24]
	mov r2, #0xb
	mov r3, #0xa
	bl sub_0200C6C8
	mov r1, #4
	str r1, [sp]
	mov r3, #2
	str r3, [sp, #4]
	mov r0, #0x8e
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [sl, #0x24]
	mov r2, #0xb
	bl sub_0200C6C8
	mov r0, #0x11
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	mov r0, #0xa4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [sl, #0x24]
	mov r1, #1
	mov r2, #8
	bl sub_0200C6C8
	mov r0, #4
	str r0, [sp]
	mov r0, #0x22
	str r0, [sp, #4]
	mov r0, #0xb4
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sl, #0x24]
	mov r2, #8
	mov r3, r1
	bl sub_0200C6C8
	mov r0, #5
	str r0, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r0, #0xc4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r0, [sl, #0x24]
	mov r1, #3
	mov r2, #9
	bl sub_0200C6C8
	mov r0, #9
	str r0, [sp]
	mov r0, #0x2f
	str r0, [sp, #4]
	mov r0, #0xd6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r0, [sl, #0x24]
	mov r1, #5
	mov r2, #0xe
	bl sub_0200C6C8
	ldr r0, [sl, #0x28]
	mov r1, #1
	bl sub_0200C680
	mov r3, #2
	str r3, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r0, #0xf2
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [sl, #0x28]
	mov r2, #0x1c
	bl sub_0200C6C8
	bl sub_02062744
	mov r1, #0x15
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, #0xf2
	str r1, [sp, #8]
	mov r1, #0xf
	str r1, [sp, #0xc]
	mov r1, #0x1c
	mov r2, #2
	mov r3, r2
	bl NitroSystem_g2d_CharCanvas_NNS_G2dMapScrToCharText
	mov r0, #5
	str r0, [sp]
	ldr r1, [sl, #0x254]
	ldr r0, _0211E144 ; =DAT_overlay_21_02122c10
	ldr r2, [r1, #8]
	ldr r1, [r0, #0x88]
	mov r0, #1
	add r1, r2, r1, lsl #3
	ldr r2, [r1, #4]
	mov r1, #0
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sl, #0x24]
	mov r2, #4
	mov r3, #3
	bl sub_0200C7A4
	mov r0, #5
	str r0, [sp]
	ldr r1, [sl, #0x254]
	ldr r0, _0211E144 ; =DAT_overlay_21_02122c10
	ldr r2, [r1, #8]
	ldr r1, [r0, #0x98]
	mov r0, #1
	add r1, r2, r1, lsl #3
	ldr r2, [r1, #4]
	mov r1, #0
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sl, #0x24]
	mov r2, #4
	mov r3, #0x17
	bl sub_0200C7A4
	mov r0, #5
	str r0, [sp]
	ldr r1, [sl, #0x254]
	ldr r0, _0211E144 ; =DAT_overlay_21_02122c10
	ldr r2, [r1, #8]
	ldr r1, [r0, #0xa8]
	mov r0, #1
	add r1, r2, r1, lsl #3
	ldr r2, [r1, #4]
	mov r1, #0
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sl, #0x24]
	mov r2, #4
	mov r3, #0x2b
	bl sub_0200C7A4
	mov r0, #5
	str r0, [sp]
	ldr r1, [sl, #0x254]
	ldr r0, _0211E144 ; =DAT_overlay_21_02122c10
	ldr r2, [r1, #8]
	ldr r1, [r0, #0xb8]
	mov r0, #1
	add r1, r2, r1, lsl #3
	ldr r2, [r1, #4]
	mov r1, #0
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sl, #0x24]
	mov r2, #4
	mov r3, #0x3f
	bl sub_0200C7A4
	mov r0, #5
	str r0, [sp]
	ldr r0, [sl, #0x254]
	ldr r1, [sl, #0x40]
	ldr r3, [r0, #8]
	ldr r0, _0211E148 ; =DAT_overlay_21_02122c98
	mov r2, #1
	ldr r1, [r0, r1, lsl #4]
	mov r0, #0
	add r1, r3, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #4
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sl, #0x24]
	mov r2, r1
	mov r3, #3
	bl sub_0200C7A4
	mov r0, #5
	str r0, [sp]
	ldr r0, [sl, #0x254]
	mov r1, #1
	ldr r0, [r0, #8]
	mov r2, #0
	ldr r0, [r0, #0x14]
	mov r3, #2
	stmib sp, {r0, r1, r2}
	ldr r0, [sl, #0x24]
	bl sub_0200C7A4
	mov r0, #5
	str r0, [sp]
	ldr r0, [sl, #0x254]
	mov r1, #2
	ldr r2, [r0, #8]
	mov r0, #1
	ldr r3, [r2, #0x14]
	mov r2, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [sl, #0x24]
	mov r3, r1
	bl sub_0200C7A4
	mov r0, #5
	str r0, [sp]
	ldr r0, [sl, #0x254]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r2, #1
	ldr r3, [r0, #0xac]
	mov r0, #0
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sl, #0x24]
	mov r3, r1
	mov r2, #4
	bl sub_0200C7A4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211E12C: .word s_data_message_etc_menu_mes_overlay_21_02122d5c
_0211E130: .word s_data_message_etc_pokebook_info_overlay_21_02122d78
_0211E134: .word s_data_message_etc_assist_mes_overlay_21_02122d98
_0211E138: .word s_data_message_etc_fieldwaza_name_overlay_21_02122db4
_0211E13C: .word 0x04000008
_0211E140: .word 0x0400000A
_0211E144: .word DAT_overlay_21_02122c10
_0211E148: .word DAT_overlay_21_02122c98

	arm_func_start ov21_0211E14C
ov21_0211E14C: ; 0x0211E14C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov lr, #0x4000000
	ldr r1, [lr]
	mov r5, r0
	bic r1, r1, #0x1f00
	orr r1, r1, #0x1f00
	str r1, [lr]
	ldr r3, [lr]
	ldr r1, _0211E5D0 ; =0xFFCFFFEF
	mov ip, #0
	and r0, r3, r1
	orr r0, r0, #0x10
	str r0, [lr]
	str ip, [lr, #0x10]
	str ip, [lr, #0x14]
	str ip, [lr, #0x18]
	str ip, [lr, #0x1c]
	ldrh r0, [lr, #0xc]
	ldr r2, _0211E5D4 ; =0x00005C04
	mov r4, #0x80
	and r0, r0, #0x43
	orr r0, r0, #4
	orr r0, r0, #0x5c00
	strh r0, [lr, #0xc]
	sub r1, r2, #0x200
	ldrh r2, [lr, #0xe]
	ldr r3, _0211E5D8 ; =s_mb000_overlay_21_02122de8
	ldr r0, _0211E5DC ; =s_menu_overlay_21_02122dd4
	and r2, r2, #0x43
	orr r1, r2, r1
	strh r1, [lr, #0xe]
	ldrh r6, [lr, #0xa]
	ldr r1, _0211E5E0 ; =s_mb000_bg_overlay_21_02122ddc
	mov r2, #2
	bic r6, r6, #3
	strh r6, [lr, #0xa]
	ldrh r6, [lr, #8]
	bic r6, r6, #3
	orr r6, r6, #1
	strh r6, [lr, #8]
	ldrh r6, [lr, #0xc]
	bic r6, r6, #3
	orr r6, r6, #2
	strh r6, [lr, #0xc]
	ldrh r6, [lr, #0xe]
	bic r6, r6, #3
	orr r6, r6, #3
	strh r6, [lr, #0xe]
	str r4, [sp]
	stmib sp, {r3, ip}
	bl sub_02020804
	mov r4, #0
	str r4, [sp]
	mov r0, #0x80
	stmib sp, {r0, r4}
	ldr r0, _0211E5DC ; =s_menu_overlay_21_02122dd4
	ldr r1, _0211E5E0 ; =s_mb000_bg_overlay_21_02122ddc
	ldr r3, _0211E5E4 ; =s_mb000_03_overlay_21_02122df0
	mov r2, #2
	str r4, [sp, #0xc]
	bl sub_02020FF0
	str r4, [sp]
	mov r0, #0x80
	stmib sp, {r0, r4}
	ldr r0, _0211E5DC ; =s_menu_overlay_21_02122dd4
	ldr r1, _0211E5E0 ; =s_mb000_bg_overlay_21_02122ddc
	ldr r3, _0211E5E8 ; =s_mb000_02_overlay_21_02122dfc
	mov r2, #3
	str r4, [sp, #0xc]
	bl sub_02020FF0
	bl sub_02062890
	mov r4, r0
	bl sub_02062890
	add r0, r0, #0xb80
	add r1, r4, #0xe00
	mov r2, #0x180
	bl sub_02067E7C
	bl sub_02062890
	mov r4, r0
	bl sub_02062890
	add r1, r4, #0xb80
	add r0, r0, #0x480
	mov r2, #0x180
	bl sub_02067E7C
	mov r0, #0x44
	mov r4, #2
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211E2D4
	ldr r3, [r5]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x34
	mov r3, #0
	bl sub_0200ECD0
	arm_func_end ov21_0211E14C
_0211E2D4:
	str r0, [r5, #0x80]
	add r1, r4, #0x64
	mov r0, #0x44
	and r4, r1, #0xff
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211E314
	ldr r2, [r5]
	mov r1, #0x40
	str r1, [sp]
	add r1, r2, #0x1000
	add r3, r2, #0x24
	ldr r2, [r1, #0x4a8]
	add r1, r3, r4, lsl #3
	mov r3, #0
	bl sub_0200ECD0
_0211E314:
	str r0, [r5, #0x84]
	mov r0, #0x44
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211E34C
	ldr r2, [r5]
	mov r1, #0x40
	str r1, [sp]
	add r1, r2, #0x1000
	add r3, r2, #0x24
	ldr r2, [r1, #0x4a8]
	add r1, r3, r4, lsl #3
	mov r3, #0
	bl sub_0200ECD0
_0211E34C:
	str r0, [r5, #0x88]
	mov r0, #0x44
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211E384
	ldr r2, [r5]
	mov r1, #0x40
	str r1, [sp]
	add r1, r2, #0x1000
	add r3, r2, #0x24
	ldr r2, [r1, #0x4a8]
	add r1, r3, r4, lsl #3
	mov r3, #0
	bl sub_0200ECD0
_0211E384:
	str r0, [r5, #0x8c]
	mov r4, #0
	str r4, [sp]
	ldr r0, [r5, #0x80]
	ldr r1, _0211E5EC ; =s_data_menu_overlay_21_02122e08
	ldr r2, _0211E5F0 ; =s_mb000_00_overlay_21_02122e14
	mov r3, #3
	bl sub_0200EE14
	add r4, r0, #0
	mov r0, r4, asr #4
	add r0, r4, r0, lsr #27
	mov r1, #6
	str r1, [sp]
	mov r0, r0, asr #5
	ldr r3, _0211E5F4 ; =0x000003FF
	add ip, r0, #3
	ldr r0, [r5, #0x84]
	ldr r1, _0211E5EC ; =s_data_menu_overlay_21_02122e08
	ldr r2, _0211E5F8 ; =s_mb000_01_overlay_21_02122e20
	and r3, ip, r3
	bl sub_0200EE14
	mov r1, #7
	add r4, r4, r0
	str r1, [sp]
	add ip, r1, #0x3f8
	ldr r0, [r5, #0x88]
	ldr r1, _0211E5EC ; =s_data_menu_overlay_21_02122e08
	ldr r2, _0211E5FC ; =s_ma000_01_overlay_21_02122e2c
	mov r3, r4, asr #4
	add r3, r4, r3, lsr #27
	mov r3, r3, asr #5
	add r3, r3, #3
	and r3, r3, ip
	bl sub_0200EE14
	add ip, r4, r0
	mov r0, #0xb
	str r0, [sp]
	add r4, r0, #0x3f4
	ldr r0, [r5, #0x8c]
	ldr r1, _0211E5EC ; =s_data_menu_overlay_21_02122e08
	ldr r2, _0211E5E8 ; =s_mb000_02_overlay_21_02122dfc
	mov r3, ip, asr #4
	add r3, ip, r3, lsr #27
	mov r3, r3, asr #5
	add r3, r3, #3
	and r3, r3, r4
	bl sub_0200EE14
	mov r0, #0x2d
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0xbc
	ldr r1, [r5, #0x80]
	mov r2, #0
	mov r3, #0xe0
	bl ov21_0211CFF4
	mov r0, #0x84
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	add r0, r5, #0xd0
	ldr r1, [r5, #0x80]
	mov r3, #0xe0
	bl ov21_0211CFF4
	mov r0, #0x4c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0x94
	ldr r1, [r5, #0x80]
	mov r2, #4
	mov r3, #0xe0
	bl ov21_0211CFF4
	mov r0, #0x64
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r1, [r5, #0x80]
	add r0, r5, #0xa8
	mov r2, #6
	mov r3, #0xe0
	bl ov21_0211CFF4
	mov r0, #0x10
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r1, [r5, #0x80]
	add r0, r5, #0xe4
	mov r2, #8
	mov r3, #0xb0
	bl ov21_0211CFF4
	mov r0, #0x91
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r1, [r5, #0x80]
	add r0, r5, #0x10c
	mov r2, #0xb
	mov r3, #0x54
	bl ov21_0211CFF4
	mov r0, #0x10
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r1, [r5, #0x80]
	add r0, r5, #0xf8
	mov r2, #9
	mov r3, #0x148
	bl ov21_0211CFF4
	mov r0, #0x88
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0x148
	ldr r1, [r5, #0x80]
	mov r2, #0x1a
	mov r3, #0x108
	bl ov21_0211CFF4
	mov r0, #0x88
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0x15c
	ldr r1, [r5, #0x80]
	mov r2, #0x1c
	mov r3, #0x1f8
	bl ov21_0211CFF4
	mov r0, #0x60
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0x120
	ldr r1, [r5, #0x80]
	mov r2, #0x12
	mov r3, #0x80
	bl ov21_0211CFF4
	mov r0, #0x60
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0x134
	ldr r1, [r5, #0x80]
	mov r2, #0x14
	mov r3, #0x180
	bl ov21_0211CFF4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211E5D0: .word 0xFFCFFFEF
_0211E5D4: .word 0x00005C04
_0211E5D8: .word s_mb000_overlay_21_02122de8
_0211E5DC: .word s_menu_overlay_21_02122dd4
_0211E5E0: .word s_mb000_bg_overlay_21_02122ddc
_0211E5E4: .word s_mb000_03_overlay_21_02122df0
_0211E5E8: .word s_mb000_02_overlay_21_02122dfc
_0211E5EC: .word s_data_menu_overlay_21_02122e08
_0211E5F0: .word s_mb000_00_overlay_21_02122e14
_0211E5F4: .word 0x000003FF
_0211E5F8: .word s_mb000_01_overlay_21_02122e20
_0211E5FC: .word s_ma000_01_overlay_21_02122e2c

	arm_func_start ov21_0211E600
ov21_0211E600: ; 0x0211E600
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov ip, #0
	mov r4, r0
	str ip, [sp]
	mov r2, #0x18
	str ip, [sp, #4]
	mov r3, r2
	add r0, r4, #0x198
	add r1, r4, #0xbc
	str ip, [sp, #8]
	bl ov21_0211D040
	mov ip, #0
	str ip, [sp]
	mov r2, #0x18
	str ip, [sp, #4]
	mov r3, r2
	add r0, r4, #0x1ac
	add r1, r4, #0xd0
	str ip, [sp, #8]
	bl ov21_0211D040
	mov r1, #0
	str r1, [sp]
	mov r2, #0x12
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r3, r2
	add r0, r4, #0x170
	add r1, r4, #0x94
	bl ov21_0211D040
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #0x12
	str r0, [sp, #8]
	add r0, r4, #0x184
	add r1, r4, #0xa8
	mov r3, r2
	bl ov21_0211D040
	mvn r0, #3
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r4, #0x1c0
	add r1, r4, #0xe4
	mov r2, #0x48
	mov r3, #0x10
	bl ov21_0211D040
	mov r2, #8
	strb r2, [r4, #0x1c5]
	mov r0, #0xa
	strb r0, [r4, #0x1c6]
	mov r0, #9
	strb r0, [r4, #0x1c7]
	ldr r5, [r4, #0x1c0]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	bl sub_0200F628
	mov r1, #8
	strb r1, [r5, #9]
	sub r0, r1, #0xc
	stmia sp, {r0, r1}
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0x1e8
	add r1, r4, #0x10c
	mov r2, #0x48
	mov r3, #0x10
	bl ov21_0211D040
	mvn r0, #3
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov ip, #0
	add r0, r4, #0x1d4
	add r1, r4, #0xf8
	mov r2, #0x48
	mov r3, #0x10
	str ip, [sp, #8]
	bl ov21_0211D040
	mov ip, #0
	str ip, [sp]
	mov r2, #0x10
	str ip, [sp, #4]
	mov r3, r2
	add r0, r4, #0x224
	add r1, r4, #0x148
	str ip, [sp, #8]
	bl ov21_0211D040
	mov ip, #0
	str ip, [sp]
	mov r2, #0x10
	str ip, [sp, #4]
	mov r3, r2
	add r0, r4, #0x238
	add r1, r4, #0x15c
	str ip, [sp, #8]
	bl ov21_0211D040
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r0, r4, #0x1fc
	add r1, r4, #0x120
	mov r3, r2
	bl ov21_0211D040
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r0, r4, #0x210
	add r1, r4, #0x134
	mov r3, r2
	bl ov21_0211D040
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov21_0211E600

	arm_func_start ov21_0211E7D8
ov21_0211E7D8: ; 0x0211E7D8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x8c0
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211E7F4
	bl ov21_021226C0
	arm_func_end ov21_0211E7D8
_0211E7F4:
	str r0, [r5, #0x10]
	mov r0, #0x90
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211E80C
	bl ov21_021215A8
_0211E80C:
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x80]
	mov r2, r5
	bl ov21_021215F8
	mov r0, #0x8c
	bl MemoryAlloc_Thunk1
	movs r4, r0
	beq _0211E834
	bl ov21_02121FBC
	mov r4, r0
_0211E834:
	str r4, [r5, #0x18]
	ldr r1, [r5, #0x80]
	mov r0, r4
	bl ov21_0212200C
	ldr r3, [r5, #0x40]
	ldr r1, _0211E8B0 ; =DAT_overlay_21_02122c10
	mov r0, r4
	mov r2, #4
	bl ov21_02120A00
	mov r0, #0x138
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211E86C
	bl ov21_02121C24
_0211E86C:
	str r0, [r5, #0x1c]
	ldr r2, [r5, #0x80]
	mov r3, r5
	add r1, r5, #0x84
	bl ov21_02121C74
	ldr r1, [r5, #0x40]
	mov r0, r5
	bl ov21_0211F584
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x3c]
	mov r0, r5
	mov r3, #0
	bl ov21_0211F394
	mov r0, r5
	mov r1, #0x12
	bl ov21_0211FF80
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211E8B0: .word DAT_overlay_21_02122c10

	arm_func_start ov21_0211E8B4
ov21_0211E8B4: ; 0x0211E8B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0211EB88
	ldr r0, [r4, #0x14]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	cmp r0, #0
	beq _0211E914
	ldr r1, [r4, #0x14]
	mov r0, r4
	ldr r1, [r1, #0x10]
	bl ov21_0211FFDC
	ldrh r1, [r4, #0x6c]
	cmp r1, r0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r4, pc}
	arm_func_end ov21_0211E8B4
_0211E914:
	add r0, r4, #0x198
	bl ov21_0211D0A8
	cmp r0, #0
	beq _0211E98C
	ldr r0, [r4, #0x14]
	bl ov21_02120F68
	cmp r0, #0
	beq _0211E964
	add r0, r4, #0x198
	mov r1, #4
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	mov r1, #1
	bl ov21_0211FD9C
	ldmia sp!, {r4, pc}
_0211E964:
	ldr r0, [r4, #0x14]
	bl ov21_02120D8C
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #0xfd
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211E98C:
	add r0, r4, #0x1ac
	bl ov21_0211D0A8
	cmp r0, #0
	beq _0211EA04
	ldr r0, [r4, #0x14]
	bl ov21_02120FD8
	cmp r0, #0
	beq _0211E9DC
	add r0, r4, #0x1ac
	mov r1, #4
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	mov r1, #1
	bl ov21_0211FD9C
	ldmia sp!, {r4, pc}
_0211E9DC:
	ldr r0, [r4, #0x14]
	bl ov21_02120DA0
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #0xfd
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211EA04:
	add r0, r4, #0x170
	bl ov21_0211D0A8
	cmp r0, #0
	beq _0211EA7C
	ldr r0, [r4, #0x14]
	bl ov21_02120DC8
	cmp r0, #0
	beq _0211EA54
	add r0, r4, #0x170
	mov r1, #4
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	mov r1, #0
	bl ov21_0211FD9C
	ldmia sp!, {r4, pc}
_0211EA54:
	ldr r0, [r4, #0x14]
	bl ov21_02120D5C
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #0xfd
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211EA7C:
	add r0, r4, #0x184
	bl ov21_0211D0A8
	cmp r0, #0
	beq _0211EAF4
	ldr r0, [r4, #0x14]
	bl ov21_02120E84
	cmp r0, #0
	beq _0211EACC
	add r0, r4, #0x184
	mov r1, #4
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	mov r1, #0
	bl ov21_0211FD9C
	ldmia sp!, {r4, pc}
_0211EACC:
	ldr r0, [r4, #0x14]
	bl ov21_02120D70
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #0xfd
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211EAF4:
	add r0, r4, #0x1c0
	bl ov21_0211D094
	cmp r0, #0
	beq _0211EB28
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	mov r2, #0
	bl ov21_0211F440
	ldmia sp!, {r4, pc}
_0211EB28:
	add r0, r4, #0x1e8
	bl ov21_0211D094
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x1e8
	mov r1, #8
	bl ov21_0211D0B0
	add r0, r4, #0x1fc
	mov r1, #8
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr r0, [r4]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0xa
	bl sub_0200E0E0
	mov r0, #2
	str r0, [r4, #0x34]
	ldmia sp!, {r4, pc}
_0211EB88:
	cmp r0, #1
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x18]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	cmp r0, #0
	beq _0211EBE0
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #4]
	ldr r1, [r1, r2, lsl #2]
	cmp r0, r1
	beq _0211EBE0
	mov r0, r4
	bl ov21_0211F584
	ldr r0, [r4]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_0211EBE0:
	ldr r0, [r4, #0x1c]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	cmp r0, #0
	beq _0211EC54
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x3c]
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #4]
	ldr r2, [r1, r2, lsl #2]
	cmp r0, r2
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0x40]
	mov r0, r4
	mov r3, #0
	bl ov21_0211F394
	ldr r1, [r4, #0x1c]
	mov r0, r4
	ldr r2, [r1, #4]
	ldr r1, [r1, #0x10]
	ldr r1, [r2, r1, lsl #2]
	bl ov21_0211F730
	ldr r0, [r4]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211EC54:
	add r0, r4, #0x224
	bl ov21_0211D0A8
	cmp r0, #0
	beq _0211ECD0
	add r0, r4, #0x224
	mov r1, #4
	bl ov21_0211D0B0
	ldr r0, [r4, #0x1c]
	bl ov21_02120DC8
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	ldr r3, [r0, #4]
	ldr r2, [r0, #0x10]
	mov r0, r4
	ldr r2, [r3, r2, lsl #2]
	mov r3, #0
	bl ov21_0211F394
	ldr r1, [r4, #0x1c]
	mov r0, r4
	ldr r2, [r1, #4]
	ldr r1, [r1, #0x10]
	ldr r1, [r2, r1, lsl #2]
	bl ov21_0211F730
	ldr r0, [r4]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211ECD0:
	add r0, r4, #0x238
	bl ov21_0211D0A8
	cmp r0, #0
	beq _0211ED4C
	add r0, r4, #0x238
	mov r1, #4
	bl ov21_0211D0B0
	ldr r0, [r4, #0x1c]
	bl ov21_02120E84
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	ldr r3, [r0, #4]
	ldr r2, [r0, #0x10]
	mov r0, r4
	ldr r2, [r3, r2, lsl #2]
	mov r3, #0
	bl ov21_0211F394
	ldr r1, [r4, #0x1c]
	mov r0, r4
	ldr r2, [r1, #4]
	ldr r1, [r1, #0x10]
	ldr r1, [r2, r1, lsl #2]
	bl ov21_0211F730
	ldr r0, [r4]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211ED4C:
	add r0, r4, #0x1d4
	bl ov21_0211D094
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl ov21_0211F440
	ldmia sp!, {r4, pc}

	arm_func_start ov21_0211ED70
ov21_0211ED70: ; 0x0211ED70
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	ldr r2, [r4, #0x30]
	ldr r1, [r1, #0x14]
	cmp r2, #0
	ldrh r3, [r1, #6]
	and r2, r3, #0x40
	bne _0211F004
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	beq _0211EE08
	ldr r0, [r4, #0x14]
	bl ov21_02120DC8
	cmp r0, #0
	beq _0211EDE0
	add r0, r4, #0x170
	mov r1, #4
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	mov r1, #0
	bl ov21_0211FD9C
	ldmia sp!, {r4, pc}
	arm_func_end ov21_0211ED70
_0211EDE0:
	ldr r0, [r4, #0x14]
	bl ov21_02120D5C
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #0xfd
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211EE08:
	and r2, r3, #0x80
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	beq _0211EE80
	ldr r0, [r4, #0x14]
	bl ov21_02120E84
	cmp r0, #0
	beq _0211EE58
	add r0, r4, #0x184
	mov r1, #4
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	mov r1, #0
	bl ov21_0211FD9C
	ldmia sp!, {r4, pc}
_0211EE58:
	ldr r0, [r4, #0x14]
	bl ov21_02120D70
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #0xfd
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211EE80:
	and r2, r3, #0x20
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	beq _0211EEF8
	ldr r0, [r4, #0x14]
	bl ov21_02120F68
	cmp r0, #0
	beq _0211EED0
	add r0, r4, #0x198
	mov r1, #4
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	mov r1, #1
	bl ov21_0211FD9C
	ldmia sp!, {r4, pc}
_0211EED0:
	ldr r0, [r4, #0x14]
	bl ov21_02120D8C
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #0xfd
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211EEF8:
	and r2, r3, #0x10
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	beq _0211EF70
	ldr r0, [r4, #0x14]
	bl ov21_02120FD8
	cmp r0, #0
	beq _0211EF48
	add r0, r4, #0x1ac
	mov r1, #4
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	mov r1, #1
	bl ov21_0211FD9C
	ldmia sp!, {r4, pc}
_0211EF48:
	ldr r0, [r4, #0x14]
	bl ov21_02120DA0
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #0xfd
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r4, pc}
_0211EF70:
	ldrh r2, [r1, #2]
	and r1, r2, #0x200
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	beq _0211EFD4
	add r0, r4, #0x1e8
	mov r1, #8
	bl ov21_0211D0B0
	add r0, r4, #0x1fc
	mov r1, #8
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr r0, [r4]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0xa
	bl sub_0200E0E0
	mov r0, #2
	str r0, [r4, #0x34]
	ldmia sp!, {r4, pc}
_0211EFD4:
	and r1, r2, #0x100
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0x14]
	ldr r1, [r1, #0x18]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	mov r1, #1
	mov r2, #0
	bl ov21_0211F440
	ldmia sp!, {r4, pc}
_0211F004:
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	beq _0211F050
	ldr r0, [r4, #0x18]
	bl ov21_02120DC8
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr r1, [r4, #0x18]
	mov r0, r4
	ldr r2, [r1, #4]
	ldr r1, [r1, #0x10]
	ldr r1, [r2, r1, lsl #2]
	bl ov21_0211F584
	ldmia sp!, {r4, pc}
_0211F050:
	and r2, r3, #0x80
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	beq _0211F0A0
	ldr r0, [r4, #0x18]
	bl ov21_02120E84
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr r1, [r4, #0x18]
	mov r0, r4
	ldr r2, [r1, #4]
	ldr r1, [r1, #0x10]
	ldr r1, [r2, r1, lsl #2]
	bl ov21_0211F584
	ldmia sp!, {r4, pc}
_0211F0A0:
	and r2, r3, #0x20
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	beq _0211F128
	ldr r0, [r4, #0x40]
	cmp r0, #3
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x1c]
	bl ov21_02120DC8
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x224
	mov r1, #4
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	ldr r3, [r0, #4]
	ldr r2, [r0, #0x10]
	mov r0, r4
	ldr r2, [r3, r2, lsl #2]
	mov r3, #0
	bl ov21_0211F394
	ldr r1, [r4, #0x1c]
	mov r0, r4
	ldr r2, [r1, #4]
	ldr r1, [r1, #0x10]
	ldr r1, [r2, r1, lsl #2]
	bl ov21_0211F730
	ldmia sp!, {r4, pc}
_0211F128:
	and r2, r3, #0x10
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	beq _0211F1B0
	ldr r0, [r4, #0x40]
	cmp r0, #3
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x1c]
	bl ov21_02120E84
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x238
	mov r1, #4
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0x108
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	ldr r3, [r0, #4]
	ldr r2, [r0, #0x10]
	mov r0, r4
	ldr r2, [r3, r2, lsl #2]
	mov r3, #0
	bl ov21_0211F394
	ldr r1, [r4, #0x1c]
	mov r0, r4
	ldr r2, [r1, #4]
	ldr r1, [r1, #0x10]
	ldr r1, [r2, r1, lsl #2]
	bl ov21_0211F730
	ldmia sp!, {r4, pc}
_0211F1B0:
	ldrh r1, [r1, #2]
	and r1, r1, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	mov r2, r1
	bl ov21_0211F440
	ldmia sp!, {r4, pc}

	arm_func_start ov21_0211F1D4
ov21_0211F1D4: ; 0x0211F1D4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	bl ov21_02120D5C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r4, #0x180]
	ldr r0, [r4, #0x14]
	bl ov21_02120D70
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r4, #0x194]
	ldr r0, [r4, #0x14]
	bl ov21_02120D8C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r4, #0x1a8]
	ldr r0, [r4, #0x14]
	bl ov21_02120DA0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r4, #0x1bc]
	add r5, r4, #0x170
	mov r4, #0
	arm_func_end ov21_0211F1D4
_0211F244:
	mov r0, r5
	bl ov21_0211D0E0
	add r4, r4, #1
	cmp r4, #0xb
	add r5, r5, #0x14
	blt _0211F244
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov21_0211F260
ov21_0211F260: ; 0x0211F260
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #0xa0]
	mov r4, r1
	ldr r0, [r5, #0x94]
	ldr r2, [r5, #0xa4]
	add r1, r3, r4
	bl sub_0200EB28
	ldr r1, [r5, #0xb4]
	ldr r0, [r5, #0xa8]
	ldr r2, [r5, #0xb8]
	add r1, r1, r4
	bl sub_0200EB28
	ldr r1, [r5, #0xc8]
	ldr r0, [r5, #0xbc]
	ldr r2, [r5, #0xcc]
	add r1, r1, r4
	bl sub_0200EB28
	ldr r1, [r5, #0xdc]
	ldr r0, [r5, #0xd0]
	add r1, r1, r4
	ldr r2, [r5, #0xe0]
	bl sub_0200EB28
	ldr r0, [r5, #0xe4]
	ldr r1, [r5, #0xf0]
	ldr r2, [r5, #0xf4]
	add r1, r1, r4
	bl sub_0200EB28
	ldr r0, [r5, #0xf8]
	ldr r1, [r5, #0x104]
	ldr r2, [r5, #0x108]
	add r1, r1, r4
	bl sub_0200EB28
	ldr r0, [r5, #0x10c]
	ldr r1, [r5, #0x118]
	ldr r2, [r5, #0x11c]
	add r1, r1, r4
	bl sub_0200EB28
	ldr r0, [r5, #0x120]
	ldr r1, [r5, #0x12c]
	ldr r2, [r5, #0x130]
	add r1, r1, r4
	bl sub_0200EB28
	ldr r0, [r5, #0x134]
	ldr r1, [r5, #0x140]
	ldr r2, [r5, #0x144]
	add r1, r1, r4
	bl sub_0200EB28
	ldr r0, [r5, #0x148]
	ldr r1, [r5, #0x154]
	ldr r2, [r5, #0x158]
	add r1, r1, r4
	bl sub_0200EB28
	ldr r0, [r5, #0x15c]
	ldr r1, [r5, #0x168]
	ldr r2, [r5, #0x16c]
	add r1, r1, r4
	bl sub_0200EB28
	ldr r0, [r5, #0x14]
	add r1, r4, #0x70
	mov r2, #0x30
	ldr r3, [r0]
	ldr r3, [r3, #0x20]
	blx r3
	ldr r0, [r5, #0x18]
	add r1, r4, #0x1b0
	mov r2, #0x10
	ldr r3, [r0]
	ldr r3, [r3, #0x20]
	blx r3
	ldr r0, [r5, #0x1c]
	add r1, r4, #0x120
	ldr r3, [r0]
	mov r2, #0x94
	ldr r3, [r3, #0x20]
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov21_0211F260

	arm_func_start ov21_0211F394
ov21_0211F394: ; 0x0211F394
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r6, r3
	bl ov21_02122724
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r5, [r1, #0x80c]
	ldr r1, [r1, #0x808]
	mov r2, r5
	mov r3, #0
	bl ov21_02120A00
	mov r0, r4
	mov r1, #2
	bl ov21_0211FD9C
	cmp r6, #0
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r5, #0
	bne _0211F3F8
	mov r2, #0
	mov r0, r4
	mov r1, #0x13
	strb r2, [r4, #0x1dc]
	bl ov21_0211FF80
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov21_0211F394
_0211F3F8:
	mov r0, #1
	strb r0, [r4, #0x1dc]
	mov r2, #9
	strb r2, [r4, #0x1d9]
	mov r0, #0xa
	strb r0, [r4, #0x1da]
	mov r0, #0xb
	strb r0, [r4, #0x1db]
	ldr r5, [r4, #0x1d4]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	bl sub_0200F628
	mov r2, #9
	mov r0, r4
	mov r1, #0x17
	strb r2, [r5, #9]
	bl ov21_0211FF80
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov21_0211F440
ov21_0211F440: ; 0x0211F440
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	cmp r1, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r1, #1
	bne _0211F510
	add r0, r4, #0x1c0
	mov r1, #0x20
	bl ov21_0211D0B0
	ldr r0, [r4]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #1
	str r0, [r4, #0x34]
	str r0, [r4, #0x30]
	mov r0, #0
	ldr r2, [r4, #0xc]
	sub r1, r0, #1
	str r0, [r2, #0x20]
	ldr r2, [r4, #0x3c]
	str r2, [r4, #0x44]
	ldr r2, [r4, #0x40]
	str r2, [r4, #0x48]
	ldr r2, [r4, #0x14]
	ldr r2, [r2, #0x14]
	str r2, [r4, #0x4c]
	ldr r2, [r4, #0x14]
	ldr r2, [r2, #0xc]
	str r2, [r4, #0x58]
	ldr r2, [r4, #0x1c]
	ldr r2, [r2, #0x14]
	str r2, [r4, #0x50]
	ldr r2, [r4, #0x1c]
	ldr r2, [r2, #0xc]
	str r2, [r4, #0x5c]
	ldr r2, [r4, #0x18]
	ldr r2, [r2, #0x14]
	str r2, [r4, #0x54]
	ldr r2, [r4, #0x18]
	ldr r2, [r2, #0xc]
	str r2, [r4, #0x60]
	strb r0, [r4, #0x1dc]
	ldr r0, [r4, #0x18]
	bl ov21_02120AF4
	mov r0, r4
	mov r1, #4
	bl ov21_0211F584
	b _0211F57C
	arm_func_end ov21_0211F440
_0211F510:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x80c]
	cmp r0, #0
	beq _0211F574
	cmp r2, #0
	ldreq r0, [r4, #0x40]
	cmpeq r0, #4
	beq _0211F574
	cmp r2, #0
	bne _0211F544
	add r0, r4, #0x1d4
	mov r1, #0x18
	bl ov21_0211D0B0
_0211F544:
	ldr r0, [r4]
	mov r1, #0xfa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #1
	str r0, [r4, #0x34]
	mov r1, #0
	str r1, [r4, #0x30]
	ldr r0, [r4, #0xc]
	str r1, [r0, #0x20]
	b _0211F57C
_0211F574:
	mov r0, #0
	ldmia sp!, {r4, pc}
_0211F57C:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start ov21_0211F584
ov21_0211F584: ; 0x0211F584
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r4, r1
	mov r5, r0
	str r4, [r5, #0x40]
	cmp r4, #4
	bne _0211F5F0
	ldr r0, [r5, #0x134]
	mov r3, #0
	str r3, [r0, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r1, _0211F720 ; =PTR_DAT_overlay_21_02122c24_overlay_21_02122c90
	str r3, [r0, #0x1c]
	ldr r4, [r5, #0x40]
	ldr r0, [r5, #0x1c]
	ldr r2, _0211F724 ; =DAT_overlay_21_02122c94
	str r4, [r0, #0x20]
	ldr r4, [r5, #0x40]
	ldr r0, [r5, #0x1c]
	ldr r1, [r1, r4, lsl #4]
	ldr r2, [r2, r4, lsl #4]
	bl ov21_02120A00
	mov r0, r5
	mov r1, #0
	bl ov21_0211F730
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov21_0211F584
_0211F5F0:
	ldr r0, [r5, #0x1c]
	mov r1, #1
	str r1, [r0, #0x1c]
	ldr r2, [r5, #0x40]
	ldr r0, [r5, #0x1c]
	ldr r1, _0211F720 ; =PTR_DAT_overlay_21_02122c24_overlay_21_02122c90
	str r2, [r0, #0x20]
	ldr r3, [r5, #0x40]
	ldr r2, _0211F724 ; =DAT_overlay_21_02122c94
	ldr r0, [r5, #0x1c]
	ldr r1, [r1, r3, lsl #4]
	ldr r2, [r2, r3, lsl #4]
	mov r3, #0
	bl ov21_02120A00
	ldr r0, [r5, #0x24]
	mov r1, #4
	bl sub_0200C980
	mov r0, #5
	str r0, [sp]
	ldr r3, [r5, #0x254]
	ldr r2, [r5, #0x40]
	ldr r0, _0211F728 ; =DAT_overlay_21_02122c98
	ldr r3, [r3, #8]
	ldr r0, [r0, r2, lsl #4]
	mov r2, #1
	add r0, r3, r0, lsl #3
	ldr r3, [r0, #4]
	mov r0, #0
	str r3, [sp, #4]
	str r2, [sp, #8]
	mov r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x24]
	mov r2, r1
	mov r3, #3
	bl sub_0200C7A4
	cmp r4, #3
	ldr r0, [r5, #0x134]
	movge r1, #0
	strge r1, [r0, #0x14]
	bge _0211F6E0
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r1, [r5, #0x40]
	ldr r0, _0211F72C ; =DAT_overlay_21_02122c9c
	ldrb r4, [r0, r1, lsl #4]
	strb r4, [r5, #0x215]
	add r0, r4, #1
	strb r0, [r5, #0x216]
	add r0, r4, #2
	strb r0, [r5, #0x217]
	ldr r6, [r5, #0x210]
	mov r2, r4
	ldrb r1, [r6, #8]
	ldr r0, [r6, #4]
	bl sub_0200F628
	add r0, r5, #0x210
	mov r1, #8
	strb r4, [r6, #9]
	bl ov21_0211D0B0
_0211F6E0:
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x40]
	ldr r3, [r0, #4]
	ldr r2, [r0, #0x10]
	mov r0, r5
	ldr r2, [r3, r2, lsl #2]
	mov r3, #0
	bl ov21_0211F394
	ldr r1, [r5, #0x1c]
	mov r0, r5
	ldr r2, [r1, #4]
	ldr r1, [r1, #0x10]
	ldr r1, [r2, r1, lsl #2]
	bl ov21_0211F730
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211F720: .word PTR_DAT_overlay_21_02122c24_overlay_21_02122c90
_0211F724: .word DAT_overlay_21_02122c94
_0211F728: .word DAT_overlay_21_02122c98
_0211F72C: .word DAT_overlay_21_02122c9c

	arm_func_start ov21_0211F730
ov21_0211F730: ; 0x0211F730
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	str r1, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	mov r5, #0
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211F7F8
_0211F754: ; jump table
	b _0211F768 ; case 0
	b _0211F784 ; case 1
	b _0211F7C4 ; case 2
	b _0211F7F8 ; case 3
	b _0211F7F8 ; case 4
	arm_func_end ov21_0211F730
_0211F768:
	ldr r1, [r4, #0x254]
	ldr r0, [r4, #0x3c]
	ldr r1, [r1, #8]
	add r0, r0, #9
	add r0, r1, r0, lsl #3
	ldr r5, [r0, #4]
	b _0211F7F8
_0211F784:
	ldr r0, [r4, #0x10]
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x814]
	cmp r0, #0
	beq _0211F7B4
	ldr r1, [r4, #0x258]
	ldr r0, [r4, #0x3c]
	ldr r1, [r1, #8]
	add r0, r0, #1
	add r0, r1, r0, lsl #3
	ldr r5, [r0, #4]
	b _0211F7F8
_0211F7B4:
	ldr r0, [r4, #0x254]
	ldr r0, [r0, #8]
	ldr r5, [r0, #0xb4]
	b _0211F7F8
_0211F7C4:
	ldr r0, [r4, #0x10]
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x85c]
	cmp r0, #0
	ldreq r0, [r4, #0x254]
	ldreq r0, [r0, #8]
	ldreq r5, [r0, #0xb4]
	beq _0211F7F8
	ldr r1, [r4, #0x25c]
	ldr r0, [r4, #0x3c]
	ldr r1, [r1, #8]
	add r0, r1, r0, lsl #3
	ldr r5, [r0, #4]
_0211F7F8:
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl sub_0200C980
	cmp r5, #0
	beq _0211F834
	mov r3, #3
	stmia sp, {r3, r5}
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x24]
	mov r1, #5
	mov r2, #4
	bl sub_0200C7A4
_0211F834:
	ldr r0, [r4, #0x148]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x15c]
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x40]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211F8DC
_0211F858: ; jump table
	b _0211F8DC ; case 0
	b _0211F86C ; case 1
	b _0211F8AC ; case 2
	b _0211F8DC ; case 3
	b _0211F8DC ; case 4
_0211F86C:
	ldr r0, [r4, #0x1c]
	bl ov21_02120D8C
	cmp r0, #0
	ldrne r0, [r4, #0x148]
	movne r1, #1
	strne r1, [r0, #0x14]
	ldr r0, [r4, #0x1c]
	bl ov21_02120DA0
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x15c]
	mov r1, #1
	str r1, [r0, #0x14]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
_0211F8AC:
	ldr r0, [r4, #0x1c]
	bl ov21_02120D8C
	cmp r0, #0
	ldrne r0, [r4, #0x148]
	movne r1, #1
	strne r1, [r0, #0x14]
	ldr r0, [r4, #0x1c]
	bl ov21_02120DA0
	cmp r0, #0
	ldrne r0, [r4, #0x15c]
	movne r1, #1
	strne r1, [r0, #0x14]
_0211F8DC:
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov21_0211F8E4
ov21_0211F8E4: ; 0x0211F8E4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, [r4, #0x68]
	mov r1, #3
	cmp r0, #0
	ldr r0, [r4, #0x24]
	bne _0211F968
	bl sub_0200C980
	mov r0, #5
	str r0, [sp]
	ldr r0, [r4, #0x254]
	mov r2, #1
	ldr r0, [r0, #8]
	mov r1, #3
	ldr r3, [r0, #0xa4]
	mov r0, #0
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x24]
	mov r3, r1
	mov r2, #4
	bl sub_0200C7A4
	mov r0, #1
	str r0, [r4, #0x68]
	ldr r0, [r4, #8]
	bl ov21_02122214
	mov r0, r4
	mov r1, #1
	bl ov21_0211F9E0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end ov21_0211F8E4
_0211F968:
	bl sub_0200C980
	mov r0, #5
	str r0, [sp]
	ldr r0, [r4, #0x254]
	mov r2, #1
	ldr r0, [r0, #8]
	mov r1, #3
	ldr r3, [r0, #0xac]
	mov r0, #0
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x24]
	mov r3, r1
	mov r2, #4
	bl sub_0200C7A4
	mov r0, #0
	str r0, [r4, #0x68]
	ldr r0, [r4, #4]
	bl sub_0201CB0C
	mov r1, #0
	ldr r0, [r4, #4]
	mov r2, r1
	mov r3, r1
	bl sub_0201CE00
	mov r0, r4
	mov r1, #1
	bl ov21_0211F9E0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}

	arm_func_start ov21_0211F9E0
ov21_0211F9E0: ; 0x0211F9E0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	add r3, sp, #0
	mov r2, #0
	mov r5, r0
	str r2, [r3]
	str r2, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r5]
	mov r4, r1
	add r0, r0, #0x1000
	ldrh r1, [r5, #0x6c]
	ldr r0, [r0, #0x434]
	bl sub_020107A8
	ldrh r2, [r0]
	ldr r1, _0211FADC ; =MAIN_BSS_020B26A0
	cmp r2, #0
	blt _0211FA54
	cmp r2, #0x1f4
	bge _0211FA54
	mov r0, r2, asr #4
	add r0, r1, r0, lsl #2
	add r0, r0, #0x7000
	mov r1, r2, lsl #0x1c
	ldr r2, [r0, #0xc3c]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and ip, r0, #3
	b _0211FA58
	arm_func_end ov21_0211F9E0
_0211FA54:
	mov ip, #0
_0211FA58:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	bne _0211FA94
	ldr r0, _0211FAE0 ; =OVERLAY21_BSS_021242C4
	ldrh r1, [r5, #0x6c]
	ldr r0, [r0]
	cmp r0, #0
	movne r2, #0
	ldr r0, [r5, #4]
	rsbeq r2, ip, #2
	bl sub_0201DF54
	ldr r0, [r5, #4]
	bl sub_0201E27C
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
_0211FA94:
	ldr r0, [r5, #0x14]
	ldr r3, _0211FAE4 ; =DAT_overlay_21_02123618
	ldr r2, [r0, #4]
	ldr r1, [r0, #0x10]
	mov r0, #0xc
	ldr r2, [r2, r1, lsl #2]
	cmp ip, #0
	mla r1, r2, r0, r3
	addeq r1, sp, #0
	cmp r4, #0
	ldr r0, [r5, #8]
	beq _0211FAD0
	bl ov21_021224E4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
_0211FAD0:
	bl ov21_021224B4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0211FADC: .word MAIN_BSS_020B26A0
_0211FAE0: .word OVERLAY21_BSS_021242C4
_0211FAE4: .word DAT_overlay_21_02123618

	arm_func_start ov21_0211FAE8
ov21_0211FAE8: ; 0x0211FAE8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x30
	mov sb, r0
	ldr r0, [sb, #0x20]
	mov r8, r1
	mov r4, r2
	mov r7, r3
	bl sub_0200C980
	mvn r0, #0
	cmp r4, r0
	addeq sp, sp, #0x30
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sb]
	mov r1, r4, lsl #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x434]
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	mov r4, r0
	ldrh r5, [r4]
	mov r3, #3
	cmp r7, #0x3e8
	ldr r6, _0211FD8C ; =MAIN_BSS_020B26A0
	mov r0, #0
	str r3, [sp]
	bge _0211FC84
	ldr r1, [sb, #0x250]
	ldr r2, [r1, #8]
	mov r1, r8
	ldr ip, [r2, #0x3c]
	mov r2, #4
	str ip, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sb, #0x20]
	bl sub_0200C7A4
	mov r3, #3
	str r3, [sp]
	ldr r1, [sb, #0x250]
	ldr r2, _0211FD90 ; =0x51EB851F
	ldr lr, [r1, #8]
	smull r1, ip, r2, r7
	mov r0, r7, lsr #0x1f
	add ip, r0, ip, asr #5
	add r0, ip, #8
	add r0, lr, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sb, #0x20]
	mov r1, r8
	mov r2, #0x17
	bl sub_0200C7A4
	mov r3, #3
	str r3, [sp]
	ldr r1, [sb, #0x250]
	ldr r0, _0211FD94 ; =0x66666667
	ldr ip, [r1, #8]
	smull r2, r1, r0, r7
	mov r2, r7, lsr #0x1f
	add r1, r2, r1, asr #2
	smull lr, r2, r0, r1
	mov r0, r1, lsr #0x1f
	add r2, r0, r2, asr #2
	mov lr, #0xa
	smull r0, r2, lr, r2
	sub r2, r1, r0
	add r0, r2, #8
	add r0, ip, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sb, #0x20]
	mov r1, r8
	mov r2, #0x21
	bl sub_0200C7A4
	ldr r2, _0211FD94 ; =0x66666667
	mov r3, #3
	smull r1, lr, r2, r7
	mov r1, r7, lsr #0x1f
	str r3, [sp]
	ldr r0, [sb, #0x250]
	add lr, r1, lr, asr #2
	mov ip, #0xa
	smull r1, r2, ip, lr
	sub lr, r7, r1
	ldr r0, [r0, #8]
	add r1, lr, #8
	add r0, r0, r1, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sb, #0x20]
	mov r1, r8
	mov r2, #0x2b
	bl sub_0200C7A4
	b _0211FCAC
	arm_func_end ov21_0211FAE8
_0211FC84:
	ldr r1, [sb, #0x250]
	ldr r2, [r1, #8]
	mov r1, r8
	ldr r7, [r2, #0x1ec]
	mov r2, #4
	str r7, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sb, #0x20]
	bl sub_0200C7A4
_0211FCAC:
	ldr r0, _0211FD98 ; =OVERLAY21_BSS_021242C4
	ldr r0, [r0]
	cmp r0, #0
	bne _0211FCFC
	cmp r5, #0
	blt _0211FCF0
	cmp r5, #0x1f4
	bge _0211FCF0
	mov r0, r5, asr #4
	add r0, r6, r0, lsl #2
	add r0, r0, #0x7000
	mov r1, r5, lsl #0x1c
	ldr r2, [r0, #0xc3c]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #3
	b _0211FCF4
_0211FCF0:
	mov r0, #0
_0211FCF4:
	cmp r0, #0
	beq _0211FD50
_0211FCFC:
	ldr r0, [sb]
	ldrh r1, [r4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b0]
	bl sub_02018B10
	add r1, sp, #0x10
	mov r2, #0x1f
	bl sub_0202BC74
	mov r3, #3
	add r0, sp, #0x10
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sb, #0x20]
	mov r1, r8
	mov r2, #0x50
	bl sub_0200C7A4
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0211FD50:
	mov r3, #3
	str r3, [sp]
	ldr r1, [sb, #0x250]
	mov r0, #0
	ldr r2, [r1, #8]
	mov r1, r8
	ldr r4, [r2, #0x94]
	mov r2, #0x50
	str r4, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sb, #0x20]
	bl sub_0200C7A4
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0211FD8C: .word MAIN_BSS_020B26A0
_0211FD90: .word 0x51EB851F
_0211FD94: .word 0x66666667
_0211FD98: .word OVERLAY21_BSS_021242C4

	arm_func_start ov21_0211FD9C
ov21_0211FD9C: ; 0x0211FD9C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r0, [r6, #0x14]
	movs r5, r1
	ldr r4, [r0, #0x14]
	beq _0211FDDC
	mov r8, #0
	mvn r7, #0
	arm_func_end ov21_0211FD9C
_0211FDBC:
	mov r0, r6
	mov r1, r8
	mov r2, r7
	mov r3, r7
	bl ov21_0211FAE8
	add r8, r8, #1
	cmp r8, #0x10
	blt _0211FDBC
_0211FDDC:
	cmp r5, #0
	bne _0211FE90
	cmp r4, #0
	beq _0211FE20
	mov r0, r6
	sub r1, r4, #1
	bl ov21_0211FFDC
	mov r7, r0
	mov r0, r6
	sub r1, r4, #1
	bl ov21_02120000
	sub r1, r4, #1
	mov r3, r0
	and r1, r1, #0xf
	mov r2, r7
	mov r0, r6
	bl ov21_0211FAE8
_0211FE20:
	ldr r0, [r6, #0x14]
	ldr r3, [r0, #0x6c]
	ldr r1, [r0, #8]
	ldr r0, [r0, #0x14]
	cmp r1, r3
	movgt r2, r3
	movle r2, r1
	add r0, r0, r2
	cmp r0, r1
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	bne _0211FE90
	cmp r1, r3
	movle r3, r1
	add r8, r4, r3
	mov r0, r6
	mov r1, r8
	bl ov21_0211FFDC
	mov r7, r0
	mov r0, r6
	mov r1, r8
	bl ov21_02120000
	mov r3, r0
	and r1, r8, #0xf
	mov r2, r7
	mov r0, r6
	bl ov21_0211FAE8
_0211FE90:
	cmp r5, #1
	beq _0211FEA4
	cmp r5, #2
	beq _0211FF04
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0211FEA4:
	mov r7, #0
	b _0211FEE4
_0211FEAC:
	add r8, r4, r7
	mov r0, r6
	mov r1, r8
	bl ov21_0211FFDC
	mov r5, r0
	mov r0, r6
	mov r1, r8
	bl ov21_02120000
	mov r3, r0
	and r1, r8, #0xf
	mov r2, r5
	mov r0, r6
	bl ov21_0211FAE8
	add r7, r7, #1
_0211FEE4:
	ldr r1, [r6, #0x14]
	ldr r0, [r1, #0x6c]
	ldr r1, [r1, #8]
	cmp r1, r0
	movgt r1, r0
	cmp r7, r1
	blt _0211FEAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0211FF04:
	ldr r0, [r6, #0x14]
	ldr r1, [r0, #0x6c]
	ldr r0, [r0, #8]
	cmp r0, r1
	movle r1, r0
	str r1, [r6, #0x74]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov21_0211FF20
ov21_0211FF20: ; 0x0211FF20
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0x74]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	sub r2, r1, #1
	str r2, [r4, #0x74]
	ldr r1, [r4, #0x14]
	ldr r6, [r1, #0x14]
	add r1, r6, r2
	bl ov21_0211FFDC
	ldr r1, [r4, #0x74]
	mov r5, r0
	mov r0, r4
	add r1, r6, r1
	bl ov21_02120000
	ldr r1, [r4, #0x74]
	mov r3, r0
	add r1, r6, r1
	mov r0, r4
	mov r2, r5
	and r1, r1, #0xf
	bl ov21_0211FAE8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov21_0211FF20

	arm_func_start ov21_0211FF80
ov21_0211FF80: ; 0x0211FF80
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #0x28]
	mov r4, r1
	ldr r2, _0211FFD8 ; =0x33333333
	mov r1, #0
	bl sub_0200C9B4
	mov r2, #4
	str r2, [sp]
	ldr r0, [r5, #0x254]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r3, #3
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x28]
	bl sub_0200C7A4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0211FFD8: .word 0x33333333
	arm_func_end ov21_0211FF80

	arm_func_start ov21_0211FFDC
ov21_0211FFDC: ; 0x0211FFDC
	ldr r0, [r0, #0x14]
	ldr r2, _0211FFFC ; =DAT_overlay_21_02123618
	ldr r3, [r0, #4]
	mov r0, #0xc
	ldr r1, [r3, r1, lsl #2]
	mla r0, r1, r0, r2
	ldrh r0, [r0, #2]
	bx lr
	.align 2, 0
_0211FFFC: .word DAT_overlay_21_02123618
	arm_func_end ov21_0211FFDC

	arm_func_start ov21_02120000
ov21_02120000: ; 0x02120000
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov21_0211FFDC
	ldr r2, [r4]
	mov r1, r0
	add r0, r2, #0x1000
	ldr r0, [r0, #0x434]
	bl sub_020107A8
	ldrh r2, [r0]
	ldr r0, _02120040 ; =DAT_0208c55c
	ldr r1, _02120044 ; =0x0000FFFF
	mov r2, r2, lsl #1
	ldrh r0, [r0, r2]
	cmp r0, r1
	ldreq r0, _02120048 ; =0x000003E7
	ldmia sp!, {r4, pc}
	.align 2, 0
_02120040: .word DAT_0208c55c
_02120044: .word 0x0000FFFF
_02120048: .word 0x000003E7
	arm_func_end ov21_02120000

	arm_func_start ov21_0212004C
ov21_0212004C: ; 0x0212004C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	bl sub_020668E8
	mov r4, r0
	ldr r0, [r6, #0xc]
	mov r5, r1
	cmp r0, #0
	beq _02120138
	ldr r1, [r6, #0x34]
	cmp r1, #0
	bne _02120138
	bl sub_0202A404
	cmp r0, #0
	beq _02120138
	ldr r0, [r6, #0x30]
	cmp r0, #0
	moveq r0, #3
	streq r0, [r6, #0x34]
	beq _02120138
	ldr r1, [r6, #0x48]
	ldr r2, [r6, #0x44]
	mov r0, r6
	mov r3, #1
	bl ov21_0211F394
	mov r0, #1
	str r0, [r6, #0x64]
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x4c]
	bl ov21_02120BD0
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x58]
	bl ov21_02120AF4
	ldr r0, [r6, #0x24]
	mov r1, #4
	bl sub_0200C980
	mov r0, #5
	str r0, [sp]
	ldr r0, [r6, #0x254]
	ldr r1, [r6, #0x48]
	ldr r3, [r0, #8]
	ldr r0, _0212039C ; =DAT_overlay_21_02122c98
	mov r2, #1
	ldr r1, [r0, r1, lsl #4]
	mov r0, #0
	add r1, r3, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #4
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r6, #0x24]
	mov r2, r1
	mov r3, #3
	bl sub_0200C7A4
	mov r0, r6
	mov r1, #0
	mov r2, #1
	bl ov21_0211F440
	arm_func_end ov21_0212004C
_02120138:
	mov r0, r6
	bl ov21_0211F1D4
	ldr r0, [r6, #0x34]
	cmp r0, #0
	bne _021201A0
	mov r0, r6
	bl ov21_0211ED70
	ldr r0, [r6, #0x34]
	cmp r0, #0
	bne _02120168
	mov r0, r6
	bl ov21_0211E8B4
_02120168:
	ldr r1, [r6, #0x14]
	mov r0, r6
	ldr r1, [r1, #0x10]
	bl ov21_0211FFDC
	ldrh r1, [r6, #0x6c]
	cmp r1, r0
	beq _021201A0
	ldr r1, [r6, #0x14]
	mov r0, r6
	ldr r1, [r1, #0x10]
	bl ov21_0211FFDC
	strh r0, [r6, #0x6c]
	mov r0, #1
	str r0, [r6, #0x70]
_021201A0:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _021201B8
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
_021201B8:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _021201D0
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
_021201D0:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _021201E8
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
_021201E8:
	ldr r0, [r6, #0x34]
	cmp r0, #1
	bne _02120294
	ldr r0, [r6, #0x30]
	cmp r0, #1
	ldr r0, [r6, #0x78]
	bne _02120240
	add r0, r0, #0x8000
	str r0, [r6, #0x78]
	cmp r0, #0x100000
	blt _02120294
	mov r0, #0x100000
	str r0, [r6, #0x78]
	mov r0, #0
	str r0, [r6, #0x34]
	ldr r2, [r6, #0xc]
	mov r3, #1
	mov r0, r6
	mov r1, #0x17
	str r3, [r2, #0x20]
	bl ov21_0211FF80
	b _02120294
_02120240:
	sub r0, r0, #0x8000
	str r0, [r6, #0x78]
	cmp r0, #0
	bgt _02120294
	mov r2, #0
	str r2, [r6, #0x78]
	str r2, [r6, #0x34]
	ldr r0, [r6, #0xc]
	mov r1, #1
	str r1, [r0, #0x20]
	ldr r0, [r6, #0x64]
	cmp r0, #0
	beq _02120288
	ldr r0, [r6, #0x48]
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r6, #0x3c]
	str r2, [r6, #0x64]
_02120288:
	mov r0, r6
	mov r1, #0x12
	bl ov21_0211FF80
_02120294:
	ldr r0, [r6, #0x34]
	cmp r0, #2
	bne _021202E0
	ldr r0, [r6]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _021202E0
	mov r0, r6
	bl ov21_0211F8E4
	mov r0, #0
	str r0, [r6, #0x34]
	ldr r0, [r6]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0xa
	bl sub_0200E0E0
_021202E0:
	ldr r1, [r6, #0x78]
	mov r0, r6
	rsb r1, r1, #0
	mov r1, r1, asr #0xc
	bl ov21_0211F260
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _02120304
	bl sub_0200F64C
_02120304:
	ldr r0, [r6, #0x40]
	cmp r0, #3
	bge _02120324
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0x84]
	cmp r0, #0
	beq _02120324
	bl sub_0200F64C
_02120324:
	ldr r0, [r6, #0x68]
	cmp r0, #0
	bne _02120344
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _02120354
	bl sub_0201F930
	b _02120354
_02120344:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _02120354
	bl ov21_02122114
_02120354:
	bl sub_020668E8
	subs r4, r0, r4
	mov r2, #0xfa00
	sbc r3, r1, r5
	umull r0, r1, r4, r2
	mla r1, r3, r2, r1
	ldr r2, _021203A0 ; =0x000082EA
	mov r3, #0
	bl FP__ll_udiv
	ldr r2, _021203A4 ; =0x00001388
	cmp r1, #0
	cmpeq r0, r2
	bhi _02120390
	mov r0, r6
	bl ov21_0211FF20
_02120390:
	bl sub_020668E8
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0212039C: .word DAT_overlay_21_02122c98
_021203A0: .word 0x000082EA
_021203A4: .word 0x00001388

	arm_func_start ov21_021203A8
ov21_021203A8: ; 0x021203A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021203C0
	bl sub_0202A47C
	arm_func_end ov21_021203A8
_021203C0:
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _021203D0
	bl sub_0200F71C
_021203D0:
	ldr r0, [r4, #0x40]
	cmp r0, #3
	bge _021203F0
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x84]
	cmp r0, #0
	beq _021203F0
	bl sub_0200F71C
_021203F0:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02120408
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
_02120408:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02120420
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
_02120420:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02120438
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
_02120438:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _02120458
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02120468
	bl sub_0201F988
	b _02120468
_02120458:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02120468
	bl ov21_0212212C
_02120468:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	subs r0, r0, #1
	str r0, [r4, #0x70]
	ldmneia sp!, {r4, pc}
	mov r0, r4
	mov r1, #0
	bl ov21_0211F9E0
	ldmia sp!, {r4, pc}

	arm_func_start ov21_02120490
ov21_02120490: ; 0x02120490
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x68]
	cmp r1, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov21_02122144
	ldmia sp!, {r3, pc}
	arm_func_end ov21_02120490

	arm_func_start ov21_021204B0
ov21_021204B0: ; 0x021204B0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, r0
	ldr r1, [r8, #0x14]
	ldr r3, _02120740 ; =0x000001FF
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x88]
	mov r0, r0, lsl #4
	add r0, r0, r1, asr #12
	sub r0, r0, #0x28
	ldr r2, [r8, #0x78]
	mov r1, r0, lsl #0x18
	mov r0, r3, lsl #0x10
	and r2, r3, r2, asr #12
	and r0, r0, r1, lsr #8
	ldr r1, _02120744 ; =0x04000010
	orr r0, r2, r0
	str r0, [r1]
	ldr r2, [r8, #0x78]
	mov r0, #0
	and r2, r3, r2, asr #12
	str r2, [r1, #4]
	ldr r2, [r8, #0x14]
	ldr r5, [r8, #0x78]
	ldr r4, [r2, #0x88]
	mov r2, r3, lsl #0x10
	mov r4, r4, asr #0xc
	sub r4, r4, #8
	and r5, r3, r5, asr #12
	and r2, r2, r4, lsl #16
	orr r2, r5, r2
	str r2, [r1, #8]
	ldr r4, [r8, #0x78]
	mov r2, r0
	and r3, r3, r4, asr #12
	str r3, [r1, #0xc]
	ldrh r3, [r1, #0x3a]
	bic r3, r3, #0x3f
	orr r3, r3, #0x1a
	strh r3, [r1, #0x3a]
	ldr r3, [r8, #0x78]
	mov r3, r3, asr #0xc
	cmp r3, #0xc8
	bge _021205A4
	ldrh r3, [r1, #0x38]
	orr r2, r0, #1
	bic r3, r3, #0x3f
	orr r3, r3, #0x1f
	strh r3, [r1, #0x38]
	ldr r1, [r8, #0x78]
	mov r3, r1, asr #0xc
	rsbs r1, r3, #0x20
	movmi r1, r0
	rsb r0, r3, #0xc8
	mov r1, r1, lsl #8
	and r3, r1, #0xff00
	and r0, r0, #0xff
	orr r3, r3, r0
	ldr r1, _02120748 ; =0x04000040
	ldr r0, _0212074C ; =0x00002888
	strh r3, [r1]
	strh r0, [r1, #4]
	arm_func_end ov21_021204B0
_021205A4:
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0xe000
	orr r0, r0, r2, lsl #13
	str r0, [r1]
	ldr r0, [r8, #0x40]
	cmp r0, #3
	blt _021205E4
	bl sub_02062890
	mov r4, r0
	bl sub_02062890
	add r0, r0, #0x480
	add r1, r4, #0xb80
	mov r2, #0x180
	bl sub_02067E7C
	b _02120600
_021205E4:
	bl sub_02062890
	mov r4, r0
	bl sub_02062890
	add r0, r0, #0xe00
	add r1, r4, #0xb80
	mov r2, #0x180
	bl sub_02067E7C
_02120600:
	ldr r0, [r8, #0x14]
	ldr r1, [r0, #0x18]
	ldr r4, [r0, #0x14]
	cmp r1, #3
	moveq r2, #1
	movne r2, #0
	cmp r1, #4
	rsb r5, r2, #0
	moveq r7, #8
	beq _02120638
	ldr r7, [r0, #0x6c]
	ldr r0, [r0, #8]
	cmp r0, r7
	movle r7, r0
_02120638:
	cmp r5, r7
	ldr sb, _02120750 ; =MAIN_BSS_020B26A0
	bge _02120700
	mov r0, r5, lsl #1
	add r6, r0, #4
	mov fp, #0
_02120650:
	mov r0, r8
	add r1, r5, r4
	bl ov21_0211FFDC
	ldr r2, [r8]
	mov r1, r0
	add r0, r2, #0x1000
	ldr r0, [r0, #0x434]
	bl sub_020107A8
	ldrh r1, [r0]
	cmp r1, #0
	blt _021206A8
	cmp r1, #0x1f4
	bge _021206A8
	mov r0, r1, asr #4
	add r0, sb, r0, lsl #2
	add r0, r0, #0x7000
	mov r1, r1, lsl #0x1c
	ldr r2, [r0, #0xc3c]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #3
	b _021206AC
_021206A8:
	mov r0, fp
_021206AC:
	cmp r0, #2
	bne _021206D4
	bl sub_02062798
	add sl, r0, r6, lsl #6
	bl sub_02062798
	mov r1, sl
	add r0, r0, #0x700
	mov r2, #0x80
	bl sub_02067E7C
	b _021206F0
_021206D4:
	bl sub_02062798
	add sl, r0, r6, lsl #6
	bl sub_02062798
	mov r1, sl
	add r0, r0, #0x780
	mov r2, #0x80
	bl sub_02067E7C
_021206F0:
	add r5, r5, #1
	cmp r5, r7
	add r6, r6, #2
	blt _02120650
_02120700:
	cmp r5, #8
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r5, lsl #1
	add r7, r0, #4
	mov r6, #0
	mov r4, #0x80
_02120718:
	bl sub_02062798
	add r1, r0, r7, lsl #6
	mov r0, r6
	mov r2, r4
	bl NitroSDK_mi_MIi_CpuClearFast
	add r5, r5, #1
	cmp r5, #8
	add r7, r7, #2
	blt _02120718
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02120740: .word 0x000001FF
_02120744: .word 0x04000010
_02120748: .word 0x04000040
_0212074C: .word 0x00002888
_02120750: .word MAIN_BSS_020B26A0

	arm_func_start ov21_02120754
ov21_02120754: ; 0x02120754
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	arm_func_end ov21_02120754

	arm_func_start ov21_02120764
ov21_02120764: ; 0x02120764
	bx lr
	arm_func_end ov21_02120764

	arm_func_start ov21_02120768
ov21_02120768: ; 0x02120768
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r0, #0xc
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl MemoryAlloc_Thunk1
	movs r4, r0
	beq _02120798
	bl ov21_02120754
	mov r4, r0
	arm_func_end ov21_02120768
_02120798:
	ldr ip, [sp, #0x20]
	str r8, [r4, #4]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str ip, [sp]
	bl sub_0200F4FC
	str r0, [r4]
	ldr r1, [r8, #0x24]
	mov r0, r4
	str r1, [r4, #8]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}

	arm_func_start ov21_021207D0
ov21_021207D0: ; 0x021207D0
	ldr r1, _02120824 ; =ptr_FUN_overlay_21_02120c18_overlay_21_02122e60
	mov r3, #0
	stmia r0, {r1, r3}
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	str r3, [r0, #0x10]
	str r3, [r0, #0x14]
	str r3, [r0, #0x18]
	mov r1, #1
	str r1, [r0, #0x1c]
	str r3, [r0, #0x24]
	mov r2, r3
	arm_func_end ov21_021207D0
_02120800:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0x28]
	cmp r3, #0x10
	blt _02120800
	str r2, [r0, #0x78]
	str r2, [r0, #0x80]
	str r2, [r0, #0x88]
	bx lr
	.align 2, 0
_02120824: .word ptr_FUN_overlay_21_02120c18_overlay_21_02122e60

	arm_func_start ov21_02120828
ov21_02120828: ; 0x02120828
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _021208B0 ; =ptr_FUN_overlay_21_02120c18_overlay_21_02122e60
	mov r4, r0
	str r1, [r4]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0212086C
	beq _02120864
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov21_02120828
_02120864:
	mov r0, #0
	str r0, [r4, #0x24]
_0212086C:
	mov r6, #0
	mov r5, r6
_02120874:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0212089C
	beq _02120894
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02120894:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x28]
_0212089C:
	add r6, r6, #1
	cmp r6, #0x10
	blt _02120874
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021208B0: .word ptr_FUN_overlay_21_02120c18_overlay_21_02122e60

	arm_func_start ov21_021208B4
ov21_021208B4: ; 0x021208B4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _02120944 ; =ptr_FUN_overlay_21_02120c18_overlay_21_02122e60
	mov r4, r0
	str r1, [r4]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021208F8
	beq _021208F0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov21_021208B4
_021208F0:
	mov r0, #0
	str r0, [r4, #0x24]
_021208F8:
	mov r6, #0
	mov r5, r6
_02120900:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02120928
	beq _02120920
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02120920:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x28]
_02120928:
	add r6, r6, #1
	cmp r6, #0x10
	blt _02120900
	mov r0, r4
	bl sub_02001470
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02120944: .word ptr_FUN_overlay_21_02120c18_overlay_21_02122e60

	arm_func_start ov21_02120948
ov21_02120948: ; 0x02120948
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _021209D0 ; =ptr_FUN_overlay_21_02120c18_overlay_21_02122e60
	mov r4, r0
	str r1, [r4]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0212098C
	beq _02120984
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end ov21_02120948
_02120984:
	mov r0, #0
	str r0, [r4, #0x24]
_0212098C:
	mov r6, #0
	mov r5, r6
_02120994:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021209BC
	beq _021209B4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_021209B4:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x28]
_021209BC:
	add r6, r6, #1
	cmp r6, #0x10
	blt _02120994
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021209D0: .word ptr_FUN_overlay_21_02120c18_overlay_21_02122e60

	arm_func_start ov21_021209D4
ov21_021209D4: ; 0x021209D4
	ldr r2, [r0, #0x6c]
	add r2, r0, r2, lsl #2
	str r1, [r2, #0x28]
	str r0, [r1, #8]
	ldr r1, [r0, #0x6c]
	add r1, r1, #1
	str r1, [r0, #0x6c]
	bx lr
	arm_func_end ov21_021209D4

	arm_func_start ov21_021209F4
ov21_021209F4: ; 0x021209F4
	str r1, [r0, #0x24]
	str r0, [r1, #4]
	bx lr
	arm_func_end ov21_021209F4

	arm_func_start ov21_02120A00
ov21_02120A00: ; 0x02120A00
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	stmib r5, {r1, r2}
	cmp r1, #0
	ldrne r0, [r5, #8]
	mov r4, r3
	cmpne r0, #0
	ldr r1, [r5, #0x24]
	bne _02120A5C
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x10]
	mov r0, r5
	mov r1, #0
	bl ov21_02120BD0
	mov r0, r5
	mov r1, #0
	bl ov21_02120AF4
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov21_02120A00
_02120A5C:
	cmp r1, #0
	movne r0, #1
	strne r0, [r1, #0x10]
	mov r0, r5
	mov r1, #0
	bl ov21_02120BD0
	mov r0, r5
	mov r1, r4
	bl ov21_02120AF4
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov21_02120A94
ov21_02120A94: ; 0x02120A94
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	str r1, [r5, #0x70]
	str r2, [r5, #0x74]
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _02120ABC
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	arm_func_end ov21_02120A94
_02120ABC:
	ldr r0, [r5, #0x6c]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, pc}
_02120ACC:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x28]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	ldr r0, [r5, #0x6c]
	add r4, r4, #1
	cmp r4, r0
	blt _02120ACC
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov21_02120AF4
ov21_02120AF4: ; 0x02120AF4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x6c]
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, r2
	movgt r1, r2
	movle r1, r0
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, r2
	movgt r1, r2
	movle r1, r0
	cmp r4, r1
	blt _02120B3C
	cmp r0, r2
	movle r2, r0
	sub r4, r2, #1
	arm_func_end ov21_02120AF4
_02120B3C:
	mvn r0, #0
	str r4, [r5, #0xc]
	cmp r4, r0
	bne _02120B74
	mov r1, #0
	str r1, [r5, #0x68]
	ldr r0, [r5, #0x24]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, [r0]
	mov r2, #0xe0
	ldr r3, [r3, #0x14]
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
_02120B74:
	mov r0, r5
	bl ov21_02120BF4
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x28]
	str r0, [r5, #0x68]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r5, #0x24]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r1, r5, r4, lsl #2
	ldr r2, [r1, #0x28]
	ldr r3, [r0]
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #0x10]
	ldr r3, [r3, #0x14]
	blx r3
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov21_02120BC0
ov21_02120BC0: ; 0x02120BC0
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end ov21_02120BC0

	arm_func_start ov21_02120BCC
ov21_02120BCC: ; 0x02120BCC
	bx lr
	arm_func_end ov21_02120BCC

	arm_func_start ov21_02120BD0
ov21_02120BD0: ; 0x02120BD0
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x14]
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	mov r0, r4
	bl ov21_02120BF4
	ldmia sp!, {r4, pc}
	arm_func_end ov21_02120BD0

	arm_func_start ov21_02120BF4
ov21_02120BF4: ; 0x02120BF4
	ldr r2, [r0, #0xc]
	mvn r1, #0
	cmp r2, r1
	moveq r2, #0
	streq r2, [r0, #0x14]
	ldrne r1, [r0, #0x14]
	addne r1, r1, r2
	str r1, [r0, #0x10]
	bx lr
	arm_func_end ov21_02120BF4

	arm_func_start ov21_02120C18
ov21_02120C18: ; 0x02120C18
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r6, [r7, #0x6c]
	ldr r0, [r7, #8]
	mov r5, #0
	cmp r0, r6
	movle r6, r0
	cmp r6, #0
	ble _02120C84
	mov r4, #1
	mov r8, r5
	arm_func_end ov21_02120C18
_02120C44:
	add r1, r7, r5, lsl #2
	ldr r2, [r7, #0x14]
	ldr r0, [r1, #0x28]
	add r2, r2, r5
	str r4, [r0, #0x14]
	ldr r0, [r1, #0x28]
	ldr r1, [r7, #4]
	ldr ip, [r0]
	ldr r1, [r1, r2, lsl #2]
	ldr ip, [ip, #0x18]
	mov r2, r8
	mov r3, r8
	blx ip
	add r5, r5, #1
	cmp r5, r6
	blt _02120C44
_02120C84:
	ldr r0, [r7, #0x6c]
	cmp r5, r0
	ldmgeia sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0
_02120C94:
	add r1, r7, r5, lsl #2
	ldr r0, [r1, #0x28]
	str r4, [r0, #0x14]
	ldr r0, [r1, #0x28]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	ldr r0, [r7, #0x6c]
	add r5, r5, #1
	cmp r5, r0
	blt _02120C94
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov21_02120CC4
ov21_02120CC4: ; 0x02120CC4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x18]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x6c]
	mov r4, #0
	cmp r0, #0
	ble _02120D54
	arm_func_end ov21_02120CC4
_02120CFC:
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #8]
	add r1, r1, r4
	cmp r1, r0
	movge r0, #0
	ldmgeia sp!, {r3, r4, r5, pc}
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x28]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	cmp r0, #0
	beq _02120D44
	mov r0, r5
	mov r1, r4
	bl ov21_02120AF4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02120D44:
	ldr r0, [r5, #0x6c]
	add r4, r4, #1
	cmp r4, r0
	blt _02120CFC
_02120D54:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov21_02120D5C
ov21_02120D5C: ; 0x02120D5C
	ldr r0, [r0, #0x10]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov21_02120D5C

	arm_func_start ov21_02120D70
ov21_02120D70: ; 0x02120D70
	ldr r1, [r0, #8]
	ldr r2, [r0, #0x10]
	sub r0, r1, #1
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov21_02120D70

	arm_func_start ov21_02120D8C
ov21_02120D8C: ; 0x02120D8C
	ldr r0, [r0, #0x14]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov21_02120D8C

	arm_func_start ov21_02120DA0
ov21_02120DA0: ; 0x02120DA0
	ldr r3, [r0, #0x6c]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0x14]
	cmp r2, r3
	movle r3, r2
	sub r0, r2, r3
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	bx lr
	arm_func_end ov21_02120DA0

	arm_func_start ov21_02120DC8
ov21_02120DC8: ; 0x02120DC8
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0x18]
	cmp r1, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r2, [r0, #0xc]
	mvn r1, #0
	cmp r2, r1
	bne _02120E0C
	mov r1, #0
	bl ov21_02120AF4
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov21_02120DC8
_02120E0C:
	cmp r2, #0
	bne _02120E54
	ldr r2, [r0, #0x14]
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0x78]
	cmp r1, #0
	bne _02120E40
	sub r1, r2, #1
	str r1, [r0, #0x14]
	bl ov21_02120BD0
	b _02120E7C
_02120E40:
	mov r1, #3
	str r1, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #0x88]
	b _02120E7C
_02120E54:
	ldr r1, [r0, #0x78]
	cmp r1, #0
	bne _02120E6C
	sub r1, r2, #1
	bl ov21_02120AF4
	b _02120E7C
_02120E6C:
	mov r1, #1
	str r1, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #0x80]
_02120E7C:
	mov r0, #1
	ldmia sp!, {r3, pc}

	arm_func_start ov21_02120E84
ov21_02120E84: ; 0x02120E84
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0x18]
	cmp r1, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r2, [r0, #0x6c]
	ldr r3, [r0, #8]
	cmp r3, r2
	movle r2, r3
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr ip, [r0, #0xc]
	mvn r1, #0
	cmp ip, r1
	bne _02120EE4
	mov r1, #0
	bl ov21_02120AF4
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov21_02120E84
_02120EE4:
	sub r1, r2, #1
	cmp ip, r1
	bne _02120F38
	ldr r2, [r0, #0x14]
	sub r3, r3, #1
	add r1, r2, ip
	cmp r3, r1
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0x78]
	cmp r1, #0
	bne _02120F24
	add r1, r2, #1
	str r1, [r0, #0x14]
	bl ov21_02120BD0
	b _02120F60
_02120F24:
	mov r1, #4
	str r1, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #0x88]
	b _02120F60
_02120F38:
	ldr r1, [r0, #0x78]
	cmp r1, #0
	bne _02120F50
	add r1, ip, #1
	bl ov21_02120AF4
	b _02120F60
_02120F50:
	mov r1, #2
	str r1, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #0x80]
_02120F60:
	mov r0, #1
	ldmia sp!, {r3, pc}

	arm_func_start ov21_02120F68
ov21_02120F68: ; 0x02120F68
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0x18]
	cmp r1, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r3, [r0, #0x14]
	cmp r3, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, [r0, #0xc]
	mvn r1, #0
	cmp r2, r1
	bne _02120FBC
	mov r1, #0
	bl ov21_02120AF4
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov21_02120F68
_02120FBC:
	ldr r1, [r0, #0x6c]
	cmp r3, r1
	movlt r1, #0
	subge r1, r3, r1
	bl ov21_02120BD0
	mov r0, #1
	ldmia sp!, {r3, pc}

	arm_func_start ov21_02120FD8
ov21_02120FD8: ; 0x02120FD8
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0x18]
	cmp r1, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr lr, [r0, #0x6c]
	ldr r1, [r0, #8]
	cmp r1, lr
	movle lr, r1
	cmp lr, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr ip, [r0, #0x14]
	sub r1, r1, lr
	cmp ip, r1
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r3, [r0, #0xc]
	mvn r2, #0
	cmp r3, r2
	bne _0212104C
	mov r1, #0
	bl ov21_02120AF4
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov21_02120FD8
_0212104C:
	add r2, ip, lr
	cmp r2, r1
	movlt r1, r2
	bl ov21_02120BD0
	mov r0, #1
	ldmia sp!, {r3, pc}

	arm_func_start ov21_02121064
ov21_02121064: ; 0x02121064
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0x18]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _021211EC
_02121088: ; jump table
	b _021211EC ; case 0
	b _0212109C ; case 1
	b _02121108 ; case 2
	b _02121174 ; case 3
	b _021211B4 ; case 4
	arm_func_end ov21_02121064
_0212109C:
	ldr r2, [r4, #0x80]
	ldr r1, [r4, #0x84]
	add r2, r2, r1
	str r2, [r4, #0x80]
	ldr r1, [r4, #0x7c]
	cmp r2, r1
	blt _021210D0
	mov r1, #0
	str r1, [r4, #0x18]
	str r1, [r4, #0x80]
	ldr r1, [r4, #0xc]
	sub r1, r1, #1
	bl ov21_02120AF4
_021210D0:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021211EC
	ldr r1, [r4, #0xc]
	ldr r3, [r0]
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x28]
	ldr r2, [r4, #0x80]
	ldr ip, [r1, #0x10]
	ldr r1, [r1, #0xc]
	ldr r3, [r3, #0x14]
	sub r2, ip, r2, asr #12
	blx r3
	b _021211EC
_02121108:
	ldr r2, [r4, #0x80]
	ldr r1, [r4, #0x84]
	add r2, r2, r1
	str r2, [r4, #0x80]
	ldr r1, [r4, #0x7c]
	cmp r2, r1
	blt _0212113C
	mov r1, #0
	str r1, [r4, #0x18]
	str r1, [r4, #0x80]
	ldr r1, [r4, #0xc]
	add r1, r1, #1
	bl ov21_02120AF4
_0212113C:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021211EC
	ldr r1, [r4, #0xc]
	ldr r3, [r0]
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x28]
	ldr ip, [r4, #0x80]
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #0xc]
	ldr r3, [r3, #0x14]
	add r2, r2, ip, asr #12
	blx r3
	b _021211EC
_02121174:
	ldr r2, [r4, #0x88]
	ldr r1, [r4, #0x84]
	sub r2, r2, r1
	str r2, [r4, #0x88]
	ldr r1, [r4, #0x7c]
	rsb r1, r1, #0
	cmp r2, r1
	bgt _021211EC
	mov r1, #0
	str r1, [r4, #0x18]
	str r1, [r4, #0x88]
	ldr r1, [r4, #0x14]
	sub r1, r1, #1
	str r1, [r4, #0x14]
	bl ov21_02120BD0
	b _021211EC
_021211B4:
	ldr r2, [r4, #0x88]
	ldr r1, [r4, #0x84]
	add r2, r2, r1
	str r2, [r4, #0x88]
	ldr r1, [r4, #0x7c]
	cmp r2, r1
	blt _021211EC
	mov r1, #0
	str r1, [r4, #0x18]
	str r1, [r4, #0x88]
	ldr r1, [r4, #0x14]
	add r1, r1, #1
	str r1, [r4, #0x14]
	bl ov21_02120BD0
_021211EC:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldmia sp!, {r4, pc}

	arm_func_start ov21_02121208
ov21_02121208: ; 0x02121208
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _02121234
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	arm_func_end ov21_02121208
_02121234:
	ldr r6, [r4, #0x6c]
	ldr r0, [r4, #8]
	mov r5, #0
	cmp r0, r6
	movle r6, r0
	cmp r6, #0
	ldmleia sp!, {r4, r5, r6, pc}
_02121250:
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #0x28]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	add r5, r5, #1
	cmp r5, r6
	blt _02121250
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov21_02121274
ov21_02121274: ; 0x02121274
	ldr r2, _02121288 ; =ptr_FUN_overlay_21_0212128c_overlay_21_02122f90
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
_02121288: .word ptr_FUN_overlay_21_0212128c_overlay_21_02122f90
	arm_func_end ov21_02121274

	arm_func_start ov21_0212128C
ov21_0212128C: ; 0x0212128C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _021212CC ; =ptr_FUN_overlay_21_0212128c_overlay_21_02122f90
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #0x18]
	cmp r4, #0
	beq _021212C4
	beq _021212BC
	mov r0, r4
	bl ov21_02120764
	mov r0, r4
	bl sub_02001470
	arm_func_end ov21_0212128C
_021212BC:
	mov r0, #0
	str r0, [r5, #0x18]
_021212C4:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021212CC: .word ptr_FUN_overlay_21_0212128c_overlay_21_02122f90

	arm_func_start ov21_021212D0
ov21_021212D0: ; 0x021212D0
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02121318 ; =ptr_FUN_overlay_21_0212128c_overlay_21_02122f90
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #0x18]
	cmp r4, #0
	beq _02121308
	beq _02121300
	mov r0, r4
	bl ov21_02120764
	mov r0, r4
	bl sub_02001470
	arm_func_end ov21_021212D0
_02121300:
	mov r0, #0
	str r0, [r5, #0x18]
_02121308:
	mov r0, r5
	bl sub_02001470
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02121318: .word ptr_FUN_overlay_21_0212128c_overlay_21_02122f90

	arm_func_start ov21_0212131C
ov21_0212131C: ; 0x0212131C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov ip, #3
	mov r2, #0
	mov r4, r0
	mov r0, r1
	mov r3, r2
	str ip, [sp]
	mov r1, #0x10
	bl ov21_02120768
	mov r2, #0x10
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	sub r3, r2, #0x14
	ldr r0, [r0]
	mov r1, #0xb0
	bl sub_0200EBF4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov21_0212131C

	arm_func_start ov21_02121370
ov21_02121370: ; 0x02121370
	ldr r0, [r0, #0x18]
	ldr ip, _02121380 ; =FUN_0200EB84
	ldr r0, [r0]
	bx ip
	.align 2, 0
_02121380: .word sub_0200EB84
	arm_func_end ov21_02121370

	arm_func_start ov21_02121384
ov21_02121384: ; 0x02121384
	bx lr
	arm_func_end ov21_02121384

	arm_func_start ov21_02121388
ov21_02121388: ; 0x02121388
	stmdb sp!, {r4, lr}
	mov r4, r1
	str r4, [r0, #4]
	bl sub_0201001C
	add r0, r0, #0x1000
	mov r1, r4, lsl #0x10
	ldr r0, [r0, #0x434]
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	ldmia sp!, {r4, pc}
	arm_func_end ov21_02121388

	arm_func_start ov21_021213B0
ov21_021213B0: ; 0x021213B0
	stmdb sp!, {r3, lr}
	ldr r2, [r0, #8]
	ldr lr, [r0, #0x18]
	ldr r1, [r2, #0x70]
	ldr ip, [r0, #0xc]
	ldr r3, [r0, #0x10]
	ldr r2, [r2, #0x74]
	ldr r0, [lr]
	add r1, ip, r1
	add r2, r3, r2
	bl sub_0200EB28
	ldmia sp!, {r3, pc}
	arm_func_end ov21_021213B0

	arm_func_start ov21_021213E0
ov21_021213E0: ; 0x021213E0
	ldr r0, [r0, #0x18]
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x14]
	bx lr
	arm_func_end ov21_021213E0

	arm_func_start ov21_021213F4
ov21_021213F4: ; 0x021213F4
	ldr r2, _02121408 ; =ptr_FUN_overlay_21_0212140c_overlay_21_02122f44
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
_02121408: .word ptr_FUN_overlay_21_0212140c_overlay_21_02122f44
	arm_func_end ov21_021213F4

	arm_func_start ov21_0212140C
ov21_0212140C: ; 0x0212140C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0212144C ; =ptr_FUN_overlay_21_0212140c_overlay_21_02122f44
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #0x14]
	cmp r4, #0
	beq _02121444
	beq _0212143C
	mov r0, r4
	bl ov21_02120764
	mov r0, r4
	bl sub_02001470
	arm_func_end ov21_0212140C
_0212143C:
	mov r0, #0
	str r0, [r5, #0x14]
_02121444:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0212144C: .word ptr_FUN_overlay_21_0212140c_overlay_21_02122f44

	arm_func_start ov21_02121450
ov21_02121450: ; 0x02121450
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02121498 ; =ptr_FUN_overlay_21_0212140c_overlay_21_02122f44
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #0x14]
	cmp r4, #0
	beq _02121488
	beq _02121480
	mov r0, r4
	bl ov21_02120764
	mov r0, r4
	bl sub_02001470
	arm_func_end ov21_02121450
_02121480:
	mov r0, #0
	str r0, [r5, #0x14]
_02121488:
	mov r0, r5
	bl sub_02001470
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02121498: .word ptr_FUN_overlay_21_0212140c_overlay_21_02122f44

	arm_func_start ov21_0212149C
ov21_0212149C: ; 0x0212149C
	stmdb sp!, {r3, r4, r5, lr}
	mov r2, #0
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r3, r2
	str r2, [sp]
	mov r1, #0x10
	bl ov21_02120768
	str r0, [r5, #0x14]
	ldr r1, [r4, #0x24]
	mov r0, r4
	mov r2, #0x10
	bl sub_0200F628
	mov r0, #0
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov21_0212149C

	arm_func_start ov21_021214E4
ov21_021214E4: ; 0x021214E4
	ldr r1, [r0, #4]
	ldr r1, [r1, #0x18]
	cmp r1, #0
	beq _02121518
	ldr r1, [r0, #0x14]
	mov r3, #1
	ldr r2, [r1]
	mov r1, #0
	str r3, [r2, #0x14]
	str r1, [r0, #0x18]
	mov r1, #0x14
	str r1, [r0, #0x1c]
	bx lr
	arm_func_end ov21_021214E4
_02121518:
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	subne r1, r1, #1
	strne r1, [r0, #0x1c]
	bxne lr
	ldr r1, [r0, #0x18]
	add r1, r1, #1
	str r1, [r0, #0x18]
	cmp r1, #6
	bne _02121550
	ldr r1, [r0, #0x14]
	mov r2, #0
	ldr r1, [r1]
	str r2, [r1, #0x14]
_02121550:
	ldr r1, [r0, #0x18]
	cmp r1, #0xc
	bxne lr
	ldr r1, [r0, #0x14]
	mov r3, #1
	ldr r2, [r1]
	mov r1, #0
	str r3, [r2, #0x14]
	str r1, [r0, #0x18]
	bx lr

	arm_func_start ov21_02121578
ov21_02121578: ; 0x02121578
	stmdb sp!, {r3, lr}
	ldr lr, [r0, #0x14]
	ldmib r0, {r2, ip}
	ldr r1, [r2, #0x70]
	ldr r3, [r0, #0xc]
	ldr r2, [r2, #0x74]
	ldr r0, [lr]
	add r1, ip, r1
	add r2, r3, r2
	bl sub_0200EB28
	ldmia sp!, {r3, pc}
	arm_func_end ov21_02121578

	arm_func_start ov21_021215A4
ov21_021215A4: ; 0x021215A4
	bx lr
	arm_func_end ov21_021215A4

	arm_func_start ov21_021215A8
ov21_021215A8: ; 0x021215A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov21_021207D0
	ldr r1, _021215C4 ; =PTR_LAB_overlay_21_021216e0_overlay_21_02122f64
	mov r0, r4
	str r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021215C4: .word PTR_LAB_overlay_21_021216e0_overlay_21_02122f64
	arm_func_end ov21_021215A8

	arm_func_start ov21_021215C8
ov21_021215C8: ; 0x021215C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov21_02120948
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov21_021215C8

	arm_func_start ov21_021215DC
ov21_021215DC: ; 0x021215DC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov21_02120948
	mov r0, r4
	bl sub_02001470
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov21_021215DC

	arm_func_start ov21_021215F8
ov21_021215F8: ; 0x021215F8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	str r2, [sl, #0x8c]
	mov r2, #0
	mov r0, #0x20
	mov sb, r1
	str r2, [sl, #0x20]
	bl MemoryAlloc_Thunk1
	movs r4, r0
	beq _02121628
	bl ov21_021213F4
	mov r4, r0
	arm_func_end ov21_021215F8
_02121628:
	mov r0, r4
	mov r1, sb
	bl ov21_0212149C
	mov r0, sl
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x10]
	blx r2
	mov r6, #0
	mov r0, #2
	str r0, [sl, #0x78]
	mov r0, #0x10000
	str r0, [sl, #0x7c]
	mov r0, #0x2000
	mov r8, r6
	str r0, [sl, #0x84]
	mov r4, r6
	mov r5, #0x1c
_02121670:
	mov r0, r5
	bl MemoryAlloc_Thunk1
	movs r7, r0
	beq _02121688
	bl ov21_02121274
	mov r7, r0
_02121688:
	mov r0, r7
	mov r1, sb
	bl ov21_0212131C
	mov r0, r7
	ldr r3, [r0]
	mov r1, r4
	ldr r3, [r3, #0x24]
	mov r2, r8
	blx r3
	mov r0, sl
	mov r1, r7
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	add r6, r6, #1
	cmp r6, #6
	add r8, r8, #0x10
	blt _02121670
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start ov21_021216D4
ov21_021216D4: ; 0x021216D4
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	arm_func_end ov21_021216D4

	arm_func_start ov21_021216E0
ov21_021216E0: ; 0x021216E0
	ldr ip, _021216E8 ; =ov21_02120C18
	bx ip
	.align 2, 0
_021216E8: .word ov21_02120C18
	arm_func_end ov21_021216E0

	arm_func_start ov21_021216EC
ov21_021216EC: ; 0x021216EC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	arm_func_end ov21_021216EC
_021216F8:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02121714
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
_02121714:
	add r4, r4, #1
	cmp r4, #6
	blt _021216F8
	mov r0, r5
	bl ov21_02121208
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov21_0212172C
ov21_0212172C: ; 0x0212172C
	bx lr
	arm_func_end ov21_0212172C

	arm_func_start ov21_02121730
ov21_02121730: ; 0x02121730
	ldr r1, _02121758 ; =ptr_FUN_overlay_21_0212175c_overlay_21_02123080
	mov r3, #0
	str r1, [r0]
	mov r2, r3
	arm_func_end ov21_02121730
_02121740:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0x18]
	cmp r3, #3
	blt _02121740
	bx lr
	.align 2, 0
_02121758: .word ptr_FUN_overlay_21_0212175c_overlay_21_02123080

	arm_func_start ov21_0212175C
ov21_0212175C: ; 0x0212175C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _021217B4 ; =ptr_FUN_overlay_21_0212175c_overlay_21_02123080
	mov r7, r0
	mov r5, #0
	str r1, [r7]
	mov r4, r5
	arm_func_end ov21_0212175C
_02121774:
	add r0, r7, r5, lsl #2
	ldr r6, [r0, #0x18]
	cmp r6, #0
	beq _021217A0
	beq _02121798
	mov r0, r6
	bl ov21_02120764
	mov r0, r6
	bl sub_02001470
_02121798:
	add r0, r7, r5, lsl #2
	str r4, [r0, #0x18]
_021217A0:
	add r5, r5, #1
	cmp r5, #3
	blt _02121774
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021217B4: .word ptr_FUN_overlay_21_0212175c_overlay_21_02123080

	arm_func_start ov21_021217B8
ov21_021217B8: ; 0x021217B8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02121818 ; =ptr_FUN_overlay_21_0212175c_overlay_21_02123080
	mov r7, r0
	mov r5, #0
	str r1, [r7]
	mov r4, r5
	arm_func_end ov21_021217B8
_021217D0:
	add r0, r7, r5, lsl #2
	ldr r6, [r0, #0x18]
	cmp r6, #0
	beq _021217FC
	beq _021217F4
	mov r0, r6
	bl ov21_02120764
	mov r0, r6
	bl sub_02001470
_021217F4:
	add r0, r7, r5, lsl #2
	str r4, [r0, #0x18]
_021217FC:
	add r5, r5, #1
	cmp r5, #3
	blt _021217D0
	mov r0, r7
	bl sub_02001470
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02121818: .word ptr_FUN_overlay_21_0212175c_overlay_21_02123080

	arm_func_start ov21_0212181C
ov21_0212181C: ; 0x0212181C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r7, #0
	mov sb, r0
	mov r8, r1
	mov r6, #2
	mov r5, r7
	mov r4, r7
	mov sl, #0x10
	arm_func_end ov21_0212181C
_02121840:
	str r6, [sp]
	ldr r0, [r8, r7, lsl #2]
	mov r1, r5
	mov r2, r5
	mov r3, r5
	bl ov21_02120768
	add r1, sb, r7, lsl #2
	str r0, [r1, #0x18]
	str r4, [sp]
	ldr r0, [r1, #0x18]
	mov r1, sl
	ldr r0, [r0]
	mov r2, sl
	mov r3, r4
	bl sub_0200EBF4
	add r7, r7, #1
	cmp r7, #3
	blt _02121840
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start ov21_02121890
ov21_02121890: ; 0x02121890
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #8]
	ldr r1, [r1, #0x20]
	cmp r1, #3
	movge r0, #0
	ldmgeia sp!, {r3, pc}
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x18]
	ldr r0, [r0]
	bl sub_0200EB84
	ldmia sp!, {r3, pc}
	arm_func_end ov21_02121890

	arm_func_start ov21_021218BC
ov21_021218BC: ; 0x021218BC
	bx lr
	arm_func_end ov21_021218BC

	arm_func_start ov21_021218C0
ov21_021218C0: ; 0x021218C0
	stmdb sp!, {r3, lr}
	str r1, [r0, #4]
	ldr r3, [r0, #8]
	ldr r3, [r3, #0x20]
	cmp r3, #0
	beq _021218EC
	cmp r3, #1
	beq _02121904
	cmp r3, #2
	beq _02121938
	ldmia sp!, {r3, pc}
	arm_func_end ov21_021218C0
_021218EC:
	add r0, r0, r3, lsl #2
	ldr r3, [r0, #0x18]
	mov r2, r1
	ldmib r3, {r0, r1}
	bl sub_0200F628
	ldmia sp!, {r3, pc}
_02121904:
	cmp r2, #0
	add r0, r0, r3, lsl #2
	beq _02121924
	ldr r3, [r0, #0x18]
	mov r2, r1
	ldmib r3, {r0, r1}
	bl sub_0200F628
	ldmia sp!, {r3, pc}
_02121924:
	ldr r1, [r0, #0x18]
	mov r2, #0x13
	ldmib r1, {r0, r1}
	bl sub_0200F628
	ldmia sp!, {r3, pc}
_02121938:
	cmp r2, #0
	bne _02121958
	add r0, r0, r3, lsl #2
	ldr r1, [r0, #0x18]
	mov r2, #0x18
	ldmib r1, {r0, r1}
	bl sub_0200F628
	ldmia sp!, {r3, pc}
_02121958:
	cmp r1, #0
	bne _02121978
	add r0, r0, r3, lsl #2
	ldr r1, [r0, #0x18]
	mov r2, #0x17
	ldmib r1, {r0, r1}
	bl sub_0200F628
	ldmia sp!, {r3, pc}
_02121978:
	cmp r1, #0x18
	add r0, r0, r3, lsl #2
	bne _02121998
	ldr r1, [r0, #0x18]
	mov r2, #0x19
	ldmib r1, {r0, r1}
	bl sub_0200F628
	ldmia sp!, {r3, pc}
_02121998:
	ldr r3, [r0, #0x18]
	sub r2, r1, #1
	ldmib r3, {r0, r1}
	bl sub_0200F628
	ldmia sp!, {r3, pc}

	arm_func_start ov21_021219AC
ov21_021219AC: ; 0x021219AC
	stmdb sp!, {r3, lr}
	mov r3, #0
	mov r2, r3
	arm_func_end ov21_021219AC
_021219B8:
	add r1, r0, r3, lsl #2
	ldr r1, [r1, #0x18]
	add r3, r3, #1
	ldr r1, [r1]
	cmp r3, #3
	str r2, [r1, #0x14]
	blt _021219B8
	ldr r1, [r0, #0x14]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #8]
	ldr r1, [r1, #0x20]
	cmp r1, #3
	ldmgeia sp!, {r3, pc}
	add r3, r0, r1, lsl #2
	ldr r1, [r3, #0x18]
	mov r2, #1
	ldr r1, [r1]
	str r2, [r1, #0x14]
	ldr r2, [r0, #8]
	ldr lr, [r3, #0x18]
	ldr ip, [r0, #0xc]
	ldr r1, [r2, #0x70]
	ldr r3, [r0, #0x10]
	ldr r2, [r2, #0x74]
	ldr r0, [lr]
	add r1, ip, r1
	add r2, r3, r2
	bl sub_0200EB28
	ldmia sp!, {r3, pc}

	arm_func_start ov21_02121A30
ov21_02121A30: ; 0x02121A30
	bx lr
	arm_func_end ov21_02121A30

	arm_func_start ov21_02121A34
ov21_02121A34: ; 0x02121A34
	ldr r1, _02121A5C ; =ptr_FUN_overlay_21_02121a60_overlay_21_02123034
	mov r2, #0
	str r1, [r0]
	str r2, [r0, #0x14]
	mov r1, #1
	str r1, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x24]
	str r2, [r0, #0x20]
	bx lr
	.align 2, 0
_02121A5C: .word ptr_FUN_overlay_21_02121a60_overlay_21_02123034
	arm_func_end ov21_02121A34

	arm_func_start ov21_02121A60
ov21_02121A60: ; 0x02121A60
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02121AA0 ; =ptr_FUN_overlay_21_02121a60_overlay_21_02123034
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #0x14]
	cmp r4, #0
	beq _02121A98
	beq _02121A90
	mov r0, r4
	bl ov21_02120764
	mov r0, r4
	bl sub_02001470
	arm_func_end ov21_02121A60
_02121A90:
	mov r0, #0
	str r0, [r5, #0x14]
_02121A98:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02121AA0: .word ptr_FUN_overlay_21_02121a60_overlay_21_02123034

	arm_func_start ov21_02121AA4
ov21_02121AA4: ; 0x02121AA4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02121AEC ; =ptr_FUN_overlay_21_02121a60_overlay_21_02123034
	mov r5, r0
	str r1, [r5]
	ldr r4, [r5, #0x14]
	cmp r4, #0
	beq _02121ADC
	beq _02121AD4
	mov r0, r4
	bl ov21_02120764
	mov r0, r4
	bl sub_02001470
	arm_func_end ov21_02121AA4
_02121AD4:
	mov r0, #0
	str r0, [r5, #0x14]
_02121ADC:
	mov r0, r5
	bl sub_02001470
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02121AEC: .word ptr_FUN_overlay_21_02121a60_overlay_21_02123034

	arm_func_start ov21_02121AF0
ov21_02121AF0: ; 0x02121AF0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r2, #0
	mov r4, r0
	mov r0, r1
	mov r3, r2
	mov r1, #0x11
	str r2, [sp]
	bl ov21_02120768
	str r0, [r4, #0x14]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov21_02121AF0

	arm_func_start ov21_02121B20
ov21_02121B20: ; 0x02121B20
	ldr r2, [r0, #4]
	ldr r1, [r0, #0x24]
	ldr r2, [r2, #0x10]
	cmp r1, r2
	beq _02121B48
	str r2, [r0, #0x24]
	mov r1, #1
	str r1, [r0, #0x18]
	mov r1, #0x14
	str r1, [r0, #0x20]
	arm_func_end ov21_02121B20
_02121B48:
	ldr r1, [r0, #0x20]
	cmp r1, #0
	subne r1, r1, #1
	strne r1, [r0, #0x20]
	bxne lr
	ldr r1, [r0, #4]
	ldr r1, [r1, #0x18]
	cmp r1, #0
	beq _02121B80
	mov r1, #1
	str r1, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #0x1c]
	bx lr
_02121B80:
	ldr r1, [r0, #0x1c]
	add r1, r1, #1
	str r1, [r0, #0x1c]
	cmp r1, #6
	moveq r1, #0
	streq r1, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	cmp r1, #0xc
	bxne lr
	mov r1, #1
	str r1, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #0x1c]
	bx lr

	arm_func_start ov21_02121BB8
ov21_02121BB8: ; 0x02121BB8
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _02121BDC
	ldr r0, [r0, #0x14]
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}
	arm_func_end ov21_02121BB8
_02121BDC:
	ldr r2, [r0, #0x14]
	ldr r1, [r0, #0x18]
	ldr r2, [r2]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	str r1, [r2, #0x14]
	ldmib r0, {r2, ip}
	ldr r1, [r2, #0x70]
	ldr lr, [r0, #0x14]
	ldr r3, [r0, #0xc]
	ldr r2, [r2, #0x74]
	ldr r0, [lr]
	add r1, ip, r1
	add r2, r3, r2
	bl sub_0200EB28
	ldmia sp!, {r3, pc}

	arm_func_start ov21_02121C20
ov21_02121C20: ; 0x02121C20
	bx lr
	arm_func_end ov21_02121C20

	arm_func_start ov21_02121C24
ov21_02121C24: ; 0x02121C24
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov21_021207D0
	ldr r1, _02121C40 ; =ptr_FUN_overlay_1_02121d78_overlay_21_02123054
	mov r0, r4
	str r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02121C40: .word ptr_FUN_overlay_1_02121d78_overlay_21_02123054
	arm_func_end ov21_02121C24

	arm_func_start ov21_02121C44
ov21_02121C44: ; 0x02121C44
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov21_02120948
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov21_02121C44

	arm_func_start ov21_02121C58
ov21_02121C58: ; 0x02121C58
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov21_02120948
	mov r0, r4
	bl sub_02001470
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov21_02121C58

	arm_func_start ov21_02121C74
ov21_02121C74: ; 0x02121C74
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r4, #0
	str r4, [sl, #0x20]
	ldr r3, [r3, #0x10]
	mov sb, r1
	mov fp, r2
	arm_func_end ov21_02121C74
_02121C90:
	add r0, r3, r4, lsl #2
	ldr r1, [r0, #0x814]
	add r0, sl, r4, lsl #2
	add r4, r4, #1
	str r1, [r0, #0x8c]
	cmp r4, #0x12
	blt _02121C90
	mov r2, #0
_02121CB0:
	add r0, r3, r2, lsl #2
	ldr r1, [r0, #0x85c]
	add r0, sl, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0xd4]
	cmp r2, #0x19
	blt _02121CB0
	mov r6, #0
	mov r8, r6
	mov r4, r6
	mov r5, #0x24
_02121CDC:
	mov r0, r5
	bl MemoryAlloc_Thunk1
	movs r7, r0
	beq _02121CF4
	bl ov21_02121730
	mov r7, r0
_02121CF4:
	mov r0, r7
	mov r1, sb
	bl ov21_0212181C
	mov r0, r7
	ldr r3, [r0]
	mov r1, r8
	mov r2, r4
	ldr r3, [r3, #0x24]
	blx r3
	mov r1, r7
	mov r0, sl
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	add r8, r8, #0x18
	add r6, r6, #1
	cmp r6, #9
	blt _02121CDC
	mov r0, #0x28
	bl MemoryAlloc_Thunk1
	movs r4, r0
	beq _02121D54
	bl ov21_02121A34
	mov r4, r0
_02121D54:
	mov r0, r4
	mov r1, fp
	bl ov21_02121AF0
	mov r0, sl
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x10]
	blx r2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov21_02121D78
ov21_02121D78: ; 0x02121D78
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r8, [sb, #0x6c]
	ldr r0, [sb, #8]
	mov r7, #0
	cmp r0, r8
	movle r8, r0
	cmp r8, #0
	ble _02121E30
	mov r4, r7
	mov r6, #1
	mov r5, r7
	arm_func_end ov21_02121D78
_02121DA8:
	add r0, sb, r7, lsl #2
	ldr r1, [sb, #0x14]
	ldr r0, [r0, #0x28]
	mov r2, r5
	str r6, [r0, #0x14]
	ldr r0, [sb, #0x20]
	add r1, r7, r1
	cmp r0, #0
	beq _02121E04
	cmp r0, #1
	beq _02121DE0
	cmp r0, #2
	beq _02121DF4
	b _02121E04
_02121DE0:
	ldr r0, [sb, #4]
	ldr r0, [r0, r1, lsl #2]
	add r0, sb, r0, lsl #2
	ldr r2, [r0, #0x8c]
	b _02121E04
_02121DF4:
	ldr r0, [sb, #4]
	ldr r0, [r0, r1, lsl #2]
	add r0, sb, r0, lsl #2
	ldr r2, [r0, #0xd4]
_02121E04:
	add r0, sb, r7, lsl #2
	ldr r0, [r0, #0x28]
	ldr r3, [sb, #4]
	ldr ip, [r0]
	ldr r1, [r3, r1, lsl #2]
	ldr ip, [ip, #0x18]
	mov r3, r4
	blx ip
	add r7, r7, #1
	cmp r7, r8
	blt _02121DA8
_02121E30:
	mov r4, #0
	b _02121E58
_02121E38:
	add r1, sb, r7, lsl #2
	ldr r0, [r1, #0x28]
	str r4, [r0, #0x14]
	ldr r0, [r1, #0x28]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	add r7, r7, #1
_02121E58:
	ldr r0, [sb, #0x6c]
	ldr r1, [sb, #8]
	cmp r1, r0
	movgt r1, r0
	cmp r7, r1
	blt _02121E38
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov21_02121E74
ov21_02121E74: ; 0x02121E74
	ldr r2, _02121E8C ; =PTR_LAB_overlay_21_02121e90_overlay_21_02123128
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #0x18]
	str r1, [r0, #0x24]
	bx lr
	.align 2, 0
_02121E8C: .word PTR_LAB_overlay_21_02121e90_overlay_21_02123128
	arm_func_end ov21_02121E74

	arm_func_start ov21_02121E90
ov21_02121E90: ; 0x02121E90
	bx lr
	arm_func_end ov21_02121E90

	arm_func_start ov21_02121E94
ov21_02121E94: ; 0x02121E94
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02001470
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov21_02121E94

	arm_func_start ov21_02121EA8
ov21_02121EA8: ; 0x02121EA8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	str r1, [r4, #0x24]
	mov r0, #2
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4, #0x24]
	mov r3, r2
	mov r1, #0xb
	bl sub_0200F4FC
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x24]
	mov r2, #0x14
	ldr r1, [r0, #0x24]
	mov r0, #8
	str r1, [r4, #0x1c]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	sub r3, r2, #0x18
	mov r1, #0x68
	bl sub_0200EBF4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov21_02121EA8

	arm_func_start ov21_02121F08
ov21_02121F08: ; 0x02121F08
	ldr ip, _02121F14 ; =FUN_0200EB84
	ldr r0, [r0, #0x18]
	bx ip
	.align 2, 0
_02121F14: .word sub_0200EB84
	arm_func_end ov21_02121F08

	arm_func_start ov21_02121F18
ov21_02121F18: ; 0x02121F18
	bx lr
	arm_func_end ov21_02121F18

	arm_func_start ov21_02121F1C
ov21_02121F1C: ; 0x02121F1C
	str r1, [r0, #4]
	bx lr
	arm_func_end ov21_02121F1C

	arm_func_start ov21_02121F24
ov21_02121F24: ; 0x02121F24
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	ldr ip, [r4, #0xc]
	ldr r1, [r0, #0x70]
	ldr r3, [r4, #0x10]
	ldr r2, [r0, #0x74]
	ldr r0, [r4, #0x18]
	add r1, ip, r1
	add r2, r3, r2
	bl sub_0200EB28
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x68]
	cmp r4, r0
	bne _02121F98
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	ldr r0, [r4, #0x24]
	beq _02121F8C
	mov r2, #0xf
	bl sub_0200F628
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	str r0, [r4, #0x20]
	ldmia sp!, {r4, pc}
	arm_func_end ov21_02121F24
_02121F8C:
	mov r2, #0xe
	bl sub_0200F628
	ldmia sp!, {r4, pc}
_02121F98:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x1c]
	mov r2, #0xd
	bl sub_0200F628
	ldmia sp!, {r4, pc}

	arm_func_start ov21_02121FAC
ov21_02121FAC: ; 0x02121FAC
	mov r1, #8
	str r1, [r0, #0x20]
	bx lr
	arm_func_end ov21_02121FAC

	arm_func_start ov21_02121FB8
ov21_02121FB8: ; 0x02121FB8
	bx lr
	arm_func_end ov21_02121FB8

	arm_func_start ov21_02121FBC
ov21_02121FBC: ; 0x02121FBC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov21_021207D0
	ldr r1, _02121FD8 ; =ptr_FUN_overlay_21_02120c18_overlay_21_021230fc
	mov r0, r4
	str r1, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02121FD8: .word ptr_FUN_overlay_21_02120c18_overlay_21_021230fc
	arm_func_end ov21_02121FBC

	arm_func_start ov21_02121FDC
ov21_02121FDC: ; 0x02121FDC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov21_02120948
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov21_02121FDC

	arm_func_start ov21_02121FF0
ov21_02121FF0: ; 0x02121FF0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov21_02120948
	mov r0, r4
	bl sub_02001470
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov21_02121FF0

	arm_func_start ov21_0212200C
ov21_0212200C: ; 0x0212200C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r6, #0
	mov sl, r0
	mov sb, r1
	mov r8, r6
	mov r4, r6
	mov r5, #0x28
	arm_func_end ov21_0212200C
_02122028:
	mov r0, r5
	bl MemoryAlloc_Thunk1
	movs r7, r0
	beq _02122040
	bl ov21_02121E74
	mov r7, r0
_02122040:
	mov r0, r7
	mov r1, sb
	bl ov21_02121EA8
	mov r0, r7
	ldr r3, [r0]
	mov r1, r4
	ldr r3, [r3, #0x24]
	mov r2, r8
	blx r3
	mov r0, sl
	mov r1, r7
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	add r6, r6, #1
	cmp r6, #4
	add r8, r8, #0x14
	blt _02122028
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start ov21_0212208C
ov21_0212208C: ; 0x0212208C
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x48]
	bl ov21_021220B8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov21_0212208C

	arm_func_start ov21_021220A4
ov21_021220A4: ; 0x021220A4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov21_02122180
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov21_021220A4

	arm_func_start ov21_021220B8
ov21_021220B8: ; 0x021220B8
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r4, r0
	strh r2, [r4]
	str r2, [r4, #0x10]
	mov r1, r2
	arm_func_end ov21_021220B8
_021220D0:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x24]
	cmp r2, #6
	blt _021220D0
	str r1, [r4, #4]
	mov r0, #0x68
	str r1, [r4, #0x3c]
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _02122104
	ldr r1, [r4, #0x48]
	bl sub_0202A510
_02122104:
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x40]
	ldmia sp!, {r4, pc}

	arm_func_start ov21_02122114
ov21_02122114: ; 0x02122114
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0202A5A8
	ldmia sp!, {r3, pc}
	arm_func_end ov21_02122114

	arm_func_start ov21_0212212C
ov21_0212212C: ; 0x0212212C
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0202A5EC
	ldmia sp!, {r3, pc}
	arm_func_end ov21_0212212C

	arm_func_start ov21_02122144
ov21_02122144: ; 0x02122144
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0212215C
	bl sub_0202A5F8
	arm_func_end ov21_02122144
_0212215C:
	mov r0, r4
	bl ov21_02122608
	ldmia sp!, {r4, pc}

	arm_func_start ov21_02122168
ov21_02122168: ; 0x02122168
	ldr r0, [r0, #0x48]
	ldr ip, _0212217C ; =FUN_0200CB90
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bx ip
	.align 2, 0
_0212217C: .word sub_0200CB90
	arm_func_end ov21_02122168

	arm_func_start ov21_02122180
ov21_02122180: ; 0x02122180
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x48]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _021221C0
	beq _021221B8
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl sub_02001470
	arm_func_end ov21_02122180
_021221B8:
	mov r0, #0
	str r0, [r4, #0x10]
_021221C0:
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _021221E8
	beq _021221E0
	mov r0, r5
	bl sub_0202A528
	mov r0, r5
	bl sub_02001470
_021221E0:
	mov r0, #0
	str r0, [r4, #8]
_021221E8:
	ldr r5, [r4, #0x3c]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02122208
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl sub_02001470
_02122208:
	mov r0, #0
	str r0, [r4, #0x3c]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start ov21_02122214
ov21_02122214: ; 0x02122214
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r4, r0
	bl ov21_02122368
	mov r2, #0
	mov r1, #0x20
	strb r1, [sp, #0xc]
	add r0, sp, #0x10
	str r2, [sp, #0x14]
	str r2, [sp, #0x10]
	stmia sp, {r0, r2}
	ldr r0, [r4, #8]
	add r2, sp, #0xc
	add r3, sp, #0x14
	mov r1, #6
	bl sub_0202A724
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _0212227C
	beq _02122274
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl sub_02001470
	arm_func_end ov21_02122214
_02122274:
	mov r0, #0
	str r0, [r4, #0x10]
_0212227C:
	mov r0, #4
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _02122294
	ldr r1, _02122354 ; =s_data_message_etc_pokebook_info_overlay_21_02123150
	bl sub_02021404
_02122294:
	str r0, [r4, #0x10]
	ldr r5, [r4, #0x3c]
	cmp r5, #0
	beq _021222C0
	beq _021222B8
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl sub_02001470
_021222B8:
	mov r0, #0
	str r0, [r4, #0x3c]
_021222C0:
	mov r0, #0x64
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _021222D8
	ldr r1, [r4, #0x48]
	bl sub_0201FC9C
_021222D8:
	str r0, [r4, #0x3c]
	mov r1, #5
	bl sub_02020328
	ldr r0, [r4, #0x3c]
	ldr r1, _02122358 ; =s_menu_overlay_21_02123170
	ldr r2, _0212235C ; =s_mam000_bg_overlay_21_02123178
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x3c]
	ldr r1, _02122360 ; =s_mam000_overlay_21_02123184
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x3c]
	ldr r1, _02122360 ; =s_mam000_overlay_21_02123184
	mov r3, #8
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #0x3c]
	ldr r1, _02122364 ; =s_mam000_01_overlay_21_0212318c
	mov r3, #8
	bl sub_020205DC
	ldr r0, [r4, #0x3c]
	bl sub_020204A8
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02122354: .word s_data_message_etc_pokebook_info_overlay_21_02123150
_02122358: .word s_menu_overlay_21_02123170
_0212235C: .word s_mam000_bg_overlay_21_02123178
_02122360: .word s_mam000_overlay_21_02123184
_02122364: .word s_mam000_01_overlay_21_0212318c

	arm_func_start ov21_02122368
ov21_02122368: ; 0x02122368
	ldr r0, _021223F4 ; =0x04001000
	ldr r1, _021223F8 ; =0xFFCFFFEF
	ldr r3, [r0]
	mov r2, #0
	bic r3, r3, #0x1f00
	orr r3, r3, #0x1500
	str r3, [r0]
	ldr r3, [r0]
	and r1, r3, r1
	orr r1, r1, #0x10
	str r1, [r0]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	ldrh r1, [r0, #0xa]
	and r1, r1, #0x43
	orr r1, r1, #0xc
	orr r1, r1, #0x800
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xc]
	and r1, r1, #0x43
	orr r1, r1, #0x990
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #8]
	bic r1, r1, #3
	strh r1, [r0, #8]
	ldrh r1, [r0, #0xa]
	bic r1, r1, #3
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xc]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r0, #0xc]
	bx lr
	.align 2, 0
_021223F4: .word 0x04001000
_021223F8: .word 0xFFCFFFEF
	arm_func_end ov21_02122368

	arm_func_start ov21_021223FC
ov21_021223FC: ; 0x021223FC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0212241C
	mov r1, #0
	bl sub_0202AD04
	arm_func_end ov21_021223FC
_0212241C:
	ldr r0, [r4, #0x3c]
	bl sub_0201FD24
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_0201FDE8
	ldr r0, [r4, #0x3c]
	bl sub_0201FEBC
	mov r0, r4
	bl ov21_021226AC
	ldr r0, [r4, #0x48]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r0, [r4, #0x48]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	ldr r0, [r4, #0x48]
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
	ldr r0, [r4, #0x48]
	mov r2, #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CCD0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov21_021224B4
ov21_021224B4: ; 0x021224B4
	mov r2, #1
	strh r2, [r0]
	str r2, [r0, #0x40]
	ldrh r3, [r1]
	add r2, r1, #4
	add ip, r0, #0x18
	strh r3, [r0, #0x14]
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x16]
	ldmia r2, {r2, r3}
	stmia ip, {r2, r3}
	bx lr
	arm_func_end ov21_021224B4

	arm_func_start ov21_021224E4
ov21_021224E4: ; 0x021224E4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov21_02122368
	mov r0, #1
	strh r0, [r5]
	str r0, [r5, #0x40]
	ldrh r1, [r4]
	mov r0, r5
	add r2, r4, #4
	strh r1, [r5, #0x14]
	ldrh r3, [r4, #2]
	add r1, r5, #0x18
	strh r3, [r5, #0x16]
	ldmia r2, {r2, r3}
	stmia r1, {r2, r3}
	bl ov21_021223FC
	mov r0, r5
	bl ov21_02122168
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov21_021224E4

	arm_func_start ov21_02122534
ov21_02122534: ; 0x02122534
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021225E8
	add r1, r4, #0x18
	bl sub_0202AF5C
	cmp r0, #0
	beq _0212259C
	ldr ip, _021225F4 ; =0x04001000
	mov r1, #0
	ldr r2, [ip]
	ldr r0, [ip]
	and r2, r2, #0x1f00
	mov r3, r2, lsr #8
	bic r2, r0, #0x1f00
	bic r0, r3, #2
	orr r0, r2, r0, lsl #8
	mov r2, r1
	str r0, [ip]
	mov r3, #8
	add r0, ip, #0x50
	str r3, [sp]
	bl sub_02062C10
	b _021225D8
	arm_func_end ov21_02122534
_0212259C:
	ldr r2, _021225F4 ; =0x04001000
	mov r3, #8
	ldr r1, [r2]
	ldr r0, [r2]
	and r1, r1, #0x1f00
	mov ip, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, ip, #2
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	add r0, r2, #0x50
	mov r1, #4
	mov r2, #0x20
	str r3, [sp]
	bl sub_02062C10
_021225D8:
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #4
	bl sub_0202B50C
_021225E8:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_021225F4: .word 0x04001000

	arm_func_start ov21_021225F8
ov21_021225F8: ; 0x021225F8
	strh r1, [r0, #0x44]
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end ov21_021225F8

	arm_func_start ov21_02122608
ov21_02122608: ; 0x02122608
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r1, [r4, #0x40]
	cmp r1, #0
	beq _0212262C
	bl ov21_02122534
	mov r0, #0
	str r0, [r4, #0x40]
	arm_func_end ov21_02122608
_0212262C:
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	str r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x48]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CF7C
	ldr r1, [r4, #0x48]
	ldr r0, [r4, #0x10]
	add r1, r1, #0x1000
	ldr r4, [r1, #0x498]
	mov r1, #0x15
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
	ldmia sp!, {r4, pc}

	arm_func_start ov21_021226AC
ov21_021226AC: ; 0x021226AC
	ldr r1, [r0, #8]
	ldr ip, _021226BC ; =ov21_021225F8
	ldrh r1, [r1, #0x56]
	bx ip
	.align 2, 0
_021226BC: .word ov21_021225F8
	arm_func_end ov21_021226AC

	arm_func_start ov21_021226C0
ov21_021226C0: ; 0x021226C0
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x14
	ldr r3, _0212271C ; =0x0000010E
	add r1, r0, #0x800
	mov r0, #0
	mov r2, #0x48
	str r3, [r4]
	bl NitroSDK_mi_MIi_CpuClearFast
	add r0, r4, #0x5c
	add r1, r0, #0x800
	mov r0, #0
	mov r2, #0x64
	bl NitroSDK_mi_MIi_CpuClearFast
	mov r0, r4
	bl ov21_02122A8C
	mov r1, #0
	str r0, [r4, #0x810]
	mov r0, r4
	mov r2, r1
	bl ov21_02122724
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0212271C: .word 0x0000010E
	arm_func_end ov21_021226C0

	arm_func_start ov21_02122720
ov21_02122720: ; 0x02122720
	bx lr
	arm_func_end ov21_02122720

	arm_func_start ov21_02122724
ov21_02122724: ; 0x02122724
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, r1
	mov r4, r0
	mov r5, r2
	bl sub_0201001C
	ldr r6, _02122A78 ; =MAIN_BSS_020B26A0
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02122748: ; jump table
	b _02122758 ; case 0
	b _02122814 ; case 1
	b _021228D8 ; case 2
	b _0212299C ; case 3
	arm_func_end ov21_02122724
_02122758:
	ldr r2, _02122A7C ; =PTR_DAT_overlay_21_02123484_overlay_21_021231a4
	ldr r1, _02122A80 ; =DAT_overlay_21_021231c8
	ldr r7, [r2, r5, lsl #2]
	ldr r8, [r1, r5, lsl #2]
	mov sb, #0
	str sb, [r4, #0x80c]
	cmp r8, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr fp, _02122A84 ; =DAT_overlay_21_02123618
	add r5, r0, #0x1000
_02122780:
	ldr sl, [r7, sb, lsl #2]
	mov r1, #0xc
	mla r1, sl, r1, fp
	ldrh r1, [r1, #2]
	ldr r0, [r5, #0x434]
	bl sub_020107A8
	ldr r1, _02122A88 ; =OVERLAY21_BSS_021242C4
	ldrh r2, [r0]
	ldr r1, [r1]
	cmp r1, #0
	bne _021227EC
	cmp r2, #0
	blt _021227E0
	cmp r2, #0x1f4
	bge _021227E0
	mov r0, r2, asr #4
	add r0, r6, r0, lsl #2
	add r0, r0, #0x7000
	mov r1, r2, lsl #0x1c
	ldr r2, [r0, #0xc3c]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #3
	b _021227E4
_021227E0:
	mov r0, #0
_021227E4:
	cmp r0, #0
	beq _02122804
_021227EC:
	ldr r0, [r4, #0x80c]
	mov r1, r0
	add r0, r0, #1
	str r0, [r4, #0x80c]
	add r0, r4, r1, lsl #2
	str sl, [r0, #8]
_02122804:
	add sb, sb, #1
	cmp sb, r8
	blt _02122780
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02122814:
	mov sb, #0
	str sb, [r4, #0x80c]
	ldr r1, [r4]
	cmp r1, #0
	ble _021228CC
	ldr sl, _02122A84 ; =DAT_overlay_21_02123618
	ldr r8, _02122A88 ; =OVERLAY21_BSS_021242C4
	add r7, r0, #0x1000
	mov fp, sb
_02122838:
	ldrh r1, [sl, #2]
	ldr r0, [r7, #0x434]
	bl sub_020107A8
	ldrb r1, [r0, #4]
	ldrh r0, [r0]
	cmp r1, r5
	bne _021228B8
	ldr r1, [r8]
	cmp r1, #0
	bne _021228A0
	cmp r0, #0
	blt _02122894
	cmp r0, #0x1f4
	bge _02122894
	mov r1, r0, asr #4
	add r1, r6, r1, lsl #2
	add r1, r1, #0x7000
	mov r0, r0, lsl #0x1c
	ldr r1, [r1, #0xc3c]
	mov r0, r0, lsr #0x1b
	mov r0, r1, lsr r0
	and r0, r0, #3
	b _02122898
_02122894:
	mov r0, fp
_02122898:
	cmp r0, #2
	bne _021228B8
_021228A0:
	ldr r0, [r4, #0x80c]
	mov r1, r0
	add r0, r0, #1
	str r0, [r4, #0x80c]
	add r0, r4, r1, lsl #2
	str sb, [r0, #8]
_021228B8:
	ldr r0, [r4]
	add sb, sb, #1
	cmp sb, r0
	add sl, sl, #0xc
	blt _02122838
_021228CC:
	add r0, r4, #8
	str r0, [r4, #0x808]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021228D8:
	mov sb, #0
	str sb, [r4, #0x80c]
	ldr r1, [r4]
	cmp r1, #0
	ble _02122990
	ldr sl, _02122A84 ; =DAT_overlay_21_02123618
	ldr r8, _02122A88 ; =OVERLAY21_BSS_021242C4
	add r7, r0, #0x1000
	mov fp, sb
_021228FC:
	ldrh r1, [sl, #2]
	ldr r0, [r7, #0x434]
	bl sub_020107A8
	ldrb r1, [r0, #5]
	ldrh r0, [r0]
	cmp r1, r5
	bne _0212297C
	ldr r1, [r8]
	cmp r1, #0
	bne _02122964
	cmp r0, #0
	blt _02122958
	cmp r0, #0x1f4
	bge _02122958
	mov r1, r0, asr #4
	add r1, r6, r1, lsl #2
	add r1, r1, #0x7000
	mov r0, r0, lsl #0x1c
	ldr r1, [r1, #0xc3c]
	mov r0, r0, lsr #0x1b
	mov r0, r1, lsr r0
	and r0, r0, #3
	b _0212295C
_02122958:
	mov r0, fp
_0212295C:
	cmp r0, #2
	bne _0212297C
_02122964:
	ldr r0, [r4, #0x80c]
	mov r1, r0
	add r0, r0, #1
	str r0, [r4, #0x80c]
	add r0, r4, r1, lsl #2
	str sb, [r0, #8]
_0212297C:
	ldr r0, [r4]
	add sb, sb, #1
	cmp sb, r0
	add sl, sl, #0xc
	blt _021228FC
_02122990:
	add r0, r4, #8
	str r0, [r4, #0x808]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0212299C:
	mov sb, #0
	str sb, [r4, #0x80c]
	ldr r8, [r4, #0x810]
	cmp r8, #0
	ble _02122A6C
	ldr sl, _02122A84 ; =DAT_overlay_21_02123618
	ldr r7, _02122A88 ; =OVERLAY21_BSS_021242C4
	add r5, r0, #0x1000
	mov fp, sb
_021229C0:
	ldrh r0, [sl]
	cmp r0, #0x3e8
	blo _02122A44
	ldrh r1, [sl, #2]
	ldr r0, [r5, #0x434]
	bl sub_020107A8
	ldr r1, [r7]
	ldrh r2, [r0]
	cmp r1, #0
	bne _02122A28
	cmp r2, #0
	blt _02122A1C
	cmp r2, #0x1f4
	bge _02122A1C
	mov r0, r2, asr #4
	add r0, r6, r0, lsl #2
	add r0, r0, #0x7000
	mov r1, r2, lsl #0x1c
	ldr r2, [r0, #0xc3c]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #3
	b _02122A20
_02122A1C:
	mov r0, fp
_02122A20:
	cmp r0, #0
	beq _02122A5C
_02122A28:
	ldr r0, [r4, #0x80c]
	mov r1, r0
	add r0, r0, #1
	str r0, [r4, #0x80c]
	add r0, r4, r1, lsl #2
	str sb, [r0, #8]
	b _02122A5C
_02122A44:
	ldr r0, [r4, #0x80c]
	mov r1, r0
	add r0, r0, #1
	str r0, [r4, #0x80c]
	add r0, r4, r1, lsl #2
	str sb, [r0, #8]
_02122A5C:
	add sb, sb, #1
	cmp sb, r8
	add sl, sl, #0xc
	blt _021229C0
_02122A6C:
	add r0, r4, #8
	str r0, [r4, #0x808]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02122A78: .word MAIN_BSS_020B26A0
_02122A7C: .word PTR_DAT_overlay_21_02123484_overlay_21_021231a4
_02122A80: .word DAT_overlay_21_021231c8
_02122A84: .word DAT_overlay_21_02123618
_02122A88: .word OVERLAY21_BSS_021242C4

	arm_func_start ov21_02122A8C
ov21_02122A8C: ; 0x02122A8C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl sub_0201001C
	ldr r1, [sl]
	mov r7, #0
	mov r8, r7
	cmp r1, #0
	ldr r6, _02122BA4 ; =MAIN_BSS_020B26A0
	ble _02122B9C
	ldr sb, _02122BA8 ; =DAT_overlay_21_02123618
	ldr r5, _02122BAC ; =OVERLAY21_BSS_021242C4
	add r4, r0, #0x1000
	mov fp, r7
	arm_func_end ov21_02122A8C
_02122AC0:
	ldrh r1, [sb, #2]
	ldr r0, [r4, #0x434]
	bl sub_020107A8
	ldr r2, [r5]
	ldrh r1, [r0]
	cmp r2, #0
	bne _02122B1C
	cmp r1, #0
	blt _02122B10
	cmp r1, #0x1f4
	bge _02122B10
	mov r2, r1, asr #4
	add r2, r6, r2, lsl #2
	add r2, r2, #0x7000
	mov r3, r1, lsl #0x1c
	ldr ip, [r2, #0xc3c]
	mov r2, r3, lsr #0x1b
	mov r2, ip, lsr r2
	and r2, r2, #3
	b _02122B14
_02122B10:
	mov r2, fp
_02122B14:
	cmp r2, #0
	beq _02122B88
_02122B1C:
	cmp r1, #0
	add r7, r8, #1
	blt _02122B54
	cmp r1, #0x1f4
	bge _02122B54
	mov r2, r1, asr #4
	add r2, r6, r2, lsl #2
	add r2, r2, #0x7000
	mov r1, r1, lsl #0x1c
	ldr r2, [r2, #0xc3c]
	mov r1, r1, lsr #0x1b
	mov r1, r2, lsr r1
	and r1, r1, #3
	b _02122B58
_02122B54:
	mov r1, #0
_02122B58:
	cmp r1, #2
	bne _02122B88
	ldrb r1, [r0, #4]
	add r2, sl, r1, lsl #2
	ldr r1, [r2, #0x814]
	add r1, r1, #1
	str r1, [r2, #0x814]
	ldrb r0, [r0, #5]
	add r1, sl, r0, lsl #2
	ldr r0, [r1, #0x85c]
	add r0, r0, #1
	str r0, [r1, #0x85c]
_02122B88:
	ldr r0, [sl]
	add r8, r8, #1
	cmp r8, r0
	add sb, sb, #0xc
	blt _02122AC0
_02122B9C:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02122BA4: .word MAIN_BSS_020B26A0
_02122BA8: .word DAT_overlay_21_02123618
_02122BAC: .word OVERLAY21_BSS_021242C4
	; 0x02122BB0

    .section .sinit,4 ; 0x02122BB0

    .data
PTR_ptr_FUN_020835bc_overlay_21_02122bc0: ; 0x02122BC0
	.word ptr_FUN_020835bc_0208f25c
ptr_FUN_overlay_3_02122bcc_overlay_21_02122bc4: ; 0x02122BC4
	.word s_13CBrowserScene_overlay_21_02122bcc
	.word PTR_ptr_FUN_02083578_0208a804
s_13CBrowserScene_overlay_21_02122bcc: ; 0x02122BCC
	.asciz "13CBrowserScene"
_02122BDC:
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_21_02122bc0
ptr_FUN_overlay_28_0211caac_overlay_21_02122be4: ; 0x02122BE4
	.word ov21_0211CAAC
ptr_FUN_overlay_21_0211cac0_overlay_21_02122be8: ; 0x02122BE8
	.word ov21_0211CAC0
ptr_FUN_overlay_21_0211ce64_overlay_21_02122bec: ; 0x02122BEC
	.word ov21_0211CE64
	.word ov21_0211CFAC
	.word ov21_0211CFBC
	.word ov21_0211CFCC
ptr_FUN_02007cc4_overlay_21_02122bfc: ; 0x02122BFC
	.word sub_02007CC4
ptr_FUN_overlay_21_0211cadc_overlay_21_02122c00: ; 0x02122C00
	.word ov21_0211CADC
ptr_FUN_overlay_21_0211cca8_overlay_21_02122c04: ; 0x02122C04
	.word ov21_0211CCA8
ptr_FUN_overlay_21_0211cd84_overlay_21_02122c08: ; 0x02122C08
	.word ov21_0211CD84
	.word ov21_0211CFEC
DAT_overlay_21_02122c10: ; 0x02122C10
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00
DAT_overlay_21_02122c24: ; 0x02122C24
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
DAT_overlay_21_02122c48: ; 0x02122C48
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
PTR_DAT_overlay_21_02122c24_overlay_21_02122c90: ; 0x02122C90
	.word DAT_overlay_21_02122c24
DAT_overlay_21_02122c94: ; 0x02122C94
	.byte 0x09, 0x00, 0x00, 0x00
DAT_overlay_21_02122c98: ; 0x02122C98
	.byte 0x07, 0x00, 0x00, 0x00
DAT_overlay_21_02122c9c: ; 0x02122C9C
	.byte 0x14, 0x00, 0x00, 0x00
ptr_FUN_overlay_11_02122c48_overlay_21_02122ca0: ; 0x02122CA0
	.word DAT_overlay_21_02122c48
	.byte 0x12, 0x00, 0x00, 0x00
DAT_overlay_21_02122ca8: ; 0x02122CA8
	.byte 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.word DAT_overlay_21_02122ce0
	.byte 0x18, 0x00, 0x00, 0x00
DAT_overlay_21_02122cb8: ; 0x02122CB8
	.byte 0x06, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.word DAT_overlay_21_02122c10
	.byte 0x00, 0x00, 0x00, 0x00
DAT_overlay_21_02122cc8: ; 0x02122CC8
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
DAT_overlay_21_02122ce0: ; 0x02122CE0
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
s_interface_overlay_21_02122d40: ; 0x02122D40
	.asciz "interface/"
_02122D4B:
	.byte 0x00
s_i059_overlay_21_02122d4c: ; 0x02122D4C
	.asciz "i059_"
_02122D52:
	.byte 0x00, 0x00
s_i059_00_overlay_21_02122d54: ; 0x02122D54
	.asciz "i059_00"
s_data_message_etc_menu_mes_overlay_21_02122d5c: ; 0x02122D5C
	.asciz "data/message/etc/menu_mes"
_02122D76:
	.byte 0x00, 0x00
s_data_message_etc_pokebook_info_overlay_21_02122d78: ; 0x02122D78
	.asciz "data/message/etc/pokebook_info"
_02122D97:
	.byte 0x00
s_data_message_etc_assist_mes_overlay_21_02122d98: ; 0x02122D98
	.asciz "data/message/etc/assist_mes"
s_data_message_etc_fieldwaza_name_overlay_21_02122db4: ; 0x02122DB4
	.asciz "data/message/etc/fieldwaza_name"
s_menu_overlay_21_02122dd4: ; 0x02122DD4
	.asciz "menu/"
_02122DDA:
	.byte 0x00, 0x00
s_mb000_bg_overlay_21_02122ddc: ; 0x02122DDC
	.asciz "mb000_bg_"
_02122DE6:
	.byte 0x00, 0x00
s_mb000_overlay_21_02122de8: ; 0x02122DE8
	.asciz "mb000"
_02122DEE:
	.byte 0x00, 0x00
s_mb000_03_overlay_21_02122df0: ; 0x02122DF0
	.asciz "mb000_03"
_02122DF9:
	.byte 0x00, 0x00, 0x00
s_mb000_02_overlay_21_02122dfc: ; 0x02122DFC
	.asciz "mb000_02"
_02122E05:
	.byte 0x00, 0x00, 0x00
s_data_menu_overlay_21_02122e08: ; 0x02122E08
	.asciz "data/menu"
_02122E12:
	.byte 0x00, 0x00
s_mb000_00_overlay_21_02122e14: ; 0x02122E14
	.asciz "mb000_00"
_02122E1D:
	.byte 0x00, 0x00, 0x00
s_mb000_01_overlay_21_02122e20: ; 0x02122E20
	.asciz "mb000_01"
_02122E29:
	.byte 0x00, 0x00, 0x00
s_ma000_01_overlay_21_02122e2c: ; 0x02122E2C
	.asciz "ma000_01"
_02122E35:
	.byte 0x00, 0x00, 0x00
PTR_ptr_FUN_02083578_overlay_21_02122e38: ; 0x02122E38
	.word ptr_FUN_02083578_0208f26c
	.word s_19CBrowserMenuManager_overlay_21_02122e40
s_19CBrowserMenuManager_overlay_21_02122e40: ; 0x02122E40
	.asciz "19CBrowserMenuManager"
_02122E56:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x2E, 0x12, 0x02
ptr_FUN_overlay_21_02120c18_overlay_21_02122e60: ; 0x02122E60
	.word ov21_02120C18
ptr_FUN_overlay_21_02120828_overlay_21_02122e64: ; 0x02122E64
	.word ov21_02120828
ptr_FUN_overlay_21_021208b4_overlay_21_02122e68: ; 0x02122E68
	.word ov21_021208B4
	.word ov21_021209D4
	.word ov21_021209F4
ptr_FUN_overlay_21_02120cc4_overlay_21_02122e74: ; 0x02122E74
	.word ov21_02120CC4
ptr_FUN_overlay_21_02121064_overlay_21_02122e78: ; 0x02122E78
	.word ov21_02121064
ptr_FUN_overlay_21_02121208_overlay_21_02122e7c: ; 0x02122E7C
	.word ov21_02121208
ptr_FUN_overlay_21_02120a94_overlay_21_02122e80: ; 0x02122E80
	.word ov21_02120A94
PTR_ptr_FUN_02083578_overlay_21_02122e84: ; 0x02122E84
	.word ptr_FUN_02083578_0208f26c
	.word s_16CBrowserMenuItem_overlay_21_02122eb8
PTR_ptr_FUN_02083578_overlay_21_02122e8c: ; 0x02122E8C
	.word ptr_FUN_02083578_0208f26c
	.word s_18CBrowserMenuCursor_overlay_21_02122ecc
PTR_ptr_FUN_020835bc_overlay_21_02122e94: ; 0x02122E94
	.word ptr_FUN_020835bc_0208f25c
	.word s_25CBrowserMenuCursorPokemon_overlay_21_02122f00
	.word PTR_ptr_FUN_02083578_overlay_21_02122e8c
PTR_ptr_FUN_020835bc_overlay_21_02122ea0: ; 0x02122EA0
	.word ptr_FUN_020835bc_0208f25c
	.word s_23CBrowserMenuItemPokemon_overlay_21_02122ee4
	.word PTR_ptr_FUN_02083578_overlay_21_02122e84
PTR_ptr_FUN_020835bc_overlay_21_02122eac: ; 0x02122EAC
	.word ptr_FUN_020835bc_0208f25c
	.word s_26CBrowserMenuManagerPokemon_overlay_21_02122f1c
	.word PTR_ptr_FUN_02083578_overlay_21_02122e38
s_16CBrowserMenuItem_overlay_21_02122eb8: ; 0x02122EB8
	.asciz "16CBrowserMenuItem"
_02122ECB:
	.byte 0x00
s_18CBrowserMenuCursor_overlay_21_02122ecc: ; 0x02122ECC
	.asciz "18CBrowserMenuCursor"
_02122EE1:
	.byte 0x00, 0x00, 0x00
s_23CBrowserMenuItemPokemon_overlay_21_02122ee4: ; 0x02122EE4
	.asciz "23CBrowserMenuItemPokemon"
_02122EFE:
	.byte 0x00, 0x00
s_25CBrowserMenuCursorPokemon_overlay_21_02122f00: ; 0x02122F00
	.asciz "25CBrowserMenuCursorPokemon"
s_26CBrowserMenuManagerPokemon_overlay_21_02122f1c: ; 0x02122F1C
	.asciz "26CBrowserMenuManagerPokemon"
_02122F39:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_21_02122e94
ptr_FUN_overlay_21_0212140c_overlay_21_02122f44: ; 0x02122F44
	.word ov21_0212140C
ptr_FUN_overlay_21_02121450_overlay_21_02122f48: ; 0x02122F48
	.word ov21_02121450
	.word ov21_021214E4
	.word ov21_021215A4
ptr_FUN_overlay_21_02121578_overlay_21_02122f54: ; 0x02122F54
	.word ov21_02121578
	.word ov21_02120BC0
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_21_02122eac
PTR_LAB_overlay_21_021216e0_overlay_21_02122f64: ; 0x02122F64
	.word ov21_021216E0
ptr_FUN_overlay_22_021215c8_overlay_21_02122f68: ; 0x02122F68
	.word ov21_021215C8
ptr_FUN_overlay_21_021215dc_overlay_21_02122f6c: ; 0x02122F6C
	.word ov21_021215DC
	.word ov21_021209D4
	.word ov21_021209F4
ptr_FUN_overlay_21_02120cc4_overlay_21_02122f78: ; 0x02122F78
	.word ov21_02120CC4
ptr_FUN_overlay_21_02121064_overlay_21_02122f7c: ; 0x02122F7C
	.word ov21_02121064
ptr_FUN_overlay_21_021216ec_overlay_21_02122f80: ; 0x02122F80
	.word ov21_021216EC
ptr_FUN_overlay_21_02120a94_overlay_21_02122f84: ; 0x02122F84
	.word ov21_02120A94
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_21_02122ea0
ptr_FUN_overlay_21_0212128c_overlay_21_02122f90: ; 0x02122F90
	.word ov21_0212128C
ptr_FUN_overlay_21_021212d0_overlay_21_02122f94: ; 0x02122F94
	.word ov21_021212D0
	.word ov21_02121384
	.word ov21_021213E0
	.word ov21_02121370
	.word ov21_0212172C
ptr_FUN_overlay_21_02121388_overlay_21_02122fa8: ; 0x02122FA8
	.word ov21_02121388
ptr_FUN_overlay_21_021213b0_overlay_21_02122fac: ; 0x02122FAC
	.word ov21_021213B0
	.word ov21_02120BCC
	.word ov21_021216D4
PTR_ptr_FUN_020835bc_overlay_21_02122fb8: ; 0x02122FB8
	.word ptr_FUN_020835bc_0208f25c
	.word s_22CBrowserMenuCursorIcon_overlay_21_02122ff4
	.word PTR_ptr_FUN_02083578_overlay_21_02122e8c
PTR_ptr_FUN_020835bc_overlay_21_02122fc4: ; 0x02122FC4
	.word ptr_FUN_020835bc_0208f25c
	.word s_20CBrowserMenuItemIcon_overlay_21_02122fdc
	.word PTR_ptr_FUN_02083578_overlay_21_02122e84
PTR_ptr_FUN_020835bc_overlay_21_02122fd0: ; 0x02122FD0
	.word ptr_FUN_020835bc_0208f25c
	.word s_23CBrowserMenuManagerIcon_overlay_21_02123010
	.word PTR_ptr_FUN_02083578_overlay_21_02122e38
s_20CBrowserMenuItemIcon_overlay_21_02122fdc: ; 0x02122FDC
	.asciz "20CBrowserMenuItemIcon"
_02122FF3:
	.byte 0x00
s_22CBrowserMenuCursorIcon_overlay_21_02122ff4: ; 0x02122FF4
	.asciz "22CBrowserMenuCursorIcon"
_0212300D:
	.byte 0x00, 0x00, 0x00
s_23CBrowserMenuManagerIcon_overlay_21_02123010: ; 0x02123010
	.asciz "23CBrowserMenuManagerIcon"
_0212302A:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_21_02122fb8
ptr_FUN_overlay_21_02121a60_overlay_21_02123034: ; 0x02123034
	.word ov21_02121A60
ptr_FUN_overlay_21_02121aa4_overlay_21_02123038: ; 0x02123038
	.word ov21_02121AA4
	.word ov21_02121B20
ptr_FUN_overlay_11_02121c20_overlay_21_02123040: ; 0x02123040
	.word ov21_02121C20
ptr_FUN_overlay_21_02121bb8_overlay_21_02123044: ; 0x02123044
	.word ov21_02121BB8
	.word ov21_02120BC0
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_21_02122fd0
ptr_FUN_overlay_1_02121d78_overlay_21_02123054: ; 0x02123054
	.word ov21_02121D78
	.word ov21_02121C44
ptr_FUN_overlay_21_02121c58_overlay_21_0212305c: ; 0x0212305C
	.word ov21_02121C58
	.word ov21_021209D4
	.word ov21_021209F4
ptr_FUN_overlay_21_02120cc4_overlay_21_02123068: ; 0x02123068
	.word ov21_02120CC4
ptr_FUN_overlay_21_02121064_overlay_21_0212306c: ; 0x0212306C
	.word ov21_02121064
ptr_FUN_overlay_21_02121208_overlay_21_02123070: ; 0x02123070
	.word ov21_02121208
ptr_FUN_overlay_21_02120a94_overlay_21_02123074: ; 0x02123074
	.word ov21_02120A94
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_21_02122fc4
ptr_FUN_overlay_21_0212175c_overlay_21_02123080: ; 0x02123080
	.word ov21_0212175C
ptr_FUN_overlay_21_021217b8_overlay_21_02123084: ; 0x02123084
	.word ov21_021217B8
	.word ov21_021218BC
	.word ov21_02121A30
ptr_FUN_overlay_21_02121890_overlay_21_02123090: ; 0x02123090
	.word ov21_02121890
	.word ov21_0212172C
ptr_FUN_overlay_21_021218c0_overlay_21_02123098: ; 0x02123098
	.word ov21_021218C0
ptr_FUN_overlay_21_021219ac_overlay_21_0212309c: ; 0x0212309C
	.word ov21_021219AC
	.word ov21_02120BCC
	.word ov21_021216D4
PTR_ptr_FUN_020835bc_overlay_21_021230a8: ; 0x021230A8
	.word ptr_FUN_020835bc_0208f25c
	.word s_20CBrowserMenuItemType_overlay_21_021230c0
	.word PTR_ptr_FUN_02083578_overlay_21_02122e84
PTR_ptr_FUN_020835bc_overlay_21_021230b4: ; 0x021230B4
	.word ptr_FUN_020835bc_0208f25c
	.word s_23CBrowserMenuManagerType_overlay_21_021230d8
	.word PTR_ptr_FUN_02083578_overlay_21_02122e38
s_20CBrowserMenuItemType_overlay_21_021230c0: ; 0x021230C0
	.asciz "20CBrowserMenuItemType"
_021230D7:
	.byte 0x00
s_23CBrowserMenuManagerType_overlay_21_021230d8: ; 0x021230D8
	.asciz "23CBrowserMenuManagerType"
_021230F2:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x30, 0x12, 0x02
ptr_FUN_overlay_21_02120c18_overlay_21_021230fc: ; 0x021230FC
	.word ov21_02120C18
	.word ov21_02121FDC
ptr_FUN_overlay_21_02121ff0_overlay_21_02123104: ; 0x02123104
	.word ov21_02121FF0
	.word ov21_021209D4
	.word ov21_021209F4
ptr_FUN_overlay_21_02120cc4_overlay_21_02123110: ; 0x02123110
	.word ov21_02120CC4
ptr_FUN_overlay_21_02121064_overlay_21_02123114: ; 0x02123114
	.word ov21_02121064
ptr_FUN_overlay_21_02121208_overlay_21_02123118: ; 0x02123118
	.word ov21_02121208
ptr_FUN_overlay_21_02120a94_overlay_21_0212311c: ; 0x0212311C
	.word ov21_02120A94
	.byte 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_21_021230a8
PTR_LAB_overlay_21_02121e90_overlay_21_02123128: ; 0x02123128
	.word ov21_02121E90
ptr_FUN_overlay_21_02121e94_overlay_21_0212312c: ; 0x0212312C
	.word ov21_02121E94
ptr_FUN_overlay_11_02121f18_overlay_21_02123130: ; 0x02123130
	.word ov21_02121F18
	.word ov21_02121FB8
	.word ov21_02121F08
	.word ov21_0212172C
	.word ov21_02121F1C
ptr_FUN_overlay_21_02121f24_overlay_21_02123144: ; 0x02123144
	.word ov21_02121F24
	.word ov21_02121FAC
	.word ov21_021216D4
s_data_message_etc_pokebook_info_overlay_21_02123150: ; 0x02123150
	.asciz "data/message/etc/pokebook_info"
_0212316F:
	.byte 0x00
s_menu_overlay_21_02123170: ; 0x02123170
	.asciz "menu/"
_02123176:
	.byte 0x00, 0x00
s_mam000_bg_overlay_21_02123178: ; 0x02123178
	.asciz "mam000_bg_"
_02123183:
	.byte 0x00
s_mam000_overlay_21_02123184: ; 0x02123184
	.asciz "mam000"
_0212318B:
	.byte 0x00
s_mam000_01_overlay_21_0212318c: ; 0x0212318C
	.asciz "mam000_01"
_02123196:
	.byte 0x00, 0x00
DAT_overlay_21_02123198: ; 0x02123198
	.byte 0x75, 0x00, 0x00, 0x00, 0x76, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00
PTR_DAT_overlay_21_02123484_overlay_21_021231a4: ; 0x021231A4
	.word DAT_overlay_21_02123484
	.word DAT_overlay_21_02123274
	.word DAT_overlay_21_021233f8
ptr_FUN_overlay_11_02123228_overlay_21_021231b0: ; 0x021231B0
	.word DAT_overlay_21_02123228
	.word DAT_overlay_21_0212336c
	.word DAT_overlay_21_021232e8
	.word DAT_overlay_21_02123548
	.word DAT_overlay_21_021231ec
	.word DAT_overlay_21_02123198
DAT_overlay_21_021231c8: ; 0x021231C8
	.byte 0x31, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0x23, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x34, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
DAT_overlay_21_021231ec: ; 0x021231EC
	.byte 0x61, 0x00, 0x00, 0x00
	.byte 0x3B, 0x00, 0x00, 0x00, 0xF1, 0x00, 0x00, 0x00, 0x73, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00
	.byte 0xAA, 0x00, 0x00, 0x00, 0xEC, 0x00, 0x00, 0x00, 0xED, 0x00, 0x00, 0x00, 0xC6, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0xF4, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0xBB, 0x00, 0x00, 0x00
	.byte 0xCB, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00
DAT_overlay_21_02123228: ; 0x02123228
	.byte 0xCA, 0x00, 0x00, 0x00, 0x62, 0x00, 0x00, 0x00
	.byte 0xD1, 0x00, 0x00, 0x00, 0x91, 0x00, 0x00, 0x00, 0xE6, 0x00, 0x00, 0x00, 0x9D, 0x00, 0x00, 0x00
	.byte 0xBA, 0x00, 0x00, 0x00, 0x51, 0x00, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00
	.byte 0x58, 0x00, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00, 0xAE, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x56, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00
	.byte 0x32, 0x00, 0x00, 0x00
DAT_overlay_21_02123274: ; 0x02123274
	.byte 0x00, 0x01, 0x00, 0x00, 0xD0, 0x00, 0x00, 0x00, 0x0B, 0x01, 0x00, 0x00
	.byte 0x86, 0x00, 0x00, 0x00, 0x85, 0x00, 0x00, 0x00, 0xDA, 0x00, 0x00, 0x00, 0xAD, 0x00, 0x00, 0x00
	.byte 0xD9, 0x00, 0x00, 0x00, 0x8E, 0x00, 0x00, 0x00, 0x8D, 0x00, 0x00, 0x00, 0xA5, 0x00, 0x00, 0x00
	.byte 0xBE, 0x00, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0xBD, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x46, 0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00, 0x4C, 0x00, 0x00, 0x00, 0x45, 0x00, 0x00, 0x00
	.byte 0xCF, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x55, 0x00, 0x00, 0x00
	.byte 0x69, 0x00, 0x00, 0x00, 0x63, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x02, 0x01, 0x00, 0x00
	.byte 0x6E, 0x00, 0x00, 0x00, 0xD6, 0x00, 0x00, 0x00
DAT_overlay_21_021232e8: ; 0x021232E8
	.byte 0x19, 0x00, 0x00, 0x00, 0x0C, 0x01, 0x00, 0x00
	.byte 0x4E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xC8, 0x00, 0x00, 0x00
	.byte 0x6D, 0x00, 0x00, 0x00, 0x7A, 0x00, 0x00, 0x00, 0xCD, 0x00, 0x00, 0x00, 0xAF, 0x00, 0x00, 0x00
	.byte 0x05, 0x01, 0x00, 0x00, 0x7E, 0x00, 0x00, 0x00, 0xCE, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00
	.byte 0x78, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x9C, 0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00
	.byte 0x42, 0x00, 0x00, 0x00, 0x08, 0x01, 0x00, 0x00, 0x0A, 0x01, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00
	.byte 0x09, 0x01, 0x00, 0x00, 0x95, 0x00, 0x00, 0x00, 0x94, 0x00, 0x00, 0x00, 0x96, 0x00, 0x00, 0x00
	.byte 0xDD, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
DAT_overlay_21_0212336c: ; 0x0212336C
	.byte 0xA2, 0x00, 0x00, 0x00
	.byte 0xA1, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0x8C, 0x00, 0x00, 0x00
	.byte 0x49, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x00, 0x00
	.byte 0x3F, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x7D, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x59, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00
	.byte 0x2D, 0x00, 0x00, 0x00, 0xA3, 0x00, 0x00, 0x00, 0xDB, 0x00, 0x00, 0x00, 0xDC, 0x00, 0x00, 0x00
	.byte 0xA8, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0xA4, 0x00, 0x00, 0x00, 0x97, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00, 0xAB, 0x00, 0x00, 0x00, 0xB3, 0x00, 0x00, 0x00
	.byte 0x2B, 0x00, 0x00, 0x00, 0x7B, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x71, 0x00, 0x00, 0x00
	.byte 0xEA, 0x00, 0x00, 0x00, 0xEB, 0x00, 0x00, 0x00
DAT_overlay_21_021233f8: ; 0x021233F8
	.byte 0xFB, 0x00, 0x00, 0x00, 0x9F, 0x00, 0x00, 0x00
	.byte 0xFC, 0x00, 0x00, 0x00, 0x9E, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0xFA, 0x00, 0x00, 0x00, 0xB1, 0x00, 0x00, 0x00
	.byte 0x67, 0x00, 0x00, 0x00, 0xD5, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x7F, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x72, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00
	.byte 0xE8, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0xE3, 0x00, 0x00, 0x00
	.byte 0xF5, 0x00, 0x00, 0x00, 0xF6, 0x00, 0x00, 0x00, 0xB9, 0x00, 0x00, 0x00, 0xE4, 0x00, 0x00, 0x00
	.byte 0x99, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0xE7, 0x00, 0x00, 0x00, 0xA6, 0x00, 0x00, 0x00
	.byte 0xA9, 0x00, 0x00, 0x00
DAT_overlay_21_02123484: ; 0x02123484
	.byte 0xD3, 0x00, 0x00, 0x00, 0xB6, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x00, 0x00, 0x84, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00, 0xB7, 0x00, 0x00, 0x00
	.byte 0x03, 0x01, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x6A, 0x00, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00
	.byte 0x9B, 0x00, 0x00, 0x00, 0x82, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x93, 0x00, 0x00, 0x00
	.byte 0xB5, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x74, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0xFE, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0xF8, 0x00, 0x00, 0x00, 0xF7, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0xEE, 0x00, 0x00, 0x00, 0xEF, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x00, 0x00
	.byte 0x87, 0x00, 0x00, 0x00, 0x06, 0x01, 0x00, 0x00, 0x8A, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x89, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00
	.byte 0xA7, 0x00, 0x00, 0x00, 0x57, 0x00, 0x00, 0x00, 0xCC, 0x00, 0x00, 0x00, 0xF9, 0x00, 0x00, 0x00
	.byte 0x3A, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00, 0xFD, 0x00, 0x00, 0x00
	.byte 0x4F, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
DAT_overlay_21_02123548: ; 0x02123548
	.byte 0xC0, 0x00, 0x00, 0x00, 0xE2, 0x00, 0x00, 0x00
	.byte 0xC1, 0x00, 0x00, 0x00, 0xC2, 0x00, 0x00, 0x00, 0xF2, 0x00, 0x00, 0x00, 0xD8, 0x00, 0x00, 0x00
	.byte 0xD7, 0x00, 0x00, 0x00, 0xE5, 0x00, 0x00, 0x00, 0xC5, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x5F, 0x00, 0x00, 0x00, 0x0D, 0x01, 0x00, 0x00, 0xE1, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x92, 0x00, 0x00, 0x00
	.byte 0xBC, 0x00, 0x00, 0x00, 0xAC, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00
	.byte 0x8B, 0x00, 0x00, 0x00, 0xF3, 0x00, 0x00, 0x00, 0xD4, 0x00, 0x00, 0x00, 0xD2, 0x00, 0x00, 0x00
	.byte 0x6F, 0x00, 0x00, 0x00, 0xC4, 0x00, 0x00, 0x00, 0x9A, 0x00, 0x00, 0x00, 0xC3, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x5E, 0x00, 0x00, 0x00, 0x5D, 0x00, 0x00, 0x00, 0x8F, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0xC7, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
	.byte 0xB2, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00, 0x00, 0x04, 0x01, 0x00, 0x00, 0xDF, 0x00, 0x00, 0x00
	.byte 0x35, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x65, 0x00, 0x00, 0x00
DAT_overlay_21_02123618: ; 0x02123618
	.byte 0x01, 0x00
DAT_overlay_21_0212361a: ; 0x0212361A
	.byte 0x51, 0x00, 0x62, 0x06, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10
DAT_overlay_21_02123624: ; 0x02123624
	.byte 0x02, 0x00
DAT_overlay_21_02123626: ; 0x02123626
	.byte 0x0C, 0x00, 0x00, 0x02, 0xF8, 0x01, 0x00, 0x00, 0x00, 0x10
	.byte 0x03, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x08, 0x18, 0x00, 0x00, 0x00, 0x10, 0x04, 0x00, 0xAD, 0x00
	.byte 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x05, 0x00, 0xAE, 0x00, 0x00, 0x86, 0x02, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x06, 0x00, 0x7A, 0x00, 0x2A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x07, 0x00, 0x7B, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x08, 0x00, 0xB4, 0x00
	.byte 0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x09, 0x00, 0x8B, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x0A, 0x00, 0xB5, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x0B, 0x00, 0x03, 0x00, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x0C, 0x00, 0x04, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x0D, 0x00, 0x05, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x0E, 0x00, 0x14, 0x00, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x0F, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x10, 0x00, 0x4E, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x10, 0x11, 0x00, 0x2E, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x12, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x10
	.byte 0x13, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x00, 0x00, 0x10, 0x14, 0x00, 0xC6, 0x00
	.byte 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x15, 0x00, 0xC7, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x16, 0x00, 0xD3, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x17, 0x00, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0xAB, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10, 0x19, 0x00, 0xAC, 0x00, 0x88, 0x42, 0x66, 0x4A
	.byte 0x0C, 0x02, 0x00, 0x10, 0x1A, 0x00, 0xBC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1B, 0x00, 0xD7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x83, 0x00
	.byte 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10, 0x1D, 0x00, 0x84, 0x00, 0x00, 0x00, 0x08, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x1E, 0x00, 0xD1, 0x00, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x1F, 0x00, 0x56, 0x00, 0x00, 0x00, 0x20, 0x00, 0x01, 0x00, 0x00, 0x10, 0x20, 0x00, 0x81, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x21, 0x00, 0x77, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x22, 0x00, 0x78, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x23, 0x00, 0x79, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x24, 0x00, 0xE6, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x25, 0x00, 0xC1, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x26, 0x00, 0xC2, 0x00, 0x40, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x27, 0x00, 0xCA, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x28, 0x00, 0xCB, 0x00
	.byte 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10, 0x29, 0x00, 0x24, 0x00, 0x40, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x2A, 0x00, 0x25, 0x00, 0x40, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x2B, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00, 0x10, 0x2C, 0x00, 0x85, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x2D, 0x00, 0xEB, 0x00, 0x00, 0x00, 0x80, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x2E, 0x00, 0x71, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x2F, 0x00, 0xBF, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x30, 0x00, 0xC0, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10, 0x31, 0x00, 0xB1, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x32, 0x00, 0xB2, 0x00, 0x00, 0x02, 0x10, 0x40, 0x00, 0x00, 0x00, 0x10
	.byte 0x33, 0x00, 0xB3, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x10, 0x34, 0x00, 0xA1, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x35, 0x00, 0xA2, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x36, 0x00, 0xA3, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x37, 0x00, 0xBD, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x38, 0x00, 0xBE, 0x00
	.byte 0x00, 0x82, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x39, 0x00, 0x06, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x3A, 0x00, 0x07, 0x00, 0x00, 0x02, 0x40, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x3B, 0x00, 0xBA, 0x00, 0x00, 0x02, 0x20, 0x00, 0x00, 0x00, 0x00, 0x10, 0x3C, 0x00, 0xBB, 0x00
	.byte 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x10, 0x3D, 0x00, 0x6E, 0x00, 0x00, 0x04, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x3E, 0x00, 0x29, 0x00, 0x00, 0x84, 0x09, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x3F, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x40, 0xD8, 0x00, 0x00, 0x10, 0x40, 0x00, 0x9E, 0x01
	.byte 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x20, 0x41, 0x00, 0x1B, 0x00, 0x00, 0x84, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x42, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x10
	.byte 0x43, 0x00, 0x08, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x44, 0x00, 0x09, 0x00
	.byte 0x00, 0x04, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10, 0x45, 0x00, 0xD4, 0x00, 0x00, 0x04, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x46, 0x00, 0x6F, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x47, 0x00, 0x41, 0x00, 0x00, 0x00, 0x90, 0x00, 0x40, 0x00, 0x00, 0x10, 0x48, 0x00, 0xA0, 0x01
	.byte 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x20, 0x49, 0x00, 0x70, 0x00, 0x00, 0x04, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x4A, 0x00, 0x42, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x4B, 0x00, 0xA1, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x20, 0x4C, 0x00, 0x33, 0x00
	.byte 0x00, 0x04, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10, 0x4D, 0x00, 0x34, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x10, 0x4E, 0x00, 0x7C, 0x00, 0x00, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x4F, 0x00, 0x7D, 0x00, 0x00, 0x00, 0x08, 0x00, 0x01, 0x00, 0x00, 0x10, 0x50, 0x00, 0xDC, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x51, 0x00, 0xDD, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x52, 0x00, 0xAF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x53, 0x00, 0xB0, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x54, 0x00, 0xB6, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x55, 0x00, 0x99, 0x01, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x20, 0x56, 0x00, 0xDF, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x57, 0x00, 0xE0, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x58, 0x00, 0x4F, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x59, 0x00, 0x50, 0x00, 0x00, 0x00, 0x00, 0x20
	.byte 0x00, 0x00, 0x00, 0x10, 0x5A, 0x00, 0xE1, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x5B, 0x00, 0x6A, 0x00, 0x00, 0x08, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0x5C, 0x00, 0x61, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x5D, 0x00, 0x68, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x5E, 0x00, 0x3C, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x5F, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0x60, 0x00, 0xED, 0x00
	.byte 0x00, 0x08, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0x61, 0x00, 0x45, 0x00, 0x00, 0x04, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x62, 0x00, 0x46, 0x00, 0x00, 0x00, 0x00, 0x10, 0x80, 0x00, 0x00, 0x10
	.byte 0x63, 0x00, 0x47, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x10, 0x64, 0x00, 0x48, 0x00
	.byte 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x10, 0x65, 0x00, 0x59, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x10, 0x66, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x67, 0x00, 0xE8, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x68, 0x00, 0xE9, 0x00
	.byte 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0x69, 0x00, 0x52, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x6A, 0x00, 0x53, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x6B, 0x00, 0x54, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x10, 0x6C, 0x00, 0x57, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x6D, 0x00, 0xC3, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x6E, 0x00, 0x5E, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x6F, 0x00, 0x5F, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x70, 0x00, 0x0A, 0x00
	.byte 0x00, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10, 0x71, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x10, 0x72, 0x00, 0x16, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x73, 0x00, 0x17, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x10, 0x74, 0x00, 0x18, 0x00
	.byte 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x10, 0x75, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x10, 0x76, 0x00, 0x58, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x77, 0x00, 0xA2, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x00, 0x72, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10, 0x79, 0x00, 0x73, 0x00, 0x00, 0x00, 0x80, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x7A, 0x00, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10
	.byte 0x7B, 0x00, 0x43, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10, 0x7C, 0x00, 0x8C, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10, 0x7D, 0x00, 0x8D, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x00, 0x00, 0x00, 0x10, 0x7E, 0x00, 0x19, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x7F, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x10, 0x80, 0x00, 0x60, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10, 0x81, 0x00, 0xA3, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x82, 0x00, 0x87, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x83, 0x00, 0x88, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10, 0x84, 0x00, 0x89, 0x00
	.byte 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x10, 0x85, 0x00, 0x8A, 0x00, 0x00, 0x00, 0x08, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x86, 0x00, 0x2B, 0x00, 0x8A, 0x86, 0x22, 0x00, 0x08, 0x00, 0x00, 0x10
	.byte 0x87, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x10, 0x88, 0x00, 0xDE, 0x00
	.byte 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x10, 0x89, 0x00, 0x01, 0x00, 0x02, 0x00, 0x08, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x8A, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x8B, 0x00, 0x91, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x20, 0x8C, 0x00, 0x64, 0x00
	.byte 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x10, 0x8D, 0x00, 0x65, 0x00, 0x00, 0x00, 0x08, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x8E, 0x00, 0xC4, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x8F, 0x00, 0xC5, 0x00, 0x00, 0x00, 0x88, 0x00, 0x10, 0x00, 0x00, 0x10, 0x90, 0x00, 0xCD, 0x00
	.byte 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x10, 0x91, 0x00, 0xCE, 0x00, 0x00, 0x00, 0x00, 0x40
	.byte 0x00, 0x00, 0x00, 0x30, 0x92, 0x00, 0x39, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x93, 0x00, 0x93, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x10, 0x94, 0x00, 0x94, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x95, 0x00, 0x37, 0x00, 0x00, 0x00, 0x08, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x96, 0x00, 0x38, 0x00, 0x00, 0x00, 0x08, 0x00, 0x84, 0x00, 0x00, 0x10
	.byte 0x97, 0x00, 0x9F, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0x00, 0x2D, 0x00
	.byte 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x10, 0x99, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x10, 0x40
	.byte 0x00, 0x00, 0x00, 0x10, 0x9A, 0x00, 0x6D, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x10
	.byte 0x9B, 0x00, 0x4C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10, 0x9C, 0x00, 0x4D, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x10, 0x9D, 0x00, 0x7E, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x9E, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x9F, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x10, 0xA0, 0x00, 0xA5, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x20, 0xA1, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xA2, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0xA3, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x10, 0xA4, 0x00, 0xD2, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA5, 0x00, 0x3E, 0x00, 0x00, 0x00, 0x00, 0x40
	.byte 0x00, 0x00, 0x00, 0x10, 0xA6, 0x00, 0x31, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0xA7, 0x00, 0x32, 0x00, 0x00, 0x00, 0x80, 0x00, 0x40, 0x00, 0x00, 0x10, 0xA8, 0x00, 0xA4, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA9, 0x00, 0xA5, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0xAA, 0x00, 0xA6, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x20
	.byte 0xAB, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x1C, 0x00, 0x00, 0x00, 0x10, 0xAC, 0x00, 0x11, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0xAD, 0x00, 0xDB, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x10, 0xAE, 0x00, 0x9D, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xAF, 0x00, 0xE5, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10, 0xB0, 0x00, 0x27, 0x00
	.byte 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x10, 0xB1, 0x00, 0x28, 0x00, 0x00, 0x00, 0x40, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0xB2, 0x00, 0x5D, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0xB3, 0x00, 0x44, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x10, 0xB4, 0x00, 0x82, 0x00
	.byte 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x10, 0xB5, 0x00, 0xB7, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB6, 0x00, 0xB8, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0xB7, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x10, 0xB8, 0x00, 0x1E, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x10, 0xB9, 0x00, 0x5B, 0x00, 0x00, 0x04, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0xBA, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x10
	.byte 0xBB, 0x00, 0x35, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x10, 0xBC, 0x00, 0x36, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0xBD, 0x00, 0x6B, 0x00, 0x00, 0x00, 0x40, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0xBE, 0x00, 0x95, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0xBF, 0x00, 0x96, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x10, 0xC0, 0x00, 0xA6, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x20, 0xC1, 0x00, 0x86, 0x00, 0x00, 0x00, 0x80, 0x00
	.byte 0x10, 0x00, 0x00, 0x10, 0xC2, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0xC3, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0xC4, 0x00, 0x9A, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC5, 0x00, 0x9A, 0x00, 0x00, 0x00, 0x00, 0x05
	.byte 0x00, 0x00, 0x00, 0x10, 0xC6, 0x00, 0x9B, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x10
	.byte 0xC7, 0x00, 0x9C, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0xC8, 0x00, 0x66, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0xC9, 0x00, 0x67, 0x00, 0x00, 0x00, 0x00, 0x05
	.byte 0x00, 0x00, 0x00, 0x10, 0xCA, 0x00, 0xA4, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xCB, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0xCC, 0x00, 0x13, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0xCD, 0x00, 0xCC, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x00, 0x00, 0x00, 0x10, 0xCE, 0x00, 0xA7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xCF, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0xD0, 0x00, 0xA9, 0x00
	.byte 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0xD1, 0x00, 0x69, 0x00, 0x00, 0x00, 0x00, 0x04
	.byte 0x00, 0x00, 0x00, 0x10, 0xD2, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x10
	.byte 0xD3, 0x00, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD4, 0x00, 0xE3, 0x00
	.byte 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0xD5, 0x00, 0x98, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x00, 0x10, 0xD6, 0x00, 0x99, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10
	.byte 0xD7, 0x00, 0xA7, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x20, 0xD8, 0x00, 0x3F, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0x40, 0x00, 0x00, 0x10, 0xD9, 0x00, 0x62, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x10, 0xDA, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10
	.byte 0xDB, 0x00, 0x93, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0xDC, 0x00, 0x5C, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xDD, 0x00, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x00, 0x10, 0xDE, 0x00, 0xD8, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10
	.byte 0xDF, 0x00, 0x9C, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x8E, 0x00
	.byte 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x10, 0xE1, 0x00, 0x9F, 0x00, 0x00, 0x00, 0x08, 0x00
	.byte 0x00, 0x00, 0x00, 0x10, 0xE2, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0xE3, 0x00, 0x98, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0xE4, 0x00, 0xA8, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE5, 0x00, 0x3A, 0x00, 0x00, 0x00, 0x00, 0x20
	.byte 0x00, 0x00, 0x00, 0x10, 0xE6, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10
	.byte 0xE7, 0x00, 0x94, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0xE8, 0x00, 0x9D, 0x00
	.byte 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0xE9, 0x00, 0x9E, 0x00, 0x00, 0x00, 0x00, 0x20
	.byte 0x00, 0x00, 0x00, 0x10, 0xEA, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10
	.byte 0xEB, 0x00, 0x49, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0xEC, 0x00, 0x4A, 0x00
	.byte 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0xED, 0x00, 0xEE, 0x00, 0x00, 0x00, 0x00, 0x20
	.byte 0x00, 0x00, 0x00, 0x10, 0xEE, 0x00, 0xF2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xEF, 0x00, 0x8F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x10, 0xF0, 0x00, 0x90, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x10, 0xF1, 0x00, 0xB9, 0x00, 0x00, 0x00, 0x00, 0x40
	.byte 0x00, 0x00, 0x00, 0x10, 0xF2, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10
	.byte 0xF3, 0x00, 0x75, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x10, 0xF4, 0x00, 0x63, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5, 0x00, 0xE4, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x00, 0x10, 0xF6, 0x00, 0xD9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xF7, 0x00, 0xDA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x10, 0xF8, 0x00, 0xCF, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0xF9, 0x00, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x10, 0xFA, 0x00, 0x92, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10
	.byte 0xFB, 0x00, 0xD5, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0xFC, 0x00, 0xD6, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x10, 0xFD, 0x00, 0x9B, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x20, 0xFE, 0x00, 0xAA, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x76, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x10, 0x00, 0x01, 0x97, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x10, 0x01, 0x01, 0xAB, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x01, 0x92, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x20
	.byte 0x03, 0x01, 0x97, 0x01, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x10, 0x04, 0x01, 0x91, 0x00
	.byte 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x10, 0x05, 0x01, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x10, 0x06, 0x01, 0xEA, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x10
	.byte 0x07, 0x01, 0x95, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x08, 0x01, 0xB0, 0x01
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x09, 0x01, 0xB1, 0x01, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x00, 0x10, 0x0A, 0x01, 0xB2, 0x01, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x10
	.byte 0x0B, 0x01, 0xA9, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0xE9, 0x03, 0xB3, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEA, 0x03, 0xB4, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xEB, 0x03, 0xB5, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021242C0

    .bss
OVERLAY21_BSS_021242C0: ; 0x021242C0
    .space 0x4
OVERLAY21_BSS_021242C4: ; 0x021242C4
    .space 0x1C
