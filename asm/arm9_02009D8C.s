    .include "macros.inc"
    .include "include/arm9.inc"
    .include "include/arm9_02009D8C.inc"

    .text

	arm_func_start sub_02009D8C
sub_02009D8C: ; 0x02009D8C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr ip, [r5, #0x50]
	mov r4, r1
	mov r7, r2
	mov r6, r3
	cmp ip, #0
	beq _02009DB0
	bl sub_02009F28
	arm_func_end sub_02009D8C
_02009DB0:
	ldr r1, [sp, #0x18]
	mov r0, r5
	bl _ZN17UnkClass_020091E812sub_0200978CEm
	str r7, [r5, #0x94]
	str r6, [r5, #0x98]
	ldr r0, [r5, #0x74]
	cmp r0, #0
	moveq r0, #2
	streq r0, [r5, #0x74]
	cmp r7, #0
	beq _02009DE8
	cmp r7, #1
	beq _02009E04
	b _02009E58
_02009DE8:
	bl G2_GetBG1ScrPtr
	add r2, r0, #0x600
	mov r0, #9
	mov r1, #0
	mov r3, #0x180
	bl NNS_GfdRegisterNewVramTransferTask
	b _02009E58
_02009E04:
	cmp r6, #0
	bne _02009E40
	bl G2_GetBG1ScrPtr
	add r2, r0, #0x600
	mov r0, #9
	mov r1, #0x500
	mov r3, #0xc0
	bl NNS_GfdRegisterNewVramTransferTask
	bl G2_GetBG1ScrPtr
	add r2, r0, #0x740
	mov r0, #9
	mov r1, #0x5c0
	mov r3, #0x40
	bl NNS_GfdRegisterNewVramTransferTask
	b _02009E58
_02009E40:
	bl G2_GetBG1ScrPtr
	add r2, r0, #0x600
	mov r0, #9
	mov r1, #0x480
	mov r3, #0x180
	bl NNS_GfdRegisterNewVramTransferTask
_02009E58:
	mov r0, #0x4000000
	ldr r2, [r0]
	ldr r1, [r0]
	and r2, r2, #0x1f00
	mov r3, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r3, #2
	orr r1, r2, r1, lsl #8
	str r1, [r0]
	ldr r2, [r0]
	ldr r1, [r0]
	and r2, r2, #0x1f00
	mov r3, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r3, #0x10
	orr r1, r2, r1, lsl #8
	str r1, [r0]
	str r4, [r5, #0x7c]
	mov r0, #4
	str r0, [r5, #0xac]
	mov r2, #0
	str r2, [r5, #0xa4]
	mov r0, r5
	mov r1, #2
	str r2, [r5, #0xa8]
	bl sub_0200AA68
	mov r0, #1
	str r0, [r5, #0x50]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02009ECC
sub_02009ECC: ; 0x02009ECC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200A110
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl sub_0200A110
	cmp r0, #5
	ldreq r0, [r4, #0x64]
	cmpeq r0, #0
	bne _02009F10
	mov r0, r4
	bl sub_0200A97C
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	arm_func_end sub_02009ECC
_02009F10:
	mov r0, r4
	bl sub_0200A110
	cmp r0, #9
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02009F28
sub_02009F28: ; 0x02009F28
	stmdb sp!, {r4, lr}
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov ip, r2, lsr #8
	bic r2, r1, #0x1f00
	eor r1, ip, #0x12
	orr r1, r2, r1, lsl #8
	mov r4, r0
	str r1, [r3]
	ldr r0, [r4, #0x14c]
	bl sub_0200BF58
	ldr r0, _02009FA4 ; =_0208F304
	ldr r1, _02009FA8 ; =sub_0200B6E4
	ldr r0, [r0]
	mov r2, #0
	bl sub_020100E4
	ldr r1, [r4, #0xf8]
	ldr r0, _02009FAC ; =0x33333333
	mov r2, #0xe00
	bl MIi_CpuClearFast
	ldr r1, [r4, #0x120]
	ldr r0, _02009FAC ; =0x33333333
	mov r2, #0x380
	bl MIi_CpuClearFast
	mov r0, #0
	str r0, [r4, #0x50]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x78]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02009FA4: .word MAIN_BSS_0208F304
_02009FA8: .word sub_0200B6E4
_02009FAC: .word 0x33333333
	arm_func_end sub_02009F28

	arm_func_start sub_02009FB0
sub_02009FB0: ; 0x02009FB0
	stmdb sp!, {r3, r4, r5, lr}
	cmp r2, #0
	mov r2, #0x4000000
	mov r4, r1
	ldr r1, [r2]
	mov r5, r0
	mov ip, #2
	ldr r0, [r2]
	and r3, r1, #0x1f00
	orrne ip, ip, #0x10
	bic r1, r0, #0x1f00
	eor r0, ip, r3, lsr #8
	orr r0, r1, r0, lsl #8
	str r0, [r2]
	ldr r0, [r5, #0x14c]
	bl sub_0200BF58
	ldr r0, _0200A07C ; =_0208F304
	ldr r1, _0200A080 ; =sub_0200B6E4
	ldr r0, [r0]
	mov r2, #0
	bl sub_020100E4
	ldr r1, [r5, #0xf8]
	ldr r0, _0200A084 ; =0x33333333
	mov r2, #0xe00
	bl MIi_CpuClearFast
	ldr r1, [r5, #0x120]
	ldr r0, _0200A084 ; =0x33333333
	mov r2, #0x380
	bl MIi_CpuClearFast
	mov r1, #0
	str r1, [r5, #0x50]
	str r1, [r5, #0x54]
	str r1, [r5, #0x58]
	str r1, [r5, #0x5c]
	mov r0, #0x1e
	str r0, [r5, #0x60]
	str r1, [r5, #0x64]
	str r1, [r5, #0x68]
	mov r0, #0x3c
	str r0, [r5, #0x6c]
	ldr r0, [r5, #0x74]
	cmp r4, #0
	str r0, [r5, #0x9c]
	str r1, [r5, #0xa0]
	str r1, [r5, #0x78]
	str r1, [r5, #0x4c]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #3
	bl sub_0200AA68
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0200A07C: .word MAIN_BSS_0208F304
_0200A080: .word sub_0200B6E4
_0200A084: .word 0x33333333
	arm_func_end sub_02009FB0

	arm_func_start sub_0200A088
sub_0200A088: ; 0x0200A088
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #0xf8]
	ldr r0, _0200A10C ; =0x33333333
	mov r2, #0xe00
	bl MIi_CpuClearFast
	ldr r1, [r5, #0x120]
	ldr r0, _0200A10C ; =0x33333333
	mov r2, #0x380
	bl MIi_CpuClearFast
	mov r1, #0
	str r1, [r5, #0x50]
	str r1, [r5, #0x54]
	str r1, [r5, #0x58]
	str r1, [r5, #0x5c]
	mov r0, #0x1e
	str r0, [r5, #0x60]
	str r1, [r5, #0x64]
	str r1, [r5, #0x68]
	mov r0, #0x3c
	str r0, [r5, #0x6c]
	ldr r0, [r5, #0x74]
	cmp r4, #0
	str r0, [r5, #0x9c]
	str r1, [r5, #0xa0]
	str r1, [r5, #0x78]
	str r1, [r5, #0x4c]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #3
	bl sub_0200AA68
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0200A10C: .word 0x33333333
	arm_func_end sub_0200A088

	arm_func_start sub_0200A110
sub_0200A110: ; 0x0200A110
	ldr r0, [r0, #0x50]
	bx lr
	arm_func_end sub_0200A110

	arm_func_start sub_0200A118
sub_0200A118: ; 0x0200A118
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x80
	mov r4, r0
	ldr r1, [r4, #0x50]
	cmp r1, #0
	addeq sp, sp, #0x80
	moveq r0, r1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r1, #0xa
	beq _0200A144
	bl sub_0200A84C
	arm_func_end sub_0200A118
_0200A144:
	ldr r0, [r4, #0x14c]
	bl sub_0200BEBC
	ldr r0, [r4, #0x50]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _0200A2F4
_0200A15C: ; jump table
	b _0200A188 ; case 0
	b _0200A2F4 ; case 1
	b _0200A2F4 ; case 2
	b _0200A188 ; case 3
	b _0200A188 ; case 4
	b _0200A188 ; case 5
	b _0200A190 ; case 6
	b _0200A224 ; case 7
	b _0200A25C ; case 8
	b _0200A2EC ; case 9
	b _0200A2EC ; case 10
_0200A188:
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200A190:
	ldr r0, [r4, #0x58]
	cmp r0, #1
	bne _0200A1BC
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0200A1BC
	sub r0, r0, #1
	str r0, [r4, #0x60]
	add sp, sp, #0x80
	ldr r0, [r4, #0x50]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200A1BC:
	ldr r0, [r4, #0xb0]
	add r0, r0, #1
	str r0, [r4, #0xb0]
	cmp r0, #3
	bge _0200A200
	ldr r1, [r4, #0xf8]
	mov r2, #0xa80
	add r0, r1, #0x380
	bl MIi_CpuCopyFast
	ldr r1, [r4, #0xf8]
	ldr r0, _0200A7FC ; =0x33333333
	add r1, r1, #0xa80
	mov r2, #0x380
	bl MIi_CpuClearFast
	add sp, sp, #0x80
	ldr r0, [r4, #0x50]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200A200:
	mov r0, #2
	str r0, [r4, #0x50]
	mov r0, #0
	str r0, [r4, #0xb0]
	ldr r1, [r4, #0x120]
	ldr r0, _0200A7FC ; =0x33333333
	mov r2, #0x380
	bl MIi_CpuClearFast
	b _0200A2F4
_0200A224:
	ldr r0, [r4, #0x58]
	cmp r0, #1
	bne _0200A25C
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0200A25C
	subs r0, r0, #1
	str r0, [r4, #0x60]
	bne _0200A250
	ldr r0, [r4, #0x14c]
	bl sub_0200BF58
_0200A250:
	add sp, sp, #0x80
	ldr r0, [r4, #0x50]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200A25C:
	ldr r0, [r4, #0xb0]
	add r0, r0, #1
	str r0, [r4, #0xb0]
	cmp r0, #3
	bge _0200A2C4
	ldr r1, [r4, #0xf8]
	mov r2, #0xa80
	add r0, r1, #0x380
	bl MIi_CpuCopyFast
	ldr r1, [r4, #0xf8]
	ldr r0, _0200A7FC ; =0x33333333
	add r1, r1, #0xa80
	mov r2, #0x380
	bl MIi_CpuClearFast
	ldr r0, [r4, #0xb0]
	cmp r0, #2
	ldreq r0, [r4, #0x50]
	cmpeq r0, #7
	bne _0200A2B8
	mov r0, #8
	str r0, [r4, #0x50]
	mov r0, #0
	str r0, [r4, #0xb0]
_0200A2B8:
	add sp, sp, #0x80
	ldr r0, [r4, #0x50]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200A2C4:
	mov r0, #0
	str r0, [r4, #0xa4]
	str r0, [r4, #0xa8]
	mov r0, #2
	str r0, [r4, #0x50]
	ldr r1, [r4, #0x120]
	ldr r0, _0200A800 ; =0x11111111
	mov r2, #0x380
	bl MIi_CpuClearFast
	b _0200A2F4
_0200A2EC:
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200A2F4:
	ldr r0, [r4, #0xa0]
	add r1, r0, #1
	str r1, [r4, #0xa0]
	ldr r0, [r4, #0x9c]
	cmp r1, r0
	addlt sp, sp, #0x80
	ldrlt r0, [r4, #0x50]
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	str r0, [r4, #0xa0]
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne _0200A348
	ldr r0, [r4, #0x110]
	ldr r2, [r4, #0x11c]
	str r0, [sp, #0x6c]
	ldr r0, [r4, #0x114]
	str r0, [sp, #0x68]
	ldr r0, [r4, #0x118]
	str r0, [sp, #0x64]
	b _0200A364
_0200A348:
	ldr r0, [r4, #0x138]
	ldr r2, [r4, #0x144]
	str r0, [sp, #0x6c]
	ldr r0, [r4, #0x13c]
	str r0, [sp, #0x68]
	ldr r0, [r4, #0x140]
	str r0, [sp, #0x64]
_0200A364:
	ldr r0, [sp, #0x68]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [sp, #0x70]
	ldrsb r0, [r1, #1]
	add r0, r2, r0
	str r0, [r4, #0x80]
_0200A380:
	ldr r1, [sp, #0x70]
	add r0, r4, #0x7c
	blx r1
	cmp r0, #0
	cmpne r0, #0xa
	beq _0200A790
	cmp r0, #0x5b
	bne _0200A3BC
	ldr r1, [sp, #0x70]
	add r0, r4, #0x7c
	blx r1
	mov r1, r0
	mov r0, r4
	bl _ZN17UnkClass_020091E812sub_02009814Em
	b _0200A7CC
_0200A3BC:
	ldr r2, [r4, #0xa4]
	ldr r3, [r4, #0xac]
	mov r1, r2, asr #2
	str r3, [sp]
	str r0, [sp, #4]
	add r5, r2, r1, lsr #29
	mov r5, r5, asr #3
	ldr r3, [r4, #0xa8]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x68]
	str r5, [sp, #0x78]
	bl NNS_G2dCharCanvasDrawChar
	ldr r1, [r4, #0xa4]
	add r2, r1, r0
	ldr r0, [sp, #0x64]
	add r1, r2, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	str r1, [r4, #0xa4]
	ldr r1, [r4, #0x78]
	mov r0, r0, asr #3
	add r0, r0, #1
	cmp r1, #1
	str r0, [sp, #0x7c]
	bne _0200A7D4
	mov r1, r5
	cmp r1, r0
	bge _0200A7D4
	mov r0, r5
	mov r0, r0, lsl #5
	str r0, [sp, #0x60]
	mov r0, r5
	mov r0, r0, lsl #6
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x60]
	add r1, r0, #0xc2
	add r2, r0, #0xd2
	ldr r0, [sp, #0x5c]
	add r0, r0, #0x20
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x60]
	add r0, r0, #0x10
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0x380
	str r0, [sp, #0x50]
	add r0, r1, #0x100
	str r0, [sp, #0x3c]
	add r0, r2, #0x100
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x60]
	add r0, r0, #0x12
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0x3a0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x60]
	add r0, r0, #0x1c0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0x700
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0x720
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x60]
	add r0, r0, #0x1d0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0xa80
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0xaa0
	str r0, [sp, #0x28]
_0200A4E4:
	mov r0, #0
	str r0, [sp, #0x74]
	ldr r0, [sp, #0x5c]
	ldr r5, [sp, #0x60]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x58]
	ldr fp, [sp, #0x50]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x54]
	ldr r6, [sp, #0x48]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x4c]
	ldr r7, [sp, #0x40]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x44]
	ldr r8, [sp, #0x38]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x3c]
	ldr sb, [sp, #0x30]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	ldr sl, [sp, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
_0200A548:
	mov r0, r4
	mov r1, r5
	bl sub_0200A804
	ldr r3, [r4, #0xf8]
	ldr r1, [sp, #0x24]
	mov r2, #8
	add r1, r3, r1
	bl MIi_CpuClearFast
	mov r0, r4
	add r1, r5, #2
	bl sub_0200A804
	ldr r3, [r4, #0xf8]
	ldr r1, [sp, #0x20]
	mov r2, #8
	add r1, r3, r1
	bl MIi_CpuClearFast
	ldr r1, [sp, #0x1c]
	mov r0, r4
	bl sub_0200A804
	ldr r1, [r4, #0xf8]
	mov r2, #8
	add r1, r1, fp
	bl MIi_CpuClearFast
	ldr r1, [sp, #0x18]
	mov r0, r4
	bl sub_0200A804
	ldr r1, [r4, #0xf8]
	mov r2, #8
	add r1, r1, r6
	bl MIi_CpuClearFast
	ldr r1, [sp, #0x14]
	mov r0, r4
	bl sub_0200A804
	ldr r1, [r4, #0xf8]
	mov r2, #8
	add r1, r1, r7
	bl MIi_CpuClearFast
	ldr r1, [sp, #0x10]
	mov r0, r4
	bl sub_0200A804
	ldr r1, [r4, #0xf8]
	mov r2, #8
	add r1, r1, r8
	bl MIi_CpuClearFast
	ldr r1, [sp, #0xc]
	mov r0, r4
	bl sub_0200A804
	ldr r1, [r4, #0xf8]
	mov r2, #8
	add r1, r1, sb
	bl MIi_CpuClearFast
	ldr r1, [sp, #8]
	mov r0, r4
	bl sub_0200A804
	ldr r1, [r4, #0xf8]
	mov r2, #8
	add r1, r1, sl
	bl MIi_CpuClearFast
	ldr r0, [sp, #0x24]
	add r5, r5, #4
	add r0, r0, #8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add fp, fp, #8
	add r0, r0, #8
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r6, r6, #8
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r7, r7, #8
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r8, r8, #8
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add sb, sb, #8
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add sl, sl, #8
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x74]
	add r0, r0, #1
	str r0, [sp, #0x74]
	cmp r0, #4
	blt _0200A548
	ldr r0, [sp, #0x60]
	add r0, r0, #0x20
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x5c]
	add r0, r0, #0x40
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x58]
	add r0, r0, #0x40
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x54]
	add r0, r0, #0x20
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x50]
	add r0, r0, #0x40
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x4c]
	add r0, r0, #0x20
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x48]
	add r0, r0, #0x40
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x44]
	add r0, r0, #0x20
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x40]
	add r0, r0, #0x40
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	add r0, r0, #0x20
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	add r0, r0, #0x40
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	add r0, r0, #0x20
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r0, r0, #0x40
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r0, r0, #0x20
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r0, r0, #0x40
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x78]
	add r1, r0, #1
	ldr r0, [sp, #0x7c]
	str r1, [sp, #0x78]
	cmp r1, r0
	blt _0200A4E4
	b _0200A7D4
_0200A790:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0200A7B0
	mov r0, #0
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x48]
	str r0, [r4, #0x7c]
	b _0200A7D4
_0200A7B0:
	mov r0, #5
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x64]
	cmp r0, #1
	ldreq r0, [r4, #0x68]
	streq r0, [r4, #0x6c]
	b _0200A7D4
_0200A7CC:
	cmp r0, #0
	bne _0200A380
_0200A7D4:
	ldr r0, [r4, #0x9c]
	cmp r0, #0
	bne _0200A7F0
	ldr r0, [r4, #0x50]
	cmp r0, #1
	cmpne r0, #2
	beq _0200A380
_0200A7F0:
	ldr r0, [r4, #0x50]
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0200A7FC: .word 0x33333333
_0200A800: .word 0x11111111

	arm_func_start sub_0200A804
sub_0200A804: ; 0x0200A804
	ldr r2, [r0, #0x120]
	add r0, r1, #1
	ldrb r3, [r2, r1]
	ldrb r2, [r2, r0]
	and r1, r3, #0xf0
	mov r0, r1, lsl #4
	orr r0, r0, r1, lsl #8
	and r1, r3, #0xf
	orr r0, r0, r1
	mov r1, r3, lsl #0x1c
	orr r0, r0, r1, lsr #24
	and r1, r2, #0xf0
	orr r0, r0, r1, lsl #24
	orr r0, r0, r1, lsl #20
	mov r1, r2, lsl #0x1c
	orr r0, r0, r1, lsr #8
	orr r0, r0, r1, lsr #12
	bx lr
	arm_func_end sub_0200A804

	arm_func_start sub_0200A84C
sub_0200A84C: ; 0x0200A84C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x54]
	cmp r1, #0
	bne _0200A878
	bl sub_0200A9C0
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x9c]
	ldreq r0, [r4, #0x74]
	streq r0, [r4, #0x9c]
	arm_func_end sub_0200A84C
_0200A878:
	ldr r0, [r4, #0x50]
	cmp r0, #3
	beq _0200A898
	cmp r0, #4
	beq _0200A8F0
	cmp r0, #5
	beq _0200A948
	ldmia sp!, {r4, pc}
_0200A898:
	mov r0, r4
	bl sub_0200A97C
	cmp r0, #0
	bne _0200A8B4
	ldr r0, [r4, #0x58]
	cmp r0, #1
	ldmneia sp!, {r4, pc}
_0200A8B4:
	mov r0, #6
	str r0, [r4, #0x50]
	mov r0, #0
	str r0, [r4, #0xb0]
	ldr r1, [r4, #0x5c]
	mov r0, r4
	str r1, [r4, #0x60]
	mov r1, #5
	bl sub_0200AA68
	ldr r0, [r4, #0x58]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x14c]
	bl sub_0200BFB4
	ldmia sp!, {r4, pc}
_0200A8F0:
	mov r0, r4
	bl sub_0200A97C
	cmp r0, #0
	bne _0200A90C
	ldr r0, [r4, #0x58]
	cmp r0, #1
	ldmneia sp!, {r4, pc}
_0200A90C:
	mov r0, #7
	str r0, [r4, #0x50]
	mov r0, #0
	str r0, [r4, #0xb0]
	ldr r1, [r4, #0x5c]
	mov r0, r4
	str r1, [r4, #0x60]
	mov r1, #5
	bl sub_0200AA68
	ldr r0, [r4, #0x58]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x14c]
	bl sub_0200BF58
	ldmia sp!, {r4, pc}
_0200A948:
	ldr r0, [r4, #0x64]
	cmp r0, #1
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r4, #0x6c]
	ldmneia sp!, {r4, pc}
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl sub_02009FB0
	ldmia sp!, {r4, pc}

	arm_func_start sub_0200A97C
sub_0200A97C: ; 0x0200A97C
	ldr r1, [r0, #0x88]
	ldrh r2, [r1, #2]
	and r1, r2, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	bne _0200A9B0
	and r1, r2, #2
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	ldreq r0, [r0, #0x8c]
	ldreqb r0, [r0, #4]
	cmpeq r0, #0
	beq _0200A9B8
	arm_func_end sub_0200A97C
_0200A9B0:
	mov r0, #1
	bx lr
_0200A9B8:
	mov r0, #0
	bx lr

	arm_func_start sub_0200A9C0
sub_0200A9C0: ; 0x0200A9C0
	ldr r1, [r0, #0x88]
	ldrh r2, [r1]
	and r1, r2, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	bne _0200A9F4
	and r1, r2, #2
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	ldreq r0, [r0, #0x8c]
	ldreqb r0, [r0, #5]
	cmpeq r0, #0
	beq _0200A9FC
	arm_func_end sub_0200A9C0
_0200A9F4:
	mov r0, #1
	bx lr
_0200A9FC:
	mov r0, #0
	bx lr

	arm_func_start sub_0200AA04
sub_0200AA04: ; 0x0200AA04
	mov r2, #1
	str r2, [r0, #0x54]
	str r1, [r0, #0x9c]
	bx lr
	arm_func_end sub_0200AA04

	arm_func_start sub_0200AA14
sub_0200AA14: ; 0x0200AA14
	mov r1, #0
	str r1, [r0, #0x54]
	ldr r1, [r0, #0x74]
	str r1, [r0, #0x9c]
	bx lr
	arm_func_end sub_0200AA14

	arm_func_start sub_0200AA28
sub_0200AA28: ; 0x0200AA28
	mov r2, #1
	str r2, [r0, #0x58]
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end sub_0200AA28

	arm_func_start sub_0200AA38
sub_0200AA38: ; 0x0200AA38
	mov r1, #0
	str r1, [r0, #0x58]
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end sub_0200AA38

	arm_func_start sub_0200AA48
sub_0200AA48: ; 0x0200AA48
	mov r2, #1
	str r2, [r0, #0x64]
	str r1, [r0, #0x68]
	bx lr
	arm_func_end sub_0200AA48

	arm_func_start sub_0200AA58
sub_0200AA58: ; 0x0200AA58
	mov r1, #0
	str r1, [r0, #0x64]
	str r1, [r0, #0x68]
	bx lr
	arm_func_end sub_0200AA58

	arm_func_start sub_0200AA68
sub_0200AA68: ; 0x0200AA68
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x90]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02034C44
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200AA68

	arm_func_start sub_0200AA84
sub_0200AA84: ; 0x0200AA84
	stmdb sp!, {r3, lr}
	ldr lr, [sp, #8]
	ldr ip, [sp, #0xc]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_0200AA9C: ; jump table
	b _0200AAB0 ; case 0
	b _0200AAC8 ; case 1
	b _0200AAE0 ; case 2
	b _0200AAF8 ; case 3
	b _0200AB10 ; case 4
	arm_func_end sub_0200AA84
_0200AAB0:
	mov r1, r2
	mov r2, r3
	mov r3, lr
	str ip, [sp]
	bl sub_0200AD34
	ldmia sp!, {r3, pc}
_0200AAC8:
	mov r1, r2
	mov r2, r3
	mov r3, lr
	str ip, [sp]
	bl sub_0200AF74
	ldmia sp!, {r3, pc}
_0200AAE0:
	mov r1, r2
	mov r2, r3
	mov r3, lr
	str ip, [sp]
	bl sub_0200B1D0
	ldmia sp!, {r3, pc}
_0200AAF8:
	mov r1, r2
	mov r2, r3
	mov r3, lr
	str ip, [sp]
	bl sub_0200B410
	ldmia sp!, {r3, pc}
_0200AB10:
	mov r1, r2
	mov r2, r3
	mov r3, lr
	str ip, [sp]
	bl sub_0200B640
	ldmia sp!, {r3, pc}

	arm_func_start sub_0200AB28
sub_0200AB28: ; 0x0200AB28
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r8, r0
	ldr r2, [r8, #4]
	mov r7, r1
	cmp r2, #0
	beq _0200AB58
	ldr r1, [r8, #0x18]
	cmp r1, r7
	addeq sp, sp, #0x40
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl _ZN17UnkClass_020091E812sub_0200AC90Ev
	arm_func_end sub_0200AB28
_0200AB58:
	cmp r7, #0
	add r0, sp, #0
	bne _0200AB70
	ldr r1, _0200AC88 ; =s_data_message_system_system_mes_0208a8d0
	bl OS_SPrintf
	b _0200AB7C
_0200AB70:
	ldr r1, _0200AC8C ; =s_data_message_system_system_03d_m_0208a8f0
	mov r2, r7
	bl OS_SPrintf
_0200AB7C:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0200AB9C
	add r1, sp, #0
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0200AB9C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r8, #4]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r8, #4]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r8, #4]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r8, #4]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r8, #4]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0200AC64
_0200ABF4:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r8, #4]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r8, #4]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #4]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r8, #4]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0200ABF4
_0200AC64:
	cmp r6, #0
	beq _0200AC7C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200AC7C:
	str r7, [r8, #0x18]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200AC88: .word s_data_message_system_system_mes_0208a8d0
_0200AC8C: .word s_data_message_system_system_03d_m_0208a8f0

	arm_func_start _ZN17UnkClass_020091E812sub_0200AC90Ev
_ZN17UnkClass_020091E812sub_0200AC90Ev: ; 0x0200AC90
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mvn r0, #0
	str r0, [r5, #0x18]
	ldr r1, [r5, #4]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0200ACFC
	mov r6, r4
	arm_func_end _ZN17UnkClass_020091E812sub_0200AC90Ev
_0200ACC0:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200ACE8
	bl _ZdaPv
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0200ACE8:
	ldr r1, [r5, #4]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0200ACC0
_0200ACFC:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0200AD18
	bl _ZdaPv
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #8]
_0200AD18:
	ldr r0, [r5, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #4]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200AD34
sub_0200AD34: ; 0x0200AD34
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr ip, [r5, #4]
	mov r4, r1
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [ip, #4]
	cmp r4, r1
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	str r1, [sp]
	ldr r1, [ip, #8]
	add r1, r1, r4, lsl #3
	ldr r1, [r1, #4]
	bl sub_02009D8C
	mov r0, #0
	str r0, [r5, #0x150]
	str r4, [r5, #0x154]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200AD34

	arm_func_start sub_0200AD80
sub_0200AD80: ; 0x0200AD80
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r8, r0
	ldr r2, [r8, #8]
	mov r7, r1
	cmp r2, #0
	beq _0200ADB0
	ldr r1, [r8, #0x1c]
	cmp r1, r7
	addeq sp, sp, #0x40
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl _ZN17UnkClass_020091E812sub_0200AED0Ev
	arm_func_end sub_0200AD80
_0200ADB0:
	ldr r1, _0200AECC ; =s_data_message_area_m_03d_mes_0208a914
	add r0, sp, #0
	mov r2, r7
	bl OS_SPrintf
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0200ADE0
	add r1, sp, #0
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0200ADE0:
	mov r0, #0xc
	bl _Znwm
	str r0, [r8, #8]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r8, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r8, #8]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r8, #8]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r8, #8]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0200AEA8
_0200AE38:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r8, #8]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r8, #8]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #8]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r8, #8]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0200AE38
_0200AEA8:
	cmp r6, #0
	beq _0200AEC0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200AEC0:
	str r7, [r8, #0x1c]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200AECC: .word s_data_message_area_m_03d_mes_0208a914

	arm_func_start _ZN17UnkClass_020091E812sub_0200AED0Ev
_ZN17UnkClass_020091E812sub_0200AED0Ev: ; 0x0200AED0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mvn r0, #0
	str r0, [r5, #0x1c]
	ldr r1, [r5, #8]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0200AF3C
	mov r6, r4
	arm_func_end _ZN17UnkClass_020091E812sub_0200AED0Ev
_0200AF00:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200AF28
	bl _ZdaPv
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0200AF28:
	ldr r1, [r5, #8]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0200AF00
_0200AF3C:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0200AF58
	bl _ZdaPv
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #8]
_0200AF58:
	ldr r0, [r5, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #8]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200AF74
sub_0200AF74: ; 0x0200AF74
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr ip, [r5, #8]
	mov r4, r1
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [ip, #4]
	cmp r4, r1
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	str r1, [sp]
	ldr r1, [ip, #8]
	add r1, r1, r4, lsl #3
	ldr r1, [r1, #4]
	bl sub_02009D8C
	mov r0, #1
	str r0, [r5, #0x150]
	str r4, [r5, #0x154]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200AF74

	arm_func_start sub_0200AFC0
sub_0200AFC0: ; 0x0200AFC0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r8, r0
	ldr r2, [r8, #0xc]
	mov r7, r1
	cmp r2, #0
	beq _0200AFF0
	ldr r1, [r8, #0x20]
	cmp r1, r7
	addeq sp, sp, #0x40
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl _ZN17UnkClass_020091E812sub_0200B12CEv
	arm_func_end sub_0200AFC0
_0200AFF0:
	cmp r7, #0x46
	add r0, sp, #0
	bge _0200B00C
	ldr r1, _0200B124 ; =s_data_message_chapter_chapter_03d_0208a930
	mov r2, r7
	bl OS_SPrintf
	b _0200B018
_0200B00C:
	ldr r1, _0200B128 ; =s_data_message_chapter_chapterx_02_0208a958
	sub r2, r7, #0x45
	bl OS_SPrintf
_0200B018:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0200B038
	add r1, sp, #0
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0200B038:
	mov r0, #0xc
	bl _Znwm
	str r0, [r8, #0xc]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r8, #0xc]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r8, #0xc]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r8, #0xc]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r8, #0xc]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0200B100
_0200B090:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r8, #0xc]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r8, #0xc]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #0xc]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r8, #0xc]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0200B090
_0200B100:
	cmp r6, #0
	beq _0200B118
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200B118:
	str r7, [r8, #0x20]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200B124: .word s_data_message_chapter_chapter_03d_0208a930
_0200B128: .word s_data_message_chapter_chapterx_02_0208a958

	arm_func_start _ZN17UnkClass_020091E812sub_0200B12CEv
_ZN17UnkClass_020091E812sub_0200B12CEv: ; 0x0200B12C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mvn r0, #0
	str r0, [r5, #0x20]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0200B198
	mov r6, r4
	arm_func_end _ZN17UnkClass_020091E812sub_0200B12CEv
_0200B15C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200B184
	bl _ZdaPv
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0200B184:
	ldr r1, [r5, #0xc]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0200B15C
_0200B198:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0200B1B4
	bl _ZdaPv
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r1, [r0, #8]
_0200B1B4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0xc]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200B1D0
sub_0200B1D0: ; 0x0200B1D0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr ip, [r5, #0xc]
	mov r4, r1
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [ip, #4]
	cmp r4, r1
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	str r1, [sp]
	ldr r1, [ip, #8]
	add r1, r1, r4, lsl #3
	ldr r1, [r1, #4]
	bl sub_02009D8C
	mov r0, #2
	str r0, [r5, #0x150]
	str r4, [r5, #0x154]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200B1D0

	arm_func_start sub_0200B21C
sub_0200B21C: ; 0x0200B21C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r8, r0
	ldr r2, [r8, #0x10]
	mov r7, r1
	cmp r2, #0
	beq _0200B24C
	ldr r1, [r8, #0x24]
	cmp r1, r7
	addeq sp, sp, #0x40
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl _ZN17UnkClass_020091E812sub_0200B36CEv
	arm_func_end sub_0200B21C
_0200B24C:
	ldr r1, _0200B368 ; =s_data_message_quest_quest_03d_mes_0208a980
	add r0, sp, #0
	mov r2, r7
	bl OS_SPrintf
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0200B27C
	add r1, sp, #0
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0200B27C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r8, #0x10]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r8, #0x10]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r8, #0x10]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r8, #0x10]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r8, #0x10]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0200B344
_0200B2D4:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r8, #0x10]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r8, #0x10]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #0x10]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r8, #0x10]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0200B2D4
_0200B344:
	cmp r6, #0
	beq _0200B35C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200B35C:
	str r7, [r8, #0x24]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200B368: .word s_data_message_quest_quest_03d_mes_0208a980

	arm_func_start _ZN17UnkClass_020091E812sub_0200B36CEv
_ZN17UnkClass_020091E812sub_0200B36CEv: ; 0x0200B36C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mvn r0, #0
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0200B3D8
	mov r6, r4
	arm_func_end _ZN17UnkClass_020091E812sub_0200B36CEv
_0200B39C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200B3C4
	bl _ZdaPv
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0200B3C4:
	ldr r1, [r5, #0x10]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0200B39C
_0200B3D8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0200B3F4
	bl _ZdaPv
	ldr r0, [r5, #0x10]
	mov r1, #0
	str r1, [r0, #8]
_0200B3F4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x10]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200B410
sub_0200B410: ; 0x0200B410
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr ip, [r5, #0x10]
	mov r4, r1
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [ip, #4]
	cmp r4, r1
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	str r1, [sp]
	ldr r1, [ip, #8]
	add r1, r1, r4, lsl #3
	ldr r1, [r1, #4]
	bl sub_02009D8C
	mov r0, #3
	str r0, [r5, #0x150]
	str r4, [r5, #0x154]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200B410

	arm_func_start sub_0200B45C
sub_0200B45C: ; 0x0200B45C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r8, r0
	ldr r2, [r8, #0x14]
	mov r7, r1
	cmp r2, #0
	beq _0200B47C
	bl _ZN17UnkClass_020091E812sub_0200B59CEv
	arm_func_end sub_0200B45C
_0200B47C:
	ldr r1, _0200B598 ; =s_data_message_battle_battle_02d_m_0208a9a4
	add r0, sp, #0
	mov r2, r7
	bl OS_SPrintf
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0200B4AC
	add r1, sp, #0
	mov r2, #1
	bl CBinaryFileMes_ctor
	mov r6, r0
_0200B4AC:
	mov r0, #0xc
	bl _Znwm
	str r0, [r8, #0x14]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r8, #0x14]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r8, #0x14]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r8, #0x14]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r8, #0x14]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0200B574
_0200B504:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r8, #0x14]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r8, #0x14]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #0x14]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r8, #0x14]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0200B504
_0200B574:
	cmp r6, #0
	beq _0200B58C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200B58C:
	str r7, [r8, #0x28]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200B598: .word s_data_message_battle_battle_02d_m_0208a9a4

	arm_func_start _ZN17UnkClass_020091E812sub_0200B59CEv
_ZN17UnkClass_020091E812sub_0200B59CEv: ; 0x0200B59C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mvn r0, #0
	str r0, [r5, #0x28]
	ldr r1, [r5, #0x14]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0200B608
	mov r6, r4
	arm_func_end _ZN17UnkClass_020091E812sub_0200B59CEv
_0200B5CC:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200B5F4
	bl _ZdaPv
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0200B5F4:
	ldr r1, [r5, #0x14]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0200B5CC
_0200B608:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0200B624
	bl _ZdaPv
	ldr r0, [r5, #0x14]
	mov r1, #0
	str r1, [r0, #8]
_0200B624:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x14]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200B640
sub_0200B640: ; 0x0200B640
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr ip, [r5, #0x14]
	mov r4, r1
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [ip, #4]
	cmp r4, r1
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	str r1, [sp]
	ldr r1, [ip, #8]
	add r1, r1, r4, lsl #3
	ldr r1, [r1, #4]
	bl sub_02009D8C
	mov r0, #4
	str r0, [r5, #0x150]
	str r4, [r5, #0x154]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200B640

	arm_func_start sub_0200B68C
sub_0200B68C: ; 0x0200B68C
	ldr ip, _0200B6A0 ; =sub_0200C060
	mov r1, #9
	str r1, [r0, #0x50]
	ldr r0, [r0, #0x14c]
	bx ip
	.align 2, 0
_0200B6A0: .word sub_0200C060
	arm_func_end sub_0200B68C

	arm_func_start sub_0200B6A4
sub_0200B6A4: ; 0x0200B6A4
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x14c]
	mov r2, r1
	add r1, r3, #0x1000
	ldr r1, [r1, #0x608]
	cmp r1, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
	mov r1, #0
	bl sub_02009FB0
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200B6A4

	arm_func_start sub_0200B6D4
sub_0200B6D4: ; 0x0200B6D4
	ldr r0, [r0, #0x14c]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x60c]
	bx lr
	arm_func_end sub_0200B6D4

	arm_func_start sub_0200B6E4
sub_0200B6E4: ; 0x0200B6E4
	stmdb sp!, {r3, lr}
	bl G2_GetBG1ScrPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x180
	bl MIi_CpuClearFast
	bl G2_GetBG1ScrPtr
	add r1, r0, #0x480
	mov r0, #0
	mov r2, #0x180
	bl MIi_CpuClearFast
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200B6E4

	arm_func_start sub_0200B714
sub_0200B714: ; 0x0200B714
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	bx lr
	arm_func_end sub_0200B714

	arm_func_start sub_0200B744
sub_0200B744: ; 0x0200B744
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov lr, r0
	ldr r0, [lr, #4]
	ldr ip, [lr, #0xc]
	cmp r0, #1
	bgt _0200B7A4
	ldr r0, [lr, #0x20]
	add r4, sp, #0
	add r0, r0, #1
	str r0, [lr, #0x20]
	cmp r0, #0x28
	moveq r0, #0
	streq r0, [lr, #0x20]
	ldr r0, _0200B810 ; =DAT_020843d0
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r1, [lr, #0x20]
	ldr r2, _0200B814 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #2
	ldr r0, [r4, r3, lsl #2]
	add ip, ip, r0
	arm_func_end sub_0200B744
_0200B7A4:
	ldr r0, [lr, #4]
	cmp r0, #0xf
	blt _0200B7CC
	ldr r0, [lr, #0x24]
	cmp r0, #0
	ldreq ip, [lr, #0xc]
	beq _0200B7CC
	mov r0, #1
	str r0, [lr, #0x28]
	ldr ip, [lr, #0xc]
_0200B7CC:
	ldr r0, [lr, #0x28]
	and r1, ip, #0xff
	ldr r2, [lr, #8]
	ldr r3, [lr, #0x1c]
	orr r0, r1, r0, lsl #25
	mov r1, r2, lsl #0x17
	orr r0, r3, r0
	orr r0, r0, r1, lsr #7
	ldr r3, [lr, #0x18]
	ldr r2, [lr, #0x14]
	ldr r1, [lr]
	orr r0, r0, #0x100
	str r0, [r1]
	orr r0, r2, r3, lsl #12
	strh r0, [r1, #4]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200B810: .word DAT_020843d0
_0200B814: .word 0x66666667

	arm_func_start sub_0200B818
sub_0200B818: ; 0x0200B818
	stmdb sp!, {r4, lr}
	stmib r0, {r1, r2}
	ldr r1, [sp, #8]
	str r3, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr lr, [sp, #0xc]
	ldr ip, _0200BBB8 ; =0x00100010
	ldr r4, [sp, #0x10]
	cmp lr, ip
	ldr r2, [sp, #0x14]
	mov r1, #0
	bgt _0200B86C
	cmp lr, ip
	bge _0200B898
	cmp lr, #0
	bgt _0200B860
	beq _0200B890
	b _0200B89C
	arm_func_end sub_0200B818
_0200B860:
	cmp lr, #0x10
	beq _0200B890
	b _0200B89C
_0200B86C:
	add r3, ip, #0x100000
	cmp lr, r3
	bgt _0200B880
	moveq r1, #2
	b _0200B89C
_0200B880:
	add r3, ip, #0x200000
	cmp lr, r3
	moveq r1, #3
	b _0200B89C
_0200B890:
	mov r1, #0
	b _0200B89C
_0200B898:
	mov r1, #1
_0200B89C:
	ldr r3, [r0, #4]
	cmp r3, #0x10
	addls pc, pc, r3, lsl #2
	b _0200BB90
_0200B8AC: ; jump table
	b _0200B8F0 ; case 0
	b _0200B918 ; case 1
	b _0200B940 ; case 2
	b _0200B964 ; case 3
	b _0200B98C ; case 4
	b _0200B9B4 ; case 5
	b _0200B9DC ; case 6
	b _0200BA04 ; case 7
	b _0200BA2C ; case 8
	b _0200BA54 ; case 9
	b _0200BA7C ; case 10
	b _0200BAA4 ; case 11
	b _0200BACC ; case 12
	b _0200BAF4 ; case 13
	b _0200BB1C ; case 14
	b _0200BB44 ; case 15
	b _0200BB6C ; case 16
_0200B8F0:
	mov r3, r4, lsr #5
	add r3, r3, #0x34
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #3
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B918:
	mov r3, r4, lsr #5
	add r3, r3, #0x38
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #3
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B940:
	mov r3, r4, lsr #5
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B964:
	mov r3, r4, lsr #5
	add r3, r3, #4
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B98C:
	mov r3, r4, lsr #5
	add r3, r3, #8
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B9B4:
	mov r3, r4, lsr #5
	add r3, r3, #0xc
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B9DC:
	mov r3, r4, lsr #5
	add r3, r3, #0x10
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BA04:
	mov r3, r4, lsr #5
	add r3, r3, #0x14
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BA2C:
	mov r3, r4, lsr #5
	add r3, r3, #0x18
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BA54:
	mov r3, r4, lsr #5
	add r3, r3, #0x1c
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BA7C:
	mov r3, r4, lsr #5
	add r3, r3, #0x20
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BAA4:
	mov r3, r4, lsr #5
	add r3, r3, #0x24
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BACC:
	mov r3, r4, lsr #5
	add r3, r3, #0x28
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BAF4:
	mov r3, r4, lsr #5
	add r3, r3, #0x2c
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BB1C:
	mov r3, r4, lsr #5
	add r3, r3, #0x30
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BB44:
	mov r3, r4, lsr #5
	add r3, r3, #0x44
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #1
	str r1, [r0, #0x18]
	mov r1, #0xc0000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BB6C:
	mov r3, r4, lsr #5
	add r3, r3, #0x84
	mov r1, r3, lsr r1
	str r1, [r0, #0x14]
	mov r1, r2, lsr #5
	str r1, [r0, #0x18]
	mov r1, #0xc0000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BB90:
	mov r3, r4, lsr #5
	add r3, r3, #0x104
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r2, r1, #1
	ldr r1, _0200BBBC ; =0x40004000
	str r2, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200BBB8: .word 0x00100010
_0200BBBC: .word 0x40004000

    arm_func_start sub_0200BBC0
sub_0200BBC0: ; 0x0200BBC0
    bx lr
    arm_func_end sub_0200BBC0

    arm_func_start sub_0200BBC4
sub_0200BBC4: ; 0x0200BBC4
    bx lr
    arm_func_end sub_0200BBC4

	arm_func_start _ZN17UnkClass_0200BBC8C1Ev
_ZN17UnkClass_0200BBC8C1Ev: ; 0x0200BBC8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr ip, _0200BC5C ; =0x0200BBC4
	ldr r3, _0200BC60 ; =0x0200BBC0
	add r0, r4, #4
	mov r1, #0x80
	mov r2, #0x2c
	str ip, [sp]
	bl __cxa_vec_ctor
	mov r2, #0
	str r2, [r4]
	add r0, r4, #0x1000
	str r2, [r0, #0x604]
	str r2, [r0, #0x608]
	str r2, [r0, #0x60c]
	str r2, [r0, #0x610]
	mov r1, #0x1000
	arm_func_end _ZN17UnkClass_0200BBC8C1Ev
_0200BC10:
	add r0, r4, r2, lsl #2
	add r0, r0, #0x1000
	add r2, r2, #1
	str r1, [r0, #0x620]
	cmp r2, #4
	blt _0200BC10
	add r1, r4, #0x1000
	mov r2, #0
	str r2, [r1, #0x614]
	str r2, [r1, #0x618]
	str r2, [r1, #0x61c]
	mov r0, #0x10
	str r0, [r1, #0x630]
	mov r0, #0x4000
	str r0, [r1, #0x634]
	mov r0, r4
	str r2, [r1, #0x638]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0200BC5C: .word sub_0200BBC4
_0200BC60: .word sub_0200BBC0

	arm_func_start sub_0200BC64
sub_0200BC64: ; 0x0200BC64
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr ip, [sp, #0x1c]
	add r0, r4, #0x1000
	str ip, [r0, #0x630]
	ldr lr, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str lr, [r0, #0x634]
	str ip, [r0, #0x638]
	cmp r1, #0
	strne r1, [r4]
	cmp r2, #0
	addne r0, r4, #0x1000
	strne r2, [r0, #0x614]
	cmp r3, #0
	addne r0, r4, #0x1000
	ldr r1, [sp, #0x18]
	strne r3, [r0, #0x618]
	cmp r1, #0
	addne r0, r4, #0x1000
	strne r1, [r0, #0x61c]
	mov r0, r4
	bl sub_0200BCF4
	mov r5, #0
	mov r6, r5
	add r7, r4, #4
	arm_func_end sub_0200BC64
_0200BCCC:
	ldr r1, [r4]
	mov r0, r7
	add r1, r1, r6
	bl sub_0200B714
	add r5, r5, #1
	cmp r5, #0x80
	add r6, r6, #8
	add r7, r7, #0x2c
	blt _0200BCCC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0200BCF4
sub_0200BCF4: ; 0x0200BCF4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _0200BD38
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0200BE18 ; =s_ICN_0208a9c8
	ldr r2, _0200BE1C ; =s_data_interface_i058_LZ_bin_0208a9cc
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r4, r0
	arm_func_end sub_0200BCF4
_0200BD38:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _0200BD60
	ldr r1, _0200BE20 ; =s_ICN_i058_00_NCGR_0208a9e8
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl sub_020032CC
	mov r6, r0
_0200BD60:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x634]
	ldr r2, [r6, #0xb8]
	add r1, r1, #0x6400000
	ldr r0, [r2, #0x14]
	ldr r2, [r2, #0x10]
	bl MIi_CpuCopyFast
	cmp r6, #0
	beq _0200BD94
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200BD94:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _0200BDBC
	ldr r1, _0200BE24 ; =s_ICN_i058_NCLR_0208a9fc
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov r6, r0
_0200BDBC:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x638]
	ldr r2, [r6, #0xb8]
	add r1, r1, #0x200
	ldr r0, [r2, #0xc]
	ldr r2, [r2, #8]
	add r1, r1, #0x5000000
	bl MIi_CpuCopyFast
	cmp r6, #0
	beq _0200BDF4
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200BDF4:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0200BE18: .word s_ICN_0208a9c8
_0200BE1C: .word s_data_interface_i058_LZ_bin_0208a9cc
_0200BE20: .word s_ICN_i058_00_NCGR_0208a9e8
_0200BE24: .word s_ICN_i058_NCLR_0208a9fc

	arm_func_start sub_0200BE28
sub_0200BE28: ; 0x0200BE28
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov lr, #0x4000000
	ldr ip, [lr]
	ldr r4, [lr]
	and ip, ip, #0x1f00
	mov r5, ip, lsr #8
	bic ip, r4, #0x1f00
	orr r4, r5, #0x10
	orr r4, ip, r4, lsl #8
	mov ip, r0
	str r4, [lr]
	mov r5, #0
	arm_func_end sub_0200BE28
_0200BE5C:
	ldr r4, [ip, #0x14]
	cmp r4, #0
	bne _0200BEA4
	ldr r4, [sp, #0x20]
	add ip, r0, #0x1000
	str r4, [sp]
	ldr r4, [ip, #0x630]
	add lr, r0, #4
	mov r0, #0x2c
	str r4, [sp, #4]
	ldr r4, [ip, #0x634]
	mla r0, r5, r0, lr
	str r4, [sp, #8]
	ldr ip, [ip, #0x638]
	str ip, [sp, #0xc]
	bl sub_0200B818
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
_0200BEA4:
	add r5, r5, #1
	cmp r5, #0x80
	add ip, ip, #0x2c
	blt _0200BE5C
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0200BEBC
sub_0200BEBC: ; 0x0200BEBC
	stmdb sp!, {r4, r5, r6, lr}
	mov r3, #0
	mov r4, r0
	mov r5, r3
	mov r1, r3
	arm_func_end sub_0200BEBC
_0200BED0:
	add r0, r4, r3, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x620]
	ldr r2, [r4]
	mov r0, r0, lsl #0xc
	add r2, r2, r5, lsl #3
	mov r0, r0, asr #0x10
	strh r0, [r2, #6]
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	add r3, r3, #1
	strh r0, [r2, #0x1e]
	cmp r3, #4
	add r5, r5, #4
	blt _0200BED0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x604]
	cmp r0, #1
	bne _0200BF24
	mov r0, r4
	bl sub_0200C0C8
_0200BF24:
	add r6, r4, #4
	mov r5, #0
_0200BF2C:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _0200BF40
	mov r0, r6
	bl sub_0200B744
_0200BF40:
	add r5, r5, #1
	cmp r5, #0x80
	add r4, r4, #0x2c
	add r6, r6, #0x2c
	blt _0200BF2C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200BF58
sub_0200BF58: ; 0x0200BF58
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, #0
	mov r6, r5
	add r7, r4, #4
	arm_func_end sub_0200BF58
_0200BF6C:
	ldr r1, [r4]
	mov r0, r7
	add r1, r1, r6
	bl sub_0200B714
	add r5, r5, #1
	cmp r5, #0x80
	add r6, r6, #8
	add r7, r7, #0x2c
	blt _0200BF6C
	mov r2, #0
	mov r1, #0x1000
_0200BF98:
	add r0, r4, r2, lsl #2
	add r0, r0, #0x1000
	add r2, r2, #1
	str r1, [r0, #0x620]
	cmp r2, #4
	blt _0200BF98
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0200BFB4
sub_0200BFB4: ; 0x0200BFB4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r4, #0
	mov r5, r8
	mov r6, r4
	add r7, r8, #4
	arm_func_end sub_0200BFB4
_0200BFCC:
	ldr r0, [r5, #8]
	cmp r0, #0xf
	bgt _0200BFF8
	bge _0200C000
	cmp r0, #1
	bgt _0200C014
	cmp r0, #0
	blt _0200C014
	cmpne r0, #1
	beq _0200C000
	b _0200C014
_0200BFF8:
	cmp r0, #0x10
	bne _0200C014
_0200C000:
	ldr r1, [r8]
	mov r0, r7
	add r1, r1, r6
	bl sub_0200B714
	b _0200C044
_0200C014:
	ldr r0, [r5, #0x10]
	cmp r0, #0x18
	cmpne r0, #0xa8
	bne _0200C034
	ldr r0, [r5, #0x10]
	sub r0, r0, #0x10
	str r0, [r5, #0x10]
	b _0200C044
_0200C034:
	ldr r1, [r8]
	mov r0, r7
	add r1, r1, r6
	bl sub_0200B714
_0200C044:
	add r4, r4, #1
	cmp r4, #0x80
	add r5, r5, #0x2c
	add r6, r6, #8
	add r7, r7, #0x2c
	blt _0200BFCC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_0200C060
sub_0200C060: ; 0x0200C060
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov ip, #1
	mov r4, r0
	mov r1, #0xf
	mov r2, #0x20
	mov r3, #0x40
	str ip, [sp]
	bl sub_0200BE28
	mov ip, #1
	mov r0, r4
	mov r1, #0x10
	mov r2, #0xa0
	mov r3, #0x40
	str ip, [sp]
	bl sub_0200BE28
	add r0, r4, #0x1000
	mov r1, #1
	str r1, [r0, #0x604]
	str r1, [r0, #0x608]
	mov r1, #0
	str r1, [r0, #0x60c]
	mov r1, #0xa
	str r1, [r0, #0x610]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0200C060

	arm_func_start sub_0200C0C8
sub_0200C0C8: ; 0x0200C0C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r2, r4, #0x1000
	ldr r1, [r2, #0x608]
	cmp r1, #2
	bne _0200C12C
	ldr r0, [r2, #0x610]
	cmp r0, #0
	beq _0200C11C
	cmp r0, #0x28
	moveq r0, #0x1400
	streq r0, [r2, #0x624]
	beq _0200C108
	cmp r0, #0x24
	moveq r0, #0x1000
	streq r0, [r2, #0x624]
	arm_func_end sub_0200C0C8
_0200C108:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x610]
	sub r1, r1, #1
	str r1, [r0, #0x610]
	ldmia sp!, {r4, pc}
_0200C11C:
	mov r0, #0
	str r0, [r2, #0x604]
	str r0, [r2, #0x608]
	ldmia sp!, {r4, pc}
_0200C12C:
	ldr r1, [r2, #0x610]
	cmp r1, #0
	subne r0, r1, #1
	strne r0, [r2, #0x610]
	ldmneia sp!, {r4, pc}
	ldr r1, [r2, #0x614]
	ldrh r3, [r1, #2]
	and r1, r3, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	beq _0200C190
	mov r1, #2
	str r1, [r2, #0x608]
	mov r1, #0
	str r1, [r2, #0x60c]
	mov r3, #0x28
	mov r1, #6
	str r3, [r2, #0x610]
	bl sub_0200C36C
	cmp r0, #0
	bne _0200C2A8
	mov r0, r4
	mov r1, #0x43
	bl sub_0200C36C
	b _0200C2A8
_0200C190:
	and r1, r3, #2
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	beq _0200C1D8
	mov r1, #2
	str r1, [r2, #0x608]
	mov r1, #1
	str r1, [r2, #0x60c]
	mov r3, #0x28
	mov r1, #8
	str r3, [r2, #0x610]
	bl sub_0200C36C
	cmp r0, #0
	bne _0200C2A8
	mov r0, r4
	mov r1, #0x44
	bl sub_0200C36C
	b _0200C2A8
_0200C1D8:
	ldr r3, [r2, #0x618]
	ldrb r1, [r3, #4]
	cmp r1, #0
	beq _0200C2A8
	ldrh ip, [r3, #0xc]
	cmp ip, #0x40
	blo _0200C248
	cmp ip, #0x80
	bhi _0200C248
	ldrh r1, [r3, #0xa]
	cmp r1, #0x20
	blo _0200C248
	cmp r1, #0x60
	bhi _0200C248
	mov r1, #2
	str r1, [r2, #0x608]
	mov r1, #0
	str r1, [r2, #0x60c]
	mov r3, #0x28
	mov r1, #6
	str r3, [r2, #0x610]
	bl sub_0200C36C
	cmp r0, #0
	bne _0200C2A8
	mov r0, r4
	mov r1, #0x43
	bl sub_0200C36C
	b _0200C2A8
_0200C248:
	cmp ip, #0x40
	blo _0200C2A8
	cmp ip, #0x80
	bhi _0200C2A8
	ldrh r0, [r3, #0xa]
	cmp r0, #0xa0
	blo _0200C2A8
	cmp r0, #0xe0
	bhi _0200C2A8
	add r2, r4, #0x1000
	mov r0, #2
	str r0, [r2, #0x608]
	mov r1, #1
	mov r0, r4
	str r1, [r2, #0x60c]
	mov r3, #0x28
	mov r1, #8
	str r3, [r2, #0x610]
	bl sub_0200C36C
	cmp r0, #0
	bne _0200C2A8
	mov r0, r4
	mov r1, #0x44
	bl sub_0200C36C
_0200C2A8:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x608]
	cmp r0, #2
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_0200C2C4
	ldmia sp!, {r4, pc}

	arm_func_start sub_0200C2C4
sub_0200C2C4: ; 0x0200C2C4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r6, #0
	mov fp, #1
	mov r7, sl
	mov r8, r6
	add sb, sl, #4
	add r4, sl, #0x1000
	mov r5, fp
	arm_func_end sub_0200C2C4
_0200C2E8:
	ldr r1, [r7, #0x14]
	cmp r1, #1
	ldreq r0, [r7, #8]
	cmpeq r0, #0xf
	bne _0200C320
	ldr r0, [r4, #0x60c]
	cmp r0, #0
	streq r5, [r7, #0x28]
	beq _0200C350
	ldr r1, [sl]
	mov r0, sb
	add r1, r1, r8
	bl sub_0200B714
	b _0200C350
_0200C320:
	cmp r1, #1
	ldreq r0, [r7, #8]
	cmpeq r0, #0x10
	bne _0200C350
	ldr r0, [r4, #0x60c]
	cmp r0, #1
	streq fp, [r7, #0x28]
	beq _0200C350
	ldr r1, [sl]
	mov r0, sb
	add r1, r1, r8
	bl sub_0200B714
_0200C350:
	add r6, r6, #1
	cmp r6, #0x80
	add r7, r7, #0x2c
	add r8, r8, #8
	add sb, sb, #0x2c
	blt _0200C2E8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start sub_0200C36C
sub_0200C36C: ; 0x0200C36C
	stmdb sp!, {r3, lr}
	add r0, r0, #0x1000
	ldr r0, [r0, #0x61c]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02034C44
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200C36C

	arm_func_start sub_0200C38C
sub_0200C38C: ; 0x0200C38C
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #0xc]
	str r2, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end sub_0200C38C

	arm_func_start sub_0200C3A8
sub_0200C3A8: ; 0x0200C3A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200C3D0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200C3A8

	arm_func_start sub_0200C3BC
sub_0200C3BC: ; 0x0200C3BC
	ldr ip, _0200C3CC ; =sub_0200C588
	str r2, [r0, #0xc]
	str r1, [r0, #4]
	bx ip
	.align 2, 0
_0200C3CC: .word sub_0200C588
	arm_func_end sub_0200C3BC

	arm_func_start sub_0200C3D0
sub_0200C3D0: ; 0x0200C3D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, _0200C400 ; =0x0200C404
	mov r1, #0x30
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200C400: .word sub_0200C404
	arm_func_end sub_0200C3D0

    arm_func_start sub_0200C404
sub_0200C404: ; 0x0200C404
	bx lr
    arm_func_end sub_0200C404

	arm_func_start sub_0200C408
sub_0200C408: ; 0x0200C408
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	str r1, [r4, #0x10]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0200C52C
_0200C420: ; jump table
	b _0200C430 ; case 0
	b _0200C470 ; case 1
	b _0200C4B0 ; case 2
	b _0200C4F0 ; case 3
	arm_func_end sub_0200C408
_0200C430:
	ldr r1, _0200C578 ; =0x04000008
	mov r5, #0x4000000
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, r2, lsl #8
	orr r0, r0, r3, lsl #2
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, [r5]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #1
	orr r0, r1, r0, lsl #8
	str r0, [r5]
	b _0200C52C
_0200C470:
	ldr r1, _0200C57C ; =0x0400000A
	mov r5, #0x4000000
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, r2, lsl #8
	orr r0, r0, r3, lsl #2
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, [r5]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #2
	orr r0, r1, r0, lsl #8
	str r0, [r5]
	b _0200C52C
_0200C4B0:
	ldr r1, _0200C580 ; =0x0400000C
	mov r5, #0x4000000
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, r2, lsl #8
	orr r0, r0, r3, lsl #2
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, [r5]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #4
	orr r0, r1, r0, lsl #8
	str r0, [r5]
	b _0200C52C
_0200C4F0:
	ldr r1, _0200C584 ; =0x0400000E
	mov r5, #0x4000000
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, r2, lsl #8
	orr r0, r0, r3, lsl #2
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, [r5]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #8
	orr r0, r1, r0, lsl #8
	str r0, [r5]
_0200C52C:
	ldr r1, [r4, #0x10]
	mov r0, r4
	bl sub_0200C9E8
	mov r6, r0
	ldr r1, [r4, #0x10]
	mov r0, r4
	bl sub_0200CA2C
	mov r5, r0
	mov r0, r4
	bl sub_0200C588
	mov r1, r6
	mov r0, #0
	mov r2, #0x20
	bl MIi_CpuClearFast
	mov r1, r5
	mov r0, #0
	mov r2, #0x800
	bl MIi_CpuClearFast
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0200C578: .word 0x04000008
_0200C57C: .word 0x0400000A
_0200C580: .word 0x0400000C
_0200C584: .word 0x0400000E

	arm_func_start sub_0200C588
sub_0200C588: ; 0x0200C588
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, [r0, #0xc]
	cmp r0, #0
	mov r0, #0xbc
	bne _0200C60C
	bl _Znwm
	movs r4, r0
	beq _0200C5C4
	ldr r1, _0200C678 ; =s_data_font_prs_lc_jp_NCLR_0208aa0c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov r4, r0
	arm_func_end sub_0200C588
_0200C5C4:
	ldr r0, [r4, #0xb8]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #0xb8]
	mov r1, #0x1c0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GX_LoadBGPltt
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0200C60C:
	bl _Znwm
	movs r4, r0
	beq _0200C630
	ldr r1, _0200C67C ; =s_data_font_prs_jp_NCLR_0208aa28
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov r4, r0
_0200C630:
	ldr r0, [r4, #0xb8]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #0xb8]
	mov r1, #0x1c0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GX_LoadBGPltt
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0200C678: .word s_data_font_prs_lc_jp_NCLR_0208aa0c
_0200C67C: .word s_data_font_prs_jp_NCLR_0208aa28

	arm_func_start sub_0200C680
sub_0200C680: ; 0x0200C680
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0200C6BC
	mov r3, #0
	mov r0, r1
	mov r1, #0x30
	mov r2, #8
	str r3, [sp]
	bl __cxa_vec_new
	add sp, sp, #4
	str r0, [r4, #8]
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0200C680
_0200C6BC:
	bl OS_Terminate
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}

	arm_func_start sub_0200C6C8
sub_0200C6C8: ; 0x0200C6C8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r7, r1
	ldr r1, [r8, #0x10]
	mov r6, r2
	mov r5, r3
	bl sub_0200C9E8
	mov r1, #0x30
	mul r4, r7, r1
	ldr r1, [r8, #8]
	mov r2, #4
	add r1, r1, r4
	str r6, [r1, #0x28]
	str r5, [r1, #0x2c]
	ldr r3, [r8, #8]
	mov r5, r0
	ldr r1, [sp, #0x30]
	str r2, [sp]
	add r0, r3, r4
	ldr r2, [r0, #0x28]
	add r1, r5, r1, lsl #5
	ldr r3, [r0, #0x2c]
	bl NNS_G2dCharCanvasInitForBG
	ldr r3, [r8, #4]
	ldr r1, [r8, #8]
	ldr r0, [sp, #0x34]
	add r2, r1, r4
	str r2, [r2, #0x18]
	str r3, [r2, #0x1c]
	str r0, [r2, #0x20]
	ldr r1, [sp, #0x38]
	mov r0, r8
	str r1, [r2, #0x24]
	ldr r2, [r8, #8]
	ldr r1, [r8, #0x10]
	add r4, r2, r4
	bl sub_0200CA2C
	ldr r2, [sp, #0x2c]
	mov r1, #0x20
	str r2, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x30]
	mov r1, #0xe
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	ldr r3, [sp, #0x28]
	bl NNS_G2dMapScrToCharText
	mov r0, r8
	mov r1, r7
	bl sub_0200C980
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_0200C6C8

	arm_func_start sub_0200C7A4
sub_0200C7A4: ; 0x0200C7A4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	ldr r4, [sl, #8]
	mov r0, #0x30
	mla r4, r1, r0, r4
	ldr r0, [sp, #0x40]
	mov sb, r2
	cmp r0, #0
	ldr r0, [r4, #0x20]
	mov r6, r3
	ldr r8, [sp, #0x38]
	str r0, [sp, #0xc]
	beq _0200C804
	ldr r5, [r4, #0x28]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [sp, #0x3c]
	mov r3, #0
	bl NNSi_G2dFontGetStringWidth
	rsb r0, r0, r5, lsl #3
	ldr r1, [sp, #0x44]
	add r0, r0, r0, lsr #31
	rsb sb, r1, r0, asr #1
	arm_func_end sub_0200C7A4
_0200C804:
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	str r0, [sp, #8]
	ldmia r0, {r1, r7}
	ldrsb r0, [r1, #1]
	mov r5, sb
	sub r6, r6, #2
	add fp, r2, r0
	add r0, sl, #0x14
	str r0, [sp, #0x10]
_0200C82C:
	add r0, sp, #0x3c
	blx r7
	cmp r0, #0
	beq _0200C950
	cmp r0, #0x5b
	bne _0200C924
	add r0, sp, #0x3c
	blx r7
	cmp r0, #0x45
	bgt _0200C85C
	beq _0200C884
	b _0200C82C
_0200C85C:
	cmp r0, #0x50
	bgt _0200C82C
	cmp r0, #0x4b
	blt _0200C82C
	beq _0200C900
	cmp r0, #0x4d
	beq _0200C89C
	cmp r0, #0x50
	beq _0200C8C0
	b _0200C82C
_0200C884:
	ldr r0, [sp, #0x3c]
	mov r5, sb
	add r0, r0, #1
	str r0, [sp, #0x3c]
	add r6, r6, fp
	b _0200C82C
_0200C89C:
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x3c]
	str r0, [sl, #0x2c]
	ldr r0, _0200C97C ; =MAIN_BSS_020BAE83
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sl, #0x30]
	b _0200C82C
_0200C8C0:
	ldr r0, [sp, #0x3c]
	add r2, r0, #1
	str r2, [sp, #0x3c]
	ldrb r1, [r0, #1]
	add r0, r2, #2
	mov r1, r1, lsl #0x1c
	add r1, sl, r1, lsr #26
	ldr r1, [r1, #0x34]
	str r0, [sp, #0x3c]
	str r0, [sl, #0x2c]
	ldr r0, [sl]
	bl sub_02018B10
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sl, #0x30]
	b _0200C82C
_0200C900:
	ldr r0, [sp, #0x3c]
	add r0, r0, #3
	str r0, [sp, #0x3c]
	str r0, [sl, #0x2c]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sl, #0x30]
	b _0200C82C
_0200C924:
	str r8, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #8]
	mov r2, r5
	mov r3, r6
	bl NNS_G2dCharCanvasDrawChar
	add r1, r5, r0
	ldr r0, [sp, #0xc]
	add r5, r1, r0
	b _0200C82C
_0200C950:
	ldr r0, [sl, #0x30]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	str r0, [sl, #0x30]
	ldr r0, [sl, #0x2c]
	str r0, [sp, #0x3c]
	b _0200C82C
_0200C974:
	.byte 0x14, 0xD0, 0x8D, 0xE2, 0xF0, 0x8F, 0xBD, 0xE8
_0200C97C: .word MAIN_BSS_020BAE83

	arm_func_start sub_0200C980
sub_0200C980: ; 0x0200C980
	stmdb sp!, {r3, lr}
	mov r2, #0x30
	mul ip, r1, r2
	ldr lr, [r0, #8]
	mov r0, #0
	add r2, lr, ip
	ldr r1, [r2, #0x28]
	ldr r3, [r2, #0x2c]
	mov r1, r1, lsl #5
	mul r2, r3, r1
	ldr r1, [lr, ip]
	bl MIi_CpuClearFast
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200C980

	arm_func_start sub_0200C9B4
sub_0200C9B4: ; 0x0200C9B4
	stmdb sp!, {r3, lr}
	mov r3, #0x30
	mul ip, r1, r3
	ldr lr, [r0, #8]
	mov r0, r2
	add r2, lr, ip
	ldr r1, [r2, #0x28]
	ldr r3, [r2, #0x2c]
	mov r1, r1, lsl #5
	mul r2, r3, r1
	ldr r1, [lr, ip]
	bl MIi_CpuClearFast
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200C9B4

	arm_func_start sub_0200C9E8
sub_0200C9E8: ; 0x0200C9E8
	stmdb sp!, {r3, lr}
	cmp r1, #3
	mov r0, #0
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_0200C9FC: ; jump table
	b _0200CA0C ; case 0
	b _0200CA14 ; case 1
	b _0200CA1C ; case 2
	b _0200CA24 ; case 3
	arm_func_end sub_0200C9E8
_0200CA0C:
	bl G2_GetBG0CharPtr
	ldmia sp!, {r3, pc}
_0200CA14:
	bl G2_GetBG1CharPtr
	ldmia sp!, {r3, pc}
_0200CA1C:
	bl G2_GetBG2CharPtr
	ldmia sp!, {r3, pc}
_0200CA24:
	bl G2_GetBG3CharPtr
	ldmia sp!, {r3, pc}

	arm_func_start sub_0200CA2C
sub_0200CA2C: ; 0x0200CA2C
	stmdb sp!, {r3, lr}
	cmp r1, #3
	mov r0, #0
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_0200CA40: ; jump table
	b _0200CA50 ; case 0
	b _0200CA58 ; case 1
	b _0200CA60 ; case 2
	b _0200CA68 ; case 3
	arm_func_end sub_0200CA2C
_0200CA50:
	bl G2_GetBG0ScrPtr
	ldmia sp!, {r3, pc}
_0200CA58:
	bl G2_GetBG1ScrPtr
	ldmia sp!, {r3, pc}
_0200CA60:
	bl G2_GetBG2ScrPtr
	ldmia sp!, {r3, pc}
_0200CA68:
	bl G2_GetBG3ScrPtr
	ldmia sp!, {r3, pc}

	arm_func_start sub_0200CA70
sub_0200CA70: ; 0x0200CA70
	ldr ip, _0200CA7C ; =STD_CopyString
	add r0, r0, #0x14
	bx ip
	.align 2, 0
_0200CA7C: .word STD_CopyString
	arm_func_end sub_0200CA70

	arm_func_start sub_0200CA80
sub_0200CA80: ; 0x0200CA80
	stmdb sp!, {r3, r4, r5, lr}
	ldr ip, [r0, #8]
	mov r0, #0x30
	mla ip, r1, r0, ip
	ldr r0, [ip, #0x1c]
	mov r5, r3
	ldr r1, [ip, #0x20]
	ldr r4, [ip, #0x28]
	mov r3, #0
	bl NNSi_G2dFontGetStringWidth
	rsb r0, r0, r4, lsl #3
	sub r0, r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200CA80

	arm_func_start sub_0200CAB4
sub_0200CAB4: ; 0x0200CAB4
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #0xc]
	str r2, [r0]
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_0200CAB4

	arm_func_start sub_0200CACC
sub_0200CACC: ; 0x0200CACC
	ldr ip, _0200CADC ; =sub_0200CB90
	str r2, [r0, #0xc]
	str r1, [r0, #4]
	bx ip
	.align 2, 0
_0200CADC: .word sub_0200CB90
	arm_func_end sub_0200CACC

	arm_func_start sub_0200CAE0
sub_0200CAE0: ; 0x0200CAE0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, _0200CB10 ; =0x0200C404
	mov r1, #0x30
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200CB10: .word sub_0200C404
	arm_func_end sub_0200CAE0

	arm_func_start sub_0200CB14
sub_0200CB14: ; 0x0200CB14
	stmdb sp!, {r3, lr}
	ldr r2, _0200CB8C ; =0x04001008
	ldrh r1, [r2]
	sub r3, r2, #8
	and r1, r1, #0x43
	orr r1, r1, #0x2c00
	strh r1, [r2]
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov ip, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, ip, #1
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	bl sub_0200CB90
	ldr ip, _0200CB8C ; =0x04001008
	mov r0, #0
	ldrh r3, [ip]
	mov r1, #0x6200000
	mov r2, #0x20
	bic r3, r3, #3
	strh r3, [ip]
	bl MIi_CpuClearFast
	bl G2S_GetBG0ScrPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x800
	bl MIi_CpuClearFast
	ldmia sp!, {r3, pc}
	.align 2, 0
_0200CB8C: .word 0x04001008
	arm_func_end sub_0200CB14

	arm_func_start sub_0200CB90
sub_0200CB90: ; 0x0200CB90
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, [r0, #0xc]
	cmp r0, #0
	mov r0, #0xbc
	bne _0200CC14
	bl _Znwm
	movs r4, r0
	beq _0200CBCC
	ldr r1, _0200CC80 ; =s_data_font_prs_lc_jp_NCLR_0208aa40
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov r4, r0
	arm_func_end sub_0200CB90
_0200CBCC:
	ldr r0, [r4, #0xb8]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #0xb8]
	mov r1, #0x1c0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GXS_LoadBGPltt
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0200CC14:
	bl _Znwm
	movs r4, r0
	beq _0200CC38
	ldr r1, _0200CC84 ; =s_data_font_prs_jp_NCLR_0208aa5c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov r4, r0
_0200CC38:
	ldr r0, [r4, #0xb8]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #0xb8]
	mov r1, #0x1c0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GXS_LoadBGPltt
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0200CC80: .word s_data_font_prs_lc_jp_NCLR_0208aa40
_0200CC84: .word s_data_font_prs_jp_NCLR_0208aa5c

	arm_func_start sub_0200CC88
sub_0200CC88: ; 0x0200CC88
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0200CCC4
	mov r3, #0
	mov r0, r1
	mov r1, #0x30
	mov r2, #8
	str r3, [sp]
	bl __cxa_vec_new
	add sp, sp, #4
	str r0, [r4, #8]
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0200CC88
_0200CCC4:
	bl OS_Terminate
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}

	arm_func_start sub_0200CCD0
sub_0200CCD0: ; 0x0200CCD0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl G2S_GetBG0CharPtr
	mov r1, #0x30
	mul r4, r7, r1
	ldr r1, [r8, #8]
	mov r3, r0
	add r0, r1, r4
	str r6, [r0, #0x28]
	str r5, [r0, #0x2c]
	ldr r1, [r8, #8]
	mov r0, #4
	str r0, [sp]
	add r0, r1, r4
	ldr r1, [sp, #0x30]
	ldr r2, [r0, #0x28]
	add r1, r3, r1, lsl #5
	ldr r3, [r0, #0x2c]
	bl NNS_G2dCharCanvasInitForBG
	ldr r2, [r8, #4]
	ldr r1, [r8, #8]
	ldr r0, [sp, #0x34]
	add r1, r1, r4
	str r1, [r1, #0x18]
	str r2, [r1, #0x1c]
	str r0, [r1, #0x20]
	ldr r0, [sp, #0x38]
	str r0, [r1, #0x24]
	ldr r0, [r8, #8]
	add r4, r0, r4
	bl G2S_GetBG0ScrPtr
	ldr r2, [sp, #0x2c]
	mov r1, #0x20
	str r2, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x30]
	mov r1, #0xe
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	ldr r3, [sp, #0x28]
	bl NNS_G2dMapScrToCharText
	mov r0, r8
	mov r1, r7
	bl sub_0200CF7C
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_0200CCD0

	arm_func_start sub_0200CDA0
sub_0200CDA0: ; 0x0200CDA0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	ldr r4, [sl, #8]
	mov r0, #0x30
	mla r4, r1, r0, r4
	ldr r0, [sp, #0x40]
	mov sb, r2
	cmp r0, #0
	ldr r0, [r4, #0x20]
	mov r6, r3
	ldr r8, [sp, #0x38]
	str r0, [sp, #0xc]
	beq _0200CE00
	ldr r5, [r4, #0x28]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [sp, #0x3c]
	mov r3, #0
	bl NNSi_G2dFontGetStringWidth
	rsb r0, r0, r5, lsl #3
	ldr r1, [sp, #0x44]
	add r0, r0, r0, lsr #31
	rsb sb, r1, r0, asr #1
	arm_func_end sub_0200CDA0
_0200CE00:
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	str r0, [sp, #8]
	ldmia r0, {r1, r7}
	ldrsb r0, [r1, #1]
	mov r5, sb
	sub r6, r6, #2
	add fp, r2, r0
	add r0, sl, #0x10
	str r0, [sp, #0x10]
_0200CE28:
	add r0, sp, #0x3c
	blx r7
	cmp r0, #0
	beq _0200CF4C
	cmp r0, #0x5b
	bne _0200CF20
	add r0, sp, #0x3c
	blx r7
	cmp r0, #0x45
	bgt _0200CE58
	beq _0200CE80
	b _0200CE28
_0200CE58:
	cmp r0, #0x50
	bgt _0200CE28
	cmp r0, #0x4b
	blt _0200CE28
	beq _0200CEFC
	cmp r0, #0x4d
	beq _0200CE98
	cmp r0, #0x50
	beq _0200CEBC
	b _0200CE28
_0200CE80:
	ldr r0, [sp, #0x3c]
	mov r5, sb
	add r0, r0, #1
	str r0, [sp, #0x3c]
	add r6, r6, fp
	b _0200CE28
_0200CE98:
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x3c]
	str r0, [sl, #0x28]
	ldr r0, _0200CF78 ; =MAIN_BSS_020BAE83
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sl, #0x2c]
	b _0200CE28
_0200CEBC:
	ldr r0, [sp, #0x3c]
	add r2, r0, #1
	str r2, [sp, #0x3c]
	ldrb r1, [r0, #1]
	add r0, r2, #2
	mov r1, r1, lsl #0x1c
	add r1, sl, r1, lsr #26
	ldr r1, [r1, #0x30]
	str r0, [sp, #0x3c]
	str r0, [sl, #0x28]
	ldr r0, [sl]
	bl sub_02018B10
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sl, #0x2c]
	b _0200CE28
_0200CEFC:
	ldr r0, [sp, #0x3c]
	add r0, r0, #3
	str r0, [sp, #0x3c]
	str r0, [sl, #0x28]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x3c]
	mov r0, #1
	str r0, [sl, #0x2c]
	b _0200CE28
_0200CF20:
	str r8, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #8]
	mov r2, r5
	mov r3, r6
	bl NNS_G2dCharCanvasDrawChar
	add r1, r5, r0
	ldr r0, [sp, #0xc]
	add r5, r1, r0
	b _0200CE28
_0200CF4C:
	ldr r0, [sl, #0x2c]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	str r0, [sl, #0x2c]
	ldr r0, [sl, #0x28]
	str r0, [sp, #0x3c]
	b _0200CE28
_0200CF70:
	.byte 0x14, 0xD0, 0x8D, 0xE2, 0xF0, 0x8F, 0xBD, 0xE8
_0200CF78: .word MAIN_BSS_020BAE83

	arm_func_start sub_0200CF7C
sub_0200CF7C: ; 0x0200CF7C
	stmdb sp!, {r3, lr}
	mov r2, #0x30
	mul ip, r1, r2
	ldr lr, [r0, #8]
	mov r0, #0
	add r2, lr, ip
	ldr r1, [r2, #0x28]
	ldr r3, [r2, #0x2c]
	mov r1, r1, lsl #5
	mul r2, r3, r1
	ldr r1, [lr, ip]
	bl MIi_CpuClearFast
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200CF7C

	arm_func_start sub_0200CFB0
sub_0200CFB0: ; 0x0200CFB0
	ldr ip, _0200CFBC ; =STD_CopyString
	add r0, r0, #0x10
	bx ip
	.align 2, 0
_0200CFBC: .word STD_CopyString
	arm_func_end sub_0200CFB0

	arm_func_start sub_0200CFC0
sub_0200CFC0: ; 0x0200CFC0
	stmdb sp!, {r3, r4, r5, lr}
	ldr ip, [r0, #8]
	mov r0, #0x30
	mla ip, r1, r0, ip
	ldr r0, [ip, #0x1c]
	mov r5, r3
	ldr r1, [ip, #0x20]
	ldr r4, [ip, #0x28]
	mov r3, #0
	bl NNSi_G2dFontGetStringWidth
	rsb r0, r0, r4, lsl #3
	sub r0, r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200CFC0

	arm_func_start sub_0200CFF4
sub_0200CFF4: ; 0x0200CFF4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, #0
	mov r5, r0
	bl sub_0201001C
	cmp r0, #0
	movne r4, #1
	cmp r4, #0
	mov r0, #0xb8
	bne _0200D07C
	bl _Znwm
	cmp r0, #0
	beq _0200D044
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, _0200D104 ; =s_data_font_font_jp_utf8_NFTR_0208aa74
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
	arm_func_end sub_0200CFF4
_0200D044:
	str r0, [r5]
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _0200D074
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, _0200D108 ; =s_data_font_font_jp_lc_utf8_NFTR_0208aa94
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
_0200D074:
	str r0, [r5, #4]
	b _0200D0D8
_0200D07C:
	bl _Znwm
	cmp r0, #0
	beq _0200D0A4
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, _0200D10C ; =s_data_font_font_us_utf8_NFTR_0208aab4
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
_0200D0A4:
	str r0, [r5]
	mov r0, #0xb8
	bl _Znwm
	cmp r0, #0
	beq _0200D0D4
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, _0200D110 ; =s_data_font_font_us_lc_utf8_NFTR_0208aad4
	mov r3, r2
	str r2, [sp, #8]
	bl sub_02002BC4
_0200D0D4:
	str r0, [r5, #4]
_0200D0D8:
	ldr r1, [r5]
	add r0, r5, #0xc
	ldr r1, [r1, #0x4c]
	bl NNS_G2dFontInitAuto
	ldr r1, [r5, #4]
	add r0, r5, #0x14
	ldr r1, [r1, #0x4c]
	bl NNS_G2dFontInitAuto
	mov r0, r5
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0200D104: .word s_data_font_font_jp_utf8_NFTR_0208aa74
_0200D108: .word s_data_font_font_jp_lc_utf8_NFTR_0208aa94
_0200D10C: .word s_data_font_font_us_utf8_NFTR_0208aab4
_0200D110: .word s_data_font_font_us_lc_utf8_NFTR_0208aad4

	arm_func_start sub_0200D114
sub_0200D114: ; 0x0200D114
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	str r1, [r0, #8]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	bx lr
	arm_func_end sub_0200D114

	arm_func_start sub_0200D134
sub_0200D134: ; 0x0200D134
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200D1A0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200D134

	arm_func_start sub_0200D148
sub_0200D148: ; 0x0200D148
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r0, #0xb8
	mov r4, r1
	bl _Znwm
	cmp r0, #0
	beq _0200D184
	ldr r1, [r5, #8]
	mov r3, #0
	stmia sp, {r1, r3}
	mov r1, r4
	mov r2, #1
	str r3, [sp, #8]
	bl sub_02002BC4
	arm_func_end sub_0200D148
_0200D184:
	str r0, [r5]
	ldr r1, [r0, #0x4c]
	mov r0, r5
	str r1, [r5, #4]
	bl sub_0200D200
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}

	arm_func_start sub_0200D1A0
sub_0200D1A0: ; 0x0200D1A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0200D1CC
	beq _0200D1C4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0200D1A0
_0200D1C4:
	mov r0, #0
	str r0, [r4]
_0200D1CC:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0200D1E4
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0xc]
_0200D1E4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}

	arm_func_start sub_0200D200
sub_0200D200: ; 0x0200D200
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, [r4]
	ldr r0, [r4, #4]
	ldr r2, [r1, #0x4c]
	ldr r1, [r0, #4]
	add r5, r2, #0x10
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	add r6, r5, r1
	ldr r0, [r0, #0xc]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	bl _Znam
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	mov r0, r0, lsl #2
	bl _Znam
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	mov r2, #0
	cmp r1, #0
	ble _0200D27C
	arm_func_end sub_0200D200
_0200D260:
	ldrsb r1, [r5, r2]
	ldr r0, [r4, #0xc]
	strb r1, [r0, r2]
	ldr r1, [r4, #0x14]
	add r2, r2, #1
	cmp r2, r1
	blt _0200D260
_0200D27C:
	ldr r0, [r4, #0x18]
	bl _s32_div_f
	cmp r0, #0
	mov r3, #0
	addle sp, sp, #4
	str r0, [r4, #0x1c]
	ldmleia sp!, {r3, r4, r5, r6, pc}
_0200D298:
	ldr r0, [r4, #0x14]
	mov r5, #0
	cmp r0, #0
	ble _0200D378
	add r0, sp, #0
	mov r2, r5
_0200D2B0:
	str r2, [sp]
	ldr r1, [r4, #0x14]
	ldr ip, [r4, #0xc]
	mla r1, r3, r1, r5
	ldrsb ip, [ip, r5]
	cmp ip, #7
	addls pc, pc, ip, lsl #2
	b _0200D368
_0200D2D0: ; jump table
	b _0200D368 ; case 0
	b _0200D2F0 ; case 1
	b _0200D2F0 ; case 2
	b _0200D308 ; case 3
	b _0200D308 ; case 4
	b _0200D32C ; case 5
	b _0200D32C ; case 6
	b _0200D360 ; case 7
_0200D2F0:
	ldrb ip, [r6], #1
	strb ip, [r0]
	ldr lr, [sp]
	ldr ip, [r4, #0x10]
	str lr, [ip, r1, lsl #2]
	b _0200D368
_0200D308:
	ldrb lr, [r6]
	ldrb ip, [r6, #1]
	add r6, r6, #2
	strb lr, [r0]
	strb ip, [r0, #1]
	ldr lr, [sp]
	ldr ip, [r4, #0x10]
	str lr, [ip, r1, lsl #2]
	b _0200D368
_0200D32C:
	ldrb lr, [r6]
	ldrb ip, [r6, #1]
	strb lr, [r0]
	strb ip, [r0, #1]
	ldrb lr, [r6, #2]
	ldrb ip, [r6, #3]
	add r6, r6, #4
	strb lr, [r0, #2]
	strb ip, [r0, #3]
	ldr lr, [sp]
	ldr ip, [r4, #0x10]
	str lr, [ip, r1, lsl #2]
	b _0200D368
_0200D360:
	ldr ip, [r4, #0x10]
	str r2, [ip, r1, lsl #2]
_0200D368:
	ldr r1, [r4, #0x14]
	add r5, r5, #1
	cmp r5, r1
	blt _0200D2B0
_0200D378:
	ldr r0, [r4, #0x1c]
	add r3, r3, #1
	cmp r3, r0
	blt _0200D298
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}

	arm_func_start sub_0200D390
sub_0200D390: ; 0x0200D390
	ldr r0, [r0, #0x1c]
	bx lr
	arm_func_end sub_0200D390

	arm_func_start sub_0200D398
sub_0200D398: ; 0x0200D398
	ldr ip, [r0, #0x14]
	sub r0, ip, #1
	cmp r2, r0
	movgt r0, #0
	mlale r0, r1, ip, r2
	strle r0, [r3]
	movle r0, #1
	bx lr
	arm_func_end sub_0200D398

	arm_func_start sub_0200D3B8
sub_0200D3B8: ; 0x0200D3B8
	stmdb sp!, {r3, r4, r5, lr}
	mov ip, #0
	mov r4, r3
	add r3, sp, #0
	mov r5, r0
	str ip, [sp]
	bl sub_0200D398
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x10]
	ldr r1, [sp]
	mov r0, #1
	ldr r1, [r2, r1, lsl #2]
	str r1, [r4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200D3B8

	arm_func_start sub_0200D3F8
sub_0200D3F8: ; 0x0200D3F8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200E0AC
	mov r0, r4
	bl sub_0200D418
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200D3F8

	arm_func_start sub_0200D414
sub_0200D414: ; 0x0200D414
	bx lr
	arm_func_end sub_0200D414

	arm_func_start sub_0200D418
sub_0200D418: ; 0x0200D418
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x20]
	strh r1, [r0, #0x1e]
	mov r1, #0x1000
	str r1, [r0, #0x24]
	bx lr
	arm_func_end sub_0200D418

	arm_func_start sub_0200D44C
sub_0200D44C: ; 0x0200D44C
	ldr r3, [r0]
	str r1, [r3, #0x1c]
	ldr r0, [r0]
	str r2, [r0, #0x20]
	bx lr
	arm_func_end sub_0200D44C

	arm_func_start sub_0200D460
sub_0200D460: ; 0x0200D460
	str r1, [r0, #0x24]
	bx lr
	arm_func_end sub_0200D460

	arm_func_start sub_0200D468
sub_0200D468: ; 0x0200D468
	stmdb sp!, {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	ldr ip, [r3, #0x1c]
	ldr r3, [r3, #0x20]
	add r1, r1, ip
	add r2, r2, r3
	bl sub_0200D44C
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200D468

	arm_func_start sub_0200D490
sub_0200D490: ; 0x0200D490
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	ldr r4, [sl]
	mov sb, r1
	cmp r4, #0
	mov r8, r2
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r0, [sl, #4]
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0x3c
	mul r0, r3, r0
	ldr r1, _0200D5F8 ; =DAT_0208aaf4
	ldrh r1, [r1]
	bl _s32_div_f
	ldr r2, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	sub r6, r8, r2
	sub r5, sb, r1
	smull r4, r3, r5, r5
	smull r2, r1, r6, r6
	mov r4, r4, lsr #0xc
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mov r1, r5, asr #0x1f
	orr r4, r4, r3, lsl #20
	mov r7, r0
	add r0, r4, r2
	mov fp, r6, asr #0x1f
	str r1, [sp]
	bl FX_Sqrt
	mov r4, r0
	cmp r4, r7
	ble _0200D5D4
	mov r0, r4, asr #0x1f
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r3, [sp, #4]
	mov r1, r0, lsl #0xc
	mov r2, r4
	orr r1, r1, r5, lsr #20
	mov r0, r5, lsl #0xc
	bl _ll_div
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sl, #0x14]
	mov r1, fp, lsl #0xc
	ldr r3, [sp, #4]
	mov r2, r4
	orr r1, r1, r6, lsr #20
	mov r0, r6, lsl #0xc
	bl _ll_div
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sl, #0x18]
	ldr r0, [sl, #0x14]
	cmp r0, #0
	ldreq r0, [sl, #0x18]
	cmpeq r0, #0
	bne _0200D5B8
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl sub_0200D44C
	ldrh r0, [sl, #4]
	add sp, sp, #8
	bic r0, r0, #1
	strh r0, [sl, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0200D490
_0200D5B8:
	str sb, [sl, #0xc]
	str r8, [sl, #0x10]
	ldrh r0, [sl, #4]
	add sp, sp, #8
	orr r0, r0, #1
	strh r0, [sl, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0200D5D4:
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl sub_0200D44C
	ldrh r0, [sl, #4]
	bic r0, r0, #1
	strh r0, [sl, #4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0200D5F8: .word DAT_0208aaf4

	arm_func_start sub_0200D5FC
sub_0200D5FC: ; 0x0200D5FC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	ldr r0, [r7]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrh r1, [r7, #4]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, _0200D6E0 ; =DAT_0208aaf4
	ldrh r2, [r1]
	cmp r2, #0x1e
	addls r1, r4, #1
    movls r1, r1, lsl #0x10
	movls r4, r1, lsr #0x10
	mul r3, r4, r2
	ldr r2, [r0, #0x1c]
	ldr r1, _0200D6E4 ; =0x88888889
	sub ip, r6, r2
	smull r0, r4, r1, r3
	mov r0, ip, asr #0x1f
	mov r1, r0, lsl #0xc
	add r4, r3, r4
	mov r0, r3, lsr #0x1f
	add r4, r0, r4, asr #5
	mov r0, r4, lsl #0x10
	mov r4, r0, lsr #0x10
	mov sb, r4, lsl #0xc
	mov r8, sb, asr #0x1f
	mov r2, sb
	mov r3, r8
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	bl _ll_div
	str r0, [r7, #0x14]
	ldr r0, [r7]
	mov r2, sb
	ldr r0, [r0, #0x20]
	mov r3, r8
	sub ip, r5, r0
	mov r0, ip, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	bl _ll_div
	str r0, [r7, #0x18]
	str r6, [r7, #0xc]
	str r5, [r7, #0x10]
	mov r0, #0
	strh r0, [r7, #6]
	strh r4, [r7, #8]
	ldrh r0, [r7, #4]
	orr r0, r0, #2
	strh r0, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0200D6E0: .word DAT_0208aaf4
_0200D6E4: .word 0x88888889
	arm_func_end sub_0200D5FC

	arm_func_start sub_0200D6E8
sub_0200D6E8: ; 0x0200D6E8
	ldr ip, [r0]
	cmp ip, #0
	bxeq lr
	ldrh ip, [r0, #4]
	cmp ip, #0
	bxne lr
	ldr ip, _0200D744 ; =0x00003FFF
	str r1, [r0, #0x20]
	strh ip, [r0, #0x1e]
	strh r2, [r0, #0x1c]
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0x1c]
	str r2, [r0, #0xc]
	ldr r2, [r0]
	ldr r2, [r2, #0x20]
	str r2, [r0, #0x10]
	strh r1, [r0, #6]
	strh r3, [r0, #8]
	ldrh r1, [r0, #4]
	orr r1, r1, #4
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_0200D744: .word 0x00003FFF
	arm_func_end sub_0200D6E8

	arm_func_start sub_0200D748
sub_0200D748: ; 0x0200D748
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrh r0, [r6, #4]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x24]
	mov r2, r4, lsl #0xc
	sub r3, r5, r0
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	str r0, [r6, #0x20]
	str r5, [r6, #0xc]
	mov r0, #0
	strh r0, [r6, #6]
	strh r4, [r6, #8]
	ldrh r0, [r6, #4]
	orr r0, r0, #8
	strh r0, [r6, #4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0200D748

	arm_func_start sub_0200D7B8
sub_0200D7B8: ; 0x0200D7B8
	ldr r3, [r0]
	cmp r3, #0
	bxeq lr
	ldrh r3, [r0, #4]
	cmp r3, #0
	bxne lr
	strh r1, [r0, #0x1c]
	mov r1, #0
	strh r1, [r0, #0x1e]
	strh r1, [r0, #6]
	strh r2, [r0, #8]
	ldrh r1, [r0, #4]
	orr r1, r1, #0x10
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_0200D7B8

	arm_func_start sub_0200D7F4
sub_0200D7F4: ; 0x0200D7F4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r7, #4]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x24]
	mov r2, r4, lsl #0xc
	sub r3, r6, r0
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	str r0, [r7, #0x20]
	str r6, [r7, #0xc]
	strh r5, [r7, #0x1c]
	mov r0, #0
	strh r0, [r7, #0x1e]
	strh r0, [r7, #6]
	strh r4, [r7, #8]
	ldrh r0, [r7, #4]
	orr r0, r0, #0x20
	strh r0, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0200D7F4

	arm_func_start sub_0200D870
sub_0200D870: ; 0x0200D870
	ldr r3, [r0]
	cmp r3, #0
	bxeq lr
	ldrh r3, [r0, #4]
	cmp r3, #0
	bxne lr
	str r1, [r0, #0x20]
	mov r3, #0
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	str r1, [r0, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	str r1, [r0, #0x10]
	strh r3, [r0, #6]
	strh r2, [r0, #8]
	ldrh r1, [r0, #4]
	orr r1, r1, #0x40
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_0200D870

	arm_func_start sub_0200D8C8
sub_0200D8C8: ; 0x0200D8C8
	ldr r2, [r0]
	cmp r2, #0
	bxeq lr
	ldrh r2, [r0, #4]
	cmp r2, #0
	bxne lr
	str r1, [r0, #0x20]
	mov r3, #0
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0x1c]
	str r2, [r0, #0xc]
	ldr r2, [r0]
	ldr r2, [r2, #0x20]
	str r2, [r0, #0x10]
	strh r3, [r0, #6]
	strh r1, [r0, #8]
	ldrh r1, [r0, #4]
	orr r1, r1, #0x100
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_0200D8C8

	arm_func_start sub_0200D924
sub_0200D924: ; 0x0200D924
	ldr r2, [r0]
	cmp r2, #0
	bxeq lr
	ldrh r2, [r0, #4]
	cmp r2, #0
	bxne lr
	str r1, [r0, #0x20]
	mov r3, #0
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0x1c]
	str r2, [r0, #0xc]
	ldr r2, [r0]
	ldr r2, [r2, #0x20]
	str r2, [r0, #0x10]
	strh r3, [r0, #6]
	strh r1, [r0, #8]
	ldrh r1, [r0, #4]
	orr r1, r1, #0x200
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_0200D924

	arm_func_start sub_0200D980
sub_0200D980: ; 0x0200D980
	ldrh r1, [r0, #4]
	tst r1, #0x100
	movne r1, #1
	strneh r1, [r0, #6]
	bx lr
	arm_func_end sub_0200D980

	arm_func_start sub_0200D994
sub_0200D994: ; 0x0200D994
	ldrh r1, [r0, #4]
	tst r1, #0x200
	movne r1, #1
	strneh r1, [r0, #6]
	bx lr
	arm_func_end sub_0200D994

	arm_func_start sub_0200D9A8
sub_0200D9A8: ; 0x0200D9A8
	ldrh r2, [r0, #4]
	tst r2, #0x100
	strne r1, [r0, #0x20]
	bx lr
	arm_func_end sub_0200D9A8

	arm_func_start sub_0200D9B8
sub_0200D9B8: ; 0x0200D9B8
	ldrh r0, [r0, #4]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0200D9B8

	arm_func_start sub_0200D9CC
sub_0200D9CC: ; 0x0200D9CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r3, [r4]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r4, #4]
	tst r0, #1
	beq _0200DA64
	ldr r1, [r4, #0xc]
	ldr r0, [r3, #0x1c]
	ldr ip, [r4, #0x14]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp ip, #0
	rsblt r2, ip, #0
	movge r2, ip
	cmp r0, r2
	blt _0200DA3C
	ldr r2, [r4, #0x10]
	ldr r0, [r3, #0x20]
	subs r0, r2, r0
	ldr r2, [r4, #0x18]
	rsbmi r0, r0, #0
	cmp r2, #0
	rsblt r3, r2, #0
	movge r3, r2
	cmp r0, r3
	bge _0200DA58
	arm_func_end sub_0200D9CC
_0200DA3C:
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #1
	strh r0, [r4, #4]
	b _0200DA64
_0200DA58:
	mov r0, r4
	mov r1, ip
	bl sub_0200D468
_0200DA64:
	ldrh r0, [r4, #4]
	tst r0, #2
	beq _0200DAC8
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DA9C
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #2
	strh r0, [r4, #4]
_0200DA9C:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _0200DAC8
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	mov r0, r4
	bl sub_0200D468
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_0200DAC8:
	ldrh r0, [r4, #4]
	tst r0, #4
	beq _0200DBA4
	ldrh r2, [r4, #0x1e]
	ldr r0, _0200E080 ; =0x0000FFFF
	ldrh r1, [r4, #0x1c]
	sub r0, r0, r2
	cmp r0, r1
	movlt r0, #0
	blt _0200DB38
	mov r0, r2, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	ldr r0, _0200E084 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #0x20]
	ldr r3, [r4, #0xc]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r2, [r4, #0x10]
	mov r0, r4
	add r1, r3, r1
	bl sub_0200D44C
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r4, #0x1c]
	add r0, r1, r0
_0200DB38:
	strh r0, [r4, #0x1e]
	ldrh r1, [r4, #0x1c]
	ldr r0, _0200E088 ; =0x00003FFF
	ldrh r2, [r4, #0x1e]
	sub r0, r0, r1
	cmp r0, r2
	bge _0200DB90
	add r0, r1, #0xff
	add r0, r0, #0x3f00
	cmp r0, r2
	ble _0200DB90
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DB90
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #4
	strh r0, [r4, #4]
_0200DB90:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	addlo r0, r1, #1
	strloh r0, [r4, #6]
_0200DBA4:
	ldrh r0, [r4, #4]
	tst r0, #8
	beq _0200DC08
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DBD8
	ldr r1, [r4, #0xc]
	mov r0, r4
	bl sub_0200D460
	ldrh r0, [r4, #4]
	bic r0, r0, #8
	strh r0, [r4, #4]
_0200DBD8:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _0200DC08
	ldr r2, [r4, #0x24]
	ldr r1, [r4, #0x20]
	mov r0, r4
	add r1, r2, r1
	bl sub_0200D460
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_0200DC08:
	ldrh r0, [r4, #4]
	tst r0, #0x10
	beq _0200DC8C
	ldrh r2, [r4, #0x1e]
	ldr r0, _0200E080 ; =0x0000FFFF
	ldrh r1, [r4, #0x1c]
	sub r0, r0, r2
	cmp r0, r1
	bge _0200DC60
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DC54
	ldr r0, [r4]
	mov r1, #0
	strh r1, [r0, #0x24]
	ldrh r0, [r4, #4]
	bic r0, r0, #0x10
	strh r0, [r4, #4]
_0200DC54:
	mov r0, #0
	strh r0, [r4, #0x1e]
	b _0200DC78
_0200DC60:
	ldr r0, [r4]
	strh r2, [r0, #0x24]
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r4, #0x1c]
	add r0, r1, r0
	strh r0, [r4, #0x1e]
_0200DC78:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	addlo r0, r1, #1
	strloh r0, [r4, #6]
_0200DC8C:
	ldrh r0, [r4, #4]
	tst r0, #0x20
	beq _0200DD38
	ldrh r2, [r4, #0x1e]
	ldr r0, _0200E080 ; =0x0000FFFF
	ldrh r1, [r4, #0x1c]
	sub r0, r0, r2
	cmp r0, r1
	bge _0200DCF0
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DCE4
	ldr r1, [r4, #0xc]
	mov r0, r4
	bl sub_0200D460
	ldr r0, [r4]
	mov r1, #0
	strh r1, [r0, #0x24]
	ldrh r0, [r4, #4]
	bic r0, r0, #0x20
	strh r0, [r4, #4]
_0200DCE4:
	mov r0, #0
	strh r0, [r4, #0x1e]
	b _0200DD08
_0200DCF0:
	ldr r0, [r4]
	strh r2, [r0, #0x24]
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r4, #0x1c]
	add r0, r1, r0
	strh r0, [r4, #0x1e]
_0200DD08:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _0200DD38
	ldr r2, [r4, #0x24]
	ldr r1, [r4, #0x20]
	mov r0, r4
	add r1, r2, r1
	bl sub_0200D460
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_0200DD38:
	ldrh r0, [r4, #4]
	tst r0, #0x40
	beq _0200DE18
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DD70
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #0x40
	strh r0, [r4, #4]
_0200DD70:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _0200DDD4
	ldrh r2, [r4, #0x1e]
	ldr r1, _0200E08C ; =DAT_020843f8
	ldr r0, _0200E090 ; =DAT_02084410
	ldr ip, [r4, #0x20]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0, r2, lsl #2]
	smull r2, r3, ip, r1
	smull r1, r0, ip, r0
	mov ip, r2, lsr #0xc
	mov r2, r1, lsr #0xc
	ldr r1, [r4, #0xc]
	orr ip, ip, r3, lsl #20
	ldr r3, [r4, #0x10]
	orr r2, r2, r0, lsl #20
	mov r0, r4
	add r1, r1, ip
	add r2, r3, r2
	bl sub_0200D44C
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_0200DDD4:
	ldrh r0, [r4, #0x1c]
	cmp r0, #3
	addlo r0, r0, #1
	strloh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1c]
	cmp r0, #3
	bne _0200DE18
	ldrh r0, [r4, #0x1e]
	cmp r0, #6
	addlo r0, r0, #1
	strloh r0, [r4, #0x1e]
	ldrh r0, [r4, #0x1e]
	cmp r0, #6
	moveq r0, #0
	streqh r0, [r4, #0x1e]
	mov r0, #0
	strh r0, [r4, #0x1c]
_0200DE18:
	ldrh r0, [r4, #4]
	tst r0, #0x80
	beq _0200DEE0
	ldrh r2, [r4, #0x1e]
	ldr r0, _0200E080 ; =0x0000FFFF
	ldrh r1, [r4, #0x1c]
	sub r0, r0, r2
	cmp r0, r1
	movlt r0, #0
	blt _0200DE88
	mov r0, r2, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	ldr r0, _0200E084 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #0x20]
	ldr r3, [r4, #0xc]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r2, [r4, #0x10]
	mov r0, r4
	add r1, r3, r1
	bl sub_0200D44C
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r4, #0x1c]
	add r0, r1, r0
_0200DE88:
	strh r0, [r4, #0x1e]
	ldrh r1, [r4, #0x1c]
	ldr r0, _0200E088 ; =0x00003FFF
	ldrh r2, [r4, #0x1e]
	sub r0, r0, r1
	cmp r0, r2
	bge _0200DEE0
	add r0, r1, #0xff
	add r0, r0, #0x3f00
	cmp r0, r2
	ble _0200DEE0
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DEE0
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #0x80
	strh r0, [r4, #4]
_0200DEE0:
	ldrh r0, [r4, #4]
	tst r0, #0x100
	beq _0200DFB4
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DF18
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #0x100
	strh r0, [r4, #4]
_0200DF18:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _0200DF70
	ldrh r2, [r4, #0x1e]
	ldr r1, _0200E08C ; =DAT_020843f8
	ldr r0, _0200E090 ; =DAT_02084410
	ldr ip, [r4, #0x20]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0, r2, lsl #2]
	smull r2, r3, ip, r1
	smull r1, r0, ip, r0
	mov ip, r2, lsr #0xc
	mov r2, r1, lsr #0xc
	ldr r1, [r4, #0xc]
	orr ip, ip, r3, lsl #20
	ldr r3, [r4, #0x10]
	orr r2, r2, r0, lsl #20
	mov r0, r4
	add r1, r1, ip
	add r2, r3, r2
	bl sub_0200D44C
_0200DF70:
	ldrh r0, [r4, #0x1c]
	cmp r0, #3
	addlo r0, r0, #1
	strloh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1c]
	cmp r0, #3
	bne _0200DFB4
	ldrh r0, [r4, #0x1e]
	cmp r0, #6
	addlo r0, r0, #1
	strloh r0, [r4, #0x1e]
	ldrh r0, [r4, #0x1e]
	cmp r0, #6
	moveq r0, #0
	streqh r0, [r4, #0x1e]
	mov r0, #0
	strh r0, [r4, #0x1c]
_0200DFB4:
	ldrh r0, [r4, #4]
	tst r0, #0x200
	beq _0200E068
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0200DFEC
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, r4
	bl sub_0200D44C
	ldrh r0, [r4, #4]
	bic r0, r0, #0x200
	strh r0, [r4, #4]
_0200DFEC:
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _0200E030
	ldrh r0, [r4, #0x1e]
	mov r1, #0x1000
	ldr ip, [r4, #0xc]
	cmp r0, #0
	ldr r0, [r4, #0x20]
	subne r1, r1, #0x2000
	smull r2, r1, r0, r1
	mov r3, r2, lsr #0xc
	orr r3, r3, r1, lsl #20
	ldr r2, [r4, #0x10]
	mov r0, r4
	add r1, ip, r3
	bl sub_0200D44C
_0200E030:
	ldrh r0, [r4, #0x1c]
	cmp r0, #3
	addlo r0, r0, #1
	strloh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1c]
	cmp r0, #3
	bne _0200E068
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	strh r0, [r4, #0x1e]
	mov r0, #0
	strh r0, [r4, #0x1c]
_0200E068:
	ldr r1, [r4, #0x24]
	ldr r0, _0200E094 ; =0x0400046C
	str r1, [r0]
	str r1, [r0]
	str r1, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200E080: .word 0x0000FFFF
_0200E084: .word FX_SinCosTable_
_0200E088: .word 0x00003FFF
_0200E08C: .word DAT_020843f8
_0200E090: .word DAT_02084410
_0200E094: .word 0x0400046C

	arm_func_start sub_0200E098
sub_0200E098: ; 0x0200E098
	ldrh r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0200E098

	arm_func_start sub_0200E0AC
sub_0200E0AC: ; 0x0200E0AC
	str r1, [r0]
	bx lr
	arm_func_end sub_0200E0AC

	arm_func_start sub_0200E0B4
sub_0200E0B4: ; 0x0200E0B4
	mov r3, #0
	strh r3, [r0]
	strb r1, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	str r2, [r0, #8]
	str r3, [r0, #0xc]
	str r3, [r0, #0x10]
	str r3, [r0, #0x14]
	str r3, [r0, #0x18]
	bx lr
	arm_func_end sub_0200E0B4

	arm_func_start sub_0200E0E0
sub_0200E0E0: ; 0x0200E0E0
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl sub_0200E310
	cmp r0, #0
	bne _0200E10C
	mov r0, r4
	mov r1, r6
	bl sub_0200E1DC
	str r0, [r4, #8]
	arm_func_end sub_0200E0E0
_0200E10C:
	strh r6, [r4]
	strh r5, [r4, #6]
	mov r0, #0
	strh r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r0, r4
	mov r1, r6
	str r2, [r4, #0xc]
	bl sub_0200E1A4
	ldr r1, [r4, #0xc]
	cmp r5, #0
	rsb r1, r1, #0
	add r0, r1, r0
	str r0, [r4, #0x10]
	beq _0200E174
	mov r2, r5, lsl #0xc
	mov r1, #0
	str r1, [r4, #0x14]
	mov r3, r2, asr #0x1f
	mov r0, #0x1000000
	bl _ll_div
	str r0, [r4, #0x18]
	ldrh r0, [r4]
	orr r0, r0, #0x10
	strh r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}
_0200E174:
	mov r0, r4
	bl sub_0200E324
	mov r1, r0
	mov r0, r4
	bl sub_0200E1A4
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	ldrh r0, [r4]
	bic r0, r0, #0x10
	strh r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200E1A4
sub_0200E1A4: ; 0x0200E1A4
	cmp r1, #4
	mov r0, #0
	addls pc, pc, r1, lsl #2
	bx lr
_0200E1B4: ; jump table
	bx lr ; case 0
	b _0200E1C8 ; case 1
	b _0200E1CC ; case 2
	b _0200E1C8 ; case 3
	b _0200E1D4 ; case 4
	arm_func_end sub_0200E1A4
_0200E1C8:
	bx lr
_0200E1CC:
	mov r0, #0x10
	bx lr
_0200E1D4:
	sub r0, r0, #0x10
	bx lr

	arm_func_start sub_0200E1DC
sub_0200E1DC: ; 0x0200E1DC
	cmp r1, #4
	mov r0, #0
	addls pc, pc, r1, lsl #2
	bx lr
_0200E1EC: ; jump table
	bx lr ; case 0
	b _0200E200 ; case 1
	bx lr ; case 2
	b _0200E208 ; case 3
	bx lr ; case 4
	arm_func_end sub_0200E1DC
_0200E200:
	mov r0, #0x10
	bx lr
_0200E208:
	sub r0, r0, #0x10
	bx lr

	arm_func_start sub_0200E210
sub_0200E210: ; 0x0200E210
	stmdb sp!, {r4, lr}
	ldr r1, _0200E2CC ; =DAT_0208aaf8
	mov r4, r0
	ldrb r1, [r1]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200E310
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #4]
	cmp r0, r1
	bne _0200E274
	mov r0, r4
	bl sub_0200E324
	mov r1, r0
	mov r0, r4
	bl sub_0200E1A4
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	ldrh r0, [r4]
	bic r0, r0, #0x10
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200E210
_0200E274:
	ldmhsia sp!, {r4, pc}
	ldr r0, _0200E2D0 ; =MAIN_BSS_020AF338
	ldr r1, [r4, #0x18]
	ldr r0, [r0]
	ldr r3, [r4, #0x14]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r2, r3, r1
	str r2, [r4, #0x14]
	ldr r0, [r4, #0x10]
	mov r0, r0, lsl #0xc
	smull r1, r0, r2, r0
	mov r1, r1, lsr #0xc
	ldr r2, [r4, #0xc]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1, asr #12
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200E2CC: .word DAT_0208aaf8
_0200E2D0: .word MAIN_BSS_020AF338

	arm_func_start sub_0200E2D4
sub_0200E2D4: ; 0x0200E2D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200E210
	ldrb r0, [r4, #2]
	ldr r1, [r4, #8]
	tst r0, #1
	beq _0200E2FC
	ldr r0, _0200E308 ; =0x0400006C
	bl GXx_SetMasterBrightness_
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200E2D4
_0200E2FC:
	ldr r0, _0200E30C ; =0x0400106C
	bl GXx_SetMasterBrightness_
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200E308: .word 0x0400006C
_0200E30C: .word 0x0400106C

	arm_func_start sub_0200E310
sub_0200E310: ; 0x0200E310
	ldrh r0, [r0]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0200E310

	arm_func_start sub_0200E324
sub_0200E324: ; 0x0200E324
	ldrh r0, [r0]
	and r0, r0, #7
	bx lr
	arm_func_end sub_0200E324

	arm_func_start sub_0200E330
sub_0200E330: ; 0x0200E330
	mov r2, #0
	strh r2, [r0]
	strb r1, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #8]
	tst r1, #1
	ldrne r1, _0200E370 ; =0x04000040
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	ldreq r1, _0200E374 ; =0x04001040
	strb r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
_0200E370: .word 0x04000040
_0200E374: .word 0x04001040
	arm_func_end sub_0200E330

	arm_func_start sub_0200E378
sub_0200E378: ; 0x0200E378
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r0, #0x140
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	cmp r3, #3
	str r2, [r4, #0x10]
	mov r0, #0
	movls r3, #3
	strh r0, [r4, #4]
	strh r3, [r4, #6]
	str r0, [r4, #0x14]
	ldr r0, [r4, #8]
	mov r2, r3, lsl #0xc
	mov r3, r0, lsl #0xc
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	ldrh r1, [sp, #0x10]
	str r0, [r4, #0x18]
	and r0, r1, #3
	strh r0, [r4]
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	moveq r6, #1
	mov r0, r4
	movne r6, #0
	bl sub_0200E904
	mov r5, r0
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl sub_0200E614
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl sub_0200E6F8
	ldr r1, _0200E448 ; =0x04000048
	ldrh r0, [r1]
	bic r0, r0, #0x3f
	orr r0, r0, #0x1f
	strh r0, [r1]
	ldrh r0, [r4]
	bic r0, r0, #0x20
	strh r0, [r4]
	ldrh r0, [r4]
	orr r0, r0, #0x18
	strh r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0200E448: .word 0x04000048
	arm_func_end sub_0200E378

	arm_func_start sub_0200E44C
sub_0200E44C: ; 0x0200E44C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0200E4A4 ; =DAT_0208aaf8
	mov r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r5]
	tst r0, #8
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	moveq r4, #1
	movne r4, #0
	mov r0, r5
	bl sub_0200E904
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl sub_0200E6F8
	mov r0, r5
	bl sub_0200E834
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0200E4A4: .word DAT_0208aaf8
	arm_func_end sub_0200E44C

	arm_func_start sub_0200E4A8
sub_0200E4A8: ; 0x0200E4A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4]
	tst r0, #8
	beq _0200E524
	tst r0, #0x40
	beq _0200E4E0
	ldrb r0, [r4, #0x1c]
	eor r0, r0, #1
	and r0, r0, #1
	strb r0, [r4, #0x1c]
	ldrh r0, [r4]
	bic r0, r0, #0x40
	strh r0, [r4]
	arm_func_end sub_0200E4A8
_0200E4E0:
	ldrh r0, [r4]
	tst r0, #0x10
	beq _0200E504
	mov r0, r4
	mov r1, #1
	bl sub_0200E5C8
	ldrh r0, [r4]
	bic r0, r0, #0x10
	strh r0, [r4]
_0200E504:
	ldrh r0, [r4]
	tst r0, #0x20
	beq _0200E524
	bic r0, r0, #0x20
	strh r0, [r4]
	ldrh r0, [r4]
	bic r0, r0, #8
	strh r0, [r4]
_0200E524:
	ldrh r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r2, [r4, #0x1c]
	ldr r0, _0200E5A0 ; =0x0000041C
	add r3, r4, #0x28
	mla r0, r2, r0, r3
	ldrb r1, [r4, #2]
	ldrb r2, [r0]
	ldrb r0, [r0, #2]
	tst r1, #1
	beq _0200E580
	mov r2, r2, lsl #8
	and r2, r2, #0xff00
	ldr r1, _0200E5A4 ; =0x04000040
	orr r0, r2, r0
	strh r0, [r1]
	mov r0, #0xbf
	strh r0, [r1, #4]
	ldmia sp!, {r4, pc}
_0200E580:
	mov r2, r2, lsl #8
	and r2, r2, #0xff00
	ldr r1, _0200E5A8 ; =0x04001040
	orr r0, r2, r0
	strh r0, [r1]
	mov r0, #0xbf
	strh r0, [r1, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200E5A0: .word 0x0000041C
_0200E5A4: .word 0x04000040
_0200E5A8: .word 0x04001040

	arm_func_start sub_0200E5AC
sub_0200E5AC: ; 0x0200E5AC
	cmp r2, r1
	andgt r0, r2, #0xff
	bxgt lr
	cmp r3, r1
	andlt r0, r3, #0xff
	andge r0, r1, #0xff
	bx lr
	arm_func_end sub_0200E5AC

	arm_func_start sub_0200E5C8
sub_0200E5C8: ; 0x0200E5C8
	ldrb r2, [r0, #2]
	tst r2, #1
	beq _0200E5EC
	mov r3, #0x4000000
	ldr r2, [r3]
	bic r2, r2, #0xe000
	orr r1, r2, r1, lsl #13
	str r1, [r3]
	b _0200E600
	arm_func_end sub_0200E5C8
_0200E5EC:
	ldr r3, _0200E610 ; =0x04001000
	ldr r2, [r3]
	bic r2, r2, #0xe000
	orr r1, r2, r1, lsl #13
	str r1, [r3]
_0200E600:
	ldrb r1, [r0, #2]
	orr r1, r1, #4
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
_0200E610: .word 0x04001000

	arm_func_start sub_0200E614
sub_0200E614: ; 0x0200E614
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r3, _0200E6F4 ; =0x0000041C
	mov sl, r0
	mov r0, r3, lsr #1
	mla r7, r1, r3, sl
	mov r6, #0
	mla r8, r1, r0, sl
	mov sb, r2
	mov r5, r6
	mov r4, #0xff
	mov fp, r6
	arm_func_end sub_0200E614
_0200E640:
	ldr r1, [sl, #0xc]
	mov r0, sl
	sub r1, r1, #1
	mov r2, r5
	mov r3, r4
	bl sub_0200E5AC
	add r1, r7, r6, lsl #2
	strb r0, [r1, #0x28]
	ldr r1, [sl, #0xc]
	mov r0, sl
	mov r2, fp
	add r1, r1, #1
	mov r3, #0xff
	bl sub_0200E5AC
	add r1, r7, r6, lsl #2
	strb r0, [r1, #0x2a]
	ldr r1, [sl, #0x10]
	mov r0, sl
	mov r2, #0
	sub r1, r1, sb
	mov r3, #0xbf
	bl sub_0200E5AC
	add r1, r7, r6, lsl #2
	strb r0, [r1, #0x29]
	ldr r1, [sl, #0x10]
	mov r0, sl
	add r1, r1, sb
	mov r2, #0
	add r1, r1, #2
	mov r3, #0xbf
	bl sub_0200E5AC
	add r1, r7, r6, lsl #2
	strb r0, [r1, #0x2b]
	ldrb r2, [r1, #0x28]
	add r0, r8, r6, lsl #1
	add r6, r6, #1
	mov r2, r2, lsl #8
	ldrb r1, [r1, #0x2a]
	and r2, r2, #0xff00
	add r0, r0, #0x800
	orr r1, r2, r1
	strh r1, [r0, #0x60]
	cmp r6, #0xc0
	blt _0200E640
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0200E6F4: .word 0x0000041C

	arm_func_start sub_0200E6F8
sub_0200E6F8: ; 0x0200E6F8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r2
	mov r2, sb, lsl #0xc
	smull r4, r3, r2, r2
	mov r5, r4, lsr #0xc
	ldr r2, _0200E830 ; =0x0000041C
	mov sl, r0
	mov r0, r2, lsr #1
	mla r6, r1, r2, sl
	mla r7, r1, r0, sl
	orr r5, r5, r3, lsl #20
	mov r8, #0
	mov fp, #0x80
	arm_func_end sub_0200E6F8
_0200E72C:
	ldr r0, [sl, #0x10]
	mov r4, #0
	cmp r8, r0
	bge _0200E768
	sub r0, r0, r8
	cmp r0, sb
	bge _0200E79C
	mov r2, r0, lsl #0xc
	smull r1, r0, r2, r2
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r0, r5, r1
	bl FX_Sqrt
	mov r4, r0, asr #0xc
	b _0200E79C
_0200E768:
	ble _0200E798
	sub r0, r8, r0
	cmp r0, sb
	bge _0200E79C
	mov r2, r0, lsl #0xc
	smull r1, r0, r2, r2
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r0, r5, r1
	bl FX_Sqrt
	mov r4, r0, asr #0xc
	b _0200E79C
_0200E798:
	mov r4, sb
_0200E79C:
	cmp r4, #0
	addle r0, r6, r8, lsl #2
	strleb fp, [r0, #0x28]
	strleb fp, [r0, #0x2a]
	ble _0200E7F0
	ldr r1, [sl, #0xc]
	mov r0, sl
	sub r1, r1, r4
	mov r2, #0
	mov r3, #0xff
	bl sub_0200E5AC
	add r1, r6, r8, lsl #2
	strb r0, [r1, #0x28]
	ldr r1, [sl, #0xc]
	mov r0, sl
	mov r2, #0
	add r1, r1, r4
	mov r3, #0xff
	bl sub_0200E5AC
	add r1, r6, r8, lsl #2
	strb r0, [r1, #0x2a]
_0200E7F0:
	add r0, r6, r8, lsl #2
	ldrb r2, [r0, #0x28]
	ldrb r1, [r0, #0x2a]
	add r0, r7, r8, lsl #1
	mov r2, r2, lsl #8
	and r2, r2, #0xff00
	orr r1, r2, r1
	add r0, r0, #0x800
	strh r1, [r0, #0x60]
	add r8, r8, #1
	cmp r8, #0xc0
	blt _0200E72C
	ldrh r0, [sl]
	orr r0, r0, #0x40
	strh r0, [sl]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0200E830: .word 0x0000041C

	arm_func_start sub_0200E834
sub_0200E834: ; 0x0200E834
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r2, [r4, #6]
	ldrh r1, [r4, #4]
	cmp r1, r2
	bne _0200E8A0
	ldrh r1, [r4]
	tst r1, #1
	beq _0200E860
	mov r1, #0
	bl sub_0200E5C8
	arm_func_end sub_0200E834
_0200E860:
	ldrh r0, [r4]
	tst r0, #2
	beq _0200E884
	mov r0, #0
	strb r0, [r4, #0x24]
	strb r0, [r4, #0x25]
	mov r0, #1
	strb r0, [r4, #0x26]
	strb r0, [r4, #0x27]
_0200E884:
	ldrh r0, [r4]
	orr r0, r0, #0x20
	strh r0, [r4]
	ldrb r0, [r4, #2]
	bic r0, r0, #4
	strb r0, [r4, #2]
	ldmia sp!, {r4, pc}
_0200E8A0:
	ldmhsia sp!, {r4, pc}
	ldr r1, [r4, #0x18]
	mov r0, #0x3c000
	umull ip, r3, r1, r0
	mov r2, r1, asr #0x1f
	ldr r1, _0200E900 ; =DAT_0208aafa
	mla r3, r2, r0, r3
	mov ip, ip, lsr #0xc
	orr ip, ip, r3, lsl #20
	ldrh r0, [r1]
	mov r1, ip, asr #0x1f
	mov r1, r1, lsl #0xc
	mov r2, r0, lsl #0xc
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	ldr r1, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200E900: .word DAT_0208aafa

	arm_func_start sub_0200E904
sub_0200E904: ; 0x0200E904
	ldrh r1, [r0]
	ldr r0, [r0, #0x14]
	mov r0, r0, asr #0xc
	tst r1, #1
	rsbeq r0, r0, #0x140
	bx lr
	arm_func_end sub_0200E904

	arm_func_start sub_0200E91C
sub_0200E91C: ; 0x0200E91C
	ldrh r3, [r0]
	mov r1, #0
	mov r2, r1
	tst r3, #8
	movne ip, #1
	moveq ip, r1
	cmp ip, #0
	bne _0200E944
	tst r3, #2
	movne r2, #1
	arm_func_end sub_0200E91C
_0200E944:
	cmp r2, #0
	beq _0200E958
	ldrb r0, [r0, #2]
	tst r0, #4
	moveq r1, #1
_0200E958:
	mov r0, r1
	bx lr

	arm_func_start sub_0200E960
sub_0200E960: ; 0x0200E960
	stmdb sp!, {r3, lr}
	str r1, [r0]
	mov r1, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	str r1, [r0, #0x14]
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	strb r1, [r0, #0x30]
	mov r2, r1
	mov r3, r1
	str r1, [sp]
	bl sub_0200EBF4
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200E960

	arm_func_start sub_0200E9A4
sub_0200E9A4: ; 0x0200E9A4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r5, [r0, #4]
	ldr r4, [r0, #8]
	ldr lr, [r5, #4]
	cmp r4, #0
	mov r4, #0
	ble _0200EA78
	ldr r5, _0200EA80 ; =0x000001FF
	add r6, r5, #0x200
	arm_func_end sub_0200E9A4
_0200E9C8:
	ldrh sl, [lr]
	ldrsh r8, [r0, #0xe]
	ldrh r7, [r0, #0x24]
	and sb, sl, #0xff00
	add r8, sl, r8
	and r8, r8, #0xff
	mov r8, r8, lsl #0x10
	orr r8, sb, r8, lsr #16
	ldrb sb, [r0, #0x28]
	orr r8, r8, r7, lsl #8
	ldrb r7, [r0, #0x30]
	orr fp, r8, sb, lsl #10
	ldrh ip, [lr, #2]
	ldrsh r8, [r0, #0xc]
	ldrh sl, [lr, #4]
	ldrh sb, [r0, #0x1a]
	add ip, ip, r8
	ldrh r8, [r0, #0x18]
	orr r7, fp, r7, lsl #12
	and ip, ip, r5
	strh r7, [r1]
	ldrh r7, [lr, #2]
	add r8, r8, sl, lsl r3
	add sl, sb, sl, asr #12
	and sb, r6, r8, asr r2
	ldrh r8, [r0, #0x26]
	mov ip, ip, lsl #0x10
	and r7, r7, #0xfe00
	orr r7, r7, ip, lsr #16
	orr r7, r7, r8, lsl #9
	strh r7, [r1, #2]
	ldrh ip, [r0, #0x1c]
	mov r7, sl, lsl #0x10
	mov r8, sb, lsl #0x10
	mov sb, ip, lsl #0xa
	orr r7, sb, r7, lsr #4
	orr r7, r7, r8, lsr #16
	strh r7, [r1, #4]
	ldr r7, [r0, #8]
	add r4, r4, #1
	cmp r4, r7
	add lr, lr, #6
	add r1, r1, #8
	blt _0200E9C8
_0200EA78:
	mov r0, r1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0200EA80: .word 0x000001FF

	arm_func_start sub_0200EA84
sub_0200EA84: ; 0x0200EA84
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	str r1, [r4, #4]
	mov r1, r2
	mov r2, r3
	bl sub_0200EB28
	mov r1, #0
	mov r2, #1
	ldr r0, [sp, #0x14]
	str r2, [r4, #0x14]
	ldr r2, [sp, #0x10]
	strh r0, [r4, #0x18]
	ldr r0, [sp, #0x18]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r1, [r4, #0x24]
	strh r1, [r4, #0x26]
	strb r1, [r4, #0x30]
	ldr r2, [r4, #4]
	mov r0, r4
	ldrh ip, [r2]
	mov r2, r1
	mov r3, r1
	str ip, [r4, #8]
	str r1, [sp]
	bl sub_0200EBF4
	ldr r0, [r4, #8]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0200EA84

	arm_func_start sub_0200EAFC
sub_0200EAFC: ; 0x0200EAFC
	ldr r2, [r0, #4]
	cmp r2, r1
	ldreq r0, [r0, #8]
	bxeq lr
	str r1, [r0, #4]
	ldrh r1, [r1]
	str r1, [r0, #8]
	mov r0, r1
	bx lr
	arm_func_end sub_0200EAFC

	arm_func_start sub_0200EB20
sub_0200EB20: ; 0x0200EB20
	strh r1, [r0, #0x1a]
	bx lr
	arm_func_end sub_0200EB20

	arm_func_start sub_0200EB28
sub_0200EB28: ; 0x0200EB28
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	bx lr
	arm_func_end sub_0200EB28

	arm_func_start sub_0200EB34
sub_0200EB34: ; 0x0200EB34
	cmp r1, #0x20
	bge _0200EB54
	cmp r2, #0
	movne r2, #3
	moveq r2, #1
	strh r2, [r0, #0x24]
	strh r1, [r0, #0x26]
	bx lr
	arm_func_end sub_0200EB34
_0200EB54:
	mov r1, #0
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	bx lr

	arm_func_start sub_0200EB64
sub_0200EB64: ; 0x0200EB64
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x30]
	bx lr
	arm_func_end sub_0200EB64

	arm_func_start sub_0200EB78
sub_0200EB78: ; 0x0200EB78
	ldr ip, _0200EB80 ; =sub_0200E9A4
	bx ip
	.align 2, 0
_0200EB80: .word sub_0200E9A4
	arm_func_end sub_0200EB78

	arm_func_start sub_0200EB84
sub_0200EB84: ; 0x0200EB84
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_0201001C
	ldr r0, [r0, #0x20]
	ldrb r4, [r0, #4]
	cmp r4, #0
	beq _0200EBB4
	mov r0, r5
	bl sub_0200EC0C
	cmp r0, #0
	movne r0, r4
	ldmneia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200EB84
_0200EBB4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0200EBBC
sub_0200EBBC: ; 0x0200EBBC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_0201001C
	ldr r0, [r0, #0x20]
	ldrb r4, [r0, #5]
	cmp r4, #0
	beq _0200EBEC
	mov r0, r5
	bl sub_0200EC0C
	cmp r0, #0
	movne r0, r4
	ldmneia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200EBBC
_0200EBEC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0200EBF4
sub_0200EBF4: ; 0x0200EBF4
	strh r1, [r0, #0x32]
	strh r2, [r0, #0x34]
	ldrsh r1, [sp]
	strh r3, [r0, #0x36]
	strh r1, [r0, #0x38]
	bx lr
	arm_func_end sub_0200EBF4

	arm_func_start sub_0200EC0C
sub_0200EC0C: ; 0x0200EC0C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrsh r0, [r4, #0x32]
	cmp r0, #0
	ldrgtsh r0, [r4, #0x34]
	cmpgt r0, #0
	movle r0, #0
	ldmleia sp!, {r3, r4, r5, pc}
	bl sub_0201001C
	ldr r5, [r0, #0x20]
	ldrsh r0, [r4, #0x32]
	ldrsh lr, [r4, #0xc]
	ldrsh r2, [r4, #0x36]
	ldrsh r1, [r4, #0x34]
	ldrsh ip, [r4, #0xe]
	ldrsh r3, [r4, #0x38]
	add lr, lr, r2
	add r2, r0, r0, lsr #31
	add r4, ip, r3
	subs ip, lr, r2, asr #1
	add r3, r1, r1, lsr #31
	sub r4, r4, r3, asr #1
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	movmi ip, #0
	bmi _0200EC7C
	cmp ip, #0x100
	movgt ip, #0x100
	arm_func_end sub_0200EC0C
_0200EC7C:
	cmp r4, #0
	movlt r4, #0
	blt _0200EC90
	cmp r4, #0xc0
	movgt r4, #0xc0
_0200EC90:
	cmp r2, ip
	blt _0200ECA4
	add r0, ip, r0
	cmp r2, r0
	ble _0200ECAC
_0200ECA4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0200ECAC:
	cmp r3, r4
	blt _0200ECC0
	add r0, r4, r1
	cmp r3, r0
	ble _0200ECC8
_0200ECC0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0200ECC8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0200ECD0
sub_0200ECD0: ; 0x0200ECD0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	str r3, [r4, #0x2c]
	str r2, [r4]
	str r1, [r4, #4]
	mov r1, #0
	ldr r0, [sp, #0x10]
	str r1, [r4, #0x30]
	str r0, [r4, #0x10]
	mov r0, r0, lsl #1
	bl _Znam
	str r0, [r4, #8]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x10]
	mov r1, #0x3c
	mov r2, #8
	bl __cxa_vec_new
	str r0, [r4, #0xc]
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0200ECD0

	arm_func_start sub_0200ED2C
sub_0200ED2C: ; 0x0200ED2C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0200ED4C
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #8]
	arm_func_end sub_0200ED2C
_0200ED4C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0200ED70
	ldr r3, _0200EE0C ; =0x0200EE10
	mov r1, #0x3c
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0xc]
_0200ED70:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0200ED94
	beq _0200ED8C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200ED8C:
	mov r0, #0
	str r0, [r4, #0x34]
_0200ED94:
	ldr r5, [r4, #0x38]
	cmp r5, #0
	beq _0200EDBC
	beq _0200EDB4
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_0200EDB4:
	mov r0, #0
	str r0, [r4, #0x38]
_0200EDBC:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0200EDE0
	beq _0200EDD8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200EDD8:
	mov r0, #0
	str r0, [r4, #0x3c]
_0200EDE0:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0200EE04
	beq _0200EDFC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200EDFC:
	mov r0, #0
	str r0, [r4, #0x40]
_0200EE04:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0200EE0C: .word sub_0200EE10

    arm_func_start sub_0200EE10
sub_0200EE10: ; 0x0200EE10
	bx lr
    arm_func_end sub_0200EE10

	arm_func_start sub_0200EE14
sub_0200EE14: ; 0x0200EE14
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x250
	mov r4, r0
	ldr r7, [sp, #0x268]
	str r3, [r4, #0x20]
	str r7, [r4, #0x1c]
	ldr r0, [r4, #0x2c]
	mov r8, r3, lsl #5
	cmp r0, #0
	movne r0, r7, lsl #5
	mov r6, r1
	mov r5, r2
	addne r1, r8, #0x6600000
	addne r0, r0, #0x600
	bne _0200EE5C
	mov r0, r7, lsl #5
	add r1, r8, #0x6400000
	add r0, r0, #0x200
	arm_func_end sub_0200EE14
_0200EE5C:
	str r1, [r4, #0x14]
	add r0, r0, #0x5000000
	str r0, [r4, #0x18]
	ldr r1, _0200F150 ; =s_COM_0208aafc
	add r0, sp, #0x10
	bl OS_SPrintf
	ldr r1, _0200F154 ; =s_s_s_LZ_bin_0208ab00
	add r0, sp, #0x70
	mov r2, r6
	mov r3, r5
	bl OS_SPrintf
	ldr r1, _0200F158 ; =s_s_s_NCGR_0208ab10
	add r0, sp, #0xd0
	add r2, sp, #0x10
	mov r3, r5
	bl OS_SPrintf
	ldr r1, _0200F15C ; =s_s_s_NCLR_0208ab1c
	add r0, sp, #0x130
	add r2, sp, #0x10
	mov r3, r5
	bl OS_SPrintf
	ldr r1, _0200F160 ; =s_s_s_NCER_0208ab28
	add r0, sp, #0x190
	add r2, sp, #0x10
	mov r3, r5
	bl OS_SPrintf
	ldr r1, _0200F164 ; =s_s_s_cac_0208ab34
	mov r3, r5
	add r0, sp, #0x1f0
	add r2, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x6c
	bl _Znwm
	movs r7, r0
	beq _0200EF10
	mov r3, #1
	str r3, [sp]
	ldr r1, [r4]
	mov r5, #0
	stmib sp, {r1, r5}
	add r1, sp, #0x10
	add r2, sp, #0x70
	str r5, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r7, r0
_0200EF10:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0200EF34
	mov r3, #0
	add r1, sp, #0xd0
	mov r2, #1
	str r3, [sp]
	bl sub_020032CC
_0200EF34:
	str r0, [r4, #0x3c]
	ldr r1, [r0, #0xb8]
	ldr r0, [r4, #0x2c]
	ldr r5, [r1, #0x10]
	cmp r0, #1
	mov r6, #0
	bne _0200EF78
	bl GX_GetBankForSubOBJ
	cmp r0, #0
	beq _0200F014
	cmp r0, #8
	beq _0200EF70
	cmp r0, #0x100
	moveq r6, #0x4000
	b _0200F014
_0200EF70:
	mov r6, #0x20000
	b _0200F014
_0200EF78:
	bl GX_GetBankForOBJ
	cmp r0, #0x30
	bgt _0200EFBC
	bge _0200F000
	cmp r0, #0x10
	bgt _0200EFB0
	bge _0200EFF8
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0200F014
_0200EFA0: ; jump table
	b _0200F014 ; case 0
	b _0200F008 ; case 1
	b _0200F008 ; case 2
	b _0200F010 ; case 3
_0200EFB0:
	cmp r0, #0x20
	beq _0200EFF0
	b _0200F014
_0200EFBC:
	cmp r0, #0x50
	bgt _0200EFD4
	bge _0200F000
	cmp r0, #0x40
	beq _0200EFF0
	b _0200F014
_0200EFD4:
	cmp r0, #0x60
	bgt _0200EFE4
	moveq r6, #0x8000
	b _0200F014
_0200EFE4:
	cmp r0, #0x70
	moveq r6, #0x18000
	b _0200F014
_0200EFF0:
	mov r6, #0x4000
	b _0200F014
_0200EFF8:
	mov r6, #0x10000
	b _0200F014
_0200F000:
	mov r6, #0x14000
	b _0200F014
_0200F008:
	mov r6, #0x20000
	b _0200F014
_0200F010:
	mov r6, #0x40000
_0200F014:
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _0200F030
	add r0, r5, r8
	cmp r0, r6
	ble _0200F030
	bl OS_Terminate
_0200F030:
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x14]
	ldr r0, [r0, #0xb8]
	mov r2, r5
	ldr r0, [r0, #0x14]
	bl MIi_CpuCopyFast
	mov r0, r5, asr #4
	add r0, r5, r0, lsr #27
	mov r0, r0, asr #5
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0200F07C
	beq _0200F074
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200F074:
	mov r0, #0
	str r0, [r4, #0x3c]
_0200F07C:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0200F0A0
	mov r3, #0
	add r1, sp, #0x130
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
_0200F0A0:
	str r0, [r4, #0x40]
	ldr r2, [r0, #0xb8]
	ldr r1, [r4, #0x18]
	ldr r0, [r2, #0xc]
	ldr r2, [r2, #8]
	bl MIi_CpuCopyFast
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0200F0DC
	beq _0200F0D4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200F0D4:
	mov r0, #0
	str r0, [r4, #0x40]
_0200F0DC:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0200F100
	mov r2, #0
	add r1, sp, #0x190
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_0200F100:
	str r0, [r4, #0x34]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _0200F118
	bl sub_02008788
_0200F118:
	mov r2, #0
	add r1, sp, #0x1f0
	mov r3, r2
	str r0, [r4, #0x38]
	bl sub_0200887C
	cmp r7, #0
	beq _0200F144
	mov r0, r7
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r7
	bl _ZdlPv
_0200F144:
	mov r0, r5
	add sp, sp, #0x250
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200F150: .word s_COM_0208aafc
_0200F154: .word s_s_s_LZ_bin_0208ab00
_0200F158: .word s_s_s_NCGR_0208ab10
_0200F15C: .word s_s_s_NCLR_0208ab1c
_0200F160: .word s_s_s_NCER_0208ab28
_0200F164: .word s_s_s_cac_0208ab34

	arm_func_start sub_0200F168
sub_0200F168: ; 0x0200F168
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x250
	mov r6, r0
	ldr ip, [sp, #0x260]
	str r3, [r6, #0x20]
	str ip, [r6, #0x1c]
	ldr r0, [r6, #0x2c]
	mov r5, r1
	cmp r0, #0
	mov r1, r3, lsl #5
	movne r0, ip, lsl #5
	mov r4, r2
	addne r1, r1, #0x6600000
	addne r0, r0, #0x600
	bne _0200F1B0
	mov r0, ip, lsl #5
	add r1, r1, #0x6400000
	add r0, r0, #0x200
	arm_func_end sub_0200F168
_0200F1B0:
	str r1, [r6, #0x14]
	add r0, r0, #0x5000000
	str r0, [r6, #0x18]
	ldr r1, _0200F340 ; =s_COM_0208aafc
	add r0, sp, #0x10
	bl OS_SPrintf
	ldr r1, _0200F344 ; =s_s_s_LZ_bin_0208ab00
	add r0, sp, #0x70
	mov r2, r5
	mov r3, r4
	bl OS_SPrintf
	ldr r1, _0200F348 ; =s_s_s_NCGR_0208ab10
	add r0, sp, #0xd0
	add r2, sp, #0x10
	mov r3, r4
	bl OS_SPrintf
	ldr r1, _0200F34C ; =s_s_s_NCLR_0208ab1c
	add r0, sp, #0x130
	add r2, sp, #0x10
	mov r3, r4
	bl OS_SPrintf
	ldr r1, _0200F350 ; =s_s_s_NCER_0208ab28
	add r0, sp, #0x190
	add r2, sp, #0x10
	mov r3, r4
	bl OS_SPrintf
	ldr r1, _0200F354 ; =s_s_s_cac_0208ab34
	mov r3, r4
	add r0, sp, #0x1f0
	add r2, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x6c
	bl _Znwm
	movs r5, r0
	beq _0200F264
	mov r3, #1
	str r3, [sp]
	ldr r1, [r6]
	mov r4, #0
	stmib sp, {r1, r4}
	add r1, sp, #0x10
	add r2, sp, #0x70
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r5, r0
_0200F264:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0200F288
	mov r2, #0
	add r1, sp, #0xd0
	mov r3, r2
	str r2, [sp]
	bl sub_020032CC
_0200F288:
	str r0, [r6, #0x3c]
	ldr r1, [r0, #0xb8]
	mov r0, #0xbc
	ldr r4, [r1, #0x10]
	mov r1, r4, asr #4
	add r1, r4, r1, lsr #27
	mov r1, r1, asr #5
	str r1, [r6, #0x28]
	bl _Znwm
	cmp r0, #0
	beq _0200F2C8
	mov r2, #0
	add r1, sp, #0x130
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
_0200F2C8:
	str r0, [r6, #0x40]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0200F2F0
	mov r2, #0
	add r1, sp, #0x190
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_0200F2F0:
	str r0, [r6, #0x34]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _0200F308
	bl sub_02008788
_0200F308:
	mov r2, #0
	add r1, sp, #0x1f0
	mov r3, r2
	str r0, [r6, #0x38]
	bl sub_0200887C
	cmp r5, #0
	beq _0200F334
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
_0200F334:
	mov r0, r4
	add sp, sp, #0x250
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0200F340: .word s_COM_0208aafc
_0200F344: .word s_s_s_LZ_bin_0208ab00
_0200F348: .word s_s_s_NCGR_0208ab10
_0200F34C: .word s_s_s_NCLR_0208ab1c
_0200F350: .word s_s_s_NCER_0208ab28
_0200F354: .word s_s_s_cac_0208ab34

	arm_func_start sub_0200F358
sub_0200F358: ; 0x0200F358
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	mov r3, r1, lsl #5
	movne r1, r2, lsl #5
	addne r2, r3, #0x6600000
	addne r1, r1, #0x600
	bne _0200F380
	mov r1, r2, lsl #5
	add r2, r3, #0x6400000
	add r1, r1, #0x200
	arm_func_end sub_0200F358
_0200F380:
	ldr ip, _0200F394 ; =sub_0200F398
	str r2, [r0, #0x14]
	add r1, r1, #0x5000000
	str r1, [r0, #0x18]
	bx ip
	.align 2, 0
_0200F394: .word sub_0200F398

	arm_func_start sub_0200F398
sub_0200F398: ; 0x0200F398
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x14]
	ldr r0, [r0, #0xb8]
	ldr r4, [r0, #0x10]
	ldr r0, [r0, #0x14]
	mov r2, r4
	bl MIi_CpuCopyFast
	mov r0, r4, asr #4
	add r0, r4, r0, lsr #27
	mov r0, r0, asr #5
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x18]
	ldr r2, [r0, #0xb8]
	ldr r0, [r2, #0xc]
	ldr r2, [r2, #8]
	bl MIi_CpuCopyFast
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200F398

	arm_func_start sub_0200F3EC
sub_0200F3EC: ; 0x0200F3EC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x2c]
	ldr r1, [r1, #0xb8]
	cmp r0, #0
	ldr r5, [r1, #0x10]
	ldr r0, [r4, #0x14]
	ldr r2, [r1, #0x14]
	bne _0200F428
	sub r1, r0, #0x6400000
	mov r3, r5
	mov r0, #0x13
	bl NNS_GfdRegisterNewVramTransferTask
	b _0200F438
	arm_func_end sub_0200F3EC
_0200F428:
	sub r1, r0, #0x6600000
	mov r3, r5
	mov r0, #0x23
	bl NNS_GfdRegisterNewVramTransferTask
_0200F438:
	mov r0, r5, asr #4
	add r0, r5, r0, lsr #27
	mov r0, r0, asr #5
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x2c]
	ldr r2, [r1, #0xb8]
	cmp r0, #0
	ldr r5, [r2, #8]
	ldr r1, [r4, #0x18]
	bne _0200F480
	ldr r0, _0200F4A0 ; =0xFAFFFE00
	ldr r2, [r2, #0xc]
	add r1, r1, r0
	mov r3, r5
	mov r0, #0xe
	bl NNS_GfdRegisterNewVramTransferTask
	b _0200F498
_0200F480:
	ldr r0, _0200F4A4 ; =0xFAFFFA00
	ldr r2, [r2, #0xc]
	add r1, r1, r0
	mov r3, r5
	mov r0, #0x1e
	bl NNS_GfdRegisterNewVramTransferTask
_0200F498:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0200F4A0: .word 0xFAFFFE00
_0200F4A4: .word 0xFAFFFA00

	arm_func_start sub_0200F4A8
sub_0200F4A8: ; 0x0200F4A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0200F4D4
	beq _0200F4CC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0200F4A8
_0200F4CC:
	mov r0, #0
	str r0, [r4, #0x3c]
_0200F4D4:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	beq _0200F4F0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200F4F0:
	mov r0, #0
	str r0, [r4, #0x40]
	ldmia sp!, {r4, pc}

	arm_func_start sub_0200F4FC
sub_0200F4FC: ; 0x0200F4FC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldr r0, [r7, #0x38]
	mov r4, r1
	mov r6, r2
	mov r5, r3
	bl sub_02008C6C
	str r0, [r7, #0x24]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	blt _0200F530
	bl OS_Terminate
	arm_func_end sub_0200F4FC
_0200F530:
	mov r1, #0
	ldr r0, [r7, #0x38]
	mov r2, r1
	bl sub_02008A80
	ldr r1, [r7, #0x24]
	ldr r2, [r7, #8]
	mov r1, r1, lsl #1
	strh r0, [r2, r1]
	ldr r0, [r7, #0x24]
	mov r2, r4, lsl #0x10
	ldr r1, [r7, #8]
	mov r0, r0, lsl #1
	ldrh r1, [r1, r0]
	ldr r0, [r7, #0x38]
	mov r2, r2, lsr #0x10
	bl sub_02008990
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #8]
	mov r0, r0, lsl #1
	ldrh r1, [r1, r0]
	ldr r0, [r7, #0x38]
	bl sub_02008828
	ldr r4, [r7, #0x10]
	mov r3, #0
	cmp r4, #0
	ble _0200F618
	ldr ip, [r7, #0xc]
	mov r2, ip
_0200F5A0:
	ldr r1, [r2, #0x14]
	cmp r1, #0
	bne _0200F608
	ldr r2, [r7, #0x34]
	mov r1, #0x3c
	ldr r2, [r2, #0xb8]
	mul r4, r3, r1
	ldr r1, [r2, #4]
	ldr r2, [r7, #0x1c]
	add r1, r1, r0, lsl #3
	str r2, [sp]
	ldr r2, [r7, #0x20]
	ldr r0, [sp, #0x20]
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r2, r6
	mov r3, r5
	add r0, ip, r4
	bl sub_0200EA84
	ldr r1, [r7, #0x30]
	add sp, sp, #0xc
	add r0, r1, r0
	str r0, [r7, #0x30]
	ldr r0, [r7, #0xc]
	add r0, r0, r4
	ldmia sp!, {r4, r5, r6, r7, pc}
_0200F608:
	add r3, r3, #1
	cmp r3, r4
	add r2, r2, #0x3c
	blt _0200F5A0
_0200F618:
	bl OS_Terminate
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start sub_0200F628
sub_0200F628: ; 0x0200F628
	ldr r3, [r0, #8]
	mov r1, r1, lsl #1
	mov r2, r2, lsl #0x10
	ldr ip, _0200F648 ; =sub_02008990
	ldrh r1, [r3, r1]
	ldr r0, [r0, #0x38]
	mov r2, r2, lsr #0x10
	bx ip
	.align 2, 0
_0200F648: .word sub_02008990
	arm_func_end sub_0200F628

	arm_func_start sub_0200F64C
sub_0200F64C: ; 0x0200F64C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x38]
	bl sub_02008C6C
	str r0, [r6, #0x24]
	ldr r0, [r6, #0x38]
	bl sub_020089EC
	ldr r0, [r6, #0x24]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	mov r5, r4
	arm_func_end sub_0200F64C
_0200F67C:
	ldr r1, [r6, #8]
	mov r0, r4, lsl #1
	ldrh r1, [r1, r0]
	ldr r0, [r6, #0x38]
	bl sub_02008828
	ldr r1, [r6, #0x34]
	ldr r2, [r6, #0xc]
	ldr r1, [r1, #0xb8]
	ldr r1, [r1, #4]
	add r1, r1, r0, lsl #3
	add r0, r2, r5
	bl sub_0200EAFC
	ldr r0, [r6, #0x24]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0x3c
	blt _0200F67C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0200F6C4
sub_0200F6C4: ; 0x0200F6C4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r5, #0
	cmp r0, #0
	ble _0200F710
	mov r6, r5
	mov r7, r5
	arm_func_end sub_0200F6C4
_0200F6E4:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	add r0, r0, r7
	add r1, r1, r6
	bl sub_0200E960
	ldr r0, [r4, #0x10]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #8
	add r7, r7, #0x3c
	blt _0200F6E4
_0200F710:
	ldr r0, [r4, #0x38]
	bl sub_02008BF0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0200F71C
sub_0200F71C: ; 0x0200F71C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #0x2c]
	mov r4, #0
	mov r5, r4
	cmp r0, #1
	ldr r1, [r8, #4]
	ldr r2, _0200F8A4 ; =0x00300010
	bne _0200F7A8
	ldr r0, _0200F8A8 ; =0x04001000
	ldr r3, [r0]
	sub r0, r2, #0x200000
	and r3, r3, r2
	cmp r3, r0
	bgt _0200F778
	bge _0200F7A0
	cmp r3, #0
	bgt _0200F76C
	beq _0200F798
	b _0200F80C
	arm_func_end sub_0200F71C
_0200F76C:
	cmp r3, #0x10
	beq _0200F798
	b _0200F80C
_0200F778:
	sub r0, r2, #0x100000
	cmp r3, r0
	bgt _0200F78C
	moveq r4, #2
	b _0200F80C
_0200F78C:
	cmp r3, r2
	moveq r4, #3
	b _0200F80C
_0200F798:
	mov r4, #0
	b _0200F80C
_0200F7A0:
	mov r4, #1
	b _0200F80C
_0200F7A8:
	mov r0, #0x4000000
	ldr r3, [r0]
	sub r0, r2, #0x200000
	and r3, r3, r2
	cmp r3, r0
	bgt _0200F7E0
	bge _0200F808
	cmp r3, #0
	bgt _0200F7D4
	beq _0200F800
	b _0200F80C
_0200F7D4:
	cmp r3, #0x10
	beq _0200F800
	b _0200F80C
_0200F7E0:
	sub r0, r2, #0x100000
	cmp r3, r0
	bgt _0200F7F4
	moveq r4, #2
	b _0200F80C
_0200F7F4:
	cmp r3, r2
	moveq r4, #3
	b _0200F80C
_0200F800:
	mov r4, #0
	b _0200F80C
_0200F808:
	mov r4, #1
_0200F80C:
	ldr r0, [r8, #0x34]
	ldr r0, [r0, #0xb8]
	ldr r0, [r0, #8]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0200F854
_0200F824: ; jump table
	b _0200F838 ; case 0
	b _0200F840 ; case 1
	b _0200F848 ; case 2
	b _0200F850 ; case 3
	b _0200F838 ; case 4
_0200F838:
	mov r5, #0
	b _0200F854
_0200F840:
	mov r5, #1
	b _0200F854
_0200F848:
	mov r5, #2
	b _0200F854
_0200F850:
	mov r5, #3
_0200F854:
	ldr r0, [r8, #0x10]
	mov r6, #0
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, r6
_0200F868:
	ldr r0, [r8, #0xc]
	add r0, r0, r7
	ldr r2, [r0, #0x14]
	cmp r2, #0
	beq _0200F88C
	mov r2, r4
	mov r3, r5
	bl sub_0200EB78
	mov r1, r0
_0200F88C:
	ldr r0, [r8, #0x10]
	add r6, r6, #1
	cmp r6, r0
	add r7, r7, #0x3c
	blt _0200F868
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0200F8A4: .word 0x00300010
_0200F8A8: .word 0x04001000
