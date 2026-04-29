    .include "macros/function.inc"
    .include "include/libdwcnd.inc"

    .text

	arm_func_start ov11_02160F6C
ov11_02160F6C: ; 0x02160F6C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	ldr r6, _02160FA8 ; =OVERLAY11_BSS_0216D2D8
	ldr r4, _02160FAC ; =OVERLAY11_BSS_0216D2D0
	mov r5, r7
	arm_func_end ov11_02160F6C
_02160F80:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _02160F98
	ldr r1, [r4]
	blx r1
	str r5, [r6, r7, lsl #2]
_02160F98:
	add r7, r7, #1
	cmp r7, #3
	blt _02160F80
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02160FA8: .word OVERLAY11_BSS_0216D2D8
_02160FAC: .word OVERLAY11_BSS_0216D2D0

	arm_func_start ov11_02160FB0
ov11_02160FB0: ; 0x02160FB0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	ldrsb r1, [r6]
	mov r4, r0
	cmp r1, #0
	beq _0216106C
	mov r0, r6
	bl ov11_02162820
	cmp r0, #0xa
	ble _02160FEC
	ldr r0, _02161074 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #7
	str r1, [r0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov11_02160FB0
_02160FEC:
	mov r0, r6
	bl ov11_02162820
	mov r5, r0
	cmp r5, #0xa
	ble _02161014
	ldr r0, _02161074 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #7
	str r1, [r0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02161014:
	bl ov11_0216119C
	ldr r1, _02161078 ; =OVERLAY11_BSS_0216D2BC
	add r0, r0, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	ldr r1, _0216107C ; =OVERLAY11_BSS_0216D2D8
	cmp r0, #0
	str r0, [r1, r4, lsl #2]
	bne _02161050
	ldr r0, _02161074 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02161050:
	mov r1, r6
	mov r2, r5
	bl ov11_021611B8
	ldr r1, _0216107C ; =OVERLAY11_BSS_0216D2D8
	mov r2, #0
	ldr r1, [r1, r4, lsl #2]
	strb r2, [r1, r0]
_0216106C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02161074: .word OVERLAY11_BSS_0216D2CC
_02161078: .word OVERLAY11_BSS_0216D2BC
_0216107C: .word OVERLAY11_BSS_0216D2D8

	arm_func_start DWCi_NdSetAttr
DWCi_NdSetAttr: ; 0x02161080
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov11_021626E4
	bl ov11_02160F6C
	mov r1, r6
	mov r0, #0
	bl ov11_02160FB0
	cmp r0, #0
	beq _021610E0
	mov r1, r5
	mov r0, #1
	bl ov11_02160FB0
	cmp r0, #0
	beq _021610E0
	mov r1, r4
	mov r0, #2
	bl ov11_02160FB0
	cmp r0, #0
	beq _021610E0
	bl ov11_021626F8
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_NdSetAttr
_021610E0:
	bl ov11_02160F6C
	bl ov11_021626F8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_021610F0
ov11_021610F0: ; 0x021610F0
	stmdb sp!, {r4, lr}
	mov r4, #0
	mov lr, r4
	cmp r2, #0
	ble _02161130
	mov r3, r4
	arm_func_end ov11_021610F0
_02161108:
	ldrsb ip, [r1]
	cmp ip, #0
	streqb r3, [r0], #1
	beq _02161124
	add r4, r4, #1
	add r1, r1, #1
	strb ip, [r0], #1
_02161124:
	add lr, lr, #1
	cmp lr, r2
	blt _02161108
_02161130:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start ov11_02161138
ov11_02161138: ; 0x02161138
	cmp r0, #0x41
	blo _0216114C
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
	arm_func_end ov11_02161138
_0216114C:
	cmp r0, #0x61
	blo _02161160
	cmp r0, #0x7a
	subls r0, r0, #0x47
	bxls lr
_02161160:
	cmp r0, #0x30
	blo _02161174
	cmp r0, #0x39
	addls r0, r0, #4
	bxls lr
_02161174:
	cmp r0, #0x2e
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2d
	moveq r0, #0x3f
	mvnne r0, #0
	bx lr

	arm_func_start ov11_02161190
ov11_02161190: ; 0x02161190
	mov r0, r0, asr #2
	add r0, r0, r0, lsl #1
	bx lr
	arm_func_end ov11_02161190

	arm_func_start ov11_0216119C
ov11_0216119C: ; 0x0216119C
	ldr r1, _021611B4 ; =0x55555556
	add r2, r0, #2
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	mov r0, r3, lsl #2
	bx lr
	.align 2, 0
_021611B4: .word 0x55555556
	arm_func_end ov11_0216119C

	arm_func_start ov11_021611B8
ov11_021611B8: ; 0x021611B8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, r2
	mov r8, r1
	mov sb, r0
	cmp r7, #3
	movgt r2, #3
	add r0, sp, #0
	mov r1, r8
	mov r6, #0
	bl ov11_021610F0
	cmp r0, #0
	ble _0216129C
	mov r5, #0
	ldr sl, _021612AC ; =s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02165fb0
	mov r4, r5
	mov fp, #0x2a
	arm_func_end ov11_021611B8
_021611F8:
	cmp r7, #3
	strltb r5, [sp, #2]
	cmp r7, #2
	strltb r4, [sp, #1]
	ldrb r1, [sp, #2]
	ldrb r2, [sp]
	ldrb r3, [sp, #1]
	mov lr, r1, asr #6
	mov ip, r2, asr #2
	orr lr, lr, r3, lsl #2
	mov r3, r3, asr #4
	and ip, ip, #0xff
	orr r2, r3, r2, lsl #4
	ldrsb ip, [sl, ip]
	and r2, r2, #0x3f
	ldrsb r2, [sl, r2]
	strb ip, [sb]
	and ip, lr, #0x3f
	cmp r0, #1
	strb r2, [sb, #1]
	ldrgtsb r2, [sl, ip]
	and r1, r1, #0x3f
	add r8, r8, r0
	movle r2, fp
	cmp r0, #2
	ldrgtsb r1, [sl, r1]
	strb r2, [sb, #2]
	add r6, r6, #4
	movle r1, #0x2a
	strb r1, [sb, #3]
	add sb, sb, #4
	subs r7, r7, r0
	beq _0216129C
	cmp r7, #3
	movgt r2, #3
	movle r2, r7
	add r0, sp, #0
	mov r1, r8
	bl ov11_021610F0
	cmp r0, #0
	bgt _021611F8
_0216129C:
	mov r1, #0
	mov r0, r6
	strb r1, [sb]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021612AC: .word s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02165fb0

	arm_func_start ov11_021612B0
ov11_021612B0: ; 0x021612B0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov sb, r0
	mov r7, r2
	add r0, sp, #3
	mov r2, #4
	mov r6, #0
	mov r8, r1
	bl ov11_021610F0
	mov r5, r0
	mov r4, r6
	b _021613BC
	arm_func_end ov11_021612B0
_021612E0:
	ldrb r0, [sp, #3]
	mov r1, #0
	strb r1, [sp]
	strb r1, [sp, #1]
	strb r1, [sp, #2]
	bl ov11_02161138
	movs r4, r0
	bmi _02161368
	ldrb r0, [sp, #4]
	mov r1, r4, lsl #2
	strb r1, [sp]
	bl ov11_02161138
	movs r4, r0
	bmi _02161368
	ldrsb r2, [sp]
	ldrb r0, [sp, #5]
	mov r1, r4, lsl #4
	orr r2, r2, r4, asr #4
	strb r2, [sp]
	strb r1, [sp, #1]
	bl ov11_02161138
	movs r4, r0
	bmi _02161368
	ldrsb r2, [sp, #1]
	ldrb r0, [sp, #6]
	mov r1, r4, lsl #6
	orr r2, r2, r4, asr #2
	strb r1, [sp, #2]
	strb r2, [sp, #1]
	bl ov11_02161138
	movs r4, r0
	ldrplsb r0, [sp, #2]
	orrpl r0, r0, r4
	strplb r0, [sp, #2]
_02161368:
	sub r1, r5, #1
	cmp r1, #0
	mov r2, #0
	ble _02161390
	add r3, sp, #0
_0216137C:
	ldrsb r0, [r3], #1
	add r2, r2, #1
	cmp r2, r1
	strb r0, [sb], #1
	blt _0216137C
_02161390:
	sub r0, r5, #1
	sub r7, r7, #4
	cmp r7, #0
	add r8, r8, r5
	add r6, r6, r0
	ble _021613CC
	add r0, sp, #3
	mov r1, r8
	mov r2, #4
	bl ov11_021610F0
	mov r5, r0
_021613BC:
	cmp r5, #0
	ble _021613CC
	cmp r4, #0
	bge _021612E0
_021613CC:
	mov r1, #0
	mov r0, r6
	strb r1, [sb]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov11_021613E0
ov11_021613E0: ; 0x021613E0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl ov11_02162820
	ldr r1, _02161428 ; =OVERLAY11_BSS_0216D2B0
	mov r4, r0
	ldr r2, [r1, #0xc]
	add r0, r4, #1
	mov r1, #4
	blx r2
	movs r5, r0
	beq _02161420
	mov r1, r6
	mov r2, r4
	bl ov11_0216284C
	mov r0, #0
	strb r0, [r5, r4]
	arm_func_end ov11_021613E0
_02161420:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02161428: .word OVERLAY11_BSS_0216D2B0

	arm_func_start DWCi_NdStartup
DWCi_NdStartup: ; 0x0216142C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, _021615BC ; =OVERLAY11_BSS_0216D2B0
	mov r5, r0
	mov r4, r1
	str r5, [ip, #0xc]
	mov r1, #0
	ldr r0, [sp, #0x20]
	str r4, [ip, #0x20]
	str r0, [ip, #0x18]
	str r1, [ip, #0x1c]
	str r1, [ip, #0x28]
	str r1, [ip, #0x2c]
	str r1, [ip, #0x30]
	str r1, [ip, #4]
	sub r0, r1, #1
	str r0, [ip, #0x24]
	str r1, [ip, #8]
	ldr r0, _021615C0 ; =OVERLAY11_BSS_0216D2F0
	mov r7, r2
	mov r6, r3
	str r1, [ip, #0x10]
	bl ov11_021627C0
	ldr r0, _021615C4 ; =OVERLAY11_BSS_0216D338
	bl ov11_021617C4
	mov r0, r7
	bl ov11_021613E0
	ldr r1, _021615BC ; =OVERLAY11_BSS_0216D2B0
	cmp r0, #0
	str r0, [r1, #0x10]
	beq _02161578
	mov r0, r6
	bl ov11_021613E0
	ldr r1, _021615BC ; =OVERLAY11_BSS_0216D2B0
	cmp r0, #0
	str r0, [r1, #8]
	beq _02161578
	ldr r1, [sp, #0x18]
	ldr r0, _021615C8 ; =OVERLAY11_BSS_0216D2E4
	mov r2, #4
	bl ov11_021611B8
	ldr r1, _021615C8 ; =OVERLAY11_BSS_0216D2E4
	mov r2, #0
	strb r2, [r1, r0]
	ldr r1, [sp, #0x1c]
	ldr r0, _021615CC ; =OVERLAY11_BSS_0216D31C
	mov r2, #0x10
	bl ov11_021611B8
	ldr r1, _021615CC ; =OVERLAY11_BSS_0216D31C
	mov r2, #0
	strb r2, [r1, r0]
	bl ov11_0216270C
	cmp r0, #0
	beq _02161544
	bl ov11_021626C8
	cmp r0, #0
	beq _02161544
	mov r0, r5
	mov r1, r4
	mov r2, #0xa
	bl ov11_0215DBBC
	cmp r0, #0
	beq _02161540
	ldr r0, _021615D0 ; =OVERLAY11_BSS_0216D304
	bl ov11_02161640
	ldr r1, _021615BC ; =OVERLAY11_BSS_0216D2B0
	str r0, [r1, #4]
	mov r0, #1
	str r0, [r1, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWCi_NdStartup
_02161540:
	bl ov11_021626E0
_02161544:
	ldr r1, _021615BC ; =OVERLAY11_BSS_0216D2B0
	ldr r0, [r1, #8]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, _021615BC ; =OVERLAY11_BSS_0216D2B0
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, _021615BC ; =OVERLAY11_BSS_0216D2B0
	mov r1, #8
	str r1, [r0, #0x1c]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02161578:
	ldr r1, _021615BC ; =OVERLAY11_BSS_0216D2B0
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02161590
	ldr r1, [r1, #0x20]
	blx r1
_02161590:
	ldr r1, _021615BC ; =OVERLAY11_BSS_0216D2B0
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _021615A8
	ldr r1, [r1, #0x20]
	blx r1
_021615A8:
	ldr r0, _021615BC ; =OVERLAY11_BSS_0216D2B0
	mov r1, #1
	str r1, [r0, #0x1c]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021615BC: .word OVERLAY11_BSS_0216D2B0
_021615C0: .word OVERLAY11_BSS_0216D2F0
_021615C4: .word OVERLAY11_BSS_0216D338
_021615C8: .word OVERLAY11_BSS_0216D2E4
_021615CC: .word OVERLAY11_BSS_0216D31C
_021615D0: .word OVERLAY11_BSS_0216D304

	arm_func_start ov11_021615D4
ov11_021615D4: ; 0x021615D4
	stmdb sp!, {r3, lr}
	bl ov11_02160F6C
	bl ov11_021626E0
	bl ov11_02162734
	ldr r1, _02161614 ; =OVERLAY11_BSS_0216D2B0
	ldr r0, [r1, #8]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, _02161614 ; =OVERLAY11_BSS_0216D2B0
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, _02161614 ; =OVERLAY11_BSS_0216D2B0
	ldr r0, [r0]
	blx r0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02161614: .word OVERLAY11_BSS_0216D2B0
	arm_func_end ov11_021615D4

	arm_func_start DWCi_NdCleanupAsync
DWCi_NdCleanupAsync: ; 0x02161618
	ldr r1, _02161634 ; =OVERLAY11_BSS_0216D2B0
	mov r2, #0
	str r2, [r1, #0x14]
	str r0, [r1]
	ldr ip, _02161638 ; =ov11_0215DC84
	ldr r0, _0216163C ; =ov11_021615D4
	bx ip
	.align 2, 0
_02161634: .word OVERLAY11_BSS_0216D2B0
_02161638: .word ov11_0215DC84
_0216163C: .word ov11_021615D4
	arm_func_end DWCi_NdCleanupAsync

	arm_func_start ov11_02161640
ov11_02161640: ; 0x02161640
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr ip, _02161728 ; =s_00_0000000_00_overlay_11_02165ff4
	add r3, sp, #0
	mov r4, r0
	mov r2, #6
	arm_func_end ov11_02161640
_02161658:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _02161658
	ldrb r1, [ip]
	ldr r0, _0216172C ; =OVERLAY11_BSS_0216D35C
	strb r1, [r3]
	bl ov11_0213B5A4
	cmp r0, #0
	beq _0216171C
	ldr r0, _02161730 ; =OVERLAY11_BSS_0216D35C
	ldr r1, [r0]
	cmp r1, #0
	blt _021616B0
	cmp r1, #0xa
	addlt r0, r1, #0x30
	strltb r0, [sp, #1]
	blt _021616C8
_021616B0:
	cmp r1, #0xa
	blt _021616C8
	cmp r1, #0x64
	bge _021616C8
	add r0, sp, #0
	bl thunk_FUN_overlay_11__02160d38
_021616C8:
	ldr r0, _02161730 ; =OVERLAY11_BSS_0216D35C
	ldr r1, [r0]
	cmp r1, #4
	bne _02161700
	ldr r0, [r0, #4]
	cmp r0, #0
	blt _021616F0
	cmp r0, #0xa
	addlt r0, r0, #0x30
	strltb r0, [sp, #3]
_021616F0:
	ldr r1, _02161734 ; =OVERLAY11_BSS_0216D364
	add r0, sp, #4
	mov r2, #9
	bl ov11_0216284C
_02161700:
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl ov11_021611B8
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, pc}
_0216171C:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_02161728: .word s_00_0000000_00_overlay_11_02165ff4
_0216172C: .word OVERLAY11_BSS_0216D35C
_02161730: .word OVERLAY11_BSS_0216D35C
_02161734: .word OVERLAY11_BSS_0216D364

	arm_func_start ov11_02161738
ov11_02161738: ; 0x02161738
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r4, r1
	add r0, sp, #0x10
	mov r1, #0x14
	bl ov11_02162838
	add r0, sp, #0x10
	bl ov11_02139940
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov r0, #0
	cmp r2, r0
	cmpeq r1, r0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, pc}
	add r0, sp, #0
	mov r3, #0xd
	bl ov11_0216287C
	cmp r0, #0
	addlt sp, sp, #0x24
	movlt r0, #0
	ldmltia sp!, {r4, r5, pc}
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl ov11_021611B8
	ldr r1, _021617C0 ; =0x027FFE0C
	mov r0, r5
	mov r2, #4
	bl ov11_021611B8
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021617C0: .word 0x027FFE0C
	arm_func_end ov11_02161738

	arm_func_start ov11_021617C4
ov11_021617C4: ; 0x021617C4
	stmdb sp!, {r3, lr}
	ldr r2, _021617E0 ; =s_Nitro_WiFi_SDK_d_d_overlay_11_02169a6c
	mov r3, #2
	mov r1, #0x21
	str r3, [sp]
	bl STD_TSNPrintf
	ldmia sp!, {r3, pc}
	.align 2, 0
_021617E0: .word s_Nitro_WiFi_SDK_d_d_overlay_11_02169a6c
	arm_func_end ov11_021617C4

	arm_func_start ov11_021617E4
ov11_021617E4: ; 0x021617E4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sb, r2
	mov sl, r1
	ldr r1, [sb, #8]
	cmp r0, #0
	str r1, [sp, #8]
	ldr r1, [sb, #0xc]
	ldr r5, [sb, #4]
	str r1, [sp, #4]
	mvn r1, #0
	str r1, [sp]
	beq _0216182C
	cmp r0, #6
	beq _02161A08
	cmp r0, #8
	beq _02161A00
	b _02161A10
	arm_func_end ov11_021617E4
_0216182C:
	ldr r1, _02161AFC ; =s_HTTPSTATUSCODE_overlay_11_02169a88
	add r2, sp, #0x14
	mov r0, sl
	bl ov11_0215F0CC
	cmp r0, #3
	movne r4, #3
	bne _02161A14
	ldr r0, [sp, #0x14]
	mov r1, #3
	bl thunk_FUN_overlay_11__02160ca0
	ldr r1, _02161B00 ; =0x0000012E
	cmp r0, r1
	bne _02161978
	add r1, sp, #0x10
	mov r0, sl
	mov r8, #0
	bl ov11_0215F1D0
	movs r6, r0
	movmi r4, #3
	bmi _02161A14
	cmp r6, #0
	mov r7, r8
	ble _02161964
	ldr r4, _02161B04 ; =s_returncd_overlay_11_02169a98
	mov fp, #8
_02161890:
	ldr r3, [sp, #0x10]
	mov r1, r7
	add r2, r3, r7
	b _021618A8
_021618A0:
	add r2, r2, #1
	add r7, r7, #1
_021618A8:
	ldrsb r0, [r2]
	cmp r0, #0x3d
	beq _021618BC
	cmp r7, r6
	blt _021618A0
_021618BC:
	sub r0, r7, r1
	cmp r0, #8
	add r7, r7, #1
	bne _021618E8
	add r0, r3, r1
	mov r1, r4
	mov r2, fp
	bl thunk_FUN_02078930
	cmp r0, #0
	moveq r8, #1
	movne r8, #0
_021618E8:
	ldr r1, [sp, #0x10]
	mov r3, r7
	add r2, r1, r7
	b _02161900
_021618F8:
	add r2, r2, #1
	add r7, r7, #1
_02161900:
	ldrsb r0, [r2]
	cmp r0, #0x26
	cmpne r0, #0xd
	cmpne r0, #0
	beq _0216191C
	cmp r7, r6
	blt _021618F8
_0216191C:
	cmp r8, #0
	sub r2, r7, r3
	add r7, r7, #1
	beq _0216195C
	cmp r2, #4
	bne _02161964
	add r0, sp, #0xc
	add r1, r1, r3
	bl ov11_021612B0
	mov r1, r0
	add r0, sp, #0xc
	mov r2, #0
	strb r2, [r0, r1]
	bl thunk_FUN_overlay_11__02160ca0
	str r0, [sp]
	b _02161964
_0216195C:
	cmp r7, r6
	blt _02161890
_02161964:
	ldr r0, [sp]
	cmp r0, #0
	movlt r4, #3
	movge r4, #5
	b _02161A14
_02161978:
	cmp r0, #0
	ble _02161988
	cmp r0, #0xc8
	beq _02161990
_02161988:
	mov r4, #3
	b _02161A14
_02161990:
	cmp r5, #1
	beq _021619AC
	cmp r5, #2
	beq _021619C8
	cmp r5, #3
	beq _021619E4
	b _02161A14
_021619AC:
	mov r0, sl
	mov r1, sb
	bl ov11_021623C8
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02161A14
_021619C8:
	mov r0, sl
	mov r1, sb
	bl ov11_02162448
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02161A14
_021619E4:
	mov r0, sl
	mov r1, sb
	bl ov11_0216241C
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02161A14
_02161A00:
	mov r4, #6
	b _02161A14
_02161A08:
	mov r4, #4
	b _02161A14
_02161A10:
	mov r4, #3
_02161A14:
	cmp r5, #1
	beq _02161A84
	cmp r5, #2
	beq _02161A30
	cmp r5, #3
	beq _02161A74
	b _02161A84
_02161A30:
	ldr r0, [sb, #0x20]
	cmp r0, #0
	beq _02161A48
	ldr r1, _02161B08 ; =OVERLAY11_BSS_0216D2D0
	ldr r1, [r1]
	blx r1
_02161A48:
	ldr r0, [sb, #0x1c]
	cmp r0, #0
	beq _02161A60
	ldr r1, _02161B08 ; =OVERLAY11_BSS_0216D2D0
	ldr r1, [r1]
	blx r1
_02161A60:
	ldr r1, _02161B08 ; =OVERLAY11_BSS_0216D2D0
	ldr r0, [sb, #0x18]
	ldr r1, [r1]
	blx r1
	b _02161A84
_02161A74:
	ldr r1, _02161B08 ; =OVERLAY11_BSS_0216D2D0
	ldr r0, [sb, #0x10]
	ldr r1, [r1]
	blx r1
_02161A84:
	bl ov11_021626E4
	ldr r0, _02161B0C ; =OVERLAY11_BSS_0216D2D4
	mvn r1, #0
	str r1, [r0]
	bl ov11_021626F8
	mov r0, sl
	bl ov11_0215EF48
	ldr r1, _02161B08 ; =OVERLAY11_BSS_0216D2D0
	mov r0, sb
	ldr r1, [r1]
	blx r1
	bl ov11_02162780
	cmp r4, #0
	ldrne r0, _02161B10 ; =OVERLAY11_BSS_0216D2CC
	strne r4, [r0]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02161AE0
	ldr r2, [sp]
	ldr r3, [sp, #8]
	mov r0, r5
	mov r1, r4
	blx r3
_02161AE0:
	ldr r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov11_021627AC
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02161AFC: .word s_HTTPSTATUSCODE_overlay_11_02169a88
_02161B00: .word 0x0000012E
_02161B04: .word s_returncd_overlay_11_02169a98
_02161B08: .word OVERLAY11_BSS_0216D2D0
_02161B0C: .word OVERLAY11_BSS_0216D2D4
_02161B10: .word OVERLAY11_BSS_0216D2CC

	arm_func_start ov11_02161B14
ov11_02161B14: ; 0x02161B14
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl ov11_0215ECDC
	bl ov11_02162780
	ldr r1, _02161B3C ; =OVERLAY11_BSS_0216D2D0
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02161B3C: .word OVERLAY11_BSS_0216D2D0
	arm_func_end ov11_02161B14

	arm_func_start ov11_02161B40
ov11_02161B40: ; 0x02161B40
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r1
	ldr r0, _02161DF8 ; =OVERLAY11_BSS_0216D398
	ldr r1, _02161DFC ; =OVERLAY11_BSS_0216D3A4
	mov r6, r2
	mov r5, r3
	bl ov11_02161738
	cmp r0, #0
	bne _02161B84
	ldr r0, _02161E00 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #8
	str r1, [r0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov11_02161B40
_02161B84:
	ldr r1, _02161E04 ; =OVERLAY11_BSS_0216D2BC
	mov r0, #0x24
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs r4, r0
	bne _02161BB8
	ldr r0, _02161E00 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #1
	str r1, [r0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02161BB8:
	ldr r0, _02161E08 ; =OVERLAY11_BSS_0216D2C8
	mov r1, #0
	ldr r0, [r0]
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	bl ov11_02162738
	cmp r0, #0
	bne _02161C00
	ldr r1, _02161E0C ; =OVERLAY11_BSS_0216D2D0
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldr r0, _02161E00 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #2
	str r1, [r0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02161C00:
	ldr r1, _02161E10 ; =ov11_021617E4
	ldr r0, _02161E14 ; =OVERLAY11_BSS_0216D2C0
	stmia sp, {r1, r4}
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	mov r2, r5
	mov r1, #1
	bl ov11_0215E778
	movs r5, r0
	bne _02161C54
	bl ov11_02162780
	ldr r1, _02161E0C ; =OVERLAY11_BSS_0216D2D0
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldr r0, _02161E00 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #3
	str r1, [r0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02161C54:
	ldr r1, _02161E18 ; =PTR_ptr_s_US_Washington_Nintendo_of_Amer_overlay_11_0216999c_overlay_11_02169988_overlay_11_02169a84
	str r4, [r8]
	mov r2, #1
	str r5, [r7]
	bl ov11_0215DFD0
	cmp r0, #0
	beq _02161DD4
	ldr r1, _02161E1C ; =s_User_Agent_overlay_11_02169aa4
	ldr r2, _02161E20 ; =OVERLAY11_BSS_0216D338
	mov r0, r5
	bl ov11_0215DF38
	cmp r0, #0
	beq _02161DD4
	ldr r1, _02161E24 ; =s_gamecd_overlay_11_02169ab0
	ldr r2, _02161E28 ; =OVERLAY11_BSS_0216D2E4
	mov r0, r5
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02161DD4
	ldr r1, _02161E2C ; =s_rhgamecd_overlay_11_02169ab8
	ldr r2, _02161DF8 ; =OVERLAY11_BSS_0216D398
	mov r0, r5
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02161DD4
	ldr r1, _02161E30 ; =s_passwd_overlay_11_02169ac4
	ldr r2, _02161E34 ; =OVERLAY11_BSS_0216D31C
	mov r0, r5
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02161DD4
	ldr r0, _02161E38 ; =OVERLAY11_BSS_0216D2B8
	ldr r1, _02161E3C ; =s_token_overlay_11_02169acc
	ldr r2, [r0]
	mov r0, r5
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02161DD4
	ldr r1, _02161E40 ; =s_userid_overlay_11_02169ad4
	ldr r2, _02161DFC ; =OVERLAY11_BSS_0216D3A4
	mov r0, r5
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02161DD4
	ldr r1, _02161E44 ; =s_macadr_overlay_11_02169adc
	ldr r2, _02161E48 ; =OVERLAY11_BSS_0216D2F0
	mov r0, r5
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02161DD4
	ldr r1, _02161E4C ; =s_action_overlay_11_02169ae4
	mov r0, r5
	mov r2, r6
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02161DD4
	ldr r0, _02161E50 ; =OVERLAY11_BSS_0216D2D8
	ldr r2, [r0]
	cmp r2, #0
	beq _02161D58
	ldr r1, _02161E54 ; =s_attr1_overlay_11_02169aec
	mov r0, r5
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02161DD4
_02161D58:
	ldr r0, _02161E50 ; =OVERLAY11_BSS_0216D2D8
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _02161D7C
	ldr r1, _02161E58 ; =s_attr2_overlay_11_02169af4
	mov r0, r5
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02161DD4
_02161D7C:
	ldr r0, _02161E50 ; =OVERLAY11_BSS_0216D2D8
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02161DA0
	ldr r1, _02161E5C ; =s_attr3_overlay_11_02169afc
	mov r0, r5
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02161DD4
_02161DA0:
	ldr r0, _02161E60 ; =OVERLAY11_BSS_0216D2B4
	ldr r0, [r0]
	cmp r0, #0
	beq _02161DC8
	ldr r1, _02161E64 ; =s_apinfo_overlay_11_02169b04
	ldr r2, _02161E68 ; =OVERLAY11_BSS_0216D304
	mov r0, r5
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02161DD4
_02161DC8:
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02161DD4:
	mov r0, r4
	mov r1, r5
	bl ov11_02161B14
	ldr r0, _02161E00 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02161DF8: .word OVERLAY11_BSS_0216D398
_02161DFC: .word OVERLAY11_BSS_0216D3A4
_02161E00: .word OVERLAY11_BSS_0216D2CC
_02161E04: .word OVERLAY11_BSS_0216D2BC
_02161E08: .word OVERLAY11_BSS_0216D2C8
_02161E0C: .word OVERLAY11_BSS_0216D2D0
_02161E10: .word ov11_021617E4
_02161E14: .word OVERLAY11_BSS_0216D2C0
_02161E18: .word PTR_ptr_s_US_Washington_Nintendo_of_Amer_overlay_11_0216999c_overlay_11_02169988_overlay_11_02169a84
_02161E1C: .word s_User_Agent_overlay_11_02169aa4
_02161E20: .word OVERLAY11_BSS_0216D338
_02161E24: .word s_gamecd_overlay_11_02169ab0
_02161E28: .word OVERLAY11_BSS_0216D2E4
_02161E2C: .word s_rhgamecd_overlay_11_02169ab8
_02161E30: .word s_passwd_overlay_11_02169ac4
_02161E34: .word OVERLAY11_BSS_0216D31C
_02161E38: .word OVERLAY11_BSS_0216D2B8
_02161E3C: .word s_token_overlay_11_02169acc
_02161E40: .word s_userid_overlay_11_02169ad4
_02161E44: .word s_macadr_overlay_11_02169adc
_02161E48: .word OVERLAY11_BSS_0216D2F0
_02161E4C: .word s_action_overlay_11_02169ae4
_02161E50: .word OVERLAY11_BSS_0216D2D8
_02161E54: .word s_attr1_overlay_11_02169aec
_02161E58: .word s_attr2_overlay_11_02169af4
_02161E5C: .word s_attr3_overlay_11_02169afc
_02161E60: .word OVERLAY11_BSS_0216D2B4
_02161E64: .word s_apinfo_overlay_11_02169b04
_02161E68: .word OVERLAY11_BSS_0216D304

	arm_func_start ov11_02161E6C
ov11_02161E6C: ; 0x02161E6C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl ov11_021626E4
	mov r0, r4
	bl ov11_0215EDD0
	ldr r1, _02161EC4 ; =OVERLAY11_BSS_0216D2D4
	str r0, [r5]
	str r0, [r1]
	bl ov11_021626F8
	ldr r0, [r5]
	cmp r0, #0
	movge r0, #1
	ldmgeia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov11_02161B14
	ldr r0, _02161EC8 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #3
	str r1, [r0]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02161EC4: .word OVERLAY11_BSS_0216D2D4
_02161EC8: .word OVERLAY11_BSS_0216D2CC
	arm_func_end ov11_02161E6C

	arm_func_start DWCi_NdGetFileListNumAsync
DWCi_NdGetFileListNumAsync: ; 0x02161ECC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r2, _02161F38 ; =s_Y291bnQ_overlay_11_02166010
	mov r4, r0
	mov ip, #0x80
	ldr r3, _02161F3C ; =OVERLAY11_BSS_0216D3BC
	add r0, sp, #8
	add r1, sp, #4
	str ip, [sp]
	bl ov11_02161B40
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [sp, #8]
	str r4, [r0, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov11_02161E6C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02161F38: .word s_Y291bnQ_overlay_11_02166010
_02161F3C: .word OVERLAY11_BSS_0216D3BC
	arm_func_end DWCi_NdGetFileListNumAsync

	arm_func_start DWCi_NdGetFileListAsync
DWCi_NdGetFileListAsync: ; 0x02161F40
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x18
	mov r4, r2
	mov r6, r1
	ldr r1, _021621E8 ; =OVERLAY11_BSS_0216D2BC
	mov r7, r4, lsl #8
	cmp r7, #0x80
	ldr r2, [r1]
	movlt r7, #0x80
	mov r5, r0
	mov r0, r7
	mov r1, #4
	blx r2
	movs r8, r0
	bne _02161F94
	ldr r0, _021621EC ; =OVERLAY11_BSS_0216D2CC
	mov r1, #1
	str r1, [r0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end DWCi_NdGetFileListAsync
_02161F94:
	add r0, sp, #0xc
	mov r1, r6
	bl thunk_FUN_overlay_11__02160d38
	mov r6, r0
	bl ov11_0216119C
	ldr r1, _021621E8 ; =OVERLAY11_BSS_0216D2BC
	add r0, r0, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs sb, r0
	bne _02161FEC
	ldr r1, _021621F0 ; =OVERLAY11_BSS_0216D2D0
	mov r0, r8
	ldr r1, [r1]
	blx r1
	ldr r0, _021621EC ; =OVERLAY11_BSS_0216D2CC
	mov r1, #1
	str r1, [r0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02161FEC:
	add r1, sp, #0xc
	mov r2, r6
	bl ov11_021611B8
	mov r1, #0
	strb r1, [sb, r0]
	add r0, sp, #0xc
	mov r1, r4
	bl thunk_FUN_overlay_11__02160d38
	mov r6, r0
	bl ov11_0216119C
	ldr r1, _021621E8 ; =OVERLAY11_BSS_0216D2BC
	add r0, r0, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs sl, r0
	bne _02162068
	ldr r1, _021621F0 ; =OVERLAY11_BSS_0216D2D0
	mov r0, sb
	ldr r1, [r1]
	blx r1
	ldr r1, _021621F0 ; =OVERLAY11_BSS_0216D2D0
	mov r0, r8
	ldr r1, [r1]
	blx r1
	ldr r0, _021621EC ; =OVERLAY11_BSS_0216D2CC
	mov r1, #1
	str r1, [r0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02162068:
	add r1, sp, #0xc
	mov r2, r6
	bl ov11_021611B8
	mov r1, #0
	strb r1, [sl, r0]
	ldr r2, _021621F4 ; =s_bGlzdA_overlay_11_02166004
	add r0, sp, #8
	add r1, sp, #4
	mov r3, r8
	str r7, [sp]
	bl ov11_02161B40
	cmp r0, #0
	bne _021620D8
	ldr r1, _021621F0 ; =OVERLAY11_BSS_0216D2D0
	mov r0, sl
	ldr r1, [r1]
	blx r1
	ldr r1, _021621F0 ; =OVERLAY11_BSS_0216D2D0
	mov r0, sb
	ldr r1, [r1]
	blx r1
	ldr r1, _021621F0 ; =OVERLAY11_BSS_0216D2D0
	mov r0, r8
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021620D8:
	ldr r0, [sp, #4]
	ldr r1, _021621F8 ; =s_offset_overlay_11_02169b0c
	mov r2, sb
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02162194
	ldr r0, [sp, #4]
	ldr r1, _021621FC ; =s_num_overlay_11_02169b14
	mov r2, sl
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02162194
	ldr r0, [sp, #8]
	mov r1, #2
	str r1, [r0, #4]
	ldr r0, [sp, #8]
	str r5, [r0, #0x10]
	ldr r0, [sp, #8]
	str sb, [r0, #0x1c]
	ldr r0, [sp, #8]
	str sl, [r0, #0x20]
	ldr r0, [sp, #8]
	str r4, [r0, #0x14]
	ldr r0, [sp, #8]
	str r8, [r0, #0x18]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov11_02161E6C
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _021621F0 ; =OVERLAY11_BSS_0216D2D0
	mov r0, sl
	ldr r1, [r1]
	blx r1
	ldr r1, _021621F0 ; =OVERLAY11_BSS_0216D2D0
	mov r0, sb
	ldr r1, [r1]
	blx r1
	ldr r1, _021621F0 ; =OVERLAY11_BSS_0216D2D0
	mov r0, r8
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02162194:
	ldr r1, _021621F0 ; =OVERLAY11_BSS_0216D2D0
	mov r0, sl
	ldr r1, [r1]
	blx r1
	ldr r1, _021621F0 ; =OVERLAY11_BSS_0216D2D0
	mov r0, sb
	ldr r1, [r1]
	blx r1
	ldr r1, _021621F0 ; =OVERLAY11_BSS_0216D2D0
	mov r0, r8
	ldr r1, [r1]
	blx r1
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov11_02161B14
	ldr r0, _021621EC ; =OVERLAY11_BSS_0216D2CC
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021621E8: .word OVERLAY11_BSS_0216D2BC
_021621EC: .word OVERLAY11_BSS_0216D2CC
_021621F0: .word OVERLAY11_BSS_0216D2D0
_021621F4: .word s_bGlzdA_overlay_11_02166004
_021621F8: .word s_offset_overlay_11_02169b0c
_021621FC: .word s_num_overlay_11_02169b14

	arm_func_start DWCi_NdGetFileAsync
DWCi_NdGetFileAsync: ; 0x02162200
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r0
	ldr r3, [r8, #0xac]
	mov r7, r1
	cmp r2, r3
	bhs _02162234
	ldr r0, _021623A8 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #7
	str r1, [r0]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end DWCi_NdGetFileAsync
_02162234:
	bl ov11_02162820
	mov r4, r0
	cmp r4, #0x20
	ble _0216225C
	ldr r0, _021623A8 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #7
	str r1, [r0]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_0216225C:
	cmp r4, #0
	movle r6, #0
	ble _02162270
	bl ov11_0216119C
	mov r6, r0
_02162270:
	ldr r1, _021623AC ; =OVERLAY11_BSS_0216D2BC
	add r0, r6, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs r5, r0
	bne _021622A4
	ldr r0, _021623A8 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #1
	str r1, [r0]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021622A4:
	ldr ip, [r8, #0xac]
	ldr r2, _021623B0 ; =s_Y29udGVudHM_overlay_11_0216601c
	add r0, sp, #8
	add r1, sp, #4
	mov r3, r7
	str ip, [sp]
	bl ov11_02161B40
	cmp r0, #0
	bne _021622E4
	ldr r1, _021623B4 ; =OVERLAY11_BSS_0216D2D0
	mov r0, r5
	ldr r1, [r1]
	blx r1
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021622E4:
	cmp r6, #0
	ble _0216231C
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl ov11_021611B8
	mov r1, #0
	strb r1, [r5, r0]
	ldr r0, [sp, #4]
	ldr r1, _021623B8 ; =s_contents_overlay_11_02169b18
	mov r2, r5
	bl ov11_0215DF5C
	cmp r0, #0
	beq _02162374
_0216231C:
	ldr r0, [sp, #8]
	mov r1, #3
	str r1, [r0, #4]
	ldr r0, [sp, #8]
	str r5, [r0, #0x10]
	ldr r1, [r8, #0xac]
	ldr r0, [sp, #8]
	str r1, [r0, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov11_02161E6C
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, _021623B4 ; =OVERLAY11_BSS_0216D2D0
	mov r0, r5
	ldr r1, [r1]
	blx r1
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02162374:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov11_02161B14
	ldr r1, _021623B4 ; =OVERLAY11_BSS_0216D2D0
	mov r0, r5
	ldr r1, [r1]
	blx r1
	ldr r0, _021623A8 ; =OVERLAY11_BSS_0216D2CC
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021623A8: .word OVERLAY11_BSS_0216D2CC
_021623AC: .word OVERLAY11_BSS_0216D2BC
_021623B0: .word s_Y29udGVudHM_overlay_11_0216601c
_021623B4: .word OVERLAY11_BSS_0216D2D0
_021623B8: .word s_contents_overlay_11_02169b18

	arm_func_start DWCi_NdGetProgress
DWCi_NdGetProgress: ; 0x021623BC
	ldr ip, _021623C4 ; =ov11_0215F4C8
	bx ip
	.align 2, 0
_021623C4: .word ov11_0215F4C8
	arm_func_end DWCi_NdGetProgress

	arm_func_start ov11_021623C8
ov11_021623C8: ; 0x021623C8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	add r1, sp, #0
	bl ov11_0215F1D0
	movs r1, r0
	bmi _02162410
	ldr r0, [sp]
	bl thunk_FUN_overlay_11__02160ca0
	ldr r1, [r4, #0x10]
	add sp, sp, #4
	str r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov11_021623C8
_02162410:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}

	arm_func_start ov11_0216241C
ov11_0216241C: ; 0x0216241C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	add r1, sp, #0
	bl ov11_0215F1D0
	ldr r1, [r4, #0x14]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov11_0216241C

	arm_func_start ov11_02162448
ov11_02162448: ; 0x02162448
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r2, [r1, #0x14]
	str r1, [sp]
	mov r1, #0xb0
	mul r1, r2, r1
	mov r4, r0
	ldr r0, [sp]
	mov r2, #0
	ldr r0, [r0, #0x10]
	str r2, [sp, #4]
	bl ov11_02162838
	ldr r1, _021626C4 ; =s_Content_Length_overlay_11_02169b24
	add r2, sp, #0x10
	mov r0, r4
	bl ov11_0215F0CC
	cmp r0, #0
	ble _021624B0
	ldr r1, [sp, #0x10]
	ldrsb r0, [r1]
	cmp r0, #0x30
	ldreqsb r0, [r1, #1]
	cmpeq r0, #0
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov11_02162448
_021624B0:
	add r1, sp, #0x14
	mov r0, r4
	bl ov11_0215F1D0
	mov r4, r0
	cmp r4, #0
	ble _021626B8
	ldr r0, [sp]
	mov r5, #0
	ldr r0, [r0, #0x14]
	str r5, [sp, #0xc]
	cmp r0, #0
	ble _021626B8
	str r5, [sp, #8]
_021624E4:
	cmp r5, r4
	movge r0, #1
	strge r0, [sp, #4]
	bge _021626B8
	ldr r0, [sp]
	mov r6, #0
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #8]
	mov r7, r5
	mov r2, r6
	str r6, [sp, #4]
	cmp r5, r4
	add r8, r1, r0
	bge _02162690
	mov fp, r6
	mov sl, #1
_02162524:
	ldr r3, [sp, #0x14]
	ldrsb r0, [r3, r5]
	cmp r0, #0xd
	moveq r2, sl
	beq _02162684
	cmp r2, #0
	beq _02162590
	cmp r0, #0xa
	bne _02162680
	cmp r6, #5
	bne _02162574
	sub r0, r5, #1
	sub r1, r0, r7
	cmp r1, #8
	bgt _021626B8
	add r0, r3, r7
	bl thunk_FUN_overlay_11__02160ca0
	cmp r0, #0
	blt _021626B8
	str r0, [r8, #0xac]
_02162574:
	cmp r6, #5
	movge r0, #1
	strge r0, [sp, #4]
	movlt r0, #0
	add r5, r5, #1
	strlt r0, [sp, #4]
	b _02162690
_02162590:
	cmp r0, #9
	bne _02162680
	cmp r6, #5
	addls pc, pc, r6, lsl #2
	b _02162678
_021625A4: ; jump table
	b _021625BC ; case 0
	b _021625D8 ; case 1
	b _02162604 ; case 2
	b _02162620 ; case 3
	b _0216263C ; case 4
	b _02162658 ; case 5
_021625BC:
	sub r2, r5, r7
	cmp r2, #0x20
	bhs _021626B8
	mov r0, r8
	add r1, r3, r7
	bl ov11_0216284C
	b _02162678
_021625D8:
	sub sb, r5, r7
	mov r0, sb
	bl ov11_02161190
	cmp r0, #0x64
	bhs _021626B8
	ldr r1, [sp, #0x14]
	mov r2, sb
	add r0, r8, #0x22
	add r1, r1, r7
	bl ov11_021612B0
	b _02162678
_02162604:
	sub r2, r5, r7
	cmp r2, #0xa
	bhs _021626B8
	add r0, r8, #0x88
	add r1, r3, r7
	bl ov11_0216284C
	b _02162678
_02162620:
	sub r2, r5, r7
	cmp r2, #0xa
	bhs _021626B8
	add r0, r8, #0x93
	add r1, r3, r7
	bl ov11_0216284C
	b _02162678
_0216263C:
	sub r2, r5, r7
	cmp r2, #0xa
	bhs _021626B8
	add r0, r8, #0x9e
	add r1, r3, r7
	bl ov11_0216284C
	b _02162678
_02162658:
	sub r1, r5, r7
	cmp r1, #8
	bgt _021626B8
	add r0, r3, r7
	bl thunk_FUN_overlay_11__02160ca0
	cmp r0, #0
	blt _021626B8
	str r0, [r8, #0xac]
_02162678:
	add r6, r6, #1
	add r7, r5, #1
_02162680:
	mov r2, fp
_02162684:
	add r5, r5, #1
	cmp r5, r4
	blt _02162524
_02162690:
	ldr r0, [sp]
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	ldr r0, [sp, #8]
	add r0, r0, #0xb0
	str r0, [sp, #8]
	blt _021624E4
_021626B8:
	ldr r0, [sp, #4]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021626C4: .word s_Content_Length_overlay_11_02169b24

	arm_func_start ov11_021626C8
ov11_021626C8: ; 0x021626C8
	stmdb sp!, {r3, lr}
	ldr r0, _021626DC ; =OVERLAY11_BSS_0216D458
	bl OS_InitMutex
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_021626DC: .word OVERLAY11_BSS_0216D458
	arm_func_end ov11_021626C8

	arm_func_start ov11_021626E0
ov11_021626E0: ; 0x021626E0
	bx lr
	arm_func_end ov11_021626E0

	arm_func_start ov11_021626E4
ov11_021626E4: ; 0x021626E4
	ldr ip, _021626F0 ; =FUN_02065E5C
	ldr r0, _021626F4 ; =OVERLAY11_BSS_0216D458
	bx ip
	.align 2, 0
_021626F0: .word OS_LockMutex
_021626F4: .word OVERLAY11_BSS_0216D458
	arm_func_end ov11_021626E4

	arm_func_start ov11_021626F8
ov11_021626F8: ; 0x021626F8
	ldr ip, _02162704 ; =FUN_02065EE0
	ldr r0, _02162708 ; =OVERLAY11_BSS_0216D458
	bx ip
	.align 2, 0
_02162704: .word OS_UnlockMutex
_02162708: .word OVERLAY11_BSS_0216D458
	arm_func_end ov11_021626F8

	arm_func_start ov11_0216270C
ov11_0216270C: ; 0x0216270C
	stmdb sp!, {r3, lr}
	ldr r0, _0216272C ; =OVERLAY11_BSS_0216D440
	bl OS_InitMutex
	ldr r0, _02162730 ; =OVERLAY11_BSS_0216D43C
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0216272C: .word OVERLAY11_BSS_0216D440
_02162730: .word OVERLAY11_BSS_0216D43C
	arm_func_end ov11_0216270C

	arm_func_start ov11_02162734
ov11_02162734: ; 0x02162734
	bx lr
	arm_func_end ov11_02162734

	arm_func_start ov11_02162738
ov11_02162738: ; 0x02162738
	stmdb sp!, {r4, lr}
	ldr r0, _02162778 ; =OVERLAY11_BSS_0216D440
	bl OS_LockMutex
	ldr r0, _0216277C ; =OVERLAY11_BSS_0216D43C
	ldr r0, [r0]
	cmp r0, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	ldrne r0, _0216277C ; =OVERLAY11_BSS_0216D43C
	movne r1, #1
	strne r1, [r0]
	ldr r0, _02162778 ; =OVERLAY11_BSS_0216D440
	bl OS_UnlockMutex
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02162778: .word OVERLAY11_BSS_0216D440
_0216277C: .word OVERLAY11_BSS_0216D43C
	arm_func_end ov11_02162738

	arm_func_start ov11_02162780
ov11_02162780: ; 0x02162780
	stmdb sp!, {r3, lr}
	ldr r0, _021627A4 ; =OVERLAY11_BSS_0216D440
	bl OS_LockMutex
	ldr r1, _021627A8 ; =OVERLAY11_BSS_0216D43C
	mov r2, #0
	ldr r0, _021627A4 ; =OVERLAY11_BSS_0216D440
	str r2, [r1]
	bl OS_UnlockMutex
	ldmia sp!, {r3, pc}
	.align 2, 0
_021627A4: .word OVERLAY11_BSS_0216D440
_021627A8: .word OVERLAY11_BSS_0216D43C
	arm_func_end ov11_02162780

	arm_func_start ov11_021627AC
ov11_021627AC: ; 0x021627AC
	ldr ip, _021627BC ; =FUN_02065BF4
	mov r1, #0
	mov r2, r1
	bx ip
	.align 2, 0
_021627BC: .word OS_SendMessage
	arm_func_end ov11_021627AC

	arm_func_start ov11_021627C0
ov11_021627C0: ; 0x021627C0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov sb, r0
	add r0, sp, #0
	bl OS_GetMacAddress
	mov r6, #0
	add r7, sp, #0
	mov r8, r6
	add r5, sp, #6
	mov r4, #2
	arm_func_end ov11_021627C0
_021627E8:
	ldrb r1, [r7], #1
	mov r2, r4
	add r0, r5, r8
	bl ov11_0216295C
	add r6, r6, #1
	cmp r6, #6
	add r8, r8, #2
	blt _021627E8
	add r1, sp, #6
	mov r0, sb
	mov r2, #0xc
	bl ov11_021611B8
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start ov11_02162820
ov11_02162820: ; 0x02162820
	ldr ip, _02162828 ; =FUN_020788B8
	bx ip
	.align 2, 0
_02162828: .word STD_GetStringLength
	arm_func_end ov11_02162820

	arm_func_start thunk_FUN_02078930
thunk_FUN_02078930: ; 0x0216282C
	ldr ip, _02162834 ; =FUN_02078930
	bx ip
	.align 2, 0
_02162834: .word STD_CompareNString
	arm_func_end thunk_FUN_02078930

	arm_func_start ov11_02162838
ov11_02162838: ; 0x02162838
	ldr ip, _02162848 ; =FUN_02067F14
	mov r2, r1
	mov r1, #0
	bx ip
	.align 2, 0
_02162848: .word MI_CpuFill8
	arm_func_end ov11_02162838

	arm_func_start ov11_0216284C
ov11_0216284C: ; 0x0216284C
	ldr ip, _02162860 ; =MI_CpuCopy8
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	.align 2, 0
_02162860: .word MI_CpuCopy8
	arm_func_end ov11_0216284C

	arm_func_start thunk_FUN_overlay_11__02160ca0
thunk_FUN_overlay_11__02160ca0: ; 0x02162864
	ldr ip, _0216286C ; =ov11_02160CA0
	bx ip
	.align 2, 0
_0216286C: .word ov11_02160CA0
	arm_func_end thunk_FUN_overlay_11__02160ca0

	arm_func_start thunk_FUN_overlay_11__02160d38
thunk_FUN_overlay_11__02160d38: ; 0x02162870
	ldr ip, _02162878 ; =ov11_02160D38
	bx ip
	.align 2, 0
_02162878: .word ov11_02160D38
	arm_func_end thunk_FUN_overlay_11__02160d38

	arm_func_start ov11_0216287C
ov11_0216287C: ; 0x0216287C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, r2
	ldr r4, _02162950 ; =0x01634578
	ldr r2, _02162954 ; =0x5D8A0000
	mov sb, r1
	cmp r8, r4
	mov sl, r0
	mov fp, r3
	mov r5, #0
	cmpeq sb, r2
	subhs r0, r5, #1
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, r5
	mov r0, r5
	arm_func_end ov11_0216287C
_021628B4:
	ldr r1, _02162958 ; =DAT_overlay_11_0216602c
	add r1, r1, r4, lsl #3
	ldr r6, [r1, #4]
	ldr r1, _02162958 ; =DAT_overlay_11_0216602c
	cmp r8, r6
	ldr r7, [r1, r4, lsl #3]
	cmpeq sb, r7
	blo _02162914
	mov r0, sb
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl _ll_udiv
	umull r3, r2, r0, r7
	mla r2, r0, r6, r2
	mov r1, #0
	add r0, r0, #0x30
	strb r0, [sl, r5]
	mla r2, r1, r7, r2
	subs sb, sb, r3
	sbc r8, r8, r2
	mov r0, #1
	add r5, r5, #1
	b _02162934
_02162914:
	cmp r0, #0
	bne _02162928
	rsb r1, r4, #0x11
	cmp r1, fp
	bgt _02162934
_02162928:
	mov r1, #0x30
	strb r1, [sl, r5]
	add r5, r5, #1
_02162934:
	add r4, r4, #1
	cmp r4, #0x10
	blt _021628B4
	adds r0, sb, #0x30
	strb r0, [sl, r5]
	add r0, r5, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02162950: .word 0x01634578
_02162954: .word 0x5D8A0000
_02162958: .word DAT_overlay_11_0216602c

	arm_func_start ov11_0216295C
ov11_0216295C: ; 0x0216295C
	stmdb sp!, {r3, lr}
	mov lr, #0
	cmp r2, #8
	subgt r0, lr, #1
	ldmgtia sp!, {r3, pc}
	cmp r2, #1
	mov ip, #1
	blt _021629AC
	arm_func_end ov11_0216295C
_0216297C:
	sub r3, r2, ip
	mov r3, r3, lsl #2
	mov r3, r1, lsr r3
	and r3, r3, #0xf
	cmp r3, #0xa
	addlo r3, r3, #0x30
	addhs r3, r3, #0x57
	add ip, ip, #1
	strb r3, [r0, lr]
	add lr, lr, #1
	cmp ip, r2
	ble _0216297C
_021629AC:
	mov r0, lr
	ldmia sp!, {r3, pc}
	; 0x021629B4

    .rodata

    .global s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02165fb0
s_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef_overlay_11_02165fb0: ; 0x02165FB0
	.asciz "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-"

    .global DAT_overlay_11_02165FF1
DAT_overlay_11_02165FF1:
	.byte 0x00, 0x00, 0x00

    .global s_00_0000000_00_overlay_11_02165ff4
s_00_0000000_00_overlay_11_02165ff4: ; 0x02165FF4
	.asciz "00:0000000-00"

    .global DAT_overlay_11_02166002
DAT_overlay_11_02166002:
	.byte 0x00, 0x00

    .global s_bGlzdA_overlay_11_02166004
s_bGlzdA_overlay_11_02166004: ; 0x02166004
	.asciz "bGlzdA**"

    .global DAT_overlay_11_0216600D
DAT_overlay_11_0216600D:
	.byte 0x00, 0x00, 0x00

    .global s_Y291bnQ_overlay_11_02166010
s_Y291bnQ_overlay_11_02166010: ; 0x02166010
	.asciz "Y291bnQ*"

    .global DAT_overlay_11_02166019
DAT_overlay_11_02166019:
	.byte 0x00, 0x00, 0x00

    .global s_Y29udGVudHM_overlay_11_0216601c
s_Y29udGVudHM_overlay_11_0216601c: ; 0x0216601C
	.asciz "Y29udGVudHM*"

    .global DAT_overlay_11_02166029
DAT_overlay_11_02166029:
	.byte 0x00, 0x00, 0x00

    .global DAT_overlay_11_0216602c
DAT_overlay_11_0216602c: ; 0x0216602C
	.byte 0x00, 0x00, 0xC1, 0x6F

    .global DAT_overlay_11_02166030
DAT_overlay_11_02166030: ; 0x02166030
	.byte 0xF2, 0x86, 0x23, 0x00

    .global DAT_overlay_11_02166034
DAT_overlay_11_02166034: ; 0x02166034
	.byte 0x00, 0x80, 0xC6, 0xA4

    .global DAT_overlay_11_02166038
DAT_overlay_11_02166038: ; 0x02166038
	.byte 0x7E, 0x8D, 0x03, 0x00, 0x00, 0x40, 0x7A, 0x10
	.byte 0xF3, 0x5A, 0x00, 0x00, 0x00, 0xA0, 0x72, 0x4E, 0x18, 0x09, 0x00, 0x00, 0x00, 0x10, 0xA5, 0xD4
	.byte 0xE8, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x76, 0x48, 0x17, 0x00, 0x00, 0x00, 0x00, 0xE4, 0x0B, 0x54
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0xCA, 0x9A, 0x3B, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE1, 0xF5, 0x05
	.byte 0x00, 0x00, 0x00, 0x00, 0x80, 0x96, 0x98, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x42, 0x0F, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xA0, 0x86, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

    .data

    .global DAT_overlay_11_02169984
DAT_overlay_11_02169984: ; 0x02169984
	.byte 0x01, 0x00, 0x01, 0x00

    .global ptr_s_US_Washington_Nintendo_of_Amer_overlay_11_0216999c_overlay_11_02169988
ptr_s_US_Washington_Nintendo_of_Amer_overlay_11_0216999c_overlay_11_02169988: ; 0x02169988
	.word s_US_Washington_Nintendo_of_Amer_overlay_11_0216999c
	.byte 0x80, 0x00, 0x00, 0x00
	.word DAT_overlay_11_021699ec
	.byte 0x03, 0x00, 0x00, 0x00

    .global ptr_FUN_overlay_0_02169984_overlay_11_02169998
ptr_FUN_overlay_0_02169984_overlay_11_02169998: ; 0x02169998
	.word DAT_overlay_11_02169984

    .global s_US_Washington_Nintendo_of_Amer_overlay_11_0216999c
s_US_Washington_Nintendo_of_Amer_overlay_11_0216999c: ; 0x0216999C
	.asciz "US, Washington, Nintendo of America Inc, NOA, Nintendo CA, ca@noa.nintendo.com"

    .global DAT_overlay_11_021699EB
DAT_overlay_11_021699EB:
	.byte 0x00

    .global DAT_overlay_11_021699ec
DAT_overlay_11_021699ec: ; 0x021699EC
	.byte 0xB3, 0xCD, 0x79, 0x97
	.byte 0x77, 0x5D, 0x8A, 0xAF, 0x86, 0xA8, 0xE8, 0xD7, 0x73, 0x1C, 0x77, 0xDF, 0x10, 0x90, 0x1F, 0x81
	.byte 0xF8, 0x41, 0x9E, 0x21, 0x55, 0xDF, 0xBC, 0xFC, 0x63, 0xFB, 0x19, 0x43, 0xF1, 0xF6, 0xC4, 0x72
	.byte 0x42, 0x49, 0xBD, 0xAD, 0x44, 0x68, 0x4E, 0xF3, 0xDA, 0x1D, 0xE6, 0x4D, 0xD8, 0xF9, 0x59, 0x88
	.byte 0xDC, 0xAE, 0x3E, 0x9B, 0x38, 0x09, 0xCA, 0x7F, 0xFF, 0xDC, 0x24, 0xA2, 0x44, 0x78, 0x78, 0x49
	.byte 0x93, 0xD4, 0x84, 0x40, 0x10, 0xB8, 0xEC, 0x3E, 0xDB, 0x2D, 0x93, 0xC8, 0x11, 0xC8, 0xFD, 0x78
	.byte 0x2D, 0x61, 0xAD, 0x31, 0xAE, 0x86, 0x26, 0xB0, 0xFD, 0x5A, 0x3F, 0xA1, 0x3D, 0xBF, 0xE2, 0x4B
	.byte 0x49, 0xEC, 0xCE, 0x66, 0x98, 0x58, 0x26, 0x12, 0xC0, 0xFB, 0xF4, 0x77, 0x65, 0x1B, 0xEA, 0xFB
	.byte 0xCB, 0x7F, 0xE0, 0x8C, 0xCB, 0x02, 0xA3, 0x4E, 0x5E, 0x8C, 0xEA, 0x9B

    .global s_Nitro_WiFi_SDK_d_d_overlay_11_02169a6c
s_Nitro_WiFi_SDK_d_d_overlay_11_02169a6c: ; 0x02169A6C
	.asciz "Nitro WiFi SDK/%d.%d"

    .global DAT_overlay_11_02169A81
DAT_overlay_11_02169A81:
	.byte 0x00, 0x00, 0x00

    .global PTR_ptr_s_US_Washington_Nintendo_of_Amer_overlay_11_0216999c_overlay_11_02169988_overlay_11_02169a84
PTR_ptr_s_US_Washington_Nintendo_of_Amer_overlay_11_0216999c_overlay_11_02169988_overlay_11_02169a84: ; 0x02169A84
	.word ptr_s_US_Washington_Nintendo_of_Amer_overlay_11_0216999c_overlay_11_02169988

    .global s_HTTPSTATUSCODE_overlay_11_02169a88
s_HTTPSTATUSCODE_overlay_11_02169a88: ; 0x02169A88
	.asciz "HTTPSTATUSCODE"

    .global DAT_overlay_11_02169A97
DAT_overlay_11_02169A97:
	.byte 0x00

    .global s_returncd_overlay_11_02169a98
s_returncd_overlay_11_02169a98: ; 0x02169A98
	.asciz "returncd"

    .global DAT_overlay_11_02169AA1
DAT_overlay_11_02169AA1:
	.byte 0x00, 0x00, 0x00

    .global s_User_Agent_overlay_11_02169aa4
s_User_Agent_overlay_11_02169aa4: ; 0x02169AA4
	.asciz "User-Agent"

    .global DAT_overlay_11_02169AAF
DAT_overlay_11_02169AAF:
	.byte 0x00

    .global s_gamecd_overlay_11_02169ab0
s_gamecd_overlay_11_02169ab0: ; 0x02169AB0
	.asciz "gamecd"

    .global DAT_overlay_11_02169AB7
DAT_overlay_11_02169AB7:
	.byte 0x00

    .global s_rhgamecd_overlay_11_02169ab8
s_rhgamecd_overlay_11_02169ab8: ; 0x02169AB8
	.asciz "rhgamecd"

    .global DAT_overlay_11_02169AC1
DAT_overlay_11_02169AC1:
	.byte 0x00, 0x00, 0x00

    .global s_passwd_overlay_11_02169ac4
s_passwd_overlay_11_02169ac4: ; 0x02169AC4
	.asciz "passwd"

    .global DAT_overlay_11_02169ACB
DAT_overlay_11_02169ACB:
	.byte 0x00

    .global s_token_overlay_11_02169acc
s_token_overlay_11_02169acc: ; 0x02169ACC
	.asciz "token"

    .global DAT_overlay_11_02169AD2
DAT_overlay_11_02169AD2:
	.byte 0x00, 0x00

    .global s_userid_overlay_11_02169ad4
s_userid_overlay_11_02169ad4: ; 0x02169AD4
	.asciz "userid"

    .global DAT_overlay_11_02169ADB
DAT_overlay_11_02169ADB:
	.byte 0x00

    .global s_macadr_overlay_11_02169adc
s_macadr_overlay_11_02169adc: ; 0x02169ADC
	.asciz "macadr"

    .global DAT_overlay_11_02169AE3
DAT_overlay_11_02169AE3:
	.byte 0x00

    .global s_action_overlay_11_02169ae4
s_action_overlay_11_02169ae4: ; 0x02169AE4
	.asciz "action"

    .global DAT_overlay_11_02169AEB
DAT_overlay_11_02169AEB:
	.byte 0x00

    .global s_attr1_overlay_11_02169aec
s_attr1_overlay_11_02169aec: ; 0x02169AEC
	.asciz "attr1"

    .global DAT_overlay_11_02169AF2
DAT_overlay_11_02169AF2:
	.byte 0x00, 0x00

    .global s_attr2_overlay_11_02169af4
s_attr2_overlay_11_02169af4: ; 0x02169AF4
	.asciz "attr2"

    .global DAT_overlay_11_02169AFA
DAT_overlay_11_02169AFA:
	.byte 0x00, 0x00

    .global s_attr3_overlay_11_02169afc
s_attr3_overlay_11_02169afc: ; 0x02169AFC
	.asciz "attr3"

    .global DAT_overlay_11_02169B02
DAT_overlay_11_02169B02:
	.byte 0x00, 0x00

    .global s_apinfo_overlay_11_02169b04
s_apinfo_overlay_11_02169b04: ; 0x02169B04
	.asciz "apinfo"

    .global DAT_overlay_11_02169B0B
DAT_overlay_11_02169B0B:
	.byte 0x00

    .global s_offset_overlay_11_02169b0c
s_offset_overlay_11_02169b0c: ; 0x02169B0C
	.asciz "offset"

    .global DAT_overlay_11_02169B13
DAT_overlay_11_02169B13:
	.byte 0x00

    .global s_num_overlay_11_02169b14
s_num_overlay_11_02169b14: ; 0x02169B14
	.asciz "num"

    .global s_contents_overlay_11_02169b18
s_contents_overlay_11_02169b18: ; 0x02169B18
	.asciz "contents"

    .global DAT_overlay_11_02169B21
DAT_overlay_11_02169B21:
	.byte 0x00, 0x00, 0x00

    .global s_Content_Length_overlay_11_02169b24
s_Content_Length_overlay_11_02169b24: ; 0x02169B24
	.asciz "Content-Length"
	; 0x02169B33

    .bss

    .global OVERLAY11_BSS_0216D2B0
OVERLAY11_BSS_0216D2B0: ; 0x0216D2B0
    .space 0x4

    .global OVERLAY11_BSS_0216D2B4
OVERLAY11_BSS_0216D2B4: ; 0x0216D2B4
    .space 0x4

    .global OVERLAY11_BSS_0216D2B8
OVERLAY11_BSS_0216D2B8: ; 0x0216D2B8
    .space 0x4

    .global OVERLAY11_BSS_0216D2BC
OVERLAY11_BSS_0216D2BC: ; 0x0216D2BC
    .space 0x4

    .global OVERLAY11_BSS_0216D2C0
OVERLAY11_BSS_0216D2C0: ; 0x0216D2C0
    .space 0x8

    .global OVERLAY11_BSS_0216D2C8
OVERLAY11_BSS_0216D2C8: ; 0x0216D2C8
    .space 0x4

    .global OVERLAY11_BSS_0216D2CC
OVERLAY11_BSS_0216D2CC: ; 0x0216D2CC
    .space 0x4

    .global OVERLAY11_BSS_0216D2D0
OVERLAY11_BSS_0216D2D0: ; 0x0216D2D0
    .space 0x4

    .global OVERLAY11_BSS_0216D2D4
OVERLAY11_BSS_0216D2D4: ; 0x0216D2D4
    .space 0x4

    .global OVERLAY11_BSS_0216D2D8
OVERLAY11_BSS_0216D2D8: ; 0x0216D2D8
    .space 0xC

    .global OVERLAY11_BSS_0216D2E4
OVERLAY11_BSS_0216D2E4: ; 0x0216D2E4
    .space 0xC

    .global OVERLAY11_BSS_0216D2F0
OVERLAY11_BSS_0216D2F0: ; 0x0216D2F0
    .space 0x14

    .global OVERLAY11_BSS_0216D304
OVERLAY11_BSS_0216D304: ; 0x0216D304
    .space 0x18

    .global OVERLAY11_BSS_0216D31C
OVERLAY11_BSS_0216D31C: ; 0x0216D31C
    .space 0x1C

    .global OVERLAY11_BSS_0216D338
OVERLAY11_BSS_0216D338: ; 0x0216D338
    .space 0x24

    .global OVERLAY11_BSS_0216D35C
OVERLAY11_BSS_0216D35C: ; 0x0216D35C
    .space 0x8

    .global OVERLAY11_BSS_0216D364
OVERLAY11_BSS_0216D364: ; 0x0216D364
    .space 0x34

    .global OVERLAY11_BSS_0216D398
OVERLAY11_BSS_0216D398: ; 0x0216D398
    .space 0xC

    .global OVERLAY11_BSS_0216D3A4
OVERLAY11_BSS_0216D3A4: ; 0x0216D3A4
    .space 0x18

    .global OVERLAY11_BSS_0216D3BC
OVERLAY11_BSS_0216D3BC: ; 0x0216D3BC
    .space 0x80

    .global OVERLAY11_BSS_0216D43C
OVERLAY11_BSS_0216D43C: ; 0x0216D43C
    .space 0x4

    .global OVERLAY11_BSS_0216D440
OVERLAY11_BSS_0216D440: ; 0x0216D440
    .space 0x18

    .global OVERLAY11_BSS_0216D458
OVERLAY11_BSS_0216D458: ; 0x0216D458
    .space 0x28
