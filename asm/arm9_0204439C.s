    .include "macros.inc"
    .include "include/arm9_0204439C.inc"

    .text

	arm_func_start sub_0204439C
sub_0204439C: ; 0x0204439C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020443FC ; =DAT_0208e248
	ldr r5, _02044400 ; =0xCCCCCCCD
	mov r2, #1
	mov r3, #5
	mov r6, #0
	mov r4, #0x28
	arm_func_end sub_0204439C
_020443B8:
	umull ip, lr, r1, r5
	mov lr, lr, lsr #5
	umull ip, lr, r4, lr
	sub lr, r1, ip
	ldrsb ip, [r7, lr]
	mov lr, r1
	cmp ip, #0
	strb ip, [r0, r3]
	umull ip, r1, lr, r5
	moveq r2, r6
	mov r1, r1, lsr #5
	subs r3, r3, #1
	bpl _020443B8
	mov r1, #0
	strb r1, [r0, #6]
	mov r0, r2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020443FC: .word DAT_0208e248
_02044400: .word 0xCCCCCCCD

	arm_func_start sub_02044404
sub_02044404: ; 0x02044404
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	b _02044420
	arm_func_end sub_02044404
_02044418:
	add r4, r4, #1
	add r5, r5, #6
_02044420:
	cmp r4, #2
	ldmgeia sp!, {r4, r5, r6, pc}
	ldr r1, [r6, r4, lsl #2]
	mov r0, r5
	bl sub_0204439C
	cmp r0, #0
	bne _02044418
	ldmia sp!, {r4, r5, r6, pc}
