    .include "macros.inc"
    .include "include/arm9_0200120C.inc"

    .text

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
