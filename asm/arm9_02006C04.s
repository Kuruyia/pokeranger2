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
	bl _Z12sub_020060007Point2DS_18UnkStruct_02006000
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
	bl _Z12sub_0200635011PointPair2DS_P7Point2Di
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
	bl _Z12sub_0200635011PointPair2DS_P7Point2Di
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
	bl _Z12sub_0200635011PointPair2DS_P7Point2Di
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
	bl _Z12sub_0200635011PointPair2DS_P7Point2Di
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
