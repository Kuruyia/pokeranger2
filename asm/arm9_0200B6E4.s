    .include "macros.inc"
    .include "include/arm9_0200B6E4.inc"

    .text

	arm_func_start sub_0200B6E4
sub_0200B6E4: ; 0x0200B6E4
	stmdb sp!, {r3, lr}
	bl G2_GetBG1ScrPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x180
	bl MIi_CpuClearFast
	bl G2_GetBG1ScrPtr
	add r1, r0, #0x480
	mov r0, #0
	mov r2, #0x180
	bl MIi_CpuClearFast
	ldmia sp!, {r3, pc}
	arm_func_end sub_0200B6E4

	arm_func_start _ZN17UnkClass_0200BBC012sub_0200B714EP10CGame_0024
_ZN17UnkClass_0200BBC012sub_0200B714EP10CGame_0024: ; 0x0200B714
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	bx lr
	arm_func_end _ZN17UnkClass_0200BBC012sub_0200B714EP10CGame_0024

	arm_func_start _ZN17UnkClass_0200BBC012sub_0200B744Ev
_ZN17UnkClass_0200BBC012sub_0200B744Ev: ; 0x0200B744
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov lr, r0
	ldr r0, [lr, #4]
	ldr ip, [lr, #0xc]
	cmp r0, #1
	bgt _0200B7A4
	ldr r0, [lr, #0x20]
	add r4, sp, #0
	add r0, r0, #1
	str r0, [lr, #0x20]
	cmp r0, #0x28
	moveq r0, #0
	streq r0, [lr, #0x20]
	ldr r0, _0200B810 ; =DAT_020843d0
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r1, [lr, #0x20]
	ldr r2, _0200B814 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #2
	ldr r0, [r4, r3, lsl #2]
	add ip, ip, r0
	arm_func_end _ZN17UnkClass_0200BBC012sub_0200B744Ev
_0200B7A4:
	ldr r0, [lr, #4]
	cmp r0, #0xf
	blt _0200B7CC
	ldr r0, [lr, #0x24]
	cmp r0, #0
	ldreq ip, [lr, #0xc]
	beq _0200B7CC
	mov r0, #1
	str r0, [lr, #0x28]
	ldr ip, [lr, #0xc]
_0200B7CC:
	ldr r0, [lr, #0x28]
	and r1, ip, #0xff
	ldr r2, [lr, #8]
	ldr r3, [lr, #0x1c]
	orr r0, r1, r0, lsl #25
	mov r1, r2, lsl #0x17
	orr r0, r3, r0
	orr r0, r0, r1, lsr #7
	ldr r3, [lr, #0x18]
	ldr r2, [lr, #0x14]
	ldr r1, [lr]
	orr r0, r0, #0x100
	str r0, [r1]
	orr r0, r2, r3, lsl #12
	strh r0, [r1, #4]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200B810: .word DAT_020843d0
_0200B814: .word 0x66666667

	arm_func_start _ZN17UnkClass_0200BBC012sub_0200B818Emmmmmmm
_ZN17UnkClass_0200BBC012sub_0200B818Emmmmmmm: ; 0x0200B818
	stmdb sp!, {r4, lr}
	stmib r0, {r1, r2}
	ldr r1, [sp, #8]
	str r3, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr lr, [sp, #0xc]
	ldr ip, _0200BBB8 ; =0x00100010
	ldr r4, [sp, #0x10]
	cmp lr, ip
	ldr r2, [sp, #0x14]
	mov r1, #0
	bgt _0200B86C
	cmp lr, ip
	bge _0200B898
	cmp lr, #0
	bgt _0200B860
	beq _0200B890
	b _0200B89C
	arm_func_end _ZN17UnkClass_0200BBC012sub_0200B818Emmmmmmm
_0200B860:
	cmp lr, #0x10
	beq _0200B890
	b _0200B89C
_0200B86C:
	add r3, ip, #0x100000
	cmp lr, r3
	bgt _0200B880
	moveq r1, #2
	b _0200B89C
_0200B880:
	add r3, ip, #0x200000
	cmp lr, r3
	moveq r1, #3
	b _0200B89C
_0200B890:
	mov r1, #0
	b _0200B89C
_0200B898:
	mov r1, #1
_0200B89C:
	ldr r3, [r0, #4]
	cmp r3, #0x10
	addls pc, pc, r3, lsl #2
	b _0200BB90
_0200B8AC: ; jump table
	b _0200B8F0 ; case 0
	b _0200B918 ; case 1
	b _0200B940 ; case 2
	b _0200B964 ; case 3
	b _0200B98C ; case 4
	b _0200B9B4 ; case 5
	b _0200B9DC ; case 6
	b _0200BA04 ; case 7
	b _0200BA2C ; case 8
	b _0200BA54 ; case 9
	b _0200BA7C ; case 10
	b _0200BAA4 ; case 11
	b _0200BACC ; case 12
	b _0200BAF4 ; case 13
	b _0200BB1C ; case 14
	b _0200BB44 ; case 15
	b _0200BB6C ; case 16
_0200B8F0:
	mov r3, r4, lsr #5
	add r3, r3, #0x34
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #3
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B918:
	mov r3, r4, lsr #5
	add r3, r3, #0x38
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #3
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B940:
	mov r3, r4, lsr #5
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B964:
	mov r3, r4, lsr #5
	add r3, r3, #4
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B98C:
	mov r3, r4, lsr #5
	add r3, r3, #8
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B9B4:
	mov r3, r4, lsr #5
	add r3, r3, #0xc
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200B9DC:
	mov r3, r4, lsr #5
	add r3, r3, #0x10
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #2
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BA04:
	mov r3, r4, lsr #5
	add r3, r3, #0x14
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BA2C:
	mov r3, r4, lsr #5
	add r3, r3, #0x18
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BA54:
	mov r3, r4, lsr #5
	add r3, r3, #0x1c
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BA7C:
	mov r3, r4, lsr #5
	add r3, r3, #0x20
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BAA4:
	mov r3, r4, lsr #5
	add r3, r3, #0x24
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BACC:
	mov r3, r4, lsr #5
	add r3, r3, #0x28
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BAF4:
	mov r3, r4, lsr #5
	add r3, r3, #0x2c
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BB1C:
	mov r3, r4, lsr #5
	add r3, r3, #0x30
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0x40000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BB44:
	mov r3, r4, lsr #5
	add r3, r3, #0x44
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r1, r1, #1
	str r1, [r0, #0x18]
	mov r1, #0xc0000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BB6C:
	mov r3, r4, lsr #5
	add r3, r3, #0x84
	mov r1, r3, lsr r1
	str r1, [r0, #0x14]
	mov r1, r2, lsr #5
	str r1, [r0, #0x18]
	mov r1, #0xc0000000
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
_0200BB90:
	mov r3, r4, lsr #5
	add r3, r3, #0x104
	mov r3, r3, lsr r1
	mov r1, r2, lsr #5
	str r3, [r0, #0x14]
	add r2, r1, #1
	ldr r1, _0200BBBC ; =0x40004000
	str r2, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0200BBB8: .word 0x00100010
_0200BBBC: .word 0x40004000
