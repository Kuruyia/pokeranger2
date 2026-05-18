    .include "macros.inc"
    .include "include/arm9_02006350.inc"

    .text

	arm_func_start sub_02006350
sub_02006350: ; 0x02006350
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r0, [sp, #0x54]
	ldr r4, [sp, #0x50]
	cmp r0, #0
	add r0, sp, #0x30
	bne _02006428
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r2, [sp]
	str r1, [sp, #4]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006AE0
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	str r1, [sp]
	add r1, sp, #0x30
	mov r5, r0
	str r2, [sp, #4]
	ldmia r1, {r0, r1, r2, r3}
	bl sub_02006AE0
	mul r0, r5, r0
	mov r0, r0, lsl #0x18
	movs r0, r0, asr #0x18
	addpl sp, sp, #0xc
	movpl r0, #0
	ldmplia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addpl sp, sp, #0x10
	bxpl lr
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	str r2, [sp]
	add r0, sp, #0x40
	str r1, [sp, #4]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006AE0
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	str r1, [sp]
	add r1, sp, #0x40
	mov r5, r0
	str r2, [sp, #4]
	ldmia r1, {r0, r1, r2, r3}
	bl sub_02006AE0
	mul r0, r5, r0
	mov r0, r0, lsl #0x18
	movs r0, r0, asr #0x18
	bmi _020064E4
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02006350
_02006428:
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r2, [sp]
	str r1, [sp, #4]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006AE0
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	str r1, [sp]
	add r1, sp, #0x30
	mov r5, r0
	str r2, [sp, #4]
	ldmia r1, {r0, r1, r2, r3}
	bl sub_02006AE0
	mul r0, r5, r0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	cmp r0, #0
	addgt sp, sp, #0xc
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	str r2, [sp]
	add r0, sp, #0x40
	str r1, [sp, #4]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006AE0
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	str r1, [sp]
	add r1, sp, #0x40
	mov r5, r0
	str r2, [sp, #4]
	ldmia r1, {r0, r1, r2, r3}
	bl sub_02006AE0
	mul r0, r5, r0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	cmp r0, #0
	addgt sp, sp, #0xc
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
_020064E4:
	cmp r4, #0
	beq _020065FC
	ldr r5, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x30]
	ldr r1, [sp, #0x38]
	sub r8, r0, r5
	sub r2, r3, r1
	smull r1, r0, r2, r5
	smull r3, fp, r8, r3
	mov r5, r3, lsr #0xc
	str r0, [sp, #8]
	mov r3, r1, lsr #0xc
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x4c]
	ldr r6, [sp, #0x40]
	sub r7, r1, r0
	ldr r1, [sp, #0x48]
	smull sb, lr, r7, r6
	sub r1, r6, r1
	smull r0, r6, r1, r0
	mov ip, r0, lsr #0xc
	mov sb, sb, lsr #0xc
	smull r0, sl, r2, r7
	mov r0, r0, lsr #0xc
	orr sb, sb, lr, lsl #20
	orr ip, ip, r6, lsl #20
	add r6, sb, ip
	ldr sb, [sp, #8]
	orr r5, r5, fp, lsl #20
	orr r3, r3, sb, lsl #20
	add r3, r5, r3
	rsb r5, r3, #0
	smull r3, sb, r5, r1
	mov r3, r3, lsr #0xc
	orr r0, r0, sl, lsl #20
	orr r3, r3, sb, lsl #20
	smull sl, sb, r1, r8
	mov r1, sl, lsr #0xc
	orr r1, r1, sb, lsl #20
	sub sb, r0, r1
	rsb r6, r6, #0
	smull r1, r0, r6, r2
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r2, r3, r1
	mov r0, r2, asr #0x1f
	mov r1, r0, lsl #0xc
	mov sl, sb, asr #0x1f
	orr r1, r1, r2, lsr #20
	mov r0, r2, lsl #0xc
	mov r2, sb
	mov r3, sl
	bl _ll_div
	smull r2, r1, r7, r5
	smull r6, r3, r8, r6
	mov r5, r6, lsr #0xc
	mov r2, r2, lsr #0xc
	orr r5, r5, r3, lsl #20
	orr r2, r2, r1, lsl #20
	sub r5, r5, r2
	str r0, [r4]
	mov r0, r5, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, sb
	mov r3, sl
	orr r1, r1, r5, lsr #20
	mov r0, r5, lsl #0xc
	bl _ll_div
	str r0, [r4, #4]
_020065FC:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02006610
sub_02006610: ; 0x02006610
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x20]
	cmp r1, r2
	blt _02006668
	ldr r0, [sp, #0x30]
	cmp r1, r0
	ldrlt r0, [sp, #0x38]
	cmplt r1, r0
	blt _02006654
	ldr r0, [sp, #0x30]
	cmp r2, r0
	ldrgt r0, [sp, #0x38]
	cmpgt r2, r0
	ble _020066A8
	arm_func_end sub_02006610
_02006654:
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_02006668:
	ldr r0, [sp, #0x30]
	cmp r2, r0
	ldrlt r0, [sp, #0x38]
	cmplt r2, r0
	blt _02006694
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x30]
	cmp r1, r0
	ldrgt r0, [sp, #0x38]
	cmpgt r1, r0
	ble _020066A8
_02006694:
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_020066A8:
	ldr r3, [sp, #0x2c]
	ldr r1, [sp, #0x24]
	cmp r1, r3
	blt _020066F0
	ldr r2, [sp, #0x34]
	cmp r1, r2
	ldrlt r0, [sp, #0x3c]
	cmplt r1, r0
	blt _020066DC
	cmp r3, r2
	ldrgt r0, [sp, #0x3c]
	cmpgt r3, r0
	ble _02006728
_020066DC:
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_020066F0:
	ldr r2, [sp, #0x34]
	cmp r3, r2
	ldrlt r0, [sp, #0x3c]
	cmplt r3, r0
	blt _02006714
	cmp r1, r2
	ldrgt r0, [sp, #0x3c]
	cmpgt r1, r0
	ble _02006728
_02006714:
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_02006728:
	add r0, sp, #0x30
	mov ip, sp
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldr r1, [sp, #0x40]
	add r0, sp, #0x20
	str r1, [sp, #0x10]
	mov ip, #0
	ldmia r0, {r0, r1, r2, r3}
	str ip, [sp, #0x14]
	bl sub_02006350
	add sp, sp, #0x18
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr

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
	bl sub_020072C4
	cmp r0, #0
	bge _02006860
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_02007254
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
	bl sub_020072C4
	cmp r0, #0
	bge _0200692C
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_02007254
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
	bl sub_02007254
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
	bl sub_02007254
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
	bl sub_02007254
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

	arm_func_start sub_02006AE0
sub_02006AE0: ; 0x02006AE0
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	ldr r4, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	ldr ip, [sp, #0x10]
	ldr r3, [sp, #8]
	sub r2, r2, r4
	sub ip, ip, r3
	smull r2, lr, ip, r2
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov ip, r2, lsr #0xc
	sub r1, r1, r4
	sub r0, r0, r3
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr ip, ip, lr, lsl #20
	orr r1, r1, r0, lsl #20
	subs r0, ip, r1
	movmi r0, #1
	ldmmiia sp!, {r4, lr}
	addmi sp, sp, #0x10
	bxmi lr
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	rsb r0, r0, #0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02006AE0
