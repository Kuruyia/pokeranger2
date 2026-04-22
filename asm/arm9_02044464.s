    .include "macros.inc"
    .include "include/arm9.inc"
    .include "include/arm9_02044464.inc"

    .text

	arm_func_start sub_02044464
sub_02044464: ; 0x02044464
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, [r0, #4]
	ldr r2, [r0, #8]
	cmp r4, r2
	bhs _020444BC
	ldr r5, [r1]
	mov r3, #0
	mov ip, #1
	arm_func_end sub_02044464
_02044484:
	ldr r2, [r4]
	cmp r5, r2
	ldreq lr, [r1, #4]
	ldreq r2, [r4, #4]
	cmpeq lr, r2
	moveq r2, ip
	movne r2, r3
	cmp r2, #0
	movne r0, r4
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #8]
	add r4, r4, #0xc
	cmp r4, r2
	blo _02044484
_020444BC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020444C4
sub_020444C4: ; 0x020444C4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _02044514 ; =MAIN_BSS_0210CED4
	mov r6, r0
	ldr r4, [r2]
	mov r5, r1
	cmp r4, #0
	beq _0204450C
	arm_func_end sub_020444C4
_020444E0:
	mov r0, r4
	mov r1, r6
	bl sub_02044464
	cmp r0, #0
	beq _02044500
	cmp r5, #0
	strne r4, [r5]
	ldmia sp!, {r4, r5, r6, pc}
_02044500:
	ldr r4, [r4, #0x10]
	cmp r4, #0
	bne _020444E0
_0204450C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02044514: .word MAIN_BSS_0210CED4

	arm_func_start sub_02044518
sub_02044518: ; 0x02044518
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldrsb r3, [r1]
	add r2, sp, #0
	cmp r3, #0x30
	blt _0204453C
	cmp r3, #0x39
	suble lr, r3, #0x2f
	ble _02044588
	arm_func_end sub_02044518
_0204453C:
	cmp r3, #0x41
	blt _02044550
	cmp r3, #0x5a
	suble lr, r3, #0x36
	ble _02044588
_02044550:
	cmp r3, #0x61
	blt _02044564
	cmp r3, #0x7a
	suble lr, r3, #0x56
	ble _02044588
_02044564:
	cmp r3, #0x5f
	moveq lr, #0x25
	beq _02044588
	cmp r3, #0x2d
	moveq lr, #0x26
	beq _02044588
	cmp r3, #0x2f
	moveq lr, #0x27
	movne lr, #0
_02044588:
	cmp lr, #0
	addne r1, r1, #1
	mov r3, #0x28
	ldrsb ip, [r1]
	mul r3, lr, r3
	cmp ip, #0x30
	blt _020445B0
	cmp ip, #0x39
	suble ip, ip, #0x2f
	ble _020445FC
_020445B0:
	cmp ip, #0x41
	blt _020445C4
	cmp ip, #0x5a
	suble ip, ip, #0x36
	ble _020445FC
_020445C4:
	cmp ip, #0x61
	blt _020445D8
	cmp ip, #0x7a
	suble ip, ip, #0x56
	ble _020445FC
_020445D8:
	cmp ip, #0x5f
	moveq ip, #0x25
	beq _020445FC
	cmp ip, #0x2d
	moveq ip, #0x26
	beq _020445FC
	cmp ip, #0x2f
	moveq ip, #0x27
	movne ip, #0
_020445FC:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r3, ip
	mov r3, #0x28
	ldrsb lr, [r1]
	mul r3, ip, r3
	cmp lr, #0x30
	blt _02044628
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02044674
_02044628:
	cmp lr, #0x41
	blt _0204463C
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02044674
_0204463C:
	cmp lr, #0x61
	blt _02044650
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02044674
_02044650:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02044674
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02044674
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02044674:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r3, ip
	mov r3, #0x28
	ldrsb lr, [r1]
	mul r3, ip, r3
	cmp lr, #0x30
	blt _020446A0
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _020446EC
_020446A0:
	cmp lr, #0x41
	blt _020446B4
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _020446EC
_020446B4:
	cmp lr, #0x61
	blt _020446C8
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _020446EC
_020446C8:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _020446EC
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _020446EC
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_020446EC:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r3, ip
	mov r3, #0x28
	ldrsb lr, [r1]
	mul r3, ip, r3
	cmp lr, #0x30
	blt _02044718
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02044764
_02044718:
	cmp lr, #0x41
	blt _0204472C
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02044764
_0204472C:
	cmp lr, #0x61
	blt _02044740
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02044764
_02044740:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02044764
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02044764
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02044764:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r3, ip
	mov r3, #0x28
	ldrsb lr, [r1]
	mul r3, ip, r3
	cmp lr, #0x30
	blt _02044790
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _020447DC
_02044790:
	cmp lr, #0x41
	blt _020447A4
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _020447DC
_020447A4:
	cmp lr, #0x61
	blt _020447B8
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _020447DC
_020447B8:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _020447DC
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _020447DC
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_020447DC:
	cmp ip, #0
	add r3, r3, ip
	addne r1, r1, #1
	str r3, [r2]
	ldrsb r3, [r1]
	cmp r3, #0x30
	blt _02044804
	cmp r3, #0x39
	suble lr, r3, #0x2f
	ble _02044850
_02044804:
	cmp r3, #0x41
	blt _02044818
	cmp r3, #0x5a
	suble lr, r3, #0x36
	ble _02044850
_02044818:
	cmp r3, #0x61
	blt _0204482C
	cmp r3, #0x7a
	suble lr, r3, #0x56
	ble _02044850
_0204482C:
	cmp r3, #0x5f
	moveq lr, #0x25
	beq _02044850
	cmp r3, #0x2d
	moveq lr, #0x26
	beq _02044850
	cmp r3, #0x2f
	moveq lr, #0x27
	movne lr, #0
_02044850:
	cmp lr, #0
	addne r1, r1, #1
	mov r3, #0x28
	ldrsb ip, [r1]
	mul r3, lr, r3
	cmp ip, #0x30
	blt _02044878
	cmp ip, #0x39
	suble ip, ip, #0x2f
	ble _020448C4
_02044878:
	cmp ip, #0x41
	blt _0204488C
	cmp ip, #0x5a
	suble ip, ip, #0x36
	ble _020448C4
_0204488C:
	cmp ip, #0x61
	blt _020448A0
	cmp ip, #0x7a
	suble ip, ip, #0x56
	ble _020448C4
_020448A0:
	cmp ip, #0x5f
	moveq ip, #0x25
	beq _020448C4
	cmp ip, #0x2d
	moveq ip, #0x26
	beq _020448C4
	cmp ip, #0x2f
	moveq ip, #0x27
	movne ip, #0
_020448C4:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r3, ip
	mov r3, #0x28
	ldrsb lr, [r1]
	mul r3, ip, r3
	cmp lr, #0x30
	blt _020448F0
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _0204493C
_020448F0:
	cmp lr, #0x41
	blt _02044904
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _0204493C
_02044904:
	cmp lr, #0x61
	blt _02044918
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _0204493C
_02044918:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _0204493C
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _0204493C
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_0204493C:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r3, ip
	mov r3, #0x28
	ldrsb lr, [r1]
	mul r3, ip, r3
	cmp lr, #0x30
	blt _02044968
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _020449B4
_02044968:
	cmp lr, #0x41
	blt _0204497C
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _020449B4
_0204497C:
	cmp lr, #0x61
	blt _02044990
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _020449B4
_02044990:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _020449B4
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _020449B4
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_020449B4:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r3, ip
	mov r3, #0x28
	ldrsb lr, [r1]
	mul r3, ip, r3
	cmp lr, #0x30
	blt _020449E0
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02044A2C
_020449E0:
	cmp lr, #0x41
	blt _020449F4
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02044A2C
_020449F4:
	cmp lr, #0x61
	blt _02044A08
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02044A2C
_02044A08:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02044A2C
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02044A2C
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02044A2C:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r3, ip
	mov r3, #0x28
	ldrsb r1, [r1]
	mul r3, ip, r3
	cmp r1, #0x30
	blt _02044A58
	cmp r1, #0x39
	suble ip, r1, #0x2f
	ble _02044AA4
_02044A58:
	cmp r1, #0x41
	blt _02044A6C
	cmp r1, #0x5a
	suble ip, r1, #0x36
	ble _02044AA4
_02044A6C:
	cmp r1, #0x61
	blt _02044A80
	cmp r1, #0x7a
	suble ip, r1, #0x56
	ble _02044AA4
_02044A80:
	cmp r1, #0x5f
	moveq ip, #0x25
	beq _02044AA4
	cmp r1, #0x2d
	moveq ip, #0x26
	beq _02044AA4
	cmp r1, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02044AA4:
	add r3, r3, ip
	add r1, sp, #0
	str r3, [r2, #4]
	bl sub_02044464
	cmp r0, #0
	ldrne r0, [r0, #8]
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}

	arm_func_start sub_02044AC8
sub_02044AC8: ; 0x02044AC8
	cmp r0, #0
	bxeq lr
	ldr r2, [r0]
	mov r1, #0
	add r2, r2, r0
	str r2, [r0]
	ldr r2, [r0, #4]
	add r2, r2, r0
	str r2, [r0, #4]
	ldr r2, [r0, #8]
	add r2, r2, r0
	str r2, [r0, #8]
	ldr r2, [r0, #0xc]
	add r2, r2, r0
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	cmp r2, r1
	bxhs lr
	arm_func_end sub_02044AC8
_02044B18:
	ldr r1, [r2, #8]
	add r1, r0, r1, lsl #2
	str r1, [r2, #8]
	ldr r1, [r0, #8]
	add r2, r2, #0xc
	cmp r2, r1
	blo _02044B18
	bx lr

	arm_func_start sub_02044B38
sub_02044B38: ; 0x02044B38
	ldr r2, _02044B44 ; =MAIN_BSS_0210CED8
	str r1, [r2, r0, lsl #2]
	bx lr
	.align 2, 0
_02044B44: .word MAIN_BSS_0210CED8
	arm_func_end sub_02044B38

	arm_func_start sub_02044B48
sub_02044B48: ; 0x02044B48
	mov r3, #0
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	str r3, [r0, #0x10]
	str r3, [r0, #0x14]
	str r3, [r0, #0x20]
	str r2, [r0, #0x18]
	ldr ip, _02044B74 ; =sub_02044B84
	str r1, [r0, #0x1c]
	bx ip
	.align 2, 0
_02044B74: .word sub_02044B84
	arm_func_end sub_02044B48

	arm_func_start sub_02044B78
sub_02044B78: ; 0x02044B78
	ldr ip, _02044B80 ; =sub_02044B84
	bx ip
	.align 2, 0
_02044B80: .word sub_02044B84
	arm_func_end sub_02044B78

	arm_func_start sub_02044B84
sub_02044B84: ; 0x02044B84
	mov r3, #0
	str r3, [r0]
	ldr r2, [r0, #0x1c]
	ldr r1, [r0, #0x18]
	add r1, r2, r1, lsl #2
	str r1, [r0, #4]
	ldr r1, [r0, #0x1c]
	str r1, [r0, #8]
	str r3, [r0, #0x20]
	bx lr
	arm_func_end sub_02044B84

	arm_func_start sub_02044BAC
sub_02044BAC: ; 0x02044BAC
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _02044C04 ; =MAIN_BSS_0210CED4
	ldr r2, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, sp, #0x18
	str r2, [sp]
	str r1, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r2, [r0, #8]
	add r0, sp, #0
	mov r1, #1
	blx r2
	add sp, sp, #8
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_02044C04: .word MAIN_BSS_0210CED4
	arm_func_end sub_02044BAC

	arm_func_start sub_02044C08
sub_02044C08: ; 0x02044C08
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #8]
	add r4, r0, r1, lsl #4
	ldr r0, [r4, #0xc]
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, r4
	ldmneia sp!, {r4, r5, pc}
	ldr r1, [r4]
	add r0, sp, #0
	str r1, [sp]
	ldr r2, [r4, #4]
	add r1, sp, #8
	str r2, [sp, #4]
	bl sub_020444C4
	cmp r0, #0
	beq _02044C70
	str r0, [r4, #0xc]
	ldr r1, [sp, #8]
	add sp, sp, #0x1c
	mov r0, r4
	str r1, [r4, #8]
	ldmia sp!, {r4, r5, pc}
	arm_func_end sub_02044C08
_02044C70:
	add r0, sp, #0
	add r1, sp, #0xc
	bl sub_02044404
	ldr r1, _02044C98 ; =s_fsc_symbol_not_found_s_0208e270
	add r2, sp, #0xc
	mov r0, r5
	bl sub_02044BAC
	mov r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02044C98: .word s_fsc_symbol_not_found_s_0208e270

	arm_func_start sub_02044C9C
sub_02044C9C: ; 0x02044C9C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r0
	ldr r0, [sb, #0x20]
	mov r8, r1
	cmp r0, #0
	beq _02044CC4
	sub r0, r0, #1
	str r0, [sb, #0x20]
	mov r0, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_02044C9C
_02044CC4:
	cmp r8, #0
	sub r8, r8, #1
	beq _0204598C
	ldr sl, _02045994 ; =MAIN_BSS_0210CED8
	ldr r4, _02045998 ; =s_fsc_float_operator_not_imprement_0208e2d4
	ldr fp, _0204599C ; =0x000003FF
	mov r5, #0
	mov r6, #1
_02044CE4:
	ldr r1, [sb]
	cmp r1, #0
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r1, #4
	str r0, [sb]
	ldr r0, [r1]
	str r0, [sp]
	ldrb r1, [sp]
	cmp r1, #0x1c
	addls pc, pc, r1, lsl #2
	b _02045948
_02044D14: ; jump table
	b _02045960 ; case 0
	b _02045030 ; case 1
	b _02044D88 ; case 2
	b _02045118 ; case 3
	b _020450AC ; case 4
	b _0204517C ; case 5
	b _020451F8 ; case 6
	b _02045270 ; case 7
	b _02044E2C ; case 8
	b _02045948 ; case 9
	b _02044FFC ; case 10
	b _020452B8 ; case 11
	b _020452D8 ; case 12
	b _02045298 ; case 13
	b _02045948 ; case 14
	b _02045284 ; case 15
	b _02045374 ; case 16
	b _0204538C ; case 17
	b _02045584 ; case 18
	b _0204559C ; case 19
	b _020455BC ; case 20
	b _0204575C ; case 21
	b _0204576C ; case 22
	b _020458A0 ; case 23
	b _020458B0 ; case 24
	b _020453B0 ; case 25
	b _020453D0 ; case 26
	b _02045460 ; case 27
	b _02045938 ; case 28
_02044D88:
	ldrb r0, [sp, #1]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02045960
_02044D98: ; jump table
	b _02044DAC ; case 0
	b _02044DBC ; case 1
	b _02044DC4 ; case 2
	b _02044DD0 ; case 3
	b _02044DEC ; case 4
_02044DAC:
	ldrsh r1, [sp, #2]
	mov r0, #4
	str r1, [sb, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02044DBC:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02044DC4:
	mov r0, sb
	bl sub_02044B84
	b _02045960
_02044DD0:
	ldr r2, [sb, #4]
	mov r0, #4
	add r1, r2, #4
	str r1, [sb, #4]
	ldr r1, [r2]
	str r1, [sb, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02044DEC:
	ldr r1, [sb, #4]
	mov r0, r1
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r0, [r1]
	cmp r0, #0
	beq _02045960
	ldr r0, [sb, #4]
	mov r1, r0
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r1, [r1]
	mov r0, #4
	sub r1, r1, #1
	str r1, [sb, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02044E2C:
	ldrb r0, [sp, #1]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02044FE8
_02044E3C: ; jump table
	b _02044FE8 ; case 0
	b _02044E5C ; case 1
	b _02044E8C ; case 2
	b _02044EBC ; case 3
	b _02044EF0 ; case 4
	b _02044F24 ; case 5
	b _02044F64 ; case 6
	b _02044FA4 ; case 7
_02044E5C:
	ldr r1, [sb, #4]
	mov r0, r1
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r0, [r1]
	cmp r0, #0
	beq _02045960
	ldr r1, [sb]
	ldrsh r0, [sp, #2]
	add r0, r1, r0, lsl #2
	str r0, [sb]
	b _02045960
_02044E8C:
	ldr r1, [sb, #4]
	mov r0, r1
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r0, [r1]
	cmp r0, #0
	bne _02045960
	ldr r1, [sb]
	ldrsh r0, [sp, #2]
	add r0, r1, r0, lsl #2
	str r0, [sb]
	b _02045960
_02044EBC:
	ldr r1, [sb, #4]
	mov r0, r1
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r0, [r1]
	cmp r0, #0
	beq _02045960
	ldrsh r1, [sp, #2]
	ldr r2, [sb]
	mov r0, #4
	add r1, r2, r1, lsl #2
	str r1, [sb]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02044EF0:
	ldr r1, [sb, #4]
	mov r0, r1
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r0, [r1]
	cmp r0, #0
	bne _02045960
	ldrsh r1, [sp, #2]
	ldr r2, [sb]
	mov r0, #4
	add r1, r2, r1, lsl #2
	str r1, [sb]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02044F24:
	ldr r1, [sb, #4]
	mov r0, r1
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r0, [r1]
	cmp r0, #0
	beq _02045960
	ldrsh r0, [sp, #2]
	ldr r1, [sb]
	add r0, r1, r0, lsl #2
	str r0, [sb]
	ldr r0, [sb, #4]
	sub r0, r0, #4
	str r0, [sb, #4]
	str r6, [r0]
	b _02045960
_02044F64:
	ldr r1, [sb, #4]
	mov r0, r1
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r0, [r1]
	cmp r0, #0
	bne _02045960
	ldrsh r0, [sp, #2]
	ldr r1, [sb]
	add r0, r1, r0, lsl #2
	str r0, [sb]
	ldr r0, [sb, #4]
	sub r0, r0, #4
	str r0, [sb, #4]
	str r5, [r0]
	b _02045960
_02044FA4:
	ldr r0, [sb, #4]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, r0
	bne _02044FD8
	ldr r1, [sb]
	ldrsh r0, [sp, #2]
	add r0, r1, r0, lsl #2
	str r0, [sb]
	ldr r0, [sb, #4]
	add r0, r0, #8
	str r0, [sb, #4]
	b _02045960
_02044FD8:
	ldr r0, [sb, #4]
	add r0, r0, #4
	str r0, [sb, #4]
	b _02045960
_02044FE8:
	ldr r1, [sb]
	ldrsh r0, [sp, #2]
	add r0, r1, r0, lsl #2
	str r0, [sb]
	b _02045960
_02044FFC:
	ldrb r1, [sp, #1]
	ldr r0, [sb, #4]
	ldr r0, [r0]
	cmp r1, r0
	bne _02045960
	ldr r1, [sb]
	ldrsh r0, [sp, #2]
	add r0, r1, r0, lsl #2
	str r0, [sb]
	ldr r0, [sb, #4]
	add r0, r0, #4
	str r0, [sb, #4]
	b _02045960
_02045030:
	ldrsh r0, [sp, #2]
	ldrb r7, [sp, #1]
	and r3, r0, fp
	mov r0, r0, asr #0xa
	and r2, r0, #0x3f
	ldr r0, [sl, r2, lsl #2]
	cmp r0, #0
	bne _02045060
	ldr r1, _020459A0 ; =s_fsc_undef_syscall_page_d_0208e28c
	mov r0, sb
	bl sub_02044BAC
	b _0204508C
_02045060:
	ldr ip, [r0, r3, lsl #2]
	cmp ip, #0
	bne _0204507C
	ldr r1, _020459A4 ; =s_fsc_undef_syscall_function_page_0208e2a8
	mov r0, sb
	bl sub_02044BAC
	b _0204508C
_0204507C:
	ldr r0, [sb, #4]
	mov r1, r7
	blx ip
	str r0, [sb, #0x10]
_0204508C:
	ldr r0, [sb]
	cmp r0, #0
	beq _02045960
	ldr r0, [sb, #4]
	add r8, r8, #1
	add r0, r0, r7, lsl #2
	str r0, [sb, #4]
	b _02045960
_020450AC:
	ldr r0, [sb]
	add r3, r0, #4
	str r3, [sb]
	ldr r2, [sb, #8]
	ldr r0, [r0]
	mov r1, r2
	add r1, r1, #4
	str r1, [sb, #8]
	str r3, [r2]
	ldr r2, [sb, #8]
	ldr r3, [sb, #0xc]
	mov r1, r2
	add r1, r1, #4
	str r1, [sb, #8]
	str r3, [r2]
	ldr r2, [sb, #8]
	ldr r3, [sb, #0x14]
	mov r1, r2
	add r1, r1, #4
	str r1, [sb, #8]
	str r3, [r2]
	ldr r1, [sb, #4]
	str r1, [sb, #0xc]
	ldr r1, [sb]
	add r0, r1, r0, lsl #2
	str r0, [sb]
	b _02045960
_02045118:
	ldr r2, [sb, #8]
	ldr r3, [sb]
	mov r1, r2
	add r1, r1, #4
	str r1, [sb, #8]
	str r3, [r2]
	ldr r2, [sb, #8]
	ldr r3, [sb, #0xc]
	mov r1, r2
	add r1, r1, #4
	str r1, [sb, #8]
	str r3, [r2]
	ldr r2, [sb, #8]
	ldr r3, [sb, #0x14]
	mov r1, r2
	add r1, r1, #4
	str r1, [sb, #8]
	str r3, [r2]
	ldr r1, [sb, #4]
	ldrsh r0, [sp, #2]
	str r1, [sb, #0xc]
	ldr r1, [sb]
	add r0, r1, r0, lsl #2
	str r0, [sb]
	b _02045960
_0204517C:
	mov r0, sb
	ldrsh r1, [sp, #2]
	bl sub_02044C08
	cmp r0, #0
	beq _02045960
	ldr r2, [sb, #8]
	ldr r3, [sb]
	mov r1, r2
	add r1, r1, #4
	str r1, [sb, #8]
	str r3, [r2]
	ldr r2, [sb, #8]
	ldr r3, [sb, #0xc]
	mov r1, r2
	add r1, r1, #4
	str r1, [sb, #8]
	str r3, [r2]
	ldr r2, [sb, #8]
	ldr r3, [sb, #0x14]
	mov r1, r2
	add r1, r1, #4
	str r1, [sb, #8]
	str r3, [r2]
	ldr r1, [r0, #0xc]
	ldr r1, [r1, #8]
	str r1, [sb]
	ldr r0, [r0, #8]
	str r0, [sb, #0x14]
	ldr r0, [sb, #4]
	str r0, [sb, #0xc]
	b _02045960
_020451F8:
	ldr r1, [sb, #8]
	ldrb r0, [sp, #1]
	sub r1, r1, #4
	str r1, [sb, #8]
	cmp r0, #0
	ldr r0, [r1]
	str r0, [sb, #0x14]
	ldr r0, [sb, #8]
	sub r0, r0, #4
	str r0, [sb, #8]
	ldr r0, [r0]
	str r0, [sb, #0xc]
	ldr r0, [sb, #8]
	sub r0, r0, #4
	str r0, [sb, #8]
	ldr r0, [r0]
	str r0, [sb]
	beq _0204525C
	ldr r1, [sb, #4]
	add r8, r8, #1
	mov r0, r1
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r0, [r1]
	str r0, [sb, #0x10]
_0204525C:
	ldr r1, [sb, #4]
	ldrsh r0, [sp, #2]
	add r0, r1, r0, lsl #2
	str r0, [sb, #4]
	b _02045960
_02045270:
	ldr r1, [sb, #4]
	ldrsh r0, [sp, #2]
	sub r0, r1, r0, lsl #2
	str r0, [sb, #4]
	b _02045960
_02045284:
	ldr r1, [sb, #4]
	ldrsh r0, [sp, #2]
	add r0, r1, r0, lsl #2
	str r0, [sb, #4]
	b _02045960
_02045298:
	ldrsh r1, [sp, #2]
	ldr r2, [sb, #4]
	mov r0, r2
	ldr r1, [r2, r1, lsl #2]
	sub r0, r0, #4
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_020452B8:
	ldrsh r1, [sp, #2]
	ldr r2, [sb, #0xc]
	ldr r0, [sb, #4]
	ldr r1, [r2, r1, lsl #2]
	sub r0, r0, #4
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_020452D8:
	ldrb r0, [sp, #1]
	cmp r0, #0
	beq _020452F8
	cmp r0, #1
	beq _0204531C
	cmp r0, #2
	beq _02045348
	b _02045960
_020452F8:
	ldr r2, [sb, #4]
	ldrsh r0, [sp, #2]
	mov r1, r2
	add r1, r1, #4
	str r1, [sb, #4]
	ldr r2, [r2]
	ldr r1, [sb, #0xc]
	str r2, [r1, r0, lsl #2]
	b _02045960
_0204531C:
	ldr r1, [sb, #4]
	ldrsh r2, [sp, #2]
	mov r0, r1
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r3, [sb, #0xc]
	ldr r0, [r1]
	ldr r1, [r3, r2, lsl #2]
	add r0, r1, r0
	str r0, [r3, r2, lsl #2]
	b _02045960
_02045348:
	ldr r1, [sb, #4]
	ldrsh r2, [sp, #2]
	mov r0, r1
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r3, [sb, #0xc]
	ldr r0, [r1]
	ldr r1, [r3, r2, lsl #2]
	sub r0, r1, r0
	str r0, [r3, r2, lsl #2]
	b _02045960
_02045374:
	ldr r1, [sb, #4]
	ldrsh r0, [sp, #2]
	sub r1, r1, #4
	str r1, [sb, #4]
	str r0, [r1]
	b _02045960
_0204538C:
	ldr r1, [sb]
	add r0, r1, #4
	str r0, [sb]
	ldr r0, [sb, #4]
	ldr r1, [r1]
	sub r0, r0, #4
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_020453B0:
	ldr r1, [sb, #4]
	mov r0, r0, asr #8
	sub r2, r1, #4
	str r2, [sb, #4]
	ldr r1, [sb]
	add r0, r1, r0, lsl #2
	str r0, [r2]
	b _02045960
_020453D0:
	ldrb r0, [sp, #1]
	mov r1, #0
	ldrsh r2, [sp, #2]
	tst r0, #0x10
	beq _020453FC
	ldr r1, [sb, #4]
	mov r0, r1
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r0, [r1]
	mul r1, r2, r0
_020453FC:
	ldr r3, [sb, #4]
	cmp r2, #1
	mov r0, r3
	add r0, r0, #4
	str r0, [sb, #4]
	ldr r0, [r3]
	beq _02045448
	cmp r2, #2
	ldr r2, [sb, #4]
	sub r2, r2, #4
	beq _02045438
	str r2, [sb, #4]
	ldr r0, [r1, r0]
	str r0, [r2]
	b _02045960
_02045438:
	str r2, [sb, #4]
	ldrsh r0, [r1, r0]
	str r0, [r2]
	b _02045960
_02045448:
	ldr r2, [sb, #4]
	sub r2, r2, #4
	str r2, [sb, #4]
	ldrsb r0, [r1, r0]
	str r0, [r2]
	b _02045960
_02045460:
	ldrb r0, [sp, #1]
	mov r7, #0
	ldrsh ip, [sp, #2]
	tst r0, #0x10
	beq _0204548C
	ldr r2, [sb, #4]
	mov r1, r2
	add r1, r1, #4
	str r1, [sb, #4]
	ldr r1, [r2]
	mul r7, ip, r1
_0204548C:
	ldr r1, [sb, #4]
	ands r0, r0, #0xf
	mov r2, r1
	add r3, r2, #4
	str r3, [sb, #4]
	ldr r2, [r1]
	add r1, r3, #4
	str r1, [sb, #4]
	ldr r1, [r3]
	beq _020454C8
	cmp r0, #1
	beq _020454F4
	cmp r0, #2
	beq _0204553C
	b _02045960
_020454C8:
	cmp ip, #1
	beq _020454EC
	cmp ip, #2
	beq _020454E4
	cmp ip, #4
	streq r1, [r7, r2]
	b _02045960
_020454E4:
	strh r1, [r7, r2]
	b _02045960
_020454EC:
	strb r1, [r7, r2]
	b _02045960
_020454F4:
	cmp ip, #1
	beq _0204552C
	cmp ip, #2
	beq _0204551C
	cmp ip, #4
	bne _02045960
	ldr r0, [r7, r2]
	add r0, r0, r1
	str r0, [r7, r2]
	b _02045960
_0204551C:
	ldrsh r0, [r7, r2]
	add r0, r0, r1
	strh r0, [r7, r2]
	b _02045960
_0204552C:
	ldrsb r0, [r7, r2]
	add r0, r0, r1
	strb r0, [r7, r2]
	b _02045960
_0204553C:
	cmp ip, #1
	beq _02045574
	cmp ip, #2
	beq _02045564
	cmp ip, #4
	bne _02045960
	ldr r0, [r7, r2]
	sub r0, r0, r1
	str r0, [r7, r2]
	b _02045960
_02045564:
	ldrsh r0, [r7, r2]
	sub r0, r0, r1
	strh r0, [r7, r2]
	b _02045960
_02045574:
	ldrsb r0, [r7, r2]
	sub r0, r0, r1
	strb r0, [r7, r2]
	b _02045960
_02045584:
	ldr r0, [sb, #4]
	sub r1, r0, #4
	str r1, [sb, #4]
	ldr r0, [sb, #0x10]
	str r0, [r1]
	b _02045960
_0204559C:
	ldr r1, [sb, #4]
	sub r2, r1, #4
	str r2, [sb, #4]
	ldr r1, [sb, #0x14]
	ldr r1, [r1, #0xc]
	add r0, r1, r0, asr #8
	str r0, [r2]
	b _02045960
_020455BC:
	ldrsh r0, [sp, #2]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _020455F8
_020455CC: ; jump table
	b _020455F8 ; case 0
	b _02045640 ; case 1
	b _0204561C ; case 2
	b _02045664 ; case 3
	b _02045688 ; case 4
	b _020456AC ; case 5
	b _020456D0 ; case 6
	b _020456F4 ; case 7
	b _02045718 ; case 8
	b _0204572C ; case 9
	b _02045748 ; case 10
_020455F8:
	ldr r1, [sb, #4]
	mov r0, r1
	ldr r2, [r1, #4]
	ldr r1, [r1]
	add r0, r0, #4
	add r1, r2, r1
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_0204561C:
	ldr r1, [sb, #4]
	mov r0, r1
	ldr r2, [r1, #4]
	ldr r1, [r1]
	add r0, r0, #4
	mul r1, r2, r1
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_02045640:
	ldr r1, [sb, #4]
	mov r0, r1
	ldr r2, [r1, #4]
	ldr r1, [r1]
	add r0, r0, #4
	sub r1, r2, r1
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_02045664:
	ldr r1, [sb, #4]
	ldr r0, [r1, #4]
	ldr r1, [r1]
	bl _s32_div_f
	ldr r1, [sb, #4]
	add r1, r1, #4
	str r1, [sb, #4]
	str r0, [r1]
	b _02045960
_02045688:
	ldr r1, [sb, #4]
	ldr r0, [r1, #4]
	ldr r1, [r1]
	bl _s32_div_f
	ldr r0, [sb, #4]
	add r0, r0, #4
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_020456AC:
	ldr r1, [sb, #4]
	mov r0, r1
	ldr r2, [r1, #4]
	ldr r1, [r1]
	add r0, r0, #4
	and r1, r2, r1
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_020456D0:
	ldr r1, [sb, #4]
	mov r0, r1
	ldr r2, [r1, #4]
	ldr r1, [r1]
	add r0, r0, #4
	orr r1, r2, r1
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_020456F4:
	ldr r1, [sb, #4]
	mov r0, r1
	ldr r2, [r1, #4]
	ldr r1, [r1]
	add r0, r0, #4
	eor r1, r2, r1
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_02045718:
	ldr r1, [sb, #4]
	ldr r0, [r1]
	mvn r0, r0
	str r0, [r1]
	b _02045960
_0204572C:
	ldr r1, [sb, #4]
	ldr r0, [r1]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	str r0, [r1]
	b _02045960
_02045748:
	ldr r1, [sb, #4]
	ldr r0, [r1]
	rsb r0, r0, #0
	str r0, [r1]
	b _02045960
_0204575C:
	mov r0, sb
	mov r1, r4
	bl sub_02044BAC
	b _02045960
_0204576C:
	ldrsh r0, [sp, #2]
	sub r0, r0, #0xb
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02045798
_02045780: ; jump table
	b _02045798 ; case 0
	b _020457C4 ; case 1
	b _020457F0 ; case 2
	b _0204581C ; case 3
	b _02045848 ; case 4
	b _02045874 ; case 5
_02045798:
	ldr r0, [sb, #4]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	cmp r1, r0
	ldr r0, [sb, #4]
	moveq r1, #1
	add r0, r0, #4
	movne r1, #0
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_020457C4:
	ldr r0, [sb, #4]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	cmp r1, r0
	ldr r0, [sb, #4]
	movne r1, #1
	add r0, r0, #4
	moveq r1, #0
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_020457F0:
	ldr r0, [sb, #4]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	cmp r1, r0
	ldr r0, [sb, #4]
	movgt r1, #1
	add r0, r0, #4
	movle r1, #0
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_0204581C:
	ldr r0, [sb, #4]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	cmp r1, r0
	ldr r0, [sb, #4]
	movlt r1, #1
	add r0, r0, #4
	movge r1, #0
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_02045848:
	ldr r0, [sb, #4]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	cmp r1, r0
	ldr r0, [sb, #4]
	movge r1, #1
	add r0, r0, #4
	movlt r1, #0
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_02045874:
	ldr r0, [sb, #4]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	cmp r1, r0
	ldr r0, [sb, #4]
	movle r1, #1
	add r0, r0, #4
	movgt r1, #0
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_020458A0:
	mov r0, sb
	mov r1, r4
	bl sub_02044BAC
	b _02045960
_020458B0:
	ldrsh r0, [sp, #2]
	cmp r0, #0
	beq _020458CC
	cmp r0, #1
	beq _020458F0
	cmp r0, #2
	beq _02045914
_020458CC:
	ldr r1, [sb, #4]
	mov r0, r1
	ldr r2, [r1, #4]
	ldr r1, [r1]
	add r0, r0, #4
	mov r1, r2, lsl r1
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_020458F0:
	ldr r1, [sb, #4]
	mov r0, r1
	ldr r2, [r1, #4]
	ldr r1, [r1]
	add r0, r0, #4
	mov r1, r2, asr r1
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_02045914:
	ldr r1, [sb, #4]
	mov r0, r1
	ldr r2, [r1, #4]
	ldr r1, [r1]
	add r0, r0, #4
	mov r1, r2, lsr r1
	str r0, [sb, #4]
	str r1, [r0]
	b _02045960
_02045938:
	mov r0, sb
	mov r1, r4
	bl sub_02044BAC
	b _02045960
_02045948:
	ldr r2, [sp]
	ldr r1, _020459A8 ; =s_fsc_unknown_opcode_x_0208e2f8
	mov r0, sb
	bl sub_02044BAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02045960:
	ldr r1, [sb, #4]
	ldr r0, [sb, #8]
	cmp r1, r0
	bgt _02045980
	ldr r1, _020459AC ; =s_fsc_stack_overflow_stacksize_d_0208e310
	ldr r2, [sb, #0x18]
	mov r0, sb
	bl sub_02044BAC
_02045980:
	cmp r8, #0
	sub r8, r8, #1
	bne _02044CE4
_0204598C:
	mov r0, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02045994: .word MAIN_BSS_0210CED8
_02045998: .word s_fsc_float_operator_not_imprement_0208e2d4
_0204599C: .word 0x000003FF
_020459A0: .word s_fsc_undef_syscall_page_d_0208e28c
_020459A4: .word s_fsc_undef_syscall_function_page_0208e2a8
_020459A8: .word s_fsc_unknown_opcode_x_0208e2f8
_020459AC: .word s_fsc_stack_overflow_stacksize_d_0208e310

	arm_func_start sub_020459B0
sub_020459B0: ; 0x020459B0
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #8]
	ldr lr, [r0]
	add r3, ip, #4
	str r3, [r0, #8]
	str lr, [ip]
	ldr ip, [r0, #8]
	ldr lr, [r0, #0xc]
	add r3, ip, #4
	str r3, [r0, #8]
	str lr, [ip]
	ldr ip, [r0, #8]
	ldr lr, [r0, #0x14]
	add r3, ip, #4
	str r3, [r0, #8]
	str lr, [ip]
	mov r3, #0
	str r3, [r0, #0x20]
	ldr r3, [r0, #4]
	str r3, [r0, #0xc]
	str r1, [r0, #0x14]
	str r2, [r0]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020459B0

	arm_func_start thunk_FUN_020459b0
thunk_FUN_020459b0: ; 0x02045A0C
	ldr ip, _02045A14 ; =sub_020459B0
	bx ip
	.align 2, 0
_02045A14: .word sub_020459B0
	arm_func_end thunk_FUN_020459b0

	arm_func_start sub_02045A18
sub_02045A18: ; 0x02045A18
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldrsb ip, [r2]
	mov r4, r1
	mov r5, r0
	mov r1, r2
	cmp ip, #0x30
	add r3, sp, #0
	blt _02045A48
	cmp ip, #0x39
	suble lr, ip, #0x2f
	ble _02045A94
	arm_func_end sub_02045A18
_02045A48:
	cmp ip, #0x41
	blt _02045A5C
	cmp ip, #0x5a
	suble lr, ip, #0x36
	ble _02045A94
_02045A5C:
	cmp ip, #0x61
	blt _02045A70
	cmp ip, #0x7a
	suble lr, ip, #0x56
	ble _02045A94
_02045A70:
	cmp ip, #0x5f
	moveq lr, #0x25
	beq _02045A94
	cmp ip, #0x2d
	moveq lr, #0x26
	beq _02045A94
	cmp ip, #0x2f
	moveq lr, #0x27
	movne lr, #0
_02045A94:
	cmp lr, #0
	addne r1, r1, #1
	mov r0, #0x28
	ldrsb ip, [r1]
	mul r0, lr, r0
	cmp ip, #0x30
	blt _02045ABC
	cmp ip, #0x39
	suble ip, ip, #0x2f
	ble _02045B08
_02045ABC:
	cmp ip, #0x41
	blt _02045AD0
	cmp ip, #0x5a
	suble ip, ip, #0x36
	ble _02045B08
_02045AD0:
	cmp ip, #0x61
	blt _02045AE4
	cmp ip, #0x7a
	suble ip, ip, #0x56
	ble _02045B08
_02045AE4:
	cmp ip, #0x5f
	moveq ip, #0x25
	beq _02045B08
	cmp ip, #0x2d
	moveq ip, #0x26
	beq _02045B08
	cmp ip, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02045B08:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _02045B34
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02045B80
_02045B34:
	cmp lr, #0x41
	blt _02045B48
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02045B80
_02045B48:
	cmp lr, #0x61
	blt _02045B5C
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02045B80
_02045B5C:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02045B80
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02045B80
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02045B80:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _02045BAC
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02045BF8
_02045BAC:
	cmp lr, #0x41
	blt _02045BC0
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02045BF8
_02045BC0:
	cmp lr, #0x61
	blt _02045BD4
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02045BF8
_02045BD4:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02045BF8
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02045BF8
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02045BF8:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _02045C24
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02045C70
_02045C24:
	cmp lr, #0x41
	blt _02045C38
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02045C70
_02045C38:
	cmp lr, #0x61
	blt _02045C4C
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02045C70
_02045C4C:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02045C70
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02045C70
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02045C70:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _02045C9C
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02045CE8
_02045C9C:
	cmp lr, #0x41
	blt _02045CB0
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02045CE8
_02045CB0:
	cmp lr, #0x61
	blt _02045CC4
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02045CE8
_02045CC4:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02045CE8
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02045CE8
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02045CE8:
	cmp ip, #0
	add r0, r0, ip
	addne r1, r1, #1
	str r0, [r3]
	ldrsb r0, [r1]
	cmp r0, #0x30
	blt _02045D10
	cmp r0, #0x39
	suble lr, r0, #0x2f
	ble _02045D5C
_02045D10:
	cmp r0, #0x41
	blt _02045D24
	cmp r0, #0x5a
	suble lr, r0, #0x36
	ble _02045D5C
_02045D24:
	cmp r0, #0x61
	blt _02045D38
	cmp r0, #0x7a
	suble lr, r0, #0x56
	ble _02045D5C
_02045D38:
	cmp r0, #0x5f
	moveq lr, #0x25
	beq _02045D5C
	cmp r0, #0x2d
	moveq lr, #0x26
	beq _02045D5C
	cmp r0, #0x2f
	moveq lr, #0x27
	movne lr, #0
_02045D5C:
	cmp lr, #0
	addne r1, r1, #1
	mov r0, #0x28
	ldrsb ip, [r1]
	mul r0, lr, r0
	cmp ip, #0x30
	blt _02045D84
	cmp ip, #0x39
	suble ip, ip, #0x2f
	ble _02045DD0
_02045D84:
	cmp ip, #0x41
	blt _02045D98
	cmp ip, #0x5a
	suble ip, ip, #0x36
	ble _02045DD0
_02045D98:
	cmp ip, #0x61
	blt _02045DAC
	cmp ip, #0x7a
	suble ip, ip, #0x56
	ble _02045DD0
_02045DAC:
	cmp ip, #0x5f
	moveq ip, #0x25
	beq _02045DD0
	cmp ip, #0x2d
	moveq ip, #0x26
	beq _02045DD0
	cmp ip, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02045DD0:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _02045DFC
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02045E48
_02045DFC:
	cmp lr, #0x41
	blt _02045E10
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02045E48
_02045E10:
	cmp lr, #0x61
	blt _02045E24
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02045E48
_02045E24:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02045E48
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02045E48
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02045E48:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _02045E74
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02045EC0
_02045E74:
	cmp lr, #0x41
	blt _02045E88
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02045EC0
_02045E88:
	cmp lr, #0x61
	blt _02045E9C
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02045EC0
_02045E9C:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02045EC0
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02045EC0
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02045EC0:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _02045EEC
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02045F38
_02045EEC:
	cmp lr, #0x41
	blt _02045F00
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02045F38
_02045F00:
	cmp lr, #0x61
	blt _02045F14
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02045F38
_02045F14:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02045F38
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02045F38
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02045F38:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb r1, [r1]
	mul r0, ip, r0
	cmp r1, #0x30
	blt _02045F64
	cmp r1, #0x39
	suble r1, r1, #0x2f
	ble _02045FB0
_02045F64:
	cmp r1, #0x41
	blt _02045F78
	cmp r1, #0x5a
	suble r1, r1, #0x36
	ble _02045FB0
_02045F78:
	cmp r1, #0x61
	blt _02045F8C
	cmp r1, #0x7a
	suble r1, r1, #0x56
	ble _02045FB0
_02045F8C:
	cmp r1, #0x5f
	moveq r1, #0x25
	beq _02045FB0
	cmp r1, #0x2d
	moveq r1, #0x26
	beq _02045FB0
	cmp r1, #0x2f
	moveq r1, #0x27
	movne r1, #0
_02045FB0:
	add ip, r0, r1
	mov r0, r4
	mov r1, r2
	str ip, [r3, #4]
	bl sub_02044518
	movs r2, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl thunk_FUN_020459b0
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02045FEC
sub_02045FEC: ; 0x02045FEC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r5, [r7]
	ldr r6, [r7, #0x20]
	bl sub_020459B0
	ldr r0, [r7]
	cmp r0, r5
	beq _02046034
	mov r4, #1
	arm_func_end sub_02045FEC
_02046010:
	mov r0, r7
	mov r1, r4
	bl sub_02044C9C
	tst r0, #3
	mvnne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7]
	cmp r0, r5
	bne _02046010
_02046034:
	str r6, [r7, #0x20]
	ldr r0, [r7, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02046040
sub_02046040: ; 0x02046040
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldrsb ip, [r2]
	mov r5, r1
	mov r4, r3
	mov r6, r0
	mov r1, r2
	cmp ip, #0x30
	add r3, sp, #0
	blt _02046074
	cmp ip, #0x39
	suble lr, ip, #0x2f
	ble _020460C0
	arm_func_end sub_02046040
_02046074:
	cmp ip, #0x41
	blt _02046088
	cmp ip, #0x5a
	suble lr, ip, #0x36
	ble _020460C0
_02046088:
	cmp ip, #0x61
	blt _0204609C
	cmp ip, #0x7a
	suble lr, ip, #0x56
	ble _020460C0
_0204609C:
	cmp ip, #0x5f
	moveq lr, #0x25
	beq _020460C0
	cmp ip, #0x2d
	moveq lr, #0x26
	beq _020460C0
	cmp ip, #0x2f
	moveq lr, #0x27
	movne lr, #0
_020460C0:
	cmp lr, #0
	addne r1, r1, #1
	mov r0, #0x28
	ldrsb ip, [r1]
	mul r0, lr, r0
	cmp ip, #0x30
	blt _020460E8
	cmp ip, #0x39
	suble ip, ip, #0x2f
	ble _02046134
_020460E8:
	cmp ip, #0x41
	blt _020460FC
	cmp ip, #0x5a
	suble ip, ip, #0x36
	ble _02046134
_020460FC:
	cmp ip, #0x61
	blt _02046110
	cmp ip, #0x7a
	suble ip, ip, #0x56
	ble _02046134
_02046110:
	cmp ip, #0x5f
	moveq ip, #0x25
	beq _02046134
	cmp ip, #0x2d
	moveq ip, #0x26
	beq _02046134
	cmp ip, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02046134:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _02046160
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _020461AC
_02046160:
	cmp lr, #0x41
	blt _02046174
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _020461AC
_02046174:
	cmp lr, #0x61
	blt _02046188
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _020461AC
_02046188:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _020461AC
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _020461AC
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_020461AC:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _020461D8
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02046224
_020461D8:
	cmp lr, #0x41
	blt _020461EC
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02046224
_020461EC:
	cmp lr, #0x61
	blt _02046200
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02046224
_02046200:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02046224
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02046224
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02046224:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _02046250
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _0204629C
_02046250:
	cmp lr, #0x41
	blt _02046264
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _0204629C
_02046264:
	cmp lr, #0x61
	blt _02046278
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _0204629C
_02046278:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _0204629C
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _0204629C
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_0204629C:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _020462C8
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02046314
_020462C8:
	cmp lr, #0x41
	blt _020462DC
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02046314
_020462DC:
	cmp lr, #0x61
	blt _020462F0
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02046314
_020462F0:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02046314
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02046314
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02046314:
	cmp ip, #0
	add r0, r0, ip
	addne r1, r1, #1
	str r0, [r3]
	ldrsb r0, [r1]
	cmp r0, #0x30
	blt _0204633C
	cmp r0, #0x39
	suble lr, r0, #0x2f
	ble _02046388
_0204633C:
	cmp r0, #0x41
	blt _02046350
	cmp r0, #0x5a
	suble lr, r0, #0x36
	ble _02046388
_02046350:
	cmp r0, #0x61
	blt _02046364
	cmp r0, #0x7a
	suble lr, r0, #0x56
	ble _02046388
_02046364:
	cmp r0, #0x5f
	moveq lr, #0x25
	beq _02046388
	cmp r0, #0x2d
	moveq lr, #0x26
	beq _02046388
	cmp r0, #0x2f
	moveq lr, #0x27
	movne lr, #0
_02046388:
	cmp lr, #0
	addne r1, r1, #1
	mov r0, #0x28
	ldrsb ip, [r1]
	mul r0, lr, r0
	cmp ip, #0x30
	blt _020463B0
	cmp ip, #0x39
	suble ip, ip, #0x2f
	ble _020463FC
_020463B0:
	cmp ip, #0x41
	blt _020463C4
	cmp ip, #0x5a
	suble ip, ip, #0x36
	ble _020463FC
_020463C4:
	cmp ip, #0x61
	blt _020463D8
	cmp ip, #0x7a
	suble ip, ip, #0x56
	ble _020463FC
_020463D8:
	cmp ip, #0x5f
	moveq ip, #0x25
	beq _020463FC
	cmp ip, #0x2d
	moveq ip, #0x26
	beq _020463FC
	cmp ip, #0x2f
	moveq ip, #0x27
	movne ip, #0
_020463FC:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _02046428
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02046474
_02046428:
	cmp lr, #0x41
	blt _0204643C
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02046474
_0204643C:
	cmp lr, #0x61
	blt _02046450
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02046474
_02046450:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02046474
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02046474
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02046474:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _020464A0
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _020464EC
_020464A0:
	cmp lr, #0x41
	blt _020464B4
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _020464EC
_020464B4:
	cmp lr, #0x61
	blt _020464C8
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _020464EC
_020464C8:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _020464EC
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _020464EC
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_020464EC:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb lr, [r1]
	mul r0, ip, r0
	cmp lr, #0x30
	blt _02046518
	cmp lr, #0x39
	suble ip, lr, #0x2f
	ble _02046564
_02046518:
	cmp lr, #0x41
	blt _0204652C
	cmp lr, #0x5a
	suble ip, lr, #0x36
	ble _02046564
_0204652C:
	cmp lr, #0x61
	blt _02046540
	cmp lr, #0x7a
	suble ip, lr, #0x56
	ble _02046564
_02046540:
	cmp lr, #0x5f
	moveq ip, #0x25
	beq _02046564
	cmp lr, #0x2d
	moveq ip, #0x26
	beq _02046564
	cmp lr, #0x2f
	moveq ip, #0x27
	movne ip, #0
_02046564:
	cmp ip, #0
	addne r1, r1, #1
	add ip, r0, ip
	mov r0, #0x28
	ldrsb r1, [r1]
	mul r0, ip, r0
	cmp r1, #0x30
	blt _02046590
	cmp r1, #0x39
	suble r1, r1, #0x2f
	ble _020465DC
_02046590:
	cmp r1, #0x41
	blt _020465A4
	cmp r1, #0x5a
	suble r1, r1, #0x36
	ble _020465DC
_020465A4:
	cmp r1, #0x61
	blt _020465B8
	cmp r1, #0x7a
	suble r1, r1, #0x56
	ble _020465DC
_020465B8:
	cmp r1, #0x5f
	moveq r1, #0x25
	beq _020465DC
	cmp r1, #0x2d
	moveq r1, #0x26
	beq _020465DC
	cmp r1, #0x2f
	moveq r1, #0x27
	movne r1, #0
_020465DC:
	add ip, r0, r1
	mov r0, r5
	mov r1, r2
	str ip, [r3, #4]
	bl sub_02044518
	movs r2, r0
	addeq sp, sp, #8
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r3, r4
	bl sub_02045FEC
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02046618
sub_02046618: ; 0x02046618
	mov r0, #0
	bx lr
	arm_func_end sub_02046618

	arm_func_start sub_02046620
sub_02046620: ; 0x02046620
	stmdb sp!, {r3, lr}
	ldr r1, [r0]
	ldr r0, _02046638 ; =DAT_0208e534
	bl sub_02044340
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02046638: .word DAT_0208e534
	arm_func_end sub_02046620

	arm_func_start sub_0204663C
sub_0204663C: ; 0x0204663C
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1], #4
	bl thunk_FUN_02044308
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_0204663C

	arm_func_start sub_02046654
sub_02046654: ; 0x02046654
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1], #4
	bl thunk_FUN_02044308
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02046654

	arm_func_start sub_0204666C
sub_0204666C: ; 0x0204666C
	ldr r1, [r0]
	ldr r0, [r0, #4]
	smull r2, r0, r1, r0
	adds r2, r2, #0x800
	adc r1, r0, #0
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	bx lr
	arm_func_end sub_0204666C

	arm_func_start sub_0204668C
sub_0204668C: ; 0x0204668C
	ldr ip, _0204669C ; =FX_Div
	mov r1, r0
	ldmia r1, {r0, r1}
	bx ip
	.align 2, 0
_0204669C: .word FX_Div
	arm_func_end sub_0204668C

	arm_func_start sub_020466A0
sub_020466A0: ; 0x020466A0
	ldr r0, [r0]
	ldr r1, _020466C0 ; =FX_SinCosTable_
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r0, r0, lsl #2
	ldrsh r0, [r1, r0]
	bx lr
	.align 2, 0
_020466C0: .word FX_SinCosTable_
	arm_func_end sub_020466A0

	arm_func_start sub_020466C4
sub_020466C4: ; 0x020466C4
	ldr r0, [r0]
	ldr r1, _020466EC ; =FX_SinCosTable_
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r0, r0, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r1, r0]
	bx lr
	.align 2, 0
_020466EC: .word FX_SinCosTable_
	arm_func_end sub_020466C4

	arm_func_start sub_020466F0
sub_020466F0: ; 0x020466F0
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl FX_SinFx64c
	mov r0, r0, lsr #0x14
	orr r0, r0, r1, lsl #12
	ldmia sp!, {r3, pc}
	arm_func_end sub_020466F0

	arm_func_start sub_02046708
sub_02046708: ; 0x02046708
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	bl FX_CosFx64c
	mov r0, r0, lsr #0x14
	orr r0, r0, r1, lsl #12
	ldmia sp!, {r3, pc}
	arm_func_end sub_02046708

	arm_func_start sub_02046720
sub_02046720: ; 0x02046720
	ldr r1, _02046754 ; =MAIN_BSS_0210CEC8
	ldr r0, [r0]
	ldmia r1, {r2, r3, ip}
	mla r2, r3, r2, ip
	mov r0, r0, lsl #0x10
	str r2, [r1]
	movs r1, r0, lsr #0x10
	mov r0, r2, lsr #0x10
	mulne r1, r0, r1
	movne r0, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	.align 2, 0
_02046754: .word MAIN_BSS_0210CEC8
	arm_func_end sub_02046720

	arm_func_start sub_02046758
sub_02046758: ; 0x02046758
	stmdb sp!, {r4, lr}
	ldr r2, _0204679C ; =MAIN_BSS_0210CEC8
	ldr r1, _020467A0 ; =0x00007FFF
	ldmia r2, {r3, ip, lr}
	mla lr, ip, r3, lr
	ldr r4, [r0]
	mov r0, lr, lsr #0x10
	mov r0, r0, lsl #0x10
	and r0, r1, r0, lsr #16
	mov r0, r0, asr #3
	smull r3, r1, r0, r4
	adds r0, r3, #0x800
	adc r1, r1, #0
	mov r0, r0, lsr #0xc
	str lr, [r2]
	orr r0, r0, r1, lsl #20
	ldmia sp!, {r4, pc}
	.align 2, 0
_0204679C: .word MAIN_BSS_0210CEC8
_020467A0: .word 0x00007FFF
	arm_func_end sub_02046758

	arm_func_start sub_020467A4
sub_020467A4: ; 0x020467A4
	stmdb sp!, {r3, lr}
	ldr r3, _020467EC ; =MAIN_BSS_0210CEC8
	ldr r2, _020467F0 ; =0x00007FFF
	ldmia r3, {r1, ip, lr}
	mla lr, ip, r1, lr
	mov r1, lr, lsr #0x10
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	and r1, r2, r1, lsr #16
	mov r1, r1, asr #3
	smull ip, r2, r1, r0
	adds ip, ip, #0x800
	adc r1, r2, #0
	mov r2, ip, lsr #0xc
	orr r2, r2, r1, lsl #20
	str lr, [r3]
	sub r0, r2, r0, asr #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_020467EC: .word MAIN_BSS_0210CEC8
_020467F0: .word 0x00007FFF
	arm_func_end sub_020467A4

	arm_func_start sub_020467F4
sub_020467F4: ; 0x020467F4
	ldr ip, _02046800 ; =FX_Sqrt
	ldr r0, [r0]
	bx ip
	.align 2, 0
_02046800: .word FX_Sqrt
	arm_func_end sub_020467F4

	arm_func_start sub_02046804
sub_02046804: ; 0x02046804
	ldr ip, _02046810 ; =FX_Inv
	ldr r0, [r0]
	bx ip
	.align 2, 0
_02046810: .word FX_Inv
	arm_func_end sub_02046804

	arm_func_start sub_02046814
sub_02046814: ; 0x02046814
	ldr ip, _02046820 ; =FX_InvSqrt
	ldr r0, [r0]
	bx ip
	.align 2, 0
_02046820: .word FX_InvSqrt
	arm_func_end sub_02046814

	arm_func_start sub_02046824
sub_02046824: ; 0x02046824
	ldr r1, [r0]
	ldr r0, _0204683C ; =0x000011DE
	mov r1, r1, asr #6
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	bx lr
	.align 2, 0
_0204683C: .word 0x000011DE
	arm_func_end sub_02046824

	arm_func_start sub_02046840
sub_02046840: ; 0x02046840
	ldr r2, [r0]
	ldr r0, _02046870 ; =0x000394CD
	mov r1, #0
	umull ip, r3, r2, r0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	adds r2, ip, #0x800
	mla r3, r1, r0, r3
	adc r1, r3, #0
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	bx lr
	.align 2, 0
_02046870: .word 0x000394CD
	arm_func_end sub_02046840

	arm_func_start sub_02046874
sub_02046874: ; 0x02046874
	ldr r0, [r0]
	ldr ip, _02046888 ; =FX_Div
	mov r1, #0x168000
	mov r0, r0, lsl #4
	bx ip
	.align 2, 0
_02046888: .word FX_Div
	arm_func_end sub_02046874

	arm_func_start sub_0204688C
sub_0204688C: ; 0x0204688C
	mov r0, #0
	bx lr
	arm_func_end sub_0204688C

	arm_func_start sub_02046894
sub_02046894: ; 0x02046894
	mov r0, #0
	bx lr
	arm_func_end sub_02046894

	arm_func_start sub_0204689C
sub_0204689C: ; 0x0204689C
	mov r0, #0
	bx lr
	arm_func_end sub_0204689C

	arm_func_start sub_020468A4
sub_020468A4: ; 0x020468A4
	mov r0, #0
	bx lr
	arm_func_end sub_020468A4

	arm_func_start sub_020468AC
sub_020468AC: ; 0x020468AC
	mov r0, #0
	bx lr
	arm_func_end sub_020468AC

	arm_func_start sub_020468B4
sub_020468B4: ; 0x020468B4
	ldr ip, _020468C0 ; =FX_Atan
	ldr r0, [r0]
	bx ip
	.align 2, 0
_020468C0: .word FX_Atan
	arm_func_end sub_020468B4

	arm_func_start sub_020468C4
sub_020468C4: ; 0x020468C4
	ldr ip, _020468D4 ; =FX_Atan2
	mov r1, r0
	ldmia r1, {r0, r1}
	bx ip
	.align 2, 0
_020468D4: .word FX_Atan2
	arm_func_end sub_020468C4

	arm_func_start sub_020468D8
sub_020468D8: ; 0x020468D8
	mov r0, #0
	bx lr
	arm_func_end sub_020468D8

	arm_func_start sub_020468E0
sub_020468E0: ; 0x020468E0
	mov r0, #0
	bx lr
	arm_func_end sub_020468E0

	arm_func_start sub_020468E8
sub_020468E8: ; 0x020468E8
	mov r0, #0
	bx lr
	arm_func_end sub_020468E8

	arm_func_start sub_020468F0
sub_020468F0: ; 0x020468F0
	mov r1, #0x1000
	ldr r0, [r0]
	rsb r1, r1, #0
	and r0, r0, r1
	bx lr
	arm_func_end sub_020468F0

	arm_func_start sub_02046904
sub_02046904: ; 0x02046904
	ldr r0, [r0]
	cmp r0, #0
	rsblt r0, r0, #0
	bx lr
	arm_func_end sub_02046904

	arm_func_start sub_02046914
sub_02046914: ; 0x02046914
	ldr r0, [r0]
	mov r0, r0, lsl #0xc
	bx lr
	arm_func_end sub_02046914

	arm_func_start sub_02046920
sub_02046920: ; 0x02046920
	ldr r0, [r0]
	mov r0, r0, asr #0xc
	bx lr
	arm_func_end sub_02046920

	arm_func_start sub_0204692C
sub_0204692C: ; 0x0204692C
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl strlen
	ldmia sp!, {r3, pc}
	arm_func_end sub_0204692C

	arm_func_start sub_02046948
sub_02046948: ; 0x02046948
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl PXI_Init
	mov r0, #0xf
	mov r1, #1
	bl PXI_IsCallbackReady
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _02046B70 ; =MAIN_BSS_0210CFD8
	ldrh r0, [r8]
	cmp r0, #0
	bne _020469A8
	mvn r4, #2
	arm_func_end sub_02046948
_02046988:
	bl OS_GetLockID
	cmp r0, r4
	moveq r0, #7
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	strh r0, [r8]
	ldrh r0, [r8]
	cmp r0, #0
	beq _02046988
_020469A8:
	bl OS_DisableInterrupts
	ldr r1, _02046B70 ; =MAIN_BSS_0210CFD8
	mov r4, r0
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _020469CC
	bl OS_RestoreInterrupts
	mov r0, #5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020469CC:
	ldrh r2, [r1, #2]
	cmp r2, #0
	beq _020469E4
	bl OS_RestoreInterrupts
	mov r0, #5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020469E4:
	cmp r7, #4
	beq _02046A00
	cmp r7, #8
	beq _02046A40
	cmp r7, #0xc
	beq _02046A80
	b _02046AC8
_02046A00:
	ldrh r1, [r1]
	mov r0, #4
	bl OSi_TryLockVram
	cmp r0, #0
	bne _02046A24
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02046A24:
	ldr r0, _02046B70 ; =MAIN_BSS_0210CFD8
	mov r2, #4
	ldr r1, _02046B74 ; =0x04000242
	strh r2, [r0, #2]
	mov r0, #0x82
	strb r0, [r1]
	b _02046AD4
_02046A40:
	ldrh r1, [r1]
	mov r0, #8
	bl OSi_TryLockVram
	cmp r0, #0
	bne _02046A64
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02046A64:
	ldr r0, _02046B70 ; =MAIN_BSS_0210CFD8
	mov r2, #8
	ldr r1, _02046B78 ; =0x04000243
	strh r2, [r0, #2]
	mov r0, #0x82
	strb r0, [r1]
	b _02046AD4
_02046A80:
	ldrh r1, [r1]
	mov r0, #0xc
	bl OSi_TryLockVram
	cmp r0, #0
	bne _02046AA4
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02046AA4:
	ldr r0, _02046B70 ; =MAIN_BSS_0210CFD8
	mov r2, #0xc
	ldr r1, _02046B74 ; =0x04000242
	strh r2, [r0, #2]
	mov r0, #0x82
	strb r0, [r1]
	mov r0, #0x8a
	strb r0, [r1, #1]
	b _02046AD4
_02046AC8:
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02046AD4:
	mov r0, #0xf
	mov r1, #0
	bl PXI_IsCallbackReady
	cmp r0, #0
	bne _02046AF4
	ldr r1, _02046B7C ; =sub_02046C64
	mov r0, #0xf
	bl PXI_SetFifoRecvCallback
_02046AF4:
	cmp r6, #0
	ldrne r0, _02046B70 ; =MAIN_BSS_0210CFD8
	strne r6, [r0, #8]
	bne _02046B10
	ldr r1, _02046B80 ; =0x02046D3C
	ldr r0, _02046B70 ; =MAIN_BSS_0210CFD8
	str r1, [r0, #8]
_02046B10:
	ldr r3, _02046B70 ; =MAIN_BSS_0210CFD8
	mov r0, #0xf
	mov r1, #0x10000
	mov r2, #0
	str r5, [r3, #4]
	bl PXI_SendWordByFifo
	cmp r0, #0
	bge _02046B60
	ldr r1, _02046B70 ; =MAIN_BSS_0210CFD8
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	bl OSi_UnlockVram
	ldr r1, _02046B70 ; =MAIN_BSS_0210CFD8
	mov r2, #0
	strh r2, [r1, #2]
	mov r0, r4
	str r2, [r1, #8]
	bl OS_RestoreInterrupts
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02046B60:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02046B70: .word MAIN_BSS_0210CFD8
_02046B74: .word 0x04000242
_02046B78: .word 0x04000243
_02046B7C: .word sub_02046C64
_02046B80: .word WvrDummyAsyncCallback

	arm_func_start sub_02046B84
sub_02046B84: ; 0x02046B84
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl PXI_Init
	mov r0, #0xf
	mov r1, #1
	bl PXI_IsCallbackReady
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, pc}
	bl OS_DisableInterrupts
	ldr r1, _02046C58 ; =MAIN_BSS_0210CFD8
	mov r4, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _02046BD0
	bl OS_RestoreInterrupts
	mov r0, #5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02046B84
_02046BD0:
	mov r0, #0xf
	mov r1, #0
	bl PXI_IsCallbackReady
	cmp r0, #0
	bne _02046BF0
	ldr r1, _02046C5C ; =sub_02046C64
	mov r0, #0xf
	bl PXI_SetFifoRecvCallback
_02046BF0:
	cmp r6, #0
	ldrne r0, _02046C58 ; =MAIN_BSS_0210CFD8
	strne r6, [r0, #8]
	bne _02046C0C
	ldr r1, _02046C60 ; =0x02046D3C
	ldr r0, _02046C58 ; =MAIN_BSS_0210CFD8
	str r1, [r0, #8]
_02046C0C:
	ldr r3, _02046C58 ; =MAIN_BSS_0210CFD8
	mov r0, #0xf
	mov r1, #0x20000
	mov r2, #0
	str r5, [r3, #4]
	bl PXI_SendWordByFifo
	cmp r0, #0
	bge _02046C48
	ldr r1, _02046C58 ; =MAIN_BSS_0210CFD8
	mov r2, #0
	mov r0, r4
	str r2, [r1, #8]
	bl OS_RestoreInterrupts
	mov r0, #4
	ldmia sp!, {r4, r5, r6, pc}
_02046C48:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02046C58: .word MAIN_BSS_0210CFD8
_02046C5C: .word sub_02046C64
_02046C60: .word WvrDummyAsyncCallback

	arm_func_start sub_02046C64
sub_02046C64: ; 0x02046C64
	stmdb sp!, {r4, r5, r6, lr}
	mov r0, #0x10000
	ldr r2, _02046D38 ; =MAIN_BSS_0210CFD8
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x10000
	and r6, r1, #0xff
	ldr r4, [r2, #8]
	ldr r5, [r2, #4]
	beq _02046C98
	cmp r0, #0x20000
	beq _02046CD0
	b _02046D10
	arm_func_end sub_02046C64
_02046C98:
	cmp r6, #7
	bne _02046D10
	ldrh r0, [r2, #2]
	cmp r0, #0
	ldrneh r0, [r2]
	cmpne r0, #0
	beq _02046D10
	ldrh r0, [r2, #2]
	ldrh r1, [r2]
	bl OSi_UnlockVram
	ldr r0, _02046D38 ; =MAIN_BSS_0210CFD8
	mov r1, #0
	strh r1, [r0, #2]
	b _02046D10
_02046CD0:
	cmp r6, #0
	bne _02046D04
	ldrh r0, [r2, #2]
	cmp r0, #0
	ldrneh r0, [r2]
	cmpne r0, #0
	beq _02046D04
	ldrh r0, [r2, #2]
	ldrh r1, [r2]
	bl OSi_UnlockVram
	ldr r0, _02046D38 ; =MAIN_BSS_0210CFD8
	mov r1, #0
	strh r1, [r0, #2]
_02046D04:
	mov r0, #0xf
	mov r1, #0
	bl PXI_SetFifoRecvCallback
_02046D10:
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, _02046D38 ; =MAIN_BSS_0210CFD8
	mov r3, #0
	str r3, [r2, #8]
	mov r0, r5
	mov r1, r6
	str r3, [r2, #4]
	blx r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02046D38: .word MAIN_BSS_0210CFD8

    arm_func_start WvrDummyAsyncCallback
WvrDummyAsyncCallback: ; 0x02046D3C
    bx lr
    arm_func_end WvrDummyAsyncCallback
