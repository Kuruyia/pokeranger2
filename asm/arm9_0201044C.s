    .include "macros.inc"
    .include "include/arm9_0201044C.inc"

    .text

	arm_func_start sub_0201044C
sub_0201044C: ; 0x0201044C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x494]
	bl sub_0200C3D0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x498]
	bl sub_0200CAE0
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201044C

	arm_func_start sub_02010470
sub_02010470: ; 0x02010470
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r0, #0x20
	mov r4, r1
	bl _Znwm
	movs r8, r0
	beq _02010498
	mov r1, r4
	bl sub_0200D114
	mov r8, r0
	arm_func_end sub_02010470
_02010498:
	ldr r1, _020107A4 ; =s_data_param_PokeID_bin_0208ab84
	mov r0, r8
	bl sub_0200D148
	mov r0, r8
	bl sub_0200D390
	strh r0, [sl]
	ldrh r1, [sl]
	mov r0, #0x18
	mul r0, r1, r0
	bl _Znam
	str r0, [sl, #4]
	mov r7, #0
	str r7, [sp]
	ldrh r0, [sl]
	cmp r0, #0
	ble _02010784
	mov sb, r7
	add r5, sp, #0
	mov r6, #1
	mov r4, #2
	mov fp, #4
_020104EC:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl sub_0200D3B8
	ldr r2, [sp]
	ldr r1, [sl, #4]
	mov r0, r8
	strh r2, [r1, sb]
	mov r1, r7
	mov r2, r4
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #2]
	mov r0, r8
	mov r1, r7
	mov r2, fp
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #3]
	mov r0, r8
	mov r1, r7
	mov r2, #5
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #4]
	mov r0, r8
	mov r1, r7
	mov r2, #6
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #5]
	mov r0, r8
	mov r1, r7
	mov r2, #7
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #6]
	mov r0, r8
	mov r1, r7
	mov r2, #8
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #7]
	mov r0, r8
	mov r1, r7
	mov r2, #9
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	strb r1, [r0, #8]
	mov r0, r8
	mov r1, r7
	mov r2, #0xa
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #9]
	mov r0, r8
	mov r1, r7
	mov r2, #0xb
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xa]
	mov r0, r8
	mov r1, r7
	mov r2, #0xc
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xb]
	mov r0, r8
	mov r1, r7
	mov r2, #0xd
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, #0xe
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xd]
	mov r0, r8
	mov r1, r7
	mov r2, #0xf
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xe]
	mov r0, r8
	mov r1, r7
	mov r2, #0x10
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strb r2, [r1, #0xf]
	mov r0, r8
	mov r1, r7
	mov r2, #0x15
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x10]
	mov r0, r8
	mov r1, r7
	mov r2, #0x16
	mov r3, r5
	bl sub_0200D3B8
	ldr r1, [sl, #4]
	ldr r2, [sp]
	add r1, r1, sb
	strh r2, [r1, #0x12]
	mov r0, r8
	mov r1, r7
	mov r2, #0x17
	mov r3, r5
	bl sub_0200D3B8
	ldr r0, [sl, #4]
	ldr r1, [sp]
	add r0, r0, sb
	str r1, [r0, #0x14]
	ldrh r0, [sl]
	add r7, r7, #1
	add sb, sb, #0x18
	cmp r7, r0
	blt _020104EC
_02010784:
	cmp r8, #0
	beq _0201079C
	mov r0, r8
	bl sub_0200D134
	mov r0, r8
	bl _ZdlPv
_0201079C:
	mov r0, sl
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020107A4: .word s_data_param_PokeID_bin_0208ab84

	arm_func_start sub_020107A8
sub_020107A8: ; 0x020107A8
	ldrh r2, [r0]
	cmp r1, r2
	movhs r0, #0
	ldrlo r2, [r0, #4]
	movlo r0, #0x18
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end sub_020107A8

	arm_func_start sub_020107C4
sub_020107C4: ; 0x020107C4
	cmp r0, #0x18
	addls pc, pc, r0, lsl #2
	b _0201084C
_020107D0: ; jump table
	b _0201084C ; case 0
	b _02010834 ; case 1
	b _02010834 ; case 2
	b _02010834 ; case 3
	b _02010834 ; case 4
	b _02010834 ; case 5
	b _02010834 ; case 6
	b _02010834 ; case 7
	b _02010834 ; case 8
	b _0201083C ; case 9
	b _0201083C ; case 10
	b _0201083C ; case 11
	b _0201083C ; case 12
	b _02010844 ; case 13
	b _02010844 ; case 14
	b _02010844 ; case 15
	b _02010844 ; case 16
	b _02010844 ; case 17
	b _02010844 ; case 18
	b _02010844 ; case 19
	b _02010844 ; case 20
	b _02010844 ; case 21
	b _02010844 ; case 22
	b _02010844 ; case 23
	b _02010844 ; case 24
	arm_func_end sub_020107C4
_02010834:
	mov r0, #1
	bx lr
_0201083C:
	mov r0, #2
	bx lr
_02010844:
	mov r0, #3
	bx lr
_0201084C:
	mov r0, #0
	bx lr

	arm_func_start sub_02010854
sub_02010854: ; 0x02010854
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02010868
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02010854

	arm_func_start sub_02010868
sub_02010868: ; 0x02010868
	stmdb sp!, {r3, lr}
	mov r1, #0x22
	str r1, [r0]
	mov r1, #0xa
	strb r1, [r0, #4]
	mov r1, #1
	mov ip, #0
	strb r1, [r0, #5]
	strb ip, [r0, #6]
	str ip, [r0, #8]
	str ip, [r0, #0xc]
	str ip, [r0, #0x10]
	strb ip, [r0, #0x14]
	mov r3, #0xff
	mov lr, ip
	arm_func_end sub_02010868
_020108A4:
	add r2, r0, ip, lsl #1
	add r1, r0, ip
	strh r3, [r2, #0x16]
	add ip, ip, #1
	strb lr, [r1, #0x26]
	cmp ip, #8
	blt _020108A4
	strb lr, [r0, #0x40]
	mov r2, #0xff
_020108C8:
	add r1, r0, lr
	add lr, lr, #1
	strb r2, [r1, #0x41]
	cmp lr, #8
	blt _020108C8
	mov lr, #0
	ldr ip, _02010948 ; =0x0000FFFF
	strb lr, [r0, #0x2e]
	mov r2, lr
_020108EC:
	add r3, r0, lr, lsl #1
	add r1, r0, lr
	strh ip, [r3, #0x30]
	strb r2, [r1, #0x38]
	add lr, lr, #1
	strb r2, [r1, #0x3c]
	cmp lr, #4
	blt _020108EC
	strb r2, [r0, #0x49]
	strb r2, [r0, #0x4a]
	strb r2, [r0, #0x4b]
	strb r2, [r0, #0x4c]
	strb r2, [r0, #0x4d]
	strb r2, [r0, #0x4e]
	mov r1, #1
	strb r1, [r0, #0x4f]
	strb r1, [r0, #0x50]
	strb r2, [r0, #0x51]
	strb r2, [r0, #0x52]
	strb r2, [r0, #0x54]
	strh r2, [r0, #0x56]
	strb r2, [r0, #0x58]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02010948: .word 0x0000FFFF

	arm_func_start sub_0201094C
sub_0201094C: ; 0x0201094C
	str r1, [r0]
	bx lr
	arm_func_end sub_0201094C

	arm_func_start sub_02010954
sub_02010954: ; 0x02010954
	strb r1, [r0, #4]
	bx lr
	arm_func_end sub_02010954

	arm_func_start sub_0201095C
sub_0201095C: ; 0x0201095C
	strb r1, [r0, #5]
	bx lr
	arm_func_end sub_0201095C

	arm_func_start sub_02010964
sub_02010964: ; 0x02010964
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #6]
	bx lr
	arm_func_end sub_02010964

	arm_func_start sub_02010978
sub_02010978: ; 0x02010978
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_02010978

	arm_func_start sub_02010980
sub_02010980: ; 0x02010980
	str r1, [r0, #0xc]
	bx lr
	arm_func_end sub_02010980

	arm_func_start sub_02010988
sub_02010988: ; 0x02010988
	str r1, [r0, #0x10]
	bx lr
	arm_func_end sub_02010988

	arm_func_start sub_02010990
sub_02010990: ; 0x02010990
	ldrb r3, [r0, #0x14]
	cmp r3, #8
	bxhs lr
	add r3, r0, r3, lsl #1
	strh r1, [r3, #0x16]
	ldrb r1, [r0, #0x14]
	add r1, r0, r1
	strb r2, [r1, #0x26]
	ldrb r1, [r0, #0x14]
	add r1, r1, #1
	strb r1, [r0, #0x14]
	bx lr
	arm_func_end sub_02010990

	arm_func_start sub_020109C0
sub_020109C0: ; 0x020109C0
	stmdb sp!, {r4, lr}
	ldrb r3, [r0, #0x40]
	cmp r3, #8
	ldmhsia sp!, {r4, pc}
	ldrb r4, [r0, #0x2e]
	mov r3, #0xff
	mov lr, #0
	cmp r4, #0
	bls _02010A14
	arm_func_end sub_020109C0
_020109E4:
	add ip, r0, lr, lsl #1
	ldrh ip, [ip, #0x30]
	cmp r1, ip
	addeq ip, r0, lr
	ldreqb ip, [ip, #0x38]
	cmpeq r2, ip
	moveq r3, lr
	beq _02010A14
	add ip, lr, #1
	and lr, ip, #0xff
	cmp lr, r4
	blo _020109E4
_02010A14:
	cmp r3, #0xff
	bne _02010A44
	cmp r4, #4
	ldmhsia sp!, {r4, pc}
	add r3, r0, r4, lsl #1
	strh r1, [r3, #0x30]
	add r1, r0, r4
	strb r2, [r1, #0x38]
	ldrb r1, [r0, #0x2e]
	mov r3, r4
	add r1, r1, #1
	strb r1, [r0, #0x2e]
_02010A44:
	add r2, r0, #0x3c
	ldrb r1, [r2, r3]
	add r1, r1, #1
	strb r1, [r2, r3]
	ldrb r1, [r0, #0x40]
	add r1, r0, r1
	strb r3, [r1, #0x41]
	ldrb r1, [r0, #0x40]
	add r1, r1, #1
	strb r1, [r0, #0x40]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02010A70
sub_02010A70: ; 0x02010A70
	strb r1, [r0, #0x49]
	ldrb r1, [r0, #0x58]
	orr r1, r1, #1
	strb r1, [r0, #0x58]
	bx lr
	arm_func_end sub_02010A70

	arm_func_start sub_02010A84
sub_02010A84: ; 0x02010A84
	strb r1, [r0, #0x4a]
	ldrb r1, [r0, #0x58]
	orr r1, r1, #2
	strb r1, [r0, #0x58]
	bx lr
	arm_func_end sub_02010A84

	arm_func_start sub_02010A98
sub_02010A98: ; 0x02010A98
	strb r1, [r0, #0x4b]
	bx lr
	arm_func_end sub_02010A98

	arm_func_start sub_02010AA0
sub_02010AA0: ; 0x02010AA0
	strb r1, [r0, #0x4c]
	bx lr
	arm_func_end sub_02010AA0

	arm_func_start sub_02010AA8
sub_02010AA8: ; 0x02010AA8
	strb r1, [r0, #0x4d]
	bx lr
	arm_func_end sub_02010AA8

	arm_func_start sub_02010AB0
sub_02010AB0: ; 0x02010AB0
	strb r1, [r0, #0x4e]
	ldrb r1, [r0, #0x58]
	orr r1, r1, #4
	strb r1, [r0, #0x58]
	bx lr
	arm_func_end sub_02010AB0

	arm_func_start sub_02010AC4
sub_02010AC4: ; 0x02010AC4
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x4f]
	bx lr
	arm_func_end sub_02010AC4

	arm_func_start sub_02010AD8
sub_02010AD8: ; 0x02010AD8
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x50]
	bx lr
	arm_func_end sub_02010AD8

	arm_func_start sub_02010AEC
sub_02010AEC: ; 0x02010AEC
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x51]
	bx lr
	arm_func_end sub_02010AEC

	arm_func_start sub_02010B00
sub_02010B00: ; 0x02010B00
	strb r1, [r0, #0x52]
	bx lr
	arm_func_end sub_02010B00

	arm_func_start sub_02010B08
sub_02010B08: ; 0x02010B08
	strb r1, [r0, #0x54]
	bx lr
	arm_func_end sub_02010B08

	arm_func_start sub_02010B10
sub_02010B10: ; 0x02010B10
	strh r1, [r0, #0x56]
	ldrb r1, [r0, #0x58]
	orr r1, r1, #8
	strb r1, [r0, #0x58]
	bx lr
	arm_func_end sub_02010B10

	arm_func_start sub_02010B24
sub_02010B24: ; 0x02010B24
	ldr r0, [r0]
	bx lr
	arm_func_end sub_02010B24

	arm_func_start sub_02010B2C
sub_02010B2C: ; 0x02010B2C
	ldrb r0, [r0, #4]
	bx lr
	arm_func_end sub_02010B2C

	arm_func_start sub_02010B34
sub_02010B34: ; 0x02010B34
	ldrb r0, [r0, #5]
	bx lr
	arm_func_end sub_02010B34

	arm_func_start sub_02010B3C
sub_02010B3C: ; 0x02010B3C
	ldrb r0, [r0, #6]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02010B3C

	arm_func_start sub_02010B50
sub_02010B50: ; 0x02010B50
	ldr r0, [r0, #8]
	bx lr
	arm_func_end sub_02010B50

	arm_func_start sub_02010B58
sub_02010B58: ; 0x02010B58
	ldr r0, [r0, #0xc]
	bx lr
	arm_func_end sub_02010B58

	arm_func_start sub_02010B60
sub_02010B60: ; 0x02010B60
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end sub_02010B60

	arm_func_start sub_02010B68
sub_02010B68: ; 0x02010B68
	ldrb r0, [r0, #0x2e]
	bx lr
	arm_func_end sub_02010B68

	arm_func_start sub_02010B70
sub_02010B70: ; 0x02010B70
	add r0, r0, r1, lsl #1
	ldrh r0, [r0, #0x30]
	bx lr
	arm_func_end sub_02010B70

	arm_func_start sub_02010B7C
sub_02010B7C: ; 0x02010B7C
	ldrb r0, [r0, #0x40]
	bx lr
	arm_func_end sub_02010B7C

	arm_func_start sub_02010B84
sub_02010B84: ; 0x02010B84
	add r0, r0, r1
	ldrb r0, [r0, #0x41]
	bx lr
	arm_func_end sub_02010B84

	arm_func_start sub_02010B90
sub_02010B90: ; 0x02010B90
	ldrb r0, [r0, #0x14]
	bx lr
	arm_func_end sub_02010B90

	arm_func_start sub_02010B98
sub_02010B98: ; 0x02010B98
	add r0, r0, r1, lsl #1
	ldrh r0, [r0, #0x16]
	bx lr
	arm_func_end sub_02010B98

	arm_func_start sub_02010BA4
sub_02010BA4: ; 0x02010BA4
	add r0, r0, r1
	ldrb r0, [r0, #0x26]
	bx lr
	arm_func_end sub_02010BA4

	arm_func_start sub_02010BB0
sub_02010BB0: ; 0x02010BB0
	ldrb r0, [r0, #0x49]
	bx lr
	arm_func_end sub_02010BB0

	arm_func_start sub_02010BB8
sub_02010BB8: ; 0x02010BB8
	ldrb r0, [r0, #0x4a]
	bx lr
	arm_func_end sub_02010BB8

	arm_func_start sub_02010BC0
sub_02010BC0: ; 0x02010BC0
	ldrb r0, [r0, #0x4b]
	bx lr
	arm_func_end sub_02010BC0

	arm_func_start sub_02010BC8
sub_02010BC8: ; 0x02010BC8
	ldrb r0, [r0, #0x4c]
	bx lr
	arm_func_end sub_02010BC8

	arm_func_start sub_02010BD0
sub_02010BD0: ; 0x02010BD0
	ldrb r0, [r0, #0x4d]
	bx lr
	arm_func_end sub_02010BD0

	arm_func_start sub_02010BD8
sub_02010BD8: ; 0x02010BD8
	ldrb r0, [r0, #0x4e]
	bx lr
	arm_func_end sub_02010BD8

	arm_func_start sub_02010BE0
sub_02010BE0: ; 0x02010BE0
	ldrb r0, [r0, #0x4f]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02010BE0

	arm_func_start sub_02010BF4
sub_02010BF4: ; 0x02010BF4
	ldrb r0, [r0, #0x50]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02010BF4

	arm_func_start sub_02010C08
sub_02010C08: ; 0x02010C08
	ldrb r0, [r0, #0x51]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02010C08

	arm_func_start sub_02010C1C
sub_02010C1C: ; 0x02010C1C
	ldrb r0, [r0, #0x52]
	bx lr
	arm_func_end sub_02010C1C

	arm_func_start sub_02010C24
sub_02010C24: ; 0x02010C24
	ldrb r0, [r0, #0x58]
	bx lr
	arm_func_end sub_02010C24

	arm_func_start sub_02010C2C
sub_02010C2C: ; 0x02010C2C
	ldrb r0, [r0, #0x54]
	bx lr
	arm_func_end sub_02010C2C

	arm_func_start sub_02010C34
sub_02010C34: ; 0x02010C34
	ldrh r0, [r0, #0x56]
	bx lr
	arm_func_end sub_02010C34

	arm_func_start sub_02010C3C
sub_02010C3C: ; 0x02010C3C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02010C50
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02010C3C

	arm_func_start sub_02010C50
sub_02010C50: ; 0x02010C50
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02010C8C ; =MAIN_BSS_020AF35C
	mov r7, r0
	bl sub_02010C94
	ldr r5, _02010C90 ; =MAIN_BSS_020AF3CE
	mov r6, #0
	mov r4, #0x72
	arm_func_end sub_02010C50
_02010C6C:
	mla r1, r6, r4, r5
	mov r0, r7
	bl sub_02010C94
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #4
	blo _02010C6C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02010C8C: .word MAIN_BSS_020AF35C
_02010C90: .word MAIN_BSS_020AF3CE

	arm_func_start sub_02010C94
sub_02010C94: ; 0x02010C94
	stmdb sp!, {r4, lr}
	mov r4, r1
	mov r0, r4
	mov r1, #0
	mov r2, #0x72
	bl MI_CpuFill8
	mov r0, #1
	strh r0, [r4, #0x4c]
	strh r0, [r4, #0x6c]
	strh r0, [r4, #0x6e]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02010C94

	arm_func_start sub_02010CC0
sub_02010CC0: ; 0x02010CC0
	ldr r0, _02010CC8 ; =MAIN_BSS_020AF3CE
	bx lr
	.align 2, 0
_02010CC8: .word MAIN_BSS_020AF3CE
	arm_func_end sub_02010CC0

	arm_func_start CBattleResultParameter_ctor
CBattleResultParameter_ctor: ; 0x02010CCC
	stmdb sp!, {r4, lr}
	ldr r1, _02010CE8 ; =PTR_LAB_0208abac
	mov r4, r0
	str r1, [r4]
	bl sub_02010D04
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02010CE8: .word PTR_LAB_0208abac
	arm_func_end CBattleResultParameter_ctor

	arm_func_start CBattleResultParameter_complete_obj_dtor
CBattleResultParameter_complete_obj_dtor: ; 0x02010CEC
	bx lr
	arm_func_end CBattleResultParameter_complete_obj_dtor

	arm_func_start CBattleResultParameter_deleting_obj_dtor
CBattleResultParameter_deleting_obj_dtor: ; 0x02010CF0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end CBattleResultParameter_deleting_obj_dtor

	arm_func_start sub_02010D04
sub_02010D04: ; 0x02010D04
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x80
	mov r4, r0
	bl MI_CpuFill8
	mov r0, #0xff
	strb r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02010D04

	arm_func_start sub_02010D2C
sub_02010D2C: ; 0x02010D2C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov sl, r0
	mov r0, #0x20
	mov r4, r1
	bl _Znwm
	movs sb, r0
	beq _02010D58
	mov r1, r4
	bl sub_0200D114
	mov sb, r0
	arm_func_end sub_02010D2C
_02010D58:
	ldr r1, _02010E5C ; =s_data_param_DiskHP_bin_0208ac04
	mov r0, sb
	bl sub_0200D148
	mov r0, sb
	bl sub_0200D390
	strb r0, [sl]
	and r0, r0, #0xff
	bl _Znam
	str r0, [sl, #4]
	ldrb r0, [sl]
	mov r0, r0, lsl #1
	bl _Znam
	str r0, [sl, #8]
	ldrb r0, [sl]
	mov r0, r0, lsl #1
	bl _Znam
	str r0, [sl, #0xc]
	mov r8, #0
	str r8, [sp]
	ldrb r0, [sl]
	cmp r0, #0
	ble _02010E38
	mov r7, #1
	add r6, sp, #0
	mov r5, #2
	mov r4, #3
_02010DC0:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl sub_0200D3B8
	ldr r2, [sp]
	ldr r1, [sl, #4]
	mov r0, sb
	strb r2, [r1, r8]
	mov r1, r8
	mov r2, r5
	mov r3, r6
	bl sub_0200D3B8
	ldr r2, [sp]
	ldr r1, [sl, #8]
	mov r0, r8, lsl #1
	strh r2, [r1, r0]
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, r6
	bl sub_0200D3B8
	ldr r2, [sp]
	ldr r1, [sl, #0xc]
	mov r0, r8, lsl #1
	strh r2, [r1, r0]
	add r8, r8, #1
	ldrb r0, [sl]
	cmp r8, r0
	blt _02010DC0
_02010E38:
	cmp sb, #0
	beq _02010E50
	mov r0, sb
	bl sub_0200D134
	mov r0, sb
	bl _ZdlPv
_02010E50:
	mov r0, sl
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02010E5C: .word s_data_param_DiskHP_bin_0208ac04

	arm_func_start sub_02010E60
sub_02010E60: ; 0x02010E60
	ldrb r0, [r0]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	andne r0, r0, #0xff
	bx lr
	arm_func_end sub_02010E60

	arm_func_start sub_02010E78
sub_02010E78: ; 0x02010E78
	ldrb r2, [r0]
	cmp r1, r2
	movhi r0, #0
	ldrls r0, [r0, #4]
	ldrlsb r0, [r0, r1]
	bx lr
	arm_func_end sub_02010E78

	arm_func_start sub_02010E90
sub_02010E90: ; 0x02010E90
	ldrb r2, [r0]
	cmp r1, r2
	movhi r0, #0
    ldrls r2, [r0, #8]
    movls r0, r1, lsl #1
	ldrlsh r0, [r2, r0]
	bx lr
	arm_func_end sub_02010E90

	arm_func_start sub_02010EAC
sub_02010EAC: ; 0x02010EAC
	ldrb r2, [r0]
	cmp r1, r2
	movhi r0, #0
	ldrls r2, [r0, #0xc]
    movls r0, r1, lsl #1
	ldrlsh r0, [r2, r0]
	bx lr
	arm_func_end sub_02010EAC

	arm_func_start sub_02010EC8
sub_02010EC8: ; 0x02010EC8
	mov r1, #0
	str r1, [r0, #0x10]
	bx lr
	arm_func_end sub_02010EC8

	arm_func_start sub_02010ED4
sub_02010ED4: ; 0x02010ED4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x10]
	cmp r4, #0
	beq _02010F04
	beq _02010EFC
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02010ED4
_02010EFC:
	mov r0, #0
	str r0, [r5, #0x10]
_02010F04:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02010F0C
sub_02010F0C: ; 0x02010F0C
	mov r1, #0
	strh r1, [r0, #8]
	bx lr
	arm_func_end sub_02010F0C

	arm_func_start sub_02010F18
sub_02010F18: ; 0x02010F18
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r2, #8
	mov r4, r0
	bl MI_CpuFill8
	ldr r1, _02010F54 ; =0x0000C68F
	mov r0, #0
	strh r1, [r4]
	strh r0, [r4, #2]
	ldr r1, _02010F58 ; =0x0000E97C
	strh r0, [r4, #4]
	mov r0, r4
	strh r1, [r4, #6]
	bl sub_02010F0C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02010F54: .word 0x0000C68F
_02010F58: .word 0x0000E97C
	arm_func_end sub_02010F18

	arm_func_start sub_02010F5C
sub_02010F5C: ; 0x02010F5C
	mov r2, #1
	mov r1, r2, lsl r1
	ldrh r2, [r0, #2]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #2]
	bx lr
	arm_func_end sub_02010F5C

	arm_func_start sub_02010F78
sub_02010F78: ; 0x02010F78
	cmp r1, #0
	movne r0, r1
	ldrh r2, [r0]
	ldr r1, _02010FA4 ; =0x0000C68F
	cmp r2, r1
	ldreqh r1, [r0, #6]
	ldreq r0, _02010FA8 ; =0x0000E97C
	cmpeq r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_02010FA4: .word 0x0000C68F
_02010FA8: .word 0x0000E97C
	arm_func_end sub_02010F78

	arm_func_start sub_02010FAC
sub_02010FAC: ; 0x02010FAC
	mov r2, #1
	mov r1, r2, lsl r1
	ldrh r2, [r0, #4]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_02010FAC

	arm_func_start sub_02010FC8
sub_02010FC8: ; 0x02010FC8
	mov r3, #1
	mov r1, r3, lsl r1
	ldrh r2, [r0, #2]
	mov r1, r1, lsl #0x10
	ldrh r0, [r0, #4]
	tst r2, r1, lsr #16
	moveq r3, #0
	tst r0, r1, lsr #16
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #2
	bxne lr
	cmp r3, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02010FC8

	arm_func_start sub_0201100C
sub_0201100C: ; 0x0201100C
	add r1, r0, #0x3000
	mov r2, #0
	str r2, [r1, #8]
	bx lr
	arm_func_end sub_0201100C

	arm_func_start sub_0201101C
sub_0201101C: ; 0x0201101C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x3000
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _02011054
	beq _02011048
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_0201101C
_02011048:
	add r0, r5, #0x3000
	mov r1, #0
	str r1, [r0, #8]
_02011054:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201105C
sub_0201105C: ; 0x0201105C
	stmdb sp!, {r3, r4, r5, lr}
	mov r1, #0
	mov r5, r0
	bl sub_020110E0
	ldr r0, _020110D8 ; =MAIN_BSS_020AF620
	ldr r2, _020110DC ; =0x00003004
	mov r1, #0
	bl MI_CpuFill8
	add r0, r5, #0x3000
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _020110AC
	beq _020110A0
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_0201105C
_020110A0:
	add r0, r5, #0x3000
	mov r1, #0
	str r1, [r0, #8]
_020110AC:
	mov r0, #0x74
	bl _Znwm
	cmp r0, #0
	beq _020110C4
	mov r1, #1
	bl sub_02027FE8
_020110C4:
	add r1, r5, #0x3000
	str r0, [r1, #8]
	mov r0, r5
	bl sub_020110E8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020110D8: .word MAIN_BSS_020AF620
_020110DC: .word 0x00003004

	arm_func_start sub_020110E0
sub_020110E0: ; 0x020110E0
	str r1, [r0]
	bx lr
	arm_func_end sub_020110E0

	arm_func_start sub_020110E8
sub_020110E8: ; 0x020110E8
	add r0, r0, #0x3000
	mov r1, #0
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_020110E8

	arm_func_start sub_020110F8
sub_020110F8: ; 0x020110F8
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3000
	ldrh r2, [r0, #4]
	cmp r2, #0
	beq _0201111C
	cmp r2, #1
	beq _02011140
	b _02011180
	arm_func_end sub_020110F8
_0201111C:
	add r1, r1, #2
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #8]
	mov r1, r1, lsr #0x10
	bl sub_02028220
	add r0, r4, #0x3000
	mov r1, #1
	strh r1, [r0, #4]
	b _02011180
_02011140:
	ldr r0, [r0, #8]
	bl sub_0202841C
	cmp r0, #0
	beq _02011180
	tst r0, #0x80
	bne _0201116C
	add r0, r4, #0x3000
	mov r1, #3
	strh r1, [r0, #4]
	mov r0, #1
	ldmia sp!, {r4, pc}
_0201116C:
	mov r1, #4
	add r0, r4, #0x3000
	strh r1, [r0, #4]
	sub r0, r1, #5
	ldmia sp!, {r4, pc}
_02011180:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02011188
sub_02011188: ; 0x02011188
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x3000
	ldrh r2, [r0, #4]
	cmp r2, #0
	beq _020111AC
	cmp r2, #1
	beq _020111D0
	b _02011240
	arm_func_end sub_02011188
_020111AC:
	add r1, r1, #2
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #8]
	mov r1, r1, lsr #0x10
	bl sub_02028408
	add r0, r5, #0x3000
	mov r1, #1
	strh r1, [r0, #4]
	b _02011240
_020111D0:
	ldr r0, [r0, #8]
	bl sub_0202841C
	movs r4, r0
	beq _02011240
	tst r4, #0x80
	mov r0, r5
	bne _020111F8
	bl sub_020110E8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020111F8:
	bl sub_020110E8
	and r0, r4, #0x7f
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02011238
_0201120C: ; jump table
	b _02011238 ; case 0
	b _02011230 ; case 1
	b _02011230 ; case 2
	b _02011238 ; case 3
	b _02011230 ; case 4
	b _02011238 ; case 5
	b _02011230 ; case 6
	b _02011238 ; case 7
	b _02011230 ; case 8
_02011230:
	mvn r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02011238:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02011240:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02011248
sub_02011248: ; 0x02011248
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_02011248

	arm_func_start sub_02011254
sub_02011254: ; 0x02011254
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _02011284
	beq _0201127C
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_02011254
_0201127C:
	mov r0, #0
	str r0, [r5, #4]
_02011284:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201128C
sub_0201128C: ; 0x0201128C
	stmdb sp!, {r3, r4, r5, lr}
	mvn r1, #0
	mov r5, r0
	bl sub_020112DC
	ldr r0, _020112D8 ; =MAIN_BSS_020AF598
	mov r1, #0
	mov r2, #2
	bl MI_CpuFill8
	ldr r4, [r5, #4]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _020112CC
	mov r0, r4
	bl sub_02028054
	mov r0, r4
	bl _ZdlPv
	arm_func_end sub_0201128C
_020112CC:
	mov r0, #0
	str r0, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020112D8: .word MAIN_BSS_020AF598

	arm_func_start sub_020112DC
sub_020112DC: ; 0x020112DC
	cmp r1, #0
	bge _020112F4
	ldr r0, _02011314 ; =MAIN_BSS_020AF598
	mov r1, #0
	strh r1, [r0]
	bx lr
	arm_func_end sub_020112DC
_020112F4:
	ldr r2, _02011314 ; =MAIN_BSS_020AF598
	mov r0, #1
	mov r0, r0, lsl r1
	ldrh r1, [r2]
	mov r0, r0, lsl #0x10
	orr r0, r1, r0, lsr #16
	strh r0, [r2]
	bx lr
	.align 2, 0
_02011314: .word MAIN_BSS_020AF598

	arm_func_start sub_02011318
sub_02011318: ; 0x02011318
	ldr r0, _02011334 ; =MAIN_BSS_020AF598
	mov r2, #1
	mov r2, r2, lsl r1
	ldrh r1, [r0]
	mov r0, r2, lsl #0x10
	and r0, r1, r0, lsr #16
	bx lr
	.align 2, 0
_02011334: .word MAIN_BSS_020AF598
	arm_func_end sub_02011318

	arm_func_start sub_02011338
sub_02011338: ; 0x02011338
	ldr ip, _02011350 ; =__cxa_vec_cleanup
	ldr r0, _02011354 ; =MAIN_BSS_020AF5E4
	ldr r3, _02011358 ; =sub_02010ED4
	mov r1, #3
	mov r2, #0x14
	bx ip
	.align 2, 0
_02011350: .word __cxa_vec_cleanup
_02011354: .word MAIN_BSS_020AF5E4
_02011358: .word sub_02010ED4
	arm_func_end sub_02011338

	arm_func_start sub_0201135C
sub_0201135C: ; 0x0201135C
	ldr ip, _0201136C ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x54
	bx ip
	.align 2, 0
_0201136C: .word MI_CpuFill8
	arm_func_end sub_0201135C

	arm_func_start sub_02011370
sub_02011370: ; 0x02011370
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0201135C
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_02011370

	arm_func_start sub_02011384
sub_02011384: ; 0x02011384
	mov r1, #0
	str r1, [r0, #0x58]
	str r1, [r0, #0x54]
	bx lr
	arm_func_end sub_02011384

	arm_func_start sub_02011394
sub_02011394: ; 0x02011394
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_0201135C
	str r5, [r6, #0x58]
	str r4, [r6, #0x54]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02011394

	arm_func_start sub_020113B4
sub_020113B4: ; 0x020113B4
	stmdb sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	streqb r4, [r5, #2]
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #0x4c
	bgt _02011404
	ldrb r0, [r5]
	cmp r0, #0
	beq _020113E0
	bl OS_Terminate
	arm_func_end sub_020113B4
_020113E0:
	cmp r4, #0x32
	movlt r0, #1
	strltb r0, [r5]
	blt _020113FC
	cmp r4, #0x46
	movge r0, #1
	strgeb r0, [r5]
_020113FC:
	strb r4, [r5, #2]
	ldmia sp!, {r3, r4, r5, pc}
_02011404:
	bl OS_Terminate
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201140C
sub_0201140C: ; 0x0201140C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r0, #0x4c
	bhi _0201145C
	cmp r0, #0x32
	bhs _0201144C
	ldrb r0, [r4]
	cmp r0, #1
	beq _02011440
	bl OS_Terminate
	arm_func_end sub_0201140C
_02011440:
	mov r0, #2
	strb r0, [r4]
	ldmia sp!, {r4, pc}
_0201144C:
	cmp r0, #0x46
	movhs r0, #2
	strcsb r0, [r4]
	ldmia sp!, {r4, pc}
_0201145C:
	bl OS_Terminate
	ldmia sp!, {r4, pc}

	arm_func_start sub_02011464
sub_02011464: ; 0x02011464
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r0, #0x4c
	bhi _020114BC
	cmp r0, #0x32
	bhs _020114AC
	ldrb r0, [r4]
	cmp r0, #2
	beq _02011498
	bl OS_Terminate
	arm_func_end sub_02011464
_02011498:
	mov r0, #0
	strb r0, [r4]
	ldrb r0, [r4, #2]
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
_020114AC:
	cmp r0, #0x46
	movhs r0, #0
	strcsb r0, [r4]
	ldmia sp!, {r4, pc}
_020114BC:
	bl OS_Terminate
	ldmia sp!, {r4, pc}

	arm_func_start sub_020114C4
sub_020114C4: ; 0x020114C4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	add r4, r0, #0x14
	ldrb r0, [r4, r5]
	and r0, r0, #0xf
	cmp r0, #2
	bne _020114E4
	bl OS_Terminate
	arm_func_end sub_020114C4
_020114E4:
	ldrb r0, [r4, r5]
	bic r0, r0, #0xf
	orr r0, r0, #1
	strb r0, [r4, r5]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020114F8
sub_020114F8: ; 0x020114F8
	add r0, r0, r1
	ldrb r0, [r0, #0x14]
	and r0, r0, #0xf
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020114F8

	arm_func_start sub_02011514
sub_02011514: ; 0x02011514
	add r2, r0, #0x14
	ldrb r0, [r2, r1]
	orr r0, r0, #0x10
	strb r0, [r2, r1]
	bx lr
	arm_func_end sub_02011514

	arm_func_start sub_02011528
sub_02011528: ; 0x02011528
	add r0, r0, r1
	ldrb r0, [r0, #0x14]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02011528

	arm_func_start sub_02011540
sub_02011540: ; 0x02011540
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #1]
	mov r4, r1
	cmp r0, #0
	beq _0201155C
	bl OS_Terminate
	arm_func_end sub_02011540
_0201155C:
	add r0, r5, r4
	ldrb r0, [r0, #0x14]
	and r0, r0, #0xf
	cmp r0, #2
	bne _02011574
	bl OS_Terminate
_02011574:
	mov r0, #1
	strb r0, [r5, #1]
	mov r0, r5
	mov r1, r4
	strb r4, [r5, #3]
	bl sub_02011514
	ldr r0, [r5, #0x58]
	mov r1, r4
	bl sub_02034120
	ldr r0, [r5, #0x54]
	mov r1, r4
	bl sub_0200B21C
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020115A8
sub_020115A8: ; 0x020115A8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _020115C0
	bl OS_Terminate
	arm_func_end sub_020115A8
_020115C0:
	mov r3, #0
	strb r3, [r4, #1]
	ldrb r1, [r4, #3]
	add r2, r4, #0x14
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	orr r0, r0, #2
	strb r0, [r2, r1]
	strb r3, [r4, #3]
	ldr r0, [r4, #0x58]
	bl sub_020342C0
	ldr r0, [r4, #0x54]
	bl _ZN17UnkClass_020091E812sub_0200B36CEv
	ldmia sp!, {r4, pc}

	arm_func_start sub_020115F8
sub_020115F8: ; 0x020115F8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _02011610
	bl OS_Terminate
	arm_func_end sub_020115F8
_02011610:
	mov r0, #0
	strb r0, [r4, #1]
	strb r0, [r4, #3]
	ldr r0, [r4, #0x58]
	bl sub_020342C0
	ldr r0, [r4, #0x54]
	bl _ZN17UnkClass_020091E812sub_0200B36CEv
	ldmia sp!, {r4, pc}

	arm_func_start sub_02011630
sub_02011630: ; 0x02011630
	add r0, r0, r1
	ldrb r0, [r0, #0x14]
	and r0, r0, #0xf
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_02011630

	arm_func_start sub_0201164C
sub_0201164C: ; 0x0201164C
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0x4c
	ldmgtia sp!, {r4, pc}
	str r1, [r4, #8]
	ldr r0, [r4, #0x58]
	bl sub_02034084
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #8]
	bl sub_0200AFC0
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201164C

	arm_func_start sub_02011678
sub_02011678: ; 0x02011678
	mov r2, #0
	mov r3, r2
	arm_func_end sub_02011678
_02011680:
	add r1, r0, r3
	ldrb r1, [r1, #0x14]
	add r3, r3, #1
	and r1, r1, #0xf
	cmp r1, #2
	addeq r2, r2, #1
	cmp r3, #0x3e
	blt _02011680
	mov r0, r2
	bx lr

	arm_func_start sub_020116A8
sub_020116A8: ; 0x020116A8
	stmdb sp!, {r3, lr}
	cmp r1, #0x4c
	ldmgtia sp!, {r3, pc}
	ldr r0, [r0, #0x54]
	bl sub_0200AFC0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020116A8

	arm_func_start sub_020116C0
sub_020116C0: ; 0x020116C0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0xf8
	mov ip, r1
	mov lr, r0
	cmp ip, #0x45
	ble _02011700
	mov r2, #0
	arm_func_end sub_020116C0
_020116DC:
	add r1, lr, r2
	ldrb r0, [r1, #0x14]
	add r2, r2, #1
	cmp r2, #0x3e
	bic r0, r0, #0xf
	strb r0, [r1, #0x14]
	blt _020116DC
	add sp, sp, #0xf8
	ldmia sp!, {r4, r5, r6, pc}
_02011700:
	cmp ip, #0
	bne _02011730
	mov r2, #0
_0201170C:
	add r1, lr, r2
	ldrb r0, [r1, #0x14]
	add r2, r2, #1
	cmp r2, #0x3e
	bic r0, r0, #0xf
	strb r0, [r1, #0x14]
	blt _0201170C
	add sp, sp, #0xf8
	ldmia sp!, {r4, r5, r6, pc}
_02011730:
	ldr r6, _02011798 ; =DAT_02084428
	add r5, sp, #0
	mov r4, #0xf
_0201173C:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201173C
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	mov r4, #0
	add r3, sp, #0
_0201175C:
	ldr r0, [r3, r4, lsl #2]
	cmp r0, ip
	bgt _02011784
	add r2, lr, r4
	ldrb r1, [r2, #0x14]
	and r0, r1, #0xf
	cmp r0, #2
	bicne r0, r1, #0xf
	orrne r0, r0, #1
	strneb r0, [r2, #0x14]
_02011784:
	add r4, r4, #1
	cmp r4, #0x3e
	blt _0201175C
	add sp, sp, #0xf8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02011798: .word DAT_02084428

	arm_func_start sub_0201179C
sub_0201179C: ; 0x0201179C
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	bx lr
	arm_func_end sub_0201179C

	arm_func_start sub_020117AC
sub_020117AC: ; 0x020117AC
	bx lr
	arm_func_end sub_020117AC

	arm_func_start sub_020117B0
sub_020117B0: ; 0x020117B0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x20]
	ldr r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02011AA8 ; =DAT_0208b46c
	ldrh r0, [r0]
	cmp r0, #0x3c
	moveq r1, #1
	ldr r0, [r4, #0x10]
	movne r1, #2
	add r2, r0, r1
	str r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r2, r0
	strhi r0, [r4, #0x10]
	ldr r0, [r4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02011A6C
_02011824: ; jump table
	b _02011A6C ; case 0
	b _0201183C ; case 1
	b _02011870 ; case 2
	b _020118B4 ; case 3
	b _02011908 ; case 4
	b _02011978 ; case 5
	arm_func_end sub_020117B0
_0201183C:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0xc]
	bl sub_02007068
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0xc]
	bl sub_02007068
	str r0, [r4, #0x18]
	b _02011A6C
_02011870:
	ldr r0, [r4, #0xc]
	str r0, [sp]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x2c]
	ldr r3, [r4, #0x10]
	bl sub_020070A4
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x30]
	ldr r3, [r4, #0x10]
	bl sub_020070A4
	str r0, [r4, #0x18]
	b _02011A6C
_020118B4:
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x3c]
	ldr r3, [r4, #0x2c]
	bl sub_02007134
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x40]
	ldr r3, [r4, #0x30]
	bl sub_02007134
	str r0, [r4, #0x18]
	b _02011A6C
_02011908:
	ldrh r0, [r4, #0x44]
	ldr r2, [r4, #0x48]
	ldr r3, _02011AAC ; =FX_SinCosTable_
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r0, r0, #1
	mov r0, r0, lsl #1
	mul r5, r2, r1
	ldrsh r0, [r3, r0]
	ldr r6, [r4, #0x14]
	smull r2, r0, r5, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	add r0, r6, r2
	str r0, [r4, #0x14]
	ldr r2, [r4, #0x48]
	ldrh r0, [r4, #0x44]
	mul r1, r2, r1
	mov r0, r0, asr #4
	mov r0, r0, lsl #2
	ldrsh r0, [r3, r0]
	ldr r3, [r4, #0x18]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	str r0, [r4, #0x18]
	b _02011A6C
_02011978:
	ldrh r3, [r4, #0x5c]
	ldrh r2, [r4, #0x5e]
	ldr r0, _02011AAC ; =FX_SinCosTable_
	mla r1, r2, r1, r3
	strh r1, [r4, #0x5c]
	ldrh r1, [r4, #0x5c]
	ldr r2, [r4, #0x54]
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	add r1, r1, #1
	mov r1, r1, lsl #1
	ldrsh r1, [r0, r1]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r4, #0x14]
	ldrh r1, [r4, #0x5c]
	ldr r2, [r4, #0x58]
	mov r1, r1, asr #4
	mov r1, r1, lsl #2
	ldrsh r1, [r0, r1]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r4, #0x18]
	ldrh r1, [r4, #0x60]
	cmp r1, #0
	beq _02011A4C
	mov r1, r1, asr #4
	mov r2, r1, lsl #1
	add r1, r2, #1
	mov r2, r2, lsl #1
	mov r1, r1, lsl #1
	ldrsh r2, [r0, r2]
	ldr r7, [r4, #0x18]
	ldrsh r1, [r0, r1]
	ldr r0, [r4, #0x14]
	smull lr, ip, r7, r2
	smull r6, r5, r0, r1
	smull r3, r2, r0, r2
	smull r1, r0, r7, r1
	mov r6, r6, lsr #0xc
	mov lr, lr, lsr #0xc
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r6, r6, r5, lsl #20
	orr lr, lr, ip, lsl #20
	sub r5, r6, lr
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	str r5, [r4, #0x14]
	add r0, r3, r1
	str r0, [r4, #0x18]
_02011A4C:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x4c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x50]
	add r0, r1, r0
	str r0, [r4, #0x18]
_02011A6C:
	ldr r3, [r4, #0x18]
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	strh r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	movhs r0, #0
	strhs r0, [r4]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02011AA8: .word DAT_0208b46c
_02011AAC: .word FX_SinCosTable_

	arm_func_start sub_02011AB0
sub_02011AB0: ; 0x02011AB0
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	cmp r3, #0
	beq _02011B00
	mov r1, #0
	str r1, [r0, #0x10]
	mov r1, #1
	str r1, [r0]
	str r3, [r0, #0xc]
	ldr r1, [r0, #0x14]
	ldr r2, [sp, #0xc]
	str r1, [r0, #0x24]
	ldr r3, [r0, #0x18]
	ldr r1, [sp, #0x10]
	str r3, [r0, #0x28]
	str r2, [r0, #0x2c]
	str r1, [r0, #0x30]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02011AB0
_02011B00:
	add r1, sp, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02011B18
sub_02011B18: ; 0x02011B18
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r2, [sp, #0x1c]
	ldr ip, [sp, #0x18]
	cmp r2, #0
	beq _02011B7C
	mov r1, #0
	str r1, [r0, #0x10]
	mov r1, #2
	str r1, [r0]
	str r2, [r0, #0xc]
	ldr r2, [r0, #0x14]
	ldr r1, [sp, #0xc]
	str r2, [r0, #0x24]
	ldr r3, [r0, #0x18]
	ldr r2, [sp, #0x10]
	str r3, [r0, #0x28]
	str r1, [r0, #0x2c]
	ldr r1, [sp, #0x14]
	str r2, [r0, #0x30]
	str r1, [r0, #0x34]
	str ip, [r0, #0x38]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02011B18
_02011B7C:
	add r1, sp, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02011B94
sub_02011B94: ; 0x02011B94
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	ldr r2, [sp, #0x24]
	ldr lr, [sp, #0x18]
	cmp r2, #0
	ldr ip, [sp, #0x20]
	beq _02011C08
	mov r1, #0
	str r1, [r0, #0x10]
	mov r1, #3
	str r1, [r0]
	str r2, [r0, #0xc]
	ldr r2, [r0, #0x14]
	ldr r1, [sp, #0xc]
	str r2, [r0, #0x24]
	ldr r3, [r0, #0x18]
	ldr r2, [sp, #0x10]
	str r3, [r0, #0x28]
	str r1, [r0, #0x2c]
	ldr r1, [sp, #0x14]
	str r2, [r0, #0x30]
	str r1, [r0, #0x34]
	ldr r1, [sp, #0x1c]
	str lr, [r0, #0x38]
	str r1, [r0, #0x3c]
	str ip, [r0, #0x40]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02011B94
_02011C08:
	add r1, sp, #0xc
	ldmia r1, {r1, r2}
	bl sub_02011D3C
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start sub_02011C20
sub_02011C20: ; 0x02011C20
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r0, #0
	str r0, [r5, #0x10]
	mov r0, #1
	str r0, [r5]
	ldr r4, [sp, #0x18]
	ldr r1, [r5, #0x18]
	ldr r2, [sp, #0x14]
	ldr r0, [r5, #0x14]
	mov r6, r3
	sub r0, r2, r0
	sub r1, r4, r1
	bl sub_02007254
	mov r1, r6
	bl _s32_div_f
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x14]
	str r1, [r5, #0x24]
	ldr r1, [r5, #0x18]
	str r1, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r4, [r5, #0x30]
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02011C20

	arm_func_start sub_02011C90
sub_02011C90: ; 0x02011C90
	mov ip, #4
	mov r3, #0
	str ip, [r0]
	str r3, [r0, #0x10]
	sub r3, r3, #1
	str r3, [r0, #0xc]
	strh r1, [r0, #0x44]
	str r2, [r0, #0x48]
	bx lr
	arm_func_end sub_02011C90

	arm_func_start sub_02011CB4
sub_02011CB4: ; 0x02011CB4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	mov r2, #5
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #0x10]
	sub r1, r1, #1
	ldr ip, [sp, #0xc]
	str r1, [r0, #0xc]
	ldr lr, [sp, #0x10]
	str ip, [r0, #0x4c]
	str lr, [r0, #0x50]
	ldr r2, [sp, #0x18]
	str r3, [r0, #0x54]
	ldrh r1, [sp, #0x1c]
	str r2, [r0, #0x58]
	ldrh r2, [sp, #0x20]
	strh r1, [r0, #0x5c]
	ldrh r1, [sp, #0x24]
	strh r2, [r0, #0x5e]
	strh r1, [r0, #0x60]
	str ip, [r0, #0x2c]
	str lr, [r0, #0x30]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02011CB4

	arm_func_start sub_02011D1C
sub_02011D1C: ; 0x02011D1C
	mov r2, #0
	str r2, [r0]
	str r1, [r0, #0x14]
	bx lr
	arm_func_end sub_02011D1C

	arm_func_start sub_02011D2C
sub_02011D2C: ; 0x02011D2C
	mov r2, #0
	str r2, [r0]
	str r1, [r0, #0x18]
	bx lr
	arm_func_end sub_02011D2C

	arm_func_start sub_02011D3C
sub_02011D3C: ; 0x02011D3C
	stmdb sp!, {r0, r1, r2, r3}
	mov r1, #0
	ldr r2, [sp, #4]
	str r1, [r0]
	ldr r1, [sp, #8]
	str r2, [r0, #0x14]
	str r1, [r0, #0x18]
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02011D3C

	arm_func_start sub_02011D60
sub_02011D60: ; 0x02011D60
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, _02011E48 ; =ptr_FUN_02011e54_0208b488
	add r0, r4, #0xc
	str r1, [r4]
	bl sub_0201179C
	mov r1, #0
	mov r0, #0x4c
	str r1, [r4, #0x104]
	bl _Znwm
	cmp r0, #0
	beq _02011D98
	bl sub_02005150
	arm_func_end sub_02011D60
_02011D98:
	ldr r1, _02011E4C ; =sub_020051C8
	str r0, [r4, #0xc4]
	mov r0, #8
	ldr r3, _02011E50 ; =sub_02005150
	mov r2, r0
	str r1, [sp]
	mov r1, #0x4c
	bl __cxa_vec_new
	str r0, [r4, #0x160]
	mov r0, #0x80
	bl _Znam
	str r0, [r4, #0x180]
	mov r1, #0
	add r0, r4, #0x108
	mov r2, #0x14
	strb r1, [r4, #0x70]
	bl MI_CpuFill8
	mov r2, #0x1f
	add r0, r4, #0x11c
	mov r1, #0
	strb r2, [r4, #0x108]
	mov r2, #0x18
	bl MI_CpuFill8
	add r0, r4, #0x134
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	mov r0, #0x1000
	str r0, [r4, #0x11c]
	str r0, [r4, #0x134]
	add r0, r4, #0x14c
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r1, #0
	str r1, [r4, #0xb0]
	str r1, [r4, #0xb4]
	mov r0, #0x1000
	str r0, [r4, #0xb8]
	strh r1, [r4, #0xbc]
	strh r1, [r4, #0xbe]
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02011E48: .word ptr_FUN_02011e54_0208b488
_02011E4C: .word sub_020051C8
_02011E50: .word sub_02005150

	arm_func_start sub_02011E54
sub_02011E54: ; 0x02011E54
	stmdb sp!, {r4, lr}
	ldr r1, _02011ED4 ; =ptr_FUN_02011e54_0208b488
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0xc4]
	cmp r0, #0
	beq _02011E88
	beq _02011E80
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02011E54
_02011E80:
	mov r0, #0
	str r0, [r4, #0xc4]
_02011E88:
	ldr r0, [r4, #0x180]
	cmp r0, #0
	beq _02011EA0
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x180]
_02011EA0:
	ldr r0, [r4, #0x160]
	cmp r0, #0
	beq _02011EC4
	ldr r3, _02011ED8 ; =sub_020051C8
	mov r1, #0x4c
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x160]
_02011EC4:
	add r0, r4, #0xc
	bl sub_020117AC
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02011ED4: .word ptr_FUN_02011e54_0208b488
_02011ED8: .word sub_020051C8

	arm_func_start sub_02011EDC
sub_02011EDC: ; 0x02011EDC
	stmdb sp!, {r4, lr}
	ldr r1, _02011F64 ; =ptr_FUN_02011e54_0208b488
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0xc4]
	cmp r0, #0
	beq _02011F10
	beq _02011F08
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02011EDC
_02011F08:
	mov r0, #0
	str r0, [r4, #0xc4]
_02011F10:
	ldr r0, [r4, #0x180]
	cmp r0, #0
	beq _02011F28
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x180]
_02011F28:
	ldr r0, [r4, #0x160]
	cmp r0, #0
	beq _02011F4C
	ldr r3, _02011F68 ; =sub_020051C8
	mov r1, #0x4c
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x160]
_02011F4C:
	add r0, r4, #0xc
	bl sub_020117AC
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02011F64: .word ptr_FUN_02011e54_0208b488
_02011F68: .word sub_020051C8

	arm_func_start sub_02011F6C
sub_02011F6C: ; 0x02011F6C
	stmdb sp!, {r4, lr}
	ldr r1, _02011FEC ; =ptr_FUN_02011e54_0208b488
	mov r4, r0
	str r1, [r4]
	ldr r0, [r4, #0xc4]
	cmp r0, #0
	beq _02011FA0
	beq _02011F98
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	arm_func_end sub_02011F6C
_02011F98:
	mov r0, #0
	str r0, [r4, #0xc4]
_02011FA0:
	ldr r0, [r4, #0x180]
	cmp r0, #0
	beq _02011FB8
	bl _ZdaPv
	mov r0, #0
	str r0, [r4, #0x180]
_02011FB8:
	ldr r0, [r4, #0x160]
	cmp r0, #0
	beq _02011FDC
	ldr r3, _02011FF0 ; =sub_020051C8
	mov r1, #0x4c
	mov r2, #8
	bl __cxa_vec_delete
	mov r0, #0
	str r0, [r4, #0x160]
_02011FDC:
	add r0, r4, #0xc
	bl sub_020117AC
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02011FEC: .word ptr_FUN_02011e54_0208b488
_02011FF0: .word sub_020051C8

	arm_func_start sub_02011FF4
sub_02011FF4: ; 0x02011FF4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020120B0
	str r4, [r5, #0x104]
	ldr r1, [r4, #0xc]
	ldr r0, [r5, #0xc4]
	mov r6, #0
	str r1, [r0, #0x34]
	arm_func_end sub_02011FF4
_02012018:
	ldr r0, [r5, #0x104]
	and r1, r6, #0xff
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	beq _02012044
	ldrb r0, [r0]
	tst r0, #1
	strneb r6, [r5, #0xc0]
	bne _02012050
_02012044:
	add r6, r6, #1
	cmp r6, #0x1d
	blt _02012018
_02012050:
	mov r7, #0
	mov r6, #1
_02012058:
	ldr r0, [r5, #0x104]
	mov r1, r7
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _02012090
	ldrb r2, [r4, #5]
	mov r1, r6
	bl sub_02008A80
	add r1, r5, r7, lsl #1
	strh r0, [r1, #0xc8]
_02012090:
	add r0, r7, #1
	and r7, r0, #0xff
	cmp r7, #0x1d
	blo _02012058
	ldrh r0, [r5, #4]
	orr r0, r0, #8
	strh r0, [r5, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_020120B0
sub_020120B0: ; 0x020120B0
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x104]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r4, #0
	arm_func_end sub_020120B0
_020120C8:
	ldr r0, [r5, #0x104]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _020120F8
	add r1, r5, r4, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008B80
_020120F8:
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, #0x1d
	blo _020120C8
	mov r0, #0
	str r0, [r5, #0x104]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02012114
sub_02012114: ; 0x02012114
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x104]
	ldr r3, [r0]
	ldr r3, [r3, #0x14]
	blx r3
	mov r5, r0
	cmp r5, #0xff
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x104]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	movs r4, r0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4]
	tst r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	strb r5, [r6, #0xc0]
	bl sub_020124BC
	ldrb r1, [r6, #0xc0]
	ldr r0, [r4, #0xc]
	add r1, r6, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_020089B8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02012114

	arm_func_start sub_02012184
sub_02012184: ; 0x02012184
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x104]
	mov r5, r3
	ldr r3, [r0]
	ldr r3, [r3, #0x14]
	blx r3
	mov r4, r0
	cmp r4, #0xff
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x104]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r1, [r0]
	tst r1, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	and r1, r4, #0xff
	strb r4, [r6, #0xc0]
	add r1, r6, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	ldr r0, [r0, #0xc]
	mov r2, r5
	bl sub_02008A58
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02012184

	arm_func_start sub_020121F4
sub_020121F4: ; 0x020121F4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	mov r4, r0
	ldr r0, [r4, #0x104]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl sub_02012340
	mov r0, r4
	bl sub_020123AC
	mov r0, r4
	bl sub_020123FC
	mov r0, r4
	bl sub_02012470
	mov r0, r4
	bl sub_020124BC
	mov r0, r4
	bl sub_020125FC
	mov r0, r4
	bl sub_02012648
	mov r0, r4
	bl sub_020126C8
	mov r0, r4
	bl sub_02012750
	ldr r2, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x104]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	cmp r0, #0
	beq _020122C8
	ldr r2, [r0]
	ldrb r1, [r4, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _020122C8
	ldrb r1, [r4, #0xc0]
	add r1, r4, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008844
	ldr r1, [r0]
	ldr r0, [r0, #4]
	add r5, sp, #0x18
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	b _020122E4
	arm_func_end sub_020121F4
_020122C8:
	mov r0, #0
	add r1, sp, #8
	add r5, sp, #0x18
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_020122E4:
	ldr r3, [r4, #0x8c]
	ldr r2, [r4, #0xa0]
	ldr r1, [r5]
	ldr r0, [r5, #4]
	ldr ip, [sp, #0x20]
	ldr lr, [sp, #0x24]
	add r5, ip, r1
	ldr ip, [r4, #0xb0]
	add r3, r3, r2
	ldr r2, [r4, #0xc4]
	add r4, lr, r0
	add r3, ip, r3
	sub r3, r4, r3
	str r5, [r2, #0x18]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r5, [sp, #0x20]
	str r3, [sp, #0x24]
	str r5, [sp]
	str r3, [sp, #4]
	str r3, [r2, #0x1c]
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02012340
sub_02012340: ; 0x02012340
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x28
	mov r4, r0
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, r4, #0xc
	bl sub_020117B0
	ldr lr, [sp, #0x18]
	ldr r3, [r4, #0x20]
	ldr ip, [sp, #0x1c]
	ldr r2, [r4, #0x24]
	sub r0, r3, lr
	sub r1, r2, ip
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	str r3, [sp, #0x10]
	str r2, [sp, #0x14]
	str r0, [sp]
	str r1, [sp, #4]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	bl sub_02007254
	str r0, [r4, #8]
	add sp, sp, #0x28
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012340

	arm_func_start sub_020123AC
sub_020123AC: ; 0x020123AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x90]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r4, #0x96]
	add r0, r0, #1
	strh r0, [r4, #0x96]
	ldrh r1, [r4, #0x96]
	ldrh r0, [r4, #0x94]
	cmp r1, r0
	movhs r0, #0
	strhs r0, [r4, #0x90]
	ldrh r2, [r4, #0x96]
	ldrh r3, [r4, #0x94]
	ldr r0, [r4, #0x98]
	ldr r1, [r4, #0x9c]
	bl sub_02007068
	str r0, [r4, #0x8c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020123AC

	arm_func_start sub_020123FC
sub_020123FC: ; 0x020123FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xa4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r4, #0xaa]
	add r0, r0, #1
	strh r0, [r4, #0xaa]
	ldrh r1, [r4, #0xaa]
	ldrh r0, [r4, #0xa8]
	cmp r1, r0
	movhs r0, #0
	strhs r0, [r4, #0xa4]
	ldrh r2, [r4, #0xaa]
	ldrh r3, [r4, #0xa8]
	mov r0, #0
	mov r1, #0x8000
	bl sub_02007068
	mov r1, r0, asr #4
	ldr r0, _0201246C ; =FX_SinCosTable_
	mov r1, r1, lsl #2
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #0xac]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r4, #0xa0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0201246C: .word FX_SinCosTable_
	arm_func_end sub_020123FC

	arm_func_start sub_02012470
sub_02012470: ; 0x02012470
	ldr r1, [r0, #0xb4]
	cmp r1, #0
	bxeq lr
	ldrh r3, [r0, #0xbc]
	ldrh r2, [r0, #0xbe]
	ldr r1, _020124B8 ; =FX_SinCosTable_
	add r2, r3, r2
	strh r2, [r0, #0xbc]
	ldrh r2, [r0, #0xbc]
	ldr r3, [r0, #0xb8]
	mov r2, r2, asr #4
	mov r2, r2, lsl #2
	ldrsh r1, [r1, r2]
	smull r2, r1, r3, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r0, #0xb0]
	bx lr
	.align 2, 0
_020124B8: .word FX_SinCosTable_
	arm_func_end sub_02012470

	arm_func_start sub_020124BC
sub_020124BC: ; 0x020124BC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x104]
	ldrb r1, [r5, #0xc0]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldrb r1, [r5, #0x70]
	mov r4, r0
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020125D4
_020124EC: ; jump table
	b _020124FC ; case 0
	b _02012544 ; case 1
	b _02012568 ; case 2
	b _0201257C ; case 3
	arm_func_end sub_020124BC
_020124FC:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _0201252C
	ldr r3, [r5, #0x3c]
	ldr r0, [r5, #0x34]
	ldr r2, [r5, #0x38]
	ldr r1, [r5, #0x30]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	strh r0, [r5, #0x72]
	b _020125D4
_0201252C:
	cmp r0, #4
	ldreqh r0, [r5, #0x50]
	streqh r0, [r5, #0x72]
	ldrneh r0, [r5, #0x10]
	strneh r0, [r5, #0x72]
	b _020125D4
_02012544:
	ldr r3, [r5, #0x88]
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x84]
	ldr r1, [r5, #0x20]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	strh r0, [r5, #0x72]
	b _020125D4
_02012568:
	ldrh r1, [r5, #0x72]
	ldrsh r0, [r5, #0x80]
	add r0, r1, r0
	strh r0, [r5, #0x72]
	b _020125D4
_0201257C:
	ldr r0, [r5, #0x74]
	cmp r0, #0
	beq _020125D4
	ldrsh r0, [r5, #0x80]
	ldr r3, [r5, #0x7c]
	add r0, r3, r0
	str r0, [r5, #0x7c]
	cmp r3, r0
	movle r2, r3
	ldr r1, [r5, #0x78]
	movgt r2, r0
	cmp r2, r1
	bhi _020125D0
	cmp r3, r0
	movlt r3, r0
	cmp r3, r1
	blo _020125D0
	strh r1, [r5, #0x72]
	mov r0, #0
	str r0, [r5, #0x74]
	b _020125D4
_020125D0:
	strh r0, [r5, #0x72]
_020125D4:
	cmp r4, #0
	ldrne r0, [r4, #0xc]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #0xc0]
	ldrh r2, [r5, #0x72]
	add r1, r5, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008968
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020125FC
sub_020125FC: ; 0x020125FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #4]
	tst r0, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x104]
	ldrb r1, [r4, #0xc0]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0xc0]
	add r1, r4, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008A38
	ldmia sp!, {r4, pc}
	arm_func_end sub_020125FC

	arm_func_start sub_02012648
sub_02012648: ; 0x02012648
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #4]
	tst r1, #2
	ldmeqia sp!, {r4, pc}
	add r1, r4, #0x108
	bl sub_0201267C
	ldr r0, [r4, #0x10c]
	cmp r0, #0
	ldreqh r0, [r4, #4]
	biceq r0, r0, #2
	streqh r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012648

	arm_func_start sub_0201267C
sub_0201267C: ; 0x0201267C
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4, #8]
	add r2, r0, #1
	str r2, [r4, #8]
	ldrb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	ldr r3, [r4, #0xc]
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl sub_02007068
	mov r0, r0, asr #0xc
	strb r0, [r4]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	movge r0, #0
	strge r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201267C

	arm_func_start sub_020126C8
sub_020126C8: ; 0x020126C8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #4]
	tst r1, #4
	ldmeqia sp!, {r4, pc}
	add r1, r4, #0x11c
	bl sub_02012710
	mov r0, r4
	add r1, r4, #0x134
	bl sub_02012710
	ldr r0, [r4, #0x120]
	cmp r0, #0
	ldreq r0, [r4, #0x138]
	cmpeq r0, #0
	ldreqh r0, [r4, #4]
	biceq r0, r0, #4
	streqh r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020126C8

	arm_func_start sub_02012710
sub_02012710: ; 0x02012710
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4, #8]
	add r2, r0, #1
	str r2, [r4, #8]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r3, [r4, #0xc]
	bl sub_02007068
	str r0, [r4]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	movge r0, #0
	strge r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012710

	arm_func_start sub_02012750
sub_02012750: ; 0x02012750
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #4]
	tst r1, #0x10
	ldmeqia sp!, {r4, pc}
	add r1, r4, #0x14c
	bl sub_02012784
	ldr r0, [r4, #0x150]
	cmp r0, #0
	ldreqh r0, [r4, #4]
	biceq r0, r0, #0x10
	streqh r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012750

	arm_func_start sub_02012784
sub_02012784: ; 0x02012784
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4, #8]
	add r2, r0, #1
	str r2, [r4, #8]
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	ldr r3, [r4, #0xc]
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl sub_02007068
	mov r0, r0, asr #0xc
	strh r0, [r4]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	movge r0, #0
	strge r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012784

	arm_func_start sub_020127D0
sub_020127D0: ; 0x020127D0
	cmp r2, #0
	streq r1, [r0, #0x8c]
	moveq r1, #0
	streq r1, [r0, #0x90]
	bxeq lr
	mov r3, #1
	str r3, [r0, #0x90]
	ldr ip, [r0, #0x8c]
	mov r3, #0
	str ip, [r0, #0x98]
	str r1, [r0, #0x9c]
	strh r3, [r0, #0x96]
	strh r2, [r0, #0x94]
	bx lr
	arm_func_end sub_020127D0

	arm_func_start sub_02012808
sub_02012808: ; 0x02012808
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	str r0, [r4, #0x90]
	ldr r3, [r4, #0x8c]
	mov r0, #0
	str r3, [r4, #0x98]
	str r1, [r4, #0x9c]
	strh r0, [r4, #0x96]
	ldr r1, [r4, #0x9c]
	ldr r0, [r4, #0x98]
	subs r3, r1, r0
	rsbmi r3, r3, #0
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0xc
	orr r1, r1, r3, lsr #20
	mov r0, r3, lsl #0xc
	mov r3, r2, asr #0x1f
	bl _ll_div
	mov r0, r0, asr #0xc
	strh r0, [r4, #0x94]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012808

	arm_func_start sub_02012860
sub_02012860: ; 0x02012860
	mov r3, #1
	str r3, [r0, #0xa4]
	mov r3, #0
	strh r3, [r0, #0xaa]
	strh r2, [r0, #0xa8]
	str r1, [r0, #0xac]
	bx lr
	arm_func_end sub_02012860

	arm_func_start sub_0201287C
sub_0201287C: ; 0x0201287C
	mov r1, #0
	str r1, [r0, #0x74]
	strb r1, [r0, #0x70]
	ldrh r1, [r0, #0x72]
	strh r1, [r0, #0x10]
	bx lr
	arm_func_end sub_0201287C

	arm_func_start sub_02012894
sub_02012894: ; 0x02012894
	stmdb sp!, {r0, r1, r2, r3}
	mov r1, #0
	str r1, [r0, #0x74]
	mov r1, #1
	ldr r2, [sp, #4]
	strb r1, [r0, #0x70]
	ldr r1, [sp, #8]
	str r2, [r0, #0x84]
	str r1, [r0, #0x88]
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02012894

	arm_func_start sub_020128C0
sub_020128C0: ; 0x020128C0
	mov r2, #1
	str r2, [r0, #0x74]
	mov r2, #2
	strb r2, [r0, #0x70]
	strh r1, [r0, #0x80]
	bx lr
	arm_func_end sub_020128C0

	arm_func_start sub_020128D8
sub_020128D8: ; 0x020128D8
	mov r1, #0
	str r1, [r0, #0x74]
	mov r1, #3
	strb r1, [r0, #0x70]
	bx lr
	arm_func_end sub_020128D8

	arm_func_start sub_020128EC
sub_020128EC: ; 0x020128EC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	str r0, [r5, #0x74]
	mov r0, #3
	mov r4, r1
	strb r0, [r5, #0x70]
	strh r4, [r5, #0x72]
	ldr r0, [r5, #0x104]
	ldrb r1, [r5, #0xc0]
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #0xc0]
	mov r2, r4
	add r1, r5, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008968
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020128EC

	arm_func_start sub_02012948
sub_02012948: ; 0x02012948
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x74]
	mov r0, #3
	strb r0, [r4, #0x70]
	ldr r3, [sp, #0x10]
	ldr r0, [r4, #0x24]
	ldr r2, [sp, #0xc]
	ldr r1, [r4, #0x20]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	strh r0, [r4, #0x72]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_02012948

	arm_func_start sub_02012990
sub_02012990: ; 0x02012990
	cmp r2, #0
	bxeq lr
	mov r3, #1
	str r3, [r0, #0x74]
	mov r3, #3
	strb r3, [r0, #0x70]
	ldrh r3, [r0, #0x72]
	add r1, r1, #0x10000
	add r3, r3, #0x10000
	str r3, [r0, #0x7c]
	str r1, [r0, #0x78]
	strh r2, [r0, #0x80]
	ldrsh r1, [r0, #0x80]
	ldr r2, [r0, #0x7c]
	cmp r1, #0
	ldr r1, [r0, #0x78]
	ble _020129E4
	cmp r2, r1
	addhi r1, r1, #0x10000
	strhi r1, [r0, #0x78]
	bx lr
	arm_func_end sub_02012990
_020129E4:
	cmp r2, r1
	addlo r1, r2, #0x10000
	strlo r1, [r0, #0x7c]
	bx lr

	arm_func_start sub_020129F4
sub_020129F4: ; 0x020129F4
	cmp r1, #0
	streqb r2, [r0, #0x108]
	ldreqh r1, [r0, #4]
	biceq r1, r1, #2
	streqh r1, [r0, #4]
	bxeq lr
	mov r3, #1
	str r3, [r0, #0x10c]
	mov r3, #0
	str r3, [r0, #0x110]
	str r1, [r0, #0x114]
	ldrb r1, [r0, #0x108]
	strb r1, [r0, #0x118]
	strb r2, [r0, #0x119]
	ldrh r1, [r0, #4]
	orr r1, r1, #2
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_020129F4

	arm_func_start sub_02012A3C
sub_02012A3C: ; 0x02012A3C
	stmdb sp!, {r4, lr}
	cmp r1, #0
	beq _02012A90
	mov r4, #1
	str r4, [r0, #0x120]
	mov lr, #0
	str lr, [r0, #0x124]
	str r1, [r0, #0x128]
	ldr ip, [r0, #0x11c]
	str ip, [r0, #0x12c]
	str r2, [r0, #0x130]
	str r4, [r0, #0x138]
	str lr, [r0, #0x13c]
	str r1, [r0, #0x140]
	ldr r1, [r0, #0x134]
	str r1, [r0, #0x144]
	str r3, [r0, #0x148]
	ldrh r1, [r0, #4]
	orr r1, r1, #4
	strh r1, [r0, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012A3C
_02012A90:
	str r2, [r0, #0x11c]
	str r3, [r0, #0x134]
	ldrh r1, [r0, #4]
	bic r1, r1, #4
	strh r1, [r0, #4]
	ldmia sp!, {r4, pc}

	arm_func_start sub_02012AA8
sub_02012AA8: ; 0x02012AA8
	cmp r1, #0
	beq _02012AE4
	mov r3, #1
	str r3, [r0, #0x150]
	mov r3, #0
	str r3, [r0, #0x154]
	str r1, [r0, #0x158]
	add r1, r0, #0x100
	ldrh r3, [r1, #0x4c]
	strh r3, [r1, #0x5c]
	strh r2, [r1, #0x5e]
	ldrh r1, [r0, #4]
	orr r1, r1, #0x10
	strh r1, [r0, #4]
	bx lr
	arm_func_end sub_02012AA8
_02012AE4:
	add r1, r0, #0x100
	strh r2, [r1, #0x4c]
	ldrh r1, [r0, #4]
	bic r1, r1, #0x10
	strh r1, [r0, #4]
	bx lr

	arm_func_start sub_02012AFC
sub_02012AFC: ; 0x02012AFC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x104]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r0]
	ldrb r1, [r4, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0xc0]
	ldr r0, [r0, #0xc]
	add r1, r4, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008860
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012AFC

	arm_func_start sub_02012B48
sub_02012B48: ; 0x02012B48
	mov r0, #0
	strb r0, [r1]
	str r0, [r1, #4]
	mov r0, #0x1f
	str r0, [r1, #8]
	mov r0, #0x1000
	str r0, [r1, #0xc]
	bx lr
	arm_func_end sub_02012B48

	arm_func_start sub_02012B68
sub_02012B68: ; 0x02012B68
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldrb ip, [r4, #0x164]
	cmp r3, #0
	mov r0, #0
	orr r3, ip, #1
	strb r3, [r4, #0x164]
	str r1, [r4, #0x168]
	str r2, [r4, #0x16c]
	str r0, [r4, #0x170]
	str r0, [r4, #0x174]
	ldrneb r0, [r4, #0x164]
	ldr r1, [sp, #0x18]
	mov r7, #0
	orrne r0, r0, #2
	strneb r0, [r4, #0x164]
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	ldrneb r0, [r4, #0x164]
	orrne r0, r0, #4
	strneb r0, [r4, #0x164]
	ldr r0, [sp, #0x20]
	str r1, [r4, #0x178]
	str r0, [r4, #0x17c]
	ldr r5, [r4, #0x180]
	ldr r6, [r4, #0x160]
	arm_func_end sub_02012B68
_02012BD0:
	mov r0, r4
	mov r1, r5
	bl sub_02012B48
	ldr r0, [r4, #0x104]
	add r7, r7, #1
	ldr r0, [r0, #0xc]
	cmp r7, #8
	str r0, [r6, #0x34]
	add r5, r5, #0x10
	add r6, r6, #0x4c
	blt _02012BD0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_02012C00
sub_02012C00: ; 0x02012C00
	ldrb r1, [r0, #0x164]
	bic r1, r1, #1
	strb r1, [r0, #0x164]
	bx lr
	arm_func_end sub_02012C00

	arm_func_start sub_02012C10
sub_02012C10: ; 0x02012C10
	stmdb sp!, {r4, lr}
	ldr r1, [r0, #0x180]
	mov r4, #0
	arm_func_end sub_02012C10
_02012C1C:
	ldrb r2, [r1]
	cmp r2, #0
	bne _02012C34
	bl sub_02012B48
	mov r0, r4
	ldmia sp!, {r4, pc}
_02012C34:
	add r4, r4, #1
	cmp r4, #8
	add r1, r1, #0x10
	blt _02012C1C
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02012C4C
sub_02012C4C: ; 0x02012C4C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r1, [r4, #0x164]
	mvn r3, #0
	tst r1, #1
	beq _02012C94
	ldr r2, [r4, #0x170]
	ldr r1, [r4, #0x168]
	cmp r2, r1
	addne r0, r2, #1
	strne r0, [r4, #0x170]
	bne _02012C9C
	mov r1, #0
	str r1, [r4, #0x170]
	bl sub_02012C10
	mov r3, r0
	b _02012C9C
	arm_func_end sub_02012C4C
_02012C94:
	bic r0, r1, #1
	strb r0, [r4, #0x164]
_02012C9C:
	mov r5, #0
	mov r2, #1
	ldr ip, [r4, #0x180]
	ldr lr, [r4, #0x160]
	mov r8, r5
	mov r7, r2
	mov r6, #0x1f
	mov fp, r5
_02012CBC:
	cmp r5, r3
	bne _02012CF8
	strb r2, [ip]
	ldr sl, [r4, #0x8c]
	ldr sb, [r4, #0xa0]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	add sb, sl, sb
	ldr sl, [r4, #0xb0]
	str r1, [sp]
	add sb, sl, sb
	str r1, [lr, #0x18]
	sub r1, r0, sb
	str r0, [sp, #4]
	str r1, [lr, #0x1c]
_02012CF8:
	ldrb r0, [ip]
	cmp r0, #0
	beq _02012D6C
	ldr r1, [ip, #4]
	ldr r0, [r4, #0x16c]
	cmp r1, r0
	addle r0, r1, #1
	strle r0, [ip, #4]
	strgtb r8, [ip]
	ldrb r0, [r4, #0x164]
	tst r0, #2
	beq _02012D4C
	ldr r1, [ip, #8]
	ldr r0, [r4, #0x178]
	add r0, r1, r0
	str r0, [ip, #8]
	cmp r0, #1
	strlt r7, [ip, #8]
	ldr r0, [ip, #8]
	cmp r0, #0x1f
	strgt r6, [ip, #8]
_02012D4C:
	ldrb r0, [r4, #0x164]
	tst r0, #4
	beq _02012D6C
	ldr r1, [ip, #0xc]
	ldr r0, [r4, #0x17c]
	adds r0, r1, r0
	str r0, [ip, #0xc]
	strmi fp, [ip, #0xc]
_02012D6C:
	add r5, r5, #1
	cmp r5, #8
	add ip, ip, #0x10
	add lr, lr, #0x4c
	blt _02012CBC
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start sub_02012D88
sub_02012D88: ; 0x02012D88
	ldrb r0, [r0, #0x164]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end sub_02012D88

	arm_func_start sub_02012D9C
sub_02012D9C: ; 0x02012D9C
	ldr r0, [r0, #0x180]
	ldrb r0, [r0, r1, lsl #4]
	bx lr
	arm_func_end sub_02012D9C

	arm_func_start sub_02012DA8
sub_02012DA8: ; 0x02012DA8
	ldr r0, [r0, #0x160]
	bx lr
	arm_func_end sub_02012DA8

	arm_func_start sub_02012DB0
sub_02012DB0: ; 0x02012DB0
	ldr r0, [r0, #0x180]
	add r0, r0, r1, lsl #4
	ldr r0, [r0, #8]
	bx lr
	arm_func_end sub_02012DB0

	arm_func_start sub_02012DC0
sub_02012DC0: ; 0x02012DC0
	ldr r0, [r0, #0x180]
	add r0, r0, r1, lsl #4
	ldr r0, [r0, #0xc]
	bx lr
	arm_func_end sub_02012DC0

	arm_func_start sub_02012DD0
sub_02012DD0: ; 0x02012DD0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x104]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r0]
	ldrb r1, [r4, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0xc0]
	ldr r0, [r0, #0xc]
	add r1, r4, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008D20
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012DD0

	arm_func_start sub_02012E1C
sub_02012E1C: ; 0x02012E1C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x104]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r0]
	ldrb r1, [r4, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0xc0]
	ldr r0, [r0, #0xc]
	add r1, r4, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_02008D38
	ldmia sp!, {r4, pc}
	arm_func_end sub_02012E1C

	arm_func_start sub_02012E68
sub_02012E68: ; 0x02012E68
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x104]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r0]
	ldrb r1, [r5, #0xc0]
	ldr r2, [r2, #0xc]
	blx r2
	movs r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl sub_020124BC
	ldrb r1, [r5, #0xc0]
	ldr r0, [r4, #0xc]
	add r1, r5, r1, lsl #1
	ldrh r1, [r1, #0xc8]
	bl sub_020089B8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02012E68

	arm_func_start sub_02012EB4
sub_02012EB4: ; 0x02012EB4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	ldr r0, [sl]
	mov r7, r3
	str r0, [sp, #8]
	ldr r0, [sl, #4]
	mov sb, r1
	mov r8, r2
	cmp r7, #1
	str r0, [sp, #4]
	mov fp, #0
	mov r6, #1
	blt _02012F50
	arm_func_end sub_02012EB4
_02012EEC:
	str r7, [sp]
	ldr r0, [sl]
	ldr r1, [sb]
	ldr r2, [r8]
	mov r3, r6
	bl sub_020070A4
	str r7, [sp]
	mov r5, r0
	ldr r0, [sl, #4]
	ldr r1, [sb, #4]
	ldr r2, [r8, #4]
	mov r3, r6
	bl sub_020070A4
	mov r4, r0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	sub r0, r5, r0
	sub r1, r4, r1
	bl sub_02007254
	add r6, r6, #1
	add fp, fp, r0
	str r5, [sp, #8]
	str r4, [sp, #4]
	cmp r6, r7
	ble _02012EEC
_02012F50:
	mov r0, fp
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start sub_02012F5C
sub_02012F5C: ; 0x02012F5C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r1
	mov r7, r2
	mov r6, r3
	ldr lr, [r5, #0x20]
	ldr ip, [r5, #0x24]
	add r0, sp, #8
	mov r1, r7
	mov r2, r4
	mov r3, #8
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	bl sub_02012EB4
	mov r1, r6
	bl _s32_div_f
	cmp r0, #1
	movlt r0, #1
	str r0, [sp, #4]
	ldr r1, [r7]
	ldr r0, [r7, #4]
	sub r2, sp, #4
	str r1, [r2]
	str r0, [r2, #4]
	ldr r3, [r2]
	add r0, r5, #0xc
	ldmia r4, {r1, r2}
	bl sub_02011B18
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02012F5C

	arm_func_start sub_02012FD8
sub_02012FD8: ; 0x02012FD8
	stmdb sp!, {r4, lr}
	ldr r1, _02012FF4 ; =PTR_LAB_0208b4bc
	mov r4, r0
	str r1, [r4]
	bl sub_02013138
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02012FF4: .word PTR_LAB_0208b4bc
	arm_func_end sub_02012FD8

	arm_func_start sub_02012FF8
sub_02012FF8: ; 0x02012FF8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr ip, _0201305C ; =PTR_LAB_0208b4bc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str ip, [r7]
	bl sub_02013138
	ldrh r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr ip, [sp, #0x30]
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	bl sub_02013154
	mov r0, r7
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0201305C: .word PTR_LAB_0208b4bc
	arm_func_end sub_02012FF8

	arm_func_start sub_02013060
sub_02013060: ; 0x02013060
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr ip, _020130B4 ; =PTR_LAB_0208b4bc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str ip, [r7]
	bl sub_02013138
	ldr r0, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #4]
	bl sub_020138E4
	mov r0, r7
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020130B4: .word PTR_LAB_0208b4bc
	arm_func_end sub_02013060

    arm_func_start sub_020130B8
sub_020130B8: ; 0x020130B8
    stmdb sp!, {r4, lr}
    ldr r1, _020130DC ; =PTR_LAB_0208b4bc
    mov r4, r0
    str r1, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #8]
    blx r1
    mov r0, r4
    ldmia sp!, {r4, pc}
	.align 2, 0
_020130DC: .word PTR_LAB_0208b4bc
    arm_func_end sub_020130B8

    arm_func_start sub_020130E0
sub_020130E0: ; 0x020130E0
    stmdb sp!, {r4, lr}
    ldr r1, _0201310C ; =PTR_LAB_0208b4bc
    mov r4, r0
    str r1, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #8]
    blx r1
    mov r0, r4
    bl _ZdlPv
    mov r0, r4
    ldmia sp!, {r4, pc}
	.align 2, 0
_0201310C: .word PTR_LAB_0208b4bc
    arm_func_end sub_020130E0

	arm_func_start sub_02013110
sub_02013110: ; 0x02013110
	stmdb sp!, {r4, lr}
	ldr r1, _02013134 ; =PTR_LAB_0208b4bc
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02013134: .word PTR_LAB_0208b4bc
	arm_func_end sub_02013110

	arm_func_start sub_02013138
sub_02013138: ; 0x02013138
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	strb r1, [r0, #0x14]
	strb r1, [r0, #6]
	bx lr
	arm_func_end sub_02013138

	arm_func_start sub_02013154
sub_02013154: ; 0x02013154
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1f4
	ldr r7, [r0]
	mov r5, r0
	ldr r7, [r7, #8]
	mov r6, r1
	mov r8, r2
	mov sl, r3
	ldr r4, [sp, #0x224]
	blx r7
	add r0, sp, #0x208
	ldrh sb, [r0, #0x10]
	mov r7, #0
	mov r2, r7
	mov r0, #1
	arm_func_end sub_02013154
_02013190:
	tst sb, r0, lsl r2
	mov r1, r0, lsl r2
	beq _020131C4
	cmp r1, #0x10
	beq _020131B0
	cmp r1, #0x20
	beq _020131B8
	b _020131C0
_020131B0:
	add r7, r7, #3
	b _020131C4
_020131B8:
	add r7, r7, #0xc
	b _020131C4
_020131C0:
	add r7, r7, #1
_020131C4:
	add r2, r2, #1
	cmp r2, #0x1d
	blt _02013190
	cmp r7, #0
	addeq sp, sp, #0x1f4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov fp, r7, lsl #4
	mov r0, fp
	mov r1, #4
	bl _Z23Heap_AllocWithAlignmentmm
	str r0, [r5, #0x10]
	mov r1, r0
	mov r2, fp
	mov r0, #0
	bl MIi_CpuClearFast
	strb r7, [r5, #0x14]
	cmp r6, #3
	addls pc, pc, r6, lsl #2
	b _020132AC
_02013210: ; jump table
	b _02013220 ; case 0
	b _02013244 ; case 1
	b _02013268 ; case 2
	b _0201328C ; case 3
_02013220:
	mov r7, #0
	strb r7, [r5, #5]
	ldr r1, _020138A0 ; =s_p_03d_02d_0208b4d8
	add r0, sp, #0x194
	mov r2, r8
	mov r3, sl
	strb r7, [r5, #6]
	bl OS_SPrintf
	b _020132C4
_02013244:
	mov r3, #1
	strb r3, [r5, #5]
	mov r3, #0
	ldr r1, _020138A4 ; =s_npc_03d_0208b4e4
	add r0, sp, #0x194
	mov r2, r8
	strb r3, [r5, #6]
	bl OS_SPrintf
	b _020132C4
_02013268:
	mov r7, #1
	strb r7, [r5, #5]
	ldr r1, _020138A8 ; =s_t_03d_02d_0208b4ec
	add r0, sp, #0x194
	mov r2, r8
	mov r3, sl
	strb r7, [r5, #6]
	bl OS_SPrintf
	b _020132C4
_0201328C:
	mov r3, #0
	strb r3, [r5, #5]
	ldr r1, _020138AC ; =s_e_03d_0208b4f8
	add r0, sp, #0x194
	mov r2, r8
	strb r3, [r5, #6]
	bl OS_SPrintf
	b _020132C4
_020132AC:
	mov r0, #1
	strb r0, [r5, #5]
	mov r0, #0
	add sp, sp, #0x1f4
	strb r0, [r5, #6]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020132C4:
	ldr r1, [sp, #0x220]
	add r0, sp, #0x10
	cmp r1, #0
	beq _020132E0
	mov r2, #4
	bl STD_CopyLString
	b _020132E8
_020132E0:
	ldr r1, _020138B0 ; =s_ACT_0208b500
	bl STD_CopyString
_020132E8:
	cmp r6, #3
	addls pc, pc, r6, lsl #2
	b _02013350
_020132F4: ; jump table
	b _02013304 ; case 0
	b _02013318 ; case 1
	b _0201332C ; case 2
	b _02013340 ; case 3
_02013304:
	ldr r1, _020138B4 ; =s_data_poke_s_LZ_bin_0208b504
	add r0, sp, #0x134
	add r2, sp, #0x194
	bl OS_SPrintf
	b _02013350
_02013318:
	ldr r1, _020138B8 ; =s_data_npc_s_LZ_bin_0208b518
	add r0, sp, #0x134
	add r2, sp, #0x194
	bl OS_SPrintf
	b _02013350
_0201332C:
	ldr r1, _020138BC ; =s_data_target_s_LZ_bin_0208b52c
	add r0, sp, #0x134
	add r2, sp, #0x194
	bl OS_SPrintf
	b _02013350
_02013340:
	ldr r1, _020138C0 ; =s_data_effect_s_LZ_bin_0208b544
	add r0, sp, #0x134
	add r2, sp, #0x194
	bl OS_SPrintf
_02013350:
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _02013390
	mov r1, #1
	str r1, [sp]
	mov r7, #0
	cmp r4, #0
	moveq r3, #1
	str r7, [sp, #4]
	str r7, [sp, #8]
	movne r3, #0
	add r1, sp, #0x10
	add r2, sp, #0x134
	str r7, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
_02013390:
	cmp r0, #0
	addeq sp, sp, #0x1f4
	str r0, [r5, #8]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _020138C4 ; =s_s_s_NCLR_0208b55c
	add r0, sp, #0xd4
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _020133D4
	mov r2, #0
	add r1, sp, #0xd4
	mov r3, r2
	bl sub_02007AC0
_020133D4:
	ldr r1, _020138C8 ; =s_s_s_0208b568
	str r0, [r5, #0xc]
	add r0, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0x194
	mov r7, #0
	bl OS_SPrintf
	tst sb, #1
	mov sl, r7
	beq _02013434
	ldr r1, _020138C8 ; =s_s_s_0208b568
	add r0, sp, #0x74
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	bl sub_02013CD4
	ldr r0, [r5, #0x10]
	mov r1, r7
	strb r1, [r0, #1]
	add sl, sl, #1
_02013434:
	tst sb, #2
	beq _020134DC
	ldr r1, _020138CC ; =s_s_s_s_0208b570
	add r0, sp, #0x74
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _020134B0
	mov r0, #0
	stmia sp, {r0, r4}
	ldr r1, [r5, #0x10]
	add r2, sp, #0x14
	add r3, sp, #0x74
	mov r0, r5
	add r1, r1, sl, lsl #4
	bl sub_02013E78
	cmp r0, #0
	bne _020134A0
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
	b _020134C8
_020134A0:
	ldr r0, [r5, #0x10]
	add r0, r0, sl, lsl #4
	ldr r7, [r0, #4]
	b _020134C8
_020134B0:
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
_020134C8:
	ldr r0, [r5, #0x10]
	mov r1, #1
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
_020134DC:
	tst sb, #4
	beq _02013584
	ldr r1, _020138D0 ; =s_s_s_w_0208b578
	add r0, sp, #0x74
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _02013558
	str r7, [sp]
	str r4, [sp, #4]
	ldr r1, [r5, #0x10]
	add r2, sp, #0x14
	add r3, sp, #0x74
	mov r0, r5
	add r1, r1, sl, lsl #4
	bl sub_02013E78
	cmp r0, #0
	bne _02013548
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
	b _02013570
_02013548:
	ldr r0, [r5, #0x10]
	add r0, r0, sl, lsl #4
	ldr r7, [r0, #4]
	b _02013570
_02013558:
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
_02013570:
	ldr r0, [r5, #0x10]
	mov r1, #2
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
_02013584:
	tst sb, #8
	beq _0201361C
	ldr r1, _020138D4 ; =s_s_s_t_0208b580
	add r0, sp, #0x74
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _020135F0
	str r7, [sp]
	str r4, [sp, #4]
	ldr r1, [r5, #0x10]
	add r2, sp, #0x14
	add r3, sp, #0x74
	mov r0, r5
	add r1, r1, sl, lsl #4
	bl sub_02013E78
	cmp r0, #0
	bne _02013608
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
	b _02013608
_020135F0:
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
_02013608:
	ldr r0, [r5, #0x10]
	mov r1, #3
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
_0201361C:
	tst sb, #0x10
	beq _020136F0
	cmp r6, #1
	beq _020136AC
	ldr fp, _020138D8 ; =s_s_s_p_02d_0208b588
	mov r8, sl, lsl #4
	mov r7, #0
	add r6, sp, #0x74
_0201363C:
	ldrb r0, [r5, #0x14]
	cmp sl, r0
	bge _02013764
	add r3, r7, #1
	str r3, [sp]
	mov r0, r6
	mov r1, fp
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldr r1, [r5, #0x10]
	mov r0, r5
	mov r2, r6
	add r1, r1, r8
	mov r3, r4
	bl sub_02013CD4
	cmp r0, #0
	beq _02013764
	ldr r0, [r5, #0x10]
	add r1, r7, #4
	add r0, r0, sl, lsl #4
	add r7, r7, #1
	strb r1, [r0, #1]
	cmp r7, #0x1d
	add r8, r8, #0x10
	add sl, sl, #1
	blt _0201363C
	b _02013764
_020136AC:
	ldr r1, _020138DC ; =s_s_s_p_0208b594
	add r0, sp, #0x74
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldr r1, [r5, #0x10]
	add r2, sp, #0x74
	mov r0, r5
	mov r3, r4
	add r1, r1, sl, lsl #4
	bl sub_02013CD4
	ldr r0, [r5, #0x10]
	mov r1, #4
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
	b _02013764
_020136F0:
	mov r8, sl, lsl #4
	mov r6, #0
	mov r7, #0x40
	add fp, sp, #0x74
_02013700:
	tst sb, r7
	beq _02013754
	add r2, r6, #1
	str r2, [sp]
	ldr r1, _020138D8 ; =s_s_s_p_02d_0208b588
	mov r0, fp
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldr r1, [r5, #0x10]
	mov r0, r5
	mov r2, fp
	add r1, r1, r8
	mov r3, r4
	bl sub_02013CD4
	ldr r0, [r5, #0x10]
	add r1, r6, #4
	add r0, r0, sl, lsl #4
	add r8, r8, #0x10
	strb r1, [r0, #1]
	add sl, sl, #1
_02013754:
	mov r7, r7, lsl #1
	cmp r7, #0x100
	add r6, r6, #1
	ble _02013700
_02013764:
	tst sb, #0x20
	beq _020137F0
	ldr r6, _020138E0 ; =s_s_s_a_02d_0208b59c
	mov sb, sl, lsl #4
	mov r8, #0
	add r7, sp, #0x74
	add fp, sp, #0x10
_02013780:
	ldrb r0, [r5, #0x14]
	cmp sl, r0
	bge _02013864
	add ip, r8, #1
	mov r0, r7
	mov r1, r6
	mov r2, fp
	add r3, sp, #0x194
	str ip, [sp]
	bl OS_SPrintf
	ldr r1, [r5, #0x10]
	mov r0, r5
	add r1, r1, sb
	mov r2, r7
	mov r3, r4
	bl sub_02013CD4
	cmp r0, #0
	beq _02013864
	ldr r0, [r5, #0x10]
	add r1, r8, #7
	add r0, r0, sl, lsl #4
	add r8, r8, #1
	strb r1, [r0, #1]
	cmp r8, #0x1d
	add sb, sb, #0x10
	add sl, sl, #1
	blt _02013780
	b _02013864
_020137F0:
	mov r8, sl, lsl #4
	mov r6, #0
	mov r7, #0x200
	add fp, sp, #0x74
_02013800:
	tst sb, r7
	beq _02013854
	add r2, r6, #1
	str r2, [sp]
	ldr r1, _020138E0 ; =s_s_s_a_02d_0208b59c
	mov r0, fp
	add r2, sp, #0x10
	add r3, sp, #0x194
	bl OS_SPrintf
	ldr r1, [r5, #0x10]
	mov r0, r5
	mov r2, fp
	add r1, r1, r8
	mov r3, r4
	bl sub_02013CD4
	ldr r0, [r5, #0x10]
	add r1, r6, #7
	add r0, r0, sl, lsl #4
	add r8, r8, #0x10
	strb r1, [r0, #1]
	add sl, sl, #1
_02013854:
	mov r7, r7, lsl #1
	cmp r7, #0x1000
	add r6, r6, #1
	ble _02013800
_02013864:
	ldr r0, [sp, #0x21c]
	cmp r0, #0
	ldrne r4, [r5, #8]
	cmpne r4, #0
	addeq sp, sp, #0x1f4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	beq _02013890
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
_02013890:
	mov r0, #0
	str r0, [r5, #8]
	add sp, sp, #0x1f4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020138A0: .word s_p_03d_02d_0208b4d8
_020138A4: .word s_npc_03d_0208b4e4
_020138A8: .word s_t_03d_02d_0208b4ec
_020138AC: .word s_e_03d_0208b4f8
_020138B0: .word s_ACT_0208b500
_020138B4: .word s_data_poke_s_LZ_bin_0208b504
_020138B8: .word s_data_npc_s_LZ_bin_0208b518
_020138BC: .word s_data_target_s_LZ_bin_0208b52c
_020138C0: .word s_data_effect_s_LZ_bin_0208b544
_020138C4: .word s_s_s_NCLR_0208b55c
_020138C8: .word s_s_s_0208b568
_020138CC: .word s_s_s_s_0208b570
_020138D0: .word s_s_s_w_0208b578
_020138D4: .word s_s_s_t_0208b580
_020138D8: .word s_s_s_p_02d_0208b588
_020138DC: .word s_s_s_p_0208b594
_020138E0: .word s_s_s_a_02d_0208b59c

	arm_func_start sub_020138E4
sub_020138E4: ; 0x020138E4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x194
	ldr r6, [r0]
	mov sl, r0
	ldr r6, [r6, #8]
	mov r5, r1
	mov r4, r2
	mov sb, r3
	blx r6
	mov r6, #0
	mov r2, r6
	mov r0, #1
	arm_func_end sub_020138E4
_02013914:
	tst sb, r0, lsl r2
	mov r1, r0, lsl r2
	beq _02013948
	cmp r1, #0x10
	beq _02013934
	cmp r1, #0x20
	beq _0201393C
	b _02013944
_02013934:
	add r6, r6, #3
	b _02013948
_0201393C:
	add r6, r6, #0xc
	b _02013948
_02013944:
	add r6, r6, #1
_02013948:
	add r2, r2, #1
	cmp r2, #0x1d
	blt _02013914
	cmp r6, #0
	addeq sp, sp, #0x194
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r7, r6, lsl #4
	mov r0, r7
	mov r1, #4
	bl _Z23Heap_AllocWithAlignmentmm
	str r0, [sl, #0x10]
	mov r1, r0
	mov r2, r7
	mov r0, #0
	bl MIi_CpuClearFast
	add r0, sp, #0x134
	mov r1, r4
	mov r2, #0x60
	strb r6, [sl, #0x14]
	bl STD_CopyLString
	ldr r1, [sp, #0x1bc]
	add r0, sp, #0x10
	cmp r1, #0
	beq _020139B4
	mov r2, #4
	bl STD_CopyLString
	b _020139BC
_020139B4:
	ldr r1, _02013CB4 ; =s_ACT_0208b500
	bl STD_CopyString
_020139BC:
	add r0, sp, #0xd4
	mov r1, r5
	mov r2, #0x60
	bl STD_CopyLString
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _02013A00
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	add r1, sp, #0x10
	add r2, sp, #0xd4
	str r4, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
_02013A00:
	cmp r0, #0
	addeq sp, sp, #0x194
	str r0, [sl, #8]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _02013CB8 ; =s_s_s_NCLR_0208b55c
	add r0, sp, #0x74
	add r2, sp, #0x10
	add r3, sp, #0x134
	bl OS_SPrintf
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02013A44
	mov r2, #0
	add r1, sp, #0x74
	mov r3, r2
	bl sub_02007AC0
_02013A44:
	str r0, [sl, #0xc]
	tst sb, #1
	mov r6, #0
	beq _02013A8C
	ldr r1, _02013CBC ; =s_s_s_0208b568
	add r0, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0x134
	bl OS_SPrintf
	ldr r1, [sl, #0x10]
	add r2, sp, #0x14
	mov r0, sl
	mov r3, r6
	bl sub_02013CD4
	mov r1, r6
	ldr r0, [sl, #0x10]
	add r6, r6, #1
	strb r1, [r0, #1]
_02013A8C:
	tst sb, #2
	beq _02013AD4
	ldr r1, _02013CC0 ; =s_s_s_s_0208b570
	add r0, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0x134
	bl OS_SPrintf
	ldr r1, [sl, #0x10]
	add r2, sp, #0x14
	mov r0, sl
	add r1, r1, r6, lsl #4
	mov r3, #0
	bl sub_02013CD4
	ldr r0, [sl, #0x10]
	mov r1, #1
	add r0, r0, r6, lsl #4
	strb r1, [r0, #1]
	add r6, r6, #1
_02013AD4:
	tst sb, #4
	beq _02013B1C
	ldr r1, _02013CC4 ; =s_s_s_w_0208b578
	add r0, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0x134
	bl OS_SPrintf
	ldr r1, [sl, #0x10]
	add r2, sp, #0x14
	mov r0, sl
	add r1, r1, r6, lsl #4
	mov r3, #0
	bl sub_02013CD4
	ldr r0, [sl, #0x10]
	mov r1, #2
	add r0, r0, r6, lsl #4
	strb r1, [r0, #1]
	add r6, r6, #1
_02013B1C:
	tst sb, #8
	beq _02013B64
	ldr r1, _02013CC8 ; =s_s_s_t_0208b580
	add r0, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0x134
	bl OS_SPrintf
	ldr r1, [sl, #0x10]
	add r2, sp, #0x14
	mov r0, sl
	add r1, r1, r6, lsl #4
	mov r3, #0
	bl sub_02013CD4
	ldr r0, [sl, #0x10]
	mov r1, #3
	add r0, r0, r6, lsl #4
	strb r1, [r0, #1]
	add r6, r6, #1
_02013B64:
	tst sb, #0x10
	beq _02013BEC
	ldr r4, _02013CCC ; =s_s_s_p_02d_0208b588
	mov r8, r6, lsl #4
	mov r7, #0
	add r5, sp, #0x14
	add fp, sp, #0x10
_02013B80:
	ldrb r0, [sl, #0x14]
	cmp r6, r0
	bge _02013BEC
	add r3, r7, #1
	str r3, [sp]
	mov r0, r5
	mov r1, r4
	mov r2, fp
	add r3, sp, #0x134
	bl OS_SPrintf
	ldr r1, [sl, #0x10]
	mov r0, sl
	mov r2, r5
	add r1, r1, r8
	mov r3, #0
	bl sub_02013CD4
	cmp r0, #0
	beq _02013BEC
	ldr r0, [sl, #0x10]
	add r1, r7, #4
	add r0, r0, r6, lsl #4
	add r7, r7, #1
	strb r1, [r0, #1]
	cmp r7, #0x1d
	add r8, r8, #0x10
	add r6, r6, #1
	blt _02013B80
_02013BEC:
	tst sb, #0x20
	beq _02013C78
	ldr r5, _02013CD0 ; =s_s_s_a_02d_0208b59c
	mov sb, r6, lsl #4
	mov r8, #0
	add r7, sp, #0x14
	add r4, sp, #0x10
	add fp, sp, #0x134
_02013C0C:
	ldrb r0, [sl, #0x14]
	cmp r6, r0
	bge _02013C78
	add ip, r8, #1
	mov r0, r7
	mov r1, r5
	mov r2, r4
	mov r3, fp
	str ip, [sp]
	bl OS_SPrintf
	ldr r1, [sl, #0x10]
	mov r0, sl
	add r1, r1, sb
	mov r2, r7
	mov r3, #0
	bl sub_02013CD4
	cmp r0, #0
	beq _02013C78
	ldr r0, [sl, #0x10]
	add r1, r8, #7
	add r0, r0, r6, lsl #4
	add r8, r8, #1
	strb r1, [r0, #1]
	cmp r8, #0x1d
	add sb, sb, #0x10
	add r6, r6, #1
	blt _02013C0C
_02013C78:
	ldr r0, [sp, #0x1b8]
	cmp r0, #0
	ldrne r4, [sl, #8]
	cmpne r4, #0
	addeq sp, sp, #0x194
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	beq _02013CA4
	mov r0, r4
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r4
	bl _ZdlPv
_02013CA4:
	mov r0, #0
	str r0, [sl, #8]
	add sp, sp, #0x194
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02013CB4: .word s_ACT_0208b500
_02013CB8: .word s_s_s_NCLR_0208b55c
_02013CBC: .word s_s_s_0208b568
_02013CC0: .word s_s_s_s_0208b570
_02013CC4: .word s_s_s_w_0208b578
_02013CC8: .word s_s_s_t_0208b580
_02013CCC: .word s_s_s_p_02d_0208b588
_02013CD0: .word s_s_s_a_02d_0208b59c

	arm_func_start sub_02013CD4
sub_02013CD4: ; 0x02013CD4
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x124
	mov r5, r1
	ldr r1, _02013E6C ; =s_s_NCBR_0208b5a8
	add r0, sp, #0xc4
	mov r6, r2
	mov r4, r3
	bl OS_SPrintf
	add r0, sp, #0xc4
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x124
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, _02013E70 ; =s_s_NCER_0208b5b0
	add r0, sp, #0x64
	mov r2, r6
	bl OS_SPrintf
	add r0, sp, #0x64
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x124
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, _02013E74 ; =s_s_cac_0208b5b8
	add r0, sp, #4
	mov r2, r6
	bl OS_SPrintf
	add r0, sp, #4
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x124
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r6, [r5, #4]
	cmp r6, #0
	beq _02013D90
	beq _02013D88
	mov r0, r6
	bl sub_02007548
	mov r0, r6
	bl _ZdlPv
	arm_func_end sub_02013CD4
_02013D88:
	mov r0, #0
	str r0, [r5, #4]
_02013D90:
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02013DB4
	mov r2, #0
	add r1, sp, #0xc4
	mov r3, r2
	str r4, [sp]
	bl sub_020074E8
_02013DB4:
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02013DDC
	beq _02013DD4
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02013DD4:
	mov r0, #0
	str r0, [r5, #8]
_02013DDC:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02013E00
	mov r3, #0
	add r1, sp, #0x64
	mov r2, r4
	str r3, [sp]
	bl sub_020031E8
_02013E00:
	str r0, [r5, #8]
	ldr r6, [r5, #0xc]
	cmp r6, #0
	beq _02013E2C
	beq _02013E24
	mov r0, r6
	bl sub_020087C8
	mov r0, r6
	bl _ZdlPv
_02013E24:
	mov r0, #0
	str r0, [r5, #0xc]
_02013E2C:
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02013E40
	bl sub_02008788
_02013E40:
	add r1, sp, #4
	str r0, [r5, #0xc]
	mov r3, r4
	mov r2, #0
	bl sub_0200887C
	ldrb r1, [r5]
	mov r0, #1
	orr r1, r1, #1
	strb r1, [r5]
	add sp, sp, #0x124
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_02013E6C: .word s_s_NCBR_0208b5a8
_02013E70: .word s_s_NCER_0208b5b0
_02013E74: .word s_s_cac_0208b5b8

	arm_func_start sub_02013E78
sub_02013E78: ; 0x02013E78
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x124
	mov r4, r1
	ldr r1, _02014028 ; =s_s_NCBR_0208b5a8
	add r0, sp, #0xc4
	mov r5, r3
	bl OS_SPrintf
	add r0, sp, #0xc4
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	ldreq r0, [sp, #0x130]
	cmpeq r0, #0
	addeq sp, sp, #0x124
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _0201402C ; =s_s_NCER_0208b5b0
	add r0, sp, #0x64
	mov r2, r5
	bl OS_SPrintf
	add r0, sp, #0x64
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x124
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _02014030 ; =s_s_cac_0208b5b8
	add r0, sp, #4
	mov r2, r5
	bl OS_SPrintf
	add r0, sp, #4
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x124
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _02013F38
	beq _02013F30
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02013E78
_02013F30:
	mov r0, #0
	str r0, [r4, #4]
_02013F38:
	ldr r0, [sp, #0x130]
	cmp r0, #0
	strne r0, [r4, #4]
	bne _02013F74
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02013F70
	ldr ip, [sp, #0x134]
	mov r2, #0
	add r1, sp, #0xc4
	mov r3, r2
	str ip, [sp]
	bl sub_020074E8
_02013F70:
	str r0, [r4, #4]
_02013F74:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02013F98
	beq _02013F90
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02013F90:
	mov r0, #0
	str r0, [r4, #8]
_02013F98:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02013FBC
	ldr r2, [sp, #0x134]
	mov r3, #0
	add r1, sp, #0x64
	str r3, [sp]
	bl sub_020031E8
_02013FBC:
	str r0, [r4, #8]
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02013FE8
	beq _02013FE0
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_02013FE0:
	mov r0, #0
	str r0, [r4, #0xc]
_02013FE8:
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02013FFC
	bl sub_02008788
_02013FFC:
	ldr r3, [sp, #0x134]
	str r0, [r4, #0xc]
	add r1, sp, #4
	mov r2, #0
	bl sub_0200887C
	ldrb r1, [r4]
	mov r0, #1
	orr r1, r1, #1
	strb r1, [r4]
	add sp, sp, #0x124
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02014028: .word s_s_NCBR_0208b5a8
_0201402C: .word s_s_NCER_0208b5b0
_02014030: .word s_s_cac_0208b5b8

	arm_func_start sub_02014034
sub_02014034: ; 0x02014034
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02014064
	beq _0201405C
	mov r0, r5
	bl sub_02007B28
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02014034
_0201405C:
	mov r0, #0
	str r0, [r4, #0xc]
_02014064:
	ldrb r0, [r4, #0x14]
	mov r8, #0
	mov sb, r8
	cmp r0, #0
	ble _02014158
	mov r6, r8
	mov r7, r8
	mov r5, r8
	mov fp, r8
_02014088:
	ldr r1, [r4, #0x10]
	ldrb r0, [r1, sb, lsl #4]
	bic r0, r0, #1
	strb r0, [r1, sb, lsl #4]
	ldr r0, [r4, #0x10]
	add r0, r0, sb, lsl #4
	ldr sl, [r0, #4]
	cmp r8, sl
	beq _020140E0
	cmp r8, #0
	moveq r8, sl
	cmp sl, #0
	beq _020140E4
	beq _020140D0
	mov r0, sl
	bl sub_02007548
	mov r0, sl
	bl _ZdlPv
_020140D0:
	ldr r0, [r4, #0x10]
	add r0, r0, sb, lsl #4
	str r7, [r0, #4]
	b _020140E4
_020140E0:
	str r6, [r0, #4]
_020140E4:
	ldr r0, [r4, #0x10]
	add r0, r0, sb, lsl #4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02014114
	beq _02014108
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02014108:
	ldr r0, [r4, #0x10]
	add r0, r0, sb, lsl #4
	str r5, [r0, #8]
_02014114:
	ldr r0, [r4, #0x10]
	add r0, r0, sb, lsl #4
	ldr sl, [r0, #0xc]
	cmp sl, #0
	beq _02014148
	beq _0201413C
	mov r0, sl
	bl sub_020087C8
	mov r0, sl
	bl _ZdlPv
_0201413C:
	ldr r0, [r4, #0x10]
	add r0, r0, sb, lsl #4
	str fp, [r0, #0xc]
_02014148:
	ldrb r0, [r4, #0x14]
	add sb, sb, #1
	cmp sb, r0
	blt _02014088
_02014158:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02014170
	bl _Z9Heap_FreePv
	mov r0, #0
	str r0, [r4, #0x10]
_02014170:
	mov r0, #0
	strb r0, [r4, #0x14]
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _020141A0
	beq _02014198
	mov r0, r5
	bl _ZN19CSmartNNSFndArchiveD1Ev
	mov r0, r5
	bl _ZdlPv
_02014198:
	mov r0, #0
	str r0, [r4, #8]
_020141A0:
	mov r0, #0
	strb r0, [r4, #6]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start sub_020141AC
sub_020141AC: ; 0x020141AC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x14]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020141AC
_020141C8:
	ldr r0, [r6, #0x10]
	add r0, r0, r4, lsl #4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02014204
	mov r1, r5
	bl sub_020076E8
	ldr r1, [r6, #0x10]
	ldrb r0, [r6, #6]
	add r1, r1, r4, lsl #4
	ldr r1, [r1, #4]
	cmp r0, #0
	ldr r0, [r1, #0x38]
	add r5, r5, r0
	ldmneia sp!, {r4, r5, r6, pc}
_02014204:
	ldrb r0, [r6, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _020141C8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02014218
sub_02014218: ; 0x02014218
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrb r0, [r7, #0x14]
	mov r6, r1
	mov r5, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, r5
	arm_func_end sub_02014218
_02014238:
	ldr r0, [r7, #0x10]
	add r0, r0, r5, lsl #4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02014288
	ldr r0, [r0, #0x38]
	mov r1, r4
	mov r2, r4
	bl NNS_GfdAllocLnkTexVram
	str r0, [r6, r5, lsl #2]
	ldr r1, [r7, #0x10]
	mov r0, r0
	add r2, r1, r5, lsl #4
	mov r1, r0, lsl #0x10
	ldr r0, [r2, #4]
	mov r1, r1, lsr #0xd
	bl sub_020076E8
	ldrb r0, [r7, #6]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_02014288:
	ldrb r0, [r7, #0x14]
	add r5, r5, #1
	cmp r5, r0
	blt _02014238
	ldmia sp!, {r3, r4, r5, r6, r7, pc}

	arm_func_start sub_0201429C
sub_0201429C: ; 0x0201429C
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02007BFC
	ldmia sp!, {r3, pc}
	arm_func_end sub_0201429C

	arm_func_start sub_020142B4
sub_020142B4: ; 0x020142B4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x14]
	mov r4, #0
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020142B4
_020142CC:
	ldr r0, [r5, #0x10]
	add r0, r0, r4, lsl #4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020142E4
	bl sub_020076B0
_020142E4:
	ldrb r0, [r5, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _020142CC
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_020142F8
sub_020142F8: ; 0x020142F8
	stmdb sp!, {r3, lr}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02007BC4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020142F8

	arm_func_start sub_02014310
sub_02014310: ; 0x02014310
	stmdb sp!, {r4, lr}
	ldrb r4, [r0, #0x14]
	mov r3, #0
	mov ip, r3
	cmp r4, #0
	ble _0201435C
	ldr lr, [r0, #0x10]
	arm_func_end sub_02014310
_0201432C:
	add r1, lr, ip, lsl #4
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02014350
	ldrb r1, [r0, #6]
	ldr r2, [r2, #0x38]
	cmp r1, #0
	add r3, r3, r2
	bne _0201435C
_02014350:
	add ip, ip, #1
	cmp ip, r4
	blt _0201432C
_0201435C:
	mov r0, r3
	ldmia sp!, {r4, pc}

	arm_func_start sub_02014364
sub_02014364: ; 0x02014364
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #4]
	ldrne r0, [r0, #8]
	moveq r0, #0
	bx lr
	arm_func_end sub_02014364

	arm_func_start sub_0201437C
sub_0201437C: ; 0x0201437C
	stmdb sp!, {r3, lr}
	ldrb lr, [r0, #0x14]
	mov r3, #0
	cmp lr, #0
	ble _020143B0
	ldr ip, [r0, #0x10]
	arm_func_end sub_0201437C
_02014394:
	add r0, ip, r3, lsl #4
	ldrb r2, [r0, #1]
	cmp r1, r2
	ldmeqia sp!, {r3, pc}
	add r3, r3, #1
	cmp r3, lr
	blt _02014394
_020143B0:
	mov r0, #0
	ldmia sp!, {r3, pc}

	arm_func_start sub_020143B8
sub_020143B8: ; 0x020143B8
	stmdb sp!, {r4, lr}
	ldr r3, [r0]
	mov r4, r0
	ldr r3, [r3, #0x14]
	blx r3
	cmp r0, #0xff
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb lr, [r4, #0x14]
	mov r3, #0
	cmp lr, #0
	ble _0201440C
	ldr ip, [r4, #0x10]
	arm_func_end sub_020143B8
_020143EC:
	add r2, ip, r3, lsl #4
	ldrb r1, [r2, #1]
	cmp r0, r1
	moveq r0, r2
	ldmeqia sp!, {r4, pc}
	add r3, r3, #1
	cmp r3, lr
	blt _020143EC
_0201440C:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start sub_02014414
sub_02014414: ; 0x02014414
	cmp r1, #0x80
	mov r0, #0
	bgt _02014480
	cmp r1, #0x80
	bge _02014504
	cmp r1, #0x10
	bgt _02014464
	bge _020144D4
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	bx lr
_02014440: ; jump table
	bx lr ; case 0
	b _020144C0 ; case 1
	b _020144C4 ; case 2
	bx lr ; case 3
	b _020144CC ; case 4
	bx lr ; case 5
	bx lr ; case 6
	bx lr ; case 7
	b _020144FC ; case 8
	arm_func_end sub_02014414
_02014464:
	cmp r1, #0x20
	bgt _02014474
	beq _020144E8
	bx lr
_02014474:
	cmp r1, #0x40
	moveq r0, #4
	bx lr
_02014480:
	cmp r1, #0x400
	bgt _020144A8
	bge _0201450C
	cmp r1, #0x100
	bgt _0201449C
	moveq r0, #6
	bx lr
_0201449C:
	cmp r1, #0x200
	moveq r0, #7
	bx lr
_020144A8:
	cmp r1, #0x800
	bgt _020144B8
	moveq r0, #9
	bx lr
_020144B8:
	cmp r1, #0x1000
	moveq r0, #0xa
_020144C0:
	bx lr
_020144C4:
	mov r0, #1
	bx lr
_020144CC:
	mov r0, #2
	bx lr
_020144D4:
	cmp r2, #3
	movhs r0, #0xff
	addlo r0, r2, #4
	andlo r0, r0, #0xff
	bx lr
_020144E8:
	cmp r2, #0xc
	movhs r0, #0xff
	addlo r0, r2, #7
	andlo r0, r0, #0xff
	bx lr
_020144FC:
	mov r0, #3
	bx lr
_02014504:
	mov r0, #5
	bx lr
_0201450C:
	mov r0, #8
	bx lr

	arm_func_start sub_02014514
sub_02014514: ; 0x02014514
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1fc
	ldr r8, [r0]
	mov r6, r0
	ldr r8, [r8, #8]
	mov r7, r1
	mov sl, r2
	mov fp, r3
	ldr r5, [sp, #0x228]
	ldr r4, [sp, #0x230]
	blx r8
	add r0, sp, #0x210
	ldrh sb, [r0, #0x10]
	mov r8, #0
	mov r2, r8
	mov r0, #1
	arm_func_end sub_02014514
_02014554:
	tst sb, r0, lsl r2
	mov r1, r0, lsl r2
	beq _02014588
	cmp r1, #0x10
	beq _02014574
	cmp r1, #0x20
	beq _0201457C
	b _02014584
_02014574:
	add r8, r8, #3
	b _02014588
_0201457C:
	add r8, r8, #0xc
	b _02014588
_02014584:
	add r8, r8, #1
_02014588:
	add r2, r2, #1
	cmp r2, #0x1d
	blt _02014554
	cmp r8, #0
	addeq sp, sp, #0x1fc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r8, lsl #4
	str r0, [sp, #0x10]
	mov r1, #4
	bl _Z23Heap_AllocWithAlignmentmm
	ldr r2, [sp, #0x10]
	str r0, [r6, #0x10]
	mov r1, r0
	mov r0, #0
	bl MIi_CpuClearFast
	strb r8, [r6, #0x14]
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _02014670
_020145D4: ; jump table
	b _020145E4 ; case 0
	b _02014608 ; case 1
	b _0201462C ; case 2
	b _02014650 ; case 3
_020145E4:
	mov r8, #0
	strb r8, [r6, #5]
	ldr r1, _02014CA8 ; =s_p_03d_02d_0208b4d8
	add r0, sp, #0x19c
	mov r2, sl
	mov r3, fp
	strb r8, [r6, #6]
	bl OS_SPrintf
	b _02014688
_02014608:
	mov r3, #1
	strb r3, [r6, #5]
	mov r3, #0
	ldr r1, _02014CAC ; =s_npc_03d_0208b4e4
	add r0, sp, #0x19c
	mov r2, sl
	strb r3, [r6, #6]
	bl OS_SPrintf
	b _02014688
_0201462C:
	mov r8, #1
	strb r8, [r6, #5]
	ldr r1, _02014CB0 ; =s_t_03d_02d_0208b4ec
	add r0, sp, #0x19c
	mov r2, sl
	mov r3, fp
	strb r8, [r6, #6]
	bl OS_SPrintf
	b _02014688
_02014650:
	mov r3, #0
	strb r3, [r6, #5]
	ldr r1, _02014CB4 ; =s_e_03d_0208b4f8
	add r0, sp, #0x19c
	mov r2, sl
	strb r3, [r6, #6]
	bl OS_SPrintf
	b _02014688
_02014670:
	mov r0, #1
	strb r0, [r6, #5]
	mov r0, #0
	add sp, sp, #0x1fc
	strb r0, [r6, #6]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02014688:
	ldr r1, [sp, #0x224]
	add r0, sp, #0x18
	cmp r1, #0
	beq _020146A4
	mov r2, #4
	bl STD_CopyLString
	b _020146AC
_020146A4:
	ldr r1, _02014CB8 ; =s_ACT_0208b500
	bl STD_CopyString
_020146AC:
	cmp r7, #3
	addls pc, pc, r7, lsl #2
	b _02014714
_020146B8: ; jump table
	b _020146C8 ; case 0
	b _020146DC ; case 1
	b _020146F0 ; case 2
	b _02014704 ; case 3
_020146C8:
	ldr r1, _02014CBC ; =s_data_poke_s_LZ_bin_0208b504
	add r0, sp, #0x13c
	add r2, sp, #0x19c
	bl OS_SPrintf
	b _02014714
_020146DC:
	ldr r1, _02014CC0 ; =s_data_npc_s_LZ_bin_0208b518
	add r0, sp, #0x13c
	add r2, sp, #0x19c
	bl OS_SPrintf
	b _02014714
_020146F0:
	ldr r1, _02014CC4 ; =s_data_target_s_LZ_bin_0208b52c
	add r0, sp, #0x13c
	add r2, sp, #0x19c
	bl OS_SPrintf
	b _02014714
_02014704:
	ldr r1, _02014CC8 ; =s_data_effect_s_LZ_bin_0208b544
	add r0, sp, #0x13c
	add r2, sp, #0x19c
	bl OS_SPrintf
_02014714:
	mov r0, #0x6c
	bl _Znwm
	cmp r0, #0
	beq _0201474C
	mov r1, #1
	str r1, [sp]
	mov r8, #0
	str r8, [sp, #4]
	str r8, [sp, #8]
	ldr r3, [sp, #0x22c]
	add r1, sp, #0x18
	add r2, sp, #0x13c
	str r8, [sp, #0xc]
	bl _ZN19CSmartNNSFndArchiveC1EPcS0_mmmmm
_0201474C:
	cmp r0, #0
	addeq sp, sp, #0x1fc
	str r0, [r6, #8]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _02014CCC ; =s_s_s_NCLR_0208b55c
	add r0, sp, #0xdc
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	cmp r4, #0
	beq _020147B8
	add r0, sp, #0xdc
	bl NNS_FndGetArchiveFileByName
	cmp r0, #0
	beq _020147DC
	add r1, sp, #0x14
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #0
	beq _020147DC
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _020147B0
	ldr r1, [sp, #0x14]
	bl sub_02007AFC
_020147B0:
	str r0, [r6, #0xc]
	b _020147DC
_020147B8:
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _020147D8
	mov r2, #0
	add r1, sp, #0xdc
	mov r3, r2
	bl sub_02007AC0
_020147D8:
	str r0, [r6, #0xc]
_020147DC:
	ldr r1, _02014CD0 ; =s_s_s_0208b568
	add r0, sp, #0x1c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	mov r8, #0
	bl OS_SPrintf
	tst sb, #1
	mov sl, r8
	beq _0201483C
	ldr r1, _02014CD0 ; =s_s_s_0208b568
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	bl sub_02014CEC
	ldr r0, [r6, #0x10]
	mov r1, r8
	strb r1, [r0, #1]
	add sl, sl, #1
_0201483C:
	tst sb, #2
	beq _020148F0
	ldr r1, _02014CD4 ; =s_s_s_s_0208b570
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _020148C0
	mov r0, #0
	stmia sp, {r0, r5}
	str r4, [sp, #8]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x1c
	add r3, sp, #0x7c
	mov r0, r6
	add r1, r1, sl, lsl #4
	bl sub_02014EA4
	cmp r0, #0
	bne _020148B0
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
	b _020148DC
_020148B0:
	ldr r0, [r6, #0x10]
	add r0, r0, sl, lsl #4
	ldr r8, [r0, #4]
	b _020148DC
_020148C0:
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
_020148DC:
	ldr r0, [r6, #0x10]
	mov r1, #1
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
_020148F0:
	tst sb, #4
	beq _020149A4
	ldr r1, _02014CD8 ; =s_s_s_w_0208b578
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _02014974
	str r8, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x1c
	add r3, sp, #0x7c
	mov r0, r6
	add r1, r1, sl, lsl #4
	bl sub_02014EA4
	cmp r0, #0
	bne _02014964
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
	b _02014990
_02014964:
	ldr r0, [r6, #0x10]
	add r0, r0, sl, lsl #4
	ldr r8, [r0, #4]
	b _02014990
_02014974:
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
_02014990:
	ldr r0, [r6, #0x10]
	mov r1, #2
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
_020149A4:
	tst sb, #8
	beq _02014A48
	ldr r1, _02014CDC ; =s_s_s_t_0208b580
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _02014A18
	str r8, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x1c
	add r3, sp, #0x7c
	mov r0, r6
	add r1, r1, sl, lsl #4
	bl sub_02014EA4
	cmp r0, #0
	bne _02014A34
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
	b _02014A34
_02014A18:
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
_02014A34:
	ldr r0, [r6, #0x10]
	mov r1, #3
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
_02014A48:
	tst sb, #0x10
	beq _02014B20
	cmp r7, #1
	beq _02014AD8
	mov r8, sl, lsl #4
	mov r7, #0
	add fp, sp, #0x7c
_02014A64:
	ldrb r0, [r6, #0x14]
	cmp sl, r0
	bge _02014B94
	add r2, r7, #1
	str r2, [sp]
	ldr r1, _02014CE0 ; =s_s_s_p_02d_0208b588
	mov r0, fp
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	str r4, [sp]
	ldr r1, [r6, #0x10]
	mov r0, r6
	mov r2, fp
	add r1, r1, r8
	mov r3, r5
	bl sub_02014CEC
	cmp r0, #0
	beq _02014B94
	ldr r0, [r6, #0x10]
	add r1, r7, #4
	add r0, r0, sl, lsl #4
	add r7, r7, #1
	strb r1, [r0, #1]
	cmp r7, #0x1d
	add r8, r8, #0x10
	add sl, sl, #1
	blt _02014A64
	b _02014B94
_02014AD8:
	ldr r1, _02014CE4 ; =s_s_s_p_0208b594
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	str r4, [sp]
	ldr r1, [r6, #0x10]
	add r2, sp, #0x7c
	mov r0, r6
	mov r3, r5
	add r1, r1, sl, lsl #4
	bl sub_02014CEC
	ldr r0, [r6, #0x10]
	mov r1, #4
	add r0, r0, sl, lsl #4
	strb r1, [r0, #1]
	add sl, sl, #1
	b _02014B94
_02014B20:
	mov r8, sl, lsl #4
	mov r7, #0
	mov fp, #0x40
_02014B2C:
	tst sb, fp
	beq _02014B84
	add r1, r7, #1
	str r1, [sp]
	ldr r1, _02014CE0 ; =s_s_s_p_02d_0208b588
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	str r4, [sp]
	ldr r1, [r6, #0x10]
	mov r0, r6
	add r2, sp, #0x7c
	add r1, r1, r8
	mov r3, r5
	bl sub_02014CEC
	ldr r0, [r6, #0x10]
	add r1, r7, #4
	add r0, r0, sl, lsl #4
	add r8, r8, #0x10
	strb r1, [r0, #1]
	add sl, sl, #1
_02014B84:
	mov fp, fp, lsl #1
	cmp fp, #0x100
	add r7, r7, #1
	ble _02014B2C
_02014B94:
	tst sb, #0x20
	beq _02014C2C
	ldr fp, _02014CE8 ; =s_s_s_a_02d_0208b59c
	mov sb, sl, lsl #4
	mov r8, #0
	add r7, sp, #0x7c
_02014BAC:
	ldrb r0, [r6, #0x14]
	cmp sl, r0
	addge sp, sp, #0x1fc
	ldmgeia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r3, r8, #1
	str r3, [sp]
	mov r0, r7
	mov r1, fp
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	str r4, [sp]
	ldr r1, [r6, #0x10]
	mov r0, r6
	mov r2, r7
	add r1, r1, sb
	mov r3, r5
	bl sub_02014CEC
	cmp r0, #0
	addeq sp, sp, #0x1fc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r6, #0x10]
	add r1, r8, #7
	add r0, r0, sl, lsl #4
	add r8, r8, #1
	strb r1, [r0, #1]
	cmp r8, #0x1d
	add sb, sb, #0x10
	add sl, sl, #1
	blt _02014BAC
	add sp, sp, #0x1fc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02014C2C:
	mov r8, sl, lsl #4
	mov r7, #0
	mov fp, #0x200
_02014C38:
	tst sb, fp
	beq _02014C90
	add r1, r7, #1
	str r1, [sp]
	ldr r1, _02014CE8 ; =s_s_s_a_02d_0208b59c
	add r0, sp, #0x7c
	add r2, sp, #0x18
	add r3, sp, #0x19c
	bl OS_SPrintf
	str r4, [sp]
	ldr r1, [r6, #0x10]
	mov r0, r6
	add r2, sp, #0x7c
	add r1, r1, r8
	mov r3, r5
	bl sub_02014CEC
	ldr r0, [r6, #0x10]
	add r1, r7, #7
	add r0, r0, sl, lsl #4
	add r8, r8, #0x10
	strb r1, [r0, #1]
	add sl, sl, #1
_02014C90:
	mov fp, fp, lsl #1
	cmp fp, #0x1000
	add r7, r7, #1
	ble _02014C38
	add sp, sp, #0x1fc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02014CA8: .word s_p_03d_02d_0208b4d8
_02014CAC: .word s_npc_03d_0208b4e4
_02014CB0: .word s_t_03d_02d_0208b4ec
_02014CB4: .word s_e_03d_0208b4f8
_02014CB8: .word s_ACT_0208b500
_02014CBC: .word s_data_poke_s_LZ_bin_0208b504
_02014CC0: .word s_data_npc_s_LZ_bin_0208b518
_02014CC4: .word s_data_target_s_LZ_bin_0208b52c
_02014CC8: .word s_data_effect_s_LZ_bin_0208b544
_02014CCC: .word s_s_s_NCLR_0208b55c
_02014CD0: .word s_s_s_0208b568
_02014CD4: .word s_s_s_s_0208b570
_02014CD8: .word s_s_s_w_0208b578
_02014CDC: .word s_s_s_t_0208b580
_02014CE0: .word s_s_s_p_02d_0208b588
_02014CE4: .word s_s_s_p_0208b594
_02014CE8: .word s_s_s_a_02d_0208b59c

	arm_func_start sub_02014CEC
sub_02014CEC: ; 0x02014CEC
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x128
	mov r5, r1
	ldr r1, _02014E98 ; =s_s_NCBR_0208b5a8
	add r0, sp, #0xc8
	mov r6, r2
	mov r4, r3
	bl OS_SPrintf
	add r0, sp, #0xc8
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x128
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, _02014E9C ; =s_s_NCER_0208b5b0
	add r0, sp, #0x68
	mov r2, r6
	bl OS_SPrintf
	add r0, sp, #0x68
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x128
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, _02014EA0 ; =s_s_cac_0208b5b8
	add r0, sp, #8
	mov r2, r6
	bl OS_SPrintf
	add r0, sp, #8
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x128
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r6, [r5, #4]
	cmp r6, #0
	beq _02014DA8
	beq _02014DA0
	mov r0, r6
	bl sub_02007548
	mov r0, r6
	bl _ZdlPv
	arm_func_end sub_02014CEC
_02014DA0:
	mov r0, #0
	str r0, [r5, #4]
_02014DA8:
	add r0, sp, #0xc8
	bl NNS_FndGetArchiveFileByName
	cmp r0, #0
	beq _02014DE4
	add r1, sp, #4
	bl NNS_G2dGetUnpackedCharacterData
	cmp r0, #0
	beq _02014DE4
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02014DE0
	ldr r1, [sp, #4]
	bl sub_02007524
_02014DE0:
	str r0, [r5, #4]
_02014DE4:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02014E08
	beq _02014E00
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02014E00:
	mov r0, #0
	str r0, [r5, #8]
_02014E08:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02014E2C
	mov r3, #0
	add r1, sp, #0x68
	mov r2, r4
	str r3, [sp]
	bl sub_020031E8
_02014E2C:
	str r0, [r5, #8]
	ldr r6, [r5, #0xc]
	cmp r6, #0
	beq _02014E58
	beq _02014E50
	mov r0, r6
	bl sub_020087C8
	mov r0, r6
	bl _ZdlPv
_02014E50:
	mov r0, #0
	str r0, [r5, #0xc]
_02014E58:
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02014E6C
	bl sub_02008788
_02014E6C:
	add r1, sp, #8
	str r0, [r5, #0xc]
	mov r3, r4
	mov r2, #0
	bl sub_0200887C
	ldrb r1, [r5]
	mov r0, #1
	orr r1, r1, #1
	strb r1, [r5]
	add sp, sp, #0x128
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02014E98: .word s_s_NCBR_0208b5a8
_02014E9C: .word s_s_NCER_0208b5b0
_02014EA0: .word s_s_cac_0208b5b8

	arm_func_start sub_02014EA4
sub_02014EA4: ; 0x02014EA4
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x128
	mov r4, r1
	ldr r1, _02015064 ; =s_s_NCBR_0208b5a8
	add r0, sp, #0xc8
	mov r5, r3
	bl OS_SPrintf
	add r0, sp, #0xc8
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	ldreq r0, [sp, #0x138]
	cmpeq r0, #0
	addeq sp, sp, #0x128
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _02015068 ; =s_s_NCER_0208b5b0
	add r0, sp, #0x68
	mov r2, r5
	bl OS_SPrintf
	add r0, sp, #0x68
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x128
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _0201506C ; =s_s_cac_0208b5b8
	add r0, sp, #8
	mov r2, r5
	bl OS_SPrintf
	add r0, sp, #8
	mov r1, #0
	bl sub_02003108
	cmp r0, #0
	addeq sp, sp, #0x128
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _02014F64
	beq _02014F5C
	mov r0, r5
	bl sub_02007548
	mov r0, r5
	bl _ZdlPv
	arm_func_end sub_02014EA4
_02014F5C:
	mov r0, #0
	str r0, [r4, #4]
_02014F64:
	ldr r0, [sp, #0x138]
	cmp r0, #0
	strne r0, [r4, #4]
	bne _02014FB0
	add r0, sp, #0xc8
	bl NNS_FndGetArchiveFileByName
	cmp r0, #0
	beq _02014FB0
	add r1, sp, #4
	bl NNS_G2dGetUnpackedCharacterData
	cmp r0, #0
	beq _02014FB0
	mov r0, #0x3c
	bl _Znwm
	cmp r0, #0
	beq _02014FAC
	ldr r1, [sp, #4]
	bl sub_02007524
_02014FAC:
	str r0, [r4, #4]
_02014FB0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02014FD4
	beq _02014FCC
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_02014FCC:
	mov r0, #0
	str r0, [r4, #8]
_02014FD4:
	mov r0, #0xbc
	bl _Znwm
	cmp r0, #0
	beq _02014FF8
	ldr r2, [sp, #0x13c]
	mov r3, #0
	add r1, sp, #0x68
	str r3, [sp]
	bl sub_020031E8
_02014FF8:
	str r0, [r4, #8]
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _02015024
	beq _0201501C
	mov r0, r5
	bl sub_020087C8
	mov r0, r5
	bl _ZdlPv
_0201501C:
	mov r0, #0
	str r0, [r4, #0xc]
_02015024:
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _02015038
	bl sub_02008788
_02015038:
	ldr r3, [sp, #0x13c]
	str r0, [r4, #0xc]
	add r1, sp, #8
	mov r2, #0
	bl sub_0200887C
	ldrb r1, [r4]
	mov r0, #1
	orr r1, r1, #1
	strb r1, [r4]
	add sp, sp, #0x128
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02015064: .word s_s_NCBR_0208b5a8
_02015068: .word s_s_NCER_0208b5b0
_0201506C: .word s_s_cac_0208b5b8

	arm_func_start sub_02015070
sub_02015070: ; 0x02015070
	ldrb ip, [r0, #0x14]
	mov r2, #0
	cmp ip, #0
	ble _020150A4
	ldr r3, [r0, #0x10]
	arm_func_end sub_02015070
_02015084:
	add r0, r3, r2, lsl #4
	ldrb r0, [r0, #1]
	cmp r1, r0
	moveq r0, r2
	bxeq lr
	add r2, r2, #1
	cmp r2, ip
	blt _02015084
_020150A4:
	mvn r0, #0
	bx lr

	arm_func_start sub_020150AC
sub_020150AC: ; 0x020150AC
	ldr r0, [r0, #0x10]
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end sub_020150AC

	arm_func_start sub_020150B8
sub_020150B8: ; 0x020150B8
	sub sp, sp, #8
	mov r2, #0
	str r2, [r0, #8]
	strh r2, [r0]
	strh r2, [r0, #2]
	add r1, sp, #0
	strh r2, [r0, #4]
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r0, #0xc]
	ldr r1, [sp, #4]
	str r1, [r0, #0x10]
	strh r2, [r0, #0x14]
	add sp, sp, #8
	bx lr
	arm_func_end sub_020150B8

	arm_func_start sub_020150F4
sub_020150F4: ; 0x020150F4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020150B8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020150F4

    arm_func_start sub_02015108
sub_02015108: ; 0x02015108
    bx lr
	arm_func_end sub_02015108

	arm_func_start sub_0201510C
sub_0201510C: ; 0x0201510C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02015124
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_0201510C

    arm_func_start sub_02015120
sub_02015120: ; 0x02015120
    bx lr
	arm_func_end sub_02015120

	arm_func_start sub_02015124
sub_02015124: ; 0x02015124
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	add r1, sp, #0
	strh r2, [r0, #8]
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r0, #0xc]
	ldr r1, [sp, #4]
	str r1, [r0, #0x10]
	strh r2, [r0, #0xa]
	bl sub_0201518C
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	arm_func_end sub_02015124

	arm_func_start sub_02015164
sub_02015164: ; 0x02015164
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldrnesb r2, [r1]
	cmpne r2, #0
	beq _02015184
	add r0, r0, #0x14
	bl strcpy
	ldmia sp!, {r3, pc}
	arm_func_end sub_02015164
_02015184:
	bl sub_0201518C
	ldmia sp!, {r3, pc}

	arm_func_start sub_0201518C
sub_0201518C: ; 0x0201518C
	mov r1, #0
	strb r1, [r0, #0x14]
	bx lr
	arm_func_end sub_0201518C

	arm_func_start sub_02015198
sub_02015198: ; 0x02015198
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r2, _020152C4 ; =0x00008804
	mov r4, r0
	mov r1, #0
	bl MI_CpuFill8
	add r0, r4, #0xeb0
	add r1, r0, #0x7000
	mvn r0, #0
	mov r2, #0x80
	bl MIi_CpuClearFast
	add r1, r4, #0x8000
	mov ip, #0
	strb ip, [r1, #0xb44]
	strb ip, [r1, #0xb64]
	mov r0, #0x3b
	strh r0, [r4, #0x1a]
	ldr r2, _020152C8 ; =0x0000060F
	ldr r0, _020152CC ; =0x0000042E
	strh r2, [r4, #0x1c]
	strh r0, [r4, #0x1e]
	mov r0, #0x4000
	strh r0, [r4, #0x24]
	strb ip, [r4]
	ldrb r3, [r4, #3]
	add r2, r4, #0x7000
	mov r0, r4
	and r5, r3, #0xf0
	and r3, r5, #0xff
	and r3, r3, #0xf
	strb r3, [r4, #3]
	strb ip, [r1, #0x802]
	str ip, [r2, #0xc38]
	mov r1, #1
	bl sub_020160B8
	ldrb r1, [r4, #2]
	add r0, r4, #4
	mov r6, #0
	add r8, r0, #0x8800
	strb r1, [r4, #1]
	mov r5, r6
	arm_func_end sub_02015198
_02015238:
	mov r7, r5
	mov sb, r8
_02015240:
	mov r0, sb
	bl sub_020150B8
	add r7, r7, #1
	cmp r7, #0xa
	add sb, sb, #0x18
	blt _02015240
	add r6, r6, #1
	cmp r6, #3
	add r8, r8, #0xf0
	blt _02015238
	mov r1, #0
	mov r3, r4
	mov r2, r1
_02015274:
	add r0, r3, #0x8000
	add r1, r1, #1
	str r2, [r0, #0xad4]
	cmp r1, #2
	add r3, r3, #0x38
	blt _02015274
	add r1, r4, #0x8000
	str r2, [r1, #0xb68]
	str r2, [r1, #0xb6c]
	mov r0, #1
	str r0, [r1, #0xb70]
	str r2, [r1, #0xb74]
	str r2, [r1, #0x7c8]
	str r2, [r1, #0x1ac]
	mov r0, r4
	str r2, [r1, #0xbc0]
	bl sub_02017E44
	mov r0, r4
	bl sub_0201772C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_020152C4: .word 0x00008804
_020152C8: .word 0x0000060F
_020152CC: .word 0x0000042E

	arm_func_start sub_020152D0
sub_020152D0: ; 0x020152D0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r0, r4, #4
	ldr ip, _02015394 ; =0x02015108
	ldr r3, _02015398 ; =sub_020150F4
	add r0, r0, #0x8800
	mov r1, #0x1e
	mov r2, #0x18
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x2d4
	ldr ip, _0201539C ; =0x02015120
	ldr r3, _020153A0 ; =sub_0201510C
	add r0, r0, #0x8800
	mov r1, #2
	mov r2, #0x38
	str ip, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x328
	add r0, r0, #0x8c00
	bl sub_020412A0
	ldr r1, _020153A4 ; =sub_0204114C
	add r0, r4, #0x760
	str r1, [sp]
	add r0, r0, #0x59000
	mov r1, #2
	mov r2, #0x38
	ldr r3, _020153A8 ; =sub_02041124
	bl __cxa_vec_ctor
	ldr r1, _020153A4 ; =sub_0204114C
	add r0, r4, #0x7d0
	str r1, [sp]
	add r0, r0, #0x59000
	mov r1, #0xa
	mov r2, #0x38
	ldr r3, _020153A8 ; =sub_02041124
	bl __cxa_vec_ctor
	mov r0, r4
	bl sub_02015198
	mov r2, #0
	add r0, r4, #0x59000
	str r2, [r0, #0xa00]
	add r1, r4, #0x8000
	mov r0, r4
	str r2, [r1, #0xb8c]
	str r2, [r1, #0xb88]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02015394: .word sub_02015108
_02015398: .word sub_020150F4
_0201539C: .word sub_02015120
_020153A0: .word sub_0201510C
_020153A4: .word sub_0204114C
_020153A8: .word sub_02041124
	arm_func_end sub_020152D0

	arm_func_start sub_020153AC
sub_020153AC: ; 0x020153AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x7d0
	ldr r3, _02015428 ; =sub_0204114C
	add r0, r0, #0x59000
	mov r1, #0xa
	mov r2, #0x38
	bl __cxa_vec_cleanup
	add r0, r4, #0x760
	ldr r3, _02015428 ; =sub_0204114C
	add r0, r0, #0x59000
	mov r1, #2
	mov r2, #0x38
	bl __cxa_vec_cleanup
	add r0, r4, #0x328
	add r0, r0, #0x8c00
	bl sub_020412DC
	add r0, r4, #0x2d4
	add r0, r0, #0x8800
	mov r1, #2
	mov r2, #0x38
	ldr r3, _0201542C ; =0x02015120
	bl __cxa_vec_cleanup
	add r0, r4, #4
	add r0, r0, #0x8800
	mov r1, #0x1e
	mov r2, #0x18
	ldr r3, _02015430 ; =0x02015108
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02015428: .word sub_0204114C
_0201542C: .word sub_02015120
_02015430: .word sub_02015108
	arm_func_end sub_020153AC

	arm_func_start sub_02015434
sub_02015434: ; 0x02015434
	stmdb sp!, {r3, r4, r5, lr}
	add r0, r0, #4
	mov ip, #0
	add r4, r0, #0x8800
	mov r3, ip
	arm_func_end sub_02015434
_02015448:
	mov lr, r3
	mov r5, r4
_02015450:
	ldr r0, [r5, #8]
	tst r0, #1
	beq _02015474
	ldrh r0, [r5, #2]
	cmp r1, r0
	ldreqh r0, [r5, #4]
	cmpeq r2, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
_02015474:
	add lr, lr, #1
	cmp lr, #0xa
	add r5, r5, #0x18
	blt _02015450
	add ip, ip, #1
	cmp ip, #3
	add r4, r4, #0xf0
	blt _02015448
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_0201549C
sub_0201549C: ; 0x0201549C
	stmdb sp!, {r3, r4, r5, lr}
	mov r2, r1, asr #0x18
	and r2, r2, #0xff
	cmp r2, #5
	cmpne r2, #2
	bne _02015514
	ldr r2, _0201551C ; =0x00000FFF
	mov lr, r0
	and r4, r2, r1, asr #12
	and r5, r1, r2
	mov ip, #0
	arm_func_end sub_0201549C
_020154C8:
	add r1, lr, #0x8000
	ldr r3, [r1, #0xad4]
	cmp r3, #0
	beq _02015504
	ldr r3, [r1, #0xad8]
	and r1, r2, r3, asr #12
	cmp r1, r4
	andeq r1, r3, r2
	cmpeq r1, r5
	bne _02015504
	add r0, r0, #0x2d4
	add r1, r0, #0x8800
	mov r0, #0x38
	mla r0, ip, r0, r1
	ldmia sp!, {r3, r4, r5, pc}
_02015504:
	add ip, ip, #1
	cmp ip, #2
	add lr, lr, #0x38
	blt _020154C8
_02015514:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0201551C: .word 0x00000FFF

	arm_func_start sub_02015520
sub_02015520: ; 0x02015520
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r2, r1, asr #0x18
	and r2, r2, #0xff
	cmp r2, #6
	cmpne r2, #1
	bne _020155F0
	add r2, r0, #0x8000
	ldrb r2, [r2, #0xb64]
	cmp r2, #1
	beq _02015554
	cmp r2, #5
	beq _0201555C
	b _02015564
	arm_func_end sub_02015520
_02015554:
	mov ip, #1
	b _02015568
_0201555C:
	mov ip, #2
	b _02015568
_02015564:
	mov ip, #0
_02015568:
	ldr r3, _020155F8 ; =0x00000FFF
	mov r2, #0
	and lr, r3, r1, asr #12
	and r4, r1, r3
	mov r1, r2
	mov r8, #0xf0
_02015580:
	add r3, ip, r2
	and r3, r3, #3
	mul r6, r3, r8
	mov r3, r1
	add r5, r0, r6
_02015594:
	add r7, r5, #0x8000
	ldr r7, [r7, #0x80c]
	tst r7, #1
	beq _020155D4
	add r7, r5, #0x8800
	ldrh sb, [r7, #6]
	cmp sb, lr
	ldreqh r7, [r7, #8]
	cmpeq r7, r4
	bne _020155D4
	add r0, r0, #4
	add r0, r0, #0x8800
	add r1, r0, r6
	mov r0, #0x18
	mla r0, r3, r0, r1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020155D4:
	add r3, r3, #1
	cmp r3, #0xa
	add r5, r5, #0x18
	blt _02015594
	add r2, r2, #1
	cmp r2, #3
	blt _02015580
_020155F0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_020155F8: .word 0x00000FFF

	arm_func_start sub_020155FC
sub_020155FC: ; 0x020155FC
	cmp r1, #0xa
	bge _02015650
	add r2, r0, #0x8000
	ldrb r2, [r2, #0xb64]
	cmp r2, #1
	beq _02015620
	cmp r2, #5
	beq _02015628
	b _02015630
	arm_func_end sub_020155FC
_02015620:
	mov r3, #1
	b _02015634
_02015628:
	mov r3, #2
	b _02015634
_02015630:
	mov r3, #0
_02015634:
	add r0, r0, #4
	add r2, r0, #0x8800
	mov r0, #0xf0
	mla r2, r3, r0, r2
	mov r0, #0x18
	mla r0, r1, r0, r2
	bx lr
_02015650:
	mov r0, #0
	bx lr

	arm_func_start sub_02015658
sub_02015658: ; 0x02015658
	stmdb sp!, {r4, lr}
	cmp r1, #0xb
	ldrhsb r1, [r0, #3]
	ldr r2, _0201568C ; =DAT_0208b664
	andhs r1, r1, #0xf
	ldrb r4, [r2, r1]
	mvn r1, #0
	bl sub_0201621C
	cmp r0, #0
	addne r0, r4, #1
	andne r4, r0, #0xff
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0201568C: .word DAT_0208b664
	arm_func_end sub_02015658

	arm_func_start sub_02015690
sub_02015690: ; 0x02015690
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015710 ; =0x000001B9
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	cmp r2, r3
	cmplt r1, #0x30
	movge r0, #0
	bge _020156E0
	mov r3, #0x18
	mla r3, r2, r3, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	add r2, r3, r0, lsl #2
	mov r0, r1, lsl #0x1d
	ldr r1, [r2, #0x30]
	mov r0, r0, lsr #0x1b
	mov r0, r1, lsr r0
	and r0, r0, #0xf
	arm_func_end sub_02015690
_020156E0:
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02015708
_020156EC: ; jump table
	b _02015708 ; case 0
	b _02015708 ; case 1
	b _02015708 ; case 2
	b _02015700 ; case 3
	b _02015700 ; case 4
_02015700:
	mov r0, #1
	bx lr
_02015708:
	mov r0, #0
	bx lr
	.align 2, 0
_02015710: .word 0x000001B9

	arm_func_start sub_02015714
sub_02015714: ; 0x02015714
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015778 ; =0x000001B9
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	cmp r2, r3
	cmplt r1, #0x30
	ldmgeia sp!, {r3, pc}
	add r3, r0, #0x30
	mov r0, #0x18
	mla r3, r2, r0, r3
	mov r0, r1, asr #2
	mov r2, r1, lsl #0x1d
	add r0, r1, r0, lsr #29
	mov ip, r0, asr #3
	mov lr, r2, lsr #0x1b
	mov r0, #0xf
	mvn r1, r0, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #3
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015778: .word 0x000001B9
	arm_func_end sub_02015714

	arm_func_start sub_0201577C
sub_0201577C: ; 0x0201577C
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _020157E0 ; =0x000001B9
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	cmp r2, r3
	cmplt r1, #0x30
	ldmgeia sp!, {r3, pc}
	add r3, r0, #0x30
	mov r0, #0x18
	mla r3, r2, r0, r3
	mov r0, r1, asr #2
	mov r2, r1, lsl #0x1d
	add r0, r1, r0, lsr #29
	mov ip, r0, asr #3
	mov lr, r2, lsr #0x1b
	mov r0, #0xf
	mvn r1, r0, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #1
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020157E0: .word 0x000001B9
	arm_func_end sub_0201577C

	arm_func_start sub_020157E4
sub_020157E4: ; 0x020157E4
	stmdb sp!, {r3, lr}
	mov r2, r1, asr #0x18
	and ip, r2, #0xff
	cmp ip, #4
	addls pc, pc, ip, lsl #2
	b _020158A8
_020157FC: ; jump table
	b _02015810 ; case 0
	b _02015818 ; case 1
	b _02015818 ; case 2
	b _02015818 ; case 3
	b _020158A8 ; case 4
	arm_func_end sub_020157E4
_02015810:
	mov r0, #1
	ldmia sp!, {r3, pc}
_02015818:
	ldr r3, _020158B0 ; =0x00000FFF
	sub r2, ip, #1
	cmp r2, #3
	and r2, r1, r3
	and lr, r3, r1, asr #12
	movlt r3, #1
	ldr r1, _020158B4 ; =0x000001B9
	movge r3, #0
	cmp lr, r1
	movlt r1, #1
	movge r1, #0
	tst r3, r1
	beq _02015890
	cmp r2, #0x30
	bge _02015890
	ldr r1, _020158B8 ; =0x00001B90
	sub r3, ip, #1
	mla r1, r3, r1, r0
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	add r1, r1, lr, lsl #4
	mov r0, r0, asr #3
	add r0, r1, r0, lsl #2
	add r0, r0, #0x2000
	mov r1, r2, lsl #0x1d
	ldr r2, [r0, #0x988]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #0xf
	b _02015894
_02015890:
	mov r0, #0
_02015894:
	cmp r0, #3
	cmpne r0, #4
	bne _020158A8
	mov r0, #1
	ldmia sp!, {r3, pc}
_020158A8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_020158B0: .word 0x00000FFF
_020158B4: .word 0x000001B9
_020158B8: .word 0x00001B90

	arm_func_start sub_020158BC
sub_020158BC: ; 0x020158BC
	stmdb sp!, {r3, lr}
	mov r2, r1, asr #0x18
	and ip, r2, #0xff
	cmp ip, #4
	addls pc, pc, ip, lsl #2
	ldmia sp!, {r3, pc}
_020158D4: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _020158E8 ; case 1
	b _020158E8 ; case 2
	b _020158E8 ; case 3
	ldmia sp!, {r3, pc} ; case 4
	arm_func_end sub_020158BC
_020158E8:
	ldr r2, _02015970 ; =0x00000FFF
	sub r3, ip, #1
	and lr, r1, r2
	and r1, r2, r1, asr #12
	cmp r3, #3
	movlt r3, #1
	ldr r2, _02015974 ; =0x000001B9
	movge r3, #0
	cmp r1, r2
	movlt r2, #1
	movge r2, #0
	tst r3, r2
	ldmeqia sp!, {r3, pc}
	cmp lr, #0x30
	ldmgeia sp!, {r3, pc}
	add r0, r0, #0x188
	add r3, r0, #0x2800
	ldr r2, _02015978 ; =0x00001B90
	sub r0, ip, #1
	mla r3, r0, r2, r3
	mov r0, lr, asr #2
	add r0, lr, r0, lsr #29
	mov r2, lr, lsl #0x1d
	mov lr, r2, lsr #0x1b
	mov ip, r0, asr #3
	mov r2, #0xf
	add r3, r3, r1, lsl #4
	mvn r1, r2, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #3
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015970: .word 0x00000FFF
_02015974: .word 0x000001B9
_02015978: .word 0x00001B90

	arm_func_start sub_0201597C
sub_0201597C: ; 0x0201597C
	stmdb sp!, {r3, lr}
	mov r2, r1, asr #0x18
	and ip, r2, #0xff
	cmp ip, #4
	addls pc, pc, ip, lsl #2
	ldmia sp!, {r3, pc}
_02015994: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _020159A8 ; case 1
	b _020159A8 ; case 2
	b _020159A8 ; case 3
	ldmia sp!, {r3, pc} ; case 4
	arm_func_end sub_0201597C
_020159A8:
	ldr r2, _02015A30 ; =0x00000FFF
	sub r3, ip, #1
	and lr, r1, r2
	and r1, r2, r1, asr #12
	cmp r3, #3
	movlt r3, #1
	ldr r2, _02015A34 ; =0x000001B9
	movge r3, #0
	cmp r1, r2
	movlt r2, #1
	movge r2, #0
	tst r3, r2
	ldmeqia sp!, {r3, pc}
	cmp lr, #0x30
	ldmgeia sp!, {r3, pc}
	add r0, r0, #0x188
	add r3, r0, #0x2800
	ldr r2, _02015A38 ; =0x00001B90
	sub r0, ip, #1
	mla r3, r0, r2, r3
	mov r0, lr, asr #2
	add r0, lr, r0, lsr #29
	mov r2, lr, lsl #0x1d
	mov lr, r2, lsr #0x1b
	mov ip, r0, asr #3
	mov r2, #0xf
	add r3, r3, r1, lsl #4
	mvn r1, r2, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #1
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015A30: .word 0x00000FFF
_02015A34: .word 0x000001B9
_02015A38: .word 0x00001B90

	arm_func_start sub_02015A3C
sub_02015A3C: ; 0x02015A3C
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015AA8 ; =0x000001B9
	cmp r2, r3
	movlt r3, #1
	movge r3, #0
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #0x30
	ldmgeia sp!, {r3, pc}
	mov r3, r1, asr #2
	add ip, r0, #0x188
	mov lr, r1, lsl #0x1d
	add r0, r1, r3, lsr #29
	add r3, ip, #0x2800
	mov ip, r0, asr #3
	add r3, r3, r2, lsl #4
	mov lr, lr, lsr #0x1b
	mov r1, #0xf
	mvn r1, r1, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #3
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015AA8: .word 0x000001B9
	arm_func_end sub_02015A3C

	arm_func_start sub_02015AAC
sub_02015AAC: ; 0x02015AAC
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015B18 ; =0x000001B9
	cmp r2, r3
	movlt r3, #1
	movge r3, #0
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #0x30
	ldmgeia sp!, {r3, pc}
	mov r3, r1, asr #2
	add ip, r0, #0x188
	mov lr, r1, lsl #0x1d
	add r0, r1, r3, lsr #29
	add r3, ip, #0x2800
	mov ip, r0, asr #3
	add r3, r3, r2, lsl #4
	mov lr, lr, lsr #0x1b
	mov r1, #0xf
	mvn r1, r1, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #1
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015B18: .word 0x000001B9
	arm_func_end sub_02015AAC

	arm_func_start sub_02015B1C
sub_02015B1C: ; 0x02015B1C
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015B94 ; =0x000001B9
	cmp r2, r3
	movlt r3, #1
	movge r3, #0
	cmp r3, #0
	beq _02015B74
	cmp r1, #0x30
	bge _02015B74
	mov r3, r1, asr #2
	add r3, r1, r3, lsr #29
	add r2, r0, r2, lsl #4
	mov r0, r3, asr #3
	add r0, r2, r0, lsl #2
	add r0, r0, #0x4000
	mov r1, r1, lsl #0x1d
	ldr r2, [r0, #0x518]
	mov r0, r1, lsr #0x1b
	mov r0, r2, lsr r0
	and r0, r0, #0xf
	b _02015B78
	arm_func_end sub_02015B1C
_02015B74:
	mov r0, #0
_02015B78:
	cmp r0, #3
	cmpne r0, #4
	bne _02015B8C
	mov r0, #1
	bx lr
_02015B8C:
	mov r0, #0
	bx lr
	.align 2, 0
_02015B94: .word 0x000001B9

	arm_func_start sub_02015B98
sub_02015B98: ; 0x02015B98
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015C04 ; =0x000001B9
	cmp r2, r3
	movlt r3, #1
	movge r3, #0
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #0x30
	ldmgeia sp!, {r3, pc}
	mov r3, r1, asr #2
	add ip, r0, #0x118
	mov lr, r1, lsl #0x1d
	add r0, r1, r3, lsr #29
	add r3, ip, #0x4400
	mov ip, r0, asr #3
	add r3, r3, r2, lsl #4
	mov lr, lr, lsr #0x1b
	mov r1, #0xf
	mvn r1, r1, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #3
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015C04: .word 0x000001B9
	arm_func_end sub_02015B98

	arm_func_start sub_02015C08
sub_02015C08: ; 0x02015C08
	stmdb sp!, {r3, lr}
	cmp r2, #0
	ldrlth r2, [r0, #0x1a]
	ldr r3, _02015C74 ; =0x000001B9
	cmp r2, r3
	movlt r3, #1
	movge r3, #0
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #0x30
	ldmgeia sp!, {r3, pc}
	mov r3, r1, asr #2
	add ip, r0, #0x118
	mov lr, r1, lsl #0x1d
	add r0, r1, r3, lsr #29
	add r3, ip, #0x4400
	mov ip, r0, asr #3
	add r3, r3, r2, lsl #4
	mov lr, lr, lsr #0x1b
	mov r1, #0xf
	mvn r1, r1, lsl lr
	ldr r2, [r3, ip, lsl #2]
	mov r0, #1
	and r1, r2, r1
	orr r0, r1, r0, lsl lr
	str r0, [r3, ip, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02015C74: .word 0x000001B9
	arm_func_end sub_02015C08

	arm_func_start sub_02015C78
sub_02015C78: ; 0x02015C78
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xdc
	mov sb, r1
	mov r1, sb, asr #0x18
	and r1, r1, #0xff
	cmp r1, #1
	mov r5, r0
	mov r8, r2
	addne sp, sp, #0xdc
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r3, #0
	addlt r0, r5, #0x8000
	ldrltb r3, [r0, #0xb64]
	cmp r3, #1
	beq _02015CC4
	cmp r3, #5
	beq _02015CCC
	b _02015CD4
	arm_func_end sub_02015C78
_02015CC4:
	mov r1, #1
	b _02015CD8
_02015CCC:
	mov r1, #2
	b _02015CD8
_02015CD4:
	mov r1, #0
_02015CD8:
	mov r0, #0xf0
	mul r4, r1, r0
	add r0, r5, #4
	add r0, r0, #0x8800
	add r7, r0, r4
	mov r6, #0
_02015CF0:
	ldr r0, [r7, #8]
	tst r0, #1
	bne _02015E2C
	mov r0, r7
	bl sub_020150B8
	ldr r1, _02015E48 ; =0x00000FFF
	ldr r2, [r7, #8]
	mov r0, r8, lsl #0x10
	orr r2, r2, #1
	str r2, [r7, #8]
	mov r0, r0, lsr #0x10
	strh r0, [r7]
	and r2, r1, sb, asr #12
	strh r2, [r7, #2]
	and r1, sb, r1
	strh r1, [r7, #4]
	ldrsh r1, [r5, #0x26]
	strh r1, [r7, #0x16]
	bl sub_02034F9C
	cmp r0, #0
	beq _02015E20
	ldr r0, [r7, #8]
	cmp r6, #0
	orr r0, r0, #6
	str r0, [r7, #8]
	ble _02015E20
	ldr r8, _02015E4C ; =0x02015108
	ldr r3, _02015E50 ; =sub_020150F4
	add r0, sp, #4
	mov r1, #9
	mov r2, #0x18
	str r8, [sp]
	bl __cxa_vec_ctor
	mov r0, #0x18
	mul sb, r6, r0
	add r0, r5, #4
	add r6, r0, #0x8800
	add r8, r6, r4
	add r1, sp, #4
	mov r0, r8
	mov r2, sb
	bl MI_CpuCopy8
	ldrh r1, [r7]
	add r0, r5, #0xc
	add r3, r0, #0x8800
	add r0, r5, #0x1c
	strh r1, [r6, r4]
	add r0, r0, #0x8800
	add r1, r0, r4
	ldrh r0, [r7, #2]
	mov r2, sb
	mov r6, #0
	strh r0, [r8, #2]
	ldrh r5, [r7, #4]
	add r0, sp, #4
	strh r5, [r8, #4]
	ldr r5, [r7, #8]
	str r5, [r8, #8]
	ldr sb, [r7, #0xc]
	ldr r5, [r7, #0x10]
	str sb, [r8, #0xc]
	str r5, [r8, #0x10]
	ldrh r5, [r7, #0x14]
	strh r5, [r8, #0x14]
	ldrh r5, [r7, #0x16]
	strh r5, [r8, #0x16]
	str r6, [r3, r4]
	ldr r5, [r7, #8]
	orr r5, r5, #0
	str r5, [r3, r4]
	bl MI_CpuCopy8
	ldr r3, _02015E4C ; =0x02015108
	add r0, sp, #4
	mov r1, #9
	mov r2, #0x18
	bl __cxa_vec_cleanup
_02015E20:
	add sp, sp, #0xdc
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_02015E2C:
	add r6, r6, #1
	cmp r6, #0xa
	add r7, r7, #0x18
	blt _02015CF0
	mov r0, #0
	add sp, sp, #0xdc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02015E48: .word 0x00000FFF
_02015E4C: .word sub_02015108
_02015E50: .word sub_020150F4

	arm_func_start sub_02015E54
sub_02015E54: ; 0x02015E54
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r2, r1, asr #0x18
	and r2, r2, #0xff
	cmp r2, #5
	cmpne r2, #2
	bne _02015EC8
	add r0, r0, #0x2d4
	mov r4, #0
	add r6, r0, #0x8800
	mov r3, r4
	mov r0, r4
	arm_func_end sub_02015E54
_02015E80:
	cmp r4, #0
	blt _02015E94
	cmp r4, #2
	movlt r5, r6
	blt _02015E98
_02015E94:
	mov r5, r3
_02015E98:
	cmp r5, #0
	ldrne r2, [r5]
	cmpne r2, #0
	beq _02015EB4
	ldr r2, [r5, #4]
	cmp r1, r2
	streq r0, [r5]
_02015EB4:
	add r4, r4, #1
	cmp r4, #2
	add r6, r6, #0x38
	blt _02015E80
	b _0201601C
_02015EC8:
	cmp r2, #6
	cmpne r2, #1
	bne _0201601C
	mvn r2, #0
	add r3, r2, #0x1000
	mov r4, r3
	mov r6, #0
	and ip, r1, r4
	mov r5, r2
	mov r8, r0
	and sb, r3, r1, asr #12
	mov r4, r6
_02015EF8:
	mov r7, r4
	mov lr, r8
_02015F00:
	add r1, lr, #0x8800
	ldrh r3, [r1, #6]
	cmp r3, sb
	ldreqh r1, [r1, #8]
	cmpeq r1, ip
	moveq r2, r6
	moveq r5, r7
	beq _02015F30
	add r7, r7, #1
	cmp r7, #0xa
	add lr, lr, #0x18
	blt _02015F00
_02015F30:
	cmp r2, #0
	bge _02015F48
	add r6, r6, #1
	cmp r6, #3
	add r8, r8, #0xf0
	blt _02015EF8
_02015F48:
	cmp r5, #9
	bne _02015F68
	add r0, r0, #0xdc
	add r1, r0, #0x8800
	mov r0, #0xf0
	mla r0, r2, r0, r1
	bl sub_020150B8
	b _0201601C
_02015F68:
	cmp r5, #0
	blt _0201601C
	cmp r5, #9
	bge _0201601C
	add r0, r0, #4
	add r1, r0, #0x8800
	mov r0, #0xf0
	mla r8, r2, r0, r1
	mov r0, #0x18
	mla r7, r5, r0, r8
	mov r4, #0
	mov sb, r0
_02015F98:
	add r0, r5, #1
	mla r6, r0, sb, r8
	mov r0, r7
	bl sub_020150B8
	ldr r0, [r6, #8]
	tst r0, #1
	beq _02016004
	ldrh r0, [r6]
	strh r0, [r7]
	ldrh r0, [r6, #2]
	strh r0, [r7, #2]
	ldrh r0, [r6, #4]
	strh r0, [r7, #4]
	ldr r0, [r6, #8]
	str r0, [r7, #8]
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0x10]
	str r1, [r7, #0xc]
	str r0, [r7, #0x10]
	ldrh r0, [r6, #0x14]
	strh r0, [r7, #0x14]
	ldrh r0, [r6, #0x16]
	strh r0, [r7, #0x16]
	str r4, [r7, #8]
	ldr r0, [r6, #8]
	orr r0, r4, r0
	str r0, [r7, #8]
_02016004:
	mov r0, r6
	bl sub_020150B8
	add r5, r5, #1
	cmp r5, #9
	add r7, r7, #0x18
	blt _02015F98
_0201601C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}

	arm_func_start sub_02016024
sub_02016024: ; 0x02016024
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r3, r4, #0x7000
	ldr r1, [r3, #0xf60]
	add r0, r4, #0x36c
	bic ip, r1, #1
	add r1, r0, #0x7c00
	mov r0, #0
	mov r2, #0x80
	str ip, [r3, #0xf60]
	bl MIi_CpuClearFast
	add r0, r4, #0x3ec
	add r1, r0, #0x7c00
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClearFast
	add r0, r4, #0x6c
	add r1, r0, #0x8000
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClearFast
	add r0, r4, #0xec
	add r1, r0, #0x8000
	mov r0, #0
	mov r2, #0x40
	bl MIi_CpuClearFast
	mov r0, #0
	add r1, r4, #0x12c
	add r1, r1, #0x8000
	mov r2, #0x40
	bl MIi_CpuClearFast
	add r0, r4, #0x16c
	add r1, r0, #0x8000
	mov r0, #0
	mov r2, #0x40
	bl MIi_CpuClearFast
	ldmia sp!, {r4, pc}
	arm_func_end sub_02016024

	arm_func_start sub_020160B8
sub_020160B8: ; 0x020160B8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x8000
	ldrb r2, [r0, #0x7db]
	mov r5, r1
	cmp r2, r5
	ldmeqia sp!, {r3, r4, r5, pc}
	strb r5, [r0, #0x7db]
	bl sub_0201001C
	cmp r0, #0
	moveq r0, #0
	beq _020160FC
	bl sub_0201001C
	add r0, r0, #0x1000
	ldr r0, [r0, #0x438]
	mov r1, r5
	bl sub_02010E78
	arm_func_end sub_020160B8
_020160FC:
	strb r0, [r4, #2]
	mov r0, r4
	mov r1, #0x15
	bl sub_02016C14
	cmp r0, #1
	bne _02016124
	ldrb r0, [r4, #2]
	add r0, r0, #5
	strb r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, pc}
_02016124:
	cmp r0, #2
	ldrgeb r0, [r4, #2]
	addge r0, r0, #0xf
	strgeb r0, [r4, #2]
	ldmia sp!, {r3, r4, r5, pc}

	arm_func_start sub_02016138
sub_02016138: ; 0x02016138
	cmp r1, #0
	blt _02016148
	cmp r1, #3
	blt _02016178
	arm_func_end sub_02016138
_02016148:
	add r1, r0, #0x8000
	ldrb r1, [r1, #0xb64]
	cmp r1, #1
	beq _02016164
	cmp r1, #5
	beq _0201616C
	b _02016174
_02016164:
	mov r1, #1
	b _02016178
_0201616C:
	mov r1, #2
	b _02016178
_02016174:
	mov r1, #0
_02016178:
	mov r2, #0xf0
	mla r3, r1, r2, r0
	mov r0, #0
	mov r2, r0
_02016188:
	add r1, r3, #0x8000
	ldr r1, [r1, #0x80c]
	add r2, r2, #1
	tst r1, #1
	addne r0, r0, #1
	cmp r2, #0xa
	add r3, r3, #0x18
	blt _02016188
	bx lr

	arm_func_start sub_020161AC
sub_020161AC: ; 0x020161AC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	bl sub_02015658
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl sub_0201621C
	cmp r0, #0
	subne r4, r4, #1
	cmp r4, #0
	movlt r4, #0
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020161AC

	arm_func_start sub_020161E4
sub_020161E4: ; 0x020161E4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl sub_02016138
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl sub_0201621C
	cmp r0, #0
	subne r4, r4, #1
	cmp r4, #0
	movlt r4, #0
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020161E4

	arm_func_start sub_0201621C
sub_0201621C: ; 0x0201621C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_02016138
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	ble _02016260
	arm_func_end sub_0201621C
_02016238:
	mov r0, r6
	mov r1, r5
	bl sub_020155FC
	ldr r0, [r0, #8]
	tst r0, #2
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, r4
	blt _02016238
_02016260:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_02016268
sub_02016268: ; 0x02016268
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_02016138
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	ble _020162B4
	arm_func_end sub_02016268
_02016284:
	mov r0, r6
	mov r1, r5
	bl sub_020155FC
	ldr r1, [r0, #8]
	tst r1, #2
	beq _020162A8
	ldrh r0, [r0]
	bl sub_02035088
	ldmia sp!, {r4, r5, r6, pc}
_020162A8:
	add r5, r5, #1
	cmp r5, r4
	blt _02016284
_020162B4:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start sub_020162BC
sub_020162BC: ; 0x020162BC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r2, r5, #0x7000
	mov r4, r1
	ldr r1, [r2, #0xc38]
	bl sub_02015520
	cmp r0, #0
	ldrne r1, [r0, #8]
	add r2, r5, #0x7000
	bicne r1, r1, #4
	strne r1, [r0, #8]
	mov r0, r5
	mov r1, r4
	str r4, [r2, #0xc38]
	bl sub_02015520
	cmp r0, #0
	ldrne r1, [r0, #8]
	orrne r1, r1, #4
	strne r1, [r0, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020162BC
