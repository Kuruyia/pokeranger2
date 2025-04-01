    .include "asm/macros.inc"
    .include "asm/include/overlay_23.inc"

    .text

	arm_func_start ov23_0211C9E0
ov23_0211C9E0: ; 0x0211C9E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007C98
	ldr r0, _0211CA30 ; =ptr_FUN_overlay_23_0211ca3c_overlay_23_0211f1c4
	mov r1, #0
	str r0, [r4]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	str r1, [r4, #4]
	ldr r0, _0211CA34 ; =MAIN_BSS_0208F304
	str r1, [r4, #8]
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	str r0, [r4, #0x3c]
	bl sub_020345D4
	ldr r1, _0211CA38 ; =MAIN_BSS_020B26A0
	mov r0, r4
	str r1, [r4, #0x5c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CA30: .word ptr_FUN_overlay_23_0211ca3c_overlay_23_0211f1c4
_0211CA34: .word MAIN_BSS_0208F304
_0211CA38: .word MAIN_BSS_020B26A0
	arm_func_end ov23_0211C9E0

	arm_func_start ov23_0211CA3C
ov23_0211CA3C: ; 0x0211CA3C
	stmdb sp!, {r4, lr}
	ldr r1, _0211CA68 ; =ptr_FUN_overlay_23_0211ca3c_overlay_23_0211f1c4
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CA68: .word ptr_FUN_overlay_23_0211ca3c_overlay_23_0211f1c4
	arm_func_end ov23_0211CA3C

	arm_func_start ov23_0211CA6C
ov23_0211CA6C: ; 0x0211CA6C
	stmdb sp!, {r4, lr}
	ldr r1, _0211CAA0 ; =ptr_FUN_overlay_23_0211ca3c_overlay_23_0211f1c4
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	mov r0, r4
	bl sub_02007CC0
	mov r0, r4
	bl sub_02001470
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CAA0: .word ptr_FUN_overlay_23_0211ca3c_overlay_23_0211f1c4
	arm_func_end ov23_0211CA6C

	arm_func_start ov23_0211CAA4
ov23_0211CAA4: ; 0x0211CAA4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x4c]
	bl sub_0200F64C
	ldr r0, _0211CBD8 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	ldr r1, [r0, #0x18]
	add r0, r0, #0x1000
	ldrh r2, [r1, #0xa]
	ldrh r1, [r1, #0xc]
	ldr r0, [r0, #0x4bc]
	sub r2, r2, #0x80
	sub r1, r1, #0x60
	mov r2, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	str r2, [sp]
	str r1, [sp, #4]
	bl sub_0200E310
	cmp r0, #0
	bne _0211CB14
	ldr r0, _0211CBD8 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	beq _0211CB20
	arm_func_end ov23_0211CAA4
_0211CB14:
	add sp, sp, #8
	mvn r0, #0
	ldmia sp!, {r4, pc}
_0211CB20:
	ldr r0, [r4, #8]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211CBCC
_0211CB30: ; jump table
	b _0211CB44 ; case 0
	b _0211CB58 ; case 1
	b _0211CB64 ; case 2
	b _0211CB78 ; case 3
	b _0211CB8C ; case 4
_0211CB44:
	mov r0, #2
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #4]
	b _0211CBCC
_0211CB58:
	mov r0, r4
	bl ov23_0211CBDC
	b _0211CBCC
_0211CB64:
	add r1, sp, #0
	mov r0, r4
	ldmia r1, {r1, r2}
	bl ov23_0211CC44
	b _0211CBCC
_0211CB78:
	add r1, sp, #0
	mov r0, r4
	ldmia r1, {r1, r2}
	bl ov23_0211CDD4
	b _0211CBCC
_0211CB8C:
	ldr r0, _0211CBD8 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	ldr r0, [r0, #8]
	cmp r0, #1
	beq _0211CBB4
	cmp r0, #0x1a
	bne _0211CBC0
	add sp, sp, #8
	mov r0, #0x15
	ldmia sp!, {r4, pc}
_0211CBB4:
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, pc}
_0211CBC0:
	add sp, sp, #8
	mov r0, #0x22
	ldmia sp!, {r4, pc}
_0211CBCC:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CBD8: .word MAIN_BSS_0208F304

	arm_func_start ov23_0211CBDC
ov23_0211CBDC: ; 0x0211CBDC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r0, [r4, #8]
	str r1, [r4, #4]
	str r1, [r4, #0x10]
	ldr r0, _0211CC40 ; =MAIN_BSS_0208F304
	str r1, [r4, #0x14]
	ldr r0, [r0]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0xa
	bl sub_0200E0E0
	ldr r0, _0211CC40 ; =MAIN_BSS_0208F304
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	mov r0, r4
	bl ov23_0211D214
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211CC40: .word MAIN_BSS_0208F304
	arm_func_end ov23_0211CBDC

	arm_func_start ov23_0211CC44
ov23_0211CC44: ; 0x0211CC44
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r1, [r4, #0x10]
	tst r1, #2
	bne _0211CC6C
	ldr r0, [r4, #0x14]
	tst r0, #2
	beq _0211CD08
	arm_func_end ov23_0211CC44
_0211CC6C:
	ldr r0, [r4, #4]
	cmp r0, #2
	addne r0, r0, #1
	addne sp, sp, #0xc
	strne r0, [r4, #4]
	ldmneia sp!, {r3, r4, lr}
	addne sp, sp, #0x10
	bxne lr
	mov r0, #1
	str r0, [r4, #8]
	mov r0, #3
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x1c]
	mov r2, #4
	bl sub_0200F628
	ldr r0, _0211CDD0 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _0211CDD0 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	ldr r0, [r4, #0x3c]
	mov r1, #0xfa
	bl sub_02034C44
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
_0211CD08:
	ldr r0, _0211CDD0 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	ldrh r0, [r0, #2]
	and r0, r0, #0x10
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211CD40
	orr r0, r1, #2
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x1c]
	mov r2, #5
	bl sub_0200F628
_0211CD40:
	ldr r0, _0211CDD0 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	ldrb r0, [r0, #4]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x54]
	sub ip, sp, #8
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	add r0, sp, #0x1c
	ldmia ip, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [r4, #0x14]
	mov r2, #5
	orr r0, r0, #2
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x1c]
	bl sub_0200F628
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0211CDD0: .word MAIN_BSS_0208F304

	arm_func_start ov23_0211CDD4
ov23_0211CDD4: ; 0x0211CDD4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r1, _0211D0A4 ; =MAIN_BSS_0208F304
	mov r6, r0
	ldr r0, [r1]
	ldr r1, [r6, #0x10]
	ldr r4, [r0, #0x14]
	tst r1, #1
	ldr r5, [r0, #0x18]
	bne _0211CE0C
	ldr r0, [r6, #0x14]
	tst r0, #1
	beq _0211CE84
	arm_func_end ov23_0211CDD4
_0211CE0C:
	ldr r0, [r6, #4]
	cmp r0, #2
	addne r0, r0, #1
	strne r0, [r6, #4]
	bne _0211CF1C
	mov r0, #4
	str r0, [r6, #8]
	mov r2, #0
	str r2, [r6, #4]
	ldr r0, [r6, #0x4c]
	ldr r1, [r6, #0x18]
	bl sub_0200F628
	ldr r0, _0211D0A4 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0x3c
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _0211D0A4 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0x3c
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	ldr r0, [r6, #0x3c]
	ldr r1, _0211D0A8 ; =0x00000103
	bl sub_02034C44
	b _0211CF1C
_0211CE84:
	tst r1, #4
	bne _0211CF1C
	tst r0, #4
	bne _0211CF1C
	ldrh r0, [r4, #2]
	and r0, r0, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211CEC0
	orr r0, r1, #1
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x4c]
	ldr r1, [r6, #0x18]
	mov r2, #1
	bl sub_0200F628
_0211CEC0:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0211CF1C
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r6, #0x50]
	sub ip, sp, #8
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	add r0, sp, #0x24
	ldmia ip, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _0211CF1C
	ldr r0, [r6, #0x14]
	mov r2, #1
	orr r0, r0, #1
	str r0, [r6, #0x14]
	ldr r0, [r6, #0x4c]
	ldr r1, [r6, #0x18]
	bl sub_0200F628
_0211CF1C:
	ldr r1, [r6, #0x10]
	tst r1, #4
	bne _0211CF34
	ldr r0, [r6, #0x14]
	tst r0, #4
	beq _0211CFCC
_0211CF34:
	ldr r0, [r6, #4]
	cmp r0, #2
	addne r0, r0, #1
	addne sp, sp, #0xc
	strne r0, [r6, #4]
	ldmneia sp!, {r3, r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	mov r0, #1
	str r0, [r6, #8]
	mov r2, #2
	str r2, [r6, #0xc]
	mov r0, #0
	str r0, [r6, #4]
	ldr r0, [r6, #0x4c]
	ldr r1, [r6, #0x20]
	bl sub_0200F628
	ldr r0, _0211D0A4 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _0211D0A4 ; =MAIN_BSS_0208F304
	mov r1, #4
	ldr r0, [r0]
	mov r2, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	ldr r0, [r6, #0x3c]
	mov r1, #0xfa
	bl sub_02034C44
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_0211CFCC:
	tst r1, #1
	addne sp, sp, #0xc
	ldmneia sp!, {r3, r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	tst r0, #1
	addne sp, sp, #0xc
	ldmneia sp!, {r3, r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	ldrh r0, [r4, #2]
	and r0, r0, #0x20
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _0211D020
	orr r0, r1, #4
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x4c]
	ldr r1, [r6, #0x20]
	mov r2, #3
	bl sub_0200F628
_0211D020:
	ldrb r0, [r5, #4]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r6, #0x58]
	sub r4, sp, #8
	add r0, r0, #0x18
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0x24
	ldmia r4, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [r6, #0x14]
	mov r2, #3
	orr r0, r0, #4
	str r0, [r6, #0x14]
	ldr r0, [r6, #0x4c]
	ldr r1, [r6, #0x20]
	bl sub_0200F628
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0211D0A4: .word MAIN_BSS_0208F304
_0211D0A8: .word 0x00000103

	arm_func_start ov23_0211D0AC
ov23_0211D0AC: ; 0x0211D0AC
	ldr ip, _0211D0B8 ; =FUN_0200F71C
	ldr r0, [r0, #0x4c]
	bx ip
	.align 2, 0
_0211D0B8: .word sub_0200F71C
	arm_func_end ov23_0211D0AC

	arm_func_start ov23_0211D0BC
ov23_0211D0BC: ; 0x0211D0BC
	bx lr
	arm_func_end ov23_0211D0BC

	arm_func_start ov23_0211D0C0
ov23_0211D0C0: ; 0x0211D0C0
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
	mov r0, #3
	bl sub_02061954
	mov r0, #8
	bl sub_020616C4
	mov r0, #1
	mov r1, #0
	mov r2, r1
	bl sub_02061500
	mov r0, #4
	bl sub_02062110
	mov r0, #0x100
	bl sub_020621B8
	mov r1, #0
	str r1, [sp]
	ldr r0, _0211D204 ; =0x04000050
	mov r2, r1
	mov r3, r1
	bl sub_02062C10
	ldr lr, _0211D208 ; =0x04000060
	ldr r1, _0211D20C ; =0xFFFFFDF1
	ldrh r2, [lr]
	add ip, lr, #0x2a4
	mov r0, #0x4000000
	bic r2, r2, #0x3000
	orr r2, r2, #8
	strh r2, [lr]
	ldrh r3, [lr]
	add r2, r0, #0x1000
	bic r3, r3, #0x3000
	orr r3, r3, #0x10
	strh r3, [lr]
	ldrh r3, [ip]
	and r1, r3, r1
	orr r1, r1, #0xe
	orr r1, r1, #0x200
	strh r1, [ip]
	ldrh r1, [ip]
	bic r1, r1, #0x8000
	strh r1, [ip]
	ldr r1, [r0]
	bic r1, r1, #0x1f00
	orr r1, r1, #0x1f00
	str r1, [r0]
	ldr r1, [r2]
	bic r1, r1, #0x1f00
	orr r1, r1, #0x200
	str r1, [r2]
	ldrh r1, [r0, #8]
	bic r1, r1, #3
	strh r1, [r0, #8]
	ldrh r1, [r0, #0xa]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xc]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #0xe]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r0, #0xe]
	bl sub_020614B8
	ldr r1, _0211D210 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0211D204: .word 0x04000050
_0211D208: .word 0x04000060
_0211D20C: .word 0xFFFFFDF1
_0211D210: .word 0x04001000
	arm_func_end ov23_0211D0C0

	arm_func_start ov23_0211D214
ov23_0211D214: ; 0x0211D214
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _0211D238
	bl ov23_0211D270
	mov r0, r4
	bl ov23_0211DEB8
	ldmia sp!, {r4, pc}
	arm_func_end ov23_0211D214
_0211D238:
	ldr r1, [r4, #0xc]
	cmp r1, #2
	beq _0211D250
	cmp r1, #3
	beq _0211D260
	ldmia sp!, {r4, pc}
_0211D250:
	bl ov23_0211D270
	mov r0, r4
	bl ov23_0211DEB8
	ldmia sp!, {r4, pc}
_0211D260:
	bl ov23_0211D870
	mov r0, r4
	bl ov23_0211DEDC
	ldmia sp!, {r4, pc}

	arm_func_start ov23_0211D270
ov23_0211D270: ; 0x0211D270
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x254
	ldr r7, _0211D864 ; =DAT_overlay_23_0211eb64
	add r6, sp, #0x134
	mov r4, r0
	mov r5, #0x12
	arm_func_end ov23_0211D270
_0211D288:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0211D288
	ldr r0, _0211D868 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r7, [r0, #0x498]
	mov r0, r7
	bl sub_0200CAE0
	mov r0, r7
	bl sub_0200CB14
	mov r0, r7
	mov r1, #0x16
	bl sub_0200CC88
	add r8, sp, #0x134
	mov r5, #0x40
	mov r6, #0
_0211D2D0:
	ldr r1, [r8, #8]
	mov r0, r7
	str r1, [sp]
	ldr r2, [r8, #0xc]
	mov r1, r6
	stmib sp, {r2, r5}
	ldr r2, [r8, #0x1c]
	str r2, [sp, #0xc]
	ldr r2, [r8, #0x20]
	str r2, [sp, #0x10]
	ldmia r8, {r2, r3}
	bl sub_0200CCD0
	add r6, r6, #1
	ldr r1, [r8]
	ldr r0, [r8, #4]
	cmp r6, #8
	mla r5, r1, r0, r5
	add r8, r8, #0x24
	blt _0211D2D0
	ldr r0, [sp, #0x14c]
	mov r2, #1
	str r0, [sp]
	ldr r0, [r4, #0x60]
	mov r1, #0
	ldr r3, [r0, #8]
	mov r0, r7
	ldr r3, [r3, #0xc]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x144]
	ldr r3, [sp, #0x148]
	bl sub_0200CDA0
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r2, [r1, #8]
	mov r1, #1
	ldr r5, [r2, #0x14]
	mov r3, #0
	mov r2, r5
	bl sub_0200CFC0
	ldr r1, [sp, #0x170]
	mov r2, r0
	stmia sp, {r1, r5}
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x16c]
	mov r0, r7
	mov r1, #1
	bl sub_0200CDA0
	ldr r0, [sp, #0x194]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r3, [r1, #8]
	mov r1, #2
	ldr r3, [r3, #0x1c]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x18c]
	ldr r3, [sp, #0x190]
	bl sub_0200CDA0
	ldr r0, [sp, #0x1b8]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r3, [r1, #8]
	mov r1, #3
	ldr r3, [r3, #0x24]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x1b0]
	ldr r3, [sp, #0x1b4]
	bl sub_0200CDA0
	ldr r0, [sp, #0x1dc]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r3, [r1, #8]
	mov r1, #4
	ldr r3, [r3, #0x2c]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x1d4]
	ldr r3, [sp, #0x1d8]
	bl sub_0200CDA0
	ldr r2, [r4, #0x5c]
	mov r0, r4
	add r2, r2, #0x8000
	ldr r2, [r2, #0x758]
	mov r1, #7
	bl ov23_0211E818
	mov r0, r7
	add r2, r4, #0x24
	mov r1, #5
	mov r3, #0
	bl sub_0200CFC0
	ldr r1, [sp, #0x200]
	mov r2, r0
	str r1, [sp]
	add r0, r4, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1fc]
	mov r0, r7
	mov r1, #5
	bl sub_0200CDA0
	ldr r1, [r4, #0x5c]
	mov r0, r4
	add r1, r1, #0x8000
	ldr r2, [r1, #0x75c]
	mov r1, #5
	bl ov23_0211E818
	mov r0, r7
	mov r1, #6
	add r2, r4, #0x24
	mov r3, #0
	bl sub_0200CFC0
	ldr r1, [sp, #0x224]
	mov r2, r0
	str r1, [sp]
	add r0, r4, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x220]
	mov r0, r7
	mov r1, #6
	bl sub_0200CDA0
	ldr r2, [r4, #0x5c]
	mov r0, r4
	add r2, r2, #0x8000
	ldr r2, [r2, #0x760]
	mov r1, #5
	bl ov23_0211E818
	mov r0, r7
	mov r1, #7
	add r2, r4, #0x24
	mov r3, #0
	bl sub_0200CFC0
	ldr r3, [sp, #0x248]
	mov r2, r0
	add r1, r4, #0x24
	str r3, [sp]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r3, [sp, #0x244]
	mov r0, r7
	mov r1, #7
	bl sub_0200CDA0
	ldr r7, _0211D86C ; =DAT_overlay_23_0211ec84
	add r6, sp, #0x14
	mov r5, #0x12
_0211D564:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0211D564
	ldr r0, _0211D868 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r7, [r0, #0x494]
	mov r0, r7
	bl sub_0200C3D0
	mov r1, #0
	mov r0, r7
	mov r3, r1
	mov r2, #0xc
	bl sub_0200C408
	mov r0, r7
	mov r1, #0x18
	bl sub_0200C680
	add r8, sp, #0x14
	mov r5, #0x40
	mov r6, #0
_0211D5B8:
	ldr r1, [r8, #8]
	mov r0, r7
	str r1, [sp]
	ldr r2, [r8, #0xc]
	mov r1, r6
	stmib sp, {r2, r5}
	ldr r2, [r8, #0x1c]
	str r2, [sp, #0xc]
	ldr r2, [r8, #0x20]
	str r2, [sp, #0x10]
	ldmia r8, {r2, r3}
	bl sub_0200C6C8
	add r6, r6, #1
	ldr r1, [r8]
	ldr r0, [r8, #4]
	cmp r6, #8
	mla r5, r1, r0, r5
	add r8, r8, #0x24
	blt _0211D5B8
	ldr r0, [sp, #0x2c]
	mov r1, #0
	str r0, [sp]
	ldr r2, [r4, #0x60]
	mov r0, r7
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x34]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_0200C7A4
	ldr r0, [sp, #0x50]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r3, [r1, #8]
	mov r1, #1
	ldr r3, [r3, #0x3c]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	bl sub_0200C7A4
	ldr r0, [sp, #0x74]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r3, [r1, #8]
	mov r1, #2
	ldr r3, [r3, #0x44]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_0200C7A4
	ldr r0, [sp, #0x98]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r3, [r1, #8]
	mov r1, #3
	ldr r3, [r3, #0x4c]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x90]
	ldr r3, [sp, #0x94]
	bl sub_0200C7A4
	mov r0, r4
	mov r1, #5
	ldr r2, [r4, #0x5c]
	add r2, r2, #0x8000
	ldr r2, [r2, #0x764]
	bl ov23_0211E818
	mov r0, r7
	mov r1, #4
	add r2, r4, #0x24
	mov r3, #0
	bl sub_0200CA80
	mov r2, r0
	ldr r1, [sp, #0xbc]
	add r0, r4, #0x24
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r7
	mov r1, #4
	ldr r3, [sp, #0xb8]
	bl sub_0200C7A4
	ldr r1, [r4, #0x5c]
	mov r0, r4
	add r1, r1, #0x8000
	ldr r2, [r1, #0x768]
	mov r1, #5
	bl ov23_0211E818
	mov r0, r7
	add r2, r4, #0x24
	mov r1, #5
	mov r3, #0
	bl sub_0200CA80
	ldr r1, [sp, #0xe0]
	mov r2, r0
	str r1, [sp]
	add r0, r4, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0xdc]
	mov r0, r7
	mov r1, #5
	bl sub_0200C7A4
	ldr r0, [r4, #0x5c]
	bl sub_020171A0
	mov r1, r0
	mov r0, r4
	bl ov23_0211E8A8
	mov r0, r7
	mov r1, #6
	add r2, r4, #0x24
	mov r3, #0
	bl sub_0200CA80
	ldr r1, [sp, #0x104]
	mov r2, r0
	str r1, [sp]
	add r0, r4, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x100]
	mov r0, r7
	mov r1, #6
	bl sub_0200C7A4
	ldr r0, [r4, #0x5c]
	mov r2, #0x3b
	add r0, r0, #0x8000
	ldrb r3, [r0, #0x7da]
	mov r1, #0x63
	cmp r3, #0
	ldreqb r2, [r0, #0x7d8]
	ldreq r1, [r0, #0x7d4]
	mov r0, r4
	bl ov23_0211E940
	mov r0, r7
	add r2, r4, #0x24
	mov r1, #7
	mov r3, #0
	bl sub_0200CA80
	ldr r1, [sp, #0x128]
	mov r2, r0
	str r1, [sp]
	add r0, r4, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x124]
	mov r0, r7
	mov r1, #7
	bl sub_0200C7A4
	add sp, sp, #0x254
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0211D864: .word DAT_overlay_23_0211eb64
_0211D868: .word MAIN_BSS_0208F304
_0211D86C: .word DAT_overlay_23_0211ec84

	arm_func_start ov23_0211D870
ov23_0211D870: ; 0x0211D870
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x124
	sub sp, sp, #0x400
	mov r4, r0
	ldr r0, [r4, #0x5c]
	bl sub_02016F7C
	movs r1, r0
	bne _0211D8A0
	ldr r0, [r4, #0x60]
	ldr r0, [r0, #8]
	ldr sb, [r0, #0x94]
	b _0211D8B8
	arm_func_end ov23_0211D870
_0211D8A0:
	ldr r0, _0211DEA8 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4b0]
	bl sub_02018B10
	mov sb, r0
_0211D8B8:
	add r6, sp, #0x400
	ldr r7, _0211DEAC ; =DAT_overlay_23_0211ea44
	add r6, r6, #4
	mov r5, #0x12
_0211D8C8:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0211D8C8
	ldr r0, _0211DEA8 ; =MAIN_BSS_0208F304
	mov r2, #0x18
	ldr r0, [r0]
	mov r1, #4
	str r2, [sp, #0x4b8]
	str r1, [sp, #0x4c0]
	add r0, r0, #0x1000
	ldr r7, [r0, #0x498]
	mov r0, r7
	bl sub_0200CAE0
	mov r0, r7
	bl sub_0200CB14
	mov r0, r7
	mov r1, #0x10
	bl sub_0200CC88
	add r8, sp, #0x400
	add r8, r8, #4
	mov r5, #0x40
	mov r6, #0
_0211D924:
	ldr r1, [r8, #8]
	mov r0, r7
	str r1, [sp]
	ldr r2, [r8, #0xc]
	mov r1, r6
	stmib sp, {r2, r5}
	ldr r2, [r8, #0x1c]
	str r2, [sp, #0xc]
	ldr r2, [r8, #0x20]
	str r2, [sp, #0x10]
	ldmia r8, {r2, r3}
	bl sub_0200CCD0
	add r6, r6, #1
	ldr r1, [r8]
	ldr r0, [r8, #4]
	cmp r6, #8
	mla r5, r1, r0, r5
	add r8, r8, #0x24
	blt _0211D924
	ldr r0, [sp, #0x41c]
	mov r2, #1
	str r0, [sp]
	ldr r0, [r4, #0x60]
	mov r1, #0
	ldr r3, [r0, #8]
	mov r0, r7
	ldr r3, [r3, #0xc]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x414]
	ldr r3, [sp, #0x418]
	bl sub_0200CDA0
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r2, [r1, #8]
	mov r1, #1
	ldr r5, [r2, #0x54]
	mov r3, #0
	mov r2, r5
	bl sub_0200CFC0
	ldr r1, [sp, #0x440]
	mov r2, r0
	stmia sp, {r1, r5}
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x43c]
	mov r0, r7
	mov r1, #1
	bl sub_0200CDA0
	ldr r0, [sp, #0x464]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r3, [r1, #8]
	mov r1, #2
	ldr r3, [r3, #0x5c]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x45c]
	ldr r3, [sp, #0x460]
	bl sub_0200CDA0
	ldr r0, [sp, #0x488]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r3, [r1, #8]
	mov r1, #3
	ldr r3, [r3, #0x64]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x480]
	ldr r3, [sp, #0x484]
	bl sub_0200CDA0
	ldr r0, [sp, #0x4ac]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r3, [r1, #8]
	mov r1, #4
	ldr r3, [r3, #0x6c]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x4a4]
	ldr r3, [sp, #0x4a8]
	bl sub_0200CDA0
	mov r0, r7
	mov r1, #5
	mov r2, sb
	mov r3, #0
	bl sub_0200CFC0
	mov r2, r0
	ldr r1, [sp, #0x4d0]
	mov r0, #0
	stmia sp, {r1, sb}
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x4cc]
	mov r0, r7
	mov r1, #5
	bl sub_0200CDA0
	ldr r1, [r4, #0x5c]
	mov r0, r4
	add r1, r1, #0x8700
	ldrh r5, [r1, #0xb8]
	bl ov23_0211DF00
	mov r0, r4
	mov r2, r5
	mov r1, #4
	bl ov23_0211E818
	mov r0, r7
	mov r1, #6
	add r2, r4, #0x24
	mov r3, #0
	bl sub_0200CFC0
	ldr r1, [sp, #0x4f4]
	mov r2, r0
	str r1, [sp]
	add r0, r4, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x4f0]
	mov r0, r7
	mov r1, #6
	bl sub_0200CDA0
	ldr r2, [r4, #0x5c]
	mov r0, r4
	add r2, r2, #0x8700
	ldrh r2, [r2, #0xba]
	mov r1, #4
	bl ov23_0211E818
	mov r0, r7
	mov r1, #7
	add r2, r4, #0x24
	mov r3, #0
	bl sub_0200CFC0
	ldr r3, [sp, #0x518]
	mov r2, r0
	add r1, r4, #0x24
	str r3, [sp]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r3, [sp, #0x514]
	mov r0, r7
	mov r1, #7
	bl sub_0200CDA0
	ldr r7, _0211DEB0 ; =DAT_overlay_23_0211eda4
	add r6, sp, #0x14
	mov r5, #0x3f
_0211DBA4:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0211DBA4
	ldr r0, _0211DEA8 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r7, [r0, #0x494]
	mov r0, r7
	bl sub_0200C3D0
	mov r1, #0
	mov r0, r7
	mov r3, r1
	mov r2, #0xc
	bl sub_0200C408
	mov r0, r7
	mov r1, #0x1c
	bl sub_0200C680
	add r8, sp, #0x14
	mov r5, #0x40
	mov r6, #0
_0211DBF8:
	ldr r1, [r8, #8]
	mov r0, r7
	str r1, [sp]
	ldr r2, [r8, #0xc]
	mov r1, r6
	stmib sp, {r2, r5}
	ldr r2, [r8, #0x1c]
	str r2, [sp, #0xc]
	ldr r2, [r8, #0x20]
	str r2, [sp, #0x10]
	ldmia r8, {r2, r3}
	bl sub_0200C6C8
	add r6, r6, #1
	ldr r1, [r8]
	ldr r0, [r8, #4]
	cmp r6, #8
	mla r5, r1, r0, r5
	add r8, r8, #0x24
	blt _0211DBF8
	ldr r0, [sp, #0x2c]
	mov r1, #0
	str r0, [sp]
	ldr r2, [r4, #0x60]
	mov r0, r7
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x74]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_0200C7A4
	ldr r0, [sp, #0x50]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r3, [r1, #8]
	mov r1, #1
	ldr r3, [r3, #0x7c]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	bl sub_0200C7A4
	ldr r0, [sp, #0x74]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r3, [r1, #8]
	mov r1, #2
	ldr r3, [r3, #0x84]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_0200C7A4
	ldr r0, [sp, #0x98]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	mov r0, r7
	ldr r3, [r1, #8]
	mov r1, #3
	ldr r3, [r3, #0x8c]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x90]
	ldr r3, [sp, #0x94]
	bl sub_0200C7A4
	mov r0, r4
	mov r1, #4
	ldr r2, [r4, #0x5c]
	add r2, r2, #0x8700
	ldrh r2, [r2, #0xbc]
	bl ov23_0211E818
	mov r0, r7
	mov r1, #4
	add r2, r4, #0x24
	mov r3, #0
	bl sub_0200CA80
	mov r2, r0
	ldr r1, [sp, #0xbc]
	add r0, r4, #0x24
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r7
	mov r1, #4
	ldr r3, [sp, #0xb8]
	bl sub_0200C7A4
	ldr r0, [r4, #0x5c]
	ldr r1, _0211DEB4 ; =0x88888889
	add r0, r0, #0x8000
	ldr r2, [r0, #0x7b0]
	mov r0, r4
	add r3, r2, r2, lsl #5
	umull r1, r2, r3, r1
	mov r2, r2, lsr #8
	mov r1, #6
	bl ov23_0211E818
	mov r0, r7
	add r2, r4, #0x24
	mov r1, #5
	mov r3, #0
	bl sub_0200CA80
	ldr r1, [sp, #0xe0]
	mov r2, r0
	str r1, [sp]
	add r0, r4, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0xdc]
	mov r0, r7
	mov r1, #5
	bl sub_0200C7A4
	mov r0, r4
	mov r1, #6
	ldr r2, [r4, #0x5c]
	add r2, r2, #0x8000
	ldr r2, [r2, #0x7b4]
	bl ov23_0211E818
	mov r0, r7
	mov r1, #6
	add r2, r4, #0x24
	mov r3, #0
	bl sub_0200CA80
	mov r2, r0
	ldr r1, [sp, #0x104]
	add r0, r4, #0x24
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r7
	mov r1, #6
	ldr r3, [sp, #0x100]
	bl sub_0200C7A4
	mov r0, r4
	mov r1, #7
	ldr r2, [r4, #0x5c]
	ldr r2, [r2, #0x2c]
	bl ov23_0211E818
	mov r0, r7
	mov r1, #7
	add r2, r4, #0x24
	mov r3, #0
	bl sub_0200CA80
	add r3, r4, #0x24
	mov r2, r0
	mov r0, r7
	ldr r4, [sp, #0x128]
	mov r1, #0
	str r4, [sp]
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #7
	ldr r3, [sp, #0x124]
	bl sub_0200C7A4
	add sp, sp, #0x124
	add sp, sp, #0x400
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0211DEA8: .word MAIN_BSS_0208F304
_0211DEAC: .word DAT_overlay_23_0211ea44
_0211DEB0: .word DAT_overlay_23_0211eda4
_0211DEB4: .word 0x88888889

	arm_func_start ov23_0211DEB8
ov23_0211DEB8: ; 0x0211DEB8
	ldr r1, [r0, #0x44]
	mov r2, #1
	str r2, [r1, #0x14]
	ldr r1, [r0, #0x48]
	mov r2, #0
	str r2, [r1, #0x14]
	ldr r0, [r0, #0x40]
	str r2, [r0, #0x14]
	bx lr
	arm_func_end ov23_0211DEB8

	arm_func_start ov23_0211DEDC
ov23_0211DEDC: ; 0x0211DEDC
	ldr r1, [r0, #0x44]
	mov r2, #0
	str r2, [r1, #0x14]
	ldr r1, [r0, #0x48]
	mov r2, #1
	str r2, [r1, #0x14]
	ldr r0, [r0, #0x40]
	str r2, [r0, #0x14]
	bx lr
	arm_func_end ov23_0211DEDC

	arm_func_start ov23_0211DF00
ov23_0211DF00: ; 0x0211DF00
	mov r3, #0
	mov r2, r3
	arm_func_end ov23_0211DF00
_0211DF08:
	add r1, r0, r3
	add r3, r3, #1
	strb r2, [r1, #0x24]
	cmp r3, #0x15
	blt _0211DF08
	bx lr

	arm_func_start ov23_0211DF20
ov23_0211DF20: ; 0x0211DF20
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	mov lr, #0
	str lr, [r4, #4]
	ldr r0, _0211DFF0 ; =MAIN_BSS_0208F304
	str lr, [r4, #8]
	ldr ip, [r0]
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
	str lr, [sp, #0x14]
	ldr r3, [r0, #0x4ac]
	ldr r0, [r0, #0x490]
	ldr r1, [ip, #0x14]
	ldr r2, [ip, #0x18]
	add r3, r3, #0xc
	bl sub_02009328
	mov r0, r4
	bl ov23_0211E19C
	mov r0, r4
	bl ov23_0211E454
	mov r0, r4
	bl ov23_0211E668
	mov r0, r4
	bl ov23_0211E75C
	mov r0, r4
	bl ov23_0211D214
	ldr r0, _0211DFF0 ; =MAIN_BSS_0208F304
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0x3c
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E0E0
	ldr r0, _0211DFF0 ; =MAIN_BSS_0208F304
	mov r1, #3
	ldr r0, [r0]
	mov r2, #0x3c
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E0E0
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_0211DFF0: .word MAIN_BSS_0208F304
	arm_func_end ov23_0211DF20

	arm_func_start ov23_0211DFF4
ov23_0211DFF4: ; 0x0211DFF4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r4, [r5, #0x4c]
	cmp r4, #0
	beq _0211E024
	beq _0211E01C
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl sub_02001470
	arm_func_end ov23_0211DFF4
_0211E01C:
	mov r0, #0
	str r0, [r5, #0x4c]
_0211E024:
	mov r6, #0
	mov r4, r6
_0211E02C:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _0211E054
	beq _0211E04C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E04C:
	add r0, r5, r6, lsl #2
	str r4, [r0, #0x50]
_0211E054:
	add r6, r6, #1
	cmp r6, #3
	blt _0211E02C
	ldr r1, [r5, #0x60]
	cmp r1, #0
	beq _0211E0F0
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211E0BC
	mov r6, r4
_0211E080:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211E0A8
	bl sub_0200147C
	ldr r0, [r5, #0x60]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211E0A8:
	ldr r1, [r5, #0x60]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211E080
_0211E0BC:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211E0D8
	bl sub_0200147C
	ldr r0, [r5, #0x60]
	mov r1, #0
	str r1, [r0, #8]
_0211E0D8:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _0211E0F0
	bl sub_02001470
	mov r0, #0
	str r0, [r5, #0x60]
_0211E0F0:
	ldr r1, [r5, #0x64]
	cmp r1, #0
	beq _0211E180
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0211E14C
	mov r6, r4
_0211E110:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0211E138
	bl sub_0200147C
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0211E138:
	ldr r1, [r5, #0x64]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0211E110
_0211E14C:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0211E168
	bl sub_0200147C
	ldr r0, [r5, #0x64]
	mov r1, #0
	str r1, [r0, #8]
_0211E168:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	beq _0211E180
	bl sub_02001470
	mov r0, #0
	str r0, [r5, #0x64]
_0211E180:
	ldr r0, _0211E198 ; =MAIN_BSS_0208F304
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_020092D4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0211E198: .word MAIN_BSS_0208F304

	arm_func_start ov23_0211E19C
ov23_0211E19C: ; 0x0211E19C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r0, #0x6c
	bl MemoryAlloc_Thunk1
	movs r4, r0
	beq _0211E1DC
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0211E42C ; =s_BGU_overlay_23_0211f1f0
	ldr r2, _0211E430 ; =s_data_menu_mre000_bg_LZ_bin_overlay_23_0211f1f4
	str r4, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
	arm_func_end ov23_0211E19C
_0211E1DC:
	mov r0, #0xbc
	bl MemoryAlloc_Thunk1
	movs r5, r0
	beq _0211E204
	ldr r1, _0211E434 ; =s_BGU_mre000_NCGR_overlay_23_0211f210
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_0200365C
	mov r5, r0
_0211E204:
	mov r0, #0xbc
	bl MemoryAlloc_Thunk1
	movs r6, r0
	beq _0211E22C
	ldr r1, _0211E438 ; =s_BGU_mre000_NCLR_overlay_23_0211f220
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
	mov r6, r0
_0211E22C:
	mov r0, #0xbc
	bl MemoryAlloc_Thunk1
	movs r7, r0
	beq _0211E254
	ldr r1, _0211E43C ; =s_BGU_mre000_00_NSCR_overlay_23_0211f230
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_02003494
	mov r7, r0
_0211E254:
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
	cmp r7, #0
	beq _0211E298
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E298:
	cmp r5, #0
	beq _0211E2B0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E2B0:
	cmp r6, #0
	beq _0211E2C8
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E2C8:
	cmp r4, #0
	beq _0211E2E0
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl sub_02001470
_0211E2E0:
	mov r0, #0x6c
	bl MemoryAlloc_Thunk1
	movs r4, r0
	beq _0211E318
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0211E440 ; =s_BGD_overlay_23_0211f244
	ldr r2, _0211E444 ; =s_data_menu_mre001_bg_LZ_bin_overlay_23_0211f248
	str r4, [sp, #0xc]
	bl sub_02002AEC
	mov r4, r0
_0211E318:
	mov r0, #0xbc
	bl MemoryAlloc_Thunk1
	movs r6, r0
	beq _0211E340
	ldr r1, _0211E448 ; =s_BGD_mre001_NCGR_overlay_23_0211f264
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_0200365C
	mov r6, r0
_0211E340:
	mov r0, #0xbc
	bl MemoryAlloc_Thunk1
	movs r5, r0
	beq _0211E368
	ldr r1, _0211E44C ; =s_BGD_mre001_NCLR_overlay_23_0211f274
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020033B0
	mov r5, r0
_0211E368:
	mov r0, #0xbc
	bl MemoryAlloc_Thunk1
	movs r7, r0
	beq _0211E390
	ldr r1, _0211E450 ; =s_BGD_mre001_00_NSCR_overlay_23_0211f284
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_02003494
	mov r7, r0
_0211E390:
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
	mov r0, #2
	bl NitroSystem_g2d_Screen_NNS_G2dBGSetupEx
	cmp r7, #0
	beq _0211E3D8
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E3D8:
	cmp r6, #0
	beq _0211E3F0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E3F0:
	cmp r5, #0
	beq _0211E408
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E408:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl sub_02002B6C
	mov r0, r4
	bl sub_02001470
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211E42C: .word s_BGU_overlay_23_0211f1f0
_0211E430: .word s_data_menu_mre000_bg_LZ_bin_overlay_23_0211f1f4
_0211E434: .word s_BGU_mre000_NCGR_overlay_23_0211f210
_0211E438: .word s_BGU_mre000_NCLR_overlay_23_0211f220
_0211E43C: .word s_BGU_mre000_00_NSCR_overlay_23_0211f230
_0211E440: .word s_BGD_overlay_23_0211f244
_0211E444: .word s_data_menu_mre001_bg_LZ_bin_overlay_23_0211f248
_0211E448: .word s_BGD_mre001_NCGR_overlay_23_0211f264
_0211E44C: .word s_BGD_mre001_NCLR_overlay_23_0211f274
_0211E450: .word s_BGD_mre001_00_NSCR_overlay_23_0211f284

	arm_func_start ov23_0211E454
ov23_0211E454: ; 0x0211E454
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0xb8
	bl MemoryAlloc_Thunk1
	movs r6, r0
	beq _0211E47C
	ldr r1, _0211E660 ; =s_data_message_etc_recode_mes_overlay_23_0211f298
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
	arm_func_end ov23_0211E454
_0211E47C:
	mov r0, #0xc
	bl MemoryAlloc_Thunk1
	str r0, [r7, #0x60]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #0x60]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #0x60]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl MemoryAlloc_Thunk2
	ldr r1, [r7, #0x60]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0x60]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0211E544
_0211E4D4:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #0x60]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl MemoryAlloc_Thunk2
	ldr r1, [r7, #0x60]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0x60]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl sub_02067E7C
	ldr r2, [r7, #0x60]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0211E4D4
_0211E544:
	cmp r6, #0
	beq _0211E55C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211E55C:
	mov r0, #0xb8
	bl MemoryAlloc_Thunk1
	movs r6, r0
	beq _0211E57C
	ldr r1, _0211E664 ; =s_data_message_etc_menu_mes_overlay_23_0211f2b8
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0211E57C:
	mov r0, #0xc
	bl MemoryAlloc_Thunk1
	str r0, [r7, #0x64]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #0x64]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #0x64]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl MemoryAlloc_Thunk2
	ldr r1, [r7, #0x64]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0x64]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0211E644
_0211E5D4:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #0x64]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl MemoryAlloc_Thunk2
	ldr r1, [r7, #0x64]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0x64]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl sub_02067E7C
	ldr r2, [r7, #0x64]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0211E5D4
_0211E644:
	cmp r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211E660: .word s_data_message_etc_recode_mes_overlay_23_0211f298
_0211E664: .word s_data_message_etc_menu_mes_overlay_23_0211f2b8

	arm_func_start ov23_0211E668
ov23_0211E668: ; 0x0211E668
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, #0x44
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211E6A8
	ldr r1, _0211E750 ; =MAIN_BSS_0208F304
	mov r2, #0x40
	ldr ip, [r1]
	mov r3, #0
	str r2, [sp]
	add r1, ip, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, ip, #0x24
	bl sub_0200ECD0
	arm_func_end ov23_0211E668
_0211E6A8:
	str r0, [r4, #0x4c]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x4c]
	ldr r1, _0211E754 ; =s_data_menu_overlay_23_0211f2d4
	ldr r2, _0211E758 ; =s_mre000_00_overlay_23_0211f2e0
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x4c]
	mov r2, #0xd8
	mov r3, #0xac
	bl sub_0200F4FC
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x4c]
	mov r0, #0
	ldr r2, [r1, #0x24]
	mov r1, #4
	str r2, [r4, #0x18]
	str r0, [sp]
	ldr r0, [r4, #0x4c]
	mov r2, #0xf5
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	mov r0, #0
	ldr r2, [r1, #0x24]
	mov r1, #2
	str r2, [r4, #0x1c]
	str r0, [sp]
	ldr r0, [r4, #0x4c]
	mov r2, #0xb
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x4c]
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x20]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0211E750: .word MAIN_BSS_0208F304
_0211E754: .word s_data_menu_overlay_23_0211f2d4
_0211E758: .word s_mre000_00_overlay_23_0211f2e0

	arm_func_start ov23_0211E75C
ov23_0211E75C: ; 0x0211E75C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x40
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211E778
	bl sub_02003B64
	arm_func_end ov23_0211E75C
_0211E778:
	str r0, [r4, #0x50]
	mov r1, #0x58000
	str r1, [r0, #0x18]
	mov r1, #0x4c000
	str r1, [r0, #0x1c]
	ldr r2, [r4, #0x50]
	mov r0, #0x40000
	str r0, [r2, #0x20]
	mov r1, #0x20000
	mov r0, #0x40
	str r1, [r2, #0x24]
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211E7B4
	bl sub_02003B64
_0211E7B4:
	str r0, [r4, #0x54]
	mov r1, #0x75000
	str r1, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #0x1c]
	ldr r2, [r4, #0x54]
	mov r1, #0x20000
	str r1, [r2, #0x20]
	mov r0, #0x40
	str r1, [r2, #0x24]
	bl MemoryAlloc_Thunk1
	cmp r0, #0
	beq _0211E7EC
	bl sub_02003B64
_0211E7EC:
	mov r1, #0x75000
	str r0, [r4, #0x58]
	rsb r1, r1, #0
	str r1, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #0x1c]
	ldr r1, [r4, #0x58]
	mov r0, #0x20000
	str r0, [r1, #0x20]
	str r0, [r1, #0x24]
	ldmia sp!, {r4, pc}

	arm_func_start ov23_0211E818
ov23_0211E818: ; 0x0211E818
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	add r0, sl, #0x24
	mov r1, #0
	mov r2, #0x15
	bl MI_CpuFill8
	mov r7, #0
	cmp sb, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov fp, #0xa
	ldr r5, _0211E8A4 ; =0x66666667
	sub r6, sb, #1
	mov r4, fp
	arm_func_end ov23_0211E818
_0211E854:
	mov r0, sl
	mov r1, r7
	mov r2, fp
	bl ov23_0211EA18
	mov r1, r0
	mov r0, r8
	bl FP__s32_div_f
	sub r1, r6, r7
	add r7, r7, #1
	mov r2, r0, lsr #0x1f
	add r1, sl, r1
	cmp r7, sb
	smull r3, ip, r5, r0
	add ip, r2, ip, asr #2
	smull r2, r3, r4, ip
	sub ip, r0, r2
	add r0, ip, #0x30
	strb r0, [r1, #0x24]
	blt _0211E854
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211E8A4: .word 0x66666667

	arm_func_start ov23_0211E8A8
ov23_0211E8A8: ; 0x0211E8A8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	add r0, sb, #0x24
	mov r1, #0
	mov r2, #0x15
	bl MI_CpuFill8
	mov r6, #0xa
	ldr r5, _0211E93C ; =0x66666667
	mov r7, #0
	mov r4, r6
	arm_func_end ov23_0211E8A8
_0211E8D4:
	mov r0, sb
	mov r1, r7
	mov r2, r6
	bl ov23_0211EA18
	mov r1, r0
	mov r0, r8
	bl FP__s32_div_f
	rsb r3, r7, #1
	add r7, r7, #1
	mov r1, r0, lsr #0x1f
	smull r2, ip, r5, r0
	add ip, r1, ip, asr #2
	smull r1, r2, r4, ip
	sub ip, r0, r1
	add r1, ip, #0x30
	add r0, sb, r3
	strb r1, [r0, #0x24]
	cmp r7, #2
	blt _0211E8D4
	mov r0, #0x2f
	strb r0, [sb, #0x26]
	mov r0, #0x36
	strb r0, [sb, #0x27]
	mov r0, #0x30
	strb r0, [sb, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0211E93C: .word 0x66666667

	arm_func_start ov23_0211E940
ov23_0211E940: ; 0x0211E940
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, #0xa
	ldr r7, _0211EA14 ; =0x66666667
	mov r5, r0
	mov r4, r1
	mov sl, r2
	mov sb, #0
	mov r6, r8
	arm_func_end ov23_0211E940
_0211E960:
	mov r0, r5
	mov r1, sb
	mov r2, r8
	bl ov23_0211EA18
	mov r1, r0
	mov r0, sl
	bl FP__s32_div_f
	rsb r3, sb, #4
	add sb, sb, #1
	mov r1, r0, lsr #0x1f
	smull r2, ip, r7, r0
	add ip, r1, ip, asr #2
	add r3, r5, r3
	cmp sb, #2
	smull r1, r2, r6, ip
	sub ip, r0, r1
	add r0, ip, #0x30
	strb r0, [r3, #0x24]
	blt _0211E960
	mov r0, #0x3a
	mov r8, #0xa
	ldr r7, _0211EA14 ; =0x66666667
	strb r0, [r5, #0x26]
	mov sb, #3
	mov r6, r8
_0211E9C4:
	mov r0, r5
	mov r2, r8
	sub r1, sb, #3
	bl ov23_0211EA18
	mov r1, r0
	mov r0, r4
	bl FP__s32_div_f
	rsb r3, sb, #4
	add sb, sb, #1
	mov r1, r0, lsr #0x1f
	smull r2, sl, r7, r0
	add sl, r1, sl, asr #2
	smull r1, r2, r6, sl
	sub sl, r0, r1
	add r1, sl, #0x30
	add r0, r5, r3
	strb r1, [r0, #0x24]
	cmp sb, #5
	blt _0211E9C4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0211EA14: .word 0x66666667

	arm_func_start ov23_0211EA18
ov23_0211EA18: ; 0x0211EA18
	stmdb sp!, {r4, lr}
	mov r4, r2
	cmp r1, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	sub r1, r1, #1
	bl ov23_0211EA18
	mul r0, r4, r0
	ldmia sp!, {r4, pc}
	arm_func_end ov23_0211EA18

	arm_func_start ov23_0211EA3C
ov23_0211EA3C: ; 0x0211EA3C
	mov r0, #0x18
    bx lr
	arm_func_end ov23_0211EA3C
	; 0x0211EA44

    .rodata
DAT_overlay_23_0211ea44: ; 0x0211EA44
	.byte 0x10, 0x00, 0x00, 0x00
DAT_overlay_23_0211ea48: ; 0x0211EA48
	.byte 0x02, 0x00, 0x00, 0x00
DAT_overlay_23_0211ea4c: ; 0x0211EA4C
	.byte 0x08, 0x00, 0x00, 0x00
DAT_overlay_23_0211ea50: ; 0x0211EA50
	.byte 0x01, 0x00, 0x00, 0x00
DAT_overlay_23_0211ea54: ; 0x0211EA54
	.byte 0x04, 0x00, 0x00, 0x00
DAT_overlay_23_0211ea58: ; 0x0211EA58
	.byte 0x04, 0x00, 0x00, 0x00
DAT_overlay_23_0211ea5c: ; 0x0211EA5C
	.byte 0x01, 0x00, 0x00, 0x00
DAT_overlay_23_0211ea60: ; 0x0211EA60
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00
DAT_overlay_23_0211eb64: ; 0x0211EB64
	.byte 0x10, 0x00, 0x00, 0x00
DAT_overlay_23_0211eb68: ; 0x0211EB68
	.byte 0x02, 0x00, 0x00, 0x00
DAT_overlay_23_0211eb6c: ; 0x0211EB6C
	.byte 0x08, 0x00, 0x00, 0x00
DAT_overlay_23_0211eb70: ; 0x0211EB70
	.byte 0x01, 0x00, 0x00, 0x00
DAT_overlay_23_0211eb74: ; 0x0211EB74
	.byte 0x04, 0x00, 0x00, 0x00
DAT_overlay_23_0211eb78: ; 0x0211EB78
	.byte 0x04, 0x00, 0x00, 0x00
DAT_overlay_23_0211eb7c: ; 0x0211EB7C
	.byte 0x01, 0x00, 0x00, 0x00
DAT_overlay_23_0211eb80: ; 0x0211EB80
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00
DAT_overlay_23_0211ec84: ; 0x0211EC84
	.byte 0x18, 0x00, 0x00, 0x00
DAT_overlay_23_0211ec88: ; 0x0211EC88
	.byte 0x02, 0x00, 0x00, 0x00
DAT_overlay_23_0211ec8c: ; 0x0211EC8C
	.byte 0x04, 0x00, 0x00, 0x00
DAT_overlay_23_0211ec90: ; 0x0211EC90
	.byte 0x01, 0x00, 0x00, 0x00
DAT_overlay_23_0211ec94: ; 0x0211EC94
	.byte 0x04, 0x00, 0x00, 0x00
DAT_overlay_23_0211ec98: ; 0x0211EC98
	.byte 0x04, 0x00, 0x00, 0x00
DAT_overlay_23_0211ec9c: ; 0x0211EC9C
	.byte 0x03, 0x00, 0x00, 0x00
DAT_overlay_23_0211eca0: ; 0x0211ECA0
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00
DAT_overlay_23_0211eda4: ; 0x0211EDA4
	.byte 0x18, 0x00, 0x00, 0x00
DAT_overlay_23_0211eda8: ; 0x0211EDA8
	.byte 0x02, 0x00, 0x00, 0x00
DAT_overlay_23_0211edac: ; 0x0211EDAC
	.byte 0x04, 0x00, 0x00, 0x00
DAT_overlay_23_0211edb0: ; 0x0211EDB0
	.byte 0x01, 0x00, 0x00, 0x00
DAT_overlay_23_0211edb4: ; 0x0211EDB4
	.byte 0x04, 0x00, 0x00, 0x00
DAT_overlay_23_0211edb8: ; 0x0211EDB8
	.byte 0x04, 0x00, 0x00, 0x00
DAT_overlay_23_0211edbc: ; 0x0211EDBC
	.byte 0x03, 0x00, 0x00, 0x00
DAT_overlay_23_0211edc0: ; 0x0211EDC0
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

    .section .sinit,4 ; 0x0211F194

    .data
PTR_ptr_FUN_020835bc_overlay_23_0211f1a0: ; 0x0211F1A0
	.word ptr_FUN_020835bc_0208f25c
	.word s_12CRecordScene_overlay_23_0211f1ac
	.word PTR_ptr_FUN_02083578_0208a804
s_12CRecordScene_overlay_23_0211f1ac: ; 0x0211F1AC
	.asciz "12CRecordScene"
_0211F1BB:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00
	.word PTR_ptr_FUN_020835bc_overlay_23_0211f1a0
ptr_FUN_overlay_23_0211ca3c_overlay_23_0211f1c4: ; 0x0211F1C4
	.word ov23_0211CA3C
ptr_FUN_overlay_23_0211ca6c_overlay_23_0211f1c8: ; 0x0211F1C8
	.word ov23_0211CA6C
ptr_FUN_overlay_23_0211caa4_overlay_23_0211f1cc: ; 0x0211F1CC
	.word ov23_0211CAA4
	.word ov23_0211D0AC
	.word ov23_0211D0BC
ptr_FUN_02007ce0_overlay_23_0211f1d8: ; 0x0211F1D8
	.word sub_02007CE0
ptr_FUN_02007cc4_overlay_23_0211f1dc: ; 0x0211F1DC
	.word sub_02007CC4
ptr_FUN_overlay_23_0211d0c0_overlay_23_0211f1e0: ; 0x0211F1E0
	.word ov23_0211D0C0
ptr_FUN_overlay_23_0211df20_overlay_23_0211f1e4: ; 0x0211F1E4
	.word ov23_0211DF20
ptr_FUN_overlay_23_0211dff4_overlay_23_0211f1e8: ; 0x0211F1E8
	.word ov23_0211DFF4
	.word ov23_0211EA3C
s_BGU_overlay_23_0211f1f0: ; 0x0211F1F0
	.asciz "BGU"
s_data_menu_mre000_bg_LZ_bin_overlay_23_0211f1f4: ; 0x0211F1F4
	.asciz "data/menu/mre000_bg_LZ.bin"
_0211F20F:
	.byte 0x00
s_BGU_mre000_NCGR_overlay_23_0211f210: ; 0x0211F210
	.asciz "BGU:mre000.NCGR"
s_BGU_mre000_NCLR_overlay_23_0211f220: ; 0x0211F220
	.asciz "BGU:mre000.NCLR"
s_BGU_mre000_00_NSCR_overlay_23_0211f230: ; 0x0211F230
	.asciz "BGU:mre000_00.NSCR"
_0211F243:
	.byte 0x00
s_BGD_overlay_23_0211f244: ; 0x0211F244
	.asciz "BGD"
s_data_menu_mre001_bg_LZ_bin_overlay_23_0211f248: ; 0x0211F248
	.asciz "data/menu/mre001_bg_LZ.bin"
_0211F263:
	.byte 0x00
s_BGD_mre001_NCGR_overlay_23_0211f264: ; 0x0211F264
	.asciz "BGD:mre001.NCGR"
s_BGD_mre001_NCLR_overlay_23_0211f274: ; 0x0211F274
	.asciz "BGD:mre001.NCLR"
s_BGD_mre001_00_NSCR_overlay_23_0211f284: ; 0x0211F284
	.asciz "BGD:mre001_00.NSCR"
_0211F297:
	.byte 0x00
s_data_message_etc_recode_mes_overlay_23_0211f298: ; 0x0211F298
	.asciz "/data/message/etc/recode_mes"
_0211F2B5:
	.byte 0x00, 0x00, 0x00
s_data_message_etc_menu_mes_overlay_23_0211f2b8: ; 0x0211F2B8
	.asciz "data/message/etc/menu_mes"
_0211F2D2:
	.byte 0x00, 0x00
s_data_menu_overlay_23_0211f2d4: ; 0x0211F2D4
	.asciz "data/menu"
_0211F2DE:
	.byte 0x00, 0x00
s_mre000_00_overlay_23_0211f2e0: ; 0x0211F2E0
	.asciz "mre000_00"
	; 0x0211F2EA
