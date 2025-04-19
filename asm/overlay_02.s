    .include "asm/macros.inc"
    .include "asm/include/overlay_02.inc"

    .text

	arm_func_start ov2_0211C9E0
ov2_0211C9E0: ; 0x0211C9E0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	str r0, [sp]
	ldr r0, [r0, #4]
	ldr r5, _0211D074 ; =MAIN_BSS_020B26A0
	add r1, r0, #0x1000
	ldr r0, [r0, #8]
	ldr r4, [r1, #0x444]
	cmp r0, #0
	ldr r0, [r4, #8]
	ldr sl, [r1, #0x434]
	str r0, [sp, #4]
	bne _0211CA34
	ldr r0, [r1, #0x48c]
	bl sub_02034954
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034F20
	arm_func_end ov2_0211C9E0
_0211CA34:
	ldrb r0, [r4, #4]
	cmp r0, #0xff
	strneb r0, [r5, #1]
	ldr r1, [r4, #0x10]
	mov r0, r5
	str r1, [r5, #4]
	bl sub_0201668C
	mov r8, #0
	ldrb r6, [r4, #0x14]
	ldrb r7, [r4, #0x6c]
	mov sb, r8
	add fp, sp, #8
_0211CA64:
	mov r0, r5
	mov r1, sb
	bl sub_020155FC
	cmp r0, #0
	beq _0211CAB4
	ldr r1, [r0, #8]
	tst r1, #1
	beq _0211CAB4
	ldrh r1, [r0, #2]
	ldrh r0, [r0, #4]
	mov r1, r1, lsl #0x14
	mov r2, r1, lsr #8
	ldr r1, _0211D078 ; =0x00000FFF
	and r1, r0, r1
	orr r0, r2, #0x6000000
	orr r0, r1, r0
	str r0, [fp, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r7
	bge _0211CAC0
_0211CAB4:
	add sb, sb, #1
	cmp sb, #0xa
	blt _0211CA64
_0211CAC0:
	cmp r7, #0
	mov r8, #0
	ble _0211CB40
	add fp, sp, #8
_0211CAD0:
	and r0, r8, #0xff
	add r0, r4, r0
	ldrb r0, [r0, #0x6d]
	cmp r0, #0
	beq _0211CB34
	ldr sb, [fp, r8, lsl #2]
	cmp sb, #0
	blt _0211CB34
	mov r0, r5
	mov r1, sb
	bl sub_02015520
	ldr r1, [r0, #8]
	tst r1, #2
	beq _0211CB1C
	ldrh r1, [r0]
	mov r0, r5
	mov r2, #1
	bl sub_02016F18
	b _0211CB28
_0211CB1C:
	mov r0, r5
	mov r1, sb
	bl sub_02015E54
_0211CB28:
	mov r0, r5
	mov r1, #1
	bl sub_02017170
_0211CB34:
	add r8, r8, #1
	cmp r8, r7
	blt _0211CAD0
_0211CB40:
	ldr r0, [sp, #4]
	mov r8, #0
	cmp r0, #0
	beq _0211CC0C
	cmp r6, #0
	ble _0211CDAC
	mov fp, r8
	mov r7, #3
	mov sb, #1
_0211CB64:
	and r0, r8, #0xff
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x38]
	mov r0, sl
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	ldrh r0, [r0]
	cmp r0, #0
	blt _0211CBFC
	cmp r0, #0x1f4
	bge _0211CBFC
	cmp r0, #0
	blt _0211CBC8
	cmp r0, #0x1f4
	bge _0211CBC8
	mov r1, r0, asr #4
	add r1, r5, r1, lsl #2
	add r1, r1, #0x7000
	mov r2, r0, lsl #0x1c
	ldr r3, [r1, #0xc3c]
	mov r1, r2, lsr #0x1b
	mov r1, r3, lsr r1
	and r1, r1, #3
	b _0211CBCC
_0211CBC8:
	mov r1, fp
_0211CBCC:
	cmp r1, #1
	bhs _0211CBFC
	mov r1, r0, asr #4
	mov r0, r0, lsl #0x1c
	add r1, r5, r1, lsl #2
	mov r0, r0, lsr #0x1b
	add r1, r1, #0x7000
	mvn r2, r7, lsl r0
	ldr r3, [r1, #0xc3c]
	and r2, r3, r2
	orr r0, r2, sb, lsl r0
	str r0, [r1, #0xc3c]
_0211CBFC:
	add r8, r8, #1
	cmp r8, r6
	blt _0211CB64
	b _0211CDAC
_0211CC0C:
	cmp r6, #0
	ble _0211CD8C
	mov r7, #3
	mov sb, #2
_0211CC1C:
	mov r0, sl
	and r1, r8, #0xff
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x38]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	ldrh r2, [r0]
	cmp r2, #0
	blt _0211CCB4
	cmp r2, #0x1f4
	bge _0211CCB4
	cmp r2, #0
	blt _0211CC80
	cmp r2, #0x1f4
	bge _0211CC80
	mov r1, r2, asr #4
	add r1, r5, r1, lsl #2
	add r1, r1, #0x7000
	ldr r3, [r1, #0xc3c]
	mov r1, r2, lsl #0x1c
	mov r1, r1, lsr #0x1b
	mov r1, r3, lsr r1
	and r1, r1, #3
	b _0211CC84
_0211CC80:
	mov r1, #0
_0211CC84:
	cmp r1, #2
	bhs _0211CCB4
	mov r1, r2, lsl #0x1c
	mov r2, r2, asr #4
	add r2, r5, r2, lsl #2
	mov r1, r1, lsr #0x1b
	add r2, r2, #0x7000
	ldr fp, [r2, #0xc3c]
	mvn r3, r7, lsl r1
	and r3, fp, r3
	orr r1, r3, sb, lsl r1
	str r1, [r2, #0xc3c]
_0211CCB4:
	ldrh r1, [r0]
	add r2, r5, r1
	add r1, r2, #0xbc
	add r2, r2, #0x7000
	ldrb r2, [r2, #0xcbc]
	add r1, r1, #0x7c00
	add r2, r2, #1
	cmp r2, #0
	movle r2, #0
	strleb r2, [r1]
	ble _0211CCF0
	cmp r2, #0xff
	movge r2, #0xff
	strgeb r2, [r1]
	strltb r2, [r1]
_0211CCF0:
	ldrh r1, [r0]
	ldrb r0, [r4, #0x6a]
	cmp r1, #0
	blt _0211CD80
	cmp r1, #0x1f4
	bge _0211CD80
	cmp r0, #3
	bhi _0211CD80
	cmp r1, #0
	blt _0211CD44
	cmp r1, #0x1f4
	bge _0211CD44
	mov r2, r1, asr #4
	add r2, r5, r2, lsl #2
	add r2, r2, #0x7000
	ldr r3, [r2, #0xeb0]
	mov r2, r1, lsl #0x1c
	mov r2, r2, lsr #0x1b
	mov r2, r3, lsr r2
	and r2, r2, #3
	b _0211CD48
_0211CD44:
	mov r2, #3
_0211CD48:
	cmp r0, r2
	bhs _0211CD80
	mov r2, r1, lsl #0x1c
	mov r1, r1, asr #4
	add r1, r5, r1, lsl #2
	add fp, r1, #0x7000
	mov r2, r2, lsr #0x1b
	mov r3, #3
	ldr r1, [fp, #0xeb0]
	mvn r3, r3, lsl r2
	and r0, r0, #3
	and r1, r1, r3
	orr r0, r1, r0, lsl r2
	str r0, [fp, #0xeb0]
_0211CD80:
	add r8, r8, #1
	cmp r8, r6
	blt _0211CC1C
_0211CD8C:
	ldr r1, [r4, #0x80]
	cmp r1, #0
	ble _0211CDA0
	mov r0, r5
	bl sub_02016D64
_0211CDA0:
	ldrb r1, [r4, #0x14]
	mov r0, r5
	bl sub_020170D0
_0211CDAC:
	ldr r1, [r4, #0x78]
	mov r0, r5
	bl sub_0201703C
	ldr r1, [r4, #0x7c]
	mov r0, r5
	bl sub_02017084
	ldrb r1, [r4, #0x6b]
	add r0, r5, #0x8000
	strb r1, [r0, #0x803]
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	addeq sp, sp, #0x30
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp]
	ldr r1, [r0, #4]
	ldr r0, [r1, #8]
	cmp r0, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #1
	bne _0211CE28
	add r0, r1, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x2d
	bl sub_0203499C
	ldr r0, [sp]
	mov r1, #5
	ldr r0, [r0, #4]
	mov r2, #0x1e
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034A40
_0211CE28:
	ldr r0, [sp, #4]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211D06C
_0211CE38: ; jump table
	b _0211CE4C ; case 0
	b _0211CF18 ; case 1
	b _0211D06C ; case 2
	b _0211D054 ; case 3
	b _0211CFB4 ; case 4
_0211CE4C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0211CF04
	subs sb, r6, #1
	addmi sp, sp, #0x30
	ldmmiia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mvn fp, #0
	add r6, fp, #0x1000
	mov r7, r6
	rsb r8, fp, #0x1b8
_0211CE74:
	and r0, sb, #0xff
	add r0, r4, r0, lsl #2
	ldr sl, [r0, #0x18]
	ldr r2, [r0, #0x38]
	mov r0, r5
	mov r1, sl
	mov r3, fp
	bl sub_02015C78
	and r1, r7, sl, asr #12
	cmp r1, r8
	movlt r0, #1
	movge r0, #0
	and r3, sl, r6
	cmp r0, #0
	beq _0211CEF4
	cmp r3, #0x30
	bge _0211CEF4
	mov r0, r3, asr #2
	add r2, r5, r1, lsl #4
	add r1, r3, r0, lsr #29
	mov r1, r1, asr #3
	mov r0, r3, lsl #0x1d
	add r1, r2, r1, lsl #2
	add r2, r1, #0x2000
	mov r0, r0, lsr #0x1b
	mov r1, #0xf
	mvn r1, r1, lsl r0
	ldr r3, [r2, #0x988]
	and r3, r3, r1
	mov r1, #2
	orr r0, r3, r1, lsl r0
	str r0, [r2, #0x988]
_0211CEF4:
	subs sb, sb, #1
	bpl _0211CE74
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211CF04:
	add r0, r5, #0x8000
	mov r1, #4
	str r1, [r0, #0xb74]
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211CF18:
	add r0, r5, #0x8000
	ldrb r1, [r0, #0xb64]
	cmp r1, #5
	bne _0211CF54
	ldr r1, _0211D07C ; =s_aBattleLose_overlay_2_0211d1b8
	cmp r1, #0
	moveq r1, #0
	streqb r1, [r0, #0xb44]
	addeq sp, sp, #0x30
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r5, #0x344
	add r0, r0, #0x8800
	bl strcpy
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211CF54:
	cmp r1, #1
	bne _0211CF80
	ldr r1, _0211D080 ; =s_sGameOverBS_overlay_2_0211d1c4
	cmp r1, #0
	moveq r1, #0
	streqb r1, [r0, #0xb44]
	beq _0211CFA0
	add r0, r5, #0x344
	add r0, r0, #0x8800
	bl strcpy
	b _0211CFA0
_0211CF80:
	ldr r1, _0211D084 ; =s_sGameOverB_overlay_2_0211d1d0
	cmp r1, #0
	moveq r1, #0
	streqb r1, [r0, #0xb44]
	beq _0211CFA0
	add r0, r5, #0x344
	add r0, r0, #0x8800
	bl strcpy
_0211CFA0:
	add r0, r5, #0x8000
	mov r1, #1
	str r1, [r0, #0xb74]
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211CFB4:
	cmp r6, #0
	mov sl, #0
	addle sp, sp, #0x30
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _0211D078 ; =0x00000FFF
	ldr r1, _0211D088 ; =0x000001B9
	mov r8, sl
	mov sb, #1
	mov r3, #0xf
	mov r2, #2
_0211CFDC:
	and r7, sl, #0xff
	add r7, r4, r7, lsl #2
	ldr r7, [r7, #0x18]
	and fp, r0, r7, asr #12
	cmp fp, r1
	movlt ip, sb
	movge ip, r8
	and r7, r7, r0
	cmp ip, #0
	beq _0211D040
	cmp r7, #0x30
	bge _0211D040
	mov ip, r7, asr #2
	add ip, r7, ip, lsr #29
	add lr, r5, fp, lsl #4
	mov fp, ip, asr #3
	mov r7, r7, lsl #0x1d
	add fp, lr, fp, lsl #2
	mov r7, r7, lsr #0x1b
	add fp, fp, #0x2000
	mvn ip, r3, lsl r7
	ldr lr, [fp, #0x988]
	and ip, lr, ip
	orr r7, ip, r2, lsl r7
	str r7, [fp, #0x988]
_0211D040:
	add sl, sl, #1
	cmp sl, r6
	blt _0211CFDC
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0211D054:
	mov r0, r5
	add r2, r5, #0x8000
	mov r3, #2
	mov r1, #1
	str r3, [r2, #0xb74]
	bl sub_02017120
_0211D06C:
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0211D074: .word MAIN_BSS_020B26A0
_0211D078: .word 0x00000FFF
_0211D07C: .word s_aBattleLose_overlay_2_0211d1b8
_0211D080: .word s_sGameOverBS_overlay_2_0211d1c4
_0211D084: .word s_sGameOverB_overlay_2_0211d1d0
_0211D088: .word 0x000001B9

	arm_func_start ov2_0211D08C
ov2_0211D08C: ; 0x0211D08C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x444]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	beq _0211D0FC
	ldr r6, _0211D104 ; =MAIN_BSS_020B26A0
	mvn r1, #0
	ldrb r2, [r6, #3]
	mov r0, r6
	and r7, r2, #0xf
	bl sub_02016138
	mov r5, r0
	mov r0, r6
	mov r1, r7
	bl sub_02015658
	cmp r5, r0
	ble _0211D0FC
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x43c]
	bl sub_02010BB0
	add r1, r6, #0x8000
	str r0, [r1, #0xba0]
	mov r0, #7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov2_0211D08C
_0211D0FC:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0211D104: .word MAIN_BSS_020B26A0

	arm_func_start ov2_0211D108
ov2_0211D108: ; 0x0211D108
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov2_0211D108

	arm_func_start ov2_0211D124
ov2_0211D124: ; 0x0211D124
	bx lr
	arm_func_end ov2_0211D124

	arm_func_start ov2_0211D128
ov2_0211D128: ; 0x0211D128
	bx lr
	arm_func_end ov2_0211D128

	arm_func_start ov2_0211D12C
ov2_0211D12C: ; 0x0211D12C
	bx lr
	arm_func_end ov2_0211D12C

	arm_func_start ov2_0211D130
ov2_0211D130: ; 0x0211D130
	bx lr
	arm_func_end ov2_0211D130

	arm_func_start ov2_0211D134
ov2_0211D134: ; 0x0211D134
	bx lr
	arm_func_end ov2_0211D134

	arm_func_start ov2_0211D138
ov2_0211D138: ; 0x0211D138
	bx lr
	arm_func_end ov2_0211D138

	arm_func_start ov2_0211D13C
ov2_0211D13C: ; 0x0211D13C
	mov r0, #5
	bx lr
	arm_func_end ov2_0211D13C

	arm_func_start ov2_0211D144
ov2_0211D144: ; 0x0211D144
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007CC0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov2_0211D144

    .section .sinit,4 ; 0x0211D158

    .data
PTR_ptr_FUN_020835bc_overlay_2_0211d160: ; 0x0211D160
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word s_19CBattleToFieldScene_overlay_2_0211d16c
	.word PTR_ptr_FUN_02083578_0208a804
s_19CBattleToFieldScene_overlay_2_0211d16c: ; 0x0211D16C
	.asciz "19CBattleToFieldScene"
_0211D182:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0xD1, 0x11, 0x02
    .global CBattleToFieldScene_vtable
CBattleToFieldScene_vtable: ; 0x0211D18C
    .word ov2_0211D144
ptr_FUN_overlay_28_0211d108_overlay_2_0211d190: ; 0x0211D190
    .word ov2_0211D108
ptr_FUN_overlay_2_0211d08c_overlay_2_0211d194: ; 0x0211D194
	.word ov2_0211D08C
	.word ov2_0211D130
	.word ov2_0211D12C
	.word ov2_0211D128
	.word ov2_0211D124
	.word ov2_0211D138
ptr_FUN_overlay_0_0211c9e0_overlay_2_0211d1ac: ; 0x0211D1AC
	.word ov2_0211C9E0
ptr_FUN_overlay_24_0211d134_overlay_2_0211d1b0: ; 0x0211D1B0
	.word ov2_0211D134
	.word ov2_0211D13C
s_aBattleLose_overlay_2_0211d1b8: ; 0x0211D1B8
	.asciz "aBattleLose"
s_sGameOverBS_overlay_2_0211d1c4: ; 0x0211D1C4
	.asciz "sGameOverBS"
s_sGameOverB_overlay_2_0211d1d0: ; 0x0211D1D0
	.asciz "sGameOverB"
	; 0x0211D1DB

