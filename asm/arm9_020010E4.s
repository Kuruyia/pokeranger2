    .include "macros.inc"
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
	bl _Z12sub_02001184v
	ldr r1, _02001180 ; =MAIN_BSS_0208F300
	mov r0, #9
	ldr r1, [r1, #4]
	bl _Z14Scene_LoadByIDmP5CGame
	ldmia sp!, {r4, pc}
	.align 2, 0
_02001180: .word MAIN_BSS_0208F300
