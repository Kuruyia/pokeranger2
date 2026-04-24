    .include "macros.inc"
    .include "include/arm9_020023EC.inc"

    .text

	arm_func_start sub_020023EC
sub_020023EC: ; 0x020023EC
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x600
	bl _Z19Heap_AllocSecondarym
	str r0, [r4, #0x20]
	add r0, r4, #0x10
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	mov r0, #0x20000
	str r0, [r4, #0x18]
	mov r1, #0x18000
	mov r0, r4
	str r1, [r4, #0x1c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020023EC

	arm_func_start sub_02002434
sub_02002434: ; 0x02002434
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	mov r5, r0
	mov r0, #0x6c
	mov r4, r1
	mov fp, r2
	str r3, [sp, #0x10]
	bl _Znwm
	movs r6, r0
	beq _02002484
	mov r3, #1
	str r3, [sp]
	mov r6, #0
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r1, _020027B4 ; =s_BGF_0208a418
	ldr r2, _020027B8 ; =s_data_system_BGFontLZ_bin_0208a41c
	str r6, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r6, r0
	arm_func_end sub_02002434
_02002484:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _020024B0
	mov r2, #1
	mov r7, #0
	ldr r1, _020027BC ; =s_BGF_BGFontNCGRLZ_bin_0208a438
	mov r3, r2
	str r7, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
	mov r7, r0
_020024B0:
	mov r0, #0xbc
	bl _Znwm
	movs r8, r0
	beq _020024DC
	mov r2, #1
	mov r8, #0
	ldr r1, _020027C0 ; =s_BGF_BGFontNSCRLZ_bin_0208a450
	mov r3, r2
	str r8, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r8, r0
_020024DC:
	mov r0, #0xbc
	bl _Znwm
	movs sb, r0
	beq _02002508
	mov r2, #1
	mov sb, #0
	ldr r1, _020027C4 ; =s_BGF_BGFontNCLRLZ_bin_0208a468
	mov r3, r2
	str sb, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov sb, r0
_02002508:
	ldr r0, [sb, #0xb8]
	mov r2, #0
	ldr r1, [r0, #0xc]
	mov r0, fp, lsr #5
	strh r2, [r1]
	strh r0, [r5, #0xc]
	str r4, [r5]
	cmp r4, #7
	addls pc, pc, r4, lsl #2
	b _020026D8
_02002530: ; jump table
	b _02002550 ; case 0
	b _02002584 ; case 1
	b _020025B4 ; case 2
	b _020025E8 ; case 3
	b _02002618 ; case 4
	b _02002648 ; case 5
	b _02002678 ; case 6
	b _020026AC ; case 7
_02002550:
	ldr r0, _020027C8 ; =0x04000008
	ldrh r0, [r0]
	strh r0, [sp, #0x22]
	ldrsh r0, [sp, #0x22]
	ldrh r2, [sp, #0x22]
	mov r0, r2, lsl #0x13
	mov r1, r0, lsr #0x1b
	mov r0, r2, lsl #0x1a
	str r1, [r5, #4]
	mov r0, r0, lsr #0x1c
	strh r2, [sp, #0x32]
	str r0, [r5, #8]
	b _020026D8
_02002584:
	ldr r0, _020027CC ; =0x0400000A
	ldrh r0, [r0]
	strh r0, [sp, #0x20]
	ldrh r2, [sp, #0x20]
	mov r0, r2, lsl #0x13
	mov r1, r0, lsr #0x1b
	mov r0, r2, lsl #0x1a
	str r1, [r5, #4]
	mov r0, r0, lsr #0x1c
	strh r2, [sp, #0x30]
	str r0, [r5, #8]
	b _020026D8
_020025B4:
	ldr r0, _020027D0 ; =0x0400000C
	ldrh r0, [r0]
	strh r0, [sp, #0x1e]
	ldrsh r0, [sp, #0x1e]
	ldrh r2, [sp, #0x1e]
	mov r0, r2, lsl #0x13
	mov r1, r0, lsr #0x1b
	mov r0, r2, lsl #0x1a
	str r1, [r5, #4]
	mov r0, r0, lsr #0x1c
	strh r2, [sp, #0x2e]
	str r0, [r5, #8]
	b _020026D8
_020025E8:
	ldr r0, _020027D4 ; =0x0400000E
	ldrh r0, [r0]
	strh r0, [sp, #0x1c]
	ldrh r2, [sp, #0x1c]
	mov r0, r2, lsl #0x13
	mov r1, r0, lsr #0x1b
	mov r0, r2, lsl #0x1a
	str r1, [r5, #4]
	mov r0, r0, lsr #0x1c
	strh r2, [sp, #0x2c]
	str r0, [r5, #8]
	b _020026D8
_02002618:
	ldr r0, _020027D8 ; =0x04001008
	ldrh r0, [r0]
	strh r0, [sp, #0x1a]
	ldrh r2, [sp, #0x1a]
	mov r0, r2, lsl #0x13
	mov r1, r0, lsr #0x1b
	mov r0, r2, lsl #0x1a
	str r1, [r5, #4]
	mov r0, r0, lsr #0x1c
	strh r2, [sp, #0x2a]
	str r0, [r5, #8]
	b _020026D8
_02002648:
	ldr r0, _020027DC ; =0x0400100A
	ldrh r0, [r0]
	strh r0, [sp, #0x18]
	ldrh r2, [sp, #0x18]
	mov r0, r2, lsl #0x13
	mov r1, r0, lsr #0x1b
	mov r0, r2, lsl #0x1a
	str r1, [r5, #4]
	mov r0, r0, lsr #0x1c
	strh r2, [sp, #0x28]
	str r0, [r5, #8]
	b _020026D8
_02002678:
	ldr r0, _020027E0 ; =0x0400100C
	ldrh r0, [r0]
	strh r0, [sp, #0x16]
	ldrsh r0, [sp, #0x16]
	ldrh r2, [sp, #0x16]
	mov r0, r2, lsl #0x13
	mov r1, r0, lsr #0x1b
	mov r0, r2, lsl #0x1a
	str r1, [r5, #4]
	mov r0, r0, lsr #0x1c
	strh r2, [sp, #0x26]
	str r0, [r5, #8]
	b _020026D8
_020026AC:
	ldr r0, _020027E4 ; =0x0400100E
	ldrh r0, [r0]
	strh r0, [sp, #0x14]
	ldrh r2, [sp, #0x14]
	mov r0, r2, lsl #0x13
	mov r1, r0, lsr #0x1b
	mov r0, r2, lsl #0x1a
	str r1, [r5, #4]
	mov r0, r0, lsr #0x1c
	strh r2, [sp, #0x24]
	str r0, [r5, #8]
_020026D8:
	ldr sl, [r7, #0xb8]
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl sub_02002AD4
	ldr r2, [sl, #0x14]
	ldr r3, [sl, #0x10]
	mov r1, fp
	bl NNS_GfdRegisterNewVramTransferTask
	ldr sl, [r8, #0xb8]
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl sub_02002AD4
	ldr r1, [sp, #0x10]
	ldr r3, [sl, #8]
	add r2, sl, #0xc
	bl NNS_GfdRegisterNewVramTransferTask
	mov r0, r5
	mov r1, r4
	mov r2, #2
	bl sub_02002AD4
	ldr r2, [sb, #0xb8]
	ldr r1, [sp, #0x58]
	ldr r2, [r2, #0xc]
	mov r3, #0xc0
	bl NNS_GfdRegisterNewVramTransferTask
	bl NNS_GfdDoVramTransfer
	cmp sb, #0
	beq _02002760
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02002760:
	cmp r8, #0
	beq _02002778
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02002778:
	cmp r7, #0
	beq _02002790
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02002790:
	cmp r6, #0
	addeq sp, sp, #0x34
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r6
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r6
	bl _ZdlPv
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020027B4: .word s_BGF_0208a418
_020027B8: .word s_data_system_BGFontLZ_bin_0208a41c
_020027BC: .word s_BGF_BGFontNCGRLZ_bin_0208a438
_020027C0: .word s_BGF_BGFontNSCRLZ_bin_0208a450
_020027C4: .word s_BGF_BGFontNCLRLZ_bin_0208a468
_020027C8: .word 0x04000008
_020027CC: .word 0x0400000A
_020027D0: .word 0x0400000C
_020027D4: .word 0x0400000E
_020027D8: .word 0x04001008
_020027DC: .word 0x0400100A
_020027E0: .word 0x0400100C
_020027E4: .word 0x0400100E

	arm_func_start sub_020027E8
sub_020027E8: ; 0x020027E8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r0, [sb, #0x18]
	movs r1, r0, asr #0xc
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sb, #0x1c]
	movs r2, r0, asr #0xc
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sb]
	cmp r0, #0
	blt _0200282C
	cmp r0, #3
	bgt _0200282C
	ldr r0, [sb, #4]
	mov r0, r0, lsl #0xb
	add r6, r0, #0x6000000
	b _02002838
	arm_func_end sub_020027E8
_0200282C:
	ldr r0, [sb, #4]
	mov r0, r0, lsl #0xb
	add r6, r0, #0x6200000
_02002838:
	cmp r2, #0
	mov r8, r1, lsl #1
	mov r7, #0
	ble _02002898
	mov r4, r7
_0200284C:
	ldr r0, [sb, #0x14]
	ldr r2, [sb, #0x10]
	add r0, r7, r0, asr #12
	mov r1, r0, lsl #5
	ldr r0, [sb, #0x20]
	add r5, r1, r2, asr #12
	mov r1, r8
	add r0, r0, r5, lsl #1
	bl DC_FlushRange
	ldr r1, [sb, #0x20]
	mov r0, r4
	mov r3, r8
	add r1, r1, r5, lsl #1
	add r2, r6, r5, lsl #1
	bl MI_DmaCopy32
	ldr r0, [sb, #0x1c]
	add r7, r7, #1
	cmp r7, r0, asr #12
	blt _0200284C
_02002898:
	mov r0, sb
	bl sub_020029E4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_020028A4
sub_020028A4: ; 0x020028A4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	add r3, sp, #0x2c
	mov r7, r0
	mov r5, r2
	bic r3, r3, #3
	mov r6, r1
	ldr r2, [sp, #0x2c]
	add r0, r7, #0x28
	add r3, r3, #4
	mov r1, #0x21
	bl OS_VSNPrintf
	mov r4, r0
	cmp r4, #0
	mov r8, #0
	ble _02002918
	arm_func_end sub_020028A4
_020028E8:
	add r1, r6, r8
	cmp r1, #0x20
	movge r4, r8
	bge _02002918
	add r0, r7, r8
	ldrsb r3, [r0, #0x28]
	mov r0, r7
	mov r2, r5
	bl sub_0200296C
	add r8, r8, #1
	cmp r8, r4
	blt _020028E8
_02002918:
	mov r0, #1
	str r0, [sp]
	ldr ip, [r7, #0x24]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #4]
	bl sub_02002A04
	mov r0, #0
	str r0, [r7, #0x10]
	str r0, [r7, #0x14]
	mov r0, #0x20000
	str r0, [r7, #0x18]
	mov r1, #0x18000
	mov r0, r4
	str r1, [r7, #0x1c]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_0200296C
sub_0200296C: ; 0x0200296C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr ip, [r6, #0x20]
	mov r4, r2, lsl #6
	add r5, ip, r1, lsl #1
	mov r1, r3
	bl sub_02002998
	ldrh r1, [r6, #0xc]
	add r0, r1, r0
	strh r0, [r5, r4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0200296C

	arm_func_start sub_02002998
sub_02002998: ; 0x02002998
	cmp r1, #0x41
	blt _020029AC
	cmp r1, #0x5f
	suble r0, r1, #0x21
	ble _020029D8
	arm_func_end sub_02002998
_020029AC:
	cmp r1, #0x61
	blt _020029C0
	cmp r1, #0x7a
	suble r0, r1, #0x21
	ble _020029D8
_020029C0:
	cmp r1, #0x20
	blt _020029D4
	cmp r1, #0x3f
	suble r0, r1, #0x20
	ble _020029D8
_020029D4:
	mov r0, #0x3e
_020029D8:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr

	arm_func_start sub_020029E4
sub_020029E4: ; 0x020029E4
	mov r1, #0x20000
	str r1, [r0, #0x10]
	mov r1, #0x18000
	str r1, [r0, #0x14]
	mov r1, #0
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	bx lr
	arm_func_end sub_020029E4

	arm_func_start sub_02002A04
sub_02002A04: ; 0x02002A04
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr sb, [sp, #0x28]
	mov r7, #0
	cmp sb, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r6, [sp, #0x2c]
	ldr sl, _02002A74 ; =0x00000FFF
	mov r5, r7
	arm_func_end sub_02002A04
_02002A24:
	mov r8, r5
	cmp r3, #0
	ble _02002A64
	add r4, r7, r2
	mov r4, r4, lsl #5
_02002A38:
	ldr ip, [r0, #0x20]
	add fp, r8, r1
	add lr, ip, r4, lsl #1
	mov ip, fp, lsl #1
	ldrh fp, [lr, ip]
	add r8, r8, #1
	cmp r8, r3
	and fp, fp, sl
	orr fp, fp, r6, lsl #12
	strh fp, [lr, ip]
	blt _02002A38
_02002A64:
	add r7, r7, #1
	cmp r7, sb
	blt _02002A24
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02002A74: .word 0x00000FFF
