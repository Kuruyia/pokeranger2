    .include "macros.inc"
    .include "include/arm9_02006764.inc"

    .text

	arm_func_start sub_02006764
sub_02006764: ; 0x02006764
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x80
	ldr r7, [sp, #0xa8]
	ldr r0, [sp, #0xb8]
	ldr r5, [sp, #0xac]
	sub r4, r0, r7
	ldr r8, [sp, #0xbc]
	ldr fp, [sp, #0xb0]
	sub r3, r8, r5
	sub r2, fp, r7
	ldr r6, [sp, #0xb4]
	ldr r0, [sp, #0xc8]
	sub r1, r6, r5
	cmp r0, #8
	movgt r0, #8
	str r7, [sp, #0x50]
	str r7, [sp, #0x40]
	str r5, [sp, #0x54]
	str r4, [sp, #0x48]
	str r4, [sp, #0x78]
	str r3, [sp, #0x4c]
	str r3, [sp, #0x7c]
	str r5, [sp, #0x44]
	str r2, [sp, #0x38]
	str r2, [sp, #0x70]
	str r1, [sp, #0x3c]
	str r1, [sp, #0x74]
	ldr sb, [sp, #0xc4]
	ldr r7, [sp, #0xc0]
	mov r4, #0
	cmp r0, #0
	mov r2, #0
	ble _02006800
	mov r1, #1
	arm_func_end sub_02006764
_020067F0:
	orr r4, r4, r1, lsl r2
	add r2, r2, #1
	cmp r2, r0
	blt _020067F0
_02006800:
	add r0, sp, #0x70
	add r1, sp, #0x78
	bl _Z12sub_020072C4P7Point2DS0_
	cmp r0, #0
	bge _02006860
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl _Z12sub_02007254ll
	mvn r1, r4
	add r0, r0, r4
	and r0, r1, r0
	cmp r0, r7
	bge _02006ACC
	cmp sb, #0
	beq _0200684C
	ldr r1, [sp, #0xa8]
	ldr r0, [sp, #0xac]
	str r1, [sb]
	str r0, [sb, #4]
_0200684C:
	add sp, sp, #0x80
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_02006860:
	ldr sl, [sp, #0xb4]
	ldr r1, [sp, #0xb0]
	sub ip, r8, sl
	ldr r2, [sp, #0xb8]
	ldr r0, [sp, #0xa8]
	sub lr, r2, r1
	sub r3, r0, r1
	ldr r5, [sp, #0xac]
	add r0, sp, #0x70
	sub r2, r5, sl
	str r1, [sp]
	str r1, [sp, #0x30]
	str r1, [sp, #0x20]
	add r1, sp, #0x78
	str sl, [sp, #4]
	str sl, [sp, #0x34]
	str sl, [sp, #0x24]
	str lr, [sp, #0x28]
	str ip, [sp, #0x2c]
	str lr, [sp, #0x68]
	str ip, [sp, #0x6c]
	str lr, [sp, #0x78]
	str ip, [sp, #0x7c]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x60]
	str r2, [sp, #0x64]
	str r3, [sp, #0x70]
	str r2, [sp, #0x74]
	bl _Z12sub_020072C4P7Point2DS0_
	cmp r0, #0
	bge _0200692C
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl _Z12sub_02007254ll
	mvn r1, r4
	add r0, r0, r4
	and r0, r1, r0
	cmp r0, r7
	bge _02006ACC
	cmp sb, #0
	beq _02006918
	ldr r1, [sp, #0xb0]
	ldr r0, [sp, #0xb4]
	str r1, [sb]
	str r0, [sb, #4]
_02006918:
	add sp, sp, #0x80
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_0200692C:
	ldr r0, [sp, #0x70]
	cmp r0, #0
	bne _02006970
	ldr r1, [sp, #0xb8]
	ldr r0, [sp, #0xa8]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp r0, r7
	bge _02006ACC
	cmp sb, #0
	ldrne r0, [sp, #0xa8]
	add sp, sp, #0x80
	stmneia sb, {r0, r8}
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_02006970:
	ldr r1, [sp, #0x74]
	cmp r1, #0
	bne _020069AC
	subs r0, r8, r5
	rsbmi r0, r0, #0
	cmp r0, r7
	bge _02006ACC
	cmp sb, #0
	ldrne r0, [sp, #0xb8]
	add sp, sp, #0x80
	stmneia sb, {r0, r5}
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020069AC:
	ldr r3, [sp, #0x78]
	ldr r2, [sp, #0x7c]
	smull r8, r5, r1, r3
	smull r3, r2, r0, r2
	mov r8, r8, lsr #0xc
	mov r3, r3, lsr #0xc
	orr r8, r8, r5, lsl #20
	orr r3, r3, r2, lsl #20
	subs r5, r8, r3
	rsbmi r5, r5, #0
	bl _Z12sub_02007254ll
	mov r2, r0
	mov r0, r5, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r5, lsr #20
	mov r0, r5, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	mvn r1, r4
	add r0, r0, r4
	and r4, r1, r0
	cmp r4, r7
	bge _02006ACC
	cmp sb, #0
	beq _02006AB8
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl _Z12sub_02007254ll
	smull r3, r2, r0, r0
	smull r1, r0, r4, r4
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	sub r0, r3, r1
	bl FX_Sqrt
	mov r4, r0
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	bl _Z12sub_02007254ll
	mov r2, r0
	mov r0, r4, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r4, lsr #20
	mov r0, r4, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	ldr r2, [sp, #0x70]
	ldr r1, [sp, #0x74]
	smull r4, r3, r2, r0
	smull r2, r0, r1, r0
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r1, fp, r4
	add r0, r6, r2
	str r4, [sp, #0x70]
	str r4, [sp, #0x10]
	str r2, [sp, #0x74]
	str r2, [sp, #0x14]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x58]
	str r1, [sb]
	str r0, [sb, #4]
	str r0, [sp, #0x5c]
_02006AB8:
	add sp, sp, #0x80
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_02006ACC:
	mov r0, #0
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
