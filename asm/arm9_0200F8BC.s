    .include "macros.inc"
    .include "include/arm9.inc"
    .include "include/arm9_0200F8BC.inc"

    .text

    ; Non-matching decompilation in CPowerManage.cpp
	arm_func_start _ZN12CPowerManage12sub_0200F8BCEv
_ZN12CPowerManage12sub_0200F8BCEv: ; 0x0200F8BC
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r1, #1
	movne r1, #0
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {pc}
	ldr r1, _0200F9D4 ; =0x027FFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	beq _0200F9B4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0200F910
	cmp r0, #1
	beq _0200F994
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	arm_func_end _ZN12CPowerManage12sub_0200F8BCEv
_0200F910:
	add r0, sp, #0x10
	bl RTC_GetTime
	add r0, sp, #0
	bl RTC_GetDate
	ldr r0, _0200F9D8 ; =MAIN_BSS_020B26A0
	add r1, sp, #0x10
	add r2, sp, #0
	bl sub_0201630C
	mov r1, #0
	mov r2, r1
	mov r0, #0xc
	bl PM_GoSleepMode
	add r0, sp, #0x10
	bl RTC_GetTime
	add r0, sp, #0
	bl RTC_GetDate
	ldr r1, [sp, #0x10]
	ldr r0, _0200F9DC ; =MAIN_BSS_020BA6A0
	ldr r2, [sp, #0x14]
	str r1, [r0, #0xb94]
	str r2, [r0, #0xb98]
	ldr r1, [sp, #0x18]
	ldr r2, [sp]
	str r1, [r0, #0xb9c]
	str r2, [r0, #0xb84]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	str r1, [r0, #0xb88]
	ldr r1, [sp, #0xc]
	str r2, [r0, #0xb8c]
	str r1, [r0, #0xb90]
	add sp, sp, #0x1c
	ldmia sp!, {pc}
_0200F994:
	bl PM_GetLCDPower
	cmp r0, #1
	addne sp, sp, #0x1c
	ldmneia sp!, {pc}
	mov r0, #0
	bl PM_SetLCDPower
	add sp, sp, #0x1c
	ldmia sp!, {pc}
_0200F9B4:
	bl PM_GetLCDPower
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {pc}
	mov r0, #1
	bl PM_SetLCDPower
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	.align 2, 0
_0200F9D4: .word 0x027FFFA8
_0200F9D8: .word MAIN_BSS_020B26A0
_0200F9DC: .word MAIN_BSS_020BA6A0
