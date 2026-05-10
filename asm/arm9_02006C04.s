    .include "macros.inc"
    .include "include/arm9_02006C04.inc"

    .text

	arm_func_start sub_02006C04
sub_02006C04: ; 0x02006C04
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x70
	mov r1, #1
	add r0, sp, #0x98
	str r1, [sp, #8]
	sub r4, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0x88
	ldr r5, [sp, #0xa8]
	ldmia r4, {r2, r3}
	ldmia r0, {r0, r1}
	bl sub_02006000
	cmp r0, #0
	beq _02006C70
	cmp r5, #0
	beq _02006C5C
	ldr r1, [sp, #0x88]
	ldr r0, [sp, #0x8c]
	str r1, [r5]
	str r0, [r5, #4]
	arm_func_end sub_02006C04
_02006C5C:
	add sp, sp, #0x70
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
_02006C70:
	add lr, sp, #0x88
	add r4, sp, #0x20
	ldmia lr, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r1, [sp, #0xa0]
	ldr r0, [sp, #0x98]
	ldr r2, [sp, #0xa4]
	sub ip, r0, r1, asr #1
	add r7, r0, r1, asr #1
	ldr r1, [sp, #0x9c]
	add r0, sp, #0x60
	sub r8, r1, r2, asr #1
	add r6, r1, r2, asr #1
	mov r4, sp
	str ip, [sp, #0x60]
	str r8, [sp, #0x64]
	str r7, [sp, #0x68]
	str r8, [sp, #0x6c]
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, sp, #0x18
	str r0, [sp, #0x10]
	mov r4, #1
	str r4, [sp, #0x14]
	ldmia lr, {r0, r1, r2, r3}
	str ip, [sp, #0x50]
	str r6, [sp, #0x54]
	str r7, [sp, #0x58]
	str r6, [sp, #0x5c]
	str ip, [sp, #0x40]
	str ip, [sp, #0x48]
	str r8, [sp, #0x44]
	str r8, [sp, #0x34]
	str r6, [sp, #0x4c]
	str r6, [sp, #0x3c]
	str r7, [sp, #0x30]
	str r7, [sp, #0x38]
	mov r4, #0
	bl sub_02006350
	cmp r0, #0
	beq _02006D28
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r4, #1
_02006D28:
	add r0, sp, #0x50
	mov ip, sp
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	add r0, sp, #0x18
	str r0, [sp, #0x10]
	mov r1, #1
	add r0, sp, #0x20
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006350
	cmp r0, #0
	beq _02006D70
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r4, #1
_02006D70:
	add r0, sp, #0x40
	mov ip, sp
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	add r0, sp, #0x18
	str r0, [sp, #0x10]
	mov r1, #1
	add r0, sp, #0x20
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006350
	cmp r0, #0
	beq _02006DB8
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r4, #1
_02006DB8:
	add r0, sp, #0x30
	mov ip, sp
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	add r0, sp, #0x18
	str r0, [sp, #0x10]
	mov r1, #1
	add r0, sp, #0x20
	str r1, [sp, #0x14]
	ldmia r0, {r0, r1, r2, r3}
	bl sub_02006350
	cmp r0, #0
	beq _02006E00
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r4, #1
_02006E00:
	cmp r4, #0
	cmpne r5, #0
	beq _02006E1C
	ldr r0, [sp, #0x28]
	str r0, [r5]
	ldr r0, [sp, #0x2c]
	str r0, [r5, #4]
_02006E1C:
	mov r0, r4
	add sp, sp, #0x70
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02006E30
sub_02006E30: ; 0x02006E30
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x4c]
	subs r5, r1, r0
	ldr r4, [sp, #0x40]
	rsbmi r5, r5, #0
	add r0, r4, r3, asr #1
	ldr r2, [sp, #0x48]
	ldr r1, [sp, #0x50]
	cmp r5, r0
	bge _02006E80
	ldr r0, [sp, #0x3c]
	add ip, r4, r1, asr #1
	subs r5, r0, r2
	rsbmi r5, r5, #0
	cmp r5, ip
	blt _02006E94
	arm_func_end sub_02006E30
_02006E80:
	add sp, sp, #0x24
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_02006E94:
	ldr lr, [sp, #0x44]
	ldr ip, [sp, #0x38]
	sub r6, lr, r3, asr #1
	mov r4, #0
	cmp ip, lr
	add r3, lr, r3, asr #1
	mov r5, r4
	sub lr, r2, r1, asr #1
	add r7, r2, r1, asr #1
	sublt r1, r6, ip
	movlt r4, #1
	subge r1, ip, r3
	cmp r0, r2
	sublt r0, lr, r0
	subge r0, r0, r7
	movlt r5, #1
	cmp r0, #0
	cmpge r1, r0
	bge _02006F18
	cmp r1, #0
	blt _02006F18
	cmp r4, #0
	beq _02006F04
	str r6, [sp, #0x1c]
	str r6, [sp, #0x14]
	str lr, [sp, #0x18]
	str r7, [sp, #0x20]
	b _02006F44
_02006F04:
	str r3, [sp, #0x1c]
	str r3, [sp, #0x14]
	str lr, [sp, #0x18]
	str r7, [sp, #0x20]
	b _02006F44
_02006F18:
	cmp r5, #0
	beq _02006F34
	str r6, [sp, #0x14]
	str r3, [sp, #0x1c]
	str lr, [sp, #0x20]
	str lr, [sp, #0x18]
	b _02006F44
_02006F34:
	str r6, [sp, #0x14]
	str r3, [sp, #0x1c]
	str r7, [sp, #0x20]
	str r7, [sp, #0x18]
_02006F44:
	add r0, sp, #0x38
	mov r3, sp
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [sp, #0x54]
	add r0, sp, #0x14
	str r1, [sp, #0xc]
	ldr ip, [sp, #0x58]
	ldmia r0, {r0, r1, r2, r3}
	str ip, [sp, #0x10]
	bl sub_02006764
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02006F80
sub_02006F80: ; 0x02006F80
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	ldr r5, [sp, #0x24]
	subs r2, r1, r0
	ldr r0, [sp, #0x18]
	rsbmi r2, r2, #0
	add r1, r0, r5, asr #1
	ldr lr, [sp, #0x20]
	ldr ip, [sp, #0x14]
	ldr r4, [sp, #0x28]
	cmp r2, r1
	bge _02006FCC
	subs r2, ip, lr
	rsbmi r2, r2, #0
	add r1, r0, r4, asr #1
	cmp r2, r1
	blt _02006FDC
	arm_func_end sub_02006F80
_02006FCC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_02006FDC:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	sub r3, r2, r5, asr #1
	cmp r1, r3
	blt _02006FFC
	add r3, r2, r5, asr #1
	cmp r1, r3
	movle r3, r1
_02006FFC:
	sub r2, lr, r4, asr #1
	cmp ip, r2
	blt _02007014
	add r2, lr, r4, asr #1
	cmp ip, r2
	movle r2, ip
_02007014:
	ldr r1, [sp, #0x10]
	subs r1, r1, r3
	rsbmi r1, r1, #0
	subs r2, ip, r2
	rsbmi r2, r2, #0
	smull r4, lr, r1, r1
	smull ip, r3, r2, r2
	smull r2, r1, r0, r0
	mov r4, r4, lsr #0xc
	mov ip, ip, lsr #0xc
	mov r0, r2, lsr #0xc
	orr r4, r4, lr, lsl #20
	orr ip, ip, r3, lsl #20
	add r2, r4, ip
	orr r0, r0, r1, lsl #20
	cmp r2, r0
	movgt r0, #0
	movle r0, #1
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02007068
sub_02007068: ; 0x02007068
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r2
	mov r1, r3
	bl sub_02007210
	rsb r1, r0, #0x1000
	smull r3, r2, r5, r1
	smull r1, r0, r4, r0
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02007068

	arm_func_start sub_020070A4
sub_020070A4: ; 0x020070A4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	mov r6, r0
	ldr r1, [sp, #0x18]
	mov r0, r3
	mov r4, r2
	bl sub_02007210
	mov r1, r0, asr #0x1f
	mov ip, r1, lsl #0xd
	mov lr, r0, lsl #0xd
	rsb r1, r0, #0x1000
	smull r8, r7, r1, r1
	smull r3, r2, r0, r0
	mov r8, r8, lsr #0xc
	orr r8, r8, r7, lsl #20
	smull r8, r7, r6, r8
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smull r3, r2, r4, r3
	mov r4, r8, lsr #0xc
	orr r4, r4, r7, lsl #20
	mov r3, r3, lsr #0xc
	orr ip, ip, r0, lsr #19
	add r6, r4, #0
	mov r0, lr, lsr #0xc
	orr r0, r0, ip, lsl #20
	smull r4, r0, r1, r0
	mov r1, r4, lsr #0xc
	orr r1, r1, r0, lsl #20
	smull r1, r0, r5, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r6, r1
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020070A4

	arm_func_start sub_02007134
sub_02007134: ; 0x02007134
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	mov r5, r2
	mov r4, r3
	bl sub_02007210
	rsb r1, r0, #0x1000
	smull lr, ip, r1, r1
	smull r3, r2, r0, r0
	mov r8, lr, lsr #0xc
	orr r8, r8, ip, lsl #20
	mov lr, r3, lsr #0xc
	orr lr, lr, r2, lsl #20
	smull r2, r3, r0, r8
	mov r2, r2, lsr #0xc
	orr r2, r2, r3, lsl #20
	smull ip, r3, r1, r8
	mov ip, ip, lsr #0xc
	orr ip, ip, r3, lsl #20
	smull ip, r3, r7, ip
	mov r7, ip, lsr #0xc
	orr r7, r7, r3, lsl #20
	add r3, r7, #0
	smull ip, r7, r1, lr
	mov r1, ip, lsr #0xc
	orr r1, r1, r7, lsl #20
	smull ip, r7, r0, lr
	mov r0, ip, lsr #0xc
	orr r0, r0, r7, lsl #20
	smull r7, r0, r4, r0
	mov r4, r7, lsr #0xc
	orr r4, r4, r0, lsl #20
	mov r7, r2, asr #0x1f
	mov r0, #0x3000
	umull lr, ip, r2, r0
	mla ip, r7, r0, ip
	mov r2, lr, lsr #0xc
	orr r2, r2, ip, lsl #20
	smull r7, r2, r6, r2
	mov r6, r7, lsr #0xc
	orr r6, r6, r2, lsl #20
	add r7, r3, r6
	mov r2, r1, asr #0x1f
	umull r6, r3, r1, r0
	mla r3, r2, r0, r3
	mov r0, r6, lsr #0xc
	orr r0, r0, r3, lsl #20
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r7, r1
	add r0, r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02007134

	arm_func_start sub_02007210
sub_02007210: ; 0x02007210
	stmdb sp!, {r3, lr}
	cmp r0, #0
	mov r2, r1
	movle r0, #0
	ldmleia sp!, {r3, pc}
	cmp r0, r2
	movge r0, #0x1000
	ldmgeia sp!, {r3, pc}
	mov r3, r0, lsl #0xc
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, r2, lsl #0xc
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	ldmia sp!, {r3, pc}
	arm_func_end sub_02007210

	arm_func_start sub_02007254
sub_02007254: ; 0x02007254
	stmdb sp!, {r4, lr}
	movs r4, r0
	rsbmi r4, r4, #0
	cmp r1, #0
	mov r0, r4
	rsblt r1, r1, #0
	cmp r0, r1
	movlt r4, r1
	movlt r1, r0
	smull r2, r0, r1, r1
	mov r3, r2, lsr #0xc
	orr r3, r3, r0, lsl #20
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, r4
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r4, asr #0x1f
	bl _ll_div
	ldr r1, _020072C0 ; =0x000006DD
	mov r2, r0, asr #0x1f
	umull ip, r3, r0, r1
	mla r3, r2, r1, r3
	mov r0, ip, lsr #0xc
	orr r0, r0, r3, lsl #20
	add r0, r4, r0
	ldmia sp!, {r4, pc}
	.align 2, 0
_020072C0: .word 0x000006DD
	arm_func_end sub_02007254

	arm_func_start sub_020072C4
sub_020072C4: ; 0x020072C4
	stmdb sp!, {r3, lr}
	ldr ip, [r0]
	ldr r3, [r1]
	ldr r2, [r0, #4]
	ldr r0, [r1, #4]
	smull lr, r3, ip, r3
	smull r1, r0, r2, r0
	mov r2, lr, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r2, r2, r3, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	ldmia sp!, {r3, pc}
	arm_func_end sub_020072C4

	arm_func_start sub_020072F8
sub_020072F8: ; 0x020072F8
	stmdb sp!, {r3, lr}
	ldr ip, [r0]
	ldr r3, [r1, #4]
	ldr r2, [r0, #4]
	ldr r0, [r1]
	smull lr, r3, ip, r3
	smull r1, r0, r2, r0
	mov r2, lr, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r2, r2, r3, lsl #20
	orr r1, r1, r0, lsl #20
	sub r0, r2, r1
	ldmia sp!, {r3, pc}
	arm_func_end sub_020072F8

	arm_func_start sub_0200732C
sub_0200732C: ; 0x0200732C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	mov r6, r1
	ldr r5, [r2]
	ldr r4, [r2, #4]
	ldr r1, [r6, #4]
	ldr r3, [r6]
	sub r1, r1, r4
	mov r7, r0
	subs r0, r3, r5
	str r5, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	bne _020073A8
	ldmia r2, {r0, r2}
	str r0, [sp, #0x28]
	str r2, [sp, #0x2c]
	cmp r1, #0
	ble _02007394
	ldr r0, [r6, #8]
	add r0, r2, r0
	str r0, [sp, #0x2c]
	b _020074BC
	arm_func_end sub_0200732C
_02007394:
	bge _020074BC
	ldr r0, [r6, #8]
	sub r0, r2, r0
	str r0, [sp, #0x2c]
	b _020074BC
_020073A8:
	cmp r1, #0
	bne _020073EC
	ldr r3, [r2]
	ldr r1, [r2, #4]
	str r3, [sp, #0x28]
	str r1, [sp, #0x2c]
	cmp r0, #0
	ble _020073D8
	ldr r0, [r6, #8]
	add r0, r3, r0
	str r0, [sp, #0x28]
	b _020074BC
_020073D8:
	bge _020074BC
	ldr r0, [r6, #8]
	sub r0, r3, r0
	str r0, [sp, #0x28]
	b _020074BC
_020073EC:
	bl sub_02007254
	ldr r1, [r6, #8]
	mov r5, r0
	cmp r1, r5
	ble _020074AC
	ldr r0, [sp, #0x30]
	sub r3, r1, r5
	smull r2, r1, r0, r3
	ldr r0, [sp, #0x34]
	mov ip, r2, lsr #0xc
	orr ip, ip, r1, lsl #20
	smull r2, r1, r0, r3
	mov lr, r2, lsr #0xc
	mov r0, ip, asr #0x1f
	orr lr, lr, r1, lsl #20
	mov r4, r5, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, r5
	mov r3, r4
	str lr, [sp, #0x34]
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	str ip, [sp, #0x30]
	bl _ll_div
	ldr ip, [sp, #0x34]
	str r0, [sp, #0x30]
	mov r0, ip, asr #0x1f
	mov r1, r0, lsl #0xc
	mov r2, r5
	mov r3, r4
	orr r1, r1, ip, lsr #20
	mov r0, ip, lsl #0xc
	bl _ll_div
	ldr r3, [sp, #0x30]
	ldr r2, [r6]
	ldr r1, [r6, #4]
	add r2, r2, r3
	add r1, r1, r0
	str r0, [sp, #0x34]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	str r2, [sp]
	str r1, [sp, #4]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	b _020074BC
_020074AC:
	ldr r1, [r6]
	ldr r0, [r6, #4]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
_020074BC:
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	str r1, [r7]
	str r0, [r7, #4]
	add sp, sp, #0x38
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020074D4
sub_020074D4: ; 0x020074D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0200755C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020074D4

	arm_func_start sub_020074E8
sub_020074E8: ; 0x020074E8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_0200755C
	mov ip, #0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp]
	bl sub_02007590
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020074E8

	arm_func_start sub_02007524
sub_02007524: ; 0x02007524
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_0200755C
	mov r0, r5
	mov r1, r4
	bl sub_0200763C
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02007524

	arm_func_start sub_02007548
sub_02007548: ; 0x02007548
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020076B0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007548

	arm_func_start sub_0200755C
sub_0200755C: ; 0x0200755C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4]
	add r0, r4, #8
	str r1, [r4, #4]
	bl NNS_G2dInitImageProxy
	mov r0, #0
	strb r0, [r4, #0x30]
	strh r0, [r4, #0x32]
	strh r0, [r4, #0x34]
	str r0, [r4, #0x38]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200755C

	arm_func_start sub_02007590
sub_02007590: ; 0x02007590
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl sub_020076B0
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _020075CC
	ldr r2, [sp, #0x18]
	mov r1, r7
	mov r3, r6
	str r5, [sp]
	bl _ZN9CNCGRFileC1EPKcmmm
	arm_func_end sub_02007590
_020075CC:
	str r0, [r4]
	add r0, r4, #8
	bl NNS_G2dInitImageProxy
	mov r2, #0
	strb r2, [r4, #0x30]
	ldr r1, [r4]
	mov r0, #1
	ldr r1, [r1, #0xb8]
	str r1, [r4, #4]
	ldr r1, [r1, #4]
	str r1, [r4, #0x1c]
	str r2, [r4, #0x20]
	str r0, [r4, #0x24]
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	str r0, [r4, #0x38]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #2]
	mov r0, r0, lsl #3
	strh r0, [r4, #0x32]
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	mov r0, r0, lsl #3
	strh r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0200763C
sub_0200763C: ; 0x0200763C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl sub_020076B0
	add r0, r4, #8
	bl NNS_G2dInitImageProxy
	mov r2, #0
	strb r2, [r4, #0x30]
	str r5, [r4, #4]
	ldr r1, [r5, #4]
	mov r0, #1
	str r1, [r4, #0x1c]
	str r2, [r4, #0x20]
	str r0, [r4, #0x24]
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	str r0, [r4, #0x38]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #2]
	mov r0, r0, lsl #3
	strh r0, [r4, #0x32]
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	mov r0, r0, lsl #3
	strh r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200763C

	arm_func_start sub_020076B0
sub_020076B0: ; 0x020076B0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _020076DC
	beq _020076D4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_020076B0
_020076D4:
	mov r0, #0
	str r0, [r4]
_020076DC:
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start sub_020076E8
sub_020076E8: ; 0x020076E8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	add r3, r5, #8
	mov r2, #0
	mov r4, r1
	bl NNS_G2dLoadImage2DMapping
	str r4, [r5, #0x2c]
	mov r0, #1
	strb r0, [r5, #0x30]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020076E8

	arm_func_start sub_02007714
sub_02007714: ; 0x02007714
	mov r2, r0
	mov r0, #0
	strb r0, [r2, #0x30]
	str r1, [r2, #0x2c]
	ldr r0, _02007738 ; =_0208F304
	ldr ip, _0200773C ; =_ZN5CGame12sub_020100E4EPFvvEm
	ldr r1, _02007740 ; =sub_02007744
	ldr r0, [r0]
	bx ip
	.align 2, 0
_02007738: .word s_game
_0200773C: .word _ZN5CGame12sub_020100E4EPFvvEm
_02007740: .word sub_02007744
	arm_func_end sub_02007714

	arm_func_start sub_02007744
sub_02007744: ; 0x02007744
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x2c]
	add r3, r4, #8
	mov r2, #0
	bl NNS_G2dLoadImage2DMapping
	mov r0, #1
	strb r0, [r4, #0x30]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007744

	arm_func_start sub_02007770
sub_02007770: ; 0x02007770
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007798
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007770

	arm_func_start sub_02007784
sub_02007784: ; 0x02007784
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020077B4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007784

	arm_func_start sub_02007798
sub_02007798: ; 0x02007798
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_02007798

	arm_func_start sub_020077B4
sub_020077B4: ; 0x020077B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007848
	mov r0, r4
	bl sub_02007854
	ldmia sp!, {r4, pc}
	arm_func_end sub_020077B4

	arm_func_start sub_020077CC
sub_020077CC: ; 0x020077CC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02007848
	str r4, [r5]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020077CC

	arm_func_start sub_020077E4
sub_020077E4: ; 0x020077E4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	bl sub_02007854
	mov r4, #0
	mov r5, r4
	str r6, [r7, #4]
	arm_func_end sub_020077E4
_02007800:
	ldr r0, [r6, #0xb8]
	mov r1, r5
	bl NNS_G2dGetCellDataByIdx
	movs r1, r0
	beq _02007834
	mov r0, r7
	bl sub_02007880
	cmp r4, r0
	movlo r4, r0
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	b _02007800
_02007834:
	mov r0, r4, lsl #5
	str r0, [r7, #0x10]
	bl _Z10Heap_Allocm
	str r0, [r7, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02007848
sub_02007848: ; 0x02007848
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end sub_02007848

	arm_func_start sub_02007854
sub_02007854: ; 0x02007854
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02007874
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x14]
	arm_func_end sub_02007854
_02007874:
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02007880
sub_02007880: ; 0x02007880
	stmdb sp!, {r3, r4, r5, lr}
	ldrh r3, [r1]
	mov r0, #0
	mov r2, r0
	cmp r3, #0
	ldr r1, [r1, #4]
	ldmleia sp!, {r3, r4, r5, pc}
	ldr r4, _020078E0 ; =DAT_02084348
	arm_func_end sub_02007880
_020078A0:
	ldrh r5, [r1]
	ldrh ip, [r1, #2]
	add r2, r2, #1
	and r5, r5, #0xc000
	mov r5, r5, asr #0xe
	and ip, ip, #0xc000
	and r5, r5, #0xff
	mov ip, ip, asr #0xe
	and lr, ip, #0xff
	add ip, r4, r5, lsl #4
	ldr ip, [ip, lr, lsl #2]
	cmp r2, r3
	add r0, r0, ip
	add r1, r1, #6
	blt _020078A0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020078E0: .word DAT_02084348

	arm_func_start sub_020078E4
sub_020078E4: ; 0x020078E4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov sb, r0
	ldr r0, [sb, #4]
	mov r8, r1
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [r0, #0xb8]
	bl NNS_G2dGetCellDataByIdx
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldrh r0, [r4]
	mov r5, #0
	mov r6, r5
	cmp r0, #0
	ldr r7, [r4, #4]
	ble _02007998
	ldr sl, _020079B4 ; =0x000003FF
	arm_func_end sub_020078E4
_0200793C:
	ldrh r1, [r7, #4]
	mov r0, sb
	and r1, r1, sl
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp]
	ldrh r3, [r7]
	ldrh r2, [r7, #2]
	ldr r1, [sb, #0x14]
	and r3, r3, #0xc000
	and r2, r2, #0xc000
	mov ip, r3, asr #0xe
	mov r3, r2, asr #0xe
	add r1, r1, r5
	and r2, ip, #0xff
	and r3, r3, #0xff
	bl sub_020079B8
	ldrh r1, [r4]
	add r6, r6, #1
	add r5, r5, r0
	cmp r6, r1
	add r7, r7, #6
	blt _0200793C
_02007998:
	ldr r0, [sb, #0x14]
	ldr r1, [sb, #0x10]
	bl DC_FlushRange
	mov r0, r5
	strh r8, [sb, #0xc]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_020079B4: .word 0x000003FF

	arm_func_start sub_020079B8
sub_020079B8: ; 0x020079B8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldrh r5, [sp, #0x28]
	ldr r4, [r0]
	str r0, [sp]
	mov r0, r5, asr #4
	add r0, r5, r0, lsr #27
	mov r8, r0, asr #5
	ldrh r7, [r4, #0x32]
	ldr r6, _02007A8C ; =DAT_02084308
	ldr r0, [r4, #4]
	mul fp, r8, r7
	add sb, r6, r2, lsl #4
	ldr r4, _02007A90 ; =DAT_02084388
	mov r6, r5, lsr #0x1f
	rsb r5, r6, r5, lsl #27
	add r2, r4, r2, lsl #4
	ldr r4, [sb, r3, lsl #2]
	ldr r3, [r2, r3, lsl #2]
	mov r2, r4, lsl #3
	mov r4, #0
	ldr r8, [r0, #0x14]
	add r5, r6, r5, ror #27
	add r5, r8, r5, lsl #2
	add r6, r5, fp, lsl #2
	mov sl, r1
	mov r7, r4
	mov sb, r2, lsr #1
	movs fp, r3, lsl #3
	ldr r5, [r0, #0x10]
	beq _02007A84
	arm_func_end sub_020079B8
_02007A30:
	sub r0, r6, r8
	cmp r0, r5
	bhs _02007A50
	mov r0, r6
	mov r1, sl
	mov r2, sb
	bl MI_CpuCopy8
	b _02007A60
_02007A50:
	mov r0, sl
	mov r1, #0
	mov r2, sb
	bl MI_CpuFill8
_02007A60:
	ldr r0, [sp]
	add r7, r7, #1
	ldr r0, [r0]
	cmp r7, fp
	ldrh r0, [r0, #0x32]
	add sl, sl, sb
	add r4, r4, sb
	add r6, r6, r0, asr #1
	blo _02007A30
_02007A84:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02007A8C: .word DAT_02084308
_02007A90: .word DAT_02084388

	arm_func_start sub_02007A94
sub_02007A94: ; 0x02007A94
	ldr r2, [r0, #8]
	str r1, [r0, #8]
	mov r0, r2
	bx lr
	arm_func_end sub_02007A94

	arm_func_start sub_02007AA4
sub_02007AA4: ; 0x02007AA4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	strb r1, [r4, #0x20]
	bl sub_02007B3C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007AA4

	arm_func_start sub_02007AC0
sub_02007AC0: ; 0x02007AC0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov ip, #0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	strb ip, [r7, #0x20]
	bl sub_02007B3C
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_02007B60
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02007AC0

	arm_func_start sub_02007AFC
sub_02007AFC: ; 0x02007AFC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #0
	mov r4, r1
	strb r2, [r5, #0x20]
	bl sub_02007B3C
	mov r0, r5
	mov r1, r4
	bl sub_02007BAC
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02007AFC

	arm_func_start sub_02007B28
sub_02007B28: ; 0x02007B28
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02007BC4
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007B28

	arm_func_start sub_02007B3C
sub_02007B3C: ; 0x02007B3C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	add r0, r4, #8
	str r1, [r4]
	bl NNS_G2dInitImagePaletteProxy
	mov r0, #0
	strb r0, [r4, #0x20]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007B3C

	arm_func_start sub_02007B60
sub_02007B60: ; 0x02007B60
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_02007BC4
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02007B9C
	mov r1, r6
	mov r3, r5
	mov r2, #0
	str r4, [sp]
	bl _ZN9CNCLRFileC1EPKcmmm
	arm_func_end sub_02007B60
_02007B9C:
	str r0, [r7]
	ldr r0, [r0, #0xb8]
	str r0, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02007BAC
sub_02007BAC: ; 0x02007BAC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02007BC4
	str r4, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02007BAC

	arm_func_start sub_02007BC4
sub_02007BC4: ; 0x02007BC4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _02007BF0
	beq _02007BE8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02007BC4
_02007BE8:
	mov r0, #0
	str r0, [r4]
_02007BF0:
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02007BFC
sub_02007BFC: ; 0x02007BFC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #8
	mov r4, r1
	bl NNS_G2dInitImagePaletteProxy
	ldr r0, [r5, #4]
	mov r1, r4
	add r3, r5, #8
	mov r2, #0
	bl NNS_G2dLoadPalette
	str r4, [r5, #0x1c]
	mov r0, #1
	strb r0, [r5, #0x20]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02007BFC

	arm_func_start sub_02007C34
sub_02007C34: ; 0x02007C34
	mov r2, r0
	str r1, [r2, #0x1c]
	mov r1, #0
	strb r1, [r2, #0x20]
	ldr r0, _02007C58 ; =_0208F304
	ldr ip, _02007C5C ; =_ZN5CGame12sub_020100E4EPFvvEm
	ldr r0, [r0]
	ldr r1, _02007C60 ; =sub_02007C64
	bx ip
	.align 2, 0
_02007C58: .word s_game
_02007C5C: .word _ZN5CGame12sub_020100E4EPFvvEm
_02007C60: .word sub_02007C64
	arm_func_end sub_02007C34

	arm_func_start sub_02007C64
sub_02007C64: ; 0x02007C64
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #8
	bl NNS_G2dInitImagePaletteProxy
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x1c]
	add r3, r4, #8
	mov r2, #0
	bl NNS_G2dLoadPalette
	mov r0, #1
	strb r0, [r4, #0x20]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007C64

	arm_func_start _ZN6CSceneC2Ev
_ZN6CSceneC2Ev: ; 0x02007C98
	ldr r1, _02007CA4 ; =PTR_LAB_0208a814
	str r1, [r0]
	bx lr
	.align 2, 0
_02007CA4: .word PTR_LAB_0208a814
	arm_func_end _ZN6CSceneC2Ev

    arm_func_start sub_02007CA8
sub_02007CA8: ; 0x02007CA8
    bx lr
    arm_func_end sub_02007CA8

	arm_func_start sub_02007CAC
sub_02007CAC: ; 0x02007CAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007CAC

	arm_func_start sub_02007CC0
sub_02007CC0: ; 0x02007CC0
	bx lr
	arm_func_end sub_02007CC0

	arm_func_start sub_02007CC4
sub_02007CC4: ; 0x02007CC4
	stmdb sp!, {r3, lr}
	bl sub_0201001C
	bl sub_02010124
	ldmia sp!, {r3, pc}
	arm_func_end sub_02007CC4

	arm_func_start sub_02007CD4
sub_02007CD4: ; 0x02007CD4
	ldr ip, _02007CDC ; =_Z12sub_02001210v
	bx ip
	.align 2, 0
_02007CDC: .word _Z12sub_02001210v
	arm_func_end sub_02007CD4

	arm_func_start sub_02007CE0
sub_02007CE0: ; 0x02007CE0
	stmdb sp!, {r3, lr}
	bl sub_02007D78
	bl sub_02007D98
	ldmia sp!, {r3, pc}
	arm_func_end sub_02007CE0

	arm_func_start sub_02007CF0
sub_02007CF0: ; 0x02007CF0
	stmdb sp!, {r3, lr}
	ldr r1, _02007D28 ; =0x0400000E
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0x700
	strh r0, [r1]
	bl sub_0201001C
	mov r3, #0
	str r3, [sp]
	ldr r0, [r0, #0xc24]
	mov r1, #3
	mov r2, #0x2000
	bl _ZN17UnkClass_020023EC12sub_02002434Emmmm
	ldmia sp!, {r3, pc}
	.align 2, 0
_02007D28: .word 0x0400000E
	arm_func_end sub_02007CF0

	arm_func_start sub_02007D2C
sub_02007D2C: ; 0x02007D2C
	stmdb sp!, {r3, lr}
	ldr r1, _02007D64 ; =0x0400100E
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0xf00
	strh r0, [r1]
	bl sub_0201001C
	mov r3, #0
	str r3, [sp]
	ldr r0, [r0, #0xc28]
	mov r1, #7
	mov r2, #0x6000
	bl _ZN17UnkClass_020023EC12sub_02002434Emmmm
	ldmia sp!, {r3, pc}
	.align 2, 0
_02007D64: .word 0x0400100E
	arm_func_end sub_02007D2C

	arm_func_start sub_02007D68
sub_02007D68: ; 0x02007D68
	stmdb sp!, {r3, lr}
	bl sub_02007CF0
	bl sub_02007D2C
	ldmia sp!, {r3, pc}
	arm_func_end sub_02007D68

	arm_func_start sub_02007D78
sub_02007D78: ; 0x02007D78
	stmdb sp!, {r4, lr}
	bl sub_0201001C
	mov r4, r0
	ldr r0, [r4, #0xc24]
	bl _ZN17UnkClass_020023EC12sub_020027E8Ev
	ldr r0, [r4, #0xc28]
	bl _ZN17UnkClass_020023EC12sub_020027E8Ev
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007D78

	arm_func_start sub_02007D98
sub_02007D98: ; 0x02007D98
	stmdb sp!, {r4, lr}
	bl sub_0201001C
	mov r4, r0
	add r0, r4, #0x24
	mov r1, #0x400
	bl DC_FlushRange
	add r0, r4, #0x24
	mov r1, #0
	mov r2, #0x400
	bl GX_LoadOAM
	add r4, r4, #0x24
	add r0, r4, #0x400
	mov r1, #0x400
	bl DC_FlushRange
	add r0, r4, #0x400
	mov r1, #0
	mov r2, #0x400
	bl GXS_LoadOAM
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007D98

	arm_func_start sub_02007DE4
sub_02007DE4: ; 0x02007DE4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0xc
	bx lr
	arm_func_end sub_02007DE4

	arm_func_start sub_02007DF0
sub_02007DF0: ; 0x02007DF0
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02007F90
_02007DFC: ; jump table
	b _02007F90 ; case 0
	b _02007F90 ; case 1
	b _02007EF4 ; case 2
	b _02007F90 ; case 3
	b _02007E20 ; case 4
	b _02007F04 ; case 5
	b _02007F90 ; case 6
	b _02007F38 ; case 7
	b _02007E84 ; case 8
	arm_func_end sub_02007DF0
_02007E20:
	cmp r2, #0
	beq _02007E5C
	cmp r1, #0x2000
	blo _02007E38
	cmp r1, #0xe000
	bls _02007E40
_02007E38:
	mov r0, #3
	bx lr
_02007E40:
	cmp r1, #0x6000
	movls r0, #0
	bxls lr
	cmp r1, #0xa000
	movlo r0, #1
	movhs r0, #2
	bx lr
_02007E5C:
	cmp r1, #0x4000
	movlo r0, #3
	bxlo lr
	cmp r1, #0x8000
	movls r0, #0
	bxls lr
	cmp r1, #0xc000
	movlo r0, #1
	movhs r0, #2
	bx lr
_02007E84:
	cmp r1, #0x1000
	blo _02007E94
	cmp r1, #0xf000
	blo _02007E9C
_02007E94:
	mov r0, #6
	bx lr
_02007E9C:
	cmp r1, #0x3000
	movlo r0, #7
	bxlo lr
	cmp r1, #0x5000
	movlo r0, #0
	bxlo lr
	cmp r1, #0x7000
	movlo r0, #1
	bxlo lr
	cmp r1, #0x9000
	movlo r0, #2
	bxlo lr
	cmp r1, #0xb000
	movlo r0, #3
	bxlo lr
	cmp r1, #0xd000
	movlo r0, #4
	bxlo lr
	cmp r1, #0xf000
	bhs _02007F90
	mov r0, #5
	bx lr
_02007EF4:
	cmp r1, #0x8000
	movhi r0, #1
	movls r0, #0
	bx lr
_02007F04:
	cmp r1, #0x3000
	movlo r0, #3
	bxlo lr
	cmp r1, #0x5000
	movlo r0, #4
	bxlo lr
	cmp r1, #0x8000
	movls r0, #0
	bxls lr
	cmp r1, #0xc000
	movlo r0, #1
	movhs r0, #2
	bx lr
_02007F38:
	cmp r1, #0x1000
	blo _02007F48
	cmp r1, #0xf000
	blo _02007F50
_02007F48:
	mov r0, #5
	bx lr
_02007F50:
	cmp r1, #0x3000
	movlo r0, #3
	bxlo lr
	cmp r1, #0x5000
	movlo r0, #6
	bxlo lr
	cmp r1, #0x7000
	movlo r0, #0
	bxlo lr
	cmp r1, #0x9000
	movlo r0, #4
	bxlo lr
	cmp r1, #0xc000
	movlo r0, #1
	movhs r0, #2
	bx lr
_02007F90:
	mov r0, #0
	bx lr

	arm_func_start sub_02007F98
sub_02007F98: ; 0x02007F98
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02008064
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02007F98

	arm_func_start sub_02007FAC
sub_02007FAC: ; 0x02007FAC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	movne r0, #0
	strne r0, [r4, #0x30]
	ldr r0, [r4]
	cmp r0, #0
	beq _02007FDC
	bl _ZdaPv
	mov r0, #0
	str r0, [r4]
	arm_func_end sub_02007FAC
_02007FDC:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02007FF4
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #4]
_02007FF4:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0200800C
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #8]
_0200800C:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start sub_02008014
sub_02008014: ; 0x02008014
	ldrb r1, [r0, #0x11]
	ldr r0, [r0]
	ldrb r0, [r0, r1]
	bx lr
	arm_func_end sub_02008014

	arm_func_start sub_02008024
sub_02008024: ; 0x02008024
	add r0, r0, #0x14
	bx lr
	arm_func_end sub_02008024

	arm_func_start sub_0200802C
sub_0200802C: ; 0x0200802C
	ldrb r1, [r0, #0x2f]
	cmp r1, #0
	mvnne r0, #0
	bxne lr
	ldrh r2, [r0, #0xe]
	ldrh r1, [r0, #0x2c]
	cmp r2, r1
	ldreqb r0, [r0, #0xc]
	cmpeq r0, #0
	moveq r0, #0
	movne r0, #1
	bx lr
	arm_func_end sub_0200802C

	arm_func_start sub_0200805C
sub_0200805C: ; 0x0200805C
	str r1, [r0, #0x38]
	bx lr
	arm_func_end sub_0200805C

	arm_func_start sub_02008064
sub_02008064: ; 0x02008064
	stmdb sp!, {r3, lr}
	mov lr, #0
	str lr, [r0]
	str lr, [r0, #4]
	str lr, [r0, #8]
	ldrb r3, [r0, #0x2e]
	cmp r3, #0
	ble _020080B0
	mov ip, lr
	arm_func_end sub_02008064
_02008088:
	ldr r3, [r0]
	strb ip, [r3, lr]
	ldr r3, [r0, #4]
	strb ip, [r3, lr]
	ldr r3, [r0, #8]
	strb ip, [r3, lr]
	ldrb r3, [r0, #0x2e]
	add lr, lr, #1
	cmp lr, r3
	blt _02008088
_020080B0:
	strh r1, [r0, #0x3c]
	strh r2, [r0, #0x48]
	mov r2, #0
	strb r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x2c]
	strb r2, [r0, #0x10]
	strb r2, [r0, #0x11]
	strb r2, [r0, #0x2e]
	strb r2, [r0, #0x2f]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x24]
	str r2, [r0, #0x28]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r2, [r0, #0x30]
	mov r1, #0x1000
	str r2, [r0, #0x34]
	bl sub_0200805C
	ldmia sp!, {r3, pc}

	arm_func_start sub_02008104
sub_02008104: ; 0x02008104
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x2e]
	ldrh r2, [r4, #0x48]
	bl sub_02007DF0
	ldrb r1, [r4, #0x11]
	cmp r1, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0x2e]
	cmp r1, r0
	movle r0, #1
	ldmleia sp!, {r4, pc}
	mov r1, #0
	strb r1, [r4, #0xc]
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	str r1, [r4, #0x24]
	str r1, [r4, #0x28]
	str r1, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r1, [r4, #0x34]
	strb r0, [r4, #0x11]
	mov r0, r4
	bl sub_0200827C
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008104

	arm_func_start sub_02008170
sub_02008170: ; 0x02008170
	ldrb r1, [r0, #0x2e]
	mov r3, #0
	cmp r1, #0
	ble _020081AC
	mov r2, r3
	arm_func_end sub_02008170
_02008184:
	ldr r1, [r0]
	strb r2, [r1, r3]
	ldr r1, [r0, #4]
	strb r2, [r1, r3]
	ldr r1, [r0, #8]
	strb r2, [r1, r3]
	ldrb r1, [r0, #0x2e]
	add r3, r3, #1
	cmp r3, r1
	blt _02008184
_020081AC:
	mov r1, #0
	strb r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strb r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldr ip, _020081E0 ; =sub_0200827C
	str r1, [r0, #0x34]
	bx ip
	.align 2, 0
_020081E0: .word sub_0200827C

	arm_func_start sub_020081E4
sub_020081E4: ; 0x020081E4
	stmdb sp!, {r3, lr}
	ldrb r2, [r0, #0x11]
	cmp r2, r1
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrb r2, [r0, #0x2e]
	cmp r2, r1
	movle r0, #1
	ldmleia sp!, {r3, pc}
	cmp r2, #0
	mov ip, #0
	ble _02008240
	mov r3, ip
	arm_func_end sub_020081E4
_02008218:
	ldr r2, [r0]
	strb r3, [r2, ip]
	ldr r2, [r0, #4]
	strb r3, [r2, ip]
	ldr r2, [r0, #8]
	strb r3, [r2, ip]
	ldrb r2, [r0, #0x2e]
	add ip, ip, #1
	cmp ip, r2
	blt _02008218
_02008240:
	mov r2, #0
	strb r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	strb r2, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x24]
	str r2, [r0, #0x28]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r2, [r0, #0x34]
	strb r1, [r0, #0x11]
	bl sub_0200827C
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_0200827C
sub_0200827C: ; 0x0200827C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x30]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldrh r1, [r4, #0x3c]
	cmp r1, #0
	bne _020082A4
	bl sub_02008584
	ldmia sp!, {r4, pc}
	arm_func_end sub_0200827C
_020082A4:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _02008314
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x24]
	cmp r1, #0
	ldrne r0, [r4, #0x1c]
	addne r0, r0, r1
	strne r0, [r4, #0x1c]
	ldr r1, [r4, #0x28]
	cmp r1, #0
	ldrne r0, [r4, #0x20]
	addne r0, r0, r1
	strne r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	ldrne r0, [r4, #0x14]
	addne r0, r0, r1
	strne r0, [r4, #0x14]
	ldr r1, [r4, #0x20]
	cmp r1, #0
	ldrne r0, [r4, #0x18]
	addne r0, r0, r1
	strne r0, [r4, #0x18]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
_02008314:
	ldrb r0, [r4, #0x2f]
	cmp r0, #0
	bne _02008330
	ldrh r1, [r4, #0xe]
	ldrh r0, [r4, #0x2c]
	cmp r1, r0
	ldmhsia sp!, {r4, pc}
_02008330:
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	bne _02008358
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
_02008358:
	ldrh r2, [r4, #0xe]
	ldrh r1, [r4, #0x2c]
	ldrb r0, [r4, #0x11]
	ldr r3, [r4, #0x30]
	mla r0, r1, r0, r2
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldrb r0, [r3, r1, lsl #2]
	mov r1, r1, lsl #2
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0200854C
_02008388: ; jump table
	b _0200854C ; case 0
	b _020083AC ; case 1
	b _0200845C ; case 2
	b _0200849C ; case 3
	b _020084D8 ; case 4
	b _02008500 ; case 5
	b _02008514 ; case 6
	b _02008528 ; case 7
	b _0200853C ; case 8
_020083AC:
	ldrb r1, [r4, #0x2e]
	mov r0, #0
	cmp r1, #0
	ble _0200854C
_020083BC:
	ldrh r3, [r4, #0xe]
	ldrh r2, [r4, #0x2c]
	ldr ip, [r4, #0x30]
	ldr r1, [r4]
	mla r3, r2, r0, r3
	add r2, ip, r3, lsl #2
	ldrh r2, [r2, #2]
	strb r2, [r1, r0]
	ldrh r3, [r4, #0xe]
	ldrh r2, [r4, #0x2c]
	ldr ip, [r4, #0x30]
	ldr r1, [r4, #4]
	mla r3, r2, r0, r3
	add r2, ip, r3, lsl #2
	ldrh r2, [r2, #2]
	mov r2, r2, asr #8
	strb r2, [r1, r0]
	ldr r2, [r4, #8]
	ldrb r1, [r2, r0]
	cmp r1, #0xff
	ldreq r1, [r4]
	ldreqb r1, [r1, r0]
	streqb r1, [r2, r0]
	ldr r3, [r4, #4]
	ldrb r2, [r3, r0]
	tst r2, #0x80
	beq _02008448
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	andeq r1, r2, #0x7f
	streqb r1, [r3, r0]
	beq _02008448
	ldr r1, [r4, #8]
	ldrb r1, [r1, r0]
	strb r1, [r3, r0]
_02008448:
	ldrb r1, [r4, #0x2e]
	add r0, r0, #1
	cmp r0, r1
	blt _020083BC
	b _0200854C
_0200845C:
	add r0, r3, r1
	ldrh r0, [r0, #2]
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	add r0, r0, #1
	strh r0, [r4, #0xe]
	ldrh r1, [r4, #0x2c]
	ldrh r0, [r4, #0xe]
	cmp r0, r1
	ldmloia sp!, {r4, pc}
	ldrb r0, [r4, #0x2f]
	cmp r0, #0
	movne r0, #0
	strneh r0, [r4, #0xe]
	streqh r1, [r4, #0xe]
	ldmia sp!, {r4, pc}
_0200849C:
	add r0, r3, r1
	ldrh r0, [r0, #2]
	mov r2, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x2e]
	cmp r0, #0
	ble _0200854C
	mov r1, #0xff
_020084BC:
	ldr r0, [r4, #8]
	strb r1, [r0, r2]
	ldrb r0, [r4, #0x2e]
	add r2, r2, #1
	cmp r2, r0
	blt _020084BC
	b _0200854C
_020084D8:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0200854C
	add r0, r3, r1
	ldrh r0, [r0, #2]
	strh r0, [r4, #0xe]
	ldrb r0, [r4, #0x10]
	sub r0, r0, #1
	strb r0, [r4, #0x10]
	b _0200854C
_02008500:
	add r0, r3, r1
	ldrh r0, [r0, #2]
	bl sub_02007DE4
	str r0, [r4, #0x1c]
	b _0200854C
_02008514:
	add r0, r3, r1
	ldrh r0, [r0, #2]
	bl sub_02007DE4
	str r0, [r4, #0x20]
	b _0200854C
_02008528:
	add r0, r3, r1
	ldrh r0, [r0, #2]
	bl sub_02007DE4
	str r0, [r4, #0x24]
	b _0200854C
_0200853C:
	add r0, r3, r1
	ldrh r0, [r0, #2]
	bl sub_02007DE4
	str r0, [r4, #0x28]
_0200854C:
	ldrh r0, [r4, #0xe]
	add r0, r0, #1
	strh r0, [r4, #0xe]
	ldrh r1, [r4, #0x2c]
	ldrh r0, [r4, #0xe]
	cmp r0, r1
	blo _02008358
	ldrb r0, [r4, #0x2f]
	cmp r0, #0
	movne r0, #0
	strneh r0, [r4, #0xe]
	bne _02008358
	strh r1, [r4, #0xe]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02008584
sub_02008584: ; 0x02008584
	stmdb sp!, {r3, lr}
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _020085A4
	sub r1, r1, #1
	strb r1, [r0, #0xc]
	tst r1, #0xff
	ldmneia sp!, {r3, pc}
	arm_func_end sub_02008584
_020085A4:
	ldrb r1, [r0, #0x2f]
	cmp r1, #0
	bne _020085C0
	ldrh r2, [r0, #0xe]
	ldrh r1, [r0, #0x2c]
	cmp r2, r1
	ldmhsia sp!, {r3, pc}
_020085C0:
	ldrh r3, [r0, #0xe]
	ldrh r2, [r0, #0x2c]
	ldrb r1, [r0, #0x11]
	ldr ip, [r0, #0x30]
	mla r1, r2, r1, r3
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldrb r1, [ip, r2, lsl #2]
	mov r2, r2, lsl #2
	cmp r1, #1
	beq _020085F8
	cmp r1, #2
	beq _0200863C
	b _0200867C
_020085F8:
	ldrb r1, [r0, #0x2e]
	mov lr, #0
	cmp r1, #0
	ble _0200867C
_02008608:
	ldrh r3, [r0, #0xe]
	ldrh r2, [r0, #0x2c]
	ldr ip, [r0, #0x30]
	ldr r1, [r0]
	mla r3, r2, lr, r3
	add r2, ip, r3, lsl #2
	ldrh r2, [r2, #2]
	strb r2, [r1, lr]
	ldrb r1, [r0, #0x2e]
	add lr, lr, #1
	cmp lr, r1
	blt _02008608
	b _0200867C
_0200863C:
	add r1, ip, r2
	ldrh r1, [r1, #2]
	strb r1, [r0, #0xc]
	ldrh r1, [r0, #0xe]
	add r1, r1, #1
	strh r1, [r0, #0xe]
	ldrh r2, [r0, #0x2c]
	ldrh r1, [r0, #0xe]
	cmp r1, r2
	ldmloia sp!, {r3, pc}
	ldrb r1, [r0, #0x2f]
	cmp r1, #0
	movne r1, #0
	strneh r1, [r0, #0xe]
	streqh r2, [r0, #0xe]
	ldmia sp!, {r3, pc}
_0200867C:
	ldrh r1, [r0, #0xe]
	add r1, r1, #1
	strh r1, [r0, #0xe]
	ldrh r2, [r0, #0x2c]
	ldrh r1, [r0, #0xe]
	cmp r1, r2
	blo _020085C0
	ldrb r1, [r0, #0x2f]
	cmp r1, #0
	movne r1, #0
	strneh r1, [r0, #0xe]
	bne _020085C0
	strh r2, [r0, #0xe]
	ldmia sp!, {r3, pc}

	arm_func_start sub_020086B4
sub_020086B4: ; 0x020086B4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x38]
	mov r0, #0x3c
	mul r0, r1, r0
	ldr r1, _02008708 ; =DAT_0208a840
	ldrh r1, [r1]
	bl _s32_div_f
	ldr r1, [r4, #0x34]
	add r0, r1, r0
	str r0, [r4, #0x34]
	cmp r0, #0x1000
	ldmltia sp!, {r4, pc}
	arm_func_end sub_020086B4
_020086E8:
	mov r0, r4
	bl sub_0200827C
	ldr r0, [r4, #0x34]
	sub r0, r0, #0x1000
	str r0, [r4, #0x34]
	cmp r0, #0x1000
	bge _020086E8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02008708: .word DAT_0208a840

	arm_func_start sub_0200870C
sub_0200870C: ; 0x0200870C
	str r1, [r0, #0x44]
	bx lr
	arm_func_end sub_0200870C

	arm_func_start sub_02008714
sub_02008714: ; 0x02008714
	str r1, [r0, #0x40]
	bx lr
	arm_func_end sub_02008714

	arm_func_start sub_0200871C
sub_0200871C: ; 0x0200871C
	ldr r0, [r0, #0x44]
	bx lr
	arm_func_end sub_0200871C

	arm_func_start sub_02008724
sub_02008724: ; 0x02008724
	ldr r0, [r0, #0x40]
	bx lr
	arm_func_end sub_02008724

	arm_func_start sub_0200872C
sub_0200872C: ; 0x0200872C
	ldrh r0, [r0, #0x3e]
	bx lr
	arm_func_end sub_0200872C

	arm_func_start sub_02008734
sub_02008734: ; 0x02008734
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0x30]
	strh r2, [r4, #0x2c]
	ldrb r0, [sp, #8]
	strb r3, [r4, #0x2e]
	strb r0, [r4, #0x2f]
	ldrb r0, [r4, #0x2e]
	bl _Znam
	str r0, [r4]
	ldrb r0, [r4, #0x2e]
	bl _Znam
	str r0, [r4, #4]
	ldrb r0, [r4, #0x2e]
	bl _Znam
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008734

	arm_func_start sub_02008778
sub_02008778: ; 0x02008778
	strh r1, [r0, #0x3e]
	bx lr
	arm_func_end sub_02008778

	arm_func_start sub_02008780
sub_02008780: ; 0x02008780
	ldrb r0, [r0, #0x2e]
	bx lr
	arm_func_end sub_02008780

	arm_func_start sub_02008788
sub_02008788: ; 0x02008788
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02008C74
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008788

	arm_func_start sub_0200879C
sub_0200879C: ; 0x0200879C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_02008C74
	mov r2, #0
	mov r0, r5
	mov r1, r4
	mov r3, r2
	bl sub_0200887C
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0200879C

	arm_func_start sub_020087C8
sub_020087C8: ; 0x020087C8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r1, [r5, #8]
	cmp r1, #0
	beq _020087E0
	bl sub_02008BF0
	arm_func_end sub_020087C8
_020087E0:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020087F8
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r5, #4]
_020087F8:
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _02008820
	beq _02008818
	mov r0, r4
	bl sub_02007FAC
	mov r0, r4
	bl _ZdlPv
_02008818:
	mov r0, #0
	str r0, [r5, #0xc]
_02008820:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02008828
sub_02008828: ; 0x02008828
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02008014
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008828

	arm_func_start sub_02008844
sub_02008844: ; 0x02008844
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02008024
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008844

	arm_func_start sub_02008860
sub_02008860: ; 0x02008860
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r3, pc}
	bl sub_0200802C
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008860

	arm_func_start sub_0200887C
sub_0200887C: ; 0x0200887C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r0, [r6, #4]
	mov r8, r1
	cmp r0, #0
	mov r4, r2
	mov r7, r3
	addne sp, sp, #0xc
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, #0xb8
	bl _Znwm
	movs r5, r0
	beq _020088E4
	cmp r7, #0
	moveq r2, #1
	str r4, [sp]
	mov r3, #0
	str r3, [sp, #4]
	movne r2, #0
	mov r0, r5
	mov r1, r8
	str r3, [sp, #8]
	bl _ZN11CBinaryFileC1EPKcmmmPvm
	mov r5, r0
	arm_func_end sub_0200887C
_020088E4:
	ldr r4, [r5, #0x4c]
	cmp r7, #0
	ldr r0, [r4, #8]
	moveq r1, #4
	mov r0, r0, lsr #2
	strh r0, [r6]
	ldrb r0, [r4, #6]
	mvnne r1, #3
	strb r0, [r6, #2]
	ldrb r0, [r4, #7]
	strb r0, [r6, #3]
	ldrh r0, [r6]
	ldrb r2, [r4, #6]
	mov r0, r0, lsl #2
	mul r0, r2, r0
	bl _Z23Heap_AllocWithAlignmentmm
	str r0, [r6, #4]
	ldrh r0, [r6]
	ldrb r3, [r4, #6]
	ldr r1, [r6, #4]
	mov r0, r0, lsl #2
	mul r2, r3, r0
	add r0, r4, #0xc
	bl MIi_CpuCopy32
	cmp r5, #0
	beq _0200895C
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0200895C:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}

	arm_func_start sub_02008968
sub_02008968: ; 0x02008968
	stmdb sp!, {r4, lr}
	mov r4, r2
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	mov r1, r4
	bl sub_02008104
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008968

	arm_func_start sub_02008990
sub_02008990: ; 0x02008990
	stmdb sp!, {r4, lr}
	mov r4, r2
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	mov r1, r4
	bl sub_020081E4
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008990

	arm_func_start sub_020089B8
sub_020089B8: ; 0x020089B8
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02008170
	ldmia sp!, {r3, pc}
	arm_func_end sub_020089B8

	arm_func_start sub_020089D0
sub_020089D0: ; 0x020089D0
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02008780
	ldmia sp!, {r3, pc}
	arm_func_end sub_020089D0

	arm_func_start sub_020089EC
sub_020089EC: ; 0x020089EC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xc]
	bl sub_02008724
	mov r4, r0
	b _02008A18
	arm_func_end sub_020089EC
_02008A04:
	mov r0, r4
	bl sub_020086B4
	mov r0, r4
	bl sub_02008724
	mov r4, r0
_02008A18:
	ldr r0, [r5, #0xc]
	cmp r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl sub_02008C6C
	cmp r0, #0
	bne _02008A04
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02008A38
sub_02008A38: ; 0x02008A38
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	bl sub_020086B4
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008A38

	arm_func_start sub_02008A58
sub_02008A58: ; 0x02008A58
	stmdb sp!, {r4, lr}
	mov r4, r2
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	mov r1, r4
	bl sub_0200805C
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008A58

	arm_func_start sub_02008A80
sub_02008A80: ; 0x02008A80
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, r1
	cmp r0, #0
	mov r4, r2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #0xa]
	mov r0, #0x4c
	add r1, r1, #1
	strh r1, [r6, #0xa]
	ldrb r1, [r6, #8]
	add r1, r1, #1
	strb r1, [r6, #8]
	bl _Znwm
	movs r7, r0
	beq _02008AD8
	mov r1, r5
	mov r2, r4
	bl sub_02007F98
	mov r7, r0
	arm_func_end sub_02008A80
_02008AD8:
	ldrb r1, [r6, #3]
	mov r0, r7
	str r1, [sp]
	ldrh r2, [r6]
	ldrb r3, [r6, #2]
	ldr r1, [r6, #4]
	bl sub_02008734
	ldrh r1, [r6, #0xa]
	mov r0, r7
	bl sub_02008778
	ldr r0, [r6, #0xc]
	bl sub_0200871C
	ldr r1, [r6, #0xc]
	mov r4, r0
	cmp r4, r1
	bne _02008B4C
	mov r0, r1
	mov r1, r7
	bl sub_0200870C
	ldr r0, [r6, #0xc]
	mov r1, r7
	bl sub_02008714
	ldr r1, [r6, #0xc]
	mov r0, r7
	bl sub_0200870C
	ldr r1, [r6, #0xc]
	mov r0, r7
	bl sub_02008714
	b _02008B78
_02008B4C:
	mov r1, r7
	bl sub_02008714
	mov r0, r7
	mov r1, r4
	bl sub_0200870C
	ldr r1, [r6, #0xc]
	mov r0, r7
	bl sub_02008714
	ldr r0, [r6, #0xc]
	mov r1, r7
	bl sub_0200870C
_02008B78:
	ldrh r0, [r6, #0xa]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02008B80
sub_02008B80: ; 0x02008B80
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl sub_02008CD0
	movs r6, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_0200871C
	mov r5, r0
	mov r0, r6
	bl sub_02008724
	mov r4, r0
	mov r0, r5
	mov r1, r4
	bl sub_02008714
	mov r0, r4
	mov r1, r5
	bl sub_0200870C
	cmp r6, #0
	beq _02008BDC
	mov r0, r6
	bl sub_02007FAC
	mov r0, r6
	bl _ZdlPv
	arm_func_end sub_02008B80
_02008BDC:
	ldrb r1, [r7, #8]
	mov r0, #0
	sub r1, r1, #1
	strb r1, [r7, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02008BF0
sub_02008BF0: ; 0x02008BF0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	bl sub_02008724
	ldr r1, [r6, #0xc]
	mov r4, r0
	cmp r4, r1
	beq _02008C44
	arm_func_end sub_02008BF0
_02008C10:
	mov r0, r4
	bl sub_02008724
	mov r5, r0
	cmp r4, #0
	beq _02008C34
	mov r0, r4
	bl sub_02007FAC
	mov r0, r4
	bl _ZdlPv
_02008C34:
	ldr r0, [r6, #0xc]
	mov r4, r5
	cmp r5, r0
	bne _02008C10
_02008C44:
	mov r0, #0
	strb r0, [r6, #8]
	ldr r0, [r6, #0xc]
	mov r1, r0
	bl sub_0200870C
	ldr r0, [r6, #0xc]
	mov r1, r0
	bl sub_02008714
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02008C6C
sub_02008C6C: ; 0x02008C6C
	ldrb r0, [r0, #8]
	bx lr
	arm_func_end sub_02008C6C

	arm_func_start sub_02008C74
sub_02008C74: ; 0x02008C74
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	strh r1, [r4]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	str r1, [r4, #4]
	strb r1, [r4, #8]
	mov r0, #0x4c
	strh r1, [r4, #0xa]
	bl _Znwm
	cmp r0, #0
	beq _02008CB4
	mov r1, #0
	mov r2, r1
	bl sub_02007F98
	arm_func_end sub_02008C74
_02008CB4:
	str r0, [r4, #0xc]
	mov r1, r0
	bl sub_0200870C
	ldr r0, [r4, #0xc]
	mov r1, r0
	bl sub_02008714
	ldmia sp!, {r4, pc}

	arm_func_start sub_02008CD0
sub_02008CD0: ; 0x02008CD0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	mov r5, r1
	bl sub_02008724
	mov r4, r0
	arm_func_end sub_02008CD0
_02008CE8:
	ldr r0, [r6, #0xc]
	cmp r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl sub_0200872C
	cmp r5, r0
	beq _02008D18
	mov r0, r4
	bl sub_02008724
	mov r4, r0
	b _02008CE8
_02008D18:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02008D20
sub_02008D20: ; 0x02008D20
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #0
	ldrneh r0, [r0, #0xe]
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008D20

	arm_func_start sub_02008D38
sub_02008D38: ; 0x02008D38
	stmdb sp!, {r3, lr}
	bl sub_02008CD0
	cmp r0, #0
	moveq r0, #0
	ldrneb r0, [r0, #0x10]
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008D38

	arm_func_start sub_02008D50
sub_02008D50: ; 0x02008D50
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	mov r1, #0x1e
	strh r2, [r4, #0x12]
	bl sub_02008DB4
	mov r1, #0
	str r1, [r4, #0x18]
	mov r0, r4
	str r1, [r4, #0x1c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008D50

	arm_func_start sub_02008D7C
sub_02008D7C: ; 0x02008D7C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0x14]
	arm_func_end sub_02008D7C
_02008D88:
	ldrh r0, [r4, #0x12]
	cmp r0, r1
	blo _02008D88
	mov r0, #0
	strh r0, [r4, #0x12]
	mov r0, #1
	str r0, [r4, #0x1c]
	bl OS_WaitVBlankIntr
	mov r0, #0
	str r0, [r4, #0x1c]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02008DB4
sub_02008DB4: ; 0x02008DB4
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0x3c
	ldmhiia sp!, {r3, r4, r5, pc}
	mov r0, #0x3c
	strh r4, [r5, #0x10]
	bl _s32_div_f
	ldr r1, _02008E34 ; =0x01FF7D0E
	ldr r2, _02008E38 ; =0x88888889
	mul r3, r4, r1
	smull r1, ip, r2, r3
	add ip, r3, ip
	mov r1, r3, lsr #0x1f
	add ip, r1, ip, asr #5
	strh r0, [r5, #0x14]
	str ip, [r5, #8]
	mov r0, ip, asr #0x1f
	ldr ip, _02008E3C ; =DAT_0208a840
	str r0, [r5, #0xc]
	ldr r3, _02008E40 ; =DAT_0208b46c
	ldr r2, _02008E44 ; =DAT_0208aaf4
	ldr r1, _02008E48 ; =DAT_0208aafa
	mov lr, #0x3c
	ldr r0, _02008E4C ; =MAIN_BSS_020AF338
	mov r5, #0x1000
	strh r4, [ip]
	strh r4, [r3]
	strh r4, [r2]
	strh lr, [r1]
	str r5, [r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02008E34: .word 0x01FF7D0E
_02008E38: .word 0x88888889
_02008E3C: .word DAT_0208a840
_02008E40: .word DAT_0208b46c
_02008E44: .word DAT_0208aaf4
_02008E48: .word DAT_0208aafa
_02008E4C: .word MAIN_BSS_020AF338
	arm_func_end sub_02008DB4

	arm_func_start sub_02008E50
sub_02008E50: ; 0x02008E50
	ldrh r0, [r0, #0x10]
	bx lr
	arm_func_end sub_02008E50

	arm_func_start sub_02008E58
sub_02008E58: ; 0x02008E58
	ldrh r1, [r0, #0x12]
	add r1, r1, #1
	strh r1, [r0, #0x12]
	bx lr
	arm_func_end sub_02008E58

	arm_func_start sub_02008E68
sub_02008E68: ; 0x02008E68
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl OS_GetTick
	stmia r4, {r0, r1}
	ldmia sp!, {r4, pc}
	arm_func_end sub_02008E68

	arm_func_start sub_02008E88
sub_02008E88: ; 0x02008E88
	mov r3, #0
	strh r3, [r0, #0x48]
	strh r3, [r0, #0x4a]
	strh r3, [r0, #0x4c]
	strh r3, [r0, #0x4e]
	strh r3, [r0, #0x50]
	mov r1, #1
	strh r1, [r0, #0x54]
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #0x58]
	str r3, [r0, #0x5c]
	str r3, [r0, #0x60]
	mov r2, r3
	arm_func_end sub_02008E88
_02008EC0:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #8]
	cmp r3, #0x10
	blt _02008EC0
	bx lr

	arm_func_start sub_02008ED8
sub_02008ED8: ; 0x02008ED8
	bx lr
	arm_func_end sub_02008ED8

	arm_func_start sub_02008EDC
sub_02008EDC: ; 0x02008EDC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_02008F90
	cmp r0, r6
	beq _02008F38
	ldr r5, [r6, #0x58]
	mov r0, r5
	bl sub_02008F80
	movs r4, r0
	cmpne r4, #0
	beq _02008F14
	bl sub_02008ED8
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02008EDC
_02008F14:
	mov r0, r5
	mov r1, #0
	bl sub_02008F78
	mov r1, #1
	mov r0, r6
	strh r1, [r5, #0x50]
	bl sub_02008F90
	mov r1, r5
	bl sub_0200911C
_02008F38:
	mov r0, r6
	bl sub_02008F90
	cmp r0, r6
	bne _02008F60
	mov r0, r6
	bl sub_02008F98
	mov r1, #0
	ldr r3, _02008F74 ; =DAT_0208a844
	mov r2, r1
	bl _ZN17UnkClass_020023EC12sub_020028A4ElmPcz
_02008F60:
	mov r0, r6
	bl sub_02008F90
	mov r1, #1
	bl sub_02009124
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02008F74: .word DAT_0208a844

	arm_func_start sub_02008F78
sub_02008F78: ; 0x02008F78
	str r1, [r0, #0x5c]
	bx lr
	arm_func_end sub_02008F78

	arm_func_start sub_02008F80
sub_02008F80: ; 0x02008F80
	ldr r0, [r0, #0x5c]
	bx lr
	arm_func_end sub_02008F80

	arm_func_start sub_02008F88
sub_02008F88: ; 0x02008F88
	str r1, [r0, #0x60]
	bx lr
	arm_func_end sub_02008F88

	arm_func_start sub_02008F90
sub_02008F90: ; 0x02008F90
	ldr r0, [r0, #0x60]
	bx lr
	arm_func_end sub_02008F90

	arm_func_start sub_02008F98
sub_02008F98: ; 0x02008F98
	stmdb sp!, {r3, lr}
	bl sub_02008F90
	bl sub_02009100
	ldmia sp!, {r3, pc}
	arm_func_end sub_02008F98

	arm_func_start sub_02008FA8
sub_02008FA8: ; 0x02008FA8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_02008E88
	str r5, [r6, #0x68]
	mov r0, r6
	mov r1, #0
	str r4, [r6, #0x6c]
	bl sub_02008F78
	mov r0, r6
	mov r1, r6
	bl sub_02008F88
	mov r2, #0
	str r6, [r6, #0x64]
	mov r1, r2
	arm_func_end sub_02008FA8
_02008FE8:
	add r0, r6, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x74]
	cmp r2, #0x10
	blt _02008FE8
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02009004
sub_02009004: ; 0x02009004
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02009020
	mov r0, r4
	bl sub_02008ED8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02009004

	arm_func_start sub_02009020
sub_02009020: ; 0x02009020
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x64]
	cmp r4, r0
	beq _02009044
	arm_func_end sub_02009020
_02009034:
	bl sub_02008EDC
	ldr r0, [r4, #0x64]
	cmp r4, r0
	bne _02009034
_02009044:
	mov r0, #1
	strh r0, [r4, #0x70]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02009050
sub_02009050: ; 0x02009050
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02009108
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02009084
	blx r1
	ldrh r1, [r4, #0x70]
	orr r0, r1, r0
	strh r0, [r4, #0x70]
	arm_func_end sub_02009050
_02009084:
	mov r0, r4
	bl sub_02009090
	ldmia sp!, {r4, pc}

	arm_func_start sub_02009090
sub_02009090: ; 0x02009090
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r1, [r5, #0x70]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_02008F80
	movs r4, r0
	beq _020090DC
	arm_func_end sub_02009090
_020090B0:
	ldr r0, [r5, #0x64]
	ldr r0, [r0]
	cmp r0, #0
	beq _020090CC
	ldr r1, [r4]
	mov r0, r4
	blx r1
_020090CC:
	mov r0, r4
	bl sub_02008F80
	movs r4, r0
	bne _020090B0
_020090DC:
	mov r0, #0
	strh r0, [r5, #0x70]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020090E8
sub_020090E8: ; 0x020090E8
	add r0, r0, r1, lsl #2
	str r2, [r0, #0x74]
	bx lr
	arm_func_end sub_020090E8

	arm_func_start sub_020090F4
sub_020090F4: ; 0x020090F4
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x74]
	bx lr
	arm_func_end sub_020090F4

	arm_func_start sub_02009100
sub_02009100: ; 0x02009100
	ldr r0, [r0, #0x68]
	bx lr
	arm_func_end sub_02009100

	arm_func_start sub_02009108
sub_02009108: ; 0x02009108
	ldr r1, [r0, #0x64]
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02009108

	arm_func_start sub_0200911C
sub_0200911C: ; 0x0200911C
	str r1, [r0, #0x64]
	bx lr
	arm_func_end sub_0200911C

	arm_func_start sub_02009124
sub_02009124: ; 0x02009124
	strh r1, [r0, #0x70]
	bx lr
	arm_func_end sub_02009124

	arm_func_start sub_0200912C
sub_0200912C: ; 0x0200912C
	stmdb sp!, {r3, lr}
	cmp r1, #0
	beq _02009180
	ldr ip, [r0]
	mov r3, #0
	cmp ip, #0
	beq _02009168
	ldr lr, [r1, #4]
	arm_func_end sub_0200912C
_0200914C:
	ldr r2, [ip, #4]
	cmp lr, r2
	bgt _02009168
	mov r3, ip
	ldr ip, [ip, #8]
	cmp ip, #0
	bne _0200914C
_02009168:
	cmp r3, #0
	streq r1, [r0]
	strne r1, [r3, #8]
	str ip, [r1, #8]
	mov r0, #1
	ldmia sp!, {r3, pc}
_02009180:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_02009188
sub_02009188: ; 0x02009188
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, [r0]
	mov r7, r1
	mov r6, r2
	cmp r5, #0
	mov r4, #0
	beq _020091CC
	arm_func_end sub_02009188
_020091A4:
	mov r0, r5
	ldr r3, [r0]
	mov r1, r7
	ldr r3, [r3, #8]
	sub r2, r6, r4
	blx r3
	ldr r5, [r5, #8]
	add r4, r4, r0
	cmp r5, #0
	bne _020091A4
_020091CC:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020091D4
sub_020091D4: ; 0x020091D4
	mov r0, #0
	bx lr
	arm_func_end sub_020091D4

	arm_func_start sub_020091DC
sub_020091DC: ; 0x020091DC
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end sub_020091DC
