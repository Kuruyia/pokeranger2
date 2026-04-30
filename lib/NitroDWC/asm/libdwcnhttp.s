    .include "macros/function.inc"
    .include "include/libdwcnhttp.inc"

    .text

	arm_func_start NHTTP_Startup
NHTTP_Startup: ; 0x0215DBBC
	stmdb sp!, {r4, lr}
	ldr r3, _0215DC80 ; =OVERLAY11_BSS_0216C468
	mov ip, #0
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	str ip, [r3, #4]
	str ip, [r3, #0x1c]
	str ip, [r3, #0x20]
	str ip, [r3, #0x10]
	mov r4, r2
	str ip, [r3, #0x14]
	bl ov11_0215E1DC
	cmp r0, #0
	bne _0215DC08
	ldr r0, _0215DC80 ; =OVERLAY11_BSS_0216C468
	mov r1, #9
	str r1, [r0, #4]
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end NHTTP_Startup
_0215DC08:
	ldr r1, _0215DC80 ; =OVERLAY11_BSS_0216C468
	mov r0, #0x2000
	ldr r2, [r1, #8]
	mov r1, #8
	blx r2
	movs r1, r0
	ldr r0, _0215DC80 ; =OVERLAY11_BSS_0216C468
	str r1, [r0, #0x18]
	bne _0215DC40
	mov r1, #1
	str r1, [r0, #4]
	bl ov11_0215E1F4
	mov r0, #0
	ldmia sp!, {r4, pc}
_0215DC40:
	mov r0, r4
	bl ov11_0215E220
	cmp r0, #0
	ldrne r1, _0215DC80 ; =OVERLAY11_BSS_0216C468
	movne r0, #1
	strne r0, [r1]
	ldmneia sp!, {r4, pc}
	ldr r1, _0215DC80 ; =OVERLAY11_BSS_0216C468
	mov r0, #9
	str r0, [r1, #4]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0xc]
	blx r1
	bl ov11_0215E1F4
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0215DC80: .word OVERLAY11_BSS_0216C468

	arm_func_start NHTTP_CleanupAsync
NHTTP_CleanupAsync: ; 0x0215DC84
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	mov r2, r0
	mov ip, #0x800
	ldr r0, _0215DCC0 ; =OVERLAY11_BSS_0216C48C
	ldr r1, _0215DCC4 ; =ov11_0215DCCC
	ldr r3, _0215DCC8 ; =OVERLAY11_BSS_0216CD4C
	str ip, [sp]
	mov ip, #0x10
	str ip, [sp, #4]
	bl OS_CreateThread
	ldr r0, _0215DCC0 ; =OVERLAY11_BSS_0216C48C
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0215DCC0: .word OVERLAY11_BSS_0216C48C
_0215DCC4: .word ov11_0215DCCC
_0215DCC8: .word OVERLAY11_BSS_0216CD4C
	arm_func_end NHTTP_CleanupAsync

	arm_func_start ov11_0215DCCC
ov11_0215DCCC: ; 0x0215DCCC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov11_0215EE5C
	bl ov11_0215E298
	ldr r1, _0215DD04 ; =OVERLAY11_BSS_0216C468
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0xc]
	blx r1
	bl ov11_0215E1F4
	ldr r0, _0215DD04 ; =OVERLAY11_BSS_0216C468
	mov r1, #0
	str r1, [r0]
	blx r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0215DD04: .word OVERLAY11_BSS_0216C468
	arm_func_end ov11_0215DCCC

	arm_func_start ov11_0215DD08
ov11_0215DD08: ; 0x0215DD08
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	ldr sl, [sb]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp sl, #0
	mov r4, #0
	beq _0215DD84
	ldr r1, [sl, #8]
	mov r0, r8
	mov r5, sl
	bl ov11_02160DF4
	cmp r0, #0
	beq _0215DD80
	ldr r5, [sl, #4]
	ldr r0, [sb]
	cmp r5, r0
	beq _0215DD84
	arm_func_end ov11_0215DD08
_0215DD54:
	ldr r1, [r5, #8]
	mov r0, r8
	bl ov11_02160DF4
	cmp r0, #0
	moveq r4, #1
	beq _0215DD84
	ldr r5, [r5, #4]
	ldr r0, [sb]
	cmp r5, r0
	bne _0215DD54
	b _0215DD84
_0215DD80:
	mov r4, #1
_0215DD84:
	cmp r4, #0
	strne r7, [r5, #0xc]
	bne _0215DE10
	ldr r1, _0215DE18 ; =OVERLAY11_BSS_0216C470
	mov r0, r6
	ldr r2, [r1]
	mov r1, #4
	blx r2
	cmp r0, #0
	bne _0215DDC0
	ldr r0, _0215DE1C ; =OVERLAY11_BSS_0216C46C
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0215DDC0:
	str r8, [r0, #8]
	str r7, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sb]
	cmp r1, #0
	streq r0, [r0, #4]
	streq r0, [r0]
	streq r0, [sb]
	beq _0215DE10
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [sb]
	str r1, [r0, #4]
	ldr r1, [sb]
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r1, [sb]
	str r0, [r1]
_0215DE10:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0215DE18: .word OVERLAY11_BSS_0216C470
_0215DE1C: .word OVERLAY11_BSS_0216C46C

	arm_func_start ov11_0215DE20
ov11_0215DE20: ; 0x0215DE20
	ldr r3, [r0]
	cmp r3, #0
	beq _0215DE5C
	ldr r2, [r3]
	cmp r3, r2
	moveq r1, #0
	streq r1, [r0]
	beq _0215DE5C
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r2, [r3]
	ldr r1, [r3, #4]
	str r2, [r1]
	ldr r1, [r3, #4]
	str r1, [r0]
	arm_func_end ov11_0215DE20
_0215DE5C:
	mov r0, r3
	bx lr

	arm_func_start ov11_0215DE64
ov11_0215DE64: ; 0x0215DE64
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x7b
	moveq r0, #0x30
	beq _0215DE8C
	cmp r0, #0x5b
	moveq r0, #0x61
	beq _0215DE8C
	cmp r0, #0x3a
	moveq r0, #0x41
	arm_func_end ov11_0215DE64
_0215DE8C:
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bx lr

	arm_func_start ov11_0215DE98
ov11_0215DE98: ; 0x0215DE98
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r0, sb
	mov r1, r8
	add r2, sl, #0x46
	mov r3, #0x12
	bl ov11_02160EE8
	cmp r0, #0
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r6, _0215DF34 ; =DAT_overlay_11_02165f13
	mov fp, #0x13
	mov r4, #0x12
	arm_func_end ov11_0215DE98
_0215DED4:
	add r7, sl, fp
	ldrsb r5, [r7, #0x44]
_0215DEDC:
	and r0, r5, #0xff
	bl ov11_0215DE64
	mov r5, r0
	strb r5, [r7, #0x44]
	ldrsb r0, [r6]
	cmp r5, r0
	beq _0215DF1C
	mov r0, sb
	mov r1, r8
	mov r3, r4
	add r2, sl, #0x46
	bl ov11_02160EE8
	cmp r0, #0
	bge _0215DEDC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0215DF1C:
	sub fp, fp, #1
	cmp fp, #2
	sub r6, r6, #1
	bge _0215DED4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0215DF34: .word DAT_overlay_11_02165f13

	arm_func_start NHTTP_AddHeaderField
NHTTP_AddHeaderField: ; 0x0215DF38
	stmdb sp!, {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r0, #0x34
	mov r3, #0x18
	bl ov11_0215DD08
	ldmia sp!, {r3, pc}
	arm_func_end NHTTP_AddHeaderField

	arm_func_start NHTTP_AddPostDataAscii
NHTTP_AddPostDataAscii: ; 0x0215DF5C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8]
	mov r7, r1
	mov r6, r2
	mov r5, #0
	cmp r0, #0
	movne r0, r5
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl ov11_0215F490
	mov r4, r0
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl ov11_0215DE98
	cmp r0, #0
	beq _0215DFC8
	mov r1, r7
	mov r2, r6
	add r0, r8, #0x38
	mov r3, #0x18
	bl ov11_0215DD08
	movs r5, r0
	ldrne r0, [r8, #0x38]
	ldrne r0, [r0]
	strne r4, [r0, #0x10]
	arm_func_end NHTTP_AddPostDataAscii
_0215DFC8:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start NHTTP_SetCAChain
NHTTP_SetCAChain: ; 0x0215DFD0
	ldr r3, [r0]
	cmp r3, #0
	movne r0, #0
	streq r1, [r0, #0x1c]
	streq r2, [r0, #0x18]
	moveq r0, #1
	bx lr
	arm_func_end NHTTP_SetCAChain

	arm_func_start ov11_0215DFEC
ov11_0215DFEC: ; 0x0215DFEC
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0215E094 ; =OVERLAY11_BSS_0216C470
	mov r4, r0
	ldr r2, [r1]
	mov r0, #0x14
	mov r1, #4
	mvn r5, #0
	blx r2
	cmp r0, #0
	beq _0215E08C
	ldr r1, _0215E098 ; =OVERLAY11_BSS_0216C488
	ldr r2, [r1]
	cmp r2, #0
	streq r0, [r0]
	streq r0, [r0, #4]
	streq r0, [r1]
	beq _0215E054
	ldr r2, [r2]
	str r2, [r0]
	ldr r2, [r1]
	str r2, [r0, #4]
	ldr r2, [r1]
	ldr r2, [r2]
	str r0, [r2, #4]
	ldr r1, [r1]
	str r0, [r1]
	arm_func_end ov11_0215DFEC
_0215E054:
	ldr r1, _0215E09C ; =OVERLAY11_BSS_0216C484
	mvn r2, #0
	ldr ip, [r1]
	ldr r3, [r1]
	add r3, r3, #1
	str r3, [r1]
	str ip, [r0, #8]
	str r4, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r2, [r1]
	ldr r5, [r0, #8]
	cmp r2, #0
	movlt r0, #0
	strlt r0, [r1]
_0215E08C:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0215E094: .word OVERLAY11_BSS_0216C470
_0215E098: .word OVERLAY11_BSS_0216C488
_0215E09C: .word OVERLAY11_BSS_0216C484

	arm_func_start ov11_0215E0A0
ov11_0215E0A0: ; 0x0215E0A0
	ldr r1, _0215E0F4 ; =OVERLAY11_BSS_0216C488
	mov r2, #0
	ldr r3, [r1]
	cmp r3, #0
	beq _0215E0EC
	ldr r1, [r3, #8]
	cmp r1, r0
	moveq r2, r3
	beq _0215E0EC
	ldr ip, [r3, #4]
	cmp ip, r3
	beq _0215E0EC
	arm_func_end ov11_0215E0A0
_0215E0D0:
	ldr r1, [ip, #8]
	cmp r1, r0
	moveq r2, ip
	beq _0215E0EC
	ldr ip, [ip, #4]
	cmp ip, r3
	bne _0215E0D0
_0215E0EC:
	mov r0, r2
	bx lr
	.align 2, 0
_0215E0F4: .word OVERLAY11_BSS_0216C488

	arm_func_start ov11_0215E0F8
ov11_0215E0F8: ; 0x0215E0F8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	bl ov11_0215E0A0
	movs r4, r0
	beq _0215E188
	ldr r0, _0215E190 ; =OVERLAY11_BSS_0216C488
	ldr r2, [r0]
	ldr r1, [r2]
	cmp r2, r1
	beq _0215E148
	ldmia r4, {r1, r2}
	str r2, [r1, #4]
	ldr r2, [r4]
	ldr r1, [r4, #4]
	str r2, [r1]
	ldr r1, [r0]
	cmp r1, r4
	ldreq r1, [r4, #4]
	streq r1, [r0]
	b _0215E150
	arm_func_end ov11_0215E0F8
_0215E148:
	mov r1, r5
	str r1, [r0]
_0215E150:
	ldr r0, [r4, #0xc]
	ldr r5, [r0, #0x3c]
	ldr r6, [r0, #0x30]
	ldr r7, [r0, #0x2c]
	bl ov11_0215ED58
	ldr r1, _0215E194 ; =OVERLAY11_BSS_0216C474
	mov r0, r4
	ldr r1, [r1]
	blx r1
	mov r1, r6
	mov r2, r7
	mov r0, #8
	blx r5
	mov r5, #1
_0215E188:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0215E190: .word OVERLAY11_BSS_0216C488
_0215E194: .word OVERLAY11_BSS_0216C474

	arm_func_start ov11_0215E198
ov11_0215E198: ; 0x0215E198
	stmdb sp!, {r4, lr}
	ldr r4, _0215E1C4 ; =OVERLAY11_BSS_0216C488
	ldr r0, [r4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	arm_func_end ov11_0215E198
_0215E1AC:
	ldr r0, [r0, #8]
	bl ov11_0215E0F8
	ldr r0, [r4]
	cmp r0, #0
	bne _0215E1AC
	ldmia sp!, {r4, pc}
	.align 2, 0
_0215E1C4: .word OVERLAY11_BSS_0216C488

	arm_func_start ov11_0215E1C8
ov11_0215E1C8: ; 0x0215E1C8
	ldr ip, _0215E1D4 ; =ov11_0215DE20
	ldr r0, _0215E1D8 ; =OVERLAY11_BSS_0216C488
	bx ip
	.align 2, 0
_0215E1D4: .word ov11_0215DE20
_0215E1D8: .word OVERLAY11_BSS_0216C488
	arm_func_end ov11_0215E1C8

	arm_func_start ov11_0215E1DC
ov11_0215E1DC: ; 0x0215E1DC
	stmdb sp!, {r3, lr}
	ldr r0, _0215E1F0 ; =OVERLAY11_BSS_0216CD50
	bl OS_InitMutex
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0215E1F0: .word OVERLAY11_BSS_0216CD50
	arm_func_end ov11_0215E1DC

	arm_func_start ov11_0215E1F4
ov11_0215E1F4: ; 0x0215E1F4
	bx lr
	arm_func_end ov11_0215E1F4

	arm_func_start ov11_0215E1F8
ov11_0215E1F8: ; 0x0215E1F8
	ldr ip, _0215E204 ; =FUN_02065E5C
	ldr r0, _0215E208 ; =OVERLAY11_BSS_0216CD50
	bx ip
	.align 2, 0
_0215E204: .word OS_LockMutex
_0215E208: .word OVERLAY11_BSS_0216CD50
	arm_func_end ov11_0215E1F8

	arm_func_start ov11_0215E20C
ov11_0215E20C: ; 0x0215E20C
	ldr ip, _0215E218 ; =FUN_02065EE0
	ldr r0, _0215E21C ; =OVERLAY11_BSS_0216CD50
	bx ip
	.align 2, 0
_0215E218: .word OS_UnlockMutex
_0215E21C: .word OVERLAY11_BSS_0216CD50
	arm_func_end ov11_0215E20C

	arm_func_start ov11_0215E220
ov11_0215E220: ; 0x0215E220
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	bl OS_IsThreadAvailable
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _0215E288 ; =OVERLAY11_BSS_0216CD68
	ldr r1, _0215E28C ; =OVERLAY11_BSS_0216CD4C
	mov r2, #1
	bl OS_InitMessageQueue
	mov r0, #0x2000
	str r0, [sp]
	ldr r0, _0215E290 ; =OVERLAY11_BSS_0216CD88
	ldr r1, _0215E294 ; =ov11_0215F7E4
	add r3, r4, #0x2000
	mov r2, #0
	str r5, [sp, #4]
	bl OS_CreateThread
	ldr r0, _0215E290 ; =OVERLAY11_BSS_0216CD88
	bl OS_WakeupThreadDirect
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0215E288: .word OVERLAY11_BSS_0216CD68
_0215E28C: .word OVERLAY11_BSS_0216CD4C
_0215E290: .word OVERLAY11_BSS_0216CD88
_0215E294: .word ov11_0215F7E4
	arm_func_end ov11_0215E220

	arm_func_start ov11_0215E298
ov11_0215E298: ; 0x0215E298
	stmdb sp!, {r3, lr}
	ldr r0, _0215E2B8 ; =OVERLAY11_BSS_0216C47C
	mov r1, #1
	str r1, [r0]
	bl ov11_0215E2DC
	ldr r0, _0215E2BC ; =OVERLAY11_BSS_0216CD88
	bl OS_JoinThread
	ldmia sp!, {r3, pc}
	.align 2, 0
_0215E2B8: .word OVERLAY11_BSS_0216C47C
_0215E2BC: .word OVERLAY11_BSS_0216CD88
	arm_func_end ov11_0215E298

	arm_func_start ov11_0215E2C0
ov11_0215E2C0: ; 0x0215E2C0
	stmdb sp!, {r3, lr}
	ldr r0, _0215E2D8 ; =OVERLAY11_BSS_0216CD68
	add r1, sp, #0
	mov r2, #1
	bl OS_ReceiveMessage
	ldmia sp!, {r3, pc}
	.align 2, 0
_0215E2D8: .word OVERLAY11_BSS_0216CD68
	arm_func_end ov11_0215E2C0

	arm_func_start ov11_0215E2DC
ov11_0215E2DC: ; 0x0215E2DC
	ldr ip, _0215E2F0 ; =FUN_02065BF4
	mov r1, #0
	ldr r0, _0215E2F4 ; =OVERLAY11_BSS_0216CD68
	mov r2, r1
	bx ip
	.align 2, 0
_0215E2F0: .word OS_SendMessage
_0215E2F4: .word OVERLAY11_BSS_0216CD68
	arm_func_end ov11_0215E2DC

	arm_func_start ov11_0215E2F8
ov11_0215E2F8: ; 0x0215E2F8
	stmdb sp!, {r3, lr}
	cmp r1, #0x400
	bge _0215E314
	mov r0, #0
	str r0, [r2]
	str r1, [r3]
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0215E2F8
_0215E314:
	sub ip, r1, #0x400
	movs ip, ip, asr #9
	sub lr, ip, #1
	ldr ip, [r0, #0x1c]
	beq _0215E338
_0215E328:
	cmp lr, #0
	sub lr, lr, #1
	ldr ip, [ip]
	bne _0215E328
_0215E338:
	ldr r0, _0215E350 ; =0x000001FF
	sub r1, r1, #0x400
	str ip, [r2]
	and r0, r1, r0
	str r0, [r3]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0215E350: .word 0x000001FF

	arm_func_start ov11_0215E354
ov11_0215E354: ; 0x0215E354
	ldr r3, [r1]
	cmp r3, #0
	bne _0215E394
	ldr r3, [r2]
	cmp r3, #0x400
	bge _0215E380
	add r1, r3, #1
	str r1, [r2]
	add r0, r0, r3
	ldrsb r0, [r0, #0x20]
	bx lr
	arm_func_end ov11_0215E354
_0215E380:
	mov r3, #0
	str r3, [r2]
	ldr r0, [r0, #0x1c]
	str r0, [r1]
	b _0215E3B4
_0215E394:
	ldr r0, [r2]
	cmp r0, #0x200
	bne _0215E3B4
	mov r0, #0
	str r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0]
	str r0, [r1]
_0215E3B4:
	ldr r3, [r2]
	add r0, r3, #1
	str r0, [r2]
	ldr r0, [r1]
	add r0, r0, r3
	ldrsb r0, [r0, #4]
	bx lr

	arm_func_start ov11_0215E3D0
ov11_0215E3D0: ; 0x0215E3D0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r6, #0
	movs r7, r3
	mov sl, r0
	subne r0, r6, #1
	mov sb, r1
	mov r8, r2
	strne r0, [r7]
	cmp sb, r8
	bge _0215E494
	add r2, sp, #4
	add r3, sp, #0
	mov r0, sl
	mov r1, sb
	bl ov11_0215E2F8
	cmp sb, r8
	bge _0215E494
	mov fp, #1
	add r5, sp, #4
	add r4, sp, #0
	arm_func_end ov11_0215E3D0
_0215E424:
	mov r0, sl
	mov r1, r5
	mov r2, r4
	bl ov11_0215E354
	cmp r0, #0x3a
	bne _0215E450
	cmp r7, #0
	beq _0215E450
	ldr r1, [r7]
	cmp r1, #0
	strlt sb, [r7]
_0215E450:
	cmp r6, #0
	bne _0215E464
	cmp r0, #0xd
	moveq r6, fp
	b _0215E488
_0215E464:
	cmp r0, #0xa
	bne _0215E484
	sub r0, r8, #1
	cmp sb, r0
	moveq r0, #0
	add sp, sp, #8
	addne r0, sb, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0215E484:
	mov r6, #0
_0215E488:
	add sb, sb, #1
	cmp sb, r8
	blt _0215E424
_0215E494:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov11_0215E4A0
ov11_0215E4A0: ; 0x0215E4A0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r6, r2
	mov r8, r0
	cmp r7, r6
	bge _0215E504
	add r2, sp, #4
	add r3, sp, #0
	bl ov11_0215E2F8
	cmp r7, r6
	bge _0215E504
	add r5, sp, #4
	add r4, sp, #0
	arm_func_end ov11_0215E4A0
_0215E4D8:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl ov11_0215E354
	cmp r0, #0x20
	addne sp, sp, #8
	movne r0, r7
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r7, r7, #1
	cmp r7, r6
	blt _0215E4D8
_0215E504:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start ov11_0215E510
ov11_0215E510: ; 0x0215E510
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sb, r1
	mov r4, r2
	mov sl, r0
	mov r8, r3
	cmp sb, r4
	ldr r7, [sp, #0x30]
	bge _0215E5D4
	add r2, sp, #4
	add r3, sp, #0
	bl ov11_0215E2F8
	add r1, sp, #4
	add r2, sp, #0
	mov r0, sl
	bl ov11_0215E354
	sub r6, r4, #1
	add r5, sp, #4
	add r4, sp, #0
	mov fp, #0
	b _0215E598
	arm_func_end ov11_0215E510
_0215E564:
	cmp r2, #0
	cmpne r2, #0x20
	cmpne r2, r7
	cmpne sb, r6
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	mov r1, r5
	mov r2, r4
	bl ov11_0215E354
	add sb, sb, #1
	add r8, r8, #1
_0215E598:
	ldrsb r2, [r8]
	mov r1, fp
	cmp r2, #0x41
	blt _0215E5B0
	cmp r2, #0x5a
	movle r1, #1
_0215E5B0:
	cmp r1, #0
	addne r1, r2, #0x20
	moveq r1, r2
	cmp r0, #0x41
	blt _0215E5CC
	cmp r0, #0x5a
	addle r0, r0, #0x20
_0215E5CC:
	cmp r0, r1
	beq _0215E564
_0215E5D4:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start ov11_0215E5E0
ov11_0215E5E0: ; 0x0215E5E0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov r7, r2
	mov r6, r3
	ldr r0, [r4]
	add r2, r7, r6
	mov r8, r1
	cmp r2, r0
	bgt _0215E6C0
	cmp r6, #0
	beq _0215E6B8
	cmp r7, #0x400
	bge _0215E640
	rsb r5, r7, #0x400
	cmp r6, r5
	movle r5, r6
	add r1, r4, #0x20
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl ov11_0215F4B0
	add r7, r7, r5
	sub r6, r6, r5
	add r8, r8, r5
	arm_func_end ov11_0215E5E0
_0215E640:
	cmp r6, #0
	beq _0215E6B8
	sub r2, r7, #0x400
	ldr r0, _0215E6C8 ; =0x000001FF
	movs r1, r2, asr #9
	and r7, r2, r0
	sub r0, r1, #1
	ldr r4, [r4, #0x1c]
	beq _0215E674
_0215E664:
	cmp r0, #0
	sub r0, r0, #1
	ldr r4, [r4]
	bne _0215E664
_0215E674:
	cmp r6, #0
	beq _0215E6B8
	ldr sb, _0215E6C8 ; =0x000001FF
_0215E680:
	rsb r5, r7, #0x200
	cmp r6, r5
	movle r5, r6
	add r1, r4, #4
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl ov11_0215F4B0
	add r0, r7, r5
	and r7, r0, sb
	subs r6, r6, r5
	add r8, r8, r5
	ldr r4, [r4]
	bne _0215E680
_0215E6B8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0215E6C0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0215E6C8: .word 0x000001FF

	arm_func_start ov11_0215E6CC
ov11_0215E6CC: ; 0x0215E6CC
	ldr r0, [r0, #0xc]
	cmp r0, r1
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end ov11_0215E6CC

	arm_func_start ov11_0215E6E0
ov11_0215E6E0: ; 0x0215E6E0
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #0x30]
	mov lr, r2
	str r3, [sp]
	ldr r2, [ip, #0x18]
	ldr r3, [ip, #0xc]
	add r2, r2, lr
	sub r3, r3, lr
	bl ov11_0215F368
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0215E6E0

	arm_func_start ov11_0215E708
ov11_0215E708: ; 0x0215E708
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r4, [r8, #0x30]
	mov r6, r2
	mov r7, r1
	mov r0, r4
	mov r1, r6
	mov r5, r3
	bl ov11_0215E6CC
	cmp r0, #0
	addne sp, sp, #4
	ldrne r0, _0215E774 ; =0xFFFFFC15
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x20]
	sub r3, r0, r6
	str r1, [sp]
	ldr r2, [r4, #0x18]
	cmp r5, r3
	movle r3, r5
	mov r0, r8
	mov r1, r7
	add r2, r2, r6
	bl ov11_0215F368
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0215E774: .word 0xFFFFFC15
	arm_func_end ov11_0215E708

	arm_func_start NHTTP_CreateRequest
NHTTP_CreateRequest: ; 0x0215E778
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov fp, r0
	movs r0, r1
	cmpne r0, #1
	str r1, [sp]
	mov r5, r2
	mov r4, r3
	mov r7, #0
	cmpne r0, #2
	beq _0215E7B0
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #0xb
	str r1, [r0]
	b _0215EC3C
	arm_func_end NHTTP_CreateRequest
_0215E7B0:
	cmp r4, #0
	bne _0215E7C8
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #0xb
	str r1, [r0]
	b _0215EC3C
_0215E7C8:
	ldr r1, _0215ECC4 ; =OVERLAY11_BSS_0216C470
	mov r0, #0x58
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs r7, r0
	bne _0215E7F4
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #1
	str r1, [r0]
	b _0215EC3C
_0215E7F4:
	mov r1, #0x58
	bl ov11_0215F49C
	ldr r1, _0215ECC4 ; =OVERLAY11_BSS_0216C470
	mov r0, #0x420
	ldr r2, [r1]
	mov r1, #4
	blx r2
	str r0, [r7, #0x30]
	cmp r0, #0
	bne _0215E82C
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #1
	str r1, [r0]
	b _0215EC3C
_0215E82C:
	mov r1, #0x420
	bl ov11_0215F49C
	ldr r1, [r7, #0x30]
	mov r0, fp
	str r5, [r1, #0x18]
	ldr r1, [r7, #0x30]
	str r4, [r1, #0xc]
	bl ov11_0215F490
	mov r4, r0
	cmp r4, #7
	bgt _0215E868
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #4
	str r1, [r0]
	b _0215EC3C
_0215E868:
	mov r8, #7
	mov r3, #0x50
	ldr r1, _0215ECC8 ; =s_http_overlay_11_02169850
	mov r0, fp
	mov r2, r8
	str r3, [r7, #0x28]
	bl ov11_0215F428
	cmp r0, #0
	beq _0215E8C8
	ldr r1, _0215ECCC ; =s_https_overlay_11_02169858
	mov r0, fp
	mov r2, #8
	bl ov11_0215F428
	cmp r0, #0
	beq _0215E8B4
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #4
	str r1, [r0]
	b _0215EC3C
_0215E8B4:
	mov r0, #1
	str r0, [r7, #8]
	rsb r0, r0, #0x1bc
	str r0, [r7, #0x28]
	mov r8, #8
_0215E8C8:
	sub r4, r4, r8
	cmp r4, #0
	add r6, fp, r8
	bgt _0215E8E8
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #4
	str r1, [r0]
	b _0215EC3C
_0215E8E8:
	mov r5, #0
	mov sb, r5
	mov sl, r5
	b _0215E95C
_0215E8F8:
	cmp sl, #2
	subeq sl, sl, #1
	beq _0215E958
	cmp sl, #1
	bne _0215E94C
	sub r0, r5, #1
	mov r1, #2
	add r0, r6, r0
	bl ov11_02160BB8
	mov r0, r0, lsl #0x18
	movs r0, r0, asr #0x18
	sub sl, sl, #1
	bpl _0215E93C
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #4
	str r1, [r0]
	b _0215EC3C
_0215E93C:
	cmp r0, #0x2f
	bne _0215E958
	sub sb, sb, #1
	b _0215E970
_0215E94C:
	cmp r0, #0x25
	moveq sl, #2
	addeq sb, sb, #1
_0215E958:
	add r5, r5, #1
_0215E95C:
	cmp r5, r4
	bge _0215E970
	ldrsb r0, [r6, r5]
	cmp r0, #0x2f
	bne _0215E8F8
_0215E970:
	cmp sl, #0
	beq _0215E988
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #4
	str r1, [r0]
	b _0215EC3C
_0215E988:
	ldr r0, _0215ECC4 ; =OVERLAY11_BSS_0216C470
	add r1, r8, r4
	sub r1, r1, sb, lsl #1
	ldr r2, [r0]
	add r0, r1, #1
	mov r1, #4
	blx r2
	str r0, [r7, #0x24]
	cmp r0, #0
	bne _0215E9C0
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #1
	str r1, [r0]
	b _0215EC3C
_0215E9C0:
	mov r1, fp
	mov r2, r8
	bl ov11_0215F4B0
	mov sb, #0
	mov r5, sb
	mov sl, sb
	mov fp, sb
	cmp r4, #0
	ble _0215EA64
_0215E9E4:
	cmp sl, #2
	subeq sl, sl, #1
	beq _0215EA58
	cmp sl, #1
	bne _0215EA30
	sub r0, sb, #1
	add r0, r6, r0
	mov r1, #2
	bl ov11_02160BB8
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	ldr r0, [r7, #0x24]
	cmp r1, #0x2f
	add r0, r8, r0
	add r0, r5, r0
	sub sl, sl, #1
	strb r1, [r0, #-1]
	moveq fp, #1
	b _0215EA58
_0215EA30:
	ldrsb r1, [r6, sb]
	cmp r1, #0x2f
	moveq fp, #1
	cmp fp, #0
	cmpeq r1, #0x25
	ldrne r0, [r7, #0x24]
	moveq sl, #2
	addne r0, r8, r0
	strneb r1, [r5, r0]
	add r5, r5, #1
_0215EA58:
	add sb, sb, #1
	cmp sb, r4
	blt _0215E9E4
_0215EA64:
	ldr r1, [r7, #0x24]
	add r0, r8, r5
	mov r2, #0
	strb r2, [r1, r0]
	ldr r0, [r7, #0x24]
	cmp r5, #0
	add r1, r0, r8
	ble _0215EAA8
_0215EA84:
	ldrsb r0, [r1, r2]
	cmp r0, #0x2f
	cmpne r0, #0x3a
	addeq r0, r2, r8
	streq r0, [r7, #0xc]
	beq _0215EAA8
	add r2, r2, #1
	cmp r2, r5
	blt _0215EA84
_0215EAA8:
	cmp r2, r5
	bne _0215EAC0
	add r0, r2, r8
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	b _0215EB64
_0215EAC0:
	ldrsb r0, [r1, r2]
	cmp r0, #0x2f
	ldreq r0, [r7, #0xc]
	streq r0, [r7, #0x10]
	beq _0215EB64
	cmp r0, #0x3a
	bne _0215EB64
	cmp r2, r5
	bge _0215EB04
_0215EAE4:
	ldrsb r0, [r1, r2]
	cmp r0, #0x2f
	addeq r0, r2, r8
	streq r0, [r7, #0x10]
	beq _0215EB04
	add r2, r2, #1
	cmp r2, r5
	blt _0215EAE4
_0215EB04:
	cmp r2, r5
	addeq r0, r2, r8
	streq r0, [r7, #0x10]
	beq _0215EB64
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x24]
	add r2, r1, #1
	ldr r1, [r7, #0x10]
	add r0, r0, r2
	sub r1, r1, r2
	bl ov11_02160E78
	cmp r0, #0
	ldrlt r0, [r7, #0x28]
	blt _0215EB58
	ldr r1, _0215ECD0 ; =0x0000FFFF
	cmp r0, r1
	ble _0215EB58
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #4
	str r1, [r0]
	b _0215EC3C
_0215EB58:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r7, #0x28]
_0215EB64:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0215EC0C
	ldr r0, _0215ECC4 ; =OVERLAY11_BSS_0216C470
	ldr r3, [r7, #0xc]
	ldr r2, [r0]
	mov r0, #0x830
	mov r1, #4
	sub r4, r3, r8
	blx r2
	str r0, [r7, #0x20]
	cmp r0, #0
	bne _0215EBA8
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #1
	str r1, [r0]
	b _0215EC3C
_0215EBA8:
	mov r1, #0x830
	bl ov11_0215F49C
	ldr r1, _0215ECC4 ; =OVERLAY11_BSS_0216C470
	add r0, r4, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	ldr r1, [r7, #0x20]
	str r0, [r1, #0x800]
	ldr r0, [r7, #0x20]
	ldr r0, [r0, #0x800]
	cmp r0, #0
	bne _0215EBEC
	ldr r0, _0215ECC0 ; =OVERLAY11_BSS_0216C46C
	mov r1, #1
	str r1, [r0]
	b _0215EC3C
_0215EBEC:
	ldr r1, [r7, #0x24]
	mov r2, r4
	add r1, r1, r8
	bl ov11_0215F4B0
	ldr r0, [r7, #0x20]
	mov r1, #0
	ldr r0, [r0, #0x800]
	strb r1, [r0, r4]
_0215EC0C:
	ldr r1, _0215ECD4 ; =DAT_overlay_11_02165f00
	add r0, r7, #0x44
	mov r2, #0x14
	bl ov11_0215F4B0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	str r0, [r7, #0x2c]
	ldr r0, [sp]
	str r0, [r7, #0x40]
	mov r0, r7
	str r1, [r7, #0x3c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0215EC3C:
	cmp r7, #0
	beq _0215ECB8
	ldr r0, [r7, #0x20]
	cmp r0, #0
	beq _0215EC78
	ldr r0, [r0, #0x800]
	cmp r0, #0
	beq _0215EC68
	ldr r1, _0215ECD8 ; =OVERLAY11_BSS_0216C474
	ldr r1, [r1]
	blx r1
_0215EC68:
	ldr r1, _0215ECD8 ; =OVERLAY11_BSS_0216C474
	ldr r0, [r7, #0x20]
	ldr r1, [r1]
	blx r1
_0215EC78:
	ldr r0, [r7, #0x24]
	cmp r0, #0
	beq _0215EC90
	ldr r1, _0215ECD8 ; =OVERLAY11_BSS_0216C474
	ldr r1, [r1]
	blx r1
_0215EC90:
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq _0215ECA8
	ldr r1, _0215ECD8 ; =OVERLAY11_BSS_0216C474
	ldr r1, [r1]
	blx r1
_0215ECA8:
	ldr r1, _0215ECD8 ; =OVERLAY11_BSS_0216C474
	mov r0, r7
	ldr r1, [r1]
	blx r1
_0215ECB8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0215ECC0: .word OVERLAY11_BSS_0216C46C
_0215ECC4: .word OVERLAY11_BSS_0216C470
_0215ECC8: .word s_http_overlay_11_02169850
_0215ECCC: .word s_https_overlay_11_02169858
_0215ECD0: .word 0x0000FFFF
_0215ECD4: .word DAT_overlay_11_02165f00
_0215ECD8: .word OVERLAY11_BSS_0216C474

	arm_func_start NHTTP_DestroyRequest
NHTTP_DestroyRequest: ; 0x0215ECDC
	stmdb sp!, {r4, lr}
	ldr r1, _0215ED00 ; =OVERLAY11_BSS_0216C474
	mov r4, r0
	ldr r0, [r4, #0x30]
	ldr r1, [r1]
	blx r1
	mov r0, r4
	bl ov11_0215ED58
	ldmia sp!, {r4, pc}
	.align 2, 0
_0215ED00: .word OVERLAY11_BSS_0216C474
	arm_func_end NHTTP_DestroyRequest

	arm_func_start ov11_0215ED04
ov11_0215ED04: ; 0x0215ED04
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0215ED54 ; =OVERLAY11_BSS_0216C474
	mov r5, #0
	arm_func_end ov11_0215ED04
_0215ED18:
	ldr r0, [r7]
	cmp r7, r0
	beq _0215ED38
	ldr r6, [r0]
	ldr r1, [r4]
	blx r1
	str r6, [r7]
	b _0215ED48
_0215ED38:
	ldr r1, [r4]
	mov r0, r7
	blx r1
	mov r7, r5
_0215ED48:
	cmp r7, #0
	bne _0215ED18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0215ED54: .word OVERLAY11_BSS_0216C474

	arm_func_start ov11_0215ED58
ov11_0215ED58: ; 0x0215ED58
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x34]
	bl ov11_0215ED04
	ldr r0, [r4, #0x38]
	bl ov11_0215ED04
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0215EDA4
	ldr r0, [r0, #0x800]
	cmp r0, #0
	beq _0215ED94
	ldr r1, _0215EDCC ; =OVERLAY11_BSS_0216C474
	ldr r1, [r1]
	blx r1
	arm_func_end ov11_0215ED58
_0215ED94:
	ldr r1, _0215EDCC ; =OVERLAY11_BSS_0216C474
	ldr r0, [r4, #0x20]
	ldr r1, [r1]
	blx r1
_0215EDA4:
	ldr r1, _0215EDCC ; =OVERLAY11_BSS_0216C474
	ldr r0, [r4, #0x24]
	ldr r1, [r1]
	blx r1
	ldr r1, _0215EDCC ; =OVERLAY11_BSS_0216C474
	mov r0, r4
	ldr r1, [r1]
	blx r1
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0215EDCC: .word OVERLAY11_BSS_0216C474

	arm_func_start NHTTP_SendRequestAsync
NHTTP_SendRequestAsync: ; 0x0215EDD0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0215EDF8
	ldr r0, _0215EE58 ; =OVERLAY11_BSS_0216C46C
	mov r1, #0xb
	str r1, [r0]
	sub r0, r1, #0xc
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NHTTP_SendRequestAsync
_0215EDF8:
	ldr r0, [r5, #0x40]
	cmp r0, #1
	ldreq r0, [r5, #0x38]
	cmpeq r0, #0
	bne _0215EE20
	ldr r0, _0215EE58 ; =OVERLAY11_BSS_0216C46C
	mov r1, #0xb
	str r1, [r0]
	sub r0, r1, #0xc
	ldmia sp!, {r3, r4, r5, pc}
_0215EE20:
	bl ov11_0215E1F8
	mov r0, r5
	bl ov11_0215DFEC
	movs r4, r0
	ldrmi r0, _0215EE58 ; =OVERLAY11_BSS_0216C46C
	movmi r1, #1
	strmi r1, [r0]
	bmi _0215EE4C
	mov r0, #1
	str r0, [r5]
	bl ov11_0215E2DC
_0215EE4C:
	bl ov11_0215E20C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0215EE58: .word OVERLAY11_BSS_0216C46C

	arm_func_start ov11_0215EE5C
ov11_0215EE5C: ; 0x0215EE5C
	stmdb sp!, {r3, lr}
	bl ov11_0215E1F8
	ldr r0, _0215EEAC ; =OVERLAY11_BSS_0216C478
	ldr r2, [r0]
	cmp r2, #0
	beq _0215EEA0
	ldr r1, [r2, #0xc]
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _0215EEA0
	ldr r1, [r2, #0xc]
	mov r2, #1
	str r2, [r1, #4]
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	bl ov11_0215F400
	arm_func_end ov11_0215EE5C
_0215EEA0:
	bl ov11_0215E198
	bl ov11_0215E20C
	ldmia sp!, {r3, pc}
	.align 2, 0
_0215EEAC: .word OVERLAY11_BSS_0216C478

	arm_func_start ov11_0215EEB0
ov11_0215EEB0: ; 0x0215EEB0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r2, [r5, #0x24]
	ldr r1, [r5, #0xc]
	mov r0, #0
	ldrsb r4, [r2, r1]
	strb r0, [r2, r1]
	ldr r0, [r5, #8]
	ldr r6, [r5, #0x24]
	cmp r0, #0
	movne r7, #8
	moveq r7, #7
	add r1, sp, #0
	add r0, r6, r7
	bl SOC_InetAtoN
	cmp r0, #0
	ldrne r0, [sp]
	bne _0215EF38
	add r0, r6, r7
	bl SOCL_Resolve
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov ip, r0, lsl #0x18
	and r2, r2, #0xff
	and r0, r1, #0xff00
	and r1, r3, #0xff0000
	orr r0, r2, r0
	and r2, ip, #0xff000000
	orr r0, r1, r0
	orr r0, r2, r0
	arm_func_end ov11_0215EEB0
_0215EF38:
	ldr r2, [r5, #0x24]
	ldr r1, [r5, #0xc]
	strb r4, [r2, r1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start NHTTP_DestroyResponse
NHTTP_DestroyResponse: ; 0x0215EF48
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0215EF78
	ldr r5, _0215EFBC ; =OVERLAY11_BSS_0216C474
	arm_func_end NHTTP_DestroyResponse
_0215EF60:
	ldr r6, [r0]
	ldr r1, [r5]
	blx r1
	movs r0, r6
	str r6, [r4, #0x1c]
	bne _0215EF60
_0215EF78:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0215EF90
	ldr r1, _0215EFBC ; =OVERLAY11_BSS_0216C474
	ldr r1, [r1]
	blx r1
_0215EF90:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0215EFA8
	ldr r1, _0215EFBC ; =OVERLAY11_BSS_0216C474
	ldr r1, [r1]
	blx r1
_0215EFA8:
	ldr r1, _0215EFBC ; =OVERLAY11_BSS_0216C474
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0215EFBC: .word OVERLAY11_BSS_0216C474

	arm_func_start ov11_0215EFC0
ov11_0215EFC0: ; 0x0215EFC0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r2
	mov sl, r1
	ldr r2, [r5]
	add r3, sp, #4
	mov r1, #0xc
	bl ov11_0215E3D0
	mov r8, r0
	cmp r8, #0
	ble _0215F0C0
	mov r6, #0
	add r7, sp, #4
	arm_func_end ov11_0215EFC0
_0215EFF8:
	ldr r2, [r5]
	mov r0, r5
	mov r1, r8
	mov r3, r7
	bl ov11_0215E3D0
	ldr r2, [sp, #4]
	mov sb, r0
	cmp r2, #0
	ble _0215F0B4
	mov r0, r5
	mov r1, r8
	mov r3, sl
	str r6, [sp]
	bl ov11_0215E510
	cmp r0, #0
	bne _0215F0B4
	ldr r1, [sp, #4]
	ldr r0, [r5]
	add r1, r1, #1
	cmp r1, r0
	bge _0215F0A8
	ldr r2, [r5]
	mov r0, r5
	mov r3, #0
	bl ov11_0215E3D0
	cmp r0, #0
	ldrle r6, [r5]
	ble _0215F07C
	cmp r0, #2
	addlt sp, sp, #8
	mvnlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	sub r6, r0, #2
_0215F07C:
	ldr r1, [sp, #4]
	mov r0, r5
	mov r2, r6
	add r1, r1, #1
	bl ov11_0215E4A0
	cmp r0, #0
	movlt r0, r6
	str r0, [r4]
	add sp, sp, #8
	sub r0, r6, r0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0215F0A8:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0215F0B4:
	mov r8, sb
	cmp sb, #0
	bgt _0215EFF8
_0215F0C0:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start NHTTP_GetHeaderField
NHTTP_GetHeaderField: ; 0x0215F0CC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #8]
	mov r6, r1
	cmp r0, #0
	mov r5, r2
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _0215F10C
	ldr r1, _0215F1C4 ; =OVERLAY11_BSS_0216C474
	ldr r1, [r1]
	blx r1
	mov r0, #0
	str r0, [r7, #0x14]
	arm_func_end NHTTP_GetHeaderField
_0215F10C:
	add r2, sp, #0
	mov r0, r7
	mov r1, r6
	bl ov11_0215EFC0
	movs r4, r0
	bmi _0215F168
	ldr r1, _0215F1C8 ; =OVERLAY11_BSS_0216C470
	add r0, r4, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	str r0, [r7, #0x14]
	mov r1, #0
	strb r1, [r0, r4]
	ldr r1, [r7, #0x14]
	ldr r2, [sp]
	mov r0, r7
	mov r3, r4
	bl ov11_0215E5E0
	ldr r1, [r7, #0x14]
	mov r0, r4
	str r1, [r5]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0215F168:
	ldr r0, _0215F1CC ; =s_HTTPSTATUSCODE_overlay_11_02169864
	mov r1, r6
	bl ov11_0215F41C
	cmp r0, #0
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _0215F1C8 ; =OVERLAY11_BSS_0216C470
	mov r0, #4
	ldr r2, [r1]
	mov r1, r0
	blx r2
	str r0, [r7, #0x14]
	mov r1, #0
	strb r1, [r0, #3]
	ldr r1, [r7, #0x14]
	mov r0, r7
	mov r2, #9
	mov r3, #3
	bl ov11_0215E5E0
	ldr r1, [r7, #0x14]
	mov r0, #3
	str r1, [r5]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0215F1C4: .word OVERLAY11_BSS_0216C474
_0215F1C8: .word OVERLAY11_BSS_0216C470
_0215F1CC: .word s_HTTPSTATUSCODE_overlay_11_02169864

	arm_func_start NHTTP_GetBodyAll
NHTTP_GetBodyAll: ; 0x0215F1D0
	ldr r2, [r0, #8]
	cmp r2, #0
	ldrne r2, [r0, #4]
	cmpne r2, #0
	mvneq r0, #0
	ldrne r2, [r0, #0x18]
	strne r2, [r1]
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end NHTTP_GetBodyAll

	arm_func_start ov11_0215F1F4
ov11_0215F1F4: ; 0x0215F1F4
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr
	arm_func_end ov11_0215F1F4

	arm_func_start ov11_0215F200
ov11_0215F200: ; 0x0215F200
	stmdb sp!, {r3, lr}
	ldr r0, _0215F21C ; =OVERLAY11_BSS_0216CE48
	bl OS_GetLowEntropyData
	ldr r0, _0215F21C ; =OVERLAY11_BSS_0216CE48
	mov r1, #0x20
	bl CPS_SslAddRandomSeed
	ldmia sp!, {r3, pc}
	.align 2, 0
_0215F21C: .word OVERLAY11_BSS_0216CE48
	arm_func_end ov11_0215F200

	arm_func_start ov11_0215F220
ov11_0215F220: ; 0x0215F220
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl SOC_Socket
	movs r4, r0
	bmi _0215F294
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0215F294
	bl ov11_0215F200
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	ldr r2, _0215F29C ; =ov11_0215F1F4
	str r1, [r0, #0x814]
	ldr r3, [r5, #0x18]
	ldr r1, [r5, #0x20]
	mov r0, r4
	str r3, [r1, #0x818]
	ldr r1, [r5, #0x20]
	str r2, [r1, #0x810]
	ldr r1, [r5, #0x20]
	bl SOCL_EnableSsl
	cmp r0, #0
	bge _0215F294
	mov r0, r4
	bl SOC_Close
	mvn r4, #0
	arm_func_end ov11_0215F220
_0215F294:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0215F29C: .word ov11_0215F1F4

	arm_func_start ov11_0215F2A0
ov11_0215F2A0: ; 0x0215F2A0
	ldr ip, _0215F2AC ; =FUN_02049710
	mov r0, r1
	bx ip
	.align 2, 0
_0215F2AC: .word SOC_Close
	arm_func_end ov11_0215F2A0

	arm_func_start ov11_0215F2B0
ov11_0215F2B0: ; 0x0215F2B0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r0, r6
	bl SOC_Close
	mvn r4, #0x19
	cmp r0, r4
	ldmneia sp!, {r4, r5, r6, pc}
	mov r5, #0x1f4
	arm_func_end ov11_0215F2B0
_0215F2D0:
	mov r0, r5
	bl OS_Sleep
	mov r0, r6
	bl SOC_Close
	cmp r0, r4
	beq _0215F2D0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_0215F2EC
ov11_0215F2EC: ; 0x0215F2EC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	mov ip, r3, asr #8
	mov r4, r0
	mov r5, #8
	mov lr, #2
	mov r3, r3, lsl #8
	mov r0, r1
	and ip, ip, #0xff
	and r1, r3, #0xff00
	orr r3, ip, r1
	add r1, sp, #0
	strb r5, [sp]
	strb lr, [sp, #1]
	strh r3, [sp, #2]
	str r2, [sp, #4]
	bl SOC_Connect
	cmp r0, #0
	bge _0215F358
	ldr r0, [r4, #4]
	add sp, sp, #8
	cmp r0, #0
	ldrne r0, _0215F364 ; =0xFFFFFC16
	mvneq r0, #0x3e8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov11_0215F2EC
_0215F358:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0215F364: .word 0xFFFFFC16

	arm_func_start ov11_0215F368
ov11_0215F368: ; 0x0215F368
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl SOC_Recv
	cmp r0, #0
	ldmgeia sp!, {r4, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, _0215F3B0 ; =0xFFFFFC16
	ldmneia sp!, {r4, pc}
	mvn r1, #0x37
	cmp r0, r1
	moveq r0, #0
	mvnne r0, #0x3e8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0215F3B0: .word 0xFFFFFC16
	arm_func_end ov11_0215F368

	arm_func_start ov11_0215F3B4
ov11_0215F3B4: ; 0x0215F3B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl SOC_Send
	cmp r0, #0
	ldmgeia sp!, {r4, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, _0215F3FC ; =0xFFFFFC16
	ldmneia sp!, {r4, pc}
	mvn r1, #0x37
	cmp r0, r1
	moveq r0, #0
	mvnne r0, #0x3e8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0215F3FC: .word 0xFFFFFC16
	arm_func_end ov11_0215F3B4

	arm_func_start ov11_0215F400
ov11_0215F400: ; 0x0215F400
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldmltia sp!, {r3, pc}
	mov r0, r1
	mov r1, #2
	bl SOC_Shutdown
	ldmia sp!, {r3, pc}
	arm_func_end ov11_0215F400

	arm_func_start ov11_0215F41C
ov11_0215F41C: ; 0x0215F41C
	ldr ip, _0215F424 ; =FUN_02078904
	bx ip
	.align 2, 0
_0215F424: .word STD_CompareString
	arm_func_end ov11_0215F41C

	arm_func_start ov11_0215F428
ov11_0215F428: ; 0x0215F428
	cmp r2, #0
	ble _0215F488
	arm_func_end ov11_0215F428
_0215F430:
	ldrsb ip, [r0], #1
	ldrsb r3, [r1], #1
	cmp ip, #0
	cmpne r3, #0
	bne _0215F454
	cmp ip, #0
	cmpeq r3, #0
	moveq r2, #0
	b _0215F488
_0215F454:
	cmp r3, #0x41
	blt _0215F464
	cmp r3, #0x5a
	addle r3, r3, #0x20
_0215F464:
	cmp ip, #0x41
	blt _0215F474
	cmp ip, #0x5a
	addle ip, ip, #0x20
_0215F474:
	cmp ip, r3
	bne _0215F488
	sub r2, r2, #1
	cmp r2, #0
	bgt _0215F430
_0215F488:
	mov r0, r2
	bx lr

	arm_func_start ov11_0215F490
    ov11_0215F490: ; 0x0215F490
	ldr ip, _0215F498 ; =FUN_020788B8
	bx ip
	.align 2, 0
_0215F498: .word STD_GetStringLength
	arm_func_end ov11_0215F490

	arm_func_start ov11_0215F49C
ov11_0215F49C: ; 0x0215F49C
	ldr ip, _0215F4AC ; =FUN_02067F14
	mov r2, r1
	mov r1, #0
	bx ip
	.align 2, 0
_0215F4AC: .word MI_CpuFill8
	arm_func_end ov11_0215F49C

	arm_func_start ov11_0215F4B0
ov11_0215F4B0: ; 0x0215F4B0
	ldr ip, _0215F4C4 ; =MI_CpuCopy8
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	.align 2, 0
_0215F4C4: .word MI_CpuCopy8
	arm_func_end ov11_0215F4B0

	arm_func_start NHTTP_GetProgress
NHTTP_GetProgress: ; 0x0215F4C8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	mov r4, r1
	str r0, [r5]
	str r0, [r4]
	bl ov11_0215E1F8
	ldr r1, _0215F560 ; =OVERLAY11_BSS_0216C478
	ldr r2, [r1]
	cmp r2, #0
	beq _0215F540
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0215F538
	ldr r2, [r2, #0xc]
	mvn r0, #0
	ldr r2, [r2, #0x30]
	ldr r2, [r2, #4]
	str r2, [r5]
	ldr r2, [r1]
	ldr r1, [r2, #0xc]
	ldr r1, [r1, #0x14]
	cmp r1, r0
	moveq r0, #0
	ldrne r0, [r2, #0xc]
	ldrne r0, [r0, #0x14]
	str r0, [r4]
	arm_func_end NHTTP_GetProgress
_0215F538:
	mov r4, #1
	b _0215F554
_0215F540:
	ldr r0, _0215F564 ; =OVERLAY11_BSS_0216C488
	ldr r0, [r0]
	cmp r0, #0
	movne r4, #1
	moveq r4, #0
_0215F554:
	bl ov11_0215E20C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0215F560: .word OVERLAY11_BSS_0216C478
_0215F564: .word OVERLAY11_BSS_0216C488

	arm_func_start ov11_0215F568
ov11_0215F568: ; 0x0215F568
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r5, [sp, #0x28]
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	cmp r5, #0
	ble _0215F610
	ldr r4, _0215F618 ; =OVERLAY11_BSS_0216CEB0
	mov fp, #0
	arm_func_end ov11_0215F568
_0215F590:
	ldr r0, [sl, #4]
	cmp r0, #0
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r8]
	mov r1, r7
	rsb r6, r0, #0x400
	cmp r5, r6
	movle r6, r5
	mov r2, r6
	add r0, r4, r0
	bl ov11_0215F4B0
	ldr r0, [r8]
	add r7, r7, r6
	add r0, r0, r6
	str r0, [r8]
	cmp r0, #0x400
	sub r5, r5, r6
	bne _0215F608
	mov r0, sl
	mov r1, sb
	mov r2, r4
	mov r3, #0x400
	str fp, [sp]
	bl ov11_0215F3B4
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r8]
	sub r0, r1, r0
	str r0, [r8]
_0215F608:
	cmp r5, #0
	bgt _0215F590
_0215F610:
	ldr r0, [sp, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0215F618: .word OVERLAY11_BSS_0216CEB0

	arm_func_start ov11_0215F61C
ov11_0215F61C: ; 0x0215F61C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r8, #0
	mov sl, r0
	mov sb, r1
	mov r7, r8
	strb r8, [sp, #4]
	strb r8, [sp, #5]
	mov r6, r8
	mov r5, #1
	add r4, sp, #4
	b _0215F678
	arm_func_end ov11_0215F61C
_0215F64C:
	mov r0, sl
	mov r1, sb
	mov r3, r5
	add r2, r4, r2
	str r6, [sp]
	bl ov11_0215F368
	cmp r0, #0
	addle sp, sp, #8
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r8, r8, r0
	add r7, r7, #1
_0215F678:
	and r2, r7, #1
	ldrsb r0, [r4, r2]
	cmp r0, #0xd
	bne _0215F64C
	sub r0, r7, #1
	and r0, r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0xa
	bne _0215F64C
	mov r0, r8
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start ov11_0215F6A8
ov11_0215F6A8: ; 0x0215F6A8
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x800]
	cmp r0, #0
	beq _0215F6CC
	ldr r1, _0215F6E0 ; =OVERLAY11_BSS_0216C474
	ldr r1, [r1]
	blx r1
	arm_func_end ov11_0215F6A8
_0215F6CC:
	ldr r1, _0215F6E0 ; =OVERLAY11_BSS_0216C474
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0215F6E0: .word OVERLAY11_BSS_0216C474

	arm_func_start ov11_0215F6E4
ov11_0215F6E4: ; 0x0215F6E4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _0215F778 ; =OVERLAY11_BSS_0216CE68
	mov r6, r0
	ldmia r2, {r0, r2}
	add r0, r0, #1
	and r4, r0, #7
	mov r5, r1
	cmp r4, r2
	bne _0215F740
	ldr r1, _0215F77C ; =OVERLAY11_BSS_0216CE70
	mov r0, #0
	ldr r1, [r1, r2, lsl #3]
	bl ov11_0215F2B0
	ldr r0, _0215F778 ; =OVERLAY11_BSS_0216CE68
	ldr r1, _0215F780 ; =OVERLAY11_BSS_0216CE74
	ldr r0, [r0, #4]
	ldr r0, [r1, r0, lsl #3]
	bl ov11_0215F6A8
	ldr r0, _0215F778 ; =OVERLAY11_BSS_0216CE68
	ldr r1, [r0, #4]
	add r1, r1, #1
	and r1, r1, #7
	str r1, [r0, #4]
	arm_func_end ov11_0215F6E4
_0215F740:
	ldr r0, [r5]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _0215F778 ; =OVERLAY11_BSS_0216CE68
	ldr r1, _0215F77C ; =OVERLAY11_BSS_0216CE70
	ldr ip, [r0]
	ldr r2, _0215F780 ; =OVERLAY11_BSS_0216CE74
	str r6, [r1, ip, lsl #3]
	ldr r3, [r5]
	mov r1, #0
	str r3, [r2, ip, lsl #3]
	str r1, [r5]
	str r4, [r0]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0215F778: .word OVERLAY11_BSS_0216CE68
_0215F77C: .word OVERLAY11_BSS_0216CE70
_0215F780: .word OVERLAY11_BSS_0216CE74

	arm_func_start ov11_0215F784
ov11_0215F784: ; 0x0215F784
	stmdb sp!, {r4, r5, r6, lr}
	ldr r6, _0215F7DC ; =OVERLAY11_BSS_0216CE68
	ldmia r6, {r0, r1}
	cmp r0, r1
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, _0215F7E0 ; =OVERLAY11_BSS_0216CE70
	mov r5, #0
	arm_func_end ov11_0215F784
_0215F7A0:
	ldr r1, [r4, r1, lsl #3]
	mov r0, r5
	bl ov11_0215F2B0
	ldr r0, [r6, #4]
	add r0, r4, r0, lsl #3
	ldr r0, [r0, #4]
	bl ov11_0215F6A8
	ldr r0, [r6, #4]
	add r0, r0, #1
	and r1, r0, #7
	str r1, [r6, #4]
	ldr r0, [r6]
	cmp r0, r1
	bne _0215F7A0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0215F7DC: .word OVERLAY11_BSS_0216CE68
_0215F7E0: .word OVERLAY11_BSS_0216CE70

	arm_func_start ov11_0215F7E4
ov11_0215F7E4: ; 0x0215F7E4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x4c
	ldr r2, _02160704 ; =OVERLAY11_BSS_0216CE68
	mov r0, #0
	str r0, [sp, #0x3c]
	str r0, [r2]
	ldr r1, _02160708 ; =OVERLAY11_BSS_0216C47C
	mvn r6, #0
	str r0, [r2, #4]
	ldr r1, [r1]
	str r0, [sp, #0x10]
	str r6, [sp, #0x18]
	str r6, [sp, #0x14]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	cmp r1, #0
	bne _02160A90
	arm_func_end ov11_0215F7E4
_0215F828:
	bl ov11_0215E1F8
	bl ov11_0215E1C8
	cmp r0, #0
	mvneq r4, #0
	beq _0215F84C
	ldr r4, [r0, #8]
	ldr r8, [r0, #0xc]
	ldr r1, _0216070C ; =OVERLAY11_BSS_0216C478
	str r0, [r1]
_0215F84C:
	bl ov11_0215E20C
	cmp r4, #0
	bge _0215F860
	bl ov11_0215E2C0
	b _02160A80
_0215F860:
	ldr r0, [r8, #4]
	ldr sb, [r8, #0x30]
	cmp r0, #0
	bne _021609B0
	mov r0, r8
	bl ov11_0215EEB0
	str r0, [sp, #0x1c]
	cmp r0, #0
	moveq r0, #4
	streq r0, [sp, #4]
	beq _021609B0
	mov r1, r0
	ldr r0, [sp, #0x18]
	mov r2, #0
	cmp r1, r0
	ldreq r1, [r8, #0x28]
	ldreq r0, [sp, #0x14]
	add r5, sp, #0x38
	cmpeq r1, r0
	ldreq r1, [r8, #8]
	ldreq r0, [sp, #0xc]
	add r4, sp, #0x40
	cmpeq r1, r0
	ldr r0, [r8, #0x28]
	moveq r2, #1
	str r0, [sp, #0x14]
	ldr r0, [r8, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	and r0, r0, r2
	str r0, [sp, #8]
	mvn r0, #0
	str r0, [sp, #0x20]
_0215F8EC:
	mov r0, #0
	cmp r6, #0
	str r0, [sp, #4]
	blt _0215F93C
	mov r0, #9
	strh r0, [sp, #0x2c]
	ldr r2, _02160710 ; =0x0000CC8D
	add r0, sp, #0x28
	mov r1, #1
	mov r3, #0
	str r6, [sp, #0x28]
	bl SOC_Poll
	cmp r0, #0
	movle r0, #0
	strle r0, [sp, #8]
	ble _0215F93C
	ldrsh r0, [sp, #0x2e]
	tst r0, #0xe0
	movne r0, #0
	strne r0, [sp, #8]
_0215F93C:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0215FA04
	cmp r6, #0
	blt _0215F984
	mov r0, r8
	mov r1, r6
	bl ov11_0215F2A0
	cmp r0, #0
	movlt r0, #0xa
	strlt r0, [sp, #4]
	mov r0, r6
	add r1, sp, #0x3c
	bl ov11_0215F6E4
	ldr r0, [sp, #4]
	ldr r6, [sp, #0x20]
	cmp r0, #0
	bne _021609B0
_0215F984:
	mov r0, r8
	bl ov11_0215F220
	movs r6, r0
	movmi r0, #3
	strmi r0, [sp, #4]
	bmi _021609B0
	ldr r0, [r8, #8]
	cmp r0, #0
	beq _0215F9B8
	ldr r0, [r8, #0x20]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [r8, #0x20]
_0215F9B8:
	bl ov11_0215E1F8
	ldr r0, _0216070C ; =OVERLAY11_BSS_0216C478
	ldr r0, [r0]
	str r6, [r0, #0x10]
	bl ov11_0215E20C
	ldr r0, [r8, #4]
	cmp r0, #0
	bne _021609B0
	ldr r2, [sp, #0x1c]
	ldr r3, [r8, #0x28]
	mov r0, r8
	mov r1, r6
	bl ov11_0215F2EC
	cmp r0, #0
	movge r0, #1
	strge r0, [sp, #8]
	movlt r0, #0
	strlt r0, [sp, #8]
	b _0215FA38
_0215FA04:
	ldr r0, [r8, #8]
	cmp r0, #0
	beq _0215FA20
	ldr r0, [r8, #0x20]
	bl ov11_0215F6A8
	mov r0, #0
	str r0, [r8, #0x20]
_0215FA20:
	bl ov11_0215F200
	bl ov11_0215E1F8
	ldr r0, _0216070C ; =OVERLAY11_BSS_0216C478
	ldr r0, [r0]
	str r6, [r0, #0x10]
	bl ov11_0215E20C
_0215FA38:
	ldr r0, [r8, #4]
	cmp r0, #0
	bne _021609B0
	ldr r0, [sp, #8]
	cmp r0, #0
	moveq r0, #5
	streq r0, [sp, #4]
	beq _021609B0
	mov r0, #0
	str r0, [sp, #0x38]
	str r0, [sp, #8]
	ldr r0, [r8, #0x24]
	bl ov11_0215F490
	mov r7, r0
	mov r0, #0xa
	str r0, [sp, #4]
	ldr r0, [r8, #0x40]
	cmp r0, #0
	beq _0215FA98
	cmp r0, #1
	beq _0215FAC4
	cmp r0, #2
	beq _0215FAF0
	b _0215FB18
_0215FA98:
	mov r0, #4
	str r0, [sp]
	ldr r3, _02160714 ; =s_GET_overlay_11_02169874
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	b _0215FB18
_0215FAC4:
	mov r0, #5
	str r0, [sp]
	ldr r3, _02160718 ; =s_POST_overlay_11_0216987c
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	b _0215FB18
_0215FAF0:
	mov r0, #5
	str r0, [sp]
	ldr r3, _0216071C ; =s_HEAD_overlay_11_02169884
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_0215FB18:
	ldr sl, [r8, #0x10]
	cmp r7, sl
	ble _0215FB58
	subs r0, r7, sl
	beq _0215FB80
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r8, #0x24]
	add r3, r3, sl
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	b _0215FB80
_0215FB58:
	mov r0, #1
	str r0, [sp]
	ldr r3, _02160720 ; =s_overlay_11_0216988c
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_0215FB80:
	mov r0, #0xb
	str r0, [sp]
	ldr r3, _02160724 ; =s_HTTP_1_1_overlay_11_02169890
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	ldr r0, [r8, #8]
	ldr r3, _02160728 ; =s_Host_overlay_11_0216989c
	cmp r0, #0
	movne r0, #8
	moveq r0, #7
	str r0, [sp, #0x34]
	mov r0, #6
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	ldr r7, [sp, #0x34]
	ldr r0, [r8, #0xc]
	subs r0, r0, r7
	beq _0215FC1C
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r8, #0x24]
	add r3, r3, r7
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_0215FC1C:
	mov r0, #2
	str r0, [sp]
	ldr r3, _0216072C ; =s_overlay_11_021698a4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	add r0, r8, #0x34
	bl ov11_0215DE20
	movs r7, r0
	beq _0215FD2C
_0215FC54:
	ldr r0, [r7, #8]
	bl ov11_0215F490
	cmp r0, #0
	beq _0215FC88
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r7, #8]
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_0215FC88:
	mov r0, #2
	str r0, [sp]
	ldr r3, _02160730 ; =s_overlay_11_021698a8
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	ldr r0, [r7, #0xc]
	bl ov11_0215F490
	cmp r0, #0
	beq _0215FCE4
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r7, #0xc]
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_0215FCE4:
	mov r0, #2
	str r0, [sp]
	ldr r3, _0216072C ; =s_overlay_11_021698a4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	ldr r1, _02160734 ; =OVERLAY11_BSS_0216C474
	mov r0, r7
	ldr r1, [r1]
	blx r1
	add r0, r8, #0x34
	bl ov11_0215DE20
	movs r7, r0
	bne _0215FC54
_0215FD2C:
	ldr r0, [r8, #0x40]
	cmp r0, #1
	bne _0215FF4C
	ldr sl, [r8, #0x38]
	mov r7, #0
	mov r0, r7
	str r0, [sp, #0x10]
	cmp sl, #0
	mov r1, sl
	beq _0215FD7C
_0215FD54:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x10]
	bne _0215FD7C
	ldr r0, [sl]
	cmp r1, r0
	ldrne r1, [r1, #4]
	cmpne r1, #0
	bne _0215FD54
_0215FD7C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0215FE58
	cmp sl, #0
	beq _0215FDD8
_0215FD90:
	ldr r0, [sl, #8]
	add r7, r7, #0x16
	bl ov11_0215F490
	add r0, r0, #0x29
	add r7, r7, r0
	ldr r0, [sl, #0x14]
	ldr r1, [sl, #0x10]
	cmp r0, #0
	ldr r0, [r8, #0x38]
	addne r7, r7, #0x4b
	ldr r0, [r0]
	add r2, r7, #2
	cmp sl, r0
	ldrne sl, [sl, #4]
	add r1, r2, r1
	add r7, r1, #2
	cmpne sl, #0
	bne _0215FD90
_0215FDD8:
	mov r0, #0x2c
	str r0, [sp]
	ldr r3, _02160738 ; =s_Content_Type_multipart_form_dat_overlay_11_021698ac
	mov r0, r8
	mov r1, r6
	mov r2, r5
	add r7, r7, #0x18
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	mov r0, #0x12
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	add r3, r8, #0x46
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	mov r0, #2
	str r0, [sp]
	ldr r3, _0216072C ; =s_overlay_11_021698a4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	b _0215FEC0
_0215FE58:
	cmp sl, #0
	beq _0215FE98
_0215FE60:
	ldr r0, [sl, #8]
	bl ov11_02160AC0
	add r0, r7, r0
	add r7, r0, #1
	ldr r0, [sl, #0xc]
	bl ov11_02160AC0
	add r7, r7, r0
	ldr r0, [r8, #0x38]
	ldr r0, [r0]
	cmp sl, r0
	ldrne sl, [sl, #4]
	addne r7, r7, #1
	cmpne sl, #0
	bne _0215FE60
_0215FE98:
	mov r0, #0x31
	str r0, [sp]
	ldr r3, _0216073C ; =s_Content_Type_application_x_www_overlay_11_021698dc
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_0215FEC0:
	mov r0, #0x10
	str r0, [sp]
	ldr r3, _02160740 ; =s_Content_Length_overlay_11_02169910
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	mov r1, r7
	mov r0, r4
	bl NHTTPi_intToStr
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _0215FF24
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_0215FF24:
	mov r0, #2
	str r0, [sp]
	ldr r3, _0216072C ; =s_overlay_11_021698a4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_0215FF4C:
	mov r0, #2
	str r0, [sp]
	ldr r3, _0216072C ; =s_overlay_11_021698a4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	ldr r0, [r8, #0x40]
	cmp r0, #1
	bne _021602CC
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0216018C
	ldr r7, [r8, #0x38]
	cmp r7, #0
	beq _02160138
_0215FF98:
	mov r0, #0x14
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	add r3, r8, #0x44
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	mov r0, #2
	str r0, [sp]
	ldr r3, _0216072C ; =s_overlay_11_021698a4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	mov r0, #0x26
	str r0, [sp]
	ldr r3, _02160744 ; =s_Content_Disposition_form_data_n_overlay_11_02165f18
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	ldr r0, [r7, #8]
	bl ov11_0215F490
	cmp r0, #0
	beq _02160044
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r7, #8]
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_02160044:
	mov r0, #3
	str r0, [sp]
	ldr r3, _02160748 ; =s_overlay_11_02169924
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021600A0
	mov r0, #0x4b
	str r0, [sp]
	ldr r3, _0216074C ; =s_Content_Type_application_octet_overlay_11_02165f40
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_021600A0:
	mov r0, #2
	str r0, [sp]
	ldr r3, _0216072C ; =s_overlay_11_021698a4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq _021600F8
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r7, #0xc]
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_021600F8:
	mov r0, #2
	str r0, [sp]
	ldr r3, _0216072C ; =s_overlay_11_021698a4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	ldr r0, [r8, #0x38]
	ldr r0, [r0]
	cmp r7, r0
	ldrne r7, [r7, #4]
	cmpne r7, #0
	bne _0215FF98
_02160138:
	mov r0, #0x14
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	add r3, r8, #0x44
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	mov r0, #4
	str r0, [sp]
	ldr r3, _02160750 ; =s_overlay_11_02169928
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	b _021602CC
_0216018C:
	ldr sl, [r8, #0x38]
	cmp sl, #0
	beq _021602CC
_02160198:
	ldr r1, [sl, #8]
	mov r7, #0
	ldrsb r0, [r1]
	cmp r0, #0
	beq _021601FC
_021601AC:
	ldrsb r1, [r1, r7]
	mov r0, r4
	bl ov11_02160B28
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _021601E8
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_021601E8:
	add r7, r7, #1
	ldr r1, [sl, #8]
	ldrsb r0, [r1, r7]
	cmp r0, #0
	bne _021601AC
_021601FC:
	mov r0, #1
	str r0, [sp]
	ldr r3, _02160754 ; =s_overlay_11_02169930
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	ldr r1, [sl, #0xc]
	mov r7, #0
	ldrsb r0, [r1]
	cmp r0, #0
	beq _02160288
_02160238:
	ldrsb r1, [r1, r7]
	mov r0, r4
	bl ov11_02160B28
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _02160274
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_02160274:
	add r7, r7, #1
	ldr r1, [sl, #0xc]
	ldrsb r0, [r1, r7]
	cmp r0, #0
	bne _02160238
_02160288:
	ldr r0, [r8, #0x38]
	ldr r0, [r0]
	cmp sl, r0
	beq _021602CC
	mov r0, #1
	str r0, [sp]
	ldr r3, _02160758 ; =s_overlay_11_02169934
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov11_0215F568
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
	ldr sl, [sl, #4]
	cmp sl, #0
	bne _02160198
_021602CC:
	ldr r3, [sp, #0x38]
	cmp r3, #0
	ble _021602FC
	mov r0, #0
	str r0, [sp]
	ldr r2, _0216075C ; =OVERLAY11_BSS_0216CEB0
	mov r0, r8
	mov r1, r6
	bl ov11_0215F3B4
	cmp r0, #0
	blt _021609B0
	beq _0215F8EC
_021602FC:
	mov r0, #0
	str r0, [sb]
	strb r0, [sp, #0x40]
	strb r0, [sp, #0x41]
	mov r1, #7
	strb r0, [sp, #0x42]
	strb r0, [sp, #0x43]
	ldr r5, [sb, #0x1c]
	str r1, [sp, #4]
	str r0, [sp, #0x38]
	add sl, sb, #0x20
	add r4, sp, #0x40
_0216032C:
	ldr r1, [r8, #4]
	cmp r1, #0
	bne _021609B0
	cmp r0, #0x400
	bge _02160374
	add r2, sl, r0
	mov r0, #0
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r3, #1
	bl ov11_0215F368
	ldr r3, [sp, #0x38]
	add r1, sb, r3
	ldrsb r2, [r1, #0x20]
	and r1, r3, #3
	strb r2, [r4, r1]
	b _02160408
_02160374:
	ldr r1, _02160760 ; =0x000001FF
	ands r7, r0, r1
	bne _021603D4
	cmp r5, #0
	mov r0, #0x204
	mov r1, #4
	beq _021603A8
	ldr r2, _02160764 ; =OVERLAY11_BSS_0216C470
	ldr r2, [r2]
	blx r2
	str r0, [r5]
	mov r5, r0
	b _021603BC
_021603A8:
	ldr r2, _02160764 ; =OVERLAY11_BSS_0216C470
	ldr r2, [r2]
	blx r2
	mov r5, r0
	str r5, [sb, #0x1c]
_021603BC:
	cmp r5, #0
	moveq r0, #1
	streq r0, [sp, #4]
	beq _021609B0
	mov r0, #0
	str r0, [r5]
_021603D4:
	mov r0, #0
	add r2, r5, #4
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	add r2, r2, r7
	mov r3, #1
	bl ov11_0215F368
	add r1, r5, r7
	ldrsb r2, [r1, #4]
	ldr r1, [sp, #0x38]
	and r1, r1, #3
	strb r2, [r4, r1]
_02160408:
	cmp r0, #0
	movle r0, #0xa
	strle r0, [sp, #4]
	ble _021609B0
	ldr r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	sub r1, r0, #4
	and r1, r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0xd
	bne _0216032C
	sub r1, r0, #3
	and r1, r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0xa
	bne _0216032C
	sub r1, r0, #2
	and r1, r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0xd
	bne _0216032C
	sub r1, r0, #1
	and r1, r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0xa
	bne _0216032C
	str r0, [sb]
	ldr r0, [sb]
	cmp r0, #0
	beq _021609B0
	ldr r1, _0216075C ; =OVERLAY11_BSS_0216CEB0
	mov r0, sb
	mov r2, #0
	mov r3, #0xe
	bl ov11_0215E5E0
	cmp r0, #0
	beq _021609B0
	ldr r0, _0216075C ; =OVERLAY11_BSS_0216CEB0
	ldr r1, _02160768 ; =s_HTTP_overlay_11_02169938
	mov r2, #5
	bl ov11_0215F428
	cmp r0, #0
	ldreq r0, _0216075C ; =OVERLAY11_BSS_0216CEB0
	ldreqsb r0, [r0, #8]
	cmpeq r0, #0x20
	bne _021609B0
	ldr r0, _0216076C ; =OVERLAY11_BSS_0216CEB9
	mov r1, #3
	bl NHTTPi_strToInt
	cmp r0, #0
	blt _021609B0
	ldr r2, [sb]
	add r3, sp, #0x30
	mov r0, sb
	mov r1, #0xc
	bl ov11_0215E3D0
	cmp r0, #0
	blt _021609B0
	ldr r1, _02160770 ; =s_Content_Length_overlay_11_02169940
	add r2, sp, #0x34
	mov r0, sb
	bl ov11_0215EFC0
	movs r5, r0
	moveq r0, #0
	streq r0, [sp, #4]
	beq _021609B0
	cmp r5, #0x400
	bgt _021609B0
	cmp r5, #0
	ble _0216055C
	ldr r2, [sp, #0x34]
	ldr r1, _0216075C ; =OVERLAY11_BSS_0216CEB0
	mov r0, sb
	mov r3, r5
	bl ov11_0215E5E0
	cmp r0, #0
	beq _021609B0
	ldr r0, _0216075C ; =OVERLAY11_BSS_0216CEB0
	mov r1, r5
	bl NHTTPi_strToInt
	movs r5, r0
	bmi _021609B0
	str r5, [r8, #0x14]
	b _02160564
_0216055C:
	mvn r0, #0
	str r0, [r8, #0x14]
_02160564:
	ldr r1, _02160774 ; =s_Connection_overlay_11_02169950
	add r2, sp, #0x34
	mov r0, sb
	bl ov11_0215EFC0
	str r0, [sp, #8]
	cmp r0, #0
	beq _021609B0
	bge _021605C4
	ldr r0, _0216075C ; =OVERLAY11_BSS_0216CEB0
	mov r2, #0
	ldrsb r1, [r0, #5]
	ldrsb r3, [r0, #7]
	add r0, sp, #0x24
	strb r1, [sp, #0x24]
	mov r1, #2
	strb r3, [sp, #0x25]
	strb r2, [sp, #0x26]
	bl NHTTPi_strToInt
	cmp r0, #0xb
	movge r0, #1
	strge r0, [sp, #8]
	movlt r0, #0
	strlt r0, [sp, #8]
	b _02160604
_021605C4:
	cmp r0, #0x400
	mov r0, #0
	strgt r0, [sp, #8]
	bgt _02160604
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #8]
	str r0, [sp]
	ldr r3, _02160778 ; =s_Keep_Alive_overlay_11_0216995c
	mov r0, sb
	add r2, r1, r2
	bl ov11_0215E510
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #8]
	movne r0, #0
	strne r0, [sp, #8]
_02160604:
	ldr r1, _0216077C ; =s_Transfer_Encoding_overlay_11_02169968
	add r2, sp, #0x34
	mov r0, sb
	bl ov11_0215EFC0
	cmp r0, #0
	beq _021609B0
	cmp r0, #0x400
	movgt r1, #0
	bgt _02160660
	cmp r0, #0
	ble _0216065C
	ldr r1, [sp, #0x34]
	ldr r3, _02160780 ; =s_chunked_overlay_11_0216997c
	add r2, r1, r0
	mov r0, #0x3b
	str r0, [sp]
	mov r0, sb
	bl ov11_0215E510
	cmp r0, #0
	moveq r1, #1
	movne r1, #0
	b _02160660
_0216065C:
	mov r1, #0
_02160660:
	ldr r0, [r8, #0x40]
	cmp r0, #2
	beq _021609B0
	cmp r5, #0
	blt _02160784
	mov r4, #0
	b _021606B0
_0216067C:
	str r4, [sp]
	ldr r2, [sb, #4]
	mov r0, r8
	mov r1, r6
	mov r3, r5
	bl ov11_0215E708
	cmp r0, #0
	blt _021609B0
	beq _021606CC
	ldr r1, [sb, #4]
	sub r5, r5, r0
	add r0, r1, r0
	str r0, [sb, #4]
_021606B0:
	cmp r5, #0
	ble _021606CC
	ldr r1, [sb, #4]
	mov r0, sb
	bl ov11_0215E6CC
	cmp r0, #0
	beq _0216067C
_021606CC:
	cmp r5, #0
	beq _021606F8
	ldr r1, [sb, #4]
	mov r0, sb
	bl ov11_0215E6CC
	cmp r0, #0
	movne r0, #6
	strne r0, [sp, #4]
	moveq r0, #0xa
	streq r0, [sp, #4]
	b _021609B0
_021606F8:
	mov r0, #0
	str r0, [sp, #4]
	b _021609B0
	.align 2, 0
_02160704: .word OVERLAY11_BSS_0216CE68
_02160708: .word OVERLAY11_BSS_0216C47C
_0216070C: .word OVERLAY11_BSS_0216C478
_02160710: .word 0x0000CC8D
_02160714: .word s_GET_overlay_11_02169874
_02160718: .word s_POST_overlay_11_0216987c
_0216071C: .word s_HEAD_overlay_11_02169884
_02160720: .word s_overlay_11_0216988c
_02160724: .word s_HTTP_1_1_overlay_11_02169890
_02160728: .word s_Host_overlay_11_0216989c
_0216072C: .word s_overlay_11_021698a4
_02160730: .word s_overlay_11_021698a8
_02160734: .word OVERLAY11_BSS_0216C474
_02160738: .word s_Content_Type_multipart_form_dat_overlay_11_021698ac
_0216073C: .word s_Content_Type_application_x_www_overlay_11_021698dc
_02160740: .word s_Content_Length_overlay_11_02169910
_02160744: .word s_Content_Disposition_form_data_n_overlay_11_02165f18
_02160748: .word s_overlay_11_02169924
_0216074C: .word s_Content_Type_application_octet_overlay_11_02165f40
_02160750: .word s_overlay_11_02169928
_02160754: .word s_overlay_11_02169930
_02160758: .word s_overlay_11_02169934
_0216075C: .word OVERLAY11_BSS_0216CEB0
_02160760: .word 0x000001FF
_02160764: .word OVERLAY11_BSS_0216C470
_02160768: .word s_HTTP_overlay_11_02169938
_0216076C: .word OVERLAY11_BSS_0216CEB9
_02160770: .word s_Content_Length_overlay_11_02169940
_02160774: .word s_Connection_overlay_11_02169950
_02160778: .word s_Keep_Alive_overlay_11_0216995c
_0216077C: .word s_Transfer_Encoding_overlay_11_02169968
_02160780: .word s_chunked_overlay_11_0216997c
_02160784:
	mov r0, #0xa
	cmp r1, #0
	str r0, [sp, #4]
	beq _02160904
	mov r7, #0
	ldr r5, _0216075C ; =OVERLAY11_BSS_0216CEB0
	add r4, sp, #0x40
	mov sl, r7
_021607A4:
	mov r0, #0
	strb r0, [sp, #0x40]
	strb r0, [sp, #0x41]
	str r0, [sp, #0x38]
_021607B4:
	str r7, [sp]
	ldr r2, [sp, #0x38]
	mov r0, r8
	mov r1, r6
	mov r3, #1
	add r2, r5, r2
	bl ov11_0215F368
	cmp r0, #0
	blt _021609B0
	ldr r1, [sp, #0x38]
	ldrsb r0, [r5, r1]
	and r2, r1, #1
	strb r0, [r4, r2]
	cmp r0, #0x3b
	beq _0216080C
	cmp r0, #0xa
	bne _02160854
	sub r2, r1, #1
	and r2, r2, #1
	ldrsb r2, [r4, r2]
	cmp r2, #0xd
	bne _02160854
_0216080C:
	cmp r0, #0xa
	subeq r0, r1, #1
	streq r0, [sp, #0x34]
	beq _02160834
	str r1, [sp, #0x34]
	mov r0, r8
	mov r1, r6
	bl ov11_0215F61C
	cmp r0, #0
	ble _021609B0
_02160834:
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _021609B0
	mov r0, r5
	bl ov11_02160BB8
	movs fp, r0
	bmi _021609B0
	b _02160868
_02160854:
	ldr r0, [sp, #0x38]
	add r0, r0, #1
	str r0, [sp, #0x38]
	cmp r0, #0x400
	blt _021607B4
_02160868:
	ldr r0, [sp, #0x38]
	cmp r0, #0x400
	moveq r0, #7
	streq r0, [sp, #4]
	beq _021609B0
	cmp fp, #0
	ble _021608EC
	ble _021607A4
_02160888:
	str sl, [sp]
	mov r0, r8
	mov r1, r6
	ldr r2, [sb, #4]
	mov r3, fp
	bl ov11_0215E708
	cmp r0, #0
	ble _021609B0
	ldr r1, [sb, #4]
	subs fp, fp, r0
	add r0, r1, r0
	str r0, [sb, #4]
	bne _021608E0
	mov r0, #0
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, #2
	bl ov11_0215F368
	cmp r0, #0
	ble _021609B0
_021608E0:
	cmp fp, #0
	bgt _02160888
	b _021607A4
_021608EC:
	mov r0, r8
	mov r1, r6
	bl ov11_0215F61C
	mov r0, #0
	str r0, [sp, #4]
	b _021609B0
_02160904:
	ldr r1, [sb, #4]
	mov r0, sb
	bl ov11_0215E6CC
	cmp r0, #0
	bne _021609B0
	mov r5, #0
	ldr r4, _0216075C ; =OVERLAY11_BSS_0216CEB0
	mov sl, #1
	mov r7, r5
_02160928:
	mov r0, r8
	mov r1, r6
	ldr r2, [sb, #4]
	mov r3, r7
	bl ov11_0215E6E0
	cmp r0, #0
	blt _021609B0
	moveq r0, #0
	streq r0, [sp, #4]
	beq _021609B0
	ldr r1, [sb, #4]
	add r0, r1, r0
	str r0, [sb, #4]
	mov r0, sb
	ldr r1, [sb, #4]
	bl ov11_0215E6CC
	cmp r0, #0
	beq _0216099C
	str r5, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r4
	mov r3, sl
	bl ov11_0215F368
	cmp r0, #0
	blt _021609B0
	movne r0, #6
	strne r0, [sp, #4]
	bne _021609B0
_0216099C:
	mov r0, sb
	ldr r1, [sb, #4]
	bl ov11_0215E6CC
	cmp r0, #0
	beq _02160928
_021609B0:
	bl ov11_0215E1F8
	ldr r0, _0216070C ; =OVERLAY11_BSS_0216C478
	ldr r1, _02160734 ; =OVERLAY11_BSS_0216C474
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _0216070C ; =OVERLAY11_BSS_0216C478
	mov r1, #0
	str r1, [r0]
	bl ov11_0215E20C
	ldr r0, [r8, #4]
	cmp r0, #0
	movne r0, #8
	strne r0, [sp, #4]
	cmp r6, #0
	blt _02160A38
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02160A08
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02160A38
_02160A08:
	mov r0, r8
	mov r1, r6
	bl ov11_0215F2A0
	cmp r0, #0
	movlt r0, #0xa
	strlt r0, [sp, #4]
	add r1, sp, #0x3c
	mov r0, r6
	bl ov11_0215F6E4
	mov r0, #0
	mvn r6, #0
	str r0, [sp, #8]
_02160A38:
	ldr r0, [sp, #4]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sb, #8]
	beq _02160A60
	mov r0, #0
	str r0, [sb, #8]
	ldr r1, _02160ABC ; =OVERLAY11_BSS_0216C46C
	ldr r0, [sp, #4]
	str r0, [r1]
_02160A60:
	ldr r4, [r8, #0x2c]
	mov r0, r8
	ldr r5, [r8, #0x3c]
	bl ov11_0215ED58
	ldr r0, [sp, #4]
	mov r1, sb
	mov r2, r4
	blx r5
_02160A80:
	ldr r0, _02160708 ; =OVERLAY11_BSS_0216C47C
	ldr r0, [r0]
	cmp r0, #0
	beq _0215F828
_02160A90:
	cmp r6, #0
	blt _02160AB0
	mov r0, r8
	mov r1, r6
	bl ov11_0215F2A0
	add r1, sp, #0x3c
	mov r0, r6
	bl ov11_0215F6E4
_02160AB0:
	bl ov11_0215F784
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02160ABC: .word OVERLAY11_BSS_0216C46C

	arm_func_start ov11_02160AC0
ov11_02160AC0: ; 0x02160AC0
	ldrsb r2, [r0], #1
	mov r1, #0
	cmp r2, #0
	beq _02160B20
	arm_func_end ov11_02160AC0
_02160AD0:
	cmp r2, #0x30
	blt _02160AE0
	cmp r2, #0x39
	ble _02160B08
_02160AE0:
	cmp r2, #0x41
	blt _02160AF0
	cmp r2, #0x5a
	ble _02160B08
_02160AF0:
	cmp r2, #0x61
	blt _02160B00
	cmp r2, #0x7a
	ble _02160B08
_02160B00:
	cmp r2, #0x20
	bne _02160B10
_02160B08:
	add r1, r1, #1
	b _02160B14
_02160B10:
	add r1, r1, #3
_02160B14:
	ldrsb r2, [r0], #1
	cmp r2, #0
	bne _02160AD0
_02160B20:
	mov r0, r1
	bx lr

	arm_func_start ov11_02160B28
ov11_02160B28: ; 0x02160B28
	cmp r1, #0x20
	bne _02160B40
	mov r1, #0x2b
	strb r1, [r0]
	mov r0, #1
	bx lr
	arm_func_end ov11_02160B28
_02160B40:
	cmp r1, #0x30
	blt _02160B50
	cmp r1, #0x39
	ble _02160B70
_02160B50:
	cmp r1, #0x41
	blt _02160B60
	cmp r1, #0x5a
	ble _02160B70
_02160B60:
	cmp r1, #0x61
	blt _02160B7C
	cmp r1, #0x7a
	bgt _02160B7C
_02160B70:
	strb r1, [r0]
	mov r0, #1
	bx lr
_02160B7C:
	mov r2, r1, asr #4
	and r3, r2, #0xf
	mov r2, #0x25
	strb r2, [r0]
	cmp r3, #0xa
	addlt r2, r3, #0x30
	addge r2, r3, #0x37
	and r1, r1, #0xf
	cmp r1, #0xa
	addlt r1, r1, #0x30
	strb r2, [r0, #1]
	addge r1, r1, #0x37
	strb r1, [r0, #2]
	mov r0, #3
	bx lr

	arm_func_start ov11_02160BB8
ov11_02160BB8: ; 0x02160BB8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	cmp r1, #8
	mvngt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
	bne _02160BDC
	ldrsb r2, [r0]
	cmp r2, #0x37
	mvngt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov11_02160BB8
_02160BDC:
	mov r5, #0
	mov r6, r5
	mov r7, r5
	cmp r1, #0
	ble _02160C98
	mov lr, #1
	mov r3, lr
	mov ip, lr
	mov r4, r5
_02160C00:
	ldrsb r8, [r0, r5]
	mov r2, r4
	cmp r8, #0x41
	blt _02160C18
	cmp r8, #0x5a
	movle r2, lr
_02160C18:
	cmp r2, #0
	addne r8, r8, #0x20
	mov r2, r8, lsl #0x18
	mov r2, r2, asr #0x18
	cmp r2, #0x30
	blt _02160C48
	cmp r2, #0x39
	bgt _02160C48
	add r2, r2, r6, lsl #4
	mov r7, ip
	sub r6, r2, #0x30
	b _02160C8C
_02160C48:
	cmp r2, #0x61
	blt _02160C68
	cmp r2, #0x66
	bgt _02160C68
	add r2, r2, r6, lsl #4
	mov r7, r3
	sub r6, r2, #0x57
	b _02160C8C
_02160C68:
	cmp r7, #0
	beq _02160C7C
	cmp r2, #0x20
	cmpne r2, #0
	beq _02160C98
_02160C7C:
	cmp r7, #0
	cmpeq r2, #0x20
	mvnne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_02160C8C:
	add r5, r5, #1
	cmp r5, r1
	blt _02160C00
_02160C98:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start NHTTPi_strToInt
NHTTPi_strToInt: ; 0x02160CA0
	stmdb sp!, {r3, r4, r5, lr}
	cmp r1, #0xa
	mvngt r0, #0
	ldmgtia sp!, {r3, r4, r5, pc}
	mov lr, #0
	mov r4, lr
	mov r3, lr
	cmp r1, #0
	ble _02160D30
	mov ip, #1
	mov r2, #0xa
	arm_func_end NHTTPi_strToInt
_02160CCC:
	cmp r3, #0
	ldrsb r5, [r0, lr]
	beq _02160CE4
	cmp r5, #0x20
	cmpne r5, #0
	beq _02160D30
_02160CE4:
	cmp r3, #0
	cmpeq r5, #0x20
	beq _02160D24
	cmp r5, #0x30
	blt _02160D00
	cmp r5, #0x39
	ble _02160D08
_02160D00:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02160D08:
	mla r3, r4, r2, r5
	mov r5, r4
	sub r4, r3, #0x30
	cmp r5, r4
	mov r3, ip
	mvngt r0, #0
	ldmgtia sp!, {r3, r4, r5, pc}
_02160D24:
	add lr, lr, #1
	cmp lr, r1
	blt _02160CCC
_02160D30:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start NHTTPi_intToStr
NHTTPi_intToStr: ; 0x02160D38
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r6, _02160DF0 ; =DAT_overlay_11_02165f8c
	add r4, sp, #0
	mov sl, r0
	mov sb, r1
	ldmia r6!, {r0, r1, r2, r3}
	mov r5, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r6]
	mov r7, #0
	str r0, [r4]
	mov r6, r7
	mov r1, r7
	mov fp, #1
	mov r4, #0x30
	arm_func_end NHTTPi_intToStr
_02160D80:
	ldr r8, [r5, r6, lsl #2]
	cmp sb, r8
	blo _02160DB8
	mov r0, sb
	mov r1, r8
	bl _u32_div_f
	mul r2, r0, r8
	cmp sl, #0
	addne r0, r0, #0x30
	strneb r0, [sl, r7]
	mov r1, fp
	sub sb, sb, r2
	add r7, r7, #1
	b _02160DCC
_02160DB8:
	cmp r1, #0
	beq _02160DCC
	cmp sl, #0
	strneb r4, [sl, r7]
	add r7, r7, #1
_02160DCC:
	add r6, r6, #1
	cmp r6, #9
	blt _02160D80
	cmp sl, #0
	addne r0, sb, #0x30
	strneb r0, [sl, r7]
	add r0, r7, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02160DF0: .word DAT_overlay_11_02165f8c

	arm_func_start ov11_02160DF4
ov11_02160DF4: ; 0x02160DF4
	stmdb sp!, {r4, r5, r6, lr}
	mov ip, #1
	mov r3, #0
	mov r2, ip
	mov lr, r3
	b _02160E24
	arm_func_end ov11_02160DF4
_02160E0C:
	cmp r5, #0
	cmpne r5, #0x20
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r0, #1
	add r1, r1, #1
_02160E24:
	ldrsb r6, [r1]
	mov r4, lr
	cmp r6, #0x41
	blt _02160E3C
	cmp r6, #0x5a
	movle r4, ip
_02160E3C:
	ldrsb r5, [r0]
	cmp r4, #0
	addne r6, r6, #0x20
	mov r4, r3
	cmp r5, #0x41
	blt _02160E5C
	cmp r5, #0x5a
	movle r4, r2
_02160E5C:
	cmp r4, #0
	addne r4, r5, #0x20
	moveq r4, r5
	cmp r4, r6
	beq _02160E0C
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start ov11_02160E78
ov11_02160E78: ; 0x02160E78
	stmdb sp!, {r3, lr}
	mov ip, #0
	cmp r1, #0
	mov lr, ip
	sub r1, r1, #1
	beq _02160ED8
	mov r2, #0xa
	arm_func_end ov11_02160E78
_02160E94:
	ldrsb r3, [r0]
	cmp r3, #0x20
	beq _02160EC8
	cmp r3, #0x30
	blt _02160EC8
	cmp r3, #0x39
	bgt _02160EC8
	mla r3, lr, r2, r3
	add ip, ip, #1
	cmp ip, #9
	sub lr, r3, #0x30
	mvngt r0, #0
	ldmgtia sp!, {r3, pc}
_02160EC8:
	cmp r1, #0
	add r0, r0, #1
	sub r1, r1, #1
	bne _02160E94
_02160ED8:
	cmp ip, #0
	mvneq lr, #0
	mov r0, lr
	ldmia sp!, {r3, pc}

	arm_func_start ov11_02160EE8
ov11_02160EE8: ; 0x02160EE8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	cmp r1, r3
	mvnlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r1, r3
	add r8, r1, #1
	cmp r8, #0
	mov r4, #0
	ble _02160F64
	ldrsb r7, [r2]
	mov lr, #1
	arm_func_end ov11_02160EE8
_02160F14:
	ldrsb r1, [r0, r4]
	cmp r7, r1
	bne _02160F58
	mov r5, lr
	cmp r3, #1
	add r6, r0, r4
	ble _02160F4C
_02160F30:
	ldrsb ip, [r6, r5]
	ldrsb r1, [r2, r5]
	cmp ip, r1
	bne _02160F4C
	add r5, r5, #1
	cmp r5, r3
	blt _02160F30
_02160F4C:
	cmp r5, r3
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_02160F58:
	add r4, r4, #1
	cmp r4, r8
	blt _02160F14
_02160F64:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

    .rodata

    .global DAT_overlay_11_02165f00
DAT_overlay_11_02165f00: ; 0x02165F00
	.byte 0x2D, 0x2D, 0x74, 0x39, 0x53, 0x66, 0x34, 0x79, 0x66, 0x6A, 0x66, 0x31, 0x52, 0x74, 0x76, 0x44
	.byte 0x75, 0x33, 0x41

    .global DAT_overlay_11_02165f13
DAT_overlay_11_02165f13: ; 0x02165F13
	.byte 0x41, 0x00, 0x00, 0x00, 0x00

    .global s_Content_Disposition_form_data_n_overlay_11_02165f18
s_Content_Disposition_form_data_n_overlay_11_02165f18: ; 0x02165F18
	.asciz "Content-Disposition: form-data; name=\""

    .global DAT_overlay_11_02165F3F
DAT_overlay_11_02165F3F:
	.byte 0x00

    .global s_Content_Type_application_octet_overlay_11_02165f40
s_Content_Type_application_octet_overlay_11_02165f40: ; 0x02165F40
	.asciz "Content-Type: application/octet-stream\r\nContent-Transfer-Encoding: binary\r\n"

    .global DAT_overlay_11_02165f8c
DAT_overlay_11_02165f8c: ; 0x02165F8C
	.byte 0x00, 0xCA, 0x9A, 0x3B

    .global DAT_overlay_11_02165f90
DAT_overlay_11_02165f90: ; 0x02165F90
	.byte 0x00, 0xE1, 0xF5, 0x05

    .global DAT_overlay_11_02165f94
DAT_overlay_11_02165f94: ; 0x02165F94
	.byte 0x80, 0x96, 0x98, 0x00

    .global DAT_overlay_11_02165f98
DAT_overlay_11_02165f98: ; 0x02165F98
	.byte 0x40, 0x42, 0x0F, 0x00

    .global DAT_overlay_11_02165f9c
DAT_overlay_11_02165f9c: ; 0x02165F9C
	.byte 0xA0, 0x86, 0x01, 0x00

    .global DAT_overlay_11_02165fa0
DAT_overlay_11_02165fa0: ; 0x02165FA0
	.byte 0x10, 0x27, 0x00, 0x00

    .global DAT_overlay_11_02165fa4
DAT_overlay_11_02165fa4: ; 0x02165FA4
	.byte 0xE8, 0x03, 0x00, 0x00

    .global DAT_overlay_11_02165fa8
DAT_overlay_11_02165fa8: ; 0x02165FA8
	.byte 0x64, 0x00, 0x00, 0x00

    .global DAT_overlay_11_02165fac
DAT_overlay_11_02165fac: ; 0x02165FAC
	.byte 0x0A, 0x00, 0x00, 0x00

    .data

    .global s_http_overlay_11_02169850
s_http_overlay_11_02169850: ; 0x02169850
	.asciz "http://"

    .global s_https_overlay_11_02169858
s_https_overlay_11_02169858: ; 0x02169858
	.asciz "https://"

    .global DAT_overlay_11_02169861
DAT_overlay_11_02169861:
	.byte 0x00, 0x00, 0x00

    .global s_HTTPSTATUSCODE_overlay_11_02169864
s_HTTPSTATUSCODE_overlay_11_02169864: ; 0x02169864
	.asciz "HTTPSTATUSCODE"

    .global DAT_overlay_11_02169873
DAT_overlay_11_02169873:
	.byte 0x00

    .global s_GET_overlay_11_02169874
s_GET_overlay_11_02169874: ; 0x02169874
	.asciz "GET "

    .global DAT_overlay_11_02169879
DAT_overlay_11_02169879:
	.byte 0x00, 0x00, 0x00

    .global s_POST_overlay_11_0216987c
s_POST_overlay_11_0216987c: ; 0x0216987C
	.asciz "POST "

    .global DAT_overlay_11_02169882
DAT_overlay_11_02169882:
	.byte 0x00, 0x00

    .global s_HEAD_overlay_11_02169884
s_HEAD_overlay_11_02169884: ; 0x02169884
	.asciz "HEAD "

    .global DAT_overlay_11_0216988A
DAT_overlay_11_0216988A:
	.byte 0x00, 0x00

    .global s_overlay_11_0216988c
s_overlay_11_0216988c: ; 0x0216988C
	.asciz "/"

    .global DAT_overlay_11_0216988E
DAT_overlay_11_0216988E:
	.byte 0x00, 0x00

    .global s_HTTP_1_1_overlay_11_02169890
s_HTTP_1_1_overlay_11_02169890: ; 0x02169890
	.asciz " HTTP/1.1\r\n"

    .global s_Host_overlay_11_0216989c
s_Host_overlay_11_0216989c: ; 0x0216989C
	.asciz "Host: "

    .global DAT_overlay_11_021698A3
DAT_overlay_11_021698A3:
	.byte 0x00

    .global s_overlay_11_021698a4
s_overlay_11_021698a4: ; 0x021698A4
	.asciz "\r\n"

    .global DAT_overlay_11_021698A7
DAT_overlay_11_021698A7:
	.byte 0x00

    .global s_overlay_11_021698a8
s_overlay_11_021698a8: ; 0x021698A8
	.asciz ": "

    .global DAT_overlay_11_021698AB
DAT_overlay_11_021698AB:
	.byte 0x00

    .global s_Content_Type_multipart_form_dat_overlay_11_021698ac
s_Content_Type_multipart_form_dat_overlay_11_021698ac: ; 0x021698AC
	.asciz "Content-Type: multipart/form-data; boundary="

    .global DAT_overlay_11_021698D9
DAT_overlay_11_021698D9:
	.byte 0x00, 0x00, 0x00

    .global s_Content_Type_application_x_www_overlay_11_021698dc
s_Content_Type_application_x_www_overlay_11_021698dc: ; 0x021698DC
	.asciz "Content-Type: application/x-www-form-urlencoded\r\n"

    .global DAT_overlay_11_0216990E
DAT_overlay_11_0216990E:
	.byte 0x00, 0x00

    .global s_Content_Length_overlay_11_02169910
s_Content_Length_overlay_11_02169910: ; 0x02169910
	.asciz "Content-Length: "

    .global DAT_overlay_11_02169921
DAT_overlay_11_02169921:
	.byte 0x00, 0x00, 0x00

    .global s_overlay_11_02169924
s_overlay_11_02169924: ; 0x02169924
	.asciz "\"\r\n"

    .global s_overlay_11_02169928
s_overlay_11_02169928: ; 0x02169928
	.asciz "--\r\n"

    .global DAT_overlay_11_0216992D
DAT_overlay_11_0216992D:
	.byte 0x00, 0x00, 0x00

    .global s_overlay_11_02169930
s_overlay_11_02169930: ; 0x02169930
	.asciz "="

    .global DAT_overlay_11_02169932
DAT_overlay_11_02169932:
	.byte 0x00, 0x00

    .global s_overlay_11_02169934
s_overlay_11_02169934: ; 0x02169934
	.asciz "&"

    .global DAT_overlay_11_02169936
DAT_overlay_11_02169936:
	.byte 0x00, 0x00

    .global s_HTTP_overlay_11_02169938
s_HTTP_overlay_11_02169938: ; 0x02169938
	.asciz "HTTP/"

    .global DAT_overlay_11_0216993E
DAT_overlay_11_0216993E:
	.byte 0x00, 0x00

    .global s_Content_Length_overlay_11_02169940
s_Content_Length_overlay_11_02169940: ; 0x02169940
	.asciz "Content-Length"

    .global DAT_overlay_11_0216994F
DAT_overlay_11_0216994F:
	.byte 0x00

    .global s_Connection_overlay_11_02169950
s_Connection_overlay_11_02169950: ; 0x02169950
	.asciz "Connection"

    .global DAT_overlay_11_0216995B
DAT_overlay_11_0216995B:
	.byte 0x00

    .global s_Keep_Alive_overlay_11_0216995c
s_Keep_Alive_overlay_11_0216995c: ; 0x0216995C
	.asciz "Keep-Alive"

    .global DAT_overlay_11_02169967
DAT_overlay_11_02169967:
	.byte 0x00

    .global s_Transfer_Encoding_overlay_11_02169968
s_Transfer_Encoding_overlay_11_02169968: ; 0x02169968
	.asciz "Transfer-Encoding"

    .global DAT_overlay_11_0216997A
DAT_overlay_11_0216997A:
	.byte 0x00, 0x00

    .global s_chunked_overlay_11_0216997c
s_chunked_overlay_11_0216997c: ; 0x0216997C
	.asciz "chunked"

    .bss

    .global OVERLAY11_BSS_0216C468
OVERLAY11_BSS_0216C468: ; 0x0216C468
    .space 0x4

    .global OVERLAY11_BSS_0216C46C
OVERLAY11_BSS_0216C46C: ; 0x0216C46C
    .space 0x4

    .global OVERLAY11_BSS_0216C470
OVERLAY11_BSS_0216C470: ; 0x0216C470
    .space 0x4

    .global OVERLAY11_BSS_0216C474
OVERLAY11_BSS_0216C474: ; 0x0216C474
    .space 0x4

    .global OVERLAY11_BSS_0216C478
OVERLAY11_BSS_0216C478: ; 0x0216C478
    .space 0x4

    .global OVERLAY11_BSS_0216C47C
OVERLAY11_BSS_0216C47C: ; 0x0216C47C
    .space 0x8

    .global OVERLAY11_BSS_0216C484
OVERLAY11_BSS_0216C484: ; 0x0216C484
    .space 0x4

    .global OVERLAY11_BSS_0216C488
OVERLAY11_BSS_0216C488: ; 0x0216C488
    .space 0x4

    .global OVERLAY11_BSS_0216C48C
OVERLAY11_BSS_0216C48C: ; 0x0216C48C
    .space 0x8C0

    .global OVERLAY11_BSS_0216CD4C
OVERLAY11_BSS_0216CD4C: ; 0x0216CD4C
    .space 0x4

    .global OVERLAY11_BSS_0216CD50
OVERLAY11_BSS_0216CD50: ; 0x0216CD50
    .space 0x18

    .global OVERLAY11_BSS_0216CD68
OVERLAY11_BSS_0216CD68: ; 0x0216CD68
    .space 0x20

    .global OVERLAY11_BSS_0216CD88
OVERLAY11_BSS_0216CD88: ; 0x0216CD88
    .space 0xC0

    .global OVERLAY11_BSS_0216CE48
OVERLAY11_BSS_0216CE48: ; 0x0216CE48
    .space 0x20

    .global OVERLAY11_BSS_0216CE68
OVERLAY11_BSS_0216CE68: ; 0x0216CE68
    .space 0x8

    .global OVERLAY11_BSS_0216CE70
OVERLAY11_BSS_0216CE70: ; 0x0216CE70
    .space 0x4

    .global OVERLAY11_BSS_0216CE74
OVERLAY11_BSS_0216CE74: ; 0x0216CE74
    .space 0x3C

    .global OVERLAY11_BSS_0216CEB0
OVERLAY11_BSS_0216CEB0: ; 0x0216CEB0
    .space 0x9

    .global OVERLAY11_BSS_0216CEB9
OVERLAY11_BSS_0216CEB9: ; 0x0216CEB9
    .space 0x3F7
