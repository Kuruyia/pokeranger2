    .include "macros.inc"
    .include "include/arm9.inc"
    .include "include/arm9_020010E4.inc"

    .text

	arm_func_start sub_020010E4
sub_020010E4: ; 0x020010E4
	ldr r0, _020010F4 ; =MAIN_BSS_0208F300
	mov r1, #1
	str r1, [r0]
	bx lr
	.align 2, 0
_020010F4: .word MAIN_BSS_0208F300
	arm_func_end sub_020010E4

	arm_func_start sub_020010F8
sub_020010F8: ; 0x020010F8
	stmdb sp!, {r4, lr}
	ldr r0, _02001180 ; =MAIN_BSS_0208F300
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xc]
	cmp r4, #0
	beq _02001138
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	cmp r4, #0
	beq _02001138
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_020010F8
_02001138:
	ldr r0, _02001180 ; =MAIN_BSS_0208F300
	ldr r0, [r0, #4]
	bl sub_0200FB28
	ldr r0, _02001180 ; =MAIN_BSS_0208F300
	mov r2, #1
	ldr r0, [r0, #4]
	mov r1, #0
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4a4]
	add r0, r0, #0x8000
	str r2, [r0, #0xb68]
	str r1, [r0, #0xb6c]
	bl sub_02001184
	ldr r1, _02001180 ; =MAIN_BSS_0208F300
	mov r0, #9
	ldr r1, [r1, #4]
	bl _Z14Scene_LoadByIDmP5CGame
	ldmia sp!, {r4, pc}
	.align 2, 0
_02001180: .word MAIN_BSS_0208F300

	arm_func_start sub_02001184
sub_02001184: ; 0x02001184
	stmdb sp!, {r3, lr}
	mov r1, #0x4000000
	ldr r3, [r1]
	ldr r2, _02001204 ; =0xFFCFFFEF
	add r0, r1, #0x1000
	and r3, r3, r2
	orr r3, r3, #0x10
	str r3, [r1]
	ldr ip, [r0]
	ldr r3, _02001208 ; =MAIN_BSS_0208F300
	and r2, ip, r2
	orr r2, r2, #0x10
	str r2, [r0]
	ldr ip, [r1]
	ldr r2, [r1]
	and ip, ip, #0x1f00
	mov lr, ip, lsr #8
	bic ip, r2, #0x1f00
	orr r2, lr, #0x10
	orr r2, ip, r2, lsl #8
	str r2, [r1]
	ldr r2, [r0]
	ldr r1, [r0]
	and r2, r2, #0x1f00
	mov ip, r2, lsr #8
	bic r2, r1, #0x1f00
	orr r1, ip, #0x10
	orr r1, r2, r1, lsl #8
	str r1, [r0]
	ldr r0, [r3, #4]
	bl sub_02010448
	ldmia sp!, {r3, pc}
	.align 2, 0
_02001204: .word 0xFFCFFFEF
_02001208: .word MAIN_BSS_0208F300
	arm_func_end sub_02001184

	arm_func_start sub_0200120C
sub_0200120C: ; 0x0200120C
	bx lr
	arm_func_end sub_0200120C

	arm_func_start sub_02001210
sub_02001210: ; 0x02001210
	stmdb sp!, {r3, lr}
	ldr r0, _02001240 ; =MAIN_BSS_0208F300
	mov r2, #0xfa00
	ldr ip, [r0, #8]
	ldr r3, [r0, #0xc]
	umull r0, r1, ip, r2
	mla r1, r3, r2, r1
	ldr r2, _02001244 ; =0x000082EA
	mov r3, #0
	bl _ll_udiv
	bl sub_0200120C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02001240: .word MAIN_BSS_0208F300
_02001244: .word 0x000082EA
	arm_func_end sub_02001210
