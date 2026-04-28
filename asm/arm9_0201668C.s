    .include "macros.inc"
    .include "include/arm9_0201668C.inc"

    .text

	arm_func_start sub_0201668C
sub_0201668C: ; 0x0201668C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	add r0, sp, #0x10
	bl RTC_GetTime
	add r0, sp, #0
	bl RTC_GetDate
	add r1, sp, #0x10
	add r2, sp, #0
	mov r0, r5
	bl _ZN17UnkClass_020B26A012sub_0201630CEP7RTCTimeP7RTCDate
	add r0, r5, #0x8000
	ldr r3, [r0, #0x7d4]
	ldr r2, [r0, #0x7cc]
	ldrb r1, [r0, #0x7d8]
	ldrb r0, [r0, #0x7d0]
	sub r2, r3, r2
	cmp r2, #0
	sub r4, r1, r0
	movgt r0, #0x3c
	mlagt r4, r2, r0, r4
	bgt _02016704
	cmp r2, #0
	bge _02016704
	mvn r0, #0
	sub r1, r0, r3
	cmp r1, #2
	movlo r0, #0x3c
	mlalo r4, r1, r0, r4
	addhs r4, r4, #0x78
	arm_func_end sub_0201668C
_02016704:
	ldr r0, _02016780 ; =s_0208b67c
	bl LogInfo
	ldr r0, _02016784 ; =s_LotTimeCheck_0208b68c
	bl LogInfo
	add r0, r5, #0x8000
	ldrb r2, [r0, #0x7d8]
	ldr r1, [r0, #0x7d4]
	ldr r0, _02016788 ; =s_PlayTime_d_d_0208b69c
	bl LogInfo
	add r0, r5, #0x8000
	ldrb r2, [r0, #0x7d0]
	ldr r1, [r0, #0x7cc]
	ldr r0, _0201678C ; =s_LastTime_d_d_0208b6ac
	bl LogInfo
	ldr r0, _02016790 ; =s_DivTime_d_0208b6bc
	mov r1, r4
	bl LogInfo
	ldr r0, _02016780 ; =s_0208b67c
	bl LogInfo
	cmp r4, #0x1e
	addlt sp, sp, #0x1c
	ldmltia sp!, {r4, r5, pc}
	add r1, r5, #0x8000
	ldr r2, [r1, #0x7d4]
	mov r0, r5
	str r2, [r1, #0x7cc]
	ldrb r2, [r1, #0x7d8]
	strb r2, [r1, #0x7d0]
	bl sub_020167B4
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02016780: .word s_0208b67c
_02016784: .word s_LotTimeCheck_0208b68c
_02016788: .word s_PlayTime_d_d_0208b69c
_0201678C: .word s_LastTime_d_d_0208b6ac
_02016790: .word s_DivTime_d_0208b6bc

	arm_func_start LogInfo
LogInfo: ; 0x02016794
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	bl thunk_FUN_020442cc
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end LogInfo

	arm_func_start sub_020167B4
sub_020167B4: ; 0x020167B4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x8c
	mov sl, r0
	ldr r0, _02016BE4 ; =s_0208b6c8
	bl LogInfo
	ldr r0, _02016BE8 ; =s_LotGokigenParameter_0208b6e0
	bl LogInfo
	mov r2, #0
	mov r1, #1
	add r0, sp, #0x48
	arm_func_end sub_020167B4
_020167DC:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x11
	blt _020167DC
	ldr r7, _02016BEC ; =ptr_s_GONBE_0208b5d4_02084530
	add r6, sp, #4
	mov r4, #0x11
	mov r5, #4
_020167FC:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020167FC
	ldr r0, [r7]
	mov r7, #0
	str r0, [r6]
	mov sb, r7
	mov r1, #1
	add r5, sl, #0x8000
	mov r6, r7
	add fp, sp, #0x48
	add r8, sp, #4
_02016830:
	ldr r0, [r5, #0x7c8]
	tst r0, r1
	streq r6, [fp, sb, lsl #2]
	subeq r4, r4, #1
	beq _02016854
	ldr r1, [r8, sb, lsl #2]
	ldr r0, _02016BF0 ; =DAT_0208b6f8
	bl LogInfo
	add r7, r7, #1
_02016854:
	add sb, sb, #1
	mov r0, #1
	mov r1, r0, lsl sb
	cmp r1, #0x10000
	ble _02016830
	ldr r0, _02016BF4 ; =s_GetpartnerNum_d_0208b6fc
	mov r1, r7
	bl LogInfo
	mov r5, #0
	mov r6, r5
	cmp r7, #0
	bne _02016894
	ldr r0, _02016BF8 ; =s_0208b710
	bl LogInfo
	add sp, sp, #0x8c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02016894:
	cmp r7, #4
	bge _020168B0
	mov r0, #0xa
	mov r7, #1
	str r0, [sp]
	mov r8, #0x14
	b _020168DC
_020168B0:
	cmp r7, #0xa
	mov r8, #0xa
	bge _020168CC
	str r8, [sp]
	mov r7, #2
	mov r6, #1
	b _020168DC
_020168CC:
	mov r7, #5
	str r7, [sp]
	mov r5, #1
	mov r6, #2
_020168DC:
	mov fp, #0
_020168E0:
	cmp r5, #0
	ble _02016984
	ldr r1, _02016BFC ; =MAIN_BSS_0210CEC8
	mov r0, r4, lsl #0x10
	ldmia r1, {r3, sb, ip}
	movs r2, r0, lsr #0x10
	mla r0, sb, r3, ip
	str r0, [r1]
	mov r0, r0, lsr #0x10
	mulne r1, r0, r2
	movne r0, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r2, #0
	mov r3, r0, lsr #0x10
	mov sb, r2
	add r1, sp, #0x48
_02016920:
	ldr r0, [r1, sb, lsl #2]
	cmp r0, #1
	bne _0201696C
	cmp r2, r3
	bne _02016968
	add r1, sp, #4
	ldr r0, _02016C00 ; =s_SetVeryGood_s_0208b728
	ldr r1, [r1, sb, lsl #2]
	bl LogInfo
	add r0, sp, #0x48
	mov r1, #0
	add r2, sl, sb
	mov r3, #2
	strb r3, [r2, #9]
	str r1, [r0, sb, lsl #2]
	sub r4, r4, #1
	sub r5, r5, #1
	b _02016978
_02016968:
	add r2, r2, #1
_0201696C:
	add sb, sb, #1
	cmp sb, #0x11
	blt _02016920
_02016978:
	add fp, fp, #1
	cmp fp, #0x11
	blt _020168E0
_02016984:
	mov r5, #0
_02016988:
	cmp r6, #0
	ble _02016A2C
	ldr r1, _02016BFC ; =MAIN_BSS_0210CEC8
	mov r0, r4, lsl #0x10
	ldmia r1, {r3, sb, fp}
	movs r2, r0, lsr #0x10
	mla r0, sb, r3, fp
	str r0, [r1]
	mov r0, r0, lsr #0x10
	mulne r1, r0, r2
	movne r0, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r2, #0
	mov r3, r0, lsr #0x10
	mov sb, r2
	add r1, sp, #0x48
_020169C8:
	ldr r0, [r1, sb, lsl #2]
	cmp r0, #1
	bne _02016A14
	cmp r2, r3
	bne _02016A10
	add r1, sp, #4
	ldr r0, _02016C04 ; =s_SetGood_s_0208b738
	ldr r1, [r1, sb, lsl #2]
	bl LogInfo
	add r0, sp, #0x48
	mov r1, #0
	add r2, sl, sb
	mov r3, #1
	strb r3, [r2, #9]
	str r1, [r0, sb, lsl #2]
	sub r4, r4, #1
	sub r6, r6, #1
	b _02016A20
_02016A10:
	add r2, r2, #1
_02016A14:
	add sb, sb, #1
	cmp sb, #0x11
	blt _020169C8
_02016A20:
	add r5, r5, #1
	cmp r5, #0x11
	blt _02016988
_02016A2C:
	mov r5, #0
_02016A30:
	cmp r7, #0
	ble _02016AD0
	ldr r1, _02016BFC ; =MAIN_BSS_0210CEC8
	mov r0, r4, lsl #0x10
	ldmia r1, {r3, r6, sb}
	movs r2, r0, lsr #0x10
	mla r0, r6, r3, sb
	str r0, [r1]
	mov r0, r0, lsr #0x10
	mulne r1, r0, r2
	movne r0, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r2, #0
	mov r3, r0, lsr #0x10
	mov r6, r2
	add r1, sp, #0x48
_02016A70:
	ldr r0, [r1, r6, lsl #2]
	cmp r0, #1
	bne _02016AB8
	cmp r2, r3
	bne _02016AB4
	add r1, sp, #4
	ldr r0, _02016C08 ; =s_SetNormal_s_0208b744
	ldr r1, [r1, r6, lsl #2]
	bl LogInfo
	add r0, sp, #0x48
	mov r2, #0
	add r1, sl, r6
	strb r2, [r1, #9]
	str r2, [r0, r6, lsl #2]
	sub r4, r4, #1
	sub r7, r7, #1
	b _02016AC4
_02016AB4:
	add r2, r2, #1
_02016AB8:
	add r6, r6, #1
	cmp r6, #0x11
	blt _02016A70
_02016AC4:
	add r5, r5, #1
	cmp r5, #0x11
	blt _02016A30
_02016AD0:
	ldr r0, _02016C0C ; =s_Probability_d_0208b754
	ldr r1, [sp]
	bl LogInfo
	ldr r0, _02016C10 ; =s_Probability2_d_0208b764
	mov r1, r8
	bl LogInfo
	ldr r7, _02016BFC ; =MAIN_BSS_0210CEC8
	mov r6, #0
	add sb, sp, #4
	add r5, sp, #0x48
_02016AF8:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq _02016BC8
	ldr r2, [r7]
	ldmib r7, {r0, r1}
	mla r2, r0, r2, r1
	mov fp, r2, lsr #0x10
	mov r3, #0x64
	mul r3, fp, r3
	mov r3, r3, lsr #0x10
	mov fp, r3, lsl #0x10
	ldr r3, [sp]
	str r2, [r7]
	cmp r3, fp, lsr #16
	ble _02016B5C
	ldr r0, _02016C00 ; =s_SetVeryGood_s_0208b728
	ldr r1, [sb, r6, lsl #2]
	bl LogInfo
	mov r0, #0
	str r0, [r5, r6, lsl #2]
	add r1, sl, r6
	mov r0, #2
	strb r0, [r1, #9]
	sub r4, r4, #1
	b _02016BC8
_02016B5C:
	mla r1, r0, r2, r1
	str r1, [r7]
	mov r1, r1, lsr #0x10
	mov r0, #0x64
	mul r0, r1, r0
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	cmp r8, r0, lsr #16
	ble _02016BA8
	ldr r0, _02016C04 ; =s_SetGood_s_0208b738
	ldr r1, [sb, r6, lsl #2]
	bl LogInfo
	mov r0, #0
	str r0, [r5, r6, lsl #2]
	add r1, sl, r6
	mov r0, #1
	strb r0, [r1, #9]
	sub r4, r4, #1
	b _02016BC8
_02016BA8:
	ldr r0, _02016C08 ; =s_SetNormal_s_0208b744
	ldr r1, [sb, r6, lsl #2]
	bl LogInfo
	mov r0, #0
	add r1, sl, r6
	str r0, [r5, r6, lsl #2]
	strb r0, [r1, #9]
	sub r4, r4, #1
_02016BC8:
	add r6, r6, #1
	cmp r6, #0x11
	blt _02016AF8
	ldr r0, _02016BF8 ; =s_0208b710
	bl LogInfo
	add sp, sp, #0x8c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02016BE4: .word s_0208b6c8
_02016BE8: .word s_LotGokigenParameter_0208b6e0
_02016BEC: .word ptr_s_GONBE_0208b5d4_02084530
_02016BF0: .word DAT_0208b6f8
_02016BF4: .word s_GetpartnerNum_d_0208b6fc
_02016BF8: .word s_0208b710
_02016BFC: .word MAIN_BSS_0210CEC8
_02016C00: .word s_SetVeryGood_s_0208b728
_02016C04: .word s_SetGood_s_0208b738
_02016C08: .word s_SetNormal_s_0208b744
_02016C0C: .word s_Probability_d_0208b754
_02016C10: .word s_Probability2_d_0208b764

	arm_func_start sub_02016C14
sub_02016C14: ; 0x02016C14
	cmp r1, #0x1a
	movge r0, #0
	bxge lr
	add r0, r0, r1, asr #2
	add r0, r0, #0x8000
	ldrb r2, [r0, #0x7dc]
	mov r0, r1, lsl #0x1e
	mov r0, r0, lsr #0x1d
	mov r0, r2, asr r0
	and r0, r0, #3
	bx lr
	arm_func_end sub_02016C14

	arm_func_start sub_02016C40
sub_02016C40: ; 0x02016C40
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	cmp r1, #0x1a
	ldmgeia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	ldmltia sp!, {r3, r4, r5, pc}
	cmp r4, #4
	ldmgeia sp!, {r3, r4, r5, pc}
	add r0, r5, #0x3dc
	mov r2, r1, lsl #0x1e
	add r3, r0, #0x8400
	mov ip, r2, lsr #0x1d
	mov r0, #3
	ldrb r2, [r3, r1, asr #2]
	mvn r0, r0, lsl ip
	and r0, r2, r0
	and r0, r0, #0xff
	orr r0, r0, r4, lsl ip
	strb r0, [r3, r1, asr #2]
	cmp r1, #0x15
	ldmneia sp!, {r3, r4, r5, pc}
	bl sub_0201001C
	cmp r0, #0
	moveq r0, #0
	beq _02016CC0
	bl sub_0201001C
	add r1, r5, #0x8000
	add r0, r0, #0x1000
	ldrb r1, [r1, #0x7db]
	ldr r0, [r0, #0x438]
	bl sub_02010E78
	arm_func_end sub_02016C40
_02016CC0:
	strb r0, [r5, #2]
	cmp r4, #1
	bne _02016CDC
	ldrb r0, [r5, #2]
	add r0, r0, #5
	strb r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
_02016CDC:
	cmp r4, #2
	ldrgeb r0, [r5, #2]
	addge r0, r0, #0xf
	strgeb r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02016CF0
sub_02016CF0: ; 0x02016CF0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov ip, r1
	cmp ip, #0x1a
	mov lr, r0
	addge sp, sp, #0x10
	movge r0, #0
	ldmgeia sp!, {r4, pc}
	ldr r0, _02016D48 ; =u_02084520
	add lr, lr, ip, asr #2
	add r4, sp, #0
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, lr, #0x8000
	ldrb r1, [r0, #0x7dc]
	mov ip, ip, lsl #0x1e
	mov r0, ip, lsr #0x1d
	mov r0, r1, asr r0
	and r0, r0, #3
	ldr r0, [r4, r0, lsl #2]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_02016D48: .word u_02084520
	arm_func_end sub_02016CF0

	arm_func_start sub_02016D4C
sub_02016D4C: ; 0x02016D4C
	ldr r2, _02016D60 ; =0x0098967F
	str r1, [r0, #0x2c]
	cmp r1, r2
	strhi r2, [r0, #0x2c]
	bx lr
	.align 2, 0
_02016D60: .word 0x0098967F
	arm_func_end sub_02016D4C

	arm_func_start sub_02016D64
sub_02016D64: ; 0x02016D64
	ldr r3, [r0, #0x2c]
	ldr r2, _02016D84 ; =0x0098967F
	add r1, r3, r1
	str r1, [r0, #0x2c]
	cmp r1, r2
	strhi r2, [r0, #0x2c]
	ldr r0, [r0, #0x2c]
	bx lr
	.align 2, 0
_02016D84: .word 0x0098967F
	arm_func_end sub_02016D64

	arm_func_start sub_02016D88
sub_02016D88: ; 0x02016D88
	ldr r2, _02016DA0 ; =0x0098967F
	add r0, r0, #0x8000
	str r1, [r0, #0x758]
	cmp r1, r2
	strhi r2, [r0, #0x758]
	bx lr
	.align 2, 0
_02016DA0: .word 0x0098967F
	arm_func_end sub_02016D88

	arm_func_start sub_02016DA4
sub_02016DA4: ; 0x02016DA4
	add r2, r0, #0x8000
	ldr ip, [r2, #0x758]
	ldr r3, _02016DCC ; =0x0098967F
	add r1, ip, r1
	str r1, [r2, #0x758]
	cmp r1, r3
	strhi r3, [r2, #0x758]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x758]
	bx lr
	.align 2, 0
_02016DCC: .word 0x0098967F
	arm_func_end sub_02016DA4

	arm_func_start sub_02016DD0
sub_02016DD0: ; 0x02016DD0
	ldr r2, _02016DE8 ; =0x0001869F
	add r0, r0, #0x8000
	str r1, [r0, #0x75c]
	cmp r1, r2
	strhi r2, [r0, #0x75c]
	bx lr
	.align 2, 0
_02016DE8: .word 0x0001869F
	arm_func_end sub_02016DD0

	arm_func_start sub_02016DEC
sub_02016DEC: ; 0x02016DEC
	add r2, r0, #0x8000
	ldr ip, [r2, #0x75c]
	ldr r3, _02016E14 ; =0x0001869F
	add r1, ip, r1
	str r1, [r2, #0x75c]
	cmp r1, r3
	strhi r3, [r2, #0x75c]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x75c]
	bx lr
	.align 2, 0
_02016E14: .word 0x0001869F
	arm_func_end sub_02016DEC

	arm_func_start sub_02016E18
sub_02016E18: ; 0x02016E18
	ldr r2, _02016E30 ; =0x0001869F
	add r0, r0, #0x8000
	str r1, [r0, #0x760]
	cmp r1, r2
	strhi r2, [r0, #0x760]
	bx lr
	.align 2, 0
_02016E30: .word 0x0001869F
	arm_func_end sub_02016E18

	arm_func_start sub_02016E34
sub_02016E34: ; 0x02016E34
	add r2, r0, #0x8000
	ldr ip, [r2, #0x760]
	ldr r3, _02016E5C ; =0x0001869F
	add r1, ip, r1
	str r1, [r2, #0x760]
	cmp r1, r3
	strhi r3, [r2, #0x760]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x760]
	bx lr
	.align 2, 0
_02016E5C: .word 0x0001869F
	arm_func_end sub_02016E34

	arm_func_start sub_02016E60
sub_02016E60: ; 0x02016E60
	ldr r2, _02016E78 ; =0x0001869F
	add r0, r0, #0x8000
	str r1, [r0, #0x764]
	cmp r1, r2
	strhi r2, [r0, #0x764]
	bx lr
	.align 2, 0
_02016E78: .word 0x0001869F
	arm_func_end sub_02016E60

	arm_func_start sub_02016E7C
sub_02016E7C: ; 0x02016E7C
	add r2, r0, #0x8000
	ldr ip, [r2, #0x764]
	ldr r3, _02016EA4 ; =0x0001869F
	add r1, ip, r1
	str r1, [r2, #0x764]
	cmp r1, r3
	strhi r3, [r2, #0x764]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x764]
	bx lr
	.align 2, 0
_02016EA4: .word 0x0001869F
	arm_func_end sub_02016E7C

	arm_func_start sub_02016EA8
sub_02016EA8: ; 0x02016EA8
	ldr r2, _02016EC0 ; =0x0001869F
	add r0, r0, #0x8000
	str r1, [r0, #0x768]
	cmp r1, r2
	strhi r2, [r0, #0x768]
	bx lr
	.align 2, 0
_02016EC0: .word 0x0001869F
	arm_func_end sub_02016EA8

	arm_func_start sub_02016EC4
sub_02016EC4: ; 0x02016EC4
	add r2, r0, #0x8000
	ldr ip, [r2, #0x768]
	ldr r3, _02016EEC ; =0x0001869F
	add r1, ip, r1
	str r1, [r2, #0x768]
	cmp r1, r3
	strhi r3, [r2, #0x768]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x768]
	bx lr
	.align 2, 0
_02016EEC: .word 0x0001869F
	arm_func_end sub_02016EC4

	arm_func_start sub_02016EF0
sub_02016EF0: ; 0x02016EF0
	cmp r1, #0x11
	bxge lr
	add r0, r0, r1, lsl #2
	add r0, r0, #0x8000
	ldr r1, _02016F14 ; =0x0098967F
	str r2, [r0, #0x76c]
	cmp r2, r1
	strhi r1, [r0, #0x76c]
	bx lr
	.align 2, 0
	arm_func_end sub_02016EF0
_02016F14: .word 0x0098967F

	arm_func_start sub_02016F18
sub_02016F18: ; 0x02016F18
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r0, r1
	mov r5, r2
	bl sub_02035088
	cmp r0, #0x11
	bge _02016F70
	add r1, r4, #0x36c
	add r3, r1, #0x8400
	ldr r2, [r3, r0, lsl #2]
	add r1, r4, r0, lsl #2
	add r2, r2, r5
	str r2, [r3, r0, lsl #2]
	add r1, r1, #0x8000
	add r0, r4, r0, lsl #2
	ldr r3, [r1, #0x76c]
	ldr r2, _02016F78 ; =0x0098967F
	add r0, r0, #0x8000
	cmp r3, r2
	strhi r2, [r1, #0x76c]
	ldr r0, [r0, #0x76c]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02016F18
_02016F70:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02016F78: .word 0x0098967F

	arm_func_start sub_02016F7C
sub_02016F7C: ; 0x02016F7C
	stmdb sp!, {r3, r4, r5, lr}
	mvn r2, #0
	mov r3, #0
	add r4, r0, #0x8000
	mov r1, #1
	arm_func_end sub_02016F7C
_02016F90:
	cmp r2, #0
	bge _02016FBC
	ldr r5, [r4, #0x7c8]
	tst r5, r1, lsl r3
	beq _02016FDC
	add r5, r0, r3, lsl #2
	add ip, r5, #0x8000
	ldr r5, [ip, #0x76c]
	cmp r5, #0
	movne r2, r3
	b _02016FDC
_02016FBC:
	add r5, r0, r2, lsl #2
	add lr, r0, r3, lsl #2
	add ip, r5, #0x8000
	add lr, lr, #0x8000
	ldr r5, [ip, #0x76c]
	ldr ip, [lr, #0x76c]
	cmp r5, ip
	movlo r2, r3
_02016FDC:
	add r3, r3, #1
	cmp r3, #0x11
	blt _02016F90
	cmp r2, #0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	mov r0, r2
	bl sub_02035240
	mov r4, r0
	bl sub_0201001C
	add r0, r0, #0x1000
	mov r1, r4, lsl #0x10
	ldr r0, [r0, #0x434]
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	ldrh r0, [r0]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02017020
sub_02017020: ; 0x02017020
	ldr r2, _02017038 ; =0x00DDF220
	add r0, r0, #0x8000
	str r1, [r0, #0x7b0]
	cmp r1, r2
	strhi r2, [r0, #0x7b0]
	bx lr
	.align 2, 0
_02017038: .word 0x00DDF220
	arm_func_end sub_02017020

	arm_func_start sub_0201703C
sub_0201703C: ; 0x0201703C
	add r2, r0, #0x8000
	ldr ip, [r2, #0x7b0]
	ldr r3, _02017064 ; =0x00DDF220
	add r1, ip, r1
	str r1, [r2, #0x7b0]
	cmp r1, r3
	strhi r3, [r2, #0x7b0]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x7b0]
	bx lr
	.align 2, 0
_02017064: .word 0x00DDF220
	arm_func_end sub_0201703C

	arm_func_start sub_02017068
sub_02017068: ; 0x02017068
	ldr r2, _02017080 ; =0x000F423F
	add r0, r0, #0x8000
	str r1, [r0, #0x7b4]
	cmp r1, r2
	strhi r2, [r0, #0x7b4]
	bx lr
	.align 2, 0
_02017080: .word 0x000F423F
	arm_func_end sub_02017068

	arm_func_start sub_02017084
sub_02017084: ; 0x02017084
	add r2, r0, #0x8000
	ldr ip, [r2, #0x7b4]
	ldr r3, _020170AC ; =0x000F423F
	add r1, ip, r1
	str r1, [r2, #0x7b4]
	cmp r1, r3
	strhi r3, [r2, #0x7b4]
	add r0, r0, #0x8000
	ldr r0, [r0, #0x7b4]
	bx lr
	.align 2, 0
_020170AC: .word 0x000F423F
	arm_func_end sub_02017084

	arm_func_start sub_020170B0
sub_020170B0: ; 0x020170B0
	add r0, r0, #0x8700
	strh r1, [r0, #0xb8]
	ldrh r2, [r0, #0xb8]
	ldr r1, _020170CC ; =0x0000270F
	cmp r2, r1
	strhih r1, [r0, #0xb8]
	bx lr
	.align 2, 0
_020170CC: .word 0x0000270F
	arm_func_end sub_020170B0

	arm_func_start sub_020170D0
sub_020170D0: ; 0x020170D0
	add r2, r0, #0x8700
	ldrh ip, [r2, #0xb8]
	ldr r3, _020170FC ; =0x0000270F
	add r0, r0, #0x8700
	add r1, ip, r1
	strh r1, [r2, #0xb8]
	ldrh r1, [r2, #0xb8]
	cmp r1, r3
	strhih r3, [r2, #0xb8]
	ldrh r0, [r0, #0xb8]
	bx lr
	.align 2, 0
_020170FC: .word 0x0000270F
	arm_func_end sub_020170D0

	arm_func_start sub_02017100
sub_02017100: ; 0x02017100
	add r0, r0, #0x8700
	strh r1, [r0, #0xba]
	ldrh r2, [r0, #0xba]
	ldr r1, _0201711C ; =0x0000270F
	cmp r2, r1
	strhih r1, [r0, #0xba]
	bx lr
	.align 2, 0
_0201711C: .word 0x0000270F
	arm_func_end sub_02017100

	arm_func_start sub_02017120
sub_02017120: ; 0x02017120
	add r2, r0, #0x8700
	ldrh ip, [r2, #0xba]
	ldr r3, _0201714C ; =0x0000270F
	add r0, r0, #0x8700
	add r1, ip, r1
	strh r1, [r2, #0xba]
	ldrh r1, [r2, #0xba]
	cmp r1, r3
	strhih r3, [r2, #0xba]
	ldrh r0, [r0, #0xba]
	bx lr
	.align 2, 0
_0201714C: .word 0x0000270F
	arm_func_end sub_02017120

	arm_func_start sub_02017150
sub_02017150: ; 0x02017150
	add r0, r0, #0x8700
	strh r1, [r0, #0xbc]
	ldrh r2, [r0, #0xbc]
	ldr r1, _0201716C ; =0x0000270F
	cmp r2, r1
	strhih r1, [r0, #0xbc]
	bx lr
	.align 2, 0
_0201716C: .word 0x0000270F
	arm_func_end sub_02017150

	arm_func_start sub_02017170
sub_02017170: ; 0x02017170
	add r2, r0, #0x8700
	ldrh ip, [r2, #0xbc]
	ldr r3, _0201719C ; =0x0000270F
	add r0, r0, #0x8700
	add r1, ip, r1
	strh r1, [r2, #0xbc]
	ldrh r1, [r2, #0xbc]
	cmp r1, r3
	strhih r3, [r2, #0xbc]
	ldrh r0, [r0, #0xbc]
	bx lr
	.align 2, 0
_0201719C: .word 0x0000270F
	arm_func_end sub_02017170

	arm_func_start sub_020171A0
sub_020171A0: ; 0x020171A0
	stmdb sp!, {r3, lr}
	ldr r0, _020171B4 ; =MAIN_BSS_020B2638
	bl sub_02011678
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	.align 2, 0
_020171B4: .word MAIN_BSS_020B2638
	arm_func_end sub_020171A0

	arm_func_start sub_020171B8
sub_020171B8: ; 0x020171B8
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x1e4
	add r6, r0, #0x8800
	mov r5, #0
	arm_func_end sub_020171B8
_020171CC:
	mov r0, r6
	bl sub_020150B8
	add r5, r5, #1
	cmp r5, #0xa
	add r6, r6, #0x18
	blt _020171CC
	mov r2, r4
	mov r1, #0
_020171EC:
	add r0, r2, #0x8000
	ldr r0, [r0, #0x80c]
	tst r0, #1
	beq _02017284
	tst r0, #2
	beq _02017284
	mov r0, #0x18
	mul r2, r1, r0
	add r0, r4, #4
	add r1, r0, #0x8800
	ldrh r3, [r1, r2]
	add r0, r4, #0x1e4
	add ip, r0, #0x8800
	strh r3, [ip, r2]
	add r1, r1, r2
	add r0, ip, r2
	ldrh ip, [r1, #2]
	add r3, r4, #0x1ec
	mov r4, #0
	strh ip, [r0, #2]
	ldrh ip, [r1, #4]
	add r3, r3, #0x8800
	strh ip, [r0, #4]
	ldr ip, [r1, #8]
	str ip, [r0, #8]
	ldr lr, [r1, #0xc]
	ldr ip, [r1, #0x10]
	str lr, [r0, #0xc]
	str ip, [r0, #0x10]
	ldrh ip, [r1, #0x14]
	strh ip, [r0, #0x14]
	ldrh ip, [r1, #0x16]
	strh ip, [r0, #0x16]
	str r4, [r3, r2]
	ldr r0, [r1, #8]
	orr r0, r0, #0
	str r0, [r3, r2]
	ldmia sp!, {r4, r5, r6, pc}
_02017284:
	add r1, r1, #1
	cmp r1, #0xa
	add r2, r2, #0x18
	blt _020171EC
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02017298
sub_02017298: ; 0x02017298
	ldr r1, _020172B4 ; =DAT_0208b5c0
	ldr r0, _020172B8 ; =0x1F2E3D4C
	ldr r1, [r1]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_020172B4: .word DAT_0208b5c0
_020172B8: .word 0x1F2E3D4C
	arm_func_end sub_02017298

	arm_func_start sub_020172BC
sub_020172BC: ; 0x020172BC
	ldr r1, _020172CC ; =0x1F2E3D4C
	ldr r0, _020172D0 ; =DAT_0208b5c0
	str r1, [r0]
	bx lr
	.align 2, 0
_020172CC: .word 0x1F2E3D4C
_020172D0: .word DAT_0208b5c0
	arm_func_end sub_020172BC

	arm_func_start sub_020172D4
sub_020172D4: ; 0x020172D4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldrb r1, [sl, #1]
	add r3, sl, #0x8000
	add r0, sl, #0x3dc
	strb r1, [r3, #0xbc4]
	ldrb r2, [sl, #2]
	add r1, sl, #0xc7
	add r0, r0, #0x8400
	strb r2, [r3, #0xbc5]
	ldrb r4, [r3, #0x7db]
	add r1, r1, #0x8b00
	mov r2, #7
	strb r4, [r3, #0xbc6]
	bl MI_CpuCopy8
	add r0, sl, #4
	mov r1, #0
	add r3, r0, #0x8800
	mov r4, sl
	mov r0, r1
	arm_func_end sub_020172D4
_02017324:
	mov r2, r0
	mov r5, r3
	mov r6, r4
_02017330:
	ldrh sb, [r5]
	add r8, r6, #0x8b00
	add r7, r6, #0x8000
	strh sb, [r8, #0xd0]
	ldrh sb, [r5, #2]
	add r2, r2, #1
	cmp r2, #0xa
	strh sb, [r8, #0xd2]
	ldrh sb, [r5, #4]
	add r6, r6, #0x18
	strh sb, [r8, #0xd4]
	ldr sb, [r5, #8]
	str sb, [r7, #0xbd8]
	ldr fp, [r5, #0xc]
	ldr sb, [r5, #0x10]
	str fp, [r7, #0xbdc]
	str sb, [r7, #0xbe0]
	ldrh r7, [r5, #0x14]
	strh r7, [r8, #0xe4]
	ldrh r7, [r5, #0x16]
	add r5, r5, #0x18
	strh r7, [r8, #0xe6]
	blt _02017330
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #0xf0
	add r4, r4, #0xf0
	blt _02017324
	add r0, sl, #0x2d4
	add r1, r0, #0x8800
	mov r2, sl
	mov r0, #0
_020173B0:
	ldr r3, [r1]
	add r4, r2, #0x8000
	str r3, [r4, #0xea0]
	ldr r3, [r1, #4]
	add r5, r2, #0x2b4
	str r3, [r4, #0xea4]
	ldrh r6, [r1, #8]
	add r3, r2, #0x8e00
	add r7, r1, #0x14
	strh r6, [r3, #0xa8]
	ldrh r8, [r1, #0xa]
	add r6, r5, #0x8c00
	mov r5, #0x10
	strh r8, [r3, #0xaa]
	ldr r8, [r1, #0xc]
	ldr r3, [r1, #0x10]
	str r8, [r4, #0xeac]
	str r3, [r4, #0xeb0]
_020173F8:
	ldrb r4, [r7]
	ldrb r3, [r7, #1]
	add r7, r7, #2
	subs r5, r5, #1
	strb r4, [r6]
	strb r3, [r6, #1]
	add r6, r6, #2
	bne _020173F8
	ldrh r4, [r1, #0x34]
	add r3, r2, #0x8e00
	add r0, r0, #1
	strh r4, [r3, #0xd4]
	cmp r0, #2
	add r1, r1, #0x38
	add r2, r2, #0x38
	blt _020173B0
	ldr r1, [sl, #4]
	add r0, sl, #0x8000
	str r1, [r0, #0xf10]
	ldrb r1, [sl, #8]
	mov r2, #0
	strb r1, [r0, #0xf14]
_02017450:
	add r0, sl, r2
	ldrb r1, [r0, #9]
	add r0, r0, #0x8000
	add r2, r2, #1
	strb r1, [r0, #0xf15]
	cmp r2, #0x11
	blt _02017450
	mov r0, sl
	mov r1, #1
	bl sub_020160B8
	ldrb r3, [sl, #2]
	add r0, sl, #0x3dc
	add r0, r0, #0x8400
	mov r1, #0
	mov r2, #7
	strb r3, [sl, #1]
	bl MI_CpuFill8
	add r0, sl, #4
	mov r4, #0
	mov r6, sl
	add r7, r0, #0x8800
	mov fp, r4
_020174A8:
	mov r5, fp
	mov r8, r6
	mov sb, r7
_020174B4:
	add r0, r8, #0x8000
	ldr r0, [r0, #0x80c]
	tst r0, #1
	beq _020174CC
	tst r0, #2
	bne _020174D4
_020174CC:
	mov r0, sb
	bl sub_020150B8
_020174D4:
	add r5, r5, #1
	cmp r5, #0xa
	add r8, r8, #0x18
	add sb, sb, #0x18
	blt _020174B4
	add r4, r4, #1
	cmp r4, #3
	add r6, r6, #0xf0
	add r7, r7, #0xf0
	blt _020174A8
	mov r2, #0
	str r2, [sl, #4]
	mov r1, r2
_02017508:
	add r0, sl, r2
	add r2, r2, #1
	strb r1, [r0, #9]
	cmp r2, #0x11
	blt _02017508
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start sub_02017520
sub_02017520: ; 0x02017520
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	add r3, r4, #0x8000
	ldrb r2, [r3, #0xbc4]
	add r0, r4, #0xc7
	add r1, r4, #0x3dc
	strb r2, [r4, #1]
	ldrb r2, [r3, #0xbc5]
	add r0, r0, #0x8b00
	add r1, r1, #0x8400
	strb r2, [r4, #2]
	ldrb r5, [r3, #0xbc6]
	mov r2, #7
	strb r5, [r3, #0x7db]
	bl MI_CpuCopy8
	add r0, r4, #4
	mov r1, #0
	add ip, r0, #0x8800
	mov r3, r4
	mov r0, r1
	arm_func_end sub_02017520
_02017570:
	mov r2, r0
	mov lr, r3
	mov r5, ip
_0201757C:
	add r7, lr, #0x8b00
	ldrh r8, [r7, #0xd0]
	add r6, lr, #0x8000
	add r2, r2, #1
	strh r8, [r5]
	ldrh r8, [r7, #0xd2]
	cmp r2, #0xa
	add lr, lr, #0x18
	strh r8, [r5, #2]
	ldrh r8, [r7, #0xd4]
	strh r8, [r5, #4]
	ldr r8, [r6, #0xbd8]
	str r8, [r5, #8]
	ldr r8, [r6, #0xbdc]
	ldr r6, [r6, #0xbe0]
	str r8, [r5, #0xc]
	str r6, [r5, #0x10]
	ldrh r6, [r7, #0xe4]
	strh r6, [r5, #0x14]
	ldrh r6, [r7, #0xe6]
	strh r6, [r5, #0x16]
	add r5, r5, #0x18
	blt _0201757C
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #0xf0
	add ip, ip, #0xf0
	blt _02017570
	add r0, r4, #0x2d4
	add r2, r0, #0x8800
	mov r1, r4
	mov r0, #0
_020175FC:
	add r5, r1, #0x8000
	ldr r3, [r5, #0xea0]
	add ip, r1, #0x2b4
	str r3, [r2]
	ldr r6, [r5, #0xea4]
	add r3, r1, #0x8e00
	str r6, [r2, #4]
	ldrh r6, [r3, #0xa8]
	add ip, ip, #0x8c00
	add r7, r2, #0x14
	strh r6, [r2, #8]
	ldrh r3, [r3, #0xaa]
	mov r6, #0x10
	strh r3, [r2, #0xa]
	ldr lr, [r5, #0xeac]
	ldr r3, [r5, #0xeb0]
	str lr, [r2, #0xc]
	str r3, [r2, #0x10]
_02017644:
	ldrb r5, [ip]
	ldrb r3, [ip, #1]
	add ip, ip, #2
	subs r6, r6, #1
	strb r5, [r7]
	strb r3, [r7, #1]
	add r7, r7, #2
	bne _02017644
	add r3, r1, #0x8e00
	ldrh r3, [r3, #0xd4]
	add r0, r0, #1
	cmp r0, #2
	strh r3, [r2, #0x34]
	add r1, r1, #0x38
	add r2, r2, #0x38
	blt _020175FC
	add r0, r4, #0x8000
	ldr r1, [r0, #0xf10]
	mov r2, #0
	str r1, [r4, #4]
	ldrb r0, [r0, #0xf14]
	strb r0, [r4, #8]
_0201769C:
	add r1, r4, r2
	add r0, r1, #0x8000
	ldrb r0, [r0, #0xf15]
	add r2, r2, #1
	cmp r2, #0x11
	strb r0, [r1, #9]
	blt _0201769C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_020176BC
sub_020176BC: ; 0x020176BC
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	cmp r1, #0
	bge _020176F4
	ldrb r0, [r4, #3]
	mov r0, r0, asr #4
	and r0, r0, #0xf
	tst r0, #0xff
	ldrb r0, [r4]
	moveq r1, #1
	movne r1, #3
	and r0, r0, #1
	add r1, r0, r1
	arm_func_end sub_020176BC
_020176F4:
	mov r2, #0
	mov r3, #1
	stmia sp, {r2, r3}
	add r0, r4, #0x328
	mov r1, r1, lsl #0x10
	add r0, r0, #0x8c00
	mov r1, r1, lsr #0x10
	sub r3, r3, #0xe0000003
	str r2, [sp, #8]
	bl sub_02041344
	add r0, r4, #0x328
	add r0, r0, #0x8c00
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}

	arm_func_start sub_0201772C
sub_0201772C: ; 0x0201772C
	stmdb sp!, {r3, lr}
	add r0, r0, #0x328
	add r0, r0, #0x8c00
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201772C

	arm_func_start sub_02017748
sub_02017748: ; 0x02017748
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, _02017844 ; =0x0005977E
	mov r6, r1
	mov r5, r2
	mov r4, r3
	mov r8, r7
	mov r1, #0
	sub r2, r0, #2
	arm_func_end sub_02017748
_02017770:
	add r3, r8, #0x59000
	ldr r3, [r3, #0x794]
	cmp r3, #0
	beq _020177AC
	ldrh r3, [r8, r2]
	cmp r6, r3
	ldreqh r3, [r8, r0]
	cmpeq r5, r3
	bne _020177AC
	add r0, r7, #0x760
	add r2, r0, #0x59000
	mov r0, #0x38
	add sp, sp, #4
	mla r0, r1, r0, r2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020177AC:
	add r1, r1, #1
	cmp r1, #2
	add r8, r8, #0x38
	blt _02017770
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _020177DC
	mov r0, r7
	bl sub_02017E5C
	add r0, r7, #0x59000
	mov r1, #1
	str r1, [r0, #0xa00]
_020177DC:
	mov r2, r7
	mov r1, #0
_020177E4:
	add r0, r2, #0x59000
	ldr r0, [r0, #0x794]
	cmp r0, #0
	bne _02017828
	mov r0, #0x38
	mul r8, r1, r0
	add r0, r7, #0x760
	add r7, r0, #0x59000
	mov r2, r6
	mov r3, r5
	add r0, r7, r8
	mov r1, #1
	str r4, [sp]
	bl sub_02041230
	add sp, sp, #4
	add r0, r7, r8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02017828:
	add r1, r1, #1
	cmp r1, #2
	add r2, r2, #0x38
	blt _020177E4
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02017844: .word 0x0005977E

	arm_func_start sub_02017848
sub_02017848: ; 0x02017848
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, _02017944 ; =0x000597EE
	mov r6, r1
	mov r5, r2
	mov r4, r3
	mov r8, r7
	mov r1, #0
	sub r2, r0, #2
	arm_func_end sub_02017848
_02017870:
	add r3, r8, #0x59000
	ldr r3, [r3, #0x804]
	cmp r3, #0
	beq _020178AC
	ldrh r3, [r8, r2]
	cmp r6, r3
	ldreqh r3, [r8, r0]
	cmpeq r5, r3
	bne _020178AC
	add r0, r7, #0x7d0
	add r2, r0, #0x59000
	mov r0, #0x38
	add sp, sp, #4
	mla r0, r1, r0, r2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020178AC:
	add r1, r1, #1
	cmp r1, #0xa
	add r8, r8, #0x38
	blt _02017870
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _020178DC
	mov r0, r7
	bl sub_02017F78
	add r0, r7, #0x59000
	mov r1, #1
	str r1, [r0, #0xa00]
_020178DC:
	mov r2, r7
	mov r1, #0
_020178E4:
	add r0, r2, #0x59000
	ldr r0, [r0, #0x804]
	cmp r0, #0
	bne _02017928
	mov r0, #0x38
	mul r8, r1, r0
	add r0, r7, #0x7d0
	add r7, r0, #0x59000
	mov r2, r6
	mov r3, r5
	add r0, r7, r8
	mov r1, #0
	str r4, [sp]
	bl sub_02041230
	add sp, sp, #4
	add r0, r7, r8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02017928:
	add r1, r1, #1
	cmp r1, #0xa
	add r2, r2, #0x38
	blt _020178E4
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02017944: .word 0x000597EE

	arm_func_start sub_02017948
sub_02017948: ; 0x02017948
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	add r0, sl, #0x8000
	ldrb r0, [r0, #0xb64]
	mov r4, #0
	str r1, [sp, #4]
	mov r5, r4
	cmp r0, #1
	beq _0201797C
	cmp r0, #5
	beq _02017988
	b _02017994
	arm_func_end sub_02017948
_0201797C:
	mov r0, #1
	str r0, [sp, #8]
	b _02017998
_02017988:
	mov r0, #2
	str r0, [sp, #8]
	b _02017998
_02017994:
	str r4, [sp, #8]
_02017998:
	ldr r0, [sp, #4]
	cmp r0, #0
	add r0, sl, #0x59000
	movne r1, #1
	strne r1, [r0, #0xa00]
	bne _020179CC
	ldr r1, [r0, #0xa00]
	cmp r1, #0
	beq _020179CC
	mov r1, #0
	str r1, [r0, #0xa00]
	mov r0, #1
	str r0, [sp, #4]
_020179CC:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02017ACC
	ldr r0, _02017E34 ; =MAIN_BSS_0210CA6C
	ldr sb, [r0]
	cmp sb, #0
	beq _02017ACC
	add r0, sl, #0x2d4
	mov r6, #0
	mov r7, r6
	add r8, r0, #0x8800
	mov fp, #1
_020179FC:
	cmp r7, #0
	blt _02017A10
	cmp r7, #2
	movlt r1, r8
	blt _02017A14
_02017A10:
	mov r1, #0
_02017A14:
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	beq _02017A84
	ldrh r1, [r1, #8]
	mov r0, sb
	bl sub_02041D44
	orr r4, r4, fp, lsl r7
	ldr r1, _02017E38 ; =0x0005977C
	mov ip, #0
	mov lr, sl
_02017A40:
	add r2, lr, #0x59000
	ldr r2, [r2, #0x794]
	cmp r2, #0
	beq _02017A74
	ldrh r3, [r0]
	ldrh r2, [lr, r1]
	cmp r3, r2
	bne _02017A74
	mov r0, #1
	orr r6, r6, r0, lsl ip
	mvn r0, fp, lsl r7
	and r4, r4, r0
	b _02017A84
_02017A74:
	add lr, lr, #0x38
	add ip, ip, #1
	cmp ip, #2
	blt _02017A40
_02017A84:
	add r7, r7, #1
	cmp r7, #2
	add r8, r8, #0x38
	blt _020179FC
	mov r3, sl
	mov r2, #0
	mov r1, #1
_02017AA0:
	add r0, r3, #0x59000
	ldr r0, [r0, #0x794]
	cmp r0, #0
	beq _02017ABC
	tst r6, r1, lsl r2
	streq r1, [sp, #4]
	beq _02017ACC
_02017ABC:
	add r2, r2, #1
	cmp r2, #2
	add r3, r3, #0x38
	blt _02017AA0
_02017ACC:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02017BC8
	bl sub_0201001C
	movs r6, r0
	beq _02017BC8
	mov r7, #0
	mov r8, r7
_02017AEC:
	mov r0, sl
	mov r1, r8
	bl sub_020155FC
	cmp r0, #0
	beq _02017B84
	ldr r1, [r0, #8]
	tst r1, #1
	beq _02017B84
	add r2, r6, #0x1000
	ldrh r1, [r0]
	ldr r0, [r2, #0x434]
	bl sub_020107A8
	mov r1, #1
	ldr r3, _02017E3C ; =0x000597EE
	orr r5, r5, r1, lsl r8
	mov r1, #0
	mov r2, sl
	sub sb, r3, #2
_02017B34:
	add fp, r2, #0x59000
	ldr fp, [fp, #0x804]
	cmp fp, #0
	beq _02017B74
	ldrh ip, [r0]
	ldrh fp, [r2, sb]
	cmp ip, fp
	ldreqb ip, [r0, #2]
	ldreqh fp, [r2, r3]
	cmpeq ip, fp
	bne _02017B74
	mov r0, #1
	mvn r2, r0, lsl r8
	orr r7, r7, r0, lsl r1
	and r5, r5, r2
	b _02017B84
_02017B74:
	add r2, r2, #0x38
	add r1, r1, #1
	cmp r1, #0xa
	blt _02017B34
_02017B84:
	add r8, r8, #1
	cmp r8, #0xa
	blt _02017AEC
	mov r3, sl
	mov r2, #0
	mov r1, #1
_02017B9C:
	add r0, r3, #0x59000
	ldr r0, [r0, #0x804]
	cmp r0, #0
	beq _02017BB8
	tst r7, r1, lsl r2
	streq r1, [sp, #4]
	beq _02017BC8
_02017BB8:
	add r2, r2, #1
	cmp r2, #0xa
	add r3, r3, #0x38
	blt _02017B9C
_02017BC8:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02017D10
	mov r0, sl
	bl sub_02017E44
	ldr r0, _02017E34 ; =MAIN_BSS_0210CA6C
	ldr sb, [r0]
	cmp sb, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _02017C70
	mov r5, #0
	add r0, sl, #0x2d4
	ldr r7, _02017E40 ; =0x00001E16
	add r6, r0, #0x8800
	mov r4, r5
	mov r8, r5
_02017C14:
	cmp r5, #0
	blt _02017C28
	cmp r5, #2
	movlt r1, r6
	blt _02017C2C
_02017C28:
	mov r1, r4
_02017C2C:
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	beq _02017C60
	ldrh r1, [r1, #8]
	mov r0, sb
	bl sub_02041D44
	str r8, [sp]
	ldrh r1, [r0]
	mov r0, sl
	mov r2, r8
	mov r3, r7
	bl sub_02017748
_02017C60:
	add r5, r5, #1
	cmp r5, #2
	add r6, r6, #0x38
	blt _02017C14
_02017C70:
	bl sub_0201001C
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r6, #0
	add r4, r0, #0x1000
	mov fp, #0xe
	mov r5, r6
_02017C90:
	mov r0, sl
	mov r1, r6
	bl sub_020155FC
	movs r7, r0
	beq _02017CFC
	ldr r0, [r7, #8]
	tst r0, #1
	beq _02017CFC
	ldrh r1, [r7]
	mov r0, sb
	bl sub_02041D58
	ldrh r0, [r0, #0x30]
	mov r8, fp
	ldrh r1, [r7]
	cmp r0, #2
	cmpne r0, #5
	orreq r0, r8, #0xc00
	moveq r0, r0, lsl #0x10
	moveq r8, r0, lsr #0x10
	ldr r0, [r4, #0x434]
	bl sub_020107A8
	str r5, [sp]
	ldrh r1, [r0]
	ldrb r2, [r0, #2]
	mov r0, sl
	mov r3, r8
	bl sub_02017848
_02017CFC:
	add r6, r6, #1
	cmp r6, #0xa
	blt _02017C90
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02017D10:
	ldr r0, _02017E34 ; =MAIN_BSS_0210CA6C
	ldr sb, [r0]
	cmp sb, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _02017D98
	add r0, sl, #0x2d4
	mov r7, #0
	add r8, r0, #0x8800
	mov r6, r7
	mov fp, #1
_02017D44:
	tst r4, fp, lsl r7
	beq _02017D88
	cmp r7, #0
	blt _02017D60
	cmp r7, #2
	movlt r0, r8
	blt _02017D64
_02017D60:
	mov r0, #0
_02017D64:
	ldrh r1, [r0, #8]
	mov r0, sb
	bl sub_02041D44
	str r6, [sp]
	ldrh r1, [r0]
	ldr r3, _02017E40 ; =0x00001E16
	mov r0, sl
	mov r2, r6
	bl sub_02017748
_02017D88:
	add r7, r7, #1
	cmp r7, #2
	add r8, r8, #0x38
	blt _02017D44
_02017D98:
	bl sub_0201001C
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r6, #0
	add r4, r0, #0x1000
	mov fp, #1
_02017DB4:
	tst r5, fp, lsl r6
	beq _02017E20
	mov r0, sl
	mov r1, r6
	bl sub_020155FC
	mov r7, r0
	ldrh r1, [r7]
	mov r0, sb
	bl sub_02041D58
	ldrh r0, [r0, #0x30]
	mov r8, #0xe
	ldrh r1, [r7]
	cmp r0, #2
	cmpne r0, #5
	orreq r0, r8, #0xc00
	moveq r0, r0, lsl #0x10
	moveq r8, r0, lsr #0x10
	ldr r0, [r4, #0x434]
	bl sub_020107A8
	mov r2, r0
	mov r0, #0
	str r0, [sp]
	ldrh r1, [r2]
	ldrb r2, [r2, #2]
	mov r3, r8
	mov r0, sl
	bl sub_02017848
_02017E20:
	add r6, r6, #1
	cmp r6, #0xa
	blt _02017DB4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02017E34: .word MAIN_BSS_0210CA6C
_02017E38: .word 0x0005977C
_02017E3C: .word 0x000597EE
_02017E40: .word 0x00001E16

	arm_func_start sub_02017E44
sub_02017E44: ; 0x02017E44
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201808C
	mov r0, r4
	bl sub_020180C0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02017E44

	arm_func_start sub_02017E5C
sub_02017E5C: ; 0x02017E5C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _02017F70 ; =MAIN_BSS_0210CA6C
	mov r4, #0
	ldr fp, [r1]
	mov r8, r0
	mov r5, r4
	cmp fp, #0
	beq _02017F68
	add r0, r8, #0x2d4
	mov r6, r4
	add r7, r0, #0x8800
	mov sb, #1
	arm_func_end sub_02017E5C
_02017E8C:
	cmp r6, #0
	blt _02017EA0
	cmp r6, #2
	movlt r1, r7
	blt _02017EA4
_02017EA0:
	mov r1, #0
_02017EA4:
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	beq _02017F0C
	ldrh r1, [r1, #8]
	mov r0, fp
	bl sub_02041D44
	mov r1, #1
	orr r5, r5, r1, lsl r6
	mvn sl, r1, lsl r6
	ldr r1, _02017F74 ; =0x0005977C
	mov ip, #0
	mov lr, r8
_02017ED8:
	add r2, lr, #0x59000
	ldr r2, [r2, #0x794]
	cmp r2, #0
	beq _02017EFC
	ldrh r3, [r0]
	ldrh r2, [lr, r1]
	cmp r3, r2
	orreq r4, r4, sb, lsl ip
	andeq r5, r5, sl
_02017EFC:
	add lr, lr, #0x38
	add ip, ip, #1
	cmp ip, #2
	blt _02017ED8
_02017F0C:
	add r6, r6, #1
	cmp r6, #2
	add r7, r7, #0x38
	blt _02017E8C
	add r0, r8, #0x760
	add sb, r0, #0x59000
	mov r7, #0
	mov r6, #1
_02017F2C:
	add r0, r8, #0x59000
	ldr r0, [r0, #0x794]
	cmp r0, #0
	beq _02017F54
	tst r4, r6, lsl r7
	bne _02017F54
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_02017F54:
	add r7, r7, #1
	cmp r7, #2
	add r8, r8, #0x38
	add sb, sb, #0x38
	blt _02017F2C
_02017F68:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02017F70: .word MAIN_BSS_0210CA6C
_02017F74: .word 0x0005977C

	arm_func_start sub_02017F78
sub_02017F78: ; 0x02017F78
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	bl sub_0201001C
	mov r6, #0
	movs fp, r0
	mov r7, r6
	beq _02018080
	mov r8, r6
	mov r5, #1
	arm_func_end sub_02017F78
_02017F9C:
	mov r0, r4
	mov r1, r8
	bl sub_020155FC
	cmp r0, #0
	beq _02018028
	ldr r1, [r0, #8]
	tst r1, #1
	beq _02018028
	add r2, fp, #0x1000
	ldrh r1, [r0]
	ldr r0, [r2, #0x434]
	bl sub_020107A8
	mov r1, #1
	ldr ip, _02018088 ; =0x000597EE
	orr r7, r7, r1, lsl r8
	mvn r3, r1, lsl r8
	mov r1, #0
	mov r2, r4
	sub lr, ip, #2
_02017FE8:
	add sb, r2, #0x59000
	ldr sb, [sb, #0x804]
	cmp sb, #0
	beq _02018018
	ldrh sl, [r0]
	ldrh sb, [r2, lr]
	cmp sl, sb
	ldreqb sl, [r0, #2]
	ldreqh sb, [r2, ip]
	cmpeq sl, sb
	orreq r6, r6, r5, lsl r1
	andeq r7, r7, r3
_02018018:
	add r2, r2, #0x38
	add r1, r1, #1
	cmp r1, #0xa
	blt _02017FE8
_02018028:
	add r8, r8, #1
	cmp r8, #0xa
	blt _02017F9C
	add r0, r4, #0x7d0
	add sb, r0, #0x59000
	mov r8, #0
	mov r5, #1
_02018044:
	add r0, r4, #0x59000
	ldr r0, [r0, #0x804]
	cmp r0, #0
	beq _0201806C
	tst r6, r5, lsl r8
	bne _0201806C
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_0201806C:
	add r8, r8, #1
	cmp r8, #0xa
	add r4, r4, #0x38
	add sb, sb, #0x38
	blt _02018044
_02018080:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02018088: .word 0x000597EE

	arm_func_start sub_0201808C
sub_0201808C: ; 0x0201808C
	stmdb sp!, {r3, r4, r5, lr}
	add r0, r0, #0x760
	add r5, r0, #0x59000
	mov r4, #0
	arm_func_end sub_0201808C
_0201809C:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r4, r4, #1
	cmp r4, #2
	add r5, r5, #0x38
	blt _0201809C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020180C0
sub_020180C0: ; 0x020180C0
	stmdb sp!, {r3, r4, r5, lr}
	add r0, r0, #0x7d0
	add r5, r0, #0x59000
	mov r4, #0
	arm_func_end sub_020180C0
_020180D0:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r4, r4, #1
	cmp r4, #0xa
	add r5, r5, #0x38
	blt _020180D0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020180F4
sub_020180F4: ; 0x020180F4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x760
	add r5, r0, #0x59000
	mov r4, #0
	arm_func_end sub_020180F4
_02018108:
	mov r0, r5
	bl sub_02040E80
	add r4, r4, #1
	cmp r4, #2
	add r5, r5, #0x38
	blt _02018108
	add r0, r6, #0x7d0
	add r5, r0, #0x59000
	mov r4, #0
_0201812C:
	mov r0, r5
	bl sub_02040E80
	add r4, r4, #1
	cmp r4, #0xa
	add r5, r5, #0x38
	blt _0201812C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02018148
sub_02018148: ; 0x02018148
	stmdb sp!, {r3, r4, r5, lr}
	add lr, r0, #0x8000
	str r1, [lr, #0x7d4]
	strb r2, [lr, #0x7d8]
	and r4, r3, #0xff
	strb r3, [lr, #0x7d9]
	cmp r4, #0x3c
	blo _0201819C
	add r3, r0, #0x3d8
	add ip, r0, #0xd9
	add r5, r3, #0x8400
	add r4, ip, #0x8700
	arm_func_end sub_02018148
_02018178:
	ldrb r3, [r5]
	add r3, r3, #1
	strb r3, [r5]
	ldrb r3, [r4]
	sub r3, r3, #0x3c
	strb r3, [r4]
	ldrb r3, [lr, #0x7d9]
	cmp r3, #0x3c
	bhs _02018178
_0201819C:
	add lr, r0, #0x8000
	ldrb r3, [lr, #0x7d8]
	cmp r3, #0x3c
	blo _020181E0
	add r3, r0, #0x3d4
	add ip, r0, #0x3d8
	add r4, r3, #0x8400
	add ip, ip, #0x8400
_020181BC:
	ldr r3, [r4]
	add r3, r3, #1
	str r3, [r4]
	ldrb r3, [ip]
	sub r3, r3, #0x3c
	strb r3, [ip]
	ldrb r3, [lr, #0x7d8]
	cmp r3, #0x3c
	bhs _020181BC
_020181E0:
	add r3, r0, #0x8000
	ldr ip, [r3, #0x7d4]
	add r0, r0, #0x8000
	cmp ip, #0x64
	movhs ip, #1
	movlo ip, #0
	strb ip, [r3, #0x7da]
	str r1, [r0, #0x7cc]
	strb r2, [r0, #0x7d0]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02018208
sub_02018208: ; 0x02018208
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	bl sub_02018250
	mov r0, r4
	bl sub_02018410
	mov r0, r4
	bl sub_020185D0
	mov r0, r4
	bl sub_02018790
	mov r0, r4
	bl sub_02018950
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02018208

	arm_func_start sub_02018250
sub_02018250: ; 0x02018250
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7]
	cmp r1, #0
	beq _02018268
	bl sub_02018374
	arm_func_end sub_02018250
_02018268:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02018288
	ldr r1, _02018370 ; =s_data_message_etc_pokemon_name_0208b778
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
_02018288:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02018350
_020182E0:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _020182E0
_02018350:
	cmp r6, #0
	beq _02018368
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02018368:
	ldr r0, [r7]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02018370: .word s_data_message_etc_pokemon_name_0208b778

	arm_func_start sub_02018374
sub_02018374: ; 0x02018374
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _020183D8
	mov r6, r4
	arm_func_end sub_02018374
_0201839C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020183C4
	bl _ZdaPv
	ldr r0, [r5]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_020183C4:
	ldr r1, [r5]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201839C
_020183D8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _020183F4
	bl _ZdaPv
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, #8]
_020183F4:
	ldr r0, [r5]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02018410
sub_02018410: ; 0x02018410
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _02018428
	bl sub_02018534
	arm_func_end sub_02018410
_02018428:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02018448
	ldr r1, _02018530 ; =s_data_message_etc_item_name_0208b798
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
_02018448:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #4]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #4]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #4]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #4]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #4]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02018510
_020184A0:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #4]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #4]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #4]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #4]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _020184A0
_02018510:
	cmp r6, #0
	beq _02018528
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02018528:
	ldr r0, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02018530: .word s_data_message_etc_item_name_0208b798

	arm_func_start sub_02018534
sub_02018534: ; 0x02018534
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #4]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _02018598
	mov r6, r4
	arm_func_end sub_02018534
_0201855C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02018584
	bl _ZdaPv
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_02018584:
	ldr r1, [r5, #4]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201855C
_02018598:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _020185B4
	bl _ZdaPv
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #8]
_020185B4:
	ldr r0, [r5, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #4]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020185D0
sub_020185D0: ; 0x020185D0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #8]
	cmp r1, #0
	beq _020185E8
	bl sub_020186F4
	arm_func_end sub_020185D0
_020185E8:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02018608
	ldr r1, _020186F0 ; =s_data_message_etc_yakumono_name_0208b7b4
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
_02018608:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #8]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #8]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #8]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #8]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #8]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _020186D0
_02018660:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #8]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #8]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #8]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #8]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _02018660
_020186D0:
	cmp r6, #0
	beq _020186E8
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020186E8:
	ldr r0, [r7, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020186F0: .word s_data_message_etc_yakumono_name_0208b7b4

	arm_func_start sub_020186F4
sub_020186F4: ; 0x020186F4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #8]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _02018758
	mov r6, r4
	arm_func_end sub_020186F4
_0201871C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02018744
	bl _ZdaPv
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_02018744:
	ldr r1, [r5, #8]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201871C
_02018758:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02018774
	bl _ZdaPv
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #8]
_02018774:
	ldr r0, [r5, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #8]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02018790
sub_02018790: ; 0x02018790
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #0xc]
	cmp r1, #0
	beq _020187A8
	bl sub_020188B4
	arm_func_end sub_02018790
_020187A8:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _020187C8
	ldr r1, _020188B0 ; =s_data_message_etc_npc_name_0208b7d4
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
_020187C8:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #0xc]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #0xc]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #0xc]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #0xc]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0xc]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02018890
_02018820:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #0xc]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #0xc]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0xc]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #0xc]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _02018820
_02018890:
	cmp r6, #0
	beq _020188A8
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020188A8:
	ldr r0, [r7, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020188B0: .word s_data_message_etc_npc_name_0208b7d4

	arm_func_start sub_020188B4
sub_020188B4: ; 0x020188B4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0xc]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _02018918
	mov r6, r4
	arm_func_end sub_020188B4
_020188DC:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02018904
	bl _ZdaPv
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_02018904:
	ldr r1, [r5, #0xc]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _020188DC
_02018918:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02018934
	bl _ZdaPv
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r1, [r0, #8]
_02018934:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0xc]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02018950
sub_02018950: ; 0x02018950
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #0x10]
	cmp r1, #0
	beq _02018968
	bl sub_02018A74
	arm_func_end sub_02018950
_02018968:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02018988
	ldr r1, _02018A70 ; =s_data_message_etc_fieldwaza_name_0208b7f0
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
_02018988:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #0x10]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #0x10]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #0x10]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0x10]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02018A50
_020189E0:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #0x10]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #0x10]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0x10]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #0x10]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _020189E0
_02018A50:
	cmp r6, #0
	beq _02018A68
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02018A68:
	ldr r0, [r7, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02018A70: .word s_data_message_etc_fieldwaza_name_0208b7f0

	arm_func_start sub_02018A74
sub_02018A74: ; 0x02018A74
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _02018AD8
	mov r6, r4
	arm_func_end sub_02018A74
_02018A9C:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02018AC4
	bl _ZdaPv
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_02018AC4:
	ldr r1, [r5, #0x10]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _02018A9C
_02018AD8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02018AF4
	bl _ZdaPv
	ldr r0, [r5, #0x10]
	mov r1, #0
	str r1, [r0, #8]
_02018AF4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x10]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02018B10
sub_02018B10: ; 0x02018B10
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #8]
	addne r0, r0, r1, lsl #3
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_02018B10

	arm_func_start sub_02018B2C
sub_02018B2C: ; 0x02018B2C
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #8]
	addne r0, r0, r1, lsl #3
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_02018B2C

	arm_func_start sub_02018B48
sub_02018B48: ; 0x02018B48
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #8]
	addne r0, r0, r1, lsl #3
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_02018B48

	arm_func_start sub_02018B64
sub_02018B64: ; 0x02018B64
	ldr r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #8]
	addne r0, r0, r1, lsl #3
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_02018B64

	arm_func_start sub_02018B80
sub_02018B80: ; 0x02018B80
	ldr r0, [r0, #0x10]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #8]
	addne r0, r0, r1, lsl #3
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_02018B80

	arm_func_start sub_02018B9C
sub_02018B9C: ; 0x02018B9C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02018BC4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02018B9C

	arm_func_start sub_02018BB0
sub_02018BB0: ; 0x02018BB0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02018D04
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02018BB0

	arm_func_start sub_02018BC4
sub_02018BC4: ; 0x02018BC4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02018BF4
	mov r2, #0
	ldr r1, _02018CF8 ; =s_data_shadow_NCBR_0208b814
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
	arm_func_end sub_02018BC4
_02018BF4:
	str r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r4, #0xc]
	mov r1, r1, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r4]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02018C48
	mov r2, #0
	ldr r1, _02018CFC ; =s_data_shadow_NCLR_0208b828
	mov r3, r2
	bl sub_02007AC0
_02018C48:
	str r0, [r4, #4]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r4, #0x10]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #4]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r4, #4]
	bl sub_02007BC4
	mov r0, #0x40
	bl _Znwm
	cmp r0, #0
	beq _02018C94
	bl sub_02003B64
_02018C94:
	mov r1, #0
	str r0, [r4, #8]
	ldr r0, _02018D00 ; =0x000003FF
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	mov r2, r1
	mov r3, r1
	bl sub_02003BE0
	ldr r1, [r4, #8]
	mov r0, #0
	str r0, [r1, #0x28]
	str r0, [r1, #0x2c]
	mov r0, #0x40000
	str r0, [r1, #0x30]
	mov r0, #0x20000
	str r0, [r1, #0x34]
	ldr r1, [r4]
	ldr r0, [r4, #8]
	str r1, [r0, #0x38]
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r1, [r0, #0x3c]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02018CF8: .word s_data_shadow_NCBR_0208b814
_02018CFC: .word s_data_shadow_NCLR_0208b828
_02018D00: .word 0x000003FF

	arm_func_start sub_02018D04
sub_02018D04: ; 0x02018D04
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5]
	cmp r4, #0
	beq _02018D34
	beq _02018D2C
	mov r0, r4
	bl sub_02007548
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02018D04
_02018D2C:
	mov r0, #0
	str r0, [r5]
_02018D34:
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _02018D5C
	beq _02018D54
	mov r0, r4
	bl sub_02007B28
	mov r0, r4
	bl _ZdlPv
_02018D54:
	mov r0, #0
	str r0, [r5, #4]
_02018D5C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02018D80
	beq _02018D78
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02018D78:
	mov r0, #0
	str r0, [r5, #8]
_02018D80:
	ldr r0, [r5, #0xc]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r5, #0x10]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02018D94
sub_02018D94: ; 0x02018D94
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	movs r3, r1
	addeq sp, sp, #8
	ldmeqia sp!, {r3, pc}
	ldr r1, [r3, #0xc]
	stmia sp, {r1, r2}
	ldr r0, [r0, #8]
	ldmia r3, {r1, r2, r3}
	bl sub_02003BE0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end sub_02018D94

	arm_func_start sub_02018DC4
sub_02018DC4: ; 0x02018DC4
	ldr r0, [r0, #8]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end sub_02018DC4

	arm_func_start sub_02018DD0
sub_02018DD0: ; 0x02018DD0
	ldr r0, [r0, #8]
	str r1, [r0, #0x14]
	bx lr
	arm_func_end sub_02018DD0

	arm_func_start sub_02018DDC
sub_02018DDC: ; 0x02018DDC
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #8]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_02018DDC

	arm_func_start sub_02018DF4
sub_02018DF4: ; 0x02018DF4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02018E1C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02018DF4

	arm_func_start sub_02018E08
sub_02018E08: ; 0x02018E08
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02018E1C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02018E08

	arm_func_start sub_02018E1C
sub_02018E1C: ; 0x02018E1C
	ldr ip, _02018E2C ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0xfc
	bx ip
	.align 2, 0
_02018E2C: .word MI_CpuFill8
	arm_func_end sub_02018E1C

	arm_func_start sub_02018E30
sub_02018E30: ; 0x02018E30
	mov r2, #0
	mov r1, r2
	arm_func_end sub_02018E30
_02018E38:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x15
	blt _02018E38
	bx lr

	arm_func_start sub_02018E4C
sub_02018E4C: ; 0x02018E4C
	str r2, [r0, r1, lsl #2]
	bx lr
	arm_func_end sub_02018E4C

	arm_func_start sub_02018E54
sub_02018E54: ; 0x02018E54
	ldr r0, [r0, r1, lsl #2]
	bx lr
	arm_func_end sub_02018E54

	arm_func_start sub_02018E5C
sub_02018E5C: ; 0x02018E5C
	mov r3, #0
	mov r2, r3
	arm_func_end sub_02018E5C
_02018E64:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0xd0]
	cmp r3, #0xb
	blt _02018E64
	bx lr

	arm_func_start sub_02018E7C
sub_02018E7C: ; 0x02018E7C
	add r0, r0, r1, lsl #2
	str r2, [r0, #0xd0]
	bx lr
	arm_func_end sub_02018E7C

	arm_func_start sub_02018E88
sub_02018E88: ; 0x02018E88
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0xd0]
	bx lr
	arm_func_end sub_02018E88

	arm_func_start sub_02018E94
sub_02018E94: ; 0x02018E94
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	cmp r1, #0x45
	addgt sp, sp, #0x28
	ldmgtia sp!, {r3, r4, r5, pc}
	cmp r1, #0
	bne _02018ED4
	mov r3, #0
	mov r2, r3
	arm_func_end sub_02018E94
_02018EB8:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0x54]
	cmp r3, #0x1f
	blt _02018EB8
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
_02018ED4:
	cmp r1, #0x1e
	movlt r2, #0
	movge r2, #1
	str r2, [r0, #0x74]
	cmp r1, #0x17
	movlt r2, #0
	movge r2, #1
	str r2, [r0, #0x78]
	cmp r1, #0x1b
	movlt r2, #0
	movge r2, #1
	str r2, [r0, #0x7c]
	cmp r1, #0x31
	movlt r2, #0
	movge r2, #1
	str r2, [r0, #0x88]
	cmp r1, #0x42
	movlt r2, #0
	strlt r2, [r0, #0x8c]
	blt _02018F34
	moveq r2, #1
	streq r2, [r0, #0x8c]
	movne r2, #2
	strne r2, [r0, #0x8c]
_02018F34:
	cmp r1, #0x3f
	movlt r2, #0
	movge r2, #1
	str r2, [r0, #0x90]
	str r2, [r0, #0x94]
	str r2, [r0, #0x98]
	cmp r1, #0x13
	movne r2, #0
	moveq r2, #1
	str r2, [r0, #0x9c]
	cmp r1, #0x28
	movlt r2, #0
	movge r2, #1
	str r2, [r0, #0xa0]
	cmp r1, #0x28
	movlt r2, #0
	strlt r2, [r0, #0xa4]
	blt _02018FB0
	cmp r1, #0x35
	movlt r2, #1
	strlt r2, [r0, #0xa4]
	blt _02018FB0
	cmp r1, #0x3c
	movlt r2, #2
	strlt r2, [r0, #0xa4]
	blt _02018FB0
	cmp r1, #0x43
	movlt r2, #3
	strlt r2, [r0, #0xa4]
	movge r2, #4
	strge r2, [r0, #0xa4]
_02018FB0:
	cmp r1, #0x37
	movne r2, #0
	moveq r2, #1
	str r2, [r0, #0xac]
	ldr r2, [r0, #0x5c]
	cmp r2, #0
	moveq r2, #2
	streq r2, [r0, #0x5c]
	cmp r1, #0x3e
	movlt r2, #0
	strlt r2, [r0, #0xb4]
	blt _02019004
	cmp r1, #0x40
	movlt r2, #1
	strlt r2, [r0, #0xb4]
	blt _02019004
	cmp r1, #0x43
	movlt r2, #2
	strlt r2, [r0, #0xb4]
	movge r2, #0
	strge r2, [r0, #0xb4]
_02019004:
	cmp r1, #0x17
	ldr r4, _02019264 ; =MAIN_BSS_020B26A0
	bgt _02019020
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	strb r0, [r4, #3]
	b _02019108
_02019020:
	cmp r1, #0x1b
	bgt _0201903C
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #1
	strb r0, [r4, #3]
	b _02019108
_0201903C:
	cmp r1, #0x1d
	bgt _02019058
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #2
	strb r0, [r4, #3]
	b _02019108
_02019058:
	cmp r1, #0x21
	bgt _02019074
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #3
	strb r0, [r4, #3]
	b _02019108
_02019074:
	cmp r1, #0x2b
	bgt _02019090
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #4
	strb r0, [r4, #3]
	b _02019108
_02019090:
	cmp r1, #0x30
	bgt _020190AC
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #5
	strb r0, [r4, #3]
	b _02019108
_020190AC:
	cmp r1, #0x34
	bgt _020190C8
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #6
	strb r0, [r4, #3]
	b _02019108
_020190C8:
	cmp r1, #0x36
	bgt _020190E4
	ldrb r0, [r4, #3]
	and r0, r0, #0xf0
	orr r0, r0, #7
	strb r0, [r4, #3]
	b _02019108
_020190E4:
	ldrb r0, [r4, #3]
	cmp r1, #0x3b
	andgt r0, r0, #0xf0
	orrgt r0, r0, #9
	strgtb r0, [r4, #3]
	bgt _02019108
	and r0, r0, #0xf0
	orr r0, r0, #8
	strb r0, [r4, #3]
_02019108:
	ldrb r2, [r4, #3]
	cmp r1, #0x15
	mov r0, r2, asr #4
	and r3, r0, #0xf
	andle r0, r2, #0xf
	strleb r0, [r4, #3]
	ble _0201913C
	and r0, r2, #0xf
	cmp r1, #0x2b
	orrle r0, r0, #0x10
	strleb r0, [r4, #3]
	orrgt r0, r0, #0x20
	strgtb r0, [r4, #3]
_0201913C:
	ldrb r0, [r4, #3]
	mov r0, r0, asr #4
	and r0, r0, #0xf
	cmp r0, r3
	ldrne r0, _02019268 ; =MAIN_BSS_0210CA48
	ldrne r5, [r0]
	cmpne r5, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _020191AC
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0201918C
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	b _020191A4
_0201918C:
	mov r0, #0
	add r1, sp, #0x10
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_020191A4:
	add r3, sp, #0x18
	b _020191C8
_020191AC:
	mov r0, #0
	add r1, sp, #8
	add r3, sp, #0x18
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_020191C8:
	ldrb r1, [r4, #3]
	ldr lr, [r3]
	ldr ip, [r3, #4]
	add r0, r4, #0x8000
	mov r1, r1, asr #4
	and r2, r1, #0xf
	ldrb r3, [r0, #0xb64]
	ldrb r1, [r4]
	mov r0, r5
	str lr, [sp, #0x20]
	str ip, [sp, #0x24]
	bl ov0_02132F14
	add r0, r4, #0x8000
	ldrb r1, [r0, #0x802]
	mov r0, r5
	bl ov0_02132FA0
	ldr r4, [r5, #8]
	cmp r4, #0
	ldrne r0, [r4, #0xc]
	cmpne r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, pc}
	add r1, sp, #0x20
	add r0, r0, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldr r0, [r4, #0xc]
	ldr r2, [r0, #0xc4]
	cmp r2, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r2, #0x18]
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [r2, #0x1c]
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02019264: .word MAIN_BSS_020B26A0
_02019268: .word MAIN_BSS_0210CA48

	arm_func_start sub_0201926C
sub_0201926C: ; 0x0201926C
	add r0, r0, r1, lsl #2
	str r2, [r0, #0x54]
	bx lr
	arm_func_end sub_0201926C

	arm_func_start sub_02019278
sub_02019278: ; 0x02019278
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x54]
	bx lr
	arm_func_end sub_02019278

	arm_func_start sub_02019284
sub_02019284: ; 0x02019284
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl sub_02011D60
	ldr r1, _02019330 ; =ptr_FUN_0201933c_0208b864
	add r0, r4, #0x18c
	str r1, [r4]
	bl sub_02004114
	add r0, r4, #0x1ec
	bl sub_02004114
	add r0, r4, #0x24c
	bl sub_02004114
	add r0, r4, #0x2ac
	bl sub_02004114
	add r0, r4, #0x30c
	bl sub_02004114
	add r0, r4, #0x36c
	bl sub_02004114
	add r0, r4, #0x3cc
	bl sub_02004114
	ldr r1, _02019334 ; =sub_02004160
	add r0, r4, #0x2c
	str r1, [sp]
	ldr r3, _02019338 ; =sub_02004114
	add r0, r0, #0x400
	mov r1, #3
	mov r2, #0x60
	bl __cxa_vec_ctor
	add r0, r4, #0x14c
	add r0, r0, #0x400
	bl sub_02003B64
	bl sub_0201001C
	str r0, [r4, #0x184]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x48c]
	mov r0, r4
	str r1, [r4, #0x188]
	bl sub_020196D4
	mov r0, r4
	bl sub_02019454
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02019330: .word ptr_FUN_0201933c_0208b864
_02019334: .word sub_02004160
_02019338: .word sub_02004114
	arm_func_end sub_02019284

	arm_func_start sub_0201933C
sub_0201933C: ; 0x0201933C
	stmdb sp!, {r4, lr}
	ldr r1, _020193BC ; =ptr_FUN_0201933c_0208b864
	mov r4, r0
	str r1, [r4]
	bl sub_02019688
	add r0, r4, #0x14c
	add r0, r0, #0x400
	bl sub_02003BB0
	add r0, r4, #0x2c
	ldr r3, _020193C0 ; =sub_02004160
	add r0, r0, #0x400
	mov r1, #3
	mov r2, #0x60
	bl __cxa_vec_cleanup
	add r0, r4, #0x3cc
	bl sub_02004160
	add r0, r4, #0x36c
	bl sub_02004160
	add r0, r4, #0x30c
	bl sub_02004160
	add r0, r4, #0x2ac
	bl sub_02004160
	add r0, r4, #0x24c
	bl sub_02004160
	add r0, r4, #0x1ec
	bl sub_02004160
	add r0, r4, #0x18c
	bl sub_02004160
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_020193BC: .word ptr_FUN_0201933c_0208b864
_020193C0: .word sub_02004160
	arm_func_end sub_0201933C

	arm_func_start sub_020193C4
sub_020193C4: ; 0x020193C4
	stmdb sp!, {r4, lr}
	ldr r1, _0201944C ; =ptr_FUN_0201933c_0208b864
	mov r4, r0
	str r1, [r4]
	bl sub_02019688
	add r0, r4, #0x14c
	add r0, r0, #0x400
	bl sub_02003BB0
	add r0, r4, #0x2c
	ldr r3, _02019450 ; =sub_02004160
	add r0, r0, #0x400
	mov r1, #3
	mov r2, #0x60
	bl __cxa_vec_cleanup
	add r0, r4, #0x3cc
	bl sub_02004160
	add r0, r4, #0x36c
	bl sub_02004160
	add r0, r4, #0x30c
	bl sub_02004160
	add r0, r4, #0x2ac
	bl sub_02004160
	add r0, r4, #0x24c
	bl sub_02004160
	add r0, r4, #0x1ec
	bl sub_02004160
	add r0, r4, #0x18c
	bl sub_02004160
	mov r0, r4
	bl sub_02011F6C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0201944C: .word ptr_FUN_0201933c_0208b864
_02019450: .word sub_02004160
	arm_func_end sub_020193C4

	arm_func_start sub_02019454
sub_02019454: ; 0x02019454
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02019498
	ldr r2, _02019604 ; =s_PGM_i021_NCLR_0208b8ac
	ldr r1, _02019608 ; =s_PGM_i021_00_NCER_0208b8bc
	str r2, [sp]
	ldr ip, _0201960C ; =s_PGM_i021_00_cac_0208b8d0
	str r1, [sp, #4]
	ldr r1, _02019610 ; =s_PGM_0208b878
	ldr r2, _02019614 ; =s_data_interface_i021_LZ_bin_0208b87c
	ldr r3, _02019618 ; =s_PGM_i021_00_NCBR_0208b898
	str ip, [sp, #8]
	bl sub_0201AAE0
	arm_func_end sub_02019454
_02019498:
	str r0, [r4, #0x5c8]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _020194CC
	ldr r1, _0201961C ; =s_PGA_i024_NCLR_0208b914
	mov ip, #0
	stmia sp, {r1, ip}
	ldr r1, _02019620 ; =DAT_0208b8e0
	ldr r2, _02019624 ; =s_data_interface_i024_LZ_bin_0208b8e4
	ldr r3, _02019628 ; =s_PGA_i024_00_NCBR_0208b900
	str ip, [sp, #8]
	bl sub_0201AAE0
_020194CC:
	str r0, [r4, #0x5cc]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02019500
	ldr r1, _0201962C ; =s_PGB_i023_NCLR_0208b958
	mov ip, #0
	stmia sp, {r1, ip}
	ldr r1, _02019630 ; =s_PGB_0208b924
	ldr r2, _02019634 ; =s_data_interface_i023_LZ_bin_0208b928
	ldr r3, _02019638 ; =s_PGB_i023_00_NCBR_0208b944
	str ip, [sp, #8]
	bl sub_0201AAE0
_02019500:
	str r0, [r4, #0x5d0]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _0201953C
	ldr r2, _0201963C ; =s_PGF_i020_NCLR_0208b99c
	ldr r1, _02019640 ; =s_PGF_i020_00_NCER_0208b9ac
	str r2, [sp]
	ldr ip, _02019644 ; =s_PGF_i020_00_cac_0208b9c0
	str r1, [sp, #4]
	ldr r1, _02019648 ; =s_PGF_0208b968
	ldr r2, _0201964C ; =s_data_interface_i020_LZ_bin_0208b96c
	ldr r3, _02019650 ; =s_PGF_i020_00_NCBR_0208b988
	str ip, [sp, #8]
	bl sub_0201AAE0
_0201953C:
	str r0, [r4, #0x5d4]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _02019570
	ldr r1, _02019654 ; =s_PGP_i022_NCLR_0208ba04
	mov ip, #0
	stmia sp, {r1, ip}
	ldr r1, _02019658 ; =s_PGP_0208b9d0
	ldr r2, _0201965C ; =s_data_interface_i022_LZ_bin_0208b9d4
	ldr r3, _02019660 ; =s_PGP_i022_00_NCBR_0208b9f0
	str ip, [sp, #8]
	bl sub_0201AAE0
_02019570:
	str r0, [r4, #0x5d8]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _020195A4
	ldr r1, _02019664 ; =s_PGG_i057_NCLR_0208ba48
	mov ip, #0
	stmia sp, {r1, ip}
	ldr r1, _02019668 ; =s_PGG_0208ba14
	ldr r2, _0201966C ; =s_data_interface_i057_LZ_bin_0208ba18
	ldr r3, _02019670 ; =s_PGG_i057_00_NCBR_0208ba34
	str ip, [sp, #8]
	bl sub_0201AAE0
_020195A4:
	str r0, [r4, #0x5dc]
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _020195E0
	ldr r2, _02019674 ; =s_PGC_i020_NCLR_0208ba70
	ldr r1, _02019678 ; =s_PGC_i020_01_NCER_0208ba80
	str r2, [sp]
	ldr ip, _0201967C ; =s_PGC_i020_01_cac_0208ba94
	str r1, [sp, #4]
	ldr r1, _02019680 ; =s_PGC_0208ba58
	ldr r2, _0201964C ; =s_data_interface_i020_LZ_bin_0208b96c
	ldr r3, _02019684 ; =s_PGC_i020_01_NCBR_0208ba5c
	str ip, [sp, #8]
	bl sub_0201AAE0
_020195E0:
	str r0, [r4, #0x5e0]
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #0
	bl sub_02008A80
	add r1, r4, #0x500
	strh r0, [r1, #0xc0]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02019604: .word s_PGM_i021_NCLR_0208b8ac
_02019608: .word s_PGM_i021_00_NCER_0208b8bc
_0201960C: .word s_PGM_i021_00_cac_0208b8d0
_02019610: .word s_PGM_0208b878
_02019614: .word s_data_interface_i021_LZ_bin_0208b87c
_02019618: .word s_PGM_i021_00_NCBR_0208b898
_0201961C: .word s_PGA_i024_NCLR_0208b914
_02019620: .word DAT_0208b8e0
_02019624: .word s_data_interface_i024_LZ_bin_0208b8e4
_02019628: .word s_PGA_i024_00_NCBR_0208b900
_0201962C: .word s_PGB_i023_NCLR_0208b958
_02019630: .word s_PGB_0208b924
_02019634: .word s_data_interface_i023_LZ_bin_0208b928
_02019638: .word s_PGB_i023_00_NCBR_0208b944
_0201963C: .word s_PGF_i020_NCLR_0208b99c
_02019640: .word s_PGF_i020_00_NCER_0208b9ac
_02019644: .word s_PGF_i020_00_cac_0208b9c0
_02019648: .word s_PGF_0208b968
_0201964C: .word s_data_interface_i020_LZ_bin_0208b96c
_02019650: .word s_PGF_i020_00_NCBR_0208b988
_02019654: .word s_PGP_i022_NCLR_0208ba04
_02019658: .word s_PGP_0208b9d0
_0201965C: .word s_data_interface_i022_LZ_bin_0208b9d4
_02019660: .word s_PGP_i022_00_NCBR_0208b9f0
_02019664: .word s_PGG_i057_NCLR_0208ba48
_02019668: .word s_PGG_0208ba14
_0201966C: .word s_data_interface_i057_LZ_bin_0208ba18
_02019670: .word s_PGG_i057_00_NCBR_0208ba34
_02019674: .word s_PGC_i020_NCLR_0208ba70
_02019678: .word s_PGC_i020_01_NCER_0208ba80
_0201967C: .word s_PGC_i020_01_cac_0208ba94
_02019680: .word s_PGC_0208ba58
_02019684: .word s_PGC_i020_01_NCBR_0208ba5c

	arm_func_start sub_02019688
sub_02019688: ; 0x02019688
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r7, r0
	mov r4, r5
	arm_func_end sub_02019688
_02019698:
	add r0, r7, r5, lsl #2
	ldr r6, [r0, #0x5c8]
	cmp r6, #0
	beq _020196C4
	beq _020196BC
	mov r0, r6
	bl sub_0201AB14
	mov r0, r6
	bl _ZdlPv
_020196BC:
	add r0, r7, r5, lsl #2
	str r4, [r0, #0x5c8]
_020196C4:
	add r5, r5, #1
	cmp r5, #7
	blt _02019698
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020196D4
sub_020196D4: ; 0x020196D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, _0201974C ; =0x000003FF
	add r1, r4, #0x500
	strh r2, [r1, #0x8c]
	mov r2, #2
	strh r2, [r1, #0x90]
	mov r3, #0
	strh r3, [r1, #0x92]
	strh r3, [r1, #0x96]
	strh r3, [r1, #0x98]
	str r3, [r4, #0x59c]
	str r3, [r4, #0x5a0]
	str r3, [r4, #0x5a4]
	strh r2, [r1, #0xaa]
	strb r3, [r4, #0x5a8]
	strh r3, [r1, #0xac]
	strh r3, [r1, #0xae]
	strh r3, [r1, #0xb0]
	mov r2, #0x1f
	strh r2, [r1, #0xb2]
	mov r2, #0x1f000
	str r2, [r4, #0x5b4]
	str r3, [r4, #0x5b8]
	strh r3, [r1, #0xbc]
	strh r3, [r1, #0xbe]
	bl sub_02019750
	mov r0, r4
	bl sub_020198E0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0201974C: .word 0x000003FF
	arm_func_end sub_020196D4

	arm_func_start sub_02019750
sub_02019750: ; 0x02019750
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r2, #0x5b000
	str r2, [sp]
	mov r1, #0x5d000
	stmib sp, {r1, r2}
	mov r4, r0
	mov r2, #0x57000
	str r1, [sp, #0xc]
	sub r1, r2, #0x82000
	str r2, [sp, #0x10]
	add r0, r4, #0x500
	ldrh ip, [r0, #0x8c]
	mov r3, r1
	add r0, r4, #0x2ac
	str ip, [sp, #0x14]
	bl sub_020041A4
	mov r2, #0x58000
	ldr r3, _020198D8 ; =0x00006739
	add r0, r4, #0x200
	strh r3, [r0, #0xb4]
	mov r3, #0x5a000
	str r3, [sp]
	mov r0, #0x5c000
	stmib sp, {r0, r3}
	str r0, [sp, #0xc]
	sub r1, r2, #0x82000
	str r2, [sp, #0x10]
	add r0, r4, #0x500
	ldrh ip, [r0, #0x8c]
	mov r3, r1
	add r0, r4, #0x24c
	add ip, ip, #1
	str ip, [sp, #0x14]
	bl sub_020041A4
	mov r2, #0x5a000
	ldr r3, _020198DC ; =0x0000294A
	add r0, r4, #0x200
	strh r3, [r0, #0x54]
	sub r1, r2, #0x84000
	str r2, [sp]
	stmib sp, {r1, r2}
	str r1, [sp, #0xc]
	mov r2, #0x58000
	str r2, [sp, #0x10]
	add r0, r4, #0x500
	ldrh ip, [r0, #0x8c]
	mov r3, r1
	add r0, r4, #0x1ec
	add ip, ip, #2
	str ip, [sp, #0x14]
	bl sub_020041A4
	mov r1, #0x11
	add r0, r4, #0x100
	strh r1, [r0, #0xf4]
	mov r0, #0x5a000
	sub r1, r0, #0x84000
	str r0, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #0x58000
	str r2, [sp, #0x10]
	add r0, r4, #0x500
	ldrh ip, [r0, #0x8c]
	add r0, r4, #0x18c
	mov r3, r1
	add ip, ip, #3
	str ip, [sp, #0x14]
	bl sub_020041A4
	mov r1, #0x5e000
	str r1, [sp]
	mov r0, #0x60000
	stmib sp, {r0, r1}
	str r0, [sp, #0xc]
	mov r2, #0x44000
	str r2, [sp, #0x10]
	add r0, r4, #0x500
	ldrh r3, [r0, #0x8c]
	sub r1, r2, #0xa4000
	add r0, r4, #0x30c
	add r3, r3, #6
	str r3, [sp, #0x14]
	mov r3, r1
	bl sub_020041A4
	mov r2, #0
	str r2, [r4, #0x344]
	str r2, [r4, #0x348]
	str r2, [r4, #0x34c]
	mov r1, #0x18000
	str r1, [r4, #0x350]
	mov r0, #0xc0000
	str r0, [r4, #0x354]
	str r1, [r4, #0x358]
	str r0, [r4, #0x35c]
	str r2, [r4, #0x360]
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_020198D8: .word 0x00006739
_020198DC: .word 0x0000294A
	arm_func_end sub_02019750

	arm_func_start sub_020198E0
sub_020198E0: ; 0x020198E0
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	mov r3, #0x8000
	str r3, [r0, #0x464]
	mov r2, #0
	str r2, [r0, #0x468]
	str r3, [r0, #0x46c]
	str r3, [r0, #0x470]
	mov r1, #0x10000
	str r1, [r0, #0x474]
	str r3, [r0, #0x478]
	str r1, [r0, #0x47c]
	str r2, [r0, #0x480]
	mov r1, #0x18000
	str r1, [r0, #0x4c4]
	str r2, [r0, #0x4c8]
	str r1, [r0, #0x4cc]
	str r3, [r0, #0x4d0]
	mov r1, #0x20000
	str r1, [r0, #0x4d4]
	str r3, [r0, #0x4d8]
	str r1, [r0, #0x4dc]
	str r2, [r0, #0x4e0]
	mov r1, #0x28000
	str r1, [r0, #0x524]
	str r2, [r0, #0x528]
	str r1, [r0, #0x52c]
	str r3, [r0, #0x530]
	mov r1, #0x30000
	str r1, [r0, #0x534]
	str r3, [r0, #0x538]
	str r1, [r0, #0x53c]
	mov ip, #0x56000
	str r2, [r0, #0x540]
	mov r2, #0x4e000
	str ip, [sp]
	sub r3, ip, #0x7e000
	stmib sp, {r3, ip}
	str r3, [sp, #0xc]
	add r3, r0, #0x500
	str r2, [sp, #0x10]
	ldrh ip, [r3, #0x8c]
	sub r1, r2, #0x7e000
	add r0, r0, #0x2c
	add ip, ip, #5
	mov r3, r1
	add r0, r0, #0x400
	str ip, [sp, #0x14]
	bl sub_020041A4
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	arm_func_end sub_020198E0

	arm_func_start sub_020199AC
sub_020199AC: ; 0x020199AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02019A04
	mov r0, r4
	bl sub_02019BF8
	mov r0, r4
	bl sub_02019F44
	add r0, r4, #0x500
	ldrh r0, [r0, #0x92]
	tst r0, #0x80
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x5e0]
	ldr r0, [r0, #0xc]
	bl sub_020089EC
	add r0, r4, #0x500
	ldrh r0, [r0, #0x96]
	ldr r1, [r4, #0x59c]
	cmp r1, r0, lsl #12
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_0201A0B0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020199AC

	arm_func_start sub_02019A04
sub_02019A04: ; 0x02019A04
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r8, r0
	add r0, r8, #0x500
	ldrh r2, [r0, #0x96]
	ldr r1, [r8, #0x59c]
	cmp r1, r2, lsl #12
	bge _02019A54
	ldrh r0, [r0, #0x92]
	tst r0, #0x80
	ldrne r0, [r8, #0x5c4]
	addne r0, r1, r0
	addeq r0, r1, #0x33
	addeq r0, r0, #0x300
	str r0, [r8, #0x59c]
	add r0, r8, #0x500
	ldrh r1, [r0, #0x92]
	tst r1, #4
	orreq r1, r1, #4
	streqh r1, [r0, #0x92]
	arm_func_end sub_02019A04
_02019A54:
	add r0, r8, #0x500
	ldrh r1, [r0, #0x96]
	ldr r0, [r8, #0x59c]
	cmp r0, r1, lsl #12
	mov r0, r1, lsl #0xc
	strgt r0, [r8, #0x59c]
	add r0, r8, #0x500
	ldrh r3, [r0, #0x92]
	tst r3, #4
	beq _02019A90
	ldrh r1, [r0, #0x96]
	ldr r2, [r8, #0x59c]
	cmp r2, r1, lsl #12
	biceq r1, r3, #4
	streqh r1, [r0, #0x92]
_02019A90:
	ldr r1, [r8, #0x59c]
	ldr r0, [r8, #0x5a0]
	cmp r1, r0
	strgt r1, [r8, #0x5a0]
	ldr r1, [r8, #0x59c]
	ldr r0, [r8, #0x5a0]
	cmp r1, r0
	bge _02019ACC
	sub r0, r0, #0x99
	sub r0, r0, #0x100
	str r0, [r8, #0x5a0]
	add r0, r8, #0x500
	ldrh r1, [r0, #0x92]
	orr r1, r1, #8
	strh r1, [r0, #0x92]
_02019ACC:
	add r0, r8, #0x500
	ldrh r0, [r0, #0x98]
	ldr r4, [r8, #0x59c]
	mov r7, r0, lsl #0xc
	mov r0, r4, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r6, r7, asr #0x1f
	mov r2, r7
	mov r3, r6
	orr r1, r1, r4, lsr #20
	mov r0, r4, lsl #0xc
	bl _ll_div
	mov r5, r0
	mov r0, #0x88000
	umull r3, r2, r5, r0
	mov r1, r5, asr #0x1f
	mov r4, r3, lsr #0xc
	mla r2, r1, r0, r2
	ldr ip, [r8, #0x5a0]
	orr r4, r4, r2, lsl #20
	mov r0, ip, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, r7
	mov r3, r6
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	bl _ll_div
	mov r2, #0x5b000
	sub r1, r4, #0x2b000
	str r2, [sp]
	stmib sp, {r1, r2}
	str r1, [sp, #0xc]
	mov r2, #0x57000
	str r2, [sp, #0x10]
	add r1, r8, #0x500
	ldrh r6, [r1, #0x8c]
	sub r1, r2, #0x82000
	mov r4, #0x88000
	add r6, r6, #3
	str r6, [sp, #0x14]
	umull ip, r6, r0, r4
	mov r7, r0, asr #0x1f
	mla r6, r7, r4, r6
	mov r4, ip, lsr #0xc
	mov r3, r1
	add r0, r8, #0x18c
	orr r4, r4, r6, lsl #20
	bl sub_020041A4
	mov r1, #0x5b000
	sub r0, r4, #0x2b000
	str r1, [sp]
	stmib sp, {r0, r1}
	str r0, [sp, #0xc]
	mov r2, #0x57000
	str r2, [sp, #0x10]
	add r0, r8, #0x500
	ldrh r3, [r0, #0x8c]
	sub r1, r2, #0x82000
	add r0, r8, #0x1ec
	add r3, r3, #2
	str r3, [sp, #0x14]
	mov r3, r1
	bl sub_020041A4
	mov r0, r8
	mov r1, r5
	bl sub_02019D70
	mov r1, r5
	mov r0, r8
	bl sub_02019E64
	add r0, r8, #0x500
	ldrh r1, [r0, #0x92]
	bic r1, r1, #8
	strh r1, [r0, #0x92]
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_02019BF8
sub_02019BF8: ; 0x02019BF8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	bl sub_0201A160
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x500
	ldrh r0, [r0, #0xaa]
	mov r3, #0
	tst r0, #0x10
	moveq r0, #0x18000
	moveq r1, #0x3000
	moveq r2, #0x20000
	beq _02019C40
	mov r0, #0x20000
	mov r1, #0x3000
	mov r2, #0x28000
	arm_func_end sub_02019BF8
_02019C40:
	str r0, [r4, #0x3a4]
	str r3, [r4, #0x3a8]
	str r0, [r4, #0x3ac]
	str r1, [r4, #0x3b0]
	str r2, [r4, #0x3b4]
	str r1, [r4, #0x3b8]
	str r2, [r4, #0x3bc]
	str r3, [r4, #0x3c0]
	add r0, r4, #0x500
	ldrh r2, [r0, #0xaa]
	tst r2, #4
	beq _02019D20
	ldrh r1, [r0, #0xac]
	cmp r1, #0x20
	bne _02019CB8
	bic r1, r2, #8
	strh r1, [r0, #0xaa]
	ldrh r3, [r0, #0xaa]
	mov r2, #0
	mov r1, #0x42
	bic r3, r3, #4
	strh r3, [r0, #0xaa]
	ldrh r3, [r0, #0xaa]
	orr r3, r3, #0x10
	strh r3, [r0, #0xaa]
	strb r2, [r4, #0x5a8]
	strh r2, [r0, #0xac]
	ldr r0, [r4, #0x188]
	bl sub_02034C44
	b _02019D20
_02019CB8:
	bhs _02019D20
	ldrb r1, [r4, #0x5a8]
	add r1, r1, #2
	strb r1, [r4, #0x5a8]
	ldrh r0, [r0, #0xac]
	cmp r0, #0
	beq _02019D10
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #28
	adds r0, r1, r0, ror #28
	bne _02019D10
	mov r0, #0
	strb r0, [r4, #0x5a8]
	ldr r0, [r4, #0x188]
	mov r1, #0x3f
	bl sub_02034F3C
	ldr r0, [r4, #0x188]
	mov r1, #0x42
	bl sub_02034C44
	ldr r0, [r4, #0x188]
	mov r1, #0x7f
	bl sub_02034F3C
_02019D10:
	add r0, r4, #0x500
	ldrh r1, [r0, #0xac]
	add r1, r1, #1
	strh r1, [r0, #0xac]
_02019D20:
	add r0, r4, #0x500
	ldrh r3, [r0, #0xae]
	mov r1, #0x53000
	mov r2, #0x50000
	sub r3, r3, #0x2b
	str r1, [sp]
	mov r3, r3, lsl #0xc
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r0, [r0, #0x8c]
	sub r1, r2, #0x7b000
	mov r3, r1
	add ip, r0, #4
	add r0, r4, #0x36c
	str ip, [sp, #0x14]
	bl sub_020041A4
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}

	arm_func_start sub_02019D70
sub_02019D70: ; 0x02019D70
	stmdb sp!, {r4, lr}
	ldr r2, _02019E5C ; =0x00000666
	mov r4, r0
	cmp r1, r2
	ble _02019DA4
	mov r1, #0
	add r0, r4, #0x500
	mov r2, r1
	mov ip, r1
	strh r1, [r0, #0x90]
	mov r0, #0x4000
	mov r3, #0x8000
	b _02019E38
	arm_func_end sub_02019D70
_02019DA4:
	add r0, r4, #0x500
	cmp r1, r2, lsr #1
	ldrh r1, [r0, #0x90]
	ble _02019DF8
	cmp r1, #1
	beq _02019DD4
	ldrh r0, [r0, #0x92]
	tst r0, #8
	beq _02019DD4
	ldr r0, [r4, #0x188]
	mov r1, #0x104
	bl sub_02034C44
_02019DD4:
	mov r2, #0
	add r0, r4, #0x500
	mov r1, #1
	mov ip, r2
	strh r1, [r0, #0x90]
	mov r1, #0x8000
	mov r0, #0x4000
	mov r3, #0x10000
	b _02019E38
_02019DF8:
	cmp r1, #2
	beq _02019E18
	ldrh r0, [r0, #0x92]
	tst r0, #8
	beq _02019E18
	ldr r0, [r4, #0x188]
	ldr r1, _02019E60 ; =0x00000105
	bl sub_02034C44
_02019E18:
	mov r2, #0
	add r0, r4, #0x500
	mov r1, #2
	mov ip, r2
	strh r1, [r0, #0x90]
	mov r1, #0x10000
	mov r0, #0x4000
	mov r3, #0x18000
_02019E38:
	str r1, [r4, #0x1c4]
	str r2, [r4, #0x1c8]
	str r1, [r4, #0x1cc]
	str r0, [r4, #0x1d0]
	str r3, [r4, #0x1d4]
	str r0, [r4, #0x1d8]
	str r3, [r4, #0x1dc]
	str ip, [r4, #0x1e0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02019E5C: .word 0x00000666
_02019E60: .word 0x00000105

	arm_func_start sub_02019E64
sub_02019E64: ; 0x02019E64
	add r3, r0, #0x500
	ldrh ip, [r3, #0x92]
	tst ip, #0x10
	bne _02019E9C
	ldr r2, _02019F3C ; =0x00000333
	cmp r1, r2
	bge _02019E9C
	orr r2, ip, #0x10
	strh r2, [r3, #0x92]
	ldrh ip, [r3, #0x92]
	mov r2, #0xa000
	orr ip, ip, #0x20
	strh ip, [r3, #0x92]
	str r2, [r0, #0x5a4]
	arm_func_end sub_02019E64
_02019E9C:
	add r3, r0, #0x500
	ldrh ip, [r3, #0x92]
	tst ip, #0x10
	beq _02019ECC
	ldr r2, _02019F3C ; =0x00000333
	cmp r1, r2
	blt _02019ECC
	bic r1, ip, #0x10
	ldr r2, _02019F40 ; =0x0000294A
	strh r1, [r3, #0x92]
	add r1, r0, #0x200
	strh r2, [r1, #0x54]
_02019ECC:
	add r1, r0, #0x500
	ldrh r3, [r1, #0x92]
	tst r3, #0x10
	bxeq lr
	tst r3, #0x20
	ldr r2, [r0, #0x5a4]
	beq _02019F00
	cmp r2, #0x1f000
	addlt r1, r2, #0x1000
	strlt r1, [r0, #0x5a4]
	bicge r2, r3, #0x20
	strgeh r2, [r1, #0x92]
	b _02019F14
_02019F00:
	cmp r2, #0
	subgt r1, r2, #0x1000
	strgt r1, [r0, #0x5a4]
	orrle r2, r3, #0x20
	strleh r2, [r1, #0x92]
_02019F14:
	ldr r1, [r0, #0x5a4]
	add r0, r0, #0x200
	mov r1, r1, lsl #4
	mov r2, r1, lsr #0x10
	cmp r2, #0x1f
	movhi r2, #0x1f
	orr r1, r2, r2, lsl #5
	orr r1, r1, r2, lsl #10
	strh r1, [r0, #0x54]
	bx lr
	.align 2, 0
_02019F3C: .word 0x00000333
_02019F40: .word 0x0000294A

	arm_func_start sub_02019F44
sub_02019F44: ; 0x02019F44
	add r1, r0, #0x500
	ldrh r2, [r1, #0x92]
	tst r2, #0x40
	beq _02019F90
	ldr r2, [r0, #0x5b4]
	cmp r2, #0xf000
	ble _02019F90
	ldrh r3, [r1, #0xbc]
	ldrh r2, [r1, #0xbe]
	cmp r3, r2
	movhs r1, #0xf000
	strhs r1, [r0, #0x5b4]
	bhs _02019F90
	add r2, r3, #1
	strh r2, [r1, #0xbc]
	ldr r2, [r0, #0x5b4]
	ldr r1, [r0, #0x5b8]
	sub r1, r2, r1
	str r1, [r0, #0x5b4]
	arm_func_end sub_02019F44
_02019F90:
	add r1, r0, #0x500
	ldrh r2, [r1, #0x92]
	tst r2, #0x40
	bne _02019FDC
	ldr r2, [r0, #0x5b4]
	cmp r2, #0x1f000
	bge _02019FDC
	ldrh r3, [r1, #0xbc]
	ldrh r2, [r1, #0xbe]
	cmp r3, r2
	movhs r1, #0x1f000
	strhs r1, [r0, #0x5b4]
	bhs _02019FDC
	add r2, r3, #1
	strh r2, [r1, #0xbc]
	ldr r2, [r0, #0x5b4]
	ldr r1, [r0, #0x5b8]
	add r1, r2, r1
	str r1, [r0, #0x5b4]
_02019FDC:
	ldr r1, [r0, #0x5b4]
	add r0, r0, #0x500
	mov r1, r1, asr #0xc
	strh r1, [r0, #0xb2]
	ldrh r1, [r0, #0xb2]
	cmp r1, #0x1f
	movhi r1, #0x1f
	strhih r1, [r0, #0xb2]
	bx lr

	arm_func_start sub_0201A000
sub_0201A000: ; 0x0201A000
	mov r3, r1, lsl #0xc
	str r3, [r0, #0x59c]
	add r0, r0, #0x500
	strh r1, [r0, #0x96]
	strh r2, [r0, #0x98]
	bx lr
	arm_func_end sub_0201A000

	arm_func_start sub_0201A018
sub_0201A018: ; 0x0201A018
	add r0, r0, #0x500
	strh r1, [r0, #0x96]
	bx lr
	arm_func_end sub_0201A018

	arm_func_start sub_0201A024
sub_0201A024: ; 0x0201A024
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x184]
	mov r4, r1
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008E50
	add r1, r5, #0x500
	ldrh r2, [r1, #0x96]
	ldr r1, [r5, #0x59c]
	mov ip, r0, lsl #1
	rsb r3, r1, r2, lsl #12
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, ip, lsl #0xc
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	str r0, [r5, #0x5c4]
	add r0, r5, #0x500
	ldr r2, [r5, #0x5e0]
	ldrh r1, [r0, #0xc0]
	ldr r0, [r2, #0xc]
	mov r2, r4
	bl sub_02008990
	ldr r0, [r5, #0x188]
	ldr r1, _0201A0AC ; =0x00000106
	bl sub_02034C44
	add r0, r5, #0x500
	ldrh r1, [r0, #0x92]
	orr r1, r1, #0x80
	strh r1, [r0, #0x92]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0201A0AC: .word 0x00000106
	arm_func_end sub_0201A024

	arm_func_start sub_0201A0B0
sub_0201A0B0: ; 0x0201A0B0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x188]
	ldr r1, _0201A0D8 ; =0x00000106
	bl sub_02034C5C
	add r0, r4, #0x500
	ldrh r1, [r0, #0x92]
	bic r1, r1, #0x80
	strh r1, [r0, #0x92]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0201A0D8: .word 0x00000106
	arm_func_end sub_0201A0B0

	arm_func_start sub_0201A0DC
sub_0201A0DC: ; 0x0201A0DC
	add r0, r0, #0x500
	ldrh r0, [r0, #0x92]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0201A0DC

	arm_func_start sub_0201A0F4
sub_0201A0F4: ; 0x0201A0F4
	add r0, r0, #0x500
	ldrh r0, [r0, #0x92]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0201A0F4

	arm_func_start sub_0201A10C
sub_0201A10C: ; 0x0201A10C
	add r0, r0, #0x500
	strh r1, [r0, #0x8c]
	ldrh r0, [r0, #0x8c]
	add r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end sub_0201A10C

	arm_func_start sub_0201A128
sub_0201A128: ; 0x0201A128
	add r0, r0, #0x500
	ldrh r0, [r0, #0x92]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0201A128

	arm_func_start sub_0201A140
sub_0201A140: ; 0x0201A140
	add r0, r0, #0x500
	cmp r1, #0
	ldrneh r1, [r0, #0x92]
	orrne r1, r1, #1
	ldreqh r1, [r0, #0x92]
	biceq r1, r1, #1
	strh r1, [r0, #0x92]
	bx lr
	arm_func_end sub_0201A140

	arm_func_start sub_0201A160
sub_0201A160: ; 0x0201A160
	add r0, r0, #0x500
	ldrh r0, [r0, #0xaa]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_0201A160

	arm_func_start sub_0201A178
sub_0201A178: ; 0x0201A178
	add r0, r0, #0x500
	cmp r1, #0
	ldrneh r1, [r0, #0xaa]
	orrne r1, r1, #1
	ldreqh r1, [r0, #0xaa]
	biceq r1, r1, #1
	strh r1, [r0, #0xaa]
	bx lr
	arm_func_end sub_0201A178

	arm_func_start sub_0201A198
sub_0201A198: ; 0x0201A198
	add r0, r0, #0x500
	ldrh r0, [r0, #0x90]
	bx lr
	arm_func_end sub_0201A198

	arm_func_start sub_0201A1A4
sub_0201A1A4: ; 0x0201A1A4
	add r2, r0, #0x500
	strh r1, [r2, #0xae]
	cmp r1, #0
	bne _0201A1CC
	ldrh r1, [r2, #0xaa]
	bic r1, r1, #0x14
	strh r1, [r2, #0xaa]
	ldrh r1, [r2, #0xaa]
	orr r1, r1, #2
	strh r1, [r2, #0xaa]
	arm_func_end sub_0201A1A4
_0201A1CC:
	add r1, r0, #0x500
	ldrh r3, [r1, #0xb0]
	ldrh r2, [r1, #0xae]
	add r0, r0, #0x500
	cmp r2, r3
	strhih r3, [r1, #0xae]
	ldrh r2, [r0, #0xae]
	ldrh r1, [r0, #0xb0]
	cmp r2, r1
	bxne lr
	ldrh r1, [r0, #0xaa]
	tst r1, #2
	bxeq lr
	bic r1, r1, #2
	strh r1, [r0, #0xaa]
	ldrh r2, [r0, #0xaa]
	mov r1, #0
	orr r2, r2, #4
	strh r2, [r0, #0xaa]
	strh r1, [r0, #0xac]
	bx lr

	arm_func_start sub_0201A220
sub_0201A220: ; 0x0201A220
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r5, r1
	mov r6, r0
	mov r1, r4
	bl sub_0201A26C
	mov r0, r6
	mov r1, r5
	bl sub_0201A1A4
	cmp r4, r5
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r6, #0x500
	ldrh r1, [r0, #0xaa]
	bic r1, r1, #6
	strh r1, [r0, #0xaa]
	ldrh r1, [r0, #0xaa]
	orr r1, r1, #0x10
	strh r1, [r0, #0xaa]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0201A220

	arm_func_start sub_0201A26C
sub_0201A26C: ; 0x0201A26C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r6, r0
	add r0, r6, #0x500
	mov r2, #0
	strh r2, [r0, #0xae]
	strh r1, [r0, #0xb0]
	ldrh r4, [r0, #0xb0]
	mov r1, #0x53000
	mov r2, #0x50000
	sub r3, r4, #0x2b
	str r1, [sp]
	mov r3, r3, lsl #0xc
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r0, [r0, #0x8c]
	sub r3, r4, #8
	mov r4, r3, lsl #0x10
	add r5, r0, #3
	sub r1, r2, #0x7b000
	mov r3, r1
	add r0, r6, #0x3cc
	str r5, [sp, #0x14]
	mov r4, r4, lsr #0x10
	bl sub_020041A4
	mov r2, #0x4e000
	ldr r5, _0201A384 ; =0x0000294A
	add r0, r6, #0x300
	strh r5, [r0, #0xd4]
	sub r3, r4, #0x28
	mov r0, #0x56000
	str r0, [sp]
	mov r5, r3, lsl #0xc
	str r5, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	sub r1, r2, #0x76000
	str r2, [sp, #0x10]
	add r0, r6, #0x500
	ldrh lr, [r0, #0x8c]
	add ip, r6, #0x8c
	add r0, ip, #0x400
	add ip, lr, #5
	mov r3, r1
	str ip, [sp, #0x14]
	bl sub_020041A4
	add r0, r4, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	sub r1, r0, #0x28
	mov r0, #0x56000
	mov r1, r1, lsl #0xc
	stmia sp, {r0, r1}
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #0x4e000
	add r0, r6, #0xec
	add r1, r6, #0x500
	str r2, [sp, #0x10]
	ldrh r4, [r1, #0x8c]
	add r0, r0, #0x400
	mov r1, r5
	add r4, r4, #5
	mov r3, r5
	str r4, [sp, #0x14]
	bl sub_020041A4
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0201A384: .word 0x0000294A
	arm_func_end sub_0201A26C

	arm_func_start sub_0201A388
sub_0201A388: ; 0x0201A388
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_0201A128
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl sub_0201A410
	mov r0, r5
	mov r1, r4
	bl sub_0201A458
	mov r0, r5
	mov r1, r4
	bl sub_0201A588
	mov r0, r5
	mov r1, r4
	bl sub_0201A774
	mov r0, r5
	bl sub_0201A160
	cmp r0, #0
	beq _0201A3EC
	mov r0, r5
	mov r1, r4
	bl sub_0201A83C
	arm_func_end sub_0201A388
_0201A3EC:
	add r0, r5, #0x500
	ldrh r0, [r0, #0x92]
	tst r0, #0x80
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl sub_0201AA2C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201A40C
sub_0201A40C: ; 0x0201A40C
	bx lr
	arm_func_end sub_0201A40C

	arm_func_start sub_0201A410
sub_0201A410: ; 0x0201A410
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x5d4]
	add r2, r0, #0x500
	ldr r3, [r3]
	str r3, [r0, #0x364]
	ldr r3, [r0, #0x5d4]
	ldr r3, [r3, #4]
	str r3, [r0, #0x368]
	ldrh r3, [r2, #0xb2]
	str r3, [r0, #0x320]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #6
	str r2, [r0, #0x310]
	add r0, r0, #0x30c
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201A410

	arm_func_start sub_0201A458
sub_0201A458: ; 0x0201A458
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	add r0, r7, #0x500
	ldrh r3, [r0, #0x96]
	mov ip, #0x51000
	rsb ip, ip, #0
	cmp r3, #0x64
	subhs r5, r3, #0x64
	movlo r5, r3
	ldr r2, _0201A584 ; =0x66666667
	mov r6, r1
	smull r1, r4, r2, r5
	mov r0, r5, lsr #0x1f
	add r4, r0, r4, asr #2
	mov r0, #0xa
	mul r0, r4, r0
	mov r1, #0x56000
	str ip, [sp, #8]
	str r1, [sp, #0xc]
	cmp r3, #0x64
	sub r5, r5, r0
	blo _0201A518
	sub ip, r1, #0xae000
	str r6, [sp, #4]
	sub r0, sp, #4
	str ip, [r0]
	str r1, [r0, #4]
	mov r1, #1
	ldr r3, [r0]
	mov r0, r7
	mov r2, r1
	str ip, [sp, #8]
	bl sub_0201A6A8
	mov ip, #0x51000
	rsb ip, ip, #0
	str r6, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0xc]
	str ip, [r1]
	str r0, [r1, #4]
	ldr r3, [r1]
	mov r0, r7
	mov r1, r4
	mov r2, #1
	str ip, [sp, #8]
	bl sub_0201A6A8
	b _0201A548
	arm_func_end sub_0201A458
_0201A518:
	cmp r4, #0
	ble _0201A548
	str r6, [sp, #4]
	sub r0, sp, #4
	str ip, [r0]
	str r1, [r0, #4]
	ldr r3, [r0]
	mov r0, r7
	mov r1, r4
	mov r2, #1
	str ip, [sp, #8]
	bl sub_0201A6A8
_0201A548:
	mov r4, #0x48000
	rsb r4, r4, #0
	str r6, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0xc]
	str r4, [r1]
	str r0, [r1, #4]
	ldr r3, [r1]
	mov r0, r7
	mov r1, r5
	mov r2, #1
	str r4, [sp, #8]
	bl sub_0201A6A8
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0201A584: .word 0x66666667

	arm_func_start sub_0201A588
sub_0201A588: ; 0x0201A588
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r8, r0
	add r0, r8, #0x500
	ldrh r5, [r0, #0x98]
	mov r7, r1
	ldr r2, _0201A6A4 ; =0x66666667
	cmp r5, #0x64
	subhs r5, r5, #0x64
	smull r1, r4, r2, r5
	mov r0, r5, lsr #0x1f
	add r4, r0, r4, asr #2
	mov r1, #0xa
	mov r6, #0
	mul sb, r4, r1
	sub lr, r6, #0x42000
	mov ip, #0x57000
	str r7, [sp, #4]
	sub r0, sp, #4
	str lr, [r0]
	str ip, [r0, #4]
	ldr r3, [r0]
	mov r0, r8
	mov r2, #2
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	sub r5, r5, sb
	bl sub_0201A6A8
	add r0, r8, #0x500
	ldrh r0, [r0, #0x98]
	cmp r0, #0x64
	blo _0201A63C
	mov r6, #0x4000
	sub ip, r6, #0x41000
	str r7, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0xc]
	str ip, [r1]
	str r0, [r1, #4]
	ldr r3, [r1]
	mov r0, r8
	mov r1, #1
	mov r2, #2
	str ip, [sp, #8]
	bl sub_0201A6A8
	arm_func_end sub_0201A588
_0201A63C:
	sub ip, r6, #0x3c000
	str r7, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0xc]
	str ip, [r1]
	str r0, [r1, #4]
	ldr r3, [r1]
	mov r0, r8
	mov r1, r4
	mov r2, #2
	str ip, [sp, #8]
	bl sub_0201A6A8
	sub r4, r6, #0x35000
	str r7, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0xc]
	str r4, [r1]
	str r0, [r1, #4]
	ldr r3, [r1]
	mov r0, r8
	mov r1, r5
	mov r2, #2
	str r4, [sp, #8]
	bl sub_0201A6A8
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0201A6A4: .word 0x66666667

	arm_func_start sub_0201A6A8
sub_0201A6A8: ; 0x0201A6A8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r3, r0, r2, lsl #2
	cmp r2, #1
	ldr r2, [r3, #0x5c8]
	moveq ip, #0x10
	ldr r2, [r2]
	moveq lr, ip
	str r2, [r0, #0x584]
	ldr r2, [r3, #0x5c8]
	movne ip, #8
	mul r4, ip, r1
	ldr r2, [r2, #4]
	add r1, r1, #1
	mul r1, ip, r1
	ldr r3, [sp, #0x1c]
	str r2, [r0, #0x588]
	ldr r2, [sp, #0x20]
	str r3, [r0, #0x564]
	movne lr, #0x10
	str r2, [r0, #0x568]
	mov ip, ip, lsl #0xc
	str ip, [r0, #0x56c]
	mov ip, lr, lsl #0xc
	str ip, [r0, #0x570]
	mov r4, r4, lsl #0xc
	str r4, [r0, #0x574]
	mov r4, #0
	str r4, [r0, #0x578]
	mov r1, r1, lsl #0xc
	str r1, [r0, #0x57c]
	str ip, [r0, #0x580]
	add ip, r0, #0x500
	ldrh r4, [ip, #0xb2]
	add lr, r0, #0x14c
	str r2, [sp, #4]
	str r4, [r0, #0x560]
	ldrh ip, [ip, #0x8c]
	ldr r1, [sp, #0x24]
	str r3, [sp]
	add r2, ip, #7
	str r2, [r0, #0x550]
	add r0, lr, #0x400
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_0201A6A8

	arm_func_start sub_0201A774
sub_0201A774: ; 0x0201A774
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x500
	ldrh r2, [r0, #0xb2]
	mov r4, r1
	str r2, [r5, #0x1a0]
	ldrh r2, [r0, #0xb2]
	str r2, [r5, #0x200]
	ldrh r2, [r0, #0xb2]
	str r2, [r5, #0x2c0]
	ldrh r2, [r0, #0xb2]
	str r2, [r5, #0x260]
	ldrh r0, [r0, #0x96]
	cmp r0, #0
	beq _0201A7D8
	ldr r2, [r5, #0x5dc]
	add r0, r5, #0x18c
	ldr r2, [r2]
	str r2, [r5, #0x1e4]
	ldr r2, [r5, #0x5dc]
	ldr r2, [r2, #4]
	str r2, [r5, #0x1e8]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	arm_func_end sub_0201A774
_0201A7D8:
	add r2, r5, #0x500
	ldrh r3, [r2, #0x8c]
	add r0, r5, #0x1ec
	mov r1, r4
	add r3, r3, #2
	str r3, [r5, #0x1f0]
	ldrh r3, [r2, #0x8c]
	str r3, [r5, #0x2b0]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #1
	str r2, [r5, #0x250]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x2ac
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	add r0, r5, #0x24c
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201A83C
sub_0201A83C: ; 0x0201A83C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r2, r5, #0x500
	ldrh r2, [r2, #0xae]
	mov r4, r1
	cmp r2, #0
	beq _0201A85C
	bl sub_0201A8C0
	arm_func_end sub_0201A83C
_0201A85C:
	mov r0, r5
	mov r1, r4
	bl sub_0201A890
	mov r0, r5
	mov r1, r4
	bl sub_0201A948
	mov r0, r5
	mov r1, r4
	bl sub_0201A994
	mov r0, r5
	mov r1, r4
	bl sub_0201A9E0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201A890
sub_0201A890: ; 0x0201A890
	stmdb sp!, {r3, lr}
	add r2, r0, #0x500
	ldrh r3, [r2, #0xb2]
	str r3, [r0, #0x3e0]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #3
	str r2, [r0, #0x3d0]
	add r0, r0, #0x3cc
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201A890

	arm_func_start sub_0201A8C0
sub_0201A8C0: ; 0x0201A8C0
	stmdb sp!, {r3, lr}
	add r2, r0, #0x500
	ldrh r2, [r2, #0xaa]
	tst r2, #4
	beq _0201A904
	mov r3, #0
	str r3, [r0, #0x3c4]
	str r3, [r0, #0x3c8]
	ldrb r2, [r0, #0x5a8]
	cmp r2, #0
	subne r2, r2, #1
	andne r3, r2, #0xff
	orr r2, r3, r3, lsl #5
	orr r3, r2, r3, lsl #10
	add r2, r0, #0x300
	strh r3, [r2, #0x74]
	b _0201A91C
	arm_func_end sub_0201A8C0
_0201A904:
	ldr r2, [r0, #0x5dc]
	ldr r2, [r2]
	str r2, [r0, #0x3c4]
	ldr r2, [r0, #0x5dc]
	ldr r2, [r2, #4]
	str r2, [r0, #0x3c8]
_0201A91C:
	add r2, r0, #0x500
	ldrh r3, [r2, #0xb2]
	str r3, [r0, #0x380]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #4
	str r2, [r0, #0x370]
	add r0, r0, #0x36c
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}

	arm_func_start sub_0201A948
sub_0201A948: ; 0x0201A948
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x5d8]
	add r2, r0, #0x500
	ldr ip, [r3]
	add r3, r0, #0x2c
	str ip, [r0, #0x484]
	ldr ip, [r0, #0x5d8]
	ldr ip, [ip, #4]
	str ip, [r0, #0x488]
	ldrh ip, [r2, #0xb2]
	str ip, [r0, #0x440]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #5
	str r2, [r0, #0x430]
	add r0, r3, #0x400
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201A948

	arm_func_start sub_0201A994
sub_0201A994: ; 0x0201A994
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x5d8]
	add r2, r0, #0x500
	ldr ip, [r3]
	add r3, r0, #0x8c
	str ip, [r0, #0x4e4]
	ldr ip, [r0, #0x5d8]
	ldr ip, [ip, #4]
	str ip, [r0, #0x4e8]
	ldrh ip, [r2, #0xb2]
	str ip, [r0, #0x4a0]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #5
	str r2, [r0, #0x490]
	add r0, r3, #0x400
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201A994

	arm_func_start sub_0201A9E0
sub_0201A9E0: ; 0x0201A9E0
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x5d8]
	add r2, r0, #0x500
	ldr ip, [r3]
	add r3, r0, #0xec
	str ip, [r0, #0x544]
	ldr ip, [r0, #0x5d8]
	ldr ip, [ip, #4]
	str ip, [r0, #0x548]
	ldrh ip, [r2, #0xb2]
	str ip, [r0, #0x500]
	ldrh r2, [r2, #0x8c]
	add r2, r2, #5
	str r2, [r0, #0x4f0]
	add r0, r3, #0x400
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201A9E0

	arm_func_start sub_0201AA2C
sub_0201AA2C: ; 0x0201AA2C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x5e0]
	ldr r4, [r6, #0xc4]
	ldr r2, [r0]
	mov r0, #0
	str r2, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldr r2, [r6, #0x5e0]
	add r0, r6, #0x500
	ldr r2, [r2, #4]
	mov r5, r1
	str r2, [r4, #0x34]
	ldr r1, [r6, #0x5e0]
	ldr r1, [r1, #8]
	str r1, [r4, #0x38]
	ldr r2, [r6, #0x5e0]
	ldrh r1, [r0, #0xc0]
	ldr r0, [r2, #0xc]
	bl sub_02008828
	strh r0, [r4, #0x2a]
	add r0, r6, #0x500
	ldrh r1, [r0, #0xb2]
	mov r3, #0
	mov r2, #0x56000
	str r1, [r4, #0x14]
	ldrh r6, [r0, #0x8c]
	mov r0, r4
	mov r1, r5
	add r5, r6, #8
	str r5, [r4, #4]
	str r3, [r4, #0x18]
	str r2, [r4, #0x1c]
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0201AA2C

	arm_func_start sub_0201AAC0
sub_0201AAC0: ; 0x0201AAC0
	cmp r1, #0
	blt _0201AAD8
	cmp r1, #7
	addlt r0, r0, r1, lsl #2
	ldrlt r0, [r0, #0x5c8]
	bxlt lr
	arm_func_end sub_0201AAC0
_0201AAD8:
	mov r0, #0
	bx lr

	arm_func_start sub_0201AAE0
sub_0201AAE0: ; 0x0201AAE0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr ip, [sp, #0x18]
	ldr lr, [sp, #0x1c]
	str ip, [sp]
	ldr ip, [sp, #0x20]
	str lr, [sp, #4]
	mov r4, r0
	str ip, [sp, #8]
	bl sub_0201AB28
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0201AAE0

	arm_func_start sub_0201AB14
sub_0201AB14: ; 0x0201AB14
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201ACA8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201AB14

	arm_func_start sub_0201AB28
sub_0201AB28: ; 0x0201AB28
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #0x6c
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl _Znwm
	movs r4, r0
	beq _0201AB78
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r1, r8
	mov r2, r7
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r4, r0
	arm_func_end sub_0201AB28
_0201AB78:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _0201AB9C
	mov r2, #0
	mov r1, r6
	mov r3, r2
	str r2, [sp]
	bl sub_020074E8
_0201AB9C:
	str r0, [r5]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	mov r1, r0
	str r0, [r5, #0x10]
	mov r1, r1, lsl #0x10
	ldr r0, [r5]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldr r0, [r5]
	bl sub_020076B0
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _0201ABF0
	mov r2, #0
	ldr r1, [sp, #0x28]
	mov r3, r2
	bl sub_02007AC0
_0201ABF0:
	str r0, [r5, #4]
	ldr r0, [r0, #4]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	mov r1, r0
	str r0, [r5, #0x14]
	mov r1, r1, lsl #0x10
	ldr r0, [r5, #4]
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	ldr r0, [r5, #4]
	bl sub_02007BC4
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0201AC5C
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201AC58
	mov r2, #0
	ldr r1, [sp, #0x2c]
	mov r3, r2
	str r2, [sp]
	bl sub_020031E8
_0201AC58:
	str r0, [r5, #8]
_0201AC5C:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0201AC84
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _0201AC80
	ldr r1, [sp, #0x30]
	bl sub_0200879C
_0201AC80:
	str r0, [r5, #0xc]
_0201AC84:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_0201ACA8
sub_0201ACA8: ; 0x0201ACA8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _0201ACD8
	beq _0201ACD0
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_0201ACA8
_0201ACD0:
	mov r0, #0
	str r0, [r4, #0xc]
_0201ACD8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0201ACFC
	beq _0201ACF4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201ACF4:
	mov r0, #0
	str r0, [r4, #8]
_0201ACFC:
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _0201AD24
	beq _0201AD1C
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
_0201AD1C:
	mov r0, #0
	str r0, [r4, #4]
_0201AD24:
	ldr r5, [r4]
	cmp r5, #0
	beq _0201AD4C
	beq _0201AD44
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
_0201AD44:
	mov r0, #0
	str r0, [r4]
_0201AD4C:
	ldr r0, [r4, #0x10]
	bl NNS_GfdFreeLnkTexVram
	ldr r0, [r4, #0x14]
	bl NNS_GfdFreeLnkPlttVram
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201AD60
sub_0201AD60: ; 0x0201AD60
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r1, #0
	strb r1, [r4, #1]
	str r1, [r4, #4]
	mov r0, #0x40
	strb r1, [r4, #8]
	bl _Znwm
	cmp r0, #0
	beq _0201AD8C
	bl sub_02003B64
	arm_func_end sub_0201AD60
_0201AD8C:
	str r0, [r4, #0xc]
	mov r6, #0
	mov r5, #0x50
_0201AD98:
	mov r0, r5
	bl _Znwm
	cmp r0, #0
	beq _0201ADAC
	bl sub_02004CB4
_0201ADAC:
	add r1, r4, r6, lsl #2
	add r6, r6, #1
	str r0, [r1, #0x10]
	cmp r6, #0x10
	blt _0201AD98
	mov r6, #0
	mov r5, #0x50
_0201ADC8:
	mov r0, r5
	bl _Znwm
	cmp r0, #0
	beq _0201ADDC
	bl sub_02004CB4
_0201ADDC:
	add r1, r4, r6, lsl #2
	add r6, r6, #1
	str r0, [r1, #0x50]
	cmp r6, #0xc
	blt _0201ADC8
	mov r6, #0
	mov r5, #0x40
_0201ADF8:
	mov r0, r5
	bl _Znwm
	cmp r0, #0
	beq _0201AE0C
	bl sub_02003B64
_0201AE0C:
	add r1, r4, r6, lsl #2
	add r6, r6, #1
	str r0, [r1, #0x80]
	cmp r6, #0x16
	blt _0201ADF8
	mov r1, #0
	mov r0, r4
	mov r2, r1
	mov r3, r1
	bl sub_0201B5F4
	mov r1, #0
	mov r0, r4
	mov r2, r1
	mov r3, r1
	bl sub_0201B658
	mov r0, r4
	bl sub_0201B2E4
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0201AE58
sub_0201AE58: ; 0x0201AE58
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0201AE84
	beq _0201AE7C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0201AE58
_0201AE7C:
	mov r0, #0
	str r0, [r4, #0xc]
_0201AE84:
	mov r6, #0
	mov r5, r6
_0201AE8C:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0201AEB4
	beq _0201AEAC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201AEAC:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x10]
_0201AEB4:
	add r6, r6, #1
	cmp r6, #0x10
	blt _0201AE8C
	mov r6, #0
	mov r5, r6
_0201AEC8:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _0201AEF0
	beq _0201AEE8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201AEE8:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x50]
_0201AEF0:
	add r6, r6, #1
	cmp r6, #0xc
	blt _0201AEC8
	mov r6, #0
	mov r5, r6
_0201AF04:
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x80]
	cmp r0, #0
	beq _0201AF2C
	beq _0201AF24
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201AF24:
	add r0, r4, r6, lsl #2
	str r5, [r0, #0x80]
_0201AF2C:
	add r6, r6, #1
	cmp r6, #0x16
	blt _0201AF04
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0201AF40
sub_0201AF40: ; 0x0201AF40
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	tst r1, #1
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #4]
	cmp r1, #1
	beq _0201AF6C
	cmp r1, #2
	beq _0201AF74
	b _0201AF78
	arm_func_end sub_0201AF40
_0201AF6C:
	bl sub_0201AFD4
	b _0201AF78
_0201AF74:
	bl sub_0201B154
_0201AF78:
	ldrb r0, [r4, #8]
	add r1, r0, #1
	and r0, r1, #0xff
	cmp r0, #0xd8
	strb r1, [r4, #8]
	movhs r0, #0
	strcsb r0, [r4, #8]
	bl sub_0201001C
	add r0, r0, #0x1000
	mov ip, #0
	ldr r3, [r0, #0x5d0]
	mov r1, ip
_0201AFA8:
	add r2, r4, ip, lsl #2
	rsb r0, ip, r3, asr #12
	ldr r2, [r2, #0x80]
	sub r0, r0, #0x60
	add ip, ip, #1
	str r1, [r2, #0x18]
	mov r0, r0, lsl #0xc
	str r0, [r2, #0x1c]
	cmp ip, #0x16
	blt _0201AFA8
	ldmia sp!, {r4, pc}

	arm_func_start sub_0201AFD4
sub_0201AFD4: ; 0x0201AFD4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	ldrb r2, [r4, #1]
	mov r0, #0x1000
	mov r1, #0x13000
	add r2, r2, #1
	strb r2, [r4, #1]
	and r2, r2, #0xff
	mov r3, #0x10
	bl sub_02007068
	mov r2, r0, asr #0xc
	ldr r1, [r4, #0xc]
	mov r0, #0x1000
	str r2, [r1, #0x14]
	ldrb r2, [r4, #1]
	mov r1, #0x10000
	mov r3, #0x10
	bl sub_02007068
	mov r5, r0, asr #0xc
	mov r0, r4
	mov r1, r5
	bl sub_0201B6BC
	mov r1, r5
	mov r0, r4
	bl sub_0201B6DC
	ldrb r2, [r4, #1]
	mov r0, #0x1000
	mov r1, #0x18000
	mov r3, #0x10
	bl sub_02007068
	mov r1, r0, asr #0xc
	mov r0, r4
	bl sub_0201B6FC
	ldrb r2, [r4, #1]
	mov r0, #0x4000
	mov r1, #0x1000
	mov r3, #0x10
	bl sub_02007068
	mov r1, #0
	mov r7, #0x60000
	mov r2, r1
	mov r3, r0, asr #0x1f
	rsb r7, r7, #0
	mov r5, #0x60000
	arm_func_end sub_0201AFD4
_0201B084:
	sub r6, r2, #0x80000
	umull ip, sb, r6, r0
	mla sb, r6, r3, sb
	add r8, r4, r1, lsl #2
	mov r6, r6, asr #0x1f
	mla sb, r6, r0, sb
	mov ip, ip, lsr #0xc
	add r1, r1, #1
	ldr r6, [r8, #0x10]
	orr ip, ip, sb, lsl #20
	str ip, [r6, #0x18]
	str r7, [r6, #0x1c]
	ldr r6, [r8, #0x10]
	cmp r1, #0x10
	str ip, [r6, #0x20]
	str r7, [r6, #0x24]
	ldr r6, [r8, #0x10]
	add r2, r2, #0x10000
	str ip, [r6, #0x28]
	str r5, [r6, #0x2c]
	blt _0201B084
	mov r1, #0
	mov r5, #0x80000
	mov r2, r1
	rsb r5, r5, #0
	mov ip, #0x80000
_0201B0EC:
	sub r7, r2, #0x60000
	umull sb, r8, r7, r0
	mla r8, r7, r3, r8
	add r6, r4, r1, lsl #2
	mov r7, r7, asr #0x1f
	ldr lr, [r6, #0x50]
	mla r8, r7, r0, r8
	mov r7, sb, lsr #0xc
	add r1, r1, #1
	orr r7, r7, r8, lsl #20
	str r5, [lr, #0x18]
	str r7, [lr, #0x1c]
	ldr lr, [r6, #0x50]
	cmp r1, #0xc
	str r5, [lr, #0x20]
	str r7, [lr, #0x24]
	ldr lr, [r6, #0x50]
	add r2, r2, #0x10000
	str ip, [lr, #0x28]
	str r7, [lr, #0x2c]
	blt _0201B0EC
	ldrb r0, [r4, #1]
	cmp r0, #0x10
	movhs r0, #0
	strhs r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_0201B154
sub_0201B154: ; 0x0201B154
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	ldrb r2, [r4, #1]
	mov r0, #0x13000
	mov r1, #0x1000
	add r2, r2, #1
	strb r2, [r4, #1]
	and r2, r2, #0xff
	mov r3, #0x10
	bl sub_02007068
	mov r2, r0, asr #0xc
	ldr r1, [r4, #0xc]
	mov r0, #0x10000
	str r2, [r1, #0x14]
	ldrb r2, [r4, #1]
	mov r1, #0x1000
	mov r3, #0x10
	bl sub_02007068
	mov r5, r0, asr #0xc
	mov r0, r4
	mov r1, r5
	bl sub_0201B6BC
	mov r1, r5
	mov r0, r4
	bl sub_0201B6DC
	ldrb r2, [r4, #1]
	mov r0, #0x18000
	mov r1, #0x1000
	mov r3, #0x10
	bl sub_02007068
	mov r1, r0, asr #0xc
	mov r0, r4
	bl sub_0201B6FC
	ldrb r2, [r4, #1]
	mov r0, #0x1000
	mov r1, #0x4000
	mov r3, #0x10
	bl sub_02007068
	mov r1, #0
	mov r7, #0x60000
	mov r2, r1
	mov r3, r0, asr #0x1f
	rsb r7, r7, #0
	mov r5, #0x60000
	arm_func_end sub_0201B154
_0201B204:
	sub r6, r2, #0x80000
	umull ip, sb, r6, r0
	mla sb, r6, r3, sb
	add r8, r4, r1, lsl #2
	mov r6, r6, asr #0x1f
	mla sb, r6, r0, sb
	mov ip, ip, lsr #0xc
	add r1, r1, #1
	ldr r6, [r8, #0x10]
	orr ip, ip, sb, lsl #20
	str ip, [r6, #0x18]
	str r7, [r6, #0x1c]
	ldr r6, [r8, #0x10]
	cmp r1, #0x10
	str ip, [r6, #0x20]
	str r7, [r6, #0x24]
	ldr r6, [r8, #0x10]
	add r2, r2, #0x10000
	str ip, [r6, #0x28]
	str r5, [r6, #0x2c]
	blt _0201B204
	mov r1, #0
	mov r5, #0x80000
	mov r2, r1
	rsb r5, r5, #0
	mov ip, #0x80000
_0201B26C:
	sub r7, r2, #0x60000
	umull sb, r8, r7, r0
	mla r8, r7, r3, r8
	add r6, r4, r1, lsl #2
	mov r7, r7, asr #0x1f
	ldr lr, [r6, #0x50]
	mla r8, r7, r0, r8
	mov r7, sb, lsr #0xc
	add r1, r1, #1
	orr r7, r7, r8, lsl #20
	str r5, [lr, #0x18]
	str r7, [lr, #0x1c]
	ldr lr, [r6, #0x50]
	cmp r1, #0xc
	str r5, [lr, #0x20]
	str r7, [lr, #0x24]
	ldr lr, [r6, #0x50]
	add r2, r2, #0x10000
	str ip, [lr, #0x28]
	str r7, [lr, #0x2c]
	blt _0201B26C
	ldrb r0, [r4, #1]
	cmp r0, #0x10
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r1, [r4]
	mov r0, #0
	bic r1, r1, #1
	strb r1, [r4]
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_0201B2E4
sub_0201B2E4: ; 0x0201B2E4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, [r0, #0xc]
	mov r2, #0xe2
	strh r2, [r1, #8]
	ldr r2, [r0, #0xc]
	mov r1, #0
	str r1, [r2, #0x18]
	str r1, [r2, #0x1c]
	ldr r2, [r0, #0xc]
	mov r3, #0x100000
	str r3, [r2, #0x20]
	ldr r2, [r0, #0xc]
	mov r3, #0xc0000
	str r3, [r2, #0x24]
	ldr r3, [r0, #0xc]
	mov r4, #0x13
	str r4, [r3, #0x14]
	mov r3, #0x60000
	ldr r7, _0201B458 ; =0x00001312
	mov r2, r1
	rsb r3, r3, #0
	mov ip, #0x10
	mov r5, #0x60000
	arm_func_end sub_0201B2E4
_0201B340:
	add lr, r0, r1, lsl #2
	ldr r4, [lr, #0x10]
	sub r6, r2, #0x80000
	strh r7, [r4, #8]
	ldr r4, [lr, #0x10]
	add r1, r1, #1
	str ip, [r4, #0x14]
	ldr r4, [lr, #0x10]
	cmp r1, #0x10
	str r6, [r4, #0x18]
	str r5, [r4, #0x1c]
	ldr r4, [lr, #0x10]
	add r2, r2, #0x10000
	str r6, [r4, #0x20]
	str r5, [r4, #0x24]
	ldr r4, [lr, #0x10]
	str r6, [r4, #0x28]
	str r3, [r4, #0x2c]
	blt _0201B340
	mov r7, #0
	mov r1, #0x80000
	ldr ip, _0201B458 ; =0x00001312
	mov lr, r7
	rsb r1, r1, #0
	mov r5, #0x10
	mov r4, #0x80000
_0201B3A8:
	add r6, r0, r7, lsl #2
	ldr r2, [r6, #0x50]
	sub r3, lr, #0x60000
	strh ip, [r2, #8]
	ldr r2, [r6, #0x50]
	add r7, r7, #1
	str r5, [r2, #0x14]
	ldr r2, [r6, #0x50]
	cmp r7, #0xc
	str r4, [r2, #0x18]
	str r3, [r2, #0x1c]
	ldr r2, [r6, #0x50]
	add lr, lr, #0x10000
	str r4, [r2, #0x20]
	str r3, [r2, #0x24]
	ldr r2, [r6, #0x50]
	str r1, [r2, #0x28]
	str r3, [r2, #0x2c]
	blt _0201B3A8
	mov r2, #0
	ldr r1, _0201B45C ; =0x00000373
	mov r5, r2
	mov r4, #0x100000
	mov lr, #0x1000
_0201B408:
	add r6, r0, r2, lsl #2
	ldr ip, [r6, #0x80]
	rsb r3, r2, #0x60
	strh r1, [ip, #8]
	ldr ip, [r6, #0x80]
	mov r3, r3, lsl #0xc
	str r5, [ip, #0x18]
	str r3, [ip, #0x1c]
	ldr r3, [r6, #0x80]
	rsbs ip, r2, #0x18
	str r4, [r3, #0x20]
	ldr r3, [r6, #0x80]
	add r2, r2, #1
	str lr, [r3, #0x24]
	ldr r3, [r6, #0x80]
	strpl ip, [r3, #0x14]
	strmi r5, [r3, #0x14]
	cmp r2, #0x16
	blt _0201B408
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0201B458: .word 0x00001312
_0201B45C: .word 0x00000373

	arm_func_start sub_0201B460
sub_0201B460: ; 0x0201B460
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r0, [r5]
	mov r4, r1
	tst r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r6, #0
	arm_func_end sub_0201B460
_0201B47C:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0x80]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, #1
	cmp r6, #0x16
	blt _0201B47C
	mov r6, #0
_0201B4A4:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0x10]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, #1
	cmp r6, #0x10
	blt _0201B4A4
	mov r6, #0
_0201B4CC:
	add r0, r5, r6, lsl #2
	ldr r0, [r0, #0x50]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r6, r6, #1
	cmp r6, #0xc
	blt _0201B4CC
	ldr r0, [r5, #0xc]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0201B508
sub_0201B508: ; 0x0201B508
	mov r2, #1
	str r2, [r0, #4]
	ldrb r1, [r0]
	mov r3, #0
	orr r1, r1, #1
	strb r1, [r0]
	strb r3, [r0, #1]
	ldr r1, [r0, #0xc]
	str r2, [r1, #0x14]
	arm_func_end sub_0201B508
_0201B52C:
	add r1, r0, r3, lsl #2
	ldr r1, [r1, #0x10]
	add r3, r3, #1
	str r2, [r1, #0x14]
	cmp r3, #0x10
	blt _0201B52C
	mov r3, #0
	mov r2, #1
_0201B54C:
	add r1, r0, r3, lsl #2
	ldr r1, [r1, #0x50]
	add r3, r3, #1
	str r2, [r1, #0x14]
	cmp r3, #0xc
	blt _0201B54C
	bx lr

	arm_func_start sub_0201B568
sub_0201B568: ; 0x0201B568
	mov r1, #2
	str r1, [r0, #4]
	ldrb r1, [r0]
	mov r3, #0
	mov r2, #0x13
	orr r1, r1, #1
	strb r1, [r0]
	strb r3, [r0, #1]
	ldr r1, [r0, #0xc]
	str r2, [r1, #0x14]
	mov r2, #0x10
	arm_func_end sub_0201B568
_0201B594:
	add r1, r0, r3, lsl #2
	ldr r1, [r1, #0x10]
	add r3, r3, #1
	str r2, [r1, #0x14]
	cmp r3, #0x10
	blt _0201B594
	mov r3, #0
	mov r2, #0x10
_0201B5B4:
	add r1, r0, r3, lsl #2
	ldr r1, [r1, #0x50]
	add r3, r3, #1
	str r2, [r1, #0x14]
	cmp r3, #0xc
	blt _0201B5B4
	bx lr

	arm_func_start sub_0201B5D0
sub_0201B5D0: ; 0x0201B5D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201B2E4
	mov r0, #0
	str r0, [r4, #4]
	ldrb r0, [r4]
	orr r0, r0, #1
	strb r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201B5D0

	arm_func_start sub_0201B5F4
sub_0201B5F4: ; 0x0201B5F4
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #0xc]
	mov lr, #0
	str r1, [ip, #4]
	arm_func_end sub_0201B5F4
_0201B604:
	add r1, r0, lr, lsl #2
	ldr r1, [r1, #0x10]
	add lr, lr, #1
	str r2, [r1, #4]
	cmp lr, #0x10
	blt _0201B604
	mov ip, #0
_0201B620:
	add r1, r0, ip, lsl #2
	ldr r1, [r1, #0x50]
	add ip, ip, #1
	str r2, [r1, #4]
	cmp ip, #0xc
	blt _0201B620
	mov r2, #0
_0201B63C:
	add r1, r0, r2, lsl #2
	ldr r1, [r1, #0x80]
	add r2, r2, #1
	str r3, [r1, #4]
	cmp r2, #0x16
	blt _0201B63C
	ldmia sp!, {r3, pc}

	arm_func_start sub_0201B658
sub_0201B658: ; 0x0201B658
	stmdb sp!, {r3, lr}
	ldr ip, [r0, #0xc]
	mov lr, #0
	str r1, [ip, #0x10]
	arm_func_end sub_0201B658
_0201B668:
	add r1, r0, lr, lsl #2
	ldr r1, [r1, #0x10]
	add lr, lr, #1
	str r2, [r1, #0x10]
	cmp lr, #0x10
	blt _0201B668
	mov ip, #0
_0201B684:
	add r1, r0, ip, lsl #2
	ldr r1, [r1, #0x50]
	add ip, ip, #1
	str r2, [r1, #0x10]
	cmp ip, #0xc
	blt _0201B684
	mov r2, #0
_0201B6A0:
	add r1, r0, r2, lsl #2
	ldr r1, [r1, #0x80]
	add r2, r2, #1
	str r3, [r1, #0x10]
	cmp r2, #0x16
	blt _0201B6A0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0201B6BC
sub_0201B6BC: ; 0x0201B6BC
	mov r3, #0
	arm_func_end sub_0201B6BC
_0201B6C0:
	add r2, r0, r3, lsl #2
	ldr r2, [r2, #0x10]
	add r3, r3, #1
	str r1, [r2, #0x14]
	cmp r3, #0x10
	blt _0201B6C0
	bx lr

	arm_func_start sub_0201B6DC
sub_0201B6DC: ; 0x0201B6DC
	mov r3, #0
	arm_func_end sub_0201B6DC
_0201B6E0:
	add r2, r0, r3, lsl #2
	ldr r2, [r2, #0x50]
	add r3, r3, #1
	str r1, [r2, #0x14]
	cmp r3, #0xc
	blt _0201B6E0
	bx lr

	arm_func_start sub_0201B6FC
sub_0201B6FC: ; 0x0201B6FC
	mov r3, #0
	arm_func_end sub_0201B6FC
_0201B700:
	add r2, r0, r3, lsl #2
	ldr r2, [r2, #0x80]
	add r3, r3, #1
	cmp r1, #1
	str r1, [r2, #0x14]
	subgt r1, r1, #1
	cmp r3, #0x16
	blt _0201B700
	bx lr

	arm_func_start sub_0201B724
sub_0201B724: ; 0x0201B724
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	strh r1, [r0, #8]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	strb r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	bx lr
	arm_func_end sub_0201B724

	arm_func_start sub_0201B78C
sub_0201B78C: ; 0x0201B78C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201B7A8
	mov r0, r4
	bl sub_0201C470
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201B78C

	arm_func_start sub_0201B7A8
sub_0201B7A8: ; 0x0201B7A8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl sub_0201001C
	ldr r1, [r4, #0x2c]
	mov r6, r0
	cmp r1, #0
	beq _0201B848
	ldr r0, [r1, #4]
	mov r7, #0
	cmp r0, #0
	bls _0201B814
	mov r5, r7
	arm_func_end sub_0201B7A8
_0201B7D8:
	ldr r0, [r1, #8]
	add r0, r0, r7, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201B800
	bl _ZdaPv
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #8]
	add r0, r0, r7, lsl #3
	str r5, [r0, #4]
_0201B800:
	ldr r1, [r4, #0x2c]
	add r7, r7, #1
	ldr r0, [r1, #4]
	cmp r7, r0
	blo _0201B7D8
_0201B814:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201B830
	bl _ZdaPv
	ldr r0, [r4, #0x2c]
	mov r1, #0
	str r1, [r0, #8]
_0201B830:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0201B848
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x2c]
_0201B848:
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _0201B8D8
	ldr r0, [r1, #4]
	mov r7, #0
	cmp r0, #0
	bls _0201B8A4
	mov r5, r7
_0201B868:
	ldr r0, [r1, #8]
	add r0, r0, r7, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201B890
	bl _ZdaPv
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #8]
	add r0, r0, r7, lsl #3
	str r5, [r0, #4]
_0201B890:
	ldr r1, [r4, #0x30]
	add r7, r7, #1
	ldr r0, [r1, #4]
	cmp r7, r0
	blo _0201B868
_0201B8A4:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201B8C0
	bl _ZdaPv
	ldr r0, [r4, #0x30]
	mov r1, #0
	str r1, [r0, #8]
_0201B8C0:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0201B8D8
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x30]
_0201B8D8:
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _0201B968
	ldr r0, [r1, #4]
	mov r7, #0
	cmp r0, #0
	bls _0201B934
	mov r5, r7
_0201B8F8:
	ldr r0, [r1, #8]
	add r0, r0, r7, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201B920
	bl _ZdaPv
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #8]
	add r0, r0, r7, lsl #3
	str r5, [r0, #4]
_0201B920:
	ldr r1, [r4, #0x34]
	add r7, r7, #1
	ldr r0, [r1, #4]
	cmp r7, r0
	blo _0201B8F8
_0201B934:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201B950
	bl _ZdaPv
	ldr r0, [r4, #0x34]
	mov r1, #0
	str r1, [r0, #8]
_0201B950:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0201B968
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x34]
_0201B968:
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0201B990
	beq _0201B988
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201B988:
	mov r0, #0
	str r0, [r4, #0x14]
_0201B990:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _0201B9B8
	beq _0201B9B0
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201B9B0:
	mov r0, #0
	str r0, [r4, #0x18]
_0201B9B8:
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	beq _0201B9E0
	beq _0201B9D8
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201B9D8:
	mov r0, #0
	str r0, [r4, #0x1c]
_0201B9E0:
	ldr r5, [r4, #0x20]
	cmp r5, #0
	beq _0201BA08
	beq _0201BA00
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201BA00:
	mov r0, #0
	str r0, [r4, #0x20]
_0201BA08:
	ldr r5, [r4, #0x24]
	cmp r5, #0
	beq _0201BA30
	beq _0201BA28
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201BA28:
	mov r0, #0
	str r0, [r4, #0x24]
_0201BA30:
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0201BA40
sub_0201BA40: ; 0x0201BA40
	mov r1, #0
	str r1, [r0, #0x50]
	bx lr
	arm_func_end sub_0201BA40

	arm_func_start sub_0201BA4C
sub_0201BA4C: ; 0x0201BA4C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	mov r6, r1
	bl sub_0201001C
	ldr r1, [r4, #0x50]
	mov r5, r0
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _0201C304
_0201BA74: ; jump table
	b _0201BAB4 ; case 0
	b _0201BB6C ; case 1
	b _0201BC78 ; case 2
	b _0201BD84 ; case 3
	b _0201BE90 ; case 4
	b _0201BF24 ; case 5
	b _0201C078 ; case 6
	b _0201C10C ; case 7
	b _0201C19C ; case 8
	b _0201C304 ; case 9
	b _0201C304 ; case 10
	b _0201C22C ; case 11
	b _0201C274 ; case 12
	b _0201C2B0 ; case 13
	b _0201C304 ; case 14
	b _0201C2F4 ; case 15
	arm_func_end sub_0201BA4C
_0201BAB4:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0201BAC8
	mov r0, r4
	bl sub_0201B7A8
_0201BAC8:
	ldr r1, _0201C310 ; =MAIN_BSS_0210CA6C
	str r6, [r4, #4]
	ldr r0, _0201C314 ; =MAIN_BSS_020B26A0
	ldr r7, [r1]
	ldrh r1, [r0, #0x1a]
	mov r0, r7
	bl sub_02041D80
	ldrb r2, [r0]
	mov r0, r7
	mov r1, r6
	str r2, [r4]
	bl sub_02041D6C
	ldrh r1, [r0]
	strh r1, [r4, #8]
	ldrb r1, [r0, #2]
	strb r1, [r4, #0xa]
	ldrb r1, [r0, #4]
	strb r1, [r4, #0xb]
	ldrb r1, [r0, #5]
	strb r1, [r4, #0xc]
	ldrh r1, [r0, #0x1c]
	strh r1, [r4, #0x12]
	ldrh r1, [r0, #0x18]
	strh r1, [r4, #0xe]
	ldrh r0, [r0, #0x1a]
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0xe]
	cmp r0, #0xe
	blo _0201BB60
	cmp r0, #0x12
	bhi _0201BB60
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4a0]
	ldr r0, [r0, #8]
	cmp r0, #0x1c
	movle r0, #0x80
	strleh r0, [r4, #0xe]
	strleh r0, [r4, #0x10]
_0201BB60:
	mov r0, #1
	str r0, [r4, #0x50]
	b _0201C304
_0201BB6C:
	mov r0, #0xb8
	bl _Znwm
	movs r7, r0
	beq _0201BB8C
	ldr r1, _0201C318 ; =s_data_message_etc_place_name_0208baa4
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r7, r0
_0201BB8C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x2c]
	ldr r1, [r7, #0x4c]
	mov r5, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [r4, #0x2c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x2c]
	mov r6, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x2c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201BC54
_0201BBE4:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r5, lsl #2]
	add r5, r5, #1
	str r1, [r0, r6, lsl #3]
	ldr r0, [r4, #0x2c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r6, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x2c]
	ldr r1, [r1, #8]
	add r1, r1, r6, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x2c]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r5, lsl #2
	add r1, r2, r6, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r6, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x2c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r6, lsl #3]
	add r6, r6, #1
	cmp r6, r0
	add r5, r5, r1, lsr #2
	blo _0201BBE4
_0201BC54:
	cmp r7, #0
	beq _0201BC6C
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201BC6C:
	mov r0, #2
	str r0, [r4, #0x50]
	b _0201C304
_0201BC78:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0201BC98
	ldr r1, _0201C31C ; =s_data_message_etc_yakumono_info_0208bac4
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
_0201BC98:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x30]
	ldr r1, [r6, #0x4c]
	mov r7, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r4, #0x30]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x30]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201BD60
_0201BCF0:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r7, lsl #2]
	add r7, r7, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x30]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x30]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r7, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x30]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r7, r7, r1, lsr #2
	blo _0201BCF0
_0201BD60:
	cmp r6, #0
	beq _0201BD78
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201BD78:
	mov r0, #3
	str r0, [r4, #0x50]
	b _0201C304
_0201BD84:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0201BDA4
	ldr r1, _0201C320 ; =s_data_message_etc_menu_mes_0208bae4
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
_0201BDA4:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x34]
	ldr r1, [r6, #0x4c]
	mov r7, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r4, #0x34]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x34]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x34]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201BE6C
_0201BDFC:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r7, lsl #2]
	add r7, r7, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x34]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x34]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r7, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x34]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r7, r7, r1, lsr #2
	blo _0201BDFC
_0201BE6C:
	cmp r6, #0
	beq _0201BE84
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201BE84:
	mov r0, #4
	str r0, [r4, #0x50]
	b _0201C304
_0201BE90:
	mov r0, #0
	str r0, [r4, #0x54]
	ldrh r2, [r4, #8]
	ldrb r3, [r4, #0xa]
	ldr r1, _0201C324 ; =s_bt_03d_02d_0208bb00
	add r0, sp, #0x10
	bl OS_SPrintf
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201BEDC
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x124
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201BEDC:
	str r0, [r4, #0x14]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x14]
	ldr r1, _0201C328 ; =s_data_targetOBJ_0208bb0c
	add r2, sp, #0x10
	bl sub_0200EE14
	str r0, [r4, #0x54]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x14]
	mov r1, #0
	mov r2, #0x38
	mov r3, #0x50
	bl sub_0200F4FC
	mov r0, #5
	str r0, [r4, #0x50]
	b _0201C304
_0201BF24:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201BF54
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201BF54:
	str r0, [r4, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x54]
	ldr r0, [r4, #0x18]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201C32C ; =s_data_menu_0208bb1c
	ldr r2, _0201C330 ; =s_mt000_00_0208bb28
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x54]
	mov r1, #3
	add r0, r2, r0
	str r0, [r4, #0x54]
	str r1, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #1
	mov r2, #0x9c
	mov r3, #0x4b
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x25
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x37
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x49
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x5b
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x6d
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x7f
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #4
	mov r2, #0x38
	mov r3, #0x7b
	bl sub_0200F4FC
	mov r0, #6
	str r0, [r4, #0x50]
	b _0201C304
_0201C078:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201C0A8
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1a4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201C0A8:
	str r0, [r4, #0x1c]
	mov r0, #2
	str r0, [sp]
	ldr r2, [r4, #0x54]
	ldr r0, [r4, #0x1c]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201C32C ; =s_data_menu_0208bb1c
	ldr r2, _0201C334 ; =s_ma004_00_0208bb34
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x54]
	mov r1, #2
	add r0, r2, r0
	str r0, [r4, #0x54]
	str r1, [sp]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	mov r2, #0x38
	mov r3, #0
	bl sub_0200F4FC
	str r0, [r4, #0x28]
	mov r0, #7
	str r0, [r4, #0x50]
	b _0201C304
_0201C10C:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201C13C
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x224
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201C13C:
	str r0, [r4, #0x20]
	mov r0, #3
	str r0, [sp]
	ldr r2, [r4, #0x54]
	ldr r0, [r4, #0x20]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201C32C ; =s_data_menu_0208bb1c
	ldr r2, _0201C338 ; =s_ma000_00_0208bb40
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x54]
	mov r1, #0
	add r0, r2, r0
	str r0, [r4, #0x54]
	str r1, [sp]
	ldrb r1, [r4, #0xb]
	ldr r0, [r4, #0x20]
	mov r2, #0x94
	mov r3, #0x5a
	bl sub_0200F4FC
	mov r0, #8
	str r0, [r4, #0x50]
	b _0201C304
_0201C19C:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201C1CC
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x2a4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201C1CC:
	str r0, [r4, #0x24]
	mov r0, #6
	str r0, [sp]
	ldr r2, [r4, #0x54]
	ldr r0, [r4, #0x24]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201C32C ; =s_data_menu_0208bb1c
	ldr r2, _0201C33C ; =s_ma001_00_0208bb4c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x54]
	mov r1, #0
	add r0, r2, r0
	str r0, [r4, #0x54]
	str r1, [sp]
	ldrb r1, [r4, #0xc]
	ldr r0, [r4, #0x24]
	mov r2, #0xa0
	mov r3, #0x5a
	bl sub_0200F4FC
	mov r0, #0xb
	str r0, [r4, #0x50]
	b _0201C304
_0201C22C:
	bl DC_FlushAll
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	ldr r1, [r1, #0xb8]
	ldr r2, [r2, #0xb8]
	ldr r3, [r0, #0xb8]
	mov r0, #5
	bl NNS_G2dBGSetupEx
	mov r0, #0xc
	str r0, [r4, #0x50]
	b _0201C304
_0201C274:
	bl DC_FlushAll
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x48]
	mov r3, r2
	ldr r1, [r0, #0xb8]
	mov r0, #6
	bl NNS_G2dBGSetupEx
	mov r0, #0xd
	str r0, [r4, #0x50]
	b _0201C304
_0201C2B0:
	bl DC_FlushAll
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x4c]
	mov r3, r2
	ldr r1, [r0, #0xb8]
	mov r0, #7
	bl NNS_G2dBGSetupEx
	mov r0, r4
	bl sub_0201C558
	mov r0, #0xf
	str r0, [r4, #0x50]
	b _0201C304
_0201C2F4:
	mov r0, r4
	bl sub_0201C5DC
	mov r0, #0x10
	str r0, [r4, #0x50]
_0201C304:
	ldr r0, [r4, #0x50]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0201C310: .word MAIN_BSS_0210CA6C
_0201C314: .word MAIN_BSS_020B26A0
_0201C318: .word s_data_message_etc_place_name_0208baa4
_0201C31C: .word s_data_message_etc_yakumono_info_0208bac4
_0201C320: .word s_data_message_etc_menu_mes_0208bae4
_0201C324: .word s_bt_03d_02d_0208bb00
_0201C328: .word s_data_targetOBJ_0208bb0c
_0201C32C: .word s_data_menu_0208bb1c
_0201C330: .word s_mt000_00_0208bb28
_0201C334: .word s_ma004_00_0208bb34
_0201C338: .word s_ma000_00_0208bb40
_0201C33C: .word s_ma001_00_0208bb4c

	arm_func_start sub_0201C340
sub_0201C340: ; 0x0201C340
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _0201C380
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _0201C454 ; =s_TGT_0208bb74
	ldr r2, _0201C458 ; =s_data_menu_mt000_bg_LZ_bin_0208bb58
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	arm_func_end sub_0201C340
_0201C380:
	str r0, [r4, #0x38]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201C3A8
	ldr r1, _0201C45C ; =s_TGT_mt000_NCGR_0208bb78
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
_0201C3A8:
	str r0, [r4, #0x3c]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201C3D0
	ldr r1, _0201C460 ; =s_TGT_mt000_NCLR_0208bb88
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
_0201C3D0:
	str r0, [r4, #0x40]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201C3F8
	ldr r1, _0201C464 ; =s_TGT_mt000_01_2_NSCR_0208bb98
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
_0201C3F8:
	str r0, [r4, #0x44]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201C420
	ldr r1, _0201C468 ; =s_TGT_mt000_02_NSCR_0208bbac
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
_0201C420:
	str r0, [r4, #0x48]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201C448
	ldr r1, _0201C46C ; =s_TGT_mt000_03_NSCR_0208bbc0
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
_0201C448:
	str r0, [r4, #0x4c]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0201C454: .word s_TGT_0208bb74
_0201C458: .word s_data_menu_mt000_bg_LZ_bin_0208bb58
_0201C45C: .word s_TGT_mt000_NCGR_0208bb78
_0201C460: .word s_TGT_mt000_NCLR_0208bb88
_0201C464: .word s_TGT_mt000_01_2_NSCR_0208bb98
_0201C468: .word s_TGT_mt000_02_NSCR_0208bbac
_0201C46C: .word s_TGT_mt000_03_NSCR_0208bbc0

	arm_func_start sub_0201C470
sub_0201C470: ; 0x0201C470
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0201C49C
	beq _0201C494
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0201C470
_0201C494:
	mov r0, #0
	str r0, [r4, #0x4c]
_0201C49C:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0201C4C0
	beq _0201C4B8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201C4B8:
	mov r0, #0
	str r0, [r4, #0x48]
_0201C4C0:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0201C4E4
	beq _0201C4DC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201C4DC:
	mov r0, #0
	str r0, [r4, #0x44]
_0201C4E4:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0201C508
	beq _0201C500
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201C500:
	mov r0, #0
	str r0, [r4, #0x3c]
_0201C508:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0201C52C
	beq _0201C524
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201C524:
	mov r0, #0
	str r0, [r4, #0x40]
_0201C52C:
	ldr r5, [r4, #0x38]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0201C54C
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
_0201C54C:
	mov r0, #0
	str r0, [r4, #0x38]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201C558
sub_0201C558: ; 0x0201C558
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr ip, _0201C5D8 ; =0x04001000
	mov lr, #0x1b
	ldr r1, [ip]
	ldr r0, [ip]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #0x1e
	orr r0, r1, r0, lsl #8
	str r0, [ip]
	ldrh r2, [ip, #0xa]
	add r0, ip, #0x50
	mov r1, #0
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [ip, #0xa]
	ldrh r4, [ip, #0xc]
	mov r2, #0x1e
	mov r3, #4
	bic r4, r4, #3
	orr r4, r4, #2
	strh r4, [ip, #0xc]
	ldrh r4, [ip, #0xe]
	bic r4, r4, #3
	orr r4, r4, #3
	strh r4, [ip, #0xe]
	str lr, [sp]
	bl G2x_SetBlendAlpha_
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0201C5D8: .word 0x04001000
	arm_func_end sub_0201C558

	arm_func_start sub_0201C5DC
sub_0201C5DC: ; 0x0201C5DC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xbc
	ldr r6, _0201C828 ; =DAT_02084574
	add r5, sp, #0x14
	mov sl, r0
	mov r4, #0xa
	arm_func_end sub_0201C5DC
_0201C5F4:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201C5F4
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	bl sub_0201001C
	mov r6, r0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #6
	bl sub_0200CC88
	mov r8, #0
	add sb, sp, #0x14
	mov r7, #0x40
	add r4, r6, #0x1000
	mov r5, r8
	mov fp, #2
_0201C654:
	ldr r0, [sb, #8]
	mov r1, r8
	str r0, [sp]
	ldr r0, [sb, #0xc]
	stmib sp, {r0, r7}
	str r5, [sp, #0xc]
	str fp, [sp, #0x10]
	ldr r0, [r4, #0x498]
	ldmia sb, {r2, r3}
	bl sub_0200CCD0
	add r8, r8, #1
	ldr r1, [sb]
	ldr r0, [sb, #4]
	cmp r8, #6
	mla r7, r1, r0, r7
	add sb, sb, #0x1c
	blt _0201C654
	ldr r0, [sp, #0x2c]
	mov r2, #1
	str r0, [sp]
	ldr r1, [sl, #0x2c]
	ldr r0, [sl]
	ldr r3, [r1, #8]
	sub r1, r2, #3
	add r0, r3, r0, lsl #3
	ldr r3, [r0, #4]
	add r0, r6, #0x1000
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	mov r1, #0
	bl sub_0200CDA0
	ldr r0, [sp, #0x48]
	mov r1, #1
	str r0, [sp]
	ldr r0, [sl, #0x34]
	mov r2, #0
	ldr r3, [r0, #8]
	add r0, r6, #0x1000
	ldr r3, [r3, #0x14]
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_0200CDA0
	ldr r0, [sp, #0x64]
	mov r3, #1
	str r0, [sp]
	ldr r0, [sl, #0x34]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r6, #0x1000
	ldr r4, [r1, #0x1c]
	mov r1, #2
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	bl sub_0200CDA0
	add r0, r6, #0x1000
	ldr r4, [r0, #0x498]
	ldrb r1, [sl, #0xb]
	ldr r0, [r0, #0x4b0]
	bl sub_02018B80
	ldr r2, [sp, #0x80]
	mov r1, #1
	str r2, [sp]
	stmib sp, {r0, r1}
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	mov r0, r4
	mov r1, #3
	bl sub_0200CDA0
	add r0, r6, #0x1000
	ldr r4, [r0, #0x498]
	ldrh r1, [sl, #0xe]
	ldr r0, [r0, #0x4b0]
	bl sub_02018B48
	ldr r2, [sp, #0x9c]
	mov r1, #1
	str r2, [sp]
	stmib sp, {r0, r1}
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x98]
	mov r0, r4
	mov r1, #4
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sl, #0x30]
	ldrh r1, [sl, #0x10]
	ldr r3, [r0, #8]
	add r0, r6, #0x1000
	add r1, r3, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #5
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	add sp, sp, #0xbc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0201C828: .word DAT_02084574

	arm_func_start sub_0201C82C
sub_0201C82C: ; 0x0201C82C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0201001C
	mov r1, r0
	ldr r0, [r4, #0x28]
	add r1, r1, #0x1000
	ldr r2, [r1, #0x5d0]
	ldrsh r1, [r0, #0xc]
	mov r2, r2, asr #0xc
	bl sub_0200EB28
	ldr r0, [r4, #0x18]
	bl sub_0200F64C
	ldr r0, [r4, #0x1c]
	bl sub_0200F64C
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201C82C

	arm_func_start sub_0201C874
sub_0201C874: ; 0x0201C874
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
	ldr r0, [r4, #0x18]
	bl sub_0200F71C
	ldr r0, [r4, #0x1c]
	bl sub_0200F71C
	ldr r0, [r4, #0x20]
	bl sub_0200F71C
	ldr r0, [r4, #0x24]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201C874

	arm_func_start sub_0201C8B0
sub_0201C8B0: ; 0x0201C8B0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0x2c]
	cmp r1, #0
	beq _0201C948
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0201C914
	mov r6, r4
	arm_func_end sub_0201C8B0
_0201C8D8:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201C900
	bl _ZdaPv
	ldr r0, [r5, #0x2c]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0201C900:
	ldr r1, [r5, #0x2c]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201C8D8
_0201C914:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201C930
	bl _ZdaPv
	ldr r0, [r5, #0x2c]
	mov r1, #0
	str r1, [r0, #8]
_0201C930:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _0201C948
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x2c]
_0201C948:
	ldr r1, [r5, #0x30]
	cmp r1, #0
	beq _0201C9D8
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0201C9A4
	mov r6, r4
_0201C968:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201C990
	bl _ZdaPv
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0201C990:
	ldr r1, [r5, #0x30]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201C968
_0201C9A4:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201C9C0
	bl _ZdaPv
	ldr r0, [r5, #0x30]
	mov r1, #0
	str r1, [r0, #8]
_0201C9C0:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0201C9D8
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x30]
_0201C9D8:
	ldr r1, [r5, #0x34]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0201CA34
	mov r6, r4
_0201C9F8:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201CA20
	bl _ZdaPv
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0201CA20:
	ldr r1, [r5, #0x34]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201C9F8
_0201CA34:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201CA50
	bl _ZdaPv
	ldr r0, [r5, #0x34]
	mov r1, #0
	str r1, [r0, #8]
_0201CA50:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x34]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0201CA6C
sub_0201CA6C: ; 0x0201CA6C
	mov r1, #0
	str r1, [r0]
	strh r1, [r0, #0xc]
	strb r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	strb r1, [r0, #0x14]
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	strb r1, [r0, #0x1a]
	strb r1, [r0, #0x1b]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	strh r1, [r0, #0x20]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	str r1, [r0, #0x54]
	str r1, [r0, #0x58]
	str r1, [r0, #0x5c]
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	str r1, [r0, #0x68]
	str r1, [r0, #0x6c]
	bx lr
	arm_func_end sub_0201CA6C

	arm_func_start sub_0201CAF0
sub_0201CAF0: ; 0x0201CAF0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201CB0C
	mov r0, r4
	bl sub_0201E8C0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201CAF0

	arm_func_start sub_0201CB0C
sub_0201CB0C: ; 0x0201CB0C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl sub_0201001C
	ldr r1, [r4, #0x48]
	mov r6, r0
	cmp r1, #0
	beq _0201CBAC
	ldr r0, [r1, #4]
	mov r7, #0
	cmp r0, #0
	bls _0201CB78
	mov r5, r7
	arm_func_end sub_0201CB0C
_0201CB3C:
	ldr r0, [r1, #8]
	add r0, r0, r7, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201CB64
	bl _ZdaPv
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #8]
	add r0, r0, r7, lsl #3
	str r5, [r0, #4]
_0201CB64:
	ldr r1, [r4, #0x48]
	add r7, r7, #1
	ldr r0, [r1, #4]
	cmp r7, r0
	blo _0201CB3C
_0201CB78:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201CB94
	bl _ZdaPv
	ldr r0, [r4, #0x48]
	mov r1, #0
	str r1, [r0, #8]
_0201CB94:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0201CBAC
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x48]
_0201CBAC:
	ldr r1, [r4, #0x4c]
	cmp r1, #0
	beq _0201CC3C
	ldr r0, [r1, #4]
	mov r7, #0
	cmp r0, #0
	bls _0201CC08
	mov r5, r7
_0201CBCC:
	ldr r0, [r1, #8]
	add r0, r0, r7, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201CBF4
	bl _ZdaPv
	ldr r0, [r4, #0x4c]
	ldr r0, [r0, #8]
	add r0, r0, r7, lsl #3
	str r5, [r0, #4]
_0201CBF4:
	ldr r1, [r4, #0x4c]
	add r7, r7, #1
	ldr r0, [r1, #4]
	cmp r7, r0
	blo _0201CBCC
_0201CC08:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201CC24
	bl _ZdaPv
	ldr r0, [r4, #0x4c]
	mov r1, #0
	str r1, [r0, #8]
_0201CC24:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0201CC3C
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x4c]
_0201CC3C:
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _0201CCCC
	ldr r0, [r1, #4]
	mov r7, #0
	cmp r0, #0
	bls _0201CC98
	mov r5, r7
_0201CC5C:
	ldr r0, [r1, #8]
	add r0, r0, r7, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201CC84
	bl _ZdaPv
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #8]
	add r0, r0, r7, lsl #3
	str r5, [r0, #4]
_0201CC84:
	ldr r1, [r4, #0x50]
	add r7, r7, #1
	ldr r0, [r1, #4]
	cmp r7, r0
	blo _0201CC5C
_0201CC98:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201CCB4
	bl _ZdaPv
	ldr r0, [r4, #0x50]
	mov r1, #0
	str r1, [r0, #8]
_0201CCB4:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0201CCCC
	bl _ZdlPv
	mov r0, #0
	str r0, [r4, #0x50]
_0201CCCC:
	ldr r5, [r4, #0x28]
	cmp r5, #0
	beq _0201CCF4
	beq _0201CCEC
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CCEC:
	mov r0, #0
	str r0, [r4, #0x28]
_0201CCF4:
	ldr r5, [r4, #0x2c]
	cmp r5, #0
	beq _0201CD1C
	beq _0201CD14
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CD14:
	mov r0, #0
	str r0, [r4, #0x2c]
_0201CD1C:
	ldr r5, [r4, #0x30]
	cmp r5, #0
	beq _0201CD44
	beq _0201CD3C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CD3C:
	mov r0, #0
	str r0, [r4, #0x30]
_0201CD44:
	ldr r5, [r4, #0x34]
	cmp r5, #0
	beq _0201CD6C
	beq _0201CD64
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CD64:
	mov r0, #0
	str r0, [r4, #0x34]
_0201CD6C:
	ldr r5, [r4, #0x38]
	cmp r5, #0
	beq _0201CD94
	beq _0201CD8C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CD8C:
	mov r0, #0
	str r0, [r4, #0x38]
_0201CD94:
	ldr r5, [r4, #0x3c]
	cmp r5, #0
	beq _0201CDBC
	beq _0201CDB4
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CDB4:
	mov r0, #0
	str r0, [r4, #0x3c]
_0201CDBC:
	ldr r5, [r4, #0x40]
	cmp r5, #0
	beq _0201CDE4
	beq _0201CDDC
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0201CDDC:
	mov r0, #0
	str r0, [r4, #0x40]
_0201CDE4:
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0x54]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0201CE00
sub_0201CE00: ; 0x0201CE00
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r7, _0201D574 ; =0x04001000
	mov r4, r0
	ldr r6, [r7]
	mov r5, r1
	bic r1, r6, #0x1f00
	orr r1, r1, #0x1f00
	str r1, [r7]
	ldr r1, [r4, #0x28]
	mov r7, r2
	mov r6, r3
	cmp r1, #0
	beq _0201CE3C
	bl sub_0201CB0C
	arm_func_end sub_0201CE00
_0201CE3C:
	stmia r4, {r5, r7}
	bl sub_0201001C
	mov r5, r0
	cmp r6, #0
	bne _0201CEB4
	mov r1, #0
	ldr r8, _0201D578 ; =MAIN_BSS_020B26A0
	mov r0, r1
	mov r3, r1
_0201CE60:
	cmp r0, #0
	blt _0201CE94
	cmp r0, #0x1f4
	bge _0201CE94
	mov r2, r0, asr #4
	add r2, r8, r2, lsl #2
	add r2, r2, #0x7000
	mov r6, r0, lsl #0x1c
	ldr r7, [r2, #0xc3c]
	mov r2, r6, lsr #0x1b
	mov r2, r7, lsr r2
	and r2, r2, #3
	b _0201CE98
_0201CE94:
	mov r2, r3
_0201CE98:
	add r0, r0, #1
	cmp r2, #2
	addhs r1, r1, #1
	cmp r0, #0x1f4
	blt _0201CE60
	strh r1, [r4, #0xc]
	b _0201CEB8
_0201CEB4:
	strh r6, [r4, #0xc]
_0201CEB8:
	ldr r1, [r4]
	cmp r1, #0
	beq _0201CED0
	ldr r2, [r4, #4]
	mov r0, r4
	bl sub_0201DF54
_0201CED0:
	mov r0, #0xb8
	bl _Znwm
	movs r8, r0
	beq _0201CEF0
	ldr r1, _0201D57C ; =s_data_message_etc_pokemon_info_0208bbd4
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r8, r0
_0201CEF0:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x48]
	ldr r1, [r8, #0x4c]
	mov r6, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r8, #0x4c]
	ldr r0, [r4, #0x48]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x48]
	mov r7, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x48]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201CFB8
_0201CF48:
	ldr r1, [r8, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r6, lsl #2]
	add r6, r6, #1
	str r1, [r0, r7, lsl #3]
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #8]
	ldr r0, [r0, r7, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x48]
	ldr r1, [r1, #8]
	add r1, r1, r7, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x48]
	ldr r0, [r8, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r6, lsl #2
	add r1, r2, r7, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r7, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x48]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r7, lsl #3]
	add r7, r7, #1
	cmp r7, r0
	add r6, r6, r1, lsr #2
	blo _0201CF48
_0201CFB8:
	cmp r8, #0
	beq _0201CFD0
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201CFD0:
	mov r0, #0xb8
	bl _Znwm
	movs r7, r0
	beq _0201CFF0
	ldr r1, _0201D580 ; =s_data_message_etc_menu_mes_0208bbf4
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r7, r0
_0201CFF0:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x4c]
	ldr r1, [r7, #0x4c]
	mov r8, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [r4, #0x4c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x4c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x4c]
	mov r6, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x4c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201D0B8
_0201D048:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r8, lsl #2]
	add r8, r8, #1
	str r1, [r0, r6, lsl #3]
	ldr r0, [r4, #0x4c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r6, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x4c]
	ldr r1, [r1, #8]
	add r1, r1, r6, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x4c]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r8, lsl #2
	add r1, r2, r6, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r6, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x4c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r6, lsl #3]
	add r6, r6, #1
	cmp r6, r0
	add r8, r8, r1, lsr #2
	blo _0201D048
_0201D0B8:
	cmp r7, #0
	beq _0201D0D0
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201D0D0:
	mov r0, #0xb8
	bl _Znwm
	movs r7, r0
	beq _0201D0F0
	ldr r1, _0201D584 ; =s_data_message_etc_assist_mes_0208bc10
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r7, r0
_0201D0F0:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x50]
	ldr r1, [r7, #0x4c]
	mov r8, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [r4, #0x50]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x50]
	mov r6, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201D1B8
_0201D148:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r8, lsl #2]
	add r8, r8, #1
	str r1, [r0, r6, lsl #3]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #8]
	ldr r0, [r0, r6, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x50]
	ldr r1, [r1, #8]
	add r1, r1, r6, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x50]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r8, lsl #2
	add r1, r2, r6, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r6, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x50]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r6, lsl #3]
	add r6, r6, #1
	cmp r6, r0
	add r8, r8, r1, lsr #2
	blo _0201D148
_0201D1B8:
	cmp r7, #0
	beq _0201D1D0
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201D1D0:
	mov r0, #0x44
	mov r6, #0
	bl _Znwm
	cmp r0, #0
	beq _0201D204
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201D204:
	str r0, [r4, #0x2c]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x2c]
	ldr r1, _0201D588 ; =s_data_menu_0208bc30
	ldr r2, _0201D58C ; =s_mt000_00_0208bc3c
	bl sub_0200EE14
	add r6, r6, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201D254
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1b4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201D254:
	str r0, [r4, #0x30]
	mov r0, #1
	str r0, [sp]
	mov r0, r6, asr #4
	add r3, r6, r0, lsr #27
	ldr r0, [r4, #0x30]
	ldr r1, _0201D588 ; =s_data_menu_0208bc30
	ldr r2, _0201D590 ; =s_ma004_00_0208bc48
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r6, r6, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201D2B0
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1d4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201D2B0:
	str r0, [r4, #0x34]
	mov r0, #2
	str r0, [sp]
	mov r0, r6, asr #4
	add r3, r6, r0, lsr #27
	ldr r0, [r4, #0x34]
	ldr r1, _0201D588 ; =s_data_menu_0208bc30
	ldr r2, _0201D594 ; =s_ma000_00_0208bc54
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r6, r6, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201D30C
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1f4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201D30C:
	str r0, [r4, #0x38]
	mov r0, #5
	str r0, [sp]
	mov r0, r6, asr #4
	add r3, r6, r0, lsr #27
	ldr r0, [r4, #0x38]
	ldr r1, _0201D588 ; =s_data_menu_0208bc30
	ldr r2, _0201D598 ; =s_ma001_00_0208bc60
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r6, r6, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201D368
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x274
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201D368:
	str r0, [r4, #0x3c]
	mov r0, #6
	str r0, [sp]
	mov r0, r6, asr #4
	add r3, r6, r0, lsr #27
	ldr r0, [r4, #0x3c]
	ldr r1, _0201D588 ; =s_data_menu_0208bc30
	ldr r2, _0201D59C ; =s_ma002_00_0208bc6c
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r6, r6, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201D3C4
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x284
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201D3C4:
	str r0, [r4, #0x40]
	mov r0, #7
	str r0, [sp]
	mov r0, r6, asr #4
	add r3, r6, r0, lsr #27
	ldr r0, [r4, #0x40]
	ldr r1, _0201D588 ; =s_data_menu_0208bc30
	ldr r2, _0201D5A0 ; =s_ma000_01_0208bc78
	mov r3, r3, asr #5
	bl sub_0200EE14
	add r1, r6, r0
	mov r0, r1, asr #4
	add r0, r1, r0, lsr #27
	mov r0, r0, asr #5
	str r0, [r4, #0x24]
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #0
	mov r2, #0x9d
	mov r3, #0x2e
	bl sub_0200F4FC
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #5
	mov r2, #0x9d
	mov r3, #0x52
	bl sub_0200F4FC
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #6
	mov r2, #0x9d
	mov r3, #0x76
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x25
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x37
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x49
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x5b
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x6d
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x7f
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #4
	mov r2, #0x38
	mov r3, #0x7b
	bl sub_0200F4FC
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #0x30]
	mov r1, #1
	mov r2, #0x38
	mov r3, #0
	bl sub_0200F4FC
	str r0, [r4, #0x44]
	ldr r0, [r4]
	cmp r0, #0
	beq _0201D54C
	mov r0, r4
	bl sub_0201E0A4
_0201D54C:
	mov r0, r4
	bl sub_0201E478
	mov r0, r4
	bl sub_0201E9A8
	mov r0, r4
	bl sub_0201EA2C
	mov r0, #0
	str r0, [r4, #0x54]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0201D574: .word 0x04001000
_0201D578: .word MAIN_BSS_020B26A0
_0201D57C: .word s_data_message_etc_pokemon_info_0208bbd4
_0201D580: .word s_data_message_etc_menu_mes_0208bbf4
_0201D584: .word s_data_message_etc_assist_mes_0208bc10
_0201D588: .word s_data_menu_0208bc30
_0201D58C: .word s_mt000_00_0208bc3c
_0201D590: .word s_ma004_00_0208bc48
_0201D594: .word s_ma000_00_0208bc54
_0201D598: .word s_ma001_00_0208bc60
_0201D59C: .word s_ma002_00_0208bc6c
_0201D5A0: .word s_ma000_01_0208bc78

	arm_func_start sub_0201D5A4
sub_0201D5A4: ; 0x0201D5A4
	mov r1, #0
	str r1, [r0, #0x70]
	bx lr
	arm_func_end sub_0201D5A4

	arm_func_start sub_0201D5B0
sub_0201D5B0: ; 0x0201D5B0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl sub_0201001C
	ldr r1, [r4, #0x70]
	mov r5, r0
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _0201DF10
_0201D5E0: ; jump table
	b _0201D620 ; case 0
	b _0201D6E4 ; case 1
	b _0201D7F0 ; case 2
	b _0201D8FC ; case 3
	b _0201DA08 ; case 4
	b _0201DA88 ; case 5
	b _0201DAFC ; case 6
	b _0201DB70 ; case 7
	b _0201DBE4 ; case 8
	b _0201DC58 ; case 9
	b _0201DCCC ; case 10
	b _0201DE38 ; case 11
	b _0201DE80 ; case 12
	b _0201DEBC ; case 13
	b _0201DF10 ; case 14
	b _0201DF00 ; case 15
	arm_func_end sub_0201D5B0
_0201D620:
	ldr r1, _0201DF24 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1f00
	str r0, [r1]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0201D648
	mov r0, r4
	bl sub_0201CB0C
_0201D648:
	str r8, [r4]
	str r7, [r4, #4]
	cmp r6, #0
	bne _0201D6BC
	mov r7, #0
	ldr r5, _0201DF28 ; =MAIN_BSS_020B26A0
	mov r6, r7
	mov r1, r7
_0201D668:
	cmp r6, #0
	blt _0201D69C
	cmp r6, #0x1f4
	bge _0201D69C
	mov r0, r6, asr #4
	add r0, r5, r0, lsl #2
	add r0, r0, #0x7000
	mov r2, r6, lsl #0x1c
	ldr r3, [r0, #0xc3c]
	mov r0, r2, lsr #0x1b
	mov r0, r3, lsr r0
	and r0, r0, #3
	b _0201D6A0
_0201D69C:
	mov r0, r1
_0201D6A0:
	add r6, r6, #1
	cmp r0, #2
	addhs r7, r7, #1
	cmp r6, #0x1f4
	blt _0201D668
	strh r7, [r4, #0xc]
	b _0201D6C0
_0201D6BC:
	strh r6, [r4, #0xc]
_0201D6C0:
	ldr r1, [r4]
	cmp r1, #0
	beq _0201D6D8
	ldr r2, [r4, #4]
	mov r0, r4
	bl sub_0201DF54
_0201D6D8:
	mov r0, #1
	str r0, [r4, #0x70]
	b _0201DF10
_0201D6E4:
	mov r0, #0xb8
	bl _Znwm
	movs r7, r0
	beq _0201D704
	ldr r1, _0201DF2C ; =s_data_message_etc_pokemon_info_0208bbd4
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r7, r0
_0201D704:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x48]
	ldr r1, [r7, #0x4c]
	mov r5, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [r4, #0x48]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x48]
	mov r6, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x48]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201D7CC
_0201D75C:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r5, lsl #2]
	add r5, r5, #1
	str r1, [r0, r6, lsl #3]
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #8]
	ldr r0, [r0, r6, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x48]
	ldr r1, [r1, #8]
	add r1, r1, r6, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x48]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r5, lsl #2
	add r1, r2, r6, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r6, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x48]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r6, lsl #3]
	add r6, r6, #1
	cmp r6, r0
	add r5, r5, r1, lsr #2
	blo _0201D75C
_0201D7CC:
	cmp r7, #0
	beq _0201D7E4
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201D7E4:
	mov r0, #2
	str r0, [r4, #0x70]
	b _0201DF10
_0201D7F0:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0201D810
	ldr r1, _0201DF30 ; =s_data_message_etc_menu_mes_0208bbf4
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
_0201D810:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x4c]
	ldr r1, [r6, #0x4c]
	mov r7, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r4, #0x4c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x4c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x4c]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x4c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201D8D8
_0201D868:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r7, lsl #2]
	add r7, r7, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r4, #0x4c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x4c]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x4c]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r7, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x4c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r7, r7, r1, lsr #2
	blo _0201D868
_0201D8D8:
	cmp r6, #0
	beq _0201D8F0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201D8F0:
	mov r0, #3
	str r0, [r4, #0x70]
	b _0201DF10
_0201D8FC:
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _0201D91C
	ldr r1, _0201DF34 ; =s_data_message_etc_assist_mes_0208bc10
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
_0201D91C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r4, #0x50]
	ldr r1, [r6, #0x4c]
	mov r7, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r4, #0x50]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r4, #0x50]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _0201D9E4
_0201D974:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r7, lsl #2]
	add r7, r7, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r4, #0x50]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r4, #0x50]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r7, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r4, #0x50]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r7, r7, r1, lsr #2
	blo _0201D974
_0201D9E4:
	cmp r6, #0
	beq _0201D9FC
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201D9FC:
	mov r0, #4
	str r0, [r4, #0x70]
	b _0201DF10
_0201DA08:
	mov r1, #0
	str r1, [r4, #0x74]
	mov r0, #0x44
	str r1, [r4, #0x78]
	bl _Znwm
	cmp r0, #0
	beq _0201DA44
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201DA44:
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [sp]
	ldr r2, [r4, #0x74]
	ldr r0, [r4, #0x2c]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201DF38 ; =s_data_menu_0208bc30
	ldr r2, _0201DF3C ; =s_mt000_00_0208bc3c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x74]
	mov r1, #5
	add r0, r2, r0
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	b _0201DF10
_0201DA88:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201DAB8
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1b4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201DAB8:
	str r0, [r4, #0x30]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4, #0x74]
	ldr r0, [r4, #0x30]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201DF38 ; =s_data_menu_0208bc30
	ldr r2, _0201DF40 ; =s_ma004_00_0208bc48
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x74]
	mov r1, #6
	add r0, r2, r0
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	b _0201DF10
_0201DAFC:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201DB2C
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1d4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201DB2C:
	str r0, [r4, #0x34]
	mov r0, #2
	str r0, [sp]
	ldr r2, [r4, #0x74]
	ldr r0, [r4, #0x34]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201DF38 ; =s_data_menu_0208bc30
	ldr r2, _0201DF44 ; =s_ma000_00_0208bc54
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x74]
	mov r1, #7
	add r0, r2, r0
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	b _0201DF10
_0201DB70:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201DBA0
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x1f4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201DBA0:
	str r0, [r4, #0x38]
	mov r0, #5
	str r0, [sp]
	ldr r2, [r4, #0x74]
	ldr r0, [r4, #0x38]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201DF38 ; =s_data_menu_0208bc30
	ldr r2, _0201DF48 ; =s_ma001_00_0208bc60
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x74]
	mov r1, #8
	add r0, r2, r0
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	b _0201DF10
_0201DBE4:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201DC14
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x274
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201DC14:
	str r0, [r4, #0x3c]
	mov r0, #6
	str r0, [sp]
	ldr r2, [r4, #0x74]
	ldr r0, [r4, #0x3c]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201DF38 ; =s_data_menu_0208bc30
	ldr r2, _0201DF4C ; =s_ma002_00_0208bc6c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x74]
	mov r1, #9
	add r0, r2, r0
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	b _0201DF10
_0201DC58:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201DC88
	mov r1, #0x40
	str r1, [sp]
	add r2, r5, #0x1000
	add r1, r5, #0x284
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201DC88:
	str r0, [r4, #0x40]
	mov r0, #7
	str r0, [sp]
	ldr r2, [r4, #0x74]
	ldr r0, [r4, #0x40]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _0201DF38 ; =s_data_menu_0208bc30
	ldr r2, _0201DF50 ; =s_ma000_01_0208bc78
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r2, [r4, #0x74]
	mov r1, #0xa
	add r0, r2, r0
	str r0, [r4, #0x74]
	str r1, [r4, #0x70]
	b _0201DF10
_0201DCCC:
	ldr r2, [r4, #0x74]
	mov r1, #3
	mov r0, r2, asr #4
	add r0, r2, r0, lsr #27
	mov r0, r0, asr #5
	str r0, [r4, #0x24]
	str r1, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #0
	mov r2, #0x9d
	mov r3, #0x2e
	bl sub_0200F4FC
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #5
	mov r2, #0x9d
	mov r3, #0x52
	bl sub_0200F4FC
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #6
	mov r2, #0x9d
	mov r3, #0x76
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x25
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x37
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x49
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x5b
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x6d
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	mov r2, #0x78
	mov r3, #0x7f
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, #4
	mov r2, #0x38
	mov r3, #0x7b
	bl sub_0200F4FC
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #0x30]
	mov r1, #1
	mov r2, #0x38
	mov r3, #0
	bl sub_0200F4FC
	str r0, [r4, #0x44]
	ldr r0, [r4]
	cmp r0, #0
	beq _0201DE2C
	mov r0, r4
	bl sub_0201E0A4
_0201DE2C:
	mov r0, #0xb
	str r0, [r4, #0x70]
	b _0201DF10
_0201DE38:
	bl DC_FlushAll
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0x64]
	ldr r2, [r4, #0x5c]
	ldr r0, [r4, #0x60]
	ldr r1, [r1, #0xb8]
	ldr r2, [r2, #0xb8]
	ldr r3, [r0, #0xb8]
	mov r0, #5
	bl NNS_G2dBGSetupEx
	mov r0, #0xc
	str r0, [r4, #0x70]
	b _0201DF10
_0201DE80:
	bl DC_FlushAll
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x68]
	mov r3, r2
	ldr r1, [r0, #0xb8]
	mov r0, #6
	bl NNS_G2dBGSetupEx
	mov r0, #0xd
	str r0, [r4, #0x70]
	b _0201DF10
_0201DEBC:
	bl DC_FlushAll
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x6c]
	mov r3, r2
	ldr r1, [r0, #0xb8]
	mov r0, #7
	bl NNS_G2dBGSetupEx
	mov r0, r4
	bl sub_0201E9A8
	mov r0, #0xf
	str r0, [r4, #0x70]
	b _0201DF10
_0201DF00:
	mov r0, r4
	bl sub_0201EA2C
	mov r0, #0x10
	str r0, [r4, #0x70]
_0201DF10:
	mov r0, #0
	str r0, [r4, #0x54]
	ldr r0, [r4, #0x70]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0201DF24: .word 0x04001000
_0201DF28: .word MAIN_BSS_020B26A0
_0201DF2C: .word s_data_message_etc_pokemon_info_0208bbd4
_0201DF30: .word s_data_message_etc_menu_mes_0208bbf4
_0201DF34: .word s_data_message_etc_assist_mes_0208bc10
_0201DF38: .word s_data_menu_0208bc30
_0201DF3C: .word s_mt000_00_0208bc3c
_0201DF40: .word s_ma004_00_0208bc48
_0201DF44: .word s_ma000_00_0208bc54
_0201DF48: .word s_ma001_00_0208bc60
_0201DF4C: .word s_ma002_00_0208bc6c
_0201DF50: .word s_ma000_01_0208bc78

	arm_func_start sub_0201DF54
sub_0201DF54: ; 0x0201DF54
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r7, r1
	mov r5, r2
	bl sub_0201001C
	mov r4, r0
	str r7, [r6]
	mov r1, r7, lsl #0x10
	str r5, [r6, #4]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x434]
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	mov r5, r0
	ldrb r0, [r5, #3]
	strb r0, [r6, #0xe]
	ldrb r0, [r5, #4]
	strh r0, [r6, #0x10]
	ldrh r0, [r5]
	strh r0, [r6, #0x16]
	ldr r0, [r6]
	cmp r0, #0
	moveq r0, #0
	streqh r0, [r6, #0x12]
	beq _0201DFD8
	ldrh r2, [r6, #0x16]
	ldr r1, _0201E090 ; =DAT_0208c55c
	ldr r0, _0201E094 ; =0x0000FFFF
	mov r2, r2, lsl #1
	ldrh r1, [r1, r2]
	cmp r1, r0
	ldreq r1, _0201E098 ; =0x000003E7
	strh r1, [r6, #0x12]
	arm_func_end sub_0201DF54
_0201DFD8:
	ldrb r0, [r5, #2]
	strh r0, [r6, #0x18]
	ldrb r0, [r5, #5]
	strb r0, [r6, #0x1a]
	ldrb r0, [r5, #6]
	strb r0, [r6, #0x1b]
	cmp r0, #9
	moveq r0, #0
	streqb r0, [r6, #0x1b]
	mov r0, #4
	strb r0, [r6, #0x14]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0201E074
	ldr r0, [r4, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	cmp r0, #0
	ldrneh r2, [r6, #0x16]
	ldrne r0, _0201E09C ; =0x00000141
	cmpne r2, r0
	beq _0201E074
	cmp r2, #0
	ldr r1, _0201E0A0 ; =MAIN_BSS_020B26A0
	blt _0201E06C
	cmp r2, #0x1f4
	bge _0201E06C
	mov r0, r2, asr #4
	add r0, r1, r0, lsl #2
	add r0, r0, #0x7000
	mov r1, r2, lsl #0x1c
	ldr r2, [r0, #0xeb0]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #3
	b _0201E070
_0201E06C:
	mov r0, #3
_0201E070:
	strb r0, [r6, #0x14]
_0201E074:
	ldrh r0, [r5, #0x10]
	strh r0, [r6, #0x1c]
	ldrh r0, [r5, #0x12]
	strh r0, [r6, #0x1e]
	ldr r0, [r5, #0x14]
	strh r0, [r6, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0201E090: .word DAT_0208c55c
_0201E094: .word 0x0000FFFF
_0201E098: .word 0x000003E7
_0201E09C: .word 0x00000141
_0201E0A0: .word MAIN_BSS_020B26A0

	arm_func_start sub_0201E0A4
sub_0201E0A4: ; 0x0201E0A4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	bl sub_0201001C
	ldr r1, [r5, #4]
	mov r4, r0
	cmp r1, #0
	ldr r0, [r5, #0x34]
	bne _0201E160
	bl sub_0200F6C4
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r5, #0x1a]
	ldr r0, [r5, #0x34]
	mov r2, #0x94
	mov r3, #0x7e
	bl sub_0200F4FC
	ldr r0, [r5, #0x38]
	bl sub_0200F6C4
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r5, #0x1b]
	ldr r0, [r5, #0x38]
	mov r2, #0xa0
	mov r3, #0x7e
	bl sub_0200F4FC
	ldr r0, [r5, #0x3c]
	bl sub_0200F6C4
	ldrb r1, [r5, #0x14]
	cmp r1, #4
	bhs _0201E138
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	mov r2, #0x64
	mov r3, #0x68
	bl sub_0200F4FC
	arm_func_end sub_0201E0A4
_0201E138:
	ldr r0, [r5, #0x40]
	bl sub_0200F6C4
	mov r0, #0
	str r0, [sp]
	ldrh r1, [r5, #0x10]
	ldr r0, [r5, #0x40]
	mov r2, #0x94
	mov r3, #0x5a
	bl sub_0200F4FC
	b _0201E17C
_0201E160:
	bl sub_0200F6C4
	ldr r0, [r5, #0x38]
	bl sub_0200F6C4
	ldr r0, [r5, #0x3c]
	bl sub_0200F6C4
	ldr r0, [r5, #0x40]
	bl sub_0200F6C4
_0201E17C:
	ldr r0, [r5, #4]
	cmp r0, #2
	add r0, sp, #4
	bne _0201E198
	ldr r1, _0201E26C ; =s_bp000_0208bc84
	bl OS_SPrintf
	b _0201E1A4
_0201E198:
	ldrh r2, [r5, #0x16]
	ldr r1, _0201E270 ; =s_bp_03d_0208bc8c
	bl OS_SPrintf
_0201E1A4:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0201E1E8
	ldr r1, _0201E274 ; =0x07000630
	mov r0, #0xc0
	mov r2, #0xa0
	bl MIi_CpuClearFast
	ldr r6, [r5, #0x28]
	cmp r6, #0
	beq _0201E1E8
	beq _0201E1E0
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_0201E1E0:
	mov r0, #0
	str r0, [r5, #0x28]
_0201E1E8:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201E218
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x254
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201E218:
	str r0, [r5, #0x28]
	mov r0, #0xb
	str r0, [sp]
	ldr r0, [r5, #0x28]
	ldr r3, [r5, #0x24]
	ldr r1, _0201E278 ; =s_data_pokeOBJ_0208bc94
	add r2, sp, #4
	bl sub_0200F168
	ldr r0, [r5, #0x28]
	bl sub_0200F3EC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r1, #0
	mov r2, #0x38
	mov r3, #0x50
	bl sub_0200F4FC
	mov r0, #0
	str r0, [r5, #0x54]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0201E26C: .word s_bp000_0208bc84
_0201E270: .word s_bp_03d_0208bc8c
_0201E274: .word 0x07000630
_0201E278: .word s_data_pokeOBJ_0208bc94

	arm_func_start sub_0201E27C
sub_0201E27C: ; 0x0201E27C
	mov r1, #1
	str r1, [r0, #0x54]
	bx lr
	arm_func_end sub_0201E27C

	arm_func_start sub_0201E288
sub_0201E288: ; 0x0201E288
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov r5, r0
	bl sub_0201001C
	mov r4, r0
	cmp r6, #3
	addls pc, pc, r6, lsl #2
	b _0201E45C
_0201E2AC: ; jump table
	b _0201E45C ; case 0
	b _0201E2BC ; case 1
	b _0201E368 ; case 2
	b _0201E42C ; case 3
	arm_func_end sub_0201E288
_0201E2BC:
	ldr r0, [r5, #0x34]
	bl sub_0200F6C4
	ldr r0, [r5, #0x38]
	bl sub_0200F6C4
	ldr r0, [r5, #0x3c]
	bl sub_0200F6C4
	ldr r0, [r5, #0x40]
	bl sub_0200F6C4
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0201E360
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r5, #0x1a]
	ldr r0, [r5, #0x34]
	mov r2, #0x94
	mov r3, #0x7e
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r5, #0x1b]
	ldr r0, [r5, #0x38]
	mov r2, #0xa0
	mov r3, #0x7e
	bl sub_0200F4FC
	ldrb r1, [r5, #0x14]
	cmp r1, #4
	bhs _0201E344
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	mov r2, #0x64
	mov r3, #0x68
	bl sub_0200F4FC
_0201E344:
	mov r0, #0
	str r0, [sp]
	ldrh r1, [r5, #0x10]
	ldr r0, [r5, #0x40]
	mov r2, #0x94
	mov r3, #0x5a
	bl sub_0200F4FC
_0201E360:
	mov r6, #2
	b _0201E45C
_0201E368:
	ldr r0, [r5, #4]
	cmp r0, #2
	add r0, sp, #4
	bne _0201E384
	ldr r1, _0201E468 ; =s_bp000_0208bc84
	bl OS_SPrintf
	b _0201E390
_0201E384:
	ldrh r2, [r5, #0x16]
	ldr r1, _0201E46C ; =s_bp_03d_0208bc8c
	bl OS_SPrintf
_0201E390:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0201E3D4
	ldr r1, _0201E470 ; =0x07000630
	mov r0, #0xc0
	mov r2, #0xa0
	bl MIi_CpuClearFast
	ldr r6, [r5, #0x28]
	cmp r6, #0
	beq _0201E3D4
	beq _0201E3CC
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_0201E3CC:
	mov r0, #0
	str r0, [r5, #0x28]
_0201E3D4:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _0201E404
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x254
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_0201E404:
	str r0, [r5, #0x28]
	mov r0, #0xb
	str r0, [sp]
	ldr r0, [r5, #0x28]
	ldr r3, [r5, #0x24]
	ldr r1, _0201E474 ; =s_data_pokeOBJ_0208bc94
	add r2, sp, #4
	bl sub_0200F168
	mov r6, #3
	b _0201E45C
_0201E42C:
	ldr r0, [r5, #0x28]
	bl sub_0200F3EC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r1, #0
	mov r2, #0x38
	mov r3, #0x50
	bl sub_0200F4FC
	mov r0, r5
	bl sub_0201EC80
	mov r6, #0
_0201E45C:
	mov r0, r6
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0201E468: .word s_bp000_0208bc84
_0201E46C: .word s_bp_03d_0208bc8c
_0201E470: .word 0x07000630
_0201E474: .word s_data_pokeOBJ_0208bc94

	arm_func_start sub_0201E478
sub_0201E478: ; 0x0201E478
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _0201E4B8
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0201E698 ; =s_BGS_0208bca4
	ldr r2, _0201E69C ; =s_data_menu_mt000_bg_LZ_bin_0208bca8
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r4, r0
	arm_func_end sub_0201E478
_0201E4B8:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _0201E4E0
	ldr r1, _0201E6A0 ; =s_BGS_mt000_NCGR_0208bcc4
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
	mov r5, r0
_0201E4E0:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _0201E508
	ldr r1, _0201E6A4 ; =s_BGS_mt000_NCLR_0208bcd4
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov r6, r0
_0201E508:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _0201E530
	ldr r1, _0201E6A8 ; =s_BGS_mt000_01_1_NSCR_0208bce4
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r7, r0
_0201E530:
	mov r0, #0xbc
	bl _Znwm
	movs r8, r0
	beq _0201E558
	ldr r1, _0201E6AC ; =s_BGS_mt000_02_NSCR_0208bcf8
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r8, r0
_0201E558:
	mov r0, #0xbc
	bl _Znwm
	movs sb, r0
	beq _0201E580
	ldr r1, _0201E6B0 ; =s_BGS_mt000_03_NSCR_0208bd0c
	mov r3, #0
	mov r2, #1
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov sb, r0
_0201E580:
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
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r8, #0xb8]
	mov r3, r2
	mov r0, #6
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [sb, #0xb8]
	mov r0, #7
	mov r3, r2
	bl NNS_G2dBGSetupEx
	cmp r7, #0
	beq _0201E614
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E614:
	cmp r8, #0
	beq _0201E62C
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E62C:
	cmp sb, #0
	beq _0201E644
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E644:
	cmp r5, #0
	beq _0201E65C
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E65C:
	cmp r6, #0
	beq _0201E674
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E674:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0201E698: .word s_BGS_0208bca4
_0201E69C: .word s_data_menu_mt000_bg_LZ_bin_0208bca8
_0201E6A0: .word s_BGS_mt000_NCGR_0208bcc4
_0201E6A4: .word s_BGS_mt000_NCLR_0208bcd4
_0201E6A8: .word s_BGS_mt000_01_1_NSCR_0208bce4
_0201E6AC: .word s_BGS_mt000_02_NSCR_0208bcf8
_0201E6B0: .word s_BGS_mt000_03_NSCR_0208bd0c

	arm_func_start sub_0201E6B4
sub_0201E6B4: ; 0x0201E6B4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r5, [r4, #0x58]
	cmp r5, #0
	beq _0201E6E8
	beq _0201E6E0
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_0201E6B4
_0201E6E0:
	mov r0, #0
	str r0, [r4, #0x58]
_0201E6E8:
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _0201E71C
	mov r3, #1
	str r3, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	ldr r1, _0201E8A4 ; =s_PTC_0208bd20
	ldr r2, _0201E8A8 ; =s_data_menu_mt000_bg_LZ_bin_0208bca8
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
_0201E71C:
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _0201E744
	beq _0201E73C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E73C:
	mov r0, #0
	str r0, [r4, #0x5c]
_0201E744:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201E768
	ldr r1, _0201E8AC ; =s_PTC_mt000_NCGR_0208bd24
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
_0201E768:
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0201E790
	beq _0201E788
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E788:
	mov r0, #0
	str r0, [r4, #0x60]
_0201E790:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201E7B4
	ldr r1, _0201E8B0 ; =s_PTC_mt000_NCLR_0208bd34
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
_0201E7B4:
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _0201E7DC
	beq _0201E7D4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E7D4:
	mov r0, #0
	str r0, [r4, #0x64]
_0201E7DC:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201E800
	ldr r1, _0201E8B4 ; =s_PTC_mt000_01_1_NSCR_0208bd44
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
_0201E800:
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0201E828
	beq _0201E820
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E820:
	mov r0, #0
	str r0, [r4, #0x68]
_0201E828:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201E84C
	ldr r1, _0201E8B8 ; =s_PTC_mt000_02_NSCR_0208bd58
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
_0201E84C:
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _0201E874
	beq _0201E86C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E86C:
	mov r0, #0
	str r0, [r4, #0x6c]
_0201E874:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _0201E898
	ldr r1, _0201E8BC ; =s_PTC_mt000_03_NSCR_0208bd6c
	mov r3, #0
	mov r2, #2
	str r3, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
_0201E898:
	str r0, [r4, #0x6c]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0201E8A4: .word s_PTC_0208bd20
_0201E8A8: .word s_data_menu_mt000_bg_LZ_bin_0208bca8
_0201E8AC: .word s_PTC_mt000_NCGR_0208bd24
_0201E8B0: .word s_PTC_mt000_NCLR_0208bd34
_0201E8B4: .word s_PTC_mt000_01_1_NSCR_0208bd44
_0201E8B8: .word s_PTC_mt000_02_NSCR_0208bd58
_0201E8BC: .word s_PTC_mt000_03_NSCR_0208bd6c

	arm_func_start sub_0201E8C0
sub_0201E8C0: ; 0x0201E8C0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _0201E8EC
	beq _0201E8E4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_0201E8C0
_0201E8E4:
	mov r0, #0
	str r0, [r4, #0x6c]
_0201E8EC:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0201E910
	beq _0201E908
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E908:
	mov r0, #0
	str r0, [r4, #0x68]
_0201E910:
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _0201E934
	beq _0201E92C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E92C:
	mov r0, #0
	str r0, [r4, #0x64]
_0201E934:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _0201E958
	beq _0201E950
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E950:
	mov r0, #0
	str r0, [r4, #0x5c]
_0201E958:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0201E97C
	beq _0201E974
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0201E974:
	mov r0, #0
	str r0, [r4, #0x60]
_0201E97C:
	ldr r5, [r4, #0x58]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0201E99C
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
_0201E99C:
	mov r0, #0
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201E9A8
sub_0201E9A8: ; 0x0201E9A8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr ip, _0201EA28 ; =0x04001000
	mov lr, #0x1b
	ldr r1, [ip]
	ldr r0, [ip]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #0xe
	orr r0, r1, r0, lsl #8
	str r0, [ip]
	ldrh r2, [ip, #0xa]
	add r0, ip, #0x50
	mov r1, #0
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [ip, #0xa]
	ldrh r4, [ip, #0xc]
	mov r2, #0x1e
	mov r3, #4
	bic r4, r4, #3
	orr r4, r4, #2
	strh r4, [ip, #0xc]
	ldrh r4, [ip, #0xe]
	bic r4, r4, #3
	orr r4, r4, #3
	strh r4, [ip, #0xe]
	str lr, [sp]
	bl G2x_SetBlendAlpha_
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0201EA28: .word 0x04001000
	arm_func_end sub_0201E9A8

	arm_func_start sub_0201EA2C
sub_0201EA2C: ; 0x0201EA2C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x12c
	ldr r6, _0201EC74 ; =DAT_02084788
	add r5, sp, #0x14
	mov sl, r0
	mov r4, #0x11
	arm_func_end sub_0201EA2C
_0201EA44:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201EA44
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	bl sub_0201001C
	mov r6, r0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #0xa
	bl sub_0200CC88
	mov r8, #0
	add sb, sp, #0x14
	mov r7, #0x40
	add r4, r6, #0x1000
	mov r5, r8
	mov fp, #2
_0201EAA4:
	ldr r0, [sb, #8]
	mov r1, r8
	str r0, [sp]
	ldr r0, [sb, #0xc]
	stmib sp, {r0, r7}
	str r5, [sp, #0xc]
	str fp, [sp, #0x10]
	ldr r0, [r4, #0x498]
	ldmia sb, {r2, r3}
	bl sub_0200CCD0
	add r8, r8, #1
	ldr r1, [sb]
	ldr r0, [sb, #4]
	cmp r8, #0xa
	mla r7, r1, r0, r7
	add sb, sb, #0x1c
	blt _0201EAA4
	ldr r0, [sp, #0x2c]
	mov r1, #0
	str r0, [sp]
	ldr r2, [sl, #0x4c]
	add r0, r6, #0x1000
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x24]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_0200CDA0
	ldr r0, [sp, #0x2c]
	ldr r3, _0201EC78 ; =0x51EB851F
	str r0, [sp]
	ldrh r2, [sl, #0xc]
	ldr r5, [sl, #0x4c]
	mov r1, #0
	mov r0, r2, lsr #0x1f
	smull r2, r4, r3, r2
	add r4, r0, r4, asr #5
	ldr r2, [r5, #8]
	add r0, r4, #8
	add r0, r2, r0, lsl #3
	ldr r2, [r0, #4]
	add r0, r6, #0x1000
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0x28]
	mov r2, #0x5c
	bl sub_0200CDA0
	ldr r0, [sp, #0x2c]
	ldr r2, _0201EC7C ; =0x66666667
	str r0, [sp]
	ldrh r4, [sl, #0xc]
	ldr r0, [sl, #0x4c]
	mov r3, #0xa
	smull r1, r5, r2, r4
	mov r1, r4, lsr #0x1f
	add r5, r1, r5, asr #2
	smull r1, r4, r2, r5
	mov r1, r5, lsr #0x1f
	add r4, r1, r4, asr #2
	smull r1, r2, r3, r4
	sub r4, r5, r1
	ldr r0, [r0, #8]
	add r1, r4, #8
	add r0, r0, r1, lsl #3
	ldr r0, [r0, #4]
	mov r1, #0
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0x28]
	mov r2, #0x66
	bl sub_0200CDA0
	ldr r0, [sp, #0x2c]
	ldr r1, _0201EC7C ; =0x66666667
	str r0, [sp]
	ldrh r4, [sl, #0xc]
	ldr r0, [sl, #0x4c]
	add r3, r6, #0x1000
	ldr r6, [r0, #8]
	smull r0, r5, r1, r4
	mov r0, r4, lsr #0x1f
	mov r2, #0xa
	add r5, r0, r5, asr #2
	smull r0, r1, r2, r5
	sub r5, r4, r0
	add r0, r5, #8
	add r0, r6, r0, lsl #3
	ldr r0, [r0, #4]
	mov r1, #0
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, [r3, #0x498]
	ldr r3, [sp, #0x28]
	mov r2, #0x70
	bl sub_0200CDA0
	ldr r0, [sl, #8]
	cmp r0, #0
	mov r0, sl
	bne _0201EC50
	bl sub_0201F024
	b _0201EC54
_0201EC50:
	bl sub_0201F38C
_0201EC54:
	ldr r0, [sl]
	cmp r0, #0
	addeq sp, sp, #0x12c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	bl sub_0201EC80
	add sp, sp, #0x12c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0201EC74: .word DAT_02084788
_0201EC78: .word 0x51EB851F
_0201EC7C: .word 0x66666667

	arm_func_start sub_0201EC80
sub_0201EC80: ; 0x0201EC80
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x148
	ldr r6, _0201F018 ; =DAT_020848a0
	add r5, sp, #0x30
	mov r7, r0
	mov r4, #0x11
	arm_func_end sub_0201EC80
_0201EC98:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201EC98
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	bl sub_0201001C
	mov r4, r0
	mov r6, #0
	add r5, r4, #0x1000
_0201ECC0:
	cmp r6, #3
	ble _0201ECD4
	ldr r0, [r5, #0x498]
	mov r1, r6
	bl sub_0200CF7C
_0201ECD4:
	add r6, r6, #1
	cmp r6, #0xa
	blt _0201ECC0
	ldr r0, [r7]
	cmp r0, #0
	ble _0201EF48
	ldrh r0, [r7, #0x12]
	mov r2, #0
	cmp r0, #0x3e8
	bhs _0201EE5C
	ldr r6, [sp, #0xb4]
	ldr r5, [sp, #0xb8]
	add r0, r4, #0x1000
	str r5, [sp]
	ldr r1, [r7, #0x4c]
	mov r3, r6
	ldr r1, [r1, #8]
	ldr ip, [r1, #0x3c]
	mov r1, #4
	str ip, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0xb0]
	bl sub_0200CDA0
	str r5, [sp]
	ldrh r1, [r7, #0x12]
	ldr r2, _0201F01C ; =0x51EB851F
	ldr ip, [r7, #0x4c]
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	add r0, r3, #8
	ldr r1, [ip, #8]
	mov r3, r6
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #4
	mov r2, #0x1c
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	ldrh ip, [r7, #0x12]
	ldr r3, _0201F020 ; =0x66666667
	ldr r1, [r0, #8]
	smull r2, r0, r3, ip
	mov r2, ip, lsr #0x1f
	add r0, r2, r0, asr #2
	smull r2, lr, r3, r0
	mov r2, r0, lsr #0x1f
	add lr, r2, lr, asr #2
	mov ip, #0xa
	smull r2, r3, ip, lr
	sub lr, r0, r2
	add r0, lr, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #4
	mov r2, #0x26
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	ldrh r5, [r7, #0x12]
	ldr ip, [r0, #8]
	ldr r2, _0201F020 ; =0x66666667
	mov r3, r6
	smull r1, r6, r2, r5
	mov r0, r5, lsr #0x1f
	add r6, r0, r6, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r6
	sub r6, r5, r0
	add r0, r6, #8
	add r0, ip, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #4
	mov r2, #0x30
	bl sub_0200CDA0
	b _0201EEA4
_0201EE5C:
	ldr r0, [sp, #0xb8]
	mov r3, #1
	str r0, [sp]
	ldr r0, [r7, #0x4c]
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr r5, [r1, #0x1ec]
	mov r1, #4
	str r5, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldrh r0, [r7, #0x12]
	sub r0, r0, #0x3e8
	strh r0, [r7, #0x12]
_0201EEA4:
	ldr r0, [r7, #4]
	cmp r0, #1
	bgt _0201EF08
	add r0, r4, #0x1000
	ldrh r1, [r7, #0x16]
	ldr r0, [r0, #0x4b0]
	bl sub_02018B10
	add r1, sp, #0x10
	mov r2, #0x1f
	bl sub_0202BC74
	ldr r1, [sp, #0x128]
	add r0, sp, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	mov r1, #8
	bl sub_0200CDA0
	b _0201EF48
_0201EF08:
	ldr r0, [sp, #0x128]
	mov r3, #1
	str r0, [sp]
	ldr r0, [r7, #0x4c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr r5, [r1, #0x94]
	mov r1, #8
	str r5, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_0200CDA0
_0201EF48:
	ldr r0, [r7]
	cmp r0, #0
	ble _0201EFE0
	ldr r0, [r7, #4]
	mov r2, #0
	cmp r0, #0
	bne _0201EFA8
	ldr r0, [sp, #0x144]
	str r0, [sp]
	ldr r0, [r7, #0x48]
	ldrh r1, [r7, #0x16]
	ldr r3, [r0, #8]
	add r0, r4, #0x1000
	add r1, r3, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #9
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x13c]
	ldr r3, [sp, #0x140]
	bl sub_0200CDA0
	b _0201EFE0
_0201EFA8:
	ldr r0, [sp, #0x144]
	str r0, [sp]
	ldr r1, [r7, #0x4c]
	add r0, r4, #0x1000
	ldr r3, [r1, #8]
	mov r1, #9
	ldr r3, [r3, #0x94]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x13c]
	ldr r3, [sp, #0x140]
	bl sub_0200CDA0
_0201EFE0:
	ldr r0, [r7]
	cmp r0, #0
	addle sp, sp, #0x148
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #8]
	cmp r0, #0
	mov r0, r7
	bne _0201F00C
	bl sub_0201F124
	add sp, sp, #0x148
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0201F00C:
	bl sub_0201F48C
	add sp, sp, #0x148
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0201F018: .word DAT_020848a0
_0201F01C: .word 0x51EB851F
_0201F020: .word 0x66666667

	arm_func_start sub_0201F024
sub_0201F024: ; 0x0201F024
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x64
	ldr lr, _0201F120 ; =DAT_020846c4
	add ip, sp, #0x10
	mov r5, r0
	mov r4, #5
	arm_func_end sub_0201F024
_0201F03C:
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201F03C
	ldr r0, [lr]
	str r0, [ip]
	bl sub_0201001C
	ldr r1, [sp, #0x28]
	mov r4, r0
	str r1, [sp]
	ldr r0, [r5, #0x4c]
	mov r1, #1
	ldr r0, [r0, #8]
	mov r2, #0
	ldr r3, [r0, #0x2c]
	add r0, r4, #0x1000
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200CDA0
	ldr r0, [sp, #0x44]
	mov r3, #1
	str r0, [sp]
	ldr r0, [r5, #0x4c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr ip, [r1, #0x34]
	mov r1, #2
	str ip, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	bl sub_0200CDA0
	add r0, r4, #0x1000
	ldr r1, [sp, #0x60]
	mov r3, #1
	str r1, [sp]
	ldr r1, [r5, #0x4c]
	mov r2, #0
	ldr r4, [r1, #8]
	mov r1, #3
	ldr r4, [r4, #0x1c]
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	bl sub_0200CDA0
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0201F120: .word DAT_020846c4

	arm_func_start sub_0201F124
sub_0201F124: ; 0x0201F124
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	ldr ip, _0201F388 ; =DAT_02084718
	add r5, sp, #0x10
	mov r6, r0
	mov r4, #7
	arm_func_end sub_0201F124
_0201F13C:
	ldmia ip!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201F13C
	bl sub_0201001C
	ldr r1, [r6, #4]
	mov r4, r0
	cmp r1, #0
	mov r5, #0
	mov r2, #1
	bne _0201F248
	ldr r0, [sp, #0x28]
	str r0, [sp]
	ldr r0, [r6, #0x50]
	ldrb r1, [r6, #0xe]
	ldr r3, [r0, #8]
	add r0, r4, #0x1000
	add r1, r1, #1
	add r1, r3, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #5
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200CDA0
	ldr r0, [sp, #0x44]
	mov r2, #1
	str r0, [sp]
	ldr r1, [r6, #0x50]
	ldrh r0, [r6, #0x10]
	ldr r3, [r1, #8]
	mov r1, r5
	add r0, r0, #1
	add r0, r3, r0, lsl #3
	ldr r3, [r0, #4]
	add r0, r4, #0x1000
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	mov r1, #6
	bl sub_0200CDA0
	add r2, r4, #0x1000
	ldrb r1, [r6, #0x1a]
	ldr r0, [r2, #0x4b0]
	ldr r5, [r2, #0x498]
	bl sub_02018B80
	ldr r2, [sp, #0x60]
	mov r1, #1
	str r2, [sp]
	stmib sp, {r0, r1}
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	mov r0, r5
	mov r1, #7
	bl sub_0200CDA0
	ldrb r0, [r6, #0x1a]
	bl sub_020107C4
	mov r5, r0
	b _0201F300
_0201F248:
	ldr r0, [sp, #0x28]
	str r0, [sp]
	ldr r1, [r6, #0x4c]
	add r0, r4, #0x1000
	ldr r3, [r1, #8]
	mov r1, #5
	ldr r3, [r3, #0x94]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200CDA0
	ldr r0, [sp, #0x44]
	mov r3, #1
	str r0, [sp]
	ldr r0, [r6, #0x4c]
	mov r2, r5
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr ip, [r1, #0x94]
	mov r1, #6
	str ip, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	bl sub_0200CDA0
	ldr r0, [sp, #0x60]
	mov r3, #1
	str r0, [sp]
	ldr r0, [r6, #0x4c]
	mov r2, r5
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr ip, [r1, #0x94]
	mov r1, #7
	str ip, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	bl sub_0200CDA0
_0201F300:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #3
	bl sub_0200CF7C
	cmp r5, #2
	beq _0201F324
	cmp r5, #3
	beq _0201F334
	b _0201F344
_0201F324:
	ldr r0, [r6, #0x4c]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x1e4]
	b _0201F350
_0201F334:
	ldr r0, [r6, #0x4c]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x1dc]
	b _0201F350
_0201F344:
	ldr r0, [r6, #0x4c]
	ldr r0, [r0, #8]
	ldr r2, [r0, #0x1c]
_0201F350:
	ldr r1, [sp, #0x7c]
	mov r0, #1
	stmia sp, {r1, r2}
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x74]
	ldr r3, [sp, #0x78]
	mov r1, #3
	bl sub_0200CDA0
	add sp, sp, #0x80
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0201F388: .word DAT_02084718

	arm_func_start sub_0201F38C
sub_0201F38C: ; 0x0201F38C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x64
	ldr lr, _0201F488 ; =DAT_02084670
	add ip, sp, #0x10
	mov r5, r0
	mov r4, #5
	arm_func_end sub_0201F38C
_0201F3A4:
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201F3A4
	ldr r0, [lr]
	str r0, [ip]
	bl sub_0201001C
	ldr r1, [sp, #0x28]
	mov r4, r0
	str r1, [sp]
	ldr r0, [r5, #0x4c]
	mov r1, #1
	ldr r0, [r0, #8]
	mov r2, #0
	ldr r3, [r0, #0x1ac]
	add r0, r4, #0x1000
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200CDA0
	ldr r0, [sp, #0x44]
	mov r3, #1
	str r0, [sp]
	ldr r0, [r5, #0x4c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr ip, [r1, #0x1b4]
	mov r1, #2
	str ip, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	bl sub_0200CDA0
	add r0, r4, #0x1000
	ldr r1, [sp, #0x60]
	mov r3, #1
	str r1, [sp]
	ldr r1, [r5, #0x4c]
	mov r2, #0
	ldr r4, [r1, #8]
	mov r1, #3
	ldr r4, [r4, #0x1bc]
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	bl sub_0200CDA0
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0201F488: .word DAT_02084670

	arm_func_start sub_0201F48C
sub_0201F48C: ; 0x0201F48C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x64
	ldr r6, _0201F920 ; =DAT_0208461c
	add r5, sp, #0x10
	mov r7, r0
	mov r4, #5
	arm_func_end sub_0201F48C
_0201F4A4:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201F4A4
	ldr r0, [r6]
	str r0, [r5]
	bl sub_0201001C
	ldr r6, [sp, #0x24]
	ldr r5, [sp, #0x28]
	ldr r2, _0201F924 ; =0x10624DD3
	str r5, [sp]
	ldrh r1, [r7, #0x1c]
	ldr ip, [r7, #0x4c]
	mov r4, r0
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #6
	ldr r1, [ip, #8]
	add r0, r3, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r3, r6
	mov r1, #5
	mov r2, #4
	bl sub_0200CDA0
	str r5, [sp]
	ldrh ip, [r7, #0x1c]
	ldr r0, [r7, #0x4c]
	ldr r3, _0201F928 ; =0x51EB851F
	ldr r1, [r0, #8]
	smull r2, r0, r3, ip
	mov r2, ip, lsr #0x1f
	add r0, r2, r0, asr #5
	ldr ip, _0201F92C ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, lr, ip, r0
	add lr, r2, lr, asr #2
	mov ip, #0xa
	smull r2, r3, ip, lr
	sub lr, r0, r2
	add r0, lr, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0xe
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldr r1, [r7, #0x4c]
	ldrh r0, [r7, #0x1c]
	ldr r1, [r1, #8]
	ldr ip, _0201F92C ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r0, ip, r0
	add r0, r2, r0, asr #2
	smull r2, r3, ip, r0
	mov r2, r0, lsr #0x1f
	add r3, r2, r3, asr #2
	mov ip, #0xa
	smull r2, r3, ip, r3
	sub r3, r0, r2
	add r0, r3, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x18
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr r3, [r1, #0x1c4]
	mov r1, #5
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	mov r2, #0x22
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	ldrh ip, [r7, #0x1c]
	ldr r0, [r0, #8]
	ldr r3, _0201F92C ; =0x66666667
	mov r1, ip, lsr #0x1f
	smull r2, lr, r3, ip
	add lr, r1, lr, asr #2
	mov r3, #0xa
	smull r1, r2, r3, lr
	sub lr, ip, r1
	add r1, lr, #8
	add r0, r0, r1, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x2c
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	mov r1, #0
	ldr r2, [r0, #8]
	add r0, r4, #0x1000
	ldr r2, [r2, #0x1cc]
	mov r3, r6
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x36
	bl sub_0200CDA0
	ldr r6, [sp, #0x40]
	ldr r5, [sp, #0x44]
	ldr r2, _0201F924 ; =0x10624DD3
	str r5, [sp]
	ldrh r1, [r7, #0x1e]
	ldr lr, [r7, #0x4c]
	mov r3, #0
	mov r0, r1, lsr #0x1f
	smull r1, ip, r2, r1
	add ip, r0, ip, asr #6
	ldr r1, [lr, #8]
	add r0, ip, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	add r0, r4, #0x1000
	stmib sp, {r1, r3}
	str r3, [sp, #0xc]
	ldr r0, [r0, #0x498]
	mov r3, r6
	mov r1, #6
	mov r2, #0x14
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	ldrh ip, [r7, #0x1e]
	ldr r3, _0201F928 ; =0x51EB851F
	ldr r1, [r0, #8]
	smull r2, r0, r3, ip
	mov r2, ip, lsr #0x1f
	add r0, r2, r0, asr #5
	ldr ip, _0201F92C ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, lr, ip, r0
	add lr, r2, lr, asr #2
	mov ip, #0xa
	smull r2, r3, ip, lr
	sub lr, r0, r2
	add r0, lr, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #6
	mov r2, #0x1e
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldrh r0, [r7, #0x1e]
	ldr r1, [r7, #0x4c]
	ldr ip, _0201F92C ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r0, ip, r0
	add r0, r2, r0, asr #2
	smull r2, r3, ip, r0
	mov r2, r0, lsr #0x1f
	add r3, r2, r3, asr #2
	mov ip, #0xa
	smull r2, r3, ip, r3
	sub r3, r0, r2
	add r0, r3, #8
	ldr r1, [r1, #8]
	mov r2, #0x28
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #6
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r4, #0x1000
	ldr r3, [r1, #0x1c4]
	mov r1, #6
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	mov r2, #0x32
	mov r3, r6
	bl sub_0200CDA0
	str r5, [sp]
	ldrh r3, [r7, #0x1e]
	ldr r2, _0201F92C ; =0x66666667
	ldr lr, [r7, #0x4c]
	mov r0, r3, lsr #0x1f
	smull r1, ip, r2, r3
	add ip, r0, ip, asr #2
	mov r2, #0xa
	smull r0, r1, r2, ip
	sub ip, r3, r0
	ldr r1, [lr, #8]
	add r0, ip, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	mov r3, r6
	mov r1, #6
	mov r2, #0x3c
	bl sub_0200CDA0
	str r5, [sp]
	ldr r0, [r7, #0x4c]
	mov r1, #0
	ldr r2, [r0, #8]
	add r0, r4, #0x1000
	ldr r2, [r2, #0x1d4]
	mov r3, r6
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	mov r1, #6
	mov r2, #0x46
	bl sub_0200CDA0
	ldr r0, [sp, #0x60]
	mov r2, #1
	str r0, [sp]
	ldr r0, [r7, #0x4c]
	ldrh r1, [r7, #0x20]
	ldr r3, [r0, #8]
	add r0, r4, #0x1000
	add r1, r3, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #0
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	mov r1, #7
	bl sub_0200CDA0
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_0201F920: .word DAT_0208461c
_0201F924: .word 0x10624DD3
_0201F928: .word 0x51EB851F
_0201F92C: .word 0x66666667

	arm_func_start sub_0201F930
sub_0201F930: ; 0x0201F930
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x54]
	bl sub_0201E288
	str r0, [r4, #0x54]
	bl sub_0201001C
	mov r1, r0
	add r1, r1, #0x1000
	ldr r2, [r1, #0x5d0]
	ldr r0, [r4, #0x44]
	mov r2, r2, asr #0xc
	ldrsh r1, [r0, #0xc]
	bl sub_0200EB28
	ldr r0, [r4, #0x2c]
	bl sub_0200F64C
	ldr r0, [r4, #0x30]
	bl sub_0200F64C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	ldreq r0, [r4]
	cmpeq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201F930

	arm_func_start sub_0201F988
sub_0201F988: ; 0x0201F988
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x2c]
	bl sub_0200F71C
	ldr r0, [r4, #0x30]
	bl sub_0200F71C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _0201F9B8
	ldr r1, [r4]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	arm_func_end sub_0201F988
_0201F9B8:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	ldr r1, [r4]
	cmp r1, #0
	beq _0201F9D4
	bl sub_0200F71C
_0201F9D4:
	ldr r0, [r4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0201FA04
	ldr r0, [r4, #0x34]
	bl sub_0200F71C
	ldr r0, [r4, #0x38]
	bl sub_0200F71C
	ldr r0, [r4, #0x40]
	bl sub_0200F71C
_0201FA04:
	ldrb r0, [r4, #0x14]
	cmp r0, #4
	ldmhsia sp!, {r4, pc}
	ldr r0, [r4, #0x3c]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start sub_0201FA1C
sub_0201FA1C: ; 0x0201FA1C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0x48]
	cmp r1, #0
	beq _0201FAB4
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0201FA80
	mov r6, r4
	arm_func_end sub_0201FA1C
_0201FA44:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201FA6C
	bl _ZdaPv
	ldr r0, [r5, #0x48]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0201FA6C:
	ldr r1, [r5, #0x48]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201FA44
_0201FA80:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201FA9C
	bl _ZdaPv
	ldr r0, [r5, #0x48]
	mov r1, #0
	str r1, [r0, #8]
_0201FA9C:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _0201FAB4
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x48]
_0201FAB4:
	ldr r1, [r5, #0x4c]
	cmp r1, #0
	beq _0201FB44
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0201FB10
	mov r6, r4
_0201FAD4:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201FAFC
	bl _ZdaPv
	ldr r0, [r5, #0x4c]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0201FAFC:
	ldr r1, [r5, #0x4c]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201FAD4
_0201FB10:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201FB2C
	bl _ZdaPv
	ldr r0, [r5, #0x4c]
	mov r1, #0
	str r1, [r0, #8]
_0201FB2C:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	beq _0201FB44
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x4c]
_0201FB44:
	ldr r1, [r5, #0x50]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0201FBA0
	mov r6, r4
_0201FB64:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0201FB8C
	bl _ZdaPv
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0201FB8C:
	ldr r1, [r5, #0x50]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _0201FB64
_0201FBA0:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201FBBC
	bl _ZdaPv
	ldr r0, [r5, #0x50]
	mov r1, #0
	str r1, [r0, #8]
_0201FBBC:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x50]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0201FBD8
sub_0201FBD8: ; 0x0201FBD8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, [r1, #0xc]
	ldr r6, [r1]
	ldmib r1, {r3, r5}
	mov r1, r6, lsl #0xc
	mov r7, r4, lsl #0xc
	mov r6, r5, lsl #0xc
	mov r3, r3, lsl #0xc
	mov r8, r0
	cmp r2, #0
	mov r4, r1, asr #0x10
	mov r5, r3, asr #0x10
	mov r6, r6, asr #0x10
	mov r7, r7, asr #0x10
	beq _0201FC24
	bl sub_0201001C
	mov r1, r8, lsl #2
	add r2, r0, #0x24
	b _0201FC34
	arm_func_end sub_0201FBD8
_0201FC24:
	bl sub_0201001C
	add r0, r0, #0x24
	mov r1, r8, lsl #2
	add r2, r0, #0x400
_0201FC34:
	and r0, r1, #0xff
	add r0, r2, r0, lsl #3
	strh r4, [r0, #6]
	strh r5, [r0, #0xe]
	strh r6, [r0, #0x16]
	strh r7, [r0, #0x1e]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_0201FC50
sub_0201FC50: ; 0x0201FC50
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	add r0, sp, #0
	mov r4, r3
	blx MTX_Scale22_
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl sub_0201FBD8
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0201FC50

	arm_func_start sub_0201FC80
sub_0201FC80: ; 0x0201FC80
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #0x60]
	bl sub_0201FCC8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201FC80

	arm_func_start sub_0201FC9C
sub_0201FC9C: ; 0x0201FC9C
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x60]
	bl sub_0201FCC8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201FC9C

	arm_func_start sub_0201FCB4
sub_0201FCB4: ; 0x0201FCB4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201FCFC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201FCB4

	arm_func_start sub_0201FCC8
sub_0201FCC8: ; 0x0201FCC8
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	str r1, [r0, #0x20]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x28]
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end sub_0201FCC8

	arm_func_start sub_0201FCFC
sub_0201FCFC: ; 0x0201FCFC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02020708
	mov r0, r4
	bl sub_0202072C
	mov r0, r4
	bl sub_02020750
	mov r0, r4
	bl sub_020204A8
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201FCFC

	arm_func_start sub_0201FD24
sub_0201FD24: ; 0x0201FD24
	stmdb sp!, {r3, lr}
	mov r3, r0
	ldr r1, [r3, #8]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r3, #0x28]
	ldr r2, [r3, #4]
	ldr r3, [r3]
	bl sub_02020A14
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201FD24

	arm_func_start sub_0201FD4C
sub_0201FD4C: ; 0x0201FD4C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	ldr r6, [sl, #8]
	mov sb, r1
	mov r8, r2
	cmp r6, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r5, [sl, #4]
	mov r1, r8
	mov r0, r5
	bl _u32_div_f
	cmp r0, #4
	bhs _0201FD98
	ldr r0, [sl, #0x28]
	ldr r3, [sl]
	mov r1, r6
	mov r2, r5
	bl sub_02020A14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_0201FD4C
_0201FD98:
	and r1, r0, #3
	sub r7, r0, r1
	mul r4, r7, sb
	sub r0, r8, #1
	cmp sb, r0
	subeq r7, r5, r4
	ldr r5, [sl]
	cmp r5, #0
	beq _0201FDD0
	ldr r0, [sl, #0x28]
	bl sub_02020B40
	cmp r0, #0
	moveq r5, r5, lsl #5
	movne r5, r5, lsl #6
_0201FDD0:
	ldr r0, [sl, #0x28]
	mov r2, r7
	add r1, r6, r4
	add r3, r5, r4
	bl sub_02020A54
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start sub_0201FDE8
sub_0201FDE8: ; 0x0201FDE8
	stmdb sp!, {r3, lr}
	mov r3, r0
	ldr ip, [r3, #0x14]
	cmp ip, #0
	ldmeqia sp!, {r3, pc}
	str r1, [sp]
	ldr r0, [r3, #0x28]
	ldr r2, [r3, #0x10]
	ldr r3, [r3, #0xc]
	mov r1, ip
	bl sub_02020F04
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201FDE8

	arm_func_start sub_0201FE18
sub_0201FE18: ; 0x0201FE18
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r3, #0x100
	str r3, [r4, #0x44]
	str r3, [r4, #0x48]
	str r1, [r4, #0x4c]
	str r2, [r4, #0x50]
	bl sub_0201FE40
	str r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201FE18

	arm_func_start sub_0201FE40
sub_0201FE40: ; 0x0201FE40
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x28]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0201FEB4
_0201FE54: ; jump table
	b _0201FE74 ; case 0
	b _0201FE7C ; case 1
	b _0201FE84 ; case 2
	b _0201FE8C ; case 3
	b _0201FE94 ; case 4
	b _0201FE9C ; case 5
	b _0201FEA4 ; case 6
	b _0201FEAC ; case 7
	arm_func_end sub_0201FE40
_0201FE74:
	bl G2_GetBG0ScrPtr
	ldmia sp!, {r3, pc}
_0201FE7C:
	bl G2_GetBG1ScrPtr
	ldmia sp!, {r3, pc}
_0201FE84:
	bl G2_GetBG2ScrPtr
	ldmia sp!, {r3, pc}
_0201FE8C:
	bl G2_GetBG3ScrPtr
	ldmia sp!, {r3, pc}
_0201FE94:
	bl G2S_GetBG0ScrPtr
	ldmia sp!, {r3, pc}
_0201FE9C:
	bl G2S_GetBG1ScrPtr
	ldmia sp!, {r3, pc}
_0201FEA4:
	bl G2S_GetBG2ScrPtr
	ldmia sp!, {r3, pc}
_0201FEAC:
	bl G2S_GetBG3ScrPtr
	ldmia sp!, {r3, pc}
_0201FEB4:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0201FEBC
sub_0201FEBC: ; 0x0201FEBC
	ldr ip, _0201FED8 ; =sub_02021318
	mov r3, r0
	ldr r0, [r3, #0x28]
	ldr r1, [r3, #0x20]
	ldr r2, [r3, #0x1c]
	ldr r3, [r3, #0x18]
	bx ip
	.align 2, 0
_0201FED8: .word sub_02021318
	arm_func_end sub_0201FEBC

	arm_func_start sub_0201FEDC
sub_0201FEDC: ; 0x0201FEDC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201FD24
	mov r0, r4
	mov r1, #0
	bl sub_0201FDE8
	mov r0, r4
	bl sub_0201FEBC
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201FEDC

	arm_func_start sub_0201FF00
sub_0201FF00: ; 0x0201FF00
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	bl sub_02020330
	ldr r0, [r4, #0x54]
	add ip, sp, #4
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x58]
	add r1, sp, #0x10
	str r0, [sp, #0xc]
	add r2, sp, #0xc
	add r3, sp, #8
	mov r0, r4
	str ip, [sp]
	bl sub_020202A0
	ldr r1, [sp, #4]
	mov r0, r4
	str r1, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl sub_0202015C
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_0201FF00

	arm_func_start sub_0201FF60
sub_0201FF60: ; 0x0201FF60
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x24
	mov r4, r0
	ldr r3, [r4, #0x54]
	mov r6, r2
	str r3, [sp, #0x20]
	mov r7, r1
	ldr r1, [r4, #0x58]
	add r5, sp, #0x14
	str r1, [sp, #0x1c]
	add r1, sp, #0x20
	add r2, sp, #0x1c
	add r3, sp, #0x18
	str r5, [sp]
	bl sub_020202A0
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x18]
	ldr r8, [sp, #0x1c]
	add r5, r2, r1
	ldr r3, [sp, #0x14]
	mov r2, r6
	mov r0, r4
	mov r1, r7
	add r6, r8, r3
	bl sub_02020330
	ldr r0, [r4, #0x54]
	add r1, sp, #4
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x58]
	mov r0, r4
	str r2, [sp, #0xc]
	str r1, [sp]
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_020202A0
	ldr lr, [sp, #8]
	ldr sb, [sp, #0x10]
	ldr r3, [sp, #0x20]
	ldr ip, [sp, #4]
	ldr r2, [sp, #0xc]
	add r7, sb, lr
	mov r0, #0
	add r8, r2, ip
	cmp sb, r3
	bne _02020024
	ldr r1, [sp, #0x18]
	cmp lr, r1
	ble _02020080
	arm_func_end sub_0201FF60
_02020024:
	cmp sb, r3
	bge _0202004C
	cmp r7, r3
	blt _0202004C
	ldr r1, [sp, #0x10]
	mov r0, r4
	sub r3, r3, r1
	str ip, [sp]
	bl sub_0202015C
	mov r0, #1
_0202004C:
	cmp r7, r5
	ble _02020080
	ldr r1, [sp, #0x10]
	cmp r1, r5
	bge _02020080
	ldr r1, [sp, #4]
	mov r0, r4
	str r1, [sp]
	ldr r2, [sp, #0xc]
	mov r1, r5
	sub r3, r7, r5
	bl sub_0202015C
	mov r0, #1
_02020080:
	ldr r3, [sp, #0x1c]
	ldr sb, [sp, #0xc]
	cmp sb, r3
	bne _020200A0
	ldr r2, [sp, #4]
	ldr r1, [sp, #0x14]
	cmp r2, r1
	ble _02020104
_020200A0:
	cmp sb, r3
	bge _020200D0
	cmp r8, r3
	blt _020200D0
	ldr r2, [sp, #0xc]
	mov r0, r4
	sub r1, r3, r2
	str r1, [sp]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #8]
	bl sub_0202015C
	mov r0, #1
_020200D0:
	cmp r8, r6
	ble _02020104
	ldr r1, [sp, #0xc]
	cmp r1, r6
	bge _02020104
	sub r0, r8, r6
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #8]
	mov r0, r4
	mov r2, r6
	bl sub_0202015C
	mov r0, #1
_02020104:
	cmp r0, #0
	bne _02020150
	ldr r0, [sp, #0x20]
	cmp r7, r0
	ldrge r0, [sp, #0x1c]
	cmpge r8, r0
	blt _02020134
	ldr r0, [sp, #0x10]
	cmp r0, r5
	ldrle r0, [sp, #0xc]
	cmple r0, r6
	ble _02020150
_02020134:
	ldr r1, [sp, #4]
	mov r0, r4
	str r1, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl sub_0202015C
_02020150:
	bl DC_FlushAll
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_0202015C
sub_0202015C: ; 0x0202015C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	mov sl, r0
	ldr fp, [sl, #0x44]
	ldr sb, [sl, #0x48]
	ldr ip, [sl, #0x34]
	ldr r6, [sl, #0x38]
	mov r7, fp, asr #2
	mov r8, sb, asr #2
	add r7, fp, r7, lsr #29
	mov r4, ip, asr #2
	mov r5, r6, asr #2
	str r1, [sp, #8]
	mov r1, r7, asr #3
	add r6, r6, r5, lsr #29
	add r4, ip, r4, lsr #29
	add r8, sb, r8, lsr #29
	str r1, [sp, #0x1c]
	mov r1, r8, asr #3
	str r3, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r5, r4, asr #3
	mov r6, r6, asr #3
	str r1, [sp, #0x18]
	ldr fp, [sp, #0x48]
	bl sub_0201FE40
	str r0, [sl, #0x24]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #0x14]
	addle sp, sp, #0x20
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0202015C
_020201E0:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r7, #0
	cmp fp, #0
	add r8, r1, r0
	ble _02020280
_020201F8:
	ldr r0, [sp, #0x1c]
	mov r2, r8
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sl, #0x24]
	add sb, r0, r7
	mov r0, sl
	mov r3, sb
	bl sub_020202DC
	mov r4, r0
	cmp r8, #0
	blt _02020248
	cmp r8, r5
	bge _02020248
	cmp sb, #0
	blt _02020248
	cmp sb, r6
	blt _02020254
_02020248:
	mov r0, #0
	strh r0, [r4]
	b _02020274
_02020254:
	stmia sp, {r5, r6}
	ldr r1, [sl, #0x20]
	mov r3, sb
	mov r0, sl
	mov r2, r8
	bl sub_020202DC
	ldrh r0, [r0]
	strh r0, [r4]
_02020274:
	add r7, r7, #1
	cmp r7, fp
	blt _020201F8
_02020280:
	ldr r0, [sp, #0x14]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _020201E0
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start sub_020202A0
sub_020202A0: ; 0x020202A0
	stmdb sp!, {r4, lr}
	ldr ip, [r1]
	ldr r4, [r0, #0x4c]
	ldr lr, [r0, #0x50]
	mov r0, ip, asr #3
	str r0, [r1]
	ldr r0, [r2]
	mov r1, r4, asr #3
	mov r0, r0, asr #3
	str r0, [r2]
	ldr r0, [sp, #8]
	str r1, [r3]
	mov r1, lr, asr #3
	str r1, [r0]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020202A0

	arm_func_start sub_020202DC
sub_020202DC: ; 0x020202DC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	ldr r1, [sp, #0x10]
	mov r0, r2
	mov r5, r3
	bl _s32_div_f
	mov r4, r1
	ldr r1, [sp, #0x14]
	mov r0, r5
	bl _s32_div_f
	cmp r4, #0x20
	addge r6, r6, #0x800
	cmp r1, #0x20
	and r2, r4, #0x1f
	mov r0, r1, lsl #0x1b
	addge r6, r6, #0x1000
	add r0, r2, r0, lsr #22
	add r0, r6, r0, lsl #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020202DC

	arm_func_start sub_02020328
sub_02020328: ; 0x02020328
	str r1, [r0, #0x28]
	bx lr
	arm_func_end sub_02020328

	arm_func_start sub_02020330
sub_02020330: ; 0x02020330
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	ldr r0, [r0, #0x28]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	bx lr
_02020348: ; jump table
	b _02020368 ; case 0
	b _02020388 ; case 1
	b _020203A8 ; case 2
	b _020203C8 ; case 3
	b _020203E8 ; case 4
	b _02020408 ; case 5
	b _02020428 ; case 6
	b _02020448 ; case 7
	arm_func_end sub_02020330
_02020368:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _0202046C ; =0x04000010
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_02020388:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _02020470 ; =0x04000014
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_020203A8:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _02020474 ; =0x04000018
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_020203C8:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _02020478 ; =0x0400001C
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_020203E8:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _0202047C ; =0x04001010
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_02020408:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _02020480 ; =0x04001014
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_02020428:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _02020484 ; =0x04001018
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
_02020448:
	ldr r0, _02020468 ; =0x000001FF
	ldr ip, _02020488 ; =0x0400101C
	mov r3, r0, lsl #0x10
	and r1, r1, r0
	and r0, r3, r2, lsl #16
	orr r0, r1, r0
	str r0, [ip]
	bx lr
	.align 2, 0
_02020468: .word 0x000001FF
_0202046C: .word 0x04000010
_02020470: .word 0x04000014
_02020474: .word 0x04000018
_02020478: .word 0x0400001C
_0202047C: .word 0x04001010
_02020480: .word 0x04001014
_02020484: .word 0x04001018
_02020488: .word 0x0400101C

	arm_func_start sub_0202048C
sub_0202048C: ; 0x0202048C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	bl sub_020207D4
	str r0, [r4, #0x5c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202048C

	arm_func_start sub_020204A8
sub_020204A8: ; 0x020204A8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x5c]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _020204D0
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020204A8
_020204D0:
	mov r0, #0
	str r0, [r5, #0x5c]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020204DC
sub_020204DC: ; 0x020204DC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #8]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	beq _0202050C
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #8]
	arm_func_end sub_020204DC
_0202050C:
	cmp r6, #0
	moveq r6, #1
	ldr r0, [sp, #0x20]
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x28]
	ldr r0, _02020554 ; =s_BGS_0208bd80
	mov r2, r7
	mov r3, r5
	bl sub_020208B4
	ldr r1, _02020558 ; =MAIN_BSS_0210C1AC
	str r0, [r4, #8]
	ldr r0, [r1, #4]
	str r0, [r4, #4]
	str r5, [r4]
	ldr r0, [r4, #8]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02020554: .word s_BGS_0208bd80
_02020558: .word MAIN_BSS_0210C1AC

	arm_func_start sub_0202055C
sub_0202055C: ; 0x0202055C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x14]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	beq _0202058C
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x14]
	arm_func_end sub_0202055C
_0202058C:
	cmp r6, #0
	moveq r6, #1
	ldr r0, [sp, #0x20]
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x28]
	ldr r0, _020205D4 ; =s_BGS_0208bd80
	mov r2, r7
	mov r3, r5
	bl sub_02020DA0
	ldr r1, _020205D8 ; =MAIN_BSS_0210C1AC
	str r0, [r4, #0x14]
	ldr r0, [r1, #4]
	str r0, [r4, #0x10]
	str r5, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020205D4: .word s_BGS_0208bd80
_020205D8: .word MAIN_BSS_0210C1AC

	arm_func_start sub_020205DC
sub_020205DC: ; 0x020205DC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #0x20]
	mov r4, r1
	mov r7, r2
	mov r6, r3
	cmp r0, #0
	beq _0202060C
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r5, #0x20]
	arm_func_end sub_020205DC
_0202060C:
	ldr r0, [sp, #0x28]
	cmp r7, #0
	moveq r7, #1
	stmia sp, {r0, r7}
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [r5, #0x28]
	ldr r0, _02020674 ; =s_BGS_0208bd80
	mov r2, r4
	mov r3, r6
	bl sub_0202108C
	str r0, [r5, #0x20]
	ldr r1, _02020678 ; =MAIN_BSS_0210C1AC
	ldr r0, [sp, #0x2c]
	ldr r2, [r1, #4]
	str r2, [r5, #0x1c]
	ldr r2, [r1]
	str r2, [r5, #0x34]
	ldr r1, [r1, #8]
	str r1, [r5, #0x38]
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x20]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02020674: .word s_BGS_0208bd80
_02020678: .word MAIN_BSS_0210C1AC

	arm_func_start sub_0202067C
sub_0202067C: ; 0x0202067C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0x20]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	beq _020206AC
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x20]
	arm_func_end sub_0202067C
_020206AC:
	ldr r1, [sp, #0x20]
	cmp r6, #0
	moveq r6, #1
	ldr r0, [sp, #0x24]
	stmia sp, {r1, r6}
	str r0, [sp, #8]
	ldr r1, [r4, #0x28]
	ldr r2, [sp, #0x28]
	mov r0, r7
	mov r3, r5
	bl sub_0202110C
	ldr r1, _02020704 ; =MAIN_BSS_0210C1AC
	str r0, [r4, #0x20]
	ldr r0, [r1, #4]
	str r0, [r4, #0x1c]
	ldr r0, [r1]
	str r0, [r4, #0x34]
	ldr r0, [r1, #8]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x20]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02020704: .word MAIN_BSS_0210C1AC

	arm_func_start sub_02020708
sub_02020708: ; 0x02020708
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02020708

	arm_func_start sub_0202072C
sub_0202072C: ; 0x0202072C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202072C

	arm_func_start sub_02020750
sub_02020750: ; 0x02020750
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x20]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02020750

	arm_func_start sub_02020774
sub_02020774: ; 0x02020774
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _020207C4
	bl sub_0201001C
	mov r3, #1
	add r0, r0, #0x1000
	str r3, [sp]
	ldr r0, [r0, #0x4a8]
	mov ip, #0
	stmib sp, {r0, ip}
	ldr r1, _020207D0 ; =s_BGS_0208bd80
	mov r0, r4
	mov r2, r5
	str ip, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r4, r0
	arm_func_end sub_02020774
_020207C4:
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020207D0: .word s_BGS_0208bd80

	arm_func_start sub_020207D4
sub_020207D4: ; 0x020207D4
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x40
	mov r3, r1
	mov r2, r0
	ldr r1, _02020800 ; =s_data_s_sLZ_bin_0208bd84
	add r0, sp, #0
	bl OS_SPrintf
	add r0, sp, #0
	bl sub_02020774
	add sp, sp, #0x40
	ldmia sp!, {r3, pc}
	.align 2, 0
_02020800: .word s_data_s_sLZ_bin_0208bd84
	arm_func_end sub_020207D4

	arm_func_start sub_02020804
sub_02020804: ; 0x02020804
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r4, r2
	mov r8, r3
	bl sub_020207D4
	mov r6, r0
	mov r0, #0x40
	sub r1, r0, #0x44
	bl _Z23Heap_AllocWithAlignmentmm
	mov r7, r0
	cmp r8, #0
	moveq r8, r5
	mov ip, #0
	str ip, [sp]
	ldr r3, [sp, #0x20]
	ldr r0, _020208B0 ; =s_BGS_0208bd80
	mov r1, r4
	mov r2, r8
	str ip, [sp, #4]
	bl sub_020208B4
	ldr r0, [sp, #0x24]
	mov ip, #0
	cmp r0, #0
	movne r5, r0
	str ip, [sp]
	ldr r3, [sp, #0x28]
	ldr r0, _020208B0 ; =s_BGS_0208bd80
	mov r1, r4
	mov r2, r5
	str ip, [sp, #4]
	bl sub_02020DA0
	cmp r6, #0
	beq _0202089C
	mov r0, r6
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r6
	bl _ZdlPv
	arm_func_end sub_02020804
_0202089C:
	mov r0, r7
	bl _Z9Heap_FreePv
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_020208B0: .word s_BGS_0208bd80

	arm_func_start sub_020208B4
sub_020208B4: ; 0x020208B4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r0, #0x40
	mov r6, r1
	sub r1, r0, #0x44
	mov r5, r2
	mov r4, r3
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r1, _02020918 ; =s_BGS_s_NCGR_0208bd94
	mov r2, r5
	mov r5, r0
	bl OS_SPrintf
	ldr r0, [sp, #0x18]
	mov r1, r6
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	mov r3, r4
	mov r0, r5
	bl sub_0202091C
	mov r4, r0
	mov r0, r5
	bl _Z9Heap_FreePv
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02020918: .word s_BGS_s_NCGR_0208bd94
	arm_func_end sub_020208B4

	arm_func_start sub_0202091C
sub_0202091C: ; 0x0202091C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	mov r0, #0xbc
	mov sb, r1
	mov r5, r2
	mov r8, r3
	mov r4, #0
	bl _Znwm
	movs r7, r0
	beq _0202096C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr ip, [r0, #0x4a8]
	mov r0, r7
	mov r1, r6
	mov r3, r5
	mov r2, #1
	str ip, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
	mov r7, r0
	arm_func_end sub_0202091C
_0202096C:
	ldr r0, [r7, #0xb8]
	ldr r5, [r0, #0x10]
	ldr r6, [r0, #0x14]
	mov r1, r5
	mov r0, r6
	bl DC_FlushRange
	ldr r1, [sp, #0x20]
	ldr r0, _02020A10 ; =MAIN_BSS_0210C1AC
	mov r2, #0
	str r2, [r0, #4]
	cmp r1, #0
	beq _020209DC
	cmp r1, #1
	movne r4, r1
	bne _020209B4
	mov r0, r5
	bl _Z10Heap_Allocm
	mov r4, r0
_020209B4:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MI_CpuCopy8
	ldr r2, _02020A10 ; =MAIN_BSS_0210C1AC
	mov r0, r4
	mov r1, r5
	str r5, [r2, #4]
	bl DC_FlushRange
	b _020209F0
_020209DC:
	mov r0, sb
	mov r1, r6
	mov r2, r5
	mov r3, r8
	bl sub_02020A14
_020209F0:
	cmp r7, #0
	beq _02020A08
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02020A08:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02020A10: .word MAIN_BSS_0210C1AC

	arm_func_start sub_02020A14
sub_02020A14: ; 0x02020A14
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r3
	mov r7, r0
	mov r6, r1
	mov r5, r2
	beq _02020A3C
	bl sub_02020B40
	cmp r0, #0
	moveq r4, r4, lsl #5
	movne r4, r4, lsl #6
	arm_func_end sub_02020A14
_02020A3C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_02020A54
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02020A54
sub_02020A54: ; 0x02020A54
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	mov r7, r0
	mov r1, r5
	add r0, r6, r4
	bl DC_FlushRange
	cmp r7, #7
	addls pc, pc, r7, lsl #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020A80: ; jump table
	b _02020AA0 ; case 0
	b _02020AB4 ; case 1
	b _02020AC8 ; case 2
	b _02020ADC ; case 3
	b _02020AF0 ; case 4
	b _02020B04 ; case 5
	b _02020B18 ; case 6
	b _02020B2C ; case 7
	arm_func_end sub_02020A54
_02020AA0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG0Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020AB4:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG1Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020AC8:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG2Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020ADC:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG3Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020AF0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG0Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020B04:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG1Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020B18:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG2Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02020B2C:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG3Char
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02020B40
sub_02020B40: ; 0x02020B40
	sub sp, sp, #0x40
	cmp r0, #7
	mov r1, #0
	addls pc, pc, r0, lsl #2
	b _02020D80
_02020B54: ; jump table
	b _02020B74 ; case 0
	b _02020B98 ; case 1
	b _02020BB8 ; case 2
	b _02020C20 ; case 3
	b _02020C80 ; case 4
	b _02020CA0 ; case 5
	b _02020CC0 ; case 6
	b _02020D28 ; case 7
	arm_func_end sub_02020B40
_02020B74:
	ldr r0, _02020D8C ; =0x04000008
	ldrh r2, [r0]
	strh r2, [sp, #0x1a]
	ldrsh r1, [sp, #0x1a]
	mov r0, r2, lsl #0x18
	strh r2, [sp, #0x1e]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0x1a]
	b _02020D80
_02020B98:
	ldr r0, _02020D90 ; =0x0400000A
	ldrh r1, [r0]
	strh r1, [sp, #0x18]
	mov r0, r1, lsl #0x18
	strh r1, [sp, #6]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0x18]
	b _02020D80
_02020BB8:
	mov r3, #0x4000000
	ldr r0, [r3]
	str r0, [sp, #0x30]
	ldr r2, [sp, #0x30]
	mov r0, r2, lsl #0x1d
	mov r0, r0, lsr #0x1d
	str r2, [sp, #0x38]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02020D80
_02020BE0: ; jump table
	b _02020C00 ; case 0
	b _02020C00 ; case 1
	b _02020BF8 ; case 2
	b _02020C00 ; case 3
	b _02020BF8 ; case 4
	b _02020BF8 ; case 5
_02020BF8:
	mov r1, #1
	b _02020D80
_02020C00:
	ldrh r2, [r3, #0xc]
	strh r2, [sp, #0x16]
	ldrsh r1, [sp, #0x16]
	mov r0, r2, lsl #0x18
	strh r2, [sp, #0x1c]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0x16]
	b _02020D80
_02020C20:
	mov r3, #0x4000000
	ldr r2, [r3]
	mov r0, r2, lsl #0x1d
	mov r0, r0, lsr #0x1d
	str r2, [sp, #0x2c]
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x2c]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02020D80
_02020C48: ; jump table
	b _02020D80 ; case 0
	b _02020C60 ; case 1
	b _02020C60 ; case 2
	b _02020C60 ; case 3
	b _02020C60 ; case 4
	b _02020C60 ; case 5
_02020C60:
	ldrh r2, [r3, #0xc]
	strh r2, [sp, #0x14]
	ldrsh r1, [sp, #0x14]
	mov r0, r2, lsl #0x18
	strh r2, [sp]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0x14]
	b _02020D80
_02020C80:
	ldr r0, _02020D94 ; =0x04001008
	ldrh r1, [r0]
	strh r1, [sp, #0x12]
	mov r0, r1, lsl #0x18
	strh r1, [sp, #8]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0x12]
	b _02020D80
_02020CA0:
	ldr r0, _02020D98 ; =0x0400100A
	ldrh r1, [r0]
	strh r1, [sp, #0x10]
	mov r0, r1, lsl #0x18
	strh r1, [sp, #0xa]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0x10]
	b _02020D80
_02020CC0:
	ldr r3, _02020D9C ; =0x04001000
	ldr r2, [r3]
	mov r0, r2, lsl #0x1d
	mov r0, r0, lsr #0x1d
	str r2, [sp, #0x28]
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02020D80
_02020CE8: ; jump table
	b _02020D08 ; case 0
	b _02020D08 ; case 1
	b _02020D00 ; case 2
	b _02020D08 ; case 3
	b _02020D00 ; case 4
	b _02020D00 ; case 5
_02020D00:
	mov r1, #1
	b _02020D80
_02020D08:
	ldrh r2, [r3, #0xc]
	strh r2, [sp, #0xe]
	ldrsh r1, [sp, #0xe]
	mov r0, r2, lsl #0x18
	strh r2, [sp, #2]
	mov r1, r0, lsr #0x1f
	ldrsh r0, [sp, #0xe]
	b _02020D80
_02020D28:
	ldr r3, _02020D9C ; =0x04001000
	ldr r0, [r3]
	str r0, [sp, #0x24]
	ldr r2, [sp, #0x24]
	mov r0, r2, lsl #0x1d
	mov r0, r0, lsr #0x1d
	str r2, [sp, #0x34]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02020D80
_02020D50: ; jump table
	b _02020D80 ; case 0
	b _02020D68 ; case 1
	b _02020D68 ; case 2
	b _02020D68 ; case 3
	b _02020D68 ; case 4
	b _02020D68 ; case 5
_02020D68:
	ldrh r2, [r3, #0xe]
	strh r2, [sp, #0xc]
	ldrsh r1, [sp, #0xc]
	mov r0, r2, lsl #0x18
	strh r2, [sp, #4]
	mov r1, r0, lsr #0x1f
_02020D80:
	mov r0, r1
	add sp, sp, #0x40
	bx lr
	.align 2, 0
_02020D8C: .word 0x04000008
_02020D90: .word 0x0400000A
_02020D94: .word 0x04001008
_02020D98: .word 0x0400100A
_02020D9C: .word 0x04001000

	arm_func_start sub_02020DA0
sub_02020DA0: ; 0x02020DA0
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r0, #0x40
	mov r6, r1
	sub r1, r0, #0x44
	mov r5, r2
	mov r4, r3
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r1, _02020E04 ; =s_BGS_s_NCLR_0208bda0
	mov r2, r5
	mov r5, r0
	bl OS_SPrintf
	ldr r0, [sp, #0x18]
	mov r1, r6
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	mov r3, r4
	mov r0, r5
	bl sub_02020E08
	mov r4, r0
	mov r0, r5
	bl _Z9Heap_FreePv
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02020E04: .word s_BGS_s_NCLR_0208bda0
	arm_func_end sub_02020DA0

	arm_func_start sub_02020E08
sub_02020E08: ; 0x02020E08
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	mov r0, #0xbc
	mov sb, r1
	mov r5, r2
	mov r8, r3
	mov r4, #0
	bl _Znwm
	movs r7, r0
	beq _02020E58
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr ip, [r0, #0x4a8]
	mov r0, r7
	mov r1, r6
	mov r3, r5
	mov r2, #1
	str ip, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov r7, r0
	arm_func_end sub_02020E08
_02020E58:
	ldr r0, [r7, #0xb8]
	ldr r5, [r0, #8]
	ldr r6, [r0, #0xc]
	mov r1, r5
	mov r0, r6
	bl DC_FlushRange
	ldr r1, [sp, #0x20]
	ldr r0, _02020F00 ; =MAIN_BSS_0210C1AC
	mov ip, #0
	str ip, [r0, #4]
	cmp r1, #0
	beq _02020EC8
	cmp r1, #1
	movne r4, r1
	bne _02020EA0
	mov r0, r5
	bl _Z10Heap_Allocm
	mov r4, r0
_02020EA0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MI_CpuCopy8
	ldr r2, _02020F00 ; =MAIN_BSS_0210C1AC
	mov r0, r4
	mov r1, r5
	str r5, [r2, #4]
	bl DC_FlushRange
	b _02020EE0
_02020EC8:
	mov r0, sb
	mov r1, r6
	mov r2, r5
	mov r3, r8
	str ip, [sp]
	bl sub_02020F04
_02020EE0:
	cmp r7, #0
	beq _02020EF8
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02020EF8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02020F00: .word MAIN_BSS_0210C1AC

	arm_func_start sub_02020F04
sub_02020F04: ; 0x02020F04
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr ip, [sp, #0x18]
	mov r5, r1
	mov r4, r2
	mov r8, r0
	cmp ip, #0
	movne r7, r3, lsl #9
	mov r0, r5
	mov r1, r4
	moveq r7, r3, lsl #5
	mov r6, #0
	bl DC_FlushRange
	cmp r8, #7
	addls pc, pc, r8, lsl #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02020F40: ; jump table
	b _02020F6C ; case 0
	b _02020F68 ; case 1
	b _02020F64 ; case 2
	b _02020F60 ; case 3
	b _02020FB4 ; case 4
	b _02020FB0 ; case 5
	b _02020FAC ; case 6
	b _02020FA8 ; case 7
	arm_func_end sub_02020F04
_02020F60:
	add r6, r6, #0x2000
_02020F64:
	add r6, r6, #0x2000
_02020F68:
	add r6, r6, #0x2000
_02020F6C:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02020F94
	bl GX_BeginLoadBGExtPltt
	mov r0, r5
	mov r2, r4
	add r1, r7, r6
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02020F94:
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl GX_LoadBGPltt
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02020FA8:
	add r6, r6, #0x2000
_02020FAC:
	add r6, r6, #0x2000
_02020FB0:
	add r6, r6, #0x2000
_02020FB4:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02020FDC
	bl GXS_BeginLoadBGExtPltt
	mov r0, r5
	mov r2, r4
	add r1, r7, r6
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02020FDC:
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl GXS_LoadBGPltt
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start sub_02020FF0
sub_02020FF0: ; 0x02020FF0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r1
	mov r6, r2
	mov r8, r3
	bl sub_020207D4
	mov r4, r0
	mov r0, #0x40
	sub r1, r0, #0x44
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r1, [sp, #0x2c]
	mov r5, r0
	str r1, [sp]
	ldr r0, [sp, #0x30]
	cmp r8, #0
	str r0, [sp, #4]
	mov r0, #0
	movne r7, r8
	str r0, [sp, #8]
	ldr ip, [sp, #0x34]
	ldr r3, [sp, #0x28]
	ldr r0, _02021088 ; =s_BGS_0208bd80
	mov r1, r6
	mov r2, r7
	str ip, [sp, #0xc]
	bl sub_0202108C
	mov r6, r0
	cmp r4, #0
	beq _02021074
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02020FF0
_02021074:
	mov r0, r5
	bl _Z9Heap_FreePv
	mov r0, r6
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02021088: .word s_BGS_0208bd80

	arm_func_start sub_0202108C
sub_0202108C: ; 0x0202108C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r0, #0x40
	mov r6, r1
	sub r1, r0, #0x44
	mov r5, r2
	mov r4, r3
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r1, _02021108 ; =s_s_s_NSCR_0208bdac
	mov r2, r7
	mov r3, r5
	mov r5, r0
	bl OS_SPrintf
	mov r1, r6
	mov r3, r4
	ldr r2, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	mov r0, r5
	str r2, [sp, #8]
	ldr r2, [sp, #0x28]
	bl sub_0202110C
	mov r4, r0
	mov r0, r5
	bl _Z9Heap_FreePv
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02021108: .word s_s_s_NSCR_0208bdac
	arm_func_end sub_0202108C

	arm_func_start sub_0202110C
sub_0202110C: ; 0x0202110C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, r0
	mov r0, #0xbc
	mov fp, r1
	mov r5, r2
	mov r8, r3
	mov r6, #0
	bl _Znwm
	movs r4, r0
	beq _0202115C
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr sb, [r0, #0x4a8]
	mov r0, r4
	mov r1, r7
	mov r3, r5
	mov r2, #1
	str sb, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r4, r0
	arm_func_end sub_0202110C
_0202115C:
	ldr r5, [r4, #0xb8]
	cmp r5, #0
	bne _02021188
	cmp r4, #0
	beq _02021180
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02021180:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02021188:
	ldrh r1, [r5]
	ldr r7, [r5, #8]
	ldr r0, _02021310 ; =MAIN_BSS_0210C1AC
	cmp r8, #0
	str r1, [r0]
	ldr r1, [r4, #0xb8]
	ldrh r1, [r1, #2]
	str r1, [r0, #8]
	movne r1, #1
	ldr r0, [sp, #0x28]
	moveq r1, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	orrs r0, r1, r0
	beq _02021278
	ldr r1, [sp, #0x28]
	ldr r0, _02021314 ; =0x000003FF
	mov r2, #0
	and r0, r1, r0
	add r8, r0, r8, lsl #12
	mov r1, r2, lsl #0x10
	orr r0, r2, #0
	orr r2, r0, r8, lsl #16
	mov r3, r7, lsr #3
	orr r1, r1, r8, lsr #16
	orr r0, r8, r8, lsl #16
	orr r0, r1, r0
	cmp r3, #0
	orr r0, r0, #0
	orr r1, r8, r2
	add ip, r5, #0xc
	mov r2, #0
	ble _02021238
_02021210:
	mov lr, ip
	ldr sl, [ip], #8
	ldr sb, [lr, #4]
	adds sl, sl, r1
	str sl, [lr]
	adc sb, sb, r0
	add r2, r2, #1
	str sb, [lr, #4]
	cmp r2, r3
	blt _02021210
_02021238:
	mov r0, r8, lsl #0x10
	mov r1, r0, lsr #0x10
	and r0, r7, #7
	orr r1, r1, r1, lsl #16
	mov r3, r0, lsr #1
	cmp r3, #0
	mov r0, r1, lsl #0x10
	mov r8, #0
	ble _02021278
_0202125C:
	mov r2, ip
	ldrh r1, [ip], #2
	add r8, r8, #1
	cmp r8, r3
	add r1, r1, r0, lsr #16
	strh r1, [r2]
	blt _0202125C
_02021278:
	mov r1, r7
	add r0, r5, #0xc
	bl DC_FlushRange
	ldr r1, [sp, #0x2c]
	ldr r0, _02021310 ; =MAIN_BSS_0210C1AC
	mov r2, #0
	str r2, [r0, #4]
	cmp r1, #0
	beq _020212DC
	cmp r1, #1
	movne r6, r1
	bne _020212B4
	mov r0, r7
	bl _Z10Heap_Allocm
	mov r6, r0
_020212B4:
	mov r1, r6
	mov r2, r7
	add r0, r5, #0xc
	bl MI_CpuCopy8
	ldr r2, _02021310 ; =MAIN_BSS_0210C1AC
	mov r0, r6
	mov r1, r7
	str r7, [r2, #4]
	bl DC_FlushRange
	b _020212F0
_020212DC:
	ldr r3, [sp, #0x30]
	mov r0, fp
	mov r2, r7
	add r1, r5, #0xc
	bl sub_02021318
_020212F0:
	cmp r4, #0
	beq _02021308
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02021308:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02021310: .word MAIN_BSS_0210C1AC
_02021314: .word 0x000003FF

	arm_func_start sub_02021318
sub_02021318: ; 0x02021318
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, r2
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r4, r3
	bl DC_FlushRange
	cmp r7, #7
	addls pc, pc, r7, lsl #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02021344: ; jump table
	b _02021364 ; case 0
	b _02021378 ; case 1
	b _0202138C ; case 2
	b _020213A0 ; case 3
	b _020213B4 ; case 4
	b _020213C8 ; case 5
	b _020213DC ; case 6
	b _020213F0 ; case 7
	arm_func_end sub_02021318
_02021364:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG0Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02021378:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG1Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0202138C:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG2Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020213A0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GX_LoadBG3Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020213B4:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG0Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020213C8:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG1Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020213DC:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG2Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020213F0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG3Scr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02021404
sub_02021404: ; 0x02021404
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020214D8
	mov r0, r5
	mov r1, r4
	bl sub_020214E4
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02021404

	arm_func_start sub_02021428
sub_02021428: ; 0x02021428
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202143C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02021428

	arm_func_start sub_0202143C
sub_0202143C: ; 0x0202143C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _020214A0
	mov r6, r4
	arm_func_end sub_0202143C
_02021464:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0202148C
	bl _ZdaPv
	ldr r0, [r5]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_0202148C:
	ldr r1, [r5]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _02021464
_020214A0:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _020214BC
	bl _ZdaPv
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, #8]
_020214BC:
	ldr r0, [r5]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020214D8
sub_020214D8: ; 0x020214D8
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end sub_020214D8

	arm_func_start sub_020214E4
sub_020214E4: ; 0x020214E4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, r1
	bl sub_0202143C
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02021514
	mov r1, r4
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
	arm_func_end sub_020214E4
_02021514:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _020215DC
_0202156C:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _0202156C
_020215DC:
	cmp r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020215F8
sub_020215F8: ; 0x020215F8
	ldr r2, [r0]
	cmp r2, #0
	ldreq r0, _02021624 ; =DAT_0208bdb8
	bxeq lr
	ldr r0, [r2, #4]
	cmp r1, r0
	movhs r0, #0
	ldrlo r0, [r2, #8]
	addlo r0, r0, r1, lsl #3
	ldrlo r0, [r0, #4]
	bx lr
	.align 2, 0
_02021624: .word DAT_0208bdb8
	arm_func_end sub_020215F8

	arm_func_start sub_02021628
sub_02021628: ; 0x02021628
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end sub_02021628

	arm_func_start sub_0202163C
sub_0202163C: ; 0x0202163C
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0xa8]
	bl sub_02021808
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202163C

	arm_func_start sub_02021654
sub_02021654: ; 0x02021654
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02021668
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02021654

	arm_func_start sub_02021668
sub_02021668: ; 0x02021668
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0x3c]
	cmp r5, #0
	beq _02021698
	beq _02021690
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02021668
_02021690:
	mov r0, #0
	str r0, [r4, #0x3c]
_02021698:
	ldr r5, [r4, #0x40]
	cmp r5, #0
	beq _020216C0
	beq _020216B8
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl _ZdlPv
_020216B8:
	mov r0, #0
	str r0, [r4, #0x40]
_020216C0:
	ldr r5, [r4, #0x44]
	cmp r5, #0
	beq _020216E8
	beq _020216E0
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl _ZdlPv
_020216E0:
	mov r0, #0
	str r0, [r4, #0x44]
_020216E8:
	ldr r5, [r4, #0x48]
	cmp r5, #0
	beq _02021710
	beq _02021708
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_02021708:
	mov r0, #0
	str r0, [r4, #0x48]
_02021710:
	ldr r5, [r4, #0x4c]
	cmp r5, #0
	beq _02021738
	beq _02021730
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_02021730:
	mov r0, #0
	str r0, [r4, #0x4c]
_02021738:
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _02021760
	beq _02021758
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_02021758:
	mov r0, #0
	str r0, [r4, #0x50]
_02021760:
	ldr r0, [r4, #0xa8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r5, [r4, #0xa4]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02021790
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl _ZdlPv
_02021790:
	mov r0, #0
	str r0, [r4, #0xa4]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202179C
sub_0202179C: ; 0x0202179C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _020217C8
	ldr r2, [r4, #0xa8]
	mov r1, #0x80
	add r2, r2, #0x1000
	ldr r2, [r2, #0x5d0]
	mov r2, r2, asr #0xc
	bl sub_0200EB28
	arm_func_end sub_0202179C
_020217C8:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _020217D8
	bl sub_0200F64C
_020217D8:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _020217E8
	bl sub_0200F64C
_020217E8:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F64C
	ldmia sp!, {r4, pc}

	arm_func_start sub_020217FC
sub_020217FC: ; 0x020217FC
	ldr ip, _02021804 ; =sub_02021844
	bx ip
	.align 2, 0
_02021804: .word sub_02021844
	arm_func_end sub_020217FC

	arm_func_start sub_02021808
sub_02021808: ; 0x02021808
	mov r2, #0
	str r2, [r0, #0x30]
	str r2, [r0, #0x34]
	str r2, [r0, #0x3c]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	str r2, [r0, #0x48]
	str r2, [r0, #0x4c]
	str r2, [r0, #0x50]
	strh r2, [r0, #0x98]
	sub r1, r2, #1
	str r1, [r0, #0x38]
	str r2, [r0, #0xa4]
	str r2, [r0, #0x9c]
	bx lr
	arm_func_end sub_02021808

	arm_func_start sub_02021844
sub_02021844: ; 0x02021844
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x44]
	mov r5, #0
	mov r6, r5
	cmp r0, #0
	beq _02021888
	ldr r2, [r4, #0x30]
	ldr r1, [r4, #0x34]
	mov r3, r2, asr #2
	mov r2, r1, asr #2
	sub r1, r3, #0x80
	sub r2, r2, #0x60
	bl sub_0201FF60
	ldr r0, [r4, #0x44]
	ldr r5, [r0, #0x54]
	ldr r6, [r0, #0x58]
	arm_func_end sub_02021844
_02021888:
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x54]
	rsb r1, r5, r1, asr #2
	rsb r2, r6, r2, asr #2
	bl sub_0200EB28
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _020218B0
	bl sub_0200F71C
_020218B0:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _020218C0
	bl sub_0200F71C
_020218C0:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl sub_020218E0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020218E0
sub_020218E0: ; 0x020218E0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r0
	mov r4, #0
	mov r7, r1
	mov r6, r2
	mov r5, r8
	mov sb, #1
	mov sl, r4
	arm_func_end sub_020218E0
_02021900:
	ldr r3, [r5, #0x5c]
	cmp r3, #0
	beq _0202194C
	ldrsh r1, [r5, #0x60]
	ldrsh r0, [r5, #0x62]
	rsbs r1, r7, r1, asr #2
	rsb r2, r6, r0, asr #2
	bmi _02021938
	cmp r1, #0x100
	bge _02021938
	cmp r2, #0
	blt _02021938
	cmp r2, #0xc0
	blt _02021940
_02021938:
	str sl, [r3, #0x14]
	b _0202194C
_02021940:
	str sb, [r3, #0x14]
	ldr r0, [r5, #0x5c]
	bl sub_0200EB28
_0202194C:
	add r4, r4, #1
	cmp r4, #5
	add r5, r5, #0xc
	blt _02021900
	ldr r0, [r8, #0x50]
	bl sub_0200F71C
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start sub_02021968
sub_02021968: ; 0x02021968
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	bl sub_02021668
	mov r0, r4
	bl sub_02022038
	mov r0, #4
	bl _Znwm
	cmp r0, #0
	beq _02021998
	ldr r1, _02021B3C ; =s_data_message_etc_place_name_0208bdbc
	bl sub_02021404
	arm_func_end sub_02021968
_02021998:
	str r0, [r4, #0xa4]
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _020219B4
	ldr r1, [r4, #0xa8]
	bl sub_0201FC9C
_020219B4:
	str r0, [r4, #0x3c]
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _020219D0
	ldr r1, [r4, #0xa8]
	bl sub_0201FC9C
_020219D0:
	str r0, [r4, #0x40]
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _020219EC
	ldr r1, [r4, #0xa8]
	bl sub_0201FC9C
_020219EC:
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x3c]
	mov r1, #5
	bl sub_02020328
	ldr r0, [r4, #0x3c]
	ldr r1, _02021B40 ; =s_menu_0208bddc
	ldr r2, _02021B44 ; =s_mm000_0208bde4
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x3c]
	ldr r1, _02021B48 ; =s_mm000_00_0208bdec
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x3c]
	ldr r1, _02021B4C ; =s_mm000_0208bdf8
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #0x3c]
	ldr r1, _02021B48 ; =s_mm000_00_0208bdec
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r4, #0x3c]
	bl sub_020204A8
	ldr r0, [r4, #0x3c]
	mov r1, #0x100
	mov r2, r1
	bl sub_0201FE18
	ldr r0, [r4, #0x40]
	mov r1, #7
	bl sub_02020328
	ldr r0, [r4, #0x40]
	ldr r1, _02021B40 ; =s_menu_0208bddc
	ldr r2, _02021B44 ; =s_mm000_0208bde4
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #0x40]
	ldr r1, _02021B50 ; =s_mm000_01_0208be00
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r4, #0x40]
	bl sub_020204A8
	ldr r0, [r4, #0x40]
	mov r1, #0x100
	mov r2, r1
	bl sub_0201FE18
	ldr r0, [r4, #0x44]
	mov r1, #6
	bl sub_02020328
	ldr r0, [r4, #0x44]
	ldr r1, _02021B40 ; =s_menu_0208bddc
	ldr r2, _02021B54 ; =s_um_0208be0c
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x44]
	ldr r1, _02021B58 ; =s_um000_00_0208be10
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x44]
	ldr r1, _02021B5C ; =s_um000_0208be1c
	mov r3, #5
	bl sub_0202055C
	ldr r0, [r4, #0x44]
	bl sub_020204A8
	ldr r0, [r4, #0x44]
	mov r1, #0x100
	mov r2, r1
	bl sub_0201FE18
	mov r0, r4
	bl sub_02021B60
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02021B3C: .word s_data_message_etc_place_name_0208bdbc
_02021B40: .word s_menu_0208bddc
_02021B44: .word s_mm000_0208bde4
_02021B48: .word s_mm000_00_0208bdec
_02021B4C: .word s_mm000_0208bdf8
_02021B50: .word s_mm000_01_0208be00
_02021B54: .word s_um_0208be0c
_02021B58: .word s_um000_00_0208be10
_02021B5C: .word s_um000_0208be1c

	arm_func_start sub_02021B60
sub_02021B60: ; 0x02021B60
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x48]
	cmp r4, #0
	beq _02021B90
	beq _02021B88
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02021B60
_02021B88:
	mov r0, #0
	str r0, [r5, #0x48]
_02021B90:
	ldr r4, [r5, #0x4c]
	cmp r4, #0
	beq _02021BB8
	beq _02021BB0
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_02021BB0:
	mov r0, #0
	str r0, [r5, #0x4c]
_02021BB8:
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _02021BE0
	beq _02021BD8
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_02021BD8:
	mov r0, #0
	str r0, [r5, #0x50]
_02021BE0:
	mov r4, #0
	mov r0, #0x44
	str r4, [r5, #0xa0]
	bl _Znwm
	cmp r0, #0
	beq _02021C28
	ldr r2, [r5, #0xa8]
	mov r1, #0x40
	str r1, [sp]
	ldr r3, [r5, #0xa0]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add ip, r1, #0x400
	and r1, r3, #0xff
	ldr r2, [r2, #0x4a8]
	add r1, ip, r1, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_02021C28:
	str r0, [r5, #0x48]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x48]
	ldr r1, _02021D9C ; =s_data_menu_0208be24
	ldr r2, _02021DA0 ; =s_mm001_00_0208be30
	bl sub_0200F168
	add r4, r4, r0
	ldr r0, [r5, #0x48]
	bl sub_0200F398
	mov r1, #0
	str r1, [sp]
	ldr r0, [r5, #0x48]
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x48]
	ldr r2, [r5, #0xa0]
	ldr r1, [r0, #0x30]
	mov r0, #0x44
	add r1, r2, r1
	str r1, [r5, #0xa0]
	bl _Znwm
	cmp r0, #0
	beq _02021CC0
	ldr r2, [r5, #0xa8]
	mov r1, #0x40
	str r1, [sp]
	ldr r3, [r5, #0xa0]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add ip, r1, #0x400
	and r1, r3, #0xff
	ldr r2, [r2, #0x4a8]
	add r1, ip, r1, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_02021CC0:
	str r0, [r5, #0x4c]
	mov r0, #3
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r5, #0x4c]
	ldr r1, _02021D9C ; =s_data_menu_0208be24
	ldr r2, _02021DA4 ; =s_ma004_00_0208be3c
	mov r3, r3, asr #5
	bl sub_0200F168
	add r4, r4, r0
	ldr r0, [r5, #0x4c]
	bl sub_0200F398
	mov r1, #0
	mov r0, #2
	str r0, [sp]
	ldr r0, [r5, #0x4c]
	mov r2, r1
	mov r3, r1
	bl sub_0200F4FC
	str r0, [r5, #0x58]
	ldr r0, [r5, #0x4c]
	ldr r2, [r5, #0xa0]
	ldr r1, [r0, #0x30]
	mov r0, #0x44
	add r1, r2, r1
	str r1, [r5, #0xa0]
	bl _Znwm
	cmp r0, #0
	beq _02021D68
	ldr r2, [r5, #0xa8]
	mov r1, #0x40
	str r1, [sp]
	ldr r3, [r5, #0xa0]
	add r1, r2, #0x24
	add r2, r2, #0x1000
	add ip, r1, #0x400
	and r1, r3, #0xff
	ldr r2, [r2, #0x4a8]
	add r1, ip, r1, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_02021D68:
	str r0, [r5, #0x50]
	mov r0, #4
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r5, #0x50]
	ldr r1, _02021D9C ; =s_data_menu_0208be24
	ldr r2, _02021DA8 ; =s_mm001_03_0208be48
	mov r3, r3, asr #5
	bl sub_0200F168
	ldr r0, [r5, #0x50]
	bl sub_0200F398
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02021D9C: .word s_data_menu_0208be24
_02021DA0: .word s_mm001_00_0208be30
_02021DA4: .word s_ma004_00_0208be3c
_02021DA8: .word s_mm001_03_0208be48

	arm_func_start sub_02021DAC
sub_02021DAC: ; 0x02021DAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x48]
	bl sub_0200F398
	ldr r0, [r4, #0x4c]
	bl sub_0200F398
	ldr r0, [r4, #0x50]
	bl sub_0200F398
	ldmia sp!, {r4, pc}
	arm_func_end sub_02021DAC

	arm_func_start sub_02021DD0
sub_02021DD0: ; 0x02021DD0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x4c
	ldr r1, _02021EA8 ; =MAIN_BSS_0210CA6C
	mov r4, r0
	ldr r7, [r1]
	ldr r1, [r4, #0x38]
	mov r0, r7
	bl sub_02041D80
	ldrb r5, [r0]
	ldr r1, [r4, #0x38]
	mov r0, r7
	bl sub_02041D80
	ldrb r6, [r0, #1]
	ldr r1, [r4, #0x38]
	mov r0, r7
	bl sub_02041D80
	ldrb r1, [r0, #2]
	add r0, sp, #0xc
	cmp r1, #0xff
	bne _02021E34
	ldr r1, _02021EAC ; =s_data_menu_um_03d_03d_LZ_bin_0208be54
	mov r2, r5
	mov r3, r6
	bl OS_SPrintf
	b _02021E4C
	arm_func_end sub_02021DD0
_02021E34:
	add ip, r1, #0x61
	ldr r1, _02021EB0 ; =s_data_menu_um_03d_03d_c_LZ_bin_0208be74
	mov r2, r5
	mov r3, r6
	str ip, [sp]
	bl OS_SPrintf
_02021E4C:
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	add r1, sp, #0xc
	mov r3, #5
	bl sub_0202067C
	cmp r0, #0
	addne sp, sp, #0x4c
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	ldr r1, _02021EB4 ; =s_data_menu_um004_001_LZ_bin_0208be94
	mov r3, #5
	bl sub_0202067C
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02021EA8: .word MAIN_BSS_0210CA6C
_02021EAC: .word s_data_menu_um_03d_03d_LZ_bin_0208be54
_02021EB0: .word s_data_menu_um_03d_03d_c_LZ_bin_0208be74
_02021EB4: .word s_data_menu_um004_001_LZ_bin_0208be94

	arm_func_start sub_02021EB8
sub_02021EB8: ; 0x02021EB8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mvn r0, #0
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x44]
	bl sub_02020750
	ldr r0, [r4, #0xa8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02021EB8

	arm_func_start sub_02021EF0
sub_02021EF0: ; 0x02021EF0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	ldr r1, _02021FD0 ; =MAIN_BSS_0210CA6C
	mov r5, r0
	ldr r0, [r1]
	ldr r1, [r5, #0x38]
	bl sub_02041D80
	ldrb r4, [r0]
	cmp r4, #0xc8
	subhs r0, r4, #0x9b
	andhs r4, r0, #0xff
	ldr r0, [r5, #0xa8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r0, [r5, #0xa8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	ldr r0, [r5, #0xa8]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CC88
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x334
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r0, [r5, #0xa8]
	mov r2, #0x10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CCD0
	ldr r2, [r5, #0xa8]
	ldr r0, [r5, #0xa4]
	add r2, r2, #0x1000
	mov r1, r4
	ldr r4, [r2, #0x498]
	bl sub_020215F8
	mov r1, #1
	str r1, [sp]
	stmib sp, {r0, r1}
	mov r1, #0
	mov r0, r4
	mov r2, r1
	mov r3, r1
	str r1, [sp, #0xc]
	bl sub_0200CDA0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02021FD0: .word MAIN_BSS_0210CA6C
	arm_func_end sub_02021EF0

	arm_func_start sub_02021FD4
sub_02021FD4: ; 0x02021FD4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02022038
	ldr r0, [r4, #0x3c]
	bl sub_0201FEDC
	ldr r0, [r4, #0x40]
	bl sub_0201FEDC
	ldr r0, [r4, #0x44]
	bl sub_0201FD24
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_0201FDE8
	mov r0, r4
	bl sub_02021EF0
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	mov r1, r1, asr #2
	sub r1, r1, #0x80
	mov r2, r2, asr #2
	sub r2, r2, #0x60
	bl sub_0201FF00
	mov r0, r4
	bl sub_02021DAC
	ldmia sp!, {r4, pc}
	arm_func_end sub_02021FD4

	arm_func_start sub_02022038
sub_02022038: ; 0x02022038
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r0, #0
	bl GXS_SetGraphicsMode
	ldr ip, _020220F8 ; =0x04001000
	mov lr, #0x1a
	ldr r1, [ip]
	add r0, ip, #0x50
	bic r1, r1, #0x1f00
	orr r1, r1, #0x1f00
	str r1, [ip]
	ldrh r3, [ip, #0xa]
	mov r1, #0
	mov r2, #0xc
	and r3, r3, #0x43
	orr r3, r3, #0x200
	strh r3, [ip, #0xa]
	ldrh r4, [ip, #0xc]
	mov r3, #5
	and r4, r4, #0x43
	orr r4, r4, #0x304
	strh r4, [ip, #0xc]
	ldrh r4, [ip, #0xe]
	and r4, r4, #0x43
	orr r4, r4, #0x400
	strh r4, [ip, #0xe]
	ldrh r4, [ip, #8]
	bic r4, r4, #3
	strh r4, [ip, #8]
	ldrh r4, [ip, #0xa]
	bic r4, r4, #3
	orr r4, r4, #1
	strh r4, [ip, #0xa]
	ldrh r4, [ip, #0xc]
	bic r4, r4, #3
	orr r4, r4, #2
	strh r4, [ip, #0xc]
	ldrh r4, [ip, #0xe]
	bic r4, r4, #3
	orr r4, r4, #3
	strh r4, [ip, #0xe]
	ldrh r4, [ip, #8]
	bic r4, r4, #0x40
	strh r4, [ip, #8]
	str lr, [sp]
	bl G2x_SetBlendAlpha_
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_020220F8: .word 0x04001000
	arm_func_end sub_02022038

	arm_func_start sub_020220FC
sub_020220FC: ; 0x020220FC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2
	mov r5, r0
	mov r2, r3
	bl sub_02022184
	ldr r0, [r5, #0x38]
	cmp r0, r4
	beq _02022134
	mov r0, r5
	str r4, [r5, #0x38]
	bl sub_02022038
	mov r0, r5
	bl sub_02021DD0
	arm_func_end sub_020220FC
_02022134:
	mov r0, r5
	str r4, [r5, #0x38]
	bl sub_02021FD4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02022148
sub_02022148: ; 0x02022148
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2
	mov r5, r0
	mov r2, r3
	bl sub_02022184
	ldr r0, [r5, #0x38]
	cmp r0, r4
	beq _02022178
	mov r0, r5
	str r4, [r5, #0x38]
	bl sub_02021DD0
	arm_func_end sub_02022148
_02022178:
	str r4, [r5, #0x38]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02022184
sub_02022184: ; 0x02022184
	str r1, [r0, #0x30]
	str r2, [r0, #0x34]
	bx lr
	arm_func_end sub_02022184

	arm_func_start sub_02022190
sub_02022190: ; 0x02022190
	stmdb sp!, {r3, lr}
	mov r3, #0
	mov ip, r0
	mov r2, #3
	mov r1, r3
	arm_func_end sub_02022190
_020221A4:
	strh r2, [ip, #0x64]
	str r1, [ip, #0x5c]
	strh r1, [ip, #0x60]
	add r3, r3, #1
	strh r1, [ip, #0x62]
	cmp r3, #5
	add ip, ip, #0xc
	blt _020221A4
	ldr r0, [r0, #0x50]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0200F6C4
	ldmia sp!, {r3, pc}

	arm_func_start sub_020221D8
sub_020221D8: ; 0x020221D8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	ldr r0, [r8, #0x48]
	mov r7, r1
	cmp r0, #0
	mov r6, r2
	mov r5, r3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r1, r8
	mov r4, #0
	arm_func_end sub_020221D8
_02022204:
	ldr r0, [r1, #0x5c]
	cmp r0, #0
	bne _02022284
	cmp r5, #0
	beq _02022224
	cmp r5, #1
	beq _0202222C
	b _02022234
_02022224:
	mov r1, #0
	b _02022238
_0202222C:
	mov r1, #1
	b _02022238
_02022234:
	mov r1, #0
_02022238:
	mov r0, #2
	str r0, [sp]
	mov r2, #0
	ldr r0, [r8, #0x50]
	mov r3, r2
	mov sb, #0xc
	bl sub_0200F4FC
	mla r1, r4, sb, r8
	str r0, [r1, #0x5c]
	strh r7, [r1, #0x60]
	strh r6, [r1, #0x62]
	strh r5, [r1, #0x64]
	ldr r0, [r8, #0x48]
	ldr r2, [r8, #0xa0]
	ldr r1, [r0, #0x30]
	mov r0, #1
	add r1, r2, r1
	str r1, [r8, #0xa0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02022284:
	add r4, r4, #1
	cmp r4, #5
	add r1, r1, #0xc
	blt _02022204
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_0202229C
sub_0202229C: ; 0x0202229C
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #4]
	bl sub_020222D4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202229C

	arm_func_start sub_020222B4
sub_020222B4: ; 0x020222B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020222C8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020222B4

	arm_func_start sub_020222C8
sub_020222C8: ; 0x020222C8
	bx lr
	arm_func_end sub_020222C8

	arm_func_start sub_020222CC
sub_020222CC: ; 0x020222CC
	bx lr
	arm_func_end sub_020222CC

	arm_func_start sub_020222D0
sub_020222D0: ; 0x020222D0
	bx lr
	arm_func_end sub_020222D0

	arm_func_start sub_020222D4
sub_020222D4: ; 0x020222D4
	bx lr
	arm_func_end sub_020222D4

	arm_func_start sub_020222D8
sub_020222D8: ; 0x020222D8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x50
	mov r4, r1
	bl sub_02022370
	ldr r1, _02022364 ; =s_uppict_03d_0208beb0
	add r0, sp, #0x10
	mov r2, r4
	bl OS_SPrintf
	ldr r1, _02022368 ; =s_uppict_03d_00_0208bebc
	add r0, sp, #0x30
	mov r2, r4
	bl OS_SPrintf
	mov r0, #0x20
	str r0, [sp]
	add r3, sp, #0x30
	mov r0, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0202236C ; =s_uppict_0208becc
	add r1, sp, #0x10
	mov r2, #4
	bl sub_02020804
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0202236C ; =s_uppict_0208becc
	add r1, sp, #0x10
	mov r2, #4
	add r3, sp, #0x30
	bl sub_02020FF0
	mov r0, #1
	add sp, sp, #0x50
	ldmia sp!, {r4, pc}
	.align 2, 0
_02022364: .word s_uppict_03d_0208beb0
_02022368: .word s_uppict_03d_00_0208bebc
_0202236C: .word s_uppict_0208becc
	arm_func_end sub_020222D8

	arm_func_start sub_02022370
sub_02022370: ; 0x02022370
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl GX_ResetBankForSubBG
	bl GX_ResetBankForSubOBJ
	bl GX_ResetBankForSubBGExtPltt
	bl GX_ResetBankForSubOBJExtPltt
	mov r0, #0x180
	bl GX_SetBankForSubBG
	mov r0, #0
	bl GX_SetBankForSubOBJ
	mov r0, #0
	bl GXS_SetGraphicsMode
	ldr ip, _02022400 ; =0x04001000
	mov lr, #7
	ldr r1, [ip]
	add r0, ip, #0x50
	bic r1, r1, #0x1f00
	orr r1, r1, #0x100
	str r1, [ip]
	ldrh r3, [ip, #8]
	mov r1, #0
	mov r2, r1
	and r3, r3, #0x43
	orr r3, r3, #0x80
	strh r3, [ip, #8]
	ldrh r4, [ip, #8]
	mov r3, #8
	bic r4, r4, #3
	strh r4, [ip, #8]
	ldrh r4, [ip, #8]
	bic r4, r4, #0x40
	strh r4, [ip, #8]
	str lr, [sp]
	bl G2x_SetBlendAlpha_
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02022400: .word 0x04001000
	arm_func_end sub_02022370

	arm_func_start sub_02022404
sub_02022404: ; 0x02022404
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x68]
	bl sub_020227C4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02022404

	arm_func_start sub_0202241C
sub_0202241C: ; 0x0202241C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0x30]
	cmp r5, #0
	beq _0202244C
	beq _02022444
	mov r0, r5
	bl sub_02024844
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_0202241C
_02022444:
	mov r0, #0
	str r0, [r4, #0x30]
_0202244C:
	ldr r5, [r4, #0x40]
	cmp r5, #0
	beq _02022474
	beq _0202246C
	mov r0, r5
	bl sub_0201B78C
	mov r0, r5
	bl _ZdlPv
_0202246C:
	mov r0, #0
	str r0, [r4, #0x40]
_02022474:
	ldr r5, [r4, #0x34]
	cmp r5, #0
	beq _0202249C
	beq _02022494
	mov r0, r5
	bl sub_0201CAF0
	mov r0, r5
	bl _ZdlPv
_02022494:
	mov r0, #0
	str r0, [r4, #0x34]
_0202249C:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _020224C4
	beq _020224BC
	mov r0, r5
	bl sub_02021654
	mov r0, r5
	bl _ZdlPv
_020224BC:
	mov r0, #0
	str r0, [r4, #0x18]
_020224C4:
	ldr r5, [r4, #0x4c]
	cmp r5, #0
	beq _020224EC
	beq _020224E4
	mov r0, r5
	bl sub_02025690
	mov r0, r5
	bl _ZdlPv
_020224E4:
	mov r0, #0
	str r0, [r4, #0x4c]
_020224EC:
	ldr r5, [r4, #0x54]
	cmp r5, #0
	beq _02022514
	beq _0202250C
	mov r0, r5
	bl sub_020222B4
	mov r0, r5
	bl _ZdlPv
_0202250C:
	mov r0, #0
	str r0, [r4, #0x54]
_02022514:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202251C
sub_0202251C: ; 0x0202251C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _02022608
_02022534: ; jump table
	b _02022608 ; case 0
	b _02022560 ; case 1
	b _0202256C ; case 2
	b _02022608 ; case 3
	b _02022578 ; case 4
	b _02022608 ; case 5
	b _02022598 ; case 6
	b _02022608 ; case 7
	b _020225F4 ; case 8
	b _020225B8 ; case 9
	b _02022600 ; case 10
	arm_func_end sub_0202251C
_02022560:
	ldr r0, [r4, #0x18]
	bl sub_0202179C
	b _02022608
_0202256C:
	ldr r0, [r4, #0x30]
	bl sub_020255F0
	b _02022608
_02022578:
	ldr r0, [r4, #0x34]
	ldr r1, [r0, #0x70]
	cmp r1, #0x10
	bne _02022608
	bl sub_0201F930
	mov r0, r4
	bl sub_020231A0
	b _02022608
_02022598:
	ldr r0, [r4, #0x40]
	ldr r1, [r0, #0x50]
	cmp r1, #0x10
	bne _02022608
	bl sub_0201C82C
	mov r0, r4
	bl sub_020231A0
	b _02022608
_020225B8:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x48]
	bl sub_020257F4
	mvn r1, #0
	str r0, [r4, #0x48]
	cmp r0, r1
	bne _02022608
	ldr r0, [r4, #0x4c]
	bl sub_020276A0
	mov r2, #8
	mov r0, r4
	mov r1, #0xa
	strh r2, [r4]
	bl sub_02023230
	b _02022608
_020225F4:
	ldr r0, [r4, #0x4c]
	bl sub_02027640
	b _02022608
_02022600:
	ldr r0, [r4, #0x54]
	bl sub_020222CC
_02022608:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl sub_0202331C
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4, #2]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0202263C: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _02022668 ; case 1
	b _02022674 ; case 2
	ldmia sp!, {r4, pc} ; case 3
	b _02022680 ; case 4
	ldmia sp!, {r4, pc} ; case 5
	b _020226BC ; case 6
	ldmia sp!, {r4, pc} ; case 7
	ldmia sp!, {r4, pc} ; case 8
	b _020226F8 ; case 9
	b _02022704 ; case 10
_02022668:
	mov r0, r4
	bl sub_02022EE8
	ldmia sp!, {r4, pc}
_02022674:
	mov r0, r4
	bl sub_02022F50
	ldmia sp!, {r4, pc}
_02022680:
	mov r1, #3
	mov r0, r4
	strh r1, [r4]
	bl sub_02022FF4
	cmp r0, #0x10
	movne r0, #1
	strne r0, [r4, #4]
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_02023134
	ldr r0, [r4, #0x34]
	bl sub_0201FA1C
	mov r0, #4
	strh r0, [r4]
	ldmia sp!, {r4, pc}
_020226BC:
	mov r1, #5
	mov r0, r4
	strh r1, [r4]
	bl sub_02023060
	cmp r0, #0x10
	movne r0, #1
	strne r0, [r4, #4]
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl sub_02023134
	ldr r0, [r4, #0x40]
	bl sub_0201C8B0
	mov r0, #6
	strh r0, [r4]
	ldmia sp!, {r4, pc}
_020226F8:
	mov r0, r4
	bl sub_02023078
	ldmia sp!, {r4, pc}
_02022704:
	mov r0, r4
	bl sub_020230D4
	ldmia sp!, {r4, pc}

	arm_func_start sub_02022710
sub_02022710: ; 0x02022710
	bx lr
	arm_func_end sub_02022710

	arm_func_start sub_02022714
sub_02022714: ; 0x02022714
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_02022728: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _02022754 ; case 1
	b _0202275C ; case 2
	ldmia sp!, {r3, pc} ; case 3
	b _02022764 ; case 4
	ldmia sp!, {r3, pc} ; case 5
	b _0202277C ; case 6
	b _020227A4 ; case 7
	b _02022794 ; case 8
	ldmia sp!, {r3, pc} ; case 9
	b _0202279C ; case 10
	arm_func_end sub_02022714
_02022754:
	bl sub_020228C4
	ldmia sp!, {r3, pc}
_0202275C:
	bl sub_020228D4
	ldmia sp!, {r3, pc}
_02022764:
	ldr r1, [r0, #0x34]
	ldr r1, [r1, #0x70]
	cmp r1, #0x10
	ldmneia sp!, {r3, pc}
	bl sub_020228E4
	ldmia sp!, {r3, pc}
_0202277C:
	ldr r1, [r0, #0x40]
	ldr r1, [r1, #0x50]
	cmp r1, #0x10
	ldmneia sp!, {r3, pc}
	bl sub_020228F4
	ldmia sp!, {r3, pc}
_02022794:
	bl sub_02022904
	ldmia sp!, {r3, pc}
_0202279C:
	bl sub_02022914
	ldmia sp!, {r3, pc}
_020227A4:
	bl _Z12sub_02001210v
	ldmia sp!, {r3, pc}

	arm_func_start sub_020227AC
sub_020227AC: ; 0x020227AC
	stmdb sp!, {r3, lr}
	ldrh r0, [r0]
	cmp r0, #7
	ldmneia sp!, {r3, pc}
	bl sub_02007D78
	ldmia sp!, {r3, pc}
	arm_func_end sub_020227AC

	arm_func_start sub_020227C4
sub_020227C4: ; 0x020227C4
	stmdb sp!, {r4, lr}
	mov r2, #0
	mov r4, r0
	strh r2, [r4]
	ldr r1, _020228BC ; =MAIN_BSS_0210C1B8
	strh r2, [r4, #2]
	str r4, [r1]
	bl sub_020228C0
	mov r1, #0
	mov r0, #0xac
	str r1, [r4, #4]
	bl _Znwm
	cmp r0, #0
	beq _02022804
	ldr r1, [r4, #0x68]
	bl sub_0202163C
	arm_func_end sub_020227C4
_02022804:
	str r0, [r4, #0x18]
	bl sub_02021968
	mov r0, #0x5c
	bl _Znwm
	cmp r0, #0
	beq _02022820
	bl sub_0201B724
_02022820:
	str r0, [r4, #0x40]
	bl sub_0201C340
	mov r0, #0x7c
	bl _Znwm
	cmp r0, #0
	beq _0202283C
	bl sub_0201CA6C
_0202283C:
	str r0, [r4, #0x34]
	bl sub_0201E6B4
	mov r0, #0x78
	bl _Znwm
	cmp r0, #0
	beq _02022858
	bl sub_020247CC
_02022858:
	str r0, [r4, #0x30]
	mov r0, #0x54
	bl _Znwm
	cmp r0, #0
	beq _02022870
	bl sub_02025648
_02022870:
	str r0, [r4, #0x4c]
	mov r0, #8
	bl _Znwm
	cmp r0, #0
	beq _0202288C
	ldr r1, [r4, #0x68]
	bl sub_0202229C
_0202288C:
	str r0, [r4, #0x54]
	mvn r1, #0
	str r1, [r4, #0x38]
	mov r0, r4
	str r1, [r4, #0x44]
	mov r2, #0
	mov r1, #1
	str r2, [r4, #0x58]
	bl sub_02023198
	mov r0, #0
	str r0, [r4, #0x64]
	ldmia sp!, {r4, pc}
	.align 2, 0
_020228BC: .word MAIN_BSS_0210C1B8

	arm_func_start sub_020228C0
sub_020228C0: ; 0x020228C0
	bx lr
	arm_func_end sub_020228C0

	arm_func_start sub_020228C4
sub_020228C4: ; 0x020228C4
	ldr ip, _020228D0 ; =sub_020217FC
	ldr r0, [r0, #0x18]
	bx ip
	.align 2, 0
_020228D0: .word sub_020217FC
	arm_func_end sub_020228C4

	arm_func_start sub_020228D4
sub_020228D4: ; 0x020228D4
	ldr ip, _020228E0 ; =sub_02025624
	ldr r0, [r0, #0x30]
	bx ip
	.align 2, 0
_020228E0: .word sub_02025624
	arm_func_end sub_020228D4

	arm_func_start sub_020228E4
sub_020228E4: ; 0x020228E4
	ldr ip, _020228F0 ; =sub_0201F988
	ldr r0, [r0, #0x34]
	bx ip
	.align 2, 0
_020228F0: .word sub_0201F988
	arm_func_end sub_020228E4

	arm_func_start sub_020228F4
sub_020228F4: ; 0x020228F4
	ldr ip, _02022900 ; =sub_0201C874
	ldr r0, [r0, #0x40]
	bx ip
	.align 2, 0
_02022900: .word sub_0201C874
	arm_func_end sub_020228F4

	arm_func_start sub_02022904
sub_02022904: ; 0x02022904
	ldr ip, _02022910 ; =sub_02027674
	ldr r0, [r0, #0x4c]
	bx ip
	.align 2, 0
_02022910: .word sub_02027674
	arm_func_end sub_02022904

	arm_func_start sub_02022914
sub_02022914: ; 0x02022914
	ldr ip, _02022920 ; =sub_020222D0
	ldr r0, [r0, #0x54]
	bx ip
	.align 2, 0
_02022920: .word sub_020222D0
	arm_func_end sub_02022914

	arm_func_start sub_02022924
sub_02022924: ; 0x02022924
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02021EB8
	ldmia sp!, {r3, pc}
	arm_func_end sub_02022924

	arm_func_start sub_0202293C
sub_0202293C: ; 0x0202293C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x64]
	str r0, [r4, #0x2c]
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	mov r7, r2
	mov r6, r3
	bl sub_02022148
	ldr r0, [r4, #0x58]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mvn r1, #0
	str r1, [r4, #0x44]
	mov r0, r4
	str r1, [r4, #0x38]
	bl sub_02023180
	ldr r5, _020229F0 ; =MAIN_BSS_020BB210
	ldr r0, [r5]
	cmp r0, #0
	bne _020229C4
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x30]
	bl sub_02024A60
	mov r0, r4
	bl sub_02023160
	mov r0, #2
	strh r0, [r4]
	mov r0, #0
	strh r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0202293C
_020229C4:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	mov r2, r7
	mov r3, r6
	bl sub_020220FC
	mov r0, #1
	strh r0, [r4]
	mov r1, #0
	strh r1, [r4, #2]
	str r0, [r5]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020229F0: .word MAIN_BSS_020BB210

	arm_func_start sub_020229F4
sub_020229F4: ; 0x020229F4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov lr, #0
	str lr, [r4, #0x64]
	ldr r0, [r4, #0x58]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov ip, #1
	sub r0, lr, #0x3e8
	cmp r2, r0
	cmpeq r3, r0
	strh ip, [r4, #2]
	cmpeq r1, r0
	strne r1, [r4, #0x20]
	strne r2, [r4, #0x24]
	strne r3, [r4, #0x28]
	bne _02022A58
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0x30]
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0x34]
	str r0, [r4, #0x28]
	arm_func_end sub_020229F4
_02022A58:
	mov r0, r4
	bl sub_02022ED0
	cmp r0, #0
	bne _02022A78
	mov r1, #0
	mov r0, r4
	str r1, [r4, #4]
	bl sub_02022EE8
_02022A78:
	ldr r0, _02022A94 ; =MAIN_BSS_020BA6A0
	mov r1, #1
	str r1, [r0, #0xb70]
	sub r0, r1, #2
	str r0, [r4, #0x38]
	str r0, [r4, #0x44]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02022A94: .word MAIN_BSS_020BA6A0

	arm_func_start sub_02022A98
sub_02022A98: ; 0x02022A98
	stmdb sp!, {r3, lr}
	ldr r3, [r0, #0x58]
	cmp r3, #0
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #0x18]
	bl sub_02022184
	ldmia sp!, {r3, pc}
	arm_func_end sub_02022A98

	arm_func_start sub_02022AB4
sub_02022AB4: ; 0x02022AB4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	str r2, [r4, #0x64]
	ldr r1, [r4, #0x58]
	cmp r1, #0
	movne r0, r2
	ldmneia sp!, {r4, pc}
	str r2, [r4, #0x2c]
	mov r1, #2
	strh r1, [r4, #2]
	bl sub_02022ED0
	cmp r0, #0
	bne _02022AFC
	mov r1, #0
	mov r0, r4
	str r1, [r4, #4]
	bl sub_02022F50
	arm_func_end sub_02022AB4
_02022AFC:
	ldr r0, _02022B1C ; =MAIN_BSS_020BA6A0
	mov r1, #0
	str r1, [r0, #0xb70]
	sub r0, r1, #1
	str r0, [r4, #0x38]
	str r0, [r4, #0x44]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02022B1C: .word MAIN_BSS_020BA6A0

	arm_func_start sub_02022B20
sub_02022B20: ; 0x02022B20
	stmdb sp!, {r3, lr}
	mov r2, #0
	str r2, [r0, #0x64]
	ldr r1, [r0, #0x58]
	cmp r1, #0
	movne r0, r2
	ldmneia sp!, {r3, pc}
	ldrh r1, [r0]
	cmp r1, #2
	bne _02022B58
	ldrh r1, [r0, #2]
	cmp r1, #2
	beq _02022B58
	bl sub_02022AB4
	arm_func_end sub_02022B20
_02022B58:
	mov r0, #1
	ldmia sp!, {r3, pc}

	arm_func_start sub_02022B60
sub_02022B60: ; 0x02022B60
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov ip, #0
	str ip, [r4, #0x64]
	ldr r3, [r4, #0x58]
	cmp r3, #0
	movne r0, ip
	ldmneia sp!, {r4, pc}
	str ip, [r4, #0x2c]
	ldr r3, [r4, #0x38]
	cmp r1, r3
	moveq r0, ip
	ldmeqia sp!, {r4, pc}
	mov r3, #4
	strh r3, [r4, #2]
	str r1, [r4, #0x38]
	str r2, [r4, #0x3c]
	bl sub_02022ED0
	mov r0, r4
	bl sub_02022FA8
	mvn r0, #0
	str r0, [r4, #0x44]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02022B60

	arm_func_start sub_02022BC0
sub_02022BC0: ; 0x02022BC0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r3, #0
	str r3, [r4, #0x64]
	ldr r2, [r4, #0x58]
	cmp r2, #0
	movne r0, r3
	ldmneia sp!, {r4, pc}
	str r3, [r4, #0x2c]
	ldr r2, [r4, #0x44]
	cmp r1, r2
	moveq r0, r3
	ldmeqia sp!, {r4, pc}
	mov r2, #6
	strh r2, [r4, #2]
	str r1, [r4, #0x44]
	bl sub_02022ED0
	mov r0, r4
	bl sub_02023014
	mvn r0, #0
	str r0, [r4, #0x38]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02022BC0

	arm_func_start sub_02022C1C
sub_02022C1C: ; 0x02022C1C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	str r2, [r4, #0x64]
	ldr r1, [r4, #0x58]
	cmp r1, #0
	movne r0, r2
	ldmneia sp!, {r4, pc}
	sub r1, r2, #1
	str r1, [r4, #0x38]
	str r1, [r4, #0x44]
	mov r1, #9
	strh r1, [r4, #2]
	bl sub_02022ED0
	cmp r0, #0
	bne _02022C6C
	mov r1, #0
	mov r0, r4
	str r1, [r4, #4]
	bl sub_02023078
	arm_func_end sub_02022C1C
_02022C6C:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start sub_02022C74
sub_02022C74: ; 0x02022C74
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #0
	str r2, [r5, #0x64]
	ldr r1, [r5, #0x58]
	cmp r1, #0
	movne r0, r2
	ldmneia sp!, {r3, r4, r5, pc}
	bl sub_02023180
	mvn r1, #0
	str r1, [r5, #0x38]
	mov r0, r5
	str r1, [r5, #0x44]
	bl sub_02023180
	ldr r0, [r5, #0x4c]
	bl sub_020256A4
	mov r1, #0
	sub r0, r1, #1
	str r1, [r5, #0x48]
	cmp r1, r0
	beq _02022CE4
	mvn r4, #0
	arm_func_end sub_02022C74
_02022CCC:
	ldr r0, [r5, #0x4c]
	bl sub_020257F4
	mov r1, r0
	str r0, [r5, #0x48]
	cmp r1, r4
	bne _02022CCC
_02022CE4:
	ldr r0, [r5, #0x4c]
	bl sub_020276A0
	mov r1, #8
	mov r0, r5
	strh r1, [r5]
	bl sub_02023160
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02022D04
sub_02022D04: ; 0x02022D04
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	str r2, [r4, #0x64]
	ldr r1, [r4, #0x58]
	cmp r1, #0
	movne r0, r2
	ldmneia sp!, {r4, pc}
	ldr r1, [r4, #0x68]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x5d4]
	cmp r1, #0
	moveq r0, r2
	ldmeqia sp!, {r4, pc}
	ldrh r2, [r4]
	cmp r2, #8
	ldrneh r1, [r4, #2]
	cmpne r1, #9
	cmpne r2, #9
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_02023180
	mov r0, #7
	ldr r1, _02022D84 ; =0x04001000
	strh r0, [r4]
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x800
	str r0, [r1]
	bl sub_02007D68
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02022D84: .word 0x04001000
	arm_func_end sub_02022D04

	arm_func_start sub_02022D88
sub_02022D88: ; 0x02022D88
	stmdb sp!, {r3, lr}
	mov r1, #0
	str r1, [r0, #0x64]
	ldr r1, [r0, #0x58]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	ldr r1, _02022DD0 ; =MAIN_BSS_020BA6A0
	ldr r1, [r1, #0xb70]
	cmp r1, #0
	beq _02022DB8
	bl sub_02022AB4
	ldmia sp!, {r3, pc}
	arm_func_end sub_02022D88
_02022DB8:
	ldr r3, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x34]
	bl sub_020229F4
	ldmia sp!, {r3, pc}
	.align 2, 0
_02022DD0: .word MAIN_BSS_020BA6A0

	arm_func_start sub_02022DD4
sub_02022DD4: ; 0x02022DD4
	stmdb sp!, {r3, lr}
	mov r1, #0
	str r1, [r0, #0x64]
	ldrh r2, [r0, #2]
	cmp r2, #9
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0x58]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	ldr r1, _02022E44 ; =MAIN_BSS_020BA6A0
	ldr r1, [r1, #0xb70]
	cmp r1, #0
	ldrh r1, [r0]
	beq _02022E30
	cmp r1, #1
	cmpne r2, #1
	ldmeqia sp!, {r3, pc}
	ldr r3, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x34]
	bl sub_020229F4
	ldmia sp!, {r3, pc}
	arm_func_end sub_02022DD4
_02022E30:
	cmp r1, #2
	cmpne r2, #2
	ldmeqia sp!, {r3, pc}
	bl sub_02022AB4
	ldmia sp!, {r3, pc}
	.align 2, 0
_02022E44: .word MAIN_BSS_020BA6A0

	arm_func_start sub_02022E48
sub_02022E48: ; 0x02022E48
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	str r0, [r5, #0x64]
	ldr r0, [r5, #0x30]
	mov r4, r1
	bl sub_02024A2C
	ldr r0, [r5, #0x34]
	bl sub_0201CB0C
	ldr r0, [r5, #0x40]
	bl sub_0201B7A8
	ldr r0, [r5, #0x4c]
	bl sub_020256A4
	ldr r0, [r5, #0x54]
	bl sub_020222D4
	mov r0, #1
	str r0, [r5, #0x58]
	mov r0, r5
	str r4, [r5, #0x50]
	mov r1, #0xa
	strh r1, [r5, #2]
	bl sub_02022ED0
	cmp r0, #0
	bne _02022EB8
	mov r1, #0
	mov r0, r5
	str r1, [r5, #4]
	bl sub_020230D4
	arm_func_end sub_02022E48
_02022EB8:
	mov r0, #0
	str r0, [r5, #0x64]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02022EC4
sub_02022EC4: ; 0x02022EC4
	mov r1, #0
	str r1, [r0, #0x58]
	bx lr
	arm_func_end sub_02022EC4

	arm_func_start sub_02022ED0
sub_02022ED0: ; 0x02022ED0
	ldr ip, _02022EE4 ; =sub_02023298
	mov r2, #1
	mov r1, #0xa
	str r2, [r0, #4]
	bx ip
	.align 2, 0
_02022EE4: .word sub_02023298
	arm_func_end sub_02022ED0

	arm_func_start sub_02022EE8
sub_02022EE8: ; 0x02022EE8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x34]
	bl sub_0201CB0C
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x4c]
	bl sub_020256A4
	ldr r0, [r4, #0x54]
	bl sub_020222D4
	mov r0, r4
	bl sub_02023180
	mov r0, r4
	bl sub_02023134
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x20]
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	bl sub_020220FC
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02022EE8

	arm_func_start sub_02022F50
sub_02022F50: ; 0x02022F50
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x34]
	bl sub_0201CB0C
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x4c]
	bl sub_020256A4
	ldr r0, [r4, #0x54]
	bl sub_020222D4
	mov r0, r4
	bl sub_02023180
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x30]
	bl sub_02024A60
	mov r0, r4
	bl sub_02023134
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02022F50

	arm_func_start sub_02022FA8
sub_02022FA8: ; 0x02022FA8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x4c]
	bl sub_020256A4
	ldr r0, [r4, #0x54]
	bl sub_020222D4
	mov r0, r4
	bl sub_02023180
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x34]
	bl sub_0201CB0C
	ldr r0, [r4, #0x34]
	bl sub_0201D5A4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02022FA8

	arm_func_start sub_02022FF4
sub_02022FF4: ; 0x02022FF4
	ldr ip, _02023010 ; =sub_0201D5B0
	mov r2, r0
	ldr r0, [r2, #0x34]
	ldr r1, [r2, #0x38]
	ldr r2, [r2, #0x3c]
	mov r3, #0
	bx ip
	.align 2, 0
_02023010: .word sub_0201D5B0
	arm_func_end sub_02022FF4

	arm_func_start sub_02023014
sub_02023014: ; 0x02023014
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x4c]
	bl sub_020256A4
	ldr r0, [r4, #0x54]
	bl sub_020222D4
	mov r0, r4
	bl sub_02023180
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x40]
	bl sub_0201BA40
	ldmia sp!, {r4, pc}
	arm_func_end sub_02023014

	arm_func_start sub_02023060
sub_02023060: ; 0x02023060
	ldr ip, _02023074 ; =sub_0201BA4C
	mov r1, r0
	ldr r0, [r1, #0x40]
	ldr r1, [r1, #0x44]
	bx ip
	.align 2, 0
_02023074: .word sub_0201BA4C
	arm_func_end sub_02023060

	arm_func_start sub_02023078
sub_02023078: ; 0x02023078
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x34]
	bl sub_0201CB0C
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x54]
	bl sub_020222D4
	mov r0, r4
	bl sub_02023180
	ldr r0, [r4, #0x4c]
	bl sub_020256A4
	mov r0, r4
	bl sub_02023160
	ldrh r2, [r4, #2]
	mov r1, #0
	mov r0, #1
	strh r2, [r4]
	strh r1, [r4, #2]
	str r1, [r4, #0x48]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02023078

	arm_func_start sub_020230D4
sub_020230D4: ; 0x020230D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	bl sub_02024A2C
	ldr r0, [r4, #0x34]
	bl sub_0201CB0C
	ldr r0, [r4, #0x40]
	bl sub_0201B7A8
	ldr r0, [r4, #0x4c]
	bl sub_020256A4
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x54]
	bl sub_020222D4
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x50]
	bl sub_020222D8
	mov r0, r4
	bl sub_02023134
	mov r0, r4
	mov r1, #0x1e
	bl sub_02023230
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_020230D4

	arm_func_start sub_02023134
sub_02023134: ; 0x02023134
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02023160
	ldrh r1, [r4, #2]
	mov r0, r4
	mov r2, #0
	strh r1, [r4]
	mov r1, #0xa
	strh r2, [r4, #2]
	bl sub_02023230
	ldmia sp!, {r4, pc}
	arm_func_end sub_02023134

	arm_func_start sub_02023160
sub_02023160: ; 0x02023160
	ldr r0, _0202317C ; =0x04001010
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_0202317C: .word 0x04001010
	arm_func_end sub_02023160

	arm_func_start sub_02023180
sub_02023180: ; 0x02023180
	stmdb sp!, {r3, lr}
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023180

	arm_func_start sub_02023198
sub_02023198: ; 0x02023198
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end sub_02023198

	arm_func_start sub_020231A0
sub_020231A0: ; 0x020231A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x68]
	add r0, r0, #0x6c
	add r0, r0, #0x1400
	bl sub_02008E50
	mov r1, r0
	mov r0, #0x3c
	bl _s32_div_f
	ldr r1, [r4, #0x2c]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	cmp r0, #0x12c
	ldmltia sp!, {r4, pc}
	mov r0, r4
	bl sub_02022DD4
	mov r0, #1
	str r0, [r4, #0x64]
	mov r0, #0
	str r0, [r4, #0x2c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020231A0

	arm_func_start sub_02023200
sub_02023200: ; 0x02023200
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02022190
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023200

	arm_func_start sub_02023218
sub_02023218: ; 0x02023218
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020221D8
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023218

	arm_func_start sub_02023230
sub_02023230: ; 0x02023230
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x68]
	mov r4, r1
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x60]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r2, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E324
	cmp r0, #2
	ldr r0, [r5, #0x68]
	mov r2, r4
	bne _02023284
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #1
	bl sub_0200E0E0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02023230
_02023284:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #3
	bl sub_0200E0E0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02023298
sub_02023298: ; 0x02023298
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x68]
	mov r4, r1
	cmp r0, #0
	mov r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	str r0, [r5, #0x60]
	ldr r0, [r5, #0x68]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E324
	cmp r0, #4
	beq _020232E8
	ldr r0, [r5, #0x68]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E324
	cmp r0, #2
	bne _020232FC
	arm_func_end sub_02023298
_020232E8:
	ldr r0, [r5, #0x68]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	ldmia sp!, {r3, r4, r5, pc}
_020232FC:
	ldr r0, [r5, #0x68]
	mov r2, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r1, #4
	bl sub_0200E0E0
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202331C
sub_0202331C: ; 0x0202331C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x64]
	cmp r0, #0
	ldr r0, [r4, #0x68]
	add r0, r0, #0x1000
	beq _02023398
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	bne _02023384
	ldr r0, [r4, #0x68]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02023384
	ldr r0, [r4, #0x68]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c4]
	ldrh r0, [r0]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0202338C
	arm_func_end sub_0202331C
_02023384:
	mov r0, #1
	ldmia sp!, {r4, pc}
_0202338C:
	mov r0, #0
	str r0, [r4, #0x64]
	ldmia sp!, {r4, pc}
_02023398:
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	ldmia sp!, {r4, pc}

	arm_func_start sub_020233A4
sub_020233A4: ; 0x020233A4
	ldr r0, _020233B0 ; =MAIN_BSS_0210C1B8
	ldr r0, [r0]
	bx lr
	.align 2, 0
_020233B0: .word MAIN_BSS_0210C1B8
	arm_func_end sub_020233A4

	arm_func_start sub_020233B4
sub_020233B4: ; 0x020233B4
	ldrh r0, [r0]
	cmp r0, #8
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020233B4

	arm_func_start sub_020233C8
sub_020233C8: ; 0x020233C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	bl sub_0202349C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020233C8

	arm_func_start sub_020233E0
sub_020233E0: ; 0x020233E0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _02023410
	beq _02023408
	mov r0, r4
	bl sub_02023570
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020233E0
_02023408:
	mov r0, #0
	str r0, [r5, #8]
_02023410:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02023418
sub_02023418: ; 0x02023418
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #1
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02023584
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023418

	arm_func_start sub_02023444
sub_02023444: ; 0x02023444
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #1
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_0202379C
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023444

	arm_func_start sub_02023470
sub_02023470: ; 0x02023470
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #1
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020237E0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023470

	arm_func_start sub_0202349C
sub_0202349C: ; 0x0202349C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	strh r1, [r4]
	strh r1, [r4, #2]
	mov r0, #0x124
	str r1, [r4, #4]
	bl _Znwm
	cmp r0, #0
	beq _020234CC
	ldr r1, [r4, #0xc]
	bl sub_02023558
	arm_func_end sub_0202349C
_020234CC:
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}

	arm_func_start sub_020234D4
sub_020234D4: ; 0x020234D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl sub_02024380
	mov r0, #1
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020234D4

	arm_func_start sub_020234F0
sub_020234F0: ; 0x020234F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl sub_020243CC
	mov r0, #1
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020234F0

	arm_func_start sub_0202350C
sub_0202350C: ; 0x0202350C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl sub_020243F0
	mov r0, #1
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202350C

	arm_func_start sub_02023528
sub_02023528: ; 0x02023528
	ldr ip, _02023534 ; =sub_02024728
	ldr r0, [r0, #8]
	bx ip
	.align 2, 0
_02023534: .word sub_02024728
	arm_func_end sub_02023528

	arm_func_start sub_02023538
sub_02023538: ; 0x02023538
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #1
	mvnne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, [r0, #8]
	bl sub_0202473C
	ldmia sp!, {r3, pc}
	arm_func_end sub_02023538

	arm_func_start sub_02023558
sub_02023558: ; 0x02023558
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x120]
	bl sub_020237E4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02023558

	arm_func_start sub_02023570
sub_02023570: ; 0x02023570
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02023A14
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02023570

	arm_func_start sub_02023584
sub_02023584: ; 0x02023584
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	bl sub_0201AF40
	ldrh r0, [r4]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02023774
_020235A4: ; jump table
	b _02023774 ; case 0
	b _0202376C ; case 1
	b _020235CC ; case 2
	b _020236CC ; case 3
	b _0202367C ; case 4
	b _02023708 ; case 5
	b _02023754 ; case 6
	b _020236E4 ; case 7
	b _02023774 ; case 8
	b _02023614 ; case 9
	arm_func_end sub_02023584
_020235CC:
	mov r0, r4
	bl sub_02023C58
	cmp r0, #0
	bne _02023774
	ldr r1, [r4, #8]
	mvn r0, #0
	cmp r1, r0
	bne _020235F8
	mov r0, r4
	bl sub_02024570
	b _02023774
_020235F8:
	cmp r1, #5
	mov r0, r4
	bne _0202360C
	bl sub_020245A8
	b _02023774
_0202360C:
	bl sub_02024690
	b _02023774
_02023614:
	ldr r0, [r4, #0x11c]
	cmp r0, #0
	beq _02023774
	bl sub_0202780C
	cmp r0, #0
	bne _02023774
	ldr r5, [r4, #0x11c]
	cmp r5, #0
	beq _02023654
	beq _0202364C
	mov r0, r5
	bl sub_020277AC
	mov r0, r5
	bl _ZdlPv
_0202364C:
	mov r0, #0
	str r0, [r4, #0x11c]
_02023654:
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, _02023798 ; =0xFFCFFFEF
	mov r0, r4
	and r1, r2, r1
	orr r1, r1, #0x10
	orr r1, r1, #0x100000
	str r1, [r3]
	bl sub_020245D8
	b _02023774
_0202367C:
	mov r0, r4
	bl sub_02023C58
	cmp r0, #0
	bne _02023774
	ldr r0, [r4, #8]
	cmp r0, #5
	bne _020236B0
	mov r0, r4
	mov r1, #1
	bl sub_02023AE8
	mov r0, r4
	bl sub_02024480
	b _02023774
_020236B0:
	mov r2, #0
	strh r2, [r4]
	ldr r1, [r4, #0x6c]
	mov r0, r4
	str r2, [r1, #0x14]
	bl sub_020244F8
	b _02023774
_020236CC:
	mov r0, r4
	bl sub_02023C58
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r4]
	b _02023774
_020236E4:
	mov r0, r4
	bl sub_020246E0
	cmp r0, #0
	bne _02023774
	mov r1, #8
	mov r0, r4
	strh r1, [r4]
	bl sub_020244F8
	b _02023774
_02023708:
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02023774
	mov r0, #6
	strh r0, [r4]
	ldr r0, [r4, #0x120]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #0x120]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	b _02023774
_02023754:
	mov r0, r4
	bl sub_020246E0
	cmp r0, #0
	bne _02023774
	mov r0, #1
	strh r0, [r4]
_0202376C:
	mov r0, r4
	bl sub_02023B54
_02023774:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02023784
	bl sub_0200F64C
_02023784:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_0200F64C
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02023798: .word 0xFFCFFFEF

	arm_func_start sub_0202379C
sub_0202379C: ; 0x0202379C
	stmdb sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	ldmia sp!, {r3, pc}
_020237B0: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _020237D8 ; case 1
	b _020237D8 ; case 2
	b _020237D8 ; case 3
	b _020237D8 ; case 4
	ldmia sp!, {r3, pc} ; case 5
	b _020237D8 ; case 6
	b _020237D8 ; case 7
	b _020237D8 ; case 8
	b _020237D8 ; case 9
	arm_func_end sub_0202379C
_020237D8:
	bl sub_02024140
	ldmia sp!, {r3, pc}

	arm_func_start sub_020237E0
sub_020237E0: ; 0x020237E0
	bx lr
	arm_func_end sub_020237E0

	arm_func_start sub_020237E4
sub_020237E4: ; 0x020237E4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r1, #0
	mov r0, #0x2c
	strh r1, [r4]
	bl _Znwm
	cmp r0, #0
	beq _0202380C
	bl sub_02003718
	arm_func_end sub_020237E4
_0202380C:
	mov r1, #0x100000
	str r0, [r4, #0xc]
	str r1, [sp]
	sub r0, r1, #0x500000
	str r0, [sp, #4]
	mov r0, #0x800000
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x400000
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r3, r1
	mov r2, #0xc0000
	bl sub_02003788
	mov r0, #0xd8
	bl _Znwm
	cmp r0, #0
	beq _02023858
	bl sub_0201AD60
_02023858:
	str r0, [r4, #0x18]
	mov r1, #0x14
	mov r2, #0x1c
	mov r3, #0x1a
	bl sub_0201B5F4
	ldr r0, [r4, #0x18]
	mov r1, #0x28
	mov r2, #0x29
	mov r3, #0x2a
	bl sub_0201B658
	mov r1, #0
	mov r2, r1
_02023888:
	add r0, r4, r1, lsl #2
	str r2, [r0, #0x24]
	add r1, r1, #1
	str r2, [r0, #0x48]
	cmp r1, #9
	blt _02023888
	str r2, [r4, #0x6c]
	mov r1, #3
_020238A8:
	add r0, r4, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0xa4]
	cmp r2, #9
	blt _020238A8
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x11c]
	str r0, [r4, #0x114]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}

	arm_func_start sub_020238D8
sub_020238D8: ; 0x020238D8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r0, [sl, #0x1c]
	bl sub_0200F6C4
	ldr r0, [sl, #0x20]
	bl sub_0200F6C4
	mov r8, #0
	ldr fp, _02023A0C ; =DAT_020849b8
	ldr r4, _02023A10 ; =0x55555556
	mov r5, r8
	arm_func_end sub_020238D8
_02023900:
	mov r0, #0
	str r0, [sp]
	smull r0, r1, r4, r8
	add r1, r1, r8, lsr #31
	mov r0, #3
	smull r1, r2, r0, r1
	sub r1, r8, r1
	mov r0, #0x50
	mul r7, r1, r0
	smull r0, r1, r4, r8
	add r1, r1, r8, lsr #31
	mov r0, #0x30
	mul r6, r1, r0
	ldr sb, [fp, r8, lsl #2]
	ldr r0, [sl, #0x1c]
	mov r1, sb
	add r2, r7, #0x30
	add r3, r6, #0x3c
	bl sub_0200F4FC
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x24]
	mov r0, #0
	str r0, [sp]
	ldr r0, [sl, #0x1c]
	add r2, r7, #0x30
	add r3, r6, #0x3c
	mov r1, #9
	bl sub_0200F4FC
	add r1, sl, sb, lsl #2
	str r0, [r1, #0x48]
	ldr r0, [r1, #0x24]
	mov r1, sb
	mov r2, #0
	bl sub_0200EB34
	add r0, sl, sb, lsl #2
	ldr r0, [r0, #0x48]
	mov r1, sb
	mov r2, #0
	bl sub_0200EB34
	add r0, sl, sb, lsl #2
	str r5, [sp]
	ldr r0, [r0, #0x24]
	mov r1, #0x40
	mov r2, #0x30
	mov r3, r5
	bl sub_0200EBF4
	add r8, r8, #1
	cmp r8, #9
	blt _02023900
	mov r0, #2
	str r0, [sp]
	ldr r0, [sl, #0x20]
	mov r1, #0
	mov r2, #0xf0
	mov r3, #0x10
	bl sub_0200F4FC
	mov r1, #0x20
	str r0, [sl, #0x6c]
	mov r3, #0
	str r3, [sp]
	ldr r0, [sl, #0x6c]
	mov r2, r1
	bl sub_0200EBF4
	mov r0, sl
	mov r1, #0
	bl sub_02023AE8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02023A0C: .word DAT_020849b8
_02023A10: .word 0x55555556

	arm_func_start sub_02023A14
sub_02023A14: ; 0x02023A14
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0x11c]
	cmp r5, #0
	beq _02023A44
	beq _02023A3C
	mov r0, r5
	bl sub_020277AC
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02023A14
_02023A3C:
	mov r0, #0
	str r0, [r4, #0x11c]
_02023A44:
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	beq _02023A6C
	beq _02023A64
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_02023A64:
	mov r0, #0
	str r0, [r4, #0x1c]
_02023A6C:
	ldr r5, [r4, #0x20]
	cmp r5, #0
	beq _02023A94
	beq _02023A8C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_02023A8C:
	mov r0, #0
	str r0, [r4, #0x20]
_02023A94:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02023ABC
	beq _02023AB4
	mov r0, r5
	bl sub_0200372C
	mov r0, r5
	bl _ZdlPv
_02023AB4:
	mov r0, #0
	str r0, [r4, #0xc]
_02023ABC:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02023ADC
	mov r0, r5
	bl sub_0201AE58
	mov r0, r5
	bl _ZdlPv
_02023ADC:
	mov r0, #0
	str r0, [r4, #0x18]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02023AE8
sub_02023AE8: ; 0x02023AE8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r4, #1
	mov lr, r5
	mov r2, r5
	mov r3, r4
	arm_func_end sub_02023AE8
_02023B00:
	add ip, r0, r5, lsl #2
	cmp r1, #0
	movne r6, r4
	moveq r6, lr
	ldr ip, [ip, #0x24]
	cmp r1, #0
	str r6, [ip, #0x14]
	add ip, r0, r5, lsl #2
	movne r6, r3
	ldr ip, [ip, #0x48]
	moveq r6, r2
	add r5, r5, #1
	str r6, [ip, #0x14]
	cmp r5, #9
	blt _02023B00
	cmp r1, #0
	movne r1, #1
	ldr r0, [r0, #0x6c]
	moveq r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02023B54
sub_02023B54: ; 0x02023B54
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl sub_020233A4
	bl sub_020233B4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x114]
	cmp r0, #0
	beq _02023B98
	ldr r0, [r4, #0x118]
	sub r0, r0, #1
	str r0, [r4, #0x118]
	cmp r0, #0
	ldmgtia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl sub_02024440
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02023B54
_02023B98:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	ldrne r1, [r0, #0x14]
	cmpne r1, #0
	beq _02023BF0
	ldr r1, [r4, #0x120]
	ldr r5, [r1, #0x14]
	bl sub_0200EB84
	cmp r0, #0
	bne _02023BE4
	ldrh r1, [r5, #2]
	and r0, r1, #2
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	bne _02023BE4
	and r0, r1, #0x100
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02023BF0
_02023BE4:
	mov r0, r4
	bl sub_02024440
	ldmia sp!, {r3, r4, r5, pc}
_02023BF0:
	mov r5, #0
_02023BF4:
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _02023C48
	bl sub_0200EB84
	cmp r0, #0
	beq _02023C48
	add r1, r4, r5, lsl #2
	mov r0, #5
	str r0, [r1, #0xa4]
	mov r0, #0
	str r0, [r1, #0x80]
	mov r0, #2
	strh r0, [r4]
	str r5, [r4, #8]
	ldr r0, [r4, #0x120]
	mov r1, #0xff
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	ldmia sp!, {r3, r4, r5, pc}
_02023C48:
	add r5, r5, #1
	cmp r5, #9
	blt _02023BF4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02023C58
sub_02023C58: ; 0x02023C58
	mov r2, #0
	arm_func_end sub_02023C58
_02023C5C:
	add r1, r0, r2, lsl #2
	ldr r1, [r1, #0xa4]
	cmp r1, #4
	cmpne r1, #3
	movne r0, #1
	bxne lr
	add r2, r2, #1
	cmp r2, #9
	blt _02023C5C
	mov r0, #0
	bx lr

	arm_func_start sub_02023C88
sub_02023C88: ; 0x02023C88
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, #1
	mov sb, r0
	mov r8, r1
	mov r7, #0
	mov r5, #0x1000
	mov r6, r4
	arm_func_end sub_02023C88
_02023CA4:
	cmp r8, #0
	beq _02023CC8
	add r0, sb, r7, lsl #2
	ldr r1, [r0, #0xc8]
	ldr r2, [r0, #0xec]
	mov r0, r7
	mov r3, r6
	bl sub_0201FC50
	b _02023CDC
_02023CC8:
	mov r0, r7
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl sub_0201FC50
_02023CDC:
	add r7, r7, #1
	cmp r7, #9
	blt _02023CA4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_02023CEC
sub_02023CEC: ; 0x02023CEC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r2, [r0, #0x80]
	ldr r8, [r0, #0xa4]
	mov r1, #0x1000
	str r1, [r0, #0xc8]
	add r7, r2, #1
	str r1, [r0, #0xec]
	cmp r7, #0
	bgt _02023D44
	str r7, [r0, #0x80]
	ldr r1, [r5, #0x110]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, [r0, #0x24]
	mov r2, #0
	str r2, [r1, #0x14]
	ldr r0, [r0, #0x48]
	str r2, [r0, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_02023CEC
_02023D44:
	ldr r1, [r0, #0x24]
	mov r2, #1
	str r2, [r1, #0x14]
	ldr r1, [r0, #0x48]
	cmp r8, #5
	str r2, [r1, #0x14]
	addls pc, pc, r8, lsl #2
	b _02024044
_02023D64: ; jump table
	b _02023D7C ; case 0
	b _02023EFC ; case 1
	b _02023EC8 ; case 2
	b _02024008 ; case 3
	b _02024010 ; case 4
	b _02024028 ; case 5
_02023D7C:
	ldr r0, [r5, #0x110]
	cmp r0, #0
	beq _02023DAC
	mov r6, r7
	cmp r7, #1
	bne _02023DB4
	ldr r0, [r5, #0x120]
	mov r1, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	b _02023DB4
_02023DAC:
	ldr r0, [r5, #0x70]
	sub r6, r0, r7
_02023DB4:
	ldr r0, [r5, #0x70]
	cmp r7, r0
	blt _02023DF8
	ldr r0, [r5, #0x110]
	mov r7, #0
	cmp r0, #0
	movne r0, #0x1000
	movne r8, #2
	bne _02023EB4
	add r1, r5, r4, lsl #2
	ldr r0, [r1, #0x24]
	mov r8, #4
	str r7, [r0, #0x14]
	ldr r1, [r1, #0x48]
	mov r0, #0x40000
	str r7, [r1, #0x14]
	b _02023EB4
_02023DF8:
	mul r0, r6, r6
	mov r1, r0, lsl #0xc
	mov r0, r1, asr #0x1f
	mov r2, r0, lsl #0xc
	mov r0, #0x800
	adds r0, r0, r1, lsl #12
	orr r2, r2, r1, lsr #20
	adc r2, r2, #0
	mov r0, r0, lsr #0xc
	ldr r1, [r5, #0x78]
	orr r0, r0, r2, lsl #20
	bl FX_Div
	mov r6, r0
	mov r1, r6
	mov r0, #0x1000
	bl FX_DivFx64c
	bl _f_lltof
	ldr r1, _02024054 ; =0x4F800000
	bl _f_div
	mov r1, #0
	bl _f_fgt
	mov r1, r6
	mov r0, #0x1000
	bls _02023E84
	bl FX_DivFx64c
	bl _f_lltof
	ldr r1, _02024054 ; =0x4F800000
	bl _f_div
	mov r1, r0
	ldr r0, _02024058 ; =0x45800000
	bl _f_mul
	mov r1, r0
	mov r0, #0x3f000000
	bl _f_add
	b _02023EA8
_02023E84:
	bl FX_DivFx64c
	bl _f_lltof
	ldr r1, _02024054 ; =0x4F800000
	bl _f_div
	mov r1, r0
	ldr r0, _02024058 ; =0x45800000
	bl _f_mul
	mov r1, #0x3f000000
	bl _f_sub
_02023EA8:
	bl _f_ftoi
	cmp r0, #0x40000
	movge r0, #0x40000
_02023EB4:
	add r1, r5, r4, lsl #2
	str r0, [r1, #0xc8]
	mov r0, #0xa000
	str r0, [r1, #0xec]
	b _02024044
_02023EC8:
	cmp r7, #1
	blt _02023EE4
	ldr r0, [r5, #0x110]
	mov r7, #0
	cmp r0, #0
	movne r8, r2
	moveq r8, r7
_02023EE4:
	add r1, r5, r4, lsl #2
	mov r0, #0x1000
	str r0, [r1, #0xc8]
	mov r0, #0xa000
	str r0, [r1, #0xec]
	b _02024044
_02023EFC:
	ldr r0, [r5, #0x110]
	cmp r0, #0
	ldrne r0, [r5, #0x74]
	subne r6, r0, r7
	bne _02023F30
	mov r6, r7
	cmp r7, #1
	bne _02023F30
	ldr r0, [r5, #0x120]
	mov r1, #0xa
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
_02023F30:
	ldr r0, [r5, #0x74]
	cmp r7, r0
	blt _02023F5C
	ldr r0, [r5, #0x110]
	mov r7, #0
	cmp r0, #0
	movne r0, #0x1000
	movne r8, #3
	moveq r8, #2
	moveq r0, #0xa000
	b _02023FF4
_02023F5C:
	ldr r3, _0202405C ; =0x00000666
	mov sb, r0, lsl #0xc
	mov r0, r5
	mov r1, #0x1000
	mov r2, #0
	str sb, [sp]
	bl sub_02024788
	mov sb, r0
	ldr r2, _0202405C ; =0x00000666
	mov r0, r5
	str sb, [sp]
	mov r3, r6, lsl #0xc
	mov r1, #0x1000
	bl sub_02024750
	str sb, [sp]
	ldr r1, [r5, #0x74]
	mov r6, r0
	mov r3, r1, lsl #0xc
	ldr r2, _0202405C ; =0x00000666
	mov r0, r5
	mov r1, #0x1000
	bl sub_02024750
	ldr r2, _02024060 ; =0x00000E66
	mov r3, r6, asr #0x1f
	umull lr, ip, r6, r2
	mla ip, r3, r2, ip
	mov r2, lr, lsr #0xc
	orr r2, r2, ip, lsl #20
	add r2, r2, #0x99
	add r2, r2, #0x100
	mov r1, #0
	mov r0, #0x1000000
	mov r3, r2, asr #0x1f
	bl _ll_div
	cmp r0, #0x40000
	movge r0, #0x40000
	cmp r0, #0xa000
	movgt r0, #0xa000
_02023FF4:
	add r1, r5, r4, lsl #2
	mov r2, #0x1000
	str r2, [r1, #0xc8]
	str r0, [r1, #0xec]
	b _02024044
_02024008:
	mov r7, #0
	b _02024044
_02024010:
	ldr r1, [r0, #0x24]
	mov r7, #0
	str r7, [r1, #0x14]
	ldr r0, [r0, #0x48]
	str r7, [r0, #0x14]
	b _02024044
_02024028:
	ldr r1, _02024064 ; =0x000011C7
	add r0, r5, r4, lsl #2
	str r1, [r0, #0xc8]
	cmp r7, #6
	movge r7, #0
	movge r8, #3
	str r1, [r0, #0xec]
_02024044:
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x80]
	str r8, [r0, #0xa4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02024054: .word 0x4F800000
_02024058: .word 0x45800000
_0202405C: .word 0x00000666
_02024060: .word 0x00000E66
_02024064: .word 0x000011C7

	arm_func_start sub_02024068
sub_02024068: ; 0x02024068
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1, lsl #0xc
	smull r4, lr, r5, r5
	adds r6, r4, #0x800
	mov r5, r2, lsl #0xc
	smull ip, r4, r5, r5
	adc r5, lr, #0
	mov r6, r6, lsr #0xc
	orr r6, r6, r5, lsl #20
	mov r5, r6, asr #0x1f
	mov r5, r5, lsl #0xc
	mov lr, #0x800
	orr r5, r5, r6, lsr #20
	adds r7, lr, r6, lsl #12
	adc r6, r5, #0
	adds r5, ip, #0x800
	mov ip, r7, lsr #0xc
	orr ip, ip, r6, lsl #20
	str ip, [r0, #0x78]
	adc r4, r4, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r4, lsl #20
	mov r4, r5, asr #0x1f
	mov r4, r4, lsl #0xc
	adds lr, lr, r5, lsl #12
	orr r4, r4, r5, lsr #20
	mov r5, lr, lsr #0xc
	adc r4, r4, #0
	orr r5, r5, r4, lsl #20
	str r5, [r0, #0x7c]
	str r3, [r0, #0x110]
	str r1, [r0, #0x70]
	str r2, [r0, #0x74]
	ldr r1, [r0, #0x110]
	mov r5, #0
	mov r4, #0
	cmp r1, #0
	ldr ip, _0202413C ; =DAT_0208bed4
	moveq r4, #1
	mov lr, #0xa
	mov r2, r5
	arm_func_end sub_02024068
_0202410C:
	mov r1, r5, lsl #1
	ldrh r3, [ip, r1]
	add r1, r0, r5, lsl #2
	add r5, r5, #1
	add r3, r0, r3, lsl #2
	ldr r3, [r3, #0x20]
	cmp r5, #9
	strh lr, [r3, #0x1a]
	str r2, [r1, #0x80]
	str r4, [r1, #0xa4]
	blt _0202410C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0202413C: .word DAT_0208bed4

	arm_func_start sub_02024140
sub_02024140: ; 0x02024140
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0202420C ; =0x04000454
	mov r2, #0
	mov r4, r0
	str r2, [r1]
	ldr r0, [r4, #0xc]
	bl sub_020037B4
	ldr r0, [r4, #0xc]
	bl sub_0200381C
	ldr r0, _02024210 ; =0x0400044C
	mov r1, #0
	str r1, [r0]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0xc]
	bl sub_0201B460
	ldrh r0, [r4]
	mov r5, #0
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020241DC
_02024190: ; jump table
	b _020241DC ; case 0
	b _020241DC ; case 1
	b _020241BC ; case 2
	b _020241BC ; case 3
	b _020241BC ; case 4
	b _020241DC ; case 5
	b _020241DC ; case 6
	b _020241DC ; case 7
	b _020241DC ; case 8
	b _020241B8 ; case 9
	arm_func_end sub_02024140
_020241B8:
	ldmia sp!, {r3, r4, r5, pc}
_020241BC:
	mov r1, r5, lsl #0x10
	mov r0, r4
	mov r1, r1, lsr #0x10
	bl sub_02023CEC
	add r5, r5, #1
	cmp r5, #9
	blt _020241BC
	mov r5, #1
_020241DC:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _020241EC
	bl sub_0200F71C
_020241EC:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _020241FC
	bl sub_0200F71C
_020241FC:
	mov r0, r4
	mov r1, r5
	bl sub_02023C88
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202420C: .word 0x04000454
_02024210: .word 0x0400044C

	arm_func_start sub_02024214
sub_02024214: ; 0x02024214
	stmdb sp!, {r3, r4, r5, lr}
	mov ip, #0x4000000
	ldr r2, [ip]
	ldr r1, [ip]
	and r2, r2, #0x1f00
	mov r3, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, r3, #0x10
	orr r1, r2, r1, lsl #8
	str r1, [ip]
	ldr r2, [ip]
	ldr r1, _02024370 ; =0xFFCFFFEF
	mov r4, r0
	and r0, r2, r1
	orr r0, r0, #0x10
	orr r0, r0, #0x100000
	str r0, [ip]
	mov r3, #8
	str r3, [sp]
	add r0, ip, #0x50
	mov r1, #0
	mov r2, #1
	bl G2x_SetBlendAlpha_
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	beq _02024298
	beq _02024290
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02024214
_02024290:
	mov r0, #0
	str r0, [r4, #0x1c]
_02024298:
	ldr r5, [r4, #0x20]
	cmp r5, #0
	beq _020242C0
	beq _020242B8
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_020242B8:
	mov r0, #0
	str r0, [r4, #0x20]
_020242C0:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _020242F0
	ldr r3, [r4, #0x120]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x24
	mov r3, #0
	bl sub_0200ECD0
_020242F0:
	str r0, [r4, #0x1c]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02024324
	ldr r3, [r4, #0x120]
	mov r1, #0x40
	str r1, [sp]
	add r1, r3, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, #0x324
	mov r3, #0
	bl sub_0200ECD0
_02024324:
	str r0, [r4, #0x20]
	mov r0, #0xa
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	ldr r1, _02024374 ; =s_data_menu_0208bee8
	ldr r2, _02024378 ; =s_cm000_00_0208bef4
	mov r3, #0x300
	bl sub_0200EE14
	add r1, r0, #0x6000
	mov r0, #0xd
	str r0, [sp]
	mov r0, r1, asr #4
	add r3, r1, r0, lsr #27
	ldr r0, [r4, #0x20]
	ldr r1, _02024374 ; =s_data_menu_0208bee8
	ldr r2, _0202437C ; =s_ma005_00_0208bf00
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02024370: .word 0xFFCFFFEF
_02024374: .word s_data_menu_0208bee8
_02024378: .word s_cm000_00_0208bef4
_0202437C: .word s_ma005_00_0208bf00

	arm_func_start sub_02024380
sub_02024380: ; 0x02024380
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	strh r1, [r4]
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, _020243C8 ; =0xFFCFFFEF
	and r1, r2, r1
	orr r1, r1, #0x10
	orr r1, r1, #0x100000
	str r1, [r3]
	bl sub_020244DC
	mov r0, r4
	bl sub_0202458C
	mov r0, #0
	str r0, [r4, #0x114]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_020243C8: .word 0xFFCFFFEF
	arm_func_end sub_02024380

	arm_func_start sub_020243CC
sub_020243CC: ; 0x020243CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020244DC
	mov r0, r4
	bl sub_0202462C
	mov r0, #0
	str r0, [r4, #0x114]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_020243CC

	arm_func_start sub_020243F0
sub_020243F0: ; 0x020243F0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #1
	strh r2, [r5]
	mov ip, #0x4000000
	ldr r3, [ip]
	ldr r2, _0202443C ; =0xFFCFFFEF
	mov r4, r1
	and r1, r3, r2
	orr r1, r1, #0x10
	orr r1, r1, #0x100000
	str r1, [ip]
	bl sub_020244DC
	mov r0, r5
	bl sub_0202458C
	mov r0, #1
	str r0, [r5, #0x114]
	str r4, [r5, #0x118]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202443C: .word 0xFFCFFFEF
	arm_func_end sub_020243F0

	arm_func_start sub_02024440
sub_02024440: ; 0x02024440
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x120]
	ldr r1, _0202447C ; =0x00000103
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, r4
	bl sub_02024570
	mvn r0, #0
	str r0, [r4, #8]
	bl sub_020233A4
	bl sub_02022DD4
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202447C: .word 0x00000103
	arm_func_end sub_02024440

	arm_func_start sub_02024480
sub_02024480: ; 0x02024480
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #9
	strh r0, [r5]
	ldr r4, [r5, #0x11c]
	cmp r4, #0
	beq _020244B8
	beq _020244B0
	mov r0, r4
	bl sub_020277AC
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02024480
_020244B0:
	mov r0, #0
	str r0, [r5, #0x11c]
_020244B8:
	mov r0, #0x18
	bl _Znwm
	cmp r0, #0
	beq _020244D0
	ldr r1, [r5, #0x120]
	bl sub_0202773C
_020244D0:
	str r0, [r5, #0x11c]
	bl sub_020279A4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020244DC
sub_020244DC: ; 0x020244DC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02024214
	mov r0, r4
	bl sub_020238D8
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_020244DC

	arm_func_start sub_020244F8
sub_020244F8: ; 0x020244F8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x1c]
	cmp r4, #0
	beq _02024528
	beq _02024520
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020244F8
_02024520:
	mov r0, #0
	str r0, [r5, #0x1c]
_02024528:
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _02024550
	beq _02024548
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_02024548:
	mov r0, #0
	str r0, [r5, #0x20]
_02024550:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, _0202456C ; =0xFFCFFFEF
	and r0, r1, r0
	orr r0, r0, #0x10
	str r0, [r2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0202456C: .word 0xFFCFFFEF

	arm_func_start sub_02024570
sub_02024570: ; 0x02024570
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	bl sub_0201B568
	mov r0, r4
	bl sub_020245A8
	ldmia sp!, {r4, pc}
	arm_func_end sub_02024570

	arm_func_start sub_0202458C
sub_0202458C: ; 0x0202458C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	bl sub_0201B508
	mov r0, r4
	bl sub_020245D8
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202458C

	arm_func_start sub_020245A8
sub_020245A8: ; 0x020245A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #5
	mov r2, #6
	mov r3, #0
	bl sub_02024068
	ldr r0, [r4, #0x6c]
	mov r1, #1
	str r1, [r0, #0x14]
	mov r0, #4
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020245A8

	arm_func_start sub_020245D8
sub_020245D8: ; 0x020245D8
	stmdb sp!, {r4, lr}
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov ip, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, ip, #0x10
	orr r1, r2, r1, lsl #8
	mov r4, r0
	str r1, [r3]
	mov r1, #5
	mov r2, #6
	mov r3, #1
	bl sub_02024068
	ldr r0, [r4, #0x6c]
	mov r1, #1
	str r1, [r0, #0x14]
	mov r0, #3
	strh r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020245D8

	arm_func_start sub_0202462C
sub_0202462C: ; 0x0202462C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x120]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #6
	strh r0, [r4]
	ldr r0, [r4, #0x120]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #0x120]
	mov r1, #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #0x18]
	bl sub_0201B5D0
	mov r0, r4
	mov r1, #1
	bl sub_02023AE8
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202462C

	arm_func_start sub_02024690
sub_02024690: ; 0x02024690
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x120]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #7
	strh r0, [r4]
	ldr r0, [r4, #0x120]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldr r0, [r4, #0x120]
	mov r1, #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	mov r2, #0x1e
	bl sub_0200E0E0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02024690

	arm_func_start sub_020246E0
sub_020246E0: ; 0x020246E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x120]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4bc]
	bl sub_0200E310
	cmp r0, #0
	bne _02024718
	ldr r0, [r4, #0x120]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4c0]
	bl sub_0200E310
	cmp r0, #0
	beq _02024720
	arm_func_end sub_020246E0
_02024718:
	mov r0, #1
	ldmia sp!, {r4, pc}
_02024720:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02024728
sub_02024728: ; 0x02024728
	ldrh r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02024728

	arm_func_start sub_0202473C
sub_0202473C: ; 0x0202473C
	ldrh r1, [r0]
	cmp r1, #8
	mvnne r0, #0
	ldreq r0, [r0, #8]
	bx lr
	arm_func_end sub_0202473C

	arm_func_start sub_02024750
sub_02024750: ; 0x02024750
	stmdb sp!, {r4, lr}
	smull ip, r0, r3, r3
	mov ip, ip, lsr #0xc
	ldr lr, [sp, #8]
	orr ip, ip, r0, lsl #20
	smull r4, r3, r2, r3
	smull r2, r0, lr, ip
	mov r4, r4, lsr #0xc
	mov r2, r2, lsr #0xc
	orr r4, r4, r3, lsl #20
	orr r2, r2, r0, lsl #20
	add r0, r4, r2
	add r0, r1, r0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02024750

	arm_func_start sub_02024788
sub_02024788: ; 0x02024788
	stmdb sp!, {r3, lr}
	ldr lr, [sp, #8]
	smull ip, r0, r3, lr
	mov r3, ip, lsr #0xc
	orr r3, r3, r0, lsl #20
	sub r0, r2, r3
	sub ip, r0, r1
	smull r1, r0, lr, lr
	mov r3, ip, asr #0x1f
	mov r2, r1, lsr #0xc
	mov r1, r3, lsl #0xc
	orr r2, r2, r0, lsl #20
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	ldmia sp!, {r3, pc}
	arm_func_end sub_02024788

	arm_func_start sub_020247CC
sub_020247CC: ; 0x020247CC
	stmdb sp!, {r4, lr}
	mov r3, #0
	mov r4, r0
	str r3, [r4, #0x20]
	str r3, [r4, #0x24]
	str r3, [r4, #0x28]
	str r3, [r4, #0x2c]
	mov r2, r3
	arm_func_end sub_020247CC
_020247EC:
	str r2, [r4, r3, lsl #2]
	add r1, r4, r3, lsl #1
	add r0, r4, r3
	strh r2, [r1, #0x30]
	strb r2, [r0, #0x40]
	add r3, r3, #1
	strb r2, [r0, #0x48]
	cmp r3, #8
	blt _020247EC
	str r2, [r4, #0x50]
	str r2, [r4, #0x54]
	str r2, [r4, #0x58]
	str r2, [r4, #0x74]
	str r2, [r4, #0x68]
	str r2, [r4, #0x6c]
	str r2, [r4, #0x70]
	str r2, [r4, #0x60]
	mov r0, r4
	str r2, [r4, #0x64]
	bl sub_02024D00
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start sub_02024844
sub_02024844: ; 0x02024844
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl sub_02024A2C
	ldr r0, [r5, #0x50]
	bl sub_0200F4A8
	ldr r0, [r5, #0x54]
	bl sub_0200F4A8
	ldr r0, [r5, #0x58]
	bl sub_0200F4A8
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _02024890
	beq _02024888
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02024844
_02024888:
	mov r0, #0
	str r0, [r5, #0x50]
_02024890:
	ldr r4, [r5, #0x54]
	cmp r4, #0
	beq _020248B8
	beq _020248B0
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_020248B0:
	mov r0, #0
	str r0, [r5, #0x54]
_020248B8:
	ldr r4, [r5, #0x58]
	cmp r4, #0
	beq _020248E0
	beq _020248D8
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_020248D8:
	mov r0, #0
	str r0, [r5, #0x58]
_020248E0:
	ldr r1, [r5, #0x74]
	cmp r1, #0
	beq _02024970
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _0202493C
	mov r6, r4
_02024900:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02024928
	bl _ZdaPv
	ldr r0, [r5, #0x74]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_02024928:
	ldr r1, [r5, #0x74]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _02024900
_0202493C:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02024958
	bl _ZdaPv
	ldr r0, [r5, #0x74]
	mov r1, #0
	str r1, [r0, #8]
_02024958:
	ldr r0, [r5, #0x74]
	cmp r0, #0
	beq _02024970
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x74]
_02024970:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _02024994
	beq _0202498C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0202498C:
	mov r0, #0
	str r0, [r5, #0x68]
_02024994:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _020249B8
	beq _020249B0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020249B0:
	mov r0, #0
	str r0, [r5, #0x6c]
_020249B8:
	ldr r0, [r5, #0x70]
	cmp r0, #0
	beq _020249DC
	beq _020249D4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020249D4:
	mov r0, #0
	str r0, [r5, #0x70]
_020249DC:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _02024A00
	beq _020249F8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020249F8:
	mov r0, #0
	str r0, [r5, #0x60]
_02024A00:
	ldr r0, [r5, #0x64]
	cmp r0, #0
	beq _02024A24
	beq _02024A1C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02024A1C:
	mov r0, #0
	str r0, [r5, #0x64]
_02024A24:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02024A2C
sub_02024A2C: ; 0x02024A2C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldr r0, [r4, #0x50]
	bl sub_0200F6C4
	ldr r0, [r4, #0x54]
	bl sub_0200F6C4
	ldr r0, [r4, #0x58]
	bl sub_0200F6C4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02024A2C

	arm_func_start sub_02024A60
sub_02024A60: ; 0x02024A60
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r4, r0
	bl sub_0201001C
	mov lr, #0
	str lr, [r4, #0x20]
	ldr r1, _02024CF4 ; =MAIN_BSS_0210CA4C
	str lr, [r4, #0x24]
	ldr r8, [r1]
	str r0, [sp, #4]
	cmp r8, #0
	beq _02024B3C
	ldr r0, [r8, #0x88]
	mov r5, #1
	str r0, [r4, #0x28]
	cmp r0, #0
	ldr ip, [r8, #0x84]
	ble _02024B3C
	mov r2, lr
	mov fp, lr
	mov r0, r5
	mov r3, lr
	arm_func_end sub_02024A60
_02024AB8:
	ldr sb, [r8, #4]
	mov r6, r3
	cmp sb, #0
	ble _02024AFC
	add r7, ip, lr
_02024ACC:
	cmp sb, r6
	ldrgt r1, [r8, #8]
	movle sl, r2
	ldrgt sl, [r1, r6, lsl #2]
	cmp sl, #0
	beq _02024AF0
	ldr r1, [sl, #0x1e8]
	cmp r7, r1
	beq _02024B00
_02024AF0:
	add r6, r6, #1
	cmp r6, sb
	blt _02024ACC
_02024AFC:
	mov sl, fp
_02024B00:
	cmp sl, #0
	beq _02024B2C
	ldr r1, [sl, #4]
	tst r1, #0x20
	ldreq r1, [sl, #0x200]
	streq r1, [r4, r5, lsl #2]
	addeq r5, r5, #1
	beq _02024B2C
	str r0, [r4, #0x20]
	ldr r1, [sl, #0x200]
	str r1, [r4]
_02024B2C:
	ldr r1, [r4, #0x28]
	add lr, lr, #1
	cmp lr, r1
	blt _02024AB8
_02024B3C:
	ldr r5, _02024CF8 ; =MAIN_BSS_020B26A0
	ldrb r1, [r5, #3]
	mov r0, r5
	and r1, r1, #0xf
	bl sub_02015658
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02024B78
	ldr r0, [r4]
	bl sub_02035088
	add r0, r5, r0
	ldrb r0, [r0, #9]
	add r0, r0, #1
	str r0, [r4, #0x24]
_02024B78:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02024BC4
	ldr r1, [r4, #0x28]
	ldr r0, [sp, #4]
	sub r1, r1, #1
	str r1, [r4, #0x28]
	ldr r1, [r4]
	add r0, r0, #0x1000
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0x434]
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	ldrh r1, [r0]
	strh r1, [r4, #0x30]
	ldrb r1, [r0, #5]
	strb r1, [r4, #0x40]
	ldrb r0, [r0, #6]
	strb r0, [r4, #0x48]
_02024BC4:
	ldr r0, [r4, #0x28]
	mov r5, #1
	cmp r0, #1
	blt _02024C20
	ldr r0, [sp, #4]
	add r6, r0, #0x1000
_02024BDC:
	ldr r1, [r4, r5, lsl #2]
	ldr r0, [r6, #0x434]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_020107A8
	ldrh r3, [r0]
	add r1, r4, r5, lsl #1
	add r2, r4, r5
	strh r3, [r1, #0x30]
	ldrb r1, [r0, #5]
	add r5, r5, #1
	strb r1, [r2, #0x40]
	ldrb r0, [r0, #6]
	strb r0, [r2, #0x48]
	ldr r0, [r4, #0x28]
	cmp r5, r0
	ble _02024BDC
_02024C20:
	ldrh r2, [r4, #0x30]
	ldr r1, _02024CFC ; =s_bp_03d_0208bf0c
	add r0, sp, #8
	bl OS_SPrintf
	ldr r0, [r4, #0x50]
	bl sub_0200F398
	ldr r0, [r4, #0x54]
	bl sub_0200F398
	ldr r0, [r4, #0x28]
	mov r8, #1
	cmp r0, #1
	blt _02024CAC
	mov r7, #0
	mov sb, #0x40
	mov r6, #0xd0
	mov r5, r7
	mov fp, #0xdc
_02024C64:
	str r7, [sp]
	add sl, r4, r8
	ldrb r1, [sl, #0x40]
	ldr r0, [r4, #0x50]
	mov r2, r6
	mov r3, sb
	bl sub_0200F4FC
	str r5, [sp]
	ldrb r1, [sl, #0x48]
	ldr r0, [r4, #0x54]
	mov r2, fp
	mov r3, sb
	bl sub_0200F4FC
	ldr r0, [r4, #0x28]
	add r8, r8, #1
	cmp r8, r0
	add sb, sb, #0x10
	ble _02024C64
_02024CAC:
	ldr r0, [r4, #0x58]
	bl sub_0200F398
	mov r0, #3
	str r0, [sp]
	mov r2, #0x80
	ldr r0, [r4, #0x58]
	sub r3, r2, #0x88
	mov r1, #0
	bl sub_0200F4FC
	str r0, [r4, #0x5c]
	mov r0, r4
	bl sub_02025068
	mov r0, r4
	bl sub_0202510C
	mov r0, r4
	bl sub_0202524C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02024CF4: .word MAIN_BSS_0210CA4C
_02024CF8: .word MAIN_BSS_020B26A0
_02024CFC: .word s_bp_03d_0208bf0c

	arm_func_start sub_02024D00
sub_02024D00: ; 0x02024D00
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r0, #0xb8
	bl _Znwm
	movs r6, r0
	beq _02024D2C
	ldr r1, _02025038 ; =s_data_message_etc_menu_mes_0208bf14
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
	arm_func_end sub_02024D00
_02024D2C:
	mov r0, #0xc
	bl _Znwm
	str r0, [r7, #0x74]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [r7, #0x74]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [r7, #0x74]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [r7, #0x74]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [r7, #0x74]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02024DF4
_02024D84:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [r7, #0x74]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [r7, #0x74]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [r7, #0x74]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [r7, #0x74]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _02024D84
_02024DF4:
	cmp r6, #0
	beq _02024E0C
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02024E0C:
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _02024E44
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0202503C ; =s_BGS_0208bf30
	ldr r2, _02025040 ; =s_data_menu_mc000_bg_LZ_bin_0208bf34
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r4, r0
_02024E44:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02024E68
	mov r2, #0
	ldr r1, _02025044 ; =s_BGS_mc000_NCGR_0208bf50
	mov r3, r2
	str r2, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
_02024E68:
	str r0, [r7, #0x60]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02024E90
	mov r2, #0
	ldr r1, _02025048 ; =s_BGS_mc000_NCLR_0208bf60
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
_02024E90:
	str r0, [r7, #0x64]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02024EB8
	mov r2, #0
	ldr r1, _0202504C ; =s_BGS_mc000_01_NSCR_0208bf70
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
_02024EB8:
	str r0, [r7, #0x68]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02024EE0
	mov r2, #0
	ldr r1, _02025050 ; =s_BGS_mc000_02_NSCR_0208bf84
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
_02024EE0:
	str r0, [r7, #0x6c]
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02024F08
	mov r2, #0
	ldr r1, _02025054 ; =s_BGS_mc000_03_NSCR_0208bf98
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
_02024F08:
	str r0, [r7, #0x70]
	cmp r4, #0
	beq _02024F24
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
_02024F24:
	mov r5, #0
	bl sub_0201001C
	mov r6, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02024F60
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02024F60:
	str r0, [r7, #0x50]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7, #0x50]
	ldr r1, _02025058 ; =s_data_menu_0208bfac
	ldr r2, _0202505C ; =s_ma000_00_0208bfb8
	bl sub_0200F168
	ldr r1, [r7, #0x50]
	mov r0, #0x44
	ldr r1, [r1, #0x28]
	add r5, r5, r1
	bl _Znwm
	cmp r0, #0
	beq _02024FB8
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0xa4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02024FB8:
	str r0, [r7, #0x54]
	mov r0, #3
	str r0, [sp]
	ldr r0, [r7, #0x54]
	ldr r1, _02025058 ; =s_data_menu_0208bfac
	ldr r2, _02025060 ; =s_ma001_00_0208bfc4
	mov r3, r5
	bl sub_0200F168
	ldr r1, [r7, #0x54]
	mov r0, #0x44
	ldr r4, [r1, #0x28]
	bl _Znwm
	cmp r0, #0
	beq _02025010
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0x2a4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02025010:
	str r0, [r7, #0x58]
	mov r0, #8
	str r0, [sp]
	ldr r0, [r7, #0x58]
	ldr r1, _02025058 ; =s_data_menu_0208bfac
	ldr r2, _02025064 ; =s_ma004_00_0208bfd0
	add r3, r5, r4
	bl sub_0200F168
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02025038: .word s_data_message_etc_menu_mes_0208bf14
_0202503C: .word s_BGS_0208bf30
_02025040: .word s_data_menu_mc000_bg_LZ_bin_0208bf34
_02025044: .word s_BGS_mc000_NCGR_0208bf50
_02025048: .word s_BGS_mc000_NCLR_0208bf60
_0202504C: .word s_BGS_mc000_01_NSCR_0208bf70
_02025050: .word s_BGS_mc000_02_NSCR_0208bf84
_02025054: .word s_BGS_mc000_03_NSCR_0208bf98
_02025058: .word s_data_menu_0208bfac
_0202505C: .word s_ma000_00_0208bfb8
_02025060: .word s_ma001_00_0208bfc4
_02025064: .word s_ma004_00_0208bfd0

	arm_func_start sub_02025068
sub_02025068: ; 0x02025068
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	mov r4, r0
	str r2, [sp, #0xc]
	ldr r1, [r4, #0x68]
	ldr r2, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r1, #0xb8]
	ldr r2, [r2, #0xb8]
	ldr r3, [r0, #0xb8]
	mov r0, #5
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x6c]
	mov r3, r2
	ldr r1, [r0, #0xb8]
	mov r0, #6
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x70]
	mov r3, r2
	ldr r1, [r0, #0xb8]
	mov r0, #7
	bl NNS_G2dBGSetupEx
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end sub_02025068

	arm_func_start sub_0202510C
sub_0202510C: ; 0x0202510C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, r0
	ldr r0, [r7, #0x20]
	cmp r0, #1
	bne _0202513C
	bl G2S_GetBG1ScrPtr
	mov r4, r0
	bl G2S_GetBG1ScrPtr
	add r0, r0, #0x600
	add r1, r4, #0xc0
	mov r2, #0x100
	bl MIi_CpuCopyFast
	arm_func_end sub_0202510C
_0202513C:
	ldr r1, [r7, #0x2c]
	ldr r0, [r7, #0x20]
	sub r0, r1, r0
	cmp r0, #2
	ble _020251D8
	mov sl, #0x34
	mov r4, #0
	mov r5, #0xb
	mov r6, #0xc
	mov fp, sl
_02025164:
	bl G2S_GetBG1ScrPtr
	mov r1, r5, lsl #6
	mov sb, r0
	add r8, r1, #6
	bl G2S_GetBG1ScrPtr
	add r1, sb, r8
	mov r2, sl
	add r0, r0, #0x700
	bl MIi_CpuCopy16
	bl G2S_GetBG1ScrPtr
	mov sb, r0
	mov r0, r6, lsl #6
	add r8, r0, #6
	bl G2S_GetBG1ScrPtr
	add r1, sb, r8
	add r0, r0, #0x740
	mov r2, fp
	bl MIi_CpuCopy16
	add r2, r4, #3
	ldr r1, [r7, #0x2c]
	ldr r0, [r7, #0x20]
	sub r0, r1, r0
	cmp r2, r0
	bge _020251D8
	add r4, r4, #1
	cmp r4, #5
	add r5, r5, #2
	add r6, r6, #2
	blt _02025164
_020251D8:
	ldr r4, _02025248 ; =0x04001000
	mov r3, #8
	ldr r1, [r4]
	ldr r0, [r4]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #0x1e
	orr r0, r1, r0, lsl #8
	str r0, [r4]
	ldrh r2, [r4, #0xa]
	add r0, r4, #0x50
	mov r1, #2
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r4, #0xa]
	ldrh r5, [r4, #0xc]
	mov r2, #0x1c
	bic r5, r5, #3
	orr r5, r5, #2
	strh r5, [r4, #0xc]
	ldrh r5, [r4, #0xe]
	bic r5, r5, #3
	orr r5, r5, #3
	strh r5, [r4, #0xe]
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02025248: .word 0x04001000

	arm_func_start sub_0202524C
sub_0202524C: ; 0x0202524C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x22c
	ldr r6, _020255EC ; =DAT_020849dc
	add r5, sp, #0x34
	mov sl, r0
	mov r4, #0x1f
	arm_func_end sub_0202524C
_02025264:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02025264
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	bl sub_0201001C
	mov r6, r0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #0x12
	bl sub_0200CC88
	mov r8, #0
	add sb, sp, #0x34
	mov r7, #0x60
	add r4, r6, #0x1000
	mov r5, r8
	mov fp, #2
_020252C4:
	ldr r0, [sb, #8]
	mov r1, r8
	str r0, [sp]
	ldr r0, [sb, #0xc]
	stmib sp, {r0, r7}
	str r5, [sp, #0xc]
	str fp, [sp, #0x10]
	ldr r0, [r4, #0x498]
	ldmia sb, {r2, r3}
	bl sub_0200CCD0
	add r8, r8, #1
	ldr r1, [sb]
	ldr r0, [sb, #4]
	cmp r8, #0x12
	mla r7, r1, r0, r7
	add sb, sb, #0x1c
	blt _020252C4
	ldr r0, [sp, #0x4c]
	mov r2, #1
	str r0, [sp]
	ldr r0, [sl, #0x74]
	mov r1, #0
	ldr r3, [r0, #8]
	add r0, r6, #0x1000
	ldr r3, [r3, #0x9c]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x44]
	ldr r3, [sp, #0x48]
	bl sub_0200CDA0
	ldr r0, [sp, #0x68]
	mov r2, #0
	str r0, [sp]
	ldr r1, [sl, #0x74]
	add r0, r6, #0x1000
	ldr r3, [r1, #8]
	mov r1, #1
	ldr r3, [r3, #0xa4]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl sub_0200CDA0
	ldr r0, [sp, #0x68]
	mov r1, #0
	str r0, [sp]
	ldr r2, [sl, #0x74]
	ldr r0, [sl, #0x28]
	ldr r2, [r2, #8]
	add r0, r0, #8
	add r0, r2, r0, lsl #3
	ldr r2, [r0, #4]
	add r0, r6, #0x1000
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0x64]
	mov r1, #1
	mov r2, #0x33
	bl sub_0200CDA0
	ldr r0, [sp, #0x68]
	mov r3, #0
	str r0, [sp]
	ldr r1, [sl, #0x74]
	add r0, r6, #0x1000
	ldr r2, [r1, #8]
	mov r1, #1
	ldr r4, [r2, #0xf4]
	mov r2, #0x3d
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0x64]
	bl sub_0200CDA0
	ldr r0, [sp, #0x68]
	mov r2, #0
	str r0, [sp]
	ldr r1, [sl, #0x74]
	ldr r0, [sl, #0x2c]
	ldr r4, [r1, #8]
	add r3, r0, #8
	ldr r1, [sl, #0x20]
	add r0, r6, #0x1000
	sub r1, r3, r1
	add r1, r4, r1, lsl #3
	ldr r3, [r1, #4]
	mov r1, #1
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	mov r2, #0x47
	ldr r3, [sp, #0x64]
	bl sub_0200CDA0
	ldr r0, [sl, #0x20]
	cmp r0, #0
	beq _02025500
	add r0, r6, #0x1000
	ldrh r1, [sl, #0x30]
	ldr r0, [r0, #0x4b0]
	bl sub_02018B10
	add r1, sp, #0x14
	mov r2, #0x1f
	bl sub_0202BC74
	ldr r1, [sp, #0x84]
	add r0, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x7c]
	ldr r3, [sp, #0x80]
	mov r1, #2
	bl sub_0200CDA0
	ldr r0, [sp, #0xa0]
	mov r1, #1
	str r0, [sp]
	ldr r2, [sl, #0x74]
	ldr r0, [sl, #0x24]
	ldr r2, [r2, #8]
	add r0, r0, #0x15
	add r0, r2, r0, lsl #3
	ldr r2, [r0, #4]
	mov r0, #0
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x98]
	ldr r3, [sp, #0x9c]
	mov r1, #3
	bl sub_0200CDA0
_02025500:
	ldr r0, [sl, #0x28]
	mov r5, #0
	cmp r0, #0
	addle sp, sp, #0x22c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r7, #4
	mov r8, #5
	add r4, r6, #0x1000
	add fp, sp, #0x34
_02025524:
	add r6, r5, #1
	add r1, sl, r6, lsl #1
	ldrh r1, [r1, #0x30]
	ldr r0, [r4, #0x4b0]
	bl sub_02018B10
	add r1, sp, #0x14
	mov r2, #0x1f
	bl sub_0202BC74
	mov r0, #0x1c
	mla r3, r7, r0, fp
	ldr r0, [r3, #0x18]
	mov r1, r7
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r3, #0x10]
	ldr r0, [r4, #0x498]
	ldr r3, [r3, #0x14]
	bl sub_0200CDA0
	add r0, sl, r6
	ldrb r1, [r0, #0x40]
	mov r0, #0x1c
	mla sb, r8, r0, fp
	ldr r0, [r4, #0x4b0]
	ldr r6, [r4, #0x498]
	bl sub_02018B80
	ldr r2, [sb, #0x18]
	mov r1, r8
	str r2, [sp]
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r2, [sb, #0x10]
	ldr r3, [sb, #0x14]
	mov r0, r6
	bl sub_0200CDA0
	ldr r0, [sl, #0x28]
	add r5, r5, #1
	add r7, r7, #2
	add r8, r8, #2
	cmp r5, r0
	blt _02025524
	add sp, sp, #0x22c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020255EC: .word DAT_020849dc

	arm_func_start sub_020255F0
sub_020255F0: ; 0x020255F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201001C
	mov r1, r0
	ldr r0, [r4, #0x5c]
	add r1, r1, #0x1000
	ldr r2, [r1, #0x5d0]
	ldrsh r1, [r0, #0xc]
	mov r2, r2, asr #0xc
	bl sub_0200EB28
	ldr r0, [r4, #0x58]
	bl sub_0200F64C
	ldmia sp!, {r4, pc}
	arm_func_end sub_020255F0

	arm_func_start sub_02025624
sub_02025624: ; 0x02025624
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x50]
	bl sub_0200F71C
	ldr r0, [r4, #0x54]
	bl sub_0200F71C
	ldr r0, [r4, #0x58]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}
	arm_func_end sub_02025624

	arm_func_start sub_02025648
sub_02025648: ; 0x02025648
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	str r1, [r0, #0x3c]
	bx lr
	arm_func_end sub_02025648

	arm_func_start sub_02025690
sub_02025690: ; 0x02025690
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020256A4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02025690

	arm_func_start sub_020256A4
sub_020256A4: ; 0x020256A4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl sub_0201001C
	ldr r1, [r7, #0x3c]
	mov r5, r0
	cmp r1, #0
	beq _02025744
	ldr r0, [r1, #4]
	mov r6, #0
	cmp r0, #0
	bls _02025710
	mov r4, r6
	arm_func_end sub_020256A4
_020256D4:
	ldr r0, [r1, #8]
	add r0, r0, r6, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020256FC
	bl _ZdaPv
	ldr r0, [r7, #0x3c]
	ldr r0, [r0, #8]
	add r0, r0, r6, lsl #3
	str r4, [r0, #4]
_020256FC:
	ldr r1, [r7, #0x3c]
	add r6, r6, #1
	ldr r0, [r1, #4]
	cmp r6, r0
	blo _020256D4
_02025710:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0202572C
	bl _ZdaPv
	ldr r0, [r7, #0x3c]
	mov r1, #0
	str r1, [r0, #8]
_0202572C:
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	beq _02025744
	bl _ZdlPv
	mov r0, #0
	str r0, [r7, #0x3c]
_02025744:
	ldr r4, [r7, #0x28]
	cmp r4, #0
	beq _0202576C
	beq _02025764
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_02025764:
	mov r0, #0
	str r0, [r7, #0x28]
_0202576C:
	ldr r4, [r7, #0x2c]
	cmp r4, #0
	beq _02025794
	beq _0202578C
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_0202578C:
	mov r0, #0
	str r0, [r7, #0x2c]
_02025794:
	ldr r4, [r7, #0x30]
	cmp r4, #0
	beq _020257BC
	beq _020257B4
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_020257B4:
	mov r0, #0
	str r0, [r7, #0x30]
_020257BC:
	ldr r4, [r7, #0x34]
	cmp r4, #0
	beq _020257E4
	beq _020257DC
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
_020257DC:
	mov r0, #0
	str r0, [r7, #0x34]
_020257E4:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020257F4
sub_020257F4: ; 0x020257F4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r5, r1
	mov sb, r0
	add r0, r5, #1
	str r0, [sp, #4]
	bl sub_0201001C
	mov r4, r0
	cmp r5, #6
	addls pc, pc, r5, lsl #2
	b _02026108
_02025820: ; jump table
	b _0202583C ; case 0
	b _02025A78 ; case 1
	b _02025C38 ; case 2
	b _02025E34 ; case 3
	b _02026030 ; case 4
	b _020260C4 ; case 5
	b _020260E8 ; case 6
	arm_func_end sub_020257F4
_0202583C:
	mov r0, #0
	str r0, [sb, #4]
	str r0, [sb, #8]
	add r0, r4, #0x1000
	ldr r1, [r0, #0x4a0]
	ldr r5, _02026114 ; =MAIN_BSS_020B26A0
	ldrb r2, [r1]
	ldr r1, _02026118 ; =MAIN_BSS_020BA6A0
	str r2, [sb, #0x20]
	ldr r2, [r0, #0x4a0]
	ldrb r2, [r2, #1]
	str r2, [sb, #0x24]
	ldrb r2, [r5]
	str r2, [sb]
	ldrb r2, [r5, #3]
	and r2, r2, #0xf
	str r2, [sb, #0xc]
	ldrb r2, [r5, #3]
	mov r2, r2, asr #4
	and r2, r2, #0xf
	str r2, [sb, #0x10]
	ldrb r1, [r1, #0x7db]
	str r1, [sb, #0x14]
	ldr r1, [r5, #0x28]
	str r1, [sb, #0x1c]
	ldr r1, [sb, #0x14]
	ldr r0, [r0, #0x438]
	and r1, r1, #0xff
	bl sub_02010EAC
	mov r2, #0
	mov r1, r2
	str r0, [sb, #0x18]
	mov r3, r2
_020258C0:
	cmp r1, #0
	blt _020258F4
	cmp r1, #0x1f4
	bge _020258F4
	mov r0, r1, asr #4
	add r0, r5, r0, lsl #2
	add r0, r0, #0x7000
	mov r6, r1, lsl #0x1c
	ldr r7, [r0, #0xc3c]
	mov r0, r6, lsr #0x1b
	mov r0, r7, lsr r0
	and r0, r0, #3
	b _020258F8
_020258F4:
	mov r0, r3
_020258F8:
	add r1, r1, #1
	cmp r0, #2
	addhs r2, r2, #1
	cmp r1, #0x1f4
	blt _020258C0
	add r0, r5, #0x7000
	ldr r1, [r0, #0xcb4]
	mov r0, r1, lsr #6
	and r0, r0, #3
	cmp r0, #2
	mov r0, r1, lsr #8
	and r0, r0, #3
	subeq r2, r2, #1
	cmp r0, #2
	mov r0, r1, lsr #0x18
	and r0, r0, #3
	subeq r2, r2, #1
	cmp r0, #2
	ldr r0, _0202611C ; =0x0000010B
	subeq r2, r2, #1
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	str r0, [sb, #8]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #0x1e
	bl sub_02019278
	mov r0, r0, asr #3
	and r1, r0, #1
	mov r0, #0xb8
	str r1, [sb, #4]
	bl _Znwm
	movs r6, r0
	beq _02025994
	ldr r1, _02026120 ; =s_data_message_etc_menu_mes_0208bfdc
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r6, r0
_02025994:
	mov r0, #0xc
	bl _Znwm
	str r0, [sb, #0x3c]
	ldr r1, [r6, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6, #0x4c]
	ldr r0, [sb, #0x3c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [sb, #0x3c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [sb, #0x3c]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [sb, #0x3c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02025A5C
_020259EC:
	ldr r1, [r6, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [sb, #0x3c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [sb, #0x3c]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [sb, #0x3c]
	ldr r0, [r6, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [sb, #0x3c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _020259EC
_02025A5C:
	cmp r6, #0
	beq _02026108
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	b _02026108
_02025A78:
	mov r1, #0
	mov r0, #0x44
	str r1, [sb, #0x40]
	bl _Znwm
	cmp r0, #0
	beq _02025AB0
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02025AB0:
	str r0, [sb, #0x28]
	ldr r0, [sb, #0x10]
	cmp r0, #0
	bne _02025B34
	ldr r0, [sb]
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	bne _02025B04
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x28]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _02026128 ; =s_mp003_00_0208c004
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
	b _02025C1C
_02025B04:
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x28]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _0202612C ; =s_mp004_00_0208c010
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
	b _02025C1C
_02025B34:
	cmp r0, #1
	ldr r0, [sb]
	bne _02025BB0
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	bne _02025B80
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x28]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _02026130 ; =s_mp005_00_0208c01c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
	b _02025C1C
_02025B80:
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x28]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _02026134 ; =s_mp006_00_0208c028
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
	b _02025C1C
_02025BB0:
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	bne _02025BF0
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x28]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _02026138 ; =s_mp007_00_0208c034
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
	b _02025C1C
_02025BF0:
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x28]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _0202613C ; =s_mp008_00_0208c040
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
_02025C1C:
	mov r1, #0
	str r1, [sp]
	ldr r0, [sb, #0x28]
	mov r2, #0xd0
	mov r3, #0x5b
	bl sub_0200F4FC
	b _02026108
_02025C38:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02025C68
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0xa4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02025C68:
	str r0, [sb, #0x2c]
	mov r0, #2
	str r0, [sp]
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x2c]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _02026140 ; =s_mp001_00_0208c04c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	add r0, r1, r0
	str r0, [sb, #0x40]
	ldr r0, [sb, #4]
	cmp r0, #0
	beq _02025CC8
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xc
	mov r2, #0x10
	mov r3, #0x11
	bl sub_0200F4FC
_02025CC8:
	ldr r0, [sb, #8]
	cmp r0, #0
	beq _02025CF0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xd
	mov r2, #0x23
	mov r3, #0x11
	bl sub_0200F4FC
_02025CF0:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x14]
	ldr r3, _02026144 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r0, r1, r3, r0
	ldr r0, [sb, #0x2c]
	add r1, r2, r1, asr #2
	mov r2, #0x78
	mov r3, #0x80
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r4, [sb, #0x14]
	ldr r3, _02026144 ; =0x66666667
	mov r0, r4, lsr #0x1f
	smull r2, r1, r3, r4
	add r1, r0, r1, asr #2
	mov r2, #0xa
	smull r1, r0, r2, r1
	ldr r0, [sb, #0x2c]
	sub r1, r4, r1
	mov r2, #0x88
	mov r3, #0x80
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0x11
	mov r2, #0x50
	mov r3, #0x88
	bl sub_0200F4FC
	ldr r0, [sb, #0x20]
	cmp r0, #0
	beq _02025D98
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xa
	mov r2, #0x72
	mov r3, #0xab
	bl sub_0200F4FC
_02025D98:
	ldr r0, [sb, #0x24]
	cmp r0, #0
	beq _02025DC0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xb
	mov r2, #0x8e
	mov r3, #0xab
	bl sub_0200F4FC
_02025DC0:
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xf
	mov r2, #0x40
	mov r3, #0xab
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xe
	mov r2, #0xc0
	mov r3, #0xab
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0x10
	mov r2, #0x38
	mov r3, #0x27
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0x10
	mov r2, #0x38
	mov r3, #0x80
	bl sub_0200F4FC
	b _02026108
_02025E34:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02025E64
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x204
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02025E64:
	str r0, [sb, #0x30]
	mov r0, #7
	str r0, [sp]
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x30]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _02026148 ; =s_ma003_00_0208c058
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	mov r8, #0
	add r0, r1, r0
	str r0, [sb, #0x40]
	ldr r0, [sb, #0xc]
	cmp r0, #0
	ble _02026108
	mov fp, r8
	mov sl, r8
	mov r4, r8
	mov r5, r8
	mov r6, r8
	mov r7, r8
_02025EC4:
	cmp r8, #9
	addls pc, pc, r8, lsl #2
	b _0202601C
_02025ED0: ; jump table
	b _02025EF8 ; case 0
	b _02025F18 ; case 1
	b _02025F34 ; case 2
	b _02025F50 ; case 3
	b _02025F6C ; case 4
	b _02025F88 ; case 5
	b _02025FA4 ; case 6
	b _02025FC0 ; case 7
	b _02025FE0 ; case 8
	b _02026000 ; case 9
_02025EF8:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #0
	mov r2, #0x14
	mov r3, #0x40
	bl sub_0200F4FC
	b _0202601C
_02025F18:
	str r7, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #1
	mov r2, #0x2c
	mov r3, #0x40
	bl sub_0200F4FC
	b _0202601C
_02025F34:
	str r6, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #2
	mov r2, #0x44
	mov r3, #0x40
	bl sub_0200F4FC
	b _0202601C
_02025F50:
	str r5, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #3
	mov r2, #0x5c
	mov r3, #0x40
	bl sub_0200F4FC
	b _0202601C
_02025F6C:
	str r4, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #4
	mov r2, #0x74
	mov r3, #0x40
	bl sub_0200F4FC
	b _0202601C
_02025F88:
	str sl, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #5
	mov r2, #0x24
	mov r3, #0x60
	bl sub_0200F4FC
	b _0202601C
_02025FA4:
	str fp, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #6
	mov r2, #0x3c
	mov r3, #0x60
	bl sub_0200F4FC
	b _0202601C
_02025FC0:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #7
	mov r2, #0x54
	mov r3, #0x60
	bl sub_0200F4FC
	b _0202601C
_02025FE0:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #8
	mov r2, #0x6c
	mov r3, #0x60
	bl sub_0200F4FC
	b _0202601C
_02026000:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #9
	mov r2, #0x84
	mov r3, #0x60
	bl sub_0200F4FC
_0202601C:
	add r8, r8, #1
	ldr r0, [sb, #0xc]
	cmp r8, r0
	blt _02025EC4
	b _02026108
_02026030:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02026060
	mov r1, #0x40
	str r1, [sp]
	add r2, r4, #0x1000
	add r1, r4, #0x394
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_02026060:
	str r0, [sb, #0x34]
	mov r0, #8
	str r0, [sp]
	ldr r2, [sb, #0x40]
	ldr r0, [sb, #0x34]
	mov r1, r2, asr #4
	add r3, r2, r1, lsr #27
	ldr r1, _02026124 ; =s_data_menu_0208bff8
	ldr r2, _0202614C ; =s_ma004_00_0208c064
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0x40]
	mov r2, #0x80
	add r0, r1, r0
	str r0, [sb, #0x40]
	mov r0, #3
	str r0, [sp]
	ldr r0, [sb, #0x34]
	sub r3, r2, #0x88
	mov r1, #0
	bl sub_0200F4FC
	str r0, [sb, #0x38]
	mov r0, #0
	str r0, [sb, #0x44]
	b _02026108
_020260C4:
	ldr r1, [sb, #0x44]
	mov r0, sb
	bl sub_02026968
	mvn r1, #0
	str r0, [sb, #0x44]
	cmp r0, r1
	movne r0, #5
	strne r0, [sp, #4]
	b _02026108
_020260E8:
	mov r0, sb
	bl sub_02026E54
	mov r0, sb
	bl sub_02026ECC
	mov r0, sb
	bl sub_02027550
	mvn r0, #0
	str r0, [sp, #4]
_02026108:
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02026114: .word MAIN_BSS_020B26A0
_02026118: .word MAIN_BSS_020BA6A0
_0202611C: .word 0x0000010B
_02026120: .word s_data_message_etc_menu_mes_0208bfdc
_02026124: .word s_data_menu_0208bff8
_02026128: .word s_mp003_00_0208c004
_0202612C: .word s_mp004_00_0208c010
_02026130: .word s_mp005_00_0208c01c
_02026134: .word s_mp006_00_0208c028
_02026138: .word s_mp007_00_0208c034
_0202613C: .word s_mp008_00_0208c040
_02026140: .word s_mp001_00_0208c04c
_02026144: .word 0x66666667
_02026148: .word s_ma003_00_0208c058
_0202614C: .word s_ma004_00_0208c064

	arm_func_start sub_02026150
sub_02026150: ; 0x02026150
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r0
	bl sub_0201001C
	mov r1, #0
	mov r6, r0
	str r1, [sb, #4]
	add r0, r6, #0x1000
	str r1, [sb, #8]
	ldr r1, [r0, #0x4a0]
	ldr r4, _0202692C ; =MAIN_BSS_020B26A0
	ldrb r2, [r1]
	ldr r1, _02026930 ; =MAIN_BSS_020BA6A0
	str r2, [sb, #0x20]
	ldr r2, [r0, #0x4a0]
	ldrb r2, [r2, #1]
	str r2, [sb, #0x24]
	ldrb r2, [r4]
	str r2, [sb]
	ldrb r2, [r4, #3]
	and r2, r2, #0xf
	str r2, [sb, #0xc]
	ldrb r2, [r4, #3]
	mov r2, r2, asr #4
	and r2, r2, #0xf
	str r2, [sb, #0x10]
	ldrb r1, [r1, #0x7db]
	str r1, [sb, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [sb, #0x1c]
	ldr r1, [sb, #0x14]
	ldr r0, [r0, #0x438]
	and r1, r1, #0xff
	bl sub_02010EAC
	mov r2, #0
	mov r1, r2
	str r0, [sb, #0x18]
	mov r3, r2
	arm_func_end sub_02026150
_020261E4:
	cmp r1, #0
	blt _02026218
	cmp r1, #0x1f4
	bge _02026218
	mov r0, r1, asr #4
	add r0, r4, r0, lsl #2
	add r0, r0, #0x7000
	mov r5, r1, lsl #0x1c
	ldr r7, [r0, #0xc3c]
	mov r0, r5, lsr #0x1b
	mov r0, r7, lsr r0
	and r0, r0, #3
	b _0202621C
_02026218:
	mov r0, r3
_0202621C:
	add r1, r1, #1
	cmp r0, #2
	addhs r2, r2, #1
	cmp r1, #0x1f4
	blt _020261E4
	add r0, r4, #0x7000
	ldr r1, [r0, #0xcb4]
	mov r0, r1, lsr #6
	and r0, r0, #3
	cmp r0, #2
	mov r0, r1, lsr #8
	and r0, r0, #3
	subeq r2, r2, #1
	cmp r0, #2
	mov r0, r1, lsr #0x18
	and r0, r0, #3
	subeq r2, r2, #1
	cmp r0, #2
	ldr r0, _02026934 ; =0x0000010B
	subeq r2, r2, #1
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	str r0, [sb, #8]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x4b4]
	mov r1, #0x1e
	bl sub_02019278
	mov r0, r0, asr #3
	and r1, r0, #1
	mov r0, #0xb8
	str r1, [sb, #4]
	bl _Znwm
	movs r7, r0
	beq _020262B8
	ldr r1, _02026938 ; =s_data_message_etc_menu_mes_0208bfdc
	mov r2, #1
	bl _ZN14CBinaryFileMesC1EPcm
	mov r7, r0
_020262B8:
	mov r0, #0xc
	bl _Znwm
	str r0, [sb, #0x3c]
	ldr r1, [r7, #0x4c]
	mov r4, #2
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r7, #0x4c]
	ldr r0, [sb, #0x3c]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	ldr r0, [sb, #0x3c]
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	bl _Znam
	ldr r1, [sb, #0x3c]
	mov r5, #0
	str r0, [r1, #8]
	ldr r2, [sb, #0x3c]
	ldr r0, [r2, #4]
	cmp r0, #0
	bls _02026380
_02026310:
	ldr r1, [r7, #0x4c]
	ldr r0, [r2, #8]
	ldr r1, [r1, r4, lsl #2]
	add r4, r4, #1
	str r1, [r0, r5, lsl #3]
	ldr r0, [sb, #0x3c]
	ldr r0, [r0, #8]
	ldr r0, [r0, r5, lsl #3]
	bl _Znam
	ldr r1, [sb, #0x3c]
	ldr r1, [r1, #8]
	add r1, r1, r5, lsl #3
	str r0, [r1, #4]
	ldr r1, [sb, #0x3c]
	ldr r0, [r7, #0x4c]
	ldr r2, [r1, #8]
	add r0, r0, r4, lsl #2
	add r1, r2, r5, lsl #3
	ldr r1, [r1, #4]
	ldr r2, [r2, r5, lsl #3]
	bl MIi_CpuCopyFast
	ldr r2, [sb, #0x3c]
	ldmib r2, {r0, r1}
	ldr r1, [r1, r5, lsl #3]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, r1, lsr #2
	blo _02026310
_02026380:
	cmp r7, #0
	beq _02026398
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026398:
	mov r0, #0x44
	mov r7, #0
	bl _Znwm
	cmp r0, #0
	beq _020263CC
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0x24
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_020263CC:
	str r0, [sb, #0x28]
	ldr r0, [sb, #0x10]
	mov r3, #0
	cmp r0, #0
	bne _02026420
	ldr r0, [sb]
	cmp r0, #0
	str r3, [sp]
	bne _02026408
	ldr r0, [sb, #0x28]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026940 ; =s_mp003_00_0208c004
	bl sub_0200EE14
	add r7, r7, r0
	b _020264A0
_02026408:
	ldr r0, [sb, #0x28]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026944 ; =s_mp004_00_0208c010
	bl sub_0200EE14
	add r7, r7, r0
	b _020264A0
_02026420:
	cmp r0, #1
	ldr r0, [sb]
	bne _02026468
	cmp r0, #0
	str r3, [sp]
	bne _02026450
	ldr r0, [sb, #0x28]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026948 ; =s_mp005_00_0208c01c
	bl sub_0200EE14
	add r7, r7, r0
	b _020264A0
_02026450:
	ldr r0, [sb, #0x28]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _0202694C ; =s_mp006_00_0208c028
	bl sub_0200EE14
	add r7, r7, r0
	b _020264A0
_02026468:
	cmp r0, #0
	str r3, [sp]
	bne _0202648C
	ldr r0, [sb, #0x28]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026950 ; =s_mp007_00_0208c034
	bl sub_0200EE14
	add r7, r7, r0
	b _020264A0
_0202648C:
	ldr r0, [sb, #0x28]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026954 ; =s_mp008_00_0208c040
	bl sub_0200EE14
	add r7, r7, r0
_020264A0:
	mov r1, #0
	str r1, [sp]
	ldr r0, [sb, #0x28]
	mov r2, #0xd0
	mov r3, #0x5b
	bl sub_0200F4FC
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _020264E8
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0xa4
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_020264E8:
	str r0, [sb, #0x2c]
	mov r0, #2
	str r0, [sp]
	mov r0, r7, asr #4
	add r3, r7, r0, lsr #27
	ldr r0, [sb, #0x2c]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026958 ; =s_mp001_00_0208c04c
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #4]
	add r7, r7, r0
	cmp r1, #0
	beq _0202653C
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xc
	mov r2, #0x10
	mov r3, #0x11
	bl sub_0200F4FC
_0202653C:
	ldr r0, [sb, #8]
	cmp r0, #0
	beq _02026564
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xd
	mov r2, #0x23
	mov r3, #0x11
	bl sub_0200F4FC
_02026564:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x14]
	ldr r3, _0202695C ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r0, r1, r3, r0
	ldr r0, [sb, #0x2c]
	add r1, r2, r1, asr #2
	mov r2, #0x78
	mov r3, #0x80
	bl sub_0200F4FC
	mov r0, #0
	str r0, [sp]
	ldr r4, [sb, #0x14]
	ldr r3, _0202695C ; =0x66666667
	mov r0, r4, lsr #0x1f
	smull r2, r1, r3, r4
	add r1, r0, r1, asr #2
	mov r2, #0xa
	smull r1, r0, r2, r1
	ldr r0, [sb, #0x2c]
	sub r1, r4, r1
	mov r2, #0x88
	mov r3, #0x80
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0x11
	mov r2, #0x50
	mov r3, #0x88
	bl sub_0200F4FC
	ldr r0, [sb, #0x20]
	cmp r0, #0
	beq _0202660C
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xa
	mov r2, #0x72
	mov r3, #0xab
	bl sub_0200F4FC
_0202660C:
	ldr r0, [sb, #0x24]
	cmp r0, #0
	beq _02026634
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xb
	mov r2, #0x8e
	mov r3, #0xab
	bl sub_0200F4FC
_02026634:
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xf
	mov r2, #0x40
	mov r3, #0xab
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0xe
	mov r2, #0xc0
	mov r3, #0xab
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0x10
	mov r2, #0x38
	mov r3, #0x27
	bl sub_0200F4FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sb, #0x2c]
	mov r1, #0x10
	mov r2, #0x38
	mov r3, #0x80
	bl sub_0200F4FC
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _020266D4
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0x204
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_020266D4:
	str r0, [sb, #0x30]
	mov r0, #7
	str r0, [sp]
	mov r0, r7, asr #4
	add r3, r7, r0, lsr #27
	ldr r0, [sb, #0x30]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026960 ; =s_ma003_00_0208c058
	mov r3, r3, asr #5
	bl sub_0200EE14
	ldr r1, [sb, #0xc]
	add r7, r7, r0
	cmp r1, #0
	mov r8, #0
	ble _02026890
	mov fp, r8
	mov sl, r8
	mov r4, r8
	mov r5, r8
_02026720:
	cmp r8, #9
	addls pc, pc, r8, lsl #2
	b _02026880
_0202672C: ; jump table
	b _02026754 ; case 0
	b _02026774 ; case 1
	b _02026790 ; case 2
	b _020267AC ; case 3
	b _020267C8 ; case 4
	b _020267E4 ; case 5
	b _02026804 ; case 6
	b _02026824 ; case 7
	b _02026844 ; case 8
	b _02026864 ; case 9
_02026754:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #0
	mov r2, #0x14
	mov r3, #0x40
	bl sub_0200F4FC
	b _02026880
_02026774:
	str r5, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #1
	mov r2, #0x2c
	mov r3, #0x40
	bl sub_0200F4FC
	b _02026880
_02026790:
	str r4, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #2
	mov r2, #0x44
	mov r3, #0x40
	bl sub_0200F4FC
	b _02026880
_020267AC:
	str sl, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #3
	mov r2, #0x5c
	mov r3, #0x40
	bl sub_0200F4FC
	b _02026880
_020267C8:
	str fp, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #4
	mov r2, #0x74
	mov r3, #0x40
	bl sub_0200F4FC
	b _02026880
_020267E4:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #5
	mov r2, #0x24
	mov r3, #0x60
	bl sub_0200F4FC
	b _02026880
_02026804:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #6
	mov r2, #0x3c
	mov r3, #0x60
	bl sub_0200F4FC
	b _02026880
_02026824:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #7
	mov r2, #0x54
	mov r3, #0x60
	bl sub_0200F4FC
	b _02026880
_02026844:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #8
	mov r2, #0x6c
	mov r3, #0x60
	bl sub_0200F4FC
	b _02026880
_02026864:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sb, #0x30]
	mov r1, #9
	mov r2, #0x84
	mov r3, #0x60
	bl sub_0200F4FC
_02026880:
	add r8, r8, #1
	ldr r0, [sb, #0xc]
	cmp r8, r0
	blt _02026720
_02026890:
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _020268C0
	mov r1, #0x40
	str r1, [sp]
	add r2, r6, #0x1000
	add r1, r6, #0x394
	ldr r2, [r2, #0x4a8]
	add r1, r1, #0x400
	mov r3, #1
	bl sub_0200ECD0
_020268C0:
	str r0, [sb, #0x34]
	mov r0, #8
	str r0, [sp]
	mov r0, r7, asr #4
	add r3, r7, r0, lsr #27
	ldr r0, [sb, #0x34]
	ldr r1, _0202693C ; =s_data_menu_0208bff8
	ldr r2, _02026964 ; =s_ma004_00_0208c064
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r0, #3
	str r0, [sp]
	mov r2, #0x80
	ldr r0, [sb, #0x34]
	sub r3, r2, #0x88
	mov r1, #0
	bl sub_0200F4FC
	str r0, [sb, #0x38]
	mov r0, sb
	bl sub_02026C18
	mov r0, sb
	bl sub_02026E54
	mov r0, sb
	bl sub_02026ECC
	mov r0, sb
	bl sub_02027550
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0202692C: .word MAIN_BSS_020B26A0
_02026930: .word MAIN_BSS_020BA6A0
_02026934: .word 0x0000010B
_02026938: .word s_data_message_etc_menu_mes_0208bfdc
_0202693C: .word s_data_menu_0208bff8
_02026940: .word s_mp003_00_0208c004
_02026944: .word s_mp004_00_0208c010
_02026948: .word s_mp005_00_0208c01c
_0202694C: .word s_mp006_00_0208c028
_02026950: .word s_mp007_00_0208c034
_02026954: .word s_mp008_00_0208c040
_02026958: .word s_mp001_00_0208c04c
_0202695C: .word 0x66666667
_02026960: .word s_ma003_00_0208c058
_02026964: .word s_ma004_00_0208c064

	arm_func_start sub_02026968
sub_02026968: ; 0x02026968
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	cmp r1, #5
	add r4, r1, #1
	addls pc, pc, r1, lsl #2
	b _02026BF0
_02026984: ; jump table
	b _0202699C ; case 0
	b _020269D8 ; case 1
	b _02026A04 ; case 2
	b _02026A30 ; case 3
	b _02026AA8 ; case 4
	b _02026B14 ; case 5
	arm_func_end sub_02026968
_0202699C:
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _020269D0
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r1, _02026BFC ; =s_BGS_0208c070
	ldr r2, _02026C00 ; =s_data_menu_mp000_bg_LZ_bin_0208c074
	str r3, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
_020269D0:
	str r0, [r5, #0x48]
	b _02026BF0
_020269D8:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _020269FC
	mov r2, #0
	ldr r1, _02026C04 ; =s_BGS_mp000_NCGR_0208c090
	mov r3, r2
	str r2, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
_020269FC:
	str r0, [r5, #0x4c]
	b _02026BF0
_02026A04:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02026A28
	mov r2, #0
	ldr r1, _02026C08 ; =s_BGS_mp000_NCLR_0208c0a0
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
_02026A28:
	str r0, [r5, #0x50]
	b _02026BF0
_02026A30:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _02026A58
	mov r2, #0
	ldr r1, _02026C0C ; =s_BGS_mp000_00_NSCR_0208c0b0
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r6, r0
_02026A58:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, #0x50]
	ldr r1, [r6, #0xb8]
	ldr r3, [r0, #0xb8]
	ldr r2, [r2, #0xb8]
	mov r0, #5
	bl NNS_G2dBGSetupEx
	cmp r6, #0
	beq _02026BF0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	b _02026BF0
_02026AA8:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _02026AD0
	mov r2, #0
	ldr r1, _02026C10 ; =s_BGS_mp000_01_NSCR_0208c0c4
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r5, r0
_02026AD0:
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r5, #0xb8]
	mov r3, r2
	mov r0, #6
	bl NNS_G2dBGSetupEx
	cmp r5, #0
	beq _02026BF0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	b _02026BF0
_02026B14:
	mov r0, #0xbc
	bl _Znwm
	movs r4, r0
	beq _02026B3C
	mov r2, #0
	ldr r1, _02026C14 ; =s_BGS_mp000_02_NSCR_0208c0d8
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r4, r0
_02026B3C:
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r4, #0xb8]
	mov r3, r2
	mov r0, #7
	bl NNS_G2dBGSetupEx
	cmp r4, #0
	beq _02026B7C
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026B7C:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	beq _02026BA0
	beq _02026B98
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026B98:
	mov r0, #0
	str r0, [r5, #0x4c]
_02026BA0:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _02026BC4
	beq _02026BBC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026BBC:
	mov r0, #0
	str r0, [r5, #0x50]
_02026BC4:
	ldr r4, [r5, #0x48]
	cmp r4, #0
	beq _02026BEC
	beq _02026BE4
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
_02026BE4:
	mov r0, #0
	str r0, [r5, #0x48]
_02026BEC:
	mvn r4, #0
_02026BF0:
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02026BFC: .word s_BGS_0208c070
_02026C00: .word s_data_menu_mp000_bg_LZ_bin_0208c074
_02026C04: .word s_BGS_mp000_NCGR_0208c090
_02026C08: .word s_BGS_mp000_NCLR_0208c0a0
_02026C0C: .word s_BGS_mp000_00_NSCR_0208c0b0
_02026C10: .word s_BGS_mp000_01_NSCR_0208c0c4
_02026C14: .word s_BGS_mp000_02_NSCR_0208c0d8

	arm_func_start sub_02026C18
sub_02026C18: ; 0x02026C18
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r0, #0x6c
	bl _Znwm
	movs r4, r0
	beq _02026C58
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r1, _02026E38 ; =s_BGS_0208c070
	ldr r2, _02026E3C ; =s_data_menu_mp000_bg_LZ_bin_0208c074
	str r3, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
	mov r4, r0
	arm_func_end sub_02026C18
_02026C58:
	mov r0, #0xbc
	bl _Znwm
	movs r5, r0
	beq _02026C80
	mov r2, #0
	ldr r1, _02026E40 ; =s_BGS_mp000_NCGR_0208c090
	mov r3, r2
	str r2, [sp]
	bl _ZN11CBGNCGRFileC1EPcmmm
	mov r5, r0
_02026C80:
	mov r0, #0xbc
	bl _Znwm
	movs r6, r0
	beq _02026CA8
	mov r2, #0
	ldr r1, _02026E44 ; =s_BGS_mp000_NCLR_0208c0a0
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNCLRFileC1EPcmmm
	mov r6, r0
_02026CA8:
	mov r0, #0xbc
	bl _Znwm
	movs r7, r0
	beq _02026CD0
	mov r2, #0
	ldr r1, _02026E48 ; =s_BGS_mp000_00_NSCR_0208c0b0
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r7, r0
_02026CD0:
	mov r0, #0xbc
	bl _Znwm
	movs r8, r0
	beq _02026CF8
	mov r2, #0
	ldr r1, _02026E4C ; =s_BGS_mp000_01_NSCR_0208c0c4
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov r8, r0
_02026CF8:
	mov r0, #0xbc
	bl _Znwm
	movs sb, r0
	beq _02026D20
	mov r2, #0
	ldr r1, _02026E50 ; =s_BGS_mp000_02_NSCR_0208c0d8
	mov r3, r2
	str r2, [sp]
	bl _ZN9CNSCRFileC1EPcmmm
	mov sb, r0
_02026D20:
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
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r8, #0xb8]
	mov r3, r2
	mov r0, #6
	bl NNS_G2dBGSetupEx
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [sb, #0xb8]
	mov r0, #7
	mov r3, r2
	bl NNS_G2dBGSetupEx
	cmp r7, #0
	beq _02026DB4
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026DB4:
	cmp r8, #0
	beq _02026DCC
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026DCC:
	cmp sb, #0
	beq _02026DE4
	mov r0, sb
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026DE4:
	cmp r5, #0
	beq _02026DFC
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026DFC:
	cmp r6, #0
	beq _02026E14
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02026E14:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02026E38: .word s_BGS_0208c070
_02026E3C: .word s_data_menu_mp000_bg_LZ_bin_0208c074
_02026E40: .word s_BGS_mp000_NCGR_0208c090
_02026E44: .word s_BGS_mp000_NCLR_0208c0a0
_02026E48: .word s_BGS_mp000_00_NSCR_0208c0b0
_02026E4C: .word s_BGS_mp000_01_NSCR_0208c0c4
_02026E50: .word s_BGS_mp000_02_NSCR_0208c0d8

	arm_func_start sub_02026E54
sub_02026E54: ; 0x02026E54
	stmdb sp!, {r3, lr}
	ldr ip, _02026EC8 ; =0x04001000
	mov r3, #8
	ldr r1, [ip]
	ldr r0, [ip]
	and r1, r1, #0x1f00
	mov r2, r1, lsr #8
	bic r1, r0, #0x1f00
	orr r0, r2, #0x1e
	orr r0, r1, r0, lsl #8
	str r0, [ip]
	ldrh r2, [ip, #0xa]
	add r0, ip, #0x50
	mov r1, #2
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [ip, #0xa]
	ldrh lr, [ip, #0xc]
	mov r2, #0x1c
	bic lr, lr, #3
	orr lr, lr, #2
	strh lr, [ip, #0xc]
	ldrh lr, [ip, #0xe]
	bic lr, lr, #3
	orr lr, lr, #3
	strh lr, [ip, #0xe]
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	ldmia sp!, {r3, pc}
	.align 2, 0
_02026EC8: .word 0x04001000
	arm_func_end sub_02026E54

	arm_func_start sub_02026ECC
sub_02026ECC: ; 0x02026ECC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xbc
	ldr r6, _02027538 ; =DAT_02084bd4
	add r5, sp, #0x14
	mov sl, r0
	mov r4, #0xa
	arm_func_end sub_02026ECC
_02026EE4:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02026EE4
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	bl sub_0201001C
	mov r6, r0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CB14
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #6
	bl sub_0200CC88
	mov r8, #0
	add sb, sp, #0x14
	mov r7, #0x60
	add r4, r6, #0x1000
	mov r5, r8
	mov fp, #2
_02026F44:
	ldr r0, [sb, #8]
	mov r1, r8
	str r0, [sp]
	ldr r0, [sb, #0xc]
	stmib sp, {r0, r7}
	str r5, [sp, #0xc]
	str fp, [sp, #0x10]
	ldr r0, [r4, #0x498]
	ldmia sb, {r2, r3}
	bl sub_0200CCD0
	add r8, r8, #1
	ldr r1, [sb]
	ldr r0, [sb, #4]
	cmp r8, #6
	mla r7, r1, r0, r7
	add sb, sb, #0x1c
	blt _02026F44
	ldr r1, [sp, #0x2c]
	ldr r0, _0202753C ; =MAIN_BSS_020BAE83
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	mov r1, #0
	bl sub_0200CDA0
	ldr r0, [sp, #0x48]
	mov r1, #1
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	mov r2, #0
	ldr r3, [r0, #8]
	add r0, r6, #0x1000
	ldr r3, [r3, #0xd4]
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_0200CDA0
	ldr r0, [sp, #0x64]
	mov r3, #1
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r6, #0x1000
	ldr r4, [r1, #0xdc]
	mov r1, #2
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	bl sub_0200CDA0
	ldr r0, [sp, #0x80]
	mov r3, #1
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r6, #0x1000
	ldr r4, [r1, #0xe4]
	mov r1, #3
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_0200CDA0
	ldr r0, [sp, #0x9c]
	mov r3, #1
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	mov r2, #0
	ldr r1, [r0, #8]
	add r0, r6, #0x1000
	ldr r4, [r1, #0xec]
	mov r1, #4
	str r4, [sp, #4]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x98]
	bl sub_0200CDA0
	ldr r0, [sl, #0x18]
	cmp r0, #0
	addeq sp, sp, #0xbc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0xb8]
	mov r2, #0
	str r0, [sp]
	ldr r1, [sl, #0x3c]
	add r0, r6, #0x1000
	ldr r3, [r1, #8]
	mov r1, #5
	ldr r3, [r3, #0xf4]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r0, #0x498]
	ldr r2, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027540 ; =0x68DB8BAD
	str r0, [sp]
	ldr r1, [sl, #0x1c]
	ldr r4, [sl, #0x3c]
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #12
	ldr r1, [r4, #8]
	add r0, r3, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0xb4]
	mov r1, #5
	mov r2, #0xa
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027544 ; =0x10624DD3
	str r0, [sp]
	ldr r3, [sl, #0x1c]
	ldr r4, [sl, #0x3c]
	smull r1, r0, r2, r3
	ldr r1, [r4, #8]
	mov r2, r3, lsr #0x1f
	add r0, r2, r0, asr #6
	ldr r4, _02027548 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r5, r4, r0
	add r5, r2, r5, asr #2
	mov r4, #0xa
	smull r2, r3, r4, r5
	sub r5, r0, r2
	add r0, r5, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x14
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r3, _0202754C ; =0x51EB851F
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	ldr r4, [sl, #0x1c]
	ldr r1, [r0, #8]
	smull r2, r0, r3, r4
	mov r2, r4, lsr #0x1f
	add r0, r2, r0, asr #5
	ldr r4, _02027548 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r5, r4, r0
	add r5, r2, r5, asr #2
	mov r4, #0xa
	smull r2, r3, r4, r5
	sub r5, r0, r2
	add r0, r5, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x1e
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027548 ; =0x66666667
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	ldr r3, [sl, #0x1c]
	ldr r0, [r0, #8]
	smull r1, r4, r2, r3
	mov r1, r3, lsr #0x1f
	add r4, r1, r4, asr #2
	smull r1, r5, r2, r4
	mov r1, r4, lsr #0x1f
	add r5, r1, r5, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r5
	sub r5, r4, r1
	add r1, r5, #8
	add r0, r0, r1, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x28
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027548 ; =0x66666667
	str r0, [sp]
	ldr r3, [sl, #0x1c]
	ldr r5, [sl, #0x3c]
	mov r0, r3, lsr #0x1f
	smull r1, r4, r2, r3
	add r4, r0, r4, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r4
	sub r4, r3, r0
	ldr r1, [r5, #8]
	add r0, r4, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0xb4]
	mov r1, #5
	mov r2, #0x32
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027540 ; =0x68DB8BAD
	str r0, [sp]
	ldr r1, [sl, #0x18]
	ldr r4, [sl, #0x3c]
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #12
	ldr r1, [r4, #8]
	add r0, r3, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0xb4]
	mov r1, #5
	mov r2, #0x46
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r3, _02027544 ; =0x10624DD3
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	ldr r4, [sl, #0x18]
	ldr r1, [r0, #8]
	smull r2, r0, r3, r4
	mov r2, r4, lsr #0x1f
	add r0, r2, r0, asr #6
	ldr r4, _02027548 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r5, r4, r0
	add r5, r2, r5, asr #2
	mov r4, #0xa
	smull r2, r3, r4, r5
	sub r5, r0, r2
	add r0, r5, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x50
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r3, _0202754C ; =0x51EB851F
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	ldr r4, [sl, #0x18]
	ldr r1, [r0, #8]
	smull r2, r0, r3, r4
	mov r2, r4, lsr #0x1f
	add r0, r2, r0, asr #5
	ldr r4, _02027548 ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r5, r4, r0
	add r5, r2, r5, asr #2
	mov r4, #0xa
	smull r2, r3, r4, r5
	sub r5, r0, r2
	add r0, r5, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x5a
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027548 ; =0x66666667
	str r0, [sp]
	ldr r0, [sl, #0x3c]
	ldr r3, [sl, #0x18]
	ldr r0, [r0, #8]
	smull r1, r4, r2, r3
	mov r1, r3, lsr #0x1f
	add r4, r1, r4, asr #2
	smull r1, r5, r2, r4
	mov r1, r4, lsr #0x1f
	add r5, r1, r5, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r5
	sub r5, r4, r1
	add r1, r5, #8
	add r0, r0, r1, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	mov r1, #5
	mov r2, #0x64
	ldr r3, [sp, #0xb4]
	bl sub_0200CDA0
	ldr r0, [sp, #0xb8]
	ldr r2, _02027548 ; =0x66666667
	str r0, [sp]
	ldr r3, [sl, #0x18]
	ldr r5, [sl, #0x3c]
	mov r0, r3, lsr #0x1f
	smull r1, r4, r2, r3
	add r4, r0, r4, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r4
	sub r4, r3, r0
	ldr r1, [r5, #8]
	add r0, r4, #8
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x498]
	ldr r3, [sp, #0xb4]
	mov r1, #5
	mov r2, #0x6e
	bl sub_0200CDA0
	add sp, sp, #0xbc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02027538: .word DAT_02084bd4
_0202753C: .word MAIN_BSS_020BAE83
_02027540: .word 0x68DB8BAD
_02027544: .word 0x10624DD3
_02027548: .word 0x66666667
_0202754C: .word 0x51EB851F

	arm_func_start sub_02027550
sub_02027550: ; 0x02027550
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	mov r1, r4
	mov r0, r0, lsl #7
	bl _s32_div_f
	mov r1, r0, asr #2
	mov r2, r0, lsr #0x1f
	add r1, r0, r1, lsr #29
	rsb r0, r2, r0, lsl #29
	cmp r4, #0
	mov r4, r1, asr #3
	add r5, r2, r0, ror #29
	beq _02027600
	cmp r4, #0
	mov r6, #0
	ble _020275CC
	mov r7, #2
	arm_func_end sub_02027550
_02027598:
	bl G2S_GetBG0ScrPtr
	add r1, r6, #2
	mov r1, r1, lsl #1
	mov sb, r0
	add r8, r1, #0x440
	bl G2S_GetBG1ScrPtr
	mov r2, r7
	add r0, r0, #0x610
	add r1, sb, r8
	bl MIi_CpuCopy16
	add r6, r6, #1
	cmp r6, r4
	blt _02027598
_020275CC:
	bl G2S_GetBG0ScrPtr
	add r1, r6, #2
	mov r1, r1, lsl #1
	mov r6, r0
	add r4, r1, #0x440
	bl G2S_GetBG1ScrPtr
	mov r1, r5, lsl #1
	add r1, r1, #0x600
	add r0, r0, r1
	add r1, r6, r4
	mov r2, #2
	bl MIi_CpuCopy16
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02027600:
	mov r7, #0
	mov r4, #2
_02027608:
	bl G2S_GetBG0ScrPtr
	add r1, r7, #2
	mov r1, r1, lsl #1
	mov r6, r0
	add r5, r1, #0x440
	bl G2S_GetBG1ScrPtr
	mov r2, r4
	add r0, r0, #0x610
	add r1, r6, r5
	bl MIi_CpuCopy16
	add r7, r7, #1
	cmp r7, #0x10
	blt _02027608
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_02027640
sub_02027640: ; 0x02027640
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201001C
	mov r1, r0
	ldr r0, [r4, #0x38]
	add r1, r1, #0x1000
	ldr r2, [r1, #0x5d0]
	ldrsh r1, [r0, #0xc]
	mov r2, r2, asr #0xc
	bl sub_0200EB28
	ldr r0, [r4, #0x34]
	bl sub_0200F64C
	ldmia sp!, {r4, pc}
	arm_func_end sub_02027640

	arm_func_start sub_02027674
sub_02027674: ; 0x02027674
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	bl sub_0200F71C
	ldr r0, [r4, #0x2c]
	bl sub_0200F71C
	ldr r0, [r4, #0x30]
	bl sub_0200F71C
	ldr r0, [r4, #0x34]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}
	arm_func_end sub_02027674

	arm_func_start sub_020276A0
sub_020276A0: ; 0x020276A0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #4]
	mov r4, #0
	cmp r0, #0
	bls _02027704
	mov r6, r4
	arm_func_end sub_020276A0
_020276C8:
	ldr r0, [r1, #8]
	add r0, r0, r4, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020276F0
	bl _ZdaPv
	ldr r0, [r5, #0x3c]
	ldr r0, [r0, #8]
	add r0, r0, r4, lsl #3
	str r6, [r0, #4]
_020276F0:
	ldr r1, [r5, #0x3c]
	add r4, r4, #1
	ldr r0, [r1, #4]
	cmp r4, r0
	blo _020276C8
_02027704:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02027720
	bl _ZdaPv
	ldr r0, [r5, #0x3c]
	mov r1, #0
	str r1, [r0, #8]
_02027720:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl _ZdlPv
	mov r0, #0
	str r0, [r5, #0x3c]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0202773C
sub_0202773C: ; 0x0202773C
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x14]
	bl sub_0202798C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202773C

	arm_func_start sub_02027754
sub_02027754: ; 0x02027754
	stmdb sp!, {r4, lr}
	ldr r0, _02027798 ; =MAIN_BSS_0210C1BC
	ldr r0, [r0]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #0x18
	bl _Znwm
	movs r4, r0
	beq _0202778C
	bl sub_0201001C
	mov r1, r0
	mov r0, r4
	bl sub_0202773C
	mov r4, r0
	arm_func_end sub_02027754
_0202778C:
	ldr r0, _02027798 ; =MAIN_BSS_0210C1BC
	str r4, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02027798: .word MAIN_BSS_0210C1BC

	arm_func_start sub_0202779C
sub_0202779C: ; 0x0202779C
	ldr r0, _020277A8 ; =MAIN_BSS_0210C1BC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_020277A8: .word MAIN_BSS_0210C1BC
	arm_func_end sub_0202779C

	arm_func_start sub_020277AC
sub_020277AC: ; 0x020277AC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AA14Ev
	ldr r0, [r5, #0x14]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl _ZN17UnkClass_020091E812sub_02009FB0Emm
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _02027804
	beq _020277FC
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020277AC
_020277FC:
	mov r0, #0
	str r0, [r5, #8]
_02027804:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202780C
sub_0202780C: ; 0x0202780C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrh r1, [r4]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _02027978
_02027824: ; jump table
	b _02027978 ; case 0
	b _02027968 ; case 1
	b _02027844 ; case 2
	b _020278C0 ; case 3
	b _020278E0 ; case 4
	b _02027978 ; case 5
	b _02027978 ; case 6
	b _02027970 ; case 7
	arm_func_end sub_0202780C
_02027844:
	ldr r0, [r4, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_02009ECCEv
	cmp r0, #0
	bne _02027978
	ldr r0, [r4, #0x14]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B6A4
	cmp r0, #0
	bne _02027978
	ldr r0, [r4, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl sub_0200B6D4
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r4]
	beq _02027978
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r0, _02027984 ; =0xFFCFFFEF
	mov r1, #5
	and r0, r2, r0
	orr r0, r0, #0x10
	orr r0, r0, #0x100000
	str r0, [r3]
	strh r1, [r4]
	b _02027978
_020278C0:
	ldr r0, [r4, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_02009ECCEv
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r4]
	b _02027978
_020278E0:
	ldr r0, [r4, #8]
	bl sub_0202841C
	cmp r0, #0
	beq _02027978
	tst r0, #0x80
	moveq r0, #1
	streqh r0, [r4]
	beq _0202793C
	ldr r1, _02027988 ; =DAT_0208c0ec
	mov r0, r4
	mov r2, #1
	mov r3, #0
	bl sub_02027A94
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B58
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034E38
_0202793C:
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _02027978
	beq _0202795C
	mov r0, r5
	bl sub_02028054
	mov r0, r5
	bl _ZdlPv
_0202795C:
	mov r0, #0
	str r0, [r4, #8]
	b _02027978
_02027968:
	bl sub_02027B34
	b _02027978
_02027970:
	mov r0, #1
	strh r0, [r4]
_02027978:
	mov r0, r4
	bl sub_02027CB4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02027984: .word 0xFFCFFFEF
_02027988: .word DAT_0208c0ec

	arm_func_start sub_0202798C
sub_0202798C: ; 0x0202798C
	mov r2, #0
	strh r2, [r0]
	sub r1, r2, #1
	stmib r0, {r1, r2}
	str r2, [r0, #0xc]
	bx lr
	arm_func_end sub_0202798C

	arm_func_start sub_020279A4
sub_020279A4: ; 0x020279A4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034DC8
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034DD8
	mov r0, #7
	strh r0, [r4]
	mov r1, #0
	ldr r0, _02027A24 ; =DAT_0208c12c
	str r1, [r4, #4]
	str r0, [r4, #0xc]
	mov r0, #1
	strh r0, [r4, #0x10]
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r0, _02027A28 ; =0xFFCFFFEF
	mov r1, #0x45
	and r0, r2, r0
	orr r0, r0, #0x10
	str r0, [r3]
	ldr r0, [r4, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020349E8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02027A24: .word DAT_0208c12c
_02027A28: .word 0xFFCFFFEF
	arm_func_end sub_020279A4

	arm_func_start sub_02027A2C
sub_02027A2C: ; 0x02027A2C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034DC8
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034DD8
	mov r0, #7
	strh r0, [r4]
	mov r1, #0
	ldr r0, _02027A90 ; =DAT_0208c0fc
	str r1, [r4, #4]
	str r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	mov r1, #0x45
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_020349E8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02027A90: .word DAT_0208c0fc
	arm_func_end sub_02027A2C

	arm_func_start sub_02027A94
sub_02027A94: ; 0x02027A94
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldrh r1, [r6, #4]
	mov r7, r0
	mov r5, r2
	strh r1, [r7]
	ldr r0, [r6]
	mov r4, r3
	cmp r0, #0
	ldr r0, [r7, #0x14]
	bge _02027AE8
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AA14Ev
	ldr r0, [r7, #0x14]
	mov r1, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl _ZN17UnkClass_020091E812sub_02009FB0Emm
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02027A94
_02027AE8:
	add r0, r0, #0x1000
	mov r1, #1
	ldr r0, [r0, #0x490]
	mov r2, r1
	bl _ZN17UnkClass_020091E812sub_02009FB0Emm
	ldr r0, [r7, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	bl _ZN17UnkClass_020091E812sub_0200AA04El
	str r4, [sp]
	ldr r0, [r7, #0x14]
	ldr r1, [r6]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x490]
	ldr r3, [r6, #8]
	mov r2, r5
	bl _ZN17UnkClass_020091E812sub_0200AD34Emmmm
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02027B34
sub_02027B34: ; 0x02027B34
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r3, [r4, #4]
	cmp r3, #0
	addlt sp, sp, #0x1c
	ldmltia sp!, {r4, r5, pc}
	ldr r1, [r4, #0xc]
	mov r2, #1
	add r1, r1, r3, lsl #4
	mov r3, #0
	bl sub_02027A94
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	add r0, r1, r0, lsl #4
	ldrh r0, [r0, #4]
	cmp r0, #4
	bne _02027C04
	add r0, sp, #0x10
	bl RTC_GetTime
	add r0, sp, #0
	bl RTC_GetDate
	ldr r0, _02027CA8 ; =MAIN_BSS_020B26A0
	add r1, sp, #0x10
	add r2, sp, #0
	bl _ZN17UnkClass_020B26A012sub_0201630CEP7RTCTimeP7RTCDate
	ldr r0, [r4, #0x14]
	bl sub_02010324
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _02027BCC
	beq _02027BC4
	mov r0, r5
	bl sub_02028054
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02027B34
_02027BC4:
	mov r0, #0
	str r0, [r4, #8]
_02027BCC:
	mov r0, #0x74
	bl _Znwm
	cmp r0, #0
	beq _02027BE4
	mov r1, #1
	bl sub_02027FE8
_02027BE4:
	str r0, [r4, #8]
	ldr r0, _02027CAC ; =MAIN_BSS_0210C1C0
	bl sub_0202A4A0
	ldr r0, _02027CB0 ; =MAIN_BSS_0210C228
	bl sub_0202A4D8
	ldrh r1, [r4, #0x10]
	ldr r0, [r4, #8]
	bl sub_02028220
_02027C04:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	add r0, r1, r0, lsl #4
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _02027C94
	cmp r1, #0
	ldr r0, [r4, #0x14]
	bge _02027C6C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0
	bl sub_02034E38
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #4]
	mvn r0, #1
	add r1, r2, r1, lsl #4
	ldr r1, [r1, #0xc]
	cmp r1, r0
	beq _02027C94
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B68
	b _02027C94
_02027C6C:
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	mov r2, #0
	mov r3, #0x100
	bl sub_02034DE8
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034B58
_02027C94:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02027CA8: .word MAIN_BSS_020B26A0
_02027CAC: .word MAIN_BSS_0210C1C0
_02027CB0: .word MAIN_BSS_0210C228

	arm_func_start sub_02027CB4
sub_02027CB4: ; 0x02027CB4
	ldrh r0, [r0]
	cmp r0, #5
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02027CB4

	arm_func_start sub_02027CC8
sub_02027CC8: ; 0x02027CC8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202B5D0
	ldr r0, _02027CEC ; =ptr_FUN_02027cf0_0208c1a4
	mov r1, #0
	str r0, [r4]
	mov r0, r4
	str r1, [r4, #0x10]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02027CEC: .word ptr_FUN_02027cf0_0208c1a4
	arm_func_end sub_02027CC8

	arm_func_start sub_02027CF0
sub_02027CF0: ; 0x02027CF0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202B64C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02027CF0

	arm_func_start sub_02027D04
sub_02027D04: ; 0x02027D04
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202B64C
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02027D04

	arm_func_start sub_02027D20
sub_02027D20: ; 0x02027D20
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r4, #0
	str r4, [r7, #0x10]
	ldr ip, [r7, #4]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #0
	bne _02027D68
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	arm_func_end sub_02027D20
_02027D68:
	bl CARD_GetBackupPageSize
	bl CARD_GetBackupTotalSize
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_LockBackup
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02027DD8
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov ip, #0xa
	ldr r3, _02027E50 ; =sub_02027FB4
	mov r0, r5
	mov r1, r6
	mov r2, r4
	str ip, [sp, #0xc]
	mov r4, #2
	str r4, [sp, #0x10]
	bl CARDi_RequestStreamCommand
	b _02027E2C
_02027DD8:
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02027E2C
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov ip, #0xa
	ldr r3, _02027E50 ; =sub_02027FB4
	mov r0, r5
	mov r1, r6
	mov r2, r4
	str ip, [sp, #0xc]
	mov r4, #2
	str r4, [sp, #0x10]
	bl CARDi_RequestStreamCommand
_02027E2C:
	bl CARD_GetResultCode
	cmp r0, #0
	str r0, [r7, #0xc]
	ldreq r1, [sp, #0x28]
	movne r0, #0
	moveq r0, #1
	streq r1, [r7, #0x10]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02027E50: .word sub_02027FB4

	arm_func_start sub_02027E54
sub_02027E54: ; 0x02027E54
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	ldr ip, [r7, #4]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #0
	bne _02027E94
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	arm_func_end sub_02027E54
_02027E94:
	bl CARD_GetBackupPageSize
	bl CARD_GetBackupTotalSize
	ldr r0, [r7, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_LockBackup
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02027F00
	str r7, [sp]
	mov ip, #1
	str ip, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	ldr r3, _02027F6C ; =sub_02027FB4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str ip, [sp, #0xc]
	mov r4, #0
	str r4, [sp, #0x10]
	bl CARDi_RequestStreamCommand
	b _02027F50
_02027F00:
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02027F50
	str r7, [sp]
	mov ip, #1
	str ip, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	ldr r3, _02027F6C ; =sub_02027FB4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str ip, [sp, #0xc]
	mov r4, #0
	str r4, [sp, #0x10]
	bl CARDi_RequestStreamCommand
_02027F50:
	bl CARD_GetResultCode
	str r0, [r7, #0xc]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02027F6C: .word sub_02027FB4

	arm_func_start sub_02027F70
sub_02027F70: ; 0x02027F70
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _02027F94
	bl CARD_WaitBackupAsync
	bl CARD_GetResultCode
	str r0, [r4, #0xc]
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02027F70
_02027F94:
	bl CARD_TryWaitBackupAsync
	cmp r0, #1
	movne r0, #0
	ldmneia sp!, {r4, pc}
	bl CARD_GetResultCode
	str r0, [r4, #0xc]
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start sub_02027FB4
sub_02027FB4: ; 0x02027FB4
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_UnlockBackup
	ldr r1, [r4, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0
	blx r1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02027FB4

	arm_func_start sub_02027FE8
sub_02027FE8: ; 0x02027FE8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #4
	mov r5, r1
	bl sub_02027CC8
	add r0, r4, #0x18
	bl sub_0202B8A4
	mov r0, #0
	str r0, [r4, #0x54]
	strb r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	mov r0, #8
	strh r0, [r4, #0x66]
	bl sub_0201001C
	add r0, r0, #0x1000
	mov r1, #0
	str r1, [r0, #0x5d4]
	cmp r5, #0
	addne r0, r4, #4
	addeq r0, r4, #0x18
	str r0, [r4]
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02027FE8

	arm_func_start sub_02028054
sub_02028054: ; 0x02028054
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _02028074
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x58]
	arm_func_end sub_02028054
_02028074:
	bl sub_0201001C
	add r1, r0, #0x1000
	mov r2, #1
	add r0, r4, #0x18
	str r2, [r1, #0x5d4]
	bl sub_0202B8D8
	add r0, r4, #4
	bl sub_02027CF0
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202809C
sub_0202809C: ; 0x0202809C
	cmp r1, #0
	beq _020280B4
	cmp r1, #1
	add r1, r0, #4
	str r1, [r0]
	bx lr
	arm_func_end sub_0202809C
_020280B4:
	add r1, r0, #0x18
	str r1, [r0]
	bx lr

	arm_func_start sub_020280C0
sub_020280C0: ; 0x020280C0
	ldr r0, _020280E8 ; =PTR_PTR_LAB_0208c1e4
	ldr r1, [r0, r1, lsl #2]
	ldr r0, [r1]
	cmp r0, #0
	beq _020280E0
	arm_func_end sub_020280C0
_020280D4:
	ldr r0, [r1, #8]!
	cmp r0, #0
	bne _020280D4
_020280E0:
	ldr r0, [r1, #4]
	bx lr
	.align 2, 0
_020280E8: .word PTR_PTR_LAB_0208c1e4

	arm_func_start sub_020280EC
sub_020280EC: ; 0x020280EC
	ldr r2, _0202811C ; =PTR_PTR_LAB_0208c1e4
	mov r0, #0
	ldr r3, [r2, r1, lsl #2]
	ldr r1, [r3]
	cmp r1, #0
	bxeq lr
	arm_func_end sub_020280EC
_02028104:
	ldr r2, [r3, #4]
	ldr r1, [r3, #8]!
	add r0, r0, r2
	cmp r1, #0
	bne _02028104
	bx lr
	.align 2, 0
_0202811C: .word PTR_PTR_LAB_0208c1e4

	arm_func_start sub_02028120
sub_02028120: ; 0x02028120
	ldr ip, _02028128 ; =sub_0202812C
	bx ip
	.align 2, 0
_02028128: .word sub_0202812C
	arm_func_end sub_02028120

	arm_func_start sub_0202812C
sub_0202812C: ; 0x0202812C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	movs r6, r1
	mov r7, r0
	mov r5, r4
	beq _02028168
	arm_func_end sub_0202812C
_02028144:
	mov r0, r7
	mov r1, r5
	bl sub_02028184
	add r1, r5, #1
	mov r1, r1, lsl #0x10
	cmp r6, r1, lsr #16
	add r4, r4, r0
	mov r5, r1, lsr #0x10
	bhi _02028144
_02028168:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02028170
sub_02028170: ; 0x02028170
	ldr r2, [r0, #0x60]
	ldr r0, [r0, #0x5c]
	add r2, r2, #0x1c
	mla r0, r1, r0, r2
	bx lr
	arm_func_end sub_02028170

	arm_func_start sub_02028184
sub_02028184: ; 0x02028184
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl sub_020280EC
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl sub_020280C0
	mul r0, r4, r0
	add r0, r0, #0x1c
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02028184

	arm_func_start sub_020281B0
sub_020281B0: ; 0x020281B0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrh r2, [r6, #0x66]
	mov r5, r1
	cmp r2, r5
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, _0202821C ; =PTR_PTR_LAB_0208c1e4
	ldr r2, [r2, r5, lsl #2]
	str r2, [r6, #0x68]
	bl sub_020280EC
	mov r4, r0
	ldr r0, [r6, #0x58]
	cmp r0, #0
	beq _020281F4
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r6, #0x58]
	arm_func_end sub_020281B0
_020281F4:
	mov r0, r4
	bl _Z10Heap_Allocm
	str r0, [r6, #0x58]
	mov r0, r6
	mov r1, r5
	str r4, [r6, #0x5c]
	bl sub_02028120
	str r0, [r6, #0x60]
	strh r5, [r6, #0x66]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0202821C: .word PTR_PTR_LAB_0208c1e4

	arm_func_start sub_02028220
sub_02028220: ; 0x02028220
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020281B0
	ldr r0, [r5, #0x54]
	cmp r0, #0xd
	bgt _0202825C
	cmp r0, #0xb
	blt _02028250
	cmpne r0, #0xd
	beq _02028288
	b _020282C0
	arm_func_end sub_02028220
_02028250:
	cmp r0, #0
	beq _02028288
	b _020282C0
_0202825C:
	cmp r0, #0x14
	bgt _0202826C
	beq _02028288
	b _020282C0
_0202826C:
	cmp r0, #0x19
	bgt _020282C0
	cmp r0, #0x15
	blt _020282C0
	cmpne r0, #0x18
	cmpne r0, #0x19
	bne _020282C0
_02028288:
	mov r1, #1
	strb r1, [r5, #0x65]
	mov r0, #0
	strb r0, [r5, #0x64]
	str r1, [r5, #0x54]
	strb r0, [r5, #0x64]
	bl sub_0200FA2C
	cmp r4, #0
	bne _020282B8
	ldr r0, _020282C8 ; =MAIN_BSS_020B26A0
	mov r1, #1
	bl sub_02016E7C
_020282B8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020282C0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020282C8: .word MAIN_BSS_020B26A0

	arm_func_start sub_020282CC
sub_020282CC: ; 0x020282CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020281B0
	ldr r0, [r4, #0x54]
	cmp r0, #0xd
	bgt _02028304
	cmp r0, #0xb
	blt _020282F8
	cmpne r0, #0xd
	beq _02028330
	b _02028358
	arm_func_end sub_020282CC
_020282F8:
	cmp r0, #0
	beq _02028330
	b _02028358
_02028304:
	cmp r0, #0x14
	bgt _02028314
	beq _02028330
	b _02028358
_02028314:
	cmp r0, #0x19
	bgt _02028358
	cmp r0, #0x15
	blt _02028358
	cmpne r0, #0x18
	cmpne r0, #0x19
	bne _02028358
_02028330:
	mov r0, #2
	strb r0, [r4, #0x65]
	mov r0, #0
	strb r0, [r4, #0x64]
	mov r1, #0xe
	str r1, [r4, #0x54]
	strb r0, [r4, #0x64]
	bl sub_0200FA2C
	mov r0, #1
	ldmia sp!, {r4, pc}
_02028358:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02028360
sub_02028360: ; 0x02028360
	ldr ip, _02028370 ; =sub_020282CC
	mov r2, #1
	str r2, [r0, #0x70]
	bx ip
	.align 2, 0
_02028370: .word sub_020282CC
	arm_func_end sub_02028360

	arm_func_start sub_02028374
sub_02028374: ; 0x02028374
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020281B0
	ldr r0, [r4, #0x54]
	cmp r0, #0xd
	bgt _020283AC
	cmp r0, #0xb
	blt _020283A0
	cmpne r0, #0xd
	beq _020283D8
	b _02028400
	arm_func_end sub_02028374
_020283A0:
	cmp r0, #0
	beq _020283D8
	b _02028400
_020283AC:
	cmp r0, #0x14
	bgt _020283BC
	beq _020283D8
	b _02028400
_020283BC:
	cmp r0, #0x19
	bgt _02028400
	cmp r0, #0x15
	blt _02028400
	cmpne r0, #0x18
	cmpne r0, #0x19
	bne _02028400
_020283D8:
	mov r0, #3
	strb r0, [r4, #0x65]
	mov r0, #0
	strb r0, [r4, #0x64]
	mov r1, #1
	str r1, [r4, #0x54]
	strb r0, [r4, #0x64]
	bl sub_0200FA2C
	mov r0, #1
	ldmia sp!, {r4, pc}
_02028400:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02028408
sub_02028408: ; 0x02028408
	ldr ip, _02028418 ; =sub_020282CC
	mov r2, #1
	str r2, [r0, #0x6c]
	bx ip
	.align 2, 0
_02028418: .word sub_020282CC
	arm_func_end sub_02028408

	arm_func_start sub_0202841C
sub_0202841C: ; 0x0202841C
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0x65]
	cmp r1, #1
	beq _02028440
	cmp r1, #2
	beq _0202844C
	cmp r1, #3
	beq _02028454
	b _0202845C
	arm_func_end sub_0202841C
_02028440:
	mov r1, #0
	bl sub_02028464
	ldmia sp!, {r3, pc}
_0202844C:
	bl sub_0202899C
	ldmia sp!, {r3, pc}
_02028454:
	bl sub_02028CEC
	ldmia sp!, {r3, pc}
_0202845C:
	mov r0, #0x80
	ldmia sp!, {r3, pc}

	arm_func_start sub_02028464
sub_02028464: ; 0x02028464
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r2, [r6, #0x54]
	mov r5, r1
	cmp r2, #0xd
	mov r4, #0
	addls pc, pc, r2, lsl #2
	b _02028980
_02028484: ; jump table
	b _02028980 ; case 0
	b _020284BC ; case 1
	b _02028564 ; case 2
	b _020286F4 ; case 3
	b _02028754 ; case 4
	b _02028980 ; case 5
	b _02028980 ; case 6
	b _020287A8 ; case 7
	b _02028980 ; case 8
	b _020288E4 ; case 9
	b _02028980 ; case 10
	b _02028938 ; case 11
	b _02028980 ; case 12
	b _02028958 ; case 13
	arm_func_end sub_02028464
_020284BC:
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	bne _020284E8
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #1
	strb r0, [r6, #0x64]
	b _0202898C
_020284E8:
	ldr r0, _02028994 ; =MAIN_BSS_0210CA38
	ldr r1, [r6, #0x5c]
	ldr r0, [r0]
	add r1, r1, #0x1c
	cmp r1, r0
	bls _02028514
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, r4
	strb r0, [r6, #0x64]
	b _0202898C
_02028514:
	mov r0, r4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r6, #0x60]
	ldr ip, [r0]
	add r2, r6, #0x38
	ldr ip, [ip, #0x14]
	mov r3, #0x1c
	blx ip
	cmp r0, #0
	bne _02028554
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #2
	strb r0, [r6, #0x64]
	b _0202898C
_02028554:
	mov r0, #2
	str r0, [r6, #0x54]
	mov r0, r4
	strb r0, [r6, #0x64]
_02028564:
	ldr r0, [r6]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _0202898C
	ldr r0, [r6]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _020286E0
	mov r0, r6
	bl sub_02028D94
	cmp r0, #0
	beq _02028608
	ldrh r3, [r6, #0x50]
	mov r0, r6
	add r1, r6, #0x38
	mov r2, #0x18
	bl sub_02028E04
	cmp r0, #0
	beq _020285CC
	ldr r0, [r6, #0x60]
	add r0, r0, #0x1c
	str r0, [r6, #0x40]
	b _020285DC
_020285CC:
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #3
	strb r0, [r6, #0x64]
_020285DC:
	cmp r5, #0
	bne _02028678
	ldrh r1, [r6, #0x66]
	mov r0, r6
	bl sub_020280C0
	ldrh r2, [r6, #0x4c]
	mov r1, r0
	add r0, r2, #1
	bl _u32_div_f
	strh r1, [r6, #0x4c]
	b _02028678
_02028608:
	ldr r0, _02028998 ; =PTR_LAB_0208c1c0
	mov r3, #0
_02028610:
	ldr r2, [r0]
	add r1, r6, r3
	ldrsb r2, [r2, r3]
	add r3, r3, #1
	cmp r3, #8
	strb r2, [r1, #0x38]
	blt _02028610
	ldrh r1, [r6, #0x66]
	mov r0, r6
	bl sub_020280C0
	cmp r0, #0
	mov r7, #0
	bls _02028668
	mvn ip, #1
	mov r2, r7
_0202864C:
	add r3, r6, r7, lsl #2
	add r1, r6, r7, lsl #1
	str ip, [r3, #0x40]
	add r7, r7, #1
	strh r2, [r1, #0x48]
	cmp r7, r0
	blo _0202864C
_02028668:
	mov r0, #0
	strh r0, [r6, #0x4c]
	strh r0, [r6, #0x4e]
	strh r0, [r6, #0x52]
_02028678:
	ldrh r1, [r6, #0x4c]
	ldr r2, _02028994 ; =MAIN_BSS_0210CA38
	mov r0, r6
	ldr r7, [r2]
	bl sub_02028170
	ldr r1, [r6, #0x5c]
	add r0, r1, r0
	cmp r0, r7
	bls _020286B0
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #0
	strb r0, [r6, #0x64]
	b _0202898C
_020286B0:
	cmp r5, #0
	beq _020286CC
	mov r0, #7
	str r0, [r6, #0x54]
	mov r0, #0
	strb r0, [r6, #0x64]
	b _0202898C
_020286CC:
	mov r0, #3
	str r0, [r6, #0x54]
	mov r0, #0
	strb r0, [r6, #0x64]
	b _0202898C
_020286E0:
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #3
	strb r0, [r6, #0x64]
	b _0202898C
_020286F4:
	bl sub_02028CFC
	ldrh r1, [r6, #0x4c]
	mov r0, r6
	bl sub_02028170
	mov r1, r4
	str r1, [sp]
	mov r1, r0
	ldr r0, [r6]
	ldr r2, [r6, #0x58]
	ldr r5, [r0]
	ldr r3, [r6, #0x5c]
	ldr r5, [r5, #0x10]
	blx r5
	cmp r0, #0
	bne _02028744
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #4
	strb r0, [r6, #0x64]
	b _0202898C
_02028744:
	mov r0, #4
	str r0, [r6, #0x54]
	mov r0, r4
	strb r0, [r6, #0x64]
_02028754:
	ldr r0, [r6]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _0202898C
	ldr r0, [r6]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02028794
	mov r0, #7
	str r0, [r6, #0x54]
	mov r0, #0
	strb r0, [r6, #0x64]
	b _0202898C
_02028794:
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #5
	strb r0, [r6, #0x64]
	b _0202898C
_020287A8:
	cmp r5, #0
	ldrh r1, [r6, #0x4c]
	beq _02028854
	add r1, r6, r1, lsl #1
	strh r4, [r1, #0x48]
	ldrh r1, [r6, #0x4c]
	sub r2, r4, #2
	add r1, r6, r1, lsl #2
	str r2, [r1, #0x40]
	ldrh r1, [r6, #0x66]
	bl sub_020280C0
	mov r1, r0
	cmp r1, #1
	movlt r1, #1
	cmp r1, #0
	mov r3, #0
	ble _0202880C
	mvn r0, #1
_020287F0:
	add r2, r6, r3, lsl #2
	ldr r2, [r2, #0x40]
	cmp r2, r0
	bne _0202880C
	add r3, r3, #1
	cmp r3, r1
	blt _020287F0
_0202880C:
	cmp r3, r1
	blt _02028828
	add r0, r6, #0x38
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	b _02028894
_02028828:
	ldrh r2, [r6, #0x4c]
	sub r0, r1, #1
	add r0, r2, r0
	bl _s32_div_f
	strh r1, [r6, #0x4c]
	mov r0, r6
	add r1, r6, #0x38
	mov r2, #0x18
	bl sub_02028DD4
	strh r0, [r6, #0x50]
	b _02028894
_02028854:
	bl sub_02028170
	ldrh r1, [r6, #0x4c]
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x40]
	ldr r1, [r6, #0x58]
	ldr r2, [r6, #0x5c]
	mov r0, r6
	bl sub_02028DD4
	ldrh r3, [r6, #0x4c]
	add r1, r6, #0x38
	mov r2, #0x18
	add r3, r6, r3, lsl #1
	strh r0, [r3, #0x48]
	mov r0, r6
	bl sub_02028DD4
	strh r0, [r6, #0x50]
_02028894:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r6, #0x60]
	ldr r5, [r0]
	add r2, r6, #0x38
	ldr r5, [r5, #0x10]
	mov r3, #0x1c
	blx r5
	cmp r0, #0
	bne _020288D4
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #6
	strb r0, [r6, #0x64]
	b _0202898C
_020288D4:
	mov r0, #9
	str r0, [r6, #0x54]
	mov r0, #0
	strb r0, [r6, #0x64]
_020288E4:
	ldr r0, [r6]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _0202898C
	ldr r0, [r6]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02028924
	mov r0, #0xb
	str r0, [r6, #0x54]
	mov r0, #0
	strb r0, [r6, #0x64]
	b _0202898C
_02028924:
	mov r0, #0xd
	str r0, [r6, #0x54]
	mov r0, #7
	strb r0, [r6, #0x64]
	b _0202898C
_02028938:
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_0200FA0C
	mov r4, #1
	b _0202898C
_02028958:
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_0200FA0C
	ldrb r0, [r6, #0x64]
	orr r0, r0, #0x80
	and r4, r0, #0xff
	b _0202898C
_02028980:
	mov r0, #0
	mov r4, #0x80
	bl sub_0200FA0C
_0202898C:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02028994: .word MAIN_BSS_0210CA38
_02028998: .word PTR_LAB_0208c1c0

	arm_func_start sub_0202899C
sub_0202899C: ; 0x0202899C
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r1, [r5, #0x54]
	mov r4, #0
	sub r1, r1, #0xe
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _02028CD0
_020289C0: ; jump table
	b _020289E0 ; case 0
	b _02028A8C ; case 1
	b _02028B58 ; case 2
	b _02028BF4 ; case 3
	b _02028CD0 ; case 4
	b _02028CD0 ; case 5
	b _02028C88 ; case 6
	b _02028CA8 ; case 7
	arm_func_end sub_0202899C
_020289E0:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	bne _02028A0C
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #1
	strb r0, [r5, #0x64]
	b _02028CDC
_02028A0C:
	ldr r1, [r5, #0x60]
	ldr r0, _02028CE8 ; =MAIN_BSS_0210CA38
	ldr r2, [r5, #0x5c]
	add r3, r1, #0x1c
	ldr r0, [r0]
	add r2, r3, r2, lsl #1
	cmp r2, r0
	bls _02028A40
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
	b _02028CDC
_02028A40:
	mov r0, r4
	str r0, [sp]
	ldr r0, [r5]
	add r2, r5, #0x38
	ldr r6, [r0]
	mov r3, #0x1c
	ldr r6, [r6, #0x14]
	blx r6
	cmp r0, #0
	bne _02028A7C
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #2
	strb r0, [r5, #0x64]
	b _02028CDC
_02028A7C:
	mov r0, #0xf
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
_02028A8C:
	ldr r0, [r5]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _02028CDC
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02028B44
	mov r0, r5
	bl sub_02028D94
	cmp r0, #0
	beq _02028B30
	ldrh r3, [r5, #0x50]
	mov r0, r5
	add r1, r5, #0x38
	mov r2, #0x18
	bl sub_02028E04
	cmp r0, #0
	beq _02028B1C
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _02028B08
	mov r1, #0
	str r1, [r5, #0x6c]
	mov r0, #0x14
	str r0, [r5, #0x54]
	strb r1, [r5, #0x64]
	b _02028CDC
_02028B08:
	mov r0, #0x10
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
	b _02028CDC
_02028B1C:
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #3
	strb r0, [r5, #0x64]
	b _02028CDC
_02028B30:
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #0xa
	strb r0, [r5, #0x64]
	b _02028CDC
_02028B44:
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #3
	strb r0, [r5, #0x64]
	b _02028CDC
_02028B58:
	ldr r1, [r5, #0x70]
	cmp r1, #0
	beq _02028B9C
	ldrh r1, [r5, #0x66]
	bl sub_020280C0
	mov r6, r0
	ldrh r1, [r5, #0x66]
	mov r0, r5
	bl sub_020280C0
	ldrh r3, [r5, #0x4c]
	sub r2, r6, #1
	mov r1, r0
	add r0, r3, r2
	bl _u32_div_f
	strh r1, [r5, #0x4c]
	mov r0, r4
	str r0, [r5, #0x70]
_02028B9C:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldrh r1, [r5, #0x4c]
	ldr ip, [r0]
	ldr r2, [r5, #0x58]
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x40]
	ldr r3, [r5, #0x5c]
	ldr ip, [ip, #0x14]
	blx ip
	cmp r0, #0
	bne _02028BE4
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #8
	strb r0, [r5, #0x64]
	b _02028CDC
_02028BE4:
	mov r0, #0x11
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
_02028BF4:
	ldr r0, [r5]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _02028CDC
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02028C74
	ldrh r0, [r5, #0x4c]
	ldr r1, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	add r0, r5, r0, lsl #1
	ldrh r3, [r0, #0x48]
	mov r0, r5
	bl sub_02028E04
	cmp r0, #0
	beq _02028C60
	mov r0, r5
	bl sub_02028D58
	mov r0, #0x14
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
	b _02028CDC
_02028C60:
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #0xb
	strb r0, [r5, #0x64]
	b _02028CDC
_02028C74:
	mov r0, #0x15
	str r0, [r5, #0x54]
	mov r0, #9
	strb r0, [r5, #0x64]
	b _02028CDC
_02028C88:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	mov r4, #1
	bl sub_0200FA0C
	b _02028CDC
_02028CA8:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldrb r1, [r5, #0x64]
	mov r0, r4
	orr r1, r1, #0x80
	and r4, r1, #0xff
	bl sub_0200FA0C
	b _02028CDC
_02028CD0:
	mov r0, #0
	mov r4, #0x80
	bl sub_0200FA0C
_02028CDC:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02028CE8: .word MAIN_BSS_0210CA38

	arm_func_start sub_02028CEC
sub_02028CEC: ; 0x02028CEC
	ldr ip, _02028CF8 ; =sub_02028464
	mov r1, #1
	bx ip
	.align 2, 0
_02028CF8: .word sub_02028464
	arm_func_end sub_02028CEC

	arm_func_start sub_02028CFC
sub_02028CFC: ; 0x02028CFC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, [r0, #0x68]
	ldr r6, [r0, #0x58]
	ldr r0, [r5]
	mov r7, r1
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	arm_func_end sub_02028CFC
_02028D1C:
	cmp r7, #0
	ldr r2, [r5, #4]
	beq _02028D38
	mov r0, r6
	mov r1, r4
	bl MI_CpuFill8
	b _02028D40
_02028D38:
	mov r1, r6
	bl MI_CpuCopy8
_02028D40:
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]!
	add r6, r6, r1
	cmp r0, #0
	bne _02028D1C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02028D58
sub_02028D58: ; 0x02028D58
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, [r0, #0x68]
	ldr r5, [r0, #0x58]
	ldr r1, [r4]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02028D58
_02028D70:
	ldr r2, [r4, #4]
	mov r0, r5
	bl MI_CpuCopy8
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]!
	add r5, r5, r0
	cmp r1, #0
	bne _02028D70
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02028D94
sub_02028D94: ; 0x02028D94
	ldr r1, _02028DD0 ; =PTR_LAB_0208c1c0
	mov r3, #0
	ldr ip, [r1]
	arm_func_end sub_02028D94
_02028DA0:
	add r1, r0, r3
	ldrsb r2, [r1, #0x38]
	ldrsb r1, [ip]
	cmp r2, r1
	movne r0, #0
	bxne lr
	add r3, r3, #1
	cmp r3, #8
	add ip, ip, #1
	blt _02028DA0
	mov r0, #1
	bx lr
	.align 2, 0
_02028DD0: .word PTR_LAB_0208c1c0

	arm_func_start sub_02028DD4
sub_02028DD4: ; 0x02028DD4
	mov r0, #0
	mov ip, r0
	cmp r2, #0
	bxle lr
	arm_func_end sub_02028DD4
_02028DE4:
	ldrb r3, [r1], #1
	add ip, ip, #1
	cmp ip, r2
	add r0, r0, r3
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	blt _02028DE4
	bx lr

	arm_func_start sub_02028E04
sub_02028E04: ; 0x02028E04
	stmdb sp!, {r4, lr}
	mov r4, r3
	bl sub_02028DD4
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02028E04

	arm_func_start sub_02028E20
sub_02028E20: ; 0x02028E20
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r1, [r5, #0x54]
	mov r4, #0
	cmp r1, #0xd
	addls pc, pc, r1, lsl #2
	b _020292AC
_02028E40: ; jump table
	b _020292AC ; case 0
	b _02028E78 ; case 1
	b _02028F24 ; case 2
	b _02029090 ; case 3
	b _020290F4 ; case 4
	b _020292AC ; case 5
	b _020292AC ; case 6
	b _02029148 ; case 7
	b _020291A4 ; case 8
	b _020291F0 ; case 9
	b _02029244 ; case 10
	b _0202924C ; case 11
	b _0202927C ; case 12
	b _02029284 ; case 13
	arm_func_end sub_02028E20
_02028E78:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	cmp r0, #0
	bne _02028EA4
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #1
	strb r0, [r5, #0x64]
	b _020292B8
_02028EA4:
	ldr r0, _020292C4 ; =MAIN_BSS_0210CA38
	ldr r1, [r5, #0x5c]
	ldr r0, [r0]
	add r1, r1, #0x1c
	cmp r1, r0
	bls _02028ED0
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
	b _020292B8
_02028ED0:
	mov r0, r4
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r5, #0x60]
	ldr ip, [r0]
	add r2, r5, #0x38
	ldr ip, [ip, #0x14]
	mov r3, #0x1c
	blx ip
	cmp r0, #0
	bne _02028F10
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #2
	strb r0, [r5, #0x64]
	b _020292B8
_02028F10:
	mov r0, #2
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
	b _020292B8
_02028F24:
	ldr r0, [r5]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _020292B8
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0202907C
	mov r0, r5
	bl sub_02028D94
	cmp r0, #0
	beq _02028FC0
	ldrh r3, [r5, #0x50]
	mov r0, r5
	add r1, r5, #0x38
	mov r2, #0x18
	bl sub_02028E04
	cmp r0, #0
	beq _02028F8C
	ldr r0, [r5, #0x60]
	add r0, r0, #0x1c
	str r0, [r5, #0x40]
	b _02028F9C
_02028F8C:
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #3
	strb r0, [r5, #0x64]
_02028F9C:
	ldrh r1, [r5, #0x66]
	mov r0, r5
	bl sub_020280C0
	ldrh r2, [r5, #0x4c]
	mov r1, r0
	add r0, r2, #1
	bl _u32_div_f
	strh r1, [r5, #0x4c]
	b _02029030
_02028FC0:
	ldr r0, _020292C8 ; =PTR_LAB_0208c1c0
	mov r3, r4
_02028FC8:
	ldr r2, [r0]
	add r1, r5, r3
	ldrsb r2, [r2, r3]
	add r3, r3, #1
	cmp r3, #8
	strb r2, [r1, #0x38]
	blt _02028FC8
	ldrh r1, [r5, #0x66]
	mov r0, r5
	bl sub_020280C0
	cmp r0, #0
	mov r6, #0
	bls _02029020
	mvn ip, #1
	mov r2, r6
_02029004:
	add r3, r5, r6, lsl #2
	add r1, r5, r6, lsl #1
	str ip, [r3, #0x40]
	add r6, r6, #1
	strh r2, [r1, #0x48]
	cmp r6, r0
	blo _02029004
_02029020:
	mov r0, #0
	strh r0, [r5, #0x4c]
	strh r0, [r5, #0x4e]
	strh r0, [r5, #0x52]
_02029030:
	ldrh r1, [r5, #0x4c]
	ldr r2, _020292C4 ; =MAIN_BSS_0210CA38
	mov r0, r5
	ldr r6, [r2]
	bl sub_02028170
	ldr r1, [r5, #0x5c]
	add r0, r1, r0
	cmp r0, r6
	bls _02029068
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
	b _020292B8
_02029068:
	mov r0, #3
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
	b _020292B8
_0202907C:
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #3
	strb r0, [r5, #0x64]
	b _020292B8
_02029090:
	mov r1, r4
	bl sub_02028CFC
	ldrh r1, [r5, #0x4c]
	mov r0, r5
	bl sub_02028170
	mov r1, r4
	str r1, [sp]
	mov r1, r0
	ldr r0, [r5]
	ldr r2, [r5, #0x58]
	ldr ip, [r0]
	ldr r3, [r5, #0x5c]
	ldr ip, [ip, #0x10]
	blx ip
	cmp r0, #0
	bne _020290E4
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #4
	strb r0, [r5, #0x64]
	b _020292B8
_020290E4:
	mov r0, #4
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
_020290F4:
	ldr r0, [r5]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _020292B8
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02029134
	mov r0, #7
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
	b _020292B8
_02029134:
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #5
	strb r0, [r5, #0x64]
	b _020292B8
_02029148:
	ldrh r1, [r5, #0x4c]
	bl sub_02028170
	ldrh r1, [r5, #0x4c]
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x40]
	ldr r1, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	mov r0, r5
	bl sub_02028DD4
	ldrh r3, [r5, #0x4c]
	add r1, r5, #0x38
	mov r2, #0x18
	add r3, r5, r3, lsl #1
	strh r0, [r3, #0x48]
	mov r0, r5
	bl sub_02028DD4
	strh r0, [r5, #0x50]
	mov r0, #0xa
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
	mov r4, #2
	b _020292B8
_020291A4:
	str r4, [sp]
	ldr r0, [r5]
	ldr r1, [r5, #0x60]
	ldr ip, [r0]
	add r2, r5, #0x38
	ldr ip, [ip, #0x10]
	mov r3, #0x1c
	blx ip
	cmp r0, #0
	bne _020291E0
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #6
	strb r0, [r5, #0x64]
	b _020292B8
_020291E0:
	mov r0, #9
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
_020291F0:
	ldr r0, [r5]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	beq _020292B8
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02029230
	mov r0, #0xb
	str r0, [r5, #0x54]
	mov r0, #0
	strb r0, [r5, #0x64]
	b _020292B8
_02029230:
	mov r0, #0xd
	str r0, [r5, #0x54]
	mov r0, #7
	strb r0, [r5, #0x64]
	b _020292B8
_02029244:
	mov r4, #2
	b _020292B8
_0202924C:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_0200FA0C
	mov r0, #0xc
	str r0, [r5, #0x54]
	mov r0, r4
	strb r0, [r5, #0x64]
	mov r4, #1
	b _020292B8
_0202927C:
	mov r4, #1
	b _020292B8
_02029284:
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl sub_0200FA0C
	ldrb r0, [r5, #0x64]
	orr r0, r0, #0x80
	and r4, r0, #0xff
	b _020292B8
_020292AC:
	mov r0, #0
	mov r4, #0x80
	bl sub_0200FA0C
_020292B8:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_020292C4: .word MAIN_BSS_0210CA38
_020292C8: .word PTR_LAB_0208c1c0

	arm_func_start sub_020292CC
sub_020292CC: ; 0x020292CC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020281B0
	ldr r0, [r5, #0x54]
	cmp r0, #0xd
	bgt _02029308
	cmp r0, #0xb
	blt _020292FC
	cmpne r0, #0xd
	beq _02029334
	b _0202936C
	arm_func_end sub_020292CC
_020292FC:
	cmp r0, #0
	beq _02029334
	b _0202936C
_02029308:
	cmp r0, #0x14
	bgt _02029318
	beq _02029334
	b _0202936C
_02029318:
	cmp r0, #0x19
	bgt _0202936C
	cmp r0, #0x15
	blt _0202936C
	cmpne r0, #0x18
	cmpne r0, #0x19
	bne _0202936C
_02029334:
	mov r1, #1
	strb r1, [r5, #0x65]
	mov r0, #0
	strb r0, [r5, #0x64]
	str r1, [r5, #0x54]
	strb r0, [r5, #0x64]
	bl sub_0200FA2C
	cmp r4, #0
	bne _02029364
	ldr r0, _02029374 ; =MAIN_BSS_020B26A0
	mov r1, #1
	bl sub_02016E7C
_02029364:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_0202936C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02029374: .word MAIN_BSS_020B26A0

	arm_func_start sub_02029378
sub_02029378: ; 0x02029378
	ldr r1, [r0, #0x54]
	cmp r1, #0xa
	movne r0, #0
	bxne lr
	mov r1, #8
	str r1, [r0, #0x54]
	mov r1, #0
	strb r1, [r0, #0x64]
	mov r0, #1
	bx lr
	arm_func_end sub_02029378

	arm_func_start sub_020293A0
sub_020293A0: ; 0x020293A0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_02029484
	ldr r4, [r5]
	cmp r4, #0
	beq _020293D4
	beq _020293CC
	mov r0, r4
	bl sub_02007548
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_020293A0
_020293CC:
	mov r0, #0
	str r0, [r5]
_020293D4:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020293F8
	beq _020293F0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020293F0:
	mov r0, #0
	str r0, [r5, #4]
_020293F8:
	ldr r4, [r5, #8]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02029418
	mov r0, r4
	bl sub_020087C8
	mov r0, r4
	bl _ZdlPv
_02029418:
	mov r0, #0
	str r0, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02029424
sub_02029424: ; 0x02029424
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xc]
	mov r4, r1
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5]
	mov r1, #0
	ldr r0, [r0, #0x38]
	mov r2, r1
	bl NNS_GfdAllocLnkTexVram
	str r0, [r5, #0xc]
	cmp r4, #0
	ldr r1, [r5, #0xc]
	ldr r0, [r5]
	beq _02029474
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02029424
_02029474:
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007714
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02029484
sub_02029484: ; 0x02029484
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl NNS_GfdFreeLnkTexVram
	mov r0, #0
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02029484

	arm_func_start sub_020294A8
sub_020294A8: ; 0x020294A8
	stmdb sp!, {r3, lr}
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020076B0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020294A8

	arm_func_start sub_020294C0
sub_020294C0: ; 0x020294C0
	stmdb sp!, {r4, lr}
	ldr r1, _020294E4 ; =ptr_FUN_020294c0_0208c4a4
	mov r4, r0
	str r1, [r4]
	bl sub_02029540
	add r0, r4, #4
	bl sub_02007B28
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_020294E4: .word ptr_FUN_020294c0_0208c4a4
	arm_func_end sub_020294C0

	arm_func_start sub_020294E8
sub_020294E8: ; 0x020294E8
	stmdb sp!, {r4, lr}
	ldr r1, _02029514 ; =ptr_FUN_020294c0_0208c4a4
	mov r4, r0
	str r1, [r4]
	bl sub_02029540
	add r0, r4, #4
	bl sub_02007B28
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02029514: .word ptr_FUN_020294c0_0208c4a4
	arm_func_end sub_020294E8

	arm_func_start sub_02029518
sub_02029518: ; 0x02029518
	stmdb sp!, {r4, lr}
	ldr r1, _0202953C ; =ptr_FUN_020294c0_0208c4a4
	mov r4, r0
	str r1, [r4]
	bl sub_02029540
	add r0, r4, #4
	bl sub_02007B28
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202953C: .word ptr_FUN_020294c0_0208c4a4
	arm_func_end sub_02029518

	arm_func_start sub_02029540
sub_02029540: ; 0x02029540
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0x2c]
	cmp r4, #0
	beq _02029594
	ldr r0, [r6, #0x30]
	cmp r0, #0
	sub r5, r0, #1
	beq _0202957C
	arm_func_end sub_02029540
_02029564:
	mov r0, r4
	bl sub_020293A0
	cmp r5, #0
	add r4, r4, #0x10
	sub r5, r5, #1
	bne _02029564
_0202957C:
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq _02029594
	bl _ZdaPv
	mov r0, #0
	str r0, [r6, #0x2c]
_02029594:
	add r0, r6, #4
	bl sub_02007BC4
	mov r0, r6
	bl sub_02029648
	mov r0, #0
	str r0, [r6, #0x30]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020295B0
sub_020295B0: ; 0x020295B0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x28]
	mov r4, r1
	cmp r0, #0
	bne _0202960C
	ldr r0, [r5, #8]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, r1
	bl NNS_GfdAllocLnkPlttVram
	str r0, [r5, #0x28]
	cmp r4, #0
	ldr r1, [r5, #0x28]
	add r0, r5, #4
	beq _02029600
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007BFC
	b _0202960C
	arm_func_end sub_020295B0
_02029600:
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	bl sub_02007C34
_0202960C:
	ldr r0, [r5, #0x30]
	mov r6, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, r6
_02029620:
	ldr r0, [r5, #0x2c]
	mov r1, r4
	add r0, r0, r7
	bl sub_02029424
	ldr r0, [r5, #0x30]
	add r6, r6, #1
	cmp r6, r0
	add r7, r7, #0x10
	blo _02029620
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02029648
sub_02029648: ; 0x02029648
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02029690
	ldr r0, [r4, #0x30]
	mov r5, #0
	cmp r0, #0
	bls _02029690
	mov r6, r5
	arm_func_end sub_02029648
_02029670:
	ldr r0, [r4, #0x2c]
	add r0, r0, r6
	bl sub_02029484
	ldr r0, [r4, #0x30]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #0x10
	blo _02029670
_02029690:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl NNS_GfdFreeLnkPlttVram
	mov r0, #0
	str r0, [r4, #0x28]
	strb r0, [r4, #0x24]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020296B0
sub_020296B0: ; 0x020296B0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #4
	bl sub_02007BC4
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x30]
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
	mov r5, r4
	arm_func_end sub_020296B0
_020296E0:
	ldr r0, [r6, #0x2c]
	add r0, r0, r5
	bl sub_020294A8
	ldr r0, [r6, #0x30]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0x10
	blo _020296E0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02029704
sub_02029704: ; 0x02029704
	ldrb r1, [r0, #0x24]
	cmp r1, #0
	beq _02029764
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _0202975C
	cmp r1, #0
	mov r2, #1
	mov r3, #0
	bls _02029768
	ldr ip, [r0, #0x2c]
	arm_func_end sub_02029704
_02029730:
	ldr r1, [ip, r3, lsl #4]
	cmp r1, #0
	ldrneb r1, [r1, #0x30]
	cmpne r1, #0
	moveq r2, #0
	beq _02029768
	ldr r1, [r0, #0x30]
	add r3, r3, #1
	cmp r3, r1
	blo _02029730
	b _02029768
_0202975C:
	mov r2, #0
	b _02029768
_02029764:
	mov r2, #0
_02029768:
	mov r0, r2
	bx lr

	arm_func_start sub_02029770
sub_02029770: ; 0x02029770
	ldr r0, [r0, #0x30]
	bx lr
	arm_func_end sub_02029770

	arm_func_start sub_02029778
sub_02029778: ; 0x02029778
	bx lr
	arm_func_end sub_02029778

	arm_func_start sub_0202977C
sub_0202977C: ; 0x0202977C
	add r0, r0, #4
	bx lr
	arm_func_end sub_0202977C

	arm_func_start sub_02029784
sub_02029784: ; 0x02029784
	cmp r1, #0
	blt _020297A8
	ldr r2, [r0, #0x30]
	cmp r1, r2
	bhs _020297A8
	ldr r0, [r0, #0x2c]
	add r0, r0, r1, lsl #4
	ldr r0, [r0, #8]
	bx lr
	arm_func_end sub_02029784
_020297A8:
	mov r0, #0
	bx lr

	arm_func_start sub_020297B0
sub_020297B0: ; 0x020297B0
	cmp r1, #0
	blt _020297D4
	ldr r2, [r0, #0x30]
	cmp r1, r2
	bhs _020297D4
	ldr r0, [r0, #0x2c]
	add r0, r0, r1, lsl #4
	ldr r0, [r0, #4]
	bx lr
	arm_func_end sub_020297B0
_020297D4:
	mov r0, #0
	bx lr

	arm_func_start sub_020297DC
sub_020297DC: ; 0x020297DC
	cmp r1, #0
	blt _020297F8
	ldr r2, [r0, #0x30]
	cmp r1, r2
	ldrlo r0, [r0, #0x2c]
	ldrlo r0, [r0, r1, lsl #4]
	bxlo lr
	arm_func_end sub_020297DC
_020297F8:
	mov r0, #0
	bx lr

	arm_func_start sub_02029800
sub_02029800: ; 0x02029800
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0x20]
	bx lr
	arm_func_end sub_02029800

	arm_func_start sub_02029818
sub_02029818: ; 0x02029818
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202A1B4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02029818

	arm_func_start sub_0202982C
sub_0202982C: ; 0x0202982C
	stmdb sp!, {r3, lr}
	str r1, [r0, #0x24]
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov ip, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, ip, #0x10
	orr r1, r2, r1, lsl #8
	str r1, [r3]
	ldr r1, [r0, #0x24]
	cmp r1, #0x64
	bge _0202986C
	bl sub_02029A34
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202982C
_0202986C:
	cmp r1, #0xc8
	bge _0202987C
	bl sub_02029B70
	ldmia sp!, {r3, pc}
_0202987C:
	bl sub_02029884
	ldmia sp!, {r3, pc}

	arm_func_start sub_02029884
sub_02029884: ; 0x02029884
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r4, #0
	bl sub_0201001C
	mov r5, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _020298C8
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x224
	mov r3, r4
	bl sub_0200ECD0
	arm_func_end sub_02029884
_020298C8:
	str r0, [r6]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, _02029A24 ; =s_data_menu_0208c4c8
	ldr r2, _02029A28 ; =s_title100_01_0208c4d4
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	add r4, r4, r0
	ldr r0, [r6]
	sub r2, r1, #0x40
	mov r3, #0x40
	bl sub_0200F4FC
	mov r1, #0
	mov r2, #1
	str r0, [r6, #0xc]
	bl sub_0200EB34
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02029940
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x2a4
	mov r3, #0
	bl sub_0200ECD0
_02029940:
	str r0, [r6, #4]
	mov r0, #5
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r6, #4]
	ldr r1, _02029A24 ; =s_data_menu_0208c4c8
	ldr r2, _02029A2C ; =s_title100_00_0208c4e0
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	add r4, r4, r0
	ldr r0, [r6, #4]
	mov r2, #0x80
	mov r3, #0x30
	bl sub_0200F4FC
	str r0, [r6, #0x10]
	ldr r1, [r6, #4]
	mov r0, #0x44
	ldr r1, [r1, #0x24]
	str r1, [r6, #0x28]
	bl _Znwm
	cmp r0, #0
	beq _020299C0
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x324
	mov r3, #0
	bl sub_0200ECD0
_020299C0:
	str r0, [r6, #8]
	mov r0, #0xd
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r6, #8]
	ldr r1, _02029A24 ; =s_data_menu_0208c4c8
	ldr r2, _02029A30 ; =s_title100_02_0208c4ec
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	ldr r0, [r6, #8]
	mov r2, #0x180
	mov r3, #0x30
	bl sub_0200F4FC
	str r0, [r6, #0x14]
	mov r0, #1
	str r0, [r6, #0x20]
	mov r0, #0x46
	str r0, [r6, #0x18]
	mov r0, #0
	str r0, [r6, #0x1c]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02029A24: .word s_data_menu_0208c4c8
_02029A28: .word s_title100_01_0208c4d4
_02029A2C: .word s_title100_00_0208c4e0
_02029A30: .word s_title100_02_0208c4ec

	arm_func_start sub_02029A34
sub_02029A34: ; 0x02029A34
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r6, r0
	mov r4, #0
	bl sub_0201001C
	mov r5, r0
	ldr r2, [r6, #0x24]
	ldr r1, _02029B64 ; =s_mit_03d_0208c4f8
	add r0, sp, #4
	bl OS_SPrintf
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02029A88
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x224
	mov r3, r4
	bl sub_0200ECD0
	arm_func_end sub_02029A34
_02029A88:
	str r0, [r6]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, _02029B68 ; =s_data_menu_0208c4c8
	add r2, sp, #4
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	add r4, r4, r0
	ldr r0, [r6]
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r6, #0xc]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02029AF4
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x244
	mov r3, #0
	bl sub_0200ECD0
_02029AF4:
	str r0, [r6, #4]
	mov r0, #5
	str r0, [sp]
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r6, #4]
	ldr r1, _02029B68 ; =s_data_menu_0208c4c8
	ldr r2, _02029B6C ; =s_mit104_0208c500
	mov r3, r3, asr #5
	bl sub_0200EE14
	mov r1, #0
	str r1, [sp]
	ldr r0, [r6, #4]
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	mov r1, #1
	ldr r2, [r0, #0x24]
	mov r0, #0
	str r2, [r6, #0x28]
	str r1, [r6, #0x20]
	str r0, [r6, #0x18]
	mov r0, #0xf0
	str r0, [r6, #0x1c]
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02029B64: .word s_mit_03d_0208c4f8
_02029B68: .word s_data_menu_0208c4c8
_02029B6C: .word s_mit104_0208c500

	arm_func_start sub_02029B70
sub_02029B70: ; 0x02029B70
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r4, #0
	bl sub_0201001C
	mov r5, r0
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02029BB4
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x224
	mov r3, r4
	bl sub_0200ECD0
	arm_func_end sub_02029B70
_02029BB4:
	str r0, [r6]
	ldr r0, [r6, #0x24]
	cmp r0, #0x64
	beq _02029BD8
	cmp r0, #0x65
	beq _02029C04
	cmp r0, #0x66
	beq _02029C30
	b _02029C58
_02029BD8:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, _02029D34 ; =s_data_menu_0208c4c8
	ldr r2, _02029D38 ; =s_title101_00_0208c508
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0xf0
	str r1, [r6, #0x1c]
	add r4, r4, r0
	b _02029C58
_02029C04:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, _02029D34 ; =s_data_menu_0208c4c8
	ldr r2, _02029D3C ; =s_title101_02_0208c514
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0xf0
	str r1, [r6, #0x1c]
	add r4, r4, r0
	b _02029C58
_02029C30:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, _02029D34 ; =s_data_menu_0208c4c8
	ldr r2, _02029D40 ; =s_title101_03_0208c520
	mov r3, #0
	bl sub_0200EE14
	mov r1, #0x1a4
	str r1, [r6, #0x1c]
	add r4, r4, r0
_02029C58:
	mov r1, #0
	str r1, [sp]
	mov r2, #0x80
	ldr r0, [r6]
	sub r3, r2, #0xb0
	bl sub_0200F4FC
	str r0, [r6, #0xc]
	mov r0, #0x44
	bl _Znwm
	cmp r0, #0
	beq _02029CA0
	mov r1, #0x40
	str r1, [sp]
	add r1, r5, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r5, #0x244
	mov r3, #0
	bl sub_0200ECD0
_02029CA0:
	str r0, [r6, #4]
	ldr r0, [r6, #0x24]
	cmp r0, #0x66
	mov r0, #0xc
	str r0, [sp]
	bne _02029CD8
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r6, #4]
	ldr r1, _02029D34 ; =s_data_menu_0208c4c8
	ldr r2, _02029D44 ; =s_title101_04_0208c52c
	mov r3, r3, asr #5
	bl sub_0200EE14
	b _02029CF4
_02029CD8:
	mov r0, r4, asr #4
	add r3, r4, r0, lsr #27
	ldr r0, [r6, #4]
	ldr r1, _02029D34 ; =s_data_menu_0208c4c8
	ldr r2, _02029D48 ; =s_title101_01_0208c538
	mov r3, r3, asr #5
	bl sub_0200EE14
_02029CF4:
	mov r1, #0
	str r1, [sp]
	mov r2, #0x80
	ldr r0, [r6, #4]
	sub r3, r2, #0xb0
	bl sub_0200F4FC
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	mov r1, #1
	ldr r2, [r0, #0x24]
	mov r0, #0
	str r2, [r6, #0x28]
	str r1, [r6, #0x20]
	str r0, [r6, #0x18]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02029D34: .word s_data_menu_0208c4c8
_02029D38: .word s_title101_00_0208c508
_02029D3C: .word s_title101_02_0208c514
_02029D40: .word s_title101_03_0208c520
_02029D44: .word s_title101_04_0208c52c
_02029D48: .word s_title101_01_0208c538

	arm_func_start sub_02029D4C
sub_02029D4C: ; 0x02029D4C
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x24]
	cmp r1, #0x64
	bge _02029D64
	bl sub_02029F34
	ldmia sp!, {r3, pc}
	arm_func_end sub_02029D4C
_02029D64:
	cmp r1, #0xc8
	bge _02029D74
	bl sub_02029F74
	ldmia sp!, {r3, pc}
_02029D74:
	bl sub_02029D7C
	ldmia sp!, {r3, pc}

	arm_func_start sub_02029D7C
sub_02029D7C: ; 0x02029D7C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_0201001C
	ldr r1, [r6, #0x20]
	mov r4, r0
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0xc]
	cmp r1, #4
	ldrsh r5, [r0, #0xc]
	addls pc, pc, r1, lsl #2
	b _02029E2C
_02029DAC: ; jump table
	b _02029E2C ; case 0
	b _02029DC0 ; case 1
	b _02029DF0 ; case 2
	b _02029E08 ; case 3
	b _02029E1C ; case 4
	arm_func_end sub_02029D7C
_02029DC0:
	add r5, r5, #0x20
	cmp r5, #0x140
	bne _02029E2C
	mov r0, #2
	str r0, [r6, #0x20]
	mov r0, #0xa
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0xc]
	mov r1, r5
	mov r2, #0x10
	bl sub_0200EB28
	b _02029E2C
_02029DF0:
	ldr r0, [r6, #0x1c]
	subs r0, r0, #1
	str r0, [r6, #0x1c]
	moveq r0, #3
	streq r0, [r6, #0x20]
	b _02029E2C
_02029E08:
	sub r5, r5, #0x10
	cmp r5, #0xd0
	moveq r0, #4
	streq r0, [r6, #0x20]
	b _02029E2C
_02029E1C:
	sub r5, r5, #0x10
	cmp r5, #0x10
	moveq r0, #5
	streq r0, [r6, #0x20]
_02029E2C:
	ldr r0, [r6, #0xc]
	mov r1, r5
	ldrsh r2, [r0, #0xe]
	bl sub_0200EB28
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x20]
	ldrsh r5, [r1, #0xc]
	cmp r0, #4
	cmpne r0, #5
	beq _02029E60
	cmp r0, #6
	beq _02029E80
	b _02029EBC
_02029E60:
	cmp r5, #0x80
	subgt r5, r5, #0x10
	bgt _02029EBC
	mov r0, #6
	str r0, [r6, #0x20]
	mov r0, #0xf
	str r0, [r6, #0x1c]
	b _02029EBC
_02029E80:
	ldr r0, [r6, #0x1c]
	subs r0, r0, #1
	str r0, [r6, #0x1c]
	bne _02029EBC
	mov r0, #7
	str r0, [r6, #0x20]
	add r0, r4, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x2f
	bl sub_0203499C
	add r0, r4, #0x1000
	ldr r0, [r0, #0x48c]
	mov r1, #0x15
	mov r2, #0
	bl sub_02034A40
_02029EBC:
	ldr r0, [r6, #0x14]
	mov r1, r5
	ldrsh r2, [r0, #0xe]
	bl sub_0200EB28
	ldr r0, [r6, #0x20]
	cmp r0, #7
	bne _02029F00
	ldr r2, [r6, #4]
	ldr r0, [r6, #0x28]
	ldr r1, [r2, #8]
	mov r0, r0, lsl #1
	ldrh r1, [r1, r0]
	ldr r0, [r2, #0x38]
	bl sub_02008860
	cmp r0, #0
	moveq r0, #8
	streq r0, [r6, #0x20]
_02029F00:
	ldr r0, [r6, #0x18]
	add r0, r0, #1
	str r0, [r6, #0x18]
	ldr r0, [r6]
	bl sub_0200F64C
	ldr r0, [r6, #0x20]
	cmp r0, #7
	blt _02029F28
	ldr r0, [r6, #4]
	bl sub_0200F64C
_02029F28:
	ldr r0, [r6, #8]
	bl sub_0200F64C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02029F34
sub_02029F34: ; 0x02029F34
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r4, #0x1c]
	moveq r0, #2
	streq r0, [r4, #0x20]
	ldr r0, [r4]
	bl sub_0200F64C
	ldr r0, [r4, #4]
	bl sub_0200F64C
	ldmia sp!, {r4, pc}
	arm_func_end sub_02029F34

	arm_func_start sub_02029F74
sub_02029F74: ; 0x02029F74
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x20]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xc]
	cmp r1, #8
	ldrsh r4, [r0, #0xe]
	addls pc, pc, r1, lsl #2
	b _0202A04C
_02029F9C: ; jump table
	b _0202A04C ; case 0
	b _02029FC0 ; case 1
	b _02029FD4 ; case 2
	b _02029FE8 ; case 3
	b _02029FFC ; case 4
	b _0202A010 ; case 5
	b _0202A024 ; case 6
	b _0202A038 ; case 7
	b _0202A04C ; case 8
	arm_func_end sub_02029F74
_02029FC0:
	add r4, r4, #8
	cmp r4, #0x30
	moveq r0, #2
	streq r0, [r5, #0x20]
	b _0202A04C
_02029FD4:
	add r4, r4, #4
	cmp r4, #0x38
	moveq r0, #3
	streq r0, [r5, #0x20]
	b _0202A04C
_02029FE8:
	sub r4, r4, #2
	cmp r4, #0x30
	moveq r0, #4
	streq r0, [r5, #0x20]
	b _0202A04C
_02029FFC:
	ldr r0, [r5, #0x1c]
	cmp r0, #0x10
	moveq r0, #5
	streq r0, [r5, #0x20]
	b _0202A04C
_0202A010:
	add r4, r4, #1
	cmp r4, #0x38
	moveq r0, #6
	streq r0, [r5, #0x20]
	b _0202A04C
_0202A024:
	sub r4, r4, #4
	cmp r4, #0x30
	moveq r0, #7
	streq r0, [r5, #0x20]
	b _0202A04C
_0202A038:
	sub r4, r4, #8
	mvn r0, #0x2f
	cmp r4, r0
	moveq r0, #8
	streq r0, [r5, #0x20]
_0202A04C:
	ldr r0, [r5, #0xc]
	mov r2, r4
	ldrsh r1, [r0, #0xc]
	bl sub_0200EB28
	ldr r0, [r5, #0x10]
	mov r2, r4
	ldrsh r1, [r0, #0xc]
	bl sub_0200EB28
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r5, #0x1c]
	moveq r0, #9
	streq r0, [r5, #0x20]
	ldr r0, [r5, #0x1c]
	cmp r0, #0xbe
	bge _0202A098
	ldr r0, [r5]
	bl sub_0200F64C
_0202A098:
	ldr r0, [r5, #4]
	bl sub_0200F64C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202A0A4
sub_0202A0A4: ; 0x0202A0A4
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x24]
	cmp r1, #0x64
	bge _0202A0BC
	bl sub_0202A150
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202A0A4
_0202A0BC:
	cmp r1, #0xc8
	bge _0202A0CC
	bl sub_0202A184
	ldmia sp!, {r3, pc}
_0202A0CC:
	bl sub_0202A0D4
	ldmia sp!, {r3, pc}

	arm_func_start sub_0202A0D4
sub_0202A0D4: ; 0x0202A0D4
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #3
	movlt r6, #2
	movge r6, #1
	bl sub_0201001C
	mov r5, r0
	mov r1, r6
	mov r0, #0x1000
	bl _s32_div_f
	mov r0, r0, lsl #0xc
	mov r1, r0, asr #0x10
	strh r1, [r5, #0x2a]
	mov r0, #0
	strh r0, [r5, #0x32]
	strh r0, [r5, #0x3a]
	strh r1, [r5, #0x42]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4]
	bl sub_0200F71C
	ldr r0, [r4, #0x20]
	cmp r0, #7
	blt _0202A144
	ldr r0, [r4, #4]
	bl sub_0200F71C
	arm_func_end sub_0202A0D4
_0202A144:
	ldr r0, [r4, #8]
	bl sub_0200F71C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_0202A150
sub_0202A150: ; 0x0202A150
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x1c]
	cmp r0, #0x8c
	bge _0202A178
	ldr r0, [r4]
	bl sub_0200F71C
	arm_func_end sub_0202A150
_0202A178:
	ldr r0, [r4, #4]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202A184
sub_0202A184: ; 0x0202A184
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	bl sub_0200F71C
	ldr r0, [r4, #4]
	bl sub_0200F71C
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202A184

	arm_func_start sub_0202A1AC
sub_0202A1AC: ; 0x0202A1AC
	ldr r0, [r0, #0x20]
	bx lr
	arm_func_end sub_0202A1AC

	arm_func_start sub_0202A1B4
sub_0202A1B4: ; 0x0202A1B4
	stmdb sp!, {r3, r4, r5, lr}
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	mov r4, r2, lsr #8
	bic r2, r1, #0x1f00
	eor r1, r4, #0x10
	orr r1, r2, r1, lsl #8
	mov r4, r0
	str r1, [r3]
	ldr r0, [r4]
	cmp r0, #0
	beq _0202A1F8
	bl sub_0200F6C4
	ldr r0, [r4]
	bl sub_0200F4A8
	arm_func_end sub_0202A1B4
_0202A1F8:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0202A210
	bl sub_0200F6C4
	ldr r0, [r4, #4]
	bl sub_0200F4A8
_0202A210:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0202A228
	bl sub_0200F6C4
	ldr r0, [r4, #8]
	bl sub_0200F4A8
_0202A228:
	ldr r5, [r4]
	cmp r5, #0
	beq _0202A250
	beq _0202A248
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0202A248:
	mov r0, #0
	str r0, [r4]
_0202A250:
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _0202A278
	beq _0202A270
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0202A270:
	mov r0, #0
	str r0, [r4, #4]
_0202A278:
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _0202A2A0
	beq _0202A298
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0202A298:
	mov r0, #0
	str r0, [r4, #8]
_0202A2A0:
	mov r0, #0
	str r0, [r4, #0x20]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202A2AC
sub_0202A2AC: ; 0x0202A2AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201001C
	str r0, [r4]
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	str r1, [r4, #0x20]
	mov r0, r4
	str r1, [r4, #0x24]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202A2AC

	arm_func_start sub_0202A2EC
sub_0202A2EC: ; 0x0202A2EC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	str r0, [r5, #4]
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0202A324
	beq _0202A31C
	mov r0, r4
	bl sub_0200ED2C
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_0202A2EC
_0202A31C:
	mov r0, #0
	str r0, [r5, #8]
_0202A324:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202A32C
sub_0202A32C: ; 0x0202A32C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	str r6, [r7, #0xc]
	mov r4, r3
	str r5, [r7, #0x14]
	mov r0, #0x44
	str r4, [r7, #0x1c]
	bl _Znwm
	cmp r0, #0
	beq _0202A384
	ldr r2, [r7]
	mov r1, #0x40
	str r1, [sp]
	add r1, r2, #0x1000
	add ip, r2, #0x24
	and r3, r5, #0xff
	ldr r2, [r1, #0x4a8]
	add r1, ip, r3, lsl #3
	mov r3, #0
	bl sub_0200ECD0
	arm_func_end sub_0202A32C
_0202A384:
	str r0, [r7, #8]
	str r4, [sp]
	ldr r0, [r7, #8]
	ldr r1, _0202A3FC ; =s_data_menu_0208c544
	ldr r2, _0202A400 ; =s_ma005_00_0208c550
	mov r3, r6
	bl sub_0200EE14
	mov r1, r0, asr #4
	add r0, r0, r1, lsr #27
	mov r0, r0, asr #5
	str r0, [r7, #0x10]
	mov r1, #0
	str r1, [sp]
	ldr r0, [r7, #8]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_0200F4FC
	mov r1, #0x20
	str r0, [r7, #4]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7, #4]
	mov r2, r1
	bl sub_0200EBF4
	ldr r1, [r7, #8]
	mov r0, #1
	ldr r1, [r1, #0x30]
	str r1, [r7, #0x18]
	str r0, [r7, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0202A3FC: .word s_data_menu_0208c544
_0202A400: .word s_ma005_00_0208c550

	arm_func_start sub_0202A404
sub_0202A404: ; 0x0202A404
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #4]
	cmp r0, #0
	ldrne r1, [r4, #0x20]
	cmpne r1, #0
	beq _0202A470
	ldr r1, [r4]
	ldr r1, [r1, #0x14]
	ldrh r1, [r1, #2]
	and r1, r1, #2
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	bne _0202A450
	bl sub_0200EB84
	cmp r0, #0
	beq _0202A470
	arm_func_end sub_0202A404
_0202A450:
	ldr r0, [r4]
	ldr r1, _0202A478 ; =0x00000103
	add r0, r0, #0x1000
	ldr r0, [r0, #0x48c]
	bl sub_02034C44
	mov r0, #1
	str r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
_0202A470:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202A478: .word 0x00000103

	arm_func_start sub_0202A47C
sub_0202A47C: ; 0x0202A47C
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, r1
	bl sub_0200F71C
	ldmia sp!, {r3, pc}
	arm_func_end sub_0202A47C

	arm_func_start sub_0202A4A0
sub_0202A4A0: ; 0x0202A4A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, [r4, #0x64]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, [r0]
	mov r1, r4
	ldr r3, [r3]
	mov r2, #0x60
	blx r3
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202A4A0

	arm_func_start sub_0202A4D8
sub_0202A4D8: ; 0x0202A4D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	mov r2, #0x800
	bl MI_CpuFill8
	ldr r0, [r4, #0x804]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, [r0]
	mov r1, r4
	ldr r3, [r3]
	mov r2, #0x800
	blx r3
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202A4D8

	arm_func_start sub_0202A510
sub_0202A510: ; 0x0202A510
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x64]
	bl sub_0202A53C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202A510

	arm_func_start sub_0202A528
sub_0202A528: ; 0x0202A528
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0202A5FC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202A528

	arm_func_start sub_0202A53C
sub_0202A53C: ; 0x0202A53C
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r4, r0
	strh r1, [r4]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	str r1, [r4, #0x20]
	mov r2, r1
	arm_func_end sub_0202A53C
_0202A568:
	add r0, r4, r1, lsl #2
	add r1, r1, #1
	str r2, [r0, #0x28]
	cmp r1, #5
	blt _0202A568
	mov r1, #0x25
	mov r0, #0xc
	str r2, [r4, #4]
	str r2, [r4, #0x5c]
	smulbb r0, r1, r0
	str r1, [r4, #0x24]
	bl _Znam
	str r0, [r4, #0x1c]
	mov r0, #1
	str r0, [r4, #0x60]
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202A5A8
sub_0202A5A8: ; 0x0202A5A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0202A5C0
	bl sub_0200F64C
	arm_func_end sub_0202A5A8
_0202A5C0:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0202A5D0
	bl sub_0200F64C
_0202A5D0:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0202A5E0
	bl sub_0200F64C
_0202A5E0:
	mov r0, r4
	bl sub_0202AE7C
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202A5EC
sub_0202A5EC: ; 0x0202A5EC
	ldr ip, _0202A5F4 ; =sub_0202A6E8
	bx ip
	.align 2, 0
_0202A5F4: .word sub_0202A6E8
	arm_func_end sub_0202A5EC

	arm_func_start sub_0202A5F8
sub_0202A5F8: ; 0x0202A5F8
	bx lr
	arm_func_end sub_0202A5F8

	arm_func_start sub_0202A5FC
sub_0202A5FC: ; 0x0202A5FC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _0202A62C
	beq _0202A624
	mov r0, r5
	bl sub_02021428
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_0202A5FC
_0202A624:
	mov r0, #0
	str r0, [r4, #0xc]
_0202A62C:
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _0202A654
	beq _0202A64C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0202A64C:
	mov r0, #0
	str r0, [r4, #0x10]
_0202A654:
	ldr r5, [r4, #0x14]
	cmp r5, #0
	beq _0202A67C
	beq _0202A674
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0202A674:
	mov r0, #0
	str r0, [r4, #0x14]
_0202A67C:
	ldr r5, [r4, #0x18]
	cmp r5, #0
	beq _0202A6A4
	beq _0202A69C
	mov r0, r5
	bl sub_0200ED2C
	mov r0, r5
	bl _ZdlPv
_0202A69C:
	mov r0, #0
	str r0, [r4, #0x18]
_0202A6A4:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0202A6BC
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x1c]
_0202A6BC:
	ldr r5, [r4, #0x20]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _0202A6DC
	mov r0, r5
	bl sub_0201FCB4
	mov r0, r5
	bl _ZdlPv
_0202A6DC:
	mov r0, #0
	str r0, [r4, #0x20]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202A6E8
sub_0202A6E8: ; 0x0202A6E8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0202A700
	bl sub_0200F71C
	arm_func_end sub_0202A6E8
_0202A700:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0202A710
	bl sub_0200F71C
_0202A710:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_0200F71C
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202A724
sub_0202A724: ; 0x0202A724
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r6, [r5, #0x20]
	mov r7, r1
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	cmp r6, #0
	ldr r4, [sp, #0x38]
	beq _0202A76C
	cmp r6, #0
	beq _0202A764
	mov r0, r6
	bl sub_0201FCB4
	mov r0, r6
	bl _ZdlPv
	arm_func_end sub_0202A724
_0202A764:
	mov r0, #0
	str r0, [r5, #0x20]
_0202A76C:
	mov r0, #0x64
	bl _Znwm
	cmp r0, #0
	beq _0202A784
	ldr r1, [r5, #0x64]
	bl sub_0201FC9C
_0202A784:
	str r0, [r5, #0x20]
	mov r1, r7
	bl sub_02020328
	ldr r0, [r5, #0x20]
	ldr r1, _0202ACDC ; =s_menu_0208cc1c
	ldr r2, _0202ACE0 ; =s_map000_0208cc24
	bl sub_0202048C
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #0x20]
	ldr r1, _0202ACE4 ; =s_map000_0208cc2c
	mov r3, r2
	bl sub_020204DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #0x20]
	ldr r1, _0202ACE4 ; =s_map000_0208cc2c
	mov r3, r2
	bl sub_0202055C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r5, #0x20]
	ldr r1, _0202ACE4 ; =s_map000_0208cc2c
	mov r3, r2
	bl sub_020205DC
	ldr r0, [r5, #0x20]
	bl sub_020204A8
	ldr r0, [r5, #0x20]
	bl sub_0201FD24
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x3c]
	bl sub_0201FDE8
	ldr r0, [r5, #0x20]
	bl sub_0201FEBC
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _0202A838
_0202A820: ; jump table
	b _0202A830 ; case 0
	b _0202A830 ; case 1
	b _0202A830 ; case 2
	b _0202A830 ; case 3
_0202A830:
	mov fp, #1
	b _0202A83C
_0202A838:
	mov fp, #0
_0202A83C:
	ldr r0, [r4]
	str r0, [r5, #0x50]
	ldr r0, [sp, #0x10]
	ldr r6, [r5, #0x10]
	ldr r8, [r0]
	ldr r0, [sp, #0xc]
	cmp r6, #0
	ldrb sb, [r0]
	beq _0202A880
	cmp r6, #0
	beq _0202A878
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_0202A878:
	mov r0, #0
	str r0, [r5, #0x10]
_0202A880:
	cmp fp, #0
	mov r0, #0x44
	beq _0202A8C4
	bl _Znwm
	cmp r0, #0
	beq _0202A8BC
	ldr r2, [r5, #0x64]
	mov r1, #0x40
	str r1, [sp]
	add r1, r2, #0x1000
	add r3, r2, #0x24
	ldr r2, [r1, #0x4a8]
	add r1, r3, sb, lsl #3
	mov r3, #0
	bl sub_0200ECD0
_0202A8BC:
	str r0, [r5, #0x10]
	b _0202A8FC
_0202A8C4:
	bl _Znwm
	cmp r0, #0
	beq _0202A8F8
	ldr r6, [r5, #0x64]
	mov r2, #0x40
	add r1, r6, #0x24
	add r3, r1, #0x400
	str r2, [sp]
	add r1, r6, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, sb, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0202A8F8:
	str r0, [r5, #0x10]
_0202A8FC:
	ldr r1, [r4]
	mov r0, r8, asr #4
	str r1, [sp]
	add r3, r8, r0, lsr #27
	ldr r0, [r5, #0x10]
	ldr r1, _0202ACE8 ; =s_data_menu_0208cc34
	ldr r2, _0202ACEC ; =s_map000_00_0208cc40
	mov r3, r3, asr #5
	bl sub_0200F168
	add r8, r8, r0
	ldr r0, [r5, #0x10]
	bl sub_0200F398
	ldr r0, [r5, #0x24]
	mov r7, #0
	cmp r0, #0
	ble _0202AA04
	mov sl, r7
	mov r6, #0x10
_0202A944:
	mov r0, #3
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r1, r7
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0200F4FC
	ldr r2, [r5, #0x1c]
	mov r1, r6
	str r0, [r2, sl]
	ldr r2, [r5, #0x10]
	ldr r0, [r5, #0x1c]
	ldr r2, [r2, #0x24]
	add r0, r0, sl
	str r2, [r0, #4]
	ldr r0, [r5, #0x1c]
	mov r2, r6
	ldr r0, [r0, sl]
	ldr r3, [r0, #4]
	ldr r3, [r3, #4]
	ldrh ip, [r3]
	and ip, ip, #0xff
	add ip, ip, #0x68
	mov ip, ip, lsl #0x10
	mov ip, ip, asr #0x10
	and ip, ip, #0xff
	sub ip, ip, #0x60
	mov ip, ip, lsl #0x10
	mov ip, ip, asr #0x10
	str ip, [sp]
	ldrh ip, [r3, #2]
	ldr r3, _0202ACF0 ; =0x000001FF
	and r3, ip, r3
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	add r3, r3, #0x88
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	and r3, r3, #0xff
	sub r3, r3, #0x80
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl sub_0200EBF4
	ldr r0, [r5, #0x24]
	add r7, r7, #1
	add sl, sl, #0xc
	cmp r7, r0
	blt _0202A944
_0202AA04:
	ldr r0, [r5, #0x10]
	ldr r6, [r5, #0x14]
	ldr r0, [r0, #0x30]
	cmp r6, #0
	add r0, sb, r0
	and sb, r0, #0xff
	beq _0202AA40
	cmp r6, #0
	beq _0202AA38
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_0202AA38:
	mov r0, #0
	str r0, [r5, #0x14]
_0202AA40:
	cmp fp, #0
	mov r0, #0x44
	beq _0202AA84
	bl _Znwm
	cmp r0, #0
	beq _0202AA7C
	ldr r2, [r5, #0x64]
	mov r1, #0x40
	str r1, [sp]
	add r1, r2, #0x1000
	add r3, r2, #0x24
	ldr r2, [r1, #0x4a8]
	add r1, r3, sb, lsl #3
	mov r3, #0
	bl sub_0200ECD0
_0202AA7C:
	str r0, [r5, #0x14]
	b _0202AABC
_0202AA84:
	bl _Znwm
	cmp r0, #0
	beq _0202AAB8
	ldr r6, [r5, #0x64]
	mov r2, #0x40
	add r1, r6, #0x24
	add r3, r1, #0x400
	str r2, [sp]
	add r1, r6, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, sb, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0202AAB8:
	str r0, [r5, #0x14]
_0202AABC:
	ldr r1, [r4]
	mov r0, r8, asr #4
	add r1, r1, #2
	str r1, [r4]
	str r1, [sp]
	add r3, r8, r0, lsr #27
	ldr r0, [r5, #0x14]
	ldr r1, _0202ACE8 ; =s_data_menu_0208cc34
	ldr r2, _0202ACF4 ; =s_map000_01_0208cc4c
	mov r3, r3, asr #5
	bl sub_0200F168
	add r8, r8, r0
	ldr r0, [r5, #0x14]
	bl sub_0200F398
	ldr r0, _0202ACF8 ; =MAIN_BSS_020B26A0
	mov r2, #0
	ldrb r0, [r0]
	mov r1, #0
	mov r3, r2
	cmp r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x14]
	movne r1, #1
	bl sub_0200F4FC
	mov r1, #0x18
	str r0, [r5, #0x2c]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x2c]
	mov r2, r1
	bl sub_0200EBF4
	ldr r0, [r5, #0x14]
	ldr r6, [r5, #0x18]
	ldr r0, [r0, #0x30]
	cmp r6, #0
	add r0, sb, r0
	and sb, r0, #0xff
	beq _0202AB78
	cmp r6, #0
	beq _0202AB70
	mov r0, r6
	bl sub_0200ED2C
	mov r0, r6
	bl _ZdlPv
_0202AB70:
	mov r0, #0
	str r0, [r5, #0x18]
_0202AB78:
	cmp fp, #0
	mov r0, #0x44
	beq _0202ABBC
	bl _Znwm
	cmp r0, #0
	beq _0202ABB4
	ldr r2, [r5, #0x64]
	mov r1, #0x40
	str r1, [sp]
	add r1, r2, #0x1000
	add r3, r2, #0x24
	ldr r2, [r1, #0x4a8]
	add r1, r3, sb, lsl #3
	mov r3, #0
	bl sub_0200ECD0
_0202ABB4:
	str r0, [r5, #0x18]
	b _0202ABF4
_0202ABBC:
	bl _Znwm
	cmp r0, #0
	beq _0202ABF0
	ldr r6, [r5, #0x64]
	mov r2, #0x40
	add r1, r6, #0x24
	add r3, r1, #0x400
	str r2, [sp]
	add r1, r6, #0x1000
	ldr r2, [r1, #0x4a8]
	add r1, r3, sb, lsl #3
	mov r3, #1
	bl sub_0200ECD0
_0202ABF0:
	str r0, [r5, #0x18]
_0202ABF4:
	ldr r1, [r4]
	mov r0, r8, asr #4
	add r1, r1, #1
	str r1, [r4]
	str r1, [sp]
	add r3, r8, r0, lsr #27
	ldr r0, [r5, #0x18]
	ldr r1, _0202ACE8 ; =s_data_menu_0208cc34
	ldr r2, _0202ACFC ; =s_map000_02_0208cc58
	mov r3, r3, asr #5
	bl sub_0200F168
	add r8, r8, r0
	ldr r0, [r5, #0x18]
	bl sub_0200F398
	mov r1, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x18]
	mov r2, r1
	mov r3, r1
	bl sub_0200F4FC
	mov r1, #0x20
	str r0, [r5, #0x38]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x38]
	mov r2, r1
	bl sub_0200EBF4
	mov r1, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x18]
	mov r2, r1
	mov r3, r1
	bl sub_0200F4FC
	mov r1, #0x18
	str r0, [r5, #0x34]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x34]
	mov r2, r1
	bl sub_0200EBF4
	ldr r1, [r5, #0x18]
	ldr r0, _0202AD00 ; =MAIN_BSS_0210CA6C
	ldr r1, [r1, #0x30]
	ldr r0, [r0]
	add r1, sb, r1
	str r0, [r5, #8]
	ldr r0, [sp, #0x10]
	str r8, [r0]
	ldr r0, [sp, #0xc]
	strb r1, [r0]
	mov r0, r5
	bl sub_0202B2CC
	mov r0, r5
	bl sub_0202AED4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0202ACDC: .word s_menu_0208cc1c
_0202ACE0: .word s_map000_0208cc24
_0202ACE4: .word s_map000_0208cc2c
_0202ACE8: .word s_data_menu_0208cc34
_0202ACEC: .word s_map000_00_0208cc40
_0202ACF0: .word 0x000001FF
_0202ACF4: .word s_map000_01_0208cc4c
_0202ACF8: .word MAIN_BSS_020B26A0
_0202ACFC: .word s_map000_02_0208cc58
_0202AD00: .word MAIN_BSS_0210CA6C

	arm_func_start sub_0202AD04
sub_0202AD04: ; 0x0202AD04
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x20]
	mov r4, r1
	cmp r0, #0
	beq _0202AD34
	bl sub_0201FD24
	ldr r0, [r5, #0x20]
	mov r1, r4
	bl sub_0201FDE8
	ldr r0, [r5, #0x20]
	bl sub_0201FEBC
	arm_func_end sub_0202AD04
_0202AD34:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0202AD44
	bl sub_0200F398
_0202AD44:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0202AD54
	bl sub_0200F398
_0202AD54:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0202AD64
	bl sub_0200F398
_0202AD64:
	mov r0, r5
	bl sub_0202B2CC
	mov r0, r5
	bl sub_0202AED4
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202AD78
sub_0202AD78: ; 0x0202AD78
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x60]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mvn r0, #0
	strh r0, [r7, #0x58]
	add r0, r0, #0x10000
	strh r0, [r7, #0x54]
	mov r4, #0
	arm_func_end sub_0202AD78
_0202ADA0:
	add r0, r7, r4, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0202ADD4
	cmp r4, #1
	beq _0202ADC4
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0202ADD4
_0202ADC4:
	bl sub_0200EB84
	cmp r0, #0
	strneh r4, [r7, #0x58]
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_0202ADD4:
	add r4, r4, #1
	cmp r4, #1
	ble _0202ADA0
	ldr r0, [r7, #0x24]
	mov r6, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _0202AE78 ; =DAT_0208c938
	mov r4, r6
_0202ADF8:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, r4]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0202AE5C
	bl sub_0200EB84
	cmp r0, #0
	beq _0202AE5C
	ldr r0, [r7, #0x1c]
	ldr r1, [r7, #0x50]
	ldr r0, [r0, r4]
	ldrh r0, [r0, #0x1a]
	cmp r1, r0
	bne _0202AE5C
	ldrh r0, [r5, #0xc]
	cmp r0, #2
	beq _0202AE5C
	mov r0, #0x14
	mul r2, r6, r0
	ldr r1, _0202AE78 ; =DAT_0208c938
	mov r0, #6
	ldrh r1, [r1, r2]
	strh r1, [r7, #0x54]
	strh r0, [r7, #0x58]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0202AE5C:
	ldr r0, [r7, #0x24]
	add r6, r6, #1
	cmp r6, r0
	add r4, r4, #0xc
	add r5, r5, #0x14
	blt _0202ADF8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0202AE78: .word DAT_0208c938

	arm_func_start sub_0202AE7C
sub_0202AE7C: ; 0x0202AE7C
	stmdb sp!, {r3, lr}
	ldr r1, [r0, #0x5c]
	ldr r2, _0202AED0 ; =0x88888889
	add ip, r1, #1
	smull r1, lr, r2, ip
	add lr, ip, lr
	mov r1, ip, lsr #0x1f
	add lr, r1, lr, asr #4
	mov r3, #0x1e
	smull r1, r2, r3, lr
	sub lr, ip, r1
	cmp lr, #0xf
	movlt r1, #1
	movge r1, #0
	str lr, [r0, #0x5c]
	cmp r1, #0
	movne r1, #1
	ldr r0, [r0, #0x2c]
	moveq r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0202AED0: .word 0x88888889
	arm_func_end sub_0202AE7C

	arm_func_start sub_0202AED4
sub_0202AED4: ; 0x0202AED4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	ldr r1, _0202AF58 ; =MAIN_BSS_020BA604
	add r6, sp, #0
	ldmia r1, {r2, r3}
	stmia r6, {r2, r3}
	mov sb, r0
	ldr r0, [sb, #0x24]
	mov r7, #0
	cmp r0, #0
	addle sp, sp, #8
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r8, r7
	mov r4, #1
	mov r5, r7
	arm_func_end sub_0202AED4
_0202AF10:
	ldr r1, [sb, #0x1c]
	mov r0, sb
	ldr r3, [r1, r8]
	mov r1, r7
	mov r2, r6
	str r5, [r3, #0x14]
	bl sub_0202B244
	cmp r0, #0
	ldrne r0, [sb, #0x1c]
	add r7, r7, #1
	ldrne r0, [r0, r8]
	add r8, r8, #0xc
	strne r4, [r0, #0x14]
	ldr r0, [sb, #0x24]
	cmp r7, r0
	blt _0202AF10
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0202AF58: .word MAIN_BSS_020BA604

	arm_func_start sub_0202AF5C
sub_0202AF5C: ; 0x0202AF5C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, [r5, #0x24]
	mov fp, #0
	mov r4, r1
	mov r2, fp
	cmp r0, #0
	ldr r3, _0202B138 ; =MAIN_BSS_020B26A0
	ble _0202AFAC
	mov r6, fp
	mov r1, fp
	arm_func_end sub_0202AF5C
_0202AF8C:
	ldr r0, [r5, #0x1c]
	add r2, r2, #1
	ldr r0, [r0, r6]
	add r6, r6, #0xc
	str r1, [r0, #0x14]
	ldr r0, [r5, #0x24]
	cmp r2, r0
	blt _0202AF8C
_0202AFAC:
	add r0, r3, #0x364
	add r1, r0, #0x7c00
	add r0, sp, #0
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r1, [r4, #4]
	mov r0, #0xf
	and r0, r0, r1, lsr #28
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	cmp r1, #3
	mov r0, #0
	addls pc, pc, r1, lsl #2
	b _0202B038
_0202AFE4: ; jump table
	b _0202AFF4 ; case 0
	b _0202B038 ; case 1
	b _0202AFFC ; case 2
	b _0202B01C ; case 3
_0202AFF4:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0202AFFC:
	ldr r1, [r5, #0x64]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4a0]
	ldr r1, [r1, #8]
	cmp r1, #0x45
	bge _0202B038
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0202B01C:
	ldr r1, [r5, #0x64]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4a0]
	ldr r1, [r1, #8]
	cmp r1, #0x37
	addlt sp, sp, #8
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0202B038:
	ldr r0, [r5, #0x24]
	mov sl, #0
	cmp r0, #0
	ble _0202B0F0
	ldr r8, _0202B13C ; =DAT_0208c938
	mov sb, sl
	mov r7, #1
	mov r6, sl
_0202B058:
	mov r0, r5
	mov r1, sl
	add r2, sp, #0
	bl sub_0202B244
	cmp r0, #0
	beq _0202B0D8
	ldrh r2, [r8]
	ldr r1, [r8, #4]
	ldr r0, [r8, #8]
	cmp r2, #0xc8
	ldr r2, [r5, #0x1c]
	movhs r1, #0
	ldr r2, [r2, sb]
	movhs r0, r1
	str r7, [r2, #0x14]
	ldr r3, [r4]
	ldr r2, [r4, #4]
	and r3, r1, r3
	and r1, r0, r2
	mov r0, #0
	cmp r1, r0
	cmpeq r3, r6
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x50]
	beq _0202B0CC
	ldr r0, [r0, sb]
	mov fp, r7
	strh r1, [r0, #0x1a]
	b _0202B0D8
_0202B0CC:
	ldr r0, [r0, sb]
	add r1, r1, #1
	strh r1, [r0, #0x1a]
_0202B0D8:
	ldr r0, [r5, #0x24]
	add sl, sl, #1
	cmp sl, r0
	add r8, r8, #0x14
	add sb, sb, #0xc
	blt _0202B058
_0202B0F0:
	cmp fp, #0
	bne _0202B12C
	cmp r0, #0
	mov r3, #0
	ble _0202B12C
	mov r2, r3
	mov r1, r3
_0202B10C:
	ldr r0, [r5, #0x1c]
	add r3, r3, #1
	ldr r0, [r0, r2]
	add r2, r2, #0xc
	str r1, [r0, #0x14]
	ldr r0, [r5, #0x24]
	cmp r3, r0
	blt _0202B10C
_0202B12C:
	mov r0, fp
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0202B138: .word MAIN_BSS_020B26A0
_0202B13C: .word DAT_0208c938

	arm_func_start sub_0202B140
sub_0202B140: ; 0x0202B140
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r2, _0202B23C ; =MAIN_BSS_020BA604
	add r4, sp, #0
	ldmia r2, {r2, r3}
	stmia r4, {r2, r3}
	mov sl, r0
	ldr r0, [sl, #0x24]
	mov fp, #0
	mov sb, r1
	mov r6, fp
	cmp r0, #0
	ble _0202B230
	ldr r8, _0202B240 ; =DAT_0208c938
	mov r7, fp
	mov r5, #1
	mov r4, fp
	arm_func_end sub_0202B140
_0202B184:
	ldr r1, [sl, #0x1c]
	mov r2, #0
	ldr r3, [r1, r7]
	mov r0, sl
	str r2, [r3, #0x14]
	mov r1, r6
	add r2, sp, #0
	bl sub_0202B244
	cmp r0, #0
	beq _0202B218
	ldr r0, [sl, #0x1c]
	ldr r0, [r0, r7]
	str r5, [r0, #0x14]
	ldrh r1, [r8]
	ldr r2, [sb]
	ldr r0, [sb, #4]
	and r3, r2, r5, lsl r1
	mov r2, #0
	mov r2, r2, lsl r1
	rsb ip, r1, #0x20
	orr r2, r2, r5, lsr ip
	sub r1, r1, #0x20
	orr r2, r2, r5, lsl r1
	and r1, r2, r0
	mov r0, #0
	cmp r1, r0
	cmpeq r3, r4
	ldr r0, [sl, #0x1c]
	ldr r1, [sl, #0x50]
	beq _0202B20C
	ldr r0, [r0, r7]
	mov fp, r5
	strh r1, [r0, #0x1a]
	b _0202B218
_0202B20C:
	ldr r0, [r0, r7]
	add r1, r1, #1
	strh r1, [r0, #0x1a]
_0202B218:
	ldr r0, [sl, #0x24]
	add r6, r6, #1
	cmp r6, r0
	add r7, r7, #0xc
	add r8, r8, #0x14
	blt _0202B184
_0202B230:
	mov r0, fp
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0202B23C: .word MAIN_BSS_020BA604
_0202B240: .word DAT_0208c938

	arm_func_start sub_0202B244
sub_0202B244: ; 0x0202B244
	ldr r0, [r0, #0x64]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a0]
	ldr r0, [r0, #8]
	cmp r0, #0x28
	mov r0, #0x14
	mul ip, r1, r0
	blt _0202B27C
	ldr r0, _0202B2C4 ; =DAT_0208c938
	ldrh r0, [r0, ip]
	cmp r0, #0x14
	bne _0202B290
	mov r0, #0
	bx lr
	arm_func_end sub_0202B244
_0202B27C:
	ldr r0, _0202B2C4 ; =DAT_0208c938
	ldrh r0, [r0, ip]
	cmp r0, #0x78
	moveq r0, #0
	bxeq lr
_0202B290:
	ldr r1, _0202B2C8 ; =DAT_0208c93c
	ldr r3, [r2]
	add r0, r1, ip
	ldr r1, [r1, ip]
	ldr r2, [r2, #4]
	ldr r0, [r0, #4]
	and r3, r3, r1
	and r1, r2, r0
	mov r0, #0
	cmp r1, r0
	cmpeq r3, r0
	movne r0, #1
	bx lr
	.align 2, 0
_0202B2C4: .word DAT_0208c938
_0202B2C8: .word DAT_0208c93c

	arm_func_start sub_0202B2CC
sub_0202B2CC: ; 0x0202B2CC
	stmdb sp!, {r4, lr}
	ldr r1, _0202B2F8 ; =MAIN_BSS_020B26A0
	mov r4, r0
	ldrh r1, [r1, #0x1a]
	bl sub_0202B338
	strh r0, [r4, #0x56]
	ldrh r2, [r4, #0x56]
	mov r0, r4
	mov r1, #1
	bl sub_0202B2FC
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202B2F8: .word MAIN_BSS_020B26A0
	arm_func_end sub_0202B2CC

	arm_func_start sub_0202B2FC
sub_0202B2FC: ; 0x0202B2FC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r1, r2
	add r2, sp, #4
	add r3, sp, #0
	mov r5, r0
	bl sub_0202B370
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl sub_0200EB28
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0202B2FC

	arm_func_start sub_0202B338
sub_0202B338: ; 0x0202B338
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl sub_02041D80
	ldr r1, [r4, #0x64]
	ldrb r0, [r0]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4a0]
	ldr r1, [r1, #8]
	cmp r1, #0x28
	ldmltia sp!, {r4, pc}
	cmp r0, #0x14
	moveq r0, #0x78
	ldmia sp!, {r4, pc}
	arm_func_end sub_0202B338

	arm_func_start sub_0202B370
sub_0202B370: ; 0x0202B370
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr ip, [r6, #0x10]
	mov r5, r2
	mov r4, r3
	cmp ip, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r2, #0
	str r2, [r5]
	mov r2, #0xe0
	str r2, [r4]
	bl sub_0202B458
	cmp r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	mov r1, #0x14
	mul r3, r0, r1
	ldr r1, _0202B448 ; =DAT_0208c944
	ldrh r1, [r1, r3]
	cmp r1, #2
	movne r1, #8
	movne r2, r1
	bne _0202B3D8
	ldr r1, _0202B44C ; =DAT_0208c946
	ldr r2, _0202B450 ; =DAT_0208c948
	ldrsh r1, [r1, r3]
	ldrsh r2, [r2, r3]
	arm_func_end sub_0202B370
_0202B3D8:
	mov r3, #0xc
	mul r3, r0, r3
	ldr r6, [r6, #0x1c]
	ldr r0, _0202B454 ; =0x000001FF
	ldr ip, [r6, r3]
	ldr r3, [ip, #4]
	ldrsh r6, [ip, #0xc]
	ldr lr, [r3, #4]
	ldrsh ip, [ip, #0xe]
	ldrh r3, [lr, #2]
	ldrh lr, [lr]
	and r0, r3, r0
	mov r3, r0, lsl #0x10
	and lr, lr, #0xff
	mov r0, lr, lsl #0x10
	add r2, r2, r0, asr #16
	add r1, r1, r3, asr #16
	add r0, r1, r6
	mov r1, r0, lsl #0x10
	add r2, r2, ip
	mov r0, r2, lsl #0x10
	mov r1, r1, asr #0x10
	mov r0, r0, asr #0x10
	and r1, r1, #0xff
	and r0, r0, #0xff
	str r1, [r5]
	str r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0202B448: .word DAT_0208c944
_0202B44C: .word DAT_0208c946
_0202B450: .word DAT_0208c948
_0202B454: .word 0x000001FF

	arm_func_start sub_0202B458
sub_0202B458: ; 0x0202B458
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, [r0, #0x24]
	mov r0, #0
	cmp r3, #0
	ble _0202B48C
	ldr r4, _0202B508 ; =DAT_0208c938
	arm_func_end sub_0202B458
_0202B470:
	ldrh r2, [r4]
	cmp r1, r2
	beq _0202B48C
	add r0, r0, #1
	cmp r0, r3
	add r4, r4, #0x14
	blt _0202B470
_0202B48C:
	cmp r0, r3
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r3, #0
	mov r0, #0
	ble _0202B4FC
	mov r2, r0, lsl r1
	rsb ip, r1, #0x20
	mov r6, #1
	orr r2, r2, r6, lsr ip
	sub ip, r1, #0x20
	orr r2, r2, r6, lsl ip
	ldr r7, _0202B508 ; =DAT_0208c938
	mov lr, r0
	mov ip, r0
_0202B4C4:
	ldrh r4, [r7]
	cmp r4, #0xc8
	bhs _0202B4EC
	ldr r5, [r7, #4]
	ldr r4, [r7, #8]
	and r5, r5, r6, lsl r1
	and r4, r2, r4
	cmp r4, lr
	cmpeq r5, ip
	bne _0202B4FC
_0202B4EC:
	add r0, r0, #1
	cmp r0, r3
	add r7, r7, #0x14
	blt _0202B4C4
_0202B4FC:
	cmp r0, r3
	mvnge r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0202B508: .word DAT_0208c938

	arm_func_start sub_0202B50C
sub_0202B50C: ; 0x0202B50C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r0
	cmp r2, #0
	mov r5, #3
	beq _0202B550
	cmp r2, #3
	beq _0202B554
	cmp r2, #4
	bne _0202B554
	ldr r0, [r4, #0x38]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x34]
	add sp, sp, #8
	str r1, [r0, #0x14]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0202B50C
_0202B550:
	mov r5, #4
_0202B554:
	add r2, sp, #4
	add r3, sp, #0
	mov r0, r4
	bl sub_0202B370
	cmp r5, #4
	moveq r0, #3
	movne r0, #4
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x28]
	mov r1, #0
	str r1, [r0, #0x14]
	add r1, r4, r5, lsl #2
	ldr r0, [r1, #0x28]
	mov r2, #1
	str r2, [r0, #0x14]
	ldr r0, [r1, #0x28]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl sub_0200EB28
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0202B5A8
sub_0202B5A8: ; 0x0202B5A8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_0202AD78
	ldrsh r0, [r6, #0x58]
	strh r0, [r5]
	ldrh r0, [r6, #0x54]
	strh r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0202B5A8

	arm_func_start sub_0202B5D0
sub_0202B5D0: ; 0x0202B5D0
	ldr r2, _0202B5F0 ; =PTR_LAB_0208cc6c
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	sub r1, r1, #3
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0202B5F0: .word PTR_LAB_0208cc6c
	arm_func_end sub_0202B5D0

	arm_func_start sub_0202B5F4
sub_0202B5F4: ; 0x0202B5F4
	stmdb sp!, {r4, lr}
	ldr r1, _0202B618 ; =PTR_LAB_0208cc6c
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202B618: .word PTR_LAB_0208cc6c
	arm_func_end sub_0202B5F4

	arm_func_start sub_0202B61C
sub_0202B61C: ; 0x0202B61C
	stmdb sp!, {r4, lr}
	ldr r1, _0202B648 ; =PTR_LAB_0208cc6c
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202B648: .word PTR_LAB_0208cc6c
	arm_func_end sub_0202B61C

	arm_func_start sub_0202B64C
sub_0202B64C: ; 0x0202B64C
	stmdb sp!, {r4, lr}
	ldr r1, _0202B670 ; =PTR_LAB_0208cc6c
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202B670: .word PTR_LAB_0208cc6c
	arm_func_end sub_0202B64C

	arm_func_start sub_0202B674
sub_0202B674: ; 0x0202B674
	stmdb sp!, {r4, lr}
	ldr r1, _0202B6EC ; =sCardBackupInfo
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0202B6C0
	bl CARD_Init
	bl OS_GetLockID
	mvn r1, #2
	str r0, [r4, #8]
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #1
	str r0, [r4, #4]
	arm_func_end sub_0202B674
_0202B6C0:
	mov r0, r4
	bl sub_0202B72C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0202B6EC: .word sCardBackupInfo

	arm_func_start sub_0202B6F0
sub_0202B6F0: ; 0x0202B6F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0202B724
	ldr r0, [r4, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl OS_ReleaseLockID
	mov r0, #0
	str r0, [r4, #4]
	sub r0, r0, #3
	str r0, [r4, #8]
	arm_func_end sub_0202B6F0
_0202B724:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start sub_0202B72C
sub_0202B72C: ; 0x0202B72C
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_LockBackup
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #1
	moveq r0, #1
	movne r0, r4
	cmp r0, #0
	beq _0202B79C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #6
	str r1, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	add r1, sp, #0x14
	mov r3, r0
	str r0, [sp, #0x10]
	bl CARDi_RequestStreamCommand
	mov r4, r0
	b _0202B7E8
	arm_func_end sub_0202B72C
_0202B79C:
	bl CARD_GetCurrentBackupType
	and r0, r0, #0xff
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _0202B7E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #6
	str r1, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	add r1, sp, #0x14
	mov r3, r0
	str r0, [sp, #0x10]
	bl CARDi_RequestStreamCommand
	mov r4, r0
_0202B7E8:
	bl CARD_GetResultCode
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_UnlockBackup
	mov r0, r4
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
